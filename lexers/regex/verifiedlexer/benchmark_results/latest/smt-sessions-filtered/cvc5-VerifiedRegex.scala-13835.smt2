; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735754 () Bool)

(assert start!735754)

(declare-fun b!7645186 () Bool)

(declare-datatypes ((Unit!167920 0))(
  ( (Unit!167921) )
))
(declare-fun e!4544057 () Unit!167920)

(declare-fun Unit!167922 () Unit!167920)

(assert (=> b!7645186 (= e!4544057 Unit!167922)))

(declare-fun lt!2660898 () Unit!167920)

(declare-datatypes ((C!41254 0))(
  ( (C!41255 (val!31067 Int)) )
))
(declare-datatypes ((Regex!20464 0))(
  ( (ElementMatch!20464 (c!1408157 C!41254)) (Concat!29309 (regOne!41440 Regex!20464) (regTwo!41440 Regex!20464)) (EmptyExpr!20464) (Star!20464 (reg!20793 Regex!20464)) (EmptyLang!20464) (Union!20464 (regOne!41441 Regex!20464) (regTwo!41441 Regex!20464)) )
))
(declare-fun r!14126 () Regex!20464)

(declare-datatypes ((List!73315 0))(
  ( (Nil!73191) (Cons!73191 (h!79639 C!41254) (t!388050 List!73315)) )
))
(declare-fun s!9605 () List!73315)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!111 (Regex!20464 Regex!20464 List!73315) Unit!167920)

(assert (=> b!7645186 (= lt!2660898 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!111 (regOne!41441 r!14126) (regTwo!41441 r!14126) s!9605))))

(declare-fun res!3062218 () Bool)

(declare-fun matchR!9965 (Regex!20464 List!73315) Bool)

(assert (=> b!7645186 (= res!3062218 (matchR!9965 r!14126 s!9605))))

(declare-fun e!4544056 () Bool)

(assert (=> b!7645186 (=> (not res!3062218) (not e!4544056))))

(assert (=> b!7645186 e!4544056))

(declare-fun b!7645187 () Bool)

(declare-fun e!4544051 () Bool)

(declare-fun tp!2231686 () Bool)

(declare-fun tp!2231691 () Bool)

(assert (=> b!7645187 (= e!4544051 (and tp!2231686 tp!2231691))))

(declare-fun res!3062217 () Bool)

(declare-fun e!4544052 () Bool)

(assert (=> start!735754 (=> (not res!3062217) (not e!4544052))))

(declare-fun validRegex!10882 (Regex!20464) Bool)

(assert (=> start!735754 (= res!3062217 (validRegex!10882 r!14126))))

(assert (=> start!735754 e!4544052))

(assert (=> start!735754 e!4544051))

(declare-fun e!4544053 () Bool)

(assert (=> start!735754 e!4544053))

(declare-fun b!7645188 () Bool)

(declare-fun tp!2231689 () Bool)

(declare-fun tp!2231688 () Bool)

(assert (=> b!7645188 (= e!4544051 (and tp!2231689 tp!2231688))))

(declare-fun b!7645189 () Bool)

(declare-fun tp_is_empty!51283 () Bool)

(declare-fun tp!2231687 () Bool)

(assert (=> b!7645189 (= e!4544053 (and tp_is_empty!51283 tp!2231687))))

(declare-fun b!7645190 () Bool)

(declare-fun e!4544050 () Unit!167920)

(declare-fun Unit!167923 () Unit!167920)

(assert (=> b!7645190 (= e!4544050 Unit!167923)))

(declare-fun b!7645191 () Bool)

(assert (=> b!7645191 (= e!4544056 false)))

(declare-fun b!7645192 () Bool)

(declare-fun res!3062222 () Bool)

(assert (=> b!7645192 (=> (not res!3062222) (not e!4544052))))

(assert (=> b!7645192 (= res!3062222 (not (matchR!9965 r!14126 s!9605)))))

(declare-fun b!7645193 () Bool)

(assert (=> b!7645193 (= e!4544051 tp_is_empty!51283)))

(declare-fun b!7645194 () Bool)

(declare-fun tp!2231690 () Bool)

(assert (=> b!7645194 (= e!4544051 tp!2231690)))

(declare-fun b!7645195 () Bool)

(declare-fun res!3062221 () Bool)

(assert (=> b!7645195 (=> (not res!3062221) (not e!4544052))))

(assert (=> b!7645195 (= res!3062221 (and (not (is-EmptyExpr!20464 r!14126)) (not (is-EmptyLang!20464 r!14126)) (not (is-ElementMatch!20464 r!14126)) (is-Union!20464 r!14126)))))

(declare-fun b!7645196 () Bool)

(declare-fun e!4544054 () Bool)

(assert (=> b!7645196 (= e!4544054 false)))

(declare-fun b!7645197 () Bool)

(declare-fun e!4544055 () Bool)

(assert (=> b!7645197 (= e!4544052 e!4544055)))

(declare-fun res!3062220 () Bool)

(assert (=> b!7645197 (=> (not res!3062220) (not e!4544055))))

(assert (=> b!7645197 (= res!3062220 (validRegex!10882 (regOne!41441 r!14126)))))

(declare-fun lt!2660901 () Unit!167920)

(assert (=> b!7645197 (= lt!2660901 e!4544050)))

(declare-fun c!1408155 () Bool)

(assert (=> b!7645197 (= c!1408155 (matchR!9965 (regTwo!41441 r!14126) s!9605))))

(declare-fun lt!2660897 () Unit!167920)

(assert (=> b!7645197 (= lt!2660897 e!4544057)))

(declare-fun c!1408156 () Bool)

(assert (=> b!7645197 (= c!1408156 (matchR!9965 (regOne!41441 r!14126) s!9605))))

(declare-fun b!7645198 () Bool)

(declare-fun lt!2660899 () Int)

(declare-fun regexDepth!484 (Regex!20464) Int)

(assert (=> b!7645198 (= e!4544055 (>= (+ lt!2660899 (regexDepth!484 (regOne!41441 r!14126))) (+ lt!2660899 (regexDepth!484 r!14126))))))

(declare-fun size!42590 (List!73315) Int)

(assert (=> b!7645198 (= lt!2660899 (size!42590 s!9605))))

(declare-fun b!7645199 () Bool)

(declare-fun Unit!167924 () Unit!167920)

(assert (=> b!7645199 (= e!4544057 Unit!167924)))

(declare-fun b!7645200 () Bool)

(declare-fun Unit!167925 () Unit!167920)

(assert (=> b!7645200 (= e!4544050 Unit!167925)))

(declare-fun lt!2660902 () Unit!167920)

(assert (=> b!7645200 (= lt!2660902 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!111 (regTwo!41441 r!14126) (regOne!41441 r!14126) s!9605))))

(assert (=> b!7645200 (matchR!9965 (Union!20464 (regTwo!41441 r!14126) (regOne!41441 r!14126)) s!9605)))

(declare-fun lt!2660900 () Unit!167920)

(declare-fun lemmaReversedUnionAcceptsSameString!39 (Regex!20464 Regex!20464 List!73315) Unit!167920)

(assert (=> b!7645200 (= lt!2660900 (lemmaReversedUnionAcceptsSameString!39 (regTwo!41441 r!14126) (regOne!41441 r!14126) s!9605))))

(declare-fun res!3062219 () Bool)

(assert (=> b!7645200 (= res!3062219 (matchR!9965 r!14126 s!9605))))

(assert (=> b!7645200 (=> (not res!3062219) (not e!4544054))))

(assert (=> b!7645200 e!4544054))

(assert (= (and start!735754 res!3062217) b!7645195))

(assert (= (and b!7645195 res!3062221) b!7645192))

(assert (= (and b!7645192 res!3062222) b!7645197))

(assert (= (and b!7645197 c!1408156) b!7645186))

(assert (= (and b!7645197 (not c!1408156)) b!7645199))

(assert (= (and b!7645186 res!3062218) b!7645191))

(assert (= (and b!7645197 c!1408155) b!7645200))

(assert (= (and b!7645197 (not c!1408155)) b!7645190))

(assert (= (and b!7645200 res!3062219) b!7645196))

(assert (= (and b!7645197 res!3062220) b!7645198))

(assert (= (and start!735754 (is-ElementMatch!20464 r!14126)) b!7645193))

(assert (= (and start!735754 (is-Concat!29309 r!14126)) b!7645187))

(assert (= (and start!735754 (is-Star!20464 r!14126)) b!7645194))

(assert (= (and start!735754 (is-Union!20464 r!14126)) b!7645188))

(assert (= (and start!735754 (is-Cons!73191 s!9605)) b!7645189))

(declare-fun m!8164310 () Bool)

(assert (=> b!7645192 m!8164310))

(declare-fun m!8164312 () Bool)

(assert (=> b!7645198 m!8164312))

(declare-fun m!8164314 () Bool)

(assert (=> b!7645198 m!8164314))

(declare-fun m!8164316 () Bool)

(assert (=> b!7645198 m!8164316))

(declare-fun m!8164318 () Bool)

(assert (=> b!7645186 m!8164318))

(assert (=> b!7645186 m!8164310))

(declare-fun m!8164320 () Bool)

(assert (=> b!7645200 m!8164320))

(declare-fun m!8164322 () Bool)

(assert (=> b!7645200 m!8164322))

(declare-fun m!8164324 () Bool)

(assert (=> b!7645200 m!8164324))

(assert (=> b!7645200 m!8164310))

(declare-fun m!8164326 () Bool)

(assert (=> b!7645197 m!8164326))

(declare-fun m!8164328 () Bool)

(assert (=> b!7645197 m!8164328))

(declare-fun m!8164330 () Bool)

(assert (=> b!7645197 m!8164330))

(declare-fun m!8164332 () Bool)

(assert (=> start!735754 m!8164332))

(push 1)

(assert (not b!7645186))

(assert (not b!7645192))

(assert (not b!7645189))

(assert (not b!7645194))

(assert (not b!7645198))

(assert (not b!7645200))

(assert (not b!7645188))

(assert (not start!735754))

(assert (not b!7645187))

(assert tp_is_empty!51283)

(assert (not b!7645197))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2325488 () Bool)

(assert (=> d!2325488 (matchR!9965 (Union!20464 (regTwo!41441 r!14126) (regOne!41441 r!14126)) s!9605)))

(declare-fun lt!2660923 () Unit!167920)

(declare-fun choose!59030 (Regex!20464 Regex!20464 List!73315) Unit!167920)

(assert (=> d!2325488 (= lt!2660923 (choose!59030 (regTwo!41441 r!14126) (regOne!41441 r!14126) s!9605))))

(declare-fun e!4544084 () Bool)

(assert (=> d!2325488 e!4544084))

(declare-fun res!3062243 () Bool)

(assert (=> d!2325488 (=> (not res!3062243) (not e!4544084))))

(assert (=> d!2325488 (= res!3062243 (validRegex!10882 (regTwo!41441 r!14126)))))

(assert (=> d!2325488 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!111 (regTwo!41441 r!14126) (regOne!41441 r!14126) s!9605) lt!2660923)))

(declare-fun b!7645248 () Bool)

(assert (=> b!7645248 (= e!4544084 (validRegex!10882 (regOne!41441 r!14126)))))

(assert (= (and d!2325488 res!3062243) b!7645248))

(assert (=> d!2325488 m!8164322))

(declare-fun m!8164358 () Bool)

(assert (=> d!2325488 m!8164358))

(declare-fun m!8164360 () Bool)

(assert (=> d!2325488 m!8164360))

(assert (=> b!7645248 m!8164326))

(assert (=> b!7645200 d!2325488))

(declare-fun b!7645319 () Bool)

(declare-fun e!4544126 () Bool)

(declare-fun e!4544121 () Bool)

(assert (=> b!7645319 (= e!4544126 e!4544121)))

(declare-fun res!3062291 () Bool)

(assert (=> b!7645319 (=> res!3062291 e!4544121)))

(declare-fun call!701828 () Bool)

(assert (=> b!7645319 (= res!3062291 call!701828)))

(declare-fun b!7645320 () Bool)

(declare-fun e!4544123 () Bool)

(declare-fun nullable!8965 (Regex!20464) Bool)

(assert (=> b!7645320 (= e!4544123 (nullable!8965 (Union!20464 (regTwo!41441 r!14126) (regOne!41441 r!14126))))))

(declare-fun b!7645321 () Bool)

(declare-fun e!4544124 () Bool)

(declare-fun e!4544125 () Bool)

(assert (=> b!7645321 (= e!4544124 e!4544125)))

(declare-fun c!1408181 () Bool)

(assert (=> b!7645321 (= c!1408181 (is-EmptyLang!20464 (Union!20464 (regTwo!41441 r!14126) (regOne!41441 r!14126))))))

(declare-fun b!7645322 () Bool)

(declare-fun e!4544122 () Bool)

(declare-fun head!15735 (List!73315) C!41254)

(assert (=> b!7645322 (= e!4544122 (= (head!15735 s!9605) (c!1408157 (Union!20464 (regTwo!41441 r!14126) (regOne!41441 r!14126)))))))

(declare-fun b!7645324 () Bool)

(declare-fun res!3062287 () Bool)

(declare-fun e!4544120 () Bool)

(assert (=> b!7645324 (=> res!3062287 e!4544120)))

(assert (=> b!7645324 (= res!3062287 (not (is-ElementMatch!20464 (Union!20464 (regTwo!41441 r!14126) (regOne!41441 r!14126)))))))

(assert (=> b!7645324 (= e!4544125 e!4544120)))

(declare-fun b!7645325 () Bool)

(declare-fun lt!2660929 () Bool)

(assert (=> b!7645325 (= e!4544125 (not lt!2660929))))

(declare-fun b!7645326 () Bool)

(assert (=> b!7645326 (= e!4544120 e!4544126)))

(declare-fun res!3062285 () Bool)

(assert (=> b!7645326 (=> (not res!3062285) (not e!4544126))))

(assert (=> b!7645326 (= res!3062285 (not lt!2660929))))

(declare-fun bm!701823 () Bool)

(declare-fun isEmpty!41816 (List!73315) Bool)

(assert (=> bm!701823 (= call!701828 (isEmpty!41816 s!9605))))

(declare-fun b!7645327 () Bool)

(declare-fun res!3062289 () Bool)

(assert (=> b!7645327 (=> (not res!3062289) (not e!4544122))))

(declare-fun tail!15275 (List!73315) List!73315)

(assert (=> b!7645327 (= res!3062289 (isEmpty!41816 (tail!15275 s!9605)))))

(declare-fun b!7645328 () Bool)

(assert (=> b!7645328 (= e!4544121 (not (= (head!15735 s!9605) (c!1408157 (Union!20464 (regTwo!41441 r!14126) (regOne!41441 r!14126))))))))

(declare-fun b!7645329 () Bool)

(declare-fun res!3062288 () Bool)

(assert (=> b!7645329 (=> res!3062288 e!4544121)))

(assert (=> b!7645329 (= res!3062288 (not (isEmpty!41816 (tail!15275 s!9605))))))

(declare-fun d!2325492 () Bool)

(assert (=> d!2325492 e!4544124))

(declare-fun c!1408182 () Bool)

(assert (=> d!2325492 (= c!1408182 (is-EmptyExpr!20464 (Union!20464 (regTwo!41441 r!14126) (regOne!41441 r!14126))))))

(assert (=> d!2325492 (= lt!2660929 e!4544123)))

(declare-fun c!1408180 () Bool)

(assert (=> d!2325492 (= c!1408180 (isEmpty!41816 s!9605))))

(assert (=> d!2325492 (validRegex!10882 (Union!20464 (regTwo!41441 r!14126) (regOne!41441 r!14126)))))

(assert (=> d!2325492 (= (matchR!9965 (Union!20464 (regTwo!41441 r!14126) (regOne!41441 r!14126)) s!9605) lt!2660929)))

(declare-fun b!7645323 () Bool)

(declare-fun res!3062290 () Bool)

(assert (=> b!7645323 (=> res!3062290 e!4544120)))

(assert (=> b!7645323 (= res!3062290 e!4544122)))

(declare-fun res!3062286 () Bool)

(assert (=> b!7645323 (=> (not res!3062286) (not e!4544122))))

(assert (=> b!7645323 (= res!3062286 lt!2660929)))

(declare-fun b!7645330 () Bool)

(assert (=> b!7645330 (= e!4544124 (= lt!2660929 call!701828))))

(declare-fun b!7645331 () Bool)

(declare-fun res!3062284 () Bool)

(assert (=> b!7645331 (=> (not res!3062284) (not e!4544122))))

(assert (=> b!7645331 (= res!3062284 (not call!701828))))

(declare-fun b!7645332 () Bool)

(declare-fun derivativeStep!5935 (Regex!20464 C!41254) Regex!20464)

(assert (=> b!7645332 (= e!4544123 (matchR!9965 (derivativeStep!5935 (Union!20464 (regTwo!41441 r!14126) (regOne!41441 r!14126)) (head!15735 s!9605)) (tail!15275 s!9605)))))

(assert (= (and d!2325492 c!1408180) b!7645320))

(assert (= (and d!2325492 (not c!1408180)) b!7645332))

(assert (= (and d!2325492 c!1408182) b!7645330))

(assert (= (and d!2325492 (not c!1408182)) b!7645321))

(assert (= (and b!7645321 c!1408181) b!7645325))

(assert (= (and b!7645321 (not c!1408181)) b!7645324))

(assert (= (and b!7645324 (not res!3062287)) b!7645323))

(assert (= (and b!7645323 res!3062286) b!7645331))

(assert (= (and b!7645331 res!3062284) b!7645327))

(assert (= (and b!7645327 res!3062289) b!7645322))

(assert (= (and b!7645323 (not res!3062290)) b!7645326))

(assert (= (and b!7645326 res!3062285) b!7645319))

(assert (= (and b!7645319 (not res!3062291)) b!7645329))

(assert (= (and b!7645329 (not res!3062288)) b!7645328))

(assert (= (or b!7645330 b!7645319 b!7645331) bm!701823))

(declare-fun m!8164376 () Bool)

(assert (=> b!7645320 m!8164376))

(declare-fun m!8164378 () Bool)

(assert (=> bm!701823 m!8164378))

(declare-fun m!8164380 () Bool)

(assert (=> b!7645332 m!8164380))

(assert (=> b!7645332 m!8164380))

(declare-fun m!8164382 () Bool)

(assert (=> b!7645332 m!8164382))

(declare-fun m!8164384 () Bool)

(assert (=> b!7645332 m!8164384))

(assert (=> b!7645332 m!8164382))

(assert (=> b!7645332 m!8164384))

(declare-fun m!8164386 () Bool)

(assert (=> b!7645332 m!8164386))

(assert (=> b!7645329 m!8164384))

(assert (=> b!7645329 m!8164384))

(declare-fun m!8164388 () Bool)

(assert (=> b!7645329 m!8164388))

(assert (=> b!7645322 m!8164380))

(assert (=> d!2325492 m!8164378))

(declare-fun m!8164390 () Bool)

(assert (=> d!2325492 m!8164390))

(assert (=> b!7645328 m!8164380))

(assert (=> b!7645327 m!8164384))

(assert (=> b!7645327 m!8164384))

(assert (=> b!7645327 m!8164388))

(assert (=> b!7645200 d!2325492))

(declare-fun d!2325496 () Bool)

(assert (=> d!2325496 (matchR!9965 (Union!20464 (regOne!41441 r!14126) (regTwo!41441 r!14126)) s!9605)))

(declare-fun lt!2660934 () Unit!167920)

(declare-fun choose!59031 (Regex!20464 Regex!20464 List!73315) Unit!167920)

(assert (=> d!2325496 (= lt!2660934 (choose!59031 (regTwo!41441 r!14126) (regOne!41441 r!14126) s!9605))))

(declare-fun e!4544143 () Bool)

(assert (=> d!2325496 e!4544143))

(declare-fun res!3062298 () Bool)

(assert (=> d!2325496 (=> (not res!3062298) (not e!4544143))))

(assert (=> d!2325496 (= res!3062298 (validRegex!10882 (regTwo!41441 r!14126)))))

(assert (=> d!2325496 (= (lemmaReversedUnionAcceptsSameString!39 (regTwo!41441 r!14126) (regOne!41441 r!14126) s!9605) lt!2660934)))

(declare-fun b!7645359 () Bool)

(assert (=> b!7645359 (= e!4544143 (validRegex!10882 (regOne!41441 r!14126)))))

(assert (= (and d!2325496 res!3062298) b!7645359))

(declare-fun m!8164392 () Bool)

(assert (=> d!2325496 m!8164392))

(declare-fun m!8164394 () Bool)

(assert (=> d!2325496 m!8164394))

(assert (=> d!2325496 m!8164360))

(assert (=> b!7645359 m!8164326))

(assert (=> b!7645200 d!2325496))

(declare-fun b!7645370 () Bool)

(declare-fun e!4544156 () Bool)

(declare-fun e!4544151 () Bool)

(assert (=> b!7645370 (= e!4544156 e!4544151)))

(declare-fun res!3062308 () Bool)

(assert (=> b!7645370 (=> res!3062308 e!4544151)))

(declare-fun call!701837 () Bool)

(assert (=> b!7645370 (= res!3062308 call!701837)))

(declare-fun b!7645371 () Bool)

(declare-fun e!4544153 () Bool)

(assert (=> b!7645371 (= e!4544153 (nullable!8965 r!14126))))

(declare-fun b!7645372 () Bool)

(declare-fun e!4544154 () Bool)

(declare-fun e!4544155 () Bool)

(assert (=> b!7645372 (= e!4544154 e!4544155)))

(declare-fun c!1408198 () Bool)

(assert (=> b!7645372 (= c!1408198 (is-EmptyLang!20464 r!14126))))

(declare-fun b!7645373 () Bool)

(declare-fun e!4544152 () Bool)

(assert (=> b!7645373 (= e!4544152 (= (head!15735 s!9605) (c!1408157 r!14126)))))

(declare-fun b!7645375 () Bool)

(declare-fun res!3062304 () Bool)

(declare-fun e!4544150 () Bool)

(assert (=> b!7645375 (=> res!3062304 e!4544150)))

(assert (=> b!7645375 (= res!3062304 (not (is-ElementMatch!20464 r!14126)))))

(assert (=> b!7645375 (= e!4544155 e!4544150)))

(declare-fun b!7645376 () Bool)

(declare-fun lt!2660935 () Bool)

(assert (=> b!7645376 (= e!4544155 (not lt!2660935))))

(declare-fun b!7645377 () Bool)

(assert (=> b!7645377 (= e!4544150 e!4544156)))

(declare-fun res!3062302 () Bool)

(assert (=> b!7645377 (=> (not res!3062302) (not e!4544156))))

(assert (=> b!7645377 (= res!3062302 (not lt!2660935))))

(declare-fun bm!701832 () Bool)

(assert (=> bm!701832 (= call!701837 (isEmpty!41816 s!9605))))

(declare-fun b!7645378 () Bool)

(declare-fun res!3062306 () Bool)

(assert (=> b!7645378 (=> (not res!3062306) (not e!4544152))))

(assert (=> b!7645378 (= res!3062306 (isEmpty!41816 (tail!15275 s!9605)))))

(declare-fun b!7645379 () Bool)

(assert (=> b!7645379 (= e!4544151 (not (= (head!15735 s!9605) (c!1408157 r!14126))))))

(declare-fun b!7645380 () Bool)

(declare-fun res!3062305 () Bool)

(assert (=> b!7645380 (=> res!3062305 e!4544151)))

(assert (=> b!7645380 (= res!3062305 (not (isEmpty!41816 (tail!15275 s!9605))))))

(declare-fun d!2325498 () Bool)

(assert (=> d!2325498 e!4544154))

(declare-fun c!1408199 () Bool)

(assert (=> d!2325498 (= c!1408199 (is-EmptyExpr!20464 r!14126))))

(assert (=> d!2325498 (= lt!2660935 e!4544153)))

(declare-fun c!1408197 () Bool)

(assert (=> d!2325498 (= c!1408197 (isEmpty!41816 s!9605))))

(assert (=> d!2325498 (validRegex!10882 r!14126)))

(assert (=> d!2325498 (= (matchR!9965 r!14126 s!9605) lt!2660935)))

(declare-fun b!7645374 () Bool)

(declare-fun res!3062307 () Bool)

(assert (=> b!7645374 (=> res!3062307 e!4544150)))

(assert (=> b!7645374 (= res!3062307 e!4544152)))

(declare-fun res!3062303 () Bool)

(assert (=> b!7645374 (=> (not res!3062303) (not e!4544152))))

(assert (=> b!7645374 (= res!3062303 lt!2660935)))

(declare-fun b!7645381 () Bool)

(assert (=> b!7645381 (= e!4544154 (= lt!2660935 call!701837))))

(declare-fun b!7645382 () Bool)

(declare-fun res!3062301 () Bool)

(assert (=> b!7645382 (=> (not res!3062301) (not e!4544152))))

(assert (=> b!7645382 (= res!3062301 (not call!701837))))

(declare-fun b!7645383 () Bool)

(assert (=> b!7645383 (= e!4544153 (matchR!9965 (derivativeStep!5935 r!14126 (head!15735 s!9605)) (tail!15275 s!9605)))))

(assert (= (and d!2325498 c!1408197) b!7645371))

(assert (= (and d!2325498 (not c!1408197)) b!7645383))

(assert (= (and d!2325498 c!1408199) b!7645381))

(assert (= (and d!2325498 (not c!1408199)) b!7645372))

(assert (= (and b!7645372 c!1408198) b!7645376))

(assert (= (and b!7645372 (not c!1408198)) b!7645375))

(assert (= (and b!7645375 (not res!3062304)) b!7645374))

(assert (= (and b!7645374 res!3062303) b!7645382))

(assert (= (and b!7645382 res!3062301) b!7645378))

(assert (= (and b!7645378 res!3062306) b!7645373))

(assert (= (and b!7645374 (not res!3062307)) b!7645377))

(assert (= (and b!7645377 res!3062302) b!7645370))

(assert (= (and b!7645370 (not res!3062308)) b!7645380))

(assert (= (and b!7645380 (not res!3062305)) b!7645379))

(assert (= (or b!7645381 b!7645370 b!7645382) bm!701832))

(declare-fun m!8164396 () Bool)

(assert (=> b!7645371 m!8164396))

(assert (=> bm!701832 m!8164378))

(assert (=> b!7645383 m!8164380))

(assert (=> b!7645383 m!8164380))

(declare-fun m!8164398 () Bool)

(assert (=> b!7645383 m!8164398))

(assert (=> b!7645383 m!8164384))

(assert (=> b!7645383 m!8164398))

(assert (=> b!7645383 m!8164384))

(declare-fun m!8164400 () Bool)

(assert (=> b!7645383 m!8164400))

(assert (=> b!7645380 m!8164384))

(assert (=> b!7645380 m!8164384))

(assert (=> b!7645380 m!8164388))

(assert (=> b!7645373 m!8164380))

(assert (=> d!2325498 m!8164378))

(assert (=> d!2325498 m!8164332))

(assert (=> b!7645379 m!8164380))

(assert (=> b!7645378 m!8164384))

(assert (=> b!7645378 m!8164384))

(assert (=> b!7645378 m!8164388))

(assert (=> b!7645200 d!2325498))

(declare-fun b!7645458 () Bool)

(declare-fun e!4544201 () Bool)

(declare-fun e!4544202 () Bool)

(assert (=> b!7645458 (= e!4544201 e!4544202)))

(declare-fun res!3062322 () Bool)

(declare-fun lt!2660943 () Int)

(declare-fun call!701877 () Int)

(assert (=> b!7645458 (= res!3062322 (> lt!2660943 call!701877))))

(assert (=> b!7645458 (=> (not res!3062322) (not e!4544202))))

(declare-fun bm!701867 () Bool)

(declare-fun call!701873 () Int)

(declare-fun c!1408235 () Bool)

(assert (=> bm!701867 (= call!701873 (regexDepth!484 (ite c!1408235 (regTwo!41441 (regOne!41441 r!14126)) (regOne!41440 (regOne!41441 r!14126)))))))

(declare-fun b!7645459 () Bool)

(declare-fun e!4544203 () Bool)

(declare-fun call!701874 () Int)

(assert (=> b!7645459 (= e!4544203 (> lt!2660943 call!701874))))

(declare-fun bm!701868 () Bool)

(declare-fun call!701872 () Int)

(declare-fun c!1408236 () Bool)

(assert (=> bm!701868 (= call!701872 (regexDepth!484 (ite c!1408236 (regTwo!41441 (regOne!41441 r!14126)) (regTwo!41440 (regOne!41441 r!14126)))))))

(declare-fun b!7645461 () Bool)

(declare-fun e!4544208 () Bool)

(assert (=> b!7645461 (= e!4544208 e!4544201)))

(assert (=> b!7645461 (= c!1408236 (is-Union!20464 (regOne!41441 r!14126)))))

(declare-fun b!7645462 () Bool)

(declare-fun e!4544200 () Int)

(assert (=> b!7645462 (= e!4544200 1)))

(declare-fun b!7645463 () Bool)

(declare-fun res!3062323 () Bool)

(declare-fun e!4544205 () Bool)

(assert (=> b!7645463 (=> (not res!3062323) (not e!4544205))))

(assert (=> b!7645463 (= res!3062323 (> lt!2660943 call!701874))))

(declare-fun e!4544209 () Bool)

(assert (=> b!7645463 (= e!4544209 e!4544205)))

(declare-fun b!7645464 () Bool)

(declare-fun e!4544207 () Int)

(declare-fun call!701876 () Int)

(assert (=> b!7645464 (= e!4544207 (+ 1 call!701876))))

(declare-fun b!7645465 () Bool)

(declare-fun e!4544204 () Int)

(declare-fun call!701878 () Int)

(assert (=> b!7645465 (= e!4544204 (+ 1 call!701878))))

(declare-fun b!7645466 () Bool)

(declare-fun e!4544206 () Int)

(assert (=> b!7645466 (= e!4544206 e!4544207)))

(declare-fun c!1408232 () Bool)

(assert (=> b!7645466 (= c!1408232 (is-Star!20464 (regOne!41441 r!14126)))))

(declare-fun b!7645467 () Bool)

(assert (=> b!7645467 (= e!4544206 1)))

(declare-fun b!7645468 () Bool)

(assert (=> b!7645468 (= e!4544200 (+ 1 call!701878))))

(declare-fun b!7645469 () Bool)

(assert (=> b!7645469 (= c!1408235 (is-Union!20464 (regOne!41441 r!14126)))))

(assert (=> b!7645469 (= e!4544207 e!4544204)))

(declare-fun b!7645470 () Bool)

(declare-fun c!1408234 () Bool)

(assert (=> b!7645470 (= c!1408234 (is-Star!20464 (regOne!41441 r!14126)))))

(assert (=> b!7645470 (= e!4544209 e!4544203)))

(declare-fun b!7645471 () Bool)

(assert (=> b!7645471 (= e!4544202 (> lt!2660943 call!701872))))

(declare-fun bm!701869 () Bool)

(assert (=> bm!701869 (= call!701874 call!701877)))

(declare-fun bm!701870 () Bool)

(declare-fun call!701875 () Int)

(assert (=> bm!701870 (= call!701875 call!701876)))

(declare-fun b!7645472 () Bool)

(assert (=> b!7645472 (= e!4544201 e!4544209)))

(declare-fun c!1408233 () Bool)

(assert (=> b!7645472 (= c!1408233 (is-Concat!29309 (regOne!41441 r!14126)))))

(declare-fun bm!701871 () Bool)

(assert (=> bm!701871 (= call!701876 (regexDepth!484 (ite c!1408232 (reg!20793 (regOne!41441 r!14126)) (ite c!1408235 (regOne!41441 (regOne!41441 r!14126)) (regTwo!41440 (regOne!41441 r!14126))))))))

(declare-fun b!7645473 () Bool)

(assert (=> b!7645473 (= e!4544203 (= lt!2660943 1))))

(declare-fun bm!701872 () Bool)

(assert (=> bm!701872 (= call!701877 (regexDepth!484 (ite c!1408236 (regOne!41441 (regOne!41441 r!14126)) (ite c!1408233 (regOne!41440 (regOne!41441 r!14126)) (reg!20793 (regOne!41441 r!14126))))))))

(declare-fun d!2325500 () Bool)

(assert (=> d!2325500 e!4544208))

(declare-fun res!3062321 () Bool)

(assert (=> d!2325500 (=> (not res!3062321) (not e!4544208))))

(assert (=> d!2325500 (= res!3062321 (> lt!2660943 0))))

(assert (=> d!2325500 (= lt!2660943 e!4544206)))

(declare-fun c!1408237 () Bool)

(assert (=> d!2325500 (= c!1408237 (is-ElementMatch!20464 (regOne!41441 r!14126)))))

(assert (=> d!2325500 (= (regexDepth!484 (regOne!41441 r!14126)) lt!2660943)))

(declare-fun b!7645460 () Bool)

(assert (=> b!7645460 (= e!4544204 e!4544200)))

(declare-fun c!1408231 () Bool)

(assert (=> b!7645460 (= c!1408231 (is-Concat!29309 (regOne!41441 r!14126)))))

(declare-fun bm!701873 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!701873 (= call!701878 (maxBigInt!0 (ite c!1408235 call!701875 call!701873) (ite c!1408235 call!701873 call!701875)))))

(declare-fun b!7645474 () Bool)

(assert (=> b!7645474 (= e!4544205 (> lt!2660943 call!701872))))

(assert (= (and d!2325500 c!1408237) b!7645467))

(assert (= (and d!2325500 (not c!1408237)) b!7645466))

(assert (= (and b!7645466 c!1408232) b!7645464))

(assert (= (and b!7645466 (not c!1408232)) b!7645469))

(assert (= (and b!7645469 c!1408235) b!7645465))

(assert (= (and b!7645469 (not c!1408235)) b!7645460))

(assert (= (and b!7645460 c!1408231) b!7645468))

(assert (= (and b!7645460 (not c!1408231)) b!7645462))

(assert (= (or b!7645465 b!7645468) bm!701870))

(assert (= (or b!7645465 b!7645468) bm!701867))

(assert (= (or b!7645465 b!7645468) bm!701873))

(assert (= (or b!7645464 bm!701870) bm!701871))

(assert (= (and d!2325500 res!3062321) b!7645461))

(assert (= (and b!7645461 c!1408236) b!7645458))

(assert (= (and b!7645461 (not c!1408236)) b!7645472))

(assert (= (and b!7645458 res!3062322) b!7645471))

(assert (= (and b!7645472 c!1408233) b!7645463))

(assert (= (and b!7645472 (not c!1408233)) b!7645470))

(assert (= (and b!7645463 res!3062323) b!7645474))

(assert (= (and b!7645470 c!1408234) b!7645459))

(assert (= (and b!7645470 (not c!1408234)) b!7645473))

(assert (= (or b!7645463 b!7645459) bm!701869))

(assert (= (or b!7645458 bm!701869) bm!701872))

(assert (= (or b!7645471 b!7645474) bm!701868))

(declare-fun m!8164424 () Bool)

(assert (=> bm!701868 m!8164424))

(declare-fun m!8164426 () Bool)

(assert (=> bm!701871 m!8164426))

(declare-fun m!8164428 () Bool)

(assert (=> bm!701872 m!8164428))

(declare-fun m!8164430 () Bool)

(assert (=> bm!701867 m!8164430))

(declare-fun m!8164432 () Bool)

(assert (=> bm!701873 m!8164432))

(assert (=> b!7645198 d!2325500))

(declare-fun b!7645477 () Bool)

(declare-fun e!4544213 () Bool)

(declare-fun e!4544214 () Bool)

(assert (=> b!7645477 (= e!4544213 e!4544214)))

(declare-fun res!3062327 () Bool)

(declare-fun lt!2660946 () Int)

(declare-fun call!701884 () Int)

(assert (=> b!7645477 (= res!3062327 (> lt!2660946 call!701884))))

(assert (=> b!7645477 (=> (not res!3062327) (not e!4544214))))

(declare-fun bm!701874 () Bool)

(declare-fun call!701880 () Int)

(declare-fun c!1408242 () Bool)

(assert (=> bm!701874 (= call!701880 (regexDepth!484 (ite c!1408242 (regTwo!41441 r!14126) (regOne!41440 r!14126))))))

(declare-fun b!7645478 () Bool)

(declare-fun e!4544215 () Bool)

(declare-fun call!701881 () Int)

(assert (=> b!7645478 (= e!4544215 (> lt!2660946 call!701881))))

(declare-fun bm!701875 () Bool)

(declare-fun call!701879 () Int)

(declare-fun c!1408243 () Bool)

(assert (=> bm!701875 (= call!701879 (regexDepth!484 (ite c!1408243 (regTwo!41441 r!14126) (regTwo!41440 r!14126))))))

(declare-fun b!7645480 () Bool)

(declare-fun e!4544220 () Bool)

(assert (=> b!7645480 (= e!4544220 e!4544213)))

(assert (=> b!7645480 (= c!1408243 (is-Union!20464 r!14126))))

(declare-fun b!7645481 () Bool)

(declare-fun e!4544212 () Int)

(assert (=> b!7645481 (= e!4544212 1)))

(declare-fun b!7645482 () Bool)

(declare-fun res!3062328 () Bool)

(declare-fun e!4544217 () Bool)

(assert (=> b!7645482 (=> (not res!3062328) (not e!4544217))))

(assert (=> b!7645482 (= res!3062328 (> lt!2660946 call!701881))))

(declare-fun e!4544221 () Bool)

(assert (=> b!7645482 (= e!4544221 e!4544217)))

(declare-fun b!7645483 () Bool)

(declare-fun e!4544219 () Int)

(declare-fun call!701883 () Int)

(assert (=> b!7645483 (= e!4544219 (+ 1 call!701883))))

(declare-fun b!7645484 () Bool)

(declare-fun e!4544216 () Int)

(declare-fun call!701885 () Int)

(assert (=> b!7645484 (= e!4544216 (+ 1 call!701885))))

(declare-fun b!7645485 () Bool)

(declare-fun e!4544218 () Int)

(assert (=> b!7645485 (= e!4544218 e!4544219)))

(declare-fun c!1408239 () Bool)

(assert (=> b!7645485 (= c!1408239 (is-Star!20464 r!14126))))

(declare-fun b!7645486 () Bool)

(assert (=> b!7645486 (= e!4544218 1)))

(declare-fun b!7645487 () Bool)

(assert (=> b!7645487 (= e!4544212 (+ 1 call!701885))))

(declare-fun b!7645488 () Bool)

(assert (=> b!7645488 (= c!1408242 (is-Union!20464 r!14126))))

(assert (=> b!7645488 (= e!4544219 e!4544216)))

(declare-fun b!7645489 () Bool)

(declare-fun c!1408241 () Bool)

(assert (=> b!7645489 (= c!1408241 (is-Star!20464 r!14126))))

(assert (=> b!7645489 (= e!4544221 e!4544215)))

(declare-fun b!7645490 () Bool)

(assert (=> b!7645490 (= e!4544214 (> lt!2660946 call!701879))))

(declare-fun bm!701876 () Bool)

(assert (=> bm!701876 (= call!701881 call!701884)))

(declare-fun bm!701877 () Bool)

(declare-fun call!701882 () Int)

(assert (=> bm!701877 (= call!701882 call!701883)))

(declare-fun b!7645491 () Bool)

(assert (=> b!7645491 (= e!4544213 e!4544221)))

(declare-fun c!1408240 () Bool)

(assert (=> b!7645491 (= c!1408240 (is-Concat!29309 r!14126))))

(declare-fun bm!701878 () Bool)

(assert (=> bm!701878 (= call!701883 (regexDepth!484 (ite c!1408239 (reg!20793 r!14126) (ite c!1408242 (regOne!41441 r!14126) (regTwo!41440 r!14126)))))))

(declare-fun b!7645492 () Bool)

(assert (=> b!7645492 (= e!4544215 (= lt!2660946 1))))

(declare-fun bm!701879 () Bool)

(assert (=> bm!701879 (= call!701884 (regexDepth!484 (ite c!1408243 (regOne!41441 r!14126) (ite c!1408240 (regOne!41440 r!14126) (reg!20793 r!14126)))))))

(declare-fun d!2325508 () Bool)

(assert (=> d!2325508 e!4544220))

(declare-fun res!3062326 () Bool)

(assert (=> d!2325508 (=> (not res!3062326) (not e!4544220))))

(assert (=> d!2325508 (= res!3062326 (> lt!2660946 0))))

(assert (=> d!2325508 (= lt!2660946 e!4544218)))

(declare-fun c!1408244 () Bool)

(assert (=> d!2325508 (= c!1408244 (is-ElementMatch!20464 r!14126))))

(assert (=> d!2325508 (= (regexDepth!484 r!14126) lt!2660946)))

(declare-fun b!7645479 () Bool)

(assert (=> b!7645479 (= e!4544216 e!4544212)))

(declare-fun c!1408238 () Bool)

(assert (=> b!7645479 (= c!1408238 (is-Concat!29309 r!14126))))

(declare-fun bm!701880 () Bool)

(assert (=> bm!701880 (= call!701885 (maxBigInt!0 (ite c!1408242 call!701882 call!701880) (ite c!1408242 call!701880 call!701882)))))

(declare-fun b!7645493 () Bool)

(assert (=> b!7645493 (= e!4544217 (> lt!2660946 call!701879))))

(assert (= (and d!2325508 c!1408244) b!7645486))

(assert (= (and d!2325508 (not c!1408244)) b!7645485))

(assert (= (and b!7645485 c!1408239) b!7645483))

(assert (= (and b!7645485 (not c!1408239)) b!7645488))

(assert (= (and b!7645488 c!1408242) b!7645484))

(assert (= (and b!7645488 (not c!1408242)) b!7645479))

(assert (= (and b!7645479 c!1408238) b!7645487))

(assert (= (and b!7645479 (not c!1408238)) b!7645481))

(assert (= (or b!7645484 b!7645487) bm!701877))

(assert (= (or b!7645484 b!7645487) bm!701874))

(assert (= (or b!7645484 b!7645487) bm!701880))

(assert (= (or b!7645483 bm!701877) bm!701878))

(assert (= (and d!2325508 res!3062326) b!7645480))

(assert (= (and b!7645480 c!1408243) b!7645477))

(assert (= (and b!7645480 (not c!1408243)) b!7645491))

(assert (= (and b!7645477 res!3062327) b!7645490))

(assert (= (and b!7645491 c!1408240) b!7645482))

(assert (= (and b!7645491 (not c!1408240)) b!7645489))

(assert (= (and b!7645482 res!3062328) b!7645493))

(assert (= (and b!7645489 c!1408241) b!7645478))

(assert (= (and b!7645489 (not c!1408241)) b!7645492))

(assert (= (or b!7645482 b!7645478) bm!701876))

(assert (= (or b!7645477 bm!701876) bm!701879))

(assert (= (or b!7645490 b!7645493) bm!701875))

(declare-fun m!8164438 () Bool)

(assert (=> bm!701875 m!8164438))

(declare-fun m!8164440 () Bool)

(assert (=> bm!701878 m!8164440))

(declare-fun m!8164442 () Bool)

(assert (=> bm!701879 m!8164442))

(declare-fun m!8164444 () Bool)

(assert (=> bm!701874 m!8164444))

(declare-fun m!8164446 () Bool)

(assert (=> bm!701880 m!8164446))

(assert (=> b!7645198 d!2325508))

(declare-fun d!2325512 () Bool)

(declare-fun lt!2660951 () Int)

(assert (=> d!2325512 (>= lt!2660951 0)))

(declare-fun e!4544232 () Int)

(assert (=> d!2325512 (= lt!2660951 e!4544232)))

(declare-fun c!1408250 () Bool)

(assert (=> d!2325512 (= c!1408250 (is-Nil!73191 s!9605))))

(assert (=> d!2325512 (= (size!42590 s!9605) lt!2660951)))

(declare-fun b!7645513 () Bool)

(assert (=> b!7645513 (= e!4544232 0)))

(declare-fun b!7645514 () Bool)

(assert (=> b!7645514 (= e!4544232 (+ 1 (size!42590 (t!388050 s!9605))))))

(assert (= (and d!2325512 c!1408250) b!7645513))

(assert (= (and d!2325512 (not c!1408250)) b!7645514))

(declare-fun m!8164456 () Bool)

(assert (=> b!7645514 m!8164456))

(assert (=> b!7645198 d!2325512))

(declare-fun b!7645536 () Bool)

(declare-fun res!3062353 () Bool)

(declare-fun e!4544252 () Bool)

(assert (=> b!7645536 (=> res!3062353 e!4544252)))

(assert (=> b!7645536 (= res!3062353 (not (is-Concat!29309 (regOne!41441 r!14126))))))

(declare-fun e!4544253 () Bool)

(assert (=> b!7645536 (= e!4544253 e!4544252)))

(declare-fun b!7645537 () Bool)

(declare-fun e!4544255 () Bool)

(assert (=> b!7645537 (= e!4544252 e!4544255)))

(declare-fun res!3062351 () Bool)

(assert (=> b!7645537 (=> (not res!3062351) (not e!4544255))))

(declare-fun call!701893 () Bool)

(assert (=> b!7645537 (= res!3062351 call!701893)))

(declare-fun b!7645538 () Bool)

(declare-fun e!4544250 () Bool)

(declare-fun e!4544256 () Bool)

(assert (=> b!7645538 (= e!4544250 e!4544256)))

(declare-fun res!3062352 () Bool)

(assert (=> b!7645538 (= res!3062352 (not (nullable!8965 (reg!20793 (regOne!41441 r!14126)))))))

(assert (=> b!7645538 (=> (not res!3062352) (not e!4544256))))

(declare-fun b!7645539 () Bool)

(declare-fun e!4544251 () Bool)

(assert (=> b!7645539 (= e!4544251 e!4544250)))

(declare-fun c!1408255 () Bool)

(assert (=> b!7645539 (= c!1408255 (is-Star!20464 (regOne!41441 r!14126)))))

(declare-fun bm!701888 () Bool)

(declare-fun call!701894 () Bool)

(declare-fun call!701895 () Bool)

(assert (=> bm!701888 (= call!701894 call!701895)))

(declare-fun b!7645540 () Bool)

(declare-fun res!3062354 () Bool)

(declare-fun e!4544254 () Bool)

(assert (=> b!7645540 (=> (not res!3062354) (not e!4544254))))

(assert (=> b!7645540 (= res!3062354 call!701893)))

(assert (=> b!7645540 (= e!4544253 e!4544254)))

(declare-fun b!7645541 () Bool)

(assert (=> b!7645541 (= e!4544256 call!701895)))

(declare-fun b!7645542 () Bool)

(assert (=> b!7645542 (= e!4544254 call!701894)))

(declare-fun c!1408256 () Bool)

(declare-fun bm!701889 () Bool)

(assert (=> bm!701889 (= call!701895 (validRegex!10882 (ite c!1408255 (reg!20793 (regOne!41441 r!14126)) (ite c!1408256 (regTwo!41441 (regOne!41441 r!14126)) (regTwo!41440 (regOne!41441 r!14126))))))))

(declare-fun b!7645543 () Bool)

(assert (=> b!7645543 (= e!4544250 e!4544253)))

(assert (=> b!7645543 (= c!1408256 (is-Union!20464 (regOne!41441 r!14126)))))

(declare-fun b!7645544 () Bool)

(assert (=> b!7645544 (= e!4544255 call!701894)))

(declare-fun bm!701890 () Bool)

(assert (=> bm!701890 (= call!701893 (validRegex!10882 (ite c!1408256 (regOne!41441 (regOne!41441 r!14126)) (regOne!41440 (regOne!41441 r!14126)))))))

(declare-fun d!2325516 () Bool)

(declare-fun res!3062355 () Bool)

(assert (=> d!2325516 (=> res!3062355 e!4544251)))

(assert (=> d!2325516 (= res!3062355 (is-ElementMatch!20464 (regOne!41441 r!14126)))))

(assert (=> d!2325516 (= (validRegex!10882 (regOne!41441 r!14126)) e!4544251)))

(assert (= (and d!2325516 (not res!3062355)) b!7645539))

(assert (= (and b!7645539 c!1408255) b!7645538))

(assert (= (and b!7645539 (not c!1408255)) b!7645543))

(assert (= (and b!7645538 res!3062352) b!7645541))

(assert (= (and b!7645543 c!1408256) b!7645540))

(assert (= (and b!7645543 (not c!1408256)) b!7645536))

(assert (= (and b!7645540 res!3062354) b!7645542))

(assert (= (and b!7645536 (not res!3062353)) b!7645537))

(assert (= (and b!7645537 res!3062351) b!7645544))

(assert (= (or b!7645540 b!7645537) bm!701890))

(assert (= (or b!7645542 b!7645544) bm!701888))

(assert (= (or b!7645541 bm!701888) bm!701889))

(declare-fun m!8164462 () Bool)

(assert (=> b!7645538 m!8164462))

(declare-fun m!8164464 () Bool)

(assert (=> bm!701889 m!8164464))

(declare-fun m!8164466 () Bool)

(assert (=> bm!701890 m!8164466))

(assert (=> b!7645197 d!2325516))

(declare-fun b!7645563 () Bool)

(declare-fun e!4544277 () Bool)

(declare-fun e!4544272 () Bool)

(assert (=> b!7645563 (= e!4544277 e!4544272)))

(declare-fun res!3062373 () Bool)

(assert (=> b!7645563 (=> res!3062373 e!4544272)))

(declare-fun call!701896 () Bool)

(assert (=> b!7645563 (= res!3062373 call!701896)))

(declare-fun b!7645564 () Bool)

(declare-fun e!4544274 () Bool)

(assert (=> b!7645564 (= e!4544274 (nullable!8965 (regTwo!41441 r!14126)))))

(declare-fun b!7645565 () Bool)

(declare-fun e!4544275 () Bool)

(declare-fun e!4544276 () Bool)

(assert (=> b!7645565 (= e!4544275 e!4544276)))

(declare-fun c!1408262 () Bool)

(assert (=> b!7645565 (= c!1408262 (is-EmptyLang!20464 (regTwo!41441 r!14126)))))

(declare-fun b!7645566 () Bool)

(declare-fun e!4544273 () Bool)

(assert (=> b!7645566 (= e!4544273 (= (head!15735 s!9605) (c!1408157 (regTwo!41441 r!14126))))))

(declare-fun b!7645568 () Bool)

(declare-fun res!3062369 () Bool)

(declare-fun e!4544271 () Bool)

(assert (=> b!7645568 (=> res!3062369 e!4544271)))

(assert (=> b!7645568 (= res!3062369 (not (is-ElementMatch!20464 (regTwo!41441 r!14126))))))

(assert (=> b!7645568 (= e!4544276 e!4544271)))

(declare-fun b!7645569 () Bool)

(declare-fun lt!2660955 () Bool)

(assert (=> b!7645569 (= e!4544276 (not lt!2660955))))

(declare-fun b!7645570 () Bool)

(assert (=> b!7645570 (= e!4544271 e!4544277)))

(declare-fun res!3062367 () Bool)

(assert (=> b!7645570 (=> (not res!3062367) (not e!4544277))))

(assert (=> b!7645570 (= res!3062367 (not lt!2660955))))

(declare-fun bm!701891 () Bool)

(assert (=> bm!701891 (= call!701896 (isEmpty!41816 s!9605))))

(declare-fun b!7645571 () Bool)

(declare-fun res!3062371 () Bool)

(assert (=> b!7645571 (=> (not res!3062371) (not e!4544273))))

(assert (=> b!7645571 (= res!3062371 (isEmpty!41816 (tail!15275 s!9605)))))

(declare-fun b!7645572 () Bool)

(assert (=> b!7645572 (= e!4544272 (not (= (head!15735 s!9605) (c!1408157 (regTwo!41441 r!14126)))))))

(declare-fun b!7645573 () Bool)

(declare-fun res!3062370 () Bool)

(assert (=> b!7645573 (=> res!3062370 e!4544272)))

(assert (=> b!7645573 (= res!3062370 (not (isEmpty!41816 (tail!15275 s!9605))))))

(declare-fun d!2325520 () Bool)

(assert (=> d!2325520 e!4544275))

(declare-fun c!1408263 () Bool)

(assert (=> d!2325520 (= c!1408263 (is-EmptyExpr!20464 (regTwo!41441 r!14126)))))

(assert (=> d!2325520 (= lt!2660955 e!4544274)))

(declare-fun c!1408261 () Bool)

(assert (=> d!2325520 (= c!1408261 (isEmpty!41816 s!9605))))

(assert (=> d!2325520 (validRegex!10882 (regTwo!41441 r!14126))))

(assert (=> d!2325520 (= (matchR!9965 (regTwo!41441 r!14126) s!9605) lt!2660955)))

(declare-fun b!7645567 () Bool)

(declare-fun res!3062372 () Bool)

(assert (=> b!7645567 (=> res!3062372 e!4544271)))

(assert (=> b!7645567 (= res!3062372 e!4544273)))

(declare-fun res!3062368 () Bool)

(assert (=> b!7645567 (=> (not res!3062368) (not e!4544273))))

(assert (=> b!7645567 (= res!3062368 lt!2660955)))

(declare-fun b!7645574 () Bool)

(assert (=> b!7645574 (= e!4544275 (= lt!2660955 call!701896))))

(declare-fun b!7645575 () Bool)

(declare-fun res!3062366 () Bool)

(assert (=> b!7645575 (=> (not res!3062366) (not e!4544273))))

(assert (=> b!7645575 (= res!3062366 (not call!701896))))

(declare-fun b!7645576 () Bool)

(assert (=> b!7645576 (= e!4544274 (matchR!9965 (derivativeStep!5935 (regTwo!41441 r!14126) (head!15735 s!9605)) (tail!15275 s!9605)))))

(assert (= (and d!2325520 c!1408261) b!7645564))

(assert (= (and d!2325520 (not c!1408261)) b!7645576))

(assert (= (and d!2325520 c!1408263) b!7645574))

(assert (= (and d!2325520 (not c!1408263)) b!7645565))

(assert (= (and b!7645565 c!1408262) b!7645569))

(assert (= (and b!7645565 (not c!1408262)) b!7645568))

(assert (= (and b!7645568 (not res!3062369)) b!7645567))

(assert (= (and b!7645567 res!3062368) b!7645575))

(assert (= (and b!7645575 res!3062366) b!7645571))

(assert (= (and b!7645571 res!3062371) b!7645566))

(assert (= (and b!7645567 (not res!3062372)) b!7645570))

(assert (= (and b!7645570 res!3062367) b!7645563))

(assert (= (and b!7645563 (not res!3062373)) b!7645573))

(assert (= (and b!7645573 (not res!3062370)) b!7645572))

(assert (= (or b!7645574 b!7645563 b!7645575) bm!701891))

(declare-fun m!8164468 () Bool)

(assert (=> b!7645564 m!8164468))

(assert (=> bm!701891 m!8164378))

(assert (=> b!7645576 m!8164380))

(assert (=> b!7645576 m!8164380))

(declare-fun m!8164470 () Bool)

(assert (=> b!7645576 m!8164470))

(assert (=> b!7645576 m!8164384))

(assert (=> b!7645576 m!8164470))

(assert (=> b!7645576 m!8164384))

(declare-fun m!8164472 () Bool)

(assert (=> b!7645576 m!8164472))

(assert (=> b!7645573 m!8164384))

(assert (=> b!7645573 m!8164384))

(assert (=> b!7645573 m!8164388))

(assert (=> b!7645566 m!8164380))

(assert (=> d!2325520 m!8164378))

(assert (=> d!2325520 m!8164360))

(assert (=> b!7645572 m!8164380))

(assert (=> b!7645571 m!8164384))

(assert (=> b!7645571 m!8164384))

(assert (=> b!7645571 m!8164388))

(assert (=> b!7645197 d!2325520))

(declare-fun b!7645577 () Bool)

(declare-fun e!4544284 () Bool)

(declare-fun e!4544279 () Bool)

(assert (=> b!7645577 (= e!4544284 e!4544279)))

(declare-fun res!3062381 () Bool)

(assert (=> b!7645577 (=> res!3062381 e!4544279)))

(declare-fun call!701903 () Bool)

(assert (=> b!7645577 (= res!3062381 call!701903)))

(declare-fun b!7645578 () Bool)

(declare-fun e!4544281 () Bool)

(assert (=> b!7645578 (= e!4544281 (nullable!8965 (regOne!41441 r!14126)))))

(declare-fun b!7645579 () Bool)

(declare-fun e!4544282 () Bool)

(declare-fun e!4544283 () Bool)

(assert (=> b!7645579 (= e!4544282 e!4544283)))

(declare-fun c!1408265 () Bool)

(assert (=> b!7645579 (= c!1408265 (is-EmptyLang!20464 (regOne!41441 r!14126)))))

(declare-fun b!7645580 () Bool)

(declare-fun e!4544280 () Bool)

(assert (=> b!7645580 (= e!4544280 (= (head!15735 s!9605) (c!1408157 (regOne!41441 r!14126))))))

(declare-fun b!7645582 () Bool)

(declare-fun res!3062377 () Bool)

(declare-fun e!4544278 () Bool)

(assert (=> b!7645582 (=> res!3062377 e!4544278)))

(assert (=> b!7645582 (= res!3062377 (not (is-ElementMatch!20464 (regOne!41441 r!14126))))))

(assert (=> b!7645582 (= e!4544283 e!4544278)))

(declare-fun b!7645583 () Bool)

(declare-fun lt!2660956 () Bool)

(assert (=> b!7645583 (= e!4544283 (not lt!2660956))))

(declare-fun b!7645584 () Bool)

(assert (=> b!7645584 (= e!4544278 e!4544284)))

(declare-fun res!3062375 () Bool)

(assert (=> b!7645584 (=> (not res!3062375) (not e!4544284))))

(assert (=> b!7645584 (= res!3062375 (not lt!2660956))))

(declare-fun bm!701898 () Bool)

(assert (=> bm!701898 (= call!701903 (isEmpty!41816 s!9605))))

(declare-fun b!7645585 () Bool)

(declare-fun res!3062379 () Bool)

(assert (=> b!7645585 (=> (not res!3062379) (not e!4544280))))

(assert (=> b!7645585 (= res!3062379 (isEmpty!41816 (tail!15275 s!9605)))))

(declare-fun b!7645586 () Bool)

(assert (=> b!7645586 (= e!4544279 (not (= (head!15735 s!9605) (c!1408157 (regOne!41441 r!14126)))))))

(declare-fun b!7645587 () Bool)

(declare-fun res!3062378 () Bool)

(assert (=> b!7645587 (=> res!3062378 e!4544279)))

(assert (=> b!7645587 (= res!3062378 (not (isEmpty!41816 (tail!15275 s!9605))))))

(declare-fun d!2325522 () Bool)

(assert (=> d!2325522 e!4544282))

(declare-fun c!1408266 () Bool)

(assert (=> d!2325522 (= c!1408266 (is-EmptyExpr!20464 (regOne!41441 r!14126)))))

(assert (=> d!2325522 (= lt!2660956 e!4544281)))

(declare-fun c!1408264 () Bool)

(assert (=> d!2325522 (= c!1408264 (isEmpty!41816 s!9605))))

(assert (=> d!2325522 (validRegex!10882 (regOne!41441 r!14126))))

(assert (=> d!2325522 (= (matchR!9965 (regOne!41441 r!14126) s!9605) lt!2660956)))

(declare-fun b!7645581 () Bool)

(declare-fun res!3062380 () Bool)

(assert (=> b!7645581 (=> res!3062380 e!4544278)))

(assert (=> b!7645581 (= res!3062380 e!4544280)))

(declare-fun res!3062376 () Bool)

(assert (=> b!7645581 (=> (not res!3062376) (not e!4544280))))

(assert (=> b!7645581 (= res!3062376 lt!2660956)))

(declare-fun b!7645588 () Bool)

(assert (=> b!7645588 (= e!4544282 (= lt!2660956 call!701903))))

(declare-fun b!7645589 () Bool)

(declare-fun res!3062374 () Bool)

(assert (=> b!7645589 (=> (not res!3062374) (not e!4544280))))

(assert (=> b!7645589 (= res!3062374 (not call!701903))))

(declare-fun b!7645590 () Bool)

(assert (=> b!7645590 (= e!4544281 (matchR!9965 (derivativeStep!5935 (regOne!41441 r!14126) (head!15735 s!9605)) (tail!15275 s!9605)))))

(assert (= (and d!2325522 c!1408264) b!7645578))

(assert (= (and d!2325522 (not c!1408264)) b!7645590))

(assert (= (and d!2325522 c!1408266) b!7645588))

(assert (= (and d!2325522 (not c!1408266)) b!7645579))

(assert (= (and b!7645579 c!1408265) b!7645583))

(assert (= (and b!7645579 (not c!1408265)) b!7645582))

(assert (= (and b!7645582 (not res!3062377)) b!7645581))

(assert (= (and b!7645581 res!3062376) b!7645589))

(assert (= (and b!7645589 res!3062374) b!7645585))

(assert (= (and b!7645585 res!3062379) b!7645580))

(assert (= (and b!7645581 (not res!3062380)) b!7645584))

(assert (= (and b!7645584 res!3062375) b!7645577))

(assert (= (and b!7645577 (not res!3062381)) b!7645587))

(assert (= (and b!7645587 (not res!3062378)) b!7645586))

(assert (= (or b!7645588 b!7645577 b!7645589) bm!701898))

(declare-fun m!8164474 () Bool)

(assert (=> b!7645578 m!8164474))

(assert (=> bm!701898 m!8164378))

(assert (=> b!7645590 m!8164380))

(assert (=> b!7645590 m!8164380))

(declare-fun m!8164476 () Bool)

(assert (=> b!7645590 m!8164476))

(assert (=> b!7645590 m!8164384))

(assert (=> b!7645590 m!8164476))

(assert (=> b!7645590 m!8164384))

(declare-fun m!8164478 () Bool)

(assert (=> b!7645590 m!8164478))

(assert (=> b!7645587 m!8164384))

(assert (=> b!7645587 m!8164384))

(assert (=> b!7645587 m!8164388))

(assert (=> b!7645580 m!8164380))

(assert (=> d!2325522 m!8164378))

(assert (=> d!2325522 m!8164326))

(assert (=> b!7645586 m!8164380))

(assert (=> b!7645585 m!8164384))

(assert (=> b!7645585 m!8164384))

(assert (=> b!7645585 m!8164388))

(assert (=> b!7645197 d!2325522))

(declare-fun d!2325524 () Bool)

(assert (=> d!2325524 (matchR!9965 (Union!20464 (regOne!41441 r!14126) (regTwo!41441 r!14126)) s!9605)))

(declare-fun lt!2660957 () Unit!167920)

(assert (=> d!2325524 (= lt!2660957 (choose!59030 (regOne!41441 r!14126) (regTwo!41441 r!14126) s!9605))))

(declare-fun e!4544285 () Bool)

(assert (=> d!2325524 e!4544285))

(declare-fun res!3062382 () Bool)

(assert (=> d!2325524 (=> (not res!3062382) (not e!4544285))))

(assert (=> d!2325524 (= res!3062382 (validRegex!10882 (regOne!41441 r!14126)))))

(assert (=> d!2325524 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!111 (regOne!41441 r!14126) (regTwo!41441 r!14126) s!9605) lt!2660957)))

(declare-fun b!7645591 () Bool)

(assert (=> b!7645591 (= e!4544285 (validRegex!10882 (regTwo!41441 r!14126)))))

(assert (= (and d!2325524 res!3062382) b!7645591))

(assert (=> d!2325524 m!8164392))

(declare-fun m!8164480 () Bool)

(assert (=> d!2325524 m!8164480))

(assert (=> d!2325524 m!8164326))

(assert (=> b!7645591 m!8164360))

(assert (=> b!7645186 d!2325524))

(assert (=> b!7645186 d!2325498))

(declare-fun b!7645592 () Bool)

(declare-fun res!3062385 () Bool)

(declare-fun e!4544288 () Bool)

(assert (=> b!7645592 (=> res!3062385 e!4544288)))

(assert (=> b!7645592 (= res!3062385 (not (is-Concat!29309 r!14126)))))

(declare-fun e!4544289 () Bool)

(assert (=> b!7645592 (= e!4544289 e!4544288)))

(declare-fun b!7645593 () Bool)

(declare-fun e!4544291 () Bool)

(assert (=> b!7645593 (= e!4544288 e!4544291)))

(declare-fun res!3062383 () Bool)

(assert (=> b!7645593 (=> (not res!3062383) (not e!4544291))))

(declare-fun call!701904 () Bool)

(assert (=> b!7645593 (= res!3062383 call!701904)))

(declare-fun b!7645594 () Bool)

(declare-fun e!4544286 () Bool)

(declare-fun e!4544292 () Bool)

(assert (=> b!7645594 (= e!4544286 e!4544292)))

(declare-fun res!3062384 () Bool)

(assert (=> b!7645594 (= res!3062384 (not (nullable!8965 (reg!20793 r!14126))))))

(assert (=> b!7645594 (=> (not res!3062384) (not e!4544292))))

(declare-fun b!7645595 () Bool)

(declare-fun e!4544287 () Bool)

(assert (=> b!7645595 (= e!4544287 e!4544286)))

(declare-fun c!1408267 () Bool)

(assert (=> b!7645595 (= c!1408267 (is-Star!20464 r!14126))))

(declare-fun bm!701899 () Bool)

(declare-fun call!701905 () Bool)

(declare-fun call!701906 () Bool)

(assert (=> bm!701899 (= call!701905 call!701906)))

(declare-fun b!7645596 () Bool)

(declare-fun res!3062386 () Bool)

(declare-fun e!4544290 () Bool)

(assert (=> b!7645596 (=> (not res!3062386) (not e!4544290))))

(assert (=> b!7645596 (= res!3062386 call!701904)))

(assert (=> b!7645596 (= e!4544289 e!4544290)))

(declare-fun b!7645597 () Bool)

(assert (=> b!7645597 (= e!4544292 call!701906)))

(declare-fun b!7645598 () Bool)

(assert (=> b!7645598 (= e!4544290 call!701905)))

(declare-fun bm!701900 () Bool)

(declare-fun c!1408268 () Bool)

(assert (=> bm!701900 (= call!701906 (validRegex!10882 (ite c!1408267 (reg!20793 r!14126) (ite c!1408268 (regTwo!41441 r!14126) (regTwo!41440 r!14126)))))))

(declare-fun b!7645599 () Bool)

(assert (=> b!7645599 (= e!4544286 e!4544289)))

(assert (=> b!7645599 (= c!1408268 (is-Union!20464 r!14126))))

(declare-fun b!7645600 () Bool)

(assert (=> b!7645600 (= e!4544291 call!701905)))

(declare-fun bm!701901 () Bool)

(assert (=> bm!701901 (= call!701904 (validRegex!10882 (ite c!1408268 (regOne!41441 r!14126) (regOne!41440 r!14126))))))

(declare-fun d!2325526 () Bool)

(declare-fun res!3062387 () Bool)

(assert (=> d!2325526 (=> res!3062387 e!4544287)))

(assert (=> d!2325526 (= res!3062387 (is-ElementMatch!20464 r!14126))))

(assert (=> d!2325526 (= (validRegex!10882 r!14126) e!4544287)))

(assert (= (and d!2325526 (not res!3062387)) b!7645595))

(assert (= (and b!7645595 c!1408267) b!7645594))

(assert (= (and b!7645595 (not c!1408267)) b!7645599))

(assert (= (and b!7645594 res!3062384) b!7645597))

(assert (= (and b!7645599 c!1408268) b!7645596))

(assert (= (and b!7645599 (not c!1408268)) b!7645592))

(assert (= (and b!7645596 res!3062386) b!7645598))

(assert (= (and b!7645592 (not res!3062385)) b!7645593))

(assert (= (and b!7645593 res!3062383) b!7645600))

(assert (= (or b!7645596 b!7645593) bm!701901))

(assert (= (or b!7645598 b!7645600) bm!701899))

(assert (= (or b!7645597 bm!701899) bm!701900))

(declare-fun m!8164482 () Bool)

(assert (=> b!7645594 m!8164482))

(declare-fun m!8164484 () Bool)

(assert (=> bm!701900 m!8164484))

(declare-fun m!8164486 () Bool)

(assert (=> bm!701901 m!8164486))

(assert (=> start!735754 d!2325526))

(assert (=> b!7645192 d!2325498))

(declare-fun b!7645605 () Bool)

(declare-fun e!4544295 () Bool)

(declare-fun tp!2231712 () Bool)

(assert (=> b!7645605 (= e!4544295 (and tp_is_empty!51283 tp!2231712))))

(assert (=> b!7645189 (= tp!2231687 e!4544295)))

(assert (= (and b!7645189 (is-Cons!73191 (t!388050 s!9605))) b!7645605))

(declare-fun b!7645628 () Bool)

(declare-fun e!4544305 () Bool)

(declare-fun tp!2231725 () Bool)

(declare-fun tp!2231726 () Bool)

(assert (=> b!7645628 (= e!4544305 (and tp!2231725 tp!2231726))))

(declare-fun b!7645626 () Bool)

(declare-fun tp!2231727 () Bool)

(declare-fun tp!2231723 () Bool)

(assert (=> b!7645626 (= e!4544305 (and tp!2231727 tp!2231723))))

(declare-fun b!7645627 () Bool)

(declare-fun tp!2231724 () Bool)

(assert (=> b!7645627 (= e!4544305 tp!2231724)))

(assert (=> b!7645194 (= tp!2231690 e!4544305)))

(declare-fun b!7645625 () Bool)

(assert (=> b!7645625 (= e!4544305 tp_is_empty!51283)))

(assert (= (and b!7645194 (is-ElementMatch!20464 (reg!20793 r!14126))) b!7645625))

(assert (= (and b!7645194 (is-Concat!29309 (reg!20793 r!14126))) b!7645626))

(assert (= (and b!7645194 (is-Star!20464 (reg!20793 r!14126))) b!7645627))

(assert (= (and b!7645194 (is-Union!20464 (reg!20793 r!14126))) b!7645628))

(declare-fun b!7645632 () Bool)

(declare-fun e!4544306 () Bool)

(declare-fun tp!2231730 () Bool)

(declare-fun tp!2231731 () Bool)

(assert (=> b!7645632 (= e!4544306 (and tp!2231730 tp!2231731))))

(declare-fun b!7645630 () Bool)

(declare-fun tp!2231732 () Bool)

(declare-fun tp!2231728 () Bool)

(assert (=> b!7645630 (= e!4544306 (and tp!2231732 tp!2231728))))

(declare-fun b!7645631 () Bool)

(declare-fun tp!2231729 () Bool)

(assert (=> b!7645631 (= e!4544306 tp!2231729)))

(assert (=> b!7645188 (= tp!2231689 e!4544306)))

(declare-fun b!7645629 () Bool)

(assert (=> b!7645629 (= e!4544306 tp_is_empty!51283)))

(assert (= (and b!7645188 (is-ElementMatch!20464 (regOne!41441 r!14126))) b!7645629))

(assert (= (and b!7645188 (is-Concat!29309 (regOne!41441 r!14126))) b!7645630))

(assert (= (and b!7645188 (is-Star!20464 (regOne!41441 r!14126))) b!7645631))

(assert (= (and b!7645188 (is-Union!20464 (regOne!41441 r!14126))) b!7645632))

(declare-fun b!7645636 () Bool)

(declare-fun e!4544307 () Bool)

(declare-fun tp!2231735 () Bool)

(declare-fun tp!2231736 () Bool)

(assert (=> b!7645636 (= e!4544307 (and tp!2231735 tp!2231736))))

(declare-fun b!7645634 () Bool)

(declare-fun tp!2231737 () Bool)

(declare-fun tp!2231733 () Bool)

(assert (=> b!7645634 (= e!4544307 (and tp!2231737 tp!2231733))))

(declare-fun b!7645635 () Bool)

(declare-fun tp!2231734 () Bool)

(assert (=> b!7645635 (= e!4544307 tp!2231734)))

(assert (=> b!7645188 (= tp!2231688 e!4544307)))

(declare-fun b!7645633 () Bool)

(assert (=> b!7645633 (= e!4544307 tp_is_empty!51283)))

(assert (= (and b!7645188 (is-ElementMatch!20464 (regTwo!41441 r!14126))) b!7645633))

(assert (= (and b!7645188 (is-Concat!29309 (regTwo!41441 r!14126))) b!7645634))

(assert (= (and b!7645188 (is-Star!20464 (regTwo!41441 r!14126))) b!7645635))

(assert (= (and b!7645188 (is-Union!20464 (regTwo!41441 r!14126))) b!7645636))

(declare-fun b!7645649 () Bool)

(declare-fun e!4544315 () Bool)

(declare-fun tp!2231740 () Bool)

(declare-fun tp!2231741 () Bool)

(assert (=> b!7645649 (= e!4544315 (and tp!2231740 tp!2231741))))

(declare-fun b!7645647 () Bool)

(declare-fun tp!2231742 () Bool)

(declare-fun tp!2231738 () Bool)

(assert (=> b!7645647 (= e!4544315 (and tp!2231742 tp!2231738))))

(declare-fun b!7645648 () Bool)

(declare-fun tp!2231739 () Bool)

(assert (=> b!7645648 (= e!4544315 tp!2231739)))

(assert (=> b!7645187 (= tp!2231686 e!4544315)))

(declare-fun b!7645646 () Bool)

(assert (=> b!7645646 (= e!4544315 tp_is_empty!51283)))

(assert (= (and b!7645187 (is-ElementMatch!20464 (regOne!41440 r!14126))) b!7645646))

(assert (= (and b!7645187 (is-Concat!29309 (regOne!41440 r!14126))) b!7645647))

(assert (= (and b!7645187 (is-Star!20464 (regOne!41440 r!14126))) b!7645648))

(assert (= (and b!7645187 (is-Union!20464 (regOne!41440 r!14126))) b!7645649))

(declare-fun b!7645653 () Bool)

(declare-fun e!4544316 () Bool)

(declare-fun tp!2231745 () Bool)

(declare-fun tp!2231746 () Bool)

(assert (=> b!7645653 (= e!4544316 (and tp!2231745 tp!2231746))))

(declare-fun b!7645651 () Bool)

(declare-fun tp!2231747 () Bool)

(declare-fun tp!2231743 () Bool)

(assert (=> b!7645651 (= e!4544316 (and tp!2231747 tp!2231743))))

(declare-fun b!7645652 () Bool)

(declare-fun tp!2231744 () Bool)

(assert (=> b!7645652 (= e!4544316 tp!2231744)))

(assert (=> b!7645187 (= tp!2231691 e!4544316)))

(declare-fun b!7645650 () Bool)

(assert (=> b!7645650 (= e!4544316 tp_is_empty!51283)))

(assert (= (and b!7645187 (is-ElementMatch!20464 (regTwo!41440 r!14126))) b!7645650))

(assert (= (and b!7645187 (is-Concat!29309 (regTwo!41440 r!14126))) b!7645651))

(assert (= (and b!7645187 (is-Star!20464 (regTwo!41440 r!14126))) b!7645652))

(assert (= (and b!7645187 (is-Union!20464 (regTwo!41440 r!14126))) b!7645653))

(push 1)

(assert (not b!7645635))

(assert (not b!7645538))

(assert (not b!7645652))

(assert (not bm!701871))

(assert (not bm!701891))

(assert (not bm!701890))

(assert (not d!2325492))

(assert (not b!7645332))

(assert (not b!7645630))

(assert (not bm!701898))

(assert (not bm!701879))

(assert (not bm!701872))

(assert (not d!2325498))

(assert (not d!2325488))

(assert (not b!7645566))

(assert (not bm!701880))

(assert (not b!7645371))

(assert (not b!7645627))

(assert (not b!7645628))

(assert (not b!7645651))

(assert (not bm!701867))

(assert (not b!7645653))

(assert (not b!7645378))

(assert (not b!7645248))

(assert (not bm!701900))

(assert (not bm!701873))

(assert (not bm!701874))

(assert (not b!7645632))

(assert (not b!7645322))

(assert (not b!7645564))

(assert (not b!7645649))

(assert (not b!7645587))

(assert (not b!7645329))

(assert (not b!7645605))

(assert (not bm!701823))

(assert (not bm!701875))

(assert (not b!7645648))

(assert (not b!7645573))

(assert (not b!7645647))

(assert (not b!7645576))

(assert (not bm!701901))

(assert (not d!2325524))

(assert (not b!7645379))

(assert (not b!7645327))

(assert (not b!7645594))

(assert (not d!2325520))

(assert (not bm!701868))

(assert (not b!7645631))

(assert (not b!7645571))

(assert (not b!7645580))

(assert (not b!7645634))

(assert (not b!7645586))

(assert (not d!2325522))

(assert (not b!7645514))

(assert (not b!7645590))

(assert (not d!2325496))

(assert (not b!7645320))

(assert (not bm!701889))

(assert (not bm!701832))

(assert (not b!7645636))

(assert (not bm!701878))

(assert (not b!7645380))

(assert (not b!7645572))

(assert (not b!7645359))

(assert (not b!7645626))

(assert (not b!7645373))

(assert (not b!7645578))

(assert (not b!7645591))

(assert (not b!7645328))

(assert tp_is_empty!51283)

(assert (not b!7645383))

(assert (not b!7645585))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

