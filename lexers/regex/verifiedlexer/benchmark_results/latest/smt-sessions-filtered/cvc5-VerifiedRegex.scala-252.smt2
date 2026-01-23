; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!3964 () Bool)

(assert start!3964)

(declare-fun b!52596 () Bool)

(declare-fun b_free!1685 () Bool)

(declare-fun b_next!1685 () Bool)

(assert (=> b!52596 (= b_free!1685 (not b_next!1685))))

(declare-fun tp!34115 () Bool)

(declare-fun b_and!1735 () Bool)

(assert (=> b!52596 (= tp!34115 b_and!1735)))

(declare-fun b_free!1687 () Bool)

(declare-fun b_next!1687 () Bool)

(assert (=> b!52596 (= b_free!1687 (not b_next!1687))))

(declare-fun tp!34114 () Bool)

(declare-fun b_and!1737 () Bool)

(assert (=> b!52596 (= tp!34114 b_and!1737)))

(declare-fun b!52595 () Bool)

(declare-fun res!34176 () Bool)

(declare-fun e!31009 () Bool)

(assert (=> b!52595 (=> (not res!34176) (not e!31009))))

(declare-datatypes ((LexerInterface!126 0))(
  ( (LexerInterfaceExt!123 (__x!1543 Int)) (Lexer!124) )
))
(declare-fun thiss!11059 () LexerInterface!126)

(declare-datatypes ((List!1089 0))(
  ( (Nil!1083) (Cons!1083 (h!6480 (_ BitVec 16)) (t!17332 List!1089)) )
))
(declare-datatypes ((TokenValue!224 0))(
  ( (FloatLiteralValue!448 (text!2013 List!1089)) (TokenValueExt!223 (__x!1544 Int)) (Broken!1120 (value!9542 List!1089)) (Object!229) (End!224) (Def!224) (Underscore!224) (Match!224) (Else!224) (Error!224) (Case!224) (If!224) (Extends!224) (Abstract!224) (Class!224) (Val!224) (DelimiterValue!448 (del!284 List!1089)) (KeywordValue!230 (value!9543 List!1089)) (CommentValue!448 (value!9544 List!1089)) (WhitespaceValue!448 (value!9545 List!1089)) (IndentationValue!224 (value!9546 List!1089)) (String!1513) (Int32!224) (Broken!1121 (value!9547 List!1089)) (Boolean!225) (Unit!614) (OperatorValue!227 (op!284 List!1089)) (IdentifierValue!448 (value!9548 List!1089)) (IdentifierValue!449 (value!9549 List!1089)) (WhitespaceValue!449 (value!9550 List!1089)) (True!448) (False!448) (Broken!1122 (value!9551 List!1089)) (Broken!1123 (value!9552 List!1089)) (True!449) (RightBrace!224) (RightBracket!224) (Colon!224) (Null!224) (Comma!224) (LeftBracket!224) (False!449) (LeftBrace!224) (ImaginaryLiteralValue!224 (text!2014 List!1089)) (StringLiteralValue!672 (value!9553 List!1089)) (EOFValue!224 (value!9554 List!1089)) (IdentValue!224 (value!9555 List!1089)) (DelimiterValue!449 (value!9556 List!1089)) (DedentValue!224 (value!9557 List!1089)) (NewLineValue!224 (value!9558 List!1089)) (IntegerValue!672 (value!9559 (_ BitVec 32)) (text!2015 List!1089)) (IntegerValue!673 (value!9560 Int) (text!2016 List!1089)) (Times!224) (Or!224) (Equal!224) (Minus!224) (Broken!1124 (value!9561 List!1089)) (And!224) (Div!224) (LessEqual!224) (Mod!224) (Concat!526) (Not!224) (Plus!224) (SpaceValue!224 (value!9562 List!1089)) (IntegerValue!674 (value!9563 Int) (text!2017 List!1089)) (StringLiteralValue!673 (text!2018 List!1089)) (FloatLiteralValue!449 (text!2019 List!1089)) (BytesLiteralValue!224 (value!9564 List!1089)) (CommentValue!449 (value!9565 List!1089)) (StringLiteralValue!674 (value!9566 List!1089)) (ErrorTokenValue!224 (msg!285 List!1089)) )
))
(declare-datatypes ((C!1526 0))(
  ( (C!1527 (val!370 Int)) )
))
(declare-datatypes ((Regex!302 0))(
  ( (ElementMatch!302 (c!16903 C!1526)) (Concat!527 (regOne!1116 Regex!302) (regTwo!1116 Regex!302)) (EmptyExpr!302) (Star!302 (reg!631 Regex!302)) (EmptyLang!302) (Union!302 (regOne!1117 Regex!302) (regTwo!1117 Regex!302)) )
))
(declare-datatypes ((String!1514 0))(
  ( (String!1515 (value!9567 String)) )
))
(declare-datatypes ((List!1090 0))(
  ( (Nil!1084) (Cons!1084 (h!6481 C!1526) (t!17333 List!1090)) )
))
(declare-datatypes ((IArray!545 0))(
  ( (IArray!546 (innerList!330 List!1090)) )
))
(declare-datatypes ((Conc!272 0))(
  ( (Node!272 (left!818 Conc!272) (right!1148 Conc!272) (csize!774 Int) (cheight!483 Int)) (Leaf!525 (xs!2851 IArray!545) (csize!775 Int)) (Empty!272) )
))
(declare-datatypes ((BalanceConc!548 0))(
  ( (BalanceConc!549 (c!16904 Conc!272)) )
))
(declare-datatypes ((TokenValueInjection!272 0))(
  ( (TokenValueInjection!273 (toValue!713 Int) (toChars!572 Int)) )
))
(declare-datatypes ((Rule!268 0))(
  ( (Rule!269 (regex!234 Regex!302) (tag!412 String!1514) (isSeparator!234 Bool) (transformation!234 TokenValueInjection!272)) )
))
(declare-datatypes ((Token!232 0))(
  ( (Token!233 (value!9568 TokenValue!224) (rule!709 Rule!268) (size!989 Int) (originalCharacters!287 List!1090)) )
))
(declare-datatypes ((List!1091 0))(
  ( (Nil!1085) (Cons!1085 (h!6482 Token!232) (t!17334 List!1091)) )
))
(declare-datatypes ((IArray!547 0))(
  ( (IArray!548 (innerList!331 List!1091)) )
))
(declare-datatypes ((Conc!273 0))(
  ( (Node!273 (left!819 Conc!273) (right!1149 Conc!273) (csize!776 Int) (cheight!484 Int)) (Leaf!526 (xs!2852 IArray!547) (csize!777 Int)) (Empty!273) )
))
(declare-datatypes ((BalanceConc!550 0))(
  ( (BalanceConc!551 (c!16905 Conc!273)) )
))
(declare-fun v!6227 () BalanceConc!550)

(declare-datatypes ((List!1092 0))(
  ( (Nil!1086) (Cons!1086 (h!6483 Rule!268) (t!17335 List!1092)) )
))
(declare-fun rules!1069 () List!1092)

(declare-fun rulesProduceEachTokenIndividually!64 (LexerInterface!126 List!1092 BalanceConc!550) Bool)

(assert (=> b!52595 (= res!34176 (rulesProduceEachTokenIndividually!64 thiss!11059 rules!1069 v!6227))))

(declare-fun e!31011 () Bool)

(assert (=> b!52596 (= e!31011 (and tp!34115 tp!34114))))

(declare-fun b!52597 () Bool)

(declare-fun from!821 () Int)

(declare-fun size!990 (List!1091) Int)

(declare-fun list!277 (BalanceConc!550) List!1091)

(assert (=> b!52597 (= e!31009 (>= from!821 (size!990 (list!277 v!6227))))))

(declare-fun b!52598 () Bool)

(declare-fun e!31012 () Bool)

(assert (=> b!52598 (= e!31012 e!31009)))

(declare-fun res!34174 () Bool)

(assert (=> b!52598 (=> (not res!34174) (not e!31009))))

(declare-fun lt!9445 () Int)

(assert (=> b!52598 (= res!34174 (<= from!821 lt!9445))))

(declare-fun size!991 (BalanceConc!550) Int)

(assert (=> b!52598 (= lt!9445 (size!991 v!6227))))

(declare-fun tp!34111 () Bool)

(declare-fun e!31014 () Bool)

(declare-fun b!52599 () Bool)

(declare-fun inv!1427 (String!1514) Bool)

(declare-fun inv!1430 (TokenValueInjection!272) Bool)

(assert (=> b!52599 (= e!31014 (and tp!34111 (inv!1427 (tag!412 (h!6483 rules!1069))) (inv!1430 (transformation!234 (h!6483 rules!1069))) e!31011))))

(declare-fun b!52600 () Bool)

(declare-fun e!31013 () Bool)

(declare-fun tp!34112 () Bool)

(declare-fun inv!1431 (Conc!273) Bool)

(assert (=> b!52600 (= e!31013 (and (inv!1431 (c!16905 v!6227)) tp!34112))))

(declare-fun res!34173 () Bool)

(assert (=> start!3964 (=> (not res!34173) (not e!31012))))

(assert (=> start!3964 (= res!34173 (and (is-Lexer!124 thiss!11059) (>= from!821 0)))))

(assert (=> start!3964 e!31012))

(assert (=> start!3964 true))

(declare-fun inv!1432 (BalanceConc!550) Bool)

(assert (=> start!3964 (and (inv!1432 v!6227) e!31013)))

(declare-fun e!31010 () Bool)

(assert (=> start!3964 e!31010))

(declare-fun b!52601 () Bool)

(declare-fun res!34175 () Bool)

(assert (=> b!52601 (=> (not res!34175) (not e!31009))))

(declare-fun isEmpty!220 (List!1092) Bool)

(assert (=> b!52601 (= res!34175 (not (isEmpty!220 rules!1069)))))

(declare-fun b!52602 () Bool)

(declare-fun res!34171 () Bool)

(assert (=> b!52602 (=> (not res!34171) (not e!31009))))

(declare-fun rulesInvariant!120 (LexerInterface!126 List!1092) Bool)

(assert (=> b!52602 (= res!34171 (rulesInvariant!120 thiss!11059 rules!1069))))

(declare-fun b!52603 () Bool)

(declare-fun res!34172 () Bool)

(assert (=> b!52603 (=> (not res!34172) (not e!31009))))

(assert (=> b!52603 (= res!34172 (< from!821 (- lt!9445 1)))))

(declare-fun b!52604 () Bool)

(declare-fun tp!34113 () Bool)

(assert (=> b!52604 (= e!31010 (and e!31014 tp!34113))))

(assert (= (and start!3964 res!34173) b!52598))

(assert (= (and b!52598 res!34174) b!52601))

(assert (= (and b!52601 res!34175) b!52602))

(assert (= (and b!52602 res!34171) b!52595))

(assert (= (and b!52595 res!34176) b!52603))

(assert (= (and b!52603 res!34172) b!52597))

(assert (= start!3964 b!52600))

(assert (= b!52599 b!52596))

(assert (= b!52604 b!52599))

(assert (= (and start!3964 (is-Cons!1086 rules!1069)) b!52604))

(declare-fun m!26838 () Bool)

(assert (=> b!52598 m!26838))

(declare-fun m!26840 () Bool)

(assert (=> b!52602 m!26840))

(declare-fun m!26842 () Bool)

(assert (=> b!52600 m!26842))

(declare-fun m!26844 () Bool)

(assert (=> b!52595 m!26844))

(declare-fun m!26846 () Bool)

(assert (=> b!52599 m!26846))

(declare-fun m!26848 () Bool)

(assert (=> b!52599 m!26848))

(declare-fun m!26850 () Bool)

(assert (=> start!3964 m!26850))

(declare-fun m!26852 () Bool)

(assert (=> b!52597 m!26852))

(assert (=> b!52597 m!26852))

(declare-fun m!26854 () Bool)

(assert (=> b!52597 m!26854))

(declare-fun m!26856 () Bool)

(assert (=> b!52601 m!26856))

(push 1)

(assert (not b!52595))

(assert (not b!52601))

(assert (not b!52604))

(assert b_and!1737)

(assert b_and!1735)

(assert (not b!52599))

(assert (not b!52602))

(assert (not start!3964))

(assert (not b!52600))

(assert (not b!52598))

(assert (not b!52597))

(assert (not b_next!1685))

(assert (not b_next!1687))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1737)

(assert b_and!1735)

(assert (not b_next!1685))

(assert (not b_next!1687))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6477 () Bool)

(assert (=> d!6477 (= (inv!1427 (tag!412 (h!6483 rules!1069))) (= (mod (str.len (value!9567 (tag!412 (h!6483 rules!1069)))) 2) 0))))

(assert (=> b!52599 d!6477))

(declare-fun d!6479 () Bool)

(declare-fun res!34200 () Bool)

(declare-fun e!31042 () Bool)

(assert (=> d!6479 (=> (not res!34200) (not e!31042))))

(declare-fun semiInverseModEq!21 (Int Int) Bool)

(assert (=> d!6479 (= res!34200 (semiInverseModEq!21 (toChars!572 (transformation!234 (h!6483 rules!1069))) (toValue!713 (transformation!234 (h!6483 rules!1069)))))))

(assert (=> d!6479 (= (inv!1430 (transformation!234 (h!6483 rules!1069))) e!31042)))

(declare-fun b!52640 () Bool)

(declare-fun equivClasses!17 (Int Int) Bool)

(assert (=> b!52640 (= e!31042 (equivClasses!17 (toChars!572 (transformation!234 (h!6483 rules!1069))) (toValue!713 (transformation!234 (h!6483 rules!1069)))))))

(assert (= (and d!6479 res!34200) b!52640))

(declare-fun m!26882 () Bool)

(assert (=> d!6479 m!26882))

(declare-fun m!26884 () Bool)

(assert (=> b!52640 m!26884))

(assert (=> b!52599 d!6479))

(declare-fun d!6485 () Bool)

(assert (=> d!6485 (= (isEmpty!220 rules!1069) (is-Nil!1086 rules!1069))))

(assert (=> b!52601 d!6485))

(declare-fun d!6487 () Bool)

(declare-fun c!16911 () Bool)

(assert (=> d!6487 (= c!16911 (is-Node!273 (c!16905 v!6227)))))

(declare-fun e!31047 () Bool)

(assert (=> d!6487 (= (inv!1431 (c!16905 v!6227)) e!31047)))

(declare-fun b!52647 () Bool)

(declare-fun inv!1436 (Conc!273) Bool)

(assert (=> b!52647 (= e!31047 (inv!1436 (c!16905 v!6227)))))

(declare-fun b!52648 () Bool)

(declare-fun e!31048 () Bool)

(assert (=> b!52648 (= e!31047 e!31048)))

(declare-fun res!34203 () Bool)

(assert (=> b!52648 (= res!34203 (not (is-Leaf!526 (c!16905 v!6227))))))

(assert (=> b!52648 (=> res!34203 e!31048)))

(declare-fun b!52649 () Bool)

(declare-fun inv!1437 (Conc!273) Bool)

(assert (=> b!52649 (= e!31048 (inv!1437 (c!16905 v!6227)))))

(assert (= (and d!6487 c!16911) b!52647))

(assert (= (and d!6487 (not c!16911)) b!52648))

(assert (= (and b!52648 (not res!34203)) b!52649))

(declare-fun m!26886 () Bool)

(assert (=> b!52647 m!26886))

(declare-fun m!26888 () Bool)

(assert (=> b!52649 m!26888))

(assert (=> b!52600 d!6487))

(declare-fun b!52663 () Bool)

(declare-fun e!31060 () Bool)

(assert (=> b!52663 (= e!31060 true)))

(declare-fun b!52662 () Bool)

(declare-fun e!31059 () Bool)

(assert (=> b!52662 (= e!31059 e!31060)))

(declare-fun b!52661 () Bool)

(declare-fun e!31058 () Bool)

(assert (=> b!52661 (= e!31058 e!31059)))

(declare-fun d!6489 () Bool)

(assert (=> d!6489 e!31058))

(assert (= b!52662 b!52663))

(assert (= b!52661 b!52662))

(assert (= (and d!6489 (is-Cons!1086 rules!1069)) b!52661))

(declare-fun lambda!1064 () Int)

(declare-fun order!313 () Int)

(declare-fun order!315 () Int)

(declare-fun dynLambda!186 (Int Int) Int)

(declare-fun dynLambda!187 (Int Int) Int)

(assert (=> b!52663 (< (dynLambda!186 order!313 (toValue!713 (transformation!234 (h!6483 rules!1069)))) (dynLambda!187 order!315 lambda!1064))))

(declare-fun order!317 () Int)

(declare-fun dynLambda!188 (Int Int) Int)

(assert (=> b!52663 (< (dynLambda!188 order!317 (toChars!572 (transformation!234 (h!6483 rules!1069)))) (dynLambda!187 order!315 lambda!1064))))

(assert (=> d!6489 true))

(declare-fun e!31051 () Bool)

(assert (=> d!6489 e!31051))

(declare-fun res!34206 () Bool)

(assert (=> d!6489 (=> (not res!34206) (not e!31051))))

(declare-fun lt!9453 () Bool)

(declare-fun forall!125 (List!1091 Int) Bool)

(assert (=> d!6489 (= res!34206 (= lt!9453 (forall!125 (list!277 v!6227) lambda!1064)))))

(declare-fun forall!126 (BalanceConc!550 Int) Bool)

(assert (=> d!6489 (= lt!9453 (forall!126 v!6227 lambda!1064))))

(assert (=> d!6489 (not (isEmpty!220 rules!1069))))

(assert (=> d!6489 (= (rulesProduceEachTokenIndividually!64 thiss!11059 rules!1069 v!6227) lt!9453)))

(declare-fun b!52652 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!39 (LexerInterface!126 List!1092 List!1091) Bool)

(assert (=> b!52652 (= e!31051 (= lt!9453 (rulesProduceEachTokenIndividuallyList!39 thiss!11059 rules!1069 (list!277 v!6227))))))

(assert (= (and d!6489 res!34206) b!52652))

(assert (=> d!6489 m!26852))

(assert (=> d!6489 m!26852))

(declare-fun m!26890 () Bool)

(assert (=> d!6489 m!26890))

(declare-fun m!26892 () Bool)

(assert (=> d!6489 m!26892))

(assert (=> d!6489 m!26856))

(assert (=> b!52652 m!26852))

(assert (=> b!52652 m!26852))

(declare-fun m!26894 () Bool)

(assert (=> b!52652 m!26894))

(assert (=> b!52595 d!6489))

(declare-fun d!6491 () Bool)

(declare-fun res!34209 () Bool)

(declare-fun e!31063 () Bool)

(assert (=> d!6491 (=> (not res!34209) (not e!31063))))

(declare-fun rulesValid!31 (LexerInterface!126 List!1092) Bool)

(assert (=> d!6491 (= res!34209 (rulesValid!31 thiss!11059 rules!1069))))

(assert (=> d!6491 (= (rulesInvariant!120 thiss!11059 rules!1069) e!31063)))

(declare-fun b!52668 () Bool)

(declare-datatypes ((List!1097 0))(
  ( (Nil!1091) (Cons!1091 (h!6488 String!1514) (t!17346 List!1097)) )
))
(declare-fun noDuplicateTag!31 (LexerInterface!126 List!1092 List!1097) Bool)

(assert (=> b!52668 (= e!31063 (noDuplicateTag!31 thiss!11059 rules!1069 Nil!1091))))

(assert (= (and d!6491 res!34209) b!52668))

(declare-fun m!26896 () Bool)

(assert (=> d!6491 m!26896))

(declare-fun m!26898 () Bool)

(assert (=> b!52668 m!26898))

(assert (=> b!52602 d!6491))

(declare-fun d!6493 () Bool)

(declare-fun lt!9456 () Int)

(assert (=> d!6493 (>= lt!9456 0)))

(declare-fun e!31066 () Int)

(assert (=> d!6493 (= lt!9456 e!31066)))

(declare-fun c!16914 () Bool)

(assert (=> d!6493 (= c!16914 (is-Nil!1085 (list!277 v!6227)))))

(assert (=> d!6493 (= (size!990 (list!277 v!6227)) lt!9456)))

(declare-fun b!52673 () Bool)

(assert (=> b!52673 (= e!31066 0)))

(declare-fun b!52674 () Bool)

(assert (=> b!52674 (= e!31066 (+ 1 (size!990 (t!17334 (list!277 v!6227)))))))

(assert (= (and d!6493 c!16914) b!52673))

(assert (= (and d!6493 (not c!16914)) b!52674))

(declare-fun m!26900 () Bool)

(assert (=> b!52674 m!26900))

(assert (=> b!52597 d!6493))

(declare-fun d!6495 () Bool)

(declare-fun list!279 (Conc!273) List!1091)

(assert (=> d!6495 (= (list!277 v!6227) (list!279 (c!16905 v!6227)))))

(declare-fun bs!6702 () Bool)

(assert (= bs!6702 d!6495))

(declare-fun m!26902 () Bool)

(assert (=> bs!6702 m!26902))

(assert (=> b!52597 d!6495))

(declare-fun d!6497 () Bool)

(declare-fun isBalanced!38 (Conc!273) Bool)

(assert (=> d!6497 (= (inv!1432 v!6227) (isBalanced!38 (c!16905 v!6227)))))

(declare-fun bs!6703 () Bool)

(assert (= bs!6703 d!6497))

(declare-fun m!26904 () Bool)

(assert (=> bs!6703 m!26904))

(assert (=> start!3964 d!6497))

(declare-fun d!6499 () Bool)

(declare-fun lt!9459 () Int)

(assert (=> d!6499 (= lt!9459 (size!990 (list!277 v!6227)))))

(declare-fun size!995 (Conc!273) Int)

(assert (=> d!6499 (= lt!9459 (size!995 (c!16905 v!6227)))))

(assert (=> d!6499 (= (size!991 v!6227) lt!9459)))

(declare-fun bs!6704 () Bool)

(assert (= bs!6704 d!6499))

(assert (=> bs!6704 m!26852))

(assert (=> bs!6704 m!26852))

(assert (=> bs!6704 m!26854))

(declare-fun m!26906 () Bool)

(assert (=> bs!6704 m!26906))

(assert (=> b!52598 d!6499))

(declare-fun b!52685 () Bool)

(declare-fun b_free!1693 () Bool)

(declare-fun b_next!1693 () Bool)

(assert (=> b!52685 (= b_free!1693 (not b_next!1693))))

(declare-fun tp!34142 () Bool)

(declare-fun b_and!1743 () Bool)

(assert (=> b!52685 (= tp!34142 b_and!1743)))

(declare-fun b_free!1695 () Bool)

(declare-fun b_next!1695 () Bool)

(assert (=> b!52685 (= b_free!1695 (not b_next!1695))))

(declare-fun tp!34140 () Bool)

(declare-fun b_and!1745 () Bool)

(assert (=> b!52685 (= tp!34140 b_and!1745)))

(declare-fun e!31078 () Bool)

(assert (=> b!52685 (= e!31078 (and tp!34142 tp!34140))))

(declare-fun tp!34141 () Bool)

(declare-fun b!52684 () Bool)

(declare-fun e!31075 () Bool)

(assert (=> b!52684 (= e!31075 (and tp!34141 (inv!1427 (tag!412 (h!6483 (t!17335 rules!1069)))) (inv!1430 (transformation!234 (h!6483 (t!17335 rules!1069)))) e!31078))))

(declare-fun b!52683 () Bool)

(declare-fun e!31077 () Bool)

(declare-fun tp!34139 () Bool)

(assert (=> b!52683 (= e!31077 (and e!31075 tp!34139))))

(assert (=> b!52604 (= tp!34113 e!31077)))

(assert (= b!52684 b!52685))

(assert (= b!52683 b!52684))

(assert (= (and b!52604 (is-Cons!1086 (t!17335 rules!1069))) b!52683))

(declare-fun m!26908 () Bool)

(assert (=> b!52684 m!26908))

(declare-fun m!26910 () Bool)

(assert (=> b!52684 m!26910))

(declare-fun b!52697 () Bool)

(declare-fun e!31081 () Bool)

(declare-fun tp!34153 () Bool)

(declare-fun tp!34154 () Bool)

(assert (=> b!52697 (= e!31081 (and tp!34153 tp!34154))))

(declare-fun b!52699 () Bool)

(declare-fun tp!34156 () Bool)

(declare-fun tp!34155 () Bool)

(assert (=> b!52699 (= e!31081 (and tp!34156 tp!34155))))

(declare-fun b!52698 () Bool)

(declare-fun tp!34157 () Bool)

(assert (=> b!52698 (= e!31081 tp!34157)))

(assert (=> b!52599 (= tp!34111 e!31081)))

(declare-fun b!52696 () Bool)

(declare-fun tp_is_empty!539 () Bool)

(assert (=> b!52696 (= e!31081 tp_is_empty!539)))

(assert (= (and b!52599 (is-ElementMatch!302 (regex!234 (h!6483 rules!1069)))) b!52696))

(assert (= (and b!52599 (is-Concat!527 (regex!234 (h!6483 rules!1069)))) b!52697))

(assert (= (and b!52599 (is-Star!302 (regex!234 (h!6483 rules!1069)))) b!52698))

(assert (= (and b!52599 (is-Union!302 (regex!234 (h!6483 rules!1069)))) b!52699))

(declare-fun tp!34166 () Bool)

(declare-fun tp!34165 () Bool)

(declare-fun e!31086 () Bool)

(declare-fun b!52708 () Bool)

(assert (=> b!52708 (= e!31086 (and (inv!1431 (left!819 (c!16905 v!6227))) tp!34166 (inv!1431 (right!1149 (c!16905 v!6227))) tp!34165))))

(declare-fun b!52710 () Bool)

(declare-fun e!31087 () Bool)

(declare-fun tp!34164 () Bool)

(assert (=> b!52710 (= e!31087 tp!34164)))

(declare-fun b!52709 () Bool)

(declare-fun inv!1438 (IArray!547) Bool)

(assert (=> b!52709 (= e!31086 (and (inv!1438 (xs!2852 (c!16905 v!6227))) e!31087))))

(assert (=> b!52600 (= tp!34112 (and (inv!1431 (c!16905 v!6227)) e!31086))))

(assert (= (and b!52600 (is-Node!273 (c!16905 v!6227))) b!52708))

(assert (= b!52709 b!52710))

(assert (= (and b!52600 (is-Leaf!526 (c!16905 v!6227))) b!52709))

(declare-fun m!26912 () Bool)

(assert (=> b!52708 m!26912))

(declare-fun m!26914 () Bool)

(assert (=> b!52708 m!26914))

(declare-fun m!26916 () Bool)

(assert (=> b!52709 m!26916))

(assert (=> b!52600 m!26842))

(push 1)

(assert (not b!52649))

(assert tp_is_empty!539)

(assert b_and!1735)

(assert b_and!1745)

(assert (not b!52708))

(assert (not b!52683))

(assert (not b!52668))

(assert (not d!6491))

(assert (not b!52674))

(assert (not b!52661))

(assert b_and!1743)

(assert (not b!52709))

(assert (not b_next!1693))

(assert (not b!52600))

(assert (not b!52640))

(assert (not b_next!1685))

(assert (not b_next!1687))

(assert (not d!6489))

(assert (not b!52647))

(assert b_and!1737)

(assert (not b!52697))

(assert (not b!52684))

(assert (not d!6499))

(assert (not b!52699))

(assert (not d!6497))

(assert (not d!6479))

(assert (not b_next!1695))

(assert (not d!6495))

(assert (not b!52652))

(assert (not b!52698))

(assert (not b!52710))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1743)

(assert (not b_next!1693))

(assert b_and!1737)

(assert (not b_next!1695))

(assert b_and!1735)

(assert b_and!1745)

(assert (not b_next!1685))

(assert (not b_next!1687))

(check-sat)

(pop 1)

