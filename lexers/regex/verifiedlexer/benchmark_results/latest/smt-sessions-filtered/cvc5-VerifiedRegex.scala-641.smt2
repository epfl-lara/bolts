; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!22068 () Bool)

(assert start!22068)

(declare-fun b!204757 () Bool)

(declare-fun b_free!7885 () Bool)

(declare-fun b_next!7885 () Bool)

(assert (=> b!204757 (= b_free!7885 (not b_next!7885))))

(declare-fun tp!90444 () Bool)

(declare-fun b_and!14797 () Bool)

(assert (=> b!204757 (= tp!90444 b_and!14797)))

(declare-fun b_free!7887 () Bool)

(declare-fun b_next!7887 () Bool)

(assert (=> b!204757 (= b_free!7887 (not b_next!7887))))

(declare-fun tp!90434 () Bool)

(declare-fun b_and!14799 () Bool)

(assert (=> b!204757 (= tp!90434 b_and!14799)))

(declare-fun b!204765 () Bool)

(declare-fun b_free!7889 () Bool)

(declare-fun b_next!7889 () Bool)

(assert (=> b!204765 (= b_free!7889 (not b_next!7889))))

(declare-fun tp!90438 () Bool)

(declare-fun b_and!14801 () Bool)

(assert (=> b!204765 (= tp!90438 b_and!14801)))

(declare-fun b_free!7891 () Bool)

(declare-fun b_next!7891 () Bool)

(assert (=> b!204765 (= b_free!7891 (not b_next!7891))))

(declare-fun tp!90436 () Bool)

(declare-fun b_and!14803 () Bool)

(assert (=> b!204765 (= tp!90436 b_and!14803)))

(declare-fun b!204725 () Bool)

(declare-fun b_free!7893 () Bool)

(declare-fun b_next!7893 () Bool)

(assert (=> b!204725 (= b_free!7893 (not b_next!7893))))

(declare-fun tp!90445 () Bool)

(declare-fun b_and!14805 () Bool)

(assert (=> b!204725 (= tp!90445 b_and!14805)))

(declare-fun b_free!7895 () Bool)

(declare-fun b_next!7895 () Bool)

(assert (=> b!204725 (= b_free!7895 (not b_next!7895))))

(declare-fun tp!90440 () Bool)

(declare-fun b_and!14807 () Bool)

(assert (=> b!204725 (= tp!90440 b_and!14807)))

(declare-fun bs!20873 () Bool)

(declare-fun b!204727 () Bool)

(declare-fun b!204758 () Bool)

(assert (= bs!20873 (and b!204727 b!204758)))

(declare-fun lambda!6250 () Int)

(declare-fun lambda!6249 () Int)

(assert (=> bs!20873 (not (= lambda!6250 lambda!6249))))

(declare-fun b!204782 () Bool)

(declare-fun e!125923 () Bool)

(assert (=> b!204782 (= e!125923 true)))

(declare-fun b!204781 () Bool)

(declare-fun e!125922 () Bool)

(assert (=> b!204781 (= e!125922 e!125923)))

(declare-fun b!204780 () Bool)

(declare-fun e!125921 () Bool)

(assert (=> b!204780 (= e!125921 e!125922)))

(assert (=> b!204727 e!125921))

(assert (= b!204781 b!204782))

(assert (= b!204780 b!204781))

(declare-datatypes ((List!3279 0))(
  ( (Nil!3269) (Cons!3269 (h!8666 (_ BitVec 16)) (t!30901 List!3279)) )
))
(declare-datatypes ((TokenValue!626 0))(
  ( (FloatLiteralValue!1252 (text!4827 List!3279)) (TokenValueExt!625 (__x!2739 Int)) (Broken!3130 (value!21505 List!3279)) (Object!635) (End!626) (Def!626) (Underscore!626) (Match!626) (Else!626) (Error!626) (Case!626) (If!626) (Extends!626) (Abstract!626) (Class!626) (Val!626) (DelimiterValue!1252 (del!686 List!3279)) (KeywordValue!632 (value!21506 List!3279)) (CommentValue!1252 (value!21507 List!3279)) (WhitespaceValue!1252 (value!21508 List!3279)) (IndentationValue!626 (value!21509 List!3279)) (String!4211) (Int32!626) (Broken!3131 (value!21510 List!3279)) (Boolean!627) (Unit!3302) (OperatorValue!629 (op!686 List!3279)) (IdentifierValue!1252 (value!21511 List!3279)) (IdentifierValue!1253 (value!21512 List!3279)) (WhitespaceValue!1253 (value!21513 List!3279)) (True!1252) (False!1252) (Broken!3132 (value!21514 List!3279)) (Broken!3133 (value!21515 List!3279)) (True!1253) (RightBrace!626) (RightBracket!626) (Colon!626) (Null!626) (Comma!626) (LeftBracket!626) (False!1253) (LeftBrace!626) (ImaginaryLiteralValue!626 (text!4828 List!3279)) (StringLiteralValue!1878 (value!21516 List!3279)) (EOFValue!626 (value!21517 List!3279)) (IdentValue!626 (value!21518 List!3279)) (DelimiterValue!1253 (value!21519 List!3279)) (DedentValue!626 (value!21520 List!3279)) (NewLineValue!626 (value!21521 List!3279)) (IntegerValue!1878 (value!21522 (_ BitVec 32)) (text!4829 List!3279)) (IntegerValue!1879 (value!21523 Int) (text!4830 List!3279)) (Times!626) (Or!626) (Equal!626) (Minus!626) (Broken!3134 (value!21524 List!3279)) (And!626) (Div!626) (LessEqual!626) (Mod!626) (Concat!1454) (Not!626) (Plus!626) (SpaceValue!626 (value!21525 List!3279)) (IntegerValue!1880 (value!21526 Int) (text!4831 List!3279)) (StringLiteralValue!1879 (text!4832 List!3279)) (FloatLiteralValue!1253 (text!4833 List!3279)) (BytesLiteralValue!626 (value!21527 List!3279)) (CommentValue!1253 (value!21528 List!3279)) (StringLiteralValue!1880 (value!21529 List!3279)) (ErrorTokenValue!626 (msg!687 List!3279)) )
))
(declare-datatypes ((C!2578 0))(
  ( (C!2579 (val!1175 Int)) )
))
(declare-datatypes ((List!3280 0))(
  ( (Nil!3270) (Cons!3270 (h!8667 C!2578) (t!30902 List!3280)) )
))
(declare-datatypes ((IArray!2061 0))(
  ( (IArray!2062 (innerList!1088 List!3280)) )
))
(declare-datatypes ((Conc!1030 0))(
  ( (Node!1030 (left!2597 Conc!1030) (right!2927 Conc!1030) (csize!2290 Int) (cheight!1241 Int)) (Leaf!1672 (xs!3625 IArray!2061) (csize!2291 Int)) (Empty!1030) )
))
(declare-datatypes ((BalanceConc!2068 0))(
  ( (BalanceConc!2069 (c!39309 Conc!1030)) )
))
(declare-datatypes ((TokenValueInjection!1024 0))(
  ( (TokenValueInjection!1025 (toValue!1287 Int) (toChars!1146 Int)) )
))
(declare-datatypes ((String!4212 0))(
  ( (String!4213 (value!21530 String)) )
))
(declare-datatypes ((Regex!828 0))(
  ( (ElementMatch!828 (c!39310 C!2578)) (Concat!1455 (regOne!2168 Regex!828) (regTwo!2168 Regex!828)) (EmptyExpr!828) (Star!828 (reg!1157 Regex!828)) (EmptyLang!828) (Union!828 (regOne!2169 Regex!828) (regTwo!2169 Regex!828)) )
))
(declare-datatypes ((Rule!1008 0))(
  ( (Rule!1009 (regex!604 Regex!828) (tag!790 String!4212) (isSeparator!604 Bool) (transformation!604 TokenValueInjection!1024)) )
))
(declare-datatypes ((List!3281 0))(
  ( (Nil!3271) (Cons!3271 (h!8668 Rule!1008) (t!30903 List!3281)) )
))
(declare-fun rules!1920 () List!3281)

(assert (= (and b!204727 (is-Cons!3271 rules!1920)) b!204780))

(declare-fun order!2125 () Int)

(declare-fun order!2123 () Int)

(declare-fun dynLambda!1436 (Int Int) Int)

(declare-fun dynLambda!1437 (Int Int) Int)

(assert (=> b!204782 (< (dynLambda!1436 order!2123 (toValue!1287 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6250))))

(declare-fun order!2127 () Int)

(declare-fun dynLambda!1438 (Int Int) Int)

(assert (=> b!204782 (< (dynLambda!1438 order!2127 (toChars!1146 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6250))))

(assert (=> b!204727 true))

(declare-fun e!125905 () Bool)

(assert (=> b!204725 (= e!125905 (and tp!90445 tp!90440))))

(declare-fun b!204726 () Bool)

(declare-fun e!125887 () Bool)

(declare-datatypes ((Token!952 0))(
  ( (Token!953 (value!21531 TokenValue!626) (rule!1131 Rule!1008) (size!2622 Int) (originalCharacters!647 List!3280)) )
))
(declare-datatypes ((List!3282 0))(
  ( (Nil!3272) (Cons!3272 (h!8669 Token!952) (t!30904 List!3282)) )
))
(declare-datatypes ((IArray!2063 0))(
  ( (IArray!2064 (innerList!1089 List!3282)) )
))
(declare-datatypes ((Conc!1031 0))(
  ( (Node!1031 (left!2598 Conc!1031) (right!2928 Conc!1031) (csize!2292 Int) (cheight!1242 Int)) (Leaf!1673 (xs!3626 IArray!2063) (csize!2293 Int)) (Empty!1031) )
))
(declare-datatypes ((BalanceConc!2070 0))(
  ( (BalanceConc!2071 (c!39311 Conc!1031)) )
))
(declare-datatypes ((tuple2!3408 0))(
  ( (tuple2!3409 (_1!1920 BalanceConc!2070) (_2!1920 BalanceConc!2068)) )
))
(declare-fun lt!73587 () tuple2!3408)

(declare-fun isEmpty!1703 (BalanceConc!2068) Bool)

(assert (=> b!204726 (= e!125887 (isEmpty!1703 (_2!1920 lt!73587)))))

(declare-fun e!125896 () Bool)

(declare-fun e!125882 () Bool)

(assert (=> b!204727 (= e!125896 e!125882)))

(declare-fun res!93759 () Bool)

(assert (=> b!204727 (=> res!93759 e!125882)))

(declare-fun tokens!465 () List!3282)

(declare-datatypes ((LexerInterface!490 0))(
  ( (LexerInterfaceExt!487 (__x!2740 Int)) (Lexer!488) )
))
(declare-fun thiss!17480 () LexerInterface!490)

(declare-datatypes ((tuple2!3410 0))(
  ( (tuple2!3411 (_1!1921 Token!952) (_2!1921 BalanceConc!2068)) )
))
(declare-datatypes ((Option!504 0))(
  ( (None!503) (Some!503 (v!14054 tuple2!3410)) )
))
(declare-fun isDefined!355 (Option!504) Bool)

(declare-fun maxPrefixZipperSequence!183 (LexerInterface!490 List!3281 BalanceConc!2068) Option!504)

(declare-fun seqFromList!585 (List!3280) BalanceConc!2068)

(assert (=> b!204727 (= res!93759 (not (isDefined!355 (maxPrefixZipperSequence!183 thiss!17480 rules!1920 (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465)))))))))

(declare-datatypes ((Unit!3303 0))(
  ( (Unit!3304) )
))
(declare-fun lt!73559 () Unit!3303)

(declare-fun forallContained!171 (List!3282 Int Token!952) Unit!3303)

(assert (=> b!204727 (= lt!73559 (forallContained!171 tokens!465 lambda!6250 (h!8669 tokens!465)))))

(declare-fun lt!73576 () List!3280)

(assert (=> b!204727 (= lt!73576 (originalCharacters!647 (h!8669 tokens!465)))))

(declare-fun b!204728 () Bool)

(declare-fun res!93766 () Bool)

(assert (=> b!204728 (=> (not res!93766) (not e!125887))))

(declare-fun lt!73593 () Token!952)

(declare-fun apply!533 (BalanceConc!2070 Int) Token!952)

(assert (=> b!204728 (= res!93766 (= (apply!533 (_1!1920 lt!73587) 0) lt!73593))))

(declare-fun b!204729 () Bool)

(declare-fun e!125911 () Bool)

(declare-datatypes ((tuple2!3412 0))(
  ( (tuple2!3413 (_1!1922 Token!952) (_2!1922 List!3280)) )
))
(declare-datatypes ((Option!505 0))(
  ( (None!504) (Some!504 (v!14055 tuple2!3412)) )
))
(declare-fun lt!73596 () Option!505)

(declare-fun get!973 (Option!505) tuple2!3412)

(declare-fun head!703 (List!3282) Token!952)

(assert (=> b!204729 (= e!125911 (= (_1!1922 (get!973 lt!73596)) (head!703 tokens!465)))))

(declare-fun b!204730 () Bool)

(declare-fun res!93744 () Bool)

(assert (=> b!204730 (=> res!93744 e!125896)))

(declare-fun isEmpty!1704 (BalanceConc!2070) Bool)

(declare-fun lex!290 (LexerInterface!490 List!3281 BalanceConc!2068) tuple2!3408)

(assert (=> b!204730 (= res!93744 (isEmpty!1704 (_1!1920 (lex!290 thiss!17480 rules!1920 (seqFromList!585 lt!73576)))))))

(declare-fun b!204731 () Bool)

(declare-fun e!125900 () Bool)

(declare-fun e!125903 () Bool)

(assert (=> b!204731 (= e!125900 e!125903)))

(declare-fun res!93746 () Bool)

(assert (=> b!204731 (=> (not res!93746) (not e!125903))))

(declare-fun lt!73598 () List!3280)

(declare-fun lt!73591 () List!3280)

(assert (=> b!204731 (= res!93746 (= lt!73598 lt!73591))))

(declare-fun separatorToken!170 () Token!952)

(declare-fun lt!73568 () BalanceConc!2070)

(declare-fun list!1218 (BalanceConc!2068) List!3280)

(declare-fun printWithSeparatorTokenWhenNeededRec!173 (LexerInterface!490 List!3281 BalanceConc!2070 Token!952 Int) BalanceConc!2068)

(assert (=> b!204731 (= lt!73591 (list!1218 (printWithSeparatorTokenWhenNeededRec!173 thiss!17480 rules!1920 lt!73568 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!183 (LexerInterface!490 List!3281 List!3282 Token!952) List!3280)

(assert (=> b!204731 (= lt!73598 (printWithSeparatorTokenWhenNeededList!183 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!93743 () Bool)

(declare-fun e!125895 () Bool)

(assert (=> start!22068 (=> (not res!93743) (not e!125895))))

(assert (=> start!22068 (= res!93743 (is-Lexer!488 thiss!17480))))

(assert (=> start!22068 e!125895))

(assert (=> start!22068 true))

(declare-fun e!125878 () Bool)

(assert (=> start!22068 e!125878))

(declare-fun e!125899 () Bool)

(declare-fun inv!4114 (Token!952) Bool)

(assert (=> start!22068 (and (inv!4114 separatorToken!170) e!125899)))

(declare-fun e!125914 () Bool)

(assert (=> start!22068 e!125914))

(declare-fun b!204732 () Bool)

(declare-fun e!125898 () Bool)

(assert (=> b!204732 (= e!125898 e!125896)))

(declare-fun res!93767 () Bool)

(assert (=> b!204732 (=> res!93767 e!125896)))

(declare-fun lt!73562 () List!3280)

(declare-fun lt!73580 () List!3280)

(assert (=> b!204732 (= res!93767 (or (not (= lt!73580 lt!73562)) (not (= lt!73562 lt!73576)) (not (= lt!73580 lt!73576))))))

(declare-fun printList!174 (LexerInterface!490 List!3282) List!3280)

(assert (=> b!204732 (= lt!73562 (printList!174 thiss!17480 (Cons!3272 (h!8669 tokens!465) Nil!3272)))))

(declare-fun lt!73592 () BalanceConc!2068)

(assert (=> b!204732 (= lt!73580 (list!1218 lt!73592))))

(declare-fun lt!73574 () BalanceConc!2070)

(declare-fun printTailRec!184 (LexerInterface!490 BalanceConc!2070 Int BalanceConc!2068) BalanceConc!2068)

(assert (=> b!204732 (= lt!73592 (printTailRec!184 thiss!17480 lt!73574 0 (BalanceConc!2069 Empty!1030)))))

(declare-fun print!221 (LexerInterface!490 BalanceConc!2070) BalanceConc!2068)

(assert (=> b!204732 (= lt!73592 (print!221 thiss!17480 lt!73574))))

(declare-fun singletonSeq!156 (Token!952) BalanceConc!2070)

(assert (=> b!204732 (= lt!73574 (singletonSeq!156 (h!8669 tokens!465)))))

(declare-fun b!204733 () Bool)

(declare-fun e!125880 () Unit!3303)

(declare-fun Unit!3305 () Unit!3303)

(assert (=> b!204733 (= e!125880 Unit!3305)))

(declare-fun lt!73560 () C!2578)

(declare-fun lt!73575 () List!3280)

(declare-fun lt!73565 () Unit!3303)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!3 (Regex!828 List!3280 C!2578) Unit!3303)

(assert (=> b!204733 (= lt!73565 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!3 (regex!604 (rule!1131 lt!73593)) lt!73575 lt!73560))))

(declare-fun res!93770 () Bool)

(declare-fun matchR!166 (Regex!828 List!3280) Bool)

(assert (=> b!204733 (= res!93770 (not (matchR!166 (regex!604 (rule!1131 lt!73593)) lt!73575)))))

(declare-fun e!125894 () Bool)

(assert (=> b!204733 (=> (not res!93770) (not e!125894))))

(assert (=> b!204733 e!125894))

(declare-fun e!125890 () Bool)

(declare-fun tp!90443 () Bool)

(declare-fun b!204734 () Bool)

(declare-fun inv!4111 (String!4212) Bool)

(declare-fun inv!4115 (TokenValueInjection!1024) Bool)

(assert (=> b!204734 (= e!125890 (and tp!90443 (inv!4111 (tag!790 (rule!1131 separatorToken!170))) (inv!4115 (transformation!604 (rule!1131 separatorToken!170))) e!125905))))

(declare-fun b!204735 () Bool)

(assert (=> b!204735 (= e!125894 false)))

(declare-fun b!204736 () Bool)

(declare-fun e!125884 () Bool)

(declare-fun e!125888 () Bool)

(assert (=> b!204736 (= e!125884 e!125888)))

(declare-fun res!93754 () Bool)

(assert (=> b!204736 (=> res!93754 e!125888)))

(declare-fun lt!73588 () List!3280)

(declare-fun contains!541 (List!3280 C!2578) Bool)

(declare-fun usedCharacters!9 (Regex!828) List!3280)

(declare-fun head!704 (List!3280) C!2578)

(assert (=> b!204736 (= res!93754 (not (contains!541 (usedCharacters!9 (regex!604 (rule!1131 separatorToken!170))) (head!704 lt!73588))))))

(declare-fun lt!73583 () Unit!3303)

(assert (=> b!204736 (= lt!73583 e!125880)))

(declare-fun c!39307 () Bool)

(assert (=> b!204736 (= c!39307 (not (contains!541 (usedCharacters!9 (regex!604 (rule!1131 lt!73593))) lt!73560)))))

(assert (=> b!204736 (= lt!73560 (head!704 lt!73575))))

(declare-fun e!125885 () Bool)

(assert (=> b!204736 e!125885))

(declare-fun res!93749 () Bool)

(assert (=> b!204736 (=> (not res!93749) (not e!125885))))

(declare-datatypes ((Option!506 0))(
  ( (None!505) (Some!505 (v!14056 Rule!1008)) )
))
(declare-fun lt!73577 () Option!506)

(declare-fun isDefined!356 (Option!506) Bool)

(assert (=> b!204736 (= res!93749 (isDefined!356 lt!73577))))

(declare-fun getRuleFromTag!45 (LexerInterface!490 List!3281 String!4212) Option!506)

(assert (=> b!204736 (= lt!73577 (getRuleFromTag!45 thiss!17480 rules!1920 (tag!790 (rule!1131 lt!73593))))))

(declare-fun lt!73600 () Unit!3303)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!45 (LexerInterface!490 List!3281 List!3280 Token!952) Unit!3303)

(assert (=> b!204736 (= lt!73600 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!45 thiss!17480 rules!1920 lt!73575 lt!73593))))

(declare-fun charsOf!259 (Token!952) BalanceConc!2068)

(assert (=> b!204736 (= lt!73575 (list!1218 (charsOf!259 lt!73593)))))

(declare-fun lt!73579 () Unit!3303)

(assert (=> b!204736 (= lt!73579 (forallContained!171 tokens!465 lambda!6250 lt!73593))))

(assert (=> b!204736 e!125887))

(declare-fun res!93745 () Bool)

(assert (=> b!204736 (=> (not res!93745) (not e!125887))))

(declare-fun size!2623 (BalanceConc!2070) Int)

(assert (=> b!204736 (= res!93745 (= (size!2623 (_1!1920 lt!73587)) 1))))

(declare-fun lt!73578 () BalanceConc!2068)

(assert (=> b!204736 (= lt!73587 (lex!290 thiss!17480 rules!1920 lt!73578))))

(declare-fun lt!73566 () BalanceConc!2070)

(assert (=> b!204736 (= lt!73578 (printTailRec!184 thiss!17480 lt!73566 0 (BalanceConc!2069 Empty!1030)))))

(assert (=> b!204736 (= lt!73578 (print!221 thiss!17480 lt!73566))))

(assert (=> b!204736 (= lt!73566 (singletonSeq!156 lt!73593))))

(declare-fun e!125907 () Bool)

(assert (=> b!204736 e!125907))

(declare-fun res!93758 () Bool)

(assert (=> b!204736 (=> (not res!93758) (not e!125907))))

(declare-fun lt!73564 () Option!506)

(assert (=> b!204736 (= res!93758 (isDefined!356 lt!73564))))

(assert (=> b!204736 (= lt!73564 (getRuleFromTag!45 thiss!17480 rules!1920 (tag!790 (rule!1131 separatorToken!170))))))

(declare-fun lt!73597 () List!3280)

(declare-fun lt!73585 () Unit!3303)

(assert (=> b!204736 (= lt!73585 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!45 thiss!17480 rules!1920 lt!73597 separatorToken!170))))

(declare-fun e!125908 () Bool)

(assert (=> b!204736 e!125908))

(declare-fun res!93756 () Bool)

(assert (=> b!204736 (=> (not res!93756) (not e!125908))))

(declare-fun lt!73584 () tuple2!3408)

(assert (=> b!204736 (= res!93756 (= (size!2623 (_1!1920 lt!73584)) 1))))

(declare-fun lt!73582 () BalanceConc!2068)

(assert (=> b!204736 (= lt!73584 (lex!290 thiss!17480 rules!1920 lt!73582))))

(declare-fun lt!73594 () BalanceConc!2070)

(assert (=> b!204736 (= lt!73582 (printTailRec!184 thiss!17480 lt!73594 0 (BalanceConc!2069 Empty!1030)))))

(assert (=> b!204736 (= lt!73582 (print!221 thiss!17480 lt!73594))))

(assert (=> b!204736 (= lt!73594 (singletonSeq!156 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!239 (LexerInterface!490 List!3281 Token!952) Bool)

(assert (=> b!204736 (rulesProduceIndividualToken!239 thiss!17480 rules!1920 lt!73593)))

(declare-fun lt!73573 () Unit!3303)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!57 (LexerInterface!490 List!3281 List!3282 Token!952) Unit!3303)

(assert (=> b!204736 (= lt!73573 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!57 thiss!17480 rules!1920 tokens!465 lt!73593))))

(assert (=> b!204736 (= lt!73593 (head!703 (t!30904 tokens!465)))))

(declare-fun lt!73570 () Unit!3303)

(declare-fun e!125909 () Unit!3303)

(assert (=> b!204736 (= lt!73570 e!125909)))

(declare-fun c!39308 () Bool)

(declare-fun isEmpty!1705 (List!3282) Bool)

(assert (=> b!204736 (= c!39308 (isEmpty!1705 (t!30904 tokens!465)))))

(declare-fun lt!73602 () List!3280)

(declare-fun lt!73595 () Option!505)

(declare-fun maxPrefix!220 (LexerInterface!490 List!3281 List!3280) Option!505)

(assert (=> b!204736 (= lt!73595 (maxPrefix!220 thiss!17480 rules!1920 lt!73602))))

(declare-fun lt!73586 () tuple2!3412)

(assert (=> b!204736 (= lt!73602 (_2!1922 lt!73586))))

(declare-fun lt!73599 () Unit!3303)

(declare-fun lemmaSamePrefixThenSameSuffix!125 (List!3280 List!3280 List!3280 List!3280 List!3280) Unit!3303)

(assert (=> b!204736 (= lt!73599 (lemmaSamePrefixThenSameSuffix!125 lt!73576 lt!73602 lt!73576 (_2!1922 lt!73586) lt!73598))))

(assert (=> b!204736 (= lt!73586 (get!973 (maxPrefix!220 thiss!17480 rules!1920 lt!73598)))))

(declare-fun lt!73601 () List!3280)

(declare-fun isPrefix!300 (List!3280 List!3280) Bool)

(assert (=> b!204736 (isPrefix!300 lt!73576 lt!73601)))

(declare-fun lt!73563 () Unit!3303)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!195 (List!3280 List!3280) Unit!3303)

(assert (=> b!204736 (= lt!73563 (lemmaConcatTwoListThenFirstIsPrefix!195 lt!73576 lt!73602))))

(declare-fun e!125889 () Bool)

(assert (=> b!204736 e!125889))

(declare-fun res!93751 () Bool)

(assert (=> b!204736 (=> res!93751 e!125889)))

(assert (=> b!204736 (= res!93751 (isEmpty!1705 tokens!465))))

(declare-fun lt!73569 () Unit!3303)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!65 (LexerInterface!490 List!3281 List!3282 Token!952) Unit!3303)

(assert (=> b!204736 (= lt!73569 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!65 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!204737 () Bool)

(declare-fun res!93768 () Bool)

(assert (=> b!204737 (=> (not res!93768) (not e!125895))))

(declare-fun rulesInvariant!456 (LexerInterface!490 List!3281) Bool)

(assert (=> b!204737 (= res!93768 (rulesInvariant!456 thiss!17480 rules!1920))))

(declare-fun b!204738 () Bool)

(declare-fun Unit!3306 () Unit!3303)

(assert (=> b!204738 (= e!125909 Unit!3306)))

(declare-fun b!204739 () Bool)

(declare-fun res!93755 () Bool)

(assert (=> b!204739 (=> (not res!93755) (not e!125908))))

(assert (=> b!204739 (= res!93755 (= (apply!533 (_1!1920 lt!73584) 0) separatorToken!170))))

(declare-fun b!204740 () Bool)

(declare-fun res!93771 () Bool)

(assert (=> b!204740 (=> res!93771 e!125896)))

(assert (=> b!204740 (= res!93771 (not (rulesProduceIndividualToken!239 thiss!17480 rules!1920 (h!8669 tokens!465))))))

(declare-fun b!204741 () Bool)

(declare-fun e!125904 () Bool)

(assert (=> b!204741 (= e!125885 e!125904)))

(declare-fun res!93753 () Bool)

(assert (=> b!204741 (=> (not res!93753) (not e!125904))))

(declare-fun lt!73571 () Rule!1008)

(assert (=> b!204741 (= res!93753 (matchR!166 (regex!604 lt!73571) lt!73575))))

(declare-fun get!974 (Option!506) Rule!1008)

(assert (=> b!204741 (= lt!73571 (get!974 lt!73577))))

(declare-fun b!204742 () Bool)

(assert (=> b!204742 (= e!125895 e!125900)))

(declare-fun res!93747 () Bool)

(assert (=> b!204742 (=> (not res!93747) (not e!125900))))

(declare-fun rulesProduceEachTokenIndividually!282 (LexerInterface!490 List!3281 BalanceConc!2070) Bool)

(assert (=> b!204742 (= res!93747 (rulesProduceEachTokenIndividually!282 thiss!17480 rules!1920 lt!73568))))

(declare-fun seqFromList!586 (List!3282) BalanceConc!2070)

(assert (=> b!204742 (= lt!73568 (seqFromList!586 tokens!465))))

(declare-fun b!204743 () Bool)

(declare-fun res!93741 () Bool)

(assert (=> b!204743 (=> (not res!93741) (not e!125903))))

(assert (=> b!204743 (= res!93741 (= (list!1218 (seqFromList!585 lt!73598)) lt!73591))))

(declare-fun b!204744 () Bool)

(declare-fun Unit!3307 () Unit!3303)

(assert (=> b!204744 (= e!125880 Unit!3307)))

(declare-fun b!204745 () Bool)

(declare-fun res!93760 () Bool)

(declare-fun e!125879 () Bool)

(assert (=> b!204745 (=> (not res!93760) (not e!125879))))

(declare-fun lt!73590 () tuple2!3412)

(declare-fun isEmpty!1706 (List!3280) Bool)

(assert (=> b!204745 (= res!93760 (isEmpty!1706 (_2!1922 lt!73590)))))

(declare-fun e!125897 () Bool)

(declare-fun b!204746 () Bool)

(declare-fun ++!799 (List!3280 List!3280) List!3280)

(assert (=> b!204746 (= e!125897 (not (= lt!73598 (++!799 lt!73576 lt!73588))))))

(declare-fun b!204747 () Bool)

(assert (=> b!204747 (= e!125908 (isEmpty!1703 (_2!1920 lt!73584)))))

(declare-fun tp!90437 () Bool)

(declare-fun b!204748 () Bool)

(declare-fun e!125886 () Bool)

(declare-fun e!125901 () Bool)

(assert (=> b!204748 (= e!125901 (and tp!90437 (inv!4111 (tag!790 (h!8668 rules!1920))) (inv!4115 (transformation!604 (h!8668 rules!1920))) e!125886))))

(declare-fun b!204749 () Bool)

(declare-fun tp!90441 () Bool)

(assert (=> b!204749 (= e!125878 (and e!125901 tp!90441))))

(declare-fun b!204750 () Bool)

(declare-fun res!93750 () Bool)

(assert (=> b!204750 (=> (not res!93750) (not e!125900))))

(assert (=> b!204750 (= res!93750 (isSeparator!604 (rule!1131 separatorToken!170)))))

(declare-fun b!204751 () Bool)

(declare-fun e!125883 () Bool)

(assert (=> b!204751 (= e!125903 (not e!125883))))

(declare-fun res!93752 () Bool)

(assert (=> b!204751 (=> res!93752 e!125883)))

(assert (=> b!204751 (= res!93752 (not (= lt!73588 (list!1218 (printWithSeparatorTokenWhenNeededRec!173 thiss!17480 rules!1920 (seqFromList!586 (t!30904 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!73561 () List!3280)

(assert (=> b!204751 (= lt!73561 lt!73601)))

(assert (=> b!204751 (= lt!73601 (++!799 lt!73576 lt!73602))))

(assert (=> b!204751 (= lt!73561 (++!799 (++!799 lt!73576 lt!73597) lt!73588))))

(declare-fun lt!73567 () Unit!3303)

(declare-fun lemmaConcatAssociativity!299 (List!3280 List!3280 List!3280) Unit!3303)

(assert (=> b!204751 (= lt!73567 (lemmaConcatAssociativity!299 lt!73576 lt!73597 lt!73588))))

(assert (=> b!204751 (= lt!73576 (list!1218 (charsOf!259 (h!8669 tokens!465))))))

(assert (=> b!204751 (= lt!73602 (++!799 lt!73597 lt!73588))))

(assert (=> b!204751 (= lt!73588 (printWithSeparatorTokenWhenNeededList!183 thiss!17480 rules!1920 (t!30904 tokens!465) separatorToken!170))))

(assert (=> b!204751 (= lt!73597 (list!1218 (charsOf!259 separatorToken!170)))))

(declare-fun b!204752 () Bool)

(declare-fun res!93769 () Bool)

(assert (=> b!204752 (=> (not res!93769) (not e!125895))))

(declare-fun isEmpty!1707 (List!3281) Bool)

(assert (=> b!204752 (= res!93769 (not (isEmpty!1707 rules!1920)))))

(declare-fun b!204753 () Bool)

(declare-fun res!93742 () Bool)

(assert (=> b!204753 (=> (not res!93742) (not e!125900))))

(assert (=> b!204753 (= res!93742 (is-Cons!3272 tokens!465))))

(declare-fun b!204754 () Bool)

(declare-fun res!93757 () Bool)

(assert (=> b!204754 (=> (not res!93757) (not e!125900))))

(declare-fun sepAndNonSepRulesDisjointChars!193 (List!3281 List!3281) Bool)

(assert (=> b!204754 (= res!93757 (sepAndNonSepRulesDisjointChars!193 rules!1920 rules!1920))))

(declare-fun b!204755 () Bool)

(declare-fun tp!90446 () Bool)

(declare-fun inv!21 (TokenValue!626) Bool)

(assert (=> b!204755 (= e!125899 (and (inv!21 (value!21531 separatorToken!170)) e!125890 tp!90446))))

(declare-fun b!204756 () Bool)

(assert (=> b!204756 (= e!125879 (matchR!166 (regex!604 (rule!1131 (h!8669 tokens!465))) lt!73576))))

(declare-fun e!125892 () Bool)

(assert (=> b!204757 (= e!125892 (and tp!90444 tp!90434))))

(declare-fun res!93765 () Bool)

(assert (=> b!204758 (=> (not res!93765) (not e!125900))))

(declare-fun forall!706 (List!3282 Int) Bool)

(assert (=> b!204758 (= res!93765 (forall!706 tokens!465 lambda!6249))))

(declare-fun b!204759 () Bool)

(declare-fun e!125912 () Bool)

(assert (=> b!204759 (= e!125907 e!125912)))

(declare-fun res!93761 () Bool)

(assert (=> b!204759 (=> (not res!93761) (not e!125912))))

(declare-fun lt!73572 () Rule!1008)

(assert (=> b!204759 (= res!93761 (matchR!166 (regex!604 lt!73572) lt!73597))))

(assert (=> b!204759 (= lt!73572 (get!974 lt!73564))))

(declare-fun tp!90435 () Bool)

(declare-fun b!204760 () Bool)

(declare-fun e!125881 () Bool)

(declare-fun e!125891 () Bool)

(assert (=> b!204760 (= e!125891 (and (inv!21 (value!21531 (h!8669 tokens!465))) e!125881 tp!90435))))

(declare-fun b!204761 () Bool)

(assert (=> b!204761 (= e!125904 (= (rule!1131 lt!73593) lt!73571))))

(declare-fun b!204762 () Bool)

(assert (=> b!204762 (= e!125888 (not (= lt!73588 Nil!3270)))))

(declare-fun b!204763 () Bool)

(declare-fun res!93763 () Bool)

(assert (=> b!204763 (=> (not res!93763) (not e!125900))))

(assert (=> b!204763 (= res!93763 (rulesProduceIndividualToken!239 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!204764 () Bool)

(assert (=> b!204764 (= e!125883 e!125898)))

(declare-fun res!93764 () Bool)

(assert (=> b!204764 (=> res!93764 e!125898)))

(assert (=> b!204764 (= res!93764 e!125897)))

(declare-fun res!93748 () Bool)

(assert (=> b!204764 (=> (not res!93748) (not e!125897))))

(declare-fun lt!73581 () Bool)

(assert (=> b!204764 (= res!93748 (not lt!73581))))

(assert (=> b!204764 (= lt!73581 (= lt!73598 lt!73601))))

(assert (=> b!204765 (= e!125886 (and tp!90438 tp!90436))))

(declare-fun b!204766 () Bool)

(assert (=> b!204766 (= e!125912 (= (rule!1131 separatorToken!170) lt!73572))))

(declare-fun b!204767 () Bool)

(declare-fun tp!90442 () Bool)

(assert (=> b!204767 (= e!125881 (and tp!90442 (inv!4111 (tag!790 (rule!1131 (h!8669 tokens!465)))) (inv!4115 (transformation!604 (rule!1131 (h!8669 tokens!465)))) e!125892))))

(declare-fun tp!90439 () Bool)

(declare-fun b!204768 () Bool)

(assert (=> b!204768 (= e!125914 (and (inv!4114 (h!8669 tokens!465)) e!125891 tp!90439))))

(declare-fun b!204769 () Bool)

(assert (=> b!204769 (= e!125882 e!125884)))

(declare-fun res!93762 () Bool)

(assert (=> b!204769 (=> res!93762 e!125884)))

(assert (=> b!204769 (= res!93762 (not lt!73581))))

(assert (=> b!204769 e!125879))

(declare-fun res!93773 () Bool)

(assert (=> b!204769 (=> (not res!93773) (not e!125879))))

(assert (=> b!204769 (= res!93773 (= (_1!1922 lt!73590) (h!8669 tokens!465)))))

(declare-fun lt!73589 () Option!505)

(assert (=> b!204769 (= lt!73590 (get!973 lt!73589))))

(declare-fun isDefined!357 (Option!505) Bool)

(assert (=> b!204769 (isDefined!357 lt!73589)))

(assert (=> b!204769 (= lt!73589 (maxPrefix!220 thiss!17480 rules!1920 lt!73576))))

(declare-fun b!204770 () Bool)

(declare-fun Unit!3308 () Unit!3303)

(assert (=> b!204770 (= e!125909 Unit!3308)))

(assert (=> b!204770 false))

(declare-fun b!204771 () Bool)

(assert (=> b!204771 (= e!125889 e!125911)))

(declare-fun res!93772 () Bool)

(assert (=> b!204771 (=> (not res!93772) (not e!125911))))

(assert (=> b!204771 (= res!93772 (isDefined!357 lt!73596))))

(assert (=> b!204771 (= lt!73596 (maxPrefix!220 thiss!17480 rules!1920 lt!73598))))

(assert (= (and start!22068 res!93743) b!204752))

(assert (= (and b!204752 res!93769) b!204737))

(assert (= (and b!204737 res!93768) b!204742))

(assert (= (and b!204742 res!93747) b!204763))

(assert (= (and b!204763 res!93763) b!204750))

(assert (= (and b!204750 res!93750) b!204758))

(assert (= (and b!204758 res!93765) b!204754))

(assert (= (and b!204754 res!93757) b!204753))

(assert (= (and b!204753 res!93742) b!204731))

(assert (= (and b!204731 res!93746) b!204743))

(assert (= (and b!204743 res!93741) b!204751))

(assert (= (and b!204751 (not res!93752)) b!204764))

(assert (= (and b!204764 res!93748) b!204746))

(assert (= (and b!204764 (not res!93764)) b!204732))

(assert (= (and b!204732 (not res!93767)) b!204740))

(assert (= (and b!204740 (not res!93771)) b!204730))

(assert (= (and b!204730 (not res!93744)) b!204727))

(assert (= (and b!204727 (not res!93759)) b!204769))

(assert (= (and b!204769 res!93773) b!204745))

(assert (= (and b!204745 res!93760) b!204756))

(assert (= (and b!204769 (not res!93762)) b!204736))

(assert (= (and b!204736 (not res!93751)) b!204771))

(assert (= (and b!204771 res!93772) b!204729))

(assert (= (and b!204736 c!39308) b!204770))

(assert (= (and b!204736 (not c!39308)) b!204738))

(assert (= (and b!204736 res!93756) b!204739))

(assert (= (and b!204739 res!93755) b!204747))

(assert (= (and b!204736 res!93758) b!204759))

(assert (= (and b!204759 res!93761) b!204766))

(assert (= (and b!204736 res!93745) b!204728))

(assert (= (and b!204728 res!93766) b!204726))

(assert (= (and b!204736 res!93749) b!204741))

(assert (= (and b!204741 res!93753) b!204761))

(assert (= (and b!204736 c!39307) b!204733))

(assert (= (and b!204736 (not c!39307)) b!204744))

(assert (= (and b!204733 res!93770) b!204735))

(assert (= (and b!204736 (not res!93754)) b!204762))

(assert (= b!204748 b!204765))

(assert (= b!204749 b!204748))

(assert (= (and start!22068 (is-Cons!3271 rules!1920)) b!204749))

(assert (= b!204734 b!204725))

(assert (= b!204755 b!204734))

(assert (= start!22068 b!204755))

(assert (= b!204767 b!204757))

(assert (= b!204760 b!204767))

(assert (= b!204768 b!204760))

(assert (= (and start!22068 (is-Cons!3272 tokens!465)) b!204768))

(declare-fun m!225099 () Bool)

(assert (=> b!204759 m!225099))

(declare-fun m!225101 () Bool)

(assert (=> b!204759 m!225101))

(declare-fun m!225103 () Bool)

(assert (=> b!204756 m!225103))

(declare-fun m!225105 () Bool)

(assert (=> b!204726 m!225105))

(declare-fun m!225107 () Bool)

(assert (=> b!204732 m!225107))

(declare-fun m!225109 () Bool)

(assert (=> b!204732 m!225109))

(declare-fun m!225111 () Bool)

(assert (=> b!204732 m!225111))

(declare-fun m!225113 () Bool)

(assert (=> b!204732 m!225113))

(declare-fun m!225115 () Bool)

(assert (=> b!204732 m!225115))

(declare-fun m!225117 () Bool)

(assert (=> b!204755 m!225117))

(declare-fun m!225119 () Bool)

(assert (=> b!204730 m!225119))

(assert (=> b!204730 m!225119))

(declare-fun m!225121 () Bool)

(assert (=> b!204730 m!225121))

(declare-fun m!225123 () Bool)

(assert (=> b!204730 m!225123))

(declare-fun m!225125 () Bool)

(assert (=> start!22068 m!225125))

(declare-fun m!225127 () Bool)

(assert (=> b!204742 m!225127))

(declare-fun m!225129 () Bool)

(assert (=> b!204742 m!225129))

(declare-fun m!225131 () Bool)

(assert (=> b!204737 m!225131))

(declare-fun m!225133 () Bool)

(assert (=> b!204745 m!225133))

(declare-fun m!225135 () Bool)

(assert (=> b!204741 m!225135))

(declare-fun m!225137 () Bool)

(assert (=> b!204741 m!225137))

(declare-fun m!225139 () Bool)

(assert (=> b!204748 m!225139))

(declare-fun m!225141 () Bool)

(assert (=> b!204748 m!225141))

(declare-fun m!225143 () Bool)

(assert (=> b!204736 m!225143))

(declare-fun m!225145 () Bool)

(assert (=> b!204736 m!225145))

(declare-fun m!225147 () Bool)

(assert (=> b!204736 m!225147))

(declare-fun m!225149 () Bool)

(assert (=> b!204736 m!225149))

(declare-fun m!225151 () Bool)

(assert (=> b!204736 m!225151))

(declare-fun m!225153 () Bool)

(assert (=> b!204736 m!225153))

(declare-fun m!225155 () Bool)

(assert (=> b!204736 m!225155))

(declare-fun m!225157 () Bool)

(assert (=> b!204736 m!225157))

(declare-fun m!225159 () Bool)

(assert (=> b!204736 m!225159))

(declare-fun m!225161 () Bool)

(assert (=> b!204736 m!225161))

(declare-fun m!225163 () Bool)

(assert (=> b!204736 m!225163))

(assert (=> b!204736 m!225159))

(declare-fun m!225165 () Bool)

(assert (=> b!204736 m!225165))

(declare-fun m!225167 () Bool)

(assert (=> b!204736 m!225167))

(assert (=> b!204736 m!225145))

(declare-fun m!225169 () Bool)

(assert (=> b!204736 m!225169))

(declare-fun m!225171 () Bool)

(assert (=> b!204736 m!225171))

(declare-fun m!225173 () Bool)

(assert (=> b!204736 m!225173))

(declare-fun m!225175 () Bool)

(assert (=> b!204736 m!225175))

(declare-fun m!225177 () Bool)

(assert (=> b!204736 m!225177))

(declare-fun m!225179 () Bool)

(assert (=> b!204736 m!225179))

(declare-fun m!225181 () Bool)

(assert (=> b!204736 m!225181))

(declare-fun m!225183 () Bool)

(assert (=> b!204736 m!225183))

(declare-fun m!225185 () Bool)

(assert (=> b!204736 m!225185))

(declare-fun m!225187 () Bool)

(assert (=> b!204736 m!225187))

(declare-fun m!225189 () Bool)

(assert (=> b!204736 m!225189))

(declare-fun m!225191 () Bool)

(assert (=> b!204736 m!225191))

(declare-fun m!225193 () Bool)

(assert (=> b!204736 m!225193))

(declare-fun m!225195 () Bool)

(assert (=> b!204736 m!225195))

(declare-fun m!225197 () Bool)

(assert (=> b!204736 m!225197))

(declare-fun m!225199 () Bool)

(assert (=> b!204736 m!225199))

(declare-fun m!225201 () Bool)

(assert (=> b!204736 m!225201))

(assert (=> b!204736 m!225169))

(declare-fun m!225203 () Bool)

(assert (=> b!204736 m!225203))

(declare-fun m!225205 () Bool)

(assert (=> b!204736 m!225205))

(declare-fun m!225207 () Bool)

(assert (=> b!204736 m!225207))

(declare-fun m!225209 () Bool)

(assert (=> b!204736 m!225209))

(assert (=> b!204736 m!225147))

(declare-fun m!225211 () Bool)

(assert (=> b!204736 m!225211))

(declare-fun m!225213 () Bool)

(assert (=> b!204736 m!225213))

(assert (=> b!204736 m!225191))

(declare-fun m!225215 () Bool)

(assert (=> b!204736 m!225215))

(declare-fun m!225217 () Bool)

(assert (=> b!204734 m!225217))

(declare-fun m!225219 () Bool)

(assert (=> b!204734 m!225219))

(declare-fun m!225221 () Bool)

(assert (=> b!204727 m!225221))

(assert (=> b!204727 m!225221))

(declare-fun m!225223 () Bool)

(assert (=> b!204727 m!225223))

(assert (=> b!204727 m!225223))

(declare-fun m!225225 () Bool)

(assert (=> b!204727 m!225225))

(declare-fun m!225227 () Bool)

(assert (=> b!204727 m!225227))

(declare-fun m!225229 () Bool)

(assert (=> b!204731 m!225229))

(assert (=> b!204731 m!225229))

(declare-fun m!225231 () Bool)

(assert (=> b!204731 m!225231))

(declare-fun m!225233 () Bool)

(assert (=> b!204731 m!225233))

(declare-fun m!225235 () Bool)

(assert (=> b!204739 m!225235))

(declare-fun m!225237 () Bool)

(assert (=> b!204728 m!225237))

(declare-fun m!225239 () Bool)

(assert (=> b!204763 m!225239))

(declare-fun m!225241 () Bool)

(assert (=> b!204758 m!225241))

(declare-fun m!225243 () Bool)

(assert (=> b!204754 m!225243))

(declare-fun m!225245 () Bool)

(assert (=> b!204729 m!225245))

(declare-fun m!225247 () Bool)

(assert (=> b!204729 m!225247))

(declare-fun m!225249 () Bool)

(assert (=> b!204747 m!225249))

(declare-fun m!225251 () Bool)

(assert (=> b!204751 m!225251))

(declare-fun m!225253 () Bool)

(assert (=> b!204751 m!225253))

(declare-fun m!225255 () Bool)

(assert (=> b!204751 m!225255))

(declare-fun m!225257 () Bool)

(assert (=> b!204751 m!225257))

(declare-fun m!225259 () Bool)

(assert (=> b!204751 m!225259))

(declare-fun m!225261 () Bool)

(assert (=> b!204751 m!225261))

(assert (=> b!204751 m!225257))

(declare-fun m!225263 () Bool)

(assert (=> b!204751 m!225263))

(declare-fun m!225265 () Bool)

(assert (=> b!204751 m!225265))

(assert (=> b!204751 m!225251))

(declare-fun m!225267 () Bool)

(assert (=> b!204751 m!225267))

(declare-fun m!225269 () Bool)

(assert (=> b!204751 m!225269))

(declare-fun m!225271 () Bool)

(assert (=> b!204751 m!225271))

(assert (=> b!204751 m!225263))

(assert (=> b!204751 m!225269))

(declare-fun m!225273 () Bool)

(assert (=> b!204751 m!225273))

(assert (=> b!204751 m!225267))

(declare-fun m!225275 () Bool)

(assert (=> b!204751 m!225275))

(declare-fun m!225277 () Bool)

(assert (=> b!204743 m!225277))

(assert (=> b!204743 m!225277))

(declare-fun m!225279 () Bool)

(assert (=> b!204743 m!225279))

(declare-fun m!225281 () Bool)

(assert (=> b!204733 m!225281))

(declare-fun m!225283 () Bool)

(assert (=> b!204733 m!225283))

(declare-fun m!225285 () Bool)

(assert (=> b!204752 m!225285))

(declare-fun m!225287 () Bool)

(assert (=> b!204760 m!225287))

(declare-fun m!225289 () Bool)

(assert (=> b!204769 m!225289))

(declare-fun m!225291 () Bool)

(assert (=> b!204769 m!225291))

(declare-fun m!225293 () Bool)

(assert (=> b!204769 m!225293))

(declare-fun m!225295 () Bool)

(assert (=> b!204767 m!225295))

(declare-fun m!225297 () Bool)

(assert (=> b!204767 m!225297))

(declare-fun m!225299 () Bool)

(assert (=> b!204740 m!225299))

(declare-fun m!225301 () Bool)

(assert (=> b!204771 m!225301))

(assert (=> b!204771 m!225169))

(declare-fun m!225303 () Bool)

(assert (=> b!204746 m!225303))

(declare-fun m!225305 () Bool)

(assert (=> b!204768 m!225305))

(push 1)

(assert (not b!204768))

(assert (not b!204756))

(assert (not b!204745))

(assert b_and!14805)

(assert (not b!204752))

(assert (not b!204737))

(assert (not b!204746))

(assert (not b!204751))

(assert (not b_next!7885))

(assert (not b!204733))

(assert (not b!204742))

(assert (not b!204754))

(assert (not b!204734))

(assert (not b!204749))

(assert (not b!204769))

(assert (not b!204728))

(assert (not b!204736))

(assert (not b!204763))

(assert (not b!204732))

(assert (not b!204726))

(assert (not b!204731))

(assert (not b!204758))

(assert (not b!204767))

(assert (not b!204740))

(assert (not b!204771))

(assert (not b_next!7895))

(assert (not start!22068))

(assert b_and!14801)

(assert (not b!204739))

(assert (not b!204729))

(assert (not b_next!7889))

(assert (not b_next!7887))

(assert (not b_next!7891))

(assert (not b!204727))

(assert (not b!204730))

(assert (not b!204760))

(assert b_and!14799)

(assert (not b_next!7893))

(assert (not b!204755))

(assert (not b!204747))

(assert b_and!14807)

(assert b_and!14803)

(assert b_and!14797)

(assert (not b!204780))

(assert (not b!204759))

(assert (not b!204748))

(assert (not b!204743))

(assert (not b!204741))

(check-sat)

(pop 1)

(push 1)

(assert b_and!14805)

(assert (not b_next!7895))

(assert b_and!14801)

(assert b_and!14807)

(assert (not b_next!7885))

(assert (not b_next!7889))

(assert (not b_next!7887))

(assert (not b_next!7891))

(assert b_and!14799)

(assert (not b_next!7893))

(assert b_and!14803)

(assert b_and!14797)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!204967 () Bool)

(declare-fun e!126062 () Bool)

(declare-fun lt!73737 () Bool)

(assert (=> b!204967 (= e!126062 (not lt!73737))))

(declare-fun b!204968 () Bool)

(declare-fun e!126063 () Bool)

(declare-fun nullable!135 (Regex!828) Bool)

(assert (=> b!204968 (= e!126063 (nullable!135 (regex!604 lt!73572)))))

(declare-fun b!204969 () Bool)

(declare-fun res!93895 () Bool)

(declare-fun e!126059 () Bool)

(assert (=> b!204969 (=> (not res!93895) (not e!126059))))

(declare-fun call!9879 () Bool)

(assert (=> b!204969 (= res!93895 (not call!9879))))

(declare-fun b!204970 () Bool)

(assert (=> b!204970 (= e!126059 (= (head!704 lt!73597) (c!39310 (regex!604 lt!73572))))))

(declare-fun b!204971 () Bool)

(declare-fun res!93898 () Bool)

(declare-fun e!126064 () Bool)

(assert (=> b!204971 (=> res!93898 e!126064)))

(assert (=> b!204971 (= res!93898 e!126059)))

(declare-fun res!93894 () Bool)

(assert (=> b!204971 (=> (not res!93894) (not e!126059))))

(assert (=> b!204971 (= res!93894 lt!73737)))

(declare-fun b!204972 () Bool)

(declare-fun e!126058 () Bool)

(assert (=> b!204972 (= e!126058 (not (= (head!704 lt!73597) (c!39310 (regex!604 lt!73572)))))))

(declare-fun b!204973 () Bool)

(declare-fun e!126061 () Bool)

(assert (=> b!204973 (= e!126061 (= lt!73737 call!9879))))

(declare-fun b!204975 () Bool)

(declare-fun derivativeStep!101 (Regex!828 C!2578) Regex!828)

(declare-fun tail!399 (List!3280) List!3280)

(assert (=> b!204975 (= e!126063 (matchR!166 (derivativeStep!101 (regex!604 lt!73572) (head!704 lt!73597)) (tail!399 lt!73597)))))

(declare-fun b!204976 () Bool)

(declare-fun res!93899 () Bool)

(assert (=> b!204976 (=> res!93899 e!126058)))

(assert (=> b!204976 (= res!93899 (not (isEmpty!1706 (tail!399 lt!73597))))))

(declare-fun b!204977 () Bool)

(assert (=> b!204977 (= e!126061 e!126062)))

(declare-fun c!39328 () Bool)

(assert (=> b!204977 (= c!39328 (is-EmptyLang!828 (regex!604 lt!73572)))))

(declare-fun b!204978 () Bool)

(declare-fun res!93896 () Bool)

(assert (=> b!204978 (=> res!93896 e!126064)))

(assert (=> b!204978 (= res!93896 (not (is-ElementMatch!828 (regex!604 lt!73572))))))

(assert (=> b!204978 (= e!126062 e!126064)))

(declare-fun bm!9874 () Bool)

(assert (=> bm!9874 (= call!9879 (isEmpty!1706 lt!73597))))

(declare-fun d!54170 () Bool)

(assert (=> d!54170 e!126061))

(declare-fun c!39330 () Bool)

(assert (=> d!54170 (= c!39330 (is-EmptyExpr!828 (regex!604 lt!73572)))))

(assert (=> d!54170 (= lt!73737 e!126063)))

(declare-fun c!39329 () Bool)

(assert (=> d!54170 (= c!39329 (isEmpty!1706 lt!73597))))

(declare-fun validRegex!210 (Regex!828) Bool)

(assert (=> d!54170 (validRegex!210 (regex!604 lt!73572))))

(assert (=> d!54170 (= (matchR!166 (regex!604 lt!73572) lt!73597) lt!73737)))

(declare-fun b!204974 () Bool)

(declare-fun e!126060 () Bool)

(assert (=> b!204974 (= e!126060 e!126058)))

(declare-fun res!93897 () Bool)

(assert (=> b!204974 (=> res!93897 e!126058)))

(assert (=> b!204974 (= res!93897 call!9879)))

(declare-fun b!204979 () Bool)

(declare-fun res!93901 () Bool)

(assert (=> b!204979 (=> (not res!93901) (not e!126059))))

(assert (=> b!204979 (= res!93901 (isEmpty!1706 (tail!399 lt!73597)))))

(declare-fun b!204980 () Bool)

(assert (=> b!204980 (= e!126064 e!126060)))

(declare-fun res!93900 () Bool)

(assert (=> b!204980 (=> (not res!93900) (not e!126060))))

(assert (=> b!204980 (= res!93900 (not lt!73737))))

(assert (= (and d!54170 c!39329) b!204968))

(assert (= (and d!54170 (not c!39329)) b!204975))

(assert (= (and d!54170 c!39330) b!204973))

(assert (= (and d!54170 (not c!39330)) b!204977))

(assert (= (and b!204977 c!39328) b!204967))

(assert (= (and b!204977 (not c!39328)) b!204978))

(assert (= (and b!204978 (not res!93896)) b!204971))

(assert (= (and b!204971 res!93894) b!204969))

(assert (= (and b!204969 res!93895) b!204979))

(assert (= (and b!204979 res!93901) b!204970))

(assert (= (and b!204971 (not res!93898)) b!204980))

(assert (= (and b!204980 res!93900) b!204974))

(assert (= (and b!204974 (not res!93897)) b!204976))

(assert (= (and b!204976 (not res!93899)) b!204972))

(assert (= (or b!204973 b!204969 b!204974) bm!9874))

(declare-fun m!225515 () Bool)

(assert (=> d!54170 m!225515))

(declare-fun m!225517 () Bool)

(assert (=> d!54170 m!225517))

(declare-fun m!225519 () Bool)

(assert (=> b!204970 m!225519))

(assert (=> bm!9874 m!225515))

(assert (=> b!204972 m!225519))

(assert (=> b!204975 m!225519))

(assert (=> b!204975 m!225519))

(declare-fun m!225521 () Bool)

(assert (=> b!204975 m!225521))

(declare-fun m!225523 () Bool)

(assert (=> b!204975 m!225523))

(assert (=> b!204975 m!225521))

(assert (=> b!204975 m!225523))

(declare-fun m!225525 () Bool)

(assert (=> b!204975 m!225525))

(assert (=> b!204979 m!225523))

(assert (=> b!204979 m!225523))

(declare-fun m!225527 () Bool)

(assert (=> b!204979 m!225527))

(declare-fun m!225529 () Bool)

(assert (=> b!204968 m!225529))

(assert (=> b!204976 m!225523))

(assert (=> b!204976 m!225523))

(assert (=> b!204976 m!225527))

(assert (=> b!204759 d!54170))

(declare-fun d!54172 () Bool)

(assert (=> d!54172 (= (get!974 lt!73564) (v!14056 lt!73564))))

(assert (=> b!204759 d!54172))

(declare-fun d!54174 () Bool)

(assert (=> d!54174 (= (head!704 lt!73575) (h!8667 lt!73575))))

(assert (=> b!204736 d!54174))

(declare-fun d!54176 () Bool)

(declare-fun e!126067 () Bool)

(assert (=> d!54176 e!126067))

(declare-fun res!93904 () Bool)

(assert (=> d!54176 (=> (not res!93904) (not e!126067))))

(declare-fun lt!73740 () BalanceConc!2070)

(declare-fun list!1220 (BalanceConc!2070) List!3282)

(assert (=> d!54176 (= res!93904 (= (list!1220 lt!73740) (Cons!3272 separatorToken!170 Nil!3272)))))

(declare-fun singleton!66 (Token!952) BalanceConc!2070)

(assert (=> d!54176 (= lt!73740 (singleton!66 separatorToken!170))))

(assert (=> d!54176 (= (singletonSeq!156 separatorToken!170) lt!73740)))

(declare-fun b!204983 () Bool)

(declare-fun isBalanced!277 (Conc!1031) Bool)

(assert (=> b!204983 (= e!126067 (isBalanced!277 (c!39311 lt!73740)))))

(assert (= (and d!54176 res!93904) b!204983))

(declare-fun m!225531 () Bool)

(assert (=> d!54176 m!225531))

(declare-fun m!225533 () Bool)

(assert (=> d!54176 m!225533))

(declare-fun m!225535 () Bool)

(assert (=> b!204983 m!225535))

(assert (=> b!204736 d!54176))

(declare-fun b!205002 () Bool)

(declare-fun res!93922 () Bool)

(declare-fun e!126074 () Bool)

(assert (=> b!205002 (=> (not res!93922) (not e!126074))))

(declare-fun lt!73752 () Option!505)

(assert (=> b!205002 (= res!93922 (= (list!1218 (charsOf!259 (_1!1922 (get!973 lt!73752)))) (originalCharacters!647 (_1!1922 (get!973 lt!73752)))))))

(declare-fun b!205003 () Bool)

(declare-fun res!93928 () Bool)

(assert (=> b!205003 (=> (not res!93928) (not e!126074))))

(assert (=> b!205003 (= res!93928 (= (++!799 (list!1218 (charsOf!259 (_1!1922 (get!973 lt!73752)))) (_2!1922 (get!973 lt!73752))) lt!73602))))

(declare-fun b!205004 () Bool)

(declare-fun res!93923 () Bool)

(assert (=> b!205004 (=> (not res!93923) (not e!126074))))

(declare-fun apply!535 (TokenValueInjection!1024 BalanceConc!2068) TokenValue!626)

(assert (=> b!205004 (= res!93923 (= (value!21531 (_1!1922 (get!973 lt!73752))) (apply!535 (transformation!604 (rule!1131 (_1!1922 (get!973 lt!73752)))) (seqFromList!585 (originalCharacters!647 (_1!1922 (get!973 lt!73752)))))))))

(declare-fun d!54178 () Bool)

(declare-fun e!126075 () Bool)

(assert (=> d!54178 e!126075))

(declare-fun res!93926 () Bool)

(assert (=> d!54178 (=> res!93926 e!126075)))

(declare-fun isEmpty!1713 (Option!505) Bool)

(assert (=> d!54178 (= res!93926 (isEmpty!1713 lt!73752))))

(declare-fun e!126076 () Option!505)

(assert (=> d!54178 (= lt!73752 e!126076)))

(declare-fun c!39333 () Bool)

(assert (=> d!54178 (= c!39333 (and (is-Cons!3271 rules!1920) (is-Nil!3271 (t!30903 rules!1920))))))

(declare-fun lt!73755 () Unit!3303)

(declare-fun lt!73753 () Unit!3303)

(assert (=> d!54178 (= lt!73755 lt!73753)))

(assert (=> d!54178 (isPrefix!300 lt!73602 lt!73602)))

(declare-fun lemmaIsPrefixRefl!166 (List!3280 List!3280) Unit!3303)

(assert (=> d!54178 (= lt!73753 (lemmaIsPrefixRefl!166 lt!73602 lt!73602))))

(declare-fun rulesValidInductive!155 (LexerInterface!490 List!3281) Bool)

(assert (=> d!54178 (rulesValidInductive!155 thiss!17480 rules!1920)))

(assert (=> d!54178 (= (maxPrefix!220 thiss!17480 rules!1920 lt!73602) lt!73752)))

(declare-fun call!9882 () Option!505)

(declare-fun bm!9877 () Bool)

(declare-fun maxPrefixOneRule!100 (LexerInterface!490 Rule!1008 List!3280) Option!505)

(assert (=> bm!9877 (= call!9882 (maxPrefixOneRule!100 thiss!17480 (h!8668 rules!1920) lt!73602))))

(declare-fun b!205005 () Bool)

(assert (=> b!205005 (= e!126075 e!126074)))

(declare-fun res!93925 () Bool)

(assert (=> b!205005 (=> (not res!93925) (not e!126074))))

(assert (=> b!205005 (= res!93925 (isDefined!357 lt!73752))))

(declare-fun b!205006 () Bool)

(declare-fun contains!543 (List!3281 Rule!1008) Bool)

(assert (=> b!205006 (= e!126074 (contains!543 rules!1920 (rule!1131 (_1!1922 (get!973 lt!73752)))))))

(declare-fun b!205007 () Bool)

(assert (=> b!205007 (= e!126076 call!9882)))

(declare-fun b!205008 () Bool)

(declare-fun lt!73751 () Option!505)

(declare-fun lt!73754 () Option!505)

(assert (=> b!205008 (= e!126076 (ite (and (is-None!504 lt!73751) (is-None!504 lt!73754)) None!504 (ite (is-None!504 lt!73754) lt!73751 (ite (is-None!504 lt!73751) lt!73754 (ite (>= (size!2622 (_1!1922 (v!14055 lt!73751))) (size!2622 (_1!1922 (v!14055 lt!73754)))) lt!73751 lt!73754)))))))

(assert (=> b!205008 (= lt!73751 call!9882)))

(assert (=> b!205008 (= lt!73754 (maxPrefix!220 thiss!17480 (t!30903 rules!1920) lt!73602))))

(declare-fun b!205009 () Bool)

(declare-fun res!93927 () Bool)

(assert (=> b!205009 (=> (not res!93927) (not e!126074))))

(declare-fun size!2626 (List!3280) Int)

(assert (=> b!205009 (= res!93927 (< (size!2626 (_2!1922 (get!973 lt!73752))) (size!2626 lt!73602)))))

(declare-fun b!205010 () Bool)

(declare-fun res!93924 () Bool)

(assert (=> b!205010 (=> (not res!93924) (not e!126074))))

(assert (=> b!205010 (= res!93924 (matchR!166 (regex!604 (rule!1131 (_1!1922 (get!973 lt!73752)))) (list!1218 (charsOf!259 (_1!1922 (get!973 lt!73752))))))))

(assert (= (and d!54178 c!39333) b!205007))

(assert (= (and d!54178 (not c!39333)) b!205008))

(assert (= (or b!205007 b!205008) bm!9877))

(assert (= (and d!54178 (not res!93926)) b!205005))

(assert (= (and b!205005 res!93925) b!205002))

(assert (= (and b!205002 res!93922) b!205009))

(assert (= (and b!205009 res!93927) b!205003))

(assert (= (and b!205003 res!93928) b!205004))

(assert (= (and b!205004 res!93923) b!205010))

(assert (= (and b!205010 res!93924) b!205006))

(declare-fun m!225537 () Bool)

(assert (=> bm!9877 m!225537))

(declare-fun m!225539 () Bool)

(assert (=> b!205004 m!225539))

(declare-fun m!225541 () Bool)

(assert (=> b!205004 m!225541))

(assert (=> b!205004 m!225541))

(declare-fun m!225543 () Bool)

(assert (=> b!205004 m!225543))

(assert (=> b!205009 m!225539))

(declare-fun m!225545 () Bool)

(assert (=> b!205009 m!225545))

(declare-fun m!225547 () Bool)

(assert (=> b!205009 m!225547))

(assert (=> b!205003 m!225539))

(declare-fun m!225549 () Bool)

(assert (=> b!205003 m!225549))

(assert (=> b!205003 m!225549))

(declare-fun m!225551 () Bool)

(assert (=> b!205003 m!225551))

(assert (=> b!205003 m!225551))

(declare-fun m!225553 () Bool)

(assert (=> b!205003 m!225553))

(declare-fun m!225555 () Bool)

(assert (=> b!205008 m!225555))

(declare-fun m!225557 () Bool)

(assert (=> b!205005 m!225557))

(declare-fun m!225559 () Bool)

(assert (=> d!54178 m!225559))

(declare-fun m!225561 () Bool)

(assert (=> d!54178 m!225561))

(declare-fun m!225563 () Bool)

(assert (=> d!54178 m!225563))

(declare-fun m!225565 () Bool)

(assert (=> d!54178 m!225565))

(assert (=> b!205002 m!225539))

(assert (=> b!205002 m!225549))

(assert (=> b!205002 m!225549))

(assert (=> b!205002 m!225551))

(assert (=> b!205006 m!225539))

(declare-fun m!225567 () Bool)

(assert (=> b!205006 m!225567))

(assert (=> b!205010 m!225539))

(assert (=> b!205010 m!225549))

(assert (=> b!205010 m!225549))

(assert (=> b!205010 m!225551))

(assert (=> b!205010 m!225551))

(declare-fun m!225569 () Bool)

(assert (=> b!205010 m!225569))

(assert (=> b!204736 d!54178))

(declare-fun d!54180 () Bool)

(assert (=> d!54180 (isPrefix!300 lt!73576 (++!799 lt!73576 lt!73602))))

(declare-fun lt!73758 () Unit!3303)

(declare-fun choose!2023 (List!3280 List!3280) Unit!3303)

(assert (=> d!54180 (= lt!73758 (choose!2023 lt!73576 lt!73602))))

(assert (=> d!54180 (= (lemmaConcatTwoListThenFirstIsPrefix!195 lt!73576 lt!73602) lt!73758)))

(declare-fun bs!20875 () Bool)

(assert (= bs!20875 d!54180))

(assert (=> bs!20875 m!225271))

(assert (=> bs!20875 m!225271))

(declare-fun m!225571 () Bool)

(assert (=> bs!20875 m!225571))

(declare-fun m!225573 () Bool)

(assert (=> bs!20875 m!225573))

(assert (=> b!204736 d!54180))

(declare-fun d!54182 () Bool)

(assert (=> d!54182 (= (isEmpty!1705 (t!30904 tokens!465)) (is-Nil!3272 (t!30904 tokens!465)))))

(assert (=> b!204736 d!54182))

(declare-fun d!54184 () Bool)

(declare-fun lt!73761 () BalanceConc!2068)

(assert (=> d!54184 (= (list!1218 lt!73761) (printList!174 thiss!17480 (list!1220 lt!73566)))))

(assert (=> d!54184 (= lt!73761 (printTailRec!184 thiss!17480 lt!73566 0 (BalanceConc!2069 Empty!1030)))))

(assert (=> d!54184 (= (print!221 thiss!17480 lt!73566) lt!73761)))

(declare-fun bs!20876 () Bool)

(assert (= bs!20876 d!54184))

(declare-fun m!225575 () Bool)

(assert (=> bs!20876 m!225575))

(declare-fun m!225577 () Bool)

(assert (=> bs!20876 m!225577))

(assert (=> bs!20876 m!225577))

(declare-fun m!225579 () Bool)

(assert (=> bs!20876 m!225579))

(assert (=> bs!20876 m!225161))

(assert (=> b!204736 d!54184))

(declare-fun d!54186 () Bool)

(assert (=> d!54186 (= (isEmpty!1705 tokens!465) (is-Nil!3272 tokens!465))))

(assert (=> b!204736 d!54186))

(declare-fun d!54188 () Bool)

(declare-fun isEmpty!1714 (Option!506) Bool)

(assert (=> d!54188 (= (isDefined!356 lt!73577) (not (isEmpty!1714 lt!73577)))))

(declare-fun bs!20877 () Bool)

(assert (= bs!20877 d!54188))

(declare-fun m!225581 () Bool)

(assert (=> bs!20877 m!225581))

(assert (=> b!204736 d!54188))

(declare-fun d!54190 () Bool)

(declare-fun e!126079 () Bool)

(assert (=> d!54190 e!126079))

(declare-fun res!93940 () Bool)

(assert (=> d!54190 (=> (not res!93940) (not e!126079))))

(assert (=> d!54190 (= res!93940 (isDefined!356 (getRuleFromTag!45 thiss!17480 rules!1920 (tag!790 (rule!1131 separatorToken!170)))))))

(declare-fun lt!73764 () Unit!3303)

(declare-fun choose!2024 (LexerInterface!490 List!3281 List!3280 Token!952) Unit!3303)

(assert (=> d!54190 (= lt!73764 (choose!2024 thiss!17480 rules!1920 lt!73597 separatorToken!170))))

(assert (=> d!54190 (rulesInvariant!456 thiss!17480 rules!1920)))

(assert (=> d!54190 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!45 thiss!17480 rules!1920 lt!73597 separatorToken!170) lt!73764)))

(declare-fun b!205015 () Bool)

(declare-fun res!93941 () Bool)

(assert (=> b!205015 (=> (not res!93941) (not e!126079))))

(assert (=> b!205015 (= res!93941 (matchR!166 (regex!604 (get!974 (getRuleFromTag!45 thiss!17480 rules!1920 (tag!790 (rule!1131 separatorToken!170))))) (list!1218 (charsOf!259 separatorToken!170))))))

(declare-fun b!205016 () Bool)

(assert (=> b!205016 (= e!126079 (= (rule!1131 separatorToken!170) (get!974 (getRuleFromTag!45 thiss!17480 rules!1920 (tag!790 (rule!1131 separatorToken!170))))))))

(assert (= (and d!54190 res!93940) b!205015))

(assert (= (and b!205015 res!93941) b!205016))

(assert (=> d!54190 m!225173))

(assert (=> d!54190 m!225173))

(declare-fun m!225583 () Bool)

(assert (=> d!54190 m!225583))

(declare-fun m!225585 () Bool)

(assert (=> d!54190 m!225585))

(assert (=> d!54190 m!225131))

(assert (=> b!205015 m!225257))

(assert (=> b!205015 m!225259))

(assert (=> b!205015 m!225259))

(declare-fun m!225587 () Bool)

(assert (=> b!205015 m!225587))

(assert (=> b!205015 m!225173))

(assert (=> b!205015 m!225257))

(assert (=> b!205015 m!225173))

(declare-fun m!225589 () Bool)

(assert (=> b!205015 m!225589))

(assert (=> b!205016 m!225173))

(assert (=> b!205016 m!225173))

(assert (=> b!205016 m!225589))

(assert (=> b!204736 d!54190))

(declare-fun b!205029 () Bool)

(declare-fun lt!73773 () Unit!3303)

(declare-fun lt!73771 () Unit!3303)

(assert (=> b!205029 (= lt!73773 lt!73771)))

(assert (=> b!205029 (rulesInvariant!456 thiss!17480 (t!30903 rules!1920))))

(declare-fun lemmaInvariantOnRulesThenOnTail!9 (LexerInterface!490 Rule!1008 List!3281) Unit!3303)

(assert (=> b!205029 (= lt!73771 (lemmaInvariantOnRulesThenOnTail!9 thiss!17480 (h!8668 rules!1920) (t!30903 rules!1920)))))

(declare-fun e!126088 () Option!506)

(assert (=> b!205029 (= e!126088 (getRuleFromTag!45 thiss!17480 (t!30903 rules!1920) (tag!790 (rule!1131 separatorToken!170))))))

(declare-fun b!205030 () Bool)

(declare-fun e!126091 () Bool)

(declare-fun lt!73772 () Option!506)

(assert (=> b!205030 (= e!126091 (= (tag!790 (get!974 lt!73772)) (tag!790 (rule!1131 separatorToken!170))))))

(declare-fun d!54192 () Bool)

(declare-fun e!126090 () Bool)

(assert (=> d!54192 e!126090))

(declare-fun res!93947 () Bool)

(assert (=> d!54192 (=> res!93947 e!126090)))

(assert (=> d!54192 (= res!93947 (isEmpty!1714 lt!73772))))

(declare-fun e!126089 () Option!506)

(assert (=> d!54192 (= lt!73772 e!126089)))

(declare-fun c!39338 () Bool)

(assert (=> d!54192 (= c!39338 (and (is-Cons!3271 rules!1920) (= (tag!790 (h!8668 rules!1920)) (tag!790 (rule!1131 separatorToken!170)))))))

(assert (=> d!54192 (rulesInvariant!456 thiss!17480 rules!1920)))

(assert (=> d!54192 (= (getRuleFromTag!45 thiss!17480 rules!1920 (tag!790 (rule!1131 separatorToken!170))) lt!73772)))

(declare-fun b!205031 () Bool)

(assert (=> b!205031 (= e!126089 e!126088)))

(declare-fun c!39339 () Bool)

(assert (=> b!205031 (= c!39339 (and (is-Cons!3271 rules!1920) (not (= (tag!790 (h!8668 rules!1920)) (tag!790 (rule!1131 separatorToken!170))))))))

(declare-fun b!205032 () Bool)

(assert (=> b!205032 (= e!126088 None!505)))

(declare-fun b!205033 () Bool)

(assert (=> b!205033 (= e!126089 (Some!505 (h!8668 rules!1920)))))

(declare-fun b!205034 () Bool)

(assert (=> b!205034 (= e!126090 e!126091)))

(declare-fun res!93946 () Bool)

(assert (=> b!205034 (=> (not res!93946) (not e!126091))))

(assert (=> b!205034 (= res!93946 (contains!543 rules!1920 (get!974 lt!73772)))))

(assert (= (and d!54192 c!39338) b!205033))

(assert (= (and d!54192 (not c!39338)) b!205031))

(assert (= (and b!205031 c!39339) b!205029))

(assert (= (and b!205031 (not c!39339)) b!205032))

(assert (= (and d!54192 (not res!93947)) b!205034))

(assert (= (and b!205034 res!93946) b!205030))

(declare-fun m!225591 () Bool)

(assert (=> b!205029 m!225591))

(declare-fun m!225593 () Bool)

(assert (=> b!205029 m!225593))

(declare-fun m!225595 () Bool)

(assert (=> b!205029 m!225595))

(declare-fun m!225597 () Bool)

(assert (=> b!205030 m!225597))

(declare-fun m!225599 () Bool)

(assert (=> d!54192 m!225599))

(assert (=> d!54192 m!225131))

(assert (=> b!205034 m!225597))

(assert (=> b!205034 m!225597))

(declare-fun m!225601 () Bool)

(assert (=> b!205034 m!225601))

(assert (=> b!204736 d!54192))

(declare-fun d!54194 () Bool)

(declare-fun dynLambda!1442 (Int Token!952) Bool)

(assert (=> d!54194 (dynLambda!1442 lambda!6250 lt!73593)))

(declare-fun lt!73776 () Unit!3303)

(declare-fun choose!2025 (List!3282 Int Token!952) Unit!3303)

(assert (=> d!54194 (= lt!73776 (choose!2025 tokens!465 lambda!6250 lt!73593))))

(declare-fun e!126094 () Bool)

(assert (=> d!54194 e!126094))

(declare-fun res!93950 () Bool)

(assert (=> d!54194 (=> (not res!93950) (not e!126094))))

(assert (=> d!54194 (= res!93950 (forall!706 tokens!465 lambda!6250))))

(assert (=> d!54194 (= (forallContained!171 tokens!465 lambda!6250 lt!73593) lt!73776)))

(declare-fun b!205037 () Bool)

(declare-fun contains!544 (List!3282 Token!952) Bool)

(assert (=> b!205037 (= e!126094 (contains!544 tokens!465 lt!73593))))

(assert (= (and d!54194 res!93950) b!205037))

(declare-fun b_lambda!5299 () Bool)

(assert (=> (not b_lambda!5299) (not d!54194)))

(declare-fun m!225603 () Bool)

(assert (=> d!54194 m!225603))

(declare-fun m!225605 () Bool)

(assert (=> d!54194 m!225605))

(declare-fun m!225607 () Bool)

(assert (=> d!54194 m!225607))

(declare-fun m!225609 () Bool)

(assert (=> b!205037 m!225609))

(assert (=> b!204736 d!54194))

(declare-fun bm!9886 () Bool)

(declare-fun call!9892 () List!3280)

(declare-fun call!9894 () List!3280)

(assert (=> bm!9886 (= call!9892 call!9894)))

(declare-fun b!205054 () Bool)

(declare-fun e!126105 () List!3280)

(assert (=> b!205054 (= e!126105 Nil!3270)))

(declare-fun b!205055 () Bool)

(declare-fun e!126106 () List!3280)

(assert (=> b!205055 (= e!126106 (Cons!3270 (c!39310 (regex!604 (rule!1131 separatorToken!170))) Nil!3270))))

(declare-fun b!205056 () Bool)

(assert (=> b!205056 (= e!126105 e!126106)))

(declare-fun c!39349 () Bool)

(assert (=> b!205056 (= c!39349 (is-ElementMatch!828 (regex!604 (rule!1131 separatorToken!170))))))

(declare-fun d!54196 () Bool)

(declare-fun c!39350 () Bool)

(assert (=> d!54196 (= c!39350 (or (is-EmptyExpr!828 (regex!604 (rule!1131 separatorToken!170))) (is-EmptyLang!828 (regex!604 (rule!1131 separatorToken!170)))))))

(assert (=> d!54196 (= (usedCharacters!9 (regex!604 (rule!1131 separatorToken!170))) e!126105)))

(declare-fun bm!9887 () Bool)

(declare-fun call!9891 () List!3280)

(declare-fun call!9893 () List!3280)

(assert (=> bm!9887 (= call!9891 (++!799 call!9893 call!9892))))

(declare-fun b!205057 () Bool)

(declare-fun e!126104 () List!3280)

(assert (=> b!205057 (= e!126104 call!9891)))

(declare-fun bm!9888 () Bool)

(declare-fun c!39351 () Bool)

(assert (=> bm!9888 (= call!9893 (usedCharacters!9 (ite c!39351 (regOne!2169 (regex!604 (rule!1131 separatorToken!170))) (regOne!2168 (regex!604 (rule!1131 separatorToken!170))))))))

(declare-fun b!205058 () Bool)

(declare-fun c!39348 () Bool)

(assert (=> b!205058 (= c!39348 (is-Star!828 (regex!604 (rule!1131 separatorToken!170))))))

(declare-fun e!126103 () List!3280)

(assert (=> b!205058 (= e!126106 e!126103)))

(declare-fun b!205059 () Bool)

(assert (=> b!205059 (= e!126103 e!126104)))

(assert (=> b!205059 (= c!39351 (is-Union!828 (regex!604 (rule!1131 separatorToken!170))))))

(declare-fun b!205060 () Bool)

(assert (=> b!205060 (= e!126103 call!9894)))

(declare-fun b!205061 () Bool)

(assert (=> b!205061 (= e!126104 call!9891)))

(declare-fun bm!9889 () Bool)

(assert (=> bm!9889 (= call!9894 (usedCharacters!9 (ite c!39348 (reg!1157 (regex!604 (rule!1131 separatorToken!170))) (ite c!39351 (regTwo!2169 (regex!604 (rule!1131 separatorToken!170))) (regTwo!2168 (regex!604 (rule!1131 separatorToken!170)))))))))

(assert (= (and d!54196 c!39350) b!205054))

(assert (= (and d!54196 (not c!39350)) b!205056))

(assert (= (and b!205056 c!39349) b!205055))

(assert (= (and b!205056 (not c!39349)) b!205058))

(assert (= (and b!205058 c!39348) b!205060))

(assert (= (and b!205058 (not c!39348)) b!205059))

(assert (= (and b!205059 c!39351) b!205057))

(assert (= (and b!205059 (not c!39351)) b!205061))

(assert (= (or b!205057 b!205061) bm!9888))

(assert (= (or b!205057 b!205061) bm!9886))

(assert (= (or b!205057 b!205061) bm!9887))

(assert (= (or b!205060 bm!9886) bm!9889))

(declare-fun m!225611 () Bool)

(assert (=> bm!9887 m!225611))

(declare-fun m!225613 () Bool)

(assert (=> bm!9888 m!225613))

(declare-fun m!225615 () Bool)

(assert (=> bm!9889 m!225615))

(assert (=> b!204736 d!54196))

(declare-fun d!54198 () Bool)

(declare-fun lt!73779 () Bool)

(declare-fun content!448 (List!3280) (Set C!2578))

(assert (=> d!54198 (= lt!73779 (set.member (head!704 lt!73588) (content!448 (usedCharacters!9 (regex!604 (rule!1131 separatorToken!170))))))))

(declare-fun e!126112 () Bool)

(assert (=> d!54198 (= lt!73779 e!126112)))

(declare-fun res!93955 () Bool)

(assert (=> d!54198 (=> (not res!93955) (not e!126112))))

(assert (=> d!54198 (= res!93955 (is-Cons!3270 (usedCharacters!9 (regex!604 (rule!1131 separatorToken!170)))))))

(assert (=> d!54198 (= (contains!541 (usedCharacters!9 (regex!604 (rule!1131 separatorToken!170))) (head!704 lt!73588)) lt!73779)))

(declare-fun b!205066 () Bool)

(declare-fun e!126111 () Bool)

(assert (=> b!205066 (= e!126112 e!126111)))

(declare-fun res!93956 () Bool)

(assert (=> b!205066 (=> res!93956 e!126111)))

(assert (=> b!205066 (= res!93956 (= (h!8667 (usedCharacters!9 (regex!604 (rule!1131 separatorToken!170)))) (head!704 lt!73588)))))

(declare-fun b!205067 () Bool)

(assert (=> b!205067 (= e!126111 (contains!541 (t!30902 (usedCharacters!9 (regex!604 (rule!1131 separatorToken!170)))) (head!704 lt!73588)))))

(assert (= (and d!54198 res!93955) b!205066))

(assert (= (and b!205066 (not res!93956)) b!205067))

(assert (=> d!54198 m!225145))

(declare-fun m!225617 () Bool)

(assert (=> d!54198 m!225617))

(assert (=> d!54198 m!225147))

(declare-fun m!225619 () Bool)

(assert (=> d!54198 m!225619))

(assert (=> b!205067 m!225147))

(declare-fun m!225621 () Bool)

(assert (=> b!205067 m!225621))

(assert (=> b!204736 d!54198))

(declare-fun d!54200 () Bool)

(declare-fun lt!73780 () Bool)

(assert (=> d!54200 (= lt!73780 (set.member lt!73560 (content!448 (usedCharacters!9 (regex!604 (rule!1131 lt!73593))))))))

(declare-fun e!126114 () Bool)

(assert (=> d!54200 (= lt!73780 e!126114)))

(declare-fun res!93957 () Bool)

(assert (=> d!54200 (=> (not res!93957) (not e!126114))))

(assert (=> d!54200 (= res!93957 (is-Cons!3270 (usedCharacters!9 (regex!604 (rule!1131 lt!73593)))))))

(assert (=> d!54200 (= (contains!541 (usedCharacters!9 (regex!604 (rule!1131 lt!73593))) lt!73560) lt!73780)))

(declare-fun b!205068 () Bool)

(declare-fun e!126113 () Bool)

(assert (=> b!205068 (= e!126114 e!126113)))

(declare-fun res!93958 () Bool)

(assert (=> b!205068 (=> res!93958 e!126113)))

(assert (=> b!205068 (= res!93958 (= (h!8667 (usedCharacters!9 (regex!604 (rule!1131 lt!73593)))) lt!73560))))

(declare-fun b!205069 () Bool)

(assert (=> b!205069 (= e!126113 (contains!541 (t!30902 (usedCharacters!9 (regex!604 (rule!1131 lt!73593)))) lt!73560))))

(assert (= (and d!54200 res!93957) b!205068))

(assert (= (and b!205068 (not res!93958)) b!205069))

(assert (=> d!54200 m!225191))

(declare-fun m!225623 () Bool)

(assert (=> d!54200 m!225623))

(declare-fun m!225625 () Bool)

(assert (=> d!54200 m!225625))

(declare-fun m!225627 () Bool)

(assert (=> b!205069 m!225627))

(assert (=> b!204736 d!54200))

(declare-fun d!54202 () Bool)

(assert (=> d!54202 (= (head!704 lt!73588) (h!8667 lt!73588))))

(assert (=> b!204736 d!54202))

(declare-fun d!54204 () Bool)

(declare-fun lt!73781 () BalanceConc!2068)

(assert (=> d!54204 (= (list!1218 lt!73781) (printList!174 thiss!17480 (list!1220 lt!73594)))))

(assert (=> d!54204 (= lt!73781 (printTailRec!184 thiss!17480 lt!73594 0 (BalanceConc!2069 Empty!1030)))))

(assert (=> d!54204 (= (print!221 thiss!17480 lt!73594) lt!73781)))

(declare-fun bs!20878 () Bool)

(assert (= bs!20878 d!54204))

(declare-fun m!225629 () Bool)

(assert (=> bs!20878 m!225629))

(declare-fun m!225631 () Bool)

(assert (=> bs!20878 m!225631))

(assert (=> bs!20878 m!225631))

(declare-fun m!225633 () Bool)

(assert (=> bs!20878 m!225633))

(assert (=> bs!20878 m!225175))

(assert (=> b!204736 d!54204))

(declare-fun d!54206 () Bool)

(declare-fun lt!73784 () Int)

(declare-fun size!2627 (List!3282) Int)

(assert (=> d!54206 (= lt!73784 (size!2627 (list!1220 (_1!1920 lt!73587))))))

(declare-fun size!2628 (Conc!1031) Int)

(assert (=> d!54206 (= lt!73784 (size!2628 (c!39311 (_1!1920 lt!73587))))))

(assert (=> d!54206 (= (size!2623 (_1!1920 lt!73587)) lt!73784)))

(declare-fun bs!20879 () Bool)

(assert (= bs!20879 d!54206))

(declare-fun m!225635 () Bool)

(assert (=> bs!20879 m!225635))

(assert (=> bs!20879 m!225635))

(declare-fun m!225637 () Bool)

(assert (=> bs!20879 m!225637))

(declare-fun m!225639 () Bool)

(assert (=> bs!20879 m!225639))

(assert (=> b!204736 d!54206))

(declare-fun b!205070 () Bool)

(declare-fun lt!73787 () Unit!3303)

(declare-fun lt!73785 () Unit!3303)

(assert (=> b!205070 (= lt!73787 lt!73785)))

(assert (=> b!205070 (rulesInvariant!456 thiss!17480 (t!30903 rules!1920))))

(assert (=> b!205070 (= lt!73785 (lemmaInvariantOnRulesThenOnTail!9 thiss!17480 (h!8668 rules!1920) (t!30903 rules!1920)))))

(declare-fun e!126115 () Option!506)

(assert (=> b!205070 (= e!126115 (getRuleFromTag!45 thiss!17480 (t!30903 rules!1920) (tag!790 (rule!1131 lt!73593))))))

(declare-fun b!205071 () Bool)

(declare-fun e!126118 () Bool)

(declare-fun lt!73786 () Option!506)

(assert (=> b!205071 (= e!126118 (= (tag!790 (get!974 lt!73786)) (tag!790 (rule!1131 lt!73593))))))

(declare-fun d!54208 () Bool)

(declare-fun e!126117 () Bool)

(assert (=> d!54208 e!126117))

(declare-fun res!93960 () Bool)

(assert (=> d!54208 (=> res!93960 e!126117)))

(assert (=> d!54208 (= res!93960 (isEmpty!1714 lt!73786))))

(declare-fun e!126116 () Option!506)

(assert (=> d!54208 (= lt!73786 e!126116)))

(declare-fun c!39352 () Bool)

(assert (=> d!54208 (= c!39352 (and (is-Cons!3271 rules!1920) (= (tag!790 (h!8668 rules!1920)) (tag!790 (rule!1131 lt!73593)))))))

(assert (=> d!54208 (rulesInvariant!456 thiss!17480 rules!1920)))

(assert (=> d!54208 (= (getRuleFromTag!45 thiss!17480 rules!1920 (tag!790 (rule!1131 lt!73593))) lt!73786)))

(declare-fun b!205072 () Bool)

(assert (=> b!205072 (= e!126116 e!126115)))

(declare-fun c!39353 () Bool)

(assert (=> b!205072 (= c!39353 (and (is-Cons!3271 rules!1920) (not (= (tag!790 (h!8668 rules!1920)) (tag!790 (rule!1131 lt!73593))))))))

(declare-fun b!205073 () Bool)

(assert (=> b!205073 (= e!126115 None!505)))

(declare-fun b!205074 () Bool)

(assert (=> b!205074 (= e!126116 (Some!505 (h!8668 rules!1920)))))

(declare-fun b!205075 () Bool)

(assert (=> b!205075 (= e!126117 e!126118)))

(declare-fun res!93959 () Bool)

(assert (=> b!205075 (=> (not res!93959) (not e!126118))))

(assert (=> b!205075 (= res!93959 (contains!543 rules!1920 (get!974 lt!73786)))))

(assert (= (and d!54208 c!39352) b!205074))

(assert (= (and d!54208 (not c!39352)) b!205072))

(assert (= (and b!205072 c!39353) b!205070))

(assert (= (and b!205072 (not c!39353)) b!205073))

(assert (= (and d!54208 (not res!93960)) b!205075))

(assert (= (and b!205075 res!93959) b!205071))

(assert (=> b!205070 m!225591))

(assert (=> b!205070 m!225593))

(declare-fun m!225641 () Bool)

(assert (=> b!205070 m!225641))

(declare-fun m!225643 () Bool)

(assert (=> b!205071 m!225643))

(declare-fun m!225645 () Bool)

(assert (=> d!54208 m!225645))

(assert (=> d!54208 m!225131))

(assert (=> b!205075 m!225643))

(assert (=> b!205075 m!225643))

(declare-fun m!225647 () Bool)

(assert (=> b!205075 m!225647))

(assert (=> b!204736 d!54208))

(declare-fun d!54210 () Bool)

(declare-fun list!1221 (Conc!1030) List!3280)

(assert (=> d!54210 (= (list!1218 (charsOf!259 lt!73593)) (list!1221 (c!39309 (charsOf!259 lt!73593))))))

(declare-fun bs!20880 () Bool)

(assert (= bs!20880 d!54210))

(declare-fun m!225649 () Bool)

(assert (=> bs!20880 m!225649))

(assert (=> b!204736 d!54210))

(declare-fun d!54212 () Bool)

(assert (=> d!54212 (= lt!73602 (_2!1922 lt!73586))))

(declare-fun lt!73790 () Unit!3303)

(declare-fun choose!2026 (List!3280 List!3280 List!3280 List!3280 List!3280) Unit!3303)

(assert (=> d!54212 (= lt!73790 (choose!2026 lt!73576 lt!73602 lt!73576 (_2!1922 lt!73586) lt!73598))))

(assert (=> d!54212 (isPrefix!300 lt!73576 lt!73598)))

(assert (=> d!54212 (= (lemmaSamePrefixThenSameSuffix!125 lt!73576 lt!73602 lt!73576 (_2!1922 lt!73586) lt!73598) lt!73790)))

(declare-fun bs!20881 () Bool)

(assert (= bs!20881 d!54212))

(declare-fun m!225651 () Bool)

(assert (=> bs!20881 m!225651))

(declare-fun m!225653 () Bool)

(assert (=> bs!20881 m!225653))

(assert (=> b!204736 d!54212))

(declare-fun d!54214 () Bool)

(assert (=> d!54214 (rulesProduceIndividualToken!239 thiss!17480 rules!1920 lt!73593)))

(declare-fun lt!73793 () Unit!3303)

(declare-fun choose!2027 (LexerInterface!490 List!3281 List!3282 Token!952) Unit!3303)

(assert (=> d!54214 (= lt!73793 (choose!2027 thiss!17480 rules!1920 tokens!465 lt!73593))))

(assert (=> d!54214 (not (isEmpty!1707 rules!1920))))

(assert (=> d!54214 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!57 thiss!17480 rules!1920 tokens!465 lt!73593) lt!73793)))

(declare-fun bs!20882 () Bool)

(assert (= bs!20882 d!54214))

(assert (=> bs!20882 m!225207))

(declare-fun m!225655 () Bool)

(assert (=> bs!20882 m!225655))

(assert (=> bs!20882 m!225285))

(assert (=> b!204736 d!54214))

(declare-fun d!54216 () Bool)

(assert (=> d!54216 (= (isDefined!356 lt!73564) (not (isEmpty!1714 lt!73564)))))

(declare-fun bs!20883 () Bool)

(assert (= bs!20883 d!54216))

(declare-fun m!225657 () Bool)

(assert (=> bs!20883 m!225657))

(assert (=> b!204736 d!54216))

(declare-fun b!205084 () Bool)

(declare-fun e!126127 () Bool)

(declare-fun e!126126 () Bool)

(assert (=> b!205084 (= e!126127 e!126126)))

(declare-fun res!93969 () Bool)

(assert (=> b!205084 (=> (not res!93969) (not e!126126))))

(assert (=> b!205084 (= res!93969 (not (is-Nil!3270 lt!73601)))))

(declare-fun d!54218 () Bool)

(declare-fun e!126125 () Bool)

(assert (=> d!54218 e!126125))

(declare-fun res!93970 () Bool)

(assert (=> d!54218 (=> res!93970 e!126125)))

(declare-fun lt!73796 () Bool)

(assert (=> d!54218 (= res!93970 (not lt!73796))))

(assert (=> d!54218 (= lt!73796 e!126127)))

(declare-fun res!93972 () Bool)

(assert (=> d!54218 (=> res!93972 e!126127)))

(assert (=> d!54218 (= res!93972 (is-Nil!3270 lt!73576))))

(assert (=> d!54218 (= (isPrefix!300 lt!73576 lt!73601) lt!73796)))

(declare-fun b!205086 () Bool)

(assert (=> b!205086 (= e!126126 (isPrefix!300 (tail!399 lt!73576) (tail!399 lt!73601)))))

(declare-fun b!205087 () Bool)

(assert (=> b!205087 (= e!126125 (>= (size!2626 lt!73601) (size!2626 lt!73576)))))

(declare-fun b!205085 () Bool)

(declare-fun res!93971 () Bool)

(assert (=> b!205085 (=> (not res!93971) (not e!126126))))

(assert (=> b!205085 (= res!93971 (= (head!704 lt!73576) (head!704 lt!73601)))))

(assert (= (and d!54218 (not res!93972)) b!205084))

(assert (= (and b!205084 res!93969) b!205085))

(assert (= (and b!205085 res!93971) b!205086))

(assert (= (and d!54218 (not res!93970)) b!205087))

(declare-fun m!225659 () Bool)

(assert (=> b!205086 m!225659))

(declare-fun m!225661 () Bool)

(assert (=> b!205086 m!225661))

(assert (=> b!205086 m!225659))

(assert (=> b!205086 m!225661))

(declare-fun m!225663 () Bool)

(assert (=> b!205086 m!225663))

(declare-fun m!225665 () Bool)

(assert (=> b!205087 m!225665))

(declare-fun m!225667 () Bool)

(assert (=> b!205087 m!225667))

(declare-fun m!225669 () Bool)

(assert (=> b!205085 m!225669))

(declare-fun m!225671 () Bool)

(assert (=> b!205085 m!225671))

(assert (=> b!204736 d!54218))

(declare-fun d!54220 () Bool)

(declare-fun e!126128 () Bool)

(assert (=> d!54220 e!126128))

(declare-fun res!93973 () Bool)

(assert (=> d!54220 (=> (not res!93973) (not e!126128))))

(assert (=> d!54220 (= res!93973 (isDefined!356 (getRuleFromTag!45 thiss!17480 rules!1920 (tag!790 (rule!1131 lt!73593)))))))

(declare-fun lt!73797 () Unit!3303)

(assert (=> d!54220 (= lt!73797 (choose!2024 thiss!17480 rules!1920 lt!73575 lt!73593))))

(assert (=> d!54220 (rulesInvariant!456 thiss!17480 rules!1920)))

(assert (=> d!54220 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!45 thiss!17480 rules!1920 lt!73575 lt!73593) lt!73797)))

(declare-fun b!205088 () Bool)

(declare-fun res!93974 () Bool)

(assert (=> b!205088 (=> (not res!93974) (not e!126128))))

(assert (=> b!205088 (= res!93974 (matchR!166 (regex!604 (get!974 (getRuleFromTag!45 thiss!17480 rules!1920 (tag!790 (rule!1131 lt!73593))))) (list!1218 (charsOf!259 lt!73593))))))

(declare-fun b!205089 () Bool)

(assert (=> b!205089 (= e!126128 (= (rule!1131 lt!73593) (get!974 (getRuleFromTag!45 thiss!17480 rules!1920 (tag!790 (rule!1131 lt!73593))))))))

(assert (= (and d!54220 res!93973) b!205088))

(assert (= (and b!205088 res!93974) b!205089))

(assert (=> d!54220 m!225155))

(assert (=> d!54220 m!225155))

(declare-fun m!225673 () Bool)

(assert (=> d!54220 m!225673))

(declare-fun m!225675 () Bool)

(assert (=> d!54220 m!225675))

(assert (=> d!54220 m!225131))

(assert (=> b!205088 m!225159))

(assert (=> b!205088 m!225165))

(assert (=> b!205088 m!225165))

(declare-fun m!225677 () Bool)

(assert (=> b!205088 m!225677))

(assert (=> b!205088 m!225155))

(assert (=> b!205088 m!225159))

(assert (=> b!205088 m!225155))

(declare-fun m!225679 () Bool)

(assert (=> b!205088 m!225679))

(assert (=> b!205089 m!225155))

(assert (=> b!205089 m!225155))

(assert (=> b!205089 m!225679))

(assert (=> b!204736 d!54220))

(declare-fun d!54222 () Bool)

(declare-fun lt!73814 () BalanceConc!2068)

(declare-fun printListTailRec!85 (LexerInterface!490 List!3282 List!3280) List!3280)

(declare-fun dropList!117 (BalanceConc!2070 Int) List!3282)

(assert (=> d!54222 (= (list!1218 lt!73814) (printListTailRec!85 thiss!17480 (dropList!117 lt!73566 0) (list!1218 (BalanceConc!2069 Empty!1030))))))

(declare-fun e!126134 () BalanceConc!2068)

(assert (=> d!54222 (= lt!73814 e!126134)))

(declare-fun c!39356 () Bool)

(assert (=> d!54222 (= c!39356 (>= 0 (size!2623 lt!73566)))))

(declare-fun e!126133 () Bool)

(assert (=> d!54222 e!126133))

(declare-fun res!93977 () Bool)

(assert (=> d!54222 (=> (not res!93977) (not e!126133))))

(assert (=> d!54222 (= res!93977 (>= 0 0))))

(assert (=> d!54222 (= (printTailRec!184 thiss!17480 lt!73566 0 (BalanceConc!2069 Empty!1030)) lt!73814)))

(declare-fun b!205096 () Bool)

(assert (=> b!205096 (= e!126133 (<= 0 (size!2623 lt!73566)))))

(declare-fun b!205097 () Bool)

(assert (=> b!205097 (= e!126134 (BalanceConc!2069 Empty!1030))))

(declare-fun b!205098 () Bool)

(declare-fun ++!801 (BalanceConc!2068 BalanceConc!2068) BalanceConc!2068)

(assert (=> b!205098 (= e!126134 (printTailRec!184 thiss!17480 lt!73566 (+ 0 1) (++!801 (BalanceConc!2069 Empty!1030) (charsOf!259 (apply!533 lt!73566 0)))))))

(declare-fun lt!73813 () List!3282)

(assert (=> b!205098 (= lt!73813 (list!1220 lt!73566))))

(declare-fun lt!73812 () Unit!3303)

(declare-fun lemmaDropApply!157 (List!3282 Int) Unit!3303)

(assert (=> b!205098 (= lt!73812 (lemmaDropApply!157 lt!73813 0))))

(declare-fun drop!170 (List!3282 Int) List!3282)

(declare-fun apply!536 (List!3282 Int) Token!952)

(assert (=> b!205098 (= (head!703 (drop!170 lt!73813 0)) (apply!536 lt!73813 0))))

(declare-fun lt!73815 () Unit!3303)

(assert (=> b!205098 (= lt!73815 lt!73812)))

(declare-fun lt!73818 () List!3282)

(assert (=> b!205098 (= lt!73818 (list!1220 lt!73566))))

(declare-fun lt!73816 () Unit!3303)

(declare-fun lemmaDropTail!149 (List!3282 Int) Unit!3303)

(assert (=> b!205098 (= lt!73816 (lemmaDropTail!149 lt!73818 0))))

(declare-fun tail!400 (List!3282) List!3282)

(assert (=> b!205098 (= (tail!400 (drop!170 lt!73818 0)) (drop!170 lt!73818 (+ 0 1)))))

(declare-fun lt!73817 () Unit!3303)

(assert (=> b!205098 (= lt!73817 lt!73816)))

(assert (= (and d!54222 res!93977) b!205096))

(assert (= (and d!54222 c!39356) b!205097))

(assert (= (and d!54222 (not c!39356)) b!205098))

(declare-fun m!225681 () Bool)

(assert (=> d!54222 m!225681))

(declare-fun m!225683 () Bool)

(assert (=> d!54222 m!225683))

(declare-fun m!225685 () Bool)

(assert (=> d!54222 m!225685))

(declare-fun m!225687 () Bool)

(assert (=> d!54222 m!225687))

(declare-fun m!225689 () Bool)

(assert (=> d!54222 m!225689))

(assert (=> d!54222 m!225687))

(assert (=> d!54222 m!225685))

(assert (=> b!205096 m!225681))

(declare-fun m!225691 () Bool)

(assert (=> b!205098 m!225691))

(declare-fun m!225693 () Bool)

(assert (=> b!205098 m!225693))

(declare-fun m!225695 () Bool)

(assert (=> b!205098 m!225695))

(declare-fun m!225697 () Bool)

(assert (=> b!205098 m!225697))

(assert (=> b!205098 m!225693))

(declare-fun m!225699 () Bool)

(assert (=> b!205098 m!225699))

(declare-fun m!225701 () Bool)

(assert (=> b!205098 m!225701))

(declare-fun m!225703 () Bool)

(assert (=> b!205098 m!225703))

(assert (=> b!205098 m!225691))

(declare-fun m!225705 () Bool)

(assert (=> b!205098 m!225705))

(assert (=> b!205098 m!225703))

(declare-fun m!225707 () Bool)

(assert (=> b!205098 m!225707))

(declare-fun m!225709 () Bool)

(assert (=> b!205098 m!225709))

(assert (=> b!205098 m!225705))

(declare-fun m!225711 () Bool)

(assert (=> b!205098 m!225711))

(assert (=> b!205098 m!225577))

(assert (=> b!205098 m!225711))

(declare-fun m!225713 () Bool)

(assert (=> b!205098 m!225713))

(assert (=> b!204736 d!54222))

(declare-fun d!54226 () Bool)

(declare-fun lt!73821 () BalanceConc!2068)

(assert (=> d!54226 (= (list!1218 lt!73821) (printListTailRec!85 thiss!17480 (dropList!117 lt!73594 0) (list!1218 (BalanceConc!2069 Empty!1030))))))

(declare-fun e!126136 () BalanceConc!2068)

(assert (=> d!54226 (= lt!73821 e!126136)))

(declare-fun c!39357 () Bool)

(assert (=> d!54226 (= c!39357 (>= 0 (size!2623 lt!73594)))))

(declare-fun e!126135 () Bool)

(assert (=> d!54226 e!126135))

(declare-fun res!93978 () Bool)

(assert (=> d!54226 (=> (not res!93978) (not e!126135))))

(assert (=> d!54226 (= res!93978 (>= 0 0))))

(assert (=> d!54226 (= (printTailRec!184 thiss!17480 lt!73594 0 (BalanceConc!2069 Empty!1030)) lt!73821)))

(declare-fun b!205099 () Bool)

(assert (=> b!205099 (= e!126135 (<= 0 (size!2623 lt!73594)))))

(declare-fun b!205100 () Bool)

(assert (=> b!205100 (= e!126136 (BalanceConc!2069 Empty!1030))))

(declare-fun b!205101 () Bool)

(assert (=> b!205101 (= e!126136 (printTailRec!184 thiss!17480 lt!73594 (+ 0 1) (++!801 (BalanceConc!2069 Empty!1030) (charsOf!259 (apply!533 lt!73594 0)))))))

(declare-fun lt!73820 () List!3282)

(assert (=> b!205101 (= lt!73820 (list!1220 lt!73594))))

(declare-fun lt!73819 () Unit!3303)

(assert (=> b!205101 (= lt!73819 (lemmaDropApply!157 lt!73820 0))))

(assert (=> b!205101 (= (head!703 (drop!170 lt!73820 0)) (apply!536 lt!73820 0))))

(declare-fun lt!73822 () Unit!3303)

(assert (=> b!205101 (= lt!73822 lt!73819)))

(declare-fun lt!73825 () List!3282)

(assert (=> b!205101 (= lt!73825 (list!1220 lt!73594))))

(declare-fun lt!73823 () Unit!3303)

(assert (=> b!205101 (= lt!73823 (lemmaDropTail!149 lt!73825 0))))

(assert (=> b!205101 (= (tail!400 (drop!170 lt!73825 0)) (drop!170 lt!73825 (+ 0 1)))))

(declare-fun lt!73824 () Unit!3303)

(assert (=> b!205101 (= lt!73824 lt!73823)))

(assert (= (and d!54226 res!93978) b!205099))

(assert (= (and d!54226 c!39357) b!205100))

(assert (= (and d!54226 (not c!39357)) b!205101))

(declare-fun m!225715 () Bool)

(assert (=> d!54226 m!225715))

(declare-fun m!225717 () Bool)

(assert (=> d!54226 m!225717))

(declare-fun m!225719 () Bool)

(assert (=> d!54226 m!225719))

(assert (=> d!54226 m!225687))

(declare-fun m!225721 () Bool)

(assert (=> d!54226 m!225721))

(assert (=> d!54226 m!225687))

(assert (=> d!54226 m!225719))

(assert (=> b!205099 m!225715))

(declare-fun m!225723 () Bool)

(assert (=> b!205101 m!225723))

(declare-fun m!225725 () Bool)

(assert (=> b!205101 m!225725))

(declare-fun m!225727 () Bool)

(assert (=> b!205101 m!225727))

(declare-fun m!225729 () Bool)

(assert (=> b!205101 m!225729))

(assert (=> b!205101 m!225725))

(declare-fun m!225731 () Bool)

(assert (=> b!205101 m!225731))

(declare-fun m!225733 () Bool)

(assert (=> b!205101 m!225733))

(declare-fun m!225735 () Bool)

(assert (=> b!205101 m!225735))

(assert (=> b!205101 m!225723))

(declare-fun m!225737 () Bool)

(assert (=> b!205101 m!225737))

(assert (=> b!205101 m!225735))

(declare-fun m!225739 () Bool)

(assert (=> b!205101 m!225739))

(declare-fun m!225741 () Bool)

(assert (=> b!205101 m!225741))

(assert (=> b!205101 m!225737))

(declare-fun m!225743 () Bool)

(assert (=> b!205101 m!225743))

(assert (=> b!205101 m!225631))

(assert (=> b!205101 m!225743))

(declare-fun m!225745 () Bool)

(assert (=> b!205101 m!225745))

(assert (=> b!204736 d!54226))

(declare-fun b!205112 () Bool)

(declare-fun e!126144 () Bool)

(declare-fun lt!73828 () tuple2!3408)

(assert (=> b!205112 (= e!126144 (not (isEmpty!1704 (_1!1920 lt!73828))))))

(declare-fun b!205113 () Bool)

(declare-fun res!93987 () Bool)

(declare-fun e!126143 () Bool)

(assert (=> b!205113 (=> (not res!93987) (not e!126143))))

(declare-datatypes ((tuple2!3420 0))(
  ( (tuple2!3421 (_1!1926 List!3282) (_2!1926 List!3280)) )
))
(declare-fun lexList!142 (LexerInterface!490 List!3281 List!3280) tuple2!3420)

(assert (=> b!205113 (= res!93987 (= (list!1220 (_1!1920 lt!73828)) (_1!1926 (lexList!142 thiss!17480 rules!1920 (list!1218 lt!73582)))))))

(declare-fun d!54228 () Bool)

(assert (=> d!54228 e!126143))

(declare-fun res!93986 () Bool)

(assert (=> d!54228 (=> (not res!93986) (not e!126143))))

(declare-fun e!126145 () Bool)

(assert (=> d!54228 (= res!93986 e!126145)))

(declare-fun c!39360 () Bool)

(assert (=> d!54228 (= c!39360 (> (size!2623 (_1!1920 lt!73828)) 0))))

(declare-fun lexTailRecV2!129 (LexerInterface!490 List!3281 BalanceConc!2068 BalanceConc!2068 BalanceConc!2068 BalanceConc!2070) tuple2!3408)

(assert (=> d!54228 (= lt!73828 (lexTailRecV2!129 thiss!17480 rules!1920 lt!73582 (BalanceConc!2069 Empty!1030) lt!73582 (BalanceConc!2071 Empty!1031)))))

(assert (=> d!54228 (= (lex!290 thiss!17480 rules!1920 lt!73582) lt!73828)))

(declare-fun b!205114 () Bool)

(assert (=> b!205114 (= e!126145 (= (_2!1920 lt!73828) lt!73582))))

(declare-fun b!205115 () Bool)

(assert (=> b!205115 (= e!126143 (= (list!1218 (_2!1920 lt!73828)) (_2!1926 (lexList!142 thiss!17480 rules!1920 (list!1218 lt!73582)))))))

(declare-fun b!205116 () Bool)

(assert (=> b!205116 (= e!126145 e!126144)))

(declare-fun res!93985 () Bool)

(declare-fun size!2629 (BalanceConc!2068) Int)

(assert (=> b!205116 (= res!93985 (< (size!2629 (_2!1920 lt!73828)) (size!2629 lt!73582)))))

(assert (=> b!205116 (=> (not res!93985) (not e!126144))))

(assert (= (and d!54228 c!39360) b!205116))

(assert (= (and d!54228 (not c!39360)) b!205114))

(assert (= (and b!205116 res!93985) b!205112))

(assert (= (and d!54228 res!93986) b!205113))

(assert (= (and b!205113 res!93987) b!205115))

(declare-fun m!225747 () Bool)

(assert (=> b!205113 m!225747))

(declare-fun m!225749 () Bool)

(assert (=> b!205113 m!225749))

(assert (=> b!205113 m!225749))

(declare-fun m!225751 () Bool)

(assert (=> b!205113 m!225751))

(declare-fun m!225753 () Bool)

(assert (=> d!54228 m!225753))

(declare-fun m!225755 () Bool)

(assert (=> d!54228 m!225755))

(declare-fun m!225757 () Bool)

(assert (=> b!205112 m!225757))

(declare-fun m!225759 () Bool)

(assert (=> b!205115 m!225759))

(assert (=> b!205115 m!225749))

(assert (=> b!205115 m!225749))

(assert (=> b!205115 m!225751))

(declare-fun m!225761 () Bool)

(assert (=> b!205116 m!225761))

(declare-fun m!225763 () Bool)

(assert (=> b!205116 m!225763))

(assert (=> b!204736 d!54228))

(declare-fun b!205117 () Bool)

(declare-fun e!126147 () Bool)

(declare-fun lt!73829 () tuple2!3408)

(assert (=> b!205117 (= e!126147 (not (isEmpty!1704 (_1!1920 lt!73829))))))

(declare-fun b!205118 () Bool)

(declare-fun res!93990 () Bool)

(declare-fun e!126146 () Bool)

(assert (=> b!205118 (=> (not res!93990) (not e!126146))))

(assert (=> b!205118 (= res!93990 (= (list!1220 (_1!1920 lt!73829)) (_1!1926 (lexList!142 thiss!17480 rules!1920 (list!1218 lt!73578)))))))

(declare-fun d!54230 () Bool)

(assert (=> d!54230 e!126146))

(declare-fun res!93989 () Bool)

(assert (=> d!54230 (=> (not res!93989) (not e!126146))))

(declare-fun e!126148 () Bool)

(assert (=> d!54230 (= res!93989 e!126148)))

(declare-fun c!39361 () Bool)

(assert (=> d!54230 (= c!39361 (> (size!2623 (_1!1920 lt!73829)) 0))))

(assert (=> d!54230 (= lt!73829 (lexTailRecV2!129 thiss!17480 rules!1920 lt!73578 (BalanceConc!2069 Empty!1030) lt!73578 (BalanceConc!2071 Empty!1031)))))

(assert (=> d!54230 (= (lex!290 thiss!17480 rules!1920 lt!73578) lt!73829)))

(declare-fun b!205119 () Bool)

(assert (=> b!205119 (= e!126148 (= (_2!1920 lt!73829) lt!73578))))

(declare-fun b!205120 () Bool)

(assert (=> b!205120 (= e!126146 (= (list!1218 (_2!1920 lt!73829)) (_2!1926 (lexList!142 thiss!17480 rules!1920 (list!1218 lt!73578)))))))

(declare-fun b!205121 () Bool)

(assert (=> b!205121 (= e!126148 e!126147)))

(declare-fun res!93988 () Bool)

(assert (=> b!205121 (= res!93988 (< (size!2629 (_2!1920 lt!73829)) (size!2629 lt!73578)))))

(assert (=> b!205121 (=> (not res!93988) (not e!126147))))

(assert (= (and d!54230 c!39361) b!205121))

(assert (= (and d!54230 (not c!39361)) b!205119))

(assert (= (and b!205121 res!93988) b!205117))

(assert (= (and d!54230 res!93989) b!205118))

(assert (= (and b!205118 res!93990) b!205120))

(declare-fun m!225765 () Bool)

(assert (=> b!205118 m!225765))

(declare-fun m!225767 () Bool)

(assert (=> b!205118 m!225767))

(assert (=> b!205118 m!225767))

(declare-fun m!225769 () Bool)

(assert (=> b!205118 m!225769))

(declare-fun m!225771 () Bool)

(assert (=> d!54230 m!225771))

(declare-fun m!225773 () Bool)

(assert (=> d!54230 m!225773))

(declare-fun m!225775 () Bool)

(assert (=> b!205117 m!225775))

(declare-fun m!225777 () Bool)

(assert (=> b!205120 m!225777))

(assert (=> b!205120 m!225767))

(assert (=> b!205120 m!225767))

(assert (=> b!205120 m!225769))

(declare-fun m!225779 () Bool)

(assert (=> b!205121 m!225779))

(declare-fun m!225781 () Bool)

(assert (=> b!205121 m!225781))

(assert (=> b!204736 d!54230))

(declare-fun d!54232 () Bool)

(assert (=> d!54232 (= (get!973 (maxPrefix!220 thiss!17480 rules!1920 lt!73598)) (v!14055 (maxPrefix!220 thiss!17480 rules!1920 lt!73598)))))

(assert (=> b!204736 d!54232))

(declare-fun bm!9890 () Bool)

(declare-fun call!9896 () List!3280)

(declare-fun call!9898 () List!3280)

(assert (=> bm!9890 (= call!9896 call!9898)))

(declare-fun b!205122 () Bool)

(declare-fun e!126151 () List!3280)

(assert (=> b!205122 (= e!126151 Nil!3270)))

(declare-fun b!205123 () Bool)

(declare-fun e!126152 () List!3280)

(assert (=> b!205123 (= e!126152 (Cons!3270 (c!39310 (regex!604 (rule!1131 lt!73593))) Nil!3270))))

(declare-fun b!205124 () Bool)

(assert (=> b!205124 (= e!126151 e!126152)))

(declare-fun c!39363 () Bool)

(assert (=> b!205124 (= c!39363 (is-ElementMatch!828 (regex!604 (rule!1131 lt!73593))))))

(declare-fun d!54234 () Bool)

(declare-fun c!39364 () Bool)

(assert (=> d!54234 (= c!39364 (or (is-EmptyExpr!828 (regex!604 (rule!1131 lt!73593))) (is-EmptyLang!828 (regex!604 (rule!1131 lt!73593)))))))

(assert (=> d!54234 (= (usedCharacters!9 (regex!604 (rule!1131 lt!73593))) e!126151)))

(declare-fun bm!9891 () Bool)

(declare-fun call!9895 () List!3280)

(declare-fun call!9897 () List!3280)

(assert (=> bm!9891 (= call!9895 (++!799 call!9897 call!9896))))

(declare-fun b!205125 () Bool)

(declare-fun e!126150 () List!3280)

(assert (=> b!205125 (= e!126150 call!9895)))

(declare-fun bm!9892 () Bool)

(declare-fun c!39365 () Bool)

(assert (=> bm!9892 (= call!9897 (usedCharacters!9 (ite c!39365 (regOne!2169 (regex!604 (rule!1131 lt!73593))) (regOne!2168 (regex!604 (rule!1131 lt!73593))))))))

(declare-fun b!205126 () Bool)

(declare-fun c!39362 () Bool)

(assert (=> b!205126 (= c!39362 (is-Star!828 (regex!604 (rule!1131 lt!73593))))))

(declare-fun e!126149 () List!3280)

(assert (=> b!205126 (= e!126152 e!126149)))

(declare-fun b!205127 () Bool)

(assert (=> b!205127 (= e!126149 e!126150)))

(assert (=> b!205127 (= c!39365 (is-Union!828 (regex!604 (rule!1131 lt!73593))))))

(declare-fun b!205128 () Bool)

(assert (=> b!205128 (= e!126149 call!9898)))

(declare-fun b!205129 () Bool)

(assert (=> b!205129 (= e!126150 call!9895)))

(declare-fun bm!9893 () Bool)

(assert (=> bm!9893 (= call!9898 (usedCharacters!9 (ite c!39362 (reg!1157 (regex!604 (rule!1131 lt!73593))) (ite c!39365 (regTwo!2169 (regex!604 (rule!1131 lt!73593))) (regTwo!2168 (regex!604 (rule!1131 lt!73593)))))))))

(assert (= (and d!54234 c!39364) b!205122))

(assert (= (and d!54234 (not c!39364)) b!205124))

(assert (= (and b!205124 c!39363) b!205123))

(assert (= (and b!205124 (not c!39363)) b!205126))

(assert (= (and b!205126 c!39362) b!205128))

(assert (= (and b!205126 (not c!39362)) b!205127))

(assert (= (and b!205127 c!39365) b!205125))

(assert (= (and b!205127 (not c!39365)) b!205129))

(assert (= (or b!205125 b!205129) bm!9892))

(assert (= (or b!205125 b!205129) bm!9890))

(assert (= (or b!205125 b!205129) bm!9891))

(assert (= (or b!205128 bm!9890) bm!9893))

(declare-fun m!225783 () Bool)

(assert (=> bm!9891 m!225783))

(declare-fun m!225785 () Bool)

(assert (=> bm!9892 m!225785))

(declare-fun m!225787 () Bool)

(assert (=> bm!9893 m!225787))

(assert (=> b!204736 d!54234))

(declare-fun d!54236 () Bool)

(assert (=> d!54236 (= (head!703 (t!30904 tokens!465)) (h!8669 (t!30904 tokens!465)))))

(assert (=> b!204736 d!54236))

(declare-fun d!54238 () Bool)

(declare-fun e!126185 () Bool)

(assert (=> d!54238 e!126185))

(declare-fun res!94024 () Bool)

(assert (=> d!54238 (=> res!94024 e!126185)))

(assert (=> d!54238 (= res!94024 (isEmpty!1705 tokens!465))))

(declare-fun lt!73867 () Unit!3303)

(declare-fun choose!2028 (LexerInterface!490 List!3281 List!3282 Token!952) Unit!3303)

(assert (=> d!54238 (= lt!73867 (choose!2028 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!54238 (not (isEmpty!1707 rules!1920))))

(assert (=> d!54238 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!65 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!73867)))

(declare-fun b!205188 () Bool)

(declare-fun e!126186 () Bool)

(assert (=> b!205188 (= e!126185 e!126186)))

(declare-fun res!94025 () Bool)

(assert (=> b!205188 (=> (not res!94025) (not e!126186))))

(assert (=> b!205188 (= res!94025 (isDefined!357 (maxPrefix!220 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!183 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!205189 () Bool)

(assert (=> b!205189 (= e!126186 (= (_1!1922 (get!973 (maxPrefix!220 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!183 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!703 tokens!465)))))

(assert (= (and d!54238 (not res!94024)) b!205188))

(assert (= (and b!205188 res!94025) b!205189))

(assert (=> d!54238 m!225179))

(declare-fun m!225851 () Bool)

(assert (=> d!54238 m!225851))

(assert (=> d!54238 m!225285))

(assert (=> b!205188 m!225233))

(assert (=> b!205188 m!225233))

(declare-fun m!225853 () Bool)

(assert (=> b!205188 m!225853))

(assert (=> b!205188 m!225853))

(declare-fun m!225855 () Bool)

(assert (=> b!205188 m!225855))

(assert (=> b!205189 m!225233))

(assert (=> b!205189 m!225233))

(assert (=> b!205189 m!225853))

(assert (=> b!205189 m!225853))

(declare-fun m!225857 () Bool)

(assert (=> b!205189 m!225857))

(assert (=> b!205189 m!225247))

(assert (=> b!204736 d!54238))

(declare-fun d!54258 () Bool)

(declare-fun lt!73885 () Bool)

(declare-fun e!126200 () Bool)

(assert (=> d!54258 (= lt!73885 e!126200)))

(declare-fun res!94036 () Bool)

(assert (=> d!54258 (=> (not res!94036) (not e!126200))))

(assert (=> d!54258 (= res!94036 (= (list!1220 (_1!1920 (lex!290 thiss!17480 rules!1920 (print!221 thiss!17480 (singletonSeq!156 lt!73593))))) (list!1220 (singletonSeq!156 lt!73593))))))

(declare-fun e!126199 () Bool)

(assert (=> d!54258 (= lt!73885 e!126199)))

(declare-fun res!94038 () Bool)

(assert (=> d!54258 (=> (not res!94038) (not e!126199))))

(declare-fun lt!73886 () tuple2!3408)

(assert (=> d!54258 (= res!94038 (= (size!2623 (_1!1920 lt!73886)) 1))))

(assert (=> d!54258 (= lt!73886 (lex!290 thiss!17480 rules!1920 (print!221 thiss!17480 (singletonSeq!156 lt!73593))))))

(assert (=> d!54258 (not (isEmpty!1707 rules!1920))))

(assert (=> d!54258 (= (rulesProduceIndividualToken!239 thiss!17480 rules!1920 lt!73593) lt!73885)))

(declare-fun b!205208 () Bool)

(declare-fun res!94037 () Bool)

(assert (=> b!205208 (=> (not res!94037) (not e!126199))))

(assert (=> b!205208 (= res!94037 (= (apply!533 (_1!1920 lt!73886) 0) lt!73593))))

(declare-fun b!205209 () Bool)

(assert (=> b!205209 (= e!126199 (isEmpty!1703 (_2!1920 lt!73886)))))

(declare-fun b!205210 () Bool)

(assert (=> b!205210 (= e!126200 (isEmpty!1703 (_2!1920 (lex!290 thiss!17480 rules!1920 (print!221 thiss!17480 (singletonSeq!156 lt!73593))))))))

(assert (= (and d!54258 res!94038) b!205208))

(assert (= (and b!205208 res!94037) b!205209))

(assert (= (and d!54258 res!94036) b!205210))

(declare-fun m!225915 () Bool)

(assert (=> d!54258 m!225915))

(declare-fun m!225917 () Bool)

(assert (=> d!54258 m!225917))

(declare-fun m!225919 () Bool)

(assert (=> d!54258 m!225919))

(assert (=> d!54258 m!225157))

(assert (=> d!54258 m!225917))

(assert (=> d!54258 m!225157))

(declare-fun m!225921 () Bool)

(assert (=> d!54258 m!225921))

(declare-fun m!225923 () Bool)

(assert (=> d!54258 m!225923))

(assert (=> d!54258 m!225157))

(assert (=> d!54258 m!225285))

(declare-fun m!225925 () Bool)

(assert (=> b!205208 m!225925))

(declare-fun m!225927 () Bool)

(assert (=> b!205209 m!225927))

(assert (=> b!205210 m!225157))

(assert (=> b!205210 m!225157))

(assert (=> b!205210 m!225917))

(assert (=> b!205210 m!225917))

(assert (=> b!205210 m!225919))

(declare-fun m!225929 () Bool)

(assert (=> b!205210 m!225929))

(assert (=> b!204736 d!54258))

(declare-fun d!54270 () Bool)

(declare-fun lt!73887 () Int)

(assert (=> d!54270 (= lt!73887 (size!2627 (list!1220 (_1!1920 lt!73584))))))

(assert (=> d!54270 (= lt!73887 (size!2628 (c!39311 (_1!1920 lt!73584))))))

(assert (=> d!54270 (= (size!2623 (_1!1920 lt!73584)) lt!73887)))

(declare-fun bs!20893 () Bool)

(assert (= bs!20893 d!54270))

(declare-fun m!225931 () Bool)

(assert (=> bs!20893 m!225931))

(assert (=> bs!20893 m!225931))

(declare-fun m!225933 () Bool)

(assert (=> bs!20893 m!225933))

(declare-fun m!225935 () Bool)

(assert (=> bs!20893 m!225935))

(assert (=> b!204736 d!54270))

(declare-fun d!54272 () Bool)

(declare-fun e!126201 () Bool)

(assert (=> d!54272 e!126201))

(declare-fun res!94039 () Bool)

(assert (=> d!54272 (=> (not res!94039) (not e!126201))))

(declare-fun lt!73888 () BalanceConc!2070)

(assert (=> d!54272 (= res!94039 (= (list!1220 lt!73888) (Cons!3272 lt!73593 Nil!3272)))))

(assert (=> d!54272 (= lt!73888 (singleton!66 lt!73593))))

(assert (=> d!54272 (= (singletonSeq!156 lt!73593) lt!73888)))

(declare-fun b!205211 () Bool)

(assert (=> b!205211 (= e!126201 (isBalanced!277 (c!39311 lt!73888)))))

(assert (= (and d!54272 res!94039) b!205211))

(declare-fun m!225937 () Bool)

(assert (=> d!54272 m!225937))

(declare-fun m!225939 () Bool)

(assert (=> d!54272 m!225939))

(declare-fun m!225941 () Bool)

(assert (=> b!205211 m!225941))

(assert (=> b!204736 d!54272))

(declare-fun b!205212 () Bool)

(declare-fun res!94040 () Bool)

(declare-fun e!126202 () Bool)

(assert (=> b!205212 (=> (not res!94040) (not e!126202))))

(declare-fun lt!73890 () Option!505)

(assert (=> b!205212 (= res!94040 (= (list!1218 (charsOf!259 (_1!1922 (get!973 lt!73890)))) (originalCharacters!647 (_1!1922 (get!973 lt!73890)))))))

(declare-fun b!205213 () Bool)

(declare-fun res!94046 () Bool)

(assert (=> b!205213 (=> (not res!94046) (not e!126202))))

(assert (=> b!205213 (= res!94046 (= (++!799 (list!1218 (charsOf!259 (_1!1922 (get!973 lt!73890)))) (_2!1922 (get!973 lt!73890))) lt!73598))))

(declare-fun b!205214 () Bool)

(declare-fun res!94041 () Bool)

(assert (=> b!205214 (=> (not res!94041) (not e!126202))))

(assert (=> b!205214 (= res!94041 (= (value!21531 (_1!1922 (get!973 lt!73890))) (apply!535 (transformation!604 (rule!1131 (_1!1922 (get!973 lt!73890)))) (seqFromList!585 (originalCharacters!647 (_1!1922 (get!973 lt!73890)))))))))

(declare-fun d!54274 () Bool)

(declare-fun e!126203 () Bool)

(assert (=> d!54274 e!126203))

(declare-fun res!94044 () Bool)

(assert (=> d!54274 (=> res!94044 e!126203)))

(assert (=> d!54274 (= res!94044 (isEmpty!1713 lt!73890))))

(declare-fun e!126204 () Option!505)

(assert (=> d!54274 (= lt!73890 e!126204)))

(declare-fun c!39381 () Bool)

(assert (=> d!54274 (= c!39381 (and (is-Cons!3271 rules!1920) (is-Nil!3271 (t!30903 rules!1920))))))

(declare-fun lt!73893 () Unit!3303)

(declare-fun lt!73891 () Unit!3303)

(assert (=> d!54274 (= lt!73893 lt!73891)))

(assert (=> d!54274 (isPrefix!300 lt!73598 lt!73598)))

(assert (=> d!54274 (= lt!73891 (lemmaIsPrefixRefl!166 lt!73598 lt!73598))))

(assert (=> d!54274 (rulesValidInductive!155 thiss!17480 rules!1920)))

(assert (=> d!54274 (= (maxPrefix!220 thiss!17480 rules!1920 lt!73598) lt!73890)))

(declare-fun bm!9897 () Bool)

(declare-fun call!9902 () Option!505)

(assert (=> bm!9897 (= call!9902 (maxPrefixOneRule!100 thiss!17480 (h!8668 rules!1920) lt!73598))))

(declare-fun b!205215 () Bool)

(assert (=> b!205215 (= e!126203 e!126202)))

(declare-fun res!94043 () Bool)

(assert (=> b!205215 (=> (not res!94043) (not e!126202))))

(assert (=> b!205215 (= res!94043 (isDefined!357 lt!73890))))

(declare-fun b!205216 () Bool)

(assert (=> b!205216 (= e!126202 (contains!543 rules!1920 (rule!1131 (_1!1922 (get!973 lt!73890)))))))

(declare-fun b!205217 () Bool)

(assert (=> b!205217 (= e!126204 call!9902)))

(declare-fun b!205218 () Bool)

(declare-fun lt!73889 () Option!505)

(declare-fun lt!73892 () Option!505)

(assert (=> b!205218 (= e!126204 (ite (and (is-None!504 lt!73889) (is-None!504 lt!73892)) None!504 (ite (is-None!504 lt!73892) lt!73889 (ite (is-None!504 lt!73889) lt!73892 (ite (>= (size!2622 (_1!1922 (v!14055 lt!73889))) (size!2622 (_1!1922 (v!14055 lt!73892)))) lt!73889 lt!73892)))))))

(assert (=> b!205218 (= lt!73889 call!9902)))

(assert (=> b!205218 (= lt!73892 (maxPrefix!220 thiss!17480 (t!30903 rules!1920) lt!73598))))

(declare-fun b!205219 () Bool)

(declare-fun res!94045 () Bool)

(assert (=> b!205219 (=> (not res!94045) (not e!126202))))

(assert (=> b!205219 (= res!94045 (< (size!2626 (_2!1922 (get!973 lt!73890))) (size!2626 lt!73598)))))

(declare-fun b!205220 () Bool)

(declare-fun res!94042 () Bool)

(assert (=> b!205220 (=> (not res!94042) (not e!126202))))

(assert (=> b!205220 (= res!94042 (matchR!166 (regex!604 (rule!1131 (_1!1922 (get!973 lt!73890)))) (list!1218 (charsOf!259 (_1!1922 (get!973 lt!73890))))))))

(assert (= (and d!54274 c!39381) b!205217))

(assert (= (and d!54274 (not c!39381)) b!205218))

(assert (= (or b!205217 b!205218) bm!9897))

(assert (= (and d!54274 (not res!94044)) b!205215))

(assert (= (and b!205215 res!94043) b!205212))

(assert (= (and b!205212 res!94040) b!205219))

(assert (= (and b!205219 res!94045) b!205213))

(assert (= (and b!205213 res!94046) b!205214))

(assert (= (and b!205214 res!94041) b!205220))

(assert (= (and b!205220 res!94042) b!205216))

(declare-fun m!225943 () Bool)

(assert (=> bm!9897 m!225943))

(declare-fun m!225945 () Bool)

(assert (=> b!205214 m!225945))

(declare-fun m!225947 () Bool)

(assert (=> b!205214 m!225947))

(assert (=> b!205214 m!225947))

(declare-fun m!225949 () Bool)

(assert (=> b!205214 m!225949))

(assert (=> b!205219 m!225945))

(declare-fun m!225951 () Bool)

(assert (=> b!205219 m!225951))

(declare-fun m!225953 () Bool)

(assert (=> b!205219 m!225953))

(assert (=> b!205213 m!225945))

(declare-fun m!225955 () Bool)

(assert (=> b!205213 m!225955))

(assert (=> b!205213 m!225955))

(declare-fun m!225957 () Bool)

(assert (=> b!205213 m!225957))

(assert (=> b!205213 m!225957))

(declare-fun m!225959 () Bool)

(assert (=> b!205213 m!225959))

(declare-fun m!225961 () Bool)

(assert (=> b!205218 m!225961))

(declare-fun m!225963 () Bool)

(assert (=> b!205215 m!225963))

(declare-fun m!225965 () Bool)

(assert (=> d!54274 m!225965))

(declare-fun m!225967 () Bool)

(assert (=> d!54274 m!225967))

(declare-fun m!225969 () Bool)

(assert (=> d!54274 m!225969))

(assert (=> d!54274 m!225565))

(assert (=> b!205212 m!225945))

(assert (=> b!205212 m!225955))

(assert (=> b!205212 m!225955))

(assert (=> b!205212 m!225957))

(assert (=> b!205216 m!225945))

(declare-fun m!225971 () Bool)

(assert (=> b!205216 m!225971))

(assert (=> b!205220 m!225945))

(assert (=> b!205220 m!225955))

(assert (=> b!205220 m!225955))

(assert (=> b!205220 m!225957))

(assert (=> b!205220 m!225957))

(declare-fun m!225973 () Bool)

(assert (=> b!205220 m!225973))

(assert (=> b!204736 d!54274))

(declare-fun d!54276 () Bool)

(declare-fun lt!73896 () BalanceConc!2068)

(assert (=> d!54276 (= (list!1218 lt!73896) (originalCharacters!647 lt!73593))))

(declare-fun dynLambda!1443 (Int TokenValue!626) BalanceConc!2068)

(assert (=> d!54276 (= lt!73896 (dynLambda!1443 (toChars!1146 (transformation!604 (rule!1131 lt!73593))) (value!21531 lt!73593)))))

(assert (=> d!54276 (= (charsOf!259 lt!73593) lt!73896)))

(declare-fun b_lambda!5301 () Bool)

(assert (=> (not b_lambda!5301) (not d!54276)))

(declare-fun t!30922 () Bool)

(declare-fun tb!9489 () Bool)

(assert (=> (and b!204757 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))) (toChars!1146 (transformation!604 (rule!1131 lt!73593)))) t!30922) tb!9489))

(declare-fun b!205225 () Bool)

(declare-fun e!126207 () Bool)

(declare-fun tp!90488 () Bool)

(declare-fun inv!4118 (Conc!1030) Bool)

(assert (=> b!205225 (= e!126207 (and (inv!4118 (c!39309 (dynLambda!1443 (toChars!1146 (transformation!604 (rule!1131 lt!73593))) (value!21531 lt!73593)))) tp!90488))))

(declare-fun result!12512 () Bool)

(declare-fun inv!4119 (BalanceConc!2068) Bool)

(assert (=> tb!9489 (= result!12512 (and (inv!4119 (dynLambda!1443 (toChars!1146 (transformation!604 (rule!1131 lt!73593))) (value!21531 lt!73593))) e!126207))))

(assert (= tb!9489 b!205225))

(declare-fun m!225975 () Bool)

(assert (=> b!205225 m!225975))

(declare-fun m!225977 () Bool)

(assert (=> tb!9489 m!225977))

(assert (=> d!54276 t!30922))

(declare-fun b_and!14821 () Bool)

(assert (= b_and!14799 (and (=> t!30922 result!12512) b_and!14821)))

(declare-fun tb!9491 () Bool)

(declare-fun t!30924 () Bool)

(assert (=> (and b!204765 (= (toChars!1146 (transformation!604 (h!8668 rules!1920))) (toChars!1146 (transformation!604 (rule!1131 lt!73593)))) t!30924) tb!9491))

(declare-fun result!12516 () Bool)

(assert (= result!12516 result!12512))

(assert (=> d!54276 t!30924))

(declare-fun b_and!14823 () Bool)

(assert (= b_and!14803 (and (=> t!30924 result!12516) b_and!14823)))

(declare-fun t!30926 () Bool)

(declare-fun tb!9493 () Bool)

(assert (=> (and b!204725 (= (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))) (toChars!1146 (transformation!604 (rule!1131 lt!73593)))) t!30926) tb!9493))

(declare-fun result!12518 () Bool)

(assert (= result!12518 result!12512))

(assert (=> d!54276 t!30926))

(declare-fun b_and!14825 () Bool)

(assert (= b_and!14807 (and (=> t!30926 result!12518) b_and!14825)))

(declare-fun m!225979 () Bool)

(assert (=> d!54276 m!225979))

(declare-fun m!225981 () Bool)

(assert (=> d!54276 m!225981))

(assert (=> b!204736 d!54276))

(declare-fun d!54278 () Bool)

(declare-fun res!94051 () Bool)

(declare-fun e!126212 () Bool)

(assert (=> d!54278 (=> res!94051 e!126212)))

(assert (=> d!54278 (= res!94051 (is-Nil!3272 tokens!465))))

(assert (=> d!54278 (= (forall!706 tokens!465 lambda!6249) e!126212)))

(declare-fun b!205230 () Bool)

(declare-fun e!126213 () Bool)

(assert (=> b!205230 (= e!126212 e!126213)))

(declare-fun res!94052 () Bool)

(assert (=> b!205230 (=> (not res!94052) (not e!126213))))

(assert (=> b!205230 (= res!94052 (dynLambda!1442 lambda!6249 (h!8669 tokens!465)))))

(declare-fun b!205231 () Bool)

(assert (=> b!205231 (= e!126213 (forall!706 (t!30904 tokens!465) lambda!6249))))

(assert (= (and d!54278 (not res!94051)) b!205230))

(assert (= (and b!205230 res!94052) b!205231))

(declare-fun b_lambda!5303 () Bool)

(assert (=> (not b_lambda!5303) (not b!205230)))

(declare-fun m!225983 () Bool)

(assert (=> b!205230 m!225983))

(declare-fun m!225985 () Bool)

(assert (=> b!205231 m!225985))

(assert (=> b!204758 d!54278))

(declare-fun d!54280 () Bool)

(declare-fun res!94055 () Bool)

(declare-fun e!126216 () Bool)

(assert (=> d!54280 (=> (not res!94055) (not e!126216))))

(declare-fun rulesValid!174 (LexerInterface!490 List!3281) Bool)

(assert (=> d!54280 (= res!94055 (rulesValid!174 thiss!17480 rules!1920))))

(assert (=> d!54280 (= (rulesInvariant!456 thiss!17480 rules!1920) e!126216)))

(declare-fun b!205234 () Bool)

(declare-datatypes ((List!3287 0))(
  ( (Nil!3277) (Cons!3277 (h!8674 String!4212) (t!30987 List!3287)) )
))
(declare-fun noDuplicateTag!174 (LexerInterface!490 List!3281 List!3287) Bool)

(assert (=> b!205234 (= e!126216 (noDuplicateTag!174 thiss!17480 rules!1920 Nil!3277))))

(assert (= (and d!54280 res!94055) b!205234))

(declare-fun m!225987 () Bool)

(assert (=> d!54280 m!225987))

(declare-fun m!225989 () Bool)

(assert (=> b!205234 m!225989))

(assert (=> b!204737 d!54280))

(declare-fun b!205235 () Bool)

(declare-fun e!126221 () Bool)

(declare-fun lt!73897 () Bool)

(assert (=> b!205235 (= e!126221 (not lt!73897))))

(declare-fun b!205236 () Bool)

(declare-fun e!126222 () Bool)

(assert (=> b!205236 (= e!126222 (nullable!135 (regex!604 (rule!1131 (h!8669 tokens!465)))))))

(declare-fun b!205237 () Bool)

(declare-fun res!94057 () Bool)

(declare-fun e!126218 () Bool)

(assert (=> b!205237 (=> (not res!94057) (not e!126218))))

(declare-fun call!9903 () Bool)

(assert (=> b!205237 (= res!94057 (not call!9903))))

(declare-fun b!205238 () Bool)

(assert (=> b!205238 (= e!126218 (= (head!704 lt!73576) (c!39310 (regex!604 (rule!1131 (h!8669 tokens!465))))))))

(declare-fun b!205239 () Bool)

(declare-fun res!94060 () Bool)

(declare-fun e!126223 () Bool)

(assert (=> b!205239 (=> res!94060 e!126223)))

(assert (=> b!205239 (= res!94060 e!126218)))

(declare-fun res!94056 () Bool)

(assert (=> b!205239 (=> (not res!94056) (not e!126218))))

(assert (=> b!205239 (= res!94056 lt!73897)))

(declare-fun b!205240 () Bool)

(declare-fun e!126217 () Bool)

(assert (=> b!205240 (= e!126217 (not (= (head!704 lt!73576) (c!39310 (regex!604 (rule!1131 (h!8669 tokens!465)))))))))

(declare-fun b!205241 () Bool)

(declare-fun e!126220 () Bool)

(assert (=> b!205241 (= e!126220 (= lt!73897 call!9903))))

(declare-fun b!205243 () Bool)

(assert (=> b!205243 (= e!126222 (matchR!166 (derivativeStep!101 (regex!604 (rule!1131 (h!8669 tokens!465))) (head!704 lt!73576)) (tail!399 lt!73576)))))

(declare-fun b!205244 () Bool)

(declare-fun res!94061 () Bool)

(assert (=> b!205244 (=> res!94061 e!126217)))

(assert (=> b!205244 (= res!94061 (not (isEmpty!1706 (tail!399 lt!73576))))))

(declare-fun b!205245 () Bool)

(assert (=> b!205245 (= e!126220 e!126221)))

(declare-fun c!39382 () Bool)

(assert (=> b!205245 (= c!39382 (is-EmptyLang!828 (regex!604 (rule!1131 (h!8669 tokens!465)))))))

(declare-fun b!205246 () Bool)

(declare-fun res!94058 () Bool)

(assert (=> b!205246 (=> res!94058 e!126223)))

(assert (=> b!205246 (= res!94058 (not (is-ElementMatch!828 (regex!604 (rule!1131 (h!8669 tokens!465))))))))

(assert (=> b!205246 (= e!126221 e!126223)))

(declare-fun bm!9898 () Bool)

(assert (=> bm!9898 (= call!9903 (isEmpty!1706 lt!73576))))

(declare-fun d!54282 () Bool)

(assert (=> d!54282 e!126220))

(declare-fun c!39384 () Bool)

(assert (=> d!54282 (= c!39384 (is-EmptyExpr!828 (regex!604 (rule!1131 (h!8669 tokens!465)))))))

(assert (=> d!54282 (= lt!73897 e!126222)))

(declare-fun c!39383 () Bool)

(assert (=> d!54282 (= c!39383 (isEmpty!1706 lt!73576))))

(assert (=> d!54282 (validRegex!210 (regex!604 (rule!1131 (h!8669 tokens!465))))))

(assert (=> d!54282 (= (matchR!166 (regex!604 (rule!1131 (h!8669 tokens!465))) lt!73576) lt!73897)))

(declare-fun b!205242 () Bool)

(declare-fun e!126219 () Bool)

(assert (=> b!205242 (= e!126219 e!126217)))

(declare-fun res!94059 () Bool)

(assert (=> b!205242 (=> res!94059 e!126217)))

(assert (=> b!205242 (= res!94059 call!9903)))

(declare-fun b!205247 () Bool)

(declare-fun res!94063 () Bool)

(assert (=> b!205247 (=> (not res!94063) (not e!126218))))

(assert (=> b!205247 (= res!94063 (isEmpty!1706 (tail!399 lt!73576)))))

(declare-fun b!205248 () Bool)

(assert (=> b!205248 (= e!126223 e!126219)))

(declare-fun res!94062 () Bool)

(assert (=> b!205248 (=> (not res!94062) (not e!126219))))

(assert (=> b!205248 (= res!94062 (not lt!73897))))

(assert (= (and d!54282 c!39383) b!205236))

(assert (= (and d!54282 (not c!39383)) b!205243))

(assert (= (and d!54282 c!39384) b!205241))

(assert (= (and d!54282 (not c!39384)) b!205245))

(assert (= (and b!205245 c!39382) b!205235))

(assert (= (and b!205245 (not c!39382)) b!205246))

(assert (= (and b!205246 (not res!94058)) b!205239))

(assert (= (and b!205239 res!94056) b!205237))

(assert (= (and b!205237 res!94057) b!205247))

(assert (= (and b!205247 res!94063) b!205238))

(assert (= (and b!205239 (not res!94060)) b!205248))

(assert (= (and b!205248 res!94062) b!205242))

(assert (= (and b!205242 (not res!94059)) b!205244))

(assert (= (and b!205244 (not res!94061)) b!205240))

(assert (= (or b!205241 b!205237 b!205242) bm!9898))

(declare-fun m!225991 () Bool)

(assert (=> d!54282 m!225991))

(declare-fun m!225993 () Bool)

(assert (=> d!54282 m!225993))

(assert (=> b!205238 m!225669))

(assert (=> bm!9898 m!225991))

(assert (=> b!205240 m!225669))

(assert (=> b!205243 m!225669))

(assert (=> b!205243 m!225669))

(declare-fun m!225995 () Bool)

(assert (=> b!205243 m!225995))

(assert (=> b!205243 m!225659))

(assert (=> b!205243 m!225995))

(assert (=> b!205243 m!225659))

(declare-fun m!225997 () Bool)

(assert (=> b!205243 m!225997))

(assert (=> b!205247 m!225659))

(assert (=> b!205247 m!225659))

(declare-fun m!225999 () Bool)

(assert (=> b!205247 m!225999))

(declare-fun m!226001 () Bool)

(assert (=> b!205236 m!226001))

(assert (=> b!205244 m!225659))

(assert (=> b!205244 m!225659))

(assert (=> b!205244 m!225999))

(assert (=> b!204756 d!54282))

(declare-fun b!205259 () Bool)

(declare-fun e!126232 () Bool)

(declare-fun e!126231 () Bool)

(assert (=> b!205259 (= e!126232 e!126231)))

(declare-fun c!39390 () Bool)

(assert (=> b!205259 (= c!39390 (is-IntegerValue!1879 (value!21531 separatorToken!170)))))

(declare-fun d!54284 () Bool)

(declare-fun c!39389 () Bool)

(assert (=> d!54284 (= c!39389 (is-IntegerValue!1878 (value!21531 separatorToken!170)))))

(assert (=> d!54284 (= (inv!21 (value!21531 separatorToken!170)) e!126232)))

(declare-fun b!205260 () Bool)

(declare-fun inv!17 (TokenValue!626) Bool)

(assert (=> b!205260 (= e!126231 (inv!17 (value!21531 separatorToken!170)))))

(declare-fun b!205261 () Bool)

(declare-fun inv!16 (TokenValue!626) Bool)

(assert (=> b!205261 (= e!126232 (inv!16 (value!21531 separatorToken!170)))))

(declare-fun b!205262 () Bool)

(declare-fun res!94066 () Bool)

(declare-fun e!126230 () Bool)

(assert (=> b!205262 (=> res!94066 e!126230)))

(assert (=> b!205262 (= res!94066 (not (is-IntegerValue!1880 (value!21531 separatorToken!170))))))

(assert (=> b!205262 (= e!126231 e!126230)))

(declare-fun b!205263 () Bool)

(declare-fun inv!15 (TokenValue!626) Bool)

(assert (=> b!205263 (= e!126230 (inv!15 (value!21531 separatorToken!170)))))

(assert (= (and d!54284 c!39389) b!205261))

(assert (= (and d!54284 (not c!39389)) b!205259))

(assert (= (and b!205259 c!39390) b!205260))

(assert (= (and b!205259 (not c!39390)) b!205262))

(assert (= (and b!205262 (not res!94066)) b!205263))

(declare-fun m!226015 () Bool)

(assert (=> b!205260 m!226015))

(declare-fun m!226019 () Bool)

(assert (=> b!205261 m!226019))

(declare-fun m!226021 () Bool)

(assert (=> b!205263 m!226021))

(assert (=> b!204755 d!54284))

(declare-fun d!54296 () Bool)

(assert (=> d!54296 (= (inv!4111 (tag!790 (rule!1131 separatorToken!170))) (= (mod (str.len (value!21530 (tag!790 (rule!1131 separatorToken!170)))) 2) 0))))

(assert (=> b!204734 d!54296))

(declare-fun d!54298 () Bool)

(declare-fun res!94075 () Bool)

(declare-fun e!126241 () Bool)

(assert (=> d!54298 (=> (not res!94075) (not e!126241))))

(declare-fun semiInverseModEq!208 (Int Int) Bool)

(assert (=> d!54298 (= res!94075 (semiInverseModEq!208 (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))) (toValue!1287 (transformation!604 (rule!1131 separatorToken!170)))))))

(assert (=> d!54298 (= (inv!4115 (transformation!604 (rule!1131 separatorToken!170))) e!126241)))

(declare-fun b!205272 () Bool)

(declare-fun equivClasses!191 (Int Int) Bool)

(assert (=> b!205272 (= e!126241 (equivClasses!191 (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))) (toValue!1287 (transformation!604 (rule!1131 separatorToken!170)))))))

(assert (= (and d!54298 res!94075) b!205272))

(declare-fun m!226029 () Bool)

(assert (=> d!54298 m!226029))

(declare-fun m!226031 () Bool)

(assert (=> b!205272 m!226031))

(assert (=> b!204734 d!54298))

(declare-fun d!54302 () Bool)

(assert (=> d!54302 (= (list!1218 lt!73592) (list!1221 (c!39309 lt!73592)))))

(declare-fun bs!20898 () Bool)

(assert (= bs!20898 d!54302))

(declare-fun m!226033 () Bool)

(assert (=> bs!20898 m!226033))

(assert (=> b!204732 d!54302))

(declare-fun d!54306 () Bool)

(declare-fun lt!73910 () BalanceConc!2068)

(assert (=> d!54306 (= (list!1218 lt!73910) (printListTailRec!85 thiss!17480 (dropList!117 lt!73574 0) (list!1218 (BalanceConc!2069 Empty!1030))))))

(declare-fun e!126243 () BalanceConc!2068)

(assert (=> d!54306 (= lt!73910 e!126243)))

(declare-fun c!39391 () Bool)

(assert (=> d!54306 (= c!39391 (>= 0 (size!2623 lt!73574)))))

(declare-fun e!126242 () Bool)

(assert (=> d!54306 e!126242))

(declare-fun res!94076 () Bool)

(assert (=> d!54306 (=> (not res!94076) (not e!126242))))

(assert (=> d!54306 (= res!94076 (>= 0 0))))

(assert (=> d!54306 (= (printTailRec!184 thiss!17480 lt!73574 0 (BalanceConc!2069 Empty!1030)) lt!73910)))

(declare-fun b!205273 () Bool)

(assert (=> b!205273 (= e!126242 (<= 0 (size!2623 lt!73574)))))

(declare-fun b!205274 () Bool)

(assert (=> b!205274 (= e!126243 (BalanceConc!2069 Empty!1030))))

(declare-fun b!205275 () Bool)

(assert (=> b!205275 (= e!126243 (printTailRec!184 thiss!17480 lt!73574 (+ 0 1) (++!801 (BalanceConc!2069 Empty!1030) (charsOf!259 (apply!533 lt!73574 0)))))))

(declare-fun lt!73909 () List!3282)

(assert (=> b!205275 (= lt!73909 (list!1220 lt!73574))))

(declare-fun lt!73908 () Unit!3303)

(assert (=> b!205275 (= lt!73908 (lemmaDropApply!157 lt!73909 0))))

(assert (=> b!205275 (= (head!703 (drop!170 lt!73909 0)) (apply!536 lt!73909 0))))

(declare-fun lt!73911 () Unit!3303)

(assert (=> b!205275 (= lt!73911 lt!73908)))

(declare-fun lt!73914 () List!3282)

(assert (=> b!205275 (= lt!73914 (list!1220 lt!73574))))

(declare-fun lt!73912 () Unit!3303)

(assert (=> b!205275 (= lt!73912 (lemmaDropTail!149 lt!73914 0))))

(assert (=> b!205275 (= (tail!400 (drop!170 lt!73914 0)) (drop!170 lt!73914 (+ 0 1)))))

(declare-fun lt!73913 () Unit!3303)

(assert (=> b!205275 (= lt!73913 lt!73912)))

(assert (= (and d!54306 res!94076) b!205273))

(assert (= (and d!54306 c!39391) b!205274))

(assert (= (and d!54306 (not c!39391)) b!205275))

(declare-fun m!226035 () Bool)

(assert (=> d!54306 m!226035))

(declare-fun m!226037 () Bool)

(assert (=> d!54306 m!226037))

(declare-fun m!226039 () Bool)

(assert (=> d!54306 m!226039))

(assert (=> d!54306 m!225687))

(declare-fun m!226041 () Bool)

(assert (=> d!54306 m!226041))

(assert (=> d!54306 m!225687))

(assert (=> d!54306 m!226039))

(assert (=> b!205273 m!226035))

(declare-fun m!226043 () Bool)

(assert (=> b!205275 m!226043))

(declare-fun m!226045 () Bool)

(assert (=> b!205275 m!226045))

(declare-fun m!226047 () Bool)

(assert (=> b!205275 m!226047))

(declare-fun m!226049 () Bool)

(assert (=> b!205275 m!226049))

(assert (=> b!205275 m!226045))

(declare-fun m!226051 () Bool)

(assert (=> b!205275 m!226051))

(declare-fun m!226053 () Bool)

(assert (=> b!205275 m!226053))

(declare-fun m!226055 () Bool)

(assert (=> b!205275 m!226055))

(assert (=> b!205275 m!226043))

(declare-fun m!226057 () Bool)

(assert (=> b!205275 m!226057))

(assert (=> b!205275 m!226055))

(declare-fun m!226059 () Bool)

(assert (=> b!205275 m!226059))

(declare-fun m!226061 () Bool)

(assert (=> b!205275 m!226061))

(assert (=> b!205275 m!226057))

(declare-fun m!226063 () Bool)

(assert (=> b!205275 m!226063))

(declare-fun m!226065 () Bool)

(assert (=> b!205275 m!226065))

(assert (=> b!205275 m!226063))

(declare-fun m!226067 () Bool)

(assert (=> b!205275 m!226067))

(assert (=> b!204732 d!54306))

(declare-fun d!54308 () Bool)

(declare-fun lt!73915 () BalanceConc!2068)

(assert (=> d!54308 (= (list!1218 lt!73915) (printList!174 thiss!17480 (list!1220 lt!73574)))))

(assert (=> d!54308 (= lt!73915 (printTailRec!184 thiss!17480 lt!73574 0 (BalanceConc!2069 Empty!1030)))))

(assert (=> d!54308 (= (print!221 thiss!17480 lt!73574) lt!73915)))

(declare-fun bs!20899 () Bool)

(assert (= bs!20899 d!54308))

(declare-fun m!226069 () Bool)

(assert (=> bs!20899 m!226069))

(assert (=> bs!20899 m!226065))

(assert (=> bs!20899 m!226065))

(declare-fun m!226071 () Bool)

(assert (=> bs!20899 m!226071))

(assert (=> bs!20899 m!225111))

(assert (=> b!204732 d!54308))

(declare-fun d!54310 () Bool)

(declare-fun e!126244 () Bool)

(assert (=> d!54310 e!126244))

(declare-fun res!94077 () Bool)

(assert (=> d!54310 (=> (not res!94077) (not e!126244))))

(declare-fun lt!73916 () BalanceConc!2070)

(assert (=> d!54310 (= res!94077 (= (list!1220 lt!73916) (Cons!3272 (h!8669 tokens!465) Nil!3272)))))

(assert (=> d!54310 (= lt!73916 (singleton!66 (h!8669 tokens!465)))))

(assert (=> d!54310 (= (singletonSeq!156 (h!8669 tokens!465)) lt!73916)))

(declare-fun b!205276 () Bool)

(assert (=> b!205276 (= e!126244 (isBalanced!277 (c!39311 lt!73916)))))

(assert (= (and d!54310 res!94077) b!205276))

(declare-fun m!226073 () Bool)

(assert (=> d!54310 m!226073))

(declare-fun m!226075 () Bool)

(assert (=> d!54310 m!226075))

(declare-fun m!226077 () Bool)

(assert (=> b!205276 m!226077))

(assert (=> b!204732 d!54310))

(declare-fun d!54312 () Bool)

(declare-fun c!39394 () Bool)

(assert (=> d!54312 (= c!39394 (is-Cons!3272 (Cons!3272 (h!8669 tokens!465) Nil!3272)))))

(declare-fun e!126247 () List!3280)

(assert (=> d!54312 (= (printList!174 thiss!17480 (Cons!3272 (h!8669 tokens!465) Nil!3272)) e!126247)))

(declare-fun b!205281 () Bool)

(assert (=> b!205281 (= e!126247 (++!799 (list!1218 (charsOf!259 (h!8669 (Cons!3272 (h!8669 tokens!465) Nil!3272)))) (printList!174 thiss!17480 (t!30904 (Cons!3272 (h!8669 tokens!465) Nil!3272)))))))

(declare-fun b!205282 () Bool)

(assert (=> b!205282 (= e!126247 Nil!3270)))

(assert (= (and d!54312 c!39394) b!205281))

(assert (= (and d!54312 (not c!39394)) b!205282))

(declare-fun m!226079 () Bool)

(assert (=> b!205281 m!226079))

(assert (=> b!205281 m!226079))

(declare-fun m!226081 () Bool)

(assert (=> b!205281 m!226081))

(declare-fun m!226083 () Bool)

(assert (=> b!205281 m!226083))

(assert (=> b!205281 m!226081))

(assert (=> b!205281 m!226083))

(declare-fun m!226085 () Bool)

(assert (=> b!205281 m!226085))

(assert (=> b!204732 d!54312))

(declare-fun d!54314 () Bool)

(declare-fun res!94086 () Bool)

(declare-fun e!126260 () Bool)

(assert (=> d!54314 (=> res!94086 e!126260)))

(assert (=> d!54314 (= res!94086 (not (is-Cons!3271 rules!1920)))))

(assert (=> d!54314 (= (sepAndNonSepRulesDisjointChars!193 rules!1920 rules!1920) e!126260)))

(declare-fun b!205299 () Bool)

(declare-fun e!126261 () Bool)

(assert (=> b!205299 (= e!126260 e!126261)))

(declare-fun res!94087 () Bool)

(assert (=> b!205299 (=> (not res!94087) (not e!126261))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!67 (Rule!1008 List!3281) Bool)

(assert (=> b!205299 (= res!94087 (ruleDisjointCharsFromAllFromOtherType!67 (h!8668 rules!1920) rules!1920))))

(declare-fun b!205300 () Bool)

(assert (=> b!205300 (= e!126261 (sepAndNonSepRulesDisjointChars!193 rules!1920 (t!30903 rules!1920)))))

(assert (= (and d!54314 (not res!94086)) b!205299))

(assert (= (and b!205299 res!94087) b!205300))

(declare-fun m!226087 () Bool)

(assert (=> b!205299 m!226087))

(declare-fun m!226089 () Bool)

(assert (=> b!205300 m!226089))

(assert (=> b!204754 d!54314))

(declare-fun d!54316 () Bool)

(assert (=> d!54316 (not (matchR!166 (regex!604 (rule!1131 lt!73593)) lt!73575))))

(declare-fun lt!73928 () Unit!3303)

(declare-fun choose!2029 (Regex!828 List!3280 C!2578) Unit!3303)

(assert (=> d!54316 (= lt!73928 (choose!2029 (regex!604 (rule!1131 lt!73593)) lt!73575 lt!73560))))

(assert (=> d!54316 (validRegex!210 (regex!604 (rule!1131 lt!73593)))))

(assert (=> d!54316 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!3 (regex!604 (rule!1131 lt!73593)) lt!73575 lt!73560) lt!73928)))

(declare-fun bs!20900 () Bool)

(assert (= bs!20900 d!54316))

(assert (=> bs!20900 m!225283))

(declare-fun m!226103 () Bool)

(assert (=> bs!20900 m!226103))

(declare-fun m!226105 () Bool)

(assert (=> bs!20900 m!226105))

(assert (=> b!204733 d!54316))

(declare-fun b!205316 () Bool)

(declare-fun e!126273 () Bool)

(declare-fun lt!73934 () Bool)

(assert (=> b!205316 (= e!126273 (not lt!73934))))

(declare-fun b!205317 () Bool)

(declare-fun e!126274 () Bool)

(assert (=> b!205317 (= e!126274 (nullable!135 (regex!604 (rule!1131 lt!73593))))))

(declare-fun b!205318 () Bool)

(declare-fun res!94098 () Bool)

(declare-fun e!126270 () Bool)

(assert (=> b!205318 (=> (not res!94098) (not e!126270))))

(declare-fun call!9905 () Bool)

(assert (=> b!205318 (= res!94098 (not call!9905))))

(declare-fun b!205319 () Bool)

(assert (=> b!205319 (= e!126270 (= (head!704 lt!73575) (c!39310 (regex!604 (rule!1131 lt!73593)))))))

(declare-fun b!205320 () Bool)

(declare-fun res!94101 () Bool)

(declare-fun e!126275 () Bool)

(assert (=> b!205320 (=> res!94101 e!126275)))

(assert (=> b!205320 (= res!94101 e!126270)))

(declare-fun res!94097 () Bool)

(assert (=> b!205320 (=> (not res!94097) (not e!126270))))

(assert (=> b!205320 (= res!94097 lt!73934)))

(declare-fun b!205321 () Bool)

(declare-fun e!126269 () Bool)

(assert (=> b!205321 (= e!126269 (not (= (head!704 lt!73575) (c!39310 (regex!604 (rule!1131 lt!73593))))))))

(declare-fun b!205322 () Bool)

(declare-fun e!126272 () Bool)

(assert (=> b!205322 (= e!126272 (= lt!73934 call!9905))))

(declare-fun b!205324 () Bool)

(assert (=> b!205324 (= e!126274 (matchR!166 (derivativeStep!101 (regex!604 (rule!1131 lt!73593)) (head!704 lt!73575)) (tail!399 lt!73575)))))

(declare-fun b!205325 () Bool)

(declare-fun res!94102 () Bool)

(assert (=> b!205325 (=> res!94102 e!126269)))

(assert (=> b!205325 (= res!94102 (not (isEmpty!1706 (tail!399 lt!73575))))))

(declare-fun b!205326 () Bool)

(assert (=> b!205326 (= e!126272 e!126273)))

(declare-fun c!39403 () Bool)

(assert (=> b!205326 (= c!39403 (is-EmptyLang!828 (regex!604 (rule!1131 lt!73593))))))

(declare-fun b!205327 () Bool)

(declare-fun res!94099 () Bool)

(assert (=> b!205327 (=> res!94099 e!126275)))

(assert (=> b!205327 (= res!94099 (not (is-ElementMatch!828 (regex!604 (rule!1131 lt!73593)))))))

(assert (=> b!205327 (= e!126273 e!126275)))

(declare-fun bm!9900 () Bool)

(assert (=> bm!9900 (= call!9905 (isEmpty!1706 lt!73575))))

(declare-fun d!54320 () Bool)

(assert (=> d!54320 e!126272))

(declare-fun c!39405 () Bool)

(assert (=> d!54320 (= c!39405 (is-EmptyExpr!828 (regex!604 (rule!1131 lt!73593))))))

(assert (=> d!54320 (= lt!73934 e!126274)))

(declare-fun c!39404 () Bool)

(assert (=> d!54320 (= c!39404 (isEmpty!1706 lt!73575))))

(assert (=> d!54320 (validRegex!210 (regex!604 (rule!1131 lt!73593)))))

(assert (=> d!54320 (= (matchR!166 (regex!604 (rule!1131 lt!73593)) lt!73575) lt!73934)))

(declare-fun b!205323 () Bool)

(declare-fun e!126271 () Bool)

(assert (=> b!205323 (= e!126271 e!126269)))

(declare-fun res!94100 () Bool)

(assert (=> b!205323 (=> res!94100 e!126269)))

(assert (=> b!205323 (= res!94100 call!9905)))

(declare-fun b!205328 () Bool)

(declare-fun res!94104 () Bool)

(assert (=> b!205328 (=> (not res!94104) (not e!126270))))

(assert (=> b!205328 (= res!94104 (isEmpty!1706 (tail!399 lt!73575)))))

(declare-fun b!205329 () Bool)

(assert (=> b!205329 (= e!126275 e!126271)))

(declare-fun res!94103 () Bool)

(assert (=> b!205329 (=> (not res!94103) (not e!126271))))

(assert (=> b!205329 (= res!94103 (not lt!73934))))

(assert (= (and d!54320 c!39404) b!205317))

(assert (= (and d!54320 (not c!39404)) b!205324))

(assert (= (and d!54320 c!39405) b!205322))

(assert (= (and d!54320 (not c!39405)) b!205326))

(assert (= (and b!205326 c!39403) b!205316))

(assert (= (and b!205326 (not c!39403)) b!205327))

(assert (= (and b!205327 (not res!94099)) b!205320))

(assert (= (and b!205320 res!94097) b!205318))

(assert (= (and b!205318 res!94098) b!205328))

(assert (= (and b!205328 res!94104) b!205319))

(assert (= (and b!205320 (not res!94101)) b!205329))

(assert (= (and b!205329 res!94103) b!205323))

(assert (= (and b!205323 (not res!94100)) b!205325))

(assert (= (and b!205325 (not res!94102)) b!205321))

(assert (= (or b!205322 b!205318 b!205323) bm!9900))

(declare-fun m!226107 () Bool)

(assert (=> d!54320 m!226107))

(assert (=> d!54320 m!226105))

(assert (=> b!205319 m!225167))

(assert (=> bm!9900 m!226107))

(assert (=> b!205321 m!225167))

(assert (=> b!205324 m!225167))

(assert (=> b!205324 m!225167))

(declare-fun m!226109 () Bool)

(assert (=> b!205324 m!226109))

(declare-fun m!226111 () Bool)

(assert (=> b!205324 m!226111))

(assert (=> b!205324 m!226109))

(assert (=> b!205324 m!226111))

(declare-fun m!226113 () Bool)

(assert (=> b!205324 m!226113))

(assert (=> b!205328 m!226111))

(assert (=> b!205328 m!226111))

(declare-fun m!226115 () Bool)

(assert (=> b!205328 m!226115))

(declare-fun m!226117 () Bool)

(assert (=> b!205317 m!226117))

(assert (=> b!205325 m!226111))

(assert (=> b!205325 m!226111))

(assert (=> b!205325 m!226115))

(assert (=> b!204733 d!54320))

(declare-fun d!54322 () Bool)

(assert (=> d!54322 (= (isEmpty!1707 rules!1920) (is-Nil!3271 rules!1920))))

(assert (=> b!204752 d!54322))

(declare-fun d!54324 () Bool)

(assert (=> d!54324 (= (list!1218 (printWithSeparatorTokenWhenNeededRec!173 thiss!17480 rules!1920 lt!73568 separatorToken!170 0)) (list!1221 (c!39309 (printWithSeparatorTokenWhenNeededRec!173 thiss!17480 rules!1920 lt!73568 separatorToken!170 0))))))

(declare-fun bs!20901 () Bool)

(assert (= bs!20901 d!54324))

(declare-fun m!226145 () Bool)

(assert (=> bs!20901 m!226145))

(assert (=> b!204731 d!54324))

(declare-fun bs!20905 () Bool)

(declare-fun d!54326 () Bool)

(assert (= bs!20905 (and d!54326 b!204758)))

(declare-fun lambda!6268 () Int)

(assert (=> bs!20905 (= lambda!6268 lambda!6249)))

(declare-fun bs!20906 () Bool)

(assert (= bs!20906 (and d!54326 b!204727)))

(assert (=> bs!20906 (not (= lambda!6268 lambda!6250))))

(declare-fun bs!20907 () Bool)

(declare-fun b!205420 () Bool)

(assert (= bs!20907 (and b!205420 b!204758)))

(declare-fun lambda!6269 () Int)

(assert (=> bs!20907 (not (= lambda!6269 lambda!6249))))

(declare-fun bs!20908 () Bool)

(assert (= bs!20908 (and b!205420 b!204727)))

(assert (=> bs!20908 (= lambda!6269 lambda!6250)))

(declare-fun bs!20909 () Bool)

(assert (= bs!20909 (and b!205420 d!54326)))

(assert (=> bs!20909 (not (= lambda!6269 lambda!6268))))

(declare-fun b!205423 () Bool)

(declare-fun e!126333 () Bool)

(assert (=> b!205423 (= e!126333 true)))

(declare-fun b!205422 () Bool)

(declare-fun e!126332 () Bool)

(assert (=> b!205422 (= e!126332 e!126333)))

(declare-fun b!205421 () Bool)

(declare-fun e!126331 () Bool)

(assert (=> b!205421 (= e!126331 e!126332)))

(assert (=> b!205420 e!126331))

(assert (= b!205422 b!205423))

(assert (= b!205421 b!205422))

(assert (= (and b!205420 (is-Cons!3271 rules!1920)) b!205421))

(assert (=> b!205423 (< (dynLambda!1436 order!2123 (toValue!1287 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6269))))

(assert (=> b!205423 (< (dynLambda!1438 order!2127 (toChars!1146 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6269))))

(assert (=> b!205420 true))

(declare-fun b!205410 () Bool)

(declare-fun e!126328 () Bool)

(declare-fun lt!73983 () Option!504)

(declare-fun call!9935 () Token!952)

(assert (=> b!205410 (= e!126328 (not (= (_1!1921 (v!14054 lt!73983)) call!9935)))))

(declare-fun b!205411 () Bool)

(declare-fun e!126327 () BalanceConc!2068)

(declare-fun call!9932 () BalanceConc!2068)

(declare-fun lt!73987 () BalanceConc!2068)

(assert (=> b!205411 (= e!126327 (++!801 call!9932 lt!73987))))

(declare-fun b!205412 () Bool)

(declare-fun e!126330 () BalanceConc!2068)

(assert (=> b!205412 (= e!126330 call!9932)))

(declare-fun b!205413 () Bool)

(declare-fun e!126324 () Bool)

(assert (=> b!205413 (= e!126324 (= (_1!1921 (v!14054 lt!73983)) (apply!533 lt!73568 0)))))

(declare-fun b!205414 () Bool)

(declare-fun e!126326 () Bool)

(assert (=> b!205414 (= e!126326 (<= 0 (size!2623 lt!73568)))))

(declare-fun lt!73984 () BalanceConc!2068)

(assert (=> d!54326 (= (list!1218 lt!73984) (printWithSeparatorTokenWhenNeededList!183 thiss!17480 rules!1920 (dropList!117 lt!73568 0) separatorToken!170))))

(declare-fun e!126325 () BalanceConc!2068)

(assert (=> d!54326 (= lt!73984 e!126325)))

(declare-fun c!39438 () Bool)

(assert (=> d!54326 (= c!39438 (>= 0 (size!2623 lt!73568)))))

(declare-fun lt!73980 () Unit!3303)

(declare-fun lemmaContentSubsetPreservesForall!61 (List!3282 List!3282 Int) Unit!3303)

(assert (=> d!54326 (= lt!73980 (lemmaContentSubsetPreservesForall!61 (list!1220 lt!73568) (dropList!117 lt!73568 0) lambda!6268))))

(assert (=> d!54326 e!126326))

(declare-fun res!94127 () Bool)

(assert (=> d!54326 (=> (not res!94127) (not e!126326))))

(assert (=> d!54326 (= res!94127 (>= 0 0))))

(assert (=> d!54326 (= (printWithSeparatorTokenWhenNeededRec!173 thiss!17480 rules!1920 lt!73568 separatorToken!170 0) lt!73984)))

(declare-fun bm!9927 () Bool)

(declare-fun call!9934 () Token!952)

(assert (=> bm!9927 (= call!9934 call!9935)))

(declare-fun b!205415 () Bool)

(declare-fun e!126329 () BalanceConc!2068)

(declare-fun call!9936 () BalanceConc!2068)

(assert (=> b!205415 (= e!126329 call!9936)))

(declare-fun bm!9928 () Bool)

(declare-fun call!9933 () BalanceConc!2068)

(assert (=> bm!9928 (= call!9933 call!9936)))

(declare-fun bm!9929 () Bool)

(assert (=> bm!9929 (= call!9935 (apply!533 lt!73568 0))))

(declare-fun b!205416 () Bool)

(assert (=> b!205416 (= e!126329 (charsOf!259 call!9934))))

(declare-fun c!39435 () Bool)

(declare-fun bm!9930 () Bool)

(declare-fun c!39436 () Bool)

(assert (=> bm!9930 (= call!9936 (charsOf!259 (ite c!39436 call!9935 (ite c!39435 separatorToken!170 call!9934))))))

(declare-fun b!205417 () Bool)

(assert (=> b!205417 (= e!126325 (BalanceConc!2069 Empty!1030))))

(declare-fun bm!9931 () Bool)

(declare-fun c!39437 () Bool)

(assert (=> bm!9931 (= c!39437 c!39436)))

(assert (=> bm!9931 (= call!9932 (++!801 e!126329 (ite c!39436 lt!73987 call!9933)))))

(declare-fun b!205418 () Bool)

(assert (=> b!205418 (= e!126327 (BalanceConc!2069 Empty!1030))))

(assert (=> b!205418 (= (print!221 thiss!17480 (singletonSeq!156 call!9934)) (printTailRec!184 thiss!17480 (singletonSeq!156 call!9934) 0 (BalanceConc!2069 Empty!1030)))))

(declare-fun lt!73979 () Unit!3303)

(declare-fun Unit!3316 () Unit!3303)

(assert (=> b!205418 (= lt!73979 Unit!3316)))

(declare-fun lt!73989 () Unit!3303)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!65 (LexerInterface!490 List!3281 List!3280 List!3280) Unit!3303)

(assert (=> b!205418 (= lt!73989 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!65 thiss!17480 rules!1920 (list!1218 call!9933) (list!1218 lt!73987)))))

(assert (=> b!205418 false))

(declare-fun lt!73978 () Unit!3303)

(declare-fun Unit!3317 () Unit!3303)

(assert (=> b!205418 (= lt!73978 Unit!3317)))

(declare-fun b!205419 () Bool)

(assert (=> b!205419 (= c!39435 e!126328)))

(declare-fun res!94129 () Bool)

(assert (=> b!205419 (=> (not res!94129) (not e!126328))))

(assert (=> b!205419 (= res!94129 (is-Some!503 lt!73983))))

(assert (=> b!205419 (= e!126330 e!126327)))

(assert (=> b!205420 (= e!126325 e!126330)))

(declare-fun lt!73981 () List!3282)

(assert (=> b!205420 (= lt!73981 (list!1220 lt!73568))))

(declare-fun lt!73990 () Unit!3303)

(assert (=> b!205420 (= lt!73990 (lemmaDropApply!157 lt!73981 0))))

(assert (=> b!205420 (= (head!703 (drop!170 lt!73981 0)) (apply!536 lt!73981 0))))

(declare-fun lt!73985 () Unit!3303)

(assert (=> b!205420 (= lt!73985 lt!73990)))

(declare-fun lt!73988 () List!3282)

(assert (=> b!205420 (= lt!73988 (list!1220 lt!73568))))

(declare-fun lt!73986 () Unit!3303)

(assert (=> b!205420 (= lt!73986 (lemmaDropTail!149 lt!73988 0))))

(assert (=> b!205420 (= (tail!400 (drop!170 lt!73988 0)) (drop!170 lt!73988 (+ 0 1)))))

(declare-fun lt!73977 () Unit!3303)

(assert (=> b!205420 (= lt!73977 lt!73986)))

(declare-fun lt!73982 () Unit!3303)

(assert (=> b!205420 (= lt!73982 (forallContained!171 (list!1220 lt!73568) lambda!6269 (apply!533 lt!73568 0)))))

(assert (=> b!205420 (= lt!73987 (printWithSeparatorTokenWhenNeededRec!173 thiss!17480 rules!1920 lt!73568 separatorToken!170 (+ 0 1)))))

(assert (=> b!205420 (= lt!73983 (maxPrefixZipperSequence!183 thiss!17480 rules!1920 (++!801 (charsOf!259 (apply!533 lt!73568 0)) lt!73987)))))

(declare-fun res!94128 () Bool)

(assert (=> b!205420 (= res!94128 (is-Some!503 lt!73983))))

(assert (=> b!205420 (=> (not res!94128) (not e!126324))))

(assert (=> b!205420 (= c!39436 e!126324)))

(assert (= (and d!54326 res!94127) b!205414))

(assert (= (and d!54326 c!39438) b!205417))

(assert (= (and d!54326 (not c!39438)) b!205420))

(assert (= (and b!205420 res!94128) b!205413))

(assert (= (and b!205420 c!39436) b!205412))

(assert (= (and b!205420 (not c!39436)) b!205419))

(assert (= (and b!205419 res!94129) b!205410))

(assert (= (and b!205419 c!39435) b!205411))

(assert (= (and b!205419 (not c!39435)) b!205418))

(assert (= (or b!205411 b!205418) bm!9927))

(assert (= (or b!205411 b!205418) bm!9928))

(assert (= (or b!205412 b!205410 bm!9927) bm!9929))

(assert (= (or b!205412 bm!9928) bm!9930))

(assert (= (or b!205412 b!205411) bm!9931))

(assert (= (and bm!9931 c!39437) b!205415))

(assert (= (and bm!9931 (not c!39437)) b!205416))

(declare-fun m!226221 () Bool)

(assert (=> b!205420 m!226221))

(declare-fun m!226223 () Bool)

(assert (=> b!205420 m!226223))

(declare-fun m!226225 () Bool)

(assert (=> b!205420 m!226225))

(declare-fun m!226227 () Bool)

(assert (=> b!205420 m!226227))

(declare-fun m!226229 () Bool)

(assert (=> b!205420 m!226229))

(declare-fun m!226231 () Bool)

(assert (=> b!205420 m!226231))

(assert (=> b!205420 m!226225))

(declare-fun m!226233 () Bool)

(assert (=> b!205420 m!226233))

(assert (=> b!205420 m!226229))

(assert (=> b!205420 m!226223))

(assert (=> b!205420 m!226229))

(declare-fun m!226235 () Bool)

(assert (=> b!205420 m!226235))

(declare-fun m!226237 () Bool)

(assert (=> b!205420 m!226237))

(declare-fun m!226239 () Bool)

(assert (=> b!205420 m!226239))

(declare-fun m!226241 () Bool)

(assert (=> b!205420 m!226241))

(assert (=> b!205420 m!226237))

(declare-fun m!226243 () Bool)

(assert (=> b!205420 m!226243))

(declare-fun m!226245 () Bool)

(assert (=> b!205420 m!226245))

(assert (=> b!205420 m!226245))

(declare-fun m!226247 () Bool)

(assert (=> b!205420 m!226247))

(assert (=> b!205420 m!226227))

(declare-fun m!226249 () Bool)

(assert (=> b!205420 m!226249))

(assert (=> bm!9929 m!226229))

(declare-fun m!226251 () Bool)

(assert (=> bm!9931 m!226251))

(declare-fun m!226253 () Bool)

(assert (=> b!205414 m!226253))

(declare-fun m!226255 () Bool)

(assert (=> bm!9930 m!226255))

(assert (=> b!205413 m!226229))

(declare-fun m!226257 () Bool)

(assert (=> b!205411 m!226257))

(declare-fun m!226259 () Bool)

(assert (=> b!205416 m!226259))

(declare-fun m!226261 () Bool)

(assert (=> d!54326 m!226261))

(assert (=> d!54326 m!226261))

(declare-fun m!226263 () Bool)

(assert (=> d!54326 m!226263))

(assert (=> d!54326 m!226227))

(declare-fun m!226265 () Bool)

(assert (=> d!54326 m!226265))

(assert (=> d!54326 m!226253))

(assert (=> d!54326 m!226227))

(assert (=> d!54326 m!226261))

(declare-fun m!226267 () Bool)

(assert (=> d!54326 m!226267))

(declare-fun m!226269 () Bool)

(assert (=> b!205418 m!226269))

(declare-fun m!226271 () Bool)

(assert (=> b!205418 m!226271))

(declare-fun m!226273 () Bool)

(assert (=> b!205418 m!226273))

(declare-fun m!226275 () Bool)

(assert (=> b!205418 m!226275))

(assert (=> b!205418 m!226273))

(declare-fun m!226277 () Bool)

(assert (=> b!205418 m!226277))

(assert (=> b!205418 m!226269))

(assert (=> b!205418 m!226269))

(declare-fun m!226279 () Bool)

(assert (=> b!205418 m!226279))

(assert (=> b!205418 m!226275))

(assert (=> b!204731 d!54326))

(declare-fun bs!20911 () Bool)

(declare-fun b!205479 () Bool)

(assert (= bs!20911 (and b!205479 b!204758)))

(declare-fun lambda!6272 () Int)

(assert (=> bs!20911 (not (= lambda!6272 lambda!6249))))

(declare-fun bs!20912 () Bool)

(assert (= bs!20912 (and b!205479 b!204727)))

(assert (=> bs!20912 (= lambda!6272 lambda!6250)))

(declare-fun bs!20913 () Bool)

(assert (= bs!20913 (and b!205479 d!54326)))

(assert (=> bs!20913 (not (= lambda!6272 lambda!6268))))

(declare-fun bs!20914 () Bool)

(assert (= bs!20914 (and b!205479 b!205420)))

(assert (=> bs!20914 (= lambda!6272 lambda!6269)))

(declare-fun b!205485 () Bool)

(declare-fun e!126372 () Bool)

(assert (=> b!205485 (= e!126372 true)))

(declare-fun b!205484 () Bool)

(declare-fun e!126371 () Bool)

(assert (=> b!205484 (= e!126371 e!126372)))

(declare-fun b!205483 () Bool)

(declare-fun e!126370 () Bool)

(assert (=> b!205483 (= e!126370 e!126371)))

(assert (=> b!205479 e!126370))

(assert (= b!205484 b!205485))

(assert (= b!205483 b!205484))

(assert (= (and b!205479 (is-Cons!3271 rules!1920)) b!205483))

(assert (=> b!205485 (< (dynLambda!1436 order!2123 (toValue!1287 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6272))))

(assert (=> b!205485 (< (dynLambda!1438 order!2127 (toChars!1146 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6272))))

(assert (=> b!205479 true))

(declare-fun call!9948 () BalanceConc!2068)

(declare-fun c!39451 () Bool)

(declare-fun bm!9942 () Bool)

(declare-fun call!9951 () BalanceConc!2068)

(declare-fun call!9947 () List!3280)

(assert (=> bm!9942 (= call!9947 (list!1218 (ite c!39451 call!9951 call!9948)))))

(declare-fun b!205475 () Bool)

(declare-fun e!126368 () BalanceConc!2068)

(assert (=> b!205475 (= e!126368 (charsOf!259 separatorToken!170))))

(declare-fun b!205476 () Bool)

(declare-fun e!126367 () List!3280)

(assert (=> b!205476 (= e!126367 Nil!3270)))

(declare-fun b!205477 () Bool)

(declare-fun e!126366 () List!3280)

(declare-fun call!9949 () List!3280)

(declare-fun lt!74033 () List!3280)

(assert (=> b!205477 (= e!126366 (++!799 call!9949 lt!74033))))

(declare-fun b!205478 () Bool)

(assert (=> b!205478 (= e!126368 call!9948)))

(declare-fun e!126369 () List!3280)

(assert (=> b!205479 (= e!126367 e!126369)))

(declare-fun lt!74037 () Unit!3303)

(assert (=> b!205479 (= lt!74037 (forallContained!171 tokens!465 lambda!6272 (h!8669 tokens!465)))))

(assert (=> b!205479 (= lt!74033 (printWithSeparatorTokenWhenNeededList!183 thiss!17480 rules!1920 (t!30904 tokens!465) separatorToken!170))))

(declare-fun lt!74036 () Option!505)

(assert (=> b!205479 (= lt!74036 (maxPrefix!220 thiss!17480 rules!1920 (++!799 (list!1218 (charsOf!259 (h!8669 tokens!465))) lt!74033)))))

(assert (=> b!205479 (= c!39451 (and (is-Some!504 lt!74036) (= (_1!1922 (v!14055 lt!74036)) (h!8669 tokens!465))))))

(declare-fun b!205480 () Bool)

(assert (=> b!205480 (= e!126366 Nil!3270)))

(assert (=> b!205480 (= (print!221 thiss!17480 (singletonSeq!156 (h!8669 tokens!465))) (printTailRec!184 thiss!17480 (singletonSeq!156 (h!8669 tokens!465)) 0 (BalanceConc!2069 Empty!1030)))))

(declare-fun lt!74038 () Unit!3303)

(declare-fun Unit!3318 () Unit!3303)

(assert (=> b!205480 (= lt!74038 Unit!3318)))

(declare-fun lt!74034 () Unit!3303)

(declare-fun call!9950 () List!3280)

(assert (=> b!205480 (= lt!74034 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!65 thiss!17480 rules!1920 call!9950 lt!74033))))

(assert (=> b!205480 false))

(declare-fun lt!74035 () Unit!3303)

(declare-fun Unit!3319 () Unit!3303)

(assert (=> b!205480 (= lt!74035 Unit!3319)))

(declare-fun bm!9943 () Bool)

(assert (=> bm!9943 (= call!9948 call!9951)))

(declare-fun bm!9944 () Bool)

(assert (=> bm!9944 (= call!9949 (++!799 call!9947 (ite c!39451 lt!74033 call!9950)))))

(declare-fun bm!9945 () Bool)

(assert (=> bm!9945 (= call!9951 (charsOf!259 (h!8669 tokens!465)))))

(declare-fun bm!9946 () Bool)

(assert (=> bm!9946 (= call!9950 (list!1218 e!126368))))

(declare-fun c!39452 () Bool)

(declare-fun c!39449 () Bool)

(assert (=> bm!9946 (= c!39452 c!39449)))

(declare-fun b!205481 () Bool)

(assert (=> b!205481 (= c!39449 (and (is-Some!504 lt!74036) (not (= (_1!1922 (v!14055 lt!74036)) (h!8669 tokens!465)))))))

(assert (=> b!205481 (= e!126369 e!126366)))

(declare-fun b!205482 () Bool)

(assert (=> b!205482 (= e!126369 call!9949)))

(declare-fun d!54352 () Bool)

(declare-fun c!39450 () Bool)

(assert (=> d!54352 (= c!39450 (is-Cons!3272 tokens!465))))

(assert (=> d!54352 (= (printWithSeparatorTokenWhenNeededList!183 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!126367)))

(assert (= (and d!54352 c!39450) b!205479))

(assert (= (and d!54352 (not c!39450)) b!205476))

(assert (= (and b!205479 c!39451) b!205482))

(assert (= (and b!205479 (not c!39451)) b!205481))

(assert (= (and b!205481 c!39449) b!205477))

(assert (= (and b!205481 (not c!39449)) b!205480))

(assert (= (or b!205477 b!205480) bm!9943))

(assert (= (or b!205477 b!205480) bm!9946))

(assert (= (and bm!9946 c!39452) b!205475))

(assert (= (and bm!9946 (not c!39452)) b!205478))

(assert (= (or b!205482 bm!9943) bm!9945))

(assert (= (or b!205482 b!205477) bm!9942))

(assert (= (or b!205482 b!205477) bm!9944))

(assert (=> bm!9945 m!225269))

(assert (=> b!205480 m!225115))

(assert (=> b!205480 m!225115))

(declare-fun m!226395 () Bool)

(assert (=> b!205480 m!226395))

(assert (=> b!205480 m!225115))

(declare-fun m!226397 () Bool)

(assert (=> b!205480 m!226397))

(declare-fun m!226399 () Bool)

(assert (=> b!205480 m!226399))

(declare-fun m!226401 () Bool)

(assert (=> bm!9944 m!226401))

(declare-fun m!226403 () Bool)

(assert (=> b!205477 m!226403))

(assert (=> b!205479 m!225255))

(declare-fun m!226405 () Bool)

(assert (=> b!205479 m!226405))

(declare-fun m!226407 () Bool)

(assert (=> b!205479 m!226407))

(assert (=> b!205479 m!225269))

(assert (=> b!205479 m!225273))

(assert (=> b!205479 m!225269))

(declare-fun m!226409 () Bool)

(assert (=> b!205479 m!226409))

(assert (=> b!205479 m!225273))

(assert (=> b!205479 m!226405))

(declare-fun m!226411 () Bool)

(assert (=> bm!9942 m!226411))

(declare-fun m!226413 () Bool)

(assert (=> bm!9946 m!226413))

(assert (=> b!205475 m!225257))

(assert (=> b!204731 d!54352))

(declare-fun d!54374 () Bool)

(assert (=> d!54374 (= (++!799 (++!799 lt!73576 lt!73597) lt!73588) (++!799 lt!73576 (++!799 lt!73597 lt!73588)))))

(declare-fun lt!74041 () Unit!3303)

(declare-fun choose!2030 (List!3280 List!3280 List!3280) Unit!3303)

(assert (=> d!54374 (= lt!74041 (choose!2030 lt!73576 lt!73597 lt!73588))))

(assert (=> d!54374 (= (lemmaConcatAssociativity!299 lt!73576 lt!73597 lt!73588) lt!74041)))

(declare-fun bs!20915 () Bool)

(assert (= bs!20915 d!54374))

(assert (=> bs!20915 m!225261))

(declare-fun m!226415 () Bool)

(assert (=> bs!20915 m!226415))

(assert (=> bs!20915 m!225263))

(assert (=> bs!20915 m!225265))

(assert (=> bs!20915 m!225261))

(declare-fun m!226417 () Bool)

(assert (=> bs!20915 m!226417))

(assert (=> bs!20915 m!225263))

(assert (=> b!204751 d!54374))

(declare-fun d!54376 () Bool)

(declare-fun fromListB!224 (List!3282) BalanceConc!2070)

(assert (=> d!54376 (= (seqFromList!586 (t!30904 tokens!465)) (fromListB!224 (t!30904 tokens!465)))))

(declare-fun bs!20916 () Bool)

(assert (= bs!20916 d!54376))

(declare-fun m!226419 () Bool)

(assert (=> bs!20916 m!226419))

(assert (=> b!204751 d!54376))

(declare-fun b!205494 () Bool)

(declare-fun e!126378 () List!3280)

(assert (=> b!205494 (= e!126378 lt!73602)))

(declare-fun b!205495 () Bool)

(assert (=> b!205495 (= e!126378 (Cons!3270 (h!8667 lt!73576) (++!799 (t!30902 lt!73576) lt!73602)))))

(declare-fun b!205497 () Bool)

(declare-fun e!126377 () Bool)

(declare-fun lt!74044 () List!3280)

(assert (=> b!205497 (= e!126377 (or (not (= lt!73602 Nil!3270)) (= lt!74044 lt!73576)))))

(declare-fun b!205496 () Bool)

(declare-fun res!94166 () Bool)

(assert (=> b!205496 (=> (not res!94166) (not e!126377))))

(assert (=> b!205496 (= res!94166 (= (size!2626 lt!74044) (+ (size!2626 lt!73576) (size!2626 lt!73602))))))

(declare-fun d!54378 () Bool)

(assert (=> d!54378 e!126377))

(declare-fun res!94165 () Bool)

(assert (=> d!54378 (=> (not res!94165) (not e!126377))))

(assert (=> d!54378 (= res!94165 (= (content!448 lt!74044) (set.union (content!448 lt!73576) (content!448 lt!73602))))))

(assert (=> d!54378 (= lt!74044 e!126378)))

(declare-fun c!39455 () Bool)

(assert (=> d!54378 (= c!39455 (is-Nil!3270 lt!73576))))

(assert (=> d!54378 (= (++!799 lt!73576 lt!73602) lt!74044)))

(assert (= (and d!54378 c!39455) b!205494))

(assert (= (and d!54378 (not c!39455)) b!205495))

(assert (= (and d!54378 res!94165) b!205496))

(assert (= (and b!205496 res!94166) b!205497))

(declare-fun m!226421 () Bool)

(assert (=> b!205495 m!226421))

(declare-fun m!226423 () Bool)

(assert (=> b!205496 m!226423))

(assert (=> b!205496 m!225667))

(assert (=> b!205496 m!225547))

(declare-fun m!226425 () Bool)

(assert (=> d!54378 m!226425))

(declare-fun m!226427 () Bool)

(assert (=> d!54378 m!226427))

(declare-fun m!226429 () Bool)

(assert (=> d!54378 m!226429))

(assert (=> b!204751 d!54378))

(declare-fun d!54380 () Bool)

(assert (=> d!54380 (= (list!1218 (charsOf!259 separatorToken!170)) (list!1221 (c!39309 (charsOf!259 separatorToken!170))))))

(declare-fun bs!20917 () Bool)

(assert (= bs!20917 d!54380))

(declare-fun m!226431 () Bool)

(assert (=> bs!20917 m!226431))

(assert (=> b!204751 d!54380))

(declare-fun d!54382 () Bool)

(assert (=> d!54382 (= (list!1218 (printWithSeparatorTokenWhenNeededRec!173 thiss!17480 rules!1920 (seqFromList!586 (t!30904 tokens!465)) separatorToken!170 0)) (list!1221 (c!39309 (printWithSeparatorTokenWhenNeededRec!173 thiss!17480 rules!1920 (seqFromList!586 (t!30904 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!20918 () Bool)

(assert (= bs!20918 d!54382))

(declare-fun m!226433 () Bool)

(assert (=> bs!20918 m!226433))

(assert (=> b!204751 d!54382))

(declare-fun bs!20919 () Bool)

(declare-fun b!205502 () Bool)

(assert (= bs!20919 (and b!205502 d!54326)))

(declare-fun lambda!6273 () Int)

(assert (=> bs!20919 (not (= lambda!6273 lambda!6268))))

(declare-fun bs!20920 () Bool)

(assert (= bs!20920 (and b!205502 b!204758)))

(assert (=> bs!20920 (not (= lambda!6273 lambda!6249))))

(declare-fun bs!20921 () Bool)

(assert (= bs!20921 (and b!205502 b!205420)))

(assert (=> bs!20921 (= lambda!6273 lambda!6269)))

(declare-fun bs!20922 () Bool)

(assert (= bs!20922 (and b!205502 b!204727)))

(assert (=> bs!20922 (= lambda!6273 lambda!6250)))

(declare-fun bs!20923 () Bool)

(assert (= bs!20923 (and b!205502 b!205479)))

(assert (=> bs!20923 (= lambda!6273 lambda!6272)))

(declare-fun b!205508 () Bool)

(declare-fun e!126385 () Bool)

(assert (=> b!205508 (= e!126385 true)))

(declare-fun b!205507 () Bool)

(declare-fun e!126384 () Bool)

(assert (=> b!205507 (= e!126384 e!126385)))

(declare-fun b!205506 () Bool)

(declare-fun e!126383 () Bool)

(assert (=> b!205506 (= e!126383 e!126384)))

(assert (=> b!205502 e!126383))

(assert (= b!205507 b!205508))

(assert (= b!205506 b!205507))

(assert (= (and b!205502 (is-Cons!3271 rules!1920)) b!205506))

(assert (=> b!205508 (< (dynLambda!1436 order!2123 (toValue!1287 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6273))))

(assert (=> b!205508 (< (dynLambda!1438 order!2127 (toChars!1146 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6273))))

(assert (=> b!205502 true))

(declare-fun c!39458 () Bool)

(declare-fun call!9953 () BalanceConc!2068)

(declare-fun call!9956 () BalanceConc!2068)

(declare-fun call!9952 () List!3280)

(declare-fun bm!9947 () Bool)

(assert (=> bm!9947 (= call!9952 (list!1218 (ite c!39458 call!9956 call!9953)))))

(declare-fun b!205498 () Bool)

(declare-fun e!126381 () BalanceConc!2068)

(assert (=> b!205498 (= e!126381 (charsOf!259 separatorToken!170))))

(declare-fun b!205499 () Bool)

(declare-fun e!126380 () List!3280)

(assert (=> b!205499 (= e!126380 Nil!3270)))

(declare-fun b!205500 () Bool)

(declare-fun e!126379 () List!3280)

(declare-fun call!9954 () List!3280)

(declare-fun lt!74045 () List!3280)

(assert (=> b!205500 (= e!126379 (++!799 call!9954 lt!74045))))

(declare-fun b!205501 () Bool)

(assert (=> b!205501 (= e!126381 call!9953)))

(declare-fun e!126382 () List!3280)

(assert (=> b!205502 (= e!126380 e!126382)))

(declare-fun lt!74049 () Unit!3303)

(assert (=> b!205502 (= lt!74049 (forallContained!171 (t!30904 tokens!465) lambda!6273 (h!8669 (t!30904 tokens!465))))))

(assert (=> b!205502 (= lt!74045 (printWithSeparatorTokenWhenNeededList!183 thiss!17480 rules!1920 (t!30904 (t!30904 tokens!465)) separatorToken!170))))

(declare-fun lt!74048 () Option!505)

(assert (=> b!205502 (= lt!74048 (maxPrefix!220 thiss!17480 rules!1920 (++!799 (list!1218 (charsOf!259 (h!8669 (t!30904 tokens!465)))) lt!74045)))))

(assert (=> b!205502 (= c!39458 (and (is-Some!504 lt!74048) (= (_1!1922 (v!14055 lt!74048)) (h!8669 (t!30904 tokens!465)))))))

(declare-fun b!205503 () Bool)

(assert (=> b!205503 (= e!126379 Nil!3270)))

(assert (=> b!205503 (= (print!221 thiss!17480 (singletonSeq!156 (h!8669 (t!30904 tokens!465)))) (printTailRec!184 thiss!17480 (singletonSeq!156 (h!8669 (t!30904 tokens!465))) 0 (BalanceConc!2069 Empty!1030)))))

(declare-fun lt!74050 () Unit!3303)

(declare-fun Unit!3320 () Unit!3303)

(assert (=> b!205503 (= lt!74050 Unit!3320)))

(declare-fun lt!74046 () Unit!3303)

(declare-fun call!9955 () List!3280)

(assert (=> b!205503 (= lt!74046 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!65 thiss!17480 rules!1920 call!9955 lt!74045))))

(assert (=> b!205503 false))

(declare-fun lt!74047 () Unit!3303)

(declare-fun Unit!3321 () Unit!3303)

(assert (=> b!205503 (= lt!74047 Unit!3321)))

(declare-fun bm!9948 () Bool)

(assert (=> bm!9948 (= call!9953 call!9956)))

(declare-fun bm!9949 () Bool)

(assert (=> bm!9949 (= call!9954 (++!799 call!9952 (ite c!39458 lt!74045 call!9955)))))

(declare-fun bm!9950 () Bool)

(assert (=> bm!9950 (= call!9956 (charsOf!259 (h!8669 (t!30904 tokens!465))))))

(declare-fun bm!9951 () Bool)

(assert (=> bm!9951 (= call!9955 (list!1218 e!126381))))

(declare-fun c!39459 () Bool)

(declare-fun c!39456 () Bool)

(assert (=> bm!9951 (= c!39459 c!39456)))

(declare-fun b!205504 () Bool)

(assert (=> b!205504 (= c!39456 (and (is-Some!504 lt!74048) (not (= (_1!1922 (v!14055 lt!74048)) (h!8669 (t!30904 tokens!465))))))))

(assert (=> b!205504 (= e!126382 e!126379)))

(declare-fun b!205505 () Bool)

(assert (=> b!205505 (= e!126382 call!9954)))

(declare-fun d!54384 () Bool)

(declare-fun c!39457 () Bool)

(assert (=> d!54384 (= c!39457 (is-Cons!3272 (t!30904 tokens!465)))))

(assert (=> d!54384 (= (printWithSeparatorTokenWhenNeededList!183 thiss!17480 rules!1920 (t!30904 tokens!465) separatorToken!170) e!126380)))

(assert (= (and d!54384 c!39457) b!205502))

(assert (= (and d!54384 (not c!39457)) b!205499))

(assert (= (and b!205502 c!39458) b!205505))

(assert (= (and b!205502 (not c!39458)) b!205504))

(assert (= (and b!205504 c!39456) b!205500))

(assert (= (and b!205504 (not c!39456)) b!205503))

(assert (= (or b!205500 b!205503) bm!9948))

(assert (= (or b!205500 b!205503) bm!9951))

(assert (= (and bm!9951 c!39459) b!205498))

(assert (= (and bm!9951 (not c!39459)) b!205501))

(assert (= (or b!205505 bm!9948) bm!9950))

(assert (= (or b!205505 b!205500) bm!9947))

(assert (= (or b!205505 b!205500) bm!9949))

(declare-fun m!226435 () Bool)

(assert (=> bm!9950 m!226435))

(declare-fun m!226437 () Bool)

(assert (=> b!205503 m!226437))

(assert (=> b!205503 m!226437))

(declare-fun m!226439 () Bool)

(assert (=> b!205503 m!226439))

(assert (=> b!205503 m!226437))

(declare-fun m!226441 () Bool)

(assert (=> b!205503 m!226441))

(declare-fun m!226443 () Bool)

(assert (=> b!205503 m!226443))

(declare-fun m!226445 () Bool)

(assert (=> bm!9949 m!226445))

(declare-fun m!226447 () Bool)

(assert (=> b!205500 m!226447))

(declare-fun m!226449 () Bool)

(assert (=> b!205502 m!226449))

(declare-fun m!226451 () Bool)

(assert (=> b!205502 m!226451))

(declare-fun m!226453 () Bool)

(assert (=> b!205502 m!226453))

(assert (=> b!205502 m!226435))

(declare-fun m!226455 () Bool)

(assert (=> b!205502 m!226455))

(assert (=> b!205502 m!226435))

(declare-fun m!226457 () Bool)

(assert (=> b!205502 m!226457))

(assert (=> b!205502 m!226455))

(assert (=> b!205502 m!226451))

(declare-fun m!226459 () Bool)

(assert (=> bm!9947 m!226459))

(declare-fun m!226461 () Bool)

(assert (=> bm!9951 m!226461))

(assert (=> b!205498 m!225257))

(assert (=> b!204751 d!54384))

(declare-fun bs!20924 () Bool)

(declare-fun d!54386 () Bool)

(assert (= bs!20924 (and d!54386 d!54326)))

(declare-fun lambda!6274 () Int)

(assert (=> bs!20924 (= lambda!6274 lambda!6268)))

(declare-fun bs!20925 () Bool)

(assert (= bs!20925 (and d!54386 b!204758)))

(assert (=> bs!20925 (= lambda!6274 lambda!6249)))

(declare-fun bs!20926 () Bool)

(assert (= bs!20926 (and d!54386 b!205420)))

(assert (=> bs!20926 (not (= lambda!6274 lambda!6269))))

(declare-fun bs!20927 () Bool)

(assert (= bs!20927 (and d!54386 b!204727)))

(assert (=> bs!20927 (not (= lambda!6274 lambda!6250))))

(declare-fun bs!20928 () Bool)

(assert (= bs!20928 (and d!54386 b!205479)))

(assert (=> bs!20928 (not (= lambda!6274 lambda!6272))))

(declare-fun bs!20929 () Bool)

(assert (= bs!20929 (and d!54386 b!205502)))

(assert (=> bs!20929 (not (= lambda!6274 lambda!6273))))

(declare-fun bs!20930 () Bool)

(declare-fun b!205519 () Bool)

(assert (= bs!20930 (and b!205519 d!54326)))

(declare-fun lambda!6275 () Int)

(assert (=> bs!20930 (not (= lambda!6275 lambda!6268))))

(declare-fun bs!20931 () Bool)

(assert (= bs!20931 (and b!205519 b!204758)))

(assert (=> bs!20931 (not (= lambda!6275 lambda!6249))))

(declare-fun bs!20932 () Bool)

(assert (= bs!20932 (and b!205519 d!54386)))

(assert (=> bs!20932 (not (= lambda!6275 lambda!6274))))

(declare-fun bs!20933 () Bool)

(assert (= bs!20933 (and b!205519 b!205420)))

(assert (=> bs!20933 (= lambda!6275 lambda!6269)))

(declare-fun bs!20934 () Bool)

(assert (= bs!20934 (and b!205519 b!204727)))

(assert (=> bs!20934 (= lambda!6275 lambda!6250)))

(declare-fun bs!20935 () Bool)

(assert (= bs!20935 (and b!205519 b!205479)))

(assert (=> bs!20935 (= lambda!6275 lambda!6272)))

(declare-fun bs!20936 () Bool)

(assert (= bs!20936 (and b!205519 b!205502)))

(assert (=> bs!20936 (= lambda!6275 lambda!6273)))

(declare-fun b!205522 () Bool)

(declare-fun e!126395 () Bool)

(assert (=> b!205522 (= e!126395 true)))

(declare-fun b!205521 () Bool)

(declare-fun e!126394 () Bool)

(assert (=> b!205521 (= e!126394 e!126395)))

(declare-fun b!205520 () Bool)

(declare-fun e!126393 () Bool)

(assert (=> b!205520 (= e!126393 e!126394)))

(assert (=> b!205519 e!126393))

(assert (= b!205521 b!205522))

(assert (= b!205520 b!205521))

(assert (= (and b!205519 (is-Cons!3271 rules!1920)) b!205520))

(assert (=> b!205522 (< (dynLambda!1436 order!2123 (toValue!1287 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6275))))

(assert (=> b!205522 (< (dynLambda!1438 order!2127 (toChars!1146 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6275))))

(assert (=> b!205519 true))

(declare-fun b!205509 () Bool)

(declare-fun e!126390 () Bool)

(declare-fun lt!74057 () Option!504)

(declare-fun call!9960 () Token!952)

(assert (=> b!205509 (= e!126390 (not (= (_1!1921 (v!14054 lt!74057)) call!9960)))))

(declare-fun b!205510 () Bool)

(declare-fun e!126389 () BalanceConc!2068)

(declare-fun call!9957 () BalanceConc!2068)

(declare-fun lt!74061 () BalanceConc!2068)

(assert (=> b!205510 (= e!126389 (++!801 call!9957 lt!74061))))

(declare-fun b!205511 () Bool)

(declare-fun e!126392 () BalanceConc!2068)

(assert (=> b!205511 (= e!126392 call!9957)))

(declare-fun b!205512 () Bool)

(declare-fun e!126386 () Bool)

(assert (=> b!205512 (= e!126386 (= (_1!1921 (v!14054 lt!74057)) (apply!533 (seqFromList!586 (t!30904 tokens!465)) 0)))))

(declare-fun b!205513 () Bool)

(declare-fun e!126388 () Bool)

(assert (=> b!205513 (= e!126388 (<= 0 (size!2623 (seqFromList!586 (t!30904 tokens!465)))))))

(declare-fun lt!74058 () BalanceConc!2068)

(assert (=> d!54386 (= (list!1218 lt!74058) (printWithSeparatorTokenWhenNeededList!183 thiss!17480 rules!1920 (dropList!117 (seqFromList!586 (t!30904 tokens!465)) 0) separatorToken!170))))

(declare-fun e!126387 () BalanceConc!2068)

(assert (=> d!54386 (= lt!74058 e!126387)))

(declare-fun c!39463 () Bool)

(assert (=> d!54386 (= c!39463 (>= 0 (size!2623 (seqFromList!586 (t!30904 tokens!465)))))))

(declare-fun lt!74054 () Unit!3303)

(assert (=> d!54386 (= lt!74054 (lemmaContentSubsetPreservesForall!61 (list!1220 (seqFromList!586 (t!30904 tokens!465))) (dropList!117 (seqFromList!586 (t!30904 tokens!465)) 0) lambda!6274))))

(assert (=> d!54386 e!126388))

(declare-fun res!94167 () Bool)

(assert (=> d!54386 (=> (not res!94167) (not e!126388))))

(assert (=> d!54386 (= res!94167 (>= 0 0))))

(assert (=> d!54386 (= (printWithSeparatorTokenWhenNeededRec!173 thiss!17480 rules!1920 (seqFromList!586 (t!30904 tokens!465)) separatorToken!170 0) lt!74058)))

(declare-fun bm!9952 () Bool)

(declare-fun call!9959 () Token!952)

(assert (=> bm!9952 (= call!9959 call!9960)))

(declare-fun b!205514 () Bool)

(declare-fun e!126391 () BalanceConc!2068)

(declare-fun call!9961 () BalanceConc!2068)

(assert (=> b!205514 (= e!126391 call!9961)))

(declare-fun bm!9953 () Bool)

(declare-fun call!9958 () BalanceConc!2068)

(assert (=> bm!9953 (= call!9958 call!9961)))

(declare-fun bm!9954 () Bool)

(assert (=> bm!9954 (= call!9960 (apply!533 (seqFromList!586 (t!30904 tokens!465)) 0))))

(declare-fun b!205515 () Bool)

(assert (=> b!205515 (= e!126391 (charsOf!259 call!9959))))

(declare-fun c!39460 () Bool)

(declare-fun bm!9955 () Bool)

(declare-fun c!39461 () Bool)

(assert (=> bm!9955 (= call!9961 (charsOf!259 (ite c!39461 call!9960 (ite c!39460 separatorToken!170 call!9959))))))

(declare-fun b!205516 () Bool)

(assert (=> b!205516 (= e!126387 (BalanceConc!2069 Empty!1030))))

(declare-fun bm!9956 () Bool)

(declare-fun c!39462 () Bool)

(assert (=> bm!9956 (= c!39462 c!39461)))

(assert (=> bm!9956 (= call!9957 (++!801 e!126391 (ite c!39461 lt!74061 call!9958)))))

(declare-fun b!205517 () Bool)

(assert (=> b!205517 (= e!126389 (BalanceConc!2069 Empty!1030))))

(assert (=> b!205517 (= (print!221 thiss!17480 (singletonSeq!156 call!9959)) (printTailRec!184 thiss!17480 (singletonSeq!156 call!9959) 0 (BalanceConc!2069 Empty!1030)))))

(declare-fun lt!74053 () Unit!3303)

(declare-fun Unit!3322 () Unit!3303)

(assert (=> b!205517 (= lt!74053 Unit!3322)))

(declare-fun lt!74063 () Unit!3303)

(assert (=> b!205517 (= lt!74063 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!65 thiss!17480 rules!1920 (list!1218 call!9958) (list!1218 lt!74061)))))

(assert (=> b!205517 false))

(declare-fun lt!74052 () Unit!3303)

(declare-fun Unit!3323 () Unit!3303)

(assert (=> b!205517 (= lt!74052 Unit!3323)))

(declare-fun b!205518 () Bool)

(assert (=> b!205518 (= c!39460 e!126390)))

(declare-fun res!94169 () Bool)

(assert (=> b!205518 (=> (not res!94169) (not e!126390))))

(assert (=> b!205518 (= res!94169 (is-Some!503 lt!74057))))

(assert (=> b!205518 (= e!126392 e!126389)))

(assert (=> b!205519 (= e!126387 e!126392)))

(declare-fun lt!74055 () List!3282)

(assert (=> b!205519 (= lt!74055 (list!1220 (seqFromList!586 (t!30904 tokens!465))))))

(declare-fun lt!74064 () Unit!3303)

(assert (=> b!205519 (= lt!74064 (lemmaDropApply!157 lt!74055 0))))

(assert (=> b!205519 (= (head!703 (drop!170 lt!74055 0)) (apply!536 lt!74055 0))))

(declare-fun lt!74059 () Unit!3303)

(assert (=> b!205519 (= lt!74059 lt!74064)))

(declare-fun lt!74062 () List!3282)

(assert (=> b!205519 (= lt!74062 (list!1220 (seqFromList!586 (t!30904 tokens!465))))))

(declare-fun lt!74060 () Unit!3303)

(assert (=> b!205519 (= lt!74060 (lemmaDropTail!149 lt!74062 0))))

(assert (=> b!205519 (= (tail!400 (drop!170 lt!74062 0)) (drop!170 lt!74062 (+ 0 1)))))

(declare-fun lt!74051 () Unit!3303)

(assert (=> b!205519 (= lt!74051 lt!74060)))

(declare-fun lt!74056 () Unit!3303)

(assert (=> b!205519 (= lt!74056 (forallContained!171 (list!1220 (seqFromList!586 (t!30904 tokens!465))) lambda!6275 (apply!533 (seqFromList!586 (t!30904 tokens!465)) 0)))))

(assert (=> b!205519 (= lt!74061 (printWithSeparatorTokenWhenNeededRec!173 thiss!17480 rules!1920 (seqFromList!586 (t!30904 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!205519 (= lt!74057 (maxPrefixZipperSequence!183 thiss!17480 rules!1920 (++!801 (charsOf!259 (apply!533 (seqFromList!586 (t!30904 tokens!465)) 0)) lt!74061)))))

(declare-fun res!94168 () Bool)

(assert (=> b!205519 (= res!94168 (is-Some!503 lt!74057))))

(assert (=> b!205519 (=> (not res!94168) (not e!126386))))

(assert (=> b!205519 (= c!39461 e!126386)))

(assert (= (and d!54386 res!94167) b!205513))

(assert (= (and d!54386 c!39463) b!205516))

(assert (= (and d!54386 (not c!39463)) b!205519))

(assert (= (and b!205519 res!94168) b!205512))

(assert (= (and b!205519 c!39461) b!205511))

(assert (= (and b!205519 (not c!39461)) b!205518))

(assert (= (and b!205518 res!94169) b!205509))

(assert (= (and b!205518 c!39460) b!205510))

(assert (= (and b!205518 (not c!39460)) b!205517))

(assert (= (or b!205510 b!205517) bm!9952))

(assert (= (or b!205510 b!205517) bm!9953))

(assert (= (or b!205511 b!205509 bm!9952) bm!9954))

(assert (= (or b!205511 bm!9953) bm!9955))

(assert (= (or b!205511 b!205510) bm!9956))

(assert (= (and bm!9956 c!39462) b!205514))

(assert (= (and bm!9956 (not c!39462)) b!205515))

(assert (=> b!205519 m!225251))

(declare-fun m!226463 () Bool)

(assert (=> b!205519 m!226463))

(declare-fun m!226465 () Bool)

(assert (=> b!205519 m!226465))

(declare-fun m!226467 () Bool)

(assert (=> b!205519 m!226467))

(declare-fun m!226469 () Bool)

(assert (=> b!205519 m!226469))

(declare-fun m!226471 () Bool)

(assert (=> b!205519 m!226471))

(declare-fun m!226473 () Bool)

(assert (=> b!205519 m!226473))

(assert (=> b!205519 m!226467))

(declare-fun m!226475 () Bool)

(assert (=> b!205519 m!226475))

(assert (=> b!205519 m!226471))

(assert (=> b!205519 m!226465))

(assert (=> b!205519 m!225251))

(assert (=> b!205519 m!226471))

(declare-fun m!226477 () Bool)

(assert (=> b!205519 m!226477))

(declare-fun m!226479 () Bool)

(assert (=> b!205519 m!226479))

(declare-fun m!226481 () Bool)

(assert (=> b!205519 m!226481))

(declare-fun m!226483 () Bool)

(assert (=> b!205519 m!226483))

(assert (=> b!205519 m!226479))

(declare-fun m!226485 () Bool)

(assert (=> b!205519 m!226485))

(declare-fun m!226487 () Bool)

(assert (=> b!205519 m!226487))

(assert (=> b!205519 m!226487))

(declare-fun m!226489 () Bool)

(assert (=> b!205519 m!226489))

(assert (=> b!205519 m!225251))

(assert (=> b!205519 m!226469))

(declare-fun m!226491 () Bool)

(assert (=> b!205519 m!226491))

(assert (=> bm!9954 m!225251))

(assert (=> bm!9954 m!226471))

(declare-fun m!226493 () Bool)

(assert (=> bm!9956 m!226493))

(assert (=> b!205513 m!225251))

(declare-fun m!226495 () Bool)

(assert (=> b!205513 m!226495))

(declare-fun m!226497 () Bool)

(assert (=> bm!9955 m!226497))

(assert (=> b!205512 m!225251))

(assert (=> b!205512 m!226471))

(declare-fun m!226499 () Bool)

(assert (=> b!205510 m!226499))

(declare-fun m!226501 () Bool)

(assert (=> b!205515 m!226501))

(assert (=> d!54386 m!225251))

(declare-fun m!226503 () Bool)

(assert (=> d!54386 m!226503))

(assert (=> d!54386 m!226503))

(declare-fun m!226505 () Bool)

(assert (=> d!54386 m!226505))

(assert (=> d!54386 m!225251))

(assert (=> d!54386 m!226469))

(declare-fun m!226507 () Bool)

(assert (=> d!54386 m!226507))

(assert (=> d!54386 m!225251))

(assert (=> d!54386 m!226495))

(assert (=> d!54386 m!226469))

(assert (=> d!54386 m!226503))

(declare-fun m!226509 () Bool)

(assert (=> d!54386 m!226509))

(declare-fun m!226511 () Bool)

(assert (=> b!205517 m!226511))

(declare-fun m!226513 () Bool)

(assert (=> b!205517 m!226513))

(declare-fun m!226515 () Bool)

(assert (=> b!205517 m!226515))

(declare-fun m!226517 () Bool)

(assert (=> b!205517 m!226517))

(assert (=> b!205517 m!226515))

(declare-fun m!226519 () Bool)

(assert (=> b!205517 m!226519))

(assert (=> b!205517 m!226511))

(assert (=> b!205517 m!226511))

(declare-fun m!226521 () Bool)

(assert (=> b!205517 m!226521))

(assert (=> b!205517 m!226517))

(assert (=> b!204751 d!54386))

(declare-fun d!54388 () Bool)

(declare-fun lt!74065 () BalanceConc!2068)

(assert (=> d!54388 (= (list!1218 lt!74065) (originalCharacters!647 separatorToken!170))))

(assert (=> d!54388 (= lt!74065 (dynLambda!1443 (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))) (value!21531 separatorToken!170)))))

(assert (=> d!54388 (= (charsOf!259 separatorToken!170) lt!74065)))

(declare-fun b_lambda!5307 () Bool)

(assert (=> (not b_lambda!5307) (not d!54388)))

(declare-fun tb!9495 () Bool)

(declare-fun t!30936 () Bool)

(assert (=> (and b!204757 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170)))) t!30936) tb!9495))

(declare-fun b!205523 () Bool)

(declare-fun e!126396 () Bool)

(declare-fun tp!90489 () Bool)

(assert (=> b!205523 (= e!126396 (and (inv!4118 (c!39309 (dynLambda!1443 (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))) (value!21531 separatorToken!170)))) tp!90489))))

(declare-fun result!12520 () Bool)

(assert (=> tb!9495 (= result!12520 (and (inv!4119 (dynLambda!1443 (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))) (value!21531 separatorToken!170))) e!126396))))

(assert (= tb!9495 b!205523))

(declare-fun m!226523 () Bool)

(assert (=> b!205523 m!226523))

(declare-fun m!226525 () Bool)

(assert (=> tb!9495 m!226525))

(assert (=> d!54388 t!30936))

(declare-fun b_and!14827 () Bool)

(assert (= b_and!14821 (and (=> t!30936 result!12520) b_and!14827)))

(declare-fun tb!9497 () Bool)

(declare-fun t!30938 () Bool)

(assert (=> (and b!204765 (= (toChars!1146 (transformation!604 (h!8668 rules!1920))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170)))) t!30938) tb!9497))

(declare-fun result!12522 () Bool)

(assert (= result!12522 result!12520))

(assert (=> d!54388 t!30938))

(declare-fun b_and!14829 () Bool)

(assert (= b_and!14823 (and (=> t!30938 result!12522) b_and!14829)))

(declare-fun t!30940 () Bool)

(declare-fun tb!9499 () Bool)

(assert (=> (and b!204725 (= (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170)))) t!30940) tb!9499))

(declare-fun result!12524 () Bool)

(assert (= result!12524 result!12520))

(assert (=> d!54388 t!30940))

(declare-fun b_and!14831 () Bool)

(assert (= b_and!14825 (and (=> t!30940 result!12524) b_and!14831)))

(declare-fun m!226527 () Bool)

(assert (=> d!54388 m!226527))

(declare-fun m!226529 () Bool)

(assert (=> d!54388 m!226529))

(assert (=> b!204751 d!54388))

(declare-fun b!205524 () Bool)

(declare-fun e!126398 () List!3280)

(assert (=> b!205524 (= e!126398 lt!73597)))

(declare-fun b!205525 () Bool)

(assert (=> b!205525 (= e!126398 (Cons!3270 (h!8667 lt!73576) (++!799 (t!30902 lt!73576) lt!73597)))))

(declare-fun e!126397 () Bool)

(declare-fun b!205527 () Bool)

(declare-fun lt!74066 () List!3280)

(assert (=> b!205527 (= e!126397 (or (not (= lt!73597 Nil!3270)) (= lt!74066 lt!73576)))))

(declare-fun b!205526 () Bool)

(declare-fun res!94171 () Bool)

(assert (=> b!205526 (=> (not res!94171) (not e!126397))))

(assert (=> b!205526 (= res!94171 (= (size!2626 lt!74066) (+ (size!2626 lt!73576) (size!2626 lt!73597))))))

(declare-fun d!54390 () Bool)

(assert (=> d!54390 e!126397))

(declare-fun res!94170 () Bool)

(assert (=> d!54390 (=> (not res!94170) (not e!126397))))

(assert (=> d!54390 (= res!94170 (= (content!448 lt!74066) (set.union (content!448 lt!73576) (content!448 lt!73597))))))

(assert (=> d!54390 (= lt!74066 e!126398)))

(declare-fun c!39464 () Bool)

(assert (=> d!54390 (= c!39464 (is-Nil!3270 lt!73576))))

(assert (=> d!54390 (= (++!799 lt!73576 lt!73597) lt!74066)))

(assert (= (and d!54390 c!39464) b!205524))

(assert (= (and d!54390 (not c!39464)) b!205525))

(assert (= (and d!54390 res!94170) b!205526))

(assert (= (and b!205526 res!94171) b!205527))

(declare-fun m!226531 () Bool)

(assert (=> b!205525 m!226531))

(declare-fun m!226533 () Bool)

(assert (=> b!205526 m!226533))

(assert (=> b!205526 m!225667))

(declare-fun m!226535 () Bool)

(assert (=> b!205526 m!226535))

(declare-fun m!226537 () Bool)

(assert (=> d!54390 m!226537))

(assert (=> d!54390 m!226427))

(declare-fun m!226539 () Bool)

(assert (=> d!54390 m!226539))

(assert (=> b!204751 d!54390))

(declare-fun b!205528 () Bool)

(declare-fun e!126400 () List!3280)

(assert (=> b!205528 (= e!126400 lt!73588)))

(declare-fun b!205529 () Bool)

(assert (=> b!205529 (= e!126400 (Cons!3270 (h!8667 lt!73597) (++!799 (t!30902 lt!73597) lt!73588)))))

(declare-fun e!126399 () Bool)

(declare-fun lt!74067 () List!3280)

(declare-fun b!205531 () Bool)

(assert (=> b!205531 (= e!126399 (or (not (= lt!73588 Nil!3270)) (= lt!74067 lt!73597)))))

(declare-fun b!205530 () Bool)

(declare-fun res!94173 () Bool)

(assert (=> b!205530 (=> (not res!94173) (not e!126399))))

(assert (=> b!205530 (= res!94173 (= (size!2626 lt!74067) (+ (size!2626 lt!73597) (size!2626 lt!73588))))))

(declare-fun d!54392 () Bool)

(assert (=> d!54392 e!126399))

(declare-fun res!94172 () Bool)

(assert (=> d!54392 (=> (not res!94172) (not e!126399))))

(assert (=> d!54392 (= res!94172 (= (content!448 lt!74067) (set.union (content!448 lt!73597) (content!448 lt!73588))))))

(assert (=> d!54392 (= lt!74067 e!126400)))

(declare-fun c!39465 () Bool)

(assert (=> d!54392 (= c!39465 (is-Nil!3270 lt!73597))))

(assert (=> d!54392 (= (++!799 lt!73597 lt!73588) lt!74067)))

(assert (= (and d!54392 c!39465) b!205528))

(assert (= (and d!54392 (not c!39465)) b!205529))

(assert (= (and d!54392 res!94172) b!205530))

(assert (= (and b!205530 res!94173) b!205531))

(declare-fun m!226541 () Bool)

(assert (=> b!205529 m!226541))

(declare-fun m!226543 () Bool)

(assert (=> b!205530 m!226543))

(assert (=> b!205530 m!226535))

(declare-fun m!226545 () Bool)

(assert (=> b!205530 m!226545))

(declare-fun m!226547 () Bool)

(assert (=> d!54392 m!226547))

(assert (=> d!54392 m!226539))

(declare-fun m!226549 () Bool)

(assert (=> d!54392 m!226549))

(assert (=> b!204751 d!54392))

(declare-fun d!54394 () Bool)

(declare-fun lt!74068 () BalanceConc!2068)

(assert (=> d!54394 (= (list!1218 lt!74068) (originalCharacters!647 (h!8669 tokens!465)))))

(assert (=> d!54394 (= lt!74068 (dynLambda!1443 (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))) (value!21531 (h!8669 tokens!465))))))

(assert (=> d!54394 (= (charsOf!259 (h!8669 tokens!465)) lt!74068)))

(declare-fun b_lambda!5309 () Bool)

(assert (=> (not b_lambda!5309) (not d!54394)))

(declare-fun t!30942 () Bool)

(declare-fun tb!9501 () Bool)

(assert (=> (and b!204757 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465))))) t!30942) tb!9501))

(declare-fun b!205532 () Bool)

(declare-fun e!126401 () Bool)

(declare-fun tp!90490 () Bool)

(assert (=> b!205532 (= e!126401 (and (inv!4118 (c!39309 (dynLambda!1443 (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))) (value!21531 (h!8669 tokens!465))))) tp!90490))))

(declare-fun result!12526 () Bool)

(assert (=> tb!9501 (= result!12526 (and (inv!4119 (dynLambda!1443 (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))) (value!21531 (h!8669 tokens!465)))) e!126401))))

(assert (= tb!9501 b!205532))

(declare-fun m!226551 () Bool)

(assert (=> b!205532 m!226551))

(declare-fun m!226553 () Bool)

(assert (=> tb!9501 m!226553))

(assert (=> d!54394 t!30942))

(declare-fun b_and!14833 () Bool)

(assert (= b_and!14827 (and (=> t!30942 result!12526) b_and!14833)))

(declare-fun t!30944 () Bool)

(declare-fun tb!9503 () Bool)

(assert (=> (and b!204765 (= (toChars!1146 (transformation!604 (h!8668 rules!1920))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465))))) t!30944) tb!9503))

(declare-fun result!12528 () Bool)

(assert (= result!12528 result!12526))

(assert (=> d!54394 t!30944))

(declare-fun b_and!14835 () Bool)

(assert (= b_and!14829 (and (=> t!30944 result!12528) b_and!14835)))

(declare-fun tb!9505 () Bool)

(declare-fun t!30946 () Bool)

(assert (=> (and b!204725 (= (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465))))) t!30946) tb!9505))

(declare-fun result!12530 () Bool)

(assert (= result!12530 result!12526))

(assert (=> d!54394 t!30946))

(declare-fun b_and!14837 () Bool)

(assert (= b_and!14831 (and (=> t!30946 result!12530) b_and!14837)))

(declare-fun m!226555 () Bool)

(assert (=> d!54394 m!226555))

(declare-fun m!226557 () Bool)

(assert (=> d!54394 m!226557))

(assert (=> b!204751 d!54394))

(declare-fun b!205533 () Bool)

(declare-fun e!126403 () List!3280)

(assert (=> b!205533 (= e!126403 lt!73588)))

(declare-fun b!205534 () Bool)

(assert (=> b!205534 (= e!126403 (Cons!3270 (h!8667 (++!799 lt!73576 lt!73597)) (++!799 (t!30902 (++!799 lt!73576 lt!73597)) lt!73588)))))

(declare-fun lt!74069 () List!3280)

(declare-fun b!205536 () Bool)

(declare-fun e!126402 () Bool)

(assert (=> b!205536 (= e!126402 (or (not (= lt!73588 Nil!3270)) (= lt!74069 (++!799 lt!73576 lt!73597))))))

(declare-fun b!205535 () Bool)

(declare-fun res!94175 () Bool)

(assert (=> b!205535 (=> (not res!94175) (not e!126402))))

(assert (=> b!205535 (= res!94175 (= (size!2626 lt!74069) (+ (size!2626 (++!799 lt!73576 lt!73597)) (size!2626 lt!73588))))))

(declare-fun d!54396 () Bool)

(assert (=> d!54396 e!126402))

(declare-fun res!94174 () Bool)

(assert (=> d!54396 (=> (not res!94174) (not e!126402))))

(assert (=> d!54396 (= res!94174 (= (content!448 lt!74069) (set.union (content!448 (++!799 lt!73576 lt!73597)) (content!448 lt!73588))))))

(assert (=> d!54396 (= lt!74069 e!126403)))

(declare-fun c!39466 () Bool)

(assert (=> d!54396 (= c!39466 (is-Nil!3270 (++!799 lt!73576 lt!73597)))))

(assert (=> d!54396 (= (++!799 (++!799 lt!73576 lt!73597) lt!73588) lt!74069)))

(assert (= (and d!54396 c!39466) b!205533))

(assert (= (and d!54396 (not c!39466)) b!205534))

(assert (= (and d!54396 res!94174) b!205535))

(assert (= (and b!205535 res!94175) b!205536))

(declare-fun m!226559 () Bool)

(assert (=> b!205534 m!226559))

(declare-fun m!226561 () Bool)

(assert (=> b!205535 m!226561))

(assert (=> b!205535 m!225263))

(declare-fun m!226563 () Bool)

(assert (=> b!205535 m!226563))

(assert (=> b!205535 m!226545))

(declare-fun m!226565 () Bool)

(assert (=> d!54396 m!226565))

(assert (=> d!54396 m!225263))

(declare-fun m!226567 () Bool)

(assert (=> d!54396 m!226567))

(assert (=> d!54396 m!226549))

(assert (=> b!204751 d!54396))

(declare-fun d!54398 () Bool)

(assert (=> d!54398 (= (list!1218 (charsOf!259 (h!8669 tokens!465))) (list!1221 (c!39309 (charsOf!259 (h!8669 tokens!465)))))))

(declare-fun bs!20937 () Bool)

(assert (= bs!20937 d!54398))

(declare-fun m!226569 () Bool)

(assert (=> bs!20937 m!226569))

(assert (=> b!204751 d!54398))

(declare-fun d!54400 () Bool)

(declare-fun lt!74072 () Bool)

(assert (=> d!54400 (= lt!74072 (isEmpty!1705 (list!1220 (_1!1920 (lex!290 thiss!17480 rules!1920 (seqFromList!585 lt!73576))))))))

(declare-fun isEmpty!1718 (Conc!1031) Bool)

(assert (=> d!54400 (= lt!74072 (isEmpty!1718 (c!39311 (_1!1920 (lex!290 thiss!17480 rules!1920 (seqFromList!585 lt!73576))))))))

(assert (=> d!54400 (= (isEmpty!1704 (_1!1920 (lex!290 thiss!17480 rules!1920 (seqFromList!585 lt!73576)))) lt!74072)))

(declare-fun bs!20938 () Bool)

(assert (= bs!20938 d!54400))

(declare-fun m!226571 () Bool)

(assert (=> bs!20938 m!226571))

(assert (=> bs!20938 m!226571))

(declare-fun m!226573 () Bool)

(assert (=> bs!20938 m!226573))

(declare-fun m!226575 () Bool)

(assert (=> bs!20938 m!226575))

(assert (=> b!204730 d!54400))

(declare-fun b!205537 () Bool)

(declare-fun e!126405 () Bool)

(declare-fun lt!74073 () tuple2!3408)

(assert (=> b!205537 (= e!126405 (not (isEmpty!1704 (_1!1920 lt!74073))))))

(declare-fun b!205538 () Bool)

(declare-fun res!94178 () Bool)

(declare-fun e!126404 () Bool)

(assert (=> b!205538 (=> (not res!94178) (not e!126404))))

(assert (=> b!205538 (= res!94178 (= (list!1220 (_1!1920 lt!74073)) (_1!1926 (lexList!142 thiss!17480 rules!1920 (list!1218 (seqFromList!585 lt!73576))))))))

(declare-fun d!54402 () Bool)

(assert (=> d!54402 e!126404))

(declare-fun res!94177 () Bool)

(assert (=> d!54402 (=> (not res!94177) (not e!126404))))

(declare-fun e!126406 () Bool)

(assert (=> d!54402 (= res!94177 e!126406)))

(declare-fun c!39467 () Bool)

(assert (=> d!54402 (= c!39467 (> (size!2623 (_1!1920 lt!74073)) 0))))

(assert (=> d!54402 (= lt!74073 (lexTailRecV2!129 thiss!17480 rules!1920 (seqFromList!585 lt!73576) (BalanceConc!2069 Empty!1030) (seqFromList!585 lt!73576) (BalanceConc!2071 Empty!1031)))))

(assert (=> d!54402 (= (lex!290 thiss!17480 rules!1920 (seqFromList!585 lt!73576)) lt!74073)))

(declare-fun b!205539 () Bool)

(assert (=> b!205539 (= e!126406 (= (_2!1920 lt!74073) (seqFromList!585 lt!73576)))))

(declare-fun b!205540 () Bool)

(assert (=> b!205540 (= e!126404 (= (list!1218 (_2!1920 lt!74073)) (_2!1926 (lexList!142 thiss!17480 rules!1920 (list!1218 (seqFromList!585 lt!73576))))))))

(declare-fun b!205541 () Bool)

(assert (=> b!205541 (= e!126406 e!126405)))

(declare-fun res!94176 () Bool)

(assert (=> b!205541 (= res!94176 (< (size!2629 (_2!1920 lt!74073)) (size!2629 (seqFromList!585 lt!73576))))))

(assert (=> b!205541 (=> (not res!94176) (not e!126405))))

(assert (= (and d!54402 c!39467) b!205541))

(assert (= (and d!54402 (not c!39467)) b!205539))

(assert (= (and b!205541 res!94176) b!205537))

(assert (= (and d!54402 res!94177) b!205538))

(assert (= (and b!205538 res!94178) b!205540))

(declare-fun m!226577 () Bool)

(assert (=> b!205538 m!226577))

(assert (=> b!205538 m!225119))

(declare-fun m!226579 () Bool)

(assert (=> b!205538 m!226579))

(assert (=> b!205538 m!226579))

(declare-fun m!226581 () Bool)

(assert (=> b!205538 m!226581))

(declare-fun m!226583 () Bool)

(assert (=> d!54402 m!226583))

(assert (=> d!54402 m!225119))

(assert (=> d!54402 m!225119))

(declare-fun m!226585 () Bool)

(assert (=> d!54402 m!226585))

(declare-fun m!226587 () Bool)

(assert (=> b!205537 m!226587))

(declare-fun m!226589 () Bool)

(assert (=> b!205540 m!226589))

(assert (=> b!205540 m!225119))

(assert (=> b!205540 m!226579))

(assert (=> b!205540 m!226579))

(assert (=> b!205540 m!226581))

(declare-fun m!226591 () Bool)

(assert (=> b!205541 m!226591))

(assert (=> b!205541 m!225119))

(declare-fun m!226593 () Bool)

(assert (=> b!205541 m!226593))

(assert (=> b!204730 d!54402))

(declare-fun d!54404 () Bool)

(declare-fun fromListB!225 (List!3280) BalanceConc!2068)

(assert (=> d!54404 (= (seqFromList!585 lt!73576) (fromListB!225 lt!73576))))

(declare-fun bs!20939 () Bool)

(assert (= bs!20939 d!54404))

(declare-fun m!226595 () Bool)

(assert (=> bs!20939 m!226595))

(assert (=> b!204730 d!54404))

(declare-fun d!54406 () Bool)

(declare-fun lt!74076 () Token!952)

(assert (=> d!54406 (= lt!74076 (apply!536 (list!1220 (_1!1920 lt!73587)) 0))))

(declare-fun apply!539 (Conc!1031 Int) Token!952)

(assert (=> d!54406 (= lt!74076 (apply!539 (c!39311 (_1!1920 lt!73587)) 0))))

(declare-fun e!126409 () Bool)

(assert (=> d!54406 e!126409))

(declare-fun res!94181 () Bool)

(assert (=> d!54406 (=> (not res!94181) (not e!126409))))

(assert (=> d!54406 (= res!94181 (<= 0 0))))

(assert (=> d!54406 (= (apply!533 (_1!1920 lt!73587) 0) lt!74076)))

(declare-fun b!205544 () Bool)

(assert (=> b!205544 (= e!126409 (< 0 (size!2623 (_1!1920 lt!73587))))))

(assert (= (and d!54406 res!94181) b!205544))

(assert (=> d!54406 m!225635))

(assert (=> d!54406 m!225635))

(declare-fun m!226597 () Bool)

(assert (=> d!54406 m!226597))

(declare-fun m!226599 () Bool)

(assert (=> d!54406 m!226599))

(assert (=> b!205544 m!225143))

(assert (=> b!204728 d!54406))

(declare-fun d!54408 () Bool)

(declare-fun res!94190 () Bool)

(declare-fun e!126416 () Bool)

(assert (=> d!54408 (=> (not res!94190) (not e!126416))))

(assert (=> d!54408 (= res!94190 (not (isEmpty!1706 (originalCharacters!647 separatorToken!170))))))

(assert (=> d!54408 (= (inv!4114 separatorToken!170) e!126416)))

(declare-fun b!205553 () Bool)

(declare-fun res!94191 () Bool)

(assert (=> b!205553 (=> (not res!94191) (not e!126416))))

(assert (=> b!205553 (= res!94191 (= (originalCharacters!647 separatorToken!170) (list!1218 (dynLambda!1443 (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))) (value!21531 separatorToken!170)))))))

(declare-fun b!205554 () Bool)

(assert (=> b!205554 (= e!126416 (= (size!2622 separatorToken!170) (size!2626 (originalCharacters!647 separatorToken!170))))))

(assert (= (and d!54408 res!94190) b!205553))

(assert (= (and b!205553 res!94191) b!205554))

(declare-fun b_lambda!5311 () Bool)

(assert (=> (not b_lambda!5311) (not b!205553)))

(assert (=> b!205553 t!30936))

(declare-fun b_and!14839 () Bool)

(assert (= b_and!14833 (and (=> t!30936 result!12520) b_and!14839)))

(assert (=> b!205553 t!30938))

(declare-fun b_and!14841 () Bool)

(assert (= b_and!14835 (and (=> t!30938 result!12522) b_and!14841)))

(assert (=> b!205553 t!30940))

(declare-fun b_and!14843 () Bool)

(assert (= b_and!14837 (and (=> t!30940 result!12524) b_and!14843)))

(declare-fun m!226601 () Bool)

(assert (=> d!54408 m!226601))

(assert (=> b!205553 m!226529))

(assert (=> b!205553 m!226529))

(declare-fun m!226603 () Bool)

(assert (=> b!205553 m!226603))

(declare-fun m!226605 () Bool)

(assert (=> b!205554 m!226605))

(assert (=> start!22068 d!54408))

(declare-fun d!54410 () Bool)

(assert (=> d!54410 (= (isDefined!357 lt!73596) (not (isEmpty!1713 lt!73596)))))

(declare-fun bs!20940 () Bool)

(assert (= bs!20940 d!54410))

(declare-fun m!226613 () Bool)

(assert (=> bs!20940 m!226613))

(assert (=> b!204771 d!54410))

(assert (=> b!204771 d!54274))

(declare-fun d!54414 () Bool)

(assert (=> d!54414 (= (get!973 lt!73596) (v!14055 lt!73596))))

(assert (=> b!204729 d!54414))

(declare-fun d!54416 () Bool)

(assert (=> d!54416 (= (head!703 tokens!465) (h!8669 tokens!465))))

(assert (=> b!204729 d!54416))

(declare-fun d!54418 () Bool)

(assert (=> d!54418 (= (inv!4111 (tag!790 (h!8668 rules!1920))) (= (mod (str.len (value!21530 (tag!790 (h!8668 rules!1920)))) 2) 0))))

(assert (=> b!204748 d!54418))

(declare-fun d!54420 () Bool)

(declare-fun res!94196 () Bool)

(declare-fun e!126420 () Bool)

(assert (=> d!54420 (=> (not res!94196) (not e!126420))))

(assert (=> d!54420 (= res!94196 (semiInverseModEq!208 (toChars!1146 (transformation!604 (h!8668 rules!1920))) (toValue!1287 (transformation!604 (h!8668 rules!1920)))))))

(assert (=> d!54420 (= (inv!4115 (transformation!604 (h!8668 rules!1920))) e!126420)))

(declare-fun b!205559 () Bool)

(assert (=> b!205559 (= e!126420 (equivClasses!191 (toChars!1146 (transformation!604 (h!8668 rules!1920))) (toValue!1287 (transformation!604 (h!8668 rules!1920)))))))

(assert (= (and d!54420 res!94196) b!205559))

(declare-fun m!226617 () Bool)

(assert (=> d!54420 m!226617))

(declare-fun m!226619 () Bool)

(assert (=> b!205559 m!226619))

(assert (=> b!204748 d!54420))

(declare-fun d!54422 () Bool)

(declare-fun isEmpty!1719 (Option!504) Bool)

(assert (=> d!54422 (= (isDefined!355 (maxPrefixZipperSequence!183 thiss!17480 rules!1920 (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465))))) (not (isEmpty!1719 (maxPrefixZipperSequence!183 thiss!17480 rules!1920 (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465)))))))))

(declare-fun bs!20941 () Bool)

(assert (= bs!20941 d!54422))

(assert (=> bs!20941 m!225223))

(declare-fun m!226629 () Bool)

(assert (=> bs!20941 m!226629))

(assert (=> b!204727 d!54422))

(declare-fun lt!74113 () Option!504)

(declare-fun e!126493 () Bool)

(declare-fun b!205671 () Bool)

(declare-fun get!977 (Option!504) tuple2!3410)

(assert (=> b!205671 (= e!126493 (= (list!1218 (_2!1921 (get!977 lt!74113))) (_2!1922 (get!973 (maxPrefix!220 thiss!17480 rules!1920 (list!1218 (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465)))))))))))

(declare-fun b!205672 () Bool)

(declare-fun e!126496 () Option!504)

(declare-fun call!9967 () Option!504)

(assert (=> b!205672 (= e!126496 call!9967)))

(declare-fun e!126494 () Bool)

(declare-fun b!205673 () Bool)

(declare-fun maxPrefixZipper!70 (LexerInterface!490 List!3281 List!3280) Option!505)

(assert (=> b!205673 (= e!126494 (= (list!1218 (_2!1921 (get!977 lt!74113))) (_2!1922 (get!973 (maxPrefixZipper!70 thiss!17480 rules!1920 (list!1218 (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465)))))))))))

(declare-fun d!54426 () Bool)

(declare-fun e!126495 () Bool)

(assert (=> d!54426 e!126495))

(declare-fun res!94272 () Bool)

(assert (=> d!54426 (=> (not res!94272) (not e!126495))))

(assert (=> d!54426 (= res!94272 (= (isDefined!355 lt!74113) (isDefined!357 (maxPrefixZipper!70 thiss!17480 rules!1920 (list!1218 (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465))))))))))

(assert (=> d!54426 (= lt!74113 e!126496)))

(declare-fun c!39485 () Bool)

(assert (=> d!54426 (= c!39485 (and (is-Cons!3271 rules!1920) (is-Nil!3271 (t!30903 rules!1920))))))

(declare-fun lt!74115 () Unit!3303)

(declare-fun lt!74117 () Unit!3303)

(assert (=> d!54426 (= lt!74115 lt!74117)))

(declare-fun lt!74118 () List!3280)

(declare-fun lt!74112 () List!3280)

(assert (=> d!54426 (isPrefix!300 lt!74118 lt!74112)))

(assert (=> d!54426 (= lt!74117 (lemmaIsPrefixRefl!166 lt!74118 lt!74112))))

(assert (=> d!54426 (= lt!74112 (list!1218 (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465)))))))

(assert (=> d!54426 (= lt!74118 (list!1218 (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465)))))))

(assert (=> d!54426 (rulesValidInductive!155 thiss!17480 rules!1920)))

(assert (=> d!54426 (= (maxPrefixZipperSequence!183 thiss!17480 rules!1920 (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465)))) lt!74113)))

(declare-fun bm!9962 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!71 (LexerInterface!490 Rule!1008 BalanceConc!2068) Option!504)

(assert (=> bm!9962 (= call!9967 (maxPrefixOneRuleZipperSequence!71 thiss!17480 (h!8668 rules!1920) (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465)))))))

(declare-fun b!205674 () Bool)

(declare-fun lt!74116 () Option!504)

(declare-fun lt!74114 () Option!504)

(assert (=> b!205674 (= e!126496 (ite (and (is-None!503 lt!74116) (is-None!503 lt!74114)) None!503 (ite (is-None!503 lt!74114) lt!74116 (ite (is-None!503 lt!74116) lt!74114 (ite (>= (size!2622 (_1!1921 (v!14054 lt!74116))) (size!2622 (_1!1921 (v!14054 lt!74114)))) lt!74116 lt!74114)))))))

(assert (=> b!205674 (= lt!74116 call!9967)))

(assert (=> b!205674 (= lt!74114 (maxPrefixZipperSequence!183 thiss!17480 (t!30903 rules!1920) (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465)))))))

(declare-fun b!205675 () Bool)

(declare-fun res!94270 () Bool)

(assert (=> b!205675 (=> (not res!94270) (not e!126495))))

(declare-fun e!126492 () Bool)

(assert (=> b!205675 (= res!94270 e!126492)))

(declare-fun res!94271 () Bool)

(assert (=> b!205675 (=> res!94271 e!126492)))

(assert (=> b!205675 (= res!94271 (not (isDefined!355 lt!74113)))))

(declare-fun b!205676 () Bool)

(assert (=> b!205676 (= e!126492 e!126494)))

(declare-fun res!94269 () Bool)

(assert (=> b!205676 (=> (not res!94269) (not e!126494))))

(assert (=> b!205676 (= res!94269 (= (_1!1921 (get!977 lt!74113)) (_1!1922 (get!973 (maxPrefixZipper!70 thiss!17480 rules!1920 (list!1218 (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465)))))))))))

(declare-fun b!205677 () Bool)

(declare-fun e!126491 () Bool)

(assert (=> b!205677 (= e!126491 e!126493)))

(declare-fun res!94268 () Bool)

(assert (=> b!205677 (=> (not res!94268) (not e!126493))))

(assert (=> b!205677 (= res!94268 (= (_1!1921 (get!977 lt!74113)) (_1!1922 (get!973 (maxPrefix!220 thiss!17480 rules!1920 (list!1218 (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465)))))))))))

(declare-fun b!205678 () Bool)

(assert (=> b!205678 (= e!126495 e!126491)))

(declare-fun res!94273 () Bool)

(assert (=> b!205678 (=> res!94273 e!126491)))

(assert (=> b!205678 (= res!94273 (not (isDefined!355 lt!74113)))))

(assert (= (and d!54426 c!39485) b!205672))

(assert (= (and d!54426 (not c!39485)) b!205674))

(assert (= (or b!205672 b!205674) bm!9962))

(assert (= (and d!54426 res!94272) b!205675))

(assert (= (and b!205675 (not res!94271)) b!205676))

(assert (= (and b!205676 res!94269) b!205673))

(assert (= (and b!205675 res!94270) b!205678))

(assert (= (and b!205678 (not res!94273)) b!205677))

(assert (= (and b!205677 res!94268) b!205671))

(declare-fun m!226751 () Bool)

(assert (=> b!205673 m!226751))

(declare-fun m!226753 () Bool)

(assert (=> b!205673 m!226753))

(assert (=> b!205673 m!225221))

(declare-fun m!226755 () Bool)

(assert (=> b!205673 m!226755))

(assert (=> b!205673 m!226755))

(assert (=> b!205673 m!226751))

(declare-fun m!226757 () Bool)

(assert (=> b!205673 m!226757))

(declare-fun m!226759 () Bool)

(assert (=> b!205673 m!226759))

(declare-fun m!226761 () Bool)

(assert (=> b!205675 m!226761))

(assert (=> b!205677 m!226757))

(assert (=> b!205677 m!225221))

(assert (=> b!205677 m!226755))

(assert (=> b!205677 m!226755))

(declare-fun m!226763 () Bool)

(assert (=> b!205677 m!226763))

(assert (=> b!205677 m!226763))

(declare-fun m!226765 () Bool)

(assert (=> b!205677 m!226765))

(assert (=> b!205674 m!225221))

(declare-fun m!226767 () Bool)

(assert (=> b!205674 m!226767))

(assert (=> b!205671 m!225221))

(assert (=> b!205671 m!226755))

(assert (=> b!205671 m!226763))

(assert (=> b!205671 m!226765))

(assert (=> b!205671 m!226755))

(assert (=> b!205671 m!226763))

(assert (=> b!205671 m!226757))

(assert (=> b!205671 m!226759))

(assert (=> bm!9962 m!225221))

(declare-fun m!226769 () Bool)

(assert (=> bm!9962 m!226769))

(assert (=> b!205676 m!226757))

(assert (=> b!205676 m!225221))

(assert (=> b!205676 m!226755))

(assert (=> b!205676 m!226755))

(assert (=> b!205676 m!226751))

(assert (=> b!205676 m!226751))

(assert (=> b!205676 m!226753))

(assert (=> b!205678 m!226761))

(assert (=> d!54426 m!226761))

(declare-fun m!226771 () Bool)

(assert (=> d!54426 m!226771))

(assert (=> d!54426 m!225221))

(assert (=> d!54426 m!226755))

(assert (=> d!54426 m!226751))

(declare-fun m!226773 () Bool)

(assert (=> d!54426 m!226773))

(assert (=> d!54426 m!225565))

(assert (=> d!54426 m!226755))

(assert (=> d!54426 m!226751))

(declare-fun m!226775 () Bool)

(assert (=> d!54426 m!226775))

(assert (=> b!204727 d!54426))

(declare-fun d!54464 () Bool)

(assert (=> d!54464 (= (seqFromList!585 (originalCharacters!647 (h!8669 tokens!465))) (fromListB!225 (originalCharacters!647 (h!8669 tokens!465))))))

(declare-fun bs!20945 () Bool)

(assert (= bs!20945 d!54464))

(declare-fun m!226777 () Bool)

(assert (=> bs!20945 m!226777))

(assert (=> b!204727 d!54464))

(declare-fun d!54466 () Bool)

(assert (=> d!54466 (dynLambda!1442 lambda!6250 (h!8669 tokens!465))))

(declare-fun lt!74119 () Unit!3303)

(assert (=> d!54466 (= lt!74119 (choose!2025 tokens!465 lambda!6250 (h!8669 tokens!465)))))

(declare-fun e!126497 () Bool)

(assert (=> d!54466 e!126497))

(declare-fun res!94274 () Bool)

(assert (=> d!54466 (=> (not res!94274) (not e!126497))))

(assert (=> d!54466 (= res!94274 (forall!706 tokens!465 lambda!6250))))

(assert (=> d!54466 (= (forallContained!171 tokens!465 lambda!6250 (h!8669 tokens!465)) lt!74119)))

(declare-fun b!205679 () Bool)

(assert (=> b!205679 (= e!126497 (contains!544 tokens!465 (h!8669 tokens!465)))))

(assert (= (and d!54466 res!94274) b!205679))

(declare-fun b_lambda!5319 () Bool)

(assert (=> (not b_lambda!5319) (not d!54466)))

(declare-fun m!226779 () Bool)

(assert (=> d!54466 m!226779))

(declare-fun m!226781 () Bool)

(assert (=> d!54466 m!226781))

(assert (=> d!54466 m!225607))

(declare-fun m!226783 () Bool)

(assert (=> b!205679 m!226783))

(assert (=> b!204727 d!54466))

(declare-fun d!54468 () Bool)

(declare-fun res!94275 () Bool)

(declare-fun e!126498 () Bool)

(assert (=> d!54468 (=> (not res!94275) (not e!126498))))

(assert (=> d!54468 (= res!94275 (not (isEmpty!1706 (originalCharacters!647 (h!8669 tokens!465)))))))

(assert (=> d!54468 (= (inv!4114 (h!8669 tokens!465)) e!126498)))

(declare-fun b!205680 () Bool)

(declare-fun res!94276 () Bool)

(assert (=> b!205680 (=> (not res!94276) (not e!126498))))

(assert (=> b!205680 (= res!94276 (= (originalCharacters!647 (h!8669 tokens!465)) (list!1218 (dynLambda!1443 (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))) (value!21531 (h!8669 tokens!465))))))))

(declare-fun b!205681 () Bool)

(assert (=> b!205681 (= e!126498 (= (size!2622 (h!8669 tokens!465)) (size!2626 (originalCharacters!647 (h!8669 tokens!465)))))))

(assert (= (and d!54468 res!94275) b!205680))

(assert (= (and b!205680 res!94276) b!205681))

(declare-fun b_lambda!5321 () Bool)

(assert (=> (not b_lambda!5321) (not b!205680)))

(assert (=> b!205680 t!30942))

(declare-fun b_and!14857 () Bool)

(assert (= b_and!14839 (and (=> t!30942 result!12526) b_and!14857)))

(assert (=> b!205680 t!30944))

(declare-fun b_and!14859 () Bool)

(assert (= b_and!14841 (and (=> t!30944 result!12528) b_and!14859)))

(assert (=> b!205680 t!30946))

(declare-fun b_and!14861 () Bool)

(assert (= b_and!14843 (and (=> t!30946 result!12530) b_and!14861)))

(declare-fun m!226785 () Bool)

(assert (=> d!54468 m!226785))

(assert (=> b!205680 m!226557))

(assert (=> b!205680 m!226557))

(declare-fun m!226787 () Bool)

(assert (=> b!205680 m!226787))

(declare-fun m!226789 () Bool)

(assert (=> b!205681 m!226789))

(assert (=> b!204768 d!54468))

(declare-fun d!54470 () Bool)

(declare-fun lt!74122 () Bool)

(assert (=> d!54470 (= lt!74122 (isEmpty!1706 (list!1218 (_2!1920 lt!73584))))))

(declare-fun isEmpty!1720 (Conc!1030) Bool)

(assert (=> d!54470 (= lt!74122 (isEmpty!1720 (c!39309 (_2!1920 lt!73584))))))

(assert (=> d!54470 (= (isEmpty!1703 (_2!1920 lt!73584)) lt!74122)))

(declare-fun bs!20946 () Bool)

(assert (= bs!20946 d!54470))

(declare-fun m!226791 () Bool)

(assert (=> bs!20946 m!226791))

(assert (=> bs!20946 m!226791))

(declare-fun m!226793 () Bool)

(assert (=> bs!20946 m!226793))

(declare-fun m!226795 () Bool)

(assert (=> bs!20946 m!226795))

(assert (=> b!204747 d!54470))

(declare-fun d!54472 () Bool)

(declare-fun lt!74123 () Bool)

(assert (=> d!54472 (= lt!74123 (isEmpty!1706 (list!1218 (_2!1920 lt!73587))))))

(assert (=> d!54472 (= lt!74123 (isEmpty!1720 (c!39309 (_2!1920 lt!73587))))))

(assert (=> d!54472 (= (isEmpty!1703 (_2!1920 lt!73587)) lt!74123)))

(declare-fun bs!20947 () Bool)

(assert (= bs!20947 d!54472))

(declare-fun m!226797 () Bool)

(assert (=> bs!20947 m!226797))

(assert (=> bs!20947 m!226797))

(declare-fun m!226799 () Bool)

(assert (=> bs!20947 m!226799))

(declare-fun m!226801 () Bool)

(assert (=> bs!20947 m!226801))

(assert (=> b!204726 d!54472))

(declare-fun d!54474 () Bool)

(assert (=> d!54474 (= (get!973 lt!73589) (v!14055 lt!73589))))

(assert (=> b!204769 d!54474))

(declare-fun d!54476 () Bool)

(assert (=> d!54476 (= (isDefined!357 lt!73589) (not (isEmpty!1713 lt!73589)))))

(declare-fun bs!20948 () Bool)

(assert (= bs!20948 d!54476))

(declare-fun m!226803 () Bool)

(assert (=> bs!20948 m!226803))

(assert (=> b!204769 d!54476))

(declare-fun b!205682 () Bool)

(declare-fun res!94277 () Bool)

(declare-fun e!126499 () Bool)

(assert (=> b!205682 (=> (not res!94277) (not e!126499))))

(declare-fun lt!74125 () Option!505)

(assert (=> b!205682 (= res!94277 (= (list!1218 (charsOf!259 (_1!1922 (get!973 lt!74125)))) (originalCharacters!647 (_1!1922 (get!973 lt!74125)))))))

(declare-fun b!205683 () Bool)

(declare-fun res!94283 () Bool)

(assert (=> b!205683 (=> (not res!94283) (not e!126499))))

(assert (=> b!205683 (= res!94283 (= (++!799 (list!1218 (charsOf!259 (_1!1922 (get!973 lt!74125)))) (_2!1922 (get!973 lt!74125))) lt!73576))))

(declare-fun b!205684 () Bool)

(declare-fun res!94278 () Bool)

(assert (=> b!205684 (=> (not res!94278) (not e!126499))))

(assert (=> b!205684 (= res!94278 (= (value!21531 (_1!1922 (get!973 lt!74125))) (apply!535 (transformation!604 (rule!1131 (_1!1922 (get!973 lt!74125)))) (seqFromList!585 (originalCharacters!647 (_1!1922 (get!973 lt!74125)))))))))

(declare-fun d!54478 () Bool)

(declare-fun e!126500 () Bool)

(assert (=> d!54478 e!126500))

(declare-fun res!94281 () Bool)

(assert (=> d!54478 (=> res!94281 e!126500)))

(assert (=> d!54478 (= res!94281 (isEmpty!1713 lt!74125))))

(declare-fun e!126501 () Option!505)

(assert (=> d!54478 (= lt!74125 e!126501)))

(declare-fun c!39486 () Bool)

(assert (=> d!54478 (= c!39486 (and (is-Cons!3271 rules!1920) (is-Nil!3271 (t!30903 rules!1920))))))

(declare-fun lt!74128 () Unit!3303)

(declare-fun lt!74126 () Unit!3303)

(assert (=> d!54478 (= lt!74128 lt!74126)))

(assert (=> d!54478 (isPrefix!300 lt!73576 lt!73576)))

(assert (=> d!54478 (= lt!74126 (lemmaIsPrefixRefl!166 lt!73576 lt!73576))))

(assert (=> d!54478 (rulesValidInductive!155 thiss!17480 rules!1920)))

(assert (=> d!54478 (= (maxPrefix!220 thiss!17480 rules!1920 lt!73576) lt!74125)))

(declare-fun bm!9963 () Bool)

(declare-fun call!9968 () Option!505)

(assert (=> bm!9963 (= call!9968 (maxPrefixOneRule!100 thiss!17480 (h!8668 rules!1920) lt!73576))))

(declare-fun b!205685 () Bool)

(assert (=> b!205685 (= e!126500 e!126499)))

(declare-fun res!94280 () Bool)

(assert (=> b!205685 (=> (not res!94280) (not e!126499))))

(assert (=> b!205685 (= res!94280 (isDefined!357 lt!74125))))

(declare-fun b!205686 () Bool)

(assert (=> b!205686 (= e!126499 (contains!543 rules!1920 (rule!1131 (_1!1922 (get!973 lt!74125)))))))

(declare-fun b!205687 () Bool)

(assert (=> b!205687 (= e!126501 call!9968)))

(declare-fun b!205688 () Bool)

(declare-fun lt!74124 () Option!505)

(declare-fun lt!74127 () Option!505)

(assert (=> b!205688 (= e!126501 (ite (and (is-None!504 lt!74124) (is-None!504 lt!74127)) None!504 (ite (is-None!504 lt!74127) lt!74124 (ite (is-None!504 lt!74124) lt!74127 (ite (>= (size!2622 (_1!1922 (v!14055 lt!74124))) (size!2622 (_1!1922 (v!14055 lt!74127)))) lt!74124 lt!74127)))))))

(assert (=> b!205688 (= lt!74124 call!9968)))

(assert (=> b!205688 (= lt!74127 (maxPrefix!220 thiss!17480 (t!30903 rules!1920) lt!73576))))

(declare-fun b!205689 () Bool)

(declare-fun res!94282 () Bool)

(assert (=> b!205689 (=> (not res!94282) (not e!126499))))

(assert (=> b!205689 (= res!94282 (< (size!2626 (_2!1922 (get!973 lt!74125))) (size!2626 lt!73576)))))

(declare-fun b!205690 () Bool)

(declare-fun res!94279 () Bool)

(assert (=> b!205690 (=> (not res!94279) (not e!126499))))

(assert (=> b!205690 (= res!94279 (matchR!166 (regex!604 (rule!1131 (_1!1922 (get!973 lt!74125)))) (list!1218 (charsOf!259 (_1!1922 (get!973 lt!74125))))))))

(assert (= (and d!54478 c!39486) b!205687))

(assert (= (and d!54478 (not c!39486)) b!205688))

(assert (= (or b!205687 b!205688) bm!9963))

(assert (= (and d!54478 (not res!94281)) b!205685))

(assert (= (and b!205685 res!94280) b!205682))

(assert (= (and b!205682 res!94277) b!205689))

(assert (= (and b!205689 res!94282) b!205683))

(assert (= (and b!205683 res!94283) b!205684))

(assert (= (and b!205684 res!94278) b!205690))

(assert (= (and b!205690 res!94279) b!205686))

(declare-fun m!226805 () Bool)

(assert (=> bm!9963 m!226805))

(declare-fun m!226807 () Bool)

(assert (=> b!205684 m!226807))

(declare-fun m!226809 () Bool)

(assert (=> b!205684 m!226809))

(assert (=> b!205684 m!226809))

(declare-fun m!226811 () Bool)

(assert (=> b!205684 m!226811))

(assert (=> b!205689 m!226807))

(declare-fun m!226813 () Bool)

(assert (=> b!205689 m!226813))

(assert (=> b!205689 m!225667))

(assert (=> b!205683 m!226807))

(declare-fun m!226815 () Bool)

(assert (=> b!205683 m!226815))

(assert (=> b!205683 m!226815))

(declare-fun m!226817 () Bool)

(assert (=> b!205683 m!226817))

(assert (=> b!205683 m!226817))

(declare-fun m!226819 () Bool)

(assert (=> b!205683 m!226819))

(declare-fun m!226821 () Bool)

(assert (=> b!205688 m!226821))

(declare-fun m!226823 () Bool)

(assert (=> b!205685 m!226823))

(declare-fun m!226825 () Bool)

(assert (=> d!54478 m!226825))

(declare-fun m!226827 () Bool)

(assert (=> d!54478 m!226827))

(declare-fun m!226829 () Bool)

(assert (=> d!54478 m!226829))

(assert (=> d!54478 m!225565))

(assert (=> b!205682 m!226807))

(assert (=> b!205682 m!226815))

(assert (=> b!205682 m!226815))

(assert (=> b!205682 m!226817))

(assert (=> b!205686 m!226807))

(declare-fun m!226831 () Bool)

(assert (=> b!205686 m!226831))

(assert (=> b!205690 m!226807))

(assert (=> b!205690 m!226815))

(assert (=> b!205690 m!226815))

(assert (=> b!205690 m!226817))

(assert (=> b!205690 m!226817))

(declare-fun m!226833 () Bool)

(assert (=> b!205690 m!226833))

(assert (=> b!204769 d!54478))

(declare-fun d!54480 () Bool)

(assert (=> d!54480 (= (inv!4111 (tag!790 (rule!1131 (h!8669 tokens!465)))) (= (mod (str.len (value!21530 (tag!790 (rule!1131 (h!8669 tokens!465))))) 2) 0))))

(assert (=> b!204767 d!54480))

(declare-fun d!54482 () Bool)

(declare-fun res!94284 () Bool)

(declare-fun e!126502 () Bool)

(assert (=> d!54482 (=> (not res!94284) (not e!126502))))

(assert (=> d!54482 (= res!94284 (semiInverseModEq!208 (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))) (toValue!1287 (transformation!604 (rule!1131 (h!8669 tokens!465))))))))

(assert (=> d!54482 (= (inv!4115 (transformation!604 (rule!1131 (h!8669 tokens!465)))) e!126502)))

(declare-fun b!205691 () Bool)

(assert (=> b!205691 (= e!126502 (equivClasses!191 (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))) (toValue!1287 (transformation!604 (rule!1131 (h!8669 tokens!465))))))))

(assert (= (and d!54482 res!94284) b!205691))

(declare-fun m!226835 () Bool)

(assert (=> d!54482 m!226835))

(declare-fun m!226837 () Bool)

(assert (=> b!205691 m!226837))

(assert (=> b!204767 d!54482))

(declare-fun b!205692 () Bool)

(declare-fun e!126504 () List!3280)

(assert (=> b!205692 (= e!126504 lt!73588)))

(declare-fun b!205693 () Bool)

(assert (=> b!205693 (= e!126504 (Cons!3270 (h!8667 lt!73576) (++!799 (t!30902 lt!73576) lt!73588)))))

(declare-fun e!126503 () Bool)

(declare-fun b!205695 () Bool)

(declare-fun lt!74129 () List!3280)

(assert (=> b!205695 (= e!126503 (or (not (= lt!73588 Nil!3270)) (= lt!74129 lt!73576)))))

(declare-fun b!205694 () Bool)

(declare-fun res!94286 () Bool)

(assert (=> b!205694 (=> (not res!94286) (not e!126503))))

(assert (=> b!205694 (= res!94286 (= (size!2626 lt!74129) (+ (size!2626 lt!73576) (size!2626 lt!73588))))))

(declare-fun d!54484 () Bool)

(assert (=> d!54484 e!126503))

(declare-fun res!94285 () Bool)

(assert (=> d!54484 (=> (not res!94285) (not e!126503))))

(assert (=> d!54484 (= res!94285 (= (content!448 lt!74129) (set.union (content!448 lt!73576) (content!448 lt!73588))))))

(assert (=> d!54484 (= lt!74129 e!126504)))

(declare-fun c!39487 () Bool)

(assert (=> d!54484 (= c!39487 (is-Nil!3270 lt!73576))))

(assert (=> d!54484 (= (++!799 lt!73576 lt!73588) lt!74129)))

(assert (= (and d!54484 c!39487) b!205692))

(assert (= (and d!54484 (not c!39487)) b!205693))

(assert (= (and d!54484 res!94285) b!205694))

(assert (= (and b!205694 res!94286) b!205695))

(declare-fun m!226839 () Bool)

(assert (=> b!205693 m!226839))

(declare-fun m!226841 () Bool)

(assert (=> b!205694 m!226841))

(assert (=> b!205694 m!225667))

(assert (=> b!205694 m!226545))

(declare-fun m!226843 () Bool)

(assert (=> d!54484 m!226843))

(assert (=> d!54484 m!226427))

(assert (=> d!54484 m!226549))

(assert (=> b!204746 d!54484))

(declare-fun d!54486 () Bool)

(assert (=> d!54486 (= (isEmpty!1706 (_2!1922 lt!73590)) (is-Nil!3270 (_2!1922 lt!73590)))))

(assert (=> b!204745 d!54486))

(declare-fun d!54488 () Bool)

(assert (=> d!54488 (= (list!1218 (seqFromList!585 lt!73598)) (list!1221 (c!39309 (seqFromList!585 lt!73598))))))

(declare-fun bs!20949 () Bool)

(assert (= bs!20949 d!54488))

(declare-fun m!226845 () Bool)

(assert (=> bs!20949 m!226845))

(assert (=> b!204743 d!54488))

(declare-fun d!54490 () Bool)

(assert (=> d!54490 (= (seqFromList!585 lt!73598) (fromListB!225 lt!73598))))

(declare-fun bs!20950 () Bool)

(assert (= bs!20950 d!54490))

(declare-fun m!226847 () Bool)

(assert (=> bs!20950 m!226847))

(assert (=> b!204743 d!54490))

(declare-fun d!54492 () Bool)

(declare-fun lt!74130 () Bool)

(declare-fun e!126506 () Bool)

(assert (=> d!54492 (= lt!74130 e!126506)))

(declare-fun res!94287 () Bool)

(assert (=> d!54492 (=> (not res!94287) (not e!126506))))

(assert (=> d!54492 (= res!94287 (= (list!1220 (_1!1920 (lex!290 thiss!17480 rules!1920 (print!221 thiss!17480 (singletonSeq!156 separatorToken!170))))) (list!1220 (singletonSeq!156 separatorToken!170))))))

(declare-fun e!126505 () Bool)

(assert (=> d!54492 (= lt!74130 e!126505)))

(declare-fun res!94289 () Bool)

(assert (=> d!54492 (=> (not res!94289) (not e!126505))))

(declare-fun lt!74131 () tuple2!3408)

(assert (=> d!54492 (= res!94289 (= (size!2623 (_1!1920 lt!74131)) 1))))

(assert (=> d!54492 (= lt!74131 (lex!290 thiss!17480 rules!1920 (print!221 thiss!17480 (singletonSeq!156 separatorToken!170))))))

(assert (=> d!54492 (not (isEmpty!1707 rules!1920))))

(assert (=> d!54492 (= (rulesProduceIndividualToken!239 thiss!17480 rules!1920 separatorToken!170) lt!74130)))

(declare-fun b!205696 () Bool)

(declare-fun res!94288 () Bool)

(assert (=> b!205696 (=> (not res!94288) (not e!126505))))

(assert (=> b!205696 (= res!94288 (= (apply!533 (_1!1920 lt!74131) 0) separatorToken!170))))

(declare-fun b!205697 () Bool)

(assert (=> b!205697 (= e!126505 (isEmpty!1703 (_2!1920 lt!74131)))))

(declare-fun b!205698 () Bool)

(assert (=> b!205698 (= e!126506 (isEmpty!1703 (_2!1920 (lex!290 thiss!17480 rules!1920 (print!221 thiss!17480 (singletonSeq!156 separatorToken!170))))))))

(assert (= (and d!54492 res!94289) b!205696))

(assert (= (and b!205696 res!94288) b!205697))

(assert (= (and d!54492 res!94287) b!205698))

(declare-fun m!226849 () Bool)

(assert (=> d!54492 m!226849))

(declare-fun m!226851 () Bool)

(assert (=> d!54492 m!226851))

(declare-fun m!226853 () Bool)

(assert (=> d!54492 m!226853))

(assert (=> d!54492 m!225195))

(assert (=> d!54492 m!226851))

(assert (=> d!54492 m!225195))

(declare-fun m!226855 () Bool)

(assert (=> d!54492 m!226855))

(declare-fun m!226857 () Bool)

(assert (=> d!54492 m!226857))

(assert (=> d!54492 m!225195))

(assert (=> d!54492 m!225285))

(declare-fun m!226859 () Bool)

(assert (=> b!205696 m!226859))

(declare-fun m!226861 () Bool)

(assert (=> b!205697 m!226861))

(assert (=> b!205698 m!225195))

(assert (=> b!205698 m!225195))

(assert (=> b!205698 m!226851))

(assert (=> b!205698 m!226851))

(assert (=> b!205698 m!226853))

(declare-fun m!226863 () Bool)

(assert (=> b!205698 m!226863))

(assert (=> b!204763 d!54492))

(declare-fun bs!20951 () Bool)

(declare-fun d!54494 () Bool)

(assert (= bs!20951 (and d!54494 d!54326)))

(declare-fun lambda!6280 () Int)

(assert (=> bs!20951 (not (= lambda!6280 lambda!6268))))

(declare-fun bs!20952 () Bool)

(assert (= bs!20952 (and d!54494 b!204758)))

(assert (=> bs!20952 (not (= lambda!6280 lambda!6249))))

(declare-fun bs!20953 () Bool)

(assert (= bs!20953 (and d!54494 d!54386)))

(assert (=> bs!20953 (not (= lambda!6280 lambda!6274))))

(declare-fun bs!20954 () Bool)

(assert (= bs!20954 (and d!54494 b!205420)))

(assert (=> bs!20954 (= lambda!6280 lambda!6269)))

(declare-fun bs!20955 () Bool)

(assert (= bs!20955 (and d!54494 b!204727)))

(assert (=> bs!20955 (= lambda!6280 lambda!6250)))

(declare-fun bs!20956 () Bool)

(assert (= bs!20956 (and d!54494 b!205519)))

(assert (=> bs!20956 (= lambda!6280 lambda!6275)))

(declare-fun bs!20957 () Bool)

(assert (= bs!20957 (and d!54494 b!205479)))

(assert (=> bs!20957 (= lambda!6280 lambda!6272)))

(declare-fun bs!20958 () Bool)

(assert (= bs!20958 (and d!54494 b!205502)))

(assert (=> bs!20958 (= lambda!6280 lambda!6273)))

(declare-fun b!205704 () Bool)

(declare-fun e!126512 () Bool)

(assert (=> b!205704 (= e!126512 true)))

(declare-fun b!205703 () Bool)

(declare-fun e!126511 () Bool)

(assert (=> b!205703 (= e!126511 e!126512)))

(declare-fun b!205702 () Bool)

(declare-fun e!126510 () Bool)

(assert (=> b!205702 (= e!126510 e!126511)))

(assert (=> d!54494 e!126510))

(assert (= b!205703 b!205704))

(assert (= b!205702 b!205703))

(assert (= (and d!54494 (is-Cons!3271 rules!1920)) b!205702))

(assert (=> b!205704 (< (dynLambda!1436 order!2123 (toValue!1287 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6280))))

(assert (=> b!205704 (< (dynLambda!1438 order!2127 (toChars!1146 (transformation!604 (h!8668 rules!1920)))) (dynLambda!1437 order!2125 lambda!6280))))

(assert (=> d!54494 true))

(declare-fun e!126509 () Bool)

(assert (=> d!54494 e!126509))

(declare-fun res!94292 () Bool)

(assert (=> d!54494 (=> (not res!94292) (not e!126509))))

(declare-fun lt!74134 () Bool)

(assert (=> d!54494 (= res!94292 (= lt!74134 (forall!706 (list!1220 lt!73568) lambda!6280)))))

(declare-fun forall!709 (BalanceConc!2070 Int) Bool)

(assert (=> d!54494 (= lt!74134 (forall!709 lt!73568 lambda!6280))))

(assert (=> d!54494 (not (isEmpty!1707 rules!1920))))

(assert (=> d!54494 (= (rulesProduceEachTokenIndividually!282 thiss!17480 rules!1920 lt!73568) lt!74134)))

(declare-fun b!205701 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!163 (LexerInterface!490 List!3281 List!3282) Bool)

(assert (=> b!205701 (= e!126509 (= lt!74134 (rulesProduceEachTokenIndividuallyList!163 thiss!17480 rules!1920 (list!1220 lt!73568))))))

(assert (= (and d!54494 res!94292) b!205701))

(assert (=> d!54494 m!226227))

(assert (=> d!54494 m!226227))

(declare-fun m!226865 () Bool)

(assert (=> d!54494 m!226865))

(declare-fun m!226867 () Bool)

(assert (=> d!54494 m!226867))

(assert (=> d!54494 m!225285))

(assert (=> b!205701 m!226227))

(assert (=> b!205701 m!226227))

(declare-fun m!226869 () Bool)

(assert (=> b!205701 m!226869))

(assert (=> b!204742 d!54494))

(declare-fun d!54496 () Bool)

(assert (=> d!54496 (= (seqFromList!586 tokens!465) (fromListB!224 tokens!465))))

(declare-fun bs!20959 () Bool)

(assert (= bs!20959 d!54496))

(declare-fun m!226871 () Bool)

(assert (=> bs!20959 m!226871))

(assert (=> b!204742 d!54496))

(declare-fun d!54498 () Bool)

(declare-fun lt!74135 () Bool)

(declare-fun e!126514 () Bool)

(assert (=> d!54498 (= lt!74135 e!126514)))

(declare-fun res!94293 () Bool)

(assert (=> d!54498 (=> (not res!94293) (not e!126514))))

(assert (=> d!54498 (= res!94293 (= (list!1220 (_1!1920 (lex!290 thiss!17480 rules!1920 (print!221 thiss!17480 (singletonSeq!156 (h!8669 tokens!465)))))) (list!1220 (singletonSeq!156 (h!8669 tokens!465)))))))

(declare-fun e!126513 () Bool)

(assert (=> d!54498 (= lt!74135 e!126513)))

(declare-fun res!94295 () Bool)

(assert (=> d!54498 (=> (not res!94295) (not e!126513))))

(declare-fun lt!74136 () tuple2!3408)

(assert (=> d!54498 (= res!94295 (= (size!2623 (_1!1920 lt!74136)) 1))))

(assert (=> d!54498 (= lt!74136 (lex!290 thiss!17480 rules!1920 (print!221 thiss!17480 (singletonSeq!156 (h!8669 tokens!465)))))))

(assert (=> d!54498 (not (isEmpty!1707 rules!1920))))

(assert (=> d!54498 (= (rulesProduceIndividualToken!239 thiss!17480 rules!1920 (h!8669 tokens!465)) lt!74135)))

(declare-fun b!205705 () Bool)

(declare-fun res!94294 () Bool)

(assert (=> b!205705 (=> (not res!94294) (not e!126513))))

(assert (=> b!205705 (= res!94294 (= (apply!533 (_1!1920 lt!74136) 0) (h!8669 tokens!465)))))

(declare-fun b!205706 () Bool)

(assert (=> b!205706 (= e!126513 (isEmpty!1703 (_2!1920 lt!74136)))))

(declare-fun b!205707 () Bool)

(assert (=> b!205707 (= e!126514 (isEmpty!1703 (_2!1920 (lex!290 thiss!17480 rules!1920 (print!221 thiss!17480 (singletonSeq!156 (h!8669 tokens!465)))))))))

(assert (= (and d!54498 res!94295) b!205705))

(assert (= (and b!205705 res!94294) b!205706))

(assert (= (and d!54498 res!94293) b!205707))

(declare-fun m!226873 () Bool)

(assert (=> d!54498 m!226873))

(assert (=> d!54498 m!226395))

(declare-fun m!226875 () Bool)

(assert (=> d!54498 m!226875))

(assert (=> d!54498 m!225115))

(assert (=> d!54498 m!226395))

(assert (=> d!54498 m!225115))

(declare-fun m!226877 () Bool)

(assert (=> d!54498 m!226877))

(declare-fun m!226879 () Bool)

(assert (=> d!54498 m!226879))

(assert (=> d!54498 m!225115))

(assert (=> d!54498 m!225285))

(declare-fun m!226881 () Bool)

(assert (=> b!205705 m!226881))

(declare-fun m!226883 () Bool)

(assert (=> b!205706 m!226883))

(assert (=> b!205707 m!225115))

(assert (=> b!205707 m!225115))

(assert (=> b!205707 m!226395))

(assert (=> b!205707 m!226395))

(assert (=> b!205707 m!226875))

(declare-fun m!226885 () Bool)

(assert (=> b!205707 m!226885))

(assert (=> b!204740 d!54498))

(declare-fun b!205708 () Bool)

(declare-fun e!126519 () Bool)

(declare-fun lt!74137 () Bool)

(assert (=> b!205708 (= e!126519 (not lt!74137))))

(declare-fun b!205709 () Bool)

(declare-fun e!126520 () Bool)

(assert (=> b!205709 (= e!126520 (nullable!135 (regex!604 lt!73571)))))

(declare-fun b!205710 () Bool)

(declare-fun res!94297 () Bool)

(declare-fun e!126516 () Bool)

(assert (=> b!205710 (=> (not res!94297) (not e!126516))))

(declare-fun call!9969 () Bool)

(assert (=> b!205710 (= res!94297 (not call!9969))))

(declare-fun b!205711 () Bool)

(assert (=> b!205711 (= e!126516 (= (head!704 lt!73575) (c!39310 (regex!604 lt!73571))))))

(declare-fun b!205712 () Bool)

(declare-fun res!94300 () Bool)

(declare-fun e!126521 () Bool)

(assert (=> b!205712 (=> res!94300 e!126521)))

(assert (=> b!205712 (= res!94300 e!126516)))

(declare-fun res!94296 () Bool)

(assert (=> b!205712 (=> (not res!94296) (not e!126516))))

(assert (=> b!205712 (= res!94296 lt!74137)))

(declare-fun b!205713 () Bool)

(declare-fun e!126515 () Bool)

(assert (=> b!205713 (= e!126515 (not (= (head!704 lt!73575) (c!39310 (regex!604 lt!73571)))))))

(declare-fun b!205714 () Bool)

(declare-fun e!126518 () Bool)

(assert (=> b!205714 (= e!126518 (= lt!74137 call!9969))))

(declare-fun b!205716 () Bool)

(assert (=> b!205716 (= e!126520 (matchR!166 (derivativeStep!101 (regex!604 lt!73571) (head!704 lt!73575)) (tail!399 lt!73575)))))

(declare-fun b!205717 () Bool)

(declare-fun res!94301 () Bool)

(assert (=> b!205717 (=> res!94301 e!126515)))

(assert (=> b!205717 (= res!94301 (not (isEmpty!1706 (tail!399 lt!73575))))))

(declare-fun b!205718 () Bool)

(assert (=> b!205718 (= e!126518 e!126519)))

(declare-fun c!39488 () Bool)

(assert (=> b!205718 (= c!39488 (is-EmptyLang!828 (regex!604 lt!73571)))))

(declare-fun b!205719 () Bool)

(declare-fun res!94298 () Bool)

(assert (=> b!205719 (=> res!94298 e!126521)))

(assert (=> b!205719 (= res!94298 (not (is-ElementMatch!828 (regex!604 lt!73571))))))

(assert (=> b!205719 (= e!126519 e!126521)))

(declare-fun bm!9964 () Bool)

(assert (=> bm!9964 (= call!9969 (isEmpty!1706 lt!73575))))

(declare-fun d!54500 () Bool)

(assert (=> d!54500 e!126518))

(declare-fun c!39490 () Bool)

(assert (=> d!54500 (= c!39490 (is-EmptyExpr!828 (regex!604 lt!73571)))))

(assert (=> d!54500 (= lt!74137 e!126520)))

(declare-fun c!39489 () Bool)

(assert (=> d!54500 (= c!39489 (isEmpty!1706 lt!73575))))

(assert (=> d!54500 (validRegex!210 (regex!604 lt!73571))))

(assert (=> d!54500 (= (matchR!166 (regex!604 lt!73571) lt!73575) lt!74137)))

(declare-fun b!205715 () Bool)

(declare-fun e!126517 () Bool)

(assert (=> b!205715 (= e!126517 e!126515)))

(declare-fun res!94299 () Bool)

(assert (=> b!205715 (=> res!94299 e!126515)))

(assert (=> b!205715 (= res!94299 call!9969)))

(declare-fun b!205720 () Bool)

(declare-fun res!94303 () Bool)

(assert (=> b!205720 (=> (not res!94303) (not e!126516))))

(assert (=> b!205720 (= res!94303 (isEmpty!1706 (tail!399 lt!73575)))))

(declare-fun b!205721 () Bool)

(assert (=> b!205721 (= e!126521 e!126517)))

(declare-fun res!94302 () Bool)

(assert (=> b!205721 (=> (not res!94302) (not e!126517))))

(assert (=> b!205721 (= res!94302 (not lt!74137))))

(assert (= (and d!54500 c!39489) b!205709))

(assert (= (and d!54500 (not c!39489)) b!205716))

(assert (= (and d!54500 c!39490) b!205714))

(assert (= (and d!54500 (not c!39490)) b!205718))

(assert (= (and b!205718 c!39488) b!205708))

(assert (= (and b!205718 (not c!39488)) b!205719))

(assert (= (and b!205719 (not res!94298)) b!205712))

(assert (= (and b!205712 res!94296) b!205710))

(assert (= (and b!205710 res!94297) b!205720))

(assert (= (and b!205720 res!94303) b!205711))

(assert (= (and b!205712 (not res!94300)) b!205721))

(assert (= (and b!205721 res!94302) b!205715))

(assert (= (and b!205715 (not res!94299)) b!205717))

(assert (= (and b!205717 (not res!94301)) b!205713))

(assert (= (or b!205714 b!205710 b!205715) bm!9964))

(assert (=> d!54500 m!226107))

(declare-fun m!226887 () Bool)

(assert (=> d!54500 m!226887))

(assert (=> b!205711 m!225167))

(assert (=> bm!9964 m!226107))

(assert (=> b!205713 m!225167))

(assert (=> b!205716 m!225167))

(assert (=> b!205716 m!225167))

(declare-fun m!226889 () Bool)

(assert (=> b!205716 m!226889))

(assert (=> b!205716 m!226111))

(assert (=> b!205716 m!226889))

(assert (=> b!205716 m!226111))

(declare-fun m!226891 () Bool)

(assert (=> b!205716 m!226891))

(assert (=> b!205720 m!226111))

(assert (=> b!205720 m!226111))

(assert (=> b!205720 m!226115))

(declare-fun m!226893 () Bool)

(assert (=> b!205709 m!226893))

(assert (=> b!205717 m!226111))

(assert (=> b!205717 m!226111))

(assert (=> b!205717 m!226115))

(assert (=> b!204741 d!54500))

(declare-fun d!54502 () Bool)

(assert (=> d!54502 (= (get!974 lt!73577) (v!14056 lt!73577))))

(assert (=> b!204741 d!54502))

(declare-fun b!205724 () Bool)

(declare-fun e!126526 () Bool)

(declare-fun e!126525 () Bool)

(assert (=> b!205724 (= e!126526 e!126525)))

(declare-fun c!39492 () Bool)

(assert (=> b!205724 (= c!39492 (is-IntegerValue!1879 (value!21531 (h!8669 tokens!465))))))

(declare-fun d!54504 () Bool)

(declare-fun c!39491 () Bool)

(assert (=> d!54504 (= c!39491 (is-IntegerValue!1878 (value!21531 (h!8669 tokens!465))))))

(assert (=> d!54504 (= (inv!21 (value!21531 (h!8669 tokens!465))) e!126526)))

(declare-fun b!205725 () Bool)

(assert (=> b!205725 (= e!126525 (inv!17 (value!21531 (h!8669 tokens!465))))))

(declare-fun b!205726 () Bool)

(assert (=> b!205726 (= e!126526 (inv!16 (value!21531 (h!8669 tokens!465))))))

(declare-fun b!205727 () Bool)

(declare-fun res!94306 () Bool)

(declare-fun e!126524 () Bool)

(assert (=> b!205727 (=> res!94306 e!126524)))

(assert (=> b!205727 (= res!94306 (not (is-IntegerValue!1880 (value!21531 (h!8669 tokens!465)))))))

(assert (=> b!205727 (= e!126525 e!126524)))

(declare-fun b!205728 () Bool)

(assert (=> b!205728 (= e!126524 (inv!15 (value!21531 (h!8669 tokens!465))))))

(assert (= (and d!54504 c!39491) b!205726))

(assert (= (and d!54504 (not c!39491)) b!205724))

(assert (= (and b!205724 c!39492) b!205725))

(assert (= (and b!205724 (not c!39492)) b!205727))

(assert (= (and b!205727 (not res!94306)) b!205728))

(declare-fun m!226895 () Bool)

(assert (=> b!205725 m!226895))

(declare-fun m!226897 () Bool)

(assert (=> b!205726 m!226897))

(declare-fun m!226899 () Bool)

(assert (=> b!205728 m!226899))

(assert (=> b!204760 d!54504))

(declare-fun d!54506 () Bool)

(declare-fun lt!74142 () Token!952)

(assert (=> d!54506 (= lt!74142 (apply!536 (list!1220 (_1!1920 lt!73584)) 0))))

(assert (=> d!54506 (= lt!74142 (apply!539 (c!39311 (_1!1920 lt!73584)) 0))))

(declare-fun e!126527 () Bool)

(assert (=> d!54506 e!126527))

(declare-fun res!94307 () Bool)

(assert (=> d!54506 (=> (not res!94307) (not e!126527))))

(assert (=> d!54506 (= res!94307 (<= 0 0))))

(assert (=> d!54506 (= (apply!533 (_1!1920 lt!73584) 0) lt!74142)))

(declare-fun b!205729 () Bool)

(assert (=> b!205729 (= e!126527 (< 0 (size!2623 (_1!1920 lt!73584))))))

(assert (= (and d!54506 res!94307) b!205729))

(assert (=> d!54506 m!225931))

(assert (=> d!54506 m!225931))

(declare-fun m!226901 () Bool)

(assert (=> d!54506 m!226901))

(declare-fun m!226903 () Bool)

(assert (=> d!54506 m!226903))

(assert (=> b!205729 m!225187))

(assert (=> b!204739 d!54506))

(declare-fun b!205746 () Bool)

(declare-fun e!126532 () Bool)

(declare-fun tp!90506 () Bool)

(assert (=> b!205746 (= e!126532 tp!90506)))

(declare-fun b!205747 () Bool)

(declare-fun tp!90505 () Bool)

(declare-fun tp!90507 () Bool)

(assert (=> b!205747 (= e!126532 (and tp!90505 tp!90507))))

(declare-fun b!205745 () Bool)

(declare-fun tp!90508 () Bool)

(declare-fun tp!90509 () Bool)

(assert (=> b!205745 (= e!126532 (and tp!90508 tp!90509))))

(assert (=> b!204748 (= tp!90437 e!126532)))

(declare-fun b!205744 () Bool)

(declare-fun tp_is_empty!1713 () Bool)

(assert (=> b!205744 (= e!126532 tp_is_empty!1713)))

(assert (= (and b!204748 (is-ElementMatch!828 (regex!604 (h!8668 rules!1920)))) b!205744))

(assert (= (and b!204748 (is-Concat!1455 (regex!604 (h!8668 rules!1920)))) b!205745))

(assert (= (and b!204748 (is-Star!828 (regex!604 (h!8668 rules!1920)))) b!205746))

(assert (= (and b!204748 (is-Union!828 (regex!604 (h!8668 rules!1920)))) b!205747))

(declare-fun b!205758 () Bool)

(declare-fun b_free!7909 () Bool)

(declare-fun b_next!7909 () Bool)

(assert (=> b!205758 (= b_free!7909 (not b_next!7909))))

(declare-fun tp!90518 () Bool)

(declare-fun b_and!14863 () Bool)

(assert (=> b!205758 (= tp!90518 b_and!14863)))

(declare-fun b_free!7911 () Bool)

(declare-fun b_next!7911 () Bool)

(assert (=> b!205758 (= b_free!7911 (not b_next!7911))))

(declare-fun tb!9519 () Bool)

(declare-fun t!30968 () Bool)

(assert (=> (and b!205758 (= (toChars!1146 (transformation!604 (h!8668 (t!30903 rules!1920)))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170)))) t!30968) tb!9519))

(declare-fun result!12550 () Bool)

(assert (= result!12550 result!12520))

(assert (=> d!54388 t!30968))

(declare-fun tb!9521 () Bool)

(declare-fun t!30970 () Bool)

(assert (=> (and b!205758 (= (toChars!1146 (transformation!604 (h!8668 (t!30903 rules!1920)))) (toChars!1146 (transformation!604 (rule!1131 lt!73593)))) t!30970) tb!9521))

(declare-fun result!12552 () Bool)

(assert (= result!12552 result!12512))

(assert (=> d!54276 t!30970))

(declare-fun t!30972 () Bool)

(declare-fun tb!9523 () Bool)

(assert (=> (and b!205758 (= (toChars!1146 (transformation!604 (h!8668 (t!30903 rules!1920)))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465))))) t!30972) tb!9523))

(declare-fun result!12554 () Bool)

(assert (= result!12554 result!12526))

(assert (=> b!205680 t!30972))

(assert (=> b!205553 t!30968))

(assert (=> d!54394 t!30972))

(declare-fun b_and!14865 () Bool)

(declare-fun tp!90521 () Bool)

(assert (=> b!205758 (= tp!90521 (and (=> t!30972 result!12554) (=> t!30970 result!12552) (=> t!30968 result!12550) b_and!14865))))

(declare-fun e!126543 () Bool)

(assert (=> b!205758 (= e!126543 (and tp!90518 tp!90521))))

(declare-fun e!126542 () Bool)

(declare-fun b!205757 () Bool)

(declare-fun tp!90519 () Bool)

(assert (=> b!205757 (= e!126542 (and tp!90519 (inv!4111 (tag!790 (h!8668 (t!30903 rules!1920)))) (inv!4115 (transformation!604 (h!8668 (t!30903 rules!1920)))) e!126543))))

(declare-fun b!205756 () Bool)

(declare-fun e!126541 () Bool)

(declare-fun tp!90520 () Bool)

(assert (=> b!205756 (= e!126541 (and e!126542 tp!90520))))

(assert (=> b!204749 (= tp!90441 e!126541)))

(assert (= b!205757 b!205758))

(assert (= b!205756 b!205757))

(assert (= (and b!204749 (is-Cons!3271 (t!30903 rules!1920))) b!205756))

(declare-fun m!226905 () Bool)

(assert (=> b!205757 m!226905))

(declare-fun m!226907 () Bool)

(assert (=> b!205757 m!226907))

(declare-fun b!205788 () Bool)

(declare-fun b_free!7913 () Bool)

(declare-fun b_next!7913 () Bool)

(assert (=> b!205788 (= b_free!7913 (not b_next!7913))))

(declare-fun tp!90536 () Bool)

(declare-fun b_and!14867 () Bool)

(assert (=> b!205788 (= tp!90536 b_and!14867)))

(declare-fun b_free!7915 () Bool)

(declare-fun b_next!7915 () Bool)

(assert (=> b!205788 (= b_free!7915 (not b_next!7915))))

(declare-fun tb!9525 () Bool)

(declare-fun t!30974 () Bool)

(assert (=> (and b!205788 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 (t!30904 tokens!465))))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170)))) t!30974) tb!9525))

(declare-fun result!12558 () Bool)

(assert (= result!12558 result!12520))

(assert (=> d!54388 t!30974))

(declare-fun tb!9527 () Bool)

(declare-fun t!30976 () Bool)

(assert (=> (and b!205788 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 (t!30904 tokens!465))))) (toChars!1146 (transformation!604 (rule!1131 lt!73593)))) t!30976) tb!9527))

(declare-fun result!12560 () Bool)

(assert (= result!12560 result!12512))

(assert (=> d!54276 t!30976))

(declare-fun t!30978 () Bool)

(declare-fun tb!9529 () Bool)

(assert (=> (and b!205788 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 (t!30904 tokens!465))))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465))))) t!30978) tb!9529))

(declare-fun result!12562 () Bool)

(assert (= result!12562 result!12526))

(assert (=> b!205680 t!30978))

(assert (=> b!205553 t!30974))

(assert (=> d!54394 t!30978))

(declare-fun b_and!14869 () Bool)

(declare-fun tp!90533 () Bool)

(assert (=> b!205788 (= tp!90533 (and (=> t!30974 result!12558) (=> t!30978 result!12562) (=> t!30976 result!12560) b_and!14869))))

(declare-fun b!205786 () Bool)

(declare-fun e!126572 () Bool)

(declare-fun tp!90532 () Bool)

(declare-fun e!126570 () Bool)

(assert (=> b!205786 (= e!126572 (and (inv!21 (value!21531 (h!8669 (t!30904 tokens!465)))) e!126570 tp!90532))))

(declare-fun e!126567 () Bool)

(declare-fun b!205787 () Bool)

(declare-fun tp!90534 () Bool)

(assert (=> b!205787 (= e!126570 (and tp!90534 (inv!4111 (tag!790 (rule!1131 (h!8669 (t!30904 tokens!465))))) (inv!4115 (transformation!604 (rule!1131 (h!8669 (t!30904 tokens!465))))) e!126567))))

(assert (=> b!205788 (= e!126567 (and tp!90536 tp!90533))))

(declare-fun e!126568 () Bool)

(declare-fun tp!90535 () Bool)

(declare-fun b!205785 () Bool)

(assert (=> b!205785 (= e!126568 (and (inv!4114 (h!8669 (t!30904 tokens!465))) e!126572 tp!90535))))

(assert (=> b!204768 (= tp!90439 e!126568)))

(assert (= b!205787 b!205788))

(assert (= b!205786 b!205787))

(assert (= b!205785 b!205786))

(assert (= (and b!204768 (is-Cons!3272 (t!30904 tokens!465))) b!205785))

(declare-fun m!226909 () Bool)

(assert (=> b!205786 m!226909))

(declare-fun m!226911 () Bool)

(assert (=> b!205787 m!226911))

(declare-fun m!226913 () Bool)

(assert (=> b!205787 m!226913))

(declare-fun m!226915 () Bool)

(assert (=> b!205785 m!226915))

(declare-fun b!205791 () Bool)

(declare-fun e!126573 () Bool)

(declare-fun tp!90538 () Bool)

(assert (=> b!205791 (= e!126573 tp!90538)))

(declare-fun b!205792 () Bool)

(declare-fun tp!90537 () Bool)

(declare-fun tp!90539 () Bool)

(assert (=> b!205792 (= e!126573 (and tp!90537 tp!90539))))

(declare-fun b!205790 () Bool)

(declare-fun tp!90540 () Bool)

(declare-fun tp!90541 () Bool)

(assert (=> b!205790 (= e!126573 (and tp!90540 tp!90541))))

(assert (=> b!204767 (= tp!90442 e!126573)))

(declare-fun b!205789 () Bool)

(assert (=> b!205789 (= e!126573 tp_is_empty!1713)))

(assert (= (and b!204767 (is-ElementMatch!828 (regex!604 (rule!1131 (h!8669 tokens!465))))) b!205789))

(assert (= (and b!204767 (is-Concat!1455 (regex!604 (rule!1131 (h!8669 tokens!465))))) b!205790))

(assert (= (and b!204767 (is-Star!828 (regex!604 (rule!1131 (h!8669 tokens!465))))) b!205791))

(assert (= (and b!204767 (is-Union!828 (regex!604 (rule!1131 (h!8669 tokens!465))))) b!205792))

(declare-fun b!205797 () Bool)

(declare-fun e!126576 () Bool)

(declare-fun tp!90544 () Bool)

(assert (=> b!205797 (= e!126576 (and tp_is_empty!1713 tp!90544))))

(assert (=> b!204755 (= tp!90446 e!126576)))

(assert (= (and b!204755 (is-Cons!3270 (originalCharacters!647 separatorToken!170))) b!205797))

(declare-fun b!205800 () Bool)

(declare-fun e!126577 () Bool)

(declare-fun tp!90546 () Bool)

(assert (=> b!205800 (= e!126577 tp!90546)))

(declare-fun b!205801 () Bool)

(declare-fun tp!90545 () Bool)

(declare-fun tp!90547 () Bool)

(assert (=> b!205801 (= e!126577 (and tp!90545 tp!90547))))

(declare-fun b!205799 () Bool)

(declare-fun tp!90548 () Bool)

(declare-fun tp!90549 () Bool)

(assert (=> b!205799 (= e!126577 (and tp!90548 tp!90549))))

(assert (=> b!204734 (= tp!90443 e!126577)))

(declare-fun b!205798 () Bool)

(assert (=> b!205798 (= e!126577 tp_is_empty!1713)))

(assert (= (and b!204734 (is-ElementMatch!828 (regex!604 (rule!1131 separatorToken!170)))) b!205798))

(assert (= (and b!204734 (is-Concat!1455 (regex!604 (rule!1131 separatorToken!170)))) b!205799))

(assert (= (and b!204734 (is-Star!828 (regex!604 (rule!1131 separatorToken!170)))) b!205800))

(assert (= (and b!204734 (is-Union!828 (regex!604 (rule!1131 separatorToken!170)))) b!205801))

(declare-fun b!205804 () Bool)

(declare-fun e!126580 () Bool)

(assert (=> b!205804 (= e!126580 true)))

(declare-fun b!205803 () Bool)

(declare-fun e!126579 () Bool)

(assert (=> b!205803 (= e!126579 e!126580)))

(declare-fun b!205802 () Bool)

(declare-fun e!126578 () Bool)

(assert (=> b!205802 (= e!126578 e!126579)))

(assert (=> b!204780 e!126578))

(assert (= b!205803 b!205804))

(assert (= b!205802 b!205803))

(assert (= (and b!204780 (is-Cons!3271 (t!30903 rules!1920))) b!205802))

(assert (=> b!205804 (< (dynLambda!1436 order!2123 (toValue!1287 (transformation!604 (h!8668 (t!30903 rules!1920))))) (dynLambda!1437 order!2125 lambda!6250))))

(assert (=> b!205804 (< (dynLambda!1438 order!2127 (toChars!1146 (transformation!604 (h!8668 (t!30903 rules!1920))))) (dynLambda!1437 order!2125 lambda!6250))))

(declare-fun b!205805 () Bool)

(declare-fun e!126581 () Bool)

(declare-fun tp!90550 () Bool)

(assert (=> b!205805 (= e!126581 (and tp_is_empty!1713 tp!90550))))

(assert (=> b!204760 (= tp!90435 e!126581)))

(assert (= (and b!204760 (is-Cons!3270 (originalCharacters!647 (h!8669 tokens!465)))) b!205805))

(declare-fun b_lambda!5323 () Bool)

(assert (= b_lambda!5303 (or b!204758 b_lambda!5323)))

(declare-fun bs!20960 () Bool)

(declare-fun d!54508 () Bool)

(assert (= bs!20960 (and d!54508 b!204758)))

(assert (=> bs!20960 (= (dynLambda!1442 lambda!6249 (h!8669 tokens!465)) (not (isSeparator!604 (rule!1131 (h!8669 tokens!465)))))))

(assert (=> b!205230 d!54508))

(declare-fun b_lambda!5325 () Bool)

(assert (= b_lambda!5321 (or (and b!205788 b_free!7915 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 (t!30904 tokens!465))))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))))) (and b!204765 b_free!7891 (= (toChars!1146 (transformation!604 (h!8668 rules!1920))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))))) (and b!204725 b_free!7895 (= (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))))) (and b!205758 b_free!7911 (= (toChars!1146 (transformation!604 (h!8668 (t!30903 rules!1920)))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))))) (and b!204757 b_free!7887) b_lambda!5325)))

(declare-fun b_lambda!5327 () Bool)

(assert (= b_lambda!5299 (or b!204727 b_lambda!5327)))

(declare-fun bs!20961 () Bool)

(declare-fun d!54510 () Bool)

(assert (= bs!20961 (and d!54510 b!204727)))

(assert (=> bs!20961 (= (dynLambda!1442 lambda!6250 lt!73593) (rulesProduceIndividualToken!239 thiss!17480 rules!1920 lt!73593))))

(assert (=> bs!20961 m!225207))

(assert (=> d!54194 d!54510))

(declare-fun b_lambda!5329 () Bool)

(assert (= b_lambda!5319 (or b!204727 b_lambda!5329)))

(declare-fun bs!20962 () Bool)

(declare-fun d!54512 () Bool)

(assert (= bs!20962 (and d!54512 b!204727)))

(assert (=> bs!20962 (= (dynLambda!1442 lambda!6250 (h!8669 tokens!465)) (rulesProduceIndividualToken!239 thiss!17480 rules!1920 (h!8669 tokens!465)))))

(assert (=> bs!20962 m!225299))

(assert (=> d!54466 d!54512))

(declare-fun b_lambda!5331 () Bool)

(assert (= b_lambda!5307 (or (and b!205758 b_free!7911 (= (toChars!1146 (transformation!604 (h!8668 (t!30903 rules!1920)))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))))) (and b!205788 b_free!7915 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 (t!30904 tokens!465))))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))))) (and b!204765 b_free!7891 (= (toChars!1146 (transformation!604 (h!8668 rules!1920))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))))) (and b!204757 b_free!7887 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))))) (and b!204725 b_free!7895) b_lambda!5331)))

(declare-fun b_lambda!5333 () Bool)

(assert (= b_lambda!5311 (or (and b!205758 b_free!7911 (= (toChars!1146 (transformation!604 (h!8668 (t!30903 rules!1920)))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))))) (and b!205788 b_free!7915 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 (t!30904 tokens!465))))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))))) (and b!204765 b_free!7891 (= (toChars!1146 (transformation!604 (h!8668 rules!1920))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))))) (and b!204757 b_free!7887 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))) (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))))) (and b!204725 b_free!7895) b_lambda!5333)))

(declare-fun b_lambda!5335 () Bool)

(assert (= b_lambda!5309 (or (and b!205788 b_free!7915 (= (toChars!1146 (transformation!604 (rule!1131 (h!8669 (t!30904 tokens!465))))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))))) (and b!204765 b_free!7891 (= (toChars!1146 (transformation!604 (h!8668 rules!1920))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))))) (and b!204725 b_free!7895 (= (toChars!1146 (transformation!604 (rule!1131 separatorToken!170))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))))) (and b!205758 b_free!7911 (= (toChars!1146 (transformation!604 (h!8668 (t!30903 rules!1920)))) (toChars!1146 (transformation!604 (rule!1131 (h!8669 tokens!465)))))) (and b!204757 b_free!7887) b_lambda!5335)))

(push 1)

(assert (not b!205416))

(assert (not d!54464))

(assert (not b!205729))

(assert (not b_lambda!5333))

(assert (not b!205075))

(assert (not b!205797))

(assert (not d!54320))

(assert b_and!14857)

(assert (not bm!9897))

(assert (not d!54170))

(assert (not d!54220))

(assert tp_is_empty!1713)

(assert b_and!14865)

(assert (not d!54176))

(assert (not d!54180))

(assert (not b!205535))

(assert (not bm!9892))

(assert (not b!205030))

(assert (not d!54482))

(assert (not b!205016))

(assert (not d!54478))

(assert (not b!205096))

(assert (not bs!20962))

(assert (not d!54402))

(assert (not d!54222))

(assert (not bm!9889))

(assert (not b!205328))

(assert (not d!54198))

(assert (not b!205120))

(assert (not bm!9877))

(assert (not d!54466))

(assert (not d!54188))

(assert (not b!204968))

(assert (not tb!9501))

(assert (not d!54476))

(assert (not bm!9874))

(assert (not d!54302))

(assert (not b!205702))

(assert (not b!205243))

(assert (not b!205004))

(assert (not b!204983))

(assert b_and!14867)

(assert (not b_lambda!5335))

(assert (not d!54206))

(assert (not b!205281))

(assert (not b!205116))

(assert (not bm!9898))

(assert (not b!205685))

(assert (not b!205786))

(assert (not b!205300))

(assert (not bm!9955))

(assert (not d!54500))

(assert (not b!205544))

(assert (not b!205678))

(assert (not tb!9495))

(assert (not d!54226))

(assert (not b!205260))

(assert (not d!54280))

(assert (not b!205421))

(assert (not b!205498))

(assert (not bs!20961))

(assert (not b!205705))

(assert (not d!54388))

(assert (not b!205238))

(assert b_and!14861)

(assert (not bm!9954))

(assert (not b!205209))

(assert (not b!205513))

(assert (not bm!9963))

(assert (not bm!9929))

(assert (not b!205479))

(assert (not b!205697))

(assert (not b!205480))

(assert (not d!54470))

(assert (not bm!9956))

(assert (not b!205418))

(assert (not b!205757))

(assert (not b!205236))

(assert (not bm!9900))

(assert (not b_lambda!5329))

(assert (not d!54308))

(assert (not b!205099))

(assert (not b!205688))

(assert (not b!205530))

(assert (not d!54394))

(assert (not b!205706))

(assert (not b!205686))

(assert (not bm!9962))

(assert (not b!205510))

(assert (not b!205523))

(assert (not b!205537))

(assert (not bm!9945))

(assert (not b!205006))

(assert (not b!205675))

(assert (not b_lambda!5323))

(assert (not b!205805))

(assert (not d!54324))

(assert (not b!205745))

(assert (not b!205538))

(assert (not b!205215))

(assert (not b_lambda!5301))

(assert (not d!54422))

(assert (not b!205801))

(assert (not b!205534))

(assert (not d!54258))

(assert (not bm!9930))

(assert (not d!54506))

(assert (not b!205272))

(assert (not b!205002))

(assert (not b_next!7915))

(assert (not b!205785))

(assert (not b!205756))

(assert (not b!205517))

(assert (not b!205502))

(assert (not b!205008))

(assert (not tb!9489))

(assert (not b!205071))

(assert b_and!14805)

(assert (not d!54230))

(assert (not d!54472))

(assert (not b!205069))

(assert (not d!54392))

(assert (not b!205694))

(assert (not b!205791))

(assert (not b!205526))

(assert (not b!205411))

(assert (not d!54200))

(assert (not d!54400))

(assert (not b!205037))

(assert (not b!205218))

(assert (not b!205515))

(assert (not d!54282))

(assert (not b_next!7895))

(assert (not d!54306))

(assert (not bm!9947))

(assert (not b!205532))

(assert (not bm!9951))

(assert (not b!205716))

(assert (not b!205679))

(assert (not b!205234))

(assert (not b!205213))

(assert (not b!205212))

(assert (not d!54498))

(assert (not b!205698))

(assert (not b!205680))

(assert b_and!14801)

(assert (not d!54410))

(assert (not d!54492))

(assert (not b!205529))

(assert (not b!205216))

(assert (not b!205009))

(assert (not d!54274))

(assert (not d!54494))

(assert (not b!205325))

(assert (not b!205684))

(assert (not d!54376))

(assert (not b!205219))

(assert (not b!205067))

(assert (not b!205188))

(assert (not d!54194))

(assert (not d!54404))

(assert (not b!205220))

(assert (not d!54272))

(assert (not b!205240))

(assert b_and!14869)

(assert (not b!205725))

(assert (not d!54316))

(assert (not d!54408))

(assert (not d!54426))

(assert (not b!204970))

(assert (not b!205113))

(assert (not bm!9888))

(assert (not b!205317))

(assert (not b!205787))

(assert (not b!205541))

(assert (not b!205673))

(assert (not b_next!7891))

(assert b_and!14859)

(assert (not b!205121))

(assert (not b_next!7889))

(assert (not b_lambda!5327))

(assert (not b_next!7887))

(assert (not d!54380))

(assert (not b!205800))

(assert (not b!205682))

(assert (not d!54298))

(assert (not b!205275))

(assert (not bm!9944))

(assert (not b!205495))

(assert (not d!54488))

(assert (not b!205693))

(assert (not b!205683))

(assert (not b!205420))

(assert (not d!54390))

(assert (not b!205792))

(assert (not b!205477))

(assert (not d!54374))

(assert (not b!205677))

(assert (not b!204979))

(assert (not b!205525))

(assert (not b!205802))

(assert (not b!205553))

(assert (not b!205117))

(assert (not b!205790))

(assert (not b!204975))

(assert (not b!205746))

(assert (not d!54228))

(assert (not b!205671))

(assert (not d!54490))

(assert (not b!205414))

(assert (not b!205701))

(assert (not b!205713))

(assert (not b_next!7909))

(assert (not b!205029))

(assert (not b!205101))

(assert (not d!54192))

(assert (not b_next!7893))

(assert (not b!205519))

(assert (not b!205799))

(assert (not b!205707))

(assert (not b!205118))

(assert (not b!205676))

(assert (not b!205299))

(assert (not d!54382))

(assert (not b!205088))

(assert (not bm!9891))

(assert (not b!205690))

(assert (not bm!9950))

(assert (not b!205231))

(assert (not bm!9964))

(assert (not d!54204))

(assert (not d!54378))

(assert (not d!54484))

(assert (not b!205115))

(assert (not b_lambda!5331))

(assert (not b!205540))

(assert (not b!205689))

(assert (not d!54238))

(assert (not b!205559))

(assert (not b!205483))

(assert (not b!204976))

(assert (not b!205210))

(assert (not b!205273))

(assert (not b!205720))

(assert (not d!54216))

(assert (not b!205225))

(assert (not d!54468))

(assert (not d!54184))

(assert (not b!205015))

(assert (not b!205496))

(assert (not bm!9931))

(assert (not b!205512))

(assert (not b!205086))

(assert b_and!14797)

(assert (not b!205717))

(assert (not b_next!7913))

(assert (not b!205500))

(assert (not d!54212))

(assert (not b!205554))

(assert (not d!54326))

(assert (not b!205520))

(assert (not d!54310))

(assert (not d!54208))

(assert (not b!205263))

(assert (not b!205089))

(assert (not bm!9893))

(assert (not d!54178))

(assert (not bm!9887))

(assert (not b!205503))

(assert (not b!205087))

(assert (not b!205276))

(assert (not b!205189))

(assert (not b!205681))

(assert (not b!204972))

(assert (not b!205208))

(assert (not b!205321))

(assert (not d!54276))

(assert (not b!205211))

(assert (not d!54270))

(assert (not d!54210))

(assert (not b!205319))

(assert (not b!205010))

(assert (not b!205728))

(assert (not bm!9949))

(assert (not b!205098))

(assert b_and!14863)

(assert (not b!205726))

(assert (not b!205674))

(assert (not d!54420))

(assert (not b!205324))

(assert (not b!205475))

(assert (not b!205709))

(assert (not b!205696))

(assert (not bm!9946))

(assert (not b!205747))

(assert (not b!205691))

(assert (not b!205112))

(assert (not b!205506))

(assert (not b!205711))

(assert (not b!205085))

(assert (not b!205034))

(assert (not b_next!7885))

(assert (not d!54386))

(assert (not b!205413))

(assert (not d!54190))

(assert (not b!205070))

(assert (not b!205247))

(assert (not d!54398))

(assert (not d!54214))

(assert (not b_lambda!5325))

(assert (not b!205214))

(assert (not d!54406))

(assert (not d!54396))

(assert (not b!205244))

(assert (not bm!9942))

(assert (not d!54496))

(assert (not b!205003))

(assert (not b!205005))

(assert (not b!205261))

(assert (not b_next!7911))

(check-sat)

(pop 1)

(push 1)

(assert b_and!14857)

(assert b_and!14865)

(assert b_and!14867)

(assert b_and!14861)

(assert (not b_next!7915))

(assert b_and!14805)

(assert (not b_next!7895))

(assert b_and!14801)

(assert b_and!14869)

(assert b_and!14863)

(assert (not b_next!7885))

(assert (not b_next!7911))

(assert (not b_next!7889))

(assert (not b_next!7887))

(assert (not b_next!7891))

(assert b_and!14859)

(assert (not b_next!7909))

(assert (not b_next!7893))

(assert b_and!14797)

(assert (not b_next!7913))

(check-sat)

(pop 1)

