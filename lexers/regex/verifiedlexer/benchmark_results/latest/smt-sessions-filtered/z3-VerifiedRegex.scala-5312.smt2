; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271956 () Bool)

(assert start!271956)

(declare-fun b_free!80247 () Bool)

(declare-fun b_next!80951 () Bool)

(assert (=> start!271956 (= b_free!80247 (not b_next!80951))))

(declare-fun tp!897444 () Bool)

(declare-fun b_and!205529 () Bool)

(assert (=> start!271956 (= tp!897444 b_and!205529)))

(declare-datatypes ((Object!5240 0) (Conc!10158 0) (IArray!20321 0) (BalanceConc!19932 0) (List!32915 0))(
  ( (BalanceConc!19931 (value!158052 BalanceConc!19932)) (List!32914 (value!158053 List!32915)) (Character!100 (value!158054 (_ BitVec 16))) (Open!100 (value!158055 Int)) )
  ( (Node!10158 (left!24752 Conc!10158) (right!25082 Conc!10158) (csize!20546 Int) (cheight!10369 Int)) (Leaf!15471 (xs!13270 IArray!20321) (csize!20547 Int)) (Empty!10158) )
  ( (IArray!20322 (innerList!10218 List!32915)) )
  ( (BalanceConc!19933 (c!455327 Conc!10158)) )
  ( (Nil!32813) (Cons!32813 (h!38233 Object!5240) (t!229853 List!32915)) )
))
(declare-datatypes ((T!54670 0))(
  ( (T!54671 (val!10303 Int)) )
))
(declare-datatypes ((List!32916 0))(
  ( (Nil!32814) (Cons!32814 (h!38234 T!54670) (t!229854 List!32916)) )
))
(declare-datatypes ((Vector!206 0))(
  ( (Vector!207 (underlying!8327 Object!5240) (overflowing!160 List!32916)) )
))
(declare-fun thiss!9447 () Vector!206)

(declare-fun f!1100 () Int)

(declare-datatypes ((B!2429 0))(
  ( (B!2430 (val!10304 Int)) )
))
(declare-datatypes ((List!32917 0))(
  ( (Nil!32815) (Cons!32815 (h!38235 B!2429) (t!229855 List!32917)) )
))
(declare-datatypes ((Vector!208 0))(
  ( (Vector!209 (underlying!8328 Object!5240) (overflowing!161 List!32917)) )
))
(declare-fun list!12292 (Vector!208) List!32917)

(declare-fun choose!16559 (Vector!206 Int) Vector!208)

(declare-fun map!7085 (List!32916 Int) List!32917)

(declare-fun list!12293 (Vector!206) List!32916)

(assert (=> start!271956 (not (= (list!12292 (choose!16559 thiss!9447 f!1100)) (map!7085 (list!12293 thiss!9447) f!1100)))))

(declare-fun e!1777422 () Bool)

(assert (=> start!271956 e!1777422))

(assert (=> start!271956 tp!897444))

(declare-fun b!2810534 () Bool)

(declare-fun tp!897442 () Bool)

(declare-fun tp!897443 () Bool)

(assert (=> b!2810534 (= e!1777422 (and tp!897442 tp!897443))))

(assert (= start!271956 b!2810534))

(declare-fun m!3240449 () Bool)

(assert (=> start!271956 m!3240449))

(assert (=> start!271956 m!3240449))

(declare-fun m!3240451 () Bool)

(assert (=> start!271956 m!3240451))

(declare-fun m!3240453 () Bool)

(assert (=> start!271956 m!3240453))

(assert (=> start!271956 m!3240453))

(declare-fun m!3240455 () Bool)

(assert (=> start!271956 m!3240455))

(check-sat (not start!271956) (not b!2810534) b_and!205529 (not b_next!80951))
(check-sat b_and!205529 (not b_next!80951))
(get-model)

(declare-fun d!815823 () Bool)

(declare-fun choose!16562 (Vector!208) List!32917)

(assert (=> d!815823 (= (list!12292 (choose!16559 thiss!9447 f!1100)) (choose!16562 (choose!16559 thiss!9447 f!1100)))))

(declare-fun bs!516351 () Bool)

(assert (= bs!516351 d!815823))

(assert (=> bs!516351 m!3240449))

(declare-fun m!3240461 () Bool)

(assert (=> bs!516351 m!3240461))

(assert (=> start!271956 d!815823))

(declare-fun d!815825 () Bool)

(declare-fun choose!16563 (Vector!206 Int) Vector!208)

(assert (=> d!815825 (= (choose!16559 thiss!9447 f!1100) (choose!16563 thiss!9447 f!1100))))

(declare-fun bs!516352 () Bool)

(assert (= bs!516352 d!815825))

(declare-fun m!3240463 () Bool)

(assert (=> bs!516352 m!3240463))

(assert (=> start!271956 d!815825))

(declare-fun d!815827 () Bool)

(declare-fun lt!1004044 () List!32917)

(declare-fun size!25577 (List!32917) Int)

(declare-fun size!25578 (List!32916) Int)

(assert (=> d!815827 (= (size!25577 lt!1004044) (size!25578 (list!12293 thiss!9447)))))

(declare-fun e!1777436 () List!32917)

(assert (=> d!815827 (= lt!1004044 e!1777436)))

(declare-fun c!455333 () Bool)

(get-info :version)

(assert (=> d!815827 (= c!455333 ((_ is Nil!32814) (list!12293 thiss!9447)))))

(assert (=> d!815827 (= (map!7085 (list!12293 thiss!9447) f!1100) lt!1004044)))

(declare-fun b!2810562 () Bool)

(assert (=> b!2810562 (= e!1777436 Nil!32815)))

(declare-fun b!2810563 () Bool)

(declare-fun $colon$colon!564 (List!32917 B!2429) List!32917)

(declare-fun dynLambda!13735 (Int T!54670) B!2429)

(assert (=> b!2810563 (= e!1777436 ($colon$colon!564 (map!7085 (t!229854 (list!12293 thiss!9447)) f!1100) (dynLambda!13735 f!1100 (h!38234 (list!12293 thiss!9447)))))))

(assert (= (and d!815827 c!455333) b!2810562))

(assert (= (and d!815827 (not c!455333)) b!2810563))

(declare-fun b_lambda!84185 () Bool)

(assert (=> (not b_lambda!84185) (not b!2810563)))

(declare-fun t!229859 () Bool)

(declare-fun tb!153663 () Bool)

(assert (=> (and start!271956 (= f!1100 f!1100) t!229859) tb!153663))

(declare-fun result!191020 () Bool)

(declare-fun tp_is_empty!14345 () Bool)

(assert (=> tb!153663 (= result!191020 tp_is_empty!14345)))

(assert (=> b!2810563 t!229859))

(declare-fun b_and!205533 () Bool)

(assert (= b_and!205529 (and (=> t!229859 result!191020) b_and!205533)))

(declare-fun m!3240481 () Bool)

(assert (=> d!815827 m!3240481))

(assert (=> d!815827 m!3240453))

(declare-fun m!3240483 () Bool)

(assert (=> d!815827 m!3240483))

(declare-fun m!3240485 () Bool)

(assert (=> b!2810563 m!3240485))

(declare-fun m!3240487 () Bool)

(assert (=> b!2810563 m!3240487))

(assert (=> b!2810563 m!3240485))

(assert (=> b!2810563 m!3240487))

(declare-fun m!3240489 () Bool)

(assert (=> b!2810563 m!3240489))

(assert (=> start!271956 d!815827))

(declare-fun d!815831 () Bool)

(declare-fun choose!16565 (Vector!206) List!32916)

(assert (=> d!815831 (= (list!12293 thiss!9447) (choose!16565 thiss!9447))))

(declare-fun bs!516354 () Bool)

(assert (= bs!516354 d!815831))

(declare-fun m!3240491 () Bool)

(assert (=> bs!516354 m!3240491))

(assert (=> start!271956 d!815831))

(declare-fun b!2810576 () Bool)

(declare-fun e!1777443 () Bool)

(declare-fun tp!897458 () Bool)

(declare-fun inv!44538 (Conc!10158) Bool)

(assert (=> b!2810576 (= e!1777443 (and (inv!44538 (c!455327 (value!158052 (underlying!8327 thiss!9447)))) tp!897458))))

(declare-fun b!2810575 () Bool)

(declare-fun e!1777442 () Bool)

(declare-fun inv!44539 (BalanceConc!19932) Bool)

(assert (=> b!2810575 (= e!1777442 (and (inv!44539 (value!158052 (underlying!8327 thiss!9447))) e!1777443))))

(declare-fun b!2810577 () Bool)

(declare-fun tp!897459 () Bool)

(assert (=> b!2810577 (= e!1777442 tp!897459)))

(assert (=> b!2810534 (= tp!897442 e!1777442)))

(assert (= b!2810575 b!2810576))

(assert (= (and b!2810534 ((_ is BalanceConc!19931) (underlying!8327 thiss!9447))) b!2810575))

(assert (= (and b!2810534 ((_ is List!32914) (underlying!8327 thiss!9447))) b!2810577))

(declare-fun m!3240493 () Bool)

(assert (=> b!2810576 m!3240493))

(declare-fun m!3240495 () Bool)

(assert (=> b!2810575 m!3240495))

(declare-fun b!2810582 () Bool)

(declare-fun e!1777446 () Bool)

(declare-fun tp_is_empty!14347 () Bool)

(declare-fun tp!897462 () Bool)

(assert (=> b!2810582 (= e!1777446 (and tp_is_empty!14347 tp!897462))))

(assert (=> b!2810534 (= tp!897443 e!1777446)))

(assert (= (and b!2810534 ((_ is Cons!32814) (overflowing!160 thiss!9447))) b!2810582))

(declare-fun b_lambda!84189 () Bool)

(assert (= b_lambda!84185 (or (and start!271956 b_free!80247) b_lambda!84189)))

(check-sat (not d!815831) (not d!815827) (not b!2810575) (not d!815825) tp_is_empty!14345 tp_is_empty!14347 (not b!2810576) (not b!2810563) (not b_lambda!84189) (not b!2810577) (not d!815823) (not b!2810582) b_and!205533 (not b_next!80951))
(check-sat b_and!205533 (not b_next!80951))
(get-model)

(declare-fun d!815833 () Bool)

(assert (=> d!815833 true))

(declare-fun e!1777449 () Bool)

(assert (=> d!815833 e!1777449))

(declare-fun res!1170219 () List!32916)

(assert (=> d!815833 (= (choose!16565 thiss!9447) res!1170219)))

(declare-fun b!2810585 () Bool)

(declare-fun tp!897465 () Bool)

(assert (=> b!2810585 (= e!1777449 (and tp_is_empty!14347 tp!897465))))

(assert (= (and d!815833 ((_ is Cons!32814) res!1170219)) b!2810585))

(assert (=> d!815831 d!815833))

(declare-fun d!815835 () Bool)

(declare-fun c!455336 () Bool)

(assert (=> d!815835 (= c!455336 ((_ is Node!10158) (c!455327 (value!158052 (underlying!8327 thiss!9447)))))))

(declare-fun e!1777454 () Bool)

(assert (=> d!815835 (= (inv!44538 (c!455327 (value!158052 (underlying!8327 thiss!9447)))) e!1777454)))

(declare-fun b!2810592 () Bool)

(declare-fun inv!44540 (Conc!10158) Bool)

(assert (=> b!2810592 (= e!1777454 (inv!44540 (c!455327 (value!158052 (underlying!8327 thiss!9447)))))))

(declare-fun b!2810593 () Bool)

(declare-fun e!1777455 () Bool)

(assert (=> b!2810593 (= e!1777454 e!1777455)))

(declare-fun res!1170224 () Bool)

(assert (=> b!2810593 (= res!1170224 (not ((_ is Leaf!15471) (c!455327 (value!158052 (underlying!8327 thiss!9447))))))))

(assert (=> b!2810593 (=> res!1170224 e!1777455)))

(declare-fun b!2810594 () Bool)

(declare-fun inv!44541 (Conc!10158) Bool)

(assert (=> b!2810594 (= e!1777455 (inv!44541 (c!455327 (value!158052 (underlying!8327 thiss!9447)))))))

(assert (= (and d!815835 c!455336) b!2810592))

(assert (= (and d!815835 (not c!455336)) b!2810593))

(assert (= (and b!2810593 (not res!1170224)) b!2810594))

(declare-fun m!3240497 () Bool)

(assert (=> b!2810592 m!3240497))

(declare-fun m!3240499 () Bool)

(assert (=> b!2810594 m!3240499))

(assert (=> b!2810576 d!815835))

(declare-fun d!815839 () Bool)

(declare-fun isBalanced!3084 (Conc!10158) Bool)

(assert (=> d!815839 (= (inv!44539 (value!158052 (underlying!8327 thiss!9447))) (isBalanced!3084 (c!455327 (value!158052 (underlying!8327 thiss!9447)))))))

(declare-fun bs!516355 () Bool)

(assert (= bs!516355 d!815839))

(declare-fun m!3240501 () Bool)

(assert (=> bs!516355 m!3240501))

(assert (=> b!2810575 d!815839))

(declare-fun d!815843 () Bool)

(assert (=> d!815843 (= ($colon$colon!564 (map!7085 (t!229854 (list!12293 thiss!9447)) f!1100) (dynLambda!13735 f!1100 (h!38234 (list!12293 thiss!9447)))) (Cons!32815 (dynLambda!13735 f!1100 (h!38234 (list!12293 thiss!9447))) (map!7085 (t!229854 (list!12293 thiss!9447)) f!1100)))))

(assert (=> b!2810563 d!815843))

(declare-fun d!815845 () Bool)

(declare-fun lt!1004047 () List!32917)

(assert (=> d!815845 (= (size!25577 lt!1004047) (size!25578 (t!229854 (list!12293 thiss!9447))))))

(declare-fun e!1777461 () List!32917)

(assert (=> d!815845 (= lt!1004047 e!1777461)))

(declare-fun c!455339 () Bool)

(assert (=> d!815845 (= c!455339 ((_ is Nil!32814) (t!229854 (list!12293 thiss!9447))))))

(assert (=> d!815845 (= (map!7085 (t!229854 (list!12293 thiss!9447)) f!1100) lt!1004047)))

(declare-fun b!2810602 () Bool)

(assert (=> b!2810602 (= e!1777461 Nil!32815)))

(declare-fun b!2810603 () Bool)

(assert (=> b!2810603 (= e!1777461 ($colon$colon!564 (map!7085 (t!229854 (t!229854 (list!12293 thiss!9447))) f!1100) (dynLambda!13735 f!1100 (h!38234 (t!229854 (list!12293 thiss!9447))))))))

(assert (= (and d!815845 c!455339) b!2810602))

(assert (= (and d!815845 (not c!455339)) b!2810603))

(declare-fun b_lambda!84191 () Bool)

(assert (=> (not b_lambda!84191) (not b!2810603)))

(declare-fun t!229862 () Bool)

(declare-fun tb!153665 () Bool)

(assert (=> (and start!271956 (= f!1100 f!1100) t!229862) tb!153665))

(declare-fun result!191028 () Bool)

(assert (=> tb!153665 (= result!191028 tp_is_empty!14345)))

(assert (=> b!2810603 t!229862))

(declare-fun b_and!205535 () Bool)

(assert (= b_and!205533 (and (=> t!229862 result!191028) b_and!205535)))

(declare-fun m!3240505 () Bool)

(assert (=> d!815845 m!3240505))

(declare-fun m!3240507 () Bool)

(assert (=> d!815845 m!3240507))

(declare-fun m!3240509 () Bool)

(assert (=> b!2810603 m!3240509))

(declare-fun m!3240511 () Bool)

(assert (=> b!2810603 m!3240511))

(assert (=> b!2810603 m!3240509))

(assert (=> b!2810603 m!3240511))

(declare-fun m!3240513 () Bool)

(assert (=> b!2810603 m!3240513))

(assert (=> b!2810563 d!815845))

(declare-fun d!815849 () Bool)

(declare-fun lt!1004054 () Int)

(assert (=> d!815849 (>= lt!1004054 0)))

(declare-fun e!1777468 () Int)

(assert (=> d!815849 (= lt!1004054 e!1777468)))

(declare-fun c!455346 () Bool)

(assert (=> d!815849 (= c!455346 ((_ is Nil!32815) lt!1004044))))

(assert (=> d!815849 (= (size!25577 lt!1004044) lt!1004054)))

(declare-fun b!2810616 () Bool)

(assert (=> b!2810616 (= e!1777468 0)))

(declare-fun b!2810617 () Bool)

(assert (=> b!2810617 (= e!1777468 (+ 1 (size!25577 (t!229855 lt!1004044))))))

(assert (= (and d!815849 c!455346) b!2810616))

(assert (= (and d!815849 (not c!455346)) b!2810617))

(declare-fun m!3240517 () Bool)

(assert (=> b!2810617 m!3240517))

(assert (=> d!815827 d!815849))

(declare-fun d!815853 () Bool)

(declare-fun lt!1004057 () Int)

(assert (=> d!815853 (>= lt!1004057 0)))

(declare-fun e!1777474 () Int)

(assert (=> d!815853 (= lt!1004057 e!1777474)))

(declare-fun c!455349 () Bool)

(assert (=> d!815853 (= c!455349 ((_ is Nil!32814) (list!12293 thiss!9447)))))

(assert (=> d!815853 (= (size!25578 (list!12293 thiss!9447)) lt!1004057)))

(declare-fun b!2810625 () Bool)

(assert (=> b!2810625 (= e!1777474 0)))

(declare-fun b!2810626 () Bool)

(assert (=> b!2810626 (= e!1777474 (+ 1 (size!25578 (t!229854 (list!12293 thiss!9447)))))))

(assert (= (and d!815853 c!455349) b!2810625))

(assert (= (and d!815853 (not c!455349)) b!2810626))

(assert (=> b!2810626 m!3240507))

(assert (=> d!815827 d!815853))

(declare-fun d!815857 () Bool)

(declare-fun res!1170231 () Vector!208)

(assert (=> d!815857 (= (list!12292 res!1170231) (map!7085 (list!12293 thiss!9447) f!1100))))

(declare-fun e!1777477 () Bool)

(assert (=> d!815857 e!1777477))

(assert (=> d!815857 (= (choose!16563 thiss!9447 f!1100) res!1170231)))

(declare-fun b!2810629 () Bool)

(declare-fun tp!897479 () Bool)

(declare-fun tp!897480 () Bool)

(assert (=> b!2810629 (= e!1777477 (and tp!897479 tp!897480))))

(assert (= d!815857 b!2810629))

(declare-fun m!3240523 () Bool)

(assert (=> d!815857 m!3240523))

(assert (=> d!815857 m!3240453))

(assert (=> d!815857 m!3240453))

(assert (=> d!815857 m!3240455))

(assert (=> d!815825 d!815857))

(declare-fun d!815861 () Bool)

(assert (=> d!815861 true))

(declare-fun e!1777481 () Bool)

(assert (=> d!815861 e!1777481))

(declare-fun res!1170234 () List!32917)

(assert (=> d!815861 (= (choose!16562 (choose!16559 thiss!9447 f!1100)) res!1170234)))

(declare-fun b!2810634 () Bool)

(declare-fun tp!897483 () Bool)

(assert (=> b!2810634 (= e!1777481 (and tp_is_empty!14345 tp!897483))))

(assert (= (and d!815861 ((_ is Cons!32815) res!1170234)) b!2810634))

(assert (=> d!815823 d!815861))

(declare-fun e!1777489 () Bool)

(declare-fun b!2810646 () Bool)

(declare-fun tp!897495 () Bool)

(declare-fun tp!897493 () Bool)

(assert (=> b!2810646 (= e!1777489 (and (inv!44538 (left!24752 (c!455327 (value!158052 (underlying!8327 thiss!9447))))) tp!897495 (inv!44538 (right!25082 (c!455327 (value!158052 (underlying!8327 thiss!9447))))) tp!897493))))

(declare-fun b!2810648 () Bool)

(declare-fun e!1777490 () Bool)

(declare-fun tp!897494 () Bool)

(assert (=> b!2810648 (= e!1777490 tp!897494)))

(declare-fun b!2810647 () Bool)

(declare-fun inv!44542 (IArray!20321) Bool)

(assert (=> b!2810647 (= e!1777489 (and (inv!44542 (xs!13270 (c!455327 (value!158052 (underlying!8327 thiss!9447))))) e!1777490))))

(assert (=> b!2810576 (= tp!897458 (and (inv!44538 (c!455327 (value!158052 (underlying!8327 thiss!9447)))) e!1777489))))

(assert (= (and b!2810576 ((_ is Node!10158) (c!455327 (value!158052 (underlying!8327 thiss!9447))))) b!2810646))

(assert (= b!2810647 b!2810648))

(assert (= (and b!2810576 ((_ is Leaf!15471) (c!455327 (value!158052 (underlying!8327 thiss!9447))))) b!2810647))

(declare-fun m!3240533 () Bool)

(assert (=> b!2810646 m!3240533))

(declare-fun m!3240535 () Bool)

(assert (=> b!2810646 m!3240535))

(declare-fun m!3240537 () Bool)

(assert (=> b!2810647 m!3240537))

(assert (=> b!2810576 m!3240493))

(declare-fun b!2810653 () Bool)

(declare-fun e!1777493 () Bool)

(declare-fun tp!897500 () Bool)

(declare-fun tp!897501 () Bool)

(assert (=> b!2810653 (= e!1777493 (and tp!897500 tp!897501))))

(assert (=> b!2810577 (= tp!897459 e!1777493)))

(assert (= (and b!2810577 ((_ is Cons!32813) (value!158053 (underlying!8327 thiss!9447)))) b!2810653))

(declare-fun b!2810654 () Bool)

(declare-fun e!1777494 () Bool)

(declare-fun tp!897502 () Bool)

(assert (=> b!2810654 (= e!1777494 (and tp_is_empty!14347 tp!897502))))

(assert (=> b!2810582 (= tp!897462 e!1777494)))

(assert (= (and b!2810582 ((_ is Cons!32814) (t!229854 (overflowing!160 thiss!9447)))) b!2810654))

(declare-fun b_lambda!84195 () Bool)

(assert (= b_lambda!84191 (or (and start!271956 b_free!80247) b_lambda!84195)))

(check-sat (not b!2810585) b_and!205535 (not b_lambda!84195) (not b!2810626) (not b!2810654) tp_is_empty!14345 (not b!2810629) (not b!2810653) tp_is_empty!14347 (not b!2810576) (not b!2810592) (not b!2810594) (not b!2810648) (not b_lambda!84189) (not b_next!80951) (not b!2810603) (not b!2810646) (not b!2810634) (not b!2810617) (not b!2810647) (not d!815857) (not d!815845) (not d!815839))
(check-sat b_and!205535 (not b_next!80951))
