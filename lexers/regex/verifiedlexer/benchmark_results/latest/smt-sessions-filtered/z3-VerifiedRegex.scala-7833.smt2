; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411144 () Bool)

(assert start!411144)

(declare-fun b!4280367 () Bool)

(declare-fun e!2657293 () Bool)

(declare-fun tp!1309311 () Bool)

(assert (=> b!4280367 (= e!2657293 tp!1309311)))

(declare-fun b!4280368 () Bool)

(declare-fun res!1757017 () Bool)

(declare-fun e!2657296 () Bool)

(assert (=> b!4280368 (=> (not res!1757017) (not e!2657296))))

(declare-fun i!561 () Int)

(assert (=> b!4280368 (= res!1757017 (> i!561 0))))

(declare-fun b!4280369 () Bool)

(declare-fun e!2657292 () Bool)

(declare-fun tp_is_empty!22989 () Bool)

(declare-fun tp!1309312 () Bool)

(assert (=> b!4280369 (= e!2657292 (and tp_is_empty!22989 tp!1309312))))

(declare-datatypes ((T!80116 0))(
  ( (T!80117 (val!15290 Int)) )
))
(declare-datatypes ((List!47499 0))(
  ( (Nil!47375) (Cons!47375 (h!52795 T!80116) (t!354084 List!47499)) )
))
(declare-fun acc!244 () List!47499)

(declare-fun lt!1514890 () List!47499)

(declare-fun e!2657295 () Bool)

(declare-fun b!4280371 () Bool)

(declare-fun lt!1514888 () T!80116)

(declare-fun $colon$colon!647 (List!47499 T!80116) List!47499)

(assert (=> b!4280371 (= e!2657295 (= ($colon$colon!647 acc!244 lt!1514888) lt!1514890))))

(declare-fun b!4280372 () Bool)

(declare-fun e!2657297 () Bool)

(declare-fun e!2657294 () Bool)

(assert (=> b!4280372 (= e!2657297 e!2657294)))

(declare-fun res!1757018 () Bool)

(assert (=> b!4280372 (=> (not res!1757018) (not e!2657294))))

(declare-fun lt!1514891 () Int)

(assert (=> b!4280372 (= res!1757018 (<= i!561 lt!1514891))))

(declare-datatypes ((IArray!28719 0))(
  ( (IArray!28720 (innerList!14417 List!47499)) )
))
(declare-fun arr!11 () IArray!28719)

(declare-fun size!34701 (IArray!28719) Int)

(assert (=> b!4280372 (= lt!1514891 (size!34701 arr!11))))

(declare-fun b!4280373 () Bool)

(assert (=> b!4280373 (= e!2657294 e!2657296)))

(declare-fun res!1757021 () Bool)

(assert (=> b!4280373 (=> (not res!1757021) (not e!2657296))))

(declare-fun lt!1514892 () List!47499)

(declare-fun drop!2157 (List!47499 Int) List!47499)

(assert (=> b!4280373 (= res!1757021 (= acc!244 (drop!2157 lt!1514892 i!561)))))

(declare-fun list!17297 (IArray!28719) List!47499)

(assert (=> b!4280373 (= lt!1514892 (list!17297 arr!11))))

(declare-fun res!1757020 () Bool)

(assert (=> start!411144 (=> (not res!1757020) (not e!2657297))))

(assert (=> start!411144 (= res!1757020 (<= 0 i!561))))

(assert (=> start!411144 e!2657297))

(assert (=> start!411144 true))

(declare-fun inv!62775 (IArray!28719) Bool)

(assert (=> start!411144 (and (inv!62775 arr!11) e!2657293)))

(assert (=> start!411144 e!2657292))

(declare-fun b!4280370 () Bool)

(assert (=> b!4280370 (= e!2657296 (not e!2657295))))

(declare-fun res!1757019 () Bool)

(assert (=> b!4280370 (=> res!1757019 e!2657295)))

(assert (=> b!4280370 (= res!1757019 (or (> 0 (- i!561 1)) (> (- i!561 1) lt!1514891)))))

(declare-fun apply!10812 (IArray!28719 Int) T!80116)

(assert (=> b!4280370 (= lt!1514888 (apply!10812 arr!11 (- i!561 1)))))

(declare-fun tail!6874 (List!47499) List!47499)

(assert (=> b!4280370 (= (tail!6874 lt!1514890) (drop!2157 lt!1514892 (+ 1 (- i!561 1))))))

(declare-datatypes ((Unit!66337 0))(
  ( (Unit!66338) )
))
(declare-fun lt!1514893 () Unit!66337)

(declare-fun lemmaDropTail!1137 (List!47499 Int) Unit!66337)

(assert (=> b!4280370 (= lt!1514893 (lemmaDropTail!1137 lt!1514892 (- i!561 1)))))

(declare-fun head!9011 (List!47499) T!80116)

(declare-fun apply!10813 (List!47499 Int) T!80116)

(assert (=> b!4280370 (= (head!9011 lt!1514890) (apply!10813 lt!1514892 (- i!561 1)))))

(assert (=> b!4280370 (= lt!1514890 (drop!2157 lt!1514892 (- i!561 1)))))

(declare-fun lt!1514889 () Unit!66337)

(declare-fun lemmaDropApply!1255 (List!47499 Int) Unit!66337)

(assert (=> b!4280370 (= lt!1514889 (lemmaDropApply!1255 lt!1514892 (- i!561 1)))))

(assert (= (and start!411144 res!1757020) b!4280372))

(assert (= (and b!4280372 res!1757018) b!4280373))

(assert (= (and b!4280373 res!1757021) b!4280368))

(assert (= (and b!4280368 res!1757017) b!4280370))

(assert (= (and b!4280370 (not res!1757019)) b!4280371))

(assert (= start!411144 b!4280367))

(get-info :version)

(assert (= (and start!411144 ((_ is Cons!47375) acc!244)) b!4280369))

(declare-fun m!4878165 () Bool)

(assert (=> b!4280372 m!4878165))

(declare-fun m!4878167 () Bool)

(assert (=> b!4280373 m!4878167))

(declare-fun m!4878169 () Bool)

(assert (=> b!4280373 m!4878169))

(declare-fun m!4878171 () Bool)

(assert (=> b!4280370 m!4878171))

(declare-fun m!4878173 () Bool)

(assert (=> b!4280370 m!4878173))

(declare-fun m!4878175 () Bool)

(assert (=> b!4280370 m!4878175))

(declare-fun m!4878177 () Bool)

(assert (=> b!4280370 m!4878177))

(declare-fun m!4878179 () Bool)

(assert (=> b!4280370 m!4878179))

(declare-fun m!4878181 () Bool)

(assert (=> b!4280370 m!4878181))

(declare-fun m!4878183 () Bool)

(assert (=> b!4280370 m!4878183))

(declare-fun m!4878185 () Bool)

(assert (=> b!4280370 m!4878185))

(declare-fun m!4878187 () Bool)

(assert (=> b!4280371 m!4878187))

(declare-fun m!4878189 () Bool)

(assert (=> start!411144 m!4878189))

(check-sat (not b!4280370) tp_is_empty!22989 (not b!4280372) (not b!4280373) (not b!4280371) (not start!411144) (not b!4280367) (not b!4280369))
(check-sat)
(get-model)

(declare-fun d!1264418 () Bool)

(assert (=> d!1264418 (= ($colon$colon!647 acc!244 lt!1514888) (Cons!47375 lt!1514888 acc!244))))

(assert (=> b!4280371 d!1264418))

(declare-fun d!1264420 () Bool)

(declare-fun e!2657322 () Bool)

(assert (=> d!1264420 e!2657322))

(declare-fun res!1757026 () Bool)

(assert (=> d!1264420 (=> (not res!1757026) (not e!2657322))))

(declare-fun lt!1514898 () List!47499)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7496 (List!47499) (InoxSet T!80116))

(assert (=> d!1264420 (= res!1757026 (= ((_ map implies) (content!7496 lt!1514898) (content!7496 lt!1514892)) ((as const (InoxSet T!80116)) true)))))

(declare-fun e!2657318 () List!47499)

(assert (=> d!1264420 (= lt!1514898 e!2657318)))

(declare-fun c!729381 () Bool)

(assert (=> d!1264420 (= c!729381 ((_ is Nil!47375) lt!1514892))))

(assert (=> d!1264420 (= (drop!2157 lt!1514892 (+ 1 (- i!561 1))) lt!1514898)))

(declare-fun b!4280410 () Bool)

(declare-fun e!2657320 () Int)

(declare-fun call!294310 () Int)

(assert (=> b!4280410 (= e!2657320 (- call!294310 (+ 1 (- i!561 1))))))

(declare-fun b!4280411 () Bool)

(declare-fun e!2657321 () List!47499)

(assert (=> b!4280411 (= e!2657321 lt!1514892)))

(declare-fun b!4280412 () Bool)

(declare-fun e!2657319 () Int)

(assert (=> b!4280412 (= e!2657319 call!294310)))

(declare-fun b!4280413 () Bool)

(assert (=> b!4280413 (= e!2657320 0)))

(declare-fun b!4280414 () Bool)

(assert (=> b!4280414 (= e!2657321 (drop!2157 (t!354084 lt!1514892) (- (+ 1 (- i!561 1)) 1)))))

(declare-fun b!4280415 () Bool)

(assert (=> b!4280415 (= e!2657318 e!2657321)))

(declare-fun c!729383 () Bool)

(assert (=> b!4280415 (= c!729383 (<= (+ 1 (- i!561 1)) 0))))

(declare-fun b!4280416 () Bool)

(declare-fun size!34703 (List!47499) Int)

(assert (=> b!4280416 (= e!2657322 (= (size!34703 lt!1514898) e!2657319))))

(declare-fun c!729384 () Bool)

(assert (=> b!4280416 (= c!729384 (<= (+ 1 (- i!561 1)) 0))))

(declare-fun b!4280417 () Bool)

(assert (=> b!4280417 (= e!2657319 e!2657320)))

(declare-fun c!729382 () Bool)

(assert (=> b!4280417 (= c!729382 (>= (+ 1 (- i!561 1)) call!294310))))

(declare-fun bm!294305 () Bool)

(assert (=> bm!294305 (= call!294310 (size!34703 lt!1514892))))

(declare-fun b!4280418 () Bool)

(assert (=> b!4280418 (= e!2657318 Nil!47375)))

(assert (= (and d!1264420 c!729381) b!4280418))

(assert (= (and d!1264420 (not c!729381)) b!4280415))

(assert (= (and b!4280415 c!729383) b!4280411))

(assert (= (and b!4280415 (not c!729383)) b!4280414))

(assert (= (and d!1264420 res!1757026) b!4280416))

(assert (= (and b!4280416 c!729384) b!4280412))

(assert (= (and b!4280416 (not c!729384)) b!4280417))

(assert (= (and b!4280417 c!729382) b!4280413))

(assert (= (and b!4280417 (not c!729382)) b!4280410))

(assert (= (or b!4280412 b!4280417 b!4280410) bm!294305))

(declare-fun m!4878191 () Bool)

(assert (=> d!1264420 m!4878191))

(declare-fun m!4878193 () Bool)

(assert (=> d!1264420 m!4878193))

(declare-fun m!4878195 () Bool)

(assert (=> b!4280414 m!4878195))

(declare-fun m!4878197 () Bool)

(assert (=> b!4280416 m!4878197))

(declare-fun m!4878199 () Bool)

(assert (=> bm!294305 m!4878199))

(assert (=> b!4280370 d!1264420))

(declare-fun d!1264428 () Bool)

(declare-fun lt!1514905 () T!80116)

(declare-fun contains!9790 (List!47499 T!80116) Bool)

(assert (=> d!1264428 (contains!9790 lt!1514892 lt!1514905)))

(declare-fun e!2657336 () T!80116)

(assert (=> d!1264428 (= lt!1514905 e!2657336)))

(declare-fun c!729391 () Bool)

(assert (=> d!1264428 (= c!729391 (= (- i!561 1) 0))))

(declare-fun e!2657335 () Bool)

(assert (=> d!1264428 e!2657335))

(declare-fun res!1757033 () Bool)

(assert (=> d!1264428 (=> (not res!1757033) (not e!2657335))))

(assert (=> d!1264428 (= res!1757033 (<= 0 (- i!561 1)))))

(assert (=> d!1264428 (= (apply!10813 lt!1514892 (- i!561 1)) lt!1514905)))

(declare-fun b!4280437 () Bool)

(assert (=> b!4280437 (= e!2657335 (< (- i!561 1) (size!34703 lt!1514892)))))

(declare-fun b!4280438 () Bool)

(assert (=> b!4280438 (= e!2657336 (head!9011 lt!1514892))))

(declare-fun b!4280439 () Bool)

(assert (=> b!4280439 (= e!2657336 (apply!10813 (tail!6874 lt!1514892) (- (- i!561 1) 1)))))

(assert (= (and d!1264428 res!1757033) b!4280437))

(assert (= (and d!1264428 c!729391) b!4280438))

(assert (= (and d!1264428 (not c!729391)) b!4280439))

(declare-fun m!4878215 () Bool)

(assert (=> d!1264428 m!4878215))

(assert (=> b!4280437 m!4878199))

(declare-fun m!4878217 () Bool)

(assert (=> b!4280438 m!4878217))

(declare-fun m!4878219 () Bool)

(assert (=> b!4280439 m!4878219))

(assert (=> b!4280439 m!4878219))

(declare-fun m!4878221 () Bool)

(assert (=> b!4280439 m!4878221))

(assert (=> b!4280370 d!1264428))

(declare-fun d!1264434 () Bool)

(assert (=> d!1264434 (= (tail!6874 lt!1514890) (t!354084 lt!1514890))))

(assert (=> b!4280370 d!1264434))

(declare-fun d!1264436 () Bool)

(assert (=> d!1264436 (= (head!9011 lt!1514890) (h!52795 lt!1514890))))

(assert (=> b!4280370 d!1264436))

(declare-fun d!1264438 () Bool)

(declare-fun lt!1514912 () T!80116)

(assert (=> d!1264438 (= lt!1514912 (apply!10813 (list!17297 arr!11) (- i!561 1)))))

(declare-fun choose!26100 (IArray!28719 Int) T!80116)

(assert (=> d!1264438 (= lt!1514912 (choose!26100 arr!11 (- i!561 1)))))

(declare-fun e!2657350 () Bool)

(assert (=> d!1264438 e!2657350))

(declare-fun res!1757040 () Bool)

(assert (=> d!1264438 (=> (not res!1757040) (not e!2657350))))

(assert (=> d!1264438 (= res!1757040 (<= 0 (- i!561 1)))))

(assert (=> d!1264438 (= (apply!10812 arr!11 (- i!561 1)) lt!1514912)))

(declare-fun b!4280460 () Bool)

(assert (=> b!4280460 (= e!2657350 (< (- i!561 1) (size!34701 arr!11)))))

(assert (= (and d!1264438 res!1757040) b!4280460))

(assert (=> d!1264438 m!4878169))

(assert (=> d!1264438 m!4878169))

(declare-fun m!4878237 () Bool)

(assert (=> d!1264438 m!4878237))

(declare-fun m!4878239 () Bool)

(assert (=> d!1264438 m!4878239))

(assert (=> b!4280460 m!4878165))

(assert (=> b!4280370 d!1264438))

(declare-fun d!1264444 () Bool)

(declare-fun e!2657355 () Bool)

(assert (=> d!1264444 e!2657355))

(declare-fun res!1757041 () Bool)

(assert (=> d!1264444 (=> (not res!1757041) (not e!2657355))))

(declare-fun lt!1514913 () List!47499)

(assert (=> d!1264444 (= res!1757041 (= ((_ map implies) (content!7496 lt!1514913) (content!7496 lt!1514892)) ((as const (InoxSet T!80116)) true)))))

(declare-fun e!2657351 () List!47499)

(assert (=> d!1264444 (= lt!1514913 e!2657351)))

(declare-fun c!729399 () Bool)

(assert (=> d!1264444 (= c!729399 ((_ is Nil!47375) lt!1514892))))

(assert (=> d!1264444 (= (drop!2157 lt!1514892 (- i!561 1)) lt!1514913)))

(declare-fun b!4280461 () Bool)

(declare-fun e!2657353 () Int)

(declare-fun call!294313 () Int)

(assert (=> b!4280461 (= e!2657353 (- call!294313 (- i!561 1)))))

(declare-fun b!4280462 () Bool)

(declare-fun e!2657354 () List!47499)

(assert (=> b!4280462 (= e!2657354 lt!1514892)))

(declare-fun b!4280463 () Bool)

(declare-fun e!2657352 () Int)

(assert (=> b!4280463 (= e!2657352 call!294313)))

(declare-fun b!4280464 () Bool)

(assert (=> b!4280464 (= e!2657353 0)))

(declare-fun b!4280465 () Bool)

(assert (=> b!4280465 (= e!2657354 (drop!2157 (t!354084 lt!1514892) (- (- i!561 1) 1)))))

(declare-fun b!4280466 () Bool)

(assert (=> b!4280466 (= e!2657351 e!2657354)))

(declare-fun c!729401 () Bool)

(assert (=> b!4280466 (= c!729401 (<= (- i!561 1) 0))))

(declare-fun b!4280467 () Bool)

(assert (=> b!4280467 (= e!2657355 (= (size!34703 lt!1514913) e!2657352))))

(declare-fun c!729402 () Bool)

(assert (=> b!4280467 (= c!729402 (<= (- i!561 1) 0))))

(declare-fun b!4280468 () Bool)

(assert (=> b!4280468 (= e!2657352 e!2657353)))

(declare-fun c!729400 () Bool)

(assert (=> b!4280468 (= c!729400 (>= (- i!561 1) call!294313))))

(declare-fun bm!294308 () Bool)

(assert (=> bm!294308 (= call!294313 (size!34703 lt!1514892))))

(declare-fun b!4280469 () Bool)

(assert (=> b!4280469 (= e!2657351 Nil!47375)))

(assert (= (and d!1264444 c!729399) b!4280469))

(assert (= (and d!1264444 (not c!729399)) b!4280466))

(assert (= (and b!4280466 c!729401) b!4280462))

(assert (= (and b!4280466 (not c!729401)) b!4280465))

(assert (= (and d!1264444 res!1757041) b!4280467))

(assert (= (and b!4280467 c!729402) b!4280463))

(assert (= (and b!4280467 (not c!729402)) b!4280468))

(assert (= (and b!4280468 c!729400) b!4280464))

(assert (= (and b!4280468 (not c!729400)) b!4280461))

(assert (= (or b!4280463 b!4280468 b!4280461) bm!294308))

(declare-fun m!4878241 () Bool)

(assert (=> d!1264444 m!4878241))

(assert (=> d!1264444 m!4878193))

(declare-fun m!4878243 () Bool)

(assert (=> b!4280465 m!4878243))

(declare-fun m!4878245 () Bool)

(assert (=> b!4280467 m!4878245))

(assert (=> bm!294308 m!4878199))

(assert (=> b!4280370 d!1264444))

(declare-fun d!1264446 () Bool)

(assert (=> d!1264446 (= (tail!6874 (drop!2157 lt!1514892 (- i!561 1))) (drop!2157 lt!1514892 (+ (- i!561 1) 1)))))

(declare-fun lt!1514919 () Unit!66337)

(declare-fun choose!26103 (List!47499 Int) Unit!66337)

(assert (=> d!1264446 (= lt!1514919 (choose!26103 lt!1514892 (- i!561 1)))))

(declare-fun e!2657361 () Bool)

(assert (=> d!1264446 e!2657361))

(declare-fun res!1757047 () Bool)

(assert (=> d!1264446 (=> (not res!1757047) (not e!2657361))))

(assert (=> d!1264446 (= res!1757047 (>= (- i!561 1) 0))))

(assert (=> d!1264446 (= (lemmaDropTail!1137 lt!1514892 (- i!561 1)) lt!1514919)))

(declare-fun b!4280475 () Bool)

(assert (=> b!4280475 (= e!2657361 (< (- i!561 1) (size!34703 lt!1514892)))))

(assert (= (and d!1264446 res!1757047) b!4280475))

(assert (=> d!1264446 m!4878177))

(assert (=> d!1264446 m!4878177))

(declare-fun m!4878251 () Bool)

(assert (=> d!1264446 m!4878251))

(declare-fun m!4878253 () Bool)

(assert (=> d!1264446 m!4878253))

(declare-fun m!4878255 () Bool)

(assert (=> d!1264446 m!4878255))

(assert (=> b!4280475 m!4878199))

(assert (=> b!4280370 d!1264446))

(declare-fun d!1264450 () Bool)

(assert (=> d!1264450 (= (head!9011 (drop!2157 lt!1514892 (- i!561 1))) (apply!10813 lt!1514892 (- i!561 1)))))

(declare-fun lt!1514926 () Unit!66337)

(declare-fun choose!26104 (List!47499 Int) Unit!66337)

(assert (=> d!1264450 (= lt!1514926 (choose!26104 lt!1514892 (- i!561 1)))))

(declare-fun e!2657372 () Bool)

(assert (=> d!1264450 e!2657372))

(declare-fun res!1757054 () Bool)

(assert (=> d!1264450 (=> (not res!1757054) (not e!2657372))))

(assert (=> d!1264450 (= res!1757054 (>= (- i!561 1) 0))))

(assert (=> d!1264450 (= (lemmaDropApply!1255 lt!1514892 (- i!561 1)) lt!1514926)))

(declare-fun b!4280490 () Bool)

(assert (=> b!4280490 (= e!2657372 (< (- i!561 1) (size!34703 lt!1514892)))))

(assert (= (and d!1264450 res!1757054) b!4280490))

(assert (=> d!1264450 m!4878177))

(assert (=> d!1264450 m!4878177))

(declare-fun m!4878271 () Bool)

(assert (=> d!1264450 m!4878271))

(assert (=> d!1264450 m!4878179))

(declare-fun m!4878273 () Bool)

(assert (=> d!1264450 m!4878273))

(assert (=> b!4280490 m!4878199))

(assert (=> b!4280370 d!1264450))

(declare-fun d!1264462 () Bool)

(assert (=> d!1264462 (= (inv!62775 arr!11) (<= (size!34703 (innerList!14417 arr!11)) 2147483647))))

(declare-fun bs!602704 () Bool)

(assert (= bs!602704 d!1264462))

(declare-fun m!4878275 () Bool)

(assert (=> bs!602704 m!4878275))

(assert (=> start!411144 d!1264462))

(declare-fun d!1264464 () Bool)

(declare-fun e!2657377 () Bool)

(assert (=> d!1264464 e!2657377))

(declare-fun res!1757055 () Bool)

(assert (=> d!1264464 (=> (not res!1757055) (not e!2657377))))

(declare-fun lt!1514930 () List!47499)

(assert (=> d!1264464 (= res!1757055 (= ((_ map implies) (content!7496 lt!1514930) (content!7496 lt!1514892)) ((as const (InoxSet T!80116)) true)))))

(declare-fun e!2657373 () List!47499)

(assert (=> d!1264464 (= lt!1514930 e!2657373)))

(declare-fun c!729407 () Bool)

(assert (=> d!1264464 (= c!729407 ((_ is Nil!47375) lt!1514892))))

(assert (=> d!1264464 (= (drop!2157 lt!1514892 i!561) lt!1514930)))

(declare-fun b!4280491 () Bool)

(declare-fun e!2657375 () Int)

(declare-fun call!294315 () Int)

(assert (=> b!4280491 (= e!2657375 (- call!294315 i!561))))

(declare-fun b!4280492 () Bool)

(declare-fun e!2657376 () List!47499)

(assert (=> b!4280492 (= e!2657376 lt!1514892)))

(declare-fun b!4280493 () Bool)

(declare-fun e!2657374 () Int)

(assert (=> b!4280493 (= e!2657374 call!294315)))

(declare-fun b!4280494 () Bool)

(assert (=> b!4280494 (= e!2657375 0)))

(declare-fun b!4280495 () Bool)

(assert (=> b!4280495 (= e!2657376 (drop!2157 (t!354084 lt!1514892) (- i!561 1)))))

(declare-fun b!4280496 () Bool)

(assert (=> b!4280496 (= e!2657373 e!2657376)))

(declare-fun c!729409 () Bool)

(assert (=> b!4280496 (= c!729409 (<= i!561 0))))

(declare-fun b!4280497 () Bool)

(assert (=> b!4280497 (= e!2657377 (= (size!34703 lt!1514930) e!2657374))))

(declare-fun c!729410 () Bool)

(assert (=> b!4280497 (= c!729410 (<= i!561 0))))

(declare-fun b!4280498 () Bool)

(assert (=> b!4280498 (= e!2657374 e!2657375)))

(declare-fun c!729408 () Bool)

(assert (=> b!4280498 (= c!729408 (>= i!561 call!294315))))

(declare-fun bm!294310 () Bool)

(assert (=> bm!294310 (= call!294315 (size!34703 lt!1514892))))

(declare-fun b!4280499 () Bool)

(assert (=> b!4280499 (= e!2657373 Nil!47375)))

(assert (= (and d!1264464 c!729407) b!4280499))

(assert (= (and d!1264464 (not c!729407)) b!4280496))

(assert (= (and b!4280496 c!729409) b!4280492))

(assert (= (and b!4280496 (not c!729409)) b!4280495))

(assert (= (and d!1264464 res!1757055) b!4280497))

(assert (= (and b!4280497 c!729410) b!4280493))

(assert (= (and b!4280497 (not c!729410)) b!4280498))

(assert (= (and b!4280498 c!729408) b!4280494))

(assert (= (and b!4280498 (not c!729408)) b!4280491))

(assert (= (or b!4280493 b!4280498 b!4280491) bm!294310))

(declare-fun m!4878281 () Bool)

(assert (=> d!1264464 m!4878281))

(assert (=> d!1264464 m!4878193))

(declare-fun m!4878283 () Bool)

(assert (=> b!4280495 m!4878283))

(declare-fun m!4878285 () Bool)

(assert (=> b!4280497 m!4878285))

(assert (=> bm!294310 m!4878199))

(assert (=> b!4280373 d!1264464))

(declare-fun d!1264466 () Bool)

(assert (=> d!1264466 (= (list!17297 arr!11) (innerList!14417 arr!11))))

(assert (=> b!4280373 d!1264466))

(declare-fun d!1264468 () Bool)

(declare-fun lt!1514933 () Int)

(assert (=> d!1264468 (= lt!1514933 (size!34703 (list!17297 arr!11)))))

(declare-fun choose!26106 (IArray!28719) Int)

(assert (=> d!1264468 (= lt!1514933 (choose!26106 arr!11))))

(assert (=> d!1264468 (= (size!34701 arr!11) lt!1514933)))

(declare-fun bs!602706 () Bool)

(assert (= bs!602706 d!1264468))

(assert (=> bs!602706 m!4878169))

(assert (=> bs!602706 m!4878169))

(declare-fun m!4878287 () Bool)

(assert (=> bs!602706 m!4878287))

(declare-fun m!4878289 () Bool)

(assert (=> bs!602706 m!4878289))

(assert (=> b!4280372 d!1264468))

(declare-fun b!4280510 () Bool)

(declare-fun e!2657384 () Bool)

(declare-fun tp!1309319 () Bool)

(assert (=> b!4280510 (= e!2657384 (and tp_is_empty!22989 tp!1309319))))

(assert (=> b!4280369 (= tp!1309312 e!2657384)))

(assert (= (and b!4280369 ((_ is Cons!47375) (t!354084 acc!244))) b!4280510))

(declare-fun b!4280511 () Bool)

(declare-fun e!2657385 () Bool)

(declare-fun tp!1309320 () Bool)

(assert (=> b!4280511 (= e!2657385 (and tp_is_empty!22989 tp!1309320))))

(assert (=> b!4280367 (= tp!1309311 e!2657385)))

(assert (= (and b!4280367 ((_ is Cons!47375) (innerList!14417 arr!11))) b!4280511))

(check-sat (not b!4280490) (not b!4280511) (not bm!294305) tp_is_empty!22989 (not b!4280438) (not b!4280475) (not d!1264464) (not bm!294310) (not b!4280416) (not b!4280439) (not b!4280437) (not d!1264420) (not b!4280510) (not d!1264428) (not b!4280465) (not b!4280495) (not b!4280460) (not b!4280414) (not d!1264462) (not d!1264450) (not bm!294308) (not b!4280497) (not d!1264438) (not d!1264446) (not d!1264444) (not d!1264468) (not b!4280467))
(check-sat)
(get-model)

(declare-fun d!1264470 () Bool)

(declare-fun lt!1514936 () Bool)

(assert (=> d!1264470 (= lt!1514936 (select (content!7496 lt!1514892) lt!1514905))))

(declare-fun e!2657390 () Bool)

(assert (=> d!1264470 (= lt!1514936 e!2657390)))

(declare-fun res!1757060 () Bool)

(assert (=> d!1264470 (=> (not res!1757060) (not e!2657390))))

(assert (=> d!1264470 (= res!1757060 ((_ is Cons!47375) lt!1514892))))

(assert (=> d!1264470 (= (contains!9790 lt!1514892 lt!1514905) lt!1514936)))

(declare-fun b!4280516 () Bool)

(declare-fun e!2657391 () Bool)

(assert (=> b!4280516 (= e!2657390 e!2657391)))

(declare-fun res!1757061 () Bool)

(assert (=> b!4280516 (=> res!1757061 e!2657391)))

(assert (=> b!4280516 (= res!1757061 (= (h!52795 lt!1514892) lt!1514905))))

(declare-fun b!4280517 () Bool)

(assert (=> b!4280517 (= e!2657391 (contains!9790 (t!354084 lt!1514892) lt!1514905))))

(assert (= (and d!1264470 res!1757060) b!4280516))

(assert (= (and b!4280516 (not res!1757061)) b!4280517))

(assert (=> d!1264470 m!4878193))

(declare-fun m!4878291 () Bool)

(assert (=> d!1264470 m!4878291))

(declare-fun m!4878293 () Bool)

(assert (=> b!4280517 m!4878293))

(assert (=> d!1264428 d!1264470))

(declare-fun d!1264472 () Bool)

(declare-fun lt!1514939 () Int)

(assert (=> d!1264472 (>= lt!1514939 0)))

(declare-fun e!2657394 () Int)

(assert (=> d!1264472 (= lt!1514939 e!2657394)))

(declare-fun c!729413 () Bool)

(assert (=> d!1264472 (= c!729413 ((_ is Nil!47375) lt!1514913))))

(assert (=> d!1264472 (= (size!34703 lt!1514913) lt!1514939)))

(declare-fun b!4280522 () Bool)

(assert (=> b!4280522 (= e!2657394 0)))

(declare-fun b!4280523 () Bool)

(assert (=> b!4280523 (= e!2657394 (+ 1 (size!34703 (t!354084 lt!1514913))))))

(assert (= (and d!1264472 c!729413) b!4280522))

(assert (= (and d!1264472 (not c!729413)) b!4280523))

(declare-fun m!4878295 () Bool)

(assert (=> b!4280523 m!4878295))

(assert (=> b!4280467 d!1264472))

(declare-fun d!1264474 () Bool)

(declare-fun lt!1514940 () T!80116)

(assert (=> d!1264474 (contains!9790 (tail!6874 lt!1514892) lt!1514940)))

(declare-fun e!2657396 () T!80116)

(assert (=> d!1264474 (= lt!1514940 e!2657396)))

(declare-fun c!729414 () Bool)

(assert (=> d!1264474 (= c!729414 (= (- (- i!561 1) 1) 0))))

(declare-fun e!2657395 () Bool)

(assert (=> d!1264474 e!2657395))

(declare-fun res!1757062 () Bool)

(assert (=> d!1264474 (=> (not res!1757062) (not e!2657395))))

(assert (=> d!1264474 (= res!1757062 (<= 0 (- (- i!561 1) 1)))))

(assert (=> d!1264474 (= (apply!10813 (tail!6874 lt!1514892) (- (- i!561 1) 1)) lt!1514940)))

(declare-fun b!4280524 () Bool)

(assert (=> b!4280524 (= e!2657395 (< (- (- i!561 1) 1) (size!34703 (tail!6874 lt!1514892))))))

(declare-fun b!4280525 () Bool)

(assert (=> b!4280525 (= e!2657396 (head!9011 (tail!6874 lt!1514892)))))

(declare-fun b!4280526 () Bool)

(assert (=> b!4280526 (= e!2657396 (apply!10813 (tail!6874 (tail!6874 lt!1514892)) (- (- (- i!561 1) 1) 1)))))

(assert (= (and d!1264474 res!1757062) b!4280524))

(assert (= (and d!1264474 c!729414) b!4280525))

(assert (= (and d!1264474 (not c!729414)) b!4280526))

(assert (=> d!1264474 m!4878219))

(declare-fun m!4878297 () Bool)

(assert (=> d!1264474 m!4878297))

(assert (=> b!4280524 m!4878219))

(declare-fun m!4878299 () Bool)

(assert (=> b!4280524 m!4878299))

(assert (=> b!4280525 m!4878219))

(declare-fun m!4878301 () Bool)

(assert (=> b!4280525 m!4878301))

(assert (=> b!4280526 m!4878219))

(declare-fun m!4878303 () Bool)

(assert (=> b!4280526 m!4878303))

(assert (=> b!4280526 m!4878303))

(declare-fun m!4878305 () Bool)

(assert (=> b!4280526 m!4878305))

(assert (=> b!4280439 d!1264474))

(declare-fun d!1264476 () Bool)

(assert (=> d!1264476 (= (tail!6874 lt!1514892) (t!354084 lt!1514892))))

(assert (=> b!4280439 d!1264476))

(declare-fun d!1264478 () Bool)

(declare-fun e!2657401 () Bool)

(assert (=> d!1264478 e!2657401))

(declare-fun res!1757063 () Bool)

(assert (=> d!1264478 (=> (not res!1757063) (not e!2657401))))

(declare-fun lt!1514941 () List!47499)

(assert (=> d!1264478 (= res!1757063 (= ((_ map implies) (content!7496 lt!1514941) (content!7496 (t!354084 lt!1514892))) ((as const (InoxSet T!80116)) true)))))

(declare-fun e!2657397 () List!47499)

(assert (=> d!1264478 (= lt!1514941 e!2657397)))

(declare-fun c!729415 () Bool)

(assert (=> d!1264478 (= c!729415 ((_ is Nil!47375) (t!354084 lt!1514892)))))

(assert (=> d!1264478 (= (drop!2157 (t!354084 lt!1514892) (- (- i!561 1) 1)) lt!1514941)))

(declare-fun b!4280527 () Bool)

(declare-fun e!2657399 () Int)

(declare-fun call!294316 () Int)

(assert (=> b!4280527 (= e!2657399 (- call!294316 (- (- i!561 1) 1)))))

(declare-fun b!4280528 () Bool)

(declare-fun e!2657400 () List!47499)

(assert (=> b!4280528 (= e!2657400 (t!354084 lt!1514892))))

(declare-fun b!4280529 () Bool)

(declare-fun e!2657398 () Int)

(assert (=> b!4280529 (= e!2657398 call!294316)))

(declare-fun b!4280530 () Bool)

(assert (=> b!4280530 (= e!2657399 0)))

(declare-fun b!4280531 () Bool)

(assert (=> b!4280531 (= e!2657400 (drop!2157 (t!354084 (t!354084 lt!1514892)) (- (- (- i!561 1) 1) 1)))))

(declare-fun b!4280532 () Bool)

(assert (=> b!4280532 (= e!2657397 e!2657400)))

(declare-fun c!729417 () Bool)

(assert (=> b!4280532 (= c!729417 (<= (- (- i!561 1) 1) 0))))

(declare-fun b!4280533 () Bool)

(assert (=> b!4280533 (= e!2657401 (= (size!34703 lt!1514941) e!2657398))))

(declare-fun c!729418 () Bool)

(assert (=> b!4280533 (= c!729418 (<= (- (- i!561 1) 1) 0))))

(declare-fun b!4280534 () Bool)

(assert (=> b!4280534 (= e!2657398 e!2657399)))

(declare-fun c!729416 () Bool)

(assert (=> b!4280534 (= c!729416 (>= (- (- i!561 1) 1) call!294316))))

(declare-fun bm!294311 () Bool)

(assert (=> bm!294311 (= call!294316 (size!34703 (t!354084 lt!1514892)))))

(declare-fun b!4280535 () Bool)

(assert (=> b!4280535 (= e!2657397 Nil!47375)))

(assert (= (and d!1264478 c!729415) b!4280535))

(assert (= (and d!1264478 (not c!729415)) b!4280532))

(assert (= (and b!4280532 c!729417) b!4280528))

(assert (= (and b!4280532 (not c!729417)) b!4280531))

(assert (= (and d!1264478 res!1757063) b!4280533))

(assert (= (and b!4280533 c!729418) b!4280529))

(assert (= (and b!4280533 (not c!729418)) b!4280534))

(assert (= (and b!4280534 c!729416) b!4280530))

(assert (= (and b!4280534 (not c!729416)) b!4280527))

(assert (= (or b!4280529 b!4280534 b!4280527) bm!294311))

(declare-fun m!4878307 () Bool)

(assert (=> d!1264478 m!4878307))

(declare-fun m!4878309 () Bool)

(assert (=> d!1264478 m!4878309))

(declare-fun m!4878311 () Bool)

(assert (=> b!4280531 m!4878311))

(declare-fun m!4878313 () Bool)

(assert (=> b!4280533 m!4878313))

(declare-fun m!4878315 () Bool)

(assert (=> bm!294311 m!4878315))

(assert (=> b!4280465 d!1264478))

(declare-fun d!1264480 () Bool)

(assert (=> d!1264480 (= (head!9011 lt!1514892) (h!52795 lt!1514892))))

(assert (=> b!4280438 d!1264480))

(declare-fun d!1264482 () Bool)

(declare-fun lt!1514942 () T!80116)

(assert (=> d!1264482 (contains!9790 (list!17297 arr!11) lt!1514942)))

(declare-fun e!2657403 () T!80116)

(assert (=> d!1264482 (= lt!1514942 e!2657403)))

(declare-fun c!729419 () Bool)

(assert (=> d!1264482 (= c!729419 (= (- i!561 1) 0))))

(declare-fun e!2657402 () Bool)

(assert (=> d!1264482 e!2657402))

(declare-fun res!1757064 () Bool)

(assert (=> d!1264482 (=> (not res!1757064) (not e!2657402))))

(assert (=> d!1264482 (= res!1757064 (<= 0 (- i!561 1)))))

(assert (=> d!1264482 (= (apply!10813 (list!17297 arr!11) (- i!561 1)) lt!1514942)))

(declare-fun b!4280536 () Bool)

(assert (=> b!4280536 (= e!2657402 (< (- i!561 1) (size!34703 (list!17297 arr!11))))))

(declare-fun b!4280537 () Bool)

(assert (=> b!4280537 (= e!2657403 (head!9011 (list!17297 arr!11)))))

(declare-fun b!4280538 () Bool)

(assert (=> b!4280538 (= e!2657403 (apply!10813 (tail!6874 (list!17297 arr!11)) (- (- i!561 1) 1)))))

(assert (= (and d!1264482 res!1757064) b!4280536))

(assert (= (and d!1264482 c!729419) b!4280537))

(assert (= (and d!1264482 (not c!729419)) b!4280538))

(assert (=> d!1264482 m!4878169))

(declare-fun m!4878317 () Bool)

(assert (=> d!1264482 m!4878317))

(assert (=> b!4280536 m!4878169))

(assert (=> b!4280536 m!4878287))

(assert (=> b!4280537 m!4878169))

(declare-fun m!4878319 () Bool)

(assert (=> b!4280537 m!4878319))

(assert (=> b!4280538 m!4878169))

(declare-fun m!4878321 () Bool)

(assert (=> b!4280538 m!4878321))

(assert (=> b!4280538 m!4878321))

(declare-fun m!4878323 () Bool)

(assert (=> b!4280538 m!4878323))

(assert (=> d!1264438 d!1264482))

(assert (=> d!1264438 d!1264466))

(declare-fun d!1264484 () Bool)

(declare-fun _$3!459 () T!80116)

(assert (=> d!1264484 (= _$3!459 (apply!10813 (list!17297 arr!11) (- i!561 1)))))

(assert (=> d!1264484 tp_is_empty!22989))

(assert (=> d!1264484 (= (choose!26100 arr!11 (- i!561 1)) _$3!459)))

(declare-fun bs!602707 () Bool)

(assert (= bs!602707 d!1264484))

(assert (=> bs!602707 m!4878169))

(assert (=> bs!602707 m!4878169))

(assert (=> bs!602707 m!4878237))

(assert (=> d!1264438 d!1264484))

(declare-fun d!1264486 () Bool)

(assert (=> d!1264486 (= (head!9011 (drop!2157 lt!1514892 (- i!561 1))) (h!52795 (drop!2157 lt!1514892 (- i!561 1))))))

(assert (=> d!1264450 d!1264486))

(assert (=> d!1264450 d!1264444))

(assert (=> d!1264450 d!1264428))

(declare-fun d!1264488 () Bool)

(assert (=> d!1264488 (= (head!9011 (drop!2157 lt!1514892 (- i!561 1))) (apply!10813 lt!1514892 (- i!561 1)))))

(assert (=> d!1264488 true))

(declare-fun _$27!1049 () Unit!66337)

(assert (=> d!1264488 (= (choose!26104 lt!1514892 (- i!561 1)) _$27!1049)))

(declare-fun bs!602708 () Bool)

(assert (= bs!602708 d!1264488))

(assert (=> bs!602708 m!4878177))

(assert (=> bs!602708 m!4878177))

(assert (=> bs!602708 m!4878271))

(assert (=> bs!602708 m!4878179))

(assert (=> d!1264450 d!1264488))

(declare-fun d!1264490 () Bool)

(declare-fun lt!1514943 () Int)

(assert (=> d!1264490 (>= lt!1514943 0)))

(declare-fun e!2657404 () Int)

(assert (=> d!1264490 (= lt!1514943 e!2657404)))

(declare-fun c!729420 () Bool)

(assert (=> d!1264490 (= c!729420 ((_ is Nil!47375) lt!1514892))))

(assert (=> d!1264490 (= (size!34703 lt!1514892) lt!1514943)))

(declare-fun b!4280539 () Bool)

(assert (=> b!4280539 (= e!2657404 0)))

(declare-fun b!4280540 () Bool)

(assert (=> b!4280540 (= e!2657404 (+ 1 (size!34703 (t!354084 lt!1514892))))))

(assert (= (and d!1264490 c!729420) b!4280539))

(assert (= (and d!1264490 (not c!729420)) b!4280540))

(assert (=> b!4280540 m!4878315))

(assert (=> b!4280437 d!1264490))

(assert (=> b!4280460 d!1264468))

(declare-fun d!1264492 () Bool)

(declare-fun c!729423 () Bool)

(assert (=> d!1264492 (= c!729423 ((_ is Nil!47375) lt!1514930))))

(declare-fun e!2657407 () (InoxSet T!80116))

(assert (=> d!1264492 (= (content!7496 lt!1514930) e!2657407)))

(declare-fun b!4280545 () Bool)

(assert (=> b!4280545 (= e!2657407 ((as const (Array T!80116 Bool)) false))))

(declare-fun b!4280546 () Bool)

(assert (=> b!4280546 (= e!2657407 ((_ map or) (store ((as const (Array T!80116 Bool)) false) (h!52795 lt!1514930) true) (content!7496 (t!354084 lt!1514930))))))

(assert (= (and d!1264492 c!729423) b!4280545))

(assert (= (and d!1264492 (not c!729423)) b!4280546))

(declare-fun m!4878325 () Bool)

(assert (=> b!4280546 m!4878325))

(declare-fun m!4878327 () Bool)

(assert (=> b!4280546 m!4878327))

(assert (=> d!1264464 d!1264492))

(declare-fun d!1264494 () Bool)

(declare-fun c!729424 () Bool)

(assert (=> d!1264494 (= c!729424 ((_ is Nil!47375) lt!1514892))))

(declare-fun e!2657408 () (InoxSet T!80116))

(assert (=> d!1264494 (= (content!7496 lt!1514892) e!2657408)))

(declare-fun b!4280547 () Bool)

(assert (=> b!4280547 (= e!2657408 ((as const (Array T!80116 Bool)) false))))

(declare-fun b!4280548 () Bool)

(assert (=> b!4280548 (= e!2657408 ((_ map or) (store ((as const (Array T!80116 Bool)) false) (h!52795 lt!1514892) true) (content!7496 (t!354084 lt!1514892))))))

(assert (= (and d!1264494 c!729424) b!4280547))

(assert (= (and d!1264494 (not c!729424)) b!4280548))

(declare-fun m!4878329 () Bool)

(assert (=> b!4280548 m!4878329))

(assert (=> b!4280548 m!4878309))

(assert (=> d!1264464 d!1264494))

(assert (=> b!4280490 d!1264490))

(assert (=> bm!294310 d!1264490))

(declare-fun d!1264498 () Bool)

(declare-fun lt!1514944 () Int)

(assert (=> d!1264498 (>= lt!1514944 0)))

(declare-fun e!2657409 () Int)

(assert (=> d!1264498 (= lt!1514944 e!2657409)))

(declare-fun c!729425 () Bool)

(assert (=> d!1264498 (= c!729425 ((_ is Nil!47375) lt!1514930))))

(assert (=> d!1264498 (= (size!34703 lt!1514930) lt!1514944)))

(declare-fun b!4280549 () Bool)

(assert (=> b!4280549 (= e!2657409 0)))

(declare-fun b!4280550 () Bool)

(assert (=> b!4280550 (= e!2657409 (+ 1 (size!34703 (t!354084 lt!1514930))))))

(assert (= (and d!1264498 c!729425) b!4280549))

(assert (= (and d!1264498 (not c!729425)) b!4280550))

(declare-fun m!4878331 () Bool)

(assert (=> b!4280550 m!4878331))

(assert (=> b!4280497 d!1264498))

(declare-fun d!1264500 () Bool)

(declare-fun e!2657414 () Bool)

(assert (=> d!1264500 e!2657414))

(declare-fun res!1757065 () Bool)

(assert (=> d!1264500 (=> (not res!1757065) (not e!2657414))))

(declare-fun lt!1514945 () List!47499)

(assert (=> d!1264500 (= res!1757065 (= ((_ map implies) (content!7496 lt!1514945) (content!7496 (t!354084 lt!1514892))) ((as const (InoxSet T!80116)) true)))))

(declare-fun e!2657410 () List!47499)

(assert (=> d!1264500 (= lt!1514945 e!2657410)))

(declare-fun c!729426 () Bool)

(assert (=> d!1264500 (= c!729426 ((_ is Nil!47375) (t!354084 lt!1514892)))))

(assert (=> d!1264500 (= (drop!2157 (t!354084 lt!1514892) (- i!561 1)) lt!1514945)))

(declare-fun b!4280551 () Bool)

(declare-fun e!2657412 () Int)

(declare-fun call!294317 () Int)

(assert (=> b!4280551 (= e!2657412 (- call!294317 (- i!561 1)))))

(declare-fun b!4280552 () Bool)

(declare-fun e!2657413 () List!47499)

(assert (=> b!4280552 (= e!2657413 (t!354084 lt!1514892))))

(declare-fun b!4280553 () Bool)

(declare-fun e!2657411 () Int)

(assert (=> b!4280553 (= e!2657411 call!294317)))

(declare-fun b!4280554 () Bool)

(assert (=> b!4280554 (= e!2657412 0)))

(declare-fun b!4280555 () Bool)

(assert (=> b!4280555 (= e!2657413 (drop!2157 (t!354084 (t!354084 lt!1514892)) (- (- i!561 1) 1)))))

(declare-fun b!4280556 () Bool)

(assert (=> b!4280556 (= e!2657410 e!2657413)))

(declare-fun c!729428 () Bool)

(assert (=> b!4280556 (= c!729428 (<= (- i!561 1) 0))))

(declare-fun b!4280557 () Bool)

(assert (=> b!4280557 (= e!2657414 (= (size!34703 lt!1514945) e!2657411))))

(declare-fun c!729429 () Bool)

(assert (=> b!4280557 (= c!729429 (<= (- i!561 1) 0))))

(declare-fun b!4280558 () Bool)

(assert (=> b!4280558 (= e!2657411 e!2657412)))

(declare-fun c!729427 () Bool)

(assert (=> b!4280558 (= c!729427 (>= (- i!561 1) call!294317))))

(declare-fun bm!294312 () Bool)

(assert (=> bm!294312 (= call!294317 (size!34703 (t!354084 lt!1514892)))))

(declare-fun b!4280559 () Bool)

(assert (=> b!4280559 (= e!2657410 Nil!47375)))

(assert (= (and d!1264500 c!729426) b!4280559))

(assert (= (and d!1264500 (not c!729426)) b!4280556))

(assert (= (and b!4280556 c!729428) b!4280552))

(assert (= (and b!4280556 (not c!729428)) b!4280555))

(assert (= (and d!1264500 res!1757065) b!4280557))

(assert (= (and b!4280557 c!729429) b!4280553))

(assert (= (and b!4280557 (not c!729429)) b!4280558))

(assert (= (and b!4280558 c!729427) b!4280554))

(assert (= (and b!4280558 (not c!729427)) b!4280551))

(assert (= (or b!4280553 b!4280558 b!4280551) bm!294312))

(declare-fun m!4878333 () Bool)

(assert (=> d!1264500 m!4878333))

(assert (=> d!1264500 m!4878309))

(declare-fun m!4878335 () Bool)

(assert (=> b!4280555 m!4878335))

(declare-fun m!4878337 () Bool)

(assert (=> b!4280557 m!4878337))

(assert (=> bm!294312 m!4878315))

(assert (=> b!4280495 d!1264500))

(declare-fun d!1264502 () Bool)

(declare-fun lt!1514946 () Int)

(assert (=> d!1264502 (>= lt!1514946 0)))

(declare-fun e!2657417 () Int)

(assert (=> d!1264502 (= lt!1514946 e!2657417)))

(declare-fun c!729432 () Bool)

(assert (=> d!1264502 (= c!729432 ((_ is Nil!47375) (list!17297 arr!11)))))

(assert (=> d!1264502 (= (size!34703 (list!17297 arr!11)) lt!1514946)))

(declare-fun b!4280564 () Bool)

(assert (=> b!4280564 (= e!2657417 0)))

(declare-fun b!4280565 () Bool)

(assert (=> b!4280565 (= e!2657417 (+ 1 (size!34703 (t!354084 (list!17297 arr!11)))))))

(assert (= (and d!1264502 c!729432) b!4280564))

(assert (= (and d!1264502 (not c!729432)) b!4280565))

(declare-fun m!4878339 () Bool)

(assert (=> b!4280565 m!4878339))

(assert (=> d!1264468 d!1264502))

(assert (=> d!1264468 d!1264466))

(declare-fun d!1264504 () Bool)

(declare-fun _$1!10373 () Int)

(assert (=> d!1264504 (= _$1!10373 (size!34703 (list!17297 arr!11)))))

(assert (=> d!1264504 true))

(assert (=> d!1264504 (= (choose!26106 arr!11) _$1!10373)))

(declare-fun bs!602709 () Bool)

(assert (= bs!602709 d!1264504))

(assert (=> bs!602709 m!4878169))

(assert (=> bs!602709 m!4878169))

(assert (=> bs!602709 m!4878287))

(assert (=> d!1264468 d!1264504))

(declare-fun d!1264506 () Bool)

(assert (=> d!1264506 (= (tail!6874 (drop!2157 lt!1514892 (- i!561 1))) (t!354084 (drop!2157 lt!1514892 (- i!561 1))))))

(assert (=> d!1264446 d!1264506))

(assert (=> d!1264446 d!1264444))

(declare-fun d!1264508 () Bool)

(declare-fun e!2657423 () Bool)

(assert (=> d!1264508 e!2657423))

(declare-fun res!1757066 () Bool)

(assert (=> d!1264508 (=> (not res!1757066) (not e!2657423))))

(declare-fun lt!1514947 () List!47499)

(assert (=> d!1264508 (= res!1757066 (= ((_ map implies) (content!7496 lt!1514947) (content!7496 lt!1514892)) ((as const (InoxSet T!80116)) true)))))

(declare-fun e!2657419 () List!47499)

(assert (=> d!1264508 (= lt!1514947 e!2657419)))

(declare-fun c!729434 () Bool)

(assert (=> d!1264508 (= c!729434 ((_ is Nil!47375) lt!1514892))))

(assert (=> d!1264508 (= (drop!2157 lt!1514892 (+ (- i!561 1) 1)) lt!1514947)))

(declare-fun b!4280568 () Bool)

(declare-fun e!2657421 () Int)

(declare-fun call!294318 () Int)

(assert (=> b!4280568 (= e!2657421 (- call!294318 (+ (- i!561 1) 1)))))

(declare-fun b!4280569 () Bool)

(declare-fun e!2657422 () List!47499)

(assert (=> b!4280569 (= e!2657422 lt!1514892)))

(declare-fun b!4280570 () Bool)

(declare-fun e!2657420 () Int)

(assert (=> b!4280570 (= e!2657420 call!294318)))

(declare-fun b!4280571 () Bool)

(assert (=> b!4280571 (= e!2657421 0)))

(declare-fun b!4280572 () Bool)

(assert (=> b!4280572 (= e!2657422 (drop!2157 (t!354084 lt!1514892) (- (+ (- i!561 1) 1) 1)))))

(declare-fun b!4280573 () Bool)

(assert (=> b!4280573 (= e!2657419 e!2657422)))

(declare-fun c!729436 () Bool)

(assert (=> b!4280573 (= c!729436 (<= (+ (- i!561 1) 1) 0))))

(declare-fun b!4280574 () Bool)

(assert (=> b!4280574 (= e!2657423 (= (size!34703 lt!1514947) e!2657420))))

(declare-fun c!729437 () Bool)

(assert (=> b!4280574 (= c!729437 (<= (+ (- i!561 1) 1) 0))))

(declare-fun b!4280575 () Bool)

(assert (=> b!4280575 (= e!2657420 e!2657421)))

(declare-fun c!729435 () Bool)

(assert (=> b!4280575 (= c!729435 (>= (+ (- i!561 1) 1) call!294318))))

(declare-fun bm!294313 () Bool)

(assert (=> bm!294313 (= call!294318 (size!34703 lt!1514892))))

(declare-fun b!4280576 () Bool)

(assert (=> b!4280576 (= e!2657419 Nil!47375)))

(assert (= (and d!1264508 c!729434) b!4280576))

(assert (= (and d!1264508 (not c!729434)) b!4280573))

(assert (= (and b!4280573 c!729436) b!4280569))

(assert (= (and b!4280573 (not c!729436)) b!4280572))

(assert (= (and d!1264508 res!1757066) b!4280574))

(assert (= (and b!4280574 c!729437) b!4280570))

(assert (= (and b!4280574 (not c!729437)) b!4280575))

(assert (= (and b!4280575 c!729435) b!4280571))

(assert (= (and b!4280575 (not c!729435)) b!4280568))

(assert (= (or b!4280570 b!4280575 b!4280568) bm!294313))

(declare-fun m!4878353 () Bool)

(assert (=> d!1264508 m!4878353))

(assert (=> d!1264508 m!4878193))

(declare-fun m!4878355 () Bool)

(assert (=> b!4280572 m!4878355))

(declare-fun m!4878357 () Bool)

(assert (=> b!4280574 m!4878357))

(assert (=> bm!294313 m!4878199))

(assert (=> d!1264446 d!1264508))

(declare-fun d!1264516 () Bool)

(assert (=> d!1264516 (= (tail!6874 (drop!2157 lt!1514892 (- i!561 1))) (drop!2157 lt!1514892 (+ (- i!561 1) 1)))))

(assert (=> d!1264516 true))

(declare-fun _$28!802 () Unit!66337)

(assert (=> d!1264516 (= (choose!26103 lt!1514892 (- i!561 1)) _$28!802)))

(declare-fun bs!602710 () Bool)

(assert (= bs!602710 d!1264516))

(assert (=> bs!602710 m!4878177))

(assert (=> bs!602710 m!4878177))

(assert (=> bs!602710 m!4878251))

(assert (=> bs!602710 m!4878253))

(assert (=> d!1264446 d!1264516))

(assert (=> bm!294305 d!1264490))

(declare-fun d!1264520 () Bool)

(declare-fun c!729446 () Bool)

(assert (=> d!1264520 (= c!729446 ((_ is Nil!47375) lt!1514898))))

(declare-fun e!2657433 () (InoxSet T!80116))

(assert (=> d!1264520 (= (content!7496 lt!1514898) e!2657433)))

(declare-fun b!4280594 () Bool)

(assert (=> b!4280594 (= e!2657433 ((as const (Array T!80116 Bool)) false))))

(declare-fun b!4280595 () Bool)

(assert (=> b!4280595 (= e!2657433 ((_ map or) (store ((as const (Array T!80116 Bool)) false) (h!52795 lt!1514898) true) (content!7496 (t!354084 lt!1514898))))))

(assert (= (and d!1264520 c!729446) b!4280594))

(assert (= (and d!1264520 (not c!729446)) b!4280595))

(declare-fun m!4878367 () Bool)

(assert (=> b!4280595 m!4878367))

(declare-fun m!4878369 () Bool)

(assert (=> b!4280595 m!4878369))

(assert (=> d!1264420 d!1264520))

(assert (=> d!1264420 d!1264494))

(declare-fun d!1264522 () Bool)

(declare-fun lt!1514951 () Int)

(assert (=> d!1264522 (>= lt!1514951 0)))

(declare-fun e!2657434 () Int)

(assert (=> d!1264522 (= lt!1514951 e!2657434)))

(declare-fun c!729447 () Bool)

(assert (=> d!1264522 (= c!729447 ((_ is Nil!47375) lt!1514898))))

(assert (=> d!1264522 (= (size!34703 lt!1514898) lt!1514951)))

(declare-fun b!4280596 () Bool)

(assert (=> b!4280596 (= e!2657434 0)))

(declare-fun b!4280597 () Bool)

(assert (=> b!4280597 (= e!2657434 (+ 1 (size!34703 (t!354084 lt!1514898))))))

(assert (= (and d!1264522 c!729447) b!4280596))

(assert (= (and d!1264522 (not c!729447)) b!4280597))

(declare-fun m!4878371 () Bool)

(assert (=> b!4280597 m!4878371))

(assert (=> b!4280416 d!1264522))

(assert (=> b!4280475 d!1264490))

(declare-fun d!1264524 () Bool)

(declare-fun e!2657439 () Bool)

(assert (=> d!1264524 e!2657439))

(declare-fun res!1757068 () Bool)

(assert (=> d!1264524 (=> (not res!1757068) (not e!2657439))))

(declare-fun lt!1514952 () List!47499)

(assert (=> d!1264524 (= res!1757068 (= ((_ map implies) (content!7496 lt!1514952) (content!7496 (t!354084 lt!1514892))) ((as const (InoxSet T!80116)) true)))))

(declare-fun e!2657435 () List!47499)

(assert (=> d!1264524 (= lt!1514952 e!2657435)))

(declare-fun c!729448 () Bool)

(assert (=> d!1264524 (= c!729448 ((_ is Nil!47375) (t!354084 lt!1514892)))))

(assert (=> d!1264524 (= (drop!2157 (t!354084 lt!1514892) (- (+ 1 (- i!561 1)) 1)) lt!1514952)))

(declare-fun b!4280598 () Bool)

(declare-fun e!2657437 () Int)

(declare-fun call!294320 () Int)

(assert (=> b!4280598 (= e!2657437 (- call!294320 (- (+ 1 (- i!561 1)) 1)))))

(declare-fun b!4280599 () Bool)

(declare-fun e!2657438 () List!47499)

(assert (=> b!4280599 (= e!2657438 (t!354084 lt!1514892))))

(declare-fun b!4280600 () Bool)

(declare-fun e!2657436 () Int)

(assert (=> b!4280600 (= e!2657436 call!294320)))

(declare-fun b!4280601 () Bool)

(assert (=> b!4280601 (= e!2657437 0)))

(declare-fun b!4280602 () Bool)

(assert (=> b!4280602 (= e!2657438 (drop!2157 (t!354084 (t!354084 lt!1514892)) (- (- (+ 1 (- i!561 1)) 1) 1)))))

(declare-fun b!4280603 () Bool)

(assert (=> b!4280603 (= e!2657435 e!2657438)))

(declare-fun c!729450 () Bool)

(assert (=> b!4280603 (= c!729450 (<= (- (+ 1 (- i!561 1)) 1) 0))))

(declare-fun b!4280604 () Bool)

(assert (=> b!4280604 (= e!2657439 (= (size!34703 lt!1514952) e!2657436))))

(declare-fun c!729451 () Bool)

(assert (=> b!4280604 (= c!729451 (<= (- (+ 1 (- i!561 1)) 1) 0))))

(declare-fun b!4280605 () Bool)

(assert (=> b!4280605 (= e!2657436 e!2657437)))

(declare-fun c!729449 () Bool)

(assert (=> b!4280605 (= c!729449 (>= (- (+ 1 (- i!561 1)) 1) call!294320))))

(declare-fun bm!294315 () Bool)

(assert (=> bm!294315 (= call!294320 (size!34703 (t!354084 lt!1514892)))))

(declare-fun b!4280606 () Bool)

(assert (=> b!4280606 (= e!2657435 Nil!47375)))

(assert (= (and d!1264524 c!729448) b!4280606))

(assert (= (and d!1264524 (not c!729448)) b!4280603))

(assert (= (and b!4280603 c!729450) b!4280599))

(assert (= (and b!4280603 (not c!729450)) b!4280602))

(assert (= (and d!1264524 res!1757068) b!4280604))

(assert (= (and b!4280604 c!729451) b!4280600))

(assert (= (and b!4280604 (not c!729451)) b!4280605))

(assert (= (and b!4280605 c!729449) b!4280601))

(assert (= (and b!4280605 (not c!729449)) b!4280598))

(assert (= (or b!4280600 b!4280605 b!4280598) bm!294315))

(declare-fun m!4878373 () Bool)

(assert (=> d!1264524 m!4878373))

(assert (=> d!1264524 m!4878309))

(declare-fun m!4878377 () Bool)

(assert (=> b!4280602 m!4878377))

(declare-fun m!4878379 () Bool)

(assert (=> b!4280604 m!4878379))

(assert (=> bm!294315 m!4878315))

(assert (=> b!4280414 d!1264524))

(declare-fun d!1264528 () Bool)

(declare-fun lt!1514954 () Int)

(assert (=> d!1264528 (>= lt!1514954 0)))

(declare-fun e!2657441 () Int)

(assert (=> d!1264528 (= lt!1514954 e!2657441)))

(declare-fun c!729453 () Bool)

(assert (=> d!1264528 (= c!729453 ((_ is Nil!47375) (innerList!14417 arr!11)))))

(assert (=> d!1264528 (= (size!34703 (innerList!14417 arr!11)) lt!1514954)))

(declare-fun b!4280609 () Bool)

(assert (=> b!4280609 (= e!2657441 0)))

(declare-fun b!4280610 () Bool)

(assert (=> b!4280610 (= e!2657441 (+ 1 (size!34703 (t!354084 (innerList!14417 arr!11)))))))

(assert (= (and d!1264528 c!729453) b!4280609))

(assert (= (and d!1264528 (not c!729453)) b!4280610))

(declare-fun m!4878381 () Bool)

(assert (=> b!4280610 m!4878381))

(assert (=> d!1264462 d!1264528))

(assert (=> bm!294308 d!1264490))

(declare-fun d!1264530 () Bool)

(declare-fun c!729454 () Bool)

(assert (=> d!1264530 (= c!729454 ((_ is Nil!47375) lt!1514913))))

(declare-fun e!2657442 () (InoxSet T!80116))

(assert (=> d!1264530 (= (content!7496 lt!1514913) e!2657442)))

(declare-fun b!4280611 () Bool)

(assert (=> b!4280611 (= e!2657442 ((as const (Array T!80116 Bool)) false))))

(declare-fun b!4280612 () Bool)

(assert (=> b!4280612 (= e!2657442 ((_ map or) (store ((as const (Array T!80116 Bool)) false) (h!52795 lt!1514913) true) (content!7496 (t!354084 lt!1514913))))))

(assert (= (and d!1264530 c!729454) b!4280611))

(assert (= (and d!1264530 (not c!729454)) b!4280612))

(declare-fun m!4878383 () Bool)

(assert (=> b!4280612 m!4878383))

(declare-fun m!4878385 () Bool)

(assert (=> b!4280612 m!4878385))

(assert (=> d!1264444 d!1264530))

(assert (=> d!1264444 d!1264494))

(declare-fun b!4280613 () Bool)

(declare-fun e!2657443 () Bool)

(declare-fun tp!1309321 () Bool)

(assert (=> b!4280613 (= e!2657443 (and tp_is_empty!22989 tp!1309321))))

(assert (=> b!4280510 (= tp!1309319 e!2657443)))

(assert (= (and b!4280510 ((_ is Cons!47375) (t!354084 (t!354084 acc!244)))) b!4280613))

(declare-fun b!4280614 () Bool)

(declare-fun e!2657444 () Bool)

(declare-fun tp!1309322 () Bool)

(assert (=> b!4280614 (= e!2657444 (and tp_is_empty!22989 tp!1309322))))

(assert (=> b!4280511 (= tp!1309320 e!2657444)))

(assert (= (and b!4280511 ((_ is Cons!47375) (t!354084 (innerList!14417 arr!11)))) b!4280614))

(check-sat (not b!4280537) (not d!1264500) (not d!1264482) (not b!4280604) tp_is_empty!22989 (not b!4280523) (not b!4280524) (not b!4280533) (not b!4280526) (not bm!294313) (not b!4280612) (not d!1264478) (not b!4280602) (not bm!294312) (not b!4280574) (not d!1264504) (not bm!294315) (not b!4280546) (not b!4280517) (not b!4280610) (not b!4280613) (not d!1264470) (not b!4280525) (not b!4280595) (not d!1264474) (not b!4280548) (not bm!294311) (not b!4280565) (not b!4280555) (not d!1264524) (not b!4280557) (not d!1264484) (not b!4280540) (not b!4280614) (not b!4280550) (not b!4280597) (not b!4280572) (not d!1264488) (not d!1264508) (not b!4280538) (not b!4280536) (not d!1264516) (not b!4280531))
(check-sat)
