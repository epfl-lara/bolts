; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81234 () Bool)

(assert start!81234)

(declare-fun b!903009 () Bool)

(declare-fun e!590101 () Bool)

(declare-fun tp!282970 () Bool)

(declare-fun tp!282972 () Bool)

(assert (=> b!903009 (= e!590101 (and tp!282970 tp!282972))))

(declare-fun b!903010 () Bool)

(declare-fun tp!282969 () Bool)

(declare-fun tp!282967 () Bool)

(assert (=> b!903010 (= e!590101 (and tp!282969 tp!282967))))

(declare-fun res!410648 () Bool)

(declare-fun e!590099 () Bool)

(assert (=> start!81234 (=> (not res!410648) (not e!590099))))

(declare-datatypes ((C!5324 0))(
  ( (C!5325 (val!2910 Int)) )
))
(declare-datatypes ((Regex!2377 0))(
  ( (ElementMatch!2377 (c!146276 C!5324)) (Concat!4210 (regOne!5266 Regex!2377) (regTwo!5266 Regex!2377)) (EmptyExpr!2377) (Star!2377 (reg!2706 Regex!2377)) (EmptyLang!2377) (Union!2377 (regOne!5267 Regex!2377) (regTwo!5267 Regex!2377)) )
))
(declare-fun r!15766 () Regex!2377)

(declare-fun validRegex!846 (Regex!2377) Bool)

(assert (=> start!81234 (= res!410648 (validRegex!846 r!15766))))

(assert (=> start!81234 e!590099))

(assert (=> start!81234 e!590101))

(declare-fun e!590098 () Bool)

(assert (=> start!81234 e!590098))

(declare-fun b!903011 () Bool)

(declare-fun e!590100 () Bool)

(assert (=> b!903011 (= e!590099 (not e!590100))))

(declare-fun res!410647 () Bool)

(assert (=> b!903011 (=> res!410647 e!590100)))

(declare-fun lt!335189 () Bool)

(get-info :version)

(assert (=> b!903011 (= res!410647 (or (not lt!335189) (and ((_ is Concat!4210) r!15766) ((_ is EmptyExpr!2377) (regOne!5266 r!15766))) (and ((_ is Concat!4210) r!15766) ((_ is EmptyExpr!2377) (regTwo!5266 r!15766))) ((_ is Concat!4210) r!15766) ((_ is Union!2377) r!15766) ((_ is Star!2377) r!15766)))))

(declare-datatypes ((List!9607 0))(
  ( (Nil!9591) (Cons!9591 (h!14992 C!5324) (t!100653 List!9607)) )
))
(declare-fun s!10566 () List!9607)

(declare-fun matchRSpec!178 (Regex!2377 List!9607) Bool)

(assert (=> b!903011 (= lt!335189 (matchRSpec!178 r!15766 s!10566))))

(declare-fun matchR!915 (Regex!2377 List!9607) Bool)

(assert (=> b!903011 (= lt!335189 (matchR!915 r!15766 s!10566))))

(declare-datatypes ((Unit!14373 0))(
  ( (Unit!14374) )
))
(declare-fun lt!335188 () Unit!14373)

(declare-fun mainMatchTheorem!178 (Regex!2377 List!9607) Unit!14373)

(assert (=> b!903011 (= lt!335188 (mainMatchTheorem!178 r!15766 s!10566))))

(declare-fun b!903012 () Bool)

(declare-fun tp_is_empty!4397 () Bool)

(declare-fun tp!282968 () Bool)

(assert (=> b!903012 (= e!590098 (and tp_is_empty!4397 tp!282968))))

(declare-fun b!903013 () Bool)

(declare-fun removeUselessConcat!90 (Regex!2377) Regex!2377)

(assert (=> b!903013 (= e!590100 (validRegex!846 (removeUselessConcat!90 r!15766)))))

(declare-fun b!903014 () Bool)

(assert (=> b!903014 (= e!590101 tp_is_empty!4397)))

(declare-fun b!903015 () Bool)

(declare-fun tp!282971 () Bool)

(assert (=> b!903015 (= e!590101 tp!282971)))

(assert (= (and start!81234 res!410648) b!903011))

(assert (= (and b!903011 (not res!410647)) b!903013))

(assert (= (and start!81234 ((_ is ElementMatch!2377) r!15766)) b!903014))

(assert (= (and start!81234 ((_ is Concat!4210) r!15766)) b!903009))

(assert (= (and start!81234 ((_ is Star!2377) r!15766)) b!903015))

(assert (= (and start!81234 ((_ is Union!2377) r!15766)) b!903010))

(assert (= (and start!81234 ((_ is Cons!9591) s!10566)) b!903012))

(declare-fun m!1139781 () Bool)

(assert (=> start!81234 m!1139781))

(declare-fun m!1139783 () Bool)

(assert (=> b!903011 m!1139783))

(declare-fun m!1139785 () Bool)

(assert (=> b!903011 m!1139785))

(declare-fun m!1139787 () Bool)

(assert (=> b!903011 m!1139787))

(declare-fun m!1139789 () Bool)

(assert (=> b!903013 m!1139789))

(assert (=> b!903013 m!1139789))

(declare-fun m!1139791 () Bool)

(assert (=> b!903013 m!1139791))

(check-sat (not b!903013) (not b!903011) (not b!903012) (not b!903009) (not b!903010) tp_is_empty!4397 (not b!903015) (not start!81234))
(check-sat)
(get-model)

(declare-fun b!903056 () Bool)

(declare-fun e!590135 () Bool)

(declare-fun e!590132 () Bool)

(assert (=> b!903056 (= e!590135 e!590132)))

(declare-fun c!146289 () Bool)

(assert (=> b!903056 (= c!146289 ((_ is Union!2377) r!15766))))

(declare-fun bm!53915 () Bool)

(declare-fun call!53921 () Bool)

(assert (=> bm!53915 (= call!53921 (validRegex!846 (ite c!146289 (regOne!5267 r!15766) (regOne!5266 r!15766))))))

(declare-fun b!903057 () Bool)

(declare-fun e!590136 () Bool)

(assert (=> b!903057 (= e!590136 e!590135)))

(declare-fun c!146290 () Bool)

(assert (=> b!903057 (= c!146290 ((_ is Star!2377) r!15766))))

(declare-fun b!903058 () Bool)

(declare-fun e!590130 () Bool)

(declare-fun call!53920 () Bool)

(assert (=> b!903058 (= e!590130 call!53920)))

(declare-fun b!903059 () Bool)

(declare-fun res!410668 () Bool)

(declare-fun e!590134 () Bool)

(assert (=> b!903059 (=> res!410668 e!590134)))

(assert (=> b!903059 (= res!410668 (not ((_ is Concat!4210) r!15766)))))

(assert (=> b!903059 (= e!590132 e!590134)))

(declare-fun call!53922 () Bool)

(declare-fun bm!53916 () Bool)

(assert (=> bm!53916 (= call!53922 (validRegex!846 (ite c!146290 (reg!2706 r!15766) (ite c!146289 (regTwo!5267 r!15766) (regTwo!5266 r!15766)))))))

(declare-fun b!903060 () Bool)

(declare-fun res!410666 () Bool)

(assert (=> b!903060 (=> (not res!410666) (not e!590130))))

(assert (=> b!903060 (= res!410666 call!53921)))

(assert (=> b!903060 (= e!590132 e!590130)))

(declare-fun b!903061 () Bool)

(declare-fun e!590131 () Bool)

(assert (=> b!903061 (= e!590131 call!53920)))

(declare-fun b!903062 () Bool)

(assert (=> b!903062 (= e!590134 e!590131)))

(declare-fun res!410669 () Bool)

(assert (=> b!903062 (=> (not res!410669) (not e!590131))))

(assert (=> b!903062 (= res!410669 call!53921)))

(declare-fun d!278554 () Bool)

(declare-fun res!410667 () Bool)

(assert (=> d!278554 (=> res!410667 e!590136)))

(assert (=> d!278554 (= res!410667 ((_ is ElementMatch!2377) r!15766))))

(assert (=> d!278554 (= (validRegex!846 r!15766) e!590136)))

(declare-fun b!903063 () Bool)

(declare-fun e!590133 () Bool)

(assert (=> b!903063 (= e!590135 e!590133)))

(declare-fun res!410665 () Bool)

(declare-fun nullable!636 (Regex!2377) Bool)

(assert (=> b!903063 (= res!410665 (not (nullable!636 (reg!2706 r!15766))))))

(assert (=> b!903063 (=> (not res!410665) (not e!590133))))

(declare-fun bm!53917 () Bool)

(assert (=> bm!53917 (= call!53920 call!53922)))

(declare-fun b!903064 () Bool)

(assert (=> b!903064 (= e!590133 call!53922)))

(assert (= (and d!278554 (not res!410667)) b!903057))

(assert (= (and b!903057 c!146290) b!903063))

(assert (= (and b!903057 (not c!146290)) b!903056))

(assert (= (and b!903063 res!410665) b!903064))

(assert (= (and b!903056 c!146289) b!903060))

(assert (= (and b!903056 (not c!146289)) b!903059))

(assert (= (and b!903060 res!410666) b!903058))

(assert (= (and b!903059 (not res!410668)) b!903062))

(assert (= (and b!903062 res!410669) b!903061))

(assert (= (or b!903058 b!903061) bm!53917))

(assert (= (or b!903060 b!903062) bm!53915))

(assert (= (or b!903064 bm!53917) bm!53916))

(declare-fun m!1139793 () Bool)

(assert (=> bm!53915 m!1139793))

(declare-fun m!1139795 () Bool)

(assert (=> bm!53916 m!1139795))

(declare-fun m!1139797 () Bool)

(assert (=> b!903063 m!1139797))

(assert (=> start!81234 d!278554))

(declare-fun b!903278 () Bool)

(assert (=> b!903278 true))

(assert (=> b!903278 true))

(declare-fun bs!235322 () Bool)

(declare-fun b!903277 () Bool)

(assert (= bs!235322 (and b!903277 b!903278)))

(declare-fun lambda!28322 () Int)

(declare-fun lambda!28321 () Int)

(assert (=> bs!235322 (not (= lambda!28322 lambda!28321))))

(assert (=> b!903277 true))

(assert (=> b!903277 true))

(declare-fun b!903268 () Bool)

(declare-fun e!590243 () Bool)

(assert (=> b!903268 (= e!590243 (= s!10566 (Cons!9591 (c!146276 r!15766) Nil!9591)))))

(declare-fun b!903269 () Bool)

(declare-fun e!590244 () Bool)

(declare-fun call!53963 () Bool)

(assert (=> b!903269 (= e!590244 call!53963)))

(declare-fun b!903270 () Bool)

(declare-fun e!590247 () Bool)

(declare-fun e!590248 () Bool)

(assert (=> b!903270 (= e!590247 e!590248)))

(declare-fun c!146337 () Bool)

(assert (=> b!903270 (= c!146337 ((_ is Star!2377) r!15766))))

(declare-fun b!903271 () Bool)

(declare-fun e!590246 () Bool)

(assert (=> b!903271 (= e!590244 e!590246)))

(declare-fun res!410748 () Bool)

(assert (=> b!903271 (= res!410748 (not ((_ is EmptyLang!2377) r!15766)))))

(assert (=> b!903271 (=> (not res!410748) (not e!590246))))

(declare-fun bm!53958 () Bool)

(declare-fun isEmpty!5798 (List!9607) Bool)

(assert (=> bm!53958 (= call!53963 (isEmpty!5798 s!10566))))

(declare-fun d!278556 () Bool)

(declare-fun c!146336 () Bool)

(assert (=> d!278556 (= c!146336 ((_ is EmptyExpr!2377) r!15766))))

(assert (=> d!278556 (= (matchRSpec!178 r!15766 s!10566) e!590244)))

(declare-fun b!903272 () Bool)

(declare-fun c!146338 () Bool)

(assert (=> b!903272 (= c!146338 ((_ is ElementMatch!2377) r!15766))))

(assert (=> b!903272 (= e!590246 e!590243)))

(declare-fun b!903273 () Bool)

(declare-fun e!590249 () Bool)

(assert (=> b!903273 (= e!590249 (matchRSpec!178 (regTwo!5267 r!15766) s!10566))))

(declare-fun b!903274 () Bool)

(declare-fun res!410746 () Bool)

(declare-fun e!590245 () Bool)

(assert (=> b!903274 (=> res!410746 e!590245)))

(assert (=> b!903274 (= res!410746 call!53963)))

(assert (=> b!903274 (= e!590248 e!590245)))

(declare-fun b!903275 () Bool)

(assert (=> b!903275 (= e!590247 e!590249)))

(declare-fun res!410747 () Bool)

(assert (=> b!903275 (= res!410747 (matchRSpec!178 (regOne!5267 r!15766) s!10566))))

(assert (=> b!903275 (=> res!410747 e!590249)))

(declare-fun b!903276 () Bool)

(declare-fun c!146335 () Bool)

(assert (=> b!903276 (= c!146335 ((_ is Union!2377) r!15766))))

(assert (=> b!903276 (= e!590243 e!590247)))

(declare-fun call!53964 () Bool)

(assert (=> b!903277 (= e!590248 call!53964)))

(declare-fun bm!53959 () Bool)

(declare-fun Exists!154 (Int) Bool)

(assert (=> bm!53959 (= call!53964 (Exists!154 (ite c!146337 lambda!28321 lambda!28322)))))

(assert (=> b!903278 (= e!590245 call!53964)))

(assert (= (and d!278556 c!146336) b!903269))

(assert (= (and d!278556 (not c!146336)) b!903271))

(assert (= (and b!903271 res!410748) b!903272))

(assert (= (and b!903272 c!146338) b!903268))

(assert (= (and b!903272 (not c!146338)) b!903276))

(assert (= (and b!903276 c!146335) b!903275))

(assert (= (and b!903276 (not c!146335)) b!903270))

(assert (= (and b!903275 (not res!410747)) b!903273))

(assert (= (and b!903270 c!146337) b!903274))

(assert (= (and b!903270 (not c!146337)) b!903277))

(assert (= (and b!903274 (not res!410746)) b!903278))

(assert (= (or b!903278 b!903277) bm!53959))

(assert (= (or b!903269 b!903274) bm!53958))

(declare-fun m!1139841 () Bool)

(assert (=> bm!53958 m!1139841))

(declare-fun m!1139843 () Bool)

(assert (=> b!903273 m!1139843))

(declare-fun m!1139845 () Bool)

(assert (=> b!903275 m!1139845))

(declare-fun m!1139847 () Bool)

(assert (=> bm!53959 m!1139847))

(assert (=> b!903011 d!278556))

(declare-fun b!903311 () Bool)

(declare-fun res!410766 () Bool)

(declare-fun e!590267 () Bool)

(assert (=> b!903311 (=> res!410766 e!590267)))

(declare-fun tail!1163 (List!9607) List!9607)

(assert (=> b!903311 (= res!410766 (not (isEmpty!5798 (tail!1163 s!10566))))))

(declare-fun b!903312 () Bool)

(declare-fun res!410767 () Bool)

(declare-fun e!590265 () Bool)

(assert (=> b!903312 (=> res!410767 e!590265)))

(assert (=> b!903312 (= res!410767 (not ((_ is ElementMatch!2377) r!15766)))))

(declare-fun e!590266 () Bool)

(assert (=> b!903312 (= e!590266 e!590265)))

(declare-fun b!903313 () Bool)

(declare-fun e!590264 () Bool)

(assert (=> b!903313 (= e!590264 e!590267)))

(declare-fun res!410772 () Bool)

(assert (=> b!903313 (=> res!410772 e!590267)))

(declare-fun call!53967 () Bool)

(assert (=> b!903313 (= res!410772 call!53967)))

(declare-fun b!903314 () Bool)

(declare-fun head!1601 (List!9607) C!5324)

(assert (=> b!903314 (= e!590267 (not (= (head!1601 s!10566) (c!146276 r!15766))))))

(declare-fun b!903315 () Bool)

(declare-fun res!410769 () Bool)

(assert (=> b!903315 (=> res!410769 e!590265)))

(declare-fun e!590269 () Bool)

(assert (=> b!903315 (= res!410769 e!590269)))

(declare-fun res!410770 () Bool)

(assert (=> b!903315 (=> (not res!410770) (not e!590269))))

(declare-fun lt!335201 () Bool)

(assert (=> b!903315 (= res!410770 lt!335201)))

(declare-fun d!278568 () Bool)

(declare-fun e!590268 () Bool)

(assert (=> d!278568 e!590268))

(declare-fun c!146347 () Bool)

(assert (=> d!278568 (= c!146347 ((_ is EmptyExpr!2377) r!15766))))

(declare-fun e!590270 () Bool)

(assert (=> d!278568 (= lt!335201 e!590270)))

(declare-fun c!146345 () Bool)

(assert (=> d!278568 (= c!146345 (isEmpty!5798 s!10566))))

(assert (=> d!278568 (validRegex!846 r!15766)))

(assert (=> d!278568 (= (matchR!915 r!15766 s!10566) lt!335201)))

(declare-fun b!903316 () Bool)

(assert (=> b!903316 (= e!590265 e!590264)))

(declare-fun res!410768 () Bool)

(assert (=> b!903316 (=> (not res!410768) (not e!590264))))

(assert (=> b!903316 (= res!410768 (not lt!335201))))

(declare-fun b!903317 () Bool)

(assert (=> b!903317 (= e!590268 (= lt!335201 call!53967))))

(declare-fun bm!53962 () Bool)

(assert (=> bm!53962 (= call!53967 (isEmpty!5798 s!10566))))

(declare-fun b!903318 () Bool)

(declare-fun res!410765 () Bool)

(assert (=> b!903318 (=> (not res!410765) (not e!590269))))

(assert (=> b!903318 (= res!410765 (isEmpty!5798 (tail!1163 s!10566)))))

(declare-fun b!903319 () Bool)

(assert (=> b!903319 (= e!590266 (not lt!335201))))

(declare-fun b!903320 () Bool)

(assert (=> b!903320 (= e!590269 (= (head!1601 s!10566) (c!146276 r!15766)))))

(declare-fun b!903321 () Bool)

(assert (=> b!903321 (= e!590270 (nullable!636 r!15766))))

(declare-fun b!903322 () Bool)

(declare-fun derivativeStep!448 (Regex!2377 C!5324) Regex!2377)

(assert (=> b!903322 (= e!590270 (matchR!915 (derivativeStep!448 r!15766 (head!1601 s!10566)) (tail!1163 s!10566)))))

(declare-fun b!903323 () Bool)

(assert (=> b!903323 (= e!590268 e!590266)))

(declare-fun c!146346 () Bool)

(assert (=> b!903323 (= c!146346 ((_ is EmptyLang!2377) r!15766))))

(declare-fun b!903324 () Bool)

(declare-fun res!410771 () Bool)

(assert (=> b!903324 (=> (not res!410771) (not e!590269))))

(assert (=> b!903324 (= res!410771 (not call!53967))))

(assert (= (and d!278568 c!146345) b!903321))

(assert (= (and d!278568 (not c!146345)) b!903322))

(assert (= (and d!278568 c!146347) b!903317))

(assert (= (and d!278568 (not c!146347)) b!903323))

(assert (= (and b!903323 c!146346) b!903319))

(assert (= (and b!903323 (not c!146346)) b!903312))

(assert (= (and b!903312 (not res!410767)) b!903315))

(assert (= (and b!903315 res!410770) b!903324))

(assert (= (and b!903324 res!410771) b!903318))

(assert (= (and b!903318 res!410765) b!903320))

(assert (= (and b!903315 (not res!410769)) b!903316))

(assert (= (and b!903316 res!410768) b!903313))

(assert (= (and b!903313 (not res!410772)) b!903311))

(assert (= (and b!903311 (not res!410766)) b!903314))

(assert (= (or b!903317 b!903313 b!903324) bm!53962))

(assert (=> bm!53962 m!1139841))

(declare-fun m!1139849 () Bool)

(assert (=> b!903314 m!1139849))

(assert (=> d!278568 m!1139841))

(assert (=> d!278568 m!1139781))

(declare-fun m!1139851 () Bool)

(assert (=> b!903311 m!1139851))

(assert (=> b!903311 m!1139851))

(declare-fun m!1139853 () Bool)

(assert (=> b!903311 m!1139853))

(declare-fun m!1139855 () Bool)

(assert (=> b!903321 m!1139855))

(assert (=> b!903322 m!1139849))

(assert (=> b!903322 m!1139849))

(declare-fun m!1139857 () Bool)

(assert (=> b!903322 m!1139857))

(assert (=> b!903322 m!1139851))

(assert (=> b!903322 m!1139857))

(assert (=> b!903322 m!1139851))

(declare-fun m!1139859 () Bool)

(assert (=> b!903322 m!1139859))

(assert (=> b!903318 m!1139851))

(assert (=> b!903318 m!1139851))

(assert (=> b!903318 m!1139853))

(assert (=> b!903320 m!1139849))

(assert (=> b!903011 d!278568))

(declare-fun d!278570 () Bool)

(assert (=> d!278570 (= (matchR!915 r!15766 s!10566) (matchRSpec!178 r!15766 s!10566))))

(declare-fun lt!335204 () Unit!14373)

(declare-fun choose!5458 (Regex!2377 List!9607) Unit!14373)

(assert (=> d!278570 (= lt!335204 (choose!5458 r!15766 s!10566))))

(assert (=> d!278570 (validRegex!846 r!15766)))

(assert (=> d!278570 (= (mainMatchTheorem!178 r!15766 s!10566) lt!335204)))

(declare-fun bs!235323 () Bool)

(assert (= bs!235323 d!278570))

(assert (=> bs!235323 m!1139785))

(assert (=> bs!235323 m!1139783))

(declare-fun m!1139861 () Bool)

(assert (=> bs!235323 m!1139861))

(assert (=> bs!235323 m!1139781))

(assert (=> b!903011 d!278570))

(declare-fun b!903325 () Bool)

(declare-fun e!590276 () Bool)

(declare-fun e!590273 () Bool)

(assert (=> b!903325 (= e!590276 e!590273)))

(declare-fun c!146348 () Bool)

(assert (=> b!903325 (= c!146348 ((_ is Union!2377) (removeUselessConcat!90 r!15766)))))

(declare-fun bm!53963 () Bool)

(declare-fun call!53969 () Bool)

(assert (=> bm!53963 (= call!53969 (validRegex!846 (ite c!146348 (regOne!5267 (removeUselessConcat!90 r!15766)) (regOne!5266 (removeUselessConcat!90 r!15766)))))))

(declare-fun b!903326 () Bool)

(declare-fun e!590277 () Bool)

(assert (=> b!903326 (= e!590277 e!590276)))

(declare-fun c!146349 () Bool)

(assert (=> b!903326 (= c!146349 ((_ is Star!2377) (removeUselessConcat!90 r!15766)))))

(declare-fun b!903327 () Bool)

(declare-fun e!590271 () Bool)

(declare-fun call!53968 () Bool)

(assert (=> b!903327 (= e!590271 call!53968)))

(declare-fun b!903328 () Bool)

(declare-fun res!410776 () Bool)

(declare-fun e!590275 () Bool)

(assert (=> b!903328 (=> res!410776 e!590275)))

(assert (=> b!903328 (= res!410776 (not ((_ is Concat!4210) (removeUselessConcat!90 r!15766))))))

(assert (=> b!903328 (= e!590273 e!590275)))

(declare-fun call!53970 () Bool)

(declare-fun bm!53964 () Bool)

(assert (=> bm!53964 (= call!53970 (validRegex!846 (ite c!146349 (reg!2706 (removeUselessConcat!90 r!15766)) (ite c!146348 (regTwo!5267 (removeUselessConcat!90 r!15766)) (regTwo!5266 (removeUselessConcat!90 r!15766))))))))

(declare-fun b!903329 () Bool)

(declare-fun res!410774 () Bool)

(assert (=> b!903329 (=> (not res!410774) (not e!590271))))

(assert (=> b!903329 (= res!410774 call!53969)))

(assert (=> b!903329 (= e!590273 e!590271)))

(declare-fun b!903330 () Bool)

(declare-fun e!590272 () Bool)

(assert (=> b!903330 (= e!590272 call!53968)))

(declare-fun b!903331 () Bool)

(assert (=> b!903331 (= e!590275 e!590272)))

(declare-fun res!410777 () Bool)

(assert (=> b!903331 (=> (not res!410777) (not e!590272))))

(assert (=> b!903331 (= res!410777 call!53969)))

(declare-fun d!278572 () Bool)

(declare-fun res!410775 () Bool)

(assert (=> d!278572 (=> res!410775 e!590277)))

(assert (=> d!278572 (= res!410775 ((_ is ElementMatch!2377) (removeUselessConcat!90 r!15766)))))

(assert (=> d!278572 (= (validRegex!846 (removeUselessConcat!90 r!15766)) e!590277)))

(declare-fun b!903332 () Bool)

(declare-fun e!590274 () Bool)

(assert (=> b!903332 (= e!590276 e!590274)))

(declare-fun res!410773 () Bool)

(assert (=> b!903332 (= res!410773 (not (nullable!636 (reg!2706 (removeUselessConcat!90 r!15766)))))))

(assert (=> b!903332 (=> (not res!410773) (not e!590274))))

(declare-fun bm!53965 () Bool)

(assert (=> bm!53965 (= call!53968 call!53970)))

(declare-fun b!903333 () Bool)

(assert (=> b!903333 (= e!590274 call!53970)))

(assert (= (and d!278572 (not res!410775)) b!903326))

(assert (= (and b!903326 c!146349) b!903332))

(assert (= (and b!903326 (not c!146349)) b!903325))

(assert (= (and b!903332 res!410773) b!903333))

(assert (= (and b!903325 c!146348) b!903329))

(assert (= (and b!903325 (not c!146348)) b!903328))

(assert (= (and b!903329 res!410774) b!903327))

(assert (= (and b!903328 (not res!410776)) b!903331))

(assert (= (and b!903331 res!410777) b!903330))

(assert (= (or b!903327 b!903330) bm!53965))

(assert (= (or b!903329 b!903331) bm!53963))

(assert (= (or b!903333 bm!53965) bm!53964))

(declare-fun m!1139863 () Bool)

(assert (=> bm!53963 m!1139863))

(declare-fun m!1139865 () Bool)

(assert (=> bm!53964 m!1139865))

(declare-fun m!1139867 () Bool)

(assert (=> b!903332 m!1139867))

(assert (=> b!903013 d!278572))

(declare-fun bm!53976 () Bool)

(declare-fun call!53982 () Regex!2377)

(declare-fun call!53984 () Regex!2377)

(assert (=> bm!53976 (= call!53982 call!53984)))

(declare-fun c!146362 () Bool)

(declare-fun bm!53977 () Bool)

(declare-fun call!53983 () Regex!2377)

(declare-fun c!146361 () Bool)

(declare-fun c!146360 () Bool)

(declare-fun c!146364 () Bool)

(assert (=> bm!53977 (= call!53983 (removeUselessConcat!90 (ite c!146360 (regTwo!5266 r!15766) (ite (or c!146364 c!146362) (regOne!5266 r!15766) (ite c!146361 (regTwo!5267 r!15766) (reg!2706 r!15766))))))))

(declare-fun b!903356 () Bool)

(assert (=> b!903356 (= c!146362 ((_ is Concat!4210) r!15766))))

(declare-fun e!590291 () Regex!2377)

(declare-fun e!590293 () Regex!2377)

(assert (=> b!903356 (= e!590291 e!590293)))

(declare-fun b!903357 () Bool)

(assert (=> b!903357 (= e!590291 call!53984)))

(declare-fun bm!53978 () Bool)

(assert (=> bm!53978 (= call!53984 call!53983)))

(declare-fun b!903358 () Bool)

(declare-fun e!590294 () Regex!2377)

(declare-fun call!53985 () Regex!2377)

(declare-fun call!53981 () Regex!2377)

(assert (=> b!903358 (= e!590294 (Union!2377 call!53985 call!53981))))

(declare-fun bm!53979 () Bool)

(assert (=> bm!53979 (= call!53985 (removeUselessConcat!90 (ite c!146362 (regTwo!5266 r!15766) (regOne!5267 r!15766))))))

(declare-fun d!278574 () Bool)

(declare-fun e!590292 () Bool)

(assert (=> d!278574 e!590292))

(declare-fun res!410780 () Bool)

(assert (=> d!278574 (=> (not res!410780) (not e!590292))))

(declare-fun lt!335207 () Regex!2377)

(assert (=> d!278574 (= res!410780 (validRegex!846 lt!335207))))

(declare-fun e!590290 () Regex!2377)

(assert (=> d!278574 (= lt!335207 e!590290)))

(assert (=> d!278574 (= c!146360 (and ((_ is Concat!4210) r!15766) ((_ is EmptyExpr!2377) (regOne!5266 r!15766))))))

(assert (=> d!278574 (validRegex!846 r!15766)))

(assert (=> d!278574 (= (removeUselessConcat!90 r!15766) lt!335207)))

(declare-fun b!903359 () Bool)

(declare-fun e!590295 () Regex!2377)

(assert (=> b!903359 (= e!590295 r!15766)))

(declare-fun b!903360 () Bool)

(assert (=> b!903360 (= e!590293 e!590294)))

(assert (=> b!903360 (= c!146361 ((_ is Union!2377) r!15766))))

(declare-fun b!903361 () Bool)

(assert (=> b!903361 (= e!590295 (Star!2377 call!53981))))

(declare-fun b!903362 () Bool)

(assert (=> b!903362 (= e!590292 (= (nullable!636 lt!335207) (nullable!636 r!15766)))))

(declare-fun b!903363 () Bool)

(assert (=> b!903363 (= e!590293 (Concat!4210 call!53982 call!53985))))

(declare-fun b!903364 () Bool)

(assert (=> b!903364 (= e!590290 call!53983)))

(declare-fun bm!53980 () Bool)

(assert (=> bm!53980 (= call!53981 call!53982)))

(declare-fun b!903365 () Bool)

(assert (=> b!903365 (= e!590290 e!590291)))

(assert (=> b!903365 (= c!146364 (and ((_ is Concat!4210) r!15766) ((_ is EmptyExpr!2377) (regTwo!5266 r!15766))))))

(declare-fun b!903366 () Bool)

(declare-fun c!146363 () Bool)

(assert (=> b!903366 (= c!146363 ((_ is Star!2377) r!15766))))

(assert (=> b!903366 (= e!590294 e!590295)))

(assert (= (and d!278574 c!146360) b!903364))

(assert (= (and d!278574 (not c!146360)) b!903365))

(assert (= (and b!903365 c!146364) b!903357))

(assert (= (and b!903365 (not c!146364)) b!903356))

(assert (= (and b!903356 c!146362) b!903363))

(assert (= (and b!903356 (not c!146362)) b!903360))

(assert (= (and b!903360 c!146361) b!903358))

(assert (= (and b!903360 (not c!146361)) b!903366))

(assert (= (and b!903366 c!146363) b!903361))

(assert (= (and b!903366 (not c!146363)) b!903359))

(assert (= (or b!903358 b!903361) bm!53980))

(assert (= (or b!903363 b!903358) bm!53979))

(assert (= (or b!903363 bm!53980) bm!53976))

(assert (= (or b!903357 bm!53976) bm!53978))

(assert (= (or b!903364 bm!53978) bm!53977))

(assert (= (and d!278574 res!410780) b!903362))

(declare-fun m!1139869 () Bool)

(assert (=> bm!53977 m!1139869))

(declare-fun m!1139871 () Bool)

(assert (=> bm!53979 m!1139871))

(declare-fun m!1139873 () Bool)

(assert (=> d!278574 m!1139873))

(assert (=> d!278574 m!1139781))

(declare-fun m!1139875 () Bool)

(assert (=> b!903362 m!1139875))

(assert (=> b!903362 m!1139855))

(assert (=> b!903013 d!278574))

(declare-fun b!903378 () Bool)

(declare-fun e!590298 () Bool)

(declare-fun tp!283025 () Bool)

(declare-fun tp!283023 () Bool)

(assert (=> b!903378 (= e!590298 (and tp!283025 tp!283023))))

(declare-fun b!903380 () Bool)

(declare-fun tp!283024 () Bool)

(declare-fun tp!283021 () Bool)

(assert (=> b!903380 (= e!590298 (and tp!283024 tp!283021))))

(declare-fun b!903377 () Bool)

(assert (=> b!903377 (= e!590298 tp_is_empty!4397)))

(declare-fun b!903379 () Bool)

(declare-fun tp!283022 () Bool)

(assert (=> b!903379 (= e!590298 tp!283022)))

(assert (=> b!903015 (= tp!282971 e!590298)))

(assert (= (and b!903015 ((_ is ElementMatch!2377) (reg!2706 r!15766))) b!903377))

(assert (= (and b!903015 ((_ is Concat!4210) (reg!2706 r!15766))) b!903378))

(assert (= (and b!903015 ((_ is Star!2377) (reg!2706 r!15766))) b!903379))

(assert (= (and b!903015 ((_ is Union!2377) (reg!2706 r!15766))) b!903380))

(declare-fun b!903382 () Bool)

(declare-fun e!590299 () Bool)

(declare-fun tp!283030 () Bool)

(declare-fun tp!283028 () Bool)

(assert (=> b!903382 (= e!590299 (and tp!283030 tp!283028))))

(declare-fun b!903384 () Bool)

(declare-fun tp!283029 () Bool)

(declare-fun tp!283026 () Bool)

(assert (=> b!903384 (= e!590299 (and tp!283029 tp!283026))))

(declare-fun b!903381 () Bool)

(assert (=> b!903381 (= e!590299 tp_is_empty!4397)))

(declare-fun b!903383 () Bool)

(declare-fun tp!283027 () Bool)

(assert (=> b!903383 (= e!590299 tp!283027)))

(assert (=> b!903009 (= tp!282970 e!590299)))

(assert (= (and b!903009 ((_ is ElementMatch!2377) (regOne!5266 r!15766))) b!903381))

(assert (= (and b!903009 ((_ is Concat!4210) (regOne!5266 r!15766))) b!903382))

(assert (= (and b!903009 ((_ is Star!2377) (regOne!5266 r!15766))) b!903383))

(assert (= (and b!903009 ((_ is Union!2377) (regOne!5266 r!15766))) b!903384))

(declare-fun b!903386 () Bool)

(declare-fun e!590300 () Bool)

(declare-fun tp!283035 () Bool)

(declare-fun tp!283033 () Bool)

(assert (=> b!903386 (= e!590300 (and tp!283035 tp!283033))))

(declare-fun b!903388 () Bool)

(declare-fun tp!283034 () Bool)

(declare-fun tp!283031 () Bool)

(assert (=> b!903388 (= e!590300 (and tp!283034 tp!283031))))

(declare-fun b!903385 () Bool)

(assert (=> b!903385 (= e!590300 tp_is_empty!4397)))

(declare-fun b!903387 () Bool)

(declare-fun tp!283032 () Bool)

(assert (=> b!903387 (= e!590300 tp!283032)))

(assert (=> b!903009 (= tp!282972 e!590300)))

(assert (= (and b!903009 ((_ is ElementMatch!2377) (regTwo!5266 r!15766))) b!903385))

(assert (= (and b!903009 ((_ is Concat!4210) (regTwo!5266 r!15766))) b!903386))

(assert (= (and b!903009 ((_ is Star!2377) (regTwo!5266 r!15766))) b!903387))

(assert (= (and b!903009 ((_ is Union!2377) (regTwo!5266 r!15766))) b!903388))

(declare-fun b!903390 () Bool)

(declare-fun e!590301 () Bool)

(declare-fun tp!283040 () Bool)

(declare-fun tp!283038 () Bool)

(assert (=> b!903390 (= e!590301 (and tp!283040 tp!283038))))

(declare-fun b!903392 () Bool)

(declare-fun tp!283039 () Bool)

(declare-fun tp!283036 () Bool)

(assert (=> b!903392 (= e!590301 (and tp!283039 tp!283036))))

(declare-fun b!903389 () Bool)

(assert (=> b!903389 (= e!590301 tp_is_empty!4397)))

(declare-fun b!903391 () Bool)

(declare-fun tp!283037 () Bool)

(assert (=> b!903391 (= e!590301 tp!283037)))

(assert (=> b!903010 (= tp!282969 e!590301)))

(assert (= (and b!903010 ((_ is ElementMatch!2377) (regOne!5267 r!15766))) b!903389))

(assert (= (and b!903010 ((_ is Concat!4210) (regOne!5267 r!15766))) b!903390))

(assert (= (and b!903010 ((_ is Star!2377) (regOne!5267 r!15766))) b!903391))

(assert (= (and b!903010 ((_ is Union!2377) (regOne!5267 r!15766))) b!903392))

(declare-fun b!903394 () Bool)

(declare-fun e!590302 () Bool)

(declare-fun tp!283045 () Bool)

(declare-fun tp!283043 () Bool)

(assert (=> b!903394 (= e!590302 (and tp!283045 tp!283043))))

(declare-fun b!903396 () Bool)

(declare-fun tp!283044 () Bool)

(declare-fun tp!283041 () Bool)

(assert (=> b!903396 (= e!590302 (and tp!283044 tp!283041))))

(declare-fun b!903393 () Bool)

(assert (=> b!903393 (= e!590302 tp_is_empty!4397)))

(declare-fun b!903395 () Bool)

(declare-fun tp!283042 () Bool)

(assert (=> b!903395 (= e!590302 tp!283042)))

(assert (=> b!903010 (= tp!282967 e!590302)))

(assert (= (and b!903010 ((_ is ElementMatch!2377) (regTwo!5267 r!15766))) b!903393))

(assert (= (and b!903010 ((_ is Concat!4210) (regTwo!5267 r!15766))) b!903394))

(assert (= (and b!903010 ((_ is Star!2377) (regTwo!5267 r!15766))) b!903395))

(assert (= (and b!903010 ((_ is Union!2377) (regTwo!5267 r!15766))) b!903396))

(declare-fun b!903401 () Bool)

(declare-fun e!590305 () Bool)

(declare-fun tp!283048 () Bool)

(assert (=> b!903401 (= e!590305 (and tp_is_empty!4397 tp!283048))))

(assert (=> b!903012 (= tp!282968 e!590305)))

(assert (= (and b!903012 ((_ is Cons!9591) (t!100653 s!10566))) b!903401))

(check-sat (not b!903387) (not b!903275) (not b!903379) (not d!278570) (not b!903383) (not b!903384) (not b!903378) (not b!903318) (not b!903273) (not bm!53977) (not b!903314) (not b!903311) (not bm!53962) tp_is_empty!4397 (not bm!53963) (not b!903401) (not b!903390) (not bm!53915) (not b!903392) (not b!903332) (not b!903391) (not bm!53979) (not b!903382) (not b!903380) (not b!903321) (not b!903063) (not b!903386) (not b!903394) (not b!903388) (not bm!53958) (not b!903362) (not b!903322) (not b!903395) (not b!903320) (not b!903396) (not d!278574) (not d!278568) (not bm!53959) (not bm!53964) (not bm!53916))
(check-sat)
