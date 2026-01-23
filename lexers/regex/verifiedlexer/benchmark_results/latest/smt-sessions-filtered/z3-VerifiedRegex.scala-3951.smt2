; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216118 () Bool)

(assert start!216118)

(declare-fun res!952638 () Bool)

(declare-fun e!1416559 () Bool)

(assert (=> start!216118 (=> (not res!952638) (not e!1416559))))

(declare-datatypes ((B!1805 0))(
  ( (B!1806 (val!7428 Int)) )
))
(declare-datatypes ((List!26056 0))(
  ( (Nil!25972) (Cons!25972 (h!31373 B!1805) (t!199372 List!26056)) )
))
(declare-fun l!3389 () List!26056)

(declare-fun isEmpty!14850 (List!26056) Bool)

(assert (=> start!216118 (= res!952638 (not (isEmpty!14850 l!3389)))))

(assert (=> start!216118 e!1416559))

(declare-fun e!1416560 () Bool)

(assert (=> start!216118 e!1416560))

(declare-fun b!2218197 () Bool)

(declare-fun isPrefix!2181 (List!26056 List!26056) Bool)

(declare-fun removeLast!22 (List!26056) List!26056)

(assert (=> b!2218197 (= e!1416559 (not (isPrefix!2181 (removeLast!22 l!3389) l!3389)))))

(assert (=> b!2218197 (isPrefix!2181 (removeLast!22 (t!199372 l!3389)) (t!199372 l!3389))))

(declare-datatypes ((Unit!38946 0))(
  ( (Unit!38947) )
))
(declare-fun lt!826958 () Unit!38946)

(declare-fun lemmaRemoveLastFromLMakesItPrefix!4 (List!26056) Unit!38946)

(assert (=> b!2218197 (= lt!826958 (lemmaRemoveLastFromLMakesItPrefix!4 (t!199372 l!3389)))))

(declare-fun b!2218198 () Bool)

(declare-fun tp_is_empty!9853 () Bool)

(declare-fun tp!691084 () Bool)

(assert (=> b!2218198 (= e!1416560 (and tp_is_empty!9853 tp!691084))))

(declare-fun b!2218196 () Bool)

(declare-fun res!952637 () Bool)

(assert (=> b!2218196 (=> (not res!952637) (not e!1416559))))

(assert (=> b!2218196 (= res!952637 (not (isEmpty!14850 (t!199372 l!3389))))))

(declare-fun b!2218195 () Bool)

(declare-fun res!952636 () Bool)

(assert (=> b!2218195 (=> (not res!952636) (not e!1416559))))

(get-info :version)

(assert (=> b!2218195 (= res!952636 (and (or (not ((_ is Cons!25972) l!3389)) (not ((_ is Nil!25972) (t!199372 l!3389)))) ((_ is Cons!25972) l!3389)))))

(assert (= (and start!216118 res!952638) b!2218195))

(assert (= (and b!2218195 res!952636) b!2218196))

(assert (= (and b!2218196 res!952637) b!2218197))

(assert (= (and start!216118 ((_ is Cons!25972) l!3389)) b!2218198))

(declare-fun m!2658981 () Bool)

(assert (=> start!216118 m!2658981))

(declare-fun m!2658983 () Bool)

(assert (=> b!2218197 m!2658983))

(declare-fun m!2658985 () Bool)

(assert (=> b!2218197 m!2658985))

(declare-fun m!2658987 () Bool)

(assert (=> b!2218197 m!2658987))

(assert (=> b!2218197 m!2658987))

(declare-fun m!2658989 () Bool)

(assert (=> b!2218197 m!2658989))

(assert (=> b!2218197 m!2658983))

(declare-fun m!2658991 () Bool)

(assert (=> b!2218197 m!2658991))

(declare-fun m!2658993 () Bool)

(assert (=> b!2218196 m!2658993))

(check-sat (not start!216118) (not b!2218197) (not b!2218196) tp_is_empty!9853 (not b!2218198))
(check-sat)
(get-model)

(declare-fun d!663016 () Bool)

(assert (=> d!663016 (isPrefix!2181 (removeLast!22 (t!199372 l!3389)) (t!199372 l!3389))))

(declare-fun lt!826963 () Unit!38946)

(declare-fun choose!13073 (List!26056) Unit!38946)

(assert (=> d!663016 (= lt!826963 (choose!13073 (t!199372 l!3389)))))

(assert (=> d!663016 (not (isEmpty!14850 (t!199372 l!3389)))))

(assert (=> d!663016 (= (lemmaRemoveLastFromLMakesItPrefix!4 (t!199372 l!3389)) lt!826963)))

(declare-fun bs!451753 () Bool)

(assert (= bs!451753 d!663016))

(assert (=> bs!451753 m!2658983))

(assert (=> bs!451753 m!2658983))

(assert (=> bs!451753 m!2658991))

(declare-fun m!2658995 () Bool)

(assert (=> bs!451753 m!2658995))

(assert (=> bs!451753 m!2658993))

(assert (=> b!2218197 d!663016))

(declare-fun d!663020 () Bool)

(declare-fun lt!826969 () List!26056)

(declare-fun ++!6462 (List!26056 List!26056) List!26056)

(declare-fun last!360 (List!26056) B!1805)

(assert (=> d!663020 (= (++!6462 lt!826969 (Cons!25972 (last!360 (t!199372 l!3389)) Nil!25972)) (t!199372 l!3389))))

(declare-fun e!1416565 () List!26056)

(assert (=> d!663020 (= lt!826969 e!1416565)))

(declare-fun c!354150 () Bool)

(assert (=> d!663020 (= c!354150 (and ((_ is Cons!25972) (t!199372 l!3389)) ((_ is Nil!25972) (t!199372 (t!199372 l!3389)))))))

(assert (=> d!663020 (not (isEmpty!14850 (t!199372 l!3389)))))

(assert (=> d!663020 (= (removeLast!22 (t!199372 l!3389)) lt!826969)))

(declare-fun b!2218207 () Bool)

(assert (=> b!2218207 (= e!1416565 Nil!25972)))

(declare-fun b!2218208 () Bool)

(assert (=> b!2218208 (= e!1416565 (Cons!25972 (h!31373 (t!199372 l!3389)) (removeLast!22 (t!199372 (t!199372 l!3389)))))))

(assert (= (and d!663020 c!354150) b!2218207))

(assert (= (and d!663020 (not c!354150)) b!2218208))

(declare-fun m!2658999 () Bool)

(assert (=> d!663020 m!2658999))

(declare-fun m!2659001 () Bool)

(assert (=> d!663020 m!2659001))

(assert (=> d!663020 m!2658993))

(declare-fun m!2659003 () Bool)

(assert (=> b!2218208 m!2659003))

(assert (=> b!2218197 d!663020))

(declare-fun d!663024 () Bool)

(declare-fun lt!826971 () List!26056)

(assert (=> d!663024 (= (++!6462 lt!826971 (Cons!25972 (last!360 l!3389) Nil!25972)) l!3389)))

(declare-fun e!1416567 () List!26056)

(assert (=> d!663024 (= lt!826971 e!1416567)))

(declare-fun c!354152 () Bool)

(assert (=> d!663024 (= c!354152 (and ((_ is Cons!25972) l!3389) ((_ is Nil!25972) (t!199372 l!3389))))))

(assert (=> d!663024 (not (isEmpty!14850 l!3389))))

(assert (=> d!663024 (= (removeLast!22 l!3389) lt!826971)))

(declare-fun b!2218211 () Bool)

(assert (=> b!2218211 (= e!1416567 Nil!25972)))

(declare-fun b!2218212 () Bool)

(assert (=> b!2218212 (= e!1416567 (Cons!25972 (h!31373 l!3389) (removeLast!22 (t!199372 l!3389))))))

(assert (= (and d!663024 c!354152) b!2218211))

(assert (= (and d!663024 (not c!354152)) b!2218212))

(declare-fun m!2659011 () Bool)

(assert (=> d!663024 m!2659011))

(declare-fun m!2659013 () Bool)

(assert (=> d!663024 m!2659013))

(assert (=> d!663024 m!2658981))

(assert (=> b!2218212 m!2658983))

(assert (=> b!2218197 d!663024))

(declare-fun b!2218237 () Bool)

(declare-fun e!1416586 () Bool)

(declare-fun tail!3230 (List!26056) List!26056)

(assert (=> b!2218237 (= e!1416586 (isPrefix!2181 (tail!3230 (removeLast!22 (t!199372 l!3389))) (tail!3230 (t!199372 l!3389))))))

(declare-fun b!2218235 () Bool)

(declare-fun e!1416584 () Bool)

(assert (=> b!2218235 (= e!1416584 e!1416586)))

(declare-fun res!952660 () Bool)

(assert (=> b!2218235 (=> (not res!952660) (not e!1416586))))

(assert (=> b!2218235 (= res!952660 (not ((_ is Nil!25972) (t!199372 l!3389))))))

(declare-fun d!663028 () Bool)

(declare-fun e!1416585 () Bool)

(assert (=> d!663028 e!1416585))

(declare-fun res!952659 () Bool)

(assert (=> d!663028 (=> res!952659 e!1416585)))

(declare-fun lt!826978 () Bool)

(assert (=> d!663028 (= res!952659 (not lt!826978))))

(assert (=> d!663028 (= lt!826978 e!1416584)))

(declare-fun res!952661 () Bool)

(assert (=> d!663028 (=> res!952661 e!1416584)))

(assert (=> d!663028 (= res!952661 ((_ is Nil!25972) (removeLast!22 (t!199372 l!3389))))))

(assert (=> d!663028 (= (isPrefix!2181 (removeLast!22 (t!199372 l!3389)) (t!199372 l!3389)) lt!826978)))

(declare-fun b!2218236 () Bool)

(declare-fun res!952662 () Bool)

(assert (=> b!2218236 (=> (not res!952662) (not e!1416586))))

(declare-fun head!4742 (List!26056) B!1805)

(assert (=> b!2218236 (= res!952662 (= (head!4742 (removeLast!22 (t!199372 l!3389))) (head!4742 (t!199372 l!3389))))))

(declare-fun b!2218238 () Bool)

(declare-fun size!20267 (List!26056) Int)

(assert (=> b!2218238 (= e!1416585 (>= (size!20267 (t!199372 l!3389)) (size!20267 (removeLast!22 (t!199372 l!3389)))))))

(assert (= (and d!663028 (not res!952661)) b!2218235))

(assert (= (and b!2218235 res!952660) b!2218236))

(assert (= (and b!2218236 res!952662) b!2218237))

(assert (= (and d!663028 (not res!952659)) b!2218238))

(assert (=> b!2218237 m!2658983))

(declare-fun m!2659021 () Bool)

(assert (=> b!2218237 m!2659021))

(declare-fun m!2659025 () Bool)

(assert (=> b!2218237 m!2659025))

(assert (=> b!2218237 m!2659021))

(assert (=> b!2218237 m!2659025))

(declare-fun m!2659029 () Bool)

(assert (=> b!2218237 m!2659029))

(assert (=> b!2218236 m!2658983))

(declare-fun m!2659035 () Bool)

(assert (=> b!2218236 m!2659035))

(declare-fun m!2659039 () Bool)

(assert (=> b!2218236 m!2659039))

(declare-fun m!2659041 () Bool)

(assert (=> b!2218238 m!2659041))

(assert (=> b!2218238 m!2658983))

(declare-fun m!2659045 () Bool)

(assert (=> b!2218238 m!2659045))

(assert (=> b!2218197 d!663028))

(declare-fun b!2218245 () Bool)

(declare-fun e!1416592 () Bool)

(assert (=> b!2218245 (= e!1416592 (isPrefix!2181 (tail!3230 (removeLast!22 l!3389)) (tail!3230 l!3389)))))

(declare-fun b!2218243 () Bool)

(declare-fun e!1416590 () Bool)

(assert (=> b!2218243 (= e!1416590 e!1416592)))

(declare-fun res!952668 () Bool)

(assert (=> b!2218243 (=> (not res!952668) (not e!1416592))))

(assert (=> b!2218243 (= res!952668 (not ((_ is Nil!25972) l!3389)))))

(declare-fun d!663034 () Bool)

(declare-fun e!1416591 () Bool)

(assert (=> d!663034 e!1416591))

(declare-fun res!952667 () Bool)

(assert (=> d!663034 (=> res!952667 e!1416591)))

(declare-fun lt!826980 () Bool)

(assert (=> d!663034 (= res!952667 (not lt!826980))))

(assert (=> d!663034 (= lt!826980 e!1416590)))

(declare-fun res!952669 () Bool)

(assert (=> d!663034 (=> res!952669 e!1416590)))

(assert (=> d!663034 (= res!952669 ((_ is Nil!25972) (removeLast!22 l!3389)))))

(assert (=> d!663034 (= (isPrefix!2181 (removeLast!22 l!3389) l!3389) lt!826980)))

(declare-fun b!2218244 () Bool)

(declare-fun res!952670 () Bool)

(assert (=> b!2218244 (=> (not res!952670) (not e!1416592))))

(assert (=> b!2218244 (= res!952670 (= (head!4742 (removeLast!22 l!3389)) (head!4742 l!3389)))))

(declare-fun b!2218246 () Bool)

(assert (=> b!2218246 (= e!1416591 (>= (size!20267 l!3389) (size!20267 (removeLast!22 l!3389))))))

(assert (= (and d!663034 (not res!952669)) b!2218243))

(assert (= (and b!2218243 res!952668) b!2218244))

(assert (= (and b!2218244 res!952670) b!2218245))

(assert (= (and d!663034 (not res!952667)) b!2218246))

(assert (=> b!2218245 m!2658987))

(declare-fun m!2659051 () Bool)

(assert (=> b!2218245 m!2659051))

(declare-fun m!2659053 () Bool)

(assert (=> b!2218245 m!2659053))

(assert (=> b!2218245 m!2659051))

(assert (=> b!2218245 m!2659053))

(declare-fun m!2659057 () Bool)

(assert (=> b!2218245 m!2659057))

(assert (=> b!2218244 m!2658987))

(declare-fun m!2659061 () Bool)

(assert (=> b!2218244 m!2659061))

(declare-fun m!2659067 () Bool)

(assert (=> b!2218244 m!2659067))

(declare-fun m!2659069 () Bool)

(assert (=> b!2218246 m!2659069))

(assert (=> b!2218246 m!2658987))

(declare-fun m!2659073 () Bool)

(assert (=> b!2218246 m!2659073))

(assert (=> b!2218197 d!663034))

(declare-fun d!663038 () Bool)

(assert (=> d!663038 (= (isEmpty!14850 l!3389) ((_ is Nil!25972) l!3389))))

(assert (=> start!216118 d!663038))

(declare-fun d!663040 () Bool)

(assert (=> d!663040 (= (isEmpty!14850 (t!199372 l!3389)) ((_ is Nil!25972) (t!199372 l!3389)))))

(assert (=> b!2218196 d!663040))

(declare-fun b!2218256 () Bool)

(declare-fun e!1416598 () Bool)

(declare-fun tp!691090 () Bool)

(assert (=> b!2218256 (= e!1416598 (and tp_is_empty!9853 tp!691090))))

(assert (=> b!2218198 (= tp!691084 e!1416598)))

(assert (= (and b!2218198 ((_ is Cons!25972) (t!199372 l!3389))) b!2218256))

(check-sat (not b!2218256) (not d!663016) (not b!2218236) (not b!2218245) (not b!2218238) (not d!663024) (not d!663020) (not b!2218244) (not b!2218246) (not b!2218208) (not b!2218212) tp_is_empty!9853 (not b!2218237))
(check-sat)
(get-model)

(declare-fun d!663042 () Bool)

(declare-fun lt!826981 () List!26056)

(assert (=> d!663042 (= (++!6462 lt!826981 (Cons!25972 (last!360 (t!199372 (t!199372 l!3389))) Nil!25972)) (t!199372 (t!199372 l!3389)))))

(declare-fun e!1416599 () List!26056)

(assert (=> d!663042 (= lt!826981 e!1416599)))

(declare-fun c!354154 () Bool)

(assert (=> d!663042 (= c!354154 (and ((_ is Cons!25972) (t!199372 (t!199372 l!3389))) ((_ is Nil!25972) (t!199372 (t!199372 (t!199372 l!3389))))))))

(assert (=> d!663042 (not (isEmpty!14850 (t!199372 (t!199372 l!3389))))))

(assert (=> d!663042 (= (removeLast!22 (t!199372 (t!199372 l!3389))) lt!826981)))

(declare-fun b!2218257 () Bool)

(assert (=> b!2218257 (= e!1416599 Nil!25972)))

(declare-fun b!2218258 () Bool)

(assert (=> b!2218258 (= e!1416599 (Cons!25972 (h!31373 (t!199372 (t!199372 l!3389))) (removeLast!22 (t!199372 (t!199372 (t!199372 l!3389))))))))

(assert (= (and d!663042 c!354154) b!2218257))

(assert (= (and d!663042 (not c!354154)) b!2218258))

(declare-fun m!2659075 () Bool)

(assert (=> d!663042 m!2659075))

(declare-fun m!2659077 () Bool)

(assert (=> d!663042 m!2659077))

(declare-fun m!2659079 () Bool)

(assert (=> d!663042 m!2659079))

(declare-fun m!2659081 () Bool)

(assert (=> b!2218258 m!2659081))

(assert (=> b!2218208 d!663042))

(declare-fun b!2218261 () Bool)

(declare-fun e!1416602 () Bool)

(assert (=> b!2218261 (= e!1416602 (isPrefix!2181 (tail!3230 (tail!3230 (removeLast!22 l!3389))) (tail!3230 (tail!3230 l!3389))))))

(declare-fun b!2218259 () Bool)

(declare-fun e!1416600 () Bool)

(assert (=> b!2218259 (= e!1416600 e!1416602)))

(declare-fun res!952672 () Bool)

(assert (=> b!2218259 (=> (not res!952672) (not e!1416602))))

(assert (=> b!2218259 (= res!952672 (not ((_ is Nil!25972) (tail!3230 l!3389))))))

(declare-fun d!663044 () Bool)

(declare-fun e!1416601 () Bool)

(assert (=> d!663044 e!1416601))

(declare-fun res!952671 () Bool)

(assert (=> d!663044 (=> res!952671 e!1416601)))

(declare-fun lt!826982 () Bool)

(assert (=> d!663044 (= res!952671 (not lt!826982))))

(assert (=> d!663044 (= lt!826982 e!1416600)))

(declare-fun res!952673 () Bool)

(assert (=> d!663044 (=> res!952673 e!1416600)))

(assert (=> d!663044 (= res!952673 ((_ is Nil!25972) (tail!3230 (removeLast!22 l!3389))))))

(assert (=> d!663044 (= (isPrefix!2181 (tail!3230 (removeLast!22 l!3389)) (tail!3230 l!3389)) lt!826982)))

(declare-fun b!2218260 () Bool)

(declare-fun res!952674 () Bool)

(assert (=> b!2218260 (=> (not res!952674) (not e!1416602))))

(assert (=> b!2218260 (= res!952674 (= (head!4742 (tail!3230 (removeLast!22 l!3389))) (head!4742 (tail!3230 l!3389))))))

(declare-fun b!2218262 () Bool)

(assert (=> b!2218262 (= e!1416601 (>= (size!20267 (tail!3230 l!3389)) (size!20267 (tail!3230 (removeLast!22 l!3389)))))))

(assert (= (and d!663044 (not res!952673)) b!2218259))

(assert (= (and b!2218259 res!952672) b!2218260))

(assert (= (and b!2218260 res!952674) b!2218261))

(assert (= (and d!663044 (not res!952671)) b!2218262))

(assert (=> b!2218261 m!2659051))

(declare-fun m!2659083 () Bool)

(assert (=> b!2218261 m!2659083))

(assert (=> b!2218261 m!2659053))

(declare-fun m!2659085 () Bool)

(assert (=> b!2218261 m!2659085))

(assert (=> b!2218261 m!2659083))

(assert (=> b!2218261 m!2659085))

(declare-fun m!2659087 () Bool)

(assert (=> b!2218261 m!2659087))

(assert (=> b!2218260 m!2659051))

(declare-fun m!2659089 () Bool)

(assert (=> b!2218260 m!2659089))

(assert (=> b!2218260 m!2659053))

(declare-fun m!2659091 () Bool)

(assert (=> b!2218260 m!2659091))

(assert (=> b!2218262 m!2659053))

(declare-fun m!2659093 () Bool)

(assert (=> b!2218262 m!2659093))

(assert (=> b!2218262 m!2659051))

(declare-fun m!2659095 () Bool)

(assert (=> b!2218262 m!2659095))

(assert (=> b!2218245 d!663044))

(declare-fun d!663046 () Bool)

(assert (=> d!663046 (= (tail!3230 (removeLast!22 l!3389)) (t!199372 (removeLast!22 l!3389)))))

(assert (=> b!2218245 d!663046))

(declare-fun d!663048 () Bool)

(assert (=> d!663048 (= (tail!3230 l!3389) (t!199372 l!3389))))

(assert (=> b!2218245 d!663048))

(assert (=> b!2218212 d!663020))

(declare-fun d!663050 () Bool)

(declare-fun lt!826985 () Int)

(assert (=> d!663050 (>= lt!826985 0)))

(declare-fun e!1416605 () Int)

(assert (=> d!663050 (= lt!826985 e!1416605)))

(declare-fun c!354157 () Bool)

(assert (=> d!663050 (= c!354157 ((_ is Nil!25972) l!3389))))

(assert (=> d!663050 (= (size!20267 l!3389) lt!826985)))

(declare-fun b!2218267 () Bool)

(assert (=> b!2218267 (= e!1416605 0)))

(declare-fun b!2218268 () Bool)

(assert (=> b!2218268 (= e!1416605 (+ 1 (size!20267 (t!199372 l!3389))))))

(assert (= (and d!663050 c!354157) b!2218267))

(assert (= (and d!663050 (not c!354157)) b!2218268))

(assert (=> b!2218268 m!2659041))

(assert (=> b!2218246 d!663050))

(declare-fun d!663054 () Bool)

(declare-fun lt!826986 () Int)

(assert (=> d!663054 (>= lt!826986 0)))

(declare-fun e!1416606 () Int)

(assert (=> d!663054 (= lt!826986 e!1416606)))

(declare-fun c!354158 () Bool)

(assert (=> d!663054 (= c!354158 ((_ is Nil!25972) (removeLast!22 l!3389)))))

(assert (=> d!663054 (= (size!20267 (removeLast!22 l!3389)) lt!826986)))

(declare-fun b!2218269 () Bool)

(assert (=> b!2218269 (= e!1416606 0)))

(declare-fun b!2218270 () Bool)

(assert (=> b!2218270 (= e!1416606 (+ 1 (size!20267 (t!199372 (removeLast!22 l!3389)))))))

(assert (= (and d!663054 c!354158) b!2218269))

(assert (= (and d!663054 (not c!354158)) b!2218270))

(declare-fun m!2659097 () Bool)

(assert (=> b!2218270 m!2659097))

(assert (=> b!2218246 d!663054))

(declare-fun lt!826991 () List!26056)

(declare-fun b!2218290 () Bool)

(declare-fun e!1416616 () Bool)

(assert (=> b!2218290 (= e!1416616 (or (not (= (Cons!25972 (last!360 (t!199372 l!3389)) Nil!25972) Nil!25972)) (= lt!826991 lt!826969)))))

(declare-fun b!2218287 () Bool)

(declare-fun e!1416615 () List!26056)

(assert (=> b!2218287 (= e!1416615 (Cons!25972 (last!360 (t!199372 l!3389)) Nil!25972))))

(declare-fun b!2218288 () Bool)

(assert (=> b!2218288 (= e!1416615 (Cons!25972 (h!31373 lt!826969) (++!6462 (t!199372 lt!826969) (Cons!25972 (last!360 (t!199372 l!3389)) Nil!25972))))))

(declare-fun b!2218289 () Bool)

(declare-fun res!952683 () Bool)

(assert (=> b!2218289 (=> (not res!952683) (not e!1416616))))

(assert (=> b!2218289 (= res!952683 (= (size!20267 lt!826991) (+ (size!20267 lt!826969) (size!20267 (Cons!25972 (last!360 (t!199372 l!3389)) Nil!25972)))))))

(declare-fun d!663056 () Bool)

(assert (=> d!663056 e!1416616))

(declare-fun res!952684 () Bool)

(assert (=> d!663056 (=> (not res!952684) (not e!1416616))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3523 (List!26056) (InoxSet B!1805))

(assert (=> d!663056 (= res!952684 (= (content!3523 lt!826991) ((_ map or) (content!3523 lt!826969) (content!3523 (Cons!25972 (last!360 (t!199372 l!3389)) Nil!25972)))))))

(assert (=> d!663056 (= lt!826991 e!1416615)))

(declare-fun c!354163 () Bool)

(assert (=> d!663056 (= c!354163 ((_ is Nil!25972) lt!826969))))

(assert (=> d!663056 (= (++!6462 lt!826969 (Cons!25972 (last!360 (t!199372 l!3389)) Nil!25972)) lt!826991)))

(assert (= (and d!663056 c!354163) b!2218287))

(assert (= (and d!663056 (not c!354163)) b!2218288))

(assert (= (and d!663056 res!952684) b!2218289))

(assert (= (and b!2218289 res!952683) b!2218290))

(declare-fun m!2659099 () Bool)

(assert (=> b!2218288 m!2659099))

(declare-fun m!2659103 () Bool)

(assert (=> b!2218289 m!2659103))

(declare-fun m!2659107 () Bool)

(assert (=> b!2218289 m!2659107))

(declare-fun m!2659111 () Bool)

(assert (=> b!2218289 m!2659111))

(declare-fun m!2659115 () Bool)

(assert (=> d!663056 m!2659115))

(declare-fun m!2659119 () Bool)

(assert (=> d!663056 m!2659119))

(declare-fun m!2659123 () Bool)

(assert (=> d!663056 m!2659123))

(assert (=> d!663020 d!663056))

(declare-fun d!663060 () Bool)

(declare-fun lt!826997 () B!1805)

(declare-fun contains!4309 (List!26056 B!1805) Bool)

(assert (=> d!663060 (contains!4309 (t!199372 l!3389) lt!826997)))

(declare-fun e!1416623 () B!1805)

(assert (=> d!663060 (= lt!826997 e!1416623)))

(declare-fun c!354169 () Bool)

(assert (=> d!663060 (= c!354169 (and ((_ is Cons!25972) (t!199372 l!3389)) ((_ is Nil!25972) (t!199372 (t!199372 l!3389)))))))

(assert (=> d!663060 (not (isEmpty!14850 (t!199372 l!3389)))))

(assert (=> d!663060 (= (last!360 (t!199372 l!3389)) lt!826997)))

(declare-fun b!2218303 () Bool)

(assert (=> b!2218303 (= e!1416623 (h!31373 (t!199372 l!3389)))))

(declare-fun b!2218304 () Bool)

(assert (=> b!2218304 (= e!1416623 (last!360 (t!199372 (t!199372 l!3389))))))

(assert (= (and d!663060 c!354169) b!2218303))

(assert (= (and d!663060 (not c!354169)) b!2218304))

(declare-fun m!2659127 () Bool)

(assert (=> d!663060 m!2659127))

(assert (=> d!663060 m!2658993))

(assert (=> b!2218304 m!2659075))

(assert (=> d!663020 d!663060))

(assert (=> d!663020 d!663040))

(assert (=> d!663016 d!663028))

(assert (=> d!663016 d!663020))

(declare-fun d!663064 () Bool)

(assert (=> d!663064 (isPrefix!2181 (removeLast!22 (t!199372 l!3389)) (t!199372 l!3389))))

(assert (=> d!663064 true))

(declare-fun _$62!157 () Unit!38946)

(assert (=> d!663064 (= (choose!13073 (t!199372 l!3389)) _$62!157)))

(declare-fun bs!451756 () Bool)

(assert (= bs!451756 d!663064))

(assert (=> bs!451756 m!2658983))

(assert (=> bs!451756 m!2658983))

(assert (=> bs!451756 m!2658991))

(assert (=> d!663016 d!663064))

(assert (=> d!663016 d!663040))

(declare-fun b!2218313 () Bool)

(declare-fun e!1416629 () Bool)

(assert (=> b!2218313 (= e!1416629 (isPrefix!2181 (tail!3230 (tail!3230 (removeLast!22 (t!199372 l!3389)))) (tail!3230 (tail!3230 (t!199372 l!3389)))))))

(declare-fun b!2218311 () Bool)

(declare-fun e!1416627 () Bool)

(assert (=> b!2218311 (= e!1416627 e!1416629)))

(declare-fun res!952688 () Bool)

(assert (=> b!2218311 (=> (not res!952688) (not e!1416629))))

(assert (=> b!2218311 (= res!952688 (not ((_ is Nil!25972) (tail!3230 (t!199372 l!3389)))))))

(declare-fun d!663068 () Bool)

(declare-fun e!1416628 () Bool)

(assert (=> d!663068 e!1416628))

(declare-fun res!952687 () Bool)

(assert (=> d!663068 (=> res!952687 e!1416628)))

(declare-fun lt!827001 () Bool)

(assert (=> d!663068 (= res!952687 (not lt!827001))))

(assert (=> d!663068 (= lt!827001 e!1416627)))

(declare-fun res!952689 () Bool)

(assert (=> d!663068 (=> res!952689 e!1416627)))

(assert (=> d!663068 (= res!952689 ((_ is Nil!25972) (tail!3230 (removeLast!22 (t!199372 l!3389)))))))

(assert (=> d!663068 (= (isPrefix!2181 (tail!3230 (removeLast!22 (t!199372 l!3389))) (tail!3230 (t!199372 l!3389))) lt!827001)))

(declare-fun b!2218312 () Bool)

(declare-fun res!952690 () Bool)

(assert (=> b!2218312 (=> (not res!952690) (not e!1416629))))

(assert (=> b!2218312 (= res!952690 (= (head!4742 (tail!3230 (removeLast!22 (t!199372 l!3389)))) (head!4742 (tail!3230 (t!199372 l!3389)))))))

(declare-fun b!2218314 () Bool)

(assert (=> b!2218314 (= e!1416628 (>= (size!20267 (tail!3230 (t!199372 l!3389))) (size!20267 (tail!3230 (removeLast!22 (t!199372 l!3389))))))))

(assert (= (and d!663068 (not res!952689)) b!2218311))

(assert (= (and b!2218311 res!952688) b!2218312))

(assert (= (and b!2218312 res!952690) b!2218313))

(assert (= (and d!663068 (not res!952687)) b!2218314))

(assert (=> b!2218313 m!2659021))

(declare-fun m!2659133 () Bool)

(assert (=> b!2218313 m!2659133))

(assert (=> b!2218313 m!2659025))

(declare-fun m!2659135 () Bool)

(assert (=> b!2218313 m!2659135))

(assert (=> b!2218313 m!2659133))

(assert (=> b!2218313 m!2659135))

(declare-fun m!2659139 () Bool)

(assert (=> b!2218313 m!2659139))

(assert (=> b!2218312 m!2659021))

(declare-fun m!2659141 () Bool)

(assert (=> b!2218312 m!2659141))

(assert (=> b!2218312 m!2659025))

(declare-fun m!2659143 () Bool)

(assert (=> b!2218312 m!2659143))

(assert (=> b!2218314 m!2659025))

(declare-fun m!2659145 () Bool)

(assert (=> b!2218314 m!2659145))

(assert (=> b!2218314 m!2659021))

(declare-fun m!2659147 () Bool)

(assert (=> b!2218314 m!2659147))

(assert (=> b!2218237 d!663068))

(declare-fun d!663074 () Bool)

(assert (=> d!663074 (= (tail!3230 (removeLast!22 (t!199372 l!3389))) (t!199372 (removeLast!22 (t!199372 l!3389))))))

(assert (=> b!2218237 d!663074))

(declare-fun d!663078 () Bool)

(assert (=> d!663078 (= (tail!3230 (t!199372 l!3389)) (t!199372 (t!199372 l!3389)))))

(assert (=> b!2218237 d!663078))

(declare-fun d!663080 () Bool)

(assert (=> d!663080 (= (head!4742 (removeLast!22 l!3389)) (h!31373 (removeLast!22 l!3389)))))

(assert (=> b!2218244 d!663080))

(declare-fun d!663084 () Bool)

(assert (=> d!663084 (= (head!4742 l!3389) (h!31373 l!3389))))

(assert (=> b!2218244 d!663084))

(declare-fun d!663086 () Bool)

(declare-fun lt!827006 () Int)

(assert (=> d!663086 (>= lt!827006 0)))

(declare-fun e!1416634 () Int)

(assert (=> d!663086 (= lt!827006 e!1416634)))

(declare-fun c!354177 () Bool)

(assert (=> d!663086 (= c!354177 ((_ is Nil!25972) (t!199372 l!3389)))))

(assert (=> d!663086 (= (size!20267 (t!199372 l!3389)) lt!827006)))

(declare-fun b!2218323 () Bool)

(assert (=> b!2218323 (= e!1416634 0)))

(declare-fun b!2218324 () Bool)

(assert (=> b!2218324 (= e!1416634 (+ 1 (size!20267 (t!199372 (t!199372 l!3389)))))))

(assert (= (and d!663086 c!354177) b!2218323))

(assert (= (and d!663086 (not c!354177)) b!2218324))

(declare-fun m!2659153 () Bool)

(assert (=> b!2218324 m!2659153))

(assert (=> b!2218238 d!663086))

(declare-fun d!663092 () Bool)

(declare-fun lt!827008 () Int)

(assert (=> d!663092 (>= lt!827008 0)))

(declare-fun e!1416637 () Int)

(assert (=> d!663092 (= lt!827008 e!1416637)))

(declare-fun c!354179 () Bool)

(assert (=> d!663092 (= c!354179 ((_ is Nil!25972) (removeLast!22 (t!199372 l!3389))))))

(assert (=> d!663092 (= (size!20267 (removeLast!22 (t!199372 l!3389))) lt!827008)))

(declare-fun b!2218329 () Bool)

(assert (=> b!2218329 (= e!1416637 0)))

(declare-fun b!2218330 () Bool)

(assert (=> b!2218330 (= e!1416637 (+ 1 (size!20267 (t!199372 (removeLast!22 (t!199372 l!3389))))))))

(assert (= (and d!663092 c!354179) b!2218329))

(assert (= (and d!663092 (not c!354179)) b!2218330))

(declare-fun m!2659155 () Bool)

(assert (=> b!2218330 m!2659155))

(assert (=> b!2218238 d!663092))

(declare-fun d!663094 () Bool)

(assert (=> d!663094 (= (head!4742 (removeLast!22 (t!199372 l!3389))) (h!31373 (removeLast!22 (t!199372 l!3389))))))

(assert (=> b!2218236 d!663094))

(declare-fun d!663096 () Bool)

(assert (=> d!663096 (= (head!4742 (t!199372 l!3389)) (h!31373 (t!199372 l!3389)))))

(assert (=> b!2218236 d!663096))

(declare-fun e!1416639 () Bool)

(declare-fun lt!827009 () List!26056)

(declare-fun b!2218334 () Bool)

(assert (=> b!2218334 (= e!1416639 (or (not (= (Cons!25972 (last!360 l!3389) Nil!25972) Nil!25972)) (= lt!827009 lt!826971)))))

(declare-fun b!2218331 () Bool)

(declare-fun e!1416638 () List!26056)

(assert (=> b!2218331 (= e!1416638 (Cons!25972 (last!360 l!3389) Nil!25972))))

(declare-fun b!2218332 () Bool)

(assert (=> b!2218332 (= e!1416638 (Cons!25972 (h!31373 lt!826971) (++!6462 (t!199372 lt!826971) (Cons!25972 (last!360 l!3389) Nil!25972))))))

(declare-fun b!2218333 () Bool)

(declare-fun res!952693 () Bool)

(assert (=> b!2218333 (=> (not res!952693) (not e!1416639))))

(assert (=> b!2218333 (= res!952693 (= (size!20267 lt!827009) (+ (size!20267 lt!826971) (size!20267 (Cons!25972 (last!360 l!3389) Nil!25972)))))))

(declare-fun d!663098 () Bool)

(assert (=> d!663098 e!1416639))

(declare-fun res!952694 () Bool)

(assert (=> d!663098 (=> (not res!952694) (not e!1416639))))

(assert (=> d!663098 (= res!952694 (= (content!3523 lt!827009) ((_ map or) (content!3523 lt!826971) (content!3523 (Cons!25972 (last!360 l!3389) Nil!25972)))))))

(assert (=> d!663098 (= lt!827009 e!1416638)))

(declare-fun c!354180 () Bool)

(assert (=> d!663098 (= c!354180 ((_ is Nil!25972) lt!826971))))

(assert (=> d!663098 (= (++!6462 lt!826971 (Cons!25972 (last!360 l!3389) Nil!25972)) lt!827009)))

(assert (= (and d!663098 c!354180) b!2218331))

(assert (= (and d!663098 (not c!354180)) b!2218332))

(assert (= (and d!663098 res!952694) b!2218333))

(assert (= (and b!2218333 res!952693) b!2218334))

(declare-fun m!2659173 () Bool)

(assert (=> b!2218332 m!2659173))

(declare-fun m!2659175 () Bool)

(assert (=> b!2218333 m!2659175))

(declare-fun m!2659177 () Bool)

(assert (=> b!2218333 m!2659177))

(declare-fun m!2659179 () Bool)

(assert (=> b!2218333 m!2659179))

(declare-fun m!2659181 () Bool)

(assert (=> d!663098 m!2659181))

(declare-fun m!2659183 () Bool)

(assert (=> d!663098 m!2659183))

(declare-fun m!2659185 () Bool)

(assert (=> d!663098 m!2659185))

(assert (=> d!663024 d!663098))

(declare-fun d!663104 () Bool)

(declare-fun lt!827012 () B!1805)

(assert (=> d!663104 (contains!4309 l!3389 lt!827012)))

(declare-fun e!1416642 () B!1805)

(assert (=> d!663104 (= lt!827012 e!1416642)))

(declare-fun c!354183 () Bool)

(assert (=> d!663104 (= c!354183 (and ((_ is Cons!25972) l!3389) ((_ is Nil!25972) (t!199372 l!3389))))))

(assert (=> d!663104 (not (isEmpty!14850 l!3389))))

(assert (=> d!663104 (= (last!360 l!3389) lt!827012)))

(declare-fun b!2218339 () Bool)

(assert (=> b!2218339 (= e!1416642 (h!31373 l!3389))))

(declare-fun b!2218340 () Bool)

(assert (=> b!2218340 (= e!1416642 (last!360 (t!199372 l!3389)))))

(assert (= (and d!663104 c!354183) b!2218339))

(assert (= (and d!663104 (not c!354183)) b!2218340))

(declare-fun m!2659189 () Bool)

(assert (=> d!663104 m!2659189))

(assert (=> d!663104 m!2658981))

(assert (=> b!2218340 m!2658999))

(assert (=> d!663024 d!663104))

(assert (=> d!663024 d!663038))

(declare-fun b!2218341 () Bool)

(declare-fun e!1416643 () Bool)

(declare-fun tp!691091 () Bool)

(assert (=> b!2218341 (= e!1416643 (and tp_is_empty!9853 tp!691091))))

(assert (=> b!2218256 (= tp!691090 e!1416643)))

(assert (= (and b!2218256 ((_ is Cons!25972) (t!199372 (t!199372 l!3389)))) b!2218341))

(check-sat (not d!663056) (not b!2218312) (not b!2218341) (not b!2218333) (not d!663042) (not b!2218260) (not d!663060) (not b!2218313) (not b!2218262) (not b!2218261) (not d!663064) (not b!2218324) (not b!2218314) (not b!2218268) (not b!2218330) (not b!2218304) tp_is_empty!9853 (not b!2218288) (not b!2218340) (not b!2218289) (not b!2218258) (not d!663104) (not b!2218270) (not d!663098) (not b!2218332))
(check-sat)
