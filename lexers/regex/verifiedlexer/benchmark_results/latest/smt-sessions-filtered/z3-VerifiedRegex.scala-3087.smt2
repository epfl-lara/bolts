; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183406 () Bool)

(assert start!183406)

(declare-fun b_free!51497 () Bool)

(declare-fun b_next!52201 () Bool)

(assert (=> start!183406 (= b_free!51497 (not b_next!52201))))

(declare-fun tp!520661 () Bool)

(declare-fun b_and!143619 () Bool)

(assert (=> start!183406 (= tp!520661 b_and!143619)))

(declare-fun b!1841354 () Bool)

(declare-fun e!1176724 () Bool)

(declare-fun tp!520662 () Bool)

(assert (=> b!1841354 (= e!1176724 tp!520662)))

(declare-fun res!827478 () Bool)

(declare-fun e!1176726 () Bool)

(assert (=> start!183406 (=> (not res!827478) (not e!1176726))))

(declare-datatypes ((T!31836 0))(
  ( (T!31837 (val!5748 Int)) )
))
(declare-datatypes ((List!20348 0))(
  ( (Nil!20278) (Cons!20278 (h!25679 T!31836) (t!171793 List!20348)) )
))
(declare-datatypes ((IArray!13411 0))(
  ( (IArray!13412 (innerList!6763 List!20348)) )
))
(declare-datatypes ((Conc!6703 0))(
  ( (Node!6703 (left!16200 Conc!6703) (right!16530 Conc!6703) (csize!13636 Int) (cheight!6914 Int)) (Leaf!9791 (xs!9579 IArray!13411) (csize!13637 Int)) (Empty!6703) )
))
(declare-fun t!3734 () Conc!6703)

(get-info :version)

(assert (=> start!183406 (= res!827478 ((_ is Empty!6703) t!3734))))

(assert (=> start!183406 e!1176726))

(declare-fun e!1176725 () Bool)

(declare-fun inv!26481 (Conc!6703) Bool)

(assert (=> start!183406 (and (inv!26481 t!3734) e!1176725)))

(assert (=> start!183406 tp!520661))

(declare-fun b!1841351 () Bool)

(declare-fun p!1470 () Int)

(declare-fun exists!653 (List!20348 Int) Bool)

(declare-fun list!8240 (Conc!6703) List!20348)

(assert (=> b!1841351 (= e!1176726 (exists!653 (list!8240 t!3734) p!1470))))

(declare-fun tp!520659 () Bool)

(declare-fun tp!520660 () Bool)

(declare-fun b!1841352 () Bool)

(assert (=> b!1841352 (= e!1176725 (and (inv!26481 (left!16200 t!3734)) tp!520660 (inv!26481 (right!16530 t!3734)) tp!520659))))

(declare-fun b!1841353 () Bool)

(declare-fun inv!26482 (IArray!13411) Bool)

(assert (=> b!1841353 (= e!1176725 (and (inv!26482 (xs!9579 t!3734)) e!1176724))))

(assert (= (and start!183406 res!827478) b!1841351))

(assert (= (and start!183406 ((_ is Node!6703) t!3734)) b!1841352))

(assert (= b!1841353 b!1841354))

(assert (= (and start!183406 ((_ is Leaf!9791) t!3734)) b!1841353))

(declare-fun m!2268857 () Bool)

(assert (=> start!183406 m!2268857))

(declare-fun m!2268859 () Bool)

(assert (=> b!1841351 m!2268859))

(assert (=> b!1841351 m!2268859))

(declare-fun m!2268861 () Bool)

(assert (=> b!1841351 m!2268861))

(declare-fun m!2268863 () Bool)

(assert (=> b!1841352 m!2268863))

(declare-fun m!2268865 () Bool)

(assert (=> b!1841352 m!2268865))

(declare-fun m!2268867 () Bool)

(assert (=> b!1841353 m!2268867))

(check-sat (not b!1841351) (not b_next!52201) (not b!1841353) (not b!1841352) b_and!143619 (not b!1841354) (not start!183406))
(check-sat b_and!143619 (not b_next!52201))
(get-model)

(declare-fun d!563074 () Bool)

(declare-fun size!16073 (List!20348) Int)

(assert (=> d!563074 (= (inv!26482 (xs!9579 t!3734)) (<= (size!16073 (innerList!6763 (xs!9579 t!3734))) 2147483647))))

(declare-fun bs!408616 () Bool)

(assert (= bs!408616 d!563074))

(declare-fun m!2268869 () Bool)

(assert (=> bs!408616 m!2268869))

(assert (=> b!1841353 d!563074))

(declare-fun d!563078 () Bool)

(assert (=> d!563078 true))

(declare-fun order!13073 () Int)

(declare-fun lambda!72307 () Int)

(declare-fun dynLambda!10076 (Int Int) Int)

(assert (=> d!563078 (< (dynLambda!10076 order!13073 p!1470) (dynLambda!10076 order!13073 lambda!72307))))

(declare-fun forall!4356 (List!20348 Int) Bool)

(assert (=> d!563078 (= (exists!653 (list!8240 t!3734) p!1470) (not (forall!4356 (list!8240 t!3734) lambda!72307)))))

(declare-fun bs!408617 () Bool)

(assert (= bs!408617 d!563078))

(assert (=> bs!408617 m!2268859))

(declare-fun m!2268871 () Bool)

(assert (=> bs!408617 m!2268871))

(assert (=> b!1841351 d!563078))

(declare-fun d!563080 () Bool)

(declare-fun c!300525 () Bool)

(assert (=> d!563080 (= c!300525 ((_ is Empty!6703) t!3734))))

(declare-fun e!1176737 () List!20348)

(assert (=> d!563080 (= (list!8240 t!3734) e!1176737)))

(declare-fun b!1841374 () Bool)

(assert (=> b!1841374 (= e!1176737 Nil!20278)))

(declare-fun b!1841375 () Bool)

(declare-fun e!1176738 () List!20348)

(assert (=> b!1841375 (= e!1176737 e!1176738)))

(declare-fun c!300526 () Bool)

(assert (=> b!1841375 (= c!300526 ((_ is Leaf!9791) t!3734))))

(declare-fun b!1841376 () Bool)

(declare-fun list!8241 (IArray!13411) List!20348)

(assert (=> b!1841376 (= e!1176738 (list!8241 (xs!9579 t!3734)))))

(declare-fun b!1841377 () Bool)

(declare-fun ++!5511 (List!20348 List!20348) List!20348)

(assert (=> b!1841377 (= e!1176738 (++!5511 (list!8240 (left!16200 t!3734)) (list!8240 (right!16530 t!3734))))))

(assert (= (and d!563080 c!300525) b!1841374))

(assert (= (and d!563080 (not c!300525)) b!1841375))

(assert (= (and b!1841375 c!300526) b!1841376))

(assert (= (and b!1841375 (not c!300526)) b!1841377))

(declare-fun m!2268873 () Bool)

(assert (=> b!1841376 m!2268873))

(declare-fun m!2268875 () Bool)

(assert (=> b!1841377 m!2268875))

(declare-fun m!2268877 () Bool)

(assert (=> b!1841377 m!2268877))

(assert (=> b!1841377 m!2268875))

(assert (=> b!1841377 m!2268877))

(declare-fun m!2268881 () Bool)

(assert (=> b!1841377 m!2268881))

(assert (=> b!1841351 d!563080))

(declare-fun d!563082 () Bool)

(declare-fun c!300531 () Bool)

(assert (=> d!563082 (= c!300531 ((_ is Node!6703) (left!16200 t!3734)))))

(declare-fun e!1176747 () Bool)

(assert (=> d!563082 (= (inv!26481 (left!16200 t!3734)) e!1176747)))

(declare-fun b!1841390 () Bool)

(declare-fun inv!26483 (Conc!6703) Bool)

(assert (=> b!1841390 (= e!1176747 (inv!26483 (left!16200 t!3734)))))

(declare-fun b!1841391 () Bool)

(declare-fun e!1176748 () Bool)

(assert (=> b!1841391 (= e!1176747 e!1176748)))

(declare-fun res!827486 () Bool)

(assert (=> b!1841391 (= res!827486 (not ((_ is Leaf!9791) (left!16200 t!3734))))))

(assert (=> b!1841391 (=> res!827486 e!1176748)))

(declare-fun b!1841392 () Bool)

(declare-fun inv!26484 (Conc!6703) Bool)

(assert (=> b!1841392 (= e!1176748 (inv!26484 (left!16200 t!3734)))))

(assert (= (and d!563082 c!300531) b!1841390))

(assert (= (and d!563082 (not c!300531)) b!1841391))

(assert (= (and b!1841391 (not res!827486)) b!1841392))

(declare-fun m!2268893 () Bool)

(assert (=> b!1841390 m!2268893))

(declare-fun m!2268895 () Bool)

(assert (=> b!1841392 m!2268895))

(assert (=> b!1841352 d!563082))

(declare-fun d!563090 () Bool)

(declare-fun c!300532 () Bool)

(assert (=> d!563090 (= c!300532 ((_ is Node!6703) (right!16530 t!3734)))))

(declare-fun e!1176749 () Bool)

(assert (=> d!563090 (= (inv!26481 (right!16530 t!3734)) e!1176749)))

(declare-fun b!1841393 () Bool)

(assert (=> b!1841393 (= e!1176749 (inv!26483 (right!16530 t!3734)))))

(declare-fun b!1841394 () Bool)

(declare-fun e!1176750 () Bool)

(assert (=> b!1841394 (= e!1176749 e!1176750)))

(declare-fun res!827487 () Bool)

(assert (=> b!1841394 (= res!827487 (not ((_ is Leaf!9791) (right!16530 t!3734))))))

(assert (=> b!1841394 (=> res!827487 e!1176750)))

(declare-fun b!1841395 () Bool)

(assert (=> b!1841395 (= e!1176750 (inv!26484 (right!16530 t!3734)))))

(assert (= (and d!563090 c!300532) b!1841393))

(assert (= (and d!563090 (not c!300532)) b!1841394))

(assert (= (and b!1841394 (not res!827487)) b!1841395))

(declare-fun m!2268897 () Bool)

(assert (=> b!1841393 m!2268897))

(declare-fun m!2268899 () Bool)

(assert (=> b!1841395 m!2268899))

(assert (=> b!1841352 d!563090))

(declare-fun d!563092 () Bool)

(declare-fun c!300533 () Bool)

(assert (=> d!563092 (= c!300533 ((_ is Node!6703) t!3734))))

(declare-fun e!1176751 () Bool)

(assert (=> d!563092 (= (inv!26481 t!3734) e!1176751)))

(declare-fun b!1841396 () Bool)

(assert (=> b!1841396 (= e!1176751 (inv!26483 t!3734))))

(declare-fun b!1841397 () Bool)

(declare-fun e!1176752 () Bool)

(assert (=> b!1841397 (= e!1176751 e!1176752)))

(declare-fun res!827488 () Bool)

(assert (=> b!1841397 (= res!827488 (not ((_ is Leaf!9791) t!3734)))))

(assert (=> b!1841397 (=> res!827488 e!1176752)))

(declare-fun b!1841398 () Bool)

(assert (=> b!1841398 (= e!1176752 (inv!26484 t!3734))))

(assert (= (and d!563092 c!300533) b!1841396))

(assert (= (and d!563092 (not c!300533)) b!1841397))

(assert (= (and b!1841397 (not res!827488)) b!1841398))

(declare-fun m!2268903 () Bool)

(assert (=> b!1841396 m!2268903))

(declare-fun m!2268905 () Bool)

(assert (=> b!1841398 m!2268905))

(assert (=> start!183406 d!563092))

(declare-fun b!1841403 () Bool)

(declare-fun e!1176755 () Bool)

(declare-fun tp_is_empty!8343 () Bool)

(declare-fun tp!520665 () Bool)

(assert (=> b!1841403 (= e!1176755 (and tp_is_empty!8343 tp!520665))))

(assert (=> b!1841354 (= tp!520662 e!1176755)))

(assert (= (and b!1841354 ((_ is Cons!20278) (innerList!6763 (xs!9579 t!3734)))) b!1841403))

(declare-fun e!1176761 () Bool)

(declare-fun tp!520673 () Bool)

(declare-fun tp!520674 () Bool)

(declare-fun b!1841412 () Bool)

(assert (=> b!1841412 (= e!1176761 (and (inv!26481 (left!16200 (left!16200 t!3734))) tp!520673 (inv!26481 (right!16530 (left!16200 t!3734))) tp!520674))))

(declare-fun b!1841414 () Bool)

(declare-fun e!1176760 () Bool)

(declare-fun tp!520672 () Bool)

(assert (=> b!1841414 (= e!1176760 tp!520672)))

(declare-fun b!1841413 () Bool)

(assert (=> b!1841413 (= e!1176761 (and (inv!26482 (xs!9579 (left!16200 t!3734))) e!1176760))))

(assert (=> b!1841352 (= tp!520660 (and (inv!26481 (left!16200 t!3734)) e!1176761))))

(assert (= (and b!1841352 ((_ is Node!6703) (left!16200 t!3734))) b!1841412))

(assert (= b!1841413 b!1841414))

(assert (= (and b!1841352 ((_ is Leaf!9791) (left!16200 t!3734))) b!1841413))

(declare-fun m!2268907 () Bool)

(assert (=> b!1841412 m!2268907))

(declare-fun m!2268909 () Bool)

(assert (=> b!1841412 m!2268909))

(declare-fun m!2268911 () Bool)

(assert (=> b!1841413 m!2268911))

(assert (=> b!1841352 m!2268863))

(declare-fun e!1176763 () Bool)

(declare-fun tp!520676 () Bool)

(declare-fun tp!520677 () Bool)

(declare-fun b!1841415 () Bool)

(assert (=> b!1841415 (= e!1176763 (and (inv!26481 (left!16200 (right!16530 t!3734))) tp!520676 (inv!26481 (right!16530 (right!16530 t!3734))) tp!520677))))

(declare-fun b!1841417 () Bool)

(declare-fun e!1176762 () Bool)

(declare-fun tp!520675 () Bool)

(assert (=> b!1841417 (= e!1176762 tp!520675)))

(declare-fun b!1841416 () Bool)

(assert (=> b!1841416 (= e!1176763 (and (inv!26482 (xs!9579 (right!16530 t!3734))) e!1176762))))

(assert (=> b!1841352 (= tp!520659 (and (inv!26481 (right!16530 t!3734)) e!1176763))))

(assert (= (and b!1841352 ((_ is Node!6703) (right!16530 t!3734))) b!1841415))

(assert (= b!1841416 b!1841417))

(assert (= (and b!1841352 ((_ is Leaf!9791) (right!16530 t!3734))) b!1841416))

(declare-fun m!2268913 () Bool)

(assert (=> b!1841415 m!2268913))

(declare-fun m!2268915 () Bool)

(assert (=> b!1841415 m!2268915))

(declare-fun m!2268917 () Bool)

(assert (=> b!1841416 m!2268917))

(assert (=> b!1841352 m!2268865))

(check-sat (not b!1841376) (not b!1841392) (not b!1841412) (not b!1841396) tp_is_empty!8343 (not b!1841413) (not b_next!52201) (not b!1841416) (not b!1841377) (not b!1841352) (not b!1841414) (not b!1841398) (not b!1841415) (not d!563074) b_and!143619 (not d!563078) (not b!1841390) (not b!1841395) (not b!1841417) (not b!1841403) (not b!1841393))
(check-sat b_and!143619 (not b_next!52201))
(get-model)

(declare-fun d!563098 () Bool)

(declare-fun lt!714309 () Int)

(assert (=> d!563098 (>= lt!714309 0)))

(declare-fun e!1176783 () Int)

(assert (=> d!563098 (= lt!714309 e!1176783)))

(declare-fun c!300542 () Bool)

(assert (=> d!563098 (= c!300542 ((_ is Nil!20278) (innerList!6763 (xs!9579 t!3734))))))

(assert (=> d!563098 (= (size!16073 (innerList!6763 (xs!9579 t!3734))) lt!714309)))

(declare-fun b!1841455 () Bool)

(assert (=> b!1841455 (= e!1176783 0)))

(declare-fun b!1841456 () Bool)

(assert (=> b!1841456 (= e!1176783 (+ 1 (size!16073 (t!171793 (innerList!6763 (xs!9579 t!3734))))))))

(assert (= (and d!563098 c!300542) b!1841455))

(assert (= (and d!563098 (not c!300542)) b!1841456))

(declare-fun m!2268941 () Bool)

(assert (=> b!1841456 m!2268941))

(assert (=> d!563074 d!563098))

(declare-fun d!563100 () Bool)

(assert (=> d!563100 (= (inv!26482 (xs!9579 (right!16530 t!3734))) (<= (size!16073 (innerList!6763 (xs!9579 (right!16530 t!3734)))) 2147483647))))

(declare-fun bs!408620 () Bool)

(assert (= bs!408620 d!563100))

(declare-fun m!2268943 () Bool)

(assert (=> bs!408620 m!2268943))

(assert (=> b!1841416 d!563100))

(declare-fun d!563102 () Bool)

(declare-fun res!827495 () Bool)

(declare-fun e!1176786 () Bool)

(assert (=> d!563102 (=> (not res!827495) (not e!1176786))))

(declare-fun size!16075 (Conc!6703) Int)

(assert (=> d!563102 (= res!827495 (= (csize!13636 (left!16200 t!3734)) (+ (size!16075 (left!16200 (left!16200 t!3734))) (size!16075 (right!16530 (left!16200 t!3734))))))))

(assert (=> d!563102 (= (inv!26483 (left!16200 t!3734)) e!1176786)))

(declare-fun b!1841463 () Bool)

(declare-fun res!827496 () Bool)

(assert (=> b!1841463 (=> (not res!827496) (not e!1176786))))

(assert (=> b!1841463 (= res!827496 (and (not (= (left!16200 (left!16200 t!3734)) Empty!6703)) (not (= (right!16530 (left!16200 t!3734)) Empty!6703))))))

(declare-fun b!1841464 () Bool)

(declare-fun res!827497 () Bool)

(assert (=> b!1841464 (=> (not res!827497) (not e!1176786))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1020 (Conc!6703) Int)

(assert (=> b!1841464 (= res!827497 (= (cheight!6914 (left!16200 t!3734)) (+ (max!0 (height!1020 (left!16200 (left!16200 t!3734))) (height!1020 (right!16530 (left!16200 t!3734)))) 1)))))

(declare-fun b!1841465 () Bool)

(assert (=> b!1841465 (= e!1176786 (<= 0 (cheight!6914 (left!16200 t!3734))))))

(assert (= (and d!563102 res!827495) b!1841463))

(assert (= (and b!1841463 res!827496) b!1841464))

(assert (= (and b!1841464 res!827497) b!1841465))

(declare-fun m!2268945 () Bool)

(assert (=> d!563102 m!2268945))

(declare-fun m!2268947 () Bool)

(assert (=> d!563102 m!2268947))

(declare-fun m!2268949 () Bool)

(assert (=> b!1841464 m!2268949))

(declare-fun m!2268951 () Bool)

(assert (=> b!1841464 m!2268951))

(assert (=> b!1841464 m!2268949))

(assert (=> b!1841464 m!2268951))

(declare-fun m!2268953 () Bool)

(assert (=> b!1841464 m!2268953))

(assert (=> b!1841390 d!563102))

(declare-fun d!563104 () Bool)

(declare-fun res!827502 () Bool)

(declare-fun e!1176789 () Bool)

(assert (=> d!563104 (=> (not res!827502) (not e!1176789))))

(assert (=> d!563104 (= res!827502 (<= (size!16073 (list!8241 (xs!9579 t!3734))) 512))))

(assert (=> d!563104 (= (inv!26484 t!3734) e!1176789)))

(declare-fun b!1841470 () Bool)

(declare-fun res!827503 () Bool)

(assert (=> b!1841470 (=> (not res!827503) (not e!1176789))))

(assert (=> b!1841470 (= res!827503 (= (csize!13637 t!3734) (size!16073 (list!8241 (xs!9579 t!3734)))))))

(declare-fun b!1841471 () Bool)

(assert (=> b!1841471 (= e!1176789 (and (> (csize!13637 t!3734) 0) (<= (csize!13637 t!3734) 512)))))

(assert (= (and d!563104 res!827502) b!1841470))

(assert (= (and b!1841470 res!827503) b!1841471))

(assert (=> d!563104 m!2268873))

(assert (=> d!563104 m!2268873))

(declare-fun m!2268955 () Bool)

(assert (=> d!563104 m!2268955))

(assert (=> b!1841470 m!2268873))

(assert (=> b!1841470 m!2268873))

(assert (=> b!1841470 m!2268955))

(assert (=> b!1841398 d!563104))

(declare-fun d!563106 () Bool)

(declare-fun c!300543 () Bool)

(assert (=> d!563106 (= c!300543 ((_ is Node!6703) (left!16200 (right!16530 t!3734))))))

(declare-fun e!1176790 () Bool)

(assert (=> d!563106 (= (inv!26481 (left!16200 (right!16530 t!3734))) e!1176790)))

(declare-fun b!1841472 () Bool)

(assert (=> b!1841472 (= e!1176790 (inv!26483 (left!16200 (right!16530 t!3734))))))

(declare-fun b!1841473 () Bool)

(declare-fun e!1176791 () Bool)

(assert (=> b!1841473 (= e!1176790 e!1176791)))

(declare-fun res!827504 () Bool)

(assert (=> b!1841473 (= res!827504 (not ((_ is Leaf!9791) (left!16200 (right!16530 t!3734)))))))

(assert (=> b!1841473 (=> res!827504 e!1176791)))

(declare-fun b!1841474 () Bool)

(assert (=> b!1841474 (= e!1176791 (inv!26484 (left!16200 (right!16530 t!3734))))))

(assert (= (and d!563106 c!300543) b!1841472))

(assert (= (and d!563106 (not c!300543)) b!1841473))

(assert (= (and b!1841473 (not res!827504)) b!1841474))

(declare-fun m!2268957 () Bool)

(assert (=> b!1841472 m!2268957))

(declare-fun m!2268959 () Bool)

(assert (=> b!1841474 m!2268959))

(assert (=> b!1841415 d!563106))

(declare-fun d!563108 () Bool)

(declare-fun c!300544 () Bool)

(assert (=> d!563108 (= c!300544 ((_ is Node!6703) (right!16530 (right!16530 t!3734))))))

(declare-fun e!1176792 () Bool)

(assert (=> d!563108 (= (inv!26481 (right!16530 (right!16530 t!3734))) e!1176792)))

(declare-fun b!1841475 () Bool)

(assert (=> b!1841475 (= e!1176792 (inv!26483 (right!16530 (right!16530 t!3734))))))

(declare-fun b!1841476 () Bool)

(declare-fun e!1176793 () Bool)

(assert (=> b!1841476 (= e!1176792 e!1176793)))

(declare-fun res!827505 () Bool)

(assert (=> b!1841476 (= res!827505 (not ((_ is Leaf!9791) (right!16530 (right!16530 t!3734)))))))

(assert (=> b!1841476 (=> res!827505 e!1176793)))

(declare-fun b!1841477 () Bool)

(assert (=> b!1841477 (= e!1176793 (inv!26484 (right!16530 (right!16530 t!3734))))))

(assert (= (and d!563108 c!300544) b!1841475))

(assert (= (and d!563108 (not c!300544)) b!1841476))

(assert (= (and b!1841476 (not res!827505)) b!1841477))

(declare-fun m!2268961 () Bool)

(assert (=> b!1841475 m!2268961))

(declare-fun m!2268963 () Bool)

(assert (=> b!1841477 m!2268963))

(assert (=> b!1841415 d!563108))

(declare-fun d!563110 () Bool)

(declare-fun res!827510 () Bool)

(declare-fun e!1176798 () Bool)

(assert (=> d!563110 (=> res!827510 e!1176798)))

(assert (=> d!563110 (= res!827510 ((_ is Nil!20278) (list!8240 t!3734)))))

(assert (=> d!563110 (= (forall!4356 (list!8240 t!3734) lambda!72307) e!1176798)))

(declare-fun b!1841482 () Bool)

(declare-fun e!1176799 () Bool)

(assert (=> b!1841482 (= e!1176798 e!1176799)))

(declare-fun res!827511 () Bool)

(assert (=> b!1841482 (=> (not res!827511) (not e!1176799))))

(declare-fun dynLambda!10078 (Int T!31836) Bool)

(assert (=> b!1841482 (= res!827511 (dynLambda!10078 lambda!72307 (h!25679 (list!8240 t!3734))))))

(declare-fun b!1841483 () Bool)

(assert (=> b!1841483 (= e!1176799 (forall!4356 (t!171793 (list!8240 t!3734)) lambda!72307))))

(assert (= (and d!563110 (not res!827510)) b!1841482))

(assert (= (and b!1841482 res!827511) b!1841483))

(declare-fun b_lambda!61041 () Bool)

(assert (=> (not b_lambda!61041) (not b!1841482)))

(declare-fun m!2268965 () Bool)

(assert (=> b!1841482 m!2268965))

(declare-fun m!2268967 () Bool)

(assert (=> b!1841483 m!2268967))

(assert (=> d!563078 d!563110))

(declare-fun b!1841494 () Bool)

(declare-fun res!827517 () Bool)

(declare-fun e!1176804 () Bool)

(assert (=> b!1841494 (=> (not res!827517) (not e!1176804))))

(declare-fun lt!714312 () List!20348)

(assert (=> b!1841494 (= res!827517 (= (size!16073 lt!714312) (+ (size!16073 (list!8240 (left!16200 t!3734))) (size!16073 (list!8240 (right!16530 t!3734))))))))

(declare-fun d!563112 () Bool)

(assert (=> d!563112 e!1176804))

(declare-fun res!827516 () Bool)

(assert (=> d!563112 (=> (not res!827516) (not e!1176804))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3018 (List!20348) (InoxSet T!31836))

(assert (=> d!563112 (= res!827516 (= (content!3018 lt!714312) ((_ map or) (content!3018 (list!8240 (left!16200 t!3734))) (content!3018 (list!8240 (right!16530 t!3734))))))))

(declare-fun e!1176805 () List!20348)

(assert (=> d!563112 (= lt!714312 e!1176805)))

(declare-fun c!300547 () Bool)

(assert (=> d!563112 (= c!300547 ((_ is Nil!20278) (list!8240 (left!16200 t!3734))))))

(assert (=> d!563112 (= (++!5511 (list!8240 (left!16200 t!3734)) (list!8240 (right!16530 t!3734))) lt!714312)))

(declare-fun b!1841495 () Bool)

(assert (=> b!1841495 (= e!1176804 (or (not (= (list!8240 (right!16530 t!3734)) Nil!20278)) (= lt!714312 (list!8240 (left!16200 t!3734)))))))

(declare-fun b!1841493 () Bool)

(assert (=> b!1841493 (= e!1176805 (Cons!20278 (h!25679 (list!8240 (left!16200 t!3734))) (++!5511 (t!171793 (list!8240 (left!16200 t!3734))) (list!8240 (right!16530 t!3734)))))))

(declare-fun b!1841492 () Bool)

(assert (=> b!1841492 (= e!1176805 (list!8240 (right!16530 t!3734)))))

(assert (= (and d!563112 c!300547) b!1841492))

(assert (= (and d!563112 (not c!300547)) b!1841493))

(assert (= (and d!563112 res!827516) b!1841494))

(assert (= (and b!1841494 res!827517) b!1841495))

(declare-fun m!2268969 () Bool)

(assert (=> b!1841494 m!2268969))

(assert (=> b!1841494 m!2268875))

(declare-fun m!2268971 () Bool)

(assert (=> b!1841494 m!2268971))

(assert (=> b!1841494 m!2268877))

(declare-fun m!2268973 () Bool)

(assert (=> b!1841494 m!2268973))

(declare-fun m!2268975 () Bool)

(assert (=> d!563112 m!2268975))

(assert (=> d!563112 m!2268875))

(declare-fun m!2268977 () Bool)

(assert (=> d!563112 m!2268977))

(assert (=> d!563112 m!2268877))

(declare-fun m!2268979 () Bool)

(assert (=> d!563112 m!2268979))

(assert (=> b!1841493 m!2268877))

(declare-fun m!2268981 () Bool)

(assert (=> b!1841493 m!2268981))

(assert (=> b!1841377 d!563112))

(declare-fun d!563114 () Bool)

(declare-fun c!300548 () Bool)

(assert (=> d!563114 (= c!300548 ((_ is Empty!6703) (left!16200 t!3734)))))

(declare-fun e!1176806 () List!20348)

(assert (=> d!563114 (= (list!8240 (left!16200 t!3734)) e!1176806)))

(declare-fun b!1841496 () Bool)

(assert (=> b!1841496 (= e!1176806 Nil!20278)))

(declare-fun b!1841497 () Bool)

(declare-fun e!1176807 () List!20348)

(assert (=> b!1841497 (= e!1176806 e!1176807)))

(declare-fun c!300549 () Bool)

(assert (=> b!1841497 (= c!300549 ((_ is Leaf!9791) (left!16200 t!3734)))))

(declare-fun b!1841498 () Bool)

(assert (=> b!1841498 (= e!1176807 (list!8241 (xs!9579 (left!16200 t!3734))))))

(declare-fun b!1841499 () Bool)

(assert (=> b!1841499 (= e!1176807 (++!5511 (list!8240 (left!16200 (left!16200 t!3734))) (list!8240 (right!16530 (left!16200 t!3734)))))))

(assert (= (and d!563114 c!300548) b!1841496))

(assert (= (and d!563114 (not c!300548)) b!1841497))

(assert (= (and b!1841497 c!300549) b!1841498))

(assert (= (and b!1841497 (not c!300549)) b!1841499))

(declare-fun m!2268983 () Bool)

(assert (=> b!1841498 m!2268983))

(declare-fun m!2268985 () Bool)

(assert (=> b!1841499 m!2268985))

(declare-fun m!2268987 () Bool)

(assert (=> b!1841499 m!2268987))

(assert (=> b!1841499 m!2268985))

(assert (=> b!1841499 m!2268987))

(declare-fun m!2268989 () Bool)

(assert (=> b!1841499 m!2268989))

(assert (=> b!1841377 d!563114))

(declare-fun d!563116 () Bool)

(declare-fun c!300550 () Bool)

(assert (=> d!563116 (= c!300550 ((_ is Empty!6703) (right!16530 t!3734)))))

(declare-fun e!1176808 () List!20348)

(assert (=> d!563116 (= (list!8240 (right!16530 t!3734)) e!1176808)))

(declare-fun b!1841500 () Bool)

(assert (=> b!1841500 (= e!1176808 Nil!20278)))

(declare-fun b!1841501 () Bool)

(declare-fun e!1176809 () List!20348)

(assert (=> b!1841501 (= e!1176808 e!1176809)))

(declare-fun c!300551 () Bool)

(assert (=> b!1841501 (= c!300551 ((_ is Leaf!9791) (right!16530 t!3734)))))

(declare-fun b!1841502 () Bool)

(assert (=> b!1841502 (= e!1176809 (list!8241 (xs!9579 (right!16530 t!3734))))))

(declare-fun b!1841503 () Bool)

(assert (=> b!1841503 (= e!1176809 (++!5511 (list!8240 (left!16200 (right!16530 t!3734))) (list!8240 (right!16530 (right!16530 t!3734)))))))

(assert (= (and d!563116 c!300550) b!1841500))

(assert (= (and d!563116 (not c!300550)) b!1841501))

(assert (= (and b!1841501 c!300551) b!1841502))

(assert (= (and b!1841501 (not c!300551)) b!1841503))

(declare-fun m!2268991 () Bool)

(assert (=> b!1841502 m!2268991))

(declare-fun m!2268993 () Bool)

(assert (=> b!1841503 m!2268993))

(declare-fun m!2268995 () Bool)

(assert (=> b!1841503 m!2268995))

(assert (=> b!1841503 m!2268993))

(assert (=> b!1841503 m!2268995))

(declare-fun m!2268997 () Bool)

(assert (=> b!1841503 m!2268997))

(assert (=> b!1841377 d!563116))

(declare-fun d!563118 () Bool)

(assert (=> d!563118 (= (list!8241 (xs!9579 t!3734)) (innerList!6763 (xs!9579 t!3734)))))

(assert (=> b!1841376 d!563118))

(declare-fun d!563120 () Bool)

(declare-fun res!827518 () Bool)

(declare-fun e!1176810 () Bool)

(assert (=> d!563120 (=> (not res!827518) (not e!1176810))))

(assert (=> d!563120 (= res!827518 (= (csize!13636 t!3734) (+ (size!16075 (left!16200 t!3734)) (size!16075 (right!16530 t!3734)))))))

(assert (=> d!563120 (= (inv!26483 t!3734) e!1176810)))

(declare-fun b!1841504 () Bool)

(declare-fun res!827519 () Bool)

(assert (=> b!1841504 (=> (not res!827519) (not e!1176810))))

(assert (=> b!1841504 (= res!827519 (and (not (= (left!16200 t!3734) Empty!6703)) (not (= (right!16530 t!3734) Empty!6703))))))

(declare-fun b!1841505 () Bool)

(declare-fun res!827520 () Bool)

(assert (=> b!1841505 (=> (not res!827520) (not e!1176810))))

(assert (=> b!1841505 (= res!827520 (= (cheight!6914 t!3734) (+ (max!0 (height!1020 (left!16200 t!3734)) (height!1020 (right!16530 t!3734))) 1)))))

(declare-fun b!1841506 () Bool)

(assert (=> b!1841506 (= e!1176810 (<= 0 (cheight!6914 t!3734)))))

(assert (= (and d!563120 res!827518) b!1841504))

(assert (= (and b!1841504 res!827519) b!1841505))

(assert (= (and b!1841505 res!827520) b!1841506))

(declare-fun m!2268999 () Bool)

(assert (=> d!563120 m!2268999))

(declare-fun m!2269001 () Bool)

(assert (=> d!563120 m!2269001))

(declare-fun m!2269003 () Bool)

(assert (=> b!1841505 m!2269003))

(declare-fun m!2269005 () Bool)

(assert (=> b!1841505 m!2269005))

(assert (=> b!1841505 m!2269003))

(assert (=> b!1841505 m!2269005))

(declare-fun m!2269007 () Bool)

(assert (=> b!1841505 m!2269007))

(assert (=> b!1841396 d!563120))

(declare-fun d!563122 () Bool)

(declare-fun res!827521 () Bool)

(declare-fun e!1176811 () Bool)

(assert (=> d!563122 (=> (not res!827521) (not e!1176811))))

(assert (=> d!563122 (= res!827521 (<= (size!16073 (list!8241 (xs!9579 (right!16530 t!3734)))) 512))))

(assert (=> d!563122 (= (inv!26484 (right!16530 t!3734)) e!1176811)))

(declare-fun b!1841507 () Bool)

(declare-fun res!827522 () Bool)

(assert (=> b!1841507 (=> (not res!827522) (not e!1176811))))

(assert (=> b!1841507 (= res!827522 (= (csize!13637 (right!16530 t!3734)) (size!16073 (list!8241 (xs!9579 (right!16530 t!3734))))))))

(declare-fun b!1841508 () Bool)

(assert (=> b!1841508 (= e!1176811 (and (> (csize!13637 (right!16530 t!3734)) 0) (<= (csize!13637 (right!16530 t!3734)) 512)))))

(assert (= (and d!563122 res!827521) b!1841507))

(assert (= (and b!1841507 res!827522) b!1841508))

(assert (=> d!563122 m!2268991))

(assert (=> d!563122 m!2268991))

(declare-fun m!2269009 () Bool)

(assert (=> d!563122 m!2269009))

(assert (=> b!1841507 m!2268991))

(assert (=> b!1841507 m!2268991))

(assert (=> b!1841507 m!2269009))

(assert (=> b!1841395 d!563122))

(assert (=> b!1841352 d!563082))

(assert (=> b!1841352 d!563090))

(declare-fun d!563124 () Bool)

(assert (=> d!563124 (= (inv!26482 (xs!9579 (left!16200 t!3734))) (<= (size!16073 (innerList!6763 (xs!9579 (left!16200 t!3734)))) 2147483647))))

(declare-fun bs!408621 () Bool)

(assert (= bs!408621 d!563124))

(declare-fun m!2269011 () Bool)

(assert (=> bs!408621 m!2269011))

(assert (=> b!1841413 d!563124))

(declare-fun d!563126 () Bool)

(declare-fun res!827523 () Bool)

(declare-fun e!1176812 () Bool)

(assert (=> d!563126 (=> (not res!827523) (not e!1176812))))

(assert (=> d!563126 (= res!827523 (<= (size!16073 (list!8241 (xs!9579 (left!16200 t!3734)))) 512))))

(assert (=> d!563126 (= (inv!26484 (left!16200 t!3734)) e!1176812)))

(declare-fun b!1841509 () Bool)

(declare-fun res!827524 () Bool)

(assert (=> b!1841509 (=> (not res!827524) (not e!1176812))))

(assert (=> b!1841509 (= res!827524 (= (csize!13637 (left!16200 t!3734)) (size!16073 (list!8241 (xs!9579 (left!16200 t!3734))))))))

(declare-fun b!1841510 () Bool)

(assert (=> b!1841510 (= e!1176812 (and (> (csize!13637 (left!16200 t!3734)) 0) (<= (csize!13637 (left!16200 t!3734)) 512)))))

(assert (= (and d!563126 res!827523) b!1841509))

(assert (= (and b!1841509 res!827524) b!1841510))

(assert (=> d!563126 m!2268983))

(assert (=> d!563126 m!2268983))

(declare-fun m!2269013 () Bool)

(assert (=> d!563126 m!2269013))

(assert (=> b!1841509 m!2268983))

(assert (=> b!1841509 m!2268983))

(assert (=> b!1841509 m!2269013))

(assert (=> b!1841392 d!563126))

(declare-fun d!563128 () Bool)

(declare-fun res!827525 () Bool)

(declare-fun e!1176813 () Bool)

(assert (=> d!563128 (=> (not res!827525) (not e!1176813))))

(assert (=> d!563128 (= res!827525 (= (csize!13636 (right!16530 t!3734)) (+ (size!16075 (left!16200 (right!16530 t!3734))) (size!16075 (right!16530 (right!16530 t!3734))))))))

(assert (=> d!563128 (= (inv!26483 (right!16530 t!3734)) e!1176813)))

(declare-fun b!1841511 () Bool)

(declare-fun res!827526 () Bool)

(assert (=> b!1841511 (=> (not res!827526) (not e!1176813))))

(assert (=> b!1841511 (= res!827526 (and (not (= (left!16200 (right!16530 t!3734)) Empty!6703)) (not (= (right!16530 (right!16530 t!3734)) Empty!6703))))))

(declare-fun b!1841512 () Bool)

(declare-fun res!827527 () Bool)

(assert (=> b!1841512 (=> (not res!827527) (not e!1176813))))

(assert (=> b!1841512 (= res!827527 (= (cheight!6914 (right!16530 t!3734)) (+ (max!0 (height!1020 (left!16200 (right!16530 t!3734))) (height!1020 (right!16530 (right!16530 t!3734)))) 1)))))

(declare-fun b!1841513 () Bool)

(assert (=> b!1841513 (= e!1176813 (<= 0 (cheight!6914 (right!16530 t!3734))))))

(assert (= (and d!563128 res!827525) b!1841511))

(assert (= (and b!1841511 res!827526) b!1841512))

(assert (= (and b!1841512 res!827527) b!1841513))

(declare-fun m!2269015 () Bool)

(assert (=> d!563128 m!2269015))

(declare-fun m!2269017 () Bool)

(assert (=> d!563128 m!2269017))

(declare-fun m!2269019 () Bool)

(assert (=> b!1841512 m!2269019))

(declare-fun m!2269021 () Bool)

(assert (=> b!1841512 m!2269021))

(assert (=> b!1841512 m!2269019))

(assert (=> b!1841512 m!2269021))

(declare-fun m!2269023 () Bool)

(assert (=> b!1841512 m!2269023))

(assert (=> b!1841393 d!563128))

(declare-fun d!563130 () Bool)

(declare-fun c!300552 () Bool)

(assert (=> d!563130 (= c!300552 ((_ is Node!6703) (left!16200 (left!16200 t!3734))))))

(declare-fun e!1176814 () Bool)

(assert (=> d!563130 (= (inv!26481 (left!16200 (left!16200 t!3734))) e!1176814)))

(declare-fun b!1841514 () Bool)

(assert (=> b!1841514 (= e!1176814 (inv!26483 (left!16200 (left!16200 t!3734))))))

(declare-fun b!1841515 () Bool)

(declare-fun e!1176815 () Bool)

(assert (=> b!1841515 (= e!1176814 e!1176815)))

(declare-fun res!827528 () Bool)

(assert (=> b!1841515 (= res!827528 (not ((_ is Leaf!9791) (left!16200 (left!16200 t!3734)))))))

(assert (=> b!1841515 (=> res!827528 e!1176815)))

(declare-fun b!1841516 () Bool)

(assert (=> b!1841516 (= e!1176815 (inv!26484 (left!16200 (left!16200 t!3734))))))

(assert (= (and d!563130 c!300552) b!1841514))

(assert (= (and d!563130 (not c!300552)) b!1841515))

(assert (= (and b!1841515 (not res!827528)) b!1841516))

(declare-fun m!2269025 () Bool)

(assert (=> b!1841514 m!2269025))

(declare-fun m!2269027 () Bool)

(assert (=> b!1841516 m!2269027))

(assert (=> b!1841412 d!563130))

(declare-fun d!563132 () Bool)

(declare-fun c!300553 () Bool)

(assert (=> d!563132 (= c!300553 ((_ is Node!6703) (right!16530 (left!16200 t!3734))))))

(declare-fun e!1176816 () Bool)

(assert (=> d!563132 (= (inv!26481 (right!16530 (left!16200 t!3734))) e!1176816)))

(declare-fun b!1841517 () Bool)

(assert (=> b!1841517 (= e!1176816 (inv!26483 (right!16530 (left!16200 t!3734))))))

(declare-fun b!1841518 () Bool)

(declare-fun e!1176817 () Bool)

(assert (=> b!1841518 (= e!1176816 e!1176817)))

(declare-fun res!827529 () Bool)

(assert (=> b!1841518 (= res!827529 (not ((_ is Leaf!9791) (right!16530 (left!16200 t!3734)))))))

(assert (=> b!1841518 (=> res!827529 e!1176817)))

(declare-fun b!1841519 () Bool)

(assert (=> b!1841519 (= e!1176817 (inv!26484 (right!16530 (left!16200 t!3734))))))

(assert (= (and d!563132 c!300553) b!1841517))

(assert (= (and d!563132 (not c!300553)) b!1841518))

(assert (= (and b!1841518 (not res!827529)) b!1841519))

(declare-fun m!2269029 () Bool)

(assert (=> b!1841517 m!2269029))

(declare-fun m!2269031 () Bool)

(assert (=> b!1841519 m!2269031))

(assert (=> b!1841412 d!563132))

(declare-fun b!1841520 () Bool)

(declare-fun e!1176818 () Bool)

(declare-fun tp!520693 () Bool)

(assert (=> b!1841520 (= e!1176818 (and tp_is_empty!8343 tp!520693))))

(assert (=> b!1841417 (= tp!520675 e!1176818)))

(assert (= (and b!1841417 ((_ is Cons!20278) (innerList!6763 (xs!9579 (right!16530 t!3734))))) b!1841520))

(declare-fun b!1841521 () Bool)

(declare-fun e!1176819 () Bool)

(declare-fun tp!520694 () Bool)

(assert (=> b!1841521 (= e!1176819 (and tp_is_empty!8343 tp!520694))))

(assert (=> b!1841403 (= tp!520665 e!1176819)))

(assert (= (and b!1841403 ((_ is Cons!20278) (t!171793 (innerList!6763 (xs!9579 t!3734))))) b!1841521))

(declare-fun b!1841522 () Bool)

(declare-fun e!1176820 () Bool)

(declare-fun tp!520695 () Bool)

(assert (=> b!1841522 (= e!1176820 (and tp_is_empty!8343 tp!520695))))

(assert (=> b!1841414 (= tp!520672 e!1176820)))

(assert (= (and b!1841414 ((_ is Cons!20278) (innerList!6763 (xs!9579 (left!16200 t!3734))))) b!1841522))

(declare-fun e!1176822 () Bool)

(declare-fun tp!520698 () Bool)

(declare-fun tp!520697 () Bool)

(declare-fun b!1841523 () Bool)

(assert (=> b!1841523 (= e!1176822 (and (inv!26481 (left!16200 (left!16200 (right!16530 t!3734)))) tp!520697 (inv!26481 (right!16530 (left!16200 (right!16530 t!3734)))) tp!520698))))

(declare-fun b!1841525 () Bool)

(declare-fun e!1176821 () Bool)

(declare-fun tp!520696 () Bool)

(assert (=> b!1841525 (= e!1176821 tp!520696)))

(declare-fun b!1841524 () Bool)

(assert (=> b!1841524 (= e!1176822 (and (inv!26482 (xs!9579 (left!16200 (right!16530 t!3734)))) e!1176821))))

(assert (=> b!1841415 (= tp!520676 (and (inv!26481 (left!16200 (right!16530 t!3734))) e!1176822))))

(assert (= (and b!1841415 ((_ is Node!6703) (left!16200 (right!16530 t!3734)))) b!1841523))

(assert (= b!1841524 b!1841525))

(assert (= (and b!1841415 ((_ is Leaf!9791) (left!16200 (right!16530 t!3734)))) b!1841524))

(declare-fun m!2269033 () Bool)

(assert (=> b!1841523 m!2269033))

(declare-fun m!2269035 () Bool)

(assert (=> b!1841523 m!2269035))

(declare-fun m!2269037 () Bool)

(assert (=> b!1841524 m!2269037))

(assert (=> b!1841415 m!2268913))

(declare-fun tp!520700 () Bool)

(declare-fun b!1841526 () Bool)

(declare-fun e!1176824 () Bool)

(declare-fun tp!520701 () Bool)

(assert (=> b!1841526 (= e!1176824 (and (inv!26481 (left!16200 (right!16530 (right!16530 t!3734)))) tp!520700 (inv!26481 (right!16530 (right!16530 (right!16530 t!3734)))) tp!520701))))

(declare-fun b!1841528 () Bool)

(declare-fun e!1176823 () Bool)

(declare-fun tp!520699 () Bool)

(assert (=> b!1841528 (= e!1176823 tp!520699)))

(declare-fun b!1841527 () Bool)

(assert (=> b!1841527 (= e!1176824 (and (inv!26482 (xs!9579 (right!16530 (right!16530 t!3734)))) e!1176823))))

(assert (=> b!1841415 (= tp!520677 (and (inv!26481 (right!16530 (right!16530 t!3734))) e!1176824))))

(assert (= (and b!1841415 ((_ is Node!6703) (right!16530 (right!16530 t!3734)))) b!1841526))

(assert (= b!1841527 b!1841528))

(assert (= (and b!1841415 ((_ is Leaf!9791) (right!16530 (right!16530 t!3734)))) b!1841527))

(declare-fun m!2269039 () Bool)

(assert (=> b!1841526 m!2269039))

(declare-fun m!2269041 () Bool)

(assert (=> b!1841526 m!2269041))

(declare-fun m!2269043 () Bool)

(assert (=> b!1841527 m!2269043))

(assert (=> b!1841415 m!2268915))

(declare-fun tp!520703 () Bool)

(declare-fun b!1841529 () Bool)

(declare-fun e!1176826 () Bool)

(declare-fun tp!520704 () Bool)

(assert (=> b!1841529 (= e!1176826 (and (inv!26481 (left!16200 (left!16200 (left!16200 t!3734)))) tp!520703 (inv!26481 (right!16530 (left!16200 (left!16200 t!3734)))) tp!520704))))

(declare-fun b!1841531 () Bool)

(declare-fun e!1176825 () Bool)

(declare-fun tp!520702 () Bool)

(assert (=> b!1841531 (= e!1176825 tp!520702)))

(declare-fun b!1841530 () Bool)

(assert (=> b!1841530 (= e!1176826 (and (inv!26482 (xs!9579 (left!16200 (left!16200 t!3734)))) e!1176825))))

(assert (=> b!1841412 (= tp!520673 (and (inv!26481 (left!16200 (left!16200 t!3734))) e!1176826))))

(assert (= (and b!1841412 ((_ is Node!6703) (left!16200 (left!16200 t!3734)))) b!1841529))

(assert (= b!1841530 b!1841531))

(assert (= (and b!1841412 ((_ is Leaf!9791) (left!16200 (left!16200 t!3734)))) b!1841530))

(declare-fun m!2269045 () Bool)

(assert (=> b!1841529 m!2269045))

(declare-fun m!2269047 () Bool)

(assert (=> b!1841529 m!2269047))

(declare-fun m!2269049 () Bool)

(assert (=> b!1841530 m!2269049))

(assert (=> b!1841412 m!2268907))

(declare-fun e!1176828 () Bool)

(declare-fun tp!520706 () Bool)

(declare-fun b!1841532 () Bool)

(declare-fun tp!520707 () Bool)

(assert (=> b!1841532 (= e!1176828 (and (inv!26481 (left!16200 (right!16530 (left!16200 t!3734)))) tp!520706 (inv!26481 (right!16530 (right!16530 (left!16200 t!3734)))) tp!520707))))

(declare-fun b!1841534 () Bool)

(declare-fun e!1176827 () Bool)

(declare-fun tp!520705 () Bool)

(assert (=> b!1841534 (= e!1176827 tp!520705)))

(declare-fun b!1841533 () Bool)

(assert (=> b!1841533 (= e!1176828 (and (inv!26482 (xs!9579 (right!16530 (left!16200 t!3734)))) e!1176827))))

(assert (=> b!1841412 (= tp!520674 (and (inv!26481 (right!16530 (left!16200 t!3734))) e!1176828))))

(assert (= (and b!1841412 ((_ is Node!6703) (right!16530 (left!16200 t!3734)))) b!1841532))

(assert (= b!1841533 b!1841534))

(assert (= (and b!1841412 ((_ is Leaf!9791) (right!16530 (left!16200 t!3734)))) b!1841533))

(declare-fun m!2269051 () Bool)

(assert (=> b!1841532 m!2269051))

(declare-fun m!2269053 () Bool)

(assert (=> b!1841532 m!2269053))

(declare-fun m!2269055 () Bool)

(assert (=> b!1841533 m!2269055))

(assert (=> b!1841412 m!2268909))

(declare-fun b_lambda!61043 () Bool)

(assert (= b_lambda!61041 (or d!563078 b_lambda!61043)))

(declare-fun bs!408622 () Bool)

(declare-fun d!563134 () Bool)

(assert (= bs!408622 (and d!563134 d!563078)))

(assert (=> bs!408622 (= (dynLambda!10078 lambda!72307 (h!25679 (list!8240 t!3734))) (not (dynLambda!10078 p!1470 (h!25679 (list!8240 t!3734)))))))

(declare-fun b_lambda!61045 () Bool)

(assert (=> (not b_lambda!61045) (not bs!408622)))

(declare-fun t!171797 () Bool)

(declare-fun tb!112797 () Bool)

(assert (=> (and start!183406 (= p!1470 p!1470) t!171797) tb!112797))

(declare-fun result!135728 () Bool)

(assert (=> tb!112797 (= result!135728 true)))

(assert (=> bs!408622 t!171797))

(declare-fun b_and!143621 () Bool)

(assert (= b_and!143619 (and (=> t!171797 result!135728) b_and!143621)))

(declare-fun m!2269057 () Bool)

(assert (=> bs!408622 m!2269057))

(assert (=> b!1841482 d!563134))

(check-sat (not b_lambda!61045) (not b!1841522) (not b!1841519) (not b!1841517) (not b!1841456) (not b!1841526) (not b!1841415) (not d!563126) (not b!1841494) (not b!1841531) (not b!1841516) (not b!1841529) (not d!563102) (not b_lambda!61043) (not b!1841509) (not d!563100) (not b!1841533) b_and!143621 (not b!1841477) (not b!1841412) (not b!1841499) (not d!563112) (not d!563120) (not b!1841532) (not b!1841474) (not b!1841503) (not b!1841525) (not b!1841534) (not b!1841523) (not d!563124) (not b!1841512) (not d!563122) (not b!1841514) (not b!1841464) (not d!563128) (not b!1841498) (not b!1841527) tp_is_empty!8343 (not b!1841505) (not b_next!52201) (not b!1841521) (not b!1841507) (not b!1841493) (not b!1841470) (not b!1841520) (not b!1841483) (not b!1841528) (not b!1841502) (not b!1841530) (not b!1841524) (not b!1841472) (not b!1841475) (not d!563104))
(check-sat b_and!143621 (not b_next!52201))
