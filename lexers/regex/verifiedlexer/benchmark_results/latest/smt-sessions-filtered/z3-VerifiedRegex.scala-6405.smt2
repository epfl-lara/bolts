; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333850 () Bool)

(assert start!333850)

(declare-fun b!3594984 () Bool)

(declare-fun b_free!92865 () Bool)

(declare-fun b_next!93569 () Bool)

(assert (=> b!3594984 (= b_free!92865 (not b_next!93569))))

(declare-fun tp!1100173 () Bool)

(declare-fun b_and!260467 () Bool)

(assert (=> b!3594984 (= tp!1100173 b_and!260467)))

(declare-fun b_free!92867 () Bool)

(declare-fun b_next!93571 () Bool)

(assert (=> b!3594984 (= b_free!92867 (not b_next!93571))))

(declare-fun tp!1100168 () Bool)

(declare-fun b_and!260469 () Bool)

(assert (=> b!3594984 (= tp!1100168 b_and!260469)))

(declare-fun b!3594962 () Bool)

(declare-fun b_free!92869 () Bool)

(declare-fun b_next!93573 () Bool)

(assert (=> b!3594962 (= b_free!92869 (not b_next!93573))))

(declare-fun tp!1100171 () Bool)

(declare-fun b_and!260471 () Bool)

(assert (=> b!3594962 (= tp!1100171 b_and!260471)))

(declare-fun b_free!92871 () Bool)

(declare-fun b_next!93575 () Bool)

(assert (=> b!3594962 (= b_free!92871 (not b_next!93575))))

(declare-fun tp!1100180 () Bool)

(declare-fun b_and!260473 () Bool)

(assert (=> b!3594962 (= tp!1100180 b_and!260473)))

(declare-fun b!3594972 () Bool)

(declare-fun b_free!92873 () Bool)

(declare-fun b_next!93577 () Bool)

(assert (=> b!3594972 (= b_free!92873 (not b_next!93577))))

(declare-fun tp!1100175 () Bool)

(declare-fun b_and!260475 () Bool)

(assert (=> b!3594972 (= tp!1100175 b_and!260475)))

(declare-fun b_free!92875 () Bool)

(declare-fun b_next!93579 () Bool)

(assert (=> b!3594972 (= b_free!92875 (not b_next!93579))))

(declare-fun tp!1100179 () Bool)

(declare-fun b_and!260477 () Bool)

(assert (=> b!3594972 (= tp!1100179 b_and!260477)))

(declare-fun b!3594982 () Bool)

(declare-fun b_free!92877 () Bool)

(declare-fun b_next!93581 () Bool)

(assert (=> b!3594982 (= b_free!92877 (not b_next!93581))))

(declare-fun tp!1100172 () Bool)

(declare-fun b_and!260479 () Bool)

(assert (=> b!3594982 (= tp!1100172 b_and!260479)))

(declare-fun b_free!92879 () Bool)

(declare-fun b_next!93583 () Bool)

(assert (=> b!3594982 (= b_free!92879 (not b_next!93583))))

(declare-fun tp!1100178 () Bool)

(declare-fun b_and!260481 () Bool)

(assert (=> b!3594982 (= tp!1100178 b_and!260481)))

(declare-fun b!3594955 () Bool)

(declare-fun e!2224529 () Bool)

(declare-fun e!2224526 () Bool)

(assert (=> b!3594955 (= e!2224529 e!2224526)))

(declare-fun res!1451979 () Bool)

(assert (=> b!3594955 (=> res!1451979 e!2224526)))

(declare-datatypes ((List!37929 0))(
  ( (Nil!37805) (Cons!37805 (h!43225 (_ BitVec 16)) (t!291540 List!37929)) )
))
(declare-datatypes ((TokenValue!5820 0))(
  ( (FloatLiteralValue!11640 (text!41185 List!37929)) (TokenValueExt!5819 (__x!23857 Int)) (Broken!29100 (value!179749 List!37929)) (Object!5943) (End!5820) (Def!5820) (Underscore!5820) (Match!5820) (Else!5820) (Error!5820) (Case!5820) (If!5820) (Extends!5820) (Abstract!5820) (Class!5820) (Val!5820) (DelimiterValue!11640 (del!5880 List!37929)) (KeywordValue!5826 (value!179750 List!37929)) (CommentValue!11640 (value!179751 List!37929)) (WhitespaceValue!11640 (value!179752 List!37929)) (IndentationValue!5820 (value!179753 List!37929)) (String!42433) (Int32!5820) (Broken!29101 (value!179754 List!37929)) (Boolean!5821) (Unit!53812) (OperatorValue!5823 (op!5880 List!37929)) (IdentifierValue!11640 (value!179755 List!37929)) (IdentifierValue!11641 (value!179756 List!37929)) (WhitespaceValue!11641 (value!179757 List!37929)) (True!11640) (False!11640) (Broken!29102 (value!179758 List!37929)) (Broken!29103 (value!179759 List!37929)) (True!11641) (RightBrace!5820) (RightBracket!5820) (Colon!5820) (Null!5820) (Comma!5820) (LeftBracket!5820) (False!11641) (LeftBrace!5820) (ImaginaryLiteralValue!5820 (text!41186 List!37929)) (StringLiteralValue!17460 (value!179760 List!37929)) (EOFValue!5820 (value!179761 List!37929)) (IdentValue!5820 (value!179762 List!37929)) (DelimiterValue!11641 (value!179763 List!37929)) (DedentValue!5820 (value!179764 List!37929)) (NewLineValue!5820 (value!179765 List!37929)) (IntegerValue!17460 (value!179766 (_ BitVec 32)) (text!41187 List!37929)) (IntegerValue!17461 (value!179767 Int) (text!41188 List!37929)) (Times!5820) (Or!5820) (Equal!5820) (Minus!5820) (Broken!29104 (value!179768 List!37929)) (And!5820) (Div!5820) (LessEqual!5820) (Mod!5820) (Concat!16169) (Not!5820) (Plus!5820) (SpaceValue!5820 (value!179769 List!37929)) (IntegerValue!17462 (value!179770 Int) (text!41189 List!37929)) (StringLiteralValue!17461 (text!41190 List!37929)) (FloatLiteralValue!11641 (text!41191 List!37929)) (BytesLiteralValue!5820 (value!179771 List!37929)) (CommentValue!11641 (value!179772 List!37929)) (StringLiteralValue!17462 (value!179773 List!37929)) (ErrorTokenValue!5820 (msg!5881 List!37929)) )
))
(declare-datatypes ((C!20884 0))(
  ( (C!20885 (val!12490 Int)) )
))
(declare-datatypes ((Regex!10349 0))(
  ( (ElementMatch!10349 (c!622386 C!20884)) (Concat!16170 (regOne!21210 Regex!10349) (regTwo!21210 Regex!10349)) (EmptyExpr!10349) (Star!10349 (reg!10678 Regex!10349)) (EmptyLang!10349) (Union!10349 (regOne!21211 Regex!10349) (regTwo!21211 Regex!10349)) )
))
(declare-datatypes ((String!42434 0))(
  ( (String!42435 (value!179774 String)) )
))
(declare-datatypes ((List!37930 0))(
  ( (Nil!37806) (Cons!37806 (h!43226 C!20884) (t!291541 List!37930)) )
))
(declare-datatypes ((IArray!23015 0))(
  ( (IArray!23016 (innerList!11565 List!37930)) )
))
(declare-datatypes ((Conc!11505 0))(
  ( (Node!11505 (left!29538 Conc!11505) (right!29868 Conc!11505) (csize!23240 Int) (cheight!11716 Int)) (Leaf!17911 (xs!14707 IArray!23015) (csize!23241 Int)) (Empty!11505) )
))
(declare-datatypes ((BalanceConc!22624 0))(
  ( (BalanceConc!22625 (c!622387 Conc!11505)) )
))
(declare-datatypes ((TokenValueInjection!11068 0))(
  ( (TokenValueInjection!11069 (toValue!7874 Int) (toChars!7733 Int)) )
))
(declare-datatypes ((Rule!10980 0))(
  ( (Rule!10981 (regex!5590 Regex!10349) (tag!6270 String!42434) (isSeparator!5590 Bool) (transformation!5590 TokenValueInjection!11068)) )
))
(declare-fun rule!403 () Rule!10980)

(declare-fun lt!1233987 () C!20884)

(declare-fun contains!7243 (List!37930 C!20884) Bool)

(declare-fun usedCharacters!804 (Regex!10349) List!37930)

(assert (=> b!3594955 (= res!1451979 (contains!7243 (usedCharacters!804 (regex!5590 rule!403)) lt!1233987))))

(declare-fun suffix!1395 () List!37930)

(declare-fun head!7522 (List!37930) C!20884)

(assert (=> b!3594955 (= lt!1233987 (head!7522 suffix!1395))))

(declare-fun b!3594956 () Bool)

(declare-fun res!1451985 () Bool)

(declare-fun e!2224527 () Bool)

(assert (=> b!3594956 (=> (not res!1451985) (not e!2224527))))

(declare-datatypes ((List!37931 0))(
  ( (Nil!37807) (Cons!37807 (h!43227 Rule!10980) (t!291542 List!37931)) )
))
(declare-fun rules!3307 () List!37931)

(declare-fun anOtherTypeRule!33 () Rule!10980)

(declare-fun contains!7244 (List!37931 Rule!10980) Bool)

(assert (=> b!3594956 (= res!1451985 (contains!7244 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2224516 () Bool)

(declare-fun e!2224537 () Bool)

(declare-fun b!3594957 () Bool)

(declare-fun tp!1100177 () Bool)

(declare-fun inv!51151 (String!42434) Bool)

(declare-fun inv!51154 (TokenValueInjection!11068) Bool)

(assert (=> b!3594957 (= e!2224537 (and tp!1100177 (inv!51151 (tag!6270 (h!43227 rules!3307))) (inv!51154 (transformation!5590 (h!43227 rules!3307))) e!2224516))))

(declare-fun b!3594958 () Bool)

(declare-datatypes ((Token!10546 0))(
  ( (Token!10547 (value!179775 TokenValue!5820) (rule!8314 Rule!10980) (size!28802 Int) (originalCharacters!6304 List!37930)) )
))
(declare-fun token!511 () Token!10546)

(declare-fun e!2224513 () Bool)

(declare-fun e!2224519 () Bool)

(declare-fun tp!1100169 () Bool)

(assert (=> b!3594958 (= e!2224513 (and tp!1100169 (inv!51151 (tag!6270 (rule!8314 token!511))) (inv!51154 (transformation!5590 (rule!8314 token!511))) e!2224519))))

(declare-fun e!2224530 () Bool)

(declare-fun tp!1100174 () Bool)

(declare-fun b!3594959 () Bool)

(declare-fun inv!21 (TokenValue!5820) Bool)

(assert (=> b!3594959 (= e!2224530 (and (inv!21 (value!179775 token!511)) e!2224513 tp!1100174))))

(declare-fun b!3594960 () Bool)

(declare-fun e!2224524 () Bool)

(assert (=> b!3594960 (= e!2224527 e!2224524)))

(declare-fun res!1451984 () Bool)

(assert (=> b!3594960 (=> (not res!1451984) (not e!2224524))))

(declare-datatypes ((tuple2!37692 0))(
  ( (tuple2!37693 (_1!21980 Token!10546) (_2!21980 List!37930)) )
))
(declare-datatypes ((Option!7810 0))(
  ( (None!7809) (Some!7809 (v!37499 tuple2!37692)) )
))
(declare-fun lt!1233984 () Option!7810)

(declare-fun isDefined!6042 (Option!7810) Bool)

(assert (=> b!3594960 (= res!1451984 (isDefined!6042 lt!1233984))))

(declare-datatypes ((LexerInterface!5179 0))(
  ( (LexerInterfaceExt!5176 (__x!23858 Int)) (Lexer!5177) )
))
(declare-fun thiss!23823 () LexerInterface!5179)

(declare-fun lt!1233989 () List!37930)

(declare-fun maxPrefix!2713 (LexerInterface!5179 List!37931 List!37930) Option!7810)

(assert (=> b!3594960 (= lt!1233984 (maxPrefix!2713 thiss!23823 rules!3307 lt!1233989))))

(declare-fun list!13914 (BalanceConc!22624) List!37930)

(declare-fun charsOf!3604 (Token!10546) BalanceConc!22624)

(assert (=> b!3594960 (= lt!1233989 (list!13914 (charsOf!3604 token!511)))))

(declare-fun b!3594961 () Bool)

(declare-fun e!2224520 () Bool)

(declare-fun e!2224518 () Bool)

(assert (=> b!3594961 (= e!2224520 e!2224518)))

(declare-fun res!1451987 () Bool)

(assert (=> b!3594961 (=> res!1451987 e!2224518)))

(declare-fun lt!1233993 () Option!7810)

(declare-fun lt!1234000 () BalanceConc!22624)

(declare-fun lt!1233997 () tuple2!37692)

(declare-fun lt!1233991 () List!37930)

(declare-fun apply!9096 (TokenValueInjection!11068 BalanceConc!22624) TokenValue!5820)

(declare-fun size!28803 (BalanceConc!22624) Int)

(assert (=> b!3594961 (= res!1451987 (not (= lt!1233993 (Some!7809 (tuple2!37693 (Token!10547 (apply!9096 (transformation!5590 (rule!8314 (_1!21980 lt!1233997))) lt!1234000) (rule!8314 (_1!21980 lt!1233997)) (size!28803 lt!1234000) lt!1233991) (_2!21980 lt!1233997))))))))

(declare-datatypes ((Unit!53813 0))(
  ( (Unit!53814) )
))
(declare-fun lt!1233990 () Unit!53813)

(declare-fun lemmaCharactersSize!643 (Token!10546) Unit!53813)

(assert (=> b!3594961 (= lt!1233990 (lemmaCharactersSize!643 (_1!21980 lt!1233997)))))

(declare-fun lt!1233985 () Unit!53813)

(declare-fun lemmaEqSameImage!781 (TokenValueInjection!11068 BalanceConc!22624 BalanceConc!22624) Unit!53813)

(declare-fun seqFromList!4143 (List!37930) BalanceConc!22624)

(assert (=> b!3594961 (= lt!1233985 (lemmaEqSameImage!781 (transformation!5590 (rule!8314 (_1!21980 lt!1233997))) lt!1234000 (seqFromList!4143 (originalCharacters!6304 (_1!21980 lt!1233997)))))))

(declare-fun lt!1233986 () Unit!53813)

(declare-fun lemmaSemiInverse!1347 (TokenValueInjection!11068 BalanceConc!22624) Unit!53813)

(assert (=> b!3594961 (= lt!1233986 (lemmaSemiInverse!1347 (transformation!5590 (rule!8314 (_1!21980 lt!1233997))) lt!1234000))))

(declare-fun e!2224531 () Bool)

(assert (=> b!3594962 (= e!2224531 (and tp!1100171 tp!1100180))))

(declare-fun b!3594963 () Bool)

(declare-fun e!2224538 () Bool)

(declare-fun e!2224525 () Bool)

(assert (=> b!3594963 (= e!2224538 e!2224525)))

(declare-fun res!1451972 () Bool)

(assert (=> b!3594963 (=> (not res!1451972) (not e!2224525))))

(declare-fun lt!1233996 () Rule!10980)

(declare-fun matchR!4918 (Regex!10349 List!37930) Bool)

(assert (=> b!3594963 (= res!1451972 (matchR!4918 (regex!5590 lt!1233996) (list!13914 (charsOf!3604 (_1!21980 lt!1233997)))))))

(declare-datatypes ((Option!7811 0))(
  ( (None!7810) (Some!7810 (v!37500 Rule!10980)) )
))
(declare-fun lt!1233998 () Option!7811)

(declare-fun get!12215 (Option!7811) Rule!10980)

(assert (=> b!3594963 (= lt!1233996 (get!12215 lt!1233998))))

(declare-fun b!3594964 () Bool)

(declare-fun e!2224536 () Bool)

(assert (=> b!3594964 (= e!2224536 true)))

(declare-fun lt!1233988 () Int)

(declare-fun lt!1233992 () List!37930)

(declare-fun size!28804 (List!37930) Int)

(assert (=> b!3594964 (= lt!1233988 (size!28804 lt!1233992))))

(declare-fun b!3594965 () Bool)

(declare-fun res!1451986 () Bool)

(assert (=> b!3594965 (=> res!1451986 e!2224526)))

(declare-fun sepAndNonSepRulesDisjointChars!1760 (List!37931 List!37931) Bool)

(assert (=> b!3594965 (= res!1451986 (not (sepAndNonSepRulesDisjointChars!1760 rules!3307 rules!3307)))))

(declare-fun b!3594966 () Bool)

(declare-fun res!1451975 () Bool)

(assert (=> b!3594966 (=> (not res!1451975) (not e!2224527))))

(declare-fun isEmpty!22290 (List!37931) Bool)

(assert (=> b!3594966 (= res!1451975 (not (isEmpty!22290 rules!3307)))))

(declare-fun b!3594967 () Bool)

(declare-fun res!1451973 () Bool)

(assert (=> b!3594967 (=> (not res!1451973) (not e!2224527))))

(declare-fun rulesInvariant!4576 (LexerInterface!5179 List!37931) Bool)

(assert (=> b!3594967 (= res!1451973 (rulesInvariant!4576 thiss!23823 rules!3307))))

(declare-fun b!3594968 () Bool)

(declare-fun e!2224517 () Bool)

(declare-fun tp_is_empty!17781 () Bool)

(declare-fun tp!1100176 () Bool)

(assert (=> b!3594968 (= e!2224517 (and tp_is_empty!17781 tp!1100176))))

(declare-fun b!3594969 () Bool)

(declare-fun e!2224534 () Bool)

(assert (=> b!3594969 (= e!2224534 (not e!2224529))))

(declare-fun res!1451978 () Bool)

(assert (=> b!3594969 (=> res!1451978 e!2224529)))

(assert (=> b!3594969 (= res!1451978 (not (matchR!4918 (regex!5590 rule!403) lt!1233989)))))

(declare-fun ruleValid!1855 (LexerInterface!5179 Rule!10980) Bool)

(assert (=> b!3594969 (ruleValid!1855 thiss!23823 rule!403)))

(declare-fun lt!1233983 () Unit!53813)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1010 (LexerInterface!5179 Rule!10980 List!37931) Unit!53813)

(assert (=> b!3594969 (= lt!1233983 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1010 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3594970 () Bool)

(declare-fun res!1451988 () Bool)

(assert (=> b!3594970 (=> res!1451988 e!2224520)))

(assert (=> b!3594970 (= res!1451988 (not (matchR!4918 (regex!5590 (rule!8314 (_1!21980 lt!1233997))) lt!1233991)))))

(declare-fun e!2224514 () Bool)

(declare-fun e!2224515 () Bool)

(declare-fun b!3594971 () Bool)

(declare-fun tp!1100181 () Bool)

(assert (=> b!3594971 (= e!2224515 (and tp!1100181 (inv!51151 (tag!6270 anOtherTypeRule!33)) (inv!51154 (transformation!5590 anOtherTypeRule!33)) e!2224514))))

(assert (=> b!3594972 (= e!2224514 (and tp!1100175 tp!1100179))))

(declare-fun b!3594973 () Bool)

(assert (=> b!3594973 (= e!2224518 e!2224536)))

(declare-fun res!1451976 () Bool)

(assert (=> b!3594973 (=> res!1451976 e!2224536)))

(declare-fun lt!1233981 () List!37930)

(assert (=> b!3594973 (= res!1451976 (not (= lt!1233981 (_2!21980 lt!1233997))))))

(assert (=> b!3594973 (= (_2!21980 lt!1233997) lt!1233981)))

(declare-fun lt!1233980 () Unit!53813)

(declare-fun lemmaSamePrefixThenSameSuffix!1308 (List!37930 List!37930 List!37930 List!37930 List!37930) Unit!53813)

(assert (=> b!3594973 (= lt!1233980 (lemmaSamePrefixThenSameSuffix!1308 lt!1233991 (_2!21980 lt!1233997) lt!1233991 lt!1233981 lt!1233992))))

(declare-fun getSuffix!1528 (List!37930 List!37930) List!37930)

(assert (=> b!3594973 (= lt!1233981 (getSuffix!1528 lt!1233992 lt!1233991))))

(declare-fun maxPrefixOneRule!1857 (LexerInterface!5179 Rule!10980 List!37930) Option!7810)

(assert (=> b!3594973 (= (maxPrefixOneRule!1857 thiss!23823 (rule!8314 (_1!21980 lt!1233997)) lt!1233992) (Some!7809 (tuple2!37693 (Token!10547 (apply!9096 (transformation!5590 (rule!8314 (_1!21980 lt!1233997))) (seqFromList!4143 lt!1233991)) (rule!8314 (_1!21980 lt!1233997)) (size!28804 lt!1233991) lt!1233991) (_2!21980 lt!1233997))))))

(declare-fun lt!1233994 () Unit!53813)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!929 (LexerInterface!5179 List!37931 List!37930 List!37930 List!37930 Rule!10980) Unit!53813)

(assert (=> b!3594973 (= lt!1233994 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!929 thiss!23823 rules!3307 lt!1233991 lt!1233992 (_2!21980 lt!1233997) (rule!8314 (_1!21980 lt!1233997))))))

(declare-fun b!3594974 () Bool)

(declare-fun res!1451970 () Bool)

(assert (=> b!3594974 (=> res!1451970 e!2224529)))

(declare-fun isEmpty!22291 (List!37930) Bool)

(assert (=> b!3594974 (= res!1451970 (isEmpty!22291 suffix!1395))))

(declare-fun b!3594975 () Bool)

(declare-fun e!2224523 () Bool)

(declare-fun tp!1100182 () Bool)

(assert (=> b!3594975 (= e!2224523 (and e!2224537 tp!1100182))))

(declare-fun b!3594976 () Bool)

(assert (=> b!3594976 (= e!2224525 (= (rule!8314 (_1!21980 lt!1233997)) lt!1233996))))

(declare-fun b!3594977 () Bool)

(assert (=> b!3594977 (= e!2224526 e!2224520)))

(declare-fun res!1451982 () Bool)

(assert (=> b!3594977 (=> res!1451982 e!2224520)))

(declare-fun isPrefix!2953 (List!37930 List!37930) Bool)

(assert (=> b!3594977 (= res!1451982 (not (isPrefix!2953 lt!1233991 lt!1233992)))))

(declare-fun ++!9406 (List!37930 List!37930) List!37930)

(assert (=> b!3594977 (isPrefix!2953 lt!1233991 (++!9406 lt!1233991 (_2!21980 lt!1233997)))))

(declare-fun lt!1234001 () Unit!53813)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1874 (List!37930 List!37930) Unit!53813)

(assert (=> b!3594977 (= lt!1234001 (lemmaConcatTwoListThenFirstIsPrefix!1874 lt!1233991 (_2!21980 lt!1233997)))))

(assert (=> b!3594977 (= lt!1233991 (list!13914 lt!1234000))))

(assert (=> b!3594977 (= lt!1234000 (charsOf!3604 (_1!21980 lt!1233997)))))

(assert (=> b!3594977 e!2224538))

(declare-fun res!1451977 () Bool)

(assert (=> b!3594977 (=> (not res!1451977) (not e!2224538))))

(declare-fun isDefined!6043 (Option!7811) Bool)

(assert (=> b!3594977 (= res!1451977 (isDefined!6043 lt!1233998))))

(declare-fun getRuleFromTag!1196 (LexerInterface!5179 List!37931 String!42434) Option!7811)

(assert (=> b!3594977 (= lt!1233998 (getRuleFromTag!1196 thiss!23823 rules!3307 (tag!6270 (rule!8314 (_1!21980 lt!1233997)))))))

(declare-fun lt!1233999 () Unit!53813)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1196 (LexerInterface!5179 List!37931 List!37930 Token!10546) Unit!53813)

(assert (=> b!3594977 (= lt!1233999 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1196 thiss!23823 rules!3307 lt!1233992 (_1!21980 lt!1233997)))))

(declare-fun get!12216 (Option!7810) tuple2!37692)

(assert (=> b!3594977 (= lt!1233997 (get!12216 lt!1233993))))

(declare-fun lt!1233982 () Unit!53813)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!859 (LexerInterface!5179 List!37931 List!37930 List!37930) Unit!53813)

(assert (=> b!3594977 (= lt!1233982 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!859 thiss!23823 rules!3307 lt!1233989 suffix!1395))))

(assert (=> b!3594977 (= lt!1233993 (maxPrefix!2713 thiss!23823 rules!3307 lt!1233992))))

(assert (=> b!3594977 (isPrefix!2953 lt!1233989 lt!1233992)))

(declare-fun lt!1234002 () Unit!53813)

(assert (=> b!3594977 (= lt!1234002 (lemmaConcatTwoListThenFirstIsPrefix!1874 lt!1233989 suffix!1395))))

(assert (=> b!3594977 (= lt!1233992 (++!9406 lt!1233989 suffix!1395))))

(declare-fun tp!1100170 () Bool)

(declare-fun e!2224522 () Bool)

(declare-fun b!3594978 () Bool)

(assert (=> b!3594978 (= e!2224522 (and tp!1100170 (inv!51151 (tag!6270 rule!403)) (inv!51154 (transformation!5590 rule!403)) e!2224531))))

(declare-fun b!3594979 () Bool)

(declare-fun res!1451983 () Bool)

(assert (=> b!3594979 (=> (not res!1451983) (not e!2224527))))

(assert (=> b!3594979 (= res!1451983 (contains!7244 rules!3307 rule!403))))

(declare-fun b!3594980 () Bool)

(declare-fun res!1451989 () Bool)

(assert (=> b!3594980 (=> (not res!1451989) (not e!2224534))))

(declare-fun lt!1233995 () tuple2!37692)

(assert (=> b!3594980 (= res!1451989 (isEmpty!22291 (_2!21980 lt!1233995)))))

(declare-fun b!3594981 () Bool)

(declare-fun res!1451974 () Bool)

(assert (=> b!3594981 (=> (not res!1451974) (not e!2224534))))

(assert (=> b!3594981 (= res!1451974 (= (rule!8314 token!511) rule!403))))

(declare-fun res!1451969 () Bool)

(assert (=> start!333850 (=> (not res!1451969) (not e!2224527))))

(get-info :version)

(assert (=> start!333850 (= res!1451969 ((_ is Lexer!5177) thiss!23823))))

(assert (=> start!333850 e!2224527))

(assert (=> start!333850 e!2224523))

(assert (=> start!333850 e!2224517))

(assert (=> start!333850 true))

(declare-fun inv!51155 (Token!10546) Bool)

(assert (=> start!333850 (and (inv!51155 token!511) e!2224530)))

(assert (=> start!333850 e!2224522))

(assert (=> start!333850 e!2224515))

(assert (=> b!3594982 (= e!2224519 (and tp!1100172 tp!1100178))))

(declare-fun b!3594983 () Bool)

(declare-fun res!1451971 () Bool)

(assert (=> b!3594983 (=> res!1451971 e!2224526)))

(assert (=> b!3594983 (= res!1451971 (not (contains!7243 (usedCharacters!804 (regex!5590 anOtherTypeRule!33)) lt!1233987)))))

(assert (=> b!3594984 (= e!2224516 (and tp!1100173 tp!1100168))))

(declare-fun b!3594985 () Bool)

(declare-fun res!1451980 () Bool)

(assert (=> b!3594985 (=> (not res!1451980) (not e!2224527))))

(assert (=> b!3594985 (= res!1451980 (not (= (isSeparator!5590 anOtherTypeRule!33) (isSeparator!5590 rule!403))))))

(declare-fun b!3594986 () Bool)

(assert (=> b!3594986 (= e!2224524 e!2224534)))

(declare-fun res!1451981 () Bool)

(assert (=> b!3594986 (=> (not res!1451981) (not e!2224534))))

(assert (=> b!3594986 (= res!1451981 (= (_1!21980 lt!1233995) token!511))))

(assert (=> b!3594986 (= lt!1233995 (get!12216 lt!1233984))))

(assert (= (and start!333850 res!1451969) b!3594966))

(assert (= (and b!3594966 res!1451975) b!3594967))

(assert (= (and b!3594967 res!1451973) b!3594979))

(assert (= (and b!3594979 res!1451983) b!3594956))

(assert (= (and b!3594956 res!1451985) b!3594985))

(assert (= (and b!3594985 res!1451980) b!3594960))

(assert (= (and b!3594960 res!1451984) b!3594986))

(assert (= (and b!3594986 res!1451981) b!3594980))

(assert (= (and b!3594980 res!1451989) b!3594981))

(assert (= (and b!3594981 res!1451974) b!3594969))

(assert (= (and b!3594969 (not res!1451978)) b!3594974))

(assert (= (and b!3594974 (not res!1451970)) b!3594955))

(assert (= (and b!3594955 (not res!1451979)) b!3594983))

(assert (= (and b!3594983 (not res!1451971)) b!3594965))

(assert (= (and b!3594965 (not res!1451986)) b!3594977))

(assert (= (and b!3594977 res!1451977) b!3594963))

(assert (= (and b!3594963 res!1451972) b!3594976))

(assert (= (and b!3594977 (not res!1451982)) b!3594970))

(assert (= (and b!3594970 (not res!1451988)) b!3594961))

(assert (= (and b!3594961 (not res!1451987)) b!3594973))

(assert (= (and b!3594973 (not res!1451976)) b!3594964))

(assert (= b!3594957 b!3594984))

(assert (= b!3594975 b!3594957))

(assert (= (and start!333850 ((_ is Cons!37807) rules!3307)) b!3594975))

(assert (= (and start!333850 ((_ is Cons!37806) suffix!1395)) b!3594968))

(assert (= b!3594958 b!3594982))

(assert (= b!3594959 b!3594958))

(assert (= start!333850 b!3594959))

(assert (= b!3594978 b!3594962))

(assert (= start!333850 b!3594978))

(assert (= b!3594971 b!3594972))

(assert (= start!333850 b!3594971))

(declare-fun m!4089783 () Bool)

(assert (=> b!3594977 m!4089783))

(declare-fun m!4089785 () Bool)

(assert (=> b!3594977 m!4089785))

(declare-fun m!4089787 () Bool)

(assert (=> b!3594977 m!4089787))

(declare-fun m!4089789 () Bool)

(assert (=> b!3594977 m!4089789))

(declare-fun m!4089791 () Bool)

(assert (=> b!3594977 m!4089791))

(declare-fun m!4089793 () Bool)

(assert (=> b!3594977 m!4089793))

(declare-fun m!4089795 () Bool)

(assert (=> b!3594977 m!4089795))

(declare-fun m!4089797 () Bool)

(assert (=> b!3594977 m!4089797))

(declare-fun m!4089799 () Bool)

(assert (=> b!3594977 m!4089799))

(declare-fun m!4089801 () Bool)

(assert (=> b!3594977 m!4089801))

(declare-fun m!4089803 () Bool)

(assert (=> b!3594977 m!4089803))

(declare-fun m!4089805 () Bool)

(assert (=> b!3594977 m!4089805))

(assert (=> b!3594977 m!4089783))

(declare-fun m!4089807 () Bool)

(assert (=> b!3594977 m!4089807))

(declare-fun m!4089809 () Bool)

(assert (=> b!3594977 m!4089809))

(declare-fun m!4089811 () Bool)

(assert (=> b!3594977 m!4089811))

(declare-fun m!4089813 () Bool)

(assert (=> b!3594959 m!4089813))

(declare-fun m!4089815 () Bool)

(assert (=> b!3594970 m!4089815))

(declare-fun m!4089817 () Bool)

(assert (=> b!3594980 m!4089817))

(declare-fun m!4089819 () Bool)

(assert (=> b!3594967 m!4089819))

(declare-fun m!4089821 () Bool)

(assert (=> b!3594983 m!4089821))

(assert (=> b!3594983 m!4089821))

(declare-fun m!4089823 () Bool)

(assert (=> b!3594983 m!4089823))

(declare-fun m!4089825 () Bool)

(assert (=> b!3594955 m!4089825))

(assert (=> b!3594955 m!4089825))

(declare-fun m!4089827 () Bool)

(assert (=> b!3594955 m!4089827))

(declare-fun m!4089829 () Bool)

(assert (=> b!3594955 m!4089829))

(declare-fun m!4089831 () Bool)

(assert (=> b!3594964 m!4089831))

(declare-fun m!4089833 () Bool)

(assert (=> b!3594957 m!4089833))

(declare-fun m!4089835 () Bool)

(assert (=> b!3594957 m!4089835))

(declare-fun m!4089837 () Bool)

(assert (=> b!3594973 m!4089837))

(declare-fun m!4089839 () Bool)

(assert (=> b!3594973 m!4089839))

(declare-fun m!4089841 () Bool)

(assert (=> b!3594973 m!4089841))

(declare-fun m!4089843 () Bool)

(assert (=> b!3594973 m!4089843))

(declare-fun m!4089845 () Bool)

(assert (=> b!3594973 m!4089845))

(declare-fun m!4089847 () Bool)

(assert (=> b!3594973 m!4089847))

(assert (=> b!3594973 m!4089845))

(declare-fun m!4089849 () Bool)

(assert (=> b!3594973 m!4089849))

(declare-fun m!4089851 () Bool)

(assert (=> b!3594978 m!4089851))

(declare-fun m!4089853 () Bool)

(assert (=> b!3594978 m!4089853))

(declare-fun m!4089855 () Bool)

(assert (=> b!3594966 m!4089855))

(declare-fun m!4089857 () Bool)

(assert (=> b!3594960 m!4089857))

(declare-fun m!4089859 () Bool)

(assert (=> b!3594960 m!4089859))

(declare-fun m!4089861 () Bool)

(assert (=> b!3594960 m!4089861))

(assert (=> b!3594960 m!4089861))

(declare-fun m!4089863 () Bool)

(assert (=> b!3594960 m!4089863))

(declare-fun m!4089865 () Bool)

(assert (=> b!3594956 m!4089865))

(declare-fun m!4089867 () Bool)

(assert (=> b!3594958 m!4089867))

(declare-fun m!4089869 () Bool)

(assert (=> b!3594958 m!4089869))

(declare-fun m!4089871 () Bool)

(assert (=> start!333850 m!4089871))

(declare-fun m!4089873 () Bool)

(assert (=> b!3594974 m!4089873))

(assert (=> b!3594963 m!4089785))

(assert (=> b!3594963 m!4089785))

(declare-fun m!4089875 () Bool)

(assert (=> b!3594963 m!4089875))

(assert (=> b!3594963 m!4089875))

(declare-fun m!4089877 () Bool)

(assert (=> b!3594963 m!4089877))

(declare-fun m!4089879 () Bool)

(assert (=> b!3594963 m!4089879))

(declare-fun m!4089881 () Bool)

(assert (=> b!3594969 m!4089881))

(declare-fun m!4089883 () Bool)

(assert (=> b!3594969 m!4089883))

(declare-fun m!4089885 () Bool)

(assert (=> b!3594969 m!4089885))

(declare-fun m!4089887 () Bool)

(assert (=> b!3594971 m!4089887))

(declare-fun m!4089889 () Bool)

(assert (=> b!3594971 m!4089889))

(declare-fun m!4089891 () Bool)

(assert (=> b!3594965 m!4089891))

(declare-fun m!4089893 () Bool)

(assert (=> b!3594979 m!4089893))

(declare-fun m!4089895 () Bool)

(assert (=> b!3594961 m!4089895))

(declare-fun m!4089897 () Bool)

(assert (=> b!3594961 m!4089897))

(declare-fun m!4089899 () Bool)

(assert (=> b!3594961 m!4089899))

(declare-fun m!4089901 () Bool)

(assert (=> b!3594961 m!4089901))

(assert (=> b!3594961 m!4089901))

(declare-fun m!4089903 () Bool)

(assert (=> b!3594961 m!4089903))

(declare-fun m!4089905 () Bool)

(assert (=> b!3594961 m!4089905))

(declare-fun m!4089907 () Bool)

(assert (=> b!3594986 m!4089907))

(check-sat (not b!3594971) (not b!3594967) (not b!3594973) (not b_next!93583) (not b_next!93571) (not b!3594955) (not b!3594957) tp_is_empty!17781 b_and!260469 (not b_next!93573) (not b!3594979) b_and!260477 b_and!260473 (not b!3594964) b_and!260475 (not b_next!93581) b_and!260479 (not b_next!93577) (not b!3594965) (not b!3594977) (not b!3594983) (not b!3594978) (not b!3594961) (not b_next!93579) (not b!3594959) (not b_next!93575) b_and!260471 (not b!3594974) (not b!3594966) (not b!3594956) (not b!3594958) (not b!3594960) b_and!260467 (not b!3594970) b_and!260481 (not b!3594963) (not b!3594969) (not b!3594986) (not b_next!93569) (not b!3594968) (not start!333850) (not b!3594975) (not b!3594980))
(check-sat (not b_next!93583) b_and!260475 (not b_next!93571) b_and!260469 (not b_next!93573) b_and!260471 b_and!260467 b_and!260477 b_and!260481 (not b_next!93569) b_and!260473 (not b_next!93581) b_and!260479 (not b_next!93577) (not b_next!93579) (not b_next!93575))
