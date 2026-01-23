; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107604 () Bool)

(assert start!107604)

(declare-fun e!775193 () Bool)

(declare-datatypes ((T!22468 0))(
  ( (T!22469 (val!3986 Int)) )
))
(declare-datatypes ((List!12199 0))(
  ( (Nil!12158) (Cons!12158 (h!17559 T!22468) (t!112598 List!12199)) )
))
(declare-fun lt!413229 () List!12199)

(declare-fun b!1208477 () Bool)

(declare-fun lt!413228 () List!12199)

(declare-fun from!777 () Int)

(declare-fun drop!634 (List!12199 Int) List!12199)

(assert (=> b!1208477 (= e!775193 (= (drop!634 lt!413229 from!777) (drop!634 lt!413228 from!777)))))

(declare-fun b!1208478 () Bool)

(declare-fun e!775194 () Bool)

(declare-fun tp!342347 () Bool)

(declare-fun tp!342346 () Bool)

(assert (=> b!1208478 (= e!775194 (and tp!342347 tp!342346))))

(declare-fun b!1208479 () Bool)

(declare-fun e!775195 () Bool)

(declare-fun tp!342349 () Bool)

(declare-fun tp!342348 () Bool)

(assert (=> b!1208479 (= e!775195 (and tp!342349 tp!342348))))

(declare-fun res!543542 () Bool)

(declare-fun e!775196 () Bool)

(assert (=> start!107604 (=> (not res!543542) (not e!775196))))

(assert (=> start!107604 (= res!543542 (<= 0 from!777))))

(assert (=> start!107604 e!775196))

(assert (=> start!107604 true))

(assert (=> start!107604 e!775194))

(assert (=> start!107604 e!775195))

(declare-fun b!1208480 () Bool)

(declare-fun e!775197 () Bool)

(assert (=> b!1208480 (= e!775197 e!775193)))

(declare-fun res!543543 () Bool)

(assert (=> b!1208480 (=> res!543543 e!775193)))

(declare-fun lt!413226 () Int)

(declare-fun lt!413227 () Int)

(assert (=> b!1208480 (= res!543543 (or (not (= lt!413226 lt!413227)) (not (= from!777 lt!413226))))))

(declare-fun size!9698 (List!12199) Int)

(assert (=> b!1208480 (= lt!413227 (size!9698 lt!413228))))

(declare-datatypes ((BalanceConc!7924 0) (Object!2206 0) (IArray!8013 0) (List!12201 0) (Conc!4004 0))(
  ( (BalanceConc!7925 (c!202336 Conc!4004)) )
  ( (BalanceConc!7923 (value!68189 BalanceConc!7924)) (List!12200 (value!68190 List!12201)) (Character!40 (value!68191 (_ BitVec 16))) (Open!40 (value!68192 Int)) )
  ( (IArray!8014 (innerList!4064 List!12201)) )
  ( (Nil!12159) (Cons!12159 (h!17560 Object!2206) (t!112599 List!12201)) )
  ( (Node!4004 (left!10589 Conc!4004) (right!10919 Conc!4004) (csize!8238 Int) (cheight!4215 Int)) (Leaf!6166 (xs!6715 IArray!8013) (csize!8239 Int)) (Empty!4004) )
))
(declare-datatypes ((Vector!84 0))(
  ( (Vector!85 (underlying!2786 Object!2206) (overflowing!99 List!12199)) )
))
(declare-fun other!28 () Vector!84)

(declare-fun list!4522 (Vector!84) List!12199)

(assert (=> b!1208480 (= lt!413228 (list!4522 other!28))))

(declare-fun size!9699 (Vector!84) Int)

(assert (=> b!1208480 (= lt!413227 (size!9699 other!28))))

(declare-fun b!1208481 () Bool)

(assert (=> b!1208481 (= e!775196 (not e!775197))))

(declare-fun res!543541 () Bool)

(assert (=> b!1208481 (=> res!543541 e!775197)))

(assert (=> b!1208481 (= res!543541 (> from!777 lt!413226))))

(assert (=> b!1208481 (= lt!413226 (size!9698 lt!413229))))

(declare-fun thiss!9565 () Vector!84)

(assert (=> b!1208481 (= lt!413229 (list!4522 thiss!9565))))

(assert (=> b!1208481 (= lt!413226 (size!9699 thiss!9565))))

(assert (= (and start!107604 res!543542) b!1208481))

(assert (= (and b!1208481 (not res!543541)) b!1208480))

(assert (= (and b!1208480 (not res!543543)) b!1208477))

(assert (= start!107604 b!1208478))

(assert (= start!107604 b!1208479))

(declare-fun m!1384071 () Bool)

(assert (=> b!1208477 m!1384071))

(declare-fun m!1384073 () Bool)

(assert (=> b!1208477 m!1384073))

(declare-fun m!1384075 () Bool)

(assert (=> b!1208480 m!1384075))

(declare-fun m!1384077 () Bool)

(assert (=> b!1208480 m!1384077))

(declare-fun m!1384079 () Bool)

(assert (=> b!1208480 m!1384079))

(declare-fun m!1384081 () Bool)

(assert (=> b!1208481 m!1384081))

(declare-fun m!1384083 () Bool)

(assert (=> b!1208481 m!1384083))

(declare-fun m!1384085 () Bool)

(assert (=> b!1208481 m!1384085))

(check-sat (not b!1208478) (not b!1208479) (not b!1208480) (not b!1208477) (not b!1208481))
(check-sat)
(get-model)

(declare-fun d!345610 () Bool)

(declare-fun lt!413232 () Int)

(assert (=> d!345610 (>= lt!413232 0)))

(declare-fun e!775200 () Int)

(assert (=> d!345610 (= lt!413232 e!775200)))

(declare-fun c!202339 () Bool)

(get-info :version)

(assert (=> d!345610 (= c!202339 ((_ is Nil!12158) lt!413228))))

(assert (=> d!345610 (= (size!9698 lt!413228) lt!413232)))

(declare-fun b!1208486 () Bool)

(assert (=> b!1208486 (= e!775200 0)))

(declare-fun b!1208487 () Bool)

(assert (=> b!1208487 (= e!775200 (+ 1 (size!9698 (t!112598 lt!413228))))))

(assert (= (and d!345610 c!202339) b!1208486))

(assert (= (and d!345610 (not c!202339)) b!1208487))

(declare-fun m!1384087 () Bool)

(assert (=> b!1208487 m!1384087))

(assert (=> b!1208480 d!345610))

(declare-fun d!345612 () Bool)

(declare-fun choose!7749 (Vector!84) List!12199)

(assert (=> d!345612 (= (list!4522 other!28) (choose!7749 other!28))))

(declare-fun bs!288515 () Bool)

(assert (= bs!288515 d!345612))

(declare-fun m!1384089 () Bool)

(assert (=> bs!288515 m!1384089))

(assert (=> b!1208480 d!345612))

(declare-fun d!345614 () Bool)

(declare-fun lt!413235 () Int)

(assert (=> d!345614 (= lt!413235 (size!9698 (list!4522 other!28)))))

(declare-fun choose!7750 (Vector!84) Int)

(assert (=> d!345614 (= lt!413235 (choose!7750 other!28))))

(assert (=> d!345614 (= (size!9699 other!28) lt!413235)))

(declare-fun bs!288516 () Bool)

(assert (= bs!288516 d!345614))

(assert (=> bs!288516 m!1384077))

(assert (=> bs!288516 m!1384077))

(declare-fun m!1384091 () Bool)

(assert (=> bs!288516 m!1384091))

(declare-fun m!1384093 () Bool)

(assert (=> bs!288516 m!1384093))

(assert (=> b!1208480 d!345614))

(declare-fun b!1208533 () Bool)

(declare-fun e!775226 () List!12199)

(assert (=> b!1208533 (= e!775226 Nil!12158)))

(declare-fun bm!84372 () Bool)

(declare-fun call!84377 () Int)

(assert (=> bm!84372 (= call!84377 (size!9698 lt!413229))))

(declare-fun d!345618 () Bool)

(declare-fun e!775229 () Bool)

(assert (=> d!345618 e!775229))

(declare-fun res!543549 () Bool)

(assert (=> d!345618 (=> (not res!543549) (not e!775229))))

(declare-fun lt!413241 () List!12199)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1723 (List!12199) (InoxSet T!22468))

(assert (=> d!345618 (= res!543549 (= ((_ map implies) (content!1723 lt!413241) (content!1723 lt!413229)) ((as const (InoxSet T!22468)) true)))))

(assert (=> d!345618 (= lt!413241 e!775226)))

(declare-fun c!202362 () Bool)

(assert (=> d!345618 (= c!202362 ((_ is Nil!12158) lt!413229))))

(assert (=> d!345618 (= (drop!634 lt!413229 from!777) lt!413241)))

(declare-fun b!1208534 () Bool)

(declare-fun e!775230 () Int)

(assert (=> b!1208534 (= e!775230 0)))

(declare-fun b!1208535 () Bool)

(declare-fun e!775228 () List!12199)

(assert (=> b!1208535 (= e!775228 lt!413229)))

(declare-fun b!1208536 () Bool)

(assert (=> b!1208536 (= e!775226 e!775228)))

(declare-fun c!202361 () Bool)

(assert (=> b!1208536 (= c!202361 (<= from!777 0))))

(declare-fun b!1208537 () Bool)

(declare-fun e!775227 () Int)

(assert (=> b!1208537 (= e!775229 (= (size!9698 lt!413241) e!775227))))

(declare-fun c!202360 () Bool)

(assert (=> b!1208537 (= c!202360 (<= from!777 0))))

(declare-fun b!1208538 () Bool)

(assert (=> b!1208538 (= e!775227 e!775230)))

(declare-fun c!202363 () Bool)

(assert (=> b!1208538 (= c!202363 (>= from!777 call!84377))))

(declare-fun b!1208539 () Bool)

(assert (=> b!1208539 (= e!775230 (- call!84377 from!777))))

(declare-fun b!1208540 () Bool)

(assert (=> b!1208540 (= e!775228 (drop!634 (t!112598 lt!413229) (- from!777 1)))))

(declare-fun b!1208541 () Bool)

(assert (=> b!1208541 (= e!775227 call!84377)))

(assert (= (and d!345618 c!202362) b!1208533))

(assert (= (and d!345618 (not c!202362)) b!1208536))

(assert (= (and b!1208536 c!202361) b!1208535))

(assert (= (and b!1208536 (not c!202361)) b!1208540))

(assert (= (and d!345618 res!543549) b!1208537))

(assert (= (and b!1208537 c!202360) b!1208541))

(assert (= (and b!1208537 (not c!202360)) b!1208538))

(assert (= (and b!1208538 c!202363) b!1208534))

(assert (= (and b!1208538 (not c!202363)) b!1208539))

(assert (= (or b!1208541 b!1208538 b!1208539) bm!84372))

(assert (=> bm!84372 m!1384081))

(declare-fun m!1384103 () Bool)

(assert (=> d!345618 m!1384103))

(declare-fun m!1384105 () Bool)

(assert (=> d!345618 m!1384105))

(declare-fun m!1384107 () Bool)

(assert (=> b!1208537 m!1384107))

(declare-fun m!1384109 () Bool)

(assert (=> b!1208540 m!1384109))

(assert (=> b!1208477 d!345618))

(declare-fun b!1208551 () Bool)

(declare-fun e!775236 () List!12199)

(assert (=> b!1208551 (= e!775236 Nil!12158)))

(declare-fun bm!84374 () Bool)

(declare-fun call!84379 () Int)

(assert (=> bm!84374 (= call!84379 (size!9698 lt!413228))))

(declare-fun d!345622 () Bool)

(declare-fun e!775239 () Bool)

(assert (=> d!345622 e!775239))

(declare-fun res!543551 () Bool)

(assert (=> d!345622 (=> (not res!543551) (not e!775239))))

(declare-fun lt!413243 () List!12199)

(assert (=> d!345622 (= res!543551 (= ((_ map implies) (content!1723 lt!413243) (content!1723 lt!413228)) ((as const (InoxSet T!22468)) true)))))

(assert (=> d!345622 (= lt!413243 e!775236)))

(declare-fun c!202370 () Bool)

(assert (=> d!345622 (= c!202370 ((_ is Nil!12158) lt!413228))))

(assert (=> d!345622 (= (drop!634 lt!413228 from!777) lt!413243)))

(declare-fun b!1208552 () Bool)

(declare-fun e!775240 () Int)

(assert (=> b!1208552 (= e!775240 0)))

(declare-fun b!1208553 () Bool)

(declare-fun e!775238 () List!12199)

(assert (=> b!1208553 (= e!775238 lt!413228)))

(declare-fun b!1208554 () Bool)

(assert (=> b!1208554 (= e!775236 e!775238)))

(declare-fun c!202369 () Bool)

(assert (=> b!1208554 (= c!202369 (<= from!777 0))))

(declare-fun b!1208555 () Bool)

(declare-fun e!775237 () Int)

(assert (=> b!1208555 (= e!775239 (= (size!9698 lt!413243) e!775237))))

(declare-fun c!202368 () Bool)

(assert (=> b!1208555 (= c!202368 (<= from!777 0))))

(declare-fun b!1208556 () Bool)

(assert (=> b!1208556 (= e!775237 e!775240)))

(declare-fun c!202371 () Bool)

(assert (=> b!1208556 (= c!202371 (>= from!777 call!84379))))

(declare-fun b!1208557 () Bool)

(assert (=> b!1208557 (= e!775240 (- call!84379 from!777))))

(declare-fun b!1208558 () Bool)

(assert (=> b!1208558 (= e!775238 (drop!634 (t!112598 lt!413228) (- from!777 1)))))

(declare-fun b!1208559 () Bool)

(assert (=> b!1208559 (= e!775237 call!84379)))

(assert (= (and d!345622 c!202370) b!1208551))

(assert (= (and d!345622 (not c!202370)) b!1208554))

(assert (= (and b!1208554 c!202369) b!1208553))

(assert (= (and b!1208554 (not c!202369)) b!1208558))

(assert (= (and d!345622 res!543551) b!1208555))

(assert (= (and b!1208555 c!202368) b!1208559))

(assert (= (and b!1208555 (not c!202368)) b!1208556))

(assert (= (and b!1208556 c!202371) b!1208552))

(assert (= (and b!1208556 (not c!202371)) b!1208557))

(assert (= (or b!1208559 b!1208556 b!1208557) bm!84374))

(assert (=> bm!84374 m!1384075))

(declare-fun m!1384119 () Bool)

(assert (=> d!345622 m!1384119))

(declare-fun m!1384121 () Bool)

(assert (=> d!345622 m!1384121))

(declare-fun m!1384123 () Bool)

(assert (=> b!1208555 m!1384123))

(declare-fun m!1384125 () Bool)

(assert (=> b!1208558 m!1384125))

(assert (=> b!1208477 d!345622))

(declare-fun d!345626 () Bool)

(declare-fun lt!413244 () Int)

(assert (=> d!345626 (>= lt!413244 0)))

(declare-fun e!775241 () Int)

(assert (=> d!345626 (= lt!413244 e!775241)))

(declare-fun c!202372 () Bool)

(assert (=> d!345626 (= c!202372 ((_ is Nil!12158) lt!413229))))

(assert (=> d!345626 (= (size!9698 lt!413229) lt!413244)))

(declare-fun b!1208560 () Bool)

(assert (=> b!1208560 (= e!775241 0)))

(declare-fun b!1208561 () Bool)

(assert (=> b!1208561 (= e!775241 (+ 1 (size!9698 (t!112598 lt!413229))))))

(assert (= (and d!345626 c!202372) b!1208560))

(assert (= (and d!345626 (not c!202372)) b!1208561))

(declare-fun m!1384127 () Bool)

(assert (=> b!1208561 m!1384127))

(assert (=> b!1208481 d!345626))

(declare-fun d!345628 () Bool)

(assert (=> d!345628 (= (list!4522 thiss!9565) (choose!7749 thiss!9565))))

(declare-fun bs!288517 () Bool)

(assert (= bs!288517 d!345628))

(declare-fun m!1384129 () Bool)

(assert (=> bs!288517 m!1384129))

(assert (=> b!1208481 d!345628))

(declare-fun d!345630 () Bool)

(declare-fun lt!413245 () Int)

(assert (=> d!345630 (= lt!413245 (size!9698 (list!4522 thiss!9565)))))

(assert (=> d!345630 (= lt!413245 (choose!7750 thiss!9565))))

(assert (=> d!345630 (= (size!9699 thiss!9565) lt!413245)))

(declare-fun bs!288518 () Bool)

(assert (= bs!288518 d!345630))

(assert (=> bs!288518 m!1384083))

(assert (=> bs!288518 m!1384083))

(declare-fun m!1384131 () Bool)

(assert (=> bs!288518 m!1384131))

(declare-fun m!1384133 () Bool)

(assert (=> bs!288518 m!1384133))

(assert (=> b!1208481 d!345630))

(declare-fun b!1208577 () Bool)

(declare-fun e!775250 () Bool)

(declare-fun tp!342354 () Bool)

(declare-fun inv!16308 (Conc!4004) Bool)

(assert (=> b!1208577 (= e!775250 (and (inv!16308 (c!202336 (value!68189 (underlying!2786 other!28)))) tp!342354))))

(declare-fun b!1208576 () Bool)

(declare-fun e!775249 () Bool)

(declare-fun inv!16309 (BalanceConc!7924) Bool)

(assert (=> b!1208576 (= e!775249 (and (inv!16309 (value!68189 (underlying!2786 other!28))) e!775250))))

(declare-fun b!1208578 () Bool)

(declare-fun tp!342355 () Bool)

(assert (=> b!1208578 (= e!775249 tp!342355)))

(assert (=> b!1208479 (= tp!342349 e!775249)))

(assert (= b!1208576 b!1208577))

(assert (= (and b!1208479 ((_ is BalanceConc!7923) (underlying!2786 other!28))) b!1208576))

(assert (= (and b!1208479 ((_ is List!12200) (underlying!2786 other!28))) b!1208578))

(declare-fun m!1384137 () Bool)

(assert (=> b!1208577 m!1384137))

(declare-fun m!1384139 () Bool)

(assert (=> b!1208576 m!1384139))

(declare-fun b!1208583 () Bool)

(declare-fun e!775253 () Bool)

(declare-fun tp_is_empty!6141 () Bool)

(declare-fun tp!342358 () Bool)

(assert (=> b!1208583 (= e!775253 (and tp_is_empty!6141 tp!342358))))

(assert (=> b!1208479 (= tp!342348 e!775253)))

(assert (= (and b!1208479 ((_ is Cons!12158) (overflowing!99 other!28))) b!1208583))

(declare-fun b!1208585 () Bool)

(declare-fun e!775255 () Bool)

(declare-fun tp!342359 () Bool)

(assert (=> b!1208585 (= e!775255 (and (inv!16308 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) tp!342359))))

(declare-fun b!1208584 () Bool)

(declare-fun e!775254 () Bool)

(assert (=> b!1208584 (= e!775254 (and (inv!16309 (value!68189 (underlying!2786 thiss!9565))) e!775255))))

(declare-fun b!1208586 () Bool)

(declare-fun tp!342360 () Bool)

(assert (=> b!1208586 (= e!775254 tp!342360)))

(assert (=> b!1208478 (= tp!342347 e!775254)))

(assert (= b!1208584 b!1208585))

(assert (= (and b!1208478 ((_ is BalanceConc!7923) (underlying!2786 thiss!9565))) b!1208584))

(assert (= (and b!1208478 ((_ is List!12200) (underlying!2786 thiss!9565))) b!1208586))

(declare-fun m!1384143 () Bool)

(assert (=> b!1208585 m!1384143))

(declare-fun m!1384145 () Bool)

(assert (=> b!1208584 m!1384145))

(declare-fun b!1208587 () Bool)

(declare-fun e!775256 () Bool)

(declare-fun tp!342361 () Bool)

(assert (=> b!1208587 (= e!775256 (and tp_is_empty!6141 tp!342361))))

(assert (=> b!1208478 (= tp!342346 e!775256)))

(assert (= (and b!1208478 ((_ is Cons!12158) (overflowing!99 thiss!9565))) b!1208587))

(check-sat (not b!1208487) (not b!1208540) (not b!1208585) (not b!1208576) (not d!345622) (not b!1208587) (not d!345612) (not b!1208578) (not b!1208583) (not b!1208558) (not d!345614) (not bm!84372) (not b!1208561) (not b!1208584) (not d!345618) (not b!1208577) tp_is_empty!6141 (not d!345628) (not b!1208537) (not b!1208555) (not bm!84374) (not b!1208586) (not d!345630))
(check-sat)
(get-model)

(declare-fun b!1208610 () Bool)

(declare-fun e!775270 () List!12199)

(assert (=> b!1208610 (= e!775270 Nil!12158)))

(declare-fun bm!84375 () Bool)

(declare-fun call!84380 () Int)

(assert (=> bm!84375 (= call!84380 (size!9698 (t!112598 lt!413229)))))

(declare-fun d!345642 () Bool)

(declare-fun e!775273 () Bool)

(assert (=> d!345642 e!775273))

(declare-fun res!543552 () Bool)

(assert (=> d!345642 (=> (not res!543552) (not e!775273))))

(declare-fun lt!413254 () List!12199)

(assert (=> d!345642 (= res!543552 (= ((_ map implies) (content!1723 lt!413254) (content!1723 (t!112598 lt!413229))) ((as const (InoxSet T!22468)) true)))))

(assert (=> d!345642 (= lt!413254 e!775270)))

(declare-fun c!202379 () Bool)

(assert (=> d!345642 (= c!202379 ((_ is Nil!12158) (t!112598 lt!413229)))))

(assert (=> d!345642 (= (drop!634 (t!112598 lt!413229) (- from!777 1)) lt!413254)))

(declare-fun b!1208611 () Bool)

(declare-fun e!775274 () Int)

(assert (=> b!1208611 (= e!775274 0)))

(declare-fun b!1208612 () Bool)

(declare-fun e!775272 () List!12199)

(assert (=> b!1208612 (= e!775272 (t!112598 lt!413229))))

(declare-fun b!1208613 () Bool)

(assert (=> b!1208613 (= e!775270 e!775272)))

(declare-fun c!202378 () Bool)

(assert (=> b!1208613 (= c!202378 (<= (- from!777 1) 0))))

(declare-fun b!1208614 () Bool)

(declare-fun e!775271 () Int)

(assert (=> b!1208614 (= e!775273 (= (size!9698 lt!413254) e!775271))))

(declare-fun c!202377 () Bool)

(assert (=> b!1208614 (= c!202377 (<= (- from!777 1) 0))))

(declare-fun b!1208615 () Bool)

(assert (=> b!1208615 (= e!775271 e!775274)))

(declare-fun c!202380 () Bool)

(assert (=> b!1208615 (= c!202380 (>= (- from!777 1) call!84380))))

(declare-fun b!1208616 () Bool)

(assert (=> b!1208616 (= e!775274 (- call!84380 (- from!777 1)))))

(declare-fun b!1208617 () Bool)

(assert (=> b!1208617 (= e!775272 (drop!634 (t!112598 (t!112598 lt!413229)) (- (- from!777 1) 1)))))

(declare-fun b!1208618 () Bool)

(assert (=> b!1208618 (= e!775271 call!84380)))

(assert (= (and d!345642 c!202379) b!1208610))

(assert (= (and d!345642 (not c!202379)) b!1208613))

(assert (= (and b!1208613 c!202378) b!1208612))

(assert (= (and b!1208613 (not c!202378)) b!1208617))

(assert (= (and d!345642 res!543552) b!1208614))

(assert (= (and b!1208614 c!202377) b!1208618))

(assert (= (and b!1208614 (not c!202377)) b!1208615))

(assert (= (and b!1208615 c!202380) b!1208611))

(assert (= (and b!1208615 (not c!202380)) b!1208616))

(assert (= (or b!1208618 b!1208615 b!1208616) bm!84375))

(assert (=> bm!84375 m!1384127))

(declare-fun m!1384167 () Bool)

(assert (=> d!345642 m!1384167))

(declare-fun m!1384169 () Bool)

(assert (=> d!345642 m!1384169))

(declare-fun m!1384171 () Bool)

(assert (=> b!1208614 m!1384171))

(declare-fun m!1384173 () Bool)

(assert (=> b!1208617 m!1384173))

(assert (=> b!1208540 d!345642))

(declare-fun b!1208619 () Bool)

(declare-fun e!775275 () List!12199)

(assert (=> b!1208619 (= e!775275 Nil!12158)))

(declare-fun bm!84376 () Bool)

(declare-fun call!84381 () Int)

(assert (=> bm!84376 (= call!84381 (size!9698 (t!112598 lt!413228)))))

(declare-fun d!345644 () Bool)

(declare-fun e!775278 () Bool)

(assert (=> d!345644 e!775278))

(declare-fun res!543553 () Bool)

(assert (=> d!345644 (=> (not res!543553) (not e!775278))))

(declare-fun lt!413255 () List!12199)

(assert (=> d!345644 (= res!543553 (= ((_ map implies) (content!1723 lt!413255) (content!1723 (t!112598 lt!413228))) ((as const (InoxSet T!22468)) true)))))

(assert (=> d!345644 (= lt!413255 e!775275)))

(declare-fun c!202383 () Bool)

(assert (=> d!345644 (= c!202383 ((_ is Nil!12158) (t!112598 lt!413228)))))

(assert (=> d!345644 (= (drop!634 (t!112598 lt!413228) (- from!777 1)) lt!413255)))

(declare-fun b!1208620 () Bool)

(declare-fun e!775279 () Int)

(assert (=> b!1208620 (= e!775279 0)))

(declare-fun b!1208621 () Bool)

(declare-fun e!775277 () List!12199)

(assert (=> b!1208621 (= e!775277 (t!112598 lt!413228))))

(declare-fun b!1208622 () Bool)

(assert (=> b!1208622 (= e!775275 e!775277)))

(declare-fun c!202382 () Bool)

(assert (=> b!1208622 (= c!202382 (<= (- from!777 1) 0))))

(declare-fun b!1208623 () Bool)

(declare-fun e!775276 () Int)

(assert (=> b!1208623 (= e!775278 (= (size!9698 lt!413255) e!775276))))

(declare-fun c!202381 () Bool)

(assert (=> b!1208623 (= c!202381 (<= (- from!777 1) 0))))

(declare-fun b!1208624 () Bool)

(assert (=> b!1208624 (= e!775276 e!775279)))

(declare-fun c!202384 () Bool)

(assert (=> b!1208624 (= c!202384 (>= (- from!777 1) call!84381))))

(declare-fun b!1208625 () Bool)

(assert (=> b!1208625 (= e!775279 (- call!84381 (- from!777 1)))))

(declare-fun b!1208626 () Bool)

(assert (=> b!1208626 (= e!775277 (drop!634 (t!112598 (t!112598 lt!413228)) (- (- from!777 1) 1)))))

(declare-fun b!1208627 () Bool)

(assert (=> b!1208627 (= e!775276 call!84381)))

(assert (= (and d!345644 c!202383) b!1208619))

(assert (= (and d!345644 (not c!202383)) b!1208622))

(assert (= (and b!1208622 c!202382) b!1208621))

(assert (= (and b!1208622 (not c!202382)) b!1208626))

(assert (= (and d!345644 res!543553) b!1208623))

(assert (= (and b!1208623 c!202381) b!1208627))

(assert (= (and b!1208623 (not c!202381)) b!1208624))

(assert (= (and b!1208624 c!202384) b!1208620))

(assert (= (and b!1208624 (not c!202384)) b!1208625))

(assert (= (or b!1208627 b!1208624 b!1208625) bm!84376))

(assert (=> bm!84376 m!1384087))

(declare-fun m!1384175 () Bool)

(assert (=> d!345644 m!1384175))

(declare-fun m!1384177 () Bool)

(assert (=> d!345644 m!1384177))

(declare-fun m!1384179 () Bool)

(assert (=> b!1208623 m!1384179))

(declare-fun m!1384181 () Bool)

(assert (=> b!1208626 m!1384181))

(assert (=> b!1208558 d!345644))

(declare-fun d!345646 () Bool)

(declare-fun c!202387 () Bool)

(assert (=> d!345646 (= c!202387 ((_ is Nil!12158) lt!413243))))

(declare-fun e!775282 () (InoxSet T!22468))

(assert (=> d!345646 (= (content!1723 lt!413243) e!775282)))

(declare-fun b!1208632 () Bool)

(assert (=> b!1208632 (= e!775282 ((as const (Array T!22468 Bool)) false))))

(declare-fun b!1208633 () Bool)

(assert (=> b!1208633 (= e!775282 ((_ map or) (store ((as const (Array T!22468 Bool)) false) (h!17559 lt!413243) true) (content!1723 (t!112598 lt!413243))))))

(assert (= (and d!345646 c!202387) b!1208632))

(assert (= (and d!345646 (not c!202387)) b!1208633))

(declare-fun m!1384183 () Bool)

(assert (=> b!1208633 m!1384183))

(declare-fun m!1384185 () Bool)

(assert (=> b!1208633 m!1384185))

(assert (=> d!345622 d!345646))

(declare-fun d!345648 () Bool)

(declare-fun c!202388 () Bool)

(assert (=> d!345648 (= c!202388 ((_ is Nil!12158) lt!413228))))

(declare-fun e!775283 () (InoxSet T!22468))

(assert (=> d!345648 (= (content!1723 lt!413228) e!775283)))

(declare-fun b!1208634 () Bool)

(assert (=> b!1208634 (= e!775283 ((as const (Array T!22468 Bool)) false))))

(declare-fun b!1208635 () Bool)

(assert (=> b!1208635 (= e!775283 ((_ map or) (store ((as const (Array T!22468 Bool)) false) (h!17559 lt!413228) true) (content!1723 (t!112598 lt!413228))))))

(assert (= (and d!345648 c!202388) b!1208634))

(assert (= (and d!345648 (not c!202388)) b!1208635))

(declare-fun m!1384187 () Bool)

(assert (=> b!1208635 m!1384187))

(assert (=> b!1208635 m!1384177))

(assert (=> d!345622 d!345648))

(declare-fun d!345650 () Bool)

(declare-fun isBalanced!1172 (Conc!4004) Bool)

(assert (=> d!345650 (= (inv!16309 (value!68189 (underlying!2786 other!28))) (isBalanced!1172 (c!202336 (value!68189 (underlying!2786 other!28)))))))

(declare-fun bs!288523 () Bool)

(assert (= bs!288523 d!345650))

(declare-fun m!1384189 () Bool)

(assert (=> bs!288523 m!1384189))

(assert (=> b!1208576 d!345650))

(declare-fun d!345652 () Bool)

(declare-fun c!202389 () Bool)

(assert (=> d!345652 (= c!202389 ((_ is Nil!12158) lt!413241))))

(declare-fun e!775284 () (InoxSet T!22468))

(assert (=> d!345652 (= (content!1723 lt!413241) e!775284)))

(declare-fun b!1208636 () Bool)

(assert (=> b!1208636 (= e!775284 ((as const (Array T!22468 Bool)) false))))

(declare-fun b!1208637 () Bool)

(assert (=> b!1208637 (= e!775284 ((_ map or) (store ((as const (Array T!22468 Bool)) false) (h!17559 lt!413241) true) (content!1723 (t!112598 lt!413241))))))

(assert (= (and d!345652 c!202389) b!1208636))

(assert (= (and d!345652 (not c!202389)) b!1208637))

(declare-fun m!1384191 () Bool)

(assert (=> b!1208637 m!1384191))

(declare-fun m!1384193 () Bool)

(assert (=> b!1208637 m!1384193))

(assert (=> d!345618 d!345652))

(declare-fun d!345654 () Bool)

(declare-fun c!202390 () Bool)

(assert (=> d!345654 (= c!202390 ((_ is Nil!12158) lt!413229))))

(declare-fun e!775285 () (InoxSet T!22468))

(assert (=> d!345654 (= (content!1723 lt!413229) e!775285)))

(declare-fun b!1208638 () Bool)

(assert (=> b!1208638 (= e!775285 ((as const (Array T!22468 Bool)) false))))

(declare-fun b!1208639 () Bool)

(assert (=> b!1208639 (= e!775285 ((_ map or) (store ((as const (Array T!22468 Bool)) false) (h!17559 lt!413229) true) (content!1723 (t!112598 lt!413229))))))

(assert (= (and d!345654 c!202390) b!1208638))

(assert (= (and d!345654 (not c!202390)) b!1208639))

(declare-fun m!1384195 () Bool)

(assert (=> b!1208639 m!1384195))

(assert (=> b!1208639 m!1384169))

(assert (=> d!345618 d!345654))

(declare-fun d!345656 () Bool)

(declare-fun c!202393 () Bool)

(assert (=> d!345656 (= c!202393 ((_ is Node!4004) (c!202336 (value!68189 (underlying!2786 other!28)))))))

(declare-fun e!775290 () Bool)

(assert (=> d!345656 (= (inv!16308 (c!202336 (value!68189 (underlying!2786 other!28)))) e!775290)))

(declare-fun b!1208646 () Bool)

(declare-fun inv!16312 (Conc!4004) Bool)

(assert (=> b!1208646 (= e!775290 (inv!16312 (c!202336 (value!68189 (underlying!2786 other!28)))))))

(declare-fun b!1208647 () Bool)

(declare-fun e!775291 () Bool)

(assert (=> b!1208647 (= e!775290 e!775291)))

(declare-fun res!543556 () Bool)

(assert (=> b!1208647 (= res!543556 (not ((_ is Leaf!6166) (c!202336 (value!68189 (underlying!2786 other!28))))))))

(assert (=> b!1208647 (=> res!543556 e!775291)))

(declare-fun b!1208648 () Bool)

(declare-fun inv!16313 (Conc!4004) Bool)

(assert (=> b!1208648 (= e!775291 (inv!16313 (c!202336 (value!68189 (underlying!2786 other!28)))))))

(assert (= (and d!345656 c!202393) b!1208646))

(assert (= (and d!345656 (not c!202393)) b!1208647))

(assert (= (and b!1208647 (not res!543556)) b!1208648))

(declare-fun m!1384197 () Bool)

(assert (=> b!1208646 m!1384197))

(declare-fun m!1384199 () Bool)

(assert (=> b!1208648 m!1384199))

(assert (=> b!1208577 d!345656))

(declare-fun d!345658 () Bool)

(assert (=> d!345658 true))

(declare-fun e!775294 () Bool)

(assert (=> d!345658 e!775294))

(declare-fun res!543559 () List!12199)

(assert (=> d!345658 (= (choose!7749 thiss!9565) res!543559)))

(declare-fun b!1208651 () Bool)

(declare-fun tp!342376 () Bool)

(assert (=> b!1208651 (= e!775294 (and tp_is_empty!6141 tp!342376))))

(assert (= (and d!345658 ((_ is Cons!12158) res!543559)) b!1208651))

(assert (=> d!345628 d!345658))

(declare-fun d!345660 () Bool)

(assert (=> d!345660 true))

(declare-fun e!775295 () Bool)

(assert (=> d!345660 e!775295))

(declare-fun res!543560 () List!12199)

(assert (=> d!345660 (= (choose!7749 other!28) res!543560)))

(declare-fun b!1208652 () Bool)

(declare-fun tp!342377 () Bool)

(assert (=> b!1208652 (= e!775295 (and tp_is_empty!6141 tp!342377))))

(assert (= (and d!345660 ((_ is Cons!12158) res!543560)) b!1208652))

(assert (=> d!345612 d!345660))

(declare-fun d!345662 () Bool)

(assert (=> d!345662 (= (inv!16309 (value!68189 (underlying!2786 thiss!9565))) (isBalanced!1172 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))))

(declare-fun bs!288524 () Bool)

(assert (= bs!288524 d!345662))

(declare-fun m!1384201 () Bool)

(assert (=> bs!288524 m!1384201))

(assert (=> b!1208584 d!345662))

(declare-fun d!345664 () Bool)

(declare-fun lt!413256 () Int)

(assert (=> d!345664 (>= lt!413256 0)))

(declare-fun e!775296 () Int)

(assert (=> d!345664 (= lt!413256 e!775296)))

(declare-fun c!202394 () Bool)

(assert (=> d!345664 (= c!202394 ((_ is Nil!12158) lt!413241))))

(assert (=> d!345664 (= (size!9698 lt!413241) lt!413256)))

(declare-fun b!1208653 () Bool)

(assert (=> b!1208653 (= e!775296 0)))

(declare-fun b!1208654 () Bool)

(assert (=> b!1208654 (= e!775296 (+ 1 (size!9698 (t!112598 lt!413241))))))

(assert (= (and d!345664 c!202394) b!1208653))

(assert (= (and d!345664 (not c!202394)) b!1208654))

(declare-fun m!1384203 () Bool)

(assert (=> b!1208654 m!1384203))

(assert (=> b!1208537 d!345664))

(declare-fun d!345666 () Bool)

(declare-fun lt!413257 () Int)

(assert (=> d!345666 (>= lt!413257 0)))

(declare-fun e!775297 () Int)

(assert (=> d!345666 (= lt!413257 e!775297)))

(declare-fun c!202395 () Bool)

(assert (=> d!345666 (= c!202395 ((_ is Nil!12158) lt!413243))))

(assert (=> d!345666 (= (size!9698 lt!413243) lt!413257)))

(declare-fun b!1208655 () Bool)

(assert (=> b!1208655 (= e!775297 0)))

(declare-fun b!1208656 () Bool)

(assert (=> b!1208656 (= e!775297 (+ 1 (size!9698 (t!112598 lt!413243))))))

(assert (= (and d!345666 c!202395) b!1208655))

(assert (= (and d!345666 (not c!202395)) b!1208656))

(declare-fun m!1384205 () Bool)

(assert (=> b!1208656 m!1384205))

(assert (=> b!1208555 d!345666))

(declare-fun d!345668 () Bool)

(declare-fun c!202396 () Bool)

(assert (=> d!345668 (= c!202396 ((_ is Node!4004) (c!202336 (value!68189 (underlying!2786 thiss!9565)))))))

(declare-fun e!775298 () Bool)

(assert (=> d!345668 (= (inv!16308 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) e!775298)))

(declare-fun b!1208657 () Bool)

(assert (=> b!1208657 (= e!775298 (inv!16312 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))))

(declare-fun b!1208658 () Bool)

(declare-fun e!775299 () Bool)

(assert (=> b!1208658 (= e!775298 e!775299)))

(declare-fun res!543561 () Bool)

(assert (=> b!1208658 (= res!543561 (not ((_ is Leaf!6166) (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))

(assert (=> b!1208658 (=> res!543561 e!775299)))

(declare-fun b!1208659 () Bool)

(assert (=> b!1208659 (= e!775299 (inv!16313 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))))

(assert (= (and d!345668 c!202396) b!1208657))

(assert (= (and d!345668 (not c!202396)) b!1208658))

(assert (= (and b!1208658 (not res!543561)) b!1208659))

(declare-fun m!1384207 () Bool)

(assert (=> b!1208657 m!1384207))

(declare-fun m!1384209 () Bool)

(assert (=> b!1208659 m!1384209))

(assert (=> b!1208585 d!345668))

(declare-fun d!345670 () Bool)

(declare-fun lt!413258 () Int)

(assert (=> d!345670 (>= lt!413258 0)))

(declare-fun e!775300 () Int)

(assert (=> d!345670 (= lt!413258 e!775300)))

(declare-fun c!202397 () Bool)

(assert (=> d!345670 (= c!202397 ((_ is Nil!12158) (list!4522 other!28)))))

(assert (=> d!345670 (= (size!9698 (list!4522 other!28)) lt!413258)))

(declare-fun b!1208660 () Bool)

(assert (=> b!1208660 (= e!775300 0)))

(declare-fun b!1208661 () Bool)

(assert (=> b!1208661 (= e!775300 (+ 1 (size!9698 (t!112598 (list!4522 other!28)))))))

(assert (= (and d!345670 c!202397) b!1208660))

(assert (= (and d!345670 (not c!202397)) b!1208661))

(declare-fun m!1384211 () Bool)

(assert (=> b!1208661 m!1384211))

(assert (=> d!345614 d!345670))

(assert (=> d!345614 d!345612))

(declare-fun d!345672 () Bool)

(declare-fun res!543564 () Int)

(assert (=> d!345672 (= res!543564 (size!9698 (list!4522 other!28)))))

(assert (=> d!345672 true))

(assert (=> d!345672 (= (choose!7750 other!28) res!543564)))

(declare-fun bs!288525 () Bool)

(assert (= bs!288525 d!345672))

(assert (=> bs!288525 m!1384077))

(assert (=> bs!288525 m!1384077))

(assert (=> bs!288525 m!1384091))

(assert (=> d!345614 d!345672))

(declare-fun d!345674 () Bool)

(declare-fun lt!413259 () Int)

(assert (=> d!345674 (>= lt!413259 0)))

(declare-fun e!775301 () Int)

(assert (=> d!345674 (= lt!413259 e!775301)))

(declare-fun c!202398 () Bool)

(assert (=> d!345674 (= c!202398 ((_ is Nil!12158) (t!112598 lt!413229)))))

(assert (=> d!345674 (= (size!9698 (t!112598 lt!413229)) lt!413259)))

(declare-fun b!1208662 () Bool)

(assert (=> b!1208662 (= e!775301 0)))

(declare-fun b!1208663 () Bool)

(assert (=> b!1208663 (= e!775301 (+ 1 (size!9698 (t!112598 (t!112598 lt!413229)))))))

(assert (= (and d!345674 c!202398) b!1208662))

(assert (= (and d!345674 (not c!202398)) b!1208663))

(declare-fun m!1384213 () Bool)

(assert (=> b!1208663 m!1384213))

(assert (=> b!1208561 d!345674))

(declare-fun d!345676 () Bool)

(declare-fun lt!413260 () Int)

(assert (=> d!345676 (>= lt!413260 0)))

(declare-fun e!775302 () Int)

(assert (=> d!345676 (= lt!413260 e!775302)))

(declare-fun c!202399 () Bool)

(assert (=> d!345676 (= c!202399 ((_ is Nil!12158) (t!112598 lt!413228)))))

(assert (=> d!345676 (= (size!9698 (t!112598 lt!413228)) lt!413260)))

(declare-fun b!1208664 () Bool)

(assert (=> b!1208664 (= e!775302 0)))

(declare-fun b!1208665 () Bool)

(assert (=> b!1208665 (= e!775302 (+ 1 (size!9698 (t!112598 (t!112598 lt!413228)))))))

(assert (= (and d!345676 c!202399) b!1208664))

(assert (= (and d!345676 (not c!202399)) b!1208665))

(declare-fun m!1384215 () Bool)

(assert (=> b!1208665 m!1384215))

(assert (=> b!1208487 d!345676))

(declare-fun d!345678 () Bool)

(declare-fun lt!413261 () Int)

(assert (=> d!345678 (>= lt!413261 0)))

(declare-fun e!775303 () Int)

(assert (=> d!345678 (= lt!413261 e!775303)))

(declare-fun c!202400 () Bool)

(assert (=> d!345678 (= c!202400 ((_ is Nil!12158) (list!4522 thiss!9565)))))

(assert (=> d!345678 (= (size!9698 (list!4522 thiss!9565)) lt!413261)))

(declare-fun b!1208666 () Bool)

(assert (=> b!1208666 (= e!775303 0)))

(declare-fun b!1208667 () Bool)

(assert (=> b!1208667 (= e!775303 (+ 1 (size!9698 (t!112598 (list!4522 thiss!9565)))))))

(assert (= (and d!345678 c!202400) b!1208666))

(assert (= (and d!345678 (not c!202400)) b!1208667))

(declare-fun m!1384217 () Bool)

(assert (=> b!1208667 m!1384217))

(assert (=> d!345630 d!345678))

(assert (=> d!345630 d!345628))

(declare-fun d!345680 () Bool)

(declare-fun res!543565 () Int)

(assert (=> d!345680 (= res!543565 (size!9698 (list!4522 thiss!9565)))))

(assert (=> d!345680 true))

(assert (=> d!345680 (= (choose!7750 thiss!9565) res!543565)))

(declare-fun bs!288526 () Bool)

(assert (= bs!288526 d!345680))

(assert (=> bs!288526 m!1384083))

(assert (=> bs!288526 m!1384083))

(assert (=> bs!288526 m!1384131))

(assert (=> d!345630 d!345680))

(assert (=> bm!84372 d!345626))

(assert (=> bm!84374 d!345610))

(declare-fun e!775309 () Bool)

(declare-fun tp!342385 () Bool)

(declare-fun b!1208676 () Bool)

(declare-fun tp!342384 () Bool)

(assert (=> b!1208676 (= e!775309 (and (inv!16308 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) tp!342385 (inv!16308 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) tp!342384))))

(declare-fun b!1208678 () Bool)

(declare-fun e!775308 () Bool)

(declare-fun tp!342386 () Bool)

(assert (=> b!1208678 (= e!775308 tp!342386)))

(declare-fun b!1208677 () Bool)

(declare-fun inv!16314 (IArray!8013) Bool)

(assert (=> b!1208677 (= e!775309 (and (inv!16314 (xs!6715 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) e!775308))))

(assert (=> b!1208585 (= tp!342359 (and (inv!16308 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) e!775309))))

(assert (= (and b!1208585 ((_ is Node!4004) (c!202336 (value!68189 (underlying!2786 thiss!9565))))) b!1208676))

(assert (= b!1208677 b!1208678))

(assert (= (and b!1208585 ((_ is Leaf!6166) (c!202336 (value!68189 (underlying!2786 thiss!9565))))) b!1208677))

(declare-fun m!1384219 () Bool)

(assert (=> b!1208676 m!1384219))

(declare-fun m!1384221 () Bool)

(assert (=> b!1208676 m!1384221))

(declare-fun m!1384223 () Bool)

(assert (=> b!1208677 m!1384223))

(assert (=> b!1208585 m!1384143))

(declare-fun b!1208683 () Bool)

(declare-fun e!775312 () Bool)

(declare-fun tp!342391 () Bool)

(declare-fun tp!342392 () Bool)

(assert (=> b!1208683 (= e!775312 (and tp!342391 tp!342392))))

(assert (=> b!1208578 (= tp!342355 e!775312)))

(assert (= (and b!1208578 ((_ is Cons!12159) (value!68190 (underlying!2786 other!28)))) b!1208683))

(declare-fun b!1208684 () Bool)

(declare-fun tp!342393 () Bool)

(declare-fun tp!342394 () Bool)

(declare-fun e!775314 () Bool)

(assert (=> b!1208684 (= e!775314 (and (inv!16308 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28))))) tp!342394 (inv!16308 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28))))) tp!342393))))

(declare-fun b!1208686 () Bool)

(declare-fun e!775313 () Bool)

(declare-fun tp!342395 () Bool)

(assert (=> b!1208686 (= e!775313 tp!342395)))

(declare-fun b!1208685 () Bool)

(assert (=> b!1208685 (= e!775314 (and (inv!16314 (xs!6715 (c!202336 (value!68189 (underlying!2786 other!28))))) e!775313))))

(assert (=> b!1208577 (= tp!342354 (and (inv!16308 (c!202336 (value!68189 (underlying!2786 other!28)))) e!775314))))

(assert (= (and b!1208577 ((_ is Node!4004) (c!202336 (value!68189 (underlying!2786 other!28))))) b!1208684))

(assert (= b!1208685 b!1208686))

(assert (= (and b!1208577 ((_ is Leaf!6166) (c!202336 (value!68189 (underlying!2786 other!28))))) b!1208685))

(declare-fun m!1384225 () Bool)

(assert (=> b!1208684 m!1384225))

(declare-fun m!1384227 () Bool)

(assert (=> b!1208684 m!1384227))

(declare-fun m!1384229 () Bool)

(assert (=> b!1208685 m!1384229))

(assert (=> b!1208577 m!1384137))

(declare-fun b!1208687 () Bool)

(declare-fun e!775315 () Bool)

(declare-fun tp!342396 () Bool)

(assert (=> b!1208687 (= e!775315 (and tp_is_empty!6141 tp!342396))))

(assert (=> b!1208583 (= tp!342358 e!775315)))

(assert (= (and b!1208583 ((_ is Cons!12158) (t!112598 (overflowing!99 other!28)))) b!1208687))

(declare-fun b!1208688 () Bool)

(declare-fun e!775316 () Bool)

(declare-fun tp!342397 () Bool)

(assert (=> b!1208688 (= e!775316 (and tp_is_empty!6141 tp!342397))))

(assert (=> b!1208587 (= tp!342361 e!775316)))

(assert (= (and b!1208587 ((_ is Cons!12158) (t!112598 (overflowing!99 thiss!9565)))) b!1208688))

(declare-fun b!1208689 () Bool)

(declare-fun e!775317 () Bool)

(declare-fun tp!342398 () Bool)

(declare-fun tp!342399 () Bool)

(assert (=> b!1208689 (= e!775317 (and tp!342398 tp!342399))))

(assert (=> b!1208586 (= tp!342360 e!775317)))

(assert (= (and b!1208586 ((_ is Cons!12159) (value!68190 (underlying!2786 thiss!9565)))) b!1208689))

(check-sat (not b!1208639) (not d!345672) (not bm!84376) (not b!1208657) (not b!1208683) (not b!1208626) (not b!1208676) (not b!1208646) (not b!1208617) (not b!1208659) (not b!1208686) (not b!1208688) (not b!1208585) (not d!345644) (not b!1208667) (not b!1208651) (not b!1208577) (not b!1208665) tp_is_empty!6141 (not b!1208656) (not b!1208623) (not b!1208637) (not d!345680) (not b!1208635) (not b!1208689) (not bm!84375) (not b!1208633) (not b!1208652) (not b!1208685) (not b!1208661) (not b!1208614) (not d!345642) (not b!1208648) (not b!1208684) (not b!1208678) (not b!1208663) (not b!1208687) (not d!345662) (not b!1208677) (not d!345650) (not b!1208654))
(check-sat)
(get-model)

(declare-fun d!345722 () Bool)

(declare-fun size!9700 (List!12201) Int)

(assert (=> d!345722 (= (inv!16314 (xs!6715 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) (<= (size!9700 (innerList!4064 (xs!6715 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) 2147483647))))

(declare-fun bs!288531 () Bool)

(assert (= bs!288531 d!345722))

(declare-fun m!1384295 () Bool)

(assert (=> bs!288531 m!1384295))

(assert (=> b!1208677 d!345722))

(declare-fun d!345724 () Bool)

(declare-fun lt!413270 () Int)

(assert (=> d!345724 (>= lt!413270 0)))

(declare-fun e!775366 () Int)

(assert (=> d!345724 (= lt!413270 e!775366)))

(declare-fun c!202425 () Bool)

(assert (=> d!345724 (= c!202425 ((_ is Nil!12158) lt!413255))))

(assert (=> d!345724 (= (size!9698 lt!413255) lt!413270)))

(declare-fun b!1208770 () Bool)

(assert (=> b!1208770 (= e!775366 0)))

(declare-fun b!1208771 () Bool)

(assert (=> b!1208771 (= e!775366 (+ 1 (size!9698 (t!112598 lt!413255))))))

(assert (= (and d!345724 c!202425) b!1208770))

(assert (= (and d!345724 (not c!202425)) b!1208771))

(declare-fun m!1384297 () Bool)

(assert (=> b!1208771 m!1384297))

(assert (=> b!1208623 d!345724))

(declare-fun b!1208784 () Bool)

(declare-fun e!775371 () Bool)

(declare-fun isEmpty!7277 (Conc!4004) Bool)

(assert (=> b!1208784 (= e!775371 (not (isEmpty!7277 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28)))))))))

(declare-fun b!1208785 () Bool)

(declare-fun res!543596 () Bool)

(assert (=> b!1208785 (=> (not res!543596) (not e!775371))))

(assert (=> b!1208785 (= res!543596 (isBalanced!1172 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28))))))))

(declare-fun b!1208786 () Bool)

(declare-fun res!543593 () Bool)

(assert (=> b!1208786 (=> (not res!543593) (not e!775371))))

(assert (=> b!1208786 (= res!543593 (isBalanced!1172 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28))))))))

(declare-fun b!1208787 () Bool)

(declare-fun res!543594 () Bool)

(assert (=> b!1208787 (=> (not res!543594) (not e!775371))))

(declare-fun height!581 (Conc!4004) Int)

(assert (=> b!1208787 (= res!543594 (<= (- (height!581 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28))))) (height!581 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28)))))) 1))))

(declare-fun b!1208788 () Bool)

(declare-fun e!775372 () Bool)

(assert (=> b!1208788 (= e!775372 e!775371)))

(declare-fun res!543595 () Bool)

(assert (=> b!1208788 (=> (not res!543595) (not e!775371))))

(assert (=> b!1208788 (= res!543595 (<= (- 1) (- (height!581 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28))))) (height!581 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28))))))))))

(declare-fun b!1208789 () Bool)

(declare-fun res!543592 () Bool)

(assert (=> b!1208789 (=> (not res!543592) (not e!775371))))

(assert (=> b!1208789 (= res!543592 (not (isEmpty!7277 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28)))))))))

(declare-fun d!345726 () Bool)

(declare-fun res!543597 () Bool)

(assert (=> d!345726 (=> res!543597 e!775372)))

(assert (=> d!345726 (= res!543597 (not ((_ is Node!4004) (c!202336 (value!68189 (underlying!2786 other!28))))))))

(assert (=> d!345726 (= (isBalanced!1172 (c!202336 (value!68189 (underlying!2786 other!28)))) e!775372)))

(assert (= (and d!345726 (not res!543597)) b!1208788))

(assert (= (and b!1208788 res!543595) b!1208787))

(assert (= (and b!1208787 res!543594) b!1208786))

(assert (= (and b!1208786 res!543593) b!1208785))

(assert (= (and b!1208785 res!543596) b!1208789))

(assert (= (and b!1208789 res!543592) b!1208784))

(declare-fun m!1384299 () Bool)

(assert (=> b!1208785 m!1384299))

(declare-fun m!1384301 () Bool)

(assert (=> b!1208786 m!1384301))

(declare-fun m!1384303 () Bool)

(assert (=> b!1208789 m!1384303))

(declare-fun m!1384305 () Bool)

(assert (=> b!1208784 m!1384305))

(declare-fun m!1384307 () Bool)

(assert (=> b!1208788 m!1384307))

(declare-fun m!1384309 () Bool)

(assert (=> b!1208788 m!1384309))

(assert (=> b!1208787 m!1384307))

(assert (=> b!1208787 m!1384309))

(assert (=> d!345650 d!345726))

(declare-fun d!345728 () Bool)

(declare-fun lt!413271 () Int)

(assert (=> d!345728 (>= lt!413271 0)))

(declare-fun e!775373 () Int)

(assert (=> d!345728 (= lt!413271 e!775373)))

(declare-fun c!202426 () Bool)

(assert (=> d!345728 (= c!202426 ((_ is Nil!12158) (t!112598 (t!112598 lt!413228))))))

(assert (=> d!345728 (= (size!9698 (t!112598 (t!112598 lt!413228))) lt!413271)))

(declare-fun b!1208790 () Bool)

(assert (=> b!1208790 (= e!775373 0)))

(declare-fun b!1208791 () Bool)

(assert (=> b!1208791 (= e!775373 (+ 1 (size!9698 (t!112598 (t!112598 (t!112598 lt!413228))))))))

(assert (= (and d!345728 c!202426) b!1208790))

(assert (= (and d!345728 (not c!202426)) b!1208791))

(declare-fun m!1384311 () Bool)

(assert (=> b!1208791 m!1384311))

(assert (=> b!1208665 d!345728))

(declare-fun d!345730 () Bool)

(declare-fun c!202427 () Bool)

(assert (=> d!345730 (= c!202427 ((_ is Node!4004) (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))

(declare-fun e!775374 () Bool)

(assert (=> d!345730 (= (inv!16308 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) e!775374)))

(declare-fun b!1208792 () Bool)

(assert (=> b!1208792 (= e!775374 (inv!16312 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))

(declare-fun b!1208793 () Bool)

(declare-fun e!775375 () Bool)

(assert (=> b!1208793 (= e!775374 e!775375)))

(declare-fun res!543598 () Bool)

(assert (=> b!1208793 (= res!543598 (not ((_ is Leaf!6166) (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))))))

(assert (=> b!1208793 (=> res!543598 e!775375)))

(declare-fun b!1208794 () Bool)

(assert (=> b!1208794 (= e!775375 (inv!16313 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))

(assert (= (and d!345730 c!202427) b!1208792))

(assert (= (and d!345730 (not c!202427)) b!1208793))

(assert (= (and b!1208793 (not res!543598)) b!1208794))

(declare-fun m!1384313 () Bool)

(assert (=> b!1208792 m!1384313))

(declare-fun m!1384315 () Bool)

(assert (=> b!1208794 m!1384315))

(assert (=> b!1208676 d!345730))

(declare-fun d!345732 () Bool)

(declare-fun c!202428 () Bool)

(assert (=> d!345732 (= c!202428 ((_ is Node!4004) (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))

(declare-fun e!775376 () Bool)

(assert (=> d!345732 (= (inv!16308 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) e!775376)))

(declare-fun b!1208795 () Bool)

(assert (=> b!1208795 (= e!775376 (inv!16312 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))

(declare-fun b!1208796 () Bool)

(declare-fun e!775377 () Bool)

(assert (=> b!1208796 (= e!775376 e!775377)))

(declare-fun res!543599 () Bool)

(assert (=> b!1208796 (= res!543599 (not ((_ is Leaf!6166) (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))))))

(assert (=> b!1208796 (=> res!543599 e!775377)))

(declare-fun b!1208797 () Bool)

(assert (=> b!1208797 (= e!775377 (inv!16313 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))

(assert (= (and d!345732 c!202428) b!1208795))

(assert (= (and d!345732 (not c!202428)) b!1208796))

(assert (= (and b!1208796 (not res!543599)) b!1208797))

(declare-fun m!1384317 () Bool)

(assert (=> b!1208795 m!1384317))

(declare-fun m!1384319 () Bool)

(assert (=> b!1208797 m!1384319))

(assert (=> b!1208676 d!345732))

(assert (=> bm!84376 d!345676))

(declare-fun d!345734 () Bool)

(declare-fun c!202429 () Bool)

(assert (=> d!345734 (= c!202429 ((_ is Nil!12158) (t!112598 lt!413228)))))

(declare-fun e!775378 () (InoxSet T!22468))

(assert (=> d!345734 (= (content!1723 (t!112598 lt!413228)) e!775378)))

(declare-fun b!1208798 () Bool)

(assert (=> b!1208798 (= e!775378 ((as const (Array T!22468 Bool)) false))))

(declare-fun b!1208799 () Bool)

(assert (=> b!1208799 (= e!775378 ((_ map or) (store ((as const (Array T!22468 Bool)) false) (h!17559 (t!112598 lt!413228)) true) (content!1723 (t!112598 (t!112598 lt!413228)))))))

(assert (= (and d!345734 c!202429) b!1208798))

(assert (= (and d!345734 (not c!202429)) b!1208799))

(declare-fun m!1384321 () Bool)

(assert (=> b!1208799 m!1384321))

(declare-fun m!1384323 () Bool)

(assert (=> b!1208799 m!1384323))

(assert (=> b!1208635 d!345734))

(assert (=> d!345672 d!345670))

(assert (=> d!345672 d!345612))

(declare-fun b!1208800 () Bool)

(declare-fun e!775379 () Bool)

(assert (=> b!1208800 (= e!775379 (not (isEmpty!7277 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))))))

(declare-fun b!1208801 () Bool)

(declare-fun res!543604 () Bool)

(assert (=> b!1208801 (=> (not res!543604) (not e!775379))))

(assert (=> b!1208801 (= res!543604 (isBalanced!1172 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))

(declare-fun b!1208802 () Bool)

(declare-fun res!543601 () Bool)

(assert (=> b!1208802 (=> (not res!543601) (not e!775379))))

(assert (=> b!1208802 (= res!543601 (isBalanced!1172 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))

(declare-fun b!1208803 () Bool)

(declare-fun res!543602 () Bool)

(assert (=> b!1208803 (=> (not res!543602) (not e!775379))))

(assert (=> b!1208803 (= res!543602 (<= (- (height!581 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) (height!581 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) 1))))

(declare-fun b!1208804 () Bool)

(declare-fun e!775380 () Bool)

(assert (=> b!1208804 (= e!775380 e!775379)))

(declare-fun res!543603 () Bool)

(assert (=> b!1208804 (=> (not res!543603) (not e!775379))))

(assert (=> b!1208804 (= res!543603 (<= (- 1) (- (height!581 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) (height!581 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))))

(declare-fun b!1208805 () Bool)

(declare-fun res!543600 () Bool)

(assert (=> b!1208805 (=> (not res!543600) (not e!775379))))

(assert (=> b!1208805 (= res!543600 (not (isEmpty!7277 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))))))

(declare-fun d!345736 () Bool)

(declare-fun res!543605 () Bool)

(assert (=> d!345736 (=> res!543605 e!775380)))

(assert (=> d!345736 (= res!543605 (not ((_ is Node!4004) (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))

(assert (=> d!345736 (= (isBalanced!1172 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) e!775380)))

(assert (= (and d!345736 (not res!543605)) b!1208804))

(assert (= (and b!1208804 res!543603) b!1208803))

(assert (= (and b!1208803 res!543602) b!1208802))

(assert (= (and b!1208802 res!543601) b!1208801))

(assert (= (and b!1208801 res!543604) b!1208805))

(assert (= (and b!1208805 res!543600) b!1208800))

(declare-fun m!1384325 () Bool)

(assert (=> b!1208801 m!1384325))

(declare-fun m!1384327 () Bool)

(assert (=> b!1208802 m!1384327))

(declare-fun m!1384329 () Bool)

(assert (=> b!1208805 m!1384329))

(declare-fun m!1384331 () Bool)

(assert (=> b!1208800 m!1384331))

(declare-fun m!1384333 () Bool)

(assert (=> b!1208804 m!1384333))

(declare-fun m!1384335 () Bool)

(assert (=> b!1208804 m!1384335))

(assert (=> b!1208803 m!1384333))

(assert (=> b!1208803 m!1384335))

(assert (=> d!345662 d!345736))

(declare-fun d!345738 () Bool)

(declare-fun c!202430 () Bool)

(assert (=> d!345738 (= c!202430 ((_ is Nil!12158) lt!413254))))

(declare-fun e!775381 () (InoxSet T!22468))

(assert (=> d!345738 (= (content!1723 lt!413254) e!775381)))

(declare-fun b!1208806 () Bool)

(assert (=> b!1208806 (= e!775381 ((as const (Array T!22468 Bool)) false))))

(declare-fun b!1208807 () Bool)

(assert (=> b!1208807 (= e!775381 ((_ map or) (store ((as const (Array T!22468 Bool)) false) (h!17559 lt!413254) true) (content!1723 (t!112598 lt!413254))))))

(assert (= (and d!345738 c!202430) b!1208806))

(assert (= (and d!345738 (not c!202430)) b!1208807))

(declare-fun m!1384337 () Bool)

(assert (=> b!1208807 m!1384337))

(declare-fun m!1384339 () Bool)

(assert (=> b!1208807 m!1384339))

(assert (=> d!345642 d!345738))

(declare-fun d!345740 () Bool)

(declare-fun c!202431 () Bool)

(assert (=> d!345740 (= c!202431 ((_ is Nil!12158) (t!112598 lt!413229)))))

(declare-fun e!775382 () (InoxSet T!22468))

(assert (=> d!345740 (= (content!1723 (t!112598 lt!413229)) e!775382)))

(declare-fun b!1208808 () Bool)

(assert (=> b!1208808 (= e!775382 ((as const (Array T!22468 Bool)) false))))

(declare-fun b!1208809 () Bool)

(assert (=> b!1208809 (= e!775382 ((_ map or) (store ((as const (Array T!22468 Bool)) false) (h!17559 (t!112598 lt!413229)) true) (content!1723 (t!112598 (t!112598 lt!413229)))))))

(assert (= (and d!345740 c!202431) b!1208808))

(assert (= (and d!345740 (not c!202431)) b!1208809))

(declare-fun m!1384341 () Bool)

(assert (=> b!1208809 m!1384341))

(declare-fun m!1384343 () Bool)

(assert (=> b!1208809 m!1384343))

(assert (=> d!345642 d!345740))

(declare-fun d!345742 () Bool)

(declare-fun lt!413272 () Int)

(assert (=> d!345742 (>= lt!413272 0)))

(declare-fun e!775383 () Int)

(assert (=> d!345742 (= lt!413272 e!775383)))

(declare-fun c!202432 () Bool)

(assert (=> d!345742 (= c!202432 ((_ is Nil!12158) (t!112598 lt!413243)))))

(assert (=> d!345742 (= (size!9698 (t!112598 lt!413243)) lt!413272)))

(declare-fun b!1208810 () Bool)

(assert (=> b!1208810 (= e!775383 0)))

(declare-fun b!1208811 () Bool)

(assert (=> b!1208811 (= e!775383 (+ 1 (size!9698 (t!112598 (t!112598 lt!413243)))))))

(assert (= (and d!345742 c!202432) b!1208810))

(assert (= (and d!345742 (not c!202432)) b!1208811))

(declare-fun m!1384345 () Bool)

(assert (=> b!1208811 m!1384345))

(assert (=> b!1208656 d!345742))

(declare-fun b!1208812 () Bool)

(declare-fun e!775384 () List!12199)

(assert (=> b!1208812 (= e!775384 Nil!12158)))

(declare-fun bm!84379 () Bool)

(declare-fun call!84384 () Int)

(assert (=> bm!84379 (= call!84384 (size!9698 (t!112598 (t!112598 lt!413229))))))

(declare-fun d!345744 () Bool)

(declare-fun e!775387 () Bool)

(assert (=> d!345744 e!775387))

(declare-fun res!543606 () Bool)

(assert (=> d!345744 (=> (not res!543606) (not e!775387))))

(declare-fun lt!413273 () List!12199)

(assert (=> d!345744 (= res!543606 (= ((_ map implies) (content!1723 lt!413273) (content!1723 (t!112598 (t!112598 lt!413229)))) ((as const (InoxSet T!22468)) true)))))

(assert (=> d!345744 (= lt!413273 e!775384)))

(declare-fun c!202435 () Bool)

(assert (=> d!345744 (= c!202435 ((_ is Nil!12158) (t!112598 (t!112598 lt!413229))))))

(assert (=> d!345744 (= (drop!634 (t!112598 (t!112598 lt!413229)) (- (- from!777 1) 1)) lt!413273)))

(declare-fun b!1208813 () Bool)

(declare-fun e!775388 () Int)

(assert (=> b!1208813 (= e!775388 0)))

(declare-fun b!1208814 () Bool)

(declare-fun e!775386 () List!12199)

(assert (=> b!1208814 (= e!775386 (t!112598 (t!112598 lt!413229)))))

(declare-fun b!1208815 () Bool)

(assert (=> b!1208815 (= e!775384 e!775386)))

(declare-fun c!202434 () Bool)

(assert (=> b!1208815 (= c!202434 (<= (- (- from!777 1) 1) 0))))

(declare-fun b!1208816 () Bool)

(declare-fun e!775385 () Int)

(assert (=> b!1208816 (= e!775387 (= (size!9698 lt!413273) e!775385))))

(declare-fun c!202433 () Bool)

(assert (=> b!1208816 (= c!202433 (<= (- (- from!777 1) 1) 0))))

(declare-fun b!1208817 () Bool)

(assert (=> b!1208817 (= e!775385 e!775388)))

(declare-fun c!202436 () Bool)

(assert (=> b!1208817 (= c!202436 (>= (- (- from!777 1) 1) call!84384))))

(declare-fun b!1208818 () Bool)

(assert (=> b!1208818 (= e!775388 (- call!84384 (- (- from!777 1) 1)))))

(declare-fun b!1208819 () Bool)

(assert (=> b!1208819 (= e!775386 (drop!634 (t!112598 (t!112598 (t!112598 lt!413229))) (- (- (- from!777 1) 1) 1)))))

(declare-fun b!1208820 () Bool)

(assert (=> b!1208820 (= e!775385 call!84384)))

(assert (= (and d!345744 c!202435) b!1208812))

(assert (= (and d!345744 (not c!202435)) b!1208815))

(assert (= (and b!1208815 c!202434) b!1208814))

(assert (= (and b!1208815 (not c!202434)) b!1208819))

(assert (= (and d!345744 res!543606) b!1208816))

(assert (= (and b!1208816 c!202433) b!1208820))

(assert (= (and b!1208816 (not c!202433)) b!1208817))

(assert (= (and b!1208817 c!202436) b!1208813))

(assert (= (and b!1208817 (not c!202436)) b!1208818))

(assert (= (or b!1208820 b!1208817 b!1208818) bm!84379))

(assert (=> bm!84379 m!1384213))

(declare-fun m!1384347 () Bool)

(assert (=> d!345744 m!1384347))

(assert (=> d!345744 m!1384343))

(declare-fun m!1384349 () Bool)

(assert (=> b!1208816 m!1384349))

(declare-fun m!1384351 () Bool)

(assert (=> b!1208819 m!1384351))

(assert (=> b!1208617 d!345744))

(declare-fun d!345746 () Bool)

(declare-fun lt!413274 () Int)

(assert (=> d!345746 (>= lt!413274 0)))

(declare-fun e!775389 () Int)

(assert (=> d!345746 (= lt!413274 e!775389)))

(declare-fun c!202437 () Bool)

(assert (=> d!345746 (= c!202437 ((_ is Nil!12158) (t!112598 (list!4522 other!28))))))

(assert (=> d!345746 (= (size!9698 (t!112598 (list!4522 other!28))) lt!413274)))

(declare-fun b!1208821 () Bool)

(assert (=> b!1208821 (= e!775389 0)))

(declare-fun b!1208822 () Bool)

(assert (=> b!1208822 (= e!775389 (+ 1 (size!9698 (t!112598 (t!112598 (list!4522 other!28))))))))

(assert (= (and d!345746 c!202437) b!1208821))

(assert (= (and d!345746 (not c!202437)) b!1208822))

(declare-fun m!1384353 () Bool)

(assert (=> b!1208822 m!1384353))

(assert (=> b!1208661 d!345746))

(declare-fun d!345748 () Bool)

(declare-fun c!202438 () Bool)

(assert (=> d!345748 (= c!202438 ((_ is Nil!12158) (t!112598 lt!413241)))))

(declare-fun e!775390 () (InoxSet T!22468))

(assert (=> d!345748 (= (content!1723 (t!112598 lt!413241)) e!775390)))

(declare-fun b!1208823 () Bool)

(assert (=> b!1208823 (= e!775390 ((as const (Array T!22468 Bool)) false))))

(declare-fun b!1208824 () Bool)

(assert (=> b!1208824 (= e!775390 ((_ map or) (store ((as const (Array T!22468 Bool)) false) (h!17559 (t!112598 lt!413241)) true) (content!1723 (t!112598 (t!112598 lt!413241)))))))

(assert (= (and d!345748 c!202438) b!1208823))

(assert (= (and d!345748 (not c!202438)) b!1208824))

(declare-fun m!1384355 () Bool)

(assert (=> b!1208824 m!1384355))

(declare-fun m!1384357 () Bool)

(assert (=> b!1208824 m!1384357))

(assert (=> b!1208637 d!345748))

(declare-fun d!345750 () Bool)

(assert (=> d!345750 (= (inv!16314 (xs!6715 (c!202336 (value!68189 (underlying!2786 other!28))))) (<= (size!9700 (innerList!4064 (xs!6715 (c!202336 (value!68189 (underlying!2786 other!28)))))) 2147483647))))

(declare-fun bs!288532 () Bool)

(assert (= bs!288532 d!345750))

(declare-fun m!1384359 () Bool)

(assert (=> bs!288532 m!1384359))

(assert (=> b!1208685 d!345750))

(declare-fun d!345752 () Bool)

(declare-fun lt!413275 () Int)

(assert (=> d!345752 (>= lt!413275 0)))

(declare-fun e!775391 () Int)

(assert (=> d!345752 (= lt!413275 e!775391)))

(declare-fun c!202439 () Bool)

(assert (=> d!345752 (= c!202439 ((_ is Nil!12158) (t!112598 (t!112598 lt!413229))))))

(assert (=> d!345752 (= (size!9698 (t!112598 (t!112598 lt!413229))) lt!413275)))

(declare-fun b!1208825 () Bool)

(assert (=> b!1208825 (= e!775391 0)))

(declare-fun b!1208826 () Bool)

(assert (=> b!1208826 (= e!775391 (+ 1 (size!9698 (t!112598 (t!112598 (t!112598 lt!413229))))))))

(assert (= (and d!345752 c!202439) b!1208825))

(assert (= (and d!345752 (not c!202439)) b!1208826))

(declare-fun m!1384361 () Bool)

(assert (=> b!1208826 m!1384361))

(assert (=> b!1208663 d!345752))

(declare-fun d!345754 () Bool)

(declare-fun lt!413276 () Int)

(assert (=> d!345754 (>= lt!413276 0)))

(declare-fun e!775392 () Int)

(assert (=> d!345754 (= lt!413276 e!775392)))

(declare-fun c!202440 () Bool)

(assert (=> d!345754 (= c!202440 ((_ is Nil!12158) lt!413254))))

(assert (=> d!345754 (= (size!9698 lt!413254) lt!413276)))

(declare-fun b!1208827 () Bool)

(assert (=> b!1208827 (= e!775392 0)))

(declare-fun b!1208828 () Bool)

(assert (=> b!1208828 (= e!775392 (+ 1 (size!9698 (t!112598 lt!413254))))))

(assert (= (and d!345754 c!202440) b!1208827))

(assert (= (and d!345754 (not c!202440)) b!1208828))

(declare-fun m!1384363 () Bool)

(assert (=> b!1208828 m!1384363))

(assert (=> b!1208614 d!345754))

(assert (=> d!345680 d!345678))

(assert (=> d!345680 d!345628))

(declare-fun d!345756 () Bool)

(declare-fun c!202441 () Bool)

(assert (=> d!345756 (= c!202441 ((_ is Node!4004) (left!10589 (c!202336 (value!68189 (underlying!2786 other!28))))))))

(declare-fun e!775393 () Bool)

(assert (=> d!345756 (= (inv!16308 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28))))) e!775393)))

(declare-fun b!1208829 () Bool)

(assert (=> b!1208829 (= e!775393 (inv!16312 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28))))))))

(declare-fun b!1208830 () Bool)

(declare-fun e!775394 () Bool)

(assert (=> b!1208830 (= e!775393 e!775394)))

(declare-fun res!543607 () Bool)

(assert (=> b!1208830 (= res!543607 (not ((_ is Leaf!6166) (left!10589 (c!202336 (value!68189 (underlying!2786 other!28)))))))))

(assert (=> b!1208830 (=> res!543607 e!775394)))

(declare-fun b!1208831 () Bool)

(assert (=> b!1208831 (= e!775394 (inv!16313 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28))))))))

(assert (= (and d!345756 c!202441) b!1208829))

(assert (= (and d!345756 (not c!202441)) b!1208830))

(assert (= (and b!1208830 (not res!543607)) b!1208831))

(declare-fun m!1384365 () Bool)

(assert (=> b!1208829 m!1384365))

(declare-fun m!1384367 () Bool)

(assert (=> b!1208831 m!1384367))

(assert (=> b!1208684 d!345756))

(declare-fun d!345758 () Bool)

(declare-fun c!202442 () Bool)

(assert (=> d!345758 (= c!202442 ((_ is Node!4004) (right!10919 (c!202336 (value!68189 (underlying!2786 other!28))))))))

(declare-fun e!775395 () Bool)

(assert (=> d!345758 (= (inv!16308 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28))))) e!775395)))

(declare-fun b!1208832 () Bool)

(assert (=> b!1208832 (= e!775395 (inv!16312 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28))))))))

(declare-fun b!1208833 () Bool)

(declare-fun e!775396 () Bool)

(assert (=> b!1208833 (= e!775395 e!775396)))

(declare-fun res!543608 () Bool)

(assert (=> b!1208833 (= res!543608 (not ((_ is Leaf!6166) (right!10919 (c!202336 (value!68189 (underlying!2786 other!28)))))))))

(assert (=> b!1208833 (=> res!543608 e!775396)))

(declare-fun b!1208834 () Bool)

(assert (=> b!1208834 (= e!775396 (inv!16313 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28))))))))

(assert (= (and d!345758 c!202442) b!1208832))

(assert (= (and d!345758 (not c!202442)) b!1208833))

(assert (= (and b!1208833 (not res!543608)) b!1208834))

(declare-fun m!1384369 () Bool)

(assert (=> b!1208832 m!1384369))

(declare-fun m!1384371 () Bool)

(assert (=> b!1208834 m!1384371))

(assert (=> b!1208684 d!345758))

(declare-fun d!345760 () Bool)

(declare-fun c!202443 () Bool)

(assert (=> d!345760 (= c!202443 ((_ is Nil!12158) (t!112598 lt!413243)))))

(declare-fun e!775397 () (InoxSet T!22468))

(assert (=> d!345760 (= (content!1723 (t!112598 lt!413243)) e!775397)))

(declare-fun b!1208835 () Bool)

(assert (=> b!1208835 (= e!775397 ((as const (Array T!22468 Bool)) false))))

(declare-fun b!1208836 () Bool)

(assert (=> b!1208836 (= e!775397 ((_ map or) (store ((as const (Array T!22468 Bool)) false) (h!17559 (t!112598 lt!413243)) true) (content!1723 (t!112598 (t!112598 lt!413243)))))))

(assert (= (and d!345760 c!202443) b!1208835))

(assert (= (and d!345760 (not c!202443)) b!1208836))

(declare-fun m!1384373 () Bool)

(assert (=> b!1208836 m!1384373))

(declare-fun m!1384375 () Bool)

(assert (=> b!1208836 m!1384375))

(assert (=> b!1208633 d!345760))

(declare-fun d!345762 () Bool)

(declare-fun res!543613 () Bool)

(declare-fun e!775400 () Bool)

(assert (=> d!345762 (=> (not res!543613) (not e!775400))))

(declare-fun list!4523 (IArray!8013) List!12201)

(assert (=> d!345762 (= res!543613 (<= (size!9700 (list!4523 (xs!6715 (c!202336 (value!68189 (underlying!2786 other!28)))))) 512))))

(assert (=> d!345762 (= (inv!16313 (c!202336 (value!68189 (underlying!2786 other!28)))) e!775400)))

(declare-fun b!1208841 () Bool)

(declare-fun res!543614 () Bool)

(assert (=> b!1208841 (=> (not res!543614) (not e!775400))))

(assert (=> b!1208841 (= res!543614 (= (csize!8239 (c!202336 (value!68189 (underlying!2786 other!28)))) (size!9700 (list!4523 (xs!6715 (c!202336 (value!68189 (underlying!2786 other!28))))))))))

(declare-fun b!1208842 () Bool)

(assert (=> b!1208842 (= e!775400 (and (> (csize!8239 (c!202336 (value!68189 (underlying!2786 other!28)))) 0) (<= (csize!8239 (c!202336 (value!68189 (underlying!2786 other!28)))) 512)))))

(assert (= (and d!345762 res!543613) b!1208841))

(assert (= (and b!1208841 res!543614) b!1208842))

(declare-fun m!1384377 () Bool)

(assert (=> d!345762 m!1384377))

(assert (=> d!345762 m!1384377))

(declare-fun m!1384379 () Bool)

(assert (=> d!345762 m!1384379))

(assert (=> b!1208841 m!1384377))

(assert (=> b!1208841 m!1384377))

(assert (=> b!1208841 m!1384379))

(assert (=> b!1208648 d!345762))

(assert (=> b!1208577 d!345656))

(assert (=> bm!84375 d!345674))

(declare-fun d!345764 () Bool)

(declare-fun lt!413277 () Int)

(assert (=> d!345764 (>= lt!413277 0)))

(declare-fun e!775401 () Int)

(assert (=> d!345764 (= lt!413277 e!775401)))

(declare-fun c!202444 () Bool)

(assert (=> d!345764 (= c!202444 ((_ is Nil!12158) (t!112598 (list!4522 thiss!9565))))))

(assert (=> d!345764 (= (size!9698 (t!112598 (list!4522 thiss!9565))) lt!413277)))

(declare-fun b!1208843 () Bool)

(assert (=> b!1208843 (= e!775401 0)))

(declare-fun b!1208844 () Bool)

(assert (=> b!1208844 (= e!775401 (+ 1 (size!9698 (t!112598 (t!112598 (list!4522 thiss!9565))))))))

(assert (= (and d!345764 c!202444) b!1208843))

(assert (= (and d!345764 (not c!202444)) b!1208844))

(declare-fun m!1384381 () Bool)

(assert (=> b!1208844 m!1384381))

(assert (=> b!1208667 d!345764))

(assert (=> b!1208585 d!345668))

(declare-fun d!345766 () Bool)

(declare-fun res!543621 () Bool)

(declare-fun e!775404 () Bool)

(assert (=> d!345766 (=> (not res!543621) (not e!775404))))

(declare-fun size!9701 (Conc!4004) Int)

(assert (=> d!345766 (= res!543621 (= (csize!8238 (c!202336 (value!68189 (underlying!2786 other!28)))) (+ (size!9701 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28))))) (size!9701 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28))))))))))

(assert (=> d!345766 (= (inv!16312 (c!202336 (value!68189 (underlying!2786 other!28)))) e!775404)))

(declare-fun b!1208851 () Bool)

(declare-fun res!543622 () Bool)

(assert (=> b!1208851 (=> (not res!543622) (not e!775404))))

(assert (=> b!1208851 (= res!543622 (and (not (= (left!10589 (c!202336 (value!68189 (underlying!2786 other!28)))) Empty!4004)) (not (= (right!10919 (c!202336 (value!68189 (underlying!2786 other!28)))) Empty!4004))))))

(declare-fun b!1208852 () Bool)

(declare-fun res!543623 () Bool)

(assert (=> b!1208852 (=> (not res!543623) (not e!775404))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1208852 (= res!543623 (= (cheight!4215 (c!202336 (value!68189 (underlying!2786 other!28)))) (+ (max!0 (height!581 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28))))) (height!581 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28)))))) 1)))))

(declare-fun b!1208853 () Bool)

(assert (=> b!1208853 (= e!775404 (<= 0 (cheight!4215 (c!202336 (value!68189 (underlying!2786 other!28))))))))

(assert (= (and d!345766 res!543621) b!1208851))

(assert (= (and b!1208851 res!543622) b!1208852))

(assert (= (and b!1208852 res!543623) b!1208853))

(declare-fun m!1384383 () Bool)

(assert (=> d!345766 m!1384383))

(declare-fun m!1384385 () Bool)

(assert (=> d!345766 m!1384385))

(assert (=> b!1208852 m!1384307))

(assert (=> b!1208852 m!1384309))

(assert (=> b!1208852 m!1384307))

(assert (=> b!1208852 m!1384309))

(declare-fun m!1384387 () Bool)

(assert (=> b!1208852 m!1384387))

(assert (=> b!1208646 d!345766))

(declare-fun d!345768 () Bool)

(declare-fun c!202445 () Bool)

(assert (=> d!345768 (= c!202445 ((_ is Nil!12158) lt!413255))))

(declare-fun e!775405 () (InoxSet T!22468))

(assert (=> d!345768 (= (content!1723 lt!413255) e!775405)))

(declare-fun b!1208854 () Bool)

(assert (=> b!1208854 (= e!775405 ((as const (Array T!22468 Bool)) false))))

(declare-fun b!1208855 () Bool)

(assert (=> b!1208855 (= e!775405 ((_ map or) (store ((as const (Array T!22468 Bool)) false) (h!17559 lt!413255) true) (content!1723 (t!112598 lt!413255))))))

(assert (= (and d!345768 c!202445) b!1208854))

(assert (= (and d!345768 (not c!202445)) b!1208855))

(declare-fun m!1384389 () Bool)

(assert (=> b!1208855 m!1384389))

(declare-fun m!1384391 () Bool)

(assert (=> b!1208855 m!1384391))

(assert (=> d!345644 d!345768))

(assert (=> d!345644 d!345734))

(declare-fun d!345770 () Bool)

(declare-fun lt!413278 () Int)

(assert (=> d!345770 (>= lt!413278 0)))

(declare-fun e!775406 () Int)

(assert (=> d!345770 (= lt!413278 e!775406)))

(declare-fun c!202446 () Bool)

(assert (=> d!345770 (= c!202446 ((_ is Nil!12158) (t!112598 lt!413241)))))

(assert (=> d!345770 (= (size!9698 (t!112598 lt!413241)) lt!413278)))

(declare-fun b!1208856 () Bool)

(assert (=> b!1208856 (= e!775406 0)))

(declare-fun b!1208857 () Bool)

(assert (=> b!1208857 (= e!775406 (+ 1 (size!9698 (t!112598 (t!112598 lt!413241)))))))

(assert (= (and d!345770 c!202446) b!1208856))

(assert (= (and d!345770 (not c!202446)) b!1208857))

(declare-fun m!1384393 () Bool)

(assert (=> b!1208857 m!1384393))

(assert (=> b!1208654 d!345770))

(declare-fun d!345772 () Bool)

(declare-fun res!543624 () Bool)

(declare-fun e!775407 () Bool)

(assert (=> d!345772 (=> (not res!543624) (not e!775407))))

(assert (=> d!345772 (= res!543624 (<= (size!9700 (list!4523 (xs!6715 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) 512))))

(assert (=> d!345772 (= (inv!16313 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) e!775407)))

(declare-fun b!1208858 () Bool)

(declare-fun res!543625 () Bool)

(assert (=> b!1208858 (=> (not res!543625) (not e!775407))))

(assert (=> b!1208858 (= res!543625 (= (csize!8239 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) (size!9700 (list!4523 (xs!6715 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))))

(declare-fun b!1208859 () Bool)

(assert (=> b!1208859 (= e!775407 (and (> (csize!8239 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) 0) (<= (csize!8239 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) 512)))))

(assert (= (and d!345772 res!543624) b!1208858))

(assert (= (and b!1208858 res!543625) b!1208859))

(declare-fun m!1384395 () Bool)

(assert (=> d!345772 m!1384395))

(assert (=> d!345772 m!1384395))

(declare-fun m!1384397 () Bool)

(assert (=> d!345772 m!1384397))

(assert (=> b!1208858 m!1384395))

(assert (=> b!1208858 m!1384395))

(assert (=> b!1208858 m!1384397))

(assert (=> b!1208659 d!345772))

(declare-fun b!1208860 () Bool)

(declare-fun e!775408 () List!12199)

(assert (=> b!1208860 (= e!775408 Nil!12158)))

(declare-fun bm!84380 () Bool)

(declare-fun call!84385 () Int)

(assert (=> bm!84380 (= call!84385 (size!9698 (t!112598 (t!112598 lt!413228))))))

(declare-fun d!345774 () Bool)

(declare-fun e!775411 () Bool)

(assert (=> d!345774 e!775411))

(declare-fun res!543626 () Bool)

(assert (=> d!345774 (=> (not res!543626) (not e!775411))))

(declare-fun lt!413279 () List!12199)

(assert (=> d!345774 (= res!543626 (= ((_ map implies) (content!1723 lt!413279) (content!1723 (t!112598 (t!112598 lt!413228)))) ((as const (InoxSet T!22468)) true)))))

(assert (=> d!345774 (= lt!413279 e!775408)))

(declare-fun c!202449 () Bool)

(assert (=> d!345774 (= c!202449 ((_ is Nil!12158) (t!112598 (t!112598 lt!413228))))))

(assert (=> d!345774 (= (drop!634 (t!112598 (t!112598 lt!413228)) (- (- from!777 1) 1)) lt!413279)))

(declare-fun b!1208861 () Bool)

(declare-fun e!775412 () Int)

(assert (=> b!1208861 (= e!775412 0)))

(declare-fun b!1208862 () Bool)

(declare-fun e!775410 () List!12199)

(assert (=> b!1208862 (= e!775410 (t!112598 (t!112598 lt!413228)))))

(declare-fun b!1208863 () Bool)

(assert (=> b!1208863 (= e!775408 e!775410)))

(declare-fun c!202448 () Bool)

(assert (=> b!1208863 (= c!202448 (<= (- (- from!777 1) 1) 0))))

(declare-fun b!1208864 () Bool)

(declare-fun e!775409 () Int)

(assert (=> b!1208864 (= e!775411 (= (size!9698 lt!413279) e!775409))))

(declare-fun c!202447 () Bool)

(assert (=> b!1208864 (= c!202447 (<= (- (- from!777 1) 1) 0))))

(declare-fun b!1208865 () Bool)

(assert (=> b!1208865 (= e!775409 e!775412)))

(declare-fun c!202450 () Bool)

(assert (=> b!1208865 (= c!202450 (>= (- (- from!777 1) 1) call!84385))))

(declare-fun b!1208866 () Bool)

(assert (=> b!1208866 (= e!775412 (- call!84385 (- (- from!777 1) 1)))))

(declare-fun b!1208867 () Bool)

(assert (=> b!1208867 (= e!775410 (drop!634 (t!112598 (t!112598 (t!112598 lt!413228))) (- (- (- from!777 1) 1) 1)))))

(declare-fun b!1208868 () Bool)

(assert (=> b!1208868 (= e!775409 call!84385)))

(assert (= (and d!345774 c!202449) b!1208860))

(assert (= (and d!345774 (not c!202449)) b!1208863))

(assert (= (and b!1208863 c!202448) b!1208862))

(assert (= (and b!1208863 (not c!202448)) b!1208867))

(assert (= (and d!345774 res!543626) b!1208864))

(assert (= (and b!1208864 c!202447) b!1208868))

(assert (= (and b!1208864 (not c!202447)) b!1208865))

(assert (= (and b!1208865 c!202450) b!1208861))

(assert (= (and b!1208865 (not c!202450)) b!1208866))

(assert (= (or b!1208868 b!1208865 b!1208866) bm!84380))

(assert (=> bm!84380 m!1384215))

(declare-fun m!1384399 () Bool)

(assert (=> d!345774 m!1384399))

(assert (=> d!345774 m!1384323))

(declare-fun m!1384401 () Bool)

(assert (=> b!1208864 m!1384401))

(declare-fun m!1384403 () Bool)

(assert (=> b!1208867 m!1384403))

(assert (=> b!1208626 d!345774))

(declare-fun d!345776 () Bool)

(declare-fun res!543627 () Bool)

(declare-fun e!775413 () Bool)

(assert (=> d!345776 (=> (not res!543627) (not e!775413))))

(assert (=> d!345776 (= res!543627 (= (csize!8238 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) (+ (size!9701 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) (size!9701 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))))

(assert (=> d!345776 (= (inv!16312 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) e!775413)))

(declare-fun b!1208869 () Bool)

(declare-fun res!543628 () Bool)

(assert (=> b!1208869 (=> (not res!543628) (not e!775413))))

(assert (=> b!1208869 (= res!543628 (and (not (= (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) Empty!4004)) (not (= (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) Empty!4004))))))

(declare-fun b!1208870 () Bool)

(declare-fun res!543629 () Bool)

(assert (=> b!1208870 (=> (not res!543629) (not e!775413))))

(assert (=> b!1208870 (= res!543629 (= (cheight!4215 (c!202336 (value!68189 (underlying!2786 thiss!9565)))) (+ (max!0 (height!581 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) (height!581 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) 1)))))

(declare-fun b!1208871 () Bool)

(assert (=> b!1208871 (= e!775413 (<= 0 (cheight!4215 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))))

(assert (= (and d!345776 res!543627) b!1208869))

(assert (= (and b!1208869 res!543628) b!1208870))

(assert (= (and b!1208870 res!543629) b!1208871))

(declare-fun m!1384405 () Bool)

(assert (=> d!345776 m!1384405))

(declare-fun m!1384407 () Bool)

(assert (=> d!345776 m!1384407))

(assert (=> b!1208870 m!1384333))

(assert (=> b!1208870 m!1384335))

(assert (=> b!1208870 m!1384333))

(assert (=> b!1208870 m!1384335))

(declare-fun m!1384409 () Bool)

(assert (=> b!1208870 m!1384409))

(assert (=> b!1208657 d!345776))

(assert (=> b!1208639 d!345740))

(declare-fun b!1208872 () Bool)

(declare-fun e!775414 () Bool)

(declare-fun tp!342426 () Bool)

(declare-fun tp!342427 () Bool)

(assert (=> b!1208872 (= e!775414 (and tp!342426 tp!342427))))

(assert (=> b!1208678 (= tp!342386 e!775414)))

(assert (= (and b!1208678 ((_ is Cons!12159) (innerList!4064 (xs!6715 (c!202336 (value!68189 (underlying!2786 thiss!9565))))))) b!1208872))

(declare-fun b!1208873 () Bool)

(declare-fun e!775415 () Bool)

(declare-fun tp!342428 () Bool)

(declare-fun tp!342429 () Bool)

(assert (=> b!1208873 (= e!775415 (and tp!342428 tp!342429))))

(assert (=> b!1208686 (= tp!342395 e!775415)))

(assert (= (and b!1208686 ((_ is Cons!12159) (innerList!4064 (xs!6715 (c!202336 (value!68189 (underlying!2786 other!28))))))) b!1208873))

(declare-fun b!1208875 () Bool)

(declare-fun e!775417 () Bool)

(declare-fun tp!342430 () Bool)

(assert (=> b!1208875 (= e!775417 (and (inv!16308 (c!202336 (value!68189 (h!17560 (value!68190 (underlying!2786 thiss!9565)))))) tp!342430))))

(declare-fun b!1208874 () Bool)

(declare-fun e!775416 () Bool)

(assert (=> b!1208874 (= e!775416 (and (inv!16309 (value!68189 (h!17560 (value!68190 (underlying!2786 thiss!9565))))) e!775417))))

(declare-fun b!1208876 () Bool)

(declare-fun tp!342431 () Bool)

(assert (=> b!1208876 (= e!775416 tp!342431)))

(assert (=> b!1208689 (= tp!342398 e!775416)))

(assert (= b!1208874 b!1208875))

(assert (= (and b!1208689 ((_ is BalanceConc!7923) (h!17560 (value!68190 (underlying!2786 thiss!9565))))) b!1208874))

(assert (= (and b!1208689 ((_ is List!12200) (h!17560 (value!68190 (underlying!2786 thiss!9565))))) b!1208876))

(declare-fun m!1384411 () Bool)

(assert (=> b!1208875 m!1384411))

(declare-fun m!1384413 () Bool)

(assert (=> b!1208874 m!1384413))

(declare-fun b!1208877 () Bool)

(declare-fun e!775418 () Bool)

(declare-fun tp!342432 () Bool)

(declare-fun tp!342433 () Bool)

(assert (=> b!1208877 (= e!775418 (and tp!342432 tp!342433))))

(assert (=> b!1208689 (= tp!342399 e!775418)))

(assert (= (and b!1208689 ((_ is Cons!12159) (t!112599 (value!68190 (underlying!2786 thiss!9565))))) b!1208877))

(declare-fun e!775420 () Bool)

(declare-fun b!1208878 () Bool)

(declare-fun tp!342434 () Bool)

(declare-fun tp!342435 () Bool)

(assert (=> b!1208878 (= e!775420 (and (inv!16308 (left!10589 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) tp!342435 (inv!16308 (right!10919 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) tp!342434))))

(declare-fun b!1208880 () Bool)

(declare-fun e!775419 () Bool)

(declare-fun tp!342436 () Bool)

(assert (=> b!1208880 (= e!775419 tp!342436)))

(declare-fun b!1208879 () Bool)

(assert (=> b!1208879 (= e!775420 (and (inv!16314 (xs!6715 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) e!775419))))

(assert (=> b!1208676 (= tp!342385 (and (inv!16308 (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) e!775420))))

(assert (= (and b!1208676 ((_ is Node!4004) (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) b!1208878))

(assert (= b!1208879 b!1208880))

(assert (= (and b!1208676 ((_ is Leaf!6166) (left!10589 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) b!1208879))

(declare-fun m!1384415 () Bool)

(assert (=> b!1208878 m!1384415))

(declare-fun m!1384417 () Bool)

(assert (=> b!1208878 m!1384417))

(declare-fun m!1384419 () Bool)

(assert (=> b!1208879 m!1384419))

(assert (=> b!1208676 m!1384219))

(declare-fun e!775422 () Bool)

(declare-fun b!1208881 () Bool)

(declare-fun tp!342437 () Bool)

(declare-fun tp!342438 () Bool)

(assert (=> b!1208881 (= e!775422 (and (inv!16308 (left!10589 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) tp!342438 (inv!16308 (right!10919 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) tp!342437))))

(declare-fun b!1208883 () Bool)

(declare-fun e!775421 () Bool)

(declare-fun tp!342439 () Bool)

(assert (=> b!1208883 (= e!775421 tp!342439)))

(declare-fun b!1208882 () Bool)

(assert (=> b!1208882 (= e!775422 (and (inv!16314 (xs!6715 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) e!775421))))

(assert (=> b!1208676 (= tp!342384 (and (inv!16308 (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565))))) e!775422))))

(assert (= (and b!1208676 ((_ is Node!4004) (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) b!1208881))

(assert (= b!1208882 b!1208883))

(assert (= (and b!1208676 ((_ is Leaf!6166) (right!10919 (c!202336 (value!68189 (underlying!2786 thiss!9565)))))) b!1208882))

(declare-fun m!1384421 () Bool)

(assert (=> b!1208881 m!1384421))

(declare-fun m!1384423 () Bool)

(assert (=> b!1208881 m!1384423))

(declare-fun m!1384425 () Bool)

(assert (=> b!1208882 m!1384425))

(assert (=> b!1208676 m!1384221))

(declare-fun tp!342441 () Bool)

(declare-fun e!775424 () Bool)

(declare-fun tp!342440 () Bool)

(declare-fun b!1208884 () Bool)

(assert (=> b!1208884 (= e!775424 (and (inv!16308 (left!10589 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28)))))) tp!342441 (inv!16308 (right!10919 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28)))))) tp!342440))))

(declare-fun b!1208886 () Bool)

(declare-fun e!775423 () Bool)

(declare-fun tp!342442 () Bool)

(assert (=> b!1208886 (= e!775423 tp!342442)))

(declare-fun b!1208885 () Bool)

(assert (=> b!1208885 (= e!775424 (and (inv!16314 (xs!6715 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28)))))) e!775423))))

(assert (=> b!1208684 (= tp!342394 (and (inv!16308 (left!10589 (c!202336 (value!68189 (underlying!2786 other!28))))) e!775424))))

(assert (= (and b!1208684 ((_ is Node!4004) (left!10589 (c!202336 (value!68189 (underlying!2786 other!28)))))) b!1208884))

(assert (= b!1208885 b!1208886))

(assert (= (and b!1208684 ((_ is Leaf!6166) (left!10589 (c!202336 (value!68189 (underlying!2786 other!28)))))) b!1208885))

(declare-fun m!1384427 () Bool)

(assert (=> b!1208884 m!1384427))

(declare-fun m!1384429 () Bool)

(assert (=> b!1208884 m!1384429))

(declare-fun m!1384431 () Bool)

(assert (=> b!1208885 m!1384431))

(assert (=> b!1208684 m!1384225))

(declare-fun tp!342443 () Bool)

(declare-fun e!775426 () Bool)

(declare-fun tp!342444 () Bool)

(declare-fun b!1208887 () Bool)

(assert (=> b!1208887 (= e!775426 (and (inv!16308 (left!10589 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28)))))) tp!342444 (inv!16308 (right!10919 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28)))))) tp!342443))))

(declare-fun b!1208889 () Bool)

(declare-fun e!775425 () Bool)

(declare-fun tp!342445 () Bool)

(assert (=> b!1208889 (= e!775425 tp!342445)))

(declare-fun b!1208888 () Bool)

(assert (=> b!1208888 (= e!775426 (and (inv!16314 (xs!6715 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28)))))) e!775425))))

(assert (=> b!1208684 (= tp!342393 (and (inv!16308 (right!10919 (c!202336 (value!68189 (underlying!2786 other!28))))) e!775426))))

(assert (= (and b!1208684 ((_ is Node!4004) (right!10919 (c!202336 (value!68189 (underlying!2786 other!28)))))) b!1208887))

(assert (= b!1208888 b!1208889))

(assert (= (and b!1208684 ((_ is Leaf!6166) (right!10919 (c!202336 (value!68189 (underlying!2786 other!28)))))) b!1208888))

(declare-fun m!1384433 () Bool)

(assert (=> b!1208887 m!1384433))

(declare-fun m!1384435 () Bool)

(assert (=> b!1208887 m!1384435))

(declare-fun m!1384437 () Bool)

(assert (=> b!1208888 m!1384437))

(assert (=> b!1208684 m!1384227))

(declare-fun b!1208890 () Bool)

(declare-fun e!775427 () Bool)

(declare-fun tp!342446 () Bool)

(assert (=> b!1208890 (= e!775427 (and tp_is_empty!6141 tp!342446))))

(assert (=> b!1208687 (= tp!342396 e!775427)))

(assert (= (and b!1208687 ((_ is Cons!12158) (t!112598 (t!112598 (overflowing!99 other!28))))) b!1208890))

(declare-fun b!1208891 () Bool)

(declare-fun e!775428 () Bool)

(declare-fun tp!342447 () Bool)

(assert (=> b!1208891 (= e!775428 (and tp_is_empty!6141 tp!342447))))

(assert (=> b!1208651 (= tp!342376 e!775428)))

(assert (= (and b!1208651 ((_ is Cons!12158) (t!112598 res!543559))) b!1208891))

(declare-fun b!1208892 () Bool)

(declare-fun e!775429 () Bool)

(declare-fun tp!342448 () Bool)

(assert (=> b!1208892 (= e!775429 (and tp_is_empty!6141 tp!342448))))

(assert (=> b!1208652 (= tp!342377 e!775429)))

(assert (= (and b!1208652 ((_ is Cons!12158) (t!112598 res!543560))) b!1208892))

(declare-fun b!1208894 () Bool)

(declare-fun e!775431 () Bool)

(declare-fun tp!342449 () Bool)

(assert (=> b!1208894 (= e!775431 (and (inv!16308 (c!202336 (value!68189 (h!17560 (value!68190 (underlying!2786 other!28)))))) tp!342449))))

(declare-fun b!1208893 () Bool)

(declare-fun e!775430 () Bool)

(assert (=> b!1208893 (= e!775430 (and (inv!16309 (value!68189 (h!17560 (value!68190 (underlying!2786 other!28))))) e!775431))))

(declare-fun b!1208895 () Bool)

(declare-fun tp!342450 () Bool)

(assert (=> b!1208895 (= e!775430 tp!342450)))

(assert (=> b!1208683 (= tp!342391 e!775430)))

(assert (= b!1208893 b!1208894))

(assert (= (and b!1208683 ((_ is BalanceConc!7923) (h!17560 (value!68190 (underlying!2786 other!28))))) b!1208893))

(assert (= (and b!1208683 ((_ is List!12200) (h!17560 (value!68190 (underlying!2786 other!28))))) b!1208895))

(declare-fun m!1384439 () Bool)

(assert (=> b!1208894 m!1384439))

(declare-fun m!1384441 () Bool)

(assert (=> b!1208893 m!1384441))

(declare-fun b!1208896 () Bool)

(declare-fun e!775432 () Bool)

(declare-fun tp!342451 () Bool)

(declare-fun tp!342452 () Bool)

(assert (=> b!1208896 (= e!775432 (and tp!342451 tp!342452))))

(assert (=> b!1208683 (= tp!342392 e!775432)))

(assert (= (and b!1208683 ((_ is Cons!12159) (t!112599 (value!68190 (underlying!2786 other!28))))) b!1208896))

(declare-fun b!1208897 () Bool)

(declare-fun e!775433 () Bool)

(declare-fun tp!342453 () Bool)

(assert (=> b!1208897 (= e!775433 (and tp_is_empty!6141 tp!342453))))

(assert (=> b!1208688 (= tp!342397 e!775433)))

(assert (= (and b!1208688 ((_ is Cons!12158) (t!112598 (t!112598 (overflowing!99 thiss!9565))))) b!1208897))

(check-sat (not b!1208884) (not b!1208895) (not b!1208794) (not b!1208819) (not b!1208867) (not d!345750) (not b!1208836) (not b!1208676) (not bm!84380) (not b!1208791) (not b!1208844) (not b!1208799) (not b!1208858) (not b!1208873) (not b!1208786) (not b!1208797) (not b!1208832) (not b!1208787) (not b!1208804) (not d!345772) (not b!1208792) (not b!1208875) (not b!1208785) (not b!1208888) (not b!1208771) (not b!1208855) (not b!1208841) (not b!1208801) (not b!1208874) (not b!1208811) (not b!1208802) (not b!1208816) (not b!1208803) (not b!1208878) (not b!1208893) (not b!1208800) (not b!1208828) (not b!1208784) (not d!345762) (not b!1208789) (not b!1208834) (not b!1208885) (not b!1208890) (not b!1208891) (not bm!84379) (not b!1208809) (not b!1208877) (not b!1208870) (not b!1208829) (not b!1208807) (not b!1208852) (not b!1208795) (not b!1208886) tp_is_empty!6141 (not b!1208822) (not d!345722) (not d!345774) (not b!1208864) (not b!1208824) (not b!1208805) (not b!1208788) (not b!1208883) (not b!1208831) (not b!1208892) (not b!1208882) (not b!1208887) (not b!1208857) (not d!345776) (not b!1208881) (not b!1208894) (not b!1208684) (not b!1208872) (not d!345744) (not d!345766) (not b!1208880) (not b!1208826) (not b!1208879) (not b!1208896) (not b!1208889) (not b!1208876) (not b!1208897))
(check-sat)
