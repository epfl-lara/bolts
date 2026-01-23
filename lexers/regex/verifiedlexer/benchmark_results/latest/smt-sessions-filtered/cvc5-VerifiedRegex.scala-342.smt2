; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!11084 () Bool)

(assert start!11084)

(declare-fun b_free!3325 () Bool)

(declare-fun b_next!3325 () Bool)

(assert (=> start!11084 (= b_free!3325 (not b_next!3325))))

(declare-fun tp!59413 () Bool)

(declare-fun b_and!5191 () Bool)

(assert (=> start!11084 (= tp!59413 b_and!5191)))

(declare-fun b_free!3327 () Bool)

(declare-fun b_next!3327 () Bool)

(assert (=> start!11084 (= b_free!3327 (not b_next!3327))))

(declare-fun tp!59414 () Bool)

(declare-fun b_and!5193 () Bool)

(assert (=> start!11084 (= tp!59414 b_and!5193)))

(assert (=> start!11084 true))

(declare-fun order!991 () Int)

(declare-fun order!989 () Int)

(declare-fun f!927 () Int)

(declare-fun lambda!2481 () Int)

(declare-fun dynLambda!648 (Int Int) Int)

(declare-fun dynLambda!649 (Int Int) Int)

(assert (=> start!11084 (< (dynLambda!648 order!989 f!927) (dynLambda!649 order!991 lambda!2481))))

(assert (=> start!11084 true))

(declare-fun g!9 () Int)

(assert (=> start!11084 (< (dynLambda!648 order!989 g!9) (dynLambda!649 order!991 lambda!2481))))

(declare-fun b!109540 () Bool)

(declare-fun e!61008 () Bool)

(declare-fun lt!31379 () Int)

(declare-datatypes ((A!265 0))(
  ( (A!266 (val!568 Int)) )
))
(declare-datatypes ((List!1756 0))(
  ( (Nil!1750) (Cons!1750 (h!7147 A!265) (t!21919 List!1756)) )
))
(declare-fun lt!31387 () List!1756)

(declare-fun size!1536 (List!1756) Int)

(assert (=> b!109540 (= e!61008 (= lt!31379 (size!1536 (t!21919 lt!31387))))))

(declare-fun lt!31383 () Int)

(assert (=> b!109540 (> lt!31383 lt!31379)))

(declare-fun tail!189 (List!1756) List!1756)

(assert (=> b!109540 (= lt!31379 (size!1536 (tail!189 lt!31387)))))

(assert (=> b!109540 (= lt!31383 (size!1536 lt!31387))))

(declare-datatypes ((Unit!1206 0))(
  ( (Unit!1207) )
))
(declare-fun lt!31386 () Unit!1206)

(declare-fun s!1451 () (Set A!265))

(declare-fun lemmaToListSizeBiggerThanTailContentSize!13 ((Set A!265)) Unit!1206)

(assert (=> b!109540 (= lt!31386 (lemmaToListSizeBiggerThanTailContentSize!13 s!1451))))

(declare-fun lt!31378 () Unit!1206)

(declare-fun forallContained!17 (List!1756 Int A!265) Unit!1206)

(assert (=> b!109540 (= lt!31378 (forallContained!17 lt!31387 lambda!2481 (h!7147 lt!31387)))))

(declare-fun b!109541 () Bool)

(declare-fun e!61009 () Bool)

(declare-fun e!61012 () Bool)

(assert (=> b!109541 (= e!61009 e!61012)))

(declare-fun res!52704 () Bool)

(assert (=> b!109541 (=> (not res!52704) (not e!61012))))

(assert (=> b!109541 (= res!52704 (is-Cons!1750 lt!31387))))

(declare-fun toList!235 ((Set A!265)) List!1756)

(assert (=> b!109541 (= lt!31387 (toList!235 s!1451))))

(declare-fun setIsEmpty!1509 () Bool)

(declare-fun setRes!1509 () Bool)

(assert (=> setIsEmpty!1509 setRes!1509))

(declare-fun b!109542 () Bool)

(declare-fun e!61010 () Bool)

(assert (=> b!109542 (= e!61012 e!61010)))

(declare-fun res!52706 () Bool)

(assert (=> b!109542 (=> (not res!52706) (not e!61010))))

(declare-fun lt!31382 () (Set A!265))

(assert (=> b!109542 (= res!52706 (= s!1451 lt!31382))))

(declare-fun lt!31381 () (Set A!265))

(declare-fun lt!31384 () (Set A!265))

(assert (=> b!109542 (= lt!31382 (set.union lt!31381 lt!31384))))

(declare-fun content!178 (List!1756) (Set A!265))

(assert (=> b!109542 (= lt!31384 (content!178 (t!21919 lt!31387)))))

(assert (=> b!109542 (= lt!31381 (set.insert (h!7147 lt!31387) (as set.empty (Set A!265))))))

(declare-fun b!109543 () Bool)

(declare-fun res!52707 () Bool)

(assert (=> b!109543 (=> res!52707 e!61008)))

(declare-fun forall!283 ((Set A!265) Int) Bool)

(assert (=> b!109543 (= res!52707 (not (forall!283 lt!31384 lambda!2481)))))

(declare-fun setNonEmpty!1509 () Bool)

(declare-fun tp!59412 () Bool)

(declare-fun tp_is_empty!863 () Bool)

(assert (=> setNonEmpty!1509 (= setRes!1509 (and tp!59412 tp_is_empty!863))))

(declare-fun setElem!1509 () A!265)

(declare-fun setRest!1509 () (Set A!265))

(assert (=> setNonEmpty!1509 (= s!1451 (set.union (set.insert setElem!1509 (as set.empty (Set A!265))) setRest!1509))))

(declare-fun b!109545 () Bool)

(declare-fun e!61011 () Bool)

(assert (=> b!109545 (= e!61011 e!61008)))

(declare-fun res!52708 () Bool)

(assert (=> b!109545 (=> res!52708 e!61008)))

(declare-datatypes ((B!557 0))(
  ( (B!558 (val!569 Int)) )
))
(declare-fun dynLambda!650 (Int A!265) (Set B!557))

(assert (=> b!109545 (= res!52708 (not (= (dynLambda!650 f!927 (h!7147 lt!31387)) (dynLambda!650 g!9 (h!7147 lt!31387)))))))

(assert (=> b!109545 (forall!283 lt!31384 lambda!2481)))

(declare-fun lt!31380 () Unit!1206)

(declare-fun lemmaForallThenOnContent!21 (List!1756 Int) Unit!1206)

(assert (=> b!109545 (= lt!31380 (lemmaForallThenOnContent!21 (t!21919 lt!31387) lambda!2481))))

(declare-fun res!52703 () Bool)

(assert (=> start!11084 (=> (not res!52703) (not e!61009))))

(assert (=> start!11084 (= res!52703 (forall!283 s!1451 lambda!2481))))

(assert (=> start!11084 e!61009))

(declare-fun condSetEmpty!1509 () Bool)

(assert (=> start!11084 (= condSetEmpty!1509 (= s!1451 (as set.empty (Set A!265))))))

(assert (=> start!11084 setRes!1509))

(assert (=> start!11084 tp!59413))

(assert (=> start!11084 tp!59414))

(declare-fun b!109544 () Bool)

(assert (=> b!109544 (= e!61010 (not e!61011))))

(declare-fun res!52705 () Bool)

(assert (=> b!109544 (=> res!52705 e!61011)))

(declare-fun forall!284 (List!1756 Int) Bool)

(assert (=> b!109544 (= res!52705 (not (forall!284 (t!21919 lt!31387) lambda!2481)))))

(declare-fun flatMap!38 ((Set A!265) Int) (Set B!557))

(assert (=> b!109544 (= (set.union (flatMap!38 lt!31381 g!9) (flatMap!38 lt!31384 g!9)) (flatMap!38 lt!31382 g!9))))

(declare-fun lt!31377 () Unit!1206)

(declare-fun lemmaFlatMapAssociative!25 ((Set A!265) (Set A!265) Int) Unit!1206)

(assert (=> b!109544 (= lt!31377 (lemmaFlatMapAssociative!25 lt!31381 lt!31384 g!9))))

(assert (=> b!109544 (= (set.union (flatMap!38 lt!31381 f!927) (flatMap!38 lt!31384 f!927)) (flatMap!38 lt!31382 f!927))))

(declare-fun lt!31385 () Unit!1206)

(assert (=> b!109544 (= lt!31385 (lemmaFlatMapAssociative!25 lt!31381 lt!31384 f!927))))

(assert (= (and start!11084 res!52703) b!109541))

(assert (= (and b!109541 res!52704) b!109542))

(assert (= (and b!109542 res!52706) b!109544))

(assert (= (and b!109544 (not res!52705)) b!109545))

(assert (= (and b!109545 (not res!52708)) b!109543))

(assert (= (and b!109543 (not res!52707)) b!109540))

(assert (= (and start!11084 condSetEmpty!1509) setIsEmpty!1509))

(assert (= (and start!11084 (not condSetEmpty!1509)) setNonEmpty!1509))

(declare-fun b_lambda!1445 () Bool)

(assert (=> (not b_lambda!1445) (not b!109545)))

(declare-fun t!21912 () Bool)

(declare-fun tb!3423 () Bool)

(assert (=> (and start!11084 (= f!927 f!927) t!21912) tb!3423))

(assert (=> b!109545 t!21912))

(declare-fun result!4960 () Bool)

(declare-fun b_and!5195 () Bool)

(assert (= b_and!5191 (and (=> t!21912 result!4960) b_and!5195)))

(declare-fun t!21914 () Bool)

(declare-fun tb!3425 () Bool)

(assert (=> (and start!11084 (= g!9 f!927) t!21914) tb!3425))

(assert (=> b!109545 t!21914))

(declare-fun result!4962 () Bool)

(declare-fun b_and!5197 () Bool)

(assert (= b_and!5193 (and (=> t!21914 result!4962) b_and!5197)))

(declare-fun b_lambda!1447 () Bool)

(assert (=> (not b_lambda!1447) (not b!109545)))

(declare-fun tb!3427 () Bool)

(declare-fun t!21916 () Bool)

(assert (=> (and start!11084 (= f!927 g!9) t!21916) tb!3427))

(assert (=> b!109545 t!21916))

(declare-fun result!4964 () Bool)

(declare-fun b_and!5199 () Bool)

(assert (= b_and!5195 (and (=> t!21916 result!4964) b_and!5199)))

(declare-fun t!21918 () Bool)

(declare-fun tb!3429 () Bool)

(assert (=> (and start!11084 (= g!9 g!9) t!21918) tb!3429))

(assert (=> b!109545 t!21918))

(declare-fun result!4966 () Bool)

(declare-fun b_and!5201 () Bool)

(assert (= b_and!5197 (and (=> t!21918 result!4966) b_and!5201)))

(declare-fun m!99014 () Bool)

(assert (=> start!11084 m!99014))

(declare-fun m!99016 () Bool)

(assert (=> b!109544 m!99016))

(declare-fun m!99018 () Bool)

(assert (=> b!109544 m!99018))

(declare-fun m!99020 () Bool)

(assert (=> b!109544 m!99020))

(declare-fun m!99022 () Bool)

(assert (=> b!109544 m!99022))

(declare-fun m!99024 () Bool)

(assert (=> b!109544 m!99024))

(declare-fun m!99026 () Bool)

(assert (=> b!109544 m!99026))

(declare-fun m!99028 () Bool)

(assert (=> b!109544 m!99028))

(declare-fun m!99030 () Bool)

(assert (=> b!109544 m!99030))

(declare-fun m!99032 () Bool)

(assert (=> b!109544 m!99032))

(declare-fun m!99034 () Bool)

(assert (=> b!109541 m!99034))

(declare-fun m!99036 () Bool)

(assert (=> b!109543 m!99036))

(declare-fun m!99038 () Bool)

(assert (=> b!109545 m!99038))

(declare-fun m!99040 () Bool)

(assert (=> b!109545 m!99040))

(assert (=> b!109545 m!99036))

(declare-fun m!99042 () Bool)

(assert (=> b!109545 m!99042))

(declare-fun m!99044 () Bool)

(assert (=> b!109542 m!99044))

(declare-fun m!99046 () Bool)

(assert (=> b!109542 m!99046))

(declare-fun m!99048 () Bool)

(assert (=> b!109540 m!99048))

(declare-fun m!99050 () Bool)

(assert (=> b!109540 m!99050))

(declare-fun m!99052 () Bool)

(assert (=> b!109540 m!99052))

(declare-fun m!99054 () Bool)

(assert (=> b!109540 m!99054))

(declare-fun m!99056 () Bool)

(assert (=> b!109540 m!99056))

(declare-fun m!99058 () Bool)

(assert (=> b!109540 m!99058))

(assert (=> b!109540 m!99056))

(push 1)

(assert (not b!109540))

(assert (not b!109542))

(assert b_and!5201)

(assert (not b!109544))

(assert (not start!11084))

(assert (not tb!3423))

(assert (not tb!3427))

(assert (not b_next!3325))

(assert (not b!109541))

(assert (not tb!3429))

(assert b_and!5199)

(assert (not tb!3425))

(assert tp_is_empty!863)

(assert (not b!109545))

(assert (not b_lambda!1447))

(assert (not b_lambda!1445))

(assert (not setNonEmpty!1509))

(assert (not b_next!3327))

(assert (not b!109543))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5199)

(assert b_and!5201)

(assert (not b_next!3327))

(assert (not b_next!3325))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!1453 () Bool)

(assert (= b_lambda!1447 (or (and start!11084 b_free!3325 (= f!927 g!9)) (and start!11084 b_free!3327) b_lambda!1453)))

(declare-fun b_lambda!1455 () Bool)

(assert (= b_lambda!1445 (or (and start!11084 b_free!3325) (and start!11084 b_free!3327 (= g!9 f!927)) b_lambda!1455)))

(push 1)

(assert (not b!109540))

(assert (not b!109542))

(assert b_and!5201)

(assert (not b!109544))

(assert (not start!11084))

(assert (not tb!3423))

(assert (not tb!3427))

(assert (not b_lambda!1453))

(assert (not b_next!3325))

(assert (not b!109541))

(assert (not tb!3429))

(assert b_and!5199)

(assert (not tb!3425))

(assert tp_is_empty!863)

(assert (not b!109545))

(assert (not setNonEmpty!1509))

(assert (not b_lambda!1455))

(assert (not b_next!3327))

(assert (not b!109543))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5199)

(assert b_and!5201)

(assert (not b_next!3327))

(assert (not b_next!3325))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!27297 () Bool)

(assert (=> d!27297 (= (tail!189 lt!31387) (t!21919 lt!31387))))

(assert (=> b!109540 d!27297))

(declare-fun d!27299 () Bool)

(declare-fun lt!31423 () Int)

(assert (=> d!27299 (>= lt!31423 0)))

(declare-fun e!61030 () Int)

(assert (=> d!27299 (= lt!31423 e!61030)))

(declare-fun c!26137 () Bool)

(assert (=> d!27299 (= c!26137 (is-Nil!1750 (tail!189 lt!31387)))))

(assert (=> d!27299 (= (size!1536 (tail!189 lt!31387)) lt!31423)))

(declare-fun b!109572 () Bool)

(assert (=> b!109572 (= e!61030 0)))

(declare-fun b!109573 () Bool)

(assert (=> b!109573 (= e!61030 (+ 1 (size!1536 (t!21919 (tail!189 lt!31387)))))))

(assert (= (and d!27299 c!26137) b!109572))

(assert (= (and d!27299 (not c!26137)) b!109573))

(declare-fun m!99106 () Bool)

(assert (=> b!109573 m!99106))

(assert (=> b!109540 d!27299))

(declare-fun d!27301 () Bool)

(declare-fun dynLambda!654 (Int A!265) Bool)

(assert (=> d!27301 (dynLambda!654 lambda!2481 (h!7147 lt!31387))))

(declare-fun lt!31426 () Unit!1206)

(declare-fun choose!1451 (List!1756 Int A!265) Unit!1206)

(assert (=> d!27301 (= lt!31426 (choose!1451 lt!31387 lambda!2481 (h!7147 lt!31387)))))

(declare-fun e!61033 () Bool)

(assert (=> d!27301 e!61033))

(declare-fun res!52729 () Bool)

(assert (=> d!27301 (=> (not res!52729) (not e!61033))))

(assert (=> d!27301 (= res!52729 (forall!284 lt!31387 lambda!2481))))

(assert (=> d!27301 (= (forallContained!17 lt!31387 lambda!2481 (h!7147 lt!31387)) lt!31426)))

(declare-fun b!109576 () Bool)

(declare-fun contains!287 (List!1756 A!265) Bool)

(assert (=> b!109576 (= e!61033 (contains!287 lt!31387 (h!7147 lt!31387)))))

(assert (= (and d!27301 res!52729) b!109576))

(declare-fun b_lambda!1461 () Bool)

(assert (=> (not b_lambda!1461) (not d!27301)))

(declare-fun m!99108 () Bool)

(assert (=> d!27301 m!99108))

(declare-fun m!99110 () Bool)

(assert (=> d!27301 m!99110))

(declare-fun m!99112 () Bool)

(assert (=> d!27301 m!99112))

(declare-fun m!99114 () Bool)

(assert (=> b!109576 m!99114))

(assert (=> b!109540 d!27301))

(declare-fun d!27303 () Bool)

(declare-fun lt!31427 () Int)

(assert (=> d!27303 (>= lt!31427 0)))

(declare-fun e!61034 () Int)

(assert (=> d!27303 (= lt!31427 e!61034)))

(declare-fun c!26138 () Bool)

(assert (=> d!27303 (= c!26138 (is-Nil!1750 lt!31387))))

(assert (=> d!27303 (= (size!1536 lt!31387) lt!31427)))

(declare-fun b!109577 () Bool)

(assert (=> b!109577 (= e!61034 0)))

(declare-fun b!109578 () Bool)

(assert (=> b!109578 (= e!61034 (+ 1 (size!1536 (t!21919 lt!31387))))))

(assert (= (and d!27303 c!26138) b!109577))

(assert (= (and d!27303 (not c!26138)) b!109578))

(assert (=> b!109578 m!99048))

(assert (=> b!109540 d!27303))

(declare-fun d!27305 () Bool)

(assert (=> d!27305 (> (size!1536 (toList!235 s!1451)) (size!1536 (tail!189 (toList!235 s!1451))))))

(declare-fun lt!31430 () Unit!1206)

(declare-fun choose!1452 ((Set A!265)) Unit!1206)

(assert (=> d!27305 (= lt!31430 (choose!1452 s!1451))))

(assert (=> d!27305 (not (= s!1451 (as set.empty (Set A!265))))))

(assert (=> d!27305 (= (lemmaToListSizeBiggerThanTailContentSize!13 s!1451) lt!31430)))

(declare-fun bs!10869 () Bool)

(assert (= bs!10869 d!27305))

(assert (=> bs!10869 m!99034))

(declare-fun m!99116 () Bool)

(assert (=> bs!10869 m!99116))

(assert (=> bs!10869 m!99116))

(declare-fun m!99118 () Bool)

(assert (=> bs!10869 m!99118))

(assert (=> bs!10869 m!99034))

(assert (=> bs!10869 m!99034))

(declare-fun m!99120 () Bool)

(assert (=> bs!10869 m!99120))

(declare-fun m!99122 () Bool)

(assert (=> bs!10869 m!99122))

(assert (=> b!109540 d!27305))

(declare-fun d!27309 () Bool)

(declare-fun lt!31431 () Int)

(assert (=> d!27309 (>= lt!31431 0)))

(declare-fun e!61035 () Int)

(assert (=> d!27309 (= lt!31431 e!61035)))

(declare-fun c!26139 () Bool)

(assert (=> d!27309 (= c!26139 (is-Nil!1750 (t!21919 lt!31387)))))

(assert (=> d!27309 (= (size!1536 (t!21919 lt!31387)) lt!31431)))

(declare-fun b!109579 () Bool)

(assert (=> b!109579 (= e!61035 0)))

(declare-fun b!109580 () Bool)

(assert (=> b!109580 (= e!61035 (+ 1 (size!1536 (t!21919 (t!21919 lt!31387)))))))

(assert (= (and d!27309 c!26139) b!109579))

(assert (= (and d!27309 (not c!26139)) b!109580))

(declare-fun m!99124 () Bool)

(assert (=> b!109580 m!99124))

(assert (=> b!109540 d!27309))

(declare-fun d!27311 () Bool)

(declare-fun e!61040 () Bool)

(assert (=> d!27311 e!61040))

(declare-fun res!52734 () Bool)

(assert (=> d!27311 (=> (not res!52734) (not e!61040))))

(declare-fun lt!31436 () List!1756)

(declare-fun noDuplicate!14 (List!1756) Bool)

(assert (=> d!27311 (= res!52734 (noDuplicate!14 lt!31436))))

(declare-fun choose!1453 ((Set A!265)) List!1756)

(assert (=> d!27311 (= lt!31436 (choose!1453 s!1451))))

(assert (=> d!27311 (= (toList!235 s!1451) lt!31436)))

(declare-fun b!109585 () Bool)

(assert (=> b!109585 (= e!61040 (= (content!178 lt!31436) s!1451))))

(assert (= (and d!27311 res!52734) b!109585))

(declare-fun m!99126 () Bool)

(assert (=> d!27311 m!99126))

(declare-fun m!99128 () Bool)

(assert (=> d!27311 m!99128))

(declare-fun m!99130 () Bool)

(assert (=> b!109585 m!99130))

(assert (=> b!109541 d!27311))

(declare-fun d!27313 () Bool)

(declare-fun lt!31440 () Bool)

(assert (=> d!27313 (= lt!31440 (forall!284 (toList!235 lt!31384) lambda!2481))))

(declare-fun choose!1454 ((Set A!265) Int) Bool)

(assert (=> d!27313 (= lt!31440 (choose!1454 lt!31384 lambda!2481))))

(assert (=> d!27313 (= (forall!283 lt!31384 lambda!2481) lt!31440)))

(declare-fun bs!10870 () Bool)

(assert (= bs!10870 d!27313))

(declare-fun m!99138 () Bool)

(assert (=> bs!10870 m!99138))

(assert (=> bs!10870 m!99138))

(declare-fun m!99140 () Bool)

(assert (=> bs!10870 m!99140))

(declare-fun m!99142 () Bool)

(assert (=> bs!10870 m!99142))

(assert (=> b!109543 d!27313))

(declare-fun d!27317 () Bool)

(declare-fun lt!31443 () Bool)

(assert (=> d!27317 (= lt!31443 (forall!284 (toList!235 s!1451) lambda!2481))))

(assert (=> d!27317 (= lt!31443 (choose!1454 s!1451 lambda!2481))))

(assert (=> d!27317 (= (forall!283 s!1451 lambda!2481) lt!31443)))

(declare-fun bs!10871 () Bool)

(assert (= bs!10871 d!27317))

(assert (=> bs!10871 m!99034))

(assert (=> bs!10871 m!99034))

(declare-fun m!99144 () Bool)

(assert (=> bs!10871 m!99144))

(declare-fun m!99146 () Bool)

(assert (=> bs!10871 m!99146))

(assert (=> start!11084 d!27317))

(declare-fun d!27319 () Bool)

(declare-fun res!52740 () Bool)

(declare-fun e!61046 () Bool)

(assert (=> d!27319 (=> res!52740 e!61046)))

(assert (=> d!27319 (= res!52740 (is-Nil!1750 (t!21919 lt!31387)))))

(assert (=> d!27319 (= (forall!284 (t!21919 lt!31387) lambda!2481) e!61046)))

(declare-fun b!109591 () Bool)

(declare-fun e!61047 () Bool)

(assert (=> b!109591 (= e!61046 e!61047)))

(declare-fun res!52741 () Bool)

(assert (=> b!109591 (=> (not res!52741) (not e!61047))))

(assert (=> b!109591 (= res!52741 (dynLambda!654 lambda!2481 (h!7147 (t!21919 lt!31387))))))

(declare-fun b!109592 () Bool)

(assert (=> b!109592 (= e!61047 (forall!284 (t!21919 (t!21919 lt!31387)) lambda!2481))))

(assert (= (and d!27319 (not res!52740)) b!109591))

(assert (= (and b!109591 res!52741) b!109592))

(declare-fun b_lambda!1463 () Bool)

(assert (=> (not b_lambda!1463) (not b!109591)))

(declare-fun m!99152 () Bool)

(assert (=> b!109591 m!99152))

(declare-fun m!99154 () Bool)

(assert (=> b!109592 m!99154))

(assert (=> b!109544 d!27319))

(declare-fun d!27323 () Bool)

(assert (=> d!27323 (= (set.union (flatMap!38 lt!31381 g!9) (flatMap!38 lt!31384 g!9)) (flatMap!38 (set.union lt!31381 lt!31384) g!9))))

(declare-fun lt!31447 () Unit!1206)

(declare-fun choose!1455 ((Set A!265) (Set A!265) Int) Unit!1206)

(assert (=> d!27323 (= lt!31447 (choose!1455 lt!31381 lt!31384 g!9))))

(assert (=> d!27323 (= (lemmaFlatMapAssociative!25 lt!31381 lt!31384 g!9) lt!31447)))

(declare-fun bs!10873 () Bool)

(assert (= bs!10873 d!27323))

(assert (=> bs!10873 m!99030))

(assert (=> bs!10873 m!99018))

(declare-fun m!99160 () Bool)

(assert (=> bs!10873 m!99160))

(declare-fun m!99162 () Bool)

(assert (=> bs!10873 m!99162))

(assert (=> b!109544 d!27323))

(declare-fun d!27327 () Bool)

(assert (=> d!27327 (= (set.union (flatMap!38 lt!31381 f!927) (flatMap!38 lt!31384 f!927)) (flatMap!38 (set.union lt!31381 lt!31384) f!927))))

(declare-fun lt!31448 () Unit!1206)

(assert (=> d!27327 (= lt!31448 (choose!1455 lt!31381 lt!31384 f!927))))

(assert (=> d!27327 (= (lemmaFlatMapAssociative!25 lt!31381 lt!31384 f!927) lt!31448)))

(declare-fun bs!10874 () Bool)

(assert (= bs!10874 d!27327))

(assert (=> bs!10874 m!99016))

(assert (=> bs!10874 m!99022))

(declare-fun m!99164 () Bool)

(assert (=> bs!10874 m!99164))

(declare-fun m!99166 () Bool)

(assert (=> bs!10874 m!99166))

(assert (=> b!109544 d!27327))

(declare-fun d!27329 () Bool)

(declare-fun choose!1456 ((Set A!265) Int) (Set B!557))

(assert (=> d!27329 (= (flatMap!38 lt!31384 g!9) (choose!1456 lt!31384 g!9))))

(declare-fun bs!10876 () Bool)

(assert (= bs!10876 d!27329))

(declare-fun m!99170 () Bool)

(assert (=> bs!10876 m!99170))

(assert (=> b!109544 d!27329))

(declare-fun d!27333 () Bool)

(assert (=> d!27333 (= (flatMap!38 lt!31382 g!9) (choose!1456 lt!31382 g!9))))

(declare-fun bs!10877 () Bool)

(assert (= bs!10877 d!27333))

(declare-fun m!99172 () Bool)

(assert (=> bs!10877 m!99172))

(assert (=> b!109544 d!27333))

(declare-fun d!27335 () Bool)

(assert (=> d!27335 (= (flatMap!38 lt!31384 f!927) (choose!1456 lt!31384 f!927))))

(declare-fun bs!10879 () Bool)

(assert (= bs!10879 d!27335))

(declare-fun m!99176 () Bool)

(assert (=> bs!10879 m!99176))

(assert (=> b!109544 d!27335))

(declare-fun d!27339 () Bool)

(assert (=> d!27339 (= (flatMap!38 lt!31382 f!927) (choose!1456 lt!31382 f!927))))

(declare-fun bs!10881 () Bool)

(assert (= bs!10881 d!27339))

(declare-fun m!99180 () Bool)

(assert (=> bs!10881 m!99180))

(assert (=> b!109544 d!27339))

(declare-fun d!27343 () Bool)

(assert (=> d!27343 (= (flatMap!38 lt!31381 g!9) (choose!1456 lt!31381 g!9))))

(declare-fun bs!10883 () Bool)

(assert (= bs!10883 d!27343))

(declare-fun m!99184 () Bool)

(assert (=> bs!10883 m!99184))

(assert (=> b!109544 d!27343))

(declare-fun d!27347 () Bool)

(assert (=> d!27347 (= (flatMap!38 lt!31381 f!927) (choose!1456 lt!31381 f!927))))

(declare-fun bs!10884 () Bool)

(assert (= bs!10884 d!27347))

(declare-fun m!99186 () Bool)

(assert (=> bs!10884 m!99186))

(assert (=> b!109544 d!27347))

(declare-fun d!27349 () Bool)

(declare-fun c!26142 () Bool)

(assert (=> d!27349 (= c!26142 (is-Nil!1750 (t!21919 lt!31387)))))

(declare-fun e!61056 () (Set A!265))

(assert (=> d!27349 (= (content!178 (t!21919 lt!31387)) e!61056)))

(declare-fun b!109603 () Bool)

(assert (=> b!109603 (= e!61056 (as set.empty (Set A!265)))))

(declare-fun b!109604 () Bool)

(assert (=> b!109604 (= e!61056 (set.union (set.insert (h!7147 (t!21919 lt!31387)) (as set.empty (Set A!265))) (content!178 (t!21919 (t!21919 lt!31387)))))))

(assert (= (and d!27349 c!26142) b!109603))

(assert (= (and d!27349 (not c!26142)) b!109604))

(declare-fun m!99196 () Bool)

(assert (=> b!109604 m!99196))

(declare-fun m!99198 () Bool)

(assert (=> b!109604 m!99198))

(assert (=> b!109542 d!27349))

(assert (=> b!109545 d!27313))

(declare-fun d!27357 () Bool)

(assert (=> d!27357 (forall!283 (content!178 (t!21919 lt!31387)) lambda!2481)))

(declare-fun lt!31454 () Unit!1206)

(declare-fun choose!1457 (List!1756 Int) Unit!1206)

(assert (=> d!27357 (= lt!31454 (choose!1457 (t!21919 lt!31387) lambda!2481))))

(assert (=> d!27357 (forall!284 (t!21919 lt!31387) lambda!2481)))

(assert (=> d!27357 (= (lemmaForallThenOnContent!21 (t!21919 lt!31387) lambda!2481) lt!31454)))

(declare-fun bs!10888 () Bool)

(assert (= bs!10888 d!27357))

(assert (=> bs!10888 m!99044))

(assert (=> bs!10888 m!99044))

(declare-fun m!99200 () Bool)

(assert (=> bs!10888 m!99200))

(declare-fun m!99202 () Bool)

(assert (=> bs!10888 m!99202))

(assert (=> bs!10888 m!99020))

(assert (=> b!109545 d!27357))

(declare-fun condSetEmpty!1515 () Bool)

(assert (=> setNonEmpty!1509 (= condSetEmpty!1515 (= setRest!1509 (as set.empty (Set A!265))))))

(declare-fun setRes!1515 () Bool)

(assert (=> setNonEmpty!1509 (= tp!59412 setRes!1515)))

(declare-fun setIsEmpty!1515 () Bool)

(assert (=> setIsEmpty!1515 setRes!1515))

(declare-fun setNonEmpty!1515 () Bool)

(declare-fun tp!59426 () Bool)

(assert (=> setNonEmpty!1515 (= setRes!1515 (and tp!59426 tp_is_empty!863))))

(declare-fun setElem!1515 () A!265)

(declare-fun setRest!1515 () (Set A!265))

(assert (=> setNonEmpty!1515 (= setRest!1509 (set.union (set.insert setElem!1515 (as set.empty (Set A!265))) setRest!1515))))

(assert (= (and setNonEmpty!1509 condSetEmpty!1515) setIsEmpty!1515))

(assert (= (and setNonEmpty!1509 (not condSetEmpty!1515)) setNonEmpty!1515))

(declare-fun condSetEmpty!1518 () Bool)

(assert (=> tb!3429 (= condSetEmpty!1518 (= (dynLambda!650 g!9 (h!7147 lt!31387)) (as set.empty (Set B!557))))))

(declare-fun setRes!1518 () Bool)

(assert (=> tb!3429 (= result!4966 setRes!1518)))

(declare-fun setIsEmpty!1518 () Bool)

(assert (=> setIsEmpty!1518 setRes!1518))

(declare-fun setNonEmpty!1518 () Bool)

(declare-fun tp!59429 () Bool)

(declare-fun tp_is_empty!867 () Bool)

(assert (=> setNonEmpty!1518 (= setRes!1518 (and tp!59429 tp_is_empty!867))))

(declare-fun setRest!1518 () (Set B!557))

(declare-fun setElem!1518 () B!557)

(assert (=> setNonEmpty!1518 (= (dynLambda!650 g!9 (h!7147 lt!31387)) (set.union (set.insert setElem!1518 (as set.empty (Set B!557))) setRest!1518))))

(assert (= (and tb!3429 condSetEmpty!1518) setIsEmpty!1518))

(assert (= (and tb!3429 (not condSetEmpty!1518)) setNonEmpty!1518))

(declare-fun condSetEmpty!1519 () Bool)

(assert (=> tb!3425 (= condSetEmpty!1519 (= (dynLambda!650 f!927 (h!7147 lt!31387)) (as set.empty (Set B!557))))))

(declare-fun setRes!1519 () Bool)

(assert (=> tb!3425 (= result!4962 setRes!1519)))

(declare-fun setIsEmpty!1519 () Bool)

(assert (=> setIsEmpty!1519 setRes!1519))

(declare-fun setNonEmpty!1519 () Bool)

(declare-fun tp!59430 () Bool)

(assert (=> setNonEmpty!1519 (= setRes!1519 (and tp!59430 tp_is_empty!867))))

(declare-fun setRest!1519 () (Set B!557))

(declare-fun setElem!1519 () B!557)

(assert (=> setNonEmpty!1519 (= (dynLambda!650 f!927 (h!7147 lt!31387)) (set.union (set.insert setElem!1519 (as set.empty (Set B!557))) setRest!1519))))

(assert (= (and tb!3425 condSetEmpty!1519) setIsEmpty!1519))

(assert (= (and tb!3425 (not condSetEmpty!1519)) setNonEmpty!1519))

(assert (= result!4964 result!4966))

(assert (= result!4960 result!4962))

(declare-fun b_lambda!1467 () Bool)

(assert (= b_lambda!1461 (or start!11084 b_lambda!1467)))

(declare-fun bs!10889 () Bool)

(declare-fun d!27361 () Bool)

(assert (= bs!10889 (and d!27361 start!11084)))

(assert (=> bs!10889 (= (dynLambda!654 lambda!2481 (h!7147 lt!31387)) (= (dynLambda!650 f!927 (h!7147 lt!31387)) (dynLambda!650 g!9 (h!7147 lt!31387))))))

(declare-fun b_lambda!1471 () Bool)

(assert (=> (not b_lambda!1471) (not bs!10889)))

(assert (=> bs!10889 t!21912))

(declare-fun b_and!5215 () Bool)

(assert (= b_and!5199 (and (=> t!21912 result!4960) b_and!5215)))

(assert (=> bs!10889 t!21914))

(declare-fun b_and!5217 () Bool)

(assert (= b_and!5201 (and (=> t!21914 result!4962) b_and!5217)))

(declare-fun b_lambda!1473 () Bool)

(assert (=> (not b_lambda!1473) (not bs!10889)))

(assert (=> bs!10889 t!21916))

(declare-fun b_and!5219 () Bool)

(assert (= b_and!5215 (and (=> t!21916 result!4964) b_and!5219)))

(assert (=> bs!10889 t!21918))

(declare-fun b_and!5221 () Bool)

(assert (= b_and!5217 (and (=> t!21918 result!4966) b_and!5221)))

(assert (=> bs!10889 m!99038))

(assert (=> bs!10889 m!99040))

(assert (=> d!27301 d!27361))

(declare-fun b_lambda!1469 () Bool)

(assert (= b_lambda!1463 (or start!11084 b_lambda!1469)))

(declare-fun bs!10890 () Bool)

(declare-fun d!27363 () Bool)

(assert (= bs!10890 (and d!27363 start!11084)))

(assert (=> bs!10890 (= (dynLambda!654 lambda!2481 (h!7147 (t!21919 lt!31387))) (= (dynLambda!650 f!927 (h!7147 (t!21919 lt!31387))) (dynLambda!650 g!9 (h!7147 (t!21919 lt!31387)))))))

(declare-fun b_lambda!1475 () Bool)

(assert (=> (not b_lambda!1475) (not bs!10890)))

(declare-fun t!21930 () Bool)

(declare-fun tb!3439 () Bool)

(assert (=> (and start!11084 (= f!927 f!927) t!21930) tb!3439))

(assert (=> bs!10890 t!21930))

(declare-fun result!4980 () Bool)

(declare-fun b_and!5223 () Bool)

(assert (= b_and!5219 (and (=> t!21930 result!4980) b_and!5223)))

(declare-fun t!21932 () Bool)

(declare-fun tb!3441 () Bool)

(assert (=> (and start!11084 (= g!9 f!927) t!21932) tb!3441))

(assert (=> bs!10890 t!21932))

(declare-fun result!4982 () Bool)

(declare-fun b_and!5225 () Bool)

(assert (= b_and!5221 (and (=> t!21932 result!4982) b_and!5225)))

(declare-fun b_lambda!1477 () Bool)

(assert (=> (not b_lambda!1477) (not bs!10890)))

(declare-fun tb!3443 () Bool)

(declare-fun t!21934 () Bool)

(assert (=> (and start!11084 (= f!927 g!9) t!21934) tb!3443))

(assert (=> bs!10890 t!21934))

(declare-fun result!4984 () Bool)

(declare-fun b_and!5227 () Bool)

(assert (= b_and!5223 (and (=> t!21934 result!4984) b_and!5227)))

(declare-fun t!21936 () Bool)

(declare-fun tb!3445 () Bool)

(assert (=> (and start!11084 (= g!9 g!9) t!21936) tb!3445))

(assert (=> bs!10890 t!21936))

(declare-fun result!4986 () Bool)

(declare-fun b_and!5229 () Bool)

(assert (= b_and!5225 (and (=> t!21936 result!4986) b_and!5229)))

(declare-fun m!99206 () Bool)

(assert (=> bs!10890 m!99206))

(declare-fun m!99208 () Bool)

(assert (=> bs!10890 m!99208))

(assert (=> b!109591 d!27363))

(push 1)

(assert (not d!27301))

(assert (not d!27317))

(assert (not b!109592))

(assert (not b_lambda!1471))

(assert (not d!27311))

(assert (not d!27335))

(assert (not tb!3443))

(assert (not b_lambda!1475))

(assert (not d!27357))

(assert (not d!27327))

(assert (not d!27347))

(assert b_and!5229)

(assert (not setNonEmpty!1518))

(assert (not tb!3441))

(assert (not setNonEmpty!1519))

(assert (not b!109604))

(assert (not tb!3439))

(assert (not d!27343))

(assert (not d!27339))

(assert (not b_lambda!1469))

(assert (not b!109573))

(assert (not b_lambda!1455))

(assert (not d!27323))

(assert b_and!5227)

(assert (not b_lambda!1477))

(assert (not d!27333))

(assert (not b_lambda!1473))

(assert (not b_lambda!1453))

(assert (not b!109580))

(assert (not b_next!3325))

(assert tp_is_empty!867)

(assert (not d!27313))

(assert (not b!109578))

(assert (not b_lambda!1467))

(assert (not b_next!3327))

(assert (not b!109585))

(assert (not tb!3445))

(assert tp_is_empty!863)

(assert (not d!27305))

(assert (not b!109576))

(assert (not d!27329))

(assert (not setNonEmpty!1515))

(check-sat)

(pop 1)

(push 1)

(assert b_and!5227)

(assert b_and!5229)

(assert (not b_next!3327))

(assert (not b_next!3325))

(check-sat)

(pop 1)

