; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107456 () Bool)

(assert start!107456)

(declare-fun bm!84218 () Bool)

(declare-datatypes ((T!22300 0))(
  ( (T!22301 (val!3962 Int)) )
))
(declare-datatypes ((List!12141 0))(
  ( (Nil!12117) (Cons!12117 (h!17518 T!22300) (t!112557 List!12141)) )
))
(declare-fun call!84223 () List!12141)

(declare-fun call!84225 () List!12141)

(assert (=> bm!84218 (= call!84223 call!84225)))

(declare-fun l!2744 () List!12141)

(declare-fun from!613 () Int)

(declare-fun b!1206110 () Bool)

(declare-fun lt!412400 () Int)

(declare-fun e!773771 () List!12141)

(declare-fun ++!3139 (List!12141 List!12141) List!12141)

(declare-fun slice!521 (List!12141 Int Int) List!12141)

(assert (=> b!1206110 (= e!773771 (++!3139 (slice!521 l!2744 from!613 lt!412400) call!84223))))

(declare-fun b!1206111 () Bool)

(assert (=> b!1206111 (= e!773771 call!84223)))

(declare-fun b!1206113 () Bool)

(declare-fun e!773772 () Bool)

(declare-fun e!773774 () Bool)

(assert (=> b!1206113 (= e!773772 (not e!773774))))

(declare-fun c!201495 () Bool)

(assert (=> b!1206113 (= c!201495 (<= lt!412400 from!613))))

(declare-fun until!61 () Int)

(declare-fun lt!412401 () List!12141)

(declare-fun lt!412397 () List!12141)

(assert (=> b!1206113 (= lt!412397 (slice!521 lt!412401 from!613 until!61))))

(declare-fun e!773773 () Bool)

(assert (=> b!1206113 e!773773))

(declare-fun c!201496 () Bool)

(declare-fun lt!412398 () Int)

(assert (=> b!1206113 (= c!201496 (<= lt!412398 0))))

(declare-fun lt!412404 () List!12141)

(declare-fun lt!412403 () List!12141)

(assert (=> b!1206113 (= lt!412404 (slice!521 lt!412403 0 (- until!61 1)))))

(declare-datatypes ((Unit!18512 0))(
  ( (Unit!18513) )
))
(declare-fun lt!412402 () Unit!18512)

(declare-fun r!2028 () List!12141)

(declare-fun lt!412396 () List!12141)

(declare-fun sliceLemma!67 (List!12141 List!12141 Int Int) Unit!18512)

(assert (=> b!1206113 (= lt!412402 (sliceLemma!67 lt!412396 r!2028 0 (- until!61 1)))))

(declare-fun b!1206114 () Bool)

(declare-fun e!773775 () Bool)

(declare-fun e!773769 () Bool)

(assert (=> b!1206114 (= e!773775 e!773769)))

(declare-fun res!543028 () Bool)

(assert (=> b!1206114 (=> (not res!543028) (not e!773769))))

(declare-fun lt!412399 () Int)

(assert (=> b!1206114 (= res!543028 (and (<= until!61 (+ lt!412400 lt!412399)) (not (= l!2744 Nil!12117)) (not (= r!2028 Nil!12117)) (not (= until!61 0))))))

(declare-fun size!9657 (List!12141) Int)

(assert (=> b!1206114 (= lt!412399 (size!9657 r!2028))))

(assert (=> b!1206114 (= lt!412400 (size!9657 l!2744))))

(declare-fun b!1206115 () Bool)

(declare-fun e!773778 () List!12141)

(declare-fun call!84226 () List!12141)

(declare-fun call!84224 () List!12141)

(assert (=> b!1206115 (= e!773778 (++!3139 call!84226 call!84224))))

(declare-fun b!1206116 () Bool)

(assert (=> b!1206116 (= e!773773 (= lt!412404 e!773778))))

(declare-fun c!201498 () Bool)

(assert (=> b!1206116 (= c!201498 (<= (- until!61 1) lt!412398))))

(declare-fun b!1206117 () Bool)

(assert (=> b!1206117 (= e!773774 (= lt!412397 call!84225))))

(declare-fun bm!84219 () Bool)

(declare-fun c!201497 () Bool)

(assert (=> bm!84219 (= call!84225 (slice!521 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400)))))))

(declare-fun b!1206118 () Bool)

(declare-fun e!773777 () Bool)

(assert (=> b!1206118 (= e!773769 e!773777)))

(declare-fun res!543030 () Bool)

(assert (=> b!1206118 (=> (not res!543030) (not e!773777))))

(declare-fun tail!1738 (List!12141) List!12141)

(assert (=> b!1206118 (= res!543030 (= (tail!1738 lt!412401) lt!412403))))

(assert (=> b!1206118 (= lt!412403 (++!3139 lt!412396 r!2028))))

(assert (=> b!1206118 (= lt!412396 (tail!1738 l!2744))))

(assert (=> b!1206118 (= lt!412401 (++!3139 l!2744 r!2028))))

(declare-fun b!1206119 () Bool)

(declare-fun e!773770 () Bool)

(declare-fun tp_is_empty!6127 () Bool)

(declare-fun tp!342053 () Bool)

(assert (=> b!1206119 (= e!773770 (and tp_is_empty!6127 tp!342053))))

(declare-fun b!1206120 () Bool)

(declare-fun res!543029 () Bool)

(assert (=> b!1206120 (=> (not res!543029) (not e!773777))))

(assert (=> b!1206120 (= res!543029 (and (= from!613 0) (<= 0 (- until!61 1))))))

(declare-fun b!1206112 () Bool)

(assert (=> b!1206112 (= e!773773 (= lt!412404 call!84226))))

(declare-fun res!543027 () Bool)

(assert (=> start!107456 (=> (not res!543027) (not e!773775))))

(assert (=> start!107456 (= res!543027 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107456 e!773775))

(assert (=> start!107456 true))

(declare-fun e!773776 () Bool)

(assert (=> start!107456 e!773776))

(assert (=> start!107456 e!773770))

(declare-fun b!1206121 () Bool)

(assert (=> b!1206121 (= e!773777 e!773772)))

(declare-fun res!543026 () Bool)

(assert (=> b!1206121 (=> (not res!543026) (not e!773772))))

(assert (=> b!1206121 (= res!543026 (<= (- until!61 1) (+ lt!412398 lt!412399)))))

(assert (=> b!1206121 (= lt!412398 (size!9657 lt!412396))))

(declare-fun b!1206122 () Bool)

(declare-fun tp!342052 () Bool)

(assert (=> b!1206122 (= e!773776 (and tp_is_empty!6127 tp!342052))))

(declare-fun b!1206123 () Bool)

(assert (=> b!1206123 (= e!773778 call!84224)))

(declare-fun bm!84220 () Bool)

(assert (=> bm!84220 (= call!84226 (slice!521 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0) (ite c!201496 (- (- until!61 1) lt!412398) lt!412398)))))

(declare-fun b!1206124 () Bool)

(assert (=> b!1206124 (= e!773774 (= lt!412397 e!773771))))

(assert (=> b!1206124 (= c!201497 (<= until!61 lt!412400))))

(declare-fun bm!84221 () Bool)

(assert (=> bm!84221 (= call!84224 (slice!521 (ite c!201498 lt!412396 r!2028) 0 (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398))))))

(assert (= (and start!107456 res!543027) b!1206114))

(assert (= (and b!1206114 res!543028) b!1206118))

(assert (= (and b!1206118 res!543030) b!1206120))

(assert (= (and b!1206120 res!543029) b!1206121))

(assert (= (and b!1206121 res!543026) b!1206113))

(assert (= (and b!1206113 c!201496) b!1206112))

(assert (= (and b!1206113 (not c!201496)) b!1206116))

(assert (= (and b!1206116 c!201498) b!1206123))

(assert (= (and b!1206116 (not c!201498)) b!1206115))

(assert (= (or b!1206123 b!1206115) bm!84221))

(assert (= (or b!1206112 b!1206115) bm!84220))

(assert (= (and b!1206113 c!201495) b!1206117))

(assert (= (and b!1206113 (not c!201495)) b!1206124))

(assert (= (and b!1206124 c!201497) b!1206111))

(assert (= (and b!1206124 (not c!201497)) b!1206110))

(assert (= (or b!1206111 b!1206110) bm!84218))

(assert (= (or b!1206117 bm!84218) bm!84219))

(get-info :version)

(assert (= (and start!107456 ((_ is Cons!12117) l!2744)) b!1206122))

(assert (= (and start!107456 ((_ is Cons!12117) r!2028)) b!1206119))

(declare-fun m!1381221 () Bool)

(assert (=> b!1206115 m!1381221))

(declare-fun m!1381223 () Bool)

(assert (=> b!1206121 m!1381223))

(declare-fun m!1381225 () Bool)

(assert (=> b!1206113 m!1381225))

(declare-fun m!1381227 () Bool)

(assert (=> b!1206113 m!1381227))

(declare-fun m!1381229 () Bool)

(assert (=> b!1206113 m!1381229))

(declare-fun m!1381231 () Bool)

(assert (=> b!1206118 m!1381231))

(declare-fun m!1381233 () Bool)

(assert (=> b!1206118 m!1381233))

(declare-fun m!1381235 () Bool)

(assert (=> b!1206118 m!1381235))

(declare-fun m!1381237 () Bool)

(assert (=> b!1206118 m!1381237))

(declare-fun m!1381239 () Bool)

(assert (=> b!1206110 m!1381239))

(assert (=> b!1206110 m!1381239))

(declare-fun m!1381241 () Bool)

(assert (=> b!1206110 m!1381241))

(declare-fun m!1381243 () Bool)

(assert (=> b!1206114 m!1381243))

(declare-fun m!1381245 () Bool)

(assert (=> b!1206114 m!1381245))

(declare-fun m!1381247 () Bool)

(assert (=> bm!84221 m!1381247))

(declare-fun m!1381249 () Bool)

(assert (=> bm!84220 m!1381249))

(declare-fun m!1381251 () Bool)

(assert (=> bm!84219 m!1381251))

(check-sat (not b!1206119) (not b!1206110) (not bm!84221) (not b!1206122) (not b!1206115) (not b!1206113) (not bm!84219) tp_is_empty!6127 (not b!1206118) (not b!1206121) (not b!1206114) (not bm!84220))
(check-sat)
(get-model)

(declare-fun d!344636 () Bool)

(declare-fun lt!412409 () Int)

(assert (=> d!344636 (>= lt!412409 0)))

(declare-fun e!773783 () Int)

(assert (=> d!344636 (= lt!412409 e!773783)))

(declare-fun c!201503 () Bool)

(assert (=> d!344636 (= c!201503 ((_ is Nil!12117) lt!412396))))

(assert (=> d!344636 (= (size!9657 lt!412396) lt!412409)))

(declare-fun b!1206133 () Bool)

(assert (=> b!1206133 (= e!773783 0)))

(declare-fun b!1206134 () Bool)

(assert (=> b!1206134 (= e!773783 (+ 1 (size!9657 (t!112557 lt!412396))))))

(assert (= (and d!344636 c!201503) b!1206133))

(assert (= (and d!344636 (not c!201503)) b!1206134))

(declare-fun m!1381253 () Bool)

(assert (=> b!1206134 m!1381253))

(assert (=> b!1206121 d!344636))

(declare-fun d!344640 () Bool)

(declare-fun take!146 (List!12141 Int) List!12141)

(declare-fun drop!618 (List!12141 Int) List!12141)

(assert (=> d!344640 (= (slice!521 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400)))) (take!146 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))))))

(declare-fun bs!288451 () Bool)

(assert (= bs!288451 d!344640))

(declare-fun m!1381257 () Bool)

(assert (=> bs!288451 m!1381257))

(assert (=> bs!288451 m!1381257))

(declare-fun m!1381259 () Bool)

(assert (=> bs!288451 m!1381259))

(assert (=> bm!84219 d!344640))

(declare-fun d!344644 () Bool)

(assert (=> d!344644 (= (slice!521 lt!412401 from!613 until!61) (take!146 (drop!618 lt!412401 from!613) (- until!61 from!613)))))

(declare-fun bs!288452 () Bool)

(assert (= bs!288452 d!344644))

(declare-fun m!1381261 () Bool)

(assert (=> bs!288452 m!1381261))

(assert (=> bs!288452 m!1381261))

(declare-fun m!1381265 () Bool)

(assert (=> bs!288452 m!1381265))

(assert (=> b!1206113 d!344644))

(declare-fun d!344646 () Bool)

(assert (=> d!344646 (= (slice!521 lt!412403 0 (- until!61 1)) (take!146 (drop!618 lt!412403 0) (- (- until!61 1) 0)))))

(declare-fun bs!288454 () Bool)

(assert (= bs!288454 d!344646))

(declare-fun m!1381269 () Bool)

(assert (=> bs!288454 m!1381269))

(assert (=> bs!288454 m!1381269))

(declare-fun m!1381271 () Bool)

(assert (=> bs!288454 m!1381271))

(assert (=> b!1206113 d!344646))

(declare-fun bm!84228 () Bool)

(declare-fun c!201521 () Bool)

(declare-fun c!201520 () Bool)

(assert (=> bm!84228 (= c!201521 c!201520)))

(declare-fun call!84233 () List!12141)

(declare-fun call!84235 () List!12141)

(assert (=> bm!84228 (= call!84233 call!84235)))

(declare-fun bm!84229 () Bool)

(declare-fun c!201519 () Bool)

(declare-fun call!84234 () Int)

(declare-fun e!773809 () Int)

(assert (=> bm!84229 (= call!84235 (slice!521 (ite c!201519 r!2028 lt!412396) (ite c!201519 (- 0 call!84234) 0) (ite c!201519 (- (- until!61 1) call!84234) e!773809)))))

(declare-fun b!1206179 () Bool)

(declare-fun e!773807 () List!12141)

(assert (=> b!1206179 (= e!773807 call!84235)))

(declare-fun e!773810 () Bool)

(declare-fun b!1206180 () Bool)

(assert (=> b!1206180 (= e!773810 (<= (- until!61 1) (+ (size!9657 lt!412396) (size!9657 r!2028))))))

(declare-fun e!773808 () List!12141)

(declare-fun b!1206181 () Bool)

(assert (=> b!1206181 (= e!773808 (++!3139 call!84233 (slice!521 r!2028 0 (- (- until!61 1) call!84234))))))

(declare-fun bm!84230 () Bool)

(assert (=> bm!84230 (= call!84234 (size!9657 lt!412396))))

(declare-fun b!1206182 () Bool)

(assert (=> b!1206182 (= e!773809 call!84234)))

(declare-fun b!1206183 () Bool)

(assert (=> b!1206183 (= e!773808 call!84233)))

(declare-fun d!344650 () Bool)

(assert (=> d!344650 (= (slice!521 (++!3139 lt!412396 r!2028) 0 (- until!61 1)) e!773807)))

(assert (=> d!344650 (= c!201519 (<= (size!9657 lt!412396) 0))))

(declare-fun lt!412421 () Unit!18512)

(declare-fun choose!7745 (List!12141 List!12141 Int Int) Unit!18512)

(assert (=> d!344650 (= lt!412421 (choose!7745 lt!412396 r!2028 0 (- until!61 1)))))

(assert (=> d!344650 e!773810))

(declare-fun res!543045 () Bool)

(assert (=> d!344650 (=> (not res!543045) (not e!773810))))

(assert (=> d!344650 (= res!543045 (and (<= 0 0) (<= 0 (- until!61 1))))))

(assert (=> d!344650 (= (sliceLemma!67 lt!412396 r!2028 0 (- until!61 1)) lt!412421)))

(declare-fun b!1206184 () Bool)

(assert (=> b!1206184 (= e!773809 (- until!61 1))))

(declare-fun b!1206185 () Bool)

(assert (=> b!1206185 (= e!773807 e!773808)))

(assert (=> b!1206185 (= c!201520 (<= (- until!61 1) call!84234))))

(assert (= (and d!344650 res!543045) b!1206180))

(assert (= (and d!344650 c!201519) b!1206179))

(assert (= (and d!344650 (not c!201519)) b!1206185))

(assert (= (and b!1206185 c!201520) b!1206183))

(assert (= (and b!1206185 (not c!201520)) b!1206181))

(assert (= (or b!1206183 b!1206181) bm!84228))

(assert (= (and bm!84228 c!201521) b!1206184))

(assert (= (and bm!84228 (not c!201521)) b!1206182))

(assert (= (or b!1206179 b!1206181 b!1206182 b!1206185) bm!84230))

(assert (= (or b!1206179 bm!84228) bm!84229))

(assert (=> b!1206180 m!1381223))

(assert (=> b!1206180 m!1381243))

(declare-fun m!1381343 () Bool)

(assert (=> bm!84229 m!1381343))

(declare-fun m!1381345 () Bool)

(assert (=> b!1206181 m!1381345))

(assert (=> b!1206181 m!1381345))

(declare-fun m!1381347 () Bool)

(assert (=> b!1206181 m!1381347))

(assert (=> bm!84230 m!1381223))

(assert (=> d!344650 m!1381233))

(assert (=> d!344650 m!1381233))

(declare-fun m!1381349 () Bool)

(assert (=> d!344650 m!1381349))

(assert (=> d!344650 m!1381223))

(declare-fun m!1381351 () Bool)

(assert (=> d!344650 m!1381351))

(assert (=> b!1206113 d!344650))

(declare-fun d!344678 () Bool)

(assert (=> d!344678 (= (tail!1738 lt!412401) (t!112557 lt!412401))))

(assert (=> b!1206118 d!344678))

(declare-fun b!1206208 () Bool)

(declare-fun e!773824 () List!12141)

(assert (=> b!1206208 (= e!773824 r!2028)))

(declare-fun b!1206211 () Bool)

(declare-fun e!773823 () Bool)

(declare-fun lt!412426 () List!12141)

(assert (=> b!1206211 (= e!773823 (or (not (= r!2028 Nil!12117)) (= lt!412426 lt!412396)))))

(declare-fun b!1206209 () Bool)

(assert (=> b!1206209 (= e!773824 (Cons!12117 (h!17518 lt!412396) (++!3139 (t!112557 lt!412396) r!2028)))))

(declare-fun d!344680 () Bool)

(assert (=> d!344680 e!773823))

(declare-fun res!543052 () Bool)

(assert (=> d!344680 (=> (not res!543052) (not e!773823))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1716 (List!12141) (InoxSet T!22300))

(assert (=> d!344680 (= res!543052 (= (content!1716 lt!412426) ((_ map or) (content!1716 lt!412396) (content!1716 r!2028))))))

(assert (=> d!344680 (= lt!412426 e!773824)))

(declare-fun c!201530 () Bool)

(assert (=> d!344680 (= c!201530 ((_ is Nil!12117) lt!412396))))

(assert (=> d!344680 (= (++!3139 lt!412396 r!2028) lt!412426)))

(declare-fun b!1206210 () Bool)

(declare-fun res!543053 () Bool)

(assert (=> b!1206210 (=> (not res!543053) (not e!773823))))

(assert (=> b!1206210 (= res!543053 (= (size!9657 lt!412426) (+ (size!9657 lt!412396) (size!9657 r!2028))))))

(assert (= (and d!344680 c!201530) b!1206208))

(assert (= (and d!344680 (not c!201530)) b!1206209))

(assert (= (and d!344680 res!543052) b!1206210))

(assert (= (and b!1206210 res!543053) b!1206211))

(declare-fun m!1381353 () Bool)

(assert (=> b!1206209 m!1381353))

(declare-fun m!1381355 () Bool)

(assert (=> d!344680 m!1381355))

(declare-fun m!1381357 () Bool)

(assert (=> d!344680 m!1381357))

(declare-fun m!1381359 () Bool)

(assert (=> d!344680 m!1381359))

(declare-fun m!1381361 () Bool)

(assert (=> b!1206210 m!1381361))

(assert (=> b!1206210 m!1381223))

(assert (=> b!1206210 m!1381243))

(assert (=> b!1206118 d!344680))

(declare-fun d!344682 () Bool)

(assert (=> d!344682 (= (tail!1738 l!2744) (t!112557 l!2744))))

(assert (=> b!1206118 d!344682))

(declare-fun b!1206212 () Bool)

(declare-fun e!773826 () List!12141)

(assert (=> b!1206212 (= e!773826 r!2028)))

(declare-fun lt!412427 () List!12141)

(declare-fun b!1206215 () Bool)

(declare-fun e!773825 () Bool)

(assert (=> b!1206215 (= e!773825 (or (not (= r!2028 Nil!12117)) (= lt!412427 l!2744)))))

(declare-fun b!1206213 () Bool)

(assert (=> b!1206213 (= e!773826 (Cons!12117 (h!17518 l!2744) (++!3139 (t!112557 l!2744) r!2028)))))

(declare-fun d!344684 () Bool)

(assert (=> d!344684 e!773825))

(declare-fun res!543054 () Bool)

(assert (=> d!344684 (=> (not res!543054) (not e!773825))))

(assert (=> d!344684 (= res!543054 (= (content!1716 lt!412427) ((_ map or) (content!1716 l!2744) (content!1716 r!2028))))))

(assert (=> d!344684 (= lt!412427 e!773826)))

(declare-fun c!201531 () Bool)

(assert (=> d!344684 (= c!201531 ((_ is Nil!12117) l!2744))))

(assert (=> d!344684 (= (++!3139 l!2744 r!2028) lt!412427)))

(declare-fun b!1206214 () Bool)

(declare-fun res!543055 () Bool)

(assert (=> b!1206214 (=> (not res!543055) (not e!773825))))

(assert (=> b!1206214 (= res!543055 (= (size!9657 lt!412427) (+ (size!9657 l!2744) (size!9657 r!2028))))))

(assert (= (and d!344684 c!201531) b!1206212))

(assert (= (and d!344684 (not c!201531)) b!1206213))

(assert (= (and d!344684 res!543054) b!1206214))

(assert (= (and b!1206214 res!543055) b!1206215))

(declare-fun m!1381363 () Bool)

(assert (=> b!1206213 m!1381363))

(declare-fun m!1381365 () Bool)

(assert (=> d!344684 m!1381365))

(declare-fun m!1381367 () Bool)

(assert (=> d!344684 m!1381367))

(assert (=> d!344684 m!1381359))

(declare-fun m!1381369 () Bool)

(assert (=> b!1206214 m!1381369))

(assert (=> b!1206214 m!1381245))

(assert (=> b!1206214 m!1381243))

(assert (=> b!1206118 d!344684))

(declare-fun d!344686 () Bool)

(declare-fun lt!412428 () Int)

(assert (=> d!344686 (>= lt!412428 0)))

(declare-fun e!773827 () Int)

(assert (=> d!344686 (= lt!412428 e!773827)))

(declare-fun c!201532 () Bool)

(assert (=> d!344686 (= c!201532 ((_ is Nil!12117) r!2028))))

(assert (=> d!344686 (= (size!9657 r!2028) lt!412428)))

(declare-fun b!1206216 () Bool)

(assert (=> b!1206216 (= e!773827 0)))

(declare-fun b!1206217 () Bool)

(assert (=> b!1206217 (= e!773827 (+ 1 (size!9657 (t!112557 r!2028))))))

(assert (= (and d!344686 c!201532) b!1206216))

(assert (= (and d!344686 (not c!201532)) b!1206217))

(declare-fun m!1381371 () Bool)

(assert (=> b!1206217 m!1381371))

(assert (=> b!1206114 d!344686))

(declare-fun d!344688 () Bool)

(declare-fun lt!412430 () Int)

(assert (=> d!344688 (>= lt!412430 0)))

(declare-fun e!773832 () Int)

(assert (=> d!344688 (= lt!412430 e!773832)))

(declare-fun c!201536 () Bool)

(assert (=> d!344688 (= c!201536 ((_ is Nil!12117) l!2744))))

(assert (=> d!344688 (= (size!9657 l!2744) lt!412430)))

(declare-fun b!1206222 () Bool)

(assert (=> b!1206222 (= e!773832 0)))

(declare-fun b!1206224 () Bool)

(assert (=> b!1206224 (= e!773832 (+ 1 (size!9657 (t!112557 l!2744))))))

(assert (= (and d!344688 c!201536) b!1206222))

(assert (= (and d!344688 (not c!201536)) b!1206224))

(declare-fun m!1381373 () Bool)

(assert (=> b!1206224 m!1381373))

(assert (=> b!1206114 d!344688))

(declare-fun d!344690 () Bool)

(assert (=> d!344690 (= (slice!521 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0) (ite c!201496 (- (- until!61 1) lt!412398) lt!412398)) (take!146 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0)) (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0))))))

(declare-fun bs!288460 () Bool)

(assert (= bs!288460 d!344690))

(declare-fun m!1381375 () Bool)

(assert (=> bs!288460 m!1381375))

(assert (=> bs!288460 m!1381375))

(declare-fun m!1381377 () Bool)

(assert (=> bs!288460 m!1381377))

(assert (=> bm!84220 d!344690))

(declare-fun b!1206227 () Bool)

(declare-fun e!773834 () List!12141)

(assert (=> b!1206227 (= e!773834 call!84224)))

(declare-fun e!773833 () Bool)

(declare-fun b!1206230 () Bool)

(declare-fun lt!412431 () List!12141)

(assert (=> b!1206230 (= e!773833 (or (not (= call!84224 Nil!12117)) (= lt!412431 call!84226)))))

(declare-fun b!1206228 () Bool)

(assert (=> b!1206228 (= e!773834 (Cons!12117 (h!17518 call!84226) (++!3139 (t!112557 call!84226) call!84224)))))

(declare-fun d!344692 () Bool)

(assert (=> d!344692 e!773833))

(declare-fun res!543057 () Bool)

(assert (=> d!344692 (=> (not res!543057) (not e!773833))))

(assert (=> d!344692 (= res!543057 (= (content!1716 lt!412431) ((_ map or) (content!1716 call!84226) (content!1716 call!84224))))))

(assert (=> d!344692 (= lt!412431 e!773834)))

(declare-fun c!201537 () Bool)

(assert (=> d!344692 (= c!201537 ((_ is Nil!12117) call!84226))))

(assert (=> d!344692 (= (++!3139 call!84226 call!84224) lt!412431)))

(declare-fun b!1206229 () Bool)

(declare-fun res!543058 () Bool)

(assert (=> b!1206229 (=> (not res!543058) (not e!773833))))

(assert (=> b!1206229 (= res!543058 (= (size!9657 lt!412431) (+ (size!9657 call!84226) (size!9657 call!84224))))))

(assert (= (and d!344692 c!201537) b!1206227))

(assert (= (and d!344692 (not c!201537)) b!1206228))

(assert (= (and d!344692 res!543057) b!1206229))

(assert (= (and b!1206229 res!543058) b!1206230))

(declare-fun m!1381383 () Bool)

(assert (=> b!1206228 m!1381383))

(declare-fun m!1381387 () Bool)

(assert (=> d!344692 m!1381387))

(declare-fun m!1381391 () Bool)

(assert (=> d!344692 m!1381391))

(declare-fun m!1381393 () Bool)

(assert (=> d!344692 m!1381393))

(declare-fun m!1381395 () Bool)

(assert (=> b!1206229 m!1381395))

(declare-fun m!1381399 () Bool)

(assert (=> b!1206229 m!1381399))

(declare-fun m!1381401 () Bool)

(assert (=> b!1206229 m!1381401))

(assert (=> b!1206115 d!344692))

(declare-fun b!1206233 () Bool)

(declare-fun e!773836 () List!12141)

(assert (=> b!1206233 (= e!773836 call!84223)))

(declare-fun e!773835 () Bool)

(declare-fun lt!412432 () List!12141)

(declare-fun b!1206236 () Bool)

(assert (=> b!1206236 (= e!773835 (or (not (= call!84223 Nil!12117)) (= lt!412432 (slice!521 l!2744 from!613 lt!412400))))))

(declare-fun b!1206234 () Bool)

(assert (=> b!1206234 (= e!773836 (Cons!12117 (h!17518 (slice!521 l!2744 from!613 lt!412400)) (++!3139 (t!112557 (slice!521 l!2744 from!613 lt!412400)) call!84223)))))

(declare-fun d!344694 () Bool)

(assert (=> d!344694 e!773835))

(declare-fun res!543059 () Bool)

(assert (=> d!344694 (=> (not res!543059) (not e!773835))))

(assert (=> d!344694 (= res!543059 (= (content!1716 lt!412432) ((_ map or) (content!1716 (slice!521 l!2744 from!613 lt!412400)) (content!1716 call!84223))))))

(assert (=> d!344694 (= lt!412432 e!773836)))

(declare-fun c!201538 () Bool)

(assert (=> d!344694 (= c!201538 ((_ is Nil!12117) (slice!521 l!2744 from!613 lt!412400)))))

(assert (=> d!344694 (= (++!3139 (slice!521 l!2744 from!613 lt!412400) call!84223) lt!412432)))

(declare-fun b!1206235 () Bool)

(declare-fun res!543060 () Bool)

(assert (=> b!1206235 (=> (not res!543060) (not e!773835))))

(assert (=> b!1206235 (= res!543060 (= (size!9657 lt!412432) (+ (size!9657 (slice!521 l!2744 from!613 lt!412400)) (size!9657 call!84223))))))

(assert (= (and d!344694 c!201538) b!1206233))

(assert (= (and d!344694 (not c!201538)) b!1206234))

(assert (= (and d!344694 res!543059) b!1206235))

(assert (= (and b!1206235 res!543060) b!1206236))

(declare-fun m!1381403 () Bool)

(assert (=> b!1206234 m!1381403))

(declare-fun m!1381405 () Bool)

(assert (=> d!344694 m!1381405))

(assert (=> d!344694 m!1381239))

(declare-fun m!1381407 () Bool)

(assert (=> d!344694 m!1381407))

(declare-fun m!1381409 () Bool)

(assert (=> d!344694 m!1381409))

(declare-fun m!1381411 () Bool)

(assert (=> b!1206235 m!1381411))

(assert (=> b!1206235 m!1381239))

(declare-fun m!1381413 () Bool)

(assert (=> b!1206235 m!1381413))

(declare-fun m!1381415 () Bool)

(assert (=> b!1206235 m!1381415))

(assert (=> b!1206110 d!344694))

(declare-fun d!344696 () Bool)

(assert (=> d!344696 (= (slice!521 l!2744 from!613 lt!412400) (take!146 (drop!618 l!2744 from!613) (- lt!412400 from!613)))))

(declare-fun bs!288461 () Bool)

(assert (= bs!288461 d!344696))

(declare-fun m!1381417 () Bool)

(assert (=> bs!288461 m!1381417))

(assert (=> bs!288461 m!1381417))

(declare-fun m!1381419 () Bool)

(assert (=> bs!288461 m!1381419))

(assert (=> b!1206110 d!344696))

(declare-fun d!344698 () Bool)

(assert (=> d!344698 (= (slice!521 (ite c!201498 lt!412396 r!2028) 0 (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398))) (take!146 (drop!618 (ite c!201498 lt!412396 r!2028) 0) (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0)))))

(declare-fun bs!288462 () Bool)

(assert (= bs!288462 d!344698))

(declare-fun m!1381421 () Bool)

(assert (=> bs!288462 m!1381421))

(assert (=> bs!288462 m!1381421))

(declare-fun m!1381423 () Bool)

(assert (=> bs!288462 m!1381423))

(assert (=> bm!84221 d!344698))

(declare-fun b!1206245 () Bool)

(declare-fun e!773843 () Bool)

(declare-fun tp!342060 () Bool)

(assert (=> b!1206245 (= e!773843 (and tp_is_empty!6127 tp!342060))))

(assert (=> b!1206122 (= tp!342052 e!773843)))

(assert (= (and b!1206122 ((_ is Cons!12117) (t!112557 l!2744))) b!1206245))

(declare-fun b!1206246 () Bool)

(declare-fun e!773844 () Bool)

(declare-fun tp!342061 () Bool)

(assert (=> b!1206246 (= e!773844 (and tp_is_empty!6127 tp!342061))))

(assert (=> b!1206119 (= tp!342053 e!773844)))

(assert (= (and b!1206119 ((_ is Cons!12117) (t!112557 r!2028))) b!1206246))

(check-sat (not b!1206245) (not d!344692) (not d!344644) (not d!344684) (not b!1206214) (not d!344646) (not b!1206246) (not d!344650) (not b!1206234) (not b!1206235) (not b!1206210) (not b!1206181) (not d!344696) (not b!1206217) (not b!1206134) (not d!344640) (not bm!84229) (not b!1206209) (not d!344690) (not b!1206213) tp_is_empty!6127 (not d!344694) (not d!344680) (not b!1206180) (not b!1206228) (not d!344698) (not b!1206224) (not b!1206229) (not bm!84230))
(check-sat)
(get-model)

(assert (=> bm!84230 d!344636))

(declare-fun d!344700 () Bool)

(declare-fun lt!412433 () Int)

(assert (=> d!344700 (>= lt!412433 0)))

(declare-fun e!773845 () Int)

(assert (=> d!344700 (= lt!412433 e!773845)))

(declare-fun c!201539 () Bool)

(assert (=> d!344700 (= c!201539 ((_ is Nil!12117) lt!412427))))

(assert (=> d!344700 (= (size!9657 lt!412427) lt!412433)))

(declare-fun b!1206247 () Bool)

(assert (=> b!1206247 (= e!773845 0)))

(declare-fun b!1206248 () Bool)

(assert (=> b!1206248 (= e!773845 (+ 1 (size!9657 (t!112557 lt!412427))))))

(assert (= (and d!344700 c!201539) b!1206247))

(assert (= (and d!344700 (not c!201539)) b!1206248))

(declare-fun m!1381425 () Bool)

(assert (=> b!1206248 m!1381425))

(assert (=> b!1206214 d!344700))

(assert (=> b!1206214 d!344688))

(assert (=> b!1206214 d!344686))

(declare-fun d!344702 () Bool)

(declare-fun lt!412434 () Int)

(assert (=> d!344702 (>= lt!412434 0)))

(declare-fun e!773846 () Int)

(assert (=> d!344702 (= lt!412434 e!773846)))

(declare-fun c!201540 () Bool)

(assert (=> d!344702 (= c!201540 ((_ is Nil!12117) (t!112557 l!2744)))))

(assert (=> d!344702 (= (size!9657 (t!112557 l!2744)) lt!412434)))

(declare-fun b!1206249 () Bool)

(assert (=> b!1206249 (= e!773846 0)))

(declare-fun b!1206250 () Bool)

(assert (=> b!1206250 (= e!773846 (+ 1 (size!9657 (t!112557 (t!112557 l!2744)))))))

(assert (= (and d!344702 c!201540) b!1206249))

(assert (= (and d!344702 (not c!201540)) b!1206250))

(declare-fun m!1381427 () Bool)

(assert (=> b!1206250 m!1381427))

(assert (=> b!1206224 d!344702))

(declare-fun b!1206251 () Bool)

(declare-fun e!773848 () List!12141)

(assert (=> b!1206251 (= e!773848 call!84223)))

(declare-fun e!773847 () Bool)

(declare-fun lt!412435 () List!12141)

(declare-fun b!1206254 () Bool)

(assert (=> b!1206254 (= e!773847 (or (not (= call!84223 Nil!12117)) (= lt!412435 (t!112557 (slice!521 l!2744 from!613 lt!412400)))))))

(declare-fun b!1206252 () Bool)

(assert (=> b!1206252 (= e!773848 (Cons!12117 (h!17518 (t!112557 (slice!521 l!2744 from!613 lt!412400))) (++!3139 (t!112557 (t!112557 (slice!521 l!2744 from!613 lt!412400))) call!84223)))))

(declare-fun d!344704 () Bool)

(assert (=> d!344704 e!773847))

(declare-fun res!543061 () Bool)

(assert (=> d!344704 (=> (not res!543061) (not e!773847))))

(assert (=> d!344704 (= res!543061 (= (content!1716 lt!412435) ((_ map or) (content!1716 (t!112557 (slice!521 l!2744 from!613 lt!412400))) (content!1716 call!84223))))))

(assert (=> d!344704 (= lt!412435 e!773848)))

(declare-fun c!201541 () Bool)

(assert (=> d!344704 (= c!201541 ((_ is Nil!12117) (t!112557 (slice!521 l!2744 from!613 lt!412400))))))

(assert (=> d!344704 (= (++!3139 (t!112557 (slice!521 l!2744 from!613 lt!412400)) call!84223) lt!412435)))

(declare-fun b!1206253 () Bool)

(declare-fun res!543062 () Bool)

(assert (=> b!1206253 (=> (not res!543062) (not e!773847))))

(assert (=> b!1206253 (= res!543062 (= (size!9657 lt!412435) (+ (size!9657 (t!112557 (slice!521 l!2744 from!613 lt!412400))) (size!9657 call!84223))))))

(assert (= (and d!344704 c!201541) b!1206251))

(assert (= (and d!344704 (not c!201541)) b!1206252))

(assert (= (and d!344704 res!543061) b!1206253))

(assert (= (and b!1206253 res!543062) b!1206254))

(declare-fun m!1381429 () Bool)

(assert (=> b!1206252 m!1381429))

(declare-fun m!1381431 () Bool)

(assert (=> d!344704 m!1381431))

(declare-fun m!1381433 () Bool)

(assert (=> d!344704 m!1381433))

(assert (=> d!344704 m!1381409))

(declare-fun m!1381435 () Bool)

(assert (=> b!1206253 m!1381435))

(declare-fun m!1381437 () Bool)

(assert (=> b!1206253 m!1381437))

(assert (=> b!1206253 m!1381415))

(assert (=> b!1206234 d!344704))

(declare-fun d!344706 () Bool)

(declare-fun lt!412436 () Int)

(assert (=> d!344706 (>= lt!412436 0)))

(declare-fun e!773849 () Int)

(assert (=> d!344706 (= lt!412436 e!773849)))

(declare-fun c!201542 () Bool)

(assert (=> d!344706 (= c!201542 ((_ is Nil!12117) (t!112557 lt!412396)))))

(assert (=> d!344706 (= (size!9657 (t!112557 lt!412396)) lt!412436)))

(declare-fun b!1206255 () Bool)

(assert (=> b!1206255 (= e!773849 0)))

(declare-fun b!1206256 () Bool)

(assert (=> b!1206256 (= e!773849 (+ 1 (size!9657 (t!112557 (t!112557 lt!412396)))))))

(assert (= (and d!344706 c!201542) b!1206255))

(assert (= (and d!344706 (not c!201542)) b!1206256))

(declare-fun m!1381439 () Bool)

(assert (=> b!1206256 m!1381439))

(assert (=> b!1206134 d!344706))

(declare-fun b!1206257 () Bool)

(declare-fun e!773851 () List!12141)

(assert (=> b!1206257 (= e!773851 call!84224)))

(declare-fun lt!412437 () List!12141)

(declare-fun e!773850 () Bool)

(declare-fun b!1206260 () Bool)

(assert (=> b!1206260 (= e!773850 (or (not (= call!84224 Nil!12117)) (= lt!412437 (t!112557 call!84226))))))

(declare-fun b!1206258 () Bool)

(assert (=> b!1206258 (= e!773851 (Cons!12117 (h!17518 (t!112557 call!84226)) (++!3139 (t!112557 (t!112557 call!84226)) call!84224)))))

(declare-fun d!344708 () Bool)

(assert (=> d!344708 e!773850))

(declare-fun res!543063 () Bool)

(assert (=> d!344708 (=> (not res!543063) (not e!773850))))

(assert (=> d!344708 (= res!543063 (= (content!1716 lt!412437) ((_ map or) (content!1716 (t!112557 call!84226)) (content!1716 call!84224))))))

(assert (=> d!344708 (= lt!412437 e!773851)))

(declare-fun c!201543 () Bool)

(assert (=> d!344708 (= c!201543 ((_ is Nil!12117) (t!112557 call!84226)))))

(assert (=> d!344708 (= (++!3139 (t!112557 call!84226) call!84224) lt!412437)))

(declare-fun b!1206259 () Bool)

(declare-fun res!543064 () Bool)

(assert (=> b!1206259 (=> (not res!543064) (not e!773850))))

(assert (=> b!1206259 (= res!543064 (= (size!9657 lt!412437) (+ (size!9657 (t!112557 call!84226)) (size!9657 call!84224))))))

(assert (= (and d!344708 c!201543) b!1206257))

(assert (= (and d!344708 (not c!201543)) b!1206258))

(assert (= (and d!344708 res!543063) b!1206259))

(assert (= (and b!1206259 res!543064) b!1206260))

(declare-fun m!1381441 () Bool)

(assert (=> b!1206258 m!1381441))

(declare-fun m!1381443 () Bool)

(assert (=> d!344708 m!1381443))

(declare-fun m!1381445 () Bool)

(assert (=> d!344708 m!1381445))

(assert (=> d!344708 m!1381393))

(declare-fun m!1381447 () Bool)

(assert (=> b!1206259 m!1381447))

(declare-fun m!1381449 () Bool)

(assert (=> b!1206259 m!1381449))

(assert (=> b!1206259 m!1381401))

(assert (=> b!1206228 d!344708))

(declare-fun d!344710 () Bool)

(declare-fun lt!412438 () Int)

(assert (=> d!344710 (>= lt!412438 0)))

(declare-fun e!773852 () Int)

(assert (=> d!344710 (= lt!412438 e!773852)))

(declare-fun c!201544 () Bool)

(assert (=> d!344710 (= c!201544 ((_ is Nil!12117) lt!412432))))

(assert (=> d!344710 (= (size!9657 lt!412432) lt!412438)))

(declare-fun b!1206261 () Bool)

(assert (=> b!1206261 (= e!773852 0)))

(declare-fun b!1206262 () Bool)

(assert (=> b!1206262 (= e!773852 (+ 1 (size!9657 (t!112557 lt!412432))))))

(assert (= (and d!344710 c!201544) b!1206261))

(assert (= (and d!344710 (not c!201544)) b!1206262))

(declare-fun m!1381451 () Bool)

(assert (=> b!1206262 m!1381451))

(assert (=> b!1206235 d!344710))

(declare-fun d!344712 () Bool)

(declare-fun lt!412439 () Int)

(assert (=> d!344712 (>= lt!412439 0)))

(declare-fun e!773853 () Int)

(assert (=> d!344712 (= lt!412439 e!773853)))

(declare-fun c!201545 () Bool)

(assert (=> d!344712 (= c!201545 ((_ is Nil!12117) (slice!521 l!2744 from!613 lt!412400)))))

(assert (=> d!344712 (= (size!9657 (slice!521 l!2744 from!613 lt!412400)) lt!412439)))

(declare-fun b!1206263 () Bool)

(assert (=> b!1206263 (= e!773853 0)))

(declare-fun b!1206264 () Bool)

(assert (=> b!1206264 (= e!773853 (+ 1 (size!9657 (t!112557 (slice!521 l!2744 from!613 lt!412400)))))))

(assert (= (and d!344712 c!201545) b!1206263))

(assert (= (and d!344712 (not c!201545)) b!1206264))

(assert (=> b!1206264 m!1381437))

(assert (=> b!1206235 d!344712))

(declare-fun d!344714 () Bool)

(declare-fun lt!412440 () Int)

(assert (=> d!344714 (>= lt!412440 0)))

(declare-fun e!773854 () Int)

(assert (=> d!344714 (= lt!412440 e!773854)))

(declare-fun c!201546 () Bool)

(assert (=> d!344714 (= c!201546 ((_ is Nil!12117) call!84223))))

(assert (=> d!344714 (= (size!9657 call!84223) lt!412440)))

(declare-fun b!1206265 () Bool)

(assert (=> b!1206265 (= e!773854 0)))

(declare-fun b!1206266 () Bool)

(assert (=> b!1206266 (= e!773854 (+ 1 (size!9657 (t!112557 call!84223))))))

(assert (= (and d!344714 c!201546) b!1206265))

(assert (= (and d!344714 (not c!201546)) b!1206266))

(declare-fun m!1381453 () Bool)

(assert (=> b!1206266 m!1381453))

(assert (=> b!1206235 d!344714))

(declare-fun d!344716 () Bool)

(declare-fun lt!412441 () Int)

(assert (=> d!344716 (>= lt!412441 0)))

(declare-fun e!773855 () Int)

(assert (=> d!344716 (= lt!412441 e!773855)))

(declare-fun c!201547 () Bool)

(assert (=> d!344716 (= c!201547 ((_ is Nil!12117) lt!412426))))

(assert (=> d!344716 (= (size!9657 lt!412426) lt!412441)))

(declare-fun b!1206267 () Bool)

(assert (=> b!1206267 (= e!773855 0)))

(declare-fun b!1206268 () Bool)

(assert (=> b!1206268 (= e!773855 (+ 1 (size!9657 (t!112557 lt!412426))))))

(assert (= (and d!344716 c!201547) b!1206267))

(assert (= (and d!344716 (not c!201547)) b!1206268))

(declare-fun m!1381455 () Bool)

(assert (=> b!1206268 m!1381455))

(assert (=> b!1206210 d!344716))

(assert (=> b!1206210 d!344636))

(assert (=> b!1206210 d!344686))

(assert (=> b!1206180 d!344636))

(assert (=> b!1206180 d!344686))

(declare-fun b!1206283 () Bool)

(declare-fun e!773867 () List!12141)

(assert (=> b!1206283 (= e!773867 (Cons!12117 (h!17518 (drop!618 lt!412403 0)) (take!146 (t!112557 (drop!618 lt!412403 0)) (- (- (- until!61 1) 0) 1))))))

(declare-fun b!1206284 () Bool)

(declare-fun e!773865 () Int)

(assert (=> b!1206284 (= e!773865 (- (- until!61 1) 0))))

(declare-fun d!344718 () Bool)

(declare-fun e!773866 () Bool)

(assert (=> d!344718 e!773866))

(declare-fun res!543067 () Bool)

(assert (=> d!344718 (=> (not res!543067) (not e!773866))))

(declare-fun lt!412444 () List!12141)

(assert (=> d!344718 (= res!543067 (= ((_ map implies) (content!1716 lt!412444) (content!1716 (drop!618 lt!412403 0))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!344718 (= lt!412444 e!773867)))

(declare-fun c!201555 () Bool)

(assert (=> d!344718 (= c!201555 (or ((_ is Nil!12117) (drop!618 lt!412403 0)) (<= (- (- until!61 1) 0) 0)))))

(assert (=> d!344718 (= (take!146 (drop!618 lt!412403 0) (- (- until!61 1) 0)) lt!412444)))

(declare-fun b!1206285 () Bool)

(declare-fun e!773864 () Int)

(assert (=> b!1206285 (= e!773864 e!773865)))

(declare-fun c!201554 () Bool)

(assert (=> b!1206285 (= c!201554 (>= (- (- until!61 1) 0) (size!9657 (drop!618 lt!412403 0))))))

(declare-fun b!1206286 () Bool)

(assert (=> b!1206286 (= e!773864 0)))

(declare-fun b!1206287 () Bool)

(assert (=> b!1206287 (= e!773866 (= (size!9657 lt!412444) e!773864))))

(declare-fun c!201556 () Bool)

(assert (=> b!1206287 (= c!201556 (<= (- (- until!61 1) 0) 0))))

(declare-fun b!1206288 () Bool)

(assert (=> b!1206288 (= e!773865 (size!9657 (drop!618 lt!412403 0)))))

(declare-fun b!1206289 () Bool)

(assert (=> b!1206289 (= e!773867 Nil!12117)))

(assert (= (and d!344718 c!201555) b!1206289))

(assert (= (and d!344718 (not c!201555)) b!1206283))

(assert (= (and d!344718 res!543067) b!1206287))

(assert (= (and b!1206287 c!201556) b!1206286))

(assert (= (and b!1206287 (not c!201556)) b!1206285))

(assert (= (and b!1206285 c!201554) b!1206288))

(assert (= (and b!1206285 (not c!201554)) b!1206284))

(assert (=> b!1206288 m!1381269))

(declare-fun m!1381457 () Bool)

(assert (=> b!1206288 m!1381457))

(declare-fun m!1381459 () Bool)

(assert (=> d!344718 m!1381459))

(assert (=> d!344718 m!1381269))

(declare-fun m!1381461 () Bool)

(assert (=> d!344718 m!1381461))

(assert (=> b!1206285 m!1381269))

(assert (=> b!1206285 m!1381457))

(declare-fun m!1381463 () Bool)

(assert (=> b!1206283 m!1381463))

(declare-fun m!1381465 () Bool)

(assert (=> b!1206287 m!1381465))

(assert (=> d!344646 d!344718))

(declare-fun b!1206308 () Bool)

(declare-fun e!773880 () List!12141)

(assert (=> b!1206308 (= e!773880 lt!412403)))

(declare-fun b!1206309 () Bool)

(declare-fun e!773882 () Int)

(assert (=> b!1206309 (= e!773882 0)))

(declare-fun b!1206310 () Bool)

(declare-fun call!84247 () Int)

(assert (=> b!1206310 (= e!773882 (- call!84247 0))))

(declare-fun d!344720 () Bool)

(declare-fun e!773881 () Bool)

(assert (=> d!344720 e!773881))

(declare-fun res!543070 () Bool)

(assert (=> d!344720 (=> (not res!543070) (not e!773881))))

(declare-fun lt!412447 () List!12141)

(assert (=> d!344720 (= res!543070 (= ((_ map implies) (content!1716 lt!412447) (content!1716 lt!412403)) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!773878 () List!12141)

(assert (=> d!344720 (= lt!412447 e!773878)))

(declare-fun c!201566 () Bool)

(assert (=> d!344720 (= c!201566 ((_ is Nil!12117) lt!412403))))

(assert (=> d!344720 (= (drop!618 lt!412403 0) lt!412447)))

(declare-fun b!1206311 () Bool)

(declare-fun e!773879 () Int)

(assert (=> b!1206311 (= e!773879 e!773882)))

(declare-fun c!201565 () Bool)

(assert (=> b!1206311 (= c!201565 (>= 0 call!84247))))

(declare-fun b!1206312 () Bool)

(assert (=> b!1206312 (= e!773879 call!84247)))

(declare-fun bm!84242 () Bool)

(assert (=> bm!84242 (= call!84247 (size!9657 lt!412403))))

(declare-fun b!1206313 () Bool)

(assert (=> b!1206313 (= e!773878 Nil!12117)))

(declare-fun b!1206314 () Bool)

(assert (=> b!1206314 (= e!773880 (drop!618 (t!112557 lt!412403) (- 0 1)))))

(declare-fun b!1206315 () Bool)

(assert (=> b!1206315 (= e!773881 (= (size!9657 lt!412447) e!773879))))

(declare-fun c!201567 () Bool)

(assert (=> b!1206315 (= c!201567 (<= 0 0))))

(declare-fun b!1206316 () Bool)

(assert (=> b!1206316 (= e!773878 e!773880)))

(declare-fun c!201568 () Bool)

(assert (=> b!1206316 (= c!201568 (<= 0 0))))

(assert (= (and d!344720 c!201566) b!1206313))

(assert (= (and d!344720 (not c!201566)) b!1206316))

(assert (= (and b!1206316 c!201568) b!1206308))

(assert (= (and b!1206316 (not c!201568)) b!1206314))

(assert (= (and d!344720 res!543070) b!1206315))

(assert (= (and b!1206315 c!201567) b!1206312))

(assert (= (and b!1206315 (not c!201567)) b!1206311))

(assert (= (and b!1206311 c!201565) b!1206309))

(assert (= (and b!1206311 (not c!201565)) b!1206310))

(assert (= (or b!1206312 b!1206311 b!1206310) bm!84242))

(declare-fun m!1381467 () Bool)

(assert (=> d!344720 m!1381467))

(declare-fun m!1381469 () Bool)

(assert (=> d!344720 m!1381469))

(declare-fun m!1381471 () Bool)

(assert (=> bm!84242 m!1381471))

(declare-fun m!1381473 () Bool)

(assert (=> b!1206314 m!1381473))

(declare-fun m!1381475 () Bool)

(assert (=> b!1206315 m!1381475))

(assert (=> d!344646 d!344720))

(declare-fun b!1206317 () Bool)

(declare-fun e!773884 () List!12141)

(assert (=> b!1206317 (= e!773884 (slice!521 r!2028 0 (- (- until!61 1) call!84234)))))

(declare-fun e!773883 () Bool)

(declare-fun b!1206320 () Bool)

(declare-fun lt!412448 () List!12141)

(assert (=> b!1206320 (= e!773883 (or (not (= (slice!521 r!2028 0 (- (- until!61 1) call!84234)) Nil!12117)) (= lt!412448 call!84233)))))

(declare-fun b!1206318 () Bool)

(assert (=> b!1206318 (= e!773884 (Cons!12117 (h!17518 call!84233) (++!3139 (t!112557 call!84233) (slice!521 r!2028 0 (- (- until!61 1) call!84234)))))))

(declare-fun d!344722 () Bool)

(assert (=> d!344722 e!773883))

(declare-fun res!543071 () Bool)

(assert (=> d!344722 (=> (not res!543071) (not e!773883))))

(assert (=> d!344722 (= res!543071 (= (content!1716 lt!412448) ((_ map or) (content!1716 call!84233) (content!1716 (slice!521 r!2028 0 (- (- until!61 1) call!84234))))))))

(assert (=> d!344722 (= lt!412448 e!773884)))

(declare-fun c!201569 () Bool)

(assert (=> d!344722 (= c!201569 ((_ is Nil!12117) call!84233))))

(assert (=> d!344722 (= (++!3139 call!84233 (slice!521 r!2028 0 (- (- until!61 1) call!84234))) lt!412448)))

(declare-fun b!1206319 () Bool)

(declare-fun res!543072 () Bool)

(assert (=> b!1206319 (=> (not res!543072) (not e!773883))))

(assert (=> b!1206319 (= res!543072 (= (size!9657 lt!412448) (+ (size!9657 call!84233) (size!9657 (slice!521 r!2028 0 (- (- until!61 1) call!84234))))))))

(assert (= (and d!344722 c!201569) b!1206317))

(assert (= (and d!344722 (not c!201569)) b!1206318))

(assert (= (and d!344722 res!543071) b!1206319))

(assert (= (and b!1206319 res!543072) b!1206320))

(assert (=> b!1206318 m!1381345))

(declare-fun m!1381477 () Bool)

(assert (=> b!1206318 m!1381477))

(declare-fun m!1381479 () Bool)

(assert (=> d!344722 m!1381479))

(declare-fun m!1381481 () Bool)

(assert (=> d!344722 m!1381481))

(assert (=> d!344722 m!1381345))

(declare-fun m!1381483 () Bool)

(assert (=> d!344722 m!1381483))

(declare-fun m!1381485 () Bool)

(assert (=> b!1206319 m!1381485))

(declare-fun m!1381487 () Bool)

(assert (=> b!1206319 m!1381487))

(assert (=> b!1206319 m!1381345))

(declare-fun m!1381489 () Bool)

(assert (=> b!1206319 m!1381489))

(assert (=> b!1206181 d!344722))

(declare-fun d!344724 () Bool)

(assert (=> d!344724 (= (slice!521 r!2028 0 (- (- until!61 1) call!84234)) (take!146 (drop!618 r!2028 0) (- (- (- until!61 1) call!84234) 0)))))

(declare-fun bs!288463 () Bool)

(assert (= bs!288463 d!344724))

(declare-fun m!1381491 () Bool)

(assert (=> bs!288463 m!1381491))

(assert (=> bs!288463 m!1381491))

(declare-fun m!1381493 () Bool)

(assert (=> bs!288463 m!1381493))

(assert (=> b!1206181 d!344724))

(declare-fun b!1206321 () Bool)

(declare-fun e!773886 () List!12141)

(assert (=> b!1206321 (= e!773886 r!2028)))

(declare-fun e!773885 () Bool)

(declare-fun b!1206324 () Bool)

(declare-fun lt!412449 () List!12141)

(assert (=> b!1206324 (= e!773885 (or (not (= r!2028 Nil!12117)) (= lt!412449 (t!112557 l!2744))))))

(declare-fun b!1206322 () Bool)

(assert (=> b!1206322 (= e!773886 (Cons!12117 (h!17518 (t!112557 l!2744)) (++!3139 (t!112557 (t!112557 l!2744)) r!2028)))))

(declare-fun d!344726 () Bool)

(assert (=> d!344726 e!773885))

(declare-fun res!543073 () Bool)

(assert (=> d!344726 (=> (not res!543073) (not e!773885))))

(assert (=> d!344726 (= res!543073 (= (content!1716 lt!412449) ((_ map or) (content!1716 (t!112557 l!2744)) (content!1716 r!2028))))))

(assert (=> d!344726 (= lt!412449 e!773886)))

(declare-fun c!201570 () Bool)

(assert (=> d!344726 (= c!201570 ((_ is Nil!12117) (t!112557 l!2744)))))

(assert (=> d!344726 (= (++!3139 (t!112557 l!2744) r!2028) lt!412449)))

(declare-fun b!1206323 () Bool)

(declare-fun res!543074 () Bool)

(assert (=> b!1206323 (=> (not res!543074) (not e!773885))))

(assert (=> b!1206323 (= res!543074 (= (size!9657 lt!412449) (+ (size!9657 (t!112557 l!2744)) (size!9657 r!2028))))))

(assert (= (and d!344726 c!201570) b!1206321))

(assert (= (and d!344726 (not c!201570)) b!1206322))

(assert (= (and d!344726 res!543073) b!1206323))

(assert (= (and b!1206323 res!543074) b!1206324))

(declare-fun m!1381495 () Bool)

(assert (=> b!1206322 m!1381495))

(declare-fun m!1381497 () Bool)

(assert (=> d!344726 m!1381497))

(declare-fun m!1381499 () Bool)

(assert (=> d!344726 m!1381499))

(assert (=> d!344726 m!1381359))

(declare-fun m!1381501 () Bool)

(assert (=> b!1206323 m!1381501))

(assert (=> b!1206323 m!1381373))

(assert (=> b!1206323 m!1381243))

(assert (=> b!1206213 d!344726))

(declare-fun d!344728 () Bool)

(declare-fun c!201573 () Bool)

(assert (=> d!344728 (= c!201573 ((_ is Nil!12117) lt!412426))))

(declare-fun e!773889 () (InoxSet T!22300))

(assert (=> d!344728 (= (content!1716 lt!412426) e!773889)))

(declare-fun b!1206329 () Bool)

(assert (=> b!1206329 (= e!773889 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206330 () Bool)

(assert (=> b!1206330 (= e!773889 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412426) true) (content!1716 (t!112557 lt!412426))))))

(assert (= (and d!344728 c!201573) b!1206329))

(assert (= (and d!344728 (not c!201573)) b!1206330))

(declare-fun m!1381503 () Bool)

(assert (=> b!1206330 m!1381503))

(declare-fun m!1381505 () Bool)

(assert (=> b!1206330 m!1381505))

(assert (=> d!344680 d!344728))

(declare-fun d!344730 () Bool)

(declare-fun c!201574 () Bool)

(assert (=> d!344730 (= c!201574 ((_ is Nil!12117) lt!412396))))

(declare-fun e!773890 () (InoxSet T!22300))

(assert (=> d!344730 (= (content!1716 lt!412396) e!773890)))

(declare-fun b!1206331 () Bool)

(assert (=> b!1206331 (= e!773890 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206332 () Bool)

(assert (=> b!1206332 (= e!773890 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412396) true) (content!1716 (t!112557 lt!412396))))))

(assert (= (and d!344730 c!201574) b!1206331))

(assert (= (and d!344730 (not c!201574)) b!1206332))

(declare-fun m!1381507 () Bool)

(assert (=> b!1206332 m!1381507))

(declare-fun m!1381509 () Bool)

(assert (=> b!1206332 m!1381509))

(assert (=> d!344680 d!344730))

(declare-fun d!344732 () Bool)

(declare-fun c!201575 () Bool)

(assert (=> d!344732 (= c!201575 ((_ is Nil!12117) r!2028))))

(declare-fun e!773891 () (InoxSet T!22300))

(assert (=> d!344732 (= (content!1716 r!2028) e!773891)))

(declare-fun b!1206333 () Bool)

(assert (=> b!1206333 (= e!773891 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206334 () Bool)

(assert (=> b!1206334 (= e!773891 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 r!2028) true) (content!1716 (t!112557 r!2028))))))

(assert (= (and d!344732 c!201575) b!1206333))

(assert (= (and d!344732 (not c!201575)) b!1206334))

(declare-fun m!1381511 () Bool)

(assert (=> b!1206334 m!1381511))

(declare-fun m!1381513 () Bool)

(assert (=> b!1206334 m!1381513))

(assert (=> d!344680 d!344732))

(declare-fun b!1206335 () Bool)

(declare-fun e!773895 () List!12141)

(assert (=> b!1206335 (= e!773895 (Cons!12117 (h!17518 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))) (take!146 (t!112557 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))) (- (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) 1))))))

(declare-fun e!773893 () Int)

(declare-fun b!1206336 () Bool)

(assert (=> b!1206336 (= e!773893 (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))))))

(declare-fun d!344734 () Bool)

(declare-fun e!773894 () Bool)

(assert (=> d!344734 e!773894))

(declare-fun res!543075 () Bool)

(assert (=> d!344734 (=> (not res!543075) (not e!773894))))

(declare-fun lt!412450 () List!12141)

(assert (=> d!344734 (= res!543075 (= ((_ map implies) (content!1716 lt!412450) (content!1716 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!344734 (= lt!412450 e!773895)))

(declare-fun c!201577 () Bool)

(assert (=> d!344734 (= c!201577 (or ((_ is Nil!12117) (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))) (<= (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) 0)))))

(assert (=> d!344734 (= (take!146 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))) lt!412450)))

(declare-fun b!1206337 () Bool)

(declare-fun e!773892 () Int)

(assert (=> b!1206337 (= e!773892 e!773893)))

(declare-fun c!201576 () Bool)

(assert (=> b!1206337 (= c!201576 (>= (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) (size!9657 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))))))))

(declare-fun b!1206338 () Bool)

(assert (=> b!1206338 (= e!773892 0)))

(declare-fun b!1206339 () Bool)

(assert (=> b!1206339 (= e!773894 (= (size!9657 lt!412450) e!773892))))

(declare-fun c!201578 () Bool)

(assert (=> b!1206339 (= c!201578 (<= (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) 0))))

(declare-fun b!1206340 () Bool)

(assert (=> b!1206340 (= e!773893 (size!9657 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))))))

(declare-fun b!1206341 () Bool)

(assert (=> b!1206341 (= e!773895 Nil!12117)))

(assert (= (and d!344734 c!201577) b!1206341))

(assert (= (and d!344734 (not c!201577)) b!1206335))

(assert (= (and d!344734 res!543075) b!1206339))

(assert (= (and b!1206339 c!201578) b!1206338))

(assert (= (and b!1206339 (not c!201578)) b!1206337))

(assert (= (and b!1206337 c!201576) b!1206340))

(assert (= (and b!1206337 (not c!201576)) b!1206336))

(assert (=> b!1206340 m!1381257))

(declare-fun m!1381515 () Bool)

(assert (=> b!1206340 m!1381515))

(declare-fun m!1381517 () Bool)

(assert (=> d!344734 m!1381517))

(assert (=> d!344734 m!1381257))

(declare-fun m!1381519 () Bool)

(assert (=> d!344734 m!1381519))

(assert (=> b!1206337 m!1381257))

(assert (=> b!1206337 m!1381515))

(declare-fun m!1381521 () Bool)

(assert (=> b!1206335 m!1381521))

(declare-fun m!1381523 () Bool)

(assert (=> b!1206339 m!1381523))

(assert (=> d!344640 d!344734))

(declare-fun e!773898 () List!12141)

(declare-fun b!1206342 () Bool)

(assert (=> b!1206342 (= e!773898 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)))))

(declare-fun b!1206343 () Bool)

(declare-fun e!773900 () Int)

(assert (=> b!1206343 (= e!773900 0)))

(declare-fun b!1206344 () Bool)

(declare-fun call!84248 () Int)

(assert (=> b!1206344 (= e!773900 (- call!84248 (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))))))

(declare-fun d!344736 () Bool)

(declare-fun e!773899 () Bool)

(assert (=> d!344736 e!773899))

(declare-fun res!543076 () Bool)

(assert (=> d!344736 (=> (not res!543076) (not e!773899))))

(declare-fun lt!412451 () List!12141)

(assert (=> d!344736 (= res!543076 (= ((_ map implies) (content!1716 lt!412451) (content!1716 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)))) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!773896 () List!12141)

(assert (=> d!344736 (= lt!412451 e!773896)))

(declare-fun c!201580 () Bool)

(assert (=> d!344736 (= c!201580 ((_ is Nil!12117) (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))))))

(assert (=> d!344736 (= (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) lt!412451)))

(declare-fun b!1206345 () Bool)

(declare-fun e!773897 () Int)

(assert (=> b!1206345 (= e!773897 e!773900)))

(declare-fun c!201579 () Bool)

(assert (=> b!1206345 (= c!201579 (>= (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) call!84248))))

(declare-fun b!1206346 () Bool)

(assert (=> b!1206346 (= e!773897 call!84248)))

(declare-fun bm!84243 () Bool)

(assert (=> bm!84243 (= call!84248 (size!9657 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))))))

(declare-fun b!1206347 () Bool)

(assert (=> b!1206347 (= e!773896 Nil!12117)))

(declare-fun b!1206348 () Bool)

(assert (=> b!1206348 (= e!773898 (drop!618 (t!112557 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))) (- (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) 1)))))

(declare-fun b!1206349 () Bool)

(assert (=> b!1206349 (= e!773899 (= (size!9657 lt!412451) e!773897))))

(declare-fun c!201581 () Bool)

(assert (=> b!1206349 (= c!201581 (<= (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) 0))))

(declare-fun b!1206350 () Bool)

(assert (=> b!1206350 (= e!773896 e!773898)))

(declare-fun c!201582 () Bool)

(assert (=> b!1206350 (= c!201582 (<= (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) 0))))

(assert (= (and d!344736 c!201580) b!1206347))

(assert (= (and d!344736 (not c!201580)) b!1206350))

(assert (= (and b!1206350 c!201582) b!1206342))

(assert (= (and b!1206350 (not c!201582)) b!1206348))

(assert (= (and d!344736 res!543076) b!1206349))

(assert (= (and b!1206349 c!201581) b!1206346))

(assert (= (and b!1206349 (not c!201581)) b!1206345))

(assert (= (and b!1206345 c!201579) b!1206343))

(assert (= (and b!1206345 (not c!201579)) b!1206344))

(assert (= (or b!1206346 b!1206345 b!1206344) bm!84243))

(declare-fun m!1381525 () Bool)

(assert (=> d!344736 m!1381525))

(declare-fun m!1381527 () Bool)

(assert (=> d!344736 m!1381527))

(declare-fun m!1381529 () Bool)

(assert (=> bm!84243 m!1381529))

(declare-fun m!1381531 () Bool)

(assert (=> b!1206348 m!1381531))

(declare-fun m!1381533 () Bool)

(assert (=> b!1206349 m!1381533))

(assert (=> d!344640 d!344736))

(declare-fun d!344738 () Bool)

(declare-fun lt!412452 () Int)

(assert (=> d!344738 (>= lt!412452 0)))

(declare-fun e!773901 () Int)

(assert (=> d!344738 (= lt!412452 e!773901)))

(declare-fun c!201583 () Bool)

(assert (=> d!344738 (= c!201583 ((_ is Nil!12117) lt!412431))))

(assert (=> d!344738 (= (size!9657 lt!412431) lt!412452)))

(declare-fun b!1206351 () Bool)

(assert (=> b!1206351 (= e!773901 0)))

(declare-fun b!1206352 () Bool)

(assert (=> b!1206352 (= e!773901 (+ 1 (size!9657 (t!112557 lt!412431))))))

(assert (= (and d!344738 c!201583) b!1206351))

(assert (= (and d!344738 (not c!201583)) b!1206352))

(declare-fun m!1381535 () Bool)

(assert (=> b!1206352 m!1381535))

(assert (=> b!1206229 d!344738))

(declare-fun d!344740 () Bool)

(declare-fun lt!412453 () Int)

(assert (=> d!344740 (>= lt!412453 0)))

(declare-fun e!773902 () Int)

(assert (=> d!344740 (= lt!412453 e!773902)))

(declare-fun c!201584 () Bool)

(assert (=> d!344740 (= c!201584 ((_ is Nil!12117) call!84226))))

(assert (=> d!344740 (= (size!9657 call!84226) lt!412453)))

(declare-fun b!1206353 () Bool)

(assert (=> b!1206353 (= e!773902 0)))

(declare-fun b!1206354 () Bool)

(assert (=> b!1206354 (= e!773902 (+ 1 (size!9657 (t!112557 call!84226))))))

(assert (= (and d!344740 c!201584) b!1206353))

(assert (= (and d!344740 (not c!201584)) b!1206354))

(assert (=> b!1206354 m!1381449))

(assert (=> b!1206229 d!344740))

(declare-fun d!344742 () Bool)

(declare-fun lt!412454 () Int)

(assert (=> d!344742 (>= lt!412454 0)))

(declare-fun e!773903 () Int)

(assert (=> d!344742 (= lt!412454 e!773903)))

(declare-fun c!201585 () Bool)

(assert (=> d!344742 (= c!201585 ((_ is Nil!12117) call!84224))))

(assert (=> d!344742 (= (size!9657 call!84224) lt!412454)))

(declare-fun b!1206355 () Bool)

(assert (=> b!1206355 (= e!773903 0)))

(declare-fun b!1206356 () Bool)

(assert (=> b!1206356 (= e!773903 (+ 1 (size!9657 (t!112557 call!84224))))))

(assert (= (and d!344742 c!201585) b!1206355))

(assert (= (and d!344742 (not c!201585)) b!1206356))

(declare-fun m!1381537 () Bool)

(assert (=> b!1206356 m!1381537))

(assert (=> b!1206229 d!344742))

(declare-fun d!344744 () Bool)

(declare-fun c!201586 () Bool)

(assert (=> d!344744 (= c!201586 ((_ is Nil!12117) lt!412427))))

(declare-fun e!773904 () (InoxSet T!22300))

(assert (=> d!344744 (= (content!1716 lt!412427) e!773904)))

(declare-fun b!1206357 () Bool)

(assert (=> b!1206357 (= e!773904 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206358 () Bool)

(assert (=> b!1206358 (= e!773904 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412427) true) (content!1716 (t!112557 lt!412427))))))

(assert (= (and d!344744 c!201586) b!1206357))

(assert (= (and d!344744 (not c!201586)) b!1206358))

(declare-fun m!1381539 () Bool)

(assert (=> b!1206358 m!1381539))

(declare-fun m!1381541 () Bool)

(assert (=> b!1206358 m!1381541))

(assert (=> d!344684 d!344744))

(declare-fun d!344746 () Bool)

(declare-fun c!201587 () Bool)

(assert (=> d!344746 (= c!201587 ((_ is Nil!12117) l!2744))))

(declare-fun e!773905 () (InoxSet T!22300))

(assert (=> d!344746 (= (content!1716 l!2744) e!773905)))

(declare-fun b!1206359 () Bool)

(assert (=> b!1206359 (= e!773905 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206360 () Bool)

(assert (=> b!1206360 (= e!773905 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 l!2744) true) (content!1716 (t!112557 l!2744))))))

(assert (= (and d!344746 c!201587) b!1206359))

(assert (= (and d!344746 (not c!201587)) b!1206360))

(declare-fun m!1381543 () Bool)

(assert (=> b!1206360 m!1381543))

(assert (=> b!1206360 m!1381499))

(assert (=> d!344684 d!344746))

(assert (=> d!344684 d!344732))

(declare-fun e!773909 () List!12141)

(declare-fun b!1206361 () Bool)

(assert (=> b!1206361 (= e!773909 (Cons!12117 (h!17518 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))) (take!146 (t!112557 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))) (- (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0)) 1))))))

(declare-fun e!773907 () Int)

(declare-fun b!1206362 () Bool)

(assert (=> b!1206362 (= e!773907 (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0)))))

(declare-fun d!344748 () Bool)

(declare-fun e!773908 () Bool)

(assert (=> d!344748 e!773908))

(declare-fun res!543077 () Bool)

(assert (=> d!344748 (=> (not res!543077) (not e!773908))))

(declare-fun lt!412455 () List!12141)

(assert (=> d!344748 (= res!543077 (= ((_ map implies) (content!1716 lt!412455) (content!1716 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0)))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!344748 (= lt!412455 e!773909)))

(declare-fun c!201589 () Bool)

(assert (=> d!344748 (= c!201589 (or ((_ is Nil!12117) (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))) (<= (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0)) 0)))))

(assert (=> d!344748 (= (take!146 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0)) (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0))) lt!412455)))

(declare-fun b!1206363 () Bool)

(declare-fun e!773906 () Int)

(assert (=> b!1206363 (= e!773906 e!773907)))

(declare-fun c!201588 () Bool)

(assert (=> b!1206363 (= c!201588 (>= (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0)) (size!9657 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0)))))))

(declare-fun b!1206364 () Bool)

(assert (=> b!1206364 (= e!773906 0)))

(declare-fun b!1206365 () Bool)

(assert (=> b!1206365 (= e!773908 (= (size!9657 lt!412455) e!773906))))

(declare-fun c!201590 () Bool)

(assert (=> b!1206365 (= c!201590 (<= (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0)) 0))))

(declare-fun b!1206366 () Bool)

(assert (=> b!1206366 (= e!773907 (size!9657 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))))))

(declare-fun b!1206367 () Bool)

(assert (=> b!1206367 (= e!773909 Nil!12117)))

(assert (= (and d!344748 c!201589) b!1206367))

(assert (= (and d!344748 (not c!201589)) b!1206361))

(assert (= (and d!344748 res!543077) b!1206365))

(assert (= (and b!1206365 c!201590) b!1206364))

(assert (= (and b!1206365 (not c!201590)) b!1206363))

(assert (= (and b!1206363 c!201588) b!1206366))

(assert (= (and b!1206363 (not c!201588)) b!1206362))

(assert (=> b!1206366 m!1381375))

(declare-fun m!1381545 () Bool)

(assert (=> b!1206366 m!1381545))

(declare-fun m!1381547 () Bool)

(assert (=> d!344748 m!1381547))

(assert (=> d!344748 m!1381375))

(declare-fun m!1381549 () Bool)

(assert (=> d!344748 m!1381549))

(assert (=> b!1206363 m!1381375))

(assert (=> b!1206363 m!1381545))

(declare-fun m!1381551 () Bool)

(assert (=> b!1206361 m!1381551))

(declare-fun m!1381553 () Bool)

(assert (=> b!1206365 m!1381553))

(assert (=> d!344690 d!344748))

(declare-fun b!1206368 () Bool)

(declare-fun e!773912 () List!12141)

(assert (=> b!1206368 (= e!773912 (ite c!201496 r!2028 lt!412396))))

(declare-fun b!1206369 () Bool)

(declare-fun e!773914 () Int)

(assert (=> b!1206369 (= e!773914 0)))

(declare-fun call!84249 () Int)

(declare-fun b!1206370 () Bool)

(assert (=> b!1206370 (= e!773914 (- call!84249 (ite c!201496 (- lt!412398) 0)))))

(declare-fun d!344750 () Bool)

(declare-fun e!773913 () Bool)

(assert (=> d!344750 e!773913))

(declare-fun res!543078 () Bool)

(assert (=> d!344750 (=> (not res!543078) (not e!773913))))

(declare-fun lt!412456 () List!12141)

(assert (=> d!344750 (= res!543078 (= ((_ map implies) (content!1716 lt!412456) (content!1716 (ite c!201496 r!2028 lt!412396))) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!773910 () List!12141)

(assert (=> d!344750 (= lt!412456 e!773910)))

(declare-fun c!201592 () Bool)

(assert (=> d!344750 (= c!201592 ((_ is Nil!12117) (ite c!201496 r!2028 lt!412396)))))

(assert (=> d!344750 (= (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0)) lt!412456)))

(declare-fun b!1206371 () Bool)

(declare-fun e!773911 () Int)

(assert (=> b!1206371 (= e!773911 e!773914)))

(declare-fun c!201591 () Bool)

(assert (=> b!1206371 (= c!201591 (>= (ite c!201496 (- lt!412398) 0) call!84249))))

(declare-fun b!1206372 () Bool)

(assert (=> b!1206372 (= e!773911 call!84249)))

(declare-fun bm!84244 () Bool)

(assert (=> bm!84244 (= call!84249 (size!9657 (ite c!201496 r!2028 lt!412396)))))

(declare-fun b!1206373 () Bool)

(assert (=> b!1206373 (= e!773910 Nil!12117)))

(declare-fun b!1206374 () Bool)

(assert (=> b!1206374 (= e!773912 (drop!618 (t!112557 (ite c!201496 r!2028 lt!412396)) (- (ite c!201496 (- lt!412398) 0) 1)))))

(declare-fun b!1206375 () Bool)

(assert (=> b!1206375 (= e!773913 (= (size!9657 lt!412456) e!773911))))

(declare-fun c!201593 () Bool)

(assert (=> b!1206375 (= c!201593 (<= (ite c!201496 (- lt!412398) 0) 0))))

(declare-fun b!1206376 () Bool)

(assert (=> b!1206376 (= e!773910 e!773912)))

(declare-fun c!201594 () Bool)

(assert (=> b!1206376 (= c!201594 (<= (ite c!201496 (- lt!412398) 0) 0))))

(assert (= (and d!344750 c!201592) b!1206373))

(assert (= (and d!344750 (not c!201592)) b!1206376))

(assert (= (and b!1206376 c!201594) b!1206368))

(assert (= (and b!1206376 (not c!201594)) b!1206374))

(assert (= (and d!344750 res!543078) b!1206375))

(assert (= (and b!1206375 c!201593) b!1206372))

(assert (= (and b!1206375 (not c!201593)) b!1206371))

(assert (= (and b!1206371 c!201591) b!1206369))

(assert (= (and b!1206371 (not c!201591)) b!1206370))

(assert (= (or b!1206372 b!1206371 b!1206370) bm!84244))

(declare-fun m!1381555 () Bool)

(assert (=> d!344750 m!1381555))

(declare-fun m!1381557 () Bool)

(assert (=> d!344750 m!1381557))

(declare-fun m!1381559 () Bool)

(assert (=> bm!84244 m!1381559))

(declare-fun m!1381561 () Bool)

(assert (=> b!1206374 m!1381561))

(declare-fun m!1381563 () Bool)

(assert (=> b!1206375 m!1381563))

(assert (=> d!344690 d!344750))

(declare-fun d!344752 () Bool)

(declare-fun c!201595 () Bool)

(assert (=> d!344752 (= c!201595 ((_ is Nil!12117) lt!412432))))

(declare-fun e!773915 () (InoxSet T!22300))

(assert (=> d!344752 (= (content!1716 lt!412432) e!773915)))

(declare-fun b!1206377 () Bool)

(assert (=> b!1206377 (= e!773915 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206378 () Bool)

(assert (=> b!1206378 (= e!773915 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412432) true) (content!1716 (t!112557 lt!412432))))))

(assert (= (and d!344752 c!201595) b!1206377))

(assert (= (and d!344752 (not c!201595)) b!1206378))

(declare-fun m!1381565 () Bool)

(assert (=> b!1206378 m!1381565))

(declare-fun m!1381567 () Bool)

(assert (=> b!1206378 m!1381567))

(assert (=> d!344694 d!344752))

(declare-fun d!344754 () Bool)

(declare-fun c!201596 () Bool)

(assert (=> d!344754 (= c!201596 ((_ is Nil!12117) (slice!521 l!2744 from!613 lt!412400)))))

(declare-fun e!773916 () (InoxSet T!22300))

(assert (=> d!344754 (= (content!1716 (slice!521 l!2744 from!613 lt!412400)) e!773916)))

(declare-fun b!1206379 () Bool)

(assert (=> b!1206379 (= e!773916 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206380 () Bool)

(assert (=> b!1206380 (= e!773916 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (slice!521 l!2744 from!613 lt!412400)) true) (content!1716 (t!112557 (slice!521 l!2744 from!613 lt!412400)))))))

(assert (= (and d!344754 c!201596) b!1206379))

(assert (= (and d!344754 (not c!201596)) b!1206380))

(declare-fun m!1381569 () Bool)

(assert (=> b!1206380 m!1381569))

(assert (=> b!1206380 m!1381433))

(assert (=> d!344694 d!344754))

(declare-fun d!344756 () Bool)

(declare-fun c!201597 () Bool)

(assert (=> d!344756 (= c!201597 ((_ is Nil!12117) call!84223))))

(declare-fun e!773917 () (InoxSet T!22300))

(assert (=> d!344756 (= (content!1716 call!84223) e!773917)))

(declare-fun b!1206381 () Bool)

(assert (=> b!1206381 (= e!773917 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206382 () Bool)

(assert (=> b!1206382 (= e!773917 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 call!84223) true) (content!1716 (t!112557 call!84223))))))

(assert (= (and d!344756 c!201597) b!1206381))

(assert (= (and d!344756 (not c!201597)) b!1206382))

(declare-fun m!1381571 () Bool)

(assert (=> b!1206382 m!1381571))

(declare-fun m!1381573 () Bool)

(assert (=> b!1206382 m!1381573))

(assert (=> d!344694 d!344756))

(declare-fun d!344758 () Bool)

(assert (=> d!344758 (= (slice!521 (++!3139 lt!412396 r!2028) 0 (- until!61 1)) (take!146 (drop!618 (++!3139 lt!412396 r!2028) 0) (- (- until!61 1) 0)))))

(declare-fun bs!288464 () Bool)

(assert (= bs!288464 d!344758))

(assert (=> bs!288464 m!1381233))

(declare-fun m!1381575 () Bool)

(assert (=> bs!288464 m!1381575))

(assert (=> bs!288464 m!1381575))

(declare-fun m!1381577 () Bool)

(assert (=> bs!288464 m!1381577))

(assert (=> d!344650 d!344758))

(assert (=> d!344650 d!344680))

(assert (=> d!344650 d!344636))

(declare-fun b!1206395 () Bool)

(declare-fun e!773926 () Int)

(declare-fun call!84257 () Int)

(assert (=> b!1206395 (= e!773926 call!84257)))

(declare-fun b!1206396 () Bool)

(assert (=> b!1206396 (= e!773926 (- until!61 1))))

(declare-fun b!1206397 () Bool)

(declare-fun e!773924 () List!12141)

(declare-fun e!773925 () List!12141)

(assert (=> b!1206397 (= e!773924 e!773925)))

(declare-fun c!201606 () Bool)

(assert (=> b!1206397 (= c!201606 (<= (- until!61 1) call!84257))))

(declare-fun b!1206398 () Bool)

(declare-fun call!84256 () List!12141)

(assert (=> b!1206398 (= e!773925 call!84256)))

(declare-fun c!201605 () Bool)

(declare-fun call!84258 () List!12141)

(declare-fun bm!84251 () Bool)

(assert (=> bm!84251 (= call!84258 (slice!521 (ite c!201605 r!2028 lt!412396) (ite c!201605 (- 0 call!84257) 0) (ite c!201605 (- (- until!61 1) call!84257) e!773926)))))

(declare-fun b!1206399 () Bool)

(assert (=> b!1206399 (= e!773925 (++!3139 call!84256 (slice!521 r!2028 0 (- (- until!61 1) call!84257))))))

(declare-fun bm!84252 () Bool)

(declare-fun c!201604 () Bool)

(assert (=> bm!84252 (= c!201604 c!201606)))

(assert (=> bm!84252 (= call!84256 call!84258)))

(declare-fun b!1206400 () Bool)

(assert (=> b!1206400 (= e!773924 call!84258)))

(declare-fun d!344760 () Bool)

(assert (=> d!344760 (= (slice!521 (++!3139 lt!412396 r!2028) 0 (- until!61 1)) e!773924)))

(assert (=> d!344760 (= c!201605 (<= (size!9657 lt!412396) 0))))

(assert (=> d!344760 true))

(declare-fun _$8!221 () Unit!18512)

(assert (=> d!344760 (= (choose!7745 lt!412396 r!2028 0 (- until!61 1)) _$8!221)))

(declare-fun bm!84253 () Bool)

(assert (=> bm!84253 (= call!84257 (size!9657 lt!412396))))

(assert (= (and d!344760 c!201605) b!1206400))

(assert (= (and d!344760 (not c!201605)) b!1206397))

(assert (= (and b!1206397 c!201606) b!1206398))

(assert (= (and b!1206397 (not c!201606)) b!1206399))

(assert (= (or b!1206398 b!1206399) bm!84252))

(assert (= (and bm!84252 c!201604) b!1206396))

(assert (= (and bm!84252 (not c!201604)) b!1206395))

(assert (= (or b!1206400 b!1206395 b!1206397 b!1206399) bm!84253))

(assert (= (or b!1206400 bm!84252) bm!84251))

(declare-fun m!1381579 () Bool)

(assert (=> bm!84251 m!1381579))

(declare-fun m!1381581 () Bool)

(assert (=> b!1206399 m!1381581))

(assert (=> b!1206399 m!1381581))

(declare-fun m!1381583 () Bool)

(assert (=> b!1206399 m!1381583))

(assert (=> d!344760 m!1381233))

(assert (=> d!344760 m!1381233))

(assert (=> d!344760 m!1381349))

(assert (=> d!344760 m!1381223))

(assert (=> bm!84253 m!1381223))

(assert (=> d!344650 d!344760))

(declare-fun e!773930 () List!12141)

(declare-fun b!1206401 () Bool)

(assert (=> b!1206401 (= e!773930 (Cons!12117 (h!17518 (drop!618 l!2744 from!613)) (take!146 (t!112557 (drop!618 l!2744 from!613)) (- (- lt!412400 from!613) 1))))))

(declare-fun b!1206402 () Bool)

(declare-fun e!773928 () Int)

(assert (=> b!1206402 (= e!773928 (- lt!412400 from!613))))

(declare-fun d!344762 () Bool)

(declare-fun e!773929 () Bool)

(assert (=> d!344762 e!773929))

(declare-fun res!543079 () Bool)

(assert (=> d!344762 (=> (not res!543079) (not e!773929))))

(declare-fun lt!412457 () List!12141)

(assert (=> d!344762 (= res!543079 (= ((_ map implies) (content!1716 lt!412457) (content!1716 (drop!618 l!2744 from!613))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!344762 (= lt!412457 e!773930)))

(declare-fun c!201608 () Bool)

(assert (=> d!344762 (= c!201608 (or ((_ is Nil!12117) (drop!618 l!2744 from!613)) (<= (- lt!412400 from!613) 0)))))

(assert (=> d!344762 (= (take!146 (drop!618 l!2744 from!613) (- lt!412400 from!613)) lt!412457)))

(declare-fun b!1206403 () Bool)

(declare-fun e!773927 () Int)

(assert (=> b!1206403 (= e!773927 e!773928)))

(declare-fun c!201607 () Bool)

(assert (=> b!1206403 (= c!201607 (>= (- lt!412400 from!613) (size!9657 (drop!618 l!2744 from!613))))))

(declare-fun b!1206404 () Bool)

(assert (=> b!1206404 (= e!773927 0)))

(declare-fun b!1206405 () Bool)

(assert (=> b!1206405 (= e!773929 (= (size!9657 lt!412457) e!773927))))

(declare-fun c!201609 () Bool)

(assert (=> b!1206405 (= c!201609 (<= (- lt!412400 from!613) 0))))

(declare-fun b!1206406 () Bool)

(assert (=> b!1206406 (= e!773928 (size!9657 (drop!618 l!2744 from!613)))))

(declare-fun b!1206407 () Bool)

(assert (=> b!1206407 (= e!773930 Nil!12117)))

(assert (= (and d!344762 c!201608) b!1206407))

(assert (= (and d!344762 (not c!201608)) b!1206401))

(assert (= (and d!344762 res!543079) b!1206405))

(assert (= (and b!1206405 c!201609) b!1206404))

(assert (= (and b!1206405 (not c!201609)) b!1206403))

(assert (= (and b!1206403 c!201607) b!1206406))

(assert (= (and b!1206403 (not c!201607)) b!1206402))

(assert (=> b!1206406 m!1381417))

(declare-fun m!1381585 () Bool)

(assert (=> b!1206406 m!1381585))

(declare-fun m!1381587 () Bool)

(assert (=> d!344762 m!1381587))

(assert (=> d!344762 m!1381417))

(declare-fun m!1381589 () Bool)

(assert (=> d!344762 m!1381589))

(assert (=> b!1206403 m!1381417))

(assert (=> b!1206403 m!1381585))

(declare-fun m!1381591 () Bool)

(assert (=> b!1206401 m!1381591))

(declare-fun m!1381593 () Bool)

(assert (=> b!1206405 m!1381593))

(assert (=> d!344696 d!344762))

(declare-fun b!1206408 () Bool)

(declare-fun e!773933 () List!12141)

(assert (=> b!1206408 (= e!773933 l!2744)))

(declare-fun b!1206409 () Bool)

(declare-fun e!773935 () Int)

(assert (=> b!1206409 (= e!773935 0)))

(declare-fun b!1206410 () Bool)

(declare-fun call!84259 () Int)

(assert (=> b!1206410 (= e!773935 (- call!84259 from!613))))

(declare-fun d!344764 () Bool)

(declare-fun e!773934 () Bool)

(assert (=> d!344764 e!773934))

(declare-fun res!543080 () Bool)

(assert (=> d!344764 (=> (not res!543080) (not e!773934))))

(declare-fun lt!412458 () List!12141)

(assert (=> d!344764 (= res!543080 (= ((_ map implies) (content!1716 lt!412458) (content!1716 l!2744)) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!773931 () List!12141)

(assert (=> d!344764 (= lt!412458 e!773931)))

(declare-fun c!201611 () Bool)

(assert (=> d!344764 (= c!201611 ((_ is Nil!12117) l!2744))))

(assert (=> d!344764 (= (drop!618 l!2744 from!613) lt!412458)))

(declare-fun b!1206411 () Bool)

(declare-fun e!773932 () Int)

(assert (=> b!1206411 (= e!773932 e!773935)))

(declare-fun c!201610 () Bool)

(assert (=> b!1206411 (= c!201610 (>= from!613 call!84259))))

(declare-fun b!1206412 () Bool)

(assert (=> b!1206412 (= e!773932 call!84259)))

(declare-fun bm!84254 () Bool)

(assert (=> bm!84254 (= call!84259 (size!9657 l!2744))))

(declare-fun b!1206413 () Bool)

(assert (=> b!1206413 (= e!773931 Nil!12117)))

(declare-fun b!1206414 () Bool)

(assert (=> b!1206414 (= e!773933 (drop!618 (t!112557 l!2744) (- from!613 1)))))

(declare-fun b!1206415 () Bool)

(assert (=> b!1206415 (= e!773934 (= (size!9657 lt!412458) e!773932))))

(declare-fun c!201612 () Bool)

(assert (=> b!1206415 (= c!201612 (<= from!613 0))))

(declare-fun b!1206416 () Bool)

(assert (=> b!1206416 (= e!773931 e!773933)))

(declare-fun c!201613 () Bool)

(assert (=> b!1206416 (= c!201613 (<= from!613 0))))

(assert (= (and d!344764 c!201611) b!1206413))

(assert (= (and d!344764 (not c!201611)) b!1206416))

(assert (= (and b!1206416 c!201613) b!1206408))

(assert (= (and b!1206416 (not c!201613)) b!1206414))

(assert (= (and d!344764 res!543080) b!1206415))

(assert (= (and b!1206415 c!201612) b!1206412))

(assert (= (and b!1206415 (not c!201612)) b!1206411))

(assert (= (and b!1206411 c!201610) b!1206409))

(assert (= (and b!1206411 (not c!201610)) b!1206410))

(assert (= (or b!1206412 b!1206411 b!1206410) bm!84254))

(declare-fun m!1381595 () Bool)

(assert (=> d!344764 m!1381595))

(assert (=> d!344764 m!1381367))

(assert (=> bm!84254 m!1381245))

(declare-fun m!1381597 () Bool)

(assert (=> b!1206414 m!1381597))

(declare-fun m!1381599 () Bool)

(assert (=> b!1206415 m!1381599))

(assert (=> d!344696 d!344764))

(declare-fun e!773939 () List!12141)

(declare-fun b!1206417 () Bool)

(assert (=> b!1206417 (= e!773939 (Cons!12117 (h!17518 (drop!618 lt!412401 from!613)) (take!146 (t!112557 (drop!618 lt!412401 from!613)) (- (- until!61 from!613) 1))))))

(declare-fun b!1206418 () Bool)

(declare-fun e!773937 () Int)

(assert (=> b!1206418 (= e!773937 (- until!61 from!613))))

(declare-fun d!344766 () Bool)

(declare-fun e!773938 () Bool)

(assert (=> d!344766 e!773938))

(declare-fun res!543081 () Bool)

(assert (=> d!344766 (=> (not res!543081) (not e!773938))))

(declare-fun lt!412459 () List!12141)

(assert (=> d!344766 (= res!543081 (= ((_ map implies) (content!1716 lt!412459) (content!1716 (drop!618 lt!412401 from!613))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!344766 (= lt!412459 e!773939)))

(declare-fun c!201615 () Bool)

(assert (=> d!344766 (= c!201615 (or ((_ is Nil!12117) (drop!618 lt!412401 from!613)) (<= (- until!61 from!613) 0)))))

(assert (=> d!344766 (= (take!146 (drop!618 lt!412401 from!613) (- until!61 from!613)) lt!412459)))

(declare-fun b!1206419 () Bool)

(declare-fun e!773936 () Int)

(assert (=> b!1206419 (= e!773936 e!773937)))

(declare-fun c!201614 () Bool)

(assert (=> b!1206419 (= c!201614 (>= (- until!61 from!613) (size!9657 (drop!618 lt!412401 from!613))))))

(declare-fun b!1206420 () Bool)

(assert (=> b!1206420 (= e!773936 0)))

(declare-fun b!1206421 () Bool)

(assert (=> b!1206421 (= e!773938 (= (size!9657 lt!412459) e!773936))))

(declare-fun c!201616 () Bool)

(assert (=> b!1206421 (= c!201616 (<= (- until!61 from!613) 0))))

(declare-fun b!1206422 () Bool)

(assert (=> b!1206422 (= e!773937 (size!9657 (drop!618 lt!412401 from!613)))))

(declare-fun b!1206423 () Bool)

(assert (=> b!1206423 (= e!773939 Nil!12117)))

(assert (= (and d!344766 c!201615) b!1206423))

(assert (= (and d!344766 (not c!201615)) b!1206417))

(assert (= (and d!344766 res!543081) b!1206421))

(assert (= (and b!1206421 c!201616) b!1206420))

(assert (= (and b!1206421 (not c!201616)) b!1206419))

(assert (= (and b!1206419 c!201614) b!1206422))

(assert (= (and b!1206419 (not c!201614)) b!1206418))

(assert (=> b!1206422 m!1381261))

(declare-fun m!1381601 () Bool)

(assert (=> b!1206422 m!1381601))

(declare-fun m!1381603 () Bool)

(assert (=> d!344766 m!1381603))

(assert (=> d!344766 m!1381261))

(declare-fun m!1381605 () Bool)

(assert (=> d!344766 m!1381605))

(assert (=> b!1206419 m!1381261))

(assert (=> b!1206419 m!1381601))

(declare-fun m!1381607 () Bool)

(assert (=> b!1206417 m!1381607))

(declare-fun m!1381609 () Bool)

(assert (=> b!1206421 m!1381609))

(assert (=> d!344644 d!344766))

(declare-fun b!1206424 () Bool)

(declare-fun e!773942 () List!12141)

(assert (=> b!1206424 (= e!773942 lt!412401)))

(declare-fun b!1206425 () Bool)

(declare-fun e!773944 () Int)

(assert (=> b!1206425 (= e!773944 0)))

(declare-fun b!1206426 () Bool)

(declare-fun call!84260 () Int)

(assert (=> b!1206426 (= e!773944 (- call!84260 from!613))))

(declare-fun d!344768 () Bool)

(declare-fun e!773943 () Bool)

(assert (=> d!344768 e!773943))

(declare-fun res!543082 () Bool)

(assert (=> d!344768 (=> (not res!543082) (not e!773943))))

(declare-fun lt!412460 () List!12141)

(assert (=> d!344768 (= res!543082 (= ((_ map implies) (content!1716 lt!412460) (content!1716 lt!412401)) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!773940 () List!12141)

(assert (=> d!344768 (= lt!412460 e!773940)))

(declare-fun c!201618 () Bool)

(assert (=> d!344768 (= c!201618 ((_ is Nil!12117) lt!412401))))

(assert (=> d!344768 (= (drop!618 lt!412401 from!613) lt!412460)))

(declare-fun b!1206427 () Bool)

(declare-fun e!773941 () Int)

(assert (=> b!1206427 (= e!773941 e!773944)))

(declare-fun c!201617 () Bool)

(assert (=> b!1206427 (= c!201617 (>= from!613 call!84260))))

(declare-fun b!1206428 () Bool)

(assert (=> b!1206428 (= e!773941 call!84260)))

(declare-fun bm!84255 () Bool)

(assert (=> bm!84255 (= call!84260 (size!9657 lt!412401))))

(declare-fun b!1206429 () Bool)

(assert (=> b!1206429 (= e!773940 Nil!12117)))

(declare-fun b!1206430 () Bool)

(assert (=> b!1206430 (= e!773942 (drop!618 (t!112557 lt!412401) (- from!613 1)))))

(declare-fun b!1206431 () Bool)

(assert (=> b!1206431 (= e!773943 (= (size!9657 lt!412460) e!773941))))

(declare-fun c!201619 () Bool)

(assert (=> b!1206431 (= c!201619 (<= from!613 0))))

(declare-fun b!1206432 () Bool)

(assert (=> b!1206432 (= e!773940 e!773942)))

(declare-fun c!201620 () Bool)

(assert (=> b!1206432 (= c!201620 (<= from!613 0))))

(assert (= (and d!344768 c!201618) b!1206429))

(assert (= (and d!344768 (not c!201618)) b!1206432))

(assert (= (and b!1206432 c!201620) b!1206424))

(assert (= (and b!1206432 (not c!201620)) b!1206430))

(assert (= (and d!344768 res!543082) b!1206431))

(assert (= (and b!1206431 c!201619) b!1206428))

(assert (= (and b!1206431 (not c!201619)) b!1206427))

(assert (= (and b!1206427 c!201617) b!1206425))

(assert (= (and b!1206427 (not c!201617)) b!1206426))

(assert (= (or b!1206428 b!1206427 b!1206426) bm!84255))

(declare-fun m!1381611 () Bool)

(assert (=> d!344768 m!1381611))

(declare-fun m!1381613 () Bool)

(assert (=> d!344768 m!1381613))

(declare-fun m!1381615 () Bool)

(assert (=> bm!84255 m!1381615))

(declare-fun m!1381617 () Bool)

(assert (=> b!1206430 m!1381617))

(declare-fun m!1381619 () Bool)

(assert (=> b!1206431 m!1381619))

(assert (=> d!344644 d!344768))

(declare-fun d!344770 () Bool)

(declare-fun lt!412461 () Int)

(assert (=> d!344770 (>= lt!412461 0)))

(declare-fun e!773945 () Int)

(assert (=> d!344770 (= lt!412461 e!773945)))

(declare-fun c!201621 () Bool)

(assert (=> d!344770 (= c!201621 ((_ is Nil!12117) (t!112557 r!2028)))))

(assert (=> d!344770 (= (size!9657 (t!112557 r!2028)) lt!412461)))

(declare-fun b!1206433 () Bool)

(assert (=> b!1206433 (= e!773945 0)))

(declare-fun b!1206434 () Bool)

(assert (=> b!1206434 (= e!773945 (+ 1 (size!9657 (t!112557 (t!112557 r!2028)))))))

(assert (= (and d!344770 c!201621) b!1206433))

(assert (= (and d!344770 (not c!201621)) b!1206434))

(declare-fun m!1381621 () Bool)

(assert (=> b!1206434 m!1381621))

(assert (=> b!1206217 d!344770))

(declare-fun e!773949 () List!12141)

(declare-fun b!1206435 () Bool)

(assert (=> b!1206435 (= e!773949 (Cons!12117 (h!17518 (drop!618 (ite c!201498 lt!412396 r!2028) 0)) (take!146 (t!112557 (drop!618 (ite c!201498 lt!412396 r!2028) 0)) (- (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0) 1))))))

(declare-fun e!773947 () Int)

(declare-fun b!1206436 () Bool)

(assert (=> b!1206436 (= e!773947 (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0))))

(declare-fun d!344772 () Bool)

(declare-fun e!773948 () Bool)

(assert (=> d!344772 e!773948))

(declare-fun res!543083 () Bool)

(assert (=> d!344772 (=> (not res!543083) (not e!773948))))

(declare-fun lt!412462 () List!12141)

(assert (=> d!344772 (= res!543083 (= ((_ map implies) (content!1716 lt!412462) (content!1716 (drop!618 (ite c!201498 lt!412396 r!2028) 0))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!344772 (= lt!412462 e!773949)))

(declare-fun c!201623 () Bool)

(assert (=> d!344772 (= c!201623 (or ((_ is Nil!12117) (drop!618 (ite c!201498 lt!412396 r!2028) 0)) (<= (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0) 0)))))

(assert (=> d!344772 (= (take!146 (drop!618 (ite c!201498 lt!412396 r!2028) 0) (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0)) lt!412462)))

(declare-fun b!1206437 () Bool)

(declare-fun e!773946 () Int)

(assert (=> b!1206437 (= e!773946 e!773947)))

(declare-fun c!201622 () Bool)

(assert (=> b!1206437 (= c!201622 (>= (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0) (size!9657 (drop!618 (ite c!201498 lt!412396 r!2028) 0))))))

(declare-fun b!1206438 () Bool)

(assert (=> b!1206438 (= e!773946 0)))

(declare-fun b!1206439 () Bool)

(assert (=> b!1206439 (= e!773948 (= (size!9657 lt!412462) e!773946))))

(declare-fun c!201624 () Bool)

(assert (=> b!1206439 (= c!201624 (<= (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0) 0))))

(declare-fun b!1206440 () Bool)

(assert (=> b!1206440 (= e!773947 (size!9657 (drop!618 (ite c!201498 lt!412396 r!2028) 0)))))

(declare-fun b!1206441 () Bool)

(assert (=> b!1206441 (= e!773949 Nil!12117)))

(assert (= (and d!344772 c!201623) b!1206441))

(assert (= (and d!344772 (not c!201623)) b!1206435))

(assert (= (and d!344772 res!543083) b!1206439))

(assert (= (and b!1206439 c!201624) b!1206438))

(assert (= (and b!1206439 (not c!201624)) b!1206437))

(assert (= (and b!1206437 c!201622) b!1206440))

(assert (= (and b!1206437 (not c!201622)) b!1206436))

(assert (=> b!1206440 m!1381421))

(declare-fun m!1381623 () Bool)

(assert (=> b!1206440 m!1381623))

(declare-fun m!1381625 () Bool)

(assert (=> d!344772 m!1381625))

(assert (=> d!344772 m!1381421))

(declare-fun m!1381627 () Bool)

(assert (=> d!344772 m!1381627))

(assert (=> b!1206437 m!1381421))

(assert (=> b!1206437 m!1381623))

(declare-fun m!1381629 () Bool)

(assert (=> b!1206435 m!1381629))

(declare-fun m!1381631 () Bool)

(assert (=> b!1206439 m!1381631))

(assert (=> d!344698 d!344772))

(declare-fun e!773952 () List!12141)

(declare-fun b!1206442 () Bool)

(assert (=> b!1206442 (= e!773952 (ite c!201498 lt!412396 r!2028))))

(declare-fun b!1206443 () Bool)

(declare-fun e!773954 () Int)

(assert (=> b!1206443 (= e!773954 0)))

(declare-fun b!1206444 () Bool)

(declare-fun call!84261 () Int)

(assert (=> b!1206444 (= e!773954 (- call!84261 0))))

(declare-fun d!344774 () Bool)

(declare-fun e!773953 () Bool)

(assert (=> d!344774 e!773953))

(declare-fun res!543084 () Bool)

(assert (=> d!344774 (=> (not res!543084) (not e!773953))))

(declare-fun lt!412463 () List!12141)

(assert (=> d!344774 (= res!543084 (= ((_ map implies) (content!1716 lt!412463) (content!1716 (ite c!201498 lt!412396 r!2028))) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!773950 () List!12141)

(assert (=> d!344774 (= lt!412463 e!773950)))

(declare-fun c!201626 () Bool)

(assert (=> d!344774 (= c!201626 ((_ is Nil!12117) (ite c!201498 lt!412396 r!2028)))))

(assert (=> d!344774 (= (drop!618 (ite c!201498 lt!412396 r!2028) 0) lt!412463)))

(declare-fun b!1206445 () Bool)

(declare-fun e!773951 () Int)

(assert (=> b!1206445 (= e!773951 e!773954)))

(declare-fun c!201625 () Bool)

(assert (=> b!1206445 (= c!201625 (>= 0 call!84261))))

(declare-fun b!1206446 () Bool)

(assert (=> b!1206446 (= e!773951 call!84261)))

(declare-fun bm!84256 () Bool)

(assert (=> bm!84256 (= call!84261 (size!9657 (ite c!201498 lt!412396 r!2028)))))

(declare-fun b!1206447 () Bool)

(assert (=> b!1206447 (= e!773950 Nil!12117)))

(declare-fun b!1206448 () Bool)

(assert (=> b!1206448 (= e!773952 (drop!618 (t!112557 (ite c!201498 lt!412396 r!2028)) (- 0 1)))))

(declare-fun b!1206449 () Bool)

(assert (=> b!1206449 (= e!773953 (= (size!9657 lt!412463) e!773951))))

(declare-fun c!201627 () Bool)

(assert (=> b!1206449 (= c!201627 (<= 0 0))))

(declare-fun b!1206450 () Bool)

(assert (=> b!1206450 (= e!773950 e!773952)))

(declare-fun c!201628 () Bool)

(assert (=> b!1206450 (= c!201628 (<= 0 0))))

(assert (= (and d!344774 c!201626) b!1206447))

(assert (= (and d!344774 (not c!201626)) b!1206450))

(assert (= (and b!1206450 c!201628) b!1206442))

(assert (= (and b!1206450 (not c!201628)) b!1206448))

(assert (= (and d!344774 res!543084) b!1206449))

(assert (= (and b!1206449 c!201627) b!1206446))

(assert (= (and b!1206449 (not c!201627)) b!1206445))

(assert (= (and b!1206445 c!201625) b!1206443))

(assert (= (and b!1206445 (not c!201625)) b!1206444))

(assert (= (or b!1206446 b!1206445 b!1206444) bm!84256))

(declare-fun m!1381633 () Bool)

(assert (=> d!344774 m!1381633))

(declare-fun m!1381635 () Bool)

(assert (=> d!344774 m!1381635))

(declare-fun m!1381637 () Bool)

(assert (=> bm!84256 m!1381637))

(declare-fun m!1381639 () Bool)

(assert (=> b!1206448 m!1381639))

(declare-fun m!1381641 () Bool)

(assert (=> b!1206449 m!1381641))

(assert (=> d!344698 d!344774))

(declare-fun d!344776 () Bool)

(assert (=> d!344776 (= (slice!521 (ite c!201519 r!2028 lt!412396) (ite c!201519 (- 0 call!84234) 0) (ite c!201519 (- (- until!61 1) call!84234) e!773809)) (take!146 (drop!618 (ite c!201519 r!2028 lt!412396) (ite c!201519 (- 0 call!84234) 0)) (- (ite c!201519 (- (- until!61 1) call!84234) e!773809) (ite c!201519 (- 0 call!84234) 0))))))

(declare-fun bs!288465 () Bool)

(assert (= bs!288465 d!344776))

(declare-fun m!1381643 () Bool)

(assert (=> bs!288465 m!1381643))

(assert (=> bs!288465 m!1381643))

(declare-fun m!1381645 () Bool)

(assert (=> bs!288465 m!1381645))

(assert (=> bm!84229 d!344776))

(declare-fun b!1206451 () Bool)

(declare-fun e!773956 () List!12141)

(assert (=> b!1206451 (= e!773956 r!2028)))

(declare-fun lt!412464 () List!12141)

(declare-fun b!1206454 () Bool)

(declare-fun e!773955 () Bool)

(assert (=> b!1206454 (= e!773955 (or (not (= r!2028 Nil!12117)) (= lt!412464 (t!112557 lt!412396))))))

(declare-fun b!1206452 () Bool)

(assert (=> b!1206452 (= e!773956 (Cons!12117 (h!17518 (t!112557 lt!412396)) (++!3139 (t!112557 (t!112557 lt!412396)) r!2028)))))

(declare-fun d!344778 () Bool)

(assert (=> d!344778 e!773955))

(declare-fun res!543085 () Bool)

(assert (=> d!344778 (=> (not res!543085) (not e!773955))))

(assert (=> d!344778 (= res!543085 (= (content!1716 lt!412464) ((_ map or) (content!1716 (t!112557 lt!412396)) (content!1716 r!2028))))))

(assert (=> d!344778 (= lt!412464 e!773956)))

(declare-fun c!201629 () Bool)

(assert (=> d!344778 (= c!201629 ((_ is Nil!12117) (t!112557 lt!412396)))))

(assert (=> d!344778 (= (++!3139 (t!112557 lt!412396) r!2028) lt!412464)))

(declare-fun b!1206453 () Bool)

(declare-fun res!543086 () Bool)

(assert (=> b!1206453 (=> (not res!543086) (not e!773955))))

(assert (=> b!1206453 (= res!543086 (= (size!9657 lt!412464) (+ (size!9657 (t!112557 lt!412396)) (size!9657 r!2028))))))

(assert (= (and d!344778 c!201629) b!1206451))

(assert (= (and d!344778 (not c!201629)) b!1206452))

(assert (= (and d!344778 res!543085) b!1206453))

(assert (= (and b!1206453 res!543086) b!1206454))

(declare-fun m!1381647 () Bool)

(assert (=> b!1206452 m!1381647))

(declare-fun m!1381649 () Bool)

(assert (=> d!344778 m!1381649))

(assert (=> d!344778 m!1381509))

(assert (=> d!344778 m!1381359))

(declare-fun m!1381651 () Bool)

(assert (=> b!1206453 m!1381651))

(assert (=> b!1206453 m!1381253))

(assert (=> b!1206453 m!1381243))

(assert (=> b!1206209 d!344778))

(declare-fun d!344780 () Bool)

(declare-fun c!201630 () Bool)

(assert (=> d!344780 (= c!201630 ((_ is Nil!12117) lt!412431))))

(declare-fun e!773957 () (InoxSet T!22300))

(assert (=> d!344780 (= (content!1716 lt!412431) e!773957)))

(declare-fun b!1206455 () Bool)

(assert (=> b!1206455 (= e!773957 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206456 () Bool)

(assert (=> b!1206456 (= e!773957 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412431) true) (content!1716 (t!112557 lt!412431))))))

(assert (= (and d!344780 c!201630) b!1206455))

(assert (= (and d!344780 (not c!201630)) b!1206456))

(declare-fun m!1381653 () Bool)

(assert (=> b!1206456 m!1381653))

(declare-fun m!1381655 () Bool)

(assert (=> b!1206456 m!1381655))

(assert (=> d!344692 d!344780))

(declare-fun d!344782 () Bool)

(declare-fun c!201631 () Bool)

(assert (=> d!344782 (= c!201631 ((_ is Nil!12117) call!84226))))

(declare-fun e!773958 () (InoxSet T!22300))

(assert (=> d!344782 (= (content!1716 call!84226) e!773958)))

(declare-fun b!1206457 () Bool)

(assert (=> b!1206457 (= e!773958 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206458 () Bool)

(assert (=> b!1206458 (= e!773958 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 call!84226) true) (content!1716 (t!112557 call!84226))))))

(assert (= (and d!344782 c!201631) b!1206457))

(assert (= (and d!344782 (not c!201631)) b!1206458))

(declare-fun m!1381657 () Bool)

(assert (=> b!1206458 m!1381657))

(assert (=> b!1206458 m!1381445))

(assert (=> d!344692 d!344782))

(declare-fun d!344784 () Bool)

(declare-fun c!201632 () Bool)

(assert (=> d!344784 (= c!201632 ((_ is Nil!12117) call!84224))))

(declare-fun e!773959 () (InoxSet T!22300))

(assert (=> d!344784 (= (content!1716 call!84224) e!773959)))

(declare-fun b!1206459 () Bool)

(assert (=> b!1206459 (= e!773959 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206460 () Bool)

(assert (=> b!1206460 (= e!773959 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 call!84224) true) (content!1716 (t!112557 call!84224))))))

(assert (= (and d!344784 c!201632) b!1206459))

(assert (= (and d!344784 (not c!201632)) b!1206460))

(declare-fun m!1381659 () Bool)

(assert (=> b!1206460 m!1381659))

(declare-fun m!1381661 () Bool)

(assert (=> b!1206460 m!1381661))

(assert (=> d!344692 d!344784))

(declare-fun b!1206461 () Bool)

(declare-fun e!773960 () Bool)

(declare-fun tp!342062 () Bool)

(assert (=> b!1206461 (= e!773960 (and tp_is_empty!6127 tp!342062))))

(assert (=> b!1206246 (= tp!342061 e!773960)))

(assert (= (and b!1206246 ((_ is Cons!12117) (t!112557 (t!112557 r!2028)))) b!1206461))

(declare-fun b!1206462 () Bool)

(declare-fun e!773961 () Bool)

(declare-fun tp!342063 () Bool)

(assert (=> b!1206462 (= e!773961 (and tp_is_empty!6127 tp!342063))))

(assert (=> b!1206245 (= tp!342060 e!773961)))

(assert (= (and b!1206245 ((_ is Cons!12117) (t!112557 (t!112557 l!2744)))) b!1206462))

(check-sat (not b!1206283) (not b!1206449) (not b!1206332) (not d!344720) (not b!1206323) (not b!1206315) (not b!1206401) (not b!1206437) (not bm!84251) (not b!1206460) (not b!1206374) (not d!344718) (not b!1206366) (not b!1206435) (not b!1206414) (not d!344748) (not d!344722) (not b!1206335) (not b!1206262) (not b!1206380) (not b!1206318) (not b!1206258) (not b!1206287) (not b!1206319) (not d!344762) (not b!1206322) (not b!1206354) (not d!344724) (not b!1206259) (not b!1206340) (not b!1206266) (not b!1206382) (not b!1206352) (not d!344774) (not d!344772) (not bm!84244) (not b!1206406) (not b!1206264) (not b!1206330) (not b!1206440) (not b!1206337) (not b!1206288) (not b!1206358) (not b!1206434) (not b!1206252) (not b!1206348) (not bm!84243) (not b!1206268) (not b!1206314) (not d!344758) (not b!1206421) (not d!344736) (not b!1206399) (not d!344766) (not b!1206452) (not b!1206461) (not b!1206405) (not b!1206361) (not d!344704) (not b!1206456) (not b!1206256) (not bm!84242) (not b!1206422) (not d!344726) tp_is_empty!6127 (not b!1206417) (not b!1206419) (not bm!84254) (not d!344760) (not b!1206339) (not b!1206253) (not b!1206285) (not b!1206356) (not b!1206250) (not bm!84253) (not b!1206431) (not b!1206415) (not d!344750) (not b!1206462) (not b!1206458) (not d!344778) (not b!1206448) (not b!1206453) (not b!1206248) (not d!344734) (not b!1206365) (not b!1206378) (not b!1206360) (not d!344768) (not b!1206403) (not b!1206439) (not d!344776) (not d!344764) (not b!1206375) (not b!1206430) (not d!344708) (not b!1206349) (not b!1206334) (not bm!84256) (not bm!84255) (not b!1206363))
(check-sat)
(get-model)

(declare-fun d!344872 () Bool)

(declare-fun lt!412497 () Int)

(assert (=> d!344872 (>= lt!412497 0)))

(declare-fun e!774079 () Int)

(assert (=> d!344872 (= lt!412497 e!774079)))

(declare-fun c!201727 () Bool)

(assert (=> d!344872 (= c!201727 ((_ is Nil!12117) (t!112557 lt!412426)))))

(assert (=> d!344872 (= (size!9657 (t!112557 lt!412426)) lt!412497)))

(declare-fun b!1206679 () Bool)

(assert (=> b!1206679 (= e!774079 0)))

(declare-fun b!1206680 () Bool)

(assert (=> b!1206680 (= e!774079 (+ 1 (size!9657 (t!112557 (t!112557 lt!412426)))))))

(assert (= (and d!344872 c!201727) b!1206679))

(assert (= (and d!344872 (not c!201727)) b!1206680))

(declare-fun m!1381893 () Bool)

(assert (=> b!1206680 m!1381893))

(assert (=> b!1206268 d!344872))

(declare-fun d!344874 () Bool)

(declare-fun lt!412498 () Int)

(assert (=> d!344874 (>= lt!412498 0)))

(declare-fun e!774080 () Int)

(assert (=> d!344874 (= lt!412498 e!774080)))

(declare-fun c!201728 () Bool)

(assert (=> d!344874 (= c!201728 ((_ is Nil!12117) (drop!618 l!2744 from!613)))))

(assert (=> d!344874 (= (size!9657 (drop!618 l!2744 from!613)) lt!412498)))

(declare-fun b!1206681 () Bool)

(assert (=> b!1206681 (= e!774080 0)))

(declare-fun b!1206682 () Bool)

(assert (=> b!1206682 (= e!774080 (+ 1 (size!9657 (t!112557 (drop!618 l!2744 from!613)))))))

(assert (= (and d!344874 c!201728) b!1206681))

(assert (= (and d!344874 (not c!201728)) b!1206682))

(declare-fun m!1381895 () Bool)

(assert (=> b!1206682 m!1381895))

(assert (=> b!1206403 d!344874))

(declare-fun d!344876 () Bool)

(declare-fun c!201729 () Bool)

(assert (=> d!344876 (= c!201729 ((_ is Nil!12117) (t!112557 call!84226)))))

(declare-fun e!774081 () (InoxSet T!22300))

(assert (=> d!344876 (= (content!1716 (t!112557 call!84226)) e!774081)))

(declare-fun b!1206683 () Bool)

(assert (=> b!1206683 (= e!774081 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206684 () Bool)

(assert (=> b!1206684 (= e!774081 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (t!112557 call!84226)) true) (content!1716 (t!112557 (t!112557 call!84226)))))))

(assert (= (and d!344876 c!201729) b!1206683))

(assert (= (and d!344876 (not c!201729)) b!1206684))

(declare-fun m!1381897 () Bool)

(assert (=> b!1206684 m!1381897))

(declare-fun m!1381899 () Bool)

(assert (=> b!1206684 m!1381899))

(assert (=> b!1206458 d!344876))

(declare-fun d!344878 () Bool)

(declare-fun lt!412499 () Int)

(assert (=> d!344878 (>= lt!412499 0)))

(declare-fun e!774082 () Int)

(assert (=> d!344878 (= lt!412499 e!774082)))

(declare-fun c!201730 () Bool)

(assert (=> d!344878 (= c!201730 ((_ is Nil!12117) (t!112557 lt!412432)))))

(assert (=> d!344878 (= (size!9657 (t!112557 lt!412432)) lt!412499)))

(declare-fun b!1206685 () Bool)

(assert (=> b!1206685 (= e!774082 0)))

(declare-fun b!1206686 () Bool)

(assert (=> b!1206686 (= e!774082 (+ 1 (size!9657 (t!112557 (t!112557 lt!412432)))))))

(assert (= (and d!344878 c!201730) b!1206685))

(assert (= (and d!344878 (not c!201730)) b!1206686))

(declare-fun m!1381901 () Bool)

(assert (=> b!1206686 m!1381901))

(assert (=> b!1206262 d!344878))

(declare-fun d!344880 () Bool)

(declare-fun lt!412500 () Int)

(assert (=> d!344880 (>= lt!412500 0)))

(declare-fun e!774083 () Int)

(assert (=> d!344880 (= lt!412500 e!774083)))

(declare-fun c!201731 () Bool)

(assert (=> d!344880 (= c!201731 ((_ is Nil!12117) (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))))))

(assert (=> d!344880 (= (size!9657 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))) lt!412500)))

(declare-fun b!1206687 () Bool)

(assert (=> b!1206687 (= e!774083 0)))

(declare-fun b!1206688 () Bool)

(assert (=> b!1206688 (= e!774083 (+ 1 (size!9657 (t!112557 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))))))))

(assert (= (and d!344880 c!201731) b!1206687))

(assert (= (and d!344880 (not c!201731)) b!1206688))

(declare-fun m!1381903 () Bool)

(assert (=> b!1206688 m!1381903))

(assert (=> b!1206337 d!344880))

(declare-fun d!344882 () Bool)

(declare-fun c!201732 () Bool)

(assert (=> d!344882 (= c!201732 ((_ is Nil!12117) lt!412459))))

(declare-fun e!774084 () (InoxSet T!22300))

(assert (=> d!344882 (= (content!1716 lt!412459) e!774084)))

(declare-fun b!1206689 () Bool)

(assert (=> b!1206689 (= e!774084 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206690 () Bool)

(assert (=> b!1206690 (= e!774084 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412459) true) (content!1716 (t!112557 lt!412459))))))

(assert (= (and d!344882 c!201732) b!1206689))

(assert (= (and d!344882 (not c!201732)) b!1206690))

(declare-fun m!1381905 () Bool)

(assert (=> b!1206690 m!1381905))

(declare-fun m!1381907 () Bool)

(assert (=> b!1206690 m!1381907))

(assert (=> d!344766 d!344882))

(declare-fun d!344884 () Bool)

(declare-fun c!201733 () Bool)

(assert (=> d!344884 (= c!201733 ((_ is Nil!12117) (drop!618 lt!412401 from!613)))))

(declare-fun e!774085 () (InoxSet T!22300))

(assert (=> d!344884 (= (content!1716 (drop!618 lt!412401 from!613)) e!774085)))

(declare-fun b!1206691 () Bool)

(assert (=> b!1206691 (= e!774085 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206692 () Bool)

(assert (=> b!1206692 (= e!774085 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (drop!618 lt!412401 from!613)) true) (content!1716 (t!112557 (drop!618 lt!412401 from!613)))))))

(assert (= (and d!344884 c!201733) b!1206691))

(assert (= (and d!344884 (not c!201733)) b!1206692))

(declare-fun m!1381909 () Bool)

(assert (=> b!1206692 m!1381909))

(declare-fun m!1381911 () Bool)

(assert (=> b!1206692 m!1381911))

(assert (=> d!344766 d!344884))

(declare-fun d!344886 () Bool)

(declare-fun lt!412501 () Int)

(assert (=> d!344886 (>= lt!412501 0)))

(declare-fun e!774086 () Int)

(assert (=> d!344886 (= lt!412501 e!774086)))

(declare-fun c!201734 () Bool)

(assert (=> d!344886 (= c!201734 ((_ is Nil!12117) (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))))))

(assert (=> d!344886 (= (size!9657 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))) lt!412501)))

(declare-fun b!1206693 () Bool)

(assert (=> b!1206693 (= e!774086 0)))

(declare-fun b!1206694 () Bool)

(assert (=> b!1206694 (= e!774086 (+ 1 (size!9657 (t!112557 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))))))))

(assert (= (and d!344886 c!201734) b!1206693))

(assert (= (and d!344886 (not c!201734)) b!1206694))

(declare-fun m!1381913 () Bool)

(assert (=> b!1206694 m!1381913))

(assert (=> b!1206363 d!344886))

(declare-fun d!344888 () Bool)

(declare-fun c!201735 () Bool)

(assert (=> d!344888 (= c!201735 ((_ is Nil!12117) lt!412444))))

(declare-fun e!774087 () (InoxSet T!22300))

(assert (=> d!344888 (= (content!1716 lt!412444) e!774087)))

(declare-fun b!1206695 () Bool)

(assert (=> b!1206695 (= e!774087 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206696 () Bool)

(assert (=> b!1206696 (= e!774087 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412444) true) (content!1716 (t!112557 lt!412444))))))

(assert (= (and d!344888 c!201735) b!1206695))

(assert (= (and d!344888 (not c!201735)) b!1206696))

(declare-fun m!1381915 () Bool)

(assert (=> b!1206696 m!1381915))

(declare-fun m!1381917 () Bool)

(assert (=> b!1206696 m!1381917))

(assert (=> d!344718 d!344888))

(declare-fun d!344890 () Bool)

(declare-fun c!201736 () Bool)

(assert (=> d!344890 (= c!201736 ((_ is Nil!12117) (drop!618 lt!412403 0)))))

(declare-fun e!774088 () (InoxSet T!22300))

(assert (=> d!344890 (= (content!1716 (drop!618 lt!412403 0)) e!774088)))

(declare-fun b!1206697 () Bool)

(assert (=> b!1206697 (= e!774088 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206698 () Bool)

(assert (=> b!1206698 (= e!774088 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (drop!618 lt!412403 0)) true) (content!1716 (t!112557 (drop!618 lt!412403 0)))))))

(assert (= (and d!344890 c!201736) b!1206697))

(assert (= (and d!344890 (not c!201736)) b!1206698))

(declare-fun m!1381919 () Bool)

(assert (=> b!1206698 m!1381919))

(declare-fun m!1381921 () Bool)

(assert (=> b!1206698 m!1381921))

(assert (=> d!344718 d!344890))

(declare-fun d!344892 () Bool)

(declare-fun lt!412502 () Int)

(assert (=> d!344892 (>= lt!412502 0)))

(declare-fun e!774089 () Int)

(assert (=> d!344892 (= lt!412502 e!774089)))

(declare-fun c!201737 () Bool)

(assert (=> d!344892 (= c!201737 ((_ is Nil!12117) lt!412401))))

(assert (=> d!344892 (= (size!9657 lt!412401) lt!412502)))

(declare-fun b!1206699 () Bool)

(assert (=> b!1206699 (= e!774089 0)))

(declare-fun b!1206700 () Bool)

(assert (=> b!1206700 (= e!774089 (+ 1 (size!9657 (t!112557 lt!412401))))))

(assert (= (and d!344892 c!201737) b!1206699))

(assert (= (and d!344892 (not c!201737)) b!1206700))

(declare-fun m!1381923 () Bool)

(assert (=> b!1206700 m!1381923))

(assert (=> bm!84255 d!344892))

(declare-fun d!344894 () Bool)

(declare-fun lt!412503 () Int)

(assert (=> d!344894 (>= lt!412503 0)))

(declare-fun e!774090 () Int)

(assert (=> d!344894 (= lt!412503 e!774090)))

(declare-fun c!201738 () Bool)

(assert (=> d!344894 (= c!201738 ((_ is Nil!12117) (t!112557 (t!112557 r!2028))))))

(assert (=> d!344894 (= (size!9657 (t!112557 (t!112557 r!2028))) lt!412503)))

(declare-fun b!1206701 () Bool)

(assert (=> b!1206701 (= e!774090 0)))

(declare-fun b!1206702 () Bool)

(assert (=> b!1206702 (= e!774090 (+ 1 (size!9657 (t!112557 (t!112557 (t!112557 r!2028))))))))

(assert (= (and d!344894 c!201738) b!1206701))

(assert (= (and d!344894 (not c!201738)) b!1206702))

(declare-fun m!1381925 () Bool)

(assert (=> b!1206702 m!1381925))

(assert (=> b!1206434 d!344894))

(declare-fun d!344896 () Bool)

(declare-fun lt!412504 () Int)

(assert (=> d!344896 (>= lt!412504 0)))

(declare-fun e!774091 () Int)

(assert (=> d!344896 (= lt!412504 e!774091)))

(declare-fun c!201739 () Bool)

(assert (=> d!344896 (= c!201739 ((_ is Nil!12117) lt!412403))))

(assert (=> d!344896 (= (size!9657 lt!412403) lt!412504)))

(declare-fun b!1206703 () Bool)

(assert (=> b!1206703 (= e!774091 0)))

(declare-fun b!1206704 () Bool)

(assert (=> b!1206704 (= e!774091 (+ 1 (size!9657 (t!112557 lt!412403))))))

(assert (= (and d!344896 c!201739) b!1206703))

(assert (= (and d!344896 (not c!201739)) b!1206704))

(declare-fun m!1381927 () Bool)

(assert (=> b!1206704 m!1381927))

(assert (=> bm!84242 d!344896))

(declare-fun d!344898 () Bool)

(declare-fun c!201740 () Bool)

(assert (=> d!344898 (= c!201740 ((_ is Nil!12117) lt!412462))))

(declare-fun e!774092 () (InoxSet T!22300))

(assert (=> d!344898 (= (content!1716 lt!412462) e!774092)))

(declare-fun b!1206705 () Bool)

(assert (=> b!1206705 (= e!774092 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206706 () Bool)

(assert (=> b!1206706 (= e!774092 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412462) true) (content!1716 (t!112557 lt!412462))))))

(assert (= (and d!344898 c!201740) b!1206705))

(assert (= (and d!344898 (not c!201740)) b!1206706))

(declare-fun m!1381929 () Bool)

(assert (=> b!1206706 m!1381929))

(declare-fun m!1381931 () Bool)

(assert (=> b!1206706 m!1381931))

(assert (=> d!344772 d!344898))

(declare-fun d!344900 () Bool)

(declare-fun c!201741 () Bool)

(assert (=> d!344900 (= c!201741 ((_ is Nil!12117) (drop!618 (ite c!201498 lt!412396 r!2028) 0)))))

(declare-fun e!774093 () (InoxSet T!22300))

(assert (=> d!344900 (= (content!1716 (drop!618 (ite c!201498 lt!412396 r!2028) 0)) e!774093)))

(declare-fun b!1206707 () Bool)

(assert (=> b!1206707 (= e!774093 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206708 () Bool)

(assert (=> b!1206708 (= e!774093 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (drop!618 (ite c!201498 lt!412396 r!2028) 0)) true) (content!1716 (t!112557 (drop!618 (ite c!201498 lt!412396 r!2028) 0)))))))

(assert (= (and d!344900 c!201741) b!1206707))

(assert (= (and d!344900 (not c!201741)) b!1206708))

(declare-fun m!1381933 () Bool)

(assert (=> b!1206708 m!1381933))

(declare-fun m!1381935 () Bool)

(assert (=> b!1206708 m!1381935))

(assert (=> d!344772 d!344900))

(declare-fun e!774097 () List!12141)

(declare-fun b!1206709 () Bool)

(assert (=> b!1206709 (= e!774097 (Cons!12117 (h!17518 (drop!618 r!2028 0)) (take!146 (t!112557 (drop!618 r!2028 0)) (- (- (- (- until!61 1) call!84234) 0) 1))))))

(declare-fun b!1206710 () Bool)

(declare-fun e!774095 () Int)

(assert (=> b!1206710 (= e!774095 (- (- (- until!61 1) call!84234) 0))))

(declare-fun d!344902 () Bool)

(declare-fun e!774096 () Bool)

(assert (=> d!344902 e!774096))

(declare-fun res!543113 () Bool)

(assert (=> d!344902 (=> (not res!543113) (not e!774096))))

(declare-fun lt!412505 () List!12141)

(assert (=> d!344902 (= res!543113 (= ((_ map implies) (content!1716 lt!412505) (content!1716 (drop!618 r!2028 0))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!344902 (= lt!412505 e!774097)))

(declare-fun c!201743 () Bool)

(assert (=> d!344902 (= c!201743 (or ((_ is Nil!12117) (drop!618 r!2028 0)) (<= (- (- (- until!61 1) call!84234) 0) 0)))))

(assert (=> d!344902 (= (take!146 (drop!618 r!2028 0) (- (- (- until!61 1) call!84234) 0)) lt!412505)))

(declare-fun b!1206711 () Bool)

(declare-fun e!774094 () Int)

(assert (=> b!1206711 (= e!774094 e!774095)))

(declare-fun c!201742 () Bool)

(assert (=> b!1206711 (= c!201742 (>= (- (- (- until!61 1) call!84234) 0) (size!9657 (drop!618 r!2028 0))))))

(declare-fun b!1206712 () Bool)

(assert (=> b!1206712 (= e!774094 0)))

(declare-fun b!1206713 () Bool)

(assert (=> b!1206713 (= e!774096 (= (size!9657 lt!412505) e!774094))))

(declare-fun c!201744 () Bool)

(assert (=> b!1206713 (= c!201744 (<= (- (- (- until!61 1) call!84234) 0) 0))))

(declare-fun b!1206714 () Bool)

(assert (=> b!1206714 (= e!774095 (size!9657 (drop!618 r!2028 0)))))

(declare-fun b!1206715 () Bool)

(assert (=> b!1206715 (= e!774097 Nil!12117)))

(assert (= (and d!344902 c!201743) b!1206715))

(assert (= (and d!344902 (not c!201743)) b!1206709))

(assert (= (and d!344902 res!543113) b!1206713))

(assert (= (and b!1206713 c!201744) b!1206712))

(assert (= (and b!1206713 (not c!201744)) b!1206711))

(assert (= (and b!1206711 c!201742) b!1206714))

(assert (= (and b!1206711 (not c!201742)) b!1206710))

(assert (=> b!1206714 m!1381491))

(declare-fun m!1381937 () Bool)

(assert (=> b!1206714 m!1381937))

(declare-fun m!1381939 () Bool)

(assert (=> d!344902 m!1381939))

(assert (=> d!344902 m!1381491))

(declare-fun m!1381941 () Bool)

(assert (=> d!344902 m!1381941))

(assert (=> b!1206711 m!1381491))

(assert (=> b!1206711 m!1381937))

(declare-fun m!1381943 () Bool)

(assert (=> b!1206709 m!1381943))

(declare-fun m!1381945 () Bool)

(assert (=> b!1206713 m!1381945))

(assert (=> d!344724 d!344902))

(declare-fun b!1206716 () Bool)

(declare-fun e!774100 () List!12141)

(assert (=> b!1206716 (= e!774100 r!2028)))

(declare-fun b!1206717 () Bool)

(declare-fun e!774102 () Int)

(assert (=> b!1206717 (= e!774102 0)))

(declare-fun b!1206718 () Bool)

(declare-fun call!84279 () Int)

(assert (=> b!1206718 (= e!774102 (- call!84279 0))))

(declare-fun d!344904 () Bool)

(declare-fun e!774101 () Bool)

(assert (=> d!344904 e!774101))

(declare-fun res!543114 () Bool)

(assert (=> d!344904 (=> (not res!543114) (not e!774101))))

(declare-fun lt!412506 () List!12141)

(assert (=> d!344904 (= res!543114 (= ((_ map implies) (content!1716 lt!412506) (content!1716 r!2028)) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!774098 () List!12141)

(assert (=> d!344904 (= lt!412506 e!774098)))

(declare-fun c!201746 () Bool)

(assert (=> d!344904 (= c!201746 ((_ is Nil!12117) r!2028))))

(assert (=> d!344904 (= (drop!618 r!2028 0) lt!412506)))

(declare-fun b!1206719 () Bool)

(declare-fun e!774099 () Int)

(assert (=> b!1206719 (= e!774099 e!774102)))

(declare-fun c!201745 () Bool)

(assert (=> b!1206719 (= c!201745 (>= 0 call!84279))))

(declare-fun b!1206720 () Bool)

(assert (=> b!1206720 (= e!774099 call!84279)))

(declare-fun bm!84274 () Bool)

(assert (=> bm!84274 (= call!84279 (size!9657 r!2028))))

(declare-fun b!1206721 () Bool)

(assert (=> b!1206721 (= e!774098 Nil!12117)))

(declare-fun b!1206722 () Bool)

(assert (=> b!1206722 (= e!774100 (drop!618 (t!112557 r!2028) (- 0 1)))))

(declare-fun b!1206723 () Bool)

(assert (=> b!1206723 (= e!774101 (= (size!9657 lt!412506) e!774099))))

(declare-fun c!201747 () Bool)

(assert (=> b!1206723 (= c!201747 (<= 0 0))))

(declare-fun b!1206724 () Bool)

(assert (=> b!1206724 (= e!774098 e!774100)))

(declare-fun c!201748 () Bool)

(assert (=> b!1206724 (= c!201748 (<= 0 0))))

(assert (= (and d!344904 c!201746) b!1206721))

(assert (= (and d!344904 (not c!201746)) b!1206724))

(assert (= (and b!1206724 c!201748) b!1206716))

(assert (= (and b!1206724 (not c!201748)) b!1206722))

(assert (= (and d!344904 res!543114) b!1206723))

(assert (= (and b!1206723 c!201747) b!1206720))

(assert (= (and b!1206723 (not c!201747)) b!1206719))

(assert (= (and b!1206719 c!201745) b!1206717))

(assert (= (and b!1206719 (not c!201745)) b!1206718))

(assert (= (or b!1206720 b!1206719 b!1206718) bm!84274))

(declare-fun m!1381947 () Bool)

(assert (=> d!344904 m!1381947))

(assert (=> d!344904 m!1381359))

(assert (=> bm!84274 m!1381243))

(declare-fun m!1381949 () Bool)

(assert (=> b!1206722 m!1381949))

(declare-fun m!1381951 () Bool)

(assert (=> b!1206723 m!1381951))

(assert (=> d!344724 d!344904))

(declare-fun d!344906 () Bool)

(declare-fun c!201749 () Bool)

(assert (=> d!344906 (= c!201749 ((_ is Nil!12117) (t!112557 lt!412426)))))

(declare-fun e!774103 () (InoxSet T!22300))

(assert (=> d!344906 (= (content!1716 (t!112557 lt!412426)) e!774103)))

(declare-fun b!1206725 () Bool)

(assert (=> b!1206725 (= e!774103 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206726 () Bool)

(assert (=> b!1206726 (= e!774103 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (t!112557 lt!412426)) true) (content!1716 (t!112557 (t!112557 lt!412426)))))))

(assert (= (and d!344906 c!201749) b!1206725))

(assert (= (and d!344906 (not c!201749)) b!1206726))

(declare-fun m!1381953 () Bool)

(assert (=> b!1206726 m!1381953))

(declare-fun m!1381955 () Bool)

(assert (=> b!1206726 m!1381955))

(assert (=> b!1206330 d!344906))

(declare-fun d!344908 () Bool)

(declare-fun c!201750 () Bool)

(assert (=> d!344908 (= c!201750 ((_ is Nil!12117) (t!112557 call!84224)))))

(declare-fun e!774104 () (InoxSet T!22300))

(assert (=> d!344908 (= (content!1716 (t!112557 call!84224)) e!774104)))

(declare-fun b!1206727 () Bool)

(assert (=> b!1206727 (= e!774104 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206728 () Bool)

(assert (=> b!1206728 (= e!774104 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (t!112557 call!84224)) true) (content!1716 (t!112557 (t!112557 call!84224)))))))

(assert (= (and d!344908 c!201750) b!1206727))

(assert (= (and d!344908 (not c!201750)) b!1206728))

(declare-fun m!1381957 () Bool)

(assert (=> b!1206728 m!1381957))

(declare-fun m!1381959 () Bool)

(assert (=> b!1206728 m!1381959))

(assert (=> b!1206460 d!344908))

(declare-fun d!344910 () Bool)

(declare-fun lt!412507 () Int)

(assert (=> d!344910 (>= lt!412507 0)))

(declare-fun e!774105 () Int)

(assert (=> d!344910 (= lt!412507 e!774105)))

(declare-fun c!201751 () Bool)

(assert (=> d!344910 (= c!201751 ((_ is Nil!12117) (t!112557 call!84224)))))

(assert (=> d!344910 (= (size!9657 (t!112557 call!84224)) lt!412507)))

(declare-fun b!1206729 () Bool)

(assert (=> b!1206729 (= e!774105 0)))

(declare-fun b!1206730 () Bool)

(assert (=> b!1206730 (= e!774105 (+ 1 (size!9657 (t!112557 (t!112557 call!84224)))))))

(assert (= (and d!344910 c!201751) b!1206729))

(assert (= (and d!344910 (not c!201751)) b!1206730))

(declare-fun m!1381961 () Bool)

(assert (=> b!1206730 m!1381961))

(assert (=> b!1206356 d!344910))

(declare-fun d!344912 () Bool)

(declare-fun lt!412508 () Int)

(assert (=> d!344912 (>= lt!412508 0)))

(declare-fun e!774106 () Int)

(assert (=> d!344912 (= lt!412508 e!774106)))

(declare-fun c!201752 () Bool)

(assert (=> d!344912 (= c!201752 ((_ is Nil!12117) lt!412444))))

(assert (=> d!344912 (= (size!9657 lt!412444) lt!412508)))

(declare-fun b!1206731 () Bool)

(assert (=> b!1206731 (= e!774106 0)))

(declare-fun b!1206732 () Bool)

(assert (=> b!1206732 (= e!774106 (+ 1 (size!9657 (t!112557 lt!412444))))))

(assert (= (and d!344912 c!201752) b!1206731))

(assert (= (and d!344912 (not c!201752)) b!1206732))

(declare-fun m!1381963 () Bool)

(assert (=> b!1206732 m!1381963))

(assert (=> b!1206287 d!344912))

(declare-fun d!344914 () Bool)

(declare-fun lt!412509 () Int)

(assert (=> d!344914 (>= lt!412509 0)))

(declare-fun e!774107 () Int)

(assert (=> d!344914 (= lt!412509 e!774107)))

(declare-fun c!201753 () Bool)

(assert (=> d!344914 (= c!201753 ((_ is Nil!12117) lt!412458))))

(assert (=> d!344914 (= (size!9657 lt!412458) lt!412509)))

(declare-fun b!1206733 () Bool)

(assert (=> b!1206733 (= e!774107 0)))

(declare-fun b!1206734 () Bool)

(assert (=> b!1206734 (= e!774107 (+ 1 (size!9657 (t!112557 lt!412458))))))

(assert (= (and d!344914 c!201753) b!1206733))

(assert (= (and d!344914 (not c!201753)) b!1206734))

(declare-fun m!1381965 () Bool)

(assert (=> b!1206734 m!1381965))

(assert (=> b!1206415 d!344914))

(declare-fun d!344916 () Bool)

(declare-fun lt!412510 () Int)

(assert (=> d!344916 (>= lt!412510 0)))

(declare-fun e!774108 () Int)

(assert (=> d!344916 (= lt!412510 e!774108)))

(declare-fun c!201754 () Bool)

(assert (=> d!344916 (= c!201754 ((_ is Nil!12117) (drop!618 lt!412401 from!613)))))

(assert (=> d!344916 (= (size!9657 (drop!618 lt!412401 from!613)) lt!412510)))

(declare-fun b!1206735 () Bool)

(assert (=> b!1206735 (= e!774108 0)))

(declare-fun b!1206736 () Bool)

(assert (=> b!1206736 (= e!774108 (+ 1 (size!9657 (t!112557 (drop!618 lt!412401 from!613)))))))

(assert (= (and d!344916 c!201754) b!1206735))

(assert (= (and d!344916 (not c!201754)) b!1206736))

(declare-fun m!1381967 () Bool)

(assert (=> b!1206736 m!1381967))

(assert (=> b!1206419 d!344916))

(declare-fun b!1206737 () Bool)

(declare-fun e!774112 () List!12141)

(assert (=> b!1206737 (= e!774112 (Cons!12117 (h!17518 (t!112557 (drop!618 lt!412403 0))) (take!146 (t!112557 (t!112557 (drop!618 lt!412403 0))) (- (- (- (- until!61 1) 0) 1) 1))))))

(declare-fun b!1206738 () Bool)

(declare-fun e!774110 () Int)

(assert (=> b!1206738 (= e!774110 (- (- (- until!61 1) 0) 1))))

(declare-fun d!344918 () Bool)

(declare-fun e!774111 () Bool)

(assert (=> d!344918 e!774111))

(declare-fun res!543115 () Bool)

(assert (=> d!344918 (=> (not res!543115) (not e!774111))))

(declare-fun lt!412511 () List!12141)

(assert (=> d!344918 (= res!543115 (= ((_ map implies) (content!1716 lt!412511) (content!1716 (t!112557 (drop!618 lt!412403 0)))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!344918 (= lt!412511 e!774112)))

(declare-fun c!201756 () Bool)

(assert (=> d!344918 (= c!201756 (or ((_ is Nil!12117) (t!112557 (drop!618 lt!412403 0))) (<= (- (- (- until!61 1) 0) 1) 0)))))

(assert (=> d!344918 (= (take!146 (t!112557 (drop!618 lt!412403 0)) (- (- (- until!61 1) 0) 1)) lt!412511)))

(declare-fun b!1206739 () Bool)

(declare-fun e!774109 () Int)

(assert (=> b!1206739 (= e!774109 e!774110)))

(declare-fun c!201755 () Bool)

(assert (=> b!1206739 (= c!201755 (>= (- (- (- until!61 1) 0) 1) (size!9657 (t!112557 (drop!618 lt!412403 0)))))))

(declare-fun b!1206740 () Bool)

(assert (=> b!1206740 (= e!774109 0)))

(declare-fun b!1206741 () Bool)

(assert (=> b!1206741 (= e!774111 (= (size!9657 lt!412511) e!774109))))

(declare-fun c!201757 () Bool)

(assert (=> b!1206741 (= c!201757 (<= (- (- (- until!61 1) 0) 1) 0))))

(declare-fun b!1206742 () Bool)

(assert (=> b!1206742 (= e!774110 (size!9657 (t!112557 (drop!618 lt!412403 0))))))

(declare-fun b!1206743 () Bool)

(assert (=> b!1206743 (= e!774112 Nil!12117)))

(assert (= (and d!344918 c!201756) b!1206743))

(assert (= (and d!344918 (not c!201756)) b!1206737))

(assert (= (and d!344918 res!543115) b!1206741))

(assert (= (and b!1206741 c!201757) b!1206740))

(assert (= (and b!1206741 (not c!201757)) b!1206739))

(assert (= (and b!1206739 c!201755) b!1206742))

(assert (= (and b!1206739 (not c!201755)) b!1206738))

(declare-fun m!1381969 () Bool)

(assert (=> b!1206742 m!1381969))

(declare-fun m!1381971 () Bool)

(assert (=> d!344918 m!1381971))

(assert (=> d!344918 m!1381921))

(assert (=> b!1206739 m!1381969))

(declare-fun m!1381973 () Bool)

(assert (=> b!1206737 m!1381973))

(declare-fun m!1381975 () Bool)

(assert (=> b!1206741 m!1381975))

(assert (=> b!1206283 d!344918))

(declare-fun d!344920 () Bool)

(declare-fun lt!412512 () Int)

(assert (=> d!344920 (>= lt!412512 0)))

(declare-fun e!774113 () Int)

(assert (=> d!344920 (= lt!412512 e!774113)))

(declare-fun c!201758 () Bool)

(assert (=> d!344920 (= c!201758 ((_ is Nil!12117) lt!412448))))

(assert (=> d!344920 (= (size!9657 lt!412448) lt!412512)))

(declare-fun b!1206744 () Bool)

(assert (=> b!1206744 (= e!774113 0)))

(declare-fun b!1206745 () Bool)

(assert (=> b!1206745 (= e!774113 (+ 1 (size!9657 (t!112557 lt!412448))))))

(assert (= (and d!344920 c!201758) b!1206744))

(assert (= (and d!344920 (not c!201758)) b!1206745))

(declare-fun m!1381977 () Bool)

(assert (=> b!1206745 m!1381977))

(assert (=> b!1206319 d!344920))

(declare-fun d!344922 () Bool)

(declare-fun lt!412513 () Int)

(assert (=> d!344922 (>= lt!412513 0)))

(declare-fun e!774114 () Int)

(assert (=> d!344922 (= lt!412513 e!774114)))

(declare-fun c!201759 () Bool)

(assert (=> d!344922 (= c!201759 ((_ is Nil!12117) call!84233))))

(assert (=> d!344922 (= (size!9657 call!84233) lt!412513)))

(declare-fun b!1206746 () Bool)

(assert (=> b!1206746 (= e!774114 0)))

(declare-fun b!1206747 () Bool)

(assert (=> b!1206747 (= e!774114 (+ 1 (size!9657 (t!112557 call!84233))))))

(assert (= (and d!344922 c!201759) b!1206746))

(assert (= (and d!344922 (not c!201759)) b!1206747))

(declare-fun m!1381979 () Bool)

(assert (=> b!1206747 m!1381979))

(assert (=> b!1206319 d!344922))

(declare-fun d!344924 () Bool)

(declare-fun lt!412514 () Int)

(assert (=> d!344924 (>= lt!412514 0)))

(declare-fun e!774115 () Int)

(assert (=> d!344924 (= lt!412514 e!774115)))

(declare-fun c!201760 () Bool)

(assert (=> d!344924 (= c!201760 ((_ is Nil!12117) (slice!521 r!2028 0 (- (- until!61 1) call!84234))))))

(assert (=> d!344924 (= (size!9657 (slice!521 r!2028 0 (- (- until!61 1) call!84234))) lt!412514)))

(declare-fun b!1206748 () Bool)

(assert (=> b!1206748 (= e!774115 0)))

(declare-fun b!1206749 () Bool)

(assert (=> b!1206749 (= e!774115 (+ 1 (size!9657 (t!112557 (slice!521 r!2028 0 (- (- until!61 1) call!84234))))))))

(assert (= (and d!344924 c!201760) b!1206748))

(assert (= (and d!344924 (not c!201760)) b!1206749))

(declare-fun m!1381981 () Bool)

(assert (=> b!1206749 m!1381981))

(assert (=> b!1206319 d!344924))

(declare-fun d!344926 () Bool)

(declare-fun c!201761 () Bool)

(assert (=> d!344926 (= c!201761 ((_ is Nil!12117) (t!112557 lt!412432)))))

(declare-fun e!774116 () (InoxSet T!22300))

(assert (=> d!344926 (= (content!1716 (t!112557 lt!412432)) e!774116)))

(declare-fun b!1206750 () Bool)

(assert (=> b!1206750 (= e!774116 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206751 () Bool)

(assert (=> b!1206751 (= e!774116 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (t!112557 lt!412432)) true) (content!1716 (t!112557 (t!112557 lt!412432)))))))

(assert (= (and d!344926 c!201761) b!1206750))

(assert (= (and d!344926 (not c!201761)) b!1206751))

(declare-fun m!1381983 () Bool)

(assert (=> b!1206751 m!1381983))

(declare-fun m!1381985 () Bool)

(assert (=> b!1206751 m!1381985))

(assert (=> b!1206378 d!344926))

(declare-fun d!344928 () Bool)

(declare-fun lt!412515 () Int)

(assert (=> d!344928 (>= lt!412515 0)))

(declare-fun e!774117 () Int)

(assert (=> d!344928 (= lt!412515 e!774117)))

(declare-fun c!201762 () Bool)

(assert (=> d!344928 (= c!201762 ((_ is Nil!12117) (ite c!201498 lt!412396 r!2028)))))

(assert (=> d!344928 (= (size!9657 (ite c!201498 lt!412396 r!2028)) lt!412515)))

(declare-fun b!1206752 () Bool)

(assert (=> b!1206752 (= e!774117 0)))

(declare-fun b!1206753 () Bool)

(assert (=> b!1206753 (= e!774117 (+ 1 (size!9657 (t!112557 (ite c!201498 lt!412396 r!2028)))))))

(assert (= (and d!344928 c!201762) b!1206752))

(assert (= (and d!344928 (not c!201762)) b!1206753))

(declare-fun m!1381987 () Bool)

(assert (=> b!1206753 m!1381987))

(assert (=> bm!84256 d!344928))

(declare-fun d!344930 () Bool)

(declare-fun lt!412516 () Int)

(assert (=> d!344930 (>= lt!412516 0)))

(declare-fun e!774118 () Int)

(assert (=> d!344930 (= lt!412516 e!774118)))

(declare-fun c!201763 () Bool)

(assert (=> d!344930 (= c!201763 ((_ is Nil!12117) lt!412456))))

(assert (=> d!344930 (= (size!9657 lt!412456) lt!412516)))

(declare-fun b!1206754 () Bool)

(assert (=> b!1206754 (= e!774118 0)))

(declare-fun b!1206755 () Bool)

(assert (=> b!1206755 (= e!774118 (+ 1 (size!9657 (t!112557 lt!412456))))))

(assert (= (and d!344930 c!201763) b!1206754))

(assert (= (and d!344930 (not c!201763)) b!1206755))

(declare-fun m!1381989 () Bool)

(assert (=> b!1206755 m!1381989))

(assert (=> b!1206375 d!344930))

(declare-fun d!344932 () Bool)

(declare-fun c!201764 () Bool)

(assert (=> d!344932 (= c!201764 ((_ is Nil!12117) lt!412458))))

(declare-fun e!774119 () (InoxSet T!22300))

(assert (=> d!344932 (= (content!1716 lt!412458) e!774119)))

(declare-fun b!1206756 () Bool)

(assert (=> b!1206756 (= e!774119 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206757 () Bool)

(assert (=> b!1206757 (= e!774119 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412458) true) (content!1716 (t!112557 lt!412458))))))

(assert (= (and d!344932 c!201764) b!1206756))

(assert (= (and d!344932 (not c!201764)) b!1206757))

(declare-fun m!1381991 () Bool)

(assert (=> b!1206757 m!1381991))

(declare-fun m!1381993 () Bool)

(assert (=> b!1206757 m!1381993))

(assert (=> d!344764 d!344932))

(assert (=> d!344764 d!344746))

(declare-fun d!344934 () Bool)

(declare-fun lt!412517 () Int)

(assert (=> d!344934 (>= lt!412517 0)))

(declare-fun e!774120 () Int)

(assert (=> d!344934 (= lt!412517 e!774120)))

(declare-fun c!201765 () Bool)

(assert (=> d!344934 (= c!201765 ((_ is Nil!12117) (t!112557 call!84223)))))

(assert (=> d!344934 (= (size!9657 (t!112557 call!84223)) lt!412517)))

(declare-fun b!1206758 () Bool)

(assert (=> b!1206758 (= e!774120 0)))

(declare-fun b!1206759 () Bool)

(assert (=> b!1206759 (= e!774120 (+ 1 (size!9657 (t!112557 (t!112557 call!84223)))))))

(assert (= (and d!344934 c!201765) b!1206758))

(assert (= (and d!344934 (not c!201765)) b!1206759))

(declare-fun m!1381995 () Bool)

(assert (=> b!1206759 m!1381995))

(assert (=> b!1206266 d!344934))

(declare-fun d!344936 () Bool)

(declare-fun c!201766 () Bool)

(assert (=> d!344936 (= c!201766 ((_ is Nil!12117) lt!412451))))

(declare-fun e!774121 () (InoxSet T!22300))

(assert (=> d!344936 (= (content!1716 lt!412451) e!774121)))

(declare-fun b!1206760 () Bool)

(assert (=> b!1206760 (= e!774121 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206761 () Bool)

(assert (=> b!1206761 (= e!774121 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412451) true) (content!1716 (t!112557 lt!412451))))))

(assert (= (and d!344936 c!201766) b!1206760))

(assert (= (and d!344936 (not c!201766)) b!1206761))

(declare-fun m!1381997 () Bool)

(assert (=> b!1206761 m!1381997))

(declare-fun m!1381999 () Bool)

(assert (=> b!1206761 m!1381999))

(assert (=> d!344736 d!344936))

(declare-fun c!201767 () Bool)

(declare-fun d!344938 () Bool)

(assert (=> d!344938 (= c!201767 ((_ is Nil!12117) (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))))))

(declare-fun e!774122 () (InoxSet T!22300))

(assert (=> d!344938 (= (content!1716 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))) e!774122)))

(declare-fun b!1206762 () Bool)

(assert (=> b!1206762 (= e!774122 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206763 () Bool)

(assert (=> b!1206763 (= e!774122 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))) true) (content!1716 (t!112557 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))))))))

(assert (= (and d!344938 c!201767) b!1206762))

(assert (= (and d!344938 (not c!201767)) b!1206763))

(declare-fun m!1382001 () Bool)

(assert (=> b!1206763 m!1382001))

(declare-fun m!1382003 () Bool)

(assert (=> b!1206763 m!1382003))

(assert (=> d!344736 d!344938))

(declare-fun d!344940 () Bool)

(declare-fun lt!412518 () Int)

(assert (=> d!344940 (>= lt!412518 0)))

(declare-fun e!774123 () Int)

(assert (=> d!344940 (= lt!412518 e!774123)))

(declare-fun c!201768 () Bool)

(assert (=> d!344940 (= c!201768 ((_ is Nil!12117) lt!412451))))

(assert (=> d!344940 (= (size!9657 lt!412451) lt!412518)))

(declare-fun b!1206764 () Bool)

(assert (=> b!1206764 (= e!774123 0)))

(declare-fun b!1206765 () Bool)

(assert (=> b!1206765 (= e!774123 (+ 1 (size!9657 (t!112557 lt!412451))))))

(assert (= (and d!344940 c!201768) b!1206764))

(assert (= (and d!344940 (not c!201768)) b!1206765))

(declare-fun m!1382005 () Bool)

(assert (=> b!1206765 m!1382005))

(assert (=> b!1206349 d!344940))

(declare-fun d!344942 () Bool)

(declare-fun c!201769 () Bool)

(assert (=> d!344942 (= c!201769 ((_ is Nil!12117) (t!112557 lt!412427)))))

(declare-fun e!774124 () (InoxSet T!22300))

(assert (=> d!344942 (= (content!1716 (t!112557 lt!412427)) e!774124)))

(declare-fun b!1206766 () Bool)

(assert (=> b!1206766 (= e!774124 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206767 () Bool)

(assert (=> b!1206767 (= e!774124 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (t!112557 lt!412427)) true) (content!1716 (t!112557 (t!112557 lt!412427)))))))

(assert (= (and d!344942 c!201769) b!1206766))

(assert (= (and d!344942 (not c!201769)) b!1206767))

(declare-fun m!1382007 () Bool)

(assert (=> b!1206767 m!1382007))

(declare-fun m!1382009 () Bool)

(assert (=> b!1206767 m!1382009))

(assert (=> b!1206358 d!344942))

(declare-fun d!344944 () Bool)

(declare-fun c!201770 () Bool)

(assert (=> d!344944 (= c!201770 ((_ is Nil!12117) lt!412456))))

(declare-fun e!774125 () (InoxSet T!22300))

(assert (=> d!344944 (= (content!1716 lt!412456) e!774125)))

(declare-fun b!1206768 () Bool)

(assert (=> b!1206768 (= e!774125 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206769 () Bool)

(assert (=> b!1206769 (= e!774125 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412456) true) (content!1716 (t!112557 lt!412456))))))

(assert (= (and d!344944 c!201770) b!1206768))

(assert (= (and d!344944 (not c!201770)) b!1206769))

(declare-fun m!1382011 () Bool)

(assert (=> b!1206769 m!1382011))

(declare-fun m!1382013 () Bool)

(assert (=> b!1206769 m!1382013))

(assert (=> d!344750 d!344944))

(declare-fun c!201771 () Bool)

(declare-fun d!344946 () Bool)

(assert (=> d!344946 (= c!201771 ((_ is Nil!12117) (ite c!201496 r!2028 lt!412396)))))

(declare-fun e!774126 () (InoxSet T!22300))

(assert (=> d!344946 (= (content!1716 (ite c!201496 r!2028 lt!412396)) e!774126)))

(declare-fun b!1206770 () Bool)

(assert (=> b!1206770 (= e!774126 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206771 () Bool)

(assert (=> b!1206771 (= e!774126 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (ite c!201496 r!2028 lt!412396)) true) (content!1716 (t!112557 (ite c!201496 r!2028 lt!412396)))))))

(assert (= (and d!344946 c!201771) b!1206770))

(assert (= (and d!344946 (not c!201771)) b!1206771))

(declare-fun m!1382015 () Bool)

(assert (=> b!1206771 m!1382015))

(declare-fun m!1382017 () Bool)

(assert (=> b!1206771 m!1382017))

(assert (=> d!344750 d!344946))

(declare-fun d!344948 () Bool)

(declare-fun lt!412519 () Int)

(assert (=> d!344948 (>= lt!412519 0)))

(declare-fun e!774127 () Int)

(assert (=> d!344948 (= lt!412519 e!774127)))

(declare-fun c!201772 () Bool)

(assert (=> d!344948 (= c!201772 ((_ is Nil!12117) (t!112557 (t!112557 l!2744))))))

(assert (=> d!344948 (= (size!9657 (t!112557 (t!112557 l!2744))) lt!412519)))

(declare-fun b!1206772 () Bool)

(assert (=> b!1206772 (= e!774127 0)))

(declare-fun b!1206773 () Bool)

(assert (=> b!1206773 (= e!774127 (+ 1 (size!9657 (t!112557 (t!112557 (t!112557 l!2744))))))))

(assert (= (and d!344948 c!201772) b!1206772))

(assert (= (and d!344948 (not c!201772)) b!1206773))

(declare-fun m!1382019 () Bool)

(assert (=> b!1206773 m!1382019))

(assert (=> b!1206250 d!344948))

(assert (=> d!344760 d!344758))

(assert (=> d!344760 d!344680))

(assert (=> d!344760 d!344636))

(declare-fun b!1206774 () Bool)

(declare-fun e!774129 () List!12141)

(assert (=> b!1206774 (= e!774129 r!2028)))

(declare-fun lt!412520 () List!12141)

(declare-fun b!1206777 () Bool)

(declare-fun e!774128 () Bool)

(assert (=> b!1206777 (= e!774128 (or (not (= r!2028 Nil!12117)) (= lt!412520 (t!112557 (t!112557 lt!412396)))))))

(declare-fun b!1206775 () Bool)

(assert (=> b!1206775 (= e!774129 (Cons!12117 (h!17518 (t!112557 (t!112557 lt!412396))) (++!3139 (t!112557 (t!112557 (t!112557 lt!412396))) r!2028)))))

(declare-fun d!344950 () Bool)

(assert (=> d!344950 e!774128))

(declare-fun res!543116 () Bool)

(assert (=> d!344950 (=> (not res!543116) (not e!774128))))

(assert (=> d!344950 (= res!543116 (= (content!1716 lt!412520) ((_ map or) (content!1716 (t!112557 (t!112557 lt!412396))) (content!1716 r!2028))))))

(assert (=> d!344950 (= lt!412520 e!774129)))

(declare-fun c!201773 () Bool)

(assert (=> d!344950 (= c!201773 ((_ is Nil!12117) (t!112557 (t!112557 lt!412396))))))

(assert (=> d!344950 (= (++!3139 (t!112557 (t!112557 lt!412396)) r!2028) lt!412520)))

(declare-fun b!1206776 () Bool)

(declare-fun res!543117 () Bool)

(assert (=> b!1206776 (=> (not res!543117) (not e!774128))))

(assert (=> b!1206776 (= res!543117 (= (size!9657 lt!412520) (+ (size!9657 (t!112557 (t!112557 lt!412396))) (size!9657 r!2028))))))

(assert (= (and d!344950 c!201773) b!1206774))

(assert (= (and d!344950 (not c!201773)) b!1206775))

(assert (= (and d!344950 res!543116) b!1206776))

(assert (= (and b!1206776 res!543117) b!1206777))

(declare-fun m!1382021 () Bool)

(assert (=> b!1206775 m!1382021))

(declare-fun m!1382023 () Bool)

(assert (=> d!344950 m!1382023))

(declare-fun m!1382025 () Bool)

(assert (=> d!344950 m!1382025))

(assert (=> d!344950 m!1381359))

(declare-fun m!1382027 () Bool)

(assert (=> b!1206776 m!1382027))

(assert (=> b!1206776 m!1381439))

(assert (=> b!1206776 m!1381243))

(assert (=> b!1206452 d!344950))

(assert (=> bm!84253 d!344636))

(declare-fun d!344952 () Bool)

(declare-fun lt!412521 () Int)

(assert (=> d!344952 (>= lt!412521 0)))

(declare-fun e!774130 () Int)

(assert (=> d!344952 (= lt!412521 e!774130)))

(declare-fun c!201774 () Bool)

(assert (=> d!344952 (= c!201774 ((_ is Nil!12117) (t!112557 call!84226)))))

(assert (=> d!344952 (= (size!9657 (t!112557 call!84226)) lt!412521)))

(declare-fun b!1206778 () Bool)

(assert (=> b!1206778 (= e!774130 0)))

(declare-fun b!1206779 () Bool)

(assert (=> b!1206779 (= e!774130 (+ 1 (size!9657 (t!112557 (t!112557 call!84226)))))))

(assert (= (and d!344952 c!201774) b!1206778))

(assert (= (and d!344952 (not c!201774)) b!1206779))

(declare-fun m!1382029 () Bool)

(assert (=> b!1206779 m!1382029))

(assert (=> b!1206354 d!344952))

(declare-fun d!344954 () Bool)

(declare-fun lt!412522 () Int)

(assert (=> d!344954 (>= lt!412522 0)))

(declare-fun e!774131 () Int)

(assert (=> d!344954 (= lt!412522 e!774131)))

(declare-fun c!201775 () Bool)

(assert (=> d!344954 (= c!201775 ((_ is Nil!12117) lt!412462))))

(assert (=> d!344954 (= (size!9657 lt!412462) lt!412522)))

(declare-fun b!1206780 () Bool)

(assert (=> b!1206780 (= e!774131 0)))

(declare-fun b!1206781 () Bool)

(assert (=> b!1206781 (= e!774131 (+ 1 (size!9657 (t!112557 lt!412462))))))

(assert (= (and d!344954 c!201775) b!1206780))

(assert (= (and d!344954 (not c!201775)) b!1206781))

(declare-fun m!1382031 () Bool)

(assert (=> b!1206781 m!1382031))

(assert (=> b!1206439 d!344954))

(declare-fun d!344956 () Bool)

(declare-fun c!201776 () Bool)

(assert (=> d!344956 (= c!201776 ((_ is Nil!12117) (t!112557 (slice!521 l!2744 from!613 lt!412400))))))

(declare-fun e!774132 () (InoxSet T!22300))

(assert (=> d!344956 (= (content!1716 (t!112557 (slice!521 l!2744 from!613 lt!412400))) e!774132)))

(declare-fun b!1206782 () Bool)

(assert (=> b!1206782 (= e!774132 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206783 () Bool)

(assert (=> b!1206783 (= e!774132 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (t!112557 (slice!521 l!2744 from!613 lt!412400))) true) (content!1716 (t!112557 (t!112557 (slice!521 l!2744 from!613 lt!412400))))))))

(assert (= (and d!344956 c!201776) b!1206782))

(assert (= (and d!344956 (not c!201776)) b!1206783))

(declare-fun m!1382033 () Bool)

(assert (=> b!1206783 m!1382033))

(declare-fun m!1382035 () Bool)

(assert (=> b!1206783 m!1382035))

(assert (=> b!1206380 d!344956))

(declare-fun d!344958 () Bool)

(declare-fun c!201777 () Bool)

(assert (=> d!344958 (= c!201777 ((_ is Nil!12117) lt!412447))))

(declare-fun e!774133 () (InoxSet T!22300))

(assert (=> d!344958 (= (content!1716 lt!412447) e!774133)))

(declare-fun b!1206784 () Bool)

(assert (=> b!1206784 (= e!774133 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206785 () Bool)

(assert (=> b!1206785 (= e!774133 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412447) true) (content!1716 (t!112557 lt!412447))))))

(assert (= (and d!344958 c!201777) b!1206784))

(assert (= (and d!344958 (not c!201777)) b!1206785))

(declare-fun m!1382037 () Bool)

(assert (=> b!1206785 m!1382037))

(declare-fun m!1382039 () Bool)

(assert (=> b!1206785 m!1382039))

(assert (=> d!344720 d!344958))

(declare-fun d!344960 () Bool)

(declare-fun c!201778 () Bool)

(assert (=> d!344960 (= c!201778 ((_ is Nil!12117) lt!412403))))

(declare-fun e!774134 () (InoxSet T!22300))

(assert (=> d!344960 (= (content!1716 lt!412403) e!774134)))

(declare-fun b!1206786 () Bool)

(assert (=> b!1206786 (= e!774134 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206787 () Bool)

(assert (=> b!1206787 (= e!774134 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412403) true) (content!1716 (t!112557 lt!412403))))))

(assert (= (and d!344960 c!201778) b!1206786))

(assert (= (and d!344960 (not c!201778)) b!1206787))

(declare-fun m!1382041 () Bool)

(assert (=> b!1206787 m!1382041))

(declare-fun m!1382043 () Bool)

(assert (=> b!1206787 m!1382043))

(assert (=> d!344720 d!344960))

(declare-fun d!344962 () Bool)

(declare-fun lt!412523 () Int)

(assert (=> d!344962 (>= lt!412523 0)))

(declare-fun e!774135 () Int)

(assert (=> d!344962 (= lt!412523 e!774135)))

(declare-fun c!201779 () Bool)

(assert (=> d!344962 (= c!201779 ((_ is Nil!12117) (t!112557 (slice!521 l!2744 from!613 lt!412400))))))

(assert (=> d!344962 (= (size!9657 (t!112557 (slice!521 l!2744 from!613 lt!412400))) lt!412523)))

(declare-fun b!1206788 () Bool)

(assert (=> b!1206788 (= e!774135 0)))

(declare-fun b!1206789 () Bool)

(assert (=> b!1206789 (= e!774135 (+ 1 (size!9657 (t!112557 (t!112557 (slice!521 l!2744 from!613 lt!412400))))))))

(assert (= (and d!344962 c!201779) b!1206788))

(assert (= (and d!344962 (not c!201779)) b!1206789))

(declare-fun m!1382045 () Bool)

(assert (=> b!1206789 m!1382045))

(assert (=> b!1206264 d!344962))

(declare-fun d!344964 () Bool)

(declare-fun c!201780 () Bool)

(assert (=> d!344964 (= c!201780 ((_ is Nil!12117) lt!412457))))

(declare-fun e!774136 () (InoxSet T!22300))

(assert (=> d!344964 (= (content!1716 lt!412457) e!774136)))

(declare-fun b!1206790 () Bool)

(assert (=> b!1206790 (= e!774136 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206791 () Bool)

(assert (=> b!1206791 (= e!774136 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412457) true) (content!1716 (t!112557 lt!412457))))))

(assert (= (and d!344964 c!201780) b!1206790))

(assert (= (and d!344964 (not c!201780)) b!1206791))

(declare-fun m!1382047 () Bool)

(assert (=> b!1206791 m!1382047))

(declare-fun m!1382049 () Bool)

(assert (=> b!1206791 m!1382049))

(assert (=> d!344762 d!344964))

(declare-fun d!344966 () Bool)

(declare-fun c!201781 () Bool)

(assert (=> d!344966 (= c!201781 ((_ is Nil!12117) (drop!618 l!2744 from!613)))))

(declare-fun e!774137 () (InoxSet T!22300))

(assert (=> d!344966 (= (content!1716 (drop!618 l!2744 from!613)) e!774137)))

(declare-fun b!1206792 () Bool)

(assert (=> b!1206792 (= e!774137 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206793 () Bool)

(assert (=> b!1206793 (= e!774137 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (drop!618 l!2744 from!613)) true) (content!1716 (t!112557 (drop!618 l!2744 from!613)))))))

(assert (= (and d!344966 c!201781) b!1206792))

(assert (= (and d!344966 (not c!201781)) b!1206793))

(declare-fun m!1382051 () Bool)

(assert (=> b!1206793 m!1382051))

(declare-fun m!1382053 () Bool)

(assert (=> b!1206793 m!1382053))

(assert (=> d!344762 d!344966))

(declare-fun d!344968 () Bool)

(declare-fun c!201782 () Bool)

(assert (=> d!344968 (= c!201782 ((_ is Nil!12117) lt!412435))))

(declare-fun e!774138 () (InoxSet T!22300))

(assert (=> d!344968 (= (content!1716 lt!412435) e!774138)))

(declare-fun b!1206794 () Bool)

(assert (=> b!1206794 (= e!774138 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206795 () Bool)

(assert (=> b!1206795 (= e!774138 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412435) true) (content!1716 (t!112557 lt!412435))))))

(assert (= (and d!344968 c!201782) b!1206794))

(assert (= (and d!344968 (not c!201782)) b!1206795))

(declare-fun m!1382055 () Bool)

(assert (=> b!1206795 m!1382055))

(declare-fun m!1382057 () Bool)

(assert (=> b!1206795 m!1382057))

(assert (=> d!344704 d!344968))

(assert (=> d!344704 d!344956))

(assert (=> d!344704 d!344756))

(declare-fun d!344970 () Bool)

(declare-fun c!201783 () Bool)

(assert (=> d!344970 (= c!201783 ((_ is Nil!12117) (t!112557 l!2744)))))

(declare-fun e!774139 () (InoxSet T!22300))

(assert (=> d!344970 (= (content!1716 (t!112557 l!2744)) e!774139)))

(declare-fun b!1206796 () Bool)

(assert (=> b!1206796 (= e!774139 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206797 () Bool)

(assert (=> b!1206797 (= e!774139 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (t!112557 l!2744)) true) (content!1716 (t!112557 (t!112557 l!2744)))))))

(assert (= (and d!344970 c!201783) b!1206796))

(assert (= (and d!344970 (not c!201783)) b!1206797))

(declare-fun m!1382059 () Bool)

(assert (=> b!1206797 m!1382059))

(declare-fun m!1382061 () Bool)

(assert (=> b!1206797 m!1382061))

(assert (=> b!1206360 d!344970))

(assert (=> bm!84254 d!344688))

(declare-fun d!344972 () Bool)

(declare-fun c!201784 () Bool)

(assert (=> d!344972 (= c!201784 ((_ is Nil!12117) lt!412455))))

(declare-fun e!774140 () (InoxSet T!22300))

(assert (=> d!344972 (= (content!1716 lt!412455) e!774140)))

(declare-fun b!1206798 () Bool)

(assert (=> b!1206798 (= e!774140 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206799 () Bool)

(assert (=> b!1206799 (= e!774140 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412455) true) (content!1716 (t!112557 lt!412455))))))

(assert (= (and d!344972 c!201784) b!1206798))

(assert (= (and d!344972 (not c!201784)) b!1206799))

(declare-fun m!1382063 () Bool)

(assert (=> b!1206799 m!1382063))

(declare-fun m!1382065 () Bool)

(assert (=> b!1206799 m!1382065))

(assert (=> d!344748 d!344972))

(declare-fun d!344974 () Bool)

(declare-fun c!201785 () Bool)

(assert (=> d!344974 (= c!201785 ((_ is Nil!12117) (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))))))

(declare-fun e!774141 () (InoxSet T!22300))

(assert (=> d!344974 (= (content!1716 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))) e!774141)))

(declare-fun b!1206800 () Bool)

(assert (=> b!1206800 (= e!774141 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206801 () Bool)

(assert (=> b!1206801 (= e!774141 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))) true) (content!1716 (t!112557 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))))))))

(assert (= (and d!344974 c!201785) b!1206800))

(assert (= (and d!344974 (not c!201785)) b!1206801))

(declare-fun m!1382067 () Bool)

(assert (=> b!1206801 m!1382067))

(declare-fun m!1382069 () Bool)

(assert (=> b!1206801 m!1382069))

(assert (=> d!344748 d!344974))

(declare-fun b!1206802 () Bool)

(declare-fun e!774143 () List!12141)

(assert (=> b!1206802 (= e!774143 call!84223)))

(declare-fun lt!412524 () List!12141)

(declare-fun e!774142 () Bool)

(declare-fun b!1206805 () Bool)

(assert (=> b!1206805 (= e!774142 (or (not (= call!84223 Nil!12117)) (= lt!412524 (t!112557 (t!112557 (slice!521 l!2744 from!613 lt!412400))))))))

(declare-fun b!1206803 () Bool)

(assert (=> b!1206803 (= e!774143 (Cons!12117 (h!17518 (t!112557 (t!112557 (slice!521 l!2744 from!613 lt!412400)))) (++!3139 (t!112557 (t!112557 (t!112557 (slice!521 l!2744 from!613 lt!412400)))) call!84223)))))

(declare-fun d!344976 () Bool)

(assert (=> d!344976 e!774142))

(declare-fun res!543118 () Bool)

(assert (=> d!344976 (=> (not res!543118) (not e!774142))))

(assert (=> d!344976 (= res!543118 (= (content!1716 lt!412524) ((_ map or) (content!1716 (t!112557 (t!112557 (slice!521 l!2744 from!613 lt!412400)))) (content!1716 call!84223))))))

(assert (=> d!344976 (= lt!412524 e!774143)))

(declare-fun c!201786 () Bool)

(assert (=> d!344976 (= c!201786 ((_ is Nil!12117) (t!112557 (t!112557 (slice!521 l!2744 from!613 lt!412400)))))))

(assert (=> d!344976 (= (++!3139 (t!112557 (t!112557 (slice!521 l!2744 from!613 lt!412400))) call!84223) lt!412524)))

(declare-fun b!1206804 () Bool)

(declare-fun res!543119 () Bool)

(assert (=> b!1206804 (=> (not res!543119) (not e!774142))))

(assert (=> b!1206804 (= res!543119 (= (size!9657 lt!412524) (+ (size!9657 (t!112557 (t!112557 (slice!521 l!2744 from!613 lt!412400)))) (size!9657 call!84223))))))

(assert (= (and d!344976 c!201786) b!1206802))

(assert (= (and d!344976 (not c!201786)) b!1206803))

(assert (= (and d!344976 res!543118) b!1206804))

(assert (= (and b!1206804 res!543119) b!1206805))

(declare-fun m!1382071 () Bool)

(assert (=> b!1206803 m!1382071))

(declare-fun m!1382073 () Bool)

(assert (=> d!344976 m!1382073))

(assert (=> d!344976 m!1382035))

(assert (=> d!344976 m!1381409))

(declare-fun m!1382075 () Bool)

(assert (=> b!1206804 m!1382075))

(assert (=> b!1206804 m!1382045))

(assert (=> b!1206804 m!1381415))

(assert (=> b!1206252 d!344976))

(declare-fun d!344978 () Bool)

(declare-fun lt!412525 () Int)

(assert (=> d!344978 (>= lt!412525 0)))

(declare-fun e!774144 () Int)

(assert (=> d!344978 (= lt!412525 e!774144)))

(declare-fun c!201787 () Bool)

(assert (=> d!344978 (= c!201787 ((_ is Nil!12117) (t!112557 lt!412427)))))

(assert (=> d!344978 (= (size!9657 (t!112557 lt!412427)) lt!412525)))

(declare-fun b!1206806 () Bool)

(assert (=> b!1206806 (= e!774144 0)))

(declare-fun b!1206807 () Bool)

(assert (=> b!1206807 (= e!774144 (+ 1 (size!9657 (t!112557 (t!112557 lt!412427)))))))

(assert (= (and d!344978 c!201787) b!1206806))

(assert (= (and d!344978 (not c!201787)) b!1206807))

(declare-fun m!1382077 () Bool)

(assert (=> b!1206807 m!1382077))

(assert (=> b!1206248 d!344978))

(declare-fun d!344980 () Bool)

(declare-fun c!201788 () Bool)

(assert (=> d!344980 (= c!201788 ((_ is Nil!12117) (t!112557 call!84223)))))

(declare-fun e!774145 () (InoxSet T!22300))

(assert (=> d!344980 (= (content!1716 (t!112557 call!84223)) e!774145)))

(declare-fun b!1206808 () Bool)

(assert (=> b!1206808 (= e!774145 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206809 () Bool)

(assert (=> b!1206809 (= e!774145 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (t!112557 call!84223)) true) (content!1716 (t!112557 (t!112557 call!84223)))))))

(assert (= (and d!344980 c!201788) b!1206808))

(assert (= (and d!344980 (not c!201788)) b!1206809))

(declare-fun m!1382079 () Bool)

(assert (=> b!1206809 m!1382079))

(declare-fun m!1382081 () Bool)

(assert (=> b!1206809 m!1382081))

(assert (=> b!1206382 d!344980))

(declare-fun d!344982 () Bool)

(declare-fun lt!412526 () Int)

(assert (=> d!344982 (>= lt!412526 0)))

(declare-fun e!774146 () Int)

(assert (=> d!344982 (= lt!412526 e!774146)))

(declare-fun c!201789 () Bool)

(assert (=> d!344982 (= c!201789 ((_ is Nil!12117) (ite c!201496 r!2028 lt!412396)))))

(assert (=> d!344982 (= (size!9657 (ite c!201496 r!2028 lt!412396)) lt!412526)))

(declare-fun b!1206810 () Bool)

(assert (=> b!1206810 (= e!774146 0)))

(declare-fun b!1206811 () Bool)

(assert (=> b!1206811 (= e!774146 (+ 1 (size!9657 (t!112557 (ite c!201496 r!2028 lt!412396)))))))

(assert (= (and d!344982 c!201789) b!1206810))

(assert (= (and d!344982 (not c!201789)) b!1206811))

(declare-fun m!1382083 () Bool)

(assert (=> b!1206811 m!1382083))

(assert (=> bm!84244 d!344982))

(declare-fun d!344984 () Bool)

(declare-fun c!201790 () Bool)

(assert (=> d!344984 (= c!201790 ((_ is Nil!12117) lt!412450))))

(declare-fun e!774147 () (InoxSet T!22300))

(assert (=> d!344984 (= (content!1716 lt!412450) e!774147)))

(declare-fun b!1206812 () Bool)

(assert (=> b!1206812 (= e!774147 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206813 () Bool)

(assert (=> b!1206813 (= e!774147 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412450) true) (content!1716 (t!112557 lt!412450))))))

(assert (= (and d!344984 c!201790) b!1206812))

(assert (= (and d!344984 (not c!201790)) b!1206813))

(declare-fun m!1382085 () Bool)

(assert (=> b!1206813 m!1382085))

(declare-fun m!1382087 () Bool)

(assert (=> b!1206813 m!1382087))

(assert (=> d!344734 d!344984))

(declare-fun d!344986 () Bool)

(declare-fun c!201791 () Bool)

(assert (=> d!344986 (= c!201791 ((_ is Nil!12117) (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))))))

(declare-fun e!774148 () (InoxSet T!22300))

(assert (=> d!344986 (= (content!1716 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))) e!774148)))

(declare-fun b!1206814 () Bool)

(assert (=> b!1206814 (= e!774148 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206815 () Bool)

(assert (=> b!1206815 (= e!774148 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))) true) (content!1716 (t!112557 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))))))))

(assert (= (and d!344986 c!201791) b!1206814))

(assert (= (and d!344986 (not c!201791)) b!1206815))

(declare-fun m!1382089 () Bool)

(assert (=> b!1206815 m!1382089))

(declare-fun m!1382091 () Bool)

(assert (=> b!1206815 m!1382091))

(assert (=> d!344734 d!344986))

(declare-fun d!344988 () Bool)

(declare-fun lt!412527 () Int)

(assert (=> d!344988 (>= lt!412527 0)))

(declare-fun e!774149 () Int)

(assert (=> d!344988 (= lt!412527 e!774149)))

(declare-fun c!201792 () Bool)

(assert (=> d!344988 (= c!201792 ((_ is Nil!12117) (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))))))

(assert (=> d!344988 (= (size!9657 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))) lt!412527)))

(declare-fun b!1206816 () Bool)

(assert (=> b!1206816 (= e!774149 0)))

(declare-fun b!1206817 () Bool)

(assert (=> b!1206817 (= e!774149 (+ 1 (size!9657 (t!112557 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))))))))

(assert (= (and d!344988 c!201792) b!1206816))

(assert (= (and d!344988 (not c!201792)) b!1206817))

(declare-fun m!1382093 () Bool)

(assert (=> b!1206817 m!1382093))

(assert (=> bm!84243 d!344988))

(declare-fun d!344990 () Bool)

(declare-fun lt!412528 () Int)

(assert (=> d!344990 (>= lt!412528 0)))

(declare-fun e!774150 () Int)

(assert (=> d!344990 (= lt!412528 e!774150)))

(declare-fun c!201793 () Bool)

(assert (=> d!344990 (= c!201793 ((_ is Nil!12117) (t!112557 lt!412431)))))

(assert (=> d!344990 (= (size!9657 (t!112557 lt!412431)) lt!412528)))

(declare-fun b!1206818 () Bool)

(assert (=> b!1206818 (= e!774150 0)))

(declare-fun b!1206819 () Bool)

(assert (=> b!1206819 (= e!774150 (+ 1 (size!9657 (t!112557 (t!112557 lt!412431)))))))

(assert (= (and d!344990 c!201793) b!1206818))

(assert (= (and d!344990 (not c!201793)) b!1206819))

(declare-fun m!1382095 () Bool)

(assert (=> b!1206819 m!1382095))

(assert (=> b!1206352 d!344990))

(declare-fun d!344992 () Bool)

(declare-fun lt!412529 () Int)

(assert (=> d!344992 (>= lt!412529 0)))

(declare-fun e!774151 () Int)

(assert (=> d!344992 (= lt!412529 e!774151)))

(declare-fun c!201794 () Bool)

(assert (=> d!344992 (= c!201794 ((_ is Nil!12117) (drop!618 lt!412403 0)))))

(assert (=> d!344992 (= (size!9657 (drop!618 lt!412403 0)) lt!412529)))

(declare-fun b!1206820 () Bool)

(assert (=> b!1206820 (= e!774151 0)))

(declare-fun b!1206821 () Bool)

(assert (=> b!1206821 (= e!774151 (+ 1 (size!9657 (t!112557 (drop!618 lt!412403 0)))))))

(assert (= (and d!344992 c!201794) b!1206820))

(assert (= (and d!344992 (not c!201794)) b!1206821))

(assert (=> b!1206821 m!1381969))

(assert (=> b!1206288 d!344992))

(declare-fun e!774155 () List!12141)

(declare-fun b!1206822 () Bool)

(assert (=> b!1206822 (= e!774155 (Cons!12117 (h!17518 (t!112557 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))))) (take!146 (t!112557 (t!112557 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))))) (- (- (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) 1) 1))))))

(declare-fun b!1206823 () Bool)

(declare-fun e!774153 () Int)

(assert (=> b!1206823 (= e!774153 (- (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) 1))))

(declare-fun d!344994 () Bool)

(declare-fun e!774154 () Bool)

(assert (=> d!344994 e!774154))

(declare-fun res!543120 () Bool)

(assert (=> d!344994 (=> (not res!543120) (not e!774154))))

(declare-fun lt!412530 () List!12141)

(assert (=> d!344994 (= res!543120 (= ((_ map implies) (content!1716 lt!412530) (content!1716 (t!112557 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!344994 (= lt!412530 e!774155)))

(declare-fun c!201796 () Bool)

(assert (=> d!344994 (= c!201796 (or ((_ is Nil!12117) (t!112557 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))))) (<= (- (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) 1) 0)))))

(assert (=> d!344994 (= (take!146 (t!112557 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))) (- (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) 1)) lt!412530)))

(declare-fun b!1206824 () Bool)

(declare-fun e!774152 () Int)

(assert (=> b!1206824 (= e!774152 e!774153)))

(declare-fun c!201795 () Bool)

(assert (=> b!1206824 (= c!201795 (>= (- (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) 1) (size!9657 (t!112557 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)))))))))

(declare-fun b!1206825 () Bool)

(assert (=> b!1206825 (= e!774152 0)))

(declare-fun b!1206826 () Bool)

(assert (=> b!1206826 (= e!774154 (= (size!9657 lt!412530) e!774152))))

(declare-fun c!201797 () Bool)

(assert (=> b!1206826 (= c!201797 (<= (- (- (ite c!201495 (- until!61 lt!412400) (ite c!201497 until!61 (- until!61 lt!412400))) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))) 1) 0))))

(declare-fun b!1206827 () Bool)

(assert (=> b!1206827 (= e!774153 (size!9657 (t!112557 (drop!618 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)) (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0))))))))

(declare-fun b!1206828 () Bool)

(assert (=> b!1206828 (= e!774155 Nil!12117)))

(assert (= (and d!344994 c!201796) b!1206828))

(assert (= (and d!344994 (not c!201796)) b!1206822))

(assert (= (and d!344994 res!543120) b!1206826))

(assert (= (and b!1206826 c!201797) b!1206825))

(assert (= (and b!1206826 (not c!201797)) b!1206824))

(assert (= (and b!1206824 c!201795) b!1206827))

(assert (= (and b!1206824 (not c!201795)) b!1206823))

(assert (=> b!1206827 m!1381903))

(declare-fun m!1382097 () Bool)

(assert (=> d!344994 m!1382097))

(assert (=> d!344994 m!1382091))

(assert (=> b!1206824 m!1381903))

(declare-fun m!1382099 () Bool)

(assert (=> b!1206822 m!1382099))

(declare-fun m!1382101 () Bool)

(assert (=> b!1206826 m!1382101))

(assert (=> b!1206335 d!344994))

(declare-fun b!1206829 () Bool)

(declare-fun e!774157 () List!12141)

(assert (=> b!1206829 (= e!774157 call!84224)))

(declare-fun lt!412531 () List!12141)

(declare-fun e!774156 () Bool)

(declare-fun b!1206832 () Bool)

(assert (=> b!1206832 (= e!774156 (or (not (= call!84224 Nil!12117)) (= lt!412531 (t!112557 (t!112557 call!84226)))))))

(declare-fun b!1206830 () Bool)

(assert (=> b!1206830 (= e!774157 (Cons!12117 (h!17518 (t!112557 (t!112557 call!84226))) (++!3139 (t!112557 (t!112557 (t!112557 call!84226))) call!84224)))))

(declare-fun d!344996 () Bool)

(assert (=> d!344996 e!774156))

(declare-fun res!543121 () Bool)

(assert (=> d!344996 (=> (not res!543121) (not e!774156))))

(assert (=> d!344996 (= res!543121 (= (content!1716 lt!412531) ((_ map or) (content!1716 (t!112557 (t!112557 call!84226))) (content!1716 call!84224))))))

(assert (=> d!344996 (= lt!412531 e!774157)))

(declare-fun c!201798 () Bool)

(assert (=> d!344996 (= c!201798 ((_ is Nil!12117) (t!112557 (t!112557 call!84226))))))

(assert (=> d!344996 (= (++!3139 (t!112557 (t!112557 call!84226)) call!84224) lt!412531)))

(declare-fun b!1206831 () Bool)

(declare-fun res!543122 () Bool)

(assert (=> b!1206831 (=> (not res!543122) (not e!774156))))

(assert (=> b!1206831 (= res!543122 (= (size!9657 lt!412531) (+ (size!9657 (t!112557 (t!112557 call!84226))) (size!9657 call!84224))))))

(assert (= (and d!344996 c!201798) b!1206829))

(assert (= (and d!344996 (not c!201798)) b!1206830))

(assert (= (and d!344996 res!543121) b!1206831))

(assert (= (and b!1206831 res!543122) b!1206832))

(declare-fun m!1382103 () Bool)

(assert (=> b!1206830 m!1382103))

(declare-fun m!1382105 () Bool)

(assert (=> d!344996 m!1382105))

(assert (=> d!344996 m!1381899))

(assert (=> d!344996 m!1381393))

(declare-fun m!1382107 () Bool)

(assert (=> b!1206831 m!1382107))

(assert (=> b!1206831 m!1382029))

(assert (=> b!1206831 m!1381401))

(assert (=> b!1206258 d!344996))

(declare-fun d!344998 () Bool)

(declare-fun lt!412532 () Int)

(assert (=> d!344998 (>= lt!412532 0)))

(declare-fun e!774158 () Int)

(assert (=> d!344998 (= lt!412532 e!774158)))

(declare-fun c!201799 () Bool)

(assert (=> d!344998 (= c!201799 ((_ is Nil!12117) lt!412457))))

(assert (=> d!344998 (= (size!9657 lt!412457) lt!412532)))

(declare-fun b!1206833 () Bool)

(assert (=> b!1206833 (= e!774158 0)))

(declare-fun b!1206834 () Bool)

(assert (=> b!1206834 (= e!774158 (+ 1 (size!9657 (t!112557 lt!412457))))))

(assert (= (and d!344998 c!201799) b!1206833))

(assert (= (and d!344998 (not c!201799)) b!1206834))

(declare-fun m!1382109 () Bool)

(assert (=> b!1206834 m!1382109))

(assert (=> b!1206405 d!344998))

(declare-fun e!774162 () List!12141)

(declare-fun b!1206835 () Bool)

(assert (=> b!1206835 (= e!774162 (Cons!12117 (h!17518 (t!112557 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0)))) (take!146 (t!112557 (t!112557 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0)))) (- (- (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0)) 1) 1))))))

(declare-fun b!1206836 () Bool)

(declare-fun e!774160 () Int)

(assert (=> b!1206836 (= e!774160 (- (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0)) 1))))

(declare-fun d!345000 () Bool)

(declare-fun e!774161 () Bool)

(assert (=> d!345000 e!774161))

(declare-fun res!543123 () Bool)

(assert (=> d!345000 (=> (not res!543123) (not e!774161))))

(declare-fun lt!412533 () List!12141)

(assert (=> d!345000 (= res!543123 (= ((_ map implies) (content!1716 lt!412533) (content!1716 (t!112557 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!345000 (= lt!412533 e!774162)))

(declare-fun c!201801 () Bool)

(assert (=> d!345000 (= c!201801 (or ((_ is Nil!12117) (t!112557 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0)))) (<= (- (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0)) 1) 0)))))

(assert (=> d!345000 (= (take!146 (t!112557 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))) (- (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0)) 1)) lt!412533)))

(declare-fun b!1206837 () Bool)

(declare-fun e!774159 () Int)

(assert (=> b!1206837 (= e!774159 e!774160)))

(declare-fun c!201800 () Bool)

(assert (=> b!1206837 (= c!201800 (>= (- (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0)) 1) (size!9657 (t!112557 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0))))))))

(declare-fun b!1206838 () Bool)

(assert (=> b!1206838 (= e!774159 0)))

(declare-fun b!1206839 () Bool)

(assert (=> b!1206839 (= e!774161 (= (size!9657 lt!412533) e!774159))))

(declare-fun c!201802 () Bool)

(assert (=> b!1206839 (= c!201802 (<= (- (- (ite c!201496 (- (- until!61 1) lt!412398) lt!412398) (ite c!201496 (- lt!412398) 0)) 1) 0))))

(declare-fun b!1206840 () Bool)

(assert (=> b!1206840 (= e!774160 (size!9657 (t!112557 (drop!618 (ite c!201496 r!2028 lt!412396) (ite c!201496 (- lt!412398) 0)))))))

(declare-fun b!1206841 () Bool)

(assert (=> b!1206841 (= e!774162 Nil!12117)))

(assert (= (and d!345000 c!201801) b!1206841))

(assert (= (and d!345000 (not c!201801)) b!1206835))

(assert (= (and d!345000 res!543123) b!1206839))

(assert (= (and b!1206839 c!201802) b!1206838))

(assert (= (and b!1206839 (not c!201802)) b!1206837))

(assert (= (and b!1206837 c!201800) b!1206840))

(assert (= (and b!1206837 (not c!201800)) b!1206836))

(assert (=> b!1206840 m!1381913))

(declare-fun m!1382111 () Bool)

(assert (=> d!345000 m!1382111))

(assert (=> d!345000 m!1382069))

(assert (=> b!1206837 m!1381913))

(declare-fun m!1382113 () Bool)

(assert (=> b!1206835 m!1382113))

(declare-fun m!1382115 () Bool)

(assert (=> b!1206839 m!1382115))

(assert (=> b!1206361 d!345000))

(declare-fun d!345002 () Bool)

(declare-fun lt!412534 () Int)

(assert (=> d!345002 (>= lt!412534 0)))

(declare-fun e!774163 () Int)

(assert (=> d!345002 (= lt!412534 e!774163)))

(declare-fun c!201803 () Bool)

(assert (=> d!345002 (= c!201803 ((_ is Nil!12117) lt!412455))))

(assert (=> d!345002 (= (size!9657 lt!412455) lt!412534)))

(declare-fun b!1206842 () Bool)

(assert (=> b!1206842 (= e!774163 0)))

(declare-fun b!1206843 () Bool)

(assert (=> b!1206843 (= e!774163 (+ 1 (size!9657 (t!112557 lt!412455))))))

(assert (= (and d!345002 c!201803) b!1206842))

(assert (= (and d!345002 (not c!201803)) b!1206843))

(declare-fun m!1382117 () Bool)

(assert (=> b!1206843 m!1382117))

(assert (=> b!1206365 d!345002))

(declare-fun d!345004 () Bool)

(declare-fun lt!412535 () Int)

(assert (=> d!345004 (>= lt!412535 0)))

(declare-fun e!774164 () Int)

(assert (=> d!345004 (= lt!412535 e!774164)))

(declare-fun c!201804 () Bool)

(assert (=> d!345004 (= c!201804 ((_ is Nil!12117) (drop!618 (ite c!201498 lt!412396 r!2028) 0)))))

(assert (=> d!345004 (= (size!9657 (drop!618 (ite c!201498 lt!412396 r!2028) 0)) lt!412535)))

(declare-fun b!1206844 () Bool)

(assert (=> b!1206844 (= e!774164 0)))

(declare-fun b!1206845 () Bool)

(assert (=> b!1206845 (= e!774164 (+ 1 (size!9657 (t!112557 (drop!618 (ite c!201498 lt!412396 r!2028) 0)))))))

(assert (= (and d!345004 c!201804) b!1206844))

(assert (= (and d!345004 (not c!201804)) b!1206845))

(declare-fun m!1382119 () Bool)

(assert (=> b!1206845 m!1382119))

(assert (=> b!1206440 d!345004))

(declare-fun b!1206846 () Bool)

(declare-fun e!774166 () List!12141)

(assert (=> b!1206846 (= e!774166 r!2028)))

(declare-fun e!774165 () Bool)

(declare-fun b!1206849 () Bool)

(declare-fun lt!412536 () List!12141)

(assert (=> b!1206849 (= e!774165 (or (not (= r!2028 Nil!12117)) (= lt!412536 (t!112557 (t!112557 l!2744)))))))

(declare-fun b!1206847 () Bool)

(assert (=> b!1206847 (= e!774166 (Cons!12117 (h!17518 (t!112557 (t!112557 l!2744))) (++!3139 (t!112557 (t!112557 (t!112557 l!2744))) r!2028)))))

(declare-fun d!345006 () Bool)

(assert (=> d!345006 e!774165))

(declare-fun res!543124 () Bool)

(assert (=> d!345006 (=> (not res!543124) (not e!774165))))

(assert (=> d!345006 (= res!543124 (= (content!1716 lt!412536) ((_ map or) (content!1716 (t!112557 (t!112557 l!2744))) (content!1716 r!2028))))))

(assert (=> d!345006 (= lt!412536 e!774166)))

(declare-fun c!201805 () Bool)

(assert (=> d!345006 (= c!201805 ((_ is Nil!12117) (t!112557 (t!112557 l!2744))))))

(assert (=> d!345006 (= (++!3139 (t!112557 (t!112557 l!2744)) r!2028) lt!412536)))

(declare-fun b!1206848 () Bool)

(declare-fun res!543125 () Bool)

(assert (=> b!1206848 (=> (not res!543125) (not e!774165))))

(assert (=> b!1206848 (= res!543125 (= (size!9657 lt!412536) (+ (size!9657 (t!112557 (t!112557 l!2744))) (size!9657 r!2028))))))

(assert (= (and d!345006 c!201805) b!1206846))

(assert (= (and d!345006 (not c!201805)) b!1206847))

(assert (= (and d!345006 res!543124) b!1206848))

(assert (= (and b!1206848 res!543125) b!1206849))

(declare-fun m!1382121 () Bool)

(assert (=> b!1206847 m!1382121))

(declare-fun m!1382123 () Bool)

(assert (=> d!345006 m!1382123))

(assert (=> d!345006 m!1382061))

(assert (=> d!345006 m!1381359))

(declare-fun m!1382125 () Bool)

(assert (=> b!1206848 m!1382125))

(assert (=> b!1206848 m!1381427))

(assert (=> b!1206848 m!1381243))

(assert (=> b!1206322 d!345006))

(declare-fun d!345008 () Bool)

(declare-fun lt!412537 () Int)

(assert (=> d!345008 (>= lt!412537 0)))

(declare-fun e!774167 () Int)

(assert (=> d!345008 (= lt!412537 e!774167)))

(declare-fun c!201806 () Bool)

(assert (=> d!345008 (= c!201806 ((_ is Nil!12117) lt!412464))))

(assert (=> d!345008 (= (size!9657 lt!412464) lt!412537)))

(declare-fun b!1206850 () Bool)

(assert (=> b!1206850 (= e!774167 0)))

(declare-fun b!1206851 () Bool)

(assert (=> b!1206851 (= e!774167 (+ 1 (size!9657 (t!112557 lt!412464))))))

(assert (= (and d!345008 c!201806) b!1206850))

(assert (= (and d!345008 (not c!201806)) b!1206851))

(declare-fun m!1382127 () Bool)

(assert (=> b!1206851 m!1382127))

(assert (=> b!1206453 d!345008))

(assert (=> b!1206453 d!344706))

(assert (=> b!1206453 d!344686))

(declare-fun d!345010 () Bool)

(declare-fun lt!412538 () Int)

(assert (=> d!345010 (>= lt!412538 0)))

(declare-fun e!774168 () Int)

(assert (=> d!345010 (= lt!412538 e!774168)))

(declare-fun c!201807 () Bool)

(assert (=> d!345010 (= c!201807 ((_ is Nil!12117) lt!412450))))

(assert (=> d!345010 (= (size!9657 lt!412450) lt!412538)))

(declare-fun b!1206852 () Bool)

(assert (=> b!1206852 (= e!774168 0)))

(declare-fun b!1206853 () Bool)

(assert (=> b!1206853 (= e!774168 (+ 1 (size!9657 (t!112557 lt!412450))))))

(assert (= (and d!345010 c!201807) b!1206852))

(assert (= (and d!345010 (not c!201807)) b!1206853))

(declare-fun m!1382129 () Bool)

(assert (=> b!1206853 m!1382129))

(assert (=> b!1206339 d!345010))

(declare-fun b!1206854 () Bool)

(declare-fun e!774171 () List!12141)

(assert (=> b!1206854 (= e!774171 (t!112557 lt!412401))))

(declare-fun b!1206855 () Bool)

(declare-fun e!774173 () Int)

(assert (=> b!1206855 (= e!774173 0)))

(declare-fun b!1206856 () Bool)

(declare-fun call!84280 () Int)

(assert (=> b!1206856 (= e!774173 (- call!84280 (- from!613 1)))))

(declare-fun d!345012 () Bool)

(declare-fun e!774172 () Bool)

(assert (=> d!345012 e!774172))

(declare-fun res!543126 () Bool)

(assert (=> d!345012 (=> (not res!543126) (not e!774172))))

(declare-fun lt!412539 () List!12141)

(assert (=> d!345012 (= res!543126 (= ((_ map implies) (content!1716 lt!412539) (content!1716 (t!112557 lt!412401))) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!774169 () List!12141)

(assert (=> d!345012 (= lt!412539 e!774169)))

(declare-fun c!201809 () Bool)

(assert (=> d!345012 (= c!201809 ((_ is Nil!12117) (t!112557 lt!412401)))))

(assert (=> d!345012 (= (drop!618 (t!112557 lt!412401) (- from!613 1)) lt!412539)))

(declare-fun b!1206857 () Bool)

(declare-fun e!774170 () Int)

(assert (=> b!1206857 (= e!774170 e!774173)))

(declare-fun c!201808 () Bool)

(assert (=> b!1206857 (= c!201808 (>= (- from!613 1) call!84280))))

(declare-fun b!1206858 () Bool)

(assert (=> b!1206858 (= e!774170 call!84280)))

(declare-fun bm!84275 () Bool)

(assert (=> bm!84275 (= call!84280 (size!9657 (t!112557 lt!412401)))))

(declare-fun b!1206859 () Bool)

(assert (=> b!1206859 (= e!774169 Nil!12117)))

(declare-fun b!1206860 () Bool)

(assert (=> b!1206860 (= e!774171 (drop!618 (t!112557 (t!112557 lt!412401)) (- (- from!613 1) 1)))))

(declare-fun b!1206861 () Bool)

(assert (=> b!1206861 (= e!774172 (= (size!9657 lt!412539) e!774170))))

(declare-fun c!201810 () Bool)

(assert (=> b!1206861 (= c!201810 (<= (- from!613 1) 0))))

(declare-fun b!1206862 () Bool)

(assert (=> b!1206862 (= e!774169 e!774171)))

(declare-fun c!201811 () Bool)

(assert (=> b!1206862 (= c!201811 (<= (- from!613 1) 0))))

(assert (= (and d!345012 c!201809) b!1206859))

(assert (= (and d!345012 (not c!201809)) b!1206862))

(assert (= (and b!1206862 c!201811) b!1206854))

(assert (= (and b!1206862 (not c!201811)) b!1206860))

(assert (= (and d!345012 res!543126) b!1206861))

(assert (= (and b!1206861 c!201810) b!1206858))

(assert (= (and b!1206861 (not c!201810)) b!1206857))

(assert (= (and b!1206857 c!201808) b!1206855))

(assert (= (and b!1206857 (not c!201808)) b!1206856))

(assert (= (or b!1206858 b!1206857 b!1206856) bm!84275))

(declare-fun m!1382131 () Bool)

(assert (=> d!345012 m!1382131))

(declare-fun m!1382133 () Bool)

(assert (=> d!345012 m!1382133))

(assert (=> bm!84275 m!1381923))

(declare-fun m!1382135 () Bool)

(assert (=> b!1206860 m!1382135))

(declare-fun m!1382137 () Bool)

(assert (=> b!1206861 m!1382137))

(assert (=> b!1206430 d!345012))

(assert (=> b!1206285 d!344992))

(declare-fun d!345014 () Bool)

(declare-fun lt!412540 () Int)

(assert (=> d!345014 (>= lt!412540 0)))

(declare-fun e!774174 () Int)

(assert (=> d!345014 (= lt!412540 e!774174)))

(declare-fun c!201812 () Bool)

(assert (=> d!345014 (= c!201812 ((_ is Nil!12117) lt!412435))))

(assert (=> d!345014 (= (size!9657 lt!412435) lt!412540)))

(declare-fun b!1206863 () Bool)

(assert (=> b!1206863 (= e!774174 0)))

(declare-fun b!1206864 () Bool)

(assert (=> b!1206864 (= e!774174 (+ 1 (size!9657 (t!112557 lt!412435))))))

(assert (= (and d!345014 c!201812) b!1206863))

(assert (= (and d!345014 (not c!201812)) b!1206864))

(declare-fun m!1382139 () Bool)

(assert (=> b!1206864 m!1382139))

(assert (=> b!1206253 d!345014))

(assert (=> b!1206253 d!344962))

(assert (=> b!1206253 d!344714))

(declare-fun b!1206865 () Bool)

(declare-fun e!774177 () List!12141)

(assert (=> b!1206865 (= e!774177 (t!112557 (ite c!201498 lt!412396 r!2028)))))

(declare-fun b!1206866 () Bool)

(declare-fun e!774179 () Int)

(assert (=> b!1206866 (= e!774179 0)))

(declare-fun b!1206867 () Bool)

(declare-fun call!84281 () Int)

(assert (=> b!1206867 (= e!774179 (- call!84281 (- 0 1)))))

(declare-fun d!345016 () Bool)

(declare-fun e!774178 () Bool)

(assert (=> d!345016 e!774178))

(declare-fun res!543127 () Bool)

(assert (=> d!345016 (=> (not res!543127) (not e!774178))))

(declare-fun lt!412541 () List!12141)

(assert (=> d!345016 (= res!543127 (= ((_ map implies) (content!1716 lt!412541) (content!1716 (t!112557 (ite c!201498 lt!412396 r!2028)))) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!774175 () List!12141)

(assert (=> d!345016 (= lt!412541 e!774175)))

(declare-fun c!201814 () Bool)

(assert (=> d!345016 (= c!201814 ((_ is Nil!12117) (t!112557 (ite c!201498 lt!412396 r!2028))))))

(assert (=> d!345016 (= (drop!618 (t!112557 (ite c!201498 lt!412396 r!2028)) (- 0 1)) lt!412541)))

(declare-fun b!1206868 () Bool)

(declare-fun e!774176 () Int)

(assert (=> b!1206868 (= e!774176 e!774179)))

(declare-fun c!201813 () Bool)

(assert (=> b!1206868 (= c!201813 (>= (- 0 1) call!84281))))

(declare-fun b!1206869 () Bool)

(assert (=> b!1206869 (= e!774176 call!84281)))

(declare-fun bm!84276 () Bool)

(assert (=> bm!84276 (= call!84281 (size!9657 (t!112557 (ite c!201498 lt!412396 r!2028))))))

(declare-fun b!1206870 () Bool)

(assert (=> b!1206870 (= e!774175 Nil!12117)))

(declare-fun b!1206871 () Bool)

(assert (=> b!1206871 (= e!774177 (drop!618 (t!112557 (t!112557 (ite c!201498 lt!412396 r!2028))) (- (- 0 1) 1)))))

(declare-fun b!1206872 () Bool)

(assert (=> b!1206872 (= e!774178 (= (size!9657 lt!412541) e!774176))))

(declare-fun c!201815 () Bool)

(assert (=> b!1206872 (= c!201815 (<= (- 0 1) 0))))

(declare-fun b!1206873 () Bool)

(assert (=> b!1206873 (= e!774175 e!774177)))

(declare-fun c!201816 () Bool)

(assert (=> b!1206873 (= c!201816 (<= (- 0 1) 0))))

(assert (= (and d!345016 c!201814) b!1206870))

(assert (= (and d!345016 (not c!201814)) b!1206873))

(assert (= (and b!1206873 c!201816) b!1206865))

(assert (= (and b!1206873 (not c!201816)) b!1206871))

(assert (= (and d!345016 res!543127) b!1206872))

(assert (= (and b!1206872 c!201815) b!1206869))

(assert (= (and b!1206872 (not c!201815)) b!1206868))

(assert (= (and b!1206868 c!201813) b!1206866))

(assert (= (and b!1206868 (not c!201813)) b!1206867))

(assert (= (or b!1206869 b!1206868 b!1206867) bm!84276))

(declare-fun m!1382141 () Bool)

(assert (=> d!345016 m!1382141))

(declare-fun m!1382143 () Bool)

(assert (=> d!345016 m!1382143))

(assert (=> bm!84276 m!1381987))

(declare-fun m!1382145 () Bool)

(assert (=> b!1206871 m!1382145))

(declare-fun m!1382147 () Bool)

(assert (=> b!1206872 m!1382147))

(assert (=> b!1206448 d!345016))

(declare-fun d!345018 () Bool)

(declare-fun c!201817 () Bool)

(assert (=> d!345018 (= c!201817 ((_ is Nil!12117) lt!412464))))

(declare-fun e!774180 () (InoxSet T!22300))

(assert (=> d!345018 (= (content!1716 lt!412464) e!774180)))

(declare-fun b!1206874 () Bool)

(assert (=> b!1206874 (= e!774180 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206875 () Bool)

(assert (=> b!1206875 (= e!774180 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412464) true) (content!1716 (t!112557 lt!412464))))))

(assert (= (and d!345018 c!201817) b!1206874))

(assert (= (and d!345018 (not c!201817)) b!1206875))

(declare-fun m!1382149 () Bool)

(assert (=> b!1206875 m!1382149))

(declare-fun m!1382151 () Bool)

(assert (=> b!1206875 m!1382151))

(assert (=> d!344778 d!345018))

(declare-fun d!345020 () Bool)

(declare-fun c!201818 () Bool)

(assert (=> d!345020 (= c!201818 ((_ is Nil!12117) (t!112557 lt!412396)))))

(declare-fun e!774181 () (InoxSet T!22300))

(assert (=> d!345020 (= (content!1716 (t!112557 lt!412396)) e!774181)))

(declare-fun b!1206876 () Bool)

(assert (=> b!1206876 (= e!774181 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206877 () Bool)

(assert (=> b!1206877 (= e!774181 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (t!112557 lt!412396)) true) (content!1716 (t!112557 (t!112557 lt!412396)))))))

(assert (= (and d!345020 c!201818) b!1206876))

(assert (= (and d!345020 (not c!201818)) b!1206877))

(declare-fun m!1382153 () Bool)

(assert (=> b!1206877 m!1382153))

(assert (=> b!1206877 m!1382025))

(assert (=> d!344778 d!345020))

(assert (=> d!344778 d!344732))

(declare-fun b!1206878 () Bool)

(declare-fun e!774184 () List!12141)

(assert (=> b!1206878 (= e!774184 (t!112557 lt!412403))))

(declare-fun b!1206879 () Bool)

(declare-fun e!774186 () Int)

(assert (=> b!1206879 (= e!774186 0)))

(declare-fun b!1206880 () Bool)

(declare-fun call!84282 () Int)

(assert (=> b!1206880 (= e!774186 (- call!84282 (- 0 1)))))

(declare-fun d!345022 () Bool)

(declare-fun e!774185 () Bool)

(assert (=> d!345022 e!774185))

(declare-fun res!543128 () Bool)

(assert (=> d!345022 (=> (not res!543128) (not e!774185))))

(declare-fun lt!412542 () List!12141)

(assert (=> d!345022 (= res!543128 (= ((_ map implies) (content!1716 lt!412542) (content!1716 (t!112557 lt!412403))) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!774182 () List!12141)

(assert (=> d!345022 (= lt!412542 e!774182)))

(declare-fun c!201820 () Bool)

(assert (=> d!345022 (= c!201820 ((_ is Nil!12117) (t!112557 lt!412403)))))

(assert (=> d!345022 (= (drop!618 (t!112557 lt!412403) (- 0 1)) lt!412542)))

(declare-fun b!1206881 () Bool)

(declare-fun e!774183 () Int)

(assert (=> b!1206881 (= e!774183 e!774186)))

(declare-fun c!201819 () Bool)

(assert (=> b!1206881 (= c!201819 (>= (- 0 1) call!84282))))

(declare-fun b!1206882 () Bool)

(assert (=> b!1206882 (= e!774183 call!84282)))

(declare-fun bm!84277 () Bool)

(assert (=> bm!84277 (= call!84282 (size!9657 (t!112557 lt!412403)))))

(declare-fun b!1206883 () Bool)

(assert (=> b!1206883 (= e!774182 Nil!12117)))

(declare-fun b!1206884 () Bool)

(assert (=> b!1206884 (= e!774184 (drop!618 (t!112557 (t!112557 lt!412403)) (- (- 0 1) 1)))))

(declare-fun b!1206885 () Bool)

(assert (=> b!1206885 (= e!774185 (= (size!9657 lt!412542) e!774183))))

(declare-fun c!201821 () Bool)

(assert (=> b!1206885 (= c!201821 (<= (- 0 1) 0))))

(declare-fun b!1206886 () Bool)

(assert (=> b!1206886 (= e!774182 e!774184)))

(declare-fun c!201822 () Bool)

(assert (=> b!1206886 (= c!201822 (<= (- 0 1) 0))))

(assert (= (and d!345022 c!201820) b!1206883))

(assert (= (and d!345022 (not c!201820)) b!1206886))

(assert (= (and b!1206886 c!201822) b!1206878))

(assert (= (and b!1206886 (not c!201822)) b!1206884))

(assert (= (and d!345022 res!543128) b!1206885))

(assert (= (and b!1206885 c!201821) b!1206882))

(assert (= (and b!1206885 (not c!201821)) b!1206881))

(assert (= (and b!1206881 c!201819) b!1206879))

(assert (= (and b!1206881 (not c!201819)) b!1206880))

(assert (= (or b!1206882 b!1206881 b!1206880) bm!84277))

(declare-fun m!1382155 () Bool)

(assert (=> d!345022 m!1382155))

(assert (=> d!345022 m!1382043))

(assert (=> bm!84277 m!1381927))

(declare-fun m!1382157 () Bool)

(assert (=> b!1206884 m!1382157))

(declare-fun m!1382159 () Bool)

(assert (=> b!1206885 m!1382159))

(assert (=> b!1206314 d!345022))

(declare-fun e!774190 () List!12141)

(declare-fun b!1206887 () Bool)

(assert (=> b!1206887 (= e!774190 (Cons!12117 (h!17518 (t!112557 (drop!618 lt!412401 from!613))) (take!146 (t!112557 (t!112557 (drop!618 lt!412401 from!613))) (- (- (- until!61 from!613) 1) 1))))))

(declare-fun b!1206888 () Bool)

(declare-fun e!774188 () Int)

(assert (=> b!1206888 (= e!774188 (- (- until!61 from!613) 1))))

(declare-fun d!345024 () Bool)

(declare-fun e!774189 () Bool)

(assert (=> d!345024 e!774189))

(declare-fun res!543129 () Bool)

(assert (=> d!345024 (=> (not res!543129) (not e!774189))))

(declare-fun lt!412543 () List!12141)

(assert (=> d!345024 (= res!543129 (= ((_ map implies) (content!1716 lt!412543) (content!1716 (t!112557 (drop!618 lt!412401 from!613)))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!345024 (= lt!412543 e!774190)))

(declare-fun c!201824 () Bool)

(assert (=> d!345024 (= c!201824 (or ((_ is Nil!12117) (t!112557 (drop!618 lt!412401 from!613))) (<= (- (- until!61 from!613) 1) 0)))))

(assert (=> d!345024 (= (take!146 (t!112557 (drop!618 lt!412401 from!613)) (- (- until!61 from!613) 1)) lt!412543)))

(declare-fun b!1206889 () Bool)

(declare-fun e!774187 () Int)

(assert (=> b!1206889 (= e!774187 e!774188)))

(declare-fun c!201823 () Bool)

(assert (=> b!1206889 (= c!201823 (>= (- (- until!61 from!613) 1) (size!9657 (t!112557 (drop!618 lt!412401 from!613)))))))

(declare-fun b!1206890 () Bool)

(assert (=> b!1206890 (= e!774187 0)))

(declare-fun b!1206891 () Bool)

(assert (=> b!1206891 (= e!774189 (= (size!9657 lt!412543) e!774187))))

(declare-fun c!201825 () Bool)

(assert (=> b!1206891 (= c!201825 (<= (- (- until!61 from!613) 1) 0))))

(declare-fun b!1206892 () Bool)

(assert (=> b!1206892 (= e!774188 (size!9657 (t!112557 (drop!618 lt!412401 from!613))))))

(declare-fun b!1206893 () Bool)

(assert (=> b!1206893 (= e!774190 Nil!12117)))

(assert (= (and d!345024 c!201824) b!1206893))

(assert (= (and d!345024 (not c!201824)) b!1206887))

(assert (= (and d!345024 res!543129) b!1206891))

(assert (= (and b!1206891 c!201825) b!1206890))

(assert (= (and b!1206891 (not c!201825)) b!1206889))

(assert (= (and b!1206889 c!201823) b!1206892))

(assert (= (and b!1206889 (not c!201823)) b!1206888))

(assert (=> b!1206892 m!1381967))

(declare-fun m!1382161 () Bool)

(assert (=> d!345024 m!1382161))

(assert (=> d!345024 m!1381911))

(assert (=> b!1206889 m!1381967))

(declare-fun m!1382163 () Bool)

(assert (=> b!1206887 m!1382163))

(declare-fun m!1382165 () Bool)

(assert (=> b!1206891 m!1382165))

(assert (=> b!1206417 d!345024))

(declare-fun d!345026 () Bool)

(declare-fun lt!412544 () Int)

(assert (=> d!345026 (>= lt!412544 0)))

(declare-fun e!774191 () Int)

(assert (=> d!345026 (= lt!412544 e!774191)))

(declare-fun c!201826 () Bool)

(assert (=> d!345026 (= c!201826 ((_ is Nil!12117) lt!412459))))

(assert (=> d!345026 (= (size!9657 lt!412459) lt!412544)))

(declare-fun b!1206894 () Bool)

(assert (=> b!1206894 (= e!774191 0)))

(declare-fun b!1206895 () Bool)

(assert (=> b!1206895 (= e!774191 (+ 1 (size!9657 (t!112557 lt!412459))))))

(assert (= (and d!345026 c!201826) b!1206894))

(assert (= (and d!345026 (not c!201826)) b!1206895))

(declare-fun m!1382167 () Bool)

(assert (=> b!1206895 m!1382167))

(assert (=> b!1206421 d!345026))

(declare-fun e!774195 () List!12141)

(declare-fun b!1206896 () Bool)

(assert (=> b!1206896 (= e!774195 (Cons!12117 (h!17518 (t!112557 (drop!618 (ite c!201498 lt!412396 r!2028) 0))) (take!146 (t!112557 (t!112557 (drop!618 (ite c!201498 lt!412396 r!2028) 0))) (- (- (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0) 1) 1))))))

(declare-fun b!1206897 () Bool)

(declare-fun e!774193 () Int)

(assert (=> b!1206897 (= e!774193 (- (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0) 1))))

(declare-fun d!345028 () Bool)

(declare-fun e!774194 () Bool)

(assert (=> d!345028 e!774194))

(declare-fun res!543130 () Bool)

(assert (=> d!345028 (=> (not res!543130) (not e!774194))))

(declare-fun lt!412545 () List!12141)

(assert (=> d!345028 (= res!543130 (= ((_ map implies) (content!1716 lt!412545) (content!1716 (t!112557 (drop!618 (ite c!201498 lt!412396 r!2028) 0)))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!345028 (= lt!412545 e!774195)))

(declare-fun c!201828 () Bool)

(assert (=> d!345028 (= c!201828 (or ((_ is Nil!12117) (t!112557 (drop!618 (ite c!201498 lt!412396 r!2028) 0))) (<= (- (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0) 1) 0)))))

(assert (=> d!345028 (= (take!146 (t!112557 (drop!618 (ite c!201498 lt!412396 r!2028) 0)) (- (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0) 1)) lt!412545)))

(declare-fun b!1206898 () Bool)

(declare-fun e!774192 () Int)

(assert (=> b!1206898 (= e!774192 e!774193)))

(declare-fun c!201827 () Bool)

(assert (=> b!1206898 (= c!201827 (>= (- (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0) 1) (size!9657 (t!112557 (drop!618 (ite c!201498 lt!412396 r!2028) 0)))))))

(declare-fun b!1206899 () Bool)

(assert (=> b!1206899 (= e!774192 0)))

(declare-fun b!1206900 () Bool)

(assert (=> b!1206900 (= e!774194 (= (size!9657 lt!412545) e!774192))))

(declare-fun c!201829 () Bool)

(assert (=> b!1206900 (= c!201829 (<= (- (- (ite c!201498 (- until!61 1) (- (- until!61 1) lt!412398)) 0) 1) 0))))

(declare-fun b!1206901 () Bool)

(assert (=> b!1206901 (= e!774193 (size!9657 (t!112557 (drop!618 (ite c!201498 lt!412396 r!2028) 0))))))

(declare-fun b!1206902 () Bool)

(assert (=> b!1206902 (= e!774195 Nil!12117)))

(assert (= (and d!345028 c!201828) b!1206902))

(assert (= (and d!345028 (not c!201828)) b!1206896))

(assert (= (and d!345028 res!543130) b!1206900))

(assert (= (and b!1206900 c!201829) b!1206899))

(assert (= (and b!1206900 (not c!201829)) b!1206898))

(assert (= (and b!1206898 c!201827) b!1206901))

(assert (= (and b!1206898 (not c!201827)) b!1206897))

(assert (=> b!1206901 m!1382119))

(declare-fun m!1382169 () Bool)

(assert (=> d!345028 m!1382169))

(assert (=> d!345028 m!1381935))

(assert (=> b!1206898 m!1382119))

(declare-fun m!1382171 () Bool)

(assert (=> b!1206896 m!1382171))

(declare-fun m!1382173 () Bool)

(assert (=> b!1206900 m!1382173))

(assert (=> b!1206435 d!345028))

(assert (=> b!1206332 d!345020))

(declare-fun d!345030 () Bool)

(assert (=> d!345030 (= (slice!521 (ite c!201605 r!2028 lt!412396) (ite c!201605 (- 0 call!84257) 0) (ite c!201605 (- (- until!61 1) call!84257) e!773926)) (take!146 (drop!618 (ite c!201605 r!2028 lt!412396) (ite c!201605 (- 0 call!84257) 0)) (- (ite c!201605 (- (- until!61 1) call!84257) e!773926) (ite c!201605 (- 0 call!84257) 0))))))

(declare-fun bs!288469 () Bool)

(assert (= bs!288469 d!345030))

(declare-fun m!1382175 () Bool)

(assert (=> bs!288469 m!1382175))

(assert (=> bs!288469 m!1382175))

(declare-fun m!1382177 () Bool)

(assert (=> bs!288469 m!1382177))

(assert (=> bm!84251 d!345030))

(declare-fun d!345032 () Bool)

(declare-fun lt!412546 () Int)

(assert (=> d!345032 (>= lt!412546 0)))

(declare-fun e!774196 () Int)

(assert (=> d!345032 (= lt!412546 e!774196)))

(declare-fun c!201830 () Bool)

(assert (=> d!345032 (= c!201830 ((_ is Nil!12117) lt!412437))))

(assert (=> d!345032 (= (size!9657 lt!412437) lt!412546)))

(declare-fun b!1206903 () Bool)

(assert (=> b!1206903 (= e!774196 0)))

(declare-fun b!1206904 () Bool)

(assert (=> b!1206904 (= e!774196 (+ 1 (size!9657 (t!112557 lt!412437))))))

(assert (= (and d!345032 c!201830) b!1206903))

(assert (= (and d!345032 (not c!201830)) b!1206904))

(declare-fun m!1382179 () Bool)

(assert (=> b!1206904 m!1382179))

(assert (=> b!1206259 d!345032))

(assert (=> b!1206259 d!344952))

(assert (=> b!1206259 d!344742))

(assert (=> b!1206437 d!345004))

(declare-fun d!345034 () Bool)

(declare-fun c!201831 () Bool)

(assert (=> d!345034 (= c!201831 ((_ is Nil!12117) lt!412448))))

(declare-fun e!774197 () (InoxSet T!22300))

(assert (=> d!345034 (= (content!1716 lt!412448) e!774197)))

(declare-fun b!1206905 () Bool)

(assert (=> b!1206905 (= e!774197 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206906 () Bool)

(assert (=> b!1206906 (= e!774197 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412448) true) (content!1716 (t!112557 lt!412448))))))

(assert (= (and d!345034 c!201831) b!1206905))

(assert (= (and d!345034 (not c!201831)) b!1206906))

(declare-fun m!1382181 () Bool)

(assert (=> b!1206906 m!1382181))

(declare-fun m!1382183 () Bool)

(assert (=> b!1206906 m!1382183))

(assert (=> d!344722 d!345034))

(declare-fun d!345036 () Bool)

(declare-fun c!201832 () Bool)

(assert (=> d!345036 (= c!201832 ((_ is Nil!12117) call!84233))))

(declare-fun e!774198 () (InoxSet T!22300))

(assert (=> d!345036 (= (content!1716 call!84233) e!774198)))

(declare-fun b!1206907 () Bool)

(assert (=> b!1206907 (= e!774198 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206908 () Bool)

(assert (=> b!1206908 (= e!774198 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 call!84233) true) (content!1716 (t!112557 call!84233))))))

(assert (= (and d!345036 c!201832) b!1206907))

(assert (= (and d!345036 (not c!201832)) b!1206908))

(declare-fun m!1382185 () Bool)

(assert (=> b!1206908 m!1382185))

(declare-fun m!1382187 () Bool)

(assert (=> b!1206908 m!1382187))

(assert (=> d!344722 d!345036))

(declare-fun d!345038 () Bool)

(declare-fun c!201833 () Bool)

(assert (=> d!345038 (= c!201833 ((_ is Nil!12117) (slice!521 r!2028 0 (- (- until!61 1) call!84234))))))

(declare-fun e!774199 () (InoxSet T!22300))

(assert (=> d!345038 (= (content!1716 (slice!521 r!2028 0 (- (- until!61 1) call!84234))) e!774199)))

(declare-fun b!1206909 () Bool)

(assert (=> b!1206909 (= e!774199 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206910 () Bool)

(assert (=> b!1206910 (= e!774199 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (slice!521 r!2028 0 (- (- until!61 1) call!84234))) true) (content!1716 (t!112557 (slice!521 r!2028 0 (- (- until!61 1) call!84234))))))))

(assert (= (and d!345038 c!201833) b!1206909))

(assert (= (and d!345038 (not c!201833)) b!1206910))

(declare-fun m!1382189 () Bool)

(assert (=> b!1206910 m!1382189))

(declare-fun m!1382191 () Bool)

(assert (=> b!1206910 m!1382191))

(assert (=> d!344722 d!345038))

(declare-fun d!345040 () Bool)

(declare-fun lt!412547 () Int)

(assert (=> d!345040 (>= lt!412547 0)))

(declare-fun e!774200 () Int)

(assert (=> d!345040 (= lt!412547 e!774200)))

(declare-fun c!201834 () Bool)

(assert (=> d!345040 (= c!201834 ((_ is Nil!12117) lt!412449))))

(assert (=> d!345040 (= (size!9657 lt!412449) lt!412547)))

(declare-fun b!1206911 () Bool)

(assert (=> b!1206911 (= e!774200 0)))

(declare-fun b!1206912 () Bool)

(assert (=> b!1206912 (= e!774200 (+ 1 (size!9657 (t!112557 lt!412449))))))

(assert (= (and d!345040 c!201834) b!1206911))

(assert (= (and d!345040 (not c!201834)) b!1206912))

(declare-fun m!1382193 () Bool)

(assert (=> b!1206912 m!1382193))

(assert (=> b!1206323 d!345040))

(assert (=> b!1206323 d!344702))

(assert (=> b!1206323 d!344686))

(assert (=> b!1206406 d!344874))

(declare-fun d!345042 () Bool)

(declare-fun c!201835 () Bool)

(assert (=> d!345042 (= c!201835 ((_ is Nil!12117) (t!112557 r!2028)))))

(declare-fun e!774201 () (InoxSet T!22300))

(assert (=> d!345042 (= (content!1716 (t!112557 r!2028)) e!774201)))

(declare-fun b!1206913 () Bool)

(assert (=> b!1206913 (= e!774201 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206914 () Bool)

(assert (=> b!1206914 (= e!774201 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (t!112557 r!2028)) true) (content!1716 (t!112557 (t!112557 r!2028)))))))

(assert (= (and d!345042 c!201835) b!1206913))

(assert (= (and d!345042 (not c!201835)) b!1206914))

(declare-fun m!1382195 () Bool)

(assert (=> b!1206914 m!1382195))

(declare-fun m!1382197 () Bool)

(assert (=> b!1206914 m!1382197))

(assert (=> b!1206334 d!345042))

(assert (=> b!1206340 d!344880))

(assert (=> b!1206366 d!344886))

(declare-fun d!345044 () Bool)

(declare-fun c!201836 () Bool)

(assert (=> d!345044 (= c!201836 ((_ is Nil!12117) lt!412460))))

(declare-fun e!774202 () (InoxSet T!22300))

(assert (=> d!345044 (= (content!1716 lt!412460) e!774202)))

(declare-fun b!1206915 () Bool)

(assert (=> b!1206915 (= e!774202 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206916 () Bool)

(assert (=> b!1206916 (= e!774202 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412460) true) (content!1716 (t!112557 lt!412460))))))

(assert (= (and d!345044 c!201836) b!1206915))

(assert (= (and d!345044 (not c!201836)) b!1206916))

(declare-fun m!1382199 () Bool)

(assert (=> b!1206916 m!1382199))

(declare-fun m!1382201 () Bool)

(assert (=> b!1206916 m!1382201))

(assert (=> d!344768 d!345044))

(declare-fun d!345046 () Bool)

(declare-fun c!201837 () Bool)

(assert (=> d!345046 (= c!201837 ((_ is Nil!12117) lt!412401))))

(declare-fun e!774203 () (InoxSet T!22300))

(assert (=> d!345046 (= (content!1716 lt!412401) e!774203)))

(declare-fun b!1206917 () Bool)

(assert (=> b!1206917 (= e!774203 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206918 () Bool)

(assert (=> b!1206918 (= e!774203 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412401) true) (content!1716 (t!112557 lt!412401))))))

(assert (= (and d!345046 c!201837) b!1206917))

(assert (= (and d!345046 (not c!201837)) b!1206918))

(declare-fun m!1382203 () Bool)

(assert (=> b!1206918 m!1382203))

(assert (=> b!1206918 m!1382133))

(assert (=> d!344768 d!345046))

(declare-fun d!345048 () Bool)

(declare-fun lt!412548 () Int)

(assert (=> d!345048 (>= lt!412548 0)))

(declare-fun e!774204 () Int)

(assert (=> d!345048 (= lt!412548 e!774204)))

(declare-fun c!201838 () Bool)

(assert (=> d!345048 (= c!201838 ((_ is Nil!12117) lt!412460))))

(assert (=> d!345048 (= (size!9657 lt!412460) lt!412548)))

(declare-fun b!1206919 () Bool)

(assert (=> b!1206919 (= e!774204 0)))

(declare-fun b!1206920 () Bool)

(assert (=> b!1206920 (= e!774204 (+ 1 (size!9657 (t!112557 lt!412460))))))

(assert (= (and d!345048 c!201838) b!1206919))

(assert (= (and d!345048 (not c!201838)) b!1206920))

(declare-fun m!1382205 () Bool)

(assert (=> b!1206920 m!1382205))

(assert (=> b!1206431 d!345048))

(declare-fun b!1206921 () Bool)

(declare-fun e!774208 () List!12141)

(assert (=> b!1206921 (= e!774208 (Cons!12117 (h!17518 (drop!618 (ite c!201519 r!2028 lt!412396) (ite c!201519 (- 0 call!84234) 0))) (take!146 (t!112557 (drop!618 (ite c!201519 r!2028 lt!412396) (ite c!201519 (- 0 call!84234) 0))) (- (- (ite c!201519 (- (- until!61 1) call!84234) e!773809) (ite c!201519 (- 0 call!84234) 0)) 1))))))

(declare-fun b!1206922 () Bool)

(declare-fun e!774206 () Int)

(assert (=> b!1206922 (= e!774206 (- (ite c!201519 (- (- until!61 1) call!84234) e!773809) (ite c!201519 (- 0 call!84234) 0)))))

(declare-fun d!345050 () Bool)

(declare-fun e!774207 () Bool)

(assert (=> d!345050 e!774207))

(declare-fun res!543131 () Bool)

(assert (=> d!345050 (=> (not res!543131) (not e!774207))))

(declare-fun lt!412549 () List!12141)

(assert (=> d!345050 (= res!543131 (= ((_ map implies) (content!1716 lt!412549) (content!1716 (drop!618 (ite c!201519 r!2028 lt!412396) (ite c!201519 (- 0 call!84234) 0)))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!345050 (= lt!412549 e!774208)))

(declare-fun c!201840 () Bool)

(assert (=> d!345050 (= c!201840 (or ((_ is Nil!12117) (drop!618 (ite c!201519 r!2028 lt!412396) (ite c!201519 (- 0 call!84234) 0))) (<= (- (ite c!201519 (- (- until!61 1) call!84234) e!773809) (ite c!201519 (- 0 call!84234) 0)) 0)))))

(assert (=> d!345050 (= (take!146 (drop!618 (ite c!201519 r!2028 lt!412396) (ite c!201519 (- 0 call!84234) 0)) (- (ite c!201519 (- (- until!61 1) call!84234) e!773809) (ite c!201519 (- 0 call!84234) 0))) lt!412549)))

(declare-fun b!1206923 () Bool)

(declare-fun e!774205 () Int)

(assert (=> b!1206923 (= e!774205 e!774206)))

(declare-fun c!201839 () Bool)

(assert (=> b!1206923 (= c!201839 (>= (- (ite c!201519 (- (- until!61 1) call!84234) e!773809) (ite c!201519 (- 0 call!84234) 0)) (size!9657 (drop!618 (ite c!201519 r!2028 lt!412396) (ite c!201519 (- 0 call!84234) 0)))))))

(declare-fun b!1206924 () Bool)

(assert (=> b!1206924 (= e!774205 0)))

(declare-fun b!1206925 () Bool)

(assert (=> b!1206925 (= e!774207 (= (size!9657 lt!412549) e!774205))))

(declare-fun c!201841 () Bool)

(assert (=> b!1206925 (= c!201841 (<= (- (ite c!201519 (- (- until!61 1) call!84234) e!773809) (ite c!201519 (- 0 call!84234) 0)) 0))))

(declare-fun b!1206926 () Bool)

(assert (=> b!1206926 (= e!774206 (size!9657 (drop!618 (ite c!201519 r!2028 lt!412396) (ite c!201519 (- 0 call!84234) 0))))))

(declare-fun b!1206927 () Bool)

(assert (=> b!1206927 (= e!774208 Nil!12117)))

(assert (= (and d!345050 c!201840) b!1206927))

(assert (= (and d!345050 (not c!201840)) b!1206921))

(assert (= (and d!345050 res!543131) b!1206925))

(assert (= (and b!1206925 c!201841) b!1206924))

(assert (= (and b!1206925 (not c!201841)) b!1206923))

(assert (= (and b!1206923 c!201839) b!1206926))

(assert (= (and b!1206923 (not c!201839)) b!1206922))

(assert (=> b!1206926 m!1381643))

(declare-fun m!1382207 () Bool)

(assert (=> b!1206926 m!1382207))

(declare-fun m!1382209 () Bool)

(assert (=> d!345050 m!1382209))

(assert (=> d!345050 m!1381643))

(declare-fun m!1382211 () Bool)

(assert (=> d!345050 m!1382211))

(assert (=> b!1206923 m!1381643))

(assert (=> b!1206923 m!1382207))

(declare-fun m!1382213 () Bool)

(assert (=> b!1206921 m!1382213))

(declare-fun m!1382215 () Bool)

(assert (=> b!1206925 m!1382215))

(assert (=> d!344776 d!345050))

(declare-fun b!1206928 () Bool)

(declare-fun e!774211 () List!12141)

(assert (=> b!1206928 (= e!774211 (ite c!201519 r!2028 lt!412396))))

(declare-fun b!1206929 () Bool)

(declare-fun e!774213 () Int)

(assert (=> b!1206929 (= e!774213 0)))

(declare-fun call!84283 () Int)

(declare-fun b!1206930 () Bool)

(assert (=> b!1206930 (= e!774213 (- call!84283 (ite c!201519 (- 0 call!84234) 0)))))

(declare-fun d!345052 () Bool)

(declare-fun e!774212 () Bool)

(assert (=> d!345052 e!774212))

(declare-fun res!543132 () Bool)

(assert (=> d!345052 (=> (not res!543132) (not e!774212))))

(declare-fun lt!412550 () List!12141)

(assert (=> d!345052 (= res!543132 (= ((_ map implies) (content!1716 lt!412550) (content!1716 (ite c!201519 r!2028 lt!412396))) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!774209 () List!12141)

(assert (=> d!345052 (= lt!412550 e!774209)))

(declare-fun c!201843 () Bool)

(assert (=> d!345052 (= c!201843 ((_ is Nil!12117) (ite c!201519 r!2028 lt!412396)))))

(assert (=> d!345052 (= (drop!618 (ite c!201519 r!2028 lt!412396) (ite c!201519 (- 0 call!84234) 0)) lt!412550)))

(declare-fun b!1206931 () Bool)

(declare-fun e!774210 () Int)

(assert (=> b!1206931 (= e!774210 e!774213)))

(declare-fun c!201842 () Bool)

(assert (=> b!1206931 (= c!201842 (>= (ite c!201519 (- 0 call!84234) 0) call!84283))))

(declare-fun b!1206932 () Bool)

(assert (=> b!1206932 (= e!774210 call!84283)))

(declare-fun bm!84278 () Bool)

(assert (=> bm!84278 (= call!84283 (size!9657 (ite c!201519 r!2028 lt!412396)))))

(declare-fun b!1206933 () Bool)

(assert (=> b!1206933 (= e!774209 Nil!12117)))

(declare-fun b!1206934 () Bool)

(assert (=> b!1206934 (= e!774211 (drop!618 (t!112557 (ite c!201519 r!2028 lt!412396)) (- (ite c!201519 (- 0 call!84234) 0) 1)))))

(declare-fun b!1206935 () Bool)

(assert (=> b!1206935 (= e!774212 (= (size!9657 lt!412550) e!774210))))

(declare-fun c!201844 () Bool)

(assert (=> b!1206935 (= c!201844 (<= (ite c!201519 (- 0 call!84234) 0) 0))))

(declare-fun b!1206936 () Bool)

(assert (=> b!1206936 (= e!774209 e!774211)))

(declare-fun c!201845 () Bool)

(assert (=> b!1206936 (= c!201845 (<= (ite c!201519 (- 0 call!84234) 0) 0))))

(assert (= (and d!345052 c!201843) b!1206933))

(assert (= (and d!345052 (not c!201843)) b!1206936))

(assert (= (and b!1206936 c!201845) b!1206928))

(assert (= (and b!1206936 (not c!201845)) b!1206934))

(assert (= (and d!345052 res!543132) b!1206935))

(assert (= (and b!1206935 c!201844) b!1206932))

(assert (= (and b!1206935 (not c!201844)) b!1206931))

(assert (= (and b!1206931 c!201842) b!1206929))

(assert (= (and b!1206931 (not c!201842)) b!1206930))

(assert (= (or b!1206932 b!1206931 b!1206930) bm!84278))

(declare-fun m!1382217 () Bool)

(assert (=> d!345052 m!1382217))

(declare-fun m!1382219 () Bool)

(assert (=> d!345052 m!1382219))

(declare-fun m!1382221 () Bool)

(assert (=> bm!84278 m!1382221))

(declare-fun m!1382223 () Bool)

(assert (=> b!1206934 m!1382223))

(declare-fun m!1382225 () Bool)

(assert (=> b!1206935 m!1382225))

(assert (=> d!344776 d!345052))

(declare-fun d!345054 () Bool)

(declare-fun lt!412551 () Int)

(assert (=> d!345054 (>= lt!412551 0)))

(declare-fun e!774214 () Int)

(assert (=> d!345054 (= lt!412551 e!774214)))

(declare-fun c!201846 () Bool)

(assert (=> d!345054 (= c!201846 ((_ is Nil!12117) lt!412447))))

(assert (=> d!345054 (= (size!9657 lt!412447) lt!412551)))

(declare-fun b!1206937 () Bool)

(assert (=> b!1206937 (= e!774214 0)))

(declare-fun b!1206938 () Bool)

(assert (=> b!1206938 (= e!774214 (+ 1 (size!9657 (t!112557 lt!412447))))))

(assert (= (and d!345054 c!201846) b!1206937))

(assert (= (and d!345054 (not c!201846)) b!1206938))

(declare-fun m!1382227 () Bool)

(assert (=> b!1206938 m!1382227))

(assert (=> b!1206315 d!345054))

(declare-fun b!1206939 () Bool)

(declare-fun e!774217 () List!12141)

(assert (=> b!1206939 (= e!774217 (t!112557 l!2744))))

(declare-fun b!1206940 () Bool)

(declare-fun e!774219 () Int)

(assert (=> b!1206940 (= e!774219 0)))

(declare-fun b!1206941 () Bool)

(declare-fun call!84284 () Int)

(assert (=> b!1206941 (= e!774219 (- call!84284 (- from!613 1)))))

(declare-fun d!345056 () Bool)

(declare-fun e!774218 () Bool)

(assert (=> d!345056 e!774218))

(declare-fun res!543133 () Bool)

(assert (=> d!345056 (=> (not res!543133) (not e!774218))))

(declare-fun lt!412552 () List!12141)

(assert (=> d!345056 (= res!543133 (= ((_ map implies) (content!1716 lt!412552) (content!1716 (t!112557 l!2744))) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!774215 () List!12141)

(assert (=> d!345056 (= lt!412552 e!774215)))

(declare-fun c!201848 () Bool)

(assert (=> d!345056 (= c!201848 ((_ is Nil!12117) (t!112557 l!2744)))))

(assert (=> d!345056 (= (drop!618 (t!112557 l!2744) (- from!613 1)) lt!412552)))

(declare-fun b!1206942 () Bool)

(declare-fun e!774216 () Int)

(assert (=> b!1206942 (= e!774216 e!774219)))

(declare-fun c!201847 () Bool)

(assert (=> b!1206942 (= c!201847 (>= (- from!613 1) call!84284))))

(declare-fun b!1206943 () Bool)

(assert (=> b!1206943 (= e!774216 call!84284)))

(declare-fun bm!84279 () Bool)

(assert (=> bm!84279 (= call!84284 (size!9657 (t!112557 l!2744)))))

(declare-fun b!1206944 () Bool)

(assert (=> b!1206944 (= e!774215 Nil!12117)))

(declare-fun b!1206945 () Bool)

(assert (=> b!1206945 (= e!774217 (drop!618 (t!112557 (t!112557 l!2744)) (- (- from!613 1) 1)))))

(declare-fun b!1206946 () Bool)

(assert (=> b!1206946 (= e!774218 (= (size!9657 lt!412552) e!774216))))

(declare-fun c!201849 () Bool)

(assert (=> b!1206946 (= c!201849 (<= (- from!613 1) 0))))

(declare-fun b!1206947 () Bool)

(assert (=> b!1206947 (= e!774215 e!774217)))

(declare-fun c!201850 () Bool)

(assert (=> b!1206947 (= c!201850 (<= (- from!613 1) 0))))

(assert (= (and d!345056 c!201848) b!1206944))

(assert (= (and d!345056 (not c!201848)) b!1206947))

(assert (= (and b!1206947 c!201850) b!1206939))

(assert (= (and b!1206947 (not c!201850)) b!1206945))

(assert (= (and d!345056 res!543133) b!1206946))

(assert (= (and b!1206946 c!201849) b!1206943))

(assert (= (and b!1206946 (not c!201849)) b!1206942))

(assert (= (and b!1206942 c!201847) b!1206940))

(assert (= (and b!1206942 (not c!201847)) b!1206941))

(assert (= (or b!1206943 b!1206942 b!1206941) bm!84279))

(declare-fun m!1382229 () Bool)

(assert (=> d!345056 m!1382229))

(assert (=> d!345056 m!1381499))

(assert (=> bm!84279 m!1381373))

(declare-fun m!1382231 () Bool)

(assert (=> b!1206945 m!1382231))

(declare-fun m!1382233 () Bool)

(assert (=> b!1206946 m!1382233))

(assert (=> b!1206414 d!345056))

(declare-fun d!345058 () Bool)

(declare-fun lt!412553 () Int)

(assert (=> d!345058 (>= lt!412553 0)))

(declare-fun e!774220 () Int)

(assert (=> d!345058 (= lt!412553 e!774220)))

(declare-fun c!201851 () Bool)

(assert (=> d!345058 (= c!201851 ((_ is Nil!12117) (t!112557 (t!112557 lt!412396))))))

(assert (=> d!345058 (= (size!9657 (t!112557 (t!112557 lt!412396))) lt!412553)))

(declare-fun b!1206948 () Bool)

(assert (=> b!1206948 (= e!774220 0)))

(declare-fun b!1206949 () Bool)

(assert (=> b!1206949 (= e!774220 (+ 1 (size!9657 (t!112557 (t!112557 (t!112557 lt!412396))))))))

(assert (= (and d!345058 c!201851) b!1206948))

(assert (= (and d!345058 (not c!201851)) b!1206949))

(declare-fun m!1382235 () Bool)

(assert (=> b!1206949 m!1382235))

(assert (=> b!1206256 d!345058))

(declare-fun e!774222 () List!12141)

(declare-fun b!1206950 () Bool)

(assert (=> b!1206950 (= e!774222 (slice!521 r!2028 0 (- (- until!61 1) call!84234)))))

(declare-fun lt!412554 () List!12141)

(declare-fun b!1206953 () Bool)

(declare-fun e!774221 () Bool)

(assert (=> b!1206953 (= e!774221 (or (not (= (slice!521 r!2028 0 (- (- until!61 1) call!84234)) Nil!12117)) (= lt!412554 (t!112557 call!84233))))))

(declare-fun b!1206951 () Bool)

(assert (=> b!1206951 (= e!774222 (Cons!12117 (h!17518 (t!112557 call!84233)) (++!3139 (t!112557 (t!112557 call!84233)) (slice!521 r!2028 0 (- (- until!61 1) call!84234)))))))

(declare-fun d!345060 () Bool)

(assert (=> d!345060 e!774221))

(declare-fun res!543134 () Bool)

(assert (=> d!345060 (=> (not res!543134) (not e!774221))))

(assert (=> d!345060 (= res!543134 (= (content!1716 lt!412554) ((_ map or) (content!1716 (t!112557 call!84233)) (content!1716 (slice!521 r!2028 0 (- (- until!61 1) call!84234))))))))

(assert (=> d!345060 (= lt!412554 e!774222)))

(declare-fun c!201852 () Bool)

(assert (=> d!345060 (= c!201852 ((_ is Nil!12117) (t!112557 call!84233)))))

(assert (=> d!345060 (= (++!3139 (t!112557 call!84233) (slice!521 r!2028 0 (- (- until!61 1) call!84234))) lt!412554)))

(declare-fun b!1206952 () Bool)

(declare-fun res!543135 () Bool)

(assert (=> b!1206952 (=> (not res!543135) (not e!774221))))

(assert (=> b!1206952 (= res!543135 (= (size!9657 lt!412554) (+ (size!9657 (t!112557 call!84233)) (size!9657 (slice!521 r!2028 0 (- (- until!61 1) call!84234))))))))

(assert (= (and d!345060 c!201852) b!1206950))

(assert (= (and d!345060 (not c!201852)) b!1206951))

(assert (= (and d!345060 res!543134) b!1206952))

(assert (= (and b!1206952 res!543135) b!1206953))

(assert (=> b!1206951 m!1381345))

(declare-fun m!1382237 () Bool)

(assert (=> b!1206951 m!1382237))

(declare-fun m!1382239 () Bool)

(assert (=> d!345060 m!1382239))

(assert (=> d!345060 m!1382187))

(assert (=> d!345060 m!1381345))

(assert (=> d!345060 m!1381483))

(declare-fun m!1382241 () Bool)

(assert (=> b!1206952 m!1382241))

(assert (=> b!1206952 m!1381979))

(assert (=> b!1206952 m!1381345))

(assert (=> b!1206952 m!1381489))

(assert (=> b!1206318 d!345060))

(assert (=> b!1206422 d!344916))

(declare-fun b!1206954 () Bool)

(declare-fun e!774225 () List!12141)

(assert (=> b!1206954 (= e!774225 (t!112557 (ite c!201496 r!2028 lt!412396)))))

(declare-fun b!1206955 () Bool)

(declare-fun e!774227 () Int)

(assert (=> b!1206955 (= e!774227 0)))

(declare-fun b!1206956 () Bool)

(declare-fun call!84285 () Int)

(assert (=> b!1206956 (= e!774227 (- call!84285 (- (ite c!201496 (- lt!412398) 0) 1)))))

(declare-fun d!345062 () Bool)

(declare-fun e!774226 () Bool)

(assert (=> d!345062 e!774226))

(declare-fun res!543136 () Bool)

(assert (=> d!345062 (=> (not res!543136) (not e!774226))))

(declare-fun lt!412555 () List!12141)

(assert (=> d!345062 (= res!543136 (= ((_ map implies) (content!1716 lt!412555) (content!1716 (t!112557 (ite c!201496 r!2028 lt!412396)))) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!774223 () List!12141)

(assert (=> d!345062 (= lt!412555 e!774223)))

(declare-fun c!201854 () Bool)

(assert (=> d!345062 (= c!201854 ((_ is Nil!12117) (t!112557 (ite c!201496 r!2028 lt!412396))))))

(assert (=> d!345062 (= (drop!618 (t!112557 (ite c!201496 r!2028 lt!412396)) (- (ite c!201496 (- lt!412398) 0) 1)) lt!412555)))

(declare-fun b!1206957 () Bool)

(declare-fun e!774224 () Int)

(assert (=> b!1206957 (= e!774224 e!774227)))

(declare-fun c!201853 () Bool)

(assert (=> b!1206957 (= c!201853 (>= (- (ite c!201496 (- lt!412398) 0) 1) call!84285))))

(declare-fun b!1206958 () Bool)

(assert (=> b!1206958 (= e!774224 call!84285)))

(declare-fun bm!84280 () Bool)

(assert (=> bm!84280 (= call!84285 (size!9657 (t!112557 (ite c!201496 r!2028 lt!412396))))))

(declare-fun b!1206959 () Bool)

(assert (=> b!1206959 (= e!774223 Nil!12117)))

(declare-fun b!1206960 () Bool)

(assert (=> b!1206960 (= e!774225 (drop!618 (t!112557 (t!112557 (ite c!201496 r!2028 lt!412396))) (- (- (ite c!201496 (- lt!412398) 0) 1) 1)))))

(declare-fun b!1206961 () Bool)

(assert (=> b!1206961 (= e!774226 (= (size!9657 lt!412555) e!774224))))

(declare-fun c!201855 () Bool)

(assert (=> b!1206961 (= c!201855 (<= (- (ite c!201496 (- lt!412398) 0) 1) 0))))

(declare-fun b!1206962 () Bool)

(assert (=> b!1206962 (= e!774223 e!774225)))

(declare-fun c!201856 () Bool)

(assert (=> b!1206962 (= c!201856 (<= (- (ite c!201496 (- lt!412398) 0) 1) 0))))

(assert (= (and d!345062 c!201854) b!1206959))

(assert (= (and d!345062 (not c!201854)) b!1206962))

(assert (= (and b!1206962 c!201856) b!1206954))

(assert (= (and b!1206962 (not c!201856)) b!1206960))

(assert (= (and d!345062 res!543136) b!1206961))

(assert (= (and b!1206961 c!201855) b!1206958))

(assert (= (and b!1206961 (not c!201855)) b!1206957))

(assert (= (and b!1206957 c!201853) b!1206955))

(assert (= (and b!1206957 (not c!201853)) b!1206956))

(assert (= (or b!1206958 b!1206957 b!1206956) bm!84280))

(declare-fun m!1382243 () Bool)

(assert (=> d!345062 m!1382243))

(assert (=> d!345062 m!1382017))

(assert (=> bm!84280 m!1382083))

(declare-fun m!1382245 () Bool)

(assert (=> b!1206960 m!1382245))

(declare-fun m!1382247 () Bool)

(assert (=> b!1206961 m!1382247))

(assert (=> b!1206374 d!345062))

(declare-fun d!345064 () Bool)

(declare-fun c!201857 () Bool)

(assert (=> d!345064 (= c!201857 ((_ is Nil!12117) lt!412463))))

(declare-fun e!774228 () (InoxSet T!22300))

(assert (=> d!345064 (= (content!1716 lt!412463) e!774228)))

(declare-fun b!1206963 () Bool)

(assert (=> b!1206963 (= e!774228 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206964 () Bool)

(assert (=> b!1206964 (= e!774228 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412463) true) (content!1716 (t!112557 lt!412463))))))

(assert (= (and d!345064 c!201857) b!1206963))

(assert (= (and d!345064 (not c!201857)) b!1206964))

(declare-fun m!1382249 () Bool)

(assert (=> b!1206964 m!1382249))

(declare-fun m!1382251 () Bool)

(assert (=> b!1206964 m!1382251))

(assert (=> d!344774 d!345064))

(declare-fun c!201858 () Bool)

(declare-fun d!345066 () Bool)

(assert (=> d!345066 (= c!201858 ((_ is Nil!12117) (ite c!201498 lt!412396 r!2028)))))

(declare-fun e!774229 () (InoxSet T!22300))

(assert (=> d!345066 (= (content!1716 (ite c!201498 lt!412396 r!2028)) e!774229)))

(declare-fun b!1206965 () Bool)

(assert (=> b!1206965 (= e!774229 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206966 () Bool)

(assert (=> b!1206966 (= e!774229 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (ite c!201498 lt!412396 r!2028)) true) (content!1716 (t!112557 (ite c!201498 lt!412396 r!2028)))))))

(assert (= (and d!345066 c!201858) b!1206965))

(assert (= (and d!345066 (not c!201858)) b!1206966))

(declare-fun m!1382253 () Bool)

(assert (=> b!1206966 m!1382253))

(assert (=> b!1206966 m!1382143))

(assert (=> d!344774 d!345066))

(declare-fun d!345068 () Bool)

(declare-fun c!201859 () Bool)

(assert (=> d!345068 (= c!201859 ((_ is Nil!12117) lt!412449))))

(declare-fun e!774230 () (InoxSet T!22300))

(assert (=> d!345068 (= (content!1716 lt!412449) e!774230)))

(declare-fun b!1206967 () Bool)

(assert (=> b!1206967 (= e!774230 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206968 () Bool)

(assert (=> b!1206968 (= e!774230 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412449) true) (content!1716 (t!112557 lt!412449))))))

(assert (= (and d!345068 c!201859) b!1206967))

(assert (= (and d!345068 (not c!201859)) b!1206968))

(declare-fun m!1382255 () Bool)

(assert (=> b!1206968 m!1382255))

(declare-fun m!1382257 () Bool)

(assert (=> b!1206968 m!1382257))

(assert (=> d!344726 d!345068))

(assert (=> d!344726 d!344970))

(assert (=> d!344726 d!344732))

(declare-fun e!774234 () List!12141)

(declare-fun b!1206969 () Bool)

(assert (=> b!1206969 (= e!774234 (Cons!12117 (h!17518 (drop!618 (++!3139 lt!412396 r!2028) 0)) (take!146 (t!112557 (drop!618 (++!3139 lt!412396 r!2028) 0)) (- (- (- until!61 1) 0) 1))))))

(declare-fun b!1206970 () Bool)

(declare-fun e!774232 () Int)

(assert (=> b!1206970 (= e!774232 (- (- until!61 1) 0))))

(declare-fun d!345070 () Bool)

(declare-fun e!774233 () Bool)

(assert (=> d!345070 e!774233))

(declare-fun res!543137 () Bool)

(assert (=> d!345070 (=> (not res!543137) (not e!774233))))

(declare-fun lt!412556 () List!12141)

(assert (=> d!345070 (= res!543137 (= ((_ map implies) (content!1716 lt!412556) (content!1716 (drop!618 (++!3139 lt!412396 r!2028) 0))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!345070 (= lt!412556 e!774234)))

(declare-fun c!201861 () Bool)

(assert (=> d!345070 (= c!201861 (or ((_ is Nil!12117) (drop!618 (++!3139 lt!412396 r!2028) 0)) (<= (- (- until!61 1) 0) 0)))))

(assert (=> d!345070 (= (take!146 (drop!618 (++!3139 lt!412396 r!2028) 0) (- (- until!61 1) 0)) lt!412556)))

(declare-fun b!1206971 () Bool)

(declare-fun e!774231 () Int)

(assert (=> b!1206971 (= e!774231 e!774232)))

(declare-fun c!201860 () Bool)

(assert (=> b!1206971 (= c!201860 (>= (- (- until!61 1) 0) (size!9657 (drop!618 (++!3139 lt!412396 r!2028) 0))))))

(declare-fun b!1206972 () Bool)

(assert (=> b!1206972 (= e!774231 0)))

(declare-fun b!1206973 () Bool)

(assert (=> b!1206973 (= e!774233 (= (size!9657 lt!412556) e!774231))))

(declare-fun c!201862 () Bool)

(assert (=> b!1206973 (= c!201862 (<= (- (- until!61 1) 0) 0))))

(declare-fun b!1206974 () Bool)

(assert (=> b!1206974 (= e!774232 (size!9657 (drop!618 (++!3139 lt!412396 r!2028) 0)))))

(declare-fun b!1206975 () Bool)

(assert (=> b!1206975 (= e!774234 Nil!12117)))

(assert (= (and d!345070 c!201861) b!1206975))

(assert (= (and d!345070 (not c!201861)) b!1206969))

(assert (= (and d!345070 res!543137) b!1206973))

(assert (= (and b!1206973 c!201862) b!1206972))

(assert (= (and b!1206973 (not c!201862)) b!1206971))

(assert (= (and b!1206971 c!201860) b!1206974))

(assert (= (and b!1206971 (not c!201860)) b!1206970))

(assert (=> b!1206974 m!1381575))

(declare-fun m!1382259 () Bool)

(assert (=> b!1206974 m!1382259))

(declare-fun m!1382261 () Bool)

(assert (=> d!345070 m!1382261))

(assert (=> d!345070 m!1381575))

(declare-fun m!1382263 () Bool)

(assert (=> d!345070 m!1382263))

(assert (=> b!1206971 m!1381575))

(assert (=> b!1206971 m!1382259))

(declare-fun m!1382265 () Bool)

(assert (=> b!1206969 m!1382265))

(declare-fun m!1382267 () Bool)

(assert (=> b!1206973 m!1382267))

(assert (=> d!344758 d!345070))

(declare-fun b!1206976 () Bool)

(declare-fun e!774237 () List!12141)

(assert (=> b!1206976 (= e!774237 (++!3139 lt!412396 r!2028))))

(declare-fun b!1206977 () Bool)

(declare-fun e!774239 () Int)

(assert (=> b!1206977 (= e!774239 0)))

(declare-fun b!1206978 () Bool)

(declare-fun call!84286 () Int)

(assert (=> b!1206978 (= e!774239 (- call!84286 0))))

(declare-fun d!345072 () Bool)

(declare-fun e!774238 () Bool)

(assert (=> d!345072 e!774238))

(declare-fun res!543138 () Bool)

(assert (=> d!345072 (=> (not res!543138) (not e!774238))))

(declare-fun lt!412557 () List!12141)

(assert (=> d!345072 (= res!543138 (= ((_ map implies) (content!1716 lt!412557) (content!1716 (++!3139 lt!412396 r!2028))) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!774235 () List!12141)

(assert (=> d!345072 (= lt!412557 e!774235)))

(declare-fun c!201864 () Bool)

(assert (=> d!345072 (= c!201864 ((_ is Nil!12117) (++!3139 lt!412396 r!2028)))))

(assert (=> d!345072 (= (drop!618 (++!3139 lt!412396 r!2028) 0) lt!412557)))

(declare-fun b!1206979 () Bool)

(declare-fun e!774236 () Int)

(assert (=> b!1206979 (= e!774236 e!774239)))

(declare-fun c!201863 () Bool)

(assert (=> b!1206979 (= c!201863 (>= 0 call!84286))))

(declare-fun b!1206980 () Bool)

(assert (=> b!1206980 (= e!774236 call!84286)))

(declare-fun bm!84281 () Bool)

(assert (=> bm!84281 (= call!84286 (size!9657 (++!3139 lt!412396 r!2028)))))

(declare-fun b!1206981 () Bool)

(assert (=> b!1206981 (= e!774235 Nil!12117)))

(declare-fun b!1206982 () Bool)

(assert (=> b!1206982 (= e!774237 (drop!618 (t!112557 (++!3139 lt!412396 r!2028)) (- 0 1)))))

(declare-fun b!1206983 () Bool)

(assert (=> b!1206983 (= e!774238 (= (size!9657 lt!412557) e!774236))))

(declare-fun c!201865 () Bool)

(assert (=> b!1206983 (= c!201865 (<= 0 0))))

(declare-fun b!1206984 () Bool)

(assert (=> b!1206984 (= e!774235 e!774237)))

(declare-fun c!201866 () Bool)

(assert (=> b!1206984 (= c!201866 (<= 0 0))))

(assert (= (and d!345072 c!201864) b!1206981))

(assert (= (and d!345072 (not c!201864)) b!1206984))

(assert (= (and b!1206984 c!201866) b!1206976))

(assert (= (and b!1206984 (not c!201866)) b!1206982))

(assert (= (and d!345072 res!543138) b!1206983))

(assert (= (and b!1206983 c!201865) b!1206980))

(assert (= (and b!1206983 (not c!201865)) b!1206979))

(assert (= (and b!1206979 c!201863) b!1206977))

(assert (= (and b!1206979 (not c!201863)) b!1206978))

(assert (= (or b!1206980 b!1206979 b!1206978) bm!84281))

(declare-fun m!1382269 () Bool)

(assert (=> d!345072 m!1382269))

(assert (=> d!345072 m!1381233))

(declare-fun m!1382271 () Bool)

(assert (=> d!345072 m!1382271))

(assert (=> bm!84281 m!1381233))

(declare-fun m!1382273 () Bool)

(assert (=> bm!84281 m!1382273))

(declare-fun m!1382275 () Bool)

(assert (=> b!1206982 m!1382275))

(declare-fun m!1382277 () Bool)

(assert (=> b!1206983 m!1382277))

(assert (=> d!344758 d!345072))

(declare-fun d!345074 () Bool)

(declare-fun lt!412558 () Int)

(assert (=> d!345074 (>= lt!412558 0)))

(declare-fun e!774240 () Int)

(assert (=> d!345074 (= lt!412558 e!774240)))

(declare-fun c!201867 () Bool)

(assert (=> d!345074 (= c!201867 ((_ is Nil!12117) lt!412463))))

(assert (=> d!345074 (= (size!9657 lt!412463) lt!412558)))

(declare-fun b!1206985 () Bool)

(assert (=> b!1206985 (= e!774240 0)))

(declare-fun b!1206986 () Bool)

(assert (=> b!1206986 (= e!774240 (+ 1 (size!9657 (t!112557 lt!412463))))))

(assert (= (and d!345074 c!201867) b!1206985))

(assert (= (and d!345074 (not c!201867)) b!1206986))

(declare-fun m!1382279 () Bool)

(assert (=> b!1206986 m!1382279))

(assert (=> b!1206449 d!345074))

(declare-fun d!345076 () Bool)

(declare-fun c!201868 () Bool)

(assert (=> d!345076 (= c!201868 ((_ is Nil!12117) (t!112557 lt!412431)))))

(declare-fun e!774241 () (InoxSet T!22300))

(assert (=> d!345076 (= (content!1716 (t!112557 lt!412431)) e!774241)))

(declare-fun b!1206987 () Bool)

(assert (=> b!1206987 (= e!774241 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206988 () Bool)

(assert (=> b!1206988 (= e!774241 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 (t!112557 lt!412431)) true) (content!1716 (t!112557 (t!112557 lt!412431)))))))

(assert (= (and d!345076 c!201868) b!1206987))

(assert (= (and d!345076 (not c!201868)) b!1206988))

(declare-fun m!1382281 () Bool)

(assert (=> b!1206988 m!1382281))

(declare-fun m!1382283 () Bool)

(assert (=> b!1206988 m!1382283))

(assert (=> b!1206456 d!345076))

(declare-fun d!345078 () Bool)

(declare-fun c!201869 () Bool)

(assert (=> d!345078 (= c!201869 ((_ is Nil!12117) lt!412437))))

(declare-fun e!774242 () (InoxSet T!22300))

(assert (=> d!345078 (= (content!1716 lt!412437) e!774242)))

(declare-fun b!1206989 () Bool)

(assert (=> b!1206989 (= e!774242 ((as const (Array T!22300 Bool)) false))))

(declare-fun b!1206990 () Bool)

(assert (=> b!1206990 (= e!774242 ((_ map or) (store ((as const (Array T!22300 Bool)) false) (h!17518 lt!412437) true) (content!1716 (t!112557 lt!412437))))))

(assert (= (and d!345078 c!201869) b!1206989))

(assert (= (and d!345078 (not c!201869)) b!1206990))

(declare-fun m!1382285 () Bool)

(assert (=> b!1206990 m!1382285))

(declare-fun m!1382287 () Bool)

(assert (=> b!1206990 m!1382287))

(assert (=> d!344708 d!345078))

(assert (=> d!344708 d!344876))

(assert (=> d!344708 d!344784))

(declare-fun e!774244 () List!12141)

(declare-fun b!1206991 () Bool)

(assert (=> b!1206991 (= e!774244 (slice!521 r!2028 0 (- (- until!61 1) call!84257)))))

(declare-fun lt!412559 () List!12141)

(declare-fun b!1206994 () Bool)

(declare-fun e!774243 () Bool)

(assert (=> b!1206994 (= e!774243 (or (not (= (slice!521 r!2028 0 (- (- until!61 1) call!84257)) Nil!12117)) (= lt!412559 call!84256)))))

(declare-fun b!1206992 () Bool)

(assert (=> b!1206992 (= e!774244 (Cons!12117 (h!17518 call!84256) (++!3139 (t!112557 call!84256) (slice!521 r!2028 0 (- (- until!61 1) call!84257)))))))

(declare-fun d!345080 () Bool)

(assert (=> d!345080 e!774243))

(declare-fun res!543139 () Bool)

(assert (=> d!345080 (=> (not res!543139) (not e!774243))))

(assert (=> d!345080 (= res!543139 (= (content!1716 lt!412559) ((_ map or) (content!1716 call!84256) (content!1716 (slice!521 r!2028 0 (- (- until!61 1) call!84257))))))))

(assert (=> d!345080 (= lt!412559 e!774244)))

(declare-fun c!201870 () Bool)

(assert (=> d!345080 (= c!201870 ((_ is Nil!12117) call!84256))))

(assert (=> d!345080 (= (++!3139 call!84256 (slice!521 r!2028 0 (- (- until!61 1) call!84257))) lt!412559)))

(declare-fun b!1206993 () Bool)

(declare-fun res!543140 () Bool)

(assert (=> b!1206993 (=> (not res!543140) (not e!774243))))

(assert (=> b!1206993 (= res!543140 (= (size!9657 lt!412559) (+ (size!9657 call!84256) (size!9657 (slice!521 r!2028 0 (- (- until!61 1) call!84257))))))))

(assert (= (and d!345080 c!201870) b!1206991))

(assert (= (and d!345080 (not c!201870)) b!1206992))

(assert (= (and d!345080 res!543139) b!1206993))

(assert (= (and b!1206993 res!543140) b!1206994))

(assert (=> b!1206992 m!1381581))

(declare-fun m!1382289 () Bool)

(assert (=> b!1206992 m!1382289))

(declare-fun m!1382291 () Bool)

(assert (=> d!345080 m!1382291))

(declare-fun m!1382293 () Bool)

(assert (=> d!345080 m!1382293))

(assert (=> d!345080 m!1381581))

(declare-fun m!1382295 () Bool)

(assert (=> d!345080 m!1382295))

(declare-fun m!1382297 () Bool)

(assert (=> b!1206993 m!1382297))

(declare-fun m!1382299 () Bool)

(assert (=> b!1206993 m!1382299))

(assert (=> b!1206993 m!1381581))

(declare-fun m!1382301 () Bool)

(assert (=> b!1206993 m!1382301))

(assert (=> b!1206399 d!345080))

(declare-fun d!345082 () Bool)

(assert (=> d!345082 (= (slice!521 r!2028 0 (- (- until!61 1) call!84257)) (take!146 (drop!618 r!2028 0) (- (- (- until!61 1) call!84257) 0)))))

(declare-fun bs!288470 () Bool)

(assert (= bs!288470 d!345082))

(assert (=> bs!288470 m!1381491))

(assert (=> bs!288470 m!1381491))

(declare-fun m!1382303 () Bool)

(assert (=> bs!288470 m!1382303))

(assert (=> b!1206399 d!345082))

(declare-fun e!774248 () List!12141)

(declare-fun b!1206995 () Bool)

(assert (=> b!1206995 (= e!774248 (Cons!12117 (h!17518 (t!112557 (drop!618 l!2744 from!613))) (take!146 (t!112557 (t!112557 (drop!618 l!2744 from!613))) (- (- (- lt!412400 from!613) 1) 1))))))

(declare-fun b!1206996 () Bool)

(declare-fun e!774246 () Int)

(assert (=> b!1206996 (= e!774246 (- (- lt!412400 from!613) 1))))

(declare-fun d!345084 () Bool)

(declare-fun e!774247 () Bool)

(assert (=> d!345084 e!774247))

(declare-fun res!543141 () Bool)

(assert (=> d!345084 (=> (not res!543141) (not e!774247))))

(declare-fun lt!412560 () List!12141)

(assert (=> d!345084 (= res!543141 (= ((_ map implies) (content!1716 lt!412560) (content!1716 (t!112557 (drop!618 l!2744 from!613)))) ((as const (InoxSet T!22300)) true)))))

(assert (=> d!345084 (= lt!412560 e!774248)))

(declare-fun c!201872 () Bool)

(assert (=> d!345084 (= c!201872 (or ((_ is Nil!12117) (t!112557 (drop!618 l!2744 from!613))) (<= (- (- lt!412400 from!613) 1) 0)))))

(assert (=> d!345084 (= (take!146 (t!112557 (drop!618 l!2744 from!613)) (- (- lt!412400 from!613) 1)) lt!412560)))

(declare-fun b!1206997 () Bool)

(declare-fun e!774245 () Int)

(assert (=> b!1206997 (= e!774245 e!774246)))

(declare-fun c!201871 () Bool)

(assert (=> b!1206997 (= c!201871 (>= (- (- lt!412400 from!613) 1) (size!9657 (t!112557 (drop!618 l!2744 from!613)))))))

(declare-fun b!1206998 () Bool)

(assert (=> b!1206998 (= e!774245 0)))

(declare-fun b!1206999 () Bool)

(assert (=> b!1206999 (= e!774247 (= (size!9657 lt!412560) e!774245))))

(declare-fun c!201873 () Bool)

(assert (=> b!1206999 (= c!201873 (<= (- (- lt!412400 from!613) 1) 0))))

(declare-fun b!1207000 () Bool)

(assert (=> b!1207000 (= e!774246 (size!9657 (t!112557 (drop!618 l!2744 from!613))))))

(declare-fun b!1207001 () Bool)

(assert (=> b!1207001 (= e!774248 Nil!12117)))

(assert (= (and d!345084 c!201872) b!1207001))

(assert (= (and d!345084 (not c!201872)) b!1206995))

(assert (= (and d!345084 res!543141) b!1206999))

(assert (= (and b!1206999 c!201873) b!1206998))

(assert (= (and b!1206999 (not c!201873)) b!1206997))

(assert (= (and b!1206997 c!201871) b!1207000))

(assert (= (and b!1206997 (not c!201871)) b!1206996))

(assert (=> b!1207000 m!1381895))

(declare-fun m!1382305 () Bool)

(assert (=> d!345084 m!1382305))

(assert (=> d!345084 m!1382053))

(assert (=> b!1206997 m!1381895))

(declare-fun m!1382307 () Bool)

(assert (=> b!1206995 m!1382307))

(declare-fun m!1382309 () Bool)

(assert (=> b!1206999 m!1382309))

(assert (=> b!1206401 d!345084))

(declare-fun b!1207002 () Bool)

(declare-fun e!774251 () List!12141)

(assert (=> b!1207002 (= e!774251 (t!112557 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))))))

(declare-fun b!1207003 () Bool)

(declare-fun e!774253 () Int)

(assert (=> b!1207003 (= e!774253 0)))

(declare-fun b!1207004 () Bool)

(declare-fun call!84287 () Int)

(assert (=> b!1207004 (= e!774253 (- call!84287 (- (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) 1)))))

(declare-fun d!345086 () Bool)

(declare-fun e!774252 () Bool)

(assert (=> d!345086 e!774252))

(declare-fun res!543142 () Bool)

(assert (=> d!345086 (=> (not res!543142) (not e!774252))))

(declare-fun lt!412561 () List!12141)

(assert (=> d!345086 (= res!543142 (= ((_ map implies) (content!1716 lt!412561) (content!1716 (t!112557 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))))) ((as const (InoxSet T!22300)) true)))))

(declare-fun e!774249 () List!12141)

(assert (=> d!345086 (= lt!412561 e!774249)))

(declare-fun c!201875 () Bool)

(assert (=> d!345086 (= c!201875 ((_ is Nil!12117) (t!112557 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)))))))

(assert (=> d!345086 (= (drop!618 (t!112557 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028))) (- (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) 1)) lt!412561)))

(declare-fun b!1207005 () Bool)

(declare-fun e!774250 () Int)

(assert (=> b!1207005 (= e!774250 e!774253)))

(declare-fun c!201874 () Bool)

(assert (=> b!1207005 (= c!201874 (>= (- (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) 1) call!84287))))

(declare-fun b!1207006 () Bool)

(assert (=> b!1207006 (= e!774250 call!84287)))

(declare-fun bm!84282 () Bool)

(assert (=> bm!84282 (= call!84287 (size!9657 (t!112557 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)))))))

(declare-fun b!1207007 () Bool)

(assert (=> b!1207007 (= e!774249 Nil!12117)))

(declare-fun b!1207008 () Bool)

(assert (=> b!1207008 (= e!774251 (drop!618 (t!112557 (t!112557 (ite c!201495 r!2028 (ite c!201497 l!2744 r!2028)))) (- (- (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) 1) 1)))))

(declare-fun b!1207009 () Bool)

(assert (=> b!1207009 (= e!774252 (= (size!9657 lt!412561) e!774250))))

(declare-fun c!201876 () Bool)

(assert (=> b!1207009 (= c!201876 (<= (- (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) 1) 0))))

(declare-fun b!1207010 () Bool)

(assert (=> b!1207010 (= e!774249 e!774251)))

(declare-fun c!201877 () Bool)

(assert (=> b!1207010 (= c!201877 (<= (- (ite c!201495 (- from!613 lt!412400) (ite c!201497 from!613 0)) 1) 0))))

(assert (= (and d!345086 c!201875) b!1207007))

(assert (= (and d!345086 (not c!201875)) b!1207010))

(assert (= (and b!1207010 c!201877) b!1207002))

(assert (= (and b!1207010 (not c!201877)) b!1207008))

(assert (= (and d!345086 res!543142) b!1207009))

(assert (= (and b!1207009 c!201876) b!1207006))

(assert (= (and b!1207009 (not c!201876)) b!1207005))

(assert (= (and b!1207005 c!201874) b!1207003))

(assert (= (and b!1207005 (not c!201874)) b!1207004))

(assert (= (or b!1207006 b!1207005 b!1207004) bm!84282))

(declare-fun m!1382311 () Bool)

(assert (=> d!345086 m!1382311))

(assert (=> d!345086 m!1382003))

(assert (=> bm!84282 m!1382093))

(declare-fun m!1382313 () Bool)

(assert (=> b!1207008 m!1382313))

(declare-fun m!1382315 () Bool)

(assert (=> b!1207009 m!1382315))

(assert (=> b!1206348 d!345086))

(declare-fun b!1207011 () Bool)

(declare-fun e!774254 () Bool)

(declare-fun tp!342066 () Bool)

(assert (=> b!1207011 (= e!774254 (and tp_is_empty!6127 tp!342066))))

(assert (=> b!1206462 (= tp!342063 e!774254)))

(assert (= (and b!1206462 ((_ is Cons!12117) (t!112557 (t!112557 (t!112557 l!2744))))) b!1207011))

(declare-fun b!1207012 () Bool)

(declare-fun e!774255 () Bool)

(declare-fun tp!342067 () Bool)

(assert (=> b!1207012 (= e!774255 (and tp_is_empty!6127 tp!342067))))

(assert (=> b!1206461 (= tp!342062 e!774255)))

(assert (= (and b!1206461 ((_ is Cons!12117) (t!112557 (t!112557 (t!112557 r!2028))))) b!1207012))

(check-sat (not d!345070) (not b!1206785) (not b!1206925) (not b!1206749) (not b!1206864) (not b!1206757) (not b!1206711) (not b!1206990) (not d!344950) (not b!1207012) (not b!1206747) (not b!1206769) (not bm!84278) (not b!1206906) (not b!1206686) (not b!1206860) (not b!1206734) (not b!1206910) (not d!344996) (not b!1206845) (not bm!84281) (not b!1206807) (not b!1206811) (not b!1206966) (not d!345072) (not b!1206706) (not b!1206891) (not b!1206920) (not b!1206995) (not b!1206908) (not b!1206826) (not b!1206885) (not b!1206779) (not d!345016) (not b!1206692) (not b!1206918) (not b!1206921) (not b!1206839) (not b!1206753) (not b!1206723) (not b!1206688) (not d!345024) (not b!1206973) (not b!1206702) (not bm!84274) (not bm!84276) (not b!1206726) (not b!1206751) (not b!1206840) (not b!1206877) (not b!1206763) (not b!1206773) (not b!1206831) (not d!345012) (not b!1206771) (not b!1207009) (not b!1207008) (not b!1206914) (not b!1206797) (not b!1206809) (not b!1206684) (not b!1206887) (not b!1206843) (not b!1206935) (not bm!84280) (not b!1206853) (not b!1206765) (not b!1206848) (not d!345030) (not b!1206742) (not b!1206680) (not b!1206896) (not b!1206732) (not b!1206834) (not b!1206694) (not b!1206916) (not d!345080) (not b!1206793) (not b!1206946) (not b!1206737) (not b!1206709) (not bm!84282) (not d!345050) (not b!1206971) (not b!1206901) (not d!345022) (not b!1206741) (not b!1206997) (not b!1206822) (not b!1207011) (not b!1206819) (not b!1206821) (not b!1206952) (not d!345006) (not b!1206951) (not d!345084) (not b!1206983) (not bm!84279) (not d!345056) (not b!1206875) (not b!1206949) (not b!1206713) (not b!1206690) (not b!1206837) (not b!1206759) (not b!1206791) (not d!345086) (not b!1206892) (not b!1206847) tp_is_empty!6127 (not b!1206968) (not b!1206708) (not b!1206969) (not b!1206736) (not b!1206945) (not d!345082) (not b!1206783) (not b!1206986) (not b!1206775) (not b!1206993) (not b!1206803) (not b!1206861) (not b!1206889) (not b!1206904) (not d!345062) (not b!1206787) (not b!1206900) (not b!1206739) (not b!1206824) (not b!1206961) (not b!1206815) (not b!1206830) (not b!1207000) (not b!1206799) (not b!1206696) (not b!1206871) (not b!1206964) (not b!1206912) (not b!1206923) (not d!345052) (not d!344994) (not b!1206700) (not d!344918) (not d!345028) (not d!345060) (not b!1206704) (not b!1206755) (not b!1206682) (not b!1206714) (not b!1206988) (not b!1206974) (not bm!84275) (not b!1206960) (not b!1206795) (not b!1206801) (not bm!84277) (not b!1206872) (not b!1206926) (not b!1206813) (not b!1206999) (not b!1206895) (not d!344902) (not b!1206728) (not b!1206776) (not b!1206884) (not b!1206934) (not b!1206730) (not b!1206827) (not d!344904) (not b!1206722) (not b!1206698) (not b!1206851) (not b!1206745) (not b!1206761) (not d!344976) (not b!1206898) (not b!1206938) (not b!1206789) (not b!1206767) (not b!1206982) (not b!1206781) (not b!1206835) (not b!1206992) (not b!1206804) (not b!1206817) (not d!345000))
(check-sat)
