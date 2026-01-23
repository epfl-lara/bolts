; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188968 () Bool)

(assert start!188968)

(declare-fun lt!723641 () Int)

(declare-fun lt!723638 () Int)

(declare-fun lt!723642 () Int)

(declare-fun b!1887069 () Bool)

(declare-fun e!1204182 () Bool)

(declare-fun lt!723640 () Int)

(assert (=> b!1887069 (= e!1204182 (and (>= lt!723640 lt!723642) (or (not (= lt!723640 lt!723642)) (>= lt!723641 lt!723638))))))

(declare-datatypes ((B!1717 0))(
  ( (B!1718 (val!6144 Int)) )
))
(declare-datatypes ((List!21137 0))(
  ( (Nil!21055) (Cons!21055 (h!26456 B!1717) (t!175136 List!21137)) )
))
(declare-fun l3!256 () List!21137)

(declare-fun size!16715 (List!21137) Int)

(assert (=> b!1887069 (= lt!723638 (size!16715 l3!256))))

(declare-fun l2!1298 () List!21137)

(assert (=> b!1887069 (= lt!723642 (size!16715 l2!1298))))

(assert (=> b!1887069 (= lt!723641 (size!16715 (t!175136 l3!256)))))

(assert (=> b!1887069 (= lt!723640 (size!16715 (t!175136 l2!1298)))))

(declare-fun lt!723639 () Int)

(declare-fun l1!1329 () List!21137)

(assert (=> b!1887069 (= lt!723639 (size!16715 l1!1329))))

(declare-fun b!1887070 () Bool)

(declare-fun res!842369 () Bool)

(assert (=> b!1887070 (=> (not res!842369) (not e!1204182))))

(assert (=> b!1887070 (= res!842369 (= (h!26456 l1!1329) (h!26456 l2!1298)))))

(declare-fun res!842367 () Bool)

(assert (=> start!188968 (=> (not res!842367) (not e!1204182))))

(declare-fun subseq!405 (List!21137 List!21137) Bool)

(assert (=> start!188968 (= res!842367 (subseq!405 l1!1329 l2!1298))))

(assert (=> start!188968 e!1204182))

(declare-fun e!1204184 () Bool)

(assert (=> start!188968 e!1204184))

(declare-fun e!1204183 () Bool)

(assert (=> start!188968 e!1204183))

(declare-fun e!1204181 () Bool)

(assert (=> start!188968 e!1204181))

(declare-fun b!1887071 () Bool)

(declare-fun res!842365 () Bool)

(assert (=> b!1887071 (=> (not res!842365) (not e!1204182))))

(assert (=> b!1887071 (= res!842365 (not (subseq!405 (t!175136 l1!1329) (t!175136 l2!1298))))))

(declare-fun b!1887072 () Bool)

(declare-fun tp_is_empty!8973 () Bool)

(declare-fun tp!538083 () Bool)

(assert (=> b!1887072 (= e!1204181 (and tp_is_empty!8973 tp!538083))))

(declare-fun b!1887073 () Bool)

(declare-fun res!842370 () Bool)

(assert (=> b!1887073 (=> (not res!842370) (not e!1204182))))

(get-info :version)

(assert (=> b!1887073 (= res!842370 (and (or (not ((_ is Cons!21055) l1!1329)) (not ((_ is Cons!21055) l2!1298)) (not ((_ is Cons!21055) l3!256)) (= (h!26456 l2!1298) (h!26456 l3!256))) ((_ is Cons!21055) l1!1329) ((_ is Cons!21055) l2!1298) ((_ is Cons!21055) l3!256) (= (h!26456 l2!1298) (h!26456 l3!256))))))

(declare-fun b!1887074 () Bool)

(declare-fun res!842366 () Bool)

(assert (=> b!1887074 (=> (not res!842366) (not e!1204182))))

(assert (=> b!1887074 (= res!842366 (subseq!405 (t!175136 l2!1298) (t!175136 l3!256)))))

(declare-fun b!1887075 () Bool)

(declare-fun res!842364 () Bool)

(assert (=> b!1887075 (=> (not res!842364) (not e!1204182))))

(assert (=> b!1887075 (= res!842364 (subseq!405 l2!1298 l3!256))))

(declare-fun b!1887076 () Bool)

(declare-fun tp!538082 () Bool)

(assert (=> b!1887076 (= e!1204184 (and tp_is_empty!8973 tp!538082))))

(declare-fun b!1887077 () Bool)

(declare-fun tp!538084 () Bool)

(assert (=> b!1887077 (= e!1204183 (and tp_is_empty!8973 tp!538084))))

(declare-fun b!1887078 () Bool)

(declare-fun res!842368 () Bool)

(assert (=> b!1887078 (=> (not res!842368) (not e!1204182))))

(assert (=> b!1887078 (= res!842368 (subseq!405 l1!1329 (t!175136 l2!1298)))))

(assert (= (and start!188968 res!842367) b!1887075))

(assert (= (and b!1887075 res!842364) b!1887073))

(assert (= (and b!1887073 res!842370) b!1887074))

(assert (= (and b!1887074 res!842366) b!1887070))

(assert (= (and b!1887070 res!842369) b!1887071))

(assert (= (and b!1887071 res!842365) b!1887078))

(assert (= (and b!1887078 res!842368) b!1887069))

(assert (= (and start!188968 ((_ is Cons!21055) l1!1329)) b!1887076))

(assert (= (and start!188968 ((_ is Cons!21055) l2!1298)) b!1887077))

(assert (= (and start!188968 ((_ is Cons!21055) l3!256)) b!1887072))

(declare-fun m!2319243 () Bool)

(assert (=> b!1887078 m!2319243))

(declare-fun m!2319245 () Bool)

(assert (=> b!1887075 m!2319245))

(declare-fun m!2319247 () Bool)

(assert (=> b!1887071 m!2319247))

(declare-fun m!2319249 () Bool)

(assert (=> b!1887069 m!2319249))

(declare-fun m!2319251 () Bool)

(assert (=> b!1887069 m!2319251))

(declare-fun m!2319253 () Bool)

(assert (=> b!1887069 m!2319253))

(declare-fun m!2319255 () Bool)

(assert (=> b!1887069 m!2319255))

(declare-fun m!2319257 () Bool)

(assert (=> b!1887069 m!2319257))

(declare-fun m!2319259 () Bool)

(assert (=> b!1887074 m!2319259))

(declare-fun m!2319261 () Bool)

(assert (=> start!188968 m!2319261))

(check-sat (not b!1887072) (not start!188968) (not b!1887074) (not b!1887075) (not b!1887069) tp_is_empty!8973 (not b!1887077) (not b!1887078) (not b!1887076) (not b!1887071))
(check-sat)
(get-model)

(declare-fun b!1887100 () Bool)

(declare-fun e!1204207 () Bool)

(declare-fun e!1204208 () Bool)

(assert (=> b!1887100 (= e!1204207 e!1204208)))

(declare-fun res!842393 () Bool)

(assert (=> b!1887100 (=> res!842393 e!1204208)))

(declare-fun e!1204205 () Bool)

(assert (=> b!1887100 (= res!842393 e!1204205)))

(declare-fun res!842394 () Bool)

(assert (=> b!1887100 (=> (not res!842394) (not e!1204205))))

(assert (=> b!1887100 (= res!842394 (= (h!26456 l1!1329) (h!26456 (t!175136 l2!1298))))))

(declare-fun d!578114 () Bool)

(declare-fun res!842391 () Bool)

(declare-fun e!1204206 () Bool)

(assert (=> d!578114 (=> res!842391 e!1204206)))

(assert (=> d!578114 (= res!842391 ((_ is Nil!21055) l1!1329))))

(assert (=> d!578114 (= (subseq!405 l1!1329 (t!175136 l2!1298)) e!1204206)))

(declare-fun b!1887099 () Bool)

(assert (=> b!1887099 (= e!1204206 e!1204207)))

(declare-fun res!842392 () Bool)

(assert (=> b!1887099 (=> (not res!842392) (not e!1204207))))

(assert (=> b!1887099 (= res!842392 ((_ is Cons!21055) (t!175136 l2!1298)))))

(declare-fun b!1887102 () Bool)

(assert (=> b!1887102 (= e!1204208 (subseq!405 l1!1329 (t!175136 (t!175136 l2!1298))))))

(declare-fun b!1887101 () Bool)

(assert (=> b!1887101 (= e!1204205 (subseq!405 (t!175136 l1!1329) (t!175136 (t!175136 l2!1298))))))

(assert (= (and d!578114 (not res!842391)) b!1887099))

(assert (= (and b!1887099 res!842392) b!1887100))

(assert (= (and b!1887100 res!842394) b!1887101))

(assert (= (and b!1887100 (not res!842393)) b!1887102))

(declare-fun m!2319265 () Bool)

(assert (=> b!1887102 m!2319265))

(declare-fun m!2319269 () Bool)

(assert (=> b!1887101 m!2319269))

(assert (=> b!1887078 d!578114))

(declare-fun b!1887104 () Bool)

(declare-fun e!1204211 () Bool)

(declare-fun e!1204212 () Bool)

(assert (=> b!1887104 (= e!1204211 e!1204212)))

(declare-fun res!842397 () Bool)

(assert (=> b!1887104 (=> res!842397 e!1204212)))

(declare-fun e!1204209 () Bool)

(assert (=> b!1887104 (= res!842397 e!1204209)))

(declare-fun res!842398 () Bool)

(assert (=> b!1887104 (=> (not res!842398) (not e!1204209))))

(assert (=> b!1887104 (= res!842398 (= (h!26456 l2!1298) (h!26456 l3!256)))))

(declare-fun d!578120 () Bool)

(declare-fun res!842395 () Bool)

(declare-fun e!1204210 () Bool)

(assert (=> d!578120 (=> res!842395 e!1204210)))

(assert (=> d!578120 (= res!842395 ((_ is Nil!21055) l2!1298))))

(assert (=> d!578120 (= (subseq!405 l2!1298 l3!256) e!1204210)))

(declare-fun b!1887103 () Bool)

(assert (=> b!1887103 (= e!1204210 e!1204211)))

(declare-fun res!842396 () Bool)

(assert (=> b!1887103 (=> (not res!842396) (not e!1204211))))

(assert (=> b!1887103 (= res!842396 ((_ is Cons!21055) l3!256))))

(declare-fun b!1887106 () Bool)

(assert (=> b!1887106 (= e!1204212 (subseq!405 l2!1298 (t!175136 l3!256)))))

(declare-fun b!1887105 () Bool)

(assert (=> b!1887105 (= e!1204209 (subseq!405 (t!175136 l2!1298) (t!175136 l3!256)))))

(assert (= (and d!578120 (not res!842395)) b!1887103))

(assert (= (and b!1887103 res!842396) b!1887104))

(assert (= (and b!1887104 res!842398) b!1887105))

(assert (= (and b!1887104 (not res!842397)) b!1887106))

(declare-fun m!2319271 () Bool)

(assert (=> b!1887106 m!2319271))

(assert (=> b!1887105 m!2319259))

(assert (=> b!1887075 d!578120))

(declare-fun d!578122 () Bool)

(declare-fun lt!723647 () Int)

(assert (=> d!578122 (>= lt!723647 0)))

(declare-fun e!1204229 () Int)

(assert (=> d!578122 (= lt!723647 e!1204229)))

(declare-fun c!308133 () Bool)

(assert (=> d!578122 (= c!308133 ((_ is Nil!21055) (t!175136 l2!1298)))))

(assert (=> d!578122 (= (size!16715 (t!175136 l2!1298)) lt!723647)))

(declare-fun b!1887127 () Bool)

(assert (=> b!1887127 (= e!1204229 0)))

(declare-fun b!1887128 () Bool)

(assert (=> b!1887128 (= e!1204229 (+ 1 (size!16715 (t!175136 (t!175136 l2!1298)))))))

(assert (= (and d!578122 c!308133) b!1887127))

(assert (= (and d!578122 (not c!308133)) b!1887128))

(declare-fun m!2319279 () Bool)

(assert (=> b!1887128 m!2319279))

(assert (=> b!1887069 d!578122))

(declare-fun d!578130 () Bool)

(declare-fun lt!723648 () Int)

(assert (=> d!578130 (>= lt!723648 0)))

(declare-fun e!1204230 () Int)

(assert (=> d!578130 (= lt!723648 e!1204230)))

(declare-fun c!308134 () Bool)

(assert (=> d!578130 (= c!308134 ((_ is Nil!21055) l1!1329))))

(assert (=> d!578130 (= (size!16715 l1!1329) lt!723648)))

(declare-fun b!1887129 () Bool)

(assert (=> b!1887129 (= e!1204230 0)))

(declare-fun b!1887130 () Bool)

(assert (=> b!1887130 (= e!1204230 (+ 1 (size!16715 (t!175136 l1!1329))))))

(assert (= (and d!578130 c!308134) b!1887129))

(assert (= (and d!578130 (not c!308134)) b!1887130))

(declare-fun m!2319281 () Bool)

(assert (=> b!1887130 m!2319281))

(assert (=> b!1887069 d!578130))

(declare-fun d!578132 () Bool)

(declare-fun lt!723649 () Int)

(assert (=> d!578132 (>= lt!723649 0)))

(declare-fun e!1204231 () Int)

(assert (=> d!578132 (= lt!723649 e!1204231)))

(declare-fun c!308135 () Bool)

(assert (=> d!578132 (= c!308135 ((_ is Nil!21055) l2!1298))))

(assert (=> d!578132 (= (size!16715 l2!1298) lt!723649)))

(declare-fun b!1887131 () Bool)

(assert (=> b!1887131 (= e!1204231 0)))

(declare-fun b!1887132 () Bool)

(assert (=> b!1887132 (= e!1204231 (+ 1 (size!16715 (t!175136 l2!1298))))))

(assert (= (and d!578132 c!308135) b!1887131))

(assert (= (and d!578132 (not c!308135)) b!1887132))

(assert (=> b!1887132 m!2319251))

(assert (=> b!1887069 d!578132))

(declare-fun d!578134 () Bool)

(declare-fun lt!723651 () Int)

(assert (=> d!578134 (>= lt!723651 0)))

(declare-fun e!1204233 () Int)

(assert (=> d!578134 (= lt!723651 e!1204233)))

(declare-fun c!308137 () Bool)

(assert (=> d!578134 (= c!308137 ((_ is Nil!21055) l3!256))))

(assert (=> d!578134 (= (size!16715 l3!256) lt!723651)))

(declare-fun b!1887135 () Bool)

(assert (=> b!1887135 (= e!1204233 0)))

(declare-fun b!1887136 () Bool)

(assert (=> b!1887136 (= e!1204233 (+ 1 (size!16715 (t!175136 l3!256))))))

(assert (= (and d!578134 c!308137) b!1887135))

(assert (= (and d!578134 (not c!308137)) b!1887136))

(assert (=> b!1887136 m!2319257))

(assert (=> b!1887069 d!578134))

(declare-fun d!578136 () Bool)

(declare-fun lt!723652 () Int)

(assert (=> d!578136 (>= lt!723652 0)))

(declare-fun e!1204234 () Int)

(assert (=> d!578136 (= lt!723652 e!1204234)))

(declare-fun c!308138 () Bool)

(assert (=> d!578136 (= c!308138 ((_ is Nil!21055) (t!175136 l3!256)))))

(assert (=> d!578136 (= (size!16715 (t!175136 l3!256)) lt!723652)))

(declare-fun b!1887137 () Bool)

(assert (=> b!1887137 (= e!1204234 0)))

(declare-fun b!1887138 () Bool)

(assert (=> b!1887138 (= e!1204234 (+ 1 (size!16715 (t!175136 (t!175136 l3!256)))))))

(assert (= (and d!578136 c!308138) b!1887137))

(assert (= (and d!578136 (not c!308138)) b!1887138))

(declare-fun m!2319285 () Bool)

(assert (=> b!1887138 m!2319285))

(assert (=> b!1887069 d!578136))

(declare-fun b!1887142 () Bool)

(declare-fun e!1204238 () Bool)

(declare-fun e!1204239 () Bool)

(assert (=> b!1887142 (= e!1204238 e!1204239)))

(declare-fun res!842413 () Bool)

(assert (=> b!1887142 (=> res!842413 e!1204239)))

(declare-fun e!1204236 () Bool)

(assert (=> b!1887142 (= res!842413 e!1204236)))

(declare-fun res!842414 () Bool)

(assert (=> b!1887142 (=> (not res!842414) (not e!1204236))))

(assert (=> b!1887142 (= res!842414 (= (h!26456 l1!1329) (h!26456 l2!1298)))))

(declare-fun d!578140 () Bool)

(declare-fun res!842411 () Bool)

(declare-fun e!1204237 () Bool)

(assert (=> d!578140 (=> res!842411 e!1204237)))

(assert (=> d!578140 (= res!842411 ((_ is Nil!21055) l1!1329))))

(assert (=> d!578140 (= (subseq!405 l1!1329 l2!1298) e!1204237)))

(declare-fun b!1887141 () Bool)

(assert (=> b!1887141 (= e!1204237 e!1204238)))

(declare-fun res!842412 () Bool)

(assert (=> b!1887141 (=> (not res!842412) (not e!1204238))))

(assert (=> b!1887141 (= res!842412 ((_ is Cons!21055) l2!1298))))

(declare-fun b!1887144 () Bool)

(assert (=> b!1887144 (= e!1204239 (subseq!405 l1!1329 (t!175136 l2!1298)))))

(declare-fun b!1887143 () Bool)

(assert (=> b!1887143 (= e!1204236 (subseq!405 (t!175136 l1!1329) (t!175136 l2!1298)))))

(assert (= (and d!578140 (not res!842411)) b!1887141))

(assert (= (and b!1887141 res!842412) b!1887142))

(assert (= (and b!1887142 res!842414) b!1887143))

(assert (= (and b!1887142 (not res!842413)) b!1887144))

(assert (=> b!1887144 m!2319243))

(assert (=> b!1887143 m!2319247))

(assert (=> start!188968 d!578140))

(declare-fun b!1887150 () Bool)

(declare-fun e!1204244 () Bool)

(declare-fun e!1204245 () Bool)

(assert (=> b!1887150 (= e!1204244 e!1204245)))

(declare-fun res!842417 () Bool)

(assert (=> b!1887150 (=> res!842417 e!1204245)))

(declare-fun e!1204242 () Bool)

(assert (=> b!1887150 (= res!842417 e!1204242)))

(declare-fun res!842418 () Bool)

(assert (=> b!1887150 (=> (not res!842418) (not e!1204242))))

(assert (=> b!1887150 (= res!842418 (= (h!26456 (t!175136 l2!1298)) (h!26456 (t!175136 l3!256))))))

(declare-fun d!578146 () Bool)

(declare-fun res!842415 () Bool)

(declare-fun e!1204243 () Bool)

(assert (=> d!578146 (=> res!842415 e!1204243)))

(assert (=> d!578146 (= res!842415 ((_ is Nil!21055) (t!175136 l2!1298)))))

(assert (=> d!578146 (= (subseq!405 (t!175136 l2!1298) (t!175136 l3!256)) e!1204243)))

(declare-fun b!1887149 () Bool)

(assert (=> b!1887149 (= e!1204243 e!1204244)))

(declare-fun res!842416 () Bool)

(assert (=> b!1887149 (=> (not res!842416) (not e!1204244))))

(assert (=> b!1887149 (= res!842416 ((_ is Cons!21055) (t!175136 l3!256)))))

(declare-fun b!1887152 () Bool)

(assert (=> b!1887152 (= e!1204245 (subseq!405 (t!175136 l2!1298) (t!175136 (t!175136 l3!256))))))

(declare-fun b!1887151 () Bool)

(assert (=> b!1887151 (= e!1204242 (subseq!405 (t!175136 (t!175136 l2!1298)) (t!175136 (t!175136 l3!256))))))

(assert (= (and d!578146 (not res!842415)) b!1887149))

(assert (= (and b!1887149 res!842416) b!1887150))

(assert (= (and b!1887150 res!842418) b!1887151))

(assert (= (and b!1887150 (not res!842417)) b!1887152))

(declare-fun m!2319291 () Bool)

(assert (=> b!1887152 m!2319291))

(declare-fun m!2319293 () Bool)

(assert (=> b!1887151 m!2319293))

(assert (=> b!1887074 d!578146))

(declare-fun b!1887160 () Bool)

(declare-fun e!1204253 () Bool)

(declare-fun e!1204254 () Bool)

(assert (=> b!1887160 (= e!1204253 e!1204254)))

(declare-fun res!842425 () Bool)

(assert (=> b!1887160 (=> res!842425 e!1204254)))

(declare-fun e!1204251 () Bool)

(assert (=> b!1887160 (= res!842425 e!1204251)))

(declare-fun res!842426 () Bool)

(assert (=> b!1887160 (=> (not res!842426) (not e!1204251))))

(assert (=> b!1887160 (= res!842426 (= (h!26456 (t!175136 l1!1329)) (h!26456 (t!175136 l2!1298))))))

(declare-fun d!578152 () Bool)

(declare-fun res!842423 () Bool)

(declare-fun e!1204252 () Bool)

(assert (=> d!578152 (=> res!842423 e!1204252)))

(assert (=> d!578152 (= res!842423 ((_ is Nil!21055) (t!175136 l1!1329)))))

(assert (=> d!578152 (= (subseq!405 (t!175136 l1!1329) (t!175136 l2!1298)) e!1204252)))

(declare-fun b!1887159 () Bool)

(assert (=> b!1887159 (= e!1204252 e!1204253)))

(declare-fun res!842424 () Bool)

(assert (=> b!1887159 (=> (not res!842424) (not e!1204253))))

(assert (=> b!1887159 (= res!842424 ((_ is Cons!21055) (t!175136 l2!1298)))))

(declare-fun b!1887162 () Bool)

(assert (=> b!1887162 (= e!1204254 (subseq!405 (t!175136 l1!1329) (t!175136 (t!175136 l2!1298))))))

(declare-fun b!1887161 () Bool)

(assert (=> b!1887161 (= e!1204251 (subseq!405 (t!175136 (t!175136 l1!1329)) (t!175136 (t!175136 l2!1298))))))

(assert (= (and d!578152 (not res!842423)) b!1887159))

(assert (= (and b!1887159 res!842424) b!1887160))

(assert (= (and b!1887160 res!842426) b!1887161))

(assert (= (and b!1887160 (not res!842425)) b!1887162))

(assert (=> b!1887162 m!2319269))

(declare-fun m!2319297 () Bool)

(assert (=> b!1887161 m!2319297))

(assert (=> b!1887071 d!578152))

(declare-fun b!1887173 () Bool)

(declare-fun e!1204261 () Bool)

(declare-fun tp!538091 () Bool)

(assert (=> b!1887173 (= e!1204261 (and tp_is_empty!8973 tp!538091))))

(assert (=> b!1887076 (= tp!538082 e!1204261)))

(assert (= (and b!1887076 ((_ is Cons!21055) (t!175136 l1!1329))) b!1887173))

(declare-fun b!1887175 () Bool)

(declare-fun e!1204263 () Bool)

(declare-fun tp!538093 () Bool)

(assert (=> b!1887175 (= e!1204263 (and tp_is_empty!8973 tp!538093))))

(assert (=> b!1887072 (= tp!538083 e!1204263)))

(assert (= (and b!1887072 ((_ is Cons!21055) (t!175136 l3!256))) b!1887175))

(declare-fun b!1887176 () Bool)

(declare-fun e!1204264 () Bool)

(declare-fun tp!538094 () Bool)

(assert (=> b!1887176 (= e!1204264 (and tp_is_empty!8973 tp!538094))))

(assert (=> b!1887077 (= tp!538084 e!1204264)))

(assert (= (and b!1887077 ((_ is Cons!21055) (t!175136 l2!1298))) b!1887176))

(check-sat tp_is_empty!8973 (not b!1887176) (not b!1887173) (not b!1887128) (not b!1887105) (not b!1887144) (not b!1887138) (not b!1887151) (not b!1887143) (not b!1887101) (not b!1887152) (not b!1887162) (not b!1887175) (not b!1887161) (not b!1887132) (not b!1887106) (not b!1887130) (not b!1887102) (not b!1887136))
(check-sat)
