; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215350 () Bool)

(assert start!215350)

(declare-fun b!2211206 () Bool)

(declare-fun e!1412222 () Bool)

(declare-fun tp!687246 () Bool)

(assert (=> b!2211206 (= e!1412222 tp!687246)))

(declare-fun b!2211207 () Bool)

(declare-fun res!950323 () Bool)

(declare-fun e!1412221 () Bool)

(assert (=> b!2211207 (=> (not res!950323) (not e!1412221))))

(declare-datatypes ((T!40564 0))(
  ( (T!40565 (val!7380 Int)) )
))
(declare-datatypes ((List!25944 0))(
  ( (Nil!25860) (Cons!25860 (h!31261 T!40564) (t!198658 List!25944)) )
))
(declare-datatypes ((IArray!16919 0))(
  ( (IArray!16920 (innerList!8517 List!25944)) )
))
(declare-datatypes ((Conc!8457 0))(
  ( (Node!8457 (left!19888 Conc!8457) (right!20218 Conc!8457) (csize!17144 Int) (cheight!8668 Int)) (Leaf!12385 (xs!11399 IArray!16919) (csize!17145 Int)) (Empty!8457) )
))
(declare-fun t!4663 () Conc!8457)

(declare-fun isEmpty!14803 (Conc!8457) Bool)

(assert (=> b!2211207 (= res!950323 (not (isEmpty!14803 t!4663)))))

(declare-fun e!1412223 () Bool)

(declare-fun b!2211208 () Bool)

(declare-fun tp!687244 () Bool)

(declare-fun tp!687245 () Bool)

(declare-fun inv!35008 (Conc!8457) Bool)

(assert (=> b!2211208 (= e!1412223 (and (inv!35008 (left!19888 t!4663)) tp!687244 (inv!35008 (right!20218 t!4663)) tp!687245))))

(declare-fun b!2211209 () Bool)

(declare-fun res!950325 () Bool)

(assert (=> b!2211209 (=> (not res!950325) (not e!1412221))))

(get-info :version)

(assert (=> b!2211209 (= res!950325 (and (not ((_ is Leaf!12385) t!4663)) (not ((_ is Node!8457) t!4663))))))

(declare-fun res!950324 () Bool)

(assert (=> start!215350 (=> (not res!950324) (not e!1412221))))

(declare-fun isBalanced!2615 (Conc!8457) Bool)

(assert (=> start!215350 (= res!950324 (isBalanced!2615 t!4663))))

(assert (=> start!215350 e!1412221))

(assert (=> start!215350 (and (inv!35008 t!4663) e!1412223)))

(declare-fun b!2211210 () Bool)

(declare-fun list!10028 (Conc!8457) List!25944)

(assert (=> b!2211210 (= e!1412221 (= (list!10028 t!4663) Nil!25860))))

(declare-fun b!2211211 () Bool)

(declare-fun inv!35009 (IArray!16919) Bool)

(assert (=> b!2211211 (= e!1412223 (and (inv!35009 (xs!11399 t!4663)) e!1412222))))

(assert (= (and start!215350 res!950324) b!2211207))

(assert (= (and b!2211207 res!950323) b!2211209))

(assert (= (and b!2211209 res!950325) b!2211210))

(assert (= (and start!215350 ((_ is Node!8457) t!4663)) b!2211208))

(assert (= b!2211211 b!2211206))

(assert (= (and start!215350 ((_ is Leaf!12385) t!4663)) b!2211211))

(declare-fun m!2652997 () Bool)

(assert (=> start!215350 m!2652997))

(declare-fun m!2652999 () Bool)

(assert (=> start!215350 m!2652999))

(declare-fun m!2653001 () Bool)

(assert (=> b!2211210 m!2653001))

(declare-fun m!2653003 () Bool)

(assert (=> b!2211208 m!2653003))

(declare-fun m!2653005 () Bool)

(assert (=> b!2211208 m!2653005))

(declare-fun m!2653007 () Bool)

(assert (=> b!2211207 m!2653007))

(declare-fun m!2653009 () Bool)

(assert (=> b!2211211 m!2653009))

(check-sat (not b!2211207) (not b!2211208) (not b!2211206) (not b!2211211) (not start!215350) (not b!2211210))
(check-sat)
(get-model)

(declare-fun d!660946 () Bool)

(declare-fun c!353410 () Bool)

(assert (=> d!660946 (= c!353410 ((_ is Empty!8457) t!4663))))

(declare-fun e!1412236 () List!25944)

(assert (=> d!660946 (= (list!10028 t!4663) e!1412236)))

(declare-fun b!2211232 () Bool)

(assert (=> b!2211232 (= e!1412236 Nil!25860)))

(declare-fun b!2211233 () Bool)

(declare-fun e!1412237 () List!25944)

(assert (=> b!2211233 (= e!1412236 e!1412237)))

(declare-fun c!353411 () Bool)

(assert (=> b!2211233 (= c!353411 ((_ is Leaf!12385) t!4663))))

(declare-fun b!2211234 () Bool)

(declare-fun list!10029 (IArray!16919) List!25944)

(assert (=> b!2211234 (= e!1412237 (list!10029 (xs!11399 t!4663)))))

(declare-fun b!2211235 () Bool)

(declare-fun ++!6446 (List!25944 List!25944) List!25944)

(assert (=> b!2211235 (= e!1412237 (++!6446 (list!10028 (left!19888 t!4663)) (list!10028 (right!20218 t!4663))))))

(assert (= (and d!660946 c!353410) b!2211232))

(assert (= (and d!660946 (not c!353410)) b!2211233))

(assert (= (and b!2211233 c!353411) b!2211234))

(assert (= (and b!2211233 (not c!353411)) b!2211235))

(declare-fun m!2653025 () Bool)

(assert (=> b!2211234 m!2653025))

(declare-fun m!2653027 () Bool)

(assert (=> b!2211235 m!2653027))

(declare-fun m!2653029 () Bool)

(assert (=> b!2211235 m!2653029))

(assert (=> b!2211235 m!2653027))

(assert (=> b!2211235 m!2653029))

(declare-fun m!2653031 () Bool)

(assert (=> b!2211235 m!2653031))

(assert (=> b!2211210 d!660946))

(declare-fun d!660954 () Bool)

(declare-fun size!20170 (List!25944) Int)

(assert (=> d!660954 (= (inv!35009 (xs!11399 t!4663)) (<= (size!20170 (innerList!8517 (xs!11399 t!4663))) 2147483647))))

(declare-fun bs!451419 () Bool)

(assert (= bs!451419 d!660954))

(declare-fun m!2653033 () Bool)

(assert (=> bs!451419 m!2653033))

(assert (=> b!2211211 d!660954))

(declare-fun d!660956 () Bool)

(declare-fun lt!826432 () Bool)

(declare-fun isEmpty!14805 (List!25944) Bool)

(assert (=> d!660956 (= lt!826432 (isEmpty!14805 (list!10028 t!4663)))))

(declare-fun size!20171 (Conc!8457) Int)

(assert (=> d!660956 (= lt!826432 (= (size!20171 t!4663) 0))))

(assert (=> d!660956 (= (isEmpty!14803 t!4663) lt!826432)))

(declare-fun bs!451420 () Bool)

(assert (= bs!451420 d!660956))

(assert (=> bs!451420 m!2653001))

(assert (=> bs!451420 m!2653001))

(declare-fun m!2653035 () Bool)

(assert (=> bs!451420 m!2653035))

(declare-fun m!2653037 () Bool)

(assert (=> bs!451420 m!2653037))

(assert (=> b!2211207 d!660956))

(declare-fun d!660958 () Bool)

(declare-fun c!353415 () Bool)

(assert (=> d!660958 (= c!353415 ((_ is Node!8457) (left!19888 t!4663)))))

(declare-fun e!1412250 () Bool)

(assert (=> d!660958 (= (inv!35008 (left!19888 t!4663)) e!1412250)))

(declare-fun b!2211263 () Bool)

(declare-fun inv!35012 (Conc!8457) Bool)

(assert (=> b!2211263 (= e!1412250 (inv!35012 (left!19888 t!4663)))))

(declare-fun b!2211264 () Bool)

(declare-fun e!1412251 () Bool)

(assert (=> b!2211264 (= e!1412250 e!1412251)))

(declare-fun res!950351 () Bool)

(assert (=> b!2211264 (= res!950351 (not ((_ is Leaf!12385) (left!19888 t!4663))))))

(assert (=> b!2211264 (=> res!950351 e!1412251)))

(declare-fun b!2211265 () Bool)

(declare-fun inv!35013 (Conc!8457) Bool)

(assert (=> b!2211265 (= e!1412251 (inv!35013 (left!19888 t!4663)))))

(assert (= (and d!660958 c!353415) b!2211263))

(assert (= (and d!660958 (not c!353415)) b!2211264))

(assert (= (and b!2211264 (not res!950351)) b!2211265))

(declare-fun m!2653055 () Bool)

(assert (=> b!2211263 m!2653055))

(declare-fun m!2653057 () Bool)

(assert (=> b!2211265 m!2653057))

(assert (=> b!2211208 d!660958))

(declare-fun d!660964 () Bool)

(declare-fun c!353416 () Bool)

(assert (=> d!660964 (= c!353416 ((_ is Node!8457) (right!20218 t!4663)))))

(declare-fun e!1412252 () Bool)

(assert (=> d!660964 (= (inv!35008 (right!20218 t!4663)) e!1412252)))

(declare-fun b!2211266 () Bool)

(assert (=> b!2211266 (= e!1412252 (inv!35012 (right!20218 t!4663)))))

(declare-fun b!2211267 () Bool)

(declare-fun e!1412253 () Bool)

(assert (=> b!2211267 (= e!1412252 e!1412253)))

(declare-fun res!950352 () Bool)

(assert (=> b!2211267 (= res!950352 (not ((_ is Leaf!12385) (right!20218 t!4663))))))

(assert (=> b!2211267 (=> res!950352 e!1412253)))

(declare-fun b!2211268 () Bool)

(assert (=> b!2211268 (= e!1412253 (inv!35013 (right!20218 t!4663)))))

(assert (= (and d!660964 c!353416) b!2211266))

(assert (= (and d!660964 (not c!353416)) b!2211267))

(assert (= (and b!2211267 (not res!950352)) b!2211268))

(declare-fun m!2653059 () Bool)

(assert (=> b!2211266 m!2653059))

(declare-fun m!2653061 () Bool)

(assert (=> b!2211268 m!2653061))

(assert (=> b!2211208 d!660964))

(declare-fun b!2211312 () Bool)

(declare-fun res!950368 () Bool)

(declare-fun e!1412276 () Bool)

(assert (=> b!2211312 (=> (not res!950368) (not e!1412276))))

(assert (=> b!2211312 (= res!950368 (isBalanced!2615 (right!20218 t!4663)))))

(declare-fun b!2211313 () Bool)

(assert (=> b!2211313 (= e!1412276 (not (isEmpty!14803 (right!20218 t!4663))))))

(declare-fun d!660966 () Bool)

(declare-fun res!950366 () Bool)

(declare-fun e!1412275 () Bool)

(assert (=> d!660966 (=> res!950366 e!1412275)))

(assert (=> d!660966 (= res!950366 (not ((_ is Node!8457) t!4663)))))

(assert (=> d!660966 (= (isBalanced!2615 t!4663) e!1412275)))

(declare-fun b!2211314 () Bool)

(assert (=> b!2211314 (= e!1412275 e!1412276)))

(declare-fun res!950369 () Bool)

(assert (=> b!2211314 (=> (not res!950369) (not e!1412276))))

(declare-fun height!1281 (Conc!8457) Int)

(assert (=> b!2211314 (= res!950369 (<= (- 1) (- (height!1281 (left!19888 t!4663)) (height!1281 (right!20218 t!4663)))))))

(declare-fun b!2211315 () Bool)

(declare-fun res!950370 () Bool)

(assert (=> b!2211315 (=> (not res!950370) (not e!1412276))))

(assert (=> b!2211315 (= res!950370 (not (isEmpty!14803 (left!19888 t!4663))))))

(declare-fun b!2211316 () Bool)

(declare-fun res!950365 () Bool)

(assert (=> b!2211316 (=> (not res!950365) (not e!1412276))))

(assert (=> b!2211316 (= res!950365 (isBalanced!2615 (left!19888 t!4663)))))

(declare-fun b!2211317 () Bool)

(declare-fun res!950367 () Bool)

(assert (=> b!2211317 (=> (not res!950367) (not e!1412276))))

(assert (=> b!2211317 (= res!950367 (<= (- (height!1281 (left!19888 t!4663)) (height!1281 (right!20218 t!4663))) 1))))

(assert (= (and d!660966 (not res!950366)) b!2211314))

(assert (= (and b!2211314 res!950369) b!2211317))

(assert (= (and b!2211317 res!950367) b!2211316))

(assert (= (and b!2211316 res!950365) b!2211312))

(assert (= (and b!2211312 res!950368) b!2211315))

(assert (= (and b!2211315 res!950370) b!2211313))

(declare-fun m!2653083 () Bool)

(assert (=> b!2211312 m!2653083))

(declare-fun m!2653085 () Bool)

(assert (=> b!2211313 m!2653085))

(declare-fun m!2653087 () Bool)

(assert (=> b!2211314 m!2653087))

(declare-fun m!2653089 () Bool)

(assert (=> b!2211314 m!2653089))

(assert (=> b!2211317 m!2653087))

(assert (=> b!2211317 m!2653089))

(declare-fun m!2653091 () Bool)

(assert (=> b!2211315 m!2653091))

(declare-fun m!2653093 () Bool)

(assert (=> b!2211316 m!2653093))

(assert (=> start!215350 d!660966))

(declare-fun d!660968 () Bool)

(declare-fun c!353423 () Bool)

(assert (=> d!660968 (= c!353423 ((_ is Node!8457) t!4663))))

(declare-fun e!1412277 () Bool)

(assert (=> d!660968 (= (inv!35008 t!4663) e!1412277)))

(declare-fun b!2211318 () Bool)

(assert (=> b!2211318 (= e!1412277 (inv!35012 t!4663))))

(declare-fun b!2211319 () Bool)

(declare-fun e!1412278 () Bool)

(assert (=> b!2211319 (= e!1412277 e!1412278)))

(declare-fun res!950371 () Bool)

(assert (=> b!2211319 (= res!950371 (not ((_ is Leaf!12385) t!4663)))))

(assert (=> b!2211319 (=> res!950371 e!1412278)))

(declare-fun b!2211320 () Bool)

(assert (=> b!2211320 (= e!1412278 (inv!35013 t!4663))))

(assert (= (and d!660968 c!353423) b!2211318))

(assert (= (and d!660968 (not c!353423)) b!2211319))

(assert (= (and b!2211319 (not res!950371)) b!2211320))

(declare-fun m!2653095 () Bool)

(assert (=> b!2211318 m!2653095))

(declare-fun m!2653097 () Bool)

(assert (=> b!2211320 m!2653097))

(assert (=> start!215350 d!660968))

(declare-fun b!2211325 () Bool)

(declare-fun e!1412281 () Bool)

(declare-fun tp_is_empty!9781 () Bool)

(declare-fun tp!687264 () Bool)

(assert (=> b!2211325 (= e!1412281 (and tp_is_empty!9781 tp!687264))))

(assert (=> b!2211206 (= tp!687246 e!1412281)))

(assert (= (and b!2211206 ((_ is Cons!25860) (innerList!8517 (xs!11399 t!4663)))) b!2211325))

(declare-fun e!1412287 () Bool)

(declare-fun tp!687273 () Bool)

(declare-fun tp!687272 () Bool)

(declare-fun b!2211334 () Bool)

(assert (=> b!2211334 (= e!1412287 (and (inv!35008 (left!19888 (left!19888 t!4663))) tp!687272 (inv!35008 (right!20218 (left!19888 t!4663))) tp!687273))))

(declare-fun b!2211336 () Bool)

(declare-fun e!1412286 () Bool)

(declare-fun tp!687271 () Bool)

(assert (=> b!2211336 (= e!1412286 tp!687271)))

(declare-fun b!2211335 () Bool)

(assert (=> b!2211335 (= e!1412287 (and (inv!35009 (xs!11399 (left!19888 t!4663))) e!1412286))))

(assert (=> b!2211208 (= tp!687244 (and (inv!35008 (left!19888 t!4663)) e!1412287))))

(assert (= (and b!2211208 ((_ is Node!8457) (left!19888 t!4663))) b!2211334))

(assert (= b!2211335 b!2211336))

(assert (= (and b!2211208 ((_ is Leaf!12385) (left!19888 t!4663))) b!2211335))

(declare-fun m!2653099 () Bool)

(assert (=> b!2211334 m!2653099))

(declare-fun m!2653101 () Bool)

(assert (=> b!2211334 m!2653101))

(declare-fun m!2653103 () Bool)

(assert (=> b!2211335 m!2653103))

(assert (=> b!2211208 m!2653003))

(declare-fun tp!687275 () Bool)

(declare-fun e!1412289 () Bool)

(declare-fun b!2211337 () Bool)

(declare-fun tp!687276 () Bool)

(assert (=> b!2211337 (= e!1412289 (and (inv!35008 (left!19888 (right!20218 t!4663))) tp!687275 (inv!35008 (right!20218 (right!20218 t!4663))) tp!687276))))

(declare-fun b!2211339 () Bool)

(declare-fun e!1412288 () Bool)

(declare-fun tp!687274 () Bool)

(assert (=> b!2211339 (= e!1412288 tp!687274)))

(declare-fun b!2211338 () Bool)

(assert (=> b!2211338 (= e!1412289 (and (inv!35009 (xs!11399 (right!20218 t!4663))) e!1412288))))

(assert (=> b!2211208 (= tp!687245 (and (inv!35008 (right!20218 t!4663)) e!1412289))))

(assert (= (and b!2211208 ((_ is Node!8457) (right!20218 t!4663))) b!2211337))

(assert (= b!2211338 b!2211339))

(assert (= (and b!2211208 ((_ is Leaf!12385) (right!20218 t!4663))) b!2211338))

(declare-fun m!2653105 () Bool)

(assert (=> b!2211337 m!2653105))

(declare-fun m!2653107 () Bool)

(assert (=> b!2211337 m!2653107))

(declare-fun m!2653109 () Bool)

(assert (=> b!2211338 m!2653109))

(assert (=> b!2211208 m!2653005))

(check-sat (not b!2211235) (not b!2211316) (not b!2211266) (not b!2211263) (not b!2211208) (not b!2211318) (not b!2211268) (not b!2211336) (not b!2211315) (not b!2211314) (not b!2211335) (not d!660956) (not b!2211234) (not b!2211265) tp_is_empty!9781 (not b!2211320) (not d!660954) (not b!2211317) (not b!2211339) (not b!2211337) (not b!2211325) (not b!2211312) (not b!2211334) (not b!2211338) (not b!2211313))
(check-sat)
(get-model)

(declare-fun d!660970 () Bool)

(declare-fun res!950376 () Bool)

(declare-fun e!1412292 () Bool)

(assert (=> d!660970 (=> (not res!950376) (not e!1412292))))

(assert (=> d!660970 (= res!950376 (<= (size!20170 (list!10029 (xs!11399 (right!20218 t!4663)))) 512))))

(assert (=> d!660970 (= (inv!35013 (right!20218 t!4663)) e!1412292)))

(declare-fun b!2211344 () Bool)

(declare-fun res!950377 () Bool)

(assert (=> b!2211344 (=> (not res!950377) (not e!1412292))))

(assert (=> b!2211344 (= res!950377 (= (csize!17145 (right!20218 t!4663)) (size!20170 (list!10029 (xs!11399 (right!20218 t!4663))))))))

(declare-fun b!2211345 () Bool)

(assert (=> b!2211345 (= e!1412292 (and (> (csize!17145 (right!20218 t!4663)) 0) (<= (csize!17145 (right!20218 t!4663)) 512)))))

(assert (= (and d!660970 res!950376) b!2211344))

(assert (= (and b!2211344 res!950377) b!2211345))

(declare-fun m!2653111 () Bool)

(assert (=> d!660970 m!2653111))

(assert (=> d!660970 m!2653111))

(declare-fun m!2653113 () Bool)

(assert (=> d!660970 m!2653113))

(assert (=> b!2211344 m!2653111))

(assert (=> b!2211344 m!2653111))

(assert (=> b!2211344 m!2653113))

(assert (=> b!2211268 d!660970))

(declare-fun d!660972 () Bool)

(declare-fun c!353424 () Bool)

(assert (=> d!660972 (= c!353424 ((_ is Node!8457) (left!19888 (left!19888 t!4663))))))

(declare-fun e!1412293 () Bool)

(assert (=> d!660972 (= (inv!35008 (left!19888 (left!19888 t!4663))) e!1412293)))

(declare-fun b!2211346 () Bool)

(assert (=> b!2211346 (= e!1412293 (inv!35012 (left!19888 (left!19888 t!4663))))))

(declare-fun b!2211347 () Bool)

(declare-fun e!1412294 () Bool)

(assert (=> b!2211347 (= e!1412293 e!1412294)))

(declare-fun res!950378 () Bool)

(assert (=> b!2211347 (= res!950378 (not ((_ is Leaf!12385) (left!19888 (left!19888 t!4663)))))))

(assert (=> b!2211347 (=> res!950378 e!1412294)))

(declare-fun b!2211348 () Bool)

(assert (=> b!2211348 (= e!1412294 (inv!35013 (left!19888 (left!19888 t!4663))))))

(assert (= (and d!660972 c!353424) b!2211346))

(assert (= (and d!660972 (not c!353424)) b!2211347))

(assert (= (and b!2211347 (not res!950378)) b!2211348))

(declare-fun m!2653115 () Bool)

(assert (=> b!2211346 m!2653115))

(declare-fun m!2653117 () Bool)

(assert (=> b!2211348 m!2653117))

(assert (=> b!2211334 d!660972))

(declare-fun d!660974 () Bool)

(declare-fun c!353425 () Bool)

(assert (=> d!660974 (= c!353425 ((_ is Node!8457) (right!20218 (left!19888 t!4663))))))

(declare-fun e!1412295 () Bool)

(assert (=> d!660974 (= (inv!35008 (right!20218 (left!19888 t!4663))) e!1412295)))

(declare-fun b!2211349 () Bool)

(assert (=> b!2211349 (= e!1412295 (inv!35012 (right!20218 (left!19888 t!4663))))))

(declare-fun b!2211350 () Bool)

(declare-fun e!1412296 () Bool)

(assert (=> b!2211350 (= e!1412295 e!1412296)))

(declare-fun res!950379 () Bool)

(assert (=> b!2211350 (= res!950379 (not ((_ is Leaf!12385) (right!20218 (left!19888 t!4663)))))))

(assert (=> b!2211350 (=> res!950379 e!1412296)))

(declare-fun b!2211351 () Bool)

(assert (=> b!2211351 (= e!1412296 (inv!35013 (right!20218 (left!19888 t!4663))))))

(assert (= (and d!660974 c!353425) b!2211349))

(assert (= (and d!660974 (not c!353425)) b!2211350))

(assert (= (and b!2211350 (not res!950379)) b!2211351))

(declare-fun m!2653119 () Bool)

(assert (=> b!2211349 m!2653119))

(declare-fun m!2653121 () Bool)

(assert (=> b!2211351 m!2653121))

(assert (=> b!2211334 d!660974))

(declare-fun d!660976 () Bool)

(declare-fun lt!826433 () Bool)

(assert (=> d!660976 (= lt!826433 (isEmpty!14805 (list!10028 (right!20218 t!4663))))))

(assert (=> d!660976 (= lt!826433 (= (size!20171 (right!20218 t!4663)) 0))))

(assert (=> d!660976 (= (isEmpty!14803 (right!20218 t!4663)) lt!826433)))

(declare-fun bs!451421 () Bool)

(assert (= bs!451421 d!660976))

(assert (=> bs!451421 m!2653029))

(assert (=> bs!451421 m!2653029))

(declare-fun m!2653123 () Bool)

(assert (=> bs!451421 m!2653123))

(declare-fun m!2653125 () Bool)

(assert (=> bs!451421 m!2653125))

(assert (=> b!2211313 d!660976))

(declare-fun d!660978 () Bool)

(assert (=> d!660978 (= (height!1281 (left!19888 t!4663)) (ite ((_ is Empty!8457) (left!19888 t!4663)) 0 (ite ((_ is Leaf!12385) (left!19888 t!4663)) 1 (cheight!8668 (left!19888 t!4663)))))))

(assert (=> b!2211314 d!660978))

(declare-fun d!660980 () Bool)

(assert (=> d!660980 (= (height!1281 (right!20218 t!4663)) (ite ((_ is Empty!8457) (right!20218 t!4663)) 0 (ite ((_ is Leaf!12385) (right!20218 t!4663)) 1 (cheight!8668 (right!20218 t!4663)))))))

(assert (=> b!2211314 d!660980))

(declare-fun d!660982 () Bool)

(assert (=> d!660982 (= (inv!35009 (xs!11399 (left!19888 t!4663))) (<= (size!20170 (innerList!8517 (xs!11399 (left!19888 t!4663)))) 2147483647))))

(declare-fun bs!451422 () Bool)

(assert (= bs!451422 d!660982))

(declare-fun m!2653127 () Bool)

(assert (=> bs!451422 m!2653127))

(assert (=> b!2211335 d!660982))

(declare-fun d!660984 () Bool)

(declare-fun lt!826434 () Bool)

(assert (=> d!660984 (= lt!826434 (isEmpty!14805 (list!10028 (left!19888 t!4663))))))

(assert (=> d!660984 (= lt!826434 (= (size!20171 (left!19888 t!4663)) 0))))

(assert (=> d!660984 (= (isEmpty!14803 (left!19888 t!4663)) lt!826434)))

(declare-fun bs!451423 () Bool)

(assert (= bs!451423 d!660984))

(assert (=> bs!451423 m!2653027))

(assert (=> bs!451423 m!2653027))

(declare-fun m!2653129 () Bool)

(assert (=> bs!451423 m!2653129))

(declare-fun m!2653131 () Bool)

(assert (=> bs!451423 m!2653131))

(assert (=> b!2211315 d!660984))

(declare-fun b!2211352 () Bool)

(declare-fun res!950383 () Bool)

(declare-fun e!1412298 () Bool)

(assert (=> b!2211352 (=> (not res!950383) (not e!1412298))))

(assert (=> b!2211352 (= res!950383 (isBalanced!2615 (right!20218 (left!19888 t!4663))))))

(declare-fun b!2211353 () Bool)

(assert (=> b!2211353 (= e!1412298 (not (isEmpty!14803 (right!20218 (left!19888 t!4663)))))))

(declare-fun d!660986 () Bool)

(declare-fun res!950381 () Bool)

(declare-fun e!1412297 () Bool)

(assert (=> d!660986 (=> res!950381 e!1412297)))

(assert (=> d!660986 (= res!950381 (not ((_ is Node!8457) (left!19888 t!4663))))))

(assert (=> d!660986 (= (isBalanced!2615 (left!19888 t!4663)) e!1412297)))

(declare-fun b!2211354 () Bool)

(assert (=> b!2211354 (= e!1412297 e!1412298)))

(declare-fun res!950384 () Bool)

(assert (=> b!2211354 (=> (not res!950384) (not e!1412298))))

(assert (=> b!2211354 (= res!950384 (<= (- 1) (- (height!1281 (left!19888 (left!19888 t!4663))) (height!1281 (right!20218 (left!19888 t!4663))))))))

(declare-fun b!2211355 () Bool)

(declare-fun res!950385 () Bool)

(assert (=> b!2211355 (=> (not res!950385) (not e!1412298))))

(assert (=> b!2211355 (= res!950385 (not (isEmpty!14803 (left!19888 (left!19888 t!4663)))))))

(declare-fun b!2211356 () Bool)

(declare-fun res!950380 () Bool)

(assert (=> b!2211356 (=> (not res!950380) (not e!1412298))))

(assert (=> b!2211356 (= res!950380 (isBalanced!2615 (left!19888 (left!19888 t!4663))))))

(declare-fun b!2211357 () Bool)

(declare-fun res!950382 () Bool)

(assert (=> b!2211357 (=> (not res!950382) (not e!1412298))))

(assert (=> b!2211357 (= res!950382 (<= (- (height!1281 (left!19888 (left!19888 t!4663))) (height!1281 (right!20218 (left!19888 t!4663)))) 1))))

(assert (= (and d!660986 (not res!950381)) b!2211354))

(assert (= (and b!2211354 res!950384) b!2211357))

(assert (= (and b!2211357 res!950382) b!2211356))

(assert (= (and b!2211356 res!950380) b!2211352))

(assert (= (and b!2211352 res!950383) b!2211355))

(assert (= (and b!2211355 res!950385) b!2211353))

(declare-fun m!2653133 () Bool)

(assert (=> b!2211352 m!2653133))

(declare-fun m!2653135 () Bool)

(assert (=> b!2211353 m!2653135))

(declare-fun m!2653137 () Bool)

(assert (=> b!2211354 m!2653137))

(declare-fun m!2653139 () Bool)

(assert (=> b!2211354 m!2653139))

(assert (=> b!2211357 m!2653137))

(assert (=> b!2211357 m!2653139))

(declare-fun m!2653141 () Bool)

(assert (=> b!2211355 m!2653141))

(declare-fun m!2653143 () Bool)

(assert (=> b!2211356 m!2653143))

(assert (=> b!2211316 d!660986))

(declare-fun d!660988 () Bool)

(declare-fun res!950398 () Bool)

(declare-fun e!1412307 () Bool)

(assert (=> d!660988 (=> (not res!950398) (not e!1412307))))

(assert (=> d!660988 (= res!950398 (= (csize!17144 t!4663) (+ (size!20171 (left!19888 t!4663)) (size!20171 (right!20218 t!4663)))))))

(assert (=> d!660988 (= (inv!35012 t!4663) e!1412307)))

(declare-fun b!2211376 () Bool)

(declare-fun res!950399 () Bool)

(assert (=> b!2211376 (=> (not res!950399) (not e!1412307))))

(assert (=> b!2211376 (= res!950399 (and (not (= (left!19888 t!4663) Empty!8457)) (not (= (right!20218 t!4663) Empty!8457))))))

(declare-fun b!2211377 () Bool)

(declare-fun res!950400 () Bool)

(assert (=> b!2211377 (=> (not res!950400) (not e!1412307))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2211377 (= res!950400 (= (cheight!8668 t!4663) (+ (max!0 (height!1281 (left!19888 t!4663)) (height!1281 (right!20218 t!4663))) 1)))))

(declare-fun b!2211378 () Bool)

(assert (=> b!2211378 (= e!1412307 (<= 0 (cheight!8668 t!4663)))))

(assert (= (and d!660988 res!950398) b!2211376))

(assert (= (and b!2211376 res!950399) b!2211377))

(assert (= (and b!2211377 res!950400) b!2211378))

(assert (=> d!660988 m!2653131))

(assert (=> d!660988 m!2653125))

(assert (=> b!2211377 m!2653087))

(assert (=> b!2211377 m!2653089))

(assert (=> b!2211377 m!2653087))

(assert (=> b!2211377 m!2653089))

(declare-fun m!2653167 () Bool)

(assert (=> b!2211377 m!2653167))

(assert (=> b!2211318 d!660988))

(assert (=> b!2211317 d!660978))

(assert (=> b!2211317 d!660980))

(declare-fun d!660996 () Bool)

(declare-fun c!353433 () Bool)

(assert (=> d!660996 (= c!353433 ((_ is Node!8457) (left!19888 (right!20218 t!4663))))))

(declare-fun e!1412312 () Bool)

(assert (=> d!660996 (= (inv!35008 (left!19888 (right!20218 t!4663))) e!1412312)))

(declare-fun b!2211387 () Bool)

(assert (=> b!2211387 (= e!1412312 (inv!35012 (left!19888 (right!20218 t!4663))))))

(declare-fun b!2211388 () Bool)

(declare-fun e!1412313 () Bool)

(assert (=> b!2211388 (= e!1412312 e!1412313)))

(declare-fun res!950401 () Bool)

(assert (=> b!2211388 (= res!950401 (not ((_ is Leaf!12385) (left!19888 (right!20218 t!4663)))))))

(assert (=> b!2211388 (=> res!950401 e!1412313)))

(declare-fun b!2211389 () Bool)

(assert (=> b!2211389 (= e!1412313 (inv!35013 (left!19888 (right!20218 t!4663))))))

(assert (= (and d!660996 c!353433) b!2211387))

(assert (= (and d!660996 (not c!353433)) b!2211388))

(assert (= (and b!2211388 (not res!950401)) b!2211389))

(declare-fun m!2653177 () Bool)

(assert (=> b!2211387 m!2653177))

(declare-fun m!2653179 () Bool)

(assert (=> b!2211389 m!2653179))

(assert (=> b!2211337 d!660996))

(declare-fun d!661000 () Bool)

(declare-fun c!353434 () Bool)

(assert (=> d!661000 (= c!353434 ((_ is Node!8457) (right!20218 (right!20218 t!4663))))))

(declare-fun e!1412314 () Bool)

(assert (=> d!661000 (= (inv!35008 (right!20218 (right!20218 t!4663))) e!1412314)))

(declare-fun b!2211390 () Bool)

(assert (=> b!2211390 (= e!1412314 (inv!35012 (right!20218 (right!20218 t!4663))))))

(declare-fun b!2211391 () Bool)

(declare-fun e!1412315 () Bool)

(assert (=> b!2211391 (= e!1412314 e!1412315)))

(declare-fun res!950402 () Bool)

(assert (=> b!2211391 (= res!950402 (not ((_ is Leaf!12385) (right!20218 (right!20218 t!4663)))))))

(assert (=> b!2211391 (=> res!950402 e!1412315)))

(declare-fun b!2211392 () Bool)

(assert (=> b!2211392 (= e!1412315 (inv!35013 (right!20218 (right!20218 t!4663))))))

(assert (= (and d!661000 c!353434) b!2211390))

(assert (= (and d!661000 (not c!353434)) b!2211391))

(assert (= (and b!2211391 (not res!950402)) b!2211392))

(declare-fun m!2653181 () Bool)

(assert (=> b!2211390 m!2653181))

(declare-fun m!2653183 () Bool)

(assert (=> b!2211392 m!2653183))

(assert (=> b!2211337 d!661000))

(declare-fun d!661004 () Bool)

(declare-fun res!950403 () Bool)

(declare-fun e!1412316 () Bool)

(assert (=> d!661004 (=> (not res!950403) (not e!1412316))))

(assert (=> d!661004 (= res!950403 (<= (size!20170 (list!10029 (xs!11399 t!4663))) 512))))

(assert (=> d!661004 (= (inv!35013 t!4663) e!1412316)))

(declare-fun b!2211393 () Bool)

(declare-fun res!950404 () Bool)

(assert (=> b!2211393 (=> (not res!950404) (not e!1412316))))

(assert (=> b!2211393 (= res!950404 (= (csize!17145 t!4663) (size!20170 (list!10029 (xs!11399 t!4663)))))))

(declare-fun b!2211394 () Bool)

(assert (=> b!2211394 (= e!1412316 (and (> (csize!17145 t!4663) 0) (<= (csize!17145 t!4663) 512)))))

(assert (= (and d!661004 res!950403) b!2211393))

(assert (= (and b!2211393 res!950404) b!2211394))

(assert (=> d!661004 m!2653025))

(assert (=> d!661004 m!2653025))

(declare-fun m!2653185 () Bool)

(assert (=> d!661004 m!2653185))

(assert (=> b!2211393 m!2653025))

(assert (=> b!2211393 m!2653025))

(assert (=> b!2211393 m!2653185))

(assert (=> b!2211320 d!661004))

(declare-fun d!661006 () Bool)

(declare-fun res!950405 () Bool)

(declare-fun e!1412317 () Bool)

(assert (=> d!661006 (=> (not res!950405) (not e!1412317))))

(assert (=> d!661006 (= res!950405 (= (csize!17144 (left!19888 t!4663)) (+ (size!20171 (left!19888 (left!19888 t!4663))) (size!20171 (right!20218 (left!19888 t!4663))))))))

(assert (=> d!661006 (= (inv!35012 (left!19888 t!4663)) e!1412317)))

(declare-fun b!2211395 () Bool)

(declare-fun res!950406 () Bool)

(assert (=> b!2211395 (=> (not res!950406) (not e!1412317))))

(assert (=> b!2211395 (= res!950406 (and (not (= (left!19888 (left!19888 t!4663)) Empty!8457)) (not (= (right!20218 (left!19888 t!4663)) Empty!8457))))))

(declare-fun b!2211396 () Bool)

(declare-fun res!950407 () Bool)

(assert (=> b!2211396 (=> (not res!950407) (not e!1412317))))

(assert (=> b!2211396 (= res!950407 (= (cheight!8668 (left!19888 t!4663)) (+ (max!0 (height!1281 (left!19888 (left!19888 t!4663))) (height!1281 (right!20218 (left!19888 t!4663)))) 1)))))

(declare-fun b!2211397 () Bool)

(assert (=> b!2211397 (= e!1412317 (<= 0 (cheight!8668 (left!19888 t!4663))))))

(assert (= (and d!661006 res!950405) b!2211395))

(assert (= (and b!2211395 res!950406) b!2211396))

(assert (= (and b!2211396 res!950407) b!2211397))

(declare-fun m!2653187 () Bool)

(assert (=> d!661006 m!2653187))

(declare-fun m!2653189 () Bool)

(assert (=> d!661006 m!2653189))

(assert (=> b!2211396 m!2653137))

(assert (=> b!2211396 m!2653139))

(assert (=> b!2211396 m!2653137))

(assert (=> b!2211396 m!2653139))

(declare-fun m!2653193 () Bool)

(assert (=> b!2211396 m!2653193))

(assert (=> b!2211263 d!661006))

(declare-fun d!661010 () Bool)

(assert (=> d!661010 (= (inv!35009 (xs!11399 (right!20218 t!4663))) (<= (size!20170 (innerList!8517 (xs!11399 (right!20218 t!4663)))) 2147483647))))

(declare-fun bs!451425 () Bool)

(assert (= bs!451425 d!661010))

(declare-fun m!2653199 () Bool)

(assert (=> bs!451425 m!2653199))

(assert (=> b!2211338 d!661010))

(declare-fun d!661014 () Bool)

(assert (=> d!661014 (= (isEmpty!14805 (list!10028 t!4663)) ((_ is Nil!25860) (list!10028 t!4663)))))

(assert (=> d!660956 d!661014))

(assert (=> d!660956 d!660946))

(declare-fun d!661024 () Bool)

(declare-fun lt!826446 () Int)

(assert (=> d!661024 (= lt!826446 (size!20170 (list!10028 t!4663)))))

(assert (=> d!661024 (= lt!826446 (ite ((_ is Empty!8457) t!4663) 0 (ite ((_ is Leaf!12385) t!4663) (csize!17145 t!4663) (csize!17144 t!4663))))))

(assert (=> d!661024 (= (size!20171 t!4663) lt!826446)))

(declare-fun bs!451427 () Bool)

(assert (= bs!451427 d!661024))

(assert (=> bs!451427 m!2653001))

(assert (=> bs!451427 m!2653001))

(declare-fun m!2653209 () Bool)

(assert (=> bs!451427 m!2653209))

(assert (=> d!660956 d!661024))

(declare-fun d!661028 () Bool)

(assert (=> d!661028 (= (list!10029 (xs!11399 t!4663)) (innerList!8517 (xs!11399 t!4663)))))

(assert (=> b!2211234 d!661028))

(declare-fun d!661030 () Bool)

(declare-fun res!950416 () Bool)

(declare-fun e!1412327 () Bool)

(assert (=> d!661030 (=> (not res!950416) (not e!1412327))))

(assert (=> d!661030 (= res!950416 (<= (size!20170 (list!10029 (xs!11399 (left!19888 t!4663)))) 512))))

(assert (=> d!661030 (= (inv!35013 (left!19888 t!4663)) e!1412327)))

(declare-fun b!2211416 () Bool)

(declare-fun res!950417 () Bool)

(assert (=> b!2211416 (=> (not res!950417) (not e!1412327))))

(assert (=> b!2211416 (= res!950417 (= (csize!17145 (left!19888 t!4663)) (size!20170 (list!10029 (xs!11399 (left!19888 t!4663))))))))

(declare-fun b!2211417 () Bool)

(assert (=> b!2211417 (= e!1412327 (and (> (csize!17145 (left!19888 t!4663)) 0) (<= (csize!17145 (left!19888 t!4663)) 512)))))

(assert (= (and d!661030 res!950416) b!2211416))

(assert (= (and b!2211416 res!950417) b!2211417))

(declare-fun m!2653221 () Bool)

(assert (=> d!661030 m!2653221))

(assert (=> d!661030 m!2653221))

(declare-fun m!2653223 () Bool)

(assert (=> d!661030 m!2653223))

(assert (=> b!2211416 m!2653221))

(assert (=> b!2211416 m!2653221))

(assert (=> b!2211416 m!2653223))

(assert (=> b!2211265 d!661030))

(declare-fun d!661034 () Bool)

(declare-fun lt!826450 () Int)

(assert (=> d!661034 (>= lt!826450 0)))

(declare-fun e!1412341 () Int)

(assert (=> d!661034 (= lt!826450 e!1412341)))

(declare-fun c!353444 () Bool)

(assert (=> d!661034 (= c!353444 ((_ is Nil!25860) (innerList!8517 (xs!11399 t!4663))))))

(assert (=> d!661034 (= (size!20170 (innerList!8517 (xs!11399 t!4663))) lt!826450)))

(declare-fun b!2211447 () Bool)

(assert (=> b!2211447 (= e!1412341 0)))

(declare-fun b!2211448 () Bool)

(assert (=> b!2211448 (= e!1412341 (+ 1 (size!20170 (t!198658 (innerList!8517 (xs!11399 t!4663))))))))

(assert (= (and d!661034 c!353444) b!2211447))

(assert (= (and d!661034 (not c!353444)) b!2211448))

(declare-fun m!2653261 () Bool)

(assert (=> b!2211448 m!2653261))

(assert (=> d!660954 d!661034))

(declare-fun d!661050 () Bool)

(declare-fun res!950441 () Bool)

(declare-fun e!1412343 () Bool)

(assert (=> d!661050 (=> (not res!950441) (not e!1412343))))

(assert (=> d!661050 (= res!950441 (= (csize!17144 (right!20218 t!4663)) (+ (size!20171 (left!19888 (right!20218 t!4663))) (size!20171 (right!20218 (right!20218 t!4663))))))))

(assert (=> d!661050 (= (inv!35012 (right!20218 t!4663)) e!1412343)))

(declare-fun b!2211451 () Bool)

(declare-fun res!950442 () Bool)

(assert (=> b!2211451 (=> (not res!950442) (not e!1412343))))

(assert (=> b!2211451 (= res!950442 (and (not (= (left!19888 (right!20218 t!4663)) Empty!8457)) (not (= (right!20218 (right!20218 t!4663)) Empty!8457))))))

(declare-fun b!2211452 () Bool)

(declare-fun res!950443 () Bool)

(assert (=> b!2211452 (=> (not res!950443) (not e!1412343))))

(assert (=> b!2211452 (= res!950443 (= (cheight!8668 (right!20218 t!4663)) (+ (max!0 (height!1281 (left!19888 (right!20218 t!4663))) (height!1281 (right!20218 (right!20218 t!4663)))) 1)))))

(declare-fun b!2211453 () Bool)

(assert (=> b!2211453 (= e!1412343 (<= 0 (cheight!8668 (right!20218 t!4663))))))

(assert (= (and d!661050 res!950441) b!2211451))

(assert (= (and b!2211451 res!950442) b!2211452))

(assert (= (and b!2211452 res!950443) b!2211453))

(declare-fun m!2653269 () Bool)

(assert (=> d!661050 m!2653269))

(declare-fun m!2653273 () Bool)

(assert (=> d!661050 m!2653273))

(declare-fun m!2653277 () Bool)

(assert (=> b!2211452 m!2653277))

(declare-fun m!2653279 () Bool)

(assert (=> b!2211452 m!2653279))

(assert (=> b!2211452 m!2653277))

(assert (=> b!2211452 m!2653279))

(declare-fun m!2653281 () Bool)

(assert (=> b!2211452 m!2653281))

(assert (=> b!2211266 d!661050))

(declare-fun b!2211490 () Bool)

(declare-fun e!1412364 () Bool)

(declare-fun lt!826454 () List!25944)

(assert (=> b!2211490 (= e!1412364 (or (not (= (list!10028 (right!20218 t!4663)) Nil!25860)) (= lt!826454 (list!10028 (left!19888 t!4663)))))))

(declare-fun b!2211488 () Bool)

(declare-fun e!1412363 () List!25944)

(assert (=> b!2211488 (= e!1412363 (Cons!25860 (h!31261 (list!10028 (left!19888 t!4663))) (++!6446 (t!198658 (list!10028 (left!19888 t!4663))) (list!10028 (right!20218 t!4663)))))))

(declare-fun b!2211489 () Bool)

(declare-fun res!950458 () Bool)

(assert (=> b!2211489 (=> (not res!950458) (not e!1412364))))

(assert (=> b!2211489 (= res!950458 (= (size!20170 lt!826454) (+ (size!20170 (list!10028 (left!19888 t!4663))) (size!20170 (list!10028 (right!20218 t!4663))))))))

(declare-fun d!661056 () Bool)

(assert (=> d!661056 e!1412364))

(declare-fun res!950459 () Bool)

(assert (=> d!661056 (=> (not res!950459) (not e!1412364))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3514 (List!25944) (InoxSet T!40564))

(assert (=> d!661056 (= res!950459 (= (content!3514 lt!826454) ((_ map or) (content!3514 (list!10028 (left!19888 t!4663))) (content!3514 (list!10028 (right!20218 t!4663))))))))

(assert (=> d!661056 (= lt!826454 e!1412363)))

(declare-fun c!353447 () Bool)

(assert (=> d!661056 (= c!353447 ((_ is Nil!25860) (list!10028 (left!19888 t!4663))))))

(assert (=> d!661056 (= (++!6446 (list!10028 (left!19888 t!4663)) (list!10028 (right!20218 t!4663))) lt!826454)))

(declare-fun b!2211487 () Bool)

(assert (=> b!2211487 (= e!1412363 (list!10028 (right!20218 t!4663)))))

(assert (= (and d!661056 c!353447) b!2211487))

(assert (= (and d!661056 (not c!353447)) b!2211488))

(assert (= (and d!661056 res!950459) b!2211489))

(assert (= (and b!2211489 res!950458) b!2211490))

(assert (=> b!2211488 m!2653029))

(declare-fun m!2653313 () Bool)

(assert (=> b!2211488 m!2653313))

(declare-fun m!2653315 () Bool)

(assert (=> b!2211489 m!2653315))

(assert (=> b!2211489 m!2653027))

(declare-fun m!2653317 () Bool)

(assert (=> b!2211489 m!2653317))

(assert (=> b!2211489 m!2653029))

(declare-fun m!2653319 () Bool)

(assert (=> b!2211489 m!2653319))

(declare-fun m!2653321 () Bool)

(assert (=> d!661056 m!2653321))

(assert (=> d!661056 m!2653027))

(declare-fun m!2653323 () Bool)

(assert (=> d!661056 m!2653323))

(assert (=> d!661056 m!2653029))

(declare-fun m!2653325 () Bool)

(assert (=> d!661056 m!2653325))

(assert (=> b!2211235 d!661056))

(declare-fun d!661064 () Bool)

(declare-fun c!353448 () Bool)

(assert (=> d!661064 (= c!353448 ((_ is Empty!8457) (left!19888 t!4663)))))

(declare-fun e!1412365 () List!25944)

(assert (=> d!661064 (= (list!10028 (left!19888 t!4663)) e!1412365)))

(declare-fun b!2211491 () Bool)

(assert (=> b!2211491 (= e!1412365 Nil!25860)))

(declare-fun b!2211492 () Bool)

(declare-fun e!1412366 () List!25944)

(assert (=> b!2211492 (= e!1412365 e!1412366)))

(declare-fun c!353449 () Bool)

(assert (=> b!2211492 (= c!353449 ((_ is Leaf!12385) (left!19888 t!4663)))))

(declare-fun b!2211493 () Bool)

(assert (=> b!2211493 (= e!1412366 (list!10029 (xs!11399 (left!19888 t!4663))))))

(declare-fun b!2211494 () Bool)

(assert (=> b!2211494 (= e!1412366 (++!6446 (list!10028 (left!19888 (left!19888 t!4663))) (list!10028 (right!20218 (left!19888 t!4663)))))))

(assert (= (and d!661064 c!353448) b!2211491))

(assert (= (and d!661064 (not c!353448)) b!2211492))

(assert (= (and b!2211492 c!353449) b!2211493))

(assert (= (and b!2211492 (not c!353449)) b!2211494))

(assert (=> b!2211493 m!2653221))

(declare-fun m!2653327 () Bool)

(assert (=> b!2211494 m!2653327))

(declare-fun m!2653329 () Bool)

(assert (=> b!2211494 m!2653329))

(assert (=> b!2211494 m!2653327))

(assert (=> b!2211494 m!2653329))

(declare-fun m!2653331 () Bool)

(assert (=> b!2211494 m!2653331))

(assert (=> b!2211235 d!661064))

(declare-fun d!661066 () Bool)

(declare-fun c!353450 () Bool)

(assert (=> d!661066 (= c!353450 ((_ is Empty!8457) (right!20218 t!4663)))))

(declare-fun e!1412367 () List!25944)

(assert (=> d!661066 (= (list!10028 (right!20218 t!4663)) e!1412367)))

(declare-fun b!2211495 () Bool)

(assert (=> b!2211495 (= e!1412367 Nil!25860)))

(declare-fun b!2211496 () Bool)

(declare-fun e!1412368 () List!25944)

(assert (=> b!2211496 (= e!1412367 e!1412368)))

(declare-fun c!353451 () Bool)

(assert (=> b!2211496 (= c!353451 ((_ is Leaf!12385) (right!20218 t!4663)))))

(declare-fun b!2211497 () Bool)

(assert (=> b!2211497 (= e!1412368 (list!10029 (xs!11399 (right!20218 t!4663))))))

(declare-fun b!2211498 () Bool)

(assert (=> b!2211498 (= e!1412368 (++!6446 (list!10028 (left!19888 (right!20218 t!4663))) (list!10028 (right!20218 (right!20218 t!4663)))))))

(assert (= (and d!661066 c!353450) b!2211495))

(assert (= (and d!661066 (not c!353450)) b!2211496))

(assert (= (and b!2211496 c!353451) b!2211497))

(assert (= (and b!2211496 (not c!353451)) b!2211498))

(assert (=> b!2211497 m!2653111))

(declare-fun m!2653333 () Bool)

(assert (=> b!2211498 m!2653333))

(declare-fun m!2653335 () Bool)

(assert (=> b!2211498 m!2653335))

(assert (=> b!2211498 m!2653333))

(assert (=> b!2211498 m!2653335))

(declare-fun m!2653337 () Bool)

(assert (=> b!2211498 m!2653337))

(assert (=> b!2211235 d!661066))

(declare-fun b!2211499 () Bool)

(declare-fun res!950463 () Bool)

(declare-fun e!1412370 () Bool)

(assert (=> b!2211499 (=> (not res!950463) (not e!1412370))))

(assert (=> b!2211499 (= res!950463 (isBalanced!2615 (right!20218 (right!20218 t!4663))))))

(declare-fun b!2211500 () Bool)

(assert (=> b!2211500 (= e!1412370 (not (isEmpty!14803 (right!20218 (right!20218 t!4663)))))))

(declare-fun d!661068 () Bool)

(declare-fun res!950461 () Bool)

(declare-fun e!1412369 () Bool)

(assert (=> d!661068 (=> res!950461 e!1412369)))

(assert (=> d!661068 (= res!950461 (not ((_ is Node!8457) (right!20218 t!4663))))))

(assert (=> d!661068 (= (isBalanced!2615 (right!20218 t!4663)) e!1412369)))

(declare-fun b!2211501 () Bool)

(assert (=> b!2211501 (= e!1412369 e!1412370)))

(declare-fun res!950464 () Bool)

(assert (=> b!2211501 (=> (not res!950464) (not e!1412370))))

(assert (=> b!2211501 (= res!950464 (<= (- 1) (- (height!1281 (left!19888 (right!20218 t!4663))) (height!1281 (right!20218 (right!20218 t!4663))))))))

(declare-fun b!2211502 () Bool)

(declare-fun res!950465 () Bool)

(assert (=> b!2211502 (=> (not res!950465) (not e!1412370))))

(assert (=> b!2211502 (= res!950465 (not (isEmpty!14803 (left!19888 (right!20218 t!4663)))))))

(declare-fun b!2211503 () Bool)

(declare-fun res!950460 () Bool)

(assert (=> b!2211503 (=> (not res!950460) (not e!1412370))))

(assert (=> b!2211503 (= res!950460 (isBalanced!2615 (left!19888 (right!20218 t!4663))))))

(declare-fun b!2211504 () Bool)

(declare-fun res!950462 () Bool)

(assert (=> b!2211504 (=> (not res!950462) (not e!1412370))))

(assert (=> b!2211504 (= res!950462 (<= (- (height!1281 (left!19888 (right!20218 t!4663))) (height!1281 (right!20218 (right!20218 t!4663)))) 1))))

(assert (= (and d!661068 (not res!950461)) b!2211501))

(assert (= (and b!2211501 res!950464) b!2211504))

(assert (= (and b!2211504 res!950462) b!2211503))

(assert (= (and b!2211503 res!950460) b!2211499))

(assert (= (and b!2211499 res!950463) b!2211502))

(assert (= (and b!2211502 res!950465) b!2211500))

(declare-fun m!2653339 () Bool)

(assert (=> b!2211499 m!2653339))

(declare-fun m!2653341 () Bool)

(assert (=> b!2211500 m!2653341))

(assert (=> b!2211501 m!2653277))

(assert (=> b!2211501 m!2653279))

(assert (=> b!2211504 m!2653277))

(assert (=> b!2211504 m!2653279))

(declare-fun m!2653343 () Bool)

(assert (=> b!2211502 m!2653343))

(declare-fun m!2653345 () Bool)

(assert (=> b!2211503 m!2653345))

(assert (=> b!2211312 d!661068))

(assert (=> b!2211208 d!660958))

(assert (=> b!2211208 d!660964))

(declare-fun tp!687294 () Bool)

(declare-fun e!1412372 () Bool)

(declare-fun b!2211505 () Bool)

(declare-fun tp!687293 () Bool)

(assert (=> b!2211505 (= e!1412372 (and (inv!35008 (left!19888 (left!19888 (left!19888 t!4663)))) tp!687293 (inv!35008 (right!20218 (left!19888 (left!19888 t!4663)))) tp!687294))))

(declare-fun b!2211507 () Bool)

(declare-fun e!1412371 () Bool)

(declare-fun tp!687292 () Bool)

(assert (=> b!2211507 (= e!1412371 tp!687292)))

(declare-fun b!2211506 () Bool)

(assert (=> b!2211506 (= e!1412372 (and (inv!35009 (xs!11399 (left!19888 (left!19888 t!4663)))) e!1412371))))

(assert (=> b!2211334 (= tp!687272 (and (inv!35008 (left!19888 (left!19888 t!4663))) e!1412372))))

(assert (= (and b!2211334 ((_ is Node!8457) (left!19888 (left!19888 t!4663)))) b!2211505))

(assert (= b!2211506 b!2211507))

(assert (= (and b!2211334 ((_ is Leaf!12385) (left!19888 (left!19888 t!4663)))) b!2211506))

(declare-fun m!2653347 () Bool)

(assert (=> b!2211505 m!2653347))

(declare-fun m!2653349 () Bool)

(assert (=> b!2211505 m!2653349))

(declare-fun m!2653351 () Bool)

(assert (=> b!2211506 m!2653351))

(assert (=> b!2211334 m!2653099))

(declare-fun b!2211508 () Bool)

(declare-fun tp!687296 () Bool)

(declare-fun e!1412374 () Bool)

(declare-fun tp!687297 () Bool)

(assert (=> b!2211508 (= e!1412374 (and (inv!35008 (left!19888 (right!20218 (left!19888 t!4663)))) tp!687296 (inv!35008 (right!20218 (right!20218 (left!19888 t!4663)))) tp!687297))))

(declare-fun b!2211510 () Bool)

(declare-fun e!1412373 () Bool)

(declare-fun tp!687295 () Bool)

(assert (=> b!2211510 (= e!1412373 tp!687295)))

(declare-fun b!2211509 () Bool)

(assert (=> b!2211509 (= e!1412374 (and (inv!35009 (xs!11399 (right!20218 (left!19888 t!4663)))) e!1412373))))

(assert (=> b!2211334 (= tp!687273 (and (inv!35008 (right!20218 (left!19888 t!4663))) e!1412374))))

(assert (= (and b!2211334 ((_ is Node!8457) (right!20218 (left!19888 t!4663)))) b!2211508))

(assert (= b!2211509 b!2211510))

(assert (= (and b!2211334 ((_ is Leaf!12385) (right!20218 (left!19888 t!4663)))) b!2211509))

(declare-fun m!2653353 () Bool)

(assert (=> b!2211508 m!2653353))

(declare-fun m!2653355 () Bool)

(assert (=> b!2211508 m!2653355))

(declare-fun m!2653357 () Bool)

(assert (=> b!2211509 m!2653357))

(assert (=> b!2211334 m!2653101))

(declare-fun b!2211511 () Bool)

(declare-fun e!1412375 () Bool)

(declare-fun tp!687298 () Bool)

(assert (=> b!2211511 (= e!1412375 (and tp_is_empty!9781 tp!687298))))

(assert (=> b!2211339 (= tp!687274 e!1412375)))

(assert (= (and b!2211339 ((_ is Cons!25860) (innerList!8517 (xs!11399 (right!20218 t!4663))))) b!2211511))

(declare-fun b!2211512 () Bool)

(declare-fun e!1412376 () Bool)

(declare-fun tp!687299 () Bool)

(assert (=> b!2211512 (= e!1412376 (and tp_is_empty!9781 tp!687299))))

(assert (=> b!2211336 (= tp!687271 e!1412376)))

(assert (= (and b!2211336 ((_ is Cons!25860) (innerList!8517 (xs!11399 (left!19888 t!4663))))) b!2211512))

(declare-fun b!2211513 () Bool)

(declare-fun e!1412377 () Bool)

(declare-fun tp!687300 () Bool)

(assert (=> b!2211513 (= e!1412377 (and tp_is_empty!9781 tp!687300))))

(assert (=> b!2211325 (= tp!687264 e!1412377)))

(assert (= (and b!2211325 ((_ is Cons!25860) (t!198658 (innerList!8517 (xs!11399 t!4663))))) b!2211513))

(declare-fun b!2211514 () Bool)

(declare-fun tp!687302 () Bool)

(declare-fun e!1412379 () Bool)

(declare-fun tp!687303 () Bool)

(assert (=> b!2211514 (= e!1412379 (and (inv!35008 (left!19888 (left!19888 (right!20218 t!4663)))) tp!687302 (inv!35008 (right!20218 (left!19888 (right!20218 t!4663)))) tp!687303))))

(declare-fun b!2211516 () Bool)

(declare-fun e!1412378 () Bool)

(declare-fun tp!687301 () Bool)

(assert (=> b!2211516 (= e!1412378 tp!687301)))

(declare-fun b!2211515 () Bool)

(assert (=> b!2211515 (= e!1412379 (and (inv!35009 (xs!11399 (left!19888 (right!20218 t!4663)))) e!1412378))))

(assert (=> b!2211337 (= tp!687275 (and (inv!35008 (left!19888 (right!20218 t!4663))) e!1412379))))

(assert (= (and b!2211337 ((_ is Node!8457) (left!19888 (right!20218 t!4663)))) b!2211514))

(assert (= b!2211515 b!2211516))

(assert (= (and b!2211337 ((_ is Leaf!12385) (left!19888 (right!20218 t!4663)))) b!2211515))

(declare-fun m!2653359 () Bool)

(assert (=> b!2211514 m!2653359))

(declare-fun m!2653361 () Bool)

(assert (=> b!2211514 m!2653361))

(declare-fun m!2653363 () Bool)

(assert (=> b!2211515 m!2653363))

(assert (=> b!2211337 m!2653105))

(declare-fun b!2211517 () Bool)

(declare-fun tp!687306 () Bool)

(declare-fun tp!687305 () Bool)

(declare-fun e!1412381 () Bool)

(assert (=> b!2211517 (= e!1412381 (and (inv!35008 (left!19888 (right!20218 (right!20218 t!4663)))) tp!687305 (inv!35008 (right!20218 (right!20218 (right!20218 t!4663)))) tp!687306))))

(declare-fun b!2211519 () Bool)

(declare-fun e!1412380 () Bool)

(declare-fun tp!687304 () Bool)

(assert (=> b!2211519 (= e!1412380 tp!687304)))

(declare-fun b!2211518 () Bool)

(assert (=> b!2211518 (= e!1412381 (and (inv!35009 (xs!11399 (right!20218 (right!20218 t!4663)))) e!1412380))))

(assert (=> b!2211337 (= tp!687276 (and (inv!35008 (right!20218 (right!20218 t!4663))) e!1412381))))

(assert (= (and b!2211337 ((_ is Node!8457) (right!20218 (right!20218 t!4663)))) b!2211517))

(assert (= b!2211518 b!2211519))

(assert (= (and b!2211337 ((_ is Leaf!12385) (right!20218 (right!20218 t!4663)))) b!2211518))

(declare-fun m!2653365 () Bool)

(assert (=> b!2211517 m!2653365))

(declare-fun m!2653367 () Bool)

(assert (=> b!2211517 m!2653367))

(declare-fun m!2653369 () Bool)

(assert (=> b!2211518 m!2653369))

(assert (=> b!2211337 m!2653107))

(check-sat (not b!2211514) (not d!661024) (not b!2211396) (not b!2211353) (not b!2211334) (not b!2211389) (not b!2211504) (not b!2211448) (not d!660976) (not b!2211512) (not b!2211352) (not b!2211498) tp_is_empty!9781 (not d!661056) (not b!2211348) (not d!661006) (not d!661030) (not b!2211516) (not d!660988) (not b!2211510) (not d!661050) (not b!2211354) (not b!2211488) (not b!2211387) (not b!2211337) (not b!2211494) (not d!660984) (not b!2211393) (not b!2211503) (not b!2211513) (not b!2211519) (not d!660970) (not b!2211517) (not b!2211500) (not b!2211518) (not b!2211355) (not b!2211356) (not b!2211349) (not b!2211344) (not b!2211515) (not b!2211346) (not d!661004) (not d!660982) (not b!2211502) (not b!2211497) (not b!2211493) (not b!2211508) (not b!2211501) (not b!2211506) (not b!2211452) (not b!2211489) (not b!2211392) (not b!2211505) (not b!2211499) (not d!661010) (not b!2211511) (not b!2211507) (not b!2211377) (not b!2211416) (not b!2211357) (not b!2211351) (not b!2211509) (not b!2211390))
(check-sat)
