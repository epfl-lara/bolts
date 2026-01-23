; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361548 () Bool)

(assert start!361548)

(declare-fun b!3857136 () Bool)

(declare-fun b_free!103549 () Bool)

(declare-fun b_next!104253 () Bool)

(assert (=> b!3857136 (= b_free!103549 (not b_next!104253))))

(declare-fun tp!1169134 () Bool)

(declare-fun b_and!288579 () Bool)

(assert (=> b!3857136 (= tp!1169134 b_and!288579)))

(declare-fun b_free!103551 () Bool)

(declare-fun b_next!104255 () Bool)

(assert (=> b!3857136 (= b_free!103551 (not b_next!104255))))

(declare-fun tp!1169133 () Bool)

(declare-fun b_and!288581 () Bool)

(assert (=> b!3857136 (= tp!1169133 b_and!288581)))

(declare-fun b!3857122 () Bool)

(declare-fun b_free!103553 () Bool)

(declare-fun b_next!104257 () Bool)

(assert (=> b!3857122 (= b_free!103553 (not b_next!104257))))

(declare-fun tp!1169132 () Bool)

(declare-fun b_and!288583 () Bool)

(assert (=> b!3857122 (= tp!1169132 b_and!288583)))

(declare-fun b_free!103555 () Bool)

(declare-fun b_next!104259 () Bool)

(assert (=> b!3857122 (= b_free!103555 (not b_next!104259))))

(declare-fun tp!1169148 () Bool)

(declare-fun b_and!288585 () Bool)

(assert (=> b!3857122 (= tp!1169148 b_and!288585)))

(declare-fun b!3857142 () Bool)

(declare-fun b_free!103557 () Bool)

(declare-fun b_next!104261 () Bool)

(assert (=> b!3857142 (= b_free!103557 (not b_next!104261))))

(declare-fun tp!1169137 () Bool)

(declare-fun b_and!288587 () Bool)

(assert (=> b!3857142 (= tp!1169137 b_and!288587)))

(declare-fun b_free!103559 () Bool)

(declare-fun b_next!104263 () Bool)

(assert (=> b!3857142 (= b_free!103559 (not b_next!104263))))

(declare-fun tp!1169136 () Bool)

(declare-fun b_and!288589 () Bool)

(assert (=> b!3857142 (= tp!1169136 b_and!288589)))

(declare-fun res!1561471 () Bool)

(declare-fun e!2384283 () Bool)

(assert (=> start!361548 (=> (not res!1561471) (not e!2384283))))

(declare-datatypes ((LexerInterface!5911 0))(
  ( (LexerInterfaceExt!5908 (__x!25321 Int)) (Lexer!5909) )
))
(declare-fun thiss!20629 () LexerInterface!5911)

(get-info :version)

(assert (=> start!361548 (= res!1561471 ((_ is Lexer!5909) thiss!20629))))

(assert (=> start!361548 e!2384283))

(declare-fun e!2384286 () Bool)

(assert (=> start!361548 e!2384286))

(assert (=> start!361548 true))

(declare-fun e!2384279 () Bool)

(assert (=> start!361548 e!2384279))

(declare-fun e!2384282 () Bool)

(assert (=> start!361548 e!2384282))

(declare-fun e!2384272 () Bool)

(assert (=> start!361548 e!2384272))

(declare-fun e!2384294 () Bool)

(assert (=> start!361548 e!2384294))

(declare-fun e!2384296 () Bool)

(assert (=> start!361548 e!2384296))

(declare-fun b!3857119 () Bool)

(declare-fun res!1561479 () Bool)

(assert (=> b!3857119 (=> (not res!1561479) (not e!2384283))))

(declare-datatypes ((List!40996 0))(
  ( (Nil!40872) (Cons!40872 (h!46292 (_ BitVec 16)) (t!313007 List!40996)) )
))
(declare-datatypes ((TokenValue!6552 0))(
  ( (FloatLiteralValue!13104 (text!46309 List!40996)) (TokenValueExt!6551 (__x!25322 Int)) (Broken!32760 (value!200785 List!40996)) (Object!6675) (End!6552) (Def!6552) (Underscore!6552) (Match!6552) (Else!6552) (Error!6552) (Case!6552) (If!6552) (Extends!6552) (Abstract!6552) (Class!6552) (Val!6552) (DelimiterValue!13104 (del!6612 List!40996)) (KeywordValue!6558 (value!200786 List!40996)) (CommentValue!13104 (value!200787 List!40996)) (WhitespaceValue!13104 (value!200788 List!40996)) (IndentationValue!6552 (value!200789 List!40996)) (String!46477) (Int32!6552) (Broken!32761 (value!200790 List!40996)) (Boolean!6553) (Unit!58543) (OperatorValue!6555 (op!6612 List!40996)) (IdentifierValue!13104 (value!200791 List!40996)) (IdentifierValue!13105 (value!200792 List!40996)) (WhitespaceValue!13105 (value!200793 List!40996)) (True!13104) (False!13104) (Broken!32762 (value!200794 List!40996)) (Broken!32763 (value!200795 List!40996)) (True!13105) (RightBrace!6552) (RightBracket!6552) (Colon!6552) (Null!6552) (Comma!6552) (LeftBracket!6552) (False!13105) (LeftBrace!6552) (ImaginaryLiteralValue!6552 (text!46310 List!40996)) (StringLiteralValue!19656 (value!200796 List!40996)) (EOFValue!6552 (value!200797 List!40996)) (IdentValue!6552 (value!200798 List!40996)) (DelimiterValue!13105 (value!200799 List!40996)) (DedentValue!6552 (value!200800 List!40996)) (NewLineValue!6552 (value!200801 List!40996)) (IntegerValue!19656 (value!200802 (_ BitVec 32)) (text!46311 List!40996)) (IntegerValue!19657 (value!200803 Int) (text!46312 List!40996)) (Times!6552) (Or!6552) (Equal!6552) (Minus!6552) (Broken!32764 (value!200804 List!40996)) (And!6552) (Div!6552) (LessEqual!6552) (Mod!6552) (Concat!17779) (Not!6552) (Plus!6552) (SpaceValue!6552 (value!200805 List!40996)) (IntegerValue!19658 (value!200806 Int) (text!46313 List!40996)) (StringLiteralValue!19657 (text!46314 List!40996)) (FloatLiteralValue!13105 (text!46315 List!40996)) (BytesLiteralValue!6552 (value!200807 List!40996)) (CommentValue!13105 (value!200808 List!40996)) (StringLiteralValue!19658 (value!200809 List!40996)) (ErrorTokenValue!6552 (msg!6613 List!40996)) )
))
(declare-datatypes ((C!22640 0))(
  ( (C!22641 (val!13414 Int)) )
))
(declare-datatypes ((Regex!11227 0))(
  ( (ElementMatch!11227 (c!671728 C!22640)) (Concat!17780 (regOne!22966 Regex!11227) (regTwo!22966 Regex!11227)) (EmptyExpr!11227) (Star!11227 (reg!11556 Regex!11227)) (EmptyLang!11227) (Union!11227 (regOne!22967 Regex!11227) (regTwo!22967 Regex!11227)) )
))
(declare-datatypes ((String!46478 0))(
  ( (String!46479 (value!200810 String)) )
))
(declare-datatypes ((List!40997 0))(
  ( (Nil!40873) (Cons!40873 (h!46293 C!22640) (t!313008 List!40997)) )
))
(declare-datatypes ((IArray!25071 0))(
  ( (IArray!25072 (innerList!12593 List!40997)) )
))
(declare-datatypes ((Conc!12533 0))(
  ( (Node!12533 (left!31508 Conc!12533) (right!31838 Conc!12533) (csize!25296 Int) (cheight!12744 Int)) (Leaf!19401 (xs!15839 IArray!25071) (csize!25297 Int)) (Empty!12533) )
))
(declare-datatypes ((BalanceConc!24660 0))(
  ( (BalanceConc!24661 (c!671729 Conc!12533)) )
))
(declare-datatypes ((TokenValueInjection!12532 0))(
  ( (TokenValueInjection!12533 (toValue!8750 Int) (toChars!8609 Int)) )
))
(declare-datatypes ((Rule!12444 0))(
  ( (Rule!12445 (regex!6322 Regex!11227) (tag!7182 String!46478) (isSeparator!6322 Bool) (transformation!6322 TokenValueInjection!12532)) )
))
(declare-datatypes ((Token!11782 0))(
  ( (Token!11783 (value!200811 TokenValue!6552) (rule!9184 Rule!12444) (size!30745 Int) (originalCharacters!6922 List!40997)) )
))
(declare-datatypes ((List!40998 0))(
  ( (Nil!40874) (Cons!40874 (h!46294 Token!11782) (t!313009 List!40998)) )
))
(declare-fun prefixTokens!80 () List!40998)

(declare-fun isEmpty!24202 (List!40998) Bool)

(assert (=> b!3857119 (= res!1561479 (not (isEmpty!24202 prefixTokens!80)))))

(declare-fun b!3857120 () Bool)

(declare-fun e!2384281 () Bool)

(declare-fun e!2384276 () Bool)

(assert (=> b!3857120 (= e!2384281 e!2384276)))

(declare-fun res!1561477 () Bool)

(assert (=> b!3857120 (=> (not res!1561477) (not e!2384276))))

(declare-datatypes ((tuple2!40070 0))(
  ( (tuple2!40071 (_1!23169 Token!11782) (_2!23169 List!40997)) )
))
(declare-datatypes ((Option!8740 0))(
  ( (None!8739) (Some!8739 (v!39037 tuple2!40070)) )
))
(declare-fun lt!1339981 () Option!8740)

(assert (=> b!3857120 (= res!1561477 ((_ is Some!8739) lt!1339981))))

(declare-fun lt!1339979 () List!40997)

(declare-datatypes ((List!40999 0))(
  ( (Nil!40875) (Cons!40875 (h!46295 Rule!12444) (t!313010 List!40999)) )
))
(declare-fun rules!2768 () List!40999)

(declare-fun maxPrefix!3215 (LexerInterface!5911 List!40999 List!40997) Option!8740)

(assert (=> b!3857120 (= lt!1339981 (maxPrefix!3215 thiss!20629 rules!2768 lt!1339979))))

(declare-fun b!3857121 () Bool)

(declare-fun res!1561467 () Bool)

(assert (=> b!3857121 (=> (not res!1561467) (not e!2384281))))

(declare-fun suffixResult!91 () List!40997)

(declare-fun suffix!1176 () List!40997)

(declare-fun suffixTokens!72 () List!40998)

(declare-datatypes ((tuple2!40072 0))(
  ( (tuple2!40073 (_1!23170 List!40998) (_2!23170 List!40997)) )
))
(declare-fun lexList!1679 (LexerInterface!5911 List!40999 List!40997) tuple2!40072)

(assert (=> b!3857121 (= res!1561467 (= (lexList!1679 thiss!20629 rules!2768 suffix!1176) (tuple2!40073 suffixTokens!72 suffixResult!91)))))

(declare-fun e!2384297 () Bool)

(assert (=> b!3857122 (= e!2384297 (and tp!1169132 tp!1169148))))

(declare-fun b!3857123 () Bool)

(declare-fun e!2384274 () Bool)

(declare-fun e!2384288 () Bool)

(assert (=> b!3857123 (= e!2384274 e!2384288)))

(declare-fun res!1561469 () Bool)

(assert (=> b!3857123 (=> res!1561469 e!2384288)))

(declare-fun lt!1339982 () List!40997)

(declare-fun matchR!5374 (Regex!11227 List!40997) Bool)

(assert (=> b!3857123 (= res!1561469 (not (matchR!5374 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) lt!1339982)))))

(declare-fun lt!1339972 () TokenValue!6552)

(declare-fun lt!1339988 () Int)

(declare-fun maxPrefixOneRule!2297 (LexerInterface!5911 Rule!12444 List!40997) Option!8740)

(assert (=> b!3857123 (= (maxPrefixOneRule!2297 thiss!20629 (rule!9184 (_1!23169 (v!39037 lt!1339981))) lt!1339979) (Some!8739 (tuple2!40071 (Token!11783 lt!1339972 (rule!9184 (_1!23169 (v!39037 lt!1339981))) lt!1339988 lt!1339982) (_2!23169 (v!39037 lt!1339981)))))))

(declare-datatypes ((Unit!58544 0))(
  ( (Unit!58545) )
))
(declare-fun lt!1339991 () Unit!58544)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1195 (LexerInterface!5911 List!40999 List!40997 List!40997 List!40997 Rule!12444) Unit!58544)

(assert (=> b!3857123 (= lt!1339991 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1195 thiss!20629 rules!2768 lt!1339982 lt!1339979 (_2!23169 (v!39037 lt!1339981)) (rule!9184 (_1!23169 (v!39037 lt!1339981)))))))

(declare-fun b!3857124 () Bool)

(declare-fun e!2384291 () Bool)

(assert (=> b!3857124 (= e!2384291 (not (= prefixTokens!80 Nil!40874)))))

(declare-fun b!3857125 () Bool)

(declare-fun e!2384287 () Bool)

(declare-fun e!2384293 () Bool)

(assert (=> b!3857125 (= e!2384287 e!2384293)))

(declare-fun res!1561481 () Bool)

(assert (=> b!3857125 (=> res!1561481 e!2384293)))

(declare-fun lt!1339987 () Int)

(declare-fun lt!1339978 () Int)

(assert (=> b!3857125 (= res!1561481 (>= lt!1339987 lt!1339978))))

(declare-fun size!30746 (List!40997) Int)

(assert (=> b!3857125 (= lt!1339978 (size!30746 suffix!1176))))

(assert (=> b!3857125 (= lt!1339987 (size!30746 (_2!23169 (v!39037 lt!1339981))))))

(declare-fun e!2384270 () Bool)

(declare-fun e!2384277 () Bool)

(declare-fun tp!1169141 () Bool)

(declare-fun b!3857126 () Bool)

(declare-fun inv!21 (TokenValue!6552) Bool)

(assert (=> b!3857126 (= e!2384277 (and (inv!21 (value!200811 (h!46294 suffixTokens!72))) e!2384270 tp!1169141))))

(declare-fun b!3857127 () Bool)

(declare-fun res!1561474 () Bool)

(assert (=> b!3857127 (=> res!1561474 e!2384291)))

(declare-fun lt!1339973 () tuple2!40070)

(assert (=> b!3857127 (= res!1561474 (>= (size!30746 (_2!23169 lt!1339973)) lt!1339978))))

(declare-fun e!2384271 () Bool)

(declare-fun b!3857128 () Bool)

(declare-fun tp!1169135 () Bool)

(declare-fun e!2384280 () Bool)

(assert (=> b!3857128 (= e!2384271 (and (inv!21 (value!200811 (h!46294 prefixTokens!80))) e!2384280 tp!1169135))))

(declare-fun b!3857129 () Bool)

(declare-fun tp!1169142 () Bool)

(declare-fun e!2384275 () Bool)

(declare-fun e!2384285 () Bool)

(declare-fun inv!55032 (String!46478) Bool)

(declare-fun inv!55035 (TokenValueInjection!12532) Bool)

(assert (=> b!3857129 (= e!2384285 (and tp!1169142 (inv!55032 (tag!7182 (h!46295 rules!2768))) (inv!55035 (transformation!6322 (h!46295 rules!2768))) e!2384275))))

(declare-fun b!3857130 () Bool)

(declare-fun res!1561482 () Bool)

(assert (=> b!3857130 (=> res!1561482 e!2384287)))

(declare-fun lt!1339975 () tuple2!40072)

(assert (=> b!3857130 (= res!1561482 (or (not (= lt!1339975 (tuple2!40073 (_1!23170 lt!1339975) (_2!23170 lt!1339975)))) (= (_2!23169 (v!39037 lt!1339981)) suffix!1176)))))

(declare-fun b!3857131 () Bool)

(assert (=> b!3857131 (= e!2384276 (not e!2384287))))

(declare-fun res!1561470 () Bool)

(assert (=> b!3857131 (=> res!1561470 e!2384287)))

(declare-fun lt!1339986 () List!40997)

(assert (=> b!3857131 (= res!1561470 (not (= lt!1339986 lt!1339979)))))

(assert (=> b!3857131 (= lt!1339975 (lexList!1679 thiss!20629 rules!2768 (_2!23169 (v!39037 lt!1339981))))))

(declare-fun lt!1339985 () List!40997)

(assert (=> b!3857131 (and (= (size!30745 (_1!23169 (v!39037 lt!1339981))) lt!1339988) (= (originalCharacters!6922 (_1!23169 (v!39037 lt!1339981))) lt!1339982) (= (v!39037 lt!1339981) (tuple2!40071 (Token!11783 lt!1339972 (rule!9184 (_1!23169 (v!39037 lt!1339981))) lt!1339988 lt!1339982) lt!1339985)))))

(assert (=> b!3857131 (= lt!1339988 (size!30746 lt!1339982))))

(declare-fun e!2384284 () Bool)

(assert (=> b!3857131 e!2384284))

(declare-fun res!1561473 () Bool)

(assert (=> b!3857131 (=> (not res!1561473) (not e!2384284))))

(assert (=> b!3857131 (= res!1561473 (= (value!200811 (_1!23169 (v!39037 lt!1339981))) lt!1339972))))

(declare-fun apply!9565 (TokenValueInjection!12532 BalanceConc!24660) TokenValue!6552)

(declare-fun seqFromList!4593 (List!40997) BalanceConc!24660)

(assert (=> b!3857131 (= lt!1339972 (apply!9565 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) (seqFromList!4593 lt!1339982)))))

(assert (=> b!3857131 (= (_2!23169 (v!39037 lt!1339981)) lt!1339985)))

(declare-fun lt!1339977 () Unit!58544)

(declare-fun lemmaSamePrefixThenSameSuffix!1642 (List!40997 List!40997 List!40997 List!40997 List!40997) Unit!58544)

(assert (=> b!3857131 (= lt!1339977 (lemmaSamePrefixThenSameSuffix!1642 lt!1339982 (_2!23169 (v!39037 lt!1339981)) lt!1339982 lt!1339985 lt!1339979))))

(declare-fun getSuffix!1876 (List!40997 List!40997) List!40997)

(assert (=> b!3857131 (= lt!1339985 (getSuffix!1876 lt!1339979 lt!1339982))))

(declare-fun isPrefix!3421 (List!40997 List!40997) Bool)

(assert (=> b!3857131 (isPrefix!3421 lt!1339982 lt!1339986)))

(declare-fun ++!10401 (List!40997 List!40997) List!40997)

(assert (=> b!3857131 (= lt!1339986 (++!10401 lt!1339982 (_2!23169 (v!39037 lt!1339981))))))

(declare-fun lt!1339983 () Unit!58544)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2284 (List!40997 List!40997) Unit!58544)

(assert (=> b!3857131 (= lt!1339983 (lemmaConcatTwoListThenFirstIsPrefix!2284 lt!1339982 (_2!23169 (v!39037 lt!1339981))))))

(declare-fun list!15216 (BalanceConc!24660) List!40997)

(declare-fun charsOf!4150 (Token!11782) BalanceConc!24660)

(assert (=> b!3857131 (= lt!1339982 (list!15216 (charsOf!4150 (_1!23169 (v!39037 lt!1339981)))))))

(declare-fun ruleValid!2274 (LexerInterface!5911 Rule!12444) Bool)

(assert (=> b!3857131 (ruleValid!2274 thiss!20629 (rule!9184 (_1!23169 (v!39037 lt!1339981))))))

(declare-fun lt!1339990 () Unit!58544)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1354 (LexerInterface!5911 Rule!12444 List!40999) Unit!58544)

(assert (=> b!3857131 (= lt!1339990 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1354 thiss!20629 (rule!9184 (_1!23169 (v!39037 lt!1339981))) rules!2768))))

(declare-fun lt!1339974 () Unit!58544)

(declare-fun lemmaCharactersSize!983 (Token!11782) Unit!58544)

(assert (=> b!3857131 (= lt!1339974 (lemmaCharactersSize!983 (_1!23169 (v!39037 lt!1339981))))))

(declare-fun b!3857132 () Bool)

(declare-fun res!1561478 () Bool)

(assert (=> b!3857132 (=> (not res!1561478) (not e!2384283))))

(declare-fun rulesInvariant!5254 (LexerInterface!5911 List!40999) Bool)

(assert (=> b!3857132 (= res!1561478 (rulesInvariant!5254 thiss!20629 rules!2768))))

(declare-fun b!3857133 () Bool)

(declare-fun tp!1169144 () Bool)

(assert (=> b!3857133 (= e!2384282 (and e!2384285 tp!1169144))))

(declare-fun b!3857134 () Bool)

(assert (=> b!3857134 (= e!2384284 (= (size!30745 (_1!23169 (v!39037 lt!1339981))) (size!30746 (originalCharacters!6922 (_1!23169 (v!39037 lt!1339981))))))))

(declare-fun tp!1169146 () Bool)

(declare-fun b!3857135 () Bool)

(declare-fun inv!55036 (Token!11782) Bool)

(assert (=> b!3857135 (= e!2384272 (and (inv!55036 (h!46294 prefixTokens!80)) e!2384271 tp!1169146))))

(declare-fun e!2384290 () Bool)

(assert (=> b!3857136 (= e!2384290 (and tp!1169134 tp!1169133))))

(declare-fun b!3857137 () Bool)

(declare-fun tp_is_empty!19425 () Bool)

(declare-fun tp!1169145 () Bool)

(assert (=> b!3857137 (= e!2384296 (and tp_is_empty!19425 tp!1169145))))

(declare-fun b!3857138 () Bool)

(assert (=> b!3857138 (= e!2384283 e!2384281)))

(declare-fun res!1561484 () Bool)

(assert (=> b!3857138 (=> (not res!1561484) (not e!2384281))))

(declare-fun lt!1339984 () tuple2!40072)

(declare-fun lt!1339980 () List!40998)

(assert (=> b!3857138 (= res!1561484 (= lt!1339984 (tuple2!40073 lt!1339980 suffixResult!91)))))

(assert (=> b!3857138 (= lt!1339984 (lexList!1679 thiss!20629 rules!2768 lt!1339979))))

(declare-fun ++!10402 (List!40998 List!40998) List!40998)

(assert (=> b!3857138 (= lt!1339980 (++!10402 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40997)

(assert (=> b!3857138 (= lt!1339979 (++!10401 prefix!426 suffix!1176))))

(declare-fun b!3857139 () Bool)

(declare-fun res!1561468 () Bool)

(assert (=> b!3857139 (=> res!1561468 e!2384287)))

(assert (=> b!3857139 (= res!1561468 (not (= lt!1339984 (tuple2!40073 (++!10402 (Cons!40874 (_1!23169 (v!39037 lt!1339981)) Nil!40874) (_1!23170 lt!1339975)) (_2!23170 lt!1339975)))))))

(declare-fun b!3857140 () Bool)

(declare-fun res!1561472 () Bool)

(assert (=> b!3857140 (=> (not res!1561472) (not e!2384283))))

(declare-fun isEmpty!24203 (List!40999) Bool)

(assert (=> b!3857140 (= res!1561472 (not (isEmpty!24203 rules!2768)))))

(declare-fun b!3857141 () Bool)

(declare-fun e!2384273 () Bool)

(assert (=> b!3857141 (= e!2384293 e!2384273)))

(declare-fun res!1561483 () Bool)

(assert (=> b!3857141 (=> res!1561483 e!2384273)))

(declare-fun lt!1339989 () Int)

(assert (=> b!3857141 (= res!1561483 (not (= (+ lt!1339988 lt!1339987) lt!1339989)))))

(assert (=> b!3857141 (= lt!1339989 (size!30746 lt!1339979))))

(assert (=> b!3857142 (= e!2384275 (and tp!1169137 tp!1169136))))

(declare-fun b!3857143 () Bool)

(declare-fun res!1561480 () Bool)

(assert (=> b!3857143 (=> (not res!1561480) (not e!2384283))))

(declare-fun isEmpty!24204 (List!40997) Bool)

(assert (=> b!3857143 (= res!1561480 (not (isEmpty!24204 prefix!426)))))

(declare-fun b!3857144 () Bool)

(declare-fun tp!1169143 () Bool)

(assert (=> b!3857144 (= e!2384279 (and tp_is_empty!19425 tp!1169143))))

(declare-fun b!3857145 () Bool)

(assert (=> b!3857145 (= e!2384288 e!2384291)))

(declare-fun res!1561476 () Bool)

(assert (=> b!3857145 (=> res!1561476 e!2384291)))

(declare-fun head!8120 (List!40998) Token!11782)

(assert (=> b!3857145 (= res!1561476 (not (= (_1!23169 lt!1339973) (head!8120 prefixTokens!80))))))

(declare-fun get!13523 (Option!8740) tuple2!40070)

(assert (=> b!3857145 (= lt!1339973 (get!13523 lt!1339981))))

(declare-fun b!3857146 () Bool)

(declare-fun tp!1169139 () Bool)

(assert (=> b!3857146 (= e!2384280 (and tp!1169139 (inv!55032 (tag!7182 (rule!9184 (h!46294 prefixTokens!80)))) (inv!55035 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) e!2384297))))

(declare-fun b!3857147 () Bool)

(declare-fun tp!1169147 () Bool)

(assert (=> b!3857147 (= e!2384286 (and tp_is_empty!19425 tp!1169147))))

(declare-fun b!3857148 () Bool)

(assert (=> b!3857148 (= e!2384273 e!2384274)))

(declare-fun res!1561475 () Bool)

(assert (=> b!3857148 (=> res!1561475 e!2384274)))

(declare-fun lt!1339976 () Int)

(assert (=> b!3857148 (= res!1561475 (or (not (= (+ lt!1339976 lt!1339978) lt!1339989)) (<= lt!1339988 lt!1339976)))))

(assert (=> b!3857148 (= lt!1339976 (size!30746 prefix!426))))

(declare-fun tp!1169140 () Bool)

(declare-fun b!3857149 () Bool)

(assert (=> b!3857149 (= e!2384270 (and tp!1169140 (inv!55032 (tag!7182 (rule!9184 (h!46294 suffixTokens!72)))) (inv!55035 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) e!2384290))))

(declare-fun b!3857150 () Bool)

(declare-fun tp!1169138 () Bool)

(assert (=> b!3857150 (= e!2384294 (and (inv!55036 (h!46294 suffixTokens!72)) e!2384277 tp!1169138))))

(assert (= (and start!361548 res!1561471) b!3857140))

(assert (= (and b!3857140 res!1561472) b!3857132))

(assert (= (and b!3857132 res!1561478) b!3857119))

(assert (= (and b!3857119 res!1561479) b!3857143))

(assert (= (and b!3857143 res!1561480) b!3857138))

(assert (= (and b!3857138 res!1561484) b!3857121))

(assert (= (and b!3857121 res!1561467) b!3857120))

(assert (= (and b!3857120 res!1561477) b!3857131))

(assert (= (and b!3857131 res!1561473) b!3857134))

(assert (= (and b!3857131 (not res!1561470)) b!3857139))

(assert (= (and b!3857139 (not res!1561468)) b!3857130))

(assert (= (and b!3857130 (not res!1561482)) b!3857125))

(assert (= (and b!3857125 (not res!1561481)) b!3857141))

(assert (= (and b!3857141 (not res!1561483)) b!3857148))

(assert (= (and b!3857148 (not res!1561475)) b!3857123))

(assert (= (and b!3857123 (not res!1561469)) b!3857145))

(assert (= (and b!3857145 (not res!1561476)) b!3857127))

(assert (= (and b!3857127 (not res!1561474)) b!3857124))

(assert (= (and start!361548 ((_ is Cons!40873) suffixResult!91)) b!3857147))

(assert (= (and start!361548 ((_ is Cons!40873) suffix!1176)) b!3857144))

(assert (= b!3857129 b!3857142))

(assert (= b!3857133 b!3857129))

(assert (= (and start!361548 ((_ is Cons!40875) rules!2768)) b!3857133))

(assert (= b!3857146 b!3857122))

(assert (= b!3857128 b!3857146))

(assert (= b!3857135 b!3857128))

(assert (= (and start!361548 ((_ is Cons!40874) prefixTokens!80)) b!3857135))

(assert (= b!3857149 b!3857136))

(assert (= b!3857126 b!3857149))

(assert (= b!3857150 b!3857126))

(assert (= (and start!361548 ((_ is Cons!40874) suffixTokens!72)) b!3857150))

(assert (= (and start!361548 ((_ is Cons!40873) prefix!426)) b!3857137))

(declare-fun m!4412699 () Bool)

(assert (=> b!3857127 m!4412699))

(declare-fun m!4412701 () Bool)

(assert (=> b!3857126 m!4412701))

(declare-fun m!4412703 () Bool)

(assert (=> b!3857128 m!4412703))

(declare-fun m!4412705 () Bool)

(assert (=> b!3857149 m!4412705))

(declare-fun m!4412707 () Bool)

(assert (=> b!3857149 m!4412707))

(declare-fun m!4412709 () Bool)

(assert (=> b!3857148 m!4412709))

(declare-fun m!4412711 () Bool)

(assert (=> b!3857123 m!4412711))

(declare-fun m!4412713 () Bool)

(assert (=> b!3857123 m!4412713))

(declare-fun m!4412715 () Bool)

(assert (=> b!3857123 m!4412715))

(declare-fun m!4412717 () Bool)

(assert (=> b!3857145 m!4412717))

(declare-fun m!4412719 () Bool)

(assert (=> b!3857145 m!4412719))

(declare-fun m!4412721 () Bool)

(assert (=> b!3857139 m!4412721))

(declare-fun m!4412723 () Bool)

(assert (=> b!3857120 m!4412723))

(declare-fun m!4412725 () Bool)

(assert (=> b!3857146 m!4412725))

(declare-fun m!4412727 () Bool)

(assert (=> b!3857146 m!4412727))

(declare-fun m!4412729 () Bool)

(assert (=> b!3857143 m!4412729))

(declare-fun m!4412731 () Bool)

(assert (=> b!3857134 m!4412731))

(declare-fun m!4412733 () Bool)

(assert (=> b!3857138 m!4412733))

(declare-fun m!4412735 () Bool)

(assert (=> b!3857138 m!4412735))

(declare-fun m!4412737 () Bool)

(assert (=> b!3857138 m!4412737))

(declare-fun m!4412739 () Bool)

(assert (=> b!3857121 m!4412739))

(declare-fun m!4412741 () Bool)

(assert (=> b!3857150 m!4412741))

(declare-fun m!4412743 () Bool)

(assert (=> b!3857131 m!4412743))

(declare-fun m!4412745 () Bool)

(assert (=> b!3857131 m!4412745))

(declare-fun m!4412747 () Bool)

(assert (=> b!3857131 m!4412747))

(declare-fun m!4412749 () Bool)

(assert (=> b!3857131 m!4412749))

(assert (=> b!3857131 m!4412747))

(declare-fun m!4412751 () Bool)

(assert (=> b!3857131 m!4412751))

(declare-fun m!4412753 () Bool)

(assert (=> b!3857131 m!4412753))

(declare-fun m!4412755 () Bool)

(assert (=> b!3857131 m!4412755))

(declare-fun m!4412757 () Bool)

(assert (=> b!3857131 m!4412757))

(declare-fun m!4412759 () Bool)

(assert (=> b!3857131 m!4412759))

(declare-fun m!4412761 () Bool)

(assert (=> b!3857131 m!4412761))

(declare-fun m!4412763 () Bool)

(assert (=> b!3857131 m!4412763))

(assert (=> b!3857131 m!4412753))

(declare-fun m!4412765 () Bool)

(assert (=> b!3857131 m!4412765))

(declare-fun m!4412767 () Bool)

(assert (=> b!3857131 m!4412767))

(declare-fun m!4412769 () Bool)

(assert (=> b!3857131 m!4412769))

(declare-fun m!4412771 () Bool)

(assert (=> b!3857129 m!4412771))

(declare-fun m!4412773 () Bool)

(assert (=> b!3857129 m!4412773))

(declare-fun m!4412775 () Bool)

(assert (=> b!3857140 m!4412775))

(declare-fun m!4412777 () Bool)

(assert (=> b!3857119 m!4412777))

(declare-fun m!4412779 () Bool)

(assert (=> b!3857132 m!4412779))

(declare-fun m!4412781 () Bool)

(assert (=> b!3857125 m!4412781))

(declare-fun m!4412783 () Bool)

(assert (=> b!3857125 m!4412783))

(declare-fun m!4412785 () Bool)

(assert (=> b!3857141 m!4412785))

(declare-fun m!4412787 () Bool)

(assert (=> b!3857135 m!4412787))

(check-sat (not b!3857127) (not b!3857125) (not b_next!104255) b_and!288587 (not b!3857129) (not b!3857149) (not b!3857134) (not b!3857147) (not b!3857123) b_and!288579 (not b!3857141) (not b!3857121) (not b!3857137) (not b!3857145) b_and!288589 b_and!288581 tp_is_empty!19425 (not b!3857128) (not b!3857135) (not b_next!104253) (not b!3857139) (not b!3857150) (not b!3857143) (not b!3857131) (not b!3857148) (not b!3857138) (not b_next!104261) (not b!3857132) (not b!3857126) (not b!3857144) b_and!288583 (not b!3857140) (not b!3857133) (not b_next!104263) (not b!3857120) (not b_next!104257) (not b_next!104259) (not b!3857146) b_and!288585 (not b!3857119))
(check-sat (not b_next!104255) b_and!288587 (not b_next!104253) (not b_next!104261) b_and!288583 (not b_next!104259) b_and!288585 b_and!288579 b_and!288589 b_and!288581 (not b_next!104263) (not b_next!104257))
(get-model)

(declare-fun b!3857179 () Bool)

(declare-fun e!2384319 () Bool)

(declare-fun e!2384316 () Bool)

(assert (=> b!3857179 (= e!2384319 e!2384316)))

(declare-fun c!671738 () Bool)

(assert (=> b!3857179 (= c!671738 ((_ is EmptyLang!11227) (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981))))))))

(declare-fun b!3857180 () Bool)

(declare-fun e!2384318 () Bool)

(declare-fun head!8122 (List!40997) C!22640)

(assert (=> b!3857180 (= e!2384318 (= (head!8122 lt!1339982) (c!671728 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))))))

(declare-fun b!3857181 () Bool)

(declare-fun res!1561510 () Bool)

(declare-fun e!2384317 () Bool)

(assert (=> b!3857181 (=> res!1561510 e!2384317)))

(declare-fun tail!5833 (List!40997) List!40997)

(assert (=> b!3857181 (= res!1561510 (not (isEmpty!24204 (tail!5833 lt!1339982))))))

(declare-fun b!3857182 () Bool)

(declare-fun e!2384314 () Bool)

(declare-fun derivativeStep!3410 (Regex!11227 C!22640) Regex!11227)

(assert (=> b!3857182 (= e!2384314 (matchR!5374 (derivativeStep!3410 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) (head!8122 lt!1339982)) (tail!5833 lt!1339982)))))

(declare-fun bm!282490 () Bool)

(declare-fun call!282495 () Bool)

(assert (=> bm!282490 (= call!282495 (isEmpty!24204 lt!1339982))))

(declare-fun b!3857183 () Bool)

(assert (=> b!3857183 (= e!2384317 (not (= (head!8122 lt!1339982) (c!671728 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981))))))))))

(declare-fun b!3857184 () Bool)

(declare-fun res!1561511 () Bool)

(assert (=> b!3857184 (=> (not res!1561511) (not e!2384318))))

(assert (=> b!3857184 (= res!1561511 (isEmpty!24204 (tail!5833 lt!1339982)))))

(declare-fun b!3857186 () Bool)

(declare-fun lt!1339994 () Bool)

(assert (=> b!3857186 (= e!2384316 (not lt!1339994))))

(declare-fun b!3857187 () Bool)

(declare-fun e!2384313 () Bool)

(assert (=> b!3857187 (= e!2384313 e!2384317)))

(declare-fun res!1561515 () Bool)

(assert (=> b!3857187 (=> res!1561515 e!2384317)))

(assert (=> b!3857187 (= res!1561515 call!282495)))

(declare-fun b!3857188 () Bool)

(declare-fun e!2384315 () Bool)

(assert (=> b!3857188 (= e!2384315 e!2384313)))

(declare-fun res!1561513 () Bool)

(assert (=> b!3857188 (=> (not res!1561513) (not e!2384313))))

(assert (=> b!3857188 (= res!1561513 (not lt!1339994))))

(declare-fun b!3857189 () Bool)

(declare-fun nullable!3911 (Regex!11227) Bool)

(assert (=> b!3857189 (= e!2384314 (nullable!3911 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981))))))))

(declare-fun b!3857190 () Bool)

(assert (=> b!3857190 (= e!2384319 (= lt!1339994 call!282495))))

(declare-fun b!3857191 () Bool)

(declare-fun res!1561508 () Bool)

(assert (=> b!3857191 (=> res!1561508 e!2384315)))

(assert (=> b!3857191 (= res!1561508 (not ((_ is ElementMatch!11227) (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))))))

(assert (=> b!3857191 (= e!2384316 e!2384315)))

(declare-fun b!3857192 () Bool)

(declare-fun res!1561509 () Bool)

(assert (=> b!3857192 (=> (not res!1561509) (not e!2384318))))

(assert (=> b!3857192 (= res!1561509 (not call!282495))))

(declare-fun b!3857185 () Bool)

(declare-fun res!1561512 () Bool)

(assert (=> b!3857185 (=> res!1561512 e!2384315)))

(assert (=> b!3857185 (= res!1561512 e!2384318)))

(declare-fun res!1561514 () Bool)

(assert (=> b!3857185 (=> (not res!1561514) (not e!2384318))))

(assert (=> b!3857185 (= res!1561514 lt!1339994)))

(declare-fun d!1143668 () Bool)

(assert (=> d!1143668 e!2384319))

(declare-fun c!671736 () Bool)

(assert (=> d!1143668 (= c!671736 ((_ is EmptyExpr!11227) (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981))))))))

(assert (=> d!1143668 (= lt!1339994 e!2384314)))

(declare-fun c!671737 () Bool)

(assert (=> d!1143668 (= c!671737 (isEmpty!24204 lt!1339982))))

(declare-fun validRegex!5110 (Regex!11227) Bool)

(assert (=> d!1143668 (validRegex!5110 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))))

(assert (=> d!1143668 (= (matchR!5374 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) lt!1339982) lt!1339994)))

(assert (= (and d!1143668 c!671737) b!3857189))

(assert (= (and d!1143668 (not c!671737)) b!3857182))

(assert (= (and d!1143668 c!671736) b!3857190))

(assert (= (and d!1143668 (not c!671736)) b!3857179))

(assert (= (and b!3857179 c!671738) b!3857186))

(assert (= (and b!3857179 (not c!671738)) b!3857191))

(assert (= (and b!3857191 (not res!1561508)) b!3857185))

(assert (= (and b!3857185 res!1561514) b!3857192))

(assert (= (and b!3857192 res!1561509) b!3857184))

(assert (= (and b!3857184 res!1561511) b!3857180))

(assert (= (and b!3857185 (not res!1561512)) b!3857188))

(assert (= (and b!3857188 res!1561513) b!3857187))

(assert (= (and b!3857187 (not res!1561515)) b!3857181))

(assert (= (and b!3857181 (not res!1561510)) b!3857183))

(assert (= (or b!3857190 b!3857187 b!3857192) bm!282490))

(declare-fun m!4412789 () Bool)

(assert (=> b!3857183 m!4412789))

(assert (=> b!3857182 m!4412789))

(assert (=> b!3857182 m!4412789))

(declare-fun m!4412791 () Bool)

(assert (=> b!3857182 m!4412791))

(declare-fun m!4412795 () Bool)

(assert (=> b!3857182 m!4412795))

(assert (=> b!3857182 m!4412791))

(assert (=> b!3857182 m!4412795))

(declare-fun m!4412799 () Bool)

(assert (=> b!3857182 m!4412799))

(declare-fun m!4412801 () Bool)

(assert (=> bm!282490 m!4412801))

(assert (=> d!1143668 m!4412801))

(declare-fun m!4412803 () Bool)

(assert (=> d!1143668 m!4412803))

(assert (=> b!3857181 m!4412795))

(assert (=> b!3857181 m!4412795))

(declare-fun m!4412805 () Bool)

(assert (=> b!3857181 m!4412805))

(declare-fun m!4412807 () Bool)

(assert (=> b!3857189 m!4412807))

(assert (=> b!3857180 m!4412789))

(assert (=> b!3857184 m!4412795))

(assert (=> b!3857184 m!4412795))

(assert (=> b!3857184 m!4412805))

(assert (=> b!3857123 d!1143668))

(declare-fun b!3857357 () Bool)

(declare-fun e!2384406 () Bool)

(declare-fun e!2384407 () Bool)

(assert (=> b!3857357 (= e!2384406 e!2384407)))

(declare-fun res!1561607 () Bool)

(assert (=> b!3857357 (=> (not res!1561607) (not e!2384407))))

(declare-fun lt!1340050 () Option!8740)

(assert (=> b!3857357 (= res!1561607 (matchR!5374 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) (list!15216 (charsOf!4150 (_1!23169 (get!13523 lt!1340050))))))))

(declare-fun b!3857358 () Bool)

(declare-fun res!1561610 () Bool)

(assert (=> b!3857358 (=> (not res!1561610) (not e!2384407))))

(assert (=> b!3857358 (= res!1561610 (= (rule!9184 (_1!23169 (get!13523 lt!1340050))) (rule!9184 (_1!23169 (v!39037 lt!1339981)))))))

(declare-fun b!3857360 () Bool)

(declare-fun res!1561606 () Bool)

(assert (=> b!3857360 (=> (not res!1561606) (not e!2384407))))

(assert (=> b!3857360 (= res!1561606 (= (++!10401 (list!15216 (charsOf!4150 (_1!23169 (get!13523 lt!1340050)))) (_2!23169 (get!13523 lt!1340050))) lt!1339979))))

(declare-fun b!3857361 () Bool)

(declare-fun res!1561609 () Bool)

(assert (=> b!3857361 (=> (not res!1561609) (not e!2384407))))

(assert (=> b!3857361 (= res!1561609 (= (value!200811 (_1!23169 (get!13523 lt!1340050))) (apply!9565 (transformation!6322 (rule!9184 (_1!23169 (get!13523 lt!1340050)))) (seqFromList!4593 (originalCharacters!6922 (_1!23169 (get!13523 lt!1340050)))))))))

(declare-fun b!3857362 () Bool)

(declare-fun res!1561605 () Bool)

(assert (=> b!3857362 (=> (not res!1561605) (not e!2384407))))

(assert (=> b!3857362 (= res!1561605 (< (size!30746 (_2!23169 (get!13523 lt!1340050))) (size!30746 lt!1339979)))))

(declare-fun b!3857363 () Bool)

(declare-fun e!2384405 () Bool)

(declare-datatypes ((tuple2!40076 0))(
  ( (tuple2!40077 (_1!23172 List!40997) (_2!23172 List!40997)) )
))
(declare-fun findLongestMatchInner!1178 (Regex!11227 List!40997 Int List!40997 List!40997 Int) tuple2!40076)

(assert (=> b!3857363 (= e!2384405 (matchR!5374 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) (_1!23172 (findLongestMatchInner!1178 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) Nil!40873 (size!30746 Nil!40873) lt!1339979 lt!1339979 (size!30746 lt!1339979)))))))

(declare-fun d!1143676 () Bool)

(assert (=> d!1143676 e!2384406))

(declare-fun res!1561608 () Bool)

(assert (=> d!1143676 (=> res!1561608 e!2384406)))

(declare-fun isEmpty!24206 (Option!8740) Bool)

(assert (=> d!1143676 (= res!1561608 (isEmpty!24206 lt!1340050))))

(declare-fun e!2384408 () Option!8740)

(assert (=> d!1143676 (= lt!1340050 e!2384408)))

(declare-fun c!671774 () Bool)

(declare-fun lt!1340051 () tuple2!40076)

(assert (=> d!1143676 (= c!671774 (isEmpty!24204 (_1!23172 lt!1340051)))))

(declare-fun findLongestMatch!1091 (Regex!11227 List!40997) tuple2!40076)

(assert (=> d!1143676 (= lt!1340051 (findLongestMatch!1091 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) lt!1339979))))

(assert (=> d!1143676 (ruleValid!2274 thiss!20629 (rule!9184 (_1!23169 (v!39037 lt!1339981))))))

(assert (=> d!1143676 (= (maxPrefixOneRule!2297 thiss!20629 (rule!9184 (_1!23169 (v!39037 lt!1339981))) lt!1339979) lt!1340050)))

(declare-fun b!3857359 () Bool)

(declare-fun size!30749 (BalanceConc!24660) Int)

(assert (=> b!3857359 (= e!2384408 (Some!8739 (tuple2!40071 (Token!11783 (apply!9565 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) (seqFromList!4593 (_1!23172 lt!1340051))) (rule!9184 (_1!23169 (v!39037 lt!1339981))) (size!30749 (seqFromList!4593 (_1!23172 lt!1340051))) (_1!23172 lt!1340051)) (_2!23172 lt!1340051))))))

(declare-fun lt!1340052 () Unit!58544)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1151 (Regex!11227 List!40997) Unit!58544)

(assert (=> b!3857359 (= lt!1340052 (longestMatchIsAcceptedByMatchOrIsEmpty!1151 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) lt!1339979))))

(declare-fun res!1561611 () Bool)

(assert (=> b!3857359 (= res!1561611 (isEmpty!24204 (_1!23172 (findLongestMatchInner!1178 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) Nil!40873 (size!30746 Nil!40873) lt!1339979 lt!1339979 (size!30746 lt!1339979)))))))

(assert (=> b!3857359 (=> res!1561611 e!2384405)))

(assert (=> b!3857359 e!2384405))

(declare-fun lt!1340048 () Unit!58544)

(assert (=> b!3857359 (= lt!1340048 lt!1340052)))

(declare-fun lt!1340049 () Unit!58544)

(declare-fun lemmaSemiInverse!1684 (TokenValueInjection!12532 BalanceConc!24660) Unit!58544)

(assert (=> b!3857359 (= lt!1340049 (lemmaSemiInverse!1684 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) (seqFromList!4593 (_1!23172 lt!1340051))))))

(declare-fun b!3857364 () Bool)

(assert (=> b!3857364 (= e!2384407 (= (size!30745 (_1!23169 (get!13523 lt!1340050))) (size!30746 (originalCharacters!6922 (_1!23169 (get!13523 lt!1340050))))))))

(declare-fun b!3857365 () Bool)

(assert (=> b!3857365 (= e!2384408 None!8739)))

(assert (= (and d!1143676 c!671774) b!3857365))

(assert (= (and d!1143676 (not c!671774)) b!3857359))

(assert (= (and b!3857359 (not res!1561611)) b!3857363))

(assert (= (and d!1143676 (not res!1561608)) b!3857357))

(assert (= (and b!3857357 res!1561607) b!3857360))

(assert (= (and b!3857360 res!1561606) b!3857362))

(assert (= (and b!3857362 res!1561605) b!3857358))

(assert (= (and b!3857358 res!1561610) b!3857361))

(assert (= (and b!3857361 res!1561609) b!3857364))

(declare-fun m!4412947 () Bool)

(assert (=> b!3857357 m!4412947))

(declare-fun m!4412949 () Bool)

(assert (=> b!3857357 m!4412949))

(assert (=> b!3857357 m!4412949))

(declare-fun m!4412951 () Bool)

(assert (=> b!3857357 m!4412951))

(assert (=> b!3857357 m!4412951))

(declare-fun m!4412953 () Bool)

(assert (=> b!3857357 m!4412953))

(declare-fun m!4412955 () Bool)

(assert (=> b!3857363 m!4412955))

(assert (=> b!3857363 m!4412785))

(assert (=> b!3857363 m!4412955))

(assert (=> b!3857363 m!4412785))

(declare-fun m!4412957 () Bool)

(assert (=> b!3857363 m!4412957))

(declare-fun m!4412959 () Bool)

(assert (=> b!3857363 m!4412959))

(declare-fun m!4412961 () Bool)

(assert (=> d!1143676 m!4412961))

(declare-fun m!4412963 () Bool)

(assert (=> d!1143676 m!4412963))

(declare-fun m!4412965 () Bool)

(assert (=> d!1143676 m!4412965))

(assert (=> d!1143676 m!4412757))

(declare-fun m!4412967 () Bool)

(assert (=> b!3857359 m!4412967))

(declare-fun m!4412969 () Bool)

(assert (=> b!3857359 m!4412969))

(declare-fun m!4412971 () Bool)

(assert (=> b!3857359 m!4412971))

(assert (=> b!3857359 m!4412955))

(assert (=> b!3857359 m!4412955))

(assert (=> b!3857359 m!4412785))

(assert (=> b!3857359 m!4412957))

(assert (=> b!3857359 m!4412969))

(declare-fun m!4412973 () Bool)

(assert (=> b!3857359 m!4412973))

(declare-fun m!4412975 () Bool)

(assert (=> b!3857359 m!4412975))

(assert (=> b!3857359 m!4412969))

(declare-fun m!4412977 () Bool)

(assert (=> b!3857359 m!4412977))

(assert (=> b!3857359 m!4412785))

(assert (=> b!3857359 m!4412969))

(assert (=> b!3857364 m!4412947))

(declare-fun m!4412979 () Bool)

(assert (=> b!3857364 m!4412979))

(assert (=> b!3857358 m!4412947))

(assert (=> b!3857360 m!4412947))

(assert (=> b!3857360 m!4412949))

(assert (=> b!3857360 m!4412949))

(assert (=> b!3857360 m!4412951))

(assert (=> b!3857360 m!4412951))

(declare-fun m!4412981 () Bool)

(assert (=> b!3857360 m!4412981))

(assert (=> b!3857361 m!4412947))

(declare-fun m!4412983 () Bool)

(assert (=> b!3857361 m!4412983))

(assert (=> b!3857361 m!4412983))

(declare-fun m!4412985 () Bool)

(assert (=> b!3857361 m!4412985))

(assert (=> b!3857362 m!4412947))

(declare-fun m!4412987 () Bool)

(assert (=> b!3857362 m!4412987))

(assert (=> b!3857362 m!4412785))

(assert (=> b!3857123 d!1143676))

(declare-fun d!1143706 () Bool)

(assert (=> d!1143706 (= (maxPrefixOneRule!2297 thiss!20629 (rule!9184 (_1!23169 (v!39037 lt!1339981))) lt!1339979) (Some!8739 (tuple2!40071 (Token!11783 (apply!9565 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) (seqFromList!4593 lt!1339982)) (rule!9184 (_1!23169 (v!39037 lt!1339981))) (size!30746 lt!1339982) lt!1339982) (_2!23169 (v!39037 lt!1339981)))))))

(declare-fun lt!1340059 () Unit!58544)

(declare-fun choose!22706 (LexerInterface!5911 List!40999 List!40997 List!40997 List!40997 Rule!12444) Unit!58544)

(assert (=> d!1143706 (= lt!1340059 (choose!22706 thiss!20629 rules!2768 lt!1339982 lt!1339979 (_2!23169 (v!39037 lt!1339981)) (rule!9184 (_1!23169 (v!39037 lt!1339981)))))))

(assert (=> d!1143706 (not (isEmpty!24203 rules!2768))))

(assert (=> d!1143706 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1195 thiss!20629 rules!2768 lt!1339982 lt!1339979 (_2!23169 (v!39037 lt!1339981)) (rule!9184 (_1!23169 (v!39037 lt!1339981)))) lt!1340059)))

(declare-fun bs!583116 () Bool)

(assert (= bs!583116 d!1143706))

(declare-fun m!4413015 () Bool)

(assert (=> bs!583116 m!4413015))

(assert (=> bs!583116 m!4412747))

(assert (=> bs!583116 m!4412759))

(assert (=> bs!583116 m!4412747))

(assert (=> bs!583116 m!4412751))

(assert (=> bs!583116 m!4412713))

(assert (=> bs!583116 m!4412775))

(assert (=> b!3857123 d!1143706))

(declare-fun d!1143720 () Bool)

(assert (=> d!1143720 (= (head!8120 prefixTokens!80) (h!46294 prefixTokens!80))))

(assert (=> b!3857145 d!1143720))

(declare-fun d!1143722 () Bool)

(assert (=> d!1143722 (= (get!13523 lt!1339981) (v!39037 lt!1339981))))

(assert (=> b!3857145 d!1143722))

(declare-fun d!1143724 () Bool)

(assert (=> d!1143724 (= (inv!55032 (tag!7182 (rule!9184 (h!46294 prefixTokens!80)))) (= (mod (str.len (value!200810 (tag!7182 (rule!9184 (h!46294 prefixTokens!80))))) 2) 0))))

(assert (=> b!3857146 d!1143724))

(declare-fun d!1143726 () Bool)

(declare-fun res!1561634 () Bool)

(declare-fun e!2384430 () Bool)

(assert (=> d!1143726 (=> (not res!1561634) (not e!2384430))))

(declare-fun semiInverseModEq!2711 (Int Int) Bool)

(assert (=> d!1143726 (= res!1561634 (semiInverseModEq!2711 (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) (toValue!8750 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80))))))))

(assert (=> d!1143726 (= (inv!55035 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) e!2384430)))

(declare-fun b!3857407 () Bool)

(declare-fun equivClasses!2610 (Int Int) Bool)

(assert (=> b!3857407 (= e!2384430 (equivClasses!2610 (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) (toValue!8750 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80))))))))

(assert (= (and d!1143726 res!1561634) b!3857407))

(declare-fun m!4413017 () Bool)

(assert (=> d!1143726 m!4413017))

(declare-fun m!4413019 () Bool)

(assert (=> b!3857407 m!4413019))

(assert (=> b!3857146 d!1143726))

(declare-fun d!1143728 () Bool)

(declare-fun lt!1340072 () Int)

(assert (=> d!1143728 (>= lt!1340072 0)))

(declare-fun e!2384433 () Int)

(assert (=> d!1143728 (= lt!1340072 e!2384433)))

(declare-fun c!671786 () Bool)

(assert (=> d!1143728 (= c!671786 ((_ is Nil!40873) suffix!1176))))

(assert (=> d!1143728 (= (size!30746 suffix!1176) lt!1340072)))

(declare-fun b!3857412 () Bool)

(assert (=> b!3857412 (= e!2384433 0)))

(declare-fun b!3857413 () Bool)

(assert (=> b!3857413 (= e!2384433 (+ 1 (size!30746 (t!313008 suffix!1176))))))

(assert (= (and d!1143728 c!671786) b!3857412))

(assert (= (and d!1143728 (not c!671786)) b!3857413))

(declare-fun m!4413021 () Bool)

(assert (=> b!3857413 m!4413021))

(assert (=> b!3857125 d!1143728))

(declare-fun d!1143730 () Bool)

(declare-fun lt!1340073 () Int)

(assert (=> d!1143730 (>= lt!1340073 0)))

(declare-fun e!2384434 () Int)

(assert (=> d!1143730 (= lt!1340073 e!2384434)))

(declare-fun c!671787 () Bool)

(assert (=> d!1143730 (= c!671787 ((_ is Nil!40873) (_2!23169 (v!39037 lt!1339981))))))

(assert (=> d!1143730 (= (size!30746 (_2!23169 (v!39037 lt!1339981))) lt!1340073)))

(declare-fun b!3857414 () Bool)

(assert (=> b!3857414 (= e!2384434 0)))

(declare-fun b!3857415 () Bool)

(assert (=> b!3857415 (= e!2384434 (+ 1 (size!30746 (t!313008 (_2!23169 (v!39037 lt!1339981))))))))

(assert (= (and d!1143730 c!671787) b!3857414))

(assert (= (and d!1143730 (not c!671787)) b!3857415))

(declare-fun m!4413023 () Bool)

(assert (=> b!3857415 m!4413023))

(assert (=> b!3857125 d!1143730))

(declare-fun d!1143732 () Bool)

(declare-fun c!671794 () Bool)

(assert (=> d!1143732 (= c!671794 ((_ is IntegerValue!19656) (value!200811 (h!46294 suffixTokens!72))))))

(declare-fun e!2384445 () Bool)

(assert (=> d!1143732 (= (inv!21 (value!200811 (h!46294 suffixTokens!72))) e!2384445)))

(declare-fun b!3857435 () Bool)

(declare-fun e!2384446 () Bool)

(declare-fun inv!15 (TokenValue!6552) Bool)

(assert (=> b!3857435 (= e!2384446 (inv!15 (value!200811 (h!46294 suffixTokens!72))))))

(declare-fun b!3857436 () Bool)

(declare-fun e!2384444 () Bool)

(assert (=> b!3857436 (= e!2384445 e!2384444)))

(declare-fun c!671793 () Bool)

(assert (=> b!3857436 (= c!671793 ((_ is IntegerValue!19657) (value!200811 (h!46294 suffixTokens!72))))))

(declare-fun b!3857437 () Bool)

(declare-fun inv!17 (TokenValue!6552) Bool)

(assert (=> b!3857437 (= e!2384444 (inv!17 (value!200811 (h!46294 suffixTokens!72))))))

(declare-fun b!3857438 () Bool)

(declare-fun res!1561644 () Bool)

(assert (=> b!3857438 (=> res!1561644 e!2384446)))

(assert (=> b!3857438 (= res!1561644 (not ((_ is IntegerValue!19658) (value!200811 (h!46294 suffixTokens!72)))))))

(assert (=> b!3857438 (= e!2384444 e!2384446)))

(declare-fun b!3857439 () Bool)

(declare-fun inv!16 (TokenValue!6552) Bool)

(assert (=> b!3857439 (= e!2384445 (inv!16 (value!200811 (h!46294 suffixTokens!72))))))

(assert (= (and d!1143732 c!671794) b!3857439))

(assert (= (and d!1143732 (not c!671794)) b!3857436))

(assert (= (and b!3857436 c!671793) b!3857437))

(assert (= (and b!3857436 (not c!671793)) b!3857438))

(assert (= (and b!3857438 (not res!1561644)) b!3857435))

(declare-fun m!4413041 () Bool)

(assert (=> b!3857435 m!4413041))

(declare-fun m!4413043 () Bool)

(assert (=> b!3857437 m!4413043))

(declare-fun m!4413045 () Bool)

(assert (=> b!3857439 m!4413045))

(assert (=> b!3857126 d!1143732))

(declare-fun d!1143734 () Bool)

(declare-fun lt!1340079 () Int)

(assert (=> d!1143734 (>= lt!1340079 0)))

(declare-fun e!2384447 () Int)

(assert (=> d!1143734 (= lt!1340079 e!2384447)))

(declare-fun c!671795 () Bool)

(assert (=> d!1143734 (= c!671795 ((_ is Nil!40873) prefix!426))))

(assert (=> d!1143734 (= (size!30746 prefix!426) lt!1340079)))

(declare-fun b!3857440 () Bool)

(assert (=> b!3857440 (= e!2384447 0)))

(declare-fun b!3857441 () Bool)

(assert (=> b!3857441 (= e!2384447 (+ 1 (size!30746 (t!313008 prefix!426))))))

(assert (= (and d!1143734 c!671795) b!3857440))

(assert (= (and d!1143734 (not c!671795)) b!3857441))

(declare-fun m!4413059 () Bool)

(assert (=> b!3857441 m!4413059))

(assert (=> b!3857148 d!1143734))

(declare-fun d!1143736 () Bool)

(declare-fun lt!1340080 () Int)

(assert (=> d!1143736 (>= lt!1340080 0)))

(declare-fun e!2384448 () Int)

(assert (=> d!1143736 (= lt!1340080 e!2384448)))

(declare-fun c!671796 () Bool)

(assert (=> d!1143736 (= c!671796 ((_ is Nil!40873) (_2!23169 lt!1339973)))))

(assert (=> d!1143736 (= (size!30746 (_2!23169 lt!1339973)) lt!1340080)))

(declare-fun b!3857442 () Bool)

(assert (=> b!3857442 (= e!2384448 0)))

(declare-fun b!3857443 () Bool)

(assert (=> b!3857443 (= e!2384448 (+ 1 (size!30746 (t!313008 (_2!23169 lt!1339973)))))))

(assert (= (and d!1143736 c!671796) b!3857442))

(assert (= (and d!1143736 (not c!671796)) b!3857443))

(declare-fun m!4413065 () Bool)

(assert (=> b!3857443 m!4413065))

(assert (=> b!3857127 d!1143736))

(declare-fun d!1143740 () Bool)

(declare-fun c!671798 () Bool)

(assert (=> d!1143740 (= c!671798 ((_ is IntegerValue!19656) (value!200811 (h!46294 prefixTokens!80))))))

(declare-fun e!2384450 () Bool)

(assert (=> d!1143740 (= (inv!21 (value!200811 (h!46294 prefixTokens!80))) e!2384450)))

(declare-fun b!3857444 () Bool)

(declare-fun e!2384451 () Bool)

(assert (=> b!3857444 (= e!2384451 (inv!15 (value!200811 (h!46294 prefixTokens!80))))))

(declare-fun b!3857445 () Bool)

(declare-fun e!2384449 () Bool)

(assert (=> b!3857445 (= e!2384450 e!2384449)))

(declare-fun c!671797 () Bool)

(assert (=> b!3857445 (= c!671797 ((_ is IntegerValue!19657) (value!200811 (h!46294 prefixTokens!80))))))

(declare-fun b!3857446 () Bool)

(assert (=> b!3857446 (= e!2384449 (inv!17 (value!200811 (h!46294 prefixTokens!80))))))

(declare-fun b!3857447 () Bool)

(declare-fun res!1561645 () Bool)

(assert (=> b!3857447 (=> res!1561645 e!2384451)))

(assert (=> b!3857447 (= res!1561645 (not ((_ is IntegerValue!19658) (value!200811 (h!46294 prefixTokens!80)))))))

(assert (=> b!3857447 (= e!2384449 e!2384451)))

(declare-fun b!3857448 () Bool)

(assert (=> b!3857448 (= e!2384450 (inv!16 (value!200811 (h!46294 prefixTokens!80))))))

(assert (= (and d!1143740 c!671798) b!3857448))

(assert (= (and d!1143740 (not c!671798)) b!3857445))

(assert (= (and b!3857445 c!671797) b!3857446))

(assert (= (and b!3857445 (not c!671797)) b!3857447))

(assert (= (and b!3857447 (not res!1561645)) b!3857444))

(declare-fun m!4413067 () Bool)

(assert (=> b!3857444 m!4413067))

(declare-fun m!4413069 () Bool)

(assert (=> b!3857446 m!4413069))

(declare-fun m!4413071 () Bool)

(assert (=> b!3857448 m!4413071))

(assert (=> b!3857128 d!1143740))

(declare-fun d!1143742 () Bool)

(assert (=> d!1143742 (= (inv!55032 (tag!7182 (rule!9184 (h!46294 suffixTokens!72)))) (= (mod (str.len (value!200810 (tag!7182 (rule!9184 (h!46294 suffixTokens!72))))) 2) 0))))

(assert (=> b!3857149 d!1143742))

(declare-fun d!1143744 () Bool)

(declare-fun res!1561646 () Bool)

(declare-fun e!2384452 () Bool)

(assert (=> d!1143744 (=> (not res!1561646) (not e!2384452))))

(assert (=> d!1143744 (= res!1561646 (semiInverseModEq!2711 (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) (toValue!8750 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72))))))))

(assert (=> d!1143744 (= (inv!55035 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) e!2384452)))

(declare-fun b!3857449 () Bool)

(assert (=> b!3857449 (= e!2384452 (equivClasses!2610 (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) (toValue!8750 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72))))))))

(assert (= (and d!1143744 res!1561646) b!3857449))

(declare-fun m!4413073 () Bool)

(assert (=> d!1143744 m!4413073))

(declare-fun m!4413075 () Bool)

(assert (=> b!3857449 m!4413075))

(assert (=> b!3857149 d!1143744))

(declare-fun b!3857469 () Bool)

(declare-fun res!1561654 () Bool)

(declare-fun e!2384462 () Bool)

(assert (=> b!3857469 (=> (not res!1561654) (not e!2384462))))

(declare-fun lt!1340087 () List!40998)

(declare-fun size!30750 (List!40998) Int)

(assert (=> b!3857469 (= res!1561654 (= (size!30750 lt!1340087) (+ (size!30750 (Cons!40874 (_1!23169 (v!39037 lt!1339981)) Nil!40874)) (size!30750 (_1!23170 lt!1339975)))))))

(declare-fun b!3857468 () Bool)

(declare-fun e!2384463 () List!40998)

(assert (=> b!3857468 (= e!2384463 (Cons!40874 (h!46294 (Cons!40874 (_1!23169 (v!39037 lt!1339981)) Nil!40874)) (++!10402 (t!313009 (Cons!40874 (_1!23169 (v!39037 lt!1339981)) Nil!40874)) (_1!23170 lt!1339975))))))

(declare-fun d!1143748 () Bool)

(assert (=> d!1143748 e!2384462))

(declare-fun res!1561655 () Bool)

(assert (=> d!1143748 (=> (not res!1561655) (not e!2384462))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6092 (List!40998) (InoxSet Token!11782))

(assert (=> d!1143748 (= res!1561655 (= (content!6092 lt!1340087) ((_ map or) (content!6092 (Cons!40874 (_1!23169 (v!39037 lt!1339981)) Nil!40874)) (content!6092 (_1!23170 lt!1339975)))))))

(assert (=> d!1143748 (= lt!1340087 e!2384463)))

(declare-fun c!671804 () Bool)

(assert (=> d!1143748 (= c!671804 ((_ is Nil!40874) (Cons!40874 (_1!23169 (v!39037 lt!1339981)) Nil!40874)))))

(assert (=> d!1143748 (= (++!10402 (Cons!40874 (_1!23169 (v!39037 lt!1339981)) Nil!40874) (_1!23170 lt!1339975)) lt!1340087)))

(declare-fun b!3857467 () Bool)

(assert (=> b!3857467 (= e!2384463 (_1!23170 lt!1339975))))

(declare-fun b!3857470 () Bool)

(assert (=> b!3857470 (= e!2384462 (or (not (= (_1!23170 lt!1339975) Nil!40874)) (= lt!1340087 (Cons!40874 (_1!23169 (v!39037 lt!1339981)) Nil!40874))))))

(assert (= (and d!1143748 c!671804) b!3857467))

(assert (= (and d!1143748 (not c!671804)) b!3857468))

(assert (= (and d!1143748 res!1561655) b!3857469))

(assert (= (and b!3857469 res!1561654) b!3857470))

(declare-fun m!4413097 () Bool)

(assert (=> b!3857469 m!4413097))

(declare-fun m!4413099 () Bool)

(assert (=> b!3857469 m!4413099))

(declare-fun m!4413101 () Bool)

(assert (=> b!3857469 m!4413101))

(declare-fun m!4413103 () Bool)

(assert (=> b!3857468 m!4413103))

(declare-fun m!4413105 () Bool)

(assert (=> d!1143748 m!4413105))

(declare-fun m!4413107 () Bool)

(assert (=> d!1143748 m!4413107))

(declare-fun m!4413109 () Bool)

(assert (=> d!1143748 m!4413109))

(assert (=> b!3857139 d!1143748))

(declare-fun d!1143758 () Bool)

(assert (=> d!1143758 (= (isEmpty!24203 rules!2768) ((_ is Nil!40875) rules!2768))))

(assert (=> b!3857140 d!1143758))

(declare-fun d!1143762 () Bool)

(assert (=> d!1143762 (= (isEmpty!24202 prefixTokens!80) ((_ is Nil!40874) prefixTokens!80))))

(assert (=> b!3857119 d!1143762))

(declare-fun b!3857568 () Bool)

(declare-fun res!1561694 () Bool)

(declare-fun e!2384527 () Bool)

(assert (=> b!3857568 (=> (not res!1561694) (not e!2384527))))

(declare-fun lt!1340122 () Option!8740)

(assert (=> b!3857568 (= res!1561694 (= (list!15216 (charsOf!4150 (_1!23169 (get!13523 lt!1340122)))) (originalCharacters!6922 (_1!23169 (get!13523 lt!1340122)))))))

(declare-fun b!3857569 () Bool)

(declare-fun e!2384528 () Option!8740)

(declare-fun lt!1340120 () Option!8740)

(declare-fun lt!1340119 () Option!8740)

(assert (=> b!3857569 (= e!2384528 (ite (and ((_ is None!8739) lt!1340120) ((_ is None!8739) lt!1340119)) None!8739 (ite ((_ is None!8739) lt!1340119) lt!1340120 (ite ((_ is None!8739) lt!1340120) lt!1340119 (ite (>= (size!30745 (_1!23169 (v!39037 lt!1340120))) (size!30745 (_1!23169 (v!39037 lt!1340119)))) lt!1340120 lt!1340119)))))))

(declare-fun call!282504 () Option!8740)

(assert (=> b!3857569 (= lt!1340120 call!282504)))

(assert (=> b!3857569 (= lt!1340119 (maxPrefix!3215 thiss!20629 (t!313010 rules!2768) lt!1339979))))

(declare-fun bm!282499 () Bool)

(assert (=> bm!282499 (= call!282504 (maxPrefixOneRule!2297 thiss!20629 (h!46295 rules!2768) lt!1339979))))

(declare-fun d!1143764 () Bool)

(declare-fun e!2384529 () Bool)

(assert (=> d!1143764 e!2384529))

(declare-fun res!1561693 () Bool)

(assert (=> d!1143764 (=> res!1561693 e!2384529)))

(assert (=> d!1143764 (= res!1561693 (isEmpty!24206 lt!1340122))))

(assert (=> d!1143764 (= lt!1340122 e!2384528)))

(declare-fun c!671814 () Bool)

(assert (=> d!1143764 (= c!671814 (and ((_ is Cons!40875) rules!2768) ((_ is Nil!40875) (t!313010 rules!2768))))))

(declare-fun lt!1340118 () Unit!58544)

(declare-fun lt!1340121 () Unit!58544)

(assert (=> d!1143764 (= lt!1340118 lt!1340121)))

(assert (=> d!1143764 (isPrefix!3421 lt!1339979 lt!1339979)))

(declare-fun lemmaIsPrefixRefl!2182 (List!40997 List!40997) Unit!58544)

(assert (=> d!1143764 (= lt!1340121 (lemmaIsPrefixRefl!2182 lt!1339979 lt!1339979))))

(declare-fun rulesValidInductive!2254 (LexerInterface!5911 List!40999) Bool)

(assert (=> d!1143764 (rulesValidInductive!2254 thiss!20629 rules!2768)))

(assert (=> d!1143764 (= (maxPrefix!3215 thiss!20629 rules!2768 lt!1339979) lt!1340122)))

(declare-fun b!3857570 () Bool)

(declare-fun res!1561692 () Bool)

(assert (=> b!3857570 (=> (not res!1561692) (not e!2384527))))

(assert (=> b!3857570 (= res!1561692 (< (size!30746 (_2!23169 (get!13523 lt!1340122))) (size!30746 lt!1339979)))))

(declare-fun b!3857571 () Bool)

(assert (=> b!3857571 (= e!2384529 e!2384527)))

(declare-fun res!1561690 () Bool)

(assert (=> b!3857571 (=> (not res!1561690) (not e!2384527))))

(declare-fun isDefined!6859 (Option!8740) Bool)

(assert (=> b!3857571 (= res!1561690 (isDefined!6859 lt!1340122))))

(declare-fun b!3857572 () Bool)

(assert (=> b!3857572 (= e!2384528 call!282504)))

(declare-fun b!3857573 () Bool)

(declare-fun res!1561695 () Bool)

(assert (=> b!3857573 (=> (not res!1561695) (not e!2384527))))

(assert (=> b!3857573 (= res!1561695 (= (value!200811 (_1!23169 (get!13523 lt!1340122))) (apply!9565 (transformation!6322 (rule!9184 (_1!23169 (get!13523 lt!1340122)))) (seqFromList!4593 (originalCharacters!6922 (_1!23169 (get!13523 lt!1340122)))))))))

(declare-fun b!3857574 () Bool)

(declare-fun res!1561691 () Bool)

(assert (=> b!3857574 (=> (not res!1561691) (not e!2384527))))

(assert (=> b!3857574 (= res!1561691 (matchR!5374 (regex!6322 (rule!9184 (_1!23169 (get!13523 lt!1340122)))) (list!15216 (charsOf!4150 (_1!23169 (get!13523 lt!1340122))))))))

(declare-fun b!3857575 () Bool)

(declare-fun contains!8263 (List!40999 Rule!12444) Bool)

(assert (=> b!3857575 (= e!2384527 (contains!8263 rules!2768 (rule!9184 (_1!23169 (get!13523 lt!1340122)))))))

(declare-fun b!3857576 () Bool)

(declare-fun res!1561696 () Bool)

(assert (=> b!3857576 (=> (not res!1561696) (not e!2384527))))

(assert (=> b!3857576 (= res!1561696 (= (++!10401 (list!15216 (charsOf!4150 (_1!23169 (get!13523 lt!1340122)))) (_2!23169 (get!13523 lt!1340122))) lt!1339979))))

(assert (= (and d!1143764 c!671814) b!3857572))

(assert (= (and d!1143764 (not c!671814)) b!3857569))

(assert (= (or b!3857572 b!3857569) bm!282499))

(assert (= (and d!1143764 (not res!1561693)) b!3857571))

(assert (= (and b!3857571 res!1561690) b!3857568))

(assert (= (and b!3857568 res!1561694) b!3857570))

(assert (= (and b!3857570 res!1561692) b!3857576))

(assert (= (and b!3857576 res!1561696) b!3857573))

(assert (= (and b!3857573 res!1561695) b!3857574))

(assert (= (and b!3857574 res!1561691) b!3857575))

(declare-fun m!4413179 () Bool)

(assert (=> bm!282499 m!4413179))

(declare-fun m!4413181 () Bool)

(assert (=> b!3857574 m!4413181))

(declare-fun m!4413183 () Bool)

(assert (=> b!3857574 m!4413183))

(assert (=> b!3857574 m!4413183))

(declare-fun m!4413185 () Bool)

(assert (=> b!3857574 m!4413185))

(assert (=> b!3857574 m!4413185))

(declare-fun m!4413187 () Bool)

(assert (=> b!3857574 m!4413187))

(assert (=> b!3857576 m!4413181))

(assert (=> b!3857576 m!4413183))

(assert (=> b!3857576 m!4413183))

(assert (=> b!3857576 m!4413185))

(assert (=> b!3857576 m!4413185))

(declare-fun m!4413189 () Bool)

(assert (=> b!3857576 m!4413189))

(assert (=> b!3857570 m!4413181))

(declare-fun m!4413191 () Bool)

(assert (=> b!3857570 m!4413191))

(assert (=> b!3857570 m!4412785))

(assert (=> b!3857568 m!4413181))

(assert (=> b!3857568 m!4413183))

(assert (=> b!3857568 m!4413183))

(assert (=> b!3857568 m!4413185))

(declare-fun m!4413197 () Bool)

(assert (=> b!3857571 m!4413197))

(declare-fun m!4413201 () Bool)

(assert (=> d!1143764 m!4413201))

(declare-fun m!4413203 () Bool)

(assert (=> d!1143764 m!4413203))

(declare-fun m!4413205 () Bool)

(assert (=> d!1143764 m!4413205))

(declare-fun m!4413209 () Bool)

(assert (=> d!1143764 m!4413209))

(assert (=> b!3857573 m!4413181))

(declare-fun m!4413211 () Bool)

(assert (=> b!3857573 m!4413211))

(assert (=> b!3857573 m!4413211))

(declare-fun m!4413213 () Bool)

(assert (=> b!3857573 m!4413213))

(declare-fun m!4413215 () Bool)

(assert (=> b!3857569 m!4413215))

(assert (=> b!3857575 m!4413181))

(declare-fun m!4413217 () Bool)

(assert (=> b!3857575 m!4413217))

(assert (=> b!3857120 d!1143764))

(declare-fun d!1143796 () Bool)

(declare-fun lt!1340123 () Int)

(assert (=> d!1143796 (>= lt!1340123 0)))

(declare-fun e!2384546 () Int)

(assert (=> d!1143796 (= lt!1340123 e!2384546)))

(declare-fun c!671815 () Bool)

(assert (=> d!1143796 (= c!671815 ((_ is Nil!40873) lt!1339979))))

(assert (=> d!1143796 (= (size!30746 lt!1339979) lt!1340123)))

(declare-fun b!3857595 () Bool)

(assert (=> b!3857595 (= e!2384546 0)))

(declare-fun b!3857596 () Bool)

(assert (=> b!3857596 (= e!2384546 (+ 1 (size!30746 (t!313008 lt!1339979))))))

(assert (= (and d!1143796 c!671815) b!3857595))

(assert (= (and d!1143796 (not c!671815)) b!3857596))

(declare-fun m!4413219 () Bool)

(assert (=> b!3857596 m!4413219))

(assert (=> b!3857141 d!1143796))

(declare-fun b!3857607 () Bool)

(declare-fun e!2384554 () tuple2!40072)

(assert (=> b!3857607 (= e!2384554 (tuple2!40073 Nil!40874 suffix!1176))))

(declare-fun b!3857609 () Bool)

(declare-fun e!2384553 () Bool)

(declare-fun lt!1340131 () tuple2!40072)

(assert (=> b!3857609 (= e!2384553 (not (isEmpty!24202 (_1!23170 lt!1340131))))))

(declare-fun b!3857610 () Bool)

(declare-fun e!2384555 () Bool)

(assert (=> b!3857610 (= e!2384555 (= (_2!23170 lt!1340131) suffix!1176))))

(declare-fun b!3857611 () Bool)

(assert (=> b!3857611 (= e!2384555 e!2384553)))

(declare-fun res!1561699 () Bool)

(assert (=> b!3857611 (= res!1561699 (< (size!30746 (_2!23170 lt!1340131)) (size!30746 suffix!1176)))))

(assert (=> b!3857611 (=> (not res!1561699) (not e!2384553))))

(declare-fun b!3857608 () Bool)

(declare-fun lt!1340132 () Option!8740)

(declare-fun lt!1340130 () tuple2!40072)

(assert (=> b!3857608 (= e!2384554 (tuple2!40073 (Cons!40874 (_1!23169 (v!39037 lt!1340132)) (_1!23170 lt!1340130)) (_2!23170 lt!1340130)))))

(assert (=> b!3857608 (= lt!1340130 (lexList!1679 thiss!20629 rules!2768 (_2!23169 (v!39037 lt!1340132))))))

(declare-fun d!1143798 () Bool)

(assert (=> d!1143798 e!2384555))

(declare-fun c!671820 () Bool)

(assert (=> d!1143798 (= c!671820 (> (size!30750 (_1!23170 lt!1340131)) 0))))

(assert (=> d!1143798 (= lt!1340131 e!2384554)))

(declare-fun c!671821 () Bool)

(assert (=> d!1143798 (= c!671821 ((_ is Some!8739) lt!1340132))))

(assert (=> d!1143798 (= lt!1340132 (maxPrefix!3215 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1143798 (= (lexList!1679 thiss!20629 rules!2768 suffix!1176) lt!1340131)))

(assert (= (and d!1143798 c!671821) b!3857608))

(assert (= (and d!1143798 (not c!671821)) b!3857607))

(assert (= (and d!1143798 c!671820) b!3857611))

(assert (= (and d!1143798 (not c!671820)) b!3857610))

(assert (= (and b!3857611 res!1561699) b!3857609))

(declare-fun m!4413221 () Bool)

(assert (=> b!3857609 m!4413221))

(declare-fun m!4413223 () Bool)

(assert (=> b!3857611 m!4413223))

(assert (=> b!3857611 m!4412781))

(declare-fun m!4413225 () Bool)

(assert (=> b!3857608 m!4413225))

(declare-fun m!4413227 () Bool)

(assert (=> d!1143798 m!4413227))

(declare-fun m!4413229 () Bool)

(assert (=> d!1143798 m!4413229))

(assert (=> b!3857121 d!1143798))

(declare-fun d!1143800 () Bool)

(assert (=> d!1143800 (= (isEmpty!24204 prefix!426) ((_ is Nil!40873) prefix!426))))

(assert (=> b!3857143 d!1143800))

(declare-fun d!1143802 () Bool)

(declare-fun lt!1340133 () Int)

(assert (=> d!1143802 (>= lt!1340133 0)))

(declare-fun e!2384556 () Int)

(assert (=> d!1143802 (= lt!1340133 e!2384556)))

(declare-fun c!671822 () Bool)

(assert (=> d!1143802 (= c!671822 ((_ is Nil!40873) (originalCharacters!6922 (_1!23169 (v!39037 lt!1339981)))))))

(assert (=> d!1143802 (= (size!30746 (originalCharacters!6922 (_1!23169 (v!39037 lt!1339981)))) lt!1340133)))

(declare-fun b!3857612 () Bool)

(assert (=> b!3857612 (= e!2384556 0)))

(declare-fun b!3857613 () Bool)

(assert (=> b!3857613 (= e!2384556 (+ 1 (size!30746 (t!313008 (originalCharacters!6922 (_1!23169 (v!39037 lt!1339981)))))))))

(assert (= (and d!1143802 c!671822) b!3857612))

(assert (= (and d!1143802 (not c!671822)) b!3857613))

(declare-fun m!4413231 () Bool)

(assert (=> b!3857613 m!4413231))

(assert (=> b!3857134 d!1143802))

(declare-fun d!1143804 () Bool)

(declare-fun res!1561704 () Bool)

(declare-fun e!2384559 () Bool)

(assert (=> d!1143804 (=> (not res!1561704) (not e!2384559))))

(assert (=> d!1143804 (= res!1561704 (not (isEmpty!24204 (originalCharacters!6922 (h!46294 prefixTokens!80)))))))

(assert (=> d!1143804 (= (inv!55036 (h!46294 prefixTokens!80)) e!2384559)))

(declare-fun b!3857618 () Bool)

(declare-fun res!1561705 () Bool)

(assert (=> b!3857618 (=> (not res!1561705) (not e!2384559))))

(declare-fun dynLambda!17645 (Int TokenValue!6552) BalanceConc!24660)

(assert (=> b!3857618 (= res!1561705 (= (originalCharacters!6922 (h!46294 prefixTokens!80)) (list!15216 (dynLambda!17645 (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) (value!200811 (h!46294 prefixTokens!80))))))))

(declare-fun b!3857619 () Bool)

(assert (=> b!3857619 (= e!2384559 (= (size!30745 (h!46294 prefixTokens!80)) (size!30746 (originalCharacters!6922 (h!46294 prefixTokens!80)))))))

(assert (= (and d!1143804 res!1561704) b!3857618))

(assert (= (and b!3857618 res!1561705) b!3857619))

(declare-fun b_lambda!112779 () Bool)

(assert (=> (not b_lambda!112779) (not b!3857618)))

(declare-fun tb!223361 () Bool)

(declare-fun t!313060 () Bool)

(assert (=> (and b!3857136 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80))))) t!313060) tb!223361))

(declare-fun b!3857624 () Bool)

(declare-fun e!2384562 () Bool)

(declare-fun tp!1169220 () Bool)

(declare-fun inv!55039 (Conc!12533) Bool)

(assert (=> b!3857624 (= e!2384562 (and (inv!55039 (c!671729 (dynLambda!17645 (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) (value!200811 (h!46294 prefixTokens!80))))) tp!1169220))))

(declare-fun result!272014 () Bool)

(declare-fun inv!55040 (BalanceConc!24660) Bool)

(assert (=> tb!223361 (= result!272014 (and (inv!55040 (dynLambda!17645 (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) (value!200811 (h!46294 prefixTokens!80)))) e!2384562))))

(assert (= tb!223361 b!3857624))

(declare-fun m!4413233 () Bool)

(assert (=> b!3857624 m!4413233))

(declare-fun m!4413235 () Bool)

(assert (=> tb!223361 m!4413235))

(assert (=> b!3857618 t!313060))

(declare-fun b_and!288627 () Bool)

(assert (= b_and!288581 (and (=> t!313060 result!272014) b_and!288627)))

(declare-fun t!313062 () Bool)

(declare-fun tb!223363 () Bool)

(assert (=> (and b!3857122 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80))))) t!313062) tb!223363))

(declare-fun result!272018 () Bool)

(assert (= result!272018 result!272014))

(assert (=> b!3857618 t!313062))

(declare-fun b_and!288629 () Bool)

(assert (= b_and!288585 (and (=> t!313062 result!272018) b_and!288629)))

(declare-fun tb!223365 () Bool)

(declare-fun t!313064 () Bool)

(assert (=> (and b!3857142 (= (toChars!8609 (transformation!6322 (h!46295 rules!2768))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80))))) t!313064) tb!223365))

(declare-fun result!272020 () Bool)

(assert (= result!272020 result!272014))

(assert (=> b!3857618 t!313064))

(declare-fun b_and!288631 () Bool)

(assert (= b_and!288589 (and (=> t!313064 result!272020) b_and!288631)))

(declare-fun m!4413237 () Bool)

(assert (=> d!1143804 m!4413237))

(declare-fun m!4413239 () Bool)

(assert (=> b!3857618 m!4413239))

(assert (=> b!3857618 m!4413239))

(declare-fun m!4413241 () Bool)

(assert (=> b!3857618 m!4413241))

(declare-fun m!4413243 () Bool)

(assert (=> b!3857619 m!4413243))

(assert (=> b!3857135 d!1143804))

(declare-fun b!3857625 () Bool)

(declare-fun e!2384564 () tuple2!40072)

(assert (=> b!3857625 (= e!2384564 (tuple2!40073 Nil!40874 lt!1339979))))

(declare-fun b!3857627 () Bool)

(declare-fun e!2384563 () Bool)

(declare-fun lt!1340135 () tuple2!40072)

(assert (=> b!3857627 (= e!2384563 (not (isEmpty!24202 (_1!23170 lt!1340135))))))

(declare-fun b!3857628 () Bool)

(declare-fun e!2384565 () Bool)

(assert (=> b!3857628 (= e!2384565 (= (_2!23170 lt!1340135) lt!1339979))))

(declare-fun b!3857629 () Bool)

(assert (=> b!3857629 (= e!2384565 e!2384563)))

(declare-fun res!1561706 () Bool)

(assert (=> b!3857629 (= res!1561706 (< (size!30746 (_2!23170 lt!1340135)) (size!30746 lt!1339979)))))

(assert (=> b!3857629 (=> (not res!1561706) (not e!2384563))))

(declare-fun b!3857626 () Bool)

(declare-fun lt!1340136 () Option!8740)

(declare-fun lt!1340134 () tuple2!40072)

(assert (=> b!3857626 (= e!2384564 (tuple2!40073 (Cons!40874 (_1!23169 (v!39037 lt!1340136)) (_1!23170 lt!1340134)) (_2!23170 lt!1340134)))))

(assert (=> b!3857626 (= lt!1340134 (lexList!1679 thiss!20629 rules!2768 (_2!23169 (v!39037 lt!1340136))))))

(declare-fun d!1143806 () Bool)

(assert (=> d!1143806 e!2384565))

(declare-fun c!671823 () Bool)

(assert (=> d!1143806 (= c!671823 (> (size!30750 (_1!23170 lt!1340135)) 0))))

(assert (=> d!1143806 (= lt!1340135 e!2384564)))

(declare-fun c!671824 () Bool)

(assert (=> d!1143806 (= c!671824 ((_ is Some!8739) lt!1340136))))

(assert (=> d!1143806 (= lt!1340136 (maxPrefix!3215 thiss!20629 rules!2768 lt!1339979))))

(assert (=> d!1143806 (= (lexList!1679 thiss!20629 rules!2768 lt!1339979) lt!1340135)))

(assert (= (and d!1143806 c!671824) b!3857626))

(assert (= (and d!1143806 (not c!671824)) b!3857625))

(assert (= (and d!1143806 c!671823) b!3857629))

(assert (= (and d!1143806 (not c!671823)) b!3857628))

(assert (= (and b!3857629 res!1561706) b!3857627))

(declare-fun m!4413245 () Bool)

(assert (=> b!3857627 m!4413245))

(declare-fun m!4413247 () Bool)

(assert (=> b!3857629 m!4413247))

(assert (=> b!3857629 m!4412785))

(declare-fun m!4413249 () Bool)

(assert (=> b!3857626 m!4413249))

(declare-fun m!4413251 () Bool)

(assert (=> d!1143806 m!4413251))

(assert (=> d!1143806 m!4412723))

(assert (=> b!3857138 d!1143806))

(declare-fun b!3857632 () Bool)

(declare-fun res!1561707 () Bool)

(declare-fun e!2384566 () Bool)

(assert (=> b!3857632 (=> (not res!1561707) (not e!2384566))))

(declare-fun lt!1340137 () List!40998)

(assert (=> b!3857632 (= res!1561707 (= (size!30750 lt!1340137) (+ (size!30750 prefixTokens!80) (size!30750 suffixTokens!72))))))

(declare-fun b!3857631 () Bool)

(declare-fun e!2384567 () List!40998)

(assert (=> b!3857631 (= e!2384567 (Cons!40874 (h!46294 prefixTokens!80) (++!10402 (t!313009 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1143808 () Bool)

(assert (=> d!1143808 e!2384566))

(declare-fun res!1561708 () Bool)

(assert (=> d!1143808 (=> (not res!1561708) (not e!2384566))))

(assert (=> d!1143808 (= res!1561708 (= (content!6092 lt!1340137) ((_ map or) (content!6092 prefixTokens!80) (content!6092 suffixTokens!72))))))

(assert (=> d!1143808 (= lt!1340137 e!2384567)))

(declare-fun c!671825 () Bool)

(assert (=> d!1143808 (= c!671825 ((_ is Nil!40874) prefixTokens!80))))

(assert (=> d!1143808 (= (++!10402 prefixTokens!80 suffixTokens!72) lt!1340137)))

(declare-fun b!3857630 () Bool)

(assert (=> b!3857630 (= e!2384567 suffixTokens!72)))

(declare-fun b!3857633 () Bool)

(assert (=> b!3857633 (= e!2384566 (or (not (= suffixTokens!72 Nil!40874)) (= lt!1340137 prefixTokens!80)))))

(assert (= (and d!1143808 c!671825) b!3857630))

(assert (= (and d!1143808 (not c!671825)) b!3857631))

(assert (= (and d!1143808 res!1561708) b!3857632))

(assert (= (and b!3857632 res!1561707) b!3857633))

(declare-fun m!4413253 () Bool)

(assert (=> b!3857632 m!4413253))

(declare-fun m!4413255 () Bool)

(assert (=> b!3857632 m!4413255))

(declare-fun m!4413257 () Bool)

(assert (=> b!3857632 m!4413257))

(declare-fun m!4413259 () Bool)

(assert (=> b!3857631 m!4413259))

(declare-fun m!4413261 () Bool)

(assert (=> d!1143808 m!4413261))

(declare-fun m!4413263 () Bool)

(assert (=> d!1143808 m!4413263))

(declare-fun m!4413265 () Bool)

(assert (=> d!1143808 m!4413265))

(assert (=> b!3857138 d!1143808))

(declare-fun d!1143810 () Bool)

(declare-fun e!2384573 () Bool)

(assert (=> d!1143810 e!2384573))

(declare-fun res!1561714 () Bool)

(assert (=> d!1143810 (=> (not res!1561714) (not e!2384573))))

(declare-fun lt!1340140 () List!40997)

(declare-fun content!6093 (List!40997) (InoxSet C!22640))

(assert (=> d!1143810 (= res!1561714 (= (content!6093 lt!1340140) ((_ map or) (content!6093 prefix!426) (content!6093 suffix!1176))))))

(declare-fun e!2384572 () List!40997)

(assert (=> d!1143810 (= lt!1340140 e!2384572)))

(declare-fun c!671828 () Bool)

(assert (=> d!1143810 (= c!671828 ((_ is Nil!40873) prefix!426))))

(assert (=> d!1143810 (= (++!10401 prefix!426 suffix!1176) lt!1340140)))

(declare-fun b!3857642 () Bool)

(assert (=> b!3857642 (= e!2384572 suffix!1176)))

(declare-fun b!3857644 () Bool)

(declare-fun res!1561713 () Bool)

(assert (=> b!3857644 (=> (not res!1561713) (not e!2384573))))

(assert (=> b!3857644 (= res!1561713 (= (size!30746 lt!1340140) (+ (size!30746 prefix!426) (size!30746 suffix!1176))))))

(declare-fun b!3857645 () Bool)

(assert (=> b!3857645 (= e!2384573 (or (not (= suffix!1176 Nil!40873)) (= lt!1340140 prefix!426)))))

(declare-fun b!3857643 () Bool)

(assert (=> b!3857643 (= e!2384572 (Cons!40873 (h!46293 prefix!426) (++!10401 (t!313008 prefix!426) suffix!1176)))))

(assert (= (and d!1143810 c!671828) b!3857642))

(assert (= (and d!1143810 (not c!671828)) b!3857643))

(assert (= (and d!1143810 res!1561714) b!3857644))

(assert (= (and b!3857644 res!1561713) b!3857645))

(declare-fun m!4413267 () Bool)

(assert (=> d!1143810 m!4413267))

(declare-fun m!4413269 () Bool)

(assert (=> d!1143810 m!4413269))

(declare-fun m!4413271 () Bool)

(assert (=> d!1143810 m!4413271))

(declare-fun m!4413273 () Bool)

(assert (=> b!3857644 m!4413273))

(assert (=> b!3857644 m!4412709))

(assert (=> b!3857644 m!4412781))

(declare-fun m!4413275 () Bool)

(assert (=> b!3857643 m!4413275))

(assert (=> b!3857138 d!1143810))

(declare-fun d!1143812 () Bool)

(declare-fun res!1561715 () Bool)

(declare-fun e!2384574 () Bool)

(assert (=> d!1143812 (=> (not res!1561715) (not e!2384574))))

(assert (=> d!1143812 (= res!1561715 (not (isEmpty!24204 (originalCharacters!6922 (h!46294 suffixTokens!72)))))))

(assert (=> d!1143812 (= (inv!55036 (h!46294 suffixTokens!72)) e!2384574)))

(declare-fun b!3857646 () Bool)

(declare-fun res!1561716 () Bool)

(assert (=> b!3857646 (=> (not res!1561716) (not e!2384574))))

(assert (=> b!3857646 (= res!1561716 (= (originalCharacters!6922 (h!46294 suffixTokens!72)) (list!15216 (dynLambda!17645 (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) (value!200811 (h!46294 suffixTokens!72))))))))

(declare-fun b!3857647 () Bool)

(assert (=> b!3857647 (= e!2384574 (= (size!30745 (h!46294 suffixTokens!72)) (size!30746 (originalCharacters!6922 (h!46294 suffixTokens!72)))))))

(assert (= (and d!1143812 res!1561715) b!3857646))

(assert (= (and b!3857646 res!1561716) b!3857647))

(declare-fun b_lambda!112781 () Bool)

(assert (=> (not b_lambda!112781) (not b!3857646)))

(declare-fun t!313066 () Bool)

(declare-fun tb!223367 () Bool)

(assert (=> (and b!3857136 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72))))) t!313066) tb!223367))

(declare-fun b!3857648 () Bool)

(declare-fun e!2384575 () Bool)

(declare-fun tp!1169221 () Bool)

(assert (=> b!3857648 (= e!2384575 (and (inv!55039 (c!671729 (dynLambda!17645 (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) (value!200811 (h!46294 suffixTokens!72))))) tp!1169221))))

(declare-fun result!272022 () Bool)

(assert (=> tb!223367 (= result!272022 (and (inv!55040 (dynLambda!17645 (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) (value!200811 (h!46294 suffixTokens!72)))) e!2384575))))

(assert (= tb!223367 b!3857648))

(declare-fun m!4413277 () Bool)

(assert (=> b!3857648 m!4413277))

(declare-fun m!4413279 () Bool)

(assert (=> tb!223367 m!4413279))

(assert (=> b!3857646 t!313066))

(declare-fun b_and!288633 () Bool)

(assert (= b_and!288627 (and (=> t!313066 result!272022) b_and!288633)))

(declare-fun tb!223369 () Bool)

(declare-fun t!313068 () Bool)

(assert (=> (and b!3857122 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72))))) t!313068) tb!223369))

(declare-fun result!272024 () Bool)

(assert (= result!272024 result!272022))

(assert (=> b!3857646 t!313068))

(declare-fun b_and!288635 () Bool)

(assert (= b_and!288629 (and (=> t!313068 result!272024) b_and!288635)))

(declare-fun t!313070 () Bool)

(declare-fun tb!223371 () Bool)

(assert (=> (and b!3857142 (= (toChars!8609 (transformation!6322 (h!46295 rules!2768))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72))))) t!313070) tb!223371))

(declare-fun result!272026 () Bool)

(assert (= result!272026 result!272022))

(assert (=> b!3857646 t!313070))

(declare-fun b_and!288637 () Bool)

(assert (= b_and!288631 (and (=> t!313070 result!272026) b_and!288637)))

(declare-fun m!4413281 () Bool)

(assert (=> d!1143812 m!4413281))

(declare-fun m!4413283 () Bool)

(assert (=> b!3857646 m!4413283))

(assert (=> b!3857646 m!4413283))

(declare-fun m!4413285 () Bool)

(assert (=> b!3857646 m!4413285))

(declare-fun m!4413287 () Bool)

(assert (=> b!3857647 m!4413287))

(assert (=> b!3857150 d!1143812))

(declare-fun d!1143814 () Bool)

(assert (=> d!1143814 (= (inv!55032 (tag!7182 (h!46295 rules!2768))) (= (mod (str.len (value!200810 (tag!7182 (h!46295 rules!2768)))) 2) 0))))

(assert (=> b!3857129 d!1143814))

(declare-fun d!1143816 () Bool)

(declare-fun res!1561717 () Bool)

(declare-fun e!2384576 () Bool)

(assert (=> d!1143816 (=> (not res!1561717) (not e!2384576))))

(assert (=> d!1143816 (= res!1561717 (semiInverseModEq!2711 (toChars!8609 (transformation!6322 (h!46295 rules!2768))) (toValue!8750 (transformation!6322 (h!46295 rules!2768)))))))

(assert (=> d!1143816 (= (inv!55035 (transformation!6322 (h!46295 rules!2768))) e!2384576)))

(declare-fun b!3857649 () Bool)

(assert (=> b!3857649 (= e!2384576 (equivClasses!2610 (toChars!8609 (transformation!6322 (h!46295 rules!2768))) (toValue!8750 (transformation!6322 (h!46295 rules!2768)))))))

(assert (= (and d!1143816 res!1561717) b!3857649))

(declare-fun m!4413289 () Bool)

(assert (=> d!1143816 m!4413289))

(declare-fun m!4413291 () Bool)

(assert (=> b!3857649 m!4413291))

(assert (=> b!3857129 d!1143816))

(declare-fun d!1143818 () Bool)

(declare-fun dynLambda!17646 (Int BalanceConc!24660) TokenValue!6552)

(assert (=> d!1143818 (= (apply!9565 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) (seqFromList!4593 lt!1339982)) (dynLambda!17646 (toValue!8750 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981))))) (seqFromList!4593 lt!1339982)))))

(declare-fun b_lambda!112783 () Bool)

(assert (=> (not b_lambda!112783) (not d!1143818)))

(declare-fun tb!223373 () Bool)

(declare-fun t!313072 () Bool)

(assert (=> (and b!3857136 (= (toValue!8750 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) (toValue!8750 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313072) tb!223373))

(declare-fun result!272028 () Bool)

(assert (=> tb!223373 (= result!272028 (inv!21 (dynLambda!17646 (toValue!8750 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981))))) (seqFromList!4593 lt!1339982))))))

(declare-fun m!4413293 () Bool)

(assert (=> tb!223373 m!4413293))

(assert (=> d!1143818 t!313072))

(declare-fun b_and!288639 () Bool)

(assert (= b_and!288579 (and (=> t!313072 result!272028) b_and!288639)))

(declare-fun t!313074 () Bool)

(declare-fun tb!223375 () Bool)

(assert (=> (and b!3857122 (= (toValue!8750 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) (toValue!8750 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313074) tb!223375))

(declare-fun result!272032 () Bool)

(assert (= result!272032 result!272028))

(assert (=> d!1143818 t!313074))

(declare-fun b_and!288641 () Bool)

(assert (= b_and!288583 (and (=> t!313074 result!272032) b_and!288641)))

(declare-fun t!313076 () Bool)

(declare-fun tb!223377 () Bool)

(assert (=> (and b!3857142 (= (toValue!8750 (transformation!6322 (h!46295 rules!2768))) (toValue!8750 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313076) tb!223377))

(declare-fun result!272034 () Bool)

(assert (= result!272034 result!272028))

(assert (=> d!1143818 t!313076))

(declare-fun b_and!288643 () Bool)

(assert (= b_and!288587 (and (=> t!313076 result!272034) b_and!288643)))

(assert (=> d!1143818 m!4412747))

(declare-fun m!4413295 () Bool)

(assert (=> d!1143818 m!4413295))

(assert (=> b!3857131 d!1143818))

(declare-fun b!3857652 () Bool)

(declare-fun e!2384581 () tuple2!40072)

(assert (=> b!3857652 (= e!2384581 (tuple2!40073 Nil!40874 (_2!23169 (v!39037 lt!1339981))))))

(declare-fun b!3857654 () Bool)

(declare-fun e!2384580 () Bool)

(declare-fun lt!1340142 () tuple2!40072)

(assert (=> b!3857654 (= e!2384580 (not (isEmpty!24202 (_1!23170 lt!1340142))))))

(declare-fun b!3857655 () Bool)

(declare-fun e!2384582 () Bool)

(assert (=> b!3857655 (= e!2384582 (= (_2!23170 lt!1340142) (_2!23169 (v!39037 lt!1339981))))))

(declare-fun b!3857656 () Bool)

(assert (=> b!3857656 (= e!2384582 e!2384580)))

(declare-fun res!1561718 () Bool)

(assert (=> b!3857656 (= res!1561718 (< (size!30746 (_2!23170 lt!1340142)) (size!30746 (_2!23169 (v!39037 lt!1339981)))))))

(assert (=> b!3857656 (=> (not res!1561718) (not e!2384580))))

(declare-fun b!3857653 () Bool)

(declare-fun lt!1340143 () Option!8740)

(declare-fun lt!1340141 () tuple2!40072)

(assert (=> b!3857653 (= e!2384581 (tuple2!40073 (Cons!40874 (_1!23169 (v!39037 lt!1340143)) (_1!23170 lt!1340141)) (_2!23170 lt!1340141)))))

(assert (=> b!3857653 (= lt!1340141 (lexList!1679 thiss!20629 rules!2768 (_2!23169 (v!39037 lt!1340143))))))

(declare-fun d!1143820 () Bool)

(assert (=> d!1143820 e!2384582))

(declare-fun c!671829 () Bool)

(assert (=> d!1143820 (= c!671829 (> (size!30750 (_1!23170 lt!1340142)) 0))))

(assert (=> d!1143820 (= lt!1340142 e!2384581)))

(declare-fun c!671830 () Bool)

(assert (=> d!1143820 (= c!671830 ((_ is Some!8739) lt!1340143))))

(assert (=> d!1143820 (= lt!1340143 (maxPrefix!3215 thiss!20629 rules!2768 (_2!23169 (v!39037 lt!1339981))))))

(assert (=> d!1143820 (= (lexList!1679 thiss!20629 rules!2768 (_2!23169 (v!39037 lt!1339981))) lt!1340142)))

(assert (= (and d!1143820 c!671830) b!3857653))

(assert (= (and d!1143820 (not c!671830)) b!3857652))

(assert (= (and d!1143820 c!671829) b!3857656))

(assert (= (and d!1143820 (not c!671829)) b!3857655))

(assert (= (and b!3857656 res!1561718) b!3857654))

(declare-fun m!4413297 () Bool)

(assert (=> b!3857654 m!4413297))

(declare-fun m!4413299 () Bool)

(assert (=> b!3857656 m!4413299))

(assert (=> b!3857656 m!4412783))

(declare-fun m!4413301 () Bool)

(assert (=> b!3857653 m!4413301))

(declare-fun m!4413303 () Bool)

(assert (=> d!1143820 m!4413303))

(declare-fun m!4413305 () Bool)

(assert (=> d!1143820 m!4413305))

(assert (=> b!3857131 d!1143820))

(declare-fun d!1143822 () Bool)

(declare-fun lt!1340146 () List!40997)

(assert (=> d!1143822 (= (++!10401 lt!1339982 lt!1340146) lt!1339979)))

(declare-fun e!2384585 () List!40997)

(assert (=> d!1143822 (= lt!1340146 e!2384585)))

(declare-fun c!671833 () Bool)

(assert (=> d!1143822 (= c!671833 ((_ is Cons!40873) lt!1339982))))

(assert (=> d!1143822 (>= (size!30746 lt!1339979) (size!30746 lt!1339982))))

(assert (=> d!1143822 (= (getSuffix!1876 lt!1339979 lt!1339982) lt!1340146)))

(declare-fun b!3857661 () Bool)

(assert (=> b!3857661 (= e!2384585 (getSuffix!1876 (tail!5833 lt!1339979) (t!313008 lt!1339982)))))

(declare-fun b!3857662 () Bool)

(assert (=> b!3857662 (= e!2384585 lt!1339979)))

(assert (= (and d!1143822 c!671833) b!3857661))

(assert (= (and d!1143822 (not c!671833)) b!3857662))

(declare-fun m!4413307 () Bool)

(assert (=> d!1143822 m!4413307))

(assert (=> d!1143822 m!4412785))

(assert (=> d!1143822 m!4412759))

(declare-fun m!4413309 () Bool)

(assert (=> b!3857661 m!4413309))

(assert (=> b!3857661 m!4413309))

(declare-fun m!4413311 () Bool)

(assert (=> b!3857661 m!4413311))

(assert (=> b!3857131 d!1143822))

(declare-fun d!1143824 () Bool)

(assert (=> d!1143824 (= (_2!23169 (v!39037 lt!1339981)) lt!1339985)))

(declare-fun lt!1340149 () Unit!58544)

(declare-fun choose!22710 (List!40997 List!40997 List!40997 List!40997 List!40997) Unit!58544)

(assert (=> d!1143824 (= lt!1340149 (choose!22710 lt!1339982 (_2!23169 (v!39037 lt!1339981)) lt!1339982 lt!1339985 lt!1339979))))

(assert (=> d!1143824 (isPrefix!3421 lt!1339982 lt!1339979)))

(assert (=> d!1143824 (= (lemmaSamePrefixThenSameSuffix!1642 lt!1339982 (_2!23169 (v!39037 lt!1339981)) lt!1339982 lt!1339985 lt!1339979) lt!1340149)))

(declare-fun bs!583123 () Bool)

(assert (= bs!583123 d!1143824))

(declare-fun m!4413313 () Bool)

(assert (=> bs!583123 m!4413313))

(declare-fun m!4413315 () Bool)

(assert (=> bs!583123 m!4413315))

(assert (=> b!3857131 d!1143824))

(declare-fun d!1143826 () Bool)

(declare-fun lt!1340150 () Int)

(assert (=> d!1143826 (>= lt!1340150 0)))

(declare-fun e!2384586 () Int)

(assert (=> d!1143826 (= lt!1340150 e!2384586)))

(declare-fun c!671834 () Bool)

(assert (=> d!1143826 (= c!671834 ((_ is Nil!40873) lt!1339982))))

(assert (=> d!1143826 (= (size!30746 lt!1339982) lt!1340150)))

(declare-fun b!3857663 () Bool)

(assert (=> b!3857663 (= e!2384586 0)))

(declare-fun b!3857664 () Bool)

(assert (=> b!3857664 (= e!2384586 (+ 1 (size!30746 (t!313008 lt!1339982))))))

(assert (= (and d!1143826 c!671834) b!3857663))

(assert (= (and d!1143826 (not c!671834)) b!3857664))

(declare-fun m!4413317 () Bool)

(assert (=> b!3857664 m!4413317))

(assert (=> b!3857131 d!1143826))

(declare-fun d!1143828 () Bool)

(assert (=> d!1143828 (isPrefix!3421 lt!1339982 (++!10401 lt!1339982 (_2!23169 (v!39037 lt!1339981))))))

(declare-fun lt!1340153 () Unit!58544)

(declare-fun choose!22711 (List!40997 List!40997) Unit!58544)

(assert (=> d!1143828 (= lt!1340153 (choose!22711 lt!1339982 (_2!23169 (v!39037 lt!1339981))))))

(assert (=> d!1143828 (= (lemmaConcatTwoListThenFirstIsPrefix!2284 lt!1339982 (_2!23169 (v!39037 lt!1339981))) lt!1340153)))

(declare-fun bs!583124 () Bool)

(assert (= bs!583124 d!1143828))

(assert (=> bs!583124 m!4412743))

(assert (=> bs!583124 m!4412743))

(declare-fun m!4413319 () Bool)

(assert (=> bs!583124 m!4413319))

(declare-fun m!4413321 () Bool)

(assert (=> bs!583124 m!4413321))

(assert (=> b!3857131 d!1143828))

(declare-fun b!3857676 () Bool)

(declare-fun e!2384593 () Bool)

(assert (=> b!3857676 (= e!2384593 (>= (size!30746 lt!1339986) (size!30746 lt!1339982)))))

(declare-fun b!3857675 () Bool)

(declare-fun e!2384594 () Bool)

(assert (=> b!3857675 (= e!2384594 (isPrefix!3421 (tail!5833 lt!1339982) (tail!5833 lt!1339986)))))

(declare-fun d!1143830 () Bool)

(assert (=> d!1143830 e!2384593))

(declare-fun res!1561729 () Bool)

(assert (=> d!1143830 (=> res!1561729 e!2384593)))

(declare-fun lt!1340156 () Bool)

(assert (=> d!1143830 (= res!1561729 (not lt!1340156))))

(declare-fun e!2384595 () Bool)

(assert (=> d!1143830 (= lt!1340156 e!2384595)))

(declare-fun res!1561727 () Bool)

(assert (=> d!1143830 (=> res!1561727 e!2384595)))

(assert (=> d!1143830 (= res!1561727 ((_ is Nil!40873) lt!1339982))))

(assert (=> d!1143830 (= (isPrefix!3421 lt!1339982 lt!1339986) lt!1340156)))

(declare-fun b!3857674 () Bool)

(declare-fun res!1561728 () Bool)

(assert (=> b!3857674 (=> (not res!1561728) (not e!2384594))))

(assert (=> b!3857674 (= res!1561728 (= (head!8122 lt!1339982) (head!8122 lt!1339986)))))

(declare-fun b!3857673 () Bool)

(assert (=> b!3857673 (= e!2384595 e!2384594)))

(declare-fun res!1561730 () Bool)

(assert (=> b!3857673 (=> (not res!1561730) (not e!2384594))))

(assert (=> b!3857673 (= res!1561730 (not ((_ is Nil!40873) lt!1339986)))))

(assert (= (and d!1143830 (not res!1561727)) b!3857673))

(assert (= (and b!3857673 res!1561730) b!3857674))

(assert (= (and b!3857674 res!1561728) b!3857675))

(assert (= (and d!1143830 (not res!1561729)) b!3857676))

(declare-fun m!4413323 () Bool)

(assert (=> b!3857676 m!4413323))

(assert (=> b!3857676 m!4412759))

(assert (=> b!3857675 m!4412795))

(declare-fun m!4413325 () Bool)

(assert (=> b!3857675 m!4413325))

(assert (=> b!3857675 m!4412795))

(assert (=> b!3857675 m!4413325))

(declare-fun m!4413327 () Bool)

(assert (=> b!3857675 m!4413327))

(assert (=> b!3857674 m!4412789))

(declare-fun m!4413329 () Bool)

(assert (=> b!3857674 m!4413329))

(assert (=> b!3857131 d!1143830))

(declare-fun d!1143832 () Bool)

(declare-fun res!1561735 () Bool)

(declare-fun e!2384598 () Bool)

(assert (=> d!1143832 (=> (not res!1561735) (not e!2384598))))

(assert (=> d!1143832 (= res!1561735 (validRegex!5110 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981))))))))

(assert (=> d!1143832 (= (ruleValid!2274 thiss!20629 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) e!2384598)))

(declare-fun b!3857681 () Bool)

(declare-fun res!1561736 () Bool)

(assert (=> b!3857681 (=> (not res!1561736) (not e!2384598))))

(assert (=> b!3857681 (= res!1561736 (not (nullable!3911 (regex!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))))))

(declare-fun b!3857682 () Bool)

(assert (=> b!3857682 (= e!2384598 (not (= (tag!7182 (rule!9184 (_1!23169 (v!39037 lt!1339981)))) (String!46479 ""))))))

(assert (= (and d!1143832 res!1561735) b!3857681))

(assert (= (and b!3857681 res!1561736) b!3857682))

(assert (=> d!1143832 m!4412803))

(assert (=> b!3857681 m!4412807))

(assert (=> b!3857131 d!1143832))

(declare-fun d!1143834 () Bool)

(declare-fun list!15218 (Conc!12533) List!40997)

(assert (=> d!1143834 (= (list!15216 (charsOf!4150 (_1!23169 (v!39037 lt!1339981)))) (list!15218 (c!671729 (charsOf!4150 (_1!23169 (v!39037 lt!1339981))))))))

(declare-fun bs!583125 () Bool)

(assert (= bs!583125 d!1143834))

(declare-fun m!4413331 () Bool)

(assert (=> bs!583125 m!4413331))

(assert (=> b!3857131 d!1143834))

(declare-fun d!1143836 () Bool)

(declare-fun fromListB!2121 (List!40997) BalanceConc!24660)

(assert (=> d!1143836 (= (seqFromList!4593 lt!1339982) (fromListB!2121 lt!1339982))))

(declare-fun bs!583126 () Bool)

(assert (= bs!583126 d!1143836))

(declare-fun m!4413333 () Bool)

(assert (=> bs!583126 m!4413333))

(assert (=> b!3857131 d!1143836))

(declare-fun d!1143838 () Bool)

(declare-fun lt!1340159 () BalanceConc!24660)

(assert (=> d!1143838 (= (list!15216 lt!1340159) (originalCharacters!6922 (_1!23169 (v!39037 lt!1339981))))))

(assert (=> d!1143838 (= lt!1340159 (dynLambda!17645 (toChars!8609 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981))))) (value!200811 (_1!23169 (v!39037 lt!1339981)))))))

(assert (=> d!1143838 (= (charsOf!4150 (_1!23169 (v!39037 lt!1339981))) lt!1340159)))

(declare-fun b_lambda!112785 () Bool)

(assert (=> (not b_lambda!112785) (not d!1143838)))

(declare-fun t!313079 () Bool)

(declare-fun tb!223379 () Bool)

(assert (=> (and b!3857136 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) (toChars!8609 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313079) tb!223379))

(declare-fun b!3857683 () Bool)

(declare-fun e!2384599 () Bool)

(declare-fun tp!1169222 () Bool)

(assert (=> b!3857683 (= e!2384599 (and (inv!55039 (c!671729 (dynLambda!17645 (toChars!8609 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981))))) (value!200811 (_1!23169 (v!39037 lt!1339981)))))) tp!1169222))))

(declare-fun result!272036 () Bool)

(assert (=> tb!223379 (= result!272036 (and (inv!55040 (dynLambda!17645 (toChars!8609 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981))))) (value!200811 (_1!23169 (v!39037 lt!1339981))))) e!2384599))))

(assert (= tb!223379 b!3857683))

(declare-fun m!4413335 () Bool)

(assert (=> b!3857683 m!4413335))

(declare-fun m!4413337 () Bool)

(assert (=> tb!223379 m!4413337))

(assert (=> d!1143838 t!313079))

(declare-fun b_and!288645 () Bool)

(assert (= b_and!288633 (and (=> t!313079 result!272036) b_and!288645)))

(declare-fun t!313081 () Bool)

(declare-fun tb!223381 () Bool)

(assert (=> (and b!3857122 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) (toChars!8609 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313081) tb!223381))

(declare-fun result!272038 () Bool)

(assert (= result!272038 result!272036))

(assert (=> d!1143838 t!313081))

(declare-fun b_and!288647 () Bool)

(assert (= b_and!288635 (and (=> t!313081 result!272038) b_and!288647)))

(declare-fun t!313083 () Bool)

(declare-fun tb!223383 () Bool)

(assert (=> (and b!3857142 (= (toChars!8609 (transformation!6322 (h!46295 rules!2768))) (toChars!8609 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313083) tb!223383))

(declare-fun result!272040 () Bool)

(assert (= result!272040 result!272036))

(assert (=> d!1143838 t!313083))

(declare-fun b_and!288649 () Bool)

(assert (= b_and!288637 (and (=> t!313083 result!272040) b_and!288649)))

(declare-fun m!4413339 () Bool)

(assert (=> d!1143838 m!4413339))

(declare-fun m!4413341 () Bool)

(assert (=> d!1143838 m!4413341))

(assert (=> b!3857131 d!1143838))

(declare-fun d!1143840 () Bool)

(assert (=> d!1143840 (= (size!30745 (_1!23169 (v!39037 lt!1339981))) (size!30746 (originalCharacters!6922 (_1!23169 (v!39037 lt!1339981)))))))

(declare-fun Unit!58547 () Unit!58544)

(assert (=> d!1143840 (= (lemmaCharactersSize!983 (_1!23169 (v!39037 lt!1339981))) Unit!58547)))

(declare-fun bs!583127 () Bool)

(assert (= bs!583127 d!1143840))

(assert (=> bs!583127 m!4412731))

(assert (=> b!3857131 d!1143840))

(declare-fun d!1143842 () Bool)

(declare-fun e!2384601 () Bool)

(assert (=> d!1143842 e!2384601))

(declare-fun res!1561738 () Bool)

(assert (=> d!1143842 (=> (not res!1561738) (not e!2384601))))

(declare-fun lt!1340160 () List!40997)

(assert (=> d!1143842 (= res!1561738 (= (content!6093 lt!1340160) ((_ map or) (content!6093 lt!1339982) (content!6093 (_2!23169 (v!39037 lt!1339981))))))))

(declare-fun e!2384600 () List!40997)

(assert (=> d!1143842 (= lt!1340160 e!2384600)))

(declare-fun c!671835 () Bool)

(assert (=> d!1143842 (= c!671835 ((_ is Nil!40873) lt!1339982))))

(assert (=> d!1143842 (= (++!10401 lt!1339982 (_2!23169 (v!39037 lt!1339981))) lt!1340160)))

(declare-fun b!3857684 () Bool)

(assert (=> b!3857684 (= e!2384600 (_2!23169 (v!39037 lt!1339981)))))

(declare-fun b!3857686 () Bool)

(declare-fun res!1561737 () Bool)

(assert (=> b!3857686 (=> (not res!1561737) (not e!2384601))))

(assert (=> b!3857686 (= res!1561737 (= (size!30746 lt!1340160) (+ (size!30746 lt!1339982) (size!30746 (_2!23169 (v!39037 lt!1339981))))))))

(declare-fun b!3857687 () Bool)

(assert (=> b!3857687 (= e!2384601 (or (not (= (_2!23169 (v!39037 lt!1339981)) Nil!40873)) (= lt!1340160 lt!1339982)))))

(declare-fun b!3857685 () Bool)

(assert (=> b!3857685 (= e!2384600 (Cons!40873 (h!46293 lt!1339982) (++!10401 (t!313008 lt!1339982) (_2!23169 (v!39037 lt!1339981)))))))

(assert (= (and d!1143842 c!671835) b!3857684))

(assert (= (and d!1143842 (not c!671835)) b!3857685))

(assert (= (and d!1143842 res!1561738) b!3857686))

(assert (= (and b!3857686 res!1561737) b!3857687))

(declare-fun m!4413343 () Bool)

(assert (=> d!1143842 m!4413343))

(declare-fun m!4413345 () Bool)

(assert (=> d!1143842 m!4413345))

(declare-fun m!4413347 () Bool)

(assert (=> d!1143842 m!4413347))

(declare-fun m!4413349 () Bool)

(assert (=> b!3857686 m!4413349))

(assert (=> b!3857686 m!4412759))

(assert (=> b!3857686 m!4412783))

(declare-fun m!4413351 () Bool)

(assert (=> b!3857685 m!4413351))

(assert (=> b!3857131 d!1143842))

(declare-fun d!1143844 () Bool)

(assert (=> d!1143844 (ruleValid!2274 thiss!20629 (rule!9184 (_1!23169 (v!39037 lt!1339981))))))

(declare-fun lt!1340163 () Unit!58544)

(declare-fun choose!22712 (LexerInterface!5911 Rule!12444 List!40999) Unit!58544)

(assert (=> d!1143844 (= lt!1340163 (choose!22712 thiss!20629 (rule!9184 (_1!23169 (v!39037 lt!1339981))) rules!2768))))

(assert (=> d!1143844 (contains!8263 rules!2768 (rule!9184 (_1!23169 (v!39037 lt!1339981))))))

(assert (=> d!1143844 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1354 thiss!20629 (rule!9184 (_1!23169 (v!39037 lt!1339981))) rules!2768) lt!1340163)))

(declare-fun bs!583128 () Bool)

(assert (= bs!583128 d!1143844))

(assert (=> bs!583128 m!4412757))

(declare-fun m!4413353 () Bool)

(assert (=> bs!583128 m!4413353))

(declare-fun m!4413355 () Bool)

(assert (=> bs!583128 m!4413355))

(assert (=> b!3857131 d!1143844))

(declare-fun d!1143846 () Bool)

(declare-fun res!1561741 () Bool)

(declare-fun e!2384604 () Bool)

(assert (=> d!1143846 (=> (not res!1561741) (not e!2384604))))

(declare-fun rulesValid!2446 (LexerInterface!5911 List!40999) Bool)

(assert (=> d!1143846 (= res!1561741 (rulesValid!2446 thiss!20629 rules!2768))))

(assert (=> d!1143846 (= (rulesInvariant!5254 thiss!20629 rules!2768) e!2384604)))

(declare-fun b!3857690 () Bool)

(declare-datatypes ((List!41001 0))(
  ( (Nil!40877) (Cons!40877 (h!46297 String!46478) (t!313108 List!41001)) )
))
(declare-fun noDuplicateTag!2447 (LexerInterface!5911 List!40999 List!41001) Bool)

(assert (=> b!3857690 (= e!2384604 (noDuplicateTag!2447 thiss!20629 rules!2768 Nil!40877))))

(assert (= (and d!1143846 res!1561741) b!3857690))

(declare-fun m!4413357 () Bool)

(assert (=> d!1143846 m!4413357))

(declare-fun m!4413359 () Bool)

(assert (=> b!3857690 m!4413359))

(assert (=> b!3857132 d!1143846))

(declare-fun e!2384607 () Bool)

(assert (=> b!3857146 (= tp!1169139 e!2384607)))

(declare-fun b!3857702 () Bool)

(declare-fun tp!1169237 () Bool)

(declare-fun tp!1169236 () Bool)

(assert (=> b!3857702 (= e!2384607 (and tp!1169237 tp!1169236))))

(declare-fun b!3857704 () Bool)

(declare-fun tp!1169233 () Bool)

(declare-fun tp!1169234 () Bool)

(assert (=> b!3857704 (= e!2384607 (and tp!1169233 tp!1169234))))

(declare-fun b!3857703 () Bool)

(declare-fun tp!1169235 () Bool)

(assert (=> b!3857703 (= e!2384607 tp!1169235)))

(declare-fun b!3857701 () Bool)

(assert (=> b!3857701 (= e!2384607 tp_is_empty!19425)))

(assert (= (and b!3857146 ((_ is ElementMatch!11227) (regex!6322 (rule!9184 (h!46294 prefixTokens!80))))) b!3857701))

(assert (= (and b!3857146 ((_ is Concat!17780) (regex!6322 (rule!9184 (h!46294 prefixTokens!80))))) b!3857702))

(assert (= (and b!3857146 ((_ is Star!11227) (regex!6322 (rule!9184 (h!46294 prefixTokens!80))))) b!3857703))

(assert (= (and b!3857146 ((_ is Union!11227) (regex!6322 (rule!9184 (h!46294 prefixTokens!80))))) b!3857704))

(declare-fun b!3857718 () Bool)

(declare-fun b_free!103573 () Bool)

(declare-fun b_next!104277 () Bool)

(assert (=> b!3857718 (= b_free!103573 (not b_next!104277))))

(declare-fun tb!223385 () Bool)

(declare-fun t!313085 () Bool)

(assert (=> (and b!3857718 (= (toValue!8750 (transformation!6322 (rule!9184 (h!46294 (t!313009 prefixTokens!80))))) (toValue!8750 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313085) tb!223385))

(declare-fun result!272046 () Bool)

(assert (= result!272046 result!272028))

(assert (=> d!1143818 t!313085))

(declare-fun tp!1169251 () Bool)

(declare-fun b_and!288651 () Bool)

(assert (=> b!3857718 (= tp!1169251 (and (=> t!313085 result!272046) b_and!288651))))

(declare-fun b_free!103575 () Bool)

(declare-fun b_next!104279 () Bool)

(assert (=> b!3857718 (= b_free!103575 (not b_next!104279))))

(declare-fun t!313087 () Bool)

(declare-fun tb!223387 () Bool)

(assert (=> (and b!3857718 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 (t!313009 prefixTokens!80))))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80))))) t!313087) tb!223387))

(declare-fun result!272048 () Bool)

(assert (= result!272048 result!272014))

(assert (=> b!3857618 t!313087))

(declare-fun tb!223389 () Bool)

(declare-fun t!313089 () Bool)

(assert (=> (and b!3857718 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 (t!313009 prefixTokens!80))))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72))))) t!313089) tb!223389))

(declare-fun result!272050 () Bool)

(assert (= result!272050 result!272022))

(assert (=> b!3857646 t!313089))

(declare-fun t!313091 () Bool)

(declare-fun tb!223391 () Bool)

(assert (=> (and b!3857718 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 (t!313009 prefixTokens!80))))) (toChars!8609 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313091) tb!223391))

(declare-fun result!272052 () Bool)

(assert (= result!272052 result!272036))

(assert (=> d!1143838 t!313091))

(declare-fun b_and!288653 () Bool)

(declare-fun tp!1169250 () Bool)

(assert (=> b!3857718 (= tp!1169250 (and (=> t!313087 result!272048) (=> t!313089 result!272050) (=> t!313091 result!272052) b_and!288653))))

(declare-fun e!2384625 () Bool)

(declare-fun b!3857716 () Bool)

(declare-fun e!2384621 () Bool)

(declare-fun tp!1169252 () Bool)

(assert (=> b!3857716 (= e!2384621 (and (inv!21 (value!200811 (h!46294 (t!313009 prefixTokens!80)))) e!2384625 tp!1169252))))

(declare-fun tp!1169248 () Bool)

(declare-fun b!3857715 () Bool)

(declare-fun e!2384623 () Bool)

(assert (=> b!3857715 (= e!2384623 (and (inv!55036 (h!46294 (t!313009 prefixTokens!80))) e!2384621 tp!1169248))))

(declare-fun e!2384620 () Bool)

(declare-fun tp!1169249 () Bool)

(declare-fun b!3857717 () Bool)

(assert (=> b!3857717 (= e!2384625 (and tp!1169249 (inv!55032 (tag!7182 (rule!9184 (h!46294 (t!313009 prefixTokens!80))))) (inv!55035 (transformation!6322 (rule!9184 (h!46294 (t!313009 prefixTokens!80))))) e!2384620))))

(assert (=> b!3857718 (= e!2384620 (and tp!1169251 tp!1169250))))

(assert (=> b!3857135 (= tp!1169146 e!2384623)))

(assert (= b!3857717 b!3857718))

(assert (= b!3857716 b!3857717))

(assert (= b!3857715 b!3857716))

(assert (= (and b!3857135 ((_ is Cons!40874) (t!313009 prefixTokens!80))) b!3857715))

(declare-fun m!4413361 () Bool)

(assert (=> b!3857716 m!4413361))

(declare-fun m!4413363 () Bool)

(assert (=> b!3857715 m!4413363))

(declare-fun m!4413365 () Bool)

(assert (=> b!3857717 m!4413365))

(declare-fun m!4413367 () Bool)

(assert (=> b!3857717 m!4413367))

(declare-fun b!3857723 () Bool)

(declare-fun e!2384628 () Bool)

(declare-fun tp!1169255 () Bool)

(assert (=> b!3857723 (= e!2384628 (and tp_is_empty!19425 tp!1169255))))

(assert (=> b!3857126 (= tp!1169141 e!2384628)))

(assert (= (and b!3857126 ((_ is Cons!40873) (originalCharacters!6922 (h!46294 suffixTokens!72)))) b!3857723))

(declare-fun b!3857724 () Bool)

(declare-fun e!2384629 () Bool)

(declare-fun tp!1169256 () Bool)

(assert (=> b!3857724 (= e!2384629 (and tp_is_empty!19425 tp!1169256))))

(assert (=> b!3857147 (= tp!1169147 e!2384629)))

(assert (= (and b!3857147 ((_ is Cons!40873) (t!313008 suffixResult!91))) b!3857724))

(declare-fun b!3857725 () Bool)

(declare-fun e!2384630 () Bool)

(declare-fun tp!1169257 () Bool)

(assert (=> b!3857725 (= e!2384630 (and tp_is_empty!19425 tp!1169257))))

(assert (=> b!3857137 (= tp!1169145 e!2384630)))

(assert (= (and b!3857137 ((_ is Cons!40873) (t!313008 prefix!426))) b!3857725))

(declare-fun b!3857726 () Bool)

(declare-fun e!2384631 () Bool)

(declare-fun tp!1169258 () Bool)

(assert (=> b!3857726 (= e!2384631 (and tp_is_empty!19425 tp!1169258))))

(assert (=> b!3857128 (= tp!1169135 e!2384631)))

(assert (= (and b!3857128 ((_ is Cons!40873) (originalCharacters!6922 (h!46294 prefixTokens!80)))) b!3857726))

(declare-fun e!2384632 () Bool)

(assert (=> b!3857149 (= tp!1169140 e!2384632)))

(declare-fun b!3857728 () Bool)

(declare-fun tp!1169263 () Bool)

(declare-fun tp!1169262 () Bool)

(assert (=> b!3857728 (= e!2384632 (and tp!1169263 tp!1169262))))

(declare-fun b!3857730 () Bool)

(declare-fun tp!1169259 () Bool)

(declare-fun tp!1169260 () Bool)

(assert (=> b!3857730 (= e!2384632 (and tp!1169259 tp!1169260))))

(declare-fun b!3857729 () Bool)

(declare-fun tp!1169261 () Bool)

(assert (=> b!3857729 (= e!2384632 tp!1169261)))

(declare-fun b!3857727 () Bool)

(assert (=> b!3857727 (= e!2384632 tp_is_empty!19425)))

(assert (= (and b!3857149 ((_ is ElementMatch!11227) (regex!6322 (rule!9184 (h!46294 suffixTokens!72))))) b!3857727))

(assert (= (and b!3857149 ((_ is Concat!17780) (regex!6322 (rule!9184 (h!46294 suffixTokens!72))))) b!3857728))

(assert (= (and b!3857149 ((_ is Star!11227) (regex!6322 (rule!9184 (h!46294 suffixTokens!72))))) b!3857729))

(assert (= (and b!3857149 ((_ is Union!11227) (regex!6322 (rule!9184 (h!46294 suffixTokens!72))))) b!3857730))

(declare-fun b!3857734 () Bool)

(declare-fun b_free!103577 () Bool)

(declare-fun b_next!104281 () Bool)

(assert (=> b!3857734 (= b_free!103577 (not b_next!104281))))

(declare-fun tb!223393 () Bool)

(declare-fun t!313093 () Bool)

(assert (=> (and b!3857734 (= (toValue!8750 (transformation!6322 (rule!9184 (h!46294 (t!313009 suffixTokens!72))))) (toValue!8750 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313093) tb!223393))

(declare-fun result!272056 () Bool)

(assert (= result!272056 result!272028))

(assert (=> d!1143818 t!313093))

(declare-fun tp!1169267 () Bool)

(declare-fun b_and!288655 () Bool)

(assert (=> b!3857734 (= tp!1169267 (and (=> t!313093 result!272056) b_and!288655))))

(declare-fun b_free!103579 () Bool)

(declare-fun b_next!104283 () Bool)

(assert (=> b!3857734 (= b_free!103579 (not b_next!104283))))

(declare-fun tb!223395 () Bool)

(declare-fun t!313095 () Bool)

(assert (=> (and b!3857734 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 (t!313009 suffixTokens!72))))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80))))) t!313095) tb!223395))

(declare-fun result!272058 () Bool)

(assert (= result!272058 result!272014))

(assert (=> b!3857618 t!313095))

(declare-fun t!313097 () Bool)

(declare-fun tb!223397 () Bool)

(assert (=> (and b!3857734 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 (t!313009 suffixTokens!72))))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72))))) t!313097) tb!223397))

(declare-fun result!272060 () Bool)

(assert (= result!272060 result!272022))

(assert (=> b!3857646 t!313097))

(declare-fun tb!223399 () Bool)

(declare-fun t!313099 () Bool)

(assert (=> (and b!3857734 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 (t!313009 suffixTokens!72))))) (toChars!8609 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313099) tb!223399))

(declare-fun result!272062 () Bool)

(assert (= result!272062 result!272036))

(assert (=> d!1143838 t!313099))

(declare-fun tp!1169266 () Bool)

(declare-fun b_and!288657 () Bool)

(assert (=> b!3857734 (= tp!1169266 (and (=> t!313095 result!272058) (=> t!313097 result!272060) (=> t!313099 result!272062) b_and!288657))))

(declare-fun tp!1169268 () Bool)

(declare-fun e!2384634 () Bool)

(declare-fun b!3857732 () Bool)

(declare-fun e!2384638 () Bool)

(assert (=> b!3857732 (= e!2384634 (and (inv!21 (value!200811 (h!46294 (t!313009 suffixTokens!72)))) e!2384638 tp!1169268))))

(declare-fun e!2384636 () Bool)

(declare-fun b!3857731 () Bool)

(declare-fun tp!1169264 () Bool)

(assert (=> b!3857731 (= e!2384636 (and (inv!55036 (h!46294 (t!313009 suffixTokens!72))) e!2384634 tp!1169264))))

(declare-fun b!3857733 () Bool)

(declare-fun tp!1169265 () Bool)

(declare-fun e!2384633 () Bool)

(assert (=> b!3857733 (= e!2384638 (and tp!1169265 (inv!55032 (tag!7182 (rule!9184 (h!46294 (t!313009 suffixTokens!72))))) (inv!55035 (transformation!6322 (rule!9184 (h!46294 (t!313009 suffixTokens!72))))) e!2384633))))

(assert (=> b!3857734 (= e!2384633 (and tp!1169267 tp!1169266))))

(assert (=> b!3857150 (= tp!1169138 e!2384636)))

(assert (= b!3857733 b!3857734))

(assert (= b!3857732 b!3857733))

(assert (= b!3857731 b!3857732))

(assert (= (and b!3857150 ((_ is Cons!40874) (t!313009 suffixTokens!72))) b!3857731))

(declare-fun m!4413369 () Bool)

(assert (=> b!3857732 m!4413369))

(declare-fun m!4413371 () Bool)

(assert (=> b!3857731 m!4413371))

(declare-fun m!4413373 () Bool)

(assert (=> b!3857733 m!4413373))

(declare-fun m!4413375 () Bool)

(assert (=> b!3857733 m!4413375))

(declare-fun e!2384639 () Bool)

(assert (=> b!3857129 (= tp!1169142 e!2384639)))

(declare-fun b!3857736 () Bool)

(declare-fun tp!1169273 () Bool)

(declare-fun tp!1169272 () Bool)

(assert (=> b!3857736 (= e!2384639 (and tp!1169273 tp!1169272))))

(declare-fun b!3857738 () Bool)

(declare-fun tp!1169269 () Bool)

(declare-fun tp!1169270 () Bool)

(assert (=> b!3857738 (= e!2384639 (and tp!1169269 tp!1169270))))

(declare-fun b!3857737 () Bool)

(declare-fun tp!1169271 () Bool)

(assert (=> b!3857737 (= e!2384639 tp!1169271)))

(declare-fun b!3857735 () Bool)

(assert (=> b!3857735 (= e!2384639 tp_is_empty!19425)))

(assert (= (and b!3857129 ((_ is ElementMatch!11227) (regex!6322 (h!46295 rules!2768)))) b!3857735))

(assert (= (and b!3857129 ((_ is Concat!17780) (regex!6322 (h!46295 rules!2768)))) b!3857736))

(assert (= (and b!3857129 ((_ is Star!11227) (regex!6322 (h!46295 rules!2768)))) b!3857737))

(assert (= (and b!3857129 ((_ is Union!11227) (regex!6322 (h!46295 rules!2768)))) b!3857738))

(declare-fun b!3857739 () Bool)

(declare-fun e!2384640 () Bool)

(declare-fun tp!1169274 () Bool)

(assert (=> b!3857739 (= e!2384640 (and tp_is_empty!19425 tp!1169274))))

(assert (=> b!3857144 (= tp!1169143 e!2384640)))

(assert (= (and b!3857144 ((_ is Cons!40873) (t!313008 suffix!1176))) b!3857739))

(declare-fun b!3857750 () Bool)

(declare-fun b_free!103581 () Bool)

(declare-fun b_next!104285 () Bool)

(assert (=> b!3857750 (= b_free!103581 (not b_next!104285))))

(declare-fun tb!223401 () Bool)

(declare-fun t!313101 () Bool)

(assert (=> (and b!3857750 (= (toValue!8750 (transformation!6322 (h!46295 (t!313010 rules!2768)))) (toValue!8750 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313101) tb!223401))

(declare-fun result!272066 () Bool)

(assert (= result!272066 result!272028))

(assert (=> d!1143818 t!313101))

(declare-fun b_and!288659 () Bool)

(declare-fun tp!1169285 () Bool)

(assert (=> b!3857750 (= tp!1169285 (and (=> t!313101 result!272066) b_and!288659))))

(declare-fun b_free!103583 () Bool)

(declare-fun b_next!104287 () Bool)

(assert (=> b!3857750 (= b_free!103583 (not b_next!104287))))

(declare-fun t!313103 () Bool)

(declare-fun tb!223403 () Bool)

(assert (=> (and b!3857750 (= (toChars!8609 (transformation!6322 (h!46295 (t!313010 rules!2768)))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80))))) t!313103) tb!223403))

(declare-fun result!272068 () Bool)

(assert (= result!272068 result!272014))

(assert (=> b!3857618 t!313103))

(declare-fun tb!223405 () Bool)

(declare-fun t!313105 () Bool)

(assert (=> (and b!3857750 (= (toChars!8609 (transformation!6322 (h!46295 (t!313010 rules!2768)))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72))))) t!313105) tb!223405))

(declare-fun result!272070 () Bool)

(assert (= result!272070 result!272022))

(assert (=> b!3857646 t!313105))

(declare-fun t!313107 () Bool)

(declare-fun tb!223407 () Bool)

(assert (=> (and b!3857750 (= (toChars!8609 (transformation!6322 (h!46295 (t!313010 rules!2768)))) (toChars!8609 (transformation!6322 (rule!9184 (_1!23169 (v!39037 lt!1339981)))))) t!313107) tb!223407))

(declare-fun result!272072 () Bool)

(assert (= result!272072 result!272036))

(assert (=> d!1143838 t!313107))

(declare-fun tp!1169286 () Bool)

(declare-fun b_and!288661 () Bool)

(assert (=> b!3857750 (= tp!1169286 (and (=> t!313103 result!272068) (=> t!313105 result!272070) (=> t!313107 result!272072) b_and!288661))))

(declare-fun e!2384651 () Bool)

(assert (=> b!3857750 (= e!2384651 (and tp!1169285 tp!1169286))))

(declare-fun e!2384652 () Bool)

(declare-fun tp!1169283 () Bool)

(declare-fun b!3857749 () Bool)

(assert (=> b!3857749 (= e!2384652 (and tp!1169283 (inv!55032 (tag!7182 (h!46295 (t!313010 rules!2768)))) (inv!55035 (transformation!6322 (h!46295 (t!313010 rules!2768)))) e!2384651))))

(declare-fun b!3857748 () Bool)

(declare-fun e!2384649 () Bool)

(declare-fun tp!1169284 () Bool)

(assert (=> b!3857748 (= e!2384649 (and e!2384652 tp!1169284))))

(assert (=> b!3857133 (= tp!1169144 e!2384649)))

(assert (= b!3857749 b!3857750))

(assert (= b!3857748 b!3857749))

(assert (= (and b!3857133 ((_ is Cons!40875) (t!313010 rules!2768))) b!3857748))

(declare-fun m!4413377 () Bool)

(assert (=> b!3857749 m!4413377))

(declare-fun m!4413379 () Bool)

(assert (=> b!3857749 m!4413379))

(declare-fun b_lambda!112787 () Bool)

(assert (= b_lambda!112781 (or (and b!3857142 b_free!103559 (= (toChars!8609 (transformation!6322 (h!46295 rules!2768))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))))) (and b!3857136 b_free!103551) (and b!3857718 b_free!103575 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 (t!313009 prefixTokens!80))))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))))) (and b!3857750 b_free!103583 (= (toChars!8609 (transformation!6322 (h!46295 (t!313010 rules!2768)))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))))) (and b!3857734 b_free!103579 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 (t!313009 suffixTokens!72))))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))))) (and b!3857122 b_free!103555 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))))) b_lambda!112787)))

(declare-fun b_lambda!112789 () Bool)

(assert (= b_lambda!112779 (or (and b!3857734 b_free!103579 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 (t!313009 suffixTokens!72))))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))))) (and b!3857718 b_free!103575 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 (t!313009 prefixTokens!80))))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))))) (and b!3857136 b_free!103551 (= (toChars!8609 (transformation!6322 (rule!9184 (h!46294 suffixTokens!72)))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))))) (and b!3857142 b_free!103559 (= (toChars!8609 (transformation!6322 (h!46295 rules!2768))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))))) (and b!3857122 b_free!103555) (and b!3857750 b_free!103583 (= (toChars!8609 (transformation!6322 (h!46295 (t!313010 rules!2768)))) (toChars!8609 (transformation!6322 (rule!9184 (h!46294 prefixTokens!80)))))) b_lambda!112789)))

(check-sat (not b!3857737) (not b!3857681) (not b!3857573) (not b!3857732) b_and!288647 (not b_lambda!112787) (not b!3857685) (not b!3857360) (not d!1143808) (not b!3857726) (not b!3857644) (not b!3857627) (not d!1143840) (not d!1143706) (not b!3857729) (not b!3857189) (not b!3857181) (not b!3857730) b_and!288639 (not b!3857609) (not b!3857654) (not b!3857648) (not d!1143812) (not b!3857702) (not b!3857448) (not b!3857361) b_and!288649 (not b!3857656) (not b!3857704) b_and!288659 (not bm!282490) (not b_next!104255) (not b!3857569) (not b!3857357) (not b!3857571) b_and!288653 (not tb!223367) (not b!3857717) (not d!1143846) (not b!3857739) b_and!288657 (not b!3857631) (not d!1143810) (not b!3857358) (not b!3857653) tp_is_empty!19425 (not d!1143834) (not b_next!104281) b_and!288643 (not b_next!104253) (not d!1143764) (not d!1143820) (not b!3857664) (not b!3857618) (not d!1143842) (not bm!282499) (not b!3857435) (not b!3857444) (not d!1143816) (not b!3857576) (not b_lambda!112789) (not d!1143828) (not d!1143748) (not b!3857441) (not b_next!104287) (not b!3857733) (not tb!223361) (not d!1143832) (not b_next!104283) (not tb!223373) (not d!1143806) (not b!3857568) (not b!3857715) (not b!3857364) (not b!3857624) (not b!3857413) (not d!1143836) (not b!3857690) (not d!1143726) b_and!288645 (not b!3857723) b_and!288641 (not b!3857731) (not b!3857703) (not b!3857407) (not b!3857675) (not b!3857439) (not b!3857449) (not d!1143804) (not b!3857619) (not b!3857359) (not b!3857649) (not b!3857570) (not b!3857661) (not b!3857683) (not b!3857415) (not b_next!104261) (not b_next!104279) (not d!1143668) (not d!1143744) (not b!3857724) (not b!3857613) (not b!3857686) (not b!3857749) (not b!3857611) (not b!3857574) (not b!3857180) (not b!3857363) (not b!3857748) (not b_next!104277) (not b!3857626) (not b!3857646) (not b!3857184) (not b!3857643) (not b!3857437) (not d!1143844) (not b!3857575) (not b!3857443) b_and!288661 (not b_next!104263) (not b_next!104257) b_and!288651 (not b_next!104259) (not b!3857725) (not b!3857469) (not d!1143822) (not tb!223379) (not b_lambda!112785) (not b!3857468) (not b!3857182) (not b!3857632) (not b!3857183) (not b!3857728) b_and!288655 (not b!3857716) (not b!3857362) (not b!3857647) (not b!3857676) (not b!3857738) (not b!3857446) (not b!3857674) (not b_lambda!112783) (not b_next!104285) (not d!1143824) (not d!1143676) (not b!3857736) (not b!3857596) (not d!1143838) (not b!3857608) (not d!1143798) (not b!3857629))
(check-sat b_and!288647 b_and!288639 b_and!288649 b_and!288659 b_and!288657 (not b_next!104261) (not b_next!104279) (not b_next!104277) (not b_next!104259) b_and!288655 (not b_next!104285) (not b_next!104255) b_and!288653 (not b_next!104281) b_and!288643 (not b_next!104253) (not b_next!104287) (not b_next!104283) b_and!288645 b_and!288641 b_and!288661 (not b_next!104263) (not b_next!104257) b_and!288651)
