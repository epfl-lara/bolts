; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374856 () Bool)

(assert start!374856)

(declare-fun b!3983183 () Bool)

(declare-fun b_free!110593 () Bool)

(declare-fun b_next!111297 () Bool)

(assert (=> b!3983183 (= b_free!110593 (not b_next!111297))))

(declare-fun tp!1214090 () Bool)

(declare-fun b_and!306143 () Bool)

(assert (=> b!3983183 (= tp!1214090 b_and!306143)))

(declare-fun b_free!110595 () Bool)

(declare-fun b_next!111299 () Bool)

(assert (=> b!3983183 (= b_free!110595 (not b_next!111299))))

(declare-fun tp!1214093 () Bool)

(declare-fun b_and!306145 () Bool)

(assert (=> b!3983183 (= tp!1214093 b_and!306145)))

(declare-fun b!3983202 () Bool)

(declare-fun b_free!110597 () Bool)

(declare-fun b_next!111301 () Bool)

(assert (=> b!3983202 (= b_free!110597 (not b_next!111301))))

(declare-fun tp!1214091 () Bool)

(declare-fun b_and!306147 () Bool)

(assert (=> b!3983202 (= tp!1214091 b_and!306147)))

(declare-fun b_free!110599 () Bool)

(declare-fun b_next!111303 () Bool)

(assert (=> b!3983202 (= b_free!110599 (not b_next!111303))))

(declare-fun tp!1214100 () Bool)

(declare-fun b_and!306149 () Bool)

(assert (=> b!3983202 (= tp!1214100 b_and!306149)))

(declare-fun b!3983165 () Bool)

(declare-fun e!2468684 () Bool)

(declare-fun e!2468674 () Bool)

(assert (=> b!3983165 (= e!2468684 e!2468674)))

(declare-fun res!1614793 () Bool)

(assert (=> b!3983165 (=> res!1614793 e!2468674)))

(declare-datatypes ((C!23456 0))(
  ( (C!23457 (val!13822 Int)) )
))
(declare-datatypes ((List!42718 0))(
  ( (Nil!42594) (Cons!42594 (h!48014 C!23456) (t!331421 List!42718)) )
))
(declare-datatypes ((IArray!25887 0))(
  ( (IArray!25888 (innerList!13001 List!42718)) )
))
(declare-datatypes ((Conc!12941 0))(
  ( (Node!12941 (left!32204 Conc!12941) (right!32534 Conc!12941) (csize!26112 Int) (cheight!13152 Int)) (Leaf!20013 (xs!16247 IArray!25887) (csize!26113 Int)) (Empty!12941) )
))
(declare-datatypes ((BalanceConc!25476 0))(
  ( (BalanceConc!25477 (c!689868 Conc!12941)) )
))
(declare-datatypes ((List!42719 0))(
  ( (Nil!42595) (Cons!42595 (h!48015 (_ BitVec 16)) (t!331422 List!42719)) )
))
(declare-datatypes ((TokenValue!6960 0))(
  ( (FloatLiteralValue!13920 (text!49165 List!42719)) (TokenValueExt!6959 (__x!26137 Int)) (Broken!34800 (value!212413 List!42719)) (Object!7083) (End!6960) (Def!6960) (Underscore!6960) (Match!6960) (Else!6960) (Error!6960) (Case!6960) (If!6960) (Extends!6960) (Abstract!6960) (Class!6960) (Val!6960) (DelimiterValue!13920 (del!7020 List!42719)) (KeywordValue!6966 (value!212414 List!42719)) (CommentValue!13920 (value!212415 List!42719)) (WhitespaceValue!13920 (value!212416 List!42719)) (IndentationValue!6960 (value!212417 List!42719)) (String!48517) (Int32!6960) (Broken!34801 (value!212418 List!42719)) (Boolean!6961) (Unit!61267) (OperatorValue!6963 (op!7020 List!42719)) (IdentifierValue!13920 (value!212419 List!42719)) (IdentifierValue!13921 (value!212420 List!42719)) (WhitespaceValue!13921 (value!212421 List!42719)) (True!13920) (False!13920) (Broken!34802 (value!212422 List!42719)) (Broken!34803 (value!212423 List!42719)) (True!13921) (RightBrace!6960) (RightBracket!6960) (Colon!6960) (Null!6960) (Comma!6960) (LeftBracket!6960) (False!13921) (LeftBrace!6960) (ImaginaryLiteralValue!6960 (text!49166 List!42719)) (StringLiteralValue!20880 (value!212424 List!42719)) (EOFValue!6960 (value!212425 List!42719)) (IdentValue!6960 (value!212426 List!42719)) (DelimiterValue!13921 (value!212427 List!42719)) (DedentValue!6960 (value!212428 List!42719)) (NewLineValue!6960 (value!212429 List!42719)) (IntegerValue!20880 (value!212430 (_ BitVec 32)) (text!49167 List!42719)) (IntegerValue!20881 (value!212431 Int) (text!49168 List!42719)) (Times!6960) (Or!6960) (Equal!6960) (Minus!6960) (Broken!34804 (value!212432 List!42719)) (And!6960) (Div!6960) (LessEqual!6960) (Mod!6960) (Concat!18595) (Not!6960) (Plus!6960) (SpaceValue!6960 (value!212433 List!42719)) (IntegerValue!20882 (value!212434 Int) (text!49169 List!42719)) (StringLiteralValue!20881 (text!49170 List!42719)) (FloatLiteralValue!13921 (text!49171 List!42719)) (BytesLiteralValue!6960 (value!212435 List!42719)) (CommentValue!13921 (value!212436 List!42719)) (StringLiteralValue!20882 (value!212437 List!42719)) (ErrorTokenValue!6960 (msg!7021 List!42719)) )
))
(declare-datatypes ((Regex!11635 0))(
  ( (ElementMatch!11635 (c!689869 C!23456)) (Concat!18596 (regOne!23782 Regex!11635) (regTwo!23782 Regex!11635)) (EmptyExpr!11635) (Star!11635 (reg!11964 Regex!11635)) (EmptyLang!11635) (Union!11635 (regOne!23783 Regex!11635) (regTwo!23783 Regex!11635)) )
))
(declare-datatypes ((String!48518 0))(
  ( (String!48519 (value!212438 String)) )
))
(declare-datatypes ((TokenValueInjection!13348 0))(
  ( (TokenValueInjection!13349 (toValue!9218 Int) (toChars!9077 Int)) )
))
(declare-datatypes ((Rule!13260 0))(
  ( (Rule!13261 (regex!6730 Regex!11635) (tag!7590 String!48518) (isSeparator!6730 Bool) (transformation!6730 TokenValueInjection!13348)) )
))
(declare-datatypes ((Token!12598 0))(
  ( (Token!12599 (value!212439 TokenValue!6960) (rule!9738 Rule!13260) (size!31860 Int) (originalCharacters!7330 List!42718)) )
))
(declare-fun token!484 () Token!12598)

(declare-fun lt!1400541 () List!42718)

(declare-fun matchR!5612 (Regex!11635 List!42718) Bool)

(assert (=> b!3983165 (= res!1614793 (not (matchR!5612 (regex!6730 (rule!9738 token!484)) lt!1400541)))))

(declare-fun lt!1400536 () List!42718)

(declare-fun isPrefix!3817 (List!42718 List!42718) Bool)

(assert (=> b!3983165 (isPrefix!3817 lt!1400541 lt!1400536)))

(declare-fun prefix!494 () List!42718)

(declare-datatypes ((Unit!61268 0))(
  ( (Unit!61269) )
))
(declare-fun lt!1400560 () Unit!61268)

(declare-fun newSuffix!27 () List!42718)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!650 (List!42718 List!42718 List!42718) Unit!61268)

(assert (=> b!3983165 (= lt!1400560 (lemmaPrefixStaysPrefixWhenAddingToSuffix!650 lt!1400541 prefix!494 newSuffix!27))))

(declare-fun lt!1400521 () Unit!61268)

(declare-fun suffix!1299 () List!42718)

(assert (=> b!3983165 (= lt!1400521 (lemmaPrefixStaysPrefixWhenAddingToSuffix!650 lt!1400541 prefix!494 suffix!1299))))

(declare-fun b!3983166 () Bool)

(declare-fun e!2468659 () Bool)

(declare-fun e!2468662 () Bool)

(assert (=> b!3983166 (= e!2468659 e!2468662)))

(declare-fun res!1614792 () Bool)

(assert (=> b!3983166 (=> res!1614792 e!2468662)))

(declare-datatypes ((tuple2!41812 0))(
  ( (tuple2!41813 (_1!24040 Token!12598) (_2!24040 List!42718)) )
))
(declare-datatypes ((Option!9144 0))(
  ( (None!9143) (Some!9143 (v!39491 tuple2!41812)) )
))
(declare-fun lt!1400533 () Option!9144)

(get-info :version)

(assert (=> b!3983166 (= res!1614792 (not ((_ is Some!9143) lt!1400533)))))

(declare-datatypes ((LexerInterface!6319 0))(
  ( (LexerInterfaceExt!6316 (__x!26138 Int)) (Lexer!6317) )
))
(declare-fun thiss!21717 () LexerInterface!6319)

(declare-datatypes ((List!42720 0))(
  ( (Nil!42596) (Cons!42596 (h!48016 Rule!13260) (t!331423 List!42720)) )
))
(declare-fun rules!2999 () List!42720)

(declare-fun maxPrefix!3617 (LexerInterface!6319 List!42720 List!42718) Option!9144)

(assert (=> b!3983166 (= lt!1400533 (maxPrefix!3617 thiss!21717 rules!2999 lt!1400536))))

(declare-fun suffixResult!105 () List!42718)

(declare-fun lt!1400568 () List!42718)

(declare-fun lt!1400530 () Token!12598)

(declare-fun lt!1400519 () tuple2!41812)

(assert (=> b!3983166 (and (= suffixResult!105 lt!1400568) (= lt!1400519 (tuple2!41813 lt!1400530 lt!1400568)))))

(declare-fun lt!1400570 () Unit!61268)

(declare-fun lt!1400551 () List!42718)

(declare-fun lemmaSamePrefixThenSameSuffix!2004 (List!42718 List!42718 List!42718 List!42718 List!42718) Unit!61268)

(assert (=> b!3983166 (= lt!1400570 (lemmaSamePrefixThenSameSuffix!2004 lt!1400541 suffixResult!105 lt!1400541 lt!1400568 lt!1400551))))

(declare-fun lt!1400548 () List!42718)

(assert (=> b!3983166 (isPrefix!3817 lt!1400541 lt!1400548)))

(declare-fun lt!1400554 () Unit!61268)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2660 (List!42718 List!42718) Unit!61268)

(assert (=> b!3983166 (= lt!1400554 (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400541 lt!1400568))))

(declare-fun b!3983167 () Bool)

(declare-fun e!2468673 () Bool)

(declare-fun e!2468680 () Bool)

(assert (=> b!3983167 (= e!2468673 e!2468680)))

(declare-fun res!1614814 () Bool)

(assert (=> b!3983167 (=> (not res!1614814) (not e!2468680))))

(declare-fun lt!1400526 () List!42718)

(assert (=> b!3983167 (= res!1614814 (= lt!1400526 lt!1400536))))

(declare-fun ++!11132 (List!42718 List!42718) List!42718)

(assert (=> b!3983167 (= lt!1400536 (++!11132 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42718)

(assert (=> b!3983167 (= lt!1400526 (++!11132 lt!1400541 newSuffixResult!27))))

(declare-fun b!3983168 () Bool)

(declare-fun e!2468666 () Bool)

(assert (=> b!3983168 (= e!2468666 e!2468673)))

(declare-fun res!1614809 () Bool)

(assert (=> b!3983168 (=> (not res!1614809) (not e!2468673))))

(declare-fun lt!1400543 () Int)

(declare-fun lt!1400564 () Int)

(assert (=> b!3983168 (= res!1614809 (>= lt!1400543 lt!1400564))))

(declare-fun size!31861 (List!42718) Int)

(assert (=> b!3983168 (= lt!1400564 (size!31861 lt!1400541))))

(assert (=> b!3983168 (= lt!1400543 (size!31861 prefix!494))))

(declare-fun list!15810 (BalanceConc!25476) List!42718)

(declare-fun charsOf!4546 (Token!12598) BalanceConc!25476)

(assert (=> b!3983168 (= lt!1400541 (list!15810 (charsOf!4546 token!484)))))

(declare-fun e!2468685 () Bool)

(declare-fun tp!1214101 () Bool)

(declare-fun e!2468688 () Bool)

(declare-fun b!3983169 () Bool)

(declare-fun inv!56895 (String!48518) Bool)

(declare-fun inv!56898 (TokenValueInjection!13348) Bool)

(assert (=> b!3983169 (= e!2468688 (and tp!1214101 (inv!56895 (tag!7590 (h!48016 rules!2999))) (inv!56898 (transformation!6730 (h!48016 rules!2999))) e!2468685))))

(declare-fun b!3983170 () Bool)

(declare-fun res!1614798 () Bool)

(assert (=> b!3983170 (=> (not res!1614798) (not e!2468666))))

(declare-fun isEmpty!25462 (List!42720) Bool)

(assert (=> b!3983170 (= res!1614798 (not (isEmpty!25462 rules!2999)))))

(declare-fun res!1614803 () Bool)

(assert (=> start!374856 (=> (not res!1614803) (not e!2468666))))

(assert (=> start!374856 (= res!1614803 ((_ is Lexer!6317) thiss!21717))))

(assert (=> start!374856 e!2468666))

(declare-fun e!2468664 () Bool)

(assert (=> start!374856 e!2468664))

(declare-fun e!2468681 () Bool)

(declare-fun inv!56899 (Token!12598) Bool)

(assert (=> start!374856 (and (inv!56899 token!484) e!2468681)))

(declare-fun e!2468669 () Bool)

(assert (=> start!374856 e!2468669))

(declare-fun e!2468667 () Bool)

(assert (=> start!374856 e!2468667))

(declare-fun e!2468663 () Bool)

(assert (=> start!374856 e!2468663))

(assert (=> start!374856 true))

(declare-fun e!2468672 () Bool)

(assert (=> start!374856 e!2468672))

(declare-fun e!2468658 () Bool)

(assert (=> start!374856 e!2468658))

(declare-fun b!3983171 () Bool)

(declare-fun res!1614816 () Bool)

(assert (=> b!3983171 (=> (not res!1614816) (not e!2468666))))

(assert (=> b!3983171 (= res!1614816 (>= (size!31861 suffix!1299) (size!31861 newSuffix!27)))))

(declare-fun b!3983172 () Bool)

(declare-fun res!1614797 () Bool)

(declare-fun e!2468671 () Bool)

(assert (=> b!3983172 (=> res!1614797 e!2468671)))

(declare-fun lt!1400569 () List!42718)

(assert (=> b!3983172 (= res!1614797 (not (= lt!1400569 lt!1400536)))))

(declare-fun b!3983173 () Bool)

(declare-fun res!1614802 () Bool)

(declare-fun e!2468679 () Bool)

(assert (=> b!3983173 (=> res!1614802 e!2468679)))

(declare-fun contains!8475 (List!42720 Rule!13260) Bool)

(assert (=> b!3983173 (= res!1614802 (not (contains!8475 rules!2999 (rule!9738 token!484))))))

(declare-fun b!3983174 () Bool)

(declare-fun res!1614801 () Bool)

(assert (=> b!3983174 (=> res!1614801 e!2468679)))

(assert (=> b!3983174 (= res!1614801 (not (contains!8475 rules!2999 (rule!9738 (_1!24040 (v!39491 lt!1400533))))))))

(declare-fun b!3983175 () Bool)

(declare-fun res!1614790 () Bool)

(assert (=> b!3983175 (=> res!1614790 e!2468679)))

(declare-fun lt!1400544 () List!42718)

(assert (=> b!3983175 (= res!1614790 (not (isPrefix!3817 lt!1400544 lt!1400536)))))

(declare-fun b!3983176 () Bool)

(declare-fun res!1614807 () Bool)

(declare-fun e!2468660 () Bool)

(assert (=> b!3983176 (=> (not res!1614807) (not e!2468660))))

(assert (=> b!3983176 (= res!1614807 (= (size!31860 token!484) (size!31861 (originalCharacters!7330 token!484))))))

(declare-fun b!3983177 () Bool)

(declare-fun res!1614795 () Bool)

(assert (=> b!3983177 (=> (not res!1614795) (not e!2468660))))

(declare-fun lt!1400522 () TokenValue!6960)

(assert (=> b!3983177 (= res!1614795 (= (value!212439 token!484) lt!1400522))))

(declare-fun b!3983178 () Bool)

(declare-fun tp_is_empty!20241 () Bool)

(declare-fun tp!1214099 () Bool)

(assert (=> b!3983178 (= e!2468658 (and tp_is_empty!20241 tp!1214099))))

(declare-fun b!3983179 () Bool)

(declare-fun e!2468689 () Bool)

(declare-fun e!2468676 () Bool)

(assert (=> b!3983179 (= e!2468689 e!2468676)))

(declare-fun res!1614811 () Bool)

(assert (=> b!3983179 (=> res!1614811 e!2468676)))

(declare-fun lt!1400563 () List!42718)

(assert (=> b!3983179 (= res!1614811 (not (= lt!1400563 suffix!1299)))))

(declare-fun lt!1400546 () List!42718)

(assert (=> b!3983179 (= lt!1400563 (++!11132 newSuffix!27 lt!1400546))))

(declare-fun getSuffix!2248 (List!42718 List!42718) List!42718)

(assert (=> b!3983179 (= lt!1400546 (getSuffix!2248 suffix!1299 newSuffix!27))))

(declare-fun b!3983180 () Bool)

(declare-fun res!1614810 () Bool)

(assert (=> b!3983180 (=> (not res!1614810) (not e!2468666))))

(assert (=> b!3983180 (= res!1614810 (isPrefix!3817 newSuffix!27 suffix!1299))))

(declare-fun b!3983181 () Bool)

(declare-fun tp!1214095 () Bool)

(assert (=> b!3983181 (= e!2468669 (and tp_is_empty!20241 tp!1214095))))

(declare-fun b!3983182 () Bool)

(declare-fun e!2468683 () Bool)

(declare-fun e!2468690 () Bool)

(assert (=> b!3983182 (= e!2468683 e!2468690)))

(declare-fun res!1614805 () Bool)

(assert (=> b!3983182 (=> res!1614805 e!2468690)))

(declare-fun lt!1400523 () List!42718)

(assert (=> b!3983182 (= res!1614805 (not (= lt!1400523 prefix!494)))))

(declare-fun lt!1400520 () List!42718)

(assert (=> b!3983182 (= lt!1400523 (++!11132 lt!1400541 lt!1400520))))

(assert (=> b!3983182 (= lt!1400520 (getSuffix!2248 prefix!494 lt!1400541))))

(assert (=> b!3983182 (isPrefix!3817 lt!1400541 prefix!494)))

(declare-fun lt!1400527 () Unit!61268)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!395 (List!42718 List!42718 List!42718) Unit!61268)

(assert (=> b!3983182 (= lt!1400527 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!395 prefix!494 lt!1400541 lt!1400551))))

(declare-fun e!2468687 () Bool)

(assert (=> b!3983183 (= e!2468687 (and tp!1214090 tp!1214093))))

(declare-fun b!3983184 () Bool)

(assert (=> b!3983184 (= e!2468662 e!2468689)))

(declare-fun res!1614800 () Bool)

(assert (=> b!3983184 (=> res!1614800 e!2468689)))

(declare-fun lt!1400532 () Option!9144)

(assert (=> b!3983184 (= res!1614800 (not (= lt!1400532 (Some!9143 (v!39491 lt!1400533)))))))

(assert (=> b!3983184 (isPrefix!3817 lt!1400544 (++!11132 lt!1400544 newSuffixResult!27))))

(declare-fun lt!1400518 () Unit!61268)

(assert (=> b!3983184 (= lt!1400518 (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400544 newSuffixResult!27))))

(assert (=> b!3983184 (isPrefix!3817 lt!1400544 lt!1400569)))

(assert (=> b!3983184 (= lt!1400569 (++!11132 lt!1400544 (_2!24040 (v!39491 lt!1400533))))))

(declare-fun lt!1400555 () Unit!61268)

(assert (=> b!3983184 (= lt!1400555 (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400544 (_2!24040 (v!39491 lt!1400533))))))

(declare-fun lt!1400540 () Int)

(declare-fun lt!1400566 () TokenValue!6960)

(assert (=> b!3983184 (= lt!1400532 (Some!9143 (tuple2!41813 (Token!12599 lt!1400566 (rule!9738 (_1!24040 (v!39491 lt!1400533))) lt!1400540 lt!1400544) (_2!24040 (v!39491 lt!1400533)))))))

(declare-fun maxPrefixOneRule!2651 (LexerInterface!6319 Rule!13260 List!42718) Option!9144)

(assert (=> b!3983184 (= lt!1400532 (maxPrefixOneRule!2651 thiss!21717 (rule!9738 (_1!24040 (v!39491 lt!1400533))) lt!1400536))))

(assert (=> b!3983184 (= lt!1400540 (size!31861 lt!1400544))))

(declare-fun apply!9941 (TokenValueInjection!13348 BalanceConc!25476) TokenValue!6960)

(declare-fun seqFromList!4969 (List!42718) BalanceConc!25476)

(assert (=> b!3983184 (= lt!1400566 (apply!9941 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) (seqFromList!4969 lt!1400544)))))

(declare-fun lt!1400529 () Unit!61268)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1473 (LexerInterface!6319 List!42720 List!42718 List!42718 List!42718 Rule!13260) Unit!61268)

(assert (=> b!3983184 (= lt!1400529 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1473 thiss!21717 rules!2999 lt!1400544 lt!1400536 (_2!24040 (v!39491 lt!1400533)) (rule!9738 (_1!24040 (v!39491 lt!1400533)))))))

(assert (=> b!3983184 (= lt!1400544 (list!15810 (charsOf!4546 (_1!24040 (v!39491 lt!1400533)))))))

(declare-fun lt!1400558 () Unit!61268)

(declare-fun lemmaInv!945 (TokenValueInjection!13348) Unit!61268)

(assert (=> b!3983184 (= lt!1400558 (lemmaInv!945 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533))))))))

(declare-fun ruleValid!2662 (LexerInterface!6319 Rule!13260) Bool)

(assert (=> b!3983184 (ruleValid!2662 thiss!21717 (rule!9738 (_1!24040 (v!39491 lt!1400533))))))

(declare-fun lt!1400549 () Unit!61268)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1736 (LexerInterface!6319 Rule!13260 List!42720) Unit!61268)

(assert (=> b!3983184 (= lt!1400549 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1736 thiss!21717 (rule!9738 (_1!24040 (v!39491 lt!1400533))) rules!2999))))

(declare-fun lt!1400562 () Unit!61268)

(declare-fun lemmaCharactersSize!1325 (Token!12598) Unit!61268)

(assert (=> b!3983184 (= lt!1400562 (lemmaCharactersSize!1325 token!484))))

(declare-fun lt!1400531 () Unit!61268)

(assert (=> b!3983184 (= lt!1400531 (lemmaCharactersSize!1325 (_1!24040 (v!39491 lt!1400533))))))

(declare-fun b!3983185 () Bool)

(declare-fun e!2468675 () Bool)

(assert (=> b!3983185 (= e!2468676 e!2468675)))

(declare-fun res!1614794 () Bool)

(assert (=> b!3983185 (=> res!1614794 e!2468675)))

(declare-fun lt!1400535 () List!42718)

(assert (=> b!3983185 (= res!1614794 (not (= lt!1400535 lt!1400551)))))

(assert (=> b!3983185 (= lt!1400535 (++!11132 prefix!494 lt!1400563))))

(assert (=> b!3983185 (= lt!1400535 (++!11132 lt!1400536 lt!1400546))))

(declare-fun lt!1400528 () Unit!61268)

(declare-fun lemmaConcatAssociativity!2452 (List!42718 List!42718 List!42718) Unit!61268)

(assert (=> b!3983185 (= lt!1400528 (lemmaConcatAssociativity!2452 prefix!494 newSuffix!27 lt!1400546))))

(declare-fun b!3983186 () Bool)

(assert (=> b!3983186 (= e!2468660 (and (= (size!31860 token!484) lt!1400564) (= (originalCharacters!7330 token!484) lt!1400541)))))

(declare-fun b!3983187 () Bool)

(declare-fun tp!1214098 () Bool)

(assert (=> b!3983187 (= e!2468663 (and tp_is_empty!20241 tp!1214098))))

(declare-fun b!3983188 () Bool)

(declare-fun e!2468677 () Bool)

(declare-fun tp!1214094 () Bool)

(declare-fun inv!21 (TokenValue!6960) Bool)

(assert (=> b!3983188 (= e!2468681 (and (inv!21 (value!212439 token!484)) e!2468677 tp!1214094))))

(declare-fun b!3983189 () Bool)

(declare-fun tp!1214092 () Bool)

(assert (=> b!3983189 (= e!2468667 (and tp_is_empty!20241 tp!1214092))))

(declare-fun tp!1214102 () Bool)

(declare-fun b!3983190 () Bool)

(assert (=> b!3983190 (= e!2468677 (and tp!1214102 (inv!56895 (tag!7590 (rule!9738 token!484))) (inv!56898 (transformation!6730 (rule!9738 token!484))) e!2468687))))

(declare-fun b!3983191 () Bool)

(declare-fun tp!1214097 () Bool)

(assert (=> b!3983191 (= e!2468672 (and e!2468688 tp!1214097))))

(declare-fun b!3983192 () Bool)

(declare-fun e!2468661 () Bool)

(assert (=> b!3983192 (= e!2468661 e!2468683)))

(declare-fun res!1614806 () Bool)

(assert (=> b!3983192 (=> res!1614806 e!2468683)))

(assert (=> b!3983192 (= res!1614806 (not (isPrefix!3817 lt!1400541 lt!1400551)))))

(assert (=> b!3983192 (isPrefix!3817 prefix!494 lt!1400551)))

(declare-fun lt!1400557 () Unit!61268)

(assert (=> b!3983192 (= lt!1400557 (lemmaConcatTwoListThenFirstIsPrefix!2660 prefix!494 suffix!1299))))

(declare-fun lt!1400556 () List!42718)

(assert (=> b!3983192 (isPrefix!3817 lt!1400541 lt!1400556)))

(declare-fun lt!1400545 () Unit!61268)

(assert (=> b!3983192 (= lt!1400545 (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400541 suffixResult!105))))

(declare-fun b!3983193 () Bool)

(declare-fun e!2468682 () Bool)

(assert (=> b!3983193 (= e!2468682 e!2468684)))

(declare-fun res!1614804 () Bool)

(assert (=> b!3983193 (=> res!1614804 e!2468684)))

(declare-fun lt!1400539 () Option!9144)

(declare-fun lt!1400525 () Option!9144)

(assert (=> b!3983193 (= res!1614804 (not (= lt!1400539 lt!1400525)))))

(assert (=> b!3983193 (= lt!1400539 (Some!9143 (tuple2!41813 lt!1400530 suffixResult!105)))))

(assert (=> b!3983193 (= lt!1400539 (maxPrefixOneRule!2651 thiss!21717 (rule!9738 token!484) lt!1400551))))

(assert (=> b!3983193 (= lt!1400530 (Token!12599 lt!1400522 (rule!9738 token!484) lt!1400564 lt!1400541))))

(assert (=> b!3983193 (= lt!1400522 (apply!9941 (transformation!6730 (rule!9738 token!484)) (seqFromList!4969 lt!1400541)))))

(declare-fun lt!1400571 () Unit!61268)

(assert (=> b!3983193 (= lt!1400571 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1473 thiss!21717 rules!2999 lt!1400541 lt!1400551 suffixResult!105 (rule!9738 token!484)))))

(declare-fun lt!1400550 () List!42718)

(assert (=> b!3983193 (= lt!1400550 suffixResult!105)))

(declare-fun lt!1400517 () Unit!61268)

(assert (=> b!3983193 (= lt!1400517 (lemmaSamePrefixThenSameSuffix!2004 lt!1400541 lt!1400550 lt!1400541 suffixResult!105 lt!1400551))))

(declare-fun lt!1400524 () List!42718)

(assert (=> b!3983193 (isPrefix!3817 lt!1400541 lt!1400524)))

(declare-fun lt!1400559 () Unit!61268)

(assert (=> b!3983193 (= lt!1400559 (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400541 lt!1400550))))

(declare-fun b!3983194 () Bool)

(declare-fun e!2468686 () Bool)

(assert (=> b!3983194 (= e!2468686 e!2468679)))

(declare-fun res!1614813 () Bool)

(assert (=> b!3983194 (=> res!1614813 e!2468679)))

(assert (=> b!3983194 (= res!1614813 (<= lt!1400540 lt!1400564))))

(declare-fun lt!1400552 () List!42718)

(assert (=> b!3983194 (= (_2!24040 (v!39491 lt!1400533)) lt!1400552)))

(declare-fun lt!1400534 () Unit!61268)

(assert (=> b!3983194 (= lt!1400534 (lemmaSamePrefixThenSameSuffix!2004 lt!1400544 (_2!24040 (v!39491 lt!1400533)) lt!1400544 lt!1400552 lt!1400536))))

(declare-fun lt!1400561 () List!42718)

(assert (=> b!3983194 (isPrefix!3817 lt!1400544 lt!1400561)))

(declare-fun lt!1400567 () Unit!61268)

(assert (=> b!3983194 (= lt!1400567 (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400544 lt!1400552))))

(declare-fun b!3983195 () Bool)

(declare-fun tp!1214096 () Bool)

(assert (=> b!3983195 (= e!2468664 (and tp_is_empty!20241 tp!1214096))))

(declare-fun b!3983196 () Bool)

(declare-fun rulesValidInductive!2443 (LexerInterface!6319 List!42720) Bool)

(assert (=> b!3983196 (= e!2468679 (rulesValidInductive!2443 thiss!21717 rules!2999))))

(declare-fun b!3983197 () Bool)

(declare-fun e!2468665 () Bool)

(assert (=> b!3983197 (= e!2468665 (not e!2468661))))

(declare-fun res!1614791 () Bool)

(assert (=> b!3983197 (=> res!1614791 e!2468661)))

(assert (=> b!3983197 (= res!1614791 (not (= lt!1400556 lt!1400551)))))

(assert (=> b!3983197 (= lt!1400556 (++!11132 lt!1400541 suffixResult!105))))

(declare-fun lt!1400542 () Unit!61268)

(assert (=> b!3983197 (= lt!1400542 (lemmaInv!945 (transformation!6730 (rule!9738 token!484))))))

(assert (=> b!3983197 (ruleValid!2662 thiss!21717 (rule!9738 token!484))))

(declare-fun lt!1400538 () Unit!61268)

(assert (=> b!3983197 (= lt!1400538 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1736 thiss!21717 (rule!9738 token!484) rules!2999))))

(declare-fun b!3983198 () Bool)

(assert (=> b!3983198 (= e!2468690 e!2468682)))

(declare-fun res!1614812 () Bool)

(assert (=> b!3983198 (=> res!1614812 e!2468682)))

(declare-fun lt!1400565 () List!42718)

(assert (=> b!3983198 (= res!1614812 (or (not (= lt!1400551 lt!1400565)) (not (= lt!1400551 lt!1400524))))))

(assert (=> b!3983198 (= lt!1400565 lt!1400524)))

(assert (=> b!3983198 (= lt!1400524 (++!11132 lt!1400541 lt!1400550))))

(assert (=> b!3983198 (= lt!1400565 (++!11132 lt!1400523 suffix!1299))))

(assert (=> b!3983198 (= lt!1400550 (++!11132 lt!1400520 suffix!1299))))

(declare-fun lt!1400537 () Unit!61268)

(assert (=> b!3983198 (= lt!1400537 (lemmaConcatAssociativity!2452 lt!1400541 lt!1400520 suffix!1299))))

(declare-fun b!3983199 () Bool)

(assert (=> b!3983199 (= e!2468671 e!2468686)))

(declare-fun res!1614808 () Bool)

(assert (=> b!3983199 (=> res!1614808 e!2468686)))

(assert (=> b!3983199 (= res!1614808 (not (= lt!1400561 lt!1400536)))))

(assert (=> b!3983199 (= lt!1400561 (++!11132 lt!1400544 lt!1400552))))

(assert (=> b!3983199 (= lt!1400552 (getSuffix!2248 lt!1400536 lt!1400544))))

(declare-fun b!3983200 () Bool)

(declare-fun res!1614817 () Bool)

(assert (=> b!3983200 (=> (not res!1614817) (not e!2468666))))

(declare-fun rulesInvariant!5662 (LexerInterface!6319 List!42720) Bool)

(assert (=> b!3983200 (= res!1614817 (rulesInvariant!5662 thiss!21717 rules!2999))))

(declare-fun b!3983201 () Bool)

(assert (=> b!3983201 (= e!2468674 e!2468659)))

(declare-fun res!1614796 () Bool)

(assert (=> b!3983201 (=> res!1614796 e!2468659)))

(assert (=> b!3983201 (= res!1614796 (not (= lt!1400548 lt!1400551)))))

(assert (=> b!3983201 (= lt!1400548 (++!11132 lt!1400541 lt!1400568))))

(assert (=> b!3983201 (= lt!1400568 (getSuffix!2248 lt!1400551 lt!1400541))))

(assert (=> b!3983201 e!2468660))

(declare-fun res!1614818 () Bool)

(assert (=> b!3983201 (=> (not res!1614818) (not e!2468660))))

(assert (=> b!3983201 (= res!1614818 (isPrefix!3817 lt!1400551 lt!1400551))))

(declare-fun lt!1400553 () Unit!61268)

(declare-fun lemmaIsPrefixRefl!2409 (List!42718 List!42718) Unit!61268)

(assert (=> b!3983201 (= lt!1400553 (lemmaIsPrefixRefl!2409 lt!1400551 lt!1400551))))

(assert (=> b!3983202 (= e!2468685 (and tp!1214091 tp!1214100))))

(declare-fun b!3983203 () Bool)

(assert (=> b!3983203 (= e!2468680 e!2468665)))

(declare-fun res!1614799 () Bool)

(assert (=> b!3983203 (=> (not res!1614799) (not e!2468665))))

(assert (=> b!3983203 (= res!1614799 (= (maxPrefix!3617 thiss!21717 rules!2999 lt!1400551) lt!1400525))))

(assert (=> b!3983203 (= lt!1400525 (Some!9143 lt!1400519))))

(assert (=> b!3983203 (= lt!1400519 (tuple2!41813 token!484 suffixResult!105))))

(assert (=> b!3983203 (= lt!1400551 (++!11132 prefix!494 suffix!1299))))

(declare-fun b!3983204 () Bool)

(assert (=> b!3983204 (= e!2468675 e!2468671)))

(declare-fun res!1614815 () Bool)

(assert (=> b!3983204 (=> res!1614815 e!2468671)))

(assert (=> b!3983204 (= res!1614815 (not (isPrefix!3817 lt!1400544 lt!1400551)))))

(assert (=> b!3983204 (isPrefix!3817 lt!1400544 lt!1400535)))

(declare-fun lt!1400547 () Unit!61268)

(assert (=> b!3983204 (= lt!1400547 (lemmaPrefixStaysPrefixWhenAddingToSuffix!650 lt!1400544 lt!1400536 lt!1400546))))

(assert (= (and start!374856 res!1614803) b!3983170))

(assert (= (and b!3983170 res!1614798) b!3983200))

(assert (= (and b!3983200 res!1614817) b!3983171))

(assert (= (and b!3983171 res!1614816) b!3983180))

(assert (= (and b!3983180 res!1614810) b!3983168))

(assert (= (and b!3983168 res!1614809) b!3983167))

(assert (= (and b!3983167 res!1614814) b!3983203))

(assert (= (and b!3983203 res!1614799) b!3983197))

(assert (= (and b!3983197 (not res!1614791)) b!3983192))

(assert (= (and b!3983192 (not res!1614806)) b!3983182))

(assert (= (and b!3983182 (not res!1614805)) b!3983198))

(assert (= (and b!3983198 (not res!1614812)) b!3983193))

(assert (= (and b!3983193 (not res!1614804)) b!3983165))

(assert (= (and b!3983165 (not res!1614793)) b!3983201))

(assert (= (and b!3983201 res!1614818) b!3983177))

(assert (= (and b!3983177 res!1614795) b!3983176))

(assert (= (and b!3983176 res!1614807) b!3983186))

(assert (= (and b!3983201 (not res!1614796)) b!3983166))

(assert (= (and b!3983166 (not res!1614792)) b!3983184))

(assert (= (and b!3983184 (not res!1614800)) b!3983179))

(assert (= (and b!3983179 (not res!1614811)) b!3983185))

(assert (= (and b!3983185 (not res!1614794)) b!3983204))

(assert (= (and b!3983204 (not res!1614815)) b!3983172))

(assert (= (and b!3983172 (not res!1614797)) b!3983199))

(assert (= (and b!3983199 (not res!1614808)) b!3983194))

(assert (= (and b!3983194 (not res!1614813)) b!3983175))

(assert (= (and b!3983175 (not res!1614790)) b!3983173))

(assert (= (and b!3983173 (not res!1614802)) b!3983174))

(assert (= (and b!3983174 (not res!1614801)) b!3983196))

(assert (= (and start!374856 ((_ is Cons!42594) prefix!494)) b!3983195))

(assert (= b!3983190 b!3983183))

(assert (= b!3983188 b!3983190))

(assert (= start!374856 b!3983188))

(assert (= (and start!374856 ((_ is Cons!42594) suffixResult!105)) b!3983181))

(assert (= (and start!374856 ((_ is Cons!42594) suffix!1299)) b!3983189))

(assert (= (and start!374856 ((_ is Cons!42594) newSuffix!27)) b!3983187))

(assert (= b!3983169 b!3983202))

(assert (= b!3983191 b!3983169))

(assert (= (and start!374856 ((_ is Cons!42596) rules!2999)) b!3983191))

(assert (= (and start!374856 ((_ is Cons!42594) newSuffixResult!27)) b!3983178))

(declare-fun m!4557855 () Bool)

(assert (=> b!3983182 m!4557855))

(declare-fun m!4557857 () Bool)

(assert (=> b!3983182 m!4557857))

(declare-fun m!4557859 () Bool)

(assert (=> b!3983182 m!4557859))

(declare-fun m!4557861 () Bool)

(assert (=> b!3983182 m!4557861))

(declare-fun m!4557863 () Bool)

(assert (=> b!3983168 m!4557863))

(declare-fun m!4557865 () Bool)

(assert (=> b!3983168 m!4557865))

(declare-fun m!4557867 () Bool)

(assert (=> b!3983168 m!4557867))

(assert (=> b!3983168 m!4557867))

(declare-fun m!4557869 () Bool)

(assert (=> b!3983168 m!4557869))

(declare-fun m!4557871 () Bool)

(assert (=> b!3983201 m!4557871))

(declare-fun m!4557873 () Bool)

(assert (=> b!3983201 m!4557873))

(declare-fun m!4557875 () Bool)

(assert (=> b!3983201 m!4557875))

(declare-fun m!4557877 () Bool)

(assert (=> b!3983201 m!4557877))

(declare-fun m!4557879 () Bool)

(assert (=> b!3983176 m!4557879))

(declare-fun m!4557881 () Bool)

(assert (=> b!3983169 m!4557881))

(declare-fun m!4557883 () Bool)

(assert (=> b!3983169 m!4557883))

(declare-fun m!4557885 () Bool)

(assert (=> b!3983197 m!4557885))

(declare-fun m!4557887 () Bool)

(assert (=> b!3983197 m!4557887))

(declare-fun m!4557889 () Bool)

(assert (=> b!3983197 m!4557889))

(declare-fun m!4557891 () Bool)

(assert (=> b!3983197 m!4557891))

(declare-fun m!4557893 () Bool)

(assert (=> b!3983175 m!4557893))

(declare-fun m!4557895 () Bool)

(assert (=> b!3983188 m!4557895))

(declare-fun m!4557897 () Bool)

(assert (=> b!3983199 m!4557897))

(declare-fun m!4557899 () Bool)

(assert (=> b!3983199 m!4557899))

(declare-fun m!4557901 () Bool)

(assert (=> b!3983200 m!4557901))

(declare-fun m!4557903 () Bool)

(assert (=> b!3983190 m!4557903))

(declare-fun m!4557905 () Bool)

(assert (=> b!3983190 m!4557905))

(declare-fun m!4557907 () Bool)

(assert (=> b!3983193 m!4557907))

(declare-fun m!4557909 () Bool)

(assert (=> b!3983193 m!4557909))

(declare-fun m!4557911 () Bool)

(assert (=> b!3983193 m!4557911))

(declare-fun m!4557913 () Bool)

(assert (=> b!3983193 m!4557913))

(declare-fun m!4557915 () Bool)

(assert (=> b!3983193 m!4557915))

(declare-fun m!4557917 () Bool)

(assert (=> b!3983193 m!4557917))

(assert (=> b!3983193 m!4557907))

(declare-fun m!4557919 () Bool)

(assert (=> b!3983193 m!4557919))

(declare-fun m!4557921 () Bool)

(assert (=> start!374856 m!4557921))

(declare-fun m!4557923 () Bool)

(assert (=> b!3983204 m!4557923))

(declare-fun m!4557925 () Bool)

(assert (=> b!3983204 m!4557925))

(declare-fun m!4557927 () Bool)

(assert (=> b!3983204 m!4557927))

(declare-fun m!4557929 () Bool)

(assert (=> b!3983165 m!4557929))

(declare-fun m!4557931 () Bool)

(assert (=> b!3983165 m!4557931))

(declare-fun m!4557933 () Bool)

(assert (=> b!3983165 m!4557933))

(declare-fun m!4557935 () Bool)

(assert (=> b!3983165 m!4557935))

(declare-fun m!4557937 () Bool)

(assert (=> b!3983180 m!4557937))

(declare-fun m!4557939 () Bool)

(assert (=> b!3983173 m!4557939))

(declare-fun m!4557941 () Bool)

(assert (=> b!3983196 m!4557941))

(declare-fun m!4557943 () Bool)

(assert (=> b!3983171 m!4557943))

(declare-fun m!4557945 () Bool)

(assert (=> b!3983171 m!4557945))

(declare-fun m!4557947 () Bool)

(assert (=> b!3983179 m!4557947))

(declare-fun m!4557949 () Bool)

(assert (=> b!3983179 m!4557949))

(declare-fun m!4557951 () Bool)

(assert (=> b!3983166 m!4557951))

(declare-fun m!4557953 () Bool)

(assert (=> b!3983166 m!4557953))

(declare-fun m!4557955 () Bool)

(assert (=> b!3983166 m!4557955))

(declare-fun m!4557957 () Bool)

(assert (=> b!3983166 m!4557957))

(declare-fun m!4557959 () Bool)

(assert (=> b!3983203 m!4557959))

(declare-fun m!4557961 () Bool)

(assert (=> b!3983203 m!4557961))

(declare-fun m!4557963 () Bool)

(assert (=> b!3983198 m!4557963))

(declare-fun m!4557965 () Bool)

(assert (=> b!3983198 m!4557965))

(declare-fun m!4557967 () Bool)

(assert (=> b!3983198 m!4557967))

(declare-fun m!4557969 () Bool)

(assert (=> b!3983198 m!4557969))

(declare-fun m!4557971 () Bool)

(assert (=> b!3983170 m!4557971))

(declare-fun m!4557973 () Bool)

(assert (=> b!3983167 m!4557973))

(declare-fun m!4557975 () Bool)

(assert (=> b!3983167 m!4557975))

(declare-fun m!4557977 () Bool)

(assert (=> b!3983185 m!4557977))

(declare-fun m!4557979 () Bool)

(assert (=> b!3983185 m!4557979))

(declare-fun m!4557981 () Bool)

(assert (=> b!3983185 m!4557981))

(declare-fun m!4557983 () Bool)

(assert (=> b!3983184 m!4557983))

(declare-fun m!4557985 () Bool)

(assert (=> b!3983184 m!4557985))

(declare-fun m!4557987 () Bool)

(assert (=> b!3983184 m!4557987))

(declare-fun m!4557989 () Bool)

(assert (=> b!3983184 m!4557989))

(declare-fun m!4557991 () Bool)

(assert (=> b!3983184 m!4557991))

(declare-fun m!4557993 () Bool)

(assert (=> b!3983184 m!4557993))

(declare-fun m!4557995 () Bool)

(assert (=> b!3983184 m!4557995))

(declare-fun m!4557997 () Bool)

(assert (=> b!3983184 m!4557997))

(declare-fun m!4557999 () Bool)

(assert (=> b!3983184 m!4557999))

(declare-fun m!4558001 () Bool)

(assert (=> b!3983184 m!4558001))

(declare-fun m!4558003 () Bool)

(assert (=> b!3983184 m!4558003))

(declare-fun m!4558005 () Bool)

(assert (=> b!3983184 m!4558005))

(declare-fun m!4558007 () Bool)

(assert (=> b!3983184 m!4558007))

(assert (=> b!3983184 m!4557997))

(declare-fun m!4558009 () Bool)

(assert (=> b!3983184 m!4558009))

(declare-fun m!4558011 () Bool)

(assert (=> b!3983184 m!4558011))

(declare-fun m!4558013 () Bool)

(assert (=> b!3983184 m!4558013))

(assert (=> b!3983184 m!4558003))

(assert (=> b!3983184 m!4557993))

(declare-fun m!4558015 () Bool)

(assert (=> b!3983184 m!4558015))

(declare-fun m!4558017 () Bool)

(assert (=> b!3983184 m!4558017))

(declare-fun m!4558019 () Bool)

(assert (=> b!3983192 m!4558019))

(declare-fun m!4558021 () Bool)

(assert (=> b!3983192 m!4558021))

(declare-fun m!4558023 () Bool)

(assert (=> b!3983192 m!4558023))

(declare-fun m!4558025 () Bool)

(assert (=> b!3983192 m!4558025))

(declare-fun m!4558027 () Bool)

(assert (=> b!3983192 m!4558027))

(declare-fun m!4558029 () Bool)

(assert (=> b!3983174 m!4558029))

(declare-fun m!4558031 () Bool)

(assert (=> b!3983194 m!4558031))

(declare-fun m!4558033 () Bool)

(assert (=> b!3983194 m!4558033))

(declare-fun m!4558035 () Bool)

(assert (=> b!3983194 m!4558035))

(check-sat b_and!306149 (not b!3983194) (not b!3983185) (not b!3983197) (not b!3983198) (not b!3983195) tp_is_empty!20241 (not b!3983180) (not b!3983179) (not b!3983168) (not b!3983167) (not b!3983187) (not b!3983199) (not b!3983178) (not b!3983176) b_and!306147 (not b!3983193) (not b!3983196) (not b!3983169) (not b!3983203) (not b!3983165) (not b_next!111303) b_and!306145 (not b_next!111301) (not b!3983175) b_and!306143 (not b!3983201) (not b_next!111299) (not b!3983173) (not b!3983182) (not b!3983189) (not b_next!111297) (not b!3983190) (not start!374856) (not b!3983181) (not b!3983200) (not b!3983184) (not b!3983188) (not b!3983192) (not b!3983204) (not b!3983171) (not b!3983191) (not b!3983174) (not b!3983166) (not b!3983170))
(check-sat b_and!306149 b_and!306147 (not b_next!111299) (not b_next!111297) (not b_next!111303) b_and!306145 (not b_next!111301) b_and!306143)
(get-model)

(declare-fun b!3983260 () Bool)

(declare-fun e!2468724 () List!42718)

(assert (=> b!3983260 (= e!2468724 (Cons!42594 (h!48014 newSuffix!27) (++!11132 (t!331421 newSuffix!27) lt!1400546)))))

(declare-fun d!1178904 () Bool)

(declare-fun e!2468725 () Bool)

(assert (=> d!1178904 e!2468725))

(declare-fun res!1614857 () Bool)

(assert (=> d!1178904 (=> (not res!1614857) (not e!2468725))))

(declare-fun lt!1400584 () List!42718)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6456 (List!42718) (InoxSet C!23456))

(assert (=> d!1178904 (= res!1614857 (= (content!6456 lt!1400584) ((_ map or) (content!6456 newSuffix!27) (content!6456 lt!1400546))))))

(assert (=> d!1178904 (= lt!1400584 e!2468724)))

(declare-fun c!689882 () Bool)

(assert (=> d!1178904 (= c!689882 ((_ is Nil!42594) newSuffix!27))))

(assert (=> d!1178904 (= (++!11132 newSuffix!27 lt!1400546) lt!1400584)))

(declare-fun b!3983259 () Bool)

(assert (=> b!3983259 (= e!2468724 lt!1400546)))

(declare-fun b!3983261 () Bool)

(declare-fun res!1614858 () Bool)

(assert (=> b!3983261 (=> (not res!1614858) (not e!2468725))))

(assert (=> b!3983261 (= res!1614858 (= (size!31861 lt!1400584) (+ (size!31861 newSuffix!27) (size!31861 lt!1400546))))))

(declare-fun b!3983262 () Bool)

(assert (=> b!3983262 (= e!2468725 (or (not (= lt!1400546 Nil!42594)) (= lt!1400584 newSuffix!27)))))

(assert (= (and d!1178904 c!689882) b!3983259))

(assert (= (and d!1178904 (not c!689882)) b!3983260))

(assert (= (and d!1178904 res!1614857) b!3983261))

(assert (= (and b!3983261 res!1614858) b!3983262))

(declare-fun m!4558083 () Bool)

(assert (=> b!3983260 m!4558083))

(declare-fun m!4558085 () Bool)

(assert (=> d!1178904 m!4558085))

(declare-fun m!4558087 () Bool)

(assert (=> d!1178904 m!4558087))

(declare-fun m!4558089 () Bool)

(assert (=> d!1178904 m!4558089))

(declare-fun m!4558091 () Bool)

(assert (=> b!3983261 m!4558091))

(assert (=> b!3983261 m!4557945))

(declare-fun m!4558093 () Bool)

(assert (=> b!3983261 m!4558093))

(assert (=> b!3983179 d!1178904))

(declare-fun d!1178914 () Bool)

(declare-fun lt!1400591 () List!42718)

(assert (=> d!1178914 (= (++!11132 newSuffix!27 lt!1400591) suffix!1299)))

(declare-fun e!2468730 () List!42718)

(assert (=> d!1178914 (= lt!1400591 e!2468730)))

(declare-fun c!689886 () Bool)

(assert (=> d!1178914 (= c!689886 ((_ is Cons!42594) newSuffix!27))))

(assert (=> d!1178914 (>= (size!31861 suffix!1299) (size!31861 newSuffix!27))))

(assert (=> d!1178914 (= (getSuffix!2248 suffix!1299 newSuffix!27) lt!1400591)))

(declare-fun b!3983271 () Bool)

(declare-fun tail!6212 (List!42718) List!42718)

(assert (=> b!3983271 (= e!2468730 (getSuffix!2248 (tail!6212 suffix!1299) (t!331421 newSuffix!27)))))

(declare-fun b!3983272 () Bool)

(assert (=> b!3983272 (= e!2468730 suffix!1299)))

(assert (= (and d!1178914 c!689886) b!3983271))

(assert (= (and d!1178914 (not c!689886)) b!3983272))

(declare-fun m!4558115 () Bool)

(assert (=> d!1178914 m!4558115))

(assert (=> d!1178914 m!4557943))

(assert (=> d!1178914 m!4557945))

(declare-fun m!4558117 () Bool)

(assert (=> b!3983271 m!4558117))

(assert (=> b!3983271 m!4558117))

(declare-fun m!4558119 () Bool)

(assert (=> b!3983271 m!4558119))

(assert (=> b!3983179 d!1178914))

(declare-fun b!3983283 () Bool)

(declare-fun e!2468737 () Bool)

(assert (=> b!3983283 (= e!2468737 (isPrefix!3817 (tail!6212 newSuffix!27) (tail!6212 suffix!1299)))))

(declare-fun d!1178920 () Bool)

(declare-fun e!2468738 () Bool)

(assert (=> d!1178920 e!2468738))

(declare-fun res!1614869 () Bool)

(assert (=> d!1178920 (=> res!1614869 e!2468738)))

(declare-fun lt!1400594 () Bool)

(assert (=> d!1178920 (= res!1614869 (not lt!1400594))))

(declare-fun e!2468739 () Bool)

(assert (=> d!1178920 (= lt!1400594 e!2468739)))

(declare-fun res!1614872 () Bool)

(assert (=> d!1178920 (=> res!1614872 e!2468739)))

(assert (=> d!1178920 (= res!1614872 ((_ is Nil!42594) newSuffix!27))))

(assert (=> d!1178920 (= (isPrefix!3817 newSuffix!27 suffix!1299) lt!1400594)))

(declare-fun b!3983284 () Bool)

(assert (=> b!3983284 (= e!2468738 (>= (size!31861 suffix!1299) (size!31861 newSuffix!27)))))

(declare-fun b!3983282 () Bool)

(declare-fun res!1614871 () Bool)

(assert (=> b!3983282 (=> (not res!1614871) (not e!2468737))))

(declare-fun head!8480 (List!42718) C!23456)

(assert (=> b!3983282 (= res!1614871 (= (head!8480 newSuffix!27) (head!8480 suffix!1299)))))

(declare-fun b!3983281 () Bool)

(assert (=> b!3983281 (= e!2468739 e!2468737)))

(declare-fun res!1614870 () Bool)

(assert (=> b!3983281 (=> (not res!1614870) (not e!2468737))))

(assert (=> b!3983281 (= res!1614870 (not ((_ is Nil!42594) suffix!1299)))))

(assert (= (and d!1178920 (not res!1614872)) b!3983281))

(assert (= (and b!3983281 res!1614870) b!3983282))

(assert (= (and b!3983282 res!1614871) b!3983283))

(assert (= (and d!1178920 (not res!1614869)) b!3983284))

(declare-fun m!4558121 () Bool)

(assert (=> b!3983283 m!4558121))

(assert (=> b!3983283 m!4558117))

(assert (=> b!3983283 m!4558121))

(assert (=> b!3983283 m!4558117))

(declare-fun m!4558123 () Bool)

(assert (=> b!3983283 m!4558123))

(assert (=> b!3983284 m!4557943))

(assert (=> b!3983284 m!4557945))

(declare-fun m!4558125 () Bool)

(assert (=> b!3983282 m!4558125))

(declare-fun m!4558127 () Bool)

(assert (=> b!3983282 m!4558127))

(assert (=> b!3983180 d!1178920))

(declare-fun b!3983286 () Bool)

(declare-fun e!2468740 () List!42718)

(assert (=> b!3983286 (= e!2468740 (Cons!42594 (h!48014 lt!1400541) (++!11132 (t!331421 lt!1400541) lt!1400568)))))

(declare-fun d!1178922 () Bool)

(declare-fun e!2468741 () Bool)

(assert (=> d!1178922 e!2468741))

(declare-fun res!1614873 () Bool)

(assert (=> d!1178922 (=> (not res!1614873) (not e!2468741))))

(declare-fun lt!1400595 () List!42718)

(assert (=> d!1178922 (= res!1614873 (= (content!6456 lt!1400595) ((_ map or) (content!6456 lt!1400541) (content!6456 lt!1400568))))))

(assert (=> d!1178922 (= lt!1400595 e!2468740)))

(declare-fun c!689887 () Bool)

(assert (=> d!1178922 (= c!689887 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1178922 (= (++!11132 lt!1400541 lt!1400568) lt!1400595)))

(declare-fun b!3983285 () Bool)

(assert (=> b!3983285 (= e!2468740 lt!1400568)))

(declare-fun b!3983287 () Bool)

(declare-fun res!1614874 () Bool)

(assert (=> b!3983287 (=> (not res!1614874) (not e!2468741))))

(assert (=> b!3983287 (= res!1614874 (= (size!31861 lt!1400595) (+ (size!31861 lt!1400541) (size!31861 lt!1400568))))))

(declare-fun b!3983288 () Bool)

(assert (=> b!3983288 (= e!2468741 (or (not (= lt!1400568 Nil!42594)) (= lt!1400595 lt!1400541)))))

(assert (= (and d!1178922 c!689887) b!3983285))

(assert (= (and d!1178922 (not c!689887)) b!3983286))

(assert (= (and d!1178922 res!1614873) b!3983287))

(assert (= (and b!3983287 res!1614874) b!3983288))

(declare-fun m!4558129 () Bool)

(assert (=> b!3983286 m!4558129))

(declare-fun m!4558131 () Bool)

(assert (=> d!1178922 m!4558131))

(declare-fun m!4558133 () Bool)

(assert (=> d!1178922 m!4558133))

(declare-fun m!4558135 () Bool)

(assert (=> d!1178922 m!4558135))

(declare-fun m!4558137 () Bool)

(assert (=> b!3983287 m!4558137))

(assert (=> b!3983287 m!4557863))

(declare-fun m!4558139 () Bool)

(assert (=> b!3983287 m!4558139))

(assert (=> b!3983201 d!1178922))

(declare-fun d!1178924 () Bool)

(declare-fun lt!1400596 () List!42718)

(assert (=> d!1178924 (= (++!11132 lt!1400541 lt!1400596) lt!1400551)))

(declare-fun e!2468742 () List!42718)

(assert (=> d!1178924 (= lt!1400596 e!2468742)))

(declare-fun c!689888 () Bool)

(assert (=> d!1178924 (= c!689888 ((_ is Cons!42594) lt!1400541))))

(assert (=> d!1178924 (>= (size!31861 lt!1400551) (size!31861 lt!1400541))))

(assert (=> d!1178924 (= (getSuffix!2248 lt!1400551 lt!1400541) lt!1400596)))

(declare-fun b!3983289 () Bool)

(assert (=> b!3983289 (= e!2468742 (getSuffix!2248 (tail!6212 lt!1400551) (t!331421 lt!1400541)))))

(declare-fun b!3983290 () Bool)

(assert (=> b!3983290 (= e!2468742 lt!1400551)))

(assert (= (and d!1178924 c!689888) b!3983289))

(assert (= (and d!1178924 (not c!689888)) b!3983290))

(declare-fun m!4558141 () Bool)

(assert (=> d!1178924 m!4558141))

(declare-fun m!4558143 () Bool)

(assert (=> d!1178924 m!4558143))

(assert (=> d!1178924 m!4557863))

(declare-fun m!4558145 () Bool)

(assert (=> b!3983289 m!4558145))

(assert (=> b!3983289 m!4558145))

(declare-fun m!4558147 () Bool)

(assert (=> b!3983289 m!4558147))

(assert (=> b!3983201 d!1178924))

(declare-fun b!3983293 () Bool)

(declare-fun e!2468743 () Bool)

(assert (=> b!3983293 (= e!2468743 (isPrefix!3817 (tail!6212 lt!1400551) (tail!6212 lt!1400551)))))

(declare-fun d!1178926 () Bool)

(declare-fun e!2468744 () Bool)

(assert (=> d!1178926 e!2468744))

(declare-fun res!1614875 () Bool)

(assert (=> d!1178926 (=> res!1614875 e!2468744)))

(declare-fun lt!1400597 () Bool)

(assert (=> d!1178926 (= res!1614875 (not lt!1400597))))

(declare-fun e!2468745 () Bool)

(assert (=> d!1178926 (= lt!1400597 e!2468745)))

(declare-fun res!1614878 () Bool)

(assert (=> d!1178926 (=> res!1614878 e!2468745)))

(assert (=> d!1178926 (= res!1614878 ((_ is Nil!42594) lt!1400551))))

(assert (=> d!1178926 (= (isPrefix!3817 lt!1400551 lt!1400551) lt!1400597)))

(declare-fun b!3983294 () Bool)

(assert (=> b!3983294 (= e!2468744 (>= (size!31861 lt!1400551) (size!31861 lt!1400551)))))

(declare-fun b!3983292 () Bool)

(declare-fun res!1614877 () Bool)

(assert (=> b!3983292 (=> (not res!1614877) (not e!2468743))))

(assert (=> b!3983292 (= res!1614877 (= (head!8480 lt!1400551) (head!8480 lt!1400551)))))

(declare-fun b!3983291 () Bool)

(assert (=> b!3983291 (= e!2468745 e!2468743)))

(declare-fun res!1614876 () Bool)

(assert (=> b!3983291 (=> (not res!1614876) (not e!2468743))))

(assert (=> b!3983291 (= res!1614876 (not ((_ is Nil!42594) lt!1400551)))))

(assert (= (and d!1178926 (not res!1614878)) b!3983291))

(assert (= (and b!3983291 res!1614876) b!3983292))

(assert (= (and b!3983292 res!1614877) b!3983293))

(assert (= (and d!1178926 (not res!1614875)) b!3983294))

(assert (=> b!3983293 m!4558145))

(assert (=> b!3983293 m!4558145))

(assert (=> b!3983293 m!4558145))

(assert (=> b!3983293 m!4558145))

(declare-fun m!4558149 () Bool)

(assert (=> b!3983293 m!4558149))

(assert (=> b!3983294 m!4558143))

(assert (=> b!3983294 m!4558143))

(declare-fun m!4558151 () Bool)

(assert (=> b!3983292 m!4558151))

(assert (=> b!3983292 m!4558151))

(assert (=> b!3983201 d!1178926))

(declare-fun d!1178928 () Bool)

(assert (=> d!1178928 (isPrefix!3817 lt!1400551 lt!1400551)))

(declare-fun lt!1400600 () Unit!61268)

(declare-fun choose!23903 (List!42718 List!42718) Unit!61268)

(assert (=> d!1178928 (= lt!1400600 (choose!23903 lt!1400551 lt!1400551))))

(assert (=> d!1178928 (= (lemmaIsPrefixRefl!2409 lt!1400551 lt!1400551) lt!1400600)))

(declare-fun bs!588037 () Bool)

(assert (= bs!588037 d!1178928))

(assert (=> bs!588037 m!4557875))

(declare-fun m!4558153 () Bool)

(assert (=> bs!588037 m!4558153))

(assert (=> b!3983201 d!1178928))

(declare-fun b!3983296 () Bool)

(declare-fun e!2468746 () List!42718)

(assert (=> b!3983296 (= e!2468746 (Cons!42594 (h!48014 lt!1400544) (++!11132 (t!331421 lt!1400544) lt!1400552)))))

(declare-fun d!1178930 () Bool)

(declare-fun e!2468747 () Bool)

(assert (=> d!1178930 e!2468747))

(declare-fun res!1614879 () Bool)

(assert (=> d!1178930 (=> (not res!1614879) (not e!2468747))))

(declare-fun lt!1400601 () List!42718)

(assert (=> d!1178930 (= res!1614879 (= (content!6456 lt!1400601) ((_ map or) (content!6456 lt!1400544) (content!6456 lt!1400552))))))

(assert (=> d!1178930 (= lt!1400601 e!2468746)))

(declare-fun c!689889 () Bool)

(assert (=> d!1178930 (= c!689889 ((_ is Nil!42594) lt!1400544))))

(assert (=> d!1178930 (= (++!11132 lt!1400544 lt!1400552) lt!1400601)))

(declare-fun b!3983295 () Bool)

(assert (=> b!3983295 (= e!2468746 lt!1400552)))

(declare-fun b!3983297 () Bool)

(declare-fun res!1614880 () Bool)

(assert (=> b!3983297 (=> (not res!1614880) (not e!2468747))))

(assert (=> b!3983297 (= res!1614880 (= (size!31861 lt!1400601) (+ (size!31861 lt!1400544) (size!31861 lt!1400552))))))

(declare-fun b!3983298 () Bool)

(assert (=> b!3983298 (= e!2468747 (or (not (= lt!1400552 Nil!42594)) (= lt!1400601 lt!1400544)))))

(assert (= (and d!1178930 c!689889) b!3983295))

(assert (= (and d!1178930 (not c!689889)) b!3983296))

(assert (= (and d!1178930 res!1614879) b!3983297))

(assert (= (and b!3983297 res!1614880) b!3983298))

(declare-fun m!4558155 () Bool)

(assert (=> b!3983296 m!4558155))

(declare-fun m!4558157 () Bool)

(assert (=> d!1178930 m!4558157))

(declare-fun m!4558159 () Bool)

(assert (=> d!1178930 m!4558159))

(declare-fun m!4558161 () Bool)

(assert (=> d!1178930 m!4558161))

(declare-fun m!4558163 () Bool)

(assert (=> b!3983297 m!4558163))

(assert (=> b!3983297 m!4557983))

(declare-fun m!4558165 () Bool)

(assert (=> b!3983297 m!4558165))

(assert (=> b!3983199 d!1178930))

(declare-fun d!1178932 () Bool)

(declare-fun lt!1400602 () List!42718)

(assert (=> d!1178932 (= (++!11132 lt!1400544 lt!1400602) lt!1400536)))

(declare-fun e!2468748 () List!42718)

(assert (=> d!1178932 (= lt!1400602 e!2468748)))

(declare-fun c!689890 () Bool)

(assert (=> d!1178932 (= c!689890 ((_ is Cons!42594) lt!1400544))))

(assert (=> d!1178932 (>= (size!31861 lt!1400536) (size!31861 lt!1400544))))

(assert (=> d!1178932 (= (getSuffix!2248 lt!1400536 lt!1400544) lt!1400602)))

(declare-fun b!3983299 () Bool)

(assert (=> b!3983299 (= e!2468748 (getSuffix!2248 (tail!6212 lt!1400536) (t!331421 lt!1400544)))))

(declare-fun b!3983300 () Bool)

(assert (=> b!3983300 (= e!2468748 lt!1400536)))

(assert (= (and d!1178932 c!689890) b!3983299))

(assert (= (and d!1178932 (not c!689890)) b!3983300))

(declare-fun m!4558167 () Bool)

(assert (=> d!1178932 m!4558167))

(declare-fun m!4558169 () Bool)

(assert (=> d!1178932 m!4558169))

(assert (=> d!1178932 m!4557983))

(declare-fun m!4558171 () Bool)

(assert (=> b!3983299 m!4558171))

(assert (=> b!3983299 m!4558171))

(declare-fun m!4558173 () Bool)

(assert (=> b!3983299 m!4558173))

(assert (=> b!3983199 d!1178932))

(declare-fun d!1178934 () Bool)

(declare-fun res!1614883 () Bool)

(declare-fun e!2468751 () Bool)

(assert (=> d!1178934 (=> (not res!1614883) (not e!2468751))))

(declare-fun rulesValid!2620 (LexerInterface!6319 List!42720) Bool)

(assert (=> d!1178934 (= res!1614883 (rulesValid!2620 thiss!21717 rules!2999))))

(assert (=> d!1178934 (= (rulesInvariant!5662 thiss!21717 rules!2999) e!2468751)))

(declare-fun b!3983303 () Bool)

(declare-datatypes ((List!42721 0))(
  ( (Nil!42597) (Cons!42597 (h!48017 String!48518) (t!331472 List!42721)) )
))
(declare-fun noDuplicateTag!2621 (LexerInterface!6319 List!42720 List!42721) Bool)

(assert (=> b!3983303 (= e!2468751 (noDuplicateTag!2621 thiss!21717 rules!2999 Nil!42597))))

(assert (= (and d!1178934 res!1614883) b!3983303))

(declare-fun m!4558175 () Bool)

(assert (=> d!1178934 m!4558175))

(declare-fun m!4558177 () Bool)

(assert (=> b!3983303 m!4558177))

(assert (=> b!3983200 d!1178934))

(declare-fun b!3983305 () Bool)

(declare-fun e!2468752 () List!42718)

(assert (=> b!3983305 (= e!2468752 (Cons!42594 (h!48014 lt!1400541) (++!11132 (t!331421 lt!1400541) lt!1400550)))))

(declare-fun d!1178936 () Bool)

(declare-fun e!2468753 () Bool)

(assert (=> d!1178936 e!2468753))

(declare-fun res!1614884 () Bool)

(assert (=> d!1178936 (=> (not res!1614884) (not e!2468753))))

(declare-fun lt!1400603 () List!42718)

(assert (=> d!1178936 (= res!1614884 (= (content!6456 lt!1400603) ((_ map or) (content!6456 lt!1400541) (content!6456 lt!1400550))))))

(assert (=> d!1178936 (= lt!1400603 e!2468752)))

(declare-fun c!689891 () Bool)

(assert (=> d!1178936 (= c!689891 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1178936 (= (++!11132 lt!1400541 lt!1400550) lt!1400603)))

(declare-fun b!3983304 () Bool)

(assert (=> b!3983304 (= e!2468752 lt!1400550)))

(declare-fun b!3983306 () Bool)

(declare-fun res!1614885 () Bool)

(assert (=> b!3983306 (=> (not res!1614885) (not e!2468753))))

(assert (=> b!3983306 (= res!1614885 (= (size!31861 lt!1400603) (+ (size!31861 lt!1400541) (size!31861 lt!1400550))))))

(declare-fun b!3983307 () Bool)

(assert (=> b!3983307 (= e!2468753 (or (not (= lt!1400550 Nil!42594)) (= lt!1400603 lt!1400541)))))

(assert (= (and d!1178936 c!689891) b!3983304))

(assert (= (and d!1178936 (not c!689891)) b!3983305))

(assert (= (and d!1178936 res!1614884) b!3983306))

(assert (= (and b!3983306 res!1614885) b!3983307))

(declare-fun m!4558179 () Bool)

(assert (=> b!3983305 m!4558179))

(declare-fun m!4558181 () Bool)

(assert (=> d!1178936 m!4558181))

(assert (=> d!1178936 m!4558133))

(declare-fun m!4558183 () Bool)

(assert (=> d!1178936 m!4558183))

(declare-fun m!4558185 () Bool)

(assert (=> b!3983306 m!4558185))

(assert (=> b!3983306 m!4557863))

(declare-fun m!4558187 () Bool)

(assert (=> b!3983306 m!4558187))

(assert (=> b!3983198 d!1178936))

(declare-fun b!3983309 () Bool)

(declare-fun e!2468754 () List!42718)

(assert (=> b!3983309 (= e!2468754 (Cons!42594 (h!48014 lt!1400523) (++!11132 (t!331421 lt!1400523) suffix!1299)))))

(declare-fun d!1178938 () Bool)

(declare-fun e!2468755 () Bool)

(assert (=> d!1178938 e!2468755))

(declare-fun res!1614886 () Bool)

(assert (=> d!1178938 (=> (not res!1614886) (not e!2468755))))

(declare-fun lt!1400604 () List!42718)

(assert (=> d!1178938 (= res!1614886 (= (content!6456 lt!1400604) ((_ map or) (content!6456 lt!1400523) (content!6456 suffix!1299))))))

(assert (=> d!1178938 (= lt!1400604 e!2468754)))

(declare-fun c!689892 () Bool)

(assert (=> d!1178938 (= c!689892 ((_ is Nil!42594) lt!1400523))))

(assert (=> d!1178938 (= (++!11132 lt!1400523 suffix!1299) lt!1400604)))

(declare-fun b!3983308 () Bool)

(assert (=> b!3983308 (= e!2468754 suffix!1299)))

(declare-fun b!3983310 () Bool)

(declare-fun res!1614887 () Bool)

(assert (=> b!3983310 (=> (not res!1614887) (not e!2468755))))

(assert (=> b!3983310 (= res!1614887 (= (size!31861 lt!1400604) (+ (size!31861 lt!1400523) (size!31861 suffix!1299))))))

(declare-fun b!3983311 () Bool)

(assert (=> b!3983311 (= e!2468755 (or (not (= suffix!1299 Nil!42594)) (= lt!1400604 lt!1400523)))))

(assert (= (and d!1178938 c!689892) b!3983308))

(assert (= (and d!1178938 (not c!689892)) b!3983309))

(assert (= (and d!1178938 res!1614886) b!3983310))

(assert (= (and b!3983310 res!1614887) b!3983311))

(declare-fun m!4558189 () Bool)

(assert (=> b!3983309 m!4558189))

(declare-fun m!4558191 () Bool)

(assert (=> d!1178938 m!4558191))

(declare-fun m!4558193 () Bool)

(assert (=> d!1178938 m!4558193))

(declare-fun m!4558195 () Bool)

(assert (=> d!1178938 m!4558195))

(declare-fun m!4558197 () Bool)

(assert (=> b!3983310 m!4558197))

(declare-fun m!4558199 () Bool)

(assert (=> b!3983310 m!4558199))

(assert (=> b!3983310 m!4557943))

(assert (=> b!3983198 d!1178938))

(declare-fun b!3983313 () Bool)

(declare-fun e!2468756 () List!42718)

(assert (=> b!3983313 (= e!2468756 (Cons!42594 (h!48014 lt!1400520) (++!11132 (t!331421 lt!1400520) suffix!1299)))))

(declare-fun d!1178940 () Bool)

(declare-fun e!2468757 () Bool)

(assert (=> d!1178940 e!2468757))

(declare-fun res!1614888 () Bool)

(assert (=> d!1178940 (=> (not res!1614888) (not e!2468757))))

(declare-fun lt!1400605 () List!42718)

(assert (=> d!1178940 (= res!1614888 (= (content!6456 lt!1400605) ((_ map or) (content!6456 lt!1400520) (content!6456 suffix!1299))))))

(assert (=> d!1178940 (= lt!1400605 e!2468756)))

(declare-fun c!689893 () Bool)

(assert (=> d!1178940 (= c!689893 ((_ is Nil!42594) lt!1400520))))

(assert (=> d!1178940 (= (++!11132 lt!1400520 suffix!1299) lt!1400605)))

(declare-fun b!3983312 () Bool)

(assert (=> b!3983312 (= e!2468756 suffix!1299)))

(declare-fun b!3983314 () Bool)

(declare-fun res!1614889 () Bool)

(assert (=> b!3983314 (=> (not res!1614889) (not e!2468757))))

(assert (=> b!3983314 (= res!1614889 (= (size!31861 lt!1400605) (+ (size!31861 lt!1400520) (size!31861 suffix!1299))))))

(declare-fun b!3983315 () Bool)

(assert (=> b!3983315 (= e!2468757 (or (not (= suffix!1299 Nil!42594)) (= lt!1400605 lt!1400520)))))

(assert (= (and d!1178940 c!689893) b!3983312))

(assert (= (and d!1178940 (not c!689893)) b!3983313))

(assert (= (and d!1178940 res!1614888) b!3983314))

(assert (= (and b!3983314 res!1614889) b!3983315))

(declare-fun m!4558201 () Bool)

(assert (=> b!3983313 m!4558201))

(declare-fun m!4558203 () Bool)

(assert (=> d!1178940 m!4558203))

(declare-fun m!4558205 () Bool)

(assert (=> d!1178940 m!4558205))

(assert (=> d!1178940 m!4558195))

(declare-fun m!4558207 () Bool)

(assert (=> b!3983314 m!4558207))

(declare-fun m!4558209 () Bool)

(assert (=> b!3983314 m!4558209))

(assert (=> b!3983314 m!4557943))

(assert (=> b!3983198 d!1178940))

(declare-fun d!1178942 () Bool)

(assert (=> d!1178942 (= (++!11132 (++!11132 lt!1400541 lt!1400520) suffix!1299) (++!11132 lt!1400541 (++!11132 lt!1400520 suffix!1299)))))

(declare-fun lt!1400608 () Unit!61268)

(declare-fun choose!23905 (List!42718 List!42718 List!42718) Unit!61268)

(assert (=> d!1178942 (= lt!1400608 (choose!23905 lt!1400541 lt!1400520 suffix!1299))))

(assert (=> d!1178942 (= (lemmaConcatAssociativity!2452 lt!1400541 lt!1400520 suffix!1299) lt!1400608)))

(declare-fun bs!588038 () Bool)

(assert (= bs!588038 d!1178942))

(assert (=> bs!588038 m!4557967))

(declare-fun m!4558211 () Bool)

(assert (=> bs!588038 m!4558211))

(assert (=> bs!588038 m!4557855))

(declare-fun m!4558213 () Bool)

(assert (=> bs!588038 m!4558213))

(assert (=> bs!588038 m!4557967))

(declare-fun m!4558215 () Bool)

(assert (=> bs!588038 m!4558215))

(assert (=> bs!588038 m!4557855))

(assert (=> b!3983198 d!1178942))

(declare-fun b!3983318 () Bool)

(declare-fun e!2468758 () Bool)

(assert (=> b!3983318 (= e!2468758 (isPrefix!3817 (tail!6212 lt!1400544) (tail!6212 lt!1400536)))))

(declare-fun d!1178944 () Bool)

(declare-fun e!2468759 () Bool)

(assert (=> d!1178944 e!2468759))

(declare-fun res!1614890 () Bool)

(assert (=> d!1178944 (=> res!1614890 e!2468759)))

(declare-fun lt!1400609 () Bool)

(assert (=> d!1178944 (= res!1614890 (not lt!1400609))))

(declare-fun e!2468760 () Bool)

(assert (=> d!1178944 (= lt!1400609 e!2468760)))

(declare-fun res!1614893 () Bool)

(assert (=> d!1178944 (=> res!1614893 e!2468760)))

(assert (=> d!1178944 (= res!1614893 ((_ is Nil!42594) lt!1400544))))

(assert (=> d!1178944 (= (isPrefix!3817 lt!1400544 lt!1400536) lt!1400609)))

(declare-fun b!3983319 () Bool)

(assert (=> b!3983319 (= e!2468759 (>= (size!31861 lt!1400536) (size!31861 lt!1400544)))))

(declare-fun b!3983317 () Bool)

(declare-fun res!1614892 () Bool)

(assert (=> b!3983317 (=> (not res!1614892) (not e!2468758))))

(assert (=> b!3983317 (= res!1614892 (= (head!8480 lt!1400544) (head!8480 lt!1400536)))))

(declare-fun b!3983316 () Bool)

(assert (=> b!3983316 (= e!2468760 e!2468758)))

(declare-fun res!1614891 () Bool)

(assert (=> b!3983316 (=> (not res!1614891) (not e!2468758))))

(assert (=> b!3983316 (= res!1614891 (not ((_ is Nil!42594) lt!1400536)))))

(assert (= (and d!1178944 (not res!1614893)) b!3983316))

(assert (= (and b!3983316 res!1614891) b!3983317))

(assert (= (and b!3983317 res!1614892) b!3983318))

(assert (= (and d!1178944 (not res!1614890)) b!3983319))

(declare-fun m!4558217 () Bool)

(assert (=> b!3983318 m!4558217))

(assert (=> b!3983318 m!4558171))

(assert (=> b!3983318 m!4558217))

(assert (=> b!3983318 m!4558171))

(declare-fun m!4558219 () Bool)

(assert (=> b!3983318 m!4558219))

(assert (=> b!3983319 m!4558169))

(assert (=> b!3983319 m!4557983))

(declare-fun m!4558221 () Bool)

(assert (=> b!3983317 m!4558221))

(declare-fun m!4558223 () Bool)

(assert (=> b!3983317 m!4558223))

(assert (=> b!3983175 d!1178944))

(declare-fun d!1178946 () Bool)

(declare-fun lt!1400612 () Int)

(assert (=> d!1178946 (>= lt!1400612 0)))

(declare-fun e!2468763 () Int)

(assert (=> d!1178946 (= lt!1400612 e!2468763)))

(declare-fun c!689896 () Bool)

(assert (=> d!1178946 (= c!689896 ((_ is Nil!42594) (originalCharacters!7330 token!484)))))

(assert (=> d!1178946 (= (size!31861 (originalCharacters!7330 token!484)) lt!1400612)))

(declare-fun b!3983324 () Bool)

(assert (=> b!3983324 (= e!2468763 0)))

(declare-fun b!3983325 () Bool)

(assert (=> b!3983325 (= e!2468763 (+ 1 (size!31861 (t!331421 (originalCharacters!7330 token!484)))))))

(assert (= (and d!1178946 c!689896) b!3983324))

(assert (= (and d!1178946 (not c!689896)) b!3983325))

(declare-fun m!4558225 () Bool)

(assert (=> b!3983325 m!4558225))

(assert (=> b!3983176 d!1178946))

(declare-fun b!3983327 () Bool)

(declare-fun e!2468764 () List!42718)

(assert (=> b!3983327 (= e!2468764 (Cons!42594 (h!48014 lt!1400541) (++!11132 (t!331421 lt!1400541) suffixResult!105)))))

(declare-fun d!1178948 () Bool)

(declare-fun e!2468765 () Bool)

(assert (=> d!1178948 e!2468765))

(declare-fun res!1614894 () Bool)

(assert (=> d!1178948 (=> (not res!1614894) (not e!2468765))))

(declare-fun lt!1400613 () List!42718)

(assert (=> d!1178948 (= res!1614894 (= (content!6456 lt!1400613) ((_ map or) (content!6456 lt!1400541) (content!6456 suffixResult!105))))))

(assert (=> d!1178948 (= lt!1400613 e!2468764)))

(declare-fun c!689897 () Bool)

(assert (=> d!1178948 (= c!689897 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1178948 (= (++!11132 lt!1400541 suffixResult!105) lt!1400613)))

(declare-fun b!3983326 () Bool)

(assert (=> b!3983326 (= e!2468764 suffixResult!105)))

(declare-fun b!3983328 () Bool)

(declare-fun res!1614895 () Bool)

(assert (=> b!3983328 (=> (not res!1614895) (not e!2468765))))

(assert (=> b!3983328 (= res!1614895 (= (size!31861 lt!1400613) (+ (size!31861 lt!1400541) (size!31861 suffixResult!105))))))

(declare-fun b!3983329 () Bool)

(assert (=> b!3983329 (= e!2468765 (or (not (= suffixResult!105 Nil!42594)) (= lt!1400613 lt!1400541)))))

(assert (= (and d!1178948 c!689897) b!3983326))

(assert (= (and d!1178948 (not c!689897)) b!3983327))

(assert (= (and d!1178948 res!1614894) b!3983328))

(assert (= (and b!3983328 res!1614895) b!3983329))

(declare-fun m!4558227 () Bool)

(assert (=> b!3983327 m!4558227))

(declare-fun m!4558229 () Bool)

(assert (=> d!1178948 m!4558229))

(assert (=> d!1178948 m!4558133))

(declare-fun m!4558231 () Bool)

(assert (=> d!1178948 m!4558231))

(declare-fun m!4558233 () Bool)

(assert (=> b!3983328 m!4558233))

(assert (=> b!3983328 m!4557863))

(declare-fun m!4558235 () Bool)

(assert (=> b!3983328 m!4558235))

(assert (=> b!3983197 d!1178948))

(declare-fun d!1178950 () Bool)

(declare-fun e!2468768 () Bool)

(assert (=> d!1178950 e!2468768))

(declare-fun res!1614898 () Bool)

(assert (=> d!1178950 (=> (not res!1614898) (not e!2468768))))

(declare-fun semiInverseModEq!2887 (Int Int) Bool)

(assert (=> d!1178950 (= res!1614898 (semiInverseModEq!2887 (toChars!9077 (transformation!6730 (rule!9738 token!484))) (toValue!9218 (transformation!6730 (rule!9738 token!484)))))))

(declare-fun Unit!61272 () Unit!61268)

(assert (=> d!1178950 (= (lemmaInv!945 (transformation!6730 (rule!9738 token!484))) Unit!61272)))

(declare-fun b!3983332 () Bool)

(declare-fun equivClasses!2786 (Int Int) Bool)

(assert (=> b!3983332 (= e!2468768 (equivClasses!2786 (toChars!9077 (transformation!6730 (rule!9738 token!484))) (toValue!9218 (transformation!6730 (rule!9738 token!484)))))))

(assert (= (and d!1178950 res!1614898) b!3983332))

(declare-fun m!4558237 () Bool)

(assert (=> d!1178950 m!4558237))

(declare-fun m!4558239 () Bool)

(assert (=> b!3983332 m!4558239))

(assert (=> b!3983197 d!1178950))

(declare-fun d!1178952 () Bool)

(declare-fun res!1614903 () Bool)

(declare-fun e!2468773 () Bool)

(assert (=> d!1178952 (=> (not res!1614903) (not e!2468773))))

(declare-fun validRegex!5280 (Regex!11635) Bool)

(assert (=> d!1178952 (= res!1614903 (validRegex!5280 (regex!6730 (rule!9738 token!484))))))

(assert (=> d!1178952 (= (ruleValid!2662 thiss!21717 (rule!9738 token!484)) e!2468773)))

(declare-fun b!3983341 () Bool)

(declare-fun res!1614904 () Bool)

(assert (=> b!3983341 (=> (not res!1614904) (not e!2468773))))

(declare-fun nullable!4080 (Regex!11635) Bool)

(assert (=> b!3983341 (= res!1614904 (not (nullable!4080 (regex!6730 (rule!9738 token!484)))))))

(declare-fun b!3983342 () Bool)

(assert (=> b!3983342 (= e!2468773 (not (= (tag!7590 (rule!9738 token!484)) (String!48519 ""))))))

(assert (= (and d!1178952 res!1614903) b!3983341))

(assert (= (and b!3983341 res!1614904) b!3983342))

(declare-fun m!4558241 () Bool)

(assert (=> d!1178952 m!4558241))

(declare-fun m!4558243 () Bool)

(assert (=> b!3983341 m!4558243))

(assert (=> b!3983197 d!1178952))

(declare-fun d!1178954 () Bool)

(assert (=> d!1178954 (ruleValid!2662 thiss!21717 (rule!9738 token!484))))

(declare-fun lt!1400626 () Unit!61268)

(declare-fun choose!23907 (LexerInterface!6319 Rule!13260 List!42720) Unit!61268)

(assert (=> d!1178954 (= lt!1400626 (choose!23907 thiss!21717 (rule!9738 token!484) rules!2999))))

(assert (=> d!1178954 (contains!8475 rules!2999 (rule!9738 token!484))))

(assert (=> d!1178954 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1736 thiss!21717 (rule!9738 token!484) rules!2999) lt!1400626)))

(declare-fun bs!588039 () Bool)

(assert (= bs!588039 d!1178954))

(assert (=> bs!588039 m!4557889))

(declare-fun m!4558245 () Bool)

(assert (=> bs!588039 m!4558245))

(assert (=> bs!588039 m!4557939))

(assert (=> b!3983197 d!1178954))

(declare-fun d!1178956 () Bool)

(declare-fun lt!1400629 () Bool)

(declare-fun content!6457 (List!42720) (InoxSet Rule!13260))

(assert (=> d!1178956 (= lt!1400629 (select (content!6457 rules!2999) (rule!9738 (_1!24040 (v!39491 lt!1400533)))))))

(declare-fun e!2468782 () Bool)

(assert (=> d!1178956 (= lt!1400629 e!2468782)))

(declare-fun res!1614923 () Bool)

(assert (=> d!1178956 (=> (not res!1614923) (not e!2468782))))

(assert (=> d!1178956 (= res!1614923 ((_ is Cons!42596) rules!2999))))

(assert (=> d!1178956 (= (contains!8475 rules!2999 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) lt!1400629)))

(declare-fun b!3983361 () Bool)

(declare-fun e!2468783 () Bool)

(assert (=> b!3983361 (= e!2468782 e!2468783)))

(declare-fun res!1614924 () Bool)

(assert (=> b!3983361 (=> res!1614924 e!2468783)))

(assert (=> b!3983361 (= res!1614924 (= (h!48016 rules!2999) (rule!9738 (_1!24040 (v!39491 lt!1400533)))))))

(declare-fun b!3983362 () Bool)

(assert (=> b!3983362 (= e!2468783 (contains!8475 (t!331423 rules!2999) (rule!9738 (_1!24040 (v!39491 lt!1400533)))))))

(assert (= (and d!1178956 res!1614923) b!3983361))

(assert (= (and b!3983361 (not res!1614924)) b!3983362))

(declare-fun m!4558247 () Bool)

(assert (=> d!1178956 m!4558247))

(declare-fun m!4558249 () Bool)

(assert (=> d!1178956 m!4558249))

(declare-fun m!4558251 () Bool)

(assert (=> b!3983362 m!4558251))

(assert (=> b!3983174 d!1178956))

(declare-fun d!1178958 () Bool)

(assert (=> d!1178958 true))

(declare-fun lt!1400744 () Bool)

(declare-fun lambda!126884 () Int)

(declare-fun forall!8336 (List!42720 Int) Bool)

(assert (=> d!1178958 (= lt!1400744 (forall!8336 rules!2999 lambda!126884))))

(declare-fun e!2468943 () Bool)

(assert (=> d!1178958 (= lt!1400744 e!2468943)))

(declare-fun res!1615108 () Bool)

(assert (=> d!1178958 (=> res!1615108 e!2468943)))

(assert (=> d!1178958 (= res!1615108 (not ((_ is Cons!42596) rules!2999)))))

(assert (=> d!1178958 (= (rulesValidInductive!2443 thiss!21717 rules!2999) lt!1400744)))

(declare-fun b!3983631 () Bool)

(declare-fun e!2468944 () Bool)

(assert (=> b!3983631 (= e!2468943 e!2468944)))

(declare-fun res!1615107 () Bool)

(assert (=> b!3983631 (=> (not res!1615107) (not e!2468944))))

(assert (=> b!3983631 (= res!1615107 (ruleValid!2662 thiss!21717 (h!48016 rules!2999)))))

(declare-fun b!3983632 () Bool)

(assert (=> b!3983632 (= e!2468944 (rulesValidInductive!2443 thiss!21717 (t!331423 rules!2999)))))

(assert (= (and d!1178958 (not res!1615108)) b!3983631))

(assert (= (and b!3983631 res!1615107) b!3983632))

(declare-fun m!4558743 () Bool)

(assert (=> d!1178958 m!4558743))

(declare-fun m!4558745 () Bool)

(assert (=> b!3983631 m!4558745))

(declare-fun m!4558747 () Bool)

(assert (=> b!3983632 m!4558747))

(assert (=> b!3983196 d!1178958))

(declare-fun d!1179118 () Bool)

(assert (=> d!1179118 (= (_2!24040 (v!39491 lt!1400533)) lt!1400552)))

(declare-fun lt!1400747 () Unit!61268)

(declare-fun choose!23908 (List!42718 List!42718 List!42718 List!42718 List!42718) Unit!61268)

(assert (=> d!1179118 (= lt!1400747 (choose!23908 lt!1400544 (_2!24040 (v!39491 lt!1400533)) lt!1400544 lt!1400552 lt!1400536))))

(assert (=> d!1179118 (isPrefix!3817 lt!1400544 lt!1400536)))

(assert (=> d!1179118 (= (lemmaSamePrefixThenSameSuffix!2004 lt!1400544 (_2!24040 (v!39491 lt!1400533)) lt!1400544 lt!1400552 lt!1400536) lt!1400747)))

(declare-fun bs!588065 () Bool)

(assert (= bs!588065 d!1179118))

(declare-fun m!4558749 () Bool)

(assert (=> bs!588065 m!4558749))

(assert (=> bs!588065 m!4557893))

(assert (=> b!3983194 d!1179118))

(declare-fun b!3983637 () Bool)

(declare-fun e!2468945 () Bool)

(assert (=> b!3983637 (= e!2468945 (isPrefix!3817 (tail!6212 lt!1400544) (tail!6212 lt!1400561)))))

(declare-fun d!1179120 () Bool)

(declare-fun e!2468946 () Bool)

(assert (=> d!1179120 e!2468946))

(declare-fun res!1615109 () Bool)

(assert (=> d!1179120 (=> res!1615109 e!2468946)))

(declare-fun lt!1400748 () Bool)

(assert (=> d!1179120 (= res!1615109 (not lt!1400748))))

(declare-fun e!2468947 () Bool)

(assert (=> d!1179120 (= lt!1400748 e!2468947)))

(declare-fun res!1615112 () Bool)

(assert (=> d!1179120 (=> res!1615112 e!2468947)))

(assert (=> d!1179120 (= res!1615112 ((_ is Nil!42594) lt!1400544))))

(assert (=> d!1179120 (= (isPrefix!3817 lt!1400544 lt!1400561) lt!1400748)))

(declare-fun b!3983638 () Bool)

(assert (=> b!3983638 (= e!2468946 (>= (size!31861 lt!1400561) (size!31861 lt!1400544)))))

(declare-fun b!3983636 () Bool)

(declare-fun res!1615111 () Bool)

(assert (=> b!3983636 (=> (not res!1615111) (not e!2468945))))

(assert (=> b!3983636 (= res!1615111 (= (head!8480 lt!1400544) (head!8480 lt!1400561)))))

(declare-fun b!3983635 () Bool)

(assert (=> b!3983635 (= e!2468947 e!2468945)))

(declare-fun res!1615110 () Bool)

(assert (=> b!3983635 (=> (not res!1615110) (not e!2468945))))

(assert (=> b!3983635 (= res!1615110 (not ((_ is Nil!42594) lt!1400561)))))

(assert (= (and d!1179120 (not res!1615112)) b!3983635))

(assert (= (and b!3983635 res!1615110) b!3983636))

(assert (= (and b!3983636 res!1615111) b!3983637))

(assert (= (and d!1179120 (not res!1615109)) b!3983638))

(assert (=> b!3983637 m!4558217))

(declare-fun m!4558751 () Bool)

(assert (=> b!3983637 m!4558751))

(assert (=> b!3983637 m!4558217))

(assert (=> b!3983637 m!4558751))

(declare-fun m!4558753 () Bool)

(assert (=> b!3983637 m!4558753))

(declare-fun m!4558755 () Bool)

(assert (=> b!3983638 m!4558755))

(assert (=> b!3983638 m!4557983))

(assert (=> b!3983636 m!4558221))

(declare-fun m!4558757 () Bool)

(assert (=> b!3983636 m!4558757))

(assert (=> b!3983194 d!1179120))

(declare-fun d!1179122 () Bool)

(assert (=> d!1179122 (isPrefix!3817 lt!1400544 (++!11132 lt!1400544 lt!1400552))))

(declare-fun lt!1400751 () Unit!61268)

(declare-fun choose!23909 (List!42718 List!42718) Unit!61268)

(assert (=> d!1179122 (= lt!1400751 (choose!23909 lt!1400544 lt!1400552))))

(assert (=> d!1179122 (= (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400544 lt!1400552) lt!1400751)))

(declare-fun bs!588066 () Bool)

(assert (= bs!588066 d!1179122))

(assert (=> bs!588066 m!4557897))

(assert (=> bs!588066 m!4557897))

(declare-fun m!4558759 () Bool)

(assert (=> bs!588066 m!4558759))

(declare-fun m!4558761 () Bool)

(assert (=> bs!588066 m!4558761))

(assert (=> b!3983194 d!1179122))

(declare-fun d!1179124 () Bool)

(declare-fun lt!1400752 () Bool)

(assert (=> d!1179124 (= lt!1400752 (select (content!6457 rules!2999) (rule!9738 token!484)))))

(declare-fun e!2468948 () Bool)

(assert (=> d!1179124 (= lt!1400752 e!2468948)))

(declare-fun res!1615113 () Bool)

(assert (=> d!1179124 (=> (not res!1615113) (not e!2468948))))

(assert (=> d!1179124 (= res!1615113 ((_ is Cons!42596) rules!2999))))

(assert (=> d!1179124 (= (contains!8475 rules!2999 (rule!9738 token!484)) lt!1400752)))

(declare-fun b!3983639 () Bool)

(declare-fun e!2468949 () Bool)

(assert (=> b!3983639 (= e!2468948 e!2468949)))

(declare-fun res!1615114 () Bool)

(assert (=> b!3983639 (=> res!1615114 e!2468949)))

(assert (=> b!3983639 (= res!1615114 (= (h!48016 rules!2999) (rule!9738 token!484)))))

(declare-fun b!3983640 () Bool)

(assert (=> b!3983640 (= e!2468949 (contains!8475 (t!331423 rules!2999) (rule!9738 token!484)))))

(assert (= (and d!1179124 res!1615113) b!3983639))

(assert (= (and b!3983639 (not res!1615114)) b!3983640))

(assert (=> d!1179124 m!4558247))

(declare-fun m!4558763 () Bool)

(assert (=> d!1179124 m!4558763))

(declare-fun m!4558765 () Bool)

(assert (=> b!3983640 m!4558765))

(assert (=> b!3983173 d!1179124))

(declare-fun d!1179126 () Bool)

(declare-fun lt!1400753 () Int)

(assert (=> d!1179126 (>= lt!1400753 0)))

(declare-fun e!2468950 () Int)

(assert (=> d!1179126 (= lt!1400753 e!2468950)))

(declare-fun c!689939 () Bool)

(assert (=> d!1179126 (= c!689939 ((_ is Nil!42594) suffix!1299))))

(assert (=> d!1179126 (= (size!31861 suffix!1299) lt!1400753)))

(declare-fun b!3983641 () Bool)

(assert (=> b!3983641 (= e!2468950 0)))

(declare-fun b!3983642 () Bool)

(assert (=> b!3983642 (= e!2468950 (+ 1 (size!31861 (t!331421 suffix!1299))))))

(assert (= (and d!1179126 c!689939) b!3983641))

(assert (= (and d!1179126 (not c!689939)) b!3983642))

(declare-fun m!4558767 () Bool)

(assert (=> b!3983642 m!4558767))

(assert (=> b!3983171 d!1179126))

(declare-fun d!1179128 () Bool)

(declare-fun lt!1400754 () Int)

(assert (=> d!1179128 (>= lt!1400754 0)))

(declare-fun e!2468951 () Int)

(assert (=> d!1179128 (= lt!1400754 e!2468951)))

(declare-fun c!689940 () Bool)

(assert (=> d!1179128 (= c!689940 ((_ is Nil!42594) newSuffix!27))))

(assert (=> d!1179128 (= (size!31861 newSuffix!27) lt!1400754)))

(declare-fun b!3983643 () Bool)

(assert (=> b!3983643 (= e!2468951 0)))

(declare-fun b!3983644 () Bool)

(assert (=> b!3983644 (= e!2468951 (+ 1 (size!31861 (t!331421 newSuffix!27))))))

(assert (= (and d!1179128 c!689940) b!3983643))

(assert (= (and d!1179128 (not c!689940)) b!3983644))

(declare-fun m!4558769 () Bool)

(assert (=> b!3983644 m!4558769))

(assert (=> b!3983171 d!1179128))

(declare-fun d!1179130 () Bool)

(assert (=> d!1179130 (= (maxPrefixOneRule!2651 thiss!21717 (rule!9738 token!484) lt!1400551) (Some!9143 (tuple2!41813 (Token!12599 (apply!9941 (transformation!6730 (rule!9738 token!484)) (seqFromList!4969 lt!1400541)) (rule!9738 token!484) (size!31861 lt!1400541) lt!1400541) suffixResult!105)))))

(declare-fun lt!1400757 () Unit!61268)

(declare-fun choose!23910 (LexerInterface!6319 List!42720 List!42718 List!42718 List!42718 Rule!13260) Unit!61268)

(assert (=> d!1179130 (= lt!1400757 (choose!23910 thiss!21717 rules!2999 lt!1400541 lt!1400551 suffixResult!105 (rule!9738 token!484)))))

(assert (=> d!1179130 (not (isEmpty!25462 rules!2999))))

(assert (=> d!1179130 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1473 thiss!21717 rules!2999 lt!1400541 lt!1400551 suffixResult!105 (rule!9738 token!484)) lt!1400757)))

(declare-fun bs!588067 () Bool)

(assert (= bs!588067 d!1179130))

(assert (=> bs!588067 m!4557907))

(assert (=> bs!588067 m!4557919))

(assert (=> bs!588067 m!4557971))

(declare-fun m!4558771 () Bool)

(assert (=> bs!588067 m!4558771))

(assert (=> bs!588067 m!4557907))

(assert (=> bs!588067 m!4557915))

(assert (=> bs!588067 m!4557863))

(assert (=> b!3983193 d!1179130))

(declare-fun d!1179132 () Bool)

(assert (=> d!1179132 (= lt!1400550 suffixResult!105)))

(declare-fun lt!1400758 () Unit!61268)

(assert (=> d!1179132 (= lt!1400758 (choose!23908 lt!1400541 lt!1400550 lt!1400541 suffixResult!105 lt!1400551))))

(assert (=> d!1179132 (isPrefix!3817 lt!1400541 lt!1400551)))

(assert (=> d!1179132 (= (lemmaSamePrefixThenSameSuffix!2004 lt!1400541 lt!1400550 lt!1400541 suffixResult!105 lt!1400551) lt!1400758)))

(declare-fun bs!588068 () Bool)

(assert (= bs!588068 d!1179132))

(declare-fun m!4558773 () Bool)

(assert (=> bs!588068 m!4558773))

(assert (=> bs!588068 m!4558027))

(assert (=> b!3983193 d!1179132))

(declare-fun d!1179134 () Bool)

(assert (=> d!1179134 (isPrefix!3817 lt!1400541 (++!11132 lt!1400541 lt!1400550))))

(declare-fun lt!1400759 () Unit!61268)

(assert (=> d!1179134 (= lt!1400759 (choose!23909 lt!1400541 lt!1400550))))

(assert (=> d!1179134 (= (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400541 lt!1400550) lt!1400759)))

(declare-fun bs!588069 () Bool)

(assert (= bs!588069 d!1179134))

(assert (=> bs!588069 m!4557963))

(assert (=> bs!588069 m!4557963))

(declare-fun m!4558775 () Bool)

(assert (=> bs!588069 m!4558775))

(declare-fun m!4558777 () Bool)

(assert (=> bs!588069 m!4558777))

(assert (=> b!3983193 d!1179134))

(declare-fun d!1179136 () Bool)

(declare-fun dynLambda!18111 (Int BalanceConc!25476) TokenValue!6960)

(assert (=> d!1179136 (= (apply!9941 (transformation!6730 (rule!9738 token!484)) (seqFromList!4969 lt!1400541)) (dynLambda!18111 (toValue!9218 (transformation!6730 (rule!9738 token!484))) (seqFromList!4969 lt!1400541)))))

(declare-fun b_lambda!116345 () Bool)

(assert (=> (not b_lambda!116345) (not d!1179136)))

(declare-fun t!331441 () Bool)

(declare-fun tb!239981 () Bool)

(assert (=> (and b!3983183 (= (toValue!9218 (transformation!6730 (rule!9738 token!484))) (toValue!9218 (transformation!6730 (rule!9738 token!484)))) t!331441) tb!239981))

(declare-fun result!290726 () Bool)

(assert (=> tb!239981 (= result!290726 (inv!21 (dynLambda!18111 (toValue!9218 (transformation!6730 (rule!9738 token!484))) (seqFromList!4969 lt!1400541))))))

(declare-fun m!4558779 () Bool)

(assert (=> tb!239981 m!4558779))

(assert (=> d!1179136 t!331441))

(declare-fun b_and!306171 () Bool)

(assert (= b_and!306143 (and (=> t!331441 result!290726) b_and!306171)))

(declare-fun tb!239983 () Bool)

(declare-fun t!331443 () Bool)

(assert (=> (and b!3983202 (= (toValue!9218 (transformation!6730 (h!48016 rules!2999))) (toValue!9218 (transformation!6730 (rule!9738 token!484)))) t!331443) tb!239983))

(declare-fun result!290730 () Bool)

(assert (= result!290730 result!290726))

(assert (=> d!1179136 t!331443))

(declare-fun b_and!306173 () Bool)

(assert (= b_and!306147 (and (=> t!331443 result!290730) b_and!306173)))

(assert (=> d!1179136 m!4557907))

(declare-fun m!4558781 () Bool)

(assert (=> d!1179136 m!4558781))

(assert (=> b!3983193 d!1179136))

(declare-fun d!1179138 () Bool)

(declare-fun fromListB!2282 (List!42718) BalanceConc!25476)

(assert (=> d!1179138 (= (seqFromList!4969 lt!1400541) (fromListB!2282 lt!1400541))))

(declare-fun bs!588070 () Bool)

(assert (= bs!588070 d!1179138))

(declare-fun m!4558783 () Bool)

(assert (=> bs!588070 m!4558783))

(assert (=> b!3983193 d!1179138))

(declare-fun b!3983665 () Bool)

(declare-fun e!2468966 () Bool)

(declare-fun e!2468965 () Bool)

(assert (=> b!3983665 (= e!2468966 e!2468965)))

(declare-fun res!1615135 () Bool)

(assert (=> b!3983665 (=> (not res!1615135) (not e!2468965))))

(declare-fun lt!1400773 () Option!9144)

(declare-fun get!14021 (Option!9144) tuple2!41812)

(assert (=> b!3983665 (= res!1615135 (matchR!5612 (regex!6730 (rule!9738 token!484)) (list!15810 (charsOf!4546 (_1!24040 (get!14021 lt!1400773))))))))

(declare-fun b!3983666 () Bool)

(declare-fun res!1615132 () Bool)

(assert (=> b!3983666 (=> (not res!1615132) (not e!2468965))))

(assert (=> b!3983666 (= res!1615132 (< (size!31861 (_2!24040 (get!14021 lt!1400773))) (size!31861 lt!1400551)))))

(declare-fun b!3983667 () Bool)

(declare-fun e!2468964 () Option!9144)

(assert (=> b!3983667 (= e!2468964 None!9143)))

(declare-fun b!3983668 () Bool)

(declare-fun res!1615134 () Bool)

(assert (=> b!3983668 (=> (not res!1615134) (not e!2468965))))

(assert (=> b!3983668 (= res!1615134 (= (value!212439 (_1!24040 (get!14021 lt!1400773))) (apply!9941 (transformation!6730 (rule!9738 (_1!24040 (get!14021 lt!1400773)))) (seqFromList!4969 (originalCharacters!7330 (_1!24040 (get!14021 lt!1400773)))))))))

(declare-fun b!3983669 () Bool)

(declare-fun res!1615129 () Bool)

(assert (=> b!3983669 (=> (not res!1615129) (not e!2468965))))

(assert (=> b!3983669 (= res!1615129 (= (rule!9738 (_1!24040 (get!14021 lt!1400773))) (rule!9738 token!484)))))

(declare-fun b!3983670 () Bool)

(declare-fun res!1615131 () Bool)

(assert (=> b!3983670 (=> (not res!1615131) (not e!2468965))))

(assert (=> b!3983670 (= res!1615131 (= (++!11132 (list!15810 (charsOf!4546 (_1!24040 (get!14021 lt!1400773)))) (_2!24040 (get!14021 lt!1400773))) lt!1400551))))

(declare-fun b!3983671 () Bool)

(declare-datatypes ((tuple2!41816 0))(
  ( (tuple2!41817 (_1!24042 List!42718) (_2!24042 List!42718)) )
))
(declare-fun lt!1400772 () tuple2!41816)

(declare-fun size!31863 (BalanceConc!25476) Int)

(assert (=> b!3983671 (= e!2468964 (Some!9143 (tuple2!41813 (Token!12599 (apply!9941 (transformation!6730 (rule!9738 token!484)) (seqFromList!4969 (_1!24042 lt!1400772))) (rule!9738 token!484) (size!31863 (seqFromList!4969 (_1!24042 lt!1400772))) (_1!24042 lt!1400772)) (_2!24042 lt!1400772))))))

(declare-fun lt!1400770 () Unit!61268)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1297 (Regex!11635 List!42718) Unit!61268)

(assert (=> b!3983671 (= lt!1400770 (longestMatchIsAcceptedByMatchOrIsEmpty!1297 (regex!6730 (rule!9738 token!484)) lt!1400551))))

(declare-fun res!1615133 () Bool)

(declare-fun isEmpty!25465 (List!42718) Bool)

(declare-fun findLongestMatchInner!1324 (Regex!11635 List!42718 Int List!42718 List!42718 Int) tuple2!41816)

(assert (=> b!3983671 (= res!1615133 (isEmpty!25465 (_1!24042 (findLongestMatchInner!1324 (regex!6730 (rule!9738 token!484)) Nil!42594 (size!31861 Nil!42594) lt!1400551 lt!1400551 (size!31861 lt!1400551)))))))

(declare-fun e!2468963 () Bool)

(assert (=> b!3983671 (=> res!1615133 e!2468963)))

(assert (=> b!3983671 e!2468963))

(declare-fun lt!1400774 () Unit!61268)

(assert (=> b!3983671 (= lt!1400774 lt!1400770)))

(declare-fun lt!1400771 () Unit!61268)

(declare-fun lemmaSemiInverse!1836 (TokenValueInjection!13348 BalanceConc!25476) Unit!61268)

(assert (=> b!3983671 (= lt!1400771 (lemmaSemiInverse!1836 (transformation!6730 (rule!9738 token!484)) (seqFromList!4969 (_1!24042 lt!1400772))))))

(declare-fun d!1179140 () Bool)

(assert (=> d!1179140 e!2468966))

(declare-fun res!1615130 () Bool)

(assert (=> d!1179140 (=> res!1615130 e!2468966)))

(declare-fun isEmpty!25466 (Option!9144) Bool)

(assert (=> d!1179140 (= res!1615130 (isEmpty!25466 lt!1400773))))

(assert (=> d!1179140 (= lt!1400773 e!2468964)))

(declare-fun c!689943 () Bool)

(assert (=> d!1179140 (= c!689943 (isEmpty!25465 (_1!24042 lt!1400772)))))

(declare-fun findLongestMatch!1237 (Regex!11635 List!42718) tuple2!41816)

(assert (=> d!1179140 (= lt!1400772 (findLongestMatch!1237 (regex!6730 (rule!9738 token!484)) lt!1400551))))

(assert (=> d!1179140 (ruleValid!2662 thiss!21717 (rule!9738 token!484))))

(assert (=> d!1179140 (= (maxPrefixOneRule!2651 thiss!21717 (rule!9738 token!484) lt!1400551) lt!1400773)))

(declare-fun b!3983672 () Bool)

(assert (=> b!3983672 (= e!2468963 (matchR!5612 (regex!6730 (rule!9738 token!484)) (_1!24042 (findLongestMatchInner!1324 (regex!6730 (rule!9738 token!484)) Nil!42594 (size!31861 Nil!42594) lt!1400551 lt!1400551 (size!31861 lt!1400551)))))))

(declare-fun b!3983673 () Bool)

(assert (=> b!3983673 (= e!2468965 (= (size!31860 (_1!24040 (get!14021 lt!1400773))) (size!31861 (originalCharacters!7330 (_1!24040 (get!14021 lt!1400773))))))))

(assert (= (and d!1179140 c!689943) b!3983667))

(assert (= (and d!1179140 (not c!689943)) b!3983671))

(assert (= (and b!3983671 (not res!1615133)) b!3983672))

(assert (= (and d!1179140 (not res!1615130)) b!3983665))

(assert (= (and b!3983665 res!1615135) b!3983670))

(assert (= (and b!3983670 res!1615131) b!3983666))

(assert (= (and b!3983666 res!1615132) b!3983669))

(assert (= (and b!3983669 res!1615129) b!3983668))

(assert (= (and b!3983668 res!1615134) b!3983673))

(declare-fun m!4558785 () Bool)

(assert (=> d!1179140 m!4558785))

(declare-fun m!4558787 () Bool)

(assert (=> d!1179140 m!4558787))

(declare-fun m!4558789 () Bool)

(assert (=> d!1179140 m!4558789))

(assert (=> d!1179140 m!4557889))

(declare-fun m!4558791 () Bool)

(assert (=> b!3983666 m!4558791))

(declare-fun m!4558793 () Bool)

(assert (=> b!3983666 m!4558793))

(assert (=> b!3983666 m!4558143))

(assert (=> b!3983665 m!4558791))

(declare-fun m!4558795 () Bool)

(assert (=> b!3983665 m!4558795))

(assert (=> b!3983665 m!4558795))

(declare-fun m!4558797 () Bool)

(assert (=> b!3983665 m!4558797))

(assert (=> b!3983665 m!4558797))

(declare-fun m!4558799 () Bool)

(assert (=> b!3983665 m!4558799))

(assert (=> b!3983669 m!4558791))

(assert (=> b!3983668 m!4558791))

(declare-fun m!4558801 () Bool)

(assert (=> b!3983668 m!4558801))

(assert (=> b!3983668 m!4558801))

(declare-fun m!4558803 () Bool)

(assert (=> b!3983668 m!4558803))

(declare-fun m!4558805 () Bool)

(assert (=> b!3983672 m!4558805))

(assert (=> b!3983672 m!4558143))

(assert (=> b!3983672 m!4558805))

(assert (=> b!3983672 m!4558143))

(declare-fun m!4558807 () Bool)

(assert (=> b!3983672 m!4558807))

(declare-fun m!4558809 () Bool)

(assert (=> b!3983672 m!4558809))

(assert (=> b!3983673 m!4558791))

(declare-fun m!4558811 () Bool)

(assert (=> b!3983673 m!4558811))

(assert (=> b!3983671 m!4558805))

(assert (=> b!3983671 m!4558143))

(assert (=> b!3983671 m!4558807))

(declare-fun m!4558813 () Bool)

(assert (=> b!3983671 m!4558813))

(declare-fun m!4558815 () Bool)

(assert (=> b!3983671 m!4558815))

(assert (=> b!3983671 m!4558813))

(declare-fun m!4558817 () Bool)

(assert (=> b!3983671 m!4558817))

(assert (=> b!3983671 m!4558143))

(declare-fun m!4558819 () Bool)

(assert (=> b!3983671 m!4558819))

(assert (=> b!3983671 m!4558813))

(assert (=> b!3983671 m!4558805))

(declare-fun m!4558821 () Bool)

(assert (=> b!3983671 m!4558821))

(assert (=> b!3983671 m!4558813))

(declare-fun m!4558823 () Bool)

(assert (=> b!3983671 m!4558823))

(assert (=> b!3983670 m!4558791))

(assert (=> b!3983670 m!4558795))

(assert (=> b!3983670 m!4558795))

(assert (=> b!3983670 m!4558797))

(assert (=> b!3983670 m!4558797))

(declare-fun m!4558825 () Bool)

(assert (=> b!3983670 m!4558825))

(assert (=> b!3983193 d!1179140))

(declare-fun b!3983676 () Bool)

(declare-fun e!2468967 () Bool)

(assert (=> b!3983676 (= e!2468967 (isPrefix!3817 (tail!6212 lt!1400541) (tail!6212 lt!1400524)))))

(declare-fun d!1179142 () Bool)

(declare-fun e!2468968 () Bool)

(assert (=> d!1179142 e!2468968))

(declare-fun res!1615136 () Bool)

(assert (=> d!1179142 (=> res!1615136 e!2468968)))

(declare-fun lt!1400775 () Bool)

(assert (=> d!1179142 (= res!1615136 (not lt!1400775))))

(declare-fun e!2468969 () Bool)

(assert (=> d!1179142 (= lt!1400775 e!2468969)))

(declare-fun res!1615139 () Bool)

(assert (=> d!1179142 (=> res!1615139 e!2468969)))

(assert (=> d!1179142 (= res!1615139 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1179142 (= (isPrefix!3817 lt!1400541 lt!1400524) lt!1400775)))

(declare-fun b!3983677 () Bool)

(assert (=> b!3983677 (= e!2468968 (>= (size!31861 lt!1400524) (size!31861 lt!1400541)))))

(declare-fun b!3983675 () Bool)

(declare-fun res!1615138 () Bool)

(assert (=> b!3983675 (=> (not res!1615138) (not e!2468967))))

(assert (=> b!3983675 (= res!1615138 (= (head!8480 lt!1400541) (head!8480 lt!1400524)))))

(declare-fun b!3983674 () Bool)

(assert (=> b!3983674 (= e!2468969 e!2468967)))

(declare-fun res!1615137 () Bool)

(assert (=> b!3983674 (=> (not res!1615137) (not e!2468967))))

(assert (=> b!3983674 (= res!1615137 (not ((_ is Nil!42594) lt!1400524)))))

(assert (= (and d!1179142 (not res!1615139)) b!3983674))

(assert (= (and b!3983674 res!1615137) b!3983675))

(assert (= (and b!3983675 res!1615138) b!3983676))

(assert (= (and d!1179142 (not res!1615136)) b!3983677))

(declare-fun m!4558827 () Bool)

(assert (=> b!3983676 m!4558827))

(declare-fun m!4558829 () Bool)

(assert (=> b!3983676 m!4558829))

(assert (=> b!3983676 m!4558827))

(assert (=> b!3983676 m!4558829))

(declare-fun m!4558831 () Bool)

(assert (=> b!3983676 m!4558831))

(declare-fun m!4558833 () Bool)

(assert (=> b!3983677 m!4558833))

(assert (=> b!3983677 m!4557863))

(declare-fun m!4558835 () Bool)

(assert (=> b!3983675 m!4558835))

(declare-fun m!4558837 () Bool)

(assert (=> b!3983675 m!4558837))

(assert (=> b!3983193 d!1179142))

(declare-fun d!1179144 () Bool)

(assert (=> d!1179144 (= (isEmpty!25462 rules!2999) ((_ is Nil!42596) rules!2999))))

(assert (=> b!3983170 d!1179144))

(declare-fun b!3983680 () Bool)

(declare-fun e!2468970 () Bool)

(assert (=> b!3983680 (= e!2468970 (isPrefix!3817 (tail!6212 lt!1400541) (tail!6212 lt!1400551)))))

(declare-fun d!1179146 () Bool)

(declare-fun e!2468971 () Bool)

(assert (=> d!1179146 e!2468971))

(declare-fun res!1615140 () Bool)

(assert (=> d!1179146 (=> res!1615140 e!2468971)))

(declare-fun lt!1400776 () Bool)

(assert (=> d!1179146 (= res!1615140 (not lt!1400776))))

(declare-fun e!2468972 () Bool)

(assert (=> d!1179146 (= lt!1400776 e!2468972)))

(declare-fun res!1615143 () Bool)

(assert (=> d!1179146 (=> res!1615143 e!2468972)))

(assert (=> d!1179146 (= res!1615143 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1179146 (= (isPrefix!3817 lt!1400541 lt!1400551) lt!1400776)))

(declare-fun b!3983681 () Bool)

(assert (=> b!3983681 (= e!2468971 (>= (size!31861 lt!1400551) (size!31861 lt!1400541)))))

(declare-fun b!3983679 () Bool)

(declare-fun res!1615142 () Bool)

(assert (=> b!3983679 (=> (not res!1615142) (not e!2468970))))

(assert (=> b!3983679 (= res!1615142 (= (head!8480 lt!1400541) (head!8480 lt!1400551)))))

(declare-fun b!3983678 () Bool)

(assert (=> b!3983678 (= e!2468972 e!2468970)))

(declare-fun res!1615141 () Bool)

(assert (=> b!3983678 (=> (not res!1615141) (not e!2468970))))

(assert (=> b!3983678 (= res!1615141 (not ((_ is Nil!42594) lt!1400551)))))

(assert (= (and d!1179146 (not res!1615143)) b!3983678))

(assert (= (and b!3983678 res!1615141) b!3983679))

(assert (= (and b!3983679 res!1615142) b!3983680))

(assert (= (and d!1179146 (not res!1615140)) b!3983681))

(assert (=> b!3983680 m!4558827))

(assert (=> b!3983680 m!4558145))

(assert (=> b!3983680 m!4558827))

(assert (=> b!3983680 m!4558145))

(declare-fun m!4558839 () Bool)

(assert (=> b!3983680 m!4558839))

(assert (=> b!3983681 m!4558143))

(assert (=> b!3983681 m!4557863))

(assert (=> b!3983679 m!4558835))

(assert (=> b!3983679 m!4558151))

(assert (=> b!3983192 d!1179146))

(declare-fun b!3983684 () Bool)

(declare-fun e!2468973 () Bool)

(assert (=> b!3983684 (= e!2468973 (isPrefix!3817 (tail!6212 lt!1400541) (tail!6212 lt!1400556)))))

(declare-fun d!1179148 () Bool)

(declare-fun e!2468974 () Bool)

(assert (=> d!1179148 e!2468974))

(declare-fun res!1615144 () Bool)

(assert (=> d!1179148 (=> res!1615144 e!2468974)))

(declare-fun lt!1400777 () Bool)

(assert (=> d!1179148 (= res!1615144 (not lt!1400777))))

(declare-fun e!2468975 () Bool)

(assert (=> d!1179148 (= lt!1400777 e!2468975)))

(declare-fun res!1615147 () Bool)

(assert (=> d!1179148 (=> res!1615147 e!2468975)))

(assert (=> d!1179148 (= res!1615147 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1179148 (= (isPrefix!3817 lt!1400541 lt!1400556) lt!1400777)))

(declare-fun b!3983685 () Bool)

(assert (=> b!3983685 (= e!2468974 (>= (size!31861 lt!1400556) (size!31861 lt!1400541)))))

(declare-fun b!3983683 () Bool)

(declare-fun res!1615146 () Bool)

(assert (=> b!3983683 (=> (not res!1615146) (not e!2468973))))

(assert (=> b!3983683 (= res!1615146 (= (head!8480 lt!1400541) (head!8480 lt!1400556)))))

(declare-fun b!3983682 () Bool)

(assert (=> b!3983682 (= e!2468975 e!2468973)))

(declare-fun res!1615145 () Bool)

(assert (=> b!3983682 (=> (not res!1615145) (not e!2468973))))

(assert (=> b!3983682 (= res!1615145 (not ((_ is Nil!42594) lt!1400556)))))

(assert (= (and d!1179148 (not res!1615147)) b!3983682))

(assert (= (and b!3983682 res!1615145) b!3983683))

(assert (= (and b!3983683 res!1615146) b!3983684))

(assert (= (and d!1179148 (not res!1615144)) b!3983685))

(assert (=> b!3983684 m!4558827))

(declare-fun m!4558841 () Bool)

(assert (=> b!3983684 m!4558841))

(assert (=> b!3983684 m!4558827))

(assert (=> b!3983684 m!4558841))

(declare-fun m!4558843 () Bool)

(assert (=> b!3983684 m!4558843))

(declare-fun m!4558845 () Bool)

(assert (=> b!3983685 m!4558845))

(assert (=> b!3983685 m!4557863))

(assert (=> b!3983683 m!4558835))

(declare-fun m!4558847 () Bool)

(assert (=> b!3983683 m!4558847))

(assert (=> b!3983192 d!1179148))

(declare-fun b!3983688 () Bool)

(declare-fun e!2468976 () Bool)

(assert (=> b!3983688 (= e!2468976 (isPrefix!3817 (tail!6212 prefix!494) (tail!6212 lt!1400551)))))

(declare-fun d!1179150 () Bool)

(declare-fun e!2468977 () Bool)

(assert (=> d!1179150 e!2468977))

(declare-fun res!1615148 () Bool)

(assert (=> d!1179150 (=> res!1615148 e!2468977)))

(declare-fun lt!1400778 () Bool)

(assert (=> d!1179150 (= res!1615148 (not lt!1400778))))

(declare-fun e!2468978 () Bool)

(assert (=> d!1179150 (= lt!1400778 e!2468978)))

(declare-fun res!1615151 () Bool)

(assert (=> d!1179150 (=> res!1615151 e!2468978)))

(assert (=> d!1179150 (= res!1615151 ((_ is Nil!42594) prefix!494))))

(assert (=> d!1179150 (= (isPrefix!3817 prefix!494 lt!1400551) lt!1400778)))

(declare-fun b!3983689 () Bool)

(assert (=> b!3983689 (= e!2468977 (>= (size!31861 lt!1400551) (size!31861 prefix!494)))))

(declare-fun b!3983687 () Bool)

(declare-fun res!1615150 () Bool)

(assert (=> b!3983687 (=> (not res!1615150) (not e!2468976))))

(assert (=> b!3983687 (= res!1615150 (= (head!8480 prefix!494) (head!8480 lt!1400551)))))

(declare-fun b!3983686 () Bool)

(assert (=> b!3983686 (= e!2468978 e!2468976)))

(declare-fun res!1615149 () Bool)

(assert (=> b!3983686 (=> (not res!1615149) (not e!2468976))))

(assert (=> b!3983686 (= res!1615149 (not ((_ is Nil!42594) lt!1400551)))))

(assert (= (and d!1179150 (not res!1615151)) b!3983686))

(assert (= (and b!3983686 res!1615149) b!3983687))

(assert (= (and b!3983687 res!1615150) b!3983688))

(assert (= (and d!1179150 (not res!1615148)) b!3983689))

(declare-fun m!4558849 () Bool)

(assert (=> b!3983688 m!4558849))

(assert (=> b!3983688 m!4558145))

(assert (=> b!3983688 m!4558849))

(assert (=> b!3983688 m!4558145))

(declare-fun m!4558851 () Bool)

(assert (=> b!3983688 m!4558851))

(assert (=> b!3983689 m!4558143))

(assert (=> b!3983689 m!4557865))

(declare-fun m!4558853 () Bool)

(assert (=> b!3983687 m!4558853))

(assert (=> b!3983687 m!4558151))

(assert (=> b!3983192 d!1179150))

(declare-fun d!1179152 () Bool)

(assert (=> d!1179152 (isPrefix!3817 lt!1400541 (++!11132 lt!1400541 suffixResult!105))))

(declare-fun lt!1400779 () Unit!61268)

(assert (=> d!1179152 (= lt!1400779 (choose!23909 lt!1400541 suffixResult!105))))

(assert (=> d!1179152 (= (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400541 suffixResult!105) lt!1400779)))

(declare-fun bs!588071 () Bool)

(assert (= bs!588071 d!1179152))

(assert (=> bs!588071 m!4557885))

(assert (=> bs!588071 m!4557885))

(declare-fun m!4558855 () Bool)

(assert (=> bs!588071 m!4558855))

(declare-fun m!4558857 () Bool)

(assert (=> bs!588071 m!4558857))

(assert (=> b!3983192 d!1179152))

(declare-fun d!1179154 () Bool)

(assert (=> d!1179154 (isPrefix!3817 prefix!494 (++!11132 prefix!494 suffix!1299))))

(declare-fun lt!1400780 () Unit!61268)

(assert (=> d!1179154 (= lt!1400780 (choose!23909 prefix!494 suffix!1299))))

(assert (=> d!1179154 (= (lemmaConcatTwoListThenFirstIsPrefix!2660 prefix!494 suffix!1299) lt!1400780)))

(declare-fun bs!588072 () Bool)

(assert (= bs!588072 d!1179154))

(assert (=> bs!588072 m!4557961))

(assert (=> bs!588072 m!4557961))

(declare-fun m!4558859 () Bool)

(assert (=> bs!588072 m!4558859))

(declare-fun m!4558861 () Bool)

(assert (=> bs!588072 m!4558861))

(assert (=> b!3983192 d!1179154))

(declare-fun d!1179156 () Bool)

(assert (=> d!1179156 (= (inv!56895 (tag!7590 (rule!9738 token!484))) (= (mod (str.len (value!212438 (tag!7590 (rule!9738 token!484)))) 2) 0))))

(assert (=> b!3983190 d!1179156))

(declare-fun d!1179158 () Bool)

(declare-fun res!1615154 () Bool)

(declare-fun e!2468981 () Bool)

(assert (=> d!1179158 (=> (not res!1615154) (not e!2468981))))

(assert (=> d!1179158 (= res!1615154 (semiInverseModEq!2887 (toChars!9077 (transformation!6730 (rule!9738 token!484))) (toValue!9218 (transformation!6730 (rule!9738 token!484)))))))

(assert (=> d!1179158 (= (inv!56898 (transformation!6730 (rule!9738 token!484))) e!2468981)))

(declare-fun b!3983692 () Bool)

(assert (=> b!3983692 (= e!2468981 (equivClasses!2786 (toChars!9077 (transformation!6730 (rule!9738 token!484))) (toValue!9218 (transformation!6730 (rule!9738 token!484)))))))

(assert (= (and d!1179158 res!1615154) b!3983692))

(assert (=> d!1179158 m!4558237))

(assert (=> b!3983692 m!4558239))

(assert (=> b!3983190 d!1179158))

(declare-fun d!1179160 () Bool)

(assert (=> d!1179160 (= (inv!56895 (tag!7590 (h!48016 rules!2999))) (= (mod (str.len (value!212438 (tag!7590 (h!48016 rules!2999)))) 2) 0))))

(assert (=> b!3983169 d!1179160))

(declare-fun d!1179162 () Bool)

(declare-fun res!1615155 () Bool)

(declare-fun e!2468982 () Bool)

(assert (=> d!1179162 (=> (not res!1615155) (not e!2468982))))

(assert (=> d!1179162 (= res!1615155 (semiInverseModEq!2887 (toChars!9077 (transformation!6730 (h!48016 rules!2999))) (toValue!9218 (transformation!6730 (h!48016 rules!2999)))))))

(assert (=> d!1179162 (= (inv!56898 (transformation!6730 (h!48016 rules!2999))) e!2468982)))

(declare-fun b!3983693 () Bool)

(assert (=> b!3983693 (= e!2468982 (equivClasses!2786 (toChars!9077 (transformation!6730 (h!48016 rules!2999))) (toValue!9218 (transformation!6730 (h!48016 rules!2999)))))))

(assert (= (and d!1179162 res!1615155) b!3983693))

(declare-fun m!4558863 () Bool)

(assert (=> d!1179162 m!4558863))

(declare-fun m!4558865 () Bool)

(assert (=> b!3983693 m!4558865))

(assert (=> b!3983169 d!1179162))

(declare-fun b!3983695 () Bool)

(declare-fun e!2468983 () List!42718)

(assert (=> b!3983695 (= e!2468983 (Cons!42594 (h!48014 prefix!494) (++!11132 (t!331421 prefix!494) newSuffix!27)))))

(declare-fun d!1179164 () Bool)

(declare-fun e!2468984 () Bool)

(assert (=> d!1179164 e!2468984))

(declare-fun res!1615156 () Bool)

(assert (=> d!1179164 (=> (not res!1615156) (not e!2468984))))

(declare-fun lt!1400781 () List!42718)

(assert (=> d!1179164 (= res!1615156 (= (content!6456 lt!1400781) ((_ map or) (content!6456 prefix!494) (content!6456 newSuffix!27))))))

(assert (=> d!1179164 (= lt!1400781 e!2468983)))

(declare-fun c!689944 () Bool)

(assert (=> d!1179164 (= c!689944 ((_ is Nil!42594) prefix!494))))

(assert (=> d!1179164 (= (++!11132 prefix!494 newSuffix!27) lt!1400781)))

(declare-fun b!3983694 () Bool)

(assert (=> b!3983694 (= e!2468983 newSuffix!27)))

(declare-fun b!3983696 () Bool)

(declare-fun res!1615157 () Bool)

(assert (=> b!3983696 (=> (not res!1615157) (not e!2468984))))

(assert (=> b!3983696 (= res!1615157 (= (size!31861 lt!1400781) (+ (size!31861 prefix!494) (size!31861 newSuffix!27))))))

(declare-fun b!3983697 () Bool)

(assert (=> b!3983697 (= e!2468984 (or (not (= newSuffix!27 Nil!42594)) (= lt!1400781 prefix!494)))))

(assert (= (and d!1179164 c!689944) b!3983694))

(assert (= (and d!1179164 (not c!689944)) b!3983695))

(assert (= (and d!1179164 res!1615156) b!3983696))

(assert (= (and b!3983696 res!1615157) b!3983697))

(declare-fun m!4558867 () Bool)

(assert (=> b!3983695 m!4558867))

(declare-fun m!4558869 () Bool)

(assert (=> d!1179164 m!4558869))

(declare-fun m!4558871 () Bool)

(assert (=> d!1179164 m!4558871))

(assert (=> d!1179164 m!4558087))

(declare-fun m!4558873 () Bool)

(assert (=> b!3983696 m!4558873))

(assert (=> b!3983696 m!4557865))

(assert (=> b!3983696 m!4557945))

(assert (=> b!3983167 d!1179164))

(declare-fun b!3983699 () Bool)

(declare-fun e!2468985 () List!42718)

(assert (=> b!3983699 (= e!2468985 (Cons!42594 (h!48014 lt!1400541) (++!11132 (t!331421 lt!1400541) newSuffixResult!27)))))

(declare-fun d!1179166 () Bool)

(declare-fun e!2468986 () Bool)

(assert (=> d!1179166 e!2468986))

(declare-fun res!1615158 () Bool)

(assert (=> d!1179166 (=> (not res!1615158) (not e!2468986))))

(declare-fun lt!1400782 () List!42718)

(assert (=> d!1179166 (= res!1615158 (= (content!6456 lt!1400782) ((_ map or) (content!6456 lt!1400541) (content!6456 newSuffixResult!27))))))

(assert (=> d!1179166 (= lt!1400782 e!2468985)))

(declare-fun c!689945 () Bool)

(assert (=> d!1179166 (= c!689945 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1179166 (= (++!11132 lt!1400541 newSuffixResult!27) lt!1400782)))

(declare-fun b!3983698 () Bool)

(assert (=> b!3983698 (= e!2468985 newSuffixResult!27)))

(declare-fun b!3983700 () Bool)

(declare-fun res!1615159 () Bool)

(assert (=> b!3983700 (=> (not res!1615159) (not e!2468986))))

(assert (=> b!3983700 (= res!1615159 (= (size!31861 lt!1400782) (+ (size!31861 lt!1400541) (size!31861 newSuffixResult!27))))))

(declare-fun b!3983701 () Bool)

(assert (=> b!3983701 (= e!2468986 (or (not (= newSuffixResult!27 Nil!42594)) (= lt!1400782 lt!1400541)))))

(assert (= (and d!1179166 c!689945) b!3983698))

(assert (= (and d!1179166 (not c!689945)) b!3983699))

(assert (= (and d!1179166 res!1615158) b!3983700))

(assert (= (and b!3983700 res!1615159) b!3983701))

(declare-fun m!4558875 () Bool)

(assert (=> b!3983699 m!4558875))

(declare-fun m!4558877 () Bool)

(assert (=> d!1179166 m!4558877))

(assert (=> d!1179166 m!4558133))

(declare-fun m!4558879 () Bool)

(assert (=> d!1179166 m!4558879))

(declare-fun m!4558881 () Bool)

(assert (=> b!3983700 m!4558881))

(assert (=> b!3983700 m!4557863))

(declare-fun m!4558883 () Bool)

(assert (=> b!3983700 m!4558883))

(assert (=> b!3983167 d!1179166))

(declare-fun d!1179168 () Bool)

(declare-fun lt!1400783 () Int)

(assert (=> d!1179168 (>= lt!1400783 0)))

(declare-fun e!2468987 () Int)

(assert (=> d!1179168 (= lt!1400783 e!2468987)))

(declare-fun c!689946 () Bool)

(assert (=> d!1179168 (= c!689946 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1179168 (= (size!31861 lt!1400541) lt!1400783)))

(declare-fun b!3983702 () Bool)

(assert (=> b!3983702 (= e!2468987 0)))

(declare-fun b!3983703 () Bool)

(assert (=> b!3983703 (= e!2468987 (+ 1 (size!31861 (t!331421 lt!1400541))))))

(assert (= (and d!1179168 c!689946) b!3983702))

(assert (= (and d!1179168 (not c!689946)) b!3983703))

(declare-fun m!4558885 () Bool)

(assert (=> b!3983703 m!4558885))

(assert (=> b!3983168 d!1179168))

(declare-fun d!1179170 () Bool)

(declare-fun lt!1400784 () Int)

(assert (=> d!1179170 (>= lt!1400784 0)))

(declare-fun e!2468988 () Int)

(assert (=> d!1179170 (= lt!1400784 e!2468988)))

(declare-fun c!689947 () Bool)

(assert (=> d!1179170 (= c!689947 ((_ is Nil!42594) prefix!494))))

(assert (=> d!1179170 (= (size!31861 prefix!494) lt!1400784)))

(declare-fun b!3983704 () Bool)

(assert (=> b!3983704 (= e!2468988 0)))

(declare-fun b!3983705 () Bool)

(assert (=> b!3983705 (= e!2468988 (+ 1 (size!31861 (t!331421 prefix!494))))))

(assert (= (and d!1179170 c!689947) b!3983704))

(assert (= (and d!1179170 (not c!689947)) b!3983705))

(declare-fun m!4558887 () Bool)

(assert (=> b!3983705 m!4558887))

(assert (=> b!3983168 d!1179170))

(declare-fun d!1179172 () Bool)

(declare-fun list!15812 (Conc!12941) List!42718)

(assert (=> d!1179172 (= (list!15810 (charsOf!4546 token!484)) (list!15812 (c!689868 (charsOf!4546 token!484))))))

(declare-fun bs!588073 () Bool)

(assert (= bs!588073 d!1179172))

(declare-fun m!4558889 () Bool)

(assert (=> bs!588073 m!4558889))

(assert (=> b!3983168 d!1179172))

(declare-fun d!1179174 () Bool)

(declare-fun lt!1400787 () BalanceConc!25476)

(assert (=> d!1179174 (= (list!15810 lt!1400787) (originalCharacters!7330 token!484))))

(declare-fun dynLambda!18113 (Int TokenValue!6960) BalanceConc!25476)

(assert (=> d!1179174 (= lt!1400787 (dynLambda!18113 (toChars!9077 (transformation!6730 (rule!9738 token!484))) (value!212439 token!484)))))

(assert (=> d!1179174 (= (charsOf!4546 token!484) lt!1400787)))

(declare-fun b_lambda!116347 () Bool)

(assert (=> (not b_lambda!116347) (not d!1179174)))

(declare-fun t!331445 () Bool)

(declare-fun tb!239985 () Bool)

(assert (=> (and b!3983183 (= (toChars!9077 (transformation!6730 (rule!9738 token!484))) (toChars!9077 (transformation!6730 (rule!9738 token!484)))) t!331445) tb!239985))

(declare-fun b!3983710 () Bool)

(declare-fun e!2468991 () Bool)

(declare-fun tp!1214109 () Bool)

(declare-fun inv!56902 (Conc!12941) Bool)

(assert (=> b!3983710 (= e!2468991 (and (inv!56902 (c!689868 (dynLambda!18113 (toChars!9077 (transformation!6730 (rule!9738 token!484))) (value!212439 token!484)))) tp!1214109))))

(declare-fun result!290732 () Bool)

(declare-fun inv!56903 (BalanceConc!25476) Bool)

(assert (=> tb!239985 (= result!290732 (and (inv!56903 (dynLambda!18113 (toChars!9077 (transformation!6730 (rule!9738 token!484))) (value!212439 token!484))) e!2468991))))

(assert (= tb!239985 b!3983710))

(declare-fun m!4558891 () Bool)

(assert (=> b!3983710 m!4558891))

(declare-fun m!4558893 () Bool)

(assert (=> tb!239985 m!4558893))

(assert (=> d!1179174 t!331445))

(declare-fun b_and!306175 () Bool)

(assert (= b_and!306145 (and (=> t!331445 result!290732) b_and!306175)))

(declare-fun t!331447 () Bool)

(declare-fun tb!239987 () Bool)

(assert (=> (and b!3983202 (= (toChars!9077 (transformation!6730 (h!48016 rules!2999))) (toChars!9077 (transformation!6730 (rule!9738 token!484)))) t!331447) tb!239987))

(declare-fun result!290736 () Bool)

(assert (= result!290736 result!290732))

(assert (=> d!1179174 t!331447))

(declare-fun b_and!306177 () Bool)

(assert (= b_and!306149 (and (=> t!331447 result!290736) b_and!306177)))

(declare-fun m!4558895 () Bool)

(assert (=> d!1179174 m!4558895))

(declare-fun m!4558897 () Bool)

(assert (=> d!1179174 m!4558897))

(assert (=> b!3983168 d!1179174))

(declare-fun d!1179176 () Bool)

(declare-fun e!2469000 () Bool)

(assert (=> d!1179176 e!2469000))

(declare-fun res!1615176 () Bool)

(assert (=> d!1179176 (=> res!1615176 e!2469000)))

(declare-fun lt!1400802 () Option!9144)

(assert (=> d!1179176 (= res!1615176 (isEmpty!25466 lt!1400802))))

(declare-fun e!2468998 () Option!9144)

(assert (=> d!1179176 (= lt!1400802 e!2468998)))

(declare-fun c!689950 () Bool)

(assert (=> d!1179176 (= c!689950 (and ((_ is Cons!42596) rules!2999) ((_ is Nil!42596) (t!331423 rules!2999))))))

(declare-fun lt!1400800 () Unit!61268)

(declare-fun lt!1400798 () Unit!61268)

(assert (=> d!1179176 (= lt!1400800 lt!1400798)))

(assert (=> d!1179176 (isPrefix!3817 lt!1400536 lt!1400536)))

(assert (=> d!1179176 (= lt!1400798 (lemmaIsPrefixRefl!2409 lt!1400536 lt!1400536))))

(assert (=> d!1179176 (rulesValidInductive!2443 thiss!21717 rules!2999)))

(assert (=> d!1179176 (= (maxPrefix!3617 thiss!21717 rules!2999 lt!1400536) lt!1400802)))

(declare-fun b!3983729 () Bool)

(declare-fun call!285750 () Option!9144)

(assert (=> b!3983729 (= e!2468998 call!285750)))

(declare-fun b!3983730 () Bool)

(declare-fun res!1615175 () Bool)

(declare-fun e!2468999 () Bool)

(assert (=> b!3983730 (=> (not res!1615175) (not e!2468999))))

(assert (=> b!3983730 (= res!1615175 (= (value!212439 (_1!24040 (get!14021 lt!1400802))) (apply!9941 (transformation!6730 (rule!9738 (_1!24040 (get!14021 lt!1400802)))) (seqFromList!4969 (originalCharacters!7330 (_1!24040 (get!14021 lt!1400802)))))))))

(declare-fun b!3983731 () Bool)

(assert (=> b!3983731 (= e!2469000 e!2468999)))

(declare-fun res!1615174 () Bool)

(assert (=> b!3983731 (=> (not res!1615174) (not e!2468999))))

(declare-fun isDefined!7032 (Option!9144) Bool)

(assert (=> b!3983731 (= res!1615174 (isDefined!7032 lt!1400802))))

(declare-fun b!3983732 () Bool)

(assert (=> b!3983732 (= e!2468999 (contains!8475 rules!2999 (rule!9738 (_1!24040 (get!14021 lt!1400802)))))))

(declare-fun bm!285745 () Bool)

(assert (=> bm!285745 (= call!285750 (maxPrefixOneRule!2651 thiss!21717 (h!48016 rules!2999) lt!1400536))))

(declare-fun b!3983733 () Bool)

(declare-fun res!1615177 () Bool)

(assert (=> b!3983733 (=> (not res!1615177) (not e!2468999))))

(assert (=> b!3983733 (= res!1615177 (< (size!31861 (_2!24040 (get!14021 lt!1400802))) (size!31861 lt!1400536)))))

(declare-fun b!3983734 () Bool)

(declare-fun res!1615179 () Bool)

(assert (=> b!3983734 (=> (not res!1615179) (not e!2468999))))

(assert (=> b!3983734 (= res!1615179 (= (list!15810 (charsOf!4546 (_1!24040 (get!14021 lt!1400802)))) (originalCharacters!7330 (_1!24040 (get!14021 lt!1400802)))))))

(declare-fun b!3983735 () Bool)

(declare-fun res!1615180 () Bool)

(assert (=> b!3983735 (=> (not res!1615180) (not e!2468999))))

(assert (=> b!3983735 (= res!1615180 (matchR!5612 (regex!6730 (rule!9738 (_1!24040 (get!14021 lt!1400802)))) (list!15810 (charsOf!4546 (_1!24040 (get!14021 lt!1400802))))))))

(declare-fun b!3983736 () Bool)

(declare-fun lt!1400799 () Option!9144)

(declare-fun lt!1400801 () Option!9144)

(assert (=> b!3983736 (= e!2468998 (ite (and ((_ is None!9143) lt!1400799) ((_ is None!9143) lt!1400801)) None!9143 (ite ((_ is None!9143) lt!1400801) lt!1400799 (ite ((_ is None!9143) lt!1400799) lt!1400801 (ite (>= (size!31860 (_1!24040 (v!39491 lt!1400799))) (size!31860 (_1!24040 (v!39491 lt!1400801)))) lt!1400799 lt!1400801)))))))

(assert (=> b!3983736 (= lt!1400799 call!285750)))

(assert (=> b!3983736 (= lt!1400801 (maxPrefix!3617 thiss!21717 (t!331423 rules!2999) lt!1400536))))

(declare-fun b!3983737 () Bool)

(declare-fun res!1615178 () Bool)

(assert (=> b!3983737 (=> (not res!1615178) (not e!2468999))))

(assert (=> b!3983737 (= res!1615178 (= (++!11132 (list!15810 (charsOf!4546 (_1!24040 (get!14021 lt!1400802)))) (_2!24040 (get!14021 lt!1400802))) lt!1400536))))

(assert (= (and d!1179176 c!689950) b!3983729))

(assert (= (and d!1179176 (not c!689950)) b!3983736))

(assert (= (or b!3983729 b!3983736) bm!285745))

(assert (= (and d!1179176 (not res!1615176)) b!3983731))

(assert (= (and b!3983731 res!1615174) b!3983734))

(assert (= (and b!3983734 res!1615179) b!3983733))

(assert (= (and b!3983733 res!1615177) b!3983737))

(assert (= (and b!3983737 res!1615178) b!3983730))

(assert (= (and b!3983730 res!1615175) b!3983735))

(assert (= (and b!3983735 res!1615180) b!3983732))

(declare-fun m!4558899 () Bool)

(assert (=> b!3983730 m!4558899))

(declare-fun m!4558901 () Bool)

(assert (=> b!3983730 m!4558901))

(assert (=> b!3983730 m!4558901))

(declare-fun m!4558903 () Bool)

(assert (=> b!3983730 m!4558903))

(declare-fun m!4558905 () Bool)

(assert (=> b!3983736 m!4558905))

(assert (=> b!3983732 m!4558899))

(declare-fun m!4558907 () Bool)

(assert (=> b!3983732 m!4558907))

(assert (=> b!3983737 m!4558899))

(declare-fun m!4558909 () Bool)

(assert (=> b!3983737 m!4558909))

(assert (=> b!3983737 m!4558909))

(declare-fun m!4558911 () Bool)

(assert (=> b!3983737 m!4558911))

(assert (=> b!3983737 m!4558911))

(declare-fun m!4558913 () Bool)

(assert (=> b!3983737 m!4558913))

(assert (=> b!3983735 m!4558899))

(assert (=> b!3983735 m!4558909))

(assert (=> b!3983735 m!4558909))

(assert (=> b!3983735 m!4558911))

(assert (=> b!3983735 m!4558911))

(declare-fun m!4558915 () Bool)

(assert (=> b!3983735 m!4558915))

(declare-fun m!4558917 () Bool)

(assert (=> bm!285745 m!4558917))

(declare-fun m!4558919 () Bool)

(assert (=> d!1179176 m!4558919))

(declare-fun m!4558921 () Bool)

(assert (=> d!1179176 m!4558921))

(declare-fun m!4558923 () Bool)

(assert (=> d!1179176 m!4558923))

(assert (=> d!1179176 m!4557941))

(declare-fun m!4558925 () Bool)

(assert (=> b!3983731 m!4558925))

(assert (=> b!3983734 m!4558899))

(assert (=> b!3983734 m!4558909))

(assert (=> b!3983734 m!4558909))

(assert (=> b!3983734 m!4558911))

(assert (=> b!3983733 m!4558899))

(declare-fun m!4558927 () Bool)

(assert (=> b!3983733 m!4558927))

(assert (=> b!3983733 m!4558169))

(assert (=> b!3983166 d!1179176))

(declare-fun d!1179178 () Bool)

(assert (=> d!1179178 (= suffixResult!105 lt!1400568)))

(declare-fun lt!1400803 () Unit!61268)

(assert (=> d!1179178 (= lt!1400803 (choose!23908 lt!1400541 suffixResult!105 lt!1400541 lt!1400568 lt!1400551))))

(assert (=> d!1179178 (isPrefix!3817 lt!1400541 lt!1400551)))

(assert (=> d!1179178 (= (lemmaSamePrefixThenSameSuffix!2004 lt!1400541 suffixResult!105 lt!1400541 lt!1400568 lt!1400551) lt!1400803)))

(declare-fun bs!588074 () Bool)

(assert (= bs!588074 d!1179178))

(declare-fun m!4558929 () Bool)

(assert (=> bs!588074 m!4558929))

(assert (=> bs!588074 m!4558027))

(assert (=> b!3983166 d!1179178))

(declare-fun b!3983740 () Bool)

(declare-fun e!2469001 () Bool)

(assert (=> b!3983740 (= e!2469001 (isPrefix!3817 (tail!6212 lt!1400541) (tail!6212 lt!1400548)))))

(declare-fun d!1179180 () Bool)

(declare-fun e!2469002 () Bool)

(assert (=> d!1179180 e!2469002))

(declare-fun res!1615181 () Bool)

(assert (=> d!1179180 (=> res!1615181 e!2469002)))

(declare-fun lt!1400804 () Bool)

(assert (=> d!1179180 (= res!1615181 (not lt!1400804))))

(declare-fun e!2469003 () Bool)

(assert (=> d!1179180 (= lt!1400804 e!2469003)))

(declare-fun res!1615184 () Bool)

(assert (=> d!1179180 (=> res!1615184 e!2469003)))

(assert (=> d!1179180 (= res!1615184 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1179180 (= (isPrefix!3817 lt!1400541 lt!1400548) lt!1400804)))

(declare-fun b!3983741 () Bool)

(assert (=> b!3983741 (= e!2469002 (>= (size!31861 lt!1400548) (size!31861 lt!1400541)))))

(declare-fun b!3983739 () Bool)

(declare-fun res!1615183 () Bool)

(assert (=> b!3983739 (=> (not res!1615183) (not e!2469001))))

(assert (=> b!3983739 (= res!1615183 (= (head!8480 lt!1400541) (head!8480 lt!1400548)))))

(declare-fun b!3983738 () Bool)

(assert (=> b!3983738 (= e!2469003 e!2469001)))

(declare-fun res!1615182 () Bool)

(assert (=> b!3983738 (=> (not res!1615182) (not e!2469001))))

(assert (=> b!3983738 (= res!1615182 (not ((_ is Nil!42594) lt!1400548)))))

(assert (= (and d!1179180 (not res!1615184)) b!3983738))

(assert (= (and b!3983738 res!1615182) b!3983739))

(assert (= (and b!3983739 res!1615183) b!3983740))

(assert (= (and d!1179180 (not res!1615181)) b!3983741))

(assert (=> b!3983740 m!4558827))

(declare-fun m!4558931 () Bool)

(assert (=> b!3983740 m!4558931))

(assert (=> b!3983740 m!4558827))

(assert (=> b!3983740 m!4558931))

(declare-fun m!4558933 () Bool)

(assert (=> b!3983740 m!4558933))

(declare-fun m!4558935 () Bool)

(assert (=> b!3983741 m!4558935))

(assert (=> b!3983741 m!4557863))

(assert (=> b!3983739 m!4558835))

(declare-fun m!4558937 () Bool)

(assert (=> b!3983739 m!4558937))

(assert (=> b!3983166 d!1179180))

(declare-fun d!1179182 () Bool)

(assert (=> d!1179182 (isPrefix!3817 lt!1400541 (++!11132 lt!1400541 lt!1400568))))

(declare-fun lt!1400805 () Unit!61268)

(assert (=> d!1179182 (= lt!1400805 (choose!23909 lt!1400541 lt!1400568))))

(assert (=> d!1179182 (= (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400541 lt!1400568) lt!1400805)))

(declare-fun bs!588075 () Bool)

(assert (= bs!588075 d!1179182))

(assert (=> bs!588075 m!4557871))

(assert (=> bs!588075 m!4557871))

(declare-fun m!4558939 () Bool)

(assert (=> bs!588075 m!4558939))

(declare-fun m!4558941 () Bool)

(assert (=> bs!588075 m!4558941))

(assert (=> b!3983166 d!1179182))

(declare-fun d!1179184 () Bool)

(declare-fun c!689955 () Bool)

(assert (=> d!1179184 (= c!689955 ((_ is IntegerValue!20880) (value!212439 token!484)))))

(declare-fun e!2469011 () Bool)

(assert (=> d!1179184 (= (inv!21 (value!212439 token!484)) e!2469011)))

(declare-fun b!3983752 () Bool)

(declare-fun inv!16 (TokenValue!6960) Bool)

(assert (=> b!3983752 (= e!2469011 (inv!16 (value!212439 token!484)))))

(declare-fun b!3983753 () Bool)

(declare-fun res!1615187 () Bool)

(declare-fun e!2469010 () Bool)

(assert (=> b!3983753 (=> res!1615187 e!2469010)))

(assert (=> b!3983753 (= res!1615187 (not ((_ is IntegerValue!20882) (value!212439 token!484))))))

(declare-fun e!2469012 () Bool)

(assert (=> b!3983753 (= e!2469012 e!2469010)))

(declare-fun b!3983754 () Bool)

(assert (=> b!3983754 (= e!2469011 e!2469012)))

(declare-fun c!689956 () Bool)

(assert (=> b!3983754 (= c!689956 ((_ is IntegerValue!20881) (value!212439 token!484)))))

(declare-fun b!3983755 () Bool)

(declare-fun inv!17 (TokenValue!6960) Bool)

(assert (=> b!3983755 (= e!2469012 (inv!17 (value!212439 token!484)))))

(declare-fun b!3983756 () Bool)

(declare-fun inv!15 (TokenValue!6960) Bool)

(assert (=> b!3983756 (= e!2469010 (inv!15 (value!212439 token!484)))))

(assert (= (and d!1179184 c!689955) b!3983752))

(assert (= (and d!1179184 (not c!689955)) b!3983754))

(assert (= (and b!3983754 c!689956) b!3983755))

(assert (= (and b!3983754 (not c!689956)) b!3983753))

(assert (= (and b!3983753 (not res!1615187)) b!3983756))

(declare-fun m!4558943 () Bool)

(assert (=> b!3983752 m!4558943))

(declare-fun m!4558945 () Bool)

(assert (=> b!3983755 m!4558945))

(declare-fun m!4558947 () Bool)

(assert (=> b!3983756 m!4558947))

(assert (=> b!3983188 d!1179184))

(declare-fun b!3983834 () Bool)

(declare-fun e!2469061 () Bool)

(declare-fun lt!1400811 () Bool)

(declare-fun call!285753 () Bool)

(assert (=> b!3983834 (= e!2469061 (= lt!1400811 call!285753))))

(declare-fun b!3983835 () Bool)

(declare-fun e!2469060 () Bool)

(declare-fun e!2469059 () Bool)

(assert (=> b!3983835 (= e!2469060 e!2469059)))

(declare-fun res!1615211 () Bool)

(assert (=> b!3983835 (=> res!1615211 e!2469059)))

(assert (=> b!3983835 (= res!1615211 call!285753)))

(declare-fun b!3983836 () Bool)

(assert (=> b!3983836 (= e!2469059 (not (= (head!8480 lt!1400541) (c!689869 (regex!6730 (rule!9738 token!484))))))))

(declare-fun b!3983837 () Bool)

(declare-fun res!1615212 () Bool)

(assert (=> b!3983837 (=> res!1615212 e!2469059)))

(assert (=> b!3983837 (= res!1615212 (not (isEmpty!25465 (tail!6212 lt!1400541))))))

(declare-fun b!3983839 () Bool)

(declare-fun res!1615214 () Bool)

(declare-fun e!2469056 () Bool)

(assert (=> b!3983839 (=> (not res!1615214) (not e!2469056))))

(assert (=> b!3983839 (= res!1615214 (not call!285753))))

(declare-fun b!3983840 () Bool)

(declare-fun res!1615213 () Bool)

(declare-fun e!2469062 () Bool)

(assert (=> b!3983840 (=> res!1615213 e!2469062)))

(assert (=> b!3983840 (= res!1615213 (not ((_ is ElementMatch!11635) (regex!6730 (rule!9738 token!484)))))))

(declare-fun e!2469057 () Bool)

(assert (=> b!3983840 (= e!2469057 e!2469062)))

(declare-fun b!3983841 () Bool)

(assert (=> b!3983841 (= e!2469061 e!2469057)))

(declare-fun c!689967 () Bool)

(assert (=> b!3983841 (= c!689967 ((_ is EmptyLang!11635) (regex!6730 (rule!9738 token!484))))))

(declare-fun b!3983842 () Bool)

(declare-fun e!2469058 () Bool)

(declare-fun derivativeStep!3490 (Regex!11635 C!23456) Regex!11635)

(assert (=> b!3983842 (= e!2469058 (matchR!5612 (derivativeStep!3490 (regex!6730 (rule!9738 token!484)) (head!8480 lt!1400541)) (tail!6212 lt!1400541)))))

(declare-fun b!3983843 () Bool)

(declare-fun res!1615215 () Bool)

(assert (=> b!3983843 (=> res!1615215 e!2469062)))

(assert (=> b!3983843 (= res!1615215 e!2469056)))

(declare-fun res!1615208 () Bool)

(assert (=> b!3983843 (=> (not res!1615208) (not e!2469056))))

(assert (=> b!3983843 (= res!1615208 lt!1400811)))

(declare-fun b!3983844 () Bool)

(declare-fun res!1615209 () Bool)

(assert (=> b!3983844 (=> (not res!1615209) (not e!2469056))))

(assert (=> b!3983844 (= res!1615209 (isEmpty!25465 (tail!6212 lt!1400541)))))

(declare-fun bm!285748 () Bool)

(assert (=> bm!285748 (= call!285753 (isEmpty!25465 lt!1400541))))

(declare-fun b!3983845 () Bool)

(assert (=> b!3983845 (= e!2469057 (not lt!1400811))))

(declare-fun b!3983838 () Bool)

(assert (=> b!3983838 (= e!2469062 e!2469060)))

(declare-fun res!1615210 () Bool)

(assert (=> b!3983838 (=> (not res!1615210) (not e!2469060))))

(assert (=> b!3983838 (= res!1615210 (not lt!1400811))))

(declare-fun d!1179186 () Bool)

(assert (=> d!1179186 e!2469061))

(declare-fun c!689966 () Bool)

(assert (=> d!1179186 (= c!689966 ((_ is EmptyExpr!11635) (regex!6730 (rule!9738 token!484))))))

(assert (=> d!1179186 (= lt!1400811 e!2469058)))

(declare-fun c!689965 () Bool)

(assert (=> d!1179186 (= c!689965 (isEmpty!25465 lt!1400541))))

(assert (=> d!1179186 (validRegex!5280 (regex!6730 (rule!9738 token!484)))))

(assert (=> d!1179186 (= (matchR!5612 (regex!6730 (rule!9738 token!484)) lt!1400541) lt!1400811)))

(declare-fun b!3983846 () Bool)

(assert (=> b!3983846 (= e!2469058 (nullable!4080 (regex!6730 (rule!9738 token!484))))))

(declare-fun b!3983847 () Bool)

(assert (=> b!3983847 (= e!2469056 (= (head!8480 lt!1400541) (c!689869 (regex!6730 (rule!9738 token!484)))))))

(assert (= (and d!1179186 c!689965) b!3983846))

(assert (= (and d!1179186 (not c!689965)) b!3983842))

(assert (= (and d!1179186 c!689966) b!3983834))

(assert (= (and d!1179186 (not c!689966)) b!3983841))

(assert (= (and b!3983841 c!689967) b!3983845))

(assert (= (and b!3983841 (not c!689967)) b!3983840))

(assert (= (and b!3983840 (not res!1615213)) b!3983843))

(assert (= (and b!3983843 res!1615208) b!3983839))

(assert (= (and b!3983839 res!1615214) b!3983844))

(assert (= (and b!3983844 res!1615209) b!3983847))

(assert (= (and b!3983843 (not res!1615215)) b!3983838))

(assert (= (and b!3983838 res!1615210) b!3983835))

(assert (= (and b!3983835 (not res!1615211)) b!3983837))

(assert (= (and b!3983837 (not res!1615212)) b!3983836))

(assert (= (or b!3983834 b!3983835 b!3983839) bm!285748))

(assert (=> b!3983846 m!4558243))

(assert (=> b!3983837 m!4558827))

(assert (=> b!3983837 m!4558827))

(declare-fun m!4558969 () Bool)

(assert (=> b!3983837 m!4558969))

(assert (=> b!3983842 m!4558835))

(assert (=> b!3983842 m!4558835))

(declare-fun m!4558971 () Bool)

(assert (=> b!3983842 m!4558971))

(assert (=> b!3983842 m!4558827))

(assert (=> b!3983842 m!4558971))

(assert (=> b!3983842 m!4558827))

(declare-fun m!4558973 () Bool)

(assert (=> b!3983842 m!4558973))

(assert (=> b!3983836 m!4558835))

(declare-fun m!4558975 () Bool)

(assert (=> bm!285748 m!4558975))

(assert (=> b!3983847 m!4558835))

(assert (=> b!3983844 m!4558827))

(assert (=> b!3983844 m!4558827))

(assert (=> b!3983844 m!4558969))

(assert (=> d!1179186 m!4558975))

(assert (=> d!1179186 m!4558241))

(assert (=> b!3983165 d!1179186))

(declare-fun b!3983850 () Bool)

(declare-fun e!2469063 () Bool)

(assert (=> b!3983850 (= e!2469063 (isPrefix!3817 (tail!6212 lt!1400541) (tail!6212 lt!1400536)))))

(declare-fun d!1179192 () Bool)

(declare-fun e!2469064 () Bool)

(assert (=> d!1179192 e!2469064))

(declare-fun res!1615216 () Bool)

(assert (=> d!1179192 (=> res!1615216 e!2469064)))

(declare-fun lt!1400812 () Bool)

(assert (=> d!1179192 (= res!1615216 (not lt!1400812))))

(declare-fun e!2469065 () Bool)

(assert (=> d!1179192 (= lt!1400812 e!2469065)))

(declare-fun res!1615219 () Bool)

(assert (=> d!1179192 (=> res!1615219 e!2469065)))

(assert (=> d!1179192 (= res!1615219 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1179192 (= (isPrefix!3817 lt!1400541 lt!1400536) lt!1400812)))

(declare-fun b!3983851 () Bool)

(assert (=> b!3983851 (= e!2469064 (>= (size!31861 lt!1400536) (size!31861 lt!1400541)))))

(declare-fun b!3983849 () Bool)

(declare-fun res!1615218 () Bool)

(assert (=> b!3983849 (=> (not res!1615218) (not e!2469063))))

(assert (=> b!3983849 (= res!1615218 (= (head!8480 lt!1400541) (head!8480 lt!1400536)))))

(declare-fun b!3983848 () Bool)

(assert (=> b!3983848 (= e!2469065 e!2469063)))

(declare-fun res!1615217 () Bool)

(assert (=> b!3983848 (=> (not res!1615217) (not e!2469063))))

(assert (=> b!3983848 (= res!1615217 (not ((_ is Nil!42594) lt!1400536)))))

(assert (= (and d!1179192 (not res!1615219)) b!3983848))

(assert (= (and b!3983848 res!1615217) b!3983849))

(assert (= (and b!3983849 res!1615218) b!3983850))

(assert (= (and d!1179192 (not res!1615216)) b!3983851))

(assert (=> b!3983850 m!4558827))

(assert (=> b!3983850 m!4558171))

(assert (=> b!3983850 m!4558827))

(assert (=> b!3983850 m!4558171))

(declare-fun m!4558977 () Bool)

(assert (=> b!3983850 m!4558977))

(assert (=> b!3983851 m!4558169))

(assert (=> b!3983851 m!4557863))

(assert (=> b!3983849 m!4558835))

(assert (=> b!3983849 m!4558223))

(assert (=> b!3983165 d!1179192))

(declare-fun d!1179194 () Bool)

(assert (=> d!1179194 (isPrefix!3817 lt!1400541 (++!11132 prefix!494 newSuffix!27))))

(declare-fun lt!1400815 () Unit!61268)

(declare-fun choose!23913 (List!42718 List!42718 List!42718) Unit!61268)

(assert (=> d!1179194 (= lt!1400815 (choose!23913 lt!1400541 prefix!494 newSuffix!27))))

(assert (=> d!1179194 (isPrefix!3817 lt!1400541 prefix!494)))

(assert (=> d!1179194 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!650 lt!1400541 prefix!494 newSuffix!27) lt!1400815)))

(declare-fun bs!588076 () Bool)

(assert (= bs!588076 d!1179194))

(assert (=> bs!588076 m!4557973))

(assert (=> bs!588076 m!4557973))

(declare-fun m!4558979 () Bool)

(assert (=> bs!588076 m!4558979))

(declare-fun m!4558981 () Bool)

(assert (=> bs!588076 m!4558981))

(assert (=> bs!588076 m!4557859))

(assert (=> b!3983165 d!1179194))

(declare-fun d!1179196 () Bool)

(assert (=> d!1179196 (isPrefix!3817 lt!1400541 (++!11132 prefix!494 suffix!1299))))

(declare-fun lt!1400816 () Unit!61268)

(assert (=> d!1179196 (= lt!1400816 (choose!23913 lt!1400541 prefix!494 suffix!1299))))

(assert (=> d!1179196 (isPrefix!3817 lt!1400541 prefix!494)))

(assert (=> d!1179196 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!650 lt!1400541 prefix!494 suffix!1299) lt!1400816)))

(declare-fun bs!588077 () Bool)

(assert (= bs!588077 d!1179196))

(assert (=> bs!588077 m!4557961))

(assert (=> bs!588077 m!4557961))

(declare-fun m!4558983 () Bool)

(assert (=> bs!588077 m!4558983))

(declare-fun m!4558985 () Bool)

(assert (=> bs!588077 m!4558985))

(assert (=> bs!588077 m!4557859))

(assert (=> b!3983165 d!1179196))

(declare-fun b!3983853 () Bool)

(declare-fun e!2469066 () List!42718)

(assert (=> b!3983853 (= e!2469066 (Cons!42594 (h!48014 prefix!494) (++!11132 (t!331421 prefix!494) lt!1400563)))))

(declare-fun d!1179198 () Bool)

(declare-fun e!2469067 () Bool)

(assert (=> d!1179198 e!2469067))

(declare-fun res!1615220 () Bool)

(assert (=> d!1179198 (=> (not res!1615220) (not e!2469067))))

(declare-fun lt!1400817 () List!42718)

(assert (=> d!1179198 (= res!1615220 (= (content!6456 lt!1400817) ((_ map or) (content!6456 prefix!494) (content!6456 lt!1400563))))))

(assert (=> d!1179198 (= lt!1400817 e!2469066)))

(declare-fun c!689968 () Bool)

(assert (=> d!1179198 (= c!689968 ((_ is Nil!42594) prefix!494))))

(assert (=> d!1179198 (= (++!11132 prefix!494 lt!1400563) lt!1400817)))

(declare-fun b!3983852 () Bool)

(assert (=> b!3983852 (= e!2469066 lt!1400563)))

(declare-fun b!3983854 () Bool)

(declare-fun res!1615221 () Bool)

(assert (=> b!3983854 (=> (not res!1615221) (not e!2469067))))

(assert (=> b!3983854 (= res!1615221 (= (size!31861 lt!1400817) (+ (size!31861 prefix!494) (size!31861 lt!1400563))))))

(declare-fun b!3983855 () Bool)

(assert (=> b!3983855 (= e!2469067 (or (not (= lt!1400563 Nil!42594)) (= lt!1400817 prefix!494)))))

(assert (= (and d!1179198 c!689968) b!3983852))

(assert (= (and d!1179198 (not c!689968)) b!3983853))

(assert (= (and d!1179198 res!1615220) b!3983854))

(assert (= (and b!3983854 res!1615221) b!3983855))

(declare-fun m!4558987 () Bool)

(assert (=> b!3983853 m!4558987))

(declare-fun m!4558989 () Bool)

(assert (=> d!1179198 m!4558989))

(assert (=> d!1179198 m!4558871))

(declare-fun m!4558991 () Bool)

(assert (=> d!1179198 m!4558991))

(declare-fun m!4558993 () Bool)

(assert (=> b!3983854 m!4558993))

(assert (=> b!3983854 m!4557865))

(declare-fun m!4558995 () Bool)

(assert (=> b!3983854 m!4558995))

(assert (=> b!3983185 d!1179198))

(declare-fun b!3983857 () Bool)

(declare-fun e!2469068 () List!42718)

(assert (=> b!3983857 (= e!2469068 (Cons!42594 (h!48014 lt!1400536) (++!11132 (t!331421 lt!1400536) lt!1400546)))))

(declare-fun d!1179200 () Bool)

(declare-fun e!2469069 () Bool)

(assert (=> d!1179200 e!2469069))

(declare-fun res!1615222 () Bool)

(assert (=> d!1179200 (=> (not res!1615222) (not e!2469069))))

(declare-fun lt!1400818 () List!42718)

(assert (=> d!1179200 (= res!1615222 (= (content!6456 lt!1400818) ((_ map or) (content!6456 lt!1400536) (content!6456 lt!1400546))))))

(assert (=> d!1179200 (= lt!1400818 e!2469068)))

(declare-fun c!689969 () Bool)

(assert (=> d!1179200 (= c!689969 ((_ is Nil!42594) lt!1400536))))

(assert (=> d!1179200 (= (++!11132 lt!1400536 lt!1400546) lt!1400818)))

(declare-fun b!3983856 () Bool)

(assert (=> b!3983856 (= e!2469068 lt!1400546)))

(declare-fun b!3983858 () Bool)

(declare-fun res!1615223 () Bool)

(assert (=> b!3983858 (=> (not res!1615223) (not e!2469069))))

(assert (=> b!3983858 (= res!1615223 (= (size!31861 lt!1400818) (+ (size!31861 lt!1400536) (size!31861 lt!1400546))))))

(declare-fun b!3983859 () Bool)

(assert (=> b!3983859 (= e!2469069 (or (not (= lt!1400546 Nil!42594)) (= lt!1400818 lt!1400536)))))

(assert (= (and d!1179200 c!689969) b!3983856))

(assert (= (and d!1179200 (not c!689969)) b!3983857))

(assert (= (and d!1179200 res!1615222) b!3983858))

(assert (= (and b!3983858 res!1615223) b!3983859))

(declare-fun m!4558997 () Bool)

(assert (=> b!3983857 m!4558997))

(declare-fun m!4558999 () Bool)

(assert (=> d!1179200 m!4558999))

(declare-fun m!4559001 () Bool)

(assert (=> d!1179200 m!4559001))

(assert (=> d!1179200 m!4558089))

(declare-fun m!4559003 () Bool)

(assert (=> b!3983858 m!4559003))

(assert (=> b!3983858 m!4558169))

(assert (=> b!3983858 m!4558093))

(assert (=> b!3983185 d!1179200))

(declare-fun d!1179202 () Bool)

(assert (=> d!1179202 (= (++!11132 (++!11132 prefix!494 newSuffix!27) lt!1400546) (++!11132 prefix!494 (++!11132 newSuffix!27 lt!1400546)))))

(declare-fun lt!1400819 () Unit!61268)

(assert (=> d!1179202 (= lt!1400819 (choose!23905 prefix!494 newSuffix!27 lt!1400546))))

(assert (=> d!1179202 (= (lemmaConcatAssociativity!2452 prefix!494 newSuffix!27 lt!1400546) lt!1400819)))

(declare-fun bs!588078 () Bool)

(assert (= bs!588078 d!1179202))

(assert (=> bs!588078 m!4557947))

(declare-fun m!4559005 () Bool)

(assert (=> bs!588078 m!4559005))

(assert (=> bs!588078 m!4557973))

(declare-fun m!4559007 () Bool)

(assert (=> bs!588078 m!4559007))

(assert (=> bs!588078 m!4557947))

(declare-fun m!4559009 () Bool)

(assert (=> bs!588078 m!4559009))

(assert (=> bs!588078 m!4557973))

(assert (=> b!3983185 d!1179202))

(declare-fun b!3983862 () Bool)

(declare-fun e!2469070 () Bool)

(assert (=> b!3983862 (= e!2469070 (isPrefix!3817 (tail!6212 lt!1400544) (tail!6212 lt!1400569)))))

(declare-fun d!1179204 () Bool)

(declare-fun e!2469071 () Bool)

(assert (=> d!1179204 e!2469071))

(declare-fun res!1615224 () Bool)

(assert (=> d!1179204 (=> res!1615224 e!2469071)))

(declare-fun lt!1400820 () Bool)

(assert (=> d!1179204 (= res!1615224 (not lt!1400820))))

(declare-fun e!2469072 () Bool)

(assert (=> d!1179204 (= lt!1400820 e!2469072)))

(declare-fun res!1615227 () Bool)

(assert (=> d!1179204 (=> res!1615227 e!2469072)))

(assert (=> d!1179204 (= res!1615227 ((_ is Nil!42594) lt!1400544))))

(assert (=> d!1179204 (= (isPrefix!3817 lt!1400544 lt!1400569) lt!1400820)))

(declare-fun b!3983863 () Bool)

(assert (=> b!3983863 (= e!2469071 (>= (size!31861 lt!1400569) (size!31861 lt!1400544)))))

(declare-fun b!3983861 () Bool)

(declare-fun res!1615226 () Bool)

(assert (=> b!3983861 (=> (not res!1615226) (not e!2469070))))

(assert (=> b!3983861 (= res!1615226 (= (head!8480 lt!1400544) (head!8480 lt!1400569)))))

(declare-fun b!3983860 () Bool)

(assert (=> b!3983860 (= e!2469072 e!2469070)))

(declare-fun res!1615225 () Bool)

(assert (=> b!3983860 (=> (not res!1615225) (not e!2469070))))

(assert (=> b!3983860 (= res!1615225 (not ((_ is Nil!42594) lt!1400569)))))

(assert (= (and d!1179204 (not res!1615227)) b!3983860))

(assert (= (and b!3983860 res!1615225) b!3983861))

(assert (= (and b!3983861 res!1615226) b!3983862))

(assert (= (and d!1179204 (not res!1615224)) b!3983863))

(assert (=> b!3983862 m!4558217))

(declare-fun m!4559011 () Bool)

(assert (=> b!3983862 m!4559011))

(assert (=> b!3983862 m!4558217))

(assert (=> b!3983862 m!4559011))

(declare-fun m!4559013 () Bool)

(assert (=> b!3983862 m!4559013))

(declare-fun m!4559015 () Bool)

(assert (=> b!3983863 m!4559015))

(assert (=> b!3983863 m!4557983))

(assert (=> b!3983861 m!4558221))

(declare-fun m!4559017 () Bool)

(assert (=> b!3983861 m!4559017))

(assert (=> b!3983184 d!1179204))

(declare-fun d!1179206 () Bool)

(declare-fun e!2469073 () Bool)

(assert (=> d!1179206 e!2469073))

(declare-fun res!1615228 () Bool)

(assert (=> d!1179206 (=> (not res!1615228) (not e!2469073))))

(assert (=> d!1179206 (= res!1615228 (semiInverseModEq!2887 (toChars!9077 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533))))) (toValue!9218 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))))))))

(declare-fun Unit!61275 () Unit!61268)

(assert (=> d!1179206 (= (lemmaInv!945 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533))))) Unit!61275)))

(declare-fun b!3983864 () Bool)

(assert (=> b!3983864 (= e!2469073 (equivClasses!2786 (toChars!9077 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533))))) (toValue!9218 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))))))))

(assert (= (and d!1179206 res!1615228) b!3983864))

(declare-fun m!4559019 () Bool)

(assert (=> d!1179206 m!4559019))

(declare-fun m!4559021 () Bool)

(assert (=> b!3983864 m!4559021))

(assert (=> b!3983184 d!1179206))

(declare-fun d!1179208 () Bool)

(assert (=> d!1179208 (= (apply!9941 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) (seqFromList!4969 lt!1400544)) (dynLambda!18111 (toValue!9218 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533))))) (seqFromList!4969 lt!1400544)))))

(declare-fun b_lambda!116355 () Bool)

(assert (=> (not b_lambda!116355) (not d!1179208)))

(declare-fun t!331457 () Bool)

(declare-fun tb!239997 () Bool)

(assert (=> (and b!3983183 (= (toValue!9218 (transformation!6730 (rule!9738 token!484))) (toValue!9218 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))))) t!331457) tb!239997))

(declare-fun result!290752 () Bool)

(assert (=> tb!239997 (= result!290752 (inv!21 (dynLambda!18111 (toValue!9218 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533))))) (seqFromList!4969 lt!1400544))))))

(declare-fun m!4559023 () Bool)

(assert (=> tb!239997 m!4559023))

(assert (=> d!1179208 t!331457))

(declare-fun b_and!306183 () Bool)

(assert (= b_and!306171 (and (=> t!331457 result!290752) b_and!306183)))

(declare-fun t!331459 () Bool)

(declare-fun tb!239999 () Bool)

(assert (=> (and b!3983202 (= (toValue!9218 (transformation!6730 (h!48016 rules!2999))) (toValue!9218 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))))) t!331459) tb!239999))

(declare-fun result!290754 () Bool)

(assert (= result!290754 result!290752))

(assert (=> d!1179208 t!331459))

(declare-fun b_and!306185 () Bool)

(assert (= b_and!306173 (and (=> t!331459 result!290754) b_and!306185)))

(assert (=> d!1179208 m!4557997))

(declare-fun m!4559025 () Bool)

(assert (=> d!1179208 m!4559025))

(assert (=> b!3983184 d!1179208))

(declare-fun d!1179210 () Bool)

(assert (=> d!1179210 (isPrefix!3817 lt!1400544 (++!11132 lt!1400544 newSuffixResult!27))))

(declare-fun lt!1400821 () Unit!61268)

(assert (=> d!1179210 (= lt!1400821 (choose!23909 lt!1400544 newSuffixResult!27))))

(assert (=> d!1179210 (= (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400544 newSuffixResult!27) lt!1400821)))

(declare-fun bs!588079 () Bool)

(assert (= bs!588079 d!1179210))

(assert (=> bs!588079 m!4557993))

(assert (=> bs!588079 m!4557993))

(assert (=> bs!588079 m!4557995))

(declare-fun m!4559027 () Bool)

(assert (=> bs!588079 m!4559027))

(assert (=> b!3983184 d!1179210))

(declare-fun d!1179212 () Bool)

(assert (=> d!1179212 (= (size!31860 token!484) (size!31861 (originalCharacters!7330 token!484)))))

(declare-fun Unit!61276 () Unit!61268)

(assert (=> d!1179212 (= (lemmaCharactersSize!1325 token!484) Unit!61276)))

(declare-fun bs!588080 () Bool)

(assert (= bs!588080 d!1179212))

(assert (=> bs!588080 m!4557879))

(assert (=> b!3983184 d!1179212))

(declare-fun b!3983865 () Bool)

(declare-fun e!2469078 () Bool)

(declare-fun e!2469077 () Bool)

(assert (=> b!3983865 (= e!2469078 e!2469077)))

(declare-fun res!1615235 () Bool)

(assert (=> b!3983865 (=> (not res!1615235) (not e!2469077))))

(declare-fun lt!1400825 () Option!9144)

(assert (=> b!3983865 (= res!1615235 (matchR!5612 (regex!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) (list!15810 (charsOf!4546 (_1!24040 (get!14021 lt!1400825))))))))

(declare-fun b!3983866 () Bool)

(declare-fun res!1615232 () Bool)

(assert (=> b!3983866 (=> (not res!1615232) (not e!2469077))))

(assert (=> b!3983866 (= res!1615232 (< (size!31861 (_2!24040 (get!14021 lt!1400825))) (size!31861 lt!1400536)))))

(declare-fun b!3983867 () Bool)

(declare-fun e!2469076 () Option!9144)

(assert (=> b!3983867 (= e!2469076 None!9143)))

(declare-fun b!3983868 () Bool)

(declare-fun res!1615234 () Bool)

(assert (=> b!3983868 (=> (not res!1615234) (not e!2469077))))

(assert (=> b!3983868 (= res!1615234 (= (value!212439 (_1!24040 (get!14021 lt!1400825))) (apply!9941 (transformation!6730 (rule!9738 (_1!24040 (get!14021 lt!1400825)))) (seqFromList!4969 (originalCharacters!7330 (_1!24040 (get!14021 lt!1400825)))))))))

(declare-fun b!3983869 () Bool)

(declare-fun res!1615229 () Bool)

(assert (=> b!3983869 (=> (not res!1615229) (not e!2469077))))

(assert (=> b!3983869 (= res!1615229 (= (rule!9738 (_1!24040 (get!14021 lt!1400825))) (rule!9738 (_1!24040 (v!39491 lt!1400533)))))))

(declare-fun b!3983870 () Bool)

(declare-fun res!1615231 () Bool)

(assert (=> b!3983870 (=> (not res!1615231) (not e!2469077))))

(assert (=> b!3983870 (= res!1615231 (= (++!11132 (list!15810 (charsOf!4546 (_1!24040 (get!14021 lt!1400825)))) (_2!24040 (get!14021 lt!1400825))) lt!1400536))))

(declare-fun b!3983871 () Bool)

(declare-fun lt!1400824 () tuple2!41816)

(assert (=> b!3983871 (= e!2469076 (Some!9143 (tuple2!41813 (Token!12599 (apply!9941 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) (seqFromList!4969 (_1!24042 lt!1400824))) (rule!9738 (_1!24040 (v!39491 lt!1400533))) (size!31863 (seqFromList!4969 (_1!24042 lt!1400824))) (_1!24042 lt!1400824)) (_2!24042 lt!1400824))))))

(declare-fun lt!1400822 () Unit!61268)

(assert (=> b!3983871 (= lt!1400822 (longestMatchIsAcceptedByMatchOrIsEmpty!1297 (regex!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) lt!1400536))))

(declare-fun res!1615233 () Bool)

(assert (=> b!3983871 (= res!1615233 (isEmpty!25465 (_1!24042 (findLongestMatchInner!1324 (regex!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) Nil!42594 (size!31861 Nil!42594) lt!1400536 lt!1400536 (size!31861 lt!1400536)))))))

(declare-fun e!2469075 () Bool)

(assert (=> b!3983871 (=> res!1615233 e!2469075)))

(assert (=> b!3983871 e!2469075))

(declare-fun lt!1400826 () Unit!61268)

(assert (=> b!3983871 (= lt!1400826 lt!1400822)))

(declare-fun lt!1400823 () Unit!61268)

(assert (=> b!3983871 (= lt!1400823 (lemmaSemiInverse!1836 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) (seqFromList!4969 (_1!24042 lt!1400824))))))

(declare-fun d!1179214 () Bool)

(assert (=> d!1179214 e!2469078))

(declare-fun res!1615230 () Bool)

(assert (=> d!1179214 (=> res!1615230 e!2469078)))

(assert (=> d!1179214 (= res!1615230 (isEmpty!25466 lt!1400825))))

(assert (=> d!1179214 (= lt!1400825 e!2469076)))

(declare-fun c!689970 () Bool)

(assert (=> d!1179214 (= c!689970 (isEmpty!25465 (_1!24042 lt!1400824)))))

(assert (=> d!1179214 (= lt!1400824 (findLongestMatch!1237 (regex!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) lt!1400536))))

(assert (=> d!1179214 (ruleValid!2662 thiss!21717 (rule!9738 (_1!24040 (v!39491 lt!1400533))))))

(assert (=> d!1179214 (= (maxPrefixOneRule!2651 thiss!21717 (rule!9738 (_1!24040 (v!39491 lt!1400533))) lt!1400536) lt!1400825)))

(declare-fun b!3983872 () Bool)

(assert (=> b!3983872 (= e!2469075 (matchR!5612 (regex!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) (_1!24042 (findLongestMatchInner!1324 (regex!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) Nil!42594 (size!31861 Nil!42594) lt!1400536 lt!1400536 (size!31861 lt!1400536)))))))

(declare-fun b!3983873 () Bool)

(assert (=> b!3983873 (= e!2469077 (= (size!31860 (_1!24040 (get!14021 lt!1400825))) (size!31861 (originalCharacters!7330 (_1!24040 (get!14021 lt!1400825))))))))

(assert (= (and d!1179214 c!689970) b!3983867))

(assert (= (and d!1179214 (not c!689970)) b!3983871))

(assert (= (and b!3983871 (not res!1615233)) b!3983872))

(assert (= (and d!1179214 (not res!1615230)) b!3983865))

(assert (= (and b!3983865 res!1615235) b!3983870))

(assert (= (and b!3983870 res!1615231) b!3983866))

(assert (= (and b!3983866 res!1615232) b!3983869))

(assert (= (and b!3983869 res!1615229) b!3983868))

(assert (= (and b!3983868 res!1615234) b!3983873))

(declare-fun m!4559029 () Bool)

(assert (=> d!1179214 m!4559029))

(declare-fun m!4559031 () Bool)

(assert (=> d!1179214 m!4559031))

(declare-fun m!4559033 () Bool)

(assert (=> d!1179214 m!4559033))

(assert (=> d!1179214 m!4558013))

(declare-fun m!4559035 () Bool)

(assert (=> b!3983866 m!4559035))

(declare-fun m!4559037 () Bool)

(assert (=> b!3983866 m!4559037))

(assert (=> b!3983866 m!4558169))

(assert (=> b!3983865 m!4559035))

(declare-fun m!4559039 () Bool)

(assert (=> b!3983865 m!4559039))

(assert (=> b!3983865 m!4559039))

(declare-fun m!4559041 () Bool)

(assert (=> b!3983865 m!4559041))

(assert (=> b!3983865 m!4559041))

(declare-fun m!4559043 () Bool)

(assert (=> b!3983865 m!4559043))

(assert (=> b!3983869 m!4559035))

(assert (=> b!3983868 m!4559035))

(declare-fun m!4559045 () Bool)

(assert (=> b!3983868 m!4559045))

(assert (=> b!3983868 m!4559045))

(declare-fun m!4559047 () Bool)

(assert (=> b!3983868 m!4559047))

(assert (=> b!3983872 m!4558805))

(assert (=> b!3983872 m!4558169))

(assert (=> b!3983872 m!4558805))

(assert (=> b!3983872 m!4558169))

(declare-fun m!4559049 () Bool)

(assert (=> b!3983872 m!4559049))

(declare-fun m!4559051 () Bool)

(assert (=> b!3983872 m!4559051))

(assert (=> b!3983873 m!4559035))

(declare-fun m!4559053 () Bool)

(assert (=> b!3983873 m!4559053))

(assert (=> b!3983871 m!4558805))

(assert (=> b!3983871 m!4558169))

(assert (=> b!3983871 m!4559049))

(declare-fun m!4559055 () Bool)

(assert (=> b!3983871 m!4559055))

(declare-fun m!4559057 () Bool)

(assert (=> b!3983871 m!4559057))

(assert (=> b!3983871 m!4559055))

(declare-fun m!4559059 () Bool)

(assert (=> b!3983871 m!4559059))

(assert (=> b!3983871 m!4558169))

(declare-fun m!4559061 () Bool)

(assert (=> b!3983871 m!4559061))

(assert (=> b!3983871 m!4559055))

(assert (=> b!3983871 m!4558805))

(declare-fun m!4559063 () Bool)

(assert (=> b!3983871 m!4559063))

(assert (=> b!3983871 m!4559055))

(declare-fun m!4559065 () Bool)

(assert (=> b!3983871 m!4559065))

(assert (=> b!3983870 m!4559035))

(assert (=> b!3983870 m!4559039))

(assert (=> b!3983870 m!4559039))

(assert (=> b!3983870 m!4559041))

(assert (=> b!3983870 m!4559041))

(declare-fun m!4559067 () Bool)

(assert (=> b!3983870 m!4559067))

(assert (=> b!3983184 d!1179214))

(declare-fun d!1179216 () Bool)

(declare-fun lt!1400827 () BalanceConc!25476)

(assert (=> d!1179216 (= (list!15810 lt!1400827) (originalCharacters!7330 (_1!24040 (v!39491 lt!1400533))))))

(assert (=> d!1179216 (= lt!1400827 (dynLambda!18113 (toChars!9077 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533))))) (value!212439 (_1!24040 (v!39491 lt!1400533)))))))

(assert (=> d!1179216 (= (charsOf!4546 (_1!24040 (v!39491 lt!1400533))) lt!1400827)))

(declare-fun b_lambda!116357 () Bool)

(assert (=> (not b_lambda!116357) (not d!1179216)))

(declare-fun t!331461 () Bool)

(declare-fun tb!240001 () Bool)

(assert (=> (and b!3983183 (= (toChars!9077 (transformation!6730 (rule!9738 token!484))) (toChars!9077 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))))) t!331461) tb!240001))

(declare-fun b!3983874 () Bool)

(declare-fun e!2469079 () Bool)

(declare-fun tp!1214150 () Bool)

(assert (=> b!3983874 (= e!2469079 (and (inv!56902 (c!689868 (dynLambda!18113 (toChars!9077 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533))))) (value!212439 (_1!24040 (v!39491 lt!1400533)))))) tp!1214150))))

(declare-fun result!290756 () Bool)

(assert (=> tb!240001 (= result!290756 (and (inv!56903 (dynLambda!18113 (toChars!9077 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533))))) (value!212439 (_1!24040 (v!39491 lt!1400533))))) e!2469079))))

(assert (= tb!240001 b!3983874))

(declare-fun m!4559069 () Bool)

(assert (=> b!3983874 m!4559069))

(declare-fun m!4559071 () Bool)

(assert (=> tb!240001 m!4559071))

(assert (=> d!1179216 t!331461))

(declare-fun b_and!306187 () Bool)

(assert (= b_and!306175 (and (=> t!331461 result!290756) b_and!306187)))

(declare-fun tb!240003 () Bool)

(declare-fun t!331463 () Bool)

(assert (=> (and b!3983202 (= (toChars!9077 (transformation!6730 (h!48016 rules!2999))) (toChars!9077 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))))) t!331463) tb!240003))

(declare-fun result!290758 () Bool)

(assert (= result!290758 result!290756))

(assert (=> d!1179216 t!331463))

(declare-fun b_and!306189 () Bool)

(assert (= b_and!306177 (and (=> t!331463 result!290758) b_and!306189)))

(declare-fun m!4559073 () Bool)

(assert (=> d!1179216 m!4559073))

(declare-fun m!4559075 () Bool)

(assert (=> d!1179216 m!4559075))

(assert (=> b!3983184 d!1179216))

(declare-fun d!1179218 () Bool)

(assert (=> d!1179218 (= (list!15810 (charsOf!4546 (_1!24040 (v!39491 lt!1400533)))) (list!15812 (c!689868 (charsOf!4546 (_1!24040 (v!39491 lt!1400533))))))))

(declare-fun bs!588081 () Bool)

(assert (= bs!588081 d!1179218))

(declare-fun m!4559077 () Bool)

(assert (=> bs!588081 m!4559077))

(assert (=> b!3983184 d!1179218))

(declare-fun b!3983876 () Bool)

(declare-fun e!2469080 () List!42718)

(assert (=> b!3983876 (= e!2469080 (Cons!42594 (h!48014 lt!1400544) (++!11132 (t!331421 lt!1400544) (_2!24040 (v!39491 lt!1400533)))))))

(declare-fun d!1179220 () Bool)

(declare-fun e!2469081 () Bool)

(assert (=> d!1179220 e!2469081))

(declare-fun res!1615236 () Bool)

(assert (=> d!1179220 (=> (not res!1615236) (not e!2469081))))

(declare-fun lt!1400828 () List!42718)

(assert (=> d!1179220 (= res!1615236 (= (content!6456 lt!1400828) ((_ map or) (content!6456 lt!1400544) (content!6456 (_2!24040 (v!39491 lt!1400533))))))))

(assert (=> d!1179220 (= lt!1400828 e!2469080)))

(declare-fun c!689971 () Bool)

(assert (=> d!1179220 (= c!689971 ((_ is Nil!42594) lt!1400544))))

(assert (=> d!1179220 (= (++!11132 lt!1400544 (_2!24040 (v!39491 lt!1400533))) lt!1400828)))

(declare-fun b!3983875 () Bool)

(assert (=> b!3983875 (= e!2469080 (_2!24040 (v!39491 lt!1400533)))))

(declare-fun b!3983877 () Bool)

(declare-fun res!1615237 () Bool)

(assert (=> b!3983877 (=> (not res!1615237) (not e!2469081))))

(assert (=> b!3983877 (= res!1615237 (= (size!31861 lt!1400828) (+ (size!31861 lt!1400544) (size!31861 (_2!24040 (v!39491 lt!1400533))))))))

(declare-fun b!3983878 () Bool)

(assert (=> b!3983878 (= e!2469081 (or (not (= (_2!24040 (v!39491 lt!1400533)) Nil!42594)) (= lt!1400828 lt!1400544)))))

(assert (= (and d!1179220 c!689971) b!3983875))

(assert (= (and d!1179220 (not c!689971)) b!3983876))

(assert (= (and d!1179220 res!1615236) b!3983877))

(assert (= (and b!3983877 res!1615237) b!3983878))

(declare-fun m!4559079 () Bool)

(assert (=> b!3983876 m!4559079))

(declare-fun m!4559081 () Bool)

(assert (=> d!1179220 m!4559081))

(assert (=> d!1179220 m!4558159))

(declare-fun m!4559083 () Bool)

(assert (=> d!1179220 m!4559083))

(declare-fun m!4559085 () Bool)

(assert (=> b!3983877 m!4559085))

(assert (=> b!3983877 m!4557983))

(declare-fun m!4559087 () Bool)

(assert (=> b!3983877 m!4559087))

(assert (=> b!3983184 d!1179220))

(declare-fun d!1179222 () Bool)

(assert (=> d!1179222 (= (size!31860 (_1!24040 (v!39491 lt!1400533))) (size!31861 (originalCharacters!7330 (_1!24040 (v!39491 lt!1400533)))))))

(declare-fun Unit!61277 () Unit!61268)

(assert (=> d!1179222 (= (lemmaCharactersSize!1325 (_1!24040 (v!39491 lt!1400533))) Unit!61277)))

(declare-fun bs!588082 () Bool)

(assert (= bs!588082 d!1179222))

(declare-fun m!4559089 () Bool)

(assert (=> bs!588082 m!4559089))

(assert (=> b!3983184 d!1179222))

(declare-fun d!1179224 () Bool)

(assert (=> d!1179224 (isPrefix!3817 lt!1400544 (++!11132 lt!1400544 (_2!24040 (v!39491 lt!1400533))))))

(declare-fun lt!1400829 () Unit!61268)

(assert (=> d!1179224 (= lt!1400829 (choose!23909 lt!1400544 (_2!24040 (v!39491 lt!1400533))))))

(assert (=> d!1179224 (= (lemmaConcatTwoListThenFirstIsPrefix!2660 lt!1400544 (_2!24040 (v!39491 lt!1400533))) lt!1400829)))

(declare-fun bs!588083 () Bool)

(assert (= bs!588083 d!1179224))

(assert (=> bs!588083 m!4557987))

(assert (=> bs!588083 m!4557987))

(declare-fun m!4559091 () Bool)

(assert (=> bs!588083 m!4559091))

(declare-fun m!4559093 () Bool)

(assert (=> bs!588083 m!4559093))

(assert (=> b!3983184 d!1179224))

(declare-fun d!1179226 () Bool)

(assert (=> d!1179226 (= (maxPrefixOneRule!2651 thiss!21717 (rule!9738 (_1!24040 (v!39491 lt!1400533))) lt!1400536) (Some!9143 (tuple2!41813 (Token!12599 (apply!9941 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) (seqFromList!4969 lt!1400544)) (rule!9738 (_1!24040 (v!39491 lt!1400533))) (size!31861 lt!1400544) lt!1400544) (_2!24040 (v!39491 lt!1400533)))))))

(declare-fun lt!1400830 () Unit!61268)

(assert (=> d!1179226 (= lt!1400830 (choose!23910 thiss!21717 rules!2999 lt!1400544 lt!1400536 (_2!24040 (v!39491 lt!1400533)) (rule!9738 (_1!24040 (v!39491 lt!1400533)))))))

(assert (=> d!1179226 (not (isEmpty!25462 rules!2999))))

(assert (=> d!1179226 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1473 thiss!21717 rules!2999 lt!1400544 lt!1400536 (_2!24040 (v!39491 lt!1400533)) (rule!9738 (_1!24040 (v!39491 lt!1400533)))) lt!1400830)))

(declare-fun bs!588084 () Bool)

(assert (= bs!588084 d!1179226))

(assert (=> bs!588084 m!4557997))

(assert (=> bs!588084 m!4557999))

(assert (=> bs!588084 m!4557971))

(declare-fun m!4559095 () Bool)

(assert (=> bs!588084 m!4559095))

(assert (=> bs!588084 m!4557997))

(assert (=> bs!588084 m!4558001))

(assert (=> bs!588084 m!4557983))

(assert (=> b!3983184 d!1179226))

(declare-fun d!1179228 () Bool)

(assert (=> d!1179228 (= (seqFromList!4969 lt!1400544) (fromListB!2282 lt!1400544))))

(declare-fun bs!588085 () Bool)

(assert (= bs!588085 d!1179228))

(declare-fun m!4559097 () Bool)

(assert (=> bs!588085 m!4559097))

(assert (=> b!3983184 d!1179228))

(declare-fun b!3983880 () Bool)

(declare-fun e!2469082 () List!42718)

(assert (=> b!3983880 (= e!2469082 (Cons!42594 (h!48014 lt!1400544) (++!11132 (t!331421 lt!1400544) newSuffixResult!27)))))

(declare-fun d!1179230 () Bool)

(declare-fun e!2469083 () Bool)

(assert (=> d!1179230 e!2469083))

(declare-fun res!1615238 () Bool)

(assert (=> d!1179230 (=> (not res!1615238) (not e!2469083))))

(declare-fun lt!1400831 () List!42718)

(assert (=> d!1179230 (= res!1615238 (= (content!6456 lt!1400831) ((_ map or) (content!6456 lt!1400544) (content!6456 newSuffixResult!27))))))

(assert (=> d!1179230 (= lt!1400831 e!2469082)))

(declare-fun c!689972 () Bool)

(assert (=> d!1179230 (= c!689972 ((_ is Nil!42594) lt!1400544))))

(assert (=> d!1179230 (= (++!11132 lt!1400544 newSuffixResult!27) lt!1400831)))

(declare-fun b!3983879 () Bool)

(assert (=> b!3983879 (= e!2469082 newSuffixResult!27)))

(declare-fun b!3983881 () Bool)

(declare-fun res!1615239 () Bool)

(assert (=> b!3983881 (=> (not res!1615239) (not e!2469083))))

(assert (=> b!3983881 (= res!1615239 (= (size!31861 lt!1400831) (+ (size!31861 lt!1400544) (size!31861 newSuffixResult!27))))))

(declare-fun b!3983882 () Bool)

(assert (=> b!3983882 (= e!2469083 (or (not (= newSuffixResult!27 Nil!42594)) (= lt!1400831 lt!1400544)))))

(assert (= (and d!1179230 c!689972) b!3983879))

(assert (= (and d!1179230 (not c!689972)) b!3983880))

(assert (= (and d!1179230 res!1615238) b!3983881))

(assert (= (and b!3983881 res!1615239) b!3983882))

(declare-fun m!4559099 () Bool)

(assert (=> b!3983880 m!4559099))

(declare-fun m!4559101 () Bool)

(assert (=> d!1179230 m!4559101))

(assert (=> d!1179230 m!4558159))

(assert (=> d!1179230 m!4558879))

(declare-fun m!4559103 () Bool)

(assert (=> b!3983881 m!4559103))

(assert (=> b!3983881 m!4557983))

(assert (=> b!3983881 m!4558883))

(assert (=> b!3983184 d!1179230))

(declare-fun b!3983885 () Bool)

(declare-fun e!2469084 () Bool)

(assert (=> b!3983885 (= e!2469084 (isPrefix!3817 (tail!6212 lt!1400544) (tail!6212 (++!11132 lt!1400544 newSuffixResult!27))))))

(declare-fun d!1179232 () Bool)

(declare-fun e!2469085 () Bool)

(assert (=> d!1179232 e!2469085))

(declare-fun res!1615240 () Bool)

(assert (=> d!1179232 (=> res!1615240 e!2469085)))

(declare-fun lt!1400832 () Bool)

(assert (=> d!1179232 (= res!1615240 (not lt!1400832))))

(declare-fun e!2469086 () Bool)

(assert (=> d!1179232 (= lt!1400832 e!2469086)))

(declare-fun res!1615243 () Bool)

(assert (=> d!1179232 (=> res!1615243 e!2469086)))

(assert (=> d!1179232 (= res!1615243 ((_ is Nil!42594) lt!1400544))))

(assert (=> d!1179232 (= (isPrefix!3817 lt!1400544 (++!11132 lt!1400544 newSuffixResult!27)) lt!1400832)))

(declare-fun b!3983886 () Bool)

(assert (=> b!3983886 (= e!2469085 (>= (size!31861 (++!11132 lt!1400544 newSuffixResult!27)) (size!31861 lt!1400544)))))

(declare-fun b!3983884 () Bool)

(declare-fun res!1615242 () Bool)

(assert (=> b!3983884 (=> (not res!1615242) (not e!2469084))))

(assert (=> b!3983884 (= res!1615242 (= (head!8480 lt!1400544) (head!8480 (++!11132 lt!1400544 newSuffixResult!27))))))

(declare-fun b!3983883 () Bool)

(assert (=> b!3983883 (= e!2469086 e!2469084)))

(declare-fun res!1615241 () Bool)

(assert (=> b!3983883 (=> (not res!1615241) (not e!2469084))))

(assert (=> b!3983883 (= res!1615241 (not ((_ is Nil!42594) (++!11132 lt!1400544 newSuffixResult!27))))))

(assert (= (and d!1179232 (not res!1615243)) b!3983883))

(assert (= (and b!3983883 res!1615241) b!3983884))

(assert (= (and b!3983884 res!1615242) b!3983885))

(assert (= (and d!1179232 (not res!1615240)) b!3983886))

(assert (=> b!3983885 m!4558217))

(assert (=> b!3983885 m!4557993))

(declare-fun m!4559105 () Bool)

(assert (=> b!3983885 m!4559105))

(assert (=> b!3983885 m!4558217))

(assert (=> b!3983885 m!4559105))

(declare-fun m!4559107 () Bool)

(assert (=> b!3983885 m!4559107))

(assert (=> b!3983886 m!4557993))

(declare-fun m!4559109 () Bool)

(assert (=> b!3983886 m!4559109))

(assert (=> b!3983886 m!4557983))

(assert (=> b!3983884 m!4558221))

(assert (=> b!3983884 m!4557993))

(declare-fun m!4559111 () Bool)

(assert (=> b!3983884 m!4559111))

(assert (=> b!3983184 d!1179232))

(declare-fun d!1179234 () Bool)

(declare-fun res!1615244 () Bool)

(declare-fun e!2469087 () Bool)

(assert (=> d!1179234 (=> (not res!1615244) (not e!2469087))))

(assert (=> d!1179234 (= res!1615244 (validRegex!5280 (regex!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533))))))))

(assert (=> d!1179234 (= (ruleValid!2662 thiss!21717 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) e!2469087)))

(declare-fun b!3983887 () Bool)

(declare-fun res!1615245 () Bool)

(assert (=> b!3983887 (=> (not res!1615245) (not e!2469087))))

(assert (=> b!3983887 (= res!1615245 (not (nullable!4080 (regex!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))))))))

(declare-fun b!3983888 () Bool)

(assert (=> b!3983888 (= e!2469087 (not (= (tag!7590 (rule!9738 (_1!24040 (v!39491 lt!1400533)))) (String!48519 ""))))))

(assert (= (and d!1179234 res!1615244) b!3983887))

(assert (= (and b!3983887 res!1615245) b!3983888))

(declare-fun m!4559113 () Bool)

(assert (=> d!1179234 m!4559113))

(declare-fun m!4559115 () Bool)

(assert (=> b!3983887 m!4559115))

(assert (=> b!3983184 d!1179234))

(declare-fun d!1179236 () Bool)

(declare-fun lt!1400833 () Int)

(assert (=> d!1179236 (>= lt!1400833 0)))

(declare-fun e!2469088 () Int)

(assert (=> d!1179236 (= lt!1400833 e!2469088)))

(declare-fun c!689973 () Bool)

(assert (=> d!1179236 (= c!689973 ((_ is Nil!42594) lt!1400544))))

(assert (=> d!1179236 (= (size!31861 lt!1400544) lt!1400833)))

(declare-fun b!3983889 () Bool)

(assert (=> b!3983889 (= e!2469088 0)))

(declare-fun b!3983890 () Bool)

(assert (=> b!3983890 (= e!2469088 (+ 1 (size!31861 (t!331421 lt!1400544))))))

(assert (= (and d!1179236 c!689973) b!3983889))

(assert (= (and d!1179236 (not c!689973)) b!3983890))

(declare-fun m!4559117 () Bool)

(assert (=> b!3983890 m!4559117))

(assert (=> b!3983184 d!1179236))

(declare-fun d!1179238 () Bool)

(assert (=> d!1179238 (ruleValid!2662 thiss!21717 (rule!9738 (_1!24040 (v!39491 lt!1400533))))))

(declare-fun lt!1400834 () Unit!61268)

(assert (=> d!1179238 (= lt!1400834 (choose!23907 thiss!21717 (rule!9738 (_1!24040 (v!39491 lt!1400533))) rules!2999))))

(assert (=> d!1179238 (contains!8475 rules!2999 (rule!9738 (_1!24040 (v!39491 lt!1400533))))))

(assert (=> d!1179238 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1736 thiss!21717 (rule!9738 (_1!24040 (v!39491 lt!1400533))) rules!2999) lt!1400834)))

(declare-fun bs!588086 () Bool)

(assert (= bs!588086 d!1179238))

(assert (=> bs!588086 m!4558013))

(declare-fun m!4559119 () Bool)

(assert (=> bs!588086 m!4559119))

(assert (=> bs!588086 m!4558029))

(assert (=> b!3983184 d!1179238))

(declare-fun b!3983892 () Bool)

(declare-fun e!2469089 () List!42718)

(assert (=> b!3983892 (= e!2469089 (Cons!42594 (h!48014 lt!1400541) (++!11132 (t!331421 lt!1400541) lt!1400520)))))

(declare-fun d!1179240 () Bool)

(declare-fun e!2469090 () Bool)

(assert (=> d!1179240 e!2469090))

(declare-fun res!1615246 () Bool)

(assert (=> d!1179240 (=> (not res!1615246) (not e!2469090))))

(declare-fun lt!1400835 () List!42718)

(assert (=> d!1179240 (= res!1615246 (= (content!6456 lt!1400835) ((_ map or) (content!6456 lt!1400541) (content!6456 lt!1400520))))))

(assert (=> d!1179240 (= lt!1400835 e!2469089)))

(declare-fun c!689974 () Bool)

(assert (=> d!1179240 (= c!689974 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1179240 (= (++!11132 lt!1400541 lt!1400520) lt!1400835)))

(declare-fun b!3983891 () Bool)

(assert (=> b!3983891 (= e!2469089 lt!1400520)))

(declare-fun b!3983893 () Bool)

(declare-fun res!1615247 () Bool)

(assert (=> b!3983893 (=> (not res!1615247) (not e!2469090))))

(assert (=> b!3983893 (= res!1615247 (= (size!31861 lt!1400835) (+ (size!31861 lt!1400541) (size!31861 lt!1400520))))))

(declare-fun b!3983894 () Bool)

(assert (=> b!3983894 (= e!2469090 (or (not (= lt!1400520 Nil!42594)) (= lt!1400835 lt!1400541)))))

(assert (= (and d!1179240 c!689974) b!3983891))

(assert (= (and d!1179240 (not c!689974)) b!3983892))

(assert (= (and d!1179240 res!1615246) b!3983893))

(assert (= (and b!3983893 res!1615247) b!3983894))

(declare-fun m!4559121 () Bool)

(assert (=> b!3983892 m!4559121))

(declare-fun m!4559123 () Bool)

(assert (=> d!1179240 m!4559123))

(assert (=> d!1179240 m!4558133))

(assert (=> d!1179240 m!4558205))

(declare-fun m!4559125 () Bool)

(assert (=> b!3983893 m!4559125))

(assert (=> b!3983893 m!4557863))

(assert (=> b!3983893 m!4558209))

(assert (=> b!3983182 d!1179240))

(declare-fun d!1179242 () Bool)

(declare-fun lt!1400836 () List!42718)

(assert (=> d!1179242 (= (++!11132 lt!1400541 lt!1400836) prefix!494)))

(declare-fun e!2469091 () List!42718)

(assert (=> d!1179242 (= lt!1400836 e!2469091)))

(declare-fun c!689975 () Bool)

(assert (=> d!1179242 (= c!689975 ((_ is Cons!42594) lt!1400541))))

(assert (=> d!1179242 (>= (size!31861 prefix!494) (size!31861 lt!1400541))))

(assert (=> d!1179242 (= (getSuffix!2248 prefix!494 lt!1400541) lt!1400836)))

(declare-fun b!3983895 () Bool)

(assert (=> b!3983895 (= e!2469091 (getSuffix!2248 (tail!6212 prefix!494) (t!331421 lt!1400541)))))

(declare-fun b!3983896 () Bool)

(assert (=> b!3983896 (= e!2469091 prefix!494)))

(assert (= (and d!1179242 c!689975) b!3983895))

(assert (= (and d!1179242 (not c!689975)) b!3983896))

(declare-fun m!4559127 () Bool)

(assert (=> d!1179242 m!4559127))

(assert (=> d!1179242 m!4557865))

(assert (=> d!1179242 m!4557863))

(assert (=> b!3983895 m!4558849))

(assert (=> b!3983895 m!4558849))

(declare-fun m!4559129 () Bool)

(assert (=> b!3983895 m!4559129))

(assert (=> b!3983182 d!1179242))

(declare-fun b!3983899 () Bool)

(declare-fun e!2469092 () Bool)

(assert (=> b!3983899 (= e!2469092 (isPrefix!3817 (tail!6212 lt!1400541) (tail!6212 prefix!494)))))

(declare-fun d!1179244 () Bool)

(declare-fun e!2469093 () Bool)

(assert (=> d!1179244 e!2469093))

(declare-fun res!1615248 () Bool)

(assert (=> d!1179244 (=> res!1615248 e!2469093)))

(declare-fun lt!1400837 () Bool)

(assert (=> d!1179244 (= res!1615248 (not lt!1400837))))

(declare-fun e!2469094 () Bool)

(assert (=> d!1179244 (= lt!1400837 e!2469094)))

(declare-fun res!1615251 () Bool)

(assert (=> d!1179244 (=> res!1615251 e!2469094)))

(assert (=> d!1179244 (= res!1615251 ((_ is Nil!42594) lt!1400541))))

(assert (=> d!1179244 (= (isPrefix!3817 lt!1400541 prefix!494) lt!1400837)))

(declare-fun b!3983900 () Bool)

(assert (=> b!3983900 (= e!2469093 (>= (size!31861 prefix!494) (size!31861 lt!1400541)))))

(declare-fun b!3983898 () Bool)

(declare-fun res!1615250 () Bool)

(assert (=> b!3983898 (=> (not res!1615250) (not e!2469092))))

(assert (=> b!3983898 (= res!1615250 (= (head!8480 lt!1400541) (head!8480 prefix!494)))))

(declare-fun b!3983897 () Bool)

(assert (=> b!3983897 (= e!2469094 e!2469092)))

(declare-fun res!1615249 () Bool)

(assert (=> b!3983897 (=> (not res!1615249) (not e!2469092))))

(assert (=> b!3983897 (= res!1615249 (not ((_ is Nil!42594) prefix!494)))))

(assert (= (and d!1179244 (not res!1615251)) b!3983897))

(assert (= (and b!3983897 res!1615249) b!3983898))

(assert (= (and b!3983898 res!1615250) b!3983899))

(assert (= (and d!1179244 (not res!1615248)) b!3983900))

(assert (=> b!3983899 m!4558827))

(assert (=> b!3983899 m!4558849))

(assert (=> b!3983899 m!4558827))

(assert (=> b!3983899 m!4558849))

(declare-fun m!4559131 () Bool)

(assert (=> b!3983899 m!4559131))

(assert (=> b!3983900 m!4557865))

(assert (=> b!3983900 m!4557863))

(assert (=> b!3983898 m!4558835))

(assert (=> b!3983898 m!4558853))

(assert (=> b!3983182 d!1179244))

(declare-fun d!1179246 () Bool)

(assert (=> d!1179246 (isPrefix!3817 lt!1400541 prefix!494)))

(declare-fun lt!1400840 () Unit!61268)

(declare-fun choose!23916 (List!42718 List!42718 List!42718) Unit!61268)

(assert (=> d!1179246 (= lt!1400840 (choose!23916 prefix!494 lt!1400541 lt!1400551))))

(assert (=> d!1179246 (isPrefix!3817 prefix!494 lt!1400551)))

(assert (=> d!1179246 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!395 prefix!494 lt!1400541 lt!1400551) lt!1400840)))

(declare-fun bs!588087 () Bool)

(assert (= bs!588087 d!1179246))

(assert (=> bs!588087 m!4557859))

(declare-fun m!4559133 () Bool)

(assert (=> bs!588087 m!4559133))

(assert (=> bs!588087 m!4558021))

(assert (=> b!3983182 d!1179246))

(declare-fun d!1179248 () Bool)

(declare-fun e!2469097 () Bool)

(assert (=> d!1179248 e!2469097))

(declare-fun res!1615254 () Bool)

(assert (=> d!1179248 (=> res!1615254 e!2469097)))

(declare-fun lt!1400845 () Option!9144)

(assert (=> d!1179248 (= res!1615254 (isEmpty!25466 lt!1400845))))

(declare-fun e!2469095 () Option!9144)

(assert (=> d!1179248 (= lt!1400845 e!2469095)))

(declare-fun c!689976 () Bool)

(assert (=> d!1179248 (= c!689976 (and ((_ is Cons!42596) rules!2999) ((_ is Nil!42596) (t!331423 rules!2999))))))

(declare-fun lt!1400843 () Unit!61268)

(declare-fun lt!1400841 () Unit!61268)

(assert (=> d!1179248 (= lt!1400843 lt!1400841)))

(assert (=> d!1179248 (isPrefix!3817 lt!1400551 lt!1400551)))

(assert (=> d!1179248 (= lt!1400841 (lemmaIsPrefixRefl!2409 lt!1400551 lt!1400551))))

(assert (=> d!1179248 (rulesValidInductive!2443 thiss!21717 rules!2999)))

(assert (=> d!1179248 (= (maxPrefix!3617 thiss!21717 rules!2999 lt!1400551) lt!1400845)))

(declare-fun b!3983901 () Bool)

(declare-fun call!285754 () Option!9144)

(assert (=> b!3983901 (= e!2469095 call!285754)))

(declare-fun b!3983902 () Bool)

(declare-fun res!1615253 () Bool)

(declare-fun e!2469096 () Bool)

(assert (=> b!3983902 (=> (not res!1615253) (not e!2469096))))

(assert (=> b!3983902 (= res!1615253 (= (value!212439 (_1!24040 (get!14021 lt!1400845))) (apply!9941 (transformation!6730 (rule!9738 (_1!24040 (get!14021 lt!1400845)))) (seqFromList!4969 (originalCharacters!7330 (_1!24040 (get!14021 lt!1400845)))))))))

(declare-fun b!3983903 () Bool)

(assert (=> b!3983903 (= e!2469097 e!2469096)))

(declare-fun res!1615252 () Bool)

(assert (=> b!3983903 (=> (not res!1615252) (not e!2469096))))

(assert (=> b!3983903 (= res!1615252 (isDefined!7032 lt!1400845))))

(declare-fun b!3983904 () Bool)

(assert (=> b!3983904 (= e!2469096 (contains!8475 rules!2999 (rule!9738 (_1!24040 (get!14021 lt!1400845)))))))

(declare-fun bm!285749 () Bool)

(assert (=> bm!285749 (= call!285754 (maxPrefixOneRule!2651 thiss!21717 (h!48016 rules!2999) lt!1400551))))

(declare-fun b!3983905 () Bool)

(declare-fun res!1615255 () Bool)

(assert (=> b!3983905 (=> (not res!1615255) (not e!2469096))))

(assert (=> b!3983905 (= res!1615255 (< (size!31861 (_2!24040 (get!14021 lt!1400845))) (size!31861 lt!1400551)))))

(declare-fun b!3983906 () Bool)

(declare-fun res!1615257 () Bool)

(assert (=> b!3983906 (=> (not res!1615257) (not e!2469096))))

(assert (=> b!3983906 (= res!1615257 (= (list!15810 (charsOf!4546 (_1!24040 (get!14021 lt!1400845)))) (originalCharacters!7330 (_1!24040 (get!14021 lt!1400845)))))))

(declare-fun b!3983907 () Bool)

(declare-fun res!1615258 () Bool)

(assert (=> b!3983907 (=> (not res!1615258) (not e!2469096))))

(assert (=> b!3983907 (= res!1615258 (matchR!5612 (regex!6730 (rule!9738 (_1!24040 (get!14021 lt!1400845)))) (list!15810 (charsOf!4546 (_1!24040 (get!14021 lt!1400845))))))))

(declare-fun b!3983908 () Bool)

(declare-fun lt!1400842 () Option!9144)

(declare-fun lt!1400844 () Option!9144)

(assert (=> b!3983908 (= e!2469095 (ite (and ((_ is None!9143) lt!1400842) ((_ is None!9143) lt!1400844)) None!9143 (ite ((_ is None!9143) lt!1400844) lt!1400842 (ite ((_ is None!9143) lt!1400842) lt!1400844 (ite (>= (size!31860 (_1!24040 (v!39491 lt!1400842))) (size!31860 (_1!24040 (v!39491 lt!1400844)))) lt!1400842 lt!1400844)))))))

(assert (=> b!3983908 (= lt!1400842 call!285754)))

(assert (=> b!3983908 (= lt!1400844 (maxPrefix!3617 thiss!21717 (t!331423 rules!2999) lt!1400551))))

(declare-fun b!3983909 () Bool)

(declare-fun res!1615256 () Bool)

(assert (=> b!3983909 (=> (not res!1615256) (not e!2469096))))

(assert (=> b!3983909 (= res!1615256 (= (++!11132 (list!15810 (charsOf!4546 (_1!24040 (get!14021 lt!1400845)))) (_2!24040 (get!14021 lt!1400845))) lt!1400551))))

(assert (= (and d!1179248 c!689976) b!3983901))

(assert (= (and d!1179248 (not c!689976)) b!3983908))

(assert (= (or b!3983901 b!3983908) bm!285749))

(assert (= (and d!1179248 (not res!1615254)) b!3983903))

(assert (= (and b!3983903 res!1615252) b!3983906))

(assert (= (and b!3983906 res!1615257) b!3983905))

(assert (= (and b!3983905 res!1615255) b!3983909))

(assert (= (and b!3983909 res!1615256) b!3983902))

(assert (= (and b!3983902 res!1615253) b!3983907))

(assert (= (and b!3983907 res!1615258) b!3983904))

(declare-fun m!4559135 () Bool)

(assert (=> b!3983902 m!4559135))

(declare-fun m!4559137 () Bool)

(assert (=> b!3983902 m!4559137))

(assert (=> b!3983902 m!4559137))

(declare-fun m!4559139 () Bool)

(assert (=> b!3983902 m!4559139))

(declare-fun m!4559141 () Bool)

(assert (=> b!3983908 m!4559141))

(assert (=> b!3983904 m!4559135))

(declare-fun m!4559143 () Bool)

(assert (=> b!3983904 m!4559143))

(assert (=> b!3983909 m!4559135))

(declare-fun m!4559145 () Bool)

(assert (=> b!3983909 m!4559145))

(assert (=> b!3983909 m!4559145))

(declare-fun m!4559147 () Bool)

(assert (=> b!3983909 m!4559147))

(assert (=> b!3983909 m!4559147))

(declare-fun m!4559149 () Bool)

(assert (=> b!3983909 m!4559149))

(assert (=> b!3983907 m!4559135))

(assert (=> b!3983907 m!4559145))

(assert (=> b!3983907 m!4559145))

(assert (=> b!3983907 m!4559147))

(assert (=> b!3983907 m!4559147))

(declare-fun m!4559151 () Bool)

(assert (=> b!3983907 m!4559151))

(declare-fun m!4559153 () Bool)

(assert (=> bm!285749 m!4559153))

(declare-fun m!4559155 () Bool)

(assert (=> d!1179248 m!4559155))

(assert (=> d!1179248 m!4557875))

(assert (=> d!1179248 m!4557877))

(assert (=> d!1179248 m!4557941))

(declare-fun m!4559157 () Bool)

(assert (=> b!3983903 m!4559157))

(assert (=> b!3983906 m!4559135))

(assert (=> b!3983906 m!4559145))

(assert (=> b!3983906 m!4559145))

(assert (=> b!3983906 m!4559147))

(assert (=> b!3983905 m!4559135))

(declare-fun m!4559159 () Bool)

(assert (=> b!3983905 m!4559159))

(assert (=> b!3983905 m!4558143))

(assert (=> b!3983203 d!1179248))

(declare-fun b!3983911 () Bool)

(declare-fun e!2469098 () List!42718)

(assert (=> b!3983911 (= e!2469098 (Cons!42594 (h!48014 prefix!494) (++!11132 (t!331421 prefix!494) suffix!1299)))))

(declare-fun d!1179250 () Bool)

(declare-fun e!2469099 () Bool)

(assert (=> d!1179250 e!2469099))

(declare-fun res!1615259 () Bool)

(assert (=> d!1179250 (=> (not res!1615259) (not e!2469099))))

(declare-fun lt!1400846 () List!42718)

(assert (=> d!1179250 (= res!1615259 (= (content!6456 lt!1400846) ((_ map or) (content!6456 prefix!494) (content!6456 suffix!1299))))))

(assert (=> d!1179250 (= lt!1400846 e!2469098)))

(declare-fun c!689977 () Bool)

(assert (=> d!1179250 (= c!689977 ((_ is Nil!42594) prefix!494))))

(assert (=> d!1179250 (= (++!11132 prefix!494 suffix!1299) lt!1400846)))

(declare-fun b!3983910 () Bool)

(assert (=> b!3983910 (= e!2469098 suffix!1299)))

(declare-fun b!3983912 () Bool)

(declare-fun res!1615260 () Bool)

(assert (=> b!3983912 (=> (not res!1615260) (not e!2469099))))

(assert (=> b!3983912 (= res!1615260 (= (size!31861 lt!1400846) (+ (size!31861 prefix!494) (size!31861 suffix!1299))))))

(declare-fun b!3983913 () Bool)

(assert (=> b!3983913 (= e!2469099 (or (not (= suffix!1299 Nil!42594)) (= lt!1400846 prefix!494)))))

(assert (= (and d!1179250 c!689977) b!3983910))

(assert (= (and d!1179250 (not c!689977)) b!3983911))

(assert (= (and d!1179250 res!1615259) b!3983912))

(assert (= (and b!3983912 res!1615260) b!3983913))

(declare-fun m!4559161 () Bool)

(assert (=> b!3983911 m!4559161))

(declare-fun m!4559163 () Bool)

(assert (=> d!1179250 m!4559163))

(assert (=> d!1179250 m!4558871))

(assert (=> d!1179250 m!4558195))

(declare-fun m!4559165 () Bool)

(assert (=> b!3983912 m!4559165))

(assert (=> b!3983912 m!4557865))

(assert (=> b!3983912 m!4557943))

(assert (=> b!3983203 d!1179250))

(declare-fun d!1179252 () Bool)

(declare-fun res!1615265 () Bool)

(declare-fun e!2469102 () Bool)

(assert (=> d!1179252 (=> (not res!1615265) (not e!2469102))))

(assert (=> d!1179252 (= res!1615265 (not (isEmpty!25465 (originalCharacters!7330 token!484))))))

(assert (=> d!1179252 (= (inv!56899 token!484) e!2469102)))

(declare-fun b!3983918 () Bool)

(declare-fun res!1615266 () Bool)

(assert (=> b!3983918 (=> (not res!1615266) (not e!2469102))))

(assert (=> b!3983918 (= res!1615266 (= (originalCharacters!7330 token!484) (list!15810 (dynLambda!18113 (toChars!9077 (transformation!6730 (rule!9738 token!484))) (value!212439 token!484)))))))

(declare-fun b!3983919 () Bool)

(assert (=> b!3983919 (= e!2469102 (= (size!31860 token!484) (size!31861 (originalCharacters!7330 token!484))))))

(assert (= (and d!1179252 res!1615265) b!3983918))

(assert (= (and b!3983918 res!1615266) b!3983919))

(declare-fun b_lambda!116359 () Bool)

(assert (=> (not b_lambda!116359) (not b!3983918)))

(assert (=> b!3983918 t!331445))

(declare-fun b_and!306191 () Bool)

(assert (= b_and!306187 (and (=> t!331445 result!290732) b_and!306191)))

(assert (=> b!3983918 t!331447))

(declare-fun b_and!306193 () Bool)

(assert (= b_and!306189 (and (=> t!331447 result!290736) b_and!306193)))

(declare-fun m!4559167 () Bool)

(assert (=> d!1179252 m!4559167))

(assert (=> b!3983918 m!4558897))

(assert (=> b!3983918 m!4558897))

(declare-fun m!4559169 () Bool)

(assert (=> b!3983918 m!4559169))

(assert (=> b!3983919 m!4557879))

(assert (=> start!374856 d!1179252))

(declare-fun b!3983922 () Bool)

(declare-fun e!2469103 () Bool)

(assert (=> b!3983922 (= e!2469103 (isPrefix!3817 (tail!6212 lt!1400544) (tail!6212 lt!1400551)))))

(declare-fun d!1179254 () Bool)

(declare-fun e!2469104 () Bool)

(assert (=> d!1179254 e!2469104))

(declare-fun res!1615267 () Bool)

(assert (=> d!1179254 (=> res!1615267 e!2469104)))

(declare-fun lt!1400847 () Bool)

(assert (=> d!1179254 (= res!1615267 (not lt!1400847))))

(declare-fun e!2469105 () Bool)

(assert (=> d!1179254 (= lt!1400847 e!2469105)))

(declare-fun res!1615270 () Bool)

(assert (=> d!1179254 (=> res!1615270 e!2469105)))

(assert (=> d!1179254 (= res!1615270 ((_ is Nil!42594) lt!1400544))))

(assert (=> d!1179254 (= (isPrefix!3817 lt!1400544 lt!1400551) lt!1400847)))

(declare-fun b!3983923 () Bool)

(assert (=> b!3983923 (= e!2469104 (>= (size!31861 lt!1400551) (size!31861 lt!1400544)))))

(declare-fun b!3983921 () Bool)

(declare-fun res!1615269 () Bool)

(assert (=> b!3983921 (=> (not res!1615269) (not e!2469103))))

(assert (=> b!3983921 (= res!1615269 (= (head!8480 lt!1400544) (head!8480 lt!1400551)))))

(declare-fun b!3983920 () Bool)

(assert (=> b!3983920 (= e!2469105 e!2469103)))

(declare-fun res!1615268 () Bool)

(assert (=> b!3983920 (=> (not res!1615268) (not e!2469103))))

(assert (=> b!3983920 (= res!1615268 (not ((_ is Nil!42594) lt!1400551)))))

(assert (= (and d!1179254 (not res!1615270)) b!3983920))

(assert (= (and b!3983920 res!1615268) b!3983921))

(assert (= (and b!3983921 res!1615269) b!3983922))

(assert (= (and d!1179254 (not res!1615267)) b!3983923))

(assert (=> b!3983922 m!4558217))

(assert (=> b!3983922 m!4558145))

(assert (=> b!3983922 m!4558217))

(assert (=> b!3983922 m!4558145))

(declare-fun m!4559171 () Bool)

(assert (=> b!3983922 m!4559171))

(assert (=> b!3983923 m!4558143))

(assert (=> b!3983923 m!4557983))

(assert (=> b!3983921 m!4558221))

(assert (=> b!3983921 m!4558151))

(assert (=> b!3983204 d!1179254))

(declare-fun b!3983926 () Bool)

(declare-fun e!2469106 () Bool)

(assert (=> b!3983926 (= e!2469106 (isPrefix!3817 (tail!6212 lt!1400544) (tail!6212 lt!1400535)))))

(declare-fun d!1179256 () Bool)

(declare-fun e!2469107 () Bool)

(assert (=> d!1179256 e!2469107))

(declare-fun res!1615271 () Bool)

(assert (=> d!1179256 (=> res!1615271 e!2469107)))

(declare-fun lt!1400848 () Bool)

(assert (=> d!1179256 (= res!1615271 (not lt!1400848))))

(declare-fun e!2469108 () Bool)

(assert (=> d!1179256 (= lt!1400848 e!2469108)))

(declare-fun res!1615274 () Bool)

(assert (=> d!1179256 (=> res!1615274 e!2469108)))

(assert (=> d!1179256 (= res!1615274 ((_ is Nil!42594) lt!1400544))))

(assert (=> d!1179256 (= (isPrefix!3817 lt!1400544 lt!1400535) lt!1400848)))

(declare-fun b!3983927 () Bool)

(assert (=> b!3983927 (= e!2469107 (>= (size!31861 lt!1400535) (size!31861 lt!1400544)))))

(declare-fun b!3983925 () Bool)

(declare-fun res!1615273 () Bool)

(assert (=> b!3983925 (=> (not res!1615273) (not e!2469106))))

(assert (=> b!3983925 (= res!1615273 (= (head!8480 lt!1400544) (head!8480 lt!1400535)))))

(declare-fun b!3983924 () Bool)

(assert (=> b!3983924 (= e!2469108 e!2469106)))

(declare-fun res!1615272 () Bool)

(assert (=> b!3983924 (=> (not res!1615272) (not e!2469106))))

(assert (=> b!3983924 (= res!1615272 (not ((_ is Nil!42594) lt!1400535)))))

(assert (= (and d!1179256 (not res!1615274)) b!3983924))

(assert (= (and b!3983924 res!1615272) b!3983925))

(assert (= (and b!3983925 res!1615273) b!3983926))

(assert (= (and d!1179256 (not res!1615271)) b!3983927))

(assert (=> b!3983926 m!4558217))

(declare-fun m!4559173 () Bool)

(assert (=> b!3983926 m!4559173))

(assert (=> b!3983926 m!4558217))

(assert (=> b!3983926 m!4559173))

(declare-fun m!4559175 () Bool)

(assert (=> b!3983926 m!4559175))

(declare-fun m!4559177 () Bool)

(assert (=> b!3983927 m!4559177))

(assert (=> b!3983927 m!4557983))

(assert (=> b!3983925 m!4558221))

(declare-fun m!4559179 () Bool)

(assert (=> b!3983925 m!4559179))

(assert (=> b!3983204 d!1179256))

(declare-fun d!1179258 () Bool)

(assert (=> d!1179258 (isPrefix!3817 lt!1400544 (++!11132 lt!1400536 lt!1400546))))

(declare-fun lt!1400849 () Unit!61268)

(assert (=> d!1179258 (= lt!1400849 (choose!23913 lt!1400544 lt!1400536 lt!1400546))))

(assert (=> d!1179258 (isPrefix!3817 lt!1400544 lt!1400536)))

(assert (=> d!1179258 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!650 lt!1400544 lt!1400536 lt!1400546) lt!1400849)))

(declare-fun bs!588088 () Bool)

(assert (= bs!588088 d!1179258))

(assert (=> bs!588088 m!4557979))

(assert (=> bs!588088 m!4557979))

(declare-fun m!4559181 () Bool)

(assert (=> bs!588088 m!4559181))

(declare-fun m!4559183 () Bool)

(assert (=> bs!588088 m!4559183))

(assert (=> bs!588088 m!4557893))

(assert (=> b!3983204 d!1179258))

(declare-fun e!2469111 () Bool)

(assert (=> b!3983190 (= tp!1214102 e!2469111)))

(declare-fun b!3983938 () Bool)

(assert (=> b!3983938 (= e!2469111 tp_is_empty!20241)))

(declare-fun b!3983941 () Bool)

(declare-fun tp!1214164 () Bool)

(declare-fun tp!1214165 () Bool)

(assert (=> b!3983941 (= e!2469111 (and tp!1214164 tp!1214165))))

(declare-fun b!3983940 () Bool)

(declare-fun tp!1214162 () Bool)

(assert (=> b!3983940 (= e!2469111 tp!1214162)))

(declare-fun b!3983939 () Bool)

(declare-fun tp!1214161 () Bool)

(declare-fun tp!1214163 () Bool)

(assert (=> b!3983939 (= e!2469111 (and tp!1214161 tp!1214163))))

(assert (= (and b!3983190 ((_ is ElementMatch!11635) (regex!6730 (rule!9738 token!484)))) b!3983938))

(assert (= (and b!3983190 ((_ is Concat!18596) (regex!6730 (rule!9738 token!484)))) b!3983939))

(assert (= (and b!3983190 ((_ is Star!11635) (regex!6730 (rule!9738 token!484)))) b!3983940))

(assert (= (and b!3983190 ((_ is Union!11635) (regex!6730 (rule!9738 token!484)))) b!3983941))

(declare-fun b!3983946 () Bool)

(declare-fun e!2469114 () Bool)

(declare-fun tp!1214168 () Bool)

(assert (=> b!3983946 (= e!2469114 (and tp_is_empty!20241 tp!1214168))))

(assert (=> b!3983195 (= tp!1214096 e!2469114)))

(assert (= (and b!3983195 ((_ is Cons!42594) (t!331421 prefix!494))) b!3983946))

(declare-fun e!2469115 () Bool)

(assert (=> b!3983169 (= tp!1214101 e!2469115)))

(declare-fun b!3983947 () Bool)

(assert (=> b!3983947 (= e!2469115 tp_is_empty!20241)))

(declare-fun b!3983950 () Bool)

(declare-fun tp!1214172 () Bool)

(declare-fun tp!1214173 () Bool)

(assert (=> b!3983950 (= e!2469115 (and tp!1214172 tp!1214173))))

(declare-fun b!3983949 () Bool)

(declare-fun tp!1214170 () Bool)

(assert (=> b!3983949 (= e!2469115 tp!1214170)))

(declare-fun b!3983948 () Bool)

(declare-fun tp!1214169 () Bool)

(declare-fun tp!1214171 () Bool)

(assert (=> b!3983948 (= e!2469115 (and tp!1214169 tp!1214171))))

(assert (= (and b!3983169 ((_ is ElementMatch!11635) (regex!6730 (h!48016 rules!2999)))) b!3983947))

(assert (= (and b!3983169 ((_ is Concat!18596) (regex!6730 (h!48016 rules!2999)))) b!3983948))

(assert (= (and b!3983169 ((_ is Star!11635) (regex!6730 (h!48016 rules!2999)))) b!3983949))

(assert (= (and b!3983169 ((_ is Union!11635) (regex!6730 (h!48016 rules!2999)))) b!3983950))

(declare-fun b!3983951 () Bool)

(declare-fun e!2469116 () Bool)

(declare-fun tp!1214174 () Bool)

(assert (=> b!3983951 (= e!2469116 (and tp_is_empty!20241 tp!1214174))))

(assert (=> b!3983178 (= tp!1214099 e!2469116)))

(assert (= (and b!3983178 ((_ is Cons!42594) (t!331421 newSuffixResult!27))) b!3983951))

(declare-fun b!3983952 () Bool)

(declare-fun e!2469117 () Bool)

(declare-fun tp!1214175 () Bool)

(assert (=> b!3983952 (= e!2469117 (and tp_is_empty!20241 tp!1214175))))

(assert (=> b!3983189 (= tp!1214092 e!2469117)))

(assert (= (and b!3983189 ((_ is Cons!42594) (t!331421 suffix!1299))) b!3983952))

(declare-fun b!3983953 () Bool)

(declare-fun e!2469118 () Bool)

(declare-fun tp!1214176 () Bool)

(assert (=> b!3983953 (= e!2469118 (and tp_is_empty!20241 tp!1214176))))

(assert (=> b!3983187 (= tp!1214098 e!2469118)))

(assert (= (and b!3983187 ((_ is Cons!42594) (t!331421 newSuffix!27))) b!3983953))

(declare-fun b!3983954 () Bool)

(declare-fun e!2469119 () Bool)

(declare-fun tp!1214177 () Bool)

(assert (=> b!3983954 (= e!2469119 (and tp_is_empty!20241 tp!1214177))))

(assert (=> b!3983188 (= tp!1214094 e!2469119)))

(assert (= (and b!3983188 ((_ is Cons!42594) (originalCharacters!7330 token!484))) b!3983954))

(declare-fun b!3983965 () Bool)

(declare-fun b_free!110605 () Bool)

(declare-fun b_next!111309 () Bool)

(assert (=> b!3983965 (= b_free!110605 (not b_next!111309))))

(declare-fun tb!240005 () Bool)

(declare-fun t!331465 () Bool)

(assert (=> (and b!3983965 (= (toValue!9218 (transformation!6730 (h!48016 (t!331423 rules!2999)))) (toValue!9218 (transformation!6730 (rule!9738 token!484)))) t!331465) tb!240005))

(declare-fun result!290766 () Bool)

(assert (= result!290766 result!290726))

(assert (=> d!1179136 t!331465))

(declare-fun t!331467 () Bool)

(declare-fun tb!240007 () Bool)

(assert (=> (and b!3983965 (= (toValue!9218 (transformation!6730 (h!48016 (t!331423 rules!2999)))) (toValue!9218 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))))) t!331467) tb!240007))

(declare-fun result!290768 () Bool)

(assert (= result!290768 result!290752))

(assert (=> d!1179208 t!331467))

(declare-fun b_and!306195 () Bool)

(declare-fun tp!1214186 () Bool)

(assert (=> b!3983965 (= tp!1214186 (and (=> t!331465 result!290766) (=> t!331467 result!290768) b_and!306195))))

(declare-fun b_free!110607 () Bool)

(declare-fun b_next!111311 () Bool)

(assert (=> b!3983965 (= b_free!110607 (not b_next!111311))))

(declare-fun tb!240009 () Bool)

(declare-fun t!331469 () Bool)

(assert (=> (and b!3983965 (= (toChars!9077 (transformation!6730 (h!48016 (t!331423 rules!2999)))) (toChars!9077 (transformation!6730 (rule!9738 token!484)))) t!331469) tb!240009))

(declare-fun result!290770 () Bool)

(assert (= result!290770 result!290732))

(assert (=> d!1179174 t!331469))

(declare-fun tb!240011 () Bool)

(declare-fun t!331471 () Bool)

(assert (=> (and b!3983965 (= (toChars!9077 (transformation!6730 (h!48016 (t!331423 rules!2999)))) (toChars!9077 (transformation!6730 (rule!9738 (_1!24040 (v!39491 lt!1400533)))))) t!331471) tb!240011))

(declare-fun result!290772 () Bool)

(assert (= result!290772 result!290756))

(assert (=> d!1179216 t!331471))

(assert (=> b!3983918 t!331469))

(declare-fun b_and!306197 () Bool)

(declare-fun tp!1214187 () Bool)

(assert (=> b!3983965 (= tp!1214187 (and (=> t!331469 result!290770) (=> t!331471 result!290772) b_and!306197))))

(declare-fun e!2469128 () Bool)

(assert (=> b!3983965 (= e!2469128 (and tp!1214186 tp!1214187))))

(declare-fun tp!1214189 () Bool)

(declare-fun b!3983964 () Bool)

(declare-fun e!2469129 () Bool)

(assert (=> b!3983964 (= e!2469129 (and tp!1214189 (inv!56895 (tag!7590 (h!48016 (t!331423 rules!2999)))) (inv!56898 (transformation!6730 (h!48016 (t!331423 rules!2999)))) e!2469128))))

(declare-fun b!3983963 () Bool)

(declare-fun e!2469131 () Bool)

(declare-fun tp!1214188 () Bool)

(assert (=> b!3983963 (= e!2469131 (and e!2469129 tp!1214188))))

(assert (=> b!3983191 (= tp!1214097 e!2469131)))

(assert (= b!3983964 b!3983965))

(assert (= b!3983963 b!3983964))

(assert (= (and b!3983191 ((_ is Cons!42596) (t!331423 rules!2999))) b!3983963))

(declare-fun m!4559185 () Bool)

(assert (=> b!3983964 m!4559185))

(declare-fun m!4559187 () Bool)

(assert (=> b!3983964 m!4559187))

(declare-fun b!3983966 () Bool)

(declare-fun e!2469132 () Bool)

(declare-fun tp!1214190 () Bool)

(assert (=> b!3983966 (= e!2469132 (and tp_is_empty!20241 tp!1214190))))

(assert (=> b!3983181 (= tp!1214095 e!2469132)))

(assert (= (and b!3983181 ((_ is Cons!42594) (t!331421 suffixResult!105))) b!3983966))

(declare-fun b_lambda!116361 () Bool)

(assert (= b_lambda!116359 (or (and b!3983183 b_free!110595) (and b!3983202 b_free!110599 (= (toChars!9077 (transformation!6730 (h!48016 rules!2999))) (toChars!9077 (transformation!6730 (rule!9738 token!484))))) (and b!3983965 b_free!110607 (= (toChars!9077 (transformation!6730 (h!48016 (t!331423 rules!2999)))) (toChars!9077 (transformation!6730 (rule!9738 token!484))))) b_lambda!116361)))

(declare-fun b_lambda!116363 () Bool)

(assert (= b_lambda!116345 (or (and b!3983183 b_free!110593) (and b!3983202 b_free!110597 (= (toValue!9218 (transformation!6730 (h!48016 rules!2999))) (toValue!9218 (transformation!6730 (rule!9738 token!484))))) (and b!3983965 b_free!110605 (= (toValue!9218 (transformation!6730 (h!48016 (t!331423 rules!2999)))) (toValue!9218 (transformation!6730 (rule!9738 token!484))))) b_lambda!116363)))

(declare-fun b_lambda!116365 () Bool)

(assert (= b_lambda!116347 (or (and b!3983183 b_free!110595) (and b!3983202 b_free!110599 (= (toChars!9077 (transformation!6730 (h!48016 rules!2999))) (toChars!9077 (transformation!6730 (rule!9738 token!484))))) (and b!3983965 b_free!110607 (= (toChars!9077 (transformation!6730 (h!48016 (t!331423 rules!2999)))) (toChars!9077 (transformation!6730 (rule!9738 token!484))))) b_lambda!116365)))

(check-sat (not b!3983289) (not b!3983306) (not b!3983313) (not b!3983892) (not b!3983844) (not d!1179246) (not b!3983705) (not b!3983949) (not b!3983734) (not b!3983907) (not b!3983341) (not d!1179240) (not b!3983866) (not b!3983940) (not b!3983362) (not b!3983695) (not d!1179196) (not d!1178942) (not d!1179228) (not d!1179138) (not b!3983676) (not b!3983696) (not d!1179202) (not b!3983284) (not d!1179198) (not d!1178958) (not d!1179210) (not b!3983668) (not d!1179174) (not b!3983905) b_and!306197 (not b_lambda!116355) (not b!3983640) (not b!3983927) (not d!1179248) (not d!1178936) (not b!3983898) (not d!1178956) b_and!306193 (not d!1179234) (not d!1179130) (not b!3983294) (not d!1179122) (not b!3983305) (not b!3983687) (not b!3983858) (not b!3983283) (not d!1179226) (not b!3983731) (not b!3983755) (not d!1179224) (not b!3983895) b_and!306191 (not b!3983685) (not b!3983327) (not b!3983885) (not b!3983681) (not b!3983671) (not b!3983846) (not b!3983948) (not b!3983309) (not b_lambda!116357) (not b!3983871) (not d!1179176) (not d!1178954) (not b!3983849) (not b!3983271) (not b!3983688) (not b!3983919) (not b!3983903) (not b!3983710) (not b!3983286) (not b_lambda!116365) (not b!3983319) (not b!3983303) (not bm!285745) (not b!3983946) (not b!3983669) b_and!306195 (not b!3983741) (not b!3983926) (not b!3983296) (not tb!240001) (not b!3983703) (not d!1179118) (not b!3983857) (not d!1178932) (not b!3983880) (not d!1179178) (not d!1179164) (not b!3983297) (not tb!239985) (not b_next!111309) (not b_next!111303) (not b!3983850) (not b!3983733) (not b!3983862) (not b!3983964) (not d!1179252) (not b!3983644) (not b!3983902) (not d!1178924) (not d!1179206) (not b!3983317) (not b!3983642) (not b!3983672) (not b!3983693) (not d!1179166) tp_is_empty!20241 (not tb!239997) (not b!3983890) (not b!3983282) (not b!3983677) (not d!1179140) (not b!3983842) (not b!3983872) (not b!3983684) (not b_next!111301) (not b!3983287) (not b!3983730) (not b!3983737) (not d!1179214) (not b!3983631) (not d!1179134) (not b!3983953) (not d!1178940) (not b!3983900) (not d!1178952) (not d!1179158) (not d!1179194) (not d!1179230) (not b!3983884) (not b!3983318) (not b_next!111299) (not b!3983732) (not b!3983925) (not b!3983950) (not d!1178904) (not b!3983874) (not d!1179220) (not b!3983752) (not b!3983908) (not d!1179152) (not b!3983325) (not b!3983918) (not b!3983853) (not d!1179216) (not bm!285749) (not b!3983260) (not b_lambda!116361) (not b!3983735) (not b!3983904) (not b!3983870) (not b!3983636) (not b!3983861) (not d!1179172) (not b_lambda!116363) (not b!3983877) (not b!3983966) (not b!3983292) b_and!306183 (not b!3983679) (not tb!239981) (not b!3983941) (not b!3983328) (not b!3983689) (not b_next!111311) (not b!3983911) (not b!3983923) (not d!1179218) (not b!3983739) (not b!3983756) (not d!1179124) (not b!3983683) (not b!3983881) (not d!1179182) (not d!1178934) (not b!3983680) (not b!3983632) (not d!1178930) (not b!3983692) (not b!3983261) (not d!1178950) (not b!3983299) (not d!1179222) (not b!3983666) (not b!3983332) (not d!1179162) (not b!3983314) (not b!3983876) (not b!3983886) (not b_next!111297) (not d!1179258) (not d!1179238) (not b!3983869) (not b!3983675) (not d!1179200) (not d!1178948) (not b!3983863) (not b!3983912) (not d!1179132) (not d!1178928) (not bm!285748) (not d!1179250) (not b!3983899) (not b!3983700) (not b!3983864) (not b!3983952) (not b!3983699) (not b!3983951) (not b!3983921) (not b!3983893) (not b!3983909) (not b!3983836) (not b!3983939) (not b!3983851) (not b!3983310) (not b!3983637) (not b!3983854) (not b!3983736) (not d!1179242) (not b!3983665) (not d!1179154) (not b!3983670) (not d!1178914) (not b!3983293) (not b!3983873) (not b!3983868) b_and!306185 (not d!1178938) (not b!3983740) (not b!3983887) (not b!3983906) (not d!1178922) (not b!3983673) (not b!3983847) (not b!3983954) (not d!1179186) (not b!3983865) (not b!3983963) (not b!3983922) (not b!3983638) (not d!1179212) (not b!3983837))
(check-sat b_and!306197 b_and!306193 b_and!306191 b_and!306195 (not b_next!111301) (not b_next!111299) (not b_next!111297) b_and!306185 (not b_next!111309) (not b_next!111303) b_and!306183 (not b_next!111311))
