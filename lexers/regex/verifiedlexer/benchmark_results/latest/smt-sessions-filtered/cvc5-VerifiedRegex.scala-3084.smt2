; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183316 () Bool)

(assert start!183316)

(declare-fun res!827363 () Bool)

(declare-fun e!1176471 () Bool)

(assert (=> start!183316 (=> (not res!827363) (not e!1176471))))

(declare-datatypes ((T!31792 0))(
  ( (T!31793 (val!5741 Int)) )
))
(declare-datatypes ((List!20341 0))(
  ( (Nil!20271) (Cons!20271 (h!25672 T!31792) (t!171776 List!20341)) )
))
(declare-fun lt!714265 () List!20341)

(declare-datatypes ((IArray!13397 0))(
  ( (IArray!13398 (innerList!6756 List!20341)) )
))
(declare-datatypes ((Conc!6696 0))(
  ( (Node!6696 (left!16186 Conc!6696) (right!16516 Conc!6696) (csize!13622 Int) (cheight!6907 Int)) (Leaf!9781 (xs!9572 IArray!13397) (csize!13623 Int)) (Empty!6696) )
))
(declare-fun lt!714264 () Conc!6696)

(declare-fun list!8228 (Conc!6696) List!20341)

(assert (=> start!183316 (= res!827363 (= lt!714265 (list!8228 lt!714264)))))

(declare-datatypes ((BalanceConc!13336 0))(
  ( (BalanceConc!13337 (c!300456 Conc!6696)) )
))
(declare-fun bc!4 () BalanceConc!13336)

(declare-fun list!8229 (BalanceConc!13336) List!20341)

(assert (=> start!183316 (= lt!714265 (list!8229 bc!4))))

(declare-fun tl!456 () List!20341)

(declare-fun hd!347 () T!31792)

(declare-fun fromList!461 (List!20341) Conc!6696)

(declare-fun $colon$colon!473 (List!20341 T!31792) List!20341)

(assert (=> start!183316 (= lt!714264 (fromList!461 ($colon$colon!473 tl!456 hd!347)))))

(assert (=> start!183316 e!1176471))

(declare-fun e!1176473 () Bool)

(assert (=> start!183316 e!1176473))

(declare-fun tp_is_empty!8335 () Bool)

(assert (=> start!183316 tp_is_empty!8335))

(declare-fun e!1176472 () Bool)

(declare-fun inv!26443 (BalanceConc!13336) Bool)

(assert (=> start!183316 (and (inv!26443 bc!4) e!1176472)))

(declare-fun b!1840947 () Bool)

(declare-fun prepend!872 (Conc!6696 T!31792) Conc!6696)

(assert (=> b!1840947 (= e!1176471 (not (= lt!714265 (list!8228 (prepend!872 (fromList!461 tl!456) hd!347)))))))

(declare-datatypes ((Unit!34981 0))(
  ( (Unit!34982) )
))
(declare-fun lt!714263 () Unit!34981)

(declare-fun choose!11584 (T!31792 List!20341 BalanceConc!13336) Unit!34981)

(assert (=> b!1840947 (= lt!714263 (choose!11584 hd!347 tl!456 bc!4))))

(declare-fun b!1840948 () Bool)

(declare-fun tp!520499 () Bool)

(assert (=> b!1840948 (= e!1176473 (and tp_is_empty!8335 tp!520499))))

(declare-fun b!1840949 () Bool)

(declare-fun tp!520500 () Bool)

(declare-fun inv!26444 (Conc!6696) Bool)

(assert (=> b!1840949 (= e!1176472 (and (inv!26444 (c!300456 bc!4)) tp!520500))))

(assert (= (and start!183316 res!827363) b!1840947))

(assert (= (and start!183316 (is-Cons!20271 tl!456)) b!1840948))

(assert (= start!183316 b!1840949))

(declare-fun m!2268365 () Bool)

(assert (=> start!183316 m!2268365))

(declare-fun m!2268367 () Bool)

(assert (=> start!183316 m!2268367))

(declare-fun m!2268369 () Bool)

(assert (=> start!183316 m!2268369))

(declare-fun m!2268371 () Bool)

(assert (=> start!183316 m!2268371))

(declare-fun m!2268373 () Bool)

(assert (=> start!183316 m!2268373))

(assert (=> start!183316 m!2268369))

(declare-fun m!2268375 () Bool)

(assert (=> b!1840947 m!2268375))

(assert (=> b!1840947 m!2268375))

(declare-fun m!2268377 () Bool)

(assert (=> b!1840947 m!2268377))

(assert (=> b!1840947 m!2268377))

(declare-fun m!2268379 () Bool)

(assert (=> b!1840947 m!2268379))

(declare-fun m!2268381 () Bool)

(assert (=> b!1840947 m!2268381))

(declare-fun m!2268383 () Bool)

(assert (=> b!1840949 m!2268383))

(push 1)

(assert (not b!1840948))

(assert (not b!1840949))

(assert (not start!183316))

(assert (not b!1840947))

(assert tp_is_empty!8335)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!562939 () Bool)

(declare-fun c!300460 () Bool)

(assert (=> d!562939 (= c!300460 (is-Node!6696 (c!300456 bc!4)))))

(declare-fun e!1176487 () Bool)

(assert (=> d!562939 (= (inv!26444 (c!300456 bc!4)) e!1176487)))

(declare-fun b!1840965 () Bool)

(declare-fun inv!26447 (Conc!6696) Bool)

(assert (=> b!1840965 (= e!1176487 (inv!26447 (c!300456 bc!4)))))

(declare-fun b!1840966 () Bool)

(declare-fun e!1176488 () Bool)

(assert (=> b!1840966 (= e!1176487 e!1176488)))

(declare-fun res!827369 () Bool)

(assert (=> b!1840966 (= res!827369 (not (is-Leaf!9781 (c!300456 bc!4))))))

(assert (=> b!1840966 (=> res!827369 e!1176488)))

(declare-fun b!1840967 () Bool)

(declare-fun inv!26448 (Conc!6696) Bool)

(assert (=> b!1840967 (= e!1176488 (inv!26448 (c!300456 bc!4)))))

(assert (= (and d!562939 c!300460) b!1840965))

(assert (= (and d!562939 (not c!300460)) b!1840966))

(assert (= (and b!1840966 (not res!827369)) b!1840967))

(declare-fun m!2268405 () Bool)

(assert (=> b!1840965 m!2268405))

(declare-fun m!2268407 () Bool)

(assert (=> b!1840967 m!2268407))

(assert (=> b!1840949 d!562939))

(declare-fun d!562941 () Bool)

(declare-fun isBalanced!2087 (Conc!6696) Bool)

(assert (=> d!562941 (= (inv!26443 bc!4) (isBalanced!2087 (c!300456 bc!4)))))

(declare-fun bs!408592 () Bool)

(assert (= bs!408592 d!562941))

(declare-fun m!2268409 () Bool)

(assert (=> bs!408592 m!2268409))

(assert (=> start!183316 d!562941))

(declare-fun d!562945 () Bool)

(assert (=> d!562945 (= (list!8229 bc!4) (list!8228 (c!300456 bc!4)))))

(declare-fun bs!408593 () Bool)

(assert (= bs!408593 d!562945))

(declare-fun m!2268411 () Bool)

(assert (=> bs!408593 m!2268411))

(assert (=> start!183316 d!562945))

(declare-fun b!1840983 () Bool)

(declare-fun e!1176497 () List!20341)

(declare-fun e!1176498 () List!20341)

(assert (=> b!1840983 (= e!1176497 e!1176498)))

(declare-fun c!300468 () Bool)

(assert (=> b!1840983 (= c!300468 (is-Leaf!9781 lt!714264))))

(declare-fun b!1840984 () Bool)

(declare-fun list!8232 (IArray!13397) List!20341)

(assert (=> b!1840984 (= e!1176498 (list!8232 (xs!9572 lt!714264)))))

(declare-fun b!1840985 () Bool)

(declare-fun ++!5509 (List!20341 List!20341) List!20341)

(assert (=> b!1840985 (= e!1176498 (++!5509 (list!8228 (left!16186 lt!714264)) (list!8228 (right!16516 lt!714264))))))

(declare-fun b!1840982 () Bool)

(assert (=> b!1840982 (= e!1176497 Nil!20271)))

(declare-fun d!562947 () Bool)

(declare-fun c!300467 () Bool)

(assert (=> d!562947 (= c!300467 (is-Empty!6696 lt!714264))))

(assert (=> d!562947 (= (list!8228 lt!714264) e!1176497)))

(assert (= (and d!562947 c!300467) b!1840982))

(assert (= (and d!562947 (not c!300467)) b!1840983))

(assert (= (and b!1840983 c!300468) b!1840984))

(assert (= (and b!1840983 (not c!300468)) b!1840985))

(declare-fun m!2268413 () Bool)

(assert (=> b!1840984 m!2268413))

(declare-fun m!2268415 () Bool)

(assert (=> b!1840985 m!2268415))

(declare-fun m!2268417 () Bool)

(assert (=> b!1840985 m!2268417))

(assert (=> b!1840985 m!2268415))

(assert (=> b!1840985 m!2268417))

(declare-fun m!2268419 () Bool)

(assert (=> b!1840985 m!2268419))

(assert (=> start!183316 d!562947))

(declare-fun d!562949 () Bool)

(assert (=> d!562949 (= ($colon$colon!473 tl!456 hd!347) (Cons!20271 hd!347 tl!456))))

(assert (=> start!183316 d!562949))

(declare-fun d!562951 () Bool)

(declare-fun e!1176503 () Bool)

(assert (=> d!562951 e!1176503))

(declare-fun res!827375 () Bool)

(assert (=> d!562951 (=> (not res!827375) (not e!1176503))))

(declare-fun lt!714277 () Conc!6696)

(assert (=> d!562951 (= res!827375 (= (list!8228 lt!714277) ($colon$colon!473 tl!456 hd!347)))))

(declare-fun choose!11586 (List!20341) Conc!6696)

(assert (=> d!562951 (= lt!714277 (choose!11586 ($colon$colon!473 tl!456 hd!347)))))

(assert (=> d!562951 (= (fromList!461 ($colon$colon!473 tl!456 hd!347)) lt!714277)))

(declare-fun b!1840991 () Bool)

(assert (=> b!1840991 (= e!1176503 (isBalanced!2087 lt!714277))))

(assert (= (and d!562951 res!827375) b!1840991))

(declare-fun m!2268425 () Bool)

(assert (=> d!562951 m!2268425))

(assert (=> d!562951 m!2268369))

(declare-fun m!2268427 () Bool)

(assert (=> d!562951 m!2268427))

(declare-fun m!2268429 () Bool)

(assert (=> b!1840991 m!2268429))

(assert (=> start!183316 d!562951))

(declare-fun b!1840993 () Bool)

(declare-fun e!1176504 () List!20341)

(declare-fun e!1176505 () List!20341)

(assert (=> b!1840993 (= e!1176504 e!1176505)))

(declare-fun c!300471 () Bool)

(assert (=> b!1840993 (= c!300471 (is-Leaf!9781 (prepend!872 (fromList!461 tl!456) hd!347)))))

(declare-fun b!1840994 () Bool)

(assert (=> b!1840994 (= e!1176505 (list!8232 (xs!9572 (prepend!872 (fromList!461 tl!456) hd!347))))))

(declare-fun b!1840995 () Bool)

(assert (=> b!1840995 (= e!1176505 (++!5509 (list!8228 (left!16186 (prepend!872 (fromList!461 tl!456) hd!347))) (list!8228 (right!16516 (prepend!872 (fromList!461 tl!456) hd!347)))))))

(declare-fun b!1840992 () Bool)

(assert (=> b!1840992 (= e!1176504 Nil!20271)))

(declare-fun d!562955 () Bool)

(declare-fun c!300470 () Bool)

(assert (=> d!562955 (= c!300470 (is-Empty!6696 (prepend!872 (fromList!461 tl!456) hd!347)))))

(assert (=> d!562955 (= (list!8228 (prepend!872 (fromList!461 tl!456) hd!347)) e!1176504)))

(assert (= (and d!562955 c!300470) b!1840992))

(assert (= (and d!562955 (not c!300470)) b!1840993))

(assert (= (and b!1840993 c!300471) b!1840994))

(assert (= (and b!1840993 (not c!300471)) b!1840995))

(declare-fun m!2268431 () Bool)

(assert (=> b!1840994 m!2268431))

(declare-fun m!2268433 () Bool)

(assert (=> b!1840995 m!2268433))

(declare-fun m!2268435 () Bool)

(assert (=> b!1840995 m!2268435))

(assert (=> b!1840995 m!2268433))

(assert (=> b!1840995 m!2268435))

(declare-fun m!2268437 () Bool)

(assert (=> b!1840995 m!2268437))

(assert (=> b!1840947 d!562955))

(declare-fun d!562957 () Bool)

(declare-fun e!1176508 () Bool)

(assert (=> d!562957 e!1176508))

(declare-fun res!827378 () Bool)

(assert (=> d!562957 (=> (not res!827378) (not e!1176508))))

(declare-fun lt!714280 () Conc!6696)

(assert (=> d!562957 (= res!827378 (isBalanced!2087 lt!714280))))

(declare-fun ++!5510 (Conc!6696 Conc!6696) Conc!6696)

(declare-fun fill!125 (Int T!31792) IArray!13397)

(assert (=> d!562957 (= lt!714280 (++!5510 (Leaf!9781 (fill!125 1 hd!347) 1) (fromList!461 tl!456)))))

(assert (=> d!562957 (isBalanced!2087 (fromList!461 tl!456))))

(assert (=> d!562957 (= (prepend!872 (fromList!461 tl!456) hd!347) lt!714280)))

(declare-fun b!1840998 () Bool)

(assert (=> b!1840998 (= e!1176508 (= (list!8228 lt!714280) (Cons!20271 hd!347 (list!8228 (fromList!461 tl!456)))))))

(assert (= (and d!562957 res!827378) b!1840998))

(declare-fun m!2268443 () Bool)

(assert (=> d!562957 m!2268443))

(declare-fun m!2268445 () Bool)

(assert (=> d!562957 m!2268445))

(assert (=> d!562957 m!2268375))

(declare-fun m!2268447 () Bool)

(assert (=> d!562957 m!2268447))

(assert (=> d!562957 m!2268375))

(declare-fun m!2268449 () Bool)

(assert (=> d!562957 m!2268449))

(declare-fun m!2268451 () Bool)

(assert (=> b!1840998 m!2268451))

(assert (=> b!1840998 m!2268375))

(declare-fun m!2268453 () Bool)

(assert (=> b!1840998 m!2268453))

(assert (=> b!1840947 d!562957))

(declare-fun d!562963 () Bool)

(declare-fun e!1176509 () Bool)

(assert (=> d!562963 e!1176509))

(declare-fun res!827379 () Bool)

(assert (=> d!562963 (=> (not res!827379) (not e!1176509))))

(declare-fun lt!714281 () Conc!6696)

(assert (=> d!562963 (= res!827379 (= (list!8228 lt!714281) tl!456))))

(assert (=> d!562963 (= lt!714281 (choose!11586 tl!456))))

(assert (=> d!562963 (= (fromList!461 tl!456) lt!714281)))

(declare-fun b!1840999 () Bool)

(assert (=> b!1840999 (= e!1176509 (isBalanced!2087 lt!714281))))

(assert (= (and d!562963 res!827379) b!1840999))

(declare-fun m!2268455 () Bool)

(assert (=> d!562963 m!2268455))

(declare-fun m!2268457 () Bool)

(assert (=> d!562963 m!2268457))

(declare-fun m!2268459 () Bool)

(assert (=> b!1840999 m!2268459))

(assert (=> b!1840947 d!562963))

(declare-fun d!562965 () Bool)

(declare-fun choose!11587 (T!31792 List!20341 BalanceConc!13336) Unit!34981)

(assert (=> d!562965 (= (choose!11584 hd!347 tl!456 bc!4) (choose!11587 hd!347 tl!456 bc!4))))

(declare-fun bs!408596 () Bool)

(assert (= bs!408596 d!562965))

(declare-fun m!2268461 () Bool)

(assert (=> bs!408596 m!2268461))

(assert (=> b!1840947 d!562965))

(declare-fun b!1841020 () Bool)

(declare-fun tp!520514 () Bool)

(declare-fun tp!520513 () Bool)

(declare-fun e!1176520 () Bool)

(assert (=> b!1841020 (= e!1176520 (and (inv!26444 (left!16186 (c!300456 bc!4))) tp!520513 (inv!26444 (right!16516 (c!300456 bc!4))) tp!520514))))

(declare-fun b!1841022 () Bool)

(declare-fun e!1176521 () Bool)

(declare-fun tp!520515 () Bool)

(assert (=> b!1841022 (= e!1176521 tp!520515)))

(declare-fun b!1841021 () Bool)

(declare-fun inv!26449 (IArray!13397) Bool)

(assert (=> b!1841021 (= e!1176520 (and (inv!26449 (xs!9572 (c!300456 bc!4))) e!1176521))))

(assert (=> b!1840949 (= tp!520500 (and (inv!26444 (c!300456 bc!4)) e!1176520))))

(assert (= (and b!1840949 (is-Node!6696 (c!300456 bc!4))) b!1841020))

(assert (= b!1841021 b!1841022))

(assert (= (and b!1840949 (is-Leaf!9781 (c!300456 bc!4))) b!1841021))

(declare-fun m!2268465 () Bool)

(assert (=> b!1841020 m!2268465))

(declare-fun m!2268469 () Bool)

(assert (=> b!1841020 m!2268469))

(declare-fun m!2268471 () Bool)

(assert (=> b!1841021 m!2268471))

(assert (=> b!1840949 m!2268383))

(declare-fun b!1841027 () Bool)

(declare-fun e!1176524 () Bool)

(declare-fun tp!520518 () Bool)

(assert (=> b!1841027 (= e!1176524 (and tp_is_empty!8335 tp!520518))))

(assert (=> b!1840948 (= tp!520499 e!1176524)))

(assert (= (and b!1840948 (is-Cons!20271 (t!171776 tl!456))) b!1841027))

(push 1)

(assert (not b!1840985))

(assert (not b!1841022))

(assert (not b!1841021))

(assert (not b!1840949))

(assert (not b!1840984))

(assert (not b!1841027))

(assert (not b!1840991))

(assert (not d!562963))

(assert (not d!562951))

(assert (not b!1840999))

(assert (not d!562945))

(assert (not b!1841020))

(assert (not d!562941))

(assert (not d!562957))

(assert tp_is_empty!8335)

(assert (not b!1840998))

(assert (not b!1840995))

(assert (not b!1840994))

(assert (not b!1840967))

(assert (not b!1840965))

(assert (not d!562965))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

