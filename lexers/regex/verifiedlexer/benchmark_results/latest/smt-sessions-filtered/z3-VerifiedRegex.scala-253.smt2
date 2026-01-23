; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3998 () Bool)

(assert start!3998)

(declare-fun b!52822 () Bool)

(declare-fun b_free!1701 () Bool)

(declare-fun b_next!1701 () Bool)

(assert (=> b!52822 (= b_free!1701 (not b_next!1701))))

(declare-fun tp!34231 () Bool)

(declare-fun b_and!1751 () Bool)

(assert (=> b!52822 (= tp!34231 b_and!1751)))

(declare-fun b_free!1703 () Bool)

(declare-fun b_next!1703 () Bool)

(assert (=> b!52822 (= b_free!1703 (not b_next!1703))))

(declare-fun tp!34230 () Bool)

(declare-fun b_and!1753 () Bool)

(assert (=> b!52822 (= tp!34230 b_and!1753)))

(declare-fun e!31166 () Bool)

(declare-fun b!52818 () Bool)

(declare-fun e!31164 () Bool)

(declare-fun tp!34229 () Bool)

(declare-datatypes ((List!1102 0))(
  ( (Nil!1096) (Cons!1096 (h!6493 (_ BitVec 16)) (t!17353 List!1102)) )
))
(declare-datatypes ((TokenValue!227 0))(
  ( (FloatLiteralValue!454 (text!2034 List!1102)) (TokenValueExt!226 (__x!1549 Int)) (Broken!1135 (value!9626 List!1102)) (Object!232) (End!227) (Def!227) (Underscore!227) (Match!227) (Else!227) (Error!227) (Case!227) (If!227) (Extends!227) (Abstract!227) (Class!227) (Val!227) (DelimiterValue!454 (del!287 List!1102)) (KeywordValue!233 (value!9627 List!1102)) (CommentValue!454 (value!9628 List!1102)) (WhitespaceValue!454 (value!9629 List!1102)) (IndentationValue!227 (value!9630 List!1102)) (String!1526) (Int32!227) (Broken!1136 (value!9631 List!1102)) (Boolean!228) (Unit!619) (OperatorValue!230 (op!287 List!1102)) (IdentifierValue!454 (value!9632 List!1102)) (IdentifierValue!455 (value!9633 List!1102)) (WhitespaceValue!455 (value!9634 List!1102)) (True!454) (False!454) (Broken!1137 (value!9635 List!1102)) (Broken!1138 (value!9636 List!1102)) (True!455) (RightBrace!227) (RightBracket!227) (Colon!227) (Null!227) (Comma!227) (LeftBracket!227) (False!455) (LeftBrace!227) (ImaginaryLiteralValue!227 (text!2035 List!1102)) (StringLiteralValue!681 (value!9637 List!1102)) (EOFValue!227 (value!9638 List!1102)) (IdentValue!227 (value!9639 List!1102)) (DelimiterValue!455 (value!9640 List!1102)) (DedentValue!227 (value!9641 List!1102)) (NewLineValue!227 (value!9642 List!1102)) (IntegerValue!681 (value!9643 (_ BitVec 32)) (text!2036 List!1102)) (IntegerValue!682 (value!9644 Int) (text!2037 List!1102)) (Times!227) (Or!227) (Equal!227) (Minus!227) (Broken!1139 (value!9645 List!1102)) (And!227) (Div!227) (LessEqual!227) (Mod!227) (Concat!532) (Not!227) (Plus!227) (SpaceValue!227 (value!9646 List!1102)) (IntegerValue!683 (value!9647 Int) (text!2038 List!1102)) (StringLiteralValue!682 (text!2039 List!1102)) (FloatLiteralValue!455 (text!2040 List!1102)) (BytesLiteralValue!227 (value!9648 List!1102)) (CommentValue!455 (value!9649 List!1102)) (StringLiteralValue!683 (value!9650 List!1102)) (ErrorTokenValue!227 (msg!288 List!1102)) )
))
(declare-datatypes ((C!1532 0))(
  ( (C!1533 (val!373 Int)) )
))
(declare-datatypes ((List!1103 0))(
  ( (Nil!1097) (Cons!1097 (h!6494 C!1532) (t!17354 List!1103)) )
))
(declare-datatypes ((IArray!557 0))(
  ( (IArray!558 (innerList!336 List!1103)) )
))
(declare-datatypes ((Conc!278 0))(
  ( (Node!278 (left!829 Conc!278) (right!1159 Conc!278) (csize!786 Int) (cheight!489 Int)) (Leaf!532 (xs!2857 IArray!557) (csize!787 Int)) (Empty!278) )
))
(declare-datatypes ((String!1527 0))(
  ( (String!1528 (value!9651 String)) )
))
(declare-datatypes ((BalanceConc!560 0))(
  ( (BalanceConc!561 (c!16918 Conc!278)) )
))
(declare-datatypes ((Regex!305 0))(
  ( (ElementMatch!305 (c!16919 C!1532)) (Concat!533 (regOne!1122 Regex!305) (regTwo!1122 Regex!305)) (EmptyExpr!305) (Star!305 (reg!634 Regex!305)) (EmptyLang!305) (Union!305 (regOne!1123 Regex!305) (regTwo!1123 Regex!305)) )
))
(declare-datatypes ((TokenValueInjection!278 0))(
  ( (TokenValueInjection!279 (toValue!716 Int) (toChars!575 Int)) )
))
(declare-datatypes ((Rule!274 0))(
  ( (Rule!275 (regex!237 Regex!305) (tag!415 String!1527) (isSeparator!237 Bool) (transformation!237 TokenValueInjection!278)) )
))
(declare-datatypes ((List!1104 0))(
  ( (Nil!1098) (Cons!1098 (h!6495 Rule!274) (t!17355 List!1104)) )
))
(declare-fun rules!1069 () List!1104)

(declare-fun inv!1441 (String!1527) Bool)

(declare-fun inv!1445 (TokenValueInjection!278) Bool)

(assert (=> b!52818 (= e!31166 (and tp!34229 (inv!1441 (tag!415 (h!6495 rules!1069))) (inv!1445 (transformation!237 (h!6495 rules!1069))) e!31164))))

(declare-fun b!52819 () Bool)

(declare-fun res!34254 () Bool)

(declare-fun e!31165 () Bool)

(assert (=> b!52819 (=> (not res!34254) (not e!31165))))

(declare-datatypes ((LexerInterface!129 0))(
  ( (LexerInterfaceExt!126 (__x!1550 Int)) (Lexer!127) )
))
(declare-fun thiss!11059 () LexerInterface!129)

(declare-datatypes ((Token!238 0))(
  ( (Token!239 (value!9652 TokenValue!227) (rule!712 Rule!274) (size!999 Int) (originalCharacters!290 List!1103)) )
))
(declare-datatypes ((List!1105 0))(
  ( (Nil!1099) (Cons!1099 (h!6496 Token!238) (t!17356 List!1105)) )
))
(declare-datatypes ((IArray!559 0))(
  ( (IArray!560 (innerList!337 List!1105)) )
))
(declare-datatypes ((Conc!279 0))(
  ( (Node!279 (left!830 Conc!279) (right!1160 Conc!279) (csize!788 Int) (cheight!490 Int)) (Leaf!533 (xs!2858 IArray!559) (csize!789 Int)) (Empty!279) )
))
(declare-datatypes ((BalanceConc!562 0))(
  ( (BalanceConc!563 (c!16920 Conc!279)) )
))
(declare-fun v!6227 () BalanceConc!562)

(declare-fun rulesProduceEachTokenIndividually!67 (LexerInterface!129 List!1104 BalanceConc!562) Bool)

(assert (=> b!52819 (= res!34254 (rulesProduceEachTokenIndividually!67 thiss!11059 rules!1069 v!6227))))

(declare-fun b!52820 () Bool)

(declare-fun res!34248 () Bool)

(assert (=> b!52820 (=> (not res!34248) (not e!31165))))

(declare-fun from!821 () Int)

(declare-fun lt!9477 () Int)

(assert (=> b!52820 (= res!34248 (< from!821 (- lt!9477 1)))))

(declare-fun b!52821 () Bool)

(declare-fun e!31163 () Bool)

(assert (=> b!52821 (= e!31163 e!31165)))

(declare-fun res!34251 () Bool)

(assert (=> b!52821 (=> (not res!34251) (not e!31165))))

(assert (=> b!52821 (= res!34251 (<= from!821 lt!9477))))

(declare-fun size!1000 (BalanceConc!562) Int)

(assert (=> b!52821 (= lt!9477 (size!1000 v!6227))))

(declare-fun res!34252 () Bool)

(assert (=> start!3998 (=> (not res!34252) (not e!31163))))

(get-info :version)

(assert (=> start!3998 (= res!34252 (and ((_ is Lexer!127) thiss!11059) (>= from!821 0)))))

(assert (=> start!3998 e!31163))

(assert (=> start!3998 true))

(declare-fun e!31168 () Bool)

(declare-fun inv!1446 (BalanceConc!562) Bool)

(assert (=> start!3998 (and (inv!1446 v!6227) e!31168)))

(declare-fun e!31161 () Bool)

(assert (=> start!3998 e!31161))

(assert (=> b!52822 (= e!31164 (and tp!34231 tp!34230))))

(declare-fun b!52823 () Bool)

(declare-fun tp!34232 () Bool)

(assert (=> b!52823 (= e!31161 (and e!31166 tp!34232))))

(declare-fun b!52824 () Bool)

(declare-fun res!34253 () Bool)

(assert (=> b!52824 (=> (not res!34253) (not e!31165))))

(declare-fun isEmpty!223 (List!1104) Bool)

(assert (=> b!52824 (= res!34253 (not (isEmpty!223 rules!1069)))))

(declare-fun b!52825 () Bool)

(declare-fun res!34249 () Bool)

(assert (=> b!52825 (=> (not res!34249) (not e!31165))))

(declare-fun rulesInvariant!123 (LexerInterface!129 List!1104) Bool)

(assert (=> b!52825 (= res!34249 (rulesInvariant!123 thiss!11059 rules!1069))))

(declare-fun b!52826 () Bool)

(declare-fun e!31162 () Bool)

(declare-fun lt!9478 () List!1105)

(declare-fun size!1001 (List!1105) Int)

(assert (=> b!52826 (= e!31162 (< (+ 1 from!821) (size!1001 lt!9478)))))

(declare-fun b!52827 () Bool)

(declare-fun tp!34228 () Bool)

(declare-fun inv!1447 (Conc!279) Bool)

(assert (=> b!52827 (= e!31168 (and (inv!1447 (c!16920 v!6227)) tp!34228))))

(declare-fun b!52828 () Bool)

(assert (=> b!52828 (= e!31165 (not e!31162))))

(declare-fun res!34250 () Bool)

(assert (=> b!52828 (=> (not res!34250) (not e!31162))))

(assert (=> b!52828 (= res!34250 (>= (+ 1 from!821) 0))))

(declare-fun head!388 (List!1105) Token!238)

(declare-fun drop!48 (List!1105 Int) List!1105)

(declare-fun apply!117 (List!1105 Int) Token!238)

(assert (=> b!52828 (= (head!388 (drop!48 lt!9478 from!821)) (apply!117 lt!9478 from!821))))

(declare-datatypes ((Unit!620 0))(
  ( (Unit!621) )
))
(declare-fun lt!9476 () Unit!620)

(declare-fun lemmaDropApply!48 (List!1105 Int) Unit!620)

(assert (=> b!52828 (= lt!9476 (lemmaDropApply!48 lt!9478 from!821))))

(declare-fun list!281 (BalanceConc!562) List!1105)

(assert (=> b!52828 (= lt!9478 (list!281 v!6227))))

(assert (= (and start!3998 res!34252) b!52821))

(assert (= (and b!52821 res!34251) b!52824))

(assert (= (and b!52824 res!34253) b!52825))

(assert (= (and b!52825 res!34249) b!52819))

(assert (= (and b!52819 res!34254) b!52820))

(assert (= (and b!52820 res!34248) b!52828))

(assert (= (and b!52828 res!34250) b!52826))

(assert (= start!3998 b!52827))

(assert (= b!52818 b!52822))

(assert (= b!52823 b!52818))

(assert (= (and start!3998 ((_ is Cons!1098) rules!1069)) b!52823))

(declare-fun m!26946 () Bool)

(assert (=> b!52828 m!26946))

(declare-fun m!26948 () Bool)

(assert (=> b!52828 m!26948))

(declare-fun m!26950 () Bool)

(assert (=> b!52828 m!26950))

(declare-fun m!26952 () Bool)

(assert (=> b!52828 m!26952))

(assert (=> b!52828 m!26952))

(declare-fun m!26954 () Bool)

(assert (=> b!52828 m!26954))

(declare-fun m!26956 () Bool)

(assert (=> b!52826 m!26956))

(declare-fun m!26958 () Bool)

(assert (=> b!52825 m!26958))

(declare-fun m!26960 () Bool)

(assert (=> b!52827 m!26960))

(declare-fun m!26962 () Bool)

(assert (=> b!52819 m!26962))

(declare-fun m!26964 () Bool)

(assert (=> b!52821 m!26964))

(declare-fun m!26966 () Bool)

(assert (=> b!52818 m!26966))

(declare-fun m!26968 () Bool)

(assert (=> b!52818 m!26968))

(declare-fun m!26970 () Bool)

(assert (=> b!52824 m!26970))

(declare-fun m!26972 () Bool)

(assert (=> start!3998 m!26972))

(check-sat (not b!52826) (not b!52823) (not b_next!1701) (not b!52821) (not b_next!1703) b_and!1753 (not b!52825) (not b!52818) (not b!52828) (not b!52819) (not b!52824) (not b!52827) b_and!1751 (not start!3998))
(check-sat b_and!1753 b_and!1751 (not b_next!1701) (not b_next!1703))
(get-model)

(declare-fun d!6502 () Bool)

(assert (=> d!6502 (= (inv!1441 (tag!415 (h!6495 rules!1069))) (= (mod (str.len (value!9651 (tag!415 (h!6495 rules!1069)))) 2) 0))))

(assert (=> b!52818 d!6502))

(declare-fun d!6504 () Bool)

(declare-fun res!34261 () Bool)

(declare-fun e!31171 () Bool)

(assert (=> d!6504 (=> (not res!34261) (not e!31171))))

(declare-fun semiInverseModEq!22 (Int Int) Bool)

(assert (=> d!6504 (= res!34261 (semiInverseModEq!22 (toChars!575 (transformation!237 (h!6495 rules!1069))) (toValue!716 (transformation!237 (h!6495 rules!1069)))))))

(assert (=> d!6504 (= (inv!1445 (transformation!237 (h!6495 rules!1069))) e!31171)))

(declare-fun b!52831 () Bool)

(declare-fun equivClasses!18 (Int Int) Bool)

(assert (=> b!52831 (= e!31171 (equivClasses!18 (toChars!575 (transformation!237 (h!6495 rules!1069))) (toValue!716 (transformation!237 (h!6495 rules!1069)))))))

(assert (= (and d!6504 res!34261) b!52831))

(declare-fun m!26974 () Bool)

(assert (=> d!6504 m!26974))

(declare-fun m!26976 () Bool)

(assert (=> b!52831 m!26976))

(assert (=> b!52818 d!6504))

(declare-fun d!6506 () Bool)

(assert (=> d!6506 (= (isEmpty!223 rules!1069) ((_ is Nil!1098) rules!1069))))

(assert (=> b!52824 d!6506))

(declare-fun b!52851 () Bool)

(declare-fun e!31186 () Bool)

(assert (=> b!52851 (= e!31186 true)))

(declare-fun b!52850 () Bool)

(declare-fun e!31185 () Bool)

(assert (=> b!52850 (= e!31185 e!31186)))

(declare-fun b!52849 () Bool)

(declare-fun e!31184 () Bool)

(assert (=> b!52849 (= e!31184 e!31185)))

(declare-fun d!6510 () Bool)

(assert (=> d!6510 e!31184))

(assert (= b!52850 b!52851))

(assert (= b!52849 b!52850))

(assert (= (and d!6510 ((_ is Cons!1098) rules!1069)) b!52849))

(declare-fun order!327 () Int)

(declare-fun order!325 () Int)

(declare-fun lambda!1074 () Int)

(declare-fun dynLambda!189 (Int Int) Int)

(declare-fun dynLambda!190 (Int Int) Int)

(assert (=> b!52851 (< (dynLambda!189 order!325 (toValue!716 (transformation!237 (h!6495 rules!1069)))) (dynLambda!190 order!327 lambda!1074))))

(declare-fun order!329 () Int)

(declare-fun dynLambda!191 (Int Int) Int)

(assert (=> b!52851 (< (dynLambda!191 order!329 (toChars!575 (transformation!237 (h!6495 rules!1069)))) (dynLambda!190 order!327 lambda!1074))))

(assert (=> d!6510 true))

(declare-fun e!31177 () Bool)

(assert (=> d!6510 e!31177))

(declare-fun res!34264 () Bool)

(assert (=> d!6510 (=> (not res!34264) (not e!31177))))

(declare-fun lt!9486 () Bool)

(declare-fun forall!127 (List!1105 Int) Bool)

(assert (=> d!6510 (= res!34264 (= lt!9486 (forall!127 (list!281 v!6227) lambda!1074)))))

(declare-fun forall!128 (BalanceConc!562 Int) Bool)

(assert (=> d!6510 (= lt!9486 (forall!128 v!6227 lambda!1074))))

(assert (=> d!6510 (not (isEmpty!223 rules!1069))))

(assert (=> d!6510 (= (rulesProduceEachTokenIndividually!67 thiss!11059 rules!1069 v!6227) lt!9486)))

(declare-fun b!52840 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!40 (LexerInterface!129 List!1104 List!1105) Bool)

(assert (=> b!52840 (= e!31177 (= lt!9486 (rulesProduceEachTokenIndividuallyList!40 thiss!11059 rules!1069 (list!281 v!6227))))))

(assert (= (and d!6510 res!34264) b!52840))

(assert (=> d!6510 m!26946))

(assert (=> d!6510 m!26946))

(declare-fun m!26980 () Bool)

(assert (=> d!6510 m!26980))

(declare-fun m!26982 () Bool)

(assert (=> d!6510 m!26982))

(assert (=> d!6510 m!26970))

(assert (=> b!52840 m!26946))

(assert (=> b!52840 m!26946))

(declare-fun m!26984 () Bool)

(assert (=> b!52840 m!26984))

(assert (=> b!52819 d!6510))

(declare-fun d!6514 () Bool)

(declare-fun res!34267 () Bool)

(declare-fun e!31189 () Bool)

(assert (=> d!6514 (=> (not res!34267) (not e!31189))))

(declare-fun rulesValid!32 (LexerInterface!129 List!1104) Bool)

(assert (=> d!6514 (= res!34267 (rulesValid!32 thiss!11059 rules!1069))))

(assert (=> d!6514 (= (rulesInvariant!123 thiss!11059 rules!1069) e!31189)))

(declare-fun b!52856 () Bool)

(declare-datatypes ((List!1106 0))(
  ( (Nil!1100) (Cons!1100 (h!6497 String!1527) (t!17365 List!1106)) )
))
(declare-fun noDuplicateTag!32 (LexerInterface!129 List!1104 List!1106) Bool)

(assert (=> b!52856 (= e!31189 (noDuplicateTag!32 thiss!11059 rules!1069 Nil!1100))))

(assert (= (and d!6514 res!34267) b!52856))

(declare-fun m!26986 () Bool)

(assert (=> d!6514 m!26986))

(declare-fun m!26988 () Bool)

(assert (=> b!52856 m!26988))

(assert (=> b!52825 d!6514))

(declare-fun d!6516 () Bool)

(declare-fun lt!9489 () Int)

(assert (=> d!6516 (>= lt!9489 0)))

(declare-fun e!31192 () Int)

(assert (=> d!6516 (= lt!9489 e!31192)))

(declare-fun c!16926 () Bool)

(assert (=> d!6516 (= c!16926 ((_ is Nil!1099) lt!9478))))

(assert (=> d!6516 (= (size!1001 lt!9478) lt!9489)))

(declare-fun b!52861 () Bool)

(assert (=> b!52861 (= e!31192 0)))

(declare-fun b!52862 () Bool)

(assert (=> b!52862 (= e!31192 (+ 1 (size!1001 (t!17356 lt!9478))))))

(assert (= (and d!6516 c!16926) b!52861))

(assert (= (and d!6516 (not c!16926)) b!52862))

(declare-fun m!26990 () Bool)

(assert (=> b!52862 m!26990))

(assert (=> b!52826 d!6516))

(declare-fun d!6518 () Bool)

(declare-fun lt!9492 () Int)

(assert (=> d!6518 (= lt!9492 (size!1001 (list!281 v!6227)))))

(declare-fun size!1002 (Conc!279) Int)

(assert (=> d!6518 (= lt!9492 (size!1002 (c!16920 v!6227)))))

(assert (=> d!6518 (= (size!1000 v!6227) lt!9492)))

(declare-fun bs!6707 () Bool)

(assert (= bs!6707 d!6518))

(assert (=> bs!6707 m!26946))

(assert (=> bs!6707 m!26946))

(declare-fun m!26992 () Bool)

(assert (=> bs!6707 m!26992))

(declare-fun m!26994 () Bool)

(assert (=> bs!6707 m!26994))

(assert (=> b!52821 d!6518))

(declare-fun d!6520 () Bool)

(declare-fun c!16929 () Bool)

(assert (=> d!6520 (= c!16929 ((_ is Node!279) (c!16920 v!6227)))))

(declare-fun e!31209 () Bool)

(assert (=> d!6520 (= (inv!1447 (c!16920 v!6227)) e!31209)))

(declare-fun b!52885 () Bool)

(declare-fun inv!1448 (Conc!279) Bool)

(assert (=> b!52885 (= e!31209 (inv!1448 (c!16920 v!6227)))))

(declare-fun b!52886 () Bool)

(declare-fun e!31210 () Bool)

(assert (=> b!52886 (= e!31209 e!31210)))

(declare-fun res!34273 () Bool)

(assert (=> b!52886 (= res!34273 (not ((_ is Leaf!533) (c!16920 v!6227))))))

(assert (=> b!52886 (=> res!34273 e!31210)))

(declare-fun b!52887 () Bool)

(declare-fun inv!1449 (Conc!279) Bool)

(assert (=> b!52887 (= e!31210 (inv!1449 (c!16920 v!6227)))))

(assert (= (and d!6520 c!16929) b!52885))

(assert (= (and d!6520 (not c!16929)) b!52886))

(assert (= (and b!52886 (not res!34273)) b!52887))

(declare-fun m!26996 () Bool)

(assert (=> b!52885 m!26996))

(declare-fun m!26998 () Bool)

(assert (=> b!52887 m!26998))

(assert (=> b!52827 d!6520))

(declare-fun d!6522 () Bool)

(declare-fun isBalanced!39 (Conc!279) Bool)

(assert (=> d!6522 (= (inv!1446 v!6227) (isBalanced!39 (c!16920 v!6227)))))

(declare-fun bs!6708 () Bool)

(assert (= bs!6708 d!6522))

(declare-fun m!27006 () Bool)

(assert (=> bs!6708 m!27006))

(assert (=> start!3998 d!6522))

(declare-fun d!6526 () Bool)

(assert (=> d!6526 (= (head!388 (drop!48 lt!9478 from!821)) (apply!117 lt!9478 from!821))))

(declare-fun lt!9496 () Unit!620)

(declare-fun choose!1190 (List!1105 Int) Unit!620)

(assert (=> d!6526 (= lt!9496 (choose!1190 lt!9478 from!821))))

(declare-fun e!31216 () Bool)

(assert (=> d!6526 e!31216))

(declare-fun res!34279 () Bool)

(assert (=> d!6526 (=> (not res!34279) (not e!31216))))

(assert (=> d!6526 (= res!34279 (>= from!821 0))))

(assert (=> d!6526 (= (lemmaDropApply!48 lt!9478 from!821) lt!9496)))

(declare-fun b!52893 () Bool)

(assert (=> b!52893 (= e!31216 (< from!821 (size!1001 lt!9478)))))

(assert (= (and d!6526 res!34279) b!52893))

(assert (=> d!6526 m!26952))

(assert (=> d!6526 m!26952))

(assert (=> d!6526 m!26954))

(assert (=> d!6526 m!26950))

(declare-fun m!27012 () Bool)

(assert (=> d!6526 m!27012))

(assert (=> b!52893 m!26956))

(assert (=> b!52828 d!6526))

(declare-fun d!6532 () Bool)

(assert (=> d!6532 (= (head!388 (drop!48 lt!9478 from!821)) (h!6496 (drop!48 lt!9478 from!821)))))

(assert (=> b!52828 d!6532))

(declare-fun d!6534 () Bool)

(declare-fun list!282 (Conc!279) List!1105)

(assert (=> d!6534 (= (list!281 v!6227) (list!282 (c!16920 v!6227)))))

(declare-fun bs!6709 () Bool)

(assert (= bs!6709 d!6534))

(declare-fun m!27014 () Bool)

(assert (=> bs!6709 m!27014))

(assert (=> b!52828 d!6534))

(declare-fun b!52921 () Bool)

(declare-fun e!31237 () Int)

(declare-fun call!3379 () Int)

(assert (=> b!52921 (= e!31237 (- call!3379 from!821))))

(declare-fun b!52922 () Bool)

(assert (=> b!52922 (= e!31237 0)))

(declare-fun b!52923 () Bool)

(declare-fun e!31233 () Bool)

(declare-fun lt!9502 () List!1105)

(declare-fun e!31236 () Int)

(assert (=> b!52923 (= e!31233 (= (size!1001 lt!9502) e!31236))))

(declare-fun c!16944 () Bool)

(assert (=> b!52923 (= c!16944 (<= from!821 0))))

(declare-fun bm!3374 () Bool)

(assert (=> bm!3374 (= call!3379 (size!1001 lt!9478))))

(declare-fun b!52924 () Bool)

(declare-fun e!31234 () List!1105)

(declare-fun e!31235 () List!1105)

(assert (=> b!52924 (= e!31234 e!31235)))

(declare-fun c!16942 () Bool)

(assert (=> b!52924 (= c!16942 (<= from!821 0))))

(declare-fun b!52925 () Bool)

(assert (=> b!52925 (= e!31235 lt!9478)))

(declare-fun b!52926 () Bool)

(assert (=> b!52926 (= e!31234 Nil!1099)))

(declare-fun d!6536 () Bool)

(assert (=> d!6536 e!31233))

(declare-fun res!34285 () Bool)

(assert (=> d!6536 (=> (not res!34285) (not e!31233))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!31 (List!1105) (InoxSet Token!238))

(assert (=> d!6536 (= res!34285 (= ((_ map implies) (content!31 lt!9502) (content!31 lt!9478)) ((as const (InoxSet Token!238)) true)))))

(assert (=> d!6536 (= lt!9502 e!31234)))

(declare-fun c!16941 () Bool)

(assert (=> d!6536 (= c!16941 ((_ is Nil!1099) lt!9478))))

(assert (=> d!6536 (= (drop!48 lt!9478 from!821) lt!9502)))

(declare-fun b!52927 () Bool)

(assert (=> b!52927 (= e!31235 (drop!48 (t!17356 lt!9478) (- from!821 1)))))

(declare-fun b!52928 () Bool)

(assert (=> b!52928 (= e!31236 call!3379)))

(declare-fun b!52929 () Bool)

(assert (=> b!52929 (= e!31236 e!31237)))

(declare-fun c!16943 () Bool)

(assert (=> b!52929 (= c!16943 (>= from!821 call!3379))))

(assert (= (and d!6536 c!16941) b!52926))

(assert (= (and d!6536 (not c!16941)) b!52924))

(assert (= (and b!52924 c!16942) b!52925))

(assert (= (and b!52924 (not c!16942)) b!52927))

(assert (= (and d!6536 res!34285) b!52923))

(assert (= (and b!52923 c!16944) b!52928))

(assert (= (and b!52923 (not c!16944)) b!52929))

(assert (= (and b!52929 c!16943) b!52922))

(assert (= (and b!52929 (not c!16943)) b!52921))

(assert (= (or b!52928 b!52929 b!52921) bm!3374))

(declare-fun m!27026 () Bool)

(assert (=> b!52923 m!27026))

(assert (=> bm!3374 m!26956))

(declare-fun m!27028 () Bool)

(assert (=> d!6536 m!27028))

(declare-fun m!27030 () Bool)

(assert (=> d!6536 m!27030))

(declare-fun m!27032 () Bool)

(assert (=> b!52927 m!27032))

(assert (=> b!52828 d!6536))

(declare-fun d!6544 () Bool)

(declare-fun lt!9505 () Token!238)

(declare-fun contains!131 (List!1105 Token!238) Bool)

(assert (=> d!6544 (contains!131 lt!9478 lt!9505)))

(declare-fun e!31246 () Token!238)

(assert (=> d!6544 (= lt!9505 e!31246)))

(declare-fun c!16947 () Bool)

(assert (=> d!6544 (= c!16947 (= from!821 0))))

(declare-fun e!31245 () Bool)

(assert (=> d!6544 e!31245))

(declare-fun res!34291 () Bool)

(assert (=> d!6544 (=> (not res!34291) (not e!31245))))

(assert (=> d!6544 (= res!34291 (<= 0 from!821))))

(assert (=> d!6544 (= (apply!117 lt!9478 from!821) lt!9505)))

(declare-fun b!52939 () Bool)

(assert (=> b!52939 (= e!31245 (< from!821 (size!1001 lt!9478)))))

(declare-fun b!52940 () Bool)

(assert (=> b!52940 (= e!31246 (head!388 lt!9478))))

(declare-fun b!52941 () Bool)

(declare-fun tail!72 (List!1105) List!1105)

(assert (=> b!52941 (= e!31246 (apply!117 (tail!72 lt!9478) (- from!821 1)))))

(assert (= (and d!6544 res!34291) b!52939))

(assert (= (and d!6544 c!16947) b!52940))

(assert (= (and d!6544 (not c!16947)) b!52941))

(declare-fun m!27038 () Bool)

(assert (=> d!6544 m!27038))

(assert (=> b!52939 m!26956))

(declare-fun m!27040 () Bool)

(assert (=> b!52940 m!27040))

(declare-fun m!27042 () Bool)

(assert (=> b!52941 m!27042))

(assert (=> b!52941 m!27042))

(declare-fun m!27044 () Bool)

(assert (=> b!52941 m!27044))

(assert (=> b!52828 d!6544))

(declare-fun b!52971 () Bool)

(declare-fun e!31259 () Bool)

(declare-fun tp!34247 () Bool)

(declare-fun tp!34244 () Bool)

(assert (=> b!52971 (= e!31259 (and tp!34247 tp!34244))))

(declare-fun b!52972 () Bool)

(declare-fun tp!34245 () Bool)

(assert (=> b!52972 (= e!31259 tp!34245)))

(declare-fun b!52970 () Bool)

(declare-fun tp_is_empty!543 () Bool)

(assert (=> b!52970 (= e!31259 tp_is_empty!543)))

(assert (=> b!52818 (= tp!34229 e!31259)))

(declare-fun b!52973 () Bool)

(declare-fun tp!34243 () Bool)

(declare-fun tp!34246 () Bool)

(assert (=> b!52973 (= e!31259 (and tp!34243 tp!34246))))

(assert (= (and b!52818 ((_ is ElementMatch!305) (regex!237 (h!6495 rules!1069)))) b!52970))

(assert (= (and b!52818 ((_ is Concat!533) (regex!237 (h!6495 rules!1069)))) b!52971))

(assert (= (and b!52818 ((_ is Star!305) (regex!237 (h!6495 rules!1069)))) b!52972))

(assert (= (and b!52818 ((_ is Union!305) (regex!237 (h!6495 rules!1069)))) b!52973))

(declare-fun e!31264 () Bool)

(declare-fun b!52982 () Bool)

(declare-fun tp!34254 () Bool)

(declare-fun tp!34255 () Bool)

(assert (=> b!52982 (= e!31264 (and (inv!1447 (left!830 (c!16920 v!6227))) tp!34255 (inv!1447 (right!1160 (c!16920 v!6227))) tp!34254))))

(declare-fun b!52984 () Bool)

(declare-fun e!31265 () Bool)

(declare-fun tp!34256 () Bool)

(assert (=> b!52984 (= e!31265 tp!34256)))

(declare-fun b!52983 () Bool)

(declare-fun inv!1452 (IArray!559) Bool)

(assert (=> b!52983 (= e!31264 (and (inv!1452 (xs!2858 (c!16920 v!6227))) e!31265))))

(assert (=> b!52827 (= tp!34228 (and (inv!1447 (c!16920 v!6227)) e!31264))))

(assert (= (and b!52827 ((_ is Node!279) (c!16920 v!6227))) b!52982))

(assert (= b!52983 b!52984))

(assert (= (and b!52827 ((_ is Leaf!533) (c!16920 v!6227))) b!52983))

(declare-fun m!27046 () Bool)

(assert (=> b!52982 m!27046))

(declare-fun m!27048 () Bool)

(assert (=> b!52982 m!27048))

(declare-fun m!27050 () Bool)

(assert (=> b!52983 m!27050))

(assert (=> b!52827 m!26960))

(declare-fun b!53004 () Bool)

(declare-fun b_free!1705 () Bool)

(declare-fun b_next!1705 () Bool)

(assert (=> b!53004 (= b_free!1705 (not b_next!1705))))

(declare-fun tp!34265 () Bool)

(declare-fun b_and!1755 () Bool)

(assert (=> b!53004 (= tp!34265 b_and!1755)))

(declare-fun b_free!1707 () Bool)

(declare-fun b_next!1707 () Bool)

(assert (=> b!53004 (= b_free!1707 (not b_next!1707))))

(declare-fun tp!34268 () Bool)

(declare-fun b_and!1757 () Bool)

(assert (=> b!53004 (= tp!34268 b_and!1757)))

(declare-fun e!31281 () Bool)

(assert (=> b!53004 (= e!31281 (and tp!34265 tp!34268))))

(declare-fun tp!34267 () Bool)

(declare-fun b!53003 () Bool)

(declare-fun e!31280 () Bool)

(assert (=> b!53003 (= e!31280 (and tp!34267 (inv!1441 (tag!415 (h!6495 (t!17355 rules!1069)))) (inv!1445 (transformation!237 (h!6495 (t!17355 rules!1069)))) e!31281))))

(declare-fun b!53002 () Bool)

(declare-fun e!31279 () Bool)

(declare-fun tp!34266 () Bool)

(assert (=> b!53002 (= e!31279 (and e!31280 tp!34266))))

(assert (=> b!52823 (= tp!34232 e!31279)))

(assert (= b!53003 b!53004))

(assert (= b!53002 b!53003))

(assert (= (and b!52823 ((_ is Cons!1098) (t!17355 rules!1069))) b!53002))

(declare-fun m!27060 () Bool)

(assert (=> b!53003 m!27060))

(declare-fun m!27062 () Bool)

(assert (=> b!53003 m!27062))

(check-sat (not d!6514) (not b!52856) (not b!52941) (not b!52862) (not d!6534) (not d!6544) (not bm!3374) tp_is_empty!543 (not b!52983) (not b_next!1707) b_and!1755 (not b!52940) (not d!6518) (not d!6536) (not b!52973) (not b_next!1701) (not b!52984) (not b!53002) (not d!6504) (not b!52939) (not b!52831) (not b!52971) (not b!52840) (not b_next!1703) (not d!6522) (not d!6526) (not b!52927) b_and!1753 (not b!52887) b_and!1751 (not d!6510) (not b!52923) (not b!53003) (not b!52972) (not b!52827) (not b!52849) (not b!52982) (not b!52893) b_and!1757 (not b_next!1705) (not b!52885))
(check-sat (not b_next!1701) (not b_next!1703) b_and!1753 b_and!1751 (not b_next!1707) b_and!1755 b_and!1757 (not b_next!1705))
