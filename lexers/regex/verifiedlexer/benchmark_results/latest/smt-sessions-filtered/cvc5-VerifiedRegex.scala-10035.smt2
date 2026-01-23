; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!525140 () Bool)

(assert start!525140)

(declare-fun b!4976843 () Bool)

(declare-fun b_free!132983 () Bool)

(declare-fun b_next!133773 () Bool)

(assert (=> b!4976843 (= b_free!132983 (not b_next!133773))))

(declare-fun tp!1395594 () Bool)

(declare-fun b_and!349395 () Bool)

(assert (=> b!4976843 (= tp!1395594 b_and!349395)))

(declare-fun b_free!132985 () Bool)

(declare-fun b_next!133775 () Bool)

(assert (=> b!4976843 (= b_free!132985 (not b_next!133775))))

(declare-fun tp!1395597 () Bool)

(declare-fun b_and!349397 () Bool)

(assert (=> b!4976843 (= tp!1395597 b_and!349397)))

(declare-fun b!4976851 () Bool)

(declare-fun e!3110491 () Bool)

(assert (=> b!4976851 (= e!3110491 true)))

(declare-fun b!4976850 () Bool)

(declare-fun e!3110490 () Bool)

(assert (=> b!4976850 (= e!3110490 e!3110491)))

(declare-fun b!4976833 () Bool)

(assert (=> b!4976833 e!3110490))

(assert (= b!4976850 b!4976851))

(assert (= b!4976833 b!4976850))

(declare-fun order!26281 () Int)

(declare-fun lambda!247577 () Int)

(declare-fun order!26279 () Int)

(declare-datatypes ((String!65530 0))(
  ( (String!65531 (value!269402 String)) )
))
(declare-datatypes ((C!27558 0))(
  ( (C!27559 (val!23145 Int)) )
))
(declare-datatypes ((List!57638 0))(
  ( (Nil!57514) (Cons!57514 (h!63962 C!27558) (t!369650 List!57638)) )
))
(declare-datatypes ((IArray!30407 0))(
  ( (IArray!30408 (innerList!15261 List!57638)) )
))
(declare-datatypes ((List!57639 0))(
  ( (Nil!57515) (Cons!57515 (h!63963 (_ BitVec 16)) (t!369651 List!57639)) )
))
(declare-datatypes ((Regex!13654 0))(
  ( (ElementMatch!13654 (c!849210 C!27558)) (Concat!22385 (regOne!27820 Regex!13654) (regTwo!27820 Regex!13654)) (EmptyExpr!13654) (Star!13654 (reg!13983 Regex!13654)) (EmptyLang!13654) (Union!13654 (regOne!27821 Regex!13654) (regTwo!27821 Regex!13654)) )
))
(declare-datatypes ((Conc!15173 0))(
  ( (Node!15173 (left!41972 Conc!15173) (right!42302 Conc!15173) (csize!30576 Int) (cheight!15384 Int)) (Leaf!25209 (xs!18499 IArray!30407) (csize!30577 Int)) (Empty!15173) )
))
(declare-datatypes ((BalanceConc!29776 0))(
  ( (BalanceConc!29777 (c!849211 Conc!15173)) )
))
(declare-datatypes ((TokenValue!8731 0))(
  ( (FloatLiteralValue!17462 (text!61562 List!57639)) (TokenValueExt!8730 (__x!34755 Int)) (Broken!43655 (value!269403 List!57639)) (Object!8854) (End!8731) (Def!8731) (Underscore!8731) (Match!8731) (Else!8731) (Error!8731) (Case!8731) (If!8731) (Extends!8731) (Abstract!8731) (Class!8731) (Val!8731) (DelimiterValue!17462 (del!8791 List!57639)) (KeywordValue!8737 (value!269404 List!57639)) (CommentValue!17462 (value!269405 List!57639)) (WhitespaceValue!17462 (value!269406 List!57639)) (IndentationValue!8731 (value!269407 List!57639)) (String!65532) (Int32!8731) (Broken!43656 (value!269408 List!57639)) (Boolean!8732) (Unit!148498) (OperatorValue!8734 (op!8791 List!57639)) (IdentifierValue!17462 (value!269409 List!57639)) (IdentifierValue!17463 (value!269410 List!57639)) (WhitespaceValue!17463 (value!269411 List!57639)) (True!17462) (False!17462) (Broken!43657 (value!269412 List!57639)) (Broken!43658 (value!269413 List!57639)) (True!17463) (RightBrace!8731) (RightBracket!8731) (Colon!8731) (Null!8731) (Comma!8731) (LeftBracket!8731) (False!17463) (LeftBrace!8731) (ImaginaryLiteralValue!8731 (text!61563 List!57639)) (StringLiteralValue!26193 (value!269414 List!57639)) (EOFValue!8731 (value!269415 List!57639)) (IdentValue!8731 (value!269416 List!57639)) (DelimiterValue!17463 (value!269417 List!57639)) (DedentValue!8731 (value!269418 List!57639)) (NewLineValue!8731 (value!269419 List!57639)) (IntegerValue!26193 (value!269420 (_ BitVec 32)) (text!61564 List!57639)) (IntegerValue!26194 (value!269421 Int) (text!61565 List!57639)) (Times!8731) (Or!8731) (Equal!8731) (Minus!8731) (Broken!43659 (value!269422 List!57639)) (And!8731) (Div!8731) (LessEqual!8731) (Mod!8731) (Concat!22386) (Not!8731) (Plus!8731) (SpaceValue!8731 (value!269423 List!57639)) (IntegerValue!26195 (value!269424 Int) (text!61566 List!57639)) (StringLiteralValue!26194 (text!61567 List!57639)) (FloatLiteralValue!17463 (text!61568 List!57639)) (BytesLiteralValue!8731 (value!269425 List!57639)) (CommentValue!17463 (value!269426 List!57639)) (StringLiteralValue!26195 (value!269427 List!57639)) (ErrorTokenValue!8731 (msg!8792 List!57639)) )
))
(declare-datatypes ((TokenValueInjection!16770 0))(
  ( (TokenValueInjection!16771 (toValue!11396 Int) (toChars!11255 Int)) )
))
(declare-datatypes ((Rule!16642 0))(
  ( (Rule!16643 (regex!8421 Regex!13654) (tag!9285 String!65530) (isSeparator!8421 Bool) (transformation!8421 TokenValueInjection!16770)) )
))
(declare-fun rule!200 () Rule!16642)

(declare-fun dynLambda!23231 (Int Int) Int)

(declare-fun dynLambda!23232 (Int Int) Int)

(assert (=> b!4976851 (< (dynLambda!23231 order!26279 (toValue!11396 (transformation!8421 rule!200))) (dynLambda!23232 order!26281 lambda!247577))))

(declare-fun order!26283 () Int)

(declare-fun dynLambda!23233 (Int Int) Int)

(assert (=> b!4976851 (< (dynLambda!23233 order!26283 (toChars!11255 (transformation!8421 rule!200))) (dynLambda!23232 order!26281 lambda!247577))))

(declare-fun res!2124426 () Bool)

(declare-fun e!3110481 () Bool)

(assert (=> b!4976833 (=> res!2124426 e!3110481)))

(declare-fun Forall!1771 (Int) Bool)

(assert (=> b!4976833 (= res!2124426 (not (Forall!1771 lambda!247577)))))

(declare-fun b!4976834 () Bool)

(declare-fun e!3110480 () Bool)

(declare-fun e!3110482 () Bool)

(assert (=> b!4976834 (= e!3110480 e!3110482)))

(declare-fun res!2124427 () Bool)

(assert (=> b!4976834 (=> (not res!2124427) (not e!3110482))))

(declare-fun lt!2055275 () List!57638)

(declare-fun totalInput!520 () BalanceConc!29776)

(declare-fun isSuffix!1220 (List!57638 List!57638) Bool)

(declare-fun list!18413 (BalanceConc!29776) List!57638)

(assert (=> b!4976834 (= res!2124427 (isSuffix!1220 lt!2055275 (list!18413 totalInput!520)))))

(declare-fun input!1580 () BalanceConc!29776)

(assert (=> b!4976834 (= lt!2055275 (list!18413 input!1580))))

(declare-fun b!4976835 () Bool)

(declare-fun e!3110477 () Bool)

(assert (=> b!4976835 (= e!3110482 e!3110477)))

(declare-fun res!2124431 () Bool)

(assert (=> b!4976835 (=> (not res!2124431) (not e!3110477))))

(declare-datatypes ((tuple2!62280 0))(
  ( (tuple2!62281 (_1!34443 BalanceConc!29776) (_2!34443 BalanceConc!29776)) )
))
(declare-fun lt!2055271 () tuple2!62280)

(declare-fun isEmpty!31003 (BalanceConc!29776) Bool)

(assert (=> b!4976835 (= res!2124431 (not (isEmpty!31003 (_1!34443 lt!2055271))))))

(declare-fun findLongestMatchWithZipperSequenceV2!184 (Regex!13654 BalanceConc!29776 BalanceConc!29776) tuple2!62280)

(assert (=> b!4976835 (= lt!2055271 (findLongestMatchWithZipperSequenceV2!184 (regex!8421 rule!200) input!1580 totalInput!520))))

(declare-fun b!4976836 () Bool)

(assert (=> b!4976836 (= e!3110481 (Forall!1771 lambda!247577))))

(declare-fun lt!2055274 () BalanceConc!29776)

(declare-fun seqFromList!6046 (List!57638) BalanceConc!29776)

(assert (=> b!4976836 (= lt!2055274 (seqFromList!6046 (list!18413 (_1!34443 lt!2055271))))))

(declare-datatypes ((Unit!148499 0))(
  ( (Unit!148500) )
))
(declare-fun lt!2055276 () Unit!148499)

(declare-fun ForallOf!1235 (Int BalanceConc!29776) Unit!148499)

(assert (=> b!4976836 (= lt!2055276 (ForallOf!1235 lambda!247577 (_1!34443 lt!2055271)))))

(declare-fun b!4976837 () Bool)

(assert (=> b!4976837 (= e!3110477 (not e!3110481))))

(declare-fun res!2124429 () Bool)

(assert (=> b!4976837 (=> res!2124429 e!3110481)))

(declare-fun semiInverseModEq!3714 (Int Int) Bool)

(assert (=> b!4976837 (= res!2124429 (not (semiInverseModEq!3714 (toChars!11255 (transformation!8421 rule!200)) (toValue!11396 (transformation!8421 rule!200)))))))

(declare-fun lt!2055272 () Unit!148499)

(declare-fun lemmaInv!1344 (TokenValueInjection!16770) Unit!148499)

(assert (=> b!4976837 (= lt!2055272 (lemmaInv!1344 (transformation!8421 rule!200)))))

(declare-fun e!3110484 () Bool)

(assert (=> b!4976837 e!3110484))

(declare-fun res!2124430 () Bool)

(assert (=> b!4976837 (=> res!2124430 e!3110484)))

(declare-datatypes ((tuple2!62282 0))(
  ( (tuple2!62283 (_1!34444 List!57638) (_2!34444 List!57638)) )
))
(declare-fun lt!2055273 () tuple2!62282)

(declare-fun isEmpty!31004 (List!57638) Bool)

(assert (=> b!4976837 (= res!2124430 (isEmpty!31004 (_1!34444 lt!2055273)))))

(declare-fun findLongestMatchInner!1865 (Regex!13654 List!57638 Int List!57638 List!57638 Int) tuple2!62282)

(declare-fun size!38116 (List!57638) Int)

(assert (=> b!4976837 (= lt!2055273 (findLongestMatchInner!1865 (regex!8421 rule!200) Nil!57514 (size!38116 Nil!57514) lt!2055275 lt!2055275 (size!38116 lt!2055275)))))

(declare-fun lt!2055277 () Unit!148499)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1826 (Regex!13654 List!57638) Unit!148499)

(assert (=> b!4976837 (= lt!2055277 (longestMatchIsAcceptedByMatchOrIsEmpty!1826 (regex!8421 rule!200) lt!2055275))))

(declare-fun res!2124428 () Bool)

(assert (=> start!525140 (=> (not res!2124428) (not e!3110480))))

(declare-datatypes ((LexerInterface!8013 0))(
  ( (LexerInterfaceExt!8010 (__x!34756 Int)) (Lexer!8011) )
))
(declare-fun thiss!16165 () LexerInterface!8013)

(assert (=> start!525140 (= res!2124428 (is-Lexer!8011 thiss!16165))))

(assert (=> start!525140 e!3110480))

(assert (=> start!525140 true))

(declare-fun e!3110476 () Bool)

(assert (=> start!525140 e!3110476))

(declare-fun e!3110479 () Bool)

(declare-fun inv!75240 (BalanceConc!29776) Bool)

(assert (=> start!525140 (and (inv!75240 input!1580) e!3110479)))

(declare-fun e!3110485 () Bool)

(assert (=> start!525140 (and (inv!75240 totalInput!520) e!3110485)))

(declare-fun e!3110483 () Bool)

(declare-fun tp!1395596 () Bool)

(declare-fun b!4976838 () Bool)

(declare-fun inv!75237 (String!65530) Bool)

(declare-fun inv!75241 (TokenValueInjection!16770) Bool)

(assert (=> b!4976838 (= e!3110476 (and tp!1395596 (inv!75237 (tag!9285 rule!200)) (inv!75241 (transformation!8421 rule!200)) e!3110483))))

(declare-fun b!4976839 () Bool)

(declare-fun matchR!6648 (Regex!13654 List!57638) Bool)

(assert (=> b!4976839 (= e!3110484 (matchR!6648 (regex!8421 rule!200) (_1!34444 lt!2055273)))))

(declare-fun b!4976840 () Bool)

(declare-fun tp!1395593 () Bool)

(declare-fun inv!75242 (Conc!15173) Bool)

(assert (=> b!4976840 (= e!3110479 (and (inv!75242 (c!849211 input!1580)) tp!1395593))))

(declare-fun b!4976841 () Bool)

(declare-fun tp!1395595 () Bool)

(assert (=> b!4976841 (= e!3110485 (and (inv!75242 (c!849211 totalInput!520)) tp!1395595))))

(declare-fun b!4976842 () Bool)

(declare-fun res!2124432 () Bool)

(assert (=> b!4976842 (=> (not res!2124432) (not e!3110480))))

(declare-fun ruleValid!3829 (LexerInterface!8013 Rule!16642) Bool)

(assert (=> b!4976842 (= res!2124432 (ruleValid!3829 thiss!16165 rule!200))))

(assert (=> b!4976843 (= e!3110483 (and tp!1395594 tp!1395597))))

(assert (= (and start!525140 res!2124428) b!4976842))

(assert (= (and b!4976842 res!2124432) b!4976834))

(assert (= (and b!4976834 res!2124427) b!4976835))

(assert (= (and b!4976835 res!2124431) b!4976837))

(assert (= (and b!4976837 (not res!2124430)) b!4976839))

(assert (= (and b!4976837 (not res!2124429)) b!4976833))

(assert (= (and b!4976833 (not res!2124426)) b!4976836))

(assert (= b!4976838 b!4976843))

(assert (= start!525140 b!4976838))

(assert (= start!525140 b!4976840))

(assert (= start!525140 b!4976841))

(declare-fun m!6007046 () Bool)

(assert (=> start!525140 m!6007046))

(declare-fun m!6007048 () Bool)

(assert (=> start!525140 m!6007048))

(declare-fun m!6007050 () Bool)

(assert (=> b!4976842 m!6007050))

(declare-fun m!6007052 () Bool)

(assert (=> b!4976835 m!6007052))

(declare-fun m!6007054 () Bool)

(assert (=> b!4976835 m!6007054))

(declare-fun m!6007056 () Bool)

(assert (=> b!4976838 m!6007056))

(declare-fun m!6007058 () Bool)

(assert (=> b!4976838 m!6007058))

(declare-fun m!6007060 () Bool)

(assert (=> b!4976834 m!6007060))

(assert (=> b!4976834 m!6007060))

(declare-fun m!6007062 () Bool)

(assert (=> b!4976834 m!6007062))

(declare-fun m!6007064 () Bool)

(assert (=> b!4976834 m!6007064))

(declare-fun m!6007066 () Bool)

(assert (=> b!4976836 m!6007066))

(declare-fun m!6007068 () Bool)

(assert (=> b!4976836 m!6007068))

(assert (=> b!4976836 m!6007068))

(declare-fun m!6007070 () Bool)

(assert (=> b!4976836 m!6007070))

(declare-fun m!6007072 () Bool)

(assert (=> b!4976836 m!6007072))

(declare-fun m!6007074 () Bool)

(assert (=> b!4976841 m!6007074))

(declare-fun m!6007076 () Bool)

(assert (=> b!4976837 m!6007076))

(declare-fun m!6007078 () Bool)

(assert (=> b!4976837 m!6007078))

(declare-fun m!6007080 () Bool)

(assert (=> b!4976837 m!6007080))

(declare-fun m!6007082 () Bool)

(assert (=> b!4976837 m!6007082))

(declare-fun m!6007084 () Bool)

(assert (=> b!4976837 m!6007084))

(assert (=> b!4976837 m!6007080))

(declare-fun m!6007086 () Bool)

(assert (=> b!4976837 m!6007086))

(declare-fun m!6007088 () Bool)

(assert (=> b!4976837 m!6007088))

(assert (=> b!4976837 m!6007082))

(declare-fun m!6007090 () Bool)

(assert (=> b!4976840 m!6007090))

(assert (=> b!4976833 m!6007066))

(declare-fun m!6007092 () Bool)

(assert (=> b!4976839 m!6007092))

(push 1)

(assert (not b!4976835))

(assert (not b!4976838))

(assert (not b!4976837))

(assert (not b!4976836))

(assert (not b!4976842))

(assert b_and!349397)

(assert (not b_next!133775))

(assert (not start!525140))

(assert (not b!4976833))

(assert (not b!4976841))

(assert b_and!349395)

(assert (not b!4976834))

(assert (not b_next!133773))

(assert (not b!4976839))

(assert (not b!4976840))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349397)

(assert b_and!349395)

(assert (not b_next!133775))

(assert (not b_next!133773))

(check-sat)

(pop 1)

