; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106888 () Bool)

(assert start!106888)

(declare-fun b!1200465 () Bool)

(declare-fun e!770525 () Bool)

(declare-fun tp!341258 () Bool)

(assert (=> b!1200465 (= e!770525 tp!341258)))

(declare-fun res!541268 () Bool)

(declare-fun e!770528 () Bool)

(assert (=> start!106888 (=> (not res!541268) (not e!770528))))

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(assert (=> start!106888 (= res!541268 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106888 e!770528))

(assert (=> start!106888 true))

(declare-datatypes ((T!21796 0))(
  ( (T!21797 (val!3890 Int)) )
))
(declare-datatypes ((List!12069 0))(
  ( (Nil!12045) (Cons!12045 (h!17446 T!21796) (t!112445 List!12069)) )
))
(declare-datatypes ((IArray!7961 0))(
  ( (IArray!7962 (innerList!4038 List!12069)) )
))
(declare-datatypes ((Conc!3978 0))(
  ( (Node!3978 (left!10515 Conc!3978) (right!10845 Conc!3978) (csize!8186 Int) (cheight!4189 Int)) (Leaf!6092 (xs!6685 IArray!7961) (csize!8187 Int)) (Empty!3978) )
))
(declare-fun t!4115 () Conc!3978)

(declare-fun e!770527 () Bool)

(declare-fun inv!16126 (Conc!3978) Bool)

(assert (=> start!106888 (and (inv!16126 t!4115) e!770527)))

(declare-fun b!1200466 () Bool)

(declare-fun res!541271 () Bool)

(assert (=> b!1200466 (=> (not res!541271) (not e!770528))))

(get-info :version)

(assert (=> b!1200466 (= res!541271 (and (not (= from!553 until!31)) (not ((_ is Leaf!6092) t!4115)) ((_ is Node!3978) t!4115)))))

(declare-fun b!1200467 () Bool)

(declare-fun e!770526 () Bool)

(declare-fun lt!410858 () List!12069)

(declare-fun e!770523 () List!12069)

(assert (=> b!1200467 (= e!770526 (= lt!410858 e!770523))))

(declare-fun c!199992 () Bool)

(declare-fun lt!410861 () Int)

(assert (=> b!1200467 (= c!199992 (<= until!31 lt!410861))))

(declare-fun b!1200468 () Bool)

(declare-fun res!541270 () Bool)

(assert (=> b!1200468 (=> (not res!541270) (not e!770528))))

(declare-fun size!9574 (Conc!3978) Int)

(assert (=> b!1200468 (= res!541270 (<= until!31 (size!9574 t!4115)))))

(declare-fun b!1200469 () Bool)

(declare-fun call!83534 () List!12069)

(assert (=> b!1200469 (= e!770523 call!83534)))

(declare-fun bm!83528 () Bool)

(declare-fun lt!410857 () List!12069)

(declare-fun slice!477 (List!12069 Int Int) List!12069)

(assert (=> bm!83528 (= call!83534 (slice!477 lt!410857 from!553 (ite c!199992 until!31 lt!410861)))))

(declare-fun b!1200470 () Bool)

(declare-fun e!770524 () Bool)

(declare-fun ConcPrimitiveSize!8 (Conc!3978) Int)

(assert (=> b!1200470 (= e!770524 (< (ConcPrimitiveSize!8 (left!10515 t!4115)) (ConcPrimitiveSize!8 t!4115)))))

(declare-fun b!1200471 () Bool)

(declare-fun inv!16127 (IArray!7961) Bool)

(assert (=> b!1200471 (= e!770527 (and (inv!16127 (xs!6685 t!4115)) e!770525))))

(declare-fun b!1200472 () Bool)

(declare-fun res!541269 () Bool)

(assert (=> b!1200472 (=> (not res!541269) (not e!770528))))

(declare-fun isBalanced!1163 (Conc!3978) Bool)

(assert (=> b!1200472 (= res!541269 (isBalanced!1163 t!4115))))

(declare-fun tp!341257 () Bool)

(declare-fun b!1200473 () Bool)

(declare-fun tp!341259 () Bool)

(assert (=> b!1200473 (= e!770527 (and (inv!16126 (left!10515 t!4115)) tp!341257 (inv!16126 (right!10845 t!4115)) tp!341259))))

(declare-fun b!1200474 () Bool)

(declare-fun call!83533 () List!12069)

(assert (=> b!1200474 (= e!770526 (= lt!410858 call!83533))))

(declare-fun b!1200475 () Bool)

(assert (=> b!1200475 (= e!770528 (not e!770524))))

(declare-fun res!541272 () Bool)

(assert (=> b!1200475 (=> res!541272 e!770524)))

(declare-fun lt!410860 () Int)

(assert (=> b!1200475 (= res!541272 (or (<= lt!410860 from!553) (<= until!31 lt!410860)))))

(assert (=> b!1200475 (= lt!410860 (size!9574 (left!10515 t!4115)))))

(assert (=> b!1200475 e!770526))

(declare-fun c!199991 () Bool)

(assert (=> b!1200475 (= c!199991 (<= lt!410861 from!553))))

(declare-fun lt!410859 () List!12069)

(declare-fun ++!3084 (List!12069 List!12069) List!12069)

(assert (=> b!1200475 (= lt!410858 (slice!477 (++!3084 lt!410857 lt!410859) from!553 until!31))))

(declare-fun size!9575 (List!12069) Int)

(assert (=> b!1200475 (= lt!410861 (size!9575 lt!410857))))

(declare-datatypes ((Unit!18460 0))(
  ( (Unit!18461) )
))
(declare-fun lt!410862 () Unit!18460)

(declare-fun sliceLemma!41 (List!12069 List!12069 Int Int) Unit!18460)

(assert (=> b!1200475 (= lt!410862 (sliceLemma!41 lt!410857 lt!410859 from!553 until!31))))

(declare-fun list!4489 (Conc!3978) List!12069)

(assert (=> b!1200475 (= lt!410859 (list!4489 (right!10845 t!4115)))))

(assert (=> b!1200475 (= lt!410857 (list!4489 (left!10515 t!4115)))))

(declare-fun b!1200476 () Bool)

(assert (=> b!1200476 (= e!770523 (++!3084 call!83534 call!83533))))

(declare-fun bm!83529 () Bool)

(assert (=> bm!83529 (= call!83533 (slice!477 lt!410859 (ite c!199991 (- from!553 lt!410861) 0) (- until!31 lt!410861)))))

(assert (= (and start!106888 res!541268) b!1200468))

(assert (= (and b!1200468 res!541270) b!1200472))

(assert (= (and b!1200472 res!541269) b!1200466))

(assert (= (and b!1200466 res!541271) b!1200475))

(assert (= (and b!1200475 c!199991) b!1200474))

(assert (= (and b!1200475 (not c!199991)) b!1200467))

(assert (= (and b!1200467 c!199992) b!1200469))

(assert (= (and b!1200467 (not c!199992)) b!1200476))

(assert (= (or b!1200469 b!1200476) bm!83528))

(assert (= (or b!1200474 b!1200476) bm!83529))

(assert (= (and b!1200475 (not res!541272)) b!1200470))

(assert (= (and start!106888 ((_ is Node!3978) t!4115)) b!1200473))

(assert (= b!1200471 b!1200465))

(assert (= (and start!106888 ((_ is Leaf!6092) t!4115)) b!1200471))

(declare-fun m!1375949 () Bool)

(assert (=> b!1200472 m!1375949))

(declare-fun m!1375951 () Bool)

(assert (=> b!1200476 m!1375951))

(declare-fun m!1375953 () Bool)

(assert (=> bm!83529 m!1375953))

(declare-fun m!1375955 () Bool)

(assert (=> start!106888 m!1375955))

(declare-fun m!1375957 () Bool)

(assert (=> b!1200473 m!1375957))

(declare-fun m!1375959 () Bool)

(assert (=> b!1200473 m!1375959))

(declare-fun m!1375961 () Bool)

(assert (=> b!1200468 m!1375961))

(declare-fun m!1375963 () Bool)

(assert (=> b!1200475 m!1375963))

(declare-fun m!1375965 () Bool)

(assert (=> b!1200475 m!1375965))

(declare-fun m!1375967 () Bool)

(assert (=> b!1200475 m!1375967))

(declare-fun m!1375969 () Bool)

(assert (=> b!1200475 m!1375969))

(declare-fun m!1375971 () Bool)

(assert (=> b!1200475 m!1375971))

(declare-fun m!1375973 () Bool)

(assert (=> b!1200475 m!1375973))

(assert (=> b!1200475 m!1375971))

(declare-fun m!1375975 () Bool)

(assert (=> b!1200475 m!1375975))

(declare-fun m!1375977 () Bool)

(assert (=> b!1200471 m!1375977))

(declare-fun m!1375979 () Bool)

(assert (=> bm!83528 m!1375979))

(declare-fun m!1375981 () Bool)

(assert (=> b!1200470 m!1375981))

(declare-fun m!1375983 () Bool)

(assert (=> b!1200470 m!1375983))

(check-sat (not b!1200475) (not b!1200471) (not start!106888) (not b!1200468) (not bm!83528) (not b!1200473) (not b!1200472) (not b!1200470) (not b!1200465) (not b!1200476) (not bm!83529))
(check-sat)
(get-model)

(declare-fun d!343244 () Bool)

(declare-fun c!199995 () Bool)

(assert (=> d!343244 (= c!199995 ((_ is Node!3978) t!4115))))

(declare-fun e!770533 () Bool)

(assert (=> d!343244 (= (inv!16126 t!4115) e!770533)))

(declare-fun b!1200483 () Bool)

(declare-fun inv!16130 (Conc!3978) Bool)

(assert (=> b!1200483 (= e!770533 (inv!16130 t!4115))))

(declare-fun b!1200484 () Bool)

(declare-fun e!770534 () Bool)

(assert (=> b!1200484 (= e!770533 e!770534)))

(declare-fun res!541275 () Bool)

(assert (=> b!1200484 (= res!541275 (not ((_ is Leaf!6092) t!4115)))))

(assert (=> b!1200484 (=> res!541275 e!770534)))

(declare-fun b!1200485 () Bool)

(declare-fun inv!16131 (Conc!3978) Bool)

(assert (=> b!1200485 (= e!770534 (inv!16131 t!4115))))

(assert (= (and d!343244 c!199995) b!1200483))

(assert (= (and d!343244 (not c!199995)) b!1200484))

(assert (= (and b!1200484 (not res!541275)) b!1200485))

(declare-fun m!1375985 () Bool)

(assert (=> b!1200483 m!1375985))

(declare-fun m!1375987 () Bool)

(assert (=> b!1200485 m!1375987))

(assert (=> start!106888 d!343244))

(declare-fun d!343246 () Bool)

(declare-fun lt!410865 () Int)

(assert (=> d!343246 (= lt!410865 (size!9575 (list!4489 (left!10515 t!4115))))))

(assert (=> d!343246 (= lt!410865 (ite ((_ is Empty!3978) (left!10515 t!4115)) 0 (ite ((_ is Leaf!6092) (left!10515 t!4115)) (csize!8187 (left!10515 t!4115)) (csize!8186 (left!10515 t!4115)))))))

(assert (=> d!343246 (= (size!9574 (left!10515 t!4115)) lt!410865)))

(declare-fun bs!288263 () Bool)

(assert (= bs!288263 d!343246))

(assert (=> bs!288263 m!1375975))

(assert (=> bs!288263 m!1375975))

(declare-fun m!1375989 () Bool)

(assert (=> bs!288263 m!1375989))

(assert (=> b!1200475 d!343246))

(declare-fun d!343250 () Bool)

(declare-fun lt!410868 () Int)

(assert (=> d!343250 (>= lt!410868 0)))

(declare-fun e!770537 () Int)

(assert (=> d!343250 (= lt!410868 e!770537)))

(declare-fun c!199998 () Bool)

(assert (=> d!343250 (= c!199998 ((_ is Nil!12045) lt!410857))))

(assert (=> d!343250 (= (size!9575 lt!410857) lt!410868)))

(declare-fun b!1200490 () Bool)

(assert (=> b!1200490 (= e!770537 0)))

(declare-fun b!1200491 () Bool)

(assert (=> b!1200491 (= e!770537 (+ 1 (size!9575 (t!112445 lt!410857))))))

(assert (= (and d!343250 c!199998) b!1200490))

(assert (= (and d!343250 (not c!199998)) b!1200491))

(declare-fun m!1375993 () Bool)

(assert (=> b!1200491 m!1375993))

(assert (=> b!1200475 d!343250))

(declare-fun b!1200511 () Bool)

(declare-fun e!770549 () List!12069)

(declare-fun list!4490 (IArray!7961) List!12069)

(assert (=> b!1200511 (= e!770549 (list!4490 (xs!6685 (left!10515 t!4115))))))

(declare-fun b!1200512 () Bool)

(assert (=> b!1200512 (= e!770549 (++!3084 (list!4489 (left!10515 (left!10515 t!4115))) (list!4489 (right!10845 (left!10515 t!4115)))))))

(declare-fun b!1200509 () Bool)

(declare-fun e!770548 () List!12069)

(assert (=> b!1200509 (= e!770548 Nil!12045)))

(declare-fun b!1200510 () Bool)

(assert (=> b!1200510 (= e!770548 e!770549)))

(declare-fun c!200007 () Bool)

(assert (=> b!1200510 (= c!200007 ((_ is Leaf!6092) (left!10515 t!4115)))))

(declare-fun d!343254 () Bool)

(declare-fun c!200006 () Bool)

(assert (=> d!343254 (= c!200006 ((_ is Empty!3978) (left!10515 t!4115)))))

(assert (=> d!343254 (= (list!4489 (left!10515 t!4115)) e!770548)))

(assert (= (and d!343254 c!200006) b!1200509))

(assert (= (and d!343254 (not c!200006)) b!1200510))

(assert (= (and b!1200510 c!200007) b!1200511))

(assert (= (and b!1200510 (not c!200007)) b!1200512))

(declare-fun m!1375999 () Bool)

(assert (=> b!1200511 m!1375999))

(declare-fun m!1376001 () Bool)

(assert (=> b!1200512 m!1376001))

(declare-fun m!1376003 () Bool)

(assert (=> b!1200512 m!1376003))

(assert (=> b!1200512 m!1376001))

(assert (=> b!1200512 m!1376003))

(declare-fun m!1376005 () Bool)

(assert (=> b!1200512 m!1376005))

(assert (=> b!1200475 d!343254))

(declare-fun d!343258 () Bool)

(declare-fun take!131 (List!12069 Int) List!12069)

(declare-fun drop!603 (List!12069 Int) List!12069)

(assert (=> d!343258 (= (slice!477 (++!3084 lt!410857 lt!410859) from!553 until!31) (take!131 (drop!603 (++!3084 lt!410857 lt!410859) from!553) (- until!31 from!553)))))

(declare-fun bs!288266 () Bool)

(assert (= bs!288266 d!343258))

(assert (=> bs!288266 m!1375971))

(declare-fun m!1376011 () Bool)

(assert (=> bs!288266 m!1376011))

(assert (=> bs!288266 m!1376011))

(declare-fun m!1376013 () Bool)

(assert (=> bs!288266 m!1376013))

(assert (=> b!1200475 d!343258))

(declare-fun b!1200557 () Bool)

(declare-fun e!770572 () Bool)

(assert (=> b!1200557 (= e!770572 (<= until!31 (+ (size!9575 lt!410857) (size!9575 lt!410859))))))

(declare-fun b!1200558 () Bool)

(declare-fun call!83542 () List!12069)

(declare-fun e!770570 () List!12069)

(declare-fun call!83541 () Int)

(assert (=> b!1200558 (= e!770570 (++!3084 call!83542 (slice!477 lt!410859 0 (- until!31 call!83541))))))

(declare-fun b!1200559 () Bool)

(declare-fun e!770573 () List!12069)

(declare-fun call!83543 () List!12069)

(assert (=> b!1200559 (= e!770573 call!83543)))

(declare-fun b!1200560 () Bool)

(declare-fun e!770571 () Int)

(assert (=> b!1200560 (= e!770571 call!83541)))

(declare-fun d!343262 () Bool)

(assert (=> d!343262 (= (slice!477 (++!3084 lt!410857 lt!410859) from!553 until!31) e!770573)))

(declare-fun c!200019 () Bool)

(assert (=> d!343262 (= c!200019 (<= (size!9575 lt!410857) from!553))))

(declare-fun lt!410877 () Unit!18460)

(declare-fun choose!7733 (List!12069 List!12069 Int Int) Unit!18460)

(assert (=> d!343262 (= lt!410877 (choose!7733 lt!410857 lt!410859 from!553 until!31))))

(assert (=> d!343262 e!770572))

(declare-fun res!541305 () Bool)

(assert (=> d!343262 (=> (not res!541305) (not e!770572))))

(assert (=> d!343262 (= res!541305 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!343262 (= (sliceLemma!41 lt!410857 lt!410859 from!553 until!31) lt!410877)))

(declare-fun b!1200561 () Bool)

(assert (=> b!1200561 (= e!770570 call!83542)))

(declare-fun b!1200562 () Bool)

(assert (=> b!1200562 (= e!770571 until!31)))

(declare-fun b!1200563 () Bool)

(assert (=> b!1200563 (= e!770573 e!770570)))

(declare-fun c!200017 () Bool)

(assert (=> b!1200563 (= c!200017 (<= until!31 call!83541))))

(declare-fun bm!83536 () Bool)

(assert (=> bm!83536 (= call!83541 (size!9575 lt!410857))))

(declare-fun bm!83537 () Bool)

(assert (=> bm!83537 (= call!83543 (slice!477 (ite c!200019 lt!410859 lt!410857) (ite c!200019 (- from!553 call!83541) from!553) (ite c!200019 (- until!31 call!83541) e!770571)))))

(declare-fun bm!83538 () Bool)

(declare-fun c!200018 () Bool)

(assert (=> bm!83538 (= c!200018 c!200017)))

(assert (=> bm!83538 (= call!83542 call!83543)))

(assert (= (and d!343262 res!541305) b!1200557))

(assert (= (and d!343262 c!200019) b!1200559))

(assert (= (and d!343262 (not c!200019)) b!1200563))

(assert (= (and b!1200563 c!200017) b!1200561))

(assert (= (and b!1200563 (not c!200017)) b!1200558))

(assert (= (or b!1200561 b!1200558) bm!83538))

(assert (= (and bm!83538 c!200018) b!1200562))

(assert (= (and bm!83538 (not c!200018)) b!1200560))

(assert (= (or b!1200559 b!1200558 b!1200560 b!1200563) bm!83536))

(assert (= (or b!1200559 bm!83538) bm!83537))

(declare-fun m!1376049 () Bool)

(assert (=> bm!83537 m!1376049))

(assert (=> b!1200557 m!1375963))

(declare-fun m!1376051 () Bool)

(assert (=> b!1200557 m!1376051))

(assert (=> d!343262 m!1375971))

(assert (=> d!343262 m!1375971))

(assert (=> d!343262 m!1375973))

(assert (=> d!343262 m!1375963))

(declare-fun m!1376053 () Bool)

(assert (=> d!343262 m!1376053))

(assert (=> bm!83536 m!1375963))

(declare-fun m!1376059 () Bool)

(assert (=> b!1200558 m!1376059))

(assert (=> b!1200558 m!1376059))

(declare-fun m!1376061 () Bool)

(assert (=> b!1200558 m!1376061))

(assert (=> b!1200475 d!343262))

(declare-fun b!1200572 () Bool)

(declare-fun e!770579 () List!12069)

(assert (=> b!1200572 (= e!770579 (list!4490 (xs!6685 (right!10845 t!4115))))))

(declare-fun b!1200573 () Bool)

(assert (=> b!1200573 (= e!770579 (++!3084 (list!4489 (left!10515 (right!10845 t!4115))) (list!4489 (right!10845 (right!10845 t!4115)))))))

(declare-fun b!1200570 () Bool)

(declare-fun e!770578 () List!12069)

(assert (=> b!1200570 (= e!770578 Nil!12045)))

(declare-fun b!1200571 () Bool)

(assert (=> b!1200571 (= e!770578 e!770579)))

(declare-fun c!200023 () Bool)

(assert (=> b!1200571 (= c!200023 ((_ is Leaf!6092) (right!10845 t!4115)))))

(declare-fun d!343274 () Bool)

(declare-fun c!200022 () Bool)

(assert (=> d!343274 (= c!200022 ((_ is Empty!3978) (right!10845 t!4115)))))

(assert (=> d!343274 (= (list!4489 (right!10845 t!4115)) e!770578)))

(assert (= (and d!343274 c!200022) b!1200570))

(assert (= (and d!343274 (not c!200022)) b!1200571))

(assert (= (and b!1200571 c!200023) b!1200572))

(assert (= (and b!1200571 (not c!200023)) b!1200573))

(declare-fun m!1376067 () Bool)

(assert (=> b!1200572 m!1376067))

(declare-fun m!1376069 () Bool)

(assert (=> b!1200573 m!1376069))

(declare-fun m!1376071 () Bool)

(assert (=> b!1200573 m!1376071))

(assert (=> b!1200573 m!1376069))

(assert (=> b!1200573 m!1376071))

(declare-fun m!1376073 () Bool)

(assert (=> b!1200573 m!1376073))

(assert (=> b!1200475 d!343274))

(declare-fun e!770592 () Bool)

(declare-fun b!1200601 () Bool)

(declare-fun lt!410884 () List!12069)

(assert (=> b!1200601 (= e!770592 (or (not (= lt!410859 Nil!12045)) (= lt!410884 lt!410857)))))

(declare-fun d!343278 () Bool)

(assert (=> d!343278 e!770592))

(declare-fun res!541312 () Bool)

(assert (=> d!343278 (=> (not res!541312) (not e!770592))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1692 (List!12069) (InoxSet T!21796))

(assert (=> d!343278 (= res!541312 (= (content!1692 lt!410884) ((_ map or) (content!1692 lt!410857) (content!1692 lt!410859))))))

(declare-fun e!770593 () List!12069)

(assert (=> d!343278 (= lt!410884 e!770593)))

(declare-fun c!200034 () Bool)

(assert (=> d!343278 (= c!200034 ((_ is Nil!12045) lt!410857))))

(assert (=> d!343278 (= (++!3084 lt!410857 lt!410859) lt!410884)))

(declare-fun b!1200599 () Bool)

(assert (=> b!1200599 (= e!770593 (Cons!12045 (h!17446 lt!410857) (++!3084 (t!112445 lt!410857) lt!410859)))))

(declare-fun b!1200598 () Bool)

(assert (=> b!1200598 (= e!770593 lt!410859)))

(declare-fun b!1200600 () Bool)

(declare-fun res!541313 () Bool)

(assert (=> b!1200600 (=> (not res!541313) (not e!770592))))

(assert (=> b!1200600 (= res!541313 (= (size!9575 lt!410884) (+ (size!9575 lt!410857) (size!9575 lt!410859))))))

(assert (= (and d!343278 c!200034) b!1200598))

(assert (= (and d!343278 (not c!200034)) b!1200599))

(assert (= (and d!343278 res!541312) b!1200600))

(assert (= (and b!1200600 res!541313) b!1200601))

(declare-fun m!1376093 () Bool)

(assert (=> d!343278 m!1376093))

(declare-fun m!1376095 () Bool)

(assert (=> d!343278 m!1376095))

(declare-fun m!1376097 () Bool)

(assert (=> d!343278 m!1376097))

(declare-fun m!1376099 () Bool)

(assert (=> b!1200599 m!1376099))

(declare-fun m!1376101 () Bool)

(assert (=> b!1200600 m!1376101))

(assert (=> b!1200600 m!1375963))

(assert (=> b!1200600 m!1376051))

(assert (=> b!1200475 d!343278))

(declare-fun b!1200624 () Bool)

(declare-fun e!770607 () Int)

(assert (=> b!1200624 (= e!770607 0)))

(declare-fun d!343284 () Bool)

(declare-fun lt!410889 () Int)

(assert (=> d!343284 (>= lt!410889 0)))

(declare-fun e!770606 () Int)

(assert (=> d!343284 (= lt!410889 e!770606)))

(declare-fun c!200046 () Bool)

(assert (=> d!343284 (= c!200046 ((_ is Node!3978) (left!10515 t!4115)))))

(assert (=> d!343284 (= (ConcPrimitiveSize!8 (left!10515 t!4115)) lt!410889)))

(declare-fun b!1200625 () Bool)

(declare-fun call!83556 () Int)

(declare-fun IArrayPrimitiveSize!8 (IArray!7961) Int)

(assert (=> b!1200625 (= e!770607 (+ 1 (IArrayPrimitiveSize!8 (xs!6685 (left!10515 t!4115))) call!83556))))

(declare-fun b!1200626 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!1200626 (= e!770606 (+ 1 (ConcPrimitiveSize!8 (left!10515 (left!10515 t!4115))) (ConcPrimitiveSize!8 (right!10845 (left!10515 t!4115))) (BigIntAbs!0 (csize!8186 (left!10515 t!4115))) call!83556))))

(declare-fun bm!83551 () Bool)

(assert (=> bm!83551 (= call!83556 (BigIntAbs!0 (ite c!200046 (cheight!4189 (left!10515 t!4115)) (csize!8187 (left!10515 t!4115)))))))

(declare-fun b!1200627 () Bool)

(assert (=> b!1200627 (= e!770606 e!770607)))

(declare-fun c!200045 () Bool)

(assert (=> b!1200627 (= c!200045 ((_ is Leaf!6092) (left!10515 t!4115)))))

(assert (= (and d!343284 c!200046) b!1200626))

(assert (= (and d!343284 (not c!200046)) b!1200627))

(assert (= (and b!1200627 c!200045) b!1200625))

(assert (= (and b!1200627 (not c!200045)) b!1200624))

(assert (= (or b!1200626 b!1200625) bm!83551))

(declare-fun m!1376103 () Bool)

(assert (=> b!1200625 m!1376103))

(declare-fun m!1376105 () Bool)

(assert (=> b!1200626 m!1376105))

(declare-fun m!1376107 () Bool)

(assert (=> b!1200626 m!1376107))

(declare-fun m!1376109 () Bool)

(assert (=> b!1200626 m!1376109))

(declare-fun m!1376111 () Bool)

(assert (=> bm!83551 m!1376111))

(assert (=> b!1200470 d!343284))

(declare-fun b!1200628 () Bool)

(declare-fun e!770609 () Int)

(assert (=> b!1200628 (= e!770609 0)))

(declare-fun d!343286 () Bool)

(declare-fun lt!410890 () Int)

(assert (=> d!343286 (>= lt!410890 0)))

(declare-fun e!770608 () Int)

(assert (=> d!343286 (= lt!410890 e!770608)))

(declare-fun c!200048 () Bool)

(assert (=> d!343286 (= c!200048 ((_ is Node!3978) t!4115))))

(assert (=> d!343286 (= (ConcPrimitiveSize!8 t!4115) lt!410890)))

(declare-fun b!1200629 () Bool)

(declare-fun call!83557 () Int)

(assert (=> b!1200629 (= e!770609 (+ 1 (IArrayPrimitiveSize!8 (xs!6685 t!4115)) call!83557))))

(declare-fun b!1200630 () Bool)

(assert (=> b!1200630 (= e!770608 (+ 1 (ConcPrimitiveSize!8 (left!10515 t!4115)) (ConcPrimitiveSize!8 (right!10845 t!4115)) (BigIntAbs!0 (csize!8186 t!4115)) call!83557))))

(declare-fun bm!83552 () Bool)

(assert (=> bm!83552 (= call!83557 (BigIntAbs!0 (ite c!200048 (cheight!4189 t!4115) (csize!8187 t!4115))))))

(declare-fun b!1200631 () Bool)

(assert (=> b!1200631 (= e!770608 e!770609)))

(declare-fun c!200047 () Bool)

(assert (=> b!1200631 (= c!200047 ((_ is Leaf!6092) t!4115))))

(assert (= (and d!343286 c!200048) b!1200630))

(assert (= (and d!343286 (not c!200048)) b!1200631))

(assert (= (and b!1200631 c!200047) b!1200629))

(assert (= (and b!1200631 (not c!200047)) b!1200628))

(assert (= (or b!1200630 b!1200629) bm!83552))

(declare-fun m!1376113 () Bool)

(assert (=> b!1200629 m!1376113))

(assert (=> b!1200630 m!1375981))

(declare-fun m!1376115 () Bool)

(assert (=> b!1200630 m!1376115))

(declare-fun m!1376117 () Bool)

(assert (=> b!1200630 m!1376117))

(declare-fun m!1376119 () Bool)

(assert (=> bm!83552 m!1376119))

(assert (=> b!1200470 d!343286))

(declare-fun d!343288 () Bool)

(assert (=> d!343288 (= (slice!477 lt!410857 from!553 (ite c!199992 until!31 lt!410861)) (take!131 (drop!603 lt!410857 from!553) (- (ite c!199992 until!31 lt!410861) from!553)))))

(declare-fun bs!288269 () Bool)

(assert (= bs!288269 d!343288))

(declare-fun m!1376121 () Bool)

(assert (=> bs!288269 m!1376121))

(assert (=> bs!288269 m!1376121))

(declare-fun m!1376123 () Bool)

(assert (=> bs!288269 m!1376123))

(assert (=> bm!83528 d!343288))

(declare-fun d!343290 () Bool)

(assert (=> d!343290 (= (inv!16127 (xs!6685 t!4115)) (<= (size!9575 (innerList!4038 (xs!6685 t!4115))) 2147483647))))

(declare-fun bs!288270 () Bool)

(assert (= bs!288270 d!343290))

(declare-fun m!1376125 () Bool)

(assert (=> bs!288270 m!1376125))

(assert (=> b!1200471 d!343290))

(declare-fun e!770614 () Bool)

(declare-fun lt!410892 () List!12069)

(declare-fun b!1200642 () Bool)

(assert (=> b!1200642 (= e!770614 (or (not (= call!83533 Nil!12045)) (= lt!410892 call!83534)))))

(declare-fun d!343292 () Bool)

(assert (=> d!343292 e!770614))

(declare-fun res!541317 () Bool)

(assert (=> d!343292 (=> (not res!541317) (not e!770614))))

(assert (=> d!343292 (= res!541317 (= (content!1692 lt!410892) ((_ map or) (content!1692 call!83534) (content!1692 call!83533))))))

(declare-fun e!770615 () List!12069)

(assert (=> d!343292 (= lt!410892 e!770615)))

(declare-fun c!200052 () Bool)

(assert (=> d!343292 (= c!200052 ((_ is Nil!12045) call!83534))))

(assert (=> d!343292 (= (++!3084 call!83534 call!83533) lt!410892)))

(declare-fun b!1200640 () Bool)

(assert (=> b!1200640 (= e!770615 (Cons!12045 (h!17446 call!83534) (++!3084 (t!112445 call!83534) call!83533)))))

(declare-fun b!1200639 () Bool)

(assert (=> b!1200639 (= e!770615 call!83533)))

(declare-fun b!1200641 () Bool)

(declare-fun res!541318 () Bool)

(assert (=> b!1200641 (=> (not res!541318) (not e!770614))))

(assert (=> b!1200641 (= res!541318 (= (size!9575 lt!410892) (+ (size!9575 call!83534) (size!9575 call!83533))))))

(assert (= (and d!343292 c!200052) b!1200639))

(assert (= (and d!343292 (not c!200052)) b!1200640))

(assert (= (and d!343292 res!541317) b!1200641))

(assert (= (and b!1200641 res!541318) b!1200642))

(declare-fun m!1376127 () Bool)

(assert (=> d!343292 m!1376127))

(declare-fun m!1376129 () Bool)

(assert (=> d!343292 m!1376129))

(declare-fun m!1376131 () Bool)

(assert (=> d!343292 m!1376131))

(declare-fun m!1376133 () Bool)

(assert (=> b!1200640 m!1376133))

(declare-fun m!1376137 () Bool)

(assert (=> b!1200641 m!1376137))

(declare-fun m!1376139 () Bool)

(assert (=> b!1200641 m!1376139))

(declare-fun m!1376141 () Bool)

(assert (=> b!1200641 m!1376141))

(assert (=> b!1200476 d!343292))

(declare-fun d!343294 () Bool)

(declare-fun lt!410893 () Int)

(assert (=> d!343294 (= lt!410893 (size!9575 (list!4489 t!4115)))))

(assert (=> d!343294 (= lt!410893 (ite ((_ is Empty!3978) t!4115) 0 (ite ((_ is Leaf!6092) t!4115) (csize!8187 t!4115) (csize!8186 t!4115))))))

(assert (=> d!343294 (= (size!9574 t!4115) lt!410893)))

(declare-fun bs!288271 () Bool)

(assert (= bs!288271 d!343294))

(declare-fun m!1376149 () Bool)

(assert (=> bs!288271 m!1376149))

(assert (=> bs!288271 m!1376149))

(declare-fun m!1376153 () Bool)

(assert (=> bs!288271 m!1376153))

(assert (=> b!1200468 d!343294))

(declare-fun d!343298 () Bool)

(assert (=> d!343298 (= (slice!477 lt!410859 (ite c!199991 (- from!553 lt!410861) 0) (- until!31 lt!410861)) (take!131 (drop!603 lt!410859 (ite c!199991 (- from!553 lt!410861) 0)) (- (- until!31 lt!410861) (ite c!199991 (- from!553 lt!410861) 0))))))

(declare-fun bs!288273 () Bool)

(assert (= bs!288273 d!343298))

(declare-fun m!1376155 () Bool)

(assert (=> bs!288273 m!1376155))

(assert (=> bs!288273 m!1376155))

(declare-fun m!1376159 () Bool)

(assert (=> bs!288273 m!1376159))

(assert (=> bm!83529 d!343298))

(declare-fun b!1200694 () Bool)

(declare-fun res!541337 () Bool)

(declare-fun e!770641 () Bool)

(assert (=> b!1200694 (=> (not res!541337) (not e!770641))))

(declare-fun height!572 (Conc!3978) Int)

(assert (=> b!1200694 (= res!541337 (<= (- (height!572 (left!10515 t!4115)) (height!572 (right!10845 t!4115))) 1))))

(declare-fun b!1200695 () Bool)

(declare-fun res!541336 () Bool)

(assert (=> b!1200695 (=> (not res!541336) (not e!770641))))

(assert (=> b!1200695 (= res!541336 (isBalanced!1163 (right!10845 t!4115)))))

(declare-fun b!1200696 () Bool)

(declare-fun res!541334 () Bool)

(assert (=> b!1200696 (=> (not res!541334) (not e!770641))))

(assert (=> b!1200696 (= res!541334 (isBalanced!1163 (left!10515 t!4115)))))

(declare-fun b!1200697 () Bool)

(declare-fun e!770640 () Bool)

(assert (=> b!1200697 (= e!770640 e!770641)))

(declare-fun res!541335 () Bool)

(assert (=> b!1200697 (=> (not res!541335) (not e!770641))))

(assert (=> b!1200697 (= res!541335 (<= (- 1) (- (height!572 (left!10515 t!4115)) (height!572 (right!10845 t!4115)))))))

(declare-fun b!1200698 () Bool)

(declare-fun isEmpty!7265 (Conc!3978) Bool)

(assert (=> b!1200698 (= e!770641 (not (isEmpty!7265 (right!10845 t!4115))))))

(declare-fun d!343302 () Bool)

(declare-fun res!541333 () Bool)

(assert (=> d!343302 (=> res!541333 e!770640)))

(assert (=> d!343302 (= res!541333 (not ((_ is Node!3978) t!4115)))))

(assert (=> d!343302 (= (isBalanced!1163 t!4115) e!770640)))

(declare-fun b!1200699 () Bool)

(declare-fun res!541338 () Bool)

(assert (=> b!1200699 (=> (not res!541338) (not e!770641))))

(assert (=> b!1200699 (= res!541338 (not (isEmpty!7265 (left!10515 t!4115))))))

(assert (= (and d!343302 (not res!541333)) b!1200697))

(assert (= (and b!1200697 res!541335) b!1200694))

(assert (= (and b!1200694 res!541337) b!1200696))

(assert (= (and b!1200696 res!541334) b!1200695))

(assert (= (and b!1200695 res!541336) b!1200699))

(assert (= (and b!1200699 res!541338) b!1200698))

(declare-fun m!1376193 () Bool)

(assert (=> b!1200698 m!1376193))

(declare-fun m!1376195 () Bool)

(assert (=> b!1200695 m!1376195))

(declare-fun m!1376197 () Bool)

(assert (=> b!1200696 m!1376197))

(declare-fun m!1376199 () Bool)

(assert (=> b!1200699 m!1376199))

(declare-fun m!1376201 () Bool)

(assert (=> b!1200697 m!1376201))

(declare-fun m!1376203 () Bool)

(assert (=> b!1200697 m!1376203))

(assert (=> b!1200694 m!1376201))

(assert (=> b!1200694 m!1376203))

(assert (=> b!1200472 d!343302))

(declare-fun d!343312 () Bool)

(declare-fun c!200065 () Bool)

(assert (=> d!343312 (= c!200065 ((_ is Node!3978) (left!10515 t!4115)))))

(declare-fun e!770644 () Bool)

(assert (=> d!343312 (= (inv!16126 (left!10515 t!4115)) e!770644)))

(declare-fun b!1200703 () Bool)

(assert (=> b!1200703 (= e!770644 (inv!16130 (left!10515 t!4115)))))

(declare-fun b!1200704 () Bool)

(declare-fun e!770645 () Bool)

(assert (=> b!1200704 (= e!770644 e!770645)))

(declare-fun res!541339 () Bool)

(assert (=> b!1200704 (= res!541339 (not ((_ is Leaf!6092) (left!10515 t!4115))))))

(assert (=> b!1200704 (=> res!541339 e!770645)))

(declare-fun b!1200705 () Bool)

(assert (=> b!1200705 (= e!770645 (inv!16131 (left!10515 t!4115)))))

(assert (= (and d!343312 c!200065) b!1200703))

(assert (= (and d!343312 (not c!200065)) b!1200704))

(assert (= (and b!1200704 (not res!541339)) b!1200705))

(declare-fun m!1376211 () Bool)

(assert (=> b!1200703 m!1376211))

(declare-fun m!1376215 () Bool)

(assert (=> b!1200705 m!1376215))

(assert (=> b!1200473 d!343312))

(declare-fun d!343314 () Bool)

(declare-fun c!200066 () Bool)

(assert (=> d!343314 (= c!200066 ((_ is Node!3978) (right!10845 t!4115)))))

(declare-fun e!770648 () Bool)

(assert (=> d!343314 (= (inv!16126 (right!10845 t!4115)) e!770648)))

(declare-fun b!1200709 () Bool)

(assert (=> b!1200709 (= e!770648 (inv!16130 (right!10845 t!4115)))))

(declare-fun b!1200710 () Bool)

(declare-fun e!770649 () Bool)

(assert (=> b!1200710 (= e!770648 e!770649)))

(declare-fun res!541340 () Bool)

(assert (=> b!1200710 (= res!541340 (not ((_ is Leaf!6092) (right!10845 t!4115))))))

(assert (=> b!1200710 (=> res!541340 e!770649)))

(declare-fun b!1200711 () Bool)

(assert (=> b!1200711 (= e!770649 (inv!16131 (right!10845 t!4115)))))

(assert (= (and d!343314 c!200066) b!1200709))

(assert (= (and d!343314 (not c!200066)) b!1200710))

(assert (= (and b!1200710 (not res!541340)) b!1200711))

(declare-fun m!1376221 () Bool)

(assert (=> b!1200709 m!1376221))

(declare-fun m!1376223 () Bool)

(assert (=> b!1200711 m!1376223))

(assert (=> b!1200473 d!343314))

(declare-fun b!1200716 () Bool)

(declare-fun e!770652 () Bool)

(declare-fun tp_is_empty!5983 () Bool)

(declare-fun tp!341277 () Bool)

(assert (=> b!1200716 (= e!770652 (and tp_is_empty!5983 tp!341277))))

(assert (=> b!1200465 (= tp!341258 e!770652)))

(assert (= (and b!1200465 ((_ is Cons!12045) (innerList!4038 (xs!6685 t!4115)))) b!1200716))

(declare-fun e!770657 () Bool)

(declare-fun b!1200725 () Bool)

(declare-fun tp!341286 () Bool)

(declare-fun tp!341284 () Bool)

(assert (=> b!1200725 (= e!770657 (and (inv!16126 (left!10515 (left!10515 t!4115))) tp!341286 (inv!16126 (right!10845 (left!10515 t!4115))) tp!341284))))

(declare-fun b!1200727 () Bool)

(declare-fun e!770658 () Bool)

(declare-fun tp!341285 () Bool)

(assert (=> b!1200727 (= e!770658 tp!341285)))

(declare-fun b!1200726 () Bool)

(assert (=> b!1200726 (= e!770657 (and (inv!16127 (xs!6685 (left!10515 t!4115))) e!770658))))

(assert (=> b!1200473 (= tp!341257 (and (inv!16126 (left!10515 t!4115)) e!770657))))

(assert (= (and b!1200473 ((_ is Node!3978) (left!10515 t!4115))) b!1200725))

(assert (= b!1200726 b!1200727))

(assert (= (and b!1200473 ((_ is Leaf!6092) (left!10515 t!4115))) b!1200726))

(declare-fun m!1376225 () Bool)

(assert (=> b!1200725 m!1376225))

(declare-fun m!1376227 () Bool)

(assert (=> b!1200725 m!1376227))

(declare-fun m!1376229 () Bool)

(assert (=> b!1200726 m!1376229))

(assert (=> b!1200473 m!1375957))

(declare-fun b!1200728 () Bool)

(declare-fun e!770659 () Bool)

(declare-fun tp!341287 () Bool)

(declare-fun tp!341289 () Bool)

(assert (=> b!1200728 (= e!770659 (and (inv!16126 (left!10515 (right!10845 t!4115))) tp!341289 (inv!16126 (right!10845 (right!10845 t!4115))) tp!341287))))

(declare-fun b!1200730 () Bool)

(declare-fun e!770660 () Bool)

(declare-fun tp!341288 () Bool)

(assert (=> b!1200730 (= e!770660 tp!341288)))

(declare-fun b!1200729 () Bool)

(assert (=> b!1200729 (= e!770659 (and (inv!16127 (xs!6685 (right!10845 t!4115))) e!770660))))

(assert (=> b!1200473 (= tp!341259 (and (inv!16126 (right!10845 t!4115)) e!770659))))

(assert (= (and b!1200473 ((_ is Node!3978) (right!10845 t!4115))) b!1200728))

(assert (= b!1200729 b!1200730))

(assert (= (and b!1200473 ((_ is Leaf!6092) (right!10845 t!4115))) b!1200729))

(declare-fun m!1376231 () Bool)

(assert (=> b!1200728 m!1376231))

(declare-fun m!1376233 () Bool)

(assert (=> b!1200728 m!1376233))

(declare-fun m!1376235 () Bool)

(assert (=> b!1200729 m!1376235))

(assert (=> b!1200473 m!1375959))

(check-sat (not b!1200626) (not b!1200727) (not b!1200485) (not bm!83551) (not d!343290) (not b!1200629) (not d!343298) (not b!1200694) (not b!1200572) (not b!1200599) (not d!343288) (not b!1200512) (not b!1200729) (not b!1200703) (not b!1200491) (not b!1200711) (not b!1200725) (not d!343258) (not d!343246) tp_is_empty!5983 (not b!1200630) (not b!1200695) (not b!1200726) (not b!1200600) (not b!1200625) (not b!1200705) (not d!343294) (not b!1200709) (not d!343292) (not d!343278) (not b!1200697) (not b!1200716) (not b!1200640) (not b!1200558) (not b!1200483) (not b!1200557) (not bm!83552) (not b!1200511) (not b!1200698) (not b!1200573) (not b!1200730) (not b!1200641) (not bm!83537) (not bm!83536) (not b!1200473) (not b!1200728) (not d!343262) (not b!1200699) (not b!1200696))
(check-sat)
(get-model)

(declare-fun b!1200734 () Bool)

(declare-fun e!770661 () Bool)

(declare-fun lt!410899 () List!12069)

(assert (=> b!1200734 (= e!770661 (or (not (= (list!4489 (right!10845 (left!10515 t!4115))) Nil!12045)) (= lt!410899 (list!4489 (left!10515 (left!10515 t!4115))))))))

(declare-fun d!343316 () Bool)

(assert (=> d!343316 e!770661))

(declare-fun res!541341 () Bool)

(assert (=> d!343316 (=> (not res!541341) (not e!770661))))

(assert (=> d!343316 (= res!541341 (= (content!1692 lt!410899) ((_ map or) (content!1692 (list!4489 (left!10515 (left!10515 t!4115)))) (content!1692 (list!4489 (right!10845 (left!10515 t!4115)))))))))

(declare-fun e!770662 () List!12069)

(assert (=> d!343316 (= lt!410899 e!770662)))

(declare-fun c!200067 () Bool)

(assert (=> d!343316 (= c!200067 ((_ is Nil!12045) (list!4489 (left!10515 (left!10515 t!4115)))))))

(assert (=> d!343316 (= (++!3084 (list!4489 (left!10515 (left!10515 t!4115))) (list!4489 (right!10845 (left!10515 t!4115)))) lt!410899)))

(declare-fun b!1200732 () Bool)

(assert (=> b!1200732 (= e!770662 (Cons!12045 (h!17446 (list!4489 (left!10515 (left!10515 t!4115)))) (++!3084 (t!112445 (list!4489 (left!10515 (left!10515 t!4115)))) (list!4489 (right!10845 (left!10515 t!4115))))))))

(declare-fun b!1200731 () Bool)

(assert (=> b!1200731 (= e!770662 (list!4489 (right!10845 (left!10515 t!4115))))))

(declare-fun b!1200733 () Bool)

(declare-fun res!541342 () Bool)

(assert (=> b!1200733 (=> (not res!541342) (not e!770661))))

(assert (=> b!1200733 (= res!541342 (= (size!9575 lt!410899) (+ (size!9575 (list!4489 (left!10515 (left!10515 t!4115)))) (size!9575 (list!4489 (right!10845 (left!10515 t!4115)))))))))

(assert (= (and d!343316 c!200067) b!1200731))

(assert (= (and d!343316 (not c!200067)) b!1200732))

(assert (= (and d!343316 res!541341) b!1200733))

(assert (= (and b!1200733 res!541342) b!1200734))

(declare-fun m!1376237 () Bool)

(assert (=> d!343316 m!1376237))

(assert (=> d!343316 m!1376001))

(declare-fun m!1376239 () Bool)

(assert (=> d!343316 m!1376239))

(assert (=> d!343316 m!1376003))

(declare-fun m!1376241 () Bool)

(assert (=> d!343316 m!1376241))

(assert (=> b!1200732 m!1376003))

(declare-fun m!1376243 () Bool)

(assert (=> b!1200732 m!1376243))

(declare-fun m!1376245 () Bool)

(assert (=> b!1200733 m!1376245))

(assert (=> b!1200733 m!1376001))

(declare-fun m!1376247 () Bool)

(assert (=> b!1200733 m!1376247))

(assert (=> b!1200733 m!1376003))

(declare-fun m!1376249 () Bool)

(assert (=> b!1200733 m!1376249))

(assert (=> b!1200512 d!343316))

(declare-fun b!1200737 () Bool)

(declare-fun e!770664 () List!12069)

(assert (=> b!1200737 (= e!770664 (list!4490 (xs!6685 (left!10515 (left!10515 t!4115)))))))

(declare-fun b!1200738 () Bool)

(assert (=> b!1200738 (= e!770664 (++!3084 (list!4489 (left!10515 (left!10515 (left!10515 t!4115)))) (list!4489 (right!10845 (left!10515 (left!10515 t!4115))))))))

(declare-fun b!1200735 () Bool)

(declare-fun e!770663 () List!12069)

(assert (=> b!1200735 (= e!770663 Nil!12045)))

(declare-fun b!1200736 () Bool)

(assert (=> b!1200736 (= e!770663 e!770664)))

(declare-fun c!200069 () Bool)

(assert (=> b!1200736 (= c!200069 ((_ is Leaf!6092) (left!10515 (left!10515 t!4115))))))

(declare-fun d!343318 () Bool)

(declare-fun c!200068 () Bool)

(assert (=> d!343318 (= c!200068 ((_ is Empty!3978) (left!10515 (left!10515 t!4115))))))

(assert (=> d!343318 (= (list!4489 (left!10515 (left!10515 t!4115))) e!770663)))

(assert (= (and d!343318 c!200068) b!1200735))

(assert (= (and d!343318 (not c!200068)) b!1200736))

(assert (= (and b!1200736 c!200069) b!1200737))

(assert (= (and b!1200736 (not c!200069)) b!1200738))

(declare-fun m!1376251 () Bool)

(assert (=> b!1200737 m!1376251))

(declare-fun m!1376253 () Bool)

(assert (=> b!1200738 m!1376253))

(declare-fun m!1376255 () Bool)

(assert (=> b!1200738 m!1376255))

(assert (=> b!1200738 m!1376253))

(assert (=> b!1200738 m!1376255))

(declare-fun m!1376257 () Bool)

(assert (=> b!1200738 m!1376257))

(assert (=> b!1200512 d!343318))

(declare-fun b!1200741 () Bool)

(declare-fun e!770666 () List!12069)

(assert (=> b!1200741 (= e!770666 (list!4490 (xs!6685 (right!10845 (left!10515 t!4115)))))))

(declare-fun b!1200742 () Bool)

(assert (=> b!1200742 (= e!770666 (++!3084 (list!4489 (left!10515 (right!10845 (left!10515 t!4115)))) (list!4489 (right!10845 (right!10845 (left!10515 t!4115))))))))

(declare-fun b!1200739 () Bool)

(declare-fun e!770665 () List!12069)

(assert (=> b!1200739 (= e!770665 Nil!12045)))

(declare-fun b!1200740 () Bool)

(assert (=> b!1200740 (= e!770665 e!770666)))

(declare-fun c!200071 () Bool)

(assert (=> b!1200740 (= c!200071 ((_ is Leaf!6092) (right!10845 (left!10515 t!4115))))))

(declare-fun d!343320 () Bool)

(declare-fun c!200070 () Bool)

(assert (=> d!343320 (= c!200070 ((_ is Empty!3978) (right!10845 (left!10515 t!4115))))))

(assert (=> d!343320 (= (list!4489 (right!10845 (left!10515 t!4115))) e!770665)))

(assert (= (and d!343320 c!200070) b!1200739))

(assert (= (and d!343320 (not c!200070)) b!1200740))

(assert (= (and b!1200740 c!200071) b!1200741))

(assert (= (and b!1200740 (not c!200071)) b!1200742))

(declare-fun m!1376259 () Bool)

(assert (=> b!1200741 m!1376259))

(declare-fun m!1376261 () Bool)

(assert (=> b!1200742 m!1376261))

(declare-fun m!1376263 () Bool)

(assert (=> b!1200742 m!1376263))

(assert (=> b!1200742 m!1376261))

(assert (=> b!1200742 m!1376263))

(declare-fun m!1376265 () Bool)

(assert (=> b!1200742 m!1376265))

(assert (=> b!1200512 d!343320))

(declare-fun d!343322 () Bool)

(declare-fun lt!410902 () Int)

(assert (=> d!343322 (>= lt!410902 0)))

(declare-fun ListPrimitiveSize!79 (List!12069) Int)

(assert (=> d!343322 (= lt!410902 (+ 1 (ListPrimitiveSize!79 (innerList!4038 (xs!6685 t!4115)))))))

(assert (=> d!343322 (= (IArrayPrimitiveSize!8 (xs!6685 t!4115)) lt!410902)))

(declare-fun bs!288275 () Bool)

(assert (= bs!288275 d!343322))

(declare-fun m!1376267 () Bool)

(assert (=> bs!288275 m!1376267))

(assert (=> b!1200629 d!343322))

(declare-fun d!343324 () Bool)

(assert (=> d!343324 (= (list!4490 (xs!6685 (left!10515 t!4115))) (innerList!4038 (xs!6685 (left!10515 t!4115))))))

(assert (=> b!1200511 d!343324))

(declare-fun b!1200743 () Bool)

(declare-fun e!770668 () Int)

(assert (=> b!1200743 (= e!770668 0)))

(declare-fun d!343326 () Bool)

(declare-fun lt!410903 () Int)

(assert (=> d!343326 (>= lt!410903 0)))

(declare-fun e!770667 () Int)

(assert (=> d!343326 (= lt!410903 e!770667)))

(declare-fun c!200073 () Bool)

(assert (=> d!343326 (= c!200073 ((_ is Node!3978) (left!10515 (left!10515 t!4115))))))

(assert (=> d!343326 (= (ConcPrimitiveSize!8 (left!10515 (left!10515 t!4115))) lt!410903)))

(declare-fun b!1200744 () Bool)

(declare-fun call!83561 () Int)

(assert (=> b!1200744 (= e!770668 (+ 1 (IArrayPrimitiveSize!8 (xs!6685 (left!10515 (left!10515 t!4115)))) call!83561))))

(declare-fun b!1200745 () Bool)

(assert (=> b!1200745 (= e!770667 (+ 1 (ConcPrimitiveSize!8 (left!10515 (left!10515 (left!10515 t!4115)))) (ConcPrimitiveSize!8 (right!10845 (left!10515 (left!10515 t!4115)))) (BigIntAbs!0 (csize!8186 (left!10515 (left!10515 t!4115)))) call!83561))))

(declare-fun bm!83556 () Bool)

(assert (=> bm!83556 (= call!83561 (BigIntAbs!0 (ite c!200073 (cheight!4189 (left!10515 (left!10515 t!4115))) (csize!8187 (left!10515 (left!10515 t!4115))))))))

(declare-fun b!1200746 () Bool)

(assert (=> b!1200746 (= e!770667 e!770668)))

(declare-fun c!200072 () Bool)

(assert (=> b!1200746 (= c!200072 ((_ is Leaf!6092) (left!10515 (left!10515 t!4115))))))

(assert (= (and d!343326 c!200073) b!1200745))

(assert (= (and d!343326 (not c!200073)) b!1200746))

(assert (= (and b!1200746 c!200072) b!1200744))

(assert (= (and b!1200746 (not c!200072)) b!1200743))

(assert (= (or b!1200745 b!1200744) bm!83556))

(declare-fun m!1376269 () Bool)

(assert (=> b!1200744 m!1376269))

(declare-fun m!1376271 () Bool)

(assert (=> b!1200745 m!1376271))

(declare-fun m!1376273 () Bool)

(assert (=> b!1200745 m!1376273))

(declare-fun m!1376275 () Bool)

(assert (=> b!1200745 m!1376275))

(declare-fun m!1376277 () Bool)

(assert (=> bm!83556 m!1376277))

(assert (=> b!1200626 d!343326))

(declare-fun b!1200747 () Bool)

(declare-fun e!770670 () Int)

(assert (=> b!1200747 (= e!770670 0)))

(declare-fun d!343328 () Bool)

(declare-fun lt!410904 () Int)

(assert (=> d!343328 (>= lt!410904 0)))

(declare-fun e!770669 () Int)

(assert (=> d!343328 (= lt!410904 e!770669)))

(declare-fun c!200075 () Bool)

(assert (=> d!343328 (= c!200075 ((_ is Node!3978) (right!10845 (left!10515 t!4115))))))

(assert (=> d!343328 (= (ConcPrimitiveSize!8 (right!10845 (left!10515 t!4115))) lt!410904)))

(declare-fun b!1200748 () Bool)

(declare-fun call!83562 () Int)

(assert (=> b!1200748 (= e!770670 (+ 1 (IArrayPrimitiveSize!8 (xs!6685 (right!10845 (left!10515 t!4115)))) call!83562))))

(declare-fun b!1200749 () Bool)

(assert (=> b!1200749 (= e!770669 (+ 1 (ConcPrimitiveSize!8 (left!10515 (right!10845 (left!10515 t!4115)))) (ConcPrimitiveSize!8 (right!10845 (right!10845 (left!10515 t!4115)))) (BigIntAbs!0 (csize!8186 (right!10845 (left!10515 t!4115)))) call!83562))))

(declare-fun bm!83557 () Bool)

(assert (=> bm!83557 (= call!83562 (BigIntAbs!0 (ite c!200075 (cheight!4189 (right!10845 (left!10515 t!4115))) (csize!8187 (right!10845 (left!10515 t!4115))))))))

(declare-fun b!1200750 () Bool)

(assert (=> b!1200750 (= e!770669 e!770670)))

(declare-fun c!200074 () Bool)

(assert (=> b!1200750 (= c!200074 ((_ is Leaf!6092) (right!10845 (left!10515 t!4115))))))

(assert (= (and d!343328 c!200075) b!1200749))

(assert (= (and d!343328 (not c!200075)) b!1200750))

(assert (= (and b!1200750 c!200074) b!1200748))

(assert (= (and b!1200750 (not c!200074)) b!1200747))

(assert (= (or b!1200749 b!1200748) bm!83557))

(declare-fun m!1376279 () Bool)

(assert (=> b!1200748 m!1376279))

(declare-fun m!1376281 () Bool)

(assert (=> b!1200749 m!1376281))

(declare-fun m!1376283 () Bool)

(assert (=> b!1200749 m!1376283))

(declare-fun m!1376285 () Bool)

(assert (=> b!1200749 m!1376285))

(declare-fun m!1376287 () Bool)

(assert (=> bm!83557 m!1376287))

(assert (=> b!1200626 d!343328))

(declare-fun d!343330 () Bool)

(assert (=> d!343330 (= (BigIntAbs!0 (csize!8186 (left!10515 t!4115))) (ite (>= (csize!8186 (left!10515 t!4115)) 0) (csize!8186 (left!10515 t!4115)) (- (csize!8186 (left!10515 t!4115)))))))

(assert (=> b!1200626 d!343330))

(assert (=> b!1200630 d!343284))

(declare-fun b!1200751 () Bool)

(declare-fun e!770672 () Int)

(assert (=> b!1200751 (= e!770672 0)))

(declare-fun d!343332 () Bool)

(declare-fun lt!410905 () Int)

(assert (=> d!343332 (>= lt!410905 0)))

(declare-fun e!770671 () Int)

(assert (=> d!343332 (= lt!410905 e!770671)))

(declare-fun c!200077 () Bool)

(assert (=> d!343332 (= c!200077 ((_ is Node!3978) (right!10845 t!4115)))))

(assert (=> d!343332 (= (ConcPrimitiveSize!8 (right!10845 t!4115)) lt!410905)))

(declare-fun b!1200752 () Bool)

(declare-fun call!83563 () Int)

(assert (=> b!1200752 (= e!770672 (+ 1 (IArrayPrimitiveSize!8 (xs!6685 (right!10845 t!4115))) call!83563))))

(declare-fun b!1200753 () Bool)

(assert (=> b!1200753 (= e!770671 (+ 1 (ConcPrimitiveSize!8 (left!10515 (right!10845 t!4115))) (ConcPrimitiveSize!8 (right!10845 (right!10845 t!4115))) (BigIntAbs!0 (csize!8186 (right!10845 t!4115))) call!83563))))

(declare-fun bm!83558 () Bool)

(assert (=> bm!83558 (= call!83563 (BigIntAbs!0 (ite c!200077 (cheight!4189 (right!10845 t!4115)) (csize!8187 (right!10845 t!4115)))))))

(declare-fun b!1200754 () Bool)

(assert (=> b!1200754 (= e!770671 e!770672)))

(declare-fun c!200076 () Bool)

(assert (=> b!1200754 (= c!200076 ((_ is Leaf!6092) (right!10845 t!4115)))))

(assert (= (and d!343332 c!200077) b!1200753))

(assert (= (and d!343332 (not c!200077)) b!1200754))

(assert (= (and b!1200754 c!200076) b!1200752))

(assert (= (and b!1200754 (not c!200076)) b!1200751))

(assert (= (or b!1200753 b!1200752) bm!83558))

(declare-fun m!1376289 () Bool)

(assert (=> b!1200752 m!1376289))

(declare-fun m!1376291 () Bool)

(assert (=> b!1200753 m!1376291))

(declare-fun m!1376293 () Bool)

(assert (=> b!1200753 m!1376293))

(declare-fun m!1376295 () Bool)

(assert (=> b!1200753 m!1376295))

(declare-fun m!1376297 () Bool)

(assert (=> bm!83558 m!1376297))

(assert (=> b!1200630 d!343332))

(declare-fun d!343334 () Bool)

(assert (=> d!343334 (= (BigIntAbs!0 (csize!8186 t!4115)) (ite (>= (csize!8186 t!4115) 0) (csize!8186 t!4115) (- (csize!8186 t!4115))))))

(assert (=> b!1200630 d!343334))

(declare-fun d!343336 () Bool)

(assert (=> d!343336 (= (BigIntAbs!0 (ite c!200046 (cheight!4189 (left!10515 t!4115)) (csize!8187 (left!10515 t!4115)))) (ite (>= (ite c!200046 (cheight!4189 (left!10515 t!4115)) (csize!8187 (left!10515 t!4115))) 0) (ite c!200046 (cheight!4189 (left!10515 t!4115)) (csize!8187 (left!10515 t!4115))) (- (ite c!200046 (cheight!4189 (left!10515 t!4115)) (csize!8187 (left!10515 t!4115))))))))

(assert (=> bm!83551 d!343336))

(declare-fun d!343338 () Bool)

(declare-fun res!541347 () Bool)

(declare-fun e!770675 () Bool)

(assert (=> d!343338 (=> (not res!541347) (not e!770675))))

(assert (=> d!343338 (= res!541347 (<= (size!9575 (list!4490 (xs!6685 t!4115))) 512))))

(assert (=> d!343338 (= (inv!16131 t!4115) e!770675)))

(declare-fun b!1200759 () Bool)

(declare-fun res!541348 () Bool)

(assert (=> b!1200759 (=> (not res!541348) (not e!770675))))

(assert (=> b!1200759 (= res!541348 (= (csize!8187 t!4115) (size!9575 (list!4490 (xs!6685 t!4115)))))))

(declare-fun b!1200760 () Bool)

(assert (=> b!1200760 (= e!770675 (and (> (csize!8187 t!4115) 0) (<= (csize!8187 t!4115) 512)))))

(assert (= (and d!343338 res!541347) b!1200759))

(assert (= (and b!1200759 res!541348) b!1200760))

(declare-fun m!1376299 () Bool)

(assert (=> d!343338 m!1376299))

(assert (=> d!343338 m!1376299))

(declare-fun m!1376301 () Bool)

(assert (=> d!343338 m!1376301))

(assert (=> b!1200759 m!1376299))

(assert (=> b!1200759 m!1376299))

(assert (=> b!1200759 m!1376301))

(assert (=> b!1200485 d!343338))

(declare-fun d!343340 () Bool)

(assert (=> d!343340 (= (BigIntAbs!0 (ite c!200048 (cheight!4189 t!4115) (csize!8187 t!4115))) (ite (>= (ite c!200048 (cheight!4189 t!4115) (csize!8187 t!4115)) 0) (ite c!200048 (cheight!4189 t!4115) (csize!8187 t!4115)) (- (ite c!200048 (cheight!4189 t!4115) (csize!8187 t!4115)))))))

(assert (=> bm!83552 d!343340))

(declare-fun d!343342 () Bool)

(declare-fun lt!410906 () Int)

(assert (=> d!343342 (>= lt!410906 0)))

(declare-fun e!770676 () Int)

(assert (=> d!343342 (= lt!410906 e!770676)))

(declare-fun c!200078 () Bool)

(assert (=> d!343342 (= c!200078 ((_ is Nil!12045) (t!112445 lt!410857)))))

(assert (=> d!343342 (= (size!9575 (t!112445 lt!410857)) lt!410906)))

(declare-fun b!1200761 () Bool)

(assert (=> b!1200761 (= e!770676 0)))

(declare-fun b!1200762 () Bool)

(assert (=> b!1200762 (= e!770676 (+ 1 (size!9575 (t!112445 (t!112445 lt!410857)))))))

(assert (= (and d!343342 c!200078) b!1200761))

(assert (= (and d!343342 (not c!200078)) b!1200762))

(declare-fun m!1376303 () Bool)

(assert (=> b!1200762 m!1376303))

(assert (=> b!1200491 d!343342))

(declare-fun d!343344 () Bool)

(declare-fun c!200079 () Bool)

(assert (=> d!343344 (= c!200079 ((_ is Node!3978) (left!10515 (left!10515 t!4115))))))

(declare-fun e!770677 () Bool)

(assert (=> d!343344 (= (inv!16126 (left!10515 (left!10515 t!4115))) e!770677)))

(declare-fun b!1200763 () Bool)

(assert (=> b!1200763 (= e!770677 (inv!16130 (left!10515 (left!10515 t!4115))))))

(declare-fun b!1200764 () Bool)

(declare-fun e!770678 () Bool)

(assert (=> b!1200764 (= e!770677 e!770678)))

(declare-fun res!541349 () Bool)

(assert (=> b!1200764 (= res!541349 (not ((_ is Leaf!6092) (left!10515 (left!10515 t!4115)))))))

(assert (=> b!1200764 (=> res!541349 e!770678)))

(declare-fun b!1200765 () Bool)

(assert (=> b!1200765 (= e!770678 (inv!16131 (left!10515 (left!10515 t!4115))))))

(assert (= (and d!343344 c!200079) b!1200763))

(assert (= (and d!343344 (not c!200079)) b!1200764))

(assert (= (and b!1200764 (not res!541349)) b!1200765))

(declare-fun m!1376305 () Bool)

(assert (=> b!1200763 m!1376305))

(declare-fun m!1376307 () Bool)

(assert (=> b!1200765 m!1376307))

(assert (=> b!1200725 d!343344))

(declare-fun d!343346 () Bool)

(declare-fun c!200080 () Bool)

(assert (=> d!343346 (= c!200080 ((_ is Node!3978) (right!10845 (left!10515 t!4115))))))

(declare-fun e!770679 () Bool)

(assert (=> d!343346 (= (inv!16126 (right!10845 (left!10515 t!4115))) e!770679)))

(declare-fun b!1200766 () Bool)

(assert (=> b!1200766 (= e!770679 (inv!16130 (right!10845 (left!10515 t!4115))))))

(declare-fun b!1200767 () Bool)

(declare-fun e!770680 () Bool)

(assert (=> b!1200767 (= e!770679 e!770680)))

(declare-fun res!541350 () Bool)

(assert (=> b!1200767 (= res!541350 (not ((_ is Leaf!6092) (right!10845 (left!10515 t!4115)))))))

(assert (=> b!1200767 (=> res!541350 e!770680)))

(declare-fun b!1200768 () Bool)

(assert (=> b!1200768 (= e!770680 (inv!16131 (right!10845 (left!10515 t!4115))))))

(assert (= (and d!343346 c!200080) b!1200766))

(assert (= (and d!343346 (not c!200080)) b!1200767))

(assert (= (and b!1200767 (not res!541350)) b!1200768))

(declare-fun m!1376309 () Bool)

(assert (=> b!1200766 m!1376309))

(declare-fun m!1376311 () Bool)

(assert (=> b!1200768 m!1376311))

(assert (=> b!1200725 d!343346))

(declare-fun d!343348 () Bool)

(assert (=> d!343348 (= (inv!16127 (xs!6685 (left!10515 t!4115))) (<= (size!9575 (innerList!4038 (xs!6685 (left!10515 t!4115)))) 2147483647))))

(declare-fun bs!288276 () Bool)

(assert (= bs!288276 d!343348))

(declare-fun m!1376313 () Bool)

(assert (=> bs!288276 m!1376313))

(assert (=> b!1200726 d!343348))

(declare-fun d!343350 () Bool)

(declare-fun lt!410907 () Int)

(assert (=> d!343350 (>= lt!410907 0)))

(declare-fun e!770681 () Int)

(assert (=> d!343350 (= lt!410907 e!770681)))

(declare-fun c!200081 () Bool)

(assert (=> d!343350 (= c!200081 ((_ is Nil!12045) (list!4489 (left!10515 t!4115))))))

(assert (=> d!343350 (= (size!9575 (list!4489 (left!10515 t!4115))) lt!410907)))

(declare-fun b!1200769 () Bool)

(assert (=> b!1200769 (= e!770681 0)))

(declare-fun b!1200770 () Bool)

(assert (=> b!1200770 (= e!770681 (+ 1 (size!9575 (t!112445 (list!4489 (left!10515 t!4115))))))))

(assert (= (and d!343350 c!200081) b!1200769))

(assert (= (and d!343350 (not c!200081)) b!1200770))

(declare-fun m!1376315 () Bool)

(assert (=> b!1200770 m!1376315))

(assert (=> d!343246 d!343350))

(assert (=> d!343246 d!343254))

(declare-fun lt!410908 () List!12069)

(declare-fun b!1200774 () Bool)

(declare-fun e!770682 () Bool)

(assert (=> b!1200774 (= e!770682 (or (not (= lt!410859 Nil!12045)) (= lt!410908 (t!112445 lt!410857))))))

(declare-fun d!343352 () Bool)

(assert (=> d!343352 e!770682))

(declare-fun res!541351 () Bool)

(assert (=> d!343352 (=> (not res!541351) (not e!770682))))

(assert (=> d!343352 (= res!541351 (= (content!1692 lt!410908) ((_ map or) (content!1692 (t!112445 lt!410857)) (content!1692 lt!410859))))))

(declare-fun e!770683 () List!12069)

(assert (=> d!343352 (= lt!410908 e!770683)))

(declare-fun c!200082 () Bool)

(assert (=> d!343352 (= c!200082 ((_ is Nil!12045) (t!112445 lt!410857)))))

(assert (=> d!343352 (= (++!3084 (t!112445 lt!410857) lt!410859) lt!410908)))

(declare-fun b!1200772 () Bool)

(assert (=> b!1200772 (= e!770683 (Cons!12045 (h!17446 (t!112445 lt!410857)) (++!3084 (t!112445 (t!112445 lt!410857)) lt!410859)))))

(declare-fun b!1200771 () Bool)

(assert (=> b!1200771 (= e!770683 lt!410859)))

(declare-fun b!1200773 () Bool)

(declare-fun res!541352 () Bool)

(assert (=> b!1200773 (=> (not res!541352) (not e!770682))))

(assert (=> b!1200773 (= res!541352 (= (size!9575 lt!410908) (+ (size!9575 (t!112445 lt!410857)) (size!9575 lt!410859))))))

(assert (= (and d!343352 c!200082) b!1200771))

(assert (= (and d!343352 (not c!200082)) b!1200772))

(assert (= (and d!343352 res!541351) b!1200773))

(assert (= (and b!1200773 res!541352) b!1200774))

(declare-fun m!1376317 () Bool)

(assert (=> d!343352 m!1376317))

(declare-fun m!1376319 () Bool)

(assert (=> d!343352 m!1376319))

(assert (=> d!343352 m!1376097))

(declare-fun m!1376321 () Bool)

(assert (=> b!1200772 m!1376321))

(declare-fun m!1376323 () Bool)

(assert (=> b!1200773 m!1376323))

(assert (=> b!1200773 m!1375993))

(assert (=> b!1200773 m!1376051))

(assert (=> b!1200599 d!343352))

(declare-fun d!343356 () Bool)

(declare-fun c!200085 () Bool)

(assert (=> d!343356 (= c!200085 ((_ is Nil!12045) lt!410892))))

(declare-fun e!770686 () (InoxSet T!21796))

(assert (=> d!343356 (= (content!1692 lt!410892) e!770686)))

(declare-fun b!1200779 () Bool)

(assert (=> b!1200779 (= e!770686 ((as const (Array T!21796 Bool)) false))))

(declare-fun b!1200780 () Bool)

(assert (=> b!1200780 (= e!770686 ((_ map or) (store ((as const (Array T!21796 Bool)) false) (h!17446 lt!410892) true) (content!1692 (t!112445 lt!410892))))))

(assert (= (and d!343356 c!200085) b!1200779))

(assert (= (and d!343356 (not c!200085)) b!1200780))

(declare-fun m!1376325 () Bool)

(assert (=> b!1200780 m!1376325))

(declare-fun m!1376327 () Bool)

(assert (=> b!1200780 m!1376327))

(assert (=> d!343292 d!343356))

(declare-fun d!343358 () Bool)

(declare-fun c!200086 () Bool)

(assert (=> d!343358 (= c!200086 ((_ is Nil!12045) call!83534))))

(declare-fun e!770687 () (InoxSet T!21796))

(assert (=> d!343358 (= (content!1692 call!83534) e!770687)))

(declare-fun b!1200781 () Bool)

(assert (=> b!1200781 (= e!770687 ((as const (Array T!21796 Bool)) false))))

(declare-fun b!1200782 () Bool)

(assert (=> b!1200782 (= e!770687 ((_ map or) (store ((as const (Array T!21796 Bool)) false) (h!17446 call!83534) true) (content!1692 (t!112445 call!83534))))))

(assert (= (and d!343358 c!200086) b!1200781))

(assert (= (and d!343358 (not c!200086)) b!1200782))

(declare-fun m!1376329 () Bool)

(assert (=> b!1200782 m!1376329))

(declare-fun m!1376331 () Bool)

(assert (=> b!1200782 m!1376331))

(assert (=> d!343292 d!343358))

(declare-fun d!343360 () Bool)

(declare-fun c!200087 () Bool)

(assert (=> d!343360 (= c!200087 ((_ is Nil!12045) call!83533))))

(declare-fun e!770688 () (InoxSet T!21796))

(assert (=> d!343360 (= (content!1692 call!83533) e!770688)))

(declare-fun b!1200783 () Bool)

(assert (=> b!1200783 (= e!770688 ((as const (Array T!21796 Bool)) false))))

(declare-fun b!1200784 () Bool)

(assert (=> b!1200784 (= e!770688 ((_ map or) (store ((as const (Array T!21796 Bool)) false) (h!17446 call!83533) true) (content!1692 (t!112445 call!83533))))))

(assert (= (and d!343360 c!200087) b!1200783))

(assert (= (and d!343360 (not c!200087)) b!1200784))

(declare-fun m!1376333 () Bool)

(assert (=> b!1200784 m!1376333))

(declare-fun m!1376335 () Bool)

(assert (=> b!1200784 m!1376335))

(assert (=> d!343292 d!343360))

(declare-fun d!343362 () Bool)

(declare-fun lt!410909 () Int)

(assert (=> d!343362 (>= lt!410909 0)))

(declare-fun e!770689 () Int)

(assert (=> d!343362 (= lt!410909 e!770689)))

(declare-fun c!200088 () Bool)

(assert (=> d!343362 (= c!200088 ((_ is Nil!12045) lt!410884))))

(assert (=> d!343362 (= (size!9575 lt!410884) lt!410909)))

(declare-fun b!1200785 () Bool)

(assert (=> b!1200785 (= e!770689 0)))

(declare-fun b!1200786 () Bool)

(assert (=> b!1200786 (= e!770689 (+ 1 (size!9575 (t!112445 lt!410884))))))

(assert (= (and d!343362 c!200088) b!1200785))

(assert (= (and d!343362 (not c!200088)) b!1200786))

(declare-fun m!1376337 () Bool)

(assert (=> b!1200786 m!1376337))

(assert (=> b!1200600 d!343362))

(assert (=> b!1200600 d!343250))

(declare-fun d!343364 () Bool)

(declare-fun lt!410910 () Int)

(assert (=> d!343364 (>= lt!410910 0)))

(declare-fun e!770690 () Int)

(assert (=> d!343364 (= lt!410910 e!770690)))

(declare-fun c!200089 () Bool)

(assert (=> d!343364 (= c!200089 ((_ is Nil!12045) lt!410859))))

(assert (=> d!343364 (= (size!9575 lt!410859) lt!410910)))

(declare-fun b!1200787 () Bool)

(assert (=> b!1200787 (= e!770690 0)))

(declare-fun b!1200788 () Bool)

(assert (=> b!1200788 (= e!770690 (+ 1 (size!9575 (t!112445 lt!410859))))))

(assert (= (and d!343364 c!200089) b!1200787))

(assert (= (and d!343364 (not c!200089)) b!1200788))

(declare-fun m!1376339 () Bool)

(assert (=> b!1200788 m!1376339))

(assert (=> b!1200600 d!343364))

(assert (=> b!1200473 d!343312))

(assert (=> b!1200473 d!343314))

(declare-fun d!343366 () Bool)

(declare-fun res!541359 () Bool)

(declare-fun e!770702 () Bool)

(assert (=> d!343366 (=> (not res!541359) (not e!770702))))

(assert (=> d!343366 (= res!541359 (= (csize!8186 (left!10515 t!4115)) (+ (size!9574 (left!10515 (left!10515 t!4115))) (size!9574 (right!10845 (left!10515 t!4115))))))))

(assert (=> d!343366 (= (inv!16130 (left!10515 t!4115)) e!770702)))

(declare-fun b!1200813 () Bool)

(declare-fun res!541360 () Bool)

(assert (=> b!1200813 (=> (not res!541360) (not e!770702))))

(assert (=> b!1200813 (= res!541360 (and (not (= (left!10515 (left!10515 t!4115)) Empty!3978)) (not (= (right!10845 (left!10515 t!4115)) Empty!3978))))))

(declare-fun b!1200814 () Bool)

(declare-fun res!541361 () Bool)

(assert (=> b!1200814 (=> (not res!541361) (not e!770702))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1200814 (= res!541361 (= (cheight!4189 (left!10515 t!4115)) (+ (max!0 (height!572 (left!10515 (left!10515 t!4115))) (height!572 (right!10845 (left!10515 t!4115)))) 1)))))

(declare-fun b!1200815 () Bool)

(assert (=> b!1200815 (= e!770702 (<= 0 (cheight!4189 (left!10515 t!4115))))))

(assert (= (and d!343366 res!541359) b!1200813))

(assert (= (and b!1200813 res!541360) b!1200814))

(assert (= (and b!1200814 res!541361) b!1200815))

(declare-fun m!1376341 () Bool)

(assert (=> d!343366 m!1376341))

(declare-fun m!1376343 () Bool)

(assert (=> d!343366 m!1376343))

(declare-fun m!1376345 () Bool)

(assert (=> b!1200814 m!1376345))

(declare-fun m!1376347 () Bool)

(assert (=> b!1200814 m!1376347))

(assert (=> b!1200814 m!1376345))

(assert (=> b!1200814 m!1376347))

(declare-fun m!1376349 () Bool)

(assert (=> b!1200814 m!1376349))

(assert (=> b!1200703 d!343366))

(declare-fun b!1200844 () Bool)

(declare-fun e!770722 () Int)

(assert (=> b!1200844 (= e!770722 (- (- until!31 lt!410861) (ite c!199991 (- from!553 lt!410861) 0)))))

(declare-fun b!1200845 () Bool)

(declare-fun e!770720 () List!12069)

(assert (=> b!1200845 (= e!770720 Nil!12045)))

(declare-fun d!343368 () Bool)

(declare-fun e!770719 () Bool)

(assert (=> d!343368 e!770719))

(declare-fun res!541368 () Bool)

(assert (=> d!343368 (=> (not res!541368) (not e!770719))))

(declare-fun lt!410916 () List!12069)

(assert (=> d!343368 (= res!541368 (= ((_ map implies) (content!1692 lt!410916) (content!1692 (drop!603 lt!410859 (ite c!199991 (- from!553 lt!410861) 0)))) ((as const (InoxSet T!21796)) true)))))

(assert (=> d!343368 (= lt!410916 e!770720)))

(declare-fun c!200112 () Bool)

(assert (=> d!343368 (= c!200112 (or ((_ is Nil!12045) (drop!603 lt!410859 (ite c!199991 (- from!553 lt!410861) 0))) (<= (- (- until!31 lt!410861) (ite c!199991 (- from!553 lt!410861) 0)) 0)))))

(assert (=> d!343368 (= (take!131 (drop!603 lt!410859 (ite c!199991 (- from!553 lt!410861) 0)) (- (- until!31 lt!410861) (ite c!199991 (- from!553 lt!410861) 0))) lt!410916)))

(declare-fun b!1200846 () Bool)

(declare-fun e!770721 () Int)

(assert (=> b!1200846 (= e!770721 0)))

(declare-fun b!1200847 () Bool)

(assert (=> b!1200847 (= e!770721 e!770722)))

(declare-fun c!200111 () Bool)

(assert (=> b!1200847 (= c!200111 (>= (- (- until!31 lt!410861) (ite c!199991 (- from!553 lt!410861) 0)) (size!9575 (drop!603 lt!410859 (ite c!199991 (- from!553 lt!410861) 0)))))))

(declare-fun b!1200848 () Bool)

(assert (=> b!1200848 (= e!770720 (Cons!12045 (h!17446 (drop!603 lt!410859 (ite c!199991 (- from!553 lt!410861) 0))) (take!131 (t!112445 (drop!603 lt!410859 (ite c!199991 (- from!553 lt!410861) 0))) (- (- (- until!31 lt!410861) (ite c!199991 (- from!553 lt!410861) 0)) 1))))))

(declare-fun b!1200849 () Bool)

(assert (=> b!1200849 (= e!770722 (size!9575 (drop!603 lt!410859 (ite c!199991 (- from!553 lt!410861) 0))))))

(declare-fun b!1200850 () Bool)

(assert (=> b!1200850 (= e!770719 (= (size!9575 lt!410916) e!770721))))

(declare-fun c!200110 () Bool)

(assert (=> b!1200850 (= c!200110 (<= (- (- until!31 lt!410861) (ite c!199991 (- from!553 lt!410861) 0)) 0))))

(assert (= (and d!343368 c!200112) b!1200845))

(assert (= (and d!343368 (not c!200112)) b!1200848))

(assert (= (and d!343368 res!541368) b!1200850))

(assert (= (and b!1200850 c!200110) b!1200846))

(assert (= (and b!1200850 (not c!200110)) b!1200847))

(assert (= (and b!1200847 c!200111) b!1200849))

(assert (= (and b!1200847 (not c!200111)) b!1200844))

(declare-fun m!1376377 () Bool)

(assert (=> b!1200850 m!1376377))

(assert (=> b!1200847 m!1376155))

(declare-fun m!1376379 () Bool)

(assert (=> b!1200847 m!1376379))

(declare-fun m!1376381 () Bool)

(assert (=> b!1200848 m!1376381))

(assert (=> b!1200849 m!1376155))

(assert (=> b!1200849 m!1376379))

(declare-fun m!1376383 () Bool)

(assert (=> d!343368 m!1376383))

(assert (=> d!343368 m!1376155))

(declare-fun m!1376385 () Bool)

(assert (=> d!343368 m!1376385))

(assert (=> d!343298 d!343368))

(declare-fun b!1200880 () Bool)

(declare-fun e!770739 () List!12069)

(assert (=> b!1200880 (= e!770739 lt!410859)))

(declare-fun d!343378 () Bool)

(declare-fun e!770740 () Bool)

(assert (=> d!343378 e!770740))

(declare-fun res!541372 () Bool)

(assert (=> d!343378 (=> (not res!541372) (not e!770740))))

(declare-fun lt!410920 () List!12069)

(assert (=> d!343378 (= res!541372 (= ((_ map implies) (content!1692 lt!410920) (content!1692 lt!410859)) ((as const (InoxSet T!21796)) true)))))

(declare-fun e!770741 () List!12069)

(assert (=> d!343378 (= lt!410920 e!770741)))

(declare-fun c!200126 () Bool)

(assert (=> d!343378 (= c!200126 ((_ is Nil!12045) lt!410859))))

(assert (=> d!343378 (= (drop!603 lt!410859 (ite c!199991 (- from!553 lt!410861) 0)) lt!410920)))

(declare-fun b!1200881 () Bool)

(declare-fun e!770743 () Int)

(declare-fun call!83575 () Int)

(assert (=> b!1200881 (= e!770743 call!83575)))

(declare-fun b!1200882 () Bool)

(assert (=> b!1200882 (= e!770740 (= (size!9575 lt!410920) e!770743))))

(declare-fun c!200128 () Bool)

(assert (=> b!1200882 (= c!200128 (<= (ite c!199991 (- from!553 lt!410861) 0) 0))))

(declare-fun bm!83570 () Bool)

(assert (=> bm!83570 (= call!83575 (size!9575 lt!410859))))

(declare-fun b!1200883 () Bool)

(assert (=> b!1200883 (= e!770741 e!770739)))

(declare-fun c!200127 () Bool)

(assert (=> b!1200883 (= c!200127 (<= (ite c!199991 (- from!553 lt!410861) 0) 0))))

(declare-fun b!1200884 () Bool)

(assert (=> b!1200884 (= e!770739 (drop!603 (t!112445 lt!410859) (- (ite c!199991 (- from!553 lt!410861) 0) 1)))))

(declare-fun b!1200885 () Bool)

(declare-fun e!770742 () Int)

(assert (=> b!1200885 (= e!770742 0)))

(declare-fun b!1200886 () Bool)

(assert (=> b!1200886 (= e!770741 Nil!12045)))

(declare-fun b!1200887 () Bool)

(assert (=> b!1200887 (= e!770742 (- call!83575 (ite c!199991 (- from!553 lt!410861) 0)))))

(declare-fun b!1200888 () Bool)

(assert (=> b!1200888 (= e!770743 e!770742)))

(declare-fun c!200129 () Bool)

(assert (=> b!1200888 (= c!200129 (>= (ite c!199991 (- from!553 lt!410861) 0) call!83575))))

(assert (= (and d!343378 c!200126) b!1200886))

(assert (= (and d!343378 (not c!200126)) b!1200883))

(assert (= (and b!1200883 c!200127) b!1200880))

(assert (= (and b!1200883 (not c!200127)) b!1200884))

(assert (= (and d!343378 res!541372) b!1200882))

(assert (= (and b!1200882 c!200128) b!1200881))

(assert (= (and b!1200882 (not c!200128)) b!1200888))

(assert (= (and b!1200888 c!200129) b!1200885))

(assert (= (and b!1200888 (not c!200129)) b!1200887))

(assert (= (or b!1200881 b!1200888 b!1200887) bm!83570))

(declare-fun m!1376397 () Bool)

(assert (=> d!343378 m!1376397))

(assert (=> d!343378 m!1376097))

(declare-fun m!1376399 () Bool)

(assert (=> b!1200882 m!1376399))

(assert (=> bm!83570 m!1376051))

(declare-fun m!1376401 () Bool)

(assert (=> b!1200884 m!1376401))

(assert (=> d!343298 d!343378))

(declare-fun lt!410923 () List!12069)

(declare-fun b!1200900 () Bool)

(declare-fun e!770748 () Bool)

(assert (=> b!1200900 (= e!770748 (or (not (= (slice!477 lt!410859 0 (- until!31 call!83541)) Nil!12045)) (= lt!410923 call!83542)))))

(declare-fun d!343382 () Bool)

(assert (=> d!343382 e!770748))

(declare-fun res!541373 () Bool)

(assert (=> d!343382 (=> (not res!541373) (not e!770748))))

(assert (=> d!343382 (= res!541373 (= (content!1692 lt!410923) ((_ map or) (content!1692 call!83542) (content!1692 (slice!477 lt!410859 0 (- until!31 call!83541))))))))

(declare-fun e!770749 () List!12069)

(assert (=> d!343382 (= lt!410923 e!770749)))

(declare-fun c!200134 () Bool)

(assert (=> d!343382 (= c!200134 ((_ is Nil!12045) call!83542))))

(assert (=> d!343382 (= (++!3084 call!83542 (slice!477 lt!410859 0 (- until!31 call!83541))) lt!410923)))

(declare-fun b!1200898 () Bool)

(assert (=> b!1200898 (= e!770749 (Cons!12045 (h!17446 call!83542) (++!3084 (t!112445 call!83542) (slice!477 lt!410859 0 (- until!31 call!83541)))))))

(declare-fun b!1200897 () Bool)

(assert (=> b!1200897 (= e!770749 (slice!477 lt!410859 0 (- until!31 call!83541)))))

(declare-fun b!1200899 () Bool)

(declare-fun res!541374 () Bool)

(assert (=> b!1200899 (=> (not res!541374) (not e!770748))))

(assert (=> b!1200899 (= res!541374 (= (size!9575 lt!410923) (+ (size!9575 call!83542) (size!9575 (slice!477 lt!410859 0 (- until!31 call!83541))))))))

(assert (= (and d!343382 c!200134) b!1200897))

(assert (= (and d!343382 (not c!200134)) b!1200898))

(assert (= (and d!343382 res!541373) b!1200899))

(assert (= (and b!1200899 res!541374) b!1200900))

(declare-fun m!1376403 () Bool)

(assert (=> d!343382 m!1376403))

(declare-fun m!1376405 () Bool)

(assert (=> d!343382 m!1376405))

(assert (=> d!343382 m!1376059))

(declare-fun m!1376407 () Bool)

(assert (=> d!343382 m!1376407))

(assert (=> b!1200898 m!1376059))

(declare-fun m!1376409 () Bool)

(assert (=> b!1200898 m!1376409))

(declare-fun m!1376411 () Bool)

(assert (=> b!1200899 m!1376411))

(declare-fun m!1376413 () Bool)

(assert (=> b!1200899 m!1376413))

(assert (=> b!1200899 m!1376059))

(declare-fun m!1376415 () Bool)

(assert (=> b!1200899 m!1376415))

(assert (=> b!1200558 d!343382))

(declare-fun d!343384 () Bool)

(assert (=> d!343384 (= (slice!477 lt!410859 0 (- until!31 call!83541)) (take!131 (drop!603 lt!410859 0) (- (- until!31 call!83541) 0)))))

(declare-fun bs!288279 () Bool)

(assert (= bs!288279 d!343384))

(declare-fun m!1376417 () Bool)

(assert (=> bs!288279 m!1376417))

(assert (=> bs!288279 m!1376417))

(declare-fun m!1376419 () Bool)

(assert (=> bs!288279 m!1376419))

(assert (=> b!1200558 d!343384))

(assert (=> b!1200557 d!343250))

(assert (=> b!1200557 d!343364))

(declare-fun d!343386 () Bool)

(declare-fun res!541377 () Bool)

(declare-fun e!770756 () Bool)

(assert (=> d!343386 (=> (not res!541377) (not e!770756))))

(assert (=> d!343386 (= res!541377 (<= (size!9575 (list!4490 (xs!6685 (left!10515 t!4115)))) 512))))

(assert (=> d!343386 (= (inv!16131 (left!10515 t!4115)) e!770756)))

(declare-fun b!1200911 () Bool)

(declare-fun res!541378 () Bool)

(assert (=> b!1200911 (=> (not res!541378) (not e!770756))))

(assert (=> b!1200911 (= res!541378 (= (csize!8187 (left!10515 t!4115)) (size!9575 (list!4490 (xs!6685 (left!10515 t!4115))))))))

(declare-fun b!1200912 () Bool)

(assert (=> b!1200912 (= e!770756 (and (> (csize!8187 (left!10515 t!4115)) 0) (<= (csize!8187 (left!10515 t!4115)) 512)))))

(assert (= (and d!343386 res!541377) b!1200911))

(assert (= (and b!1200911 res!541378) b!1200912))

(assert (=> d!343386 m!1375999))

(assert (=> d!343386 m!1375999))

(declare-fun m!1376421 () Bool)

(assert (=> d!343386 m!1376421))

(assert (=> b!1200911 m!1375999))

(assert (=> b!1200911 m!1375999))

(assert (=> b!1200911 m!1376421))

(assert (=> b!1200705 d!343386))

(declare-fun b!1200913 () Bool)

(declare-fun e!770760 () Int)

(assert (=> b!1200913 (= e!770760 (- (ite c!199992 until!31 lt!410861) from!553))))

(declare-fun b!1200914 () Bool)

(declare-fun e!770758 () List!12069)

(assert (=> b!1200914 (= e!770758 Nil!12045)))

(declare-fun d!343388 () Bool)

(declare-fun e!770757 () Bool)

(assert (=> d!343388 e!770757))

(declare-fun res!541379 () Bool)

(assert (=> d!343388 (=> (not res!541379) (not e!770757))))

(declare-fun lt!410924 () List!12069)

(assert (=> d!343388 (= res!541379 (= ((_ map implies) (content!1692 lt!410924) (content!1692 (drop!603 lt!410857 from!553))) ((as const (InoxSet T!21796)) true)))))

(assert (=> d!343388 (= lt!410924 e!770758)))

(declare-fun c!200141 () Bool)

(assert (=> d!343388 (= c!200141 (or ((_ is Nil!12045) (drop!603 lt!410857 from!553)) (<= (- (ite c!199992 until!31 lt!410861) from!553) 0)))))

(assert (=> d!343388 (= (take!131 (drop!603 lt!410857 from!553) (- (ite c!199992 until!31 lt!410861) from!553)) lt!410924)))

(declare-fun b!1200915 () Bool)

(declare-fun e!770759 () Int)

(assert (=> b!1200915 (= e!770759 0)))

(declare-fun b!1200916 () Bool)

(assert (=> b!1200916 (= e!770759 e!770760)))

(declare-fun c!200140 () Bool)

(assert (=> b!1200916 (= c!200140 (>= (- (ite c!199992 until!31 lt!410861) from!553) (size!9575 (drop!603 lt!410857 from!553))))))

(declare-fun b!1200917 () Bool)

(assert (=> b!1200917 (= e!770758 (Cons!12045 (h!17446 (drop!603 lt!410857 from!553)) (take!131 (t!112445 (drop!603 lt!410857 from!553)) (- (- (ite c!199992 until!31 lt!410861) from!553) 1))))))

(declare-fun b!1200918 () Bool)

(assert (=> b!1200918 (= e!770760 (size!9575 (drop!603 lt!410857 from!553)))))

(declare-fun b!1200919 () Bool)

(assert (=> b!1200919 (= e!770757 (= (size!9575 lt!410924) e!770759))))

(declare-fun c!200139 () Bool)

(assert (=> b!1200919 (= c!200139 (<= (- (ite c!199992 until!31 lt!410861) from!553) 0))))

(assert (= (and d!343388 c!200141) b!1200914))

(assert (= (and d!343388 (not c!200141)) b!1200917))

(assert (= (and d!343388 res!541379) b!1200919))

(assert (= (and b!1200919 c!200139) b!1200915))

(assert (= (and b!1200919 (not c!200139)) b!1200916))

(assert (= (and b!1200916 c!200140) b!1200918))

(assert (= (and b!1200916 (not c!200140)) b!1200913))

(declare-fun m!1376423 () Bool)

(assert (=> b!1200919 m!1376423))

(assert (=> b!1200916 m!1376121))

(declare-fun m!1376425 () Bool)

(assert (=> b!1200916 m!1376425))

(declare-fun m!1376427 () Bool)

(assert (=> b!1200917 m!1376427))

(assert (=> b!1200918 m!1376121))

(assert (=> b!1200918 m!1376425))

(declare-fun m!1376429 () Bool)

(assert (=> d!343388 m!1376429))

(assert (=> d!343388 m!1376121))

(declare-fun m!1376431 () Bool)

(assert (=> d!343388 m!1376431))

(assert (=> d!343288 d!343388))

(declare-fun b!1200920 () Bool)

(declare-fun e!770761 () List!12069)

(assert (=> b!1200920 (= e!770761 lt!410857)))

(declare-fun d!343390 () Bool)

(declare-fun e!770762 () Bool)

(assert (=> d!343390 e!770762))

(declare-fun res!541380 () Bool)

(assert (=> d!343390 (=> (not res!541380) (not e!770762))))

(declare-fun lt!410925 () List!12069)

(assert (=> d!343390 (= res!541380 (= ((_ map implies) (content!1692 lt!410925) (content!1692 lt!410857)) ((as const (InoxSet T!21796)) true)))))

(declare-fun e!770763 () List!12069)

(assert (=> d!343390 (= lt!410925 e!770763)))

(declare-fun c!200142 () Bool)

(assert (=> d!343390 (= c!200142 ((_ is Nil!12045) lt!410857))))

(assert (=> d!343390 (= (drop!603 lt!410857 from!553) lt!410925)))

(declare-fun b!1200921 () Bool)

(declare-fun e!770765 () Int)

(declare-fun call!83578 () Int)

(assert (=> b!1200921 (= e!770765 call!83578)))

(declare-fun b!1200922 () Bool)

(assert (=> b!1200922 (= e!770762 (= (size!9575 lt!410925) e!770765))))

(declare-fun c!200144 () Bool)

(assert (=> b!1200922 (= c!200144 (<= from!553 0))))

(declare-fun bm!83573 () Bool)

(assert (=> bm!83573 (= call!83578 (size!9575 lt!410857))))

(declare-fun b!1200923 () Bool)

(assert (=> b!1200923 (= e!770763 e!770761)))

(declare-fun c!200143 () Bool)

(assert (=> b!1200923 (= c!200143 (<= from!553 0))))

(declare-fun b!1200924 () Bool)

(assert (=> b!1200924 (= e!770761 (drop!603 (t!112445 lt!410857) (- from!553 1)))))

(declare-fun b!1200925 () Bool)

(declare-fun e!770764 () Int)

(assert (=> b!1200925 (= e!770764 0)))

(declare-fun b!1200926 () Bool)

(assert (=> b!1200926 (= e!770763 Nil!12045)))

(declare-fun b!1200927 () Bool)

(assert (=> b!1200927 (= e!770764 (- call!83578 from!553))))

(declare-fun b!1200928 () Bool)

(assert (=> b!1200928 (= e!770765 e!770764)))

(declare-fun c!200145 () Bool)

(assert (=> b!1200928 (= c!200145 (>= from!553 call!83578))))

(assert (= (and d!343390 c!200142) b!1200926))

(assert (= (and d!343390 (not c!200142)) b!1200923))

(assert (= (and b!1200923 c!200143) b!1200920))

(assert (= (and b!1200923 (not c!200143)) b!1200924))

(assert (= (and d!343390 res!541380) b!1200922))

(assert (= (and b!1200922 c!200144) b!1200921))

(assert (= (and b!1200922 (not c!200144)) b!1200928))

(assert (= (and b!1200928 c!200145) b!1200925))

(assert (= (and b!1200928 (not c!200145)) b!1200927))

(assert (= (or b!1200921 b!1200928 b!1200927) bm!83573))

(declare-fun m!1376433 () Bool)

(assert (=> d!343390 m!1376433))

(assert (=> d!343390 m!1376095))

(declare-fun m!1376435 () Bool)

(assert (=> b!1200922 m!1376435))

(assert (=> bm!83573 m!1375963))

(declare-fun m!1376437 () Bool)

(assert (=> b!1200924 m!1376437))

(assert (=> d!343288 d!343390))

(declare-fun d!343392 () Bool)

(declare-fun c!200146 () Bool)

(assert (=> d!343392 (= c!200146 ((_ is Nil!12045) lt!410884))))

(declare-fun e!770766 () (InoxSet T!21796))

(assert (=> d!343392 (= (content!1692 lt!410884) e!770766)))

(declare-fun b!1200929 () Bool)

(assert (=> b!1200929 (= e!770766 ((as const (Array T!21796 Bool)) false))))

(declare-fun b!1200930 () Bool)

(assert (=> b!1200930 (= e!770766 ((_ map or) (store ((as const (Array T!21796 Bool)) false) (h!17446 lt!410884) true) (content!1692 (t!112445 lt!410884))))))

(assert (= (and d!343392 c!200146) b!1200929))

(assert (= (and d!343392 (not c!200146)) b!1200930))

(declare-fun m!1376439 () Bool)

(assert (=> b!1200930 m!1376439))

(declare-fun m!1376441 () Bool)

(assert (=> b!1200930 m!1376441))

(assert (=> d!343278 d!343392))

(declare-fun d!343394 () Bool)

(declare-fun c!200147 () Bool)

(assert (=> d!343394 (= c!200147 ((_ is Nil!12045) lt!410857))))

(declare-fun e!770767 () (InoxSet T!21796))

(assert (=> d!343394 (= (content!1692 lt!410857) e!770767)))

(declare-fun b!1200931 () Bool)

(assert (=> b!1200931 (= e!770767 ((as const (Array T!21796 Bool)) false))))

(declare-fun b!1200932 () Bool)

(assert (=> b!1200932 (= e!770767 ((_ map or) (store ((as const (Array T!21796 Bool)) false) (h!17446 lt!410857) true) (content!1692 (t!112445 lt!410857))))))

(assert (= (and d!343394 c!200147) b!1200931))

(assert (= (and d!343394 (not c!200147)) b!1200932))

(declare-fun m!1376443 () Bool)

(assert (=> b!1200932 m!1376443))

(assert (=> b!1200932 m!1376319))

(assert (=> d!343278 d!343394))

(declare-fun d!343396 () Bool)

(declare-fun c!200148 () Bool)

(assert (=> d!343396 (= c!200148 ((_ is Nil!12045) lt!410859))))

(declare-fun e!770768 () (InoxSet T!21796))

(assert (=> d!343396 (= (content!1692 lt!410859) e!770768)))

(declare-fun b!1200933 () Bool)

(assert (=> b!1200933 (= e!770768 ((as const (Array T!21796 Bool)) false))))

(declare-fun b!1200934 () Bool)

(assert (=> b!1200934 (= e!770768 ((_ map or) (store ((as const (Array T!21796 Bool)) false) (h!17446 lt!410859) true) (content!1692 (t!112445 lt!410859))))))

(assert (= (and d!343396 c!200148) b!1200933))

(assert (= (and d!343396 (not c!200148)) b!1200934))

(declare-fun m!1376445 () Bool)

(assert (=> b!1200934 m!1376445))

(declare-fun m!1376447 () Bool)

(assert (=> b!1200934 m!1376447))

(assert (=> d!343278 d!343396))

(declare-fun d!343398 () Bool)

(assert (=> d!343398 (= (height!572 (left!10515 t!4115)) (ite ((_ is Empty!3978) (left!10515 t!4115)) 0 (ite ((_ is Leaf!6092) (left!10515 t!4115)) 1 (cheight!4189 (left!10515 t!4115)))))))

(assert (=> b!1200694 d!343398))

(declare-fun d!343402 () Bool)

(assert (=> d!343402 (= (height!572 (right!10845 t!4115)) (ite ((_ is Empty!3978) (right!10845 t!4115)) 0 (ite ((_ is Leaf!6092) (right!10845 t!4115)) 1 (cheight!4189 (right!10845 t!4115)))))))

(assert (=> b!1200694 d!343402))

(declare-fun d!343404 () Bool)

(declare-fun lt!410928 () Int)

(assert (=> d!343404 (>= lt!410928 0)))

(declare-fun e!770778 () Int)

(assert (=> d!343404 (= lt!410928 e!770778)))

(declare-fun c!200156 () Bool)

(assert (=> d!343404 (= c!200156 ((_ is Nil!12045) (list!4489 t!4115)))))

(assert (=> d!343404 (= (size!9575 (list!4489 t!4115)) lt!410928)))

(declare-fun b!1200951 () Bool)

(assert (=> b!1200951 (= e!770778 0)))

(declare-fun b!1200952 () Bool)

(assert (=> b!1200952 (= e!770778 (+ 1 (size!9575 (t!112445 (list!4489 t!4115)))))))

(assert (= (and d!343404 c!200156) b!1200951))

(assert (= (and d!343404 (not c!200156)) b!1200952))

(declare-fun m!1376459 () Bool)

(assert (=> b!1200952 m!1376459))

(assert (=> d!343294 d!343404))

(declare-fun b!1200955 () Bool)

(declare-fun e!770780 () List!12069)

(assert (=> b!1200955 (= e!770780 (list!4490 (xs!6685 t!4115)))))

(declare-fun b!1200956 () Bool)

(assert (=> b!1200956 (= e!770780 (++!3084 (list!4489 (left!10515 t!4115)) (list!4489 (right!10845 t!4115))))))

(declare-fun b!1200953 () Bool)

(declare-fun e!770779 () List!12069)

(assert (=> b!1200953 (= e!770779 Nil!12045)))

(declare-fun b!1200954 () Bool)

(assert (=> b!1200954 (= e!770779 e!770780)))

(declare-fun c!200158 () Bool)

(assert (=> b!1200954 (= c!200158 ((_ is Leaf!6092) t!4115))))

(declare-fun d!343406 () Bool)

(declare-fun c!200157 () Bool)

(assert (=> d!343406 (= c!200157 ((_ is Empty!3978) t!4115))))

(assert (=> d!343406 (= (list!4489 t!4115) e!770779)))

(assert (= (and d!343406 c!200157) b!1200953))

(assert (= (and d!343406 (not c!200157)) b!1200954))

(assert (= (and b!1200954 c!200158) b!1200955))

(assert (= (and b!1200954 (not c!200158)) b!1200956))

(assert (=> b!1200955 m!1376299))

(assert (=> b!1200956 m!1375975))

(assert (=> b!1200956 m!1375965))

(assert (=> b!1200956 m!1375975))

(assert (=> b!1200956 m!1375965))

(declare-fun m!1376469 () Bool)

(assert (=> b!1200956 m!1376469))

(assert (=> d!343294 d!343406))

(declare-fun b!1200962 () Bool)

(declare-fun e!770789 () Int)

(assert (=> b!1200962 (= e!770789 (- until!31 from!553))))

(declare-fun b!1200964 () Bool)

(declare-fun e!770785 () List!12069)

(assert (=> b!1200964 (= e!770785 Nil!12045)))

(declare-fun d!343408 () Bool)

(declare-fun e!770784 () Bool)

(assert (=> d!343408 e!770784))

(declare-fun res!541384 () Bool)

(assert (=> d!343408 (=> (not res!541384) (not e!770784))))

(declare-fun lt!410930 () List!12069)

(assert (=> d!343408 (= res!541384 (= ((_ map implies) (content!1692 lt!410930) (content!1692 (drop!603 (++!3084 lt!410857 lt!410859) from!553))) ((as const (InoxSet T!21796)) true)))))

(assert (=> d!343408 (= lt!410930 e!770785)))

(declare-fun c!200165 () Bool)

(assert (=> d!343408 (= c!200165 (or ((_ is Nil!12045) (drop!603 (++!3084 lt!410857 lt!410859) from!553)) (<= (- until!31 from!553) 0)))))

(assert (=> d!343408 (= (take!131 (drop!603 (++!3084 lt!410857 lt!410859) from!553) (- until!31 from!553)) lt!410930)))

(declare-fun b!1200966 () Bool)

(declare-fun e!770788 () Int)

(assert (=> b!1200966 (= e!770788 0)))

(declare-fun b!1200967 () Bool)

(assert (=> b!1200967 (= e!770788 e!770789)))

(declare-fun c!200164 () Bool)

(assert (=> b!1200967 (= c!200164 (>= (- until!31 from!553) (size!9575 (drop!603 (++!3084 lt!410857 lt!410859) from!553))))))

(declare-fun b!1200969 () Bool)

(assert (=> b!1200969 (= e!770785 (Cons!12045 (h!17446 (drop!603 (++!3084 lt!410857 lt!410859) from!553)) (take!131 (t!112445 (drop!603 (++!3084 lt!410857 lt!410859) from!553)) (- (- until!31 from!553) 1))))))

(declare-fun b!1200971 () Bool)

(assert (=> b!1200971 (= e!770789 (size!9575 (drop!603 (++!3084 lt!410857 lt!410859) from!553)))))

(declare-fun b!1200972 () Bool)

(assert (=> b!1200972 (= e!770784 (= (size!9575 lt!410930) e!770788))))

(declare-fun c!200163 () Bool)

(assert (=> b!1200972 (= c!200163 (<= (- until!31 from!553) 0))))

(assert (= (and d!343408 c!200165) b!1200964))

(assert (= (and d!343408 (not c!200165)) b!1200969))

(assert (= (and d!343408 res!541384) b!1200972))

(assert (= (and b!1200972 c!200163) b!1200966))

(assert (= (and b!1200972 (not c!200163)) b!1200967))

(assert (= (and b!1200967 c!200164) b!1200971))

(assert (= (and b!1200967 (not c!200164)) b!1200962))

(declare-fun m!1376475 () Bool)

(assert (=> b!1200972 m!1376475))

(assert (=> b!1200967 m!1376011))

(declare-fun m!1376479 () Bool)

(assert (=> b!1200967 m!1376479))

(declare-fun m!1376485 () Bool)

(assert (=> b!1200969 m!1376485))

(assert (=> b!1200971 m!1376011))

(assert (=> b!1200971 m!1376479))

(declare-fun m!1376489 () Bool)

(assert (=> d!343408 m!1376489))

(assert (=> d!343408 m!1376011))

(declare-fun m!1376491 () Bool)

(assert (=> d!343408 m!1376491))

(assert (=> d!343258 d!343408))

(declare-fun b!1200973 () Bool)

(declare-fun e!770790 () List!12069)

(assert (=> b!1200973 (= e!770790 (++!3084 lt!410857 lt!410859))))

(declare-fun d!343414 () Bool)

(declare-fun e!770791 () Bool)

(assert (=> d!343414 e!770791))

(declare-fun res!541385 () Bool)

(assert (=> d!343414 (=> (not res!541385) (not e!770791))))

(declare-fun lt!410931 () List!12069)

(assert (=> d!343414 (= res!541385 (= ((_ map implies) (content!1692 lt!410931) (content!1692 (++!3084 lt!410857 lt!410859))) ((as const (InoxSet T!21796)) true)))))

(declare-fun e!770792 () List!12069)

(assert (=> d!343414 (= lt!410931 e!770792)))

(declare-fun c!200166 () Bool)

(assert (=> d!343414 (= c!200166 ((_ is Nil!12045) (++!3084 lt!410857 lt!410859)))))

(assert (=> d!343414 (= (drop!603 (++!3084 lt!410857 lt!410859) from!553) lt!410931)))

(declare-fun b!1200974 () Bool)

(declare-fun e!770794 () Int)

(declare-fun call!83581 () Int)

(assert (=> b!1200974 (= e!770794 call!83581)))

(declare-fun b!1200975 () Bool)

(assert (=> b!1200975 (= e!770791 (= (size!9575 lt!410931) e!770794))))

(declare-fun c!200168 () Bool)

(assert (=> b!1200975 (= c!200168 (<= from!553 0))))

(declare-fun bm!83576 () Bool)

(assert (=> bm!83576 (= call!83581 (size!9575 (++!3084 lt!410857 lt!410859)))))

(declare-fun b!1200976 () Bool)

(assert (=> b!1200976 (= e!770792 e!770790)))

(declare-fun c!200167 () Bool)

(assert (=> b!1200976 (= c!200167 (<= from!553 0))))

(declare-fun b!1200977 () Bool)

(assert (=> b!1200977 (= e!770790 (drop!603 (t!112445 (++!3084 lt!410857 lt!410859)) (- from!553 1)))))

(declare-fun b!1200978 () Bool)

(declare-fun e!770793 () Int)

(assert (=> b!1200978 (= e!770793 0)))

(declare-fun b!1200979 () Bool)

(assert (=> b!1200979 (= e!770792 Nil!12045)))

(declare-fun b!1200980 () Bool)

(assert (=> b!1200980 (= e!770793 (- call!83581 from!553))))

(declare-fun b!1200981 () Bool)

(assert (=> b!1200981 (= e!770794 e!770793)))

(declare-fun c!200169 () Bool)

(assert (=> b!1200981 (= c!200169 (>= from!553 call!83581))))

(assert (= (and d!343414 c!200166) b!1200979))

(assert (= (and d!343414 (not c!200166)) b!1200976))

(assert (= (and b!1200976 c!200167) b!1200973))

(assert (= (and b!1200976 (not c!200167)) b!1200977))

(assert (= (and d!343414 res!541385) b!1200975))

(assert (= (and b!1200975 c!200168) b!1200974))

(assert (= (and b!1200975 (not c!200168)) b!1200981))

(assert (= (and b!1200981 c!200169) b!1200978))

(assert (= (and b!1200981 (not c!200169)) b!1200980))

(assert (= (or b!1200974 b!1200981 b!1200980) bm!83576))

(declare-fun m!1376493 () Bool)

(assert (=> d!343414 m!1376493))

(assert (=> d!343414 m!1375971))

(declare-fun m!1376495 () Bool)

(assert (=> d!343414 m!1376495))

(declare-fun m!1376497 () Bool)

(assert (=> b!1200975 m!1376497))

(assert (=> bm!83576 m!1375971))

(declare-fun m!1376499 () Bool)

(assert (=> bm!83576 m!1376499))

(declare-fun m!1376501 () Bool)

(assert (=> b!1200977 m!1376501))

(assert (=> d!343258 d!343414))

(declare-fun e!770795 () Bool)

(declare-fun lt!410932 () List!12069)

(declare-fun b!1200985 () Bool)

(assert (=> b!1200985 (= e!770795 (or (not (= call!83533 Nil!12045)) (= lt!410932 (t!112445 call!83534))))))

(declare-fun d!343416 () Bool)

(assert (=> d!343416 e!770795))

(declare-fun res!541386 () Bool)

(assert (=> d!343416 (=> (not res!541386) (not e!770795))))

(assert (=> d!343416 (= res!541386 (= (content!1692 lt!410932) ((_ map or) (content!1692 (t!112445 call!83534)) (content!1692 call!83533))))))

(declare-fun e!770796 () List!12069)

(assert (=> d!343416 (= lt!410932 e!770796)))

(declare-fun c!200170 () Bool)

(assert (=> d!343416 (= c!200170 ((_ is Nil!12045) (t!112445 call!83534)))))

(assert (=> d!343416 (= (++!3084 (t!112445 call!83534) call!83533) lt!410932)))

(declare-fun b!1200983 () Bool)

(assert (=> b!1200983 (= e!770796 (Cons!12045 (h!17446 (t!112445 call!83534)) (++!3084 (t!112445 (t!112445 call!83534)) call!83533)))))

(declare-fun b!1200982 () Bool)

(assert (=> b!1200982 (= e!770796 call!83533)))

(declare-fun b!1200984 () Bool)

(declare-fun res!541387 () Bool)

(assert (=> b!1200984 (=> (not res!541387) (not e!770795))))

(assert (=> b!1200984 (= res!541387 (= (size!9575 lt!410932) (+ (size!9575 (t!112445 call!83534)) (size!9575 call!83533))))))

(assert (= (and d!343416 c!200170) b!1200982))

(assert (= (and d!343416 (not c!200170)) b!1200983))

(assert (= (and d!343416 res!541386) b!1200984))

(assert (= (and b!1200984 res!541387) b!1200985))

(declare-fun m!1376503 () Bool)

(assert (=> d!343416 m!1376503))

(assert (=> d!343416 m!1376331))

(assert (=> d!343416 m!1376131))

(declare-fun m!1376505 () Bool)

(assert (=> b!1200983 m!1376505))

(declare-fun m!1376507 () Bool)

(assert (=> b!1200984 m!1376507))

(declare-fun m!1376509 () Bool)

(assert (=> b!1200984 m!1376509))

(assert (=> b!1200984 m!1376141))

(assert (=> b!1200640 d!343416))

(declare-fun b!1200986 () Bool)

(declare-fun res!541392 () Bool)

(declare-fun e!770798 () Bool)

(assert (=> b!1200986 (=> (not res!541392) (not e!770798))))

(assert (=> b!1200986 (= res!541392 (<= (- (height!572 (left!10515 (right!10845 t!4115))) (height!572 (right!10845 (right!10845 t!4115)))) 1))))

(declare-fun b!1200987 () Bool)

(declare-fun res!541391 () Bool)

(assert (=> b!1200987 (=> (not res!541391) (not e!770798))))

(assert (=> b!1200987 (= res!541391 (isBalanced!1163 (right!10845 (right!10845 t!4115))))))

(declare-fun b!1200988 () Bool)

(declare-fun res!541389 () Bool)

(assert (=> b!1200988 (=> (not res!541389) (not e!770798))))

(assert (=> b!1200988 (= res!541389 (isBalanced!1163 (left!10515 (right!10845 t!4115))))))

(declare-fun b!1200989 () Bool)

(declare-fun e!770797 () Bool)

(assert (=> b!1200989 (= e!770797 e!770798)))

(declare-fun res!541390 () Bool)

(assert (=> b!1200989 (=> (not res!541390) (not e!770798))))

(assert (=> b!1200989 (= res!541390 (<= (- 1) (- (height!572 (left!10515 (right!10845 t!4115))) (height!572 (right!10845 (right!10845 t!4115))))))))

(declare-fun b!1200990 () Bool)

(assert (=> b!1200990 (= e!770798 (not (isEmpty!7265 (right!10845 (right!10845 t!4115)))))))

(declare-fun d!343418 () Bool)

(declare-fun res!541388 () Bool)

(assert (=> d!343418 (=> res!541388 e!770797)))

(assert (=> d!343418 (= res!541388 (not ((_ is Node!3978) (right!10845 t!4115))))))

(assert (=> d!343418 (= (isBalanced!1163 (right!10845 t!4115)) e!770797)))

(declare-fun b!1200991 () Bool)

(declare-fun res!541393 () Bool)

(assert (=> b!1200991 (=> (not res!541393) (not e!770798))))

(assert (=> b!1200991 (= res!541393 (not (isEmpty!7265 (left!10515 (right!10845 t!4115)))))))

(assert (= (and d!343418 (not res!541388)) b!1200989))

(assert (= (and b!1200989 res!541390) b!1200986))

(assert (= (and b!1200986 res!541392) b!1200988))

(assert (= (and b!1200988 res!541389) b!1200987))

(assert (= (and b!1200987 res!541391) b!1200991))

(assert (= (and b!1200991 res!541393) b!1200990))

(declare-fun m!1376511 () Bool)

(assert (=> b!1200990 m!1376511))

(declare-fun m!1376513 () Bool)

(assert (=> b!1200987 m!1376513))

(declare-fun m!1376515 () Bool)

(assert (=> b!1200988 m!1376515))

(declare-fun m!1376517 () Bool)

(assert (=> b!1200991 m!1376517))

(declare-fun m!1376519 () Bool)

(assert (=> b!1200989 m!1376519))

(declare-fun m!1376521 () Bool)

(assert (=> b!1200989 m!1376521))

(assert (=> b!1200986 m!1376519))

(assert (=> b!1200986 m!1376521))

(assert (=> b!1200695 d!343418))

(declare-fun d!343420 () Bool)

(declare-fun res!541394 () Bool)

(declare-fun e!770799 () Bool)

(assert (=> d!343420 (=> (not res!541394) (not e!770799))))

(assert (=> d!343420 (= res!541394 (= (csize!8186 (right!10845 t!4115)) (+ (size!9574 (left!10515 (right!10845 t!4115))) (size!9574 (right!10845 (right!10845 t!4115))))))))

(assert (=> d!343420 (= (inv!16130 (right!10845 t!4115)) e!770799)))

(declare-fun b!1200992 () Bool)

(declare-fun res!541395 () Bool)

(assert (=> b!1200992 (=> (not res!541395) (not e!770799))))

(assert (=> b!1200992 (= res!541395 (and (not (= (left!10515 (right!10845 t!4115)) Empty!3978)) (not (= (right!10845 (right!10845 t!4115)) Empty!3978))))))

(declare-fun b!1200993 () Bool)

(declare-fun res!541396 () Bool)

(assert (=> b!1200993 (=> (not res!541396) (not e!770799))))

(assert (=> b!1200993 (= res!541396 (= (cheight!4189 (right!10845 t!4115)) (+ (max!0 (height!572 (left!10515 (right!10845 t!4115))) (height!572 (right!10845 (right!10845 t!4115)))) 1)))))

(declare-fun b!1200994 () Bool)

(assert (=> b!1200994 (= e!770799 (<= 0 (cheight!4189 (right!10845 t!4115))))))

(assert (= (and d!343420 res!541394) b!1200992))

(assert (= (and b!1200992 res!541395) b!1200993))

(assert (= (and b!1200993 res!541396) b!1200994))

(declare-fun m!1376523 () Bool)

(assert (=> d!343420 m!1376523))

(declare-fun m!1376525 () Bool)

(assert (=> d!343420 m!1376525))

(assert (=> b!1200993 m!1376519))

(assert (=> b!1200993 m!1376521))

(assert (=> b!1200993 m!1376519))

(assert (=> b!1200993 m!1376521))

(declare-fun m!1376527 () Bool)

(assert (=> b!1200993 m!1376527))

(assert (=> b!1200709 d!343420))

(declare-fun b!1200995 () Bool)

(declare-fun res!541401 () Bool)

(declare-fun e!770801 () Bool)

(assert (=> b!1200995 (=> (not res!541401) (not e!770801))))

(assert (=> b!1200995 (= res!541401 (<= (- (height!572 (left!10515 (left!10515 t!4115))) (height!572 (right!10845 (left!10515 t!4115)))) 1))))

(declare-fun b!1200996 () Bool)

(declare-fun res!541400 () Bool)

(assert (=> b!1200996 (=> (not res!541400) (not e!770801))))

(assert (=> b!1200996 (= res!541400 (isBalanced!1163 (right!10845 (left!10515 t!4115))))))

(declare-fun b!1200997 () Bool)

(declare-fun res!541398 () Bool)

(assert (=> b!1200997 (=> (not res!541398) (not e!770801))))

(assert (=> b!1200997 (= res!541398 (isBalanced!1163 (left!10515 (left!10515 t!4115))))))

(declare-fun b!1200998 () Bool)

(declare-fun e!770800 () Bool)

(assert (=> b!1200998 (= e!770800 e!770801)))

(declare-fun res!541399 () Bool)

(assert (=> b!1200998 (=> (not res!541399) (not e!770801))))

(assert (=> b!1200998 (= res!541399 (<= (- 1) (- (height!572 (left!10515 (left!10515 t!4115))) (height!572 (right!10845 (left!10515 t!4115))))))))

(declare-fun b!1200999 () Bool)

(assert (=> b!1200999 (= e!770801 (not (isEmpty!7265 (right!10845 (left!10515 t!4115)))))))

(declare-fun d!343422 () Bool)

(declare-fun res!541397 () Bool)

(assert (=> d!343422 (=> res!541397 e!770800)))

(assert (=> d!343422 (= res!541397 (not ((_ is Node!3978) (left!10515 t!4115))))))

(assert (=> d!343422 (= (isBalanced!1163 (left!10515 t!4115)) e!770800)))

(declare-fun b!1201000 () Bool)

(declare-fun res!541402 () Bool)

(assert (=> b!1201000 (=> (not res!541402) (not e!770801))))

(assert (=> b!1201000 (= res!541402 (not (isEmpty!7265 (left!10515 (left!10515 t!4115)))))))

(assert (= (and d!343422 (not res!541397)) b!1200998))

(assert (= (and b!1200998 res!541399) b!1200995))

(assert (= (and b!1200995 res!541401) b!1200997))

(assert (= (and b!1200997 res!541398) b!1200996))

(assert (= (and b!1200996 res!541400) b!1201000))

(assert (= (and b!1201000 res!541402) b!1200999))

(declare-fun m!1376529 () Bool)

(assert (=> b!1200999 m!1376529))

(declare-fun m!1376531 () Bool)

(assert (=> b!1200996 m!1376531))

(declare-fun m!1376533 () Bool)

(assert (=> b!1200997 m!1376533))

(declare-fun m!1376535 () Bool)

(assert (=> b!1201000 m!1376535))

(assert (=> b!1200998 m!1376345))

(assert (=> b!1200998 m!1376347))

(assert (=> b!1200995 m!1376345))

(assert (=> b!1200995 m!1376347))

(assert (=> b!1200696 d!343422))

(declare-fun d!343424 () Bool)

(declare-fun lt!410933 () Int)

(assert (=> d!343424 (>= lt!410933 0)))

(declare-fun e!770804 () Int)

(assert (=> d!343424 (= lt!410933 e!770804)))

(declare-fun c!200171 () Bool)

(assert (=> d!343424 (= c!200171 ((_ is Nil!12045) lt!410892))))

(assert (=> d!343424 (= (size!9575 lt!410892) lt!410933)))

(declare-fun b!1201007 () Bool)

(assert (=> b!1201007 (= e!770804 0)))

(declare-fun b!1201008 () Bool)

(assert (=> b!1201008 (= e!770804 (+ 1 (size!9575 (t!112445 lt!410892))))))

(assert (= (and d!343424 c!200171) b!1201007))

(assert (= (and d!343424 (not c!200171)) b!1201008))

(declare-fun m!1376537 () Bool)

(assert (=> b!1201008 m!1376537))

(assert (=> b!1200641 d!343424))

(declare-fun d!343426 () Bool)

(declare-fun lt!410934 () Int)

(assert (=> d!343426 (>= lt!410934 0)))

(declare-fun e!770805 () Int)

(assert (=> d!343426 (= lt!410934 e!770805)))

(declare-fun c!200172 () Bool)

(assert (=> d!343426 (= c!200172 ((_ is Nil!12045) call!83534))))

(assert (=> d!343426 (= (size!9575 call!83534) lt!410934)))

(declare-fun b!1201009 () Bool)

(assert (=> b!1201009 (= e!770805 0)))

(declare-fun b!1201010 () Bool)

(assert (=> b!1201010 (= e!770805 (+ 1 (size!9575 (t!112445 call!83534))))))

(assert (= (and d!343426 c!200172) b!1201009))

(assert (= (and d!343426 (not c!200172)) b!1201010))

(assert (=> b!1201010 m!1376509))

(assert (=> b!1200641 d!343426))

(declare-fun d!343428 () Bool)

(declare-fun lt!410935 () Int)

(assert (=> d!343428 (>= lt!410935 0)))

(declare-fun e!770806 () Int)

(assert (=> d!343428 (= lt!410935 e!770806)))

(declare-fun c!200173 () Bool)

(assert (=> d!343428 (= c!200173 ((_ is Nil!12045) call!83533))))

(assert (=> d!343428 (= (size!9575 call!83533) lt!410935)))

(declare-fun b!1201011 () Bool)

(assert (=> b!1201011 (= e!770806 0)))

(declare-fun b!1201012 () Bool)

(assert (=> b!1201012 (= e!770806 (+ 1 (size!9575 (t!112445 call!83533))))))

(assert (= (and d!343428 c!200173) b!1201011))

(assert (= (and d!343428 (not c!200173)) b!1201012))

(declare-fun m!1376539 () Bool)

(assert (=> b!1201012 m!1376539))

(assert (=> b!1200641 d!343428))

(assert (=> d!343262 d!343258))

(assert (=> d!343262 d!343278))

(assert (=> d!343262 d!343250))

(declare-fun b!1201054 () Bool)

(declare-fun e!770827 () List!12069)

(declare-fun call!83592 () List!12069)

(assert (=> b!1201054 (= e!770827 call!83592)))

(declare-fun b!1201055 () Bool)

(declare-fun e!770829 () Int)

(declare-fun call!83590 () Int)

(assert (=> b!1201055 (= e!770829 (- until!31 call!83590))))

(declare-fun b!1201056 () Bool)

(declare-fun e!770828 () List!12069)

(declare-fun call!83591 () List!12069)

(assert (=> b!1201056 (= e!770828 call!83591)))

(declare-fun b!1201057 () Bool)

(assert (=> b!1201057 (= e!770827 (++!3084 (slice!477 lt!410857 from!553 call!83590) call!83592))))

(declare-fun bm!83585 () Bool)

(declare-fun c!200189 () Bool)

(declare-fun c!200188 () Bool)

(assert (=> bm!83585 (= call!83591 (slice!477 (ite c!200189 lt!410859 (ite c!200188 lt!410857 lt!410859)) (ite c!200189 (- from!553 call!83590) (ite c!200188 from!553 0)) (ite c!200189 (- until!31 call!83590) e!770829)))))

(declare-fun bm!83586 () Bool)

(declare-fun c!200187 () Bool)

(assert (=> bm!83586 (= c!200187 c!200188)))

(assert (=> bm!83586 (= call!83592 call!83591)))

(declare-fun bm!83587 () Bool)

(assert (=> bm!83587 (= call!83590 (size!9575 lt!410857))))

(declare-fun d!343430 () Bool)

(assert (=> d!343430 (= (slice!477 (++!3084 lt!410857 lt!410859) from!553 until!31) e!770828)))

(assert (=> d!343430 (= c!200189 (<= (size!9575 lt!410857) from!553))))

(assert (=> d!343430 true))

(declare-fun _$8!212 () Unit!18460)

(assert (=> d!343430 (= (choose!7733 lt!410857 lt!410859 from!553 until!31) _$8!212)))

(declare-fun b!1201058 () Bool)

(assert (=> b!1201058 (= e!770829 until!31)))

(declare-fun b!1201059 () Bool)

(assert (=> b!1201059 (= e!770828 e!770827)))

(assert (=> b!1201059 (= c!200188 (<= until!31 call!83590))))

(assert (= (and d!343430 c!200189) b!1201056))

(assert (= (and d!343430 (not c!200189)) b!1201059))

(assert (= (and b!1201059 c!200188) b!1201054))

(assert (= (and b!1201059 (not c!200188)) b!1201057))

(assert (= (or b!1201054 b!1201057) bm!83586))

(assert (= (and bm!83586 c!200187) b!1201058))

(assert (= (and bm!83586 (not c!200187)) b!1201055))

(assert (= (or b!1201056 b!1201055 b!1201057 b!1201059) bm!83587))

(assert (= (or b!1201056 bm!83586) bm!83585))

(declare-fun m!1376597 () Bool)

(assert (=> b!1201057 m!1376597))

(assert (=> b!1201057 m!1376597))

(declare-fun m!1376599 () Bool)

(assert (=> b!1201057 m!1376599))

(declare-fun m!1376603 () Bool)

(assert (=> bm!83585 m!1376603))

(assert (=> bm!83587 m!1375963))

(assert (=> d!343430 m!1375971))

(assert (=> d!343430 m!1375971))

(assert (=> d!343430 m!1375973))

(assert (=> d!343430 m!1375963))

(assert (=> d!343262 d!343430))

(assert (=> b!1200697 d!343398))

(assert (=> b!1200697 d!343402))

(declare-fun d!343456 () Bool)

(declare-fun res!541428 () Bool)

(declare-fun e!770832 () Bool)

(assert (=> d!343456 (=> (not res!541428) (not e!770832))))

(assert (=> d!343456 (= res!541428 (<= (size!9575 (list!4490 (xs!6685 (right!10845 t!4115)))) 512))))

(assert (=> d!343456 (= (inv!16131 (right!10845 t!4115)) e!770832)))

(declare-fun b!1201064 () Bool)

(declare-fun res!541429 () Bool)

(assert (=> b!1201064 (=> (not res!541429) (not e!770832))))

(assert (=> b!1201064 (= res!541429 (= (csize!8187 (right!10845 t!4115)) (size!9575 (list!4490 (xs!6685 (right!10845 t!4115))))))))

(declare-fun b!1201065 () Bool)

(assert (=> b!1201065 (= e!770832 (and (> (csize!8187 (right!10845 t!4115)) 0) (<= (csize!8187 (right!10845 t!4115)) 512)))))

(assert (= (and d!343456 res!541428) b!1201064))

(assert (= (and b!1201064 res!541429) b!1201065))

(assert (=> d!343456 m!1376067))

(assert (=> d!343456 m!1376067))

(declare-fun m!1376609 () Bool)

(assert (=> d!343456 m!1376609))

(assert (=> b!1201064 m!1376067))

(assert (=> b!1201064 m!1376067))

(assert (=> b!1201064 m!1376609))

(assert (=> b!1200711 d!343456))

(declare-fun d!343460 () Bool)

(declare-fun lt!410946 () Bool)

(declare-fun isEmpty!7267 (List!12069) Bool)

(assert (=> d!343460 (= lt!410946 (isEmpty!7267 (list!4489 (right!10845 t!4115))))))

(assert (=> d!343460 (= lt!410946 (= (size!9574 (right!10845 t!4115)) 0))))

(assert (=> d!343460 (= (isEmpty!7265 (right!10845 t!4115)) lt!410946)))

(declare-fun bs!288281 () Bool)

(assert (= bs!288281 d!343460))

(assert (=> bs!288281 m!1375965))

(assert (=> bs!288281 m!1375965))

(declare-fun m!1376637 () Bool)

(assert (=> bs!288281 m!1376637))

(declare-fun m!1376639 () Bool)

(assert (=> bs!288281 m!1376639))

(assert (=> b!1200698 d!343460))

(declare-fun d!343478 () Bool)

(declare-fun c!200196 () Bool)

(assert (=> d!343478 (= c!200196 ((_ is Node!3978) (left!10515 (right!10845 t!4115))))))

(declare-fun e!770841 () Bool)

(assert (=> d!343478 (= (inv!16126 (left!10515 (right!10845 t!4115))) e!770841)))

(declare-fun b!1201082 () Bool)

(assert (=> b!1201082 (= e!770841 (inv!16130 (left!10515 (right!10845 t!4115))))))

(declare-fun b!1201083 () Bool)

(declare-fun e!770842 () Bool)

(assert (=> b!1201083 (= e!770841 e!770842)))

(declare-fun res!541434 () Bool)

(assert (=> b!1201083 (= res!541434 (not ((_ is Leaf!6092) (left!10515 (right!10845 t!4115)))))))

(assert (=> b!1201083 (=> res!541434 e!770842)))

(declare-fun b!1201084 () Bool)

(assert (=> b!1201084 (= e!770842 (inv!16131 (left!10515 (right!10845 t!4115))))))

(assert (= (and d!343478 c!200196) b!1201082))

(assert (= (and d!343478 (not c!200196)) b!1201083))

(assert (= (and b!1201083 (not res!541434)) b!1201084))

(declare-fun m!1376641 () Bool)

(assert (=> b!1201082 m!1376641))

(declare-fun m!1376643 () Bool)

(assert (=> b!1201084 m!1376643))

(assert (=> b!1200728 d!343478))

(declare-fun d!343480 () Bool)

(declare-fun c!200197 () Bool)

(assert (=> d!343480 (= c!200197 ((_ is Node!3978) (right!10845 (right!10845 t!4115))))))

(declare-fun e!770843 () Bool)

(assert (=> d!343480 (= (inv!16126 (right!10845 (right!10845 t!4115))) e!770843)))

(declare-fun b!1201085 () Bool)

(assert (=> b!1201085 (= e!770843 (inv!16130 (right!10845 (right!10845 t!4115))))))

(declare-fun b!1201086 () Bool)

(declare-fun e!770844 () Bool)

(assert (=> b!1201086 (= e!770843 e!770844)))

(declare-fun res!541435 () Bool)

(assert (=> b!1201086 (= res!541435 (not ((_ is Leaf!6092) (right!10845 (right!10845 t!4115)))))))

(assert (=> b!1201086 (=> res!541435 e!770844)))

(declare-fun b!1201087 () Bool)

(assert (=> b!1201087 (= e!770844 (inv!16131 (right!10845 (right!10845 t!4115))))))

(assert (= (and d!343480 c!200197) b!1201085))

(assert (= (and d!343480 (not c!200197)) b!1201086))

(assert (= (and b!1201086 (not res!541435)) b!1201087))

(declare-fun m!1376645 () Bool)

(assert (=> b!1201085 m!1376645))

(declare-fun m!1376647 () Bool)

(assert (=> b!1201087 m!1376647))

(assert (=> b!1200728 d!343480))

(assert (=> bm!83536 d!343250))

(declare-fun d!343482 () Bool)

(assert (=> d!343482 (= (list!4490 (xs!6685 (right!10845 t!4115))) (innerList!4038 (xs!6685 (right!10845 t!4115))))))

(assert (=> b!1200572 d!343482))

(declare-fun d!343484 () Bool)

(declare-fun lt!410947 () Int)

(assert (=> d!343484 (>= lt!410947 0)))

(assert (=> d!343484 (= lt!410947 (+ 1 (ListPrimitiveSize!79 (innerList!4038 (xs!6685 (left!10515 t!4115))))))))

(assert (=> d!343484 (= (IArrayPrimitiveSize!8 (xs!6685 (left!10515 t!4115))) lt!410947)))

(declare-fun bs!288282 () Bool)

(assert (= bs!288282 d!343484))

(declare-fun m!1376649 () Bool)

(assert (=> bs!288282 m!1376649))

(assert (=> b!1200625 d!343484))

(declare-fun d!343486 () Bool)

(declare-fun res!541436 () Bool)

(declare-fun e!770845 () Bool)

(assert (=> d!343486 (=> (not res!541436) (not e!770845))))

(assert (=> d!343486 (= res!541436 (= (csize!8186 t!4115) (+ (size!9574 (left!10515 t!4115)) (size!9574 (right!10845 t!4115)))))))

(assert (=> d!343486 (= (inv!16130 t!4115) e!770845)))

(declare-fun b!1201088 () Bool)

(declare-fun res!541437 () Bool)

(assert (=> b!1201088 (=> (not res!541437) (not e!770845))))

(assert (=> b!1201088 (= res!541437 (and (not (= (left!10515 t!4115) Empty!3978)) (not (= (right!10845 t!4115) Empty!3978))))))

(declare-fun b!1201089 () Bool)

(declare-fun res!541438 () Bool)

(assert (=> b!1201089 (=> (not res!541438) (not e!770845))))

(assert (=> b!1201089 (= res!541438 (= (cheight!4189 t!4115) (+ (max!0 (height!572 (left!10515 t!4115)) (height!572 (right!10845 t!4115))) 1)))))

(declare-fun b!1201090 () Bool)

(assert (=> b!1201090 (= e!770845 (<= 0 (cheight!4189 t!4115)))))

(assert (= (and d!343486 res!541436) b!1201088))

(assert (= (and b!1201088 res!541437) b!1201089))

(assert (= (and b!1201089 res!541438) b!1201090))

(assert (=> d!343486 m!1375967))

(assert (=> d!343486 m!1376639))

(assert (=> b!1201089 m!1376201))

(assert (=> b!1201089 m!1376203))

(assert (=> b!1201089 m!1376201))

(assert (=> b!1201089 m!1376203))

(declare-fun m!1376651 () Bool)

(assert (=> b!1201089 m!1376651))

(assert (=> b!1200483 d!343486))

(declare-fun d!343488 () Bool)

(declare-fun lt!410950 () Int)

(assert (=> d!343488 (>= lt!410950 0)))

(declare-fun e!770846 () Int)

(assert (=> d!343488 (= lt!410950 e!770846)))

(declare-fun c!200198 () Bool)

(assert (=> d!343488 (= c!200198 ((_ is Nil!12045) (innerList!4038 (xs!6685 t!4115))))))

(assert (=> d!343488 (= (size!9575 (innerList!4038 (xs!6685 t!4115))) lt!410950)))

(declare-fun b!1201091 () Bool)

(assert (=> b!1201091 (= e!770846 0)))

(declare-fun b!1201092 () Bool)

(assert (=> b!1201092 (= e!770846 (+ 1 (size!9575 (t!112445 (innerList!4038 (xs!6685 t!4115))))))))

(assert (= (and d!343488 c!200198) b!1201091))

(assert (= (and d!343488 (not c!200198)) b!1201092))

(declare-fun m!1376655 () Bool)

(assert (=> b!1201092 m!1376655))

(assert (=> d!343290 d!343488))

(declare-fun d!343490 () Bool)

(assert (=> d!343490 (= (slice!477 (ite c!200019 lt!410859 lt!410857) (ite c!200019 (- from!553 call!83541) from!553) (ite c!200019 (- until!31 call!83541) e!770571)) (take!131 (drop!603 (ite c!200019 lt!410859 lt!410857) (ite c!200019 (- from!553 call!83541) from!553)) (- (ite c!200019 (- until!31 call!83541) e!770571) (ite c!200019 (- from!553 call!83541) from!553))))))

(declare-fun bs!288285 () Bool)

(assert (= bs!288285 d!343490))

(declare-fun m!1376659 () Bool)

(assert (=> bs!288285 m!1376659))

(assert (=> bs!288285 m!1376659))

(declare-fun m!1376661 () Bool)

(assert (=> bs!288285 m!1376661))

(assert (=> bm!83537 d!343490))

(declare-fun b!1201096 () Bool)

(declare-fun e!770847 () Bool)

(declare-fun lt!410953 () List!12069)

(assert (=> b!1201096 (= e!770847 (or (not (= (list!4489 (right!10845 (right!10845 t!4115))) Nil!12045)) (= lt!410953 (list!4489 (left!10515 (right!10845 t!4115))))))))

(declare-fun d!343496 () Bool)

(assert (=> d!343496 e!770847))

(declare-fun res!541439 () Bool)

(assert (=> d!343496 (=> (not res!541439) (not e!770847))))

(assert (=> d!343496 (= res!541439 (= (content!1692 lt!410953) ((_ map or) (content!1692 (list!4489 (left!10515 (right!10845 t!4115)))) (content!1692 (list!4489 (right!10845 (right!10845 t!4115)))))))))

(declare-fun e!770848 () List!12069)

(assert (=> d!343496 (= lt!410953 e!770848)))

(declare-fun c!200199 () Bool)

(assert (=> d!343496 (= c!200199 ((_ is Nil!12045) (list!4489 (left!10515 (right!10845 t!4115)))))))

(assert (=> d!343496 (= (++!3084 (list!4489 (left!10515 (right!10845 t!4115))) (list!4489 (right!10845 (right!10845 t!4115)))) lt!410953)))

(declare-fun b!1201094 () Bool)

(assert (=> b!1201094 (= e!770848 (Cons!12045 (h!17446 (list!4489 (left!10515 (right!10845 t!4115)))) (++!3084 (t!112445 (list!4489 (left!10515 (right!10845 t!4115)))) (list!4489 (right!10845 (right!10845 t!4115))))))))

(declare-fun b!1201093 () Bool)

(assert (=> b!1201093 (= e!770848 (list!4489 (right!10845 (right!10845 t!4115))))))

(declare-fun b!1201095 () Bool)

(declare-fun res!541440 () Bool)

(assert (=> b!1201095 (=> (not res!541440) (not e!770847))))

(assert (=> b!1201095 (= res!541440 (= (size!9575 lt!410953) (+ (size!9575 (list!4489 (left!10515 (right!10845 t!4115)))) (size!9575 (list!4489 (right!10845 (right!10845 t!4115)))))))))

(assert (= (and d!343496 c!200199) b!1201093))

(assert (= (and d!343496 (not c!200199)) b!1201094))

(assert (= (and d!343496 res!541439) b!1201095))

(assert (= (and b!1201095 res!541440) b!1201096))

(declare-fun m!1376663 () Bool)

(assert (=> d!343496 m!1376663))

(assert (=> d!343496 m!1376069))

(declare-fun m!1376665 () Bool)

(assert (=> d!343496 m!1376665))

(assert (=> d!343496 m!1376071))

(declare-fun m!1376667 () Bool)

(assert (=> d!343496 m!1376667))

(assert (=> b!1201094 m!1376071))

(declare-fun m!1376669 () Bool)

(assert (=> b!1201094 m!1376669))

(declare-fun m!1376671 () Bool)

(assert (=> b!1201095 m!1376671))

(assert (=> b!1201095 m!1376069))

(declare-fun m!1376673 () Bool)

(assert (=> b!1201095 m!1376673))

(assert (=> b!1201095 m!1376071))

(declare-fun m!1376675 () Bool)

(assert (=> b!1201095 m!1376675))

(assert (=> b!1200573 d!343496))

(declare-fun b!1201099 () Bool)

(declare-fun e!770850 () List!12069)

(assert (=> b!1201099 (= e!770850 (list!4490 (xs!6685 (left!10515 (right!10845 t!4115)))))))

(declare-fun b!1201100 () Bool)

(assert (=> b!1201100 (= e!770850 (++!3084 (list!4489 (left!10515 (left!10515 (right!10845 t!4115)))) (list!4489 (right!10845 (left!10515 (right!10845 t!4115))))))))

(declare-fun b!1201097 () Bool)

(declare-fun e!770849 () List!12069)

(assert (=> b!1201097 (= e!770849 Nil!12045)))

(declare-fun b!1201098 () Bool)

(assert (=> b!1201098 (= e!770849 e!770850)))

(declare-fun c!200201 () Bool)

(assert (=> b!1201098 (= c!200201 ((_ is Leaf!6092) (left!10515 (right!10845 t!4115))))))

(declare-fun d!343498 () Bool)

(declare-fun c!200200 () Bool)

(assert (=> d!343498 (= c!200200 ((_ is Empty!3978) (left!10515 (right!10845 t!4115))))))

(assert (=> d!343498 (= (list!4489 (left!10515 (right!10845 t!4115))) e!770849)))

(assert (= (and d!343498 c!200200) b!1201097))

(assert (= (and d!343498 (not c!200200)) b!1201098))

(assert (= (and b!1201098 c!200201) b!1201099))

(assert (= (and b!1201098 (not c!200201)) b!1201100))

(declare-fun m!1376677 () Bool)

(assert (=> b!1201099 m!1376677))

(declare-fun m!1376679 () Bool)

(assert (=> b!1201100 m!1376679))

(declare-fun m!1376681 () Bool)

(assert (=> b!1201100 m!1376681))

(assert (=> b!1201100 m!1376679))

(assert (=> b!1201100 m!1376681))

(declare-fun m!1376683 () Bool)

(assert (=> b!1201100 m!1376683))

(assert (=> b!1200573 d!343498))

(declare-fun b!1201103 () Bool)

(declare-fun e!770852 () List!12069)

(assert (=> b!1201103 (= e!770852 (list!4490 (xs!6685 (right!10845 (right!10845 t!4115)))))))

(declare-fun b!1201104 () Bool)

(assert (=> b!1201104 (= e!770852 (++!3084 (list!4489 (left!10515 (right!10845 (right!10845 t!4115)))) (list!4489 (right!10845 (right!10845 (right!10845 t!4115))))))))

(declare-fun b!1201101 () Bool)

(declare-fun e!770851 () List!12069)

(assert (=> b!1201101 (= e!770851 Nil!12045)))

(declare-fun b!1201102 () Bool)

(assert (=> b!1201102 (= e!770851 e!770852)))

(declare-fun c!200203 () Bool)

(assert (=> b!1201102 (= c!200203 ((_ is Leaf!6092) (right!10845 (right!10845 t!4115))))))

(declare-fun d!343500 () Bool)

(declare-fun c!200202 () Bool)

(assert (=> d!343500 (= c!200202 ((_ is Empty!3978) (right!10845 (right!10845 t!4115))))))

(assert (=> d!343500 (= (list!4489 (right!10845 (right!10845 t!4115))) e!770851)))

(assert (= (and d!343500 c!200202) b!1201101))

(assert (= (and d!343500 (not c!200202)) b!1201102))

(assert (= (and b!1201102 c!200203) b!1201103))

(assert (= (and b!1201102 (not c!200203)) b!1201104))

(declare-fun m!1376685 () Bool)

(assert (=> b!1201103 m!1376685))

(declare-fun m!1376687 () Bool)

(assert (=> b!1201104 m!1376687))

(declare-fun m!1376689 () Bool)

(assert (=> b!1201104 m!1376689))

(assert (=> b!1201104 m!1376687))

(assert (=> b!1201104 m!1376689))

(declare-fun m!1376691 () Bool)

(assert (=> b!1201104 m!1376691))

(assert (=> b!1200573 d!343500))

(declare-fun d!343502 () Bool)

(declare-fun lt!410956 () Bool)

(assert (=> d!343502 (= lt!410956 (isEmpty!7267 (list!4489 (left!10515 t!4115))))))

(assert (=> d!343502 (= lt!410956 (= (size!9574 (left!10515 t!4115)) 0))))

(assert (=> d!343502 (= (isEmpty!7265 (left!10515 t!4115)) lt!410956)))

(declare-fun bs!288286 () Bool)

(assert (= bs!288286 d!343502))

(assert (=> bs!288286 m!1375975))

(assert (=> bs!288286 m!1375975))

(declare-fun m!1376693 () Bool)

(assert (=> bs!288286 m!1376693))

(assert (=> bs!288286 m!1375967))

(assert (=> b!1200699 d!343502))

(declare-fun d!343504 () Bool)

(assert (=> d!343504 (= (inv!16127 (xs!6685 (right!10845 t!4115))) (<= (size!9575 (innerList!4038 (xs!6685 (right!10845 t!4115)))) 2147483647))))

(declare-fun bs!288287 () Bool)

(assert (= bs!288287 d!343504))

(declare-fun m!1376695 () Bool)

(assert (=> bs!288287 m!1376695))

(assert (=> b!1200729 d!343504))

(declare-fun b!1201105 () Bool)

(declare-fun e!770853 () Bool)

(declare-fun tp!341290 () Bool)

(assert (=> b!1201105 (= e!770853 (and tp_is_empty!5983 tp!341290))))

(assert (=> b!1200730 (= tp!341288 e!770853)))

(assert (= (and b!1200730 ((_ is Cons!12045) (innerList!4038 (xs!6685 (right!10845 t!4115))))) b!1201105))

(declare-fun b!1201106 () Bool)

(declare-fun e!770854 () Bool)

(declare-fun tp!341291 () Bool)

(assert (=> b!1201106 (= e!770854 (and tp_is_empty!5983 tp!341291))))

(assert (=> b!1200727 (= tp!341285 e!770854)))

(assert (= (and b!1200727 ((_ is Cons!12045) (innerList!4038 (xs!6685 (left!10515 t!4115))))) b!1201106))

(declare-fun b!1201107 () Bool)

(declare-fun e!770855 () Bool)

(declare-fun tp!341292 () Bool)

(assert (=> b!1201107 (= e!770855 (and tp_is_empty!5983 tp!341292))))

(assert (=> b!1200716 (= tp!341277 e!770855)))

(assert (= (and b!1200716 ((_ is Cons!12045) (t!112445 (innerList!4038 (xs!6685 t!4115))))) b!1201107))

(declare-fun tp!341293 () Bool)

(declare-fun b!1201108 () Bool)

(declare-fun tp!341295 () Bool)

(declare-fun e!770856 () Bool)

(assert (=> b!1201108 (= e!770856 (and (inv!16126 (left!10515 (left!10515 (right!10845 t!4115)))) tp!341295 (inv!16126 (right!10845 (left!10515 (right!10845 t!4115)))) tp!341293))))

(declare-fun b!1201110 () Bool)

(declare-fun e!770857 () Bool)

(declare-fun tp!341294 () Bool)

(assert (=> b!1201110 (= e!770857 tp!341294)))

(declare-fun b!1201109 () Bool)

(assert (=> b!1201109 (= e!770856 (and (inv!16127 (xs!6685 (left!10515 (right!10845 t!4115)))) e!770857))))

(assert (=> b!1200728 (= tp!341289 (and (inv!16126 (left!10515 (right!10845 t!4115))) e!770856))))

(assert (= (and b!1200728 ((_ is Node!3978) (left!10515 (right!10845 t!4115)))) b!1201108))

(assert (= b!1201109 b!1201110))

(assert (= (and b!1200728 ((_ is Leaf!6092) (left!10515 (right!10845 t!4115)))) b!1201109))

(declare-fun m!1376699 () Bool)

(assert (=> b!1201108 m!1376699))

(declare-fun m!1376701 () Bool)

(assert (=> b!1201108 m!1376701))

(declare-fun m!1376703 () Bool)

(assert (=> b!1201109 m!1376703))

(assert (=> b!1200728 m!1376231))

(declare-fun b!1201111 () Bool)

(declare-fun e!770858 () Bool)

(declare-fun tp!341296 () Bool)

(declare-fun tp!341298 () Bool)

(assert (=> b!1201111 (= e!770858 (and (inv!16126 (left!10515 (right!10845 (right!10845 t!4115)))) tp!341298 (inv!16126 (right!10845 (right!10845 (right!10845 t!4115)))) tp!341296))))

(declare-fun b!1201113 () Bool)

(declare-fun e!770859 () Bool)

(declare-fun tp!341297 () Bool)

(assert (=> b!1201113 (= e!770859 tp!341297)))

(declare-fun b!1201112 () Bool)

(assert (=> b!1201112 (= e!770858 (and (inv!16127 (xs!6685 (right!10845 (right!10845 t!4115)))) e!770859))))

(assert (=> b!1200728 (= tp!341287 (and (inv!16126 (right!10845 (right!10845 t!4115))) e!770858))))

(assert (= (and b!1200728 ((_ is Node!3978) (right!10845 (right!10845 t!4115)))) b!1201111))

(assert (= b!1201112 b!1201113))

(assert (= (and b!1200728 ((_ is Leaf!6092) (right!10845 (right!10845 t!4115)))) b!1201112))

(declare-fun m!1376705 () Bool)

(assert (=> b!1201111 m!1376705))

(declare-fun m!1376707 () Bool)

(assert (=> b!1201111 m!1376707))

(declare-fun m!1376709 () Bool)

(assert (=> b!1201112 m!1376709))

(assert (=> b!1200728 m!1376233))

(declare-fun e!770860 () Bool)

(declare-fun b!1201114 () Bool)

(declare-fun tp!341299 () Bool)

(declare-fun tp!341301 () Bool)

(assert (=> b!1201114 (= e!770860 (and (inv!16126 (left!10515 (left!10515 (left!10515 t!4115)))) tp!341301 (inv!16126 (right!10845 (left!10515 (left!10515 t!4115)))) tp!341299))))

(declare-fun b!1201116 () Bool)

(declare-fun e!770861 () Bool)

(declare-fun tp!341300 () Bool)

(assert (=> b!1201116 (= e!770861 tp!341300)))

(declare-fun b!1201115 () Bool)

(assert (=> b!1201115 (= e!770860 (and (inv!16127 (xs!6685 (left!10515 (left!10515 t!4115)))) e!770861))))

(assert (=> b!1200725 (= tp!341286 (and (inv!16126 (left!10515 (left!10515 t!4115))) e!770860))))

(assert (= (and b!1200725 ((_ is Node!3978) (left!10515 (left!10515 t!4115)))) b!1201114))

(assert (= b!1201115 b!1201116))

(assert (= (and b!1200725 ((_ is Leaf!6092) (left!10515 (left!10515 t!4115)))) b!1201115))

(declare-fun m!1376711 () Bool)

(assert (=> b!1201114 m!1376711))

(declare-fun m!1376713 () Bool)

(assert (=> b!1201114 m!1376713))

(declare-fun m!1376715 () Bool)

(assert (=> b!1201115 m!1376715))

(assert (=> b!1200725 m!1376225))

(declare-fun e!770864 () Bool)

(declare-fun tp!341302 () Bool)

(declare-fun b!1201121 () Bool)

(declare-fun tp!341304 () Bool)

(assert (=> b!1201121 (= e!770864 (and (inv!16126 (left!10515 (right!10845 (left!10515 t!4115)))) tp!341304 (inv!16126 (right!10845 (right!10845 (left!10515 t!4115)))) tp!341302))))

(declare-fun b!1201123 () Bool)

(declare-fun e!770865 () Bool)

(declare-fun tp!341303 () Bool)

(assert (=> b!1201123 (= e!770865 tp!341303)))

(declare-fun b!1201122 () Bool)

(assert (=> b!1201122 (= e!770864 (and (inv!16127 (xs!6685 (right!10845 (left!10515 t!4115)))) e!770865))))

(assert (=> b!1200725 (= tp!341284 (and (inv!16126 (right!10845 (left!10515 t!4115))) e!770864))))

(assert (= (and b!1200725 ((_ is Node!3978) (right!10845 (left!10515 t!4115)))) b!1201121))

(assert (= b!1201122 b!1201123))

(assert (= (and b!1200725 ((_ is Leaf!6092) (right!10845 (left!10515 t!4115)))) b!1201122))

(declare-fun m!1376717 () Bool)

(assert (=> b!1201121 m!1376717))

(declare-fun m!1376719 () Bool)

(assert (=> b!1201121 m!1376719))

(declare-fun m!1376721 () Bool)

(assert (=> b!1201122 m!1376721))

(assert (=> b!1200725 m!1376227))

(check-sat (not b!1200932) (not b!1201089) (not b!1201094) (not b!1200884) (not b!1200732) (not b!1200780) (not b!1201057) (not b!1200770) (not b!1200741) (not bm!83556) (not b!1201111) (not b!1200814) (not b!1200991) (not d!343456) (not bm!83576) (not b!1200733) (not b!1201082) (not b!1201000) (not b!1201104) (not d!343348) (not b!1200725) (not b!1200917) (not b!1201116) (not b!1200956) (not d!343338) (not b!1200986) (not b!1201095) (not b!1200999) tp_is_empty!5983 (not b!1200749) (not b!1200748) (not b!1200977) (not b!1200969) (not d!343388) (not d!343408) (not b!1200993) (not d!343420) (not d!343384) (not b!1200753) (not b!1200967) (not b!1200788) (not b!1201010) (not b!1201110) (not d!343386) (not b!1200916) (not bm!83557) (not b!1200737) (not d!343430) (not b!1200975) (not b!1200763) (not b!1200759) (not b!1200752) (not b!1201108) (not b!1200934) (not b!1200919) (not b!1200918) (not b!1201123) (not b!1201105) (not d!343496) (not bm!83573) (not b!1201085) (not d!343382) (not b!1200765) (not b!1200987) (not d!343352) (not b!1200952) (not b!1201103) (not b!1200998) (not b!1200988) (not b!1201109) (not b!1200850) (not b!1200849) (not b!1200996) (not d!343486) (not d!343490) (not b!1201106) (not b!1200930) (not b!1200922) (not b!1200773) (not b!1201008) (not bm!83585) (not b!1200848) (not b!1200995) (not b!1200924) (not b!1200984) (not b!1200784) (not bm!83558) (not b!1201064) (not b!1200983) (not b!1200847) (not d!343316) (not d!343368) (not bm!83570) (not b!1200882) (not b!1201087) (not b!1200742) (not d!343322) (not b!1201114) (not d!343484) (not d!343504) (not b!1201112) (not d!343416) (not b!1201113) (not b!1200990) (not b!1200955) (not b!1201084) (not b!1201099) (not b!1200786) (not b!1200971) (not b!1200768) (not b!1200898) (not b!1200911) (not b!1200745) (not b!1200738) (not b!1200972) (not bm!83587) (not b!1200766) (not b!1200997) (not b!1200782) (not b!1200744) (not d!343502) (not d!343460) (not b!1200762) (not d!343414) (not b!1201115) (not b!1201092) (not b!1201012) (not d!343390) (not b!1200772) (not b!1201107) (not b!1201122) (not b!1201100) (not d!343378) (not b!1201121) (not d!343366) (not b!1200899) (not b!1200728) (not b!1200989))
(check-sat)
