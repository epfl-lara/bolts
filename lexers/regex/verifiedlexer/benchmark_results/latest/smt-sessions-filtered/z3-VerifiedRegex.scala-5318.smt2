; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272090 () Bool)

(assert start!272090)

(declare-datatypes ((T!54738 0))(
  ( (T!54739 (val!10324 Int)) )
))
(declare-datatypes ((List!32937 0))(
  ( (Nil!32832) (Cons!32832 (h!38252 T!54738) (t!229888 List!32937)) )
))
(declare-fun l!3873 () List!32937)

(declare-datatypes ((Conc!10162 0) (BalanceConc!19944 0) (Object!5244 0) (IArray!20329 0) (List!32939 0))(
  ( (Node!10162 (left!24764 Conc!10162) (right!25094 Conc!10162) (csize!20554 Int) (cheight!10373 Int)) (Leaf!15481 (xs!13274 IArray!20329) (csize!20555 Int)) (Empty!10162) )
  ( (BalanceConc!19945 (c!455430 Conc!10162)) )
  ( (BalanceConc!19943 (value!158086 BalanceConc!19944)) (List!32938 (value!158087 List!32939)) (Character!104 (value!158088 (_ BitVec 16))) (Open!104 (value!158089 Int)) )
  ( (IArray!20330 (innerList!10222 List!32939)) )
  ( (Nil!32833) (Cons!32833 (h!38253 Object!5244) (t!229889 List!32939)) )
))
(declare-datatypes ((Vector!216 0))(
  ( (Vector!217 (underlying!8348 Object!5244) (overflowing!165 List!32937)) )
))
(declare-fun list!12297 (Vector!216) List!32937)

(declare-fun rec!17 (List!32937 Vector!216) Vector!216)

(declare-fun empty!2695 () Vector!216)

(assert (=> start!272090 (not (= (list!12297 (rec!17 l!3873 empty!2695)) l!3873))))

(declare-fun e!1777944 () Bool)

(assert (=> start!272090 e!1777944))

(declare-fun b!2811260 () Bool)

(declare-fun tp_is_empty!14373 () Bool)

(declare-fun tp!897819 () Bool)

(assert (=> b!2811260 (= e!1777944 (and tp_is_empty!14373 tp!897819))))

(get-info :version)

(assert (= (and start!272090 ((_ is Cons!32832) l!3873)) b!2811260))

(declare-fun m!3240941 () Bool)

(assert (=> start!272090 m!3240941))

(assert (=> start!272090 m!3240941))

(declare-fun m!3240943 () Bool)

(assert (=> start!272090 m!3240943))

(assert (=> start!272090 m!3240943))

(declare-fun m!3240945 () Bool)

(assert (=> start!272090 m!3240945))

(check-sat (not start!272090) (not b!2811260) tp_is_empty!14373)
(check-sat)
(get-model)

(declare-fun d!815965 () Bool)

(declare-fun choose!16582 (Vector!216) List!32937)

(assert (=> d!815965 (= (list!12297 (rec!17 l!3873 empty!2695)) (choose!16582 (rec!17 l!3873 empty!2695)))))

(declare-fun bs!516389 () Bool)

(assert (= bs!516389 d!815965))

(assert (=> bs!516389 m!3240943))

(declare-fun m!3240949 () Bool)

(assert (=> bs!516389 m!3240949))

(assert (=> start!272090 d!815965))

(declare-fun d!815969 () Bool)

(declare-fun lt!1004249 () Vector!216)

(declare-fun ++!8058 (List!32937 List!32937) List!32937)

(assert (=> d!815969 (= (list!12297 lt!1004249) (++!8058 (list!12297 empty!2695) l!3873))))

(declare-fun e!1777949 () Vector!216)

(assert (=> d!815969 (= lt!1004249 e!1777949)))

(declare-fun c!455435 () Bool)

(assert (=> d!815969 (= c!455435 ((_ is Nil!32832) l!3873))))

(assert (=> d!815969 (= (rec!17 l!3873 empty!2695) lt!1004249)))

(declare-fun b!2811269 () Bool)

(assert (=> b!2811269 (= e!1777949 empty!2695)))

(declare-fun b!2811270 () Bool)

(declare-fun lt!1004251 () Vector!216)

(assert (=> b!2811270 (= e!1777949 (rec!17 (t!229888 l!3873) lt!1004251))))

(declare-fun lt!1004248 () List!32937)

(assert (=> b!2811270 (= lt!1004248 (list!12297 empty!2695))))

(declare-fun lt!1004247 () List!32937)

(assert (=> b!2811270 (= lt!1004247 (Cons!32832 (h!38252 l!3873) Nil!32832))))

(declare-datatypes ((Unit!46846 0))(
  ( (Unit!46847) )
))
(declare-fun lt!1004246 () Unit!46846)

(declare-fun lemmaConcatAssociativity!1667 (List!32937 List!32937 List!32937) Unit!46846)

(assert (=> b!2811270 (= lt!1004246 (lemmaConcatAssociativity!1667 lt!1004248 lt!1004247 (t!229888 l!3873)))))

(assert (=> b!2811270 (= (++!8058 (++!8058 lt!1004248 lt!1004247) (t!229888 l!3873)) (++!8058 lt!1004248 (++!8058 lt!1004247 (t!229888 l!3873))))))

(declare-fun lt!1004250 () Unit!46846)

(assert (=> b!2811270 (= lt!1004250 lt!1004246)))

(declare-fun $colon+!192 (Vector!216 T!54738) Vector!216)

(assert (=> b!2811270 (= lt!1004251 ($colon+!192 empty!2695 (h!38252 l!3873)))))

(declare-fun $colon+!193 (List!32937 T!54738) List!32937)

(assert (=> b!2811270 (= (list!12297 lt!1004251) ($colon+!193 (list!12297 empty!2695) (h!38252 l!3873)))))

(assert (= (and d!815969 c!455435) b!2811269))

(assert (= (and d!815969 (not c!455435)) b!2811270))

(declare-fun m!3240951 () Bool)

(assert (=> d!815969 m!3240951))

(assert (=> d!815969 m!3240941))

(declare-fun m!3240953 () Bool)

(assert (=> d!815969 m!3240953))

(assert (=> d!815969 m!3240953))

(declare-fun m!3240955 () Bool)

(assert (=> d!815969 m!3240955))

(declare-fun m!3240957 () Bool)

(assert (=> b!2811270 m!3240957))

(declare-fun m!3240959 () Bool)

(assert (=> b!2811270 m!3240959))

(declare-fun m!3240961 () Bool)

(assert (=> b!2811270 m!3240961))

(declare-fun m!3240963 () Bool)

(assert (=> b!2811270 m!3240963))

(assert (=> b!2811270 m!3240957))

(declare-fun m!3240965 () Bool)

(assert (=> b!2811270 m!3240965))

(declare-fun m!3240967 () Bool)

(assert (=> b!2811270 m!3240967))

(assert (=> b!2811270 m!3240941))

(declare-fun m!3240969 () Bool)

(assert (=> b!2811270 m!3240969))

(declare-fun m!3240971 () Bool)

(assert (=> b!2811270 m!3240971))

(assert (=> b!2811270 m!3240961))

(assert (=> b!2811270 m!3240953))

(declare-fun m!3240973 () Bool)

(assert (=> b!2811270 m!3240973))

(assert (=> b!2811270 m!3240941))

(assert (=> b!2811270 m!3240953))

(assert (=> start!272090 d!815969))

(declare-fun d!815971 () Bool)

(declare-fun lt!1004260 () Vector!216)

(assert (=> d!815971 (= (list!12297 lt!1004260) Nil!32832)))

(declare-fun choose!16584 () Vector!216)

(assert (=> d!815971 (= lt!1004260 choose!16584)))

(assert (=> d!815971 (= empty!2695 lt!1004260)))

(declare-fun bs!516390 () Bool)

(assert (= bs!516390 d!815971))

(declare-fun m!3240999 () Bool)

(assert (=> bs!516390 m!3240999))

(declare-fun m!3241001 () Bool)

(assert (=> bs!516390 m!3241001))

(assert (=> start!272090 d!815971))

(declare-fun b!2811277 () Bool)

(declare-fun e!1777953 () Bool)

(declare-fun tp!897822 () Bool)

(assert (=> b!2811277 (= e!1777953 (and tp_is_empty!14373 tp!897822))))

(assert (=> b!2811260 (= tp!897819 e!1777953)))

(assert (= (and b!2811260 ((_ is Cons!32832) (t!229888 l!3873))) b!2811277))

(check-sat (not d!815971) (not b!2811270) (not b!2811277) (not d!815965) (not d!815969) tp_is_empty!14373)
(check-sat)
(get-model)

(declare-fun d!815975 () Bool)

(assert (=> d!815975 true))

(declare-fun e!1777959 () Bool)

(assert (=> d!815975 e!1777959))

(declare-fun res!1170406 () List!32937)

(assert (=> d!815975 (= (choose!16582 (rec!17 l!3873 empty!2695)) res!1170406)))

(declare-fun b!2811285 () Bool)

(declare-fun tp!897828 () Bool)

(assert (=> b!2811285 (= e!1777959 (and tp_is_empty!14373 tp!897828))))

(assert (= (and d!815975 ((_ is Cons!32832) res!1170406)) b!2811285))

(assert (=> d!815965 d!815975))

(declare-fun d!815977 () Bool)

(assert (=> d!815977 (= (list!12297 lt!1004249) (choose!16582 lt!1004249))))

(declare-fun bs!516392 () Bool)

(assert (= bs!516392 d!815977))

(declare-fun m!3241007 () Bool)

(assert (=> bs!516392 m!3241007))

(assert (=> d!815969 d!815977))

(declare-fun b!2811305 () Bool)

(declare-fun e!1777971 () List!32937)

(assert (=> b!2811305 (= e!1777971 l!3873)))

(declare-fun b!2811307 () Bool)

(declare-fun res!1170419 () Bool)

(declare-fun e!1777972 () Bool)

(assert (=> b!2811307 (=> (not res!1170419) (not e!1777972))))

(declare-fun lt!1004268 () List!32937)

(declare-fun size!25595 (List!32937) Int)

(assert (=> b!2811307 (= res!1170419 (= (size!25595 lt!1004268) (+ (size!25595 (list!12297 empty!2695)) (size!25595 l!3873))))))

(declare-fun d!815979 () Bool)

(assert (=> d!815979 e!1777972))

(declare-fun res!1170418 () Bool)

(assert (=> d!815979 (=> (not res!1170418) (not e!1777972))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4570 (List!32937) (InoxSet T!54738))

(assert (=> d!815979 (= res!1170418 (= (content!4570 lt!1004268) ((_ map or) (content!4570 (list!12297 empty!2695)) (content!4570 l!3873))))))

(assert (=> d!815979 (= lt!1004268 e!1777971)))

(declare-fun c!455441 () Bool)

(assert (=> d!815979 (= c!455441 ((_ is Nil!32832) (list!12297 empty!2695)))))

(assert (=> d!815979 (= (++!8058 (list!12297 empty!2695) l!3873) lt!1004268)))

(declare-fun b!2811308 () Bool)

(assert (=> b!2811308 (= e!1777972 (or (not (= l!3873 Nil!32832)) (= lt!1004268 (list!12297 empty!2695))))))

(declare-fun b!2811306 () Bool)

(assert (=> b!2811306 (= e!1777971 (Cons!32832 (h!38252 (list!12297 empty!2695)) (++!8058 (t!229888 (list!12297 empty!2695)) l!3873)))))

(assert (= (and d!815979 c!455441) b!2811305))

(assert (= (and d!815979 (not c!455441)) b!2811306))

(assert (= (and d!815979 res!1170418) b!2811307))

(assert (= (and b!2811307 res!1170419) b!2811308))

(declare-fun m!3241009 () Bool)

(assert (=> b!2811307 m!3241009))

(assert (=> b!2811307 m!3240953))

(declare-fun m!3241011 () Bool)

(assert (=> b!2811307 m!3241011))

(declare-fun m!3241013 () Bool)

(assert (=> b!2811307 m!3241013))

(declare-fun m!3241015 () Bool)

(assert (=> d!815979 m!3241015))

(assert (=> d!815979 m!3240953))

(declare-fun m!3241017 () Bool)

(assert (=> d!815979 m!3241017))

(declare-fun m!3241019 () Bool)

(assert (=> d!815979 m!3241019))

(declare-fun m!3241021 () Bool)

(assert (=> b!2811306 m!3241021))

(assert (=> d!815969 d!815979))

(declare-fun d!815985 () Bool)

(assert (=> d!815985 (= (list!12297 empty!2695) (choose!16582 empty!2695))))

(declare-fun bs!516393 () Bool)

(assert (= bs!516393 d!815985))

(assert (=> bs!516393 m!3240941))

(declare-fun m!3241023 () Bool)

(assert (=> bs!516393 m!3241023))

(assert (=> d!815969 d!815985))

(declare-fun b!2811309 () Bool)

(declare-fun e!1777973 () List!32937)

(assert (=> b!2811309 (= e!1777973 lt!1004247)))

(declare-fun b!2811311 () Bool)

(declare-fun res!1170421 () Bool)

(declare-fun e!1777974 () Bool)

(assert (=> b!2811311 (=> (not res!1170421) (not e!1777974))))

(declare-fun lt!1004269 () List!32937)

(assert (=> b!2811311 (= res!1170421 (= (size!25595 lt!1004269) (+ (size!25595 lt!1004248) (size!25595 lt!1004247))))))

(declare-fun d!815987 () Bool)

(assert (=> d!815987 e!1777974))

(declare-fun res!1170420 () Bool)

(assert (=> d!815987 (=> (not res!1170420) (not e!1777974))))

(assert (=> d!815987 (= res!1170420 (= (content!4570 lt!1004269) ((_ map or) (content!4570 lt!1004248) (content!4570 lt!1004247))))))

(assert (=> d!815987 (= lt!1004269 e!1777973)))

(declare-fun c!455442 () Bool)

(assert (=> d!815987 (= c!455442 ((_ is Nil!32832) lt!1004248))))

(assert (=> d!815987 (= (++!8058 lt!1004248 lt!1004247) lt!1004269)))

(declare-fun b!2811312 () Bool)

(assert (=> b!2811312 (= e!1777974 (or (not (= lt!1004247 Nil!32832)) (= lt!1004269 lt!1004248)))))

(declare-fun b!2811310 () Bool)

(assert (=> b!2811310 (= e!1777973 (Cons!32832 (h!38252 lt!1004248) (++!8058 (t!229888 lt!1004248) lt!1004247)))))

(assert (= (and d!815987 c!455442) b!2811309))

(assert (= (and d!815987 (not c!455442)) b!2811310))

(assert (= (and d!815987 res!1170420) b!2811311))

(assert (= (and b!2811311 res!1170421) b!2811312))

(declare-fun m!3241025 () Bool)

(assert (=> b!2811311 m!3241025))

(declare-fun m!3241027 () Bool)

(assert (=> b!2811311 m!3241027))

(declare-fun m!3241029 () Bool)

(assert (=> b!2811311 m!3241029))

(declare-fun m!3241031 () Bool)

(assert (=> d!815987 m!3241031))

(declare-fun m!3241033 () Bool)

(assert (=> d!815987 m!3241033))

(declare-fun m!3241035 () Bool)

(assert (=> d!815987 m!3241035))

(declare-fun m!3241037 () Bool)

(assert (=> b!2811310 m!3241037))

(assert (=> b!2811270 d!815987))

(declare-fun b!2811317 () Bool)

(declare-fun e!1777977 () List!32937)

(assert (=> b!2811317 (= e!1777977 (t!229888 l!3873))))

(declare-fun b!2811319 () Bool)

(declare-fun res!1170425 () Bool)

(declare-fun e!1777978 () Bool)

(assert (=> b!2811319 (=> (not res!1170425) (not e!1777978))))

(declare-fun lt!1004271 () List!32937)

(assert (=> b!2811319 (= res!1170425 (= (size!25595 lt!1004271) (+ (size!25595 (++!8058 lt!1004248 lt!1004247)) (size!25595 (t!229888 l!3873)))))))

(declare-fun d!815989 () Bool)

(assert (=> d!815989 e!1777978))

(declare-fun res!1170424 () Bool)

(assert (=> d!815989 (=> (not res!1170424) (not e!1777978))))

(assert (=> d!815989 (= res!1170424 (= (content!4570 lt!1004271) ((_ map or) (content!4570 (++!8058 lt!1004248 lt!1004247)) (content!4570 (t!229888 l!3873)))))))

(assert (=> d!815989 (= lt!1004271 e!1777977)))

(declare-fun c!455444 () Bool)

(assert (=> d!815989 (= c!455444 ((_ is Nil!32832) (++!8058 lt!1004248 lt!1004247)))))

(assert (=> d!815989 (= (++!8058 (++!8058 lt!1004248 lt!1004247) (t!229888 l!3873)) lt!1004271)))

(declare-fun b!2811320 () Bool)

(assert (=> b!2811320 (= e!1777978 (or (not (= (t!229888 l!3873) Nil!32832)) (= lt!1004271 (++!8058 lt!1004248 lt!1004247))))))

(declare-fun b!2811318 () Bool)

(assert (=> b!2811318 (= e!1777977 (Cons!32832 (h!38252 (++!8058 lt!1004248 lt!1004247)) (++!8058 (t!229888 (++!8058 lt!1004248 lt!1004247)) (t!229888 l!3873))))))

(assert (= (and d!815989 c!455444) b!2811317))

(assert (= (and d!815989 (not c!455444)) b!2811318))

(assert (= (and d!815989 res!1170424) b!2811319))

(assert (= (and b!2811319 res!1170425) b!2811320))

(declare-fun m!3241055 () Bool)

(assert (=> b!2811319 m!3241055))

(assert (=> b!2811319 m!3240957))

(declare-fun m!3241057 () Bool)

(assert (=> b!2811319 m!3241057))

(declare-fun m!3241059 () Bool)

(assert (=> b!2811319 m!3241059))

(declare-fun m!3241061 () Bool)

(assert (=> d!815989 m!3241061))

(assert (=> d!815989 m!3240957))

(declare-fun m!3241063 () Bool)

(assert (=> d!815989 m!3241063))

(declare-fun m!3241065 () Bool)

(assert (=> d!815989 m!3241065))

(declare-fun m!3241067 () Bool)

(assert (=> b!2811318 m!3241067))

(assert (=> b!2811270 d!815989))

(declare-fun b!2811321 () Bool)

(declare-fun e!1777979 () List!32937)

(assert (=> b!2811321 (= e!1777979 (t!229888 l!3873))))

(declare-fun b!2811323 () Bool)

(declare-fun res!1170427 () Bool)

(declare-fun e!1777980 () Bool)

(assert (=> b!2811323 (=> (not res!1170427) (not e!1777980))))

(declare-fun lt!1004272 () List!32937)

(assert (=> b!2811323 (= res!1170427 (= (size!25595 lt!1004272) (+ (size!25595 lt!1004247) (size!25595 (t!229888 l!3873)))))))

(declare-fun d!815995 () Bool)

(assert (=> d!815995 e!1777980))

(declare-fun res!1170426 () Bool)

(assert (=> d!815995 (=> (not res!1170426) (not e!1777980))))

(assert (=> d!815995 (= res!1170426 (= (content!4570 lt!1004272) ((_ map or) (content!4570 lt!1004247) (content!4570 (t!229888 l!3873)))))))

(assert (=> d!815995 (= lt!1004272 e!1777979)))

(declare-fun c!455445 () Bool)

(assert (=> d!815995 (= c!455445 ((_ is Nil!32832) lt!1004247))))

(assert (=> d!815995 (= (++!8058 lt!1004247 (t!229888 l!3873)) lt!1004272)))

(declare-fun b!2811324 () Bool)

(assert (=> b!2811324 (= e!1777980 (or (not (= (t!229888 l!3873) Nil!32832)) (= lt!1004272 lt!1004247)))))

(declare-fun b!2811322 () Bool)

(assert (=> b!2811322 (= e!1777979 (Cons!32832 (h!38252 lt!1004247) (++!8058 (t!229888 lt!1004247) (t!229888 l!3873))))))

(assert (= (and d!815995 c!455445) b!2811321))

(assert (= (and d!815995 (not c!455445)) b!2811322))

(assert (= (and d!815995 res!1170426) b!2811323))

(assert (= (and b!2811323 res!1170427) b!2811324))

(declare-fun m!3241069 () Bool)

(assert (=> b!2811323 m!3241069))

(assert (=> b!2811323 m!3241029))

(assert (=> b!2811323 m!3241059))

(declare-fun m!3241071 () Bool)

(assert (=> d!815995 m!3241071))

(assert (=> d!815995 m!3241035))

(assert (=> d!815995 m!3241065))

(declare-fun m!3241073 () Bool)

(assert (=> b!2811322 m!3241073))

(assert (=> b!2811270 d!815995))

(declare-fun b!2811325 () Bool)

(declare-fun e!1777981 () List!32937)

(assert (=> b!2811325 (= e!1777981 (++!8058 lt!1004247 (t!229888 l!3873)))))

(declare-fun b!2811327 () Bool)

(declare-fun res!1170429 () Bool)

(declare-fun e!1777982 () Bool)

(assert (=> b!2811327 (=> (not res!1170429) (not e!1777982))))

(declare-fun lt!1004273 () List!32937)

(assert (=> b!2811327 (= res!1170429 (= (size!25595 lt!1004273) (+ (size!25595 lt!1004248) (size!25595 (++!8058 lt!1004247 (t!229888 l!3873))))))))

(declare-fun d!815997 () Bool)

(assert (=> d!815997 e!1777982))

(declare-fun res!1170428 () Bool)

(assert (=> d!815997 (=> (not res!1170428) (not e!1777982))))

(assert (=> d!815997 (= res!1170428 (= (content!4570 lt!1004273) ((_ map or) (content!4570 lt!1004248) (content!4570 (++!8058 lt!1004247 (t!229888 l!3873))))))))

(assert (=> d!815997 (= lt!1004273 e!1777981)))

(declare-fun c!455446 () Bool)

(assert (=> d!815997 (= c!455446 ((_ is Nil!32832) lt!1004248))))

(assert (=> d!815997 (= (++!8058 lt!1004248 (++!8058 lt!1004247 (t!229888 l!3873))) lt!1004273)))

(declare-fun b!2811328 () Bool)

(assert (=> b!2811328 (= e!1777982 (or (not (= (++!8058 lt!1004247 (t!229888 l!3873)) Nil!32832)) (= lt!1004273 lt!1004248)))))

(declare-fun b!2811326 () Bool)

(assert (=> b!2811326 (= e!1777981 (Cons!32832 (h!38252 lt!1004248) (++!8058 (t!229888 lt!1004248) (++!8058 lt!1004247 (t!229888 l!3873)))))))

(assert (= (and d!815997 c!455446) b!2811325))

(assert (= (and d!815997 (not c!455446)) b!2811326))

(assert (= (and d!815997 res!1170428) b!2811327))

(assert (= (and b!2811327 res!1170429) b!2811328))

(declare-fun m!3241075 () Bool)

(assert (=> b!2811327 m!3241075))

(assert (=> b!2811327 m!3241027))

(assert (=> b!2811327 m!3240961))

(declare-fun m!3241077 () Bool)

(assert (=> b!2811327 m!3241077))

(declare-fun m!3241079 () Bool)

(assert (=> d!815997 m!3241079))

(assert (=> d!815997 m!3241033))

(assert (=> d!815997 m!3240961))

(declare-fun m!3241081 () Bool)

(assert (=> d!815997 m!3241081))

(assert (=> b!2811326 m!3240961))

(declare-fun m!3241083 () Bool)

(assert (=> b!2811326 m!3241083))

(assert (=> b!2811270 d!815997))

(declare-fun d!815999 () Bool)

(declare-fun lt!1004281 () Vector!216)

(assert (=> d!815999 (= (list!12297 lt!1004281) ($colon+!193 (list!12297 empty!2695) (h!38252 l!3873)))))

(declare-fun choose!16587 (Vector!216 T!54738) Vector!216)

(assert (=> d!815999 (= lt!1004281 (choose!16587 empty!2695 (h!38252 l!3873)))))

(assert (=> d!815999 (= ($colon+!192 empty!2695 (h!38252 l!3873)) lt!1004281)))

(declare-fun bs!516396 () Bool)

(assert (= bs!516396 d!815999))

(declare-fun m!3241101 () Bool)

(assert (=> bs!516396 m!3241101))

(assert (=> bs!516396 m!3240941))

(assert (=> bs!516396 m!3240953))

(assert (=> bs!516396 m!3240953))

(assert (=> bs!516396 m!3240973))

(assert (=> bs!516396 m!3240941))

(declare-fun m!3241111 () Bool)

(assert (=> bs!516396 m!3241111))

(assert (=> b!2811270 d!815999))

(declare-fun d!816007 () Bool)

(assert (=> d!816007 (= (list!12297 lt!1004251) (choose!16582 lt!1004251))))

(declare-fun bs!516397 () Bool)

(assert (= bs!516397 d!816007))

(declare-fun m!3241113 () Bool)

(assert (=> bs!516397 m!3241113))

(assert (=> b!2811270 d!816007))

(declare-fun bm!183058 () Bool)

(declare-fun call!183064 () (_ BitVec 32))

(declare-fun lt!1004287 () List!32937)

(declare-fun isize!62 (List!32937) (_ BitVec 32))

(assert (=> bm!183058 (= call!183064 (isize!62 lt!1004287))))

(declare-fun d!816009 () Bool)

(declare-fun e!1778004 () Bool)

(assert (=> d!816009 e!1778004))

(declare-fun res!1170456 () Bool)

(assert (=> d!816009 (=> (not res!1170456) (not e!1778004))))

(assert (=> d!816009 (= res!1170456 ((_ is Cons!32832) lt!1004287))))

(declare-fun e!1778003 () List!32937)

(assert (=> d!816009 (= lt!1004287 e!1778003)))

(declare-fun c!455460 () Bool)

(assert (=> d!816009 (= c!455460 ((_ is Nil!32832) (list!12297 empty!2695)))))

(assert (=> d!816009 (= ($colon+!193 (list!12297 empty!2695) (h!38252 l!3873)) lt!1004287)))

(declare-fun b!2811377 () Bool)

(declare-fun e!1778002 () Bool)

(declare-fun call!183063 () (_ BitVec 32))

(assert (=> b!2811377 (= e!1778002 (= call!183064 call!183063))))

(declare-fun b!2811378 () Bool)

(assert (=> b!2811378 (= e!1778003 (Cons!32832 (h!38252 (list!12297 empty!2695)) ($colon+!193 (t!229888 (list!12297 empty!2695)) (h!38252 l!3873))))))

(declare-fun b!2811379 () Bool)

(assert (=> b!2811379 (= e!1778003 (Cons!32832 (h!38252 l!3873) (list!12297 empty!2695)))))

(declare-fun b!2811380 () Bool)

(assert (=> b!2811380 (= e!1778004 (= lt!1004287 (++!8058 (list!12297 empty!2695) (Cons!32832 (h!38252 l!3873) Nil!32832))))))

(declare-fun b!2811381 () Bool)

(declare-fun res!1170454 () Bool)

(assert (=> b!2811381 (=> (not res!1170454) (not e!1778004))))

(assert (=> b!2811381 (= res!1170454 (= (size!25595 lt!1004287) (+ (size!25595 (list!12297 empty!2695)) 1)))))

(declare-fun b!2811382 () Bool)

(declare-fun res!1170455 () Bool)

(assert (=> b!2811382 (=> (not res!1170455) (not e!1778004))))

(assert (=> b!2811382 (= res!1170455 (= (content!4570 lt!1004287) ((_ map or) (content!4570 (list!12297 empty!2695)) (store ((as const (Array T!54738 Bool)) false) (h!38252 l!3873) true))))))

(declare-fun bm!183059 () Bool)

(assert (=> bm!183059 (= call!183063 (isize!62 (list!12297 empty!2695)))))

(declare-fun b!2811383 () Bool)

(declare-fun res!1170457 () Bool)

(assert (=> b!2811383 (=> (not res!1170457) (not e!1778004))))

(assert (=> b!2811383 (= res!1170457 e!1778002)))

(declare-fun c!455459 () Bool)

(assert (=> b!2811383 (= c!455459 (bvslt (isize!62 (list!12297 empty!2695)) #b01111111111111111111111111111111))))

(declare-fun b!2811384 () Bool)

(assert (=> b!2811384 (= e!1778002 (= call!183064 (bvadd call!183063 #b00000000000000000000000000000001)))))

(assert (= (and d!816009 c!455460) b!2811379))

(assert (= (and d!816009 (not c!455460)) b!2811378))

(assert (= (and d!816009 res!1170456) b!2811381))

(assert (= (and b!2811381 res!1170454) b!2811383))

(assert (= (and b!2811383 c!455459) b!2811384))

(assert (= (and b!2811383 (not c!455459)) b!2811377))

(assert (= (or b!2811384 b!2811377) bm!183058))

(assert (= (or b!2811384 b!2811377) bm!183059))

(assert (= (and b!2811383 res!1170457) b!2811382))

(assert (= (and b!2811382 res!1170455) b!2811380))

(assert (=> b!2811380 m!3240953))

(declare-fun m!3241119 () Bool)

(assert (=> b!2811380 m!3241119))

(declare-fun m!3241123 () Bool)

(assert (=> bm!183058 m!3241123))

(declare-fun m!3241127 () Bool)

(assert (=> b!2811378 m!3241127))

(assert (=> b!2811383 m!3240953))

(declare-fun m!3241131 () Bool)

(assert (=> b!2811383 m!3241131))

(declare-fun m!3241135 () Bool)

(assert (=> b!2811382 m!3241135))

(assert (=> b!2811382 m!3240953))

(assert (=> b!2811382 m!3241017))

(declare-fun m!3241141 () Bool)

(assert (=> b!2811382 m!3241141))

(assert (=> bm!183059 m!3240953))

(assert (=> bm!183059 m!3241131))

(declare-fun m!3241145 () Bool)

(assert (=> b!2811381 m!3241145))

(assert (=> b!2811381 m!3240953))

(assert (=> b!2811381 m!3241011))

(assert (=> b!2811270 d!816009))

(assert (=> b!2811270 d!815985))

(declare-fun d!816013 () Bool)

(declare-fun lt!1004292 () Vector!216)

(assert (=> d!816013 (= (list!12297 lt!1004292) (++!8058 (list!12297 lt!1004251) (t!229888 l!3873)))))

(declare-fun e!1778007 () Vector!216)

(assert (=> d!816013 (= lt!1004292 e!1778007)))

(declare-fun c!455462 () Bool)

(assert (=> d!816013 (= c!455462 ((_ is Nil!32832) (t!229888 l!3873)))))

(assert (=> d!816013 (= (rec!17 (t!229888 l!3873) lt!1004251) lt!1004292)))

(declare-fun b!2811389 () Bool)

(assert (=> b!2811389 (= e!1778007 lt!1004251)))

(declare-fun b!2811390 () Bool)

(declare-fun lt!1004294 () Vector!216)

(assert (=> b!2811390 (= e!1778007 (rec!17 (t!229888 (t!229888 l!3873)) lt!1004294))))

(declare-fun lt!1004291 () List!32937)

(assert (=> b!2811390 (= lt!1004291 (list!12297 lt!1004251))))

(declare-fun lt!1004289 () List!32937)

(assert (=> b!2811390 (= lt!1004289 (Cons!32832 (h!38252 (t!229888 l!3873)) Nil!32832))))

(declare-fun lt!1004288 () Unit!46846)

(assert (=> b!2811390 (= lt!1004288 (lemmaConcatAssociativity!1667 lt!1004291 lt!1004289 (t!229888 (t!229888 l!3873))))))

(assert (=> b!2811390 (= (++!8058 (++!8058 lt!1004291 lt!1004289) (t!229888 (t!229888 l!3873))) (++!8058 lt!1004291 (++!8058 lt!1004289 (t!229888 (t!229888 l!3873)))))))

(declare-fun lt!1004293 () Unit!46846)

(assert (=> b!2811390 (= lt!1004293 lt!1004288)))

(assert (=> b!2811390 (= lt!1004294 ($colon+!192 lt!1004251 (h!38252 (t!229888 l!3873))))))

(assert (=> b!2811390 (= (list!12297 lt!1004294) ($colon+!193 (list!12297 lt!1004251) (h!38252 (t!229888 l!3873))))))

(assert (= (and d!816013 c!455462) b!2811389))

(assert (= (and d!816013 (not c!455462)) b!2811390))

(declare-fun m!3241153 () Bool)

(assert (=> d!816013 m!3241153))

(assert (=> d!816013 m!3240959))

(assert (=> d!816013 m!3240959))

(declare-fun m!3241157 () Bool)

(assert (=> d!816013 m!3241157))

(declare-fun m!3241161 () Bool)

(assert (=> b!2811390 m!3241161))

(declare-fun m!3241163 () Bool)

(assert (=> b!2811390 m!3241163))

(declare-fun m!3241165 () Bool)

(assert (=> b!2811390 m!3241165))

(declare-fun m!3241167 () Bool)

(assert (=> b!2811390 m!3241167))

(assert (=> b!2811390 m!3241161))

(declare-fun m!3241169 () Bool)

(assert (=> b!2811390 m!3241169))

(declare-fun m!3241171 () Bool)

(assert (=> b!2811390 m!3241171))

(declare-fun m!3241173 () Bool)

(assert (=> b!2811390 m!3241173))

(declare-fun m!3241175 () Bool)

(assert (=> b!2811390 m!3241175))

(assert (=> b!2811390 m!3241165))

(assert (=> b!2811390 m!3240959))

(declare-fun m!3241177 () Bool)

(assert (=> b!2811390 m!3241177))

(assert (=> b!2811390 m!3240959))

(assert (=> b!2811270 d!816013))

(declare-fun d!816017 () Bool)

(assert (=> d!816017 (= (++!8058 (++!8058 lt!1004248 lt!1004247) (t!229888 l!3873)) (++!8058 lt!1004248 (++!8058 lt!1004247 (t!229888 l!3873))))))

(declare-fun lt!1004300 () Unit!46846)

(declare-fun choose!16589 (List!32937 List!32937 List!32937) Unit!46846)

(assert (=> d!816017 (= lt!1004300 (choose!16589 lt!1004248 lt!1004247 (t!229888 l!3873)))))

(assert (=> d!816017 (= (lemmaConcatAssociativity!1667 lt!1004248 lt!1004247 (t!229888 l!3873)) lt!1004300)))

(declare-fun bs!516399 () Bool)

(assert (= bs!516399 d!816017))

(declare-fun m!3241181 () Bool)

(assert (=> bs!516399 m!3241181))

(assert (=> bs!516399 m!3240961))

(assert (=> bs!516399 m!3240957))

(assert (=> bs!516399 m!3240961))

(assert (=> bs!516399 m!3240963))

(assert (=> bs!516399 m!3240957))

(assert (=> bs!516399 m!3240965))

(assert (=> b!2811270 d!816017))

(declare-fun d!816021 () Bool)

(assert (=> d!816021 (= (list!12297 lt!1004260) (choose!16582 lt!1004260))))

(declare-fun bs!516400 () Bool)

(assert (= bs!516400 d!816021))

(declare-fun m!3241183 () Bool)

(assert (=> bs!516400 m!3241183))

(assert (=> d!815971 d!816021))

(declare-fun d!816023 () Bool)

(declare-fun _$11!1116 () Vector!216)

(assert (=> d!816023 (= (list!12297 _$11!1116) Nil!32832)))

(declare-fun e!1778011 () Bool)

(assert (=> d!816023 e!1778011))

(assert (=> d!816023 (= choose!16584 _$11!1116)))

(declare-fun b!2811395 () Bool)

(declare-fun tp!897836 () Bool)

(declare-fun tp!897837 () Bool)

(assert (=> b!2811395 (= e!1778011 (and tp!897836 tp!897837))))

(assert (= d!816023 b!2811395))

(declare-fun m!3241211 () Bool)

(assert (=> d!816023 m!3241211))

(assert (=> d!815971 d!816023))

(declare-fun b!2811396 () Bool)

(declare-fun e!1778012 () Bool)

(declare-fun tp!897838 () Bool)

(assert (=> b!2811396 (= e!1778012 (and tp_is_empty!14373 tp!897838))))

(assert (=> b!2811277 (= tp!897822 e!1778012)))

(assert (= (and b!2811277 ((_ is Cons!32832) (t!229888 (t!229888 l!3873)))) b!2811396))

(check-sat (not b!2811310) (not d!815995) (not bm!183059) (not d!816013) (not b!2811318) (not b!2811396) (not b!2811378) (not b!2811327) (not d!816021) (not d!816007) (not b!2811395) (not b!2811381) (not bm!183058) (not b!2811311) (not d!816017) (not d!815987) (not b!2811390) (not d!816023) (not d!815997) (not b!2811322) tp_is_empty!14373 (not b!2811326) (not b!2811382) (not d!815979) (not d!815985) (not d!815989) (not b!2811285) (not b!2811306) (not d!815977) (not b!2811323) (not b!2811380) (not b!2811319) (not b!2811307) (not d!815999) (not b!2811383))
(check-sat)
