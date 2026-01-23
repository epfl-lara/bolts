; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228694 () Bool)

(assert start!228694)

(declare-fun b!2317364 () Bool)

(declare-fun e!1485598 () Bool)

(declare-fun e!1485601 () Bool)

(assert (=> b!2317364 (= e!1485598 e!1485601)))

(declare-fun res!990128 () Bool)

(assert (=> b!2317364 (=> (not res!990128) (not e!1485601))))

(declare-fun lt!859355 () Int)

(assert (=> b!2317364 (= res!990128 (> lt!859355 512))))

(declare-datatypes ((T!43754 0))(
  ( (T!43755 (val!7958 Int)) )
))
(declare-datatypes ((List!27744 0))(
  ( (Nil!27646) (Cons!27646 (h!33047 T!43754) (t!207368 List!27744)) )
))
(declare-datatypes ((IArray!18107 0))(
  ( (IArray!18108 (innerList!9111 List!27744)) )
))
(declare-fun arr!18 () IArray!18107)

(declare-fun size!21880 (IArray!18107) Int)

(assert (=> b!2317364 (= lt!859355 (size!21880 arr!18))))

(declare-fun b!2317365 () Bool)

(declare-fun e!1485597 () Bool)

(declare-datatypes ((Conc!9051 0))(
  ( (Node!9051 (left!20973 Conc!9051) (right!21303 Conc!9051) (csize!18332 Int) (cheight!9262 Int)) (Leaf!13286 (xs!12001 IArray!18107) (csize!18333 Int)) (Empty!9051) )
))
(declare-fun acc!252 () Conc!9051)

(declare-fun e!1485599 () Bool)

(declare-fun inv!37530 (IArray!18107) Bool)

(assert (=> b!2317365 (= e!1485597 (and (inv!37530 (xs!12001 acc!252)) e!1485599))))

(declare-fun b!2317366 () Bool)

(declare-fun e!1485600 () Bool)

(declare-fun tp!735912 () Bool)

(assert (=> b!2317366 (= e!1485600 tp!735912)))

(declare-fun b!2317367 () Bool)

(declare-fun tp!735914 () Bool)

(assert (=> b!2317367 (= e!1485599 tp!735914)))

(declare-fun res!990127 () Bool)

(assert (=> start!228694 (=> (not res!990127) (not e!1485598))))

(declare-fun isBalanced!2745 (Conc!9051) Bool)

(assert (=> start!228694 (= res!990127 (isBalanced!2745 acc!252))))

(assert (=> start!228694 e!1485598))

(declare-fun inv!37531 (Conc!9051) Bool)

(assert (=> start!228694 (and (inv!37531 acc!252) e!1485597)))

(assert (=> start!228694 (and (inv!37530 arr!18) e!1485600)))

(declare-fun b!2317368 () Bool)

(declare-fun lt!859356 () IArray!18107)

(declare-fun lt!859357 () Conc!9051)

(declare-fun ++!6795 (List!27744 List!27744) List!27744)

(declare-fun list!10972 (Conc!9051) List!27744)

(declare-fun list!10973 (IArray!18107) List!27744)

(declare-fun fromArray!23 (IArray!18107 Conc!9051) Conc!9051)

(declare-fun ++!6796 (Conc!9051 Conc!9051) Conc!9051)

(assert (=> b!2317368 (= e!1485601 (not (= (++!6795 (++!6795 (list!10972 acc!252) (list!10972 lt!859357)) (list!10973 lt!859356)) (list!10972 (fromArray!23 lt!859356 (++!6796 acc!252 lt!859357))))))))

(declare-fun slice!675 (IArray!18107 Int Int) IArray!18107)

(assert (=> b!2317368 (= lt!859356 (slice!675 arr!18 512 lt!859355))))

(assert (=> b!2317368 (= lt!859357 (Leaf!13286 (slice!675 arr!18 0 512) 512))))

(declare-fun tp!735915 () Bool)

(declare-fun b!2317369 () Bool)

(declare-fun tp!735913 () Bool)

(assert (=> b!2317369 (= e!1485597 (and (inv!37531 (left!20973 acc!252)) tp!735913 (inv!37531 (right!21303 acc!252)) tp!735915))))

(assert (= (and start!228694 res!990127) b!2317364))

(assert (= (and b!2317364 res!990128) b!2317368))

(get-info :version)

(assert (= (and start!228694 ((_ is Node!9051) acc!252)) b!2317369))

(assert (= b!2317365 b!2317367))

(assert (= (and start!228694 ((_ is Leaf!13286) acc!252)) b!2317365))

(assert (= start!228694 b!2317366))

(declare-fun m!2744957 () Bool)

(assert (=> start!228694 m!2744957))

(declare-fun m!2744959 () Bool)

(assert (=> start!228694 m!2744959))

(declare-fun m!2744961 () Bool)

(assert (=> start!228694 m!2744961))

(declare-fun m!2744963 () Bool)

(assert (=> b!2317369 m!2744963))

(declare-fun m!2744965 () Bool)

(assert (=> b!2317369 m!2744965))

(declare-fun m!2744967 () Bool)

(assert (=> b!2317368 m!2744967))

(declare-fun m!2744969 () Bool)

(assert (=> b!2317368 m!2744969))

(declare-fun m!2744971 () Bool)

(assert (=> b!2317368 m!2744971))

(declare-fun m!2744973 () Bool)

(assert (=> b!2317368 m!2744973))

(declare-fun m!2744975 () Bool)

(assert (=> b!2317368 m!2744975))

(declare-fun m!2744977 () Bool)

(assert (=> b!2317368 m!2744977))

(declare-fun m!2744979 () Bool)

(assert (=> b!2317368 m!2744979))

(declare-fun m!2744981 () Bool)

(assert (=> b!2317368 m!2744981))

(declare-fun m!2744983 () Bool)

(assert (=> b!2317368 m!2744983))

(declare-fun m!2744985 () Bool)

(assert (=> b!2317368 m!2744985))

(assert (=> b!2317368 m!2744967))

(assert (=> b!2317368 m!2744975))

(assert (=> b!2317368 m!2744979))

(assert (=> b!2317368 m!2744985))

(assert (=> b!2317368 m!2744969))

(assert (=> b!2317368 m!2744981))

(declare-fun m!2744987 () Bool)

(assert (=> b!2317364 m!2744987))

(declare-fun m!2744989 () Bool)

(assert (=> b!2317365 m!2744989))

(check-sat (not b!2317364) (not b!2317369) (not b!2317365) (not b!2317367) (not b!2317366) (not b!2317368) (not start!228694))
(check-sat)
(get-model)

(declare-fun d!685051 () Bool)

(declare-fun size!21882 (List!27744) Int)

(assert (=> d!685051 (= (inv!37530 (xs!12001 acc!252)) (<= (size!21882 (innerList!9111 (xs!12001 acc!252))) 2147483647))))

(declare-fun bs!458883 () Bool)

(assert (= bs!458883 d!685051))

(declare-fun m!2744997 () Bool)

(assert (=> bs!458883 m!2744997))

(assert (=> b!2317365 d!685051))

(declare-fun d!685053 () Bool)

(declare-fun lt!859363 () Int)

(assert (=> d!685053 (= lt!859363 (size!21882 (list!10973 arr!18)))))

(declare-fun choose!13568 (IArray!18107) Int)

(assert (=> d!685053 (= lt!859363 (choose!13568 arr!18))))

(assert (=> d!685053 (= (size!21880 arr!18) lt!859363)))

(declare-fun bs!458884 () Bool)

(assert (= bs!458884 d!685053))

(declare-fun m!2744999 () Bool)

(assert (=> bs!458884 m!2744999))

(assert (=> bs!458884 m!2744999))

(declare-fun m!2745001 () Bool)

(assert (=> bs!458884 m!2745001))

(declare-fun m!2745003 () Bool)

(assert (=> bs!458884 m!2745003))

(assert (=> b!2317364 d!685053))

(declare-fun d!685055 () Bool)

(declare-fun c!367334 () Bool)

(assert (=> d!685055 (= c!367334 ((_ is Node!9051) (left!20973 acc!252)))))

(declare-fun e!1485614 () Bool)

(assert (=> d!685055 (= (inv!37531 (left!20973 acc!252)) e!1485614)))

(declare-fun b!2317388 () Bool)

(declare-fun inv!37534 (Conc!9051) Bool)

(assert (=> b!2317388 (= e!1485614 (inv!37534 (left!20973 acc!252)))))

(declare-fun b!2317389 () Bool)

(declare-fun e!1485615 () Bool)

(assert (=> b!2317389 (= e!1485614 e!1485615)))

(declare-fun res!990135 () Bool)

(assert (=> b!2317389 (= res!990135 (not ((_ is Leaf!13286) (left!20973 acc!252))))))

(assert (=> b!2317389 (=> res!990135 e!1485615)))

(declare-fun b!2317390 () Bool)

(declare-fun inv!37535 (Conc!9051) Bool)

(assert (=> b!2317390 (= e!1485615 (inv!37535 (left!20973 acc!252)))))

(assert (= (and d!685055 c!367334) b!2317388))

(assert (= (and d!685055 (not c!367334)) b!2317389))

(assert (= (and b!2317389 (not res!990135)) b!2317390))

(declare-fun m!2745015 () Bool)

(assert (=> b!2317388 m!2745015))

(declare-fun m!2745017 () Bool)

(assert (=> b!2317390 m!2745017))

(assert (=> b!2317369 d!685055))

(declare-fun d!685063 () Bool)

(declare-fun c!367335 () Bool)

(assert (=> d!685063 (= c!367335 ((_ is Node!9051) (right!21303 acc!252)))))

(declare-fun e!1485616 () Bool)

(assert (=> d!685063 (= (inv!37531 (right!21303 acc!252)) e!1485616)))

(declare-fun b!2317391 () Bool)

(assert (=> b!2317391 (= e!1485616 (inv!37534 (right!21303 acc!252)))))

(declare-fun b!2317392 () Bool)

(declare-fun e!1485617 () Bool)

(assert (=> b!2317392 (= e!1485616 e!1485617)))

(declare-fun res!990136 () Bool)

(assert (=> b!2317392 (= res!990136 (not ((_ is Leaf!13286) (right!21303 acc!252))))))

(assert (=> b!2317392 (=> res!990136 e!1485617)))

(declare-fun b!2317393 () Bool)

(assert (=> b!2317393 (= e!1485617 (inv!37535 (right!21303 acc!252)))))

(assert (= (and d!685063 c!367335) b!2317391))

(assert (= (and d!685063 (not c!367335)) b!2317392))

(assert (= (and b!2317392 (not res!990136)) b!2317393))

(declare-fun m!2745019 () Bool)

(assert (=> b!2317391 m!2745019))

(declare-fun m!2745021 () Bool)

(assert (=> b!2317393 m!2745021))

(assert (=> b!2317369 d!685063))

(declare-fun d!685065 () Bool)

(assert (=> d!685065 (= (list!10973 lt!859356) (innerList!9111 lt!859356))))

(assert (=> b!2317368 d!685065))

(declare-fun b!2317423 () Bool)

(declare-fun e!1485630 () List!27744)

(assert (=> b!2317423 (= e!1485630 (list!10972 lt!859357))))

(declare-fun b!2317425 () Bool)

(declare-fun res!990161 () Bool)

(declare-fun e!1485631 () Bool)

(assert (=> b!2317425 (=> (not res!990161) (not e!1485631))))

(declare-fun lt!859366 () List!27744)

(assert (=> b!2317425 (= res!990161 (= (size!21882 lt!859366) (+ (size!21882 (list!10972 acc!252)) (size!21882 (list!10972 lt!859357)))))))

(declare-fun b!2317426 () Bool)

(assert (=> b!2317426 (= e!1485631 (or (not (= (list!10972 lt!859357) Nil!27646)) (= lt!859366 (list!10972 acc!252))))))

(declare-fun b!2317424 () Bool)

(assert (=> b!2317424 (= e!1485630 (Cons!27646 (h!33047 (list!10972 acc!252)) (++!6795 (t!207368 (list!10972 acc!252)) (list!10972 lt!859357))))))

(declare-fun d!685067 () Bool)

(assert (=> d!685067 e!1485631))

(declare-fun res!990160 () Bool)

(assert (=> d!685067 (=> (not res!990160) (not e!1485631))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3731 (List!27744) (InoxSet T!43754))

(assert (=> d!685067 (= res!990160 (= (content!3731 lt!859366) ((_ map or) (content!3731 (list!10972 acc!252)) (content!3731 (list!10972 lt!859357)))))))

(assert (=> d!685067 (= lt!859366 e!1485630)))

(declare-fun c!367339 () Bool)

(assert (=> d!685067 (= c!367339 ((_ is Nil!27646) (list!10972 acc!252)))))

(assert (=> d!685067 (= (++!6795 (list!10972 acc!252) (list!10972 lt!859357)) lt!859366)))

(assert (= (and d!685067 c!367339) b!2317423))

(assert (= (and d!685067 (not c!367339)) b!2317424))

(assert (= (and d!685067 res!990160) b!2317425))

(assert (= (and b!2317425 res!990161) b!2317426))

(declare-fun m!2745041 () Bool)

(assert (=> b!2317425 m!2745041))

(assert (=> b!2317425 m!2744967))

(declare-fun m!2745043 () Bool)

(assert (=> b!2317425 m!2745043))

(assert (=> b!2317425 m!2744975))

(declare-fun m!2745045 () Bool)

(assert (=> b!2317425 m!2745045))

(assert (=> b!2317424 m!2744975))

(declare-fun m!2745047 () Bool)

(assert (=> b!2317424 m!2745047))

(declare-fun m!2745049 () Bool)

(assert (=> d!685067 m!2745049))

(assert (=> d!685067 m!2744967))

(declare-fun m!2745051 () Bool)

(assert (=> d!685067 m!2745051))

(assert (=> d!685067 m!2744975))

(declare-fun m!2745053 () Bool)

(assert (=> d!685067 m!2745053))

(assert (=> b!2317368 d!685067))

(declare-fun call!137909 () Int)

(declare-fun bm!137904 () Bool)

(declare-fun lt!859406 () Conc!9051)

(declare-fun c!367361 () Bool)

(declare-fun call!137910 () Conc!9051)

(assert (=> bm!137904 (= call!137910 (++!6796 (++!6796 acc!252 lt!859357) (ite c!367361 (Leaf!13286 lt!859356 call!137909) lt!859406)))))

(declare-fun b!2317479 () Bool)

(declare-fun e!1485658 () Conc!9051)

(assert (=> b!2317479 (= e!1485658 (++!6796 acc!252 lt!859357))))

(declare-fun bm!137905 () Bool)

(assert (=> bm!137905 (= call!137909 (size!21880 lt!859356))))

(declare-fun b!2317480 () Bool)

(assert (=> b!2317480 (= e!1485658 call!137910)))

(declare-fun b!2317481 () Bool)

(declare-fun e!1485660 () Conc!9051)

(assert (=> b!2317481 (= e!1485660 e!1485658)))

(declare-fun c!367360 () Bool)

(assert (=> b!2317481 (= c!367360 (= call!137909 0))))

(declare-fun b!2317482 () Bool)

(assert (=> b!2317482 (= e!1485660 (fromArray!23 (slice!675 lt!859356 512 call!137909) call!137910))))

(assert (=> b!2317482 (= lt!859406 (Leaf!13286 (slice!675 lt!859356 0 512) 512))))

(declare-fun lt!859404 () Conc!9051)

(assert (=> b!2317482 (= lt!859404 (fromArray!23 (slice!675 lt!859356 512 call!137909) call!137910))))

(declare-fun lt!859410 () List!27744)

(assert (=> b!2317482 (= lt!859410 (list!10972 (++!6796 acc!252 lt!859357)))))

(declare-fun lt!859401 () List!27744)

(assert (=> b!2317482 (= lt!859401 (list!10972 lt!859406))))

(declare-fun lt!859407 () List!27744)

(assert (=> b!2317482 (= lt!859407 (list!10973 (slice!675 lt!859356 512 call!137909)))))

(declare-datatypes ((Unit!40496 0))(
  ( (Unit!40497) )
))
(declare-fun lt!859400 () Unit!40496)

(declare-fun lemmaConcatAssociativity!1446 (List!27744 List!27744 List!27744) Unit!40496)

(assert (=> b!2317482 (= lt!859400 (lemmaConcatAssociativity!1446 lt!859410 lt!859401 lt!859407))))

(assert (=> b!2317482 (= (++!6795 (++!6795 lt!859410 lt!859401) lt!859407) (++!6795 lt!859410 (++!6795 lt!859401 lt!859407)))))

(declare-fun lt!859409 () Unit!40496)

(assert (=> b!2317482 (= lt!859409 lt!859400)))

(declare-fun lt!859408 () List!27744)

(assert (=> b!2317482 (= lt!859408 (list!10973 lt!859356))))

(declare-fun lt!859403 () Int)

(assert (=> b!2317482 (= lt!859403 512)))

(declare-fun lt!859405 () Unit!40496)

(declare-fun sliceSplit!13 (List!27744 Int) Unit!40496)

(assert (=> b!2317482 (= lt!859405 (sliceSplit!13 lt!859408 lt!859403))))

(declare-fun slice!676 (List!27744 Int Int) List!27744)

(assert (=> b!2317482 (= (++!6795 (slice!676 lt!859408 0 lt!859403) (slice!676 lt!859408 lt!859403 (size!21882 lt!859408))) lt!859408)))

(declare-fun lt!859402 () Unit!40496)

(assert (=> b!2317482 (= lt!859402 lt!859405)))

(declare-fun b!2317483 () Bool)

(declare-fun lt!859399 () Conc!9051)

(declare-fun e!1485659 () Bool)

(assert (=> b!2317483 (= e!1485659 (= (list!10972 lt!859399) (++!6795 (list!10972 (++!6796 acc!252 lt!859357)) (list!10973 lt!859356))))))

(declare-fun d!685075 () Bool)

(assert (=> d!685075 e!1485659))

(declare-fun res!990174 () Bool)

(assert (=> d!685075 (=> (not res!990174) (not e!1485659))))

(assert (=> d!685075 (= res!990174 (isBalanced!2745 lt!859399))))

(assert (=> d!685075 (= lt!859399 e!1485660)))

(assert (=> d!685075 (= c!367361 (<= (size!21880 lt!859356) 512))))

(assert (=> d!685075 (isBalanced!2745 (++!6796 acc!252 lt!859357))))

(assert (=> d!685075 (= (fromArray!23 lt!859356 (++!6796 acc!252 lt!859357)) lt!859399)))

(assert (= (and d!685075 c!367361) b!2317481))

(assert (= (and d!685075 (not c!367361)) b!2317482))

(assert (= (and b!2317481 c!367360) b!2317479))

(assert (= (and b!2317481 (not c!367360)) b!2317480))

(assert (= (or b!2317481 b!2317480 b!2317482) bm!137905))

(assert (= (or b!2317480 b!2317482) bm!137904))

(assert (= (and d!685075 res!990174) b!2317483))

(assert (=> bm!137904 m!2744985))

(declare-fun m!2745055 () Bool)

(assert (=> bm!137904 m!2745055))

(declare-fun m!2745057 () Bool)

(assert (=> b!2317482 m!2745057))

(declare-fun m!2745059 () Bool)

(assert (=> b!2317482 m!2745059))

(declare-fun m!2745061 () Bool)

(assert (=> b!2317482 m!2745061))

(declare-fun m!2745063 () Bool)

(assert (=> b!2317482 m!2745063))

(declare-fun m!2745065 () Bool)

(assert (=> b!2317482 m!2745065))

(assert (=> b!2317482 m!2745063))

(declare-fun m!2745067 () Bool)

(assert (=> b!2317482 m!2745067))

(declare-fun m!2745069 () Bool)

(assert (=> b!2317482 m!2745069))

(declare-fun m!2745071 () Bool)

(assert (=> b!2317482 m!2745071))

(assert (=> b!2317482 m!2744981))

(declare-fun m!2745073 () Bool)

(assert (=> b!2317482 m!2745073))

(declare-fun m!2745075 () Bool)

(assert (=> b!2317482 m!2745075))

(declare-fun m!2745077 () Bool)

(assert (=> b!2317482 m!2745077))

(assert (=> b!2317482 m!2745059))

(assert (=> b!2317482 m!2744985))

(declare-fun m!2745079 () Bool)

(assert (=> b!2317482 m!2745079))

(assert (=> b!2317482 m!2745077))

(assert (=> b!2317482 m!2745069))

(assert (=> b!2317482 m!2745067))

(declare-fun m!2745081 () Bool)

(assert (=> b!2317482 m!2745081))

(assert (=> b!2317482 m!2745063))

(declare-fun m!2745083 () Bool)

(assert (=> b!2317482 m!2745083))

(assert (=> b!2317482 m!2745081))

(declare-fun m!2745085 () Bool)

(assert (=> b!2317482 m!2745085))

(declare-fun m!2745087 () Bool)

(assert (=> b!2317482 m!2745087))

(declare-fun m!2745089 () Bool)

(assert (=> d!685075 m!2745089))

(declare-fun m!2745091 () Bool)

(assert (=> d!685075 m!2745091))

(assert (=> d!685075 m!2744985))

(declare-fun m!2745093 () Bool)

(assert (=> d!685075 m!2745093))

(assert (=> bm!137905 m!2745091))

(declare-fun m!2745095 () Bool)

(assert (=> b!2317483 m!2745095))

(assert (=> b!2317483 m!2744985))

(assert (=> b!2317483 m!2745079))

(assert (=> b!2317483 m!2744981))

(assert (=> b!2317483 m!2745079))

(assert (=> b!2317483 m!2744981))

(declare-fun m!2745097 () Bool)

(assert (=> b!2317483 m!2745097))

(assert (=> b!2317368 d!685075))

(declare-fun d!685077 () Bool)

(declare-fun lt!859413 () IArray!18107)

(assert (=> d!685077 (= lt!859413 (IArray!18108 (slice!676 (list!10973 arr!18) 0 512)))))

(declare-fun choose!13569 (IArray!18107 Int Int) IArray!18107)

(assert (=> d!685077 (= lt!859413 (choose!13569 arr!18 0 512))))

(declare-fun e!1485663 () Bool)

(assert (=> d!685077 e!1485663))

(declare-fun res!990177 () Bool)

(assert (=> d!685077 (=> (not res!990177) (not e!1485663))))

(assert (=> d!685077 (= res!990177 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!685077 (= (slice!675 arr!18 0 512) lt!859413)))

(declare-fun b!2317486 () Bool)

(assert (=> b!2317486 (= e!1485663 (<= 512 (size!21880 arr!18)))))

(assert (= (and d!685077 res!990177) b!2317486))

(assert (=> d!685077 m!2744999))

(assert (=> d!685077 m!2744999))

(declare-fun m!2745099 () Bool)

(assert (=> d!685077 m!2745099))

(declare-fun m!2745101 () Bool)

(assert (=> d!685077 m!2745101))

(assert (=> b!2317486 m!2744987))

(assert (=> b!2317368 d!685077))

(declare-fun b!2317516 () Bool)

(declare-fun e!1485678 () List!27744)

(assert (=> b!2317516 (= e!1485678 Nil!27646)))

(declare-fun d!685079 () Bool)

(declare-fun c!367374 () Bool)

(assert (=> d!685079 (= c!367374 ((_ is Empty!9051) acc!252))))

(assert (=> d!685079 (= (list!10972 acc!252) e!1485678)))

(declare-fun b!2317519 () Bool)

(declare-fun e!1485679 () List!27744)

(assert (=> b!2317519 (= e!1485679 (++!6795 (list!10972 (left!20973 acc!252)) (list!10972 (right!21303 acc!252))))))

(declare-fun b!2317517 () Bool)

(assert (=> b!2317517 (= e!1485678 e!1485679)))

(declare-fun c!367375 () Bool)

(assert (=> b!2317517 (= c!367375 ((_ is Leaf!13286) acc!252))))

(declare-fun b!2317518 () Bool)

(assert (=> b!2317518 (= e!1485679 (list!10973 (xs!12001 acc!252)))))

(assert (= (and d!685079 c!367374) b!2317516))

(assert (= (and d!685079 (not c!367374)) b!2317517))

(assert (= (and b!2317517 c!367375) b!2317518))

(assert (= (and b!2317517 (not c!367375)) b!2317519))

(declare-fun m!2745133 () Bool)

(assert (=> b!2317519 m!2745133))

(declare-fun m!2745135 () Bool)

(assert (=> b!2317519 m!2745135))

(assert (=> b!2317519 m!2745133))

(assert (=> b!2317519 m!2745135))

(declare-fun m!2745137 () Bool)

(assert (=> b!2317519 m!2745137))

(declare-fun m!2745139 () Bool)

(assert (=> b!2317518 m!2745139))

(assert (=> b!2317368 d!685079))

(declare-fun d!685083 () Bool)

(declare-fun lt!859418 () IArray!18107)

(assert (=> d!685083 (= lt!859418 (IArray!18108 (slice!676 (list!10973 arr!18) 512 lt!859355)))))

(assert (=> d!685083 (= lt!859418 (choose!13569 arr!18 512 lt!859355))))

(declare-fun e!1485680 () Bool)

(assert (=> d!685083 e!1485680))

(declare-fun res!990183 () Bool)

(assert (=> d!685083 (=> (not res!990183) (not e!1485680))))

(assert (=> d!685083 (= res!990183 (and (<= 0 512) (<= 512 lt!859355)))))

(assert (=> d!685083 (= (slice!675 arr!18 512 lt!859355) lt!859418)))

(declare-fun b!2317520 () Bool)

(assert (=> b!2317520 (= e!1485680 (<= lt!859355 (size!21880 arr!18)))))

(assert (= (and d!685083 res!990183) b!2317520))

(assert (=> d!685083 m!2744999))

(assert (=> d!685083 m!2744999))

(declare-fun m!2745141 () Bool)

(assert (=> d!685083 m!2745141))

(declare-fun m!2745143 () Bool)

(assert (=> d!685083 m!2745143))

(assert (=> b!2317520 m!2744987))

(assert (=> b!2317368 d!685083))

(declare-fun b!2317521 () Bool)

(declare-fun e!1485681 () List!27744)

(assert (=> b!2317521 (= e!1485681 Nil!27646)))

(declare-fun d!685085 () Bool)

(declare-fun c!367376 () Bool)

(assert (=> d!685085 (= c!367376 ((_ is Empty!9051) lt!859357))))

(assert (=> d!685085 (= (list!10972 lt!859357) e!1485681)))

(declare-fun b!2317524 () Bool)

(declare-fun e!1485682 () List!27744)

(assert (=> b!2317524 (= e!1485682 (++!6795 (list!10972 (left!20973 lt!859357)) (list!10972 (right!21303 lt!859357))))))

(declare-fun b!2317522 () Bool)

(assert (=> b!2317522 (= e!1485681 e!1485682)))

(declare-fun c!367377 () Bool)

(assert (=> b!2317522 (= c!367377 ((_ is Leaf!13286) lt!859357))))

(declare-fun b!2317523 () Bool)

(assert (=> b!2317523 (= e!1485682 (list!10973 (xs!12001 lt!859357)))))

(assert (= (and d!685085 c!367376) b!2317521))

(assert (= (and d!685085 (not c!367376)) b!2317522))

(assert (= (and b!2317522 c!367377) b!2317523))

(assert (= (and b!2317522 (not c!367377)) b!2317524))

(declare-fun m!2745145 () Bool)

(assert (=> b!2317524 m!2745145))

(declare-fun m!2745147 () Bool)

(assert (=> b!2317524 m!2745147))

(assert (=> b!2317524 m!2745145))

(assert (=> b!2317524 m!2745147))

(declare-fun m!2745149 () Bool)

(assert (=> b!2317524 m!2745149))

(declare-fun m!2745151 () Bool)

(assert (=> b!2317523 m!2745151))

(assert (=> b!2317368 d!685085))

(declare-fun b!2317533 () Bool)

(declare-fun e!1485687 () List!27744)

(assert (=> b!2317533 (= e!1485687 (list!10973 lt!859356))))

(declare-fun b!2317535 () Bool)

(declare-fun res!990185 () Bool)

(declare-fun e!1485688 () Bool)

(assert (=> b!2317535 (=> (not res!990185) (not e!1485688))))

(declare-fun lt!859419 () List!27744)

(assert (=> b!2317535 (= res!990185 (= (size!21882 lt!859419) (+ (size!21882 (++!6795 (list!10972 acc!252) (list!10972 lt!859357))) (size!21882 (list!10973 lt!859356)))))))

(declare-fun b!2317536 () Bool)

(assert (=> b!2317536 (= e!1485688 (or (not (= (list!10973 lt!859356) Nil!27646)) (= lt!859419 (++!6795 (list!10972 acc!252) (list!10972 lt!859357)))))))

(declare-fun b!2317534 () Bool)

(assert (=> b!2317534 (= e!1485687 (Cons!27646 (h!33047 (++!6795 (list!10972 acc!252) (list!10972 lt!859357))) (++!6795 (t!207368 (++!6795 (list!10972 acc!252) (list!10972 lt!859357))) (list!10973 lt!859356))))))

(declare-fun d!685087 () Bool)

(assert (=> d!685087 e!1485688))

(declare-fun res!990184 () Bool)

(assert (=> d!685087 (=> (not res!990184) (not e!1485688))))

(assert (=> d!685087 (= res!990184 (= (content!3731 lt!859419) ((_ map or) (content!3731 (++!6795 (list!10972 acc!252) (list!10972 lt!859357))) (content!3731 (list!10973 lt!859356)))))))

(assert (=> d!685087 (= lt!859419 e!1485687)))

(declare-fun c!367382 () Bool)

(assert (=> d!685087 (= c!367382 ((_ is Nil!27646) (++!6795 (list!10972 acc!252) (list!10972 lt!859357))))))

(assert (=> d!685087 (= (++!6795 (++!6795 (list!10972 acc!252) (list!10972 lt!859357)) (list!10973 lt!859356)) lt!859419)))

(assert (= (and d!685087 c!367382) b!2317533))

(assert (= (and d!685087 (not c!367382)) b!2317534))

(assert (= (and d!685087 res!990184) b!2317535))

(assert (= (and b!2317535 res!990185) b!2317536))

(declare-fun m!2745153 () Bool)

(assert (=> b!2317535 m!2745153))

(assert (=> b!2317535 m!2744979))

(declare-fun m!2745155 () Bool)

(assert (=> b!2317535 m!2745155))

(assert (=> b!2317535 m!2744981))

(declare-fun m!2745157 () Bool)

(assert (=> b!2317535 m!2745157))

(assert (=> b!2317534 m!2744981))

(declare-fun m!2745159 () Bool)

(assert (=> b!2317534 m!2745159))

(declare-fun m!2745161 () Bool)

(assert (=> d!685087 m!2745161))

(assert (=> d!685087 m!2744979))

(declare-fun m!2745163 () Bool)

(assert (=> d!685087 m!2745163))

(assert (=> d!685087 m!2744981))

(declare-fun m!2745165 () Bool)

(assert (=> d!685087 m!2745165))

(assert (=> b!2317368 d!685087))

(declare-fun b!2317646 () Bool)

(declare-fun e!1485754 () Conc!9051)

(declare-fun e!1485756 () Conc!9051)

(assert (=> b!2317646 (= e!1485754 e!1485756)))

(declare-fun lt!859475 () Conc!9051)

(declare-fun call!137970 () Conc!9051)

(assert (=> b!2317646 (= lt!859475 call!137970)))

(declare-fun c!367417 () Bool)

(declare-fun call!137968 () Int)

(declare-fun call!137978 () Int)

(assert (=> b!2317646 (= c!367417 (= call!137968 (- call!137978 3)))))

(declare-fun c!367419 () Bool)

(declare-fun call!137976 () Conc!9051)

(declare-fun c!367418 () Bool)

(declare-fun call!137977 () Conc!9051)

(declare-fun c!367421 () Bool)

(declare-fun lt!859473 () Conc!9051)

(declare-fun bm!137960 () Bool)

(declare-fun call!137973 () Conc!9051)

(declare-fun <>!206 (Conc!9051 Conc!9051) Conc!9051)

(assert (=> bm!137960 (= call!137977 (<>!206 (ite c!367421 acc!252 (ite c!367419 (ite c!367418 (left!20973 acc!252) call!137973) (ite c!367417 call!137976 lt!859475))) (ite c!367421 lt!859357 (ite c!367419 (ite c!367418 call!137973 lt!859473) (ite c!367417 (right!21303 lt!859357) call!137976)))))))

(declare-fun bm!137962 () Bool)

(declare-fun call!137971 () Conc!9051)

(assert (=> bm!137962 (= call!137976 call!137971)))

(declare-fun b!2317647 () Bool)

(declare-fun e!1485751 () Bool)

(assert (=> b!2317647 (= e!1485751 (isBalanced!2745 lt!859357))))

(declare-fun b!2317648 () Bool)

(declare-fun c!367415 () Bool)

(assert (=> b!2317648 (= c!367415 (>= call!137968 call!137978))))

(declare-fun e!1485755 () Conc!9051)

(declare-fun e!1485748 () Conc!9051)

(assert (=> b!2317648 (= e!1485755 e!1485748)))

(declare-fun bm!137963 () Bool)

(declare-fun call!137980 () Conc!9051)

(declare-fun c!367416 () Bool)

(assert (=> bm!137963 (= call!137980 (++!6796 (ite c!367419 (ite c!367415 (right!21303 acc!252) (right!21303 (right!21303 acc!252))) acc!252) (ite c!367419 lt!859357 (ite c!367416 (left!20973 lt!859357) (left!20973 (left!20973 lt!859357))))))))

(declare-fun call!137969 () Conc!9051)

(declare-fun call!137966 () Conc!9051)

(declare-fun bm!137964 () Bool)

(assert (=> bm!137964 (= call!137966 (<>!206 (ite c!367419 (ite c!367415 (left!20973 acc!252) (ite c!367418 (left!20973 (right!21303 acc!252)) (left!20973 acc!252))) (ite c!367416 call!137970 (ite c!367417 lt!859475 (right!21303 (left!20973 lt!859357))))) (ite c!367419 (ite c!367415 call!137969 (ite c!367418 lt!859473 (left!20973 (right!21303 acc!252)))) (ite c!367416 (right!21303 lt!859357) (ite c!367417 (right!21303 (left!20973 lt!859357)) (right!21303 lt!859357))))))))

(declare-fun b!2317649 () Bool)

(declare-fun e!1485752 () Conc!9051)

(assert (=> b!2317649 (= e!1485752 call!137977)))

(declare-fun b!2317650 () Bool)

(declare-fun e!1485750 () Conc!9051)

(assert (=> b!2317650 (= e!1485750 acc!252)))

(declare-fun b!2317651 () Bool)

(declare-fun call!137974 () Int)

(declare-fun call!137975 () Int)

(assert (=> b!2317651 (= c!367416 (>= call!137974 call!137975))))

(assert (=> b!2317651 (= e!1485755 e!1485754)))

(declare-fun bm!137965 () Bool)

(declare-fun call!137967 () Conc!9051)

(assert (=> bm!137965 (= call!137967 call!137977)))

(declare-fun bm!137966 () Bool)

(declare-fun height!1316 (Conc!9051) Int)

(assert (=> bm!137966 (= call!137974 (height!1316 (ite c!367419 acc!252 (right!21303 lt!859357))))))

(declare-fun bm!137967 () Bool)

(assert (=> bm!137967 (= call!137978 (height!1316 (ite c!367419 (right!21303 acc!252) lt!859357)))))

(declare-fun bm!137968 () Bool)

(assert (=> bm!137968 (= call!137968 (height!1316 (ite c!367419 (left!20973 acc!252) lt!859475)))))

(declare-fun b!2317652 () Bool)

(declare-fun res!990215 () Bool)

(declare-fun e!1485757 () Bool)

(assert (=> b!2317652 (=> (not res!990215) (not e!1485757))))

(declare-fun lt!859474 () Conc!9051)

(assert (=> b!2317652 (= res!990215 (isBalanced!2745 lt!859474))))

(declare-fun bm!137969 () Bool)

(declare-fun call!137972 () Conc!9051)

(assert (=> bm!137969 (= call!137973 call!137972)))

(declare-fun b!2317653 () Bool)

(declare-fun e!1485753 () Conc!9051)

(assert (=> b!2317653 (= e!1485753 e!1485750)))

(declare-fun c!367422 () Bool)

(assert (=> b!2317653 (= c!367422 (= lt!859357 Empty!9051))))

(declare-fun b!2317654 () Bool)

(declare-fun res!990214 () Bool)

(assert (=> b!2317654 (=> (not res!990214) (not e!1485757))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2317654 (= res!990214 (<= (height!1316 lt!859474) (+ (max!0 (height!1316 acc!252) (height!1316 lt!859357)) 1)))))

(declare-fun b!2317655 () Bool)

(assert (=> b!2317655 (= e!1485748 call!137972)))

(declare-fun b!2317656 () Bool)

(declare-fun call!137965 () Conc!9051)

(assert (=> b!2317656 (= e!1485756 call!137965)))

(declare-fun bm!137961 () Bool)

(assert (=> bm!137961 (= call!137970 call!137980)))

(declare-fun d!685089 () Bool)

(assert (=> d!685089 e!1485757))

(declare-fun res!990212 () Bool)

(assert (=> d!685089 (=> (not res!990212) (not e!1485757))))

(declare-fun appendAssocInst!600 (Conc!9051 Conc!9051) Bool)

(assert (=> d!685089 (= res!990212 (appendAssocInst!600 acc!252 lt!859357))))

(assert (=> d!685089 (= lt!859474 e!1485753)))

(declare-fun c!367420 () Bool)

(assert (=> d!685089 (= c!367420 (= acc!252 Empty!9051))))

(assert (=> d!685089 e!1485751))

(declare-fun res!990211 () Bool)

(assert (=> d!685089 (=> (not res!990211) (not e!1485751))))

(assert (=> d!685089 (= res!990211 (isBalanced!2745 acc!252))))

(assert (=> d!685089 (= (++!6796 acc!252 lt!859357) lt!859474)))

(declare-fun b!2317657 () Bool)

(assert (=> b!2317657 (= e!1485754 call!137971)))

(declare-fun bm!137970 () Bool)

(assert (=> bm!137970 (= call!137975 (height!1316 (ite c!367419 lt!859473 (left!20973 lt!859357))))))

(declare-fun bm!137971 () Bool)

(assert (=> bm!137971 (= call!137971 call!137966)))

(declare-fun bm!137972 () Bool)

(assert (=> bm!137972 (= call!137972 call!137966)))

(declare-fun bm!137973 () Bool)

(assert (=> bm!137973 (= call!137969 call!137980)))

(declare-fun b!2317658 () Bool)

(declare-fun e!1485749 () Conc!9051)

(assert (=> b!2317658 (= e!1485748 e!1485749)))

(assert (=> b!2317658 (= lt!859473 call!137969)))

(assert (=> b!2317658 (= c!367418 (= call!137975 (- call!137974 3)))))

(declare-fun b!2317659 () Bool)

(declare-fun lt!859472 () Int)

(assert (=> b!2317659 (= c!367421 (and (<= (- 1) lt!859472) (<= lt!859472 1)))))

(assert (=> b!2317659 (= lt!859472 (- (height!1316 lt!859357) (height!1316 acc!252)))))

(assert (=> b!2317659 (= e!1485750 e!1485752)))

(declare-fun bm!137974 () Bool)

(declare-fun call!137979 () Conc!9051)

(assert (=> bm!137974 (= call!137979 call!137967)))

(declare-fun b!2317660 () Bool)

(assert (=> b!2317660 (= e!1485757 (= (list!10972 lt!859474) (++!6795 (list!10972 acc!252) (list!10972 lt!859357))))))

(declare-fun b!2317661 () Bool)

(assert (=> b!2317661 (= e!1485749 call!137979)))

(declare-fun bm!137975 () Bool)

(assert (=> bm!137975 (= call!137965 call!137967)))

(declare-fun b!2317662 () Bool)

(assert (=> b!2317662 (= e!1485752 e!1485755)))

(assert (=> b!2317662 (= c!367419 (< lt!859472 (- 1)))))

(declare-fun b!2317663 () Bool)

(assert (=> b!2317663 (= e!1485753 lt!859357)))

(declare-fun b!2317664 () Bool)

(assert (=> b!2317664 (= e!1485756 call!137965)))

(declare-fun b!2317665 () Bool)

(declare-fun res!990213 () Bool)

(assert (=> b!2317665 (=> (not res!990213) (not e!1485757))))

(assert (=> b!2317665 (= res!990213 (>= (height!1316 lt!859474) (max!0 (height!1316 acc!252) (height!1316 lt!859357))))))

(declare-fun b!2317666 () Bool)

(assert (=> b!2317666 (= e!1485749 call!137979)))

(assert (= (and d!685089 res!990211) b!2317647))

(assert (= (and d!685089 c!367420) b!2317663))

(assert (= (and d!685089 (not c!367420)) b!2317653))

(assert (= (and b!2317653 c!367422) b!2317650))

(assert (= (and b!2317653 (not c!367422)) b!2317659))

(assert (= (and b!2317659 c!367421) b!2317649))

(assert (= (and b!2317659 (not c!367421)) b!2317662))

(assert (= (and b!2317662 c!367419) b!2317648))

(assert (= (and b!2317662 (not c!367419)) b!2317651))

(assert (= (and b!2317648 c!367415) b!2317655))

(assert (= (and b!2317648 (not c!367415)) b!2317658))

(assert (= (and b!2317658 c!367418) b!2317661))

(assert (= (and b!2317658 (not c!367418)) b!2317666))

(assert (= (or b!2317661 b!2317666) bm!137969))

(assert (= (or b!2317661 b!2317666) bm!137974))

(assert (= (or b!2317655 b!2317658) bm!137973))

(assert (= (or b!2317655 bm!137969) bm!137972))

(assert (= (and b!2317651 c!367416) b!2317657))

(assert (= (and b!2317651 (not c!367416)) b!2317646))

(assert (= (and b!2317646 c!367417) b!2317664))

(assert (= (and b!2317646 (not c!367417)) b!2317656))

(assert (= (or b!2317664 b!2317656) bm!137962))

(assert (= (or b!2317664 b!2317656) bm!137975))

(assert (= (or b!2317657 b!2317646) bm!137961))

(assert (= (or b!2317657 bm!137962) bm!137971))

(assert (= (or b!2317658 b!2317651) bm!137966))

(assert (= (or b!2317648 b!2317646) bm!137968))

(assert (= (or b!2317648 b!2317646) bm!137967))

(assert (= (or bm!137972 bm!137971) bm!137964))

(assert (= (or bm!137973 bm!137961) bm!137963))

(assert (= (or b!2317658 b!2317651) bm!137970))

(assert (= (or bm!137974 bm!137975) bm!137965))

(assert (= (or b!2317649 bm!137965) bm!137960))

(assert (= (and d!685089 res!990212) b!2317652))

(assert (= (and b!2317652 res!990215) b!2317654))

(assert (= (and b!2317654 res!990214) b!2317665))

(assert (= (and b!2317665 res!990213) b!2317660))

(declare-fun m!2745283 () Bool)

(assert (=> b!2317652 m!2745283))

(declare-fun m!2745285 () Bool)

(assert (=> b!2317665 m!2745285))

(declare-fun m!2745287 () Bool)

(assert (=> b!2317665 m!2745287))

(declare-fun m!2745289 () Bool)

(assert (=> b!2317665 m!2745289))

(assert (=> b!2317665 m!2745287))

(assert (=> b!2317665 m!2745289))

(declare-fun m!2745291 () Bool)

(assert (=> b!2317665 m!2745291))

(declare-fun m!2745293 () Bool)

(assert (=> bm!137963 m!2745293))

(declare-fun m!2745295 () Bool)

(assert (=> d!685089 m!2745295))

(assert (=> d!685089 m!2744957))

(assert (=> b!2317659 m!2745289))

(assert (=> b!2317659 m!2745287))

(declare-fun m!2745297 () Bool)

(assert (=> b!2317647 m!2745297))

(declare-fun m!2745299 () Bool)

(assert (=> bm!137960 m!2745299))

(declare-fun m!2745301 () Bool)

(assert (=> bm!137970 m!2745301))

(declare-fun m!2745303 () Bool)

(assert (=> bm!137966 m!2745303))

(declare-fun m!2745305 () Bool)

(assert (=> bm!137968 m!2745305))

(assert (=> b!2317654 m!2745285))

(assert (=> b!2317654 m!2745287))

(assert (=> b!2317654 m!2745289))

(assert (=> b!2317654 m!2745287))

(assert (=> b!2317654 m!2745289))

(assert (=> b!2317654 m!2745291))

(declare-fun m!2745307 () Bool)

(assert (=> bm!137964 m!2745307))

(declare-fun m!2745309 () Bool)

(assert (=> bm!137967 m!2745309))

(declare-fun m!2745311 () Bool)

(assert (=> b!2317660 m!2745311))

(assert (=> b!2317660 m!2744967))

(assert (=> b!2317660 m!2744975))

(assert (=> b!2317660 m!2744967))

(assert (=> b!2317660 m!2744975))

(assert (=> b!2317660 m!2744979))

(assert (=> b!2317368 d!685089))

(declare-fun b!2317667 () Bool)

(declare-fun e!1485758 () List!27744)

(assert (=> b!2317667 (= e!1485758 Nil!27646)))

(declare-fun d!685107 () Bool)

(declare-fun c!367423 () Bool)

(assert (=> d!685107 (= c!367423 ((_ is Empty!9051) (fromArray!23 lt!859356 (++!6796 acc!252 lt!859357))))))

(assert (=> d!685107 (= (list!10972 (fromArray!23 lt!859356 (++!6796 acc!252 lt!859357))) e!1485758)))

(declare-fun e!1485759 () List!27744)

(declare-fun b!2317670 () Bool)

(assert (=> b!2317670 (= e!1485759 (++!6795 (list!10972 (left!20973 (fromArray!23 lt!859356 (++!6796 acc!252 lt!859357)))) (list!10972 (right!21303 (fromArray!23 lt!859356 (++!6796 acc!252 lt!859357))))))))

(declare-fun b!2317668 () Bool)

(assert (=> b!2317668 (= e!1485758 e!1485759)))

(declare-fun c!367424 () Bool)

(assert (=> b!2317668 (= c!367424 ((_ is Leaf!13286) (fromArray!23 lt!859356 (++!6796 acc!252 lt!859357))))))

(declare-fun b!2317669 () Bool)

(assert (=> b!2317669 (= e!1485759 (list!10973 (xs!12001 (fromArray!23 lt!859356 (++!6796 acc!252 lt!859357)))))))

(assert (= (and d!685107 c!367423) b!2317667))

(assert (= (and d!685107 (not c!367423)) b!2317668))

(assert (= (and b!2317668 c!367424) b!2317669))

(assert (= (and b!2317668 (not c!367424)) b!2317670))

(declare-fun m!2745313 () Bool)

(assert (=> b!2317670 m!2745313))

(declare-fun m!2745315 () Bool)

(assert (=> b!2317670 m!2745315))

(assert (=> b!2317670 m!2745313))

(assert (=> b!2317670 m!2745315))

(declare-fun m!2745317 () Bool)

(assert (=> b!2317670 m!2745317))

(declare-fun m!2745319 () Bool)

(assert (=> b!2317669 m!2745319))

(assert (=> b!2317368 d!685107))

(declare-fun b!2317683 () Bool)

(declare-fun e!1485765 () Bool)

(declare-fun isEmpty!15770 (Conc!9051) Bool)

(assert (=> b!2317683 (= e!1485765 (not (isEmpty!15770 (right!21303 acc!252))))))

(declare-fun b!2317684 () Bool)

(declare-fun res!990230 () Bool)

(assert (=> b!2317684 (=> (not res!990230) (not e!1485765))))

(assert (=> b!2317684 (= res!990230 (<= (- (height!1316 (left!20973 acc!252)) (height!1316 (right!21303 acc!252))) 1))))

(declare-fun b!2317685 () Bool)

(declare-fun res!990228 () Bool)

(assert (=> b!2317685 (=> (not res!990228) (not e!1485765))))

(assert (=> b!2317685 (= res!990228 (isBalanced!2745 (right!21303 acc!252)))))

(declare-fun b!2317686 () Bool)

(declare-fun res!990232 () Bool)

(assert (=> b!2317686 (=> (not res!990232) (not e!1485765))))

(assert (=> b!2317686 (= res!990232 (isBalanced!2745 (left!20973 acc!252)))))

(declare-fun d!685109 () Bool)

(declare-fun res!990233 () Bool)

(declare-fun e!1485764 () Bool)

(assert (=> d!685109 (=> res!990233 e!1485764)))

(assert (=> d!685109 (= res!990233 (not ((_ is Node!9051) acc!252)))))

(assert (=> d!685109 (= (isBalanced!2745 acc!252) e!1485764)))

(declare-fun b!2317687 () Bool)

(declare-fun res!990231 () Bool)

(assert (=> b!2317687 (=> (not res!990231) (not e!1485765))))

(assert (=> b!2317687 (= res!990231 (not (isEmpty!15770 (left!20973 acc!252))))))

(declare-fun b!2317688 () Bool)

(assert (=> b!2317688 (= e!1485764 e!1485765)))

(declare-fun res!990229 () Bool)

(assert (=> b!2317688 (=> (not res!990229) (not e!1485765))))

(assert (=> b!2317688 (= res!990229 (<= (- 1) (- (height!1316 (left!20973 acc!252)) (height!1316 (right!21303 acc!252)))))))

(assert (= (and d!685109 (not res!990233)) b!2317688))

(assert (= (and b!2317688 res!990229) b!2317684))

(assert (= (and b!2317684 res!990230) b!2317686))

(assert (= (and b!2317686 res!990232) b!2317685))

(assert (= (and b!2317685 res!990228) b!2317687))

(assert (= (and b!2317687 res!990231) b!2317683))

(declare-fun m!2745321 () Bool)

(assert (=> b!2317686 m!2745321))

(declare-fun m!2745323 () Bool)

(assert (=> b!2317687 m!2745323))

(declare-fun m!2745325 () Bool)

(assert (=> b!2317688 m!2745325))

(declare-fun m!2745327 () Bool)

(assert (=> b!2317688 m!2745327))

(declare-fun m!2745329 () Bool)

(assert (=> b!2317683 m!2745329))

(assert (=> b!2317684 m!2745325))

(assert (=> b!2317684 m!2745327))

(declare-fun m!2745331 () Bool)

(assert (=> b!2317685 m!2745331))

(assert (=> start!228694 d!685109))

(declare-fun d!685111 () Bool)

(declare-fun c!367425 () Bool)

(assert (=> d!685111 (= c!367425 ((_ is Node!9051) acc!252))))

(declare-fun e!1485766 () Bool)

(assert (=> d!685111 (= (inv!37531 acc!252) e!1485766)))

(declare-fun b!2317689 () Bool)

(assert (=> b!2317689 (= e!1485766 (inv!37534 acc!252))))

(declare-fun b!2317690 () Bool)

(declare-fun e!1485767 () Bool)

(assert (=> b!2317690 (= e!1485766 e!1485767)))

(declare-fun res!990234 () Bool)

(assert (=> b!2317690 (= res!990234 (not ((_ is Leaf!13286) acc!252)))))

(assert (=> b!2317690 (=> res!990234 e!1485767)))

(declare-fun b!2317691 () Bool)

(assert (=> b!2317691 (= e!1485767 (inv!37535 acc!252))))

(assert (= (and d!685111 c!367425) b!2317689))

(assert (= (and d!685111 (not c!367425)) b!2317690))

(assert (= (and b!2317690 (not res!990234)) b!2317691))

(declare-fun m!2745333 () Bool)

(assert (=> b!2317689 m!2745333))

(declare-fun m!2745335 () Bool)

(assert (=> b!2317691 m!2745335))

(assert (=> start!228694 d!685111))

(declare-fun d!685113 () Bool)

(assert (=> d!685113 (= (inv!37530 arr!18) (<= (size!21882 (innerList!9111 arr!18)) 2147483647))))

(declare-fun bs!458887 () Bool)

(assert (= bs!458887 d!685113))

(declare-fun m!2745337 () Bool)

(assert (=> bs!458887 m!2745337))

(assert (=> start!228694 d!685113))

(declare-fun tp!735940 () Bool)

(declare-fun e!1485773 () Bool)

(declare-fun b!2317700 () Bool)

(declare-fun tp!735938 () Bool)

(assert (=> b!2317700 (= e!1485773 (and (inv!37531 (left!20973 (left!20973 acc!252))) tp!735938 (inv!37531 (right!21303 (left!20973 acc!252))) tp!735940))))

(declare-fun b!2317702 () Bool)

(declare-fun e!1485772 () Bool)

(declare-fun tp!735939 () Bool)

(assert (=> b!2317702 (= e!1485772 tp!735939)))

(declare-fun b!2317701 () Bool)

(assert (=> b!2317701 (= e!1485773 (and (inv!37530 (xs!12001 (left!20973 acc!252))) e!1485772))))

(assert (=> b!2317369 (= tp!735913 (and (inv!37531 (left!20973 acc!252)) e!1485773))))

(assert (= (and b!2317369 ((_ is Node!9051) (left!20973 acc!252))) b!2317700))

(assert (= b!2317701 b!2317702))

(assert (= (and b!2317369 ((_ is Leaf!13286) (left!20973 acc!252))) b!2317701))

(declare-fun m!2745339 () Bool)

(assert (=> b!2317700 m!2745339))

(declare-fun m!2745341 () Bool)

(assert (=> b!2317700 m!2745341))

(declare-fun m!2745343 () Bool)

(assert (=> b!2317701 m!2745343))

(assert (=> b!2317369 m!2744963))

(declare-fun tp!735941 () Bool)

(declare-fun tp!735943 () Bool)

(declare-fun e!1485775 () Bool)

(declare-fun b!2317703 () Bool)

(assert (=> b!2317703 (= e!1485775 (and (inv!37531 (left!20973 (right!21303 acc!252))) tp!735941 (inv!37531 (right!21303 (right!21303 acc!252))) tp!735943))))

(declare-fun b!2317705 () Bool)

(declare-fun e!1485774 () Bool)

(declare-fun tp!735942 () Bool)

(assert (=> b!2317705 (= e!1485774 tp!735942)))

(declare-fun b!2317704 () Bool)

(assert (=> b!2317704 (= e!1485775 (and (inv!37530 (xs!12001 (right!21303 acc!252))) e!1485774))))

(assert (=> b!2317369 (= tp!735915 (and (inv!37531 (right!21303 acc!252)) e!1485775))))

(assert (= (and b!2317369 ((_ is Node!9051) (right!21303 acc!252))) b!2317703))

(assert (= b!2317704 b!2317705))

(assert (= (and b!2317369 ((_ is Leaf!13286) (right!21303 acc!252))) b!2317704))

(declare-fun m!2745345 () Bool)

(assert (=> b!2317703 m!2745345))

(declare-fun m!2745347 () Bool)

(assert (=> b!2317703 m!2745347))

(declare-fun m!2745349 () Bool)

(assert (=> b!2317704 m!2745349))

(assert (=> b!2317369 m!2744965))

(declare-fun b!2317710 () Bool)

(declare-fun e!1485778 () Bool)

(declare-fun tp_is_empty!10797 () Bool)

(declare-fun tp!735946 () Bool)

(assert (=> b!2317710 (= e!1485778 (and tp_is_empty!10797 tp!735946))))

(assert (=> b!2317367 (= tp!735914 e!1485778)))

(assert (= (and b!2317367 ((_ is Cons!27646) (innerList!9111 (xs!12001 acc!252)))) b!2317710))

(declare-fun b!2317711 () Bool)

(declare-fun e!1485779 () Bool)

(declare-fun tp!735947 () Bool)

(assert (=> b!2317711 (= e!1485779 (and tp_is_empty!10797 tp!735947))))

(assert (=> b!2317366 (= tp!735912 e!1485779)))

(assert (= (and b!2317366 ((_ is Cons!27646) (innerList!9111 arr!18))) b!2317711))

(check-sat (not bm!137968) (not b!2317390) (not d!685089) (not b!2317701) (not b!2317704) (not b!2317647) (not b!2317393) (not b!2317710) (not d!685075) (not b!2317388) (not b!2317711) (not bm!137963) (not b!2317691) (not b!2317369) tp_is_empty!10797 (not b!2317686) (not b!2317534) (not bm!137967) (not b!2317654) (not b!2317703) (not d!685083) (not b!2317486) (not bm!137904) (not b!2317670) (not b!2317659) (not b!2317688) (not b!2317685) (not b!2317482) (not b!2317425) (not bm!137905) (not b!2317689) (not b!2317519) (not bm!137960) (not b!2317524) (not bm!137970) (not b!2317424) (not d!685051) (not bm!137966) (not b!2317665) (not b!2317700) (not b!2317523) (not d!685087) (not d!685067) (not b!2317687) (not b!2317652) (not b!2317684) (not b!2317669) (not b!2317683) (not b!2317705) (not d!685077) (not d!685113) (not b!2317518) (not b!2317391) (not b!2317702) (not b!2317483) (not bm!137964) (not d!685053) (not b!2317535) (not b!2317520) (not b!2317660))
(check-sat)
