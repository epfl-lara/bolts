; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!527236 () Bool)

(assert start!527236)

(declare-fun b!4988180 () Bool)

(declare-fun b_free!133215 () Bool)

(declare-fun b_next!134005 () Bool)

(assert (=> b!4988180 (= b_free!133215 (not b_next!134005))))

(declare-fun tp!1397863 () Bool)

(declare-fun b_and!350051 () Bool)

(assert (=> b!4988180 (= tp!1397863 b_and!350051)))

(declare-fun b_free!133217 () Bool)

(declare-fun b_next!134007 () Bool)

(assert (=> b!4988180 (= b_free!133217 (not b_next!134007))))

(declare-fun tp!1397862 () Bool)

(declare-fun b_and!350053 () Bool)

(assert (=> b!4988180 (= tp!1397862 b_and!350053)))

(declare-fun b!4988192 () Bool)

(declare-fun e!3117497 () Bool)

(assert (=> b!4988192 (= e!3117497 true)))

(declare-fun b!4988191 () Bool)

(declare-fun e!3117496 () Bool)

(assert (=> b!4988191 (= e!3117496 e!3117497)))

(declare-fun b!4988168 () Bool)

(assert (=> b!4988168 e!3117496))

(assert (= b!4988191 b!4988192))

(assert (= b!4988168 b!4988191))

(declare-fun order!26663 () Int)

(declare-fun order!26665 () Int)

(declare-datatypes ((C!27674 0))(
  ( (C!27675 (val!23203 Int)) )
))
(declare-datatypes ((List!57754 0))(
  ( (Nil!57630) (Cons!57630 (h!64078 C!27674) (t!370060 List!57754)) )
))
(declare-datatypes ((IArray!30523 0))(
  ( (IArray!30524 (innerList!15319 List!57754)) )
))
(declare-datatypes ((List!57755 0))(
  ( (Nil!57631) (Cons!57631 (h!64079 (_ BitVec 16)) (t!370061 List!57755)) )
))
(declare-datatypes ((String!65820 0))(
  ( (String!65821 (value!271045 String)) )
))
(declare-datatypes ((Regex!13712 0))(
  ( (ElementMatch!13712 (c!851190 C!27674)) (Concat!22501 (regOne!27936 Regex!13712) (regTwo!27936 Regex!13712)) (EmptyExpr!13712) (Star!13712 (reg!14041 Regex!13712)) (EmptyLang!13712) (Union!13712 (regOne!27937 Regex!13712) (regTwo!27937 Regex!13712)) )
))
(declare-datatypes ((Conc!15231 0))(
  ( (Node!15231 (left!42171 Conc!15231) (right!42501 Conc!15231) (csize!30692 Int) (cheight!15442 Int)) (Leaf!25296 (xs!18557 IArray!30523) (csize!30693 Int)) (Empty!15231) )
))
(declare-datatypes ((BalanceConc!29892 0))(
  ( (BalanceConc!29893 (c!851191 Conc!15231)) )
))
(declare-datatypes ((TokenValue!8789 0))(
  ( (FloatLiteralValue!17578 (text!61968 List!57755)) (TokenValueExt!8788 (__x!34871 Int)) (Broken!43945 (value!271046 List!57755)) (Object!8912) (End!8789) (Def!8789) (Underscore!8789) (Match!8789) (Else!8789) (Error!8789) (Case!8789) (If!8789) (Extends!8789) (Abstract!8789) (Class!8789) (Val!8789) (DelimiterValue!17578 (del!8849 List!57755)) (KeywordValue!8795 (value!271047 List!57755)) (CommentValue!17578 (value!271048 List!57755)) (WhitespaceValue!17578 (value!271049 List!57755)) (IndentationValue!8789 (value!271050 List!57755)) (String!65822) (Int32!8789) (Broken!43946 (value!271051 List!57755)) (Boolean!8790) (Unit!148798) (OperatorValue!8792 (op!8849 List!57755)) (IdentifierValue!17578 (value!271052 List!57755)) (IdentifierValue!17579 (value!271053 List!57755)) (WhitespaceValue!17579 (value!271054 List!57755)) (True!17578) (False!17578) (Broken!43947 (value!271055 List!57755)) (Broken!43948 (value!271056 List!57755)) (True!17579) (RightBrace!8789) (RightBracket!8789) (Colon!8789) (Null!8789) (Comma!8789) (LeftBracket!8789) (False!17579) (LeftBrace!8789) (ImaginaryLiteralValue!8789 (text!61969 List!57755)) (StringLiteralValue!26367 (value!271057 List!57755)) (EOFValue!8789 (value!271058 List!57755)) (IdentValue!8789 (value!271059 List!57755)) (DelimiterValue!17579 (value!271060 List!57755)) (DedentValue!8789 (value!271061 List!57755)) (NewLineValue!8789 (value!271062 List!57755)) (IntegerValue!26367 (value!271063 (_ BitVec 32)) (text!61970 List!57755)) (IntegerValue!26368 (value!271064 Int) (text!61971 List!57755)) (Times!8789) (Or!8789) (Equal!8789) (Minus!8789) (Broken!43949 (value!271065 List!57755)) (And!8789) (Div!8789) (LessEqual!8789) (Mod!8789) (Concat!22502) (Not!8789) (Plus!8789) (SpaceValue!8789 (value!271066 List!57755)) (IntegerValue!26369 (value!271067 Int) (text!61972 List!57755)) (StringLiteralValue!26368 (text!61973 List!57755)) (FloatLiteralValue!17579 (text!61974 List!57755)) (BytesLiteralValue!8789 (value!271068 List!57755)) (CommentValue!17579 (value!271069 List!57755)) (StringLiteralValue!26369 (value!271070 List!57755)) (ErrorTokenValue!8789 (msg!8850 List!57755)) )
))
(declare-datatypes ((TokenValueInjection!16886 0))(
  ( (TokenValueInjection!16887 (toValue!11492 Int) (toChars!11351 Int)) )
))
(declare-datatypes ((Rule!16758 0))(
  ( (Rule!16759 (regex!8479 Regex!13712) (tag!9343 String!65820) (isSeparator!8479 Bool) (transformation!8479 TokenValueInjection!16886)) )
))
(declare-fun rule!200 () Rule!16758)

(declare-fun lambda!248119 () Int)

(declare-fun dynLambda!23492 (Int Int) Int)

(declare-fun dynLambda!23493 (Int Int) Int)

(assert (=> b!4988192 (< (dynLambda!23492 order!26663 (toValue!11492 (transformation!8479 rule!200))) (dynLambda!23493 order!26665 lambda!248119))))

(declare-fun order!26667 () Int)

(declare-fun dynLambda!23494 (Int Int) Int)

(assert (=> b!4988192 (< (dynLambda!23494 order!26667 (toChars!11351 (transformation!8479 rule!200))) (dynLambda!23493 order!26665 lambda!248119))))

(declare-fun b!4988167 () Bool)

(declare-fun res!2129419 () Bool)

(declare-fun e!3117483 () Bool)

(assert (=> b!4988167 (=> res!2129419 e!3117483)))

(declare-fun lt!2062006 () BalanceConc!29892)

(declare-fun lt!2062009 () List!57754)

(declare-fun list!18511 (BalanceConc!29892) List!57754)

(assert (=> b!4988167 (= res!2129419 (not (= (list!18511 lt!2062006) lt!2062009)))))

(declare-fun res!2129408 () Bool)

(declare-fun e!3117491 () Bool)

(assert (=> b!4988168 (=> res!2129408 e!3117491)))

(declare-fun Forall!1827 (Int) Bool)

(assert (=> b!4988168 (= res!2129408 (not (Forall!1827 lambda!248119)))))

(declare-fun b!4988169 () Bool)

(declare-fun e!3117482 () Bool)

(declare-fun e!3117485 () Bool)

(assert (=> b!4988169 (= e!3117482 e!3117485)))

(declare-fun res!2129410 () Bool)

(assert (=> b!4988169 (=> res!2129410 e!3117485)))

(declare-datatypes ((Token!15410 0))(
  ( (Token!15411 (value!271071 TokenValue!8789) (rule!11749 Rule!16758) (size!38296 Int) (originalCharacters!8736 List!57754)) )
))
(declare-datatypes ((tuple2!62696 0))(
  ( (tuple2!62697 (_1!34651 Token!15410) (_2!34651 BalanceConc!29892)) )
))
(declare-fun lt!2062012 () tuple2!62696)

(declare-datatypes ((tuple2!62698 0))(
  ( (tuple2!62699 (_1!34652 Token!15410) (_2!34652 List!57754)) )
))
(declare-fun lt!2061997 () tuple2!62698)

(assert (=> b!4988169 (= res!2129410 (not (= (_1!34651 lt!2062012) (_1!34652 lt!2061997))))))

(declare-datatypes ((Option!14569 0))(
  ( (None!14568) (Some!14568 (v!50565 tuple2!62696)) )
))
(declare-fun lt!2062004 () Option!14569)

(declare-fun get!20057 (Option!14569) tuple2!62696)

(assert (=> b!4988169 (= lt!2062012 (get!20057 lt!2062004))))

(declare-fun b!4988170 () Bool)

(declare-fun e!3117480 () Bool)

(declare-datatypes ((tuple2!62700 0))(
  ( (tuple2!62701 (_1!34653 List!57754) (_2!34653 List!57754)) )
))
(declare-fun lt!2062008 () tuple2!62700)

(declare-fun matchR!6704 (Regex!13712 List!57754) Bool)

(assert (=> b!4988170 (= e!3117480 (matchR!6704 (regex!8479 rule!200) (_1!34653 lt!2062008)))))

(declare-fun b!4988171 () Bool)

(declare-fun lt!2061998 () Token!15410)

(declare-fun inv!75592 (Token!15410) Bool)

(assert (=> b!4988171 (= e!3117485 (inv!75592 lt!2061998))))

(declare-fun b!4988172 () Bool)

(declare-fun e!3117479 () Bool)

(declare-fun e!3117489 () Bool)

(declare-fun tp!1397859 () Bool)

(declare-fun inv!75589 (String!65820) Bool)

(declare-fun inv!75593 (TokenValueInjection!16886) Bool)

(assert (=> b!4988172 (= e!3117479 (and tp!1397859 (inv!75589 (tag!9343 rule!200)) (inv!75593 (transformation!8479 rule!200)) e!3117489))))

(declare-fun res!2129415 () Bool)

(declare-fun e!3117478 () Bool)

(assert (=> start!527236 (=> (not res!2129415) (not e!3117478))))

(declare-datatypes ((LexerInterface!8071 0))(
  ( (LexerInterfaceExt!8068 (__x!34872 Int)) (Lexer!8069) )
))
(declare-fun thiss!16165 () LexerInterface!8071)

(assert (=> start!527236 (= res!2129415 (is-Lexer!8069 thiss!16165))))

(assert (=> start!527236 e!3117478))

(assert (=> start!527236 true))

(assert (=> start!527236 e!3117479))

(declare-fun totalInput!520 () BalanceConc!29892)

(declare-fun e!3117487 () Bool)

(declare-fun inv!75594 (BalanceConc!29892) Bool)

(assert (=> start!527236 (and (inv!75594 totalInput!520) e!3117487)))

(declare-fun input!1580 () BalanceConc!29892)

(declare-fun e!3117484 () Bool)

(assert (=> start!527236 (and (inv!75594 input!1580) e!3117484)))

(declare-fun b!4988173 () Bool)

(declare-fun tp!1397861 () Bool)

(declare-fun inv!75595 (Conc!15231) Bool)

(assert (=> b!4988173 (= e!3117487 (and (inv!75595 (c!851191 totalInput!520)) tp!1397861))))

(declare-fun b!4988174 () Bool)

(declare-fun tp!1397860 () Bool)

(assert (=> b!4988174 (= e!3117484 (and (inv!75595 (c!851191 input!1580)) tp!1397860))))

(declare-fun b!4988175 () Bool)

(assert (=> b!4988175 (= e!3117491 e!3117483)))

(declare-fun res!2129414 () Bool)

(assert (=> b!4988175 (=> res!2129414 e!3117483)))

(declare-fun lt!2062007 () Bool)

(declare-datatypes ((Option!14570 0))(
  ( (None!14569) (Some!14569 (v!50566 tuple2!62698)) )
))
(declare-fun lt!2062005 () Option!14570)

(declare-fun isDefined!11476 (Option!14570) Bool)

(assert (=> b!4988175 (= res!2129414 (not (= lt!2062007 (isDefined!11476 lt!2062005))))))

(declare-fun isDefined!11477 (Option!14569) Bool)

(assert (=> b!4988175 (= lt!2062007 (isDefined!11477 lt!2062004))))

(declare-fun lt!2061999 () List!57754)

(declare-fun maxPrefixOneRule!3691 (LexerInterface!8071 Rule!16758 List!57754) Option!14570)

(assert (=> b!4988175 (= lt!2062005 (maxPrefixOneRule!3691 thiss!16165 rule!200 lt!2061999))))

(declare-datatypes ((tuple2!62702 0))(
  ( (tuple2!62703 (_1!34654 BalanceConc!29892) (_2!34654 BalanceConc!29892)) )
))
(declare-fun lt!2062000 () tuple2!62702)

(assert (=> b!4988175 (= lt!2062004 (Some!14568 (tuple2!62697 lt!2061998 (_2!34654 lt!2062000))))))

(declare-fun lt!2062010 () TokenValue!8789)

(declare-fun lt!2061995 () Int)

(assert (=> b!4988175 (= lt!2061998 (Token!15411 lt!2062010 rule!200 lt!2061995 lt!2062009))))

(declare-fun size!38297 (BalanceConc!29892) Int)

(assert (=> b!4988175 (= lt!2061995 (size!38297 (_1!34654 lt!2062000)))))

(declare-fun apply!13964 (TokenValueInjection!16886 BalanceConc!29892) TokenValue!8789)

(assert (=> b!4988175 (= lt!2062010 (apply!13964 (transformation!8479 rule!200) (_1!34654 lt!2062000)))))

(declare-datatypes ((Unit!148799 0))(
  ( (Unit!148800) )
))
(declare-fun lt!2062003 () Unit!148799)

(declare-fun ForallOf!1286 (Int BalanceConc!29892) Unit!148799)

(assert (=> b!4988175 (= lt!2062003 (ForallOf!1286 lambda!248119 lt!2062006))))

(declare-fun seqFromList!6098 (List!57754) BalanceConc!29892)

(assert (=> b!4988175 (= lt!2062006 (seqFromList!6098 lt!2062009))))

(assert (=> b!4988175 (= lt!2062009 (list!18511 (_1!34654 lt!2062000)))))

(declare-fun lt!2061996 () Unit!148799)

(assert (=> b!4988175 (= lt!2061996 (ForallOf!1286 lambda!248119 (_1!34654 lt!2062000)))))

(declare-fun b!4988176 () Bool)

(declare-fun e!3117481 () Bool)

(declare-fun e!3117486 () Bool)

(assert (=> b!4988176 (= e!3117481 e!3117486)))

(declare-fun res!2129409 () Bool)

(assert (=> b!4988176 (=> (not res!2129409) (not e!3117486))))

(declare-fun isEmpty!31193 (BalanceConc!29892) Bool)

(assert (=> b!4988176 (= res!2129409 (not (isEmpty!31193 (_1!34654 lt!2062000))))))

(declare-fun findLongestMatchWithZipperSequenceV2!242 (Regex!13712 BalanceConc!29892 BalanceConc!29892) tuple2!62702)

(assert (=> b!4988176 (= lt!2062000 (findLongestMatchWithZipperSequenceV2!242 (regex!8479 rule!200) input!1580 totalInput!520))))

(declare-fun b!4988177 () Bool)

(declare-fun res!2129421 () Bool)

(assert (=> b!4988177 (=> res!2129421 e!3117483)))

(assert (=> b!4988177 (= res!2129421 (not lt!2062007))))

(declare-fun b!4988178 () Bool)

(assert (=> b!4988178 (= e!3117486 (not e!3117491))))

(declare-fun res!2129411 () Bool)

(assert (=> b!4988178 (=> res!2129411 e!3117491)))

(declare-fun semiInverseModEq!3772 (Int Int) Bool)

(assert (=> b!4988178 (= res!2129411 (not (semiInverseModEq!3772 (toChars!11351 (transformation!8479 rule!200)) (toValue!11492 (transformation!8479 rule!200)))))))

(declare-fun lt!2062011 () Unit!148799)

(declare-fun lemmaInv!1398 (TokenValueInjection!16886) Unit!148799)

(assert (=> b!4988178 (= lt!2062011 (lemmaInv!1398 (transformation!8479 rule!200)))))

(assert (=> b!4988178 e!3117480))

(declare-fun res!2129413 () Bool)

(assert (=> b!4988178 (=> res!2129413 e!3117480)))

(declare-fun isEmpty!31194 (List!57754) Bool)

(assert (=> b!4988178 (= res!2129413 (isEmpty!31194 (_1!34653 lt!2062008)))))

(declare-fun findLongestMatchInner!1921 (Regex!13712 List!57754 Int List!57754 List!57754 Int) tuple2!62700)

(declare-fun size!38298 (List!57754) Int)

(assert (=> b!4988178 (= lt!2062008 (findLongestMatchInner!1921 (regex!8479 rule!200) Nil!57630 (size!38298 Nil!57630) lt!2061999 lt!2061999 (size!38298 lt!2061999)))))

(declare-fun lt!2062002 () Unit!148799)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1882 (Regex!13712 List!57754) Unit!148799)

(assert (=> b!4988178 (= lt!2062002 (longestMatchIsAcceptedByMatchOrIsEmpty!1882 (regex!8479 rule!200) lt!2061999))))

(declare-fun b!4988179 () Bool)

(declare-fun e!3117490 () Bool)

(assert (=> b!4988179 (= e!3117483 e!3117490)))

(declare-fun res!2129417 () Bool)

(assert (=> b!4988179 (=> res!2129417 e!3117490)))

(assert (=> b!4988179 (= res!2129417 (not (= (apply!13964 (transformation!8479 rule!200) lt!2062006) lt!2062010)))))

(declare-fun lt!2062001 () Unit!148799)

(declare-fun lemmaEqSameImage!1212 (TokenValueInjection!16886 BalanceConc!29892 BalanceConc!29892) Unit!148799)

(assert (=> b!4988179 (= lt!2062001 (lemmaEqSameImage!1212 (transformation!8479 rule!200) (_1!34654 lt!2062000) lt!2062006))))

(assert (=> b!4988180 (= e!3117489 (and tp!1397863 tp!1397862))))

(declare-fun b!4988181 () Bool)

(declare-fun res!2129418 () Bool)

(assert (=> b!4988181 (=> (not res!2129418) (not e!3117478))))

(declare-fun ruleValid!3887 (LexerInterface!8071 Rule!16758) Bool)

(assert (=> b!4988181 (= res!2129418 (ruleValid!3887 thiss!16165 rule!200))))

(declare-fun b!4988182 () Bool)

(assert (=> b!4988182 (= e!3117478 e!3117481)))

(declare-fun res!2129412 () Bool)

(assert (=> b!4988182 (=> (not res!2129412) (not e!3117481))))

(declare-fun isSuffix!1278 (List!57754 List!57754) Bool)

(assert (=> b!4988182 (= res!2129412 (isSuffix!1278 lt!2061999 (list!18511 totalInput!520)))))

(assert (=> b!4988182 (= lt!2061999 (list!18511 input!1580))))

(declare-fun b!4988183 () Bool)

(assert (=> b!4988183 (= e!3117490 e!3117482)))

(declare-fun res!2129416 () Bool)

(assert (=> b!4988183 (=> res!2129416 e!3117482)))

(assert (=> b!4988183 (= res!2129416 (or (not (= (value!271071 (_1!34652 lt!2061997)) lt!2062010)) (not (= (rule!11749 (_1!34652 lt!2061997)) rule!200)) (not (= (size!38296 (_1!34652 lt!2061997)) lt!2061995)) (not (= (originalCharacters!8736 (_1!34652 lt!2061997)) lt!2062009)) (not (= lt!2061998 (_1!34652 lt!2061997)))))))

(declare-fun get!20058 (Option!14570) tuple2!62698)

(assert (=> b!4988183 (= lt!2061997 (get!20058 lt!2062005))))

(declare-fun b!4988184 () Bool)

(declare-fun res!2129420 () Bool)

(assert (=> b!4988184 (=> res!2129420 e!3117485)))

(assert (=> b!4988184 (= res!2129420 (not (= (list!18511 (_2!34651 lt!2062012)) (_2!34652 lt!2061997))))))

(assert (= (and start!527236 res!2129415) b!4988181))

(assert (= (and b!4988181 res!2129418) b!4988182))

(assert (= (and b!4988182 res!2129412) b!4988176))

(assert (= (and b!4988176 res!2129409) b!4988178))

(assert (= (and b!4988178 (not res!2129413)) b!4988170))

(assert (= (and b!4988178 (not res!2129411)) b!4988168))

(assert (= (and b!4988168 (not res!2129408)) b!4988175))

(assert (= (and b!4988175 (not res!2129414)) b!4988177))

(assert (= (and b!4988177 (not res!2129421)) b!4988167))

(assert (= (and b!4988167 (not res!2129419)) b!4988179))

(assert (= (and b!4988179 (not res!2129417)) b!4988183))

(assert (= (and b!4988183 (not res!2129416)) b!4988169))

(assert (= (and b!4988169 (not res!2129410)) b!4988184))

(assert (= (and b!4988184 (not res!2129420)) b!4988171))

(assert (= b!4988172 b!4988180))

(assert (= start!527236 b!4988172))

(assert (= start!527236 b!4988173))

(assert (= start!527236 b!4988174))

(declare-fun m!6020038 () Bool)

(assert (=> b!4988178 m!6020038))

(declare-fun m!6020040 () Bool)

(assert (=> b!4988178 m!6020040))

(declare-fun m!6020042 () Bool)

(assert (=> b!4988178 m!6020042))

(declare-fun m!6020044 () Bool)

(assert (=> b!4988178 m!6020044))

(assert (=> b!4988178 m!6020040))

(declare-fun m!6020046 () Bool)

(assert (=> b!4988178 m!6020046))

(declare-fun m!6020048 () Bool)

(assert (=> b!4988178 m!6020048))

(declare-fun m!6020050 () Bool)

(assert (=> b!4988178 m!6020050))

(assert (=> b!4988178 m!6020046))

(declare-fun m!6020052 () Bool)

(assert (=> b!4988179 m!6020052))

(declare-fun m!6020054 () Bool)

(assert (=> b!4988179 m!6020054))

(declare-fun m!6020056 () Bool)

(assert (=> b!4988176 m!6020056))

(declare-fun m!6020058 () Bool)

(assert (=> b!4988176 m!6020058))

(declare-fun m!6020060 () Bool)

(assert (=> b!4988175 m!6020060))

(declare-fun m!6020062 () Bool)

(assert (=> b!4988175 m!6020062))

(declare-fun m!6020064 () Bool)

(assert (=> b!4988175 m!6020064))

(declare-fun m!6020066 () Bool)

(assert (=> b!4988175 m!6020066))

(declare-fun m!6020068 () Bool)

(assert (=> b!4988175 m!6020068))

(declare-fun m!6020070 () Bool)

(assert (=> b!4988175 m!6020070))

(declare-fun m!6020072 () Bool)

(assert (=> b!4988175 m!6020072))

(declare-fun m!6020074 () Bool)

(assert (=> b!4988175 m!6020074))

(declare-fun m!6020076 () Bool)

(assert (=> b!4988175 m!6020076))

(declare-fun m!6020078 () Bool)

(assert (=> start!527236 m!6020078))

(declare-fun m!6020080 () Bool)

(assert (=> start!527236 m!6020080))

(declare-fun m!6020082 () Bool)

(assert (=> b!4988168 m!6020082))

(declare-fun m!6020084 () Bool)

(assert (=> b!4988171 m!6020084))

(declare-fun m!6020086 () Bool)

(assert (=> b!4988173 m!6020086))

(declare-fun m!6020088 () Bool)

(assert (=> b!4988170 m!6020088))

(declare-fun m!6020090 () Bool)

(assert (=> b!4988167 m!6020090))

(declare-fun m!6020092 () Bool)

(assert (=> b!4988184 m!6020092))

(declare-fun m!6020094 () Bool)

(assert (=> b!4988183 m!6020094))

(declare-fun m!6020096 () Bool)

(assert (=> b!4988182 m!6020096))

(assert (=> b!4988182 m!6020096))

(declare-fun m!6020098 () Bool)

(assert (=> b!4988182 m!6020098))

(declare-fun m!6020100 () Bool)

(assert (=> b!4988182 m!6020100))

(declare-fun m!6020102 () Bool)

(assert (=> b!4988169 m!6020102))

(declare-fun m!6020104 () Bool)

(assert (=> b!4988181 m!6020104))

(declare-fun m!6020106 () Bool)

(assert (=> b!4988174 m!6020106))

(declare-fun m!6020108 () Bool)

(assert (=> b!4988172 m!6020108))

(declare-fun m!6020110 () Bool)

(assert (=> b!4988172 m!6020110))

(push 1)

(assert (not b_next!134007))

(assert (not b!4988173))

(assert (not b!4988181))

(assert (not b!4988179))

(assert (not b!4988174))

(assert (not b!4988171))

(assert (not b!4988167))

(assert (not b!4988176))

(assert (not b_next!134005))

(assert (not b!4988182))

(assert (not b!4988183))

(assert (not b!4988170))

(assert (not b!4988168))

(assert (not b!4988172))

(assert (not b!4988169))

(assert (not b!4988175))

(assert (not b!4988184))

(assert (not start!527236))

(assert b_and!350051)

(assert b_and!350053)

(assert (not b!4988178))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350053)

(assert b_and!350051)

(assert (not b_next!134007))

(assert (not b_next!134005))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1606261 () Bool)

(declare-fun isEmpty!31197 (Option!14569) Bool)

(assert (=> d!1606261 (= (isDefined!11477 lt!2062004) (not (isEmpty!31197 lt!2062004)))))

(declare-fun bs!1184787 () Bool)

(assert (= bs!1184787 d!1606261))

(declare-fun m!6020186 () Bool)

(assert (=> bs!1184787 m!6020186))

(assert (=> b!4988175 d!1606261))

(declare-fun d!1606263 () Bool)

(declare-fun dynLambda!23498 (Int BalanceConc!29892) Bool)

(assert (=> d!1606263 (dynLambda!23498 lambda!248119 (_1!34654 lt!2062000))))

(declare-fun lt!2062069 () Unit!148799)

(declare-fun choose!36881 (Int BalanceConc!29892) Unit!148799)

(assert (=> d!1606263 (= lt!2062069 (choose!36881 lambda!248119 (_1!34654 lt!2062000)))))

(assert (=> d!1606263 (Forall!1827 lambda!248119)))

(assert (=> d!1606263 (= (ForallOf!1286 lambda!248119 (_1!34654 lt!2062000)) lt!2062069)))

(declare-fun b_lambda!198501 () Bool)

(assert (=> (not b_lambda!198501) (not d!1606263)))

(declare-fun bs!1184788 () Bool)

(assert (= bs!1184788 d!1606263))

(declare-fun m!6020188 () Bool)

(assert (=> bs!1184788 m!6020188))

(declare-fun m!6020190 () Bool)

(assert (=> bs!1184788 m!6020190))

(assert (=> bs!1184788 m!6020082))

(assert (=> b!4988175 d!1606263))

(declare-fun d!1606265 () Bool)

(declare-fun dynLambda!23499 (Int BalanceConc!29892) TokenValue!8789)

(assert (=> d!1606265 (= (apply!13964 (transformation!8479 rule!200) (_1!34654 lt!2062000)) (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) (_1!34654 lt!2062000)))))

(declare-fun b_lambda!198503 () Bool)

(assert (=> (not b_lambda!198503) (not d!1606265)))

(declare-fun t!370065 () Bool)

(declare-fun tb!261799 () Bool)

(assert (=> (and b!4988180 (= (toValue!11492 (transformation!8479 rule!200)) (toValue!11492 (transformation!8479 rule!200))) t!370065) tb!261799))

(declare-fun result!327278 () Bool)

(declare-fun inv!21 (TokenValue!8789) Bool)

(assert (=> tb!261799 (= result!327278 (inv!21 (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) (_1!34654 lt!2062000))))))

(declare-fun m!6020192 () Bool)

(assert (=> tb!261799 m!6020192))

(assert (=> d!1606265 t!370065))

(declare-fun b_and!350059 () Bool)

(assert (= b_and!350051 (and (=> t!370065 result!327278) b_and!350059)))

(declare-fun m!6020194 () Bool)

(assert (=> d!1606265 m!6020194))

(assert (=> b!4988175 d!1606265))

(declare-fun d!1606267 () Bool)

(declare-fun lt!2062072 () Int)

(assert (=> d!1606267 (= lt!2062072 (size!38298 (list!18511 (_1!34654 lt!2062000))))))

(declare-fun size!38302 (Conc!15231) Int)

(assert (=> d!1606267 (= lt!2062072 (size!38302 (c!851191 (_1!34654 lt!2062000))))))

(assert (=> d!1606267 (= (size!38297 (_1!34654 lt!2062000)) lt!2062072)))

(declare-fun bs!1184789 () Bool)

(assert (= bs!1184789 d!1606267))

(assert (=> bs!1184789 m!6020072))

(assert (=> bs!1184789 m!6020072))

(declare-fun m!6020196 () Bool)

(assert (=> bs!1184789 m!6020196))

(declare-fun m!6020198 () Bool)

(assert (=> bs!1184789 m!6020198))

(assert (=> b!4988175 d!1606267))

(declare-fun d!1606269 () Bool)

(assert (=> d!1606269 (dynLambda!23498 lambda!248119 lt!2062006)))

(declare-fun lt!2062073 () Unit!148799)

(assert (=> d!1606269 (= lt!2062073 (choose!36881 lambda!248119 lt!2062006))))

(assert (=> d!1606269 (Forall!1827 lambda!248119)))

(assert (=> d!1606269 (= (ForallOf!1286 lambda!248119 lt!2062006) lt!2062073)))

(declare-fun b_lambda!198505 () Bool)

(assert (=> (not b_lambda!198505) (not d!1606269)))

(declare-fun bs!1184790 () Bool)

(assert (= bs!1184790 d!1606269))

(declare-fun m!6020200 () Bool)

(assert (=> bs!1184790 m!6020200))

(declare-fun m!6020202 () Bool)

(assert (=> bs!1184790 m!6020202))

(assert (=> bs!1184790 m!6020082))

(assert (=> b!4988175 d!1606269))

(declare-fun b!4988275 () Bool)

(declare-fun res!2129484 () Bool)

(declare-fun e!3117559 () Bool)

(assert (=> b!4988275 (=> (not res!2129484) (not e!3117559))))

(declare-fun lt!2062086 () Option!14570)

(declare-fun ++!12572 (List!57754 List!57754) List!57754)

(declare-fun charsOf!5470 (Token!15410) BalanceConc!29892)

(assert (=> b!4988275 (= res!2129484 (= (++!12572 (list!18511 (charsOf!5470 (_1!34652 (get!20058 lt!2062086)))) (_2!34652 (get!20058 lt!2062086))) lt!2061999))))

(declare-fun b!4988276 () Bool)

(declare-fun e!3117560 () Bool)

(assert (=> b!4988276 (= e!3117560 e!3117559)))

(declare-fun res!2129488 () Bool)

(assert (=> b!4988276 (=> (not res!2129488) (not e!3117559))))

(assert (=> b!4988276 (= res!2129488 (matchR!6704 (regex!8479 rule!200) (list!18511 (charsOf!5470 (_1!34652 (get!20058 lt!2062086))))))))

(declare-fun b!4988278 () Bool)

(declare-fun res!2129482 () Bool)

(assert (=> b!4988278 (=> (not res!2129482) (not e!3117559))))

(assert (=> b!4988278 (= res!2129482 (= (value!271071 (_1!34652 (get!20058 lt!2062086))) (apply!13964 (transformation!8479 (rule!11749 (_1!34652 (get!20058 lt!2062086)))) (seqFromList!6098 (originalCharacters!8736 (_1!34652 (get!20058 lt!2062086)))))))))

(declare-fun b!4988279 () Bool)

(assert (=> b!4988279 (= e!3117559 (= (size!38296 (_1!34652 (get!20058 lt!2062086))) (size!38298 (originalCharacters!8736 (_1!34652 (get!20058 lt!2062086))))))))

(declare-fun b!4988280 () Bool)

(declare-fun e!3117557 () Option!14570)

(assert (=> b!4988280 (= e!3117557 None!14569)))

(declare-fun b!4988281 () Bool)

(declare-fun e!3117558 () Bool)

(assert (=> b!4988281 (= e!3117558 (matchR!6704 (regex!8479 rule!200) (_1!34653 (findLongestMatchInner!1921 (regex!8479 rule!200) Nil!57630 (size!38298 Nil!57630) lt!2061999 lt!2061999 (size!38298 lt!2061999)))))))

(declare-fun b!4988282 () Bool)

(declare-fun res!2129485 () Bool)

(assert (=> b!4988282 (=> (not res!2129485) (not e!3117559))))

(assert (=> b!4988282 (= res!2129485 (< (size!38298 (_2!34652 (get!20058 lt!2062086))) (size!38298 lt!2061999)))))

(declare-fun b!4988283 () Bool)

(declare-fun res!2129483 () Bool)

(assert (=> b!4988283 (=> (not res!2129483) (not e!3117559))))

(assert (=> b!4988283 (= res!2129483 (= (rule!11749 (_1!34652 (get!20058 lt!2062086))) rule!200))))

(declare-fun d!1606271 () Bool)

(assert (=> d!1606271 e!3117560))

(declare-fun res!2129486 () Bool)

(assert (=> d!1606271 (=> res!2129486 e!3117560)))

(declare-fun isEmpty!31198 (Option!14570) Bool)

(assert (=> d!1606271 (= res!2129486 (isEmpty!31198 lt!2062086))))

(assert (=> d!1606271 (= lt!2062086 e!3117557)))

(declare-fun c!851197 () Bool)

(declare-fun lt!2062084 () tuple2!62700)

(assert (=> d!1606271 (= c!851197 (isEmpty!31194 (_1!34653 lt!2062084)))))

(declare-fun findLongestMatch!1737 (Regex!13712 List!57754) tuple2!62700)

(assert (=> d!1606271 (= lt!2062084 (findLongestMatch!1737 (regex!8479 rule!200) lt!2061999))))

(assert (=> d!1606271 (ruleValid!3887 thiss!16165 rule!200)))

(assert (=> d!1606271 (= (maxPrefixOneRule!3691 thiss!16165 rule!200 lt!2061999) lt!2062086)))

(declare-fun b!4988277 () Bool)

(assert (=> b!4988277 (= e!3117557 (Some!14569 (tuple2!62699 (Token!15411 (apply!13964 (transformation!8479 rule!200) (seqFromList!6098 (_1!34653 lt!2062084))) rule!200 (size!38297 (seqFromList!6098 (_1!34653 lt!2062084))) (_1!34653 lt!2062084)) (_2!34653 lt!2062084))))))

(declare-fun lt!2062088 () Unit!148799)

(assert (=> b!4988277 (= lt!2062088 (longestMatchIsAcceptedByMatchOrIsEmpty!1882 (regex!8479 rule!200) lt!2061999))))

(declare-fun res!2129487 () Bool)

(assert (=> b!4988277 (= res!2129487 (isEmpty!31194 (_1!34653 (findLongestMatchInner!1921 (regex!8479 rule!200) Nil!57630 (size!38298 Nil!57630) lt!2061999 lt!2061999 (size!38298 lt!2061999)))))))

(assert (=> b!4988277 (=> res!2129487 e!3117558)))

(assert (=> b!4988277 e!3117558))

(declare-fun lt!2062087 () Unit!148799)

(assert (=> b!4988277 (= lt!2062087 lt!2062088)))

(declare-fun lt!2062085 () Unit!148799)

(declare-fun lemmaSemiInverse!2633 (TokenValueInjection!16886 BalanceConc!29892) Unit!148799)

(assert (=> b!4988277 (= lt!2062085 (lemmaSemiInverse!2633 (transformation!8479 rule!200) (seqFromList!6098 (_1!34653 lt!2062084))))))

(assert (= (and d!1606271 c!851197) b!4988280))

(assert (= (and d!1606271 (not c!851197)) b!4988277))

(assert (= (and b!4988277 (not res!2129487)) b!4988281))

(assert (= (and d!1606271 (not res!2129486)) b!4988276))

(assert (= (and b!4988276 res!2129488) b!4988275))

(assert (= (and b!4988275 res!2129484) b!4988282))

(assert (= (and b!4988282 res!2129485) b!4988283))

(assert (= (and b!4988283 res!2129483) b!4988278))

(assert (= (and b!4988278 res!2129482) b!4988279))

(assert (=> b!4988281 m!6020040))

(assert (=> b!4988281 m!6020046))

(assert (=> b!4988281 m!6020040))

(assert (=> b!4988281 m!6020046))

(assert (=> b!4988281 m!6020048))

(declare-fun m!6020204 () Bool)

(assert (=> b!4988281 m!6020204))

(declare-fun m!6020206 () Bool)

(assert (=> b!4988275 m!6020206))

(declare-fun m!6020208 () Bool)

(assert (=> b!4988275 m!6020208))

(assert (=> b!4988275 m!6020208))

(declare-fun m!6020210 () Bool)

(assert (=> b!4988275 m!6020210))

(assert (=> b!4988275 m!6020210))

(declare-fun m!6020212 () Bool)

(assert (=> b!4988275 m!6020212))

(declare-fun m!6020214 () Bool)

(assert (=> d!1606271 m!6020214))

(declare-fun m!6020216 () Bool)

(assert (=> d!1606271 m!6020216))

(declare-fun m!6020218 () Bool)

(assert (=> d!1606271 m!6020218))

(assert (=> d!1606271 m!6020104))

(assert (=> b!4988279 m!6020206))

(declare-fun m!6020220 () Bool)

(assert (=> b!4988279 m!6020220))

(assert (=> b!4988283 m!6020206))

(assert (=> b!4988277 m!6020044))

(declare-fun m!6020222 () Bool)

(assert (=> b!4988277 m!6020222))

(declare-fun m!6020224 () Bool)

(assert (=> b!4988277 m!6020224))

(assert (=> b!4988277 m!6020046))

(assert (=> b!4988277 m!6020040))

(assert (=> b!4988277 m!6020046))

(assert (=> b!4988277 m!6020048))

(declare-fun m!6020226 () Bool)

(assert (=> b!4988277 m!6020226))

(assert (=> b!4988277 m!6020222))

(declare-fun m!6020228 () Bool)

(assert (=> b!4988277 m!6020228))

(assert (=> b!4988277 m!6020040))

(assert (=> b!4988277 m!6020222))

(assert (=> b!4988277 m!6020222))

(declare-fun m!6020230 () Bool)

(assert (=> b!4988277 m!6020230))

(assert (=> b!4988278 m!6020206))

(declare-fun m!6020232 () Bool)

(assert (=> b!4988278 m!6020232))

(assert (=> b!4988278 m!6020232))

(declare-fun m!6020234 () Bool)

(assert (=> b!4988278 m!6020234))

(assert (=> b!4988282 m!6020206))

(declare-fun m!6020236 () Bool)

(assert (=> b!4988282 m!6020236))

(assert (=> b!4988282 m!6020046))

(assert (=> b!4988276 m!6020206))

(assert (=> b!4988276 m!6020208))

(assert (=> b!4988276 m!6020208))

(assert (=> b!4988276 m!6020210))

(assert (=> b!4988276 m!6020210))

(declare-fun m!6020238 () Bool)

(assert (=> b!4988276 m!6020238))

(assert (=> b!4988175 d!1606271))

(declare-fun d!1606275 () Bool)

(assert (=> d!1606275 (= (isDefined!11476 lt!2062005) (not (isEmpty!31198 lt!2062005)))))

(declare-fun bs!1184791 () Bool)

(assert (= bs!1184791 d!1606275))

(declare-fun m!6020240 () Bool)

(assert (=> bs!1184791 m!6020240))

(assert (=> b!4988175 d!1606275))

(declare-fun d!1606277 () Bool)

(declare-fun list!18513 (Conc!15231) List!57754)

(assert (=> d!1606277 (= (list!18511 (_1!34654 lt!2062000)) (list!18513 (c!851191 (_1!34654 lt!2062000))))))

(declare-fun bs!1184792 () Bool)

(assert (= bs!1184792 d!1606277))

(declare-fun m!6020242 () Bool)

(assert (=> bs!1184792 m!6020242))

(assert (=> b!4988175 d!1606277))

(declare-fun d!1606281 () Bool)

(declare-fun fromListB!2763 (List!57754) BalanceConc!29892)

(assert (=> d!1606281 (= (seqFromList!6098 lt!2062009) (fromListB!2763 lt!2062009))))

(declare-fun bs!1184793 () Bool)

(assert (= bs!1184793 d!1606281))

(declare-fun m!6020244 () Bool)

(assert (=> bs!1184793 m!6020244))

(assert (=> b!4988175 d!1606281))

(declare-fun d!1606283 () Bool)

(declare-fun lt!2062091 () Bool)

(assert (=> d!1606283 (= lt!2062091 (isEmpty!31194 (list!18511 (_1!34654 lt!2062000))))))

(declare-fun isEmpty!31199 (Conc!15231) Bool)

(assert (=> d!1606283 (= lt!2062091 (isEmpty!31199 (c!851191 (_1!34654 lt!2062000))))))

(assert (=> d!1606283 (= (isEmpty!31193 (_1!34654 lt!2062000)) lt!2062091)))

(declare-fun bs!1184796 () Bool)

(assert (= bs!1184796 d!1606283))

(assert (=> bs!1184796 m!6020072))

(assert (=> bs!1184796 m!6020072))

(declare-fun m!6020250 () Bool)

(assert (=> bs!1184796 m!6020250))

(declare-fun m!6020252 () Bool)

(assert (=> bs!1184796 m!6020252))

(assert (=> b!4988176 d!1606283))

(declare-fun d!1606289 () Bool)

(declare-fun lt!2062097 () tuple2!62702)

(assert (=> d!1606289 (= (tuple2!62701 (list!18511 (_1!34654 lt!2062097)) (list!18511 (_2!34654 lt!2062097))) (findLongestMatch!1737 (regex!8479 rule!200) (list!18511 input!1580)))))

(declare-fun choose!36882 (Regex!13712 BalanceConc!29892 BalanceConc!29892) tuple2!62702)

(assert (=> d!1606289 (= lt!2062097 (choose!36882 (regex!8479 rule!200) input!1580 totalInput!520))))

(declare-fun validRegex!6011 (Regex!13712) Bool)

(assert (=> d!1606289 (validRegex!6011 (regex!8479 rule!200))))

(assert (=> d!1606289 (= (findLongestMatchWithZipperSequenceV2!242 (regex!8479 rule!200) input!1580 totalInput!520) lt!2062097)))

(declare-fun bs!1184800 () Bool)

(assert (= bs!1184800 d!1606289))

(assert (=> bs!1184800 m!6020100))

(declare-fun m!6020262 () Bool)

(assert (=> bs!1184800 m!6020262))

(declare-fun m!6020264 () Bool)

(assert (=> bs!1184800 m!6020264))

(declare-fun m!6020266 () Bool)

(assert (=> bs!1184800 m!6020266))

(assert (=> bs!1184800 m!6020100))

(declare-fun m!6020268 () Bool)

(assert (=> bs!1184800 m!6020268))

(declare-fun m!6020270 () Bool)

(assert (=> bs!1184800 m!6020270))

(assert (=> b!4988176 d!1606289))

(declare-fun d!1606297 () Bool)

(assert (=> d!1606297 (= (list!18511 lt!2062006) (list!18513 (c!851191 lt!2062006)))))

(declare-fun bs!1184801 () Bool)

(assert (= bs!1184801 d!1606297))

(declare-fun m!6020272 () Bool)

(assert (=> bs!1184801 m!6020272))

(assert (=> b!4988167 d!1606297))

(declare-fun b!4988341 () Bool)

(declare-fun e!3117595 () tuple2!62700)

(declare-fun call!348194 () tuple2!62700)

(assert (=> b!4988341 (= e!3117595 call!348194)))

(declare-fun b!4988342 () Bool)

(declare-fun e!3117592 () tuple2!62700)

(declare-fun lt!2062187 () tuple2!62700)

(assert (=> b!4988342 (= e!3117592 lt!2062187)))

(declare-fun bm!348183 () Bool)

(declare-fun call!348188 () Bool)

(declare-fun isPrefix!5285 (List!57754 List!57754) Bool)

(assert (=> bm!348183 (= call!348188 (isPrefix!5285 lt!2061999 lt!2061999))))

(declare-fun b!4988343 () Bool)

(assert (=> b!4988343 (= e!3117592 (tuple2!62701 Nil!57630 lt!2061999))))

(declare-fun b!4988344 () Bool)

(declare-fun c!851217 () Bool)

(declare-fun call!348192 () Bool)

(assert (=> b!4988344 (= c!851217 call!348192)))

(declare-fun lt!2062176 () Unit!148799)

(declare-fun lt!2062188 () Unit!148799)

(assert (=> b!4988344 (= lt!2062176 lt!2062188)))

(declare-fun lt!2062193 () C!27674)

(declare-fun lt!2062182 () List!57754)

(assert (=> b!4988344 (= (++!12572 (++!12572 Nil!57630 (Cons!57630 lt!2062193 Nil!57630)) lt!2062182) lt!2061999)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1481 (List!57754 C!27674 List!57754 List!57754) Unit!148799)

(assert (=> b!4988344 (= lt!2062188 (lemmaMoveElementToOtherListKeepsConcatEq!1481 Nil!57630 lt!2062193 lt!2062182 lt!2061999))))

(declare-fun tail!9841 (List!57754) List!57754)

(assert (=> b!4988344 (= lt!2062182 (tail!9841 lt!2061999))))

(declare-fun head!10708 (List!57754) C!27674)

(assert (=> b!4988344 (= lt!2062193 (head!10708 lt!2061999))))

(declare-fun lt!2062177 () Unit!148799)

(declare-fun lt!2062194 () Unit!148799)

(assert (=> b!4988344 (= lt!2062177 lt!2062194)))

(declare-fun getSuffix!3125 (List!57754 List!57754) List!57754)

(assert (=> b!4988344 (isPrefix!5285 (++!12572 Nil!57630 (Cons!57630 (head!10708 (getSuffix!3125 lt!2061999 Nil!57630)) Nil!57630)) lt!2061999)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!870 (List!57754 List!57754) Unit!148799)

(assert (=> b!4988344 (= lt!2062194 (lemmaAddHeadSuffixToPrefixStillPrefix!870 Nil!57630 lt!2061999))))

(declare-fun lt!2062181 () Unit!148799)

(declare-fun lt!2062175 () Unit!148799)

(assert (=> b!4988344 (= lt!2062181 lt!2062175)))

(assert (=> b!4988344 (= lt!2062175 (lemmaAddHeadSuffixToPrefixStillPrefix!870 Nil!57630 lt!2061999))))

(declare-fun lt!2062186 () List!57754)

(assert (=> b!4988344 (= lt!2062186 (++!12572 Nil!57630 (Cons!57630 (head!10708 lt!2061999) Nil!57630)))))

(declare-fun lt!2062178 () Unit!148799)

(declare-fun e!3117598 () Unit!148799)

(assert (=> b!4988344 (= lt!2062178 e!3117598)))

(declare-fun c!851213 () Bool)

(assert (=> b!4988344 (= c!851213 (= (size!38298 Nil!57630) (size!38298 lt!2061999)))))

(declare-fun lt!2062185 () Unit!148799)

(declare-fun lt!2062190 () Unit!148799)

(assert (=> b!4988344 (= lt!2062185 lt!2062190)))

(assert (=> b!4988344 (<= (size!38298 Nil!57630) (size!38298 lt!2061999))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!796 (List!57754 List!57754) Unit!148799)

(assert (=> b!4988344 (= lt!2062190 (lemmaIsPrefixThenSmallerEqSize!796 Nil!57630 lt!2061999))))

(declare-fun e!3117597 () tuple2!62700)

(assert (=> b!4988344 (= e!3117597 e!3117595)))

(declare-fun b!4988345 () Bool)

(declare-fun e!3117594 () Bool)

(declare-fun lt!2062179 () tuple2!62700)

(assert (=> b!4988345 (= e!3117594 (>= (size!38298 (_1!34653 lt!2062179)) (size!38298 Nil!57630)))))

(declare-fun bm!348184 () Bool)

(declare-fun call!348190 () Regex!13712)

(declare-fun call!348191 () C!27674)

(declare-fun derivativeStep!3960 (Regex!13712 C!27674) Regex!13712)

(assert (=> bm!348184 (= call!348190 (derivativeStep!3960 (regex!8479 rule!200) call!348191))))

(declare-fun b!4988346 () Bool)

(assert (=> b!4988346 (= e!3117595 e!3117592)))

(assert (=> b!4988346 (= lt!2062187 call!348194)))

(declare-fun c!851214 () Bool)

(assert (=> b!4988346 (= c!851214 (isEmpty!31194 (_1!34653 lt!2062187)))))

(declare-fun b!4988347 () Bool)

(declare-fun Unit!148804 () Unit!148799)

(assert (=> b!4988347 (= e!3117598 Unit!148804)))

(declare-fun lt!2062191 () Unit!148799)

(declare-fun call!348193 () Unit!148799)

(assert (=> b!4988347 (= lt!2062191 call!348193)))

(assert (=> b!4988347 call!348188))

(declare-fun lt!2062192 () Unit!148799)

(assert (=> b!4988347 (= lt!2062192 lt!2062191)))

(declare-fun lt!2062199 () Unit!148799)

(declare-fun call!348195 () Unit!148799)

(assert (=> b!4988347 (= lt!2062199 call!348195)))

(assert (=> b!4988347 (= lt!2061999 Nil!57630)))

(declare-fun lt!2062180 () Unit!148799)

(assert (=> b!4988347 (= lt!2062180 lt!2062199)))

(assert (=> b!4988347 false))

(declare-fun bm!348185 () Bool)

(declare-fun call!348189 () List!57754)

(assert (=> bm!348185 (= call!348194 (findLongestMatchInner!1921 call!348190 lt!2062186 (+ (size!38298 Nil!57630) 1) call!348189 lt!2061999 (size!38298 lt!2061999)))))

(declare-fun bm!348186 () Bool)

(declare-fun lemmaIsPrefixRefl!3608 (List!57754 List!57754) Unit!148799)

(assert (=> bm!348186 (= call!348193 (lemmaIsPrefixRefl!3608 lt!2061999 lt!2061999))))

(declare-fun bm!348187 () Bool)

(declare-fun nullable!4662 (Regex!13712) Bool)

(assert (=> bm!348187 (= call!348192 (nullable!4662 (regex!8479 rule!200)))))

(declare-fun b!4988349 () Bool)

(declare-fun c!851216 () Bool)

(assert (=> b!4988349 (= c!851216 call!348192)))

(declare-fun lt!2062173 () Unit!148799)

(declare-fun lt!2062195 () Unit!148799)

(assert (=> b!4988349 (= lt!2062173 lt!2062195)))

(assert (=> b!4988349 (= lt!2061999 Nil!57630)))

(assert (=> b!4988349 (= lt!2062195 call!348195)))

(declare-fun lt!2062198 () Unit!148799)

(declare-fun lt!2062189 () Unit!148799)

(assert (=> b!4988349 (= lt!2062198 lt!2062189)))

(assert (=> b!4988349 call!348188))

(assert (=> b!4988349 (= lt!2062189 call!348193)))

(declare-fun e!3117599 () tuple2!62700)

(assert (=> b!4988349 (= e!3117597 e!3117599)))

(declare-fun b!4988350 () Bool)

(assert (=> b!4988350 (= e!3117599 (tuple2!62701 Nil!57630 Nil!57630))))

(declare-fun b!4988351 () Bool)

(declare-fun e!3117596 () Bool)

(assert (=> b!4988351 (= e!3117596 e!3117594)))

(declare-fun res!2129515 () Bool)

(assert (=> b!4988351 (=> res!2129515 e!3117594)))

(assert (=> b!4988351 (= res!2129515 (isEmpty!31194 (_1!34653 lt!2062179)))))

(declare-fun b!4988352 () Bool)

(declare-fun e!3117593 () tuple2!62700)

(assert (=> b!4988352 (= e!3117593 (tuple2!62701 Nil!57630 lt!2061999))))

(declare-fun bm!348188 () Bool)

(assert (=> bm!348188 (= call!348189 (tail!9841 lt!2061999))))

(declare-fun bm!348189 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1244 (List!57754 List!57754 List!57754) Unit!148799)

(assert (=> bm!348189 (= call!348195 (lemmaIsPrefixSameLengthThenSameList!1244 lt!2061999 Nil!57630 lt!2061999))))

(declare-fun b!4988353 () Bool)

(assert (=> b!4988353 (= e!3117593 e!3117597)))

(declare-fun c!851215 () Bool)

(assert (=> b!4988353 (= c!851215 (= (size!38298 Nil!57630) (size!38298 lt!2061999)))))

(declare-fun b!4988348 () Bool)

(declare-fun Unit!148805 () Unit!148799)

(assert (=> b!4988348 (= e!3117598 Unit!148805)))

(declare-fun d!1606299 () Bool)

(assert (=> d!1606299 e!3117596))

(declare-fun res!2129514 () Bool)

(assert (=> d!1606299 (=> (not res!2129514) (not e!3117596))))

(assert (=> d!1606299 (= res!2129514 (= (++!12572 (_1!34653 lt!2062179) (_2!34653 lt!2062179)) lt!2061999))))

(assert (=> d!1606299 (= lt!2062179 e!3117593)))

(declare-fun c!851218 () Bool)

(declare-fun lostCause!1169 (Regex!13712) Bool)

(assert (=> d!1606299 (= c!851218 (lostCause!1169 (regex!8479 rule!200)))))

(declare-fun lt!2062174 () Unit!148799)

(declare-fun Unit!148806 () Unit!148799)

(assert (=> d!1606299 (= lt!2062174 Unit!148806)))

(assert (=> d!1606299 (= (getSuffix!3125 lt!2061999 Nil!57630) lt!2061999)))

(declare-fun lt!2062196 () Unit!148799)

(declare-fun lt!2062184 () Unit!148799)

(assert (=> d!1606299 (= lt!2062196 lt!2062184)))

(declare-fun lt!2062200 () List!57754)

(assert (=> d!1606299 (= lt!2061999 lt!2062200)))

(declare-fun lemmaSamePrefixThenSameSuffix!2537 (List!57754 List!57754 List!57754 List!57754 List!57754) Unit!148799)

(assert (=> d!1606299 (= lt!2062184 (lemmaSamePrefixThenSameSuffix!2537 Nil!57630 lt!2061999 Nil!57630 lt!2062200 lt!2061999))))

(assert (=> d!1606299 (= lt!2062200 (getSuffix!3125 lt!2061999 Nil!57630))))

(declare-fun lt!2062197 () Unit!148799)

(declare-fun lt!2062183 () Unit!148799)

(assert (=> d!1606299 (= lt!2062197 lt!2062183)))

(assert (=> d!1606299 (isPrefix!5285 Nil!57630 (++!12572 Nil!57630 lt!2061999))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3383 (List!57754 List!57754) Unit!148799)

(assert (=> d!1606299 (= lt!2062183 (lemmaConcatTwoListThenFirstIsPrefix!3383 Nil!57630 lt!2061999))))

(assert (=> d!1606299 (validRegex!6011 (regex!8479 rule!200))))

(assert (=> d!1606299 (= (findLongestMatchInner!1921 (regex!8479 rule!200) Nil!57630 (size!38298 Nil!57630) lt!2061999 lt!2061999 (size!38298 lt!2061999)) lt!2062179)))

(declare-fun bm!348190 () Bool)

(assert (=> bm!348190 (= call!348191 (head!10708 lt!2061999))))

(declare-fun b!4988354 () Bool)

(assert (=> b!4988354 (= e!3117599 (tuple2!62701 Nil!57630 lt!2061999))))

(assert (= (and d!1606299 c!851218) b!4988352))

(assert (= (and d!1606299 (not c!851218)) b!4988353))

(assert (= (and b!4988353 c!851215) b!4988349))

(assert (= (and b!4988353 (not c!851215)) b!4988344))

(assert (= (and b!4988349 c!851216) b!4988350))

(assert (= (and b!4988349 (not c!851216)) b!4988354))

(assert (= (and b!4988344 c!851213) b!4988347))

(assert (= (and b!4988344 (not c!851213)) b!4988348))

(assert (= (and b!4988344 c!851217) b!4988346))

(assert (= (and b!4988344 (not c!851217)) b!4988341))

(assert (= (and b!4988346 c!851214) b!4988343))

(assert (= (and b!4988346 (not c!851214)) b!4988342))

(assert (= (or b!4988346 b!4988341) bm!348190))

(assert (= (or b!4988346 b!4988341) bm!348188))

(assert (= (or b!4988346 b!4988341) bm!348184))

(assert (= (or b!4988346 b!4988341) bm!348185))

(assert (= (or b!4988349 b!4988347) bm!348183))

(assert (= (or b!4988349 b!4988347) bm!348189))

(assert (= (or b!4988349 b!4988347) bm!348186))

(assert (= (or b!4988349 b!4988344) bm!348187))

(assert (= (and d!1606299 res!2129514) b!4988351))

(assert (= (and b!4988351 (not res!2129515)) b!4988345))

(declare-fun m!6020326 () Bool)

(assert (=> bm!348187 m!6020326))

(declare-fun m!6020328 () Bool)

(assert (=> b!4988351 m!6020328))

(declare-fun m!6020330 () Bool)

(assert (=> bm!348186 m!6020330))

(declare-fun m!6020332 () Bool)

(assert (=> bm!348188 m!6020332))

(assert (=> bm!348185 m!6020046))

(declare-fun m!6020334 () Bool)

(assert (=> bm!348185 m!6020334))

(declare-fun m!6020336 () Bool)

(assert (=> b!4988344 m!6020336))

(declare-fun m!6020338 () Bool)

(assert (=> b!4988344 m!6020338))

(assert (=> b!4988344 m!6020046))

(declare-fun m!6020340 () Bool)

(assert (=> b!4988344 m!6020340))

(declare-fun m!6020342 () Bool)

(assert (=> b!4988344 m!6020342))

(assert (=> b!4988344 m!6020040))

(declare-fun m!6020344 () Bool)

(assert (=> b!4988344 m!6020344))

(declare-fun m!6020346 () Bool)

(assert (=> b!4988344 m!6020346))

(assert (=> b!4988344 m!6020332))

(declare-fun m!6020348 () Bool)

(assert (=> b!4988344 m!6020348))

(declare-fun m!6020350 () Bool)

(assert (=> b!4988344 m!6020350))

(declare-fun m!6020352 () Bool)

(assert (=> b!4988344 m!6020352))

(declare-fun m!6020354 () Bool)

(assert (=> b!4988344 m!6020354))

(assert (=> b!4988344 m!6020350))

(assert (=> b!4988344 m!6020336))

(assert (=> b!4988344 m!6020340))

(declare-fun m!6020356 () Bool)

(assert (=> b!4988344 m!6020356))

(declare-fun m!6020358 () Bool)

(assert (=> d!1606299 m!6020358))

(assert (=> d!1606299 m!6020340))

(declare-fun m!6020360 () Bool)

(assert (=> d!1606299 m!6020360))

(declare-fun m!6020362 () Bool)

(assert (=> d!1606299 m!6020362))

(declare-fun m!6020364 () Bool)

(assert (=> d!1606299 m!6020364))

(assert (=> d!1606299 m!6020362))

(declare-fun m!6020366 () Bool)

(assert (=> d!1606299 m!6020366))

(declare-fun m!6020368 () Bool)

(assert (=> d!1606299 m!6020368))

(assert (=> d!1606299 m!6020264))

(declare-fun m!6020370 () Bool)

(assert (=> bm!348189 m!6020370))

(declare-fun m!6020372 () Bool)

(assert (=> b!4988345 m!6020372))

(assert (=> b!4988345 m!6020040))

(declare-fun m!6020374 () Bool)

(assert (=> bm!348183 m!6020374))

(assert (=> bm!348190 m!6020354))

(declare-fun m!6020376 () Bool)

(assert (=> b!4988346 m!6020376))

(declare-fun m!6020378 () Bool)

(assert (=> bm!348184 m!6020378))

(assert (=> b!4988178 d!1606299))

(declare-fun d!1606313 () Bool)

(declare-fun e!3117616 () Bool)

(assert (=> d!1606313 e!3117616))

(declare-fun res!2129534 () Bool)

(assert (=> d!1606313 (=> res!2129534 e!3117616)))

(assert (=> d!1606313 (= res!2129534 (isEmpty!31194 (_1!34653 (findLongestMatchInner!1921 (regex!8479 rule!200) Nil!57630 (size!38298 Nil!57630) lt!2061999 lt!2061999 (size!38298 lt!2061999)))))))

(declare-fun lt!2062205 () Unit!148799)

(declare-fun choose!36883 (Regex!13712 List!57754) Unit!148799)

(assert (=> d!1606313 (= lt!2062205 (choose!36883 (regex!8479 rule!200) lt!2061999))))

(assert (=> d!1606313 (validRegex!6011 (regex!8479 rule!200))))

(assert (=> d!1606313 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1882 (regex!8479 rule!200) lt!2061999) lt!2062205)))

(declare-fun b!4988385 () Bool)

(assert (=> b!4988385 (= e!3117616 (matchR!6704 (regex!8479 rule!200) (_1!34653 (findLongestMatchInner!1921 (regex!8479 rule!200) Nil!57630 (size!38298 Nil!57630) lt!2061999 lt!2061999 (size!38298 lt!2061999)))))))

(assert (= (and d!1606313 (not res!2129534)) b!4988385))

(declare-fun m!6020380 () Bool)

(assert (=> d!1606313 m!6020380))

(assert (=> d!1606313 m!6020226))

(assert (=> d!1606313 m!6020040))

(assert (=> d!1606313 m!6020046))

(assert (=> d!1606313 m!6020048))

(assert (=> d!1606313 m!6020040))

(assert (=> d!1606313 m!6020046))

(assert (=> d!1606313 m!6020264))

(assert (=> b!4988385 m!6020040))

(assert (=> b!4988385 m!6020046))

(assert (=> b!4988385 m!6020040))

(assert (=> b!4988385 m!6020046))

(assert (=> b!4988385 m!6020048))

(assert (=> b!4988385 m!6020204))

(assert (=> b!4988178 d!1606313))

(declare-fun d!1606315 () Bool)

(declare-fun lt!2062208 () Int)

(assert (=> d!1606315 (>= lt!2062208 0)))

(declare-fun e!3117619 () Int)

(assert (=> d!1606315 (= lt!2062208 e!3117619)))

(declare-fun c!851227 () Bool)

(assert (=> d!1606315 (= c!851227 (is-Nil!57630 Nil!57630))))

(assert (=> d!1606315 (= (size!38298 Nil!57630) lt!2062208)))

(declare-fun b!4988390 () Bool)

(assert (=> b!4988390 (= e!3117619 0)))

(declare-fun b!4988391 () Bool)

(assert (=> b!4988391 (= e!3117619 (+ 1 (size!38298 (t!370060 Nil!57630))))))

(assert (= (and d!1606315 c!851227) b!4988390))

(assert (= (and d!1606315 (not c!851227)) b!4988391))

(declare-fun m!6020382 () Bool)

(assert (=> b!4988391 m!6020382))

(assert (=> b!4988178 d!1606315))

(declare-fun d!1606317 () Bool)

(declare-fun e!3117629 () Bool)

(assert (=> d!1606317 e!3117629))

(declare-fun res!2129545 () Bool)

(assert (=> d!1606317 (=> (not res!2129545) (not e!3117629))))

(assert (=> d!1606317 (= res!2129545 (semiInverseModEq!3772 (toChars!11351 (transformation!8479 rule!200)) (toValue!11492 (transformation!8479 rule!200))))))

(declare-fun Unit!148807 () Unit!148799)

(assert (=> d!1606317 (= (lemmaInv!1398 (transformation!8479 rule!200)) Unit!148807)))

(declare-fun b!4988408 () Bool)

(declare-fun equivClasses!3591 (Int Int) Bool)

(assert (=> b!4988408 (= e!3117629 (equivClasses!3591 (toChars!11351 (transformation!8479 rule!200)) (toValue!11492 (transformation!8479 rule!200))))))

(assert (= (and d!1606317 res!2129545) b!4988408))

(assert (=> d!1606317 m!6020042))

(declare-fun m!6020384 () Bool)

(assert (=> b!4988408 m!6020384))

(assert (=> b!4988178 d!1606317))

(declare-fun d!1606319 () Bool)

(assert (=> d!1606319 (= (isEmpty!31194 (_1!34653 lt!2062008)) (is-Nil!57630 (_1!34653 lt!2062008)))))

(assert (=> b!4988178 d!1606319))

(declare-fun bs!1184806 () Bool)

(declare-fun d!1606321 () Bool)

(assert (= bs!1184806 (and d!1606321 b!4988168)))

(declare-fun lambda!248129 () Int)

(assert (=> bs!1184806 (= lambda!248129 lambda!248119)))

(assert (=> d!1606321 true))

(assert (=> d!1606321 (< (dynLambda!23494 order!26667 (toChars!11351 (transformation!8479 rule!200))) (dynLambda!23493 order!26665 lambda!248129))))

(assert (=> d!1606321 true))

(assert (=> d!1606321 (< (dynLambda!23492 order!26663 (toValue!11492 (transformation!8479 rule!200))) (dynLambda!23493 order!26665 lambda!248129))))

(assert (=> d!1606321 (= (semiInverseModEq!3772 (toChars!11351 (transformation!8479 rule!200)) (toValue!11492 (transformation!8479 rule!200))) (Forall!1827 lambda!248129))))

(declare-fun bs!1184807 () Bool)

(assert (= bs!1184807 d!1606321))

(declare-fun m!6020400 () Bool)

(assert (=> bs!1184807 m!6020400))

(assert (=> b!4988178 d!1606321))

(declare-fun d!1606325 () Bool)

(declare-fun lt!2062210 () Int)

(assert (=> d!1606325 (>= lt!2062210 0)))

(declare-fun e!3117630 () Int)

(assert (=> d!1606325 (= lt!2062210 e!3117630)))

(declare-fun c!851231 () Bool)

(assert (=> d!1606325 (= c!851231 (is-Nil!57630 lt!2061999))))

(assert (=> d!1606325 (= (size!38298 lt!2061999) lt!2062210)))

(declare-fun b!4988413 () Bool)

(assert (=> b!4988413 (= e!3117630 0)))

(declare-fun b!4988414 () Bool)

(assert (=> b!4988414 (= e!3117630 (+ 1 (size!38298 (t!370060 lt!2061999))))))

(assert (= (and d!1606325 c!851231) b!4988413))

(assert (= (and d!1606325 (not c!851231)) b!4988414))

(declare-fun m!6020402 () Bool)

(assert (=> b!4988414 m!6020402))

(assert (=> b!4988178 d!1606325))

(declare-fun d!1606327 () Bool)

(declare-fun isBalanced!4245 (Conc!15231) Bool)

(assert (=> d!1606327 (= (inv!75594 totalInput!520) (isBalanced!4245 (c!851191 totalInput!520)))))

(declare-fun bs!1184808 () Bool)

(assert (= bs!1184808 d!1606327))

(declare-fun m!6020404 () Bool)

(assert (=> bs!1184808 m!6020404))

(assert (=> start!527236 d!1606327))

(declare-fun d!1606329 () Bool)

(assert (=> d!1606329 (= (inv!75594 input!1580) (isBalanced!4245 (c!851191 input!1580)))))

(declare-fun bs!1184809 () Bool)

(assert (= bs!1184809 d!1606329))

(declare-fun m!6020406 () Bool)

(assert (=> bs!1184809 m!6020406))

(assert (=> start!527236 d!1606329))

(declare-fun d!1606331 () Bool)

(declare-fun choose!36884 (Int) Bool)

(assert (=> d!1606331 (= (Forall!1827 lambda!248119) (choose!36884 lambda!248119))))

(declare-fun bs!1184810 () Bool)

(assert (= bs!1184810 d!1606331))

(declare-fun m!6020408 () Bool)

(assert (=> bs!1184810 m!6020408))

(assert (=> b!4988168 d!1606331))

(declare-fun d!1606333 () Bool)

(assert (=> d!1606333 (= (apply!13964 (transformation!8479 rule!200) lt!2062006) (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) lt!2062006))))

(declare-fun b_lambda!198513 () Bool)

(assert (=> (not b_lambda!198513) (not d!1606333)))

(declare-fun t!370069 () Bool)

(declare-fun tb!261803 () Bool)

(assert (=> (and b!4988180 (= (toValue!11492 (transformation!8479 rule!200)) (toValue!11492 (transformation!8479 rule!200))) t!370069) tb!261803))

(declare-fun result!327286 () Bool)

(assert (=> tb!261803 (= result!327286 (inv!21 (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) lt!2062006)))))

(declare-fun m!6020410 () Bool)

(assert (=> tb!261803 m!6020410))

(assert (=> d!1606333 t!370069))

(declare-fun b_and!350063 () Bool)

(assert (= b_and!350059 (and (=> t!370069 result!327286) b_and!350063)))

(declare-fun m!6020412 () Bool)

(assert (=> d!1606333 m!6020412))

(assert (=> b!4988179 d!1606333))

(declare-fun b!4988435 () Bool)

(declare-fun e!3117645 () Bool)

(assert (=> b!4988435 (= e!3117645 true)))

(declare-fun d!1606335 () Bool)

(assert (=> d!1606335 e!3117645))

(assert (= d!1606335 b!4988435))

(declare-fun order!26675 () Int)

(declare-fun lambda!248132 () Int)

(declare-fun dynLambda!23500 (Int Int) Int)

(assert (=> b!4988435 (< (dynLambda!23492 order!26663 (toValue!11492 (transformation!8479 rule!200))) (dynLambda!23500 order!26675 lambda!248132))))

(assert (=> b!4988435 (< (dynLambda!23494 order!26667 (toChars!11351 (transformation!8479 rule!200))) (dynLambda!23500 order!26675 lambda!248132))))

(assert (=> d!1606335 (= (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) (_1!34654 lt!2062000)) (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) lt!2062006))))

(declare-fun lt!2062216 () Unit!148799)

(declare-fun Forall2of!499 (Int BalanceConc!29892 BalanceConc!29892) Unit!148799)

(assert (=> d!1606335 (= lt!2062216 (Forall2of!499 lambda!248132 (_1!34654 lt!2062000) lt!2062006))))

(assert (=> d!1606335 (= (list!18511 (_1!34654 lt!2062000)) (list!18511 lt!2062006))))

(assert (=> d!1606335 (= (lemmaEqSameImage!1212 (transformation!8479 rule!200) (_1!34654 lt!2062000) lt!2062006) lt!2062216)))

(declare-fun b_lambda!198515 () Bool)

(assert (=> (not b_lambda!198515) (not d!1606335)))

(assert (=> d!1606335 t!370065))

(declare-fun b_and!350065 () Bool)

(assert (= b_and!350063 (and (=> t!370065 result!327278) b_and!350065)))

(declare-fun b_lambda!198517 () Bool)

(assert (=> (not b_lambda!198517) (not d!1606335)))

(assert (=> d!1606335 t!370069))

(declare-fun b_and!350067 () Bool)

(assert (= b_and!350065 (and (=> t!370069 result!327286) b_and!350067)))

(assert (=> d!1606335 m!6020090))

(assert (=> d!1606335 m!6020072))

(declare-fun m!6020428 () Bool)

(assert (=> d!1606335 m!6020428))

(assert (=> d!1606335 m!6020412))

(assert (=> d!1606335 m!6020194))

(assert (=> b!4988179 d!1606335))

(declare-fun d!1606347 () Bool)

(assert (=> d!1606347 (= (get!20057 lt!2062004) (v!50565 lt!2062004))))

(assert (=> b!4988169 d!1606347))

(declare-fun b!4988468 () Bool)

(declare-fun e!3117664 () Bool)

(declare-fun lt!2062222 () Bool)

(declare-fun call!348201 () Bool)

(assert (=> b!4988468 (= e!3117664 (= lt!2062222 call!348201))))

(declare-fun b!4988469 () Bool)

(declare-fun res!2129574 () Bool)

(declare-fun e!3117666 () Bool)

(assert (=> b!4988469 (=> res!2129574 e!3117666)))

(declare-fun e!3117665 () Bool)

(assert (=> b!4988469 (= res!2129574 e!3117665)))

(declare-fun res!2129573 () Bool)

(assert (=> b!4988469 (=> (not res!2129573) (not e!3117665))))

(assert (=> b!4988469 (= res!2129573 lt!2062222)))

(declare-fun b!4988470 () Bool)

(declare-fun res!2129577 () Bool)

(assert (=> b!4988470 (=> (not res!2129577) (not e!3117665))))

(assert (=> b!4988470 (= res!2129577 (isEmpty!31194 (tail!9841 (_1!34653 lt!2062008))))))

(declare-fun b!4988471 () Bool)

(declare-fun e!3117667 () Bool)

(assert (=> b!4988471 (= e!3117667 (nullable!4662 (regex!8479 rule!200)))))

(declare-fun d!1606351 () Bool)

(assert (=> d!1606351 e!3117664))

(declare-fun c!851246 () Bool)

(assert (=> d!1606351 (= c!851246 (is-EmptyExpr!13712 (regex!8479 rule!200)))))

(assert (=> d!1606351 (= lt!2062222 e!3117667)))

(declare-fun c!851245 () Bool)

(assert (=> d!1606351 (= c!851245 (isEmpty!31194 (_1!34653 lt!2062008)))))

(assert (=> d!1606351 (validRegex!6011 (regex!8479 rule!200))))

(assert (=> d!1606351 (= (matchR!6704 (regex!8479 rule!200) (_1!34653 lt!2062008)) lt!2062222)))

(declare-fun b!4988472 () Bool)

(declare-fun e!3117668 () Bool)

(assert (=> b!4988472 (= e!3117666 e!3117668)))

(declare-fun res!2129571 () Bool)

(assert (=> b!4988472 (=> (not res!2129571) (not e!3117668))))

(assert (=> b!4988472 (= res!2129571 (not lt!2062222))))

(declare-fun b!4988473 () Bool)

(declare-fun e!3117669 () Bool)

(assert (=> b!4988473 (= e!3117664 e!3117669)))

(declare-fun c!851244 () Bool)

(assert (=> b!4988473 (= c!851244 (is-EmptyLang!13712 (regex!8479 rule!200)))))

(declare-fun b!4988474 () Bool)

(assert (=> b!4988474 (= e!3117669 (not lt!2062222))))

(declare-fun b!4988475 () Bool)

(declare-fun res!2129572 () Bool)

(assert (=> b!4988475 (=> res!2129572 e!3117666)))

(assert (=> b!4988475 (= res!2129572 (not (is-ElementMatch!13712 (regex!8479 rule!200))))))

(assert (=> b!4988475 (= e!3117669 e!3117666)))

(declare-fun b!4988476 () Bool)

(declare-fun res!2129575 () Bool)

(assert (=> b!4988476 (=> (not res!2129575) (not e!3117665))))

(assert (=> b!4988476 (= res!2129575 (not call!348201))))

(declare-fun b!4988477 () Bool)

(declare-fun res!2129570 () Bool)

(declare-fun e!3117663 () Bool)

(assert (=> b!4988477 (=> res!2129570 e!3117663)))

(assert (=> b!4988477 (= res!2129570 (not (isEmpty!31194 (tail!9841 (_1!34653 lt!2062008)))))))

(declare-fun b!4988478 () Bool)

(assert (=> b!4988478 (= e!3117665 (= (head!10708 (_1!34653 lt!2062008)) (c!851190 (regex!8479 rule!200))))))

(declare-fun b!4988479 () Bool)

(assert (=> b!4988479 (= e!3117663 (not (= (head!10708 (_1!34653 lt!2062008)) (c!851190 (regex!8479 rule!200)))))))

(declare-fun bm!348196 () Bool)

(assert (=> bm!348196 (= call!348201 (isEmpty!31194 (_1!34653 lt!2062008)))))

(declare-fun b!4988480 () Bool)

(assert (=> b!4988480 (= e!3117668 e!3117663)))

(declare-fun res!2129576 () Bool)

(assert (=> b!4988480 (=> res!2129576 e!3117663)))

(assert (=> b!4988480 (= res!2129576 call!348201)))

(declare-fun b!4988481 () Bool)

(assert (=> b!4988481 (= e!3117667 (matchR!6704 (derivativeStep!3960 (regex!8479 rule!200) (head!10708 (_1!34653 lt!2062008))) (tail!9841 (_1!34653 lt!2062008))))))

(assert (= (and d!1606351 c!851245) b!4988471))

(assert (= (and d!1606351 (not c!851245)) b!4988481))

(assert (= (and d!1606351 c!851246) b!4988468))

(assert (= (and d!1606351 (not c!851246)) b!4988473))

(assert (= (and b!4988473 c!851244) b!4988474))

(assert (= (and b!4988473 (not c!851244)) b!4988475))

(assert (= (and b!4988475 (not res!2129572)) b!4988469))

(assert (= (and b!4988469 res!2129573) b!4988476))

(assert (= (and b!4988476 res!2129575) b!4988470))

(assert (= (and b!4988470 res!2129577) b!4988478))

(assert (= (and b!4988469 (not res!2129574)) b!4988472))

(assert (= (and b!4988472 res!2129571) b!4988480))

(assert (= (and b!4988480 (not res!2129576)) b!4988477))

(assert (= (and b!4988477 (not res!2129570)) b!4988479))

(assert (= (or b!4988468 b!4988480 b!4988476) bm!348196))

(declare-fun m!6020432 () Bool)

(assert (=> b!4988479 m!6020432))

(assert (=> b!4988481 m!6020432))

(assert (=> b!4988481 m!6020432))

(declare-fun m!6020434 () Bool)

(assert (=> b!4988481 m!6020434))

(declare-fun m!6020436 () Bool)

(assert (=> b!4988481 m!6020436))

(assert (=> b!4988481 m!6020434))

(assert (=> b!4988481 m!6020436))

(declare-fun m!6020438 () Bool)

(assert (=> b!4988481 m!6020438))

(assert (=> b!4988478 m!6020432))

(assert (=> b!4988471 m!6020326))

(assert (=> b!4988477 m!6020436))

(assert (=> b!4988477 m!6020436))

(declare-fun m!6020440 () Bool)

(assert (=> b!4988477 m!6020440))

(assert (=> d!1606351 m!6020050))

(assert (=> d!1606351 m!6020264))

(assert (=> bm!348196 m!6020050))

(assert (=> b!4988470 m!6020436))

(assert (=> b!4988470 m!6020436))

(assert (=> b!4988470 m!6020440))

(assert (=> b!4988170 d!1606351))

(declare-fun d!1606353 () Bool)

(declare-fun res!2129582 () Bool)

(declare-fun e!3117672 () Bool)

(assert (=> d!1606353 (=> (not res!2129582) (not e!3117672))))

(assert (=> d!1606353 (= res!2129582 (validRegex!6011 (regex!8479 rule!200)))))

(assert (=> d!1606353 (= (ruleValid!3887 thiss!16165 rule!200) e!3117672)))

(declare-fun b!4988486 () Bool)

(declare-fun res!2129583 () Bool)

(assert (=> b!4988486 (=> (not res!2129583) (not e!3117672))))

(assert (=> b!4988486 (= res!2129583 (not (nullable!4662 (regex!8479 rule!200))))))

(declare-fun b!4988487 () Bool)

(assert (=> b!4988487 (= e!3117672 (not (= (tag!9343 rule!200) (String!65821 ""))))))

(assert (= (and d!1606353 res!2129582) b!4988486))

(assert (= (and b!4988486 res!2129583) b!4988487))

(assert (=> d!1606353 m!6020264))

(assert (=> b!4988486 m!6020326))

(assert (=> b!4988181 d!1606353))

(declare-fun d!1606355 () Bool)

(declare-fun res!2129588 () Bool)

(declare-fun e!3117675 () Bool)

(assert (=> d!1606355 (=> (not res!2129588) (not e!3117675))))

(assert (=> d!1606355 (= res!2129588 (not (isEmpty!31194 (originalCharacters!8736 lt!2061998))))))

(assert (=> d!1606355 (= (inv!75592 lt!2061998) e!3117675)))

(declare-fun b!4988492 () Bool)

(declare-fun res!2129589 () Bool)

(assert (=> b!4988492 (=> (not res!2129589) (not e!3117675))))

(declare-fun dynLambda!23501 (Int TokenValue!8789) BalanceConc!29892)

(assert (=> b!4988492 (= res!2129589 (= (originalCharacters!8736 lt!2061998) (list!18511 (dynLambda!23501 (toChars!11351 (transformation!8479 (rule!11749 lt!2061998))) (value!271071 lt!2061998)))))))

(declare-fun b!4988493 () Bool)

(assert (=> b!4988493 (= e!3117675 (= (size!38296 lt!2061998) (size!38298 (originalCharacters!8736 lt!2061998))))))

(assert (= (and d!1606355 res!2129588) b!4988492))

(assert (= (and b!4988492 res!2129589) b!4988493))

(declare-fun b_lambda!198519 () Bool)

(assert (=> (not b_lambda!198519) (not b!4988492)))

(declare-fun tb!261805 () Bool)

(declare-fun t!370071 () Bool)

(assert (=> (and b!4988180 (= (toChars!11351 (transformation!8479 rule!200)) (toChars!11351 (transformation!8479 (rule!11749 lt!2061998)))) t!370071) tb!261805))

(declare-fun b!4988498 () Bool)

(declare-fun e!3117678 () Bool)

(declare-fun tp!1397881 () Bool)

(assert (=> b!4988498 (= e!3117678 (and (inv!75595 (c!851191 (dynLambda!23501 (toChars!11351 (transformation!8479 (rule!11749 lt!2061998))) (value!271071 lt!2061998)))) tp!1397881))))

(declare-fun result!327288 () Bool)

(assert (=> tb!261805 (= result!327288 (and (inv!75594 (dynLambda!23501 (toChars!11351 (transformation!8479 (rule!11749 lt!2061998))) (value!271071 lt!2061998))) e!3117678))))

(assert (= tb!261805 b!4988498))

(declare-fun m!6020442 () Bool)

(assert (=> b!4988498 m!6020442))

(declare-fun m!6020444 () Bool)

(assert (=> tb!261805 m!6020444))

(assert (=> b!4988492 t!370071))

(declare-fun b_and!350069 () Bool)

(assert (= b_and!350053 (and (=> t!370071 result!327288) b_and!350069)))

(declare-fun m!6020446 () Bool)

(assert (=> d!1606355 m!6020446))

(declare-fun m!6020448 () Bool)

(assert (=> b!4988492 m!6020448))

(assert (=> b!4988492 m!6020448))

(declare-fun m!6020450 () Bool)

(assert (=> b!4988492 m!6020450))

(declare-fun m!6020452 () Bool)

(assert (=> b!4988493 m!6020452))

(assert (=> b!4988171 d!1606355))

(declare-fun d!1606357 () Bool)

(declare-fun e!3117681 () Bool)

(assert (=> d!1606357 e!3117681))

(declare-fun res!2129592 () Bool)

(assert (=> d!1606357 (=> res!2129592 e!3117681)))

(declare-fun lt!2062225 () Bool)

(assert (=> d!1606357 (= res!2129592 (not lt!2062225))))

(declare-fun drop!2393 (List!57754 Int) List!57754)

(assert (=> d!1606357 (= lt!2062225 (= lt!2061999 (drop!2393 (list!18511 totalInput!520) (- (size!38298 (list!18511 totalInput!520)) (size!38298 lt!2061999)))))))

(assert (=> d!1606357 (= (isSuffix!1278 lt!2061999 (list!18511 totalInput!520)) lt!2062225)))

(declare-fun b!4988501 () Bool)

(assert (=> b!4988501 (= e!3117681 (>= (size!38298 (list!18511 totalInput!520)) (size!38298 lt!2061999)))))

(assert (= (and d!1606357 (not res!2129592)) b!4988501))

(assert (=> d!1606357 m!6020096))

(declare-fun m!6020454 () Bool)

(assert (=> d!1606357 m!6020454))

(assert (=> d!1606357 m!6020046))

(assert (=> d!1606357 m!6020096))

(declare-fun m!6020456 () Bool)

(assert (=> d!1606357 m!6020456))

(assert (=> b!4988501 m!6020096))

(assert (=> b!4988501 m!6020454))

(assert (=> b!4988501 m!6020046))

(assert (=> b!4988182 d!1606357))

(declare-fun d!1606359 () Bool)

(assert (=> d!1606359 (= (list!18511 totalInput!520) (list!18513 (c!851191 totalInput!520)))))

(declare-fun bs!1184814 () Bool)

(assert (= bs!1184814 d!1606359))

(declare-fun m!6020458 () Bool)

(assert (=> bs!1184814 m!6020458))

(assert (=> b!4988182 d!1606359))

(declare-fun d!1606361 () Bool)

(assert (=> d!1606361 (= (list!18511 input!1580) (list!18513 (c!851191 input!1580)))))

(declare-fun bs!1184815 () Bool)

(assert (= bs!1184815 d!1606361))

(declare-fun m!6020460 () Bool)

(assert (=> bs!1184815 m!6020460))

(assert (=> b!4988182 d!1606361))

(declare-fun d!1606363 () Bool)

(assert (=> d!1606363 (= (inv!75589 (tag!9343 rule!200)) (= (mod (str.len (value!271045 (tag!9343 rule!200))) 2) 0))))

(assert (=> b!4988172 d!1606363))

(declare-fun d!1606365 () Bool)

(declare-fun res!2129595 () Bool)

(declare-fun e!3117684 () Bool)

(assert (=> d!1606365 (=> (not res!2129595) (not e!3117684))))

(assert (=> d!1606365 (= res!2129595 (semiInverseModEq!3772 (toChars!11351 (transformation!8479 rule!200)) (toValue!11492 (transformation!8479 rule!200))))))

(assert (=> d!1606365 (= (inv!75593 (transformation!8479 rule!200)) e!3117684)))

(declare-fun b!4988504 () Bool)

(assert (=> b!4988504 (= e!3117684 (equivClasses!3591 (toChars!11351 (transformation!8479 rule!200)) (toValue!11492 (transformation!8479 rule!200))))))

(assert (= (and d!1606365 res!2129595) b!4988504))

(assert (=> d!1606365 m!6020042))

(assert (=> b!4988504 m!6020384))

(assert (=> b!4988172 d!1606365))

(declare-fun d!1606367 () Bool)

(assert (=> d!1606367 (= (get!20058 lt!2062005) (v!50566 lt!2062005))))

(assert (=> b!4988183 d!1606367))

(declare-fun d!1606369 () Bool)

(declare-fun c!851249 () Bool)

(assert (=> d!1606369 (= c!851249 (is-Node!15231 (c!851191 totalInput!520)))))

(declare-fun e!3117689 () Bool)

(assert (=> d!1606369 (= (inv!75595 (c!851191 totalInput!520)) e!3117689)))

(declare-fun b!4988511 () Bool)

(declare-fun inv!75600 (Conc!15231) Bool)

(assert (=> b!4988511 (= e!3117689 (inv!75600 (c!851191 totalInput!520)))))

(declare-fun b!4988512 () Bool)

(declare-fun e!3117690 () Bool)

(assert (=> b!4988512 (= e!3117689 e!3117690)))

(declare-fun res!2129598 () Bool)

(assert (=> b!4988512 (= res!2129598 (not (is-Leaf!25296 (c!851191 totalInput!520))))))

(assert (=> b!4988512 (=> res!2129598 e!3117690)))

(declare-fun b!4988513 () Bool)

(declare-fun inv!75601 (Conc!15231) Bool)

(assert (=> b!4988513 (= e!3117690 (inv!75601 (c!851191 totalInput!520)))))

(assert (= (and d!1606369 c!851249) b!4988511))

(assert (= (and d!1606369 (not c!851249)) b!4988512))

(assert (= (and b!4988512 (not res!2129598)) b!4988513))

(declare-fun m!6020462 () Bool)

(assert (=> b!4988511 m!6020462))

(declare-fun m!6020464 () Bool)

(assert (=> b!4988513 m!6020464))

(assert (=> b!4988173 d!1606369))

(declare-fun d!1606371 () Bool)

(assert (=> d!1606371 (= (list!18511 (_2!34651 lt!2062012)) (list!18513 (c!851191 (_2!34651 lt!2062012))))))

(declare-fun bs!1184816 () Bool)

(assert (= bs!1184816 d!1606371))

(declare-fun m!6020466 () Bool)

(assert (=> bs!1184816 m!6020466))

(assert (=> b!4988184 d!1606371))

(declare-fun d!1606373 () Bool)

(declare-fun c!851250 () Bool)

(assert (=> d!1606373 (= c!851250 (is-Node!15231 (c!851191 input!1580)))))

(declare-fun e!3117691 () Bool)

(assert (=> d!1606373 (= (inv!75595 (c!851191 input!1580)) e!3117691)))

(declare-fun b!4988514 () Bool)

(assert (=> b!4988514 (= e!3117691 (inv!75600 (c!851191 input!1580)))))

(declare-fun b!4988515 () Bool)

(declare-fun e!3117692 () Bool)

(assert (=> b!4988515 (= e!3117691 e!3117692)))

(declare-fun res!2129599 () Bool)

(assert (=> b!4988515 (= res!2129599 (not (is-Leaf!25296 (c!851191 input!1580))))))

(assert (=> b!4988515 (=> res!2129599 e!3117692)))

(declare-fun b!4988516 () Bool)

(assert (=> b!4988516 (= e!3117692 (inv!75601 (c!851191 input!1580)))))

(assert (= (and d!1606373 c!851250) b!4988514))

(assert (= (and d!1606373 (not c!851250)) b!4988515))

(assert (= (and b!4988515 (not res!2129599)) b!4988516))

(declare-fun m!6020468 () Bool)

(assert (=> b!4988514 m!6020468))

(declare-fun m!6020470 () Bool)

(assert (=> b!4988516 m!6020470))

(assert (=> b!4988174 d!1606373))

(declare-fun b!4988527 () Bool)

(declare-fun e!3117695 () Bool)

(declare-fun tp_is_empty!36425 () Bool)

(assert (=> b!4988527 (= e!3117695 tp_is_empty!36425)))

(declare-fun b!4988530 () Bool)

(declare-fun tp!1397896 () Bool)

(declare-fun tp!1397893 () Bool)

(assert (=> b!4988530 (= e!3117695 (and tp!1397896 tp!1397893))))

(declare-fun b!4988528 () Bool)

(declare-fun tp!1397892 () Bool)

(declare-fun tp!1397895 () Bool)

(assert (=> b!4988528 (= e!3117695 (and tp!1397892 tp!1397895))))

(assert (=> b!4988172 (= tp!1397859 e!3117695)))

(declare-fun b!4988529 () Bool)

(declare-fun tp!1397894 () Bool)

(assert (=> b!4988529 (= e!3117695 tp!1397894)))

(assert (= (and b!4988172 (is-ElementMatch!13712 (regex!8479 rule!200))) b!4988527))

(assert (= (and b!4988172 (is-Concat!22501 (regex!8479 rule!200))) b!4988528))

(assert (= (and b!4988172 (is-Star!13712 (regex!8479 rule!200))) b!4988529))

(assert (= (and b!4988172 (is-Union!13712 (regex!8479 rule!200))) b!4988530))

(declare-fun tp!1397904 () Bool)

(declare-fun e!3117701 () Bool)

(declare-fun b!4988539 () Bool)

(declare-fun tp!1397903 () Bool)

(assert (=> b!4988539 (= e!3117701 (and (inv!75595 (left!42171 (c!851191 totalInput!520))) tp!1397903 (inv!75595 (right!42501 (c!851191 totalInput!520))) tp!1397904))))

(declare-fun b!4988541 () Bool)

(declare-fun e!3117700 () Bool)

(declare-fun tp!1397905 () Bool)

(assert (=> b!4988541 (= e!3117700 tp!1397905)))

(declare-fun b!4988540 () Bool)

(declare-fun inv!75602 (IArray!30523) Bool)

(assert (=> b!4988540 (= e!3117701 (and (inv!75602 (xs!18557 (c!851191 totalInput!520))) e!3117700))))

(assert (=> b!4988173 (= tp!1397861 (and (inv!75595 (c!851191 totalInput!520)) e!3117701))))

(assert (= (and b!4988173 (is-Node!15231 (c!851191 totalInput!520))) b!4988539))

(assert (= b!4988540 b!4988541))

(assert (= (and b!4988173 (is-Leaf!25296 (c!851191 totalInput!520))) b!4988540))

(declare-fun m!6020472 () Bool)

(assert (=> b!4988539 m!6020472))

(declare-fun m!6020474 () Bool)

(assert (=> b!4988539 m!6020474))

(declare-fun m!6020476 () Bool)

(assert (=> b!4988540 m!6020476))

(assert (=> b!4988173 m!6020086))

(declare-fun tp!1397906 () Bool)

(declare-fun b!4988542 () Bool)

(declare-fun e!3117703 () Bool)

(declare-fun tp!1397907 () Bool)

(assert (=> b!4988542 (= e!3117703 (and (inv!75595 (left!42171 (c!851191 input!1580))) tp!1397906 (inv!75595 (right!42501 (c!851191 input!1580))) tp!1397907))))

(declare-fun b!4988544 () Bool)

(declare-fun e!3117702 () Bool)

(declare-fun tp!1397908 () Bool)

(assert (=> b!4988544 (= e!3117702 tp!1397908)))

(declare-fun b!4988543 () Bool)

(assert (=> b!4988543 (= e!3117703 (and (inv!75602 (xs!18557 (c!851191 input!1580))) e!3117702))))

(assert (=> b!4988174 (= tp!1397860 (and (inv!75595 (c!851191 input!1580)) e!3117703))))

(assert (= (and b!4988174 (is-Node!15231 (c!851191 input!1580))) b!4988542))

(assert (= b!4988543 b!4988544))

(assert (= (and b!4988174 (is-Leaf!25296 (c!851191 input!1580))) b!4988543))

(declare-fun m!6020478 () Bool)

(assert (=> b!4988542 m!6020478))

(declare-fun m!6020480 () Bool)

(assert (=> b!4988542 m!6020480))

(declare-fun m!6020482 () Bool)

(assert (=> b!4988543 m!6020482))

(assert (=> b!4988174 m!6020106))

(declare-fun b_lambda!198521 () Bool)

(assert (= b_lambda!198505 (or b!4988168 b_lambda!198521)))

(declare-fun bs!1184817 () Bool)

(declare-fun d!1606375 () Bool)

(assert (= bs!1184817 (and d!1606375 b!4988168)))

(assert (=> bs!1184817 (= (dynLambda!23498 lambda!248119 lt!2062006) (= (list!18511 (dynLambda!23501 (toChars!11351 (transformation!8479 rule!200)) (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) lt!2062006))) (list!18511 lt!2062006)))))

(declare-fun b_lambda!198533 () Bool)

(assert (=> (not b_lambda!198533) (not bs!1184817)))

(declare-fun t!370073 () Bool)

(declare-fun tb!261807 () Bool)

(assert (=> (and b!4988180 (= (toChars!11351 (transformation!8479 rule!200)) (toChars!11351 (transformation!8479 rule!200))) t!370073) tb!261807))

(declare-fun tp!1397909 () Bool)

(declare-fun e!3117704 () Bool)

(declare-fun b!4988545 () Bool)

(assert (=> b!4988545 (= e!3117704 (and (inv!75595 (c!851191 (dynLambda!23501 (toChars!11351 (transformation!8479 rule!200)) (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) lt!2062006)))) tp!1397909))))

(declare-fun result!327296 () Bool)

(assert (=> tb!261807 (= result!327296 (and (inv!75594 (dynLambda!23501 (toChars!11351 (transformation!8479 rule!200)) (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) lt!2062006))) e!3117704))))

(assert (= tb!261807 b!4988545))

(declare-fun m!6020484 () Bool)

(assert (=> b!4988545 m!6020484))

(declare-fun m!6020486 () Bool)

(assert (=> tb!261807 m!6020486))

(assert (=> bs!1184817 t!370073))

(declare-fun b_and!350071 () Bool)

(assert (= b_and!350069 (and (=> t!370073 result!327296) b_and!350071)))

(declare-fun b_lambda!198535 () Bool)

(assert (=> (not b_lambda!198535) (not bs!1184817)))

(assert (=> bs!1184817 t!370069))

(declare-fun b_and!350073 () Bool)

(assert (= b_and!350067 (and (=> t!370069 result!327286) b_and!350073)))

(assert (=> bs!1184817 m!6020412))

(declare-fun m!6020488 () Bool)

(assert (=> bs!1184817 m!6020488))

(assert (=> bs!1184817 m!6020090))

(assert (=> bs!1184817 m!6020488))

(declare-fun m!6020490 () Bool)

(assert (=> bs!1184817 m!6020490))

(assert (=> bs!1184817 m!6020412))

(assert (=> d!1606269 d!1606375))

(declare-fun b_lambda!198523 () Bool)

(assert (= b_lambda!198503 (or (and b!4988180 b_free!133215) b_lambda!198523)))

(declare-fun b_lambda!198525 () Bool)

(assert (= b_lambda!198501 (or b!4988168 b_lambda!198525)))

(declare-fun bs!1184818 () Bool)

(declare-fun d!1606377 () Bool)

(assert (= bs!1184818 (and d!1606377 b!4988168)))

(assert (=> bs!1184818 (= (dynLambda!23498 lambda!248119 (_1!34654 lt!2062000)) (= (list!18511 (dynLambda!23501 (toChars!11351 (transformation!8479 rule!200)) (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) (_1!34654 lt!2062000)))) (list!18511 (_1!34654 lt!2062000))))))

(declare-fun b_lambda!198537 () Bool)

(assert (=> (not b_lambda!198537) (not bs!1184818)))

(declare-fun t!370075 () Bool)

(declare-fun tb!261809 () Bool)

(assert (=> (and b!4988180 (= (toChars!11351 (transformation!8479 rule!200)) (toChars!11351 (transformation!8479 rule!200))) t!370075) tb!261809))

(declare-fun b!4988546 () Bool)

(declare-fun tp!1397910 () Bool)

(declare-fun e!3117705 () Bool)

(assert (=> b!4988546 (= e!3117705 (and (inv!75595 (c!851191 (dynLambda!23501 (toChars!11351 (transformation!8479 rule!200)) (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) (_1!34654 lt!2062000))))) tp!1397910))))

(declare-fun result!327298 () Bool)

(assert (=> tb!261809 (= result!327298 (and (inv!75594 (dynLambda!23501 (toChars!11351 (transformation!8479 rule!200)) (dynLambda!23499 (toValue!11492 (transformation!8479 rule!200)) (_1!34654 lt!2062000)))) e!3117705))))

(assert (= tb!261809 b!4988546))

(declare-fun m!6020492 () Bool)

(assert (=> b!4988546 m!6020492))

(declare-fun m!6020494 () Bool)

(assert (=> tb!261809 m!6020494))

(assert (=> bs!1184818 t!370075))

(declare-fun b_and!350075 () Bool)

(assert (= b_and!350071 (and (=> t!370075 result!327298) b_and!350075)))

(declare-fun b_lambda!198539 () Bool)

(assert (=> (not b_lambda!198539) (not bs!1184818)))

(assert (=> bs!1184818 t!370065))

(declare-fun b_and!350077 () Bool)

(assert (= b_and!350073 (and (=> t!370065 result!327278) b_and!350077)))

(assert (=> bs!1184818 m!6020194))

(declare-fun m!6020496 () Bool)

(assert (=> bs!1184818 m!6020496))

(assert (=> bs!1184818 m!6020072))

(assert (=> bs!1184818 m!6020496))

(declare-fun m!6020498 () Bool)

(assert (=> bs!1184818 m!6020498))

(assert (=> bs!1184818 m!6020194))

(assert (=> d!1606263 d!1606377))

(declare-fun b_lambda!198527 () Bool)

(assert (= b_lambda!198517 (or (and b!4988180 b_free!133215) b_lambda!198527)))

(declare-fun b_lambda!198529 () Bool)

(assert (= b_lambda!198513 (or (and b!4988180 b_free!133215) b_lambda!198529)))

(declare-fun b_lambda!198531 () Bool)

(assert (= b_lambda!198515 (or (and b!4988180 b_free!133215) b_lambda!198531)))

(push 1)

(assert (not d!1606313))

(assert (not b!4988385))

(assert (not b!4988275))

(assert (not tb!261799))

(assert (not d!1606275))

(assert tp_is_empty!36425)

(assert (not b!4988391))

(assert (not b!4988471))

(assert (not b!4988276))

(assert (not bm!348189))

(assert (not b!4988344))

(assert (not d!1606353))

(assert (not d!1606317))

(assert (not b_lambda!198537))

(assert (not d!1606277))

(assert (not b!4988279))

(assert (not d!1606351))

(assert (not b!4988498))

(assert (not b_next!134007))

(assert (not b_lambda!198523))

(assert (not b!4988492))

(assert (not b!4988486))

(assert (not bm!348196))

(assert (not b!4988173))

(assert (not b!4988543))

(assert (not b!4988414))

(assert (not bm!348187))

(assert b_and!350075)

(assert (not b!4988530))

(assert (not d!1606297))

(assert (not b!4988493))

(assert (not d!1606329))

(assert (not d!1606321))

(assert (not b!4988504))

(assert (not b_lambda!198527))

(assert (not bs!1184818))

(assert (not b_next!134005))

(assert (not d!1606335))

(assert (not d!1606331))

(assert (not b!4988540))

(assert (not b_lambda!198535))

(assert (not b!4988478))

(assert (not b!4988514))

(assert (not b_lambda!198539))

(assert (not bm!348185))

(assert (not d!1606365))

(assert (not d!1606327))

(assert (not b_lambda!198525))

(assert (not b!4988546))

(assert (not d!1606299))

(assert (not d!1606261))

(assert (not d!1606271))

(assert (not b_lambda!198531))

(assert (not b_lambda!198533))

(assert (not d!1606359))

(assert (not b!4988544))

(assert (not b!4988345))

(assert (not bm!348190))

(assert (not tb!261805))

(assert (not b!4988528))

(assert (not b!4988481))

(assert (not bm!348184))

(assert (not b!4988408))

(assert (not b!4988470))

(assert (not b!4988541))

(assert (not b!4988513))

(assert (not b!4988278))

(assert (not b!4988479))

(assert (not bm!348188))

(assert (not d!1606281))

(assert (not b!4988516))

(assert (not b!4988539))

(assert (not tb!261809))

(assert (not b!4988281))

(assert (not b!4988346))

(assert (not b!4988501))

(assert (not d!1606269))

(assert (not b_lambda!198521))

(assert (not d!1606371))

(assert (not bs!1184817))

(assert (not d!1606263))

(assert (not d!1606289))

(assert (not b!4988529))

(assert (not b!4988351))

(assert (not b!4988282))

(assert (not b!4988477))

(assert (not bm!348183))

(assert b_and!350077)

(assert (not b!4988542))

(assert (not b!4988174))

(assert (not b!4988277))

(assert (not b!4988511))

(assert (not bm!348186))

(assert (not d!1606267))

(assert (not d!1606283))

(assert (not tb!261807))

(assert (not d!1606361))

(assert (not d!1606355))

(assert (not d!1606357))

(assert (not b_lambda!198519))

(assert (not b_lambda!198529))

(assert (not b!4988545))

(assert (not b!4988283))

(assert (not tb!261803))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350075)

(assert b_and!350077)

(assert (not b_next!134007))

(assert (not b_next!134005))

(check-sat)

(pop 1)

