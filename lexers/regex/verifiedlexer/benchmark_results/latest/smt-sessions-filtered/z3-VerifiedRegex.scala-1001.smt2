; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49948 () Bool)

(assert start!49948)

(declare-fun b!541297 () Bool)

(declare-fun b_free!14961 () Bool)

(declare-fun b_next!14977 () Bool)

(assert (=> b!541297 (= b_free!14961 (not b_next!14977))))

(declare-fun tp!172381 () Bool)

(declare-fun b_and!52875 () Bool)

(assert (=> b!541297 (= tp!172381 b_and!52875)))

(declare-fun b_free!14963 () Bool)

(declare-fun b_next!14979 () Bool)

(assert (=> b!541297 (= b_free!14963 (not b_next!14979))))

(declare-fun tp!172379 () Bool)

(declare-fun b_and!52877 () Bool)

(assert (=> b!541297 (= tp!172379 b_and!52877)))

(declare-fun b!541287 () Bool)

(declare-fun b_free!14965 () Bool)

(declare-fun b_next!14981 () Bool)

(assert (=> b!541287 (= b_free!14965 (not b_next!14981))))

(declare-fun tp!172380 () Bool)

(declare-fun b_and!52879 () Bool)

(assert (=> b!541287 (= tp!172380 b_and!52879)))

(declare-fun b_free!14967 () Bool)

(declare-fun b_next!14983 () Bool)

(assert (=> b!541287 (= b_free!14967 (not b_next!14983))))

(declare-fun tp!172385 () Bool)

(declare-fun b_and!52881 () Bool)

(assert (=> b!541287 (= tp!172385 b_and!52881)))

(declare-fun b!541274 () Bool)

(declare-fun e!326903 () Bool)

(declare-fun e!326899 () Bool)

(assert (=> b!541274 (= e!326903 e!326899)))

(declare-fun res!230267 () Bool)

(assert (=> b!541274 (=> res!230267 e!326899)))

(declare-datatypes ((C!3568 0))(
  ( (C!3569 (val!2010 Int)) )
))
(declare-datatypes ((Regex!1323 0))(
  ( (ElementMatch!1323 (c!102436 C!3568)) (Concat!2336 (regOne!3158 Regex!1323) (regTwo!3158 Regex!1323)) (EmptyExpr!1323) (Star!1323 (reg!1652 Regex!1323)) (EmptyLang!1323) (Union!1323 (regOne!3159 Regex!1323) (regTwo!3159 Regex!1323)) )
))
(declare-datatypes ((List!5309 0))(
  ( (Nil!5299) (Cons!5299 (h!10700 (_ BitVec 16)) (t!74406 List!5309)) )
))
(declare-datatypes ((List!5310 0))(
  ( (Nil!5300) (Cons!5300 (h!10701 C!3568) (t!74407 List!5310)) )
))
(declare-datatypes ((IArray!3413 0))(
  ( (IArray!3414 (innerList!1764 List!5310)) )
))
(declare-datatypes ((Conc!1706 0))(
  ( (Node!1706 (left!4405 Conc!1706) (right!4735 Conc!1706) (csize!3642 Int) (cheight!1917 Int)) (Leaf!2708 (xs!4343 IArray!3413) (csize!3643 Int)) (Empty!1706) )
))
(declare-datatypes ((BalanceConc!3420 0))(
  ( (BalanceConc!3421 (c!102437 Conc!1706)) )
))
(declare-datatypes ((TokenValue!1013 0))(
  ( (FloatLiteralValue!2026 (text!7536 List!5309)) (TokenValueExt!1012 (__x!3924 Int)) (Broken!5065 (value!33027 List!5309)) (Object!1022) (End!1013) (Def!1013) (Underscore!1013) (Match!1013) (Else!1013) (Error!1013) (Case!1013) (If!1013) (Extends!1013) (Abstract!1013) (Class!1013) (Val!1013) (DelimiterValue!2026 (del!1073 List!5309)) (KeywordValue!1019 (value!33028 List!5309)) (CommentValue!2026 (value!33029 List!5309)) (WhitespaceValue!2026 (value!33030 List!5309)) (IndentationValue!1013 (value!33031 List!5309)) (String!6808) (Int32!1013) (Broken!5066 (value!33032 List!5309)) (Boolean!1014) (Unit!9260) (OperatorValue!1016 (op!1073 List!5309)) (IdentifierValue!2026 (value!33033 List!5309)) (IdentifierValue!2027 (value!33034 List!5309)) (WhitespaceValue!2027 (value!33035 List!5309)) (True!2026) (False!2026) (Broken!5067 (value!33036 List!5309)) (Broken!5068 (value!33037 List!5309)) (True!2027) (RightBrace!1013) (RightBracket!1013) (Colon!1013) (Null!1013) (Comma!1013) (LeftBracket!1013) (False!2027) (LeftBrace!1013) (ImaginaryLiteralValue!1013 (text!7537 List!5309)) (StringLiteralValue!3039 (value!33038 List!5309)) (EOFValue!1013 (value!33039 List!5309)) (IdentValue!1013 (value!33040 List!5309)) (DelimiterValue!2027 (value!33041 List!5309)) (DedentValue!1013 (value!33042 List!5309)) (NewLineValue!1013 (value!33043 List!5309)) (IntegerValue!3039 (value!33044 (_ BitVec 32)) (text!7538 List!5309)) (IntegerValue!3040 (value!33045 Int) (text!7539 List!5309)) (Times!1013) (Or!1013) (Equal!1013) (Minus!1013) (Broken!5069 (value!33046 List!5309)) (And!1013) (Div!1013) (LessEqual!1013) (Mod!1013) (Concat!2337) (Not!1013) (Plus!1013) (SpaceValue!1013 (value!33047 List!5309)) (IntegerValue!3041 (value!33048 Int) (text!7540 List!5309)) (StringLiteralValue!3040 (text!7541 List!5309)) (FloatLiteralValue!2027 (text!7542 List!5309)) (BytesLiteralValue!1013 (value!33049 List!5309)) (CommentValue!2027 (value!33050 List!5309)) (StringLiteralValue!3041 (value!33051 List!5309)) (ErrorTokenValue!1013 (msg!1074 List!5309)) )
))
(declare-datatypes ((String!6809 0))(
  ( (String!6810 (value!33052 String)) )
))
(declare-datatypes ((TokenValueInjection!1794 0))(
  ( (TokenValueInjection!1795 (toValue!1836 Int) (toChars!1695 Int)) )
))
(declare-datatypes ((Rule!1778 0))(
  ( (Rule!1779 (regex!989 Regex!1323) (tag!1251 String!6809) (isSeparator!989 Bool) (transformation!989 TokenValueInjection!1794)) )
))
(declare-datatypes ((Token!1714 0))(
  ( (Token!1715 (value!33053 TokenValue!1013) (rule!1699 Rule!1778) (size!4256 Int) (originalCharacters!1028 List!5310)) )
))
(declare-datatypes ((tuple2!6352 0))(
  ( (tuple2!6353 (_1!3440 Token!1714) (_2!3440 List!5310)) )
))
(declare-datatypes ((Option!1339 0))(
  ( (None!1338) (Some!1338 (v!16149 tuple2!6352)) )
))
(declare-fun lt!225539 () Option!1339)

(declare-fun lt!225523 () List!5310)

(declare-fun lt!225529 () Token!1714)

(assert (=> b!541274 (= res!230267 (not (= lt!225539 (Some!1338 (tuple2!6353 lt!225529 lt!225523)))))))

(declare-datatypes ((Unit!9261 0))(
  ( (Unit!9262) )
))
(declare-fun lt!225517 () Unit!9261)

(declare-fun lt!225545 () Option!1339)

(declare-fun lt!225533 () BalanceConc!3420)

(declare-fun lemmaSemiInverse!118 (TokenValueInjection!1794 BalanceConc!3420) Unit!9261)

(assert (=> b!541274 (= lt!225517 (lemmaSemiInverse!118 (transformation!989 (rule!1699 (_1!3440 (v!16149 lt!225545)))) lt!225533))))

(declare-fun b!541275 () Bool)

(declare-fun e!326902 () Unit!9261)

(declare-fun Unit!9263 () Unit!9261)

(assert (=> b!541275 (= e!326902 Unit!9263)))

(declare-fun b!541276 () Bool)

(declare-fun e!326910 () Bool)

(declare-fun e!326895 () Bool)

(assert (=> b!541276 (= e!326910 e!326895)))

(declare-fun res!230264 () Bool)

(assert (=> b!541276 (=> (not res!230264) (not e!326895))))

(declare-fun lt!225543 () Option!1339)

(declare-fun isDefined!1151 (Option!1339) Bool)

(assert (=> b!541276 (= res!230264 (isDefined!1151 lt!225543))))

(declare-datatypes ((List!5311 0))(
  ( (Nil!5301) (Cons!5301 (h!10702 Rule!1778) (t!74408 List!5311)) )
))
(declare-fun rules!3103 () List!5311)

(declare-datatypes ((LexerInterface!875 0))(
  ( (LexerInterfaceExt!872 (__x!3925 Int)) (Lexer!873) )
))
(declare-fun thiss!22590 () LexerInterface!875)

(declare-fun lt!225535 () List!5310)

(declare-fun maxPrefix!573 (LexerInterface!875 List!5311 List!5310) Option!1339)

(assert (=> b!541276 (= lt!225543 (maxPrefix!573 thiss!22590 rules!3103 lt!225535))))

(declare-fun input!2705 () List!5310)

(declare-fun suffix!1342 () List!5310)

(declare-fun ++!1477 (List!5310 List!5310) List!5310)

(assert (=> b!541276 (= lt!225535 (++!1477 input!2705 suffix!1342))))

(declare-fun b!541277 () Bool)

(declare-fun res!230257 () Bool)

(declare-fun e!326911 () Bool)

(assert (=> b!541277 (=> res!230257 e!326911)))

(declare-fun lt!225521 () List!5310)

(assert (=> b!541277 (= res!230257 (not (= lt!225521 input!2705)))))

(declare-fun e!326893 () Bool)

(declare-fun tp!172377 () Bool)

(declare-fun token!491 () Token!1714)

(declare-fun e!326890 () Bool)

(declare-fun b!541278 () Bool)

(declare-fun inv!21 (TokenValue!1013) Bool)

(assert (=> b!541278 (= e!326893 (and (inv!21 (value!33053 token!491)) e!326890 tp!172377))))

(declare-fun b!541280 () Bool)

(declare-fun res!230265 () Bool)

(assert (=> b!541280 (=> res!230265 e!326911)))

(declare-fun matchR!482 (Regex!1323 List!5310) Bool)

(assert (=> b!541280 (= res!230265 (not (matchR!482 (regex!989 (rule!1699 token!491)) input!2705)))))

(declare-fun b!541281 () Bool)

(declare-fun res!230256 () Bool)

(assert (=> b!541281 (=> res!230256 e!326911)))

(declare-fun lt!225541 () List!5310)

(declare-fun isPrefix!631 (List!5310 List!5310) Bool)

(assert (=> b!541281 (= res!230256 (not (isPrefix!631 lt!225541 input!2705)))))

(declare-fun b!541282 () Bool)

(declare-fun e!326900 () Bool)

(declare-fun tp_is_empty!3001 () Bool)

(declare-fun tp!172378 () Bool)

(assert (=> b!541282 (= e!326900 (and tp_is_empty!3001 tp!172378))))

(declare-fun b!541283 () Bool)

(declare-fun e!326892 () Bool)

(declare-fun e!326909 () Bool)

(assert (=> b!541283 (= e!326892 (not e!326909))))

(declare-fun res!230277 () Bool)

(assert (=> b!541283 (=> res!230277 e!326909)))

(declare-fun lt!225544 () List!5310)

(assert (=> b!541283 (= res!230277 (not (isPrefix!631 input!2705 lt!225544)))))

(assert (=> b!541283 (isPrefix!631 lt!225541 lt!225544)))

(declare-fun lt!225526 () Unit!9261)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!482 (List!5310 List!5310) Unit!9261)

(assert (=> b!541283 (= lt!225526 (lemmaConcatTwoListThenFirstIsPrefix!482 lt!225541 suffix!1342))))

(assert (=> b!541283 (isPrefix!631 input!2705 lt!225535)))

(declare-fun lt!225514 () Unit!9261)

(assert (=> b!541283 (= lt!225514 (lemmaConcatTwoListThenFirstIsPrefix!482 input!2705 suffix!1342))))

(declare-fun lt!225525 () List!5310)

(declare-fun lt!225548 () Int)

(declare-fun lt!225527 () TokenValue!1013)

(assert (=> b!541283 (= lt!225529 (Token!1715 lt!225527 (rule!1699 (_1!3440 (v!16149 lt!225545))) lt!225548 lt!225525))))

(declare-fun e!326914 () Bool)

(assert (=> b!541283 e!326914))

(declare-fun res!230261 () Bool)

(assert (=> b!541283 (=> (not res!230261) (not e!326914))))

(assert (=> b!541283 (= res!230261 (= (value!33053 (_1!3440 (v!16149 lt!225545))) lt!225527))))

(declare-fun apply!1264 (TokenValueInjection!1794 BalanceConc!3420) TokenValue!1013)

(assert (=> b!541283 (= lt!225527 (apply!1264 (transformation!989 (rule!1699 (_1!3440 (v!16149 lt!225545)))) lt!225533))))

(declare-fun seqFromList!1187 (List!5310) BalanceConc!3420)

(assert (=> b!541283 (= lt!225533 (seqFromList!1187 lt!225525))))

(declare-fun lt!225522 () Unit!9261)

(declare-fun lemmaInv!137 (TokenValueInjection!1794) Unit!9261)

(assert (=> b!541283 (= lt!225522 (lemmaInv!137 (transformation!989 (rule!1699 token!491))))))

(declare-fun lt!225536 () Unit!9261)

(assert (=> b!541283 (= lt!225536 (lemmaInv!137 (transformation!989 (rule!1699 (_1!3440 (v!16149 lt!225545))))))))

(declare-fun ruleValid!209 (LexerInterface!875 Rule!1778) Bool)

(assert (=> b!541283 (ruleValid!209 thiss!22590 (rule!1699 token!491))))

(declare-fun lt!225542 () Unit!9261)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!68 (LexerInterface!875 Rule!1778 List!5311) Unit!9261)

(assert (=> b!541283 (= lt!225542 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!68 thiss!22590 (rule!1699 token!491) rules!3103))))

(assert (=> b!541283 (ruleValid!209 thiss!22590 (rule!1699 (_1!3440 (v!16149 lt!225545))))))

(declare-fun lt!225516 () Unit!9261)

(assert (=> b!541283 (= lt!225516 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!68 thiss!22590 (rule!1699 (_1!3440 (v!16149 lt!225545))) rules!3103))))

(assert (=> b!541283 (isPrefix!631 input!2705 input!2705)))

(declare-fun lt!225515 () Unit!9261)

(declare-fun lemmaIsPrefixRefl!371 (List!5310 List!5310) Unit!9261)

(assert (=> b!541283 (= lt!225515 (lemmaIsPrefixRefl!371 input!2705 input!2705))))

(assert (=> b!541283 (= (_2!3440 (v!16149 lt!225545)) lt!225523)))

(declare-fun lt!225532 () Unit!9261)

(declare-fun lemmaSamePrefixThenSameSuffix!358 (List!5310 List!5310 List!5310 List!5310 List!5310) Unit!9261)

(assert (=> b!541283 (= lt!225532 (lemmaSamePrefixThenSameSuffix!358 lt!225525 (_2!3440 (v!16149 lt!225545)) lt!225525 lt!225523 input!2705))))

(declare-fun getSuffix!154 (List!5310 List!5310) List!5310)

(assert (=> b!541283 (= lt!225523 (getSuffix!154 input!2705 lt!225525))))

(assert (=> b!541283 (isPrefix!631 lt!225525 lt!225521)))

(assert (=> b!541283 (= lt!225521 (++!1477 lt!225525 (_2!3440 (v!16149 lt!225545))))))

(declare-fun lt!225537 () Unit!9261)

(assert (=> b!541283 (= lt!225537 (lemmaConcatTwoListThenFirstIsPrefix!482 lt!225525 (_2!3440 (v!16149 lt!225545))))))

(declare-fun lt!225549 () Unit!9261)

(declare-fun lemmaCharactersSize!68 (Token!1714) Unit!9261)

(assert (=> b!541283 (= lt!225549 (lemmaCharactersSize!68 token!491))))

(declare-fun lt!225518 () Unit!9261)

(assert (=> b!541283 (= lt!225518 (lemmaCharactersSize!68 (_1!3440 (v!16149 lt!225545))))))

(declare-fun lt!225519 () Unit!9261)

(assert (=> b!541283 (= lt!225519 e!326902)))

(declare-fun c!102435 () Bool)

(declare-fun lt!225530 () Int)

(assert (=> b!541283 (= c!102435 (> lt!225548 lt!225530))))

(declare-fun size!4257 (List!5310) Int)

(assert (=> b!541283 (= lt!225530 (size!4257 lt!225541))))

(assert (=> b!541283 (= lt!225548 (size!4257 lt!225525))))

(declare-fun list!2199 (BalanceConc!3420) List!5310)

(declare-fun charsOf!618 (Token!1714) BalanceConc!3420)

(assert (=> b!541283 (= lt!225525 (list!2199 (charsOf!618 (_1!3440 (v!16149 lt!225545)))))))

(declare-fun lt!225538 () tuple2!6352)

(assert (=> b!541283 (= lt!225545 (Some!1338 lt!225538))))

(assert (=> b!541283 (= lt!225538 (tuple2!6353 (_1!3440 (v!16149 lt!225545)) (_2!3440 (v!16149 lt!225545))))))

(declare-fun lt!225528 () Unit!9261)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!74 (List!5310 List!5310 List!5310 List!5310) Unit!9261)

(assert (=> b!541283 (= lt!225528 (lemmaConcatSameAndSameSizesThenSameLists!74 lt!225541 suffix!1342 input!2705 suffix!1342))))

(declare-fun lt!225524 () TokenValue!1013)

(declare-fun lt!225520 () List!5310)

(declare-fun b!541284 () Bool)

(declare-fun e!326916 () Bool)

(assert (=> b!541284 (= e!326916 (and (= (size!4256 token!491) lt!225530) (= (originalCharacters!1028 token!491) lt!225541) (= (tuple2!6353 token!491 suffix!1342) (tuple2!6353 (Token!1715 lt!225524 (rule!1699 token!491) lt!225530 lt!225541) lt!225520))))))

(declare-fun b!541285 () Bool)

(declare-fun e!326896 () Bool)

(declare-fun e!326901 () Bool)

(assert (=> b!541285 (= e!326896 e!326901)))

(declare-fun res!230258 () Bool)

(assert (=> b!541285 (=> (not res!230258) (not e!326901))))

(get-info :version)

(assert (=> b!541285 (= res!230258 ((_ is Some!1338) lt!225545))))

(assert (=> b!541285 (= lt!225545 (maxPrefix!573 thiss!22590 rules!3103 input!2705))))

(declare-fun b!541286 () Bool)

(declare-fun res!230269 () Bool)

(assert (=> b!541286 (=> res!230269 e!326911)))

(assert (=> b!541286 (= res!230269 (not (= (getSuffix!154 input!2705 input!2705) Nil!5300)))))

(declare-fun e!326897 () Bool)

(assert (=> b!541287 (= e!326897 (and tp!172380 tp!172385))))

(declare-fun b!541288 () Bool)

(declare-fun res!230260 () Bool)

(declare-fun e!326891 () Bool)

(assert (=> b!541288 (=> (not res!230260) (not e!326891))))

(declare-fun isEmpty!3828 (List!5311) Bool)

(assert (=> b!541288 (= res!230260 (not (isEmpty!3828 rules!3103)))))

(declare-fun e!326894 () Bool)

(declare-fun tp!172382 () Bool)

(declare-fun b!541289 () Bool)

(declare-fun inv!6646 (String!6809) Bool)

(declare-fun inv!6649 (TokenValueInjection!1794) Bool)

(assert (=> b!541289 (= e!326890 (and tp!172382 (inv!6646 (tag!1251 (rule!1699 token!491))) (inv!6649 (transformation!989 (rule!1699 token!491))) e!326894))))

(declare-fun b!541290 () Bool)

(assert (=> b!541290 (= e!326909 e!326911)))

(declare-fun res!230282 () Bool)

(assert (=> b!541290 (=> res!230282 e!326911)))

(assert (=> b!541290 (= res!230282 (>= lt!225548 lt!225530))))

(declare-fun e!326912 () Bool)

(assert (=> b!541290 e!326912))

(declare-fun res!230262 () Bool)

(assert (=> b!541290 (=> (not res!230262) (not e!326912))))

(declare-fun maxPrefixOneRule!288 (LexerInterface!875 Rule!1778 List!5310) Option!1339)

(assert (=> b!541290 (= res!230262 (= (maxPrefixOneRule!288 thiss!22590 (rule!1699 token!491) lt!225535) (Some!1338 (tuple2!6353 (Token!1715 lt!225524 (rule!1699 token!491) lt!225530 lt!225541) suffix!1342))))))

(declare-fun lt!225546 () Unit!9261)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!40 (LexerInterface!875 List!5311 List!5310 List!5310 List!5310 Rule!1778) Unit!9261)

(assert (=> b!541290 (= lt!225546 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!40 thiss!22590 rules!3103 lt!225541 lt!225535 suffix!1342 (rule!1699 token!491)))))

(assert (=> b!541290 (= lt!225539 (Some!1338 (tuple2!6353 lt!225529 (_2!3440 (v!16149 lt!225545)))))))

(assert (=> b!541290 (= lt!225539 (maxPrefixOneRule!288 thiss!22590 (rule!1699 (_1!3440 (v!16149 lt!225545))) input!2705))))

(declare-fun lt!225540 () Unit!9261)

(assert (=> b!541290 (= lt!225540 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!40 thiss!22590 rules!3103 lt!225525 input!2705 (_2!3440 (v!16149 lt!225545)) (rule!1699 (_1!3440 (v!16149 lt!225545)))))))

(assert (=> b!541290 e!326916))

(declare-fun res!230270 () Bool)

(assert (=> b!541290 (=> (not res!230270) (not e!326916))))

(assert (=> b!541290 (= res!230270 (= (value!33053 token!491) lt!225524))))

(assert (=> b!541290 (= lt!225524 (apply!1264 (transformation!989 (rule!1699 token!491)) (seqFromList!1187 lt!225541)))))

(assert (=> b!541290 (= suffix!1342 lt!225520)))

(declare-fun lt!225534 () Unit!9261)

(assert (=> b!541290 (= lt!225534 (lemmaSamePrefixThenSameSuffix!358 lt!225541 suffix!1342 lt!225541 lt!225520 lt!225535))))

(assert (=> b!541290 (= lt!225520 (getSuffix!154 lt!225535 lt!225541))))

(declare-fun b!541291 () Bool)

(declare-fun tp!172386 () Bool)

(declare-fun e!326908 () Bool)

(assert (=> b!541291 (= e!326908 (and tp!172386 (inv!6646 (tag!1251 (h!10702 rules!3103))) (inv!6649 (transformation!989 (h!10702 rules!3103))) e!326897))))

(declare-fun b!541292 () Bool)

(assert (=> b!541292 (= e!326914 (and (= (size!4256 (_1!3440 (v!16149 lt!225545))) lt!225548) (= (originalCharacters!1028 (_1!3440 (v!16149 lt!225545))) lt!225525) (= lt!225538 (tuple2!6353 (Token!1715 lt!225527 (rule!1699 (_1!3440 (v!16149 lt!225545))) lt!225548 lt!225525) lt!225523))))))

(declare-fun b!541293 () Bool)

(declare-fun e!326913 () Bool)

(declare-fun e!326915 () Bool)

(assert (=> b!541293 (= e!326913 e!326915)))

(declare-fun res!230280 () Bool)

(assert (=> b!541293 (=> (not res!230280) (not e!326915))))

(assert (=> b!541293 (= res!230280 (isDefined!1151 lt!225545))))

(declare-fun b!541294 () Bool)

(declare-fun Unit!9264 () Unit!9261)

(assert (=> b!541294 (= e!326902 Unit!9264)))

(assert (=> b!541294 false))

(declare-fun b!541295 () Bool)

(declare-fun res!230281 () Bool)

(assert (=> b!541295 (=> res!230281 e!326911)))

(assert (=> b!541295 (= res!230281 (not (isPrefix!631 lt!225525 input!2705)))))

(declare-fun b!541296 () Bool)

(declare-fun res!230268 () Bool)

(assert (=> b!541296 (=> res!230268 e!326911)))

(declare-fun contains!1233 (List!5311 Rule!1778) Bool)

(assert (=> b!541296 (= res!230268 (not (contains!1233 rules!3103 (rule!1699 token!491))))))

(assert (=> b!541297 (= e!326894 (and tp!172381 tp!172379))))

(declare-fun res!230279 () Bool)

(assert (=> start!49948 (=> (not res!230279) (not e!326891))))

(assert (=> start!49948 (= res!230279 ((_ is Lexer!873) thiss!22590))))

(assert (=> start!49948 e!326891))

(assert (=> start!49948 e!326900))

(declare-fun e!326907 () Bool)

(assert (=> start!49948 e!326907))

(declare-fun inv!6650 (Token!1714) Bool)

(assert (=> start!49948 (and (inv!6650 token!491) e!326893)))

(assert (=> start!49948 true))

(declare-fun e!326906 () Bool)

(assert (=> start!49948 e!326906))

(declare-fun b!541279 () Bool)

(declare-fun res!230259 () Bool)

(assert (=> b!541279 (=> (not res!230259) (not e!326891))))

(declare-fun rulesInvariant!838 (LexerInterface!875 List!5311) Bool)

(assert (=> b!541279 (= res!230259 (rulesInvariant!838 thiss!22590 rules!3103))))

(declare-fun b!541298 () Bool)

(assert (=> b!541298 (= e!326895 e!326896)))

(declare-fun res!230275 () Bool)

(assert (=> b!541298 (=> (not res!230275) (not e!326896))))

(declare-fun lt!225531 () tuple2!6352)

(assert (=> b!541298 (= res!230275 (and (= (_1!3440 lt!225531) token!491) (= (_2!3440 lt!225531) suffix!1342)))))

(declare-fun get!1998 (Option!1339) tuple2!6352)

(assert (=> b!541298 (= lt!225531 (get!1998 lt!225543))))

(declare-fun b!541299 () Bool)

(assert (=> b!541299 (= e!326899 true)))

(declare-fun lt!225547 () Int)

(assert (=> b!541299 (= lt!225547 (size!4257 input!2705))))

(declare-fun b!541300 () Bool)

(declare-fun res!230273 () Bool)

(assert (=> b!541300 (=> (not res!230273) (not e!326916))))

(assert (=> b!541300 (= res!230273 (= (size!4256 token!491) (size!4257 (originalCharacters!1028 token!491))))))

(declare-fun b!541301 () Bool)

(declare-fun res!230274 () Bool)

(assert (=> b!541301 (=> (not res!230274) (not e!326914))))

(assert (=> b!541301 (= res!230274 (= (size!4256 (_1!3440 (v!16149 lt!225545))) (size!4257 (originalCharacters!1028 (_1!3440 (v!16149 lt!225545))))))))

(declare-fun b!541302 () Bool)

(assert (=> b!541302 (= e!326912 e!326913)))

(declare-fun res!230272 () Bool)

(assert (=> b!541302 (=> res!230272 e!326913)))

(assert (=> b!541302 (= res!230272 (>= lt!225548 lt!225530))))

(declare-fun b!541303 () Bool)

(declare-fun res!230278 () Bool)

(assert (=> b!541303 (=> res!230278 e!326903)))

(assert (=> b!541303 (= res!230278 (not (matchR!482 (regex!989 (rule!1699 (_1!3440 (v!16149 lt!225545)))) lt!225525)))))

(declare-fun b!541304 () Bool)

(declare-fun tp!172384 () Bool)

(assert (=> b!541304 (= e!326906 (and tp_is_empty!3001 tp!172384))))

(declare-fun b!541305 () Bool)

(declare-fun tp!172383 () Bool)

(assert (=> b!541305 (= e!326907 (and e!326908 tp!172383))))

(declare-fun b!541306 () Bool)

(declare-fun res!230255 () Bool)

(assert (=> b!541306 (=> (not res!230255) (not e!326891))))

(declare-fun isEmpty!3829 (List!5310) Bool)

(assert (=> b!541306 (= res!230255 (not (isEmpty!3829 input!2705)))))

(declare-fun b!541307 () Bool)

(assert (=> b!541307 (= e!326915 (= (_1!3440 (get!1998 lt!225545)) (_1!3440 (v!16149 lt!225545))))))

(declare-fun b!541308 () Bool)

(assert (=> b!541308 (= e!326901 e!326892)))

(declare-fun res!230266 () Bool)

(assert (=> b!541308 (=> (not res!230266) (not e!326892))))

(assert (=> b!541308 (= res!230266 (= lt!225544 lt!225535))))

(assert (=> b!541308 (= lt!225544 (++!1477 lt!225541 suffix!1342))))

(declare-fun b!541309 () Bool)

(declare-fun res!230276 () Bool)

(assert (=> b!541309 (=> res!230276 e!326911)))

(assert (=> b!541309 (= res!230276 (not (= (++!1477 lt!225525 lt!225523) input!2705)))))

(declare-fun b!541310 () Bool)

(assert (=> b!541310 (= e!326891 e!326910)))

(declare-fun res!230271 () Bool)

(assert (=> b!541310 (=> (not res!230271) (not e!326910))))

(assert (=> b!541310 (= res!230271 (= lt!225541 input!2705))))

(assert (=> b!541310 (= lt!225541 (list!2199 (charsOf!618 token!491)))))

(declare-fun b!541311 () Bool)

(assert (=> b!541311 (= e!326911 e!326903)))

(declare-fun res!230263 () Bool)

(assert (=> b!541311 (=> res!230263 e!326903)))

(assert (=> b!541311 (= res!230263 (not (contains!1233 rules!3103 (rule!1699 (_1!3440 (v!16149 lt!225545))))))))

(assert (=> b!541311 (= lt!225523 (_2!3440 (v!16149 lt!225545)))))

(assert (= (and start!49948 res!230279) b!541288))

(assert (= (and b!541288 res!230260) b!541279))

(assert (= (and b!541279 res!230259) b!541306))

(assert (= (and b!541306 res!230255) b!541310))

(assert (= (and b!541310 res!230271) b!541276))

(assert (= (and b!541276 res!230264) b!541298))

(assert (= (and b!541298 res!230275) b!541285))

(assert (= (and b!541285 res!230258) b!541308))

(assert (= (and b!541308 res!230266) b!541283))

(assert (= (and b!541283 c!102435) b!541294))

(assert (= (and b!541283 (not c!102435)) b!541275))

(assert (= (and b!541283 res!230261) b!541301))

(assert (= (and b!541301 res!230274) b!541292))

(assert (= (and b!541283 (not res!230277)) b!541290))

(assert (= (and b!541290 res!230270) b!541300))

(assert (= (and b!541300 res!230273) b!541284))

(assert (= (and b!541290 res!230262) b!541302))

(assert (= (and b!541302 (not res!230272)) b!541293))

(assert (= (and b!541293 res!230280) b!541307))

(assert (= (and b!541290 (not res!230282)) b!541296))

(assert (= (and b!541296 (not res!230268)) b!541280))

(assert (= (and b!541280 (not res!230265)) b!541281))

(assert (= (and b!541281 (not res!230256)) b!541286))

(assert (= (and b!541286 (not res!230269)) b!541277))

(assert (= (and b!541277 (not res!230257)) b!541295))

(assert (= (and b!541295 (not res!230281)) b!541309))

(assert (= (and b!541309 (not res!230276)) b!541311))

(assert (= (and b!541311 (not res!230263)) b!541303))

(assert (= (and b!541303 (not res!230278)) b!541274))

(assert (= (and b!541274 (not res!230267)) b!541299))

(assert (= (and start!49948 ((_ is Cons!5300) suffix!1342)) b!541282))

(assert (= b!541291 b!541287))

(assert (= b!541305 b!541291))

(assert (= (and start!49948 ((_ is Cons!5301) rules!3103)) b!541305))

(assert (= b!541289 b!541297))

(assert (= b!541278 b!541289))

(assert (= start!49948 b!541278))

(assert (= (and start!49948 ((_ is Cons!5300) input!2705)) b!541304))

(declare-fun m!788947 () Bool)

(assert (=> b!541293 m!788947))

(declare-fun m!788949 () Bool)

(assert (=> b!541303 m!788949))

(declare-fun m!788951 () Bool)

(assert (=> b!541310 m!788951))

(assert (=> b!541310 m!788951))

(declare-fun m!788953 () Bool)

(assert (=> b!541310 m!788953))

(declare-fun m!788955 () Bool)

(assert (=> b!541307 m!788955))

(declare-fun m!788957 () Bool)

(assert (=> b!541278 m!788957))

(declare-fun m!788959 () Bool)

(assert (=> b!541309 m!788959))

(declare-fun m!788961 () Bool)

(assert (=> b!541311 m!788961))

(declare-fun m!788963 () Bool)

(assert (=> b!541276 m!788963))

(declare-fun m!788965 () Bool)

(assert (=> b!541276 m!788965))

(declare-fun m!788967 () Bool)

(assert (=> b!541276 m!788967))

(declare-fun m!788969 () Bool)

(assert (=> b!541290 m!788969))

(declare-fun m!788971 () Bool)

(assert (=> b!541290 m!788971))

(declare-fun m!788973 () Bool)

(assert (=> b!541290 m!788973))

(declare-fun m!788975 () Bool)

(assert (=> b!541290 m!788975))

(declare-fun m!788977 () Bool)

(assert (=> b!541290 m!788977))

(declare-fun m!788979 () Bool)

(assert (=> b!541290 m!788979))

(declare-fun m!788981 () Bool)

(assert (=> b!541290 m!788981))

(assert (=> b!541290 m!788981))

(declare-fun m!788983 () Bool)

(assert (=> b!541290 m!788983))

(declare-fun m!788985 () Bool)

(assert (=> b!541306 m!788985))

(declare-fun m!788987 () Bool)

(assert (=> b!541300 m!788987))

(declare-fun m!788989 () Bool)

(assert (=> b!541301 m!788989))

(declare-fun m!788991 () Bool)

(assert (=> b!541296 m!788991))

(declare-fun m!788993 () Bool)

(assert (=> b!541279 m!788993))

(declare-fun m!788995 () Bool)

(assert (=> b!541289 m!788995))

(declare-fun m!788997 () Bool)

(assert (=> b!541289 m!788997))

(declare-fun m!788999 () Bool)

(assert (=> b!541285 m!788999))

(declare-fun m!789001 () Bool)

(assert (=> b!541280 m!789001))

(declare-fun m!789003 () Bool)

(assert (=> b!541274 m!789003))

(declare-fun m!789005 () Bool)

(assert (=> b!541308 m!789005))

(declare-fun m!789007 () Bool)

(assert (=> b!541288 m!789007))

(declare-fun m!789009 () Bool)

(assert (=> b!541298 m!789009))

(declare-fun m!789011 () Bool)

(assert (=> b!541283 m!789011))

(declare-fun m!789013 () Bool)

(assert (=> b!541283 m!789013))

(declare-fun m!789015 () Bool)

(assert (=> b!541283 m!789015))

(declare-fun m!789017 () Bool)

(assert (=> b!541283 m!789017))

(declare-fun m!789019 () Bool)

(assert (=> b!541283 m!789019))

(declare-fun m!789021 () Bool)

(assert (=> b!541283 m!789021))

(declare-fun m!789023 () Bool)

(assert (=> b!541283 m!789023))

(declare-fun m!789025 () Bool)

(assert (=> b!541283 m!789025))

(declare-fun m!789027 () Bool)

(assert (=> b!541283 m!789027))

(declare-fun m!789029 () Bool)

(assert (=> b!541283 m!789029))

(declare-fun m!789031 () Bool)

(assert (=> b!541283 m!789031))

(declare-fun m!789033 () Bool)

(assert (=> b!541283 m!789033))

(declare-fun m!789035 () Bool)

(assert (=> b!541283 m!789035))

(declare-fun m!789037 () Bool)

(assert (=> b!541283 m!789037))

(declare-fun m!789039 () Bool)

(assert (=> b!541283 m!789039))

(declare-fun m!789041 () Bool)

(assert (=> b!541283 m!789041))

(declare-fun m!789043 () Bool)

(assert (=> b!541283 m!789043))

(assert (=> b!541283 m!789023))

(declare-fun m!789045 () Bool)

(assert (=> b!541283 m!789045))

(declare-fun m!789047 () Bool)

(assert (=> b!541283 m!789047))

(declare-fun m!789049 () Bool)

(assert (=> b!541283 m!789049))

(declare-fun m!789051 () Bool)

(assert (=> b!541283 m!789051))

(declare-fun m!789053 () Bool)

(assert (=> b!541283 m!789053))

(declare-fun m!789055 () Bool)

(assert (=> b!541283 m!789055))

(declare-fun m!789057 () Bool)

(assert (=> b!541283 m!789057))

(declare-fun m!789059 () Bool)

(assert (=> b!541283 m!789059))

(declare-fun m!789061 () Bool)

(assert (=> b!541283 m!789061))

(declare-fun m!789063 () Bool)

(assert (=> b!541283 m!789063))

(declare-fun m!789065 () Bool)

(assert (=> b!541291 m!789065))

(declare-fun m!789067 () Bool)

(assert (=> b!541291 m!789067))

(declare-fun m!789069 () Bool)

(assert (=> b!541286 m!789069))

(declare-fun m!789071 () Bool)

(assert (=> b!541299 m!789071))

(declare-fun m!789073 () Bool)

(assert (=> b!541295 m!789073))

(declare-fun m!789075 () Bool)

(assert (=> start!49948 m!789075))

(declare-fun m!789077 () Bool)

(assert (=> b!541281 m!789077))

(check-sat (not b!541282) (not b!541299) (not b!541301) (not b!541289) (not b!541309) (not b!541276) (not b!541303) b_and!52877 tp_is_empty!3001 (not b!541286) (not b!541291) (not b!541281) (not b_next!14981) (not b!541308) (not b!541290) (not b!541279) (not b!541304) b_and!52875 (not b!541278) (not b!541295) (not b!541307) (not b!541288) (not b!541293) (not b!541311) (not b_next!14979) (not b!541296) (not b!541283) (not b!541274) (not start!49948) b_and!52881 (not b!541306) (not b!541310) (not b_next!14977) (not b!541285) b_and!52879 (not b!541300) (not b!541305) (not b_next!14983) (not b!541280) (not b!541298))
(check-sat (not b_next!14981) b_and!52875 (not b_next!14979) b_and!52881 b_and!52877 (not b_next!14983) (not b_next!14977) b_and!52879)
