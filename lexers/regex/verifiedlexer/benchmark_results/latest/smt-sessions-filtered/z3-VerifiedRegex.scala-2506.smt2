; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132600 () Bool)

(assert start!132600)

(declare-fun e!914753 () Bool)

(declare-fun tp!406133 () Bool)

(declare-fun b!1432995 () Bool)

(declare-datatypes ((C!8028 0))(
  ( (C!8029 (val!4584 Int)) )
))
(declare-datatypes ((List!14946 0))(
  ( (Nil!14880) (Cons!14880 (h!20281 C!8028) (t!127173 List!14946)) )
))
(declare-datatypes ((IArray!10101 0))(
  ( (IArray!10102 (innerList!5108 List!14946)) )
))
(declare-datatypes ((Conc!5048 0))(
  ( (Node!5048 (left!12680 Conc!5048) (right!13010 Conc!5048) (csize!10326 Int) (cheight!5259 Int)) (Leaf!7555 (xs!7781 IArray!10101) (csize!10327 Int)) (Empty!5048) )
))
(declare-datatypes ((BalanceConc!10036 0))(
  ( (BalanceConc!10037 (c!235522 Conc!5048)) )
))
(declare-datatypes ((List!14947 0))(
  ( (Nil!14881) (Cons!14881 (h!20282 (_ BitVec 16)) (t!127174 List!14947)) )
))
(declare-datatypes ((TokenValue!2701 0))(
  ( (FloatLiteralValue!5402 (text!19352 List!14947)) (TokenValueExt!2700 (__x!9200 Int)) (Broken!13505 (value!84035 List!14947)) (Object!2766) (End!2701) (Def!2701) (Underscore!2701) (Match!2701) (Else!2701) (Error!2701) (Case!2701) (If!2701) (Extends!2701) (Abstract!2701) (Class!2701) (Val!2701) (DelimiterValue!5402 (del!2761 List!14947)) (KeywordValue!2707 (value!84036 List!14947)) (CommentValue!5402 (value!84037 List!14947)) (WhitespaceValue!5402 (value!84038 List!14947)) (IndentationValue!2701 (value!84039 List!14947)) (String!17760) (Int32!2701) (Broken!13506 (value!84040 List!14947)) (Boolean!2702) (Unit!22532) (OperatorValue!2704 (op!2761 List!14947)) (IdentifierValue!5402 (value!84041 List!14947)) (IdentifierValue!5403 (value!84042 List!14947)) (WhitespaceValue!5403 (value!84043 List!14947)) (True!5402) (False!5402) (Broken!13507 (value!84044 List!14947)) (Broken!13508 (value!84045 List!14947)) (True!5403) (RightBrace!2701) (RightBracket!2701) (Colon!2701) (Null!2701) (Comma!2701) (LeftBracket!2701) (False!5403) (LeftBrace!2701) (ImaginaryLiteralValue!2701 (text!19353 List!14947)) (StringLiteralValue!8103 (value!84046 List!14947)) (EOFValue!2701 (value!84047 List!14947)) (IdentValue!2701 (value!84048 List!14947)) (DelimiterValue!5403 (value!84049 List!14947)) (DedentValue!2701 (value!84050 List!14947)) (NewLineValue!2701 (value!84051 List!14947)) (IntegerValue!8103 (value!84052 (_ BitVec 32)) (text!19354 List!14947)) (IntegerValue!8104 (value!84053 Int) (text!19355 List!14947)) (Times!2701) (Or!2701) (Equal!2701) (Minus!2701) (Broken!13509 (value!84054 List!14947)) (And!2701) (Div!2701) (LessEqual!2701) (Mod!2701) (Concat!6626) (Not!2701) (Plus!2701) (SpaceValue!2701 (value!84055 List!14947)) (IntegerValue!8105 (value!84056 Int) (text!19356 List!14947)) (StringLiteralValue!8104 (text!19357 List!14947)) (FloatLiteralValue!5403 (text!19358 List!14947)) (BytesLiteralValue!2701 (value!84057 List!14947)) (CommentValue!5403 (value!84058 List!14947)) (StringLiteralValue!8105 (value!84059 List!14947)) (ErrorTokenValue!2701 (msg!2762 List!14947)) )
))
(declare-datatypes ((Regex!3925 0))(
  ( (ElementMatch!3925 (c!235523 C!8028)) (Concat!6627 (regOne!8362 Regex!3925) (regTwo!8362 Regex!3925)) (EmptyExpr!3925) (Star!3925 (reg!4254 Regex!3925)) (EmptyLang!3925) (Union!3925 (regOne!8363 Regex!3925) (regTwo!8363 Regex!3925)) )
))
(declare-datatypes ((String!17761 0))(
  ( (String!17762 (value!84060 String)) )
))
(declare-datatypes ((TokenValueInjection!5062 0))(
  ( (TokenValueInjection!5063 (toValue!3914 Int) (toChars!3773 Int)) )
))
(declare-datatypes ((Rule!5022 0))(
  ( (Rule!5023 (regex!2611 Regex!3925) (tag!2873 String!17761) (isSeparator!2611 Bool) (transformation!2611 TokenValueInjection!5062)) )
))
(declare-datatypes ((Token!4884 0))(
  ( (Token!4885 (value!84061 TokenValue!2701) (rule!4374 Rule!5022) (size!12207 Int) (originalCharacters!3473 List!14946)) )
))
(declare-datatypes ((List!14948 0))(
  ( (Nil!14882) (Cons!14882 (h!20283 Token!4884) (t!127175 List!14948)) )
))
(declare-datatypes ((IArray!10103 0))(
  ( (IArray!10104 (innerList!5109 List!14948)) )
))
(declare-datatypes ((Conc!5049 0))(
  ( (Node!5049 (left!12681 Conc!5049) (right!13011 Conc!5049) (csize!10328 Int) (cheight!5260 Int)) (Leaf!7556 (xs!7782 IArray!10103) (csize!10329 Int)) (Empty!5049) )
))
(declare-datatypes ((BalanceConc!10038 0))(
  ( (BalanceConc!10039 (c!235524 Conc!5049)) )
))
(declare-datatypes ((List!14949 0))(
  ( (Nil!14883) (Cons!14883 (h!20284 Rule!5022) (t!127176 List!14949)) )
))
(declare-datatypes ((PrintableTokens!1004 0))(
  ( (PrintableTokens!1005 (rules!11360 List!14949) (tokens!1964 BalanceConc!10038)) )
))
(declare-fun other!32 () PrintableTokens!1004)

(declare-fun e!914745 () Bool)

(declare-fun inv!19758 (BalanceConc!10038) Bool)

(assert (=> b!1432995 (= e!914753 (and tp!406133 (inv!19758 (tokens!1964 other!32)) e!914745))))

(declare-fun b!1432996 () Bool)

(declare-fun e!914749 () Bool)

(declare-fun e!914752 () Bool)

(assert (=> b!1432996 (= e!914749 (not e!914752))))

(declare-fun res!648775 () Bool)

(assert (=> b!1432996 (=> res!648775 e!914752)))

(declare-fun lt!487579 () Token!4884)

(declare-fun thiss!10022 () PrintableTokens!1004)

(declare-fun lt!487563 () Token!4884)

(declare-datatypes ((LexerInterface!2275 0))(
  ( (LexerInterfaceExt!2272 (__x!9201 Int)) (Lexer!2273) )
))
(declare-fun separableTokensPredicate!510 (LexerInterface!2275 Token!4884 Token!4884 List!14949) Bool)

(assert (=> b!1432996 (= res!648775 (not (separableTokensPredicate!510 Lexer!2273 lt!487579 lt!487563 (rules!11360 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1208 (LexerInterface!2275 List!14949 Token!4884) Bool)

(assert (=> b!1432996 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) lt!487563)))

(declare-fun lt!487565 () List!14948)

(declare-datatypes ((Unit!22533 0))(
  ( (Unit!22534) )
))
(declare-fun lt!487574 () Unit!22533)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!393 (LexerInterface!2275 List!14949 List!14948 Token!4884) Unit!22533)

(assert (=> b!1432996 (= lt!487574 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!393 Lexer!2273 (rules!11360 thiss!10022) lt!487565 lt!487563))))

(declare-fun head!2879 (BalanceConc!10038) Token!4884)

(assert (=> b!1432996 (= lt!487563 (head!2879 (tokens!1964 other!32)))))

(declare-fun list!5912 (BalanceConc!10038) List!14948)

(assert (=> b!1432996 (= lt!487565 (list!5912 (tokens!1964 other!32)))))

(assert (=> b!1432996 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) lt!487579)))

(declare-fun lt!487567 () List!14948)

(declare-fun lt!487568 () Unit!22533)

(assert (=> b!1432996 (= lt!487568 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!393 Lexer!2273 (rules!11360 thiss!10022) lt!487567 lt!487579))))

(declare-fun last!157 (BalanceConc!10038) Token!4884)

(assert (=> b!1432996 (= lt!487579 (last!157 (tokens!1964 thiss!10022)))))

(assert (=> b!1432996 (= lt!487567 (list!5912 (tokens!1964 thiss!10022)))))

(declare-fun e!914746 () Bool)

(declare-fun tp!406135 () Bool)

(declare-fun e!914747 () Bool)

(declare-fun b!1432997 () Bool)

(assert (=> b!1432997 (= e!914746 (and tp!406135 (inv!19758 (tokens!1964 thiss!10022)) e!914747))))

(declare-fun b!1432998 () Bool)

(declare-fun res!648780 () Bool)

(declare-fun e!914751 () Bool)

(assert (=> b!1432998 (=> res!648780 e!914751)))

(declare-datatypes ((Option!2837 0))(
  ( (None!2836) (Some!2836 (v!22322 PrintableTokens!1004)) )
))
(declare-fun lt!487571 () Option!2837)

(declare-fun get!4551 (Option!2837) PrintableTokens!1004)

(assert (=> b!1432998 (= res!648780 (not (= (rules!11360 (get!4551 lt!487571)) (rules!11360 thiss!10022))))))

(declare-fun b!1432999 () Bool)

(declare-fun e!914750 () Bool)

(assert (=> b!1432999 (= e!914750 e!914751)))

(declare-fun res!648781 () Bool)

(assert (=> b!1432999 (=> res!648781 e!914751)))

(declare-fun isEmpty!9234 (Option!2837) Bool)

(assert (=> b!1432999 (= res!648781 (isEmpty!9234 lt!487571))))

(declare-fun lt!487569 () PrintableTokens!1004)

(assert (=> b!1432999 (= lt!487571 (Some!2836 lt!487569))))

(declare-fun lt!487573 () BalanceConc!10038)

(declare-fun print!1056 (PrintableTokens!1004) BalanceConc!10036)

(declare-fun print!1057 (LexerInterface!2275 BalanceConc!10038) BalanceConc!10036)

(assert (=> b!1432999 (= (print!1056 lt!487569) (print!1057 Lexer!2273 lt!487573))))

(declare-fun lt!487575 () Unit!22533)

(declare-fun theoremInvertabilityWhenTokenListSeparable!65 (LexerInterface!2275 List!14949 List!14948) Unit!22533)

(assert (=> b!1432999 (= lt!487575 (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 thiss!10022) (list!5912 lt!487573)))))

(assert (=> b!1432999 (= lt!487569 (PrintableTokens!1005 (rules!11360 thiss!10022) lt!487573))))

(assert (=> b!1432999 (= (print!1056 other!32) (print!1057 Lexer!2273 (tokens!1964 other!32)))))

(declare-fun lt!487566 () Unit!22533)

(assert (=> b!1432999 (= lt!487566 (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 other!32) lt!487565))))

(assert (=> b!1432999 (= (print!1056 thiss!10022) (print!1057 Lexer!2273 (tokens!1964 thiss!10022)))))

(declare-fun lt!487564 () Unit!22533)

(assert (=> b!1432999 (= lt!487564 (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 thiss!10022) lt!487567))))

(declare-fun lt!487572 () List!14948)

(declare-fun printList!703 (LexerInterface!2275 List!14948) List!14946)

(declare-fun ++!3980 (List!14946 List!14946) List!14946)

(assert (=> b!1432999 (= (printList!703 Lexer!2273 lt!487572) (++!3980 (printList!703 Lexer!2273 lt!487567) (printList!703 Lexer!2273 lt!487565)))))

(declare-fun lt!487576 () Unit!22533)

(declare-fun lemmaPrintConcatSameAsConcatPrint!64 (LexerInterface!2275 List!14948 List!14948) Unit!22533)

(assert (=> b!1432999 (= lt!487576 (lemmaPrintConcatSameAsConcatPrint!64 Lexer!2273 lt!487567 lt!487565))))

(declare-fun b!1433000 () Bool)

(declare-fun tp!406134 () Bool)

(declare-fun inv!19759 (Conc!5049) Bool)

(assert (=> b!1433000 (= e!914747 (and (inv!19759 (c!235524 (tokens!1964 thiss!10022))) tp!406134))))

(declare-fun b!1433001 () Bool)

(declare-fun e!914744 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!233 (LexerInterface!2275 List!14948 List!14949) Bool)

(assert (=> b!1433001 (= e!914744 (tokensListTwoByTwoPredicateSeparableList!233 Lexer!2273 lt!487572 (rules!11360 thiss!10022)))))

(declare-fun b!1433002 () Bool)

(declare-fun e!914748 () Bool)

(assert (=> b!1433002 (= e!914748 e!914749)))

(declare-fun res!648776 () Bool)

(assert (=> b!1433002 (=> (not res!648776) (not e!914749))))

(declare-fun isEmpty!9235 (BalanceConc!10038) Bool)

(assert (=> b!1433002 (= res!648776 (not (isEmpty!9235 (tokens!1964 other!32))))))

(declare-fun lt!487577 () Unit!22533)

(declare-fun lemmaInvariant!307 (PrintableTokens!1004) Unit!22533)

(assert (=> b!1433002 (= lt!487577 (lemmaInvariant!307 thiss!10022))))

(declare-fun lt!487570 () Unit!22533)

(assert (=> b!1433002 (= lt!487570 (lemmaInvariant!307 other!32))))

(declare-fun res!648777 () Bool)

(assert (=> start!132600 (=> (not res!648777) (not e!914748))))

(assert (=> start!132600 (= res!648777 (= (rules!11360 thiss!10022) (rules!11360 other!32)))))

(assert (=> start!132600 e!914748))

(declare-fun inv!19760 (PrintableTokens!1004) Bool)

(assert (=> start!132600 (and (inv!19760 thiss!10022) e!914746)))

(assert (=> start!132600 (and (inv!19760 other!32) e!914753)))

(declare-fun b!1433003 () Bool)

(assert (=> b!1433003 (= e!914752 e!914750)))

(declare-fun res!648778 () Bool)

(assert (=> b!1433003 (=> res!648778 e!914750)))

(declare-fun tokensListTwoByTwoPredicateSeparable!110 (LexerInterface!2275 BalanceConc!10038 Int List!14949) Bool)

(assert (=> b!1433003 (= res!648778 (not (tokensListTwoByTwoPredicateSeparable!110 Lexer!2273 lt!487573 0 (rules!11360 thiss!10022))))))

(declare-fun ++!3981 (BalanceConc!10038 BalanceConc!10038) BalanceConc!10038)

(assert (=> b!1433003 (= lt!487573 (++!3981 (tokens!1964 thiss!10022) (tokens!1964 other!32)))))

(assert (=> b!1433003 e!914744))

(declare-fun res!648774 () Bool)

(assert (=> b!1433003 (=> (not res!648774) (not e!914744))))

(declare-fun rulesProduceEachTokenIndividuallyList!718 (LexerInterface!2275 List!14949 List!14948) Bool)

(assert (=> b!1433003 (= res!648774 (rulesProduceEachTokenIndividuallyList!718 Lexer!2273 (rules!11360 thiss!10022) lt!487572))))

(declare-fun ++!3982 (List!14948 List!14948) List!14948)

(assert (=> b!1433003 (= lt!487572 (++!3982 lt!487567 lt!487565))))

(declare-fun lt!487578 () Unit!22533)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!48 (LexerInterface!2275 List!14949 List!14948 List!14948) Unit!22533)

(assert (=> b!1433003 (= lt!487578 (lemmaRulesProduceEachTokenIndividuallyConcat!48 Lexer!2273 (rules!11360 thiss!10022) lt!487567 lt!487565))))

(declare-fun lt!487580 () Unit!22533)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!48 (LexerInterface!2275 List!14948 List!14948 List!14949) Unit!22533)

(assert (=> b!1433003 (= lt!487580 (tokensListTwoByTwoPredicateConcatSeparableTokensList!48 Lexer!2273 lt!487567 lt!487565 (rules!11360 thiss!10022)))))

(declare-fun b!1433004 () Bool)

(declare-fun isDefined!2298 (Option!2837) Bool)

(assert (=> b!1433004 (= e!914751 (isDefined!2298 lt!487571))))

(declare-fun b!1433005 () Bool)

(declare-fun tp!406136 () Bool)

(assert (=> b!1433005 (= e!914745 (and (inv!19759 (c!235524 (tokens!1964 other!32))) tp!406136))))

(declare-fun b!1433006 () Bool)

(declare-fun res!648779 () Bool)

(assert (=> b!1433006 (=> (not res!648779) (not e!914749))))

(assert (=> b!1433006 (= res!648779 (not (isEmpty!9235 (tokens!1964 thiss!10022))))))

(assert (= (and start!132600 res!648777) b!1433002))

(assert (= (and b!1433002 res!648776) b!1433006))

(assert (= (and b!1433006 res!648779) b!1432996))

(assert (= (and b!1432996 (not res!648775)) b!1433003))

(assert (= (and b!1433003 res!648774) b!1433001))

(assert (= (and b!1433003 (not res!648778)) b!1432999))

(assert (= (and b!1432999 (not res!648781)) b!1432998))

(assert (= (and b!1432998 (not res!648780)) b!1433004))

(assert (= b!1432997 b!1433000))

(assert (= start!132600 b!1432997))

(assert (= b!1432995 b!1433005))

(assert (= start!132600 b!1432995))

(declare-fun m!1634025 () Bool)

(assert (=> b!1433004 m!1634025))

(declare-fun m!1634027 () Bool)

(assert (=> b!1432996 m!1634027))

(declare-fun m!1634029 () Bool)

(assert (=> b!1432996 m!1634029))

(declare-fun m!1634031 () Bool)

(assert (=> b!1432996 m!1634031))

(declare-fun m!1634033 () Bool)

(assert (=> b!1432996 m!1634033))

(declare-fun m!1634035 () Bool)

(assert (=> b!1432996 m!1634035))

(declare-fun m!1634037 () Bool)

(assert (=> b!1432996 m!1634037))

(declare-fun m!1634039 () Bool)

(assert (=> b!1432996 m!1634039))

(declare-fun m!1634041 () Bool)

(assert (=> b!1432996 m!1634041))

(declare-fun m!1634043 () Bool)

(assert (=> b!1432996 m!1634043))

(declare-fun m!1634045 () Bool)

(assert (=> b!1433001 m!1634045))

(declare-fun m!1634047 () Bool)

(assert (=> b!1433006 m!1634047))

(declare-fun m!1634049 () Bool)

(assert (=> b!1432999 m!1634049))

(declare-fun m!1634051 () Bool)

(assert (=> b!1432999 m!1634051))

(declare-fun m!1634053 () Bool)

(assert (=> b!1432999 m!1634053))

(declare-fun m!1634055 () Bool)

(assert (=> b!1432999 m!1634055))

(declare-fun m!1634057 () Bool)

(assert (=> b!1432999 m!1634057))

(declare-fun m!1634059 () Bool)

(assert (=> b!1432999 m!1634059))

(assert (=> b!1432999 m!1634051))

(declare-fun m!1634061 () Bool)

(assert (=> b!1432999 m!1634061))

(declare-fun m!1634063 () Bool)

(assert (=> b!1432999 m!1634063))

(declare-fun m!1634065 () Bool)

(assert (=> b!1432999 m!1634065))

(assert (=> b!1432999 m!1634053))

(declare-fun m!1634067 () Bool)

(assert (=> b!1432999 m!1634067))

(declare-fun m!1634069 () Bool)

(assert (=> b!1432999 m!1634069))

(declare-fun m!1634071 () Bool)

(assert (=> b!1432999 m!1634071))

(assert (=> b!1432999 m!1634057))

(declare-fun m!1634073 () Bool)

(assert (=> b!1432999 m!1634073))

(declare-fun m!1634075 () Bool)

(assert (=> b!1432999 m!1634075))

(declare-fun m!1634077 () Bool)

(assert (=> b!1432999 m!1634077))

(declare-fun m!1634079 () Bool)

(assert (=> b!1432999 m!1634079))

(declare-fun m!1634081 () Bool)

(assert (=> b!1432995 m!1634081))

(declare-fun m!1634083 () Bool)

(assert (=> b!1433000 m!1634083))

(declare-fun m!1634085 () Bool)

(assert (=> b!1433002 m!1634085))

(declare-fun m!1634087 () Bool)

(assert (=> b!1433002 m!1634087))

(declare-fun m!1634089 () Bool)

(assert (=> b!1433002 m!1634089))

(declare-fun m!1634091 () Bool)

(assert (=> b!1432998 m!1634091))

(declare-fun m!1634093 () Bool)

(assert (=> b!1433005 m!1634093))

(declare-fun m!1634095 () Bool)

(assert (=> start!132600 m!1634095))

(declare-fun m!1634097 () Bool)

(assert (=> start!132600 m!1634097))

(declare-fun m!1634099 () Bool)

(assert (=> b!1432997 m!1634099))

(declare-fun m!1634101 () Bool)

(assert (=> b!1433003 m!1634101))

(declare-fun m!1634103 () Bool)

(assert (=> b!1433003 m!1634103))

(declare-fun m!1634105 () Bool)

(assert (=> b!1433003 m!1634105))

(declare-fun m!1634107 () Bool)

(assert (=> b!1433003 m!1634107))

(declare-fun m!1634109 () Bool)

(assert (=> b!1433003 m!1634109))

(declare-fun m!1634111 () Bool)

(assert (=> b!1433003 m!1634111))

(check-sat (not start!132600) (not b!1432995) (not b!1433002) (not b!1433006) (not b!1433003) (not b!1432998) (not b!1433000) (not b!1433004) (not b!1432997) (not b!1433005) (not b!1432996) (not b!1433001) (not b!1432999))
(check-sat)
(get-model)

(declare-fun d!412405 () Bool)

(declare-fun lt!487583 () Bool)

(declare-fun isEmpty!9239 (List!14948) Bool)

(assert (=> d!412405 (= lt!487583 (isEmpty!9239 (list!5912 (tokens!1964 thiss!10022))))))

(declare-fun isEmpty!9240 (Conc!5049) Bool)

(assert (=> d!412405 (= lt!487583 (isEmpty!9240 (c!235524 (tokens!1964 thiss!10022))))))

(assert (=> d!412405 (= (isEmpty!9235 (tokens!1964 thiss!10022)) lt!487583)))

(declare-fun bs!340897 () Bool)

(assert (= bs!340897 d!412405))

(assert (=> bs!340897 m!1634029))

(assert (=> bs!340897 m!1634029))

(declare-fun m!1634113 () Bool)

(assert (=> bs!340897 m!1634113))

(declare-fun m!1634115 () Bool)

(assert (=> bs!340897 m!1634115))

(assert (=> b!1433006 d!412405))

(declare-fun d!412407 () Bool)

(declare-fun isBalanced!1499 (Conc!5049) Bool)

(assert (=> d!412407 (= (inv!19758 (tokens!1964 other!32)) (isBalanced!1499 (c!235524 (tokens!1964 other!32))))))

(declare-fun bs!340898 () Bool)

(assert (= bs!340898 d!412407))

(declare-fun m!1634117 () Bool)

(assert (=> bs!340898 m!1634117))

(assert (=> b!1432995 d!412407))

(declare-fun d!412409 () Bool)

(declare-fun c!235527 () Bool)

(get-info :version)

(assert (=> d!412409 (= c!235527 ((_ is Node!5049) (c!235524 (tokens!1964 other!32))))))

(declare-fun e!914758 () Bool)

(assert (=> d!412409 (= (inv!19759 (c!235524 (tokens!1964 other!32))) e!914758)))

(declare-fun b!1433013 () Bool)

(declare-fun inv!19761 (Conc!5049) Bool)

(assert (=> b!1433013 (= e!914758 (inv!19761 (c!235524 (tokens!1964 other!32))))))

(declare-fun b!1433014 () Bool)

(declare-fun e!914759 () Bool)

(assert (=> b!1433014 (= e!914758 e!914759)))

(declare-fun res!648788 () Bool)

(assert (=> b!1433014 (= res!648788 (not ((_ is Leaf!7556) (c!235524 (tokens!1964 other!32)))))))

(assert (=> b!1433014 (=> res!648788 e!914759)))

(declare-fun b!1433015 () Bool)

(declare-fun inv!19762 (Conc!5049) Bool)

(assert (=> b!1433015 (= e!914759 (inv!19762 (c!235524 (tokens!1964 other!32))))))

(assert (= (and d!412409 c!235527) b!1433013))

(assert (= (and d!412409 (not c!235527)) b!1433014))

(assert (= (and b!1433014 (not res!648788)) b!1433015))

(declare-fun m!1634119 () Bool)

(assert (=> b!1433013 m!1634119))

(declare-fun m!1634121 () Bool)

(assert (=> b!1433015 m!1634121))

(assert (=> b!1433005 d!412409))

(declare-fun d!412411 () Bool)

(declare-fun lt!487588 () Bool)

(declare-fun e!914769 () Bool)

(assert (=> d!412411 (= lt!487588 e!914769)))

(declare-fun res!648809 () Bool)

(assert (=> d!412411 (=> (not res!648809) (not e!914769))))

(declare-datatypes ((tuple2!14104 0))(
  ( (tuple2!14105 (_1!7938 BalanceConc!10038) (_2!7938 BalanceConc!10036)) )
))
(declare-fun lex!1040 (LexerInterface!2275 List!14949 BalanceConc!10036) tuple2!14104)

(declare-fun singletonSeq!1218 (Token!4884) BalanceConc!10038)

(assert (=> d!412411 (= res!648809 (= (list!5912 (_1!7938 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) (print!1057 Lexer!2273 (singletonSeq!1218 lt!487579))))) (list!5912 (singletonSeq!1218 lt!487579))))))

(declare-fun e!914768 () Bool)

(assert (=> d!412411 (= lt!487588 e!914768)))

(declare-fun res!648807 () Bool)

(assert (=> d!412411 (=> (not res!648807) (not e!914768))))

(declare-fun lt!487589 () tuple2!14104)

(declare-fun size!12209 (BalanceConc!10038) Int)

(assert (=> d!412411 (= res!648807 (= (size!12209 (_1!7938 lt!487589)) 1))))

(assert (=> d!412411 (= lt!487589 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) (print!1057 Lexer!2273 (singletonSeq!1218 lt!487579))))))

(declare-fun isEmpty!9241 (List!14949) Bool)

(assert (=> d!412411 (not (isEmpty!9241 (rules!11360 thiss!10022)))))

(assert (=> d!412411 (= (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) lt!487579) lt!487588)))

(declare-fun b!1433034 () Bool)

(declare-fun res!648808 () Bool)

(assert (=> b!1433034 (=> (not res!648808) (not e!914768))))

(declare-fun apply!3804 (BalanceConc!10038 Int) Token!4884)

(assert (=> b!1433034 (= res!648808 (= (apply!3804 (_1!7938 lt!487589) 0) lt!487579))))

(declare-fun b!1433035 () Bool)

(declare-fun isEmpty!9242 (BalanceConc!10036) Bool)

(assert (=> b!1433035 (= e!914768 (isEmpty!9242 (_2!7938 lt!487589)))))

(declare-fun b!1433036 () Bool)

(assert (=> b!1433036 (= e!914769 (isEmpty!9242 (_2!7938 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) (print!1057 Lexer!2273 (singletonSeq!1218 lt!487579))))))))

(assert (= (and d!412411 res!648807) b!1433034))

(assert (= (and b!1433034 res!648808) b!1433035))

(assert (= (and d!412411 res!648809) b!1433036))

(declare-fun m!1634141 () Bool)

(assert (=> d!412411 m!1634141))

(declare-fun m!1634143 () Bool)

(assert (=> d!412411 m!1634143))

(declare-fun m!1634145 () Bool)

(assert (=> d!412411 m!1634145))

(assert (=> d!412411 m!1634143))

(declare-fun m!1634147 () Bool)

(assert (=> d!412411 m!1634147))

(assert (=> d!412411 m!1634141))

(declare-fun m!1634149 () Bool)

(assert (=> d!412411 m!1634149))

(declare-fun m!1634151 () Bool)

(assert (=> d!412411 m!1634151))

(assert (=> d!412411 m!1634141))

(declare-fun m!1634153 () Bool)

(assert (=> d!412411 m!1634153))

(declare-fun m!1634155 () Bool)

(assert (=> b!1433034 m!1634155))

(declare-fun m!1634157 () Bool)

(assert (=> b!1433035 m!1634157))

(assert (=> b!1433036 m!1634141))

(assert (=> b!1433036 m!1634141))

(assert (=> b!1433036 m!1634143))

(assert (=> b!1433036 m!1634143))

(assert (=> b!1433036 m!1634147))

(declare-fun m!1634159 () Bool)

(assert (=> b!1433036 m!1634159))

(assert (=> b!1432996 d!412411))

(declare-fun d!412421 () Bool)

(declare-fun list!5914 (Conc!5049) List!14948)

(assert (=> d!412421 (= (list!5912 (tokens!1964 other!32)) (list!5914 (c!235524 (tokens!1964 other!32))))))

(declare-fun bs!340900 () Bool)

(assert (= bs!340900 d!412421))

(declare-fun m!1634161 () Bool)

(assert (=> bs!340900 m!1634161))

(assert (=> b!1432996 d!412421))

(declare-fun d!412423 () Bool)

(declare-fun lt!487592 () Token!4884)

(declare-fun head!2882 (List!14948) Token!4884)

(assert (=> d!412423 (= lt!487592 (head!2882 (list!5912 (tokens!1964 other!32))))))

(declare-fun head!2883 (Conc!5049) Token!4884)

(assert (=> d!412423 (= lt!487592 (head!2883 (c!235524 (tokens!1964 other!32))))))

(assert (=> d!412423 (not (isEmpty!9235 (tokens!1964 other!32)))))

(assert (=> d!412423 (= (head!2879 (tokens!1964 other!32)) lt!487592)))

(declare-fun bs!340901 () Bool)

(assert (= bs!340901 d!412423))

(assert (=> bs!340901 m!1634033))

(assert (=> bs!340901 m!1634033))

(declare-fun m!1634163 () Bool)

(assert (=> bs!340901 m!1634163))

(declare-fun m!1634165 () Bool)

(assert (=> bs!340901 m!1634165))

(assert (=> bs!340901 m!1634085))

(assert (=> b!1432996 d!412423))

(declare-fun d!412425 () Bool)

(declare-fun lt!487595 () Token!4884)

(declare-fun last!158 (List!14948) Token!4884)

(assert (=> d!412425 (= lt!487595 (last!158 (list!5912 (tokens!1964 thiss!10022))))))

(declare-fun last!159 (Conc!5049) Token!4884)

(assert (=> d!412425 (= lt!487595 (last!159 (c!235524 (tokens!1964 thiss!10022))))))

(assert (=> d!412425 (not (isEmpty!9235 (tokens!1964 thiss!10022)))))

(assert (=> d!412425 (= (last!157 (tokens!1964 thiss!10022)) lt!487595)))

(declare-fun bs!340902 () Bool)

(assert (= bs!340902 d!412425))

(assert (=> bs!340902 m!1634029))

(assert (=> bs!340902 m!1634029))

(declare-fun m!1634167 () Bool)

(assert (=> bs!340902 m!1634167))

(declare-fun m!1634169 () Bool)

(assert (=> bs!340902 m!1634169))

(assert (=> bs!340902 m!1634047))

(assert (=> b!1432996 d!412425))

(declare-fun d!412427 () Bool)

(assert (=> d!412427 (= (list!5912 (tokens!1964 thiss!10022)) (list!5914 (c!235524 (tokens!1964 thiss!10022))))))

(declare-fun bs!340903 () Bool)

(assert (= bs!340903 d!412427))

(declare-fun m!1634171 () Bool)

(assert (=> bs!340903 m!1634171))

(assert (=> b!1432996 d!412427))

(declare-fun d!412429 () Bool)

(assert (=> d!412429 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) lt!487563)))

(declare-fun lt!487598 () Unit!22533)

(declare-fun choose!8823 (LexerInterface!2275 List!14949 List!14948 Token!4884) Unit!22533)

(assert (=> d!412429 (= lt!487598 (choose!8823 Lexer!2273 (rules!11360 thiss!10022) lt!487565 lt!487563))))

(assert (=> d!412429 (not (isEmpty!9241 (rules!11360 thiss!10022)))))

(assert (=> d!412429 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!393 Lexer!2273 (rules!11360 thiss!10022) lt!487565 lt!487563) lt!487598)))

(declare-fun bs!340904 () Bool)

(assert (= bs!340904 d!412429))

(assert (=> bs!340904 m!1634037))

(declare-fun m!1634173 () Bool)

(assert (=> bs!340904 m!1634173))

(assert (=> bs!340904 m!1634145))

(assert (=> b!1432996 d!412429))

(declare-fun d!412431 () Bool)

(declare-fun prefixMatchZipperSequence!328 (Regex!3925 BalanceConc!10036) Bool)

(declare-fun rulesRegex!386 (LexerInterface!2275 List!14949) Regex!3925)

(declare-fun ++!3983 (BalanceConc!10036 BalanceConc!10036) BalanceConc!10036)

(declare-fun charsOf!1511 (Token!4884) BalanceConc!10036)

(declare-fun singletonSeq!1219 (C!8028) BalanceConc!10036)

(declare-fun apply!3805 (BalanceConc!10036 Int) C!8028)

(assert (=> d!412431 (= (separableTokensPredicate!510 Lexer!2273 lt!487579 lt!487563 (rules!11360 thiss!10022)) (not (prefixMatchZipperSequence!328 (rulesRegex!386 Lexer!2273 (rules!11360 thiss!10022)) (++!3983 (charsOf!1511 lt!487579) (singletonSeq!1219 (apply!3805 (charsOf!1511 lt!487563) 0))))))))

(declare-fun bs!340905 () Bool)

(assert (= bs!340905 d!412431))

(declare-fun m!1634175 () Bool)

(assert (=> bs!340905 m!1634175))

(declare-fun m!1634177 () Bool)

(assert (=> bs!340905 m!1634177))

(assert (=> bs!340905 m!1634175))

(declare-fun m!1634179 () Bool)

(assert (=> bs!340905 m!1634179))

(declare-fun m!1634181 () Bool)

(assert (=> bs!340905 m!1634181))

(declare-fun m!1634183 () Bool)

(assert (=> bs!340905 m!1634183))

(declare-fun m!1634185 () Bool)

(assert (=> bs!340905 m!1634185))

(assert (=> bs!340905 m!1634177))

(assert (=> bs!340905 m!1634185))

(declare-fun m!1634187 () Bool)

(assert (=> bs!340905 m!1634187))

(assert (=> bs!340905 m!1634181))

(assert (=> bs!340905 m!1634179))

(assert (=> bs!340905 m!1634183))

(assert (=> b!1432996 d!412431))

(declare-fun d!412433 () Bool)

(assert (=> d!412433 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) lt!487579)))

(declare-fun lt!487599 () Unit!22533)

(assert (=> d!412433 (= lt!487599 (choose!8823 Lexer!2273 (rules!11360 thiss!10022) lt!487567 lt!487579))))

(assert (=> d!412433 (not (isEmpty!9241 (rules!11360 thiss!10022)))))

(assert (=> d!412433 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!393 Lexer!2273 (rules!11360 thiss!10022) lt!487567 lt!487579) lt!487599)))

(declare-fun bs!340906 () Bool)

(assert (= bs!340906 d!412433))

(assert (=> bs!340906 m!1634035))

(declare-fun m!1634189 () Bool)

(assert (=> bs!340906 m!1634189))

(assert (=> bs!340906 m!1634145))

(assert (=> b!1432996 d!412433))

(declare-fun d!412435 () Bool)

(declare-fun lt!487600 () Bool)

(declare-fun e!914771 () Bool)

(assert (=> d!412435 (= lt!487600 e!914771)))

(declare-fun res!648812 () Bool)

(assert (=> d!412435 (=> (not res!648812) (not e!914771))))

(assert (=> d!412435 (= res!648812 (= (list!5912 (_1!7938 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) (print!1057 Lexer!2273 (singletonSeq!1218 lt!487563))))) (list!5912 (singletonSeq!1218 lt!487563))))))

(declare-fun e!914770 () Bool)

(assert (=> d!412435 (= lt!487600 e!914770)))

(declare-fun res!648810 () Bool)

(assert (=> d!412435 (=> (not res!648810) (not e!914770))))

(declare-fun lt!487601 () tuple2!14104)

(assert (=> d!412435 (= res!648810 (= (size!12209 (_1!7938 lt!487601)) 1))))

(assert (=> d!412435 (= lt!487601 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) (print!1057 Lexer!2273 (singletonSeq!1218 lt!487563))))))

(assert (=> d!412435 (not (isEmpty!9241 (rules!11360 thiss!10022)))))

(assert (=> d!412435 (= (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) lt!487563) lt!487600)))

(declare-fun b!1433037 () Bool)

(declare-fun res!648811 () Bool)

(assert (=> b!1433037 (=> (not res!648811) (not e!914770))))

(assert (=> b!1433037 (= res!648811 (= (apply!3804 (_1!7938 lt!487601) 0) lt!487563))))

(declare-fun b!1433038 () Bool)

(assert (=> b!1433038 (= e!914770 (isEmpty!9242 (_2!7938 lt!487601)))))

(declare-fun b!1433039 () Bool)

(assert (=> b!1433039 (= e!914771 (isEmpty!9242 (_2!7938 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) (print!1057 Lexer!2273 (singletonSeq!1218 lt!487563))))))))

(assert (= (and d!412435 res!648810) b!1433037))

(assert (= (and b!1433037 res!648811) b!1433038))

(assert (= (and d!412435 res!648812) b!1433039))

(declare-fun m!1634191 () Bool)

(assert (=> d!412435 m!1634191))

(declare-fun m!1634193 () Bool)

(assert (=> d!412435 m!1634193))

(assert (=> d!412435 m!1634145))

(assert (=> d!412435 m!1634193))

(declare-fun m!1634195 () Bool)

(assert (=> d!412435 m!1634195))

(assert (=> d!412435 m!1634191))

(declare-fun m!1634197 () Bool)

(assert (=> d!412435 m!1634197))

(declare-fun m!1634199 () Bool)

(assert (=> d!412435 m!1634199))

(assert (=> d!412435 m!1634191))

(declare-fun m!1634201 () Bool)

(assert (=> d!412435 m!1634201))

(declare-fun m!1634203 () Bool)

(assert (=> b!1433037 m!1634203))

(declare-fun m!1634205 () Bool)

(assert (=> b!1433038 m!1634205))

(assert (=> b!1433039 m!1634191))

(assert (=> b!1433039 m!1634191))

(assert (=> b!1433039 m!1634193))

(assert (=> b!1433039 m!1634193))

(assert (=> b!1433039 m!1634195))

(declare-fun m!1634207 () Bool)

(assert (=> b!1433039 m!1634207))

(assert (=> b!1432996 d!412435))

(declare-fun b!1433059 () Bool)

(declare-fun res!648826 () Bool)

(declare-fun e!914780 () Bool)

(assert (=> b!1433059 (=> (not res!648826) (not e!914780))))

(assert (=> b!1433059 (= res!648826 (rulesProduceEachTokenIndividuallyList!718 Lexer!2273 (rules!11360 thiss!10022) lt!487565))))

(declare-fun b!1433058 () Bool)

(declare-fun res!648824 () Bool)

(assert (=> b!1433058 (=> (not res!648824) (not e!914780))))

(assert (=> b!1433058 (= res!648824 (rulesProduceEachTokenIndividuallyList!718 Lexer!2273 (rules!11360 thiss!10022) lt!487567))))

(declare-fun d!412437 () Bool)

(assert (=> d!412437 e!914780))

(declare-fun res!648825 () Bool)

(assert (=> d!412437 (=> (not res!648825) (not e!914780))))

(assert (=> d!412437 (= res!648825 ((_ is Lexer!2273) Lexer!2273))))

(declare-fun lt!487687 () Unit!22533)

(declare-fun choose!8824 (LexerInterface!2275 List!14948 List!14948 List!14949) Unit!22533)

(assert (=> d!412437 (= lt!487687 (choose!8824 Lexer!2273 lt!487567 lt!487565 (rules!11360 thiss!10022)))))

(assert (=> d!412437 (not (isEmpty!9241 (rules!11360 thiss!10022)))))

(assert (=> d!412437 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!48 Lexer!2273 lt!487567 lt!487565 (rules!11360 thiss!10022)) lt!487687)))

(declare-fun b!1433057 () Bool)

(declare-fun res!648827 () Bool)

(assert (=> b!1433057 (=> (not res!648827) (not e!914780))))

(declare-fun rulesInvariant!2119 (LexerInterface!2275 List!14949) Bool)

(assert (=> b!1433057 (= res!648827 (rulesInvariant!2119 Lexer!2273 (rules!11360 thiss!10022)))))

(declare-fun b!1433060 () Bool)

(assert (=> b!1433060 (= e!914780 (tokensListTwoByTwoPredicateSeparableList!233 Lexer!2273 (++!3982 lt!487567 lt!487565) (rules!11360 thiss!10022)))))

(declare-fun lt!487686 () Unit!22533)

(declare-fun lt!487688 () Unit!22533)

(assert (=> b!1433060 (= lt!487686 lt!487688)))

(assert (=> b!1433060 (rulesProduceEachTokenIndividuallyList!718 Lexer!2273 (rules!11360 thiss!10022) (++!3982 lt!487567 lt!487565))))

(assert (=> b!1433060 (= lt!487688 (lemmaRulesProduceEachTokenIndividuallyConcat!48 Lexer!2273 (rules!11360 thiss!10022) lt!487567 lt!487565))))

(assert (= (and d!412437 res!648825) b!1433057))

(assert (= (and b!1433057 res!648827) b!1433058))

(assert (= (and b!1433058 res!648824) b!1433059))

(assert (= (and b!1433059 res!648826) b!1433060))

(assert (=> b!1433060 m!1634101))

(assert (=> b!1433060 m!1634101))

(declare-fun m!1634291 () Bool)

(assert (=> b!1433060 m!1634291))

(assert (=> b!1433060 m!1634101))

(declare-fun m!1634293 () Bool)

(assert (=> b!1433060 m!1634293))

(assert (=> b!1433060 m!1634107))

(declare-fun m!1634295 () Bool)

(assert (=> d!412437 m!1634295))

(assert (=> d!412437 m!1634145))

(declare-fun m!1634297 () Bool)

(assert (=> b!1433057 m!1634297))

(declare-fun m!1634299 () Bool)

(assert (=> b!1433058 m!1634299))

(declare-fun m!1634301 () Bool)

(assert (=> b!1433059 m!1634301))

(assert (=> b!1433003 d!412437))

(declare-fun b!1433162 () Bool)

(declare-fun e!914838 () Bool)

(assert (=> b!1433162 (= e!914838 true)))

(declare-fun b!1433161 () Bool)

(declare-fun e!914837 () Bool)

(assert (=> b!1433161 (= e!914837 e!914838)))

(declare-fun b!1433160 () Bool)

(declare-fun e!914836 () Bool)

(assert (=> b!1433160 (= e!914836 e!914837)))

(declare-fun d!412441 () Bool)

(assert (=> d!412441 e!914836))

(assert (= b!1433161 b!1433162))

(assert (= b!1433160 b!1433161))

(assert (= (and d!412441 ((_ is Cons!14883) (rules!11360 thiss!10022))) b!1433160))

(declare-fun order!8943 () Int)

(declare-fun order!8945 () Int)

(declare-fun lambda!62806 () Int)

(declare-fun dynLambda!6788 (Int Int) Int)

(declare-fun dynLambda!6789 (Int Int) Int)

(assert (=> b!1433162 (< (dynLambda!6788 order!8943 (toValue!3914 (transformation!2611 (h!20284 (rules!11360 thiss!10022))))) (dynLambda!6789 order!8945 lambda!62806))))

(declare-fun order!8947 () Int)

(declare-fun dynLambda!6790 (Int Int) Int)

(assert (=> b!1433162 (< (dynLambda!6790 order!8947 (toChars!3773 (transformation!2611 (h!20284 (rules!11360 thiss!10022))))) (dynLambda!6789 order!8945 lambda!62806))))

(assert (=> d!412441 true))

(declare-fun lt!487780 () Bool)

(declare-fun forall!3663 (List!14948 Int) Bool)

(assert (=> d!412441 (= lt!487780 (forall!3663 lt!487572 lambda!62806))))

(declare-fun e!914827 () Bool)

(assert (=> d!412441 (= lt!487780 e!914827)))

(declare-fun res!648875 () Bool)

(assert (=> d!412441 (=> res!648875 e!914827)))

(assert (=> d!412441 (= res!648875 (not ((_ is Cons!14882) lt!487572)))))

(assert (=> d!412441 (not (isEmpty!9241 (rules!11360 thiss!10022)))))

(assert (=> d!412441 (= (rulesProduceEachTokenIndividuallyList!718 Lexer!2273 (rules!11360 thiss!10022) lt!487572) lt!487780)))

(declare-fun b!1433142 () Bool)

(declare-fun e!914826 () Bool)

(assert (=> b!1433142 (= e!914827 e!914826)))

(declare-fun res!648876 () Bool)

(assert (=> b!1433142 (=> (not res!648876) (not e!914826))))

(assert (=> b!1433142 (= res!648876 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) (h!20283 lt!487572)))))

(declare-fun b!1433143 () Bool)

(assert (=> b!1433143 (= e!914826 (rulesProduceEachTokenIndividuallyList!718 Lexer!2273 (rules!11360 thiss!10022) (t!127175 lt!487572)))))

(assert (= (and d!412441 (not res!648875)) b!1433142))

(assert (= (and b!1433142 res!648876) b!1433143))

(declare-fun m!1634595 () Bool)

(assert (=> d!412441 m!1634595))

(assert (=> d!412441 m!1634145))

(declare-fun m!1634597 () Bool)

(assert (=> b!1433142 m!1634597))

(declare-fun m!1634599 () Bool)

(assert (=> b!1433143 m!1634599))

(assert (=> b!1433003 d!412441))

(declare-fun lt!487786 () List!14948)

(declare-fun b!1433180 () Bool)

(declare-fun e!914844 () Bool)

(assert (=> b!1433180 (= e!914844 (or (not (= lt!487565 Nil!14882)) (= lt!487786 lt!487567)))))

(declare-fun d!412487 () Bool)

(assert (=> d!412487 e!914844))

(declare-fun res!648894 () Bool)

(assert (=> d!412487 (=> (not res!648894) (not e!914844))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2195 (List!14948) (InoxSet Token!4884))

(assert (=> d!412487 (= res!648894 (= (content!2195 lt!487786) ((_ map or) (content!2195 lt!487567) (content!2195 lt!487565))))))

(declare-fun e!914845 () List!14948)

(assert (=> d!412487 (= lt!487786 e!914845)))

(declare-fun c!235553 () Bool)

(assert (=> d!412487 (= c!235553 ((_ is Nil!14882) lt!487567))))

(assert (=> d!412487 (= (++!3982 lt!487567 lt!487565) lt!487786)))

(declare-fun b!1433179 () Bool)

(declare-fun res!648893 () Bool)

(assert (=> b!1433179 (=> (not res!648893) (not e!914844))))

(declare-fun size!12210 (List!14948) Int)

(assert (=> b!1433179 (= res!648893 (= (size!12210 lt!487786) (+ (size!12210 lt!487567) (size!12210 lt!487565))))))

(declare-fun b!1433177 () Bool)

(assert (=> b!1433177 (= e!914845 lt!487565)))

(declare-fun b!1433178 () Bool)

(assert (=> b!1433178 (= e!914845 (Cons!14882 (h!20283 lt!487567) (++!3982 (t!127175 lt!487567) lt!487565)))))

(assert (= (and d!412487 c!235553) b!1433177))

(assert (= (and d!412487 (not c!235553)) b!1433178))

(assert (= (and d!412487 res!648894) b!1433179))

(assert (= (and b!1433179 res!648893) b!1433180))

(declare-fun m!1634619 () Bool)

(assert (=> d!412487 m!1634619))

(declare-fun m!1634621 () Bool)

(assert (=> d!412487 m!1634621))

(declare-fun m!1634623 () Bool)

(assert (=> d!412487 m!1634623))

(declare-fun m!1634625 () Bool)

(assert (=> b!1433179 m!1634625))

(declare-fun m!1634627 () Bool)

(assert (=> b!1433179 m!1634627))

(declare-fun m!1634629 () Bool)

(assert (=> b!1433179 m!1634629))

(declare-fun m!1634631 () Bool)

(assert (=> b!1433178 m!1634631))

(assert (=> b!1433003 d!412487))

(declare-fun d!412491 () Bool)

(assert (=> d!412491 (rulesProduceEachTokenIndividuallyList!718 Lexer!2273 (rules!11360 thiss!10022) (++!3982 lt!487567 lt!487565))))

(declare-fun lt!487789 () Unit!22533)

(declare-fun choose!8825 (LexerInterface!2275 List!14949 List!14948 List!14948) Unit!22533)

(assert (=> d!412491 (= lt!487789 (choose!8825 Lexer!2273 (rules!11360 thiss!10022) lt!487567 lt!487565))))

(assert (=> d!412491 (not (isEmpty!9241 (rules!11360 thiss!10022)))))

(assert (=> d!412491 (= (lemmaRulesProduceEachTokenIndividuallyConcat!48 Lexer!2273 (rules!11360 thiss!10022) lt!487567 lt!487565) lt!487789)))

(declare-fun bs!340914 () Bool)

(assert (= bs!340914 d!412491))

(assert (=> bs!340914 m!1634101))

(assert (=> bs!340914 m!1634101))

(assert (=> bs!340914 m!1634293))

(declare-fun m!1634633 () Bool)

(assert (=> bs!340914 m!1634633))

(assert (=> bs!340914 m!1634145))

(assert (=> b!1433003 d!412491))

(declare-fun b!1433221 () Bool)

(declare-fun e!914874 () Bool)

(assert (=> b!1433221 (= e!914874 (<= 0 (size!12209 lt!487573)))))

(declare-fun b!1433222 () Bool)

(declare-fun e!914873 () Bool)

(declare-fun lt!487970 () List!14948)

(assert (=> b!1433222 (= e!914873 (<= 0 (size!12210 lt!487970)))))

(declare-fun b!1433223 () Bool)

(declare-fun e!914871 () Bool)

(declare-fun lt!487966 () List!14948)

(assert (=> b!1433223 (= e!914871 (rulesProduceEachTokenIndividuallyList!718 Lexer!2273 (rules!11360 thiss!10022) lt!487966))))

(declare-fun b!1433224 () Bool)

(declare-fun res!648936 () Bool)

(assert (=> b!1433224 (=> (not res!648936) (not e!914871))))

(declare-fun lt!487973 () List!14948)

(declare-fun subseq!356 (List!14948 List!14948) Bool)

(assert (=> b!1433224 (= res!648936 (subseq!356 lt!487973 lt!487966))))

(declare-fun b!1433225 () Bool)

(declare-fun e!914872 () Bool)

(declare-fun e!914875 () Bool)

(assert (=> b!1433225 (= e!914872 e!914875)))

(declare-fun res!648935 () Bool)

(assert (=> b!1433225 (=> (not res!648935) (not e!914875))))

(assert (=> b!1433225 (= res!648935 (separableTokensPredicate!510 Lexer!2273 (apply!3804 lt!487573 0) (apply!3804 lt!487573 (+ 0 1)) (rules!11360 thiss!10022)))))

(declare-fun lt!487958 () Unit!22533)

(declare-fun Unit!22579 () Unit!22533)

(assert (=> b!1433225 (= lt!487958 Unit!22579)))

(declare-fun size!12211 (BalanceConc!10036) Int)

(assert (=> b!1433225 (> (size!12211 (charsOf!1511 (apply!3804 lt!487573 (+ 0 1)))) 0)))

(declare-fun lt!487964 () Unit!22533)

(declare-fun Unit!22580 () Unit!22533)

(assert (=> b!1433225 (= lt!487964 Unit!22580)))

(assert (=> b!1433225 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) (apply!3804 lt!487573 (+ 0 1)))))

(declare-fun lt!487961 () Unit!22533)

(declare-fun Unit!22581 () Unit!22533)

(assert (=> b!1433225 (= lt!487961 Unit!22581)))

(assert (=> b!1433225 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) (apply!3804 lt!487573 0))))

(declare-fun lt!487987 () Unit!22533)

(declare-fun lt!487984 () Unit!22533)

(assert (=> b!1433225 (= lt!487987 lt!487984)))

(declare-fun lt!487981 () Token!4884)

(assert (=> b!1433225 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) lt!487981)))

(declare-fun lt!487967 () List!14948)

(assert (=> b!1433225 (= lt!487984 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!393 Lexer!2273 (rules!11360 thiss!10022) lt!487967 lt!487981))))

(assert (=> b!1433225 (= lt!487981 (apply!3804 lt!487573 (+ 0 1)))))

(assert (=> b!1433225 (= lt!487967 (list!5912 lt!487573))))

(declare-fun lt!487978 () Unit!22533)

(declare-fun lt!487976 () Unit!22533)

(assert (=> b!1433225 (= lt!487978 lt!487976)))

(declare-fun lt!487988 () Token!4884)

(assert (=> b!1433225 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) lt!487988)))

(declare-fun lt!487960 () List!14948)

(assert (=> b!1433225 (= lt!487976 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!393 Lexer!2273 (rules!11360 thiss!10022) lt!487960 lt!487988))))

(assert (=> b!1433225 (= lt!487988 (apply!3804 lt!487573 0))))

(assert (=> b!1433225 (= lt!487960 (list!5912 lt!487573))))

(declare-fun lt!487963 () Unit!22533)

(declare-fun lt!487975 () Unit!22533)

(assert (=> b!1433225 (= lt!487963 lt!487975)))

(declare-fun lt!487985 () List!14948)

(declare-fun lt!487983 () Int)

(declare-fun tail!2147 (List!14948) List!14948)

(declare-fun drop!725 (List!14948 Int) List!14948)

(assert (=> b!1433225 (= (tail!2147 (drop!725 lt!487985 lt!487983)) (drop!725 lt!487985 (+ lt!487983 1)))))

(declare-fun lemmaDropTail!457 (List!14948 Int) Unit!22533)

(assert (=> b!1433225 (= lt!487975 (lemmaDropTail!457 lt!487985 lt!487983))))

(assert (=> b!1433225 (= lt!487983 (+ 0 1))))

(assert (=> b!1433225 (= lt!487985 (list!5912 lt!487573))))

(declare-fun lt!487968 () Unit!22533)

(declare-fun lt!487982 () Unit!22533)

(assert (=> b!1433225 (= lt!487968 lt!487982)))

(declare-fun lt!487959 () List!14948)

(assert (=> b!1433225 (= (tail!2147 (drop!725 lt!487959 0)) (drop!725 lt!487959 (+ 0 1)))))

(assert (=> b!1433225 (= lt!487982 (lemmaDropTail!457 lt!487959 0))))

(assert (=> b!1433225 (= lt!487959 (list!5912 lt!487573))))

(declare-fun lt!487989 () Unit!22533)

(declare-fun lt!487990 () Unit!22533)

(assert (=> b!1433225 (= lt!487989 lt!487990)))

(declare-fun lt!487980 () List!14948)

(declare-fun lt!487974 () Int)

(declare-fun apply!3806 (List!14948 Int) Token!4884)

(assert (=> b!1433225 (= (head!2882 (drop!725 lt!487980 lt!487974)) (apply!3806 lt!487980 lt!487974))))

(declare-fun lemmaDropApply!477 (List!14948 Int) Unit!22533)

(assert (=> b!1433225 (= lt!487990 (lemmaDropApply!477 lt!487980 lt!487974))))

(assert (=> b!1433225 (= lt!487974 (+ 0 1))))

(assert (=> b!1433225 (= lt!487980 (list!5912 lt!487573))))

(declare-fun lt!487979 () Unit!22533)

(declare-fun lt!487965 () Unit!22533)

(assert (=> b!1433225 (= lt!487979 lt!487965)))

(declare-fun lt!487972 () List!14948)

(assert (=> b!1433225 (= (head!2882 (drop!725 lt!487972 0)) (apply!3806 lt!487972 0))))

(assert (=> b!1433225 (= lt!487965 (lemmaDropApply!477 lt!487972 0))))

(assert (=> b!1433225 (= lt!487972 (list!5912 lt!487573))))

(declare-fun d!412493 () Bool)

(declare-fun lt!487971 () Bool)

(declare-fun dropList!457 (BalanceConc!10038 Int) List!14948)

(assert (=> d!412493 (= lt!487971 (tokensListTwoByTwoPredicateSeparableList!233 Lexer!2273 (dropList!457 lt!487573 0) (rules!11360 thiss!10022)))))

(declare-fun lt!487969 () Unit!22533)

(declare-fun lt!487962 () Unit!22533)

(assert (=> d!412493 (= lt!487969 lt!487962)))

(assert (=> d!412493 (rulesProduceEachTokenIndividuallyList!718 Lexer!2273 (rules!11360 thiss!10022) lt!487973)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!51 (LexerInterface!2275 List!14949 List!14948 List!14948) Unit!22533)

(assert (=> d!412493 (= lt!487962 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!51 Lexer!2273 (rules!11360 thiss!10022) lt!487966 lt!487973))))

(assert (=> d!412493 e!914871))

(declare-fun res!648942 () Bool)

(assert (=> d!412493 (=> (not res!648942) (not e!914871))))

(assert (=> d!412493 (= res!648942 ((_ is Lexer!2273) Lexer!2273))))

(assert (=> d!412493 (= lt!487973 (dropList!457 lt!487573 0))))

(assert (=> d!412493 (= lt!487966 (list!5912 lt!487573))))

(declare-fun lt!487977 () Unit!22533)

(declare-fun lt!487986 () Unit!22533)

(assert (=> d!412493 (= lt!487977 lt!487986)))

(assert (=> d!412493 (subseq!356 (drop!725 lt!487970 0) lt!487970)))

(declare-fun lemmaDropSubSeq!51 (List!14948 Int) Unit!22533)

(assert (=> d!412493 (= lt!487986 (lemmaDropSubSeq!51 lt!487970 0))))

(assert (=> d!412493 e!914873))

(declare-fun res!648939 () Bool)

(assert (=> d!412493 (=> (not res!648939) (not e!914873))))

(assert (=> d!412493 (= res!648939 (>= 0 0))))

(assert (=> d!412493 (= lt!487970 (list!5912 lt!487573))))

(assert (=> d!412493 (= lt!487971 e!914872)))

(declare-fun res!648940 () Bool)

(assert (=> d!412493 (=> res!648940 e!914872)))

(assert (=> d!412493 (= res!648940 (not (< 0 (- (size!12209 lt!487573) 1))))))

(assert (=> d!412493 e!914874))

(declare-fun res!648937 () Bool)

(assert (=> d!412493 (=> (not res!648937) (not e!914874))))

(assert (=> d!412493 (= res!648937 (>= 0 0))))

(assert (=> d!412493 (= (tokensListTwoByTwoPredicateSeparable!110 Lexer!2273 lt!487573 0 (rules!11360 thiss!10022)) lt!487971)))

(declare-fun b!1433226 () Bool)

(declare-fun res!648938 () Bool)

(assert (=> b!1433226 (=> (not res!648938) (not e!914871))))

(assert (=> b!1433226 (= res!648938 (rulesInvariant!2119 Lexer!2273 (rules!11360 thiss!10022)))))

(declare-fun b!1433227 () Bool)

(declare-fun res!648941 () Bool)

(assert (=> b!1433227 (=> (not res!648941) (not e!914871))))

(assert (=> b!1433227 (= res!648941 (not (isEmpty!9241 (rules!11360 thiss!10022))))))

(declare-fun b!1433228 () Bool)

(assert (=> b!1433228 (= e!914875 (tokensListTwoByTwoPredicateSeparable!110 Lexer!2273 lt!487573 (+ 0 1) (rules!11360 thiss!10022)))))

(assert (= (and d!412493 res!648937) b!1433221))

(assert (= (and d!412493 (not res!648940)) b!1433225))

(assert (= (and b!1433225 res!648935) b!1433228))

(assert (= (and d!412493 res!648939) b!1433222))

(assert (= (and d!412493 res!648942) b!1433227))

(assert (= (and b!1433227 res!648941) b!1433226))

(assert (= (and b!1433226 res!648938) b!1433224))

(assert (= (and b!1433224 res!648936) b!1433223))

(assert (=> b!1433226 m!1634297))

(declare-fun m!1634715 () Bool)

(assert (=> b!1433224 m!1634715))

(declare-fun m!1634717 () Bool)

(assert (=> b!1433221 m!1634717))

(declare-fun m!1634719 () Bool)

(assert (=> d!412493 m!1634719))

(assert (=> d!412493 m!1634719))

(declare-fun m!1634721 () Bool)

(assert (=> d!412493 m!1634721))

(declare-fun m!1634723 () Bool)

(assert (=> d!412493 m!1634723))

(declare-fun m!1634725 () Bool)

(assert (=> d!412493 m!1634725))

(assert (=> d!412493 m!1634717))

(assert (=> d!412493 m!1634057))

(declare-fun m!1634727 () Bool)

(assert (=> d!412493 m!1634727))

(assert (=> d!412493 m!1634727))

(declare-fun m!1634729 () Bool)

(assert (=> d!412493 m!1634729))

(declare-fun m!1634731 () Bool)

(assert (=> d!412493 m!1634731))

(declare-fun m!1634733 () Bool)

(assert (=> b!1433223 m!1634733))

(declare-fun m!1634735 () Bool)

(assert (=> b!1433228 m!1634735))

(declare-fun m!1634737 () Bool)

(assert (=> b!1433222 m!1634737))

(assert (=> b!1433227 m!1634145))

(declare-fun m!1634739 () Bool)

(assert (=> b!1433225 m!1634739))

(declare-fun m!1634741 () Bool)

(assert (=> b!1433225 m!1634741))

(declare-fun m!1634743 () Bool)

(assert (=> b!1433225 m!1634743))

(declare-fun m!1634745 () Bool)

(assert (=> b!1433225 m!1634745))

(declare-fun m!1634747 () Bool)

(assert (=> b!1433225 m!1634747))

(declare-fun m!1634749 () Bool)

(assert (=> b!1433225 m!1634749))

(declare-fun m!1634751 () Bool)

(assert (=> b!1433225 m!1634751))

(declare-fun m!1634753 () Bool)

(assert (=> b!1433225 m!1634753))

(declare-fun m!1634755 () Bool)

(assert (=> b!1433225 m!1634755))

(declare-fun m!1634757 () Bool)

(assert (=> b!1433225 m!1634757))

(declare-fun m!1634759 () Bool)

(assert (=> b!1433225 m!1634759))

(declare-fun m!1634761 () Bool)

(assert (=> b!1433225 m!1634761))

(declare-fun m!1634763 () Bool)

(assert (=> b!1433225 m!1634763))

(declare-fun m!1634765 () Bool)

(assert (=> b!1433225 m!1634765))

(declare-fun m!1634767 () Bool)

(assert (=> b!1433225 m!1634767))

(declare-fun m!1634769 () Bool)

(assert (=> b!1433225 m!1634769))

(declare-fun m!1634771 () Bool)

(assert (=> b!1433225 m!1634771))

(declare-fun m!1634773 () Bool)

(assert (=> b!1433225 m!1634773))

(declare-fun m!1634775 () Bool)

(assert (=> b!1433225 m!1634775))

(declare-fun m!1634777 () Bool)

(assert (=> b!1433225 m!1634777))

(declare-fun m!1634779 () Bool)

(assert (=> b!1433225 m!1634779))

(declare-fun m!1634781 () Bool)

(assert (=> b!1433225 m!1634781))

(assert (=> b!1433225 m!1634747))

(declare-fun m!1634783 () Bool)

(assert (=> b!1433225 m!1634783))

(assert (=> b!1433225 m!1634057))

(assert (=> b!1433225 m!1634775))

(assert (=> b!1433225 m!1634763))

(assert (=> b!1433225 m!1634775))

(declare-fun m!1634785 () Bool)

(assert (=> b!1433225 m!1634785))

(assert (=> b!1433225 m!1634767))

(assert (=> b!1433225 m!1634775))

(declare-fun m!1634787 () Bool)

(assert (=> b!1433225 m!1634787))

(assert (=> b!1433225 m!1634759))

(declare-fun m!1634789 () Bool)

(assert (=> b!1433225 m!1634789))

(assert (=> b!1433225 m!1634779))

(assert (=> b!1433225 m!1634773))

(assert (=> b!1433225 m!1634773))

(declare-fun m!1634791 () Bool)

(assert (=> b!1433225 m!1634791))

(assert (=> b!1433003 d!412493))

(declare-fun b!1433240 () Bool)

(declare-fun e!914878 () Bool)

(declare-fun lt!487993 () BalanceConc!10038)

(assert (=> b!1433240 (= e!914878 (= (list!5912 lt!487993) (++!3982 (list!5912 (tokens!1964 thiss!10022)) (list!5912 (tokens!1964 other!32)))))))

(declare-fun b!1433239 () Bool)

(declare-fun res!648953 () Bool)

(assert (=> b!1433239 (=> (not res!648953) (not e!914878))))

(declare-fun height!736 (Conc!5049) Int)

(declare-fun ++!3985 (Conc!5049 Conc!5049) Conc!5049)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1433239 (= res!648953 (>= (height!736 (++!3985 (c!235524 (tokens!1964 thiss!10022)) (c!235524 (tokens!1964 other!32)))) (max!0 (height!736 (c!235524 (tokens!1964 thiss!10022))) (height!736 (c!235524 (tokens!1964 other!32))))))))

(declare-fun d!412499 () Bool)

(assert (=> d!412499 e!914878))

(declare-fun res!648954 () Bool)

(assert (=> d!412499 (=> (not res!648954) (not e!914878))))

(declare-fun appendAssocInst!315 (Conc!5049 Conc!5049) Bool)

(assert (=> d!412499 (= res!648954 (appendAssocInst!315 (c!235524 (tokens!1964 thiss!10022)) (c!235524 (tokens!1964 other!32))))))

(assert (=> d!412499 (= lt!487993 (BalanceConc!10039 (++!3985 (c!235524 (tokens!1964 thiss!10022)) (c!235524 (tokens!1964 other!32)))))))

(assert (=> d!412499 (= (++!3981 (tokens!1964 thiss!10022) (tokens!1964 other!32)) lt!487993)))

(declare-fun b!1433238 () Bool)

(declare-fun res!648952 () Bool)

(assert (=> b!1433238 (=> (not res!648952) (not e!914878))))

(assert (=> b!1433238 (= res!648952 (<= (height!736 (++!3985 (c!235524 (tokens!1964 thiss!10022)) (c!235524 (tokens!1964 other!32)))) (+ (max!0 (height!736 (c!235524 (tokens!1964 thiss!10022))) (height!736 (c!235524 (tokens!1964 other!32)))) 1)))))

(declare-fun b!1433237 () Bool)

(declare-fun res!648951 () Bool)

(assert (=> b!1433237 (=> (not res!648951) (not e!914878))))

(assert (=> b!1433237 (= res!648951 (isBalanced!1499 (++!3985 (c!235524 (tokens!1964 thiss!10022)) (c!235524 (tokens!1964 other!32)))))))

(assert (= (and d!412499 res!648954) b!1433237))

(assert (= (and b!1433237 res!648951) b!1433238))

(assert (= (and b!1433238 res!648952) b!1433239))

(assert (= (and b!1433239 res!648953) b!1433240))

(declare-fun m!1634793 () Bool)

(assert (=> b!1433238 m!1634793))

(declare-fun m!1634795 () Bool)

(assert (=> b!1433238 m!1634795))

(declare-fun m!1634797 () Bool)

(assert (=> b!1433238 m!1634797))

(declare-fun m!1634799 () Bool)

(assert (=> b!1433238 m!1634799))

(declare-fun m!1634801 () Bool)

(assert (=> b!1433238 m!1634801))

(assert (=> b!1433238 m!1634799))

(assert (=> b!1433238 m!1634797))

(assert (=> b!1433238 m!1634793))

(assert (=> b!1433239 m!1634793))

(assert (=> b!1433239 m!1634795))

(assert (=> b!1433239 m!1634797))

(assert (=> b!1433239 m!1634799))

(assert (=> b!1433239 m!1634801))

(assert (=> b!1433239 m!1634799))

(assert (=> b!1433239 m!1634797))

(assert (=> b!1433239 m!1634793))

(declare-fun m!1634803 () Bool)

(assert (=> b!1433240 m!1634803))

(assert (=> b!1433240 m!1634029))

(assert (=> b!1433240 m!1634033))

(assert (=> b!1433240 m!1634029))

(assert (=> b!1433240 m!1634033))

(declare-fun m!1634805 () Bool)

(assert (=> b!1433240 m!1634805))

(assert (=> b!1433237 m!1634793))

(assert (=> b!1433237 m!1634793))

(declare-fun m!1634807 () Bool)

(assert (=> b!1433237 m!1634807))

(declare-fun m!1634809 () Bool)

(assert (=> d!412499 m!1634809))

(assert (=> d!412499 m!1634793))

(assert (=> b!1433003 d!412499))

(declare-fun d!412501 () Bool)

(assert (=> d!412501 (= (isDefined!2298 lt!487571) (not (isEmpty!9234 lt!487571)))))

(declare-fun bs!340916 () Bool)

(assert (= bs!340916 d!412501))

(assert (=> bs!340916 m!1634063))

(assert (=> b!1433004 d!412501))

(declare-fun d!412503 () Bool)

(declare-fun c!235557 () Bool)

(assert (=> d!412503 (= c!235557 ((_ is Node!5049) (c!235524 (tokens!1964 thiss!10022))))))

(declare-fun e!914879 () Bool)

(assert (=> d!412503 (= (inv!19759 (c!235524 (tokens!1964 thiss!10022))) e!914879)))

(declare-fun b!1433241 () Bool)

(assert (=> b!1433241 (= e!914879 (inv!19761 (c!235524 (tokens!1964 thiss!10022))))))

(declare-fun b!1433242 () Bool)

(declare-fun e!914880 () Bool)

(assert (=> b!1433242 (= e!914879 e!914880)))

(declare-fun res!648955 () Bool)

(assert (=> b!1433242 (= res!648955 (not ((_ is Leaf!7556) (c!235524 (tokens!1964 thiss!10022)))))))

(assert (=> b!1433242 (=> res!648955 e!914880)))

(declare-fun b!1433243 () Bool)

(assert (=> b!1433243 (= e!914880 (inv!19762 (c!235524 (tokens!1964 thiss!10022))))))

(assert (= (and d!412503 c!235557) b!1433241))

(assert (= (and d!412503 (not c!235557)) b!1433242))

(assert (= (and b!1433242 (not res!648955)) b!1433243))

(declare-fun m!1634811 () Bool)

(assert (=> b!1433241 m!1634811))

(declare-fun m!1634813 () Bool)

(assert (=> b!1433243 m!1634813))

(assert (=> b!1433000 d!412503))

(declare-fun d!412505 () Bool)

(declare-fun lt!487994 () Bool)

(assert (=> d!412505 (= lt!487994 (isEmpty!9239 (list!5912 (tokens!1964 other!32))))))

(assert (=> d!412505 (= lt!487994 (isEmpty!9240 (c!235524 (tokens!1964 other!32))))))

(assert (=> d!412505 (= (isEmpty!9235 (tokens!1964 other!32)) lt!487994)))

(declare-fun bs!340917 () Bool)

(assert (= bs!340917 d!412505))

(assert (=> bs!340917 m!1634033))

(assert (=> bs!340917 m!1634033))

(declare-fun m!1634815 () Bool)

(assert (=> bs!340917 m!1634815))

(declare-fun m!1634817 () Bool)

(assert (=> bs!340917 m!1634817))

(assert (=> b!1433002 d!412505))

(declare-fun d!412507 () Bool)

(declare-fun e!914887 () Bool)

(assert (=> d!412507 e!914887))

(declare-fun res!648964 () Bool)

(assert (=> d!412507 (=> (not res!648964) (not e!914887))))

(assert (=> d!412507 (= res!648964 (rulesInvariant!2119 Lexer!2273 (rules!11360 thiss!10022)))))

(declare-fun Unit!22585 () Unit!22533)

(assert (=> d!412507 (= (lemmaInvariant!307 thiss!10022) Unit!22585)))

(declare-fun b!1433252 () Bool)

(declare-fun res!648965 () Bool)

(assert (=> b!1433252 (=> (not res!648965) (not e!914887))))

(declare-fun rulesProduceEachTokenIndividually!837 (LexerInterface!2275 List!14949 BalanceConc!10038) Bool)

(assert (=> b!1433252 (= res!648965 (rulesProduceEachTokenIndividually!837 Lexer!2273 (rules!11360 thiss!10022) (tokens!1964 thiss!10022)))))

(declare-fun b!1433253 () Bool)

(declare-fun separableTokens!221 (LexerInterface!2275 BalanceConc!10038 List!14949) Bool)

(assert (=> b!1433253 (= e!914887 (separableTokens!221 Lexer!2273 (tokens!1964 thiss!10022) (rules!11360 thiss!10022)))))

(assert (= (and d!412507 res!648964) b!1433252))

(assert (= (and b!1433252 res!648965) b!1433253))

(assert (=> d!412507 m!1634297))

(declare-fun m!1634819 () Bool)

(assert (=> b!1433252 m!1634819))

(declare-fun m!1634821 () Bool)

(assert (=> b!1433253 m!1634821))

(assert (=> b!1433002 d!412507))

(declare-fun d!412509 () Bool)

(declare-fun e!914888 () Bool)

(assert (=> d!412509 e!914888))

(declare-fun res!648966 () Bool)

(assert (=> d!412509 (=> (not res!648966) (not e!914888))))

(assert (=> d!412509 (= res!648966 (rulesInvariant!2119 Lexer!2273 (rules!11360 other!32)))))

(declare-fun Unit!22586 () Unit!22533)

(assert (=> d!412509 (= (lemmaInvariant!307 other!32) Unit!22586)))

(declare-fun b!1433254 () Bool)

(declare-fun res!648967 () Bool)

(assert (=> b!1433254 (=> (not res!648967) (not e!914888))))

(assert (=> b!1433254 (= res!648967 (rulesProduceEachTokenIndividually!837 Lexer!2273 (rules!11360 other!32) (tokens!1964 other!32)))))

(declare-fun b!1433255 () Bool)

(assert (=> b!1433255 (= e!914888 (separableTokens!221 Lexer!2273 (tokens!1964 other!32) (rules!11360 other!32)))))

(assert (= (and d!412509 res!648966) b!1433254))

(assert (= (and b!1433254 res!648967) b!1433255))

(declare-fun m!1634823 () Bool)

(assert (=> d!412509 m!1634823))

(declare-fun m!1634825 () Bool)

(assert (=> b!1433254 m!1634825))

(declare-fun m!1634827 () Bool)

(assert (=> b!1433255 m!1634827))

(assert (=> b!1433002 d!412509))

(declare-fun d!412511 () Bool)

(declare-fun res!648972 () Bool)

(declare-fun e!914893 () Bool)

(assert (=> d!412511 (=> res!648972 e!914893)))

(assert (=> d!412511 (= res!648972 (or (not ((_ is Cons!14882) lt!487572)) (not ((_ is Cons!14882) (t!127175 lt!487572)))))))

(assert (=> d!412511 (= (tokensListTwoByTwoPredicateSeparableList!233 Lexer!2273 lt!487572 (rules!11360 thiss!10022)) e!914893)))

(declare-fun b!1433260 () Bool)

(declare-fun e!914894 () Bool)

(assert (=> b!1433260 (= e!914893 e!914894)))

(declare-fun res!648973 () Bool)

(assert (=> b!1433260 (=> (not res!648973) (not e!914894))))

(assert (=> b!1433260 (= res!648973 (separableTokensPredicate!510 Lexer!2273 (h!20283 lt!487572) (h!20283 (t!127175 lt!487572)) (rules!11360 thiss!10022)))))

(declare-fun lt!488016 () Unit!22533)

(declare-fun Unit!22587 () Unit!22533)

(assert (=> b!1433260 (= lt!488016 Unit!22587)))

(assert (=> b!1433260 (> (size!12211 (charsOf!1511 (h!20283 (t!127175 lt!487572)))) 0)))

(declare-fun lt!488011 () Unit!22533)

(declare-fun Unit!22588 () Unit!22533)

(assert (=> b!1433260 (= lt!488011 Unit!22588)))

(assert (=> b!1433260 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) (h!20283 (t!127175 lt!487572)))))

(declare-fun lt!488015 () Unit!22533)

(declare-fun Unit!22589 () Unit!22533)

(assert (=> b!1433260 (= lt!488015 Unit!22589)))

(assert (=> b!1433260 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) (h!20283 lt!487572))))

(declare-fun lt!488012 () Unit!22533)

(declare-fun lt!488017 () Unit!22533)

(assert (=> b!1433260 (= lt!488012 lt!488017)))

(assert (=> b!1433260 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) (h!20283 (t!127175 lt!487572)))))

(assert (=> b!1433260 (= lt!488017 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!393 Lexer!2273 (rules!11360 thiss!10022) lt!487572 (h!20283 (t!127175 lt!487572))))))

(declare-fun lt!488014 () Unit!22533)

(declare-fun lt!488013 () Unit!22533)

(assert (=> b!1433260 (= lt!488014 lt!488013)))

(assert (=> b!1433260 (rulesProduceIndividualToken!1208 Lexer!2273 (rules!11360 thiss!10022) (h!20283 lt!487572))))

(assert (=> b!1433260 (= lt!488013 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!393 Lexer!2273 (rules!11360 thiss!10022) lt!487572 (h!20283 lt!487572)))))

(declare-fun b!1433261 () Bool)

(assert (=> b!1433261 (= e!914894 (tokensListTwoByTwoPredicateSeparableList!233 Lexer!2273 (Cons!14882 (h!20283 (t!127175 lt!487572)) (t!127175 (t!127175 lt!487572))) (rules!11360 thiss!10022)))))

(assert (= (and d!412511 (not res!648972)) b!1433260))

(assert (= (and b!1433260 res!648973) b!1433261))

(declare-fun m!1634829 () Bool)

(assert (=> b!1433260 m!1634829))

(assert (=> b!1433260 m!1634597))

(assert (=> b!1433260 m!1634829))

(declare-fun m!1634831 () Bool)

(assert (=> b!1433260 m!1634831))

(declare-fun m!1634833 () Bool)

(assert (=> b!1433260 m!1634833))

(declare-fun m!1634835 () Bool)

(assert (=> b!1433260 m!1634835))

(declare-fun m!1634837 () Bool)

(assert (=> b!1433260 m!1634837))

(declare-fun m!1634839 () Bool)

(assert (=> b!1433260 m!1634839))

(declare-fun m!1634841 () Bool)

(assert (=> b!1433261 m!1634841))

(assert (=> b!1433001 d!412511))

(declare-fun d!412513 () Bool)

(assert (=> d!412513 (= (get!4551 lt!487571) (v!22322 lt!487571))))

(assert (=> b!1432998 d!412513))

(declare-fun d!412515 () Bool)

(assert (=> d!412515 (= (inv!19758 (tokens!1964 thiss!10022)) (isBalanced!1499 (c!235524 (tokens!1964 thiss!10022))))))

(declare-fun bs!340918 () Bool)

(assert (= bs!340918 d!412515))

(declare-fun m!1634843 () Bool)

(assert (=> bs!340918 m!1634843))

(assert (=> b!1432997 d!412515))

(declare-fun d!412517 () Bool)

(declare-fun e!914916 () Bool)

(assert (=> d!412517 e!914916))

(declare-fun res!648984 () Bool)

(assert (=> d!412517 (=> (not res!648984) (not e!914916))))

(declare-fun seqFromList!1692 (List!14948) BalanceConc!10038)

(assert (=> d!412517 (= res!648984 (= (list!5912 (_1!7938 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) (print!1057 Lexer!2273 (seqFromList!1692 lt!487567))))) lt!487567))))

(declare-fun lt!488099 () Unit!22533)

(declare-fun e!914917 () Unit!22533)

(assert (=> d!412517 (= lt!488099 e!914917)))

(declare-fun c!235560 () Bool)

(assert (=> d!412517 (= c!235560 (or ((_ is Nil!14882) lt!487567) ((_ is Nil!14882) (t!127175 lt!487567))))))

(assert (=> d!412517 (not (isEmpty!9241 (rules!11360 thiss!10022)))))

(assert (=> d!412517 (= (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 thiss!10022) lt!487567) lt!488099)))

(declare-fun b!1433289 () Bool)

(declare-fun Unit!22590 () Unit!22533)

(assert (=> b!1433289 (= e!914917 Unit!22590)))

(declare-fun b!1433290 () Bool)

(declare-fun Unit!22591 () Unit!22533)

(assert (=> b!1433290 (= e!914917 Unit!22591)))

(declare-fun lt!488108 () BalanceConc!10036)

(assert (=> b!1433290 (= lt!488108 (print!1057 Lexer!2273 (seqFromList!1692 lt!487567)))))

(declare-fun lt!488097 () BalanceConc!10036)

(assert (=> b!1433290 (= lt!488097 (print!1057 Lexer!2273 (seqFromList!1692 (t!127175 lt!487567))))))

(declare-fun lt!488105 () tuple2!14104)

(assert (=> b!1433290 (= lt!488105 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) lt!488097))))

(declare-fun lt!488103 () List!14946)

(declare-fun list!5916 (BalanceConc!10036) List!14946)

(assert (=> b!1433290 (= lt!488103 (list!5916 (charsOf!1511 (h!20283 lt!487567))))))

(declare-fun lt!488098 () List!14946)

(assert (=> b!1433290 (= lt!488098 (list!5916 lt!488097))))

(declare-fun lt!488116 () Unit!22533)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!754 (List!14946 List!14946) Unit!22533)

(assert (=> b!1433290 (= lt!488116 (lemmaConcatTwoListThenFirstIsPrefix!754 lt!488103 lt!488098))))

(declare-fun isPrefix!1189 (List!14946 List!14946) Bool)

(assert (=> b!1433290 (isPrefix!1189 lt!488103 (++!3980 lt!488103 lt!488098))))

(declare-fun lt!488117 () Unit!22533)

(assert (=> b!1433290 (= lt!488117 lt!488116)))

(declare-fun lt!488112 () Unit!22533)

(assert (=> b!1433290 (= lt!488112 (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 thiss!10022) (t!127175 lt!487567)))))

(declare-fun lt!488092 () Unit!22533)

(declare-fun seqFromListBHdTlConstructive!83 (Token!4884 List!14948 BalanceConc!10038) Unit!22533)

(assert (=> b!1433290 (= lt!488092 (seqFromListBHdTlConstructive!83 (h!20283 (t!127175 lt!487567)) (t!127175 (t!127175 lt!487567)) (_1!7938 lt!488105)))))

(declare-fun prepend!403 (BalanceConc!10038 Token!4884) BalanceConc!10038)

(assert (=> b!1433290 (= (list!5912 (_1!7938 lt!488105)) (list!5912 (prepend!403 (seqFromList!1692 (t!127175 (t!127175 lt!487567))) (h!20283 (t!127175 lt!487567)))))))

(declare-fun lt!488110 () Unit!22533)

(assert (=> b!1433290 (= lt!488110 lt!488092)))

(declare-datatypes ((tuple2!14106 0))(
  ( (tuple2!14107 (_1!7939 Token!4884) (_2!7939 List!14946)) )
))
(declare-datatypes ((Option!2839 0))(
  ( (None!2838) (Some!2838 (v!22332 tuple2!14106)) )
))
(declare-fun lt!488104 () Option!2839)

(declare-fun maxPrefix!1179 (LexerInterface!2275 List!14949 List!14946) Option!2839)

(assert (=> b!1433290 (= lt!488104 (maxPrefix!1179 Lexer!2273 (rules!11360 thiss!10022) (list!5916 lt!488108)))))

(declare-fun printTailRec!675 (LexerInterface!2275 BalanceConc!10038 Int BalanceConc!10036) BalanceConc!10036)

(assert (=> b!1433290 (= (print!1057 Lexer!2273 (singletonSeq!1218 (h!20283 lt!487567))) (printTailRec!675 Lexer!2273 (singletonSeq!1218 (h!20283 lt!487567)) 0 (BalanceConc!10037 Empty!5048)))))

(declare-fun lt!488093 () Unit!22533)

(declare-fun Unit!22592 () Unit!22533)

(assert (=> b!1433290 (= lt!488093 Unit!22592)))

(declare-fun lt!488094 () Unit!22533)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!227 (LexerInterface!2275 List!14949 List!14946 List!14946) Unit!22533)

(assert (=> b!1433290 (= lt!488094 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!227 Lexer!2273 (rules!11360 thiss!10022) (list!5916 (charsOf!1511 (h!20283 lt!487567))) (list!5916 lt!488097)))))

(assert (=> b!1433290 (= (list!5916 (charsOf!1511 (h!20283 lt!487567))) (originalCharacters!3473 (h!20283 lt!487567)))))

(declare-fun lt!488102 () Unit!22533)

(declare-fun Unit!22593 () Unit!22533)

(assert (=> b!1433290 (= lt!488102 Unit!22593)))

(declare-fun head!2885 (List!14946) C!8028)

(assert (=> b!1433290 (= (list!5916 (singletonSeq!1219 (apply!3805 (charsOf!1511 (h!20283 (t!127175 lt!487567))) 0))) (Cons!14880 (head!2885 (originalCharacters!3473 (h!20283 (t!127175 lt!487567)))) Nil!14880))))

(declare-fun lt!488106 () Unit!22533)

(declare-fun Unit!22594 () Unit!22533)

(assert (=> b!1433290 (= lt!488106 Unit!22594)))

(assert (=> b!1433290 (= (list!5916 (singletonSeq!1219 (apply!3805 (charsOf!1511 (h!20283 (t!127175 lt!487567))) 0))) (Cons!14880 (head!2885 (list!5916 lt!488097)) Nil!14880))))

(declare-fun lt!488111 () Unit!22533)

(declare-fun Unit!22595 () Unit!22533)

(assert (=> b!1433290 (= lt!488111 Unit!22595)))

(declare-fun head!2886 (BalanceConc!10036) C!8028)

(assert (=> b!1433290 (= (list!5916 (singletonSeq!1219 (apply!3805 (charsOf!1511 (h!20283 (t!127175 lt!487567))) 0))) (Cons!14880 (head!2886 lt!488097) Nil!14880))))

(declare-fun lt!488095 () Unit!22533)

(declare-fun Unit!22596 () Unit!22533)

(assert (=> b!1433290 (= lt!488095 Unit!22596)))

(declare-fun isDefined!2300 (Option!2839) Bool)

(assert (=> b!1433290 (isDefined!2300 (maxPrefix!1179 Lexer!2273 (rules!11360 thiss!10022) (originalCharacters!3473 (h!20283 lt!487567))))))

(declare-fun lt!488114 () Unit!22533)

(declare-fun Unit!22597 () Unit!22533)

(assert (=> b!1433290 (= lt!488114 Unit!22597)))

(assert (=> b!1433290 (isDefined!2300 (maxPrefix!1179 Lexer!2273 (rules!11360 thiss!10022) (list!5916 (charsOf!1511 (h!20283 lt!487567)))))))

(declare-fun lt!488101 () Unit!22533)

(declare-fun Unit!22598 () Unit!22533)

(assert (=> b!1433290 (= lt!488101 Unit!22598)))

(declare-fun lt!488100 () Unit!22533)

(declare-fun Unit!22599 () Unit!22533)

(assert (=> b!1433290 (= lt!488100 Unit!22599)))

(declare-fun get!4553 (Option!2839) tuple2!14106)

(assert (=> b!1433290 (= (_1!7939 (get!4553 (maxPrefix!1179 Lexer!2273 (rules!11360 thiss!10022) (list!5916 (charsOf!1511 (h!20283 lt!487567)))))) (h!20283 lt!487567))))

(declare-fun lt!488113 () Unit!22533)

(declare-fun Unit!22600 () Unit!22533)

(assert (=> b!1433290 (= lt!488113 Unit!22600)))

(declare-fun isEmpty!9245 (List!14946) Bool)

(assert (=> b!1433290 (isEmpty!9245 (_2!7939 (get!4553 (maxPrefix!1179 Lexer!2273 (rules!11360 thiss!10022) (list!5916 (charsOf!1511 (h!20283 lt!487567)))))))))

(declare-fun lt!488115 () Unit!22533)

(declare-fun Unit!22601 () Unit!22533)

(assert (=> b!1433290 (= lt!488115 Unit!22601)))

(declare-fun matchR!1815 (Regex!3925 List!14946) Bool)

(assert (=> b!1433290 (matchR!1815 (regex!2611 (rule!4374 (h!20283 lt!487567))) (list!5916 (charsOf!1511 (h!20283 lt!487567))))))

(declare-fun lt!488109 () Unit!22533)

(declare-fun Unit!22602 () Unit!22533)

(assert (=> b!1433290 (= lt!488109 Unit!22602)))

(assert (=> b!1433290 (= (rule!4374 (h!20283 lt!487567)) (rule!4374 (h!20283 lt!487567)))))

(declare-fun lt!488096 () Unit!22533)

(declare-fun Unit!22603 () Unit!22533)

(assert (=> b!1433290 (= lt!488096 Unit!22603)))

(declare-fun lt!488107 () Unit!22533)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!25 (LexerInterface!2275 List!14949 Token!4884 Rule!5022 List!14946) Unit!22533)

(assert (=> b!1433290 (= lt!488107 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!25 Lexer!2273 (rules!11360 thiss!10022) (h!20283 lt!487567) (rule!4374 (h!20283 lt!487567)) (list!5916 lt!488097)))))

(declare-fun b!1433291 () Bool)

(assert (=> b!1433291 (= e!914916 (isEmpty!9242 (_2!7938 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) (print!1057 Lexer!2273 (seqFromList!1692 lt!487567))))))))

(assert (= (and d!412517 c!235560) b!1433289))

(assert (= (and d!412517 (not c!235560)) b!1433290))

(assert (= (and d!412517 res!648984) b!1433291))

(declare-fun m!1634865 () Bool)

(assert (=> d!412517 m!1634865))

(declare-fun m!1634867 () Bool)

(assert (=> d!412517 m!1634867))

(declare-fun m!1634869 () Bool)

(assert (=> d!412517 m!1634869))

(assert (=> d!412517 m!1634869))

(assert (=> d!412517 m!1634865))

(assert (=> d!412517 m!1634145))

(declare-fun m!1634871 () Bool)

(assert (=> d!412517 m!1634871))

(declare-fun m!1634873 () Bool)

(assert (=> b!1433290 m!1634873))

(declare-fun m!1634875 () Bool)

(assert (=> b!1433290 m!1634875))

(declare-fun m!1634877 () Bool)

(assert (=> b!1433290 m!1634877))

(declare-fun m!1634879 () Bool)

(assert (=> b!1433290 m!1634879))

(declare-fun m!1634881 () Bool)

(assert (=> b!1433290 m!1634881))

(declare-fun m!1634883 () Bool)

(assert (=> b!1433290 m!1634883))

(assert (=> b!1433290 m!1634873))

(declare-fun m!1634885 () Bool)

(assert (=> b!1433290 m!1634885))

(declare-fun m!1634887 () Bool)

(assert (=> b!1433290 m!1634887))

(declare-fun m!1634889 () Bool)

(assert (=> b!1433290 m!1634889))

(assert (=> b!1433290 m!1634869))

(assert (=> b!1433290 m!1634869))

(assert (=> b!1433290 m!1634865))

(declare-fun m!1634891 () Bool)

(assert (=> b!1433290 m!1634891))

(declare-fun m!1634893 () Bool)

(assert (=> b!1433290 m!1634893))

(declare-fun m!1634895 () Bool)

(assert (=> b!1433290 m!1634895))

(assert (=> b!1433290 m!1634893))

(declare-fun m!1634897 () Bool)

(assert (=> b!1433290 m!1634897))

(assert (=> b!1433290 m!1634893))

(declare-fun m!1634899 () Bool)

(assert (=> b!1433290 m!1634899))

(assert (=> b!1433290 m!1634891))

(declare-fun m!1634901 () Bool)

(assert (=> b!1433290 m!1634901))

(declare-fun m!1634903 () Bool)

(assert (=> b!1433290 m!1634903))

(declare-fun m!1634905 () Bool)

(assert (=> b!1433290 m!1634905))

(declare-fun m!1634907 () Bool)

(assert (=> b!1433290 m!1634907))

(assert (=> b!1433290 m!1634903))

(declare-fun m!1634909 () Bool)

(assert (=> b!1433290 m!1634909))

(declare-fun m!1634911 () Bool)

(assert (=> b!1433290 m!1634911))

(declare-fun m!1634913 () Bool)

(assert (=> b!1433290 m!1634913))

(declare-fun m!1634915 () Bool)

(assert (=> b!1433290 m!1634915))

(declare-fun m!1634917 () Bool)

(assert (=> b!1433290 m!1634917))

(assert (=> b!1433290 m!1634885))

(assert (=> b!1433290 m!1634915))

(declare-fun m!1634919 () Bool)

(assert (=> b!1433290 m!1634919))

(declare-fun m!1634921 () Bool)

(assert (=> b!1433290 m!1634921))

(declare-fun m!1634923 () Bool)

(assert (=> b!1433290 m!1634923))

(assert (=> b!1433290 m!1634879))

(assert (=> b!1433290 m!1634891))

(declare-fun m!1634925 () Bool)

(assert (=> b!1433290 m!1634925))

(assert (=> b!1433290 m!1634891))

(assert (=> b!1433290 m!1634911))

(declare-fun m!1634927 () Bool)

(assert (=> b!1433290 m!1634927))

(declare-fun m!1634929 () Bool)

(assert (=> b!1433290 m!1634929))

(assert (=> b!1433290 m!1634929))

(declare-fun m!1634931 () Bool)

(assert (=> b!1433290 m!1634931))

(assert (=> b!1433290 m!1634883))

(assert (=> b!1433290 m!1634903))

(declare-fun m!1634933 () Bool)

(assert (=> b!1433290 m!1634933))

(declare-fun m!1634935 () Bool)

(assert (=> b!1433290 m!1634935))

(assert (=> b!1433290 m!1634917))

(declare-fun m!1634937 () Bool)

(assert (=> b!1433290 m!1634937))

(assert (=> b!1433290 m!1634881))

(assert (=> b!1433290 m!1634905))

(assert (=> b!1433290 m!1634911))

(declare-fun m!1634939 () Bool)

(assert (=> b!1433290 m!1634939))

(assert (=> b!1433290 m!1634911))

(assert (=> b!1433290 m!1634875))

(declare-fun m!1634941 () Bool)

(assert (=> b!1433290 m!1634941))

(declare-fun m!1634943 () Bool)

(assert (=> b!1433290 m!1634943))

(assert (=> b!1433291 m!1634869))

(assert (=> b!1433291 m!1634869))

(assert (=> b!1433291 m!1634865))

(assert (=> b!1433291 m!1634865))

(assert (=> b!1433291 m!1634867))

(declare-fun m!1634945 () Bool)

(assert (=> b!1433291 m!1634945))

(assert (=> b!1432999 d!412517))

(declare-fun d!412523 () Bool)

(declare-fun e!914928 () Bool)

(assert (=> d!412523 e!914928))

(declare-fun res!648999 () Bool)

(assert (=> d!412523 (=> (not res!648999) (not e!914928))))

(declare-fun lt!488136 () BalanceConc!10036)

(assert (=> d!412523 (= res!648999 (= (list!5912 (_1!7938 (lex!1040 Lexer!2273 (rules!11360 other!32) lt!488136))) (list!5912 (tokens!1964 other!32))))))

(assert (=> d!412523 (= lt!488136 (print!1057 Lexer!2273 (tokens!1964 other!32)))))

(declare-fun lt!488137 () Unit!22533)

(assert (=> d!412523 (= lt!488137 (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 other!32) (list!5912 (tokens!1964 other!32))))))

(assert (=> d!412523 (= (print!1056 other!32) lt!488136)))

(declare-fun b!1433306 () Bool)

(assert (=> b!1433306 (= e!914928 (isEmpty!9245 (list!5916 (_2!7938 (lex!1040 Lexer!2273 (rules!11360 other!32) lt!488136)))))))

(assert (= (and d!412523 res!648999) b!1433306))

(assert (=> d!412523 m!1634033))

(declare-fun m!1634995 () Bool)

(assert (=> d!412523 m!1634995))

(declare-fun m!1634997 () Bool)

(assert (=> d!412523 m!1634997))

(assert (=> d!412523 m!1634033))

(assert (=> d!412523 m!1634061))

(declare-fun m!1634999 () Bool)

(assert (=> d!412523 m!1634999))

(assert (=> b!1433306 m!1634997))

(declare-fun m!1635001 () Bool)

(assert (=> b!1433306 m!1635001))

(assert (=> b!1433306 m!1635001))

(declare-fun m!1635003 () Bool)

(assert (=> b!1433306 m!1635003))

(assert (=> b!1432999 d!412523))

(declare-fun d!412537 () Bool)

(declare-fun c!235563 () Bool)

(assert (=> d!412537 (= c!235563 ((_ is Cons!14882) lt!487572))))

(declare-fun e!914931 () List!14946)

(assert (=> d!412537 (= (printList!703 Lexer!2273 lt!487572) e!914931)))

(declare-fun b!1433311 () Bool)

(assert (=> b!1433311 (= e!914931 (++!3980 (list!5916 (charsOf!1511 (h!20283 lt!487572))) (printList!703 Lexer!2273 (t!127175 lt!487572))))))

(declare-fun b!1433312 () Bool)

(assert (=> b!1433312 (= e!914931 Nil!14880)))

(assert (= (and d!412537 c!235563) b!1433311))

(assert (= (and d!412537 (not c!235563)) b!1433312))

(declare-fun m!1635009 () Bool)

(assert (=> b!1433311 m!1635009))

(assert (=> b!1433311 m!1635009))

(declare-fun m!1635011 () Bool)

(assert (=> b!1433311 m!1635011))

(declare-fun m!1635013 () Bool)

(assert (=> b!1433311 m!1635013))

(assert (=> b!1433311 m!1635011))

(assert (=> b!1433311 m!1635013))

(declare-fun m!1635015 () Bool)

(assert (=> b!1433311 m!1635015))

(assert (=> b!1432999 d!412537))

(declare-fun d!412543 () Bool)

(assert (=> d!412543 (= (isEmpty!9234 lt!487571) (not ((_ is Some!2836) lt!487571)))))

(assert (=> b!1432999 d!412543))

(declare-fun d!412545 () Bool)

(declare-fun e!914932 () Bool)

(assert (=> d!412545 e!914932))

(declare-fun res!649000 () Bool)

(assert (=> d!412545 (=> (not res!649000) (not e!914932))))

(assert (=> d!412545 (= res!649000 (= (list!5912 (_1!7938 (lex!1040 Lexer!2273 (rules!11360 other!32) (print!1057 Lexer!2273 (seqFromList!1692 lt!487565))))) lt!487565))))

(declare-fun lt!488149 () Unit!22533)

(declare-fun e!914933 () Unit!22533)

(assert (=> d!412545 (= lt!488149 e!914933)))

(declare-fun c!235564 () Bool)

(assert (=> d!412545 (= c!235564 (or ((_ is Nil!14882) lt!487565) ((_ is Nil!14882) (t!127175 lt!487565))))))

(assert (=> d!412545 (not (isEmpty!9241 (rules!11360 other!32)))))

(assert (=> d!412545 (= (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 other!32) lt!487565) lt!488149)))

(declare-fun b!1433313 () Bool)

(declare-fun Unit!22607 () Unit!22533)

(assert (=> b!1433313 (= e!914933 Unit!22607)))

(declare-fun b!1433314 () Bool)

(declare-fun Unit!22608 () Unit!22533)

(assert (=> b!1433314 (= e!914933 Unit!22608)))

(declare-fun lt!488158 () BalanceConc!10036)

(assert (=> b!1433314 (= lt!488158 (print!1057 Lexer!2273 (seqFromList!1692 lt!487565)))))

(declare-fun lt!488147 () BalanceConc!10036)

(assert (=> b!1433314 (= lt!488147 (print!1057 Lexer!2273 (seqFromList!1692 (t!127175 lt!487565))))))

(declare-fun lt!488155 () tuple2!14104)

(assert (=> b!1433314 (= lt!488155 (lex!1040 Lexer!2273 (rules!11360 other!32) lt!488147))))

(declare-fun lt!488153 () List!14946)

(assert (=> b!1433314 (= lt!488153 (list!5916 (charsOf!1511 (h!20283 lt!487565))))))

(declare-fun lt!488148 () List!14946)

(assert (=> b!1433314 (= lt!488148 (list!5916 lt!488147))))

(declare-fun lt!488166 () Unit!22533)

(assert (=> b!1433314 (= lt!488166 (lemmaConcatTwoListThenFirstIsPrefix!754 lt!488153 lt!488148))))

(assert (=> b!1433314 (isPrefix!1189 lt!488153 (++!3980 lt!488153 lt!488148))))

(declare-fun lt!488167 () Unit!22533)

(assert (=> b!1433314 (= lt!488167 lt!488166)))

(declare-fun lt!488162 () Unit!22533)

(assert (=> b!1433314 (= lt!488162 (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 other!32) (t!127175 lt!487565)))))

(declare-fun lt!488142 () Unit!22533)

(assert (=> b!1433314 (= lt!488142 (seqFromListBHdTlConstructive!83 (h!20283 (t!127175 lt!487565)) (t!127175 (t!127175 lt!487565)) (_1!7938 lt!488155)))))

(assert (=> b!1433314 (= (list!5912 (_1!7938 lt!488155)) (list!5912 (prepend!403 (seqFromList!1692 (t!127175 (t!127175 lt!487565))) (h!20283 (t!127175 lt!487565)))))))

(declare-fun lt!488160 () Unit!22533)

(assert (=> b!1433314 (= lt!488160 lt!488142)))

(declare-fun lt!488154 () Option!2839)

(assert (=> b!1433314 (= lt!488154 (maxPrefix!1179 Lexer!2273 (rules!11360 other!32) (list!5916 lt!488158)))))

(assert (=> b!1433314 (= (print!1057 Lexer!2273 (singletonSeq!1218 (h!20283 lt!487565))) (printTailRec!675 Lexer!2273 (singletonSeq!1218 (h!20283 lt!487565)) 0 (BalanceConc!10037 Empty!5048)))))

(declare-fun lt!488143 () Unit!22533)

(declare-fun Unit!22609 () Unit!22533)

(assert (=> b!1433314 (= lt!488143 Unit!22609)))

(declare-fun lt!488144 () Unit!22533)

(assert (=> b!1433314 (= lt!488144 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!227 Lexer!2273 (rules!11360 other!32) (list!5916 (charsOf!1511 (h!20283 lt!487565))) (list!5916 lt!488147)))))

(assert (=> b!1433314 (= (list!5916 (charsOf!1511 (h!20283 lt!487565))) (originalCharacters!3473 (h!20283 lt!487565)))))

(declare-fun lt!488152 () Unit!22533)

(declare-fun Unit!22610 () Unit!22533)

(assert (=> b!1433314 (= lt!488152 Unit!22610)))

(assert (=> b!1433314 (= (list!5916 (singletonSeq!1219 (apply!3805 (charsOf!1511 (h!20283 (t!127175 lt!487565))) 0))) (Cons!14880 (head!2885 (originalCharacters!3473 (h!20283 (t!127175 lt!487565)))) Nil!14880))))

(declare-fun lt!488156 () Unit!22533)

(declare-fun Unit!22611 () Unit!22533)

(assert (=> b!1433314 (= lt!488156 Unit!22611)))

(assert (=> b!1433314 (= (list!5916 (singletonSeq!1219 (apply!3805 (charsOf!1511 (h!20283 (t!127175 lt!487565))) 0))) (Cons!14880 (head!2885 (list!5916 lt!488147)) Nil!14880))))

(declare-fun lt!488161 () Unit!22533)

(declare-fun Unit!22612 () Unit!22533)

(assert (=> b!1433314 (= lt!488161 Unit!22612)))

(assert (=> b!1433314 (= (list!5916 (singletonSeq!1219 (apply!3805 (charsOf!1511 (h!20283 (t!127175 lt!487565))) 0))) (Cons!14880 (head!2886 lt!488147) Nil!14880))))

(declare-fun lt!488145 () Unit!22533)

(declare-fun Unit!22613 () Unit!22533)

(assert (=> b!1433314 (= lt!488145 Unit!22613)))

(assert (=> b!1433314 (isDefined!2300 (maxPrefix!1179 Lexer!2273 (rules!11360 other!32) (originalCharacters!3473 (h!20283 lt!487565))))))

(declare-fun lt!488164 () Unit!22533)

(declare-fun Unit!22614 () Unit!22533)

(assert (=> b!1433314 (= lt!488164 Unit!22614)))

(assert (=> b!1433314 (isDefined!2300 (maxPrefix!1179 Lexer!2273 (rules!11360 other!32) (list!5916 (charsOf!1511 (h!20283 lt!487565)))))))

(declare-fun lt!488151 () Unit!22533)

(declare-fun Unit!22615 () Unit!22533)

(assert (=> b!1433314 (= lt!488151 Unit!22615)))

(declare-fun lt!488150 () Unit!22533)

(declare-fun Unit!22616 () Unit!22533)

(assert (=> b!1433314 (= lt!488150 Unit!22616)))

(assert (=> b!1433314 (= (_1!7939 (get!4553 (maxPrefix!1179 Lexer!2273 (rules!11360 other!32) (list!5916 (charsOf!1511 (h!20283 lt!487565)))))) (h!20283 lt!487565))))

(declare-fun lt!488163 () Unit!22533)

(declare-fun Unit!22617 () Unit!22533)

(assert (=> b!1433314 (= lt!488163 Unit!22617)))

(assert (=> b!1433314 (isEmpty!9245 (_2!7939 (get!4553 (maxPrefix!1179 Lexer!2273 (rules!11360 other!32) (list!5916 (charsOf!1511 (h!20283 lt!487565)))))))))

(declare-fun lt!488165 () Unit!22533)

(declare-fun Unit!22618 () Unit!22533)

(assert (=> b!1433314 (= lt!488165 Unit!22618)))

(assert (=> b!1433314 (matchR!1815 (regex!2611 (rule!4374 (h!20283 lt!487565))) (list!5916 (charsOf!1511 (h!20283 lt!487565))))))

(declare-fun lt!488159 () Unit!22533)

(declare-fun Unit!22619 () Unit!22533)

(assert (=> b!1433314 (= lt!488159 Unit!22619)))

(assert (=> b!1433314 (= (rule!4374 (h!20283 lt!487565)) (rule!4374 (h!20283 lt!487565)))))

(declare-fun lt!488146 () Unit!22533)

(declare-fun Unit!22620 () Unit!22533)

(assert (=> b!1433314 (= lt!488146 Unit!22620)))

(declare-fun lt!488157 () Unit!22533)

(assert (=> b!1433314 (= lt!488157 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!25 Lexer!2273 (rules!11360 other!32) (h!20283 lt!487565) (rule!4374 (h!20283 lt!487565)) (list!5916 lt!488147)))))

(declare-fun b!1433315 () Bool)

(assert (=> b!1433315 (= e!914932 (isEmpty!9242 (_2!7938 (lex!1040 Lexer!2273 (rules!11360 other!32) (print!1057 Lexer!2273 (seqFromList!1692 lt!487565))))))))

(assert (= (and d!412545 c!235564) b!1433313))

(assert (= (and d!412545 (not c!235564)) b!1433314))

(assert (= (and d!412545 res!649000) b!1433315))

(declare-fun m!1635017 () Bool)

(assert (=> d!412545 m!1635017))

(declare-fun m!1635019 () Bool)

(assert (=> d!412545 m!1635019))

(declare-fun m!1635021 () Bool)

(assert (=> d!412545 m!1635021))

(assert (=> d!412545 m!1635021))

(assert (=> d!412545 m!1635017))

(declare-fun m!1635023 () Bool)

(assert (=> d!412545 m!1635023))

(declare-fun m!1635025 () Bool)

(assert (=> d!412545 m!1635025))

(declare-fun m!1635027 () Bool)

(assert (=> b!1433314 m!1635027))

(declare-fun m!1635029 () Bool)

(assert (=> b!1433314 m!1635029))

(declare-fun m!1635031 () Bool)

(assert (=> b!1433314 m!1635031))

(declare-fun m!1635033 () Bool)

(assert (=> b!1433314 m!1635033))

(declare-fun m!1635035 () Bool)

(assert (=> b!1433314 m!1635035))

(declare-fun m!1635037 () Bool)

(assert (=> b!1433314 m!1635037))

(assert (=> b!1433314 m!1635027))

(declare-fun m!1635039 () Bool)

(assert (=> b!1433314 m!1635039))

(declare-fun m!1635041 () Bool)

(assert (=> b!1433314 m!1635041))

(declare-fun m!1635043 () Bool)

(assert (=> b!1433314 m!1635043))

(assert (=> b!1433314 m!1635021))

(assert (=> b!1433314 m!1635021))

(assert (=> b!1433314 m!1635017))

(declare-fun m!1635045 () Bool)

(assert (=> b!1433314 m!1635045))

(declare-fun m!1635047 () Bool)

(assert (=> b!1433314 m!1635047))

(declare-fun m!1635049 () Bool)

(assert (=> b!1433314 m!1635049))

(assert (=> b!1433314 m!1635047))

(declare-fun m!1635051 () Bool)

(assert (=> b!1433314 m!1635051))

(assert (=> b!1433314 m!1635047))

(declare-fun m!1635053 () Bool)

(assert (=> b!1433314 m!1635053))

(assert (=> b!1433314 m!1635045))

(declare-fun m!1635055 () Bool)

(assert (=> b!1433314 m!1635055))

(declare-fun m!1635057 () Bool)

(assert (=> b!1433314 m!1635057))

(declare-fun m!1635059 () Bool)

(assert (=> b!1433314 m!1635059))

(declare-fun m!1635061 () Bool)

(assert (=> b!1433314 m!1635061))

(assert (=> b!1433314 m!1635057))

(declare-fun m!1635063 () Bool)

(assert (=> b!1433314 m!1635063))

(declare-fun m!1635065 () Bool)

(assert (=> b!1433314 m!1635065))

(declare-fun m!1635067 () Bool)

(assert (=> b!1433314 m!1635067))

(declare-fun m!1635069 () Bool)

(assert (=> b!1433314 m!1635069))

(declare-fun m!1635071 () Bool)

(assert (=> b!1433314 m!1635071))

(assert (=> b!1433314 m!1635039))

(assert (=> b!1433314 m!1635069))

(declare-fun m!1635073 () Bool)

(assert (=> b!1433314 m!1635073))

(declare-fun m!1635075 () Bool)

(assert (=> b!1433314 m!1635075))

(declare-fun m!1635077 () Bool)

(assert (=> b!1433314 m!1635077))

(assert (=> b!1433314 m!1635033))

(assert (=> b!1433314 m!1635045))

(declare-fun m!1635079 () Bool)

(assert (=> b!1433314 m!1635079))

(assert (=> b!1433314 m!1635045))

(assert (=> b!1433314 m!1635065))

(declare-fun m!1635081 () Bool)

(assert (=> b!1433314 m!1635081))

(declare-fun m!1635083 () Bool)

(assert (=> b!1433314 m!1635083))

(assert (=> b!1433314 m!1635083))

(declare-fun m!1635085 () Bool)

(assert (=> b!1433314 m!1635085))

(assert (=> b!1433314 m!1635037))

(assert (=> b!1433314 m!1635057))

(declare-fun m!1635087 () Bool)

(assert (=> b!1433314 m!1635087))

(declare-fun m!1635089 () Bool)

(assert (=> b!1433314 m!1635089))

(assert (=> b!1433314 m!1635071))

(declare-fun m!1635091 () Bool)

(assert (=> b!1433314 m!1635091))

(assert (=> b!1433314 m!1635035))

(assert (=> b!1433314 m!1635059))

(assert (=> b!1433314 m!1635065))

(declare-fun m!1635093 () Bool)

(assert (=> b!1433314 m!1635093))

(assert (=> b!1433314 m!1635065))

(assert (=> b!1433314 m!1635029))

(declare-fun m!1635095 () Bool)

(assert (=> b!1433314 m!1635095))

(declare-fun m!1635097 () Bool)

(assert (=> b!1433314 m!1635097))

(assert (=> b!1433315 m!1635021))

(assert (=> b!1433315 m!1635021))

(assert (=> b!1433315 m!1635017))

(assert (=> b!1433315 m!1635017))

(assert (=> b!1433315 m!1635019))

(declare-fun m!1635099 () Bool)

(assert (=> b!1433315 m!1635099))

(assert (=> b!1432999 d!412545))

(declare-fun d!412547 () Bool)

(declare-fun e!914934 () Bool)

(assert (=> d!412547 e!914934))

(declare-fun res!649001 () Bool)

(assert (=> d!412547 (=> (not res!649001) (not e!914934))))

(declare-fun lt!488168 () BalanceConc!10036)

(assert (=> d!412547 (= res!649001 (= (list!5912 (_1!7938 (lex!1040 Lexer!2273 (rules!11360 lt!487569) lt!488168))) (list!5912 (tokens!1964 lt!487569))))))

(assert (=> d!412547 (= lt!488168 (print!1057 Lexer!2273 (tokens!1964 lt!487569)))))

(declare-fun lt!488169 () Unit!22533)

(assert (=> d!412547 (= lt!488169 (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 lt!487569) (list!5912 (tokens!1964 lt!487569))))))

(assert (=> d!412547 (= (print!1056 lt!487569) lt!488168)))

(declare-fun b!1433316 () Bool)

(assert (=> b!1433316 (= e!914934 (isEmpty!9245 (list!5916 (_2!7938 (lex!1040 Lexer!2273 (rules!11360 lt!487569) lt!488168)))))))

(assert (= (and d!412547 res!649001) b!1433316))

(declare-fun m!1635101 () Bool)

(assert (=> d!412547 m!1635101))

(declare-fun m!1635103 () Bool)

(assert (=> d!412547 m!1635103))

(declare-fun m!1635105 () Bool)

(assert (=> d!412547 m!1635105))

(assert (=> d!412547 m!1635101))

(declare-fun m!1635107 () Bool)

(assert (=> d!412547 m!1635107))

(declare-fun m!1635109 () Bool)

(assert (=> d!412547 m!1635109))

(assert (=> b!1433316 m!1635105))

(declare-fun m!1635111 () Bool)

(assert (=> b!1433316 m!1635111))

(assert (=> b!1433316 m!1635111))

(declare-fun m!1635113 () Bool)

(assert (=> b!1433316 m!1635113))

(assert (=> b!1432999 d!412547))

(declare-fun d!412549 () Bool)

(declare-fun lt!488172 () BalanceConc!10036)

(assert (=> d!412549 (= (list!5916 lt!488172) (printList!703 Lexer!2273 (list!5912 (tokens!1964 other!32))))))

(assert (=> d!412549 (= lt!488172 (printTailRec!675 Lexer!2273 (tokens!1964 other!32) 0 (BalanceConc!10037 Empty!5048)))))

(assert (=> d!412549 (= (print!1057 Lexer!2273 (tokens!1964 other!32)) lt!488172)))

(declare-fun bs!340925 () Bool)

(assert (= bs!340925 d!412549))

(declare-fun m!1635115 () Bool)

(assert (=> bs!340925 m!1635115))

(assert (=> bs!340925 m!1634033))

(assert (=> bs!340925 m!1634033))

(declare-fun m!1635117 () Bool)

(assert (=> bs!340925 m!1635117))

(declare-fun m!1635119 () Bool)

(assert (=> bs!340925 m!1635119))

(assert (=> b!1432999 d!412549))

(declare-fun d!412551 () Bool)

(declare-fun e!914935 () Bool)

(assert (=> d!412551 e!914935))

(declare-fun res!649002 () Bool)

(assert (=> d!412551 (=> (not res!649002) (not e!914935))))

(assert (=> d!412551 (= res!649002 (= (list!5912 (_1!7938 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) (print!1057 Lexer!2273 (seqFromList!1692 (list!5912 lt!487573)))))) (list!5912 lt!487573)))))

(declare-fun lt!488180 () Unit!22533)

(declare-fun e!914936 () Unit!22533)

(assert (=> d!412551 (= lt!488180 e!914936)))

(declare-fun c!235565 () Bool)

(assert (=> d!412551 (= c!235565 (or ((_ is Nil!14882) (list!5912 lt!487573)) ((_ is Nil!14882) (t!127175 (list!5912 lt!487573)))))))

(assert (=> d!412551 (not (isEmpty!9241 (rules!11360 thiss!10022)))))

(assert (=> d!412551 (= (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 thiss!10022) (list!5912 lt!487573)) lt!488180)))

(declare-fun b!1433317 () Bool)

(declare-fun Unit!22621 () Unit!22533)

(assert (=> b!1433317 (= e!914936 Unit!22621)))

(declare-fun b!1433318 () Bool)

(declare-fun Unit!22622 () Unit!22533)

(assert (=> b!1433318 (= e!914936 Unit!22622)))

(declare-fun lt!488189 () BalanceConc!10036)

(assert (=> b!1433318 (= lt!488189 (print!1057 Lexer!2273 (seqFromList!1692 (list!5912 lt!487573))))))

(declare-fun lt!488178 () BalanceConc!10036)

(assert (=> b!1433318 (= lt!488178 (print!1057 Lexer!2273 (seqFromList!1692 (t!127175 (list!5912 lt!487573)))))))

(declare-fun lt!488186 () tuple2!14104)

(assert (=> b!1433318 (= lt!488186 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) lt!488178))))

(declare-fun lt!488184 () List!14946)

(assert (=> b!1433318 (= lt!488184 (list!5916 (charsOf!1511 (h!20283 (list!5912 lt!487573)))))))

(declare-fun lt!488179 () List!14946)

(assert (=> b!1433318 (= lt!488179 (list!5916 lt!488178))))

(declare-fun lt!488197 () Unit!22533)

(assert (=> b!1433318 (= lt!488197 (lemmaConcatTwoListThenFirstIsPrefix!754 lt!488184 lt!488179))))

(assert (=> b!1433318 (isPrefix!1189 lt!488184 (++!3980 lt!488184 lt!488179))))

(declare-fun lt!488198 () Unit!22533)

(assert (=> b!1433318 (= lt!488198 lt!488197)))

(declare-fun lt!488193 () Unit!22533)

(assert (=> b!1433318 (= lt!488193 (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 thiss!10022) (t!127175 (list!5912 lt!487573))))))

(declare-fun lt!488173 () Unit!22533)

(assert (=> b!1433318 (= lt!488173 (seqFromListBHdTlConstructive!83 (h!20283 (t!127175 (list!5912 lt!487573))) (t!127175 (t!127175 (list!5912 lt!487573))) (_1!7938 lt!488186)))))

(assert (=> b!1433318 (= (list!5912 (_1!7938 lt!488186)) (list!5912 (prepend!403 (seqFromList!1692 (t!127175 (t!127175 (list!5912 lt!487573)))) (h!20283 (t!127175 (list!5912 lt!487573))))))))

(declare-fun lt!488191 () Unit!22533)

(assert (=> b!1433318 (= lt!488191 lt!488173)))

(declare-fun lt!488185 () Option!2839)

(assert (=> b!1433318 (= lt!488185 (maxPrefix!1179 Lexer!2273 (rules!11360 thiss!10022) (list!5916 lt!488189)))))

(assert (=> b!1433318 (= (print!1057 Lexer!2273 (singletonSeq!1218 (h!20283 (list!5912 lt!487573)))) (printTailRec!675 Lexer!2273 (singletonSeq!1218 (h!20283 (list!5912 lt!487573))) 0 (BalanceConc!10037 Empty!5048)))))

(declare-fun lt!488174 () Unit!22533)

(declare-fun Unit!22623 () Unit!22533)

(assert (=> b!1433318 (= lt!488174 Unit!22623)))

(declare-fun lt!488175 () Unit!22533)

(assert (=> b!1433318 (= lt!488175 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!227 Lexer!2273 (rules!11360 thiss!10022) (list!5916 (charsOf!1511 (h!20283 (list!5912 lt!487573)))) (list!5916 lt!488178)))))

(assert (=> b!1433318 (= (list!5916 (charsOf!1511 (h!20283 (list!5912 lt!487573)))) (originalCharacters!3473 (h!20283 (list!5912 lt!487573))))))

(declare-fun lt!488183 () Unit!22533)

(declare-fun Unit!22624 () Unit!22533)

(assert (=> b!1433318 (= lt!488183 Unit!22624)))

(assert (=> b!1433318 (= (list!5916 (singletonSeq!1219 (apply!3805 (charsOf!1511 (h!20283 (t!127175 (list!5912 lt!487573)))) 0))) (Cons!14880 (head!2885 (originalCharacters!3473 (h!20283 (t!127175 (list!5912 lt!487573))))) Nil!14880))))

(declare-fun lt!488187 () Unit!22533)

(declare-fun Unit!22625 () Unit!22533)

(assert (=> b!1433318 (= lt!488187 Unit!22625)))

(assert (=> b!1433318 (= (list!5916 (singletonSeq!1219 (apply!3805 (charsOf!1511 (h!20283 (t!127175 (list!5912 lt!487573)))) 0))) (Cons!14880 (head!2885 (list!5916 lt!488178)) Nil!14880))))

(declare-fun lt!488192 () Unit!22533)

(declare-fun Unit!22626 () Unit!22533)

(assert (=> b!1433318 (= lt!488192 Unit!22626)))

(assert (=> b!1433318 (= (list!5916 (singletonSeq!1219 (apply!3805 (charsOf!1511 (h!20283 (t!127175 (list!5912 lt!487573)))) 0))) (Cons!14880 (head!2886 lt!488178) Nil!14880))))

(declare-fun lt!488176 () Unit!22533)

(declare-fun Unit!22627 () Unit!22533)

(assert (=> b!1433318 (= lt!488176 Unit!22627)))

(assert (=> b!1433318 (isDefined!2300 (maxPrefix!1179 Lexer!2273 (rules!11360 thiss!10022) (originalCharacters!3473 (h!20283 (list!5912 lt!487573)))))))

(declare-fun lt!488195 () Unit!22533)

(declare-fun Unit!22628 () Unit!22533)

(assert (=> b!1433318 (= lt!488195 Unit!22628)))

(assert (=> b!1433318 (isDefined!2300 (maxPrefix!1179 Lexer!2273 (rules!11360 thiss!10022) (list!5916 (charsOf!1511 (h!20283 (list!5912 lt!487573))))))))

(declare-fun lt!488182 () Unit!22533)

(declare-fun Unit!22629 () Unit!22533)

(assert (=> b!1433318 (= lt!488182 Unit!22629)))

(declare-fun lt!488181 () Unit!22533)

(declare-fun Unit!22630 () Unit!22533)

(assert (=> b!1433318 (= lt!488181 Unit!22630)))

(assert (=> b!1433318 (= (_1!7939 (get!4553 (maxPrefix!1179 Lexer!2273 (rules!11360 thiss!10022) (list!5916 (charsOf!1511 (h!20283 (list!5912 lt!487573))))))) (h!20283 (list!5912 lt!487573)))))

(declare-fun lt!488194 () Unit!22533)

(declare-fun Unit!22631 () Unit!22533)

(assert (=> b!1433318 (= lt!488194 Unit!22631)))

(assert (=> b!1433318 (isEmpty!9245 (_2!7939 (get!4553 (maxPrefix!1179 Lexer!2273 (rules!11360 thiss!10022) (list!5916 (charsOf!1511 (h!20283 (list!5912 lt!487573))))))))))

(declare-fun lt!488196 () Unit!22533)

(declare-fun Unit!22632 () Unit!22533)

(assert (=> b!1433318 (= lt!488196 Unit!22632)))

(assert (=> b!1433318 (matchR!1815 (regex!2611 (rule!4374 (h!20283 (list!5912 lt!487573)))) (list!5916 (charsOf!1511 (h!20283 (list!5912 lt!487573)))))))

(declare-fun lt!488190 () Unit!22533)

(declare-fun Unit!22633 () Unit!22533)

(assert (=> b!1433318 (= lt!488190 Unit!22633)))

(assert (=> b!1433318 (= (rule!4374 (h!20283 (list!5912 lt!487573))) (rule!4374 (h!20283 (list!5912 lt!487573))))))

(declare-fun lt!488177 () Unit!22533)

(declare-fun Unit!22634 () Unit!22533)

(assert (=> b!1433318 (= lt!488177 Unit!22634)))

(declare-fun lt!488188 () Unit!22533)

(assert (=> b!1433318 (= lt!488188 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!25 Lexer!2273 (rules!11360 thiss!10022) (h!20283 (list!5912 lt!487573)) (rule!4374 (h!20283 (list!5912 lt!487573))) (list!5916 lt!488178)))))

(declare-fun b!1433319 () Bool)

(assert (=> b!1433319 (= e!914935 (isEmpty!9242 (_2!7938 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) (print!1057 Lexer!2273 (seqFromList!1692 (list!5912 lt!487573)))))))))

(assert (= (and d!412551 c!235565) b!1433317))

(assert (= (and d!412551 (not c!235565)) b!1433318))

(assert (= (and d!412551 res!649002) b!1433319))

(declare-fun m!1635121 () Bool)

(assert (=> d!412551 m!1635121))

(declare-fun m!1635123 () Bool)

(assert (=> d!412551 m!1635123))

(assert (=> d!412551 m!1634057))

(declare-fun m!1635125 () Bool)

(assert (=> d!412551 m!1635125))

(assert (=> d!412551 m!1635125))

(assert (=> d!412551 m!1635121))

(assert (=> d!412551 m!1634145))

(declare-fun m!1635127 () Bool)

(assert (=> d!412551 m!1635127))

(declare-fun m!1635129 () Bool)

(assert (=> b!1433318 m!1635129))

(declare-fun m!1635131 () Bool)

(assert (=> b!1433318 m!1635131))

(declare-fun m!1635133 () Bool)

(assert (=> b!1433318 m!1635133))

(declare-fun m!1635135 () Bool)

(assert (=> b!1433318 m!1635135))

(declare-fun m!1635137 () Bool)

(assert (=> b!1433318 m!1635137))

(declare-fun m!1635141 () Bool)

(assert (=> b!1433318 m!1635141))

(assert (=> b!1433318 m!1635129))

(declare-fun m!1635145 () Bool)

(assert (=> b!1433318 m!1635145))

(declare-fun m!1635147 () Bool)

(assert (=> b!1433318 m!1635147))

(declare-fun m!1635149 () Bool)

(assert (=> b!1433318 m!1635149))

(assert (=> b!1433318 m!1634057))

(assert (=> b!1433318 m!1635125))

(assert (=> b!1433318 m!1635125))

(assert (=> b!1433318 m!1635121))

(declare-fun m!1635157 () Bool)

(assert (=> b!1433318 m!1635157))

(declare-fun m!1635159 () Bool)

(assert (=> b!1433318 m!1635159))

(declare-fun m!1635161 () Bool)

(assert (=> b!1433318 m!1635161))

(assert (=> b!1433318 m!1635159))

(declare-fun m!1635167 () Bool)

(assert (=> b!1433318 m!1635167))

(assert (=> b!1433318 m!1635159))

(declare-fun m!1635169 () Bool)

(assert (=> b!1433318 m!1635169))

(assert (=> b!1433318 m!1635157))

(declare-fun m!1635171 () Bool)

(assert (=> b!1433318 m!1635171))

(declare-fun m!1635173 () Bool)

(assert (=> b!1433318 m!1635173))

(declare-fun m!1635175 () Bool)

(assert (=> b!1433318 m!1635175))

(declare-fun m!1635177 () Bool)

(assert (=> b!1433318 m!1635177))

(assert (=> b!1433318 m!1635173))

(declare-fun m!1635179 () Bool)

(assert (=> b!1433318 m!1635179))

(declare-fun m!1635181 () Bool)

(assert (=> b!1433318 m!1635181))

(declare-fun m!1635183 () Bool)

(assert (=> b!1433318 m!1635183))

(declare-fun m!1635185 () Bool)

(assert (=> b!1433318 m!1635185))

(declare-fun m!1635187 () Bool)

(assert (=> b!1433318 m!1635187))

(assert (=> b!1433318 m!1635145))

(assert (=> b!1433318 m!1635185))

(declare-fun m!1635189 () Bool)

(assert (=> b!1433318 m!1635189))

(declare-fun m!1635191 () Bool)

(assert (=> b!1433318 m!1635191))

(declare-fun m!1635193 () Bool)

(assert (=> b!1433318 m!1635193))

(assert (=> b!1433318 m!1635135))

(assert (=> b!1433318 m!1635157))

(declare-fun m!1635197 () Bool)

(assert (=> b!1433318 m!1635197))

(assert (=> b!1433318 m!1635157))

(assert (=> b!1433318 m!1635181))

(declare-fun m!1635199 () Bool)

(assert (=> b!1433318 m!1635199))

(declare-fun m!1635201 () Bool)

(assert (=> b!1433318 m!1635201))

(assert (=> b!1433318 m!1635201))

(declare-fun m!1635203 () Bool)

(assert (=> b!1433318 m!1635203))

(assert (=> b!1433318 m!1635141))

(assert (=> b!1433318 m!1635173))

(declare-fun m!1635205 () Bool)

(assert (=> b!1433318 m!1635205))

(declare-fun m!1635207 () Bool)

(assert (=> b!1433318 m!1635207))

(assert (=> b!1433318 m!1635187))

(declare-fun m!1635209 () Bool)

(assert (=> b!1433318 m!1635209))

(assert (=> b!1433318 m!1635137))

(assert (=> b!1433318 m!1635175))

(assert (=> b!1433318 m!1635181))

(declare-fun m!1635211 () Bool)

(assert (=> b!1433318 m!1635211))

(assert (=> b!1433318 m!1635181))

(assert (=> b!1433318 m!1635131))

(declare-fun m!1635213 () Bool)

(assert (=> b!1433318 m!1635213))

(declare-fun m!1635215 () Bool)

(assert (=> b!1433318 m!1635215))

(assert (=> b!1433319 m!1634057))

(assert (=> b!1433319 m!1635125))

(assert (=> b!1433319 m!1635125))

(assert (=> b!1433319 m!1635121))

(assert (=> b!1433319 m!1635121))

(assert (=> b!1433319 m!1635123))

(declare-fun m!1635217 () Bool)

(assert (=> b!1433319 m!1635217))

(assert (=> b!1432999 d!412551))

(declare-fun d!412557 () Bool)

(assert (=> d!412557 (= (list!5912 lt!487573) (list!5914 (c!235524 lt!487573)))))

(declare-fun bs!340929 () Bool)

(assert (= bs!340929 d!412557))

(declare-fun m!1635219 () Bool)

(assert (=> bs!340929 m!1635219))

(assert (=> b!1432999 d!412557))

(declare-fun d!412559 () Bool)

(assert (=> d!412559 (= (printList!703 Lexer!2273 (++!3982 lt!487567 lt!487565)) (++!3980 (printList!703 Lexer!2273 lt!487567) (printList!703 Lexer!2273 lt!487565)))))

(declare-fun lt!488201 () Unit!22533)

(declare-fun choose!8829 (LexerInterface!2275 List!14948 List!14948) Unit!22533)

(assert (=> d!412559 (= lt!488201 (choose!8829 Lexer!2273 lt!487567 lt!487565))))

(assert (=> d!412559 (= (lemmaPrintConcatSameAsConcatPrint!64 Lexer!2273 lt!487567 lt!487565) lt!488201)))

(declare-fun bs!340930 () Bool)

(assert (= bs!340930 d!412559))

(assert (=> bs!340930 m!1634051))

(assert (=> bs!340930 m!1634051))

(assert (=> bs!340930 m!1634053))

(assert (=> bs!340930 m!1634055))

(declare-fun m!1635233 () Bool)

(assert (=> bs!340930 m!1635233))

(assert (=> bs!340930 m!1634053))

(assert (=> bs!340930 m!1634101))

(assert (=> bs!340930 m!1634101))

(declare-fun m!1635235 () Bool)

(assert (=> bs!340930 m!1635235))

(assert (=> b!1432999 d!412559))

(declare-fun d!412561 () Bool)

(declare-fun lt!488202 () BalanceConc!10036)

(assert (=> d!412561 (= (list!5916 lt!488202) (printList!703 Lexer!2273 (list!5912 (tokens!1964 thiss!10022))))))

(assert (=> d!412561 (= lt!488202 (printTailRec!675 Lexer!2273 (tokens!1964 thiss!10022) 0 (BalanceConc!10037 Empty!5048)))))

(assert (=> d!412561 (= (print!1057 Lexer!2273 (tokens!1964 thiss!10022)) lt!488202)))

(declare-fun bs!340931 () Bool)

(assert (= bs!340931 d!412561))

(declare-fun m!1635237 () Bool)

(assert (=> bs!340931 m!1635237))

(assert (=> bs!340931 m!1634029))

(assert (=> bs!340931 m!1634029))

(declare-fun m!1635239 () Bool)

(assert (=> bs!340931 m!1635239))

(declare-fun m!1635241 () Bool)

(assert (=> bs!340931 m!1635241))

(assert (=> b!1432999 d!412561))

(declare-fun d!412563 () Bool)

(declare-fun e!914957 () Bool)

(assert (=> d!412563 e!914957))

(declare-fun res!649003 () Bool)

(assert (=> d!412563 (=> (not res!649003) (not e!914957))))

(declare-fun lt!488203 () BalanceConc!10036)

(assert (=> d!412563 (= res!649003 (= (list!5912 (_1!7938 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) lt!488203))) (list!5912 (tokens!1964 thiss!10022))))))

(assert (=> d!412563 (= lt!488203 (print!1057 Lexer!2273 (tokens!1964 thiss!10022)))))

(declare-fun lt!488204 () Unit!22533)

(assert (=> d!412563 (= lt!488204 (theoremInvertabilityWhenTokenListSeparable!65 Lexer!2273 (rules!11360 thiss!10022) (list!5912 (tokens!1964 thiss!10022))))))

(assert (=> d!412563 (= (print!1056 thiss!10022) lt!488203)))

(declare-fun b!1433345 () Bool)

(assert (=> b!1433345 (= e!914957 (isEmpty!9245 (list!5916 (_2!7938 (lex!1040 Lexer!2273 (rules!11360 thiss!10022) lt!488203)))))))

(assert (= (and d!412563 res!649003) b!1433345))

(assert (=> d!412563 m!1634029))

(declare-fun m!1635247 () Bool)

(assert (=> d!412563 m!1635247))

(declare-fun m!1635249 () Bool)

(assert (=> d!412563 m!1635249))

(assert (=> d!412563 m!1634029))

(assert (=> d!412563 m!1634059))

(declare-fun m!1635251 () Bool)

(assert (=> d!412563 m!1635251))

(assert (=> b!1433345 m!1635249))

(declare-fun m!1635253 () Bool)

(assert (=> b!1433345 m!1635253))

(assert (=> b!1433345 m!1635253))

(declare-fun m!1635259 () Bool)

(assert (=> b!1433345 m!1635259))

(assert (=> b!1432999 d!412563))

(declare-fun d!412565 () Bool)

(declare-fun c!235566 () Bool)

(assert (=> d!412565 (= c!235566 ((_ is Cons!14882) lt!487565))))

(declare-fun e!914962 () List!14946)

(assert (=> d!412565 (= (printList!703 Lexer!2273 lt!487565) e!914962)))

(declare-fun b!1433349 () Bool)

(assert (=> b!1433349 (= e!914962 (++!3980 (list!5916 (charsOf!1511 (h!20283 lt!487565))) (printList!703 Lexer!2273 (t!127175 lt!487565))))))

(declare-fun b!1433350 () Bool)

(assert (=> b!1433350 (= e!914962 Nil!14880)))

(assert (= (and d!412565 c!235566) b!1433349))

(assert (= (and d!412565 (not c!235566)) b!1433350))

(assert (=> b!1433349 m!1635033))

(assert (=> b!1433349 m!1635033))

(assert (=> b!1433349 m!1635045))

(declare-fun m!1635261 () Bool)

(assert (=> b!1433349 m!1635261))

(assert (=> b!1433349 m!1635045))

(assert (=> b!1433349 m!1635261))

(declare-fun m!1635263 () Bool)

(assert (=> b!1433349 m!1635263))

(assert (=> b!1432999 d!412565))

(declare-fun d!412567 () Bool)

(declare-fun lt!488205 () BalanceConc!10036)

(assert (=> d!412567 (= (list!5916 lt!488205) (printList!703 Lexer!2273 (list!5912 lt!487573)))))

(assert (=> d!412567 (= lt!488205 (printTailRec!675 Lexer!2273 lt!487573 0 (BalanceConc!10037 Empty!5048)))))

(assert (=> d!412567 (= (print!1057 Lexer!2273 lt!487573) lt!488205)))

(declare-fun bs!340932 () Bool)

(assert (= bs!340932 d!412567))

(declare-fun m!1635265 () Bool)

(assert (=> bs!340932 m!1635265))

(assert (=> bs!340932 m!1634057))

(assert (=> bs!340932 m!1634057))

(declare-fun m!1635267 () Bool)

(assert (=> bs!340932 m!1635267))

(declare-fun m!1635269 () Bool)

(assert (=> bs!340932 m!1635269))

(assert (=> b!1432999 d!412567))

(declare-fun d!412569 () Bool)

(declare-fun c!235567 () Bool)

(assert (=> d!412569 (= c!235567 ((_ is Cons!14882) lt!487567))))

(declare-fun e!914963 () List!14946)

(assert (=> d!412569 (= (printList!703 Lexer!2273 lt!487567) e!914963)))

(declare-fun b!1433351 () Bool)

(assert (=> b!1433351 (= e!914963 (++!3980 (list!5916 (charsOf!1511 (h!20283 lt!487567))) (printList!703 Lexer!2273 (t!127175 lt!487567))))))

(declare-fun b!1433352 () Bool)

(assert (=> b!1433352 (= e!914963 Nil!14880)))

(assert (= (and d!412569 c!235567) b!1433351))

(assert (= (and d!412569 (not c!235567)) b!1433352))

(assert (=> b!1433351 m!1634879))

(assert (=> b!1433351 m!1634879))

(assert (=> b!1433351 m!1634891))

(declare-fun m!1635271 () Bool)

(assert (=> b!1433351 m!1635271))

(assert (=> b!1433351 m!1634891))

(assert (=> b!1433351 m!1635271))

(declare-fun m!1635273 () Bool)

(assert (=> b!1433351 m!1635273))

(assert (=> b!1432999 d!412569))

(declare-fun b!1433362 () Bool)

(declare-fun e!914968 () List!14946)

(assert (=> b!1433362 (= e!914968 (Cons!14880 (h!20281 (printList!703 Lexer!2273 lt!487567)) (++!3980 (t!127173 (printList!703 Lexer!2273 lt!487567)) (printList!703 Lexer!2273 lt!487565))))))

(declare-fun b!1433363 () Bool)

(declare-fun res!649008 () Bool)

(declare-fun e!914969 () Bool)

(assert (=> b!1433363 (=> (not res!649008) (not e!914969))))

(declare-fun lt!488208 () List!14946)

(declare-fun size!12215 (List!14946) Int)

(assert (=> b!1433363 (= res!649008 (= (size!12215 lt!488208) (+ (size!12215 (printList!703 Lexer!2273 lt!487567)) (size!12215 (printList!703 Lexer!2273 lt!487565)))))))

(declare-fun b!1433361 () Bool)

(assert (=> b!1433361 (= e!914968 (printList!703 Lexer!2273 lt!487565))))

(declare-fun d!412571 () Bool)

(assert (=> d!412571 e!914969))

(declare-fun res!649009 () Bool)

(assert (=> d!412571 (=> (not res!649009) (not e!914969))))

(declare-fun content!2197 (List!14946) (InoxSet C!8028))

(assert (=> d!412571 (= res!649009 (= (content!2197 lt!488208) ((_ map or) (content!2197 (printList!703 Lexer!2273 lt!487567)) (content!2197 (printList!703 Lexer!2273 lt!487565)))))))

(assert (=> d!412571 (= lt!488208 e!914968)))

(declare-fun c!235570 () Bool)

(assert (=> d!412571 (= c!235570 ((_ is Nil!14880) (printList!703 Lexer!2273 lt!487567)))))

(assert (=> d!412571 (= (++!3980 (printList!703 Lexer!2273 lt!487567) (printList!703 Lexer!2273 lt!487565)) lt!488208)))

(declare-fun b!1433364 () Bool)

(assert (=> b!1433364 (= e!914969 (or (not (= (printList!703 Lexer!2273 lt!487565) Nil!14880)) (= lt!488208 (printList!703 Lexer!2273 lt!487567))))))

(assert (= (and d!412571 c!235570) b!1433361))

(assert (= (and d!412571 (not c!235570)) b!1433362))

(assert (= (and d!412571 res!649009) b!1433363))

(assert (= (and b!1433363 res!649008) b!1433364))

(assert (=> b!1433362 m!1634053))

(declare-fun m!1635275 () Bool)

(assert (=> b!1433362 m!1635275))

(declare-fun m!1635277 () Bool)

(assert (=> b!1433363 m!1635277))

(assert (=> b!1433363 m!1634051))

(declare-fun m!1635279 () Bool)

(assert (=> b!1433363 m!1635279))

(assert (=> b!1433363 m!1634053))

(declare-fun m!1635281 () Bool)

(assert (=> b!1433363 m!1635281))

(declare-fun m!1635283 () Bool)

(assert (=> d!412571 m!1635283))

(assert (=> d!412571 m!1634051))

(declare-fun m!1635285 () Bool)

(assert (=> d!412571 m!1635285))

(assert (=> d!412571 m!1634053))

(declare-fun m!1635287 () Bool)

(assert (=> d!412571 m!1635287))

(assert (=> b!1432999 d!412571))

(declare-fun d!412573 () Bool)

(declare-fun res!649016 () Bool)

(declare-fun e!914972 () Bool)

(assert (=> d!412573 (=> (not res!649016) (not e!914972))))

(assert (=> d!412573 (= res!649016 (not (isEmpty!9241 (rules!11360 thiss!10022))))))

(assert (=> d!412573 (= (inv!19760 thiss!10022) e!914972)))

(declare-fun b!1433371 () Bool)

(declare-fun res!649017 () Bool)

(assert (=> b!1433371 (=> (not res!649017) (not e!914972))))

(assert (=> b!1433371 (= res!649017 (rulesInvariant!2119 Lexer!2273 (rules!11360 thiss!10022)))))

(declare-fun b!1433372 () Bool)

(declare-fun res!649018 () Bool)

(assert (=> b!1433372 (=> (not res!649018) (not e!914972))))

(assert (=> b!1433372 (= res!649018 (rulesProduceEachTokenIndividually!837 Lexer!2273 (rules!11360 thiss!10022) (tokens!1964 thiss!10022)))))

(declare-fun b!1433373 () Bool)

(assert (=> b!1433373 (= e!914972 (separableTokens!221 Lexer!2273 (tokens!1964 thiss!10022) (rules!11360 thiss!10022)))))

(assert (= (and d!412573 res!649016) b!1433371))

(assert (= (and b!1433371 res!649017) b!1433372))

(assert (= (and b!1433372 res!649018) b!1433373))

(assert (=> d!412573 m!1634145))

(assert (=> b!1433371 m!1634297))

(assert (=> b!1433372 m!1634819))

(assert (=> b!1433373 m!1634821))

(assert (=> start!132600 d!412573))

(declare-fun d!412575 () Bool)

(declare-fun res!649019 () Bool)

(declare-fun e!914973 () Bool)

(assert (=> d!412575 (=> (not res!649019) (not e!914973))))

(assert (=> d!412575 (= res!649019 (not (isEmpty!9241 (rules!11360 other!32))))))

(assert (=> d!412575 (= (inv!19760 other!32) e!914973)))

(declare-fun b!1433374 () Bool)

(declare-fun res!649020 () Bool)

(assert (=> b!1433374 (=> (not res!649020) (not e!914973))))

(assert (=> b!1433374 (= res!649020 (rulesInvariant!2119 Lexer!2273 (rules!11360 other!32)))))

(declare-fun b!1433375 () Bool)

(declare-fun res!649021 () Bool)

(assert (=> b!1433375 (=> (not res!649021) (not e!914973))))

(assert (=> b!1433375 (= res!649021 (rulesProduceEachTokenIndividually!837 Lexer!2273 (rules!11360 other!32) (tokens!1964 other!32)))))

(declare-fun b!1433376 () Bool)

(assert (=> b!1433376 (= e!914973 (separableTokens!221 Lexer!2273 (tokens!1964 other!32) (rules!11360 other!32)))))

(assert (= (and d!412575 res!649019) b!1433374))

(assert (= (and b!1433374 res!649020) b!1433375))

(assert (= (and b!1433375 res!649021) b!1433376))

(assert (=> d!412575 m!1635023))

(assert (=> b!1433374 m!1634823))

(assert (=> b!1433375 m!1634825))

(assert (=> b!1433376 m!1634827))

(assert (=> start!132600 d!412575))

(declare-fun b!1433387 () Bool)

(declare-fun b_free!35511 () Bool)

(declare-fun b_next!36215 () Bool)

(assert (=> b!1433387 (= b_free!35511 (not b_next!36215))))

(declare-fun tp!406176 () Bool)

(declare-fun b_and!96439 () Bool)

(assert (=> b!1433387 (= tp!406176 b_and!96439)))

(declare-fun b_free!35513 () Bool)

(declare-fun b_next!36217 () Bool)

(assert (=> b!1433387 (= b_free!35513 (not b_next!36217))))

(declare-fun tp!406173 () Bool)

(declare-fun b_and!96441 () Bool)

(assert (=> b!1433387 (= tp!406173 b_and!96441)))

(declare-fun e!914982 () Bool)

(assert (=> b!1433387 (= e!914982 (and tp!406176 tp!406173))))

(declare-fun b!1433386 () Bool)

(declare-fun tp!406174 () Bool)

(declare-fun e!914983 () Bool)

(declare-fun inv!19754 (String!17761) Bool)

(declare-fun inv!19767 (TokenValueInjection!5062) Bool)

(assert (=> b!1433386 (= e!914983 (and tp!406174 (inv!19754 (tag!2873 (h!20284 (rules!11360 other!32)))) (inv!19767 (transformation!2611 (h!20284 (rules!11360 other!32)))) e!914982))))

(declare-fun b!1433385 () Bool)

(declare-fun e!914984 () Bool)

(declare-fun tp!406175 () Bool)

(assert (=> b!1433385 (= e!914984 (and e!914983 tp!406175))))

(assert (=> b!1432995 (= tp!406133 e!914984)))

(assert (= b!1433386 b!1433387))

(assert (= b!1433385 b!1433386))

(assert (= (and b!1432995 ((_ is Cons!14883) (rules!11360 other!32))) b!1433385))

(declare-fun m!1635289 () Bool)

(assert (=> b!1433386 m!1635289))

(declare-fun m!1635291 () Bool)

(assert (=> b!1433386 m!1635291))

(declare-fun tp!406183 () Bool)

(declare-fun e!914990 () Bool)

(declare-fun tp!406184 () Bool)

(declare-fun b!1433396 () Bool)

(assert (=> b!1433396 (= e!914990 (and (inv!19759 (left!12681 (c!235524 (tokens!1964 thiss!10022)))) tp!406184 (inv!19759 (right!13011 (c!235524 (tokens!1964 thiss!10022)))) tp!406183))))

(declare-fun b!1433398 () Bool)

(declare-fun e!914991 () Bool)

(declare-fun tp!406185 () Bool)

(assert (=> b!1433398 (= e!914991 tp!406185)))

(declare-fun b!1433397 () Bool)

(declare-fun inv!19768 (IArray!10103) Bool)

(assert (=> b!1433397 (= e!914990 (and (inv!19768 (xs!7782 (c!235524 (tokens!1964 thiss!10022)))) e!914991))))

(assert (=> b!1433000 (= tp!406134 (and (inv!19759 (c!235524 (tokens!1964 thiss!10022))) e!914990))))

(assert (= (and b!1433000 ((_ is Node!5049) (c!235524 (tokens!1964 thiss!10022)))) b!1433396))

(assert (= b!1433397 b!1433398))

(assert (= (and b!1433000 ((_ is Leaf!7556) (c!235524 (tokens!1964 thiss!10022)))) b!1433397))

(declare-fun m!1635293 () Bool)

(assert (=> b!1433396 m!1635293))

(declare-fun m!1635295 () Bool)

(assert (=> b!1433396 m!1635295))

(declare-fun m!1635297 () Bool)

(assert (=> b!1433397 m!1635297))

(assert (=> b!1433000 m!1634083))

(declare-fun tp!406186 () Bool)

(declare-fun e!914992 () Bool)

(declare-fun tp!406187 () Bool)

(declare-fun b!1433399 () Bool)

(assert (=> b!1433399 (= e!914992 (and (inv!19759 (left!12681 (c!235524 (tokens!1964 other!32)))) tp!406187 (inv!19759 (right!13011 (c!235524 (tokens!1964 other!32)))) tp!406186))))

(declare-fun b!1433401 () Bool)

(declare-fun e!914993 () Bool)

(declare-fun tp!406188 () Bool)

(assert (=> b!1433401 (= e!914993 tp!406188)))

(declare-fun b!1433400 () Bool)

(assert (=> b!1433400 (= e!914992 (and (inv!19768 (xs!7782 (c!235524 (tokens!1964 other!32)))) e!914993))))

(assert (=> b!1433005 (= tp!406136 (and (inv!19759 (c!235524 (tokens!1964 other!32))) e!914992))))

(assert (= (and b!1433005 ((_ is Node!5049) (c!235524 (tokens!1964 other!32)))) b!1433399))

(assert (= b!1433400 b!1433401))

(assert (= (and b!1433005 ((_ is Leaf!7556) (c!235524 (tokens!1964 other!32)))) b!1433400))

(declare-fun m!1635299 () Bool)

(assert (=> b!1433399 m!1635299))

(declare-fun m!1635301 () Bool)

(assert (=> b!1433399 m!1635301))

(declare-fun m!1635303 () Bool)

(assert (=> b!1433400 m!1635303))

(assert (=> b!1433005 m!1634093))

(declare-fun b!1433404 () Bool)

(declare-fun b_free!35515 () Bool)

(declare-fun b_next!36219 () Bool)

(assert (=> b!1433404 (= b_free!35515 (not b_next!36219))))

(declare-fun tp!406192 () Bool)

(declare-fun b_and!96443 () Bool)

(assert (=> b!1433404 (= tp!406192 b_and!96443)))

(declare-fun b_free!35517 () Bool)

(declare-fun b_next!36221 () Bool)

(assert (=> b!1433404 (= b_free!35517 (not b_next!36221))))

(declare-fun tp!406189 () Bool)

(declare-fun b_and!96445 () Bool)

(assert (=> b!1433404 (= tp!406189 b_and!96445)))

(declare-fun e!914994 () Bool)

(assert (=> b!1433404 (= e!914994 (and tp!406192 tp!406189))))

(declare-fun e!914995 () Bool)

(declare-fun tp!406190 () Bool)

(declare-fun b!1433403 () Bool)

(assert (=> b!1433403 (= e!914995 (and tp!406190 (inv!19754 (tag!2873 (h!20284 (rules!11360 thiss!10022)))) (inv!19767 (transformation!2611 (h!20284 (rules!11360 thiss!10022)))) e!914994))))

(declare-fun b!1433402 () Bool)

(declare-fun e!914996 () Bool)

(declare-fun tp!406191 () Bool)

(assert (=> b!1433402 (= e!914996 (and e!914995 tp!406191))))

(assert (=> b!1432997 (= tp!406135 e!914996)))

(assert (= b!1433403 b!1433404))

(assert (= b!1433402 b!1433403))

(assert (= (and b!1432997 ((_ is Cons!14883) (rules!11360 thiss!10022))) b!1433402))

(declare-fun m!1635305 () Bool)

(assert (=> b!1433403 m!1635305))

(declare-fun m!1635307 () Bool)

(assert (=> b!1433403 m!1635307))

(check-sat (not d!412421) b_and!96439 (not b!1433375) (not d!412493) (not b!1433222) (not d!412557) (not b!1433036) (not d!412405) (not b!1433034) (not d!412501) (not b!1433316) (not d!412431) (not b!1433015) (not b!1433402) (not b!1433237) (not b_next!36221) (not b!1433397) (not d!412549) (not b!1433060) (not b!1433238) (not b!1433314) (not b!1433403) (not b!1433039) (not d!412505) (not b_next!36217) (not b!1433349) (not d!412563) (not b!1433058) (not b!1433143) b_and!96445 (not b!1433399) (not d!412429) (not b!1433255) (not b!1433362) b_and!96441 (not d!412435) (not d!412437) (not b!1433306) (not b!1433371) (not b!1433396) (not b!1433179) (not b!1433401) (not d!412507) (not d!412491) (not b!1433240) (not d!412515) (not d!412423) (not b!1433261) (not b!1433253) (not b!1433291) (not b!1433373) (not d!412433) (not b!1433228) (not b!1433311) (not b!1433226) (not d!412487) (not d!412567) (not d!412573) (not d!412575) (not b!1433374) (not b!1433386) (not d!412571) (not b!1433290) (not b!1433351) (not d!412407) (not d!412551) (not d!412523) (not b!1433243) (not b!1433400) (not b!1433037) (not d!412411) (not b!1433376) (not b_next!36219) (not b!1433385) (not b!1433318) (not b!1433035) (not b!1433221) (not d!412441) (not b!1433013) (not b!1433260) (not b!1433224) (not d!412427) (not d!412545) (not b!1433252) (not b!1433319) (not b!1433223) (not d!412499) (not b!1433000) (not d!412547) (not b!1433057) b_and!96443 (not b!1433038) (not d!412559) (not b!1433160) (not b!1433142) (not b!1433239) (not b!1433315) (not b!1433372) (not b!1433254) (not b!1433345) (not b_next!36215) (not b!1433227) (not b!1433178) (not b!1433241) (not d!412561) (not b!1433005) (not d!412425) (not b!1433225) (not b!1433363) (not d!412509) (not b!1433398) (not d!412517) (not b!1433059))
(check-sat (not b_next!36221) (not b_next!36217) b_and!96445 b_and!96441 (not b_next!36219) b_and!96439 b_and!96443 (not b_next!36215))
