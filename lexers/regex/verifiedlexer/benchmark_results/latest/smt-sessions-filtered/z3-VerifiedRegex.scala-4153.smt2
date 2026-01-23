; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223492 () Bool)

(assert start!223492)

(declare-fun b!2281498 () Bool)

(declare-fun b_free!68221 () Bool)

(declare-fun b_next!68925 () Bool)

(assert (=> b!2281498 (= b_free!68221 (not b_next!68925))))

(declare-fun tp!723096 () Bool)

(declare-fun b_and!180241 () Bool)

(assert (=> b!2281498 (= tp!723096 b_and!180241)))

(declare-fun b_free!68223 () Bool)

(declare-fun b_next!68927 () Bool)

(assert (=> b!2281498 (= b_free!68223 (not b_next!68927))))

(declare-fun tp!723087 () Bool)

(declare-fun b_and!180243 () Bool)

(assert (=> b!2281498 (= tp!723087 b_and!180243)))

(declare-fun b!2281500 () Bool)

(declare-fun b_free!68225 () Bool)

(declare-fun b_next!68929 () Bool)

(assert (=> b!2281500 (= b_free!68225 (not b_next!68929))))

(declare-fun tp!723084 () Bool)

(declare-fun b_and!180245 () Bool)

(assert (=> b!2281500 (= tp!723084 b_and!180245)))

(declare-fun b_free!68227 () Bool)

(declare-fun b_next!68931 () Bool)

(assert (=> b!2281500 (= b_free!68227 (not b_next!68931))))

(declare-fun tp!723091 () Bool)

(declare-fun b_and!180247 () Bool)

(assert (=> b!2281500 (= tp!723091 b_and!180247)))

(declare-fun b!2281475 () Bool)

(declare-fun b_free!68229 () Bool)

(declare-fun b_next!68933 () Bool)

(assert (=> b!2281475 (= b_free!68229 (not b_next!68933))))

(declare-fun tp!723101 () Bool)

(declare-fun b_and!180249 () Bool)

(assert (=> b!2281475 (= tp!723101 b_and!180249)))

(declare-fun b_free!68231 () Bool)

(declare-fun b_next!68935 () Bool)

(assert (=> b!2281475 (= b_free!68231 (not b_next!68935))))

(declare-fun tp!723094 () Bool)

(declare-fun b_and!180251 () Bool)

(assert (=> b!2281475 (= tp!723094 b_and!180251)))

(declare-fun b!2281469 () Bool)

(declare-fun b_free!68233 () Bool)

(declare-fun b_next!68937 () Bool)

(assert (=> b!2281469 (= b_free!68233 (not b_next!68937))))

(declare-fun tp!723090 () Bool)

(declare-fun b_and!180253 () Bool)

(assert (=> b!2281469 (= tp!723090 b_and!180253)))

(declare-fun b_free!68235 () Bool)

(declare-fun b_next!68939 () Bool)

(assert (=> b!2281469 (= b_free!68235 (not b_next!68939))))

(declare-fun tp!723088 () Bool)

(declare-fun b_and!180255 () Bool)

(assert (=> b!2281469 (= tp!723088 b_and!180255)))

(declare-fun e!1461591 () Bool)

(assert (=> b!2281469 (= e!1461591 (and tp!723090 tp!723088))))

(declare-fun b!2281470 () Bool)

(declare-fun e!1461595 () Bool)

(declare-fun tp_is_empty!10591 () Bool)

(declare-fun tp!723099 () Bool)

(assert (=> b!2281470 (= e!1461595 (and tp_is_empty!10591 tp!723099))))

(declare-fun b!2281471 () Bool)

(declare-fun res!975276 () Bool)

(declare-fun e!1461598 () Bool)

(assert (=> b!2281471 (=> res!975276 e!1461598)))

(declare-datatypes ((C!13516 0))(
  ( (C!13517 (val!7806 Int)) )
))
(declare-datatypes ((List!27241 0))(
  ( (Nil!27147) (Cons!27147 (h!32548 C!13516) (t!203545 List!27241)) )
))
(declare-fun lt!846785 () List!27241)

(declare-fun isEmpty!15418 (List!27241) Bool)

(assert (=> b!2281471 (= res!975276 (isEmpty!15418 lt!846785))))

(declare-fun b!2281472 () Bool)

(declare-fun e!1461583 () Bool)

(declare-fun tp!723092 () Bool)

(assert (=> b!2281472 (= e!1461583 (and tp_is_empty!10591 tp!723092))))

(declare-fun b!2281473 () Bool)

(declare-fun e!1461582 () Bool)

(declare-fun e!1461604 () Bool)

(assert (=> b!2281473 (= e!1461582 e!1461604)))

(declare-fun res!975275 () Bool)

(assert (=> b!2281473 (=> (not res!975275) (not e!1461604))))

(declare-fun e!1461594 () Bool)

(assert (=> b!2281473 (= res!975275 e!1461594)))

(declare-fun res!975268 () Bool)

(assert (=> b!2281473 (=> res!975268 e!1461594)))

(declare-fun lt!846789 () Bool)

(assert (=> b!2281473 (= res!975268 lt!846789)))

(declare-datatypes ((List!27242 0))(
  ( (Nil!27148) (Cons!27148 (h!32549 (_ BitVec 16)) (t!203546 List!27242)) )
))
(declare-datatypes ((TokenValue!4499 0))(
  ( (FloatLiteralValue!8998 (text!31938 List!27242)) (TokenValueExt!4498 (__x!18058 Int)) (Broken!22495 (value!137398 List!27242)) (Object!4592) (End!4499) (Def!4499) (Underscore!4499) (Match!4499) (Else!4499) (Error!4499) (Case!4499) (If!4499) (Extends!4499) (Abstract!4499) (Class!4499) (Val!4499) (DelimiterValue!8998 (del!4559 List!27242)) (KeywordValue!4505 (value!137399 List!27242)) (CommentValue!8998 (value!137400 List!27242)) (WhitespaceValue!8998 (value!137401 List!27242)) (IndentationValue!4499 (value!137402 List!27242)) (String!29598) (Int32!4499) (Broken!22496 (value!137403 List!27242)) (Boolean!4500) (Unit!40065) (OperatorValue!4502 (op!4559 List!27242)) (IdentifierValue!8998 (value!137404 List!27242)) (IdentifierValue!8999 (value!137405 List!27242)) (WhitespaceValue!8999 (value!137406 List!27242)) (True!8998) (False!8998) (Broken!22497 (value!137407 List!27242)) (Broken!22498 (value!137408 List!27242)) (True!8999) (RightBrace!4499) (RightBracket!4499) (Colon!4499) (Null!4499) (Comma!4499) (LeftBracket!4499) (False!8999) (LeftBrace!4499) (ImaginaryLiteralValue!4499 (text!31939 List!27242)) (StringLiteralValue!13497 (value!137409 List!27242)) (EOFValue!4499 (value!137410 List!27242)) (IdentValue!4499 (value!137411 List!27242)) (DelimiterValue!8999 (value!137412 List!27242)) (DedentValue!4499 (value!137413 List!27242)) (NewLineValue!4499 (value!137414 List!27242)) (IntegerValue!13497 (value!137415 (_ BitVec 32)) (text!31940 List!27242)) (IntegerValue!13498 (value!137416 Int) (text!31941 List!27242)) (Times!4499) (Or!4499) (Equal!4499) (Minus!4499) (Broken!22499 (value!137417 List!27242)) (And!4499) (Div!4499) (LessEqual!4499) (Mod!4499) (Concat!11184) (Not!4499) (Plus!4499) (SpaceValue!4499 (value!137418 List!27242)) (IntegerValue!13499 (value!137419 Int) (text!31942 List!27242)) (StringLiteralValue!13498 (text!31943 List!27242)) (FloatLiteralValue!8999 (text!31944 List!27242)) (BytesLiteralValue!4499 (value!137420 List!27242)) (CommentValue!8999 (value!137421 List!27242)) (StringLiteralValue!13499 (value!137422 List!27242)) (ErrorTokenValue!4499 (msg!4560 List!27242)) )
))
(declare-datatypes ((IArray!17649 0))(
  ( (IArray!17650 (innerList!8882 List!27241)) )
))
(declare-datatypes ((Conc!8822 0))(
  ( (Node!8822 (left!20587 Conc!8822) (right!20917 Conc!8822) (csize!17874 Int) (cheight!9033 Int)) (Leaf!12976 (xs!11764 IArray!17649) (csize!17875 Int)) (Empty!8822) )
))
(declare-datatypes ((BalanceConc!17372 0))(
  ( (BalanceConc!17373 (c!361992 Conc!8822)) )
))
(declare-datatypes ((String!29599 0))(
  ( (String!29600 (value!137423 String)) )
))
(declare-datatypes ((Regex!6685 0))(
  ( (ElementMatch!6685 (c!361993 C!13516)) (Concat!11185 (regOne!13882 Regex!6685) (regTwo!13882 Regex!6685)) (EmptyExpr!6685) (Star!6685 (reg!7014 Regex!6685)) (EmptyLang!6685) (Union!6685 (regOne!13883 Regex!6685) (regTwo!13883 Regex!6685)) )
))
(declare-datatypes ((TokenValueInjection!8538 0))(
  ( (TokenValueInjection!8539 (toValue!6119 Int) (toChars!5978 Int)) )
))
(declare-datatypes ((Rule!8474 0))(
  ( (Rule!8475 (regex!4337 Regex!6685) (tag!4827 String!29599) (isSeparator!4337 Bool) (transformation!4337 TokenValueInjection!8538)) )
))
(declare-datatypes ((Token!8152 0))(
  ( (Token!8153 (value!137424 TokenValue!4499) (rule!6663 Rule!8474) (size!21346 Int) (originalCharacters!5107 List!27241)) )
))
(declare-datatypes ((List!27243 0))(
  ( (Nil!27149) (Cons!27149 (h!32550 Token!8152) (t!203547 List!27243)) )
))
(declare-fun tokens!456 () List!27243)

(declare-fun isEmpty!15419 (List!27243) Bool)

(assert (=> b!2281473 (= lt!846789 (isEmpty!15419 tokens!456))))

(declare-fun b!2281474 () Bool)

(declare-fun e!1461589 () Bool)

(declare-fun r!2363 () Rule!8474)

(declare-fun head!4948 (List!27243) Token!8152)

(assert (=> b!2281474 (= e!1461589 (= (rule!6663 (head!4948 tokens!456)) r!2363))))

(declare-fun e!1461576 () Bool)

(assert (=> b!2281475 (= e!1461576 (and tp!723101 tp!723094))))

(declare-fun b!2281476 () Bool)

(declare-fun e!1461587 () Bool)

(assert (=> b!2281476 (= e!1461587 e!1461598)))

(declare-fun res!975269 () Bool)

(assert (=> b!2281476 (=> res!975269 e!1461598)))

(declare-fun input!1722 () List!27241)

(declare-fun isPrefix!2327 (List!27241 List!27241) Bool)

(assert (=> b!2281476 (= res!975269 (not (isPrefix!2327 lt!846785 input!1722)))))

(declare-fun otherP!12 () List!27241)

(assert (=> b!2281476 (= lt!846785 otherP!12)))

(declare-datatypes ((Unit!40066 0))(
  ( (Unit!40067) )
))
(declare-fun lt!846790 () Unit!40066)

(declare-fun lemmaIsPrefixSameLengthThenSameList!393 (List!27241 List!27241 List!27241) Unit!40066)

(assert (=> b!2281476 (= lt!846790 (lemmaIsPrefixSameLengthThenSameList!393 lt!846785 otherP!12 input!1722))))

(declare-fun e!1461605 () Bool)

(declare-fun b!2281477 () Bool)

(declare-fun e!1461592 () Bool)

(declare-fun tp!723093 () Bool)

(declare-datatypes ((List!27244 0))(
  ( (Nil!27150) (Cons!27150 (h!32551 Rule!8474) (t!203548 List!27244)) )
))
(declare-fun rules!1750 () List!27244)

(declare-fun inv!36729 (String!29599) Bool)

(declare-fun inv!36732 (TokenValueInjection!8538) Bool)

(assert (=> b!2281477 (= e!1461605 (and tp!723093 (inv!36729 (tag!4827 (h!32551 rules!1750))) (inv!36732 (transformation!4337 (h!32551 rules!1750))) e!1461592))))

(declare-fun b!2281478 () Bool)

(declare-fun res!975279 () Bool)

(declare-fun e!1461603 () Bool)

(assert (=> b!2281478 (=> (not res!975279) (not e!1461603))))

(declare-fun isEmpty!15420 (List!27244) Bool)

(assert (=> b!2281478 (= res!975279 (not (isEmpty!15420 rules!1750)))))

(declare-fun e!1461577 () Bool)

(declare-fun tp!723097 () Bool)

(declare-fun b!2281479 () Bool)

(declare-fun otherR!12 () Rule!8474)

(assert (=> b!2281479 (= e!1461577 (and tp!723097 (inv!36729 (tag!4827 otherR!12)) (inv!36732 (transformation!4337 otherR!12)) e!1461576))))

(declare-fun b!2281480 () Bool)

(declare-fun e!1461578 () Bool)

(declare-fun tp!723098 () Bool)

(assert (=> b!2281480 (= e!1461578 (and tp_is_empty!10591 tp!723098))))

(declare-fun b!2281481 () Bool)

(declare-fun res!975270 () Bool)

(assert (=> b!2281481 (=> (not res!975270) (not e!1461604))))

(assert (=> b!2281481 (= res!975270 e!1461589)))

(declare-fun res!975273 () Bool)

(assert (=> b!2281481 (=> res!975273 e!1461589)))

(assert (=> b!2281481 (= res!975273 lt!846789)))

(declare-fun b!2281482 () Bool)

(declare-fun e!1461600 () Bool)

(declare-fun e!1461586 () Bool)

(assert (=> b!2281482 (= e!1461600 e!1461586)))

(declare-fun res!975263 () Bool)

(assert (=> b!2281482 (=> res!975263 e!1461586)))

(declare-fun getIndex!350 (List!27244 Rule!8474) Int)

(assert (=> b!2281482 (= res!975263 (<= (getIndex!350 rules!1750 r!2363) (getIndex!350 rules!1750 otherR!12)))))

(declare-datatypes ((LexerInterface!3934 0))(
  ( (LexerInterfaceExt!3931 (__x!18059 Int)) (Lexer!3932) )
))
(declare-fun thiss!16613 () LexerInterface!3934)

(declare-fun ruleValid!1427 (LexerInterface!3934 Rule!8474) Bool)

(assert (=> b!2281482 (ruleValid!1427 thiss!16613 otherR!12)))

(declare-fun lt!846782 () Unit!40066)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!832 (LexerInterface!3934 Rule!8474 List!27244) Unit!40066)

(assert (=> b!2281482 (= lt!846782 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!832 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2281484 () Bool)

(declare-fun res!975277 () Bool)

(assert (=> b!2281484 (=> (not res!975277) (not e!1461604))))

(assert (=> b!2281484 (= res!975277 (isPrefix!2327 otherP!12 input!1722))))

(declare-fun b!2281485 () Bool)

(declare-fun e!1461588 () Bool)

(assert (=> b!2281485 (= e!1461586 e!1461588)))

(declare-fun res!975274 () Bool)

(assert (=> b!2281485 (=> res!975274 e!1461588)))

(declare-datatypes ((tuple2!26894 0))(
  ( (tuple2!26895 (_1!15957 Token!8152) (_2!15957 List!27241)) )
))
(declare-fun lt!846784 () tuple2!26894)

(assert (=> b!2281485 (= res!975274 (not (= (h!32550 tokens!456) (_1!15957 lt!846784))))))

(declare-datatypes ((Option!5323 0))(
  ( (None!5322) (Some!5322 (v!30386 tuple2!26894)) )
))
(declare-fun lt!846786 () Option!5323)

(declare-fun get!8185 (Option!5323) tuple2!26894)

(assert (=> b!2281485 (= lt!846784 (get!8185 lt!846786))))

(declare-fun maxPrefix!2198 (LexerInterface!3934 List!27244 List!27241) Option!5323)

(assert (=> b!2281485 (= lt!846786 (maxPrefix!2198 thiss!16613 rules!1750 input!1722))))

(declare-fun b!2281486 () Bool)

(assert (=> b!2281486 (= e!1461603 e!1461582)))

(declare-fun res!975272 () Bool)

(assert (=> b!2281486 (=> (not res!975272) (not e!1461582))))

(declare-datatypes ((IArray!17651 0))(
  ( (IArray!17652 (innerList!8883 List!27243)) )
))
(declare-datatypes ((Conc!8823 0))(
  ( (Node!8823 (left!20588 Conc!8823) (right!20918 Conc!8823) (csize!17876 Int) (cheight!9034 Int)) (Leaf!12977 (xs!11765 IArray!17651) (csize!17877 Int)) (Empty!8823) )
))
(declare-datatypes ((BalanceConc!17374 0))(
  ( (BalanceConc!17375 (c!361994 Conc!8823)) )
))
(declare-datatypes ((tuple2!26896 0))(
  ( (tuple2!26897 (_1!15958 BalanceConc!17374) (_2!15958 BalanceConc!17372)) )
))
(declare-fun lt!846788 () tuple2!26896)

(declare-fun suffix!886 () List!27241)

(declare-datatypes ((tuple2!26898 0))(
  ( (tuple2!26899 (_1!15959 List!27243) (_2!15959 List!27241)) )
))
(declare-fun list!10584 (BalanceConc!17374) List!27243)

(declare-fun list!10585 (BalanceConc!17372) List!27241)

(assert (=> b!2281486 (= res!975272 (= (tuple2!26899 (list!10584 (_1!15958 lt!846788)) (list!10585 (_2!15958 lt!846788))) (tuple2!26899 tokens!456 suffix!886)))))

(declare-fun lex!1773 (LexerInterface!3934 List!27244 BalanceConc!17372) tuple2!26896)

(declare-fun seqFromList!3041 (List!27241) BalanceConc!17372)

(assert (=> b!2281486 (= lt!846788 (lex!1773 thiss!16613 rules!1750 (seqFromList!3041 input!1722)))))

(declare-fun b!2281487 () Bool)

(declare-fun res!975271 () Bool)

(assert (=> b!2281487 (=> (not res!975271) (not e!1461604))))

(assert (=> b!2281487 (= res!975271 (not (= r!2363 otherR!12)))))

(declare-fun b!2281488 () Bool)

(declare-fun size!21347 (BalanceConc!17372) Int)

(declare-fun charsOf!2725 (Token!8152) BalanceConc!17372)

(declare-fun size!21348 (List!27241) Int)

(assert (=> b!2281488 (= e!1461594 (<= (size!21347 (charsOf!2725 (head!4948 tokens!456))) (size!21348 otherP!12)))))

(declare-fun b!2281489 () Bool)

(declare-fun res!975261 () Bool)

(assert (=> b!2281489 (=> (not res!975261) (not e!1461603))))

(declare-fun contains!4709 (List!27244 Rule!8474) Bool)

(assert (=> b!2281489 (= res!975261 (contains!4709 rules!1750 otherR!12))))

(declare-fun b!2281490 () Bool)

(declare-fun res!975266 () Bool)

(assert (=> b!2281490 (=> res!975266 e!1461586)))

(get-info :version)

(assert (=> b!2281490 (= res!975266 ((_ is Nil!27149) tokens!456))))

(declare-fun lt!846783 () Int)

(declare-fun lt!846791 () BalanceConc!17372)

(declare-fun b!2281491 () Bool)

(declare-fun lt!846780 () List!27241)

(declare-fun apply!6611 (TokenValueInjection!8538 BalanceConc!17372) TokenValue!4499)

(assert (=> b!2281491 (= e!1461598 (= lt!846786 (Some!5322 (tuple2!26895 (Token!8153 (apply!6611 (transformation!4337 r!2363) lt!846791) r!2363 lt!846783 lt!846785) lt!846780))))))

(declare-fun lt!846781 () Unit!40066)

(declare-fun lemmaSemiInverse!1046 (TokenValueInjection!8538 BalanceConc!17372) Unit!40066)

(assert (=> b!2281491 (= lt!846781 (lemmaSemiInverse!1046 (transformation!4337 r!2363) lt!846791))))

(assert (=> b!2281491 (= lt!846791 (seqFromList!3041 lt!846785))))

(declare-fun b!2281492 () Bool)

(declare-fun e!1461580 () Bool)

(declare-fun e!1461597 () Bool)

(declare-fun tp!723100 () Bool)

(declare-fun inv!36733 (Token!8152) Bool)

(assert (=> b!2281492 (= e!1461597 (and (inv!36733 (h!32550 tokens!456)) e!1461580 tp!723100))))

(declare-fun b!2281493 () Bool)

(declare-fun res!975265 () Bool)

(assert (=> b!2281493 (=> (not res!975265) (not e!1461603))))

(declare-fun rulesInvariant!3436 (LexerInterface!3934 List!27244) Bool)

(assert (=> b!2281493 (= res!975265 (rulesInvariant!3436 thiss!16613 rules!1750))))

(declare-fun b!2281494 () Bool)

(declare-fun e!1461596 () Bool)

(declare-fun tp!723085 () Bool)

(assert (=> b!2281494 (= e!1461596 (and e!1461605 tp!723085))))

(declare-fun tp!723095 () Bool)

(declare-fun b!2281495 () Bool)

(declare-fun e!1461585 () Bool)

(declare-fun inv!21 (TokenValue!4499) Bool)

(assert (=> b!2281495 (= e!1461580 (and (inv!21 (value!137424 (h!32550 tokens!456))) e!1461585 tp!723095))))

(declare-fun tp!723086 () Bool)

(declare-fun b!2281496 () Bool)

(assert (=> b!2281496 (= e!1461585 (and tp!723086 (inv!36729 (tag!4827 (rule!6663 (h!32550 tokens!456)))) (inv!36732 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) e!1461591))))

(declare-fun b!2281497 () Bool)

(declare-fun res!975264 () Bool)

(assert (=> b!2281497 (=> (not res!975264) (not e!1461603))))

(assert (=> b!2281497 (= res!975264 (contains!4709 rules!1750 r!2363))))

(declare-fun e!1461601 () Bool)

(assert (=> b!2281498 (= e!1461601 (and tp!723096 tp!723087))))

(declare-fun b!2281499 () Bool)

(declare-fun e!1461581 () Bool)

(declare-fun matchR!2942 (Regex!6685 List!27241) Bool)

(assert (=> b!2281499 (= e!1461581 (not (matchR!2942 (regex!4337 r!2363) (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))

(assert (=> b!2281500 (= e!1461592 (and tp!723084 tp!723091))))

(declare-fun b!2281501 () Bool)

(assert (=> b!2281501 (= e!1461604 (not e!1461600))))

(declare-fun res!975278 () Bool)

(assert (=> b!2281501 (=> res!975278 e!1461600)))

(assert (=> b!2281501 (= res!975278 e!1461581)))

(declare-fun res!975260 () Bool)

(assert (=> b!2281501 (=> (not res!975260) (not e!1461581))))

(assert (=> b!2281501 (= res!975260 (not lt!846789))))

(assert (=> b!2281501 (ruleValid!1427 thiss!16613 r!2363)))

(declare-fun lt!846792 () Unit!40066)

(assert (=> b!2281501 (= lt!846792 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!832 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2281502 () Bool)

(assert (=> b!2281502 (= e!1461588 e!1461587)))

(declare-fun res!975262 () Bool)

(assert (=> b!2281502 (=> res!975262 e!1461587)))

(declare-fun lt!846778 () Int)

(assert (=> b!2281502 (= res!975262 (not (= lt!846778 lt!846783)))))

(assert (=> b!2281502 (= lt!846783 (size!21348 lt!846785))))

(assert (=> b!2281502 (= lt!846778 (size!21348 otherP!12))))

(assert (=> b!2281502 (= (_2!15957 lt!846784) lt!846780)))

(declare-fun lt!846787 () Unit!40066)

(declare-fun lemmaSamePrefixThenSameSuffix!1028 (List!27241 List!27241 List!27241 List!27241 List!27241) Unit!40066)

(assert (=> b!2281502 (= lt!846787 (lemmaSamePrefixThenSameSuffix!1028 lt!846785 (_2!15957 lt!846784) lt!846785 lt!846780 input!1722))))

(declare-fun getSuffix!1118 (List!27241 List!27241) List!27241)

(assert (=> b!2281502 (= lt!846780 (getSuffix!1118 input!1722 lt!846785))))

(declare-fun ++!6629 (List!27241 List!27241) List!27241)

(assert (=> b!2281502 (isPrefix!2327 lt!846785 (++!6629 lt!846785 (_2!15957 lt!846784)))))

(declare-fun lt!846779 () Unit!40066)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1532 (List!27241 List!27241) Unit!40066)

(assert (=> b!2281502 (= lt!846779 (lemmaConcatTwoListThenFirstIsPrefix!1532 lt!846785 (_2!15957 lt!846784)))))

(assert (=> b!2281502 (= lt!846785 (list!10585 (charsOf!2725 (h!32550 tokens!456))))))

(declare-fun e!1461602 () Bool)

(declare-fun b!2281483 () Bool)

(declare-fun tp!723089 () Bool)

(assert (=> b!2281483 (= e!1461602 (and tp!723089 (inv!36729 (tag!4827 r!2363)) (inv!36732 (transformation!4337 r!2363)) e!1461601))))

(declare-fun res!975267 () Bool)

(assert (=> start!223492 (=> (not res!975267) (not e!1461603))))

(assert (=> start!223492 (= res!975267 ((_ is Lexer!3932) thiss!16613))))

(assert (=> start!223492 e!1461603))

(assert (=> start!223492 true))

(assert (=> start!223492 e!1461578))

(assert (=> start!223492 e!1461577))

(assert (=> start!223492 e!1461595))

(assert (=> start!223492 e!1461583))

(assert (=> start!223492 e!1461596))

(assert (=> start!223492 e!1461602))

(assert (=> start!223492 e!1461597))

(assert (= (and start!223492 res!975267) b!2281478))

(assert (= (and b!2281478 res!975279) b!2281493))

(assert (= (and b!2281493 res!975265) b!2281497))

(assert (= (and b!2281497 res!975264) b!2281489))

(assert (= (and b!2281489 res!975261) b!2281486))

(assert (= (and b!2281486 res!975272) b!2281473))

(assert (= (and b!2281473 (not res!975268)) b!2281488))

(assert (= (and b!2281473 res!975275) b!2281481))

(assert (= (and b!2281481 (not res!975273)) b!2281474))

(assert (= (and b!2281481 res!975270) b!2281484))

(assert (= (and b!2281484 res!975277) b!2281487))

(assert (= (and b!2281487 res!975271) b!2281501))

(assert (= (and b!2281501 res!975260) b!2281499))

(assert (= (and b!2281501 (not res!975278)) b!2281482))

(assert (= (and b!2281482 (not res!975263)) b!2281490))

(assert (= (and b!2281490 (not res!975266)) b!2281485))

(assert (= (and b!2281485 (not res!975274)) b!2281502))

(assert (= (and b!2281502 (not res!975262)) b!2281476))

(assert (= (and b!2281476 (not res!975269)) b!2281471))

(assert (= (and b!2281471 (not res!975276)) b!2281491))

(assert (= (and start!223492 ((_ is Cons!27147) input!1722)) b!2281480))

(assert (= b!2281479 b!2281475))

(assert (= start!223492 b!2281479))

(assert (= (and start!223492 ((_ is Cons!27147) suffix!886)) b!2281470))

(assert (= (and start!223492 ((_ is Cons!27147) otherP!12)) b!2281472))

(assert (= b!2281477 b!2281500))

(assert (= b!2281494 b!2281477))

(assert (= (and start!223492 ((_ is Cons!27150) rules!1750)) b!2281494))

(assert (= b!2281483 b!2281498))

(assert (= start!223492 b!2281483))

(assert (= b!2281496 b!2281469))

(assert (= b!2281495 b!2281496))

(assert (= b!2281492 b!2281495))

(assert (= (and start!223492 ((_ is Cons!27149) tokens!456)) b!2281492))

(declare-fun m!2709375 () Bool)

(assert (=> b!2281474 m!2709375))

(declare-fun m!2709377 () Bool)

(assert (=> b!2281482 m!2709377))

(declare-fun m!2709379 () Bool)

(assert (=> b!2281482 m!2709379))

(declare-fun m!2709381 () Bool)

(assert (=> b!2281482 m!2709381))

(declare-fun m!2709383 () Bool)

(assert (=> b!2281482 m!2709383))

(declare-fun m!2709385 () Bool)

(assert (=> b!2281473 m!2709385))

(assert (=> b!2281499 m!2709375))

(assert (=> b!2281499 m!2709375))

(declare-fun m!2709387 () Bool)

(assert (=> b!2281499 m!2709387))

(assert (=> b!2281499 m!2709387))

(declare-fun m!2709389 () Bool)

(assert (=> b!2281499 m!2709389))

(assert (=> b!2281499 m!2709389))

(declare-fun m!2709391 () Bool)

(assert (=> b!2281499 m!2709391))

(declare-fun m!2709393 () Bool)

(assert (=> b!2281495 m!2709393))

(declare-fun m!2709395 () Bool)

(assert (=> b!2281491 m!2709395))

(declare-fun m!2709397 () Bool)

(assert (=> b!2281491 m!2709397))

(declare-fun m!2709399 () Bool)

(assert (=> b!2281491 m!2709399))

(declare-fun m!2709401 () Bool)

(assert (=> b!2281497 m!2709401))

(declare-fun m!2709403 () Bool)

(assert (=> b!2281493 m!2709403))

(declare-fun m!2709405 () Bool)

(assert (=> b!2281477 m!2709405))

(declare-fun m!2709407 () Bool)

(assert (=> b!2281477 m!2709407))

(declare-fun m!2709409 () Bool)

(assert (=> b!2281496 m!2709409))

(declare-fun m!2709411 () Bool)

(assert (=> b!2281496 m!2709411))

(declare-fun m!2709413 () Bool)

(assert (=> b!2281486 m!2709413))

(declare-fun m!2709415 () Bool)

(assert (=> b!2281486 m!2709415))

(declare-fun m!2709417 () Bool)

(assert (=> b!2281486 m!2709417))

(assert (=> b!2281486 m!2709417))

(declare-fun m!2709419 () Bool)

(assert (=> b!2281486 m!2709419))

(declare-fun m!2709421 () Bool)

(assert (=> b!2281483 m!2709421))

(declare-fun m!2709423 () Bool)

(assert (=> b!2281483 m!2709423))

(declare-fun m!2709425 () Bool)

(assert (=> b!2281478 m!2709425))

(declare-fun m!2709427 () Bool)

(assert (=> b!2281485 m!2709427))

(declare-fun m!2709429 () Bool)

(assert (=> b!2281485 m!2709429))

(assert (=> b!2281488 m!2709375))

(assert (=> b!2281488 m!2709375))

(assert (=> b!2281488 m!2709387))

(assert (=> b!2281488 m!2709387))

(declare-fun m!2709431 () Bool)

(assert (=> b!2281488 m!2709431))

(declare-fun m!2709433 () Bool)

(assert (=> b!2281488 m!2709433))

(declare-fun m!2709435 () Bool)

(assert (=> b!2281489 m!2709435))

(declare-fun m!2709437 () Bool)

(assert (=> b!2281492 m!2709437))

(declare-fun m!2709439 () Bool)

(assert (=> b!2281501 m!2709439))

(declare-fun m!2709441 () Bool)

(assert (=> b!2281501 m!2709441))

(declare-fun m!2709443 () Bool)

(assert (=> b!2281471 m!2709443))

(declare-fun m!2709445 () Bool)

(assert (=> b!2281479 m!2709445))

(declare-fun m!2709447 () Bool)

(assert (=> b!2281479 m!2709447))

(declare-fun m!2709449 () Bool)

(assert (=> b!2281484 m!2709449))

(declare-fun m!2709451 () Bool)

(assert (=> b!2281502 m!2709451))

(declare-fun m!2709453 () Bool)

(assert (=> b!2281502 m!2709453))

(declare-fun m!2709455 () Bool)

(assert (=> b!2281502 m!2709455))

(declare-fun m!2709457 () Bool)

(assert (=> b!2281502 m!2709457))

(declare-fun m!2709459 () Bool)

(assert (=> b!2281502 m!2709459))

(declare-fun m!2709461 () Bool)

(assert (=> b!2281502 m!2709461))

(assert (=> b!2281502 m!2709459))

(declare-fun m!2709463 () Bool)

(assert (=> b!2281502 m!2709463))

(declare-fun m!2709465 () Bool)

(assert (=> b!2281502 m!2709465))

(assert (=> b!2281502 m!2709451))

(assert (=> b!2281502 m!2709433))

(declare-fun m!2709467 () Bool)

(assert (=> b!2281476 m!2709467))

(declare-fun m!2709469 () Bool)

(assert (=> b!2281476 m!2709469))

(check-sat (not b_next!68925) (not b!2281484) (not b!2281488) (not b!2281474) (not b!2281471) (not b!2281477) (not b!2281497) (not b!2281502) (not b!2281470) (not b!2281495) b_and!180247 (not b!2281499) (not b!2281496) (not b!2281489) b_and!180253 (not b!2281480) (not b!2281483) (not b!2281482) (not b!2281476) (not b!2281478) (not b!2281492) (not b_next!68927) (not b!2281501) (not b!2281479) (not b_next!68933) (not b_next!68937) (not b!2281472) (not b_next!68935) b_and!180241 (not b!2281486) (not b_next!68939) (not b_next!68931) (not b!2281494) (not b!2281485) (not b!2281493) b_and!180249 (not b!2281491) (not b_next!68929) b_and!180255 b_and!180245 b_and!180251 (not b!2281473) tp_is_empty!10591 b_and!180243)
(check-sat (not b_next!68925) b_and!180253 (not b_next!68927) b_and!180247 (not b_next!68939) (not b_next!68931) b_and!180249 b_and!180251 b_and!180243 (not b_next!68933) (not b_next!68937) (not b_next!68935) b_and!180241 (not b_next!68929) b_and!180255 b_and!180245)
(get-model)

(declare-fun d!675074 () Bool)

(declare-fun lt!846798 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3628 (List!27244) (InoxSet Rule!8474))

(assert (=> d!675074 (= lt!846798 (select (content!3628 rules!1750) otherR!12))))

(declare-fun e!1461616 () Bool)

(assert (=> d!675074 (= lt!846798 e!1461616)))

(declare-fun res!975304 () Bool)

(assert (=> d!675074 (=> (not res!975304) (not e!1461616))))

(assert (=> d!675074 (= res!975304 ((_ is Cons!27150) rules!1750))))

(assert (=> d!675074 (= (contains!4709 rules!1750 otherR!12) lt!846798)))

(declare-fun b!2281516 () Bool)

(declare-fun e!1461617 () Bool)

(assert (=> b!2281516 (= e!1461616 e!1461617)))

(declare-fun res!975305 () Bool)

(assert (=> b!2281516 (=> res!975305 e!1461617)))

(assert (=> b!2281516 (= res!975305 (= (h!32551 rules!1750) otherR!12))))

(declare-fun b!2281517 () Bool)

(assert (=> b!2281517 (= e!1461617 (contains!4709 (t!203548 rules!1750) otherR!12))))

(assert (= (and d!675074 res!975304) b!2281516))

(assert (= (and b!2281516 (not res!975305)) b!2281517))

(declare-fun m!2709481 () Bool)

(assert (=> d!675074 m!2709481))

(declare-fun m!2709483 () Bool)

(assert (=> d!675074 m!2709483))

(declare-fun m!2709485 () Bool)

(assert (=> b!2281517 m!2709485))

(assert (=> b!2281489 d!675074))

(declare-fun d!675084 () Bool)

(assert (=> d!675084 (= (inv!36729 (tag!4827 otherR!12)) (= (mod (str.len (value!137423 (tag!4827 otherR!12))) 2) 0))))

(assert (=> b!2281479 d!675084))

(declare-fun d!675086 () Bool)

(declare-fun res!975332 () Bool)

(declare-fun e!1461641 () Bool)

(assert (=> d!675086 (=> (not res!975332) (not e!1461641))))

(declare-fun semiInverseModEq!1752 (Int Int) Bool)

(assert (=> d!675086 (= res!975332 (semiInverseModEq!1752 (toChars!5978 (transformation!4337 otherR!12)) (toValue!6119 (transformation!4337 otherR!12))))))

(assert (=> d!675086 (= (inv!36732 (transformation!4337 otherR!12)) e!1461641)))

(declare-fun b!2281562 () Bool)

(declare-fun equivClasses!1671 (Int Int) Bool)

(assert (=> b!2281562 (= e!1461641 (equivClasses!1671 (toChars!5978 (transformation!4337 otherR!12)) (toValue!6119 (transformation!4337 otherR!12))))))

(assert (= (and d!675086 res!975332) b!2281562))

(declare-fun m!2709489 () Bool)

(assert (=> d!675086 m!2709489))

(declare-fun m!2709495 () Bool)

(assert (=> b!2281562 m!2709495))

(assert (=> b!2281479 d!675086))

(declare-fun d!675088 () Bool)

(declare-fun res!975337 () Bool)

(declare-fun e!1461647 () Bool)

(assert (=> d!675088 (=> (not res!975337) (not e!1461647))))

(declare-fun validRegex!2512 (Regex!6685) Bool)

(assert (=> d!675088 (= res!975337 (validRegex!2512 (regex!4337 r!2363)))))

(assert (=> d!675088 (= (ruleValid!1427 thiss!16613 r!2363) e!1461647)))

(declare-fun b!2281572 () Bool)

(declare-fun res!975338 () Bool)

(assert (=> b!2281572 (=> (not res!975338) (not e!1461647))))

(declare-fun nullable!1850 (Regex!6685) Bool)

(assert (=> b!2281572 (= res!975338 (not (nullable!1850 (regex!4337 r!2363))))))

(declare-fun b!2281573 () Bool)

(assert (=> b!2281573 (= e!1461647 (not (= (tag!4827 r!2363) (String!29600 ""))))))

(assert (= (and d!675088 res!975337) b!2281572))

(assert (= (and b!2281572 res!975338) b!2281573))

(declare-fun m!2709513 () Bool)

(assert (=> d!675088 m!2709513))

(declare-fun m!2709515 () Bool)

(assert (=> b!2281572 m!2709515))

(assert (=> b!2281501 d!675088))

(declare-fun d!675098 () Bool)

(assert (=> d!675098 (ruleValid!1427 thiss!16613 r!2363)))

(declare-fun lt!846809 () Unit!40066)

(declare-fun choose!13308 (LexerInterface!3934 Rule!8474 List!27244) Unit!40066)

(assert (=> d!675098 (= lt!846809 (choose!13308 thiss!16613 r!2363 rules!1750))))

(assert (=> d!675098 (contains!4709 rules!1750 r!2363)))

(assert (=> d!675098 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!832 thiss!16613 r!2363 rules!1750) lt!846809)))

(declare-fun bs!456584 () Bool)

(assert (= bs!456584 d!675098))

(assert (=> bs!456584 m!2709439))

(declare-fun m!2709521 () Bool)

(assert (=> bs!456584 m!2709521))

(assert (=> bs!456584 m!2709401))

(assert (=> b!2281501 d!675098))

(declare-fun d!675102 () Bool)

(declare-fun dynLambda!11777 (Int BalanceConc!17372) TokenValue!4499)

(assert (=> d!675102 (= (apply!6611 (transformation!4337 r!2363) lt!846791) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))))

(declare-fun b_lambda!72605 () Bool)

(assert (=> (not b_lambda!72605) (not d!675102)))

(declare-fun t!203566 () Bool)

(declare-fun tb!135583 () Bool)

(assert (=> (and b!2281498 (= (toValue!6119 (transformation!4337 r!2363)) (toValue!6119 (transformation!4337 r!2363))) t!203566) tb!135583))

(declare-fun result!165330 () Bool)

(assert (=> tb!135583 (= result!165330 (inv!21 (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))))

(declare-fun m!2709523 () Bool)

(assert (=> tb!135583 m!2709523))

(assert (=> d!675102 t!203566))

(declare-fun b_and!180273 () Bool)

(assert (= b_and!180241 (and (=> t!203566 result!165330) b_and!180273)))

(declare-fun tb!135585 () Bool)

(declare-fun t!203568 () Bool)

(assert (=> (and b!2281500 (= (toValue!6119 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 r!2363))) t!203568) tb!135585))

(declare-fun result!165334 () Bool)

(assert (= result!165334 result!165330))

(assert (=> d!675102 t!203568))

(declare-fun b_and!180275 () Bool)

(assert (= b_and!180245 (and (=> t!203568 result!165334) b_and!180275)))

(declare-fun t!203570 () Bool)

(declare-fun tb!135587 () Bool)

(assert (=> (and b!2281475 (= (toValue!6119 (transformation!4337 otherR!12)) (toValue!6119 (transformation!4337 r!2363))) t!203570) tb!135587))

(declare-fun result!165336 () Bool)

(assert (= result!165336 result!165330))

(assert (=> d!675102 t!203570))

(declare-fun b_and!180277 () Bool)

(assert (= b_and!180249 (and (=> t!203570 result!165336) b_and!180277)))

(declare-fun tb!135589 () Bool)

(declare-fun t!203572 () Bool)

(assert (=> (and b!2281469 (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 r!2363))) t!203572) tb!135589))

(declare-fun result!165338 () Bool)

(assert (= result!165338 result!165330))

(assert (=> d!675102 t!203572))

(declare-fun b_and!180279 () Bool)

(assert (= b_and!180253 (and (=> t!203572 result!165338) b_and!180279)))

(declare-fun m!2709525 () Bool)

(assert (=> d!675102 m!2709525))

(assert (=> b!2281491 d!675102))

(declare-fun b!2281610 () Bool)

(declare-fun e!1461675 () Bool)

(assert (=> b!2281610 (= e!1461675 true)))

(declare-fun d!675104 () Bool)

(assert (=> d!675104 e!1461675))

(assert (= d!675104 b!2281610))

(declare-fun order!15137 () Int)

(declare-fun order!15135 () Int)

(declare-fun lambda!85655 () Int)

(declare-fun dynLambda!11778 (Int Int) Int)

(declare-fun dynLambda!11779 (Int Int) Int)

(assert (=> b!2281610 (< (dynLambda!11778 order!15135 (toValue!6119 (transformation!4337 r!2363))) (dynLambda!11779 order!15137 lambda!85655))))

(declare-fun order!15139 () Int)

(declare-fun dynLambda!11780 (Int Int) Int)

(assert (=> b!2281610 (< (dynLambda!11780 order!15139 (toChars!5978 (transformation!4337 r!2363))) (dynLambda!11779 order!15137 lambda!85655))))

(declare-fun dynLambda!11781 (Int TokenValue!4499) BalanceConc!17372)

(assert (=> d!675104 (= (list!10585 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))) (list!10585 lt!846791))))

(declare-fun lt!846826 () Unit!40066)

(declare-fun ForallOf!487 (Int BalanceConc!17372) Unit!40066)

(assert (=> d!675104 (= lt!846826 (ForallOf!487 lambda!85655 lt!846791))))

(assert (=> d!675104 (= (lemmaSemiInverse!1046 (transformation!4337 r!2363) lt!846791) lt!846826)))

(declare-fun b_lambda!72611 () Bool)

(assert (=> (not b_lambda!72611) (not d!675104)))

(declare-fun t!203582 () Bool)

(declare-fun tb!135599 () Bool)

(assert (=> (and b!2281498 (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 r!2363))) t!203582) tb!135599))

(declare-fun tp!723108 () Bool)

(declare-fun b!2281615 () Bool)

(declare-fun e!1461678 () Bool)

(declare-fun inv!36736 (Conc!8822) Bool)

(assert (=> b!2281615 (= e!1461678 (and (inv!36736 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))) tp!723108))))

(declare-fun result!165348 () Bool)

(declare-fun inv!36737 (BalanceConc!17372) Bool)

(assert (=> tb!135599 (= result!165348 (and (inv!36737 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))) e!1461678))))

(assert (= tb!135599 b!2281615))

(declare-fun m!2709571 () Bool)

(assert (=> b!2281615 m!2709571))

(declare-fun m!2709573 () Bool)

(assert (=> tb!135599 m!2709573))

(assert (=> d!675104 t!203582))

(declare-fun b_and!180297 () Bool)

(assert (= b_and!180243 (and (=> t!203582 result!165348) b_and!180297)))

(declare-fun t!203584 () Bool)

(declare-fun tb!135601 () Bool)

(assert (=> (and b!2281500 (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 r!2363))) t!203584) tb!135601))

(declare-fun result!165352 () Bool)

(assert (= result!165352 result!165348))

(assert (=> d!675104 t!203584))

(declare-fun b_and!180299 () Bool)

(assert (= b_and!180247 (and (=> t!203584 result!165352) b_and!180299)))

(declare-fun t!203586 () Bool)

(declare-fun tb!135603 () Bool)

(assert (=> (and b!2281475 (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 r!2363))) t!203586) tb!135603))

(declare-fun result!165354 () Bool)

(assert (= result!165354 result!165348))

(assert (=> d!675104 t!203586))

(declare-fun b_and!180301 () Bool)

(assert (= b_and!180251 (and (=> t!203586 result!165354) b_and!180301)))

(declare-fun tb!135605 () Bool)

(declare-fun t!203588 () Bool)

(assert (=> (and b!2281469 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toChars!5978 (transformation!4337 r!2363))) t!203588) tb!135605))

(declare-fun result!165356 () Bool)

(assert (= result!165356 result!165348))

(assert (=> d!675104 t!203588))

(declare-fun b_and!180303 () Bool)

(assert (= b_and!180255 (and (=> t!203588 result!165356) b_and!180303)))

(declare-fun b_lambda!72613 () Bool)

(assert (=> (not b_lambda!72613) (not d!675104)))

(assert (=> d!675104 t!203566))

(declare-fun b_and!180305 () Bool)

(assert (= b_and!180273 (and (=> t!203566 result!165330) b_and!180305)))

(assert (=> d!675104 t!203568))

(declare-fun b_and!180307 () Bool)

(assert (= b_and!180275 (and (=> t!203568 result!165334) b_and!180307)))

(assert (=> d!675104 t!203570))

(declare-fun b_and!180309 () Bool)

(assert (= b_and!180277 (and (=> t!203570 result!165336) b_and!180309)))

(assert (=> d!675104 t!203572))

(declare-fun b_and!180311 () Bool)

(assert (= b_and!180279 (and (=> t!203572 result!165338) b_and!180311)))

(declare-fun m!2709575 () Bool)

(assert (=> d!675104 m!2709575))

(assert (=> d!675104 m!2709525))

(assert (=> d!675104 m!2709525))

(declare-fun m!2709577 () Bool)

(assert (=> d!675104 m!2709577))

(assert (=> d!675104 m!2709577))

(declare-fun m!2709579 () Bool)

(assert (=> d!675104 m!2709579))

(declare-fun m!2709581 () Bool)

(assert (=> d!675104 m!2709581))

(assert (=> b!2281491 d!675104))

(declare-fun d!675124 () Bool)

(declare-fun fromListB!1362 (List!27241) BalanceConc!17372)

(assert (=> d!675124 (= (seqFromList!3041 lt!846785) (fromListB!1362 lt!846785))))

(declare-fun bs!456590 () Bool)

(assert (= bs!456590 d!675124))

(declare-fun m!2709583 () Bool)

(assert (=> bs!456590 m!2709583))

(assert (=> b!2281491 d!675124))

(declare-fun d!675126 () Bool)

(assert (=> d!675126 (= (_2!15957 lt!846784) lt!846780)))

(declare-fun lt!846831 () Unit!40066)

(declare-fun choose!13309 (List!27241 List!27241 List!27241 List!27241 List!27241) Unit!40066)

(assert (=> d!675126 (= lt!846831 (choose!13309 lt!846785 (_2!15957 lt!846784) lt!846785 lt!846780 input!1722))))

(assert (=> d!675126 (isPrefix!2327 lt!846785 input!1722)))

(assert (=> d!675126 (= (lemmaSamePrefixThenSameSuffix!1028 lt!846785 (_2!15957 lt!846784) lt!846785 lt!846780 input!1722) lt!846831)))

(declare-fun bs!456591 () Bool)

(assert (= bs!456591 d!675126))

(declare-fun m!2709585 () Bool)

(assert (=> bs!456591 m!2709585))

(assert (=> bs!456591 m!2709467))

(assert (=> b!2281502 d!675126))

(declare-fun d!675128 () Bool)

(assert (=> d!675128 (isPrefix!2327 lt!846785 (++!6629 lt!846785 (_2!15957 lt!846784)))))

(declare-fun lt!846834 () Unit!40066)

(declare-fun choose!13310 (List!27241 List!27241) Unit!40066)

(assert (=> d!675128 (= lt!846834 (choose!13310 lt!846785 (_2!15957 lt!846784)))))

(assert (=> d!675128 (= (lemmaConcatTwoListThenFirstIsPrefix!1532 lt!846785 (_2!15957 lt!846784)) lt!846834)))

(declare-fun bs!456592 () Bool)

(assert (= bs!456592 d!675128))

(assert (=> bs!456592 m!2709451))

(assert (=> bs!456592 m!2709451))

(assert (=> bs!456592 m!2709453))

(declare-fun m!2709587 () Bool)

(assert (=> bs!456592 m!2709587))

(assert (=> b!2281502 d!675128))

(declare-fun d!675130 () Bool)

(declare-fun lt!846838 () Int)

(assert (=> d!675130 (>= lt!846838 0)))

(declare-fun e!1461690 () Int)

(assert (=> d!675130 (= lt!846838 e!1461690)))

(declare-fun c!362014 () Bool)

(assert (=> d!675130 (= c!362014 ((_ is Nil!27147) otherP!12))))

(assert (=> d!675130 (= (size!21348 otherP!12) lt!846838)))

(declare-fun b!2281635 () Bool)

(assert (=> b!2281635 (= e!1461690 0)))

(declare-fun b!2281636 () Bool)

(assert (=> b!2281636 (= e!1461690 (+ 1 (size!21348 (t!203545 otherP!12))))))

(assert (= (and d!675130 c!362014) b!2281635))

(assert (= (and d!675130 (not c!362014)) b!2281636))

(declare-fun m!2709609 () Bool)

(assert (=> b!2281636 m!2709609))

(assert (=> b!2281502 d!675130))

(declare-fun d!675136 () Bool)

(declare-fun list!10588 (Conc!8822) List!27241)

(assert (=> d!675136 (= (list!10585 (charsOf!2725 (h!32550 tokens!456))) (list!10588 (c!361992 (charsOf!2725 (h!32550 tokens!456)))))))

(declare-fun bs!456594 () Bool)

(assert (= bs!456594 d!675136))

(declare-fun m!2709611 () Bool)

(assert (=> bs!456594 m!2709611))

(assert (=> b!2281502 d!675136))

(declare-fun b!2281663 () Bool)

(declare-fun e!1461705 () List!27241)

(assert (=> b!2281663 (= e!1461705 (_2!15957 lt!846784))))

(declare-fun b!2281665 () Bool)

(declare-fun res!975371 () Bool)

(declare-fun e!1461706 () Bool)

(assert (=> b!2281665 (=> (not res!975371) (not e!1461706))))

(declare-fun lt!846846 () List!27241)

(assert (=> b!2281665 (= res!975371 (= (size!21348 lt!846846) (+ (size!21348 lt!846785) (size!21348 (_2!15957 lt!846784)))))))

(declare-fun b!2281666 () Bool)

(assert (=> b!2281666 (= e!1461706 (or (not (= (_2!15957 lt!846784) Nil!27147)) (= lt!846846 lt!846785)))))

(declare-fun b!2281664 () Bool)

(assert (=> b!2281664 (= e!1461705 (Cons!27147 (h!32548 lt!846785) (++!6629 (t!203545 lt!846785) (_2!15957 lt!846784))))))

(declare-fun d!675138 () Bool)

(assert (=> d!675138 e!1461706))

(declare-fun res!975370 () Bool)

(assert (=> d!675138 (=> (not res!975370) (not e!1461706))))

(declare-fun content!3629 (List!27241) (InoxSet C!13516))

(assert (=> d!675138 (= res!975370 (= (content!3629 lt!846846) ((_ map or) (content!3629 lt!846785) (content!3629 (_2!15957 lt!846784)))))))

(assert (=> d!675138 (= lt!846846 e!1461705)))

(declare-fun c!362025 () Bool)

(assert (=> d!675138 (= c!362025 ((_ is Nil!27147) lt!846785))))

(assert (=> d!675138 (= (++!6629 lt!846785 (_2!15957 lt!846784)) lt!846846)))

(assert (= (and d!675138 c!362025) b!2281663))

(assert (= (and d!675138 (not c!362025)) b!2281664))

(assert (= (and d!675138 res!975370) b!2281665))

(assert (= (and b!2281665 res!975371) b!2281666))

(declare-fun m!2709623 () Bool)

(assert (=> b!2281665 m!2709623))

(assert (=> b!2281665 m!2709457))

(declare-fun m!2709625 () Bool)

(assert (=> b!2281665 m!2709625))

(declare-fun m!2709627 () Bool)

(assert (=> b!2281664 m!2709627))

(declare-fun m!2709629 () Bool)

(assert (=> d!675138 m!2709629))

(declare-fun m!2709631 () Bool)

(assert (=> d!675138 m!2709631))

(declare-fun m!2709633 () Bool)

(assert (=> d!675138 m!2709633))

(assert (=> b!2281502 d!675138))

(declare-fun d!675150 () Bool)

(declare-fun lt!846849 () BalanceConc!17372)

(assert (=> d!675150 (= (list!10585 lt!846849) (originalCharacters!5107 (h!32550 tokens!456)))))

(assert (=> d!675150 (= lt!846849 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456))))))

(assert (=> d!675150 (= (charsOf!2725 (h!32550 tokens!456)) lt!846849)))

(declare-fun b_lambda!72615 () Bool)

(assert (=> (not b_lambda!72615) (not d!675150)))

(declare-fun t!203590 () Bool)

(declare-fun tb!135607 () Bool)

(assert (=> (and b!2281498 (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) t!203590) tb!135607))

(declare-fun b!2281677 () Bool)

(declare-fun e!1461713 () Bool)

(declare-fun tp!723109 () Bool)

(assert (=> b!2281677 (= e!1461713 (and (inv!36736 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456))))) tp!723109))))

(declare-fun result!165358 () Bool)

(assert (=> tb!135607 (= result!165358 (and (inv!36737 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456)))) e!1461713))))

(assert (= tb!135607 b!2281677))

(declare-fun m!2709635 () Bool)

(assert (=> b!2281677 m!2709635))

(declare-fun m!2709637 () Bool)

(assert (=> tb!135607 m!2709637))

(assert (=> d!675150 t!203590))

(declare-fun b_and!180313 () Bool)

(assert (= b_and!180297 (and (=> t!203590 result!165358) b_and!180313)))

(declare-fun tb!135609 () Bool)

(declare-fun t!203592 () Bool)

(assert (=> (and b!2281500 (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) t!203592) tb!135609))

(declare-fun result!165360 () Bool)

(assert (= result!165360 result!165358))

(assert (=> d!675150 t!203592))

(declare-fun b_and!180315 () Bool)

(assert (= b_and!180299 (and (=> t!203592 result!165360) b_and!180315)))

(declare-fun tb!135611 () Bool)

(declare-fun t!203594 () Bool)

(assert (=> (and b!2281475 (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) t!203594) tb!135611))

(declare-fun result!165362 () Bool)

(assert (= result!165362 result!165358))

(assert (=> d!675150 t!203594))

(declare-fun b_and!180317 () Bool)

(assert (= b_and!180301 (and (=> t!203594 result!165362) b_and!180317)))

(declare-fun t!203596 () Bool)

(declare-fun tb!135613 () Bool)

(assert (=> (and b!2281469 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) t!203596) tb!135613))

(declare-fun result!165364 () Bool)

(assert (= result!165364 result!165358))

(assert (=> d!675150 t!203596))

(declare-fun b_and!180319 () Bool)

(assert (= b_and!180303 (and (=> t!203596 result!165364) b_and!180319)))

(declare-fun m!2709641 () Bool)

(assert (=> d!675150 m!2709641))

(declare-fun m!2709647 () Bool)

(assert (=> d!675150 m!2709647))

(assert (=> b!2281502 d!675150))

(declare-fun b!2281692 () Bool)

(declare-fun res!975383 () Bool)

(declare-fun e!1461724 () Bool)

(assert (=> b!2281692 (=> (not res!975383) (not e!1461724))))

(declare-fun head!4950 (List!27241) C!13516)

(assert (=> b!2281692 (= res!975383 (= (head!4950 lt!846785) (head!4950 (++!6629 lt!846785 (_2!15957 lt!846784)))))))

(declare-fun b!2281693 () Bool)

(declare-fun tail!3293 (List!27241) List!27241)

(assert (=> b!2281693 (= e!1461724 (isPrefix!2327 (tail!3293 lt!846785) (tail!3293 (++!6629 lt!846785 (_2!15957 lt!846784)))))))

(declare-fun b!2281691 () Bool)

(declare-fun e!1461725 () Bool)

(assert (=> b!2281691 (= e!1461725 e!1461724)))

(declare-fun res!975385 () Bool)

(assert (=> b!2281691 (=> (not res!975385) (not e!1461724))))

(assert (=> b!2281691 (= res!975385 (not ((_ is Nil!27147) (++!6629 lt!846785 (_2!15957 lt!846784)))))))

(declare-fun d!675154 () Bool)

(declare-fun e!1461723 () Bool)

(assert (=> d!675154 e!1461723))

(declare-fun res!975386 () Bool)

(assert (=> d!675154 (=> res!975386 e!1461723)))

(declare-fun lt!846852 () Bool)

(assert (=> d!675154 (= res!975386 (not lt!846852))))

(assert (=> d!675154 (= lt!846852 e!1461725)))

(declare-fun res!975384 () Bool)

(assert (=> d!675154 (=> res!975384 e!1461725)))

(assert (=> d!675154 (= res!975384 ((_ is Nil!27147) lt!846785))))

(assert (=> d!675154 (= (isPrefix!2327 lt!846785 (++!6629 lt!846785 (_2!15957 lt!846784))) lt!846852)))

(declare-fun b!2281694 () Bool)

(assert (=> b!2281694 (= e!1461723 (>= (size!21348 (++!6629 lt!846785 (_2!15957 lt!846784))) (size!21348 lt!846785)))))

(assert (= (and d!675154 (not res!975384)) b!2281691))

(assert (= (and b!2281691 res!975385) b!2281692))

(assert (= (and b!2281692 res!975383) b!2281693))

(assert (= (and d!675154 (not res!975386)) b!2281694))

(declare-fun m!2709649 () Bool)

(assert (=> b!2281692 m!2709649))

(assert (=> b!2281692 m!2709451))

(declare-fun m!2709651 () Bool)

(assert (=> b!2281692 m!2709651))

(declare-fun m!2709653 () Bool)

(assert (=> b!2281693 m!2709653))

(assert (=> b!2281693 m!2709451))

(declare-fun m!2709655 () Bool)

(assert (=> b!2281693 m!2709655))

(assert (=> b!2281693 m!2709653))

(assert (=> b!2281693 m!2709655))

(declare-fun m!2709657 () Bool)

(assert (=> b!2281693 m!2709657))

(assert (=> b!2281694 m!2709451))

(declare-fun m!2709659 () Bool)

(assert (=> b!2281694 m!2709659))

(assert (=> b!2281694 m!2709457))

(assert (=> b!2281502 d!675154))

(declare-fun d!675158 () Bool)

(declare-fun lt!846855 () List!27241)

(assert (=> d!675158 (= (++!6629 lt!846785 lt!846855) input!1722)))

(declare-fun e!1461728 () List!27241)

(assert (=> d!675158 (= lt!846855 e!1461728)))

(declare-fun c!362034 () Bool)

(assert (=> d!675158 (= c!362034 ((_ is Cons!27147) lt!846785))))

(assert (=> d!675158 (>= (size!21348 input!1722) (size!21348 lt!846785))))

(assert (=> d!675158 (= (getSuffix!1118 input!1722 lt!846785) lt!846855)))

(declare-fun b!2281699 () Bool)

(assert (=> b!2281699 (= e!1461728 (getSuffix!1118 (tail!3293 input!1722) (t!203545 lt!846785)))))

(declare-fun b!2281700 () Bool)

(assert (=> b!2281700 (= e!1461728 input!1722)))

(assert (= (and d!675158 c!362034) b!2281699))

(assert (= (and d!675158 (not c!362034)) b!2281700))

(declare-fun m!2709661 () Bool)

(assert (=> d!675158 m!2709661))

(declare-fun m!2709663 () Bool)

(assert (=> d!675158 m!2709663))

(assert (=> d!675158 m!2709457))

(declare-fun m!2709665 () Bool)

(assert (=> b!2281699 m!2709665))

(assert (=> b!2281699 m!2709665))

(declare-fun m!2709667 () Bool)

(assert (=> b!2281699 m!2709667))

(assert (=> b!2281502 d!675158))

(declare-fun d!675160 () Bool)

(declare-fun lt!846856 () Int)

(assert (=> d!675160 (>= lt!846856 0)))

(declare-fun e!1461729 () Int)

(assert (=> d!675160 (= lt!846856 e!1461729)))

(declare-fun c!362035 () Bool)

(assert (=> d!675160 (= c!362035 ((_ is Nil!27147) lt!846785))))

(assert (=> d!675160 (= (size!21348 lt!846785) lt!846856)))

(declare-fun b!2281701 () Bool)

(assert (=> b!2281701 (= e!1461729 0)))

(declare-fun b!2281702 () Bool)

(assert (=> b!2281702 (= e!1461729 (+ 1 (size!21348 (t!203545 lt!846785))))))

(assert (= (and d!675160 c!362035) b!2281701))

(assert (= (and d!675160 (not c!362035)) b!2281702))

(declare-fun m!2709669 () Bool)

(assert (=> b!2281702 m!2709669))

(assert (=> b!2281502 d!675160))

(declare-fun d!675162 () Bool)

(declare-fun lt!846857 () Bool)

(assert (=> d!675162 (= lt!846857 (select (content!3628 rules!1750) r!2363))))

(declare-fun e!1461730 () Bool)

(assert (=> d!675162 (= lt!846857 e!1461730)))

(declare-fun res!975387 () Bool)

(assert (=> d!675162 (=> (not res!975387) (not e!1461730))))

(assert (=> d!675162 (= res!975387 ((_ is Cons!27150) rules!1750))))

(assert (=> d!675162 (= (contains!4709 rules!1750 r!2363) lt!846857)))

(declare-fun b!2281703 () Bool)

(declare-fun e!1461731 () Bool)

(assert (=> b!2281703 (= e!1461730 e!1461731)))

(declare-fun res!975388 () Bool)

(assert (=> b!2281703 (=> res!975388 e!1461731)))

(assert (=> b!2281703 (= res!975388 (= (h!32551 rules!1750) r!2363))))

(declare-fun b!2281704 () Bool)

(assert (=> b!2281704 (= e!1461731 (contains!4709 (t!203548 rules!1750) r!2363))))

(assert (= (and d!675162 res!975387) b!2281703))

(assert (= (and b!2281703 (not res!975388)) b!2281704))

(assert (=> d!675162 m!2709481))

(declare-fun m!2709671 () Bool)

(assert (=> d!675162 m!2709671))

(declare-fun m!2709673 () Bool)

(assert (=> b!2281704 m!2709673))

(assert (=> b!2281497 d!675162))

(declare-fun b!2281706 () Bool)

(declare-fun res!975389 () Bool)

(declare-fun e!1461733 () Bool)

(assert (=> b!2281706 (=> (not res!975389) (not e!1461733))))

(assert (=> b!2281706 (= res!975389 (= (head!4950 lt!846785) (head!4950 input!1722)))))

(declare-fun b!2281707 () Bool)

(assert (=> b!2281707 (= e!1461733 (isPrefix!2327 (tail!3293 lt!846785) (tail!3293 input!1722)))))

(declare-fun b!2281705 () Bool)

(declare-fun e!1461734 () Bool)

(assert (=> b!2281705 (= e!1461734 e!1461733)))

(declare-fun res!975391 () Bool)

(assert (=> b!2281705 (=> (not res!975391) (not e!1461733))))

(assert (=> b!2281705 (= res!975391 (not ((_ is Nil!27147) input!1722)))))

(declare-fun d!675164 () Bool)

(declare-fun e!1461732 () Bool)

(assert (=> d!675164 e!1461732))

(declare-fun res!975392 () Bool)

(assert (=> d!675164 (=> res!975392 e!1461732)))

(declare-fun lt!846858 () Bool)

(assert (=> d!675164 (= res!975392 (not lt!846858))))

(assert (=> d!675164 (= lt!846858 e!1461734)))

(declare-fun res!975390 () Bool)

(assert (=> d!675164 (=> res!975390 e!1461734)))

(assert (=> d!675164 (= res!975390 ((_ is Nil!27147) lt!846785))))

(assert (=> d!675164 (= (isPrefix!2327 lt!846785 input!1722) lt!846858)))

(declare-fun b!2281708 () Bool)

(assert (=> b!2281708 (= e!1461732 (>= (size!21348 input!1722) (size!21348 lt!846785)))))

(assert (= (and d!675164 (not res!975390)) b!2281705))

(assert (= (and b!2281705 res!975391) b!2281706))

(assert (= (and b!2281706 res!975389) b!2281707))

(assert (= (and d!675164 (not res!975392)) b!2281708))

(assert (=> b!2281706 m!2709649))

(declare-fun m!2709675 () Bool)

(assert (=> b!2281706 m!2709675))

(assert (=> b!2281707 m!2709653))

(assert (=> b!2281707 m!2709665))

(assert (=> b!2281707 m!2709653))

(assert (=> b!2281707 m!2709665))

(declare-fun m!2709677 () Bool)

(assert (=> b!2281707 m!2709677))

(assert (=> b!2281708 m!2709663))

(assert (=> b!2281708 m!2709457))

(assert (=> b!2281476 d!675164))

(declare-fun d!675166 () Bool)

(assert (=> d!675166 (= lt!846785 otherP!12)))

(declare-fun lt!846861 () Unit!40066)

(declare-fun choose!13311 (List!27241 List!27241 List!27241) Unit!40066)

(assert (=> d!675166 (= lt!846861 (choose!13311 lt!846785 otherP!12 input!1722))))

(assert (=> d!675166 (isPrefix!2327 lt!846785 input!1722)))

(assert (=> d!675166 (= (lemmaIsPrefixSameLengthThenSameList!393 lt!846785 otherP!12 input!1722) lt!846861)))

(declare-fun bs!456596 () Bool)

(assert (= bs!456596 d!675166))

(declare-fun m!2709679 () Bool)

(assert (=> bs!456596 m!2709679))

(assert (=> bs!456596 m!2709467))

(assert (=> b!2281476 d!675166))

(declare-fun d!675168 () Bool)

(assert (=> d!675168 (= (inv!36729 (tag!4827 (h!32551 rules!1750))) (= (mod (str.len (value!137423 (tag!4827 (h!32551 rules!1750)))) 2) 0))))

(assert (=> b!2281477 d!675168))

(declare-fun d!675170 () Bool)

(declare-fun res!975393 () Bool)

(declare-fun e!1461735 () Bool)

(assert (=> d!675170 (=> (not res!975393) (not e!1461735))))

(assert (=> d!675170 (= res!975393 (semiInverseModEq!1752 (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 (h!32551 rules!1750)))))))

(assert (=> d!675170 (= (inv!36732 (transformation!4337 (h!32551 rules!1750))) e!1461735)))

(declare-fun b!2281709 () Bool)

(assert (=> b!2281709 (= e!1461735 (equivClasses!1671 (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 (h!32551 rules!1750)))))))

(assert (= (and d!675170 res!975393) b!2281709))

(declare-fun m!2709681 () Bool)

(assert (=> d!675170 m!2709681))

(declare-fun m!2709683 () Bool)

(assert (=> b!2281709 m!2709683))

(assert (=> b!2281477 d!675170))

(declare-fun d!675172 () Bool)

(declare-fun lt!846864 () Int)

(assert (=> d!675172 (= lt!846864 (size!21348 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))

(declare-fun size!21351 (Conc!8822) Int)

(assert (=> d!675172 (= lt!846864 (size!21351 (c!361992 (charsOf!2725 (head!4948 tokens!456)))))))

(assert (=> d!675172 (= (size!21347 (charsOf!2725 (head!4948 tokens!456))) lt!846864)))

(declare-fun bs!456597 () Bool)

(assert (= bs!456597 d!675172))

(assert (=> bs!456597 m!2709387))

(assert (=> bs!456597 m!2709389))

(assert (=> bs!456597 m!2709389))

(declare-fun m!2709685 () Bool)

(assert (=> bs!456597 m!2709685))

(declare-fun m!2709687 () Bool)

(assert (=> bs!456597 m!2709687))

(assert (=> b!2281488 d!675172))

(declare-fun d!675174 () Bool)

(declare-fun lt!846865 () BalanceConc!17372)

(assert (=> d!675174 (= (list!10585 lt!846865) (originalCharacters!5107 (head!4948 tokens!456)))))

(assert (=> d!675174 (= lt!846865 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456))))))

(assert (=> d!675174 (= (charsOf!2725 (head!4948 tokens!456)) lt!846865)))

(declare-fun b_lambda!72617 () Bool)

(assert (=> (not b_lambda!72617) (not d!675174)))

(declare-fun tb!135615 () Bool)

(declare-fun t!203598 () Bool)

(assert (=> (and b!2281498 (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456))))) t!203598) tb!135615))

(declare-fun b!2281710 () Bool)

(declare-fun e!1461736 () Bool)

(declare-fun tp!723110 () Bool)

(assert (=> b!2281710 (= e!1461736 (and (inv!36736 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456))))) tp!723110))))

(declare-fun result!165366 () Bool)

(assert (=> tb!135615 (= result!165366 (and (inv!36737 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456)))) e!1461736))))

(assert (= tb!135615 b!2281710))

(declare-fun m!2709689 () Bool)

(assert (=> b!2281710 m!2709689))

(declare-fun m!2709691 () Bool)

(assert (=> tb!135615 m!2709691))

(assert (=> d!675174 t!203598))

(declare-fun b_and!180321 () Bool)

(assert (= b_and!180313 (and (=> t!203598 result!165366) b_and!180321)))

(declare-fun tb!135617 () Bool)

(declare-fun t!203600 () Bool)

(assert (=> (and b!2281500 (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456))))) t!203600) tb!135617))

(declare-fun result!165368 () Bool)

(assert (= result!165368 result!165366))

(assert (=> d!675174 t!203600))

(declare-fun b_and!180323 () Bool)

(assert (= b_and!180315 (and (=> t!203600 result!165368) b_and!180323)))

(declare-fun t!203602 () Bool)

(declare-fun tb!135619 () Bool)

(assert (=> (and b!2281475 (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456))))) t!203602) tb!135619))

(declare-fun result!165370 () Bool)

(assert (= result!165370 result!165366))

(assert (=> d!675174 t!203602))

(declare-fun b_and!180325 () Bool)

(assert (= b_and!180317 (and (=> t!203602 result!165370) b_and!180325)))

(declare-fun t!203604 () Bool)

(declare-fun tb!135621 () Bool)

(assert (=> (and b!2281469 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456))))) t!203604) tb!135621))

(declare-fun result!165372 () Bool)

(assert (= result!165372 result!165366))

(assert (=> d!675174 t!203604))

(declare-fun b_and!180327 () Bool)

(assert (= b_and!180319 (and (=> t!203604 result!165372) b_and!180327)))

(declare-fun m!2709693 () Bool)

(assert (=> d!675174 m!2709693))

(declare-fun m!2709695 () Bool)

(assert (=> d!675174 m!2709695))

(assert (=> b!2281488 d!675174))

(declare-fun d!675176 () Bool)

(assert (=> d!675176 (= (head!4948 tokens!456) (h!32550 tokens!456))))

(assert (=> b!2281488 d!675176))

(assert (=> b!2281488 d!675130))

(declare-fun bm!136427 () Bool)

(declare-fun call!136432 () Bool)

(assert (=> bm!136427 (= call!136432 (isEmpty!15418 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))

(declare-fun b!2281757 () Bool)

(declare-fun res!975425 () Bool)

(declare-fun e!1461757 () Bool)

(assert (=> b!2281757 (=> (not res!975425) (not e!1461757))))

(assert (=> b!2281757 (= res!975425 (not call!136432))))

(declare-fun b!2281758 () Bool)

(declare-fun e!1461760 () Bool)

(declare-fun lt!846878 () Bool)

(assert (=> b!2281758 (= e!1461760 (= lt!846878 call!136432))))

(declare-fun b!2281759 () Bool)

(declare-fun e!1461759 () Bool)

(declare-fun derivativeStep!1510 (Regex!6685 C!13516) Regex!6685)

(assert (=> b!2281759 (= e!1461759 (matchR!2942 (derivativeStep!1510 (regex!4337 r!2363) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456))))) (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))

(declare-fun b!2281760 () Bool)

(declare-fun res!975431 () Bool)

(assert (=> b!2281760 (=> (not res!975431) (not e!1461757))))

(assert (=> b!2281760 (= res!975431 (isEmpty!15418 (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))

(declare-fun d!675178 () Bool)

(assert (=> d!675178 e!1461760))

(declare-fun c!362045 () Bool)

(assert (=> d!675178 (= c!362045 ((_ is EmptyExpr!6685) (regex!4337 r!2363)))))

(assert (=> d!675178 (= lt!846878 e!1461759)))

(declare-fun c!362046 () Bool)

(assert (=> d!675178 (= c!362046 (isEmpty!15418 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))

(assert (=> d!675178 (validRegex!2512 (regex!4337 r!2363))))

(assert (=> d!675178 (= (matchR!2942 (regex!4337 r!2363) (list!10585 (charsOf!2725 (head!4948 tokens!456)))) lt!846878)))

(declare-fun b!2281761 () Bool)

(declare-fun res!975424 () Bool)

(declare-fun e!1461763 () Bool)

(assert (=> b!2281761 (=> res!975424 e!1461763)))

(assert (=> b!2281761 (= res!975424 (not ((_ is ElementMatch!6685) (regex!4337 r!2363))))))

(declare-fun e!1461761 () Bool)

(assert (=> b!2281761 (= e!1461761 e!1461763)))

(declare-fun b!2281762 () Bool)

(declare-fun e!1461758 () Bool)

(assert (=> b!2281762 (= e!1461763 e!1461758)))

(declare-fun res!975430 () Bool)

(assert (=> b!2281762 (=> (not res!975430) (not e!1461758))))

(assert (=> b!2281762 (= res!975430 (not lt!846878))))

(declare-fun b!2281763 () Bool)

(assert (=> b!2281763 (= e!1461757 (= (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456)))) (c!361993 (regex!4337 r!2363))))))

(declare-fun b!2281764 () Bool)

(assert (=> b!2281764 (= e!1461760 e!1461761)))

(declare-fun c!362044 () Bool)

(assert (=> b!2281764 (= c!362044 ((_ is EmptyLang!6685) (regex!4337 r!2363)))))

(declare-fun b!2281765 () Bool)

(declare-fun res!975426 () Bool)

(declare-fun e!1461762 () Bool)

(assert (=> b!2281765 (=> res!975426 e!1461762)))

(assert (=> b!2281765 (= res!975426 (not (isEmpty!15418 (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))))

(declare-fun b!2281766 () Bool)

(assert (=> b!2281766 (= e!1461759 (nullable!1850 (regex!4337 r!2363)))))

(declare-fun b!2281767 () Bool)

(assert (=> b!2281767 (= e!1461761 (not lt!846878))))

(declare-fun b!2281768 () Bool)

(declare-fun res!975429 () Bool)

(assert (=> b!2281768 (=> res!975429 e!1461763)))

(assert (=> b!2281768 (= res!975429 e!1461757)))

(declare-fun res!975427 () Bool)

(assert (=> b!2281768 (=> (not res!975427) (not e!1461757))))

(assert (=> b!2281768 (= res!975427 lt!846878)))

(declare-fun b!2281769 () Bool)

(assert (=> b!2281769 (= e!1461758 e!1461762)))

(declare-fun res!975428 () Bool)

(assert (=> b!2281769 (=> res!975428 e!1461762)))

(assert (=> b!2281769 (= res!975428 call!136432)))

(declare-fun b!2281770 () Bool)

(assert (=> b!2281770 (= e!1461762 (not (= (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456)))) (c!361993 (regex!4337 r!2363)))))))

(assert (= (and d!675178 c!362046) b!2281766))

(assert (= (and d!675178 (not c!362046)) b!2281759))

(assert (= (and d!675178 c!362045) b!2281758))

(assert (= (and d!675178 (not c!362045)) b!2281764))

(assert (= (and b!2281764 c!362044) b!2281767))

(assert (= (and b!2281764 (not c!362044)) b!2281761))

(assert (= (and b!2281761 (not res!975424)) b!2281768))

(assert (= (and b!2281768 res!975427) b!2281757))

(assert (= (and b!2281757 res!975425) b!2281760))

(assert (= (and b!2281760 res!975431) b!2281763))

(assert (= (and b!2281768 (not res!975429)) b!2281762))

(assert (= (and b!2281762 res!975430) b!2281769))

(assert (= (and b!2281769 (not res!975428)) b!2281765))

(assert (= (and b!2281765 (not res!975426)) b!2281770))

(assert (= (or b!2281758 b!2281757 b!2281769) bm!136427))

(assert (=> b!2281760 m!2709389))

(declare-fun m!2709697 () Bool)

(assert (=> b!2281760 m!2709697))

(assert (=> b!2281760 m!2709697))

(declare-fun m!2709699 () Bool)

(assert (=> b!2281760 m!2709699))

(assert (=> b!2281766 m!2709515))

(assert (=> d!675178 m!2709389))

(declare-fun m!2709701 () Bool)

(assert (=> d!675178 m!2709701))

(assert (=> d!675178 m!2709513))

(assert (=> bm!136427 m!2709389))

(assert (=> bm!136427 m!2709701))

(assert (=> b!2281759 m!2709389))

(declare-fun m!2709703 () Bool)

(assert (=> b!2281759 m!2709703))

(assert (=> b!2281759 m!2709703))

(declare-fun m!2709705 () Bool)

(assert (=> b!2281759 m!2709705))

(assert (=> b!2281759 m!2709389))

(assert (=> b!2281759 m!2709697))

(assert (=> b!2281759 m!2709705))

(assert (=> b!2281759 m!2709697))

(declare-fun m!2709707 () Bool)

(assert (=> b!2281759 m!2709707))

(assert (=> b!2281770 m!2709389))

(assert (=> b!2281770 m!2709703))

(assert (=> b!2281763 m!2709389))

(assert (=> b!2281763 m!2709703))

(assert (=> b!2281765 m!2709389))

(assert (=> b!2281765 m!2709697))

(assert (=> b!2281765 m!2709697))

(assert (=> b!2281765 m!2709699))

(assert (=> b!2281499 d!675178))

(declare-fun d!675180 () Bool)

(assert (=> d!675180 (= (list!10585 (charsOf!2725 (head!4948 tokens!456))) (list!10588 (c!361992 (charsOf!2725 (head!4948 tokens!456)))))))

(declare-fun bs!456598 () Bool)

(assert (= bs!456598 d!675180))

(declare-fun m!2709709 () Bool)

(assert (=> bs!456598 m!2709709))

(assert (=> b!2281499 d!675180))

(assert (=> b!2281499 d!675174))

(assert (=> b!2281499 d!675176))

(declare-fun d!675182 () Bool)

(assert (=> d!675182 (= (isEmpty!15420 rules!1750) ((_ is Nil!27150) rules!1750))))

(assert (=> b!2281478 d!675182))

(declare-fun d!675184 () Bool)

(assert (=> d!675184 (= (isEmpty!15419 tokens!456) ((_ is Nil!27149) tokens!456))))

(assert (=> b!2281473 d!675184))

(declare-fun b!2281772 () Bool)

(declare-fun res!975432 () Bool)

(declare-fun e!1461765 () Bool)

(assert (=> b!2281772 (=> (not res!975432) (not e!1461765))))

(assert (=> b!2281772 (= res!975432 (= (head!4950 otherP!12) (head!4950 input!1722)))))

(declare-fun b!2281773 () Bool)

(assert (=> b!2281773 (= e!1461765 (isPrefix!2327 (tail!3293 otherP!12) (tail!3293 input!1722)))))

(declare-fun b!2281771 () Bool)

(declare-fun e!1461766 () Bool)

(assert (=> b!2281771 (= e!1461766 e!1461765)))

(declare-fun res!975434 () Bool)

(assert (=> b!2281771 (=> (not res!975434) (not e!1461765))))

(assert (=> b!2281771 (= res!975434 (not ((_ is Nil!27147) input!1722)))))

(declare-fun d!675186 () Bool)

(declare-fun e!1461764 () Bool)

(assert (=> d!675186 e!1461764))

(declare-fun res!975435 () Bool)

(assert (=> d!675186 (=> res!975435 e!1461764)))

(declare-fun lt!846879 () Bool)

(assert (=> d!675186 (= res!975435 (not lt!846879))))

(assert (=> d!675186 (= lt!846879 e!1461766)))

(declare-fun res!975433 () Bool)

(assert (=> d!675186 (=> res!975433 e!1461766)))

(assert (=> d!675186 (= res!975433 ((_ is Nil!27147) otherP!12))))

(assert (=> d!675186 (= (isPrefix!2327 otherP!12 input!1722) lt!846879)))

(declare-fun b!2281774 () Bool)

(assert (=> b!2281774 (= e!1461764 (>= (size!21348 input!1722) (size!21348 otherP!12)))))

(assert (= (and d!675186 (not res!975433)) b!2281771))

(assert (= (and b!2281771 res!975434) b!2281772))

(assert (= (and b!2281772 res!975432) b!2281773))

(assert (= (and d!675186 (not res!975435)) b!2281774))

(declare-fun m!2709711 () Bool)

(assert (=> b!2281772 m!2709711))

(assert (=> b!2281772 m!2709675))

(declare-fun m!2709713 () Bool)

(assert (=> b!2281773 m!2709713))

(assert (=> b!2281773 m!2709665))

(assert (=> b!2281773 m!2709713))

(assert (=> b!2281773 m!2709665))

(declare-fun m!2709715 () Bool)

(assert (=> b!2281773 m!2709715))

(assert (=> b!2281774 m!2709663))

(assert (=> b!2281774 m!2709433))

(assert (=> b!2281484 d!675186))

(declare-fun d!675188 () Bool)

(declare-fun c!362052 () Bool)

(assert (=> d!675188 (= c!362052 ((_ is IntegerValue!13497) (value!137424 (h!32550 tokens!456))))))

(declare-fun e!1461776 () Bool)

(assert (=> d!675188 (= (inv!21 (value!137424 (h!32550 tokens!456))) e!1461776)))

(declare-fun b!2281794 () Bool)

(declare-fun e!1461778 () Bool)

(declare-fun inv!15 (TokenValue!4499) Bool)

(assert (=> b!2281794 (= e!1461778 (inv!15 (value!137424 (h!32550 tokens!456))))))

(declare-fun b!2281795 () Bool)

(declare-fun res!975445 () Bool)

(assert (=> b!2281795 (=> res!975445 e!1461778)))

(assert (=> b!2281795 (= res!975445 (not ((_ is IntegerValue!13499) (value!137424 (h!32550 tokens!456)))))))

(declare-fun e!1461777 () Bool)

(assert (=> b!2281795 (= e!1461777 e!1461778)))

(declare-fun b!2281796 () Bool)

(declare-fun inv!16 (TokenValue!4499) Bool)

(assert (=> b!2281796 (= e!1461776 (inv!16 (value!137424 (h!32550 tokens!456))))))

(declare-fun b!2281797 () Bool)

(declare-fun inv!17 (TokenValue!4499) Bool)

(assert (=> b!2281797 (= e!1461777 (inv!17 (value!137424 (h!32550 tokens!456))))))

(declare-fun b!2281798 () Bool)

(assert (=> b!2281798 (= e!1461776 e!1461777)))

(declare-fun c!362053 () Bool)

(assert (=> b!2281798 (= c!362053 ((_ is IntegerValue!13498) (value!137424 (h!32550 tokens!456))))))

(assert (= (and d!675188 c!362052) b!2281796))

(assert (= (and d!675188 (not c!362052)) b!2281798))

(assert (= (and b!2281798 c!362053) b!2281797))

(assert (= (and b!2281798 (not c!362053)) b!2281795))

(assert (= (and b!2281795 (not res!975445)) b!2281794))

(declare-fun m!2709749 () Bool)

(assert (=> b!2281794 m!2709749))

(declare-fun m!2709751 () Bool)

(assert (=> b!2281796 m!2709751))

(declare-fun m!2709755 () Bool)

(assert (=> b!2281797 m!2709755))

(assert (=> b!2281495 d!675188))

(assert (=> b!2281474 d!675176))

(declare-fun d!675196 () Bool)

(assert (=> d!675196 (= (get!8185 lt!846786) (v!30386 lt!846786))))

(assert (=> b!2281485 d!675196))

(declare-fun b!2281901 () Bool)

(declare-fun e!1461840 () Option!5323)

(declare-fun call!136436 () Option!5323)

(assert (=> b!2281901 (= e!1461840 call!136436)))

(declare-fun b!2281902 () Bool)

(declare-fun e!1461838 () Bool)

(declare-fun lt!846918 () Option!5323)

(assert (=> b!2281902 (= e!1461838 (contains!4709 rules!1750 (rule!6663 (_1!15957 (get!8185 lt!846918)))))))

(declare-fun b!2281903 () Bool)

(declare-fun res!975492 () Bool)

(assert (=> b!2281903 (=> (not res!975492) (not e!1461838))))

(assert (=> b!2281903 (= res!975492 (= (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918)))) (originalCharacters!5107 (_1!15957 (get!8185 lt!846918)))))))

(declare-fun b!2281904 () Bool)

(declare-fun res!975495 () Bool)

(assert (=> b!2281904 (=> (not res!975495) (not e!1461838))))

(assert (=> b!2281904 (= res!975495 (= (++!6629 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918)))) (_2!15957 (get!8185 lt!846918))) input!1722))))

(declare-fun b!2281905 () Bool)

(declare-fun res!975496 () Bool)

(assert (=> b!2281905 (=> (not res!975496) (not e!1461838))))

(assert (=> b!2281905 (= res!975496 (matchR!2942 (regex!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))) (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))))))

(declare-fun bm!136431 () Bool)

(declare-fun maxPrefixOneRule!1374 (LexerInterface!3934 Rule!8474 List!27241) Option!5323)

(assert (=> bm!136431 (= call!136436 (maxPrefixOneRule!1374 thiss!16613 (h!32551 rules!1750) input!1722))))

(declare-fun b!2281906 () Bool)

(declare-fun res!975494 () Bool)

(assert (=> b!2281906 (=> (not res!975494) (not e!1461838))))

(assert (=> b!2281906 (= res!975494 (= (value!137424 (_1!15957 (get!8185 lt!846918))) (apply!6611 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))) (seqFromList!3041 (originalCharacters!5107 (_1!15957 (get!8185 lt!846918)))))))))

(declare-fun b!2281907 () Bool)

(declare-fun lt!846917 () Option!5323)

(declare-fun lt!846914 () Option!5323)

(assert (=> b!2281907 (= e!1461840 (ite (and ((_ is None!5322) lt!846917) ((_ is None!5322) lt!846914)) None!5322 (ite ((_ is None!5322) lt!846914) lt!846917 (ite ((_ is None!5322) lt!846917) lt!846914 (ite (>= (size!21346 (_1!15957 (v!30386 lt!846917))) (size!21346 (_1!15957 (v!30386 lt!846914)))) lt!846917 lt!846914)))))))

(assert (=> b!2281907 (= lt!846917 call!136436)))

(assert (=> b!2281907 (= lt!846914 (maxPrefix!2198 thiss!16613 (t!203548 rules!1750) input!1722))))

(declare-fun b!2281908 () Bool)

(declare-fun res!975490 () Bool)

(assert (=> b!2281908 (=> (not res!975490) (not e!1461838))))

(assert (=> b!2281908 (= res!975490 (< (size!21348 (_2!15957 (get!8185 lt!846918))) (size!21348 input!1722)))))

(declare-fun b!2281909 () Bool)

(declare-fun e!1461839 () Bool)

(assert (=> b!2281909 (= e!1461839 e!1461838)))

(declare-fun res!975491 () Bool)

(assert (=> b!2281909 (=> (not res!975491) (not e!1461838))))

(declare-fun isDefined!4216 (Option!5323) Bool)

(assert (=> b!2281909 (= res!975491 (isDefined!4216 lt!846918))))

(declare-fun d!675198 () Bool)

(assert (=> d!675198 e!1461839))

(declare-fun res!975493 () Bool)

(assert (=> d!675198 (=> res!975493 e!1461839)))

(declare-fun isEmpty!15423 (Option!5323) Bool)

(assert (=> d!675198 (= res!975493 (isEmpty!15423 lt!846918))))

(assert (=> d!675198 (= lt!846918 e!1461840)))

(declare-fun c!362063 () Bool)

(assert (=> d!675198 (= c!362063 (and ((_ is Cons!27150) rules!1750) ((_ is Nil!27150) (t!203548 rules!1750))))))

(declare-fun lt!846916 () Unit!40066)

(declare-fun lt!846915 () Unit!40066)

(assert (=> d!675198 (= lt!846916 lt!846915)))

(assert (=> d!675198 (isPrefix!2327 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1479 (List!27241 List!27241) Unit!40066)

(assert (=> d!675198 (= lt!846915 (lemmaIsPrefixRefl!1479 input!1722 input!1722))))

(declare-fun rulesValidInductive!1521 (LexerInterface!3934 List!27244) Bool)

(assert (=> d!675198 (rulesValidInductive!1521 thiss!16613 rules!1750)))

(assert (=> d!675198 (= (maxPrefix!2198 thiss!16613 rules!1750 input!1722) lt!846918)))

(assert (= (and d!675198 c!362063) b!2281901))

(assert (= (and d!675198 (not c!362063)) b!2281907))

(assert (= (or b!2281901 b!2281907) bm!136431))

(assert (= (and d!675198 (not res!975493)) b!2281909))

(assert (= (and b!2281909 res!975491) b!2281903))

(assert (= (and b!2281903 res!975492) b!2281908))

(assert (= (and b!2281908 res!975490) b!2281904))

(assert (= (and b!2281904 res!975495) b!2281906))

(assert (= (and b!2281906 res!975494) b!2281905))

(assert (= (and b!2281905 res!975496) b!2281902))

(declare-fun m!2709831 () Bool)

(assert (=> bm!136431 m!2709831))

(declare-fun m!2709833 () Bool)

(assert (=> b!2281904 m!2709833))

(declare-fun m!2709835 () Bool)

(assert (=> b!2281904 m!2709835))

(assert (=> b!2281904 m!2709835))

(declare-fun m!2709837 () Bool)

(assert (=> b!2281904 m!2709837))

(assert (=> b!2281904 m!2709837))

(declare-fun m!2709839 () Bool)

(assert (=> b!2281904 m!2709839))

(declare-fun m!2709841 () Bool)

(assert (=> d!675198 m!2709841))

(declare-fun m!2709843 () Bool)

(assert (=> d!675198 m!2709843))

(declare-fun m!2709845 () Bool)

(assert (=> d!675198 m!2709845))

(declare-fun m!2709847 () Bool)

(assert (=> d!675198 m!2709847))

(assert (=> b!2281906 m!2709833))

(declare-fun m!2709849 () Bool)

(assert (=> b!2281906 m!2709849))

(assert (=> b!2281906 m!2709849))

(declare-fun m!2709851 () Bool)

(assert (=> b!2281906 m!2709851))

(assert (=> b!2281902 m!2709833))

(declare-fun m!2709853 () Bool)

(assert (=> b!2281902 m!2709853))

(assert (=> b!2281908 m!2709833))

(declare-fun m!2709855 () Bool)

(assert (=> b!2281908 m!2709855))

(assert (=> b!2281908 m!2709663))

(declare-fun m!2709857 () Bool)

(assert (=> b!2281907 m!2709857))

(assert (=> b!2281903 m!2709833))

(assert (=> b!2281903 m!2709835))

(assert (=> b!2281903 m!2709835))

(assert (=> b!2281903 m!2709837))

(declare-fun m!2709859 () Bool)

(assert (=> b!2281909 m!2709859))

(assert (=> b!2281905 m!2709833))

(assert (=> b!2281905 m!2709835))

(assert (=> b!2281905 m!2709835))

(assert (=> b!2281905 m!2709837))

(assert (=> b!2281905 m!2709837))

(declare-fun m!2709861 () Bool)

(assert (=> b!2281905 m!2709861))

(assert (=> b!2281485 d!675198))

(declare-fun d!675232 () Bool)

(assert (=> d!675232 (= (inv!36729 (tag!4827 (rule!6663 (h!32550 tokens!456)))) (= (mod (str.len (value!137423 (tag!4827 (rule!6663 (h!32550 tokens!456))))) 2) 0))))

(assert (=> b!2281496 d!675232))

(declare-fun d!675234 () Bool)

(declare-fun res!975497 () Bool)

(declare-fun e!1461857 () Bool)

(assert (=> d!675234 (=> (not res!975497) (not e!1461857))))

(assert (=> d!675234 (= res!975497 (semiInverseModEq!1752 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456))))))))

(assert (=> d!675234 (= (inv!36732 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) e!1461857)))

(declare-fun b!2281920 () Bool)

(assert (=> b!2281920 (= e!1461857 (equivClasses!1671 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456))))))))

(assert (= (and d!675234 res!975497) b!2281920))

(declare-fun m!2709867 () Bool)

(assert (=> d!675234 m!2709867))

(declare-fun m!2709871 () Bool)

(assert (=> b!2281920 m!2709871))

(assert (=> b!2281496 d!675234))

(declare-fun d!675236 () Bool)

(declare-fun list!10589 (Conc!8823) List!27243)

(assert (=> d!675236 (= (list!10584 (_1!15958 lt!846788)) (list!10589 (c!361994 (_1!15958 lt!846788))))))

(declare-fun bs!456602 () Bool)

(assert (= bs!456602 d!675236))

(declare-fun m!2709875 () Bool)

(assert (=> bs!456602 m!2709875))

(assert (=> b!2281486 d!675236))

(declare-fun d!675238 () Bool)

(assert (=> d!675238 (= (list!10585 (_2!15958 lt!846788)) (list!10588 (c!361992 (_2!15958 lt!846788))))))

(declare-fun bs!456603 () Bool)

(assert (= bs!456603 d!675238))

(declare-fun m!2709877 () Bool)

(assert (=> bs!456603 m!2709877))

(assert (=> b!2281486 d!675238))

(declare-fun b!2281941 () Bool)

(declare-fun e!1461870 () Bool)

(declare-fun lt!846921 () tuple2!26896)

(declare-fun isEmpty!15424 (BalanceConc!17374) Bool)

(assert (=> b!2281941 (= e!1461870 (not (isEmpty!15424 (_1!15958 lt!846921))))))

(declare-fun b!2281942 () Bool)

(declare-fun res!975505 () Bool)

(declare-fun e!1461868 () Bool)

(assert (=> b!2281942 (=> (not res!975505) (not e!1461868))))

(declare-fun lexList!1096 (LexerInterface!3934 List!27244 List!27241) tuple2!26898)

(assert (=> b!2281942 (= res!975505 (= (list!10584 (_1!15958 lt!846921)) (_1!15959 (lexList!1096 thiss!16613 rules!1750 (list!10585 (seqFromList!3041 input!1722))))))))

(declare-fun b!2281943 () Bool)

(declare-fun e!1461869 () Bool)

(assert (=> b!2281943 (= e!1461869 e!1461870)))

(declare-fun res!975504 () Bool)

(assert (=> b!2281943 (= res!975504 (< (size!21347 (_2!15958 lt!846921)) (size!21347 (seqFromList!3041 input!1722))))))

(assert (=> b!2281943 (=> (not res!975504) (not e!1461870))))

(declare-fun d!675240 () Bool)

(assert (=> d!675240 e!1461868))

(declare-fun res!975506 () Bool)

(assert (=> d!675240 (=> (not res!975506) (not e!1461868))))

(assert (=> d!675240 (= res!975506 e!1461869)))

(declare-fun c!362066 () Bool)

(declare-fun size!21352 (BalanceConc!17374) Int)

(assert (=> d!675240 (= c!362066 (> (size!21352 (_1!15958 lt!846921)) 0))))

(declare-fun lexTailRecV2!771 (LexerInterface!3934 List!27244 BalanceConc!17372 BalanceConc!17372 BalanceConc!17372 BalanceConc!17374) tuple2!26896)

(assert (=> d!675240 (= lt!846921 (lexTailRecV2!771 thiss!16613 rules!1750 (seqFromList!3041 input!1722) (BalanceConc!17373 Empty!8822) (seqFromList!3041 input!1722) (BalanceConc!17375 Empty!8823)))))

(assert (=> d!675240 (= (lex!1773 thiss!16613 rules!1750 (seqFromList!3041 input!1722)) lt!846921)))

(declare-fun b!2281944 () Bool)

(assert (=> b!2281944 (= e!1461869 (= (_2!15958 lt!846921) (seqFromList!3041 input!1722)))))

(declare-fun b!2281945 () Bool)

(assert (=> b!2281945 (= e!1461868 (= (list!10585 (_2!15958 lt!846921)) (_2!15959 (lexList!1096 thiss!16613 rules!1750 (list!10585 (seqFromList!3041 input!1722))))))))

(assert (= (and d!675240 c!362066) b!2281943))

(assert (= (and d!675240 (not c!362066)) b!2281944))

(assert (= (and b!2281943 res!975504) b!2281941))

(assert (= (and d!675240 res!975506) b!2281942))

(assert (= (and b!2281942 res!975505) b!2281945))

(declare-fun m!2709879 () Bool)

(assert (=> b!2281945 m!2709879))

(assert (=> b!2281945 m!2709417))

(declare-fun m!2709881 () Bool)

(assert (=> b!2281945 m!2709881))

(assert (=> b!2281945 m!2709881))

(declare-fun m!2709883 () Bool)

(assert (=> b!2281945 m!2709883))

(declare-fun m!2709885 () Bool)

(assert (=> b!2281941 m!2709885))

(declare-fun m!2709887 () Bool)

(assert (=> d!675240 m!2709887))

(assert (=> d!675240 m!2709417))

(assert (=> d!675240 m!2709417))

(declare-fun m!2709889 () Bool)

(assert (=> d!675240 m!2709889))

(declare-fun m!2709891 () Bool)

(assert (=> b!2281943 m!2709891))

(assert (=> b!2281943 m!2709417))

(declare-fun m!2709893 () Bool)

(assert (=> b!2281943 m!2709893))

(declare-fun m!2709895 () Bool)

(assert (=> b!2281942 m!2709895))

(assert (=> b!2281942 m!2709417))

(assert (=> b!2281942 m!2709881))

(assert (=> b!2281942 m!2709881))

(assert (=> b!2281942 m!2709883))

(assert (=> b!2281486 d!675240))

(declare-fun d!675242 () Bool)

(assert (=> d!675242 (= (seqFromList!3041 input!1722) (fromListB!1362 input!1722))))

(declare-fun bs!456604 () Bool)

(assert (= bs!456604 d!675242))

(declare-fun m!2709897 () Bool)

(assert (=> bs!456604 m!2709897))

(assert (=> b!2281486 d!675242))

(declare-fun d!675244 () Bool)

(declare-fun res!975511 () Bool)

(declare-fun e!1461873 () Bool)

(assert (=> d!675244 (=> (not res!975511) (not e!1461873))))

(assert (=> d!675244 (= res!975511 (not (isEmpty!15418 (originalCharacters!5107 (h!32550 tokens!456)))))))

(assert (=> d!675244 (= (inv!36733 (h!32550 tokens!456)) e!1461873)))

(declare-fun b!2281950 () Bool)

(declare-fun res!975512 () Bool)

(assert (=> b!2281950 (=> (not res!975512) (not e!1461873))))

(assert (=> b!2281950 (= res!975512 (= (originalCharacters!5107 (h!32550 tokens!456)) (list!10585 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456))))))))

(declare-fun b!2281951 () Bool)

(assert (=> b!2281951 (= e!1461873 (= (size!21346 (h!32550 tokens!456)) (size!21348 (originalCharacters!5107 (h!32550 tokens!456)))))))

(assert (= (and d!675244 res!975511) b!2281950))

(assert (= (and b!2281950 res!975512) b!2281951))

(declare-fun b_lambda!72633 () Bool)

(assert (=> (not b_lambda!72633) (not b!2281950)))

(assert (=> b!2281950 t!203590))

(declare-fun b_and!180353 () Bool)

(assert (= b_and!180321 (and (=> t!203590 result!165358) b_and!180353)))

(assert (=> b!2281950 t!203592))

(declare-fun b_and!180355 () Bool)

(assert (= b_and!180323 (and (=> t!203592 result!165360) b_and!180355)))

(assert (=> b!2281950 t!203594))

(declare-fun b_and!180357 () Bool)

(assert (= b_and!180325 (and (=> t!203594 result!165362) b_and!180357)))

(assert (=> b!2281950 t!203596))

(declare-fun b_and!180359 () Bool)

(assert (= b_and!180327 (and (=> t!203596 result!165364) b_and!180359)))

(declare-fun m!2709899 () Bool)

(assert (=> d!675244 m!2709899))

(assert (=> b!2281950 m!2709647))

(assert (=> b!2281950 m!2709647))

(declare-fun m!2709901 () Bool)

(assert (=> b!2281950 m!2709901))

(declare-fun m!2709903 () Bool)

(assert (=> b!2281951 m!2709903))

(assert (=> b!2281492 d!675244))

(declare-fun d!675246 () Bool)

(assert (=> d!675246 (= (isEmpty!15418 lt!846785) ((_ is Nil!27147) lt!846785))))

(assert (=> b!2281471 d!675246))

(declare-fun b!2281960 () Bool)

(declare-fun e!1461879 () Int)

(assert (=> b!2281960 (= e!1461879 0)))

(declare-fun b!2281963 () Bool)

(declare-fun e!1461880 () Int)

(assert (=> b!2281963 (= e!1461880 (- 1))))

(declare-fun b!2281961 () Bool)

(assert (=> b!2281961 (= e!1461879 e!1461880)))

(declare-fun c!362071 () Bool)

(assert (=> b!2281961 (= c!362071 (and ((_ is Cons!27150) rules!1750) (not (= (h!32551 rules!1750) r!2363))))))

(declare-fun b!2281962 () Bool)

(assert (=> b!2281962 (= e!1461880 (+ 1 (getIndex!350 (t!203548 rules!1750) r!2363)))))

(declare-fun d!675248 () Bool)

(declare-fun lt!846924 () Int)

(assert (=> d!675248 (>= lt!846924 0)))

(assert (=> d!675248 (= lt!846924 e!1461879)))

(declare-fun c!362072 () Bool)

(assert (=> d!675248 (= c!362072 (and ((_ is Cons!27150) rules!1750) (= (h!32551 rules!1750) r!2363)))))

(assert (=> d!675248 (contains!4709 rules!1750 r!2363)))

(assert (=> d!675248 (= (getIndex!350 rules!1750 r!2363) lt!846924)))

(assert (= (and d!675248 c!362072) b!2281960))

(assert (= (and d!675248 (not c!362072)) b!2281961))

(assert (= (and b!2281961 c!362071) b!2281962))

(assert (= (and b!2281961 (not c!362071)) b!2281963))

(declare-fun m!2709905 () Bool)

(assert (=> b!2281962 m!2709905))

(assert (=> d!675248 m!2709401))

(assert (=> b!2281482 d!675248))

(declare-fun b!2281964 () Bool)

(declare-fun e!1461881 () Int)

(assert (=> b!2281964 (= e!1461881 0)))

(declare-fun b!2281967 () Bool)

(declare-fun e!1461882 () Int)

(assert (=> b!2281967 (= e!1461882 (- 1))))

(declare-fun b!2281965 () Bool)

(assert (=> b!2281965 (= e!1461881 e!1461882)))

(declare-fun c!362073 () Bool)

(assert (=> b!2281965 (= c!362073 (and ((_ is Cons!27150) rules!1750) (not (= (h!32551 rules!1750) otherR!12))))))

(declare-fun b!2281966 () Bool)

(assert (=> b!2281966 (= e!1461882 (+ 1 (getIndex!350 (t!203548 rules!1750) otherR!12)))))

(declare-fun d!675250 () Bool)

(declare-fun lt!846925 () Int)

(assert (=> d!675250 (>= lt!846925 0)))

(assert (=> d!675250 (= lt!846925 e!1461881)))

(declare-fun c!362074 () Bool)

(assert (=> d!675250 (= c!362074 (and ((_ is Cons!27150) rules!1750) (= (h!32551 rules!1750) otherR!12)))))

(assert (=> d!675250 (contains!4709 rules!1750 otherR!12)))

(assert (=> d!675250 (= (getIndex!350 rules!1750 otherR!12) lt!846925)))

(assert (= (and d!675250 c!362074) b!2281964))

(assert (= (and d!675250 (not c!362074)) b!2281965))

(assert (= (and b!2281965 c!362073) b!2281966))

(assert (= (and b!2281965 (not c!362073)) b!2281967))

(declare-fun m!2709907 () Bool)

(assert (=> b!2281966 m!2709907))

(assert (=> d!675250 m!2709435))

(assert (=> b!2281482 d!675250))

(declare-fun d!675252 () Bool)

(declare-fun res!975513 () Bool)

(declare-fun e!1461883 () Bool)

(assert (=> d!675252 (=> (not res!975513) (not e!1461883))))

(assert (=> d!675252 (= res!975513 (validRegex!2512 (regex!4337 otherR!12)))))

(assert (=> d!675252 (= (ruleValid!1427 thiss!16613 otherR!12) e!1461883)))

(declare-fun b!2281968 () Bool)

(declare-fun res!975514 () Bool)

(assert (=> b!2281968 (=> (not res!975514) (not e!1461883))))

(assert (=> b!2281968 (= res!975514 (not (nullable!1850 (regex!4337 otherR!12))))))

(declare-fun b!2281969 () Bool)

(assert (=> b!2281969 (= e!1461883 (not (= (tag!4827 otherR!12) (String!29600 ""))))))

(assert (= (and d!675252 res!975513) b!2281968))

(assert (= (and b!2281968 res!975514) b!2281969))

(declare-fun m!2709909 () Bool)

(assert (=> d!675252 m!2709909))

(declare-fun m!2709911 () Bool)

(assert (=> b!2281968 m!2709911))

(assert (=> b!2281482 d!675252))

(declare-fun d!675254 () Bool)

(assert (=> d!675254 (ruleValid!1427 thiss!16613 otherR!12)))

(declare-fun lt!846926 () Unit!40066)

(assert (=> d!675254 (= lt!846926 (choose!13308 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!675254 (contains!4709 rules!1750 otherR!12)))

(assert (=> d!675254 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!832 thiss!16613 otherR!12 rules!1750) lt!846926)))

(declare-fun bs!456605 () Bool)

(assert (= bs!456605 d!675254))

(assert (=> bs!456605 m!2709381))

(declare-fun m!2709913 () Bool)

(assert (=> bs!456605 m!2709913))

(assert (=> bs!456605 m!2709435))

(assert (=> b!2281482 d!675254))

(declare-fun d!675256 () Bool)

(declare-fun res!975517 () Bool)

(declare-fun e!1461886 () Bool)

(assert (=> d!675256 (=> (not res!975517) (not e!1461886))))

(declare-fun rulesValid!1596 (LexerInterface!3934 List!27244) Bool)

(assert (=> d!675256 (= res!975517 (rulesValid!1596 thiss!16613 rules!1750))))

(assert (=> d!675256 (= (rulesInvariant!3436 thiss!16613 rules!1750) e!1461886)))

(declare-fun b!2281972 () Bool)

(declare-datatypes ((List!27246 0))(
  ( (Nil!27152) (Cons!27152 (h!32553 String!29599) (t!203646 List!27246)) )
))
(declare-fun noDuplicateTag!1594 (LexerInterface!3934 List!27244 List!27246) Bool)

(assert (=> b!2281972 (= e!1461886 (noDuplicateTag!1594 thiss!16613 rules!1750 Nil!27152))))

(assert (= (and d!675256 res!975517) b!2281972))

(declare-fun m!2709915 () Bool)

(assert (=> d!675256 m!2709915))

(declare-fun m!2709917 () Bool)

(assert (=> b!2281972 m!2709917))

(assert (=> b!2281493 d!675256))

(declare-fun d!675258 () Bool)

(assert (=> d!675258 (= (inv!36729 (tag!4827 r!2363)) (= (mod (str.len (value!137423 (tag!4827 r!2363))) 2) 0))))

(assert (=> b!2281483 d!675258))

(declare-fun d!675260 () Bool)

(declare-fun res!975518 () Bool)

(declare-fun e!1461887 () Bool)

(assert (=> d!675260 (=> (not res!975518) (not e!1461887))))

(assert (=> d!675260 (= res!975518 (semiInverseModEq!1752 (toChars!5978 (transformation!4337 r!2363)) (toValue!6119 (transformation!4337 r!2363))))))

(assert (=> d!675260 (= (inv!36732 (transformation!4337 r!2363)) e!1461887)))

(declare-fun b!2281973 () Bool)

(assert (=> b!2281973 (= e!1461887 (equivClasses!1671 (toChars!5978 (transformation!4337 r!2363)) (toValue!6119 (transformation!4337 r!2363))))))

(assert (= (and d!675260 res!975518) b!2281973))

(declare-fun m!2709919 () Bool)

(assert (=> d!675260 m!2709919))

(declare-fun m!2709921 () Bool)

(assert (=> b!2281973 m!2709921))

(assert (=> b!2281483 d!675260))

(declare-fun b!2281985 () Bool)

(declare-fun e!1461890 () Bool)

(declare-fun tp!723188 () Bool)

(declare-fun tp!723189 () Bool)

(assert (=> b!2281985 (= e!1461890 (and tp!723188 tp!723189))))

(declare-fun b!2281986 () Bool)

(declare-fun tp!723186 () Bool)

(assert (=> b!2281986 (= e!1461890 tp!723186)))

(declare-fun b!2281987 () Bool)

(declare-fun tp!723185 () Bool)

(declare-fun tp!723187 () Bool)

(assert (=> b!2281987 (= e!1461890 (and tp!723185 tp!723187))))

(assert (=> b!2281479 (= tp!723097 e!1461890)))

(declare-fun b!2281984 () Bool)

(assert (=> b!2281984 (= e!1461890 tp_is_empty!10591)))

(assert (= (and b!2281479 ((_ is ElementMatch!6685) (regex!4337 otherR!12))) b!2281984))

(assert (= (and b!2281479 ((_ is Concat!11185) (regex!4337 otherR!12))) b!2281985))

(assert (= (and b!2281479 ((_ is Star!6685) (regex!4337 otherR!12))) b!2281986))

(assert (= (and b!2281479 ((_ is Union!6685) (regex!4337 otherR!12))) b!2281987))

(declare-fun b!2281992 () Bool)

(declare-fun e!1461893 () Bool)

(declare-fun tp!723192 () Bool)

(assert (=> b!2281992 (= e!1461893 (and tp_is_empty!10591 tp!723192))))

(assert (=> b!2281480 (= tp!723098 e!1461893)))

(assert (= (and b!2281480 ((_ is Cons!27147) (t!203545 input!1722))) b!2281992))

(declare-fun b!2281993 () Bool)

(declare-fun e!1461894 () Bool)

(declare-fun tp!723193 () Bool)

(assert (=> b!2281993 (= e!1461894 (and tp_is_empty!10591 tp!723193))))

(assert (=> b!2281470 (= tp!723099 e!1461894)))

(assert (= (and b!2281470 ((_ is Cons!27147) (t!203545 suffix!886))) b!2281993))

(declare-fun b!2281995 () Bool)

(declare-fun e!1461895 () Bool)

(declare-fun tp!723197 () Bool)

(declare-fun tp!723198 () Bool)

(assert (=> b!2281995 (= e!1461895 (and tp!723197 tp!723198))))

(declare-fun b!2281996 () Bool)

(declare-fun tp!723195 () Bool)

(assert (=> b!2281996 (= e!1461895 tp!723195)))

(declare-fun b!2281997 () Bool)

(declare-fun tp!723194 () Bool)

(declare-fun tp!723196 () Bool)

(assert (=> b!2281997 (= e!1461895 (and tp!723194 tp!723196))))

(assert (=> b!2281477 (= tp!723093 e!1461895)))

(declare-fun b!2281994 () Bool)

(assert (=> b!2281994 (= e!1461895 tp_is_empty!10591)))

(assert (= (and b!2281477 ((_ is ElementMatch!6685) (regex!4337 (h!32551 rules!1750)))) b!2281994))

(assert (= (and b!2281477 ((_ is Concat!11185) (regex!4337 (h!32551 rules!1750)))) b!2281995))

(assert (= (and b!2281477 ((_ is Star!6685) (regex!4337 (h!32551 rules!1750)))) b!2281996))

(assert (= (and b!2281477 ((_ is Union!6685) (regex!4337 (h!32551 rules!1750)))) b!2281997))

(declare-fun b!2281998 () Bool)

(declare-fun e!1461896 () Bool)

(declare-fun tp!723199 () Bool)

(assert (=> b!2281998 (= e!1461896 (and tp_is_empty!10591 tp!723199))))

(assert (=> b!2281495 (= tp!723095 e!1461896)))

(assert (= (and b!2281495 ((_ is Cons!27147) (originalCharacters!5107 (h!32550 tokens!456)))) b!2281998))

(declare-fun b!2282000 () Bool)

(declare-fun e!1461897 () Bool)

(declare-fun tp!723203 () Bool)

(declare-fun tp!723204 () Bool)

(assert (=> b!2282000 (= e!1461897 (and tp!723203 tp!723204))))

(declare-fun b!2282001 () Bool)

(declare-fun tp!723201 () Bool)

(assert (=> b!2282001 (= e!1461897 tp!723201)))

(declare-fun b!2282002 () Bool)

(declare-fun tp!723200 () Bool)

(declare-fun tp!723202 () Bool)

(assert (=> b!2282002 (= e!1461897 (and tp!723200 tp!723202))))

(assert (=> b!2281496 (= tp!723086 e!1461897)))

(declare-fun b!2281999 () Bool)

(assert (=> b!2281999 (= e!1461897 tp_is_empty!10591)))

(assert (= (and b!2281496 ((_ is ElementMatch!6685) (regex!4337 (rule!6663 (h!32550 tokens!456))))) b!2281999))

(assert (= (and b!2281496 ((_ is Concat!11185) (regex!4337 (rule!6663 (h!32550 tokens!456))))) b!2282000))

(assert (= (and b!2281496 ((_ is Star!6685) (regex!4337 (rule!6663 (h!32550 tokens!456))))) b!2282001))

(assert (= (and b!2281496 ((_ is Union!6685) (regex!4337 (rule!6663 (h!32550 tokens!456))))) b!2282002))

(declare-fun b!2282016 () Bool)

(declare-fun b_free!68245 () Bool)

(declare-fun b_next!68949 () Bool)

(assert (=> b!2282016 (= b_free!68245 (not b_next!68949))))

(declare-fun t!203630 () Bool)

(declare-fun tb!135647 () Bool)

(assert (=> (and b!2282016 (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toValue!6119 (transformation!4337 r!2363))) t!203630) tb!135647))

(declare-fun result!165412 () Bool)

(assert (= result!165412 result!165330))

(assert (=> d!675102 t!203630))

(assert (=> d!675104 t!203630))

(declare-fun tp!723215 () Bool)

(declare-fun b_and!180361 () Bool)

(assert (=> b!2282016 (= tp!723215 (and (=> t!203630 result!165412) b_and!180361))))

(declare-fun b_free!68247 () Bool)

(declare-fun b_next!68951 () Bool)

(assert (=> b!2282016 (= b_free!68247 (not b_next!68951))))

(declare-fun t!203632 () Bool)

(declare-fun tb!135649 () Bool)

(assert (=> (and b!2282016 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toChars!5978 (transformation!4337 r!2363))) t!203632) tb!135649))

(declare-fun result!165414 () Bool)

(assert (= result!165414 result!165348))

(assert (=> d!675104 t!203632))

(declare-fun t!203634 () Bool)

(declare-fun tb!135651 () Bool)

(assert (=> (and b!2282016 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) t!203634) tb!135651))

(declare-fun result!165416 () Bool)

(assert (= result!165416 result!165358))

(assert (=> d!675150 t!203634))

(declare-fun t!203636 () Bool)

(declare-fun tb!135653 () Bool)

(assert (=> (and b!2282016 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456))))) t!203636) tb!135653))

(declare-fun result!165418 () Bool)

(assert (= result!165418 result!165366))

(assert (=> d!675174 t!203636))

(assert (=> b!2281950 t!203634))

(declare-fun b_and!180363 () Bool)

(declare-fun tp!723219 () Bool)

(assert (=> b!2282016 (= tp!723219 (and (=> t!203632 result!165414) (=> t!203634 result!165416) (=> t!203636 result!165418) b_and!180363))))

(declare-fun b!2282015 () Bool)

(declare-fun e!1461915 () Bool)

(declare-fun tp!723217 () Bool)

(declare-fun e!1461914 () Bool)

(assert (=> b!2282015 (= e!1461914 (and tp!723217 (inv!36729 (tag!4827 (rule!6663 (h!32550 (t!203547 tokens!456))))) (inv!36732 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) e!1461915))))

(declare-fun tp!723216 () Bool)

(declare-fun e!1461913 () Bool)

(declare-fun b!2282014 () Bool)

(assert (=> b!2282014 (= e!1461913 (and (inv!21 (value!137424 (h!32550 (t!203547 tokens!456)))) e!1461914 tp!723216))))

(declare-fun b!2282013 () Bool)

(declare-fun tp!723218 () Bool)

(declare-fun e!1461910 () Bool)

(assert (=> b!2282013 (= e!1461910 (and (inv!36733 (h!32550 (t!203547 tokens!456))) e!1461913 tp!723218))))

(assert (=> b!2281492 (= tp!723100 e!1461910)))

(assert (=> b!2282016 (= e!1461915 (and tp!723215 tp!723219))))

(assert (= b!2282015 b!2282016))

(assert (= b!2282014 b!2282015))

(assert (= b!2282013 b!2282014))

(assert (= (and b!2281492 ((_ is Cons!27149) (t!203547 tokens!456))) b!2282013))

(declare-fun m!2709923 () Bool)

(assert (=> b!2282015 m!2709923))

(declare-fun m!2709925 () Bool)

(assert (=> b!2282015 m!2709925))

(declare-fun m!2709927 () Bool)

(assert (=> b!2282014 m!2709927))

(declare-fun m!2709929 () Bool)

(assert (=> b!2282013 m!2709929))

(declare-fun b!2282017 () Bool)

(declare-fun e!1461916 () Bool)

(declare-fun tp!723220 () Bool)

(assert (=> b!2282017 (= e!1461916 (and tp_is_empty!10591 tp!723220))))

(assert (=> b!2281472 (= tp!723092 e!1461916)))

(assert (= (and b!2281472 ((_ is Cons!27147) (t!203545 otherP!12))) b!2282017))

(declare-fun b!2282019 () Bool)

(declare-fun e!1461917 () Bool)

(declare-fun tp!723224 () Bool)

(declare-fun tp!723225 () Bool)

(assert (=> b!2282019 (= e!1461917 (and tp!723224 tp!723225))))

(declare-fun b!2282020 () Bool)

(declare-fun tp!723222 () Bool)

(assert (=> b!2282020 (= e!1461917 tp!723222)))

(declare-fun b!2282021 () Bool)

(declare-fun tp!723221 () Bool)

(declare-fun tp!723223 () Bool)

(assert (=> b!2282021 (= e!1461917 (and tp!723221 tp!723223))))

(assert (=> b!2281483 (= tp!723089 e!1461917)))

(declare-fun b!2282018 () Bool)

(assert (=> b!2282018 (= e!1461917 tp_is_empty!10591)))

(assert (= (and b!2281483 ((_ is ElementMatch!6685) (regex!4337 r!2363))) b!2282018))

(assert (= (and b!2281483 ((_ is Concat!11185) (regex!4337 r!2363))) b!2282019))

(assert (= (and b!2281483 ((_ is Star!6685) (regex!4337 r!2363))) b!2282020))

(assert (= (and b!2281483 ((_ is Union!6685) (regex!4337 r!2363))) b!2282021))

(declare-fun b!2282032 () Bool)

(declare-fun b_free!68249 () Bool)

(declare-fun b_next!68953 () Bool)

(assert (=> b!2282032 (= b_free!68249 (not b_next!68953))))

(declare-fun t!203638 () Bool)

(declare-fun tb!135655 () Bool)

(assert (=> (and b!2282032 (= (toValue!6119 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toValue!6119 (transformation!4337 r!2363))) t!203638) tb!135655))

(declare-fun result!165422 () Bool)

(assert (= result!165422 result!165330))

(assert (=> d!675102 t!203638))

(assert (=> d!675104 t!203638))

(declare-fun b_and!180365 () Bool)

(declare-fun tp!723234 () Bool)

(assert (=> b!2282032 (= tp!723234 (and (=> t!203638 result!165422) b_and!180365))))

(declare-fun b_free!68251 () Bool)

(declare-fun b_next!68955 () Bool)

(assert (=> b!2282032 (= b_free!68251 (not b_next!68955))))

(declare-fun tb!135657 () Bool)

(declare-fun t!203640 () Bool)

(assert (=> (and b!2282032 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toChars!5978 (transformation!4337 r!2363))) t!203640) tb!135657))

(declare-fun result!165424 () Bool)

(assert (= result!165424 result!165348))

(assert (=> d!675104 t!203640))

(declare-fun t!203642 () Bool)

(declare-fun tb!135659 () Bool)

(assert (=> (and b!2282032 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) t!203642) tb!135659))

(declare-fun result!165426 () Bool)

(assert (= result!165426 result!165358))

(assert (=> d!675150 t!203642))

(declare-fun t!203644 () Bool)

(declare-fun tb!135661 () Bool)

(assert (=> (and b!2282032 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456))))) t!203644) tb!135661))

(declare-fun result!165428 () Bool)

(assert (= result!165428 result!165366))

(assert (=> d!675174 t!203644))

(assert (=> b!2281950 t!203642))

(declare-fun tp!723237 () Bool)

(declare-fun b_and!180367 () Bool)

(assert (=> b!2282032 (= tp!723237 (and (=> t!203640 result!165424) (=> t!203642 result!165426) (=> t!203644 result!165428) b_and!180367))))

(declare-fun e!1461927 () Bool)

(assert (=> b!2282032 (= e!1461927 (and tp!723234 tp!723237))))

(declare-fun tp!723235 () Bool)

(declare-fun e!1461926 () Bool)

(declare-fun b!2282031 () Bool)

(assert (=> b!2282031 (= e!1461926 (and tp!723235 (inv!36729 (tag!4827 (h!32551 (t!203548 rules!1750)))) (inv!36732 (transformation!4337 (h!32551 (t!203548 rules!1750)))) e!1461927))))

(declare-fun b!2282030 () Bool)

(declare-fun e!1461928 () Bool)

(declare-fun tp!723236 () Bool)

(assert (=> b!2282030 (= e!1461928 (and e!1461926 tp!723236))))

(assert (=> b!2281494 (= tp!723085 e!1461928)))

(assert (= b!2282031 b!2282032))

(assert (= b!2282030 b!2282031))

(assert (= (and b!2281494 ((_ is Cons!27150) (t!203548 rules!1750))) b!2282030))

(declare-fun m!2709931 () Bool)

(assert (=> b!2282031 m!2709931))

(declare-fun m!2709933 () Bool)

(assert (=> b!2282031 m!2709933))

(declare-fun b_lambda!72635 () Bool)

(assert (= b_lambda!72615 (or (and b!2281475 b_free!68231 (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (and b!2281500 b_free!68227 (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (and b!2282032 b_free!68251 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (and b!2281498 b_free!68223 (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (and b!2282016 b_free!68247 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (and b!2281469 b_free!68235) b_lambda!72635)))

(declare-fun b_lambda!72637 () Bool)

(assert (= b_lambda!72605 (or (and b!2282032 b_free!68249 (= (toValue!6119 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toValue!6119 (transformation!4337 r!2363)))) (and b!2282016 b_free!68245 (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toValue!6119 (transformation!4337 r!2363)))) (and b!2281498 b_free!68221) (and b!2281475 b_free!68229 (= (toValue!6119 (transformation!4337 otherR!12)) (toValue!6119 (transformation!4337 r!2363)))) (and b!2281469 b_free!68233 (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 r!2363)))) (and b!2281500 b_free!68225 (= (toValue!6119 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 r!2363)))) b_lambda!72637)))

(declare-fun b_lambda!72639 () Bool)

(assert (= b_lambda!72611 (or (and b!2281469 b_free!68235 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toChars!5978 (transformation!4337 r!2363)))) (and b!2281475 b_free!68231 (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 r!2363)))) (and b!2282032 b_free!68251 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toChars!5978 (transformation!4337 r!2363)))) (and b!2281498 b_free!68223) (and b!2281500 b_free!68227 (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 r!2363)))) (and b!2282016 b_free!68247 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toChars!5978 (transformation!4337 r!2363)))) b_lambda!72639)))

(declare-fun b_lambda!72641 () Bool)

(assert (= b_lambda!72613 (or (and b!2282032 b_free!68249 (= (toValue!6119 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toValue!6119 (transformation!4337 r!2363)))) (and b!2282016 b_free!68245 (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toValue!6119 (transformation!4337 r!2363)))) (and b!2281498 b_free!68221) (and b!2281475 b_free!68229 (= (toValue!6119 (transformation!4337 otherR!12)) (toValue!6119 (transformation!4337 r!2363)))) (and b!2281469 b_free!68233 (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 r!2363)))) (and b!2281500 b_free!68225 (= (toValue!6119 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 r!2363)))) b_lambda!72641)))

(declare-fun b_lambda!72643 () Bool)

(assert (= b_lambda!72633 (or (and b!2281475 b_free!68231 (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (and b!2281500 b_free!68227 (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (and b!2282032 b_free!68251 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (and b!2281498 b_free!68223 (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (and b!2282016 b_free!68247 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (and b!2281469 b_free!68235) b_lambda!72643)))

(check-sat (not d!675150) (not d!675138) (not b!2282015) (not b!2281709) (not d!675104) (not b!2281998) (not d!675174) (not b_next!68925) (not d!675236) (not b!2281704) (not b!2281760) b_and!180353 (not d!675136) (not b!2282001) b_and!180305 (not tb!135599) (not b!2281987) (not b!2282030) (not b_lambda!72639) (not d!675254) (not b!2281692) (not b!2281774) (not d!675198) (not d!675074) (not b!2281693) (not d!675244) (not b!2281694) (not b_lambda!72641) (not b!2282020) (not b!2281770) (not d!675170) b_and!180355 b_and!180357 (not b!2281907) (not b!2282002) (not b!2281905) (not b!2281772) (not bm!136431) b_and!180363 (not d!675240) (not d!675250) (not b!2281665) (not b!2281941) (not b!2281796) (not d!675172) (not b!2281677) (not b!2281710) (not b!2281766) (not b_next!68951) (not b_next!68927) (not b!2281615) (not d!675158) (not d!675248) (not b!2281995) (not b_next!68953) (not b!2282000) b_and!180367 (not b_lambda!72643) (not b!2281699) (not b!2281962) (not b!2281992) (not b!2281920) b_and!180365 (not b!2281906) (not b!2281943) (not b!2281973) (not b!2281945) (not b!2281794) (not b_next!68933) (not b_next!68937) (not d!675128) (not b!2282031) (not d!675178) (not b!2281986) (not d!675086) (not b_next!68935) (not b!2281903) (not b!2281773) (not b!2281636) b_and!180359 (not b!2281708) (not b!2281966) (not b!2281706) (not b!2282014) (not d!675124) (not b!2282017) (not b!2281951) (not d!675260) (not d!675088) (not b!2281902) (not d!675166) (not b!2281968) (not b!2281797) (not d!675126) (not tb!135583) (not b!2281517) b_and!180311 (not b!2281707) (not b!2281702) (not b_next!68955) (not b!2281985) (not tb!135615) (not b!2281972) (not b_next!68939) (not b_next!68931) (not b!2281763) (not d!675242) (not b!2281664) (not b!2281993) (not d!675162) (not d!675252) (not b!2281765) (not d!675256) (not d!675234) (not b!2282021) (not bm!136427) (not b!2281942) (not b_lambda!72635) b_and!180309 (not b!2281996) (not b_next!68929) (not b!2281562) (not tb!135607) (not b!2282019) (not b_lambda!72637) (not d!675238) b_and!180307 (not b!2282013) (not b!2281997) (not b!2281908) (not b_lambda!72617) tp_is_empty!10591 (not b_next!68949) (not b!2281950) (not d!675098) (not d!675180) (not b!2281759) (not b!2281904) b_and!180361 (not b!2281909) (not b!2281572))
(check-sat (not b_next!68925) b_and!180353 b_and!180305 b_and!180355 b_and!180357 b_and!180363 (not b_next!68953) b_and!180367 b_and!180365 (not b_next!68935) b_and!180359 (not b_next!68931) b_and!180309 (not b_next!68929) b_and!180307 (not b_next!68949) b_and!180361 (not b_next!68951) (not b_next!68927) (not b_next!68933) (not b_next!68937) b_and!180311 (not b_next!68955) (not b_next!68939))
(get-model)

(declare-fun d!675268 () Bool)

(declare-fun lt!846927 () Int)

(assert (=> d!675268 (>= lt!846927 0)))

(declare-fun e!1461938 () Int)

(assert (=> d!675268 (= lt!846927 e!1461938)))

(declare-fun c!362081 () Bool)

(assert (=> d!675268 (= c!362081 ((_ is Nil!27147) input!1722))))

(assert (=> d!675268 (= (size!21348 input!1722) lt!846927)))

(declare-fun b!2282049 () Bool)

(assert (=> b!2282049 (= e!1461938 0)))

(declare-fun b!2282050 () Bool)

(assert (=> b!2282050 (= e!1461938 (+ 1 (size!21348 (t!203545 input!1722))))))

(assert (= (and d!675268 c!362081) b!2282049))

(assert (= (and d!675268 (not c!362081)) b!2282050))

(declare-fun m!2709945 () Bool)

(assert (=> b!2282050 m!2709945))

(assert (=> b!2281774 d!675268))

(assert (=> b!2281774 d!675130))

(declare-fun d!675270 () Bool)

(declare-fun nullableFct!446 (Regex!6685) Bool)

(assert (=> d!675270 (= (nullable!1850 (regex!4337 r!2363)) (nullableFct!446 (regex!4337 r!2363)))))

(declare-fun bs!456607 () Bool)

(assert (= bs!456607 d!675270))

(declare-fun m!2709947 () Bool)

(assert (=> bs!456607 m!2709947))

(assert (=> b!2281572 d!675270))

(declare-fun d!675272 () Bool)

(assert (=> d!675272 (= (head!4950 lt!846785) (h!32548 lt!846785))))

(assert (=> b!2281692 d!675272))

(declare-fun d!675274 () Bool)

(assert (=> d!675274 (= (head!4950 (++!6629 lt!846785 (_2!15957 lt!846784))) (h!32548 (++!6629 lt!846785 (_2!15957 lt!846784))))))

(assert (=> b!2281692 d!675274))

(declare-fun b!2282064 () Bool)

(declare-fun e!1461943 () List!27243)

(declare-fun e!1461944 () List!27243)

(assert (=> b!2282064 (= e!1461943 e!1461944)))

(declare-fun c!362087 () Bool)

(assert (=> b!2282064 (= c!362087 ((_ is Leaf!12977) (c!361994 (_1!15958 lt!846788))))))

(declare-fun b!2282063 () Bool)

(assert (=> b!2282063 (= e!1461943 Nil!27149)))

(declare-fun b!2282065 () Bool)

(declare-fun list!10590 (IArray!17651) List!27243)

(assert (=> b!2282065 (= e!1461944 (list!10590 (xs!11765 (c!361994 (_1!15958 lt!846788)))))))

(declare-fun b!2282066 () Bool)

(declare-fun ++!6630 (List!27243 List!27243) List!27243)

(assert (=> b!2282066 (= e!1461944 (++!6630 (list!10589 (left!20588 (c!361994 (_1!15958 lt!846788)))) (list!10589 (right!20918 (c!361994 (_1!15958 lt!846788))))))))

(declare-fun d!675276 () Bool)

(declare-fun c!362086 () Bool)

(assert (=> d!675276 (= c!362086 ((_ is Empty!8823) (c!361994 (_1!15958 lt!846788))))))

(assert (=> d!675276 (= (list!10589 (c!361994 (_1!15958 lt!846788))) e!1461943)))

(assert (= (and d!675276 c!362086) b!2282063))

(assert (= (and d!675276 (not c!362086)) b!2282064))

(assert (= (and b!2282064 c!362087) b!2282065))

(assert (= (and b!2282064 (not c!362087)) b!2282066))

(declare-fun m!2709951 () Bool)

(assert (=> b!2282065 m!2709951))

(declare-fun m!2709953 () Bool)

(assert (=> b!2282066 m!2709953))

(declare-fun m!2709955 () Bool)

(assert (=> b!2282066 m!2709955))

(assert (=> b!2282066 m!2709953))

(assert (=> b!2282066 m!2709955))

(declare-fun m!2709957 () Bool)

(assert (=> b!2282066 m!2709957))

(assert (=> d!675236 d!675276))

(declare-fun d!675280 () Bool)

(assert (=> d!675280 (= (head!4950 otherP!12) (h!32548 otherP!12))))

(assert (=> b!2281772 d!675280))

(declare-fun d!675282 () Bool)

(assert (=> d!675282 (= (head!4950 input!1722) (h!32548 input!1722))))

(assert (=> b!2281772 d!675282))

(declare-fun d!675284 () Bool)

(declare-fun c!362090 () Bool)

(assert (=> d!675284 (= c!362090 ((_ is Nil!27147) lt!846846))))

(declare-fun e!1461947 () (InoxSet C!13516))

(assert (=> d!675284 (= (content!3629 lt!846846) e!1461947)))

(declare-fun b!2282071 () Bool)

(assert (=> b!2282071 (= e!1461947 ((as const (Array C!13516 Bool)) false))))

(declare-fun b!2282072 () Bool)

(assert (=> b!2282072 (= e!1461947 ((_ map or) (store ((as const (Array C!13516 Bool)) false) (h!32548 lt!846846) true) (content!3629 (t!203545 lt!846846))))))

(assert (= (and d!675284 c!362090) b!2282071))

(assert (= (and d!675284 (not c!362090)) b!2282072))

(declare-fun m!2709961 () Bool)

(assert (=> b!2282072 m!2709961))

(declare-fun m!2709963 () Bool)

(assert (=> b!2282072 m!2709963))

(assert (=> d!675138 d!675284))

(declare-fun d!675288 () Bool)

(declare-fun c!362091 () Bool)

(assert (=> d!675288 (= c!362091 ((_ is Nil!27147) lt!846785))))

(declare-fun e!1461948 () (InoxSet C!13516))

(assert (=> d!675288 (= (content!3629 lt!846785) e!1461948)))

(declare-fun b!2282073 () Bool)

(assert (=> b!2282073 (= e!1461948 ((as const (Array C!13516 Bool)) false))))

(declare-fun b!2282074 () Bool)

(assert (=> b!2282074 (= e!1461948 ((_ map or) (store ((as const (Array C!13516 Bool)) false) (h!32548 lt!846785) true) (content!3629 (t!203545 lt!846785))))))

(assert (= (and d!675288 c!362091) b!2282073))

(assert (= (and d!675288 (not c!362091)) b!2282074))

(declare-fun m!2709965 () Bool)

(assert (=> b!2282074 m!2709965))

(declare-fun m!2709967 () Bool)

(assert (=> b!2282074 m!2709967))

(assert (=> d!675138 d!675288))

(declare-fun d!675290 () Bool)

(declare-fun c!362092 () Bool)

(assert (=> d!675290 (= c!362092 ((_ is Nil!27147) (_2!15957 lt!846784)))))

(declare-fun e!1461949 () (InoxSet C!13516))

(assert (=> d!675290 (= (content!3629 (_2!15957 lt!846784)) e!1461949)))

(declare-fun b!2282075 () Bool)

(assert (=> b!2282075 (= e!1461949 ((as const (Array C!13516 Bool)) false))))

(declare-fun b!2282076 () Bool)

(assert (=> b!2282076 (= e!1461949 ((_ map or) (store ((as const (Array C!13516 Bool)) false) (h!32548 (_2!15957 lt!846784)) true) (content!3629 (t!203545 (_2!15957 lt!846784)))))))

(assert (= (and d!675290 c!362092) b!2282075))

(assert (= (and d!675290 (not c!362092)) b!2282076))

(declare-fun m!2709969 () Bool)

(assert (=> b!2282076 m!2709969))

(declare-fun m!2709971 () Bool)

(assert (=> b!2282076 m!2709971))

(assert (=> d!675138 d!675290))

(declare-fun d!675292 () Bool)

(assert (=> d!675292 (= (_2!15957 lt!846784) lt!846780)))

(assert (=> d!675292 true))

(declare-fun _$63!814 () Unit!40066)

(assert (=> d!675292 (= (choose!13309 lt!846785 (_2!15957 lt!846784) lt!846785 lt!846780 input!1722) _$63!814)))

(assert (=> d!675126 d!675292))

(assert (=> d!675126 d!675164))

(declare-fun d!675294 () Bool)

(declare-fun c!362097 () Bool)

(assert (=> d!675294 (= c!362097 ((_ is Empty!8822) (c!361992 (_2!15958 lt!846788))))))

(declare-fun e!1461954 () List!27241)

(assert (=> d!675294 (= (list!10588 (c!361992 (_2!15958 lt!846788))) e!1461954)))

(declare-fun b!2282087 () Bool)

(declare-fun e!1461955 () List!27241)

(declare-fun list!10591 (IArray!17649) List!27241)

(assert (=> b!2282087 (= e!1461955 (list!10591 (xs!11764 (c!361992 (_2!15958 lt!846788)))))))

(declare-fun b!2282085 () Bool)

(assert (=> b!2282085 (= e!1461954 Nil!27147)))

(declare-fun b!2282088 () Bool)

(assert (=> b!2282088 (= e!1461955 (++!6629 (list!10588 (left!20587 (c!361992 (_2!15958 lt!846788)))) (list!10588 (right!20917 (c!361992 (_2!15958 lt!846788))))))))

(declare-fun b!2282086 () Bool)

(assert (=> b!2282086 (= e!1461954 e!1461955)))

(declare-fun c!362098 () Bool)

(assert (=> b!2282086 (= c!362098 ((_ is Leaf!12976) (c!361992 (_2!15958 lt!846788))))))

(assert (= (and d!675294 c!362097) b!2282085))

(assert (= (and d!675294 (not c!362097)) b!2282086))

(assert (= (and b!2282086 c!362098) b!2282087))

(assert (= (and b!2282086 (not c!362098)) b!2282088))

(declare-fun m!2709977 () Bool)

(assert (=> b!2282087 m!2709977))

(declare-fun m!2709979 () Bool)

(assert (=> b!2282088 m!2709979))

(declare-fun m!2709981 () Bool)

(assert (=> b!2282088 m!2709981))

(assert (=> b!2282088 m!2709979))

(assert (=> b!2282088 m!2709981))

(declare-fun m!2709983 () Bool)

(assert (=> b!2282088 m!2709983))

(assert (=> d!675238 d!675294))

(assert (=> d!675250 d!675074))

(declare-fun d!675298 () Bool)

(declare-fun lt!846931 () Int)

(assert (=> d!675298 (>= lt!846931 0)))

(declare-fun e!1461956 () Int)

(assert (=> d!675298 (= lt!846931 e!1461956)))

(declare-fun c!362099 () Bool)

(assert (=> d!675298 (= c!362099 ((_ is Nil!27147) (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))

(assert (=> d!675298 (= (size!21348 (list!10585 (charsOf!2725 (head!4948 tokens!456)))) lt!846931)))

(declare-fun b!2282089 () Bool)

(assert (=> b!2282089 (= e!1461956 0)))

(declare-fun b!2282090 () Bool)

(assert (=> b!2282090 (= e!1461956 (+ 1 (size!21348 (t!203545 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))))

(assert (= (and d!675298 c!362099) b!2282089))

(assert (= (and d!675298 (not c!362099)) b!2282090))

(declare-fun m!2709985 () Bool)

(assert (=> b!2282090 m!2709985))

(assert (=> d!675172 d!675298))

(assert (=> d!675172 d!675180))

(declare-fun d!675300 () Bool)

(declare-fun lt!846934 () Int)

(assert (=> d!675300 (= lt!846934 (size!21348 (list!10588 (c!361992 (charsOf!2725 (head!4948 tokens!456))))))))

(assert (=> d!675300 (= lt!846934 (ite ((_ is Empty!8822) (c!361992 (charsOf!2725 (head!4948 tokens!456)))) 0 (ite ((_ is Leaf!12976) (c!361992 (charsOf!2725 (head!4948 tokens!456)))) (csize!17875 (c!361992 (charsOf!2725 (head!4948 tokens!456)))) (csize!17874 (c!361992 (charsOf!2725 (head!4948 tokens!456)))))))))

(assert (=> d!675300 (= (size!21351 (c!361992 (charsOf!2725 (head!4948 tokens!456)))) lt!846934)))

(declare-fun bs!456615 () Bool)

(assert (= bs!456615 d!675300))

(assert (=> bs!456615 m!2709709))

(assert (=> bs!456615 m!2709709))

(declare-fun m!2709991 () Bool)

(assert (=> bs!456615 m!2709991))

(assert (=> d!675172 d!675300))

(declare-fun d!675306 () Bool)

(declare-fun lt!846935 () Int)

(assert (=> d!675306 (>= lt!846935 0)))

(declare-fun e!1461957 () Int)

(assert (=> d!675306 (= lt!846935 e!1461957)))

(declare-fun c!362100 () Bool)

(assert (=> d!675306 (= c!362100 ((_ is Nil!27147) (++!6629 lt!846785 (_2!15957 lt!846784))))))

(assert (=> d!675306 (= (size!21348 (++!6629 lt!846785 (_2!15957 lt!846784))) lt!846935)))

(declare-fun b!2282091 () Bool)

(assert (=> b!2282091 (= e!1461957 0)))

(declare-fun b!2282092 () Bool)

(assert (=> b!2282092 (= e!1461957 (+ 1 (size!21348 (t!203545 (++!6629 lt!846785 (_2!15957 lt!846784))))))))

(assert (= (and d!675306 c!362100) b!2282091))

(assert (= (and d!675306 (not c!362100)) b!2282092))

(declare-fun m!2709993 () Bool)

(assert (=> b!2282092 m!2709993))

(assert (=> b!2281694 d!675306))

(assert (=> b!2281694 d!675160))

(declare-fun bs!456616 () Bool)

(declare-fun d!675308 () Bool)

(assert (= bs!456616 (and d!675308 d!675104)))

(declare-fun lambda!85665 () Int)

(assert (=> bs!456616 (= (and (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toChars!5978 (transformation!4337 r!2363))) (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 r!2363)))) (= lambda!85665 lambda!85655))))

(assert (=> d!675308 true))

(assert (=> d!675308 (< (dynLambda!11780 order!15139 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) (dynLambda!11779 order!15137 lambda!85665))))

(assert (=> d!675308 true))

(assert (=> d!675308 (< (dynLambda!11778 order!15135 (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) (dynLambda!11779 order!15137 lambda!85665))))

(declare-fun Forall!1087 (Int) Bool)

(assert (=> d!675308 (= (semiInverseModEq!1752 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) (Forall!1087 lambda!85665))))

(declare-fun bs!456617 () Bool)

(assert (= bs!456617 d!675308))

(declare-fun m!2709995 () Bool)

(assert (=> bs!456617 m!2709995))

(assert (=> d!675234 d!675308))

(declare-fun d!675310 () Bool)

(declare-fun lt!846938 () Bool)

(assert (=> d!675310 (= lt!846938 (isEmpty!15419 (list!10584 (_1!15958 lt!846921))))))

(declare-fun isEmpty!15426 (Conc!8823) Bool)

(assert (=> d!675310 (= lt!846938 (isEmpty!15426 (c!361994 (_1!15958 lt!846921))))))

(assert (=> d!675310 (= (isEmpty!15424 (_1!15958 lt!846921)) lt!846938)))

(declare-fun bs!456618 () Bool)

(assert (= bs!456618 d!675310))

(assert (=> bs!456618 m!2709895))

(assert (=> bs!456618 m!2709895))

(declare-fun m!2709997 () Bool)

(assert (=> bs!456618 m!2709997))

(declare-fun m!2709999 () Bool)

(assert (=> bs!456618 m!2709999))

(assert (=> b!2281941 d!675310))

(declare-fun d!675312 () Bool)

(assert (=> d!675312 (= (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456)))) (h!32548 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))

(assert (=> b!2281763 d!675312))

(declare-fun d!675314 () Bool)

(assert (=> d!675314 true))

(declare-fun lambda!85668 () Int)

(declare-fun order!15143 () Int)

(declare-fun dynLambda!11783 (Int Int) Int)

(assert (=> d!675314 (< (dynLambda!11778 order!15135 (toValue!6119 (transformation!4337 otherR!12))) (dynLambda!11783 order!15143 lambda!85668))))

(declare-fun Forall2!704 (Int) Bool)

(assert (=> d!675314 (= (equivClasses!1671 (toChars!5978 (transformation!4337 otherR!12)) (toValue!6119 (transformation!4337 otherR!12))) (Forall2!704 lambda!85668))))

(declare-fun bs!456619 () Bool)

(assert (= bs!456619 d!675314))

(declare-fun m!2710001 () Bool)

(assert (=> bs!456619 m!2710001))

(assert (=> b!2281562 d!675314))

(declare-fun d!675316 () Bool)

(declare-fun lt!846939 () Int)

(assert (=> d!675316 (>= lt!846939 0)))

(declare-fun e!1461960 () Int)

(assert (=> d!675316 (= lt!846939 e!1461960)))

(declare-fun c!362101 () Bool)

(assert (=> d!675316 (= c!362101 ((_ is Nil!27147) lt!846846))))

(assert (=> d!675316 (= (size!21348 lt!846846) lt!846939)))

(declare-fun b!2282101 () Bool)

(assert (=> b!2282101 (= e!1461960 0)))

(declare-fun b!2282102 () Bool)

(assert (=> b!2282102 (= e!1461960 (+ 1 (size!21348 (t!203545 lt!846846))))))

(assert (= (and d!675316 c!362101) b!2282101))

(assert (= (and d!675316 (not c!362101)) b!2282102))

(declare-fun m!2710003 () Bool)

(assert (=> b!2282102 m!2710003))

(assert (=> b!2281665 d!675316))

(assert (=> b!2281665 d!675160))

(declare-fun d!675318 () Bool)

(declare-fun lt!846940 () Int)

(assert (=> d!675318 (>= lt!846940 0)))

(declare-fun e!1461961 () Int)

(assert (=> d!675318 (= lt!846940 e!1461961)))

(declare-fun c!362102 () Bool)

(assert (=> d!675318 (= c!362102 ((_ is Nil!27147) (_2!15957 lt!846784)))))

(assert (=> d!675318 (= (size!21348 (_2!15957 lt!846784)) lt!846940)))

(declare-fun b!2282103 () Bool)

(assert (=> b!2282103 (= e!1461961 0)))

(declare-fun b!2282104 () Bool)

(assert (=> b!2282104 (= e!1461961 (+ 1 (size!21348 (t!203545 (_2!15957 lt!846784)))))))

(assert (= (and d!675318 c!362102) b!2282103))

(assert (= (and d!675318 (not c!362102)) b!2282104))

(declare-fun m!2710005 () Bool)

(assert (=> b!2282104 m!2710005))

(assert (=> b!2281665 d!675318))

(declare-fun d!675320 () Bool)

(assert (=> d!675320 (= (list!10585 lt!846865) (list!10588 (c!361992 lt!846865)))))

(declare-fun bs!456620 () Bool)

(assert (= bs!456620 d!675320))

(declare-fun m!2710007 () Bool)

(assert (=> bs!456620 m!2710007))

(assert (=> d!675174 d!675320))

(declare-fun d!675322 () Bool)

(declare-fun c!362103 () Bool)

(assert (=> d!675322 (= c!362103 ((_ is IntegerValue!13497) (value!137424 (h!32550 (t!203547 tokens!456)))))))

(declare-fun e!1461962 () Bool)

(assert (=> d!675322 (= (inv!21 (value!137424 (h!32550 (t!203547 tokens!456)))) e!1461962)))

(declare-fun b!2282105 () Bool)

(declare-fun e!1461964 () Bool)

(assert (=> b!2282105 (= e!1461964 (inv!15 (value!137424 (h!32550 (t!203547 tokens!456)))))))

(declare-fun b!2282106 () Bool)

(declare-fun res!975523 () Bool)

(assert (=> b!2282106 (=> res!975523 e!1461964)))

(assert (=> b!2282106 (= res!975523 (not ((_ is IntegerValue!13499) (value!137424 (h!32550 (t!203547 tokens!456))))))))

(declare-fun e!1461963 () Bool)

(assert (=> b!2282106 (= e!1461963 e!1461964)))

(declare-fun b!2282107 () Bool)

(assert (=> b!2282107 (= e!1461962 (inv!16 (value!137424 (h!32550 (t!203547 tokens!456)))))))

(declare-fun b!2282108 () Bool)

(assert (=> b!2282108 (= e!1461963 (inv!17 (value!137424 (h!32550 (t!203547 tokens!456)))))))

(declare-fun b!2282109 () Bool)

(assert (=> b!2282109 (= e!1461962 e!1461963)))

(declare-fun c!362104 () Bool)

(assert (=> b!2282109 (= c!362104 ((_ is IntegerValue!13498) (value!137424 (h!32550 (t!203547 tokens!456)))))))

(assert (= (and d!675322 c!362103) b!2282107))

(assert (= (and d!675322 (not c!362103)) b!2282109))

(assert (= (and b!2282109 c!362104) b!2282108))

(assert (= (and b!2282109 (not c!362104)) b!2282106))

(assert (= (and b!2282106 (not res!975523)) b!2282105))

(declare-fun m!2710009 () Bool)

(assert (=> b!2282105 m!2710009))

(declare-fun m!2710011 () Bool)

(assert (=> b!2282107 m!2710011))

(declare-fun m!2710013 () Bool)

(assert (=> b!2282108 m!2710013))

(assert (=> b!2282014 d!675322))

(declare-fun d!675324 () Bool)

(declare-fun c!362105 () Bool)

(assert (=> d!675324 (= c!362105 ((_ is Empty!8822) (c!361992 (charsOf!2725 (head!4948 tokens!456)))))))

(declare-fun e!1461965 () List!27241)

(assert (=> d!675324 (= (list!10588 (c!361992 (charsOf!2725 (head!4948 tokens!456)))) e!1461965)))

(declare-fun b!2282112 () Bool)

(declare-fun e!1461966 () List!27241)

(assert (=> b!2282112 (= e!1461966 (list!10591 (xs!11764 (c!361992 (charsOf!2725 (head!4948 tokens!456))))))))

(declare-fun b!2282110 () Bool)

(assert (=> b!2282110 (= e!1461965 Nil!27147)))

(declare-fun b!2282113 () Bool)

(assert (=> b!2282113 (= e!1461966 (++!6629 (list!10588 (left!20587 (c!361992 (charsOf!2725 (head!4948 tokens!456))))) (list!10588 (right!20917 (c!361992 (charsOf!2725 (head!4948 tokens!456)))))))))

(declare-fun b!2282111 () Bool)

(assert (=> b!2282111 (= e!1461965 e!1461966)))

(declare-fun c!362106 () Bool)

(assert (=> b!2282111 (= c!362106 ((_ is Leaf!12976) (c!361992 (charsOf!2725 (head!4948 tokens!456)))))))

(assert (= (and d!675324 c!362105) b!2282110))

(assert (= (and d!675324 (not c!362105)) b!2282111))

(assert (= (and b!2282111 c!362106) b!2282112))

(assert (= (and b!2282111 (not c!362106)) b!2282113))

(declare-fun m!2710015 () Bool)

(assert (=> b!2282112 m!2710015))

(declare-fun m!2710017 () Bool)

(assert (=> b!2282113 m!2710017))

(declare-fun m!2710019 () Bool)

(assert (=> b!2282113 m!2710019))

(assert (=> b!2282113 m!2710017))

(assert (=> b!2282113 m!2710019))

(declare-fun m!2710021 () Bool)

(assert (=> b!2282113 m!2710021))

(assert (=> d!675180 d!675324))

(declare-fun d!675326 () Bool)

(declare-fun charsToBigInt!0 (List!27242 Int) Int)

(assert (=> d!675326 (= (inv!15 (value!137424 (h!32550 tokens!456))) (= (charsToBigInt!0 (text!31942 (value!137424 (h!32550 tokens!456))) 0) (value!137419 (value!137424 (h!32550 tokens!456)))))))

(declare-fun bs!456621 () Bool)

(assert (= bs!456621 d!675326))

(declare-fun m!2710023 () Bool)

(assert (=> bs!456621 m!2710023))

(assert (=> b!2281794 d!675326))

(declare-fun b!2282114 () Bool)

(declare-fun e!1461969 () Option!5323)

(declare-fun call!136437 () Option!5323)

(assert (=> b!2282114 (= e!1461969 call!136437)))

(declare-fun b!2282115 () Bool)

(declare-fun e!1461967 () Bool)

(declare-fun lt!846945 () Option!5323)

(assert (=> b!2282115 (= e!1461967 (contains!4709 (t!203548 rules!1750) (rule!6663 (_1!15957 (get!8185 lt!846945)))))))

(declare-fun b!2282116 () Bool)

(declare-fun res!975526 () Bool)

(assert (=> b!2282116 (=> (not res!975526) (not e!1461967))))

(assert (=> b!2282116 (= res!975526 (= (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846945)))) (originalCharacters!5107 (_1!15957 (get!8185 lt!846945)))))))

(declare-fun b!2282117 () Bool)

(declare-fun res!975529 () Bool)

(assert (=> b!2282117 (=> (not res!975529) (not e!1461967))))

(assert (=> b!2282117 (= res!975529 (= (++!6629 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846945)))) (_2!15957 (get!8185 lt!846945))) input!1722))))

(declare-fun b!2282118 () Bool)

(declare-fun res!975530 () Bool)

(assert (=> b!2282118 (=> (not res!975530) (not e!1461967))))

(assert (=> b!2282118 (= res!975530 (matchR!2942 (regex!4337 (rule!6663 (_1!15957 (get!8185 lt!846945)))) (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846945))))))))

(declare-fun bm!136432 () Bool)

(assert (=> bm!136432 (= call!136437 (maxPrefixOneRule!1374 thiss!16613 (h!32551 (t!203548 rules!1750)) input!1722))))

(declare-fun b!2282119 () Bool)

(declare-fun res!975528 () Bool)

(assert (=> b!2282119 (=> (not res!975528) (not e!1461967))))

(assert (=> b!2282119 (= res!975528 (= (value!137424 (_1!15957 (get!8185 lt!846945))) (apply!6611 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846945)))) (seqFromList!3041 (originalCharacters!5107 (_1!15957 (get!8185 lt!846945)))))))))

(declare-fun b!2282120 () Bool)

(declare-fun lt!846944 () Option!5323)

(declare-fun lt!846941 () Option!5323)

(assert (=> b!2282120 (= e!1461969 (ite (and ((_ is None!5322) lt!846944) ((_ is None!5322) lt!846941)) None!5322 (ite ((_ is None!5322) lt!846941) lt!846944 (ite ((_ is None!5322) lt!846944) lt!846941 (ite (>= (size!21346 (_1!15957 (v!30386 lt!846944))) (size!21346 (_1!15957 (v!30386 lt!846941)))) lt!846944 lt!846941)))))))

(assert (=> b!2282120 (= lt!846944 call!136437)))

(assert (=> b!2282120 (= lt!846941 (maxPrefix!2198 thiss!16613 (t!203548 (t!203548 rules!1750)) input!1722))))

(declare-fun b!2282121 () Bool)

(declare-fun res!975524 () Bool)

(assert (=> b!2282121 (=> (not res!975524) (not e!1461967))))

(assert (=> b!2282121 (= res!975524 (< (size!21348 (_2!15957 (get!8185 lt!846945))) (size!21348 input!1722)))))

(declare-fun b!2282122 () Bool)

(declare-fun e!1461968 () Bool)

(assert (=> b!2282122 (= e!1461968 e!1461967)))

(declare-fun res!975525 () Bool)

(assert (=> b!2282122 (=> (not res!975525) (not e!1461967))))

(assert (=> b!2282122 (= res!975525 (isDefined!4216 lt!846945))))

(declare-fun d!675328 () Bool)

(assert (=> d!675328 e!1461968))

(declare-fun res!975527 () Bool)

(assert (=> d!675328 (=> res!975527 e!1461968)))

(assert (=> d!675328 (= res!975527 (isEmpty!15423 lt!846945))))

(assert (=> d!675328 (= lt!846945 e!1461969)))

(declare-fun c!362107 () Bool)

(assert (=> d!675328 (= c!362107 (and ((_ is Cons!27150) (t!203548 rules!1750)) ((_ is Nil!27150) (t!203548 (t!203548 rules!1750)))))))

(declare-fun lt!846943 () Unit!40066)

(declare-fun lt!846942 () Unit!40066)

(assert (=> d!675328 (= lt!846943 lt!846942)))

(assert (=> d!675328 (isPrefix!2327 input!1722 input!1722)))

(assert (=> d!675328 (= lt!846942 (lemmaIsPrefixRefl!1479 input!1722 input!1722))))

(assert (=> d!675328 (rulesValidInductive!1521 thiss!16613 (t!203548 rules!1750))))

(assert (=> d!675328 (= (maxPrefix!2198 thiss!16613 (t!203548 rules!1750) input!1722) lt!846945)))

(assert (= (and d!675328 c!362107) b!2282114))

(assert (= (and d!675328 (not c!362107)) b!2282120))

(assert (= (or b!2282114 b!2282120) bm!136432))

(assert (= (and d!675328 (not res!975527)) b!2282122))

(assert (= (and b!2282122 res!975525) b!2282116))

(assert (= (and b!2282116 res!975526) b!2282121))

(assert (= (and b!2282121 res!975524) b!2282117))

(assert (= (and b!2282117 res!975529) b!2282119))

(assert (= (and b!2282119 res!975528) b!2282118))

(assert (= (and b!2282118 res!975530) b!2282115))

(declare-fun m!2710025 () Bool)

(assert (=> bm!136432 m!2710025))

(declare-fun m!2710027 () Bool)

(assert (=> b!2282117 m!2710027))

(declare-fun m!2710029 () Bool)

(assert (=> b!2282117 m!2710029))

(assert (=> b!2282117 m!2710029))

(declare-fun m!2710031 () Bool)

(assert (=> b!2282117 m!2710031))

(assert (=> b!2282117 m!2710031))

(declare-fun m!2710033 () Bool)

(assert (=> b!2282117 m!2710033))

(declare-fun m!2710035 () Bool)

(assert (=> d!675328 m!2710035))

(assert (=> d!675328 m!2709843))

(assert (=> d!675328 m!2709845))

(declare-fun m!2710037 () Bool)

(assert (=> d!675328 m!2710037))

(assert (=> b!2282119 m!2710027))

(declare-fun m!2710039 () Bool)

(assert (=> b!2282119 m!2710039))

(assert (=> b!2282119 m!2710039))

(declare-fun m!2710041 () Bool)

(assert (=> b!2282119 m!2710041))

(assert (=> b!2282115 m!2710027))

(declare-fun m!2710043 () Bool)

(assert (=> b!2282115 m!2710043))

(assert (=> b!2282121 m!2710027))

(declare-fun m!2710045 () Bool)

(assert (=> b!2282121 m!2710045))

(assert (=> b!2282121 m!2709663))

(declare-fun m!2710047 () Bool)

(assert (=> b!2282120 m!2710047))

(assert (=> b!2282116 m!2710027))

(assert (=> b!2282116 m!2710029))

(assert (=> b!2282116 m!2710029))

(assert (=> b!2282116 m!2710031))

(declare-fun m!2710049 () Bool)

(assert (=> b!2282122 m!2710049))

(assert (=> b!2282118 m!2710027))

(assert (=> b!2282118 m!2710029))

(assert (=> b!2282118 m!2710029))

(assert (=> b!2282118 m!2710031))

(assert (=> b!2282118 m!2710031))

(declare-fun m!2710051 () Bool)

(assert (=> b!2282118 m!2710051))

(assert (=> b!2281907 d!675328))

(declare-fun b!2282141 () Bool)

(declare-fun e!1461986 () Bool)

(declare-fun e!1461988 () Bool)

(assert (=> b!2282141 (= e!1461986 e!1461988)))

(declare-fun c!362113 () Bool)

(assert (=> b!2282141 (= c!362113 ((_ is Star!6685) (regex!4337 otherR!12)))))

(declare-fun b!2282142 () Bool)

(declare-fun e!1461990 () Bool)

(declare-fun call!136444 () Bool)

(assert (=> b!2282142 (= e!1461990 call!136444)))

(declare-fun bm!136439 () Bool)

(declare-fun call!136445 () Bool)

(declare-fun c!362112 () Bool)

(assert (=> bm!136439 (= call!136445 (validRegex!2512 (ite c!362112 (regTwo!13883 (regex!4337 otherR!12)) (regOne!13882 (regex!4337 otherR!12)))))))

(declare-fun b!2282143 () Bool)

(declare-fun e!1461985 () Bool)

(assert (=> b!2282143 (= e!1461985 e!1461990)))

(declare-fun res!975541 () Bool)

(assert (=> b!2282143 (=> (not res!975541) (not e!1461990))))

(assert (=> b!2282143 (= res!975541 call!136445)))

(declare-fun b!2282144 () Bool)

(declare-fun e!1461989 () Bool)

(assert (=> b!2282144 (= e!1461988 e!1461989)))

(declare-fun res!975543 () Bool)

(assert (=> b!2282144 (= res!975543 (not (nullable!1850 (reg!7014 (regex!4337 otherR!12)))))))

(assert (=> b!2282144 (=> (not res!975543) (not e!1461989))))

(declare-fun d!675330 () Bool)

(declare-fun res!975544 () Bool)

(assert (=> d!675330 (=> res!975544 e!1461986)))

(assert (=> d!675330 (= res!975544 ((_ is ElementMatch!6685) (regex!4337 otherR!12)))))

(assert (=> d!675330 (= (validRegex!2512 (regex!4337 otherR!12)) e!1461986)))

(declare-fun b!2282145 () Bool)

(declare-fun e!1461987 () Bool)

(assert (=> b!2282145 (= e!1461988 e!1461987)))

(assert (=> b!2282145 (= c!362112 ((_ is Union!6685) (regex!4337 otherR!12)))))

(declare-fun call!136446 () Bool)

(declare-fun bm!136440 () Bool)

(assert (=> bm!136440 (= call!136446 (validRegex!2512 (ite c!362113 (reg!7014 (regex!4337 otherR!12)) (ite c!362112 (regOne!13883 (regex!4337 otherR!12)) (regTwo!13882 (regex!4337 otherR!12))))))))

(declare-fun b!2282146 () Bool)

(declare-fun e!1461984 () Bool)

(assert (=> b!2282146 (= e!1461984 call!136445)))

(declare-fun b!2282147 () Bool)

(assert (=> b!2282147 (= e!1461989 call!136446)))

(declare-fun b!2282148 () Bool)

(declare-fun res!975545 () Bool)

(assert (=> b!2282148 (=> (not res!975545) (not e!1461984))))

(assert (=> b!2282148 (= res!975545 call!136444)))

(assert (=> b!2282148 (= e!1461987 e!1461984)))

(declare-fun b!2282149 () Bool)

(declare-fun res!975542 () Bool)

(assert (=> b!2282149 (=> res!975542 e!1461985)))

(assert (=> b!2282149 (= res!975542 (not ((_ is Concat!11185) (regex!4337 otherR!12))))))

(assert (=> b!2282149 (= e!1461987 e!1461985)))

(declare-fun bm!136441 () Bool)

(assert (=> bm!136441 (= call!136444 call!136446)))

(assert (= (and d!675330 (not res!975544)) b!2282141))

(assert (= (and b!2282141 c!362113) b!2282144))

(assert (= (and b!2282141 (not c!362113)) b!2282145))

(assert (= (and b!2282144 res!975543) b!2282147))

(assert (= (and b!2282145 c!362112) b!2282148))

(assert (= (and b!2282145 (not c!362112)) b!2282149))

(assert (= (and b!2282148 res!975545) b!2282146))

(assert (= (and b!2282149 (not res!975542)) b!2282143))

(assert (= (and b!2282143 res!975541) b!2282142))

(assert (= (or b!2282148 b!2282142) bm!136441))

(assert (= (or b!2282146 b!2282143) bm!136439))

(assert (= (or b!2282147 bm!136441) bm!136440))

(declare-fun m!2710053 () Bool)

(assert (=> bm!136439 m!2710053))

(declare-fun m!2710055 () Bool)

(assert (=> b!2282144 m!2710055))

(declare-fun m!2710057 () Bool)

(assert (=> bm!136440 m!2710057))

(assert (=> d!675252 d!675330))

(declare-fun b!2282151 () Bool)

(declare-fun res!975546 () Bool)

(declare-fun e!1461992 () Bool)

(assert (=> b!2282151 (=> (not res!975546) (not e!1461992))))

(assert (=> b!2282151 (= res!975546 (= (head!4950 (tail!3293 lt!846785)) (head!4950 (tail!3293 input!1722))))))

(declare-fun b!2282152 () Bool)

(assert (=> b!2282152 (= e!1461992 (isPrefix!2327 (tail!3293 (tail!3293 lt!846785)) (tail!3293 (tail!3293 input!1722))))))

(declare-fun b!2282150 () Bool)

(declare-fun e!1461993 () Bool)

(assert (=> b!2282150 (= e!1461993 e!1461992)))

(declare-fun res!975548 () Bool)

(assert (=> b!2282150 (=> (not res!975548) (not e!1461992))))

(assert (=> b!2282150 (= res!975548 (not ((_ is Nil!27147) (tail!3293 input!1722))))))

(declare-fun d!675332 () Bool)

(declare-fun e!1461991 () Bool)

(assert (=> d!675332 e!1461991))

(declare-fun res!975549 () Bool)

(assert (=> d!675332 (=> res!975549 e!1461991)))

(declare-fun lt!846946 () Bool)

(assert (=> d!675332 (= res!975549 (not lt!846946))))

(assert (=> d!675332 (= lt!846946 e!1461993)))

(declare-fun res!975547 () Bool)

(assert (=> d!675332 (=> res!975547 e!1461993)))

(assert (=> d!675332 (= res!975547 ((_ is Nil!27147) (tail!3293 lt!846785)))))

(assert (=> d!675332 (= (isPrefix!2327 (tail!3293 lt!846785) (tail!3293 input!1722)) lt!846946)))

(declare-fun b!2282153 () Bool)

(assert (=> b!2282153 (= e!1461991 (>= (size!21348 (tail!3293 input!1722)) (size!21348 (tail!3293 lt!846785))))))

(assert (= (and d!675332 (not res!975547)) b!2282150))

(assert (= (and b!2282150 res!975548) b!2282151))

(assert (= (and b!2282151 res!975546) b!2282152))

(assert (= (and d!675332 (not res!975549)) b!2282153))

(assert (=> b!2282151 m!2709653))

(declare-fun m!2710059 () Bool)

(assert (=> b!2282151 m!2710059))

(assert (=> b!2282151 m!2709665))

(declare-fun m!2710061 () Bool)

(assert (=> b!2282151 m!2710061))

(assert (=> b!2282152 m!2709653))

(declare-fun m!2710063 () Bool)

(assert (=> b!2282152 m!2710063))

(assert (=> b!2282152 m!2709665))

(declare-fun m!2710065 () Bool)

(assert (=> b!2282152 m!2710065))

(assert (=> b!2282152 m!2710063))

(assert (=> b!2282152 m!2710065))

(declare-fun m!2710067 () Bool)

(assert (=> b!2282152 m!2710067))

(assert (=> b!2282153 m!2709665))

(declare-fun m!2710069 () Bool)

(assert (=> b!2282153 m!2710069))

(assert (=> b!2282153 m!2709653))

(declare-fun m!2710071 () Bool)

(assert (=> b!2282153 m!2710071))

(assert (=> b!2281707 d!675332))

(declare-fun d!675334 () Bool)

(assert (=> d!675334 (= (tail!3293 lt!846785) (t!203545 lt!846785))))

(assert (=> b!2281707 d!675334))

(declare-fun d!675336 () Bool)

(assert (=> d!675336 (= (tail!3293 input!1722) (t!203545 input!1722))))

(assert (=> b!2281707 d!675336))

(declare-fun d!675338 () Bool)

(declare-fun lt!846947 () Bool)

(assert (=> d!675338 (= lt!846947 (select (content!3628 (t!203548 rules!1750)) r!2363))))

(declare-fun e!1461994 () Bool)

(assert (=> d!675338 (= lt!846947 e!1461994)))

(declare-fun res!975550 () Bool)

(assert (=> d!675338 (=> (not res!975550) (not e!1461994))))

(assert (=> d!675338 (= res!975550 ((_ is Cons!27150) (t!203548 rules!1750)))))

(assert (=> d!675338 (= (contains!4709 (t!203548 rules!1750) r!2363) lt!846947)))

(declare-fun b!2282154 () Bool)

(declare-fun e!1461995 () Bool)

(assert (=> b!2282154 (= e!1461994 e!1461995)))

(declare-fun res!975551 () Bool)

(assert (=> b!2282154 (=> res!975551 e!1461995)))

(assert (=> b!2282154 (= res!975551 (= (h!32551 (t!203548 rules!1750)) r!2363))))

(declare-fun b!2282155 () Bool)

(assert (=> b!2282155 (= e!1461995 (contains!4709 (t!203548 (t!203548 rules!1750)) r!2363))))

(assert (= (and d!675338 res!975550) b!2282154))

(assert (= (and b!2282154 (not res!975551)) b!2282155))

(declare-fun m!2710073 () Bool)

(assert (=> d!675338 m!2710073))

(declare-fun m!2710075 () Bool)

(assert (=> d!675338 m!2710075))

(declare-fun m!2710077 () Bool)

(assert (=> b!2282155 m!2710077))

(assert (=> b!2281704 d!675338))

(declare-fun d!675340 () Bool)

(assert (=> d!675340 (= (isEmpty!15418 (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456))))) ((_ is Nil!27147) (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))

(assert (=> b!2281765 d!675340))

(declare-fun d!675342 () Bool)

(assert (=> d!675342 (= (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456)))) (t!203545 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))

(assert (=> b!2281765 d!675342))

(declare-fun d!675344 () Bool)

(assert (=> d!675344 (= (nullable!1850 (regex!4337 otherR!12)) (nullableFct!446 (regex!4337 otherR!12)))))

(declare-fun bs!456622 () Bool)

(assert (= bs!456622 d!675344))

(declare-fun m!2710079 () Bool)

(assert (=> bs!456622 m!2710079))

(assert (=> b!2281968 d!675344))

(declare-fun bs!456623 () Bool)

(declare-fun d!675346 () Bool)

(assert (= bs!456623 (and d!675346 d!675314)))

(declare-fun lambda!85669 () Int)

(assert (=> bs!456623 (= (= (toValue!6119 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 otherR!12))) (= lambda!85669 lambda!85668))))

(assert (=> d!675346 true))

(assert (=> d!675346 (< (dynLambda!11778 order!15135 (toValue!6119 (transformation!4337 (h!32551 rules!1750)))) (dynLambda!11783 order!15143 lambda!85669))))

(assert (=> d!675346 (= (equivClasses!1671 (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 (h!32551 rules!1750)))) (Forall2!704 lambda!85669))))

(declare-fun bs!456624 () Bool)

(assert (= bs!456624 d!675346))

(declare-fun m!2710081 () Bool)

(assert (=> bs!456624 m!2710081))

(assert (=> b!2281709 d!675346))

(declare-fun d!675348 () Bool)

(declare-fun charsToInt!0 (List!27242) (_ BitVec 32))

(assert (=> d!675348 (= (inv!16 (value!137424 (h!32550 tokens!456))) (= (charsToInt!0 (text!31940 (value!137424 (h!32550 tokens!456)))) (value!137415 (value!137424 (h!32550 tokens!456)))))))

(declare-fun bs!456625 () Bool)

(assert (= bs!456625 d!675348))

(declare-fun m!2710083 () Bool)

(assert (=> bs!456625 m!2710083))

(assert (=> b!2281796 d!675348))

(declare-fun d!675350 () Bool)

(assert (=> d!675350 (= (isDefined!4216 lt!846918) (not (isEmpty!15423 lt!846918)))))

(declare-fun bs!456626 () Bool)

(assert (= bs!456626 d!675350))

(assert (=> bs!456626 m!2709841))

(assert (=> b!2281909 d!675350))

(declare-fun d!675352 () Bool)

(declare-fun c!362118 () Bool)

(assert (=> d!675352 (= c!362118 ((_ is IntegerValue!13497) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))))

(declare-fun e!1462002 () Bool)

(assert (=> d!675352 (= (inv!21 (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)) e!1462002)))

(declare-fun b!2282166 () Bool)

(declare-fun e!1462004 () Bool)

(assert (=> b!2282166 (= e!1462004 (inv!15 (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))))

(declare-fun b!2282167 () Bool)

(declare-fun res!975554 () Bool)

(assert (=> b!2282167 (=> res!975554 e!1462004)))

(assert (=> b!2282167 (= res!975554 (not ((_ is IntegerValue!13499) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))))))

(declare-fun e!1462003 () Bool)

(assert (=> b!2282167 (= e!1462003 e!1462004)))

(declare-fun b!2282168 () Bool)

(assert (=> b!2282168 (= e!1462002 (inv!16 (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))))

(declare-fun b!2282169 () Bool)

(assert (=> b!2282169 (= e!1462003 (inv!17 (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))))

(declare-fun b!2282170 () Bool)

(assert (=> b!2282170 (= e!1462002 e!1462003)))

(declare-fun c!362119 () Bool)

(assert (=> b!2282170 (= c!362119 ((_ is IntegerValue!13498) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))))

(assert (= (and d!675352 c!362118) b!2282168))

(assert (= (and d!675352 (not c!362118)) b!2282170))

(assert (= (and b!2282170 c!362119) b!2282169))

(assert (= (and b!2282170 (not c!362119)) b!2282167))

(assert (= (and b!2282167 (not res!975554)) b!2282166))

(declare-fun m!2710085 () Bool)

(assert (=> b!2282166 m!2710085))

(declare-fun m!2710087 () Bool)

(assert (=> b!2282168 m!2710087))

(declare-fun m!2710089 () Bool)

(assert (=> b!2282169 m!2710089))

(assert (=> tb!135583 d!675352))

(declare-fun b!2282171 () Bool)

(declare-fun e!1462005 () Int)

(assert (=> b!2282171 (= e!1462005 0)))

(declare-fun b!2282174 () Bool)

(declare-fun e!1462006 () Int)

(assert (=> b!2282174 (= e!1462006 (- 1))))

(declare-fun b!2282172 () Bool)

(assert (=> b!2282172 (= e!1462005 e!1462006)))

(declare-fun c!362120 () Bool)

(assert (=> b!2282172 (= c!362120 (and ((_ is Cons!27150) (t!203548 rules!1750)) (not (= (h!32551 (t!203548 rules!1750)) otherR!12))))))

(declare-fun b!2282173 () Bool)

(assert (=> b!2282173 (= e!1462006 (+ 1 (getIndex!350 (t!203548 (t!203548 rules!1750)) otherR!12)))))

(declare-fun d!675354 () Bool)

(declare-fun lt!846954 () Int)

(assert (=> d!675354 (>= lt!846954 0)))

(assert (=> d!675354 (= lt!846954 e!1462005)))

(declare-fun c!362121 () Bool)

(assert (=> d!675354 (= c!362121 (and ((_ is Cons!27150) (t!203548 rules!1750)) (= (h!32551 (t!203548 rules!1750)) otherR!12)))))

(assert (=> d!675354 (contains!4709 (t!203548 rules!1750) otherR!12)))

(assert (=> d!675354 (= (getIndex!350 (t!203548 rules!1750) otherR!12) lt!846954)))

(assert (= (and d!675354 c!362121) b!2282171))

(assert (= (and d!675354 (not c!362121)) b!2282172))

(assert (= (and b!2282172 c!362120) b!2282173))

(assert (= (and b!2282172 (not c!362120)) b!2282174))

(declare-fun m!2710091 () Bool)

(assert (=> b!2282173 m!2710091))

(assert (=> d!675354 m!2709485))

(assert (=> b!2281966 d!675354))

(declare-fun d!675356 () Bool)

(assert (=> d!675356 (= (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918)))) (list!10588 (c!361992 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))))))

(declare-fun bs!456627 () Bool)

(assert (= bs!456627 d!675356))

(declare-fun m!2710093 () Bool)

(assert (=> bs!456627 m!2710093))

(assert (=> b!2281903 d!675356))

(declare-fun d!675358 () Bool)

(declare-fun lt!846955 () BalanceConc!17372)

(assert (=> d!675358 (= (list!10585 lt!846955) (originalCharacters!5107 (_1!15957 (get!8185 lt!846918))))))

(assert (=> d!675358 (= lt!846955 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918))))) (value!137424 (_1!15957 (get!8185 lt!846918)))))))

(assert (=> d!675358 (= (charsOf!2725 (_1!15957 (get!8185 lt!846918))) lt!846955)))

(declare-fun b_lambda!72645 () Bool)

(assert (=> (not b_lambda!72645) (not d!675358)))

(declare-fun t!203652 () Bool)

(declare-fun tb!135663 () Bool)

(assert (=> (and b!2282016 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toChars!5978 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203652) tb!135663))

(declare-fun b!2282175 () Bool)

(declare-fun e!1462007 () Bool)

(declare-fun tp!723238 () Bool)

(assert (=> b!2282175 (= e!1462007 (and (inv!36736 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918))))) (value!137424 (_1!15957 (get!8185 lt!846918)))))) tp!723238))))

(declare-fun result!165430 () Bool)

(assert (=> tb!135663 (= result!165430 (and (inv!36737 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918))))) (value!137424 (_1!15957 (get!8185 lt!846918))))) e!1462007))))

(assert (= tb!135663 b!2282175))

(declare-fun m!2710095 () Bool)

(assert (=> b!2282175 m!2710095))

(declare-fun m!2710097 () Bool)

(assert (=> tb!135663 m!2710097))

(assert (=> d!675358 t!203652))

(declare-fun b_and!180369 () Bool)

(assert (= b_and!180363 (and (=> t!203652 result!165430) b_and!180369)))

(declare-fun tb!135665 () Bool)

(declare-fun t!203654 () Bool)

(assert (=> (and b!2281469 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toChars!5978 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203654) tb!135665))

(declare-fun result!165432 () Bool)

(assert (= result!165432 result!165430))

(assert (=> d!675358 t!203654))

(declare-fun b_and!180371 () Bool)

(assert (= b_and!180359 (and (=> t!203654 result!165432) b_and!180371)))

(declare-fun tb!135667 () Bool)

(declare-fun t!203656 () Bool)

(assert (=> (and b!2281475 (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203656) tb!135667))

(declare-fun result!165434 () Bool)

(assert (= result!165434 result!165430))

(assert (=> d!675358 t!203656))

(declare-fun b_and!180373 () Bool)

(assert (= b_and!180357 (and (=> t!203656 result!165434) b_and!180373)))

(declare-fun t!203658 () Bool)

(declare-fun tb!135669 () Bool)

(assert (=> (and b!2282032 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toChars!5978 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203658) tb!135669))

(declare-fun result!165436 () Bool)

(assert (= result!165436 result!165430))

(assert (=> d!675358 t!203658))

(declare-fun b_and!180375 () Bool)

(assert (= b_and!180367 (and (=> t!203658 result!165436) b_and!180375)))

(declare-fun tb!135671 () Bool)

(declare-fun t!203660 () Bool)

(assert (=> (and b!2281500 (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203660) tb!135671))

(declare-fun result!165438 () Bool)

(assert (= result!165438 result!165430))

(assert (=> d!675358 t!203660))

(declare-fun b_and!180377 () Bool)

(assert (= b_and!180355 (and (=> t!203660 result!165438) b_and!180377)))

(declare-fun t!203662 () Bool)

(declare-fun tb!135673 () Bool)

(assert (=> (and b!2281498 (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203662) tb!135673))

(declare-fun result!165440 () Bool)

(assert (= result!165440 result!165430))

(assert (=> d!675358 t!203662))

(declare-fun b_and!180379 () Bool)

(assert (= b_and!180353 (and (=> t!203662 result!165440) b_and!180379)))

(declare-fun m!2710099 () Bool)

(assert (=> d!675358 m!2710099))

(declare-fun m!2710101 () Bool)

(assert (=> d!675358 m!2710101))

(assert (=> b!2281903 d!675358))

(declare-fun d!675360 () Bool)

(assert (=> d!675360 (= (get!8185 lt!846918) (v!30386 lt!846918))))

(assert (=> b!2281903 d!675360))

(assert (=> d!675248 d!675162))

(declare-fun d!675362 () Bool)

(assert (=> d!675362 (= (isEmpty!15418 (list!10585 (charsOf!2725 (head!4948 tokens!456)))) ((_ is Nil!27147) (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))

(assert (=> bm!136427 d!675362))

(declare-fun d!675364 () Bool)

(assert (=> d!675364 (= (isEmpty!15418 (originalCharacters!5107 (h!32550 tokens!456))) ((_ is Nil!27147) (originalCharacters!5107 (h!32550 tokens!456))))))

(assert (=> d!675244 d!675364))

(assert (=> b!2281906 d!675360))

(declare-fun d!675366 () Bool)

(assert (=> d!675366 (= (apply!6611 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))) (seqFromList!3041 (originalCharacters!5107 (_1!15957 (get!8185 lt!846918))))) (dynLambda!11777 (toValue!6119 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918))))) (seqFromList!3041 (originalCharacters!5107 (_1!15957 (get!8185 lt!846918))))))))

(declare-fun b_lambda!72647 () Bool)

(assert (=> (not b_lambda!72647) (not d!675366)))

(declare-fun tb!135675 () Bool)

(declare-fun t!203664 () Bool)

(assert (=> (and b!2282016 (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toValue!6119 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203664) tb!135675))

(declare-fun result!165442 () Bool)

(assert (=> tb!135675 (= result!165442 (inv!21 (dynLambda!11777 (toValue!6119 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918))))) (seqFromList!3041 (originalCharacters!5107 (_1!15957 (get!8185 lt!846918)))))))))

(declare-fun m!2710103 () Bool)

(assert (=> tb!135675 m!2710103))

(assert (=> d!675366 t!203664))

(declare-fun b_and!180381 () Bool)

(assert (= b_and!180361 (and (=> t!203664 result!165442) b_and!180381)))

(declare-fun t!203666 () Bool)

(declare-fun tb!135677 () Bool)

(assert (=> (and b!2281500 (= (toValue!6119 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203666) tb!135677))

(declare-fun result!165444 () Bool)

(assert (= result!165444 result!165442))

(assert (=> d!675366 t!203666))

(declare-fun b_and!180383 () Bool)

(assert (= b_and!180307 (and (=> t!203666 result!165444) b_and!180383)))

(declare-fun t!203668 () Bool)

(declare-fun tb!135679 () Bool)

(assert (=> (and b!2281498 (= (toValue!6119 (transformation!4337 r!2363)) (toValue!6119 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203668) tb!135679))

(declare-fun result!165446 () Bool)

(assert (= result!165446 result!165442))

(assert (=> d!675366 t!203668))

(declare-fun b_and!180385 () Bool)

(assert (= b_and!180305 (and (=> t!203668 result!165446) b_and!180385)))

(declare-fun tb!135681 () Bool)

(declare-fun t!203670 () Bool)

(assert (=> (and b!2282032 (= (toValue!6119 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toValue!6119 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203670) tb!135681))

(declare-fun result!165448 () Bool)

(assert (= result!165448 result!165442))

(assert (=> d!675366 t!203670))

(declare-fun b_and!180387 () Bool)

(assert (= b_and!180365 (and (=> t!203670 result!165448) b_and!180387)))

(declare-fun t!203672 () Bool)

(declare-fun tb!135683 () Bool)

(assert (=> (and b!2281469 (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203672) tb!135683))

(declare-fun result!165450 () Bool)

(assert (= result!165450 result!165442))

(assert (=> d!675366 t!203672))

(declare-fun b_and!180389 () Bool)

(assert (= b_and!180311 (and (=> t!203672 result!165450) b_and!180389)))

(declare-fun tb!135685 () Bool)

(declare-fun t!203674 () Bool)

(assert (=> (and b!2281475 (= (toValue!6119 (transformation!4337 otherR!12)) (toValue!6119 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203674) tb!135685))

(declare-fun result!165452 () Bool)

(assert (= result!165452 result!165442))

(assert (=> d!675366 t!203674))

(declare-fun b_and!180391 () Bool)

(assert (= b_and!180309 (and (=> t!203674 result!165452) b_and!180391)))

(assert (=> d!675366 m!2709849))

(declare-fun m!2710107 () Bool)

(assert (=> d!675366 m!2710107))

(assert (=> b!2281906 d!675366))

(declare-fun d!675368 () Bool)

(assert (=> d!675368 (= (seqFromList!3041 (originalCharacters!5107 (_1!15957 (get!8185 lt!846918)))) (fromListB!1362 (originalCharacters!5107 (_1!15957 (get!8185 lt!846918)))))))

(declare-fun bs!456628 () Bool)

(assert (= bs!456628 d!675368))

(declare-fun m!2710115 () Bool)

(assert (=> bs!456628 m!2710115))

(assert (=> b!2281906 d!675368))

(assert (=> b!2281706 d!675272))

(assert (=> b!2281706 d!675282))

(assert (=> b!2281760 d!675340))

(assert (=> b!2281760 d!675342))

(declare-fun bs!456630 () Bool)

(declare-fun d!675370 () Bool)

(assert (= bs!456630 (and d!675370 d!675314)))

(declare-fun lambda!85670 () Int)

(assert (=> bs!456630 (= (= (toValue!6119 (transformation!4337 r!2363)) (toValue!6119 (transformation!4337 otherR!12))) (= lambda!85670 lambda!85668))))

(declare-fun bs!456631 () Bool)

(assert (= bs!456631 (and d!675370 d!675346)))

(assert (=> bs!456631 (= (= (toValue!6119 (transformation!4337 r!2363)) (toValue!6119 (transformation!4337 (h!32551 rules!1750)))) (= lambda!85670 lambda!85669))))

(assert (=> d!675370 true))

(assert (=> d!675370 (< (dynLambda!11778 order!15135 (toValue!6119 (transformation!4337 r!2363))) (dynLambda!11783 order!15143 lambda!85670))))

(assert (=> d!675370 (= (equivClasses!1671 (toChars!5978 (transformation!4337 r!2363)) (toValue!6119 (transformation!4337 r!2363))) (Forall2!704 lambda!85670))))

(declare-fun bs!456632 () Bool)

(assert (= bs!456632 d!675370))

(declare-fun m!2710123 () Bool)

(assert (=> bs!456632 m!2710123))

(assert (=> b!2281973 d!675370))

(declare-fun d!675378 () Bool)

(declare-fun c!362126 () Bool)

(assert (=> d!675378 (= c!362126 ((_ is Nil!27150) rules!1750))))

(declare-fun e!1462015 () (InoxSet Rule!8474))

(assert (=> d!675378 (= (content!3628 rules!1750) e!1462015)))

(declare-fun b!2282186 () Bool)

(assert (=> b!2282186 (= e!1462015 ((as const (Array Rule!8474 Bool)) false))))

(declare-fun b!2282187 () Bool)

(assert (=> b!2282187 (= e!1462015 ((_ map or) (store ((as const (Array Rule!8474 Bool)) false) (h!32551 rules!1750) true) (content!3628 (t!203548 rules!1750))))))

(assert (= (and d!675378 c!362126) b!2282186))

(assert (= (and d!675378 (not c!362126)) b!2282187))

(declare-fun m!2710129 () Bool)

(assert (=> b!2282187 m!2710129))

(assert (=> b!2282187 m!2710073))

(assert (=> d!675162 d!675378))

(declare-fun bm!136442 () Bool)

(declare-fun call!136447 () Bool)

(assert (=> bm!136442 (= call!136447 (isEmpty!15418 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))))))

(declare-fun b!2282188 () Bool)

(declare-fun res!975558 () Bool)

(declare-fun e!1462016 () Bool)

(assert (=> b!2282188 (=> (not res!975558) (not e!1462016))))

(assert (=> b!2282188 (= res!975558 (not call!136447))))

(declare-fun b!2282189 () Bool)

(declare-fun e!1462019 () Bool)

(declare-fun lt!846959 () Bool)

(assert (=> b!2282189 (= e!1462019 (= lt!846959 call!136447))))

(declare-fun b!2282190 () Bool)

(declare-fun e!1462018 () Bool)

(assert (=> b!2282190 (= e!1462018 (matchR!2942 (derivativeStep!1510 (regex!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))) (head!4950 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918)))))) (tail!3293 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918)))))))))

(declare-fun b!2282191 () Bool)

(declare-fun res!975564 () Bool)

(assert (=> b!2282191 (=> (not res!975564) (not e!1462016))))

(assert (=> b!2282191 (= res!975564 (isEmpty!15418 (tail!3293 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918)))))))))

(declare-fun d!675382 () Bool)

(assert (=> d!675382 e!1462019))

(declare-fun c!362128 () Bool)

(assert (=> d!675382 (= c!362128 ((_ is EmptyExpr!6685) (regex!4337 (rule!6663 (_1!15957 (get!8185 lt!846918))))))))

(assert (=> d!675382 (= lt!846959 e!1462018)))

(declare-fun c!362129 () Bool)

(assert (=> d!675382 (= c!362129 (isEmpty!15418 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))))))

(assert (=> d!675382 (validRegex!2512 (regex!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))))

(assert (=> d!675382 (= (matchR!2942 (regex!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))) (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))) lt!846959)))

(declare-fun b!2282192 () Bool)

(declare-fun res!975557 () Bool)

(declare-fun e!1462022 () Bool)

(assert (=> b!2282192 (=> res!975557 e!1462022)))

(assert (=> b!2282192 (= res!975557 (not ((_ is ElementMatch!6685) (regex!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))))))

(declare-fun e!1462020 () Bool)

(assert (=> b!2282192 (= e!1462020 e!1462022)))

(declare-fun b!2282193 () Bool)

(declare-fun e!1462017 () Bool)

(assert (=> b!2282193 (= e!1462022 e!1462017)))

(declare-fun res!975563 () Bool)

(assert (=> b!2282193 (=> (not res!975563) (not e!1462017))))

(assert (=> b!2282193 (= res!975563 (not lt!846959))))

(declare-fun b!2282194 () Bool)

(assert (=> b!2282194 (= e!1462016 (= (head!4950 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))) (c!361993 (regex!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))))))

(declare-fun b!2282195 () Bool)

(assert (=> b!2282195 (= e!1462019 e!1462020)))

(declare-fun c!362127 () Bool)

(assert (=> b!2282195 (= c!362127 ((_ is EmptyLang!6685) (regex!4337 (rule!6663 (_1!15957 (get!8185 lt!846918))))))))

(declare-fun b!2282196 () Bool)

(declare-fun res!975559 () Bool)

(declare-fun e!1462021 () Bool)

(assert (=> b!2282196 (=> res!975559 e!1462021)))

(assert (=> b!2282196 (= res!975559 (not (isEmpty!15418 (tail!3293 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))))))))

(declare-fun b!2282197 () Bool)

(assert (=> b!2282197 (= e!1462018 (nullable!1850 (regex!4337 (rule!6663 (_1!15957 (get!8185 lt!846918))))))))

(declare-fun b!2282198 () Bool)

(assert (=> b!2282198 (= e!1462020 (not lt!846959))))

(declare-fun b!2282199 () Bool)

(declare-fun res!975562 () Bool)

(assert (=> b!2282199 (=> res!975562 e!1462022)))

(assert (=> b!2282199 (= res!975562 e!1462016)))

(declare-fun res!975560 () Bool)

(assert (=> b!2282199 (=> (not res!975560) (not e!1462016))))

(assert (=> b!2282199 (= res!975560 lt!846959)))

(declare-fun b!2282200 () Bool)

(assert (=> b!2282200 (= e!1462017 e!1462021)))

(declare-fun res!975561 () Bool)

(assert (=> b!2282200 (=> res!975561 e!1462021)))

(assert (=> b!2282200 (= res!975561 call!136447)))

(declare-fun b!2282201 () Bool)

(assert (=> b!2282201 (= e!1462021 (not (= (head!4950 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))) (c!361993 (regex!4337 (rule!6663 (_1!15957 (get!8185 lt!846918))))))))))

(assert (= (and d!675382 c!362129) b!2282197))

(assert (= (and d!675382 (not c!362129)) b!2282190))

(assert (= (and d!675382 c!362128) b!2282189))

(assert (= (and d!675382 (not c!362128)) b!2282195))

(assert (= (and b!2282195 c!362127) b!2282198))

(assert (= (and b!2282195 (not c!362127)) b!2282192))

(assert (= (and b!2282192 (not res!975557)) b!2282199))

(assert (= (and b!2282199 res!975560) b!2282188))

(assert (= (and b!2282188 res!975558) b!2282191))

(assert (= (and b!2282191 res!975564) b!2282194))

(assert (= (and b!2282199 (not res!975562)) b!2282193))

(assert (= (and b!2282193 res!975563) b!2282200))

(assert (= (and b!2282200 (not res!975561)) b!2282196))

(assert (= (and b!2282196 (not res!975559)) b!2282201))

(assert (= (or b!2282189 b!2282188 b!2282200) bm!136442))

(assert (=> b!2282191 m!2709837))

(declare-fun m!2710131 () Bool)

(assert (=> b!2282191 m!2710131))

(assert (=> b!2282191 m!2710131))

(declare-fun m!2710133 () Bool)

(assert (=> b!2282191 m!2710133))

(declare-fun m!2710135 () Bool)

(assert (=> b!2282197 m!2710135))

(assert (=> d!675382 m!2709837))

(declare-fun m!2710137 () Bool)

(assert (=> d!675382 m!2710137))

(declare-fun m!2710139 () Bool)

(assert (=> d!675382 m!2710139))

(assert (=> bm!136442 m!2709837))

(assert (=> bm!136442 m!2710137))

(assert (=> b!2282190 m!2709837))

(declare-fun m!2710141 () Bool)

(assert (=> b!2282190 m!2710141))

(assert (=> b!2282190 m!2710141))

(declare-fun m!2710143 () Bool)

(assert (=> b!2282190 m!2710143))

(assert (=> b!2282190 m!2709837))

(assert (=> b!2282190 m!2710131))

(assert (=> b!2282190 m!2710143))

(assert (=> b!2282190 m!2710131))

(declare-fun m!2710145 () Bool)

(assert (=> b!2282190 m!2710145))

(assert (=> b!2282201 m!2709837))

(assert (=> b!2282201 m!2710141))

(assert (=> b!2282194 m!2709837))

(assert (=> b!2282194 m!2710141))

(assert (=> b!2282196 m!2709837))

(assert (=> b!2282196 m!2710131))

(assert (=> b!2282196 m!2710131))

(assert (=> b!2282196 m!2710133))

(assert (=> b!2281905 d!675382))

(assert (=> b!2281905 d!675360))

(assert (=> b!2281905 d!675356))

(assert (=> b!2281905 d!675358))

(declare-fun d!675384 () Bool)

(assert (=> d!675384 (= (list!10585 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456)))) (list!10588 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456))))))))

(declare-fun bs!456633 () Bool)

(assert (= bs!456633 d!675384))

(declare-fun m!2710147 () Bool)

(assert (=> bs!456633 m!2710147))

(assert (=> b!2281950 d!675384))

(declare-fun d!675386 () Bool)

(assert (=> d!675386 (= (list!10585 (_2!15958 lt!846921)) (list!10588 (c!361992 (_2!15958 lt!846921))))))

(declare-fun bs!456634 () Bool)

(assert (= bs!456634 d!675386))

(declare-fun m!2710149 () Bool)

(assert (=> bs!456634 m!2710149))

(assert (=> b!2281945 d!675386))

(declare-fun b!2282243 () Bool)

(declare-fun e!1462049 () Bool)

(declare-fun e!1462047 () Bool)

(assert (=> b!2282243 (= e!1462049 e!1462047)))

(declare-fun res!975574 () Bool)

(declare-fun lt!846981 () tuple2!26898)

(assert (=> b!2282243 (= res!975574 (< (size!21348 (_2!15959 lt!846981)) (size!21348 (list!10585 (seqFromList!3041 input!1722)))))))

(assert (=> b!2282243 (=> (not res!975574) (not e!1462047))))

(declare-fun b!2282244 () Bool)

(assert (=> b!2282244 (= e!1462047 (not (isEmpty!15419 (_1!15959 lt!846981))))))

(declare-fun b!2282245 () Bool)

(declare-fun e!1462048 () tuple2!26898)

(assert (=> b!2282245 (= e!1462048 (tuple2!26899 Nil!27149 (list!10585 (seqFromList!3041 input!1722))))))

(declare-fun b!2282246 () Bool)

(declare-fun lt!846979 () Option!5323)

(declare-fun lt!846980 () tuple2!26898)

(assert (=> b!2282246 (= e!1462048 (tuple2!26899 (Cons!27149 (_1!15957 (v!30386 lt!846979)) (_1!15959 lt!846980)) (_2!15959 lt!846980)))))

(assert (=> b!2282246 (= lt!846980 (lexList!1096 thiss!16613 rules!1750 (_2!15957 (v!30386 lt!846979))))))

(declare-fun d!675388 () Bool)

(assert (=> d!675388 e!1462049))

(declare-fun c!362146 () Bool)

(declare-fun size!21354 (List!27243) Int)

(assert (=> d!675388 (= c!362146 (> (size!21354 (_1!15959 lt!846981)) 0))))

(assert (=> d!675388 (= lt!846981 e!1462048)))

(declare-fun c!362147 () Bool)

(assert (=> d!675388 (= c!362147 ((_ is Some!5322) lt!846979))))

(assert (=> d!675388 (= lt!846979 (maxPrefix!2198 thiss!16613 rules!1750 (list!10585 (seqFromList!3041 input!1722))))))

(assert (=> d!675388 (= (lexList!1096 thiss!16613 rules!1750 (list!10585 (seqFromList!3041 input!1722))) lt!846981)))

(declare-fun b!2282247 () Bool)

(assert (=> b!2282247 (= e!1462049 (= (_2!15959 lt!846981) (list!10585 (seqFromList!3041 input!1722))))))

(assert (= (and d!675388 c!362147) b!2282246))

(assert (= (and d!675388 (not c!362147)) b!2282245))

(assert (= (and d!675388 c!362146) b!2282243))

(assert (= (and d!675388 (not c!362146)) b!2282247))

(assert (= (and b!2282243 res!975574) b!2282244))

(declare-fun m!2710207 () Bool)

(assert (=> b!2282243 m!2710207))

(assert (=> b!2282243 m!2709881))

(declare-fun m!2710209 () Bool)

(assert (=> b!2282243 m!2710209))

(declare-fun m!2710211 () Bool)

(assert (=> b!2282244 m!2710211))

(declare-fun m!2710213 () Bool)

(assert (=> b!2282246 m!2710213))

(declare-fun m!2710215 () Bool)

(assert (=> d!675388 m!2710215))

(assert (=> d!675388 m!2709881))

(declare-fun m!2710217 () Bool)

(assert (=> d!675388 m!2710217))

(assert (=> b!2281945 d!675388))

(declare-fun d!675426 () Bool)

(assert (=> d!675426 (= (list!10585 (seqFromList!3041 input!1722)) (list!10588 (c!361992 (seqFromList!3041 input!1722))))))

(declare-fun bs!456641 () Bool)

(assert (= bs!456641 d!675426))

(declare-fun m!2710219 () Bool)

(assert (=> bs!456641 m!2710219))

(assert (=> b!2281945 d!675426))

(declare-fun d!675428 () Bool)

(declare-fun lt!846984 () Int)

(assert (=> d!675428 (= lt!846984 (size!21348 (list!10585 (_2!15958 lt!846921))))))

(assert (=> d!675428 (= lt!846984 (size!21351 (c!361992 (_2!15958 lt!846921))))))

(assert (=> d!675428 (= (size!21347 (_2!15958 lt!846921)) lt!846984)))

(declare-fun bs!456642 () Bool)

(assert (= bs!456642 d!675428))

(assert (=> bs!456642 m!2709879))

(assert (=> bs!456642 m!2709879))

(declare-fun m!2710221 () Bool)

(assert (=> bs!456642 m!2710221))

(declare-fun m!2710223 () Bool)

(assert (=> bs!456642 m!2710223))

(assert (=> b!2281943 d!675428))

(declare-fun d!675430 () Bool)

(declare-fun lt!846986 () Int)

(assert (=> d!675430 (= lt!846986 (size!21348 (list!10585 (seqFromList!3041 input!1722))))))

(assert (=> d!675430 (= lt!846986 (size!21351 (c!361992 (seqFromList!3041 input!1722))))))

(assert (=> d!675430 (= (size!21347 (seqFromList!3041 input!1722)) lt!846986)))

(declare-fun bs!456643 () Bool)

(assert (= bs!456643 d!675430))

(assert (=> bs!456643 m!2709417))

(assert (=> bs!456643 m!2709881))

(assert (=> bs!456643 m!2709881))

(assert (=> bs!456643 m!2710209))

(declare-fun m!2710225 () Bool)

(assert (=> bs!456643 m!2710225))

(assert (=> b!2281943 d!675430))

(declare-fun b!2282250 () Bool)

(declare-fun e!1462052 () Bool)

(declare-fun e!1462054 () Bool)

(assert (=> b!2282250 (= e!1462052 e!1462054)))

(declare-fun c!362149 () Bool)

(assert (=> b!2282250 (= c!362149 ((_ is Star!6685) (regex!4337 r!2363)))))

(declare-fun b!2282251 () Bool)

(declare-fun e!1462056 () Bool)

(declare-fun call!136448 () Bool)

(assert (=> b!2282251 (= e!1462056 call!136448)))

(declare-fun bm!136443 () Bool)

(declare-fun call!136449 () Bool)

(declare-fun c!362148 () Bool)

(assert (=> bm!136443 (= call!136449 (validRegex!2512 (ite c!362148 (regTwo!13883 (regex!4337 r!2363)) (regOne!13882 (regex!4337 r!2363)))))))

(declare-fun b!2282252 () Bool)

(declare-fun e!1462051 () Bool)

(assert (=> b!2282252 (= e!1462051 e!1462056)))

(declare-fun res!975575 () Bool)

(assert (=> b!2282252 (=> (not res!975575) (not e!1462056))))

(assert (=> b!2282252 (= res!975575 call!136449)))

(declare-fun b!2282253 () Bool)

(declare-fun e!1462055 () Bool)

(assert (=> b!2282253 (= e!1462054 e!1462055)))

(declare-fun res!975577 () Bool)

(assert (=> b!2282253 (= res!975577 (not (nullable!1850 (reg!7014 (regex!4337 r!2363)))))))

(assert (=> b!2282253 (=> (not res!975577) (not e!1462055))))

(declare-fun d!675432 () Bool)

(declare-fun res!975578 () Bool)

(assert (=> d!675432 (=> res!975578 e!1462052)))

(assert (=> d!675432 (= res!975578 ((_ is ElementMatch!6685) (regex!4337 r!2363)))))

(assert (=> d!675432 (= (validRegex!2512 (regex!4337 r!2363)) e!1462052)))

(declare-fun b!2282254 () Bool)

(declare-fun e!1462053 () Bool)

(assert (=> b!2282254 (= e!1462054 e!1462053)))

(assert (=> b!2282254 (= c!362148 ((_ is Union!6685) (regex!4337 r!2363)))))

(declare-fun call!136450 () Bool)

(declare-fun bm!136444 () Bool)

(assert (=> bm!136444 (= call!136450 (validRegex!2512 (ite c!362149 (reg!7014 (regex!4337 r!2363)) (ite c!362148 (regOne!13883 (regex!4337 r!2363)) (regTwo!13882 (regex!4337 r!2363))))))))

(declare-fun b!2282255 () Bool)

(declare-fun e!1462050 () Bool)

(assert (=> b!2282255 (= e!1462050 call!136449)))

(declare-fun b!2282256 () Bool)

(assert (=> b!2282256 (= e!1462055 call!136450)))

(declare-fun b!2282257 () Bool)

(declare-fun res!975579 () Bool)

(assert (=> b!2282257 (=> (not res!975579) (not e!1462050))))

(assert (=> b!2282257 (= res!975579 call!136448)))

(assert (=> b!2282257 (= e!1462053 e!1462050)))

(declare-fun b!2282258 () Bool)

(declare-fun res!975576 () Bool)

(assert (=> b!2282258 (=> res!975576 e!1462051)))

(assert (=> b!2282258 (= res!975576 (not ((_ is Concat!11185) (regex!4337 r!2363))))))

(assert (=> b!2282258 (= e!1462053 e!1462051)))

(declare-fun bm!136445 () Bool)

(assert (=> bm!136445 (= call!136448 call!136450)))

(assert (= (and d!675432 (not res!975578)) b!2282250))

(assert (= (and b!2282250 c!362149) b!2282253))

(assert (= (and b!2282250 (not c!362149)) b!2282254))

(assert (= (and b!2282253 res!975577) b!2282256))

(assert (= (and b!2282254 c!362148) b!2282257))

(assert (= (and b!2282254 (not c!362148)) b!2282258))

(assert (= (and b!2282257 res!975579) b!2282255))

(assert (= (and b!2282258 (not res!975576)) b!2282252))

(assert (= (and b!2282252 res!975575) b!2282251))

(assert (= (or b!2282257 b!2282251) bm!136445))

(assert (= (or b!2282255 b!2282252) bm!136443))

(assert (= (or b!2282256 bm!136445) bm!136444))

(declare-fun m!2710229 () Bool)

(assert (=> bm!136443 m!2710229))

(declare-fun m!2710231 () Bool)

(assert (=> b!2282253 m!2710231))

(declare-fun m!2710233 () Bool)

(assert (=> bm!136444 m!2710233))

(assert (=> d!675088 d!675432))

(declare-fun d!675436 () Bool)

(declare-fun isBalanced!2677 (Conc!8822) Bool)

(assert (=> d!675436 (= (inv!36737 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456)))) (isBalanced!2677 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456))))))))

(declare-fun bs!456646 () Bool)

(assert (= bs!456646 d!675436))

(declare-fun m!2710237 () Bool)

(assert (=> bs!456646 m!2710237))

(assert (=> tb!135607 d!675436))

(assert (=> d!675128 d!675154))

(assert (=> d!675128 d!675138))

(declare-fun d!675440 () Bool)

(assert (=> d!675440 (isPrefix!2327 lt!846785 (++!6629 lt!846785 (_2!15957 lt!846784)))))

(assert (=> d!675440 true))

(declare-fun _$46!1317 () Unit!40066)

(assert (=> d!675440 (= (choose!13310 lt!846785 (_2!15957 lt!846784)) _$46!1317)))

(declare-fun bs!456648 () Bool)

(assert (= bs!456648 d!675440))

(assert (=> bs!456648 m!2709451))

(assert (=> bs!456648 m!2709451))

(assert (=> bs!456648 m!2709453))

(assert (=> d!675128 d!675440))

(declare-fun d!675446 () Bool)

(declare-fun lt!846988 () Int)

(assert (=> d!675446 (>= lt!846988 0)))

(declare-fun e!1462058 () Int)

(assert (=> d!675446 (= lt!846988 e!1462058)))

(declare-fun c!362151 () Bool)

(assert (=> d!675446 (= c!362151 ((_ is Nil!27147) (t!203545 lt!846785)))))

(assert (=> d!675446 (= (size!21348 (t!203545 lt!846785)) lt!846988)))

(declare-fun b!2282261 () Bool)

(assert (=> b!2282261 (= e!1462058 0)))

(declare-fun b!2282262 () Bool)

(assert (=> b!2282262 (= e!1462058 (+ 1 (size!21348 (t!203545 (t!203545 lt!846785)))))))

(assert (= (and d!675446 c!362151) b!2282261))

(assert (= (and d!675446 (not c!362151)) b!2282262))

(declare-fun m!2710241 () Bool)

(assert (=> b!2282262 m!2710241))

(assert (=> b!2281702 d!675446))

(declare-fun d!675448 () Bool)

(declare-fun c!362158 () Bool)

(assert (=> d!675448 (= c!362158 ((_ is Node!8822) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456))))))))

(declare-fun e!1462073 () Bool)

(assert (=> d!675448 (= (inv!36736 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456))))) e!1462073)))

(declare-fun b!2282288 () Bool)

(declare-fun inv!36740 (Conc!8822) Bool)

(assert (=> b!2282288 (= e!1462073 (inv!36740 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456))))))))

(declare-fun b!2282289 () Bool)

(declare-fun e!1462074 () Bool)

(assert (=> b!2282289 (= e!1462073 e!1462074)))

(declare-fun res!975592 () Bool)

(assert (=> b!2282289 (= res!975592 (not ((_ is Leaf!12976) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456)))))))))

(assert (=> b!2282289 (=> res!975592 e!1462074)))

(declare-fun b!2282290 () Bool)

(declare-fun inv!36741 (Conc!8822) Bool)

(assert (=> b!2282290 (= e!1462074 (inv!36741 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456))))))))

(assert (= (and d!675448 c!362158) b!2282288))

(assert (= (and d!675448 (not c!362158)) b!2282289))

(assert (= (and b!2282289 (not res!975592)) b!2282290))

(declare-fun m!2710261 () Bool)

(assert (=> b!2282288 m!2710261))

(declare-fun m!2710265 () Bool)

(assert (=> b!2282290 m!2710265))

(assert (=> b!2281710 d!675448))

(declare-fun d!675456 () Bool)

(assert (=> d!675456 (= lt!846785 otherP!12)))

(assert (=> d!675456 true))

(declare-fun _$60!719 () Unit!40066)

(assert (=> d!675456 (= (choose!13311 lt!846785 otherP!12 input!1722) _$60!719)))

(assert (=> d!675166 d!675456))

(assert (=> d!675166 d!675164))

(declare-fun b!2282292 () Bool)

(declare-fun res!975593 () Bool)

(declare-fun e!1462076 () Bool)

(assert (=> b!2282292 (=> (not res!975593) (not e!1462076))))

(assert (=> b!2282292 (= res!975593 (= (head!4950 (tail!3293 otherP!12)) (head!4950 (tail!3293 input!1722))))))

(declare-fun b!2282293 () Bool)

(assert (=> b!2282293 (= e!1462076 (isPrefix!2327 (tail!3293 (tail!3293 otherP!12)) (tail!3293 (tail!3293 input!1722))))))

(declare-fun b!2282291 () Bool)

(declare-fun e!1462077 () Bool)

(assert (=> b!2282291 (= e!1462077 e!1462076)))

(declare-fun res!975595 () Bool)

(assert (=> b!2282291 (=> (not res!975595) (not e!1462076))))

(assert (=> b!2282291 (= res!975595 (not ((_ is Nil!27147) (tail!3293 input!1722))))))

(declare-fun d!675458 () Bool)

(declare-fun e!1462075 () Bool)

(assert (=> d!675458 e!1462075))

(declare-fun res!975596 () Bool)

(assert (=> d!675458 (=> res!975596 e!1462075)))

(declare-fun lt!846991 () Bool)

(assert (=> d!675458 (= res!975596 (not lt!846991))))

(assert (=> d!675458 (= lt!846991 e!1462077)))

(declare-fun res!975594 () Bool)

(assert (=> d!675458 (=> res!975594 e!1462077)))

(assert (=> d!675458 (= res!975594 ((_ is Nil!27147) (tail!3293 otherP!12)))))

(assert (=> d!675458 (= (isPrefix!2327 (tail!3293 otherP!12) (tail!3293 input!1722)) lt!846991)))

(declare-fun b!2282294 () Bool)

(assert (=> b!2282294 (= e!1462075 (>= (size!21348 (tail!3293 input!1722)) (size!21348 (tail!3293 otherP!12))))))

(assert (= (and d!675458 (not res!975594)) b!2282291))

(assert (= (and b!2282291 res!975595) b!2282292))

(assert (= (and b!2282292 res!975593) b!2282293))

(assert (= (and d!675458 (not res!975596)) b!2282294))

(assert (=> b!2282292 m!2709713))

(declare-fun m!2710277 () Bool)

(assert (=> b!2282292 m!2710277))

(assert (=> b!2282292 m!2709665))

(assert (=> b!2282292 m!2710061))

(assert (=> b!2282293 m!2709713))

(declare-fun m!2710279 () Bool)

(assert (=> b!2282293 m!2710279))

(assert (=> b!2282293 m!2709665))

(assert (=> b!2282293 m!2710065))

(assert (=> b!2282293 m!2710279))

(assert (=> b!2282293 m!2710065))

(declare-fun m!2710281 () Bool)

(assert (=> b!2282293 m!2710281))

(assert (=> b!2282294 m!2709665))

(assert (=> b!2282294 m!2710069))

(assert (=> b!2282294 m!2709713))

(declare-fun m!2710283 () Bool)

(assert (=> b!2282294 m!2710283))

(assert (=> b!2281773 d!675458))

(declare-fun d!675462 () Bool)

(assert (=> d!675462 (= (tail!3293 otherP!12) (t!203545 otherP!12))))

(assert (=> b!2281773 d!675462))

(assert (=> b!2281773 d!675336))

(declare-fun bs!456650 () Bool)

(declare-fun d!675464 () Bool)

(assert (= bs!456650 (and d!675464 d!675104)))

(declare-fun lambda!85674 () Int)

(assert (=> bs!456650 (= (and (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 r!2363))) (= (toValue!6119 (transformation!4337 otherR!12)) (toValue!6119 (transformation!4337 r!2363)))) (= lambda!85674 lambda!85655))))

(declare-fun bs!456651 () Bool)

(assert (= bs!456651 (and d!675464 d!675308)))

(assert (=> bs!456651 (= (and (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) (= (toValue!6119 (transformation!4337 otherR!12)) (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (= lambda!85674 lambda!85665))))

(assert (=> d!675464 true))

(assert (=> d!675464 (< (dynLambda!11780 order!15139 (toChars!5978 (transformation!4337 otherR!12))) (dynLambda!11779 order!15137 lambda!85674))))

(assert (=> d!675464 true))

(assert (=> d!675464 (< (dynLambda!11778 order!15135 (toValue!6119 (transformation!4337 otherR!12))) (dynLambda!11779 order!15137 lambda!85674))))

(assert (=> d!675464 (= (semiInverseModEq!1752 (toChars!5978 (transformation!4337 otherR!12)) (toValue!6119 (transformation!4337 otherR!12))) (Forall!1087 lambda!85674))))

(declare-fun bs!456652 () Bool)

(assert (= bs!456652 d!675464))

(declare-fun m!2710285 () Bool)

(assert (=> bs!456652 m!2710285))

(assert (=> d!675086 d!675464))

(assert (=> d!675074 d!675378))

(declare-fun d!675466 () Bool)

(declare-fun res!975601 () Bool)

(declare-fun e!1462082 () Bool)

(assert (=> d!675466 (=> res!975601 e!1462082)))

(assert (=> d!675466 (= res!975601 ((_ is Nil!27150) rules!1750))))

(assert (=> d!675466 (= (noDuplicateTag!1594 thiss!16613 rules!1750 Nil!27152) e!1462082)))

(declare-fun b!2282299 () Bool)

(declare-fun e!1462083 () Bool)

(assert (=> b!2282299 (= e!1462082 e!1462083)))

(declare-fun res!975602 () Bool)

(assert (=> b!2282299 (=> (not res!975602) (not e!1462083))))

(declare-fun contains!4710 (List!27246 String!29599) Bool)

(assert (=> b!2282299 (= res!975602 (not (contains!4710 Nil!27152 (tag!4827 (h!32551 rules!1750)))))))

(declare-fun b!2282300 () Bool)

(assert (=> b!2282300 (= e!1462083 (noDuplicateTag!1594 thiss!16613 (t!203548 rules!1750) (Cons!27152 (tag!4827 (h!32551 rules!1750)) Nil!27152)))))

(assert (= (and d!675466 (not res!975601)) b!2282299))

(assert (= (and b!2282299 res!975602) b!2282300))

(declare-fun m!2710287 () Bool)

(assert (=> b!2282299 m!2710287))

(declare-fun m!2710289 () Bool)

(assert (=> b!2282300 m!2710289))

(assert (=> b!2281972 d!675466))

(declare-fun d!675468 () Bool)

(declare-fun c!362159 () Bool)

(assert (=> d!675468 (= c!362159 ((_ is Node!8822) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))))))

(declare-fun e!1462084 () Bool)

(assert (=> d!675468 (= (inv!36736 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))) e!1462084)))

(declare-fun b!2282301 () Bool)

(assert (=> b!2282301 (= e!1462084 (inv!36740 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))))))

(declare-fun b!2282302 () Bool)

(declare-fun e!1462085 () Bool)

(assert (=> b!2282302 (= e!1462084 e!1462085)))

(declare-fun res!975603 () Bool)

(assert (=> b!2282302 (= res!975603 (not ((_ is Leaf!12976) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))))))))

(assert (=> b!2282302 (=> res!975603 e!1462085)))

(declare-fun b!2282303 () Bool)

(assert (=> b!2282303 (= e!1462085 (inv!36741 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))))))

(assert (= (and d!675468 c!362159) b!2282301))

(assert (= (and d!675468 (not c!362159)) b!2282302))

(assert (= (and b!2282302 (not res!975603)) b!2282303))

(declare-fun m!2710291 () Bool)

(assert (=> b!2282301 m!2710291))

(declare-fun m!2710293 () Bool)

(assert (=> b!2282303 m!2710293))

(assert (=> b!2281615 d!675468))

(declare-fun d!675470 () Bool)

(assert (=> d!675470 (= (list!10584 (_1!15958 lt!846921)) (list!10589 (c!361994 (_1!15958 lt!846921))))))

(declare-fun bs!456653 () Bool)

(assert (= bs!456653 d!675470))

(declare-fun m!2710295 () Bool)

(assert (=> bs!456653 m!2710295))

(assert (=> b!2281942 d!675470))

(assert (=> b!2281942 d!675388))

(assert (=> b!2281942 d!675426))

(assert (=> b!2281770 d!675312))

(declare-fun b!2282309 () Bool)

(declare-fun res!975604 () Bool)

(declare-fun e!1462089 () Bool)

(assert (=> b!2282309 (=> (not res!975604) (not e!1462089))))

(assert (=> b!2282309 (= res!975604 (= (head!4950 (tail!3293 lt!846785)) (head!4950 (tail!3293 (++!6629 lt!846785 (_2!15957 lt!846784))))))))

(declare-fun b!2282310 () Bool)

(assert (=> b!2282310 (= e!1462089 (isPrefix!2327 (tail!3293 (tail!3293 lt!846785)) (tail!3293 (tail!3293 (++!6629 lt!846785 (_2!15957 lt!846784))))))))

(declare-fun b!2282308 () Bool)

(declare-fun e!1462090 () Bool)

(assert (=> b!2282308 (= e!1462090 e!1462089)))

(declare-fun res!975606 () Bool)

(assert (=> b!2282308 (=> (not res!975606) (not e!1462089))))

(assert (=> b!2282308 (= res!975606 (not ((_ is Nil!27147) (tail!3293 (++!6629 lt!846785 (_2!15957 lt!846784))))))))

(declare-fun d!675472 () Bool)

(declare-fun e!1462088 () Bool)

(assert (=> d!675472 e!1462088))

(declare-fun res!975607 () Bool)

(assert (=> d!675472 (=> res!975607 e!1462088)))

(declare-fun lt!846994 () Bool)

(assert (=> d!675472 (= res!975607 (not lt!846994))))

(assert (=> d!675472 (= lt!846994 e!1462090)))

(declare-fun res!975605 () Bool)

(assert (=> d!675472 (=> res!975605 e!1462090)))

(assert (=> d!675472 (= res!975605 ((_ is Nil!27147) (tail!3293 lt!846785)))))

(assert (=> d!675472 (= (isPrefix!2327 (tail!3293 lt!846785) (tail!3293 (++!6629 lt!846785 (_2!15957 lt!846784)))) lt!846994)))

(declare-fun b!2282311 () Bool)

(assert (=> b!2282311 (= e!1462088 (>= (size!21348 (tail!3293 (++!6629 lt!846785 (_2!15957 lt!846784)))) (size!21348 (tail!3293 lt!846785))))))

(assert (= (and d!675472 (not res!975605)) b!2282308))

(assert (= (and b!2282308 res!975606) b!2282309))

(assert (= (and b!2282309 res!975604) b!2282310))

(assert (= (and d!675472 (not res!975607)) b!2282311))

(assert (=> b!2282309 m!2709653))

(assert (=> b!2282309 m!2710059))

(assert (=> b!2282309 m!2709655))

(declare-fun m!2710297 () Bool)

(assert (=> b!2282309 m!2710297))

(assert (=> b!2282310 m!2709653))

(assert (=> b!2282310 m!2710063))

(assert (=> b!2282310 m!2709655))

(declare-fun m!2710299 () Bool)

(assert (=> b!2282310 m!2710299))

(assert (=> b!2282310 m!2710063))

(assert (=> b!2282310 m!2710299))

(declare-fun m!2710301 () Bool)

(assert (=> b!2282310 m!2710301))

(assert (=> b!2282311 m!2709655))

(declare-fun m!2710303 () Bool)

(assert (=> b!2282311 m!2710303))

(assert (=> b!2282311 m!2709653))

(assert (=> b!2282311 m!2710071))

(assert (=> b!2281693 d!675472))

(assert (=> b!2281693 d!675334))

(declare-fun d!675474 () Bool)

(assert (=> d!675474 (= (tail!3293 (++!6629 lt!846785 (_2!15957 lt!846784))) (t!203545 (++!6629 lt!846785 (_2!15957 lt!846784))))))

(assert (=> b!2281693 d!675474))

(declare-fun d!675476 () Bool)

(assert (=> d!675476 (= (inv!36737 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456)))) (isBalanced!2677 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456))))))))

(declare-fun bs!456654 () Bool)

(assert (= bs!456654 d!675476))

(declare-fun m!2710305 () Bool)

(assert (=> bs!456654 m!2710305))

(assert (=> tb!135615 d!675476))

(declare-fun d!675478 () Bool)

(assert (=> d!675478 (= (isEmpty!15423 lt!846918) (not ((_ is Some!5322) lt!846918)))))

(assert (=> d!675198 d!675478))

(declare-fun b!2282329 () Bool)

(declare-fun res!975608 () Bool)

(declare-fun e!1462100 () Bool)

(assert (=> b!2282329 (=> (not res!975608) (not e!1462100))))

(assert (=> b!2282329 (= res!975608 (= (head!4950 input!1722) (head!4950 input!1722)))))

(declare-fun b!2282330 () Bool)

(assert (=> b!2282330 (= e!1462100 (isPrefix!2327 (tail!3293 input!1722) (tail!3293 input!1722)))))

(declare-fun b!2282328 () Bool)

(declare-fun e!1462101 () Bool)

(assert (=> b!2282328 (= e!1462101 e!1462100)))

(declare-fun res!975610 () Bool)

(assert (=> b!2282328 (=> (not res!975610) (not e!1462100))))

(assert (=> b!2282328 (= res!975610 (not ((_ is Nil!27147) input!1722)))))

(declare-fun d!675480 () Bool)

(declare-fun e!1462099 () Bool)

(assert (=> d!675480 e!1462099))

(declare-fun res!975611 () Bool)

(assert (=> d!675480 (=> res!975611 e!1462099)))

(declare-fun lt!846995 () Bool)

(assert (=> d!675480 (= res!975611 (not lt!846995))))

(assert (=> d!675480 (= lt!846995 e!1462101)))

(declare-fun res!975609 () Bool)

(assert (=> d!675480 (=> res!975609 e!1462101)))

(assert (=> d!675480 (= res!975609 ((_ is Nil!27147) input!1722))))

(assert (=> d!675480 (= (isPrefix!2327 input!1722 input!1722) lt!846995)))

(declare-fun b!2282331 () Bool)

(assert (=> b!2282331 (= e!1462099 (>= (size!21348 input!1722) (size!21348 input!1722)))))

(assert (= (and d!675480 (not res!975609)) b!2282328))

(assert (= (and b!2282328 res!975610) b!2282329))

(assert (= (and b!2282329 res!975608) b!2282330))

(assert (= (and d!675480 (not res!975611)) b!2282331))

(assert (=> b!2282329 m!2709675))

(assert (=> b!2282329 m!2709675))

(assert (=> b!2282330 m!2709665))

(assert (=> b!2282330 m!2709665))

(assert (=> b!2282330 m!2709665))

(assert (=> b!2282330 m!2709665))

(declare-fun m!2710307 () Bool)

(assert (=> b!2282330 m!2710307))

(assert (=> b!2282331 m!2709663))

(assert (=> b!2282331 m!2709663))

(assert (=> d!675198 d!675480))

(declare-fun d!675482 () Bool)

(assert (=> d!675482 (isPrefix!2327 input!1722 input!1722)))

(declare-fun lt!846998 () Unit!40066)

(declare-fun choose!13316 (List!27241 List!27241) Unit!40066)

(assert (=> d!675482 (= lt!846998 (choose!13316 input!1722 input!1722))))

(assert (=> d!675482 (= (lemmaIsPrefixRefl!1479 input!1722 input!1722) lt!846998)))

(declare-fun bs!456655 () Bool)

(assert (= bs!456655 d!675482))

(assert (=> bs!456655 m!2709843))

(declare-fun m!2710309 () Bool)

(assert (=> bs!456655 m!2710309))

(assert (=> d!675198 d!675482))

(declare-fun d!675484 () Bool)

(assert (=> d!675484 true))

(declare-fun lt!847002 () Bool)

(declare-fun lambda!85677 () Int)

(declare-fun forall!5490 (List!27244 Int) Bool)

(assert (=> d!675484 (= lt!847002 (forall!5490 rules!1750 lambda!85677))))

(declare-fun e!1462112 () Bool)

(assert (=> d!675484 (= lt!847002 e!1462112)))

(declare-fun res!975617 () Bool)

(assert (=> d!675484 (=> res!975617 e!1462112)))

(assert (=> d!675484 (= res!975617 (not ((_ is Cons!27150) rules!1750)))))

(assert (=> d!675484 (= (rulesValidInductive!1521 thiss!16613 rules!1750) lt!847002)))

(declare-fun b!2282346 () Bool)

(declare-fun e!1462111 () Bool)

(assert (=> b!2282346 (= e!1462112 e!1462111)))

(declare-fun res!975616 () Bool)

(assert (=> b!2282346 (=> (not res!975616) (not e!1462111))))

(assert (=> b!2282346 (= res!975616 (ruleValid!1427 thiss!16613 (h!32551 rules!1750)))))

(declare-fun b!2282347 () Bool)

(assert (=> b!2282347 (= e!1462111 (rulesValidInductive!1521 thiss!16613 (t!203548 rules!1750)))))

(assert (= (and d!675484 (not res!975617)) b!2282346))

(assert (= (and b!2282346 res!975616) b!2282347))

(declare-fun m!2710319 () Bool)

(assert (=> d!675484 m!2710319))

(declare-fun m!2710321 () Bool)

(assert (=> b!2282346 m!2710321))

(assert (=> b!2282347 m!2710037))

(assert (=> d!675198 d!675484))

(assert (=> d!675098 d!675088))

(declare-fun d!675496 () Bool)

(assert (=> d!675496 (ruleValid!1427 thiss!16613 r!2363)))

(assert (=> d!675496 true))

(declare-fun _$65!1122 () Unit!40066)

(assert (=> d!675496 (= (choose!13308 thiss!16613 r!2363 rules!1750) _$65!1122)))

(declare-fun bs!456656 () Bool)

(assert (= bs!456656 d!675496))

(assert (=> bs!456656 m!2709439))

(assert (=> d!675098 d!675496))

(assert (=> d!675098 d!675162))

(declare-fun b!2282350 () Bool)

(declare-fun e!1462114 () List!27241)

(assert (=> b!2282350 (= e!1462114 lt!846855)))

(declare-fun b!2282352 () Bool)

(declare-fun res!975619 () Bool)

(declare-fun e!1462115 () Bool)

(assert (=> b!2282352 (=> (not res!975619) (not e!1462115))))

(declare-fun lt!847003 () List!27241)

(assert (=> b!2282352 (= res!975619 (= (size!21348 lt!847003) (+ (size!21348 lt!846785) (size!21348 lt!846855))))))

(declare-fun b!2282353 () Bool)

(assert (=> b!2282353 (= e!1462115 (or (not (= lt!846855 Nil!27147)) (= lt!847003 lt!846785)))))

(declare-fun b!2282351 () Bool)

(assert (=> b!2282351 (= e!1462114 (Cons!27147 (h!32548 lt!846785) (++!6629 (t!203545 lt!846785) lt!846855)))))

(declare-fun d!675498 () Bool)

(assert (=> d!675498 e!1462115))

(declare-fun res!975618 () Bool)

(assert (=> d!675498 (=> (not res!975618) (not e!1462115))))

(assert (=> d!675498 (= res!975618 (= (content!3629 lt!847003) ((_ map or) (content!3629 lt!846785) (content!3629 lt!846855))))))

(assert (=> d!675498 (= lt!847003 e!1462114)))

(declare-fun c!362175 () Bool)

(assert (=> d!675498 (= c!362175 ((_ is Nil!27147) lt!846785))))

(assert (=> d!675498 (= (++!6629 lt!846785 lt!846855) lt!847003)))

(assert (= (and d!675498 c!362175) b!2282350))

(assert (= (and d!675498 (not c!362175)) b!2282351))

(assert (= (and d!675498 res!975618) b!2282352))

(assert (= (and b!2282352 res!975619) b!2282353))

(declare-fun m!2710325 () Bool)

(assert (=> b!2282352 m!2710325))

(assert (=> b!2282352 m!2709457))

(declare-fun m!2710327 () Bool)

(assert (=> b!2282352 m!2710327))

(declare-fun m!2710329 () Bool)

(assert (=> b!2282351 m!2710329))

(declare-fun m!2710331 () Bool)

(assert (=> d!675498 m!2710331))

(assert (=> d!675498 m!2709631))

(declare-fun m!2710333 () Bool)

(assert (=> d!675498 m!2710333))

(assert (=> d!675158 d!675498))

(assert (=> d!675158 d!675268))

(assert (=> d!675158 d!675160))

(declare-fun d!675500 () Bool)

(declare-fun res!975620 () Bool)

(declare-fun e!1462116 () Bool)

(assert (=> d!675500 (=> (not res!975620) (not e!1462116))))

(assert (=> d!675500 (= res!975620 (not (isEmpty!15418 (originalCharacters!5107 (h!32550 (t!203547 tokens!456))))))))

(assert (=> d!675500 (= (inv!36733 (h!32550 (t!203547 tokens!456))) e!1462116)))

(declare-fun b!2282354 () Bool)

(declare-fun res!975621 () Bool)

(assert (=> b!2282354 (=> (not res!975621) (not e!1462116))))

(assert (=> b!2282354 (= res!975621 (= (originalCharacters!5107 (h!32550 (t!203547 tokens!456))) (list!10585 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (value!137424 (h!32550 (t!203547 tokens!456)))))))))

(declare-fun b!2282355 () Bool)

(assert (=> b!2282355 (= e!1462116 (= (size!21346 (h!32550 (t!203547 tokens!456))) (size!21348 (originalCharacters!5107 (h!32550 (t!203547 tokens!456))))))))

(assert (= (and d!675500 res!975620) b!2282354))

(assert (= (and b!2282354 res!975621) b!2282355))

(declare-fun b_lambda!72655 () Bool)

(assert (=> (not b_lambda!72655) (not b!2282354)))

(declare-fun t!203701 () Bool)

(declare-fun tb!135711 () Bool)

(assert (=> (and b!2281475 (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) t!203701) tb!135711))

(declare-fun b!2282356 () Bool)

(declare-fun e!1462117 () Bool)

(declare-fun tp!723240 () Bool)

(assert (=> b!2282356 (= e!1462117 (and (inv!36736 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (value!137424 (h!32550 (t!203547 tokens!456)))))) tp!723240))))

(declare-fun result!165478 () Bool)

(assert (=> tb!135711 (= result!165478 (and (inv!36737 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (value!137424 (h!32550 (t!203547 tokens!456))))) e!1462117))))

(assert (= tb!135711 b!2282356))

(declare-fun m!2710339 () Bool)

(assert (=> b!2282356 m!2710339))

(declare-fun m!2710341 () Bool)

(assert (=> tb!135711 m!2710341))

(assert (=> b!2282354 t!203701))

(declare-fun b_and!180417 () Bool)

(assert (= b_and!180373 (and (=> t!203701 result!165478) b_and!180417)))

(declare-fun t!203703 () Bool)

(declare-fun tb!135713 () Bool)

(assert (=> (and b!2281498 (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) t!203703) tb!135713))

(declare-fun result!165480 () Bool)

(assert (= result!165480 result!165478))

(assert (=> b!2282354 t!203703))

(declare-fun b_and!180419 () Bool)

(assert (= b_and!180379 (and (=> t!203703 result!165480) b_and!180419)))

(declare-fun t!203705 () Bool)

(declare-fun tb!135715 () Bool)

(assert (=> (and b!2281500 (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) t!203705) tb!135715))

(declare-fun result!165482 () Bool)

(assert (= result!165482 result!165478))

(assert (=> b!2282354 t!203705))

(declare-fun b_and!180421 () Bool)

(assert (= b_and!180377 (and (=> t!203705 result!165482) b_and!180421)))

(declare-fun t!203707 () Bool)

(declare-fun tb!135717 () Bool)

(assert (=> (and b!2281469 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) t!203707) tb!135717))

(declare-fun result!165484 () Bool)

(assert (= result!165484 result!165478))

(assert (=> b!2282354 t!203707))

(declare-fun b_and!180423 () Bool)

(assert (= b_and!180371 (and (=> t!203707 result!165484) b_and!180423)))

(declare-fun t!203709 () Bool)

(declare-fun tb!135719 () Bool)

(assert (=> (and b!2282032 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) t!203709) tb!135719))

(declare-fun result!165486 () Bool)

(assert (= result!165486 result!165478))

(assert (=> b!2282354 t!203709))

(declare-fun b_and!180425 () Bool)

(assert (= b_and!180375 (and (=> t!203709 result!165486) b_and!180425)))

(declare-fun t!203711 () Bool)

(declare-fun tb!135721 () Bool)

(assert (=> (and b!2282016 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) t!203711) tb!135721))

(declare-fun result!165488 () Bool)

(assert (= result!165488 result!165478))

(assert (=> b!2282354 t!203711))

(declare-fun b_and!180427 () Bool)

(assert (= b_and!180369 (and (=> t!203711 result!165488) b_and!180427)))

(declare-fun m!2710345 () Bool)

(assert (=> d!675500 m!2710345))

(declare-fun m!2710347 () Bool)

(assert (=> b!2282354 m!2710347))

(assert (=> b!2282354 m!2710347))

(declare-fun m!2710349 () Bool)

(assert (=> b!2282354 m!2710349))

(declare-fun m!2710351 () Bool)

(assert (=> b!2282355 m!2710351))

(assert (=> b!2282013 d!675500))

(declare-fun d!675510 () Bool)

(declare-fun lt!847005 () Int)

(assert (=> d!675510 (>= lt!847005 0)))

(declare-fun e!1462118 () Int)

(assert (=> d!675510 (= lt!847005 e!1462118)))

(declare-fun c!362176 () Bool)

(assert (=> d!675510 (= c!362176 ((_ is Nil!27147) (_2!15957 (get!8185 lt!846918))))))

(assert (=> d!675510 (= (size!21348 (_2!15957 (get!8185 lt!846918))) lt!847005)))

(declare-fun b!2282357 () Bool)

(assert (=> b!2282357 (= e!1462118 0)))

(declare-fun b!2282358 () Bool)

(assert (=> b!2282358 (= e!1462118 (+ 1 (size!21348 (t!203545 (_2!15957 (get!8185 lt!846918))))))))

(assert (= (and d!675510 c!362176) b!2282357))

(assert (= (and d!675510 (not c!362176)) b!2282358))

(declare-fun m!2710353 () Bool)

(assert (=> b!2282358 m!2710353))

(assert (=> b!2281908 d!675510))

(assert (=> b!2281908 d!675360))

(assert (=> b!2281908 d!675268))

(assert (=> b!2281708 d!675268))

(assert (=> b!2281708 d!675160))

(declare-fun b!2282360 () Bool)

(declare-fun e!1462120 () List!27241)

(assert (=> b!2282360 (= e!1462120 (_2!15957 lt!846784))))

(declare-fun b!2282362 () Bool)

(declare-fun res!975623 () Bool)

(declare-fun e!1462121 () Bool)

(assert (=> b!2282362 (=> (not res!975623) (not e!1462121))))

(declare-fun lt!847006 () List!27241)

(assert (=> b!2282362 (= res!975623 (= (size!21348 lt!847006) (+ (size!21348 (t!203545 lt!846785)) (size!21348 (_2!15957 lt!846784)))))))

(declare-fun b!2282363 () Bool)

(assert (=> b!2282363 (= e!1462121 (or (not (= (_2!15957 lt!846784) Nil!27147)) (= lt!847006 (t!203545 lt!846785))))))

(declare-fun b!2282361 () Bool)

(assert (=> b!2282361 (= e!1462120 (Cons!27147 (h!32548 (t!203545 lt!846785)) (++!6629 (t!203545 (t!203545 lt!846785)) (_2!15957 lt!846784))))))

(declare-fun d!675512 () Bool)

(assert (=> d!675512 e!1462121))

(declare-fun res!975622 () Bool)

(assert (=> d!675512 (=> (not res!975622) (not e!1462121))))

(assert (=> d!675512 (= res!975622 (= (content!3629 lt!847006) ((_ map or) (content!3629 (t!203545 lt!846785)) (content!3629 (_2!15957 lt!846784)))))))

(assert (=> d!675512 (= lt!847006 e!1462120)))

(declare-fun c!362177 () Bool)

(assert (=> d!675512 (= c!362177 ((_ is Nil!27147) (t!203545 lt!846785)))))

(assert (=> d!675512 (= (++!6629 (t!203545 lt!846785) (_2!15957 lt!846784)) lt!847006)))

(assert (= (and d!675512 c!362177) b!2282360))

(assert (= (and d!675512 (not c!362177)) b!2282361))

(assert (= (and d!675512 res!975622) b!2282362))

(assert (= (and b!2282362 res!975623) b!2282363))

(declare-fun m!2710359 () Bool)

(assert (=> b!2282362 m!2710359))

(assert (=> b!2282362 m!2709669))

(assert (=> b!2282362 m!2709625))

(declare-fun m!2710361 () Bool)

(assert (=> b!2282361 m!2710361))

(declare-fun m!2710363 () Bool)

(assert (=> d!675512 m!2710363))

(assert (=> d!675512 m!2709967))

(assert (=> d!675512 m!2709633))

(assert (=> b!2281664 d!675512))

(declare-fun bs!456659 () Bool)

(declare-fun d!675514 () Bool)

(assert (= bs!456659 (and d!675514 d!675104)))

(declare-fun lambda!85678 () Int)

(assert (=> bs!456659 (= (and (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 r!2363))) (= (toValue!6119 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 r!2363)))) (= lambda!85678 lambda!85655))))

(declare-fun bs!456660 () Bool)

(assert (= bs!456660 (and d!675514 d!675308)))

(assert (=> bs!456660 (= (and (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) (= (toValue!6119 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (= lambda!85678 lambda!85665))))

(declare-fun bs!456661 () Bool)

(assert (= bs!456661 (and d!675514 d!675464)))

(assert (=> bs!456661 (= (and (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 otherR!12))) (= (toValue!6119 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 otherR!12)))) (= lambda!85678 lambda!85674))))

(assert (=> d!675514 true))

(assert (=> d!675514 (< (dynLambda!11780 order!15139 (toChars!5978 (transformation!4337 (h!32551 rules!1750)))) (dynLambda!11779 order!15137 lambda!85678))))

(assert (=> d!675514 true))

(assert (=> d!675514 (< (dynLambda!11778 order!15135 (toValue!6119 (transformation!4337 (h!32551 rules!1750)))) (dynLambda!11779 order!15137 lambda!85678))))

(assert (=> d!675514 (= (semiInverseModEq!1752 (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toValue!6119 (transformation!4337 (h!32551 rules!1750)))) (Forall!1087 lambda!85678))))

(declare-fun bs!456662 () Bool)

(assert (= bs!456662 d!675514))

(declare-fun m!2710373 () Bool)

(assert (=> bs!456662 m!2710373))

(assert (=> d!675170 d!675514))

(declare-fun d!675522 () Bool)

(declare-fun charsToBigInt!1 (List!27242) Int)

(assert (=> d!675522 (= (inv!17 (value!137424 (h!32550 tokens!456))) (= (charsToBigInt!1 (text!31941 (value!137424 (h!32550 tokens!456)))) (value!137416 (value!137424 (h!32550 tokens!456)))))))

(declare-fun bs!456664 () Bool)

(assert (= bs!456664 d!675522))

(declare-fun m!2710375 () Bool)

(assert (=> bs!456664 m!2710375))

(assert (=> b!2281797 d!675522))

(declare-fun b!2282369 () Bool)

(declare-fun e!1462125 () Int)

(assert (=> b!2282369 (= e!1462125 0)))

(declare-fun b!2282372 () Bool)

(declare-fun e!1462126 () Int)

(assert (=> b!2282372 (= e!1462126 (- 1))))

(declare-fun b!2282370 () Bool)

(assert (=> b!2282370 (= e!1462125 e!1462126)))

(declare-fun c!362179 () Bool)

(assert (=> b!2282370 (= c!362179 (and ((_ is Cons!27150) (t!203548 rules!1750)) (not (= (h!32551 (t!203548 rules!1750)) r!2363))))))

(declare-fun b!2282371 () Bool)

(assert (=> b!2282371 (= e!1462126 (+ 1 (getIndex!350 (t!203548 (t!203548 rules!1750)) r!2363)))))

(declare-fun d!675526 () Bool)

(declare-fun lt!847008 () Int)

(assert (=> d!675526 (>= lt!847008 0)))

(assert (=> d!675526 (= lt!847008 e!1462125)))

(declare-fun c!362180 () Bool)

(assert (=> d!675526 (= c!362180 (and ((_ is Cons!27150) (t!203548 rules!1750)) (= (h!32551 (t!203548 rules!1750)) r!2363)))))

(assert (=> d!675526 (contains!4709 (t!203548 rules!1750) r!2363)))

(assert (=> d!675526 (= (getIndex!350 (t!203548 rules!1750) r!2363) lt!847008)))

(assert (= (and d!675526 c!362180) b!2282369))

(assert (= (and d!675526 (not c!362180)) b!2282370))

(assert (= (and b!2282370 c!362179) b!2282371))

(assert (= (and b!2282370 (not c!362179)) b!2282372))

(declare-fun m!2710389 () Bool)

(assert (=> b!2282371 m!2710389))

(assert (=> d!675526 m!2709673))

(assert (=> b!2281962 d!675526))

(assert (=> b!2281766 d!675270))

(declare-fun d!675530 () Bool)

(assert (=> d!675530 (= (inv!36729 (tag!4827 (rule!6663 (h!32550 (t!203547 tokens!456))))) (= (mod (str.len (value!137423 (tag!4827 (rule!6663 (h!32550 (t!203547 tokens!456)))))) 2) 0))))

(assert (=> b!2282015 d!675530))

(declare-fun d!675532 () Bool)

(declare-fun res!975627 () Bool)

(declare-fun e!1462128 () Bool)

(assert (=> d!675532 (=> (not res!975627) (not e!1462128))))

(assert (=> d!675532 (= res!975627 (semiInverseModEq!1752 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toValue!6119 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))))))

(assert (=> d!675532 (= (inv!36732 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) e!1462128)))

(declare-fun b!2282375 () Bool)

(assert (=> b!2282375 (= e!1462128 (equivClasses!1671 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toValue!6119 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))))))

(assert (= (and d!675532 res!975627) b!2282375))

(declare-fun m!2710393 () Bool)

(assert (=> d!675532 m!2710393))

(declare-fun m!2710395 () Bool)

(assert (=> b!2282375 m!2710395))

(assert (=> b!2282015 d!675532))

(declare-fun d!675536 () Bool)

(assert (=> d!675536 (= (list!10585 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))) (list!10588 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))))))

(declare-fun bs!456665 () Bool)

(assert (= bs!456665 d!675536))

(declare-fun m!2710397 () Bool)

(assert (=> bs!456665 m!2710397))

(assert (=> d!675104 d!675536))

(declare-fun d!675538 () Bool)

(assert (=> d!675538 (= (list!10585 lt!846791) (list!10588 (c!361992 lt!846791)))))

(declare-fun bs!456666 () Bool)

(assert (= bs!456666 d!675538))

(declare-fun m!2710399 () Bool)

(assert (=> bs!456666 m!2710399))

(assert (=> d!675104 d!675538))

(declare-fun d!675540 () Bool)

(declare-fun dynLambda!11785 (Int BalanceConc!17372) Bool)

(assert (=> d!675540 (dynLambda!11785 lambda!85655 lt!846791)))

(declare-fun lt!847012 () Unit!40066)

(declare-fun choose!13317 (Int BalanceConc!17372) Unit!40066)

(assert (=> d!675540 (= lt!847012 (choose!13317 lambda!85655 lt!846791))))

(assert (=> d!675540 (Forall!1087 lambda!85655)))

(assert (=> d!675540 (= (ForallOf!487 lambda!85655 lt!846791) lt!847012)))

(declare-fun b_lambda!72659 () Bool)

(assert (=> (not b_lambda!72659) (not d!675540)))

(declare-fun bs!456667 () Bool)

(assert (= bs!456667 d!675540))

(declare-fun m!2710401 () Bool)

(assert (=> bs!456667 m!2710401))

(declare-fun m!2710403 () Bool)

(assert (=> bs!456667 m!2710403))

(declare-fun m!2710405 () Bool)

(assert (=> bs!456667 m!2710405))

(assert (=> d!675104 d!675540))

(declare-fun b!2282394 () Bool)

(declare-fun e!1462143 () List!27241)

(assert (=> b!2282394 (= e!1462143 (_2!15957 (get!8185 lt!846918)))))

(declare-fun b!2282396 () Bool)

(declare-fun res!975639 () Bool)

(declare-fun e!1462144 () Bool)

(assert (=> b!2282396 (=> (not res!975639) (not e!1462144))))

(declare-fun lt!847013 () List!27241)

(assert (=> b!2282396 (= res!975639 (= (size!21348 lt!847013) (+ (size!21348 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))) (size!21348 (_2!15957 (get!8185 lt!846918))))))))

(declare-fun b!2282397 () Bool)

(assert (=> b!2282397 (= e!1462144 (or (not (= (_2!15957 (get!8185 lt!846918)) Nil!27147)) (= lt!847013 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918)))))))))

(declare-fun b!2282395 () Bool)

(assert (=> b!2282395 (= e!1462143 (Cons!27147 (h!32548 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))) (++!6629 (t!203545 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))) (_2!15957 (get!8185 lt!846918)))))))

(declare-fun d!675542 () Bool)

(assert (=> d!675542 e!1462144))

(declare-fun res!975638 () Bool)

(assert (=> d!675542 (=> (not res!975638) (not e!1462144))))

(assert (=> d!675542 (= res!975638 (= (content!3629 lt!847013) ((_ map or) (content!3629 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))) (content!3629 (_2!15957 (get!8185 lt!846918))))))))

(assert (=> d!675542 (= lt!847013 e!1462143)))

(declare-fun c!362186 () Bool)

(assert (=> d!675542 (= c!362186 ((_ is Nil!27147) (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918))))))))

(assert (=> d!675542 (= (++!6629 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!846918)))) (_2!15957 (get!8185 lt!846918))) lt!847013)))

(assert (= (and d!675542 c!362186) b!2282394))

(assert (= (and d!675542 (not c!362186)) b!2282395))

(assert (= (and d!675542 res!975638) b!2282396))

(assert (= (and b!2282396 res!975639) b!2282397))

(declare-fun m!2710407 () Bool)

(assert (=> b!2282396 m!2710407))

(assert (=> b!2282396 m!2709837))

(declare-fun m!2710409 () Bool)

(assert (=> b!2282396 m!2710409))

(assert (=> b!2282396 m!2709855))

(declare-fun m!2710411 () Bool)

(assert (=> b!2282395 m!2710411))

(declare-fun m!2710413 () Bool)

(assert (=> d!675542 m!2710413))

(assert (=> d!675542 m!2709837))

(declare-fun m!2710415 () Bool)

(assert (=> d!675542 m!2710415))

(declare-fun m!2710417 () Bool)

(assert (=> d!675542 m!2710417))

(assert (=> b!2281904 d!675542))

(assert (=> b!2281904 d!675356))

(assert (=> b!2281904 d!675358))

(assert (=> b!2281904 d!675360))

(declare-fun bs!456668 () Bool)

(declare-fun d!675544 () Bool)

(assert (= bs!456668 (and d!675544 d!675104)))

(declare-fun lambda!85679 () Int)

(assert (=> bs!456668 (= lambda!85679 lambda!85655)))

(declare-fun bs!456669 () Bool)

(assert (= bs!456669 (and d!675544 d!675308)))

(assert (=> bs!456669 (= (and (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) (= (toValue!6119 (transformation!4337 r!2363)) (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456)))))) (= lambda!85679 lambda!85665))))

(declare-fun bs!456670 () Bool)

(assert (= bs!456670 (and d!675544 d!675464)))

(assert (=> bs!456670 (= (and (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 otherR!12))) (= (toValue!6119 (transformation!4337 r!2363)) (toValue!6119 (transformation!4337 otherR!12)))) (= lambda!85679 lambda!85674))))

(declare-fun bs!456671 () Bool)

(assert (= bs!456671 (and d!675544 d!675514)))

(assert (=> bs!456671 (= (and (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 (h!32551 rules!1750)))) (= (toValue!6119 (transformation!4337 r!2363)) (toValue!6119 (transformation!4337 (h!32551 rules!1750))))) (= lambda!85679 lambda!85678))))

(assert (=> d!675544 true))

(assert (=> d!675544 (< (dynLambda!11780 order!15139 (toChars!5978 (transformation!4337 r!2363))) (dynLambda!11779 order!15137 lambda!85679))))

(assert (=> d!675544 true))

(assert (=> d!675544 (< (dynLambda!11778 order!15135 (toValue!6119 (transformation!4337 r!2363))) (dynLambda!11779 order!15137 lambda!85679))))

(assert (=> d!675544 (= (semiInverseModEq!1752 (toChars!5978 (transformation!4337 r!2363)) (toValue!6119 (transformation!4337 r!2363))) (Forall!1087 lambda!85679))))

(declare-fun bs!456672 () Bool)

(assert (= bs!456672 d!675544))

(declare-fun m!2710419 () Bool)

(assert (=> bs!456672 m!2710419))

(assert (=> d!675260 d!675544))

(declare-fun bs!456673 () Bool)

(declare-fun d!675546 () Bool)

(assert (= bs!456673 (and d!675546 d!675484)))

(declare-fun lambda!85682 () Int)

(assert (=> bs!456673 (= lambda!85682 lambda!85677)))

(assert (=> d!675546 true))

(declare-fun lt!847016 () Bool)

(assert (=> d!675546 (= lt!847016 (rulesValidInductive!1521 thiss!16613 rules!1750))))

(assert (=> d!675546 (= lt!847016 (forall!5490 rules!1750 lambda!85682))))

(assert (=> d!675546 (= (rulesValid!1596 thiss!16613 rules!1750) lt!847016)))

(declare-fun bs!456674 () Bool)

(assert (= bs!456674 d!675546))

(assert (=> bs!456674 m!2709847))

(declare-fun m!2710427 () Bool)

(assert (=> bs!456674 m!2710427))

(assert (=> d!675256 d!675546))

(declare-fun d!675550 () Bool)

(declare-fun e!1462157 () Bool)

(assert (=> d!675550 e!1462157))

(declare-fun res!975651 () Bool)

(assert (=> d!675550 (=> (not res!975651) (not e!1462157))))

(declare-fun lt!847023 () BalanceConc!17372)

(assert (=> d!675550 (= res!975651 (= (list!10585 lt!847023) lt!846785))))

(declare-fun fromList!533 (List!27241) Conc!8822)

(assert (=> d!675550 (= lt!847023 (BalanceConc!17373 (fromList!533 lt!846785)))))

(assert (=> d!675550 (= (fromListB!1362 lt!846785) lt!847023)))

(declare-fun b!2282413 () Bool)

(assert (=> b!2282413 (= e!1462157 (isBalanced!2677 (fromList!533 lt!846785)))))

(assert (= (and d!675550 res!975651) b!2282413))

(declare-fun m!2710433 () Bool)

(assert (=> d!675550 m!2710433))

(declare-fun m!2710435 () Bool)

(assert (=> d!675550 m!2710435))

(assert (=> b!2282413 m!2710435))

(assert (=> b!2282413 m!2710435))

(declare-fun m!2710437 () Bool)

(assert (=> b!2282413 m!2710437))

(assert (=> d!675124 d!675550))

(declare-fun d!675558 () Bool)

(assert (=> d!675558 (= (list!10585 lt!846849) (list!10588 (c!361992 lt!846849)))))

(declare-fun bs!456676 () Bool)

(assert (= bs!456676 d!675558))

(declare-fun m!2710439 () Bool)

(assert (=> bs!456676 m!2710439))

(assert (=> d!675150 d!675558))

(declare-fun d!675560 () Bool)

(assert (=> d!675560 (= (inv!36729 (tag!4827 (h!32551 (t!203548 rules!1750)))) (= (mod (str.len (value!137423 (tag!4827 (h!32551 (t!203548 rules!1750))))) 2) 0))))

(assert (=> b!2282031 d!675560))

(declare-fun d!675562 () Bool)

(declare-fun res!975652 () Bool)

(declare-fun e!1462158 () Bool)

(assert (=> d!675562 (=> (not res!975652) (not e!1462158))))

(assert (=> d!675562 (= res!975652 (semiInverseModEq!1752 (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toValue!6119 (transformation!4337 (h!32551 (t!203548 rules!1750))))))))

(assert (=> d!675562 (= (inv!36732 (transformation!4337 (h!32551 (t!203548 rules!1750)))) e!1462158)))

(declare-fun b!2282414 () Bool)

(assert (=> b!2282414 (= e!1462158 (equivClasses!1671 (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toValue!6119 (transformation!4337 (h!32551 (t!203548 rules!1750))))))))

(assert (= (and d!675562 res!975652) b!2282414))

(declare-fun m!2710441 () Bool)

(assert (=> d!675562 m!2710441))

(declare-fun m!2710443 () Bool)

(assert (=> b!2282414 m!2710443))

(assert (=> b!2282031 d!675562))

(declare-fun d!675564 () Bool)

(declare-fun lt!847024 () Bool)

(assert (=> d!675564 (= lt!847024 (select (content!3628 rules!1750) (rule!6663 (_1!15957 (get!8185 lt!846918)))))))

(declare-fun e!1462159 () Bool)

(assert (=> d!675564 (= lt!847024 e!1462159)))

(declare-fun res!975653 () Bool)

(assert (=> d!675564 (=> (not res!975653) (not e!1462159))))

(assert (=> d!675564 (= res!975653 ((_ is Cons!27150) rules!1750))))

(assert (=> d!675564 (= (contains!4709 rules!1750 (rule!6663 (_1!15957 (get!8185 lt!846918)))) lt!847024)))

(declare-fun b!2282415 () Bool)

(declare-fun e!1462160 () Bool)

(assert (=> b!2282415 (= e!1462159 e!1462160)))

(declare-fun res!975654 () Bool)

(assert (=> b!2282415 (=> res!975654 e!1462160)))

(assert (=> b!2282415 (= res!975654 (= (h!32551 rules!1750) (rule!6663 (_1!15957 (get!8185 lt!846918)))))))

(declare-fun b!2282416 () Bool)

(assert (=> b!2282416 (= e!1462160 (contains!4709 (t!203548 rules!1750) (rule!6663 (_1!15957 (get!8185 lt!846918)))))))

(assert (= (and d!675564 res!975653) b!2282415))

(assert (= (and b!2282415 (not res!975654)) b!2282416))

(assert (=> d!675564 m!2709481))

(declare-fun m!2710445 () Bool)

(assert (=> d!675564 m!2710445))

(declare-fun m!2710447 () Bool)

(assert (=> b!2282416 m!2710447))

(assert (=> b!2281902 d!675564))

(assert (=> b!2281902 d!675360))

(declare-fun d!675566 () Bool)

(declare-fun c!362190 () Bool)

(assert (=> d!675566 (= c!362190 ((_ is Node!8822) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456))))))))

(declare-fun e!1462165 () Bool)

(assert (=> d!675566 (= (inv!36736 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456))))) e!1462165)))

(declare-fun b!2282421 () Bool)

(assert (=> b!2282421 (= e!1462165 (inv!36740 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456))))))))

(declare-fun b!2282422 () Bool)

(declare-fun e!1462166 () Bool)

(assert (=> b!2282422 (= e!1462165 e!1462166)))

(declare-fun res!975659 () Bool)

(assert (=> b!2282422 (= res!975659 (not ((_ is Leaf!12976) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456)))))))))

(assert (=> b!2282422 (=> res!975659 e!1462166)))

(declare-fun b!2282423 () Bool)

(assert (=> b!2282423 (= e!1462166 (inv!36741 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456))))))))

(assert (= (and d!675566 c!362190) b!2282421))

(assert (= (and d!675566 (not c!362190)) b!2282422))

(assert (= (and b!2282422 (not res!975659)) b!2282423))

(declare-fun m!2710449 () Bool)

(assert (=> b!2282421 m!2710449))

(declare-fun m!2710451 () Bool)

(assert (=> b!2282423 m!2710451))

(assert (=> b!2281677 d!675566))

(declare-fun d!675568 () Bool)

(declare-fun e!1462236 () Bool)

(assert (=> d!675568 e!1462236))

(declare-fun res!975718 () Bool)

(assert (=> d!675568 (=> res!975718 e!1462236)))

(declare-fun lt!847063 () Option!5323)

(assert (=> d!675568 (= res!975718 (isEmpty!15423 lt!847063))))

(declare-fun e!1462238 () Option!5323)

(assert (=> d!675568 (= lt!847063 e!1462238)))

(declare-fun c!362224 () Bool)

(declare-datatypes ((tuple2!26900 0))(
  ( (tuple2!26901 (_1!15960 List!27241) (_2!15960 List!27241)) )
))
(declare-fun lt!847061 () tuple2!26900)

(assert (=> d!675568 (= c!362224 (isEmpty!15418 (_1!15960 lt!847061)))))

(declare-fun findLongestMatch!641 (Regex!6685 List!27241) tuple2!26900)

(assert (=> d!675568 (= lt!847061 (findLongestMatch!641 (regex!4337 (h!32551 rules!1750)) input!1722))))

(assert (=> d!675568 (ruleValid!1427 thiss!16613 (h!32551 rules!1750))))

(assert (=> d!675568 (= (maxPrefixOneRule!1374 thiss!16613 (h!32551 rules!1750) input!1722) lt!847063)))

(declare-fun b!2282545 () Bool)

(assert (=> b!2282545 (= e!1462238 (Some!5322 (tuple2!26895 (Token!8153 (apply!6611 (transformation!4337 (h!32551 rules!1750)) (seqFromList!3041 (_1!15960 lt!847061))) (h!32551 rules!1750) (size!21347 (seqFromList!3041 (_1!15960 lt!847061))) (_1!15960 lt!847061)) (_2!15960 lt!847061))))))

(declare-fun lt!847062 () Unit!40066)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!685 (Regex!6685 List!27241) Unit!40066)

(assert (=> b!2282545 (= lt!847062 (longestMatchIsAcceptedByMatchOrIsEmpty!685 (regex!4337 (h!32551 rules!1750)) input!1722))))

(declare-fun res!975723 () Bool)

(declare-fun findLongestMatchInner!712 (Regex!6685 List!27241 Int List!27241 List!27241 Int) tuple2!26900)

(assert (=> b!2282545 (= res!975723 (isEmpty!15418 (_1!15960 (findLongestMatchInner!712 (regex!4337 (h!32551 rules!1750)) Nil!27147 (size!21348 Nil!27147) input!1722 input!1722 (size!21348 input!1722)))))))

(declare-fun e!1462237 () Bool)

(assert (=> b!2282545 (=> res!975723 e!1462237)))

(assert (=> b!2282545 e!1462237))

(declare-fun lt!847064 () Unit!40066)

(assert (=> b!2282545 (= lt!847064 lt!847062)))

(declare-fun lt!847060 () Unit!40066)

(assert (=> b!2282545 (= lt!847060 (lemmaSemiInverse!1046 (transformation!4337 (h!32551 rules!1750)) (seqFromList!3041 (_1!15960 lt!847061))))))

(declare-fun b!2282546 () Bool)

(declare-fun e!1462239 () Bool)

(assert (=> b!2282546 (= e!1462236 e!1462239)))

(declare-fun res!975719 () Bool)

(assert (=> b!2282546 (=> (not res!975719) (not e!1462239))))

(assert (=> b!2282546 (= res!975719 (matchR!2942 (regex!4337 (h!32551 rules!1750)) (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!847063))))))))

(declare-fun b!2282547 () Bool)

(declare-fun res!975722 () Bool)

(assert (=> b!2282547 (=> (not res!975722) (not e!1462239))))

(assert (=> b!2282547 (= res!975722 (= (++!6629 (list!10585 (charsOf!2725 (_1!15957 (get!8185 lt!847063)))) (_2!15957 (get!8185 lt!847063))) input!1722))))

(declare-fun b!2282548 () Bool)

(declare-fun res!975717 () Bool)

(assert (=> b!2282548 (=> (not res!975717) (not e!1462239))))

(assert (=> b!2282548 (= res!975717 (< (size!21348 (_2!15957 (get!8185 lt!847063))) (size!21348 input!1722)))))

(declare-fun b!2282549 () Bool)

(assert (=> b!2282549 (= e!1462237 (matchR!2942 (regex!4337 (h!32551 rules!1750)) (_1!15960 (findLongestMatchInner!712 (regex!4337 (h!32551 rules!1750)) Nil!27147 (size!21348 Nil!27147) input!1722 input!1722 (size!21348 input!1722)))))))

(declare-fun b!2282550 () Bool)

(assert (=> b!2282550 (= e!1462239 (= (size!21346 (_1!15957 (get!8185 lt!847063))) (size!21348 (originalCharacters!5107 (_1!15957 (get!8185 lt!847063))))))))

(declare-fun b!2282551 () Bool)

(declare-fun res!975720 () Bool)

(assert (=> b!2282551 (=> (not res!975720) (not e!1462239))))

(assert (=> b!2282551 (= res!975720 (= (value!137424 (_1!15957 (get!8185 lt!847063))) (apply!6611 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!847063)))) (seqFromList!3041 (originalCharacters!5107 (_1!15957 (get!8185 lt!847063)))))))))

(declare-fun b!2282552 () Bool)

(declare-fun res!975721 () Bool)

(assert (=> b!2282552 (=> (not res!975721) (not e!1462239))))

(assert (=> b!2282552 (= res!975721 (= (rule!6663 (_1!15957 (get!8185 lt!847063))) (h!32551 rules!1750)))))

(declare-fun b!2282553 () Bool)

(assert (=> b!2282553 (= e!1462238 None!5322)))

(assert (= (and d!675568 c!362224) b!2282553))

(assert (= (and d!675568 (not c!362224)) b!2282545))

(assert (= (and b!2282545 (not res!975723)) b!2282549))

(assert (= (and d!675568 (not res!975718)) b!2282546))

(assert (= (and b!2282546 res!975719) b!2282547))

(assert (= (and b!2282547 res!975722) b!2282548))

(assert (= (and b!2282548 res!975717) b!2282552))

(assert (= (and b!2282552 res!975721) b!2282551))

(assert (= (and b!2282551 res!975720) b!2282550))

(declare-fun m!2710629 () Bool)

(assert (=> b!2282545 m!2710629))

(assert (=> b!2282545 m!2709663))

(declare-fun m!2710631 () Bool)

(assert (=> b!2282545 m!2710631))

(declare-fun m!2710633 () Bool)

(assert (=> b!2282545 m!2710633))

(assert (=> b!2282545 m!2710629))

(assert (=> b!2282545 m!2709663))

(declare-fun m!2710635 () Bool)

(assert (=> b!2282545 m!2710635))

(assert (=> b!2282545 m!2710631))

(declare-fun m!2710637 () Bool)

(assert (=> b!2282545 m!2710637))

(declare-fun m!2710639 () Bool)

(assert (=> b!2282545 m!2710639))

(assert (=> b!2282545 m!2710631))

(declare-fun m!2710641 () Bool)

(assert (=> b!2282545 m!2710641))

(assert (=> b!2282545 m!2710631))

(declare-fun m!2710643 () Bool)

(assert (=> b!2282545 m!2710643))

(assert (=> b!2282549 m!2710629))

(assert (=> b!2282549 m!2709663))

(assert (=> b!2282549 m!2710629))

(assert (=> b!2282549 m!2709663))

(assert (=> b!2282549 m!2710635))

(declare-fun m!2710645 () Bool)

(assert (=> b!2282549 m!2710645))

(declare-fun m!2710647 () Bool)

(assert (=> d!675568 m!2710647))

(declare-fun m!2710649 () Bool)

(assert (=> d!675568 m!2710649))

(declare-fun m!2710651 () Bool)

(assert (=> d!675568 m!2710651))

(assert (=> d!675568 m!2710321))

(declare-fun m!2710653 () Bool)

(assert (=> b!2282552 m!2710653))

(assert (=> b!2282548 m!2710653))

(declare-fun m!2710655 () Bool)

(assert (=> b!2282548 m!2710655))

(assert (=> b!2282548 m!2709663))

(assert (=> b!2282547 m!2710653))

(declare-fun m!2710657 () Bool)

(assert (=> b!2282547 m!2710657))

(assert (=> b!2282547 m!2710657))

(declare-fun m!2710659 () Bool)

(assert (=> b!2282547 m!2710659))

(assert (=> b!2282547 m!2710659))

(declare-fun m!2710661 () Bool)

(assert (=> b!2282547 m!2710661))

(assert (=> b!2282550 m!2710653))

(declare-fun m!2710663 () Bool)

(assert (=> b!2282550 m!2710663))

(assert (=> b!2282546 m!2710653))

(assert (=> b!2282546 m!2710657))

(assert (=> b!2282546 m!2710657))

(assert (=> b!2282546 m!2710659))

(assert (=> b!2282546 m!2710659))

(declare-fun m!2710665 () Bool)

(assert (=> b!2282546 m!2710665))

(assert (=> b!2282551 m!2710653))

(declare-fun m!2710667 () Bool)

(assert (=> b!2282551 m!2710667))

(assert (=> b!2282551 m!2710667))

(declare-fun m!2710669 () Bool)

(assert (=> b!2282551 m!2710669))

(assert (=> bm!136431 d!675568))

(declare-fun d!675652 () Bool)

(declare-fun lt!847065 () List!27241)

(assert (=> d!675652 (= (++!6629 (t!203545 lt!846785) lt!847065) (tail!3293 input!1722))))

(declare-fun e!1462240 () List!27241)

(assert (=> d!675652 (= lt!847065 e!1462240)))

(declare-fun c!362225 () Bool)

(assert (=> d!675652 (= c!362225 ((_ is Cons!27147) (t!203545 lt!846785)))))

(assert (=> d!675652 (>= (size!21348 (tail!3293 input!1722)) (size!21348 (t!203545 lt!846785)))))

(assert (=> d!675652 (= (getSuffix!1118 (tail!3293 input!1722) (t!203545 lt!846785)) lt!847065)))

(declare-fun b!2282554 () Bool)

(assert (=> b!2282554 (= e!1462240 (getSuffix!1118 (tail!3293 (tail!3293 input!1722)) (t!203545 (t!203545 lt!846785))))))

(declare-fun b!2282555 () Bool)

(assert (=> b!2282555 (= e!1462240 (tail!3293 input!1722))))

(assert (= (and d!675652 c!362225) b!2282554))

(assert (= (and d!675652 (not c!362225)) b!2282555))

(declare-fun m!2710671 () Bool)

(assert (=> d!675652 m!2710671))

(assert (=> d!675652 m!2709665))

(assert (=> d!675652 m!2710069))

(assert (=> d!675652 m!2709669))

(assert (=> b!2282554 m!2709665))

(assert (=> b!2282554 m!2710065))

(assert (=> b!2282554 m!2710065))

(declare-fun m!2710673 () Bool)

(assert (=> b!2282554 m!2710673))

(assert (=> b!2281699 d!675652))

(assert (=> b!2281699 d!675336))

(declare-fun bm!136473 () Bool)

(declare-fun call!136478 () Bool)

(assert (=> bm!136473 (= call!136478 (isEmpty!15418 (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))

(declare-fun b!2282556 () Bool)

(declare-fun res!975725 () Bool)

(declare-fun e!1462241 () Bool)

(assert (=> b!2282556 (=> (not res!975725) (not e!1462241))))

(assert (=> b!2282556 (= res!975725 (not call!136478))))

(declare-fun b!2282557 () Bool)

(declare-fun e!1462244 () Bool)

(declare-fun lt!847066 () Bool)

(assert (=> b!2282557 (= e!1462244 (= lt!847066 call!136478))))

(declare-fun b!2282558 () Bool)

(declare-fun e!1462243 () Bool)

(assert (=> b!2282558 (= e!1462243 (matchR!2942 (derivativeStep!1510 (derivativeStep!1510 (regex!4337 r!2363) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456))))) (head!4950 (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))) (tail!3293 (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))))

(declare-fun b!2282559 () Bool)

(declare-fun res!975731 () Bool)

(assert (=> b!2282559 (=> (not res!975731) (not e!1462241))))

(assert (=> b!2282559 (= res!975731 (isEmpty!15418 (tail!3293 (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))))

(declare-fun d!675654 () Bool)

(assert (=> d!675654 e!1462244))

(declare-fun c!362227 () Bool)

(assert (=> d!675654 (= c!362227 ((_ is EmptyExpr!6685) (derivativeStep!1510 (regex!4337 r!2363) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))))

(assert (=> d!675654 (= lt!847066 e!1462243)))

(declare-fun c!362228 () Bool)

(assert (=> d!675654 (= c!362228 (isEmpty!15418 (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))

(assert (=> d!675654 (validRegex!2512 (derivativeStep!1510 (regex!4337 r!2363) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))

(assert (=> d!675654 (= (matchR!2942 (derivativeStep!1510 (regex!4337 r!2363) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456))))) (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456))))) lt!847066)))

(declare-fun b!2282560 () Bool)

(declare-fun res!975724 () Bool)

(declare-fun e!1462247 () Bool)

(assert (=> b!2282560 (=> res!975724 e!1462247)))

(assert (=> b!2282560 (= res!975724 (not ((_ is ElementMatch!6685) (derivativeStep!1510 (regex!4337 r!2363) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))))

(declare-fun e!1462245 () Bool)

(assert (=> b!2282560 (= e!1462245 e!1462247)))

(declare-fun b!2282561 () Bool)

(declare-fun e!1462242 () Bool)

(assert (=> b!2282561 (= e!1462247 e!1462242)))

(declare-fun res!975730 () Bool)

(assert (=> b!2282561 (=> (not res!975730) (not e!1462242))))

(assert (=> b!2282561 (= res!975730 (not lt!847066))))

(declare-fun b!2282562 () Bool)

(assert (=> b!2282562 (= e!1462241 (= (head!4950 (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456))))) (c!361993 (derivativeStep!1510 (regex!4337 r!2363) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))))

(declare-fun b!2282563 () Bool)

(assert (=> b!2282563 (= e!1462244 e!1462245)))

(declare-fun c!362226 () Bool)

(assert (=> b!2282563 (= c!362226 ((_ is EmptyLang!6685) (derivativeStep!1510 (regex!4337 r!2363) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))))

(declare-fun b!2282564 () Bool)

(declare-fun res!975726 () Bool)

(declare-fun e!1462246 () Bool)

(assert (=> b!2282564 (=> res!975726 e!1462246)))

(assert (=> b!2282564 (= res!975726 (not (isEmpty!15418 (tail!3293 (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))))

(declare-fun b!2282565 () Bool)

(assert (=> b!2282565 (= e!1462243 (nullable!1850 (derivativeStep!1510 (regex!4337 r!2363) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))))

(declare-fun b!2282566 () Bool)

(assert (=> b!2282566 (= e!1462245 (not lt!847066))))

(declare-fun b!2282567 () Bool)

(declare-fun res!975729 () Bool)

(assert (=> b!2282567 (=> res!975729 e!1462247)))

(assert (=> b!2282567 (= res!975729 e!1462241)))

(declare-fun res!975727 () Bool)

(assert (=> b!2282567 (=> (not res!975727) (not e!1462241))))

(assert (=> b!2282567 (= res!975727 lt!847066)))

(declare-fun b!2282568 () Bool)

(assert (=> b!2282568 (= e!1462242 e!1462246)))

(declare-fun res!975728 () Bool)

(assert (=> b!2282568 (=> res!975728 e!1462246)))

(assert (=> b!2282568 (= res!975728 call!136478)))

(declare-fun b!2282569 () Bool)

(assert (=> b!2282569 (= e!1462246 (not (= (head!4950 (tail!3293 (list!10585 (charsOf!2725 (head!4948 tokens!456))))) (c!361993 (derivativeStep!1510 (regex!4337 r!2363) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456)))))))))))

(assert (= (and d!675654 c!362228) b!2282565))

(assert (= (and d!675654 (not c!362228)) b!2282558))

(assert (= (and d!675654 c!362227) b!2282557))

(assert (= (and d!675654 (not c!362227)) b!2282563))

(assert (= (and b!2282563 c!362226) b!2282566))

(assert (= (and b!2282563 (not c!362226)) b!2282560))

(assert (= (and b!2282560 (not res!975724)) b!2282567))

(assert (= (and b!2282567 res!975727) b!2282556))

(assert (= (and b!2282556 res!975725) b!2282559))

(assert (= (and b!2282559 res!975731) b!2282562))

(assert (= (and b!2282567 (not res!975729)) b!2282561))

(assert (= (and b!2282561 res!975730) b!2282568))

(assert (= (and b!2282568 (not res!975728)) b!2282564))

(assert (= (and b!2282564 (not res!975726)) b!2282569))

(assert (= (or b!2282557 b!2282556 b!2282568) bm!136473))

(assert (=> b!2282559 m!2709697))

(declare-fun m!2710675 () Bool)

(assert (=> b!2282559 m!2710675))

(assert (=> b!2282559 m!2710675))

(declare-fun m!2710677 () Bool)

(assert (=> b!2282559 m!2710677))

(assert (=> b!2282565 m!2709705))

(declare-fun m!2710679 () Bool)

(assert (=> b!2282565 m!2710679))

(assert (=> d!675654 m!2709697))

(assert (=> d!675654 m!2709699))

(assert (=> d!675654 m!2709705))

(declare-fun m!2710681 () Bool)

(assert (=> d!675654 m!2710681))

(assert (=> bm!136473 m!2709697))

(assert (=> bm!136473 m!2709699))

(assert (=> b!2282558 m!2709697))

(declare-fun m!2710683 () Bool)

(assert (=> b!2282558 m!2710683))

(assert (=> b!2282558 m!2709705))

(assert (=> b!2282558 m!2710683))

(declare-fun m!2710685 () Bool)

(assert (=> b!2282558 m!2710685))

(assert (=> b!2282558 m!2709697))

(assert (=> b!2282558 m!2710675))

(assert (=> b!2282558 m!2710685))

(assert (=> b!2282558 m!2710675))

(declare-fun m!2710687 () Bool)

(assert (=> b!2282558 m!2710687))

(assert (=> b!2282569 m!2709697))

(assert (=> b!2282569 m!2710683))

(assert (=> b!2282562 m!2709697))

(assert (=> b!2282562 m!2710683))

(assert (=> b!2282564 m!2709697))

(assert (=> b!2282564 m!2710675))

(assert (=> b!2282564 m!2710675))

(assert (=> b!2282564 m!2710677))

(assert (=> b!2281759 d!675654))

(declare-fun b!2282590 () Bool)

(declare-fun c!362240 () Bool)

(assert (=> b!2282590 (= c!362240 ((_ is Union!6685) (regex!4337 r!2363)))))

(declare-fun e!1462259 () Regex!6685)

(declare-fun e!1462262 () Regex!6685)

(assert (=> b!2282590 (= e!1462259 e!1462262)))

(declare-fun bm!136482 () Bool)

(declare-fun call!136487 () Regex!6685)

(declare-fun call!136489 () Regex!6685)

(assert (=> bm!136482 (= call!136487 call!136489)))

(declare-fun b!2282591 () Bool)

(declare-fun e!1462260 () Regex!6685)

(declare-fun call!136490 () Regex!6685)

(declare-fun call!136488 () Regex!6685)

(assert (=> b!2282591 (= e!1462260 (Union!6685 (Concat!11185 call!136488 (regTwo!13882 (regex!4337 r!2363))) call!136490))))

(declare-fun c!362242 () Bool)

(declare-fun bm!136483 () Bool)

(assert (=> bm!136483 (= call!136489 (derivativeStep!1510 (ite c!362240 (regOne!13883 (regex!4337 r!2363)) (ite c!362242 (reg!7014 (regex!4337 r!2363)) (regOne!13882 (regex!4337 r!2363)))) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))

(declare-fun b!2282592 () Bool)

(declare-fun e!1462258 () Regex!6685)

(assert (=> b!2282592 (= e!1462258 (Concat!11185 call!136487 (regex!4337 r!2363)))))

(declare-fun b!2282593 () Bool)

(assert (=> b!2282593 (= e!1462262 (Union!6685 call!136489 call!136490))))

(declare-fun b!2282594 () Bool)

(assert (=> b!2282594 (= e!1462260 (Union!6685 (Concat!11185 call!136488 (regTwo!13882 (regex!4337 r!2363))) EmptyLang!6685))))

(declare-fun bm!136484 () Bool)

(assert (=> bm!136484 (= call!136488 call!136487)))

(declare-fun b!2282595 () Bool)

(declare-fun e!1462261 () Regex!6685)

(assert (=> b!2282595 (= e!1462261 e!1462259)))

(declare-fun c!362241 () Bool)

(assert (=> b!2282595 (= c!362241 ((_ is ElementMatch!6685) (regex!4337 r!2363)))))

(declare-fun bm!136485 () Bool)

(assert (=> bm!136485 (= call!136490 (derivativeStep!1510 (ite c!362240 (regTwo!13883 (regex!4337 r!2363)) (regTwo!13882 (regex!4337 r!2363))) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456))))))))

(declare-fun d!675656 () Bool)

(declare-fun lt!847069 () Regex!6685)

(assert (=> d!675656 (validRegex!2512 lt!847069)))

(assert (=> d!675656 (= lt!847069 e!1462261)))

(declare-fun c!362239 () Bool)

(assert (=> d!675656 (= c!362239 (or ((_ is EmptyExpr!6685) (regex!4337 r!2363)) ((_ is EmptyLang!6685) (regex!4337 r!2363))))))

(assert (=> d!675656 (validRegex!2512 (regex!4337 r!2363))))

(assert (=> d!675656 (= (derivativeStep!1510 (regex!4337 r!2363) (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456))))) lt!847069)))

(declare-fun b!2282596 () Bool)

(assert (=> b!2282596 (= e!1462261 EmptyLang!6685)))

(declare-fun b!2282597 () Bool)

(assert (=> b!2282597 (= e!1462262 e!1462258)))

(assert (=> b!2282597 (= c!362242 ((_ is Star!6685) (regex!4337 r!2363)))))

(declare-fun b!2282598 () Bool)

(declare-fun c!362243 () Bool)

(assert (=> b!2282598 (= c!362243 (nullable!1850 (regOne!13882 (regex!4337 r!2363))))))

(assert (=> b!2282598 (= e!1462258 e!1462260)))

(declare-fun b!2282599 () Bool)

(assert (=> b!2282599 (= e!1462259 (ite (= (head!4950 (list!10585 (charsOf!2725 (head!4948 tokens!456)))) (c!361993 (regex!4337 r!2363))) EmptyExpr!6685 EmptyLang!6685))))

(assert (= (and d!675656 c!362239) b!2282596))

(assert (= (and d!675656 (not c!362239)) b!2282595))

(assert (= (and b!2282595 c!362241) b!2282599))

(assert (= (and b!2282595 (not c!362241)) b!2282590))

(assert (= (and b!2282590 c!362240) b!2282593))

(assert (= (and b!2282590 (not c!362240)) b!2282597))

(assert (= (and b!2282597 c!362242) b!2282592))

(assert (= (and b!2282597 (not c!362242)) b!2282598))

(assert (= (and b!2282598 c!362243) b!2282591))

(assert (= (and b!2282598 (not c!362243)) b!2282594))

(assert (= (or b!2282591 b!2282594) bm!136484))

(assert (= (or b!2282592 bm!136484) bm!136482))

(assert (= (or b!2282593 bm!136482) bm!136483))

(assert (= (or b!2282593 b!2282591) bm!136485))

(assert (=> bm!136483 m!2709703))

(declare-fun m!2710689 () Bool)

(assert (=> bm!136483 m!2710689))

(assert (=> bm!136485 m!2709703))

(declare-fun m!2710691 () Bool)

(assert (=> bm!136485 m!2710691))

(declare-fun m!2710693 () Bool)

(assert (=> d!675656 m!2710693))

(assert (=> d!675656 m!2709513))

(declare-fun m!2710695 () Bool)

(assert (=> b!2282598 m!2710695))

(assert (=> b!2281759 d!675656))

(assert (=> b!2281759 d!675312))

(assert (=> b!2281759 d!675342))

(declare-fun d!675658 () Bool)

(declare-fun lt!847070 () Bool)

(assert (=> d!675658 (= lt!847070 (select (content!3628 (t!203548 rules!1750)) otherR!12))))

(declare-fun e!1462263 () Bool)

(assert (=> d!675658 (= lt!847070 e!1462263)))

(declare-fun res!975732 () Bool)

(assert (=> d!675658 (=> (not res!975732) (not e!1462263))))

(assert (=> d!675658 (= res!975732 ((_ is Cons!27150) (t!203548 rules!1750)))))

(assert (=> d!675658 (= (contains!4709 (t!203548 rules!1750) otherR!12) lt!847070)))

(declare-fun b!2282600 () Bool)

(declare-fun e!1462264 () Bool)

(assert (=> b!2282600 (= e!1462263 e!1462264)))

(declare-fun res!975733 () Bool)

(assert (=> b!2282600 (=> res!975733 e!1462264)))

(assert (=> b!2282600 (= res!975733 (= (h!32551 (t!203548 rules!1750)) otherR!12))))

(declare-fun b!2282601 () Bool)

(assert (=> b!2282601 (= e!1462264 (contains!4709 (t!203548 (t!203548 rules!1750)) otherR!12))))

(assert (= (and d!675658 res!975732) b!2282600))

(assert (= (and b!2282600 (not res!975733)) b!2282601))

(assert (=> d!675658 m!2710073))

(declare-fun m!2710697 () Bool)

(assert (=> d!675658 m!2710697))

(declare-fun m!2710699 () Bool)

(assert (=> b!2282601 m!2710699))

(assert (=> b!2281517 d!675658))

(declare-fun d!675660 () Bool)

(declare-fun c!362244 () Bool)

(assert (=> d!675660 (= c!362244 ((_ is Empty!8822) (c!361992 (charsOf!2725 (h!32550 tokens!456)))))))

(declare-fun e!1462265 () List!27241)

(assert (=> d!675660 (= (list!10588 (c!361992 (charsOf!2725 (h!32550 tokens!456)))) e!1462265)))

(declare-fun b!2282604 () Bool)

(declare-fun e!1462266 () List!27241)

(assert (=> b!2282604 (= e!1462266 (list!10591 (xs!11764 (c!361992 (charsOf!2725 (h!32550 tokens!456))))))))

(declare-fun b!2282602 () Bool)

(assert (=> b!2282602 (= e!1462265 Nil!27147)))

(declare-fun b!2282605 () Bool)

(assert (=> b!2282605 (= e!1462266 (++!6629 (list!10588 (left!20587 (c!361992 (charsOf!2725 (h!32550 tokens!456))))) (list!10588 (right!20917 (c!361992 (charsOf!2725 (h!32550 tokens!456)))))))))

(declare-fun b!2282603 () Bool)

(assert (=> b!2282603 (= e!1462265 e!1462266)))

(declare-fun c!362245 () Bool)

(assert (=> b!2282603 (= c!362245 ((_ is Leaf!12976) (c!361992 (charsOf!2725 (h!32550 tokens!456)))))))

(assert (= (and d!675660 c!362244) b!2282602))

(assert (= (and d!675660 (not c!362244)) b!2282603))

(assert (= (and b!2282603 c!362245) b!2282604))

(assert (= (and b!2282603 (not c!362245)) b!2282605))

(declare-fun m!2710701 () Bool)

(assert (=> b!2282604 m!2710701))

(declare-fun m!2710703 () Bool)

(assert (=> b!2282605 m!2710703))

(declare-fun m!2710705 () Bool)

(assert (=> b!2282605 m!2710705))

(assert (=> b!2282605 m!2710703))

(assert (=> b!2282605 m!2710705))

(declare-fun m!2710707 () Bool)

(assert (=> b!2282605 m!2710707))

(assert (=> d!675136 d!675660))

(assert (=> d!675254 d!675252))

(declare-fun d!675662 () Bool)

(assert (=> d!675662 (ruleValid!1427 thiss!16613 otherR!12)))

(assert (=> d!675662 true))

(declare-fun _$65!1127 () Unit!40066)

(assert (=> d!675662 (= (choose!13308 thiss!16613 otherR!12 rules!1750) _$65!1127)))

(declare-fun bs!456698 () Bool)

(assert (= bs!456698 d!675662))

(assert (=> bs!456698 m!2709381))

(assert (=> d!675254 d!675662))

(assert (=> d!675254 d!675074))

(declare-fun bs!456699 () Bool)

(declare-fun d!675664 () Bool)

(assert (= bs!456699 (and d!675664 d!675314)))

(declare-fun lambda!85689 () Int)

(assert (=> bs!456699 (= (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 otherR!12))) (= lambda!85689 lambda!85668))))

(declare-fun bs!456700 () Bool)

(assert (= bs!456700 (and d!675664 d!675346)))

(assert (=> bs!456700 (= (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 (h!32551 rules!1750)))) (= lambda!85689 lambda!85669))))

(declare-fun bs!456701 () Bool)

(assert (= bs!456701 (and d!675664 d!675370)))

(assert (=> bs!456701 (= (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 r!2363))) (= lambda!85689 lambda!85670))))

(assert (=> d!675664 true))

(assert (=> d!675664 (< (dynLambda!11778 order!15135 (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) (dynLambda!11783 order!15143 lambda!85689))))

(assert (=> d!675664 (= (equivClasses!1671 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toValue!6119 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) (Forall2!704 lambda!85689))))

(declare-fun bs!456702 () Bool)

(assert (= bs!456702 d!675664))

(declare-fun m!2710709 () Bool)

(assert (=> bs!456702 m!2710709))

(assert (=> b!2281920 d!675664))

(declare-fun d!675666 () Bool)

(declare-fun lt!847073 () Int)

(assert (=> d!675666 (= lt!847073 (size!21354 (list!10584 (_1!15958 lt!846921))))))

(declare-fun size!21356 (Conc!8823) Int)

(assert (=> d!675666 (= lt!847073 (size!21356 (c!361994 (_1!15958 lt!846921))))))

(assert (=> d!675666 (= (size!21352 (_1!15958 lt!846921)) lt!847073)))

(declare-fun bs!456703 () Bool)

(assert (= bs!456703 d!675666))

(assert (=> bs!456703 m!2709895))

(assert (=> bs!456703 m!2709895))

(declare-fun m!2710711 () Bool)

(assert (=> bs!456703 m!2710711))

(declare-fun m!2710713 () Bool)

(assert (=> bs!456703 m!2710713))

(assert (=> d!675240 d!675666))

(declare-fun b!2282650 () Bool)

(declare-fun e!1462296 () tuple2!26896)

(assert (=> b!2282650 (= e!1462296 (tuple2!26897 (BalanceConc!17375 Empty!8823) (seqFromList!3041 input!1722)))))

(declare-fun b!2282651 () Bool)

(declare-fun lt!847273 () tuple2!26896)

(declare-datatypes ((tuple2!26904 0))(
  ( (tuple2!26905 (_1!15962 Token!8152) (_2!15962 BalanceConc!17372)) )
))
(declare-datatypes ((Option!5325 0))(
  ( (None!5324) (Some!5324 (v!30390 tuple2!26904)) )
))
(declare-fun lt!847265 () Option!5325)

(declare-fun lexRec!537 (LexerInterface!3934 List!27244 BalanceConc!17372) tuple2!26896)

(assert (=> b!2282651 (= lt!847273 (lexRec!537 thiss!16613 rules!1750 (_2!15962 (v!30390 lt!847265))))))

(declare-fun e!1462295 () tuple2!26896)

(declare-fun prepend!1007 (BalanceConc!17374 Token!8152) BalanceConc!17374)

(assert (=> b!2282651 (= e!1462295 (tuple2!26897 (prepend!1007 (_1!15958 lt!847273) (_1!15962 (v!30390 lt!847265))) (_2!15958 lt!847273)))))

(declare-fun d!675668 () Bool)

(declare-fun e!1462293 () Bool)

(assert (=> d!675668 e!1462293))

(declare-fun res!975744 () Bool)

(assert (=> d!675668 (=> (not res!975744) (not e!1462293))))

(declare-fun lt!847272 () tuple2!26896)

(assert (=> d!675668 (= res!975744 (= (list!10584 (_1!15958 lt!847272)) (list!10584 (_1!15958 (lexRec!537 thiss!16613 rules!1750 (seqFromList!3041 input!1722))))))))

(assert (=> d!675668 (= lt!847272 e!1462296)))

(declare-fun c!362263 () Bool)

(declare-fun lt!847262 () Option!5325)

(assert (=> d!675668 (= c!362263 ((_ is Some!5324) lt!847262))))

(declare-fun maxPrefixZipperSequenceV2!407 (LexerInterface!3934 List!27244 BalanceConc!17372 BalanceConc!17372) Option!5325)

(assert (=> d!675668 (= lt!847262 (maxPrefixZipperSequenceV2!407 thiss!16613 rules!1750 (seqFromList!3041 input!1722) (seqFromList!3041 input!1722)))))

(declare-fun lt!847256 () Unit!40066)

(declare-fun lt!847277 () Unit!40066)

(assert (=> d!675668 (= lt!847256 lt!847277)))

(declare-fun lt!847250 () List!27241)

(declare-fun lt!847270 () List!27241)

(declare-fun isSuffix!773 (List!27241 List!27241) Bool)

(assert (=> d!675668 (isSuffix!773 lt!847250 (++!6629 lt!847270 lt!847250))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!467 (List!27241 List!27241) Unit!40066)

(assert (=> d!675668 (= lt!847277 (lemmaConcatTwoListThenFSndIsSuffix!467 lt!847270 lt!847250))))

(assert (=> d!675668 (= lt!847250 (list!10585 (seqFromList!3041 input!1722)))))

(assert (=> d!675668 (= lt!847270 (list!10585 (BalanceConc!17373 Empty!8822)))))

(assert (=> d!675668 (= (lexTailRecV2!771 thiss!16613 rules!1750 (seqFromList!3041 input!1722) (BalanceConc!17373 Empty!8822) (seqFromList!3041 input!1722) (BalanceConc!17375 Empty!8823)) lt!847272)))

(declare-fun b!2282652 () Bool)

(declare-fun lt!847249 () Option!5325)

(declare-fun lt!847248 () tuple2!26896)

(assert (=> b!2282652 (= lt!847248 (lexRec!537 thiss!16613 rules!1750 (_2!15962 (v!30390 lt!847249))))))

(declare-fun e!1462294 () tuple2!26896)

(assert (=> b!2282652 (= e!1462294 (tuple2!26897 (prepend!1007 (_1!15958 lt!847248) (_1!15962 (v!30390 lt!847249))) (_2!15958 lt!847248)))))

(declare-fun b!2282653 () Bool)

(assert (=> b!2282653 (= e!1462295 (tuple2!26897 (BalanceConc!17375 Empty!8823) (seqFromList!3041 input!1722)))))

(declare-fun b!2282654 () Bool)

(declare-fun lt!847276 () BalanceConc!17372)

(assert (=> b!2282654 (= e!1462294 (tuple2!26897 (BalanceConc!17375 Empty!8823) lt!847276))))

(declare-fun b!2282655 () Bool)

(assert (=> b!2282655 (= e!1462293 (= (list!10585 (_2!15958 lt!847272)) (list!10585 (_2!15958 (lexRec!537 thiss!16613 rules!1750 (seqFromList!3041 input!1722))))))))

(declare-fun lt!847274 () BalanceConc!17372)

(declare-fun b!2282656 () Bool)

(declare-fun append!700 (BalanceConc!17374 Token!8152) BalanceConc!17374)

(assert (=> b!2282656 (= e!1462296 (lexTailRecV2!771 thiss!16613 rules!1750 (seqFromList!3041 input!1722) lt!847274 (_2!15962 (v!30390 lt!847262)) (append!700 (BalanceConc!17375 Empty!8823) (_1!15962 (v!30390 lt!847262)))))))

(declare-fun lt!847260 () tuple2!26896)

(assert (=> b!2282656 (= lt!847260 (lexRec!537 thiss!16613 rules!1750 (_2!15962 (v!30390 lt!847262))))))

(declare-fun lt!847247 () List!27241)

(assert (=> b!2282656 (= lt!847247 (list!10585 (BalanceConc!17373 Empty!8822)))))

(declare-fun lt!847275 () List!27241)

(assert (=> b!2282656 (= lt!847275 (list!10585 (charsOf!2725 (_1!15962 (v!30390 lt!847262)))))))

(declare-fun lt!847259 () List!27241)

(assert (=> b!2282656 (= lt!847259 (list!10585 (_2!15962 (v!30390 lt!847262))))))

(declare-fun lt!847269 () Unit!40066)

(declare-fun lemmaConcatAssociativity!1386 (List!27241 List!27241 List!27241) Unit!40066)

(assert (=> b!2282656 (= lt!847269 (lemmaConcatAssociativity!1386 lt!847247 lt!847275 lt!847259))))

(assert (=> b!2282656 (= (++!6629 (++!6629 lt!847247 lt!847275) lt!847259) (++!6629 lt!847247 (++!6629 lt!847275 lt!847259)))))

(declare-fun lt!847252 () Unit!40066)

(assert (=> b!2282656 (= lt!847252 lt!847269)))

(declare-fun maxPrefixZipperSequence!872 (LexerInterface!3934 List!27244 BalanceConc!17372) Option!5325)

(assert (=> b!2282656 (= lt!847265 (maxPrefixZipperSequence!872 thiss!16613 rules!1750 (seqFromList!3041 input!1722)))))

(declare-fun c!362264 () Bool)

(assert (=> b!2282656 (= c!362264 ((_ is Some!5324) lt!847265))))

(assert (=> b!2282656 (= (lexRec!537 thiss!16613 rules!1750 (seqFromList!3041 input!1722)) e!1462295)))

(declare-fun lt!847267 () Unit!40066)

(declare-fun Unit!40070 () Unit!40066)

(assert (=> b!2282656 (= lt!847267 Unit!40070)))

(declare-fun lt!847268 () List!27243)

(assert (=> b!2282656 (= lt!847268 (list!10584 (BalanceConc!17375 Empty!8823)))))

(declare-fun lt!847257 () List!27243)

(assert (=> b!2282656 (= lt!847257 (Cons!27149 (_1!15962 (v!30390 lt!847262)) Nil!27149))))

(declare-fun lt!847261 () List!27243)

(assert (=> b!2282656 (= lt!847261 (list!10584 (_1!15958 lt!847260)))))

(declare-fun lt!847254 () Unit!40066)

(declare-fun lemmaConcatAssociativity!1387 (List!27243 List!27243 List!27243) Unit!40066)

(assert (=> b!2282656 (= lt!847254 (lemmaConcatAssociativity!1387 lt!847268 lt!847257 lt!847261))))

(assert (=> b!2282656 (= (++!6630 (++!6630 lt!847268 lt!847257) lt!847261) (++!6630 lt!847268 (++!6630 lt!847257 lt!847261)))))

(declare-fun lt!847255 () Unit!40066)

(assert (=> b!2282656 (= lt!847255 lt!847254)))

(declare-fun lt!847258 () List!27241)

(assert (=> b!2282656 (= lt!847258 (++!6629 (list!10585 (BalanceConc!17373 Empty!8822)) (list!10585 (charsOf!2725 (_1!15962 (v!30390 lt!847262))))))))

(declare-fun lt!847279 () List!27241)

(assert (=> b!2282656 (= lt!847279 (list!10585 (_2!15962 (v!30390 lt!847262))))))

(declare-fun lt!847278 () List!27243)

(assert (=> b!2282656 (= lt!847278 (list!10584 (append!700 (BalanceConc!17375 Empty!8823) (_1!15962 (v!30390 lt!847262)))))))

(declare-fun lt!847246 () Unit!40066)

(declare-fun lemmaLexThenLexPrefix!351 (LexerInterface!3934 List!27244 List!27241 List!27241 List!27243 List!27243 List!27241) Unit!40066)

(assert (=> b!2282656 (= lt!847246 (lemmaLexThenLexPrefix!351 thiss!16613 rules!1750 lt!847258 lt!847279 lt!847278 (list!10584 (_1!15958 lt!847260)) (list!10585 (_2!15958 lt!847260))))))

(assert (=> b!2282656 (= (lexList!1096 thiss!16613 rules!1750 lt!847258) (tuple2!26899 lt!847278 Nil!27147))))

(declare-fun lt!847264 () Unit!40066)

(assert (=> b!2282656 (= lt!847264 lt!847246)))

(declare-fun ++!6633 (BalanceConc!17372 BalanceConc!17372) BalanceConc!17372)

(assert (=> b!2282656 (= lt!847276 (++!6633 (BalanceConc!17373 Empty!8822) (charsOf!2725 (_1!15962 (v!30390 lt!847262)))))))

(assert (=> b!2282656 (= lt!847249 (maxPrefixZipperSequence!872 thiss!16613 rules!1750 lt!847276))))

(declare-fun c!362265 () Bool)

(assert (=> b!2282656 (= c!362265 ((_ is Some!5324) lt!847249))))

(assert (=> b!2282656 (= (lexRec!537 thiss!16613 rules!1750 (++!6633 (BalanceConc!17373 Empty!8822) (charsOf!2725 (_1!15962 (v!30390 lt!847262))))) e!1462294)))

(declare-fun lt!847251 () Unit!40066)

(declare-fun Unit!40071 () Unit!40066)

(assert (=> b!2282656 (= lt!847251 Unit!40071)))

(assert (=> b!2282656 (= lt!847274 (++!6633 (BalanceConc!17373 Empty!8822) (charsOf!2725 (_1!15962 (v!30390 lt!847262)))))))

(declare-fun lt!847253 () List!27241)

(assert (=> b!2282656 (= lt!847253 (list!10585 lt!847274))))

(declare-fun lt!847263 () List!27241)

(assert (=> b!2282656 (= lt!847263 (list!10585 (_2!15962 (v!30390 lt!847262))))))

(declare-fun lt!847266 () Unit!40066)

(assert (=> b!2282656 (= lt!847266 (lemmaConcatTwoListThenFSndIsSuffix!467 lt!847253 lt!847263))))

(assert (=> b!2282656 (isSuffix!773 lt!847263 (++!6629 lt!847253 lt!847263))))

(declare-fun lt!847271 () Unit!40066)

(assert (=> b!2282656 (= lt!847271 lt!847266)))

(assert (= (and d!675668 c!362263) b!2282656))

(assert (= (and d!675668 (not c!362263)) b!2282650))

(assert (= (and b!2282656 c!362264) b!2282651))

(assert (= (and b!2282656 (not c!362264)) b!2282653))

(assert (= (and b!2282656 c!362265) b!2282652))

(assert (= (and b!2282656 (not c!362265)) b!2282654))

(assert (= (and d!675668 res!975744) b!2282655))

(declare-fun m!2710827 () Bool)

(assert (=> b!2282651 m!2710827))

(declare-fun m!2710829 () Bool)

(assert (=> b!2282651 m!2710829))

(declare-fun m!2710831 () Bool)

(assert (=> b!2282652 m!2710831))

(declare-fun m!2710833 () Bool)

(assert (=> b!2282652 m!2710833))

(declare-fun m!2710835 () Bool)

(assert (=> d!675668 m!2710835))

(declare-fun m!2710837 () Bool)

(assert (=> d!675668 m!2710837))

(declare-fun m!2710839 () Bool)

(assert (=> d!675668 m!2710839))

(declare-fun m!2710841 () Bool)

(assert (=> d!675668 m!2710841))

(assert (=> d!675668 m!2710837))

(assert (=> d!675668 m!2709417))

(declare-fun m!2710843 () Bool)

(assert (=> d!675668 m!2710843))

(assert (=> d!675668 m!2709417))

(assert (=> d!675668 m!2709881))

(assert (=> d!675668 m!2709417))

(assert (=> d!675668 m!2709417))

(declare-fun m!2710845 () Bool)

(assert (=> d!675668 m!2710845))

(declare-fun m!2710847 () Bool)

(assert (=> d!675668 m!2710847))

(declare-fun m!2710849 () Bool)

(assert (=> d!675668 m!2710849))

(declare-fun m!2710851 () Bool)

(assert (=> b!2282656 m!2710851))

(declare-fun m!2710853 () Bool)

(assert (=> b!2282656 m!2710853))

(declare-fun m!2710855 () Bool)

(assert (=> b!2282656 m!2710855))

(declare-fun m!2710857 () Bool)

(assert (=> b!2282656 m!2710857))

(declare-fun m!2710859 () Bool)

(assert (=> b!2282656 m!2710859))

(declare-fun m!2710861 () Bool)

(assert (=> b!2282656 m!2710861))

(declare-fun m!2710863 () Bool)

(assert (=> b!2282656 m!2710863))

(declare-fun m!2710865 () Bool)

(assert (=> b!2282656 m!2710865))

(declare-fun m!2710867 () Bool)

(assert (=> b!2282656 m!2710867))

(assert (=> b!2282656 m!2710835))

(declare-fun m!2710869 () Bool)

(assert (=> b!2282656 m!2710869))

(declare-fun m!2710871 () Bool)

(assert (=> b!2282656 m!2710871))

(declare-fun m!2710873 () Bool)

(assert (=> b!2282656 m!2710873))

(declare-fun m!2710875 () Bool)

(assert (=> b!2282656 m!2710875))

(declare-fun m!2710877 () Bool)

(assert (=> b!2282656 m!2710877))

(assert (=> b!2282656 m!2709417))

(assert (=> b!2282656 m!2710861))

(declare-fun m!2710879 () Bool)

(assert (=> b!2282656 m!2710879))

(assert (=> b!2282656 m!2710835))

(assert (=> b!2282656 m!2710857))

(declare-fun m!2710881 () Bool)

(assert (=> b!2282656 m!2710881))

(declare-fun m!2710883 () Bool)

(assert (=> b!2282656 m!2710883))

(declare-fun m!2710885 () Bool)

(assert (=> b!2282656 m!2710885))

(declare-fun m!2710887 () Bool)

(assert (=> b!2282656 m!2710887))

(declare-fun m!2710889 () Bool)

(assert (=> b!2282656 m!2710889))

(declare-fun m!2710891 () Bool)

(assert (=> b!2282656 m!2710891))

(declare-fun m!2710893 () Bool)

(assert (=> b!2282656 m!2710893))

(assert (=> b!2282656 m!2710887))

(assert (=> b!2282656 m!2710869))

(assert (=> b!2282656 m!2710887))

(assert (=> b!2282656 m!2710865))

(assert (=> b!2282656 m!2709417))

(declare-fun m!2710895 () Bool)

(assert (=> b!2282656 m!2710895))

(declare-fun m!2710897 () Bool)

(assert (=> b!2282656 m!2710897))

(assert (=> b!2282656 m!2710861))

(assert (=> b!2282656 m!2709417))

(assert (=> b!2282656 m!2710843))

(assert (=> b!2282656 m!2710889))

(declare-fun m!2710899 () Bool)

(assert (=> b!2282656 m!2710899))

(assert (=> b!2282656 m!2710851))

(assert (=> b!2282656 m!2710877))

(declare-fun m!2710901 () Bool)

(assert (=> b!2282656 m!2710901))

(declare-fun m!2710903 () Bool)

(assert (=> b!2282656 m!2710903))

(declare-fun m!2710905 () Bool)

(assert (=> b!2282656 m!2710905))

(assert (=> b!2282656 m!2710897))

(declare-fun m!2710907 () Bool)

(assert (=> b!2282656 m!2710907))

(assert (=> b!2282656 m!2710903))

(declare-fun m!2710909 () Bool)

(assert (=> b!2282656 m!2710909))

(assert (=> b!2282656 m!2710883))

(declare-fun m!2710911 () Bool)

(assert (=> b!2282656 m!2710911))

(declare-fun m!2710913 () Bool)

(assert (=> b!2282655 m!2710913))

(assert (=> b!2282655 m!2709417))

(assert (=> b!2282655 m!2710843))

(declare-fun m!2710915 () Bool)

(assert (=> b!2282655 m!2710915))

(assert (=> d!675240 d!675668))

(assert (=> d!675178 d!675362))

(assert (=> d!675178 d!675432))

(declare-fun d!675688 () Bool)

(declare-fun e!1462297 () Bool)

(assert (=> d!675688 e!1462297))

(declare-fun res!975745 () Bool)

(assert (=> d!675688 (=> (not res!975745) (not e!1462297))))

(declare-fun lt!847280 () BalanceConc!17372)

(assert (=> d!675688 (= res!975745 (= (list!10585 lt!847280) input!1722))))

(assert (=> d!675688 (= lt!847280 (BalanceConc!17373 (fromList!533 input!1722)))))

(assert (=> d!675688 (= (fromListB!1362 input!1722) lt!847280)))

(declare-fun b!2282657 () Bool)

(assert (=> b!2282657 (= e!1462297 (isBalanced!2677 (fromList!533 input!1722)))))

(assert (= (and d!675688 res!975745) b!2282657))

(declare-fun m!2710917 () Bool)

(assert (=> d!675688 m!2710917))

(declare-fun m!2710919 () Bool)

(assert (=> d!675688 m!2710919))

(assert (=> b!2282657 m!2710919))

(assert (=> b!2282657 m!2710919))

(declare-fun m!2710921 () Bool)

(assert (=> b!2282657 m!2710921))

(assert (=> d!675242 d!675688))

(declare-fun d!675690 () Bool)

(declare-fun lt!847281 () Int)

(assert (=> d!675690 (>= lt!847281 0)))

(declare-fun e!1462298 () Int)

(assert (=> d!675690 (= lt!847281 e!1462298)))

(declare-fun c!362266 () Bool)

(assert (=> d!675690 (= c!362266 ((_ is Nil!27147) (t!203545 otherP!12)))))

(assert (=> d!675690 (= (size!21348 (t!203545 otherP!12)) lt!847281)))

(declare-fun b!2282658 () Bool)

(assert (=> b!2282658 (= e!1462298 0)))

(declare-fun b!2282659 () Bool)

(assert (=> b!2282659 (= e!1462298 (+ 1 (size!21348 (t!203545 (t!203545 otherP!12)))))))

(assert (= (and d!675690 c!362266) b!2282658))

(assert (= (and d!675690 (not c!362266)) b!2282659))

(declare-fun m!2710923 () Bool)

(assert (=> b!2282659 m!2710923))

(assert (=> b!2281636 d!675690))

(declare-fun d!675692 () Bool)

(declare-fun lt!847282 () Int)

(assert (=> d!675692 (>= lt!847282 0)))

(declare-fun e!1462299 () Int)

(assert (=> d!675692 (= lt!847282 e!1462299)))

(declare-fun c!362267 () Bool)

(assert (=> d!675692 (= c!362267 ((_ is Nil!27147) (originalCharacters!5107 (h!32550 tokens!456))))))

(assert (=> d!675692 (= (size!21348 (originalCharacters!5107 (h!32550 tokens!456))) lt!847282)))

(declare-fun b!2282660 () Bool)

(assert (=> b!2282660 (= e!1462299 0)))

(declare-fun b!2282661 () Bool)

(assert (=> b!2282661 (= e!1462299 (+ 1 (size!21348 (t!203545 (originalCharacters!5107 (h!32550 tokens!456))))))))

(assert (= (and d!675692 c!362267) b!2282660))

(assert (= (and d!675692 (not c!362267)) b!2282661))

(declare-fun m!2710925 () Bool)

(assert (=> b!2282661 m!2710925))

(assert (=> b!2281951 d!675692))

(declare-fun d!675694 () Bool)

(assert (=> d!675694 (= (inv!36737 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))) (isBalanced!2677 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))))))

(declare-fun bs!456714 () Bool)

(assert (= bs!456714 d!675694))

(declare-fun m!2710927 () Bool)

(assert (=> bs!456714 m!2710927))

(assert (=> tb!135599 d!675694))

(declare-fun b!2282662 () Bool)

(declare-fun e!1462300 () Bool)

(declare-fun tp!723242 () Bool)

(assert (=> b!2282662 (= e!1462300 (and tp_is_empty!10591 tp!723242))))

(assert (=> b!2281998 (= tp!723199 e!1462300)))

(assert (= (and b!2281998 ((_ is Cons!27147) (t!203545 (originalCharacters!5107 (h!32550 tokens!456))))) b!2282662))

(declare-fun b!2282663 () Bool)

(declare-fun e!1462301 () Bool)

(declare-fun tp!723243 () Bool)

(assert (=> b!2282663 (= e!1462301 (and tp_is_empty!10591 tp!723243))))

(assert (=> b!2282017 (= tp!723220 e!1462301)))

(assert (= (and b!2282017 ((_ is Cons!27147) (t!203545 (t!203545 otherP!12)))) b!2282663))

(declare-fun tp!723250 () Bool)

(declare-fun b!2282672 () Bool)

(declare-fun e!1462307 () Bool)

(declare-fun tp!723252 () Bool)

(assert (=> b!2282672 (= e!1462307 (and (inv!36736 (left!20587 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))))) tp!723250 (inv!36736 (right!20917 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))))) tp!723252))))

(declare-fun b!2282674 () Bool)

(declare-fun e!1462306 () Bool)

(declare-fun tp!723251 () Bool)

(assert (=> b!2282674 (= e!1462306 tp!723251)))

(declare-fun b!2282673 () Bool)

(declare-fun inv!36742 (IArray!17649) Bool)

(assert (=> b!2282673 (= e!1462307 (and (inv!36742 (xs!11764 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))))) e!1462306))))

(assert (=> b!2281615 (= tp!723108 (and (inv!36736 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791)))) e!1462307))))

(assert (= (and b!2281615 ((_ is Node!8822) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))))) b!2282672))

(assert (= b!2282673 b!2282674))

(assert (= (and b!2281615 ((_ is Leaf!12976) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))))) b!2282673))

(declare-fun m!2710929 () Bool)

(assert (=> b!2282672 m!2710929))

(declare-fun m!2710931 () Bool)

(assert (=> b!2282672 m!2710931))

(declare-fun m!2710933 () Bool)

(assert (=> b!2282673 m!2710933))

(assert (=> b!2281615 m!2709571))

(declare-fun b!2282676 () Bool)

(declare-fun e!1462308 () Bool)

(declare-fun tp!723256 () Bool)

(declare-fun tp!723257 () Bool)

(assert (=> b!2282676 (= e!1462308 (and tp!723256 tp!723257))))

(declare-fun b!2282677 () Bool)

(declare-fun tp!723254 () Bool)

(assert (=> b!2282677 (= e!1462308 tp!723254)))

(declare-fun b!2282678 () Bool)

(declare-fun tp!723253 () Bool)

(declare-fun tp!723255 () Bool)

(assert (=> b!2282678 (= e!1462308 (and tp!723253 tp!723255))))

(assert (=> b!2281995 (= tp!723197 e!1462308)))

(declare-fun b!2282675 () Bool)

(assert (=> b!2282675 (= e!1462308 tp_is_empty!10591)))

(assert (= (and b!2281995 ((_ is ElementMatch!6685) (regOne!13882 (regex!4337 (h!32551 rules!1750))))) b!2282675))

(assert (= (and b!2281995 ((_ is Concat!11185) (regOne!13882 (regex!4337 (h!32551 rules!1750))))) b!2282676))

(assert (= (and b!2281995 ((_ is Star!6685) (regOne!13882 (regex!4337 (h!32551 rules!1750))))) b!2282677))

(assert (= (and b!2281995 ((_ is Union!6685) (regOne!13882 (regex!4337 (h!32551 rules!1750))))) b!2282678))

(declare-fun b!2282680 () Bool)

(declare-fun e!1462309 () Bool)

(declare-fun tp!723261 () Bool)

(declare-fun tp!723262 () Bool)

(assert (=> b!2282680 (= e!1462309 (and tp!723261 tp!723262))))

(declare-fun b!2282681 () Bool)

(declare-fun tp!723259 () Bool)

(assert (=> b!2282681 (= e!1462309 tp!723259)))

(declare-fun b!2282682 () Bool)

(declare-fun tp!723258 () Bool)

(declare-fun tp!723260 () Bool)

(assert (=> b!2282682 (= e!1462309 (and tp!723258 tp!723260))))

(assert (=> b!2281995 (= tp!723198 e!1462309)))

(declare-fun b!2282679 () Bool)

(assert (=> b!2282679 (= e!1462309 tp_is_empty!10591)))

(assert (= (and b!2281995 ((_ is ElementMatch!6685) (regTwo!13882 (regex!4337 (h!32551 rules!1750))))) b!2282679))

(assert (= (and b!2281995 ((_ is Concat!11185) (regTwo!13882 (regex!4337 (h!32551 rules!1750))))) b!2282680))

(assert (= (and b!2281995 ((_ is Star!6685) (regTwo!13882 (regex!4337 (h!32551 rules!1750))))) b!2282681))

(assert (= (and b!2281995 ((_ is Union!6685) (regTwo!13882 (regex!4337 (h!32551 rules!1750))))) b!2282682))

(declare-fun b!2282686 () Bool)

(declare-fun b_free!68253 () Bool)

(declare-fun b_next!68957 () Bool)

(assert (=> b!2282686 (= b_free!68253 (not b_next!68957))))

(declare-fun t!203726 () Bool)

(declare-fun tb!135735 () Bool)

(assert (=> (and b!2282686 (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 (t!203547 (t!203547 tokens!456)))))) (toValue!6119 (transformation!4337 r!2363))) t!203726) tb!135735))

(declare-fun result!165504 () Bool)

(assert (= result!165504 result!165330))

(assert (=> d!675102 t!203726))

(assert (=> d!675104 t!203726))

(declare-fun tb!135737 () Bool)

(declare-fun t!203728 () Bool)

(assert (=> (and b!2282686 (= (toValue!6119 (transformation!4337 (rule!6663 (h!32550 (t!203547 (t!203547 tokens!456)))))) (toValue!6119 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203728) tb!135737))

(declare-fun result!165506 () Bool)

(assert (= result!165506 result!165442))

(assert (=> d!675366 t!203728))

(declare-fun tp!723263 () Bool)

(declare-fun b_and!180441 () Bool)

(assert (=> b!2282686 (= tp!723263 (and (=> t!203726 result!165504) (=> t!203728 result!165506) b_and!180441))))

(declare-fun b_free!68255 () Bool)

(declare-fun b_next!68959 () Bool)

(assert (=> b!2282686 (= b_free!68255 (not b_next!68959))))

(declare-fun tb!135739 () Bool)

(declare-fun t!203730 () Bool)

(assert (=> (and b!2282686 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 (t!203547 tokens!456)))))) (toChars!5978 (transformation!4337 r!2363))) t!203730) tb!135739))

(declare-fun result!165508 () Bool)

(assert (= result!165508 result!165348))

(assert (=> d!675104 t!203730))

(declare-fun t!203732 () Bool)

(declare-fun tb!135741 () Bool)

(assert (=> (and b!2282686 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 (t!203547 tokens!456)))))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) t!203732) tb!135741))

(declare-fun result!165510 () Bool)

(assert (= result!165510 result!165478))

(assert (=> b!2282354 t!203732))

(declare-fun tb!135743 () Bool)

(declare-fun t!203734 () Bool)

(assert (=> (and b!2282686 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 (t!203547 tokens!456)))))) (toChars!5978 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203734) tb!135743))

(declare-fun result!165512 () Bool)

(assert (= result!165512 result!165430))

(assert (=> d!675358 t!203734))

(declare-fun t!203736 () Bool)

(declare-fun tb!135745 () Bool)

(assert (=> (and b!2282686 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 (t!203547 tokens!456)))))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) t!203736) tb!135745))

(declare-fun result!165514 () Bool)

(assert (= result!165514 result!165358))

(assert (=> d!675150 t!203736))

(assert (=> b!2281950 t!203736))

(declare-fun t!203738 () Bool)

(declare-fun tb!135747 () Bool)

(assert (=> (and b!2282686 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 (t!203547 tokens!456)))))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456))))) t!203738) tb!135747))

(declare-fun result!165516 () Bool)

(assert (= result!165516 result!165366))

(assert (=> d!675174 t!203738))

(declare-fun b_and!180443 () Bool)

(declare-fun tp!723267 () Bool)

(assert (=> b!2282686 (= tp!723267 (and (=> t!203736 result!165514) (=> t!203734 result!165512) (=> t!203738 result!165516) (=> t!203732 result!165510) (=> t!203730 result!165508) b_and!180443))))

(declare-fun b!2282685 () Bool)

(declare-fun tp!723265 () Bool)

(declare-fun e!1462314 () Bool)

(declare-fun e!1462315 () Bool)

(assert (=> b!2282685 (= e!1462314 (and tp!723265 (inv!36729 (tag!4827 (rule!6663 (h!32550 (t!203547 (t!203547 tokens!456)))))) (inv!36732 (transformation!4337 (rule!6663 (h!32550 (t!203547 (t!203547 tokens!456)))))) e!1462315))))

(declare-fun tp!723264 () Bool)

(declare-fun b!2282684 () Bool)

(declare-fun e!1462313 () Bool)

(assert (=> b!2282684 (= e!1462313 (and (inv!21 (value!137424 (h!32550 (t!203547 (t!203547 tokens!456))))) e!1462314 tp!723264))))

(declare-fun b!2282683 () Bool)

(declare-fun tp!723266 () Bool)

(declare-fun e!1462310 () Bool)

(assert (=> b!2282683 (= e!1462310 (and (inv!36733 (h!32550 (t!203547 (t!203547 tokens!456)))) e!1462313 tp!723266))))

(assert (=> b!2282013 (= tp!723218 e!1462310)))

(assert (=> b!2282686 (= e!1462315 (and tp!723263 tp!723267))))

(assert (= b!2282685 b!2282686))

(assert (= b!2282684 b!2282685))

(assert (= b!2282683 b!2282684))

(assert (= (and b!2282013 ((_ is Cons!27149) (t!203547 (t!203547 tokens!456)))) b!2282683))

(declare-fun m!2710935 () Bool)

(assert (=> b!2282685 m!2710935))

(declare-fun m!2710937 () Bool)

(assert (=> b!2282685 m!2710937))

(declare-fun m!2710939 () Bool)

(assert (=> b!2282684 m!2710939))

(declare-fun m!2710941 () Bool)

(assert (=> b!2282683 m!2710941))

(declare-fun b!2282688 () Bool)

(declare-fun e!1462316 () Bool)

(declare-fun tp!723271 () Bool)

(declare-fun tp!723272 () Bool)

(assert (=> b!2282688 (= e!1462316 (and tp!723271 tp!723272))))

(declare-fun b!2282689 () Bool)

(declare-fun tp!723269 () Bool)

(assert (=> b!2282689 (= e!1462316 tp!723269)))

(declare-fun b!2282690 () Bool)

(declare-fun tp!723268 () Bool)

(declare-fun tp!723270 () Bool)

(assert (=> b!2282690 (= e!1462316 (and tp!723268 tp!723270))))

(assert (=> b!2281996 (= tp!723195 e!1462316)))

(declare-fun b!2282687 () Bool)

(assert (=> b!2282687 (= e!1462316 tp_is_empty!10591)))

(assert (= (and b!2281996 ((_ is ElementMatch!6685) (reg!7014 (regex!4337 (h!32551 rules!1750))))) b!2282687))

(assert (= (and b!2281996 ((_ is Concat!11185) (reg!7014 (regex!4337 (h!32551 rules!1750))))) b!2282688))

(assert (= (and b!2281996 ((_ is Star!6685) (reg!7014 (regex!4337 (h!32551 rules!1750))))) b!2282689))

(assert (= (and b!2281996 ((_ is Union!6685) (reg!7014 (regex!4337 (h!32551 rules!1750))))) b!2282690))

(declare-fun b!2282691 () Bool)

(declare-fun e!1462317 () Bool)

(declare-fun tp!723273 () Bool)

(assert (=> b!2282691 (= e!1462317 (and tp_is_empty!10591 tp!723273))))

(assert (=> b!2282014 (= tp!723216 e!1462317)))

(assert (= (and b!2282014 ((_ is Cons!27147) (originalCharacters!5107 (h!32550 (t!203547 tokens!456))))) b!2282691))

(declare-fun b!2282693 () Bool)

(declare-fun e!1462318 () Bool)

(declare-fun tp!723277 () Bool)

(declare-fun tp!723278 () Bool)

(assert (=> b!2282693 (= e!1462318 (and tp!723277 tp!723278))))

(declare-fun b!2282694 () Bool)

(declare-fun tp!723275 () Bool)

(assert (=> b!2282694 (= e!1462318 tp!723275)))

(declare-fun b!2282695 () Bool)

(declare-fun tp!723274 () Bool)

(declare-fun tp!723276 () Bool)

(assert (=> b!2282695 (= e!1462318 (and tp!723274 tp!723276))))

(assert (=> b!2281997 (= tp!723194 e!1462318)))

(declare-fun b!2282692 () Bool)

(assert (=> b!2282692 (= e!1462318 tp_is_empty!10591)))

(assert (= (and b!2281997 ((_ is ElementMatch!6685) (regOne!13883 (regex!4337 (h!32551 rules!1750))))) b!2282692))

(assert (= (and b!2281997 ((_ is Concat!11185) (regOne!13883 (regex!4337 (h!32551 rules!1750))))) b!2282693))

(assert (= (and b!2281997 ((_ is Star!6685) (regOne!13883 (regex!4337 (h!32551 rules!1750))))) b!2282694))

(assert (= (and b!2281997 ((_ is Union!6685) (regOne!13883 (regex!4337 (h!32551 rules!1750))))) b!2282695))

(declare-fun b!2282697 () Bool)

(declare-fun e!1462319 () Bool)

(declare-fun tp!723282 () Bool)

(declare-fun tp!723283 () Bool)

(assert (=> b!2282697 (= e!1462319 (and tp!723282 tp!723283))))

(declare-fun b!2282698 () Bool)

(declare-fun tp!723280 () Bool)

(assert (=> b!2282698 (= e!1462319 tp!723280)))

(declare-fun b!2282699 () Bool)

(declare-fun tp!723279 () Bool)

(declare-fun tp!723281 () Bool)

(assert (=> b!2282699 (= e!1462319 (and tp!723279 tp!723281))))

(assert (=> b!2281997 (= tp!723196 e!1462319)))

(declare-fun b!2282696 () Bool)

(assert (=> b!2282696 (= e!1462319 tp_is_empty!10591)))

(assert (= (and b!2281997 ((_ is ElementMatch!6685) (regTwo!13883 (regex!4337 (h!32551 rules!1750))))) b!2282696))

(assert (= (and b!2281997 ((_ is Concat!11185) (regTwo!13883 (regex!4337 (h!32551 rules!1750))))) b!2282697))

(assert (= (and b!2281997 ((_ is Star!6685) (regTwo!13883 (regex!4337 (h!32551 rules!1750))))) b!2282698))

(assert (= (and b!2281997 ((_ is Union!6685) (regTwo!13883 (regex!4337 (h!32551 rules!1750))))) b!2282699))

(declare-fun b!2282701 () Bool)

(declare-fun e!1462320 () Bool)

(declare-fun tp!723287 () Bool)

(declare-fun tp!723288 () Bool)

(assert (=> b!2282701 (= e!1462320 (and tp!723287 tp!723288))))

(declare-fun b!2282702 () Bool)

(declare-fun tp!723285 () Bool)

(assert (=> b!2282702 (= e!1462320 tp!723285)))

(declare-fun b!2282703 () Bool)

(declare-fun tp!723284 () Bool)

(declare-fun tp!723286 () Bool)

(assert (=> b!2282703 (= e!1462320 (and tp!723284 tp!723286))))

(assert (=> b!2282015 (= tp!723217 e!1462320)))

(declare-fun b!2282700 () Bool)

(assert (=> b!2282700 (= e!1462320 tp_is_empty!10591)))

(assert (= (and b!2282015 ((_ is ElementMatch!6685) (regex!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) b!2282700))

(assert (= (and b!2282015 ((_ is Concat!11185) (regex!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) b!2282701))

(assert (= (and b!2282015 ((_ is Star!6685) (regex!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) b!2282702))

(assert (= (and b!2282015 ((_ is Union!6685) (regex!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) b!2282703))

(declare-fun b!2282705 () Bool)

(declare-fun e!1462321 () Bool)

(declare-fun tp!723292 () Bool)

(declare-fun tp!723293 () Bool)

(assert (=> b!2282705 (= e!1462321 (and tp!723292 tp!723293))))

(declare-fun b!2282706 () Bool)

(declare-fun tp!723290 () Bool)

(assert (=> b!2282706 (= e!1462321 tp!723290)))

(declare-fun b!2282707 () Bool)

(declare-fun tp!723289 () Bool)

(declare-fun tp!723291 () Bool)

(assert (=> b!2282707 (= e!1462321 (and tp!723289 tp!723291))))

(assert (=> b!2282019 (= tp!723224 e!1462321)))

(declare-fun b!2282704 () Bool)

(assert (=> b!2282704 (= e!1462321 tp_is_empty!10591)))

(assert (= (and b!2282019 ((_ is ElementMatch!6685) (regOne!13882 (regex!4337 r!2363)))) b!2282704))

(assert (= (and b!2282019 ((_ is Concat!11185) (regOne!13882 (regex!4337 r!2363)))) b!2282705))

(assert (= (and b!2282019 ((_ is Star!6685) (regOne!13882 (regex!4337 r!2363)))) b!2282706))

(assert (= (and b!2282019 ((_ is Union!6685) (regOne!13882 (regex!4337 r!2363)))) b!2282707))

(declare-fun b!2282709 () Bool)

(declare-fun e!1462322 () Bool)

(declare-fun tp!723297 () Bool)

(declare-fun tp!723298 () Bool)

(assert (=> b!2282709 (= e!1462322 (and tp!723297 tp!723298))))

(declare-fun b!2282710 () Bool)

(declare-fun tp!723295 () Bool)

(assert (=> b!2282710 (= e!1462322 tp!723295)))

(declare-fun b!2282711 () Bool)

(declare-fun tp!723294 () Bool)

(declare-fun tp!723296 () Bool)

(assert (=> b!2282711 (= e!1462322 (and tp!723294 tp!723296))))

(assert (=> b!2282019 (= tp!723225 e!1462322)))

(declare-fun b!2282708 () Bool)

(assert (=> b!2282708 (= e!1462322 tp_is_empty!10591)))

(assert (= (and b!2282019 ((_ is ElementMatch!6685) (regTwo!13882 (regex!4337 r!2363)))) b!2282708))

(assert (= (and b!2282019 ((_ is Concat!11185) (regTwo!13882 (regex!4337 r!2363)))) b!2282709))

(assert (= (and b!2282019 ((_ is Star!6685) (regTwo!13882 (regex!4337 r!2363)))) b!2282710))

(assert (= (and b!2282019 ((_ is Union!6685) (regTwo!13882 (regex!4337 r!2363)))) b!2282711))

(declare-fun b!2282713 () Bool)

(declare-fun e!1462323 () Bool)

(declare-fun tp!723302 () Bool)

(declare-fun tp!723303 () Bool)

(assert (=> b!2282713 (= e!1462323 (and tp!723302 tp!723303))))

(declare-fun b!2282714 () Bool)

(declare-fun tp!723300 () Bool)

(assert (=> b!2282714 (= e!1462323 tp!723300)))

(declare-fun b!2282715 () Bool)

(declare-fun tp!723299 () Bool)

(declare-fun tp!723301 () Bool)

(assert (=> b!2282715 (= e!1462323 (and tp!723299 tp!723301))))

(assert (=> b!2281987 (= tp!723185 e!1462323)))

(declare-fun b!2282712 () Bool)

(assert (=> b!2282712 (= e!1462323 tp_is_empty!10591)))

(assert (= (and b!2281987 ((_ is ElementMatch!6685) (regOne!13883 (regex!4337 otherR!12)))) b!2282712))

(assert (= (and b!2281987 ((_ is Concat!11185) (regOne!13883 (regex!4337 otherR!12)))) b!2282713))

(assert (= (and b!2281987 ((_ is Star!6685) (regOne!13883 (regex!4337 otherR!12)))) b!2282714))

(assert (= (and b!2281987 ((_ is Union!6685) (regOne!13883 (regex!4337 otherR!12)))) b!2282715))

(declare-fun b!2282717 () Bool)

(declare-fun e!1462324 () Bool)

(declare-fun tp!723307 () Bool)

(declare-fun tp!723308 () Bool)

(assert (=> b!2282717 (= e!1462324 (and tp!723307 tp!723308))))

(declare-fun b!2282718 () Bool)

(declare-fun tp!723305 () Bool)

(assert (=> b!2282718 (= e!1462324 tp!723305)))

(declare-fun b!2282719 () Bool)

(declare-fun tp!723304 () Bool)

(declare-fun tp!723306 () Bool)

(assert (=> b!2282719 (= e!1462324 (and tp!723304 tp!723306))))

(assert (=> b!2281987 (= tp!723187 e!1462324)))

(declare-fun b!2282716 () Bool)

(assert (=> b!2282716 (= e!1462324 tp_is_empty!10591)))

(assert (= (and b!2281987 ((_ is ElementMatch!6685) (regTwo!13883 (regex!4337 otherR!12)))) b!2282716))

(assert (= (and b!2281987 ((_ is Concat!11185) (regTwo!13883 (regex!4337 otherR!12)))) b!2282717))

(assert (= (and b!2281987 ((_ is Star!6685) (regTwo!13883 (regex!4337 otherR!12)))) b!2282718))

(assert (= (and b!2281987 ((_ is Union!6685) (regTwo!13883 (regex!4337 otherR!12)))) b!2282719))

(declare-fun b!2282721 () Bool)

(declare-fun e!1462325 () Bool)

(declare-fun tp!723312 () Bool)

(declare-fun tp!723313 () Bool)

(assert (=> b!2282721 (= e!1462325 (and tp!723312 tp!723313))))

(declare-fun b!2282722 () Bool)

(declare-fun tp!723310 () Bool)

(assert (=> b!2282722 (= e!1462325 tp!723310)))

(declare-fun b!2282723 () Bool)

(declare-fun tp!723309 () Bool)

(declare-fun tp!723311 () Bool)

(assert (=> b!2282723 (= e!1462325 (and tp!723309 tp!723311))))

(assert (=> b!2282002 (= tp!723200 e!1462325)))

(declare-fun b!2282720 () Bool)

(assert (=> b!2282720 (= e!1462325 tp_is_empty!10591)))

(assert (= (and b!2282002 ((_ is ElementMatch!6685) (regOne!13883 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282720))

(assert (= (and b!2282002 ((_ is Concat!11185) (regOne!13883 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282721))

(assert (= (and b!2282002 ((_ is Star!6685) (regOne!13883 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282722))

(assert (= (and b!2282002 ((_ is Union!6685) (regOne!13883 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282723))

(declare-fun b!2282725 () Bool)

(declare-fun e!1462326 () Bool)

(declare-fun tp!723317 () Bool)

(declare-fun tp!723318 () Bool)

(assert (=> b!2282725 (= e!1462326 (and tp!723317 tp!723318))))

(declare-fun b!2282726 () Bool)

(declare-fun tp!723315 () Bool)

(assert (=> b!2282726 (= e!1462326 tp!723315)))

(declare-fun b!2282727 () Bool)

(declare-fun tp!723314 () Bool)

(declare-fun tp!723316 () Bool)

(assert (=> b!2282727 (= e!1462326 (and tp!723314 tp!723316))))

(assert (=> b!2282002 (= tp!723202 e!1462326)))

(declare-fun b!2282724 () Bool)

(assert (=> b!2282724 (= e!1462326 tp_is_empty!10591)))

(assert (= (and b!2282002 ((_ is ElementMatch!6685) (regTwo!13883 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282724))

(assert (= (and b!2282002 ((_ is Concat!11185) (regTwo!13883 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282725))

(assert (= (and b!2282002 ((_ is Star!6685) (regTwo!13883 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282726))

(assert (= (and b!2282002 ((_ is Union!6685) (regTwo!13883 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282727))

(declare-fun b!2282729 () Bool)

(declare-fun e!1462327 () Bool)

(declare-fun tp!723322 () Bool)

(declare-fun tp!723323 () Bool)

(assert (=> b!2282729 (= e!1462327 (and tp!723322 tp!723323))))

(declare-fun b!2282730 () Bool)

(declare-fun tp!723320 () Bool)

(assert (=> b!2282730 (= e!1462327 tp!723320)))

(declare-fun b!2282731 () Bool)

(declare-fun tp!723319 () Bool)

(declare-fun tp!723321 () Bool)

(assert (=> b!2282731 (= e!1462327 (and tp!723319 tp!723321))))

(assert (=> b!2282031 (= tp!723235 e!1462327)))

(declare-fun b!2282728 () Bool)

(assert (=> b!2282728 (= e!1462327 tp_is_empty!10591)))

(assert (= (and b!2282031 ((_ is ElementMatch!6685) (regex!4337 (h!32551 (t!203548 rules!1750))))) b!2282728))

(assert (= (and b!2282031 ((_ is Concat!11185) (regex!4337 (h!32551 (t!203548 rules!1750))))) b!2282729))

(assert (= (and b!2282031 ((_ is Star!6685) (regex!4337 (h!32551 (t!203548 rules!1750))))) b!2282730))

(assert (= (and b!2282031 ((_ is Union!6685) (regex!4337 (h!32551 (t!203548 rules!1750))))) b!2282731))

(declare-fun b!2282733 () Bool)

(declare-fun e!1462328 () Bool)

(declare-fun tp!723327 () Bool)

(declare-fun tp!723328 () Bool)

(assert (=> b!2282733 (= e!1462328 (and tp!723327 tp!723328))))

(declare-fun b!2282734 () Bool)

(declare-fun tp!723325 () Bool)

(assert (=> b!2282734 (= e!1462328 tp!723325)))

(declare-fun b!2282735 () Bool)

(declare-fun tp!723324 () Bool)

(declare-fun tp!723326 () Bool)

(assert (=> b!2282735 (= e!1462328 (and tp!723324 tp!723326))))

(assert (=> b!2281985 (= tp!723188 e!1462328)))

(declare-fun b!2282732 () Bool)

(assert (=> b!2282732 (= e!1462328 tp_is_empty!10591)))

(assert (= (and b!2281985 ((_ is ElementMatch!6685) (regOne!13882 (regex!4337 otherR!12)))) b!2282732))

(assert (= (and b!2281985 ((_ is Concat!11185) (regOne!13882 (regex!4337 otherR!12)))) b!2282733))

(assert (= (and b!2281985 ((_ is Star!6685) (regOne!13882 (regex!4337 otherR!12)))) b!2282734))

(assert (= (and b!2281985 ((_ is Union!6685) (regOne!13882 (regex!4337 otherR!12)))) b!2282735))

(declare-fun b!2282737 () Bool)

(declare-fun e!1462329 () Bool)

(declare-fun tp!723332 () Bool)

(declare-fun tp!723333 () Bool)

(assert (=> b!2282737 (= e!1462329 (and tp!723332 tp!723333))))

(declare-fun b!2282738 () Bool)

(declare-fun tp!723330 () Bool)

(assert (=> b!2282738 (= e!1462329 tp!723330)))

(declare-fun b!2282739 () Bool)

(declare-fun tp!723329 () Bool)

(declare-fun tp!723331 () Bool)

(assert (=> b!2282739 (= e!1462329 (and tp!723329 tp!723331))))

(assert (=> b!2281985 (= tp!723189 e!1462329)))

(declare-fun b!2282736 () Bool)

(assert (=> b!2282736 (= e!1462329 tp_is_empty!10591)))

(assert (= (and b!2281985 ((_ is ElementMatch!6685) (regTwo!13882 (regex!4337 otherR!12)))) b!2282736))

(assert (= (and b!2281985 ((_ is Concat!11185) (regTwo!13882 (regex!4337 otherR!12)))) b!2282737))

(assert (= (and b!2281985 ((_ is Star!6685) (regTwo!13882 (regex!4337 otherR!12)))) b!2282738))

(assert (= (and b!2281985 ((_ is Union!6685) (regTwo!13882 (regex!4337 otherR!12)))) b!2282739))

(declare-fun b!2282741 () Bool)

(declare-fun e!1462330 () Bool)

(declare-fun tp!723337 () Bool)

(declare-fun tp!723338 () Bool)

(assert (=> b!2282741 (= e!1462330 (and tp!723337 tp!723338))))

(declare-fun b!2282742 () Bool)

(declare-fun tp!723335 () Bool)

(assert (=> b!2282742 (= e!1462330 tp!723335)))

(declare-fun b!2282743 () Bool)

(declare-fun tp!723334 () Bool)

(declare-fun tp!723336 () Bool)

(assert (=> b!2282743 (= e!1462330 (and tp!723334 tp!723336))))

(assert (=> b!2281986 (= tp!723186 e!1462330)))

(declare-fun b!2282740 () Bool)

(assert (=> b!2282740 (= e!1462330 tp_is_empty!10591)))

(assert (= (and b!2281986 ((_ is ElementMatch!6685) (reg!7014 (regex!4337 otherR!12)))) b!2282740))

(assert (= (and b!2281986 ((_ is Concat!11185) (reg!7014 (regex!4337 otherR!12)))) b!2282741))

(assert (= (and b!2281986 ((_ is Star!6685) (reg!7014 (regex!4337 otherR!12)))) b!2282742))

(assert (= (and b!2281986 ((_ is Union!6685) (reg!7014 (regex!4337 otherR!12)))) b!2282743))

(declare-fun e!1462332 () Bool)

(declare-fun tp!723341 () Bool)

(declare-fun tp!723339 () Bool)

(declare-fun b!2282744 () Bool)

(assert (=> b!2282744 (= e!1462332 (and (inv!36736 (left!20587 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456)))))) tp!723339 (inv!36736 (right!20917 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456)))))) tp!723341))))

(declare-fun b!2282746 () Bool)

(declare-fun e!1462331 () Bool)

(declare-fun tp!723340 () Bool)

(assert (=> b!2282746 (= e!1462331 tp!723340)))

(declare-fun b!2282745 () Bool)

(assert (=> b!2282745 (= e!1462332 (and (inv!36742 (xs!11764 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456)))))) e!1462331))))

(assert (=> b!2281677 (= tp!723109 (and (inv!36736 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456))))) e!1462332))))

(assert (= (and b!2281677 ((_ is Node!8822) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456)))))) b!2282744))

(assert (= b!2282745 b!2282746))

(assert (= (and b!2281677 ((_ is Leaf!12976) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (value!137424 (h!32550 tokens!456)))))) b!2282745))

(declare-fun m!2710943 () Bool)

(assert (=> b!2282744 m!2710943))

(declare-fun m!2710945 () Bool)

(assert (=> b!2282744 m!2710945))

(declare-fun m!2710947 () Bool)

(assert (=> b!2282745 m!2710947))

(assert (=> b!2281677 m!2709635))

(declare-fun b!2282748 () Bool)

(declare-fun e!1462333 () Bool)

(declare-fun tp!723345 () Bool)

(declare-fun tp!723346 () Bool)

(assert (=> b!2282748 (= e!1462333 (and tp!723345 tp!723346))))

(declare-fun b!2282749 () Bool)

(declare-fun tp!723343 () Bool)

(assert (=> b!2282749 (= e!1462333 tp!723343)))

(declare-fun b!2282750 () Bool)

(declare-fun tp!723342 () Bool)

(declare-fun tp!723344 () Bool)

(assert (=> b!2282750 (= e!1462333 (and tp!723342 tp!723344))))

(assert (=> b!2282020 (= tp!723222 e!1462333)))

(declare-fun b!2282747 () Bool)

(assert (=> b!2282747 (= e!1462333 tp_is_empty!10591)))

(assert (= (and b!2282020 ((_ is ElementMatch!6685) (reg!7014 (regex!4337 r!2363)))) b!2282747))

(assert (= (and b!2282020 ((_ is Concat!11185) (reg!7014 (regex!4337 r!2363)))) b!2282748))

(assert (= (and b!2282020 ((_ is Star!6685) (reg!7014 (regex!4337 r!2363)))) b!2282749))

(assert (= (and b!2282020 ((_ is Union!6685) (reg!7014 (regex!4337 r!2363)))) b!2282750))

(declare-fun b!2282752 () Bool)

(declare-fun e!1462334 () Bool)

(declare-fun tp!723350 () Bool)

(declare-fun tp!723351 () Bool)

(assert (=> b!2282752 (= e!1462334 (and tp!723350 tp!723351))))

(declare-fun b!2282753 () Bool)

(declare-fun tp!723348 () Bool)

(assert (=> b!2282753 (= e!1462334 tp!723348)))

(declare-fun b!2282754 () Bool)

(declare-fun tp!723347 () Bool)

(declare-fun tp!723349 () Bool)

(assert (=> b!2282754 (= e!1462334 (and tp!723347 tp!723349))))

(assert (=> b!2282021 (= tp!723221 e!1462334)))

(declare-fun b!2282751 () Bool)

(assert (=> b!2282751 (= e!1462334 tp_is_empty!10591)))

(assert (= (and b!2282021 ((_ is ElementMatch!6685) (regOne!13883 (regex!4337 r!2363)))) b!2282751))

(assert (= (and b!2282021 ((_ is Concat!11185) (regOne!13883 (regex!4337 r!2363)))) b!2282752))

(assert (= (and b!2282021 ((_ is Star!6685) (regOne!13883 (regex!4337 r!2363)))) b!2282753))

(assert (= (and b!2282021 ((_ is Union!6685) (regOne!13883 (regex!4337 r!2363)))) b!2282754))

(declare-fun b!2282756 () Bool)

(declare-fun e!1462335 () Bool)

(declare-fun tp!723355 () Bool)

(declare-fun tp!723356 () Bool)

(assert (=> b!2282756 (= e!1462335 (and tp!723355 tp!723356))))

(declare-fun b!2282757 () Bool)

(declare-fun tp!723353 () Bool)

(assert (=> b!2282757 (= e!1462335 tp!723353)))

(declare-fun b!2282758 () Bool)

(declare-fun tp!723352 () Bool)

(declare-fun tp!723354 () Bool)

(assert (=> b!2282758 (= e!1462335 (and tp!723352 tp!723354))))

(assert (=> b!2282021 (= tp!723223 e!1462335)))

(declare-fun b!2282755 () Bool)

(assert (=> b!2282755 (= e!1462335 tp_is_empty!10591)))

(assert (= (and b!2282021 ((_ is ElementMatch!6685) (regTwo!13883 (regex!4337 r!2363)))) b!2282755))

(assert (= (and b!2282021 ((_ is Concat!11185) (regTwo!13883 (regex!4337 r!2363)))) b!2282756))

(assert (= (and b!2282021 ((_ is Star!6685) (regTwo!13883 (regex!4337 r!2363)))) b!2282757))

(assert (= (and b!2282021 ((_ is Union!6685) (regTwo!13883 (regex!4337 r!2363)))) b!2282758))

(declare-fun b!2282759 () Bool)

(declare-fun e!1462336 () Bool)

(declare-fun tp!723357 () Bool)

(assert (=> b!2282759 (= e!1462336 (and tp_is_empty!10591 tp!723357))))

(assert (=> b!2281992 (= tp!723192 e!1462336)))

(assert (= (and b!2281992 ((_ is Cons!27147) (t!203545 (t!203545 input!1722)))) b!2282759))

(declare-fun b!2282762 () Bool)

(declare-fun b_free!68257 () Bool)

(declare-fun b_next!68961 () Bool)

(assert (=> b!2282762 (= b_free!68257 (not b_next!68961))))

(declare-fun t!203740 () Bool)

(declare-fun tb!135749 () Bool)

(assert (=> (and b!2282762 (= (toValue!6119 (transformation!4337 (h!32551 (t!203548 (t!203548 rules!1750))))) (toValue!6119 (transformation!4337 r!2363))) t!203740) tb!135749))

(declare-fun result!165518 () Bool)

(assert (= result!165518 result!165330))

(assert (=> d!675102 t!203740))

(assert (=> d!675104 t!203740))

(declare-fun t!203742 () Bool)

(declare-fun tb!135751 () Bool)

(assert (=> (and b!2282762 (= (toValue!6119 (transformation!4337 (h!32551 (t!203548 (t!203548 rules!1750))))) (toValue!6119 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203742) tb!135751))

(declare-fun result!165520 () Bool)

(assert (= result!165520 result!165442))

(assert (=> d!675366 t!203742))

(declare-fun tp!723358 () Bool)

(declare-fun b_and!180445 () Bool)

(assert (=> b!2282762 (= tp!723358 (and (=> t!203740 result!165518) (=> t!203742 result!165520) b_and!180445))))

(declare-fun b_free!68259 () Bool)

(declare-fun b_next!68963 () Bool)

(assert (=> b!2282762 (= b_free!68259 (not b_next!68963))))

(declare-fun tb!135753 () Bool)

(declare-fun t!203744 () Bool)

(assert (=> (and b!2282762 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 (t!203548 rules!1750))))) (toChars!5978 (transformation!4337 r!2363))) t!203744) tb!135753))

(declare-fun result!165522 () Bool)

(assert (= result!165522 result!165348))

(assert (=> d!675104 t!203744))

(declare-fun tb!135755 () Bool)

(declare-fun t!203746 () Bool)

(assert (=> (and b!2282762 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 (t!203548 rules!1750))))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456)))))) t!203746) tb!135755))

(declare-fun result!165524 () Bool)

(assert (= result!165524 result!165478))

(assert (=> b!2282354 t!203746))

(declare-fun t!203748 () Bool)

(declare-fun tb!135757 () Bool)

(assert (=> (and b!2282762 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 (t!203548 rules!1750))))) (toChars!5978 (transformation!4337 (rule!6663 (_1!15957 (get!8185 lt!846918)))))) t!203748) tb!135757))

(declare-fun result!165526 () Bool)

(assert (= result!165526 result!165430))

(assert (=> d!675358 t!203748))

(declare-fun tb!135759 () Bool)

(declare-fun t!203750 () Bool)

(assert (=> (and b!2282762 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 (t!203548 rules!1750))))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456))))) t!203750) tb!135759))

(declare-fun result!165528 () Bool)

(assert (= result!165528 result!165358))

(assert (=> d!675150 t!203750))

(assert (=> b!2281950 t!203750))

(declare-fun t!203752 () Bool)

(declare-fun tb!135761 () Bool)

(assert (=> (and b!2282762 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 (t!203548 rules!1750))))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456))))) t!203752) tb!135761))

(declare-fun result!165530 () Bool)

(assert (= result!165530 result!165366))

(assert (=> d!675174 t!203752))

(declare-fun b_and!180447 () Bool)

(declare-fun tp!723361 () Bool)

(assert (=> b!2282762 (= tp!723361 (and (=> t!203748 result!165526) (=> t!203746 result!165524) (=> t!203750 result!165528) (=> t!203752 result!165530) (=> t!203744 result!165522) b_and!180447))))

(declare-fun e!1462338 () Bool)

(assert (=> b!2282762 (= e!1462338 (and tp!723358 tp!723361))))

(declare-fun tp!723359 () Bool)

(declare-fun e!1462337 () Bool)

(declare-fun b!2282761 () Bool)

(assert (=> b!2282761 (= e!1462337 (and tp!723359 (inv!36729 (tag!4827 (h!32551 (t!203548 (t!203548 rules!1750))))) (inv!36732 (transformation!4337 (h!32551 (t!203548 (t!203548 rules!1750))))) e!1462338))))

(declare-fun b!2282760 () Bool)

(declare-fun e!1462339 () Bool)

(declare-fun tp!723360 () Bool)

(assert (=> b!2282760 (= e!1462339 (and e!1462337 tp!723360))))

(assert (=> b!2282030 (= tp!723236 e!1462339)))

(assert (= b!2282761 b!2282762))

(assert (= b!2282760 b!2282761))

(assert (= (and b!2282030 ((_ is Cons!27150) (t!203548 (t!203548 rules!1750)))) b!2282760))

(declare-fun m!2710949 () Bool)

(assert (=> b!2282761 m!2710949))

(declare-fun m!2710951 () Bool)

(assert (=> b!2282761 m!2710951))

(declare-fun b!2282769 () Bool)

(declare-fun e!1462345 () Bool)

(declare-fun tp!723362 () Bool)

(assert (=> b!2282769 (= e!1462345 (and tp_is_empty!10591 tp!723362))))

(assert (=> b!2281993 (= tp!723193 e!1462345)))

(assert (= (and b!2281993 ((_ is Cons!27147) (t!203545 (t!203545 suffix!886)))) b!2282769))

(declare-fun b!2282771 () Bool)

(declare-fun e!1462346 () Bool)

(declare-fun tp!723366 () Bool)

(declare-fun tp!723367 () Bool)

(assert (=> b!2282771 (= e!1462346 (and tp!723366 tp!723367))))

(declare-fun b!2282772 () Bool)

(declare-fun tp!723364 () Bool)

(assert (=> b!2282772 (= e!1462346 tp!723364)))

(declare-fun b!2282773 () Bool)

(declare-fun tp!723363 () Bool)

(declare-fun tp!723365 () Bool)

(assert (=> b!2282773 (= e!1462346 (and tp!723363 tp!723365))))

(assert (=> b!2282001 (= tp!723201 e!1462346)))

(declare-fun b!2282770 () Bool)

(assert (=> b!2282770 (= e!1462346 tp_is_empty!10591)))

(assert (= (and b!2282001 ((_ is ElementMatch!6685) (reg!7014 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282770))

(assert (= (and b!2282001 ((_ is Concat!11185) (reg!7014 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282771))

(assert (= (and b!2282001 ((_ is Star!6685) (reg!7014 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282772))

(assert (= (and b!2282001 ((_ is Union!6685) (reg!7014 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282773))

(declare-fun tp!723368 () Bool)

(declare-fun tp!723370 () Bool)

(declare-fun e!1462352 () Bool)

(declare-fun b!2282776 () Bool)

(assert (=> b!2282776 (= e!1462352 (and (inv!36736 (left!20587 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456)))))) tp!723368 (inv!36736 (right!20917 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456)))))) tp!723370))))

(declare-fun b!2282778 () Bool)

(declare-fun e!1462351 () Bool)

(declare-fun tp!723369 () Bool)

(assert (=> b!2282778 (= e!1462351 tp!723369)))

(declare-fun b!2282777 () Bool)

(assert (=> b!2282777 (= e!1462352 (and (inv!36742 (xs!11764 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456)))))) e!1462351))))

(assert (=> b!2281710 (= tp!723110 (and (inv!36736 (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456))))) e!1462352))))

(assert (= (and b!2281710 ((_ is Node!8822) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456)))))) b!2282776))

(assert (= b!2282777 b!2282778))

(assert (= (and b!2281710 ((_ is Leaf!12976) (c!361992 (dynLambda!11781 (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))) (value!137424 (head!4948 tokens!456)))))) b!2282777))

(declare-fun m!2710953 () Bool)

(assert (=> b!2282776 m!2710953))

(declare-fun m!2710955 () Bool)

(assert (=> b!2282776 m!2710955))

(declare-fun m!2710957 () Bool)

(assert (=> b!2282777 m!2710957))

(assert (=> b!2281710 m!2709689))

(declare-fun b!2282790 () Bool)

(declare-fun e!1462353 () Bool)

(declare-fun tp!723374 () Bool)

(declare-fun tp!723375 () Bool)

(assert (=> b!2282790 (= e!1462353 (and tp!723374 tp!723375))))

(declare-fun b!2282791 () Bool)

(declare-fun tp!723372 () Bool)

(assert (=> b!2282791 (= e!1462353 tp!723372)))

(declare-fun b!2282792 () Bool)

(declare-fun tp!723371 () Bool)

(declare-fun tp!723373 () Bool)

(assert (=> b!2282792 (= e!1462353 (and tp!723371 tp!723373))))

(assert (=> b!2282000 (= tp!723203 e!1462353)))

(declare-fun b!2282789 () Bool)

(assert (=> b!2282789 (= e!1462353 tp_is_empty!10591)))

(assert (= (and b!2282000 ((_ is ElementMatch!6685) (regOne!13882 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282789))

(assert (= (and b!2282000 ((_ is Concat!11185) (regOne!13882 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282790))

(assert (= (and b!2282000 ((_ is Star!6685) (regOne!13882 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282791))

(assert (= (and b!2282000 ((_ is Union!6685) (regOne!13882 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282792))

(declare-fun b!2282794 () Bool)

(declare-fun e!1462354 () Bool)

(declare-fun tp!723379 () Bool)

(declare-fun tp!723380 () Bool)

(assert (=> b!2282794 (= e!1462354 (and tp!723379 tp!723380))))

(declare-fun b!2282795 () Bool)

(declare-fun tp!723377 () Bool)

(assert (=> b!2282795 (= e!1462354 tp!723377)))

(declare-fun b!2282796 () Bool)

(declare-fun tp!723376 () Bool)

(declare-fun tp!723378 () Bool)

(assert (=> b!2282796 (= e!1462354 (and tp!723376 tp!723378))))

(assert (=> b!2282000 (= tp!723204 e!1462354)))

(declare-fun b!2282793 () Bool)

(assert (=> b!2282793 (= e!1462354 tp_is_empty!10591)))

(assert (= (and b!2282000 ((_ is ElementMatch!6685) (regTwo!13882 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282793))

(assert (= (and b!2282000 ((_ is Concat!11185) (regTwo!13882 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282794))

(assert (= (and b!2282000 ((_ is Star!6685) (regTwo!13882 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282795))

(assert (= (and b!2282000 ((_ is Union!6685) (regTwo!13882 (regex!4337 (rule!6663 (h!32550 tokens!456)))))) b!2282796))

(declare-fun b_lambda!72661 () Bool)

(assert (= b_lambda!72655 (or (and b!2281475 b_free!68231 (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))))) (and b!2282762 b_free!68259 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 (t!203548 rules!1750))))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))))) (and b!2281498 b_free!68223 (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))))) (and b!2282032 b_free!68251 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))))) (and b!2281500 b_free!68227 (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))))) (and b!2282016 b_free!68247) (and b!2282686 b_free!68255 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 (t!203547 tokens!456)))))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))))) (and b!2281469 b_free!68235 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))))) b_lambda!72661)))

(declare-fun b_lambda!72663 () Bool)

(assert (= b_lambda!72659 (or d!675104 b_lambda!72663)))

(declare-fun bs!456715 () Bool)

(declare-fun d!675696 () Bool)

(assert (= bs!456715 (and d!675696 d!675104)))

(assert (=> bs!456715 (= (dynLambda!11785 lambda!85655 lt!846791) (= (list!10585 (dynLambda!11781 (toChars!5978 (transformation!4337 r!2363)) (dynLambda!11777 (toValue!6119 (transformation!4337 r!2363)) lt!846791))) (list!10585 lt!846791)))))

(declare-fun b_lambda!72667 () Bool)

(assert (=> (not b_lambda!72667) (not bs!456715)))

(assert (=> bs!456715 t!203584))

(declare-fun b_and!180449 () Bool)

(assert (= b_and!180421 (and (=> t!203584 result!165352) b_and!180449)))

(assert (=> bs!456715 t!203640))

(declare-fun b_and!180451 () Bool)

(assert (= b_and!180425 (and (=> t!203640 result!165424) b_and!180451)))

(assert (=> bs!456715 t!203586))

(declare-fun b_and!180453 () Bool)

(assert (= b_and!180417 (and (=> t!203586 result!165354) b_and!180453)))

(assert (=> bs!456715 t!203582))

(declare-fun b_and!180455 () Bool)

(assert (= b_and!180419 (and (=> t!203582 result!165348) b_and!180455)))

(assert (=> bs!456715 t!203744))

(declare-fun b_and!180457 () Bool)

(assert (= b_and!180447 (and (=> t!203744 result!165522) b_and!180457)))

(assert (=> bs!456715 t!203632))

(declare-fun b_and!180459 () Bool)

(assert (= b_and!180427 (and (=> t!203632 result!165414) b_and!180459)))

(assert (=> bs!456715 t!203588))

(declare-fun b_and!180461 () Bool)

(assert (= b_and!180423 (and (=> t!203588 result!165356) b_and!180461)))

(assert (=> bs!456715 t!203730))

(declare-fun b_and!180463 () Bool)

(assert (= b_and!180443 (and (=> t!203730 result!165508) b_and!180463)))

(declare-fun b_lambda!72669 () Bool)

(assert (=> (not b_lambda!72669) (not bs!456715)))

(assert (=> bs!456715 t!203570))

(declare-fun b_and!180465 () Bool)

(assert (= b_and!180391 (and (=> t!203570 result!165336) b_and!180465)))

(assert (=> bs!456715 t!203566))

(declare-fun b_and!180467 () Bool)

(assert (= b_and!180385 (and (=> t!203566 result!165330) b_and!180467)))

(assert (=> bs!456715 t!203630))

(declare-fun b_and!180469 () Bool)

(assert (= b_and!180381 (and (=> t!203630 result!165412) b_and!180469)))

(assert (=> bs!456715 t!203568))

(declare-fun b_and!180471 () Bool)

(assert (= b_and!180383 (and (=> t!203568 result!165334) b_and!180471)))

(assert (=> bs!456715 t!203740))

(declare-fun b_and!180473 () Bool)

(assert (= b_and!180445 (and (=> t!203740 result!165518) b_and!180473)))

(assert (=> bs!456715 t!203572))

(declare-fun b_and!180475 () Bool)

(assert (= b_and!180389 (and (=> t!203572 result!165338) b_and!180475)))

(assert (=> bs!456715 t!203638))

(declare-fun b_and!180477 () Bool)

(assert (= b_and!180387 (and (=> t!203638 result!165422) b_and!180477)))

(assert (=> bs!456715 t!203726))

(declare-fun b_and!180479 () Bool)

(assert (= b_and!180441 (and (=> t!203726 result!165504) b_and!180479)))

(assert (=> bs!456715 m!2709577))

(assert (=> bs!456715 m!2709579))

(assert (=> bs!456715 m!2709525))

(assert (=> bs!456715 m!2709575))

(assert (=> bs!456715 m!2709525))

(assert (=> bs!456715 m!2709577))

(assert (=> d!675540 d!675696))

(declare-fun b_lambda!72665 () Bool)

(assert (= b_lambda!72617 (or (and b!2282686 b_free!68255 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 (t!203547 tokens!456)))))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))))) (and b!2281500 b_free!68227 (= (toChars!5978 (transformation!4337 (h!32551 rules!1750))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))))) (and b!2282016 b_free!68247 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 (t!203547 tokens!456))))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))))) (and b!2282032 b_free!68251 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 rules!1750)))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))))) (and b!2282762 b_free!68259 (= (toChars!5978 (transformation!4337 (h!32551 (t!203548 (t!203548 rules!1750))))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))))) (and b!2281469 b_free!68235 (= (toChars!5978 (transformation!4337 (rule!6663 (h!32550 tokens!456)))) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))))) (and b!2281475 b_free!68231 (= (toChars!5978 (transformation!4337 otherR!12)) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))))) (and b!2281498 b_free!68223 (= (toChars!5978 (transformation!4337 r!2363)) (toChars!5978 (transformation!4337 (rule!6663 (head!4948 tokens!456)))))) b_lambda!72665)))

(check-sat (not d!675484) (not b!2282347) b_and!180459 (not b!2282299) (not d!675482) (not b!2282697) (not b!2282703) (not d!675430) (not b!2282088) (not b!2282092) (not bm!136483) (not b!2282569) (not b!2282742) (not b!2282087) (not b!2282050) (not b_next!68925) (not b!2282076) (not b!2282652) (not b!2282175) (not b!2282689) (not bm!136443) (not b!2282705) (not d!675428) (not b!2282771) (not b!2282346) (not b!2282152) b_and!180469 (not d!675348) (not d!675652) (not b!2282153) (not b!2282144) (not b!2282548) b_and!180477 b_and!180451 (not b!2282790) (not b!2282663) (not d!675540) (not b!2282741) (not d!675300) (not b!2282709) (not b!2282115) (not b!2282562) (not b!2282197) (not d!675436) (not b!2282710) (not bm!136432) (not b!2282678) (not b!2282726) (not b_lambda!72639) (not d!675350) (not b!2282173) (not b!2282290) (not b!2282717) (not b!2282760) (not d!675358) (not b!2282695) (not d!675500) (not b!2282688) (not b!2282119) (not b!2282735) (not b!2282375) (not d!675464) (not b!2282166) b_and!180449 (not b!2282564) (not bm!136440) (not b!2282701) (not b!2282151) (not d!675426) (not b!2282727) (not b!2282683) (not b_lambda!72641) (not b!2282545) (not b!2282120) (not b!2282155) (not b!2282549) (not d!675536) (not b!2282552) (not b!2282677) (not d!675542) (not b!2282744) (not b!2282243) (not b!2282731) (not b!2282112) (not b!2282309) (not b!2282772) (not b!2282598) (not b!2282725) (not d!675344) (not b!2282421) (not b!2282680) (not d!675496) (not d!675666) (not b!2282739) (not b!2282791) b_and!180461 (not b!2282676) (not d!675440) (not b_lambda!72667) (not b_lambda!72663) (not b!2282558) (not b_next!68959) (not b!2282550) (not b!2282191) (not b!2282169) (not b!2282690) (not b!2282066) (not b!2282303) (not bm!136442) (not b!2282416) (not d!675338) (not b_lambda!72645) (not d!675538) (not b!2282108) (not b!2281677) (not b!2281710) (not d!675368) (not b!2282559) (not b!2282113) (not b_next!68951) (not d!675310) (not b!2282104) (not b!2282662) (not b_next!68927) (not b!2281615) (not b!2282757) (not b!2282729) (not b!2282551) (not b!2282330) b_and!180465 (not b!2282707) (not b_next!68953) (not b!2282682) (not d!675328) (not b!2282201) (not b!2282253) (not b!2282651) (not b!2282673) (not b!2282721) (not b!2282773) (not b!2282694) (not b!2282356) (not b!2282723) (not b_lambda!72643) (not d!675668) (not b!2282698) (not d!675562) (not bm!136444) (not b!2282074) (not b!2282715) (not b!2282413) (not b!2282116) (not d!675476) (not b!2282656) (not b!2282743) (not b!2282777) (not d!675382) (not b_next!68933) (not b_next!68937) (not b!2282778) (not b!2282244) (not b!2282423) (not b!2282168) (not b!2282745) (not b!2282733) (not b!2282351) (not bm!136485) (not d!675370) (not b!2282090) (not b!2282734) (not b_next!68935) (not b!2282684) (not b_next!68963) (not bm!136439) b_and!180475 (not b!2282792) (not b!2282107) b_and!180457 (not b!2282604) (not b!2282681) (not b!2282102) (not d!675326) (not b!2282661) (not b!2282331) (not tb!135675) (not b!2282293) (not b!2282605) (not d!675544) (not b!2282730) (not b!2282714) (not b!2282547) (not b!2282722) (not b!2282776) (not b!2282758) (not b!2282719) (not b!2282748) (not b!2282396) (not d!675388) (not b!2282672) (not b!2282371) (not bm!136473) (not b!2282122) (not tb!135711) (not d!675546) (not d!675386) (not b!2282105) (not d!675532) (not b!2282196) (not b!2282746) (not d!675688) (not b!2282300) (not tb!135663) (not b_next!68955) (not b!2282395) (not d!675270) (not b!2282292) (not d!675512) (not b!2282796) (not b!2282190) (not b!2282711) (not b!2282769) (not b!2282311) (not b_lambda!72665) (not b_next!68939) (not b!2282753) b_and!180453 (not d!675662) (not d!675526) (not b!2282121) (not b_next!68931) (not b!2282699) (not b!2282546) (not b!2282759) (not b!2282693) (not b!2282738) (not b!2282655) (not b!2282554) (not b!2282565) (not b!2282065) (not b!2282702) (not d!675320) (not d!675308) (not b!2282194) (not b!2282750) (not b_lambda!72669) (not d!675346) (not d!675314) (not b_lambda!72647) (not b!2282355) (not b!2282414) (not d!675558) (not d!675498) (not b!2282246) (not b!2282749) (not b!2282685) (not b!2282294) b_and!180471 (not b_next!68957) b_and!180455 (not d!675550) (not b!2282354) (not b!2282752) (not b!2282288) (not b!2282361) (not b!2282713) (not b!2282072) (not b_lambda!72635) (not b!2282794) (not d!675522) (not d!675354) (not d!675656) (not d!675568) (not b!2282754) (not b_next!68929) (not d!675664) (not d!675658) (not b!2282310) (not b!2282761) (not b!2282358) (not b_next!68961) (not d!675470) (not b!2282691) (not b!2282187) (not b!2282601) b_and!180467 (not b_lambda!72637) (not b!2282674) (not b!2282737) (not d!675514) b_and!180473 (not b!2282795) (not b!2282706) (not b!2282659) (not d!675654) (not b!2282301) (not b!2282117) (not b_next!68949) (not b!2282118) (not b!2282657) tp_is_empty!10591 (not b!2282352) b_and!180463 (not b!2282262) (not bs!456715) (not d!675384) b_and!180479 (not b!2282362) (not b!2282718) (not b!2282756) (not d!675694) (not d!675356) (not b!2282329) (not b_lambda!72661) (not d!675564))
(check-sat b_and!180459 (not b_next!68925) b_and!180469 b_and!180449 b_and!180457 b_and!180471 b_and!180479 b_and!180477 b_and!180451 b_and!180461 (not b_next!68959) (not b_next!68951) (not b_next!68927) b_and!180465 (not b_next!68953) (not b_next!68933) (not b_next!68937) (not b_next!68963) b_and!180475 (not b_next!68935) (not b_next!68955) (not b_next!68939) b_and!180453 (not b_next!68931) (not b_next!68957) b_and!180455 (not b_next!68929) (not b_next!68961) b_and!180467 b_and!180473 b_and!180463 (not b_next!68949))
