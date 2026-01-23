; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!513590 () Bool)

(assert start!513590)

(declare-fun b!4901848 () Bool)

(declare-fun b_free!131767 () Bool)

(declare-fun b_next!132557 () Bool)

(assert (=> b!4901848 (= b_free!131767 (not b_next!132557))))

(declare-fun tp!1379234 () Bool)

(declare-fun b_and!346159 () Bool)

(assert (=> b!4901848 (= tp!1379234 b_and!346159)))

(declare-fun b_free!131769 () Bool)

(declare-fun b_next!132559 () Bool)

(assert (=> b!4901848 (= b_free!131769 (not b_next!132559))))

(declare-fun tp!1379235 () Bool)

(declare-fun b_and!346161 () Bool)

(assert (=> b!4901848 (= tp!1379235 b_and!346161)))

(declare-fun b!4901856 () Bool)

(declare-fun e!3064085 () Bool)

(assert (=> b!4901856 (= e!3064085 true)))

(declare-fun b!4901855 () Bool)

(declare-fun e!3064084 () Bool)

(assert (=> b!4901855 (= e!3064084 e!3064085)))

(declare-fun b!4901843 () Bool)

(assert (=> b!4901843 e!3064084))

(assert (= b!4901855 b!4901856))

(assert (= b!4901843 b!4901855))

(declare-fun lambda!244229 () Int)

(declare-datatypes ((C!26746 0))(
  ( (C!26747 (val!22707 Int)) )
))
(declare-datatypes ((Regex!13274 0))(
  ( (ElementMatch!13274 (c!833149 C!26746)) (Concat!21783 (regOne!27060 Regex!13274) (regTwo!27060 Regex!13274)) (EmptyExpr!13274) (Star!13274 (reg!13603 Regex!13274)) (EmptyLang!13274) (Union!13274 (regOne!27061 Regex!13274) (regTwo!27061 Regex!13274)) )
))
(declare-datatypes ((String!63988 0))(
  ( (String!63989 (value!262789 String)) )
))
(declare-datatypes ((List!56596 0))(
  ( (Nil!56472) (Cons!56472 (h!62920 (_ BitVec 16)) (t!366688 List!56596)) )
))
(declare-datatypes ((TokenValue!8509 0))(
  ( (FloatLiteralValue!17018 (text!60008 List!56596)) (TokenValueExt!8508 (__x!34311 Int)) (Broken!42545 (value!262790 List!56596)) (Object!8632) (End!8509) (Def!8509) (Underscore!8509) (Match!8509) (Else!8509) (Error!8509) (Case!8509) (If!8509) (Extends!8509) (Abstract!8509) (Class!8509) (Val!8509) (DelimiterValue!17018 (del!8569 List!56596)) (KeywordValue!8515 (value!262791 List!56596)) (CommentValue!17018 (value!262792 List!56596)) (WhitespaceValue!17018 (value!262793 List!56596)) (IndentationValue!8509 (value!262794 List!56596)) (String!63990) (Int32!8509) (Broken!42546 (value!262795 List!56596)) (Boolean!8510) (Unit!146565) (OperatorValue!8512 (op!8569 List!56596)) (IdentifierValue!17018 (value!262796 List!56596)) (IdentifierValue!17019 (value!262797 List!56596)) (WhitespaceValue!17019 (value!262798 List!56596)) (True!17018) (False!17018) (Broken!42547 (value!262799 List!56596)) (Broken!42548 (value!262800 List!56596)) (True!17019) (RightBrace!8509) (RightBracket!8509) (Colon!8509) (Null!8509) (Comma!8509) (LeftBracket!8509) (False!17019) (LeftBrace!8509) (ImaginaryLiteralValue!8509 (text!60009 List!56596)) (StringLiteralValue!25527 (value!262801 List!56596)) (EOFValue!8509 (value!262802 List!56596)) (IdentValue!8509 (value!262803 List!56596)) (DelimiterValue!17019 (value!262804 List!56596)) (DedentValue!8509 (value!262805 List!56596)) (NewLineValue!8509 (value!262806 List!56596)) (IntegerValue!25527 (value!262807 (_ BitVec 32)) (text!60010 List!56596)) (IntegerValue!25528 (value!262808 Int) (text!60011 List!56596)) (Times!8509) (Or!8509) (Equal!8509) (Minus!8509) (Broken!42549 (value!262809 List!56596)) (And!8509) (Div!8509) (LessEqual!8509) (Mod!8509) (Concat!21784) (Not!8509) (Plus!8509) (SpaceValue!8509 (value!262810 List!56596)) (IntegerValue!25529 (value!262811 Int) (text!60012 List!56596)) (StringLiteralValue!25528 (text!60013 List!56596)) (FloatLiteralValue!17019 (text!60014 List!56596)) (BytesLiteralValue!8509 (value!262812 List!56596)) (CommentValue!17019 (value!262813 List!56596)) (StringLiteralValue!25529 (value!262814 List!56596)) (ErrorTokenValue!8509 (msg!8570 List!56596)) )
))
(declare-datatypes ((List!56597 0))(
  ( (Nil!56473) (Cons!56473 (h!62921 C!26746) (t!366689 List!56597)) )
))
(declare-datatypes ((IArray!29595 0))(
  ( (IArray!29596 (innerList!14855 List!56597)) )
))
(declare-datatypes ((Conc!14767 0))(
  ( (Node!14767 (left!41043 Conc!14767) (right!41373 Conc!14767) (csize!29764 Int) (cheight!14978 Int)) (Leaf!24584 (xs!18083 IArray!29595) (csize!29765 Int)) (Empty!14767) )
))
(declare-datatypes ((BalanceConc!28964 0))(
  ( (BalanceConc!28965 (c!833150 Conc!14767)) )
))
(declare-datatypes ((TokenValueInjection!16326 0))(
  ( (TokenValueInjection!16327 (toValue!11110 Int) (toChars!10969 Int)) )
))
(declare-datatypes ((Rule!16198 0))(
  ( (Rule!16199 (regex!8199 Regex!13274) (tag!9063 String!63988) (isSeparator!8199 Bool) (transformation!8199 TokenValueInjection!16326)) )
))
(declare-fun rule!164 () Rule!16198)

(declare-fun order!25543 () Int)

(declare-fun order!25545 () Int)

(declare-fun dynLambda!22705 (Int Int) Int)

(declare-fun dynLambda!22706 (Int Int) Int)

(assert (=> b!4901856 (< (dynLambda!22705 order!25543 (toValue!11110 (transformation!8199 rule!164))) (dynLambda!22706 order!25545 lambda!244229))))

(declare-fun order!25547 () Int)

(declare-fun dynLambda!22707 (Int Int) Int)

(assert (=> b!4901856 (< (dynLambda!22707 order!25547 (toChars!10969 (transformation!8199 rule!164))) (dynLambda!22706 order!25545 lambda!244229))))

(declare-fun b!4901840 () Bool)

(declare-fun res!2093731 () Bool)

(declare-fun e!3064078 () Bool)

(assert (=> b!4901840 (=> (not res!2093731) (not e!3064078))))

(declare-datatypes ((LexerInterface!7791 0))(
  ( (LexerInterfaceExt!7788 (__x!34312 Int)) (Lexer!7789) )
))
(declare-fun thiss!15943 () LexerInterface!7791)

(declare-fun ruleValid!3696 (LexerInterface!7791 Rule!16198) Bool)

(assert (=> b!4901840 (= res!2093731 (ruleValid!3696 thiss!15943 rule!164))))

(declare-fun b!4901841 () Bool)

(declare-fun e!3064075 () Bool)

(declare-fun input!1509 () BalanceConc!28964)

(declare-fun tp!1379232 () Bool)

(declare-fun inv!72828 (Conc!14767) Bool)

(assert (=> b!4901841 (= e!3064075 (and (inv!72828 (c!833150 input!1509)) tp!1379232))))

(declare-fun b!4901842 () Bool)

(declare-fun e!3064076 () Bool)

(declare-fun Forall!1696 (Int) Bool)

(assert (=> b!4901842 (= e!3064076 (Forall!1696 lambda!244229))))

(declare-fun res!2093733 () Bool)

(assert (=> b!4901843 (=> res!2093733 e!3064076)))

(assert (=> b!4901843 (= res!2093733 (not (Forall!1696 lambda!244229)))))

(declare-fun b!4901844 () Bool)

(assert (=> b!4901844 (= e!3064078 (not e!3064076))))

(declare-fun res!2093734 () Bool)

(assert (=> b!4901844 (=> res!2093734 e!3064076)))

(declare-fun semiInverseModEq!3600 (Int Int) Bool)

(assert (=> b!4901844 (= res!2093734 (not (semiInverseModEq!3600 (toChars!10969 (transformation!8199 rule!164)) (toValue!11110 (transformation!8199 rule!164)))))))

(declare-datatypes ((Unit!146566 0))(
  ( (Unit!146567) )
))
(declare-fun lt!2010010 () Unit!146566)

(declare-fun lemmaInv!1245 (TokenValueInjection!16326) Unit!146566)

(assert (=> b!4901844 (= lt!2010010 (lemmaInv!1245 (transformation!8199 rule!164)))))

(declare-fun e!3064079 () Bool)

(assert (=> b!4901844 e!3064079))

(declare-fun res!2093732 () Bool)

(assert (=> b!4901844 (=> res!2093732 e!3064079)))

(declare-datatypes ((tuple2!60564 0))(
  ( (tuple2!60565 (_1!33585 List!56597) (_2!33585 List!56597)) )
))
(declare-fun lt!2010011 () tuple2!60564)

(declare-fun isEmpty!30333 (List!56597) Bool)

(assert (=> b!4901844 (= res!2093732 (isEmpty!30333 (_1!33585 lt!2010011)))))

(declare-fun lt!2010009 () List!56597)

(declare-fun findLongestMatchInner!1762 (Regex!13274 List!56597 Int List!56597 List!56597 Int) tuple2!60564)

(declare-fun size!37187 (List!56597) Int)

(assert (=> b!4901844 (= lt!2010011 (findLongestMatchInner!1762 (regex!8199 rule!164) Nil!56473 (size!37187 Nil!56473) lt!2010009 lt!2010009 (size!37187 lt!2010009)))))

(declare-fun lt!2010008 () Unit!146566)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1725 (Regex!13274 List!56597) Unit!146566)

(assert (=> b!4901844 (= lt!2010008 (longestMatchIsAcceptedByMatchOrIsEmpty!1725 (regex!8199 rule!164) lt!2010009))))

(declare-fun list!17769 (BalanceConc!28964) List!56597)

(assert (=> b!4901844 (= lt!2010009 (list!17769 input!1509))))

(declare-fun b!4901845 () Bool)

(declare-fun res!2093736 () Bool)

(assert (=> b!4901845 (=> (not res!2093736) (not e!3064078))))

(declare-fun isEmpty!30334 (BalanceConc!28964) Bool)

(declare-datatypes ((tuple2!60566 0))(
  ( (tuple2!60567 (_1!33586 BalanceConc!28964) (_2!33586 BalanceConc!28964)) )
))
(declare-fun findLongestMatchWithZipperSequence!287 (Regex!13274 BalanceConc!28964) tuple2!60566)

(assert (=> b!4901845 (= res!2093736 (not (isEmpty!30334 (_1!33586 (findLongestMatchWithZipperSequence!287 (regex!8199 rule!164) input!1509)))))))

(declare-fun res!2093735 () Bool)

(assert (=> start!513590 (=> (not res!2093735) (not e!3064078))))

(assert (=> start!513590 (= res!2093735 (is-Lexer!7789 thiss!15943))))

(assert (=> start!513590 e!3064078))

(assert (=> start!513590 true))

(declare-fun e!3064073 () Bool)

(assert (=> start!513590 e!3064073))

(declare-fun inv!72829 (BalanceConc!28964) Bool)

(assert (=> start!513590 (and (inv!72829 input!1509) e!3064075)))

(declare-fun b!4901846 () Bool)

(declare-fun matchR!6541 (Regex!13274 List!56597) Bool)

(assert (=> b!4901846 (= e!3064079 (matchR!6541 (regex!8199 rule!164) (_1!33585 lt!2010011)))))

(declare-fun b!4901847 () Bool)

(declare-fun tp!1379233 () Bool)

(declare-fun e!3064074 () Bool)

(declare-fun inv!72825 (String!63988) Bool)

(declare-fun inv!72830 (TokenValueInjection!16326) Bool)

(assert (=> b!4901847 (= e!3064073 (and tp!1379233 (inv!72825 (tag!9063 rule!164)) (inv!72830 (transformation!8199 rule!164)) e!3064074))))

(assert (=> b!4901848 (= e!3064074 (and tp!1379234 tp!1379235))))

(assert (= (and start!513590 res!2093735) b!4901840))

(assert (= (and b!4901840 res!2093731) b!4901845))

(assert (= (and b!4901845 res!2093736) b!4901844))

(assert (= (and b!4901844 (not res!2093732)) b!4901846))

(assert (= (and b!4901844 (not res!2093734)) b!4901843))

(assert (= (and b!4901843 (not res!2093733)) b!4901842))

(assert (= b!4901847 b!4901848))

(assert (= start!513590 b!4901847))

(assert (= start!513590 b!4901841))

(declare-fun m!5910474 () Bool)

(assert (=> b!4901843 m!5910474))

(declare-fun m!5910476 () Bool)

(assert (=> b!4901844 m!5910476))

(declare-fun m!5910478 () Bool)

(assert (=> b!4901844 m!5910478))

(declare-fun m!5910480 () Bool)

(assert (=> b!4901844 m!5910480))

(declare-fun m!5910482 () Bool)

(assert (=> b!4901844 m!5910482))

(declare-fun m!5910484 () Bool)

(assert (=> b!4901844 m!5910484))

(declare-fun m!5910486 () Bool)

(assert (=> b!4901844 m!5910486))

(declare-fun m!5910488 () Bool)

(assert (=> b!4901844 m!5910488))

(assert (=> b!4901844 m!5910478))

(assert (=> b!4901844 m!5910488))

(declare-fun m!5910490 () Bool)

(assert (=> b!4901844 m!5910490))

(declare-fun m!5910492 () Bool)

(assert (=> b!4901841 m!5910492))

(declare-fun m!5910494 () Bool)

(assert (=> b!4901846 m!5910494))

(declare-fun m!5910496 () Bool)

(assert (=> b!4901847 m!5910496))

(declare-fun m!5910498 () Bool)

(assert (=> b!4901847 m!5910498))

(declare-fun m!5910500 () Bool)

(assert (=> b!4901845 m!5910500))

(declare-fun m!5910502 () Bool)

(assert (=> b!4901845 m!5910502))

(assert (=> b!4901842 m!5910474))

(declare-fun m!5910504 () Bool)

(assert (=> start!513590 m!5910504))

(declare-fun m!5910506 () Bool)

(assert (=> b!4901840 m!5910506))

(push 1)

(assert (not start!513590))

(assert (not b!4901840))

(assert (not b!4901841))

(assert (not b!4901844))

(assert (not b!4901843))

(assert b_and!346161)

(assert (not b!4901845))

(assert (not b!4901846))

(assert b_and!346159)

(assert (not b!4901842))

(assert (not b_next!132559))

(assert (not b_next!132557))

(assert (not b!4901847))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346161)

(assert b_and!346159)

(assert (not b_next!132559))

(assert (not b_next!132557))

(check-sat)

(pop 1)

