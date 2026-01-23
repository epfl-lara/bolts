; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!10720 () Bool)

(assert start!10720)

(assert (=> start!10720 true))

(declare-fun b!107987 () Bool)

(declare-fun e!59871 () Bool)

(declare-datatypes ((List!1716 0))(
  ( (Nil!1710) (Cons!1710 (h!7107 (_ BitVec 16)) (t!21495 List!1716)) )
))
(declare-datatypes ((IArray!1085 0))(
  ( (IArray!1086 (innerList!600 List!1716)) )
))
(declare-datatypes ((Conc!542 0))(
  ( (Node!542 (left!1312 Conc!542) (right!1642 Conc!542) (csize!1314 Int) (cheight!753 Int)) (Leaf!865 (xs!3137 IArray!1085) (csize!1315 Int)) (Empty!542) )
))
(declare-datatypes ((BalanceConc!1088 0))(
  ( (BalanceConc!1089 (c!25945 Conc!542)) )
))
(declare-fun x!29546 () BalanceConc!1088)

(declare-fun tp!58911 () Bool)

(declare-fun inv!2090 (Conc!542) Bool)

(assert (=> b!107987 (= e!59871 (and (inv!2090 (c!25945 x!29546)) tp!58911))))

(declare-fun inst!50 () Bool)

(declare-datatypes ((ErrorTokenValueInjection!4 0))(
  ( (ErrorTokenValueInjection!5) )
))
(declare-fun thiss!5419 () ErrorTokenValueInjection!4)

(declare-fun inv!2091 (BalanceConc!1088) Bool)

(declare-fun list!733 (BalanceConc!1088) List!1716)

(declare-datatypes ((TokenValue!364 0))(
  ( (FloatLiteralValue!728 (text!2993 List!1716)) (TokenValueExt!363 (__x!1823 Int)) (Broken!1820 (value!13522 List!1716)) (Object!369) (End!364) (Def!364) (Underscore!364) (Match!364) (Else!364) (Error!364) (Case!364) (If!364) (Extends!364) (Abstract!364) (Class!364) (Val!364) (DelimiterValue!728 (del!424 List!1716)) (KeywordValue!370 (value!13523 List!1716)) (CommentValue!728 (value!13524 List!1716)) (WhitespaceValue!728 (value!13525 List!1716)) (IndentationValue!364 (value!13526 List!1716)) (String!2213) (Int32!364) (Broken!1821 (value!13527 List!1716)) (Boolean!365) (Unit!1136) (OperatorValue!367 (op!424 List!1716)) (IdentifierValue!728 (value!13528 List!1716)) (IdentifierValue!729 (value!13529 List!1716)) (WhitespaceValue!729 (value!13530 List!1716)) (True!728) (False!728) (Broken!1822 (value!13531 List!1716)) (Broken!1823 (value!13532 List!1716)) (True!729) (RightBrace!364) (RightBracket!364) (Colon!364) (Null!364) (Comma!364) (LeftBracket!364) (False!729) (LeftBrace!364) (ImaginaryLiteralValue!364 (text!2994 List!1716)) (StringLiteralValue!1092 (value!13533 List!1716)) (EOFValue!364 (value!13534 List!1716)) (IdentValue!364 (value!13535 List!1716)) (DelimiterValue!729 (value!13536 List!1716)) (DedentValue!364 (value!13537 List!1716)) (NewLineValue!364 (value!13538 List!1716)) (IntegerValue!1092 (value!13539 (_ BitVec 32)) (text!2995 List!1716)) (IntegerValue!1093 (value!13540 Int) (text!2996 List!1716)) (Times!364) (Or!364) (Equal!364) (Minus!364) (Broken!1824 (value!13541 List!1716)) (And!364) (Div!364) (LessEqual!364) (Mod!364) (Concat!806) (Not!364) (Plus!364) (SpaceValue!364 (value!13542 List!1716)) (IntegerValue!1094 (value!13543 Int) (text!2997 List!1716)) (StringLiteralValue!1093 (text!2998 List!1716)) (FloatLiteralValue!729 (text!2999 List!1716)) (BytesLiteralValue!364 (value!13544 List!1716)) (CommentValue!729 (value!13545 List!1716)) (StringLiteralValue!1094 (value!13546 List!1716)) (ErrorTokenValue!364 (msg!425 List!1716)) )
))
(declare-fun toCharacters!31 (ErrorTokenValueInjection!4 TokenValue!364) BalanceConc!1088)

(declare-fun toValue!38 (ErrorTokenValueInjection!4 BalanceConc!1088) TokenValue!364)

(assert (=> start!10720 (= inst!50 (=> (and (inv!2091 x!29546) e!59871) (= (list!733 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29546))) (list!733 x!29546))))))

(assert (= start!10720 b!107987))

(declare-fun m!96574 () Bool)

(assert (=> b!107987 m!96574))

(declare-fun m!96576 () Bool)

(assert (=> start!10720 m!96576))

(declare-fun m!96578 () Bool)

(assert (=> start!10720 m!96578))

(declare-fun m!96580 () Bool)

(assert (=> start!10720 m!96580))

(assert (=> start!10720 m!96576))

(assert (=> start!10720 m!96578))

(declare-fun m!96582 () Bool)

(assert (=> start!10720 m!96582))

(declare-fun m!96584 () Bool)

(assert (=> start!10720 m!96584))

(declare-fun bs!10365 () Bool)

(declare-fun neg-inst!50 () Bool)

(declare-fun s!16216 () Bool)

(assert (= bs!10365 (and neg-inst!50 s!16216)))

(assert (=> bs!10365 (=> true (= (list!733 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29546))) (list!733 x!29546)))))

(assert (=> m!96580 m!96576))

(assert (=> m!96580 m!96578))

(assert (=> m!96580 m!96582))

(assert (=> m!96580 s!16216))

(assert (=> m!96576 s!16216))

(declare-fun bs!10366 () Bool)

(assert (= bs!10366 (and neg-inst!50 start!10720)))

(assert (=> bs!10366 (= true inst!50)))

(declare-fun lambda!1986 () Int)

(declare-fun Forall!79 (Int) Bool)

(assert (=> start!10720 (= (Forall!79 lambda!1986) inst!50)))

(assert (=> start!10720 (not (Forall!79 lambda!1986))))

(assert (=> start!10720 true))

(assert (= neg-inst!50 inst!50))

(declare-fun m!96586 () Bool)

(assert (=> start!10720 m!96586))

(assert (=> start!10720 m!96586))

(push 1)

(assert (not start!10720))

(assert (not b!107987))

(assert (not bs!10365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!26643 () Bool)

(declare-fun list!735 (Conc!542) List!1716)

(assert (=> d!26643 (= (list!733 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29546))) (list!735 (c!25945 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29546)))))))

(declare-fun bs!10369 () Bool)

(assert (= bs!10369 d!26643))

(declare-fun m!96602 () Bool)

(assert (=> bs!10369 m!96602))

(assert (=> bs!10365 d!26643))

(declare-fun d!26645 () Bool)

(declare-fun c!25950 () Bool)

(assert (=> d!26645 (= c!25950 (is-ErrorTokenValue!364 (toValue!38 thiss!5419 x!29546)))))

(declare-fun e!59877 () BalanceConc!1088)

(assert (=> d!26645 (= (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29546)) e!59877)))

(declare-fun b!107997 () Bool)

(declare-fun seqFromList!206 (List!1716) BalanceConc!1088)

(assert (=> b!107997 (= e!59877 (seqFromList!206 (msg!425 (toValue!38 thiss!5419 x!29546))))))

(declare-fun b!107998 () Bool)

(assert (=> b!107998 (= e!59877 (BalanceConc!1089 Empty!542))))

(assert (= (and d!26645 c!25950) b!107997))

(assert (= (and d!26645 (not c!25950)) b!107998))

(declare-fun m!96604 () Bool)

(assert (=> b!107997 m!96604))

(assert (=> bs!10365 d!26645))

(declare-fun d!26649 () Bool)

(declare-fun efficientList!22 (BalanceConc!1088) List!1716)

(assert (=> d!26649 (= (toValue!38 thiss!5419 x!29546) (ErrorTokenValue!364 (efficientList!22 x!29546)))))

(declare-fun bs!10371 () Bool)

(assert (= bs!10371 d!26649))

(declare-fun m!96608 () Bool)

(assert (=> bs!10371 m!96608))

(assert (=> bs!10365 d!26649))

(declare-fun d!26653 () Bool)

(assert (=> d!26653 (= (list!733 x!29546) (list!735 (c!25945 x!29546)))))

(declare-fun bs!10372 () Bool)

(assert (= bs!10372 d!26653))

(declare-fun m!96610 () Bool)

(assert (=> bs!10372 m!96610))

(assert (=> bs!10365 d!26653))

(push 1)

(assert (not d!26653))

(assert (not d!26649))

(assert (not start!10720))

(assert (not b!107987))

(assert (not b!107997))

(assert (not d!26643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!108014 () Bool)

(declare-fun e!59885 () List!1716)

(declare-fun e!59886 () List!1716)

(assert (=> b!108014 (= e!59885 e!59886)))

(declare-fun c!25960 () Bool)

(assert (=> b!108014 (= c!25960 (is-Leaf!865 (c!25945 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29546)))))))

(declare-fun b!108013 () Bool)

(assert (=> b!108013 (= e!59885 Nil!1710)))

(declare-fun b!108016 () Bool)

(declare-fun ++!289 (List!1716 List!1716) List!1716)

(assert (=> b!108016 (= e!59886 (++!289 (list!735 (left!1312 (c!25945 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29546))))) (list!735 (right!1642 (c!25945 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29546)))))))))

(declare-fun d!26659 () Bool)

(declare-fun c!25959 () Bool)

(assert (=> d!26659 (= c!25959 (is-Empty!542 (c!25945 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29546)))))))

(assert (=> d!26659 (= (list!735 (c!25945 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29546)))) e!59885)))

(declare-fun b!108015 () Bool)

(declare-fun list!737 (IArray!1085) List!1716)

(assert (=> b!108015 (= e!59886 (list!737 (xs!3137 (c!25945 (toCharacters!31 thiss!5419 (toValue!38 thiss!5419 x!29546))))))))

(assert (= (and d!26659 c!25959) b!108013))

(assert (= (and d!26659 (not c!25959)) b!108014))

(assert (= (and b!108014 c!25960) b!108015))

(assert (= (and b!108014 (not c!25960)) b!108016))

(declare-fun m!96618 () Bool)

(assert (=> b!108016 m!96618))

(declare-fun m!96620 () Bool)

(assert (=> b!108016 m!96620))

(assert (=> b!108016 m!96618))

(assert (=> b!108016 m!96620))

(declare-fun m!96622 () Bool)

(assert (=> b!108016 m!96622))

(declare-fun m!96624 () Bool)

(assert (=> b!108015 m!96624))

(assert (=> d!26643 d!26659))

(declare-fun b!108018 () Bool)

(declare-fun e!59887 () List!1716)

(declare-fun e!59888 () List!1716)

(assert (=> b!108018 (= e!59887 e!59888)))

(declare-fun c!25962 () Bool)

(assert (=> b!108018 (= c!25962 (is-Leaf!865 (c!25945 x!29546)))))

(declare-fun b!108017 () Bool)

(assert (=> b!108017 (= e!59887 Nil!1710)))

(declare-fun b!108020 () Bool)

(assert (=> b!108020 (= e!59888 (++!289 (list!735 (left!1312 (c!25945 x!29546))) (list!735 (right!1642 (c!25945 x!29546)))))))

(declare-fun d!26661 () Bool)

(declare-fun c!25961 () Bool)

(assert (=> d!26661 (= c!25961 (is-Empty!542 (c!25945 x!29546)))))

(assert (=> d!26661 (= (list!735 (c!25945 x!29546)) e!59887)))

(declare-fun b!108019 () Bool)

(assert (=> b!108019 (= e!59888 (list!737 (xs!3137 (c!25945 x!29546))))))

(assert (= (and d!26661 c!25961) b!108017))

(assert (= (and d!26661 (not c!25961)) b!108018))

(assert (= (and b!108018 c!25962) b!108019))

(assert (= (and b!108018 (not c!25962)) b!108020))

(declare-fun m!96626 () Bool)

(assert (=> b!108020 m!96626))

(declare-fun m!96628 () Bool)

(assert (=> b!108020 m!96628))

(assert (=> b!108020 m!96626))

(assert (=> b!108020 m!96628))

(declare-fun m!96630 () Bool)

(assert (=> b!108020 m!96630))

(declare-fun m!96632 () Bool)

(assert (=> b!108019 m!96632))

(assert (=> d!26653 d!26661))

(declare-fun d!26663 () Bool)

(declare-fun lt!30395 () List!1716)

(assert (=> d!26663 (= lt!30395 (list!733 x!29546))))

(declare-fun efficientList!24 (Conc!542 List!1716) List!1716)

(declare-fun efficientList$default$2!8 (Conc!542) List!1716)

(assert (=> d!26663 (= lt!30395 (efficientList!24 (c!25945 x!29546) (efficientList$default$2!8 (c!25945 x!29546))))))

(assert (=> d!26663 (= (efficientList!22 x!29546) lt!30395)))

(declare-fun bs!10375 () Bool)

(assert (= bs!10375 d!26663))

(assert (=> bs!10375 m!96580))

(declare-fun m!96634 () Bool)

(assert (=> bs!10375 m!96634))

(assert (=> bs!10375 m!96634))

(declare-fun m!96636 () Bool)

(assert (=> bs!10375 m!96636))

(assert (=> d!26649 d!26663))

(push 1)

(assert (not b!108020))

(assert (not start!10720))

(assert (not b!108015))

(assert (not b!108016))

(assert (not d!26663))

(assert (not b!107987))

(assert (not b!107997))

(assert (not b!108019))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!26663 d!26653))

(declare-fun b!108049 () Bool)

(declare-fun e!59903 () List!1716)

(declare-fun lt!30411 () List!1716)

(assert (=> b!108049 (= e!59903 lt!30411)))

(declare-fun b!108050 () Bool)

(declare-fun e!59904 () List!1716)

(assert (=> b!108050 (= e!59904 (efficientList$default$2!8 (c!25945 x!29546)))))

(declare-fun bm!4762 () Bool)

(declare-fun c!25979 () Bool)

(declare-fun c!25977 () Bool)

(assert (=> bm!4762 (= c!25979 c!25977)))

(declare-fun call!4767 () List!1716)

(assert (=> bm!4762 (= call!4767 (++!289 e!59903 (efficientList$default$2!8 (c!25945 x!29546))))))

(declare-fun b!108051 () Bool)

(declare-datatypes ((Unit!1138 0))(
  ( (Unit!1139) )
))
(declare-fun lt!30410 () Unit!1138)

(declare-fun lt!30413 () Unit!1138)

(assert (=> b!108051 (= lt!30410 lt!30413)))

(declare-fun lt!30409 () List!1716)

(assert (=> b!108051 (= (++!289 (++!289 lt!30409 lt!30411) (efficientList$default$2!8 (c!25945 x!29546))) (++!289 lt!30409 call!4767))))

(declare-fun lemmaConcatAssociativity!108 (List!1716 List!1716 List!1716) Unit!1138)

(assert (=> b!108051 (= lt!30413 (lemmaConcatAssociativity!108 lt!30409 lt!30411 (efficientList$default$2!8 (c!25945 x!29546))))))

(assert (=> b!108051 (= lt!30411 (list!735 (right!1642 (c!25945 x!29546))))))

(assert (=> b!108051 (= lt!30409 (list!735 (left!1312 (c!25945 x!29546))))))

(declare-fun e!59905 () List!1716)

(assert (=> b!108051 (= e!59905 (efficientList!24 (left!1312 (c!25945 x!29546)) (efficientList!24 (right!1642 (c!25945 x!29546)) (efficientList$default$2!8 (c!25945 x!29546)))))))

(declare-fun d!26669 () Bool)

(declare-fun lt!30412 () List!1716)

(assert (=> d!26669 (= lt!30412 (++!289 (list!735 (c!25945 x!29546)) (efficientList$default$2!8 (c!25945 x!29546))))))

(assert (=> d!26669 (= lt!30412 e!59904)))

(declare-fun c!25978 () Bool)

(assert (=> d!26669 (= c!25978 (is-Empty!542 (c!25945 x!29546)))))

(assert (=> d!26669 (= (efficientList!24 (c!25945 x!29546) (efficientList$default$2!8 (c!25945 x!29546))) lt!30412)))

(declare-fun b!108052 () Bool)

(assert (=> b!108052 (= e!59905 call!4767)))

(declare-fun b!108053 () Bool)

(assert (=> b!108053 (= e!59904 e!59905)))

(assert (=> b!108053 (= c!25977 (is-Leaf!865 (c!25945 x!29546)))))

(declare-fun b!108054 () Bool)

(declare-fun efficientList!26 (IArray!1085) List!1716)

(assert (=> b!108054 (= e!59903 (efficientList!26 (xs!3137 (c!25945 x!29546))))))

(assert (= (and d!26669 c!25978) b!108050))

(assert (= (and d!26669 (not c!25978)) b!108053))

(assert (= (and b!108053 c!25977) b!108052))

(assert (= (and b!108053 (not c!25977)) b!108051))

(assert (= (or b!108052 b!108051) bm!4762))

(assert (= (and bm!4762 c!25979) b!108054))

(assert (= (and bm!4762 (not c!25979)) b!108049))

(assert (=> bm!4762 m!96634))

(declare-fun m!96658 () Bool)

(assert (=> bm!4762 m!96658))

(declare-fun m!96660 () Bool)

(assert (=> b!108051 m!96660))

(assert (=> b!108051 m!96634))

(declare-fun m!96662 () Bool)

(assert (=> b!108051 m!96662))

(assert (=> b!108051 m!96628))

(assert (=> b!108051 m!96626))

(assert (=> b!108051 m!96660))

(assert (=> b!108051 m!96634))

(declare-fun m!96664 () Bool)

(assert (=> b!108051 m!96664))

(assert (=> b!108051 m!96634))

(declare-fun m!96666 () Bool)

(assert (=> b!108051 m!96666))

(assert (=> b!108051 m!96666))

(declare-fun m!96668 () Bool)

(assert (=> b!108051 m!96668))

(declare-fun m!96670 () Bool)

(assert (=> b!108051 m!96670))

(assert (=> d!26669 m!96610))

(assert (=> d!26669 m!96610))

(assert (=> d!26669 m!96634))

(declare-fun m!96672 () Bool)

(assert (=> d!26669 m!96672))

(declare-fun m!96674 () Bool)

(assert (=> b!108054 m!96674))

(assert (=> d!26663 d!26669))

(declare-fun d!26673 () Bool)

(assert (=> d!26673 (= (efficientList$default$2!8 (c!25945 x!29546)) Nil!1710)))

(assert (=> d!26663 d!26673))

(assert (=> start!10720 d!26649))

(assert (=> start!10720 d!26643))

(declare-fun d!26675 () Bool)

(declare-fun choose!1411 (Int) Bool)

(assert (=> d!26675 (= (Forall!79 lambda!1986) (choose!1411 lambda!1986))))

(declare-fun bs!10377 () Bool)

(assert (= bs!10377 d!26675))

(declare-fun m!96676 () Bool)

(assert (=> bs!10377 m!96676))

(assert (=> start!10720 d!26675))

(declare-fun d!26677 () Bool)

(declare-fun isBalanced!152 (Conc!542) Bool)

(assert (=> d!26677 (= (inv!2091 x!29546) (isBalanced!152 (c!25945 x!29546)))))

(declare-fun bs!10378 () Bool)

(assert (= bs!10378 d!26677))

(declare-fun m!96678 () Bool)

(assert (=> bs!10378 m!96678))

(assert (=> start!10720 d!26677))

(assert (=> start!10720 d!26653))

(assert (=> start!10720 d!26645))

(declare-fun d!26679 () Bool)

(declare-fun c!25982 () Bool)

(assert (=> d!26679 (= c!25982 (is-Node!542 (c!25945 x!29546)))))

(declare-fun e!59910 () Bool)

(assert (=> d!26679 (= (inv!2090 (c!25945 x!29546)) e!59910)))

(declare-fun b!108061 () Bool)

(declare-fun inv!2094 (Conc!542) Bool)

(assert (=> b!108061 (= e!59910 (inv!2094 (c!25945 x!29546)))))

(declare-fun b!108062 () Bool)

(declare-fun e!59911 () Bool)

(assert (=> b!108062 (= e!59910 e!59911)))

(declare-fun res!51726 () Bool)

(assert (=> b!108062 (= res!51726 (not (is-Leaf!865 (c!25945 x!29546))))))

(assert (=> b!108062 (=> res!51726 e!59911)))

(declare-fun b!108063 () Bool)

(declare-fun inv!2095 (Conc!542) Bool)

(assert (=> b!108063 (= e!59911 (inv!2095 (c!25945 x!29546)))))

(assert (= (and d!26679 c!25982) b!108061))

(assert (= (and d!26679 (not c!25982)) b!108062))

(assert (= (and b!108062 (not res!51726)) b!108063))

(declare-fun m!96680 () Bool)

(assert (=> b!108061 m!96680))

(declare-fun m!96682 () Bool)

(assert (=> b!108063 m!96682))

(assert (=> b!107987 d!26679))

(declare-fun d!26681 () Bool)

(declare-fun fromListB!96 (List!1716) BalanceConc!1088)

(assert (=> d!26681 (= (seqFromList!206 (msg!425 (toValue!38 thiss!5419 x!29546))) (fromListB!96 (msg!425 (toValue!38 thiss!5419 x!29546))))))

(declare-fun bs!10379 () Bool)

(assert (= bs!10379 d!26681))

(declare-fun m!96684 () Bool)

(assert (=> bs!10379 m!96684))

(assert (=> b!107997 d!26681))

(declare-fun tp!58919 () Bool)

(declare-fun tp!58920 () Bool)

(declare-fun e!59916 () Bool)

(declare-fun b!108070 () Bool)

(assert (=> b!108070 (= e!59916 (and (inv!2090 (left!1312 (c!25945 x!29546))) tp!58919 (inv!2090 (right!1642 (c!25945 x!29546))) tp!58920))))

(declare-fun b!108071 () Bool)

(declare-fun inv!2096 (IArray!1085) Bool)

(assert (=> b!108071 (= e!59916 (inv!2096 (xs!3137 (c!25945 x!29546))))))

(assert (=> b!107987 (= tp!58911 (and (inv!2090 (c!25945 x!29546)) e!59916))))

(assert (= (and b!107987 (is-Node!542 (c!25945 x!29546))) b!108070))

(assert (= (and b!107987 (is-Leaf!865 (c!25945 x!29546))) b!108071))

(declare-fun m!96686 () Bool)

(assert (=> b!108070 m!96686))

(declare-fun m!96688 () Bool)

(assert (=> b!108070 m!96688))

(declare-fun m!96690 () Bool)

(assert (=> b!108071 m!96690))

(assert (=> b!107987 m!96574))

(push 1)

(assert (not b!108061))

(assert (not b!108054))

(assert (not d!26681))

(assert (not b!107987))

(assert (not b!108070))

(assert (not d!26669))

(assert (not d!26677))

(assert (not b!108019))

(assert (not d!26675))

(assert (not b!108071))

(assert (not b!108015))

(assert (not b!108016))

(assert (not b!108051))

(assert (not b!108063))

(assert (not b!108020))

(assert (not bm!4762))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!26693 () Bool)

(declare-fun e!59929 () Bool)

(assert (=> d!26693 e!59929))

(declare-fun res!51729 () Bool)

(assert (=> d!26693 (=> (not res!51729) (not e!59929))))

(declare-fun lt!30431 () BalanceConc!1088)

(assert (=> d!26693 (= res!51729 (= (list!733 lt!30431) (msg!425 (toValue!38 thiss!5419 x!29546))))))

(declare-fun fromList!65 (List!1716) Conc!542)

(assert (=> d!26693 (= lt!30431 (BalanceConc!1089 (fromList!65 (msg!425 (toValue!38 thiss!5419 x!29546)))))))

(assert (=> d!26693 (= (fromListB!96 (msg!425 (toValue!38 thiss!5419 x!29546))) lt!30431)))

(declare-fun b!108092 () Bool)

(assert (=> b!108092 (= e!59929 (isBalanced!152 (fromList!65 (msg!425 (toValue!38 thiss!5419 x!29546)))))))

(assert (= (and d!26693 res!51729) b!108092))

(declare-fun m!96716 () Bool)

(assert (=> d!26693 m!96716))

(declare-fun m!96718 () Bool)

(assert (=> d!26693 m!96718))

(assert (=> b!108092 m!96718))

(assert (=> b!108092 m!96718))

(declare-fun m!96720 () Bool)

(assert (=> b!108092 m!96720))

(assert (=> d!26681 d!26693))

(declare-fun b!108118 () Bool)

(declare-fun res!51737 () Bool)

(declare-fun e!59944 () Bool)

(assert (=> b!108118 (=> (not res!51737) (not e!59944))))

(declare-fun lt!30434 () List!1716)

(declare-fun size!1523 (List!1716) Int)

(assert (=> b!108118 (= res!51737 (= (size!1523 lt!30434) (+ (size!1523 (list!735 (c!25945 x!29546))) (size!1523 (efficientList$default$2!8 (c!25945 x!29546))))))))

(declare-fun d!26697 () Bool)

(assert (=> d!26697 e!59944))

(declare-fun res!51738 () Bool)

(assert (=> d!26697 (=> (not res!51738) (not e!59944))))

(declare-fun content!151 (List!1716) (Set (_ BitVec 16)))

(assert (=> d!26697 (= res!51738 (= (content!151 lt!30434) (set.union (content!151 (list!735 (c!25945 x!29546))) (content!151 (efficientList$default$2!8 (c!25945 x!29546))))))))

(declare-fun e!59945 () List!1716)

(assert (=> d!26697 (= lt!30434 e!59945)))

(declare-fun c!25998 () Bool)

(assert (=> d!26697 (= c!25998 (is-Nil!1710 (list!735 (c!25945 x!29546))))))

(assert (=> d!26697 (= (++!289 (list!735 (c!25945 x!29546)) (efficientList$default$2!8 (c!25945 x!29546))) lt!30434)))

(declare-fun b!108117 () Bool)

(assert (=> b!108117 (= e!59945 (Cons!1710 (h!7107 (list!735 (c!25945 x!29546))) (++!289 (t!21495 (list!735 (c!25945 x!29546))) (efficientList$default$2!8 (c!25945 x!29546)))))))

(declare-fun b!108116 () Bool)

(assert (=> b!108116 (= e!59945 (efficientList$default$2!8 (c!25945 x!29546)))))

(declare-fun b!108119 () Bool)

(assert (=> b!108119 (= e!59944 (or (not (= (efficientList$default$2!8 (c!25945 x!29546)) Nil!1710)) (= lt!30434 (list!735 (c!25945 x!29546)))))))

(assert (= (and d!26697 c!25998) b!108116))

(assert (= (and d!26697 (not c!25998)) b!108117))

(assert (= (and d!26697 res!51738) b!108118))

(assert (= (and b!108118 res!51737) b!108119))

(declare-fun m!96726 () Bool)

(assert (=> b!108118 m!96726))

(assert (=> b!108118 m!96610))

(declare-fun m!96728 () Bool)

(assert (=> b!108118 m!96728))

(assert (=> b!108118 m!96634))

(declare-fun m!96730 () Bool)

(assert (=> b!108118 m!96730))

(declare-fun m!96732 () Bool)

(assert (=> d!26697 m!96732))

(assert (=> d!26697 m!96610))

(declare-fun m!96734 () Bool)

(assert (=> d!26697 m!96734))

(assert (=> d!26697 m!96634))

(declare-fun m!96736 () Bool)

(assert (=> d!26697 m!96736))

(assert (=> b!108117 m!96634))

(declare-fun m!96738 () Bool)

(assert (=> b!108117 m!96738))

(assert (=> d!26669 d!26697))

(assert (=> d!26669 d!26661))

(push 1)

(assert (not b!108061))

(assert (not b!108054))

(assert (not b!108117))

(assert (not b!107987))

(assert (not b!108070))

(assert (not b!108019))

(assert (not b!108015))

(assert (not b!108016))

(assert (not b!108051))

(assert (not b!108063))

(assert (not d!26697))

(assert (not b!108020))

(assert (not bm!4762))

(assert (not d!26677))

(assert (not b!108092))

(assert (not b!108118))

(assert (not d!26675))

(assert (not d!26693))

(assert (not b!108071))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

