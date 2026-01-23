; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229242 () Bool)

(assert start!229242)

(declare-datatypes ((T!43908 0))(
  ( (T!43909 (val!7980 Int)) )
))
(declare-datatypes ((List!27766 0))(
  ( (Nil!27668) (Cons!27668 (h!33069 T!43908) (t!207446 List!27766)) )
))
(declare-datatypes ((IArray!18151 0))(
  ( (IArray!18152 (innerList!9133 List!27766)) )
))
(declare-datatypes ((Conc!9073 0))(
  ( (Node!9073 (left!21006 Conc!9073) (right!21336 Conc!9073) (csize!18376 Int) (cheight!9284 Int)) (Leaf!13319 (xs!12039 IArray!18151) (csize!18377 Int)) (Empty!9073) )
))
(declare-fun acc!252 () Conc!9073)

(declare-fun tp!736768 () Bool)

(declare-fun tp!736769 () Bool)

(declare-fun b!2322400 () Bool)

(declare-fun e!1488383 () Bool)

(declare-fun inv!37639 (Conc!9073) Bool)

(assert (=> b!2322400 (= e!1488383 (and (inv!37639 (left!21006 acc!252)) tp!736769 (inv!37639 (right!21336 acc!252)) tp!736768))))

(declare-fun b!2322401 () Bool)

(declare-fun e!1488384 () Bool)

(declare-fun tp!736771 () Bool)

(assert (=> b!2322401 (= e!1488384 tp!736771)))

(declare-fun b!2322402 () Bool)

(declare-fun e!1488381 () Bool)

(declare-fun tp!736770 () Bool)

(assert (=> b!2322402 (= e!1488381 tp!736770)))

(declare-fun b!2322404 () Bool)

(declare-fun e!1488385 () Bool)

(declare-fun lt!860577 () IArray!18151)

(declare-fun lt!860575 () Int)

(declare-fun size!21932 (IArray!18151) Int)

(assert (=> b!2322404 (= e!1488385 (>= (size!21932 lt!860577) lt!860575))))

(declare-fun lt!860574 () Conc!9073)

(declare-fun lt!860576 () IArray!18151)

(declare-fun ++!6822 (Conc!9073 Conc!9073) Conc!9073)

(assert (=> b!2322404 (= lt!860574 (++!6822 acc!252 (Leaf!13319 lt!860576 512)))))

(declare-fun arr!18 () IArray!18151)

(declare-fun slice!699 (IArray!18151 Int Int) IArray!18151)

(assert (=> b!2322404 (= lt!860577 (slice!699 arr!18 512 lt!860575))))

(assert (=> b!2322404 (= lt!860576 (slice!699 arr!18 0 512))))

(declare-fun b!2322405 () Bool)

(declare-fun inv!37640 (IArray!18151) Bool)

(assert (=> b!2322405 (= e!1488383 (and (inv!37640 (xs!12039 acc!252)) e!1488381))))

(declare-fun b!2322403 () Bool)

(declare-fun e!1488382 () Bool)

(assert (=> b!2322403 (= e!1488382 e!1488385)))

(declare-fun res!992103 () Bool)

(assert (=> b!2322403 (=> (not res!992103) (not e!1488385))))

(assert (=> b!2322403 (= res!992103 (> lt!860575 512))))

(assert (=> b!2322403 (= lt!860575 (size!21932 arr!18))))

(declare-fun res!992104 () Bool)

(assert (=> start!229242 (=> (not res!992104) (not e!1488382))))

(declare-fun isBalanced!2767 (Conc!9073) Bool)

(assert (=> start!229242 (= res!992104 (isBalanced!2767 acc!252))))

(assert (=> start!229242 e!1488382))

(assert (=> start!229242 (and (inv!37639 acc!252) e!1488383)))

(assert (=> start!229242 (and (inv!37640 arr!18) e!1488384)))

(assert (= (and start!229242 res!992104) b!2322403))

(assert (= (and b!2322403 res!992103) b!2322404))

(get-info :version)

(assert (= (and start!229242 ((_ is Node!9073) acc!252)) b!2322400))

(assert (= b!2322405 b!2322402))

(assert (= (and start!229242 ((_ is Leaf!13319) acc!252)) b!2322405))

(assert (= start!229242 b!2322401))

(declare-fun m!2751909 () Bool)

(assert (=> b!2322405 m!2751909))

(declare-fun m!2751911 () Bool)

(assert (=> b!2322403 m!2751911))

(declare-fun m!2751913 () Bool)

(assert (=> b!2322400 m!2751913))

(declare-fun m!2751915 () Bool)

(assert (=> b!2322400 m!2751915))

(declare-fun m!2751917 () Bool)

(assert (=> b!2322404 m!2751917))

(declare-fun m!2751919 () Bool)

(assert (=> b!2322404 m!2751919))

(declare-fun m!2751921 () Bool)

(assert (=> b!2322404 m!2751921))

(declare-fun m!2751923 () Bool)

(assert (=> b!2322404 m!2751923))

(declare-fun m!2751925 () Bool)

(assert (=> start!229242 m!2751925))

(declare-fun m!2751927 () Bool)

(assert (=> start!229242 m!2751927))

(declare-fun m!2751929 () Bool)

(assert (=> start!229242 m!2751929))

(check-sat (not b!2322405) (not start!229242) (not b!2322404) (not b!2322401) (not b!2322400) (not b!2322402) (not b!2322403))
(check-sat)
(get-model)

(declare-fun d!687208 () Bool)

(declare-fun lt!860583 () Int)

(declare-fun size!21934 (List!27766) Int)

(declare-fun list!11011 (IArray!18151) List!27766)

(assert (=> d!687208 (= lt!860583 (size!21934 (list!11011 arr!18)))))

(declare-fun choose!13598 (IArray!18151) Int)

(assert (=> d!687208 (= lt!860583 (choose!13598 arr!18))))

(assert (=> d!687208 (= (size!21932 arr!18) lt!860583)))

(declare-fun bs!459113 () Bool)

(assert (= bs!459113 d!687208))

(declare-fun m!2751933 () Bool)

(assert (=> bs!459113 m!2751933))

(assert (=> bs!459113 m!2751933))

(declare-fun m!2751939 () Bool)

(assert (=> bs!459113 m!2751939))

(declare-fun m!2751941 () Bool)

(assert (=> bs!459113 m!2751941))

(assert (=> b!2322403 d!687208))

(declare-fun b!2322430 () Bool)

(declare-fun e!1488398 () Bool)

(declare-fun e!1488399 () Bool)

(assert (=> b!2322430 (= e!1488398 e!1488399)))

(declare-fun res!992123 () Bool)

(assert (=> b!2322430 (=> (not res!992123) (not e!1488399))))

(declare-fun height!1331 (Conc!9073) Int)

(assert (=> b!2322430 (= res!992123 (<= (- 1) (- (height!1331 (left!21006 acc!252)) (height!1331 (right!21336 acc!252)))))))

(declare-fun d!687212 () Bool)

(declare-fun res!992126 () Bool)

(assert (=> d!687212 (=> res!992126 e!1488398)))

(assert (=> d!687212 (= res!992126 (not ((_ is Node!9073) acc!252)))))

(assert (=> d!687212 (= (isBalanced!2767 acc!252) e!1488398)))

(declare-fun b!2322431 () Bool)

(declare-fun res!992122 () Bool)

(assert (=> b!2322431 (=> (not res!992122) (not e!1488399))))

(declare-fun isEmpty!15797 (Conc!9073) Bool)

(assert (=> b!2322431 (= res!992122 (not (isEmpty!15797 (left!21006 acc!252))))))

(declare-fun b!2322432 () Bool)

(declare-fun res!992124 () Bool)

(assert (=> b!2322432 (=> (not res!992124) (not e!1488399))))

(assert (=> b!2322432 (= res!992124 (isBalanced!2767 (right!21336 acc!252)))))

(declare-fun b!2322433 () Bool)

(declare-fun res!992125 () Bool)

(assert (=> b!2322433 (=> (not res!992125) (not e!1488399))))

(assert (=> b!2322433 (= res!992125 (isBalanced!2767 (left!21006 acc!252)))))

(declare-fun b!2322434 () Bool)

(declare-fun res!992121 () Bool)

(assert (=> b!2322434 (=> (not res!992121) (not e!1488399))))

(assert (=> b!2322434 (= res!992121 (<= (- (height!1331 (left!21006 acc!252)) (height!1331 (right!21336 acc!252))) 1))))

(declare-fun b!2322435 () Bool)

(assert (=> b!2322435 (= e!1488399 (not (isEmpty!15797 (right!21336 acc!252))))))

(assert (= (and d!687212 (not res!992126)) b!2322430))

(assert (= (and b!2322430 res!992123) b!2322434))

(assert (= (and b!2322434 res!992121) b!2322433))

(assert (= (and b!2322433 res!992125) b!2322432))

(assert (= (and b!2322432 res!992124) b!2322431))

(assert (= (and b!2322431 res!992122) b!2322435))

(declare-fun m!2751959 () Bool)

(assert (=> b!2322435 m!2751959))

(declare-fun m!2751961 () Bool)

(assert (=> b!2322431 m!2751961))

(declare-fun m!2751963 () Bool)

(assert (=> b!2322430 m!2751963))

(declare-fun m!2751965 () Bool)

(assert (=> b!2322430 m!2751965))

(declare-fun m!2751967 () Bool)

(assert (=> b!2322432 m!2751967))

(declare-fun m!2751969 () Bool)

(assert (=> b!2322433 m!2751969))

(assert (=> b!2322434 m!2751963))

(assert (=> b!2322434 m!2751965))

(assert (=> start!229242 d!687212))

(declare-fun d!687222 () Bool)

(declare-fun c!368404 () Bool)

(assert (=> d!687222 (= c!368404 ((_ is Node!9073) acc!252))))

(declare-fun e!1488404 () Bool)

(assert (=> d!687222 (= (inv!37639 acc!252) e!1488404)))

(declare-fun b!2322442 () Bool)

(declare-fun inv!37643 (Conc!9073) Bool)

(assert (=> b!2322442 (= e!1488404 (inv!37643 acc!252))))

(declare-fun b!2322443 () Bool)

(declare-fun e!1488405 () Bool)

(assert (=> b!2322443 (= e!1488404 e!1488405)))

(declare-fun res!992129 () Bool)

(assert (=> b!2322443 (= res!992129 (not ((_ is Leaf!13319) acc!252)))))

(assert (=> b!2322443 (=> res!992129 e!1488405)))

(declare-fun b!2322444 () Bool)

(declare-fun inv!37644 (Conc!9073) Bool)

(assert (=> b!2322444 (= e!1488405 (inv!37644 acc!252))))

(assert (= (and d!687222 c!368404) b!2322442))

(assert (= (and d!687222 (not c!368404)) b!2322443))

(assert (= (and b!2322443 (not res!992129)) b!2322444))

(declare-fun m!2751971 () Bool)

(assert (=> b!2322442 m!2751971))

(declare-fun m!2751973 () Bool)

(assert (=> b!2322444 m!2751973))

(assert (=> start!229242 d!687222))

(declare-fun d!687224 () Bool)

(assert (=> d!687224 (= (inv!37640 arr!18) (<= (size!21934 (innerList!9133 arr!18)) 2147483647))))

(declare-fun bs!459116 () Bool)

(assert (= bs!459116 d!687224))

(declare-fun m!2751975 () Bool)

(assert (=> bs!459116 m!2751975))

(assert (=> start!229242 d!687224))

(declare-fun d!687226 () Bool)

(declare-fun c!368405 () Bool)

(assert (=> d!687226 (= c!368405 ((_ is Node!9073) (left!21006 acc!252)))))

(declare-fun e!1488406 () Bool)

(assert (=> d!687226 (= (inv!37639 (left!21006 acc!252)) e!1488406)))

(declare-fun b!2322445 () Bool)

(assert (=> b!2322445 (= e!1488406 (inv!37643 (left!21006 acc!252)))))

(declare-fun b!2322446 () Bool)

(declare-fun e!1488407 () Bool)

(assert (=> b!2322446 (= e!1488406 e!1488407)))

(declare-fun res!992130 () Bool)

(assert (=> b!2322446 (= res!992130 (not ((_ is Leaf!13319) (left!21006 acc!252))))))

(assert (=> b!2322446 (=> res!992130 e!1488407)))

(declare-fun b!2322447 () Bool)

(assert (=> b!2322447 (= e!1488407 (inv!37644 (left!21006 acc!252)))))

(assert (= (and d!687226 c!368405) b!2322445))

(assert (= (and d!687226 (not c!368405)) b!2322446))

(assert (= (and b!2322446 (not res!992130)) b!2322447))

(declare-fun m!2751977 () Bool)

(assert (=> b!2322445 m!2751977))

(declare-fun m!2751979 () Bool)

(assert (=> b!2322447 m!2751979))

(assert (=> b!2322400 d!687226))

(declare-fun d!687228 () Bool)

(declare-fun c!368406 () Bool)

(assert (=> d!687228 (= c!368406 ((_ is Node!9073) (right!21336 acc!252)))))

(declare-fun e!1488408 () Bool)

(assert (=> d!687228 (= (inv!37639 (right!21336 acc!252)) e!1488408)))

(declare-fun b!2322448 () Bool)

(assert (=> b!2322448 (= e!1488408 (inv!37643 (right!21336 acc!252)))))

(declare-fun b!2322449 () Bool)

(declare-fun e!1488409 () Bool)

(assert (=> b!2322449 (= e!1488408 e!1488409)))

(declare-fun res!992131 () Bool)

(assert (=> b!2322449 (= res!992131 (not ((_ is Leaf!13319) (right!21336 acc!252))))))

(assert (=> b!2322449 (=> res!992131 e!1488409)))

(declare-fun b!2322450 () Bool)

(assert (=> b!2322450 (= e!1488409 (inv!37644 (right!21336 acc!252)))))

(assert (= (and d!687228 c!368406) b!2322448))

(assert (= (and d!687228 (not c!368406)) b!2322449))

(assert (= (and b!2322449 (not res!992131)) b!2322450))

(declare-fun m!2751981 () Bool)

(assert (=> b!2322448 m!2751981))

(declare-fun m!2751983 () Bool)

(assert (=> b!2322450 m!2751983))

(assert (=> b!2322400 d!687228))

(declare-fun d!687230 () Bool)

(assert (=> d!687230 (= (inv!37640 (xs!12039 acc!252)) (<= (size!21934 (innerList!9133 (xs!12039 acc!252))) 2147483647))))

(declare-fun bs!459117 () Bool)

(assert (= bs!459117 d!687230))

(declare-fun m!2751985 () Bool)

(assert (=> bs!459117 m!2751985))

(assert (=> b!2322405 d!687230))

(declare-fun d!687232 () Bool)

(declare-fun lt!860585 () Int)

(assert (=> d!687232 (= lt!860585 (size!21934 (list!11011 lt!860577)))))

(assert (=> d!687232 (= lt!860585 (choose!13598 lt!860577))))

(assert (=> d!687232 (= (size!21932 lt!860577) lt!860585)))

(declare-fun bs!459118 () Bool)

(assert (= bs!459118 d!687232))

(declare-fun m!2751987 () Bool)

(assert (=> bs!459118 m!2751987))

(assert (=> bs!459118 m!2751987))

(declare-fun m!2751989 () Bool)

(assert (=> bs!459118 m!2751989))

(declare-fun m!2751991 () Bool)

(assert (=> bs!459118 m!2751991))

(assert (=> b!2322404 d!687232))

(declare-fun b!2322556 () Bool)

(declare-fun e!1488468 () Bool)

(declare-fun lt!860609 () Conc!9073)

(declare-fun list!11013 (Conc!9073) List!27766)

(declare-fun ++!6824 (List!27766 List!27766) List!27766)

(assert (=> b!2322556 (= e!1488468 (= (list!11013 lt!860609) (++!6824 (list!11013 acc!252) (list!11013 (Leaf!13319 lt!860576 512)))))))

(declare-fun bm!138482 () Bool)

(declare-fun call!138488 () Conc!9073)

(declare-fun call!138501 () Conc!9073)

(assert (=> bm!138482 (= call!138488 call!138501)))

(declare-fun bm!138483 () Bool)

(declare-fun call!138494 () Conc!9073)

(assert (=> bm!138483 (= call!138501 call!138494)))

(declare-fun bm!138484 () Bool)

(declare-fun call!138493 () Conc!9073)

(declare-fun call!138497 () Conc!9073)

(assert (=> bm!138484 (= call!138493 call!138497)))

(declare-fun bm!138485 () Bool)

(declare-fun call!138499 () Conc!9073)

(assert (=> bm!138485 (= call!138499 call!138497)))

(declare-fun b!2322557 () Bool)

(declare-fun e!1488467 () Conc!9073)

(declare-fun call!138496 () Conc!9073)

(assert (=> b!2322557 (= e!1488467 call!138496)))

(declare-fun b!2322558 () Bool)

(declare-fun e!1488465 () Conc!9073)

(declare-fun e!1488466 () Conc!9073)

(assert (=> b!2322558 (= e!1488465 e!1488466)))

(declare-fun c!368452 () Bool)

(assert (=> b!2322558 (= c!368452 (= (Leaf!13319 lt!860576 512) Empty!9073))))

(declare-fun call!138498 () Int)

(declare-fun bm!138486 () Bool)

(declare-fun c!368450 () Bool)

(assert (=> bm!138486 (= call!138498 (height!1331 (ite c!368450 (right!21336 acc!252) (left!21006 (Leaf!13319 lt!860576 512)))))))

(declare-fun bm!138487 () Bool)

(declare-fun call!138502 () Conc!9073)

(assert (=> bm!138487 (= call!138496 call!138502)))

(declare-fun b!2322559 () Bool)

(declare-fun c!368449 () Bool)

(declare-fun call!138492 () Int)

(assert (=> b!2322559 (= c!368449 (>= call!138492 call!138498))))

(declare-fun e!1488469 () Conc!9073)

(declare-fun e!1488460 () Conc!9073)

(assert (=> b!2322559 (= e!1488469 e!1488460)))

(declare-fun call!138500 () Int)

(declare-fun bm!138488 () Bool)

(declare-fun lt!860608 () Conc!9073)

(assert (=> bm!138488 (= call!138500 (height!1331 (ite c!368450 (left!21006 acc!252) lt!860608)))))

(declare-fun d!687234 () Bool)

(assert (=> d!687234 e!1488468))

(declare-fun res!992160 () Bool)

(assert (=> d!687234 (=> (not res!992160) (not e!1488468))))

(declare-fun appendAssocInst!608 (Conc!9073 Conc!9073) Bool)

(assert (=> d!687234 (= res!992160 (appendAssocInst!608 acc!252 (Leaf!13319 lt!860576 512)))))

(assert (=> d!687234 (= lt!860609 e!1488465)))

(declare-fun c!368451 () Bool)

(assert (=> d!687234 (= c!368451 (= acc!252 Empty!9073))))

(declare-fun e!1488462 () Bool)

(assert (=> d!687234 e!1488462))

(declare-fun res!992158 () Bool)

(assert (=> d!687234 (=> (not res!992158) (not e!1488462))))

(assert (=> d!687234 (= res!992158 (isBalanced!2767 acc!252))))

(assert (=> d!687234 (= (++!6822 acc!252 (Leaf!13319 lt!860576 512)) lt!860609)))

(declare-fun call!138495 () Int)

(declare-fun bm!138489 () Bool)

(declare-fun lt!860607 () Conc!9073)

(assert (=> bm!138489 (= call!138495 (height!1331 (ite c!368450 lt!860607 (Leaf!13319 lt!860576 512))))))

(declare-fun b!2322560 () Bool)

(declare-fun e!1488461 () Conc!9073)

(assert (=> b!2322560 (= e!1488461 call!138488)))

(declare-fun b!2322561 () Bool)

(assert (=> b!2322561 (= e!1488461 call!138488)))

(declare-fun bm!138490 () Bool)

(declare-fun call!138487 () Conc!9073)

(assert (=> bm!138490 (= call!138502 call!138487)))

(declare-fun bm!138491 () Bool)

(declare-fun call!138489 () Conc!9073)

(assert (=> bm!138491 (= call!138489 call!138502)))

(declare-fun b!2322562 () Bool)

(declare-fun res!992157 () Bool)

(assert (=> b!2322562 (=> (not res!992157) (not e!1488468))))

(assert (=> b!2322562 (= res!992157 (isBalanced!2767 lt!860609))))

(declare-fun b!2322563 () Bool)

(declare-fun e!1488463 () Conc!9073)

(assert (=> b!2322563 (= e!1488463 call!138487)))

(declare-fun b!2322564 () Bool)

(declare-fun e!1488464 () Conc!9073)

(assert (=> b!2322564 (= e!1488464 call!138501)))

(declare-fun b!2322565 () Bool)

(assert (=> b!2322565 (= e!1488467 call!138496)))

(declare-fun b!2322566 () Bool)

(declare-fun res!992161 () Bool)

(assert (=> b!2322566 (=> (not res!992161) (not e!1488468))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2322566 (= res!992161 (>= (height!1331 lt!860609) (max!0 (height!1331 acc!252) (height!1331 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2322567 () Bool)

(assert (=> b!2322567 (= e!1488465 (Leaf!13319 lt!860576 512))))

(declare-fun bm!138492 () Bool)

(declare-fun call!138490 () Conc!9073)

(declare-fun call!138491 () Conc!9073)

(assert (=> bm!138492 (= call!138490 call!138491)))

(declare-fun b!2322568 () Bool)

(assert (=> b!2322568 (= e!1488463 e!1488469)))

(declare-fun lt!860606 () Int)

(assert (=> b!2322568 (= c!368450 (< lt!860606 (- 1)))))

(declare-fun b!2322569 () Bool)

(declare-fun c!368447 () Bool)

(assert (=> b!2322569 (= c!368447 (>= call!138500 call!138498))))

(assert (=> b!2322569 (= e!1488469 e!1488464)))

(declare-fun b!2322570 () Bool)

(declare-fun res!992159 () Bool)

(assert (=> b!2322570 (=> (not res!992159) (not e!1488468))))

(assert (=> b!2322570 (= res!992159 (<= (height!1331 lt!860609) (+ (max!0 (height!1331 acc!252) (height!1331 (Leaf!13319 lt!860576 512))) 1)))))

(declare-fun bm!138493 () Bool)

(assert (=> bm!138493 (= call!138497 (++!6822 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(declare-fun b!2322571 () Bool)

(assert (=> b!2322571 (= e!1488460 e!1488467)))

(assert (=> b!2322571 (= lt!860608 call!138499)))

(declare-fun c!368448 () Bool)

(assert (=> b!2322571 (= c!368448 (= call!138500 (- call!138495 3)))))

(declare-fun b!2322572 () Bool)

(assert (=> b!2322572 (= e!1488464 e!1488461)))

(assert (=> b!2322572 (= lt!860607 call!138493)))

(declare-fun c!368454 () Bool)

(assert (=> b!2322572 (= c!368454 (= call!138495 (- call!138492 3)))))

(declare-fun b!2322573 () Bool)

(assert (=> b!2322573 (= e!1488460 call!138491)))

(declare-fun bm!138494 () Bool)

(declare-fun <>!214 (Conc!9073 Conc!9073) Conc!9073)

(assert (=> bm!138494 (= call!138494 (<>!214 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))))))

(declare-fun b!2322574 () Bool)

(assert (=> b!2322574 (= e!1488466 acc!252)))

(declare-fun bm!138495 () Bool)

(assert (=> bm!138495 (= call!138492 (height!1331 (ite c!368450 acc!252 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun bm!138496 () Bool)

(declare-fun c!368453 () Bool)

(assert (=> bm!138496 (= call!138487 (<>!214 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))) (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))))))

(declare-fun b!2322575 () Bool)

(assert (=> b!2322575 (= e!1488462 (isBalanced!2767 (Leaf!13319 lt!860576 512)))))

(declare-fun bm!138497 () Bool)

(assert (=> bm!138497 (= call!138491 call!138494)))

(declare-fun b!2322576 () Bool)

(assert (=> b!2322576 (= c!368453 (and (<= (- 1) lt!860606) (<= lt!860606 1)))))

(assert (=> b!2322576 (= lt!860606 (- (height!1331 (Leaf!13319 lt!860576 512)) (height!1331 acc!252)))))

(assert (=> b!2322576 (= e!1488466 e!1488463)))

(assert (= (and d!687234 res!992158) b!2322575))

(assert (= (and d!687234 c!368451) b!2322567))

(assert (= (and d!687234 (not c!368451)) b!2322558))

(assert (= (and b!2322558 c!368452) b!2322574))

(assert (= (and b!2322558 (not c!368452)) b!2322576))

(assert (= (and b!2322576 c!368453) b!2322563))

(assert (= (and b!2322576 (not c!368453)) b!2322568))

(assert (= (and b!2322568 c!368450) b!2322569))

(assert (= (and b!2322568 (not c!368450)) b!2322559))

(assert (= (and b!2322569 c!368447) b!2322564))

(assert (= (and b!2322569 (not c!368447)) b!2322572))

(assert (= (and b!2322572 c!368454) b!2322560))

(assert (= (and b!2322572 (not c!368454)) b!2322561))

(assert (= (or b!2322560 b!2322561) bm!138491))

(assert (= (or b!2322560 b!2322561) bm!138482))

(assert (= (or b!2322564 b!2322572) bm!138484))

(assert (= (or b!2322564 bm!138482) bm!138483))

(assert (= (and b!2322559 c!368449) b!2322573))

(assert (= (and b!2322559 (not c!368449)) b!2322571))

(assert (= (and b!2322571 c!368448) b!2322557))

(assert (= (and b!2322571 (not c!368448)) b!2322565))

(assert (= (or b!2322557 b!2322565) bm!138492))

(assert (= (or b!2322557 b!2322565) bm!138487))

(assert (= (or b!2322573 b!2322571) bm!138485))

(assert (= (or b!2322573 bm!138492) bm!138497))

(assert (= (or bm!138491 bm!138487) bm!138490))

(assert (= (or bm!138483 bm!138497) bm!138494))

(assert (= (or b!2322572 b!2322559) bm!138495))

(assert (= (or b!2322569 b!2322559) bm!138486))

(assert (= (or b!2322572 b!2322571) bm!138489))

(assert (= (or b!2322569 b!2322571) bm!138488))

(assert (= (or bm!138484 bm!138485) bm!138493))

(assert (= (or b!2322563 bm!138490) bm!138496))

(assert (= (and d!687234 res!992160) b!2322562))

(assert (= (and b!2322562 res!992157) b!2322570))

(assert (= (and b!2322570 res!992159) b!2322566))

(assert (= (and b!2322566 res!992161) b!2322556))

(declare-fun m!2752037 () Bool)

(assert (=> d!687234 m!2752037))

(assert (=> d!687234 m!2751925))

(declare-fun m!2752039 () Bool)

(assert (=> bm!138495 m!2752039))

(declare-fun m!2752041 () Bool)

(assert (=> bm!138494 m!2752041))

(declare-fun m!2752043 () Bool)

(assert (=> b!2322576 m!2752043))

(declare-fun m!2752045 () Bool)

(assert (=> b!2322576 m!2752045))

(declare-fun m!2752047 () Bool)

(assert (=> b!2322566 m!2752047))

(assert (=> b!2322566 m!2752045))

(assert (=> b!2322566 m!2752043))

(assert (=> b!2322566 m!2752045))

(assert (=> b!2322566 m!2752043))

(declare-fun m!2752049 () Bool)

(assert (=> b!2322566 m!2752049))

(declare-fun m!2752051 () Bool)

(assert (=> bm!138496 m!2752051))

(declare-fun m!2752053 () Bool)

(assert (=> bm!138493 m!2752053))

(declare-fun m!2752055 () Bool)

(assert (=> b!2322575 m!2752055))

(declare-fun m!2752057 () Bool)

(assert (=> bm!138486 m!2752057))

(declare-fun m!2752059 () Bool)

(assert (=> b!2322556 m!2752059))

(declare-fun m!2752061 () Bool)

(assert (=> b!2322556 m!2752061))

(declare-fun m!2752063 () Bool)

(assert (=> b!2322556 m!2752063))

(assert (=> b!2322556 m!2752061))

(assert (=> b!2322556 m!2752063))

(declare-fun m!2752065 () Bool)

(assert (=> b!2322556 m!2752065))

(declare-fun m!2752067 () Bool)

(assert (=> bm!138488 m!2752067))

(declare-fun m!2752069 () Bool)

(assert (=> b!2322562 m!2752069))

(declare-fun m!2752071 () Bool)

(assert (=> bm!138489 m!2752071))

(assert (=> b!2322570 m!2752047))

(assert (=> b!2322570 m!2752045))

(assert (=> b!2322570 m!2752043))

(assert (=> b!2322570 m!2752045))

(assert (=> b!2322570 m!2752043))

(assert (=> b!2322570 m!2752049))

(assert (=> b!2322404 d!687234))

(declare-fun d!687242 () Bool)

(declare-fun lt!860616 () IArray!18151)

(declare-fun slice!701 (List!27766 Int Int) List!27766)

(assert (=> d!687242 (= lt!860616 (IArray!18152 (slice!701 (list!11011 arr!18) 512 lt!860575)))))

(declare-fun choose!13600 (IArray!18151 Int Int) IArray!18151)

(assert (=> d!687242 (= lt!860616 (choose!13600 arr!18 512 lt!860575))))

(declare-fun e!1488496 () Bool)

(assert (=> d!687242 e!1488496))

(declare-fun res!992187 () Bool)

(assert (=> d!687242 (=> (not res!992187) (not e!1488496))))

(assert (=> d!687242 (= res!992187 (and (<= 0 512) (<= 512 lt!860575)))))

(assert (=> d!687242 (= (slice!699 arr!18 512 lt!860575) lt!860616)))

(declare-fun b!2322624 () Bool)

(assert (=> b!2322624 (= e!1488496 (<= lt!860575 (size!21932 arr!18)))))

(assert (= (and d!687242 res!992187) b!2322624))

(assert (=> d!687242 m!2751933))

(assert (=> d!687242 m!2751933))

(declare-fun m!2752103 () Bool)

(assert (=> d!687242 m!2752103))

(declare-fun m!2752105 () Bool)

(assert (=> d!687242 m!2752105))

(assert (=> b!2322624 m!2751911))

(assert (=> b!2322404 d!687242))

(declare-fun d!687248 () Bool)

(declare-fun lt!860617 () IArray!18151)

(assert (=> d!687248 (= lt!860617 (IArray!18152 (slice!701 (list!11011 arr!18) 0 512)))))

(assert (=> d!687248 (= lt!860617 (choose!13600 arr!18 0 512))))

(declare-fun e!1488497 () Bool)

(assert (=> d!687248 e!1488497))

(declare-fun res!992188 () Bool)

(assert (=> d!687248 (=> (not res!992188) (not e!1488497))))

(assert (=> d!687248 (= res!992188 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!687248 (= (slice!699 arr!18 0 512) lt!860617)))

(declare-fun b!2322625 () Bool)

(assert (=> b!2322625 (= e!1488497 (<= 512 (size!21932 arr!18)))))

(assert (= (and d!687248 res!992188) b!2322625))

(assert (=> d!687248 m!2751933))

(assert (=> d!687248 m!2751933))

(declare-fun m!2752107 () Bool)

(assert (=> d!687248 m!2752107))

(declare-fun m!2752109 () Bool)

(assert (=> d!687248 m!2752109))

(assert (=> b!2322625 m!2751911))

(assert (=> b!2322404 d!687248))

(declare-fun b!2322630 () Bool)

(declare-fun e!1488500 () Bool)

(declare-fun tp_is_empty!10829 () Bool)

(declare-fun tp!736790 () Bool)

(assert (=> b!2322630 (= e!1488500 (and tp_is_empty!10829 tp!736790))))

(assert (=> b!2322402 (= tp!736770 e!1488500)))

(assert (= (and b!2322402 ((_ is Cons!27668) (innerList!9133 (xs!12039 acc!252)))) b!2322630))

(declare-fun b!2322631 () Bool)

(declare-fun e!1488501 () Bool)

(declare-fun tp!736791 () Bool)

(assert (=> b!2322631 (= e!1488501 (and tp_is_empty!10829 tp!736791))))

(assert (=> b!2322401 (= tp!736771 e!1488501)))

(assert (= (and b!2322401 ((_ is Cons!27668) (innerList!9133 arr!18))) b!2322631))

(declare-fun tp!736799 () Bool)

(declare-fun tp!736798 () Bool)

(declare-fun e!1488507 () Bool)

(declare-fun b!2322640 () Bool)

(assert (=> b!2322640 (= e!1488507 (and (inv!37639 (left!21006 (left!21006 acc!252))) tp!736798 (inv!37639 (right!21336 (left!21006 acc!252))) tp!736799))))

(declare-fun b!2322642 () Bool)

(declare-fun e!1488506 () Bool)

(declare-fun tp!736800 () Bool)

(assert (=> b!2322642 (= e!1488506 tp!736800)))

(declare-fun b!2322641 () Bool)

(assert (=> b!2322641 (= e!1488507 (and (inv!37640 (xs!12039 (left!21006 acc!252))) e!1488506))))

(assert (=> b!2322400 (= tp!736769 (and (inv!37639 (left!21006 acc!252)) e!1488507))))

(assert (= (and b!2322400 ((_ is Node!9073) (left!21006 acc!252))) b!2322640))

(assert (= b!2322641 b!2322642))

(assert (= (and b!2322400 ((_ is Leaf!13319) (left!21006 acc!252))) b!2322641))

(declare-fun m!2752111 () Bool)

(assert (=> b!2322640 m!2752111))

(declare-fun m!2752113 () Bool)

(assert (=> b!2322640 m!2752113))

(declare-fun m!2752115 () Bool)

(assert (=> b!2322641 m!2752115))

(assert (=> b!2322400 m!2751913))

(declare-fun tp!736801 () Bool)

(declare-fun tp!736802 () Bool)

(declare-fun b!2322643 () Bool)

(declare-fun e!1488509 () Bool)

(assert (=> b!2322643 (= e!1488509 (and (inv!37639 (left!21006 (right!21336 acc!252))) tp!736801 (inv!37639 (right!21336 (right!21336 acc!252))) tp!736802))))

(declare-fun b!2322645 () Bool)

(declare-fun e!1488508 () Bool)

(declare-fun tp!736803 () Bool)

(assert (=> b!2322645 (= e!1488508 tp!736803)))

(declare-fun b!2322644 () Bool)

(assert (=> b!2322644 (= e!1488509 (and (inv!37640 (xs!12039 (right!21336 acc!252))) e!1488508))))

(assert (=> b!2322400 (= tp!736768 (and (inv!37639 (right!21336 acc!252)) e!1488509))))

(assert (= (and b!2322400 ((_ is Node!9073) (right!21336 acc!252))) b!2322643))

(assert (= b!2322644 b!2322645))

(assert (= (and b!2322400 ((_ is Leaf!13319) (right!21336 acc!252))) b!2322644))

(declare-fun m!2752117 () Bool)

(assert (=> b!2322643 m!2752117))

(declare-fun m!2752119 () Bool)

(assert (=> b!2322643 m!2752119))

(declare-fun m!2752121 () Bool)

(assert (=> b!2322644 m!2752121))

(assert (=> b!2322400 m!2751915))

(check-sat (not b!2322576) (not b!2322556) (not bm!138496) (not b!2322448) (not b!2322400) (not bm!138488) (not bm!138493) (not b!2322640) (not b!2322645) (not d!687234) (not b!2322444) (not b!2322432) (not b!2322434) (not b!2322631) (not b!2322450) (not d!687224) (not b!2322447) (not b!2322641) (not b!2322624) (not bm!138495) (not b!2322431) (not b!2322642) (not bm!138494) (not d!687208) (not d!687230) (not d!687248) (not bm!138489) (not d!687232) (not b!2322442) (not b!2322570) (not b!2322625) (not d!687242) (not b!2322445) tp_is_empty!10829 (not b!2322435) (not b!2322643) (not bm!138486) (not b!2322430) (not b!2322575) (not b!2322644) (not b!2322566) (not b!2322433) (not b!2322630) (not b!2322562))
(check-sat)
(get-model)

(declare-fun e!1488518 () Bool)

(declare-fun lt!860621 () Conc!9073)

(declare-fun b!2322646 () Bool)

(assert (=> b!2322646 (= e!1488518 (= (list!11013 lt!860621) (++!6824 (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (list!11013 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun bm!138498 () Bool)

(declare-fun call!138504 () Conc!9073)

(declare-fun call!138517 () Conc!9073)

(assert (=> bm!138498 (= call!138504 call!138517)))

(declare-fun bm!138499 () Bool)

(declare-fun call!138510 () Conc!9073)

(assert (=> bm!138499 (= call!138517 call!138510)))

(declare-fun bm!138500 () Bool)

(declare-fun call!138509 () Conc!9073)

(declare-fun call!138513 () Conc!9073)

(assert (=> bm!138500 (= call!138509 call!138513)))

(declare-fun bm!138501 () Bool)

(declare-fun call!138515 () Conc!9073)

(assert (=> bm!138501 (= call!138515 call!138513)))

(declare-fun b!2322647 () Bool)

(declare-fun e!1488517 () Conc!9073)

(declare-fun call!138512 () Conc!9073)

(assert (=> b!2322647 (= e!1488517 call!138512)))

(declare-fun b!2322648 () Bool)

(declare-fun e!1488515 () Conc!9073)

(declare-fun e!1488516 () Conc!9073)

(assert (=> b!2322648 (= e!1488515 e!1488516)))

(declare-fun c!368461 () Bool)

(assert (=> b!2322648 (= c!368461 (= (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) Empty!9073))))

(declare-fun c!368459 () Bool)

(declare-fun call!138514 () Int)

(declare-fun bm!138502 () Bool)

(assert (=> bm!138502 (= call!138514 (height!1331 (ite c!368459 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun bm!138503 () Bool)

(declare-fun call!138518 () Conc!9073)

(assert (=> bm!138503 (= call!138512 call!138518)))

(declare-fun b!2322649 () Bool)

(declare-fun c!368458 () Bool)

(declare-fun call!138508 () Int)

(assert (=> b!2322649 (= c!368458 (>= call!138508 call!138514))))

(declare-fun e!1488519 () Conc!9073)

(declare-fun e!1488510 () Conc!9073)

(assert (=> b!2322649 (= e!1488519 e!1488510)))

(declare-fun lt!860620 () Conc!9073)

(declare-fun bm!138504 () Bool)

(declare-fun call!138516 () Int)

(assert (=> bm!138504 (= call!138516 (height!1331 (ite c!368459 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) lt!860620)))))

(declare-fun d!687250 () Bool)

(assert (=> d!687250 e!1488518))

(declare-fun res!992192 () Bool)

(assert (=> d!687250 (=> (not res!992192) (not e!1488518))))

(assert (=> d!687250 (= res!992192 (appendAssocInst!608 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(assert (=> d!687250 (= lt!860621 e!1488515)))

(declare-fun c!368460 () Bool)

(assert (=> d!687250 (= c!368460 (= (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) Empty!9073))))

(declare-fun e!1488512 () Bool)

(assert (=> d!687250 e!1488512))

(declare-fun res!992190 () Bool)

(assert (=> d!687250 (=> (not res!992190) (not e!1488512))))

(assert (=> d!687250 (= res!992190 (isBalanced!2767 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))))

(assert (=> d!687250 (= (++!6822 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) lt!860621)))

(declare-fun call!138511 () Int)

(declare-fun bm!138505 () Bool)

(declare-fun lt!860619 () Conc!9073)

(assert (=> bm!138505 (= call!138511 (height!1331 (ite c!368459 lt!860619 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(declare-fun b!2322650 () Bool)

(declare-fun e!1488511 () Conc!9073)

(assert (=> b!2322650 (= e!1488511 call!138504)))

(declare-fun b!2322651 () Bool)

(assert (=> b!2322651 (= e!1488511 call!138504)))

(declare-fun bm!138506 () Bool)

(declare-fun call!138503 () Conc!9073)

(assert (=> bm!138506 (= call!138518 call!138503)))

(declare-fun bm!138507 () Bool)

(declare-fun call!138505 () Conc!9073)

(assert (=> bm!138507 (= call!138505 call!138518)))

(declare-fun b!2322652 () Bool)

(declare-fun res!992189 () Bool)

(assert (=> b!2322652 (=> (not res!992189) (not e!1488518))))

(assert (=> b!2322652 (= res!992189 (isBalanced!2767 lt!860621))))

(declare-fun b!2322653 () Bool)

(declare-fun e!1488513 () Conc!9073)

(assert (=> b!2322653 (= e!1488513 call!138503)))

(declare-fun b!2322654 () Bool)

(declare-fun e!1488514 () Conc!9073)

(assert (=> b!2322654 (= e!1488514 call!138517)))

(declare-fun b!2322655 () Bool)

(assert (=> b!2322655 (= e!1488517 call!138512)))

(declare-fun b!2322656 () Bool)

(declare-fun res!992193 () Bool)

(assert (=> b!2322656 (=> (not res!992193) (not e!1488518))))

(assert (=> b!2322656 (= res!992193 (>= (height!1331 lt!860621) (max!0 (height!1331 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (height!1331 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun b!2322657 () Bool)

(assert (=> b!2322657 (= e!1488515 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun bm!138508 () Bool)

(declare-fun call!138506 () Conc!9073)

(declare-fun call!138507 () Conc!9073)

(assert (=> bm!138508 (= call!138506 call!138507)))

(declare-fun b!2322658 () Bool)

(assert (=> b!2322658 (= e!1488513 e!1488519)))

(declare-fun lt!860618 () Int)

(assert (=> b!2322658 (= c!368459 (< lt!860618 (- 1)))))

(declare-fun b!2322659 () Bool)

(declare-fun c!368456 () Bool)

(assert (=> b!2322659 (= c!368456 (>= call!138516 call!138514))))

(assert (=> b!2322659 (= e!1488519 e!1488514)))

(declare-fun b!2322660 () Bool)

(declare-fun res!992191 () Bool)

(assert (=> b!2322660 (=> (not res!992191) (not e!1488518))))

(assert (=> b!2322660 (= res!992191 (<= (height!1331 lt!860621) (+ (max!0 (height!1331 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (height!1331 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) 1)))))

(declare-fun bm!138509 () Bool)

(assert (=> bm!138509 (= call!138513 (++!6822 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))

(declare-fun b!2322661 () Bool)

(assert (=> b!2322661 (= e!1488510 e!1488517)))

(assert (=> b!2322661 (= lt!860620 call!138515)))

(declare-fun c!368457 () Bool)

(assert (=> b!2322661 (= c!368457 (= call!138516 (- call!138511 3)))))

(declare-fun b!2322662 () Bool)

(assert (=> b!2322662 (= e!1488514 e!1488511)))

(assert (=> b!2322662 (= lt!860619 call!138509)))

(declare-fun c!368463 () Bool)

(assert (=> b!2322662 (= c!368463 (= call!138511 (- call!138508 3)))))

(declare-fun b!2322663 () Bool)

(assert (=> b!2322663 (= e!1488510 call!138507)))

(declare-fun bm!138510 () Bool)

(assert (=> bm!138510 (= call!138510 (<>!214 (ite c!368459 (ite (or c!368456 c!368463) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) call!138505) (ite c!368458 call!138515 (ite c!368457 lt!860620 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))) (ite c!368459 (ite c!368456 call!138509 (ite c!368463 call!138505 lt!860619)) (ite c!368458 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite c!368457 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))

(declare-fun b!2322664 () Bool)

(assert (=> b!2322664 (= e!1488516 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))

(declare-fun bm!138511 () Bool)

(assert (=> bm!138511 (= call!138508 (height!1331 (ite c!368459 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun c!368462 () Bool)

(declare-fun bm!138512 () Bool)

(assert (=> bm!138512 (= call!138503 (<>!214 (ite c!368462 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368459 (ite c!368463 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (ite c!368457 call!138506 lt!860620))) (ite c!368462 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368459 (ite c!368463 lt!860619 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368457 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) call!138506)))))))

(declare-fun b!2322665 () Bool)

(assert (=> b!2322665 (= e!1488512 (isBalanced!2767 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(declare-fun bm!138513 () Bool)

(assert (=> bm!138513 (= call!138507 call!138510)))

(declare-fun b!2322666 () Bool)

(assert (=> b!2322666 (= c!368462 (and (<= (- 1) lt!860618) (<= lt!860618 1)))))

(assert (=> b!2322666 (= lt!860618 (- (height!1331 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (height!1331 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))))

(assert (=> b!2322666 (= e!1488516 e!1488513)))

(assert (= (and d!687250 res!992190) b!2322665))

(assert (= (and d!687250 c!368460) b!2322657))

(assert (= (and d!687250 (not c!368460)) b!2322648))

(assert (= (and b!2322648 c!368461) b!2322664))

(assert (= (and b!2322648 (not c!368461)) b!2322666))

(assert (= (and b!2322666 c!368462) b!2322653))

(assert (= (and b!2322666 (not c!368462)) b!2322658))

(assert (= (and b!2322658 c!368459) b!2322659))

(assert (= (and b!2322658 (not c!368459)) b!2322649))

(assert (= (and b!2322659 c!368456) b!2322654))

(assert (= (and b!2322659 (not c!368456)) b!2322662))

(assert (= (and b!2322662 c!368463) b!2322650))

(assert (= (and b!2322662 (not c!368463)) b!2322651))

(assert (= (or b!2322650 b!2322651) bm!138507))

(assert (= (or b!2322650 b!2322651) bm!138498))

(assert (= (or b!2322654 b!2322662) bm!138500))

(assert (= (or b!2322654 bm!138498) bm!138499))

(assert (= (and b!2322649 c!368458) b!2322663))

(assert (= (and b!2322649 (not c!368458)) b!2322661))

(assert (= (and b!2322661 c!368457) b!2322647))

(assert (= (and b!2322661 (not c!368457)) b!2322655))

(assert (= (or b!2322647 b!2322655) bm!138508))

(assert (= (or b!2322647 b!2322655) bm!138503))

(assert (= (or b!2322663 b!2322661) bm!138501))

(assert (= (or b!2322663 bm!138508) bm!138513))

(assert (= (or bm!138507 bm!138503) bm!138506))

(assert (= (or bm!138499 bm!138513) bm!138510))

(assert (= (or b!2322662 b!2322649) bm!138511))

(assert (= (or b!2322659 b!2322649) bm!138502))

(assert (= (or b!2322662 b!2322661) bm!138505))

(assert (= (or b!2322659 b!2322661) bm!138504))

(assert (= (or bm!138500 bm!138501) bm!138509))

(assert (= (or b!2322653 bm!138506) bm!138512))

(assert (= (and d!687250 res!992192) b!2322652))

(assert (= (and b!2322652 res!992189) b!2322660))

(assert (= (and b!2322660 res!992191) b!2322656))

(assert (= (and b!2322656 res!992193) b!2322646))

(declare-fun m!2752123 () Bool)

(assert (=> d!687250 m!2752123))

(declare-fun m!2752125 () Bool)

(assert (=> d!687250 m!2752125))

(declare-fun m!2752127 () Bool)

(assert (=> bm!138511 m!2752127))

(declare-fun m!2752129 () Bool)

(assert (=> bm!138510 m!2752129))

(declare-fun m!2752131 () Bool)

(assert (=> b!2322666 m!2752131))

(declare-fun m!2752133 () Bool)

(assert (=> b!2322666 m!2752133))

(declare-fun m!2752135 () Bool)

(assert (=> b!2322656 m!2752135))

(assert (=> b!2322656 m!2752133))

(assert (=> b!2322656 m!2752131))

(assert (=> b!2322656 m!2752133))

(assert (=> b!2322656 m!2752131))

(declare-fun m!2752137 () Bool)

(assert (=> b!2322656 m!2752137))

(declare-fun m!2752139 () Bool)

(assert (=> bm!138512 m!2752139))

(declare-fun m!2752141 () Bool)

(assert (=> bm!138509 m!2752141))

(declare-fun m!2752143 () Bool)

(assert (=> b!2322665 m!2752143))

(declare-fun m!2752145 () Bool)

(assert (=> bm!138502 m!2752145))

(declare-fun m!2752147 () Bool)

(assert (=> b!2322646 m!2752147))

(declare-fun m!2752149 () Bool)

(assert (=> b!2322646 m!2752149))

(declare-fun m!2752151 () Bool)

(assert (=> b!2322646 m!2752151))

(assert (=> b!2322646 m!2752149))

(assert (=> b!2322646 m!2752151))

(declare-fun m!2752153 () Bool)

(assert (=> b!2322646 m!2752153))

(declare-fun m!2752155 () Bool)

(assert (=> bm!138504 m!2752155))

(declare-fun m!2752157 () Bool)

(assert (=> b!2322652 m!2752157))

(declare-fun m!2752159 () Bool)

(assert (=> bm!138505 m!2752159))

(assert (=> b!2322660 m!2752135))

(assert (=> b!2322660 m!2752133))

(assert (=> b!2322660 m!2752131))

(assert (=> b!2322660 m!2752133))

(assert (=> b!2322660 m!2752131))

(assert (=> b!2322660 m!2752137))

(assert (=> bm!138493 d!687250))

(assert (=> b!2322625 d!687208))

(declare-fun d!687252 () Bool)

(assert (=> d!687252 (= (height!1331 lt!860609) (ite ((_ is Empty!9073) lt!860609) 0 (ite ((_ is Leaf!13319) lt!860609) 1 (cheight!9284 lt!860609))))))

(assert (=> b!2322570 d!687252))

(declare-fun d!687254 () Bool)

(assert (=> d!687254 (= (max!0 (height!1331 acc!252) (height!1331 (Leaf!13319 lt!860576 512))) (ite (< (height!1331 acc!252) (height!1331 (Leaf!13319 lt!860576 512))) (height!1331 (Leaf!13319 lt!860576 512)) (height!1331 acc!252)))))

(assert (=> b!2322570 d!687254))

(declare-fun d!687256 () Bool)

(assert (=> d!687256 (= (height!1331 acc!252) (ite ((_ is Empty!9073) acc!252) 0 (ite ((_ is Leaf!13319) acc!252) 1 (cheight!9284 acc!252))))))

(assert (=> b!2322570 d!687256))

(declare-fun d!687258 () Bool)

(assert (=> d!687258 (= (height!1331 (Leaf!13319 lt!860576 512)) (ite ((_ is Empty!9073) (Leaf!13319 lt!860576 512)) 0 (ite ((_ is Leaf!13319) (Leaf!13319 lt!860576 512)) 1 (cheight!9284 (Leaf!13319 lt!860576 512)))))))

(assert (=> b!2322570 d!687258))

(declare-fun d!687260 () Bool)

(declare-fun res!992200 () Bool)

(declare-fun e!1488522 () Bool)

(assert (=> d!687260 (=> (not res!992200) (not e!1488522))))

(declare-fun size!21936 (Conc!9073) Int)

(assert (=> d!687260 (= res!992200 (= (csize!18376 acc!252) (+ (size!21936 (left!21006 acc!252)) (size!21936 (right!21336 acc!252)))))))

(assert (=> d!687260 (= (inv!37643 acc!252) e!1488522)))

(declare-fun b!2322673 () Bool)

(declare-fun res!992201 () Bool)

(assert (=> b!2322673 (=> (not res!992201) (not e!1488522))))

(assert (=> b!2322673 (= res!992201 (and (not (= (left!21006 acc!252) Empty!9073)) (not (= (right!21336 acc!252) Empty!9073))))))

(declare-fun b!2322674 () Bool)

(declare-fun res!992202 () Bool)

(assert (=> b!2322674 (=> (not res!992202) (not e!1488522))))

(assert (=> b!2322674 (= res!992202 (= (cheight!9284 acc!252) (+ (max!0 (height!1331 (left!21006 acc!252)) (height!1331 (right!21336 acc!252))) 1)))))

(declare-fun b!2322675 () Bool)

(assert (=> b!2322675 (= e!1488522 (<= 0 (cheight!9284 acc!252)))))

(assert (= (and d!687260 res!992200) b!2322673))

(assert (= (and b!2322673 res!992201) b!2322674))

(assert (= (and b!2322674 res!992202) b!2322675))

(declare-fun m!2752161 () Bool)

(assert (=> d!687260 m!2752161))

(declare-fun m!2752163 () Bool)

(assert (=> d!687260 m!2752163))

(assert (=> b!2322674 m!2751963))

(assert (=> b!2322674 m!2751965))

(assert (=> b!2322674 m!2751963))

(assert (=> b!2322674 m!2751965))

(declare-fun m!2752165 () Bool)

(assert (=> b!2322674 m!2752165))

(assert (=> b!2322442 d!687260))

(declare-fun d!687262 () Bool)

(declare-fun res!992203 () Bool)

(declare-fun e!1488523 () Bool)

(assert (=> d!687262 (=> (not res!992203) (not e!1488523))))

(assert (=> d!687262 (= res!992203 (= (csize!18376 (left!21006 acc!252)) (+ (size!21936 (left!21006 (left!21006 acc!252))) (size!21936 (right!21336 (left!21006 acc!252))))))))

(assert (=> d!687262 (= (inv!37643 (left!21006 acc!252)) e!1488523)))

(declare-fun b!2322676 () Bool)

(declare-fun res!992204 () Bool)

(assert (=> b!2322676 (=> (not res!992204) (not e!1488523))))

(assert (=> b!2322676 (= res!992204 (and (not (= (left!21006 (left!21006 acc!252)) Empty!9073)) (not (= (right!21336 (left!21006 acc!252)) Empty!9073))))))

(declare-fun b!2322677 () Bool)

(declare-fun res!992205 () Bool)

(assert (=> b!2322677 (=> (not res!992205) (not e!1488523))))

(assert (=> b!2322677 (= res!992205 (= (cheight!9284 (left!21006 acc!252)) (+ (max!0 (height!1331 (left!21006 (left!21006 acc!252))) (height!1331 (right!21336 (left!21006 acc!252)))) 1)))))

(declare-fun b!2322678 () Bool)

(assert (=> b!2322678 (= e!1488523 (<= 0 (cheight!9284 (left!21006 acc!252))))))

(assert (= (and d!687262 res!992203) b!2322676))

(assert (= (and b!2322676 res!992204) b!2322677))

(assert (= (and b!2322677 res!992205) b!2322678))

(declare-fun m!2752167 () Bool)

(assert (=> d!687262 m!2752167))

(declare-fun m!2752169 () Bool)

(assert (=> d!687262 m!2752169))

(declare-fun m!2752171 () Bool)

(assert (=> b!2322677 m!2752171))

(declare-fun m!2752173 () Bool)

(assert (=> b!2322677 m!2752173))

(assert (=> b!2322677 m!2752171))

(assert (=> b!2322677 m!2752173))

(declare-fun m!2752175 () Bool)

(assert (=> b!2322677 m!2752175))

(assert (=> b!2322445 d!687262))

(declare-fun d!687264 () Bool)

(declare-fun c!368464 () Bool)

(assert (=> d!687264 (= c!368464 ((_ is Node!9073) (left!21006 (right!21336 acc!252))))))

(declare-fun e!1488524 () Bool)

(assert (=> d!687264 (= (inv!37639 (left!21006 (right!21336 acc!252))) e!1488524)))

(declare-fun b!2322679 () Bool)

(assert (=> b!2322679 (= e!1488524 (inv!37643 (left!21006 (right!21336 acc!252))))))

(declare-fun b!2322680 () Bool)

(declare-fun e!1488525 () Bool)

(assert (=> b!2322680 (= e!1488524 e!1488525)))

(declare-fun res!992206 () Bool)

(assert (=> b!2322680 (= res!992206 (not ((_ is Leaf!13319) (left!21006 (right!21336 acc!252)))))))

(assert (=> b!2322680 (=> res!992206 e!1488525)))

(declare-fun b!2322681 () Bool)

(assert (=> b!2322681 (= e!1488525 (inv!37644 (left!21006 (right!21336 acc!252))))))

(assert (= (and d!687264 c!368464) b!2322679))

(assert (= (and d!687264 (not c!368464)) b!2322680))

(assert (= (and b!2322680 (not res!992206)) b!2322681))

(declare-fun m!2752177 () Bool)

(assert (=> b!2322679 m!2752177))

(declare-fun m!2752179 () Bool)

(assert (=> b!2322681 m!2752179))

(assert (=> b!2322643 d!687264))

(declare-fun d!687266 () Bool)

(declare-fun c!368465 () Bool)

(assert (=> d!687266 (= c!368465 ((_ is Node!9073) (right!21336 (right!21336 acc!252))))))

(declare-fun e!1488526 () Bool)

(assert (=> d!687266 (= (inv!37639 (right!21336 (right!21336 acc!252))) e!1488526)))

(declare-fun b!2322682 () Bool)

(assert (=> b!2322682 (= e!1488526 (inv!37643 (right!21336 (right!21336 acc!252))))))

(declare-fun b!2322683 () Bool)

(declare-fun e!1488527 () Bool)

(assert (=> b!2322683 (= e!1488526 e!1488527)))

(declare-fun res!992207 () Bool)

(assert (=> b!2322683 (= res!992207 (not ((_ is Leaf!13319) (right!21336 (right!21336 acc!252)))))))

(assert (=> b!2322683 (=> res!992207 e!1488527)))

(declare-fun b!2322684 () Bool)

(assert (=> b!2322684 (= e!1488527 (inv!37644 (right!21336 (right!21336 acc!252))))))

(assert (= (and d!687266 c!368465) b!2322682))

(assert (= (and d!687266 (not c!368465)) b!2322683))

(assert (= (and b!2322683 (not res!992207)) b!2322684))

(declare-fun m!2752181 () Bool)

(assert (=> b!2322682 m!2752181))

(declare-fun m!2752183 () Bool)

(assert (=> b!2322684 m!2752183))

(assert (=> b!2322643 d!687266))

(declare-fun d!687268 () Bool)

(declare-fun lt!860624 () Int)

(assert (=> d!687268 (>= lt!860624 0)))

(declare-fun e!1488530 () Int)

(assert (=> d!687268 (= lt!860624 e!1488530)))

(declare-fun c!368468 () Bool)

(assert (=> d!687268 (= c!368468 ((_ is Nil!27668) (innerList!9133 (xs!12039 acc!252))))))

(assert (=> d!687268 (= (size!21934 (innerList!9133 (xs!12039 acc!252))) lt!860624)))

(declare-fun b!2322689 () Bool)

(assert (=> b!2322689 (= e!1488530 0)))

(declare-fun b!2322690 () Bool)

(assert (=> b!2322690 (= e!1488530 (+ 1 (size!21934 (t!207446 (innerList!9133 (xs!12039 acc!252))))))))

(assert (= (and d!687268 c!368468) b!2322689))

(assert (= (and d!687268 (not c!368468)) b!2322690))

(declare-fun m!2752185 () Bool)

(assert (=> b!2322690 m!2752185))

(assert (=> d!687230 d!687268))

(declare-fun d!687270 () Bool)

(assert (=> d!687270 (= (height!1331 (ite c!368450 (right!21336 acc!252) (left!21006 (Leaf!13319 lt!860576 512)))) (ite ((_ is Empty!9073) (ite c!368450 (right!21336 acc!252) (left!21006 (Leaf!13319 lt!860576 512)))) 0 (ite ((_ is Leaf!13319) (ite c!368450 (right!21336 acc!252) (left!21006 (Leaf!13319 lt!860576 512)))) 1 (cheight!9284 (ite c!368450 (right!21336 acc!252) (left!21006 (Leaf!13319 lt!860576 512)))))))))

(assert (=> bm!138486 d!687270))

(declare-fun d!687272 () Bool)

(declare-fun lt!860625 () Int)

(assert (=> d!687272 (>= lt!860625 0)))

(declare-fun e!1488531 () Int)

(assert (=> d!687272 (= lt!860625 e!1488531)))

(declare-fun c!368469 () Bool)

(assert (=> d!687272 (= c!368469 ((_ is Nil!27668) (list!11011 arr!18)))))

(assert (=> d!687272 (= (size!21934 (list!11011 arr!18)) lt!860625)))

(declare-fun b!2322691 () Bool)

(assert (=> b!2322691 (= e!1488531 0)))

(declare-fun b!2322692 () Bool)

(assert (=> b!2322692 (= e!1488531 (+ 1 (size!21934 (t!207446 (list!11011 arr!18)))))))

(assert (= (and d!687272 c!368469) b!2322691))

(assert (= (and d!687272 (not c!368469)) b!2322692))

(declare-fun m!2752187 () Bool)

(assert (=> b!2322692 m!2752187))

(assert (=> d!687208 d!687272))

(declare-fun d!687274 () Bool)

(assert (=> d!687274 (= (list!11011 arr!18) (innerList!9133 arr!18))))

(assert (=> d!687208 d!687274))

(declare-fun d!687276 () Bool)

(declare-fun _$1!10219 () Int)

(assert (=> d!687276 (= _$1!10219 (size!21934 (list!11011 arr!18)))))

(assert (=> d!687276 true))

(assert (=> d!687276 (= (choose!13598 arr!18) _$1!10219)))

(declare-fun bs!459120 () Bool)

(assert (= bs!459120 d!687276))

(assert (=> bs!459120 m!2751933))

(assert (=> bs!459120 m!2751933))

(assert (=> bs!459120 m!2751939))

(assert (=> d!687208 d!687276))

(declare-fun d!687278 () Bool)

(declare-fun lt!860628 () Bool)

(declare-fun isEmpty!15799 (List!27766) Bool)

(assert (=> d!687278 (= lt!860628 (isEmpty!15799 (list!11013 (left!21006 acc!252))))))

(assert (=> d!687278 (= lt!860628 (= (size!21936 (left!21006 acc!252)) 0))))

(assert (=> d!687278 (= (isEmpty!15797 (left!21006 acc!252)) lt!860628)))

(declare-fun bs!459121 () Bool)

(assert (= bs!459121 d!687278))

(declare-fun m!2752189 () Bool)

(assert (=> bs!459121 m!2752189))

(assert (=> bs!459121 m!2752189))

(declare-fun m!2752191 () Bool)

(assert (=> bs!459121 m!2752191))

(assert (=> bs!459121 m!2752161))

(assert (=> b!2322431 d!687278))

(declare-fun d!687280 () Bool)

(assert (=> d!687280 (= (height!1331 (ite c!368450 (left!21006 acc!252) lt!860608)) (ite ((_ is Empty!9073) (ite c!368450 (left!21006 acc!252) lt!860608)) 0 (ite ((_ is Leaf!13319) (ite c!368450 (left!21006 acc!252) lt!860608)) 1 (cheight!9284 (ite c!368450 (left!21006 acc!252) lt!860608)))))))

(assert (=> bm!138488 d!687280))

(declare-fun d!687282 () Bool)

(declare-fun res!992212 () Bool)

(declare-fun e!1488534 () Bool)

(assert (=> d!687282 (=> (not res!992212) (not e!1488534))))

(assert (=> d!687282 (= res!992212 (<= (size!21934 (list!11011 (xs!12039 acc!252))) 512))))

(assert (=> d!687282 (= (inv!37644 acc!252) e!1488534)))

(declare-fun b!2322697 () Bool)

(declare-fun res!992213 () Bool)

(assert (=> b!2322697 (=> (not res!992213) (not e!1488534))))

(assert (=> b!2322697 (= res!992213 (= (csize!18377 acc!252) (size!21934 (list!11011 (xs!12039 acc!252)))))))

(declare-fun b!2322698 () Bool)

(assert (=> b!2322698 (= e!1488534 (and (> (csize!18377 acc!252) 0) (<= (csize!18377 acc!252) 512)))))

(assert (= (and d!687282 res!992212) b!2322697))

(assert (= (and b!2322697 res!992213) b!2322698))

(declare-fun m!2752193 () Bool)

(assert (=> d!687282 m!2752193))

(assert (=> d!687282 m!2752193))

(declare-fun m!2752195 () Bool)

(assert (=> d!687282 m!2752195))

(assert (=> b!2322697 m!2752193))

(assert (=> b!2322697 m!2752193))

(assert (=> b!2322697 m!2752195))

(assert (=> b!2322444 d!687282))

(declare-fun d!687286 () Bool)

(assert (=> d!687286 (= (height!1331 (left!21006 acc!252)) (ite ((_ is Empty!9073) (left!21006 acc!252)) 0 (ite ((_ is Leaf!13319) (left!21006 acc!252)) 1 (cheight!9284 (left!21006 acc!252)))))))

(assert (=> b!2322430 d!687286))

(declare-fun d!687288 () Bool)

(assert (=> d!687288 (= (height!1331 (right!21336 acc!252)) (ite ((_ is Empty!9073) (right!21336 acc!252)) 0 (ite ((_ is Leaf!13319) (right!21336 acc!252)) 1 (cheight!9284 (right!21336 acc!252)))))))

(assert (=> b!2322430 d!687288))

(declare-fun d!687290 () Bool)

(declare-fun res!992214 () Bool)

(declare-fun e!1488535 () Bool)

(assert (=> d!687290 (=> (not res!992214) (not e!1488535))))

(assert (=> d!687290 (= res!992214 (<= (size!21934 (list!11011 (xs!12039 (left!21006 acc!252)))) 512))))

(assert (=> d!687290 (= (inv!37644 (left!21006 acc!252)) e!1488535)))

(declare-fun b!2322699 () Bool)

(declare-fun res!992215 () Bool)

(assert (=> b!2322699 (=> (not res!992215) (not e!1488535))))

(assert (=> b!2322699 (= res!992215 (= (csize!18377 (left!21006 acc!252)) (size!21934 (list!11011 (xs!12039 (left!21006 acc!252))))))))

(declare-fun b!2322700 () Bool)

(assert (=> b!2322700 (= e!1488535 (and (> (csize!18377 (left!21006 acc!252)) 0) (<= (csize!18377 (left!21006 acc!252)) 512)))))

(assert (= (and d!687290 res!992214) b!2322699))

(assert (= (and b!2322699 res!992215) b!2322700))

(declare-fun m!2752197 () Bool)

(assert (=> d!687290 m!2752197))

(assert (=> d!687290 m!2752197))

(declare-fun m!2752199 () Bool)

(assert (=> d!687290 m!2752199))

(assert (=> b!2322699 m!2752197))

(assert (=> b!2322699 m!2752197))

(assert (=> b!2322699 m!2752199))

(assert (=> b!2322447 d!687290))

(declare-fun e!1488544 () Conc!9073)

(declare-fun b!2322717 () Bool)

(assert (=> b!2322717 (= e!1488544 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(declare-fun d!687292 () Bool)

(declare-fun lt!860634 () Conc!9073)

(assert (=> d!687292 (= (list!11013 lt!860634) (++!6824 (list!11013 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) (list!11013 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))))))

(declare-fun e!1488543 () Conc!9073)

(assert (=> d!687292 (= lt!860634 e!1488543)))

(declare-fun c!368477 () Bool)

(assert (=> d!687292 (= c!368477 (= (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))) Empty!9073))))

(assert (=> d!687292 (= (<>!214 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))) lt!860634)))

(declare-fun b!2322716 () Bool)

(assert (=> b!2322716 (= e!1488543 e!1488544)))

(declare-fun c!368478 () Bool)

(assert (=> b!2322716 (= c!368478 (= (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))) Empty!9073))))

(declare-fun b!2322715 () Bool)

(assert (=> b!2322715 (= e!1488543 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2322718 () Bool)

(assert (=> b!2322718 (= e!1488544 (Node!9073 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))) (+ (size!21936 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) (size!21936 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))) (+ (max!0 (height!1331 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) (height!1331 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))) 1)))))

(assert (= (and d!687292 c!368477) b!2322715))

(assert (= (and d!687292 (not c!368477)) b!2322716))

(assert (= (and b!2322716 c!368478) b!2322717))

(assert (= (and b!2322716 (not c!368478)) b!2322718))

(declare-fun m!2752205 () Bool)

(assert (=> d!687292 m!2752205))

(declare-fun m!2752207 () Bool)

(assert (=> d!687292 m!2752207))

(declare-fun m!2752209 () Bool)

(assert (=> d!687292 m!2752209))

(assert (=> d!687292 m!2752207))

(assert (=> d!687292 m!2752209))

(declare-fun m!2752211 () Bool)

(assert (=> d!687292 m!2752211))

(declare-fun m!2752213 () Bool)

(assert (=> b!2322718 m!2752213))

(declare-fun m!2752215 () Bool)

(assert (=> b!2322718 m!2752215))

(declare-fun m!2752217 () Bool)

(assert (=> b!2322718 m!2752217))

(assert (=> b!2322718 m!2752215))

(declare-fun m!2752219 () Bool)

(assert (=> b!2322718 m!2752219))

(declare-fun m!2752221 () Bool)

(assert (=> b!2322718 m!2752221))

(assert (=> b!2322718 m!2752219))

(assert (=> bm!138494 d!687292))

(declare-fun d!687302 () Bool)

(assert (=> d!687302 (= (inv!37640 (xs!12039 (right!21336 acc!252))) (<= (size!21934 (innerList!9133 (xs!12039 (right!21336 acc!252)))) 2147483647))))

(declare-fun bs!459124 () Bool)

(assert (= bs!459124 d!687302))

(declare-fun m!2752223 () Bool)

(assert (=> bs!459124 m!2752223))

(assert (=> b!2322644 d!687302))

(declare-fun b!2322723 () Bool)

(declare-fun e!1488547 () Bool)

(declare-fun e!1488548 () Bool)

(assert (=> b!2322723 (= e!1488547 e!1488548)))

(declare-fun res!992222 () Bool)

(assert (=> b!2322723 (=> (not res!992222) (not e!1488548))))

(assert (=> b!2322723 (= res!992222 (<= (- 1) (- (height!1331 (left!21006 (Leaf!13319 lt!860576 512))) (height!1331 (right!21336 (Leaf!13319 lt!860576 512))))))))

(declare-fun d!687304 () Bool)

(declare-fun res!992225 () Bool)

(assert (=> d!687304 (=> res!992225 e!1488547)))

(assert (=> d!687304 (= res!992225 (not ((_ is Node!9073) (Leaf!13319 lt!860576 512))))))

(assert (=> d!687304 (= (isBalanced!2767 (Leaf!13319 lt!860576 512)) e!1488547)))

(declare-fun b!2322724 () Bool)

(declare-fun res!992221 () Bool)

(assert (=> b!2322724 (=> (not res!992221) (not e!1488548))))

(assert (=> b!2322724 (= res!992221 (not (isEmpty!15797 (left!21006 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2322725 () Bool)

(declare-fun res!992223 () Bool)

(assert (=> b!2322725 (=> (not res!992223) (not e!1488548))))

(assert (=> b!2322725 (= res!992223 (isBalanced!2767 (right!21336 (Leaf!13319 lt!860576 512))))))

(declare-fun b!2322726 () Bool)

(declare-fun res!992224 () Bool)

(assert (=> b!2322726 (=> (not res!992224) (not e!1488548))))

(assert (=> b!2322726 (= res!992224 (isBalanced!2767 (left!21006 (Leaf!13319 lt!860576 512))))))

(declare-fun b!2322727 () Bool)

(declare-fun res!992220 () Bool)

(assert (=> b!2322727 (=> (not res!992220) (not e!1488548))))

(assert (=> b!2322727 (= res!992220 (<= (- (height!1331 (left!21006 (Leaf!13319 lt!860576 512))) (height!1331 (right!21336 (Leaf!13319 lt!860576 512)))) 1))))

(declare-fun b!2322728 () Bool)

(assert (=> b!2322728 (= e!1488548 (not (isEmpty!15797 (right!21336 (Leaf!13319 lt!860576 512)))))))

(assert (= (and d!687304 (not res!992225)) b!2322723))

(assert (= (and b!2322723 res!992222) b!2322727))

(assert (= (and b!2322727 res!992220) b!2322726))

(assert (= (and b!2322726 res!992224) b!2322725))

(assert (= (and b!2322725 res!992223) b!2322724))

(assert (= (and b!2322724 res!992221) b!2322728))

(declare-fun m!2752225 () Bool)

(assert (=> b!2322728 m!2752225))

(declare-fun m!2752227 () Bool)

(assert (=> b!2322724 m!2752227))

(declare-fun m!2752229 () Bool)

(assert (=> b!2322723 m!2752229))

(declare-fun m!2752231 () Bool)

(assert (=> b!2322723 m!2752231))

(declare-fun m!2752233 () Bool)

(assert (=> b!2322725 m!2752233))

(declare-fun m!2752235 () Bool)

(assert (=> b!2322726 m!2752235))

(assert (=> b!2322727 m!2752229))

(assert (=> b!2322727 m!2752231))

(assert (=> b!2322575 d!687304))

(assert (=> b!2322624 d!687208))

(assert (=> b!2322400 d!687226))

(assert (=> b!2322400 d!687228))

(declare-fun b!2322731 () Bool)

(declare-fun e!1488549 () Bool)

(declare-fun e!1488550 () Bool)

(assert (=> b!2322731 (= e!1488549 e!1488550)))

(declare-fun res!992230 () Bool)

(assert (=> b!2322731 (=> (not res!992230) (not e!1488550))))

(assert (=> b!2322731 (= res!992230 (<= (- 1) (- (height!1331 (left!21006 (left!21006 acc!252))) (height!1331 (right!21336 (left!21006 acc!252))))))))

(declare-fun d!687306 () Bool)

(declare-fun res!992233 () Bool)

(assert (=> d!687306 (=> res!992233 e!1488549)))

(assert (=> d!687306 (= res!992233 (not ((_ is Node!9073) (left!21006 acc!252))))))

(assert (=> d!687306 (= (isBalanced!2767 (left!21006 acc!252)) e!1488549)))

(declare-fun b!2322732 () Bool)

(declare-fun res!992229 () Bool)

(assert (=> b!2322732 (=> (not res!992229) (not e!1488550))))

(assert (=> b!2322732 (= res!992229 (not (isEmpty!15797 (left!21006 (left!21006 acc!252)))))))

(declare-fun b!2322733 () Bool)

(declare-fun res!992231 () Bool)

(assert (=> b!2322733 (=> (not res!992231) (not e!1488550))))

(assert (=> b!2322733 (= res!992231 (isBalanced!2767 (right!21336 (left!21006 acc!252))))))

(declare-fun b!2322734 () Bool)

(declare-fun res!992232 () Bool)

(assert (=> b!2322734 (=> (not res!992232) (not e!1488550))))

(assert (=> b!2322734 (= res!992232 (isBalanced!2767 (left!21006 (left!21006 acc!252))))))

(declare-fun b!2322735 () Bool)

(declare-fun res!992228 () Bool)

(assert (=> b!2322735 (=> (not res!992228) (not e!1488550))))

(assert (=> b!2322735 (= res!992228 (<= (- (height!1331 (left!21006 (left!21006 acc!252))) (height!1331 (right!21336 (left!21006 acc!252)))) 1))))

(declare-fun b!2322736 () Bool)

(assert (=> b!2322736 (= e!1488550 (not (isEmpty!15797 (right!21336 (left!21006 acc!252)))))))

(assert (= (and d!687306 (not res!992233)) b!2322731))

(assert (= (and b!2322731 res!992230) b!2322735))

(assert (= (and b!2322735 res!992228) b!2322734))

(assert (= (and b!2322734 res!992232) b!2322733))

(assert (= (and b!2322733 res!992231) b!2322732))

(assert (= (and b!2322732 res!992229) b!2322736))

(declare-fun m!2752237 () Bool)

(assert (=> b!2322736 m!2752237))

(declare-fun m!2752239 () Bool)

(assert (=> b!2322732 m!2752239))

(assert (=> b!2322731 m!2752171))

(assert (=> b!2322731 m!2752173))

(declare-fun m!2752241 () Bool)

(assert (=> b!2322733 m!2752241))

(declare-fun m!2752243 () Bool)

(assert (=> b!2322734 m!2752243))

(assert (=> b!2322735 m!2752171))

(assert (=> b!2322735 m!2752173))

(assert (=> b!2322433 d!687306))

(declare-fun d!687308 () Bool)

(declare-fun lt!860635 () Int)

(assert (=> d!687308 (>= lt!860635 0)))

(declare-fun e!1488551 () Int)

(assert (=> d!687308 (= lt!860635 e!1488551)))

(declare-fun c!368479 () Bool)

(assert (=> d!687308 (= c!368479 ((_ is Nil!27668) (list!11011 lt!860577)))))

(assert (=> d!687308 (= (size!21934 (list!11011 lt!860577)) lt!860635)))

(declare-fun b!2322737 () Bool)

(assert (=> b!2322737 (= e!1488551 0)))

(declare-fun b!2322738 () Bool)

(assert (=> b!2322738 (= e!1488551 (+ 1 (size!21934 (t!207446 (list!11011 lt!860577)))))))

(assert (= (and d!687308 c!368479) b!2322737))

(assert (= (and d!687308 (not c!368479)) b!2322738))

(declare-fun m!2752245 () Bool)

(assert (=> b!2322738 m!2752245))

(assert (=> d!687232 d!687308))

(declare-fun d!687310 () Bool)

(assert (=> d!687310 (= (list!11011 lt!860577) (innerList!9133 lt!860577))))

(assert (=> d!687232 d!687310))

(declare-fun d!687312 () Bool)

(declare-fun _$1!10223 () Int)

(assert (=> d!687312 (= _$1!10223 (size!21934 (list!11011 lt!860577)))))

(assert (=> d!687312 true))

(assert (=> d!687312 (= (choose!13598 lt!860577) _$1!10223)))

(declare-fun bs!459125 () Bool)

(assert (= bs!459125 d!687312))

(assert (=> bs!459125 m!2751987))

(assert (=> bs!459125 m!2751987))

(assert (=> bs!459125 m!2751989))

(assert (=> d!687232 d!687312))

(declare-fun b!2322739 () Bool)

(declare-fun e!1488552 () Bool)

(declare-fun e!1488553 () Bool)

(assert (=> b!2322739 (= e!1488552 e!1488553)))

(declare-fun res!992236 () Bool)

(assert (=> b!2322739 (=> (not res!992236) (not e!1488553))))

(assert (=> b!2322739 (= res!992236 (<= (- 1) (- (height!1331 (left!21006 (right!21336 acc!252))) (height!1331 (right!21336 (right!21336 acc!252))))))))

(declare-fun d!687314 () Bool)

(declare-fun res!992239 () Bool)

(assert (=> d!687314 (=> res!992239 e!1488552)))

(assert (=> d!687314 (= res!992239 (not ((_ is Node!9073) (right!21336 acc!252))))))

(assert (=> d!687314 (= (isBalanced!2767 (right!21336 acc!252)) e!1488552)))

(declare-fun b!2322740 () Bool)

(declare-fun res!992235 () Bool)

(assert (=> b!2322740 (=> (not res!992235) (not e!1488553))))

(assert (=> b!2322740 (= res!992235 (not (isEmpty!15797 (left!21006 (right!21336 acc!252)))))))

(declare-fun b!2322741 () Bool)

(declare-fun res!992237 () Bool)

(assert (=> b!2322741 (=> (not res!992237) (not e!1488553))))

(assert (=> b!2322741 (= res!992237 (isBalanced!2767 (right!21336 (right!21336 acc!252))))))

(declare-fun b!2322742 () Bool)

(declare-fun res!992238 () Bool)

(assert (=> b!2322742 (=> (not res!992238) (not e!1488553))))

(assert (=> b!2322742 (= res!992238 (isBalanced!2767 (left!21006 (right!21336 acc!252))))))

(declare-fun b!2322743 () Bool)

(declare-fun res!992234 () Bool)

(assert (=> b!2322743 (=> (not res!992234) (not e!1488553))))

(assert (=> b!2322743 (= res!992234 (<= (- (height!1331 (left!21006 (right!21336 acc!252))) (height!1331 (right!21336 (right!21336 acc!252)))) 1))))

(declare-fun b!2322744 () Bool)

(assert (=> b!2322744 (= e!1488553 (not (isEmpty!15797 (right!21336 (right!21336 acc!252)))))))

(assert (= (and d!687314 (not res!992239)) b!2322739))

(assert (= (and b!2322739 res!992236) b!2322743))

(assert (= (and b!2322743 res!992234) b!2322742))

(assert (= (and b!2322742 res!992238) b!2322741))

(assert (= (and b!2322741 res!992237) b!2322740))

(assert (= (and b!2322740 res!992235) b!2322744))

(declare-fun m!2752247 () Bool)

(assert (=> b!2322744 m!2752247))

(declare-fun m!2752249 () Bool)

(assert (=> b!2322740 m!2752249))

(declare-fun m!2752251 () Bool)

(assert (=> b!2322739 m!2752251))

(declare-fun m!2752253 () Bool)

(assert (=> b!2322739 m!2752253))

(declare-fun m!2752255 () Bool)

(assert (=> b!2322741 m!2752255))

(declare-fun m!2752257 () Bool)

(assert (=> b!2322742 m!2752257))

(assert (=> b!2322743 m!2752251))

(assert (=> b!2322743 m!2752253))

(assert (=> b!2322432 d!687314))

(declare-fun b!2322750 () Bool)

(declare-fun e!1488556 () Conc!9073)

(assert (=> b!2322750 (= e!1488556 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))))))

(declare-fun lt!860636 () Conc!9073)

(declare-fun d!687316 () Bool)

(assert (=> d!687316 (= (list!11013 lt!860636) (++!6824 (list!11013 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) (list!11013 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))))))

(declare-fun e!1488555 () Conc!9073)

(assert (=> d!687316 (= lt!860636 e!1488555)))

(declare-fun c!368480 () Bool)

(assert (=> d!687316 (= c!368480 (= (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))) Empty!9073))))

(assert (=> d!687316 (= (<>!214 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))) (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))) lt!860636)))

(declare-fun b!2322749 () Bool)

(assert (=> b!2322749 (= e!1488555 e!1488556)))

(declare-fun c!368481 () Bool)

(assert (=> b!2322749 (= c!368481 (= (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))) Empty!9073))))

(declare-fun b!2322748 () Bool)

(assert (=> b!2322748 (= e!1488555 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))))

(declare-fun b!2322751 () Bool)

(assert (=> b!2322751 (= e!1488556 (Node!9073 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))) (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))) (+ (size!21936 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) (size!21936 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))) (+ (max!0 (height!1331 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) (height!1331 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))) 1)))))

(assert (= (and d!687316 c!368480) b!2322748))

(assert (= (and d!687316 (not c!368480)) b!2322749))

(assert (= (and b!2322749 c!368481) b!2322750))

(assert (= (and b!2322749 (not c!368481)) b!2322751))

(declare-fun m!2752273 () Bool)

(assert (=> d!687316 m!2752273))

(declare-fun m!2752275 () Bool)

(assert (=> d!687316 m!2752275))

(declare-fun m!2752277 () Bool)

(assert (=> d!687316 m!2752277))

(assert (=> d!687316 m!2752275))

(assert (=> d!687316 m!2752277))

(declare-fun m!2752283 () Bool)

(assert (=> d!687316 m!2752283))

(declare-fun m!2752285 () Bool)

(assert (=> b!2322751 m!2752285))

(declare-fun m!2752287 () Bool)

(assert (=> b!2322751 m!2752287))

(declare-fun m!2752289 () Bool)

(assert (=> b!2322751 m!2752289))

(assert (=> b!2322751 m!2752287))

(declare-fun m!2752291 () Bool)

(assert (=> b!2322751 m!2752291))

(declare-fun m!2752293 () Bool)

(assert (=> b!2322751 m!2752293))

(assert (=> b!2322751 m!2752291))

(assert (=> bm!138496 d!687316))

(declare-fun d!687324 () Bool)

(assert (=> d!687324 (= (height!1331 (ite c!368450 acc!252 (right!21336 (Leaf!13319 lt!860576 512)))) (ite ((_ is Empty!9073) (ite c!368450 acc!252 (right!21336 (Leaf!13319 lt!860576 512)))) 0 (ite ((_ is Leaf!13319) (ite c!368450 acc!252 (right!21336 (Leaf!13319 lt!860576 512)))) 1 (cheight!9284 (ite c!368450 acc!252 (right!21336 (Leaf!13319 lt!860576 512)))))))))

(assert (=> bm!138495 d!687324))

(declare-fun d!687326 () Bool)

(assert (=> d!687326 (= (height!1331 (ite c!368450 lt!860607 (Leaf!13319 lt!860576 512))) (ite ((_ is Empty!9073) (ite c!368450 lt!860607 (Leaf!13319 lt!860576 512))) 0 (ite ((_ is Leaf!13319) (ite c!368450 lt!860607 (Leaf!13319 lt!860576 512))) 1 (cheight!9284 (ite c!368450 lt!860607 (Leaf!13319 lt!860576 512))))))))

(assert (=> bm!138489 d!687326))

(declare-fun d!687328 () Bool)

(declare-fun lt!860637 () Int)

(assert (=> d!687328 (>= lt!860637 0)))

(declare-fun e!1488563 () Int)

(assert (=> d!687328 (= lt!860637 e!1488563)))

(declare-fun c!368484 () Bool)

(assert (=> d!687328 (= c!368484 ((_ is Nil!27668) (innerList!9133 arr!18)))))

(assert (=> d!687328 (= (size!21934 (innerList!9133 arr!18)) lt!860637)))

(declare-fun b!2322764 () Bool)

(assert (=> b!2322764 (= e!1488563 0)))

(declare-fun b!2322765 () Bool)

(assert (=> b!2322765 (= e!1488563 (+ 1 (size!21934 (t!207446 (innerList!9133 arr!18)))))))

(assert (= (and d!687328 c!368484) b!2322764))

(assert (= (and d!687328 (not c!368484)) b!2322765))

(declare-fun m!2752297 () Bool)

(assert (=> b!2322765 m!2752297))

(assert (=> d!687224 d!687328))

(assert (=> b!2322576 d!687258))

(assert (=> b!2322576 d!687256))

(declare-fun d!687330 () Bool)

(declare-fun c!368485 () Bool)

(assert (=> d!687330 (= c!368485 ((_ is Node!9073) (left!21006 (left!21006 acc!252))))))

(declare-fun e!1488564 () Bool)

(assert (=> d!687330 (= (inv!37639 (left!21006 (left!21006 acc!252))) e!1488564)))

(declare-fun b!2322766 () Bool)

(assert (=> b!2322766 (= e!1488564 (inv!37643 (left!21006 (left!21006 acc!252))))))

(declare-fun b!2322767 () Bool)

(declare-fun e!1488565 () Bool)

(assert (=> b!2322767 (= e!1488564 e!1488565)))

(declare-fun res!992251 () Bool)

(assert (=> b!2322767 (= res!992251 (not ((_ is Leaf!13319) (left!21006 (left!21006 acc!252)))))))

(assert (=> b!2322767 (=> res!992251 e!1488565)))

(declare-fun b!2322768 () Bool)

(assert (=> b!2322768 (= e!1488565 (inv!37644 (left!21006 (left!21006 acc!252))))))

(assert (= (and d!687330 c!368485) b!2322766))

(assert (= (and d!687330 (not c!368485)) b!2322767))

(assert (= (and b!2322767 (not res!992251)) b!2322768))

(declare-fun m!2752305 () Bool)

(assert (=> b!2322766 m!2752305))

(declare-fun m!2752307 () Bool)

(assert (=> b!2322768 m!2752307))

(assert (=> b!2322640 d!687330))

(declare-fun d!687334 () Bool)

(declare-fun c!368486 () Bool)

(assert (=> d!687334 (= c!368486 ((_ is Node!9073) (right!21336 (left!21006 acc!252))))))

(declare-fun e!1488566 () Bool)

(assert (=> d!687334 (= (inv!37639 (right!21336 (left!21006 acc!252))) e!1488566)))

(declare-fun b!2322769 () Bool)

(assert (=> b!2322769 (= e!1488566 (inv!37643 (right!21336 (left!21006 acc!252))))))

(declare-fun b!2322770 () Bool)

(declare-fun e!1488567 () Bool)

(assert (=> b!2322770 (= e!1488566 e!1488567)))

(declare-fun res!992252 () Bool)

(assert (=> b!2322770 (= res!992252 (not ((_ is Leaf!13319) (right!21336 (left!21006 acc!252)))))))

(assert (=> b!2322770 (=> res!992252 e!1488567)))

(declare-fun b!2322771 () Bool)

(assert (=> b!2322771 (= e!1488567 (inv!37644 (right!21336 (left!21006 acc!252))))))

(assert (= (and d!687334 c!368486) b!2322769))

(assert (= (and d!687334 (not c!368486)) b!2322770))

(assert (= (and b!2322770 (not res!992252)) b!2322771))

(declare-fun m!2752309 () Bool)

(assert (=> b!2322769 m!2752309))

(declare-fun m!2752311 () Bool)

(assert (=> b!2322771 m!2752311))

(assert (=> b!2322640 d!687334))

(declare-fun d!687336 () Bool)

(declare-fun lt!860638 () Bool)

(assert (=> d!687336 (= lt!860638 (isEmpty!15799 (list!11013 (right!21336 acc!252))))))

(assert (=> d!687336 (= lt!860638 (= (size!21936 (right!21336 acc!252)) 0))))

(assert (=> d!687336 (= (isEmpty!15797 (right!21336 acc!252)) lt!860638)))

(declare-fun bs!459126 () Bool)

(assert (= bs!459126 d!687336))

(declare-fun m!2752313 () Bool)

(assert (=> bs!459126 m!2752313))

(assert (=> bs!459126 m!2752313))

(declare-fun m!2752315 () Bool)

(assert (=> bs!459126 m!2752315))

(assert (=> bs!459126 m!2752163))

(assert (=> b!2322435 d!687336))

(assert (=> b!2322434 d!687286))

(assert (=> b!2322434 d!687288))

(declare-fun b!2322772 () Bool)

(declare-fun e!1488568 () Bool)

(declare-fun e!1488569 () Bool)

(assert (=> b!2322772 (= e!1488568 e!1488569)))

(declare-fun res!992255 () Bool)

(assert (=> b!2322772 (=> (not res!992255) (not e!1488569))))

(assert (=> b!2322772 (= res!992255 (<= (- 1) (- (height!1331 (left!21006 lt!860609)) (height!1331 (right!21336 lt!860609)))))))

(declare-fun d!687338 () Bool)

(declare-fun res!992258 () Bool)

(assert (=> d!687338 (=> res!992258 e!1488568)))

(assert (=> d!687338 (= res!992258 (not ((_ is Node!9073) lt!860609)))))

(assert (=> d!687338 (= (isBalanced!2767 lt!860609) e!1488568)))

(declare-fun b!2322773 () Bool)

(declare-fun res!992254 () Bool)

(assert (=> b!2322773 (=> (not res!992254) (not e!1488569))))

(assert (=> b!2322773 (= res!992254 (not (isEmpty!15797 (left!21006 lt!860609))))))

(declare-fun b!2322774 () Bool)

(declare-fun res!992256 () Bool)

(assert (=> b!2322774 (=> (not res!992256) (not e!1488569))))

(assert (=> b!2322774 (= res!992256 (isBalanced!2767 (right!21336 lt!860609)))))

(declare-fun b!2322775 () Bool)

(declare-fun res!992257 () Bool)

(assert (=> b!2322775 (=> (not res!992257) (not e!1488569))))

(assert (=> b!2322775 (= res!992257 (isBalanced!2767 (left!21006 lt!860609)))))

(declare-fun b!2322776 () Bool)

(declare-fun res!992253 () Bool)

(assert (=> b!2322776 (=> (not res!992253) (not e!1488569))))

(assert (=> b!2322776 (= res!992253 (<= (- (height!1331 (left!21006 lt!860609)) (height!1331 (right!21336 lt!860609))) 1))))

(declare-fun b!2322777 () Bool)

(assert (=> b!2322777 (= e!1488569 (not (isEmpty!15797 (right!21336 lt!860609))))))

(assert (= (and d!687338 (not res!992258)) b!2322772))

(assert (= (and b!2322772 res!992255) b!2322776))

(assert (= (and b!2322776 res!992253) b!2322775))

(assert (= (and b!2322775 res!992257) b!2322774))

(assert (= (and b!2322774 res!992256) b!2322773))

(assert (= (and b!2322773 res!992254) b!2322777))

(declare-fun m!2752317 () Bool)

(assert (=> b!2322777 m!2752317))

(declare-fun m!2752319 () Bool)

(assert (=> b!2322773 m!2752319))

(declare-fun m!2752321 () Bool)

(assert (=> b!2322772 m!2752321))

(declare-fun m!2752323 () Bool)

(assert (=> b!2322772 m!2752323))

(declare-fun m!2752325 () Bool)

(assert (=> b!2322774 m!2752325))

(declare-fun m!2752327 () Bool)

(assert (=> b!2322775 m!2752327))

(assert (=> b!2322776 m!2752321))

(assert (=> b!2322776 m!2752323))

(assert (=> b!2322562 d!687338))

(declare-fun d!687340 () Bool)

(assert (=> d!687340 (= (inv!37640 (xs!12039 (left!21006 acc!252))) (<= (size!21934 (innerList!9133 (xs!12039 (left!21006 acc!252)))) 2147483647))))

(declare-fun bs!459127 () Bool)

(assert (= bs!459127 d!687340))

(declare-fun m!2752329 () Bool)

(assert (=> bs!459127 m!2752329))

(assert (=> b!2322641 d!687340))

(declare-fun d!687342 () Bool)

(declare-fun res!992261 () Bool)

(declare-fun e!1488572 () Bool)

(assert (=> d!687342 (=> (not res!992261) (not e!1488572))))

(assert (=> d!687342 (= res!992261 (= (csize!18376 (right!21336 acc!252)) (+ (size!21936 (left!21006 (right!21336 acc!252))) (size!21936 (right!21336 (right!21336 acc!252))))))))

(assert (=> d!687342 (= (inv!37643 (right!21336 acc!252)) e!1488572)))

(declare-fun b!2322780 () Bool)

(declare-fun res!992262 () Bool)

(assert (=> b!2322780 (=> (not res!992262) (not e!1488572))))

(assert (=> b!2322780 (= res!992262 (and (not (= (left!21006 (right!21336 acc!252)) Empty!9073)) (not (= (right!21336 (right!21336 acc!252)) Empty!9073))))))

(declare-fun b!2322781 () Bool)

(declare-fun res!992263 () Bool)

(assert (=> b!2322781 (=> (not res!992263) (not e!1488572))))

(assert (=> b!2322781 (= res!992263 (= (cheight!9284 (right!21336 acc!252)) (+ (max!0 (height!1331 (left!21006 (right!21336 acc!252))) (height!1331 (right!21336 (right!21336 acc!252)))) 1)))))

(declare-fun b!2322782 () Bool)

(assert (=> b!2322782 (= e!1488572 (<= 0 (cheight!9284 (right!21336 acc!252))))))

(assert (= (and d!687342 res!992261) b!2322780))

(assert (= (and b!2322780 res!992262) b!2322781))

(assert (= (and b!2322781 res!992263) b!2322782))

(declare-fun m!2752331 () Bool)

(assert (=> d!687342 m!2752331))

(declare-fun m!2752333 () Bool)

(assert (=> d!687342 m!2752333))

(assert (=> b!2322781 m!2752251))

(assert (=> b!2322781 m!2752253))

(assert (=> b!2322781 m!2752251))

(assert (=> b!2322781 m!2752253))

(declare-fun m!2752335 () Bool)

(assert (=> b!2322781 m!2752335))

(assert (=> b!2322448 d!687342))

(assert (=> b!2322566 d!687252))

(assert (=> b!2322566 d!687254))

(assert (=> b!2322566 d!687256))

(assert (=> b!2322566 d!687258))

(declare-fun d!687344 () Bool)

(declare-fun res!992266 () Bool)

(declare-fun e!1488573 () Bool)

(assert (=> d!687344 (=> (not res!992266) (not e!1488573))))

(assert (=> d!687344 (= res!992266 (<= (size!21934 (list!11011 (xs!12039 (right!21336 acc!252)))) 512))))

(assert (=> d!687344 (= (inv!37644 (right!21336 acc!252)) e!1488573)))

(declare-fun b!2322785 () Bool)

(declare-fun res!992267 () Bool)

(assert (=> b!2322785 (=> (not res!992267) (not e!1488573))))

(assert (=> b!2322785 (= res!992267 (= (csize!18377 (right!21336 acc!252)) (size!21934 (list!11011 (xs!12039 (right!21336 acc!252))))))))

(declare-fun b!2322786 () Bool)

(assert (=> b!2322786 (= e!1488573 (and (> (csize!18377 (right!21336 acc!252)) 0) (<= (csize!18377 (right!21336 acc!252)) 512)))))

(assert (= (and d!687344 res!992266) b!2322785))

(assert (= (and b!2322785 res!992267) b!2322786))

(declare-fun m!2752337 () Bool)

(assert (=> d!687344 m!2752337))

(assert (=> d!687344 m!2752337))

(declare-fun m!2752339 () Bool)

(assert (=> d!687344 m!2752339))

(assert (=> b!2322785 m!2752337))

(assert (=> b!2322785 m!2752337))

(assert (=> b!2322785 m!2752339))

(assert (=> b!2322450 d!687344))

(declare-fun d!687346 () Bool)

(declare-fun take!484 (List!27766 Int) List!27766)

(declare-fun drop!1507 (List!27766 Int) List!27766)

(assert (=> d!687346 (= (slice!701 (list!11011 arr!18) 0 512) (take!484 (drop!1507 (list!11011 arr!18) 0) (- 512 0)))))

(declare-fun bs!459128 () Bool)

(assert (= bs!459128 d!687346))

(assert (=> bs!459128 m!2751933))

(declare-fun m!2752345 () Bool)

(assert (=> bs!459128 m!2752345))

(assert (=> bs!459128 m!2752345))

(declare-fun m!2752347 () Bool)

(assert (=> bs!459128 m!2752347))

(assert (=> d!687248 d!687346))

(assert (=> d!687248 d!687274))

(declare-fun d!687350 () Bool)

(declare-fun _$4!1111 () IArray!18151)

(assert (=> d!687350 (= _$4!1111 (IArray!18152 (slice!701 (list!11011 arr!18) 0 512)))))

(declare-fun e!1488581 () Bool)

(assert (=> d!687350 (and (inv!37640 _$4!1111) e!1488581)))

(assert (=> d!687350 (= (choose!13600 arr!18 0 512) _$4!1111)))

(declare-fun b!2322801 () Bool)

(declare-fun tp!736806 () Bool)

(assert (=> b!2322801 (= e!1488581 tp!736806)))

(assert (= d!687350 b!2322801))

(assert (=> d!687350 m!2751933))

(assert (=> d!687350 m!2751933))

(assert (=> d!687350 m!2752107))

(declare-fun m!2752365 () Bool)

(assert (=> d!687350 m!2752365))

(assert (=> d!687248 d!687350))

(declare-fun b!2322858 () Bool)

(declare-fun e!1488622 () Bool)

(declare-fun appendAssoc!157 (List!27766 List!27766 List!27766) Bool)

(assert (=> b!2322858 (= e!1488622 (appendAssoc!157 (++!6824 (list!11013 acc!252) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))) (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2322859 () Bool)

(declare-fun e!1488619 () Bool)

(assert (=> b!2322859 (= e!1488619 e!1488622)))

(declare-fun res!992304 () Bool)

(assert (=> b!2322859 (=> (not res!992304) (not e!1488622))))

(assert (=> b!2322859 (= res!992304 (appendAssoc!157 (list!11013 acc!252) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))) (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2322860 () Bool)

(declare-fun e!1488625 () Bool)

(declare-fun e!1488623 () Bool)

(assert (=> b!2322860 (= e!1488625 e!1488623)))

(declare-fun res!992303 () Bool)

(assert (=> b!2322860 (=> (not res!992303) (not e!1488623))))

(assert (=> b!2322860 (= res!992303 (appendAssoc!157 (list!11013 acc!252) (list!11013 (left!21006 (Leaf!13319 lt!860576 512))) (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2322861 () Bool)

(declare-fun e!1488621 () Bool)

(assert (=> b!2322861 (= e!1488621 (appendAssoc!157 (list!11013 (left!21006 acc!252)) (list!11013 (left!21006 (right!21336 acc!252))) (++!6824 (list!11013 (right!21336 (right!21336 acc!252))) (list!11013 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2322862 () Bool)

(assert (=> b!2322862 (= e!1488623 e!1488619)))

(declare-fun res!992302 () Bool)

(assert (=> b!2322862 (=> res!992302 e!1488619)))

(assert (=> b!2322862 (= res!992302 (not ((_ is Node!9073) (left!21006 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2322863 () Bool)

(declare-fun e!1488624 () Bool)

(assert (=> b!2322863 (= e!1488624 e!1488621)))

(declare-fun res!992306 () Bool)

(assert (=> b!2322863 (=> (not res!992306) (not e!1488621))))

(assert (=> b!2322863 (= res!992306 (appendAssoc!157 (list!11013 (left!21006 (right!21336 acc!252))) (list!11013 (right!21336 (right!21336 acc!252))) (list!11013 (Leaf!13319 lt!860576 512))))))

(declare-fun d!687364 () Bool)

(declare-fun e!1488626 () Bool)

(assert (=> d!687364 e!1488626))

(declare-fun res!992307 () Bool)

(assert (=> d!687364 (=> (not res!992307) (not e!1488626))))

(declare-fun e!1488620 () Bool)

(assert (=> d!687364 (= res!992307 e!1488620)))

(declare-fun res!992309 () Bool)

(assert (=> d!687364 (=> res!992309 e!1488620)))

(assert (=> d!687364 (= res!992309 (not ((_ is Node!9073) acc!252)))))

(assert (=> d!687364 (= (appendAssocInst!608 acc!252 (Leaf!13319 lt!860576 512)) true)))

(declare-fun b!2322864 () Bool)

(declare-fun e!1488618 () Bool)

(assert (=> b!2322864 (= e!1488620 e!1488618)))

(declare-fun res!992308 () Bool)

(assert (=> b!2322864 (=> (not res!992308) (not e!1488618))))

(assert (=> b!2322864 (= res!992308 (appendAssoc!157 (list!11013 (left!21006 acc!252)) (list!11013 (right!21336 acc!252)) (list!11013 (Leaf!13319 lt!860576 512))))))

(declare-fun b!2322865 () Bool)

(assert (=> b!2322865 (= e!1488618 e!1488624)))

(declare-fun res!992305 () Bool)

(assert (=> b!2322865 (=> res!992305 e!1488624)))

(assert (=> b!2322865 (= res!992305 (not ((_ is Node!9073) (right!21336 acc!252))))))

(declare-fun b!2322866 () Bool)

(assert (=> b!2322866 (= e!1488626 e!1488625)))

(declare-fun res!992310 () Bool)

(assert (=> b!2322866 (=> res!992310 e!1488625)))

(assert (=> b!2322866 (= res!992310 (not ((_ is Node!9073) (Leaf!13319 lt!860576 512))))))

(assert (= (and d!687364 (not res!992309)) b!2322864))

(assert (= (and b!2322864 res!992308) b!2322865))

(assert (= (and b!2322865 (not res!992305)) b!2322863))

(assert (= (and b!2322863 res!992306) b!2322861))

(assert (= (and d!687364 res!992307) b!2322866))

(assert (= (and b!2322866 (not res!992310)) b!2322860))

(assert (= (and b!2322860 res!992303) b!2322862))

(assert (= (and b!2322862 (not res!992302)) b!2322859))

(assert (= (and b!2322859 res!992304) b!2322858))

(assert (=> b!2322860 m!2752061))

(declare-fun m!2752439 () Bool)

(assert (=> b!2322860 m!2752439))

(declare-fun m!2752441 () Bool)

(assert (=> b!2322860 m!2752441))

(assert (=> b!2322860 m!2752061))

(assert (=> b!2322860 m!2752439))

(assert (=> b!2322860 m!2752441))

(declare-fun m!2752443 () Bool)

(assert (=> b!2322860 m!2752443))

(assert (=> b!2322859 m!2752061))

(declare-fun m!2752445 () Bool)

(assert (=> b!2322859 m!2752445))

(declare-fun m!2752447 () Bool)

(assert (=> b!2322859 m!2752447))

(assert (=> b!2322859 m!2752061))

(assert (=> b!2322859 m!2752445))

(assert (=> b!2322859 m!2752447))

(declare-fun m!2752449 () Bool)

(assert (=> b!2322859 m!2752449))

(assert (=> b!2322864 m!2752189))

(assert (=> b!2322864 m!2752313))

(assert (=> b!2322864 m!2752063))

(assert (=> b!2322864 m!2752189))

(assert (=> b!2322864 m!2752313))

(assert (=> b!2322864 m!2752063))

(declare-fun m!2752451 () Bool)

(assert (=> b!2322864 m!2752451))

(declare-fun m!2752453 () Bool)

(assert (=> b!2322863 m!2752453))

(declare-fun m!2752455 () Bool)

(assert (=> b!2322863 m!2752455))

(assert (=> b!2322863 m!2752063))

(assert (=> b!2322863 m!2752453))

(assert (=> b!2322863 m!2752455))

(assert (=> b!2322863 m!2752063))

(declare-fun m!2752463 () Bool)

(assert (=> b!2322863 m!2752463))

(assert (=> b!2322861 m!2752189))

(assert (=> b!2322861 m!2752455))

(assert (=> b!2322861 m!2752455))

(assert (=> b!2322861 m!2752063))

(declare-fun m!2752469 () Bool)

(assert (=> b!2322861 m!2752469))

(assert (=> b!2322861 m!2752453))

(assert (=> b!2322861 m!2752063))

(assert (=> b!2322861 m!2752189))

(assert (=> b!2322861 m!2752453))

(assert (=> b!2322861 m!2752469))

(declare-fun m!2752479 () Bool)

(assert (=> b!2322861 m!2752479))

(assert (=> b!2322858 m!2752061))

(assert (=> b!2322858 m!2752445))

(declare-fun m!2752481 () Bool)

(assert (=> b!2322858 m!2752481))

(assert (=> b!2322858 m!2752481))

(assert (=> b!2322858 m!2752447))

(assert (=> b!2322858 m!2752441))

(declare-fun m!2752483 () Bool)

(assert (=> b!2322858 m!2752483))

(assert (=> b!2322858 m!2752445))

(assert (=> b!2322858 m!2752447))

(assert (=> b!2322858 m!2752441))

(assert (=> b!2322858 m!2752061))

(assert (=> d!687234 d!687364))

(assert (=> d!687234 d!687212))

(declare-fun b!2322883 () Bool)

(declare-fun e!1488636 () List!27766)

(assert (=> b!2322883 (= e!1488636 Nil!27668)))

(declare-fun b!2322885 () Bool)

(declare-fun e!1488637 () List!27766)

(assert (=> b!2322885 (= e!1488637 (list!11011 (xs!12039 lt!860609)))))

(declare-fun b!2322886 () Bool)

(assert (=> b!2322886 (= e!1488637 (++!6824 (list!11013 (left!21006 lt!860609)) (list!11013 (right!21336 lt!860609))))))

(declare-fun b!2322884 () Bool)

(assert (=> b!2322884 (= e!1488636 e!1488637)))

(declare-fun c!368511 () Bool)

(assert (=> b!2322884 (= c!368511 ((_ is Leaf!13319) lt!860609))))

(declare-fun d!687390 () Bool)

(declare-fun c!368510 () Bool)

(assert (=> d!687390 (= c!368510 ((_ is Empty!9073) lt!860609))))

(assert (=> d!687390 (= (list!11013 lt!860609) e!1488636)))

(assert (= (and d!687390 c!368510) b!2322883))

(assert (= (and d!687390 (not c!368510)) b!2322884))

(assert (= (and b!2322884 c!368511) b!2322885))

(assert (= (and b!2322884 (not c!368511)) b!2322886))

(declare-fun m!2752489 () Bool)

(assert (=> b!2322885 m!2752489))

(declare-fun m!2752491 () Bool)

(assert (=> b!2322886 m!2752491))

(declare-fun m!2752493 () Bool)

(assert (=> b!2322886 m!2752493))

(assert (=> b!2322886 m!2752491))

(assert (=> b!2322886 m!2752493))

(declare-fun m!2752495 () Bool)

(assert (=> b!2322886 m!2752495))

(assert (=> b!2322556 d!687390))

(declare-fun b!2322906 () Bool)

(declare-fun res!992317 () Bool)

(declare-fun e!1488647 () Bool)

(assert (=> b!2322906 (=> (not res!992317) (not e!1488647))))

(declare-fun lt!860652 () List!27766)

(assert (=> b!2322906 (= res!992317 (= (size!21934 lt!860652) (+ (size!21934 (list!11013 acc!252)) (size!21934 (list!11013 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2322904 () Bool)

(declare-fun e!1488648 () List!27766)

(assert (=> b!2322904 (= e!1488648 (list!11013 (Leaf!13319 lt!860576 512)))))

(declare-fun b!2322905 () Bool)

(assert (=> b!2322905 (= e!1488648 (Cons!27668 (h!33069 (list!11013 acc!252)) (++!6824 (t!207446 (list!11013 acc!252)) (list!11013 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2322907 () Bool)

(assert (=> b!2322907 (= e!1488647 (or (not (= (list!11013 (Leaf!13319 lt!860576 512)) Nil!27668)) (= lt!860652 (list!11013 acc!252))))))

(declare-fun d!687394 () Bool)

(assert (=> d!687394 e!1488647))

(declare-fun res!992318 () Bool)

(assert (=> d!687394 (=> (not res!992318) (not e!1488647))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3744 (List!27766) (InoxSet T!43908))

(assert (=> d!687394 (= res!992318 (= (content!3744 lt!860652) ((_ map or) (content!3744 (list!11013 acc!252)) (content!3744 (list!11013 (Leaf!13319 lt!860576 512))))))))

(assert (=> d!687394 (= lt!860652 e!1488648)))

(declare-fun c!368518 () Bool)

(assert (=> d!687394 (= c!368518 ((_ is Nil!27668) (list!11013 acc!252)))))

(assert (=> d!687394 (= (++!6824 (list!11013 acc!252) (list!11013 (Leaf!13319 lt!860576 512))) lt!860652)))

(assert (= (and d!687394 c!368518) b!2322904))

(assert (= (and d!687394 (not c!368518)) b!2322905))

(assert (= (and d!687394 res!992318) b!2322906))

(assert (= (and b!2322906 res!992317) b!2322907))

(declare-fun m!2752499 () Bool)

(assert (=> b!2322906 m!2752499))

(assert (=> b!2322906 m!2752061))

(declare-fun m!2752501 () Bool)

(assert (=> b!2322906 m!2752501))

(assert (=> b!2322906 m!2752063))

(declare-fun m!2752503 () Bool)

(assert (=> b!2322906 m!2752503))

(assert (=> b!2322905 m!2752063))

(declare-fun m!2752505 () Bool)

(assert (=> b!2322905 m!2752505))

(declare-fun m!2752507 () Bool)

(assert (=> d!687394 m!2752507))

(assert (=> d!687394 m!2752061))

(declare-fun m!2752509 () Bool)

(assert (=> d!687394 m!2752509))

(assert (=> d!687394 m!2752063))

(declare-fun m!2752511 () Bool)

(assert (=> d!687394 m!2752511))

(assert (=> b!2322556 d!687394))

(declare-fun b!2322912 () Bool)

(declare-fun e!1488651 () List!27766)

(assert (=> b!2322912 (= e!1488651 Nil!27668)))

(declare-fun b!2322914 () Bool)

(declare-fun e!1488652 () List!27766)

(assert (=> b!2322914 (= e!1488652 (list!11011 (xs!12039 acc!252)))))

(declare-fun b!2322915 () Bool)

(assert (=> b!2322915 (= e!1488652 (++!6824 (list!11013 (left!21006 acc!252)) (list!11013 (right!21336 acc!252))))))

(declare-fun b!2322913 () Bool)

(assert (=> b!2322913 (= e!1488651 e!1488652)))

(declare-fun c!368522 () Bool)

(assert (=> b!2322913 (= c!368522 ((_ is Leaf!13319) acc!252))))

(declare-fun d!687398 () Bool)

(declare-fun c!368521 () Bool)

(assert (=> d!687398 (= c!368521 ((_ is Empty!9073) acc!252))))

(assert (=> d!687398 (= (list!11013 acc!252) e!1488651)))

(assert (= (and d!687398 c!368521) b!2322912))

(assert (= (and d!687398 (not c!368521)) b!2322913))

(assert (= (and b!2322913 c!368522) b!2322914))

(assert (= (and b!2322913 (not c!368522)) b!2322915))

(assert (=> b!2322914 m!2752193))

(assert (=> b!2322915 m!2752189))

(assert (=> b!2322915 m!2752313))

(assert (=> b!2322915 m!2752189))

(assert (=> b!2322915 m!2752313))

(declare-fun m!2752515 () Bool)

(assert (=> b!2322915 m!2752515))

(assert (=> b!2322556 d!687398))

(declare-fun b!2322916 () Bool)

(declare-fun e!1488653 () List!27766)

(assert (=> b!2322916 (= e!1488653 Nil!27668)))

(declare-fun b!2322918 () Bool)

(declare-fun e!1488654 () List!27766)

(assert (=> b!2322918 (= e!1488654 (list!11011 (xs!12039 (Leaf!13319 lt!860576 512))))))

(declare-fun b!2322919 () Bool)

(assert (=> b!2322919 (= e!1488654 (++!6824 (list!11013 (left!21006 (Leaf!13319 lt!860576 512))) (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2322917 () Bool)

(assert (=> b!2322917 (= e!1488653 e!1488654)))

(declare-fun c!368524 () Bool)

(assert (=> b!2322917 (= c!368524 ((_ is Leaf!13319) (Leaf!13319 lt!860576 512)))))

(declare-fun d!687400 () Bool)

(declare-fun c!368523 () Bool)

(assert (=> d!687400 (= c!368523 ((_ is Empty!9073) (Leaf!13319 lt!860576 512)))))

(assert (=> d!687400 (= (list!11013 (Leaf!13319 lt!860576 512)) e!1488653)))

(assert (= (and d!687400 c!368523) b!2322916))

(assert (= (and d!687400 (not c!368523)) b!2322917))

(assert (= (and b!2322917 c!368524) b!2322918))

(assert (= (and b!2322917 (not c!368524)) b!2322919))

(declare-fun m!2752523 () Bool)

(assert (=> b!2322918 m!2752523))

(assert (=> b!2322919 m!2752439))

(assert (=> b!2322919 m!2752441))

(assert (=> b!2322919 m!2752439))

(assert (=> b!2322919 m!2752441))

(declare-fun m!2752525 () Bool)

(assert (=> b!2322919 m!2752525))

(assert (=> b!2322556 d!687400))

(declare-fun d!687404 () Bool)

(assert (=> d!687404 (= (slice!701 (list!11011 arr!18) 512 lt!860575) (take!484 (drop!1507 (list!11011 arr!18) 512) (- lt!860575 512)))))

(declare-fun bs!459131 () Bool)

(assert (= bs!459131 d!687404))

(assert (=> bs!459131 m!2751933))

(declare-fun m!2752527 () Bool)

(assert (=> bs!459131 m!2752527))

(assert (=> bs!459131 m!2752527))

(declare-fun m!2752529 () Bool)

(assert (=> bs!459131 m!2752529))

(assert (=> d!687242 d!687404))

(assert (=> d!687242 d!687274))

(declare-fun d!687406 () Bool)

(declare-fun _$4!1115 () IArray!18151)

(assert (=> d!687406 (= _$4!1115 (IArray!18152 (slice!701 (list!11011 arr!18) 512 lt!860575)))))

(declare-fun e!1488655 () Bool)

(assert (=> d!687406 (and (inv!37640 _$4!1115) e!1488655)))

(assert (=> d!687406 (= (choose!13600 arr!18 512 lt!860575) _$4!1115)))

(declare-fun b!2322920 () Bool)

(declare-fun tp!736810 () Bool)

(assert (=> b!2322920 (= e!1488655 tp!736810)))

(assert (= d!687406 b!2322920))

(assert (=> d!687406 m!2751933))

(assert (=> d!687406 m!2751933))

(assert (=> d!687406 m!2752103))

(declare-fun m!2752531 () Bool)

(assert (=> d!687406 m!2752531))

(assert (=> d!687242 d!687406))

(declare-fun b!2322921 () Bool)

(declare-fun e!1488656 () Bool)

(declare-fun tp!736811 () Bool)

(assert (=> b!2322921 (= e!1488656 (and tp_is_empty!10829 tp!736811))))

(assert (=> b!2322630 (= tp!736790 e!1488656)))

(assert (= (and b!2322630 ((_ is Cons!27668) (t!207446 (innerList!9133 (xs!12039 acc!252))))) b!2322921))

(declare-fun e!1488658 () Bool)

(declare-fun tp!736812 () Bool)

(declare-fun b!2322922 () Bool)

(declare-fun tp!736813 () Bool)

(assert (=> b!2322922 (= e!1488658 (and (inv!37639 (left!21006 (left!21006 (left!21006 acc!252)))) tp!736812 (inv!37639 (right!21336 (left!21006 (left!21006 acc!252)))) tp!736813))))

(declare-fun b!2322924 () Bool)

(declare-fun e!1488657 () Bool)

(declare-fun tp!736814 () Bool)

(assert (=> b!2322924 (= e!1488657 tp!736814)))

(declare-fun b!2322923 () Bool)

(assert (=> b!2322923 (= e!1488658 (and (inv!37640 (xs!12039 (left!21006 (left!21006 acc!252)))) e!1488657))))

(assert (=> b!2322640 (= tp!736798 (and (inv!37639 (left!21006 (left!21006 acc!252))) e!1488658))))

(assert (= (and b!2322640 ((_ is Node!9073) (left!21006 (left!21006 acc!252)))) b!2322922))

(assert (= b!2322923 b!2322924))

(assert (= (and b!2322640 ((_ is Leaf!13319) (left!21006 (left!21006 acc!252)))) b!2322923))

(declare-fun m!2752533 () Bool)

(assert (=> b!2322922 m!2752533))

(declare-fun m!2752535 () Bool)

(assert (=> b!2322922 m!2752535))

(declare-fun m!2752537 () Bool)

(assert (=> b!2322923 m!2752537))

(assert (=> b!2322640 m!2752111))

(declare-fun b!2322925 () Bool)

(declare-fun e!1488660 () Bool)

(declare-fun tp!736816 () Bool)

(declare-fun tp!736815 () Bool)

(assert (=> b!2322925 (= e!1488660 (and (inv!37639 (left!21006 (right!21336 (left!21006 acc!252)))) tp!736815 (inv!37639 (right!21336 (right!21336 (left!21006 acc!252)))) tp!736816))))

(declare-fun b!2322927 () Bool)

(declare-fun e!1488659 () Bool)

(declare-fun tp!736817 () Bool)

(assert (=> b!2322927 (= e!1488659 tp!736817)))

(declare-fun b!2322926 () Bool)

(assert (=> b!2322926 (= e!1488660 (and (inv!37640 (xs!12039 (right!21336 (left!21006 acc!252)))) e!1488659))))

(assert (=> b!2322640 (= tp!736799 (and (inv!37639 (right!21336 (left!21006 acc!252))) e!1488660))))

(assert (= (and b!2322640 ((_ is Node!9073) (right!21336 (left!21006 acc!252)))) b!2322925))

(assert (= b!2322926 b!2322927))

(assert (= (and b!2322640 ((_ is Leaf!13319) (right!21336 (left!21006 acc!252)))) b!2322926))

(declare-fun m!2752539 () Bool)

(assert (=> b!2322925 m!2752539))

(declare-fun m!2752541 () Bool)

(assert (=> b!2322925 m!2752541))

(declare-fun m!2752543 () Bool)

(assert (=> b!2322926 m!2752543))

(assert (=> b!2322640 m!2752113))

(declare-fun b!2322928 () Bool)

(declare-fun e!1488661 () Bool)

(declare-fun tp!736818 () Bool)

(assert (=> b!2322928 (= e!1488661 (and tp_is_empty!10829 tp!736818))))

(assert (=> b!2322645 (= tp!736803 e!1488661)))

(assert (= (and b!2322645 ((_ is Cons!27668) (innerList!9133 (xs!12039 (right!21336 acc!252))))) b!2322928))

(declare-fun b!2322929 () Bool)

(declare-fun e!1488662 () Bool)

(declare-fun tp!736819 () Bool)

(assert (=> b!2322929 (= e!1488662 (and tp_is_empty!10829 tp!736819))))

(assert (=> b!2322631 (= tp!736791 e!1488662)))

(assert (= (and b!2322631 ((_ is Cons!27668) (t!207446 (innerList!9133 arr!18)))) b!2322929))

(declare-fun tp!736820 () Bool)

(declare-fun b!2322930 () Bool)

(declare-fun tp!736821 () Bool)

(declare-fun e!1488664 () Bool)

(assert (=> b!2322930 (= e!1488664 (and (inv!37639 (left!21006 (left!21006 (right!21336 acc!252)))) tp!736820 (inv!37639 (right!21336 (left!21006 (right!21336 acc!252)))) tp!736821))))

(declare-fun b!2322932 () Bool)

(declare-fun e!1488663 () Bool)

(declare-fun tp!736822 () Bool)

(assert (=> b!2322932 (= e!1488663 tp!736822)))

(declare-fun b!2322931 () Bool)

(assert (=> b!2322931 (= e!1488664 (and (inv!37640 (xs!12039 (left!21006 (right!21336 acc!252)))) e!1488663))))

(assert (=> b!2322643 (= tp!736801 (and (inv!37639 (left!21006 (right!21336 acc!252))) e!1488664))))

(assert (= (and b!2322643 ((_ is Node!9073) (left!21006 (right!21336 acc!252)))) b!2322930))

(assert (= b!2322931 b!2322932))

(assert (= (and b!2322643 ((_ is Leaf!13319) (left!21006 (right!21336 acc!252)))) b!2322931))

(declare-fun m!2752545 () Bool)

(assert (=> b!2322930 m!2752545))

(declare-fun m!2752547 () Bool)

(assert (=> b!2322930 m!2752547))

(declare-fun m!2752549 () Bool)

(assert (=> b!2322931 m!2752549))

(assert (=> b!2322643 m!2752117))

(declare-fun e!1488666 () Bool)

(declare-fun tp!736824 () Bool)

(declare-fun b!2322933 () Bool)

(declare-fun tp!736823 () Bool)

(assert (=> b!2322933 (= e!1488666 (and (inv!37639 (left!21006 (right!21336 (right!21336 acc!252)))) tp!736823 (inv!37639 (right!21336 (right!21336 (right!21336 acc!252)))) tp!736824))))

(declare-fun b!2322935 () Bool)

(declare-fun e!1488665 () Bool)

(declare-fun tp!736825 () Bool)

(assert (=> b!2322935 (= e!1488665 tp!736825)))

(declare-fun b!2322934 () Bool)

(assert (=> b!2322934 (= e!1488666 (and (inv!37640 (xs!12039 (right!21336 (right!21336 acc!252)))) e!1488665))))

(assert (=> b!2322643 (= tp!736802 (and (inv!37639 (right!21336 (right!21336 acc!252))) e!1488666))))

(assert (= (and b!2322643 ((_ is Node!9073) (right!21336 (right!21336 acc!252)))) b!2322933))

(assert (= b!2322934 b!2322935))

(assert (= (and b!2322643 ((_ is Leaf!13319) (right!21336 (right!21336 acc!252)))) b!2322934))

(declare-fun m!2752551 () Bool)

(assert (=> b!2322933 m!2752551))

(declare-fun m!2752553 () Bool)

(assert (=> b!2322933 m!2752553))

(declare-fun m!2752555 () Bool)

(assert (=> b!2322934 m!2752555))

(assert (=> b!2322643 m!2752119))

(declare-fun b!2322936 () Bool)

(declare-fun e!1488667 () Bool)

(declare-fun tp!736826 () Bool)

(assert (=> b!2322936 (= e!1488667 (and tp_is_empty!10829 tp!736826))))

(assert (=> b!2322642 (= tp!736800 e!1488667)))

(assert (= (and b!2322642 ((_ is Cons!27668) (innerList!9133 (xs!12039 (left!21006 acc!252))))) b!2322936))

(check-sat (not bm!138511) (not b!2322677) (not b!2322785) (not b!2322777) (not b!2322732) (not b!2322739) (not b!2322656) (not d!687276) (not b!2322905) (not d!687292) (not b!2322723) (not b!2322652) (not b!2322735) (not b!2322924) (not b!2322690) (not bm!138502) (not d!687344) (not d!687312) (not b!2322682) (not d!687346) (not d!687342) (not b!2322740) (not d!687260) (not b!2322932) (not b!2322801) (not d!687316) (not b!2322660) (not d!687404) (not b!2322918) (not b!2322931) (not b!2322743) (not b!2322741) (not b!2322766) (not b!2322781) (not d!687290) (not b!2322928) (not b!2322674) (not b!2322765) (not b!2322666) (not b!2322885) (not b!2322915) (not b!2322771) (not d!687250) (not b!2322734) (not b!2322922) (not d!687394) (not b!2322930) (not d!687282) (not b!2322927) (not b!2322728) (not b!2322864) (not b!2322724) (not d!687262) (not b!2322726) (not b!2322679) (not b!2322738) (not b!2322933) (not b!2322934) (not b!2322692) (not d!687302) (not b!2322863) (not b!2322684) (not bm!138505) (not b!2322929) (not bm!138509) (not b!2322725) (not b!2322640) (not b!2322776) (not b!2322665) (not d!687350) (not b!2322859) (not b!2322736) (not b!2322920) (not b!2322646) (not b!2322718) (not b!2322733) (not b!2322731) (not b!2322861) (not b!2322914) tp_is_empty!10829 (not b!2322919) (not b!2322935) (not b!2322768) (not bm!138512) (not b!2322772) (not d!687406) (not b!2322906) (not b!2322936) (not b!2322774) (not b!2322773) (not b!2322643) (not b!2322921) (not d!687278) (not b!2322742) (not bm!138510) (not bm!138504) (not d!687336) (not b!2322751) (not b!2322699) (not b!2322681) (not b!2322744) (not b!2322697) (not b!2322769) (not b!2322923) (not b!2322925) (not b!2322858) (not b!2322886) (not b!2322775) (not b!2322860) (not b!2322727) (not b!2322926) (not d!687340))
(check-sat)
(get-model)

(declare-fun d!687442 () Bool)

(assert (=> d!687442 (= (height!1331 (left!21006 (Leaf!13319 lt!860576 512))) (ite ((_ is Empty!9073) (left!21006 (Leaf!13319 lt!860576 512))) 0 (ite ((_ is Leaf!13319) (left!21006 (Leaf!13319 lt!860576 512))) 1 (cheight!9284 (left!21006 (Leaf!13319 lt!860576 512))))))))

(assert (=> b!2322723 d!687442))

(declare-fun d!687444 () Bool)

(assert (=> d!687444 (= (height!1331 (right!21336 (Leaf!13319 lt!860576 512))) (ite ((_ is Empty!9073) (right!21336 (Leaf!13319 lt!860576 512))) 0 (ite ((_ is Leaf!13319) (right!21336 (Leaf!13319 lt!860576 512))) 1 (cheight!9284 (right!21336 (Leaf!13319 lt!860576 512))))))))

(assert (=> b!2322723 d!687444))

(declare-fun d!687446 () Bool)

(declare-fun lt!860660 () Int)

(assert (=> d!687446 (>= lt!860660 0)))

(declare-fun e!1488728 () Int)

(assert (=> d!687446 (= lt!860660 e!1488728)))

(declare-fun c!368534 () Bool)

(assert (=> d!687446 (= c!368534 ((_ is Nil!27668) (t!207446 (list!11011 arr!18))))))

(assert (=> d!687446 (= (size!21934 (t!207446 (list!11011 arr!18))) lt!860660)))

(declare-fun b!2323024 () Bool)

(assert (=> b!2323024 (= e!1488728 0)))

(declare-fun b!2323025 () Bool)

(assert (=> b!2323025 (= e!1488728 (+ 1 (size!21934 (t!207446 (t!207446 (list!11011 arr!18))))))))

(assert (= (and d!687446 c!368534) b!2323024))

(assert (= (and d!687446 (not c!368534)) b!2323025))

(declare-fun m!2752683 () Bool)

(assert (=> b!2323025 m!2752683))

(assert (=> b!2322692 d!687446))

(assert (=> b!2322643 d!687264))

(assert (=> b!2322643 d!687266))

(declare-fun bm!138538 () Bool)

(declare-fun call!138544 () List!27766)

(assert (=> bm!138538 (= call!138544 (++!6824 (list!11013 (left!21006 acc!252)) (list!11013 (right!21336 acc!252))))))

(declare-fun d!687448 () Bool)

(declare-fun e!1488731 () Bool)

(assert (=> d!687448 e!1488731))

(declare-fun c!368537 () Bool)

(assert (=> d!687448 (= c!368537 ((_ is Nil!27668) (list!11013 (left!21006 acc!252))))))

(assert (=> d!687448 (= (appendAssoc!157 (list!11013 (left!21006 acc!252)) (list!11013 (right!21336 acc!252)) (list!11013 (Leaf!13319 lt!860576 512))) true)))

(declare-fun b!2323030 () Bool)

(declare-fun call!138543 () List!27766)

(declare-fun call!138545 () List!27766)

(assert (=> b!2323030 (= e!1488731 (= call!138543 call!138545))))

(declare-fun bm!138539 () Bool)

(declare-fun call!138546 () List!27766)

(assert (=> bm!138539 (= call!138546 (++!6824 (list!11013 (right!21336 acc!252)) (list!11013 (Leaf!13319 lt!860576 512))))))

(declare-fun b!2323031 () Bool)

(assert (=> b!2323031 (= e!1488731 (= call!138543 call!138545))))

(declare-fun lt!860663 () Bool)

(assert (=> b!2323031 (= lt!860663 (appendAssoc!157 (t!207446 (list!11013 (left!21006 acc!252))) (list!11013 (right!21336 acc!252)) (list!11013 (Leaf!13319 lt!860576 512))))))

(declare-fun bm!138540 () Bool)

(assert (=> bm!138540 (= call!138543 (++!6824 call!138544 (list!11013 (Leaf!13319 lt!860576 512))))))

(declare-fun bm!138541 () Bool)

(assert (=> bm!138541 (= call!138545 (++!6824 (list!11013 (left!21006 acc!252)) call!138546))))

(assert (= (and d!687448 c!368537) b!2323030))

(assert (= (and d!687448 (not c!368537)) b!2323031))

(assert (= (or b!2323030 b!2323031) bm!138539))

(assert (= (or b!2323030 b!2323031) bm!138538))

(assert (= (or b!2323030 b!2323031) bm!138541))

(assert (= (or b!2323030 b!2323031) bm!138540))

(assert (=> b!2323031 m!2752313))

(assert (=> b!2323031 m!2752063))

(declare-fun m!2752685 () Bool)

(assert (=> b!2323031 m!2752685))

(assert (=> bm!138540 m!2752063))

(declare-fun m!2752687 () Bool)

(assert (=> bm!138540 m!2752687))

(assert (=> bm!138541 m!2752189))

(declare-fun m!2752689 () Bool)

(assert (=> bm!138541 m!2752689))

(assert (=> bm!138538 m!2752189))

(assert (=> bm!138538 m!2752313))

(assert (=> bm!138538 m!2752515))

(assert (=> bm!138539 m!2752313))

(assert (=> bm!138539 m!2752063))

(declare-fun m!2752691 () Bool)

(assert (=> bm!138539 m!2752691))

(assert (=> b!2322864 d!687448))

(declare-fun b!2323032 () Bool)

(declare-fun e!1488732 () List!27766)

(assert (=> b!2323032 (= e!1488732 Nil!27668)))

(declare-fun b!2323034 () Bool)

(declare-fun e!1488733 () List!27766)

(assert (=> b!2323034 (= e!1488733 (list!11011 (xs!12039 (left!21006 acc!252))))))

(declare-fun b!2323035 () Bool)

(assert (=> b!2323035 (= e!1488733 (++!6824 (list!11013 (left!21006 (left!21006 acc!252))) (list!11013 (right!21336 (left!21006 acc!252)))))))

(declare-fun b!2323033 () Bool)

(assert (=> b!2323033 (= e!1488732 e!1488733)))

(declare-fun c!368539 () Bool)

(assert (=> b!2323033 (= c!368539 ((_ is Leaf!13319) (left!21006 acc!252)))))

(declare-fun d!687450 () Bool)

(declare-fun c!368538 () Bool)

(assert (=> d!687450 (= c!368538 ((_ is Empty!9073) (left!21006 acc!252)))))

(assert (=> d!687450 (= (list!11013 (left!21006 acc!252)) e!1488732)))

(assert (= (and d!687450 c!368538) b!2323032))

(assert (= (and d!687450 (not c!368538)) b!2323033))

(assert (= (and b!2323033 c!368539) b!2323034))

(assert (= (and b!2323033 (not c!368539)) b!2323035))

(assert (=> b!2323034 m!2752197))

(declare-fun m!2752693 () Bool)

(assert (=> b!2323035 m!2752693))

(declare-fun m!2752695 () Bool)

(assert (=> b!2323035 m!2752695))

(assert (=> b!2323035 m!2752693))

(assert (=> b!2323035 m!2752695))

(declare-fun m!2752697 () Bool)

(assert (=> b!2323035 m!2752697))

(assert (=> b!2322864 d!687450))

(declare-fun b!2323036 () Bool)

(declare-fun e!1488734 () List!27766)

(assert (=> b!2323036 (= e!1488734 Nil!27668)))

(declare-fun b!2323038 () Bool)

(declare-fun e!1488735 () List!27766)

(assert (=> b!2323038 (= e!1488735 (list!11011 (xs!12039 (right!21336 acc!252))))))

(declare-fun b!2323039 () Bool)

(assert (=> b!2323039 (= e!1488735 (++!6824 (list!11013 (left!21006 (right!21336 acc!252))) (list!11013 (right!21336 (right!21336 acc!252)))))))

(declare-fun b!2323037 () Bool)

(assert (=> b!2323037 (= e!1488734 e!1488735)))

(declare-fun c!368541 () Bool)

(assert (=> b!2323037 (= c!368541 ((_ is Leaf!13319) (right!21336 acc!252)))))

(declare-fun d!687452 () Bool)

(declare-fun c!368540 () Bool)

(assert (=> d!687452 (= c!368540 ((_ is Empty!9073) (right!21336 acc!252)))))

(assert (=> d!687452 (= (list!11013 (right!21336 acc!252)) e!1488734)))

(assert (= (and d!687452 c!368540) b!2323036))

(assert (= (and d!687452 (not c!368540)) b!2323037))

(assert (= (and b!2323037 c!368541) b!2323038))

(assert (= (and b!2323037 (not c!368541)) b!2323039))

(assert (=> b!2323038 m!2752337))

(assert (=> b!2323039 m!2752453))

(assert (=> b!2323039 m!2752455))

(assert (=> b!2323039 m!2752453))

(assert (=> b!2323039 m!2752455))

(declare-fun m!2752699 () Bool)

(assert (=> b!2323039 m!2752699))

(assert (=> b!2322864 d!687452))

(assert (=> b!2322864 d!687400))

(declare-fun d!687454 () Bool)

(declare-fun lt!860664 () Int)

(assert (=> d!687454 (>= lt!860664 0)))

(declare-fun e!1488736 () Int)

(assert (=> d!687454 (= lt!860664 e!1488736)))

(declare-fun c!368542 () Bool)

(assert (=> d!687454 (= c!368542 ((_ is Nil!27668) (list!11011 (xs!12039 (left!21006 acc!252)))))))

(assert (=> d!687454 (= (size!21934 (list!11011 (xs!12039 (left!21006 acc!252)))) lt!860664)))

(declare-fun b!2323040 () Bool)

(assert (=> b!2323040 (= e!1488736 0)))

(declare-fun b!2323041 () Bool)

(assert (=> b!2323041 (= e!1488736 (+ 1 (size!21934 (t!207446 (list!11011 (xs!12039 (left!21006 acc!252)))))))))

(assert (= (and d!687454 c!368542) b!2323040))

(assert (= (and d!687454 (not c!368542)) b!2323041))

(declare-fun m!2752701 () Bool)

(assert (=> b!2323041 m!2752701))

(assert (=> b!2322699 d!687454))

(declare-fun d!687456 () Bool)

(assert (=> d!687456 (= (list!11011 (xs!12039 (left!21006 acc!252))) (innerList!9133 (xs!12039 (left!21006 acc!252))))))

(assert (=> b!2322699 d!687456))

(declare-fun b!2323056 () Bool)

(declare-fun e!1488746 () Int)

(assert (=> b!2323056 (= e!1488746 0)))

(declare-fun b!2323057 () Bool)

(declare-fun e!1488747 () List!27766)

(assert (=> b!2323057 (= e!1488747 (Cons!27668 (h!33069 (drop!1507 (list!11011 arr!18) 512)) (take!484 (t!207446 (drop!1507 (list!11011 arr!18) 512)) (- (- lt!860575 512) 1))))))

(declare-fun b!2323058 () Bool)

(declare-fun e!1488748 () Int)

(assert (=> b!2323058 (= e!1488748 (size!21934 (drop!1507 (list!11011 arr!18) 512)))))

(declare-fun d!687458 () Bool)

(declare-fun e!1488745 () Bool)

(assert (=> d!687458 e!1488745))

(declare-fun res!992373 () Bool)

(assert (=> d!687458 (=> (not res!992373) (not e!1488745))))

(declare-fun lt!860667 () List!27766)

(assert (=> d!687458 (= res!992373 (= ((_ map implies) (content!3744 lt!860667) (content!3744 (drop!1507 (list!11011 arr!18) 512))) ((as const (InoxSet T!43908)) true)))))

(assert (=> d!687458 (= lt!860667 e!1488747)))

(declare-fun c!368550 () Bool)

(assert (=> d!687458 (= c!368550 (or ((_ is Nil!27668) (drop!1507 (list!11011 arr!18) 512)) (<= (- lt!860575 512) 0)))))

(assert (=> d!687458 (= (take!484 (drop!1507 (list!11011 arr!18) 512) (- lt!860575 512)) lt!860667)))

(declare-fun b!2323059 () Bool)

(assert (=> b!2323059 (= e!1488746 e!1488748)))

(declare-fun c!368551 () Bool)

(assert (=> b!2323059 (= c!368551 (>= (- lt!860575 512) (size!21934 (drop!1507 (list!11011 arr!18) 512))))))

(declare-fun b!2323060 () Bool)

(assert (=> b!2323060 (= e!1488745 (= (size!21934 lt!860667) e!1488746))))

(declare-fun c!368549 () Bool)

(assert (=> b!2323060 (= c!368549 (<= (- lt!860575 512) 0))))

(declare-fun b!2323061 () Bool)

(assert (=> b!2323061 (= e!1488748 (- lt!860575 512))))

(declare-fun b!2323062 () Bool)

(assert (=> b!2323062 (= e!1488747 Nil!27668)))

(assert (= (and d!687458 c!368550) b!2323062))

(assert (= (and d!687458 (not c!368550)) b!2323057))

(assert (= (and d!687458 res!992373) b!2323060))

(assert (= (and b!2323060 c!368549) b!2323056))

(assert (= (and b!2323060 (not c!368549)) b!2323059))

(assert (= (and b!2323059 c!368551) b!2323058))

(assert (= (and b!2323059 (not c!368551)) b!2323061))

(assert (=> b!2323058 m!2752527))

(declare-fun m!2752703 () Bool)

(assert (=> b!2323058 m!2752703))

(declare-fun m!2752705 () Bool)

(assert (=> d!687458 m!2752705))

(assert (=> d!687458 m!2752527))

(declare-fun m!2752707 () Bool)

(assert (=> d!687458 m!2752707))

(assert (=> b!2323059 m!2752527))

(assert (=> b!2323059 m!2752703))

(declare-fun m!2752709 () Bool)

(assert (=> b!2323060 m!2752709))

(declare-fun m!2752711 () Bool)

(assert (=> b!2323057 m!2752711))

(assert (=> d!687404 d!687458))

(declare-fun b!2323081 () Bool)

(declare-fun e!1488763 () Int)

(declare-fun call!138549 () Int)

(assert (=> b!2323081 (= e!1488763 call!138549)))

(declare-fun b!2323082 () Bool)

(declare-fun e!1488761 () Int)

(assert (=> b!2323082 (= e!1488763 e!1488761)))

(declare-fun c!368560 () Bool)

(assert (=> b!2323082 (= c!368560 (>= 512 call!138549))))

(declare-fun b!2323083 () Bool)

(assert (=> b!2323083 (= e!1488761 (- call!138549 512))))

(declare-fun b!2323084 () Bool)

(declare-fun e!1488762 () List!27766)

(assert (=> b!2323084 (= e!1488762 (list!11011 arr!18))))

(declare-fun b!2323085 () Bool)

(assert (=> b!2323085 (= e!1488762 (drop!1507 (t!207446 (list!11011 arr!18)) (- 512 1)))))

(declare-fun bm!138544 () Bool)

(assert (=> bm!138544 (= call!138549 (size!21934 (list!11011 arr!18)))))

(declare-fun d!687460 () Bool)

(declare-fun e!1488760 () Bool)

(assert (=> d!687460 e!1488760))

(declare-fun res!992376 () Bool)

(assert (=> d!687460 (=> (not res!992376) (not e!1488760))))

(declare-fun lt!860670 () List!27766)

(assert (=> d!687460 (= res!992376 (= ((_ map implies) (content!3744 lt!860670) (content!3744 (list!11011 arr!18))) ((as const (InoxSet T!43908)) true)))))

(declare-fun e!1488759 () List!27766)

(assert (=> d!687460 (= lt!860670 e!1488759)))

(declare-fun c!368562 () Bool)

(assert (=> d!687460 (= c!368562 ((_ is Nil!27668) (list!11011 arr!18)))))

(assert (=> d!687460 (= (drop!1507 (list!11011 arr!18) 512) lt!860670)))

(declare-fun b!2323086 () Bool)

(assert (=> b!2323086 (= e!1488761 0)))

(declare-fun b!2323087 () Bool)

(assert (=> b!2323087 (= e!1488760 (= (size!21934 lt!860670) e!1488763))))

(declare-fun c!368563 () Bool)

(assert (=> b!2323087 (= c!368563 (<= 512 0))))

(declare-fun b!2323088 () Bool)

(assert (=> b!2323088 (= e!1488759 e!1488762)))

(declare-fun c!368561 () Bool)

(assert (=> b!2323088 (= c!368561 (<= 512 0))))

(declare-fun b!2323089 () Bool)

(assert (=> b!2323089 (= e!1488759 Nil!27668)))

(assert (= (and d!687460 c!368562) b!2323089))

(assert (= (and d!687460 (not c!368562)) b!2323088))

(assert (= (and b!2323088 c!368561) b!2323084))

(assert (= (and b!2323088 (not c!368561)) b!2323085))

(assert (= (and d!687460 res!992376) b!2323087))

(assert (= (and b!2323087 c!368563) b!2323081))

(assert (= (and b!2323087 (not c!368563)) b!2323082))

(assert (= (and b!2323082 c!368560) b!2323086))

(assert (= (and b!2323082 (not c!368560)) b!2323083))

(assert (= (or b!2323081 b!2323082 b!2323083) bm!138544))

(declare-fun m!2752713 () Bool)

(assert (=> b!2323085 m!2752713))

(assert (=> bm!138544 m!2751933))

(assert (=> bm!138544 m!2751939))

(declare-fun m!2752715 () Bool)

(assert (=> d!687460 m!2752715))

(assert (=> d!687460 m!2751933))

(declare-fun m!2752717 () Bool)

(assert (=> d!687460 m!2752717))

(declare-fun m!2752719 () Bool)

(assert (=> b!2323087 m!2752719))

(assert (=> d!687404 d!687460))

(declare-fun b!2323092 () Bool)

(declare-fun e!1488765 () Conc!9073)

(assert (=> b!2323092 (= e!1488765 (ite c!368462 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368459 (ite c!368463 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (ite c!368457 call!138506 lt!860620))))))

(declare-fun d!687462 () Bool)

(declare-fun lt!860671 () Conc!9073)

(assert (=> d!687462 (= (list!11013 lt!860671) (++!6824 (list!11013 (ite c!368462 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368459 (ite c!368463 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (ite c!368457 call!138506 lt!860620)))) (list!11013 (ite c!368462 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368459 (ite c!368463 lt!860619 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368457 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) call!138506))))))))

(declare-fun e!1488764 () Conc!9073)

(assert (=> d!687462 (= lt!860671 e!1488764)))

(declare-fun c!368564 () Bool)

(assert (=> d!687462 (= c!368564 (= (ite c!368462 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368459 (ite c!368463 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (ite c!368457 call!138506 lt!860620))) Empty!9073))))

(assert (=> d!687462 (= (<>!214 (ite c!368462 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368459 (ite c!368463 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (ite c!368457 call!138506 lt!860620))) (ite c!368462 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368459 (ite c!368463 lt!860619 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368457 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) call!138506)))) lt!860671)))

(declare-fun b!2323091 () Bool)

(assert (=> b!2323091 (= e!1488764 e!1488765)))

(declare-fun c!368565 () Bool)

(assert (=> b!2323091 (= c!368565 (= (ite c!368462 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368459 (ite c!368463 lt!860619 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368457 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) call!138506))) Empty!9073))))

(declare-fun b!2323090 () Bool)

(assert (=> b!2323090 (= e!1488764 (ite c!368462 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368459 (ite c!368463 lt!860619 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368457 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) call!138506))))))

(declare-fun b!2323093 () Bool)

(assert (=> b!2323093 (= e!1488765 (Node!9073 (ite c!368462 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368459 (ite c!368463 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (ite c!368457 call!138506 lt!860620))) (ite c!368462 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368459 (ite c!368463 lt!860619 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368457 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) call!138506))) (+ (size!21936 (ite c!368462 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368459 (ite c!368463 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (ite c!368457 call!138506 lt!860620)))) (size!21936 (ite c!368462 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368459 (ite c!368463 lt!860619 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368457 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) call!138506))))) (+ (max!0 (height!1331 (ite c!368462 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368459 (ite c!368463 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (ite c!368457 call!138506 lt!860620)))) (height!1331 (ite c!368462 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368459 (ite c!368463 lt!860619 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368457 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) call!138506))))) 1)))))

(assert (= (and d!687462 c!368564) b!2323090))

(assert (= (and d!687462 (not c!368564)) b!2323091))

(assert (= (and b!2323091 c!368565) b!2323092))

(assert (= (and b!2323091 (not c!368565)) b!2323093))

(declare-fun m!2752721 () Bool)

(assert (=> d!687462 m!2752721))

(declare-fun m!2752723 () Bool)

(assert (=> d!687462 m!2752723))

(declare-fun m!2752725 () Bool)

(assert (=> d!687462 m!2752725))

(assert (=> d!687462 m!2752723))

(assert (=> d!687462 m!2752725))

(declare-fun m!2752727 () Bool)

(assert (=> d!687462 m!2752727))

(declare-fun m!2752729 () Bool)

(assert (=> b!2323093 m!2752729))

(declare-fun m!2752731 () Bool)

(assert (=> b!2323093 m!2752731))

(declare-fun m!2752733 () Bool)

(assert (=> b!2323093 m!2752733))

(assert (=> b!2323093 m!2752731))

(declare-fun m!2752735 () Bool)

(assert (=> b!2323093 m!2752735))

(declare-fun m!2752737 () Bool)

(assert (=> b!2323093 m!2752737))

(assert (=> b!2323093 m!2752735))

(assert (=> bm!138512 d!687462))

(assert (=> b!2322727 d!687442))

(assert (=> b!2322727 d!687444))

(declare-fun d!687464 () Bool)

(assert (=> d!687464 (= (inv!37640 (xs!12039 (right!21336 (right!21336 acc!252)))) (<= (size!21934 (innerList!9133 (xs!12039 (right!21336 (right!21336 acc!252))))) 2147483647))))

(declare-fun bs!459136 () Bool)

(assert (= bs!459136 d!687464))

(declare-fun m!2752739 () Bool)

(assert (=> bs!459136 m!2752739))

(assert (=> b!2322934 d!687464))

(declare-fun d!687466 () Bool)

(assert (=> d!687466 (= (height!1331 (left!21006 (right!21336 acc!252))) (ite ((_ is Empty!9073) (left!21006 (right!21336 acc!252))) 0 (ite ((_ is Leaf!13319) (left!21006 (right!21336 acc!252))) 1 (cheight!9284 (left!21006 (right!21336 acc!252))))))))

(assert (=> b!2322739 d!687466))

(declare-fun d!687468 () Bool)

(assert (=> d!687468 (= (height!1331 (right!21336 (right!21336 acc!252))) (ite ((_ is Empty!9073) (right!21336 (right!21336 acc!252))) 0 (ite ((_ is Leaf!13319) (right!21336 (right!21336 acc!252))) 1 (cheight!9284 (right!21336 (right!21336 acc!252))))))))

(assert (=> b!2322739 d!687468))

(declare-fun b!2323096 () Bool)

(declare-fun res!992377 () Bool)

(declare-fun e!1488766 () Bool)

(assert (=> b!2323096 (=> (not res!992377) (not e!1488766))))

(declare-fun lt!860672 () List!27766)

(assert (=> b!2323096 (= res!992377 (= (size!21934 lt!860672) (+ (size!21934 (list!11013 (left!21006 (Leaf!13319 lt!860576 512)))) (size!21934 (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))))

(declare-fun b!2323094 () Bool)

(declare-fun e!1488767 () List!27766)

(assert (=> b!2323094 (= e!1488767 (list!11013 (right!21336 (Leaf!13319 lt!860576 512))))))

(declare-fun b!2323095 () Bool)

(assert (=> b!2323095 (= e!1488767 (Cons!27668 (h!33069 (list!11013 (left!21006 (Leaf!13319 lt!860576 512)))) (++!6824 (t!207446 (list!11013 (left!21006 (Leaf!13319 lt!860576 512)))) (list!11013 (right!21336 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2323097 () Bool)

(assert (=> b!2323097 (= e!1488766 (or (not (= (list!11013 (right!21336 (Leaf!13319 lt!860576 512))) Nil!27668)) (= lt!860672 (list!11013 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun d!687470 () Bool)

(assert (=> d!687470 e!1488766))

(declare-fun res!992378 () Bool)

(assert (=> d!687470 (=> (not res!992378) (not e!1488766))))

(assert (=> d!687470 (= res!992378 (= (content!3744 lt!860672) ((_ map or) (content!3744 (list!11013 (left!21006 (Leaf!13319 lt!860576 512)))) (content!3744 (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))))

(assert (=> d!687470 (= lt!860672 e!1488767)))

(declare-fun c!368566 () Bool)

(assert (=> d!687470 (= c!368566 ((_ is Nil!27668) (list!11013 (left!21006 (Leaf!13319 lt!860576 512)))))))

(assert (=> d!687470 (= (++!6824 (list!11013 (left!21006 (Leaf!13319 lt!860576 512))) (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))) lt!860672)))

(assert (= (and d!687470 c!368566) b!2323094))

(assert (= (and d!687470 (not c!368566)) b!2323095))

(assert (= (and d!687470 res!992378) b!2323096))

(assert (= (and b!2323096 res!992377) b!2323097))

(declare-fun m!2752741 () Bool)

(assert (=> b!2323096 m!2752741))

(assert (=> b!2323096 m!2752439))

(declare-fun m!2752743 () Bool)

(assert (=> b!2323096 m!2752743))

(assert (=> b!2323096 m!2752441))

(declare-fun m!2752745 () Bool)

(assert (=> b!2323096 m!2752745))

(assert (=> b!2323095 m!2752441))

(declare-fun m!2752747 () Bool)

(assert (=> b!2323095 m!2752747))

(declare-fun m!2752749 () Bool)

(assert (=> d!687470 m!2752749))

(assert (=> d!687470 m!2752439))

(declare-fun m!2752751 () Bool)

(assert (=> d!687470 m!2752751))

(assert (=> d!687470 m!2752441))

(declare-fun m!2752753 () Bool)

(assert (=> d!687470 m!2752753))

(assert (=> b!2322919 d!687470))

(declare-fun b!2323098 () Bool)

(declare-fun e!1488768 () List!27766)

(assert (=> b!2323098 (= e!1488768 Nil!27668)))

(declare-fun b!2323100 () Bool)

(declare-fun e!1488769 () List!27766)

(assert (=> b!2323100 (= e!1488769 (list!11011 (xs!12039 (left!21006 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323101 () Bool)

(assert (=> b!2323101 (= e!1488769 (++!6824 (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))) (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2323099 () Bool)

(assert (=> b!2323099 (= e!1488768 e!1488769)))

(declare-fun c!368568 () Bool)

(assert (=> b!2323099 (= c!368568 ((_ is Leaf!13319) (left!21006 (Leaf!13319 lt!860576 512))))))

(declare-fun d!687472 () Bool)

(declare-fun c!368567 () Bool)

(assert (=> d!687472 (= c!368567 ((_ is Empty!9073) (left!21006 (Leaf!13319 lt!860576 512))))))

(assert (=> d!687472 (= (list!11013 (left!21006 (Leaf!13319 lt!860576 512))) e!1488768)))

(assert (= (and d!687472 c!368567) b!2323098))

(assert (= (and d!687472 (not c!368567)) b!2323099))

(assert (= (and b!2323099 c!368568) b!2323100))

(assert (= (and b!2323099 (not c!368568)) b!2323101))

(declare-fun m!2752755 () Bool)

(assert (=> b!2323100 m!2752755))

(assert (=> b!2323101 m!2752445))

(assert (=> b!2323101 m!2752447))

(assert (=> b!2323101 m!2752445))

(assert (=> b!2323101 m!2752447))

(declare-fun m!2752757 () Bool)

(assert (=> b!2323101 m!2752757))

(assert (=> b!2322919 d!687472))

(declare-fun b!2323102 () Bool)

(declare-fun e!1488770 () List!27766)

(assert (=> b!2323102 (= e!1488770 Nil!27668)))

(declare-fun b!2323104 () Bool)

(declare-fun e!1488771 () List!27766)

(assert (=> b!2323104 (= e!1488771 (list!11011 (xs!12039 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323105 () Bool)

(assert (=> b!2323105 (= e!1488771 (++!6824 (list!11013 (left!21006 (right!21336 (Leaf!13319 lt!860576 512)))) (list!11013 (right!21336 (right!21336 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2323103 () Bool)

(assert (=> b!2323103 (= e!1488770 e!1488771)))

(declare-fun c!368570 () Bool)

(assert (=> b!2323103 (= c!368570 ((_ is Leaf!13319) (right!21336 (Leaf!13319 lt!860576 512))))))

(declare-fun d!687474 () Bool)

(declare-fun c!368569 () Bool)

(assert (=> d!687474 (= c!368569 ((_ is Empty!9073) (right!21336 (Leaf!13319 lt!860576 512))))))

(assert (=> d!687474 (= (list!11013 (right!21336 (Leaf!13319 lt!860576 512))) e!1488770)))

(assert (= (and d!687474 c!368569) b!2323102))

(assert (= (and d!687474 (not c!368569)) b!2323103))

(assert (= (and b!2323103 c!368570) b!2323104))

(assert (= (and b!2323103 (not c!368570)) b!2323105))

(declare-fun m!2752759 () Bool)

(assert (=> b!2323104 m!2752759))

(declare-fun m!2752761 () Bool)

(assert (=> b!2323105 m!2752761))

(declare-fun m!2752763 () Bool)

(assert (=> b!2323105 m!2752763))

(assert (=> b!2323105 m!2752761))

(assert (=> b!2323105 m!2752763))

(declare-fun m!2752765 () Bool)

(assert (=> b!2323105 m!2752765))

(assert (=> b!2322919 d!687474))

(declare-fun lt!860675 () Int)

(declare-fun d!687476 () Bool)

(assert (=> d!687476 (= lt!860675 (size!21934 (list!11013 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))))))))

(assert (=> d!687476 (= lt!860675 (ite ((_ is Empty!9073) (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) 0 (ite ((_ is Leaf!13319) (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) (csize!18377 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) (csize!18376 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))))))))

(assert (=> d!687476 (= (size!21936 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) lt!860675)))

(declare-fun bs!459137 () Bool)

(assert (= bs!459137 d!687476))

(assert (=> bs!459137 m!2752275))

(assert (=> bs!459137 m!2752275))

(declare-fun m!2752767 () Bool)

(assert (=> bs!459137 m!2752767))

(assert (=> b!2322751 d!687476))

(declare-fun d!687478 () Bool)

(assert (=> d!687478 (= (height!1331 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))) (ite ((_ is Empty!9073) (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))) 0 (ite ((_ is Leaf!13319) (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))) 1 (cheight!9284 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))))))))

(assert (=> b!2322751 d!687478))

(declare-fun d!687480 () Bool)

(declare-fun lt!860676 () Int)

(assert (=> d!687480 (= lt!860676 (size!21934 (list!11013 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))))))

(assert (=> d!687480 (= lt!860676 (ite ((_ is Empty!9073) (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))) 0 (ite ((_ is Leaf!13319) (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))) (csize!18377 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))) (csize!18376 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))))))))

(assert (=> d!687480 (= (size!21936 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))) lt!860676)))

(declare-fun bs!459138 () Bool)

(assert (= bs!459138 d!687480))

(assert (=> bs!459138 m!2752277))

(assert (=> bs!459138 m!2752277))

(declare-fun m!2752769 () Bool)

(assert (=> bs!459138 m!2752769))

(assert (=> b!2322751 d!687480))

(declare-fun d!687482 () Bool)

(assert (=> d!687482 (= (height!1331 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) (ite ((_ is Empty!9073) (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) 0 (ite ((_ is Leaf!13319) (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) 1 (cheight!9284 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))))))))

(assert (=> b!2322751 d!687482))

(declare-fun d!687484 () Bool)

(assert (=> d!687484 (= (max!0 (height!1331 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) (height!1331 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))) (ite (< (height!1331 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) (height!1331 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))) (height!1331 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))) (height!1331 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))))))))

(assert (=> b!2322751 d!687484))

(declare-fun d!687486 () Bool)

(assert (=> d!687486 (= (height!1331 (left!21006 lt!860609)) (ite ((_ is Empty!9073) (left!21006 lt!860609)) 0 (ite ((_ is Leaf!13319) (left!21006 lt!860609)) 1 (cheight!9284 (left!21006 lt!860609)))))))

(assert (=> b!2322772 d!687486))

(declare-fun d!687488 () Bool)

(assert (=> d!687488 (= (height!1331 (right!21336 lt!860609)) (ite ((_ is Empty!9073) (right!21336 lt!860609)) 0 (ite ((_ is Leaf!13319) (right!21336 lt!860609)) 1 (cheight!9284 (right!21336 lt!860609)))))))

(assert (=> b!2322772 d!687488))

(assert (=> b!2322776 d!687486))

(assert (=> b!2322776 d!687488))

(declare-fun d!687490 () Bool)

(declare-fun res!992379 () Bool)

(declare-fun e!1488772 () Bool)

(assert (=> d!687490 (=> (not res!992379) (not e!1488772))))

(assert (=> d!687490 (= res!992379 (= (csize!18376 (left!21006 (right!21336 acc!252))) (+ (size!21936 (left!21006 (left!21006 (right!21336 acc!252)))) (size!21936 (right!21336 (left!21006 (right!21336 acc!252)))))))))

(assert (=> d!687490 (= (inv!37643 (left!21006 (right!21336 acc!252))) e!1488772)))

(declare-fun b!2323106 () Bool)

(declare-fun res!992380 () Bool)

(assert (=> b!2323106 (=> (not res!992380) (not e!1488772))))

(assert (=> b!2323106 (= res!992380 (and (not (= (left!21006 (left!21006 (right!21336 acc!252))) Empty!9073)) (not (= (right!21336 (left!21006 (right!21336 acc!252))) Empty!9073))))))

(declare-fun b!2323107 () Bool)

(declare-fun res!992381 () Bool)

(assert (=> b!2323107 (=> (not res!992381) (not e!1488772))))

(assert (=> b!2323107 (= res!992381 (= (cheight!9284 (left!21006 (right!21336 acc!252))) (+ (max!0 (height!1331 (left!21006 (left!21006 (right!21336 acc!252)))) (height!1331 (right!21336 (left!21006 (right!21336 acc!252))))) 1)))))

(declare-fun b!2323108 () Bool)

(assert (=> b!2323108 (= e!1488772 (<= 0 (cheight!9284 (left!21006 (right!21336 acc!252)))))))

(assert (= (and d!687490 res!992379) b!2323106))

(assert (= (and b!2323106 res!992380) b!2323107))

(assert (= (and b!2323107 res!992381) b!2323108))

(declare-fun m!2752771 () Bool)

(assert (=> d!687490 m!2752771))

(declare-fun m!2752773 () Bool)

(assert (=> d!687490 m!2752773))

(declare-fun m!2752775 () Bool)

(assert (=> b!2323107 m!2752775))

(declare-fun m!2752777 () Bool)

(assert (=> b!2323107 m!2752777))

(assert (=> b!2323107 m!2752775))

(assert (=> b!2323107 m!2752777))

(declare-fun m!2752779 () Bool)

(assert (=> b!2323107 m!2752779))

(assert (=> b!2322679 d!687490))

(declare-fun d!687492 () Bool)

(assert (=> d!687492 (= (isEmpty!15799 (list!11013 (right!21336 acc!252))) ((_ is Nil!27668) (list!11013 (right!21336 acc!252))))))

(assert (=> d!687336 d!687492))

(assert (=> d!687336 d!687452))

(declare-fun d!687494 () Bool)

(declare-fun lt!860677 () Int)

(assert (=> d!687494 (= lt!860677 (size!21934 (list!11013 (right!21336 acc!252))))))

(assert (=> d!687494 (= lt!860677 (ite ((_ is Empty!9073) (right!21336 acc!252)) 0 (ite ((_ is Leaf!13319) (right!21336 acc!252)) (csize!18377 (right!21336 acc!252)) (csize!18376 (right!21336 acc!252)))))))

(assert (=> d!687494 (= (size!21936 (right!21336 acc!252)) lt!860677)))

(declare-fun bs!459139 () Bool)

(assert (= bs!459139 d!687494))

(assert (=> bs!459139 m!2752313))

(assert (=> bs!459139 m!2752313))

(declare-fun m!2752781 () Bool)

(assert (=> bs!459139 m!2752781))

(assert (=> d!687336 d!687494))

(declare-fun d!687496 () Bool)

(declare-fun lt!860678 () Bool)

(assert (=> d!687496 (= lt!860678 (isEmpty!15799 (list!11013 (right!21336 (right!21336 acc!252)))))))

(assert (=> d!687496 (= lt!860678 (= (size!21936 (right!21336 (right!21336 acc!252))) 0))))

(assert (=> d!687496 (= (isEmpty!15797 (right!21336 (right!21336 acc!252))) lt!860678)))

(declare-fun bs!459140 () Bool)

(assert (= bs!459140 d!687496))

(assert (=> bs!459140 m!2752455))

(assert (=> bs!459140 m!2752455))

(declare-fun m!2752783 () Bool)

(assert (=> bs!459140 m!2752783))

(assert (=> bs!459140 m!2752333))

(assert (=> b!2322744 d!687496))

(declare-fun d!687498 () Bool)

(declare-fun c!368573 () Bool)

(assert (=> d!687498 (= c!368573 ((_ is Nil!27668) lt!860652))))

(declare-fun e!1488775 () (InoxSet T!43908))

(assert (=> d!687498 (= (content!3744 lt!860652) e!1488775)))

(declare-fun b!2323113 () Bool)

(assert (=> b!2323113 (= e!1488775 ((as const (Array T!43908 Bool)) false))))

(declare-fun b!2323114 () Bool)

(assert (=> b!2323114 (= e!1488775 ((_ map or) (store ((as const (Array T!43908 Bool)) false) (h!33069 lt!860652) true) (content!3744 (t!207446 lt!860652))))))

(assert (= (and d!687498 c!368573) b!2323113))

(assert (= (and d!687498 (not c!368573)) b!2323114))

(declare-fun m!2752785 () Bool)

(assert (=> b!2323114 m!2752785))

(declare-fun m!2752787 () Bool)

(assert (=> b!2323114 m!2752787))

(assert (=> d!687394 d!687498))

(declare-fun d!687500 () Bool)

(declare-fun c!368574 () Bool)

(assert (=> d!687500 (= c!368574 ((_ is Nil!27668) (list!11013 acc!252)))))

(declare-fun e!1488776 () (InoxSet T!43908))

(assert (=> d!687500 (= (content!3744 (list!11013 acc!252)) e!1488776)))

(declare-fun b!2323115 () Bool)

(assert (=> b!2323115 (= e!1488776 ((as const (Array T!43908 Bool)) false))))

(declare-fun b!2323116 () Bool)

(assert (=> b!2323116 (= e!1488776 ((_ map or) (store ((as const (Array T!43908 Bool)) false) (h!33069 (list!11013 acc!252)) true) (content!3744 (t!207446 (list!11013 acc!252)))))))

(assert (= (and d!687500 c!368574) b!2323115))

(assert (= (and d!687500 (not c!368574)) b!2323116))

(declare-fun m!2752789 () Bool)

(assert (=> b!2323116 m!2752789))

(declare-fun m!2752791 () Bool)

(assert (=> b!2323116 m!2752791))

(assert (=> d!687394 d!687500))

(declare-fun d!687502 () Bool)

(declare-fun c!368575 () Bool)

(assert (=> d!687502 (= c!368575 ((_ is Nil!27668) (list!11013 (Leaf!13319 lt!860576 512))))))

(declare-fun e!1488777 () (InoxSet T!43908))

(assert (=> d!687502 (= (content!3744 (list!11013 (Leaf!13319 lt!860576 512))) e!1488777)))

(declare-fun b!2323117 () Bool)

(assert (=> b!2323117 (= e!1488777 ((as const (Array T!43908 Bool)) false))))

(declare-fun b!2323118 () Bool)

(assert (=> b!2323118 (= e!1488777 ((_ map or) (store ((as const (Array T!43908 Bool)) false) (h!33069 (list!11013 (Leaf!13319 lt!860576 512))) true) (content!3744 (t!207446 (list!11013 (Leaf!13319 lt!860576 512))))))))

(assert (= (and d!687502 c!368575) b!2323117))

(assert (= (and d!687502 (not c!368575)) b!2323118))

(declare-fun m!2752793 () Bool)

(assert (=> b!2323118 m!2752793))

(declare-fun m!2752795 () Bool)

(assert (=> b!2323118 m!2752795))

(assert (=> d!687394 d!687502))

(declare-fun b!2323119 () Bool)

(declare-fun e!1488778 () Bool)

(declare-fun e!1488779 () Bool)

(assert (=> b!2323119 (= e!1488778 e!1488779)))

(declare-fun res!992384 () Bool)

(assert (=> b!2323119 (=> (not res!992384) (not e!1488779))))

(assert (=> b!2323119 (= res!992384 (<= (- 1) (- (height!1331 (left!21006 (right!21336 (left!21006 acc!252)))) (height!1331 (right!21336 (right!21336 (left!21006 acc!252)))))))))

(declare-fun d!687504 () Bool)

(declare-fun res!992387 () Bool)

(assert (=> d!687504 (=> res!992387 e!1488778)))

(assert (=> d!687504 (= res!992387 (not ((_ is Node!9073) (right!21336 (left!21006 acc!252)))))))

(assert (=> d!687504 (= (isBalanced!2767 (right!21336 (left!21006 acc!252))) e!1488778)))

(declare-fun b!2323120 () Bool)

(declare-fun res!992383 () Bool)

(assert (=> b!2323120 (=> (not res!992383) (not e!1488779))))

(assert (=> b!2323120 (= res!992383 (not (isEmpty!15797 (left!21006 (right!21336 (left!21006 acc!252))))))))

(declare-fun b!2323121 () Bool)

(declare-fun res!992385 () Bool)

(assert (=> b!2323121 (=> (not res!992385) (not e!1488779))))

(assert (=> b!2323121 (= res!992385 (isBalanced!2767 (right!21336 (right!21336 (left!21006 acc!252)))))))

(declare-fun b!2323122 () Bool)

(declare-fun res!992386 () Bool)

(assert (=> b!2323122 (=> (not res!992386) (not e!1488779))))

(assert (=> b!2323122 (= res!992386 (isBalanced!2767 (left!21006 (right!21336 (left!21006 acc!252)))))))

(declare-fun b!2323123 () Bool)

(declare-fun res!992382 () Bool)

(assert (=> b!2323123 (=> (not res!992382) (not e!1488779))))

(assert (=> b!2323123 (= res!992382 (<= (- (height!1331 (left!21006 (right!21336 (left!21006 acc!252)))) (height!1331 (right!21336 (right!21336 (left!21006 acc!252))))) 1))))

(declare-fun b!2323124 () Bool)

(assert (=> b!2323124 (= e!1488779 (not (isEmpty!15797 (right!21336 (right!21336 (left!21006 acc!252))))))))

(assert (= (and d!687504 (not res!992387)) b!2323119))

(assert (= (and b!2323119 res!992384) b!2323123))

(assert (= (and b!2323123 res!992382) b!2323122))

(assert (= (and b!2323122 res!992386) b!2323121))

(assert (= (and b!2323121 res!992385) b!2323120))

(assert (= (and b!2323120 res!992383) b!2323124))

(declare-fun m!2752797 () Bool)

(assert (=> b!2323124 m!2752797))

(declare-fun m!2752799 () Bool)

(assert (=> b!2323120 m!2752799))

(declare-fun m!2752801 () Bool)

(assert (=> b!2323119 m!2752801))

(declare-fun m!2752803 () Bool)

(assert (=> b!2323119 m!2752803))

(declare-fun m!2752805 () Bool)

(assert (=> b!2323121 m!2752805))

(declare-fun m!2752807 () Bool)

(assert (=> b!2323122 m!2752807))

(assert (=> b!2323123 m!2752801))

(assert (=> b!2323123 m!2752803))

(assert (=> b!2322733 d!687504))

(declare-fun b!2323125 () Bool)

(declare-fun e!1488780 () List!27766)

(assert (=> b!2323125 (= e!1488780 Nil!27668)))

(declare-fun b!2323127 () Bool)

(declare-fun e!1488781 () List!27766)

(assert (=> b!2323127 (= e!1488781 (list!11011 (xs!12039 lt!860636)))))

(declare-fun b!2323128 () Bool)

(assert (=> b!2323128 (= e!1488781 (++!6824 (list!11013 (left!21006 lt!860636)) (list!11013 (right!21336 lt!860636))))))

(declare-fun b!2323126 () Bool)

(assert (=> b!2323126 (= e!1488780 e!1488781)))

(declare-fun c!368577 () Bool)

(assert (=> b!2323126 (= c!368577 ((_ is Leaf!13319) lt!860636))))

(declare-fun d!687506 () Bool)

(declare-fun c!368576 () Bool)

(assert (=> d!687506 (= c!368576 ((_ is Empty!9073) lt!860636))))

(assert (=> d!687506 (= (list!11013 lt!860636) e!1488780)))

(assert (= (and d!687506 c!368576) b!2323125))

(assert (= (and d!687506 (not c!368576)) b!2323126))

(assert (= (and b!2323126 c!368577) b!2323127))

(assert (= (and b!2323126 (not c!368577)) b!2323128))

(declare-fun m!2752809 () Bool)

(assert (=> b!2323127 m!2752809))

(declare-fun m!2752811 () Bool)

(assert (=> b!2323128 m!2752811))

(declare-fun m!2752813 () Bool)

(assert (=> b!2323128 m!2752813))

(assert (=> b!2323128 m!2752811))

(assert (=> b!2323128 m!2752813))

(declare-fun m!2752815 () Bool)

(assert (=> b!2323128 m!2752815))

(assert (=> d!687316 d!687506))

(declare-fun b!2323131 () Bool)

(declare-fun res!992388 () Bool)

(declare-fun e!1488782 () Bool)

(assert (=> b!2323131 (=> (not res!992388) (not e!1488782))))

(declare-fun lt!860679 () List!27766)

(assert (=> b!2323131 (= res!992388 (= (size!21934 lt!860679) (+ (size!21934 (list!11013 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))))) (size!21934 (list!11013 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))))))))

(declare-fun b!2323129 () Bool)

(declare-fun e!1488783 () List!27766)

(assert (=> b!2323129 (= e!1488783 (list!11013 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))))))

(declare-fun b!2323130 () Bool)

(assert (=> b!2323130 (= e!1488783 (Cons!27668 (h!33069 (list!11013 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))))) (++!6824 (t!207446 (list!11013 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))))) (list!11013 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))))))))

(declare-fun b!2323132 () Bool)

(assert (=> b!2323132 (= e!1488782 (or (not (= (list!11013 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))) Nil!27668)) (= lt!860679 (list!11013 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))))))))

(declare-fun d!687508 () Bool)

(assert (=> d!687508 e!1488782))

(declare-fun res!992389 () Bool)

(assert (=> d!687508 (=> (not res!992389) (not e!1488782))))

(assert (=> d!687508 (= res!992389 (= (content!3744 lt!860679) ((_ map or) (content!3744 (list!11013 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))))) (content!3744 (list!11013 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))))))))

(assert (=> d!687508 (= lt!860679 e!1488783)))

(declare-fun c!368578 () Bool)

(assert (=> d!687508 (= c!368578 ((_ is Nil!27668) (list!11013 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))))))))

(assert (=> d!687508 (= (++!6824 (list!11013 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) (list!11013 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))) lt!860679)))

(assert (= (and d!687508 c!368578) b!2323129))

(assert (= (and d!687508 (not c!368578)) b!2323130))

(assert (= (and d!687508 res!992389) b!2323131))

(assert (= (and b!2323131 res!992388) b!2323132))

(declare-fun m!2752817 () Bool)

(assert (=> b!2323131 m!2752817))

(assert (=> b!2323131 m!2752275))

(assert (=> b!2323131 m!2752767))

(assert (=> b!2323131 m!2752277))

(assert (=> b!2323131 m!2752769))

(assert (=> b!2323130 m!2752277))

(declare-fun m!2752819 () Bool)

(assert (=> b!2323130 m!2752819))

(declare-fun m!2752821 () Bool)

(assert (=> d!687508 m!2752821))

(assert (=> d!687508 m!2752275))

(declare-fun m!2752823 () Bool)

(assert (=> d!687508 m!2752823))

(assert (=> d!687508 m!2752277))

(declare-fun m!2752825 () Bool)

(assert (=> d!687508 m!2752825))

(assert (=> d!687316 d!687508))

(declare-fun b!2323133 () Bool)

(declare-fun e!1488784 () List!27766)

(assert (=> b!2323133 (= e!1488784 Nil!27668)))

(declare-fun b!2323135 () Bool)

(declare-fun e!1488785 () List!27766)

(assert (=> b!2323135 (= e!1488785 (list!11011 (xs!12039 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))))))))

(declare-fun b!2323136 () Bool)

(assert (=> b!2323136 (= e!1488785 (++!6824 (list!11013 (left!21006 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608))))) (list!11013 (right!21336 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))))))))

(declare-fun b!2323134 () Bool)

(assert (=> b!2323134 (= e!1488784 e!1488785)))

(declare-fun c!368580 () Bool)

(assert (=> b!2323134 (= c!368580 ((_ is Leaf!13319) (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))))))

(declare-fun c!368579 () Bool)

(declare-fun d!687510 () Bool)

(assert (=> d!687510 (= c!368579 ((_ is Empty!9073) (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))))))

(assert (=> d!687510 (= (list!11013 (ite c!368453 acc!252 (ite c!368450 (ite c!368454 (left!21006 (right!21336 acc!252)) (left!21006 acc!252)) (ite c!368448 call!138490 lt!860608)))) e!1488784)))

(assert (= (and d!687510 c!368579) b!2323133))

(assert (= (and d!687510 (not c!368579)) b!2323134))

(assert (= (and b!2323134 c!368580) b!2323135))

(assert (= (and b!2323134 (not c!368580)) b!2323136))

(declare-fun m!2752827 () Bool)

(assert (=> b!2323135 m!2752827))

(declare-fun m!2752829 () Bool)

(assert (=> b!2323136 m!2752829))

(declare-fun m!2752831 () Bool)

(assert (=> b!2323136 m!2752831))

(assert (=> b!2323136 m!2752829))

(assert (=> b!2323136 m!2752831))

(declare-fun m!2752833 () Bool)

(assert (=> b!2323136 m!2752833))

(assert (=> d!687316 d!687510))

(declare-fun b!2323137 () Bool)

(declare-fun e!1488786 () List!27766)

(assert (=> b!2323137 (= e!1488786 Nil!27668)))

(declare-fun e!1488787 () List!27766)

(declare-fun b!2323139 () Bool)

(assert (=> b!2323139 (= e!1488787 (list!11011 (xs!12039 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))))))

(declare-fun b!2323140 () Bool)

(assert (=> b!2323140 (= e!1488787 (++!6824 (list!11013 (left!21006 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490))))) (list!11013 (right!21336 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))))))))

(declare-fun b!2323138 () Bool)

(assert (=> b!2323138 (= e!1488786 e!1488787)))

(declare-fun c!368582 () Bool)

(assert (=> b!2323138 (= c!368582 ((_ is Leaf!13319) (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))))))

(declare-fun c!368581 () Bool)

(declare-fun d!687512 () Bool)

(assert (=> d!687512 (= c!368581 ((_ is Empty!9073) (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))))))

(assert (=> d!687512 (= (list!11013 (ite c!368453 (Leaf!13319 lt!860576 512) (ite c!368450 (ite c!368454 lt!860607 (left!21006 (right!21336 acc!252))) (ite c!368448 (right!21336 (Leaf!13319 lt!860576 512)) call!138490)))) e!1488786)))

(assert (= (and d!687512 c!368581) b!2323137))

(assert (= (and d!687512 (not c!368581)) b!2323138))

(assert (= (and b!2323138 c!368582) b!2323139))

(assert (= (and b!2323138 (not c!368582)) b!2323140))

(declare-fun m!2752835 () Bool)

(assert (=> b!2323139 m!2752835))

(declare-fun m!2752837 () Bool)

(assert (=> b!2323140 m!2752837))

(declare-fun m!2752839 () Bool)

(assert (=> b!2323140 m!2752839))

(assert (=> b!2323140 m!2752837))

(assert (=> b!2323140 m!2752839))

(declare-fun m!2752841 () Bool)

(assert (=> b!2323140 m!2752841))

(assert (=> d!687316 d!687512))

(declare-fun d!687514 () Bool)

(assert (=> d!687514 (= (list!11011 (xs!12039 acc!252)) (innerList!9133 (xs!12039 acc!252)))))

(assert (=> b!2322914 d!687514))

(declare-fun b!2323141 () Bool)

(declare-fun e!1488788 () List!27766)

(assert (=> b!2323141 (= e!1488788 Nil!27668)))

(declare-fun b!2323143 () Bool)

(declare-fun e!1488789 () List!27766)

(assert (=> b!2323143 (= e!1488789 (list!11011 (xs!12039 lt!860621)))))

(declare-fun b!2323144 () Bool)

(assert (=> b!2323144 (= e!1488789 (++!6824 (list!11013 (left!21006 lt!860621)) (list!11013 (right!21336 lt!860621))))))

(declare-fun b!2323142 () Bool)

(assert (=> b!2323142 (= e!1488788 e!1488789)))

(declare-fun c!368584 () Bool)

(assert (=> b!2323142 (= c!368584 ((_ is Leaf!13319) lt!860621))))

(declare-fun d!687516 () Bool)

(declare-fun c!368583 () Bool)

(assert (=> d!687516 (= c!368583 ((_ is Empty!9073) lt!860621))))

(assert (=> d!687516 (= (list!11013 lt!860621) e!1488788)))

(assert (= (and d!687516 c!368583) b!2323141))

(assert (= (and d!687516 (not c!368583)) b!2323142))

(assert (= (and b!2323142 c!368584) b!2323143))

(assert (= (and b!2323142 (not c!368584)) b!2323144))

(declare-fun m!2752843 () Bool)

(assert (=> b!2323143 m!2752843))

(declare-fun m!2752845 () Bool)

(assert (=> b!2323144 m!2752845))

(declare-fun m!2752847 () Bool)

(assert (=> b!2323144 m!2752847))

(assert (=> b!2323144 m!2752845))

(assert (=> b!2323144 m!2752847))

(declare-fun m!2752849 () Bool)

(assert (=> b!2323144 m!2752849))

(assert (=> b!2322646 d!687516))

(declare-fun b!2323147 () Bool)

(declare-fun res!992390 () Bool)

(declare-fun e!1488790 () Bool)

(assert (=> b!2323147 (=> (not res!992390) (not e!1488790))))

(declare-fun lt!860680 () List!27766)

(assert (=> b!2323147 (= res!992390 (= (size!21934 lt!860680) (+ (size!21934 (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (size!21934 (list!11013 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))))

(declare-fun e!1488791 () List!27766)

(declare-fun b!2323145 () Bool)

(assert (=> b!2323145 (= e!1488791 (list!11013 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(declare-fun b!2323146 () Bool)

(assert (=> b!2323146 (= e!1488791 (Cons!27668 (h!33069 (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (++!6824 (t!207446 (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (list!11013 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun b!2323148 () Bool)

(assert (=> b!2323148 (= e!1488790 (or (not (= (list!11013 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) Nil!27668)) (= lt!860680 (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))))))

(declare-fun d!687518 () Bool)

(assert (=> d!687518 e!1488790))

(declare-fun res!992391 () Bool)

(assert (=> d!687518 (=> (not res!992391) (not e!1488790))))

(assert (=> d!687518 (= res!992391 (= (content!3744 lt!860680) ((_ map or) (content!3744 (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (content!3744 (list!11013 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))))

(assert (=> d!687518 (= lt!860680 e!1488791)))

(declare-fun c!368585 () Bool)

(assert (=> d!687518 (= c!368585 ((_ is Nil!27668) (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))))

(assert (=> d!687518 (= (++!6824 (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (list!11013 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) lt!860680)))

(assert (= (and d!687518 c!368585) b!2323145))

(assert (= (and d!687518 (not c!368585)) b!2323146))

(assert (= (and d!687518 res!992391) b!2323147))

(assert (= (and b!2323147 res!992390) b!2323148))

(declare-fun m!2752851 () Bool)

(assert (=> b!2323147 m!2752851))

(assert (=> b!2323147 m!2752149))

(declare-fun m!2752853 () Bool)

(assert (=> b!2323147 m!2752853))

(assert (=> b!2323147 m!2752151))

(declare-fun m!2752855 () Bool)

(assert (=> b!2323147 m!2752855))

(assert (=> b!2323146 m!2752151))

(declare-fun m!2752857 () Bool)

(assert (=> b!2323146 m!2752857))

(declare-fun m!2752859 () Bool)

(assert (=> d!687518 m!2752859))

(assert (=> d!687518 m!2752149))

(declare-fun m!2752861 () Bool)

(assert (=> d!687518 m!2752861))

(assert (=> d!687518 m!2752151))

(declare-fun m!2752863 () Bool)

(assert (=> d!687518 m!2752863))

(assert (=> b!2322646 d!687518))

(declare-fun b!2323149 () Bool)

(declare-fun e!1488792 () List!27766)

(assert (=> b!2323149 (= e!1488792 Nil!27668)))

(declare-fun e!1488793 () List!27766)

(declare-fun b!2323151 () Bool)

(assert (=> b!2323151 (= e!1488793 (list!11011 (xs!12039 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))))

(declare-fun b!2323152 () Bool)

(assert (=> b!2323152 (= e!1488793 (++!6824 (list!11013 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (list!11013 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))))))

(declare-fun b!2323150 () Bool)

(assert (=> b!2323150 (= e!1488792 e!1488793)))

(declare-fun c!368587 () Bool)

(assert (=> b!2323150 (= c!368587 ((_ is Leaf!13319) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))))

(declare-fun d!687520 () Bool)

(declare-fun c!368586 () Bool)

(assert (=> d!687520 (= c!368586 ((_ is Empty!9073) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))))

(assert (=> d!687520 (= (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) e!1488792)))

(assert (= (and d!687520 c!368586) b!2323149))

(assert (= (and d!687520 (not c!368586)) b!2323150))

(assert (= (and b!2323150 c!368587) b!2323151))

(assert (= (and b!2323150 (not c!368587)) b!2323152))

(declare-fun m!2752865 () Bool)

(assert (=> b!2323151 m!2752865))

(declare-fun m!2752867 () Bool)

(assert (=> b!2323152 m!2752867))

(declare-fun m!2752869 () Bool)

(assert (=> b!2323152 m!2752869))

(assert (=> b!2323152 m!2752867))

(assert (=> b!2323152 m!2752869))

(declare-fun m!2752871 () Bool)

(assert (=> b!2323152 m!2752871))

(assert (=> b!2322646 d!687520))

(declare-fun b!2323153 () Bool)

(declare-fun e!1488794 () List!27766)

(assert (=> b!2323153 (= e!1488794 Nil!27668)))

(declare-fun e!1488795 () List!27766)

(declare-fun b!2323155 () Bool)

(assert (=> b!2323155 (= e!1488795 (list!11011 (xs!12039 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(declare-fun b!2323156 () Bool)

(assert (=> b!2323156 (= e!1488795 (++!6824 (list!11013 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (list!11013 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun b!2323154 () Bool)

(assert (=> b!2323154 (= e!1488794 e!1488795)))

(declare-fun c!368589 () Bool)

(assert (=> b!2323154 (= c!368589 ((_ is Leaf!13319) (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(declare-fun d!687522 () Bool)

(declare-fun c!368588 () Bool)

(assert (=> d!687522 (= c!368588 ((_ is Empty!9073) (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(assert (=> d!687522 (= (list!11013 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) e!1488794)))

(assert (= (and d!687522 c!368588) b!2323153))

(assert (= (and d!687522 (not c!368588)) b!2323154))

(assert (= (and b!2323154 c!368589) b!2323155))

(assert (= (and b!2323154 (not c!368589)) b!2323156))

(declare-fun m!2752873 () Bool)

(assert (=> b!2323155 m!2752873))

(declare-fun m!2752875 () Bool)

(assert (=> b!2323156 m!2752875))

(declare-fun m!2752877 () Bool)

(assert (=> b!2323156 m!2752877))

(assert (=> b!2323156 m!2752875))

(assert (=> b!2323156 m!2752877))

(declare-fun m!2752879 () Bool)

(assert (=> b!2323156 m!2752879))

(assert (=> b!2322646 d!687522))

(declare-fun d!687524 () Bool)

(assert (=> d!687524 (= (height!1331 lt!860621) (ite ((_ is Empty!9073) lt!860621) 0 (ite ((_ is Leaf!13319) lt!860621) 1 (cheight!9284 lt!860621))))))

(assert (=> b!2322660 d!687524))

(declare-fun d!687526 () Bool)

(assert (=> d!687526 (= (max!0 (height!1331 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (height!1331 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (ite (< (height!1331 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (height!1331 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (height!1331 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (height!1331 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))))

(assert (=> b!2322660 d!687526))

(declare-fun d!687528 () Bool)

(assert (=> d!687528 (= (height!1331 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (ite ((_ is Empty!9073) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) 0 (ite ((_ is Leaf!13319) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) 1 (cheight!9284 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))))))

(assert (=> b!2322660 d!687528))

(declare-fun d!687530 () Bool)

(assert (=> d!687530 (= (height!1331 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite ((_ is Empty!9073) (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) 0 (ite ((_ is Leaf!13319) (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) 1 (cheight!9284 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(assert (=> b!2322660 d!687530))

(declare-fun bm!138545 () Bool)

(declare-fun call!138551 () List!27766)

(assert (=> bm!138545 (= call!138551 (++!6824 (list!11013 acc!252) (list!11013 (left!21006 (Leaf!13319 lt!860576 512)))))))

(declare-fun d!687532 () Bool)

(declare-fun e!1488796 () Bool)

(assert (=> d!687532 e!1488796))

(declare-fun c!368590 () Bool)

(assert (=> d!687532 (= c!368590 ((_ is Nil!27668) (list!11013 acc!252)))))

(assert (=> d!687532 (= (appendAssoc!157 (list!11013 acc!252) (list!11013 (left!21006 (Leaf!13319 lt!860576 512))) (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))) true)))

(declare-fun b!2323157 () Bool)

(declare-fun call!138550 () List!27766)

(declare-fun call!138552 () List!27766)

(assert (=> b!2323157 (= e!1488796 (= call!138550 call!138552))))

(declare-fun bm!138546 () Bool)

(declare-fun call!138553 () List!27766)

(assert (=> bm!138546 (= call!138553 (++!6824 (list!11013 (left!21006 (Leaf!13319 lt!860576 512))) (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323158 () Bool)

(assert (=> b!2323158 (= e!1488796 (= call!138550 call!138552))))

(declare-fun lt!860681 () Bool)

(assert (=> b!2323158 (= lt!860681 (appendAssoc!157 (t!207446 (list!11013 acc!252)) (list!11013 (left!21006 (Leaf!13319 lt!860576 512))) (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun bm!138547 () Bool)

(assert (=> bm!138547 (= call!138550 (++!6824 call!138551 (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun bm!138548 () Bool)

(assert (=> bm!138548 (= call!138552 (++!6824 (list!11013 acc!252) call!138553))))

(assert (= (and d!687532 c!368590) b!2323157))

(assert (= (and d!687532 (not c!368590)) b!2323158))

(assert (= (or b!2323157 b!2323158) bm!138546))

(assert (= (or b!2323157 b!2323158) bm!138545))

(assert (= (or b!2323157 b!2323158) bm!138548))

(assert (= (or b!2323157 b!2323158) bm!138547))

(assert (=> b!2323158 m!2752439))

(assert (=> b!2323158 m!2752441))

(declare-fun m!2752881 () Bool)

(assert (=> b!2323158 m!2752881))

(assert (=> bm!138547 m!2752441))

(declare-fun m!2752883 () Bool)

(assert (=> bm!138547 m!2752883))

(assert (=> bm!138548 m!2752061))

(declare-fun m!2752885 () Bool)

(assert (=> bm!138548 m!2752885))

(assert (=> bm!138545 m!2752061))

(assert (=> bm!138545 m!2752439))

(declare-fun m!2752887 () Bool)

(assert (=> bm!138545 m!2752887))

(assert (=> bm!138546 m!2752439))

(assert (=> bm!138546 m!2752441))

(assert (=> bm!138546 m!2752525))

(assert (=> b!2322860 d!687532))

(assert (=> b!2322860 d!687398))

(assert (=> b!2322860 d!687472))

(assert (=> b!2322860 d!687474))

(assert (=> d!687290 d!687454))

(assert (=> d!687290 d!687456))

(declare-fun b!2323159 () Bool)

(declare-fun e!1488797 () List!27766)

(assert (=> b!2323159 (= e!1488797 Nil!27668)))

(declare-fun b!2323161 () Bool)

(declare-fun e!1488798 () List!27766)

(assert (=> b!2323161 (= e!1488798 (list!11011 (xs!12039 (right!21336 (right!21336 acc!252)))))))

(declare-fun b!2323162 () Bool)

(assert (=> b!2323162 (= e!1488798 (++!6824 (list!11013 (left!21006 (right!21336 (right!21336 acc!252)))) (list!11013 (right!21336 (right!21336 (right!21336 acc!252))))))))

(declare-fun b!2323160 () Bool)

(assert (=> b!2323160 (= e!1488797 e!1488798)))

(declare-fun c!368592 () Bool)

(assert (=> b!2323160 (= c!368592 ((_ is Leaf!13319) (right!21336 (right!21336 acc!252))))))

(declare-fun d!687534 () Bool)

(declare-fun c!368591 () Bool)

(assert (=> d!687534 (= c!368591 ((_ is Empty!9073) (right!21336 (right!21336 acc!252))))))

(assert (=> d!687534 (= (list!11013 (right!21336 (right!21336 acc!252))) e!1488797)))

(assert (= (and d!687534 c!368591) b!2323159))

(assert (= (and d!687534 (not c!368591)) b!2323160))

(assert (= (and b!2323160 c!368592) b!2323161))

(assert (= (and b!2323160 (not c!368592)) b!2323162))

(declare-fun m!2752889 () Bool)

(assert (=> b!2323161 m!2752889))

(declare-fun m!2752891 () Bool)

(assert (=> b!2323162 m!2752891))

(declare-fun m!2752893 () Bool)

(assert (=> b!2323162 m!2752893))

(assert (=> b!2323162 m!2752891))

(assert (=> b!2323162 m!2752893))

(declare-fun m!2752895 () Bool)

(assert (=> b!2323162 m!2752895))

(assert (=> b!2322861 d!687534))

(assert (=> b!2322861 d!687400))

(assert (=> b!2322861 d!687450))

(declare-fun b!2323163 () Bool)

(declare-fun e!1488799 () List!27766)

(assert (=> b!2323163 (= e!1488799 Nil!27668)))

(declare-fun b!2323165 () Bool)

(declare-fun e!1488800 () List!27766)

(assert (=> b!2323165 (= e!1488800 (list!11011 (xs!12039 (left!21006 (right!21336 acc!252)))))))

(declare-fun b!2323166 () Bool)

(assert (=> b!2323166 (= e!1488800 (++!6824 (list!11013 (left!21006 (left!21006 (right!21336 acc!252)))) (list!11013 (right!21336 (left!21006 (right!21336 acc!252))))))))

(declare-fun b!2323164 () Bool)

(assert (=> b!2323164 (= e!1488799 e!1488800)))

(declare-fun c!368594 () Bool)

(assert (=> b!2323164 (= c!368594 ((_ is Leaf!13319) (left!21006 (right!21336 acc!252))))))

(declare-fun d!687536 () Bool)

(declare-fun c!368593 () Bool)

(assert (=> d!687536 (= c!368593 ((_ is Empty!9073) (left!21006 (right!21336 acc!252))))))

(assert (=> d!687536 (= (list!11013 (left!21006 (right!21336 acc!252))) e!1488799)))

(assert (= (and d!687536 c!368593) b!2323163))

(assert (= (and d!687536 (not c!368593)) b!2323164))

(assert (= (and b!2323164 c!368594) b!2323165))

(assert (= (and b!2323164 (not c!368594)) b!2323166))

(declare-fun m!2752897 () Bool)

(assert (=> b!2323165 m!2752897))

(declare-fun m!2752899 () Bool)

(assert (=> b!2323166 m!2752899))

(declare-fun m!2752901 () Bool)

(assert (=> b!2323166 m!2752901))

(assert (=> b!2323166 m!2752899))

(assert (=> b!2323166 m!2752901))

(declare-fun m!2752903 () Bool)

(assert (=> b!2323166 m!2752903))

(assert (=> b!2322861 d!687536))

(declare-fun bm!138549 () Bool)

(declare-fun call!138555 () List!27766)

(assert (=> bm!138549 (= call!138555 (++!6824 (list!11013 (left!21006 acc!252)) (list!11013 (left!21006 (right!21336 acc!252)))))))

(declare-fun d!687538 () Bool)

(declare-fun e!1488801 () Bool)

(assert (=> d!687538 e!1488801))

(declare-fun c!368595 () Bool)

(assert (=> d!687538 (= c!368595 ((_ is Nil!27668) (list!11013 (left!21006 acc!252))))))

(assert (=> d!687538 (= (appendAssoc!157 (list!11013 (left!21006 acc!252)) (list!11013 (left!21006 (right!21336 acc!252))) (++!6824 (list!11013 (right!21336 (right!21336 acc!252))) (list!11013 (Leaf!13319 lt!860576 512)))) true)))

(declare-fun b!2323167 () Bool)

(declare-fun call!138554 () List!27766)

(declare-fun call!138556 () List!27766)

(assert (=> b!2323167 (= e!1488801 (= call!138554 call!138556))))

(declare-fun bm!138550 () Bool)

(declare-fun call!138557 () List!27766)

(assert (=> bm!138550 (= call!138557 (++!6824 (list!11013 (left!21006 (right!21336 acc!252))) (++!6824 (list!11013 (right!21336 (right!21336 acc!252))) (list!11013 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323168 () Bool)

(assert (=> b!2323168 (= e!1488801 (= call!138554 call!138556))))

(declare-fun lt!860682 () Bool)

(assert (=> b!2323168 (= lt!860682 (appendAssoc!157 (t!207446 (list!11013 (left!21006 acc!252))) (list!11013 (left!21006 (right!21336 acc!252))) (++!6824 (list!11013 (right!21336 (right!21336 acc!252))) (list!11013 (Leaf!13319 lt!860576 512)))))))

(declare-fun bm!138551 () Bool)

(assert (=> bm!138551 (= call!138554 (++!6824 call!138555 (++!6824 (list!11013 (right!21336 (right!21336 acc!252))) (list!11013 (Leaf!13319 lt!860576 512)))))))

(declare-fun bm!138552 () Bool)

(assert (=> bm!138552 (= call!138556 (++!6824 (list!11013 (left!21006 acc!252)) call!138557))))

(assert (= (and d!687538 c!368595) b!2323167))

(assert (= (and d!687538 (not c!368595)) b!2323168))

(assert (= (or b!2323167 b!2323168) bm!138550))

(assert (= (or b!2323167 b!2323168) bm!138549))

(assert (= (or b!2323167 b!2323168) bm!138552))

(assert (= (or b!2323167 b!2323168) bm!138551))

(assert (=> b!2323168 m!2752453))

(assert (=> b!2323168 m!2752469))

(declare-fun m!2752905 () Bool)

(assert (=> b!2323168 m!2752905))

(assert (=> bm!138551 m!2752469))

(declare-fun m!2752907 () Bool)

(assert (=> bm!138551 m!2752907))

(assert (=> bm!138552 m!2752189))

(declare-fun m!2752909 () Bool)

(assert (=> bm!138552 m!2752909))

(assert (=> bm!138549 m!2752189))

(assert (=> bm!138549 m!2752453))

(declare-fun m!2752911 () Bool)

(assert (=> bm!138549 m!2752911))

(assert (=> bm!138550 m!2752453))

(assert (=> bm!138550 m!2752469))

(declare-fun m!2752913 () Bool)

(assert (=> bm!138550 m!2752913))

(assert (=> b!2322861 d!687538))

(declare-fun b!2323171 () Bool)

(declare-fun res!992392 () Bool)

(declare-fun e!1488802 () Bool)

(assert (=> b!2323171 (=> (not res!992392) (not e!1488802))))

(declare-fun lt!860683 () List!27766)

(assert (=> b!2323171 (= res!992392 (= (size!21934 lt!860683) (+ (size!21934 (list!11013 (right!21336 (right!21336 acc!252)))) (size!21934 (list!11013 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2323169 () Bool)

(declare-fun e!1488803 () List!27766)

(assert (=> b!2323169 (= e!1488803 (list!11013 (Leaf!13319 lt!860576 512)))))

(declare-fun b!2323170 () Bool)

(assert (=> b!2323170 (= e!1488803 (Cons!27668 (h!33069 (list!11013 (right!21336 (right!21336 acc!252)))) (++!6824 (t!207446 (list!11013 (right!21336 (right!21336 acc!252)))) (list!11013 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323172 () Bool)

(assert (=> b!2323172 (= e!1488802 (or (not (= (list!11013 (Leaf!13319 lt!860576 512)) Nil!27668)) (= lt!860683 (list!11013 (right!21336 (right!21336 acc!252))))))))

(declare-fun d!687540 () Bool)

(assert (=> d!687540 e!1488802))

(declare-fun res!992393 () Bool)

(assert (=> d!687540 (=> (not res!992393) (not e!1488802))))

(assert (=> d!687540 (= res!992393 (= (content!3744 lt!860683) ((_ map or) (content!3744 (list!11013 (right!21336 (right!21336 acc!252)))) (content!3744 (list!11013 (Leaf!13319 lt!860576 512))))))))

(assert (=> d!687540 (= lt!860683 e!1488803)))

(declare-fun c!368596 () Bool)

(assert (=> d!687540 (= c!368596 ((_ is Nil!27668) (list!11013 (right!21336 (right!21336 acc!252)))))))

(assert (=> d!687540 (= (++!6824 (list!11013 (right!21336 (right!21336 acc!252))) (list!11013 (Leaf!13319 lt!860576 512))) lt!860683)))

(assert (= (and d!687540 c!368596) b!2323169))

(assert (= (and d!687540 (not c!368596)) b!2323170))

(assert (= (and d!687540 res!992393) b!2323171))

(assert (= (and b!2323171 res!992392) b!2323172))

(declare-fun m!2752915 () Bool)

(assert (=> b!2323171 m!2752915))

(assert (=> b!2323171 m!2752455))

(declare-fun m!2752917 () Bool)

(assert (=> b!2323171 m!2752917))

(assert (=> b!2323171 m!2752063))

(assert (=> b!2323171 m!2752503))

(assert (=> b!2323170 m!2752063))

(declare-fun m!2752919 () Bool)

(assert (=> b!2323170 m!2752919))

(declare-fun m!2752921 () Bool)

(assert (=> d!687540 m!2752921))

(assert (=> d!687540 m!2752455))

(declare-fun m!2752923 () Bool)

(assert (=> d!687540 m!2752923))

(assert (=> d!687540 m!2752063))

(assert (=> d!687540 m!2752511))

(assert (=> b!2322861 d!687540))

(declare-fun e!1488812 () Bool)

(declare-fun lt!860687 () Conc!9073)

(declare-fun b!2323173 () Bool)

(assert (=> b!2323173 (= e!1488812 (= (list!11013 lt!860687) (++!6824 (list!11013 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (list!11013 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))))

(declare-fun bm!138553 () Bool)

(declare-fun call!138559 () Conc!9073)

(declare-fun call!138572 () Conc!9073)

(assert (=> bm!138553 (= call!138559 call!138572)))

(declare-fun bm!138554 () Bool)

(declare-fun call!138565 () Conc!9073)

(assert (=> bm!138554 (= call!138572 call!138565)))

(declare-fun bm!138555 () Bool)

(declare-fun call!138564 () Conc!9073)

(declare-fun call!138568 () Conc!9073)

(assert (=> bm!138555 (= call!138564 call!138568)))

(declare-fun bm!138556 () Bool)

(declare-fun call!138570 () Conc!9073)

(assert (=> bm!138556 (= call!138570 call!138568)))

(declare-fun b!2323174 () Bool)

(declare-fun e!1488811 () Conc!9073)

(declare-fun call!138567 () Conc!9073)

(assert (=> b!2323174 (= e!1488811 call!138567)))

(declare-fun b!2323175 () Bool)

(declare-fun e!1488809 () Conc!9073)

(declare-fun e!1488810 () Conc!9073)

(assert (=> b!2323175 (= e!1488809 e!1488810)))

(declare-fun c!368602 () Bool)

(assert (=> b!2323175 (= c!368602 (= (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))) Empty!9073))))

(declare-fun c!368600 () Bool)

(declare-fun call!138569 () Int)

(declare-fun bm!138557 () Bool)

(assert (=> bm!138557 (= call!138569 (height!1331 (ite c!368600 (right!21336 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (left!21006 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))))

(declare-fun bm!138558 () Bool)

(declare-fun call!138573 () Conc!9073)

(assert (=> bm!138558 (= call!138567 call!138573)))

(declare-fun b!2323176 () Bool)

(declare-fun c!368599 () Bool)

(declare-fun call!138563 () Int)

(assert (=> b!2323176 (= c!368599 (>= call!138563 call!138569))))

(declare-fun e!1488813 () Conc!9073)

(declare-fun e!1488804 () Conc!9073)

(assert (=> b!2323176 (= e!1488813 e!1488804)))

(declare-fun lt!860686 () Conc!9073)

(declare-fun bm!138559 () Bool)

(declare-fun call!138571 () Int)

(assert (=> bm!138559 (= call!138571 (height!1331 (ite c!368600 (left!21006 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) lt!860686)))))

(declare-fun d!687542 () Bool)

(assert (=> d!687542 e!1488812))

(declare-fun res!992397 () Bool)

(assert (=> d!687542 (=> (not res!992397) (not e!1488812))))

(assert (=> d!687542 (= res!992397 (appendAssocInst!608 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))

(assert (=> d!687542 (= lt!860687 e!1488809)))

(declare-fun c!368601 () Bool)

(assert (=> d!687542 (= c!368601 (= (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) Empty!9073))))

(declare-fun e!1488806 () Bool)

(assert (=> d!687542 e!1488806))

(declare-fun res!992395 () Bool)

(assert (=> d!687542 (=> (not res!992395) (not e!1488806))))

(assert (=> d!687542 (= res!992395 (isBalanced!2767 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))))

(assert (=> d!687542 (= (++!6822 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))) lt!860687)))

(declare-fun bm!138560 () Bool)

(declare-fun call!138566 () Int)

(declare-fun lt!860685 () Conc!9073)

(assert (=> bm!138560 (= call!138566 (height!1331 (ite c!368600 lt!860685 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))))))

(declare-fun b!2323177 () Bool)

(declare-fun e!1488805 () Conc!9073)

(assert (=> b!2323177 (= e!1488805 call!138559)))

(declare-fun b!2323178 () Bool)

(assert (=> b!2323178 (= e!1488805 call!138559)))

(declare-fun bm!138561 () Bool)

(declare-fun call!138558 () Conc!9073)

(assert (=> bm!138561 (= call!138573 call!138558)))

(declare-fun bm!138562 () Bool)

(declare-fun call!138560 () Conc!9073)

(assert (=> bm!138562 (= call!138560 call!138573)))

(declare-fun b!2323179 () Bool)

(declare-fun res!992394 () Bool)

(assert (=> b!2323179 (=> (not res!992394) (not e!1488812))))

(assert (=> b!2323179 (= res!992394 (isBalanced!2767 lt!860687))))

(declare-fun b!2323180 () Bool)

(declare-fun e!1488807 () Conc!9073)

(assert (=> b!2323180 (= e!1488807 call!138558)))

(declare-fun b!2323181 () Bool)

(declare-fun e!1488808 () Conc!9073)

(assert (=> b!2323181 (= e!1488808 call!138572)))

(declare-fun b!2323182 () Bool)

(assert (=> b!2323182 (= e!1488811 call!138567)))

(declare-fun b!2323183 () Bool)

(declare-fun res!992398 () Bool)

(assert (=> b!2323183 (=> (not res!992398) (not e!1488812))))

(assert (=> b!2323183 (= res!992398 (>= (height!1331 lt!860687) (max!0 (height!1331 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (height!1331 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))))

(declare-fun b!2323184 () Bool)

(assert (=> b!2323184 (= e!1488809 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))))

(declare-fun bm!138563 () Bool)

(declare-fun call!138561 () Conc!9073)

(declare-fun call!138562 () Conc!9073)

(assert (=> bm!138563 (= call!138561 call!138562)))

(declare-fun b!2323185 () Bool)

(assert (=> b!2323185 (= e!1488807 e!1488813)))

(declare-fun lt!860684 () Int)

(assert (=> b!2323185 (= c!368600 (< lt!860684 (- 1)))))

(declare-fun b!2323186 () Bool)

(declare-fun c!368597 () Bool)

(assert (=> b!2323186 (= c!368597 (>= call!138571 call!138569))))

(assert (=> b!2323186 (= e!1488813 e!1488808)))

(declare-fun b!2323187 () Bool)

(declare-fun res!992396 () Bool)

(assert (=> b!2323187 (=> (not res!992396) (not e!1488812))))

(assert (=> b!2323187 (= res!992396 (<= (height!1331 lt!860687) (+ (max!0 (height!1331 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (height!1331 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))) 1)))))

(declare-fun bm!138564 () Bool)

(assert (=> bm!138564 (= call!138568 (++!6822 (ite c!368600 (ite c!368597 (right!21336 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (right!21336 (right!21336 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))) (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (ite c!368600 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))) (ite c!368599 (left!21006 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))) (left!21006 (left!21006 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))))))

(declare-fun b!2323188 () Bool)

(assert (=> b!2323188 (= e!1488804 e!1488811)))

(assert (=> b!2323188 (= lt!860686 call!138570)))

(declare-fun c!368598 () Bool)

(assert (=> b!2323188 (= c!368598 (= call!138571 (- call!138566 3)))))

(declare-fun b!2323189 () Bool)

(assert (=> b!2323189 (= e!1488808 e!1488805)))

(assert (=> b!2323189 (= lt!860685 call!138564)))

(declare-fun c!368604 () Bool)

(assert (=> b!2323189 (= c!368604 (= call!138566 (- call!138563 3)))))

(declare-fun b!2323190 () Bool)

(assert (=> b!2323190 (= e!1488804 call!138562)))

(declare-fun bm!138565 () Bool)

(assert (=> bm!138565 (= call!138565 (<>!214 (ite c!368600 (ite (or c!368597 c!368604) (left!21006 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) call!138560) (ite c!368599 call!138570 (ite c!368598 lt!860686 (right!21336 (left!21006 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))) (ite c!368600 (ite c!368597 call!138564 (ite c!368604 call!138560 lt!860685)) (ite c!368599 (right!21336 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))) (ite c!368598 (right!21336 (left!21006 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))) (right!21336 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))))))

(declare-fun b!2323191 () Bool)

(assert (=> b!2323191 (= e!1488810 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))))

(declare-fun bm!138566 () Bool)

(assert (=> bm!138566 (= call!138563 (height!1331 (ite c!368600 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))))

(declare-fun c!368603 () Bool)

(declare-fun bm!138567 () Bool)

(assert (=> bm!138567 (= call!138558 (<>!214 (ite c!368603 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (ite c!368600 (ite c!368604 (left!21006 (right!21336 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (left!21006 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368598 call!138561 lt!860686))) (ite c!368603 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))) (ite c!368600 (ite c!368604 lt!860685 (left!21006 (right!21336 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))) (ite c!368598 (right!21336 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))) call!138561)))))))

(declare-fun b!2323192 () Bool)

(assert (=> b!2323192 (= e!1488806 (isBalanced!2767 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))

(declare-fun bm!138568 () Bool)

(assert (=> bm!138568 (= call!138562 call!138565)))

(declare-fun b!2323193 () Bool)

(assert (=> b!2323193 (= c!368603 (and (<= (- 1) lt!860684) (<= lt!860684 1)))))

(assert (=> b!2323193 (= lt!860684 (- (height!1331 (ite c!368459 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (ite c!368458 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))) (height!1331 (ite c!368459 (ite c!368456 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))))))

(assert (=> b!2323193 (= e!1488810 e!1488807)))

(assert (= (and d!687542 res!992395) b!2323192))

(assert (= (and d!687542 c!368601) b!2323184))

(assert (= (and d!687542 (not c!368601)) b!2323175))

(assert (= (and b!2323175 c!368602) b!2323191))

(assert (= (and b!2323175 (not c!368602)) b!2323193))

(assert (= (and b!2323193 c!368603) b!2323180))

(assert (= (and b!2323193 (not c!368603)) b!2323185))

(assert (= (and b!2323185 c!368600) b!2323186))

(assert (= (and b!2323185 (not c!368600)) b!2323176))

(assert (= (and b!2323186 c!368597) b!2323181))

(assert (= (and b!2323186 (not c!368597)) b!2323189))

(assert (= (and b!2323189 c!368604) b!2323177))

(assert (= (and b!2323189 (not c!368604)) b!2323178))

(assert (= (or b!2323177 b!2323178) bm!138562))

(assert (= (or b!2323177 b!2323178) bm!138553))

(assert (= (or b!2323181 b!2323189) bm!138555))

(assert (= (or b!2323181 bm!138553) bm!138554))

(assert (= (and b!2323176 c!368599) b!2323190))

(assert (= (and b!2323176 (not c!368599)) b!2323188))

(assert (= (and b!2323188 c!368598) b!2323174))

(assert (= (and b!2323188 (not c!368598)) b!2323182))

(assert (= (or b!2323174 b!2323182) bm!138563))

(assert (= (or b!2323174 b!2323182) bm!138558))

(assert (= (or b!2323190 b!2323188) bm!138556))

(assert (= (or b!2323190 bm!138563) bm!138568))

(assert (= (or bm!138562 bm!138558) bm!138561))

(assert (= (or bm!138554 bm!138568) bm!138565))

(assert (= (or b!2323189 b!2323176) bm!138566))

(assert (= (or b!2323186 b!2323176) bm!138557))

(assert (= (or b!2323189 b!2323188) bm!138560))

(assert (= (or b!2323186 b!2323188) bm!138559))

(assert (= (or bm!138555 bm!138556) bm!138564))

(assert (= (or b!2323180 bm!138561) bm!138567))

(assert (= (and d!687542 res!992397) b!2323179))

(assert (= (and b!2323179 res!992394) b!2323187))

(assert (= (and b!2323187 res!992396) b!2323183))

(assert (= (and b!2323183 res!992398) b!2323173))

(declare-fun m!2752925 () Bool)

(assert (=> d!687542 m!2752925))

(declare-fun m!2752927 () Bool)

(assert (=> d!687542 m!2752927))

(declare-fun m!2752929 () Bool)

(assert (=> bm!138566 m!2752929))

(declare-fun m!2752931 () Bool)

(assert (=> bm!138565 m!2752931))

(declare-fun m!2752933 () Bool)

(assert (=> b!2323193 m!2752933))

(declare-fun m!2752935 () Bool)

(assert (=> b!2323193 m!2752935))

(declare-fun m!2752937 () Bool)

(assert (=> b!2323183 m!2752937))

(assert (=> b!2323183 m!2752935))

(assert (=> b!2323183 m!2752933))

(assert (=> b!2323183 m!2752935))

(assert (=> b!2323183 m!2752933))

(declare-fun m!2752939 () Bool)

(assert (=> b!2323183 m!2752939))

(declare-fun m!2752941 () Bool)

(assert (=> bm!138567 m!2752941))

(declare-fun m!2752943 () Bool)

(assert (=> bm!138564 m!2752943))

(declare-fun m!2752945 () Bool)

(assert (=> b!2323192 m!2752945))

(declare-fun m!2752947 () Bool)

(assert (=> bm!138557 m!2752947))

(declare-fun m!2752949 () Bool)

(assert (=> b!2323173 m!2752949))

(declare-fun m!2752951 () Bool)

(assert (=> b!2323173 m!2752951))

(declare-fun m!2752953 () Bool)

(assert (=> b!2323173 m!2752953))

(assert (=> b!2323173 m!2752951))

(assert (=> b!2323173 m!2752953))

(declare-fun m!2752955 () Bool)

(assert (=> b!2323173 m!2752955))

(declare-fun m!2752957 () Bool)

(assert (=> bm!138559 m!2752957))

(declare-fun m!2752959 () Bool)

(assert (=> b!2323179 m!2752959))

(declare-fun m!2752961 () Bool)

(assert (=> bm!138560 m!2752961))

(assert (=> b!2323187 m!2752937))

(assert (=> b!2323187 m!2752935))

(assert (=> b!2323187 m!2752933))

(assert (=> b!2323187 m!2752935))

(assert (=> b!2323187 m!2752933))

(assert (=> b!2323187 m!2752939))

(assert (=> bm!138509 d!687542))

(declare-fun b!2323196 () Bool)

(declare-fun e!1488815 () Conc!9073)

(assert (=> b!2323196 (= e!1488815 (ite c!368459 (ite (or c!368456 c!368463) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) call!138505) (ite c!368458 call!138515 (ite c!368457 lt!860620 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))

(declare-fun lt!860688 () Conc!9073)

(declare-fun d!687544 () Bool)

(assert (=> d!687544 (= (list!11013 lt!860688) (++!6824 (list!11013 (ite c!368459 (ite (or c!368456 c!368463) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) call!138505) (ite c!368458 call!138515 (ite c!368457 lt!860620 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))) (list!11013 (ite c!368459 (ite c!368456 call!138509 (ite c!368463 call!138505 lt!860619)) (ite c!368458 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite c!368457 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))))))

(declare-fun e!1488814 () Conc!9073)

(assert (=> d!687544 (= lt!860688 e!1488814)))

(declare-fun c!368605 () Bool)

(assert (=> d!687544 (= c!368605 (= (ite c!368459 (ite (or c!368456 c!368463) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) call!138505) (ite c!368458 call!138515 (ite c!368457 lt!860620 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))) Empty!9073))))

(assert (=> d!687544 (= (<>!214 (ite c!368459 (ite (or c!368456 c!368463) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) call!138505) (ite c!368458 call!138515 (ite c!368457 lt!860620 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))) (ite c!368459 (ite c!368456 call!138509 (ite c!368463 call!138505 lt!860619)) (ite c!368458 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite c!368457 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))) lt!860688)))

(declare-fun b!2323195 () Bool)

(assert (=> b!2323195 (= e!1488814 e!1488815)))

(declare-fun c!368606 () Bool)

(assert (=> b!2323195 (= c!368606 (= (ite c!368459 (ite c!368456 call!138509 (ite c!368463 call!138505 lt!860619)) (ite c!368458 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite c!368457 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))) Empty!9073))))

(declare-fun b!2323194 () Bool)

(assert (=> b!2323194 (= e!1488814 (ite c!368459 (ite c!368456 call!138509 (ite c!368463 call!138505 lt!860619)) (ite c!368458 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite c!368457 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))))

(declare-fun b!2323197 () Bool)

(assert (=> b!2323197 (= e!1488815 (Node!9073 (ite c!368459 (ite (or c!368456 c!368463) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) call!138505) (ite c!368458 call!138515 (ite c!368457 lt!860620 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))) (ite c!368459 (ite c!368456 call!138509 (ite c!368463 call!138505 lt!860619)) (ite c!368458 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite c!368457 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))) (+ (size!21936 (ite c!368459 (ite (or c!368456 c!368463) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) call!138505) (ite c!368458 call!138515 (ite c!368457 lt!860620 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))) (size!21936 (ite c!368459 (ite c!368456 call!138509 (ite c!368463 call!138505 lt!860619)) (ite c!368458 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite c!368457 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))) (+ (max!0 (height!1331 (ite c!368459 (ite (or c!368456 c!368463) (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) call!138505) (ite c!368458 call!138515 (ite c!368457 lt!860620 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))) (height!1331 (ite c!368459 (ite c!368456 call!138509 (ite c!368463 call!138505 lt!860619)) (ite c!368458 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (ite c!368457 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))) 1)))))

(assert (= (and d!687544 c!368605) b!2323194))

(assert (= (and d!687544 (not c!368605)) b!2323195))

(assert (= (and b!2323195 c!368606) b!2323196))

(assert (= (and b!2323195 (not c!368606)) b!2323197))

(declare-fun m!2752963 () Bool)

(assert (=> d!687544 m!2752963))

(declare-fun m!2752965 () Bool)

(assert (=> d!687544 m!2752965))

(declare-fun m!2752967 () Bool)

(assert (=> d!687544 m!2752967))

(assert (=> d!687544 m!2752965))

(assert (=> d!687544 m!2752967))

(declare-fun m!2752969 () Bool)

(assert (=> d!687544 m!2752969))

(declare-fun m!2752971 () Bool)

(assert (=> b!2323197 m!2752971))

(declare-fun m!2752973 () Bool)

(assert (=> b!2323197 m!2752973))

(declare-fun m!2752975 () Bool)

(assert (=> b!2323197 m!2752975))

(assert (=> b!2323197 m!2752973))

(declare-fun m!2752977 () Bool)

(assert (=> b!2323197 m!2752977))

(declare-fun m!2752979 () Bool)

(assert (=> b!2323197 m!2752979))

(assert (=> b!2323197 m!2752977))

(assert (=> bm!138510 d!687544))

(declare-fun b!2323200 () Bool)

(declare-fun res!992399 () Bool)

(declare-fun e!1488816 () Bool)

(assert (=> b!2323200 (=> (not res!992399) (not e!1488816))))

(declare-fun lt!860689 () List!27766)

(assert (=> b!2323200 (= res!992399 (= (size!21934 lt!860689) (+ (size!21934 (t!207446 (list!11013 acc!252))) (size!21934 (list!11013 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2323198 () Bool)

(declare-fun e!1488817 () List!27766)

(assert (=> b!2323198 (= e!1488817 (list!11013 (Leaf!13319 lt!860576 512)))))

(declare-fun b!2323199 () Bool)

(assert (=> b!2323199 (= e!1488817 (Cons!27668 (h!33069 (t!207446 (list!11013 acc!252))) (++!6824 (t!207446 (t!207446 (list!11013 acc!252))) (list!11013 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323201 () Bool)

(assert (=> b!2323201 (= e!1488816 (or (not (= (list!11013 (Leaf!13319 lt!860576 512)) Nil!27668)) (= lt!860689 (t!207446 (list!11013 acc!252)))))))

(declare-fun d!687546 () Bool)

(assert (=> d!687546 e!1488816))

(declare-fun res!992400 () Bool)

(assert (=> d!687546 (=> (not res!992400) (not e!1488816))))

(assert (=> d!687546 (= res!992400 (= (content!3744 lt!860689) ((_ map or) (content!3744 (t!207446 (list!11013 acc!252))) (content!3744 (list!11013 (Leaf!13319 lt!860576 512))))))))

(assert (=> d!687546 (= lt!860689 e!1488817)))

(declare-fun c!368607 () Bool)

(assert (=> d!687546 (= c!368607 ((_ is Nil!27668) (t!207446 (list!11013 acc!252))))))

(assert (=> d!687546 (= (++!6824 (t!207446 (list!11013 acc!252)) (list!11013 (Leaf!13319 lt!860576 512))) lt!860689)))

(assert (= (and d!687546 c!368607) b!2323198))

(assert (= (and d!687546 (not c!368607)) b!2323199))

(assert (= (and d!687546 res!992400) b!2323200))

(assert (= (and b!2323200 res!992399) b!2323201))

(declare-fun m!2752981 () Bool)

(assert (=> b!2323200 m!2752981))

(declare-fun m!2752983 () Bool)

(assert (=> b!2323200 m!2752983))

(assert (=> b!2323200 m!2752063))

(assert (=> b!2323200 m!2752503))

(assert (=> b!2323199 m!2752063))

(declare-fun m!2752985 () Bool)

(assert (=> b!2323199 m!2752985))

(declare-fun m!2752987 () Bool)

(assert (=> d!687546 m!2752987))

(assert (=> d!687546 m!2752791))

(assert (=> d!687546 m!2752063))

(assert (=> d!687546 m!2752511))

(assert (=> b!2322905 d!687546))

(declare-fun d!687548 () Bool)

(declare-fun lt!860690 () Bool)

(assert (=> d!687548 (= lt!860690 (isEmpty!15799 (list!11013 (left!21006 (Leaf!13319 lt!860576 512)))))))

(assert (=> d!687548 (= lt!860690 (= (size!21936 (left!21006 (Leaf!13319 lt!860576 512))) 0))))

(assert (=> d!687548 (= (isEmpty!15797 (left!21006 (Leaf!13319 lt!860576 512))) lt!860690)))

(declare-fun bs!459141 () Bool)

(assert (= bs!459141 d!687548))

(assert (=> bs!459141 m!2752439))

(assert (=> bs!459141 m!2752439))

(declare-fun m!2752989 () Bool)

(assert (=> bs!459141 m!2752989))

(declare-fun m!2752991 () Bool)

(assert (=> bs!459141 m!2752991))

(assert (=> b!2322724 d!687548))

(declare-fun d!687550 () Bool)

(assert (=> d!687550 (= (max!0 (height!1331 (left!21006 acc!252)) (height!1331 (right!21336 acc!252))) (ite (< (height!1331 (left!21006 acc!252)) (height!1331 (right!21336 acc!252))) (height!1331 (right!21336 acc!252)) (height!1331 (left!21006 acc!252))))))

(assert (=> b!2322674 d!687550))

(assert (=> b!2322674 d!687286))

(assert (=> b!2322674 d!687288))

(declare-fun d!687552 () Bool)

(declare-fun c!368608 () Bool)

(assert (=> d!687552 (= c!368608 ((_ is Node!9073) (left!21006 (left!21006 (left!21006 acc!252)))))))

(declare-fun e!1488818 () Bool)

(assert (=> d!687552 (= (inv!37639 (left!21006 (left!21006 (left!21006 acc!252)))) e!1488818)))

(declare-fun b!2323202 () Bool)

(assert (=> b!2323202 (= e!1488818 (inv!37643 (left!21006 (left!21006 (left!21006 acc!252)))))))

(declare-fun b!2323203 () Bool)

(declare-fun e!1488819 () Bool)

(assert (=> b!2323203 (= e!1488818 e!1488819)))

(declare-fun res!992401 () Bool)

(assert (=> b!2323203 (= res!992401 (not ((_ is Leaf!13319) (left!21006 (left!21006 (left!21006 acc!252))))))))

(assert (=> b!2323203 (=> res!992401 e!1488819)))

(declare-fun b!2323204 () Bool)

(assert (=> b!2323204 (= e!1488819 (inv!37644 (left!21006 (left!21006 (left!21006 acc!252)))))))

(assert (= (and d!687552 c!368608) b!2323202))

(assert (= (and d!687552 (not c!368608)) b!2323203))

(assert (= (and b!2323203 (not res!992401)) b!2323204))

(declare-fun m!2752993 () Bool)

(assert (=> b!2323202 m!2752993))

(declare-fun m!2752995 () Bool)

(assert (=> b!2323204 m!2752995))

(assert (=> b!2322922 d!687552))

(declare-fun d!687554 () Bool)

(declare-fun c!368609 () Bool)

(assert (=> d!687554 (= c!368609 ((_ is Node!9073) (right!21336 (left!21006 (left!21006 acc!252)))))))

(declare-fun e!1488820 () Bool)

(assert (=> d!687554 (= (inv!37639 (right!21336 (left!21006 (left!21006 acc!252)))) e!1488820)))

(declare-fun b!2323205 () Bool)

(assert (=> b!2323205 (= e!1488820 (inv!37643 (right!21336 (left!21006 (left!21006 acc!252)))))))

(declare-fun b!2323206 () Bool)

(declare-fun e!1488821 () Bool)

(assert (=> b!2323206 (= e!1488820 e!1488821)))

(declare-fun res!992402 () Bool)

(assert (=> b!2323206 (= res!992402 (not ((_ is Leaf!13319) (right!21336 (left!21006 (left!21006 acc!252))))))))

(assert (=> b!2323206 (=> res!992402 e!1488821)))

(declare-fun b!2323207 () Bool)

(assert (=> b!2323207 (= e!1488821 (inv!37644 (right!21336 (left!21006 (left!21006 acc!252)))))))

(assert (= (and d!687554 c!368609) b!2323205))

(assert (= (and d!687554 (not c!368609)) b!2323206))

(assert (= (and b!2323206 (not res!992402)) b!2323207))

(declare-fun m!2752997 () Bool)

(assert (=> b!2323205 m!2752997))

(declare-fun m!2752999 () Bool)

(assert (=> b!2323207 m!2752999))

(assert (=> b!2322922 d!687554))

(declare-fun d!687556 () Bool)

(declare-fun lt!860691 () Bool)

(assert (=> d!687556 (= lt!860691 (isEmpty!15799 (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))

(assert (=> d!687556 (= lt!860691 (= (size!21936 (right!21336 (Leaf!13319 lt!860576 512))) 0))))

(assert (=> d!687556 (= (isEmpty!15797 (right!21336 (Leaf!13319 lt!860576 512))) lt!860691)))

(declare-fun bs!459142 () Bool)

(assert (= bs!459142 d!687556))

(assert (=> bs!459142 m!2752441))

(assert (=> bs!459142 m!2752441))

(declare-fun m!2753001 () Bool)

(assert (=> bs!459142 m!2753001))

(declare-fun m!2753003 () Bool)

(assert (=> bs!459142 m!2753003))

(assert (=> b!2322728 d!687556))

(declare-fun d!687558 () Bool)

(declare-fun res!992403 () Bool)

(declare-fun e!1488822 () Bool)

(assert (=> d!687558 (=> (not res!992403) (not e!1488822))))

(assert (=> d!687558 (= res!992403 (= (csize!18376 (right!21336 (left!21006 acc!252))) (+ (size!21936 (left!21006 (right!21336 (left!21006 acc!252)))) (size!21936 (right!21336 (right!21336 (left!21006 acc!252)))))))))

(assert (=> d!687558 (= (inv!37643 (right!21336 (left!21006 acc!252))) e!1488822)))

(declare-fun b!2323208 () Bool)

(declare-fun res!992404 () Bool)

(assert (=> b!2323208 (=> (not res!992404) (not e!1488822))))

(assert (=> b!2323208 (= res!992404 (and (not (= (left!21006 (right!21336 (left!21006 acc!252))) Empty!9073)) (not (= (right!21336 (right!21336 (left!21006 acc!252))) Empty!9073))))))

(declare-fun b!2323209 () Bool)

(declare-fun res!992405 () Bool)

(assert (=> b!2323209 (=> (not res!992405) (not e!1488822))))

(assert (=> b!2323209 (= res!992405 (= (cheight!9284 (right!21336 (left!21006 acc!252))) (+ (max!0 (height!1331 (left!21006 (right!21336 (left!21006 acc!252)))) (height!1331 (right!21336 (right!21336 (left!21006 acc!252))))) 1)))))

(declare-fun b!2323210 () Bool)

(assert (=> b!2323210 (= e!1488822 (<= 0 (cheight!9284 (right!21336 (left!21006 acc!252)))))))

(assert (= (and d!687558 res!992403) b!2323208))

(assert (= (and b!2323208 res!992404) b!2323209))

(assert (= (and b!2323209 res!992405) b!2323210))

(declare-fun m!2753005 () Bool)

(assert (=> d!687558 m!2753005))

(declare-fun m!2753007 () Bool)

(assert (=> d!687558 m!2753007))

(assert (=> b!2323209 m!2752801))

(assert (=> b!2323209 m!2752803))

(assert (=> b!2323209 m!2752801))

(assert (=> b!2323209 m!2752803))

(declare-fun m!2753009 () Bool)

(assert (=> b!2323209 m!2753009))

(assert (=> b!2322769 d!687558))

(declare-fun d!687560 () Bool)

(declare-fun res!992406 () Bool)

(declare-fun e!1488823 () Bool)

(assert (=> d!687560 (=> (not res!992406) (not e!1488823))))

(assert (=> d!687560 (= res!992406 (= (csize!18376 (right!21336 (right!21336 acc!252))) (+ (size!21936 (left!21006 (right!21336 (right!21336 acc!252)))) (size!21936 (right!21336 (right!21336 (right!21336 acc!252)))))))))

(assert (=> d!687560 (= (inv!37643 (right!21336 (right!21336 acc!252))) e!1488823)))

(declare-fun b!2323211 () Bool)

(declare-fun res!992407 () Bool)

(assert (=> b!2323211 (=> (not res!992407) (not e!1488823))))

(assert (=> b!2323211 (= res!992407 (and (not (= (left!21006 (right!21336 (right!21336 acc!252))) Empty!9073)) (not (= (right!21336 (right!21336 (right!21336 acc!252))) Empty!9073))))))

(declare-fun b!2323212 () Bool)

(declare-fun res!992408 () Bool)

(assert (=> b!2323212 (=> (not res!992408) (not e!1488823))))

(assert (=> b!2323212 (= res!992408 (= (cheight!9284 (right!21336 (right!21336 acc!252))) (+ (max!0 (height!1331 (left!21006 (right!21336 (right!21336 acc!252)))) (height!1331 (right!21336 (right!21336 (right!21336 acc!252))))) 1)))))

(declare-fun b!2323213 () Bool)

(assert (=> b!2323213 (= e!1488823 (<= 0 (cheight!9284 (right!21336 (right!21336 acc!252)))))))

(assert (= (and d!687560 res!992406) b!2323211))

(assert (= (and b!2323211 res!992407) b!2323212))

(assert (= (and b!2323212 res!992408) b!2323213))

(declare-fun m!2753011 () Bool)

(assert (=> d!687560 m!2753011))

(declare-fun m!2753013 () Bool)

(assert (=> d!687560 m!2753013))

(declare-fun m!2753015 () Bool)

(assert (=> b!2323212 m!2753015))

(declare-fun m!2753017 () Bool)

(assert (=> b!2323212 m!2753017))

(assert (=> b!2323212 m!2753015))

(assert (=> b!2323212 m!2753017))

(declare-fun m!2753019 () Bool)

(assert (=> b!2323212 m!2753019))

(assert (=> b!2322682 d!687560))

(declare-fun d!687562 () Bool)

(declare-fun lt!860692 () Bool)

(assert (=> d!687562 (= lt!860692 (isEmpty!15799 (list!11013 (left!21006 (right!21336 acc!252)))))))

(assert (=> d!687562 (= lt!860692 (= (size!21936 (left!21006 (right!21336 acc!252))) 0))))

(assert (=> d!687562 (= (isEmpty!15797 (left!21006 (right!21336 acc!252))) lt!860692)))

(declare-fun bs!459143 () Bool)

(assert (= bs!459143 d!687562))

(assert (=> bs!459143 m!2752453))

(assert (=> bs!459143 m!2752453))

(declare-fun m!2753021 () Bool)

(assert (=> bs!459143 m!2753021))

(assert (=> bs!459143 m!2752331))

(assert (=> b!2322740 d!687562))

(assert (=> d!687276 d!687272))

(assert (=> d!687276 d!687274))

(declare-fun b!2323214 () Bool)

(declare-fun e!1488825 () Int)

(assert (=> b!2323214 (= e!1488825 0)))

(declare-fun b!2323215 () Bool)

(declare-fun e!1488826 () List!27766)

(assert (=> b!2323215 (= e!1488826 (Cons!27668 (h!33069 (drop!1507 (list!11011 arr!18) 0)) (take!484 (t!207446 (drop!1507 (list!11011 arr!18) 0)) (- (- 512 0) 1))))))

(declare-fun b!2323216 () Bool)

(declare-fun e!1488827 () Int)

(assert (=> b!2323216 (= e!1488827 (size!21934 (drop!1507 (list!11011 arr!18) 0)))))

(declare-fun d!687564 () Bool)

(declare-fun e!1488824 () Bool)

(assert (=> d!687564 e!1488824))

(declare-fun res!992409 () Bool)

(assert (=> d!687564 (=> (not res!992409) (not e!1488824))))

(declare-fun lt!860693 () List!27766)

(assert (=> d!687564 (= res!992409 (= ((_ map implies) (content!3744 lt!860693) (content!3744 (drop!1507 (list!11011 arr!18) 0))) ((as const (InoxSet T!43908)) true)))))

(assert (=> d!687564 (= lt!860693 e!1488826)))

(declare-fun c!368611 () Bool)

(assert (=> d!687564 (= c!368611 (or ((_ is Nil!27668) (drop!1507 (list!11011 arr!18) 0)) (<= (- 512 0) 0)))))

(assert (=> d!687564 (= (take!484 (drop!1507 (list!11011 arr!18) 0) (- 512 0)) lt!860693)))

(declare-fun b!2323217 () Bool)

(assert (=> b!2323217 (= e!1488825 e!1488827)))

(declare-fun c!368612 () Bool)

(assert (=> b!2323217 (= c!368612 (>= (- 512 0) (size!21934 (drop!1507 (list!11011 arr!18) 0))))))

(declare-fun b!2323218 () Bool)

(assert (=> b!2323218 (= e!1488824 (= (size!21934 lt!860693) e!1488825))))

(declare-fun c!368610 () Bool)

(assert (=> b!2323218 (= c!368610 (<= (- 512 0) 0))))

(declare-fun b!2323219 () Bool)

(assert (=> b!2323219 (= e!1488827 (- 512 0))))

(declare-fun b!2323220 () Bool)

(assert (=> b!2323220 (= e!1488826 Nil!27668)))

(assert (= (and d!687564 c!368611) b!2323220))

(assert (= (and d!687564 (not c!368611)) b!2323215))

(assert (= (and d!687564 res!992409) b!2323218))

(assert (= (and b!2323218 c!368610) b!2323214))

(assert (= (and b!2323218 (not c!368610)) b!2323217))

(assert (= (and b!2323217 c!368612) b!2323216))

(assert (= (and b!2323217 (not c!368612)) b!2323219))

(assert (=> b!2323216 m!2752345))

(declare-fun m!2753023 () Bool)

(assert (=> b!2323216 m!2753023))

(declare-fun m!2753025 () Bool)

(assert (=> d!687564 m!2753025))

(assert (=> d!687564 m!2752345))

(declare-fun m!2753027 () Bool)

(assert (=> d!687564 m!2753027))

(assert (=> b!2323217 m!2752345))

(assert (=> b!2323217 m!2753023))

(declare-fun m!2753029 () Bool)

(assert (=> b!2323218 m!2753029))

(declare-fun m!2753031 () Bool)

(assert (=> b!2323215 m!2753031))

(assert (=> d!687346 d!687564))

(declare-fun b!2323221 () Bool)

(declare-fun e!1488832 () Int)

(declare-fun call!138574 () Int)

(assert (=> b!2323221 (= e!1488832 call!138574)))

(declare-fun b!2323222 () Bool)

(declare-fun e!1488830 () Int)

(assert (=> b!2323222 (= e!1488832 e!1488830)))

(declare-fun c!368613 () Bool)

(assert (=> b!2323222 (= c!368613 (>= 0 call!138574))))

(declare-fun b!2323223 () Bool)

(assert (=> b!2323223 (= e!1488830 (- call!138574 0))))

(declare-fun b!2323224 () Bool)

(declare-fun e!1488831 () List!27766)

(assert (=> b!2323224 (= e!1488831 (list!11011 arr!18))))

(declare-fun b!2323225 () Bool)

(assert (=> b!2323225 (= e!1488831 (drop!1507 (t!207446 (list!11011 arr!18)) (- 0 1)))))

(declare-fun bm!138569 () Bool)

(assert (=> bm!138569 (= call!138574 (size!21934 (list!11011 arr!18)))))

(declare-fun d!687566 () Bool)

(declare-fun e!1488829 () Bool)

(assert (=> d!687566 e!1488829))

(declare-fun res!992410 () Bool)

(assert (=> d!687566 (=> (not res!992410) (not e!1488829))))

(declare-fun lt!860694 () List!27766)

(assert (=> d!687566 (= res!992410 (= ((_ map implies) (content!3744 lt!860694) (content!3744 (list!11011 arr!18))) ((as const (InoxSet T!43908)) true)))))

(declare-fun e!1488828 () List!27766)

(assert (=> d!687566 (= lt!860694 e!1488828)))

(declare-fun c!368615 () Bool)

(assert (=> d!687566 (= c!368615 ((_ is Nil!27668) (list!11011 arr!18)))))

(assert (=> d!687566 (= (drop!1507 (list!11011 arr!18) 0) lt!860694)))

(declare-fun b!2323226 () Bool)

(assert (=> b!2323226 (= e!1488830 0)))

(declare-fun b!2323227 () Bool)

(assert (=> b!2323227 (= e!1488829 (= (size!21934 lt!860694) e!1488832))))

(declare-fun c!368616 () Bool)

(assert (=> b!2323227 (= c!368616 (<= 0 0))))

(declare-fun b!2323228 () Bool)

(assert (=> b!2323228 (= e!1488828 e!1488831)))

(declare-fun c!368614 () Bool)

(assert (=> b!2323228 (= c!368614 (<= 0 0))))

(declare-fun b!2323229 () Bool)

(assert (=> b!2323229 (= e!1488828 Nil!27668)))

(assert (= (and d!687566 c!368615) b!2323229))

(assert (= (and d!687566 (not c!368615)) b!2323228))

(assert (= (and b!2323228 c!368614) b!2323224))

(assert (= (and b!2323228 (not c!368614)) b!2323225))

(assert (= (and d!687566 res!992410) b!2323227))

(assert (= (and b!2323227 c!368616) b!2323221))

(assert (= (and b!2323227 (not c!368616)) b!2323222))

(assert (= (and b!2323222 c!368613) b!2323226))

(assert (= (and b!2323222 (not c!368613)) b!2323223))

(assert (= (or b!2323221 b!2323222 b!2323223) bm!138569))

(declare-fun m!2753033 () Bool)

(assert (=> b!2323225 m!2753033))

(assert (=> bm!138569 m!2751933))

(assert (=> bm!138569 m!2751939))

(declare-fun m!2753035 () Bool)

(assert (=> d!687566 m!2753035))

(assert (=> d!687566 m!2751933))

(assert (=> d!687566 m!2752717))

(declare-fun m!2753037 () Bool)

(assert (=> b!2323227 m!2753037))

(assert (=> d!687346 d!687566))

(declare-fun b!2323230 () Bool)

(declare-fun e!1488833 () Bool)

(declare-fun e!1488834 () Bool)

(assert (=> b!2323230 (= e!1488833 e!1488834)))

(declare-fun res!992413 () Bool)

(assert (=> b!2323230 (=> (not res!992413) (not e!1488834))))

(assert (=> b!2323230 (= res!992413 (<= (- 1) (- (height!1331 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (height!1331 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))))

(declare-fun d!687568 () Bool)

(declare-fun res!992416 () Bool)

(assert (=> d!687568 (=> res!992416 e!1488833)))

(assert (=> d!687568 (= res!992416 (not ((_ is Node!9073) (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(assert (=> d!687568 (= (isBalanced!2767 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) e!1488833)))

(declare-fun b!2323231 () Bool)

(declare-fun res!992412 () Bool)

(assert (=> b!2323231 (=> (not res!992412) (not e!1488834))))

(assert (=> b!2323231 (= res!992412 (not (isEmpty!15797 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun b!2323232 () Bool)

(declare-fun res!992414 () Bool)

(assert (=> b!2323232 (=> (not res!992414) (not e!1488834))))

(assert (=> b!2323232 (= res!992414 (isBalanced!2767 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(declare-fun b!2323233 () Bool)

(declare-fun res!992415 () Bool)

(assert (=> b!2323233 (=> (not res!992415) (not e!1488834))))

(assert (=> b!2323233 (= res!992415 (isBalanced!2767 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(declare-fun b!2323234 () Bool)

(declare-fun res!992411 () Bool)

(assert (=> b!2323234 (=> (not res!992411) (not e!1488834))))

(assert (=> b!2323234 (= res!992411 (<= (- (height!1331 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (height!1331 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))) 1))))

(declare-fun b!2323235 () Bool)

(assert (=> b!2323235 (= e!1488834 (not (isEmpty!15797 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(assert (= (and d!687568 (not res!992416)) b!2323230))

(assert (= (and b!2323230 res!992413) b!2323234))

(assert (= (and b!2323234 res!992411) b!2323233))

(assert (= (and b!2323233 res!992415) b!2323232))

(assert (= (and b!2323232 res!992414) b!2323231))

(assert (= (and b!2323231 res!992412) b!2323235))

(declare-fun m!2753039 () Bool)

(assert (=> b!2323235 m!2753039))

(declare-fun m!2753041 () Bool)

(assert (=> b!2323231 m!2753041))

(declare-fun m!2753043 () Bool)

(assert (=> b!2323230 m!2753043))

(declare-fun m!2753045 () Bool)

(assert (=> b!2323230 m!2753045))

(declare-fun m!2753047 () Bool)

(assert (=> b!2323232 m!2753047))

(declare-fun m!2753049 () Bool)

(assert (=> b!2323233 m!2753049))

(assert (=> b!2323234 m!2753043))

(assert (=> b!2323234 m!2753045))

(assert (=> b!2322665 d!687568))

(declare-fun d!687570 () Bool)

(declare-fun lt!860695 () Bool)

(assert (=> d!687570 (= lt!860695 (isEmpty!15799 (list!11013 (left!21006 lt!860609))))))

(assert (=> d!687570 (= lt!860695 (= (size!21936 (left!21006 lt!860609)) 0))))

(assert (=> d!687570 (= (isEmpty!15797 (left!21006 lt!860609)) lt!860695)))

(declare-fun bs!459144 () Bool)

(assert (= bs!459144 d!687570))

(assert (=> bs!459144 m!2752491))

(assert (=> bs!459144 m!2752491))

(declare-fun m!2753051 () Bool)

(assert (=> bs!459144 m!2753051))

(declare-fun m!2753053 () Bool)

(assert (=> bs!459144 m!2753053))

(assert (=> b!2322773 d!687570))

(declare-fun d!687572 () Bool)

(declare-fun lt!860696 () Int)

(assert (=> d!687572 (= lt!860696 (size!21934 (list!11013 (left!21006 (left!21006 acc!252)))))))

(assert (=> d!687572 (= lt!860696 (ite ((_ is Empty!9073) (left!21006 (left!21006 acc!252))) 0 (ite ((_ is Leaf!13319) (left!21006 (left!21006 acc!252))) (csize!18377 (left!21006 (left!21006 acc!252))) (csize!18376 (left!21006 (left!21006 acc!252))))))))

(assert (=> d!687572 (= (size!21936 (left!21006 (left!21006 acc!252))) lt!860696)))

(declare-fun bs!459145 () Bool)

(assert (= bs!459145 d!687572))

(assert (=> bs!459145 m!2752693))

(assert (=> bs!459145 m!2752693))

(declare-fun m!2753055 () Bool)

(assert (=> bs!459145 m!2753055))

(assert (=> d!687262 d!687572))

(declare-fun d!687574 () Bool)

(declare-fun lt!860697 () Int)

(assert (=> d!687574 (= lt!860697 (size!21934 (list!11013 (right!21336 (left!21006 acc!252)))))))

(assert (=> d!687574 (= lt!860697 (ite ((_ is Empty!9073) (right!21336 (left!21006 acc!252))) 0 (ite ((_ is Leaf!13319) (right!21336 (left!21006 acc!252))) (csize!18377 (right!21336 (left!21006 acc!252))) (csize!18376 (right!21336 (left!21006 acc!252))))))))

(assert (=> d!687574 (= (size!21936 (right!21336 (left!21006 acc!252))) lt!860697)))

(declare-fun bs!459146 () Bool)

(assert (= bs!459146 d!687574))

(assert (=> bs!459146 m!2752695))

(assert (=> bs!459146 m!2752695))

(declare-fun m!2753057 () Bool)

(assert (=> bs!459146 m!2753057))

(assert (=> d!687262 d!687574))

(declare-fun d!687576 () Bool)

(declare-fun lt!860698 () Int)

(assert (=> d!687576 (>= lt!860698 0)))

(declare-fun e!1488835 () Int)

(assert (=> d!687576 (= lt!860698 e!1488835)))

(declare-fun c!368617 () Bool)

(assert (=> d!687576 (= c!368617 ((_ is Nil!27668) (t!207446 (list!11011 lt!860577))))))

(assert (=> d!687576 (= (size!21934 (t!207446 (list!11011 lt!860577))) lt!860698)))

(declare-fun b!2323236 () Bool)

(assert (=> b!2323236 (= e!1488835 0)))

(declare-fun b!2323237 () Bool)

(assert (=> b!2323237 (= e!1488835 (+ 1 (size!21934 (t!207446 (t!207446 (list!11011 lt!860577))))))))

(assert (= (and d!687576 c!368617) b!2323236))

(assert (= (and d!687576 (not c!368617)) b!2323237))

(declare-fun m!2753059 () Bool)

(assert (=> b!2323237 m!2753059))

(assert (=> b!2322738 d!687576))

(declare-fun b!2323238 () Bool)

(declare-fun e!1488836 () Bool)

(declare-fun e!1488837 () Bool)

(assert (=> b!2323238 (= e!1488836 e!1488837)))

(declare-fun res!992419 () Bool)

(assert (=> b!2323238 (=> (not res!992419) (not e!1488837))))

(assert (=> b!2323238 (= res!992419 (<= (- 1) (- (height!1331 (left!21006 (right!21336 (right!21336 acc!252)))) (height!1331 (right!21336 (right!21336 (right!21336 acc!252)))))))))

(declare-fun d!687578 () Bool)

(declare-fun res!992422 () Bool)

(assert (=> d!687578 (=> res!992422 e!1488836)))

(assert (=> d!687578 (= res!992422 (not ((_ is Node!9073) (right!21336 (right!21336 acc!252)))))))

(assert (=> d!687578 (= (isBalanced!2767 (right!21336 (right!21336 acc!252))) e!1488836)))

(declare-fun b!2323239 () Bool)

(declare-fun res!992418 () Bool)

(assert (=> b!2323239 (=> (not res!992418) (not e!1488837))))

(assert (=> b!2323239 (= res!992418 (not (isEmpty!15797 (left!21006 (right!21336 (right!21336 acc!252))))))))

(declare-fun b!2323240 () Bool)

(declare-fun res!992420 () Bool)

(assert (=> b!2323240 (=> (not res!992420) (not e!1488837))))

(assert (=> b!2323240 (= res!992420 (isBalanced!2767 (right!21336 (right!21336 (right!21336 acc!252)))))))

(declare-fun b!2323241 () Bool)

(declare-fun res!992421 () Bool)

(assert (=> b!2323241 (=> (not res!992421) (not e!1488837))))

(assert (=> b!2323241 (= res!992421 (isBalanced!2767 (left!21006 (right!21336 (right!21336 acc!252)))))))

(declare-fun b!2323242 () Bool)

(declare-fun res!992417 () Bool)

(assert (=> b!2323242 (=> (not res!992417) (not e!1488837))))

(assert (=> b!2323242 (= res!992417 (<= (- (height!1331 (left!21006 (right!21336 (right!21336 acc!252)))) (height!1331 (right!21336 (right!21336 (right!21336 acc!252))))) 1))))

(declare-fun b!2323243 () Bool)

(assert (=> b!2323243 (= e!1488837 (not (isEmpty!15797 (right!21336 (right!21336 (right!21336 acc!252))))))))

(assert (= (and d!687578 (not res!992422)) b!2323238))

(assert (= (and b!2323238 res!992419) b!2323242))

(assert (= (and b!2323242 res!992417) b!2323241))

(assert (= (and b!2323241 res!992421) b!2323240))

(assert (= (and b!2323240 res!992420) b!2323239))

(assert (= (and b!2323239 res!992418) b!2323243))

(declare-fun m!2753061 () Bool)

(assert (=> b!2323243 m!2753061))

(declare-fun m!2753063 () Bool)

(assert (=> b!2323239 m!2753063))

(assert (=> b!2323238 m!2753015))

(assert (=> b!2323238 m!2753017))

(declare-fun m!2753065 () Bool)

(assert (=> b!2323240 m!2753065))

(declare-fun m!2753067 () Bool)

(assert (=> b!2323241 m!2753067))

(assert (=> b!2323242 m!2753015))

(assert (=> b!2323242 m!2753017))

(assert (=> b!2322741 d!687578))

(declare-fun d!687580 () Bool)

(declare-fun lt!860699 () Int)

(assert (=> d!687580 (>= lt!860699 0)))

(declare-fun e!1488838 () Int)

(assert (=> d!687580 (= lt!860699 e!1488838)))

(declare-fun c!368618 () Bool)

(assert (=> d!687580 (= c!368618 ((_ is Nil!27668) (t!207446 (innerList!9133 (xs!12039 acc!252)))))))

(assert (=> d!687580 (= (size!21934 (t!207446 (innerList!9133 (xs!12039 acc!252)))) lt!860699)))

(declare-fun b!2323244 () Bool)

(assert (=> b!2323244 (= e!1488838 0)))

(declare-fun b!2323245 () Bool)

(assert (=> b!2323245 (= e!1488838 (+ 1 (size!21934 (t!207446 (t!207446 (innerList!9133 (xs!12039 acc!252)))))))))

(assert (= (and d!687580 c!368618) b!2323244))

(assert (= (and d!687580 (not c!368618)) b!2323245))

(declare-fun m!2753069 () Bool)

(assert (=> b!2323245 m!2753069))

(assert (=> b!2322690 d!687580))

(assert (=> d!687350 d!687346))

(assert (=> d!687350 d!687274))

(declare-fun d!687582 () Bool)

(assert (=> d!687582 (= (inv!37640 _$4!1111) (<= (size!21934 (innerList!9133 _$4!1111)) 2147483647))))

(declare-fun bs!459147 () Bool)

(assert (= bs!459147 d!687582))

(declare-fun m!2753071 () Bool)

(assert (=> bs!459147 m!2753071))

(assert (=> d!687350 d!687582))

(declare-fun b!2323246 () Bool)

(declare-fun e!1488839 () Bool)

(declare-fun e!1488840 () Bool)

(assert (=> b!2323246 (= e!1488839 e!1488840)))

(declare-fun res!992425 () Bool)

(assert (=> b!2323246 (=> (not res!992425) (not e!1488840))))

(assert (=> b!2323246 (= res!992425 (<= (- 1) (- (height!1331 (left!21006 (left!21006 (left!21006 acc!252)))) (height!1331 (right!21336 (left!21006 (left!21006 acc!252)))))))))

(declare-fun d!687584 () Bool)

(declare-fun res!992428 () Bool)

(assert (=> d!687584 (=> res!992428 e!1488839)))

(assert (=> d!687584 (= res!992428 (not ((_ is Node!9073) (left!21006 (left!21006 acc!252)))))))

(assert (=> d!687584 (= (isBalanced!2767 (left!21006 (left!21006 acc!252))) e!1488839)))

(declare-fun b!2323247 () Bool)

(declare-fun res!992424 () Bool)

(assert (=> b!2323247 (=> (not res!992424) (not e!1488840))))

(assert (=> b!2323247 (= res!992424 (not (isEmpty!15797 (left!21006 (left!21006 (left!21006 acc!252))))))))

(declare-fun b!2323248 () Bool)

(declare-fun res!992426 () Bool)

(assert (=> b!2323248 (=> (not res!992426) (not e!1488840))))

(assert (=> b!2323248 (= res!992426 (isBalanced!2767 (right!21336 (left!21006 (left!21006 acc!252)))))))

(declare-fun b!2323249 () Bool)

(declare-fun res!992427 () Bool)

(assert (=> b!2323249 (=> (not res!992427) (not e!1488840))))

(assert (=> b!2323249 (= res!992427 (isBalanced!2767 (left!21006 (left!21006 (left!21006 acc!252)))))))

(declare-fun b!2323250 () Bool)

(declare-fun res!992423 () Bool)

(assert (=> b!2323250 (=> (not res!992423) (not e!1488840))))

(assert (=> b!2323250 (= res!992423 (<= (- (height!1331 (left!21006 (left!21006 (left!21006 acc!252)))) (height!1331 (right!21336 (left!21006 (left!21006 acc!252))))) 1))))

(declare-fun b!2323251 () Bool)

(assert (=> b!2323251 (= e!1488840 (not (isEmpty!15797 (right!21336 (left!21006 (left!21006 acc!252))))))))

(assert (= (and d!687584 (not res!992428)) b!2323246))

(assert (= (and b!2323246 res!992425) b!2323250))

(assert (= (and b!2323250 res!992423) b!2323249))

(assert (= (and b!2323249 res!992427) b!2323248))

(assert (= (and b!2323248 res!992426) b!2323247))

(assert (= (and b!2323247 res!992424) b!2323251))

(declare-fun m!2753073 () Bool)

(assert (=> b!2323251 m!2753073))

(declare-fun m!2753075 () Bool)

(assert (=> b!2323247 m!2753075))

(declare-fun m!2753077 () Bool)

(assert (=> b!2323246 m!2753077))

(declare-fun m!2753079 () Bool)

(assert (=> b!2323246 m!2753079))

(declare-fun m!2753081 () Bool)

(assert (=> b!2323248 m!2753081))

(declare-fun m!2753083 () Bool)

(assert (=> b!2323249 m!2753083))

(assert (=> b!2323250 m!2753077))

(assert (=> b!2323250 m!2753079))

(assert (=> b!2322734 d!687584))

(declare-fun b!2323254 () Bool)

(declare-fun res!992429 () Bool)

(declare-fun e!1488841 () Bool)

(assert (=> b!2323254 (=> (not res!992429) (not e!1488841))))

(declare-fun lt!860700 () List!27766)

(assert (=> b!2323254 (= res!992429 (= (size!21934 lt!860700) (+ (size!21934 (list!11013 (left!21006 acc!252))) (size!21934 (list!11013 (right!21336 acc!252))))))))

(declare-fun b!2323252 () Bool)

(declare-fun e!1488842 () List!27766)

(assert (=> b!2323252 (= e!1488842 (list!11013 (right!21336 acc!252)))))

(declare-fun b!2323253 () Bool)

(assert (=> b!2323253 (= e!1488842 (Cons!27668 (h!33069 (list!11013 (left!21006 acc!252))) (++!6824 (t!207446 (list!11013 (left!21006 acc!252))) (list!11013 (right!21336 acc!252)))))))

(declare-fun b!2323255 () Bool)

(assert (=> b!2323255 (= e!1488841 (or (not (= (list!11013 (right!21336 acc!252)) Nil!27668)) (= lt!860700 (list!11013 (left!21006 acc!252)))))))

(declare-fun d!687586 () Bool)

(assert (=> d!687586 e!1488841))

(declare-fun res!992430 () Bool)

(assert (=> d!687586 (=> (not res!992430) (not e!1488841))))

(assert (=> d!687586 (= res!992430 (= (content!3744 lt!860700) ((_ map or) (content!3744 (list!11013 (left!21006 acc!252))) (content!3744 (list!11013 (right!21336 acc!252))))))))

(assert (=> d!687586 (= lt!860700 e!1488842)))

(declare-fun c!368619 () Bool)

(assert (=> d!687586 (= c!368619 ((_ is Nil!27668) (list!11013 (left!21006 acc!252))))))

(assert (=> d!687586 (= (++!6824 (list!11013 (left!21006 acc!252)) (list!11013 (right!21336 acc!252))) lt!860700)))

(assert (= (and d!687586 c!368619) b!2323252))

(assert (= (and d!687586 (not c!368619)) b!2323253))

(assert (= (and d!687586 res!992430) b!2323254))

(assert (= (and b!2323254 res!992429) b!2323255))

(declare-fun m!2753085 () Bool)

(assert (=> b!2323254 m!2753085))

(assert (=> b!2323254 m!2752189))

(declare-fun m!2753087 () Bool)

(assert (=> b!2323254 m!2753087))

(assert (=> b!2323254 m!2752313))

(assert (=> b!2323254 m!2752781))

(assert (=> b!2323253 m!2752313))

(declare-fun m!2753089 () Bool)

(assert (=> b!2323253 m!2753089))

(declare-fun m!2753091 () Bool)

(assert (=> d!687586 m!2753091))

(assert (=> d!687586 m!2752189))

(declare-fun m!2753093 () Bool)

(assert (=> d!687586 m!2753093))

(assert (=> d!687586 m!2752313))

(declare-fun m!2753095 () Bool)

(assert (=> d!687586 m!2753095))

(assert (=> b!2322915 d!687586))

(assert (=> b!2322915 d!687450))

(assert (=> b!2322915 d!687452))

(declare-fun d!687588 () Bool)

(declare-fun lt!860701 () Bool)

(assert (=> d!687588 (= lt!860701 (isEmpty!15799 (list!11013 (right!21336 lt!860609))))))

(assert (=> d!687588 (= lt!860701 (= (size!21936 (right!21336 lt!860609)) 0))))

(assert (=> d!687588 (= (isEmpty!15797 (right!21336 lt!860609)) lt!860701)))

(declare-fun bs!459148 () Bool)

(assert (= bs!459148 d!687588))

(assert (=> bs!459148 m!2752493))

(assert (=> bs!459148 m!2752493))

(declare-fun m!2753097 () Bool)

(assert (=> bs!459148 m!2753097))

(declare-fun m!2753099 () Bool)

(assert (=> bs!459148 m!2753099))

(assert (=> b!2322777 d!687588))

(declare-fun d!687590 () Bool)

(declare-fun c!368620 () Bool)

(assert (=> d!687590 (= c!368620 ((_ is Node!9073) (left!21006 (left!21006 (right!21336 acc!252)))))))

(declare-fun e!1488843 () Bool)

(assert (=> d!687590 (= (inv!37639 (left!21006 (left!21006 (right!21336 acc!252)))) e!1488843)))

(declare-fun b!2323256 () Bool)

(assert (=> b!2323256 (= e!1488843 (inv!37643 (left!21006 (left!21006 (right!21336 acc!252)))))))

(declare-fun b!2323257 () Bool)

(declare-fun e!1488844 () Bool)

(assert (=> b!2323257 (= e!1488843 e!1488844)))

(declare-fun res!992431 () Bool)

(assert (=> b!2323257 (= res!992431 (not ((_ is Leaf!13319) (left!21006 (left!21006 (right!21336 acc!252))))))))

(assert (=> b!2323257 (=> res!992431 e!1488844)))

(declare-fun b!2323258 () Bool)

(assert (=> b!2323258 (= e!1488844 (inv!37644 (left!21006 (left!21006 (right!21336 acc!252)))))))

(assert (= (and d!687590 c!368620) b!2323256))

(assert (= (and d!687590 (not c!368620)) b!2323257))

(assert (= (and b!2323257 (not res!992431)) b!2323258))

(declare-fun m!2753101 () Bool)

(assert (=> b!2323256 m!2753101))

(declare-fun m!2753103 () Bool)

(assert (=> b!2323258 m!2753103))

(assert (=> b!2322930 d!687590))

(declare-fun d!687592 () Bool)

(declare-fun c!368621 () Bool)

(assert (=> d!687592 (= c!368621 ((_ is Node!9073) (right!21336 (left!21006 (right!21336 acc!252)))))))

(declare-fun e!1488845 () Bool)

(assert (=> d!687592 (= (inv!37639 (right!21336 (left!21006 (right!21336 acc!252)))) e!1488845)))

(declare-fun b!2323259 () Bool)

(assert (=> b!2323259 (= e!1488845 (inv!37643 (right!21336 (left!21006 (right!21336 acc!252)))))))

(declare-fun b!2323260 () Bool)

(declare-fun e!1488846 () Bool)

(assert (=> b!2323260 (= e!1488845 e!1488846)))

(declare-fun res!992432 () Bool)

(assert (=> b!2323260 (= res!992432 (not ((_ is Leaf!13319) (right!21336 (left!21006 (right!21336 acc!252))))))))

(assert (=> b!2323260 (=> res!992432 e!1488846)))

(declare-fun b!2323261 () Bool)

(assert (=> b!2323261 (= e!1488846 (inv!37644 (right!21336 (left!21006 (right!21336 acc!252)))))))

(assert (= (and d!687592 c!368621) b!2323259))

(assert (= (and d!687592 (not c!368621)) b!2323260))

(assert (= (and b!2323260 (not res!992432)) b!2323261))

(declare-fun m!2753105 () Bool)

(assert (=> b!2323259 m!2753105))

(declare-fun m!2753107 () Bool)

(assert (=> b!2323261 m!2753107))

(assert (=> b!2322930 d!687592))

(declare-fun d!687594 () Bool)

(declare-fun lt!860702 () Int)

(assert (=> d!687594 (>= lt!860702 0)))

(declare-fun e!1488847 () Int)

(assert (=> d!687594 (= lt!860702 e!1488847)))

(declare-fun c!368622 () Bool)

(assert (=> d!687594 (= c!368622 ((_ is Nil!27668) (innerList!9133 (xs!12039 (right!21336 acc!252)))))))

(assert (=> d!687594 (= (size!21934 (innerList!9133 (xs!12039 (right!21336 acc!252)))) lt!860702)))

(declare-fun b!2323262 () Bool)

(assert (=> b!2323262 (= e!1488847 0)))

(declare-fun b!2323263 () Bool)

(assert (=> b!2323263 (= e!1488847 (+ 1 (size!21934 (t!207446 (innerList!9133 (xs!12039 (right!21336 acc!252)))))))))

(assert (= (and d!687594 c!368622) b!2323262))

(assert (= (and d!687594 (not c!368622)) b!2323263))

(declare-fun m!2753109 () Bool)

(assert (=> b!2323263 m!2753109))

(assert (=> d!687302 d!687594))

(declare-fun d!687596 () Bool)

(assert (=> d!687596 (= (isEmpty!15799 (list!11013 (left!21006 acc!252))) ((_ is Nil!27668) (list!11013 (left!21006 acc!252))))))

(assert (=> d!687278 d!687596))

(assert (=> d!687278 d!687450))

(declare-fun d!687598 () Bool)

(declare-fun lt!860703 () Int)

(assert (=> d!687598 (= lt!860703 (size!21934 (list!11013 (left!21006 acc!252))))))

(assert (=> d!687598 (= lt!860703 (ite ((_ is Empty!9073) (left!21006 acc!252)) 0 (ite ((_ is Leaf!13319) (left!21006 acc!252)) (csize!18377 (left!21006 acc!252)) (csize!18376 (left!21006 acc!252)))))))

(assert (=> d!687598 (= (size!21936 (left!21006 acc!252)) lt!860703)))

(declare-fun bs!459149 () Bool)

(assert (= bs!459149 d!687598))

(assert (=> bs!459149 m!2752189))

(assert (=> bs!459149 m!2752189))

(assert (=> bs!459149 m!2753087))

(assert (=> d!687278 d!687598))

(declare-fun d!687600 () Bool)

(assert (=> d!687600 (= (inv!37640 (xs!12039 (left!21006 (left!21006 acc!252)))) (<= (size!21934 (innerList!9133 (xs!12039 (left!21006 (left!21006 acc!252))))) 2147483647))))

(declare-fun bs!459150 () Bool)

(assert (= bs!459150 d!687600))

(declare-fun m!2753111 () Bool)

(assert (=> bs!459150 m!2753111))

(assert (=> b!2322923 d!687600))

(declare-fun d!687602 () Bool)

(declare-fun lt!860704 () Int)

(assert (=> d!687602 (>= lt!860704 0)))

(declare-fun e!1488848 () Int)

(assert (=> d!687602 (= lt!860704 e!1488848)))

(declare-fun c!368623 () Bool)

(assert (=> d!687602 (= c!368623 ((_ is Nil!27668) (list!11011 (xs!12039 (right!21336 acc!252)))))))

(assert (=> d!687602 (= (size!21934 (list!11011 (xs!12039 (right!21336 acc!252)))) lt!860704)))

(declare-fun b!2323264 () Bool)

(assert (=> b!2323264 (= e!1488848 0)))

(declare-fun b!2323265 () Bool)

(assert (=> b!2323265 (= e!1488848 (+ 1 (size!21934 (t!207446 (list!11011 (xs!12039 (right!21336 acc!252)))))))))

(assert (= (and d!687602 c!368623) b!2323264))

(assert (= (and d!687602 (not c!368623)) b!2323265))

(declare-fun m!2753113 () Bool)

(assert (=> b!2323265 m!2753113))

(assert (=> b!2322785 d!687602))

(declare-fun d!687604 () Bool)

(assert (=> d!687604 (= (list!11011 (xs!12039 (right!21336 acc!252))) (innerList!9133 (xs!12039 (right!21336 acc!252))))))

(assert (=> b!2322785 d!687604))

(declare-fun b!2323266 () Bool)

(declare-fun e!1488849 () Bool)

(declare-fun e!1488850 () Bool)

(assert (=> b!2323266 (= e!1488849 e!1488850)))

(declare-fun res!992435 () Bool)

(assert (=> b!2323266 (=> (not res!992435) (not e!1488850))))

(assert (=> b!2323266 (= res!992435 (<= (- 1) (- (height!1331 (left!21006 (right!21336 (Leaf!13319 lt!860576 512)))) (height!1331 (right!21336 (right!21336 (Leaf!13319 lt!860576 512)))))))))

(declare-fun d!687606 () Bool)

(declare-fun res!992438 () Bool)

(assert (=> d!687606 (=> res!992438 e!1488849)))

(assert (=> d!687606 (= res!992438 (not ((_ is Node!9073) (right!21336 (Leaf!13319 lt!860576 512)))))))

(assert (=> d!687606 (= (isBalanced!2767 (right!21336 (Leaf!13319 lt!860576 512))) e!1488849)))

(declare-fun b!2323267 () Bool)

(declare-fun res!992434 () Bool)

(assert (=> b!2323267 (=> (not res!992434) (not e!1488850))))

(assert (=> b!2323267 (= res!992434 (not (isEmpty!15797 (left!21006 (right!21336 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2323268 () Bool)

(declare-fun res!992436 () Bool)

(assert (=> b!2323268 (=> (not res!992436) (not e!1488850))))

(assert (=> b!2323268 (= res!992436 (isBalanced!2767 (right!21336 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323269 () Bool)

(declare-fun res!992437 () Bool)

(assert (=> b!2323269 (=> (not res!992437) (not e!1488850))))

(assert (=> b!2323269 (= res!992437 (isBalanced!2767 (left!21006 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323270 () Bool)

(declare-fun res!992433 () Bool)

(assert (=> b!2323270 (=> (not res!992433) (not e!1488850))))

(assert (=> b!2323270 (= res!992433 (<= (- (height!1331 (left!21006 (right!21336 (Leaf!13319 lt!860576 512)))) (height!1331 (right!21336 (right!21336 (Leaf!13319 lt!860576 512))))) 1))))

(declare-fun b!2323271 () Bool)

(assert (=> b!2323271 (= e!1488850 (not (isEmpty!15797 (right!21336 (right!21336 (Leaf!13319 lt!860576 512))))))))

(assert (= (and d!687606 (not res!992438)) b!2323266))

(assert (= (and b!2323266 res!992435) b!2323270))

(assert (= (and b!2323270 res!992433) b!2323269))

(assert (= (and b!2323269 res!992437) b!2323268))

(assert (= (and b!2323268 res!992436) b!2323267))

(assert (= (and b!2323267 res!992434) b!2323271))

(declare-fun m!2753115 () Bool)

(assert (=> b!2323271 m!2753115))

(declare-fun m!2753117 () Bool)

(assert (=> b!2323267 m!2753117))

(declare-fun m!2753119 () Bool)

(assert (=> b!2323266 m!2753119))

(declare-fun m!2753121 () Bool)

(assert (=> b!2323266 m!2753121))

(declare-fun m!2753123 () Bool)

(assert (=> b!2323268 m!2753123))

(declare-fun m!2753125 () Bool)

(assert (=> b!2323269 m!2753125))

(assert (=> b!2323270 m!2753119))

(assert (=> b!2323270 m!2753121))

(assert (=> b!2322725 d!687606))

(declare-fun d!687608 () Bool)

(assert (=> d!687608 (= (max!0 (height!1331 (left!21006 (right!21336 acc!252))) (height!1331 (right!21336 (right!21336 acc!252)))) (ite (< (height!1331 (left!21006 (right!21336 acc!252))) (height!1331 (right!21336 (right!21336 acc!252)))) (height!1331 (right!21336 (right!21336 acc!252))) (height!1331 (left!21006 (right!21336 acc!252)))))))

(assert (=> b!2322781 d!687608))

(assert (=> b!2322781 d!687466))

(assert (=> b!2322781 d!687468))

(declare-fun d!687610 () Bool)

(declare-fun lt!860705 () Int)

(assert (=> d!687610 (>= lt!860705 0)))

(declare-fun e!1488851 () Int)

(assert (=> d!687610 (= lt!860705 e!1488851)))

(declare-fun c!368624 () Bool)

(assert (=> d!687610 (= c!368624 ((_ is Nil!27668) lt!860652))))

(assert (=> d!687610 (= (size!21934 lt!860652) lt!860705)))

(declare-fun b!2323272 () Bool)

(assert (=> b!2323272 (= e!1488851 0)))

(declare-fun b!2323273 () Bool)

(assert (=> b!2323273 (= e!1488851 (+ 1 (size!21934 (t!207446 lt!860652))))))

(assert (= (and d!687610 c!368624) b!2323272))

(assert (= (and d!687610 (not c!368624)) b!2323273))

(declare-fun m!2753127 () Bool)

(assert (=> b!2323273 m!2753127))

(assert (=> b!2322906 d!687610))

(declare-fun d!687612 () Bool)

(declare-fun lt!860706 () Int)

(assert (=> d!687612 (>= lt!860706 0)))

(declare-fun e!1488852 () Int)

(assert (=> d!687612 (= lt!860706 e!1488852)))

(declare-fun c!368625 () Bool)

(assert (=> d!687612 (= c!368625 ((_ is Nil!27668) (list!11013 acc!252)))))

(assert (=> d!687612 (= (size!21934 (list!11013 acc!252)) lt!860706)))

(declare-fun b!2323274 () Bool)

(assert (=> b!2323274 (= e!1488852 0)))

(declare-fun b!2323275 () Bool)

(assert (=> b!2323275 (= e!1488852 (+ 1 (size!21934 (t!207446 (list!11013 acc!252)))))))

(assert (= (and d!687612 c!368625) b!2323274))

(assert (= (and d!687612 (not c!368625)) b!2323275))

(assert (=> b!2323275 m!2752983))

(assert (=> b!2322906 d!687612))

(declare-fun d!687614 () Bool)

(declare-fun lt!860707 () Int)

(assert (=> d!687614 (>= lt!860707 0)))

(declare-fun e!1488853 () Int)

(assert (=> d!687614 (= lt!860707 e!1488853)))

(declare-fun c!368626 () Bool)

(assert (=> d!687614 (= c!368626 ((_ is Nil!27668) (list!11013 (Leaf!13319 lt!860576 512))))))

(assert (=> d!687614 (= (size!21934 (list!11013 (Leaf!13319 lt!860576 512))) lt!860707)))

(declare-fun b!2323276 () Bool)

(assert (=> b!2323276 (= e!1488853 0)))

(declare-fun b!2323277 () Bool)

(assert (=> b!2323277 (= e!1488853 (+ 1 (size!21934 (t!207446 (list!11013 (Leaf!13319 lt!860576 512))))))))

(assert (= (and d!687614 c!368626) b!2323276))

(assert (= (and d!687614 (not c!368626)) b!2323277))

(declare-fun m!2753129 () Bool)

(assert (=> b!2323277 m!2753129))

(assert (=> b!2322906 d!687614))

(declare-fun d!687616 () Bool)

(assert (=> d!687616 (= (height!1331 (ite c!368459 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) lt!860620)) (ite ((_ is Empty!9073) (ite c!368459 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) lt!860620)) 0 (ite ((_ is Leaf!13319) (ite c!368459 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) lt!860620)) 1 (cheight!9284 (ite c!368459 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) lt!860620)))))))

(assert (=> bm!138504 d!687616))

(declare-fun d!687618 () Bool)

(declare-fun lt!860708 () Int)

(assert (=> d!687618 (>= lt!860708 0)))

(declare-fun e!1488854 () Int)

(assert (=> d!687618 (= lt!860708 e!1488854)))

(declare-fun c!368627 () Bool)

(assert (=> d!687618 (= c!368627 ((_ is Nil!27668) (list!11011 (xs!12039 acc!252))))))

(assert (=> d!687618 (= (size!21934 (list!11011 (xs!12039 acc!252))) lt!860708)))

(declare-fun b!2323278 () Bool)

(assert (=> b!2323278 (= e!1488854 0)))

(declare-fun b!2323279 () Bool)

(assert (=> b!2323279 (= e!1488854 (+ 1 (size!21934 (t!207446 (list!11011 (xs!12039 acc!252))))))))

(assert (= (and d!687618 c!368627) b!2323278))

(assert (= (and d!687618 (not c!368627)) b!2323279))

(declare-fun m!2753131 () Bool)

(assert (=> b!2323279 m!2753131))

(assert (=> b!2322697 d!687618))

(assert (=> b!2322697 d!687514))

(declare-fun d!687620 () Bool)

(assert (=> d!687620 (= (height!1331 (left!21006 (left!21006 acc!252))) (ite ((_ is Empty!9073) (left!21006 (left!21006 acc!252))) 0 (ite ((_ is Leaf!13319) (left!21006 (left!21006 acc!252))) 1 (cheight!9284 (left!21006 (left!21006 acc!252))))))))

(assert (=> b!2322731 d!687620))

(declare-fun d!687622 () Bool)

(assert (=> d!687622 (= (height!1331 (right!21336 (left!21006 acc!252))) (ite ((_ is Empty!9073) (right!21336 (left!21006 acc!252))) 0 (ite ((_ is Leaf!13319) (right!21336 (left!21006 acc!252))) 1 (cheight!9284 (right!21336 (left!21006 acc!252))))))))

(assert (=> b!2322731 d!687622))

(declare-fun b!2323280 () Bool)

(declare-fun e!1488855 () Bool)

(declare-fun e!1488856 () Bool)

(assert (=> b!2323280 (= e!1488855 e!1488856)))

(declare-fun res!992441 () Bool)

(assert (=> b!2323280 (=> (not res!992441) (not e!1488856))))

(assert (=> b!2323280 (= res!992441 (<= (- 1) (- (height!1331 (left!21006 (right!21336 lt!860609))) (height!1331 (right!21336 (right!21336 lt!860609))))))))

(declare-fun d!687624 () Bool)

(declare-fun res!992444 () Bool)

(assert (=> d!687624 (=> res!992444 e!1488855)))

(assert (=> d!687624 (= res!992444 (not ((_ is Node!9073) (right!21336 lt!860609))))))

(assert (=> d!687624 (= (isBalanced!2767 (right!21336 lt!860609)) e!1488855)))

(declare-fun b!2323281 () Bool)

(declare-fun res!992440 () Bool)

(assert (=> b!2323281 (=> (not res!992440) (not e!1488856))))

(assert (=> b!2323281 (= res!992440 (not (isEmpty!15797 (left!21006 (right!21336 lt!860609)))))))

(declare-fun b!2323282 () Bool)

(declare-fun res!992442 () Bool)

(assert (=> b!2323282 (=> (not res!992442) (not e!1488856))))

(assert (=> b!2323282 (= res!992442 (isBalanced!2767 (right!21336 (right!21336 lt!860609))))))

(declare-fun b!2323283 () Bool)

(declare-fun res!992443 () Bool)

(assert (=> b!2323283 (=> (not res!992443) (not e!1488856))))

(assert (=> b!2323283 (= res!992443 (isBalanced!2767 (left!21006 (right!21336 lt!860609))))))

(declare-fun b!2323284 () Bool)

(declare-fun res!992439 () Bool)

(assert (=> b!2323284 (=> (not res!992439) (not e!1488856))))

(assert (=> b!2323284 (= res!992439 (<= (- (height!1331 (left!21006 (right!21336 lt!860609))) (height!1331 (right!21336 (right!21336 lt!860609)))) 1))))

(declare-fun b!2323285 () Bool)

(assert (=> b!2323285 (= e!1488856 (not (isEmpty!15797 (right!21336 (right!21336 lt!860609)))))))

(assert (= (and d!687624 (not res!992444)) b!2323280))

(assert (= (and b!2323280 res!992441) b!2323284))

(assert (= (and b!2323284 res!992439) b!2323283))

(assert (= (and b!2323283 res!992443) b!2323282))

(assert (= (and b!2323282 res!992442) b!2323281))

(assert (= (and b!2323281 res!992440) b!2323285))

(declare-fun m!2753133 () Bool)

(assert (=> b!2323285 m!2753133))

(declare-fun m!2753135 () Bool)

(assert (=> b!2323281 m!2753135))

(declare-fun m!2753137 () Bool)

(assert (=> b!2323280 m!2753137))

(declare-fun m!2753139 () Bool)

(assert (=> b!2323280 m!2753139))

(declare-fun m!2753141 () Bool)

(assert (=> b!2323282 m!2753141))

(declare-fun m!2753143 () Bool)

(assert (=> b!2323283 m!2753143))

(assert (=> b!2323284 m!2753137))

(assert (=> b!2323284 m!2753139))

(assert (=> b!2322774 d!687624))

(assert (=> b!2322640 d!687330))

(assert (=> b!2322640 d!687334))

(declare-fun b!2323286 () Bool)

(declare-fun e!1488857 () Bool)

(declare-fun e!1488858 () Bool)

(assert (=> b!2323286 (= e!1488857 e!1488858)))

(declare-fun res!992447 () Bool)

(assert (=> b!2323286 (=> (not res!992447) (not e!1488858))))

(assert (=> b!2323286 (= res!992447 (<= (- 1) (- (height!1331 (left!21006 (left!21006 (right!21336 acc!252)))) (height!1331 (right!21336 (left!21006 (right!21336 acc!252)))))))))

(declare-fun d!687626 () Bool)

(declare-fun res!992450 () Bool)

(assert (=> d!687626 (=> res!992450 e!1488857)))

(assert (=> d!687626 (= res!992450 (not ((_ is Node!9073) (left!21006 (right!21336 acc!252)))))))

(assert (=> d!687626 (= (isBalanced!2767 (left!21006 (right!21336 acc!252))) e!1488857)))

(declare-fun b!2323287 () Bool)

(declare-fun res!992446 () Bool)

(assert (=> b!2323287 (=> (not res!992446) (not e!1488858))))

(assert (=> b!2323287 (= res!992446 (not (isEmpty!15797 (left!21006 (left!21006 (right!21336 acc!252))))))))

(declare-fun b!2323288 () Bool)

(declare-fun res!992448 () Bool)

(assert (=> b!2323288 (=> (not res!992448) (not e!1488858))))

(assert (=> b!2323288 (= res!992448 (isBalanced!2767 (right!21336 (left!21006 (right!21336 acc!252)))))))

(declare-fun b!2323289 () Bool)

(declare-fun res!992449 () Bool)

(assert (=> b!2323289 (=> (not res!992449) (not e!1488858))))

(assert (=> b!2323289 (= res!992449 (isBalanced!2767 (left!21006 (left!21006 (right!21336 acc!252)))))))

(declare-fun b!2323290 () Bool)

(declare-fun res!992445 () Bool)

(assert (=> b!2323290 (=> (not res!992445) (not e!1488858))))

(assert (=> b!2323290 (= res!992445 (<= (- (height!1331 (left!21006 (left!21006 (right!21336 acc!252)))) (height!1331 (right!21336 (left!21006 (right!21336 acc!252))))) 1))))

(declare-fun b!2323291 () Bool)

(assert (=> b!2323291 (= e!1488858 (not (isEmpty!15797 (right!21336 (left!21006 (right!21336 acc!252))))))))

(assert (= (and d!687626 (not res!992450)) b!2323286))

(assert (= (and b!2323286 res!992447) b!2323290))

(assert (= (and b!2323290 res!992445) b!2323289))

(assert (= (and b!2323289 res!992449) b!2323288))

(assert (= (and b!2323288 res!992448) b!2323287))

(assert (= (and b!2323287 res!992446) b!2323291))

(declare-fun m!2753145 () Bool)

(assert (=> b!2323291 m!2753145))

(declare-fun m!2753147 () Bool)

(assert (=> b!2323287 m!2753147))

(assert (=> b!2323286 m!2752775))

(assert (=> b!2323286 m!2752777))

(declare-fun m!2753149 () Bool)

(assert (=> b!2323288 m!2753149))

(declare-fun m!2753151 () Bool)

(assert (=> b!2323289 m!2753151))

(assert (=> b!2323290 m!2752775))

(assert (=> b!2323290 m!2752777))

(assert (=> b!2322742 d!687626))

(declare-fun b!2323292 () Bool)

(declare-fun e!1488863 () Bool)

(assert (=> b!2323292 (= e!1488863 (appendAssoc!157 (++!6824 (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (list!11013 (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))) (list!11013 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))) (list!11013 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun b!2323293 () Bool)

(declare-fun e!1488860 () Bool)

(assert (=> b!2323293 (= e!1488860 e!1488863)))

(declare-fun res!992453 () Bool)

(assert (=> b!2323293 (=> (not res!992453) (not e!1488863))))

(assert (=> b!2323293 (= res!992453 (appendAssoc!157 (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (list!11013 (left!21006 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))) (list!11013 (right!21336 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))))

(declare-fun b!2323294 () Bool)

(declare-fun e!1488866 () Bool)

(declare-fun e!1488864 () Bool)

(assert (=> b!2323294 (= e!1488866 e!1488864)))

(declare-fun res!992452 () Bool)

(assert (=> b!2323294 (=> (not res!992452) (not e!1488864))))

(assert (=> b!2323294 (= res!992452 (appendAssoc!157 (list!11013 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (list!11013 (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (list!11013 (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun b!2323295 () Bool)

(declare-fun e!1488862 () Bool)

(assert (=> b!2323295 (= e!1488862 (appendAssoc!157 (list!11013 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (list!11013 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (++!6824 (list!11013 (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (list!11013 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun b!2323296 () Bool)

(assert (=> b!2323296 (= e!1488864 e!1488860)))

(declare-fun res!992451 () Bool)

(assert (=> b!2323296 (=> res!992451 e!1488860)))

(assert (=> b!2323296 (= res!992451 (not ((_ is Node!9073) (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun b!2323297 () Bool)

(declare-fun e!1488865 () Bool)

(assert (=> b!2323297 (= e!1488865 e!1488862)))

(declare-fun res!992455 () Bool)

(assert (=> b!2323297 (=> (not res!992455) (not e!1488862))))

(assert (=> b!2323297 (= res!992455 (appendAssoc!157 (list!11013 (left!21006 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (list!11013 (right!21336 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) (list!11013 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(declare-fun d!687628 () Bool)

(declare-fun e!1488867 () Bool)

(assert (=> d!687628 e!1488867))

(declare-fun res!992456 () Bool)

(assert (=> d!687628 (=> (not res!992456) (not e!1488867))))

(declare-fun e!1488861 () Bool)

(assert (=> d!687628 (= res!992456 e!1488861)))

(declare-fun res!992458 () Bool)

(assert (=> d!687628 (=> res!992458 e!1488861)))

(assert (=> d!687628 (= res!992458 (not ((_ is Node!9073) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))))

(assert (=> d!687628 (= (appendAssocInst!608 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) true)))

(declare-fun b!2323298 () Bool)

(declare-fun e!1488859 () Bool)

(assert (=> b!2323298 (= e!1488861 e!1488859)))

(declare-fun res!992457 () Bool)

(assert (=> b!2323298 (=> (not res!992457) (not e!1488859))))

(assert (=> b!2323298 (= res!992457 (appendAssoc!157 (list!11013 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (list!11013 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (list!11013 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(declare-fun b!2323299 () Bool)

(assert (=> b!2323299 (= e!1488859 e!1488865)))

(declare-fun res!992454 () Bool)

(assert (=> b!2323299 (=> res!992454 e!1488865)))

(assert (=> b!2323299 (= res!992454 (not ((_ is Node!9073) (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))))))

(declare-fun b!2323300 () Bool)

(assert (=> b!2323300 (= e!1488867 e!1488866)))

(declare-fun res!992459 () Bool)

(assert (=> b!2323300 (=> res!992459 e!1488866)))

(assert (=> b!2323300 (= res!992459 (not ((_ is Node!9073) (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(assert (= (and d!687628 (not res!992458)) b!2323298))

(assert (= (and b!2323298 res!992457) b!2323299))

(assert (= (and b!2323299 (not res!992454)) b!2323297))

(assert (= (and b!2323297 res!992455) b!2323295))

(assert (= (and d!687628 res!992456) b!2323300))

(assert (= (and b!2323300 (not res!992459)) b!2323294))

(assert (= (and b!2323294 res!992452) b!2323296))

(assert (= (and b!2323296 (not res!992451)) b!2323293))

(assert (= (and b!2323293 res!992453) b!2323292))

(assert (=> b!2323294 m!2752149))

(assert (=> b!2323294 m!2752875))

(assert (=> b!2323294 m!2752877))

(assert (=> b!2323294 m!2752149))

(assert (=> b!2323294 m!2752875))

(assert (=> b!2323294 m!2752877))

(declare-fun m!2753153 () Bool)

(assert (=> b!2323294 m!2753153))

(assert (=> b!2323293 m!2752149))

(declare-fun m!2753155 () Bool)

(assert (=> b!2323293 m!2753155))

(declare-fun m!2753157 () Bool)

(assert (=> b!2323293 m!2753157))

(assert (=> b!2323293 m!2752149))

(assert (=> b!2323293 m!2753155))

(assert (=> b!2323293 m!2753157))

(declare-fun m!2753159 () Bool)

(assert (=> b!2323293 m!2753159))

(assert (=> b!2323298 m!2752867))

(assert (=> b!2323298 m!2752869))

(assert (=> b!2323298 m!2752151))

(assert (=> b!2323298 m!2752867))

(assert (=> b!2323298 m!2752869))

(assert (=> b!2323298 m!2752151))

(declare-fun m!2753161 () Bool)

(assert (=> b!2323298 m!2753161))

(declare-fun m!2753163 () Bool)

(assert (=> b!2323297 m!2753163))

(declare-fun m!2753165 () Bool)

(assert (=> b!2323297 m!2753165))

(assert (=> b!2323297 m!2752151))

(assert (=> b!2323297 m!2753163))

(assert (=> b!2323297 m!2753165))

(assert (=> b!2323297 m!2752151))

(declare-fun m!2753167 () Bool)

(assert (=> b!2323297 m!2753167))

(assert (=> b!2323295 m!2752867))

(assert (=> b!2323295 m!2753165))

(assert (=> b!2323295 m!2753165))

(assert (=> b!2323295 m!2752151))

(declare-fun m!2753169 () Bool)

(assert (=> b!2323295 m!2753169))

(assert (=> b!2323295 m!2753163))

(assert (=> b!2323295 m!2752151))

(assert (=> b!2323295 m!2752867))

(assert (=> b!2323295 m!2753163))

(assert (=> b!2323295 m!2753169))

(declare-fun m!2753171 () Bool)

(assert (=> b!2323295 m!2753171))

(assert (=> b!2323292 m!2752149))

(assert (=> b!2323292 m!2753155))

(declare-fun m!2753173 () Bool)

(assert (=> b!2323292 m!2753173))

(assert (=> b!2323292 m!2753173))

(assert (=> b!2323292 m!2753157))

(assert (=> b!2323292 m!2752877))

(declare-fun m!2753175 () Bool)

(assert (=> b!2323292 m!2753175))

(assert (=> b!2323292 m!2753155))

(assert (=> b!2323292 m!2753157))

(assert (=> b!2323292 m!2752877))

(assert (=> b!2323292 m!2752149))

(assert (=> d!687250 d!687628))

(declare-fun b!2323301 () Bool)

(declare-fun e!1488868 () Bool)

(declare-fun e!1488869 () Bool)

(assert (=> b!2323301 (= e!1488868 e!1488869)))

(declare-fun res!992462 () Bool)

(assert (=> b!2323301 (=> (not res!992462) (not e!1488869))))

(assert (=> b!2323301 (= res!992462 (<= (- 1) (- (height!1331 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (height!1331 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))))))

(declare-fun d!687630 () Bool)

(declare-fun res!992465 () Bool)

(assert (=> d!687630 (=> res!992465 e!1488868)))

(assert (=> d!687630 (= res!992465 (not ((_ is Node!9073) (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))))

(assert (=> d!687630 (= (isBalanced!2767 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) e!1488868)))

(declare-fun b!2323302 () Bool)

(declare-fun res!992461 () Bool)

(assert (=> b!2323302 (=> (not res!992461) (not e!1488869))))

(assert (=> b!2323302 (= res!992461 (not (isEmpty!15797 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))))))

(declare-fun b!2323303 () Bool)

(declare-fun res!992463 () Bool)

(assert (=> b!2323303 (=> (not res!992463) (not e!1488869))))

(assert (=> b!2323303 (= res!992463 (isBalanced!2767 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))))

(declare-fun b!2323304 () Bool)

(declare-fun res!992464 () Bool)

(assert (=> b!2323304 (=> (not res!992464) (not e!1488869))))

(assert (=> b!2323304 (= res!992464 (isBalanced!2767 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))))))

(declare-fun b!2323305 () Bool)

(declare-fun res!992460 () Bool)

(assert (=> b!2323305 (=> (not res!992460) (not e!1488869))))

(assert (=> b!2323305 (= res!992460 (<= (- (height!1331 (left!21006 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252))) (height!1331 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))) 1))))

(declare-fun b!2323306 () Bool)

(assert (=> b!2323306 (= e!1488869 (not (isEmpty!15797 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)))))))

(assert (= (and d!687630 (not res!992465)) b!2323301))

(assert (= (and b!2323301 res!992462) b!2323305))

(assert (= (and b!2323305 res!992460) b!2323304))

(assert (= (and b!2323304 res!992464) b!2323303))

(assert (= (and b!2323303 res!992463) b!2323302))

(assert (= (and b!2323302 res!992461) b!2323306))

(declare-fun m!2753177 () Bool)

(assert (=> b!2323306 m!2753177))

(declare-fun m!2753179 () Bool)

(assert (=> b!2323302 m!2753179))

(declare-fun m!2753181 () Bool)

(assert (=> b!2323301 m!2753181))

(declare-fun m!2753183 () Bool)

(assert (=> b!2323301 m!2753183))

(declare-fun m!2753185 () Bool)

(assert (=> b!2323303 m!2753185))

(declare-fun m!2753187 () Bool)

(assert (=> b!2323304 m!2753187))

(assert (=> b!2323305 m!2753181))

(assert (=> b!2323305 m!2753183))

(assert (=> d!687250 d!687630))

(declare-fun d!687632 () Bool)

(declare-fun res!992466 () Bool)

(declare-fun e!1488870 () Bool)

(assert (=> d!687632 (=> (not res!992466) (not e!1488870))))

(assert (=> d!687632 (= res!992466 (<= (size!21934 (list!11011 (xs!12039 (left!21006 (left!21006 acc!252))))) 512))))

(assert (=> d!687632 (= (inv!37644 (left!21006 (left!21006 acc!252))) e!1488870)))

(declare-fun b!2323307 () Bool)

(declare-fun res!992467 () Bool)

(assert (=> b!2323307 (=> (not res!992467) (not e!1488870))))

(assert (=> b!2323307 (= res!992467 (= (csize!18377 (left!21006 (left!21006 acc!252))) (size!21934 (list!11011 (xs!12039 (left!21006 (left!21006 acc!252)))))))))

(declare-fun b!2323308 () Bool)

(assert (=> b!2323308 (= e!1488870 (and (> (csize!18377 (left!21006 (left!21006 acc!252))) 0) (<= (csize!18377 (left!21006 (left!21006 acc!252))) 512)))))

(assert (= (and d!687632 res!992466) b!2323307))

(assert (= (and b!2323307 res!992467) b!2323308))

(declare-fun m!2753189 () Bool)

(assert (=> d!687632 m!2753189))

(assert (=> d!687632 m!2753189))

(declare-fun m!2753191 () Bool)

(assert (=> d!687632 m!2753191))

(assert (=> b!2323307 m!2753189))

(assert (=> b!2323307 m!2753189))

(assert (=> b!2323307 m!2753191))

(assert (=> b!2322768 d!687632))

(declare-fun d!687634 () Bool)

(declare-fun c!368628 () Bool)

(assert (=> d!687634 (= c!368628 ((_ is Node!9073) (left!21006 (right!21336 (left!21006 acc!252)))))))

(declare-fun e!1488871 () Bool)

(assert (=> d!687634 (= (inv!37639 (left!21006 (right!21336 (left!21006 acc!252)))) e!1488871)))

(declare-fun b!2323309 () Bool)

(assert (=> b!2323309 (= e!1488871 (inv!37643 (left!21006 (right!21336 (left!21006 acc!252)))))))

(declare-fun b!2323310 () Bool)

(declare-fun e!1488872 () Bool)

(assert (=> b!2323310 (= e!1488871 e!1488872)))

(declare-fun res!992468 () Bool)

(assert (=> b!2323310 (= res!992468 (not ((_ is Leaf!13319) (left!21006 (right!21336 (left!21006 acc!252))))))))

(assert (=> b!2323310 (=> res!992468 e!1488872)))

(declare-fun b!2323311 () Bool)

(assert (=> b!2323311 (= e!1488872 (inv!37644 (left!21006 (right!21336 (left!21006 acc!252)))))))

(assert (= (and d!687634 c!368628) b!2323309))

(assert (= (and d!687634 (not c!368628)) b!2323310))

(assert (= (and b!2323310 (not res!992468)) b!2323311))

(declare-fun m!2753193 () Bool)

(assert (=> b!2323309 m!2753193))

(declare-fun m!2753195 () Bool)

(assert (=> b!2323311 m!2753195))

(assert (=> b!2322925 d!687634))

(declare-fun d!687636 () Bool)

(declare-fun c!368629 () Bool)

(assert (=> d!687636 (= c!368629 ((_ is Node!9073) (right!21336 (right!21336 (left!21006 acc!252)))))))

(declare-fun e!1488873 () Bool)

(assert (=> d!687636 (= (inv!37639 (right!21336 (right!21336 (left!21006 acc!252)))) e!1488873)))

(declare-fun b!2323312 () Bool)

(assert (=> b!2323312 (= e!1488873 (inv!37643 (right!21336 (right!21336 (left!21006 acc!252)))))))

(declare-fun b!2323313 () Bool)

(declare-fun e!1488874 () Bool)

(assert (=> b!2323313 (= e!1488873 e!1488874)))

(declare-fun res!992469 () Bool)

(assert (=> b!2323313 (= res!992469 (not ((_ is Leaf!13319) (right!21336 (right!21336 (left!21006 acc!252))))))))

(assert (=> b!2323313 (=> res!992469 e!1488874)))

(declare-fun b!2323314 () Bool)

(assert (=> b!2323314 (= e!1488874 (inv!37644 (right!21336 (right!21336 (left!21006 acc!252)))))))

(assert (= (and d!687636 c!368629) b!2323312))

(assert (= (and d!687636 (not c!368629)) b!2323313))

(assert (= (and b!2323313 (not res!992469)) b!2323314))

(declare-fun m!2753197 () Bool)

(assert (=> b!2323312 m!2753197))

(declare-fun m!2753199 () Bool)

(assert (=> b!2323314 m!2753199))

(assert (=> b!2322925 d!687636))

(declare-fun b!2323317 () Bool)

(declare-fun res!992470 () Bool)

(declare-fun e!1488875 () Bool)

(assert (=> b!2323317 (=> (not res!992470) (not e!1488875))))

(declare-fun lt!860709 () List!27766)

(assert (=> b!2323317 (= res!992470 (= (size!21934 lt!860709) (+ (size!21934 (list!11013 acc!252)) (size!21934 (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(declare-fun b!2323315 () Bool)

(declare-fun e!1488876 () List!27766)

(assert (=> b!2323315 (= e!1488876 (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323316 () Bool)

(assert (=> b!2323316 (= e!1488876 (Cons!27668 (h!33069 (list!11013 acc!252)) (++!6824 (t!207446 (list!11013 acc!252)) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(declare-fun b!2323318 () Bool)

(assert (=> b!2323318 (= e!1488875 (or (not (= (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))) Nil!27668)) (= lt!860709 (list!11013 acc!252))))))

(declare-fun d!687638 () Bool)

(assert (=> d!687638 e!1488875))

(declare-fun res!992471 () Bool)

(assert (=> d!687638 (=> (not res!992471) (not e!1488875))))

(assert (=> d!687638 (= res!992471 (= (content!3744 lt!860709) ((_ map or) (content!3744 (list!11013 acc!252)) (content!3744 (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(assert (=> d!687638 (= lt!860709 e!1488876)))

(declare-fun c!368630 () Bool)

(assert (=> d!687638 (= c!368630 ((_ is Nil!27668) (list!11013 acc!252)))))

(assert (=> d!687638 (= (++!6824 (list!11013 acc!252) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) lt!860709)))

(assert (= (and d!687638 c!368630) b!2323315))

(assert (= (and d!687638 (not c!368630)) b!2323316))

(assert (= (and d!687638 res!992471) b!2323317))

(assert (= (and b!2323317 res!992470) b!2323318))

(declare-fun m!2753201 () Bool)

(assert (=> b!2323317 m!2753201))

(assert (=> b!2323317 m!2752061))

(assert (=> b!2323317 m!2752501))

(assert (=> b!2323317 m!2752445))

(declare-fun m!2753203 () Bool)

(assert (=> b!2323317 m!2753203))

(assert (=> b!2323316 m!2752445))

(declare-fun m!2753205 () Bool)

(assert (=> b!2323316 m!2753205))

(declare-fun m!2753207 () Bool)

(assert (=> d!687638 m!2753207))

(assert (=> d!687638 m!2752061))

(assert (=> d!687638 m!2752509))

(assert (=> d!687638 m!2752445))

(declare-fun m!2753209 () Bool)

(assert (=> d!687638 m!2753209))

(assert (=> b!2322858 d!687638))

(declare-fun bm!138570 () Bool)

(declare-fun call!138576 () List!27766)

(assert (=> bm!138570 (= call!138576 (++!6824 (++!6824 (list!11013 acc!252) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun d!687640 () Bool)

(declare-fun e!1488877 () Bool)

(assert (=> d!687640 e!1488877))

(declare-fun c!368631 () Bool)

(assert (=> d!687640 (= c!368631 ((_ is Nil!27668) (++!6824 (list!11013 acc!252) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(assert (=> d!687640 (= (appendAssoc!157 (++!6824 (list!11013 acc!252) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))) (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))) true)))

(declare-fun b!2323319 () Bool)

(declare-fun call!138575 () List!27766)

(declare-fun call!138577 () List!27766)

(assert (=> b!2323319 (= e!1488877 (= call!138575 call!138577))))

(declare-fun bm!138571 () Bool)

(declare-fun call!138578 () List!27766)

(assert (=> bm!138571 (= call!138578 (++!6824 (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))) (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323320 () Bool)

(assert (=> b!2323320 (= e!1488877 (= call!138575 call!138577))))

(declare-fun lt!860710 () Bool)

(assert (=> b!2323320 (= lt!860710 (appendAssoc!157 (t!207446 (++!6824 (list!11013 acc!252) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))) (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))) (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun bm!138572 () Bool)

(assert (=> bm!138572 (= call!138575 (++!6824 call!138576 (list!11013 (right!21336 (Leaf!13319 lt!860576 512)))))))

(declare-fun bm!138573 () Bool)

(assert (=> bm!138573 (= call!138577 (++!6824 (++!6824 (list!11013 acc!252) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) call!138578))))

(assert (= (and d!687640 c!368631) b!2323319))

(assert (= (and d!687640 (not c!368631)) b!2323320))

(assert (= (or b!2323319 b!2323320) bm!138571))

(assert (= (or b!2323319 b!2323320) bm!138570))

(assert (= (or b!2323319 b!2323320) bm!138573))

(assert (= (or b!2323319 b!2323320) bm!138572))

(assert (=> b!2323320 m!2752447))

(assert (=> b!2323320 m!2752441))

(declare-fun m!2753211 () Bool)

(assert (=> b!2323320 m!2753211))

(assert (=> bm!138572 m!2752441))

(declare-fun m!2753213 () Bool)

(assert (=> bm!138572 m!2753213))

(assert (=> bm!138573 m!2752481))

(declare-fun m!2753215 () Bool)

(assert (=> bm!138573 m!2753215))

(assert (=> bm!138570 m!2752481))

(assert (=> bm!138570 m!2752447))

(declare-fun m!2753217 () Bool)

(assert (=> bm!138570 m!2753217))

(assert (=> bm!138571 m!2752447))

(assert (=> bm!138571 m!2752441))

(declare-fun m!2753219 () Bool)

(assert (=> bm!138571 m!2753219))

(assert (=> b!2322858 d!687640))

(assert (=> b!2322858 d!687398))

(declare-fun b!2323321 () Bool)

(declare-fun e!1488878 () List!27766)

(assert (=> b!2323321 (= e!1488878 Nil!27668)))

(declare-fun b!2323323 () Bool)

(declare-fun e!1488879 () List!27766)

(assert (=> b!2323323 (= e!1488879 (list!11011 (xs!12039 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2323324 () Bool)

(assert (=> b!2323324 (= e!1488879 (++!6824 (list!11013 (left!21006 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))) (list!11013 (right!21336 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(declare-fun b!2323322 () Bool)

(assert (=> b!2323322 (= e!1488878 e!1488879)))

(declare-fun c!368633 () Bool)

(assert (=> b!2323322 (= c!368633 ((_ is Leaf!13319) (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))

(declare-fun d!687642 () Bool)

(declare-fun c!368632 () Bool)

(assert (=> d!687642 (= c!368632 ((_ is Empty!9073) (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))

(assert (=> d!687642 (= (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))) e!1488878)))

(assert (= (and d!687642 c!368632) b!2323321))

(assert (= (and d!687642 (not c!368632)) b!2323322))

(assert (= (and b!2323322 c!368633) b!2323323))

(assert (= (and b!2323322 (not c!368633)) b!2323324))

(declare-fun m!2753221 () Bool)

(assert (=> b!2323323 m!2753221))

(declare-fun m!2753223 () Bool)

(assert (=> b!2323324 m!2753223))

(declare-fun m!2753225 () Bool)

(assert (=> b!2323324 m!2753225))

(assert (=> b!2323324 m!2753223))

(assert (=> b!2323324 m!2753225))

(declare-fun m!2753227 () Bool)

(assert (=> b!2323324 m!2753227))

(assert (=> b!2322858 d!687642))

(assert (=> b!2322858 d!687474))

(declare-fun b!2323325 () Bool)

(declare-fun e!1488880 () List!27766)

(assert (=> b!2323325 (= e!1488880 Nil!27668)))

(declare-fun b!2323327 () Bool)

(declare-fun e!1488881 () List!27766)

(assert (=> b!2323327 (= e!1488881 (list!11011 (xs!12039 (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2323328 () Bool)

(assert (=> b!2323328 (= e!1488881 (++!6824 (list!11013 (left!21006 (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))) (list!11013 (right!21336 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(declare-fun b!2323326 () Bool)

(assert (=> b!2323326 (= e!1488880 e!1488881)))

(declare-fun c!368635 () Bool)

(assert (=> b!2323326 (= c!368635 ((_ is Leaf!13319) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))

(declare-fun d!687644 () Bool)

(declare-fun c!368634 () Bool)

(assert (=> d!687644 (= c!368634 ((_ is Empty!9073) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))

(assert (=> d!687644 (= (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))) e!1488880)))

(assert (= (and d!687644 c!368634) b!2323325))

(assert (= (and d!687644 (not c!368634)) b!2323326))

(assert (= (and b!2323326 c!368635) b!2323327))

(assert (= (and b!2323326 (not c!368635)) b!2323328))

(declare-fun m!2753229 () Bool)

(assert (=> b!2323327 m!2753229))

(declare-fun m!2753231 () Bool)

(assert (=> b!2323328 m!2753231))

(declare-fun m!2753233 () Bool)

(assert (=> b!2323328 m!2753233))

(assert (=> b!2323328 m!2753231))

(assert (=> b!2323328 m!2753233))

(declare-fun m!2753235 () Bool)

(assert (=> b!2323328 m!2753235))

(assert (=> b!2322858 d!687644))

(declare-fun d!687646 () Bool)

(declare-fun lt!860711 () Int)

(assert (=> d!687646 (>= lt!860711 0)))

(declare-fun e!1488882 () Int)

(assert (=> d!687646 (= lt!860711 e!1488882)))

(declare-fun c!368636 () Bool)

(assert (=> d!687646 (= c!368636 ((_ is Nil!27668) (t!207446 (innerList!9133 arr!18))))))

(assert (=> d!687646 (= (size!21934 (t!207446 (innerList!9133 arr!18))) lt!860711)))

(declare-fun b!2323329 () Bool)

(assert (=> b!2323329 (= e!1488882 0)))

(declare-fun b!2323330 () Bool)

(assert (=> b!2323330 (= e!1488882 (+ 1 (size!21934 (t!207446 (t!207446 (innerList!9133 arr!18))))))))

(assert (= (and d!687646 c!368636) b!2323329))

(assert (= (and d!687646 (not c!368636)) b!2323330))

(declare-fun m!2753237 () Bool)

(assert (=> b!2323330 m!2753237))

(assert (=> b!2322765 d!687646))

(declare-fun d!687648 () Bool)

(declare-fun res!992472 () Bool)

(declare-fun e!1488883 () Bool)

(assert (=> d!687648 (=> (not res!992472) (not e!1488883))))

(assert (=> d!687648 (= res!992472 (<= (size!21934 (list!11011 (xs!12039 (left!21006 (right!21336 acc!252))))) 512))))

(assert (=> d!687648 (= (inv!37644 (left!21006 (right!21336 acc!252))) e!1488883)))

(declare-fun b!2323331 () Bool)

(declare-fun res!992473 () Bool)

(assert (=> b!2323331 (=> (not res!992473) (not e!1488883))))

(assert (=> b!2323331 (= res!992473 (= (csize!18377 (left!21006 (right!21336 acc!252))) (size!21934 (list!11011 (xs!12039 (left!21006 (right!21336 acc!252)))))))))

(declare-fun b!2323332 () Bool)

(assert (=> b!2323332 (= e!1488883 (and (> (csize!18377 (left!21006 (right!21336 acc!252))) 0) (<= (csize!18377 (left!21006 (right!21336 acc!252))) 512)))))

(assert (= (and d!687648 res!992472) b!2323331))

(assert (= (and b!2323331 res!992473) b!2323332))

(assert (=> d!687648 m!2752897))

(assert (=> d!687648 m!2752897))

(declare-fun m!2753239 () Bool)

(assert (=> d!687648 m!2753239))

(assert (=> b!2323331 m!2752897))

(assert (=> b!2323331 m!2752897))

(assert (=> b!2323331 m!2753239))

(assert (=> b!2322681 d!687648))

(assert (=> b!2322735 d!687620))

(assert (=> b!2322735 d!687622))

(declare-fun d!687650 () Bool)

(assert (=> d!687650 (= (inv!37640 (xs!12039 (left!21006 (right!21336 acc!252)))) (<= (size!21934 (innerList!9133 (xs!12039 (left!21006 (right!21336 acc!252))))) 2147483647))))

(declare-fun bs!459151 () Bool)

(assert (= bs!459151 d!687650))

(declare-fun m!2753241 () Bool)

(assert (=> bs!459151 m!2753241))

(assert (=> b!2322931 d!687650))

(assert (=> d!687344 d!687602))

(assert (=> d!687344 d!687604))

(declare-fun d!687652 () Bool)

(assert (=> d!687652 (= (list!11011 (xs!12039 lt!860609)) (innerList!9133 (xs!12039 lt!860609)))))

(assert (=> b!2322885 d!687652))

(declare-fun d!687654 () Bool)

(declare-fun lt!860712 () Int)

(assert (=> d!687654 (= lt!860712 (size!21934 (list!11013 (left!21006 (right!21336 acc!252)))))))

(assert (=> d!687654 (= lt!860712 (ite ((_ is Empty!9073) (left!21006 (right!21336 acc!252))) 0 (ite ((_ is Leaf!13319) (left!21006 (right!21336 acc!252))) (csize!18377 (left!21006 (right!21336 acc!252))) (csize!18376 (left!21006 (right!21336 acc!252))))))))

(assert (=> d!687654 (= (size!21936 (left!21006 (right!21336 acc!252))) lt!860712)))

(declare-fun bs!459152 () Bool)

(assert (= bs!459152 d!687654))

(assert (=> bs!459152 m!2752453))

(assert (=> bs!459152 m!2752453))

(declare-fun m!2753243 () Bool)

(assert (=> bs!459152 m!2753243))

(assert (=> d!687342 d!687654))

(declare-fun d!687656 () Bool)

(declare-fun lt!860713 () Int)

(assert (=> d!687656 (= lt!860713 (size!21934 (list!11013 (right!21336 (right!21336 acc!252)))))))

(assert (=> d!687656 (= lt!860713 (ite ((_ is Empty!9073) (right!21336 (right!21336 acc!252))) 0 (ite ((_ is Leaf!13319) (right!21336 (right!21336 acc!252))) (csize!18377 (right!21336 (right!21336 acc!252))) (csize!18376 (right!21336 (right!21336 acc!252))))))))

(assert (=> d!687656 (= (size!21936 (right!21336 (right!21336 acc!252))) lt!860713)))

(declare-fun bs!459153 () Bool)

(assert (= bs!459153 d!687656))

(assert (=> bs!459153 m!2752455))

(assert (=> bs!459153 m!2752455))

(assert (=> bs!459153 m!2752917))

(assert (=> d!687342 d!687656))

(declare-fun b!2323333 () Bool)

(declare-fun e!1488884 () List!27766)

(assert (=> b!2323333 (= e!1488884 Nil!27668)))

(declare-fun b!2323335 () Bool)

(declare-fun e!1488885 () List!27766)

(assert (=> b!2323335 (= e!1488885 (list!11011 (xs!12039 lt!860634)))))

(declare-fun b!2323336 () Bool)

(assert (=> b!2323336 (= e!1488885 (++!6824 (list!11013 (left!21006 lt!860634)) (list!11013 (right!21336 lt!860634))))))

(declare-fun b!2323334 () Bool)

(assert (=> b!2323334 (= e!1488884 e!1488885)))

(declare-fun c!368638 () Bool)

(assert (=> b!2323334 (= c!368638 ((_ is Leaf!13319) lt!860634))))

(declare-fun d!687658 () Bool)

(declare-fun c!368637 () Bool)

(assert (=> d!687658 (= c!368637 ((_ is Empty!9073) lt!860634))))

(assert (=> d!687658 (= (list!11013 lt!860634) e!1488884)))

(assert (= (and d!687658 c!368637) b!2323333))

(assert (= (and d!687658 (not c!368637)) b!2323334))

(assert (= (and b!2323334 c!368638) b!2323335))

(assert (= (and b!2323334 (not c!368638)) b!2323336))

(declare-fun m!2753245 () Bool)

(assert (=> b!2323335 m!2753245))

(declare-fun m!2753247 () Bool)

(assert (=> b!2323336 m!2753247))

(declare-fun m!2753249 () Bool)

(assert (=> b!2323336 m!2753249))

(assert (=> b!2323336 m!2753247))

(assert (=> b!2323336 m!2753249))

(declare-fun m!2753251 () Bool)

(assert (=> b!2323336 m!2753251))

(assert (=> d!687292 d!687658))

(declare-fun b!2323339 () Bool)

(declare-fun res!992474 () Bool)

(declare-fun e!1488886 () Bool)

(assert (=> b!2323339 (=> (not res!992474) (not e!1488886))))

(declare-fun lt!860714 () List!27766)

(assert (=> b!2323339 (= res!992474 (= (size!21934 lt!860714) (+ (size!21934 (list!11013 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))) (size!21934 (list!11013 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))))))))

(declare-fun e!1488887 () List!27766)

(declare-fun b!2323337 () Bool)

(assert (=> b!2323337 (= e!1488887 (list!11013 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))))))

(declare-fun b!2323338 () Bool)

(assert (=> b!2323338 (= e!1488887 (Cons!27668 (h!33069 (list!11013 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))) (++!6824 (t!207446 (list!11013 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))) (list!11013 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun b!2323340 () Bool)

(assert (=> b!2323340 (= e!1488886 (or (not (= (list!11013 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))) Nil!27668)) (= lt!860714 (list!11013 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))))))

(declare-fun d!687660 () Bool)

(assert (=> d!687660 e!1488886))

(declare-fun res!992475 () Bool)

(assert (=> d!687660 (=> (not res!992475) (not e!1488886))))

(assert (=> d!687660 (= res!992475 (= (content!3744 lt!860714) ((_ map or) (content!3744 (list!11013 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))) (content!3744 (list!11013 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))))))))

(assert (=> d!687660 (= lt!860714 e!1488887)))

(declare-fun c!368639 () Bool)

(assert (=> d!687660 (= c!368639 ((_ is Nil!27668) (list!11013 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(assert (=> d!687660 (= (++!6824 (list!11013 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) (list!11013 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))) lt!860714)))

(assert (= (and d!687660 c!368639) b!2323337))

(assert (= (and d!687660 (not c!368639)) b!2323338))

(assert (= (and d!687660 res!992475) b!2323339))

(assert (= (and b!2323339 res!992474) b!2323340))

(declare-fun m!2753253 () Bool)

(assert (=> b!2323339 m!2753253))

(assert (=> b!2323339 m!2752207))

(declare-fun m!2753255 () Bool)

(assert (=> b!2323339 m!2753255))

(assert (=> b!2323339 m!2752209))

(declare-fun m!2753257 () Bool)

(assert (=> b!2323339 m!2753257))

(assert (=> b!2323338 m!2752209))

(declare-fun m!2753259 () Bool)

(assert (=> b!2323338 m!2753259))

(declare-fun m!2753261 () Bool)

(assert (=> d!687660 m!2753261))

(assert (=> d!687660 m!2752207))

(declare-fun m!2753263 () Bool)

(assert (=> d!687660 m!2753263))

(assert (=> d!687660 m!2752209))

(declare-fun m!2753265 () Bool)

(assert (=> d!687660 m!2753265))

(assert (=> d!687292 d!687660))

(declare-fun b!2323341 () Bool)

(declare-fun e!1488888 () List!27766)

(assert (=> b!2323341 (= e!1488888 Nil!27668)))

(declare-fun b!2323343 () Bool)

(declare-fun e!1488889 () List!27766)

(assert (=> b!2323343 (= e!1488889 (list!11011 (xs!12039 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun b!2323344 () Bool)

(assert (=> b!2323344 (= e!1488889 (++!6824 (list!11013 (left!21006 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))) (list!11013 (right!21336 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))))))

(declare-fun b!2323342 () Bool)

(assert (=> b!2323342 (= e!1488888 e!1488889)))

(declare-fun c!368641 () Bool)

(assert (=> b!2323342 (= c!368641 ((_ is Leaf!13319) (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(declare-fun c!368640 () Bool)

(declare-fun d!687662 () Bool)

(assert (=> d!687662 (= c!368640 ((_ is Empty!9073) (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))))

(assert (=> d!687662 (= (list!11013 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) e!1488888)))

(assert (= (and d!687662 c!368640) b!2323341))

(assert (= (and d!687662 (not c!368640)) b!2323342))

(assert (= (and b!2323342 c!368641) b!2323343))

(assert (= (and b!2323342 (not c!368641)) b!2323344))

(declare-fun m!2753267 () Bool)

(assert (=> b!2323343 m!2753267))

(declare-fun m!2753269 () Bool)

(assert (=> b!2323344 m!2753269))

(declare-fun m!2753271 () Bool)

(assert (=> b!2323344 m!2753271))

(assert (=> b!2323344 m!2753269))

(assert (=> b!2323344 m!2753271))

(declare-fun m!2753273 () Bool)

(assert (=> b!2323344 m!2753273))

(assert (=> d!687292 d!687662))

(declare-fun b!2323345 () Bool)

(declare-fun e!1488890 () List!27766)

(assert (=> b!2323345 (= e!1488890 Nil!27668)))

(declare-fun b!2323347 () Bool)

(declare-fun e!1488891 () List!27766)

(assert (=> b!2323347 (= e!1488891 (list!11011 (xs!12039 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))))))

(declare-fun b!2323348 () Bool)

(assert (=> b!2323348 (= e!1488891 (++!6824 (list!11013 (left!21006 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))) (list!11013 (right!21336 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))))))))

(declare-fun b!2323346 () Bool)

(assert (=> b!2323346 (= e!1488890 e!1488891)))

(declare-fun c!368643 () Bool)

(assert (=> b!2323346 (= c!368643 ((_ is Leaf!13319) (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))))))

(declare-fun c!368642 () Bool)

(declare-fun d!687664 () Bool)

(assert (=> d!687664 (= c!368642 ((_ is Empty!9073) (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))))))

(assert (=> d!687664 (= (list!11013 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))) e!1488890)))

(assert (= (and d!687664 c!368642) b!2323345))

(assert (= (and d!687664 (not c!368642)) b!2323346))

(assert (= (and b!2323346 c!368643) b!2323347))

(assert (= (and b!2323346 (not c!368643)) b!2323348))

(declare-fun m!2753275 () Bool)

(assert (=> b!2323347 m!2753275))

(declare-fun m!2753277 () Bool)

(assert (=> b!2323348 m!2753277))

(declare-fun m!2753279 () Bool)

(assert (=> b!2323348 m!2753279))

(assert (=> b!2323348 m!2753277))

(assert (=> b!2323348 m!2753279))

(declare-fun m!2753281 () Bool)

(assert (=> b!2323348 m!2753281))

(assert (=> d!687292 d!687664))

(assert (=> d!687260 d!687598))

(assert (=> d!687260 d!687494))

(declare-fun bm!138574 () Bool)

(declare-fun call!138580 () List!27766)

(assert (=> bm!138574 (= call!138580 (++!6824 (list!11013 (left!21006 (right!21336 acc!252))) (list!11013 (right!21336 (right!21336 acc!252)))))))

(declare-fun d!687666 () Bool)

(declare-fun e!1488892 () Bool)

(assert (=> d!687666 e!1488892))

(declare-fun c!368644 () Bool)

(assert (=> d!687666 (= c!368644 ((_ is Nil!27668) (list!11013 (left!21006 (right!21336 acc!252)))))))

(assert (=> d!687666 (= (appendAssoc!157 (list!11013 (left!21006 (right!21336 acc!252))) (list!11013 (right!21336 (right!21336 acc!252))) (list!11013 (Leaf!13319 lt!860576 512))) true)))

(declare-fun b!2323349 () Bool)

(declare-fun call!138579 () List!27766)

(declare-fun call!138581 () List!27766)

(assert (=> b!2323349 (= e!1488892 (= call!138579 call!138581))))

(declare-fun bm!138575 () Bool)

(declare-fun call!138582 () List!27766)

(assert (=> bm!138575 (= call!138582 (++!6824 (list!11013 (right!21336 (right!21336 acc!252))) (list!11013 (Leaf!13319 lt!860576 512))))))

(declare-fun b!2323350 () Bool)

(assert (=> b!2323350 (= e!1488892 (= call!138579 call!138581))))

(declare-fun lt!860715 () Bool)

(assert (=> b!2323350 (= lt!860715 (appendAssoc!157 (t!207446 (list!11013 (left!21006 (right!21336 acc!252)))) (list!11013 (right!21336 (right!21336 acc!252))) (list!11013 (Leaf!13319 lt!860576 512))))))

(declare-fun bm!138576 () Bool)

(assert (=> bm!138576 (= call!138579 (++!6824 call!138580 (list!11013 (Leaf!13319 lt!860576 512))))))

(declare-fun bm!138577 () Bool)

(assert (=> bm!138577 (= call!138581 (++!6824 (list!11013 (left!21006 (right!21336 acc!252))) call!138582))))

(assert (= (and d!687666 c!368644) b!2323349))

(assert (= (and d!687666 (not c!368644)) b!2323350))

(assert (= (or b!2323349 b!2323350) bm!138575))

(assert (= (or b!2323349 b!2323350) bm!138574))

(assert (= (or b!2323349 b!2323350) bm!138577))

(assert (= (or b!2323349 b!2323350) bm!138576))

(assert (=> b!2323350 m!2752455))

(assert (=> b!2323350 m!2752063))

(declare-fun m!2753283 () Bool)

(assert (=> b!2323350 m!2753283))

(assert (=> bm!138576 m!2752063))

(declare-fun m!2753285 () Bool)

(assert (=> bm!138576 m!2753285))

(assert (=> bm!138577 m!2752453))

(declare-fun m!2753287 () Bool)

(assert (=> bm!138577 m!2753287))

(assert (=> bm!138574 m!2752453))

(assert (=> bm!138574 m!2752455))

(assert (=> bm!138574 m!2752699))

(assert (=> bm!138575 m!2752455))

(assert (=> bm!138575 m!2752063))

(assert (=> bm!138575 m!2752469))

(assert (=> b!2322863 d!687666))

(assert (=> b!2322863 d!687536))

(assert (=> b!2322863 d!687534))

(assert (=> b!2322863 d!687400))

(declare-fun b!2323351 () Bool)

(declare-fun e!1488893 () Bool)

(declare-fun e!1488894 () Bool)

(assert (=> b!2323351 (= e!1488893 e!1488894)))

(declare-fun res!992478 () Bool)

(assert (=> b!2323351 (=> (not res!992478) (not e!1488894))))

(assert (=> b!2323351 (= res!992478 (<= (- 1) (- (height!1331 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))) (height!1331 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))))

(declare-fun d!687668 () Bool)

(declare-fun res!992481 () Bool)

(assert (=> d!687668 (=> res!992481 e!1488893)))

(assert (=> d!687668 (= res!992481 (not ((_ is Node!9073) (left!21006 (Leaf!13319 lt!860576 512)))))))

(assert (=> d!687668 (= (isBalanced!2767 (left!21006 (Leaf!13319 lt!860576 512))) e!1488893)))

(declare-fun b!2323352 () Bool)

(declare-fun res!992477 () Bool)

(assert (=> b!2323352 (=> (not res!992477) (not e!1488894))))

(assert (=> b!2323352 (= res!992477 (not (isEmpty!15797 (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2323353 () Bool)

(declare-fun res!992479 () Bool)

(assert (=> b!2323353 (=> (not res!992479) (not e!1488894))))

(assert (=> b!2323353 (= res!992479 (isBalanced!2767 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323354 () Bool)

(declare-fun res!992480 () Bool)

(assert (=> b!2323354 (=> (not res!992480) (not e!1488894))))

(assert (=> b!2323354 (= res!992480 (isBalanced!2767 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))

(declare-fun b!2323355 () Bool)

(declare-fun res!992476 () Bool)

(assert (=> b!2323355 (=> (not res!992476) (not e!1488894))))

(assert (=> b!2323355 (= res!992476 (<= (- (height!1331 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))) (height!1331 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))) 1))))

(declare-fun b!2323356 () Bool)

(assert (=> b!2323356 (= e!1488894 (not (isEmpty!15797 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))

(assert (= (and d!687668 (not res!992481)) b!2323351))

(assert (= (and b!2323351 res!992478) b!2323355))

(assert (= (and b!2323355 res!992476) b!2323354))

(assert (= (and b!2323354 res!992480) b!2323353))

(assert (= (and b!2323353 res!992479) b!2323352))

(assert (= (and b!2323352 res!992477) b!2323356))

(declare-fun m!2753289 () Bool)

(assert (=> b!2323356 m!2753289))

(declare-fun m!2753291 () Bool)

(assert (=> b!2323352 m!2753291))

(declare-fun m!2753293 () Bool)

(assert (=> b!2323351 m!2753293))

(declare-fun m!2753295 () Bool)

(assert (=> b!2323351 m!2753295))

(declare-fun m!2753297 () Bool)

(assert (=> b!2323353 m!2753297))

(declare-fun m!2753299 () Bool)

(assert (=> b!2323354 m!2753299))

(assert (=> b!2323355 m!2753293))

(assert (=> b!2323355 m!2753295))

(assert (=> b!2322726 d!687668))

(declare-fun d!687670 () Bool)

(assert (=> d!687670 (= (height!1331 (ite c!368459 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))) (ite ((_ is Empty!9073) (ite c!368459 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))) 0 (ite ((_ is Leaf!13319) (ite c!368459 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))) 1 (cheight!9284 (ite c!368459 (right!21336 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252)) (left!21006 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))

(assert (=> bm!138502 d!687670))

(declare-fun d!687672 () Bool)

(assert (=> d!687672 (= (height!1331 (ite c!368459 lt!860619 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) (ite ((_ is Empty!9073) (ite c!368459 lt!860619 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) 0 (ite ((_ is Leaf!13319) (ite c!368459 lt!860619 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))) 1 (cheight!9284 (ite c!368459 lt!860619 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))))))

(assert (=> bm!138505 d!687672))

(declare-fun d!687674 () Bool)

(assert (=> d!687674 (= (height!1331 (ite c!368459 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))) (ite ((_ is Empty!9073) (ite c!368459 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))) 0 (ite ((_ is Leaf!13319) (ite c!368459 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))) 1 (cheight!9284 (ite c!368459 (ite c!368450 (ite c!368447 (right!21336 acc!252) (right!21336 (right!21336 acc!252))) acc!252) (right!21336 (ite c!368450 (Leaf!13319 lt!860576 512) (ite c!368449 (left!21006 (Leaf!13319 lt!860576 512)) (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))))))))))))

(assert (=> bm!138511 d!687674))

(declare-fun d!687676 () Bool)

(declare-fun res!992482 () Bool)

(declare-fun e!1488895 () Bool)

(assert (=> d!687676 (=> (not res!992482) (not e!1488895))))

(assert (=> d!687676 (= res!992482 (= (csize!18376 (left!21006 (left!21006 acc!252))) (+ (size!21936 (left!21006 (left!21006 (left!21006 acc!252)))) (size!21936 (right!21336 (left!21006 (left!21006 acc!252)))))))))

(assert (=> d!687676 (= (inv!37643 (left!21006 (left!21006 acc!252))) e!1488895)))

(declare-fun b!2323357 () Bool)

(declare-fun res!992483 () Bool)

(assert (=> b!2323357 (=> (not res!992483) (not e!1488895))))

(assert (=> b!2323357 (= res!992483 (and (not (= (left!21006 (left!21006 (left!21006 acc!252))) Empty!9073)) (not (= (right!21336 (left!21006 (left!21006 acc!252))) Empty!9073))))))

(declare-fun b!2323358 () Bool)

(declare-fun res!992484 () Bool)

(assert (=> b!2323358 (=> (not res!992484) (not e!1488895))))

(assert (=> b!2323358 (= res!992484 (= (cheight!9284 (left!21006 (left!21006 acc!252))) (+ (max!0 (height!1331 (left!21006 (left!21006 (left!21006 acc!252)))) (height!1331 (right!21336 (left!21006 (left!21006 acc!252))))) 1)))))

(declare-fun b!2323359 () Bool)

(assert (=> b!2323359 (= e!1488895 (<= 0 (cheight!9284 (left!21006 (left!21006 acc!252)))))))

(assert (= (and d!687676 res!992482) b!2323357))

(assert (= (and b!2323357 res!992483) b!2323358))

(assert (= (and b!2323358 res!992484) b!2323359))

(declare-fun m!2753301 () Bool)

(assert (=> d!687676 m!2753301))

(declare-fun m!2753303 () Bool)

(assert (=> d!687676 m!2753303))

(assert (=> b!2323358 m!2753077))

(assert (=> b!2323358 m!2753079))

(assert (=> b!2323358 m!2753077))

(assert (=> b!2323358 m!2753079))

(declare-fun m!2753305 () Bool)

(assert (=> b!2323358 m!2753305))

(assert (=> b!2322766 d!687676))

(assert (=> d!687406 d!687404))

(assert (=> d!687406 d!687274))

(declare-fun d!687678 () Bool)

(assert (=> d!687678 (= (inv!37640 _$4!1115) (<= (size!21934 (innerList!9133 _$4!1115)) 2147483647))))

(declare-fun bs!459154 () Bool)

(assert (= bs!459154 d!687678))

(declare-fun m!2753307 () Bool)

(assert (=> bs!459154 m!2753307))

(assert (=> d!687406 d!687678))

(assert (=> b!2322666 d!687530))

(assert (=> b!2322666 d!687528))

(declare-fun d!687680 () Bool)

(declare-fun res!992485 () Bool)

(declare-fun e!1488896 () Bool)

(assert (=> d!687680 (=> (not res!992485) (not e!1488896))))

(assert (=> d!687680 (= res!992485 (<= (size!21934 (list!11011 (xs!12039 (right!21336 (left!21006 acc!252))))) 512))))

(assert (=> d!687680 (= (inv!37644 (right!21336 (left!21006 acc!252))) e!1488896)))

(declare-fun b!2323360 () Bool)

(declare-fun res!992486 () Bool)

(assert (=> b!2323360 (=> (not res!992486) (not e!1488896))))

(assert (=> b!2323360 (= res!992486 (= (csize!18377 (right!21336 (left!21006 acc!252))) (size!21934 (list!11011 (xs!12039 (right!21336 (left!21006 acc!252)))))))))

(declare-fun b!2323361 () Bool)

(assert (=> b!2323361 (= e!1488896 (and (> (csize!18377 (right!21336 (left!21006 acc!252))) 0) (<= (csize!18377 (right!21336 (left!21006 acc!252))) 512)))))

(assert (= (and d!687680 res!992485) b!2323360))

(assert (= (and b!2323360 res!992486) b!2323361))

(declare-fun m!2753309 () Bool)

(assert (=> d!687680 m!2753309))

(assert (=> d!687680 m!2753309))

(declare-fun m!2753311 () Bool)

(assert (=> d!687680 m!2753311))

(assert (=> b!2323360 m!2753309))

(assert (=> b!2323360 m!2753309))

(assert (=> b!2323360 m!2753311))

(assert (=> b!2322771 d!687680))

(declare-fun d!687682 () Bool)

(declare-fun res!992487 () Bool)

(declare-fun e!1488897 () Bool)

(assert (=> d!687682 (=> (not res!992487) (not e!1488897))))

(assert (=> d!687682 (= res!992487 (<= (size!21934 (list!11011 (xs!12039 (right!21336 (right!21336 acc!252))))) 512))))

(assert (=> d!687682 (= (inv!37644 (right!21336 (right!21336 acc!252))) e!1488897)))

(declare-fun b!2323362 () Bool)

(declare-fun res!992488 () Bool)

(assert (=> b!2323362 (=> (not res!992488) (not e!1488897))))

(assert (=> b!2323362 (= res!992488 (= (csize!18377 (right!21336 (right!21336 acc!252))) (size!21934 (list!11011 (xs!12039 (right!21336 (right!21336 acc!252)))))))))

(declare-fun b!2323363 () Bool)

(assert (=> b!2323363 (= e!1488897 (and (> (csize!18377 (right!21336 (right!21336 acc!252))) 0) (<= (csize!18377 (right!21336 (right!21336 acc!252))) 512)))))

(assert (= (and d!687682 res!992487) b!2323362))

(assert (= (and b!2323362 res!992488) b!2323363))

(assert (=> d!687682 m!2752889))

(assert (=> d!687682 m!2752889))

(declare-fun m!2753313 () Bool)

(assert (=> d!687682 m!2753313))

(assert (=> b!2323362 m!2752889))

(assert (=> b!2323362 m!2752889))

(assert (=> b!2323362 m!2753313))

(assert (=> b!2322684 d!687682))

(declare-fun d!687684 () Bool)

(declare-fun lt!860716 () Int)

(assert (=> d!687684 (>= lt!860716 0)))

(declare-fun e!1488898 () Int)

(assert (=> d!687684 (= lt!860716 e!1488898)))

(declare-fun c!368645 () Bool)

(assert (=> d!687684 (= c!368645 ((_ is Nil!27668) (innerList!9133 (xs!12039 (left!21006 acc!252)))))))

(assert (=> d!687684 (= (size!21934 (innerList!9133 (xs!12039 (left!21006 acc!252)))) lt!860716)))

(declare-fun b!2323364 () Bool)

(assert (=> b!2323364 (= e!1488898 0)))

(declare-fun b!2323365 () Bool)

(assert (=> b!2323365 (= e!1488898 (+ 1 (size!21934 (t!207446 (innerList!9133 (xs!12039 (left!21006 acc!252)))))))))

(assert (= (and d!687684 c!368645) b!2323364))

(assert (= (and d!687684 (not c!368645)) b!2323365))

(declare-fun m!2753315 () Bool)

(assert (=> b!2323365 m!2753315))

(assert (=> d!687340 d!687684))

(declare-fun d!687686 () Bool)

(declare-fun c!368646 () Bool)

(assert (=> d!687686 (= c!368646 ((_ is Node!9073) (left!21006 (right!21336 (right!21336 acc!252)))))))

(declare-fun e!1488899 () Bool)

(assert (=> d!687686 (= (inv!37639 (left!21006 (right!21336 (right!21336 acc!252)))) e!1488899)))

(declare-fun b!2323366 () Bool)

(assert (=> b!2323366 (= e!1488899 (inv!37643 (left!21006 (right!21336 (right!21336 acc!252)))))))

(declare-fun b!2323367 () Bool)

(declare-fun e!1488900 () Bool)

(assert (=> b!2323367 (= e!1488899 e!1488900)))

(declare-fun res!992489 () Bool)

(assert (=> b!2323367 (= res!992489 (not ((_ is Leaf!13319) (left!21006 (right!21336 (right!21336 acc!252))))))))

(assert (=> b!2323367 (=> res!992489 e!1488900)))

(declare-fun b!2323368 () Bool)

(assert (=> b!2323368 (= e!1488900 (inv!37644 (left!21006 (right!21336 (right!21336 acc!252)))))))

(assert (= (and d!687686 c!368646) b!2323366))

(assert (= (and d!687686 (not c!368646)) b!2323367))

(assert (= (and b!2323367 (not res!992489)) b!2323368))

(declare-fun m!2753317 () Bool)

(assert (=> b!2323366 m!2753317))

(declare-fun m!2753319 () Bool)

(assert (=> b!2323368 m!2753319))

(assert (=> b!2322933 d!687686))

(declare-fun d!687688 () Bool)

(declare-fun c!368647 () Bool)

(assert (=> d!687688 (= c!368647 ((_ is Node!9073) (right!21336 (right!21336 (right!21336 acc!252)))))))

(declare-fun e!1488901 () Bool)

(assert (=> d!687688 (= (inv!37639 (right!21336 (right!21336 (right!21336 acc!252)))) e!1488901)))

(declare-fun b!2323369 () Bool)

(assert (=> b!2323369 (= e!1488901 (inv!37643 (right!21336 (right!21336 (right!21336 acc!252)))))))

(declare-fun b!2323370 () Bool)

(declare-fun e!1488902 () Bool)

(assert (=> b!2323370 (= e!1488901 e!1488902)))

(declare-fun res!992490 () Bool)

(assert (=> b!2323370 (= res!992490 (not ((_ is Leaf!13319) (right!21336 (right!21336 (right!21336 acc!252))))))))

(assert (=> b!2323370 (=> res!992490 e!1488902)))

(declare-fun b!2323371 () Bool)

(assert (=> b!2323371 (= e!1488902 (inv!37644 (right!21336 (right!21336 (right!21336 acc!252)))))))

(assert (= (and d!687688 c!368647) b!2323369))

(assert (= (and d!687688 (not c!368647)) b!2323370))

(assert (= (and b!2323370 (not res!992490)) b!2323371))

(declare-fun m!2753321 () Bool)

(assert (=> b!2323369 m!2753321))

(declare-fun m!2753323 () Bool)

(assert (=> b!2323371 m!2753323))

(assert (=> b!2322933 d!687688))

(assert (=> d!687282 d!687618))

(assert (=> d!687282 d!687514))

(assert (=> b!2322743 d!687466))

(assert (=> b!2322743 d!687468))

(declare-fun d!687690 () Bool)

(assert (=> d!687690 (= (list!11011 (xs!12039 (Leaf!13319 lt!860576 512))) (innerList!9133 (xs!12039 (Leaf!13319 lt!860576 512))))))

(assert (=> b!2322918 d!687690))

(declare-fun b!2323372 () Bool)

(declare-fun e!1488903 () Bool)

(declare-fun e!1488904 () Bool)

(assert (=> b!2323372 (= e!1488903 e!1488904)))

(declare-fun res!992493 () Bool)

(assert (=> b!2323372 (=> (not res!992493) (not e!1488904))))

(assert (=> b!2323372 (= res!992493 (<= (- 1) (- (height!1331 (left!21006 lt!860621)) (height!1331 (right!21336 lt!860621)))))))

(declare-fun d!687692 () Bool)

(declare-fun res!992496 () Bool)

(assert (=> d!687692 (=> res!992496 e!1488903)))

(assert (=> d!687692 (= res!992496 (not ((_ is Node!9073) lt!860621)))))

(assert (=> d!687692 (= (isBalanced!2767 lt!860621) e!1488903)))

(declare-fun b!2323373 () Bool)

(declare-fun res!992492 () Bool)

(assert (=> b!2323373 (=> (not res!992492) (not e!1488904))))

(assert (=> b!2323373 (= res!992492 (not (isEmpty!15797 (left!21006 lt!860621))))))

(declare-fun b!2323374 () Bool)

(declare-fun res!992494 () Bool)

(assert (=> b!2323374 (=> (not res!992494) (not e!1488904))))

(assert (=> b!2323374 (= res!992494 (isBalanced!2767 (right!21336 lt!860621)))))

(declare-fun b!2323375 () Bool)

(declare-fun res!992495 () Bool)

(assert (=> b!2323375 (=> (not res!992495) (not e!1488904))))

(assert (=> b!2323375 (= res!992495 (isBalanced!2767 (left!21006 lt!860621)))))

(declare-fun b!2323376 () Bool)

(declare-fun res!992491 () Bool)

(assert (=> b!2323376 (=> (not res!992491) (not e!1488904))))

(assert (=> b!2323376 (= res!992491 (<= (- (height!1331 (left!21006 lt!860621)) (height!1331 (right!21336 lt!860621))) 1))))

(declare-fun b!2323377 () Bool)

(assert (=> b!2323377 (= e!1488904 (not (isEmpty!15797 (right!21336 lt!860621))))))

(assert (= (and d!687692 (not res!992496)) b!2323372))

(assert (= (and b!2323372 res!992493) b!2323376))

(assert (= (and b!2323376 res!992491) b!2323375))

(assert (= (and b!2323375 res!992495) b!2323374))

(assert (= (and b!2323374 res!992494) b!2323373))

(assert (= (and b!2323373 res!992492) b!2323377))

(declare-fun m!2753325 () Bool)

(assert (=> b!2323377 m!2753325))

(declare-fun m!2753327 () Bool)

(assert (=> b!2323373 m!2753327))

(declare-fun m!2753329 () Bool)

(assert (=> b!2323372 m!2753329))

(declare-fun m!2753331 () Bool)

(assert (=> b!2323372 m!2753331))

(declare-fun m!2753333 () Bool)

(assert (=> b!2323374 m!2753333))

(declare-fun m!2753335 () Bool)

(assert (=> b!2323375 m!2753335))

(assert (=> b!2323376 m!2753329))

(assert (=> b!2323376 m!2753331))

(assert (=> b!2322652 d!687692))

(assert (=> b!2322656 d!687524))

(assert (=> b!2322656 d!687526))

(assert (=> b!2322656 d!687528))

(assert (=> b!2322656 d!687530))

(declare-fun d!687694 () Bool)

(declare-fun lt!860717 () Bool)

(assert (=> d!687694 (= lt!860717 (isEmpty!15799 (list!11013 (left!21006 (left!21006 acc!252)))))))

(assert (=> d!687694 (= lt!860717 (= (size!21936 (left!21006 (left!21006 acc!252))) 0))))

(assert (=> d!687694 (= (isEmpty!15797 (left!21006 (left!21006 acc!252))) lt!860717)))

(declare-fun bs!459155 () Bool)

(assert (= bs!459155 d!687694))

(assert (=> bs!459155 m!2752693))

(assert (=> bs!459155 m!2752693))

(declare-fun m!2753337 () Bool)

(assert (=> bs!459155 m!2753337))

(assert (=> bs!459155 m!2752167))

(assert (=> b!2322732 d!687694))

(declare-fun b!2323378 () Bool)

(declare-fun e!1488905 () Bool)

(declare-fun e!1488906 () Bool)

(assert (=> b!2323378 (= e!1488905 e!1488906)))

(declare-fun res!992499 () Bool)

(assert (=> b!2323378 (=> (not res!992499) (not e!1488906))))

(assert (=> b!2323378 (= res!992499 (<= (- 1) (- (height!1331 (left!21006 (left!21006 lt!860609))) (height!1331 (right!21336 (left!21006 lt!860609))))))))

(declare-fun d!687696 () Bool)

(declare-fun res!992502 () Bool)

(assert (=> d!687696 (=> res!992502 e!1488905)))

(assert (=> d!687696 (= res!992502 (not ((_ is Node!9073) (left!21006 lt!860609))))))

(assert (=> d!687696 (= (isBalanced!2767 (left!21006 lt!860609)) e!1488905)))

(declare-fun b!2323379 () Bool)

(declare-fun res!992498 () Bool)

(assert (=> b!2323379 (=> (not res!992498) (not e!1488906))))

(assert (=> b!2323379 (= res!992498 (not (isEmpty!15797 (left!21006 (left!21006 lt!860609)))))))

(declare-fun b!2323380 () Bool)

(declare-fun res!992500 () Bool)

(assert (=> b!2323380 (=> (not res!992500) (not e!1488906))))

(assert (=> b!2323380 (= res!992500 (isBalanced!2767 (right!21336 (left!21006 lt!860609))))))

(declare-fun b!2323381 () Bool)

(declare-fun res!992501 () Bool)

(assert (=> b!2323381 (=> (not res!992501) (not e!1488906))))

(assert (=> b!2323381 (= res!992501 (isBalanced!2767 (left!21006 (left!21006 lt!860609))))))

(declare-fun b!2323382 () Bool)

(declare-fun res!992497 () Bool)

(assert (=> b!2323382 (=> (not res!992497) (not e!1488906))))

(assert (=> b!2323382 (= res!992497 (<= (- (height!1331 (left!21006 (left!21006 lt!860609))) (height!1331 (right!21336 (left!21006 lt!860609)))) 1))))

(declare-fun b!2323383 () Bool)

(assert (=> b!2323383 (= e!1488906 (not (isEmpty!15797 (right!21336 (left!21006 lt!860609)))))))

(assert (= (and d!687696 (not res!992502)) b!2323378))

(assert (= (and b!2323378 res!992499) b!2323382))

(assert (= (and b!2323382 res!992497) b!2323381))

(assert (= (and b!2323381 res!992501) b!2323380))

(assert (= (and b!2323380 res!992500) b!2323379))

(assert (= (and b!2323379 res!992498) b!2323383))

(declare-fun m!2753339 () Bool)

(assert (=> b!2323383 m!2753339))

(declare-fun m!2753341 () Bool)

(assert (=> b!2323379 m!2753341))

(declare-fun m!2753343 () Bool)

(assert (=> b!2323378 m!2753343))

(declare-fun m!2753345 () Bool)

(assert (=> b!2323378 m!2753345))

(declare-fun m!2753347 () Bool)

(assert (=> b!2323380 m!2753347))

(declare-fun m!2753349 () Bool)

(assert (=> b!2323381 m!2753349))

(assert (=> b!2323382 m!2753343))

(assert (=> b!2323382 m!2753345))

(assert (=> b!2322775 d!687696))

(declare-fun d!687698 () Bool)

(assert (=> d!687698 (= (max!0 (height!1331 (left!21006 (left!21006 acc!252))) (height!1331 (right!21336 (left!21006 acc!252)))) (ite (< (height!1331 (left!21006 (left!21006 acc!252))) (height!1331 (right!21336 (left!21006 acc!252)))) (height!1331 (right!21336 (left!21006 acc!252))) (height!1331 (left!21006 (left!21006 acc!252)))))))

(assert (=> b!2322677 d!687698))

(assert (=> b!2322677 d!687620))

(assert (=> b!2322677 d!687622))

(declare-fun d!687700 () Bool)

(declare-fun lt!860718 () Bool)

(assert (=> d!687700 (= lt!860718 (isEmpty!15799 (list!11013 (right!21336 (left!21006 acc!252)))))))

(assert (=> d!687700 (= lt!860718 (= (size!21936 (right!21336 (left!21006 acc!252))) 0))))

(assert (=> d!687700 (= (isEmpty!15797 (right!21336 (left!21006 acc!252))) lt!860718)))

(declare-fun bs!459156 () Bool)

(assert (= bs!459156 d!687700))

(assert (=> bs!459156 m!2752695))

(assert (=> bs!459156 m!2752695))

(declare-fun m!2753351 () Bool)

(assert (=> bs!459156 m!2753351))

(assert (=> bs!459156 m!2752169))

(assert (=> b!2322736 d!687700))

(declare-fun d!687702 () Bool)

(assert (=> d!687702 (= (inv!37640 (xs!12039 (right!21336 (left!21006 acc!252)))) (<= (size!21934 (innerList!9133 (xs!12039 (right!21336 (left!21006 acc!252))))) 2147483647))))

(declare-fun bs!459157 () Bool)

(assert (= bs!459157 d!687702))

(declare-fun m!2753353 () Bool)

(assert (=> bs!459157 m!2753353))

(assert (=> b!2322926 d!687702))

(assert (=> d!687312 d!687308))

(assert (=> d!687312 d!687310))

(declare-fun b!2323386 () Bool)

(declare-fun res!992503 () Bool)

(declare-fun e!1488907 () Bool)

(assert (=> b!2323386 (=> (not res!992503) (not e!1488907))))

(declare-fun lt!860719 () List!27766)

(assert (=> b!2323386 (= res!992503 (= (size!21934 lt!860719) (+ (size!21934 (list!11013 (left!21006 lt!860609))) (size!21934 (list!11013 (right!21336 lt!860609))))))))

(declare-fun b!2323384 () Bool)

(declare-fun e!1488908 () List!27766)

(assert (=> b!2323384 (= e!1488908 (list!11013 (right!21336 lt!860609)))))

(declare-fun b!2323385 () Bool)

(assert (=> b!2323385 (= e!1488908 (Cons!27668 (h!33069 (list!11013 (left!21006 lt!860609))) (++!6824 (t!207446 (list!11013 (left!21006 lt!860609))) (list!11013 (right!21336 lt!860609)))))))

(declare-fun b!2323387 () Bool)

(assert (=> b!2323387 (= e!1488907 (or (not (= (list!11013 (right!21336 lt!860609)) Nil!27668)) (= lt!860719 (list!11013 (left!21006 lt!860609)))))))

(declare-fun d!687704 () Bool)

(assert (=> d!687704 e!1488907))

(declare-fun res!992504 () Bool)

(assert (=> d!687704 (=> (not res!992504) (not e!1488907))))

(assert (=> d!687704 (= res!992504 (= (content!3744 lt!860719) ((_ map or) (content!3744 (list!11013 (left!21006 lt!860609))) (content!3744 (list!11013 (right!21336 lt!860609))))))))

(assert (=> d!687704 (= lt!860719 e!1488908)))

(declare-fun c!368648 () Bool)

(assert (=> d!687704 (= c!368648 ((_ is Nil!27668) (list!11013 (left!21006 lt!860609))))))

(assert (=> d!687704 (= (++!6824 (list!11013 (left!21006 lt!860609)) (list!11013 (right!21336 lt!860609))) lt!860719)))

(assert (= (and d!687704 c!368648) b!2323384))

(assert (= (and d!687704 (not c!368648)) b!2323385))

(assert (= (and d!687704 res!992504) b!2323386))

(assert (= (and b!2323386 res!992503) b!2323387))

(declare-fun m!2753355 () Bool)

(assert (=> b!2323386 m!2753355))

(assert (=> b!2323386 m!2752491))

(declare-fun m!2753357 () Bool)

(assert (=> b!2323386 m!2753357))

(assert (=> b!2323386 m!2752493))

(declare-fun m!2753359 () Bool)

(assert (=> b!2323386 m!2753359))

(assert (=> b!2323385 m!2752493))

(declare-fun m!2753361 () Bool)

(assert (=> b!2323385 m!2753361))

(declare-fun m!2753363 () Bool)

(assert (=> d!687704 m!2753363))

(assert (=> d!687704 m!2752491))

(declare-fun m!2753365 () Bool)

(assert (=> d!687704 m!2753365))

(assert (=> d!687704 m!2752493))

(declare-fun m!2753367 () Bool)

(assert (=> d!687704 m!2753367))

(assert (=> b!2322886 d!687704))

(declare-fun b!2323388 () Bool)

(declare-fun e!1488909 () List!27766)

(assert (=> b!2323388 (= e!1488909 Nil!27668)))

(declare-fun b!2323390 () Bool)

(declare-fun e!1488910 () List!27766)

(assert (=> b!2323390 (= e!1488910 (list!11011 (xs!12039 (left!21006 lt!860609))))))

(declare-fun b!2323391 () Bool)

(assert (=> b!2323391 (= e!1488910 (++!6824 (list!11013 (left!21006 (left!21006 lt!860609))) (list!11013 (right!21336 (left!21006 lt!860609)))))))

(declare-fun b!2323389 () Bool)

(assert (=> b!2323389 (= e!1488909 e!1488910)))

(declare-fun c!368650 () Bool)

(assert (=> b!2323389 (= c!368650 ((_ is Leaf!13319) (left!21006 lt!860609)))))

(declare-fun d!687706 () Bool)

(declare-fun c!368649 () Bool)

(assert (=> d!687706 (= c!368649 ((_ is Empty!9073) (left!21006 lt!860609)))))

(assert (=> d!687706 (= (list!11013 (left!21006 lt!860609)) e!1488909)))

(assert (= (and d!687706 c!368649) b!2323388))

(assert (= (and d!687706 (not c!368649)) b!2323389))

(assert (= (and b!2323389 c!368650) b!2323390))

(assert (= (and b!2323389 (not c!368650)) b!2323391))

(declare-fun m!2753369 () Bool)

(assert (=> b!2323390 m!2753369))

(declare-fun m!2753371 () Bool)

(assert (=> b!2323391 m!2753371))

(declare-fun m!2753373 () Bool)

(assert (=> b!2323391 m!2753373))

(assert (=> b!2323391 m!2753371))

(assert (=> b!2323391 m!2753373))

(declare-fun m!2753375 () Bool)

(assert (=> b!2323391 m!2753375))

(assert (=> b!2322886 d!687706))

(declare-fun b!2323392 () Bool)

(declare-fun e!1488911 () List!27766)

(assert (=> b!2323392 (= e!1488911 Nil!27668)))

(declare-fun b!2323394 () Bool)

(declare-fun e!1488912 () List!27766)

(assert (=> b!2323394 (= e!1488912 (list!11011 (xs!12039 (right!21336 lt!860609))))))

(declare-fun b!2323395 () Bool)

(assert (=> b!2323395 (= e!1488912 (++!6824 (list!11013 (left!21006 (right!21336 lt!860609))) (list!11013 (right!21336 (right!21336 lt!860609)))))))

(declare-fun b!2323393 () Bool)

(assert (=> b!2323393 (= e!1488911 e!1488912)))

(declare-fun c!368652 () Bool)

(assert (=> b!2323393 (= c!368652 ((_ is Leaf!13319) (right!21336 lt!860609)))))

(declare-fun d!687708 () Bool)

(declare-fun c!368651 () Bool)

(assert (=> d!687708 (= c!368651 ((_ is Empty!9073) (right!21336 lt!860609)))))

(assert (=> d!687708 (= (list!11013 (right!21336 lt!860609)) e!1488911)))

(assert (= (and d!687708 c!368651) b!2323392))

(assert (= (and d!687708 (not c!368651)) b!2323393))

(assert (= (and b!2323393 c!368652) b!2323394))

(assert (= (and b!2323393 (not c!368652)) b!2323395))

(declare-fun m!2753377 () Bool)

(assert (=> b!2323394 m!2753377))

(declare-fun m!2753379 () Bool)

(assert (=> b!2323395 m!2753379))

(declare-fun m!2753381 () Bool)

(assert (=> b!2323395 m!2753381))

(assert (=> b!2323395 m!2753379))

(assert (=> b!2323395 m!2753381))

(declare-fun m!2753383 () Bool)

(assert (=> b!2323395 m!2753383))

(assert (=> b!2322886 d!687708))

(declare-fun lt!860720 () Int)

(declare-fun d!687710 () Bool)

(assert (=> d!687710 (= lt!860720 (size!21934 (list!11013 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))))))

(assert (=> d!687710 (= lt!860720 (ite ((_ is Empty!9073) (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))) 0 (ite ((_ is Leaf!13319) (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))) (csize!18377 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))) (csize!18376 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))))))))

(assert (=> d!687710 (= (size!21936 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))) lt!860720)))

(declare-fun bs!459158 () Bool)

(assert (= bs!459158 d!687710))

(assert (=> bs!459158 m!2752209))

(assert (=> bs!459158 m!2752209))

(assert (=> bs!459158 m!2753257))

(assert (=> b!2322718 d!687710))

(declare-fun d!687712 () Bool)

(assert (=> d!687712 (= (max!0 (height!1331 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) (height!1331 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))) (ite (< (height!1331 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) (height!1331 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512))))))) (height!1331 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))) (height!1331 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(assert (=> b!2322718 d!687712))

(declare-fun d!687714 () Bool)

(declare-fun lt!860721 () Int)

(assert (=> d!687714 (= lt!860721 (size!21934 (list!11013 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512)))))))))))

(assert (=> d!687714 (= lt!860721 (ite ((_ is Empty!9073) (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) 0 (ite ((_ is Leaf!13319) (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) (csize!18377 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) (csize!18376 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))))))

(assert (=> d!687714 (= (size!21936 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) lt!860721)))

(declare-fun bs!459159 () Bool)

(assert (= bs!459159 d!687714))

(assert (=> bs!459159 m!2752207))

(assert (=> bs!459159 m!2752207))

(assert (=> bs!459159 m!2753255))

(assert (=> b!2322718 d!687714))

(declare-fun d!687716 () Bool)

(assert (=> d!687716 (= (height!1331 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) (ite ((_ is Empty!9073) (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) 0 (ite ((_ is Leaf!13319) (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))) 1 (cheight!9284 (ite c!368450 (ite (or c!368447 c!368454) (left!21006 acc!252) call!138489) (ite c!368449 call!138499 (ite c!368448 lt!860608 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))))))

(assert (=> b!2322718 d!687716))

(declare-fun d!687718 () Bool)

(assert (=> d!687718 (= (height!1331 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))) (ite ((_ is Empty!9073) (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))) 0 (ite ((_ is Leaf!13319) (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))) 1 (cheight!9284 (ite c!368450 (ite c!368447 call!138493 (ite c!368454 call!138489 lt!860607)) (ite c!368449 (right!21336 (Leaf!13319 lt!860576 512)) (ite c!368448 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))) (right!21336 (Leaf!13319 lt!860576 512)))))))))))

(assert (=> b!2322718 d!687718))

(declare-fun bm!138578 () Bool)

(declare-fun call!138584 () List!27766)

(assert (=> bm!138578 (= call!138584 (++!6824 (list!11013 acc!252) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun d!687720 () Bool)

(declare-fun e!1488913 () Bool)

(assert (=> d!687720 e!1488913))

(declare-fun c!368653 () Bool)

(assert (=> d!687720 (= c!368653 ((_ is Nil!27668) (list!11013 acc!252)))))

(assert (=> d!687720 (= (appendAssoc!157 (list!11013 acc!252) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))) (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))) true)))

(declare-fun b!2323396 () Bool)

(declare-fun call!138583 () List!27766)

(declare-fun call!138585 () List!27766)

(assert (=> b!2323396 (= e!1488913 (= call!138583 call!138585))))

(declare-fun bm!138579 () Bool)

(declare-fun call!138586 () List!27766)

(assert (=> bm!138579 (= call!138586 (++!6824 (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))) (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun b!2323397 () Bool)

(assert (=> b!2323397 (= e!1488913 (= call!138583 call!138585))))

(declare-fun lt!860722 () Bool)

(assert (=> b!2323397 (= lt!860722 (appendAssoc!157 (t!207446 (list!11013 acc!252)) (list!11013 (left!21006 (left!21006 (Leaf!13319 lt!860576 512)))) (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun bm!138580 () Bool)

(assert (=> bm!138580 (= call!138583 (++!6824 call!138584 (list!11013 (right!21336 (left!21006 (Leaf!13319 lt!860576 512))))))))

(declare-fun bm!138581 () Bool)

(assert (=> bm!138581 (= call!138585 (++!6824 (list!11013 acc!252) call!138586))))

(assert (= (and d!687720 c!368653) b!2323396))

(assert (= (and d!687720 (not c!368653)) b!2323397))

(assert (= (or b!2323396 b!2323397) bm!138579))

(assert (= (or b!2323396 b!2323397) bm!138578))

(assert (= (or b!2323396 b!2323397) bm!138581))

(assert (= (or b!2323396 b!2323397) bm!138580))

(assert (=> b!2323397 m!2752445))

(assert (=> b!2323397 m!2752447))

(declare-fun m!2753385 () Bool)

(assert (=> b!2323397 m!2753385))

(assert (=> bm!138580 m!2752447))

(declare-fun m!2753387 () Bool)

(assert (=> bm!138580 m!2753387))

(assert (=> bm!138581 m!2752061))

(declare-fun m!2753389 () Bool)

(assert (=> bm!138581 m!2753389))

(assert (=> bm!138578 m!2752061))

(assert (=> bm!138578 m!2752445))

(assert (=> bm!138578 m!2752481))

(assert (=> bm!138579 m!2752445))

(assert (=> bm!138579 m!2752447))

(assert (=> bm!138579 m!2752757))

(assert (=> b!2322859 d!687720))

(assert (=> b!2322859 d!687398))

(assert (=> b!2322859 d!687644))

(assert (=> b!2322859 d!687642))

(declare-fun b!2323398 () Bool)

(declare-fun e!1488914 () Bool)

(declare-fun tp!736844 () Bool)

(assert (=> b!2323398 (= e!1488914 (and tp_is_empty!10829 tp!736844))))

(assert (=> b!2322935 (= tp!736825 e!1488914)))

(assert (= (and b!2322935 ((_ is Cons!27668) (innerList!9133 (xs!12039 (right!21336 (right!21336 acc!252)))))) b!2323398))

(declare-fun b!2323399 () Bool)

(declare-fun e!1488915 () Bool)

(declare-fun tp!736845 () Bool)

(assert (=> b!2323399 (= e!1488915 (and tp_is_empty!10829 tp!736845))))

(assert (=> b!2322920 (= tp!736810 e!1488915)))

(assert (= (and b!2322920 ((_ is Cons!27668) (innerList!9133 _$4!1115))) b!2323399))

(declare-fun tp!736847 () Bool)

(declare-fun b!2323400 () Bool)

(declare-fun tp!736846 () Bool)

(declare-fun e!1488917 () Bool)

(assert (=> b!2323400 (= e!1488917 (and (inv!37639 (left!21006 (left!21006 (left!21006 (left!21006 acc!252))))) tp!736846 (inv!37639 (right!21336 (left!21006 (left!21006 (left!21006 acc!252))))) tp!736847))))

(declare-fun b!2323402 () Bool)

(declare-fun e!1488916 () Bool)

(declare-fun tp!736848 () Bool)

(assert (=> b!2323402 (= e!1488916 tp!736848)))

(declare-fun b!2323401 () Bool)

(assert (=> b!2323401 (= e!1488917 (and (inv!37640 (xs!12039 (left!21006 (left!21006 (left!21006 acc!252))))) e!1488916))))

(assert (=> b!2322922 (= tp!736812 (and (inv!37639 (left!21006 (left!21006 (left!21006 acc!252)))) e!1488917))))

(assert (= (and b!2322922 ((_ is Node!9073) (left!21006 (left!21006 (left!21006 acc!252))))) b!2323400))

(assert (= b!2323401 b!2323402))

(assert (= (and b!2322922 ((_ is Leaf!13319) (left!21006 (left!21006 (left!21006 acc!252))))) b!2323401))

(declare-fun m!2753391 () Bool)

(assert (=> b!2323400 m!2753391))

(declare-fun m!2753393 () Bool)

(assert (=> b!2323400 m!2753393))

(declare-fun m!2753395 () Bool)

(assert (=> b!2323401 m!2753395))

(assert (=> b!2322922 m!2752533))

(declare-fun tp!736850 () Bool)

(declare-fun b!2323403 () Bool)

(declare-fun e!1488919 () Bool)

(declare-fun tp!736849 () Bool)

(assert (=> b!2323403 (= e!1488919 (and (inv!37639 (left!21006 (right!21336 (left!21006 (left!21006 acc!252))))) tp!736849 (inv!37639 (right!21336 (right!21336 (left!21006 (left!21006 acc!252))))) tp!736850))))

(declare-fun b!2323405 () Bool)

(declare-fun e!1488918 () Bool)

(declare-fun tp!736851 () Bool)

(assert (=> b!2323405 (= e!1488918 tp!736851)))

(declare-fun b!2323404 () Bool)

(assert (=> b!2323404 (= e!1488919 (and (inv!37640 (xs!12039 (right!21336 (left!21006 (left!21006 acc!252))))) e!1488918))))

(assert (=> b!2322922 (= tp!736813 (and (inv!37639 (right!21336 (left!21006 (left!21006 acc!252)))) e!1488919))))

(assert (= (and b!2322922 ((_ is Node!9073) (right!21336 (left!21006 (left!21006 acc!252))))) b!2323403))

(assert (= b!2323404 b!2323405))

(assert (= (and b!2322922 ((_ is Leaf!13319) (right!21336 (left!21006 (left!21006 acc!252))))) b!2323404))

(declare-fun m!2753397 () Bool)

(assert (=> b!2323403 m!2753397))

(declare-fun m!2753399 () Bool)

(assert (=> b!2323403 m!2753399))

(declare-fun m!2753401 () Bool)

(assert (=> b!2323404 m!2753401))

(assert (=> b!2322922 m!2752535))

(declare-fun b!2323406 () Bool)

(declare-fun e!1488920 () Bool)

(declare-fun tp!736852 () Bool)

(assert (=> b!2323406 (= e!1488920 (and tp_is_empty!10829 tp!736852))))

(assert (=> b!2322928 (= tp!736818 e!1488920)))

(assert (= (and b!2322928 ((_ is Cons!27668) (t!207446 (innerList!9133 (xs!12039 (right!21336 acc!252)))))) b!2323406))

(declare-fun b!2323407 () Bool)

(declare-fun tp!736853 () Bool)

(declare-fun e!1488922 () Bool)

(declare-fun tp!736854 () Bool)

(assert (=> b!2323407 (= e!1488922 (and (inv!37639 (left!21006 (left!21006 (right!21336 (left!21006 acc!252))))) tp!736853 (inv!37639 (right!21336 (left!21006 (right!21336 (left!21006 acc!252))))) tp!736854))))

(declare-fun b!2323409 () Bool)

(declare-fun e!1488921 () Bool)

(declare-fun tp!736855 () Bool)

(assert (=> b!2323409 (= e!1488921 tp!736855)))

(declare-fun b!2323408 () Bool)

(assert (=> b!2323408 (= e!1488922 (and (inv!37640 (xs!12039 (left!21006 (right!21336 (left!21006 acc!252))))) e!1488921))))

(assert (=> b!2322925 (= tp!736815 (and (inv!37639 (left!21006 (right!21336 (left!21006 acc!252)))) e!1488922))))

(assert (= (and b!2322925 ((_ is Node!9073) (left!21006 (right!21336 (left!21006 acc!252))))) b!2323407))

(assert (= b!2323408 b!2323409))

(assert (= (and b!2322925 ((_ is Leaf!13319) (left!21006 (right!21336 (left!21006 acc!252))))) b!2323408))

(declare-fun m!2753403 () Bool)

(assert (=> b!2323407 m!2753403))

(declare-fun m!2753405 () Bool)

(assert (=> b!2323407 m!2753405))

(declare-fun m!2753407 () Bool)

(assert (=> b!2323408 m!2753407))

(assert (=> b!2322925 m!2752539))

(declare-fun tp!736856 () Bool)

(declare-fun e!1488924 () Bool)

(declare-fun tp!736857 () Bool)

(declare-fun b!2323410 () Bool)

(assert (=> b!2323410 (= e!1488924 (and (inv!37639 (left!21006 (right!21336 (right!21336 (left!21006 acc!252))))) tp!736856 (inv!37639 (right!21336 (right!21336 (right!21336 (left!21006 acc!252))))) tp!736857))))

(declare-fun b!2323412 () Bool)

(declare-fun e!1488923 () Bool)

(declare-fun tp!736858 () Bool)

(assert (=> b!2323412 (= e!1488923 tp!736858)))

(declare-fun b!2323411 () Bool)

(assert (=> b!2323411 (= e!1488924 (and (inv!37640 (xs!12039 (right!21336 (right!21336 (left!21006 acc!252))))) e!1488923))))

(assert (=> b!2322925 (= tp!736816 (and (inv!37639 (right!21336 (right!21336 (left!21006 acc!252)))) e!1488924))))

(assert (= (and b!2322925 ((_ is Node!9073) (right!21336 (right!21336 (left!21006 acc!252))))) b!2323410))

(assert (= b!2323411 b!2323412))

(assert (= (and b!2322925 ((_ is Leaf!13319) (right!21336 (right!21336 (left!21006 acc!252))))) b!2323411))

(declare-fun m!2753409 () Bool)

(assert (=> b!2323410 m!2753409))

(declare-fun m!2753411 () Bool)

(assert (=> b!2323410 m!2753411))

(declare-fun m!2753413 () Bool)

(assert (=> b!2323411 m!2753413))

(assert (=> b!2322925 m!2752541))

(declare-fun b!2323413 () Bool)

(declare-fun e!1488925 () Bool)

(declare-fun tp!736859 () Bool)

(assert (=> b!2323413 (= e!1488925 (and tp_is_empty!10829 tp!736859))))

(assert (=> b!2322932 (= tp!736822 e!1488925)))

(assert (= (and b!2322932 ((_ is Cons!27668) (innerList!9133 (xs!12039 (left!21006 (right!21336 acc!252)))))) b!2323413))

(declare-fun b!2323414 () Bool)

(declare-fun e!1488926 () Bool)

(declare-fun tp!736860 () Bool)

(assert (=> b!2323414 (= e!1488926 (and tp_is_empty!10829 tp!736860))))

(assert (=> b!2322924 (= tp!736814 e!1488926)))

(assert (= (and b!2322924 ((_ is Cons!27668) (innerList!9133 (xs!12039 (left!21006 (left!21006 acc!252)))))) b!2323414))

(declare-fun tp!736862 () Bool)

(declare-fun e!1488928 () Bool)

(declare-fun b!2323415 () Bool)

(declare-fun tp!736861 () Bool)

(assert (=> b!2323415 (= e!1488928 (and (inv!37639 (left!21006 (left!21006 (left!21006 (right!21336 acc!252))))) tp!736861 (inv!37639 (right!21336 (left!21006 (left!21006 (right!21336 acc!252))))) tp!736862))))

(declare-fun b!2323417 () Bool)

(declare-fun e!1488927 () Bool)

(declare-fun tp!736863 () Bool)

(assert (=> b!2323417 (= e!1488927 tp!736863)))

(declare-fun b!2323416 () Bool)

(assert (=> b!2323416 (= e!1488928 (and (inv!37640 (xs!12039 (left!21006 (left!21006 (right!21336 acc!252))))) e!1488927))))

(assert (=> b!2322930 (= tp!736820 (and (inv!37639 (left!21006 (left!21006 (right!21336 acc!252)))) e!1488928))))

(assert (= (and b!2322930 ((_ is Node!9073) (left!21006 (left!21006 (right!21336 acc!252))))) b!2323415))

(assert (= b!2323416 b!2323417))

(assert (= (and b!2322930 ((_ is Leaf!13319) (left!21006 (left!21006 (right!21336 acc!252))))) b!2323416))

(declare-fun m!2753415 () Bool)

(assert (=> b!2323415 m!2753415))

(declare-fun m!2753417 () Bool)

(assert (=> b!2323415 m!2753417))

(declare-fun m!2753419 () Bool)

(assert (=> b!2323416 m!2753419))

(assert (=> b!2322930 m!2752545))

(declare-fun tp!736864 () Bool)

(declare-fun b!2323418 () Bool)

(declare-fun tp!736865 () Bool)

(declare-fun e!1488930 () Bool)

(assert (=> b!2323418 (= e!1488930 (and (inv!37639 (left!21006 (right!21336 (left!21006 (right!21336 acc!252))))) tp!736864 (inv!37639 (right!21336 (right!21336 (left!21006 (right!21336 acc!252))))) tp!736865))))

(declare-fun b!2323420 () Bool)

(declare-fun e!1488929 () Bool)

(declare-fun tp!736866 () Bool)

(assert (=> b!2323420 (= e!1488929 tp!736866)))

(declare-fun b!2323419 () Bool)

(assert (=> b!2323419 (= e!1488930 (and (inv!37640 (xs!12039 (right!21336 (left!21006 (right!21336 acc!252))))) e!1488929))))

(assert (=> b!2322930 (= tp!736821 (and (inv!37639 (right!21336 (left!21006 (right!21336 acc!252)))) e!1488930))))

(assert (= (and b!2322930 ((_ is Node!9073) (right!21336 (left!21006 (right!21336 acc!252))))) b!2323418))

(assert (= b!2323419 b!2323420))

(assert (= (and b!2322930 ((_ is Leaf!13319) (right!21336 (left!21006 (right!21336 acc!252))))) b!2323419))

(declare-fun m!2753421 () Bool)

(assert (=> b!2323418 m!2753421))

(declare-fun m!2753423 () Bool)

(assert (=> b!2323418 m!2753423))

(declare-fun m!2753425 () Bool)

(assert (=> b!2323419 m!2753425))

(assert (=> b!2322930 m!2752547))

(declare-fun b!2323421 () Bool)

(declare-fun e!1488931 () Bool)

(declare-fun tp!736867 () Bool)

(assert (=> b!2323421 (= e!1488931 (and tp_is_empty!10829 tp!736867))))

(assert (=> b!2322929 (= tp!736819 e!1488931)))

(assert (= (and b!2322929 ((_ is Cons!27668) (t!207446 (t!207446 (innerList!9133 arr!18))))) b!2323421))

(declare-fun b!2323422 () Bool)

(declare-fun e!1488932 () Bool)

(declare-fun tp!736868 () Bool)

(assert (=> b!2323422 (= e!1488932 (and tp_is_empty!10829 tp!736868))))

(assert (=> b!2322921 (= tp!736811 e!1488932)))

(assert (= (and b!2322921 ((_ is Cons!27668) (t!207446 (t!207446 (innerList!9133 (xs!12039 acc!252)))))) b!2323422))

(declare-fun b!2323423 () Bool)

(declare-fun e!1488933 () Bool)

(declare-fun tp!736869 () Bool)

(assert (=> b!2323423 (= e!1488933 (and tp_is_empty!10829 tp!736869))))

(assert (=> b!2322801 (= tp!736806 e!1488933)))

(assert (= (and b!2322801 ((_ is Cons!27668) (innerList!9133 _$4!1111))) b!2323423))

(declare-fun b!2323424 () Bool)

(declare-fun e!1488934 () Bool)

(declare-fun tp!736870 () Bool)

(assert (=> b!2323424 (= e!1488934 (and tp_is_empty!10829 tp!736870))))

(assert (=> b!2322936 (= tp!736826 e!1488934)))

(assert (= (and b!2322936 ((_ is Cons!27668) (t!207446 (innerList!9133 (xs!12039 (left!21006 acc!252)))))) b!2323424))

(declare-fun b!2323425 () Bool)

(declare-fun e!1488935 () Bool)

(declare-fun tp!736871 () Bool)

(assert (=> b!2323425 (= e!1488935 (and tp_is_empty!10829 tp!736871))))

(assert (=> b!2322927 (= tp!736817 e!1488935)))

(assert (= (and b!2322927 ((_ is Cons!27668) (innerList!9133 (xs!12039 (right!21336 (left!21006 acc!252)))))) b!2323425))

(declare-fun tp!736873 () Bool)

(declare-fun tp!736872 () Bool)

(declare-fun b!2323426 () Bool)

(declare-fun e!1488937 () Bool)

(assert (=> b!2323426 (= e!1488937 (and (inv!37639 (left!21006 (left!21006 (right!21336 (right!21336 acc!252))))) tp!736872 (inv!37639 (right!21336 (left!21006 (right!21336 (right!21336 acc!252))))) tp!736873))))

(declare-fun b!2323428 () Bool)

(declare-fun e!1488936 () Bool)

(declare-fun tp!736874 () Bool)

(assert (=> b!2323428 (= e!1488936 tp!736874)))

(declare-fun b!2323427 () Bool)

(assert (=> b!2323427 (= e!1488937 (and (inv!37640 (xs!12039 (left!21006 (right!21336 (right!21336 acc!252))))) e!1488936))))

(assert (=> b!2322933 (= tp!736823 (and (inv!37639 (left!21006 (right!21336 (right!21336 acc!252)))) e!1488937))))

(assert (= (and b!2322933 ((_ is Node!9073) (left!21006 (right!21336 (right!21336 acc!252))))) b!2323426))

(assert (= b!2323427 b!2323428))

(assert (= (and b!2322933 ((_ is Leaf!13319) (left!21006 (right!21336 (right!21336 acc!252))))) b!2323427))

(declare-fun m!2753427 () Bool)

(assert (=> b!2323426 m!2753427))

(declare-fun m!2753429 () Bool)

(assert (=> b!2323426 m!2753429))

(declare-fun m!2753431 () Bool)

(assert (=> b!2323427 m!2753431))

(assert (=> b!2322933 m!2752551))

(declare-fun tp!736875 () Bool)

(declare-fun b!2323429 () Bool)

(declare-fun e!1488939 () Bool)

(declare-fun tp!736876 () Bool)

(assert (=> b!2323429 (= e!1488939 (and (inv!37639 (left!21006 (right!21336 (right!21336 (right!21336 acc!252))))) tp!736875 (inv!37639 (right!21336 (right!21336 (right!21336 (right!21336 acc!252))))) tp!736876))))

(declare-fun b!2323431 () Bool)

(declare-fun e!1488938 () Bool)

(declare-fun tp!736877 () Bool)

(assert (=> b!2323431 (= e!1488938 tp!736877)))

(declare-fun b!2323430 () Bool)

(assert (=> b!2323430 (= e!1488939 (and (inv!37640 (xs!12039 (right!21336 (right!21336 (right!21336 acc!252))))) e!1488938))))

(assert (=> b!2322933 (= tp!736824 (and (inv!37639 (right!21336 (right!21336 (right!21336 acc!252)))) e!1488939))))

(assert (= (and b!2322933 ((_ is Node!9073) (right!21336 (right!21336 (right!21336 acc!252))))) b!2323429))

(assert (= b!2323430 b!2323431))

(assert (= (and b!2322933 ((_ is Leaf!13319) (right!21336 (right!21336 (right!21336 acc!252))))) b!2323430))

(declare-fun m!2753433 () Bool)

(assert (=> b!2323429 m!2753433))

(declare-fun m!2753435 () Bool)

(assert (=> b!2323429 m!2753435))

(declare-fun m!2753437 () Bool)

(assert (=> b!2323430 m!2753437))

(assert (=> b!2322933 m!2752553))

(check-sat (not b!2323057) (not d!687480) (not b!2323251) (not b!2323237) (not b!2323283) (not b!2323376) (not b!2323101) (not d!687574) (not bm!138544) (not b!2323356) (not b!2323131) (not b!2323162) (not b!2323127) (not b!2323199) (not bm!138548) (not b!2323227) (not d!687638) (not bm!138578) (not b!2323165) (not b!2323279) (not b!2323119) (not b!2323424) (not b!2323398) (not b!2323118) (not d!687632) (not b!2323414) (not bm!138546) (not b!2323114) (not b!2323298) (not d!687508) (not b!2323192) (not b!2323419) (not b!2323277) (not b!2323338) (not b!2323218) (not b!2323343) (not b!2323060) (not b!2323136) (not b!2323248) (not b!2323268) (not b!2323368) (not bm!138574) (not d!687542) (not d!687586) (not b!2323381) (not d!687704) (not bm!138552) (not b!2323193) (not b!2323288) (not b!2323275) (not b!2323225) (not b!2323403) (not b!2323331) (not b!2323330) (not b!2323295) (not b!2323390) (not b!2323327) (not b!2323425) (not b!2323085) (not b!2323352) (not d!687702) (not bm!138577) (not d!687490) (not bm!138551) (not b!2323121) (not d!687682) (not d!687470) (not bm!138545) (not d!687566) (not b!2323250) (not b!2323096) (not b!2323233) (not b!2323421) (not b!2323428) (not b!2323230) (not b!2323351) (not bm!138559) (not b!2323058) (not b!2323200) (not bm!138549) (not d!687476) (not b!2323292) (not b!2323130) (not b!2323249) (not d!687680) (not b!2323139) (not b!2323311) (not b!2323411) (not b!2323197) (not b!2323383) (not b!2323423) (not b!2323418) (not b!2323386) (not d!687676) (not b!2323401) (not b!2323123) (not b!2323406) (not b!2323373) (not b!2323124) (not b!2323059) (not b!2323234) (not b!2323116) (not d!687556) (not b!2323402) (not bm!138571) (not bm!138557) (not b!2323161) (not b!2323158) (not b!2323305) (not bm!138581) (not b!2323408) (not b!2323371) (not d!687462) (not bm!138547) (not bm!138570) (not d!687600) (not b!2323104) (not b!2323302) (not b!2323122) (not b!2323269) (not b!2323426) (not b!2323212) (not bm!138569) (not b!2323407) (not b!2323348) (not d!687654) (not b!2323375) (not b!2323410) (not b!2323301) (not b!2323238) (not b!2323429) (not b!2322922) (not b!2322930) (not bm!138567) (not d!687598) (not b!2323291) (not d!687714) (not b!2323107) (not b!2323246) (not bm!138540) (not bm!138550) (not b!2323241) (not d!687562) (not b!2323245) (not b!2323397) (not b!2323239) (not b!2323314) (not b!2323183) (not b!2323412) (not b!2322933) (not b!2323265) (not b!2323297) (not b!2323290) (not b!2323173) (not b!2323382) (not b!2323243) (not b!2323146) (not b!2323187) (not d!687546) (not d!687700) (not b!2323391) (not d!687656) (not b!2323303) (not b!2323336) (not b!2323320) (not b!2323289) (not b!2323232) (not b!2323312) (not b!2323170) (not b!2323422) (not b!2323420) (not d!687496) (not b!2323335) (not b!2323416) (not b!2323415) (not b!2323306) (not d!687544) (not b!2323377) (not b!2323217) (not b!2323354) (not b!2323417) (not b!2323328) (not b!2323285) (not b!2323143) (not b!2323039) (not b!2323247) (not b!2323365) (not b!2323353) (not b!2323156) (not b!2323286) (not b!2323263) (not d!687648) (not b!2323205) (not b!2323324) (not b!2323273) (not bm!138565) (not bm!138573) (not b!2323355) (not b!2323144) (not b!2323427) (not b!2323385) (not b!2323358) (not b!2323140) tp_is_empty!10829 (not b!2323350) (not b!2323404) (not b!2323394) (not bm!138538) (not d!687564) (not b!2323362) (not b!2323374) (not b!2323267) (not b!2323152) (not bm!138580) (not d!687710) (not d!687572) (not b!2323369) (not b!2323261) (not bm!138579) (not b!2323179) (not b!2323378) (not b!2323105) (not b!2323235) (not b!2323242) (not b!2323282) (not b!2323366) (not b!2323430) (not b!2323166) (not b!2323413) (not bm!138576) (not d!687660) (not b!2323344) (not b!2323231) (not b!2323256) (not b!2323093) (not d!687518) (not b!2323379) (not b!2323399) (not bm!138564) (not b!2323095) (not b!2323128) (not b!2323025) (not b!2323259) (not b!2323360) (not b!2323258) (not bm!138575) (not b!2323202) (not b!2323293) (not bm!138560) (not b!2323216) (not d!687694) (not bm!138541) (not b!2323339) (not b!2323147) (not b!2323209) (not b!2323372) (not b!2323038) (not d!687458) (not b!2323035) (not b!2323395) (not d!687460) (not b!2323304) (not d!687570) (not b!2323087) (not bm!138566) (not d!687678) (not b!2323253) (not b!2323347) (not b!2323317) (not b!2323034) (not b!2323155) (not b!2323215) (not bm!138539) (not b!2323284) (not d!687560) (not b!2323266) (not b!2323031) (not b!2323409) (not d!687582) (not b!2323309) (not d!687548) (not b!2323240) (not b!2323281) (not b!2323041) (not b!2323400) (not d!687464) (not b!2323151) (not b!2323171) (not d!687494) (not b!2323271) (not d!687650) (not b!2323168) (not b!2323280) (not b!2323120) (not b!2322925) (not d!687540) (not b!2323270) (not b!2323294) (not b!2323135) (not d!687588) (not b!2323316) (not bm!138572) (not b!2323287) (not b!2323207) (not b!2323307) (not b!2323431) (not b!2323254) (not b!2323323) (not b!2323380) (not b!2323100) (not d!687558) (not b!2323204) (not b!2323405))
(check-sat)
