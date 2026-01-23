; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!230110 () Bool)

(assert start!230110)

(assert (=> start!230110 true))

(declare-fun b!2329310 () Bool)

(declare-fun e!1492460 () Bool)

(declare-datatypes ((List!27919 0))(
  ( (Nil!27821) (Cons!27821 (h!33222 (_ BitVec 16)) (t!207691 List!27919)) )
))
(declare-datatypes ((IArray!18257 0))(
  ( (IArray!18258 (innerList!9186 List!27919)) )
))
(declare-datatypes ((Conc!9126 0))(
  ( (Node!9126 (left!21115 Conc!9126) (right!21445 Conc!9126) (csize!18482 Int) (cheight!9337 Int)) (Leaf!13410 (xs!12106 IArray!18257) (csize!18483 Int)) (Empty!9126) )
))
(declare-datatypes ((BalanceConc!17864 0))(
  ( (BalanceConc!17865 (c!369970 Conc!9126)) )
))
(declare-fun x!442440 () BalanceConc!17864)

(declare-fun tp!738188 () Bool)

(declare-fun inv!37882 (Conc!9126) Bool)

(assert (=> b!2329310 (= e!1492460 (and (inv!37882 (c!369970 x!442440)) tp!738188))))

(declare-fun inst!1352 () Bool)

(declare-datatypes ((FloatLiteralValueInjection!108 0))(
  ( (FloatLiteralValueInjection!109) )
))
(declare-fun thiss!3053 () FloatLiteralValueInjection!108)

(declare-fun inv!37883 (BalanceConc!17864) Bool)

(declare-fun list!11054 (BalanceConc!17864) List!27919)

(declare-datatypes ((TokenValue!4610 0))(
  ( (FloatLiteralValue!9220 (text!32715 List!27919)) (TokenValueExt!4609 (__x!18379 Int)) (Broken!23050 (value!140777 List!27919)) (Object!4707) (End!4610) (Def!4610) (Underscore!4610) (Match!4610) (Else!4610) (Error!4610) (Case!4610) (If!4610) (Extends!4610) (Abstract!4610) (Class!4610) (Val!4610) (DelimiterValue!9220 (del!4670 List!27919)) (KeywordValue!4616 (value!140778 List!27919)) (CommentValue!9220 (value!140779 List!27919)) (WhitespaceValue!9220 (value!140780 List!27919)) (IndentationValue!4610 (value!140781 List!27919)) (String!30427) (Int32!4610) (Broken!23051 (value!140782 List!27919)) (Boolean!4611) (Unit!40582) (OperatorValue!4613 (op!4670 List!27919)) (IdentifierValue!9220 (value!140783 List!27919)) (IdentifierValue!9221 (value!140784 List!27919)) (WhitespaceValue!9221 (value!140785 List!27919)) (True!9220) (False!9220) (Broken!23052 (value!140786 List!27919)) (Broken!23053 (value!140787 List!27919)) (True!9221) (RightBrace!4610) (RightBracket!4610) (Colon!4610) (Null!4610) (Comma!4610) (LeftBracket!4610) (False!9221) (LeftBrace!4610) (ImaginaryLiteralValue!4610 (text!32716 List!27919)) (StringLiteralValue!13830 (value!140788 List!27919)) (EOFValue!4610 (value!140789 List!27919)) (IdentValue!4610 (value!140790 List!27919)) (DelimiterValue!9221 (value!140791 List!27919)) (DedentValue!4610 (value!140792 List!27919)) (NewLineValue!4610 (value!140793 List!27919)) (IntegerValue!13830 (value!140794 (_ BitVec 32)) (text!32717 List!27919)) (IntegerValue!13831 (value!140795 Int) (text!32718 List!27919)) (Times!4610) (Or!4610) (Equal!4610) (Minus!4610) (Broken!23054 (value!140796 List!27919)) (And!4610) (Div!4610) (LessEqual!4610) (Mod!4610) (Concat!11426) (Not!4610) (Plus!4610) (SpaceValue!4610 (value!140797 List!27919)) (IntegerValue!13832 (value!140798 Int) (text!32719 List!27919)) (StringLiteralValue!13831 (text!32720 List!27919)) (FloatLiteralValue!9221 (text!32721 List!27919)) (BytesLiteralValue!4610 (value!140799 List!27919)) (CommentValue!9221 (value!140800 List!27919)) (StringLiteralValue!13832 (value!140801 List!27919)) (ErrorTokenValue!4610 (msg!4671 List!27919)) )
))
(declare-fun toCharacters!1 (FloatLiteralValueInjection!108 TokenValue!4610) BalanceConc!17864)

(declare-fun toValue!8 (FloatLiteralValueInjection!108 BalanceConc!17864) TokenValue!4610)

(assert (=> start!230110 (= inst!1352 (=> (and (inv!37883 x!442440) e!1492460) (= (list!11054 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442440))) (list!11054 x!442440))))))

(assert (= start!230110 b!2329310))

(declare-fun m!2759553 () Bool)

(assert (=> b!2329310 m!2759553))

(declare-fun m!2759555 () Bool)

(assert (=> start!230110 m!2759555))

(declare-fun m!2759557 () Bool)

(assert (=> start!230110 m!2759557))

(declare-fun m!2759559 () Bool)

(assert (=> start!230110 m!2759559))

(declare-fun m!2759561 () Bool)

(assert (=> start!230110 m!2759561))

(declare-fun m!2759563 () Bool)

(assert (=> start!230110 m!2759563))

(assert (=> start!230110 m!2759563))

(assert (=> start!230110 m!2759557))

(declare-fun bs!459399 () Bool)

(declare-fun neg-inst!1352 () Bool)

(declare-fun s!225120 () Bool)

(assert (= bs!459399 (and neg-inst!1352 s!225120)))

(assert (=> bs!459399 (=> true (= (list!11054 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442440))) (list!11054 x!442440)))))

(assert (=> m!2759555 m!2759563))

(assert (=> m!2759555 m!2759557))

(assert (=> m!2759555 m!2759559))

(assert (=> m!2759555 s!225120))

(assert (=> m!2759563 s!225120))

(declare-fun bs!459400 () Bool)

(assert (= bs!459400 (and neg-inst!1352 start!230110)))

(assert (=> bs!459400 (= true inst!1352)))

(declare-fun lambda!86444 () Int)

(declare-fun Forall!1116 (Int) Bool)

(assert (=> start!230110 (= (Forall!1116 lambda!86444) inst!1352)))

(assert (=> start!230110 (not (Forall!1116 lambda!86444))))

(assert (=> start!230110 true))

(assert (= neg-inst!1352 inst!1352))

(declare-fun m!2759565 () Bool)

(assert (=> start!230110 m!2759565))

(assert (=> start!230110 m!2759565))

(push 1)

(assert (not bs!459399))

(assert (not start!230110))

(assert (not b!2329310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!689566 () Bool)

(declare-fun list!11056 (Conc!9126) List!27919)

(assert (=> d!689566 (= (list!11054 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442440))) (list!11056 (c!369970 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442440)))))))

(declare-fun bs!459403 () Bool)

(assert (= bs!459403 d!689566))

(declare-fun m!2759581 () Bool)

(assert (=> bs!459403 m!2759581))

(assert (=> bs!459399 d!689566))

(declare-fun d!689568 () Bool)

(declare-fun c!369975 () Bool)

(assert (=> d!689568 (= c!369975 (is-FloatLiteralValue!9220 (toValue!8 thiss!3053 x!442440)))))

(declare-fun e!1492466 () BalanceConc!17864)

(assert (=> d!689568 (= (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442440)) e!1492466)))

(declare-fun b!2329320 () Bool)

(declare-fun seqFromList!3122 (List!27919) BalanceConc!17864)

(assert (=> b!2329320 (= e!1492466 (seqFromList!3122 (text!32715 (toValue!8 thiss!3053 x!442440))))))

(declare-fun b!2329321 () Bool)

(assert (=> b!2329321 (= e!1492466 (BalanceConc!17865 Empty!9126))))

(assert (= (and d!689568 c!369975) b!2329320))

(assert (= (and d!689568 (not c!369975)) b!2329321))

(declare-fun m!2759583 () Bool)

(assert (=> b!2329320 m!2759583))

(assert (=> bs!459399 d!689568))

(declare-fun d!689570 () Bool)

(declare-fun efficientList!326 (BalanceConc!17864) List!27919)

(assert (=> d!689570 (= (toValue!8 thiss!3053 x!442440) (FloatLiteralValue!9220 (efficientList!326 x!442440)))))

(declare-fun bs!459404 () Bool)

(assert (= bs!459404 d!689570))

(declare-fun m!2759585 () Bool)

(assert (=> bs!459404 m!2759585))

(assert (=> bs!459399 d!689570))

(declare-fun d!689572 () Bool)

(assert (=> d!689572 (= (list!11054 x!442440) (list!11056 (c!369970 x!442440)))))

(declare-fun bs!459405 () Bool)

(assert (= bs!459405 d!689572))

(declare-fun m!2759587 () Bool)

(assert (=> bs!459405 m!2759587))

(assert (=> bs!459399 d!689572))

(push 1)

(assert (not start!230110))

(assert (not b!2329320))

(assert (not d!689566))

(assert (not b!2329310))

(assert (not d!689570))

(assert (not d!689572))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2329339 () Bool)

(declare-fun e!1492475 () List!27919)

(declare-fun ++!6853 (List!27919 List!27919) List!27919)

(assert (=> b!2329339 (= e!1492475 (++!6853 (list!11056 (left!21115 (c!369970 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442440))))) (list!11056 (right!21445 (c!369970 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442440)))))))))

(declare-fun b!2329337 () Bool)

(declare-fun e!1492474 () List!27919)

(assert (=> b!2329337 (= e!1492474 e!1492475)))

(declare-fun c!369985 () Bool)

(assert (=> b!2329337 (= c!369985 (is-Leaf!13410 (c!369970 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442440)))))))

(declare-fun d!689578 () Bool)

(declare-fun c!369984 () Bool)

(assert (=> d!689578 (= c!369984 (is-Empty!9126 (c!369970 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442440)))))))

(assert (=> d!689578 (= (list!11056 (c!369970 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442440)))) e!1492474)))

(declare-fun b!2329336 () Bool)

(assert (=> b!2329336 (= e!1492474 Nil!27821)))

(declare-fun b!2329338 () Bool)

(declare-fun list!11058 (IArray!18257) List!27919)

(assert (=> b!2329338 (= e!1492475 (list!11058 (xs!12106 (c!369970 (toCharacters!1 thiss!3053 (toValue!8 thiss!3053 x!442440))))))))

(assert (= (and d!689578 c!369984) b!2329336))

(assert (= (and d!689578 (not c!369984)) b!2329337))

(assert (= (and b!2329337 c!369985) b!2329338))

(assert (= (and b!2329337 (not c!369985)) b!2329339))

(declare-fun m!2759593 () Bool)

(assert (=> b!2329339 m!2759593))

(declare-fun m!2759595 () Bool)

(assert (=> b!2329339 m!2759595))

(assert (=> b!2329339 m!2759593))

(assert (=> b!2329339 m!2759595))

(declare-fun m!2759597 () Bool)

(assert (=> b!2329339 m!2759597))

(declare-fun m!2759599 () Bool)

(assert (=> b!2329338 m!2759599))

(assert (=> d!689566 d!689578))

(declare-fun b!2329343 () Bool)

(declare-fun e!1492477 () List!27919)

(assert (=> b!2329343 (= e!1492477 (++!6853 (list!11056 (left!21115 (c!369970 x!442440))) (list!11056 (right!21445 (c!369970 x!442440)))))))

(declare-fun b!2329341 () Bool)

(declare-fun e!1492476 () List!27919)

(assert (=> b!2329341 (= e!1492476 e!1492477)))

(declare-fun c!369987 () Bool)

(assert (=> b!2329341 (= c!369987 (is-Leaf!13410 (c!369970 x!442440)))))

(declare-fun d!689582 () Bool)

(declare-fun c!369986 () Bool)

(assert (=> d!689582 (= c!369986 (is-Empty!9126 (c!369970 x!442440)))))

(assert (=> d!689582 (= (list!11056 (c!369970 x!442440)) e!1492476)))

(declare-fun b!2329340 () Bool)

(assert (=> b!2329340 (= e!1492476 Nil!27821)))

(declare-fun b!2329342 () Bool)

(assert (=> b!2329342 (= e!1492477 (list!11058 (xs!12106 (c!369970 x!442440))))))

(assert (= (and d!689582 c!369986) b!2329340))

(assert (= (and d!689582 (not c!369986)) b!2329341))

(assert (= (and b!2329341 c!369987) b!2329342))

(assert (= (and b!2329341 (not c!369987)) b!2329343))

(declare-fun m!2759601 () Bool)

(assert (=> b!2329343 m!2759601))

(declare-fun m!2759603 () Bool)

(assert (=> b!2329343 m!2759603))

(assert (=> b!2329343 m!2759601))

(assert (=> b!2329343 m!2759603))

(declare-fun m!2759605 () Bool)

(assert (=> b!2329343 m!2759605))

(declare-fun m!2759607 () Bool)

(assert (=> b!2329342 m!2759607))

(assert (=> d!689572 d!689582))

(declare-fun d!689584 () Bool)

(declare-fun lt!862096 () List!27919)

(assert (=> d!689584 (= lt!862096 (list!11054 x!442440))))

(declare-fun efficientList!327 (Conc!9126 List!27919) List!27919)

(declare-fun efficientList$default$2!112 (Conc!9126) List!27919)

(assert (=> d!689584 (= lt!862096 (efficientList!327 (c!369970 x!442440) (efficientList$default$2!112 (c!369970 x!442440))))))

(assert (=> d!689584 (= (efficientList!326 x!442440) lt!862096)))

(declare-fun bs!459407 () Bool)

(assert (= bs!459407 d!689584))

(assert (=> bs!459407 m!2759555))

(declare-fun m!2759609 () Bool)

(assert (=> bs!459407 m!2759609))

(assert (=> bs!459407 m!2759609))

(declare-fun m!2759611 () Bool)

(assert (=> bs!459407 m!2759611))

(assert (=> d!689570 d!689584))

(push 1)

(assert (not start!230110))

(assert (not b!2329320))

(assert (not b!2329343))

(assert (not b!2329310))

(assert (not b!2329339))

(assert (not b!2329342))

(assert (not b!2329338))

(assert (not d!689584))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!689588 () Bool)

(declare-fun fromListB!1411 (List!27919) BalanceConc!17864)

(assert (=> d!689588 (= (seqFromList!3122 (text!32715 (toValue!8 thiss!3053 x!442440))) (fromListB!1411 (text!32715 (toValue!8 thiss!3053 x!442440))))))

(declare-fun bs!459410 () Bool)

(assert (= bs!459410 d!689588))

(declare-fun m!2759617 () Bool)

(assert (=> bs!459410 m!2759617))

(assert (=> b!2329320 d!689588))

(assert (=> d!689584 d!689572))

(declare-fun b!2329364 () Bool)

(declare-fun e!1492490 () List!27919)

(assert (=> b!2329364 (= e!1492490 (efficientList$default$2!112 (c!369970 x!442440)))))

(declare-fun b!2329365 () Bool)

(declare-fun e!1492488 () List!27919)

(declare-fun call!138977 () List!27919)

(assert (=> b!2329365 (= e!1492488 call!138977)))

(declare-fun bm!138972 () Bool)

(declare-fun c!370000 () Bool)

(declare-fun c!369999 () Bool)

(assert (=> bm!138972 (= c!370000 c!369999)))

(declare-fun e!1492489 () List!27919)

(assert (=> bm!138972 (= call!138977 (++!6853 e!1492489 (efficientList$default$2!112 (c!369970 x!442440))))))

(declare-fun b!2329366 () Bool)

(declare-fun lt!862107 () List!27919)

(assert (=> b!2329366 (= e!1492489 lt!862107)))

(declare-fun b!2329367 () Bool)

(assert (=> b!2329367 (= e!1492490 e!1492488)))

(assert (=> b!2329367 (= c!369999 (is-Leaf!13410 (c!369970 x!442440)))))

(declare-fun b!2329368 () Bool)

(declare-fun efficientList!329 (IArray!18257) List!27919)

(assert (=> b!2329368 (= e!1492489 (efficientList!329 (xs!12106 (c!369970 x!442440))))))

(declare-fun b!2329369 () Bool)

(declare-datatypes ((Unit!40584 0))(
  ( (Unit!40585) )
))
(declare-fun lt!862109 () Unit!40584)

(declare-fun lt!862108 () Unit!40584)

(assert (=> b!2329369 (= lt!862109 lt!862108)))

(declare-fun lt!862111 () List!27919)

(assert (=> b!2329369 (= (++!6853 (++!6853 lt!862111 lt!862107) (efficientList$default$2!112 (c!369970 x!442440))) (++!6853 lt!862111 call!138977))))

(declare-fun lemmaConcatAssociativity!1462 (List!27919 List!27919 List!27919) Unit!40584)

(assert (=> b!2329369 (= lt!862108 (lemmaConcatAssociativity!1462 lt!862111 lt!862107 (efficientList$default$2!112 (c!369970 x!442440))))))

(assert (=> b!2329369 (= lt!862107 (list!11056 (right!21445 (c!369970 x!442440))))))

(assert (=> b!2329369 (= lt!862111 (list!11056 (left!21115 (c!369970 x!442440))))))

(assert (=> b!2329369 (= e!1492488 (efficientList!327 (left!21115 (c!369970 x!442440)) (efficientList!327 (right!21445 (c!369970 x!442440)) (efficientList$default$2!112 (c!369970 x!442440)))))))

(declare-fun d!689590 () Bool)

(declare-fun lt!862110 () List!27919)

(assert (=> d!689590 (= lt!862110 (++!6853 (list!11056 (c!369970 x!442440)) (efficientList$default$2!112 (c!369970 x!442440))))))

(assert (=> d!689590 (= lt!862110 e!1492490)))

(declare-fun c!369998 () Bool)

(assert (=> d!689590 (= c!369998 (is-Empty!9126 (c!369970 x!442440)))))

(assert (=> d!689590 (= (efficientList!327 (c!369970 x!442440) (efficientList$default$2!112 (c!369970 x!442440))) lt!862110)))

(assert (= (and d!689590 c!369998) b!2329364))

(assert (= (and d!689590 (not c!369998)) b!2329367))

(assert (= (and b!2329367 c!369999) b!2329365))

(assert (= (and b!2329367 (not c!369999)) b!2329369))

(assert (= (or b!2329365 b!2329369) bm!138972))

(assert (= (and bm!138972 c!370000) b!2329368))

(assert (= (and bm!138972 (not c!370000)) b!2329366))

(assert (=> bm!138972 m!2759609))

(declare-fun m!2759619 () Bool)

(assert (=> bm!138972 m!2759619))

(declare-fun m!2759621 () Bool)

(assert (=> b!2329368 m!2759621))

(declare-fun m!2759623 () Bool)

(assert (=> b!2329369 m!2759623))

(assert (=> b!2329369 m!2759609))

(declare-fun m!2759625 () Bool)

(assert (=> b!2329369 m!2759625))

(assert (=> b!2329369 m!2759609))

(declare-fun m!2759627 () Bool)

(assert (=> b!2329369 m!2759627))

(assert (=> b!2329369 m!2759609))

(declare-fun m!2759629 () Bool)

(assert (=> b!2329369 m!2759629))

(assert (=> b!2329369 m!2759629))

(declare-fun m!2759631 () Bool)

(assert (=> b!2329369 m!2759631))

(declare-fun m!2759633 () Bool)

(assert (=> b!2329369 m!2759633))

(assert (=> b!2329369 m!2759601))

(assert (=> b!2329369 m!2759623))

(assert (=> b!2329369 m!2759603))

(assert (=> d!689590 m!2759587))

(assert (=> d!689590 m!2759587))

(assert (=> d!689590 m!2759609))

(declare-fun m!2759635 () Bool)

(assert (=> d!689590 m!2759635))

(assert (=> d!689584 d!689590))

(declare-fun d!689594 () Bool)

(assert (=> d!689594 (= (efficientList$default$2!112 (c!369970 x!442440)) Nil!27821)))

(assert (=> d!689584 d!689594))

(declare-fun d!689596 () Bool)

(declare-fun isBalanced!2780 (Conc!9126) Bool)

(assert (=> d!689596 (= (inv!37883 x!442440) (isBalanced!2780 (c!369970 x!442440)))))

(declare-fun bs!459411 () Bool)

(assert (= bs!459411 d!689596))

(declare-fun m!2759637 () Bool)

(assert (=> bs!459411 m!2759637))

(assert (=> start!230110 d!689596))

(assert (=> start!230110 d!689566))

(assert (=> start!230110 d!689568))

(declare-fun d!689598 () Bool)

(declare-fun choose!13627 (Int) Bool)

(assert (=> d!689598 (= (Forall!1116 lambda!86444) (choose!13627 lambda!86444))))

(declare-fun bs!459412 () Bool)

(assert (= bs!459412 d!689598))

(declare-fun m!2759647 () Bool)

(assert (=> bs!459412 m!2759647))

(assert (=> start!230110 d!689598))

(assert (=> start!230110 d!689572))

(assert (=> start!230110 d!689570))

(declare-fun d!689602 () Bool)

(declare-fun c!370005 () Bool)

(assert (=> d!689602 (= c!370005 (is-Node!9126 (c!369970 x!442440)))))

(declare-fun e!1492497 () Bool)

(assert (=> d!689602 (= (inv!37882 (c!369970 x!442440)) e!1492497)))

(declare-fun b!2329380 () Bool)

(declare-fun inv!37886 (Conc!9126) Bool)

(assert (=> b!2329380 (= e!1492497 (inv!37886 (c!369970 x!442440)))))

(declare-fun b!2329381 () Bool)

(declare-fun e!1492498 () Bool)

(assert (=> b!2329381 (= e!1492497 e!1492498)))

(declare-fun res!994539 () Bool)

(assert (=> b!2329381 (= res!994539 (not (is-Leaf!13410 (c!369970 x!442440))))))

(assert (=> b!2329381 (=> res!994539 e!1492498)))

(declare-fun b!2329382 () Bool)

(declare-fun inv!37887 (Conc!9126) Bool)

(assert (=> b!2329382 (= e!1492498 (inv!37887 (c!369970 x!442440)))))

(assert (= (and d!689602 c!370005) b!2329380))

(assert (= (and d!689602 (not c!370005)) b!2329381))

(assert (= (and b!2329381 (not res!994539)) b!2329382))

(declare-fun m!2759649 () Bool)

(assert (=> b!2329380 m!2759649))

(declare-fun m!2759651 () Bool)

(assert (=> b!2329382 m!2759651))

(assert (=> b!2329310 d!689602))

(declare-fun b!2329389 () Bool)

(declare-fun tp!738196 () Bool)

(declare-fun tp!738197 () Bool)

(declare-fun e!1492503 () Bool)

(assert (=> b!2329389 (= e!1492503 (and (inv!37882 (left!21115 (c!369970 x!442440))) tp!738196 (inv!37882 (right!21445 (c!369970 x!442440))) tp!738197))))

(declare-fun b!2329390 () Bool)

(declare-fun inv!37888 (IArray!18257) Bool)

(assert (=> b!2329390 (= e!1492503 (inv!37888 (xs!12106 (c!369970 x!442440))))))

(assert (=> b!2329310 (= tp!738188 (and (inv!37882 (c!369970 x!442440)) e!1492503))))

(assert (= (and b!2329310 (is-Node!9126 (c!369970 x!442440))) b!2329389))

(assert (= (and b!2329310 (is-Leaf!13410 (c!369970 x!442440))) b!2329390))

(declare-fun m!2759653 () Bool)

(assert (=> b!2329389 m!2759653))

(declare-fun m!2759655 () Bool)

(assert (=> b!2329389 m!2759655))

(declare-fun m!2759657 () Bool)

(assert (=> b!2329390 m!2759657))

(assert (=> b!2329310 m!2759553))

(push 1)

(assert (not bm!138972))

(assert (not d!689588))

(assert (not d!689596))

(assert (not b!2329338))

(assert (not b!2329389))

(assert (not d!689590))

(assert (not b!2329380))

(assert (not b!2329343))

(assert (not b!2329339))

(assert (not b!2329342))

(assert (not b!2329390))

(assert (not b!2329369))

(assert (not d!689598))

(assert (not b!2329310))

(assert (not b!2329382))

(assert (not b!2329368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2329405 () Bool)

(declare-fun res!994545 () Bool)

(declare-fun e!1492511 () Bool)

(assert (=> b!2329405 (=> (not res!994545) (not e!1492511))))

(declare-fun lt!862117 () List!27919)

(declare-fun size!22019 (List!27919) Int)

(assert (=> b!2329405 (= res!994545 (= (size!22019 lt!862117) (+ (size!22019 (list!11056 (c!369970 x!442440))) (size!22019 (efficientList$default$2!112 (c!369970 x!442440))))))))

(declare-fun b!2329404 () Bool)

(declare-fun e!1492512 () List!27919)

(assert (=> b!2329404 (= e!1492512 (Cons!27821 (h!33222 (list!11056 (c!369970 x!442440))) (++!6853 (t!207691 (list!11056 (c!369970 x!442440))) (efficientList$default$2!112 (c!369970 x!442440)))))))

(declare-fun b!2329403 () Bool)

(assert (=> b!2329403 (= e!1492512 (efficientList$default$2!112 (c!369970 x!442440)))))

(declare-fun d!689606 () Bool)

(assert (=> d!689606 e!1492511))

(declare-fun res!994544 () Bool)

(assert (=> d!689606 (=> (not res!994544) (not e!1492511))))

(declare-fun content!3765 (List!27919) (Set (_ BitVec 16)))

(assert (=> d!689606 (= res!994544 (= (content!3765 lt!862117) (set.union (content!3765 (list!11056 (c!369970 x!442440))) (content!3765 (efficientList$default$2!112 (c!369970 x!442440))))))))

(assert (=> d!689606 (= lt!862117 e!1492512)))

(declare-fun c!370010 () Bool)

(assert (=> d!689606 (= c!370010 (is-Nil!27821 (list!11056 (c!369970 x!442440))))))

(assert (=> d!689606 (= (++!6853 (list!11056 (c!369970 x!442440)) (efficientList$default$2!112 (c!369970 x!442440))) lt!862117)))

(declare-fun b!2329406 () Bool)

(assert (=> b!2329406 (= e!1492511 (or (not (= (efficientList$default$2!112 (c!369970 x!442440)) Nil!27821)) (= lt!862117 (list!11056 (c!369970 x!442440)))))))

(assert (= (and d!689606 c!370010) b!2329403))

(assert (= (and d!689606 (not c!370010)) b!2329404))

(assert (= (and d!689606 res!994544) b!2329405))

(assert (= (and b!2329405 res!994545) b!2329406))

(declare-fun m!2759671 () Bool)

(assert (=> b!2329405 m!2759671))

(assert (=> b!2329405 m!2759587))

(declare-fun m!2759673 () Bool)

(assert (=> b!2329405 m!2759673))

(assert (=> b!2329405 m!2759609))

(declare-fun m!2759675 () Bool)

(assert (=> b!2329405 m!2759675))

(assert (=> b!2329404 m!2759609))

(declare-fun m!2759677 () Bool)

(assert (=> b!2329404 m!2759677))

(declare-fun m!2759679 () Bool)

(assert (=> d!689606 m!2759679))

(assert (=> d!689606 m!2759587))

(declare-fun m!2759681 () Bool)

(assert (=> d!689606 m!2759681))

(assert (=> d!689606 m!2759609))

(declare-fun m!2759683 () Bool)

(assert (=> d!689606 m!2759683))

(assert (=> d!689590 d!689606))

(assert (=> d!689590 d!689582))

(declare-fun d!689608 () Bool)

(declare-fun e!1492515 () Bool)

(assert (=> d!689608 e!1492515))

(declare-fun res!994548 () Bool)

(assert (=> d!689608 (=> (not res!994548) (not e!1492515))))

(declare-fun lt!862120 () BalanceConc!17864)

(assert (=> d!689608 (= res!994548 (= (list!11054 lt!862120) (text!32715 (toValue!8 thiss!3053 x!442440))))))

(declare-fun fromList!554 (List!27919) Conc!9126)

(assert (=> d!689608 (= lt!862120 (BalanceConc!17865 (fromList!554 (text!32715 (toValue!8 thiss!3053 x!442440)))))))

(assert (=> d!689608 (= (fromListB!1411 (text!32715 (toValue!8 thiss!3053 x!442440))) lt!862120)))

(declare-fun b!2329409 () Bool)

(assert (=> b!2329409 (= e!1492515 (isBalanced!2780 (fromList!554 (text!32715 (toValue!8 thiss!3053 x!442440)))))))

(assert (= (and d!689608 res!994548) b!2329409))

(declare-fun m!2759685 () Bool)

(assert (=> d!689608 m!2759685))

(declare-fun m!2759687 () Bool)

(assert (=> d!689608 m!2759687))

(assert (=> b!2329409 m!2759687))

(assert (=> b!2329409 m!2759687))

(declare-fun m!2759689 () Bool)

(assert (=> b!2329409 m!2759689))

(assert (=> d!689588 d!689608))

(push 1)

(assert (not bm!138972))

(assert (not d!689606))

(assert (not d!689608))

(assert (not b!2329389))

(assert (not b!2329409))

(assert (not d!689596))

(assert (not b!2329338))

(assert (not b!2329380))

(assert (not b!2329343))

(assert (not b!2329404))

(assert (not b!2329339))

(assert (not b!2329342))

(assert (not b!2329390))

(assert (not b!2329369))

(assert (not b!2329405))

(assert (not d!689598))

(assert (not b!2329310))

(assert (not b!2329382))

(assert (not b!2329368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

