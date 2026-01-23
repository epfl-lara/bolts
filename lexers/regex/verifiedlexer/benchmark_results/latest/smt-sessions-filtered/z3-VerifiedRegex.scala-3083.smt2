; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183282 () Bool)

(assert start!183282)

(declare-fun res!827310 () Bool)

(declare-fun e!1176402 () Bool)

(assert (=> start!183282 (=> (not res!827310) (not e!1176402))))

(declare-datatypes ((T!31780 0))(
  ( (T!31781 (val!5740 Int)) )
))
(declare-datatypes ((List!20340 0))(
  ( (Nil!20270) (Cons!20270 (h!25671 T!31780) (t!171769 List!20340)) )
))
(declare-datatypes ((IArray!13395 0))(
  ( (IArray!13396 (innerList!6755 List!20340)) )
))
(declare-datatypes ((Conc!6695 0))(
  ( (Node!6695 (left!16184 Conc!6695) (right!16514 Conc!6695) (csize!13620 Int) (cheight!6906 Int)) (Leaf!9779 (xs!9571 IArray!13395) (csize!13621 Int)) (Empty!6695) )
))
(declare-datatypes ((BalanceConc!13334 0))(
  ( (BalanceConc!13335 (c!300437 Conc!6695)) )
))
(declare-fun bc!4 () BalanceConc!13334)

(declare-fun hd!347 () T!31780)

(declare-fun tl!456 () List!20340)

(declare-fun list!8224 (BalanceConc!13334) List!20340)

(declare-fun list!8225 (Conc!6695) List!20340)

(declare-fun fromList!460 (List!20340) Conc!6695)

(declare-fun $colon$colon!472 (List!20340 T!31780) List!20340)

(assert (=> start!183282 (= res!827310 (= (list!8224 bc!4) (list!8225 (fromList!460 ($colon$colon!472 tl!456 hd!347)))))))

(assert (=> start!183282 e!1176402))

(declare-fun e!1176401 () Bool)

(declare-fun inv!26432 (BalanceConc!13334) Bool)

(assert (=> start!183282 (and (inv!26432 bc!4) e!1176401)))

(declare-fun e!1176400 () Bool)

(assert (=> start!183282 e!1176400))

(declare-fun tp_is_empty!8333 () Bool)

(assert (=> start!183282 tp_is_empty!8333))

(declare-fun b!1840820 () Bool)

(declare-fun isBalanced!2086 (Conc!6695) Bool)

(assert (=> b!1840820 (= e!1176402 (not (isBalanced!2086 (fromList!460 tl!456))))))

(declare-datatypes ((Unit!34979 0))(
  ( (Unit!34980) )
))
(declare-fun lt!714248 () Unit!34979)

(declare-fun choose!11579 (T!31780 List!20340 BalanceConc!13334) Unit!34979)

(assert (=> b!1840820 (= lt!714248 (choose!11579 hd!347 tl!456 bc!4))))

(declare-fun b!1840821 () Bool)

(declare-fun tp!520469 () Bool)

(declare-fun inv!26433 (Conc!6695) Bool)

(assert (=> b!1840821 (= e!1176401 (and (inv!26433 (c!300437 bc!4)) tp!520469))))

(declare-fun b!1840822 () Bool)

(declare-fun tp!520470 () Bool)

(assert (=> b!1840822 (= e!1176400 (and tp_is_empty!8333 tp!520470))))

(assert (= (and start!183282 res!827310) b!1840820))

(assert (= start!183282 b!1840821))

(get-info :version)

(assert (= (and start!183282 ((_ is Cons!20270) tl!456)) b!1840822))

(declare-fun m!2268251 () Bool)

(assert (=> start!183282 m!2268251))

(declare-fun m!2268253 () Bool)

(assert (=> start!183282 m!2268253))

(declare-fun m!2268255 () Bool)

(assert (=> start!183282 m!2268255))

(declare-fun m!2268257 () Bool)

(assert (=> start!183282 m!2268257))

(assert (=> start!183282 m!2268253))

(assert (=> start!183282 m!2268255))

(declare-fun m!2268259 () Bool)

(assert (=> start!183282 m!2268259))

(declare-fun m!2268261 () Bool)

(assert (=> b!1840820 m!2268261))

(assert (=> b!1840820 m!2268261))

(declare-fun m!2268263 () Bool)

(assert (=> b!1840820 m!2268263))

(declare-fun m!2268265 () Bool)

(assert (=> b!1840820 m!2268265))

(declare-fun m!2268267 () Bool)

(assert (=> b!1840821 m!2268267))

(check-sat (not b!1840821) (not b!1840820) (not b!1840822) (not start!183282) tp_is_empty!8333)
(check-sat)
(get-model)

(declare-fun d!562904 () Bool)

(declare-fun res!827343 () Bool)

(declare-fun e!1176414 () Bool)

(assert (=> d!562904 (=> res!827343 e!1176414)))

(assert (=> d!562904 (= res!827343 (not ((_ is Node!6695) (fromList!460 tl!456))))))

(assert (=> d!562904 (= (isBalanced!2086 (fromList!460 tl!456)) e!1176414)))

(declare-fun b!1840853 () Bool)

(declare-fun res!827346 () Bool)

(declare-fun e!1176413 () Bool)

(assert (=> b!1840853 (=> (not res!827346) (not e!1176413))))

(declare-fun height!1017 (Conc!6695) Int)

(assert (=> b!1840853 (= res!827346 (<= (- (height!1017 (left!16184 (fromList!460 tl!456))) (height!1017 (right!16514 (fromList!460 tl!456)))) 1))))

(declare-fun b!1840854 () Bool)

(declare-fun res!827344 () Bool)

(assert (=> b!1840854 (=> (not res!827344) (not e!1176413))))

(assert (=> b!1840854 (= res!827344 (isBalanced!2086 (left!16184 (fromList!460 tl!456))))))

(declare-fun b!1840855 () Bool)

(declare-fun res!827345 () Bool)

(assert (=> b!1840855 (=> (not res!827345) (not e!1176413))))

(declare-fun isEmpty!12762 (Conc!6695) Bool)

(assert (=> b!1840855 (= res!827345 (not (isEmpty!12762 (left!16184 (fromList!460 tl!456)))))))

(declare-fun b!1840856 () Bool)

(declare-fun res!827342 () Bool)

(assert (=> b!1840856 (=> (not res!827342) (not e!1176413))))

(assert (=> b!1840856 (= res!827342 (isBalanced!2086 (right!16514 (fromList!460 tl!456))))))

(declare-fun b!1840857 () Bool)

(assert (=> b!1840857 (= e!1176414 e!1176413)))

(declare-fun res!827341 () Bool)

(assert (=> b!1840857 (=> (not res!827341) (not e!1176413))))

(assert (=> b!1840857 (= res!827341 (<= (- 1) (- (height!1017 (left!16184 (fromList!460 tl!456))) (height!1017 (right!16514 (fromList!460 tl!456))))))))

(declare-fun b!1840858 () Bool)

(assert (=> b!1840858 (= e!1176413 (not (isEmpty!12762 (right!16514 (fromList!460 tl!456)))))))

(assert (= (and d!562904 (not res!827343)) b!1840857))

(assert (= (and b!1840857 res!827341) b!1840853))

(assert (= (and b!1840853 res!827346) b!1840854))

(assert (= (and b!1840854 res!827344) b!1840856))

(assert (= (and b!1840856 res!827342) b!1840855))

(assert (= (and b!1840855 res!827345) b!1840858))

(declare-fun m!2268281 () Bool)

(assert (=> b!1840856 m!2268281))

(declare-fun m!2268283 () Bool)

(assert (=> b!1840857 m!2268283))

(declare-fun m!2268285 () Bool)

(assert (=> b!1840857 m!2268285))

(declare-fun m!2268287 () Bool)

(assert (=> b!1840858 m!2268287))

(declare-fun m!2268289 () Bool)

(assert (=> b!1840854 m!2268289))

(assert (=> b!1840853 m!2268283))

(assert (=> b!1840853 m!2268285))

(declare-fun m!2268291 () Bool)

(assert (=> b!1840855 m!2268291))

(assert (=> b!1840820 d!562904))

(declare-fun d!562908 () Bool)

(declare-fun e!1176420 () Bool)

(assert (=> d!562908 e!1176420))

(declare-fun res!827352 () Bool)

(assert (=> d!562908 (=> (not res!827352) (not e!1176420))))

(declare-fun lt!714254 () Conc!6695)

(assert (=> d!562908 (= res!827352 (= (list!8225 lt!714254) tl!456))))

(declare-fun choose!11581 (List!20340) Conc!6695)

(assert (=> d!562908 (= lt!714254 (choose!11581 tl!456))))

(assert (=> d!562908 (= (fromList!460 tl!456) lt!714254)))

(declare-fun b!1840864 () Bool)

(assert (=> b!1840864 (= e!1176420 (isBalanced!2086 lt!714254))))

(assert (= (and d!562908 res!827352) b!1840864))

(declare-fun m!2268299 () Bool)

(assert (=> d!562908 m!2268299))

(declare-fun m!2268301 () Bool)

(assert (=> d!562908 m!2268301))

(declare-fun m!2268303 () Bool)

(assert (=> b!1840864 m!2268303))

(assert (=> b!1840820 d!562908))

(declare-fun d!562912 () Bool)

(declare-fun choose!11583 (T!31780 List!20340 BalanceConc!13334) Unit!34979)

(assert (=> d!562912 (= (choose!11579 hd!347 tl!456 bc!4) (choose!11583 hd!347 tl!456 bc!4))))

(declare-fun bs!408585 () Bool)

(assert (= bs!408585 d!562912))

(declare-fun m!2268307 () Bool)

(assert (=> bs!408585 m!2268307))

(assert (=> b!1840820 d!562912))

(declare-fun d!562916 () Bool)

(declare-fun c!300443 () Bool)

(assert (=> d!562916 (= c!300443 ((_ is Node!6695) (c!300437 bc!4)))))

(declare-fun e!1176431 () Bool)

(assert (=> d!562916 (= (inv!26433 (c!300437 bc!4)) e!1176431)))

(declare-fun b!1840880 () Bool)

(declare-fun inv!26435 (Conc!6695) Bool)

(assert (=> b!1840880 (= e!1176431 (inv!26435 (c!300437 bc!4)))))

(declare-fun b!1840881 () Bool)

(declare-fun e!1176432 () Bool)

(assert (=> b!1840881 (= e!1176431 e!1176432)))

(declare-fun res!827358 () Bool)

(assert (=> b!1840881 (= res!827358 (not ((_ is Leaf!9779) (c!300437 bc!4))))))

(assert (=> b!1840881 (=> res!827358 e!1176432)))

(declare-fun b!1840882 () Bool)

(declare-fun inv!26437 (Conc!6695) Bool)

(assert (=> b!1840882 (= e!1176432 (inv!26437 (c!300437 bc!4)))))

(assert (= (and d!562916 c!300443) b!1840880))

(assert (= (and d!562916 (not c!300443)) b!1840881))

(assert (= (and b!1840881 (not res!827358)) b!1840882))

(declare-fun m!2268313 () Bool)

(assert (=> b!1840880 m!2268313))

(declare-fun m!2268315 () Bool)

(assert (=> b!1840882 m!2268315))

(assert (=> b!1840821 d!562916))

(declare-fun d!562920 () Bool)

(assert (=> d!562920 (= (inv!26432 bc!4) (isBalanced!2086 (c!300437 bc!4)))))

(declare-fun bs!408588 () Bool)

(assert (= bs!408588 d!562920))

(declare-fun m!2268321 () Bool)

(assert (=> bs!408588 m!2268321))

(assert (=> start!183282 d!562920))

(declare-fun d!562926 () Bool)

(assert (=> d!562926 (= (list!8224 bc!4) (list!8225 (c!300437 bc!4)))))

(declare-fun bs!408589 () Bool)

(assert (= bs!408589 d!562926))

(declare-fun m!2268323 () Bool)

(assert (=> bs!408589 m!2268323))

(assert (=> start!183282 d!562926))

(declare-fun b!1840909 () Bool)

(declare-fun e!1176444 () List!20340)

(declare-fun e!1176445 () List!20340)

(assert (=> b!1840909 (= e!1176444 e!1176445)))

(declare-fun c!300455 () Bool)

(assert (=> b!1840909 (= c!300455 ((_ is Leaf!9779) (fromList!460 ($colon$colon!472 tl!456 hd!347))))))

(declare-fun b!1840906 () Bool)

(assert (=> b!1840906 (= e!1176444 Nil!20270)))

(declare-fun b!1840911 () Bool)

(declare-fun ++!5508 (List!20340 List!20340) List!20340)

(assert (=> b!1840911 (= e!1176445 (++!5508 (list!8225 (left!16184 (fromList!460 ($colon$colon!472 tl!456 hd!347)))) (list!8225 (right!16514 (fromList!460 ($colon$colon!472 tl!456 hd!347))))))))

(declare-fun d!562928 () Bool)

(declare-fun c!300454 () Bool)

(assert (=> d!562928 (= c!300454 ((_ is Empty!6695) (fromList!460 ($colon$colon!472 tl!456 hd!347))))))

(assert (=> d!562928 (= (list!8225 (fromList!460 ($colon$colon!472 tl!456 hd!347))) e!1176444)))

(declare-fun b!1840910 () Bool)

(declare-fun list!8227 (IArray!13395) List!20340)

(assert (=> b!1840910 (= e!1176445 (list!8227 (xs!9571 (fromList!460 ($colon$colon!472 tl!456 hd!347)))))))

(assert (= (and d!562928 c!300454) b!1840906))

(assert (= (and d!562928 (not c!300454)) b!1840909))

(assert (= (and b!1840909 c!300455) b!1840910))

(assert (= (and b!1840909 (not c!300455)) b!1840911))

(declare-fun m!2268339 () Bool)

(assert (=> b!1840911 m!2268339))

(declare-fun m!2268341 () Bool)

(assert (=> b!1840911 m!2268341))

(assert (=> b!1840911 m!2268339))

(assert (=> b!1840911 m!2268341))

(declare-fun m!2268343 () Bool)

(assert (=> b!1840911 m!2268343))

(declare-fun m!2268345 () Bool)

(assert (=> b!1840910 m!2268345))

(assert (=> start!183282 d!562928))

(declare-fun d!562934 () Bool)

(assert (=> d!562934 (= ($colon$colon!472 tl!456 hd!347) (Cons!20270 hd!347 tl!456))))

(assert (=> start!183282 d!562934))

(declare-fun d!562936 () Bool)

(declare-fun e!1176450 () Bool)

(assert (=> d!562936 e!1176450))

(declare-fun res!827360 () Bool)

(assert (=> d!562936 (=> (not res!827360) (not e!1176450))))

(declare-fun lt!714256 () Conc!6695)

(assert (=> d!562936 (= res!827360 (= (list!8225 lt!714256) ($colon$colon!472 tl!456 hd!347)))))

(assert (=> d!562936 (= lt!714256 (choose!11581 ($colon$colon!472 tl!456 hd!347)))))

(assert (=> d!562936 (= (fromList!460 ($colon$colon!472 tl!456 hd!347)) lt!714256)))

(declare-fun b!1840916 () Bool)

(assert (=> b!1840916 (= e!1176450 (isBalanced!2086 lt!714256))))

(assert (= (and d!562936 res!827360) b!1840916))

(declare-fun m!2268347 () Bool)

(assert (=> d!562936 m!2268347))

(assert (=> d!562936 m!2268253))

(declare-fun m!2268349 () Bool)

(assert (=> d!562936 m!2268349))

(declare-fun m!2268351 () Bool)

(assert (=> b!1840916 m!2268351))

(assert (=> start!183282 d!562936))

(declare-fun e!1176460 () Bool)

(declare-fun tp!520490 () Bool)

(declare-fun tp!520489 () Bool)

(declare-fun b!1840933 () Bool)

(assert (=> b!1840933 (= e!1176460 (and (inv!26433 (left!16184 (c!300437 bc!4))) tp!520490 (inv!26433 (right!16514 (c!300437 bc!4))) tp!520489))))

(declare-fun b!1840935 () Bool)

(declare-fun e!1176461 () Bool)

(declare-fun tp!520491 () Bool)

(assert (=> b!1840935 (= e!1176461 tp!520491)))

(declare-fun b!1840934 () Bool)

(declare-fun inv!26438 (IArray!13395) Bool)

(assert (=> b!1840934 (= e!1176460 (and (inv!26438 (xs!9571 (c!300437 bc!4))) e!1176461))))

(assert (=> b!1840821 (= tp!520469 (and (inv!26433 (c!300437 bc!4)) e!1176460))))

(assert (= (and b!1840821 ((_ is Node!6695) (c!300437 bc!4))) b!1840933))

(assert (= b!1840934 b!1840935))

(assert (= (and b!1840821 ((_ is Leaf!9779) (c!300437 bc!4))) b!1840934))

(declare-fun m!2268359 () Bool)

(assert (=> b!1840933 m!2268359))

(declare-fun m!2268361 () Bool)

(assert (=> b!1840933 m!2268361))

(declare-fun m!2268363 () Bool)

(assert (=> b!1840934 m!2268363))

(assert (=> b!1840821 m!2268267))

(declare-fun b!1840940 () Bool)

(declare-fun e!1176464 () Bool)

(declare-fun tp!520494 () Bool)

(assert (=> b!1840940 (= e!1176464 (and tp_is_empty!8333 tp!520494))))

(assert (=> b!1840822 (= tp!520470 e!1176464)))

(assert (= (and b!1840822 ((_ is Cons!20270) (t!171769 tl!456))) b!1840940))

(check-sat (not b!1840864) (not b!1840916) (not b!1840935) (not b!1840856) (not b!1840853) (not d!562926) (not d!562920) (not b!1840855) (not b!1840854) (not b!1840880) (not b!1840933) (not b!1840940) (not b!1840910) (not b!1840911) tp_is_empty!8333 (not b!1840857) (not d!562908) (not b!1840821) (not d!562912) (not b!1840882) (not d!562936) (not b!1840934) (not b!1840858))
(check-sat)
