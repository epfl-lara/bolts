; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53500 () Bool)

(assert start!53500)

(declare-fun b!578575 () Bool)

(declare-fun b_free!16093 () Bool)

(declare-fun b_next!16109 () Bool)

(assert (=> b!578575 (= b_free!16093 (not b_next!16109))))

(declare-fun tp!181077 () Bool)

(declare-fun b_and!56795 () Bool)

(assert (=> b!578575 (= tp!181077 b_and!56795)))

(declare-fun b_free!16095 () Bool)

(declare-fun b_next!16111 () Bool)

(assert (=> b!578575 (= b_free!16095 (not b_next!16111))))

(declare-fun tp!181086 () Bool)

(declare-fun b_and!56797 () Bool)

(assert (=> b!578575 (= tp!181086 b_and!56797)))

(declare-fun b!578589 () Bool)

(declare-fun b_free!16097 () Bool)

(declare-fun b_next!16113 () Bool)

(assert (=> b!578589 (= b_free!16097 (not b_next!16113))))

(declare-fun tp!181078 () Bool)

(declare-fun b_and!56799 () Bool)

(assert (=> b!578589 (= tp!181078 b_and!56799)))

(declare-fun b_free!16099 () Bool)

(declare-fun b_next!16115 () Bool)

(assert (=> b!578589 (= b_free!16099 (not b_next!16115))))

(declare-fun tp!181080 () Bool)

(declare-fun b_and!56801 () Bool)

(assert (=> b!578589 (= tp!181080 b_and!56801)))

(declare-fun b!578574 () Bool)

(declare-fun e!349650 () Bool)

(declare-fun e!349665 () Bool)

(assert (=> b!578574 (= e!349650 e!349665)))

(declare-fun res!248900 () Bool)

(assert (=> b!578574 (=> (not res!248900) (not e!349665))))

(declare-datatypes ((C!3796 0))(
  ( (C!3797 (val!2124 Int)) )
))
(declare-datatypes ((List!5692 0))(
  ( (Nil!5682) (Cons!5682 (h!11083 C!3796) (t!77727 List!5692)) )
))
(declare-fun lt!245131 () List!5692)

(declare-fun lt!245127 () List!5692)

(assert (=> b!578574 (= res!248900 (= lt!245131 lt!245127))))

(declare-fun lt!245118 () List!5692)

(declare-fun suffix!1342 () List!5692)

(declare-fun ++!1591 (List!5692 List!5692) List!5692)

(assert (=> b!578574 (= lt!245131 (++!1591 lt!245118 suffix!1342))))

(declare-fun e!349661 () Bool)

(assert (=> b!578575 (= e!349661 (and tp!181077 tp!181086))))

(declare-fun b!578576 () Bool)

(declare-fun res!248885 () Bool)

(declare-fun e!349658 () Bool)

(assert (=> b!578576 (=> res!248885 e!349658)))

(declare-datatypes ((Regex!1437 0))(
  ( (ElementMatch!1437 (c!108329 C!3796)) (Concat!2564 (regOne!3386 Regex!1437) (regTwo!3386 Regex!1437)) (EmptyExpr!1437) (Star!1437 (reg!1766 Regex!1437)) (EmptyLang!1437) (Union!1437 (regOne!3387 Regex!1437) (regTwo!3387 Regex!1437)) )
))
(declare-datatypes ((List!5693 0))(
  ( (Nil!5683) (Cons!5683 (h!11084 (_ BitVec 16)) (t!77728 List!5693)) )
))
(declare-datatypes ((IArray!3641 0))(
  ( (IArray!3642 (innerList!1878 List!5692)) )
))
(declare-datatypes ((Conc!1820 0))(
  ( (Node!1820 (left!4640 Conc!1820) (right!4970 Conc!1820) (csize!3870 Int) (cheight!2031 Int)) (Leaf!2879 (xs!4457 IArray!3641) (csize!3871 Int)) (Empty!1820) )
))
(declare-datatypes ((BalanceConc!3648 0))(
  ( (BalanceConc!3649 (c!108330 Conc!1820)) )
))
(declare-datatypes ((TokenValue!1127 0))(
  ( (FloatLiteralValue!2254 (text!8334 List!5693)) (TokenValueExt!1126 (__x!4152 Int)) (Broken!5635 (value!36276 List!5693)) (Object!1136) (End!1127) (Def!1127) (Underscore!1127) (Match!1127) (Else!1127) (Error!1127) (Case!1127) (If!1127) (Extends!1127) (Abstract!1127) (Class!1127) (Val!1127) (DelimiterValue!2254 (del!1187 List!5693)) (KeywordValue!1133 (value!36277 List!5693)) (CommentValue!2254 (value!36278 List!5693)) (WhitespaceValue!2254 (value!36279 List!5693)) (IndentationValue!1127 (value!36280 List!5693)) (String!7378) (Int32!1127) (Broken!5636 (value!36281 List!5693)) (Boolean!1128) (Unit!10284) (OperatorValue!1130 (op!1187 List!5693)) (IdentifierValue!2254 (value!36282 List!5693)) (IdentifierValue!2255 (value!36283 List!5693)) (WhitespaceValue!2255 (value!36284 List!5693)) (True!2254) (False!2254) (Broken!5637 (value!36285 List!5693)) (Broken!5638 (value!36286 List!5693)) (True!2255) (RightBrace!1127) (RightBracket!1127) (Colon!1127) (Null!1127) (Comma!1127) (LeftBracket!1127) (False!2255) (LeftBrace!1127) (ImaginaryLiteralValue!1127 (text!8335 List!5693)) (StringLiteralValue!3381 (value!36287 List!5693)) (EOFValue!1127 (value!36288 List!5693)) (IdentValue!1127 (value!36289 List!5693)) (DelimiterValue!2255 (value!36290 List!5693)) (DedentValue!1127 (value!36291 List!5693)) (NewLineValue!1127 (value!36292 List!5693)) (IntegerValue!3381 (value!36293 (_ BitVec 32)) (text!8336 List!5693)) (IntegerValue!3382 (value!36294 Int) (text!8337 List!5693)) (Times!1127) (Or!1127) (Equal!1127) (Minus!1127) (Broken!5639 (value!36295 List!5693)) (And!1127) (Div!1127) (LessEqual!1127) (Mod!1127) (Concat!2565) (Not!1127) (Plus!1127) (SpaceValue!1127 (value!36296 List!5693)) (IntegerValue!3383 (value!36297 Int) (text!8338 List!5693)) (StringLiteralValue!3382 (text!8339 List!5693)) (FloatLiteralValue!2255 (text!8340 List!5693)) (BytesLiteralValue!1127 (value!36298 List!5693)) (CommentValue!2255 (value!36299 List!5693)) (StringLiteralValue!3383 (value!36300 List!5693)) (ErrorTokenValue!1127 (msg!1188 List!5693)) )
))
(declare-datatypes ((String!7379 0))(
  ( (String!7380 (value!36301 String)) )
))
(declare-datatypes ((TokenValueInjection!2022 0))(
  ( (TokenValueInjection!2023 (toValue!1966 Int) (toChars!1825 Int)) )
))
(declare-datatypes ((Rule!2006 0))(
  ( (Rule!2007 (regex!1103 Regex!1437) (tag!1365 String!7379) (isSeparator!1103 Bool) (transformation!1103 TokenValueInjection!2022)) )
))
(declare-datatypes ((Token!1942 0))(
  ( (Token!1943 (value!36302 TokenValue!1127) (rule!1855 Rule!2006) (size!4524 Int) (originalCharacters!1142 List!5692)) )
))
(declare-datatypes ((tuple2!6664 0))(
  ( (tuple2!6665 (_1!3596 Token!1942) (_2!3596 List!5692)) )
))
(declare-datatypes ((Option!1454 0))(
  ( (None!1453) (Some!1453 (v!16316 tuple2!6664)) )
))
(declare-fun lt!245125 () Option!1454)

(declare-fun token!491 () Token!1942)

(declare-fun input!2705 () List!5692)

(declare-fun apply!1368 (TokenValueInjection!2022 BalanceConc!3648) TokenValue!1127)

(declare-fun seqFromList!1291 (List!5692) BalanceConc!3648)

(declare-fun size!4525 (List!5692) Int)

(declare-fun getSuffix!256 (List!5692 List!5692) List!5692)

(assert (=> b!578576 (= res!248885 (not (= lt!245125 (Some!1453 (tuple2!6665 (Token!1943 (apply!1368 (transformation!1103 (rule!1855 token!491)) (seqFromList!1291 input!2705)) (rule!1855 token!491) (size!4525 input!2705) input!2705) (getSuffix!256 lt!245127 input!2705))))))))

(declare-fun b!578577 () Bool)

(declare-datatypes ((Unit!10285 0))(
  ( (Unit!10286) )
))
(declare-fun e!349654 () Unit!10285)

(declare-fun Unit!10287 () Unit!10285)

(assert (=> b!578577 (= e!349654 Unit!10287)))

(assert (=> b!578577 false))

(declare-fun b!578578 () Bool)

(declare-fun e!349648 () Bool)

(assert (=> b!578578 (= e!349648 e!349658)))

(declare-fun res!248890 () Bool)

(assert (=> b!578578 (=> res!248890 e!349658)))

(declare-fun lt!245139 () Int)

(declare-fun lt!245136 () Int)

(declare-fun lt!245103 () List!5692)

(assert (=> b!578578 (= res!248890 (or (not (= lt!245136 lt!245139)) (not (= lt!245103 input!2705)) (not (= lt!245103 lt!245118))))))

(declare-fun lt!245105 () Unit!10285)

(declare-fun lt!245134 () BalanceConc!3648)

(declare-fun lemmaSemiInverse!206 (TokenValueInjection!2022 BalanceConc!3648) Unit!10285)

(assert (=> b!578578 (= lt!245105 (lemmaSemiInverse!206 (transformation!1103 (rule!1855 token!491)) lt!245134))))

(declare-fun lt!245106 () Unit!10285)

(declare-fun lt!245114 () Option!1454)

(declare-fun lt!245135 () BalanceConc!3648)

(assert (=> b!578578 (= lt!245106 (lemmaSemiInverse!206 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) lt!245135))))

(declare-fun lt!245121 () Unit!10285)

(declare-fun e!349647 () Unit!10285)

(assert (=> b!578578 (= lt!245121 e!349647)))

(declare-fun c!108328 () Bool)

(assert (=> b!578578 (= c!108328 (< lt!245136 lt!245139))))

(declare-fun e!349653 () Bool)

(assert (=> b!578578 e!349653))

(declare-fun res!248893 () Bool)

(assert (=> b!578578 (=> (not res!248893) (not e!349653))))

(declare-datatypes ((LexerInterface!989 0))(
  ( (LexerInterfaceExt!986 (__x!4153 Int)) (Lexer!987) )
))
(declare-fun thiss!22590 () LexerInterface!989)

(declare-fun lt!245107 () TokenValue!1127)

(declare-fun maxPrefixOneRule!388 (LexerInterface!989 Rule!2006 List!5692) Option!1454)

(assert (=> b!578578 (= res!248893 (= (maxPrefixOneRule!388 thiss!22590 (rule!1855 token!491) lt!245127) (Some!1453 (tuple2!6665 (Token!1943 lt!245107 (rule!1855 token!491) lt!245139 lt!245118) suffix!1342))))))

(declare-datatypes ((List!5694 0))(
  ( (Nil!5684) (Cons!5684 (h!11085 Rule!2006) (t!77729 List!5694)) )
))
(declare-fun rules!3103 () List!5694)

(declare-fun lt!245140 () Unit!10285)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!138 (LexerInterface!989 List!5694 List!5692 List!5692 List!5692 Rule!2006) Unit!10285)

(assert (=> b!578578 (= lt!245140 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!138 thiss!22590 rules!3103 lt!245118 lt!245127 suffix!1342 (rule!1855 token!491)))))

(declare-fun lt!245130 () List!5692)

(declare-fun lt!245104 () TokenValue!1127)

(assert (=> b!578578 (= (maxPrefixOneRule!388 thiss!22590 (rule!1855 (_1!3596 (v!16316 lt!245114))) input!2705) (Some!1453 (tuple2!6665 (Token!1943 lt!245104 (rule!1855 (_1!3596 (v!16316 lt!245114))) lt!245136 lt!245130) (_2!3596 (v!16316 lt!245114)))))))

(declare-fun lt!245115 () Unit!10285)

(assert (=> b!578578 (= lt!245115 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!138 thiss!22590 rules!3103 lt!245130 input!2705 (_2!3596 (v!16316 lt!245114)) (rule!1855 (_1!3596 (v!16316 lt!245114)))))))

(declare-fun e!349659 () Bool)

(assert (=> b!578578 e!349659))

(declare-fun res!248907 () Bool)

(assert (=> b!578578 (=> (not res!248907) (not e!349659))))

(assert (=> b!578578 (= res!248907 (= (value!36302 token!491) lt!245107))))

(assert (=> b!578578 (= lt!245107 (apply!1368 (transformation!1103 (rule!1855 token!491)) lt!245134))))

(assert (=> b!578578 (= lt!245134 (seqFromList!1291 lt!245118))))

(declare-fun lt!245124 () List!5692)

(assert (=> b!578578 (= suffix!1342 lt!245124)))

(declare-fun lt!245108 () Unit!10285)

(declare-fun lemmaSamePrefixThenSameSuffix!460 (List!5692 List!5692 List!5692 List!5692 List!5692) Unit!10285)

(assert (=> b!578578 (= lt!245108 (lemmaSamePrefixThenSameSuffix!460 lt!245118 suffix!1342 lt!245118 lt!245124 lt!245127))))

(assert (=> b!578578 (= lt!245124 (getSuffix!256 lt!245127 lt!245118))))

(declare-fun lt!245132 () List!5692)

(declare-fun e!349646 () Bool)

(declare-fun b!578579 () Bool)

(declare-fun lt!245129 () tuple2!6664)

(assert (=> b!578579 (= e!349646 (and (= (size!4524 (_1!3596 (v!16316 lt!245114))) lt!245136) (= (originalCharacters!1142 (_1!3596 (v!16316 lt!245114))) lt!245130) (= lt!245129 (tuple2!6665 (Token!1943 lt!245104 (rule!1855 (_1!3596 (v!16316 lt!245114))) lt!245136 lt!245130) lt!245132))))))

(declare-fun b!578580 () Bool)

(declare-fun e!349666 () Bool)

(declare-fun e!349656 () Bool)

(assert (=> b!578580 (= e!349666 e!349656)))

(declare-fun res!248887 () Bool)

(assert (=> b!578580 (=> (not res!248887) (not e!349656))))

(declare-fun isDefined!1265 (Option!1454) Bool)

(assert (=> b!578580 (= res!248887 (isDefined!1265 lt!245114))))

(declare-fun b!578581 () Bool)

(declare-fun res!248903 () Bool)

(assert (=> b!578581 (=> (not res!248903) (not e!349646))))

(assert (=> b!578581 (= res!248903 (= (size!4524 (_1!3596 (v!16316 lt!245114))) (size!4525 (originalCharacters!1142 (_1!3596 (v!16316 lt!245114))))))))

(declare-fun b!578582 () Bool)

(declare-fun e!349657 () Bool)

(assert (=> b!578582 (= e!349657 e!349650)))

(declare-fun res!248897 () Bool)

(assert (=> b!578582 (=> (not res!248897) (not e!349650))))

(get-info :version)

(assert (=> b!578582 (= res!248897 ((_ is Some!1453) lt!245114))))

(declare-fun maxPrefix!687 (LexerInterface!989 List!5694 List!5692) Option!1454)

(assert (=> b!578582 (= lt!245114 (maxPrefix!687 thiss!22590 rules!3103 input!2705))))

(declare-fun b!578583 () Bool)

(declare-fun res!248898 () Bool)

(assert (=> b!578583 (=> res!248898 e!349658)))

(declare-fun isEmpty!4103 (List!5692) Bool)

(assert (=> b!578583 (= res!248898 (not (isEmpty!4103 (_2!3596 (v!16316 lt!245114)))))))

(declare-fun b!578584 () Bool)

(declare-fun res!248899 () Bool)

(assert (=> b!578584 (=> res!248899 e!349658)))

(declare-fun contains!1335 (List!5694 Rule!2006) Bool)

(assert (=> b!578584 (= res!248899 (not (contains!1335 rules!3103 (rule!1855 token!491))))))

(declare-fun b!578586 () Bool)

(declare-fun e!349663 () Bool)

(declare-fun tp_is_empty!3229 () Bool)

(declare-fun tp!181081 () Bool)

(assert (=> b!578586 (= e!349663 (and tp_is_empty!3229 tp!181081))))

(declare-fun b!578587 () Bool)

(declare-fun res!248895 () Bool)

(declare-fun e!349664 () Bool)

(assert (=> b!578587 (=> (not res!248895) (not e!349664))))

(assert (=> b!578587 (= res!248895 (not (isEmpty!4103 input!2705)))))

(declare-fun b!578588 () Bool)

(declare-fun res!248909 () Bool)

(assert (=> b!578588 (=> res!248909 e!349658)))

(declare-fun getIndex!42 (List!5694 Rule!2006) Int)

(assert (=> b!578588 (= res!248909 (>= (getIndex!42 rules!3103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) (getIndex!42 rules!3103 (rule!1855 token!491))))))

(declare-fun e!349667 () Bool)

(assert (=> b!578589 (= e!349667 (and tp!181078 tp!181080))))

(declare-fun b!578590 () Bool)

(declare-fun res!248896 () Bool)

(assert (=> b!578590 (=> (not res!248896) (not e!349664))))

(declare-fun rulesInvariant!952 (LexerInterface!989 List!5694) Bool)

(assert (=> b!578590 (= res!248896 (rulesInvariant!952 thiss!22590 rules!3103))))

(declare-fun b!578591 () Bool)

(declare-fun res!248904 () Bool)

(assert (=> b!578591 (=> (not res!248904) (not e!349659))))

(assert (=> b!578591 (= res!248904 (= (size!4524 token!491) (size!4525 (originalCharacters!1142 token!491))))))

(declare-fun b!578592 () Bool)

(declare-fun res!248908 () Bool)

(assert (=> b!578592 (=> (not res!248908) (not e!349656))))

(declare-fun get!2169 (Option!1454) tuple2!6664)

(assert (=> b!578592 (= res!248908 (= (_1!3596 (get!2169 lt!245114)) (_1!3596 (v!16316 lt!245114))))))

(declare-fun b!578593 () Bool)

(declare-fun tp!181084 () Bool)

(declare-fun e!349655 () Bool)

(declare-fun e!349660 () Bool)

(declare-fun inv!21 (TokenValue!1127) Bool)

(assert (=> b!578593 (= e!349660 (and (inv!21 (value!36302 token!491)) e!349655 tp!181084))))

(declare-fun b!578594 () Bool)

(declare-fun e!349642 () Bool)

(assert (=> b!578594 (= e!349642 e!349657)))

(declare-fun res!248892 () Bool)

(assert (=> b!578594 (=> (not res!248892) (not e!349657))))

(declare-fun lt!245128 () tuple2!6664)

(assert (=> b!578594 (= res!248892 (and (= (_1!3596 lt!245128) token!491) (= (_2!3596 lt!245128) suffix!1342)))))

(assert (=> b!578594 (= lt!245128 (get!2169 lt!245125))))

(declare-fun b!578595 () Bool)

(declare-fun e!349652 () Bool)

(assert (=> b!578595 (= e!349652 false)))

(declare-fun b!578596 () Bool)

(declare-fun res!248902 () Bool)

(assert (=> b!578596 (=> res!248902 e!349658)))

(assert (=> b!578596 (= res!248902 (not (contains!1335 rules!3103 (rule!1855 (_1!3596 (v!16316 lt!245114))))))))

(declare-fun b!578597 () Bool)

(assert (=> b!578597 (= e!349665 (not e!349648))))

(declare-fun res!248910 () Bool)

(assert (=> b!578597 (=> res!248910 e!349648)))

(declare-fun isPrefix!737 (List!5692 List!5692) Bool)

(assert (=> b!578597 (= res!248910 (not (isPrefix!737 input!2705 lt!245131)))))

(assert (=> b!578597 (isPrefix!737 lt!245118 lt!245131)))

(declare-fun lt!245138 () Unit!10285)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!584 (List!5692 List!5692) Unit!10285)

(assert (=> b!578597 (= lt!245138 (lemmaConcatTwoListThenFirstIsPrefix!584 lt!245118 suffix!1342))))

(assert (=> b!578597 (isPrefix!737 input!2705 lt!245127)))

(declare-fun lt!245123 () Unit!10285)

(assert (=> b!578597 (= lt!245123 (lemmaConcatTwoListThenFirstIsPrefix!584 input!2705 suffix!1342))))

(assert (=> b!578597 e!349646))

(declare-fun res!248901 () Bool)

(assert (=> b!578597 (=> (not res!248901) (not e!349646))))

(assert (=> b!578597 (= res!248901 (= (value!36302 (_1!3596 (v!16316 lt!245114))) lt!245104))))

(assert (=> b!578597 (= lt!245104 (apply!1368 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) lt!245135))))

(assert (=> b!578597 (= lt!245135 (seqFromList!1291 lt!245130))))

(declare-fun lt!245109 () Unit!10285)

(declare-fun lemmaInv!239 (TokenValueInjection!2022) Unit!10285)

(assert (=> b!578597 (= lt!245109 (lemmaInv!239 (transformation!1103 (rule!1855 token!491))))))

(declare-fun lt!245119 () Unit!10285)

(assert (=> b!578597 (= lt!245119 (lemmaInv!239 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))))))

(declare-fun ruleValid!313 (LexerInterface!989 Rule!2006) Bool)

(assert (=> b!578597 (ruleValid!313 thiss!22590 (rule!1855 token!491))))

(declare-fun lt!245111 () Unit!10285)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!170 (LexerInterface!989 Rule!2006 List!5694) Unit!10285)

(assert (=> b!578597 (= lt!245111 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!170 thiss!22590 (rule!1855 token!491) rules!3103))))

(assert (=> b!578597 (ruleValid!313 thiss!22590 (rule!1855 (_1!3596 (v!16316 lt!245114))))))

(declare-fun lt!245112 () Unit!10285)

(assert (=> b!578597 (= lt!245112 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!170 thiss!22590 (rule!1855 (_1!3596 (v!16316 lt!245114))) rules!3103))))

(assert (=> b!578597 (isPrefix!737 input!2705 input!2705)))

(declare-fun lt!245133 () Unit!10285)

(declare-fun lemmaIsPrefixRefl!475 (List!5692 List!5692) Unit!10285)

(assert (=> b!578597 (= lt!245133 (lemmaIsPrefixRefl!475 input!2705 input!2705))))

(assert (=> b!578597 (= (_2!3596 (v!16316 lt!245114)) lt!245132)))

(declare-fun lt!245116 () Unit!10285)

(assert (=> b!578597 (= lt!245116 (lemmaSamePrefixThenSameSuffix!460 lt!245130 (_2!3596 (v!16316 lt!245114)) lt!245130 lt!245132 input!2705))))

(assert (=> b!578597 (= lt!245132 (getSuffix!256 input!2705 lt!245130))))

(assert (=> b!578597 (isPrefix!737 lt!245130 lt!245103)))

(assert (=> b!578597 (= lt!245103 (++!1591 lt!245130 (_2!3596 (v!16316 lt!245114))))))

(declare-fun lt!245117 () Unit!10285)

(assert (=> b!578597 (= lt!245117 (lemmaConcatTwoListThenFirstIsPrefix!584 lt!245130 (_2!3596 (v!16316 lt!245114))))))

(declare-fun lt!245120 () Unit!10285)

(declare-fun lemmaCharactersSize!170 (Token!1942) Unit!10285)

(assert (=> b!578597 (= lt!245120 (lemmaCharactersSize!170 token!491))))

(declare-fun lt!245113 () Unit!10285)

(assert (=> b!578597 (= lt!245113 (lemmaCharactersSize!170 (_1!3596 (v!16316 lt!245114))))))

(declare-fun lt!245126 () Unit!10285)

(assert (=> b!578597 (= lt!245126 e!349654)))

(declare-fun c!108327 () Bool)

(assert (=> b!578597 (= c!108327 (> lt!245136 lt!245139))))

(assert (=> b!578597 (= lt!245139 (size!4525 lt!245118))))

(assert (=> b!578597 (= lt!245136 (size!4525 lt!245130))))

(declare-fun list!2363 (BalanceConc!3648) List!5692)

(declare-fun charsOf!732 (Token!1942) BalanceConc!3648)

(assert (=> b!578597 (= lt!245130 (list!2363 (charsOf!732 (_1!3596 (v!16316 lt!245114)))))))

(assert (=> b!578597 (= lt!245114 (Some!1453 lt!245129))))

(assert (=> b!578597 (= lt!245129 (tuple2!6665 (_1!3596 (v!16316 lt!245114)) (_2!3596 (v!16316 lt!245114))))))

(declare-fun lt!245137 () Unit!10285)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!180 (List!5692 List!5692 List!5692 List!5692) Unit!10285)

(assert (=> b!578597 (= lt!245137 (lemmaConcatSameAndSameSizesThenSameLists!180 lt!245118 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!578598 () Bool)

(declare-fun res!248906 () Bool)

(assert (=> b!578598 (=> (not res!248906) (not e!349664))))

(declare-fun isEmpty!4104 (List!5694) Bool)

(assert (=> b!578598 (= res!248906 (not (isEmpty!4104 rules!3103)))))

(declare-fun b!578599 () Bool)

(declare-fun e!349645 () Bool)

(declare-fun tp!181082 () Bool)

(assert (=> b!578599 (= e!349645 (and tp_is_empty!3229 tp!181082))))

(declare-fun b!578600 () Bool)

(declare-fun e!349643 () Bool)

(assert (=> b!578600 (= e!349664 e!349643)))

(declare-fun res!248911 () Bool)

(assert (=> b!578600 (=> (not res!248911) (not e!349643))))

(assert (=> b!578600 (= res!248911 (= lt!245118 input!2705))))

(assert (=> b!578600 (= lt!245118 (list!2363 (charsOf!732 token!491)))))

(declare-fun b!578601 () Bool)

(assert (=> b!578601 (= e!349659 (and (= (size!4524 token!491) lt!245139) (= (originalCharacters!1142 token!491) lt!245118) (= (tuple2!6665 token!491 suffix!1342) (tuple2!6665 (Token!1943 lt!245107 (rule!1855 token!491) lt!245139 lt!245118) lt!245124))))))

(declare-fun b!578602 () Bool)

(assert (=> b!578602 (= e!349656 (= lt!245132 (_2!3596 (v!16316 lt!245114))))))

(declare-fun b!578603 () Bool)

(declare-fun e!349644 () Bool)

(declare-fun e!349662 () Bool)

(declare-fun tp!181083 () Bool)

(assert (=> b!578603 (= e!349644 (and e!349662 tp!181083))))

(declare-fun b!578604 () Bool)

(assert (=> b!578604 (= e!349653 e!349666)))

(declare-fun res!248912 () Bool)

(assert (=> b!578604 (=> res!248912 e!349666)))

(assert (=> b!578604 (= res!248912 (>= lt!245136 lt!245139))))

(declare-fun b!578605 () Bool)

(declare-fun matchR!584 (Regex!1437 List!5692) Bool)

(assert (=> b!578605 (= e!349658 (matchR!584 (regex!1103 (rule!1855 token!491)) input!2705))))

(declare-fun b!578606 () Bool)

(declare-fun Unit!10288 () Unit!10285)

(assert (=> b!578606 (= e!349654 Unit!10288)))

(declare-fun b!578607 () Bool)

(declare-fun Unit!10289 () Unit!10285)

(assert (=> b!578607 (= e!349647 Unit!10289)))

(declare-fun lt!245110 () Unit!10285)

(assert (=> b!578607 (= lt!245110 (lemmaSemiInverse!206 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) lt!245135))))

(declare-fun lt!245122 () Unit!10285)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!62 (LexerInterface!989 List!5694 Rule!2006 List!5692 List!5692 List!5692 Rule!2006) Unit!10285)

(assert (=> b!578607 (= lt!245122 (lemmaMaxPrefixOutputsMaxPrefix!62 thiss!22590 rules!3103 (rule!1855 (_1!3596 (v!16316 lt!245114))) lt!245130 input!2705 input!2705 (rule!1855 token!491)))))

(declare-fun res!248894 () Bool)

(assert (=> b!578607 (= res!248894 (not (matchR!584 (regex!1103 (rule!1855 token!491)) input!2705)))))

(assert (=> b!578607 (=> (not res!248894) (not e!349652))))

(assert (=> b!578607 e!349652))

(declare-fun b!578585 () Bool)

(declare-fun Unit!10290 () Unit!10285)

(assert (=> b!578585 (= e!349647 Unit!10290)))

(declare-fun res!248886 () Bool)

(assert (=> start!53500 (=> (not res!248886) (not e!349664))))

(assert (=> start!53500 (= res!248886 ((_ is Lexer!987) thiss!22590))))

(assert (=> start!53500 e!349664))

(assert (=> start!53500 e!349663))

(assert (=> start!53500 e!349644))

(declare-fun inv!7156 (Token!1942) Bool)

(assert (=> start!53500 (and (inv!7156 token!491) e!349660)))

(assert (=> start!53500 true))

(assert (=> start!53500 e!349645))

(declare-fun b!578608 () Bool)

(declare-fun tp!181079 () Bool)

(declare-fun inv!7153 (String!7379) Bool)

(declare-fun inv!7157 (TokenValueInjection!2022) Bool)

(assert (=> b!578608 (= e!349662 (and tp!181079 (inv!7153 (tag!1365 (h!11085 rules!3103))) (inv!7157 (transformation!1103 (h!11085 rules!3103))) e!349661))))

(declare-fun b!578609 () Bool)

(assert (=> b!578609 (= e!349643 e!349642)))

(declare-fun res!248905 () Bool)

(assert (=> b!578609 (=> (not res!248905) (not e!349642))))

(assert (=> b!578609 (= res!248905 (isDefined!1265 lt!245125))))

(assert (=> b!578609 (= lt!245125 (maxPrefix!687 thiss!22590 rules!3103 lt!245127))))

(assert (=> b!578609 (= lt!245127 (++!1591 input!2705 suffix!1342))))

(declare-fun b!578610 () Bool)

(declare-fun res!248891 () Bool)

(assert (=> b!578610 (=> res!248891 e!349658)))

(assert (=> b!578610 (= res!248891 (not (= lt!245125 (Some!1453 (tuple2!6665 token!491 suffix!1342)))))))

(declare-fun b!578611 () Bool)

(declare-fun res!248888 () Bool)

(assert (=> b!578611 (=> res!248888 e!349658)))

(assert (=> b!578611 (= res!248888 (or (not (= lt!245130 lt!245118)) (not (= (originalCharacters!1142 (_1!3596 (v!16316 lt!245114))) (originalCharacters!1142 token!491)))))))

(declare-fun tp!181085 () Bool)

(declare-fun b!578612 () Bool)

(assert (=> b!578612 (= e!349655 (and tp!181085 (inv!7153 (tag!1365 (rule!1855 token!491))) (inv!7157 (transformation!1103 (rule!1855 token!491))) e!349667))))

(declare-fun b!578613 () Bool)

(declare-fun res!248889 () Bool)

(assert (=> b!578613 (=> res!248889 e!349658)))

(assert (=> b!578613 (= res!248889 (= (rule!1855 (_1!3596 (v!16316 lt!245114))) (rule!1855 token!491)))))

(assert (= (and start!53500 res!248886) b!578598))

(assert (= (and b!578598 res!248906) b!578590))

(assert (= (and b!578590 res!248896) b!578587))

(assert (= (and b!578587 res!248895) b!578600))

(assert (= (and b!578600 res!248911) b!578609))

(assert (= (and b!578609 res!248905) b!578594))

(assert (= (and b!578594 res!248892) b!578582))

(assert (= (and b!578582 res!248897) b!578574))

(assert (= (and b!578574 res!248900) b!578597))

(assert (= (and b!578597 c!108327) b!578577))

(assert (= (and b!578597 (not c!108327)) b!578606))

(assert (= (and b!578597 res!248901) b!578581))

(assert (= (and b!578581 res!248903) b!578579))

(assert (= (and b!578597 (not res!248910)) b!578578))

(assert (= (and b!578578 res!248907) b!578591))

(assert (= (and b!578591 res!248904) b!578601))

(assert (= (and b!578578 res!248893) b!578604))

(assert (= (and b!578604 (not res!248912)) b!578580))

(assert (= (and b!578580 res!248887) b!578592))

(assert (= (and b!578592 res!248908) b!578602))

(assert (= (and b!578578 c!108328) b!578607))

(assert (= (and b!578578 (not c!108328)) b!578585))

(assert (= (and b!578607 res!248894) b!578595))

(assert (= (and b!578578 (not res!248890)) b!578583))

(assert (= (and b!578583 (not res!248898)) b!578611))

(assert (= (and b!578611 (not res!248888)) b!578596))

(assert (= (and b!578596 (not res!248902)) b!578584))

(assert (= (and b!578584 (not res!248899)) b!578613))

(assert (= (and b!578613 (not res!248889)) b!578588))

(assert (= (and b!578588 (not res!248909)) b!578610))

(assert (= (and b!578610 (not res!248891)) b!578576))

(assert (= (and b!578576 (not res!248885)) b!578605))

(assert (= (and start!53500 ((_ is Cons!5682) suffix!1342)) b!578586))

(assert (= b!578608 b!578575))

(assert (= b!578603 b!578608))

(assert (= (and start!53500 ((_ is Cons!5684) rules!3103)) b!578603))

(assert (= b!578612 b!578589))

(assert (= b!578593 b!578612))

(assert (= start!53500 b!578593))

(assert (= (and start!53500 ((_ is Cons!5682) input!2705)) b!578599))

(declare-fun m!836823 () Bool)

(assert (=> b!578591 m!836823))

(declare-fun m!836825 () Bool)

(assert (=> b!578583 m!836825))

(declare-fun m!836827 () Bool)

(assert (=> b!578596 m!836827))

(declare-fun m!836829 () Bool)

(assert (=> b!578593 m!836829))

(declare-fun m!836831 () Bool)

(assert (=> b!578600 m!836831))

(assert (=> b!578600 m!836831))

(declare-fun m!836833 () Bool)

(assert (=> b!578600 m!836833))

(declare-fun m!836835 () Bool)

(assert (=> b!578598 m!836835))

(declare-fun m!836837 () Bool)

(assert (=> b!578578 m!836837))

(declare-fun m!836839 () Bool)

(assert (=> b!578578 m!836839))

(declare-fun m!836841 () Bool)

(assert (=> b!578578 m!836841))

(declare-fun m!836843 () Bool)

(assert (=> b!578578 m!836843))

(declare-fun m!836845 () Bool)

(assert (=> b!578578 m!836845))

(declare-fun m!836847 () Bool)

(assert (=> b!578578 m!836847))

(declare-fun m!836849 () Bool)

(assert (=> b!578578 m!836849))

(declare-fun m!836851 () Bool)

(assert (=> b!578578 m!836851))

(declare-fun m!836853 () Bool)

(assert (=> b!578578 m!836853))

(declare-fun m!836855 () Bool)

(assert (=> b!578578 m!836855))

(declare-fun m!836857 () Bool)

(assert (=> b!578608 m!836857))

(declare-fun m!836859 () Bool)

(assert (=> b!578608 m!836859))

(declare-fun m!836861 () Bool)

(assert (=> b!578588 m!836861))

(declare-fun m!836863 () Bool)

(assert (=> b!578588 m!836863))

(declare-fun m!836865 () Bool)

(assert (=> b!578609 m!836865))

(declare-fun m!836867 () Bool)

(assert (=> b!578609 m!836867))

(declare-fun m!836869 () Bool)

(assert (=> b!578609 m!836869))

(declare-fun m!836871 () Bool)

(assert (=> b!578584 m!836871))

(declare-fun m!836873 () Bool)

(assert (=> b!578597 m!836873))

(declare-fun m!836875 () Bool)

(assert (=> b!578597 m!836875))

(declare-fun m!836877 () Bool)

(assert (=> b!578597 m!836877))

(declare-fun m!836879 () Bool)

(assert (=> b!578597 m!836879))

(declare-fun m!836881 () Bool)

(assert (=> b!578597 m!836881))

(declare-fun m!836883 () Bool)

(assert (=> b!578597 m!836883))

(declare-fun m!836885 () Bool)

(assert (=> b!578597 m!836885))

(declare-fun m!836887 () Bool)

(assert (=> b!578597 m!836887))

(declare-fun m!836889 () Bool)

(assert (=> b!578597 m!836889))

(declare-fun m!836891 () Bool)

(assert (=> b!578597 m!836891))

(declare-fun m!836893 () Bool)

(assert (=> b!578597 m!836893))

(declare-fun m!836895 () Bool)

(assert (=> b!578597 m!836895))

(declare-fun m!836897 () Bool)

(assert (=> b!578597 m!836897))

(declare-fun m!836899 () Bool)

(assert (=> b!578597 m!836899))

(declare-fun m!836901 () Bool)

(assert (=> b!578597 m!836901))

(declare-fun m!836903 () Bool)

(assert (=> b!578597 m!836903))

(assert (=> b!578597 m!836891))

(declare-fun m!836905 () Bool)

(assert (=> b!578597 m!836905))

(declare-fun m!836907 () Bool)

(assert (=> b!578597 m!836907))

(declare-fun m!836909 () Bool)

(assert (=> b!578597 m!836909))

(declare-fun m!836911 () Bool)

(assert (=> b!578597 m!836911))

(declare-fun m!836913 () Bool)

(assert (=> b!578597 m!836913))

(declare-fun m!836915 () Bool)

(assert (=> b!578597 m!836915))

(declare-fun m!836917 () Bool)

(assert (=> b!578597 m!836917))

(declare-fun m!836919 () Bool)

(assert (=> b!578597 m!836919))

(declare-fun m!836921 () Bool)

(assert (=> b!578597 m!836921))

(declare-fun m!836923 () Bool)

(assert (=> b!578597 m!836923))

(declare-fun m!836925 () Bool)

(assert (=> b!578597 m!836925))

(declare-fun m!836927 () Bool)

(assert (=> b!578594 m!836927))

(declare-fun m!836929 () Bool)

(assert (=> b!578605 m!836929))

(declare-fun m!836931 () Bool)

(assert (=> b!578580 m!836931))

(declare-fun m!836933 () Bool)

(assert (=> b!578582 m!836933))

(declare-fun m!836935 () Bool)

(assert (=> b!578581 m!836935))

(declare-fun m!836937 () Bool)

(assert (=> b!578590 m!836937))

(declare-fun m!836939 () Bool)

(assert (=> b!578592 m!836939))

(declare-fun m!836941 () Bool)

(assert (=> b!578587 m!836941))

(declare-fun m!836943 () Bool)

(assert (=> b!578612 m!836943))

(declare-fun m!836945 () Bool)

(assert (=> b!578612 m!836945))

(declare-fun m!836947 () Bool)

(assert (=> start!53500 m!836947))

(assert (=> b!578607 m!836849))

(declare-fun m!836949 () Bool)

(assert (=> b!578607 m!836949))

(assert (=> b!578607 m!836929))

(declare-fun m!836951 () Bool)

(assert (=> b!578574 m!836951))

(declare-fun m!836953 () Bool)

(assert (=> b!578576 m!836953))

(assert (=> b!578576 m!836953))

(declare-fun m!836955 () Bool)

(assert (=> b!578576 m!836955))

(declare-fun m!836957 () Bool)

(assert (=> b!578576 m!836957))

(declare-fun m!836959 () Bool)

(assert (=> b!578576 m!836959))

(check-sat (not b!578598) (not b!578580) (not start!53500) (not b!578587) (not b!578612) (not b!578592) b_and!56797 (not b!578591) (not b!578605) (not b!578588) (not b!578576) (not b!578574) (not b_next!16109) b_and!56799 (not b!578582) (not b!578594) (not b!578584) (not b!578607) (not b!578581) (not b!578608) (not b!578586) (not b!578590) (not b_next!16115) (not b!578593) (not b!578599) b_and!56801 b_and!56795 (not b!578603) (not b_next!16111) (not b!578609) (not b!578597) (not b!578600) (not b!578578) (not b_next!16113) (not b!578596) (not b!578583) tp_is_empty!3229)
(check-sat b_and!56797 (not b_next!16115) (not b_next!16111) (not b_next!16113) (not b_next!16109) b_and!56799 b_and!56801 b_and!56795)
(get-model)

(declare-fun call!39978 () Option!1454)

(declare-fun bm!39973 () Bool)

(assert (=> bm!39973 (= call!39978 (maxPrefixOneRule!388 thiss!22590 (h!11085 rules!3103) input!2705))))

(declare-fun b!578683 () Bool)

(declare-fun e!349698 () Bool)

(declare-fun e!349699 () Bool)

(assert (=> b!578683 (= e!349698 e!349699)))

(declare-fun res!248974 () Bool)

(assert (=> b!578683 (=> (not res!248974) (not e!349699))))

(declare-fun lt!245178 () Option!1454)

(assert (=> b!578683 (= res!248974 (isDefined!1265 lt!245178))))

(declare-fun b!578684 () Bool)

(declare-fun res!248973 () Bool)

(assert (=> b!578684 (=> (not res!248973) (not e!349699))))

(assert (=> b!578684 (= res!248973 (= (list!2363 (charsOf!732 (_1!3596 (get!2169 lt!245178)))) (originalCharacters!1142 (_1!3596 (get!2169 lt!245178)))))))

(declare-fun b!578685 () Bool)

(declare-fun res!248971 () Bool)

(assert (=> b!578685 (=> (not res!248971) (not e!349699))))

(assert (=> b!578685 (= res!248971 (= (++!1591 (list!2363 (charsOf!732 (_1!3596 (get!2169 lt!245178)))) (_2!3596 (get!2169 lt!245178))) input!2705))))

(declare-fun b!578686 () Bool)

(declare-fun res!248975 () Bool)

(assert (=> b!578686 (=> (not res!248975) (not e!349699))))

(assert (=> b!578686 (= res!248975 (< (size!4525 (_2!3596 (get!2169 lt!245178))) (size!4525 input!2705)))))

(declare-fun b!578687 () Bool)

(assert (=> b!578687 (= e!349699 (contains!1335 rules!3103 (rule!1855 (_1!3596 (get!2169 lt!245178)))))))

(declare-fun b!578688 () Bool)

(declare-fun e!349697 () Option!1454)

(assert (=> b!578688 (= e!349697 call!39978)))

(declare-fun b!578682 () Bool)

(declare-fun res!248976 () Bool)

(assert (=> b!578682 (=> (not res!248976) (not e!349699))))

(assert (=> b!578682 (= res!248976 (= (value!36302 (_1!3596 (get!2169 lt!245178))) (apply!1368 (transformation!1103 (rule!1855 (_1!3596 (get!2169 lt!245178)))) (seqFromList!1291 (originalCharacters!1142 (_1!3596 (get!2169 lt!245178)))))))))

(declare-fun d!203355 () Bool)

(assert (=> d!203355 e!349698))

(declare-fun res!248977 () Bool)

(assert (=> d!203355 (=> res!248977 e!349698)))

(declare-fun isEmpty!4106 (Option!1454) Bool)

(assert (=> d!203355 (= res!248977 (isEmpty!4106 lt!245178))))

(assert (=> d!203355 (= lt!245178 e!349697)))

(declare-fun c!108340 () Bool)

(assert (=> d!203355 (= c!108340 (and ((_ is Cons!5684) rules!3103) ((_ is Nil!5684) (t!77729 rules!3103))))))

(declare-fun lt!245181 () Unit!10285)

(declare-fun lt!245179 () Unit!10285)

(assert (=> d!203355 (= lt!245181 lt!245179)))

(assert (=> d!203355 (isPrefix!737 input!2705 input!2705)))

(assert (=> d!203355 (= lt!245179 (lemmaIsPrefixRefl!475 input!2705 input!2705))))

(declare-fun rulesValidInductive!396 (LexerInterface!989 List!5694) Bool)

(assert (=> d!203355 (rulesValidInductive!396 thiss!22590 rules!3103)))

(assert (=> d!203355 (= (maxPrefix!687 thiss!22590 rules!3103 input!2705) lt!245178)))

(declare-fun b!578689 () Bool)

(declare-fun lt!245180 () Option!1454)

(declare-fun lt!245182 () Option!1454)

(assert (=> b!578689 (= e!349697 (ite (and ((_ is None!1453) lt!245180) ((_ is None!1453) lt!245182)) None!1453 (ite ((_ is None!1453) lt!245182) lt!245180 (ite ((_ is None!1453) lt!245180) lt!245182 (ite (>= (size!4524 (_1!3596 (v!16316 lt!245180))) (size!4524 (_1!3596 (v!16316 lt!245182)))) lt!245180 lt!245182)))))))

(assert (=> b!578689 (= lt!245180 call!39978)))

(assert (=> b!578689 (= lt!245182 (maxPrefix!687 thiss!22590 (t!77729 rules!3103) input!2705))))

(declare-fun b!578690 () Bool)

(declare-fun res!248972 () Bool)

(assert (=> b!578690 (=> (not res!248972) (not e!349699))))

(assert (=> b!578690 (= res!248972 (matchR!584 (regex!1103 (rule!1855 (_1!3596 (get!2169 lt!245178)))) (list!2363 (charsOf!732 (_1!3596 (get!2169 lt!245178))))))))

(assert (= (and d!203355 c!108340) b!578688))

(assert (= (and d!203355 (not c!108340)) b!578689))

(assert (= (or b!578688 b!578689) bm!39973))

(assert (= (and d!203355 (not res!248977)) b!578683))

(assert (= (and b!578683 res!248974) b!578684))

(assert (= (and b!578684 res!248973) b!578686))

(assert (= (and b!578686 res!248975) b!578685))

(assert (= (and b!578685 res!248971) b!578682))

(assert (= (and b!578682 res!248976) b!578690))

(assert (= (and b!578690 res!248972) b!578687))

(declare-fun m!837035 () Bool)

(assert (=> b!578689 m!837035))

(declare-fun m!837037 () Bool)

(assert (=> b!578682 m!837037))

(declare-fun m!837039 () Bool)

(assert (=> b!578682 m!837039))

(assert (=> b!578682 m!837039))

(declare-fun m!837041 () Bool)

(assert (=> b!578682 m!837041))

(assert (=> b!578687 m!837037))

(declare-fun m!837043 () Bool)

(assert (=> b!578687 m!837043))

(declare-fun m!837045 () Bool)

(assert (=> bm!39973 m!837045))

(assert (=> b!578690 m!837037))

(declare-fun m!837047 () Bool)

(assert (=> b!578690 m!837047))

(assert (=> b!578690 m!837047))

(declare-fun m!837049 () Bool)

(assert (=> b!578690 m!837049))

(assert (=> b!578690 m!837049))

(declare-fun m!837051 () Bool)

(assert (=> b!578690 m!837051))

(declare-fun m!837053 () Bool)

(assert (=> d!203355 m!837053))

(assert (=> d!203355 m!836899))

(assert (=> d!203355 m!836895))

(declare-fun m!837055 () Bool)

(assert (=> d!203355 m!837055))

(assert (=> b!578685 m!837037))

(assert (=> b!578685 m!837047))

(assert (=> b!578685 m!837047))

(assert (=> b!578685 m!837049))

(assert (=> b!578685 m!837049))

(declare-fun m!837057 () Bool)

(assert (=> b!578685 m!837057))

(assert (=> b!578686 m!837037))

(declare-fun m!837059 () Bool)

(assert (=> b!578686 m!837059))

(assert (=> b!578686 m!836957))

(assert (=> b!578684 m!837037))

(assert (=> b!578684 m!837047))

(assert (=> b!578684 m!837047))

(assert (=> b!578684 m!837049))

(declare-fun m!837073 () Bool)

(assert (=> b!578683 m!837073))

(assert (=> b!578582 d!203355))

(declare-fun d!203373 () Bool)

(declare-fun lt!245188 () Int)

(assert (=> d!203373 (>= lt!245188 0)))

(declare-fun e!349717 () Int)

(assert (=> d!203373 (= lt!245188 e!349717)))

(declare-fun c!108352 () Bool)

(assert (=> d!203373 (= c!108352 ((_ is Nil!5682) (originalCharacters!1142 (_1!3596 (v!16316 lt!245114)))))))

(assert (=> d!203373 (= (size!4525 (originalCharacters!1142 (_1!3596 (v!16316 lt!245114)))) lt!245188)))

(declare-fun b!578722 () Bool)

(assert (=> b!578722 (= e!349717 0)))

(declare-fun b!578723 () Bool)

(assert (=> b!578723 (= e!349717 (+ 1 (size!4525 (t!77727 (originalCharacters!1142 (_1!3596 (v!16316 lt!245114)))))))))

(assert (= (and d!203373 c!108352) b!578722))

(assert (= (and d!203373 (not c!108352)) b!578723))

(declare-fun m!837081 () Bool)

(assert (=> b!578723 m!837081))

(assert (=> b!578581 d!203373))

(declare-fun d!203377 () Bool)

(assert (=> d!203377 (= (isEmpty!4103 (_2!3596 (v!16316 lt!245114))) ((_ is Nil!5682) (_2!3596 (v!16316 lt!245114))))))

(assert (=> b!578583 d!203377))

(declare-fun b!578817 () Bool)

(declare-fun res!249052 () Bool)

(declare-fun e!349772 () Bool)

(assert (=> b!578817 (=> res!249052 e!349772)))

(declare-fun tail!754 (List!5692) List!5692)

(assert (=> b!578817 (= res!249052 (not (isEmpty!4103 (tail!754 input!2705))))))

(declare-fun b!578818 () Bool)

(declare-fun res!249050 () Bool)

(declare-fun e!349770 () Bool)

(assert (=> b!578818 (=> (not res!249050) (not e!349770))))

(declare-fun call!39984 () Bool)

(assert (=> b!578818 (= res!249050 (not call!39984))))

(declare-fun b!578819 () Bool)

(declare-fun res!249049 () Bool)

(declare-fun e!349774 () Bool)

(assert (=> b!578819 (=> res!249049 e!349774)))

(assert (=> b!578819 (= res!249049 e!349770)))

(declare-fun res!249047 () Bool)

(assert (=> b!578819 (=> (not res!249047) (not e!349770))))

(declare-fun lt!245200 () Bool)

(assert (=> b!578819 (= res!249047 lt!245200)))

(declare-fun b!578821 () Bool)

(declare-fun e!349771 () Bool)

(declare-fun e!349773 () Bool)

(assert (=> b!578821 (= e!349771 e!349773)))

(declare-fun c!108370 () Bool)

(assert (=> b!578821 (= c!108370 ((_ is EmptyLang!1437) (regex!1103 (rule!1855 token!491))))))

(declare-fun b!578822 () Bool)

(declare-fun head!1226 (List!5692) C!3796)

(assert (=> b!578822 (= e!349770 (= (head!1226 input!2705) (c!108329 (regex!1103 (rule!1855 token!491)))))))

(declare-fun b!578823 () Bool)

(assert (=> b!578823 (= e!349771 (= lt!245200 call!39984))))

(declare-fun b!578824 () Bool)

(declare-fun res!249048 () Bool)

(assert (=> b!578824 (=> (not res!249048) (not e!349770))))

(assert (=> b!578824 (= res!249048 (isEmpty!4103 (tail!754 input!2705)))))

(declare-fun b!578825 () Bool)

(assert (=> b!578825 (= e!349773 (not lt!245200))))

(declare-fun b!578826 () Bool)

(assert (=> b!578826 (= e!349772 (not (= (head!1226 input!2705) (c!108329 (regex!1103 (rule!1855 token!491))))))))

(declare-fun b!578827 () Bool)

(declare-fun e!349769 () Bool)

(declare-fun derivativeStep!302 (Regex!1437 C!3796) Regex!1437)

(assert (=> b!578827 (= e!349769 (matchR!584 (derivativeStep!302 (regex!1103 (rule!1855 token!491)) (head!1226 input!2705)) (tail!754 input!2705)))))

(declare-fun b!578828 () Bool)

(declare-fun e!349768 () Bool)

(assert (=> b!578828 (= e!349768 e!349772)))

(declare-fun res!249045 () Bool)

(assert (=> b!578828 (=> res!249045 e!349772)))

(assert (=> b!578828 (= res!249045 call!39984)))

(declare-fun b!578829 () Bool)

(declare-fun nullable!389 (Regex!1437) Bool)

(assert (=> b!578829 (= e!349769 (nullable!389 (regex!1103 (rule!1855 token!491))))))

(declare-fun b!578820 () Bool)

(declare-fun res!249046 () Bool)

(assert (=> b!578820 (=> res!249046 e!349774)))

(assert (=> b!578820 (= res!249046 (not ((_ is ElementMatch!1437) (regex!1103 (rule!1855 token!491)))))))

(assert (=> b!578820 (= e!349773 e!349774)))

(declare-fun d!203379 () Bool)

(assert (=> d!203379 e!349771))

(declare-fun c!108368 () Bool)

(assert (=> d!203379 (= c!108368 ((_ is EmptyExpr!1437) (regex!1103 (rule!1855 token!491))))))

(assert (=> d!203379 (= lt!245200 e!349769)))

(declare-fun c!108369 () Bool)

(assert (=> d!203379 (= c!108369 (isEmpty!4103 input!2705))))

(declare-fun validRegex!484 (Regex!1437) Bool)

(assert (=> d!203379 (validRegex!484 (regex!1103 (rule!1855 token!491)))))

(assert (=> d!203379 (= (matchR!584 (regex!1103 (rule!1855 token!491)) input!2705) lt!245200)))

(declare-fun b!578830 () Bool)

(assert (=> b!578830 (= e!349774 e!349768)))

(declare-fun res!249051 () Bool)

(assert (=> b!578830 (=> (not res!249051) (not e!349768))))

(assert (=> b!578830 (= res!249051 (not lt!245200))))

(declare-fun bm!39979 () Bool)

(assert (=> bm!39979 (= call!39984 (isEmpty!4103 input!2705))))

(assert (= (and d!203379 c!108369) b!578829))

(assert (= (and d!203379 (not c!108369)) b!578827))

(assert (= (and d!203379 c!108368) b!578823))

(assert (= (and d!203379 (not c!108368)) b!578821))

(assert (= (and b!578821 c!108370) b!578825))

(assert (= (and b!578821 (not c!108370)) b!578820))

(assert (= (and b!578820 (not res!249046)) b!578819))

(assert (= (and b!578819 res!249047) b!578818))

(assert (= (and b!578818 res!249050) b!578824))

(assert (= (and b!578824 res!249048) b!578822))

(assert (= (and b!578819 (not res!249049)) b!578830))

(assert (= (and b!578830 res!249051) b!578828))

(assert (= (and b!578828 (not res!249045)) b!578817))

(assert (= (and b!578817 (not res!249052)) b!578826))

(assert (= (or b!578823 b!578818 b!578828) bm!39979))

(declare-fun m!837119 () Bool)

(assert (=> b!578817 m!837119))

(assert (=> b!578817 m!837119))

(declare-fun m!837121 () Bool)

(assert (=> b!578817 m!837121))

(assert (=> b!578824 m!837119))

(assert (=> b!578824 m!837119))

(assert (=> b!578824 m!837121))

(declare-fun m!837123 () Bool)

(assert (=> b!578827 m!837123))

(assert (=> b!578827 m!837123))

(declare-fun m!837125 () Bool)

(assert (=> b!578827 m!837125))

(assert (=> b!578827 m!837119))

(assert (=> b!578827 m!837125))

(assert (=> b!578827 m!837119))

(declare-fun m!837127 () Bool)

(assert (=> b!578827 m!837127))

(assert (=> d!203379 m!836941))

(declare-fun m!837129 () Bool)

(assert (=> d!203379 m!837129))

(assert (=> b!578822 m!837123))

(assert (=> b!578826 m!837123))

(assert (=> bm!39979 m!836941))

(declare-fun m!837135 () Bool)

(assert (=> b!578829 m!837135))

(assert (=> b!578605 d!203379))

(declare-fun d!203393 () Bool)

(declare-fun lt!245214 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1006 (List!5694) (InoxSet Rule!2006))

(assert (=> d!203393 (= lt!245214 (select (content!1006 rules!3103) (rule!1855 token!491)))))

(declare-fun e!349785 () Bool)

(assert (=> d!203393 (= lt!245214 e!349785)))

(declare-fun res!249061 () Bool)

(assert (=> d!203393 (=> (not res!249061) (not e!349785))))

(assert (=> d!203393 (= res!249061 ((_ is Cons!5684) rules!3103))))

(assert (=> d!203393 (= (contains!1335 rules!3103 (rule!1855 token!491)) lt!245214)))

(declare-fun b!578842 () Bool)

(declare-fun e!349784 () Bool)

(assert (=> b!578842 (= e!349785 e!349784)))

(declare-fun res!249062 () Bool)

(assert (=> b!578842 (=> res!249062 e!349784)))

(assert (=> b!578842 (= res!249062 (= (h!11085 rules!3103) (rule!1855 token!491)))))

(declare-fun b!578843 () Bool)

(assert (=> b!578843 (= e!349784 (contains!1335 (t!77729 rules!3103) (rule!1855 token!491)))))

(assert (= (and d!203393 res!249061) b!578842))

(assert (= (and b!578842 (not res!249062)) b!578843))

(declare-fun m!837161 () Bool)

(assert (=> d!203393 m!837161))

(declare-fun m!837173 () Bool)

(assert (=> d!203393 m!837173))

(declare-fun m!837177 () Bool)

(assert (=> b!578843 m!837177))

(assert (=> b!578584 d!203393))

(declare-fun d!203407 () Bool)

(assert (=> d!203407 (= (isEmpty!4104 rules!3103) ((_ is Nil!5684) rules!3103))))

(assert (=> b!578598 d!203407))

(declare-fun b!578866 () Bool)

(declare-fun e!349802 () Bool)

(assert (=> b!578866 (= e!349802 (isPrefix!737 (tail!754 lt!245130) (tail!754 lt!245103)))))

(declare-fun d!203409 () Bool)

(declare-fun e!349800 () Bool)

(assert (=> d!203409 e!349800))

(declare-fun res!249082 () Bool)

(assert (=> d!203409 (=> res!249082 e!349800)))

(declare-fun lt!245221 () Bool)

(assert (=> d!203409 (= res!249082 (not lt!245221))))

(declare-fun e!349801 () Bool)

(assert (=> d!203409 (= lt!245221 e!349801)))

(declare-fun res!249079 () Bool)

(assert (=> d!203409 (=> res!249079 e!349801)))

(assert (=> d!203409 (= res!249079 ((_ is Nil!5682) lt!245130))))

(assert (=> d!203409 (= (isPrefix!737 lt!245130 lt!245103) lt!245221)))

(declare-fun b!578864 () Bool)

(assert (=> b!578864 (= e!349801 e!349802)))

(declare-fun res!249081 () Bool)

(assert (=> b!578864 (=> (not res!249081) (not e!349802))))

(assert (=> b!578864 (= res!249081 (not ((_ is Nil!5682) lt!245103)))))

(declare-fun b!578867 () Bool)

(assert (=> b!578867 (= e!349800 (>= (size!4525 lt!245103) (size!4525 lt!245130)))))

(declare-fun b!578865 () Bool)

(declare-fun res!249080 () Bool)

(assert (=> b!578865 (=> (not res!249080) (not e!349802))))

(assert (=> b!578865 (= res!249080 (= (head!1226 lt!245130) (head!1226 lt!245103)))))

(assert (= (and d!203409 (not res!249079)) b!578864))

(assert (= (and b!578864 res!249081) b!578865))

(assert (= (and b!578865 res!249080) b!578866))

(assert (= (and d!203409 (not res!249082)) b!578867))

(declare-fun m!837191 () Bool)

(assert (=> b!578866 m!837191))

(declare-fun m!837193 () Bool)

(assert (=> b!578866 m!837193))

(assert (=> b!578866 m!837191))

(assert (=> b!578866 m!837193))

(declare-fun m!837195 () Bool)

(assert (=> b!578866 m!837195))

(declare-fun m!837197 () Bool)

(assert (=> b!578867 m!837197))

(assert (=> b!578867 m!836923))

(declare-fun m!837199 () Bool)

(assert (=> b!578865 m!837199))

(declare-fun m!837201 () Bool)

(assert (=> b!578865 m!837201))

(assert (=> b!578597 d!203409))

(declare-fun d!203419 () Bool)

(assert (=> d!203419 (ruleValid!313 thiss!22590 (rule!1855 (_1!3596 (v!16316 lt!245114))))))

(declare-fun lt!245229 () Unit!10285)

(declare-fun choose!4144 (LexerInterface!989 Rule!2006 List!5694) Unit!10285)

(assert (=> d!203419 (= lt!245229 (choose!4144 thiss!22590 (rule!1855 (_1!3596 (v!16316 lt!245114))) rules!3103))))

(assert (=> d!203419 (contains!1335 rules!3103 (rule!1855 (_1!3596 (v!16316 lt!245114))))))

(assert (=> d!203419 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!170 thiss!22590 (rule!1855 (_1!3596 (v!16316 lt!245114))) rules!3103) lt!245229)))

(declare-fun bs!69582 () Bool)

(assert (= bs!69582 d!203419))

(assert (=> bs!69582 m!836913))

(declare-fun m!837211 () Bool)

(assert (=> bs!69582 m!837211))

(assert (=> bs!69582 m!836827))

(assert (=> b!578597 d!203419))

(declare-fun d!203427 () Bool)

(assert (=> d!203427 (isPrefix!737 lt!245130 (++!1591 lt!245130 (_2!3596 (v!16316 lt!245114))))))

(declare-fun lt!245234 () Unit!10285)

(declare-fun choose!4146 (List!5692 List!5692) Unit!10285)

(assert (=> d!203427 (= lt!245234 (choose!4146 lt!245130 (_2!3596 (v!16316 lt!245114))))))

(assert (=> d!203427 (= (lemmaConcatTwoListThenFirstIsPrefix!584 lt!245130 (_2!3596 (v!16316 lt!245114))) lt!245234)))

(declare-fun bs!69583 () Bool)

(assert (= bs!69583 d!203427))

(assert (=> bs!69583 m!836915))

(assert (=> bs!69583 m!836915))

(declare-fun m!837219 () Bool)

(assert (=> bs!69583 m!837219))

(declare-fun m!837221 () Bool)

(assert (=> bs!69583 m!837221))

(assert (=> b!578597 d!203427))

(declare-fun d!203433 () Bool)

(declare-fun lt!245243 () BalanceConc!3648)

(assert (=> d!203433 (= (list!2363 lt!245243) (originalCharacters!1142 (_1!3596 (v!16316 lt!245114))))))

(declare-fun dynLambda!3301 (Int TokenValue!1127) BalanceConc!3648)

(assert (=> d!203433 (= lt!245243 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) (value!36302 (_1!3596 (v!16316 lt!245114)))))))

(assert (=> d!203433 (= (charsOf!732 (_1!3596 (v!16316 lt!245114))) lt!245243)))

(declare-fun b_lambda!22679 () Bool)

(assert (=> (not b_lambda!22679) (not d!203433)))

(declare-fun t!77743 () Bool)

(declare-fun tb!50599 () Bool)

(assert (=> (and b!578575 (= (toChars!1825 (transformation!1103 (h!11085 rules!3103))) (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))) t!77743) tb!50599))

(declare-fun b!578901 () Bool)

(declare-fun e!349826 () Bool)

(declare-fun tp!181093 () Bool)

(declare-fun inv!7160 (Conc!1820) Bool)

(assert (=> b!578901 (= e!349826 (and (inv!7160 (c!108330 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) (value!36302 (_1!3596 (v!16316 lt!245114)))))) tp!181093))))

(declare-fun result!56634 () Bool)

(declare-fun inv!7161 (BalanceConc!3648) Bool)

(assert (=> tb!50599 (= result!56634 (and (inv!7161 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) (value!36302 (_1!3596 (v!16316 lt!245114))))) e!349826))))

(assert (= tb!50599 b!578901))

(declare-fun m!837263 () Bool)

(assert (=> b!578901 m!837263))

(declare-fun m!837265 () Bool)

(assert (=> tb!50599 m!837265))

(assert (=> d!203433 t!77743))

(declare-fun b_and!56819 () Bool)

(assert (= b_and!56797 (and (=> t!77743 result!56634) b_and!56819)))

(declare-fun tb!50601 () Bool)

(declare-fun t!77745 () Bool)

(assert (=> (and b!578589 (= (toChars!1825 (transformation!1103 (rule!1855 token!491))) (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))) t!77745) tb!50601))

(declare-fun result!56638 () Bool)

(assert (= result!56638 result!56634))

(assert (=> d!203433 t!77745))

(declare-fun b_and!56821 () Bool)

(assert (= b_and!56801 (and (=> t!77745 result!56638) b_and!56821)))

(declare-fun m!837267 () Bool)

(assert (=> d!203433 m!837267))

(declare-fun m!837269 () Bool)

(assert (=> d!203433 m!837269))

(assert (=> b!578597 d!203433))

(declare-fun b!578904 () Bool)

(declare-fun e!349829 () Bool)

(assert (=> b!578904 (= e!349829 (isPrefix!737 (tail!754 input!2705) (tail!754 input!2705)))))

(declare-fun d!203461 () Bool)

(declare-fun e!349827 () Bool)

(assert (=> d!203461 e!349827))

(declare-fun res!249107 () Bool)

(assert (=> d!203461 (=> res!249107 e!349827)))

(declare-fun lt!245246 () Bool)

(assert (=> d!203461 (= res!249107 (not lt!245246))))

(declare-fun e!349828 () Bool)

(assert (=> d!203461 (= lt!245246 e!349828)))

(declare-fun res!249104 () Bool)

(assert (=> d!203461 (=> res!249104 e!349828)))

(assert (=> d!203461 (= res!249104 ((_ is Nil!5682) input!2705))))

(assert (=> d!203461 (= (isPrefix!737 input!2705 input!2705) lt!245246)))

(declare-fun b!578902 () Bool)

(assert (=> b!578902 (= e!349828 e!349829)))

(declare-fun res!249106 () Bool)

(assert (=> b!578902 (=> (not res!249106) (not e!349829))))

(assert (=> b!578902 (= res!249106 (not ((_ is Nil!5682) input!2705)))))

(declare-fun b!578905 () Bool)

(assert (=> b!578905 (= e!349827 (>= (size!4525 input!2705) (size!4525 input!2705)))))

(declare-fun b!578903 () Bool)

(declare-fun res!249105 () Bool)

(assert (=> b!578903 (=> (not res!249105) (not e!349829))))

(assert (=> b!578903 (= res!249105 (= (head!1226 input!2705) (head!1226 input!2705)))))

(assert (= (and d!203461 (not res!249104)) b!578902))

(assert (= (and b!578902 res!249106) b!578903))

(assert (= (and b!578903 res!249105) b!578904))

(assert (= (and d!203461 (not res!249107)) b!578905))

(assert (=> b!578904 m!837119))

(assert (=> b!578904 m!837119))

(assert (=> b!578904 m!837119))

(assert (=> b!578904 m!837119))

(declare-fun m!837271 () Bool)

(assert (=> b!578904 m!837271))

(assert (=> b!578905 m!836957))

(assert (=> b!578905 m!836957))

(assert (=> b!578903 m!837123))

(assert (=> b!578903 m!837123))

(assert (=> b!578597 d!203461))

(declare-fun d!203463 () Bool)

(declare-fun res!249112 () Bool)

(declare-fun e!349832 () Bool)

(assert (=> d!203463 (=> (not res!249112) (not e!349832))))

(assert (=> d!203463 (= res!249112 (validRegex!484 (regex!1103 (rule!1855 token!491))))))

(assert (=> d!203463 (= (ruleValid!313 thiss!22590 (rule!1855 token!491)) e!349832)))

(declare-fun b!578910 () Bool)

(declare-fun res!249113 () Bool)

(assert (=> b!578910 (=> (not res!249113) (not e!349832))))

(assert (=> b!578910 (= res!249113 (not (nullable!389 (regex!1103 (rule!1855 token!491)))))))

(declare-fun b!578911 () Bool)

(assert (=> b!578911 (= e!349832 (not (= (tag!1365 (rule!1855 token!491)) (String!7380 ""))))))

(assert (= (and d!203463 res!249112) b!578910))

(assert (= (and b!578910 res!249113) b!578911))

(assert (=> d!203463 m!837129))

(assert (=> b!578910 m!837135))

(assert (=> b!578597 d!203463))

(declare-fun d!203465 () Bool)

(declare-fun res!249114 () Bool)

(declare-fun e!349833 () Bool)

(assert (=> d!203465 (=> (not res!249114) (not e!349833))))

(assert (=> d!203465 (= res!249114 (validRegex!484 (regex!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))))))

(assert (=> d!203465 (= (ruleValid!313 thiss!22590 (rule!1855 (_1!3596 (v!16316 lt!245114)))) e!349833)))

(declare-fun b!578912 () Bool)

(declare-fun res!249115 () Bool)

(assert (=> b!578912 (=> (not res!249115) (not e!349833))))

(assert (=> b!578912 (= res!249115 (not (nullable!389 (regex!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))))))

(declare-fun b!578913 () Bool)

(assert (=> b!578913 (= e!349833 (not (= (tag!1365 (rule!1855 (_1!3596 (v!16316 lt!245114)))) (String!7380 ""))))))

(assert (= (and d!203465 res!249114) b!578912))

(assert (= (and b!578912 res!249115) b!578913))

(declare-fun m!837273 () Bool)

(assert (=> d!203465 m!837273))

(declare-fun m!837275 () Bool)

(assert (=> b!578912 m!837275))

(assert (=> b!578597 d!203465))

(declare-fun b!578924 () Bool)

(declare-fun res!249120 () Bool)

(declare-fun e!349838 () Bool)

(assert (=> b!578924 (=> (not res!249120) (not e!349838))))

(declare-fun lt!245249 () List!5692)

(assert (=> b!578924 (= res!249120 (= (size!4525 lt!245249) (+ (size!4525 lt!245130) (size!4525 (_2!3596 (v!16316 lt!245114))))))))

(declare-fun b!578922 () Bool)

(declare-fun e!349839 () List!5692)

(assert (=> b!578922 (= e!349839 (_2!3596 (v!16316 lt!245114)))))

(declare-fun d!203467 () Bool)

(assert (=> d!203467 e!349838))

(declare-fun res!249121 () Bool)

(assert (=> d!203467 (=> (not res!249121) (not e!349838))))

(declare-fun content!1007 (List!5692) (InoxSet C!3796))

(assert (=> d!203467 (= res!249121 (= (content!1007 lt!245249) ((_ map or) (content!1007 lt!245130) (content!1007 (_2!3596 (v!16316 lt!245114))))))))

(assert (=> d!203467 (= lt!245249 e!349839)))

(declare-fun c!108379 () Bool)

(assert (=> d!203467 (= c!108379 ((_ is Nil!5682) lt!245130))))

(assert (=> d!203467 (= (++!1591 lt!245130 (_2!3596 (v!16316 lt!245114))) lt!245249)))

(declare-fun b!578925 () Bool)

(assert (=> b!578925 (= e!349838 (or (not (= (_2!3596 (v!16316 lt!245114)) Nil!5682)) (= lt!245249 lt!245130)))))

(declare-fun b!578923 () Bool)

(assert (=> b!578923 (= e!349839 (Cons!5682 (h!11083 lt!245130) (++!1591 (t!77727 lt!245130) (_2!3596 (v!16316 lt!245114)))))))

(assert (= (and d!203467 c!108379) b!578922))

(assert (= (and d!203467 (not c!108379)) b!578923))

(assert (= (and d!203467 res!249121) b!578924))

(assert (= (and b!578924 res!249120) b!578925))

(declare-fun m!837277 () Bool)

(assert (=> b!578924 m!837277))

(assert (=> b!578924 m!836923))

(declare-fun m!837279 () Bool)

(assert (=> b!578924 m!837279))

(declare-fun m!837281 () Bool)

(assert (=> d!203467 m!837281))

(declare-fun m!837283 () Bool)

(assert (=> d!203467 m!837283))

(declare-fun m!837285 () Bool)

(assert (=> d!203467 m!837285))

(declare-fun m!837287 () Bool)

(assert (=> b!578923 m!837287))

(assert (=> b!578597 d!203467))

(declare-fun b!578928 () Bool)

(declare-fun e!349842 () Bool)

(assert (=> b!578928 (= e!349842 (isPrefix!737 (tail!754 lt!245118) (tail!754 lt!245131)))))

(declare-fun d!203469 () Bool)

(declare-fun e!349840 () Bool)

(assert (=> d!203469 e!349840))

(declare-fun res!249125 () Bool)

(assert (=> d!203469 (=> res!249125 e!349840)))

(declare-fun lt!245250 () Bool)

(assert (=> d!203469 (= res!249125 (not lt!245250))))

(declare-fun e!349841 () Bool)

(assert (=> d!203469 (= lt!245250 e!349841)))

(declare-fun res!249122 () Bool)

(assert (=> d!203469 (=> res!249122 e!349841)))

(assert (=> d!203469 (= res!249122 ((_ is Nil!5682) lt!245118))))

(assert (=> d!203469 (= (isPrefix!737 lt!245118 lt!245131) lt!245250)))

(declare-fun b!578926 () Bool)

(assert (=> b!578926 (= e!349841 e!349842)))

(declare-fun res!249124 () Bool)

(assert (=> b!578926 (=> (not res!249124) (not e!349842))))

(assert (=> b!578926 (= res!249124 (not ((_ is Nil!5682) lt!245131)))))

(declare-fun b!578929 () Bool)

(assert (=> b!578929 (= e!349840 (>= (size!4525 lt!245131) (size!4525 lt!245118)))))

(declare-fun b!578927 () Bool)

(declare-fun res!249123 () Bool)

(assert (=> b!578927 (=> (not res!249123) (not e!349842))))

(assert (=> b!578927 (= res!249123 (= (head!1226 lt!245118) (head!1226 lt!245131)))))

(assert (= (and d!203469 (not res!249122)) b!578926))

(assert (= (and b!578926 res!249124) b!578927))

(assert (= (and b!578927 res!249123) b!578928))

(assert (= (and d!203469 (not res!249125)) b!578929))

(declare-fun m!837289 () Bool)

(assert (=> b!578928 m!837289))

(declare-fun m!837291 () Bool)

(assert (=> b!578928 m!837291))

(assert (=> b!578928 m!837289))

(assert (=> b!578928 m!837291))

(declare-fun m!837293 () Bool)

(assert (=> b!578928 m!837293))

(declare-fun m!837295 () Bool)

(assert (=> b!578929 m!837295))

(assert (=> b!578929 m!836917))

(declare-fun m!837297 () Bool)

(assert (=> b!578927 m!837297))

(declare-fun m!837299 () Bool)

(assert (=> b!578927 m!837299))

(assert (=> b!578597 d!203469))

(declare-fun d!203471 () Bool)

(assert (=> d!203471 (isPrefix!737 lt!245118 (++!1591 lt!245118 suffix!1342))))

(declare-fun lt!245251 () Unit!10285)

(assert (=> d!203471 (= lt!245251 (choose!4146 lt!245118 suffix!1342))))

(assert (=> d!203471 (= (lemmaConcatTwoListThenFirstIsPrefix!584 lt!245118 suffix!1342) lt!245251)))

(declare-fun bs!69591 () Bool)

(assert (= bs!69591 d!203471))

(assert (=> bs!69591 m!836951))

(assert (=> bs!69591 m!836951))

(declare-fun m!837301 () Bool)

(assert (=> bs!69591 m!837301))

(declare-fun m!837303 () Bool)

(assert (=> bs!69591 m!837303))

(assert (=> b!578597 d!203471))

(declare-fun d!203473 () Bool)

(assert (=> d!203473 (= (_2!3596 (v!16316 lt!245114)) lt!245132)))

(declare-fun lt!245254 () Unit!10285)

(declare-fun choose!4149 (List!5692 List!5692 List!5692 List!5692 List!5692) Unit!10285)

(assert (=> d!203473 (= lt!245254 (choose!4149 lt!245130 (_2!3596 (v!16316 lt!245114)) lt!245130 lt!245132 input!2705))))

(assert (=> d!203473 (isPrefix!737 lt!245130 input!2705)))

(assert (=> d!203473 (= (lemmaSamePrefixThenSameSuffix!460 lt!245130 (_2!3596 (v!16316 lt!245114)) lt!245130 lt!245132 input!2705) lt!245254)))

(declare-fun bs!69592 () Bool)

(assert (= bs!69592 d!203473))

(declare-fun m!837305 () Bool)

(assert (=> bs!69592 m!837305))

(declare-fun m!837307 () Bool)

(assert (=> bs!69592 m!837307))

(assert (=> b!578597 d!203473))

(declare-fun b!578932 () Bool)

(declare-fun e!349845 () Bool)

(assert (=> b!578932 (= e!349845 (isPrefix!737 (tail!754 input!2705) (tail!754 lt!245127)))))

(declare-fun d!203475 () Bool)

(declare-fun e!349843 () Bool)

(assert (=> d!203475 e!349843))

(declare-fun res!249129 () Bool)

(assert (=> d!203475 (=> res!249129 e!349843)))

(declare-fun lt!245255 () Bool)

(assert (=> d!203475 (= res!249129 (not lt!245255))))

(declare-fun e!349844 () Bool)

(assert (=> d!203475 (= lt!245255 e!349844)))

(declare-fun res!249126 () Bool)

(assert (=> d!203475 (=> res!249126 e!349844)))

(assert (=> d!203475 (= res!249126 ((_ is Nil!5682) input!2705))))

(assert (=> d!203475 (= (isPrefix!737 input!2705 lt!245127) lt!245255)))

(declare-fun b!578930 () Bool)

(assert (=> b!578930 (= e!349844 e!349845)))

(declare-fun res!249128 () Bool)

(assert (=> b!578930 (=> (not res!249128) (not e!349845))))

(assert (=> b!578930 (= res!249128 (not ((_ is Nil!5682) lt!245127)))))

(declare-fun b!578933 () Bool)

(assert (=> b!578933 (= e!349843 (>= (size!4525 lt!245127) (size!4525 input!2705)))))

(declare-fun b!578931 () Bool)

(declare-fun res!249127 () Bool)

(assert (=> b!578931 (=> (not res!249127) (not e!349845))))

(assert (=> b!578931 (= res!249127 (= (head!1226 input!2705) (head!1226 lt!245127)))))

(assert (= (and d!203475 (not res!249126)) b!578930))

(assert (= (and b!578930 res!249128) b!578931))

(assert (= (and b!578931 res!249127) b!578932))

(assert (= (and d!203475 (not res!249129)) b!578933))

(assert (=> b!578932 m!837119))

(declare-fun m!837309 () Bool)

(assert (=> b!578932 m!837309))

(assert (=> b!578932 m!837119))

(assert (=> b!578932 m!837309))

(declare-fun m!837311 () Bool)

(assert (=> b!578932 m!837311))

(declare-fun m!837313 () Bool)

(assert (=> b!578933 m!837313))

(assert (=> b!578933 m!836957))

(assert (=> b!578931 m!837123))

(declare-fun m!837315 () Bool)

(assert (=> b!578931 m!837315))

(assert (=> b!578597 d!203475))

(declare-fun d!203477 () Bool)

(declare-fun lt!245258 () List!5692)

(assert (=> d!203477 (= (++!1591 lt!245130 lt!245258) input!2705)))

(declare-fun e!349848 () List!5692)

(assert (=> d!203477 (= lt!245258 e!349848)))

(declare-fun c!108382 () Bool)

(assert (=> d!203477 (= c!108382 ((_ is Cons!5682) lt!245130))))

(assert (=> d!203477 (>= (size!4525 input!2705) (size!4525 lt!245130))))

(assert (=> d!203477 (= (getSuffix!256 input!2705 lt!245130) lt!245258)))

(declare-fun b!578938 () Bool)

(assert (=> b!578938 (= e!349848 (getSuffix!256 (tail!754 input!2705) (t!77727 lt!245130)))))

(declare-fun b!578939 () Bool)

(assert (=> b!578939 (= e!349848 input!2705)))

(assert (= (and d!203477 c!108382) b!578938))

(assert (= (and d!203477 (not c!108382)) b!578939))

(declare-fun m!837317 () Bool)

(assert (=> d!203477 m!837317))

(assert (=> d!203477 m!836957))

(assert (=> d!203477 m!836923))

(assert (=> b!578938 m!837119))

(assert (=> b!578938 m!837119))

(declare-fun m!837319 () Bool)

(assert (=> b!578938 m!837319))

(assert (=> b!578597 d!203477))

(declare-fun d!203479 () Bool)

(declare-fun dynLambda!3303 (Int BalanceConc!3648) TokenValue!1127)

(assert (=> d!203479 (= (apply!1368 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) lt!245135) (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) lt!245135))))

(declare-fun b_lambda!22683 () Bool)

(assert (=> (not b_lambda!22683) (not d!203479)))

(declare-fun tb!50603 () Bool)

(declare-fun t!77747 () Bool)

(assert (=> (and b!578575 (= (toValue!1966 (transformation!1103 (h!11085 rules!3103))) (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))) t!77747) tb!50603))

(declare-fun result!56640 () Bool)

(assert (=> tb!50603 (= result!56640 (inv!21 (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) lt!245135)))))

(declare-fun m!837321 () Bool)

(assert (=> tb!50603 m!837321))

(assert (=> d!203479 t!77747))

(declare-fun b_and!56823 () Bool)

(assert (= b_and!56795 (and (=> t!77747 result!56640) b_and!56823)))

(declare-fun tb!50605 () Bool)

(declare-fun t!77749 () Bool)

(assert (=> (and b!578589 (= (toValue!1966 (transformation!1103 (rule!1855 token!491))) (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))) t!77749) tb!50605))

(declare-fun result!56644 () Bool)

(assert (= result!56644 result!56640))

(assert (=> d!203479 t!77749))

(declare-fun b_and!56825 () Bool)

(assert (= b_and!56799 (and (=> t!77749 result!56644) b_and!56825)))

(declare-fun m!837323 () Bool)

(assert (=> d!203479 m!837323))

(assert (=> b!578597 d!203479))

(declare-fun d!203481 () Bool)

(assert (=> d!203481 (ruleValid!313 thiss!22590 (rule!1855 token!491))))

(declare-fun lt!245259 () Unit!10285)

(assert (=> d!203481 (= lt!245259 (choose!4144 thiss!22590 (rule!1855 token!491) rules!3103))))

(assert (=> d!203481 (contains!1335 rules!3103 (rule!1855 token!491))))

(assert (=> d!203481 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!170 thiss!22590 (rule!1855 token!491) rules!3103) lt!245259)))

(declare-fun bs!69593 () Bool)

(assert (= bs!69593 d!203481))

(assert (=> bs!69593 m!836873))

(declare-fun m!837325 () Bool)

(assert (=> bs!69593 m!837325))

(assert (=> bs!69593 m!836871))

(assert (=> b!578597 d!203481))

(declare-fun d!203483 () Bool)

(assert (=> d!203483 (isPrefix!737 input!2705 (++!1591 input!2705 suffix!1342))))

(declare-fun lt!245260 () Unit!10285)

(assert (=> d!203483 (= lt!245260 (choose!4146 input!2705 suffix!1342))))

(assert (=> d!203483 (= (lemmaConcatTwoListThenFirstIsPrefix!584 input!2705 suffix!1342) lt!245260)))

(declare-fun bs!69594 () Bool)

(assert (= bs!69594 d!203483))

(assert (=> bs!69594 m!836869))

(assert (=> bs!69594 m!836869))

(declare-fun m!837327 () Bool)

(assert (=> bs!69594 m!837327))

(declare-fun m!837329 () Bool)

(assert (=> bs!69594 m!837329))

(assert (=> b!578597 d!203483))

(declare-fun d!203485 () Bool)

(assert (=> d!203485 (isPrefix!737 input!2705 input!2705)))

(declare-fun lt!245263 () Unit!10285)

(declare-fun choose!4151 (List!5692 List!5692) Unit!10285)

(assert (=> d!203485 (= lt!245263 (choose!4151 input!2705 input!2705))))

(assert (=> d!203485 (= (lemmaIsPrefixRefl!475 input!2705 input!2705) lt!245263)))

(declare-fun bs!69595 () Bool)

(assert (= bs!69595 d!203485))

(assert (=> bs!69595 m!836899))

(declare-fun m!837331 () Bool)

(assert (=> bs!69595 m!837331))

(assert (=> b!578597 d!203485))

(declare-fun b!578944 () Bool)

(declare-fun e!349854 () Bool)

(assert (=> b!578944 (= e!349854 (isPrefix!737 (tail!754 input!2705) (tail!754 lt!245131)))))

(declare-fun d!203487 () Bool)

(declare-fun e!349852 () Bool)

(assert (=> d!203487 e!349852))

(declare-fun res!249133 () Bool)

(assert (=> d!203487 (=> res!249133 e!349852)))

(declare-fun lt!245264 () Bool)

(assert (=> d!203487 (= res!249133 (not lt!245264))))

(declare-fun e!349853 () Bool)

(assert (=> d!203487 (= lt!245264 e!349853)))

(declare-fun res!249130 () Bool)

(assert (=> d!203487 (=> res!249130 e!349853)))

(assert (=> d!203487 (= res!249130 ((_ is Nil!5682) input!2705))))

(assert (=> d!203487 (= (isPrefix!737 input!2705 lt!245131) lt!245264)))

(declare-fun b!578942 () Bool)

(assert (=> b!578942 (= e!349853 e!349854)))

(declare-fun res!249132 () Bool)

(assert (=> b!578942 (=> (not res!249132) (not e!349854))))

(assert (=> b!578942 (= res!249132 (not ((_ is Nil!5682) lt!245131)))))

(declare-fun b!578945 () Bool)

(assert (=> b!578945 (= e!349852 (>= (size!4525 lt!245131) (size!4525 input!2705)))))

(declare-fun b!578943 () Bool)

(declare-fun res!249131 () Bool)

(assert (=> b!578943 (=> (not res!249131) (not e!349854))))

(assert (=> b!578943 (= res!249131 (= (head!1226 input!2705) (head!1226 lt!245131)))))

(assert (= (and d!203487 (not res!249130)) b!578942))

(assert (= (and b!578942 res!249132) b!578943))

(assert (= (and b!578943 res!249131) b!578944))

(assert (= (and d!203487 (not res!249133)) b!578945))

(assert (=> b!578944 m!837119))

(assert (=> b!578944 m!837291))

(assert (=> b!578944 m!837119))

(assert (=> b!578944 m!837291))

(declare-fun m!837333 () Bool)

(assert (=> b!578944 m!837333))

(assert (=> b!578945 m!837295))

(assert (=> b!578945 m!836957))

(assert (=> b!578943 m!837123))

(assert (=> b!578943 m!837299))

(assert (=> b!578597 d!203487))

(declare-fun d!203489 () Bool)

(declare-fun fromListB!563 (List!5692) BalanceConc!3648)

(assert (=> d!203489 (= (seqFromList!1291 lt!245130) (fromListB!563 lt!245130))))

(declare-fun bs!69596 () Bool)

(assert (= bs!69596 d!203489))

(declare-fun m!837335 () Bool)

(assert (=> bs!69596 m!837335))

(assert (=> b!578597 d!203489))

(declare-fun d!203491 () Bool)

(declare-fun e!349857 () Bool)

(assert (=> d!203491 e!349857))

(declare-fun res!249136 () Bool)

(assert (=> d!203491 (=> (not res!249136) (not e!349857))))

(declare-fun semiInverseModEq!427 (Int Int) Bool)

(assert (=> d!203491 (= res!249136 (semiInverseModEq!427 (toChars!1825 (transformation!1103 (rule!1855 token!491))) (toValue!1966 (transformation!1103 (rule!1855 token!491)))))))

(declare-fun Unit!10294 () Unit!10285)

(assert (=> d!203491 (= (lemmaInv!239 (transformation!1103 (rule!1855 token!491))) Unit!10294)))

(declare-fun b!578948 () Bool)

(declare-fun equivClasses!410 (Int Int) Bool)

(assert (=> b!578948 (= e!349857 (equivClasses!410 (toChars!1825 (transformation!1103 (rule!1855 token!491))) (toValue!1966 (transformation!1103 (rule!1855 token!491)))))))

(assert (= (and d!203491 res!249136) b!578948))

(declare-fun m!837337 () Bool)

(assert (=> d!203491 m!837337))

(declare-fun m!837339 () Bool)

(assert (=> b!578948 m!837339))

(assert (=> b!578597 d!203491))

(declare-fun d!203493 () Bool)

(declare-fun list!2365 (Conc!1820) List!5692)

(assert (=> d!203493 (= (list!2363 (charsOf!732 (_1!3596 (v!16316 lt!245114)))) (list!2365 (c!108330 (charsOf!732 (_1!3596 (v!16316 lt!245114))))))))

(declare-fun bs!69597 () Bool)

(assert (= bs!69597 d!203493))

(declare-fun m!837341 () Bool)

(assert (=> bs!69597 m!837341))

(assert (=> b!578597 d!203493))

(declare-fun d!203495 () Bool)

(declare-fun e!349858 () Bool)

(assert (=> d!203495 e!349858))

(declare-fun res!249137 () Bool)

(assert (=> d!203495 (=> (not res!249137) (not e!349858))))

(assert (=> d!203495 (= res!249137 (semiInverseModEq!427 (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))))))

(declare-fun Unit!10295 () Unit!10285)

(assert (=> d!203495 (= (lemmaInv!239 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) Unit!10295)))

(declare-fun b!578949 () Bool)

(assert (=> b!578949 (= e!349858 (equivClasses!410 (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))))))

(assert (= (and d!203495 res!249137) b!578949))

(declare-fun m!837343 () Bool)

(assert (=> d!203495 m!837343))

(declare-fun m!837345 () Bool)

(assert (=> b!578949 m!837345))

(assert (=> b!578597 d!203495))

(declare-fun d!203497 () Bool)

(assert (=> d!203497 (= (size!4524 (_1!3596 (v!16316 lt!245114))) (size!4525 (originalCharacters!1142 (_1!3596 (v!16316 lt!245114)))))))

(declare-fun Unit!10296 () Unit!10285)

(assert (=> d!203497 (= (lemmaCharactersSize!170 (_1!3596 (v!16316 lt!245114))) Unit!10296)))

(declare-fun bs!69598 () Bool)

(assert (= bs!69598 d!203497))

(assert (=> bs!69598 m!836935))

(assert (=> b!578597 d!203497))

(declare-fun d!203499 () Bool)

(declare-fun lt!245265 () Int)

(assert (=> d!203499 (>= lt!245265 0)))

(declare-fun e!349859 () Int)

(assert (=> d!203499 (= lt!245265 e!349859)))

(declare-fun c!108383 () Bool)

(assert (=> d!203499 (= c!108383 ((_ is Nil!5682) lt!245130))))

(assert (=> d!203499 (= (size!4525 lt!245130) lt!245265)))

(declare-fun b!578950 () Bool)

(assert (=> b!578950 (= e!349859 0)))

(declare-fun b!578951 () Bool)

(assert (=> b!578951 (= e!349859 (+ 1 (size!4525 (t!77727 lt!245130))))))

(assert (= (and d!203499 c!108383) b!578950))

(assert (= (and d!203499 (not c!108383)) b!578951))

(declare-fun m!837347 () Bool)

(assert (=> b!578951 m!837347))

(assert (=> b!578597 d!203499))

(declare-fun d!203501 () Bool)

(assert (=> d!203501 (= (size!4524 token!491) (size!4525 (originalCharacters!1142 token!491)))))

(declare-fun Unit!10297 () Unit!10285)

(assert (=> d!203501 (= (lemmaCharactersSize!170 token!491) Unit!10297)))

(declare-fun bs!69599 () Bool)

(assert (= bs!69599 d!203501))

(assert (=> bs!69599 m!836823))

(assert (=> b!578597 d!203501))

(declare-fun d!203503 () Bool)

(declare-fun lt!245266 () Int)

(assert (=> d!203503 (>= lt!245266 0)))

(declare-fun e!349860 () Int)

(assert (=> d!203503 (= lt!245266 e!349860)))

(declare-fun c!108384 () Bool)

(assert (=> d!203503 (= c!108384 ((_ is Nil!5682) lt!245118))))

(assert (=> d!203503 (= (size!4525 lt!245118) lt!245266)))

(declare-fun b!578952 () Bool)

(assert (=> b!578952 (= e!349860 0)))

(declare-fun b!578953 () Bool)

(assert (=> b!578953 (= e!349860 (+ 1 (size!4525 (t!77727 lt!245118))))))

(assert (= (and d!203503 c!108384) b!578952))

(assert (= (and d!203503 (not c!108384)) b!578953))

(declare-fun m!837349 () Bool)

(assert (=> b!578953 m!837349))

(assert (=> b!578597 d!203503))

(declare-fun d!203505 () Bool)

(assert (=> d!203505 (and (= lt!245118 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!245279 () Unit!10285)

(declare-fun choose!4152 (List!5692 List!5692 List!5692 List!5692) Unit!10285)

(assert (=> d!203505 (= lt!245279 (choose!4152 lt!245118 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!203505 (= (++!1591 lt!245118 suffix!1342) (++!1591 input!2705 suffix!1342))))

(assert (=> d!203505 (= (lemmaConcatSameAndSameSizesThenSameLists!180 lt!245118 suffix!1342 input!2705 suffix!1342) lt!245279)))

(declare-fun bs!69600 () Bool)

(assert (= bs!69600 d!203505))

(declare-fun m!837351 () Bool)

(assert (=> bs!69600 m!837351))

(assert (=> bs!69600 m!836951))

(assert (=> bs!69600 m!836869))

(assert (=> b!578597 d!203505))

(declare-fun d!203507 () Bool)

(assert (=> d!203507 (= (apply!1368 (transformation!1103 (rule!1855 token!491)) (seqFromList!1291 input!2705)) (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 token!491))) (seqFromList!1291 input!2705)))))

(declare-fun b_lambda!22685 () Bool)

(assert (=> (not b_lambda!22685) (not d!203507)))

(declare-fun tb!50607 () Bool)

(declare-fun t!77751 () Bool)

(assert (=> (and b!578575 (= (toValue!1966 (transformation!1103 (h!11085 rules!3103))) (toValue!1966 (transformation!1103 (rule!1855 token!491)))) t!77751) tb!50607))

(declare-fun result!56646 () Bool)

(assert (=> tb!50607 (= result!56646 (inv!21 (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 token!491))) (seqFromList!1291 input!2705))))))

(declare-fun m!837353 () Bool)

(assert (=> tb!50607 m!837353))

(assert (=> d!203507 t!77751))

(declare-fun b_and!56827 () Bool)

(assert (= b_and!56823 (and (=> t!77751 result!56646) b_and!56827)))

(declare-fun t!77753 () Bool)

(declare-fun tb!50609 () Bool)

(assert (=> (and b!578589 (= (toValue!1966 (transformation!1103 (rule!1855 token!491))) (toValue!1966 (transformation!1103 (rule!1855 token!491)))) t!77753) tb!50609))

(declare-fun result!56648 () Bool)

(assert (= result!56648 result!56646))

(assert (=> d!203507 t!77753))

(declare-fun b_and!56829 () Bool)

(assert (= b_and!56825 (and (=> t!77753 result!56648) b_and!56829)))

(assert (=> d!203507 m!836953))

(declare-fun m!837355 () Bool)

(assert (=> d!203507 m!837355))

(assert (=> b!578576 d!203507))

(declare-fun d!203509 () Bool)

(assert (=> d!203509 (= (seqFromList!1291 input!2705) (fromListB!563 input!2705))))

(declare-fun bs!69601 () Bool)

(assert (= bs!69601 d!203509))

(declare-fun m!837357 () Bool)

(assert (=> bs!69601 m!837357))

(assert (=> b!578576 d!203509))

(declare-fun d!203511 () Bool)

(declare-fun lt!245280 () Int)

(assert (=> d!203511 (>= lt!245280 0)))

(declare-fun e!349870 () Int)

(assert (=> d!203511 (= lt!245280 e!349870)))

(declare-fun c!108387 () Bool)

(assert (=> d!203511 (= c!108387 ((_ is Nil!5682) input!2705))))

(assert (=> d!203511 (= (size!4525 input!2705) lt!245280)))

(declare-fun b!578972 () Bool)

(assert (=> b!578972 (= e!349870 0)))

(declare-fun b!578973 () Bool)

(assert (=> b!578973 (= e!349870 (+ 1 (size!4525 (t!77727 input!2705))))))

(assert (= (and d!203511 c!108387) b!578972))

(assert (= (and d!203511 (not c!108387)) b!578973))

(declare-fun m!837359 () Bool)

(assert (=> b!578973 m!837359))

(assert (=> b!578576 d!203511))

(declare-fun d!203513 () Bool)

(declare-fun lt!245281 () List!5692)

(assert (=> d!203513 (= (++!1591 input!2705 lt!245281) lt!245127)))

(declare-fun e!349871 () List!5692)

(assert (=> d!203513 (= lt!245281 e!349871)))

(declare-fun c!108388 () Bool)

(assert (=> d!203513 (= c!108388 ((_ is Cons!5682) input!2705))))

(assert (=> d!203513 (>= (size!4525 lt!245127) (size!4525 input!2705))))

(assert (=> d!203513 (= (getSuffix!256 lt!245127 input!2705) lt!245281)))

(declare-fun b!578974 () Bool)

(assert (=> b!578974 (= e!349871 (getSuffix!256 (tail!754 lt!245127) (t!77727 input!2705)))))

(declare-fun b!578975 () Bool)

(assert (=> b!578975 (= e!349871 lt!245127)))

(assert (= (and d!203513 c!108388) b!578974))

(assert (= (and d!203513 (not c!108388)) b!578975))

(declare-fun m!837361 () Bool)

(assert (=> d!203513 m!837361))

(assert (=> d!203513 m!837313))

(assert (=> d!203513 m!836957))

(assert (=> b!578974 m!837309))

(assert (=> b!578974 m!837309))

(declare-fun m!837363 () Bool)

(assert (=> b!578974 m!837363))

(assert (=> b!578576 d!203513))

(declare-fun d!203515 () Bool)

(assert (=> d!203515 (= (isDefined!1265 lt!245114) (not (isEmpty!4106 lt!245114)))))

(declare-fun bs!69602 () Bool)

(assert (= bs!69602 d!203515))

(declare-fun m!837365 () Bool)

(assert (=> bs!69602 m!837365))

(assert (=> b!578580 d!203515))

(declare-fun d!203517 () Bool)

(assert (=> d!203517 (= (maxPrefixOneRule!388 thiss!22590 (rule!1855 (_1!3596 (v!16316 lt!245114))) input!2705) (Some!1453 (tuple2!6665 (Token!1943 (apply!1368 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) (seqFromList!1291 lt!245130)) (rule!1855 (_1!3596 (v!16316 lt!245114))) (size!4525 lt!245130) lt!245130) (_2!3596 (v!16316 lt!245114)))))))

(declare-fun lt!245295 () Unit!10285)

(declare-fun choose!4153 (LexerInterface!989 List!5694 List!5692 List!5692 List!5692 Rule!2006) Unit!10285)

(assert (=> d!203517 (= lt!245295 (choose!4153 thiss!22590 rules!3103 lt!245130 input!2705 (_2!3596 (v!16316 lt!245114)) (rule!1855 (_1!3596 (v!16316 lt!245114)))))))

(assert (=> d!203517 (not (isEmpty!4104 rules!3103))))

(assert (=> d!203517 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!138 thiss!22590 rules!3103 lt!245130 input!2705 (_2!3596 (v!16316 lt!245114)) (rule!1855 (_1!3596 (v!16316 lt!245114)))) lt!245295)))

(declare-fun bs!69604 () Bool)

(assert (= bs!69604 d!203517))

(assert (=> bs!69604 m!836835))

(assert (=> bs!69604 m!836843))

(assert (=> bs!69604 m!836907))

(declare-fun m!837459 () Bool)

(assert (=> bs!69604 m!837459))

(assert (=> bs!69604 m!836923))

(declare-fun m!837461 () Bool)

(assert (=> bs!69604 m!837461))

(assert (=> bs!69604 m!836907))

(assert (=> b!578578 d!203517))

(declare-fun b!579014 () Bool)

(declare-fun res!249185 () Bool)

(declare-fun e!349892 () Bool)

(assert (=> b!579014 (=> (not res!249185) (not e!349892))))

(declare-fun lt!245315 () Option!1454)

(assert (=> b!579014 (= res!249185 (= (++!1591 (list!2363 (charsOf!732 (_1!3596 (get!2169 lt!245315)))) (_2!3596 (get!2169 lt!245315))) input!2705))))

(declare-fun b!579015 () Bool)

(declare-fun e!349893 () Bool)

(assert (=> b!579015 (= e!349893 e!349892)))

(declare-fun res!249180 () Bool)

(assert (=> b!579015 (=> (not res!249180) (not e!349892))))

(assert (=> b!579015 (= res!249180 (matchR!584 (regex!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) (list!2363 (charsOf!732 (_1!3596 (get!2169 lt!245315))))))))

(declare-fun b!579017 () Bool)

(declare-fun res!249181 () Bool)

(assert (=> b!579017 (=> (not res!249181) (not e!349892))))

(assert (=> b!579017 (= res!249181 (< (size!4525 (_2!3596 (get!2169 lt!245315))) (size!4525 input!2705)))))

(declare-fun b!579018 () Bool)

(declare-fun e!349890 () Option!1454)

(declare-datatypes ((tuple2!6668 0))(
  ( (tuple2!6669 (_1!3598 List!5692) (_2!3598 List!5692)) )
))
(declare-fun lt!245311 () tuple2!6668)

(declare-fun size!4527 (BalanceConc!3648) Int)

(assert (=> b!579018 (= e!349890 (Some!1453 (tuple2!6665 (Token!1943 (apply!1368 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) (seqFromList!1291 (_1!3598 lt!245311))) (rule!1855 (_1!3596 (v!16316 lt!245114))) (size!4527 (seqFromList!1291 (_1!3598 lt!245311))) (_1!3598 lt!245311)) (_2!3598 lt!245311))))))

(declare-fun lt!245312 () Unit!10285)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!157 (Regex!1437 List!5692) Unit!10285)

(assert (=> b!579018 (= lt!245312 (longestMatchIsAcceptedByMatchOrIsEmpty!157 (regex!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) input!2705))))

(declare-fun res!249183 () Bool)

(declare-fun findLongestMatchInner!173 (Regex!1437 List!5692 Int List!5692 List!5692 Int) tuple2!6668)

(assert (=> b!579018 (= res!249183 (isEmpty!4103 (_1!3598 (findLongestMatchInner!173 (regex!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) Nil!5682 (size!4525 Nil!5682) input!2705 input!2705 (size!4525 input!2705)))))))

(declare-fun e!349891 () Bool)

(assert (=> b!579018 (=> res!249183 e!349891)))

(assert (=> b!579018 e!349891))

(declare-fun lt!245314 () Unit!10285)

(assert (=> b!579018 (= lt!245314 lt!245312)))

(declare-fun lt!245313 () Unit!10285)

(assert (=> b!579018 (= lt!245313 (lemmaSemiInverse!206 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) (seqFromList!1291 (_1!3598 lt!245311))))))

(declare-fun b!579019 () Bool)

(assert (=> b!579019 (= e!349892 (= (size!4524 (_1!3596 (get!2169 lt!245315))) (size!4525 (originalCharacters!1142 (_1!3596 (get!2169 lt!245315))))))))

(declare-fun b!579020 () Bool)

(assert (=> b!579020 (= e!349890 None!1453)))

(declare-fun b!579016 () Bool)

(declare-fun res!249186 () Bool)

(assert (=> b!579016 (=> (not res!249186) (not e!349892))))

(assert (=> b!579016 (= res!249186 (= (value!36302 (_1!3596 (get!2169 lt!245315))) (apply!1368 (transformation!1103 (rule!1855 (_1!3596 (get!2169 lt!245315)))) (seqFromList!1291 (originalCharacters!1142 (_1!3596 (get!2169 lt!245315)))))))))

(declare-fun d!203529 () Bool)

(assert (=> d!203529 e!349893))

(declare-fun res!249184 () Bool)

(assert (=> d!203529 (=> res!249184 e!349893)))

(assert (=> d!203529 (= res!249184 (isEmpty!4106 lt!245315))))

(assert (=> d!203529 (= lt!245315 e!349890)))

(declare-fun c!108395 () Bool)

(assert (=> d!203529 (= c!108395 (isEmpty!4103 (_1!3598 lt!245311)))))

(declare-fun findLongestMatch!152 (Regex!1437 List!5692) tuple2!6668)

(assert (=> d!203529 (= lt!245311 (findLongestMatch!152 (regex!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) input!2705))))

(assert (=> d!203529 (ruleValid!313 thiss!22590 (rule!1855 (_1!3596 (v!16316 lt!245114))))))

(assert (=> d!203529 (= (maxPrefixOneRule!388 thiss!22590 (rule!1855 (_1!3596 (v!16316 lt!245114))) input!2705) lt!245315)))

(declare-fun b!579021 () Bool)

(declare-fun res!249182 () Bool)

(assert (=> b!579021 (=> (not res!249182) (not e!349892))))

(assert (=> b!579021 (= res!249182 (= (rule!1855 (_1!3596 (get!2169 lt!245315))) (rule!1855 (_1!3596 (v!16316 lt!245114)))))))

(declare-fun b!579022 () Bool)

(assert (=> b!579022 (= e!349891 (matchR!584 (regex!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) (_1!3598 (findLongestMatchInner!173 (regex!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) Nil!5682 (size!4525 Nil!5682) input!2705 input!2705 (size!4525 input!2705)))))))

(assert (= (and d!203529 c!108395) b!579020))

(assert (= (and d!203529 (not c!108395)) b!579018))

(assert (= (and b!579018 (not res!249183)) b!579022))

(assert (= (and d!203529 (not res!249184)) b!579015))

(assert (= (and b!579015 res!249180) b!579014))

(assert (= (and b!579014 res!249185) b!579017))

(assert (= (and b!579017 res!249181) b!579021))

(assert (= (and b!579021 res!249182) b!579016))

(assert (= (and b!579016 res!249186) b!579019))

(declare-fun m!837467 () Bool)

(assert (=> b!579022 m!837467))

(assert (=> b!579022 m!836957))

(assert (=> b!579022 m!837467))

(assert (=> b!579022 m!836957))

(declare-fun m!837469 () Bool)

(assert (=> b!579022 m!837469))

(declare-fun m!837471 () Bool)

(assert (=> b!579022 m!837471))

(declare-fun m!837473 () Bool)

(assert (=> b!579018 m!837473))

(declare-fun m!837475 () Bool)

(assert (=> b!579018 m!837475))

(declare-fun m!837477 () Bool)

(assert (=> b!579018 m!837477))

(assert (=> b!579018 m!836957))

(assert (=> b!579018 m!837467))

(assert (=> b!579018 m!837473))

(assert (=> b!579018 m!837473))

(declare-fun m!837479 () Bool)

(assert (=> b!579018 m!837479))

(declare-fun m!837481 () Bool)

(assert (=> b!579018 m!837481))

(assert (=> b!579018 m!837467))

(assert (=> b!579018 m!836957))

(assert (=> b!579018 m!837469))

(assert (=> b!579018 m!837473))

(declare-fun m!837483 () Bool)

(assert (=> b!579018 m!837483))

(declare-fun m!837485 () Bool)

(assert (=> b!579016 m!837485))

(declare-fun m!837487 () Bool)

(assert (=> b!579016 m!837487))

(assert (=> b!579016 m!837487))

(declare-fun m!837489 () Bool)

(assert (=> b!579016 m!837489))

(assert (=> b!579019 m!837485))

(declare-fun m!837491 () Bool)

(assert (=> b!579019 m!837491))

(assert (=> b!579015 m!837485))

(declare-fun m!837493 () Bool)

(assert (=> b!579015 m!837493))

(assert (=> b!579015 m!837493))

(declare-fun m!837495 () Bool)

(assert (=> b!579015 m!837495))

(assert (=> b!579015 m!837495))

(declare-fun m!837497 () Bool)

(assert (=> b!579015 m!837497))

(assert (=> b!579021 m!837485))

(declare-fun m!837499 () Bool)

(assert (=> d!203529 m!837499))

(declare-fun m!837501 () Bool)

(assert (=> d!203529 m!837501))

(declare-fun m!837503 () Bool)

(assert (=> d!203529 m!837503))

(assert (=> d!203529 m!836913))

(assert (=> b!579014 m!837485))

(assert (=> b!579014 m!837493))

(assert (=> b!579014 m!837493))

(assert (=> b!579014 m!837495))

(assert (=> b!579014 m!837495))

(declare-fun m!837505 () Bool)

(assert (=> b!579014 m!837505))

(assert (=> b!579017 m!837485))

(declare-fun m!837507 () Bool)

(assert (=> b!579017 m!837507))

(assert (=> b!579017 m!836957))

(assert (=> b!578578 d!203529))

(declare-fun b!579101 () Bool)

(declare-fun e!349942 () Bool)

(assert (=> b!579101 (= e!349942 true)))

(declare-fun d!203533 () Bool)

(assert (=> d!203533 e!349942))

(assert (= d!203533 b!579101))

(declare-fun order!4643 () Int)

(declare-fun lambda!15757 () Int)

(declare-fun order!4641 () Int)

(declare-fun dynLambda!3304 (Int Int) Int)

(declare-fun dynLambda!3305 (Int Int) Int)

(assert (=> b!579101 (< (dynLambda!3304 order!4641 (toValue!1966 (transformation!1103 (rule!1855 token!491)))) (dynLambda!3305 order!4643 lambda!15757))))

(declare-fun order!4645 () Int)

(declare-fun dynLambda!3306 (Int Int) Int)

(assert (=> b!579101 (< (dynLambda!3306 order!4645 (toChars!1825 (transformation!1103 (rule!1855 token!491)))) (dynLambda!3305 order!4643 lambda!15757))))

(assert (=> d!203533 (= (list!2363 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 token!491))) (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 token!491))) lt!245134))) (list!2363 lt!245134))))

(declare-fun lt!245332 () Unit!10285)

(declare-fun ForallOf!109 (Int BalanceConc!3648) Unit!10285)

(assert (=> d!203533 (= lt!245332 (ForallOf!109 lambda!15757 lt!245134))))

(assert (=> d!203533 (= (lemmaSemiInverse!206 (transformation!1103 (rule!1855 token!491)) lt!245134) lt!245332)))

(declare-fun b_lambda!22711 () Bool)

(assert (=> (not b_lambda!22711) (not d!203533)))

(declare-fun t!77785 () Bool)

(declare-fun tb!50641 () Bool)

(assert (=> (and b!578575 (= (toChars!1825 (transformation!1103 (h!11085 rules!3103))) (toChars!1825 (transformation!1103 (rule!1855 token!491)))) t!77785) tb!50641))

(declare-fun b!579102 () Bool)

(declare-fun e!349943 () Bool)

(declare-fun tp!181133 () Bool)

(assert (=> b!579102 (= e!349943 (and (inv!7160 (c!108330 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 token!491))) (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 token!491))) lt!245134)))) tp!181133))))

(declare-fun result!56686 () Bool)

(assert (=> tb!50641 (= result!56686 (and (inv!7161 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 token!491))) (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 token!491))) lt!245134))) e!349943))))

(assert (= tb!50641 b!579102))

(declare-fun m!837575 () Bool)

(assert (=> b!579102 m!837575))

(declare-fun m!837577 () Bool)

(assert (=> tb!50641 m!837577))

(assert (=> d!203533 t!77785))

(declare-fun b_and!56859 () Bool)

(assert (= b_and!56819 (and (=> t!77785 result!56686) b_and!56859)))

(declare-fun t!77787 () Bool)

(declare-fun tb!50643 () Bool)

(assert (=> (and b!578589 (= (toChars!1825 (transformation!1103 (rule!1855 token!491))) (toChars!1825 (transformation!1103 (rule!1855 token!491)))) t!77787) tb!50643))

(declare-fun result!56688 () Bool)

(assert (= result!56688 result!56686))

(assert (=> d!203533 t!77787))

(declare-fun b_and!56861 () Bool)

(assert (= b_and!56821 (and (=> t!77787 result!56688) b_and!56861)))

(declare-fun b_lambda!22713 () Bool)

(assert (=> (not b_lambda!22713) (not d!203533)))

(declare-fun tb!50645 () Bool)

(declare-fun t!77789 () Bool)

(assert (=> (and b!578575 (= (toValue!1966 (transformation!1103 (h!11085 rules!3103))) (toValue!1966 (transformation!1103 (rule!1855 token!491)))) t!77789) tb!50645))

(declare-fun result!56690 () Bool)

(assert (=> tb!50645 (= result!56690 (inv!21 (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 token!491))) lt!245134)))))

(declare-fun m!837579 () Bool)

(assert (=> tb!50645 m!837579))

(assert (=> d!203533 t!77789))

(declare-fun b_and!56863 () Bool)

(assert (= b_and!56827 (and (=> t!77789 result!56690) b_and!56863)))

(declare-fun t!77791 () Bool)

(declare-fun tb!50647 () Bool)

(assert (=> (and b!578589 (= (toValue!1966 (transformation!1103 (rule!1855 token!491))) (toValue!1966 (transformation!1103 (rule!1855 token!491)))) t!77791) tb!50647))

(declare-fun result!56692 () Bool)

(assert (= result!56692 result!56690))

(assert (=> d!203533 t!77791))

(declare-fun b_and!56865 () Bool)

(assert (= b_and!56829 (and (=> t!77791 result!56692) b_and!56865)))

(declare-fun m!837581 () Bool)

(assert (=> d!203533 m!837581))

(declare-fun m!837583 () Bool)

(assert (=> d!203533 m!837583))

(assert (=> d!203533 m!837581))

(declare-fun m!837585 () Bool)

(assert (=> d!203533 m!837585))

(declare-fun m!837587 () Bool)

(assert (=> d!203533 m!837587))

(assert (=> d!203533 m!837583))

(declare-fun m!837589 () Bool)

(assert (=> d!203533 m!837589))

(assert (=> b!578578 d!203533))

(declare-fun d!203575 () Bool)

(assert (=> d!203575 (= (maxPrefixOneRule!388 thiss!22590 (rule!1855 token!491) lt!245127) (Some!1453 (tuple2!6665 (Token!1943 (apply!1368 (transformation!1103 (rule!1855 token!491)) (seqFromList!1291 lt!245118)) (rule!1855 token!491) (size!4525 lt!245118) lt!245118) suffix!1342)))))

(declare-fun lt!245333 () Unit!10285)

(assert (=> d!203575 (= lt!245333 (choose!4153 thiss!22590 rules!3103 lt!245118 lt!245127 suffix!1342 (rule!1855 token!491)))))

(assert (=> d!203575 (not (isEmpty!4104 rules!3103))))

(assert (=> d!203575 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!138 thiss!22590 rules!3103 lt!245118 lt!245127 suffix!1342 (rule!1855 token!491)) lt!245333)))

(declare-fun bs!69611 () Bool)

(assert (= bs!69611 d!203575))

(assert (=> bs!69611 m!836835))

(assert (=> bs!69611 m!836841))

(assert (=> bs!69611 m!836837))

(declare-fun m!837591 () Bool)

(assert (=> bs!69611 m!837591))

(assert (=> bs!69611 m!836917))

(declare-fun m!837593 () Bool)

(assert (=> bs!69611 m!837593))

(assert (=> bs!69611 m!836837))

(assert (=> b!578578 d!203575))

(declare-fun b!579103 () Bool)

(declare-fun res!249198 () Bool)

(declare-fun e!349947 () Bool)

(assert (=> b!579103 (=> (not res!249198) (not e!349947))))

(declare-fun lt!245338 () Option!1454)

(assert (=> b!579103 (= res!249198 (= (++!1591 (list!2363 (charsOf!732 (_1!3596 (get!2169 lt!245338)))) (_2!3596 (get!2169 lt!245338))) lt!245127))))

(declare-fun b!579104 () Bool)

(declare-fun e!349948 () Bool)

(assert (=> b!579104 (= e!349948 e!349947)))

(declare-fun res!249193 () Bool)

(assert (=> b!579104 (=> (not res!249193) (not e!349947))))

(assert (=> b!579104 (= res!249193 (matchR!584 (regex!1103 (rule!1855 token!491)) (list!2363 (charsOf!732 (_1!3596 (get!2169 lt!245338))))))))

(declare-fun b!579106 () Bool)

(declare-fun res!249194 () Bool)

(assert (=> b!579106 (=> (not res!249194) (not e!349947))))

(assert (=> b!579106 (= res!249194 (< (size!4525 (_2!3596 (get!2169 lt!245338))) (size!4525 lt!245127)))))

(declare-fun b!579107 () Bool)

(declare-fun e!349945 () Option!1454)

(declare-fun lt!245334 () tuple2!6668)

(assert (=> b!579107 (= e!349945 (Some!1453 (tuple2!6665 (Token!1943 (apply!1368 (transformation!1103 (rule!1855 token!491)) (seqFromList!1291 (_1!3598 lt!245334))) (rule!1855 token!491) (size!4527 (seqFromList!1291 (_1!3598 lt!245334))) (_1!3598 lt!245334)) (_2!3598 lt!245334))))))

(declare-fun lt!245335 () Unit!10285)

(assert (=> b!579107 (= lt!245335 (longestMatchIsAcceptedByMatchOrIsEmpty!157 (regex!1103 (rule!1855 token!491)) lt!245127))))

(declare-fun res!249196 () Bool)

(assert (=> b!579107 (= res!249196 (isEmpty!4103 (_1!3598 (findLongestMatchInner!173 (regex!1103 (rule!1855 token!491)) Nil!5682 (size!4525 Nil!5682) lt!245127 lt!245127 (size!4525 lt!245127)))))))

(declare-fun e!349946 () Bool)

(assert (=> b!579107 (=> res!249196 e!349946)))

(assert (=> b!579107 e!349946))

(declare-fun lt!245337 () Unit!10285)

(assert (=> b!579107 (= lt!245337 lt!245335)))

(declare-fun lt!245336 () Unit!10285)

(assert (=> b!579107 (= lt!245336 (lemmaSemiInverse!206 (transformation!1103 (rule!1855 token!491)) (seqFromList!1291 (_1!3598 lt!245334))))))

(declare-fun b!579108 () Bool)

(assert (=> b!579108 (= e!349947 (= (size!4524 (_1!3596 (get!2169 lt!245338))) (size!4525 (originalCharacters!1142 (_1!3596 (get!2169 lt!245338))))))))

(declare-fun b!579109 () Bool)

(assert (=> b!579109 (= e!349945 None!1453)))

(declare-fun b!579105 () Bool)

(declare-fun res!249199 () Bool)

(assert (=> b!579105 (=> (not res!249199) (not e!349947))))

(assert (=> b!579105 (= res!249199 (= (value!36302 (_1!3596 (get!2169 lt!245338))) (apply!1368 (transformation!1103 (rule!1855 (_1!3596 (get!2169 lt!245338)))) (seqFromList!1291 (originalCharacters!1142 (_1!3596 (get!2169 lt!245338)))))))))

(declare-fun d!203577 () Bool)

(assert (=> d!203577 e!349948))

(declare-fun res!249197 () Bool)

(assert (=> d!203577 (=> res!249197 e!349948)))

(assert (=> d!203577 (= res!249197 (isEmpty!4106 lt!245338))))

(assert (=> d!203577 (= lt!245338 e!349945)))

(declare-fun c!108409 () Bool)

(assert (=> d!203577 (= c!108409 (isEmpty!4103 (_1!3598 lt!245334)))))

(assert (=> d!203577 (= lt!245334 (findLongestMatch!152 (regex!1103 (rule!1855 token!491)) lt!245127))))

(assert (=> d!203577 (ruleValid!313 thiss!22590 (rule!1855 token!491))))

(assert (=> d!203577 (= (maxPrefixOneRule!388 thiss!22590 (rule!1855 token!491) lt!245127) lt!245338)))

(declare-fun b!579110 () Bool)

(declare-fun res!249195 () Bool)

(assert (=> b!579110 (=> (not res!249195) (not e!349947))))

(assert (=> b!579110 (= res!249195 (= (rule!1855 (_1!3596 (get!2169 lt!245338))) (rule!1855 token!491)))))

(declare-fun b!579111 () Bool)

(assert (=> b!579111 (= e!349946 (matchR!584 (regex!1103 (rule!1855 token!491)) (_1!3598 (findLongestMatchInner!173 (regex!1103 (rule!1855 token!491)) Nil!5682 (size!4525 Nil!5682) lt!245127 lt!245127 (size!4525 lt!245127)))))))

(assert (= (and d!203577 c!108409) b!579109))

(assert (= (and d!203577 (not c!108409)) b!579107))

(assert (= (and b!579107 (not res!249196)) b!579111))

(assert (= (and d!203577 (not res!249197)) b!579104))

(assert (= (and b!579104 res!249193) b!579103))

(assert (= (and b!579103 res!249198) b!579106))

(assert (= (and b!579106 res!249194) b!579110))

(assert (= (and b!579110 res!249195) b!579105))

(assert (= (and b!579105 res!249199) b!579108))

(assert (=> b!579111 m!837467))

(assert (=> b!579111 m!837313))

(assert (=> b!579111 m!837467))

(assert (=> b!579111 m!837313))

(declare-fun m!837595 () Bool)

(assert (=> b!579111 m!837595))

(declare-fun m!837597 () Bool)

(assert (=> b!579111 m!837597))

(declare-fun m!837599 () Bool)

(assert (=> b!579107 m!837599))

(declare-fun m!837601 () Bool)

(assert (=> b!579107 m!837601))

(declare-fun m!837603 () Bool)

(assert (=> b!579107 m!837603))

(assert (=> b!579107 m!837313))

(assert (=> b!579107 m!837467))

(assert (=> b!579107 m!837599))

(assert (=> b!579107 m!837599))

(declare-fun m!837605 () Bool)

(assert (=> b!579107 m!837605))

(declare-fun m!837607 () Bool)

(assert (=> b!579107 m!837607))

(assert (=> b!579107 m!837467))

(assert (=> b!579107 m!837313))

(assert (=> b!579107 m!837595))

(assert (=> b!579107 m!837599))

(declare-fun m!837609 () Bool)

(assert (=> b!579107 m!837609))

(declare-fun m!837611 () Bool)

(assert (=> b!579105 m!837611))

(declare-fun m!837613 () Bool)

(assert (=> b!579105 m!837613))

(assert (=> b!579105 m!837613))

(declare-fun m!837615 () Bool)

(assert (=> b!579105 m!837615))

(assert (=> b!579108 m!837611))

(declare-fun m!837617 () Bool)

(assert (=> b!579108 m!837617))

(assert (=> b!579104 m!837611))

(declare-fun m!837619 () Bool)

(assert (=> b!579104 m!837619))

(assert (=> b!579104 m!837619))

(declare-fun m!837621 () Bool)

(assert (=> b!579104 m!837621))

(assert (=> b!579104 m!837621))

(declare-fun m!837623 () Bool)

(assert (=> b!579104 m!837623))

(assert (=> b!579110 m!837611))

(declare-fun m!837625 () Bool)

(assert (=> d!203577 m!837625))

(declare-fun m!837627 () Bool)

(assert (=> d!203577 m!837627))

(declare-fun m!837629 () Bool)

(assert (=> d!203577 m!837629))

(assert (=> d!203577 m!836873))

(assert (=> b!579103 m!837611))

(assert (=> b!579103 m!837619))

(assert (=> b!579103 m!837619))

(assert (=> b!579103 m!837621))

(assert (=> b!579103 m!837621))

(declare-fun m!837631 () Bool)

(assert (=> b!579103 m!837631))

(assert (=> b!579106 m!837611))

(declare-fun m!837633 () Bool)

(assert (=> b!579106 m!837633))

(assert (=> b!579106 m!837313))

(assert (=> b!578578 d!203577))

(declare-fun d!203579 () Bool)

(assert (=> d!203579 (= suffix!1342 lt!245124)))

(declare-fun lt!245339 () Unit!10285)

(assert (=> d!203579 (= lt!245339 (choose!4149 lt!245118 suffix!1342 lt!245118 lt!245124 lt!245127))))

(assert (=> d!203579 (isPrefix!737 lt!245118 lt!245127)))

(assert (=> d!203579 (= (lemmaSamePrefixThenSameSuffix!460 lt!245118 suffix!1342 lt!245118 lt!245124 lt!245127) lt!245339)))

(declare-fun bs!69612 () Bool)

(assert (= bs!69612 d!203579))

(declare-fun m!837635 () Bool)

(assert (=> bs!69612 m!837635))

(declare-fun m!837637 () Bool)

(assert (=> bs!69612 m!837637))

(assert (=> b!578578 d!203579))

(declare-fun d!203581 () Bool)

(declare-fun lt!245340 () List!5692)

(assert (=> d!203581 (= (++!1591 lt!245118 lt!245340) lt!245127)))

(declare-fun e!349949 () List!5692)

(assert (=> d!203581 (= lt!245340 e!349949)))

(declare-fun c!108410 () Bool)

(assert (=> d!203581 (= c!108410 ((_ is Cons!5682) lt!245118))))

(assert (=> d!203581 (>= (size!4525 lt!245127) (size!4525 lt!245118))))

(assert (=> d!203581 (= (getSuffix!256 lt!245127 lt!245118) lt!245340)))

(declare-fun b!579112 () Bool)

(assert (=> b!579112 (= e!349949 (getSuffix!256 (tail!754 lt!245127) (t!77727 lt!245118)))))

(declare-fun b!579113 () Bool)

(assert (=> b!579113 (= e!349949 lt!245127)))

(assert (= (and d!203581 c!108410) b!579112))

(assert (= (and d!203581 (not c!108410)) b!579113))

(declare-fun m!837639 () Bool)

(assert (=> d!203581 m!837639))

(assert (=> d!203581 m!837313))

(assert (=> d!203581 m!836917))

(assert (=> b!579112 m!837309))

(assert (=> b!579112 m!837309))

(declare-fun m!837641 () Bool)

(assert (=> b!579112 m!837641))

(assert (=> b!578578 d!203581))

(declare-fun d!203583 () Bool)

(assert (=> d!203583 (= (apply!1368 (transformation!1103 (rule!1855 token!491)) lt!245134) (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 token!491))) lt!245134))))

(declare-fun b_lambda!22715 () Bool)

(assert (=> (not b_lambda!22715) (not d!203583)))

(assert (=> d!203583 t!77789))

(declare-fun b_and!56867 () Bool)

(assert (= b_and!56863 (and (=> t!77789 result!56690) b_and!56867)))

(assert (=> d!203583 t!77791))

(declare-fun b_and!56869 () Bool)

(assert (= b_and!56865 (and (=> t!77791 result!56692) b_and!56869)))

(assert (=> d!203583 m!837581))

(assert (=> b!578578 d!203583))

(declare-fun bs!69613 () Bool)

(declare-fun d!203585 () Bool)

(assert (= bs!69613 (and d!203585 d!203533)))

(declare-fun lambda!15758 () Int)

(assert (=> bs!69613 (= (and (= (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) (toChars!1825 (transformation!1103 (rule!1855 token!491)))) (= (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) (toValue!1966 (transformation!1103 (rule!1855 token!491))))) (= lambda!15758 lambda!15757))))

(declare-fun b!579114 () Bool)

(declare-fun e!349950 () Bool)

(assert (=> b!579114 (= e!349950 true)))

(assert (=> d!203585 e!349950))

(assert (= d!203585 b!579114))

(assert (=> b!579114 (< (dynLambda!3304 order!4641 (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))) (dynLambda!3305 order!4643 lambda!15758))))

(assert (=> b!579114 (< (dynLambda!3306 order!4645 (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))) (dynLambda!3305 order!4643 lambda!15758))))

(assert (=> d!203585 (= (list!2363 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) lt!245135))) (list!2363 lt!245135))))

(declare-fun lt!245341 () Unit!10285)

(assert (=> d!203585 (= lt!245341 (ForallOf!109 lambda!15758 lt!245135))))

(assert (=> d!203585 (= (lemmaSemiInverse!206 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) lt!245135) lt!245341)))

(declare-fun b_lambda!22717 () Bool)

(assert (=> (not b_lambda!22717) (not d!203585)))

(declare-fun t!77793 () Bool)

(declare-fun tb!50649 () Bool)

(assert (=> (and b!578575 (= (toChars!1825 (transformation!1103 (h!11085 rules!3103))) (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))) t!77793) tb!50649))

(declare-fun tp!181134 () Bool)

(declare-fun b!579115 () Bool)

(declare-fun e!349951 () Bool)

(assert (=> b!579115 (= e!349951 (and (inv!7160 (c!108330 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) lt!245135)))) tp!181134))))

(declare-fun result!56694 () Bool)

(assert (=> tb!50649 (= result!56694 (and (inv!7161 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) (dynLambda!3303 (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114))))) lt!245135))) e!349951))))

(assert (= tb!50649 b!579115))

(declare-fun m!837643 () Bool)

(assert (=> b!579115 m!837643))

(declare-fun m!837645 () Bool)

(assert (=> tb!50649 m!837645))

(assert (=> d!203585 t!77793))

(declare-fun b_and!56871 () Bool)

(assert (= b_and!56859 (and (=> t!77793 result!56694) b_and!56871)))

(declare-fun t!77795 () Bool)

(declare-fun tb!50651 () Bool)

(assert (=> (and b!578589 (= (toChars!1825 (transformation!1103 (rule!1855 token!491))) (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))) t!77795) tb!50651))

(declare-fun result!56696 () Bool)

(assert (= result!56696 result!56694))

(assert (=> d!203585 t!77795))

(declare-fun b_and!56873 () Bool)

(assert (= b_and!56861 (and (=> t!77795 result!56696) b_and!56873)))

(declare-fun b_lambda!22719 () Bool)

(assert (=> (not b_lambda!22719) (not d!203585)))

(assert (=> d!203585 t!77747))

(declare-fun b_and!56875 () Bool)

(assert (= b_and!56867 (and (=> t!77747 result!56640) b_and!56875)))

(assert (=> d!203585 t!77749))

(declare-fun b_and!56877 () Bool)

(assert (= b_and!56869 (and (=> t!77749 result!56644) b_and!56877)))

(assert (=> d!203585 m!837323))

(declare-fun m!837647 () Bool)

(assert (=> d!203585 m!837647))

(assert (=> d!203585 m!837323))

(declare-fun m!837649 () Bool)

(assert (=> d!203585 m!837649))

(declare-fun m!837651 () Bool)

(assert (=> d!203585 m!837651))

(assert (=> d!203585 m!837647))

(declare-fun m!837653 () Bool)

(assert (=> d!203585 m!837653))

(assert (=> b!578578 d!203585))

(declare-fun d!203587 () Bool)

(assert (=> d!203587 (= (seqFromList!1291 lt!245118) (fromListB!563 lt!245118))))

(declare-fun bs!69614 () Bool)

(assert (= bs!69614 d!203587))

(declare-fun m!837655 () Bool)

(assert (=> bs!69614 m!837655))

(assert (=> b!578578 d!203587))

(declare-fun d!203589 () Bool)

(assert (=> d!203589 (= (list!2363 (charsOf!732 token!491)) (list!2365 (c!108330 (charsOf!732 token!491))))))

(declare-fun bs!69615 () Bool)

(assert (= bs!69615 d!203589))

(declare-fun m!837657 () Bool)

(assert (=> bs!69615 m!837657))

(assert (=> b!578600 d!203589))

(declare-fun d!203591 () Bool)

(declare-fun lt!245342 () BalanceConc!3648)

(assert (=> d!203591 (= (list!2363 lt!245342) (originalCharacters!1142 token!491))))

(assert (=> d!203591 (= lt!245342 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 token!491))) (value!36302 token!491)))))

(assert (=> d!203591 (= (charsOf!732 token!491) lt!245342)))

(declare-fun b_lambda!22721 () Bool)

(assert (=> (not b_lambda!22721) (not d!203591)))

(declare-fun t!77797 () Bool)

(declare-fun tb!50653 () Bool)

(assert (=> (and b!578575 (= (toChars!1825 (transformation!1103 (h!11085 rules!3103))) (toChars!1825 (transformation!1103 (rule!1855 token!491)))) t!77797) tb!50653))

(declare-fun b!579116 () Bool)

(declare-fun e!349952 () Bool)

(declare-fun tp!181135 () Bool)

(assert (=> b!579116 (= e!349952 (and (inv!7160 (c!108330 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 token!491))) (value!36302 token!491)))) tp!181135))))

(declare-fun result!56698 () Bool)

(assert (=> tb!50653 (= result!56698 (and (inv!7161 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 token!491))) (value!36302 token!491))) e!349952))))

(assert (= tb!50653 b!579116))

(declare-fun m!837659 () Bool)

(assert (=> b!579116 m!837659))

(declare-fun m!837661 () Bool)

(assert (=> tb!50653 m!837661))

(assert (=> d!203591 t!77797))

(declare-fun b_and!56879 () Bool)

(assert (= b_and!56871 (and (=> t!77797 result!56698) b_and!56879)))

(declare-fun t!77799 () Bool)

(declare-fun tb!50655 () Bool)

(assert (=> (and b!578589 (= (toChars!1825 (transformation!1103 (rule!1855 token!491))) (toChars!1825 (transformation!1103 (rule!1855 token!491)))) t!77799) tb!50655))

(declare-fun result!56700 () Bool)

(assert (= result!56700 result!56698))

(assert (=> d!203591 t!77799))

(declare-fun b_and!56881 () Bool)

(assert (= b_and!56873 (and (=> t!77799 result!56700) b_and!56881)))

(declare-fun m!837663 () Bool)

(assert (=> d!203591 m!837663))

(declare-fun m!837665 () Bool)

(assert (=> d!203591 m!837665))

(assert (=> b!578600 d!203591))

(declare-fun b!579127 () Bool)

(declare-fun e!349960 () Bool)

(declare-fun inv!15 (TokenValue!1127) Bool)

(assert (=> b!579127 (= e!349960 (inv!15 (value!36302 token!491)))))

(declare-fun b!579128 () Bool)

(declare-fun e!349961 () Bool)

(declare-fun e!349959 () Bool)

(assert (=> b!579128 (= e!349961 e!349959)))

(declare-fun c!108415 () Bool)

(assert (=> b!579128 (= c!108415 ((_ is IntegerValue!3382) (value!36302 token!491)))))

(declare-fun d!203593 () Bool)

(declare-fun c!108416 () Bool)

(assert (=> d!203593 (= c!108416 ((_ is IntegerValue!3381) (value!36302 token!491)))))

(assert (=> d!203593 (= (inv!21 (value!36302 token!491)) e!349961)))

(declare-fun b!579129 () Bool)

(declare-fun res!249202 () Bool)

(assert (=> b!579129 (=> res!249202 e!349960)))

(assert (=> b!579129 (= res!249202 (not ((_ is IntegerValue!3383) (value!36302 token!491))))))

(assert (=> b!579129 (= e!349959 e!349960)))

(declare-fun b!579130 () Bool)

(declare-fun inv!16 (TokenValue!1127) Bool)

(assert (=> b!579130 (= e!349961 (inv!16 (value!36302 token!491)))))

(declare-fun b!579131 () Bool)

(declare-fun inv!17 (TokenValue!1127) Bool)

(assert (=> b!579131 (= e!349959 (inv!17 (value!36302 token!491)))))

(assert (= (and d!203593 c!108416) b!579130))

(assert (= (and d!203593 (not c!108416)) b!579128))

(assert (= (and b!579128 c!108415) b!579131))

(assert (= (and b!579128 (not c!108415)) b!579129))

(assert (= (and b!579129 (not res!249202)) b!579127))

(declare-fun m!837667 () Bool)

(assert (=> b!579127 m!837667))

(declare-fun m!837669 () Bool)

(assert (=> b!579130 m!837669))

(declare-fun m!837671 () Bool)

(assert (=> b!579131 m!837671))

(assert (=> b!578593 d!203593))

(declare-fun d!203595 () Bool)

(declare-fun lt!245343 () Int)

(assert (=> d!203595 (>= lt!245343 0)))

(declare-fun e!349962 () Int)

(assert (=> d!203595 (= lt!245343 e!349962)))

(declare-fun c!108417 () Bool)

(assert (=> d!203595 (= c!108417 ((_ is Nil!5682) (originalCharacters!1142 token!491)))))

(assert (=> d!203595 (= (size!4525 (originalCharacters!1142 token!491)) lt!245343)))

(declare-fun b!579132 () Bool)

(assert (=> b!579132 (= e!349962 0)))

(declare-fun b!579133 () Bool)

(assert (=> b!579133 (= e!349962 (+ 1 (size!4525 (t!77727 (originalCharacters!1142 token!491)))))))

(assert (= (and d!203595 c!108417) b!579132))

(assert (= (and d!203595 (not c!108417)) b!579133))

(declare-fun m!837673 () Bool)

(assert (=> b!579133 m!837673))

(assert (=> b!578591 d!203595))

(declare-fun d!203597 () Bool)

(assert (=> d!203597 (= (get!2169 lt!245114) (v!16316 lt!245114))))

(assert (=> b!578592 d!203597))

(declare-fun b!579136 () Bool)

(declare-fun res!249203 () Bool)

(declare-fun e!349963 () Bool)

(assert (=> b!579136 (=> (not res!249203) (not e!349963))))

(declare-fun lt!245344 () List!5692)

(assert (=> b!579136 (= res!249203 (= (size!4525 lt!245344) (+ (size!4525 lt!245118) (size!4525 suffix!1342))))))

(declare-fun b!579134 () Bool)

(declare-fun e!349964 () List!5692)

(assert (=> b!579134 (= e!349964 suffix!1342)))

(declare-fun d!203599 () Bool)

(assert (=> d!203599 e!349963))

(declare-fun res!249204 () Bool)

(assert (=> d!203599 (=> (not res!249204) (not e!349963))))

(assert (=> d!203599 (= res!249204 (= (content!1007 lt!245344) ((_ map or) (content!1007 lt!245118) (content!1007 suffix!1342))))))

(assert (=> d!203599 (= lt!245344 e!349964)))

(declare-fun c!108418 () Bool)

(assert (=> d!203599 (= c!108418 ((_ is Nil!5682) lt!245118))))

(assert (=> d!203599 (= (++!1591 lt!245118 suffix!1342) lt!245344)))

(declare-fun b!579137 () Bool)

(assert (=> b!579137 (= e!349963 (or (not (= suffix!1342 Nil!5682)) (= lt!245344 lt!245118)))))

(declare-fun b!579135 () Bool)

(assert (=> b!579135 (= e!349964 (Cons!5682 (h!11083 lt!245118) (++!1591 (t!77727 lt!245118) suffix!1342)))))

(assert (= (and d!203599 c!108418) b!579134))

(assert (= (and d!203599 (not c!108418)) b!579135))

(assert (= (and d!203599 res!249204) b!579136))

(assert (= (and b!579136 res!249203) b!579137))

(declare-fun m!837675 () Bool)

(assert (=> b!579136 m!837675))

(assert (=> b!579136 m!836917))

(declare-fun m!837677 () Bool)

(assert (=> b!579136 m!837677))

(declare-fun m!837679 () Bool)

(assert (=> d!203599 m!837679))

(declare-fun m!837681 () Bool)

(assert (=> d!203599 m!837681))

(declare-fun m!837683 () Bool)

(assert (=> d!203599 m!837683))

(declare-fun m!837685 () Bool)

(assert (=> b!579135 m!837685))

(assert (=> b!578574 d!203599))

(declare-fun d!203601 () Bool)

(declare-fun lt!245345 () Bool)

(assert (=> d!203601 (= lt!245345 (select (content!1006 rules!3103) (rule!1855 (_1!3596 (v!16316 lt!245114)))))))

(declare-fun e!349966 () Bool)

(assert (=> d!203601 (= lt!245345 e!349966)))

(declare-fun res!249205 () Bool)

(assert (=> d!203601 (=> (not res!249205) (not e!349966))))

(assert (=> d!203601 (= res!249205 ((_ is Cons!5684) rules!3103))))

(assert (=> d!203601 (= (contains!1335 rules!3103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) lt!245345)))

(declare-fun b!579138 () Bool)

(declare-fun e!349965 () Bool)

(assert (=> b!579138 (= e!349966 e!349965)))

(declare-fun res!249206 () Bool)

(assert (=> b!579138 (=> res!249206 e!349965)))

(assert (=> b!579138 (= res!249206 (= (h!11085 rules!3103) (rule!1855 (_1!3596 (v!16316 lt!245114)))))))

(declare-fun b!579139 () Bool)

(assert (=> b!579139 (= e!349965 (contains!1335 (t!77729 rules!3103) (rule!1855 (_1!3596 (v!16316 lt!245114)))))))

(assert (= (and d!203601 res!249205) b!579138))

(assert (= (and b!579138 (not res!249206)) b!579139))

(assert (=> d!203601 m!837161))

(declare-fun m!837687 () Bool)

(assert (=> d!203601 m!837687))

(declare-fun m!837689 () Bool)

(assert (=> b!579139 m!837689))

(assert (=> b!578596 d!203601))

(declare-fun d!203603 () Bool)

(assert (=> d!203603 (= (get!2169 lt!245125) (v!16316 lt!245125))))

(assert (=> b!578594 d!203603))

(declare-fun d!203605 () Bool)

(assert (=> d!203605 (= (isEmpty!4103 input!2705) ((_ is Nil!5682) input!2705))))

(assert (=> b!578587 d!203605))

(declare-fun d!203607 () Bool)

(assert (=> d!203607 (= (isDefined!1265 lt!245125) (not (isEmpty!4106 lt!245125)))))

(declare-fun bs!69616 () Bool)

(assert (= bs!69616 d!203607))

(declare-fun m!837691 () Bool)

(assert (=> bs!69616 m!837691))

(assert (=> b!578609 d!203607))

(declare-fun bm!39980 () Bool)

(declare-fun call!39985 () Option!1454)

(assert (=> bm!39980 (= call!39985 (maxPrefixOneRule!388 thiss!22590 (h!11085 rules!3103) lt!245127))))

(declare-fun b!579141 () Bool)

(declare-fun e!349968 () Bool)

(declare-fun e!349969 () Bool)

(assert (=> b!579141 (= e!349968 e!349969)))

(declare-fun res!249210 () Bool)

(assert (=> b!579141 (=> (not res!249210) (not e!349969))))

(declare-fun lt!245346 () Option!1454)

(assert (=> b!579141 (= res!249210 (isDefined!1265 lt!245346))))

(declare-fun b!579142 () Bool)

(declare-fun res!249209 () Bool)

(assert (=> b!579142 (=> (not res!249209) (not e!349969))))

(assert (=> b!579142 (= res!249209 (= (list!2363 (charsOf!732 (_1!3596 (get!2169 lt!245346)))) (originalCharacters!1142 (_1!3596 (get!2169 lt!245346)))))))

(declare-fun b!579143 () Bool)

(declare-fun res!249207 () Bool)

(assert (=> b!579143 (=> (not res!249207) (not e!349969))))

(assert (=> b!579143 (= res!249207 (= (++!1591 (list!2363 (charsOf!732 (_1!3596 (get!2169 lt!245346)))) (_2!3596 (get!2169 lt!245346))) lt!245127))))

(declare-fun b!579144 () Bool)

(declare-fun res!249211 () Bool)

(assert (=> b!579144 (=> (not res!249211) (not e!349969))))

(assert (=> b!579144 (= res!249211 (< (size!4525 (_2!3596 (get!2169 lt!245346))) (size!4525 lt!245127)))))

(declare-fun b!579145 () Bool)

(assert (=> b!579145 (= e!349969 (contains!1335 rules!3103 (rule!1855 (_1!3596 (get!2169 lt!245346)))))))

(declare-fun b!579146 () Bool)

(declare-fun e!349967 () Option!1454)

(assert (=> b!579146 (= e!349967 call!39985)))

(declare-fun b!579140 () Bool)

(declare-fun res!249212 () Bool)

(assert (=> b!579140 (=> (not res!249212) (not e!349969))))

(assert (=> b!579140 (= res!249212 (= (value!36302 (_1!3596 (get!2169 lt!245346))) (apply!1368 (transformation!1103 (rule!1855 (_1!3596 (get!2169 lt!245346)))) (seqFromList!1291 (originalCharacters!1142 (_1!3596 (get!2169 lt!245346)))))))))

(declare-fun d!203609 () Bool)

(assert (=> d!203609 e!349968))

(declare-fun res!249213 () Bool)

(assert (=> d!203609 (=> res!249213 e!349968)))

(assert (=> d!203609 (= res!249213 (isEmpty!4106 lt!245346))))

(assert (=> d!203609 (= lt!245346 e!349967)))

(declare-fun c!108419 () Bool)

(assert (=> d!203609 (= c!108419 (and ((_ is Cons!5684) rules!3103) ((_ is Nil!5684) (t!77729 rules!3103))))))

(declare-fun lt!245349 () Unit!10285)

(declare-fun lt!245347 () Unit!10285)

(assert (=> d!203609 (= lt!245349 lt!245347)))

(assert (=> d!203609 (isPrefix!737 lt!245127 lt!245127)))

(assert (=> d!203609 (= lt!245347 (lemmaIsPrefixRefl!475 lt!245127 lt!245127))))

(assert (=> d!203609 (rulesValidInductive!396 thiss!22590 rules!3103)))

(assert (=> d!203609 (= (maxPrefix!687 thiss!22590 rules!3103 lt!245127) lt!245346)))

(declare-fun b!579147 () Bool)

(declare-fun lt!245348 () Option!1454)

(declare-fun lt!245350 () Option!1454)

(assert (=> b!579147 (= e!349967 (ite (and ((_ is None!1453) lt!245348) ((_ is None!1453) lt!245350)) None!1453 (ite ((_ is None!1453) lt!245350) lt!245348 (ite ((_ is None!1453) lt!245348) lt!245350 (ite (>= (size!4524 (_1!3596 (v!16316 lt!245348))) (size!4524 (_1!3596 (v!16316 lt!245350)))) lt!245348 lt!245350)))))))

(assert (=> b!579147 (= lt!245348 call!39985)))

(assert (=> b!579147 (= lt!245350 (maxPrefix!687 thiss!22590 (t!77729 rules!3103) lt!245127))))

(declare-fun b!579148 () Bool)

(declare-fun res!249208 () Bool)

(assert (=> b!579148 (=> (not res!249208) (not e!349969))))

(assert (=> b!579148 (= res!249208 (matchR!584 (regex!1103 (rule!1855 (_1!3596 (get!2169 lt!245346)))) (list!2363 (charsOf!732 (_1!3596 (get!2169 lt!245346))))))))

(assert (= (and d!203609 c!108419) b!579146))

(assert (= (and d!203609 (not c!108419)) b!579147))

(assert (= (or b!579146 b!579147) bm!39980))

(assert (= (and d!203609 (not res!249213)) b!579141))

(assert (= (and b!579141 res!249210) b!579142))

(assert (= (and b!579142 res!249209) b!579144))

(assert (= (and b!579144 res!249211) b!579143))

(assert (= (and b!579143 res!249207) b!579140))

(assert (= (and b!579140 res!249212) b!579148))

(assert (= (and b!579148 res!249208) b!579145))

(declare-fun m!837693 () Bool)

(assert (=> b!579147 m!837693))

(declare-fun m!837695 () Bool)

(assert (=> b!579140 m!837695))

(declare-fun m!837697 () Bool)

(assert (=> b!579140 m!837697))

(assert (=> b!579140 m!837697))

(declare-fun m!837699 () Bool)

(assert (=> b!579140 m!837699))

(assert (=> b!579145 m!837695))

(declare-fun m!837701 () Bool)

(assert (=> b!579145 m!837701))

(declare-fun m!837703 () Bool)

(assert (=> bm!39980 m!837703))

(assert (=> b!579148 m!837695))

(declare-fun m!837705 () Bool)

(assert (=> b!579148 m!837705))

(assert (=> b!579148 m!837705))

(declare-fun m!837707 () Bool)

(assert (=> b!579148 m!837707))

(assert (=> b!579148 m!837707))

(declare-fun m!837709 () Bool)

(assert (=> b!579148 m!837709))

(declare-fun m!837711 () Bool)

(assert (=> d!203609 m!837711))

(declare-fun m!837713 () Bool)

(assert (=> d!203609 m!837713))

(declare-fun m!837715 () Bool)

(assert (=> d!203609 m!837715))

(assert (=> d!203609 m!837055))

(assert (=> b!579143 m!837695))

(assert (=> b!579143 m!837705))

(assert (=> b!579143 m!837705))

(assert (=> b!579143 m!837707))

(assert (=> b!579143 m!837707))

(declare-fun m!837717 () Bool)

(assert (=> b!579143 m!837717))

(assert (=> b!579144 m!837695))

(declare-fun m!837719 () Bool)

(assert (=> b!579144 m!837719))

(assert (=> b!579144 m!837313))

(assert (=> b!579142 m!837695))

(assert (=> b!579142 m!837705))

(assert (=> b!579142 m!837705))

(assert (=> b!579142 m!837707))

(declare-fun m!837721 () Bool)

(assert (=> b!579141 m!837721))

(assert (=> b!578609 d!203609))

(declare-fun b!579151 () Bool)

(declare-fun res!249214 () Bool)

(declare-fun e!349970 () Bool)

(assert (=> b!579151 (=> (not res!249214) (not e!349970))))

(declare-fun lt!245351 () List!5692)

(assert (=> b!579151 (= res!249214 (= (size!4525 lt!245351) (+ (size!4525 input!2705) (size!4525 suffix!1342))))))

(declare-fun b!579149 () Bool)

(declare-fun e!349971 () List!5692)

(assert (=> b!579149 (= e!349971 suffix!1342)))

(declare-fun d!203611 () Bool)

(assert (=> d!203611 e!349970))

(declare-fun res!249215 () Bool)

(assert (=> d!203611 (=> (not res!249215) (not e!349970))))

(assert (=> d!203611 (= res!249215 (= (content!1007 lt!245351) ((_ map or) (content!1007 input!2705) (content!1007 suffix!1342))))))

(assert (=> d!203611 (= lt!245351 e!349971)))

(declare-fun c!108420 () Bool)

(assert (=> d!203611 (= c!108420 ((_ is Nil!5682) input!2705))))

(assert (=> d!203611 (= (++!1591 input!2705 suffix!1342) lt!245351)))

(declare-fun b!579152 () Bool)

(assert (=> b!579152 (= e!349970 (or (not (= suffix!1342 Nil!5682)) (= lt!245351 input!2705)))))

(declare-fun b!579150 () Bool)

(assert (=> b!579150 (= e!349971 (Cons!5682 (h!11083 input!2705) (++!1591 (t!77727 input!2705) suffix!1342)))))

(assert (= (and d!203611 c!108420) b!579149))

(assert (= (and d!203611 (not c!108420)) b!579150))

(assert (= (and d!203611 res!249215) b!579151))

(assert (= (and b!579151 res!249214) b!579152))

(declare-fun m!837723 () Bool)

(assert (=> b!579151 m!837723))

(assert (=> b!579151 m!836957))

(assert (=> b!579151 m!837677))

(declare-fun m!837725 () Bool)

(assert (=> d!203611 m!837725))

(declare-fun m!837727 () Bool)

(assert (=> d!203611 m!837727))

(assert (=> d!203611 m!837683))

(declare-fun m!837729 () Bool)

(assert (=> b!579150 m!837729))

(assert (=> b!578609 d!203611))

(declare-fun b!579162 () Bool)

(declare-fun e!349977 () Int)

(declare-fun e!349978 () Int)

(assert (=> b!579162 (= e!349977 e!349978)))

(declare-fun c!108425 () Bool)

(assert (=> b!579162 (= c!108425 (and ((_ is Cons!5684) rules!3103) (not (= (h!11085 rules!3103) (rule!1855 (_1!3596 (v!16316 lt!245114)))))))))

(declare-fun d!203613 () Bool)

(declare-fun lt!245354 () Int)

(assert (=> d!203613 (>= lt!245354 0)))

(assert (=> d!203613 (= lt!245354 e!349977)))

(declare-fun c!108426 () Bool)

(assert (=> d!203613 (= c!108426 (and ((_ is Cons!5684) rules!3103) (= (h!11085 rules!3103) (rule!1855 (_1!3596 (v!16316 lt!245114))))))))

(assert (=> d!203613 (contains!1335 rules!3103 (rule!1855 (_1!3596 (v!16316 lt!245114))))))

(assert (=> d!203613 (= (getIndex!42 rules!3103 (rule!1855 (_1!3596 (v!16316 lt!245114)))) lt!245354)))

(declare-fun b!579163 () Bool)

(assert (=> b!579163 (= e!349978 (+ 1 (getIndex!42 (t!77729 rules!3103) (rule!1855 (_1!3596 (v!16316 lt!245114))))))))

(declare-fun b!579161 () Bool)

(assert (=> b!579161 (= e!349977 0)))

(declare-fun b!579164 () Bool)

(assert (=> b!579164 (= e!349978 (- 1))))

(assert (= (and d!203613 c!108426) b!579161))

(assert (= (and d!203613 (not c!108426)) b!579162))

(assert (= (and b!579162 c!108425) b!579163))

(assert (= (and b!579162 (not c!108425)) b!579164))

(assert (=> d!203613 m!836827))

(declare-fun m!837731 () Bool)

(assert (=> b!579163 m!837731))

(assert (=> b!578588 d!203613))

(declare-fun b!579166 () Bool)

(declare-fun e!349979 () Int)

(declare-fun e!349980 () Int)

(assert (=> b!579166 (= e!349979 e!349980)))

(declare-fun c!108427 () Bool)

(assert (=> b!579166 (= c!108427 (and ((_ is Cons!5684) rules!3103) (not (= (h!11085 rules!3103) (rule!1855 token!491)))))))

(declare-fun d!203615 () Bool)

(declare-fun lt!245355 () Int)

(assert (=> d!203615 (>= lt!245355 0)))

(assert (=> d!203615 (= lt!245355 e!349979)))

(declare-fun c!108428 () Bool)

(assert (=> d!203615 (= c!108428 (and ((_ is Cons!5684) rules!3103) (= (h!11085 rules!3103) (rule!1855 token!491))))))

(assert (=> d!203615 (contains!1335 rules!3103 (rule!1855 token!491))))

(assert (=> d!203615 (= (getIndex!42 rules!3103 (rule!1855 token!491)) lt!245355)))

(declare-fun b!579167 () Bool)

(assert (=> b!579167 (= e!349980 (+ 1 (getIndex!42 (t!77729 rules!3103) (rule!1855 token!491))))))

(declare-fun b!579165 () Bool)

(assert (=> b!579165 (= e!349979 0)))

(declare-fun b!579168 () Bool)

(assert (=> b!579168 (= e!349980 (- 1))))

(assert (= (and d!203615 c!108428) b!579165))

(assert (= (and d!203615 (not c!108428)) b!579166))

(assert (= (and b!579166 c!108427) b!579167))

(assert (= (and b!579166 (not c!108427)) b!579168))

(assert (=> d!203615 m!836871))

(declare-fun m!837733 () Bool)

(assert (=> b!579167 m!837733))

(assert (=> b!578588 d!203615))

(assert (=> b!578607 d!203585))

(declare-fun d!203617 () Bool)

(assert (=> d!203617 (not (matchR!584 (regex!1103 (rule!1855 token!491)) input!2705))))

(declare-fun lt!245358 () Unit!10285)

(declare-fun choose!4156 (LexerInterface!989 List!5694 Rule!2006 List!5692 List!5692 List!5692 Rule!2006) Unit!10285)

(assert (=> d!203617 (= lt!245358 (choose!4156 thiss!22590 rules!3103 (rule!1855 (_1!3596 (v!16316 lt!245114))) lt!245130 input!2705 input!2705 (rule!1855 token!491)))))

(assert (=> d!203617 (isPrefix!737 lt!245130 input!2705)))

(assert (=> d!203617 (= (lemmaMaxPrefixOutputsMaxPrefix!62 thiss!22590 rules!3103 (rule!1855 (_1!3596 (v!16316 lt!245114))) lt!245130 input!2705 input!2705 (rule!1855 token!491)) lt!245358)))

(declare-fun bs!69617 () Bool)

(assert (= bs!69617 d!203617))

(assert (=> bs!69617 m!836929))

(declare-fun m!837735 () Bool)

(assert (=> bs!69617 m!837735))

(assert (=> bs!69617 m!837307))

(assert (=> b!578607 d!203617))

(assert (=> b!578607 d!203379))

(declare-fun d!203619 () Bool)

(assert (=> d!203619 (= (inv!7153 (tag!1365 (h!11085 rules!3103))) (= (mod (str.len (value!36301 (tag!1365 (h!11085 rules!3103)))) 2) 0))))

(assert (=> b!578608 d!203619))

(declare-fun d!203621 () Bool)

(declare-fun res!249218 () Bool)

(declare-fun e!349983 () Bool)

(assert (=> d!203621 (=> (not res!249218) (not e!349983))))

(assert (=> d!203621 (= res!249218 (semiInverseModEq!427 (toChars!1825 (transformation!1103 (h!11085 rules!3103))) (toValue!1966 (transformation!1103 (h!11085 rules!3103)))))))

(assert (=> d!203621 (= (inv!7157 (transformation!1103 (h!11085 rules!3103))) e!349983)))

(declare-fun b!579171 () Bool)

(assert (=> b!579171 (= e!349983 (equivClasses!410 (toChars!1825 (transformation!1103 (h!11085 rules!3103))) (toValue!1966 (transformation!1103 (h!11085 rules!3103)))))))

(assert (= (and d!203621 res!249218) b!579171))

(declare-fun m!837737 () Bool)

(assert (=> d!203621 m!837737))

(declare-fun m!837739 () Bool)

(assert (=> b!579171 m!837739))

(assert (=> b!578608 d!203621))

(declare-fun d!203623 () Bool)

(declare-fun res!249223 () Bool)

(declare-fun e!349986 () Bool)

(assert (=> d!203623 (=> (not res!249223) (not e!349986))))

(assert (=> d!203623 (= res!249223 (not (isEmpty!4103 (originalCharacters!1142 token!491))))))

(assert (=> d!203623 (= (inv!7156 token!491) e!349986)))

(declare-fun b!579176 () Bool)

(declare-fun res!249224 () Bool)

(assert (=> b!579176 (=> (not res!249224) (not e!349986))))

(assert (=> b!579176 (= res!249224 (= (originalCharacters!1142 token!491) (list!2363 (dynLambda!3301 (toChars!1825 (transformation!1103 (rule!1855 token!491))) (value!36302 token!491)))))))

(declare-fun b!579177 () Bool)

(assert (=> b!579177 (= e!349986 (= (size!4524 token!491) (size!4525 (originalCharacters!1142 token!491))))))

(assert (= (and d!203623 res!249223) b!579176))

(assert (= (and b!579176 res!249224) b!579177))

(declare-fun b_lambda!22723 () Bool)

(assert (=> (not b_lambda!22723) (not b!579176)))

(assert (=> b!579176 t!77797))

(declare-fun b_and!56883 () Bool)

(assert (= b_and!56879 (and (=> t!77797 result!56698) b_and!56883)))

(assert (=> b!579176 t!77799))

(declare-fun b_and!56885 () Bool)

(assert (= b_and!56881 (and (=> t!77799 result!56700) b_and!56885)))

(declare-fun m!837741 () Bool)

(assert (=> d!203623 m!837741))

(assert (=> b!579176 m!837665))

(assert (=> b!579176 m!837665))

(declare-fun m!837743 () Bool)

(assert (=> b!579176 m!837743))

(assert (=> b!579177 m!836823))

(assert (=> start!53500 d!203623))

(declare-fun d!203625 () Bool)

(declare-fun res!249227 () Bool)

(declare-fun e!349989 () Bool)

(assert (=> d!203625 (=> (not res!249227) (not e!349989))))

(declare-fun rulesValid!391 (LexerInterface!989 List!5694) Bool)

(assert (=> d!203625 (= res!249227 (rulesValid!391 thiss!22590 rules!3103))))

(assert (=> d!203625 (= (rulesInvariant!952 thiss!22590 rules!3103) e!349989)))

(declare-fun b!579180 () Bool)

(declare-datatypes ((List!5696 0))(
  ( (Nil!5686) (Cons!5686 (h!11087 String!7379) (t!77815 List!5696)) )
))
(declare-fun noDuplicateTag!391 (LexerInterface!989 List!5694 List!5696) Bool)

(assert (=> b!579180 (= e!349989 (noDuplicateTag!391 thiss!22590 rules!3103 Nil!5686))))

(assert (= (and d!203625 res!249227) b!579180))

(declare-fun m!837745 () Bool)

(assert (=> d!203625 m!837745))

(declare-fun m!837747 () Bool)

(assert (=> b!579180 m!837747))

(assert (=> b!578590 d!203625))

(declare-fun d!203627 () Bool)

(assert (=> d!203627 (= (inv!7153 (tag!1365 (rule!1855 token!491))) (= (mod (str.len (value!36301 (tag!1365 (rule!1855 token!491)))) 2) 0))))

(assert (=> b!578612 d!203627))

(declare-fun d!203629 () Bool)

(declare-fun res!249228 () Bool)

(declare-fun e!349990 () Bool)

(assert (=> d!203629 (=> (not res!249228) (not e!349990))))

(assert (=> d!203629 (= res!249228 (semiInverseModEq!427 (toChars!1825 (transformation!1103 (rule!1855 token!491))) (toValue!1966 (transformation!1103 (rule!1855 token!491)))))))

(assert (=> d!203629 (= (inv!7157 (transformation!1103 (rule!1855 token!491))) e!349990)))

(declare-fun b!579181 () Bool)

(assert (=> b!579181 (= e!349990 (equivClasses!410 (toChars!1825 (transformation!1103 (rule!1855 token!491))) (toValue!1966 (transformation!1103 (rule!1855 token!491)))))))

(assert (= (and d!203629 res!249228) b!579181))

(assert (=> d!203629 m!837337))

(assert (=> b!579181 m!837339))

(assert (=> b!578612 d!203629))

(declare-fun b!579192 () Bool)

(declare-fun b_free!16105 () Bool)

(declare-fun b_next!16121 () Bool)

(assert (=> b!579192 (= b_free!16105 (not b_next!16121))))

(declare-fun tb!50657 () Bool)

(declare-fun t!77801 () Bool)

(assert (=> (and b!579192 (= (toValue!1966 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toValue!1966 (transformation!1103 (rule!1855 token!491)))) t!77801) tb!50657))

(declare-fun result!56704 () Bool)

(assert (= result!56704 result!56690))

(assert (=> d!203583 t!77801))

(declare-fun t!77803 () Bool)

(declare-fun tb!50659 () Bool)

(assert (=> (and b!579192 (= (toValue!1966 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toValue!1966 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))) t!77803) tb!50659))

(declare-fun result!56706 () Bool)

(assert (= result!56706 result!56640))

(assert (=> d!203479 t!77803))

(assert (=> d!203585 t!77803))

(declare-fun tb!50661 () Bool)

(declare-fun t!77805 () Bool)

(assert (=> (and b!579192 (= (toValue!1966 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toValue!1966 (transformation!1103 (rule!1855 token!491)))) t!77805) tb!50661))

(declare-fun result!56708 () Bool)

(assert (= result!56708 result!56646))

(assert (=> d!203507 t!77805))

(assert (=> d!203533 t!77801))

(declare-fun tp!181145 () Bool)

(declare-fun b_and!56887 () Bool)

(assert (=> b!579192 (= tp!181145 (and (=> t!77803 result!56706) (=> t!77801 result!56704) (=> t!77805 result!56708) b_and!56887))))

(declare-fun b_free!16107 () Bool)

(declare-fun b_next!16123 () Bool)

(assert (=> b!579192 (= b_free!16107 (not b_next!16123))))

(declare-fun t!77807 () Bool)

(declare-fun tb!50663 () Bool)

(assert (=> (and b!579192 (= (toChars!1825 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toChars!1825 (transformation!1103 (rule!1855 token!491)))) t!77807) tb!50663))

(declare-fun result!56710 () Bool)

(assert (= result!56710 result!56698))

(assert (=> b!579176 t!77807))

(declare-fun tb!50665 () Bool)

(declare-fun t!77809 () Bool)

(assert (=> (and b!579192 (= (toChars!1825 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toChars!1825 (transformation!1103 (rule!1855 token!491)))) t!77809) tb!50665))

(declare-fun result!56712 () Bool)

(assert (= result!56712 result!56686))

(assert (=> d!203533 t!77809))

(declare-fun tb!50667 () Bool)

(declare-fun t!77811 () Bool)

(assert (=> (and b!579192 (= (toChars!1825 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))) t!77811) tb!50667))

(declare-fun result!56714 () Bool)

(assert (= result!56714 result!56694))

(assert (=> d!203585 t!77811))

(declare-fun tb!50669 () Bool)

(declare-fun t!77813 () Bool)

(assert (=> (and b!579192 (= (toChars!1825 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toChars!1825 (transformation!1103 (rule!1855 (_1!3596 (v!16316 lt!245114)))))) t!77813) tb!50669))

(declare-fun result!56716 () Bool)

(assert (= result!56716 result!56634))

(assert (=> d!203433 t!77813))

(assert (=> d!203591 t!77807))

(declare-fun tp!181144 () Bool)

(declare-fun b_and!56889 () Bool)

(assert (=> b!579192 (= tp!181144 (and (=> t!77811 result!56714) (=> t!77809 result!56712) (=> t!77813 result!56716) (=> t!77807 result!56710) b_and!56889))))

(declare-fun e!350002 () Bool)

(assert (=> b!579192 (= e!350002 (and tp!181145 tp!181144))))

(declare-fun b!579191 () Bool)

(declare-fun e!349999 () Bool)

(declare-fun tp!181146 () Bool)

(assert (=> b!579191 (= e!349999 (and tp!181146 (inv!7153 (tag!1365 (h!11085 (t!77729 rules!3103)))) (inv!7157 (transformation!1103 (h!11085 (t!77729 rules!3103)))) e!350002))))

(declare-fun b!579190 () Bool)

(declare-fun e!350001 () Bool)

(declare-fun tp!181147 () Bool)

(assert (=> b!579190 (= e!350001 (and e!349999 tp!181147))))

(assert (=> b!578603 (= tp!181083 e!350001)))

(assert (= b!579191 b!579192))

(assert (= b!579190 b!579191))

(assert (= (and b!578603 ((_ is Cons!5684) (t!77729 rules!3103))) b!579190))

(declare-fun m!837749 () Bool)

(assert (=> b!579191 m!837749))

(declare-fun m!837751 () Bool)

(assert (=> b!579191 m!837751))

(declare-fun b!579197 () Bool)

(declare-fun e!350005 () Bool)

(declare-fun tp!181150 () Bool)

(assert (=> b!579197 (= e!350005 (and tp_is_empty!3229 tp!181150))))

(assert (=> b!578593 (= tp!181084 e!350005)))

(assert (= (and b!578593 ((_ is Cons!5682) (originalCharacters!1142 token!491))) b!579197))

(declare-fun b!579198 () Bool)

(declare-fun e!350006 () Bool)

(declare-fun tp!181151 () Bool)

(assert (=> b!579198 (= e!350006 (and tp_is_empty!3229 tp!181151))))

(assert (=> b!578586 (= tp!181081 e!350006)))

(assert (= (and b!578586 ((_ is Cons!5682) (t!77727 suffix!1342))) b!579198))

(declare-fun b!579210 () Bool)

(declare-fun e!350009 () Bool)

(declare-fun tp!181166 () Bool)

(declare-fun tp!181163 () Bool)

(assert (=> b!579210 (= e!350009 (and tp!181166 tp!181163))))

(declare-fun b!579211 () Bool)

(declare-fun tp!181162 () Bool)

(assert (=> b!579211 (= e!350009 tp!181162)))

(declare-fun b!579212 () Bool)

(declare-fun tp!181164 () Bool)

(declare-fun tp!181165 () Bool)

(assert (=> b!579212 (= e!350009 (and tp!181164 tp!181165))))

(assert (=> b!578608 (= tp!181079 e!350009)))

(declare-fun b!579209 () Bool)

(assert (=> b!579209 (= e!350009 tp_is_empty!3229)))

(assert (= (and b!578608 ((_ is ElementMatch!1437) (regex!1103 (h!11085 rules!3103)))) b!579209))

(assert (= (and b!578608 ((_ is Concat!2564) (regex!1103 (h!11085 rules!3103)))) b!579210))

(assert (= (and b!578608 ((_ is Star!1437) (regex!1103 (h!11085 rules!3103)))) b!579211))

(assert (= (and b!578608 ((_ is Union!1437) (regex!1103 (h!11085 rules!3103)))) b!579212))

(declare-fun b!579214 () Bool)

(declare-fun e!350010 () Bool)

(declare-fun tp!181171 () Bool)

(declare-fun tp!181168 () Bool)

(assert (=> b!579214 (= e!350010 (and tp!181171 tp!181168))))

(declare-fun b!579215 () Bool)

(declare-fun tp!181167 () Bool)

(assert (=> b!579215 (= e!350010 tp!181167)))

(declare-fun b!579216 () Bool)

(declare-fun tp!181169 () Bool)

(declare-fun tp!181170 () Bool)

(assert (=> b!579216 (= e!350010 (and tp!181169 tp!181170))))

(assert (=> b!578612 (= tp!181085 e!350010)))

(declare-fun b!579213 () Bool)

(assert (=> b!579213 (= e!350010 tp_is_empty!3229)))

(assert (= (and b!578612 ((_ is ElementMatch!1437) (regex!1103 (rule!1855 token!491)))) b!579213))

(assert (= (and b!578612 ((_ is Concat!2564) (regex!1103 (rule!1855 token!491)))) b!579214))

(assert (= (and b!578612 ((_ is Star!1437) (regex!1103 (rule!1855 token!491)))) b!579215))

(assert (= (and b!578612 ((_ is Union!1437) (regex!1103 (rule!1855 token!491)))) b!579216))

(declare-fun b!579217 () Bool)

(declare-fun e!350011 () Bool)

(declare-fun tp!181172 () Bool)

(assert (=> b!579217 (= e!350011 (and tp_is_empty!3229 tp!181172))))

(assert (=> b!578599 (= tp!181082 e!350011)))

(assert (= (and b!578599 ((_ is Cons!5682) (t!77727 input!2705))) b!579217))

(declare-fun b_lambda!22725 () Bool)

(assert (= b_lambda!22723 (or (and b!578575 b_free!16095 (= (toChars!1825 (transformation!1103 (h!11085 rules!3103))) (toChars!1825 (transformation!1103 (rule!1855 token!491))))) (and b!578589 b_free!16099) (and b!579192 b_free!16107 (= (toChars!1825 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toChars!1825 (transformation!1103 (rule!1855 token!491))))) b_lambda!22725)))

(declare-fun b_lambda!22727 () Bool)

(assert (= b_lambda!22715 (or (and b!578575 b_free!16093 (= (toValue!1966 (transformation!1103 (h!11085 rules!3103))) (toValue!1966 (transformation!1103 (rule!1855 token!491))))) (and b!578589 b_free!16097) (and b!579192 b_free!16105 (= (toValue!1966 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toValue!1966 (transformation!1103 (rule!1855 token!491))))) b_lambda!22727)))

(declare-fun b_lambda!22729 () Bool)

(assert (= b_lambda!22685 (or (and b!578575 b_free!16093 (= (toValue!1966 (transformation!1103 (h!11085 rules!3103))) (toValue!1966 (transformation!1103 (rule!1855 token!491))))) (and b!578589 b_free!16097) (and b!579192 b_free!16105 (= (toValue!1966 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toValue!1966 (transformation!1103 (rule!1855 token!491))))) b_lambda!22729)))

(declare-fun b_lambda!22731 () Bool)

(assert (= b_lambda!22713 (or (and b!578575 b_free!16093 (= (toValue!1966 (transformation!1103 (h!11085 rules!3103))) (toValue!1966 (transformation!1103 (rule!1855 token!491))))) (and b!578589 b_free!16097) (and b!579192 b_free!16105 (= (toValue!1966 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toValue!1966 (transformation!1103 (rule!1855 token!491))))) b_lambda!22731)))

(declare-fun b_lambda!22733 () Bool)

(assert (= b_lambda!22711 (or (and b!578575 b_free!16095 (= (toChars!1825 (transformation!1103 (h!11085 rules!3103))) (toChars!1825 (transformation!1103 (rule!1855 token!491))))) (and b!578589 b_free!16099) (and b!579192 b_free!16107 (= (toChars!1825 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toChars!1825 (transformation!1103 (rule!1855 token!491))))) b_lambda!22733)))

(declare-fun b_lambda!22735 () Bool)

(assert (= b_lambda!22721 (or (and b!578575 b_free!16095 (= (toChars!1825 (transformation!1103 (h!11085 rules!3103))) (toChars!1825 (transformation!1103 (rule!1855 token!491))))) (and b!578589 b_free!16099) (and b!579192 b_free!16107 (= (toChars!1825 (transformation!1103 (h!11085 (t!77729 rules!3103)))) (toChars!1825 (transformation!1103 (rule!1855 token!491))))) b_lambda!22735)))

(check-sat (not b!578931) (not b!578903) (not b!578927) (not b!579139) (not b_lambda!22683) b_and!56877 (not b!579015) (not b!578687) (not b!578824) (not tb!50607) (not d!203585) (not d!203625) (not b!579108) (not b!579143) (not d!203609) (not b!579133) (not b!579136) (not b!578938) (not d!203471) (not b!578929) (not d!203497) (not b_next!16109) (not b!579148) (not b!579111) (not d!203589) (not b!578945) (not tb!50603) (not b_lambda!22729) (not b!578690) (not d!203621) (not b!579022) (not b!579144) (not b!579105) (not b!578953) (not d!203473) (not b!578948) (not b!579106) b_and!56885 (not b!579212) (not b!579107) (not d!203505) (not b_lambda!22733) (not b_lambda!22725) (not d!203419) (not b!578951) (not b!579214) (not d!203577) (not d!203509) (not b!578865) (not d!203483) (not bm!39973) (not b!579131) (not d!203481) (not b!579104) (not d!203575) (not b!579191) (not b!578905) (not b_lambda!22735) (not d!203355) (not d!203581) (not b!579110) (not d!203613) (not b!579116) (not b!578932) (not b!579163) (not b!578817) (not b!578682) (not d!203623) (not b!579103) (not b!578912) (not b!579151) (not b!578901) (not b!578974) (not d!203489) (not b!579210) (not d!203617) (not b_next!16115) (not b!578827) (not b!579180) (not b!579217) (not d!203629) (not d!203513) (not bm!39980) (not d!203579) (not b!578924) (not b!579211) (not b!579115) (not b!578829) (not d!203515) (not d!203607) (not b!579130) (not d!203599) (not b_lambda!22717) (not b!578826) (not b_next!16121) (not b!578949) (not b!579019) b_and!56887 (not d!203587) (not b!579016) (not b!579014) (not b!579198) b_and!56883 (not b!578867) (not b!578843) (not b!579177) (not d!203393) (not d!203493) (not b!579215) b_and!56889 (not b!579102) (not b!579140) (not b!579142) (not d!203463) (not d!203491) (not b!578683) (not b!578904) (not d!203517) (not b!578689) (not b!579018) (not b_lambda!22727) (not b!579127) (not b!579141) (not d!203615) (not b!578685) (not d!203477) (not b!578943) (not b!578866) (not b!579171) (not tb!50653) (not d!203501) (not b!578723) (not b!578822) (not b!579021) (not d!203601) (not b!578928) (not b!579150) (not b_next!16111) (not d!203433) (not d!203529) (not tb!50645) (not d!203591) (not b_next!16123) (not bm!39979) (not b!578684) (not b!579167) (not b!579135) (not b!578923) (not d!203465) (not b!579190) (not b!579181) b_and!56875 (not b!578944) (not d!203485) (not d!203533) (not b!578910) (not b!579216) (not d!203467) (not d!203379) (not b!578933) (not b!579197) (not d!203427) (not b!579145) (not b!579017) (not b_next!16113) (not b_lambda!22719) (not b!579112) (not b!579147) (not b_lambda!22731) (not tb!50649) (not b!578973) (not b_lambda!22679) (not d!203495) (not d!203611) (not b!578686) (not b!579176) (not tb!50641) tp_is_empty!3229 (not tb!50599))
(check-sat b_and!56877 (not b_next!16109) b_and!56885 (not b_next!16115) (not b_next!16121) b_and!56889 (not b_next!16111) (not b_next!16123) b_and!56875 (not b_next!16113) b_and!56887 b_and!56883)
