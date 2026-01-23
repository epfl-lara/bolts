; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85356 () Bool)

(assert start!85356)

(declare-fun b!958263 () Bool)

(assert (=> b!958263 true))

(assert (=> b!958263 true))

(assert (=> b!958263 true))

(declare-fun lambda!33218 () Int)

(declare-fun lambda!33217 () Int)

(assert (=> b!958263 (not (= lambda!33218 lambda!33217))))

(assert (=> b!958263 true))

(assert (=> b!958263 true))

(assert (=> b!958263 true))

(declare-fun b!958256 () Bool)

(declare-fun e!619315 () Bool)

(declare-datatypes ((C!5870 0))(
  ( (C!5871 (val!3183 Int)) )
))
(declare-datatypes ((Regex!2650 0))(
  ( (ElementMatch!2650 (c!156069 C!5870)) (Concat!4483 (regOne!5812 Regex!2650) (regTwo!5812 Regex!2650)) (EmptyExpr!2650) (Star!2650 (reg!2979 Regex!2650)) (EmptyLang!2650) (Union!2650 (regOne!5813 Regex!2650) (regTwo!5813 Regex!2650)) )
))
(declare-fun r!15766 () Regex!2650)

(declare-fun nullable!795 (Regex!2650) Bool)

(assert (=> b!958256 (= e!619315 (nullable!795 (reg!2979 r!15766)))))

(declare-datatypes ((List!9880 0))(
  ( (Nil!9864) (Cons!9864 (h!15265 C!5870) (t!100926 List!9880)) )
))
(declare-datatypes ((tuple2!11186 0))(
  ( (tuple2!11187 (_1!6419 List!9880) (_2!6419 List!9880)) )
))
(declare-fun lt!345938 () tuple2!11186)

(declare-fun matchRSpec!451 (Regex!2650 List!9880) Bool)

(assert (=> b!958256 (matchRSpec!451 (reg!2979 r!15766) (_1!6419 lt!345938))))

(declare-datatypes ((Unit!14943 0))(
  ( (Unit!14944) )
))
(declare-fun lt!345942 () Unit!14943)

(declare-fun mainMatchTheorem!451 (Regex!2650 List!9880) Unit!14943)

(assert (=> b!958256 (= lt!345942 (mainMatchTheorem!451 (reg!2979 r!15766) (_1!6419 lt!345938)))))

(declare-fun b!958258 () Bool)

(declare-fun e!619312 () Bool)

(declare-fun tp_is_empty!4943 () Bool)

(declare-fun tp!294869 () Bool)

(assert (=> b!958258 (= e!619312 (and tp_is_empty!4943 tp!294869))))

(declare-fun b!958259 () Bool)

(declare-fun e!619317 () Bool)

(assert (=> b!958259 (= e!619317 e!619315)))

(declare-fun res!435462 () Bool)

(assert (=> b!958259 (=> res!435462 e!619315)))

(declare-fun lt!345948 () Int)

(declare-fun lt!345950 () Int)

(declare-fun lt!345944 () Int)

(assert (=> b!958259 (= res!435462 (or (not (= (+ lt!345948 lt!345950) lt!345944)) (not (= lt!345948 0))))))

(declare-fun size!7922 (List!9880) Int)

(assert (=> b!958259 (= lt!345948 (size!7922 (_1!6419 lt!345938)))))

(declare-fun b!958260 () Bool)

(declare-fun e!619313 () Bool)

(assert (=> b!958260 (= e!619313 tp_is_empty!4943)))

(declare-fun b!958261 () Bool)

(declare-fun e!619318 () Bool)

(declare-fun e!619319 () Bool)

(assert (=> b!958261 (= e!619318 e!619319)))

(declare-fun res!435469 () Bool)

(assert (=> b!958261 (=> res!435469 e!619319)))

(declare-fun matchR!1188 (Regex!2650 List!9880) Bool)

(assert (=> b!958261 (= res!435469 (not (matchR!1188 (reg!2979 r!15766) (_1!6419 lt!345938))))))

(declare-datatypes ((Option!2235 0))(
  ( (None!2234) (Some!2234 (v!19651 tuple2!11186)) )
))
(declare-fun lt!345939 () Option!2235)

(declare-fun get!3349 (Option!2235) tuple2!11186)

(assert (=> b!958261 (= lt!345938 (get!3349 lt!345939))))

(declare-fun b!958262 () Bool)

(declare-fun res!435468 () Bool)

(assert (=> b!958262 (=> res!435468 e!619319)))

(declare-fun lt!345940 () Regex!2650)

(assert (=> b!958262 (= res!435468 (not (matchR!1188 lt!345940 (_2!6419 lt!345938))))))

(declare-fun e!619314 () Bool)

(assert (=> b!958263 (= e!619314 e!619318)))

(declare-fun res!435463 () Bool)

(assert (=> b!958263 (=> res!435463 e!619318)))

(declare-fun s!10566 () List!9880)

(declare-fun isEmpty!6148 (List!9880) Bool)

(assert (=> b!958263 (= res!435463 (isEmpty!6148 s!10566))))

(declare-fun Exists!397 (Int) Bool)

(assert (=> b!958263 (= (Exists!397 lambda!33217) (Exists!397 lambda!33218))))

(declare-fun lt!345949 () Unit!14943)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!125 (Regex!2650 List!9880) Unit!14943)

(assert (=> b!958263 (= lt!345949 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!125 (reg!2979 r!15766) s!10566))))

(declare-fun lt!345947 () Bool)

(assert (=> b!958263 (= lt!345947 (Exists!397 lambda!33217))))

(declare-fun isDefined!1877 (Option!2235) Bool)

(assert (=> b!958263 (= lt!345947 (isDefined!1877 lt!345939))))

(declare-fun findConcatSeparation!341 (Regex!2650 Regex!2650 List!9880 List!9880 List!9880) Option!2235)

(assert (=> b!958263 (= lt!345939 (findConcatSeparation!341 (reg!2979 r!15766) lt!345940 Nil!9864 s!10566 s!10566))))

(declare-fun lt!345945 () Unit!14943)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!341 (Regex!2650 Regex!2650 List!9880) Unit!14943)

(assert (=> b!958263 (= lt!345945 (lemmaFindConcatSeparationEquivalentToExists!341 (reg!2979 r!15766) lt!345940 s!10566))))

(assert (=> b!958263 (= lt!345940 (Star!2650 (reg!2979 r!15766)))))

(declare-fun b!958257 () Bool)

(declare-fun res!435464 () Bool)

(assert (=> b!958257 (=> res!435464 e!619318)))

(assert (=> b!958257 (= res!435464 (not lt!345947))))

(declare-fun res!435465 () Bool)

(declare-fun e!619316 () Bool)

(assert (=> start!85356 (=> (not res!435465) (not e!619316))))

(declare-fun validRegex!1119 (Regex!2650) Bool)

(assert (=> start!85356 (= res!435465 (validRegex!1119 r!15766))))

(assert (=> start!85356 e!619316))

(assert (=> start!85356 e!619313))

(assert (=> start!85356 e!619312))

(declare-fun b!958264 () Bool)

(assert (=> b!958264 (= e!619316 (not e!619314))))

(declare-fun res!435461 () Bool)

(assert (=> b!958264 (=> res!435461 e!619314)))

(declare-fun lt!345943 () Bool)

(assert (=> b!958264 (= res!435461 (or (not lt!345943) (and (is-Concat!4483 r!15766) (is-EmptyExpr!2650 (regOne!5812 r!15766))) (and (is-Concat!4483 r!15766) (is-EmptyExpr!2650 (regTwo!5812 r!15766))) (is-Concat!4483 r!15766) (is-Union!2650 r!15766) (not (is-Star!2650 r!15766))))))

(assert (=> b!958264 (= lt!345943 (matchRSpec!451 r!15766 s!10566))))

(assert (=> b!958264 (= lt!345943 (matchR!1188 r!15766 s!10566))))

(declare-fun lt!345941 () Unit!14943)

(assert (=> b!958264 (= lt!345941 (mainMatchTheorem!451 r!15766 s!10566))))

(declare-fun b!958265 () Bool)

(declare-fun tp!294871 () Bool)

(declare-fun tp!294873 () Bool)

(assert (=> b!958265 (= e!619313 (and tp!294871 tp!294873))))

(declare-fun b!958266 () Bool)

(declare-fun res!435467 () Bool)

(assert (=> b!958266 (=> res!435467 e!619315)))

(assert (=> b!958266 (= res!435467 (not (isEmpty!6148 (_1!6419 lt!345938))))))

(declare-fun b!958267 () Bool)

(declare-fun tp!294870 () Bool)

(declare-fun tp!294872 () Bool)

(assert (=> b!958267 (= e!619313 (and tp!294870 tp!294872))))

(declare-fun b!958268 () Bool)

(assert (=> b!958268 (= e!619319 e!619317)))

(declare-fun res!435470 () Bool)

(assert (=> b!958268 (=> res!435470 e!619317)))

(assert (=> b!958268 (= res!435470 (not (= lt!345950 lt!345944)))))

(assert (=> b!958268 (= lt!345944 (size!7922 s!10566))))

(assert (=> b!958268 (= lt!345950 (size!7922 (_2!6419 lt!345938)))))

(declare-fun removeUselessConcat!301 (Regex!2650) Regex!2650)

(assert (=> b!958268 (matchR!1188 (removeUselessConcat!301 (reg!2979 r!15766)) (_1!6419 lt!345938))))

(declare-fun lt!345946 () Unit!14943)

(declare-fun lemmaRemoveUselessConcatSound!161 (Regex!2650 List!9880) Unit!14943)

(assert (=> b!958268 (= lt!345946 (lemmaRemoveUselessConcatSound!161 (reg!2979 r!15766) (_1!6419 lt!345938)))))

(declare-fun b!958269 () Bool)

(declare-fun res!435466 () Bool)

(assert (=> b!958269 (=> res!435466 e!619317)))

(declare-fun ++!2653 (List!9880 List!9880) List!9880)

(assert (=> b!958269 (= res!435466 (not (= (++!2653 (_1!6419 lt!345938) (_2!6419 lt!345938)) s!10566)))))

(declare-fun b!958270 () Bool)

(declare-fun tp!294874 () Bool)

(assert (=> b!958270 (= e!619313 tp!294874)))

(assert (= (and start!85356 res!435465) b!958264))

(assert (= (and b!958264 (not res!435461)) b!958263))

(assert (= (and b!958263 (not res!435463)) b!958257))

(assert (= (and b!958257 (not res!435464)) b!958261))

(assert (= (and b!958261 (not res!435469)) b!958262))

(assert (= (and b!958262 (not res!435468)) b!958268))

(assert (= (and b!958268 (not res!435470)) b!958269))

(assert (= (and b!958269 (not res!435466)) b!958259))

(assert (= (and b!958259 (not res!435462)) b!958266))

(assert (= (and b!958266 (not res!435467)) b!958256))

(assert (= (and start!85356 (is-ElementMatch!2650 r!15766)) b!958260))

(assert (= (and start!85356 (is-Concat!4483 r!15766)) b!958265))

(assert (= (and start!85356 (is-Star!2650 r!15766)) b!958270))

(assert (= (and start!85356 (is-Union!2650 r!15766)) b!958267))

(assert (= (and start!85356 (is-Cons!9864 s!10566)) b!958258))

(declare-fun m!1167677 () Bool)

(assert (=> b!958261 m!1167677))

(declare-fun m!1167679 () Bool)

(assert (=> b!958261 m!1167679))

(declare-fun m!1167681 () Bool)

(assert (=> b!958256 m!1167681))

(declare-fun m!1167683 () Bool)

(assert (=> b!958256 m!1167683))

(declare-fun m!1167685 () Bool)

(assert (=> b!958256 m!1167685))

(declare-fun m!1167687 () Bool)

(assert (=> b!958268 m!1167687))

(assert (=> b!958268 m!1167687))

(declare-fun m!1167689 () Bool)

(assert (=> b!958268 m!1167689))

(declare-fun m!1167691 () Bool)

(assert (=> b!958268 m!1167691))

(declare-fun m!1167693 () Bool)

(assert (=> b!958268 m!1167693))

(declare-fun m!1167695 () Bool)

(assert (=> b!958268 m!1167695))

(declare-fun m!1167697 () Bool)

(assert (=> start!85356 m!1167697))

(declare-fun m!1167699 () Bool)

(assert (=> b!958259 m!1167699))

(declare-fun m!1167701 () Bool)

(assert (=> b!958269 m!1167701))

(declare-fun m!1167703 () Bool)

(assert (=> b!958264 m!1167703))

(declare-fun m!1167705 () Bool)

(assert (=> b!958264 m!1167705))

(declare-fun m!1167707 () Bool)

(assert (=> b!958264 m!1167707))

(declare-fun m!1167709 () Bool)

(assert (=> b!958263 m!1167709))

(declare-fun m!1167711 () Bool)

(assert (=> b!958263 m!1167711))

(declare-fun m!1167713 () Bool)

(assert (=> b!958263 m!1167713))

(declare-fun m!1167715 () Bool)

(assert (=> b!958263 m!1167715))

(declare-fun m!1167717 () Bool)

(assert (=> b!958263 m!1167717))

(declare-fun m!1167719 () Bool)

(assert (=> b!958263 m!1167719))

(assert (=> b!958263 m!1167717))

(declare-fun m!1167721 () Bool)

(assert (=> b!958263 m!1167721))

(declare-fun m!1167723 () Bool)

(assert (=> b!958262 m!1167723))

(declare-fun m!1167725 () Bool)

(assert (=> b!958266 m!1167725))

(push 1)

(assert (not b!958258))

(assert (not b!958266))

(assert (not b!958264))

(assert (not b!958265))

(assert (not b!958268))

(assert (not b!958262))

(assert (not start!85356))

(assert (not b!958267))

(assert (not b!958256))

(assert tp_is_empty!4943)

(assert (not b!958270))

(assert (not b!958269))

(assert (not b!958263))

(assert (not b!958259))

(assert (not b!958261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!958349 () Bool)

(declare-fun e!619355 () Bool)

(declare-fun lt!345992 () List!9880)

(assert (=> b!958349 (= e!619355 (or (not (= (_2!6419 lt!345938) Nil!9864)) (= lt!345992 (_1!6419 lt!345938))))))

(declare-fun b!958346 () Bool)

(declare-fun e!619354 () List!9880)

(assert (=> b!958346 (= e!619354 (_2!6419 lt!345938))))

(declare-fun b!958348 () Bool)

(declare-fun res!435519 () Bool)

(assert (=> b!958348 (=> (not res!435519) (not e!619355))))

(assert (=> b!958348 (= res!435519 (= (size!7922 lt!345992) (+ (size!7922 (_1!6419 lt!345938)) (size!7922 (_2!6419 lt!345938)))))))

(declare-fun b!958347 () Bool)

(assert (=> b!958347 (= e!619354 (Cons!9864 (h!15265 (_1!6419 lt!345938)) (++!2653 (t!100926 (_1!6419 lt!345938)) (_2!6419 lt!345938))))))

(declare-fun d!284845 () Bool)

(assert (=> d!284845 e!619355))

(declare-fun res!435520 () Bool)

(assert (=> d!284845 (=> (not res!435520) (not e!619355))))

(declare-fun content!1406 (List!9880) (Set C!5870))

(assert (=> d!284845 (= res!435520 (= (content!1406 lt!345992) (set.union (content!1406 (_1!6419 lt!345938)) (content!1406 (_2!6419 lt!345938)))))))

(assert (=> d!284845 (= lt!345992 e!619354)))

(declare-fun c!156073 () Bool)

(assert (=> d!284845 (= c!156073 (is-Nil!9864 (_1!6419 lt!345938)))))

(assert (=> d!284845 (= (++!2653 (_1!6419 lt!345938) (_2!6419 lt!345938)) lt!345992)))

(assert (= (and d!284845 c!156073) b!958346))

(assert (= (and d!284845 (not c!156073)) b!958347))

(assert (= (and d!284845 res!435520) b!958348))

(assert (= (and b!958348 res!435519) b!958349))

(declare-fun m!1167777 () Bool)

(assert (=> b!958348 m!1167777))

(assert (=> b!958348 m!1167699))

(assert (=> b!958348 m!1167693))

(declare-fun m!1167779 () Bool)

(assert (=> b!958347 m!1167779))

(declare-fun m!1167781 () Bool)

(assert (=> d!284845 m!1167781))

(declare-fun m!1167783 () Bool)

(assert (=> d!284845 m!1167783))

(declare-fun m!1167785 () Bool)

(assert (=> d!284845 m!1167785))

(assert (=> b!958269 d!284845))

(declare-fun d!284847 () Bool)

(declare-fun lt!345995 () Int)

(assert (=> d!284847 (>= lt!345995 0)))

(declare-fun e!619358 () Int)

(assert (=> d!284847 (= lt!345995 e!619358)))

(declare-fun c!156076 () Bool)

(assert (=> d!284847 (= c!156076 (is-Nil!9864 (_1!6419 lt!345938)))))

(assert (=> d!284847 (= (size!7922 (_1!6419 lt!345938)) lt!345995)))

(declare-fun b!958354 () Bool)

(assert (=> b!958354 (= e!619358 0)))

(declare-fun b!958355 () Bool)

(assert (=> b!958355 (= e!619358 (+ 1 (size!7922 (t!100926 (_1!6419 lt!345938)))))))

(assert (= (and d!284847 c!156076) b!958354))

(assert (= (and d!284847 (not c!156076)) b!958355))

(declare-fun m!1167787 () Bool)

(assert (=> b!958355 m!1167787))

(assert (=> b!958259 d!284847))

(declare-fun bs!240623 () Bool)

(declare-fun b!958394 () Bool)

(assert (= bs!240623 (and b!958394 b!958263)))

(declare-fun lambda!33234 () Int)

(assert (=> bs!240623 (not (= lambda!33234 lambda!33217))))

(assert (=> bs!240623 (= (= r!15766 lt!345940) (= lambda!33234 lambda!33218))))

(assert (=> b!958394 true))

(assert (=> b!958394 true))

(declare-fun bs!240625 () Bool)

(declare-fun b!958401 () Bool)

(assert (= bs!240625 (and b!958401 b!958263)))

(declare-fun lambda!33235 () Int)

(assert (=> bs!240625 (not (= lambda!33235 lambda!33217))))

(assert (=> bs!240625 (not (= lambda!33235 lambda!33218))))

(declare-fun bs!240626 () Bool)

(assert (= bs!240626 (and b!958401 b!958394)))

(assert (=> bs!240626 (not (= lambda!33235 lambda!33234))))

(assert (=> b!958401 true))

(assert (=> b!958401 true))

(declare-fun b!958392 () Bool)

(declare-fun res!435541 () Bool)

(declare-fun e!619382 () Bool)

(assert (=> b!958392 (=> res!435541 e!619382)))

(declare-fun call!60322 () Bool)

(assert (=> b!958392 (= res!435541 call!60322)))

(declare-fun e!619384 () Bool)

(assert (=> b!958392 (= e!619384 e!619382)))

(declare-fun b!958393 () Bool)

(declare-fun e!619380 () Bool)

(declare-fun e!619385 () Bool)

(assert (=> b!958393 (= e!619380 e!619385)))

(declare-fun res!435543 () Bool)

(assert (=> b!958393 (= res!435543 (not (is-EmptyLang!2650 r!15766)))))

(assert (=> b!958393 (=> (not res!435543) (not e!619385))))

(declare-fun call!60323 () Bool)

(assert (=> b!958394 (= e!619382 call!60323)))

(declare-fun b!958395 () Bool)

(declare-fun e!619379 () Bool)

(assert (=> b!958395 (= e!619379 (= s!10566 (Cons!9864 (c!156069 r!15766) Nil!9864)))))

(declare-fun b!958396 () Bool)

(declare-fun c!156086 () Bool)

(assert (=> b!958396 (= c!156086 (is-ElementMatch!2650 r!15766))))

(assert (=> b!958396 (= e!619385 e!619379)))

(declare-fun bm!60317 () Bool)

(assert (=> bm!60317 (= call!60322 (isEmpty!6148 s!10566))))

(declare-fun b!958397 () Bool)

(declare-fun c!156085 () Bool)

(assert (=> b!958397 (= c!156085 (is-Union!2650 r!15766))))

(declare-fun e!619381 () Bool)

(assert (=> b!958397 (= e!619379 e!619381)))

(declare-fun b!958398 () Bool)

(assert (=> b!958398 (= e!619380 call!60322)))

(declare-fun d!284849 () Bool)

(declare-fun c!156088 () Bool)

(assert (=> d!284849 (= c!156088 (is-EmptyExpr!2650 r!15766))))

(assert (=> d!284849 (= (matchRSpec!451 r!15766 s!10566) e!619380)))

(declare-fun b!958399 () Bool)

(declare-fun e!619383 () Bool)

(assert (=> b!958399 (= e!619381 e!619383)))

(declare-fun res!435542 () Bool)

(assert (=> b!958399 (= res!435542 (matchRSpec!451 (regOne!5813 r!15766) s!10566))))

(assert (=> b!958399 (=> res!435542 e!619383)))

(declare-fun b!958400 () Bool)

(assert (=> b!958400 (= e!619383 (matchRSpec!451 (regTwo!5813 r!15766) s!10566))))

(assert (=> b!958401 (= e!619384 call!60323)))

(declare-fun b!958402 () Bool)

(assert (=> b!958402 (= e!619381 e!619384)))

(declare-fun c!156087 () Bool)

(assert (=> b!958402 (= c!156087 (is-Star!2650 r!15766))))

(declare-fun bm!60318 () Bool)

(assert (=> bm!60318 (= call!60323 (Exists!397 (ite c!156087 lambda!33234 lambda!33235)))))

(assert (= (and d!284849 c!156088) b!958398))

(assert (= (and d!284849 (not c!156088)) b!958393))

(assert (= (and b!958393 res!435543) b!958396))

(assert (= (and b!958396 c!156086) b!958395))

(assert (= (and b!958396 (not c!156086)) b!958397))

(assert (= (and b!958397 c!156085) b!958399))

(assert (= (and b!958397 (not c!156085)) b!958402))

(assert (= (and b!958399 (not res!435542)) b!958400))

(assert (= (and b!958402 c!156087) b!958392))

(assert (= (and b!958402 (not c!156087)) b!958401))

(assert (= (and b!958392 (not res!435541)) b!958394))

(assert (= (or b!958394 b!958401) bm!60318))

(assert (= (or b!958398 b!958392) bm!60317))

(assert (=> bm!60317 m!1167721))

(declare-fun m!1167797 () Bool)

(assert (=> b!958399 m!1167797))

(declare-fun m!1167799 () Bool)

(assert (=> b!958400 m!1167799))

(declare-fun m!1167801 () Bool)

(assert (=> bm!60318 m!1167801))

(assert (=> b!958264 d!284849))

(declare-fun b!958431 () Bool)

(declare-fun res!435562 () Bool)

(declare-fun e!619406 () Bool)

(assert (=> b!958431 (=> (not res!435562) (not e!619406))))

(declare-fun tail!1319 (List!9880) List!9880)

(assert (=> b!958431 (= res!435562 (isEmpty!6148 (tail!1319 s!10566)))))

(declare-fun b!958432 () Bool)

(declare-fun res!435567 () Bool)

(declare-fun e!619403 () Bool)

(assert (=> b!958432 (=> res!435567 e!619403)))

(assert (=> b!958432 (= res!435567 (not (is-ElementMatch!2650 r!15766)))))

(declare-fun e!619402 () Bool)

(assert (=> b!958432 (= e!619402 e!619403)))

(declare-fun bm!60321 () Bool)

(declare-fun call!60326 () Bool)

(assert (=> bm!60321 (= call!60326 (isEmpty!6148 s!10566))))

(declare-fun b!958433 () Bool)

(declare-fun lt!346001 () Bool)

(assert (=> b!958433 (= e!619402 (not lt!346001))))

(declare-fun d!284853 () Bool)

(declare-fun e!619404 () Bool)

(assert (=> d!284853 e!619404))

(declare-fun c!156097 () Bool)

(assert (=> d!284853 (= c!156097 (is-EmptyExpr!2650 r!15766))))

(declare-fun e!619401 () Bool)

(assert (=> d!284853 (= lt!346001 e!619401)))

(declare-fun c!156095 () Bool)

(assert (=> d!284853 (= c!156095 (isEmpty!6148 s!10566))))

(assert (=> d!284853 (validRegex!1119 r!15766)))

(assert (=> d!284853 (= (matchR!1188 r!15766 s!10566) lt!346001)))

(declare-fun b!958434 () Bool)

(declare-fun res!435565 () Bool)

(declare-fun e!619405 () Bool)

(assert (=> b!958434 (=> res!435565 e!619405)))

(assert (=> b!958434 (= res!435565 (not (isEmpty!6148 (tail!1319 s!10566))))))

(declare-fun b!958435 () Bool)

(declare-fun res!435563 () Bool)

(assert (=> b!958435 (=> res!435563 e!619403)))

(assert (=> b!958435 (= res!435563 e!619406)))

(declare-fun res!435560 () Bool)

(assert (=> b!958435 (=> (not res!435560) (not e!619406))))

(assert (=> b!958435 (= res!435560 lt!346001)))

(declare-fun b!958436 () Bool)

(assert (=> b!958436 (= e!619401 (nullable!795 r!15766))))

(declare-fun b!958437 () Bool)

(declare-fun head!1757 (List!9880) C!5870)

(assert (=> b!958437 (= e!619406 (= (head!1757 s!10566) (c!156069 r!15766)))))

(declare-fun b!958438 () Bool)

(declare-fun res!435564 () Bool)

(assert (=> b!958438 (=> (not res!435564) (not e!619406))))

(assert (=> b!958438 (= res!435564 (not call!60326))))

(declare-fun b!958439 () Bool)

(assert (=> b!958439 (= e!619404 e!619402)))

(declare-fun c!156096 () Bool)

(assert (=> b!958439 (= c!156096 (is-EmptyLang!2650 r!15766))))

(declare-fun b!958440 () Bool)

(declare-fun e!619400 () Bool)

(assert (=> b!958440 (= e!619400 e!619405)))

(declare-fun res!435566 () Bool)

(assert (=> b!958440 (=> res!435566 e!619405)))

(assert (=> b!958440 (= res!435566 call!60326)))

(declare-fun b!958441 () Bool)

(declare-fun derivativeStep!604 (Regex!2650 C!5870) Regex!2650)

(assert (=> b!958441 (= e!619401 (matchR!1188 (derivativeStep!604 r!15766 (head!1757 s!10566)) (tail!1319 s!10566)))))

(declare-fun b!958442 () Bool)

(assert (=> b!958442 (= e!619404 (= lt!346001 call!60326))))

(declare-fun b!958443 () Bool)

(assert (=> b!958443 (= e!619403 e!619400)))

(declare-fun res!435561 () Bool)

(assert (=> b!958443 (=> (not res!435561) (not e!619400))))

(assert (=> b!958443 (= res!435561 (not lt!346001))))

(declare-fun b!958444 () Bool)

(assert (=> b!958444 (= e!619405 (not (= (head!1757 s!10566) (c!156069 r!15766))))))

(assert (= (and d!284853 c!156095) b!958436))

(assert (= (and d!284853 (not c!156095)) b!958441))

(assert (= (and d!284853 c!156097) b!958442))

(assert (= (and d!284853 (not c!156097)) b!958439))

(assert (= (and b!958439 c!156096) b!958433))

(assert (= (and b!958439 (not c!156096)) b!958432))

(assert (= (and b!958432 (not res!435567)) b!958435))

(assert (= (and b!958435 res!435560) b!958438))

(assert (= (and b!958438 res!435564) b!958431))

(assert (= (and b!958431 res!435562) b!958437))

(assert (= (and b!958435 (not res!435563)) b!958443))

(assert (= (and b!958443 res!435561) b!958440))

(assert (= (and b!958440 (not res!435566)) b!958434))

(assert (= (and b!958434 (not res!435565)) b!958444))

(assert (= (or b!958442 b!958438 b!958440) bm!60321))

(assert (=> bm!60321 m!1167721))

(declare-fun m!1167803 () Bool)

(assert (=> b!958436 m!1167803))

(declare-fun m!1167805 () Bool)

(assert (=> b!958434 m!1167805))

(assert (=> b!958434 m!1167805))

(declare-fun m!1167807 () Bool)

(assert (=> b!958434 m!1167807))

(declare-fun m!1167809 () Bool)

(assert (=> b!958437 m!1167809))

(assert (=> b!958444 m!1167809))

(assert (=> b!958431 m!1167805))

(assert (=> b!958431 m!1167805))

(assert (=> b!958431 m!1167807))

(assert (=> b!958441 m!1167809))

(assert (=> b!958441 m!1167809))

(declare-fun m!1167811 () Bool)

(assert (=> b!958441 m!1167811))

(assert (=> b!958441 m!1167805))

(assert (=> b!958441 m!1167811))

(assert (=> b!958441 m!1167805))

(declare-fun m!1167813 () Bool)

(assert (=> b!958441 m!1167813))

(assert (=> d!284853 m!1167721))

(assert (=> d!284853 m!1167697))

(assert (=> b!958264 d!284853))

(declare-fun d!284855 () Bool)

(assert (=> d!284855 (= (matchR!1188 r!15766 s!10566) (matchRSpec!451 r!15766 s!10566))))

(declare-fun lt!346006 () Unit!14943)

(declare-fun choose!6016 (Regex!2650 List!9880) Unit!14943)

(assert (=> d!284855 (= lt!346006 (choose!6016 r!15766 s!10566))))

(assert (=> d!284855 (validRegex!1119 r!15766)))

(assert (=> d!284855 (= (mainMatchTheorem!451 r!15766 s!10566) lt!346006)))

(declare-fun bs!240627 () Bool)

(assert (= bs!240627 d!284855))

(assert (=> bs!240627 m!1167705))

(assert (=> bs!240627 m!1167703))

(declare-fun m!1167815 () Bool)

(assert (=> bs!240627 m!1167815))

(assert (=> bs!240627 m!1167697))

(assert (=> b!958264 d!284855))

(declare-fun b!958445 () Bool)

(declare-fun res!435570 () Bool)

(declare-fun e!619413 () Bool)

(assert (=> b!958445 (=> (not res!435570) (not e!619413))))

(assert (=> b!958445 (= res!435570 (isEmpty!6148 (tail!1319 (_2!6419 lt!345938))))))

(declare-fun b!958446 () Bool)

(declare-fun res!435575 () Bool)

(declare-fun e!619410 () Bool)

(assert (=> b!958446 (=> res!435575 e!619410)))

(assert (=> b!958446 (= res!435575 (not (is-ElementMatch!2650 lt!345940)))))

(declare-fun e!619409 () Bool)

(assert (=> b!958446 (= e!619409 e!619410)))

(declare-fun bm!60322 () Bool)

(declare-fun call!60327 () Bool)

(assert (=> bm!60322 (= call!60327 (isEmpty!6148 (_2!6419 lt!345938)))))

(declare-fun b!958447 () Bool)

(declare-fun lt!346007 () Bool)

(assert (=> b!958447 (= e!619409 (not lt!346007))))

(declare-fun d!284857 () Bool)

(declare-fun e!619411 () Bool)

(assert (=> d!284857 e!619411))

(declare-fun c!156100 () Bool)

(assert (=> d!284857 (= c!156100 (is-EmptyExpr!2650 lt!345940))))

(declare-fun e!619408 () Bool)

(assert (=> d!284857 (= lt!346007 e!619408)))

(declare-fun c!156098 () Bool)

(assert (=> d!284857 (= c!156098 (isEmpty!6148 (_2!6419 lt!345938)))))

(assert (=> d!284857 (validRegex!1119 lt!345940)))

(assert (=> d!284857 (= (matchR!1188 lt!345940 (_2!6419 lt!345938)) lt!346007)))

(declare-fun b!958448 () Bool)

(declare-fun res!435573 () Bool)

(declare-fun e!619412 () Bool)

(assert (=> b!958448 (=> res!435573 e!619412)))

(assert (=> b!958448 (= res!435573 (not (isEmpty!6148 (tail!1319 (_2!6419 lt!345938)))))))

(declare-fun b!958449 () Bool)

(declare-fun res!435571 () Bool)

(assert (=> b!958449 (=> res!435571 e!619410)))

(assert (=> b!958449 (= res!435571 e!619413)))

(declare-fun res!435568 () Bool)

(assert (=> b!958449 (=> (not res!435568) (not e!619413))))

(assert (=> b!958449 (= res!435568 lt!346007)))

(declare-fun b!958450 () Bool)

(assert (=> b!958450 (= e!619408 (nullable!795 lt!345940))))

(declare-fun b!958451 () Bool)

(assert (=> b!958451 (= e!619413 (= (head!1757 (_2!6419 lt!345938)) (c!156069 lt!345940)))))

(declare-fun b!958452 () Bool)

(declare-fun res!435572 () Bool)

(assert (=> b!958452 (=> (not res!435572) (not e!619413))))

(assert (=> b!958452 (= res!435572 (not call!60327))))

(declare-fun b!958453 () Bool)

(assert (=> b!958453 (= e!619411 e!619409)))

(declare-fun c!156099 () Bool)

(assert (=> b!958453 (= c!156099 (is-EmptyLang!2650 lt!345940))))

(declare-fun b!958454 () Bool)

(declare-fun e!619407 () Bool)

(assert (=> b!958454 (= e!619407 e!619412)))

(declare-fun res!435574 () Bool)

(assert (=> b!958454 (=> res!435574 e!619412)))

(assert (=> b!958454 (= res!435574 call!60327)))

(declare-fun b!958455 () Bool)

(assert (=> b!958455 (= e!619408 (matchR!1188 (derivativeStep!604 lt!345940 (head!1757 (_2!6419 lt!345938))) (tail!1319 (_2!6419 lt!345938))))))

(declare-fun b!958456 () Bool)

(assert (=> b!958456 (= e!619411 (= lt!346007 call!60327))))

(declare-fun b!958457 () Bool)

(assert (=> b!958457 (= e!619410 e!619407)))

(declare-fun res!435569 () Bool)

(assert (=> b!958457 (=> (not res!435569) (not e!619407))))

(assert (=> b!958457 (= res!435569 (not lt!346007))))

(declare-fun b!958458 () Bool)

(assert (=> b!958458 (= e!619412 (not (= (head!1757 (_2!6419 lt!345938)) (c!156069 lt!345940))))))

(assert (= (and d!284857 c!156098) b!958450))

(assert (= (and d!284857 (not c!156098)) b!958455))

(assert (= (and d!284857 c!156100) b!958456))

(assert (= (and d!284857 (not c!156100)) b!958453))

(assert (= (and b!958453 c!156099) b!958447))

(assert (= (and b!958453 (not c!156099)) b!958446))

(assert (= (and b!958446 (not res!435575)) b!958449))

(assert (= (and b!958449 res!435568) b!958452))

(assert (= (and b!958452 res!435572) b!958445))

(assert (= (and b!958445 res!435570) b!958451))

(assert (= (and b!958449 (not res!435571)) b!958457))

(assert (= (and b!958457 res!435569) b!958454))

(assert (= (and b!958454 (not res!435574)) b!958448))

(assert (= (and b!958448 (not res!435573)) b!958458))

(assert (= (or b!958456 b!958452 b!958454) bm!60322))

(declare-fun m!1167817 () Bool)

(assert (=> bm!60322 m!1167817))

(declare-fun m!1167819 () Bool)

(assert (=> b!958450 m!1167819))

(declare-fun m!1167821 () Bool)

(assert (=> b!958448 m!1167821))

(assert (=> b!958448 m!1167821))

(declare-fun m!1167823 () Bool)

(assert (=> b!958448 m!1167823))

(declare-fun m!1167825 () Bool)

(assert (=> b!958451 m!1167825))

(assert (=> b!958458 m!1167825))

(assert (=> b!958445 m!1167821))

(assert (=> b!958445 m!1167821))

(assert (=> b!958445 m!1167823))

(assert (=> b!958455 m!1167825))

(assert (=> b!958455 m!1167825))

(declare-fun m!1167827 () Bool)

(assert (=> b!958455 m!1167827))

(assert (=> b!958455 m!1167821))

(assert (=> b!958455 m!1167827))

(assert (=> b!958455 m!1167821))

(declare-fun m!1167829 () Bool)

(assert (=> b!958455 m!1167829))

(assert (=> d!284857 m!1167817))

(declare-fun m!1167831 () Bool)

(assert (=> d!284857 m!1167831))

(assert (=> b!958262 d!284857))

(declare-fun b!958487 () Bool)

(declare-fun e!619431 () Bool)

(declare-fun lt!346015 () Option!2235)

(assert (=> b!958487 (= e!619431 (not (isDefined!1877 lt!346015)))))

(declare-fun b!958488 () Bool)

(declare-fun res!435597 () Bool)

(declare-fun e!619432 () Bool)

(assert (=> b!958488 (=> (not res!435597) (not e!619432))))

(assert (=> b!958488 (= res!435597 (matchR!1188 (reg!2979 r!15766) (_1!6419 (get!3349 lt!346015))))))

(declare-fun b!958489 () Bool)

(declare-fun e!619429 () Bool)

(assert (=> b!958489 (= e!619429 (matchR!1188 lt!345940 s!10566))))

(declare-fun b!958490 () Bool)

(assert (=> b!958490 (= e!619432 (= (++!2653 (_1!6419 (get!3349 lt!346015)) (_2!6419 (get!3349 lt!346015))) s!10566))))

(declare-fun b!958491 () Bool)

(declare-fun e!619430 () Option!2235)

(assert (=> b!958491 (= e!619430 None!2234)))

(declare-fun d!284859 () Bool)

(assert (=> d!284859 e!619431))

(declare-fun res!435600 () Bool)

(assert (=> d!284859 (=> res!435600 e!619431)))

(assert (=> d!284859 (= res!435600 e!619432)))

(declare-fun res!435599 () Bool)

(assert (=> d!284859 (=> (not res!435599) (not e!619432))))

(assert (=> d!284859 (= res!435599 (isDefined!1877 lt!346015))))

(declare-fun e!619428 () Option!2235)

(assert (=> d!284859 (= lt!346015 e!619428)))

(declare-fun c!156105 () Bool)

(assert (=> d!284859 (= c!156105 e!619429)))

(declare-fun res!435598 () Bool)

(assert (=> d!284859 (=> (not res!435598) (not e!619429))))

(assert (=> d!284859 (= res!435598 (matchR!1188 (reg!2979 r!15766) Nil!9864))))

(assert (=> d!284859 (validRegex!1119 (reg!2979 r!15766))))

(assert (=> d!284859 (= (findConcatSeparation!341 (reg!2979 r!15766) lt!345940 Nil!9864 s!10566 s!10566) lt!346015)))

(declare-fun b!958492 () Bool)

(assert (=> b!958492 (= e!619428 (Some!2234 (tuple2!11187 Nil!9864 s!10566)))))

(declare-fun b!958493 () Bool)

(declare-fun lt!346017 () Unit!14943)

(declare-fun lt!346016 () Unit!14943)

(assert (=> b!958493 (= lt!346017 lt!346016)))

(assert (=> b!958493 (= (++!2653 (++!2653 Nil!9864 (Cons!9864 (h!15265 s!10566) Nil!9864)) (t!100926 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!258 (List!9880 C!5870 List!9880 List!9880) Unit!14943)

(assert (=> b!958493 (= lt!346016 (lemmaMoveElementToOtherListKeepsConcatEq!258 Nil!9864 (h!15265 s!10566) (t!100926 s!10566) s!10566))))

(assert (=> b!958493 (= e!619430 (findConcatSeparation!341 (reg!2979 r!15766) lt!345940 (++!2653 Nil!9864 (Cons!9864 (h!15265 s!10566) Nil!9864)) (t!100926 s!10566) s!10566))))

(declare-fun b!958494 () Bool)

(declare-fun res!435596 () Bool)

(assert (=> b!958494 (=> (not res!435596) (not e!619432))))

(assert (=> b!958494 (= res!435596 (matchR!1188 lt!345940 (_2!6419 (get!3349 lt!346015))))))

(declare-fun b!958495 () Bool)

(assert (=> b!958495 (= e!619428 e!619430)))

(declare-fun c!156106 () Bool)

(assert (=> b!958495 (= c!156106 (is-Nil!9864 s!10566))))

(assert (= (and d!284859 res!435598) b!958489))

(assert (= (and d!284859 c!156105) b!958492))

(assert (= (and d!284859 (not c!156105)) b!958495))

(assert (= (and b!958495 c!156106) b!958491))

(assert (= (and b!958495 (not c!156106)) b!958493))

(assert (= (and d!284859 res!435599) b!958488))

(assert (= (and b!958488 res!435597) b!958494))

(assert (= (and b!958494 res!435596) b!958490))

(assert (= (and d!284859 (not res!435600)) b!958487))

(declare-fun m!1167833 () Bool)

(assert (=> b!958488 m!1167833))

(declare-fun m!1167835 () Bool)

(assert (=> b!958488 m!1167835))

(declare-fun m!1167837 () Bool)

(assert (=> b!958487 m!1167837))

(assert (=> b!958490 m!1167833))

(declare-fun m!1167839 () Bool)

(assert (=> b!958490 m!1167839))

(declare-fun m!1167841 () Bool)

(assert (=> b!958493 m!1167841))

(assert (=> b!958493 m!1167841))

(declare-fun m!1167843 () Bool)

(assert (=> b!958493 m!1167843))

(declare-fun m!1167845 () Bool)

(assert (=> b!958493 m!1167845))

(assert (=> b!958493 m!1167841))

(declare-fun m!1167847 () Bool)

(assert (=> b!958493 m!1167847))

(declare-fun m!1167849 () Bool)

(assert (=> b!958489 m!1167849))

(assert (=> d!284859 m!1167837))

(declare-fun m!1167851 () Bool)

(assert (=> d!284859 m!1167851))

(declare-fun m!1167853 () Bool)

(assert (=> d!284859 m!1167853))

(assert (=> b!958494 m!1167833))

(declare-fun m!1167855 () Bool)

(assert (=> b!958494 m!1167855))

(assert (=> b!958263 d!284859))

(declare-fun d!284861 () Bool)

(declare-fun choose!6017 (Int) Bool)

(assert (=> d!284861 (= (Exists!397 lambda!33218) (choose!6017 lambda!33218))))

(declare-fun bs!240631 () Bool)

(assert (= bs!240631 d!284861))

(declare-fun m!1167863 () Bool)

(assert (=> bs!240631 m!1167863))

(assert (=> b!958263 d!284861))

(declare-fun d!284865 () Bool)

(assert (=> d!284865 (= (isEmpty!6148 s!10566) (is-Nil!9864 s!10566))))

(assert (=> b!958263 d!284865))

(declare-fun bs!240634 () Bool)

(declare-fun d!284867 () Bool)

(assert (= bs!240634 (and d!284867 b!958263)))

(declare-fun lambda!33246 () Int)

(assert (=> bs!240634 (= (= (Star!2650 (reg!2979 r!15766)) lt!345940) (= lambda!33246 lambda!33217))))

(assert (=> bs!240634 (not (= lambda!33246 lambda!33218))))

(declare-fun bs!240635 () Bool)

(assert (= bs!240635 (and d!284867 b!958394)))

(assert (=> bs!240635 (not (= lambda!33246 lambda!33234))))

(declare-fun bs!240636 () Bool)

(assert (= bs!240636 (and d!284867 b!958401)))

(assert (=> bs!240636 (not (= lambda!33246 lambda!33235))))

(assert (=> d!284867 true))

(assert (=> d!284867 true))

(declare-fun lambda!33247 () Int)

(assert (=> bs!240634 (= (= (Star!2650 (reg!2979 r!15766)) lt!345940) (= lambda!33247 lambda!33218))))

(assert (=> bs!240634 (not (= lambda!33247 lambda!33217))))

(declare-fun bs!240637 () Bool)

(assert (= bs!240637 d!284867))

(assert (=> bs!240637 (not (= lambda!33247 lambda!33246))))

(assert (=> bs!240635 (= (= (Star!2650 (reg!2979 r!15766)) r!15766) (= lambda!33247 lambda!33234))))

(assert (=> bs!240636 (not (= lambda!33247 lambda!33235))))

(assert (=> d!284867 true))

(assert (=> d!284867 true))

(assert (=> d!284867 (= (Exists!397 lambda!33246) (Exists!397 lambda!33247))))

(declare-fun lt!346020 () Unit!14943)

(declare-fun choose!6018 (Regex!2650 List!9880) Unit!14943)

(assert (=> d!284867 (= lt!346020 (choose!6018 (reg!2979 r!15766) s!10566))))

(assert (=> d!284867 (validRegex!1119 (reg!2979 r!15766))))

(assert (=> d!284867 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!125 (reg!2979 r!15766) s!10566) lt!346020)))

(declare-fun m!1167869 () Bool)

(assert (=> bs!240637 m!1167869))

(declare-fun m!1167871 () Bool)

(assert (=> bs!240637 m!1167871))

(declare-fun m!1167873 () Bool)

(assert (=> bs!240637 m!1167873))

(assert (=> bs!240637 m!1167853))

(assert (=> b!958263 d!284867))

(declare-fun d!284873 () Bool)

(assert (=> d!284873 (= (Exists!397 lambda!33217) (choose!6017 lambda!33217))))

(declare-fun bs!240638 () Bool)

(assert (= bs!240638 d!284873))

(declare-fun m!1167875 () Bool)

(assert (=> bs!240638 m!1167875))

(assert (=> b!958263 d!284873))

(declare-fun d!284875 () Bool)

(declare-fun isEmpty!6150 (Option!2235) Bool)

(assert (=> d!284875 (= (isDefined!1877 lt!345939) (not (isEmpty!6150 lt!345939)))))

(declare-fun bs!240639 () Bool)

(assert (= bs!240639 d!284875))

(declare-fun m!1167877 () Bool)

(assert (=> bs!240639 m!1167877))

(assert (=> b!958263 d!284875))

(declare-fun bs!240640 () Bool)

(declare-fun d!284877 () Bool)

(assert (= bs!240640 (and d!284877 b!958263)))

(declare-fun lambda!33250 () Int)

(assert (=> bs!240640 (not (= lambda!33250 lambda!33218))))

(assert (=> bs!240640 (= lambda!33250 lambda!33217)))

(declare-fun bs!240641 () Bool)

(assert (= bs!240641 (and d!284877 d!284867)))

(assert (=> bs!240641 (= (= lt!345940 (Star!2650 (reg!2979 r!15766))) (= lambda!33250 lambda!33246))))

(declare-fun bs!240642 () Bool)

(assert (= bs!240642 (and d!284877 b!958394)))

(assert (=> bs!240642 (not (= lambda!33250 lambda!33234))))

(declare-fun bs!240643 () Bool)

(assert (= bs!240643 (and d!284877 b!958401)))

(assert (=> bs!240643 (not (= lambda!33250 lambda!33235))))

(assert (=> bs!240641 (not (= lambda!33250 lambda!33247))))

(assert (=> d!284877 true))

(assert (=> d!284877 true))

(assert (=> d!284877 true))

(assert (=> d!284877 (= (isDefined!1877 (findConcatSeparation!341 (reg!2979 r!15766) lt!345940 Nil!9864 s!10566 s!10566)) (Exists!397 lambda!33250))))

(declare-fun lt!346023 () Unit!14943)

(declare-fun choose!6019 (Regex!2650 Regex!2650 List!9880) Unit!14943)

(assert (=> d!284877 (= lt!346023 (choose!6019 (reg!2979 r!15766) lt!345940 s!10566))))

(assert (=> d!284877 (validRegex!1119 (reg!2979 r!15766))))

(assert (=> d!284877 (= (lemmaFindConcatSeparationEquivalentToExists!341 (reg!2979 r!15766) lt!345940 s!10566) lt!346023)))

(declare-fun bs!240644 () Bool)

(assert (= bs!240644 d!284877))

(declare-fun m!1167879 () Bool)

(assert (=> bs!240644 m!1167879))

(assert (=> bs!240644 m!1167853))

(assert (=> bs!240644 m!1167709))

(declare-fun m!1167881 () Bool)

(assert (=> bs!240644 m!1167881))

(assert (=> bs!240644 m!1167709))

(declare-fun m!1167883 () Bool)

(assert (=> bs!240644 m!1167883))

(assert (=> b!958263 d!284877))

(declare-fun b!958510 () Bool)

(declare-fun res!435617 () Bool)

(declare-fun e!619445 () Bool)

(assert (=> b!958510 (=> (not res!435617) (not e!619445))))

(assert (=> b!958510 (= res!435617 (isEmpty!6148 (tail!1319 (_1!6419 lt!345938))))))

(declare-fun b!958511 () Bool)

(declare-fun res!435622 () Bool)

(declare-fun e!619442 () Bool)

(assert (=> b!958511 (=> res!435622 e!619442)))

(assert (=> b!958511 (= res!435622 (not (is-ElementMatch!2650 (removeUselessConcat!301 (reg!2979 r!15766)))))))

(declare-fun e!619441 () Bool)

(assert (=> b!958511 (= e!619441 e!619442)))

(declare-fun bm!60323 () Bool)

(declare-fun call!60328 () Bool)

(assert (=> bm!60323 (= call!60328 (isEmpty!6148 (_1!6419 lt!345938)))))

(declare-fun b!958512 () Bool)

(declare-fun lt!346024 () Bool)

(assert (=> b!958512 (= e!619441 (not lt!346024))))

(declare-fun d!284879 () Bool)

(declare-fun e!619443 () Bool)

(assert (=> d!284879 e!619443))

(declare-fun c!156109 () Bool)

(assert (=> d!284879 (= c!156109 (is-EmptyExpr!2650 (removeUselessConcat!301 (reg!2979 r!15766))))))

(declare-fun e!619440 () Bool)

(assert (=> d!284879 (= lt!346024 e!619440)))

(declare-fun c!156107 () Bool)

(assert (=> d!284879 (= c!156107 (isEmpty!6148 (_1!6419 lt!345938)))))

(assert (=> d!284879 (validRegex!1119 (removeUselessConcat!301 (reg!2979 r!15766)))))

(assert (=> d!284879 (= (matchR!1188 (removeUselessConcat!301 (reg!2979 r!15766)) (_1!6419 lt!345938)) lt!346024)))

(declare-fun b!958513 () Bool)

(declare-fun res!435620 () Bool)

(declare-fun e!619444 () Bool)

(assert (=> b!958513 (=> res!435620 e!619444)))

(assert (=> b!958513 (= res!435620 (not (isEmpty!6148 (tail!1319 (_1!6419 lt!345938)))))))

(declare-fun b!958514 () Bool)

(declare-fun res!435618 () Bool)

(assert (=> b!958514 (=> res!435618 e!619442)))

(assert (=> b!958514 (= res!435618 e!619445)))

(declare-fun res!435615 () Bool)

(assert (=> b!958514 (=> (not res!435615) (not e!619445))))

(assert (=> b!958514 (= res!435615 lt!346024)))

(declare-fun b!958515 () Bool)

(assert (=> b!958515 (= e!619440 (nullable!795 (removeUselessConcat!301 (reg!2979 r!15766))))))

(declare-fun b!958516 () Bool)

(assert (=> b!958516 (= e!619445 (= (head!1757 (_1!6419 lt!345938)) (c!156069 (removeUselessConcat!301 (reg!2979 r!15766)))))))

(declare-fun b!958517 () Bool)

(declare-fun res!435619 () Bool)

(assert (=> b!958517 (=> (not res!435619) (not e!619445))))

(assert (=> b!958517 (= res!435619 (not call!60328))))

(declare-fun b!958518 () Bool)

(assert (=> b!958518 (= e!619443 e!619441)))

(declare-fun c!156108 () Bool)

(assert (=> b!958518 (= c!156108 (is-EmptyLang!2650 (removeUselessConcat!301 (reg!2979 r!15766))))))

(declare-fun b!958519 () Bool)

(declare-fun e!619439 () Bool)

(assert (=> b!958519 (= e!619439 e!619444)))

(declare-fun res!435621 () Bool)

(assert (=> b!958519 (=> res!435621 e!619444)))

(assert (=> b!958519 (= res!435621 call!60328)))

(declare-fun b!958520 () Bool)

(assert (=> b!958520 (= e!619440 (matchR!1188 (derivativeStep!604 (removeUselessConcat!301 (reg!2979 r!15766)) (head!1757 (_1!6419 lt!345938))) (tail!1319 (_1!6419 lt!345938))))))

(declare-fun b!958521 () Bool)

(assert (=> b!958521 (= e!619443 (= lt!346024 call!60328))))

(declare-fun b!958522 () Bool)

(assert (=> b!958522 (= e!619442 e!619439)))

(declare-fun res!435616 () Bool)

(assert (=> b!958522 (=> (not res!435616) (not e!619439))))

(assert (=> b!958522 (= res!435616 (not lt!346024))))

(declare-fun b!958523 () Bool)

(assert (=> b!958523 (= e!619444 (not (= (head!1757 (_1!6419 lt!345938)) (c!156069 (removeUselessConcat!301 (reg!2979 r!15766))))))))

(assert (= (and d!284879 c!156107) b!958515))

(assert (= (and d!284879 (not c!156107)) b!958520))

(assert (= (and d!284879 c!156109) b!958521))

(assert (= (and d!284879 (not c!156109)) b!958518))

(assert (= (and b!958518 c!156108) b!958512))

(assert (= (and b!958518 (not c!156108)) b!958511))

(assert (= (and b!958511 (not res!435622)) b!958514))

(assert (= (and b!958514 res!435615) b!958517))

(assert (= (and b!958517 res!435619) b!958510))

(assert (= (and b!958510 res!435617) b!958516))

(assert (= (and b!958514 (not res!435618)) b!958522))

(assert (= (and b!958522 res!435616) b!958519))

(assert (= (and b!958519 (not res!435621)) b!958513))

(assert (= (and b!958513 (not res!435620)) b!958523))

(assert (= (or b!958521 b!958517 b!958519) bm!60323))

(assert (=> bm!60323 m!1167725))

(assert (=> b!958515 m!1167687))

(declare-fun m!1167885 () Bool)

(assert (=> b!958515 m!1167885))

(declare-fun m!1167887 () Bool)

(assert (=> b!958513 m!1167887))

(assert (=> b!958513 m!1167887))

(declare-fun m!1167889 () Bool)

(assert (=> b!958513 m!1167889))

(declare-fun m!1167891 () Bool)

(assert (=> b!958516 m!1167891))

(assert (=> b!958523 m!1167891))

(assert (=> b!958510 m!1167887))

(assert (=> b!958510 m!1167887))

(assert (=> b!958510 m!1167889))

(assert (=> b!958520 m!1167891))

(assert (=> b!958520 m!1167687))

(assert (=> b!958520 m!1167891))

(declare-fun m!1167893 () Bool)

(assert (=> b!958520 m!1167893))

(assert (=> b!958520 m!1167887))

(assert (=> b!958520 m!1167893))

(assert (=> b!958520 m!1167887))

(declare-fun m!1167895 () Bool)

(assert (=> b!958520 m!1167895))

(assert (=> d!284879 m!1167725))

(assert (=> d!284879 m!1167687))

(declare-fun m!1167897 () Bool)

(assert (=> d!284879 m!1167897))

(assert (=> b!958268 d!284879))

(declare-fun d!284881 () Bool)

(declare-fun lt!346025 () Int)

(assert (=> d!284881 (>= lt!346025 0)))

(declare-fun e!619446 () Int)

(assert (=> d!284881 (= lt!346025 e!619446)))

(declare-fun c!156110 () Bool)

(assert (=> d!284881 (= c!156110 (is-Nil!9864 s!10566))))

(assert (=> d!284881 (= (size!7922 s!10566) lt!346025)))

(declare-fun b!958524 () Bool)

(assert (=> b!958524 (= e!619446 0)))

(declare-fun b!958525 () Bool)

(assert (=> b!958525 (= e!619446 (+ 1 (size!7922 (t!100926 s!10566))))))

(assert (= (and d!284881 c!156110) b!958524))

(assert (= (and d!284881 (not c!156110)) b!958525))

(declare-fun m!1167899 () Bool)

(assert (=> b!958525 m!1167899))

(assert (=> b!958268 d!284881))

(declare-fun d!284883 () Bool)

(declare-fun lt!346026 () Int)

(assert (=> d!284883 (>= lt!346026 0)))

(declare-fun e!619447 () Int)

(assert (=> d!284883 (= lt!346026 e!619447)))

(declare-fun c!156111 () Bool)

(assert (=> d!284883 (= c!156111 (is-Nil!9864 (_2!6419 lt!345938)))))

(assert (=> d!284883 (= (size!7922 (_2!6419 lt!345938)) lt!346026)))

(declare-fun b!958526 () Bool)

(assert (=> b!958526 (= e!619447 0)))

(declare-fun b!958527 () Bool)

(assert (=> b!958527 (= e!619447 (+ 1 (size!7922 (t!100926 (_2!6419 lt!345938)))))))

(assert (= (and d!284883 c!156111) b!958526))

(assert (= (and d!284883 (not c!156111)) b!958527))

(declare-fun m!1167901 () Bool)

(assert (=> b!958527 m!1167901))

(assert (=> b!958268 d!284883))

(declare-fun b!958568 () Bool)

(declare-fun e!619473 () Bool)

(declare-fun lt!346035 () Regex!2650)

(assert (=> b!958568 (= e!619473 (= (nullable!795 lt!346035) (nullable!795 (reg!2979 r!15766))))))

(declare-fun bm!60334 () Bool)

(declare-fun call!60339 () Regex!2650)

(declare-fun call!60341 () Regex!2650)

(assert (=> bm!60334 (= call!60339 call!60341)))

(declare-fun b!958569 () Bool)

(declare-fun e!619475 () Regex!2650)

(assert (=> b!958569 (= e!619475 (Star!2650 call!60339))))

(declare-fun b!958570 () Bool)

(declare-fun e!619472 () Regex!2650)

(declare-fun e!619471 () Regex!2650)

(assert (=> b!958570 (= e!619472 e!619471)))

(declare-fun c!156127 () Bool)

(assert (=> b!958570 (= c!156127 (and (is-Concat!4483 (reg!2979 r!15766)) (is-EmptyExpr!2650 (regTwo!5812 (reg!2979 r!15766)))))))

(declare-fun b!958571 () Bool)

(declare-fun c!156129 () Bool)

(assert (=> b!958571 (= c!156129 (is-Concat!4483 (reg!2979 r!15766)))))

(declare-fun e!619470 () Regex!2650)

(assert (=> b!958571 (= e!619471 e!619470)))

(declare-fun bm!60335 () Bool)

(declare-fun call!60342 () Regex!2650)

(declare-fun call!60343 () Regex!2650)

(assert (=> bm!60335 (= call!60342 call!60343)))

(declare-fun d!284885 () Bool)

(assert (=> d!284885 e!619473))

(declare-fun res!435635 () Bool)

(assert (=> d!284885 (=> (not res!435635) (not e!619473))))

(assert (=> d!284885 (= res!435635 (validRegex!1119 lt!346035))))

(assert (=> d!284885 (= lt!346035 e!619472)))

(declare-fun c!156128 () Bool)

(assert (=> d!284885 (= c!156128 (and (is-Concat!4483 (reg!2979 r!15766)) (is-EmptyExpr!2650 (regOne!5812 (reg!2979 r!15766)))))))

(assert (=> d!284885 (validRegex!1119 (reg!2979 r!15766))))

(assert (=> d!284885 (= (removeUselessConcat!301 (reg!2979 r!15766)) lt!346035)))

(declare-fun b!958572 () Bool)

(assert (=> b!958572 (= e!619475 (reg!2979 r!15766))))

(declare-fun b!958573 () Bool)

(assert (=> b!958573 (= e!619471 call!60343)))

(declare-fun b!958574 () Bool)

(declare-fun c!156126 () Bool)

(assert (=> b!958574 (= c!156126 (is-Star!2650 (reg!2979 r!15766)))))

(declare-fun e!619474 () Regex!2650)

(assert (=> b!958574 (= e!619474 e!619475)))

(declare-fun b!958575 () Bool)

(declare-fun call!60340 () Regex!2650)

(assert (=> b!958575 (= e!619472 call!60340)))

(declare-fun b!958576 () Bool)

(assert (=> b!958576 (= e!619470 (Concat!4483 call!60341 call!60342))))

(declare-fun bm!60336 () Bool)

(assert (=> bm!60336 (= call!60343 call!60340)))

(declare-fun bm!60337 () Bool)

(assert (=> bm!60337 (= call!60340 (removeUselessConcat!301 (ite c!156128 (regTwo!5812 (reg!2979 r!15766)) (ite c!156127 (regOne!5812 (reg!2979 r!15766)) (ite c!156129 (regTwo!5812 (reg!2979 r!15766)) (regOne!5813 (reg!2979 r!15766)))))))))

(declare-fun b!958577 () Bool)

(assert (=> b!958577 (= e!619470 e!619474)))

(declare-fun c!156130 () Bool)

(assert (=> b!958577 (= c!156130 (is-Union!2650 (reg!2979 r!15766)))))

(declare-fun b!958578 () Bool)

(assert (=> b!958578 (= e!619474 (Union!2650 call!60342 call!60339))))

(declare-fun bm!60338 () Bool)

(assert (=> bm!60338 (= call!60341 (removeUselessConcat!301 (ite c!156129 (regOne!5812 (reg!2979 r!15766)) (ite c!156130 (regTwo!5813 (reg!2979 r!15766)) (reg!2979 (reg!2979 r!15766))))))))

(assert (= (and d!284885 c!156128) b!958575))

(assert (= (and d!284885 (not c!156128)) b!958570))

(assert (= (and b!958570 c!156127) b!958573))

(assert (= (and b!958570 (not c!156127)) b!958571))

(assert (= (and b!958571 c!156129) b!958576))

(assert (= (and b!958571 (not c!156129)) b!958577))

(assert (= (and b!958577 c!156130) b!958578))

(assert (= (and b!958577 (not c!156130)) b!958574))

(assert (= (and b!958574 c!156126) b!958569))

(assert (= (and b!958574 (not c!156126)) b!958572))

(assert (= (or b!958578 b!958569) bm!60334))

(assert (= (or b!958576 b!958578) bm!60335))

(assert (= (or b!958576 bm!60334) bm!60338))

(assert (= (or b!958573 bm!60335) bm!60336))

(assert (= (or b!958575 bm!60336) bm!60337))

(assert (= (and d!284885 res!435635) b!958568))

(declare-fun m!1167903 () Bool)

(assert (=> b!958568 m!1167903))

(assert (=> b!958568 m!1167681))

(declare-fun m!1167905 () Bool)

(assert (=> d!284885 m!1167905))

(assert (=> d!284885 m!1167853))

(declare-fun m!1167907 () Bool)

(assert (=> bm!60337 m!1167907))

(declare-fun m!1167909 () Bool)

(assert (=> bm!60338 m!1167909))

(assert (=> b!958268 d!284885))

(declare-fun d!284887 () Bool)

(assert (=> d!284887 (= (matchR!1188 (reg!2979 r!15766) (_1!6419 lt!345938)) (matchR!1188 (removeUselessConcat!301 (reg!2979 r!15766)) (_1!6419 lt!345938)))))

(declare-fun lt!346038 () Unit!14943)

(declare-fun choose!6022 (Regex!2650 List!9880) Unit!14943)

(assert (=> d!284887 (= lt!346038 (choose!6022 (reg!2979 r!15766) (_1!6419 lt!345938)))))

(assert (=> d!284887 (validRegex!1119 (reg!2979 r!15766))))

(assert (=> d!284887 (= (lemmaRemoveUselessConcatSound!161 (reg!2979 r!15766) (_1!6419 lt!345938)) lt!346038)))

(declare-fun bs!240645 () Bool)

(assert (= bs!240645 d!284887))

(assert (=> bs!240645 m!1167687))

(assert (=> bs!240645 m!1167687))

(assert (=> bs!240645 m!1167689))

(assert (=> bs!240645 m!1167853))

(assert (=> bs!240645 m!1167677))

(declare-fun m!1167911 () Bool)

(assert (=> bs!240645 m!1167911))

(assert (=> b!958268 d!284887))

(declare-fun b!958606 () Bool)

(declare-fun e!619500 () Bool)

(declare-fun e!619498 () Bool)

(assert (=> b!958606 (= e!619500 e!619498)))

(declare-fun c!156137 () Bool)

(assert (=> b!958606 (= c!156137 (is-Star!2650 r!15766))))

(declare-fun b!958607 () Bool)

(declare-fun res!435651 () Bool)

(declare-fun e!619496 () Bool)

(assert (=> b!958607 (=> res!435651 e!619496)))

(assert (=> b!958607 (= res!435651 (not (is-Concat!4483 r!15766)))))

(declare-fun e!619495 () Bool)

(assert (=> b!958607 (= e!619495 e!619496)))

(declare-fun call!60352 () Bool)

(declare-fun bm!60345 () Bool)

(declare-fun c!156138 () Bool)

(assert (=> bm!60345 (= call!60352 (validRegex!1119 (ite c!156137 (reg!2979 r!15766) (ite c!156138 (regTwo!5813 r!15766) (regTwo!5812 r!15766)))))))

(declare-fun d!284889 () Bool)

(declare-fun res!435652 () Bool)

(assert (=> d!284889 (=> res!435652 e!619500)))

(assert (=> d!284889 (= res!435652 (is-ElementMatch!2650 r!15766))))

(assert (=> d!284889 (= (validRegex!1119 r!15766) e!619500)))

(declare-fun b!958608 () Bool)

(declare-fun res!435653 () Bool)

(declare-fun e!619501 () Bool)

(assert (=> b!958608 (=> (not res!435653) (not e!619501))))

(declare-fun call!60351 () Bool)

(assert (=> b!958608 (= res!435653 call!60351)))

(assert (=> b!958608 (= e!619495 e!619501)))

(declare-fun b!958609 () Bool)

(assert (=> b!958609 (= e!619498 e!619495)))

(assert (=> b!958609 (= c!156138 (is-Union!2650 r!15766))))

(declare-fun b!958610 () Bool)

(declare-fun e!619499 () Bool)

(assert (=> b!958610 (= e!619499 call!60352)))

(declare-fun bm!60346 () Bool)

(declare-fun call!60350 () Bool)

(assert (=> bm!60346 (= call!60350 call!60352)))

(declare-fun b!958611 () Bool)

(declare-fun e!619497 () Bool)

(assert (=> b!958611 (= e!619497 call!60350)))

(declare-fun b!958612 () Bool)

(assert (=> b!958612 (= e!619496 e!619497)))

(declare-fun res!435655 () Bool)

(assert (=> b!958612 (=> (not res!435655) (not e!619497))))

(assert (=> b!958612 (= res!435655 call!60351)))

(declare-fun b!958613 () Bool)

(assert (=> b!958613 (= e!619501 call!60350)))

(declare-fun b!958614 () Bool)

(assert (=> b!958614 (= e!619498 e!619499)))

(declare-fun res!435654 () Bool)

(assert (=> b!958614 (= res!435654 (not (nullable!795 (reg!2979 r!15766))))))

(assert (=> b!958614 (=> (not res!435654) (not e!619499))))

(declare-fun bm!60347 () Bool)

(assert (=> bm!60347 (= call!60351 (validRegex!1119 (ite c!156138 (regOne!5813 r!15766) (regOne!5812 r!15766))))))

(assert (= (and d!284889 (not res!435652)) b!958606))

(assert (= (and b!958606 c!156137) b!958614))

(assert (= (and b!958606 (not c!156137)) b!958609))

(assert (= (and b!958614 res!435654) b!958610))

(assert (= (and b!958609 c!156138) b!958608))

(assert (= (and b!958609 (not c!156138)) b!958607))

(assert (= (and b!958608 res!435653) b!958613))

(assert (= (and b!958607 (not res!435651)) b!958612))

(assert (= (and b!958612 res!435655) b!958611))

(assert (= (or b!958613 b!958611) bm!60346))

(assert (= (or b!958608 b!958612) bm!60347))

(assert (= (or b!958610 bm!60346) bm!60345))

(declare-fun m!1167937 () Bool)

(assert (=> bm!60345 m!1167937))

(assert (=> b!958614 m!1167681))

(declare-fun m!1167939 () Bool)

(assert (=> bm!60347 m!1167939))

(assert (=> start!85356 d!284889))

(declare-fun b!958615 () Bool)

(declare-fun res!435658 () Bool)

(declare-fun e!619508 () Bool)

(assert (=> b!958615 (=> (not res!435658) (not e!619508))))

(assert (=> b!958615 (= res!435658 (isEmpty!6148 (tail!1319 (_1!6419 lt!345938))))))

(declare-fun b!958616 () Bool)

(declare-fun res!435663 () Bool)

(declare-fun e!619505 () Bool)

(assert (=> b!958616 (=> res!435663 e!619505)))

(assert (=> b!958616 (= res!435663 (not (is-ElementMatch!2650 (reg!2979 r!15766))))))

(declare-fun e!619504 () Bool)

(assert (=> b!958616 (= e!619504 e!619505)))

(declare-fun bm!60348 () Bool)

(declare-fun call!60353 () Bool)

(assert (=> bm!60348 (= call!60353 (isEmpty!6148 (_1!6419 lt!345938)))))

(declare-fun b!958617 () Bool)

(declare-fun lt!346042 () Bool)

(assert (=> b!958617 (= e!619504 (not lt!346042))))

(declare-fun d!284897 () Bool)

(declare-fun e!619506 () Bool)

(assert (=> d!284897 e!619506))

(declare-fun c!156141 () Bool)

(assert (=> d!284897 (= c!156141 (is-EmptyExpr!2650 (reg!2979 r!15766)))))

(declare-fun e!619503 () Bool)

(assert (=> d!284897 (= lt!346042 e!619503)))

(declare-fun c!156139 () Bool)

(assert (=> d!284897 (= c!156139 (isEmpty!6148 (_1!6419 lt!345938)))))

(assert (=> d!284897 (validRegex!1119 (reg!2979 r!15766))))

(assert (=> d!284897 (= (matchR!1188 (reg!2979 r!15766) (_1!6419 lt!345938)) lt!346042)))

(declare-fun b!958618 () Bool)

(declare-fun res!435661 () Bool)

(declare-fun e!619507 () Bool)

(assert (=> b!958618 (=> res!435661 e!619507)))

(assert (=> b!958618 (= res!435661 (not (isEmpty!6148 (tail!1319 (_1!6419 lt!345938)))))))

(declare-fun b!958619 () Bool)

(declare-fun res!435659 () Bool)

(assert (=> b!958619 (=> res!435659 e!619505)))

(assert (=> b!958619 (= res!435659 e!619508)))

(declare-fun res!435656 () Bool)

(assert (=> b!958619 (=> (not res!435656) (not e!619508))))

(assert (=> b!958619 (= res!435656 lt!346042)))

(declare-fun b!958620 () Bool)

(assert (=> b!958620 (= e!619503 (nullable!795 (reg!2979 r!15766)))))

(declare-fun b!958621 () Bool)

(assert (=> b!958621 (= e!619508 (= (head!1757 (_1!6419 lt!345938)) (c!156069 (reg!2979 r!15766))))))

(declare-fun b!958622 () Bool)

(declare-fun res!435660 () Bool)

(assert (=> b!958622 (=> (not res!435660) (not e!619508))))

(assert (=> b!958622 (= res!435660 (not call!60353))))

(declare-fun b!958623 () Bool)

(assert (=> b!958623 (= e!619506 e!619504)))

(declare-fun c!156140 () Bool)

(assert (=> b!958623 (= c!156140 (is-EmptyLang!2650 (reg!2979 r!15766)))))

(declare-fun b!958624 () Bool)

(declare-fun e!619502 () Bool)

(assert (=> b!958624 (= e!619502 e!619507)))

(declare-fun res!435662 () Bool)

(assert (=> b!958624 (=> res!435662 e!619507)))

(assert (=> b!958624 (= res!435662 call!60353)))

(declare-fun b!958625 () Bool)

(assert (=> b!958625 (= e!619503 (matchR!1188 (derivativeStep!604 (reg!2979 r!15766) (head!1757 (_1!6419 lt!345938))) (tail!1319 (_1!6419 lt!345938))))))

(declare-fun b!958626 () Bool)

(assert (=> b!958626 (= e!619506 (= lt!346042 call!60353))))

(declare-fun b!958627 () Bool)

(assert (=> b!958627 (= e!619505 e!619502)))

(declare-fun res!435657 () Bool)

(assert (=> b!958627 (=> (not res!435657) (not e!619502))))

(assert (=> b!958627 (= res!435657 (not lt!346042))))

(declare-fun b!958628 () Bool)

(assert (=> b!958628 (= e!619507 (not (= (head!1757 (_1!6419 lt!345938)) (c!156069 (reg!2979 r!15766)))))))

(assert (= (and d!284897 c!156139) b!958620))

(assert (= (and d!284897 (not c!156139)) b!958625))

(assert (= (and d!284897 c!156141) b!958626))

(assert (= (and d!284897 (not c!156141)) b!958623))

(assert (= (and b!958623 c!156140) b!958617))

(assert (= (and b!958623 (not c!156140)) b!958616))

(assert (= (and b!958616 (not res!435663)) b!958619))

(assert (= (and b!958619 res!435656) b!958622))

(assert (= (and b!958622 res!435660) b!958615))

(assert (= (and b!958615 res!435658) b!958621))

(assert (= (and b!958619 (not res!435659)) b!958627))

(assert (= (and b!958627 res!435657) b!958624))

(assert (= (and b!958624 (not res!435662)) b!958618))

(assert (= (and b!958618 (not res!435661)) b!958628))

(assert (= (or b!958626 b!958622 b!958624) bm!60348))

(assert (=> bm!60348 m!1167725))

(assert (=> b!958620 m!1167681))

(assert (=> b!958618 m!1167887))

(assert (=> b!958618 m!1167887))

(assert (=> b!958618 m!1167889))

(assert (=> b!958621 m!1167891))

(assert (=> b!958628 m!1167891))

(assert (=> b!958615 m!1167887))

(assert (=> b!958615 m!1167887))

(assert (=> b!958615 m!1167889))

(assert (=> b!958625 m!1167891))

(assert (=> b!958625 m!1167891))

(declare-fun m!1167941 () Bool)

(assert (=> b!958625 m!1167941))

(assert (=> b!958625 m!1167887))

(assert (=> b!958625 m!1167941))

(assert (=> b!958625 m!1167887))

(declare-fun m!1167943 () Bool)

(assert (=> b!958625 m!1167943))

(assert (=> d!284897 m!1167725))

(assert (=> d!284897 m!1167853))

(assert (=> b!958261 d!284897))

(declare-fun d!284899 () Bool)

(assert (=> d!284899 (= (get!3349 lt!345939) (v!19651 lt!345939))))

(assert (=> b!958261 d!284899))

(declare-fun d!284901 () Bool)

(assert (=> d!284901 (= (isEmpty!6148 (_1!6419 lt!345938)) (is-Nil!9864 (_1!6419 lt!345938)))))

(assert (=> b!958266 d!284901))

(declare-fun d!284903 () Bool)

(declare-fun nullableFct!191 (Regex!2650) Bool)

(assert (=> d!284903 (= (nullable!795 (reg!2979 r!15766)) (nullableFct!191 (reg!2979 r!15766)))))

(declare-fun bs!240647 () Bool)

(assert (= bs!240647 d!284903))

(declare-fun m!1167945 () Bool)

(assert (=> bs!240647 m!1167945))

(assert (=> b!958256 d!284903))

(declare-fun bs!240648 () Bool)

(declare-fun b!958631 () Bool)

(assert (= bs!240648 (and b!958631 b!958263)))

(declare-fun lambda!33251 () Int)

(assert (=> bs!240648 (= (and (= (_1!6419 lt!345938) s!10566) (= (reg!2979 (reg!2979 r!15766)) (reg!2979 r!15766)) (= (reg!2979 r!15766) lt!345940)) (= lambda!33251 lambda!33218))))

(assert (=> bs!240648 (not (= lambda!33251 lambda!33217))))

(declare-fun bs!240649 () Bool)

(assert (= bs!240649 (and b!958631 d!284867)))

(assert (=> bs!240649 (not (= lambda!33251 lambda!33246))))

(declare-fun bs!240650 () Bool)

(assert (= bs!240650 (and b!958631 b!958394)))

(assert (=> bs!240650 (= (and (= (_1!6419 lt!345938) s!10566) (= (reg!2979 (reg!2979 r!15766)) (reg!2979 r!15766)) (= (reg!2979 r!15766) r!15766)) (= lambda!33251 lambda!33234))))

(declare-fun bs!240651 () Bool)

(assert (= bs!240651 (and b!958631 d!284877)))

(assert (=> bs!240651 (not (= lambda!33251 lambda!33250))))

(declare-fun bs!240652 () Bool)

(assert (= bs!240652 (and b!958631 b!958401)))

(assert (=> bs!240652 (not (= lambda!33251 lambda!33235))))

(assert (=> bs!240649 (= (and (= (_1!6419 lt!345938) s!10566) (= (reg!2979 (reg!2979 r!15766)) (reg!2979 r!15766)) (= (reg!2979 r!15766) (Star!2650 (reg!2979 r!15766)))) (= lambda!33251 lambda!33247))))

(assert (=> b!958631 true))

(assert (=> b!958631 true))

(declare-fun bs!240653 () Bool)

(declare-fun b!958638 () Bool)

(assert (= bs!240653 (and b!958638 b!958263)))

(declare-fun lambda!33252 () Int)

(assert (=> bs!240653 (not (= lambda!33252 lambda!33218))))

(assert (=> bs!240653 (not (= lambda!33252 lambda!33217))))

(declare-fun bs!240654 () Bool)

(assert (= bs!240654 (and b!958638 d!284867)))

(assert (=> bs!240654 (not (= lambda!33252 lambda!33246))))

(declare-fun bs!240655 () Bool)

(assert (= bs!240655 (and b!958638 b!958394)))

(assert (=> bs!240655 (not (= lambda!33252 lambda!33234))))

(declare-fun bs!240656 () Bool)

(assert (= bs!240656 (and b!958638 d!284877)))

(assert (=> bs!240656 (not (= lambda!33252 lambda!33250))))

(declare-fun bs!240657 () Bool)

(assert (= bs!240657 (and b!958638 b!958401)))

(assert (=> bs!240657 (= (and (= (_1!6419 lt!345938) s!10566) (= (regOne!5812 (reg!2979 r!15766)) (regOne!5812 r!15766)) (= (regTwo!5812 (reg!2979 r!15766)) (regTwo!5812 r!15766))) (= lambda!33252 lambda!33235))))

(assert (=> bs!240654 (not (= lambda!33252 lambda!33247))))

(declare-fun bs!240658 () Bool)

(assert (= bs!240658 (and b!958638 b!958631)))

(assert (=> bs!240658 (not (= lambda!33252 lambda!33251))))

(assert (=> b!958638 true))

(assert (=> b!958638 true))

(declare-fun b!958629 () Bool)

(declare-fun res!435664 () Bool)

(declare-fun e!619512 () Bool)

(assert (=> b!958629 (=> res!435664 e!619512)))

(declare-fun call!60354 () Bool)

(assert (=> b!958629 (= res!435664 call!60354)))

(declare-fun e!619514 () Bool)

(assert (=> b!958629 (= e!619514 e!619512)))

(declare-fun b!958630 () Bool)

(declare-fun e!619510 () Bool)

(declare-fun e!619515 () Bool)

(assert (=> b!958630 (= e!619510 e!619515)))

(declare-fun res!435666 () Bool)

(assert (=> b!958630 (= res!435666 (not (is-EmptyLang!2650 (reg!2979 r!15766))))))

(assert (=> b!958630 (=> (not res!435666) (not e!619515))))

(declare-fun call!60355 () Bool)

(assert (=> b!958631 (= e!619512 call!60355)))

(declare-fun b!958632 () Bool)

(declare-fun e!619509 () Bool)

(assert (=> b!958632 (= e!619509 (= (_1!6419 lt!345938) (Cons!9864 (c!156069 (reg!2979 r!15766)) Nil!9864)))))

(declare-fun b!958633 () Bool)

(declare-fun c!156143 () Bool)

(assert (=> b!958633 (= c!156143 (is-ElementMatch!2650 (reg!2979 r!15766)))))

(assert (=> b!958633 (= e!619515 e!619509)))

(declare-fun bm!60349 () Bool)

(assert (=> bm!60349 (= call!60354 (isEmpty!6148 (_1!6419 lt!345938)))))

(declare-fun b!958634 () Bool)

(declare-fun c!156142 () Bool)

(assert (=> b!958634 (= c!156142 (is-Union!2650 (reg!2979 r!15766)))))

(declare-fun e!619511 () Bool)

(assert (=> b!958634 (= e!619509 e!619511)))

(declare-fun b!958635 () Bool)

(assert (=> b!958635 (= e!619510 call!60354)))

(declare-fun d!284905 () Bool)

(declare-fun c!156145 () Bool)

(assert (=> d!284905 (= c!156145 (is-EmptyExpr!2650 (reg!2979 r!15766)))))

(assert (=> d!284905 (= (matchRSpec!451 (reg!2979 r!15766) (_1!6419 lt!345938)) e!619510)))

(declare-fun b!958636 () Bool)

(declare-fun e!619513 () Bool)

(assert (=> b!958636 (= e!619511 e!619513)))

(declare-fun res!435665 () Bool)

(assert (=> b!958636 (= res!435665 (matchRSpec!451 (regOne!5813 (reg!2979 r!15766)) (_1!6419 lt!345938)))))

(assert (=> b!958636 (=> res!435665 e!619513)))

(declare-fun b!958637 () Bool)

(assert (=> b!958637 (= e!619513 (matchRSpec!451 (regTwo!5813 (reg!2979 r!15766)) (_1!6419 lt!345938)))))

(assert (=> b!958638 (= e!619514 call!60355)))

(declare-fun b!958639 () Bool)

(assert (=> b!958639 (= e!619511 e!619514)))

(declare-fun c!156144 () Bool)

(assert (=> b!958639 (= c!156144 (is-Star!2650 (reg!2979 r!15766)))))

(declare-fun bm!60350 () Bool)

(assert (=> bm!60350 (= call!60355 (Exists!397 (ite c!156144 lambda!33251 lambda!33252)))))

(assert (= (and d!284905 c!156145) b!958635))

(assert (= (and d!284905 (not c!156145)) b!958630))

(assert (= (and b!958630 res!435666) b!958633))

(assert (= (and b!958633 c!156143) b!958632))

(assert (= (and b!958633 (not c!156143)) b!958634))

(assert (= (and b!958634 c!156142) b!958636))

(assert (= (and b!958634 (not c!156142)) b!958639))

(assert (= (and b!958636 (not res!435665)) b!958637))

(assert (= (and b!958639 c!156144) b!958629))

(assert (= (and b!958639 (not c!156144)) b!958638))

(assert (= (and b!958629 (not res!435664)) b!958631))

(assert (= (or b!958631 b!958638) bm!60350))

(assert (= (or b!958635 b!958629) bm!60349))

(assert (=> bm!60349 m!1167725))

(declare-fun m!1167947 () Bool)

(assert (=> b!958636 m!1167947))

(declare-fun m!1167949 () Bool)

(assert (=> b!958637 m!1167949))

(declare-fun m!1167951 () Bool)

(assert (=> bm!60350 m!1167951))

(assert (=> b!958256 d!284905))

(declare-fun d!284907 () Bool)

(assert (=> d!284907 (= (matchR!1188 (reg!2979 r!15766) (_1!6419 lt!345938)) (matchRSpec!451 (reg!2979 r!15766) (_1!6419 lt!345938)))))

(declare-fun lt!346043 () Unit!14943)

(assert (=> d!284907 (= lt!346043 (choose!6016 (reg!2979 r!15766) (_1!6419 lt!345938)))))

(assert (=> d!284907 (validRegex!1119 (reg!2979 r!15766))))

(assert (=> d!284907 (= (mainMatchTheorem!451 (reg!2979 r!15766) (_1!6419 lt!345938)) lt!346043)))

(declare-fun bs!240659 () Bool)

(assert (= bs!240659 d!284907))

(assert (=> bs!240659 m!1167677))

(assert (=> bs!240659 m!1167683))

(declare-fun m!1167953 () Bool)

(assert (=> bs!240659 m!1167953))

(assert (=> bs!240659 m!1167853))

(assert (=> b!958256 d!284907))

(declare-fun b!958653 () Bool)

(declare-fun e!619518 () Bool)

(declare-fun tp!294903 () Bool)

(declare-fun tp!294904 () Bool)

(assert (=> b!958653 (= e!619518 (and tp!294903 tp!294904))))

(declare-fun b!958651 () Bool)

(declare-fun tp!294906 () Bool)

(declare-fun tp!294907 () Bool)

(assert (=> b!958651 (= e!619518 (and tp!294906 tp!294907))))

(assert (=> b!958265 (= tp!294871 e!619518)))

(declare-fun b!958652 () Bool)

(declare-fun tp!294905 () Bool)

(assert (=> b!958652 (= e!619518 tp!294905)))

(declare-fun b!958650 () Bool)

(assert (=> b!958650 (= e!619518 tp_is_empty!4943)))

(assert (= (and b!958265 (is-ElementMatch!2650 (regOne!5812 r!15766))) b!958650))

(assert (= (and b!958265 (is-Concat!4483 (regOne!5812 r!15766))) b!958651))

(assert (= (and b!958265 (is-Star!2650 (regOne!5812 r!15766))) b!958652))

(assert (= (and b!958265 (is-Union!2650 (regOne!5812 r!15766))) b!958653))

(declare-fun b!958657 () Bool)

(declare-fun e!619519 () Bool)

(declare-fun tp!294908 () Bool)

(declare-fun tp!294909 () Bool)

(assert (=> b!958657 (= e!619519 (and tp!294908 tp!294909))))

(declare-fun b!958655 () Bool)

(declare-fun tp!294911 () Bool)

(declare-fun tp!294912 () Bool)

(assert (=> b!958655 (= e!619519 (and tp!294911 tp!294912))))

(assert (=> b!958265 (= tp!294873 e!619519)))

(declare-fun b!958656 () Bool)

(declare-fun tp!294910 () Bool)

(assert (=> b!958656 (= e!619519 tp!294910)))

(declare-fun b!958654 () Bool)

(assert (=> b!958654 (= e!619519 tp_is_empty!4943)))

(assert (= (and b!958265 (is-ElementMatch!2650 (regTwo!5812 r!15766))) b!958654))

(assert (= (and b!958265 (is-Concat!4483 (regTwo!5812 r!15766))) b!958655))

(assert (= (and b!958265 (is-Star!2650 (regTwo!5812 r!15766))) b!958656))

(assert (= (and b!958265 (is-Union!2650 (regTwo!5812 r!15766))) b!958657))

(declare-fun b!958661 () Bool)

(declare-fun e!619520 () Bool)

(declare-fun tp!294913 () Bool)

(declare-fun tp!294914 () Bool)

(assert (=> b!958661 (= e!619520 (and tp!294913 tp!294914))))

(declare-fun b!958659 () Bool)

(declare-fun tp!294916 () Bool)

(declare-fun tp!294917 () Bool)

(assert (=> b!958659 (= e!619520 (and tp!294916 tp!294917))))

(assert (=> b!958270 (= tp!294874 e!619520)))

(declare-fun b!958660 () Bool)

(declare-fun tp!294915 () Bool)

(assert (=> b!958660 (= e!619520 tp!294915)))

(declare-fun b!958658 () Bool)

(assert (=> b!958658 (= e!619520 tp_is_empty!4943)))

(assert (= (and b!958270 (is-ElementMatch!2650 (reg!2979 r!15766))) b!958658))

(assert (= (and b!958270 (is-Concat!4483 (reg!2979 r!15766))) b!958659))

(assert (= (and b!958270 (is-Star!2650 (reg!2979 r!15766))) b!958660))

(assert (= (and b!958270 (is-Union!2650 (reg!2979 r!15766))) b!958661))

(declare-fun b!958666 () Bool)

(declare-fun e!619523 () Bool)

(declare-fun tp!294920 () Bool)

(assert (=> b!958666 (= e!619523 (and tp_is_empty!4943 tp!294920))))

(assert (=> b!958258 (= tp!294869 e!619523)))

(assert (= (and b!958258 (is-Cons!9864 (t!100926 s!10566))) b!958666))

(declare-fun b!958670 () Bool)

(declare-fun e!619524 () Bool)

(declare-fun tp!294921 () Bool)

(declare-fun tp!294922 () Bool)

(assert (=> b!958670 (= e!619524 (and tp!294921 tp!294922))))

(declare-fun b!958668 () Bool)

(declare-fun tp!294924 () Bool)

(declare-fun tp!294925 () Bool)

(assert (=> b!958668 (= e!619524 (and tp!294924 tp!294925))))

(assert (=> b!958267 (= tp!294870 e!619524)))

(declare-fun b!958669 () Bool)

(declare-fun tp!294923 () Bool)

(assert (=> b!958669 (= e!619524 tp!294923)))

(declare-fun b!958667 () Bool)

(assert (=> b!958667 (= e!619524 tp_is_empty!4943)))

(assert (= (and b!958267 (is-ElementMatch!2650 (regOne!5813 r!15766))) b!958667))

(assert (= (and b!958267 (is-Concat!4483 (regOne!5813 r!15766))) b!958668))

(assert (= (and b!958267 (is-Star!2650 (regOne!5813 r!15766))) b!958669))

(assert (= (and b!958267 (is-Union!2650 (regOne!5813 r!15766))) b!958670))

(declare-fun b!958674 () Bool)

(declare-fun e!619525 () Bool)

(declare-fun tp!294926 () Bool)

(declare-fun tp!294927 () Bool)

(assert (=> b!958674 (= e!619525 (and tp!294926 tp!294927))))

(declare-fun b!958672 () Bool)

(declare-fun tp!294929 () Bool)

(declare-fun tp!294930 () Bool)

(assert (=> b!958672 (= e!619525 (and tp!294929 tp!294930))))

(assert (=> b!958267 (= tp!294872 e!619525)))

(declare-fun b!958673 () Bool)

(declare-fun tp!294928 () Bool)

(assert (=> b!958673 (= e!619525 tp!294928)))

(declare-fun b!958671 () Bool)

(assert (=> b!958671 (= e!619525 tp_is_empty!4943)))

(assert (= (and b!958267 (is-ElementMatch!2650 (regTwo!5813 r!15766))) b!958671))

(assert (= (and b!958267 (is-Concat!4483 (regTwo!5813 r!15766))) b!958672))

(assert (= (and b!958267 (is-Star!2650 (regTwo!5813 r!15766))) b!958673))

(assert (= (and b!958267 (is-Union!2650 (regTwo!5813 r!15766))) b!958674))

(push 1)

(assert (not b!958653))

(assert (not b!958673))

(assert (not b!958656))

(assert (not b!958434))

(assert (not b!958657))

(assert (not b!958620))

(assert (not d!284877))

(assert (not d!284873))

(assert (not d!284861))

(assert (not bm!60338))

(assert (not d!284903))

(assert (not bm!60347))

(assert (not b!958614))

(assert (not b!958666))

(assert (not d!284853))

(assert (not b!958625))

(assert (not b!958672))

(assert (not b!958628))

(assert (not b!958661))

(assert (not b!958655))

(assert (not b!958659))

(assert (not bm!60321))

(assert (not b!958670))

(assert (not b!958488))

(assert (not b!958399))

(assert (not d!284855))

(assert (not bm!60350))

(assert (not b!958490))

(assert (not b!958355))

(assert (not d!284879))

(assert (not b!958660))

(assert (not b!958668))

(assert (not b!958441))

(assert (not b!958431))

(assert (not b!958674))

(assert (not bm!60345))

(assert (not b!958527))

(assert (not d!284875))

(assert (not b!958636))

(assert (not b!958513))

(assert (not d!284897))

(assert (not d!284867))

(assert (not b!958451))

(assert (not b!958618))

(assert (not d!284859))

(assert (not b!958444))

(assert (not d!284907))

(assert (not b!958494))

(assert (not b!958621))

(assert (not b!958445))

(assert (not b!958523))

(assert (not b!958347))

(assert (not b!958615))

(assert (not b!958450))

(assert (not b!958436))

(assert (not b!958400))

(assert (not b!958348))

(assert (not d!284845))

(assert (not b!958455))

(assert (not bm!60317))

(assert (not b!958448))

(assert (not b!958515))

(assert tp_is_empty!4943)

(assert (not b!958652))

(assert (not bm!60349))

(assert (not b!958458))

(assert (not bm!60337))

(assert (not d!284887))

(assert (not b!958637))

(assert (not b!958568))

(assert (not b!958437))

(assert (not bm!60318))

(assert (not b!958525))

(assert (not b!958516))

(assert (not bm!60322))

(assert (not d!284857))

(assert (not b!958510))

(assert (not bm!60323))

(assert (not bm!60348))

(assert (not d!284885))

(assert (not b!958520))

(assert (not b!958669))

(assert (not b!958651))

(assert (not b!958487))

(assert (not b!958489))

(assert (not b!958493))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

