; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337690 () Bool)

(assert start!337690)

(declare-fun b!3624754 () Bool)

(declare-fun b_free!94609 () Bool)

(declare-fun b_next!95313 () Bool)

(assert (=> b!3624754 (= b_free!94609 (not b_next!95313))))

(declare-fun tp!1106982 () Bool)

(declare-fun b_and!265351 () Bool)

(assert (=> b!3624754 (= tp!1106982 b_and!265351)))

(declare-fun b_free!94611 () Bool)

(declare-fun b_next!95315 () Bool)

(assert (=> b!3624754 (= b_free!94611 (not b_next!95315))))

(declare-fun tp!1106978 () Bool)

(declare-fun b_and!265353 () Bool)

(assert (=> b!3624754 (= tp!1106978 b_and!265353)))

(declare-fun b!3624768 () Bool)

(declare-fun b_free!94613 () Bool)

(declare-fun b_next!95317 () Bool)

(assert (=> b!3624768 (= b_free!94613 (not b_next!95317))))

(declare-fun tp!1106989 () Bool)

(declare-fun b_and!265355 () Bool)

(assert (=> b!3624768 (= tp!1106989 b_and!265355)))

(declare-fun b_free!94615 () Bool)

(declare-fun b_next!95319 () Bool)

(assert (=> b!3624768 (= b_free!94615 (not b_next!95319))))

(declare-fun tp!1106986 () Bool)

(declare-fun b_and!265357 () Bool)

(assert (=> b!3624768 (= tp!1106986 b_and!265357)))

(declare-fun b!3624758 () Bool)

(declare-fun b_free!94617 () Bool)

(declare-fun b_next!95321 () Bool)

(assert (=> b!3624758 (= b_free!94617 (not b_next!95321))))

(declare-fun tp!1106985 () Bool)

(declare-fun b_and!265359 () Bool)

(assert (=> b!3624758 (= tp!1106985 b_and!265359)))

(declare-fun b_free!94619 () Bool)

(declare-fun b_next!95323 () Bool)

(assert (=> b!3624758 (= b_free!94619 (not b_next!95323))))

(declare-fun tp!1106984 () Bool)

(declare-fun b_and!265361 () Bool)

(assert (=> b!3624758 (= tp!1106984 b_and!265361)))

(declare-fun b!3624757 () Bool)

(declare-fun b_free!94621 () Bool)

(declare-fun b_next!95325 () Bool)

(assert (=> b!3624757 (= b_free!94621 (not b_next!95325))))

(declare-fun tp!1106990 () Bool)

(declare-fun b_and!265363 () Bool)

(assert (=> b!3624757 (= tp!1106990 b_and!265363)))

(declare-fun b_free!94623 () Bool)

(declare-fun b_next!95327 () Bool)

(assert (=> b!3624757 (= b_free!94623 (not b_next!95327))))

(declare-fun tp!1106976 () Bool)

(declare-fun b_and!265365 () Bool)

(assert (=> b!3624757 (= tp!1106976 b_and!265365)))

(declare-fun b!3624752 () Bool)

(declare-fun e!2243648 () Bool)

(declare-fun e!2243664 () Bool)

(assert (=> b!3624752 (= e!2243648 e!2243664)))

(declare-fun res!1467185 () Bool)

(assert (=> b!3624752 (=> res!1467185 e!2243664)))

(declare-datatypes ((C!21080 0))(
  ( (C!21081 (val!12588 Int)) )
))
(declare-datatypes ((Regex!10447 0))(
  ( (ElementMatch!10447 (c!627212 C!21080)) (Concat!16365 (regOne!21406 Regex!10447) (regTwo!21406 Regex!10447)) (EmptyExpr!10447) (Star!10447 (reg!10776 Regex!10447)) (EmptyLang!10447) (Union!10447 (regOne!21407 Regex!10447) (regTwo!21407 Regex!10447)) )
))
(declare-datatypes ((String!42923 0))(
  ( (String!42924 (value!182542 String)) )
))
(declare-datatypes ((List!38305 0))(
  ( (Nil!38181) (Cons!38181 (h!43601 (_ BitVec 16)) (t!294520 List!38305)) )
))
(declare-datatypes ((TokenValue!5918 0))(
  ( (FloatLiteralValue!11836 (text!41871 List!38305)) (TokenValueExt!5917 (__x!24053 Int)) (Broken!29590 (value!182543 List!38305)) (Object!6041) (End!5918) (Def!5918) (Underscore!5918) (Match!5918) (Else!5918) (Error!5918) (Case!5918) (If!5918) (Extends!5918) (Abstract!5918) (Class!5918) (Val!5918) (DelimiterValue!11836 (del!5978 List!38305)) (KeywordValue!5924 (value!182544 List!38305)) (CommentValue!11836 (value!182545 List!38305)) (WhitespaceValue!11836 (value!182546 List!38305)) (IndentationValue!5918 (value!182547 List!38305)) (String!42925) (Int32!5918) (Broken!29591 (value!182548 List!38305)) (Boolean!5919) (Unit!54931) (OperatorValue!5921 (op!5978 List!38305)) (IdentifierValue!11836 (value!182549 List!38305)) (IdentifierValue!11837 (value!182550 List!38305)) (WhitespaceValue!11837 (value!182551 List!38305)) (True!11836) (False!11836) (Broken!29592 (value!182552 List!38305)) (Broken!29593 (value!182553 List!38305)) (True!11837) (RightBrace!5918) (RightBracket!5918) (Colon!5918) (Null!5918) (Comma!5918) (LeftBracket!5918) (False!11837) (LeftBrace!5918) (ImaginaryLiteralValue!5918 (text!41872 List!38305)) (StringLiteralValue!17754 (value!182554 List!38305)) (EOFValue!5918 (value!182555 List!38305)) (IdentValue!5918 (value!182556 List!38305)) (DelimiterValue!11837 (value!182557 List!38305)) (DedentValue!5918 (value!182558 List!38305)) (NewLineValue!5918 (value!182559 List!38305)) (IntegerValue!17754 (value!182560 (_ BitVec 32)) (text!41873 List!38305)) (IntegerValue!17755 (value!182561 Int) (text!41874 List!38305)) (Times!5918) (Or!5918) (Equal!5918) (Minus!5918) (Broken!29594 (value!182562 List!38305)) (And!5918) (Div!5918) (LessEqual!5918) (Mod!5918) (Concat!16366) (Not!5918) (Plus!5918) (SpaceValue!5918 (value!182563 List!38305)) (IntegerValue!17756 (value!182564 Int) (text!41875 List!38305)) (StringLiteralValue!17755 (text!41876 List!38305)) (FloatLiteralValue!11837 (text!41877 List!38305)) (BytesLiteralValue!5918 (value!182565 List!38305)) (CommentValue!11837 (value!182566 List!38305)) (StringLiteralValue!17756 (value!182567 List!38305)) (ErrorTokenValue!5918 (msg!5979 List!38305)) )
))
(declare-datatypes ((List!38306 0))(
  ( (Nil!38182) (Cons!38182 (h!43602 C!21080) (t!294521 List!38306)) )
))
(declare-datatypes ((IArray!23295 0))(
  ( (IArray!23296 (innerList!11705 List!38306)) )
))
(declare-datatypes ((Conc!11645 0))(
  ( (Node!11645 (left!29807 Conc!11645) (right!30137 Conc!11645) (csize!23520 Int) (cheight!11856 Int)) (Leaf!18100 (xs!14847 IArray!23295) (csize!23521 Int)) (Empty!11645) )
))
(declare-datatypes ((BalanceConc!22904 0))(
  ( (BalanceConc!22905 (c!627213 Conc!11645)) )
))
(declare-datatypes ((TokenValueInjection!11264 0))(
  ( (TokenValueInjection!11265 (toValue!7976 Int) (toChars!7835 Int)) )
))
(declare-datatypes ((Rule!11176 0))(
  ( (Rule!11177 (regex!5688 Regex!10447) (tag!6410 String!42923) (isSeparator!5688 Bool) (transformation!5688 TokenValueInjection!11264)) )
))
(declare-fun rule!403 () Rule!11176)

(declare-fun lt!1252882 () C!21080)

(declare-fun contains!7441 (List!38306 C!21080) Bool)

(declare-fun usedCharacters!902 (Regex!10447) List!38306)

(assert (=> b!3624752 (= res!1467185 (contains!7441 (usedCharacters!902 (regex!5688 rule!403)) lt!1252882))))

(declare-fun suffix!1395 () List!38306)

(declare-fun head!7662 (List!38306) C!21080)

(assert (=> b!3624752 (= lt!1252882 (head!7662 suffix!1395))))

(declare-fun b!3624753 () Bool)

(declare-fun res!1467196 () Bool)

(declare-fun e!2243646 () Bool)

(assert (=> b!3624753 (=> (not res!1467196) (not e!2243646))))

(declare-datatypes ((List!38307 0))(
  ( (Nil!38183) (Cons!38183 (h!43603 Rule!11176) (t!294522 List!38307)) )
))
(declare-fun rules!3307 () List!38307)

(declare-fun anOtherTypeRule!33 () Rule!11176)

(declare-fun contains!7442 (List!38307 Rule!11176) Bool)

(assert (=> b!3624753 (= res!1467196 (contains!7442 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2243644 () Bool)

(assert (=> b!3624754 (= e!2243644 (and tp!1106982 tp!1106978))))

(declare-fun b!3624755 () Bool)

(declare-fun res!1467188 () Bool)

(assert (=> b!3624755 (=> res!1467188 e!2243664)))

(declare-fun sepAndNonSepRulesDisjointChars!1858 (List!38307 List!38307) Bool)

(assert (=> b!3624755 (= res!1467188 (not (sepAndNonSepRulesDisjointChars!1858 rules!3307 rules!3307)))))

(declare-fun b!3624756 () Bool)

(declare-fun e!2243645 () Bool)

(declare-fun e!2243656 () Bool)

(assert (=> b!3624756 (= e!2243645 e!2243656)))

(declare-fun res!1467190 () Bool)

(assert (=> b!3624756 (=> (not res!1467190) (not e!2243656))))

(declare-datatypes ((Token!10742 0))(
  ( (Token!10743 (value!182568 TokenValue!5918) (rule!8452 Rule!11176) (size!29127 Int) (originalCharacters!6402 List!38306)) )
))
(declare-datatypes ((tuple2!38056 0))(
  ( (tuple2!38057 (_1!22162 Token!10742) (_2!22162 List!38306)) )
))
(declare-fun lt!1252878 () tuple2!38056)

(declare-fun token!511 () Token!10742)

(assert (=> b!3624756 (= res!1467190 (= (_1!22162 lt!1252878) token!511))))

(declare-datatypes ((Option!8006 0))(
  ( (None!8005) (Some!8005 (v!37779 tuple2!38056)) )
))
(declare-fun lt!1252889 () Option!8006)

(declare-fun get!12460 (Option!8006) tuple2!38056)

(assert (=> b!3624756 (= lt!1252878 (get!12460 lt!1252889))))

(declare-fun e!2243662 () Bool)

(assert (=> b!3624757 (= e!2243662 (and tp!1106990 tp!1106976))))

(declare-fun e!2243663 () Bool)

(assert (=> b!3624758 (= e!2243663 (and tp!1106985 tp!1106984))))

(declare-fun b!3624759 () Bool)

(declare-fun res!1467184 () Bool)

(assert (=> b!3624759 (=> (not res!1467184) (not e!2243656))))

(assert (=> b!3624759 (= res!1467184 (= (rule!8452 token!511) rule!403))))

(declare-fun tp!1106988 () Bool)

(declare-fun e!2243658 () Bool)

(declare-fun b!3624761 () Bool)

(declare-fun inv!51584 (String!42923) Bool)

(declare-fun inv!51587 (TokenValueInjection!11264) Bool)

(assert (=> b!3624761 (= e!2243658 (and tp!1106988 (inv!51584 (tag!6410 (h!43603 rules!3307))) (inv!51587 (transformation!5688 (h!43603 rules!3307))) e!2243662))))

(declare-fun b!3624762 () Bool)

(declare-fun e!2243654 () Bool)

(declare-fun e!2243641 () Bool)

(assert (=> b!3624762 (= e!2243654 e!2243641)))

(declare-fun res!1467201 () Bool)

(assert (=> b!3624762 (=> res!1467201 e!2243641)))

(declare-fun lt!1252875 () List!38306)

(declare-fun lt!1252876 () Option!8006)

(declare-fun lt!1252890 () tuple2!38056)

(declare-fun lt!1252881 () BalanceConc!22904)

(declare-fun apply!9190 (TokenValueInjection!11264 BalanceConc!22904) TokenValue!5918)

(declare-fun size!29128 (BalanceConc!22904) Int)

(assert (=> b!3624762 (= res!1467201 (not (= lt!1252876 (Some!8005 (tuple2!38057 (Token!10743 (apply!9190 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))) lt!1252881) (rule!8452 (_1!22162 lt!1252890)) (size!29128 lt!1252881) lt!1252875) (_2!22162 lt!1252890))))))))

(declare-datatypes ((Unit!54932 0))(
  ( (Unit!54933) )
))
(declare-fun lt!1252888 () Unit!54932)

(declare-fun lemmaCharactersSize!735 (Token!10742) Unit!54932)

(assert (=> b!3624762 (= lt!1252888 (lemmaCharactersSize!735 (_1!22162 lt!1252890)))))

(declare-fun lt!1252895 () Unit!54932)

(declare-fun lemmaEqSameImage!873 (TokenValueInjection!11264 BalanceConc!22904 BalanceConc!22904) Unit!54932)

(declare-fun seqFromList!4237 (List!38306) BalanceConc!22904)

(assert (=> b!3624762 (= lt!1252895 (lemmaEqSameImage!873 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))) lt!1252881 (seqFromList!4237 (originalCharacters!6402 (_1!22162 lt!1252890)))))))

(declare-fun lt!1252885 () Unit!54932)

(declare-fun lemmaSemiInverse!1439 (TokenValueInjection!11264 BalanceConc!22904) Unit!54932)

(assert (=> b!3624762 (= lt!1252885 (lemmaSemiInverse!1439 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))) lt!1252881))))

(declare-fun b!3624763 () Bool)

(declare-fun res!1467187 () Bool)

(assert (=> b!3624763 (=> res!1467187 e!2243664)))

(assert (=> b!3624763 (= res!1467187 (not (contains!7441 (usedCharacters!902 (regex!5688 anOtherTypeRule!33)) lt!1252882)))))

(declare-fun b!3624764 () Bool)

(declare-fun e!2243649 () Bool)

(declare-fun lt!1252893 () Rule!11176)

(assert (=> b!3624764 (= e!2243649 (= (rule!8452 (_1!22162 lt!1252890)) lt!1252893))))

(declare-fun b!3624765 () Bool)

(declare-fun res!1467198 () Bool)

(assert (=> b!3624765 (=> (not res!1467198) (not e!2243656))))

(declare-fun isEmpty!22572 (List!38306) Bool)

(assert (=> b!3624765 (= res!1467198 (isEmpty!22572 (_2!22162 lt!1252878)))))

(declare-fun b!3624766 () Bool)

(declare-fun e!2243647 () Bool)

(declare-fun tp_is_empty!17977 () Bool)

(declare-fun tp!1106979 () Bool)

(assert (=> b!3624766 (= e!2243647 (and tp_is_empty!17977 tp!1106979))))

(declare-fun e!2243660 () Bool)

(declare-fun tp!1106977 () Bool)

(declare-fun b!3624767 () Bool)

(assert (=> b!3624767 (= e!2243660 (and tp!1106977 (inv!51584 (tag!6410 rule!403)) (inv!51587 (transformation!5688 rule!403)) e!2243663))))

(declare-fun e!2243643 () Bool)

(assert (=> b!3624768 (= e!2243643 (and tp!1106989 tp!1106986))))

(declare-fun b!3624769 () Bool)

(declare-fun res!1467192 () Bool)

(assert (=> b!3624769 (=> (not res!1467192) (not e!2243646))))

(assert (=> b!3624769 (= res!1467192 (not (= (isSeparator!5688 anOtherTypeRule!33) (isSeparator!5688 rule!403))))))

(declare-fun b!3624770 () Bool)

(declare-fun e!2243650 () Bool)

(declare-fun tp!1106987 () Bool)

(assert (=> b!3624770 (= e!2243650 (and e!2243658 tp!1106987))))

(declare-fun b!3624771 () Bool)

(declare-fun e!2243642 () Bool)

(declare-fun tp!1106980 () Bool)

(assert (=> b!3624771 (= e!2243642 (and tp!1106980 (inv!51584 (tag!6410 anOtherTypeRule!33)) (inv!51587 (transformation!5688 anOtherTypeRule!33)) e!2243644))))

(declare-fun b!3624772 () Bool)

(declare-fun res!1467197 () Bool)

(assert (=> b!3624772 (=> res!1467197 e!2243654)))

(declare-fun matchR!5016 (Regex!10447 List!38306) Bool)

(assert (=> b!3624772 (= res!1467197 (not (matchR!5016 (regex!5688 (rule!8452 (_1!22162 lt!1252890))) lt!1252875)))))

(declare-fun b!3624773 () Bool)

(declare-fun lt!1252872 () Option!8006)

(declare-fun lt!1252887 () List!38306)

(assert (=> b!3624773 (= e!2243641 (or (not (= lt!1252887 (_2!22162 lt!1252890))) (= lt!1252872 (Some!8005 (tuple2!38057 (_1!22162 lt!1252890) lt!1252887)))))))

(assert (=> b!3624773 (= (_2!22162 lt!1252890) lt!1252887)))

(declare-fun lt!1252894 () List!38306)

(declare-fun lt!1252884 () Unit!54932)

(declare-fun lemmaSamePrefixThenSameSuffix!1398 (List!38306 List!38306 List!38306 List!38306 List!38306) Unit!54932)

(assert (=> b!3624773 (= lt!1252884 (lemmaSamePrefixThenSameSuffix!1398 lt!1252875 (_2!22162 lt!1252890) lt!1252875 lt!1252887 lt!1252894))))

(declare-fun getSuffix!1618 (List!38306 List!38306) List!38306)

(assert (=> b!3624773 (= lt!1252887 (getSuffix!1618 lt!1252894 lt!1252875))))

(declare-fun lt!1252874 () Int)

(declare-fun lt!1252883 () TokenValue!5918)

(assert (=> b!3624773 (= lt!1252872 (Some!8005 (tuple2!38057 (Token!10743 lt!1252883 (rule!8452 (_1!22162 lt!1252890)) lt!1252874 lt!1252875) (_2!22162 lt!1252890))))))

(declare-datatypes ((LexerInterface!5277 0))(
  ( (LexerInterfaceExt!5274 (__x!24054 Int)) (Lexer!5275) )
))
(declare-fun thiss!23823 () LexerInterface!5277)

(declare-fun maxPrefixOneRule!1951 (LexerInterface!5277 Rule!11176 List!38306) Option!8006)

(assert (=> b!3624773 (= lt!1252872 (maxPrefixOneRule!1951 thiss!23823 (rule!8452 (_1!22162 lt!1252890)) lt!1252894))))

(declare-fun size!29129 (List!38306) Int)

(assert (=> b!3624773 (= lt!1252874 (size!29129 lt!1252875))))

(assert (=> b!3624773 (= lt!1252883 (apply!9190 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))) (seqFromList!4237 lt!1252875)))))

(declare-fun lt!1252877 () Unit!54932)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1019 (LexerInterface!5277 List!38307 List!38306 List!38306 List!38306 Rule!11176) Unit!54932)

(assert (=> b!3624773 (= lt!1252877 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1019 thiss!23823 rules!3307 lt!1252875 lt!1252894 (_2!22162 lt!1252890) (rule!8452 (_1!22162 lt!1252890))))))

(declare-fun b!3624774 () Bool)

(declare-fun e!2243659 () Bool)

(assert (=> b!3624774 (= e!2243659 e!2243649)))

(declare-fun res!1467191 () Bool)

(assert (=> b!3624774 (=> (not res!1467191) (not e!2243649))))

(declare-fun list!14100 (BalanceConc!22904) List!38306)

(declare-fun charsOf!3702 (Token!10742) BalanceConc!22904)

(assert (=> b!3624774 (= res!1467191 (matchR!5016 (regex!5688 lt!1252893) (list!14100 (charsOf!3702 (_1!22162 lt!1252890)))))))

(declare-datatypes ((Option!8007 0))(
  ( (None!8006) (Some!8006 (v!37780 Rule!11176)) )
))
(declare-fun lt!1252873 () Option!8007)

(declare-fun get!12461 (Option!8007) Rule!11176)

(assert (=> b!3624774 (= lt!1252893 (get!12461 lt!1252873))))

(declare-fun b!3624775 () Bool)

(declare-fun res!1467186 () Bool)

(assert (=> b!3624775 (=> (not res!1467186) (not e!2243646))))

(declare-fun rulesInvariant!4674 (LexerInterface!5277 List!38307) Bool)

(assert (=> b!3624775 (= res!1467186 (rulesInvariant!4674 thiss!23823 rules!3307))))

(declare-fun b!3624776 () Bool)

(assert (=> b!3624776 (= e!2243646 e!2243645)))

(declare-fun res!1467194 () Bool)

(assert (=> b!3624776 (=> (not res!1467194) (not e!2243645))))

(declare-fun isDefined!6238 (Option!8006) Bool)

(assert (=> b!3624776 (= res!1467194 (isDefined!6238 lt!1252889))))

(declare-fun lt!1252891 () List!38306)

(declare-fun maxPrefix!2811 (LexerInterface!5277 List!38307 List!38306) Option!8006)

(assert (=> b!3624776 (= lt!1252889 (maxPrefix!2811 thiss!23823 rules!3307 lt!1252891))))

(assert (=> b!3624776 (= lt!1252891 (list!14100 (charsOf!3702 token!511)))))

(declare-fun b!3624777 () Bool)

(assert (=> b!3624777 (= e!2243656 (not e!2243648))))

(declare-fun res!1467193 () Bool)

(assert (=> b!3624777 (=> res!1467193 e!2243648)))

(assert (=> b!3624777 (= res!1467193 (not (matchR!5016 (regex!5688 rule!403) lt!1252891)))))

(declare-fun ruleValid!1953 (LexerInterface!5277 Rule!11176) Bool)

(assert (=> b!3624777 (ruleValid!1953 thiss!23823 rule!403)))

(declare-fun lt!1252879 () Unit!54932)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1108 (LexerInterface!5277 Rule!11176 List!38307) Unit!54932)

(assert (=> b!3624777 (= lt!1252879 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1108 thiss!23823 rule!403 rules!3307))))

(declare-fun tp!1106981 () Bool)

(declare-fun e!2243640 () Bool)

(declare-fun e!2243657 () Bool)

(declare-fun b!3624778 () Bool)

(declare-fun inv!21 (TokenValue!5918) Bool)

(assert (=> b!3624778 (= e!2243640 (and (inv!21 (value!182568 token!511)) e!2243657 tp!1106981))))

(declare-fun b!3624779 () Bool)

(declare-fun res!1467189 () Bool)

(assert (=> b!3624779 (=> (not res!1467189) (not e!2243646))))

(assert (=> b!3624779 (= res!1467189 (contains!7442 rules!3307 rule!403))))

(declare-fun b!3624780 () Bool)

(declare-fun res!1467183 () Bool)

(assert (=> b!3624780 (=> res!1467183 e!2243648)))

(assert (=> b!3624780 (= res!1467183 (isEmpty!22572 suffix!1395))))

(declare-fun b!3624760 () Bool)

(assert (=> b!3624760 (= e!2243664 e!2243654)))

(declare-fun res!1467199 () Bool)

(assert (=> b!3624760 (=> res!1467199 e!2243654)))

(declare-fun isPrefix!3051 (List!38306 List!38306) Bool)

(assert (=> b!3624760 (= res!1467199 (not (isPrefix!3051 lt!1252875 lt!1252894)))))

(declare-fun ++!9504 (List!38306 List!38306) List!38306)

(assert (=> b!3624760 (isPrefix!3051 lt!1252875 (++!9504 lt!1252875 (_2!22162 lt!1252890)))))

(declare-fun lt!1252880 () Unit!54932)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1972 (List!38306 List!38306) Unit!54932)

(assert (=> b!3624760 (= lt!1252880 (lemmaConcatTwoListThenFirstIsPrefix!1972 lt!1252875 (_2!22162 lt!1252890)))))

(assert (=> b!3624760 (= lt!1252875 (list!14100 lt!1252881))))

(assert (=> b!3624760 (= lt!1252881 (charsOf!3702 (_1!22162 lt!1252890)))))

(assert (=> b!3624760 e!2243659))

(declare-fun res!1467202 () Bool)

(assert (=> b!3624760 (=> (not res!1467202) (not e!2243659))))

(declare-fun isDefined!6239 (Option!8007) Bool)

(assert (=> b!3624760 (= res!1467202 (isDefined!6239 lt!1252873))))

(declare-fun getRuleFromTag!1294 (LexerInterface!5277 List!38307 String!42923) Option!8007)

(assert (=> b!3624760 (= lt!1252873 (getRuleFromTag!1294 thiss!23823 rules!3307 (tag!6410 (rule!8452 (_1!22162 lt!1252890)))))))

(declare-fun lt!1252896 () Unit!54932)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1294 (LexerInterface!5277 List!38307 List!38306 Token!10742) Unit!54932)

(assert (=> b!3624760 (= lt!1252896 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1294 thiss!23823 rules!3307 lt!1252894 (_1!22162 lt!1252890)))))

(assert (=> b!3624760 (= lt!1252890 (get!12460 lt!1252876))))

(declare-fun lt!1252892 () Unit!54932)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!957 (LexerInterface!5277 List!38307 List!38306 List!38306) Unit!54932)

(assert (=> b!3624760 (= lt!1252892 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!957 thiss!23823 rules!3307 lt!1252891 suffix!1395))))

(assert (=> b!3624760 (= lt!1252876 (maxPrefix!2811 thiss!23823 rules!3307 lt!1252894))))

(assert (=> b!3624760 (isPrefix!3051 lt!1252891 lt!1252894)))

(declare-fun lt!1252886 () Unit!54932)

(assert (=> b!3624760 (= lt!1252886 (lemmaConcatTwoListThenFirstIsPrefix!1972 lt!1252891 suffix!1395))))

(assert (=> b!3624760 (= lt!1252894 (++!9504 lt!1252891 suffix!1395))))

(declare-fun res!1467200 () Bool)

(assert (=> start!337690 (=> (not res!1467200) (not e!2243646))))

(get-info :version)

(assert (=> start!337690 (= res!1467200 ((_ is Lexer!5275) thiss!23823))))

(assert (=> start!337690 e!2243646))

(assert (=> start!337690 e!2243650))

(assert (=> start!337690 e!2243647))

(assert (=> start!337690 true))

(declare-fun inv!51588 (Token!10742) Bool)

(assert (=> start!337690 (and (inv!51588 token!511) e!2243640)))

(assert (=> start!337690 e!2243660))

(assert (=> start!337690 e!2243642))

(declare-fun b!3624781 () Bool)

(declare-fun res!1467195 () Bool)

(assert (=> b!3624781 (=> (not res!1467195) (not e!2243646))))

(declare-fun isEmpty!22573 (List!38307) Bool)

(assert (=> b!3624781 (= res!1467195 (not (isEmpty!22573 rules!3307)))))

(declare-fun b!3624782 () Bool)

(declare-fun tp!1106983 () Bool)

(assert (=> b!3624782 (= e!2243657 (and tp!1106983 (inv!51584 (tag!6410 (rule!8452 token!511))) (inv!51587 (transformation!5688 (rule!8452 token!511))) e!2243643))))

(assert (= (and start!337690 res!1467200) b!3624781))

(assert (= (and b!3624781 res!1467195) b!3624775))

(assert (= (and b!3624775 res!1467186) b!3624779))

(assert (= (and b!3624779 res!1467189) b!3624753))

(assert (= (and b!3624753 res!1467196) b!3624769))

(assert (= (and b!3624769 res!1467192) b!3624776))

(assert (= (and b!3624776 res!1467194) b!3624756))

(assert (= (and b!3624756 res!1467190) b!3624765))

(assert (= (and b!3624765 res!1467198) b!3624759))

(assert (= (and b!3624759 res!1467184) b!3624777))

(assert (= (and b!3624777 (not res!1467193)) b!3624780))

(assert (= (and b!3624780 (not res!1467183)) b!3624752))

(assert (= (and b!3624752 (not res!1467185)) b!3624763))

(assert (= (and b!3624763 (not res!1467187)) b!3624755))

(assert (= (and b!3624755 (not res!1467188)) b!3624760))

(assert (= (and b!3624760 res!1467202) b!3624774))

(assert (= (and b!3624774 res!1467191) b!3624764))

(assert (= (and b!3624760 (not res!1467199)) b!3624772))

(assert (= (and b!3624772 (not res!1467197)) b!3624762))

(assert (= (and b!3624762 (not res!1467201)) b!3624773))

(assert (= b!3624761 b!3624757))

(assert (= b!3624770 b!3624761))

(assert (= (and start!337690 ((_ is Cons!38183) rules!3307)) b!3624770))

(assert (= (and start!337690 ((_ is Cons!38182) suffix!1395)) b!3624766))

(assert (= b!3624782 b!3624768))

(assert (= b!3624778 b!3624782))

(assert (= start!337690 b!3624778))

(assert (= b!3624767 b!3624758))

(assert (= start!337690 b!3624767))

(assert (= b!3624771 b!3624754))

(assert (= start!337690 b!3624771))

(declare-fun m!4125169 () Bool)

(assert (=> b!3624776 m!4125169))

(declare-fun m!4125171 () Bool)

(assert (=> b!3624776 m!4125171))

(declare-fun m!4125173 () Bool)

(assert (=> b!3624776 m!4125173))

(assert (=> b!3624776 m!4125173))

(declare-fun m!4125175 () Bool)

(assert (=> b!3624776 m!4125175))

(declare-fun m!4125177 () Bool)

(assert (=> b!3624779 m!4125177))

(declare-fun m!4125179 () Bool)

(assert (=> b!3624763 m!4125179))

(assert (=> b!3624763 m!4125179))

(declare-fun m!4125181 () Bool)

(assert (=> b!3624763 m!4125181))

(declare-fun m!4125183 () Bool)

(assert (=> b!3624753 m!4125183))

(declare-fun m!4125185 () Bool)

(assert (=> b!3624765 m!4125185))

(declare-fun m!4125187 () Bool)

(assert (=> b!3624777 m!4125187))

(declare-fun m!4125189 () Bool)

(assert (=> b!3624777 m!4125189))

(declare-fun m!4125191 () Bool)

(assert (=> b!3624777 m!4125191))

(declare-fun m!4125193 () Bool)

(assert (=> b!3624767 m!4125193))

(declare-fun m!4125195 () Bool)

(assert (=> b!3624767 m!4125195))

(declare-fun m!4125197 () Bool)

(assert (=> b!3624775 m!4125197))

(declare-fun m!4125199 () Bool)

(assert (=> b!3624772 m!4125199))

(declare-fun m!4125201 () Bool)

(assert (=> b!3624762 m!4125201))

(declare-fun m!4125203 () Bool)

(assert (=> b!3624762 m!4125203))

(declare-fun m!4125205 () Bool)

(assert (=> b!3624762 m!4125205))

(declare-fun m!4125207 () Bool)

(assert (=> b!3624762 m!4125207))

(declare-fun m!4125209 () Bool)

(assert (=> b!3624762 m!4125209))

(assert (=> b!3624762 m!4125207))

(declare-fun m!4125211 () Bool)

(assert (=> b!3624762 m!4125211))

(declare-fun m!4125213 () Bool)

(assert (=> b!3624752 m!4125213))

(assert (=> b!3624752 m!4125213))

(declare-fun m!4125215 () Bool)

(assert (=> b!3624752 m!4125215))

(declare-fun m!4125217 () Bool)

(assert (=> b!3624752 m!4125217))

(declare-fun m!4125219 () Bool)

(assert (=> start!337690 m!4125219))

(declare-fun m!4125221 () Bool)

(assert (=> b!3624781 m!4125221))

(declare-fun m!4125223 () Bool)

(assert (=> b!3624760 m!4125223))

(declare-fun m!4125225 () Bool)

(assert (=> b!3624760 m!4125225))

(declare-fun m!4125227 () Bool)

(assert (=> b!3624760 m!4125227))

(declare-fun m!4125229 () Bool)

(assert (=> b!3624760 m!4125229))

(declare-fun m!4125231 () Bool)

(assert (=> b!3624760 m!4125231))

(declare-fun m!4125233 () Bool)

(assert (=> b!3624760 m!4125233))

(declare-fun m!4125235 () Bool)

(assert (=> b!3624760 m!4125235))

(declare-fun m!4125237 () Bool)

(assert (=> b!3624760 m!4125237))

(declare-fun m!4125239 () Bool)

(assert (=> b!3624760 m!4125239))

(declare-fun m!4125241 () Bool)

(assert (=> b!3624760 m!4125241))

(declare-fun m!4125243 () Bool)

(assert (=> b!3624760 m!4125243))

(declare-fun m!4125245 () Bool)

(assert (=> b!3624760 m!4125245))

(declare-fun m!4125247 () Bool)

(assert (=> b!3624760 m!4125247))

(declare-fun m!4125249 () Bool)

(assert (=> b!3624760 m!4125249))

(assert (=> b!3624760 m!4125231))

(declare-fun m!4125251 () Bool)

(assert (=> b!3624760 m!4125251))

(declare-fun m!4125253 () Bool)

(assert (=> b!3624782 m!4125253))

(declare-fun m!4125255 () Bool)

(assert (=> b!3624782 m!4125255))

(declare-fun m!4125257 () Bool)

(assert (=> b!3624780 m!4125257))

(assert (=> b!3624774 m!4125249))

(assert (=> b!3624774 m!4125249))

(declare-fun m!4125259 () Bool)

(assert (=> b!3624774 m!4125259))

(assert (=> b!3624774 m!4125259))

(declare-fun m!4125261 () Bool)

(assert (=> b!3624774 m!4125261))

(declare-fun m!4125263 () Bool)

(assert (=> b!3624774 m!4125263))

(declare-fun m!4125265 () Bool)

(assert (=> b!3624771 m!4125265))

(declare-fun m!4125267 () Bool)

(assert (=> b!3624771 m!4125267))

(declare-fun m!4125269 () Bool)

(assert (=> b!3624755 m!4125269))

(declare-fun m!4125271 () Bool)

(assert (=> b!3624778 m!4125271))

(declare-fun m!4125273 () Bool)

(assert (=> b!3624773 m!4125273))

(declare-fun m!4125275 () Bool)

(assert (=> b!3624773 m!4125275))

(declare-fun m!4125277 () Bool)

(assert (=> b!3624773 m!4125277))

(declare-fun m!4125279 () Bool)

(assert (=> b!3624773 m!4125279))

(declare-fun m!4125281 () Bool)

(assert (=> b!3624773 m!4125281))

(assert (=> b!3624773 m!4125275))

(declare-fun m!4125283 () Bool)

(assert (=> b!3624773 m!4125283))

(declare-fun m!4125285 () Bool)

(assert (=> b!3624773 m!4125285))

(declare-fun m!4125287 () Bool)

(assert (=> b!3624761 m!4125287))

(declare-fun m!4125289 () Bool)

(assert (=> b!3624761 m!4125289))

(declare-fun m!4125291 () Bool)

(assert (=> b!3624756 m!4125291))

(check-sat (not b!3624761) b_and!265353 (not b!3624756) tp_is_empty!17977 b_and!265357 (not b!3624755) (not b_next!95313) (not b!3624752) (not b!3624778) (not b_next!95319) (not b_next!95317) (not b!3624760) b_and!265363 b_and!265351 (not b_next!95321) b_and!265361 (not b!3624774) (not b!3624782) (not b!3624779) b_and!265365 (not b!3624765) (not b!3624767) (not b_next!95325) (not b!3624776) (not b!3624771) (not b_next!95323) (not start!337690) (not b!3624777) (not b!3624770) (not b_next!95315) (not b!3624781) (not b!3624766) (not b!3624763) b_and!265359 (not b_next!95327) (not b!3624780) (not b!3624772) (not b!3624775) (not b!3624753) (not b!3624773) (not b!3624762) b_and!265355)
(check-sat b_and!265365 (not b_next!95325) (not b_next!95323) (not b_next!95315) b_and!265353 b_and!265357 (not b_next!95313) b_and!265355 (not b_next!95319) (not b_next!95317) b_and!265363 b_and!265351 (not b_next!95321) b_and!265361 b_and!265359 (not b_next!95327))
(get-model)

(declare-fun d!1066311 () Bool)

(assert (=> d!1066311 (= (inv!51584 (tag!6410 anOtherTypeRule!33)) (= (mod (str.len (value!182542 (tag!6410 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3624771 d!1066311))

(declare-fun d!1066315 () Bool)

(declare-fun res!1467252 () Bool)

(declare-fun e!2243711 () Bool)

(assert (=> d!1066315 (=> (not res!1467252) (not e!2243711))))

(declare-fun semiInverseModEq!2413 (Int Int) Bool)

(assert (=> d!1066315 (= res!1467252 (semiInverseModEq!2413 (toChars!7835 (transformation!5688 anOtherTypeRule!33)) (toValue!7976 (transformation!5688 anOtherTypeRule!33))))))

(assert (=> d!1066315 (= (inv!51587 (transformation!5688 anOtherTypeRule!33)) e!2243711)))

(declare-fun b!3624857 () Bool)

(declare-fun equivClasses!2312 (Int Int) Bool)

(assert (=> b!3624857 (= e!2243711 (equivClasses!2312 (toChars!7835 (transformation!5688 anOtherTypeRule!33)) (toValue!7976 (transformation!5688 anOtherTypeRule!33))))))

(assert (= (and d!1066315 res!1467252) b!3624857))

(declare-fun m!4125373 () Bool)

(assert (=> d!1066315 m!4125373))

(declare-fun m!4125375 () Bool)

(assert (=> b!3624857 m!4125375))

(assert (=> b!3624771 d!1066315))

(declare-fun b!3624959 () Bool)

(declare-fun e!2243772 () Bool)

(declare-fun derivativeStep!3164 (Regex!10447 C!21080) Regex!10447)

(declare-fun tail!5613 (List!38306) List!38306)

(assert (=> b!3624959 (= e!2243772 (matchR!5016 (derivativeStep!3164 (regex!5688 (rule!8452 (_1!22162 lt!1252890))) (head!7662 lt!1252875)) (tail!5613 lt!1252875)))))

(declare-fun b!3624960 () Bool)

(declare-fun res!1467317 () Bool)

(declare-fun e!2243770 () Bool)

(assert (=> b!3624960 (=> (not res!1467317) (not e!2243770))))

(assert (=> b!3624960 (= res!1467317 (isEmpty!22572 (tail!5613 lt!1252875)))))

(declare-fun b!3624961 () Bool)

(declare-fun res!1467313 () Bool)

(assert (=> b!3624961 (=> (not res!1467313) (not e!2243770))))

(declare-fun call!262252 () Bool)

(assert (=> b!3624961 (= res!1467313 (not call!262252))))

(declare-fun b!3624963 () Bool)

(declare-fun e!2243767 () Bool)

(declare-fun lt!1252947 () Bool)

(assert (=> b!3624963 (= e!2243767 (= lt!1252947 call!262252))))

(declare-fun b!3624964 () Bool)

(declare-fun e!2243769 () Bool)

(assert (=> b!3624964 (= e!2243767 e!2243769)))

(declare-fun c!627251 () Bool)

(assert (=> b!3624964 (= c!627251 ((_ is EmptyLang!10447) (regex!5688 (rule!8452 (_1!22162 lt!1252890)))))))

(declare-fun b!3624965 () Bool)

(assert (=> b!3624965 (= e!2243770 (= (head!7662 lt!1252875) (c!627212 (regex!5688 (rule!8452 (_1!22162 lt!1252890))))))))

(declare-fun b!3624966 () Bool)

(declare-fun e!2243766 () Bool)

(assert (=> b!3624966 (= e!2243766 (not (= (head!7662 lt!1252875) (c!627212 (regex!5688 (rule!8452 (_1!22162 lt!1252890)))))))))

(declare-fun b!3624967 () Bool)

(declare-fun res!1467312 () Bool)

(declare-fun e!2243768 () Bool)

(assert (=> b!3624967 (=> res!1467312 e!2243768)))

(assert (=> b!3624967 (= res!1467312 (not ((_ is ElementMatch!10447) (regex!5688 (rule!8452 (_1!22162 lt!1252890))))))))

(assert (=> b!3624967 (= e!2243769 e!2243768)))

(declare-fun b!3624968 () Bool)

(declare-fun e!2243771 () Bool)

(assert (=> b!3624968 (= e!2243768 e!2243771)))

(declare-fun res!1467314 () Bool)

(assert (=> b!3624968 (=> (not res!1467314) (not e!2243771))))

(assert (=> b!3624968 (= res!1467314 (not lt!1252947))))

(declare-fun b!3624969 () Bool)

(assert (=> b!3624969 (= e!2243769 (not lt!1252947))))

(declare-fun b!3624962 () Bool)

(declare-fun res!1467311 () Bool)

(assert (=> b!3624962 (=> res!1467311 e!2243768)))

(assert (=> b!3624962 (= res!1467311 e!2243770)))

(declare-fun res!1467316 () Bool)

(assert (=> b!3624962 (=> (not res!1467316) (not e!2243770))))

(assert (=> b!3624962 (= res!1467316 lt!1252947)))

(declare-fun d!1066319 () Bool)

(assert (=> d!1066319 e!2243767))

(declare-fun c!627250 () Bool)

(assert (=> d!1066319 (= c!627250 ((_ is EmptyExpr!10447) (regex!5688 (rule!8452 (_1!22162 lt!1252890)))))))

(assert (=> d!1066319 (= lt!1252947 e!2243772)))

(declare-fun c!627252 () Bool)

(assert (=> d!1066319 (= c!627252 (isEmpty!22572 lt!1252875))))

(declare-fun validRegex!4777 (Regex!10447) Bool)

(assert (=> d!1066319 (validRegex!4777 (regex!5688 (rule!8452 (_1!22162 lt!1252890))))))

(assert (=> d!1066319 (= (matchR!5016 (regex!5688 (rule!8452 (_1!22162 lt!1252890))) lt!1252875) lt!1252947)))

(declare-fun bm!262247 () Bool)

(assert (=> bm!262247 (= call!262252 (isEmpty!22572 lt!1252875))))

(declare-fun b!3624970 () Bool)

(assert (=> b!3624970 (= e!2243771 e!2243766)))

(declare-fun res!1467315 () Bool)

(assert (=> b!3624970 (=> res!1467315 e!2243766)))

(assert (=> b!3624970 (= res!1467315 call!262252)))

(declare-fun b!3624971 () Bool)

(declare-fun nullable!3615 (Regex!10447) Bool)

(assert (=> b!3624971 (= e!2243772 (nullable!3615 (regex!5688 (rule!8452 (_1!22162 lt!1252890)))))))

(declare-fun b!3624972 () Bool)

(declare-fun res!1467318 () Bool)

(assert (=> b!3624972 (=> res!1467318 e!2243766)))

(assert (=> b!3624972 (= res!1467318 (not (isEmpty!22572 (tail!5613 lt!1252875))))))

(assert (= (and d!1066319 c!627252) b!3624971))

(assert (= (and d!1066319 (not c!627252)) b!3624959))

(assert (= (and d!1066319 c!627250) b!3624963))

(assert (= (and d!1066319 (not c!627250)) b!3624964))

(assert (= (and b!3624964 c!627251) b!3624969))

(assert (= (and b!3624964 (not c!627251)) b!3624967))

(assert (= (and b!3624967 (not res!1467312)) b!3624962))

(assert (= (and b!3624962 res!1467316) b!3624961))

(assert (= (and b!3624961 res!1467313) b!3624960))

(assert (= (and b!3624960 res!1467317) b!3624965))

(assert (= (and b!3624962 (not res!1467311)) b!3624968))

(assert (= (and b!3624968 res!1467314) b!3624970))

(assert (= (and b!3624970 (not res!1467315)) b!3624972))

(assert (= (and b!3624972 (not res!1467318)) b!3624966))

(assert (= (or b!3624963 b!3624961 b!3624970) bm!262247))

(declare-fun m!4125427 () Bool)

(assert (=> b!3624959 m!4125427))

(assert (=> b!3624959 m!4125427))

(declare-fun m!4125429 () Bool)

(assert (=> b!3624959 m!4125429))

(declare-fun m!4125431 () Bool)

(assert (=> b!3624959 m!4125431))

(assert (=> b!3624959 m!4125429))

(assert (=> b!3624959 m!4125431))

(declare-fun m!4125433 () Bool)

(assert (=> b!3624959 m!4125433))

(declare-fun m!4125435 () Bool)

(assert (=> b!3624971 m!4125435))

(assert (=> b!3624965 m!4125427))

(declare-fun m!4125437 () Bool)

(assert (=> bm!262247 m!4125437))

(assert (=> b!3624960 m!4125431))

(assert (=> b!3624960 m!4125431))

(declare-fun m!4125439 () Bool)

(assert (=> b!3624960 m!4125439))

(assert (=> b!3624972 m!4125431))

(assert (=> b!3624972 m!4125431))

(assert (=> b!3624972 m!4125439))

(assert (=> d!1066319 m!4125437))

(declare-fun m!4125441 () Bool)

(assert (=> d!1066319 m!4125441))

(assert (=> b!3624966 m!4125427))

(assert (=> b!3624772 d!1066319))

(declare-fun d!1066343 () Bool)

(declare-fun res!1467339 () Bool)

(declare-fun e!2243789 () Bool)

(assert (=> d!1066343 (=> (not res!1467339) (not e!2243789))))

(assert (=> d!1066343 (= res!1467339 (not (isEmpty!22572 (originalCharacters!6402 token!511))))))

(assert (=> d!1066343 (= (inv!51588 token!511) e!2243789)))

(declare-fun b!3625001 () Bool)

(declare-fun res!1467340 () Bool)

(assert (=> b!3625001 (=> (not res!1467340) (not e!2243789))))

(declare-fun dynLambda!16526 (Int TokenValue!5918) BalanceConc!22904)

(assert (=> b!3625001 (= res!1467340 (= (originalCharacters!6402 token!511) (list!14100 (dynLambda!16526 (toChars!7835 (transformation!5688 (rule!8452 token!511))) (value!182568 token!511)))))))

(declare-fun b!3625002 () Bool)

(assert (=> b!3625002 (= e!2243789 (= (size!29127 token!511) (size!29129 (originalCharacters!6402 token!511))))))

(assert (= (and d!1066343 res!1467339) b!3625001))

(assert (= (and b!3625001 res!1467340) b!3625002))

(declare-fun b_lambda!107239 () Bool)

(assert (=> (not b_lambda!107239) (not b!3625001)))

(declare-fun tb!207993 () Bool)

(declare-fun t!294540 () Bool)

(assert (=> (and b!3624754 (= (toChars!7835 (transformation!5688 anOtherTypeRule!33)) (toChars!7835 (transformation!5688 (rule!8452 token!511)))) t!294540) tb!207993))

(declare-fun b!3625011 () Bool)

(declare-fun e!2243794 () Bool)

(declare-fun tp!1106996 () Bool)

(declare-fun inv!51591 (Conc!11645) Bool)

(assert (=> b!3625011 (= e!2243794 (and (inv!51591 (c!627213 (dynLambda!16526 (toChars!7835 (transformation!5688 (rule!8452 token!511))) (value!182568 token!511)))) tp!1106996))))

(declare-fun result!253418 () Bool)

(declare-fun inv!51592 (BalanceConc!22904) Bool)

(assert (=> tb!207993 (= result!253418 (and (inv!51592 (dynLambda!16526 (toChars!7835 (transformation!5688 (rule!8452 token!511))) (value!182568 token!511))) e!2243794))))

(assert (= tb!207993 b!3625011))

(declare-fun m!4125479 () Bool)

(assert (=> b!3625011 m!4125479))

(declare-fun m!4125481 () Bool)

(assert (=> tb!207993 m!4125481))

(assert (=> b!3625001 t!294540))

(declare-fun b_and!265383 () Bool)

(assert (= b_and!265353 (and (=> t!294540 result!253418) b_and!265383)))

(declare-fun t!294542 () Bool)

(declare-fun tb!207995 () Bool)

(assert (=> (and b!3624768 (= (toChars!7835 (transformation!5688 (rule!8452 token!511))) (toChars!7835 (transformation!5688 (rule!8452 token!511)))) t!294542) tb!207995))

(declare-fun result!253422 () Bool)

(assert (= result!253422 result!253418))

(assert (=> b!3625001 t!294542))

(declare-fun b_and!265385 () Bool)

(assert (= b_and!265357 (and (=> t!294542 result!253422) b_and!265385)))

(declare-fun t!294544 () Bool)

(declare-fun tb!207997 () Bool)

(assert (=> (and b!3624758 (= (toChars!7835 (transformation!5688 rule!403)) (toChars!7835 (transformation!5688 (rule!8452 token!511)))) t!294544) tb!207997))

(declare-fun result!253424 () Bool)

(assert (= result!253424 result!253418))

(assert (=> b!3625001 t!294544))

(declare-fun b_and!265387 () Bool)

(assert (= b_and!265361 (and (=> t!294544 result!253424) b_and!265387)))

(declare-fun tb!207999 () Bool)

(declare-fun t!294546 () Bool)

(assert (=> (and b!3624757 (= (toChars!7835 (transformation!5688 (h!43603 rules!3307))) (toChars!7835 (transformation!5688 (rule!8452 token!511)))) t!294546) tb!207999))

(declare-fun result!253426 () Bool)

(assert (= result!253426 result!253418))

(assert (=> b!3625001 t!294546))

(declare-fun b_and!265389 () Bool)

(assert (= b_and!265365 (and (=> t!294546 result!253426) b_and!265389)))

(declare-fun m!4125483 () Bool)

(assert (=> d!1066343 m!4125483))

(declare-fun m!4125485 () Bool)

(assert (=> b!3625001 m!4125485))

(assert (=> b!3625001 m!4125485))

(declare-fun m!4125489 () Bool)

(assert (=> b!3625001 m!4125489))

(declare-fun m!4125493 () Bool)

(assert (=> b!3625002 m!4125493))

(assert (=> start!337690 d!1066343))

(declare-fun d!1066357 () Bool)

(declare-fun lt!1252960 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5468 (List!38306) (InoxSet C!21080))

(assert (=> d!1066357 (= lt!1252960 (select (content!5468 (usedCharacters!902 (regex!5688 rule!403))) lt!1252882))))

(declare-fun e!2243800 () Bool)

(assert (=> d!1066357 (= lt!1252960 e!2243800)))

(declare-fun res!1467351 () Bool)

(assert (=> d!1066357 (=> (not res!1467351) (not e!2243800))))

(assert (=> d!1066357 (= res!1467351 ((_ is Cons!38182) (usedCharacters!902 (regex!5688 rule!403))))))

(assert (=> d!1066357 (= (contains!7441 (usedCharacters!902 (regex!5688 rule!403)) lt!1252882) lt!1252960)))

(declare-fun b!3625018 () Bool)

(declare-fun e!2243801 () Bool)

(assert (=> b!3625018 (= e!2243800 e!2243801)))

(declare-fun res!1467352 () Bool)

(assert (=> b!3625018 (=> res!1467352 e!2243801)))

(assert (=> b!3625018 (= res!1467352 (= (h!43602 (usedCharacters!902 (regex!5688 rule!403))) lt!1252882))))

(declare-fun b!3625019 () Bool)

(assert (=> b!3625019 (= e!2243801 (contains!7441 (t!294521 (usedCharacters!902 (regex!5688 rule!403))) lt!1252882))))

(assert (= (and d!1066357 res!1467351) b!3625018))

(assert (= (and b!3625018 (not res!1467352)) b!3625019))

(assert (=> d!1066357 m!4125213))

(declare-fun m!4125499 () Bool)

(assert (=> d!1066357 m!4125499))

(declare-fun m!4125501 () Bool)

(assert (=> d!1066357 m!4125501))

(declare-fun m!4125503 () Bool)

(assert (=> b!3625019 m!4125503))

(assert (=> b!3624752 d!1066357))

(declare-fun bm!262256 () Bool)

(declare-fun call!262261 () List!38306)

(declare-fun c!627265 () Bool)

(assert (=> bm!262256 (= call!262261 (usedCharacters!902 (ite c!627265 (regOne!21407 (regex!5688 rule!403)) (regTwo!21406 (regex!5688 rule!403)))))))

(declare-fun bm!262257 () Bool)

(declare-fun call!262264 () List!38306)

(declare-fun call!262263 () List!38306)

(assert (=> bm!262257 (= call!262264 call!262263)))

(declare-fun b!3625036 () Bool)

(declare-fun e!2243812 () List!38306)

(declare-fun e!2243811 () List!38306)

(assert (=> b!3625036 (= e!2243812 e!2243811)))

(assert (=> b!3625036 (= c!627265 ((_ is Union!10447) (regex!5688 rule!403)))))

(declare-fun b!3625037 () Bool)

(declare-fun c!627266 () Bool)

(assert (=> b!3625037 (= c!627266 ((_ is Star!10447) (regex!5688 rule!403)))))

(declare-fun e!2243810 () List!38306)

(assert (=> b!3625037 (= e!2243810 e!2243812)))

(declare-fun b!3625038 () Bool)

(assert (=> b!3625038 (= e!2243812 call!262263)))

(declare-fun b!3625039 () Bool)

(declare-fun e!2243813 () List!38306)

(assert (=> b!3625039 (= e!2243813 e!2243810)))

(declare-fun c!627268 () Bool)

(assert (=> b!3625039 (= c!627268 ((_ is ElementMatch!10447) (regex!5688 rule!403)))))

(declare-fun b!3625040 () Bool)

(assert (=> b!3625040 (= e!2243810 (Cons!38182 (c!627212 (regex!5688 rule!403)) Nil!38182))))

(declare-fun d!1066361 () Bool)

(declare-fun c!627267 () Bool)

(assert (=> d!1066361 (= c!627267 (or ((_ is EmptyExpr!10447) (regex!5688 rule!403)) ((_ is EmptyLang!10447) (regex!5688 rule!403))))))

(assert (=> d!1066361 (= (usedCharacters!902 (regex!5688 rule!403)) e!2243813)))

(declare-fun b!3625041 () Bool)

(declare-fun call!262262 () List!38306)

(assert (=> b!3625041 (= e!2243811 call!262262)))

(declare-fun b!3625042 () Bool)

(assert (=> b!3625042 (= e!2243813 Nil!38182)))

(declare-fun bm!262258 () Bool)

(assert (=> bm!262258 (= call!262262 (++!9504 (ite c!627265 call!262261 call!262264) (ite c!627265 call!262264 call!262261)))))

(declare-fun b!3625043 () Bool)

(assert (=> b!3625043 (= e!2243811 call!262262)))

(declare-fun bm!262259 () Bool)

(assert (=> bm!262259 (= call!262263 (usedCharacters!902 (ite c!627266 (reg!10776 (regex!5688 rule!403)) (ite c!627265 (regTwo!21407 (regex!5688 rule!403)) (regOne!21406 (regex!5688 rule!403))))))))

(assert (= (and d!1066361 c!627267) b!3625042))

(assert (= (and d!1066361 (not c!627267)) b!3625039))

(assert (= (and b!3625039 c!627268) b!3625040))

(assert (= (and b!3625039 (not c!627268)) b!3625037))

(assert (= (and b!3625037 c!627266) b!3625038))

(assert (= (and b!3625037 (not c!627266)) b!3625036))

(assert (= (and b!3625036 c!627265) b!3625043))

(assert (= (and b!3625036 (not c!627265)) b!3625041))

(assert (= (or b!3625043 b!3625041) bm!262256))

(assert (= (or b!3625043 b!3625041) bm!262257))

(assert (= (or b!3625043 b!3625041) bm!262258))

(assert (= (or b!3625038 bm!262257) bm!262259))

(declare-fun m!4125505 () Bool)

(assert (=> bm!262256 m!4125505))

(declare-fun m!4125507 () Bool)

(assert (=> bm!262258 m!4125507))

(declare-fun m!4125509 () Bool)

(assert (=> bm!262259 m!4125509))

(assert (=> b!3624752 d!1066361))

(declare-fun d!1066363 () Bool)

(assert (=> d!1066363 (= (head!7662 suffix!1395) (h!43602 suffix!1395))))

(assert (=> b!3624752 d!1066363))

(declare-fun b!3625062 () Bool)

(declare-fun e!2243822 () Option!8006)

(declare-datatypes ((tuple2!38062 0))(
  ( (tuple2!38063 (_1!22165 List!38306) (_2!22165 List!38306)) )
))
(declare-fun lt!1252974 () tuple2!38062)

(assert (=> b!3625062 (= e!2243822 (Some!8005 (tuple2!38057 (Token!10743 (apply!9190 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))) (seqFromList!4237 (_1!22165 lt!1252974))) (rule!8452 (_1!22162 lt!1252890)) (size!29128 (seqFromList!4237 (_1!22165 lt!1252974))) (_1!22165 lt!1252974)) (_2!22165 lt!1252974))))))

(declare-fun lt!1252972 () Unit!54932)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!992 (Regex!10447 List!38306) Unit!54932)

(assert (=> b!3625062 (= lt!1252972 (longestMatchIsAcceptedByMatchOrIsEmpty!992 (regex!5688 (rule!8452 (_1!22162 lt!1252890))) lt!1252894))))

(declare-fun res!1467369 () Bool)

(declare-fun findLongestMatchInner!1019 (Regex!10447 List!38306 Int List!38306 List!38306 Int) tuple2!38062)

(assert (=> b!3625062 (= res!1467369 (isEmpty!22572 (_1!22165 (findLongestMatchInner!1019 (regex!5688 (rule!8452 (_1!22162 lt!1252890))) Nil!38182 (size!29129 Nil!38182) lt!1252894 lt!1252894 (size!29129 lt!1252894)))))))

(declare-fun e!2243825 () Bool)

(assert (=> b!3625062 (=> res!1467369 e!2243825)))

(assert (=> b!3625062 e!2243825))

(declare-fun lt!1252971 () Unit!54932)

(assert (=> b!3625062 (= lt!1252971 lt!1252972)))

(declare-fun lt!1252973 () Unit!54932)

(assert (=> b!3625062 (= lt!1252973 (lemmaSemiInverse!1439 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))) (seqFromList!4237 (_1!22165 lt!1252974))))))

(declare-fun b!3625063 () Bool)

(declare-fun res!1467373 () Bool)

(declare-fun e!2243824 () Bool)

(assert (=> b!3625063 (=> (not res!1467373) (not e!2243824))))

(declare-fun lt!1252975 () Option!8006)

(assert (=> b!3625063 (= res!1467373 (< (size!29129 (_2!22162 (get!12460 lt!1252975))) (size!29129 lt!1252894)))))

(declare-fun d!1066365 () Bool)

(declare-fun e!2243823 () Bool)

(assert (=> d!1066365 e!2243823))

(declare-fun res!1467372 () Bool)

(assert (=> d!1066365 (=> res!1467372 e!2243823)))

(declare-fun isEmpty!22576 (Option!8006) Bool)

(assert (=> d!1066365 (= res!1467372 (isEmpty!22576 lt!1252975))))

(assert (=> d!1066365 (= lt!1252975 e!2243822)))

(declare-fun c!627271 () Bool)

(assert (=> d!1066365 (= c!627271 (isEmpty!22572 (_1!22165 lt!1252974)))))

(declare-fun findLongestMatch!934 (Regex!10447 List!38306) tuple2!38062)

(assert (=> d!1066365 (= lt!1252974 (findLongestMatch!934 (regex!5688 (rule!8452 (_1!22162 lt!1252890))) lt!1252894))))

(assert (=> d!1066365 (ruleValid!1953 thiss!23823 (rule!8452 (_1!22162 lt!1252890)))))

(assert (=> d!1066365 (= (maxPrefixOneRule!1951 thiss!23823 (rule!8452 (_1!22162 lt!1252890)) lt!1252894) lt!1252975)))

(declare-fun b!3625064 () Bool)

(assert (=> b!3625064 (= e!2243825 (matchR!5016 (regex!5688 (rule!8452 (_1!22162 lt!1252890))) (_1!22165 (findLongestMatchInner!1019 (regex!5688 (rule!8452 (_1!22162 lt!1252890))) Nil!38182 (size!29129 Nil!38182) lt!1252894 lt!1252894 (size!29129 lt!1252894)))))))

(declare-fun b!3625065 () Bool)

(assert (=> b!3625065 (= e!2243822 None!8005)))

(declare-fun b!3625066 () Bool)

(assert (=> b!3625066 (= e!2243823 e!2243824)))

(declare-fun res!1467367 () Bool)

(assert (=> b!3625066 (=> (not res!1467367) (not e!2243824))))

(assert (=> b!3625066 (= res!1467367 (matchR!5016 (regex!5688 (rule!8452 (_1!22162 lt!1252890))) (list!14100 (charsOf!3702 (_1!22162 (get!12460 lt!1252975))))))))

(declare-fun b!3625067 () Bool)

(declare-fun res!1467371 () Bool)

(assert (=> b!3625067 (=> (not res!1467371) (not e!2243824))))

(assert (=> b!3625067 (= res!1467371 (= (++!9504 (list!14100 (charsOf!3702 (_1!22162 (get!12460 lt!1252975)))) (_2!22162 (get!12460 lt!1252975))) lt!1252894))))

(declare-fun b!3625068 () Bool)

(declare-fun res!1467370 () Bool)

(assert (=> b!3625068 (=> (not res!1467370) (not e!2243824))))

(assert (=> b!3625068 (= res!1467370 (= (value!182568 (_1!22162 (get!12460 lt!1252975))) (apply!9190 (transformation!5688 (rule!8452 (_1!22162 (get!12460 lt!1252975)))) (seqFromList!4237 (originalCharacters!6402 (_1!22162 (get!12460 lt!1252975)))))))))

(declare-fun b!3625069 () Bool)

(declare-fun res!1467368 () Bool)

(assert (=> b!3625069 (=> (not res!1467368) (not e!2243824))))

(assert (=> b!3625069 (= res!1467368 (= (rule!8452 (_1!22162 (get!12460 lt!1252975))) (rule!8452 (_1!22162 lt!1252890))))))

(declare-fun b!3625070 () Bool)

(assert (=> b!3625070 (= e!2243824 (= (size!29127 (_1!22162 (get!12460 lt!1252975))) (size!29129 (originalCharacters!6402 (_1!22162 (get!12460 lt!1252975))))))))

(assert (= (and d!1066365 c!627271) b!3625065))

(assert (= (and d!1066365 (not c!627271)) b!3625062))

(assert (= (and b!3625062 (not res!1467369)) b!3625064))

(assert (= (and d!1066365 (not res!1467372)) b!3625066))

(assert (= (and b!3625066 res!1467367) b!3625067))

(assert (= (and b!3625067 res!1467371) b!3625063))

(assert (= (and b!3625063 res!1467373) b!3625069))

(assert (= (and b!3625069 res!1467368) b!3625068))

(assert (= (and b!3625068 res!1467370) b!3625070))

(declare-fun m!4125511 () Bool)

(assert (=> b!3625063 m!4125511))

(declare-fun m!4125513 () Bool)

(assert (=> b!3625063 m!4125513))

(declare-fun m!4125515 () Bool)

(assert (=> b!3625063 m!4125515))

(assert (=> b!3625067 m!4125511))

(declare-fun m!4125517 () Bool)

(assert (=> b!3625067 m!4125517))

(assert (=> b!3625067 m!4125517))

(declare-fun m!4125519 () Bool)

(assert (=> b!3625067 m!4125519))

(assert (=> b!3625067 m!4125519))

(declare-fun m!4125521 () Bool)

(assert (=> b!3625067 m!4125521))

(assert (=> b!3625066 m!4125511))

(assert (=> b!3625066 m!4125517))

(assert (=> b!3625066 m!4125517))

(assert (=> b!3625066 m!4125519))

(assert (=> b!3625066 m!4125519))

(declare-fun m!4125523 () Bool)

(assert (=> b!3625066 m!4125523))

(declare-fun m!4125525 () Bool)

(assert (=> b!3625064 m!4125525))

(assert (=> b!3625064 m!4125515))

(assert (=> b!3625064 m!4125525))

(assert (=> b!3625064 m!4125515))

(declare-fun m!4125527 () Bool)

(assert (=> b!3625064 m!4125527))

(declare-fun m!4125529 () Bool)

(assert (=> b!3625064 m!4125529))

(assert (=> b!3625069 m!4125511))

(declare-fun m!4125531 () Bool)

(assert (=> d!1066365 m!4125531))

(declare-fun m!4125533 () Bool)

(assert (=> d!1066365 m!4125533))

(declare-fun m!4125535 () Bool)

(assert (=> d!1066365 m!4125535))

(declare-fun m!4125537 () Bool)

(assert (=> d!1066365 m!4125537))

(assert (=> b!3625068 m!4125511))

(declare-fun m!4125539 () Bool)

(assert (=> b!3625068 m!4125539))

(assert (=> b!3625068 m!4125539))

(declare-fun m!4125541 () Bool)

(assert (=> b!3625068 m!4125541))

(declare-fun m!4125543 () Bool)

(assert (=> b!3625062 m!4125543))

(declare-fun m!4125545 () Bool)

(assert (=> b!3625062 m!4125545))

(assert (=> b!3625062 m!4125543))

(assert (=> b!3625062 m!4125525))

(assert (=> b!3625062 m!4125515))

(assert (=> b!3625062 m!4125527))

(declare-fun m!4125547 () Bool)

(assert (=> b!3625062 m!4125547))

(assert (=> b!3625062 m!4125543))

(declare-fun m!4125549 () Bool)

(assert (=> b!3625062 m!4125549))

(assert (=> b!3625062 m!4125543))

(declare-fun m!4125551 () Bool)

(assert (=> b!3625062 m!4125551))

(assert (=> b!3625062 m!4125515))

(assert (=> b!3625062 m!4125525))

(declare-fun m!4125553 () Bool)

(assert (=> b!3625062 m!4125553))

(assert (=> b!3625070 m!4125511))

(declare-fun m!4125555 () Bool)

(assert (=> b!3625070 m!4125555))

(assert (=> b!3624773 d!1066365))

(declare-fun d!1066367 () Bool)

(declare-fun lt!1253012 () Int)

(assert (=> d!1066367 (>= lt!1253012 0)))

(declare-fun e!2243832 () Int)

(assert (=> d!1066367 (= lt!1253012 e!2243832)))

(declare-fun c!627276 () Bool)

(assert (=> d!1066367 (= c!627276 ((_ is Nil!38182) lt!1252875))))

(assert (=> d!1066367 (= (size!29129 lt!1252875) lt!1253012)))

(declare-fun b!3625083 () Bool)

(assert (=> b!3625083 (= e!2243832 0)))

(declare-fun b!3625084 () Bool)

(assert (=> b!3625084 (= e!2243832 (+ 1 (size!29129 (t!294521 lt!1252875))))))

(assert (= (and d!1066367 c!627276) b!3625083))

(assert (= (and d!1066367 (not c!627276)) b!3625084))

(declare-fun m!4125557 () Bool)

(assert (=> b!3625084 m!4125557))

(assert (=> b!3624773 d!1066367))

(declare-fun d!1066369 () Bool)

(assert (=> d!1066369 (= (_2!22162 lt!1252890) lt!1252887)))

(declare-fun lt!1253015 () Unit!54932)

(declare-fun choose!21278 (List!38306 List!38306 List!38306 List!38306 List!38306) Unit!54932)

(assert (=> d!1066369 (= lt!1253015 (choose!21278 lt!1252875 (_2!22162 lt!1252890) lt!1252875 lt!1252887 lt!1252894))))

(assert (=> d!1066369 (isPrefix!3051 lt!1252875 lt!1252894)))

(assert (=> d!1066369 (= (lemmaSamePrefixThenSameSuffix!1398 lt!1252875 (_2!22162 lt!1252890) lt!1252875 lt!1252887 lt!1252894) lt!1253015)))

(declare-fun bs!571398 () Bool)

(assert (= bs!571398 d!1066369))

(declare-fun m!4125559 () Bool)

(assert (=> bs!571398 m!4125559))

(assert (=> bs!571398 m!4125223))

(assert (=> b!3624773 d!1066369))

(declare-fun d!1066371 () Bool)

(declare-fun lt!1253035 () List!38306)

(assert (=> d!1066371 (= (++!9504 lt!1252875 lt!1253035) lt!1252894)))

(declare-fun e!2243837 () List!38306)

(assert (=> d!1066371 (= lt!1253035 e!2243837)))

(declare-fun c!627280 () Bool)

(assert (=> d!1066371 (= c!627280 ((_ is Cons!38182) lt!1252875))))

(assert (=> d!1066371 (>= (size!29129 lt!1252894) (size!29129 lt!1252875))))

(assert (=> d!1066371 (= (getSuffix!1618 lt!1252894 lt!1252875) lt!1253035)))

(declare-fun b!3625093 () Bool)

(assert (=> b!3625093 (= e!2243837 (getSuffix!1618 (tail!5613 lt!1252894) (t!294521 lt!1252875)))))

(declare-fun b!3625094 () Bool)

(assert (=> b!3625094 (= e!2243837 lt!1252894)))

(assert (= (and d!1066371 c!627280) b!3625093))

(assert (= (and d!1066371 (not c!627280)) b!3625094))

(declare-fun m!4125611 () Bool)

(assert (=> d!1066371 m!4125611))

(assert (=> d!1066371 m!4125515))

(assert (=> d!1066371 m!4125283))

(declare-fun m!4125613 () Bool)

(assert (=> b!3625093 m!4125613))

(assert (=> b!3625093 m!4125613))

(declare-fun m!4125615 () Bool)

(assert (=> b!3625093 m!4125615))

(assert (=> b!3624773 d!1066371))

(declare-fun d!1066375 () Bool)

(declare-fun fromListB!1951 (List!38306) BalanceConc!22904)

(assert (=> d!1066375 (= (seqFromList!4237 lt!1252875) (fromListB!1951 lt!1252875))))

(declare-fun bs!571399 () Bool)

(assert (= bs!571399 d!1066375))

(declare-fun m!4125617 () Bool)

(assert (=> bs!571399 m!4125617))

(assert (=> b!3624773 d!1066375))

(declare-fun d!1066377 () Bool)

(assert (=> d!1066377 (= (maxPrefixOneRule!1951 thiss!23823 (rule!8452 (_1!22162 lt!1252890)) lt!1252894) (Some!8005 (tuple2!38057 (Token!10743 (apply!9190 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))) (seqFromList!4237 lt!1252875)) (rule!8452 (_1!22162 lt!1252890)) (size!29129 lt!1252875) lt!1252875) (_2!22162 lt!1252890))))))

(declare-fun lt!1253038 () Unit!54932)

(declare-fun choose!21279 (LexerInterface!5277 List!38307 List!38306 List!38306 List!38306 Rule!11176) Unit!54932)

(assert (=> d!1066377 (= lt!1253038 (choose!21279 thiss!23823 rules!3307 lt!1252875 lt!1252894 (_2!22162 lt!1252890) (rule!8452 (_1!22162 lt!1252890))))))

(assert (=> d!1066377 (not (isEmpty!22573 rules!3307))))

(assert (=> d!1066377 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1019 thiss!23823 rules!3307 lt!1252875 lt!1252894 (_2!22162 lt!1252890) (rule!8452 (_1!22162 lt!1252890))) lt!1253038)))

(declare-fun bs!571400 () Bool)

(assert (= bs!571400 d!1066377))

(assert (=> bs!571400 m!4125275))

(assert (=> bs!571400 m!4125277))

(assert (=> bs!571400 m!4125283))

(declare-fun m!4125619 () Bool)

(assert (=> bs!571400 m!4125619))

(assert (=> bs!571400 m!4125275))

(assert (=> bs!571400 m!4125273))

(assert (=> bs!571400 m!4125221))

(assert (=> b!3624773 d!1066377))

(declare-fun d!1066379 () Bool)

(declare-fun dynLambda!16527 (Int BalanceConc!22904) TokenValue!5918)

(assert (=> d!1066379 (= (apply!9190 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))) (seqFromList!4237 lt!1252875)) (dynLambda!16527 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) (seqFromList!4237 lt!1252875)))))

(declare-fun b_lambda!107241 () Bool)

(assert (=> (not b_lambda!107241) (not d!1066379)))

(declare-fun tb!208001 () Bool)

(declare-fun t!294548 () Bool)

(assert (=> (and b!3624754 (= (toValue!7976 (transformation!5688 anOtherTypeRule!33)) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294548) tb!208001))

(declare-fun result!253428 () Bool)

(assert (=> tb!208001 (= result!253428 (inv!21 (dynLambda!16527 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) (seqFromList!4237 lt!1252875))))))

(declare-fun m!4125621 () Bool)

(assert (=> tb!208001 m!4125621))

(assert (=> d!1066379 t!294548))

(declare-fun b_and!265391 () Bool)

(assert (= b_and!265351 (and (=> t!294548 result!253428) b_and!265391)))

(declare-fun tb!208003 () Bool)

(declare-fun t!294550 () Bool)

(assert (=> (and b!3624768 (= (toValue!7976 (transformation!5688 (rule!8452 token!511))) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294550) tb!208003))

(declare-fun result!253432 () Bool)

(assert (= result!253432 result!253428))

(assert (=> d!1066379 t!294550))

(declare-fun b_and!265393 () Bool)

(assert (= b_and!265355 (and (=> t!294550 result!253432) b_and!265393)))

(declare-fun tb!208005 () Bool)

(declare-fun t!294552 () Bool)

(assert (=> (and b!3624758 (= (toValue!7976 (transformation!5688 rule!403)) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294552) tb!208005))

(declare-fun result!253434 () Bool)

(assert (= result!253434 result!253428))

(assert (=> d!1066379 t!294552))

(declare-fun b_and!265395 () Bool)

(assert (= b_and!265359 (and (=> t!294552 result!253434) b_and!265395)))

(declare-fun t!294554 () Bool)

(declare-fun tb!208007 () Bool)

(assert (=> (and b!3624757 (= (toValue!7976 (transformation!5688 (h!43603 rules!3307))) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294554) tb!208007))

(declare-fun result!253436 () Bool)

(assert (= result!253436 result!253428))

(assert (=> d!1066379 t!294554))

(declare-fun b_and!265397 () Bool)

(assert (= b_and!265363 (and (=> t!294554 result!253436) b_and!265397)))

(assert (=> d!1066379 m!4125275))

(declare-fun m!4125623 () Bool)

(assert (=> d!1066379 m!4125623))

(assert (=> b!3624773 d!1066379))

(declare-fun d!1066381 () Bool)

(declare-fun res!1467384 () Bool)

(declare-fun e!2243845 () Bool)

(assert (=> d!1066381 (=> res!1467384 e!2243845)))

(assert (=> d!1066381 (= res!1467384 (not ((_ is Cons!38183) rules!3307)))))

(assert (=> d!1066381 (= (sepAndNonSepRulesDisjointChars!1858 rules!3307 rules!3307) e!2243845)))

(declare-fun b!3625101 () Bool)

(declare-fun e!2243846 () Bool)

(assert (=> b!3625101 (= e!2243845 e!2243846)))

(declare-fun res!1467385 () Bool)

(assert (=> b!3625101 (=> (not res!1467385) (not e!2243846))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!838 (Rule!11176 List!38307) Bool)

(assert (=> b!3625101 (= res!1467385 (ruleDisjointCharsFromAllFromOtherType!838 (h!43603 rules!3307) rules!3307))))

(declare-fun b!3625102 () Bool)

(assert (=> b!3625102 (= e!2243846 (sepAndNonSepRulesDisjointChars!1858 rules!3307 (t!294522 rules!3307)))))

(assert (= (and d!1066381 (not res!1467384)) b!3625101))

(assert (= (and b!3625101 res!1467385) b!3625102))

(declare-fun m!4125625 () Bool)

(assert (=> b!3625101 m!4125625))

(declare-fun m!4125627 () Bool)

(assert (=> b!3625102 m!4125627))

(assert (=> b!3624755 d!1066381))

(declare-fun d!1066383 () Bool)

(assert (=> d!1066383 (= (get!12460 lt!1252889) (v!37779 lt!1252889))))

(assert (=> b!3624756 d!1066383))

(declare-fun b!3625103 () Bool)

(declare-fun e!2243853 () Bool)

(assert (=> b!3625103 (= e!2243853 (matchR!5016 (derivativeStep!3164 (regex!5688 rule!403) (head!7662 lt!1252891)) (tail!5613 lt!1252891)))))

(declare-fun b!3625104 () Bool)

(declare-fun res!1467392 () Bool)

(declare-fun e!2243851 () Bool)

(assert (=> b!3625104 (=> (not res!1467392) (not e!2243851))))

(assert (=> b!3625104 (= res!1467392 (isEmpty!22572 (tail!5613 lt!1252891)))))

(declare-fun b!3625105 () Bool)

(declare-fun res!1467388 () Bool)

(assert (=> b!3625105 (=> (not res!1467388) (not e!2243851))))

(declare-fun call!262265 () Bool)

(assert (=> b!3625105 (= res!1467388 (not call!262265))))

(declare-fun b!3625107 () Bool)

(declare-fun e!2243848 () Bool)

(declare-fun lt!1253039 () Bool)

(assert (=> b!3625107 (= e!2243848 (= lt!1253039 call!262265))))

(declare-fun b!3625108 () Bool)

(declare-fun e!2243850 () Bool)

(assert (=> b!3625108 (= e!2243848 e!2243850)))

(declare-fun c!627282 () Bool)

(assert (=> b!3625108 (= c!627282 ((_ is EmptyLang!10447) (regex!5688 rule!403)))))

(declare-fun b!3625109 () Bool)

(assert (=> b!3625109 (= e!2243851 (= (head!7662 lt!1252891) (c!627212 (regex!5688 rule!403))))))

(declare-fun b!3625110 () Bool)

(declare-fun e!2243847 () Bool)

(assert (=> b!3625110 (= e!2243847 (not (= (head!7662 lt!1252891) (c!627212 (regex!5688 rule!403)))))))

(declare-fun b!3625111 () Bool)

(declare-fun res!1467387 () Bool)

(declare-fun e!2243849 () Bool)

(assert (=> b!3625111 (=> res!1467387 e!2243849)))

(assert (=> b!3625111 (= res!1467387 (not ((_ is ElementMatch!10447) (regex!5688 rule!403))))))

(assert (=> b!3625111 (= e!2243850 e!2243849)))

(declare-fun b!3625112 () Bool)

(declare-fun e!2243852 () Bool)

(assert (=> b!3625112 (= e!2243849 e!2243852)))

(declare-fun res!1467389 () Bool)

(assert (=> b!3625112 (=> (not res!1467389) (not e!2243852))))

(assert (=> b!3625112 (= res!1467389 (not lt!1253039))))

(declare-fun b!3625113 () Bool)

(assert (=> b!3625113 (= e!2243850 (not lt!1253039))))

(declare-fun b!3625106 () Bool)

(declare-fun res!1467386 () Bool)

(assert (=> b!3625106 (=> res!1467386 e!2243849)))

(assert (=> b!3625106 (= res!1467386 e!2243851)))

(declare-fun res!1467391 () Bool)

(assert (=> b!3625106 (=> (not res!1467391) (not e!2243851))))

(assert (=> b!3625106 (= res!1467391 lt!1253039)))

(declare-fun d!1066385 () Bool)

(assert (=> d!1066385 e!2243848))

(declare-fun c!627281 () Bool)

(assert (=> d!1066385 (= c!627281 ((_ is EmptyExpr!10447) (regex!5688 rule!403)))))

(assert (=> d!1066385 (= lt!1253039 e!2243853)))

(declare-fun c!627283 () Bool)

(assert (=> d!1066385 (= c!627283 (isEmpty!22572 lt!1252891))))

(assert (=> d!1066385 (validRegex!4777 (regex!5688 rule!403))))

(assert (=> d!1066385 (= (matchR!5016 (regex!5688 rule!403) lt!1252891) lt!1253039)))

(declare-fun bm!262260 () Bool)

(assert (=> bm!262260 (= call!262265 (isEmpty!22572 lt!1252891))))

(declare-fun b!3625114 () Bool)

(assert (=> b!3625114 (= e!2243852 e!2243847)))

(declare-fun res!1467390 () Bool)

(assert (=> b!3625114 (=> res!1467390 e!2243847)))

(assert (=> b!3625114 (= res!1467390 call!262265)))

(declare-fun b!3625115 () Bool)

(assert (=> b!3625115 (= e!2243853 (nullable!3615 (regex!5688 rule!403)))))

(declare-fun b!3625116 () Bool)

(declare-fun res!1467393 () Bool)

(assert (=> b!3625116 (=> res!1467393 e!2243847)))

(assert (=> b!3625116 (= res!1467393 (not (isEmpty!22572 (tail!5613 lt!1252891))))))

(assert (= (and d!1066385 c!627283) b!3625115))

(assert (= (and d!1066385 (not c!627283)) b!3625103))

(assert (= (and d!1066385 c!627281) b!3625107))

(assert (= (and d!1066385 (not c!627281)) b!3625108))

(assert (= (and b!3625108 c!627282) b!3625113))

(assert (= (and b!3625108 (not c!627282)) b!3625111))

(assert (= (and b!3625111 (not res!1467387)) b!3625106))

(assert (= (and b!3625106 res!1467391) b!3625105))

(assert (= (and b!3625105 res!1467388) b!3625104))

(assert (= (and b!3625104 res!1467392) b!3625109))

(assert (= (and b!3625106 (not res!1467386)) b!3625112))

(assert (= (and b!3625112 res!1467389) b!3625114))

(assert (= (and b!3625114 (not res!1467390)) b!3625116))

(assert (= (and b!3625116 (not res!1467393)) b!3625110))

(assert (= (or b!3625107 b!3625105 b!3625114) bm!262260))

(declare-fun m!4125629 () Bool)

(assert (=> b!3625103 m!4125629))

(assert (=> b!3625103 m!4125629))

(declare-fun m!4125631 () Bool)

(assert (=> b!3625103 m!4125631))

(declare-fun m!4125633 () Bool)

(assert (=> b!3625103 m!4125633))

(assert (=> b!3625103 m!4125631))

(assert (=> b!3625103 m!4125633))

(declare-fun m!4125635 () Bool)

(assert (=> b!3625103 m!4125635))

(declare-fun m!4125637 () Bool)

(assert (=> b!3625115 m!4125637))

(assert (=> b!3625109 m!4125629))

(declare-fun m!4125639 () Bool)

(assert (=> bm!262260 m!4125639))

(assert (=> b!3625104 m!4125633))

(assert (=> b!3625104 m!4125633))

(declare-fun m!4125641 () Bool)

(assert (=> b!3625104 m!4125641))

(assert (=> b!3625116 m!4125633))

(assert (=> b!3625116 m!4125633))

(assert (=> b!3625116 m!4125641))

(assert (=> d!1066385 m!4125639))

(declare-fun m!4125643 () Bool)

(assert (=> d!1066385 m!4125643))

(assert (=> b!3625110 m!4125629))

(assert (=> b!3624777 d!1066385))

(declare-fun d!1066387 () Bool)

(declare-fun res!1467402 () Bool)

(declare-fun e!2243862 () Bool)

(assert (=> d!1066387 (=> (not res!1467402) (not e!2243862))))

(assert (=> d!1066387 (= res!1467402 (validRegex!4777 (regex!5688 rule!403)))))

(assert (=> d!1066387 (= (ruleValid!1953 thiss!23823 rule!403) e!2243862)))

(declare-fun b!3625129 () Bool)

(declare-fun res!1467403 () Bool)

(assert (=> b!3625129 (=> (not res!1467403) (not e!2243862))))

(assert (=> b!3625129 (= res!1467403 (not (nullable!3615 (regex!5688 rule!403))))))

(declare-fun b!3625130 () Bool)

(assert (=> b!3625130 (= e!2243862 (not (= (tag!6410 rule!403) (String!42924 ""))))))

(assert (= (and d!1066387 res!1467402) b!3625129))

(assert (= (and b!3625129 res!1467403) b!3625130))

(assert (=> d!1066387 m!4125643))

(assert (=> b!3625129 m!4125637))

(assert (=> b!3624777 d!1066387))

(declare-fun d!1066389 () Bool)

(assert (=> d!1066389 (ruleValid!1953 thiss!23823 rule!403)))

(declare-fun lt!1253052 () Unit!54932)

(declare-fun choose!21280 (LexerInterface!5277 Rule!11176 List!38307) Unit!54932)

(assert (=> d!1066389 (= lt!1253052 (choose!21280 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1066389 (contains!7442 rules!3307 rule!403)))

(assert (=> d!1066389 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1108 thiss!23823 rule!403 rules!3307) lt!1253052)))

(declare-fun bs!571401 () Bool)

(assert (= bs!571401 d!1066389))

(assert (=> bs!571401 m!4125189))

(declare-fun m!4125645 () Bool)

(assert (=> bs!571401 m!4125645))

(assert (=> bs!571401 m!4125177))

(assert (=> b!3624777 d!1066389))

(declare-fun b!3625160 () Bool)

(declare-fun e!2243874 () Bool)

(declare-fun e!2243872 () Bool)

(assert (=> b!3625160 (= e!2243874 e!2243872)))

(declare-fun c!627291 () Bool)

(assert (=> b!3625160 (= c!627291 ((_ is IntegerValue!17755) (value!182568 token!511)))))

(declare-fun d!1066391 () Bool)

(declare-fun c!627292 () Bool)

(assert (=> d!1066391 (= c!627292 ((_ is IntegerValue!17754) (value!182568 token!511)))))

(assert (=> d!1066391 (= (inv!21 (value!182568 token!511)) e!2243874)))

(declare-fun b!3625161 () Bool)

(declare-fun res!1467423 () Bool)

(declare-fun e!2243873 () Bool)

(assert (=> b!3625161 (=> res!1467423 e!2243873)))

(assert (=> b!3625161 (= res!1467423 (not ((_ is IntegerValue!17756) (value!182568 token!511))))))

(assert (=> b!3625161 (= e!2243872 e!2243873)))

(declare-fun b!3625162 () Bool)

(declare-fun inv!15 (TokenValue!5918) Bool)

(assert (=> b!3625162 (= e!2243873 (inv!15 (value!182568 token!511)))))

(declare-fun b!3625163 () Bool)

(declare-fun inv!17 (TokenValue!5918) Bool)

(assert (=> b!3625163 (= e!2243872 (inv!17 (value!182568 token!511)))))

(declare-fun b!3625164 () Bool)

(declare-fun inv!16 (TokenValue!5918) Bool)

(assert (=> b!3625164 (= e!2243874 (inv!16 (value!182568 token!511)))))

(assert (= (and d!1066391 c!627292) b!3625164))

(assert (= (and d!1066391 (not c!627292)) b!3625160))

(assert (= (and b!3625160 c!627291) b!3625163))

(assert (= (and b!3625160 (not c!627291)) b!3625161))

(assert (= (and b!3625161 (not res!1467423)) b!3625162))

(declare-fun m!4125647 () Bool)

(assert (=> b!3625162 m!4125647))

(declare-fun m!4125649 () Bool)

(assert (=> b!3625163 m!4125649))

(declare-fun m!4125651 () Bool)

(assert (=> b!3625164 m!4125651))

(assert (=> b!3624778 d!1066391))

(declare-fun b!3625165 () Bool)

(declare-fun e!2243881 () Bool)

(assert (=> b!3625165 (= e!2243881 (matchR!5016 (derivativeStep!3164 (regex!5688 lt!1252893) (head!7662 (list!14100 (charsOf!3702 (_1!22162 lt!1252890))))) (tail!5613 (list!14100 (charsOf!3702 (_1!22162 lt!1252890))))))))

(declare-fun b!3625166 () Bool)

(declare-fun res!1467430 () Bool)

(declare-fun e!2243879 () Bool)

(assert (=> b!3625166 (=> (not res!1467430) (not e!2243879))))

(assert (=> b!3625166 (= res!1467430 (isEmpty!22572 (tail!5613 (list!14100 (charsOf!3702 (_1!22162 lt!1252890))))))))

(declare-fun b!3625167 () Bool)

(declare-fun res!1467426 () Bool)

(assert (=> b!3625167 (=> (not res!1467426) (not e!2243879))))

(declare-fun call!262269 () Bool)

(assert (=> b!3625167 (= res!1467426 (not call!262269))))

(declare-fun b!3625169 () Bool)

(declare-fun e!2243876 () Bool)

(declare-fun lt!1253058 () Bool)

(assert (=> b!3625169 (= e!2243876 (= lt!1253058 call!262269))))

(declare-fun b!3625170 () Bool)

(declare-fun e!2243878 () Bool)

(assert (=> b!3625170 (= e!2243876 e!2243878)))

(declare-fun c!627294 () Bool)

(assert (=> b!3625170 (= c!627294 ((_ is EmptyLang!10447) (regex!5688 lt!1252893)))))

(declare-fun b!3625171 () Bool)

(assert (=> b!3625171 (= e!2243879 (= (head!7662 (list!14100 (charsOf!3702 (_1!22162 lt!1252890)))) (c!627212 (regex!5688 lt!1252893))))))

(declare-fun b!3625172 () Bool)

(declare-fun e!2243875 () Bool)

(assert (=> b!3625172 (= e!2243875 (not (= (head!7662 (list!14100 (charsOf!3702 (_1!22162 lt!1252890)))) (c!627212 (regex!5688 lt!1252893)))))))

(declare-fun b!3625173 () Bool)

(declare-fun res!1467425 () Bool)

(declare-fun e!2243877 () Bool)

(assert (=> b!3625173 (=> res!1467425 e!2243877)))

(assert (=> b!3625173 (= res!1467425 (not ((_ is ElementMatch!10447) (regex!5688 lt!1252893))))))

(assert (=> b!3625173 (= e!2243878 e!2243877)))

(declare-fun b!3625174 () Bool)

(declare-fun e!2243880 () Bool)

(assert (=> b!3625174 (= e!2243877 e!2243880)))

(declare-fun res!1467427 () Bool)

(assert (=> b!3625174 (=> (not res!1467427) (not e!2243880))))

(assert (=> b!3625174 (= res!1467427 (not lt!1253058))))

(declare-fun b!3625175 () Bool)

(assert (=> b!3625175 (= e!2243878 (not lt!1253058))))

(declare-fun b!3625168 () Bool)

(declare-fun res!1467424 () Bool)

(assert (=> b!3625168 (=> res!1467424 e!2243877)))

(assert (=> b!3625168 (= res!1467424 e!2243879)))

(declare-fun res!1467429 () Bool)

(assert (=> b!3625168 (=> (not res!1467429) (not e!2243879))))

(assert (=> b!3625168 (= res!1467429 lt!1253058)))

(declare-fun d!1066393 () Bool)

(assert (=> d!1066393 e!2243876))

(declare-fun c!627293 () Bool)

(assert (=> d!1066393 (= c!627293 ((_ is EmptyExpr!10447) (regex!5688 lt!1252893)))))

(assert (=> d!1066393 (= lt!1253058 e!2243881)))

(declare-fun c!627295 () Bool)

(assert (=> d!1066393 (= c!627295 (isEmpty!22572 (list!14100 (charsOf!3702 (_1!22162 lt!1252890)))))))

(assert (=> d!1066393 (validRegex!4777 (regex!5688 lt!1252893))))

(assert (=> d!1066393 (= (matchR!5016 (regex!5688 lt!1252893) (list!14100 (charsOf!3702 (_1!22162 lt!1252890)))) lt!1253058)))

(declare-fun bm!262264 () Bool)

(assert (=> bm!262264 (= call!262269 (isEmpty!22572 (list!14100 (charsOf!3702 (_1!22162 lt!1252890)))))))

(declare-fun b!3625176 () Bool)

(assert (=> b!3625176 (= e!2243880 e!2243875)))

(declare-fun res!1467428 () Bool)

(assert (=> b!3625176 (=> res!1467428 e!2243875)))

(assert (=> b!3625176 (= res!1467428 call!262269)))

(declare-fun b!3625177 () Bool)

(assert (=> b!3625177 (= e!2243881 (nullable!3615 (regex!5688 lt!1252893)))))

(declare-fun b!3625178 () Bool)

(declare-fun res!1467431 () Bool)

(assert (=> b!3625178 (=> res!1467431 e!2243875)))

(assert (=> b!3625178 (= res!1467431 (not (isEmpty!22572 (tail!5613 (list!14100 (charsOf!3702 (_1!22162 lt!1252890)))))))))

(assert (= (and d!1066393 c!627295) b!3625177))

(assert (= (and d!1066393 (not c!627295)) b!3625165))

(assert (= (and d!1066393 c!627293) b!3625169))

(assert (= (and d!1066393 (not c!627293)) b!3625170))

(assert (= (and b!3625170 c!627294) b!3625175))

(assert (= (and b!3625170 (not c!627294)) b!3625173))

(assert (= (and b!3625173 (not res!1467425)) b!3625168))

(assert (= (and b!3625168 res!1467429) b!3625167))

(assert (= (and b!3625167 res!1467426) b!3625166))

(assert (= (and b!3625166 res!1467430) b!3625171))

(assert (= (and b!3625168 (not res!1467424)) b!3625174))

(assert (= (and b!3625174 res!1467427) b!3625176))

(assert (= (and b!3625176 (not res!1467428)) b!3625178))

(assert (= (and b!3625178 (not res!1467431)) b!3625172))

(assert (= (or b!3625169 b!3625167 b!3625176) bm!262264))

(assert (=> b!3625165 m!4125259))

(declare-fun m!4125653 () Bool)

(assert (=> b!3625165 m!4125653))

(assert (=> b!3625165 m!4125653))

(declare-fun m!4125655 () Bool)

(assert (=> b!3625165 m!4125655))

(assert (=> b!3625165 m!4125259))

(declare-fun m!4125657 () Bool)

(assert (=> b!3625165 m!4125657))

(assert (=> b!3625165 m!4125655))

(assert (=> b!3625165 m!4125657))

(declare-fun m!4125663 () Bool)

(assert (=> b!3625165 m!4125663))

(declare-fun m!4125665 () Bool)

(assert (=> b!3625177 m!4125665))

(assert (=> b!3625171 m!4125259))

(assert (=> b!3625171 m!4125653))

(assert (=> bm!262264 m!4125259))

(declare-fun m!4125669 () Bool)

(assert (=> bm!262264 m!4125669))

(assert (=> b!3625166 m!4125259))

(assert (=> b!3625166 m!4125657))

(assert (=> b!3625166 m!4125657))

(declare-fun m!4125673 () Bool)

(assert (=> b!3625166 m!4125673))

(assert (=> b!3625178 m!4125259))

(assert (=> b!3625178 m!4125657))

(assert (=> b!3625178 m!4125657))

(assert (=> b!3625178 m!4125673))

(assert (=> d!1066393 m!4125259))

(assert (=> d!1066393 m!4125669))

(declare-fun m!4125677 () Bool)

(assert (=> d!1066393 m!4125677))

(assert (=> b!3625172 m!4125259))

(assert (=> b!3625172 m!4125653))

(assert (=> b!3624774 d!1066393))

(declare-fun d!1066395 () Bool)

(declare-fun list!14103 (Conc!11645) List!38306)

(assert (=> d!1066395 (= (list!14100 (charsOf!3702 (_1!22162 lt!1252890))) (list!14103 (c!627213 (charsOf!3702 (_1!22162 lt!1252890)))))))

(declare-fun bs!571402 () Bool)

(assert (= bs!571402 d!1066395))

(declare-fun m!4125701 () Bool)

(assert (=> bs!571402 m!4125701))

(assert (=> b!3624774 d!1066395))

(declare-fun d!1066399 () Bool)

(declare-fun lt!1253061 () BalanceConc!22904)

(assert (=> d!1066399 (= (list!14100 lt!1253061) (originalCharacters!6402 (_1!22162 lt!1252890)))))

(assert (=> d!1066399 (= lt!1253061 (dynLambda!16526 (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) (value!182568 (_1!22162 lt!1252890))))))

(assert (=> d!1066399 (= (charsOf!3702 (_1!22162 lt!1252890)) lt!1253061)))

(declare-fun b_lambda!107243 () Bool)

(assert (=> (not b_lambda!107243) (not d!1066399)))

(declare-fun tb!208009 () Bool)

(declare-fun t!294556 () Bool)

(assert (=> (and b!3624754 (= (toChars!7835 (transformation!5688 anOtherTypeRule!33)) (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294556) tb!208009))

(declare-fun b!3625179 () Bool)

(declare-fun e!2243882 () Bool)

(declare-fun tp!1106997 () Bool)

(assert (=> b!3625179 (= e!2243882 (and (inv!51591 (c!627213 (dynLambda!16526 (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) (value!182568 (_1!22162 lt!1252890))))) tp!1106997))))

(declare-fun result!253438 () Bool)

(assert (=> tb!208009 (= result!253438 (and (inv!51592 (dynLambda!16526 (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) (value!182568 (_1!22162 lt!1252890)))) e!2243882))))

(assert (= tb!208009 b!3625179))

(declare-fun m!4125703 () Bool)

(assert (=> b!3625179 m!4125703))

(declare-fun m!4125705 () Bool)

(assert (=> tb!208009 m!4125705))

(assert (=> d!1066399 t!294556))

(declare-fun b_and!265399 () Bool)

(assert (= b_and!265383 (and (=> t!294556 result!253438) b_and!265399)))

(declare-fun t!294558 () Bool)

(declare-fun tb!208011 () Bool)

(assert (=> (and b!3624768 (= (toChars!7835 (transformation!5688 (rule!8452 token!511))) (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294558) tb!208011))

(declare-fun result!253440 () Bool)

(assert (= result!253440 result!253438))

(assert (=> d!1066399 t!294558))

(declare-fun b_and!265401 () Bool)

(assert (= b_and!265385 (and (=> t!294558 result!253440) b_and!265401)))

(declare-fun t!294560 () Bool)

(declare-fun tb!208013 () Bool)

(assert (=> (and b!3624758 (= (toChars!7835 (transformation!5688 rule!403)) (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294560) tb!208013))

(declare-fun result!253442 () Bool)

(assert (= result!253442 result!253438))

(assert (=> d!1066399 t!294560))

(declare-fun b_and!265403 () Bool)

(assert (= b_and!265387 (and (=> t!294560 result!253442) b_and!265403)))

(declare-fun tb!208015 () Bool)

(declare-fun t!294562 () Bool)

(assert (=> (and b!3624757 (= (toChars!7835 (transformation!5688 (h!43603 rules!3307))) (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294562) tb!208015))

(declare-fun result!253444 () Bool)

(assert (= result!253444 result!253438))

(assert (=> d!1066399 t!294562))

(declare-fun b_and!265405 () Bool)

(assert (= b_and!265389 (and (=> t!294562 result!253444) b_and!265405)))

(declare-fun m!4125707 () Bool)

(assert (=> d!1066399 m!4125707))

(declare-fun m!4125709 () Bool)

(assert (=> d!1066399 m!4125709))

(assert (=> b!3624774 d!1066399))

(declare-fun d!1066401 () Bool)

(assert (=> d!1066401 (= (get!12461 lt!1252873) (v!37780 lt!1252873))))

(assert (=> b!3624774 d!1066401))

(declare-fun d!1066403 () Bool)

(declare-fun lt!1253064 () Bool)

(declare-fun content!5469 (List!38307) (InoxSet Rule!11176))

(assert (=> d!1066403 (= lt!1253064 (select (content!5469 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2243887 () Bool)

(assert (=> d!1066403 (= lt!1253064 e!2243887)))

(declare-fun res!1467436 () Bool)

(assert (=> d!1066403 (=> (not res!1467436) (not e!2243887))))

(assert (=> d!1066403 (= res!1467436 ((_ is Cons!38183) rules!3307))))

(assert (=> d!1066403 (= (contains!7442 rules!3307 anOtherTypeRule!33) lt!1253064)))

(declare-fun b!3625184 () Bool)

(declare-fun e!2243888 () Bool)

(assert (=> b!3625184 (= e!2243887 e!2243888)))

(declare-fun res!1467437 () Bool)

(assert (=> b!3625184 (=> res!1467437 e!2243888)))

(assert (=> b!3625184 (= res!1467437 (= (h!43603 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3625185 () Bool)

(assert (=> b!3625185 (= e!2243888 (contains!7442 (t!294522 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1066403 res!1467436) b!3625184))

(assert (= (and b!3625184 (not res!1467437)) b!3625185))

(declare-fun m!4125711 () Bool)

(assert (=> d!1066403 m!4125711))

(declare-fun m!4125713 () Bool)

(assert (=> d!1066403 m!4125713))

(declare-fun m!4125715 () Bool)

(assert (=> b!3625185 m!4125715))

(assert (=> b!3624753 d!1066403))

(declare-fun d!1066405 () Bool)

(declare-fun res!1467444 () Bool)

(declare-fun e!2243899 () Bool)

(assert (=> d!1066405 (=> (not res!1467444) (not e!2243899))))

(declare-fun rulesValid!2169 (LexerInterface!5277 List!38307) Bool)

(assert (=> d!1066405 (= res!1467444 (rulesValid!2169 thiss!23823 rules!3307))))

(assert (=> d!1066405 (= (rulesInvariant!4674 thiss!23823 rules!3307) e!2243899)))

(declare-fun b!3625200 () Bool)

(declare-datatypes ((List!38309 0))(
  ( (Nil!38185) (Cons!38185 (h!43605 String!42923) (t!294644 List!38309)) )
))
(declare-fun noDuplicateTag!2165 (LexerInterface!5277 List!38307 List!38309) Bool)

(assert (=> b!3625200 (= e!2243899 (noDuplicateTag!2165 thiss!23823 rules!3307 Nil!38185))))

(assert (= (and d!1066405 res!1467444) b!3625200))

(declare-fun m!4125717 () Bool)

(assert (=> d!1066405 m!4125717))

(declare-fun m!4125719 () Bool)

(assert (=> b!3625200 m!4125719))

(assert (=> b!3624775 d!1066405))

(declare-fun d!1066407 () Bool)

(assert (=> d!1066407 (= (isDefined!6238 lt!1252889) (not (isEmpty!22576 lt!1252889)))))

(declare-fun bs!571403 () Bool)

(assert (= bs!571403 d!1066407))

(declare-fun m!4125721 () Bool)

(assert (=> bs!571403 m!4125721))

(assert (=> b!3624776 d!1066407))

(declare-fun b!3625249 () Bool)

(declare-fun e!2243922 () Bool)

(declare-fun lt!1253096 () Option!8006)

(assert (=> b!3625249 (= e!2243922 (contains!7442 rules!3307 (rule!8452 (_1!22162 (get!12460 lt!1253096)))))))

(declare-fun b!3625250 () Bool)

(declare-fun res!1467480 () Bool)

(assert (=> b!3625250 (=> (not res!1467480) (not e!2243922))))

(assert (=> b!3625250 (= res!1467480 (matchR!5016 (regex!5688 (rule!8452 (_1!22162 (get!12460 lt!1253096)))) (list!14100 (charsOf!3702 (_1!22162 (get!12460 lt!1253096))))))))

(declare-fun b!3625251 () Bool)

(declare-fun e!2243923 () Bool)

(assert (=> b!3625251 (= e!2243923 e!2243922)))

(declare-fun res!1467479 () Bool)

(assert (=> b!3625251 (=> (not res!1467479) (not e!2243922))))

(assert (=> b!3625251 (= res!1467479 (isDefined!6238 lt!1253096))))

(declare-fun b!3625252 () Bool)

(declare-fun e!2243924 () Option!8006)

(declare-fun lt!1253095 () Option!8006)

(declare-fun lt!1253093 () Option!8006)

(assert (=> b!3625252 (= e!2243924 (ite (and ((_ is None!8005) lt!1253095) ((_ is None!8005) lt!1253093)) None!8005 (ite ((_ is None!8005) lt!1253093) lt!1253095 (ite ((_ is None!8005) lt!1253095) lt!1253093 (ite (>= (size!29127 (_1!22162 (v!37779 lt!1253095))) (size!29127 (_1!22162 (v!37779 lt!1253093)))) lt!1253095 lt!1253093)))))))

(declare-fun call!262274 () Option!8006)

(assert (=> b!3625252 (= lt!1253095 call!262274)))

(assert (=> b!3625252 (= lt!1253093 (maxPrefix!2811 thiss!23823 (t!294522 rules!3307) lt!1252891))))

(declare-fun b!3625253 () Bool)

(declare-fun res!1467478 () Bool)

(assert (=> b!3625253 (=> (not res!1467478) (not e!2243922))))

(assert (=> b!3625253 (= res!1467478 (< (size!29129 (_2!22162 (get!12460 lt!1253096))) (size!29129 lt!1252891)))))

(declare-fun d!1066409 () Bool)

(assert (=> d!1066409 e!2243923))

(declare-fun res!1467477 () Bool)

(assert (=> d!1066409 (=> res!1467477 e!2243923)))

(assert (=> d!1066409 (= res!1467477 (isEmpty!22576 lt!1253096))))

(assert (=> d!1066409 (= lt!1253096 e!2243924)))

(declare-fun c!627309 () Bool)

(assert (=> d!1066409 (= c!627309 (and ((_ is Cons!38183) rules!3307) ((_ is Nil!38183) (t!294522 rules!3307))))))

(declare-fun lt!1253097 () Unit!54932)

(declare-fun lt!1253094 () Unit!54932)

(assert (=> d!1066409 (= lt!1253097 lt!1253094)))

(assert (=> d!1066409 (isPrefix!3051 lt!1252891 lt!1252891)))

(declare-fun lemmaIsPrefixRefl!1934 (List!38306 List!38306) Unit!54932)

(assert (=> d!1066409 (= lt!1253094 (lemmaIsPrefixRefl!1934 lt!1252891 lt!1252891))))

(declare-fun rulesValidInductive!1999 (LexerInterface!5277 List!38307) Bool)

(assert (=> d!1066409 (rulesValidInductive!1999 thiss!23823 rules!3307)))

(assert (=> d!1066409 (= (maxPrefix!2811 thiss!23823 rules!3307 lt!1252891) lt!1253096)))

(declare-fun b!3625254 () Bool)

(declare-fun res!1467476 () Bool)

(assert (=> b!3625254 (=> (not res!1467476) (not e!2243922))))

(assert (=> b!3625254 (= res!1467476 (= (value!182568 (_1!22162 (get!12460 lt!1253096))) (apply!9190 (transformation!5688 (rule!8452 (_1!22162 (get!12460 lt!1253096)))) (seqFromList!4237 (originalCharacters!6402 (_1!22162 (get!12460 lt!1253096)))))))))

(declare-fun b!3625255 () Bool)

(declare-fun res!1467482 () Bool)

(assert (=> b!3625255 (=> (not res!1467482) (not e!2243922))))

(assert (=> b!3625255 (= res!1467482 (= (list!14100 (charsOf!3702 (_1!22162 (get!12460 lt!1253096)))) (originalCharacters!6402 (_1!22162 (get!12460 lt!1253096)))))))

(declare-fun bm!262269 () Bool)

(assert (=> bm!262269 (= call!262274 (maxPrefixOneRule!1951 thiss!23823 (h!43603 rules!3307) lt!1252891))))

(declare-fun b!3625256 () Bool)

(assert (=> b!3625256 (= e!2243924 call!262274)))

(declare-fun b!3625257 () Bool)

(declare-fun res!1467481 () Bool)

(assert (=> b!3625257 (=> (not res!1467481) (not e!2243922))))

(assert (=> b!3625257 (= res!1467481 (= (++!9504 (list!14100 (charsOf!3702 (_1!22162 (get!12460 lt!1253096)))) (_2!22162 (get!12460 lt!1253096))) lt!1252891))))

(assert (= (and d!1066409 c!627309) b!3625256))

(assert (= (and d!1066409 (not c!627309)) b!3625252))

(assert (= (or b!3625256 b!3625252) bm!262269))

(assert (= (and d!1066409 (not res!1467477)) b!3625251))

(assert (= (and b!3625251 res!1467479) b!3625255))

(assert (= (and b!3625255 res!1467482) b!3625253))

(assert (= (and b!3625253 res!1467478) b!3625257))

(assert (= (and b!3625257 res!1467481) b!3625254))

(assert (= (and b!3625254 res!1467476) b!3625250))

(assert (= (and b!3625250 res!1467480) b!3625249))

(declare-fun m!4125797 () Bool)

(assert (=> b!3625252 m!4125797))

(declare-fun m!4125799 () Bool)

(assert (=> b!3625250 m!4125799))

(declare-fun m!4125801 () Bool)

(assert (=> b!3625250 m!4125801))

(assert (=> b!3625250 m!4125801))

(declare-fun m!4125803 () Bool)

(assert (=> b!3625250 m!4125803))

(assert (=> b!3625250 m!4125803))

(declare-fun m!4125805 () Bool)

(assert (=> b!3625250 m!4125805))

(declare-fun m!4125807 () Bool)

(assert (=> b!3625251 m!4125807))

(assert (=> b!3625255 m!4125799))

(assert (=> b!3625255 m!4125801))

(assert (=> b!3625255 m!4125801))

(assert (=> b!3625255 m!4125803))

(assert (=> b!3625257 m!4125799))

(assert (=> b!3625257 m!4125801))

(assert (=> b!3625257 m!4125801))

(assert (=> b!3625257 m!4125803))

(assert (=> b!3625257 m!4125803))

(declare-fun m!4125809 () Bool)

(assert (=> b!3625257 m!4125809))

(assert (=> b!3625253 m!4125799))

(declare-fun m!4125811 () Bool)

(assert (=> b!3625253 m!4125811))

(declare-fun m!4125813 () Bool)

(assert (=> b!3625253 m!4125813))

(declare-fun m!4125815 () Bool)

(assert (=> bm!262269 m!4125815))

(assert (=> b!3625254 m!4125799))

(declare-fun m!4125817 () Bool)

(assert (=> b!3625254 m!4125817))

(assert (=> b!3625254 m!4125817))

(declare-fun m!4125819 () Bool)

(assert (=> b!3625254 m!4125819))

(declare-fun m!4125821 () Bool)

(assert (=> d!1066409 m!4125821))

(declare-fun m!4125823 () Bool)

(assert (=> d!1066409 m!4125823))

(declare-fun m!4125825 () Bool)

(assert (=> d!1066409 m!4125825))

(declare-fun m!4125827 () Bool)

(assert (=> d!1066409 m!4125827))

(assert (=> b!3625249 m!4125799))

(declare-fun m!4125829 () Bool)

(assert (=> b!3625249 m!4125829))

(assert (=> b!3624776 d!1066409))

(declare-fun d!1066429 () Bool)

(assert (=> d!1066429 (= (list!14100 (charsOf!3702 token!511)) (list!14103 (c!627213 (charsOf!3702 token!511))))))

(declare-fun bs!571408 () Bool)

(assert (= bs!571408 d!1066429))

(declare-fun m!4125831 () Bool)

(assert (=> bs!571408 m!4125831))

(assert (=> b!3624776 d!1066429))

(declare-fun d!1066431 () Bool)

(declare-fun lt!1253098 () BalanceConc!22904)

(assert (=> d!1066431 (= (list!14100 lt!1253098) (originalCharacters!6402 token!511))))

(assert (=> d!1066431 (= lt!1253098 (dynLambda!16526 (toChars!7835 (transformation!5688 (rule!8452 token!511))) (value!182568 token!511)))))

(assert (=> d!1066431 (= (charsOf!3702 token!511) lt!1253098)))

(declare-fun b_lambda!107249 () Bool)

(assert (=> (not b_lambda!107249) (not d!1066431)))

(assert (=> d!1066431 t!294540))

(declare-fun b_and!265423 () Bool)

(assert (= b_and!265399 (and (=> t!294540 result!253418) b_and!265423)))

(assert (=> d!1066431 t!294542))

(declare-fun b_and!265425 () Bool)

(assert (= b_and!265401 (and (=> t!294542 result!253422) b_and!265425)))

(assert (=> d!1066431 t!294544))

(declare-fun b_and!265427 () Bool)

(assert (= b_and!265403 (and (=> t!294544 result!253424) b_and!265427)))

(assert (=> d!1066431 t!294546))

(declare-fun b_and!265429 () Bool)

(assert (= b_and!265405 (and (=> t!294546 result!253426) b_and!265429)))

(declare-fun m!4125833 () Bool)

(assert (=> d!1066431 m!4125833))

(assert (=> d!1066431 m!4125485))

(assert (=> b!3624776 d!1066431))

(declare-fun d!1066433 () Bool)

(assert (=> d!1066433 (= (inv!51584 (tag!6410 (rule!8452 token!511))) (= (mod (str.len (value!182542 (tag!6410 (rule!8452 token!511)))) 2) 0))))

(assert (=> b!3624782 d!1066433))

(declare-fun d!1066435 () Bool)

(declare-fun res!1467483 () Bool)

(declare-fun e!2243925 () Bool)

(assert (=> d!1066435 (=> (not res!1467483) (not e!2243925))))

(assert (=> d!1066435 (= res!1467483 (semiInverseModEq!2413 (toChars!7835 (transformation!5688 (rule!8452 token!511))) (toValue!7976 (transformation!5688 (rule!8452 token!511)))))))

(assert (=> d!1066435 (= (inv!51587 (transformation!5688 (rule!8452 token!511))) e!2243925)))

(declare-fun b!3625258 () Bool)

(assert (=> b!3625258 (= e!2243925 (equivClasses!2312 (toChars!7835 (transformation!5688 (rule!8452 token!511))) (toValue!7976 (transformation!5688 (rule!8452 token!511)))))))

(assert (= (and d!1066435 res!1467483) b!3625258))

(declare-fun m!4125835 () Bool)

(assert (=> d!1066435 m!4125835))

(declare-fun m!4125837 () Bool)

(assert (=> b!3625258 m!4125837))

(assert (=> b!3624782 d!1066435))

(declare-fun d!1066437 () Bool)

(assert (=> d!1066437 (= (inv!51584 (tag!6410 (h!43603 rules!3307))) (= (mod (str.len (value!182542 (tag!6410 (h!43603 rules!3307)))) 2) 0))))

(assert (=> b!3624761 d!1066437))

(declare-fun d!1066439 () Bool)

(declare-fun res!1467484 () Bool)

(declare-fun e!2243926 () Bool)

(assert (=> d!1066439 (=> (not res!1467484) (not e!2243926))))

(assert (=> d!1066439 (= res!1467484 (semiInverseModEq!2413 (toChars!7835 (transformation!5688 (h!43603 rules!3307))) (toValue!7976 (transformation!5688 (h!43603 rules!3307)))))))

(assert (=> d!1066439 (= (inv!51587 (transformation!5688 (h!43603 rules!3307))) e!2243926)))

(declare-fun b!3625259 () Bool)

(assert (=> b!3625259 (= e!2243926 (equivClasses!2312 (toChars!7835 (transformation!5688 (h!43603 rules!3307))) (toValue!7976 (transformation!5688 (h!43603 rules!3307)))))))

(assert (= (and d!1066439 res!1467484) b!3625259))

(declare-fun m!4125839 () Bool)

(assert (=> d!1066439 m!4125839))

(declare-fun m!4125841 () Bool)

(assert (=> b!3625259 m!4125841))

(assert (=> b!3624761 d!1066439))

(declare-fun d!1066441 () Bool)

(assert (=> d!1066441 (= (apply!9190 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))) lt!1252881) (dynLambda!16527 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) lt!1252881))))

(declare-fun b_lambda!107251 () Bool)

(assert (=> (not b_lambda!107251) (not d!1066441)))

(declare-fun tb!208033 () Bool)

(declare-fun t!294580 () Bool)

(assert (=> (and b!3624754 (= (toValue!7976 (transformation!5688 anOtherTypeRule!33)) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294580) tb!208033))

(declare-fun result!253462 () Bool)

(assert (=> tb!208033 (= result!253462 (inv!21 (dynLambda!16527 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) lt!1252881)))))

(declare-fun m!4125843 () Bool)

(assert (=> tb!208033 m!4125843))

(assert (=> d!1066441 t!294580))

(declare-fun b_and!265431 () Bool)

(assert (= b_and!265391 (and (=> t!294580 result!253462) b_and!265431)))

(declare-fun tb!208035 () Bool)

(declare-fun t!294582 () Bool)

(assert (=> (and b!3624768 (= (toValue!7976 (transformation!5688 (rule!8452 token!511))) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294582) tb!208035))

(declare-fun result!253464 () Bool)

(assert (= result!253464 result!253462))

(assert (=> d!1066441 t!294582))

(declare-fun b_and!265433 () Bool)

(assert (= b_and!265393 (and (=> t!294582 result!253464) b_and!265433)))

(declare-fun t!294584 () Bool)

(declare-fun tb!208037 () Bool)

(assert (=> (and b!3624758 (= (toValue!7976 (transformation!5688 rule!403)) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294584) tb!208037))

(declare-fun result!253466 () Bool)

(assert (= result!253466 result!253462))

(assert (=> d!1066441 t!294584))

(declare-fun b_and!265435 () Bool)

(assert (= b_and!265395 (and (=> t!294584 result!253466) b_and!265435)))

(declare-fun tb!208039 () Bool)

(declare-fun t!294586 () Bool)

(assert (=> (and b!3624757 (= (toValue!7976 (transformation!5688 (h!43603 rules!3307))) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294586) tb!208039))

(declare-fun result!253468 () Bool)

(assert (= result!253468 result!253462))

(assert (=> d!1066441 t!294586))

(declare-fun b_and!265437 () Bool)

(assert (= b_and!265397 (and (=> t!294586 result!253468) b_and!265437)))

(declare-fun m!4125845 () Bool)

(assert (=> d!1066441 m!4125845))

(assert (=> b!3624762 d!1066441))

(declare-fun d!1066443 () Bool)

(assert (=> d!1066443 (= (size!29127 (_1!22162 lt!1252890)) (size!29129 (originalCharacters!6402 (_1!22162 lt!1252890))))))

(declare-fun Unit!54937 () Unit!54932)

(assert (=> d!1066443 (= (lemmaCharactersSize!735 (_1!22162 lt!1252890)) Unit!54937)))

(declare-fun bs!571409 () Bool)

(assert (= bs!571409 d!1066443))

(declare-fun m!4125847 () Bool)

(assert (=> bs!571409 m!4125847))

(assert (=> b!3624762 d!1066443))

(declare-fun d!1066445 () Bool)

(assert (=> d!1066445 (= (seqFromList!4237 (originalCharacters!6402 (_1!22162 lt!1252890))) (fromListB!1951 (originalCharacters!6402 (_1!22162 lt!1252890))))))

(declare-fun bs!571410 () Bool)

(assert (= bs!571410 d!1066445))

(declare-fun m!4125849 () Bool)

(assert (=> bs!571410 m!4125849))

(assert (=> b!3624762 d!1066445))

(declare-fun b!3625301 () Bool)

(declare-fun e!2243957 () Bool)

(assert (=> b!3625301 (= e!2243957 true)))

(declare-fun d!1066447 () Bool)

(assert (=> d!1066447 e!2243957))

(assert (= d!1066447 b!3625301))

(declare-fun lambda!124188 () Int)

(declare-fun order!20875 () Int)

(declare-fun order!20877 () Int)

(declare-fun dynLambda!16532 (Int Int) Int)

(declare-fun dynLambda!16533 (Int Int) Int)

(assert (=> b!3625301 (< (dynLambda!16532 order!20875 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) (dynLambda!16533 order!20877 lambda!124188))))

(declare-fun order!20879 () Int)

(declare-fun dynLambda!16534 (Int Int) Int)

(assert (=> b!3625301 (< (dynLambda!16534 order!20879 (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) (dynLambda!16533 order!20877 lambda!124188))))

(assert (=> d!1066447 (= (list!14100 (dynLambda!16526 (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) (dynLambda!16527 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) lt!1252881))) (list!14100 lt!1252881))))

(declare-fun lt!1253109 () Unit!54932)

(declare-fun ForallOf!672 (Int BalanceConc!22904) Unit!54932)

(assert (=> d!1066447 (= lt!1253109 (ForallOf!672 lambda!124188 lt!1252881))))

(assert (=> d!1066447 (= (lemmaSemiInverse!1439 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))) lt!1252881) lt!1253109)))

(declare-fun b_lambda!107261 () Bool)

(assert (=> (not b_lambda!107261) (not d!1066447)))

(declare-fun tb!208057 () Bool)

(declare-fun t!294604 () Bool)

(assert (=> (and b!3624754 (= (toChars!7835 (transformation!5688 anOtherTypeRule!33)) (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294604) tb!208057))

(declare-fun e!2243964 () Bool)

(declare-fun tp!1107000 () Bool)

(declare-fun b!3625312 () Bool)

(assert (=> b!3625312 (= e!2243964 (and (inv!51591 (c!627213 (dynLambda!16526 (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) (dynLambda!16527 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) lt!1252881)))) tp!1107000))))

(declare-fun result!253486 () Bool)

(assert (=> tb!208057 (= result!253486 (and (inv!51592 (dynLambda!16526 (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) (dynLambda!16527 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) lt!1252881))) e!2243964))))

(assert (= tb!208057 b!3625312))

(declare-fun m!4125909 () Bool)

(assert (=> b!3625312 m!4125909))

(declare-fun m!4125911 () Bool)

(assert (=> tb!208057 m!4125911))

(assert (=> d!1066447 t!294604))

(declare-fun b_and!265471 () Bool)

(assert (= b_and!265423 (and (=> t!294604 result!253486) b_and!265471)))

(declare-fun t!294606 () Bool)

(declare-fun tb!208059 () Bool)

(assert (=> (and b!3624768 (= (toChars!7835 (transformation!5688 (rule!8452 token!511))) (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294606) tb!208059))

(declare-fun result!253488 () Bool)

(assert (= result!253488 result!253486))

(assert (=> d!1066447 t!294606))

(declare-fun b_and!265473 () Bool)

(assert (= b_and!265425 (and (=> t!294606 result!253488) b_and!265473)))

(declare-fun t!294608 () Bool)

(declare-fun tb!208061 () Bool)

(assert (=> (and b!3624758 (= (toChars!7835 (transformation!5688 rule!403)) (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294608) tb!208061))

(declare-fun result!253490 () Bool)

(assert (= result!253490 result!253486))

(assert (=> d!1066447 t!294608))

(declare-fun b_and!265475 () Bool)

(assert (= b_and!265427 (and (=> t!294608 result!253490) b_and!265475)))

(declare-fun t!294610 () Bool)

(declare-fun tb!208063 () Bool)

(assert (=> (and b!3624757 (= (toChars!7835 (transformation!5688 (h!43603 rules!3307))) (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294610) tb!208063))

(declare-fun result!253492 () Bool)

(assert (= result!253492 result!253486))

(assert (=> d!1066447 t!294610))

(declare-fun b_and!265477 () Bool)

(assert (= b_and!265429 (and (=> t!294610 result!253492) b_and!265477)))

(declare-fun b_lambda!107263 () Bool)

(assert (=> (not b_lambda!107263) (not d!1066447)))

(assert (=> d!1066447 t!294580))

(declare-fun b_and!265479 () Bool)

(assert (= b_and!265431 (and (=> t!294580 result!253462) b_and!265479)))

(assert (=> d!1066447 t!294582))

(declare-fun b_and!265481 () Bool)

(assert (= b_and!265433 (and (=> t!294582 result!253464) b_and!265481)))

(assert (=> d!1066447 t!294584))

(declare-fun b_and!265483 () Bool)

(assert (= b_and!265435 (and (=> t!294584 result!253466) b_and!265483)))

(assert (=> d!1066447 t!294586))

(declare-fun b_and!265485 () Bool)

(assert (= b_and!265437 (and (=> t!294586 result!253468) b_and!265485)))

(assert (=> d!1066447 m!4125845))

(assert (=> d!1066447 m!4125845))

(declare-fun m!4125919 () Bool)

(assert (=> d!1066447 m!4125919))

(assert (=> d!1066447 m!4125245))

(declare-fun m!4125921 () Bool)

(assert (=> d!1066447 m!4125921))

(assert (=> d!1066447 m!4125919))

(declare-fun m!4125923 () Bool)

(assert (=> d!1066447 m!4125923))

(assert (=> b!3624762 d!1066447))

(declare-fun d!1066473 () Bool)

(declare-fun lt!1253113 () Int)

(assert (=> d!1066473 (= lt!1253113 (size!29129 (list!14100 lt!1252881)))))

(declare-fun size!29131 (Conc!11645) Int)

(assert (=> d!1066473 (= lt!1253113 (size!29131 (c!627213 lt!1252881)))))

(assert (=> d!1066473 (= (size!29128 lt!1252881) lt!1253113)))

(declare-fun bs!571413 () Bool)

(assert (= bs!571413 d!1066473))

(assert (=> bs!571413 m!4125245))

(assert (=> bs!571413 m!4125245))

(declare-fun m!4125925 () Bool)

(assert (=> bs!571413 m!4125925))

(declare-fun m!4125927 () Bool)

(assert (=> bs!571413 m!4125927))

(assert (=> b!3624762 d!1066473))

(declare-fun b!3625354 () Bool)

(declare-fun e!2243987 () Bool)

(assert (=> b!3625354 (= e!2243987 true)))

(declare-fun d!1066477 () Bool)

(assert (=> d!1066477 e!2243987))

(assert (= d!1066477 b!3625354))

(declare-fun order!20881 () Int)

(declare-fun lambda!124191 () Int)

(declare-fun dynLambda!16535 (Int Int) Int)

(assert (=> b!3625354 (< (dynLambda!16532 order!20875 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) (dynLambda!16535 order!20881 lambda!124191))))

(assert (=> b!3625354 (< (dynLambda!16534 order!20879 (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) (dynLambda!16535 order!20881 lambda!124191))))

(assert (=> d!1066477 (= (dynLambda!16527 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) lt!1252881) (dynLambda!16527 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) (seqFromList!4237 (originalCharacters!6402 (_1!22162 lt!1252890)))))))

(declare-fun lt!1253117 () Unit!54932)

(declare-fun Forall2of!330 (Int BalanceConc!22904 BalanceConc!22904) Unit!54932)

(assert (=> d!1066477 (= lt!1253117 (Forall2of!330 lambda!124191 lt!1252881 (seqFromList!4237 (originalCharacters!6402 (_1!22162 lt!1252890)))))))

(assert (=> d!1066477 (= (list!14100 lt!1252881) (list!14100 (seqFromList!4237 (originalCharacters!6402 (_1!22162 lt!1252890)))))))

(assert (=> d!1066477 (= (lemmaEqSameImage!873 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))) lt!1252881 (seqFromList!4237 (originalCharacters!6402 (_1!22162 lt!1252890)))) lt!1253117)))

(declare-fun b_lambda!107267 () Bool)

(assert (=> (not b_lambda!107267) (not d!1066477)))

(assert (=> d!1066477 t!294580))

(declare-fun b_and!265495 () Bool)

(assert (= b_and!265479 (and (=> t!294580 result!253462) b_and!265495)))

(assert (=> d!1066477 t!294582))

(declare-fun b_and!265497 () Bool)

(assert (= b_and!265481 (and (=> t!294582 result!253464) b_and!265497)))

(assert (=> d!1066477 t!294584))

(declare-fun b_and!265499 () Bool)

(assert (= b_and!265483 (and (=> t!294584 result!253466) b_and!265499)))

(assert (=> d!1066477 t!294586))

(declare-fun b_and!265501 () Bool)

(assert (= b_and!265485 (and (=> t!294586 result!253468) b_and!265501)))

(declare-fun b_lambda!107269 () Bool)

(assert (=> (not b_lambda!107269) (not d!1066477)))

(declare-fun t!294612 () Bool)

(declare-fun tb!208065 () Bool)

(assert (=> (and b!3624754 (= (toValue!7976 (transformation!5688 anOtherTypeRule!33)) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294612) tb!208065))

(declare-fun result!253498 () Bool)

(assert (=> tb!208065 (= result!253498 (inv!21 (dynLambda!16527 (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890)))) (seqFromList!4237 (originalCharacters!6402 (_1!22162 lt!1252890))))))))

(declare-fun m!4125953 () Bool)

(assert (=> tb!208065 m!4125953))

(assert (=> d!1066477 t!294612))

(declare-fun b_and!265503 () Bool)

(assert (= b_and!265495 (and (=> t!294612 result!253498) b_and!265503)))

(declare-fun tb!208067 () Bool)

(declare-fun t!294614 () Bool)

(assert (=> (and b!3624768 (= (toValue!7976 (transformation!5688 (rule!8452 token!511))) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294614) tb!208067))

(declare-fun result!253500 () Bool)

(assert (= result!253500 result!253498))

(assert (=> d!1066477 t!294614))

(declare-fun b_and!265505 () Bool)

(assert (= b_and!265497 (and (=> t!294614 result!253500) b_and!265505)))

(declare-fun t!294616 () Bool)

(declare-fun tb!208069 () Bool)

(assert (=> (and b!3624758 (= (toValue!7976 (transformation!5688 rule!403)) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294616) tb!208069))

(declare-fun result!253502 () Bool)

(assert (= result!253502 result!253498))

(assert (=> d!1066477 t!294616))

(declare-fun b_and!265507 () Bool)

(assert (= b_and!265499 (and (=> t!294616 result!253502) b_and!265507)))

(declare-fun t!294618 () Bool)

(declare-fun tb!208071 () Bool)

(assert (=> (and b!3624757 (= (toValue!7976 (transformation!5688 (h!43603 rules!3307))) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294618) tb!208071))

(declare-fun result!253504 () Bool)

(assert (= result!253504 result!253498))

(assert (=> d!1066477 t!294618))

(declare-fun b_and!265509 () Bool)

(assert (= b_and!265501 (and (=> t!294618 result!253504) b_and!265509)))

(assert (=> d!1066477 m!4125207))

(declare-fun m!4125955 () Bool)

(assert (=> d!1066477 m!4125955))

(assert (=> d!1066477 m!4125845))

(assert (=> d!1066477 m!4125207))

(declare-fun m!4125957 () Bool)

(assert (=> d!1066477 m!4125957))

(assert (=> d!1066477 m!4125245))

(assert (=> d!1066477 m!4125207))

(declare-fun m!4125959 () Bool)

(assert (=> d!1066477 m!4125959))

(assert (=> b!3624762 d!1066477))

(declare-fun d!1066493 () Bool)

(declare-fun lt!1253118 () Bool)

(assert (=> d!1066493 (= lt!1253118 (select (content!5469 rules!3307) rule!403))))

(declare-fun e!2243999 () Bool)

(assert (=> d!1066493 (= lt!1253118 e!2243999)))

(declare-fun res!1467522 () Bool)

(assert (=> d!1066493 (=> (not res!1467522) (not e!2243999))))

(assert (=> d!1066493 (= res!1467522 ((_ is Cons!38183) rules!3307))))

(assert (=> d!1066493 (= (contains!7442 rules!3307 rule!403) lt!1253118)))

(declare-fun b!3625371 () Bool)

(declare-fun e!2244000 () Bool)

(assert (=> b!3625371 (= e!2243999 e!2244000)))

(declare-fun res!1467523 () Bool)

(assert (=> b!3625371 (=> res!1467523 e!2244000)))

(assert (=> b!3625371 (= res!1467523 (= (h!43603 rules!3307) rule!403))))

(declare-fun b!3625372 () Bool)

(assert (=> b!3625372 (= e!2244000 (contains!7442 (t!294522 rules!3307) rule!403))))

(assert (= (and d!1066493 res!1467522) b!3625371))

(assert (= (and b!3625371 (not res!1467523)) b!3625372))

(assert (=> d!1066493 m!4125711))

(declare-fun m!4125961 () Bool)

(assert (=> d!1066493 m!4125961))

(declare-fun m!4125963 () Bool)

(assert (=> b!3625372 m!4125963))

(assert (=> b!3624779 d!1066493))

(declare-fun d!1066495 () Bool)

(assert (=> d!1066495 (= (isEmpty!22572 suffix!1395) ((_ is Nil!38182) suffix!1395))))

(assert (=> b!3624780 d!1066495))

(declare-fun d!1066497 () Bool)

(declare-fun e!2244013 () Bool)

(assert (=> d!1066497 e!2244013))

(declare-fun res!1467528 () Bool)

(assert (=> d!1066497 (=> (not res!1467528) (not e!2244013))))

(assert (=> d!1066497 (= res!1467528 (isDefined!6239 (getRuleFromTag!1294 thiss!23823 rules!3307 (tag!6410 (rule!8452 (_1!22162 lt!1252890))))))))

(declare-fun lt!1253121 () Unit!54932)

(declare-fun choose!21281 (LexerInterface!5277 List!38307 List!38306 Token!10742) Unit!54932)

(assert (=> d!1066497 (= lt!1253121 (choose!21281 thiss!23823 rules!3307 lt!1252894 (_1!22162 lt!1252890)))))

(assert (=> d!1066497 (rulesInvariant!4674 thiss!23823 rules!3307)))

(assert (=> d!1066497 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1294 thiss!23823 rules!3307 lt!1252894 (_1!22162 lt!1252890)) lt!1253121)))

(declare-fun b!3625394 () Bool)

(declare-fun res!1467529 () Bool)

(assert (=> b!3625394 (=> (not res!1467529) (not e!2244013))))

(assert (=> b!3625394 (= res!1467529 (matchR!5016 (regex!5688 (get!12461 (getRuleFromTag!1294 thiss!23823 rules!3307 (tag!6410 (rule!8452 (_1!22162 lt!1252890)))))) (list!14100 (charsOf!3702 (_1!22162 lt!1252890)))))))

(declare-fun b!3625395 () Bool)

(assert (=> b!3625395 (= e!2244013 (= (rule!8452 (_1!22162 lt!1252890)) (get!12461 (getRuleFromTag!1294 thiss!23823 rules!3307 (tag!6410 (rule!8452 (_1!22162 lt!1252890)))))))))

(assert (= (and d!1066497 res!1467528) b!3625394))

(assert (= (and b!3625394 res!1467529) b!3625395))

(assert (=> d!1066497 m!4125243))

(assert (=> d!1066497 m!4125243))

(declare-fun m!4125969 () Bool)

(assert (=> d!1066497 m!4125969))

(declare-fun m!4125971 () Bool)

(assert (=> d!1066497 m!4125971))

(assert (=> d!1066497 m!4125197))

(assert (=> b!3625394 m!4125249))

(assert (=> b!3625394 m!4125243))

(assert (=> b!3625394 m!4125249))

(assert (=> b!3625394 m!4125259))

(assert (=> b!3625394 m!4125243))

(declare-fun m!4125973 () Bool)

(assert (=> b!3625394 m!4125973))

(assert (=> b!3625394 m!4125259))

(declare-fun m!4125975 () Bool)

(assert (=> b!3625394 m!4125975))

(assert (=> b!3625395 m!4125243))

(assert (=> b!3625395 m!4125243))

(assert (=> b!3625395 m!4125973))

(assert (=> b!3624760 d!1066497))

(declare-fun d!1066499 () Bool)

(assert (=> d!1066499 (= (list!14100 lt!1252881) (list!14103 (c!627213 lt!1252881)))))

(declare-fun bs!571414 () Bool)

(assert (= bs!571414 d!1066499))

(declare-fun m!4125977 () Bool)

(assert (=> bs!571414 m!4125977))

(assert (=> b!3624760 d!1066499))

(declare-fun b!3625405 () Bool)

(declare-fun res!1467540 () Bool)

(declare-fun e!2244020 () Bool)

(assert (=> b!3625405 (=> (not res!1467540) (not e!2244020))))

(assert (=> b!3625405 (= res!1467540 (= (head!7662 lt!1252891) (head!7662 lt!1252894)))))

(declare-fun b!3625407 () Bool)

(declare-fun e!2244021 () Bool)

(assert (=> b!3625407 (= e!2244021 (>= (size!29129 lt!1252894) (size!29129 lt!1252891)))))

(declare-fun b!3625404 () Bool)

(declare-fun e!2244022 () Bool)

(assert (=> b!3625404 (= e!2244022 e!2244020)))

(declare-fun res!1467538 () Bool)

(assert (=> b!3625404 (=> (not res!1467538) (not e!2244020))))

(assert (=> b!3625404 (= res!1467538 (not ((_ is Nil!38182) lt!1252894)))))

(declare-fun b!3625406 () Bool)

(assert (=> b!3625406 (= e!2244020 (isPrefix!3051 (tail!5613 lt!1252891) (tail!5613 lt!1252894)))))

(declare-fun d!1066501 () Bool)

(assert (=> d!1066501 e!2244021))

(declare-fun res!1467539 () Bool)

(assert (=> d!1066501 (=> res!1467539 e!2244021)))

(declare-fun lt!1253124 () Bool)

(assert (=> d!1066501 (= res!1467539 (not lt!1253124))))

(assert (=> d!1066501 (= lt!1253124 e!2244022)))

(declare-fun res!1467541 () Bool)

(assert (=> d!1066501 (=> res!1467541 e!2244022)))

(assert (=> d!1066501 (= res!1467541 ((_ is Nil!38182) lt!1252891))))

(assert (=> d!1066501 (= (isPrefix!3051 lt!1252891 lt!1252894) lt!1253124)))

(assert (= (and d!1066501 (not res!1467541)) b!3625404))

(assert (= (and b!3625404 res!1467538) b!3625405))

(assert (= (and b!3625405 res!1467540) b!3625406))

(assert (= (and d!1066501 (not res!1467539)) b!3625407))

(assert (=> b!3625405 m!4125629))

(declare-fun m!4125979 () Bool)

(assert (=> b!3625405 m!4125979))

(assert (=> b!3625407 m!4125515))

(assert (=> b!3625407 m!4125813))

(assert (=> b!3625406 m!4125633))

(assert (=> b!3625406 m!4125613))

(assert (=> b!3625406 m!4125633))

(assert (=> b!3625406 m!4125613))

(declare-fun m!4125981 () Bool)

(assert (=> b!3625406 m!4125981))

(assert (=> b!3624760 d!1066501))

(declare-fun b!3625418 () Bool)

(declare-fun res!1467547 () Bool)

(declare-fun e!2244027 () Bool)

(assert (=> b!3625418 (=> (not res!1467547) (not e!2244027))))

(declare-fun lt!1253127 () List!38306)

(assert (=> b!3625418 (= res!1467547 (= (size!29129 lt!1253127) (+ (size!29129 lt!1252875) (size!29129 (_2!22162 lt!1252890)))))))

(declare-fun b!3625419 () Bool)

(assert (=> b!3625419 (= e!2244027 (or (not (= (_2!22162 lt!1252890) Nil!38182)) (= lt!1253127 lt!1252875)))))

(declare-fun b!3625416 () Bool)

(declare-fun e!2244028 () List!38306)

(assert (=> b!3625416 (= e!2244028 (_2!22162 lt!1252890))))

(declare-fun b!3625417 () Bool)

(assert (=> b!3625417 (= e!2244028 (Cons!38182 (h!43602 lt!1252875) (++!9504 (t!294521 lt!1252875) (_2!22162 lt!1252890))))))

(declare-fun d!1066503 () Bool)

(assert (=> d!1066503 e!2244027))

(declare-fun res!1467546 () Bool)

(assert (=> d!1066503 (=> (not res!1467546) (not e!2244027))))

(assert (=> d!1066503 (= res!1467546 (= (content!5468 lt!1253127) ((_ map or) (content!5468 lt!1252875) (content!5468 (_2!22162 lt!1252890)))))))

(assert (=> d!1066503 (= lt!1253127 e!2244028)))

(declare-fun c!627326 () Bool)

(assert (=> d!1066503 (= c!627326 ((_ is Nil!38182) lt!1252875))))

(assert (=> d!1066503 (= (++!9504 lt!1252875 (_2!22162 lt!1252890)) lt!1253127)))

(assert (= (and d!1066503 c!627326) b!3625416))

(assert (= (and d!1066503 (not c!627326)) b!3625417))

(assert (= (and d!1066503 res!1467546) b!3625418))

(assert (= (and b!3625418 res!1467547) b!3625419))

(declare-fun m!4125983 () Bool)

(assert (=> b!3625418 m!4125983))

(assert (=> b!3625418 m!4125283))

(declare-fun m!4125985 () Bool)

(assert (=> b!3625418 m!4125985))

(declare-fun m!4125987 () Bool)

(assert (=> b!3625417 m!4125987))

(declare-fun m!4125989 () Bool)

(assert (=> d!1066503 m!4125989))

(declare-fun m!4125991 () Bool)

(assert (=> d!1066503 m!4125991))

(declare-fun m!4125993 () Bool)

(assert (=> d!1066503 m!4125993))

(assert (=> b!3624760 d!1066503))

(declare-fun b!3625422 () Bool)

(declare-fun res!1467549 () Bool)

(declare-fun e!2244029 () Bool)

(assert (=> b!3625422 (=> (not res!1467549) (not e!2244029))))

(declare-fun lt!1253128 () List!38306)

(assert (=> b!3625422 (= res!1467549 (= (size!29129 lt!1253128) (+ (size!29129 lt!1252891) (size!29129 suffix!1395))))))

(declare-fun b!3625423 () Bool)

(assert (=> b!3625423 (= e!2244029 (or (not (= suffix!1395 Nil!38182)) (= lt!1253128 lt!1252891)))))

(declare-fun b!3625420 () Bool)

(declare-fun e!2244030 () List!38306)

(assert (=> b!3625420 (= e!2244030 suffix!1395)))

(declare-fun b!3625421 () Bool)

(assert (=> b!3625421 (= e!2244030 (Cons!38182 (h!43602 lt!1252891) (++!9504 (t!294521 lt!1252891) suffix!1395)))))

(declare-fun d!1066505 () Bool)

(assert (=> d!1066505 e!2244029))

(declare-fun res!1467548 () Bool)

(assert (=> d!1066505 (=> (not res!1467548) (not e!2244029))))

(assert (=> d!1066505 (= res!1467548 (= (content!5468 lt!1253128) ((_ map or) (content!5468 lt!1252891) (content!5468 suffix!1395))))))

(assert (=> d!1066505 (= lt!1253128 e!2244030)))

(declare-fun c!627327 () Bool)

(assert (=> d!1066505 (= c!627327 ((_ is Nil!38182) lt!1252891))))

(assert (=> d!1066505 (= (++!9504 lt!1252891 suffix!1395) lt!1253128)))

(assert (= (and d!1066505 c!627327) b!3625420))

(assert (= (and d!1066505 (not c!627327)) b!3625421))

(assert (= (and d!1066505 res!1467548) b!3625422))

(assert (= (and b!3625422 res!1467549) b!3625423))

(declare-fun m!4125995 () Bool)

(assert (=> b!3625422 m!4125995))

(assert (=> b!3625422 m!4125813))

(declare-fun m!4125997 () Bool)

(assert (=> b!3625422 m!4125997))

(declare-fun m!4125999 () Bool)

(assert (=> b!3625421 m!4125999))

(declare-fun m!4126001 () Bool)

(assert (=> d!1066505 m!4126001))

(declare-fun m!4126003 () Bool)

(assert (=> d!1066505 m!4126003))

(declare-fun m!4126005 () Bool)

(assert (=> d!1066505 m!4126005))

(assert (=> b!3624760 d!1066505))

(declare-fun d!1066507 () Bool)

(assert (=> d!1066507 (= (get!12460 lt!1252876) (v!37779 lt!1252876))))

(assert (=> b!3624760 d!1066507))

(declare-fun d!1066509 () Bool)

(declare-fun isEmpty!22577 (Option!8007) Bool)

(assert (=> d!1066509 (= (isDefined!6239 lt!1252873) (not (isEmpty!22577 lt!1252873)))))

(declare-fun bs!571415 () Bool)

(assert (= bs!571415 d!1066509))

(declare-fun m!4126007 () Bool)

(assert (=> bs!571415 m!4126007))

(assert (=> b!3624760 d!1066509))

(declare-fun d!1066511 () Bool)

(assert (=> d!1066511 (isPrefix!3051 lt!1252875 (++!9504 lt!1252875 (_2!22162 lt!1252890)))))

(declare-fun lt!1253131 () Unit!54932)

(declare-fun choose!21282 (List!38306 List!38306) Unit!54932)

(assert (=> d!1066511 (= lt!1253131 (choose!21282 lt!1252875 (_2!22162 lt!1252890)))))

(assert (=> d!1066511 (= (lemmaConcatTwoListThenFirstIsPrefix!1972 lt!1252875 (_2!22162 lt!1252890)) lt!1253131)))

(declare-fun bs!571416 () Bool)

(assert (= bs!571416 d!1066511))

(assert (=> bs!571416 m!4125231))

(assert (=> bs!571416 m!4125231))

(assert (=> bs!571416 m!4125233))

(declare-fun m!4126009 () Bool)

(assert (=> bs!571416 m!4126009))

(assert (=> b!3624760 d!1066511))

(declare-fun b!3625425 () Bool)

(declare-fun res!1467552 () Bool)

(declare-fun e!2244031 () Bool)

(assert (=> b!3625425 (=> (not res!1467552) (not e!2244031))))

(assert (=> b!3625425 (= res!1467552 (= (head!7662 lt!1252875) (head!7662 (++!9504 lt!1252875 (_2!22162 lt!1252890)))))))

(declare-fun b!3625427 () Bool)

(declare-fun e!2244032 () Bool)

(assert (=> b!3625427 (= e!2244032 (>= (size!29129 (++!9504 lt!1252875 (_2!22162 lt!1252890))) (size!29129 lt!1252875)))))

(declare-fun b!3625424 () Bool)

(declare-fun e!2244033 () Bool)

(assert (=> b!3625424 (= e!2244033 e!2244031)))

(declare-fun res!1467550 () Bool)

(assert (=> b!3625424 (=> (not res!1467550) (not e!2244031))))

(assert (=> b!3625424 (= res!1467550 (not ((_ is Nil!38182) (++!9504 lt!1252875 (_2!22162 lt!1252890)))))))

(declare-fun b!3625426 () Bool)

(assert (=> b!3625426 (= e!2244031 (isPrefix!3051 (tail!5613 lt!1252875) (tail!5613 (++!9504 lt!1252875 (_2!22162 lt!1252890)))))))

(declare-fun d!1066513 () Bool)

(assert (=> d!1066513 e!2244032))

(declare-fun res!1467551 () Bool)

(assert (=> d!1066513 (=> res!1467551 e!2244032)))

(declare-fun lt!1253132 () Bool)

(assert (=> d!1066513 (= res!1467551 (not lt!1253132))))

(assert (=> d!1066513 (= lt!1253132 e!2244033)))

(declare-fun res!1467553 () Bool)

(assert (=> d!1066513 (=> res!1467553 e!2244033)))

(assert (=> d!1066513 (= res!1467553 ((_ is Nil!38182) lt!1252875))))

(assert (=> d!1066513 (= (isPrefix!3051 lt!1252875 (++!9504 lt!1252875 (_2!22162 lt!1252890))) lt!1253132)))

(assert (= (and d!1066513 (not res!1467553)) b!3625424))

(assert (= (and b!3625424 res!1467550) b!3625425))

(assert (= (and b!3625425 res!1467552) b!3625426))

(assert (= (and d!1066513 (not res!1467551)) b!3625427))

(assert (=> b!3625425 m!4125427))

(assert (=> b!3625425 m!4125231))

(declare-fun m!4126011 () Bool)

(assert (=> b!3625425 m!4126011))

(assert (=> b!3625427 m!4125231))

(declare-fun m!4126013 () Bool)

(assert (=> b!3625427 m!4126013))

(assert (=> b!3625427 m!4125283))

(assert (=> b!3625426 m!4125431))

(assert (=> b!3625426 m!4125231))

(declare-fun m!4126015 () Bool)

(assert (=> b!3625426 m!4126015))

(assert (=> b!3625426 m!4125431))

(assert (=> b!3625426 m!4126015))

(declare-fun m!4126017 () Bool)

(assert (=> b!3625426 m!4126017))

(assert (=> b!3624760 d!1066513))

(declare-fun b!3625437 () Bool)

(declare-fun e!2244039 () Bool)

(declare-fun lt!1253183 () Token!10742)

(assert (=> b!3625437 (= e!2244039 (= (rule!8452 lt!1253183) (get!12461 (getRuleFromTag!1294 thiss!23823 rules!3307 (tag!6410 (rule!8452 lt!1253183))))))))

(declare-fun b!3625436 () Bool)

(declare-fun res!1467558 () Bool)

(assert (=> b!3625436 (=> (not res!1467558) (not e!2244039))))

(assert (=> b!3625436 (= res!1467558 (matchR!5016 (regex!5688 (get!12461 (getRuleFromTag!1294 thiss!23823 rules!3307 (tag!6410 (rule!8452 lt!1253183))))) (list!14100 (charsOf!3702 lt!1253183))))))

(declare-fun b!3625438 () Bool)

(declare-fun e!2244038 () Unit!54932)

(declare-fun Unit!54938 () Unit!54932)

(assert (=> b!3625438 (= e!2244038 Unit!54938)))

(declare-fun lt!1253177 () List!38306)

(assert (=> b!3625438 (= lt!1253177 (++!9504 lt!1252891 suffix!1395))))

(declare-fun lt!1253171 () Unit!54932)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!502 (LexerInterface!5277 Rule!11176 List!38307 List!38306) Unit!54932)

(assert (=> b!3625438 (= lt!1253171 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!502 thiss!23823 (rule!8452 lt!1253183) rules!3307 lt!1253177))))

(assert (=> b!3625438 (isEmpty!22576 (maxPrefixOneRule!1951 thiss!23823 (rule!8452 lt!1253183) lt!1253177))))

(declare-fun lt!1253168 () Unit!54932)

(assert (=> b!3625438 (= lt!1253168 lt!1253171)))

(declare-fun lt!1253175 () List!38306)

(assert (=> b!3625438 (= lt!1253175 (list!14100 (charsOf!3702 lt!1253183)))))

(declare-fun lt!1253180 () Unit!54932)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!490 (LexerInterface!5277 Rule!11176 List!38306 List!38306) Unit!54932)

(assert (=> b!3625438 (= lt!1253180 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!490 thiss!23823 (rule!8452 lt!1253183) lt!1253175 (++!9504 lt!1252891 suffix!1395)))))

(assert (=> b!3625438 (not (matchR!5016 (regex!5688 (rule!8452 lt!1253183)) lt!1253175))))

(declare-fun lt!1253176 () Unit!54932)

(assert (=> b!3625438 (= lt!1253176 lt!1253180)))

(assert (=> b!3625438 false))

(declare-fun d!1066515 () Bool)

(assert (=> d!1066515 (isDefined!6238 (maxPrefix!2811 thiss!23823 rules!3307 (++!9504 lt!1252891 suffix!1395)))))

(declare-fun lt!1253173 () Unit!54932)

(assert (=> d!1066515 (= lt!1253173 e!2244038)))

(declare-fun c!627330 () Bool)

(assert (=> d!1066515 (= c!627330 (isEmpty!22576 (maxPrefix!2811 thiss!23823 rules!3307 (++!9504 lt!1252891 suffix!1395))))))

(declare-fun lt!1253170 () Unit!54932)

(declare-fun lt!1253179 () Unit!54932)

(assert (=> d!1066515 (= lt!1253170 lt!1253179)))

(assert (=> d!1066515 e!2244039))

(declare-fun res!1467559 () Bool)

(assert (=> d!1066515 (=> (not res!1467559) (not e!2244039))))

(assert (=> d!1066515 (= res!1467559 (isDefined!6239 (getRuleFromTag!1294 thiss!23823 rules!3307 (tag!6410 (rule!8452 lt!1253183)))))))

(assert (=> d!1066515 (= lt!1253179 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1294 thiss!23823 rules!3307 lt!1252891 lt!1253183))))

(declare-fun lt!1253182 () Unit!54932)

(declare-fun lt!1253178 () Unit!54932)

(assert (=> d!1066515 (= lt!1253182 lt!1253178)))

(declare-fun lt!1253169 () List!38306)

(assert (=> d!1066515 (isPrefix!3051 lt!1253169 (++!9504 lt!1252891 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!466 (List!38306 List!38306 List!38306) Unit!54932)

(assert (=> d!1066515 (= lt!1253178 (lemmaPrefixStaysPrefixWhenAddingToSuffix!466 lt!1253169 lt!1252891 suffix!1395))))

(assert (=> d!1066515 (= lt!1253169 (list!14100 (charsOf!3702 lt!1253183)))))

(declare-fun lt!1253181 () Unit!54932)

(declare-fun lt!1253174 () Unit!54932)

(assert (=> d!1066515 (= lt!1253181 lt!1253174)))

(declare-fun lt!1253167 () List!38306)

(declare-fun lt!1253172 () List!38306)

(assert (=> d!1066515 (isPrefix!3051 lt!1253167 (++!9504 lt!1253167 lt!1253172))))

(assert (=> d!1066515 (= lt!1253174 (lemmaConcatTwoListThenFirstIsPrefix!1972 lt!1253167 lt!1253172))))

(assert (=> d!1066515 (= lt!1253172 (_2!22162 (get!12460 (maxPrefix!2811 thiss!23823 rules!3307 lt!1252891))))))

(assert (=> d!1066515 (= lt!1253167 (list!14100 (charsOf!3702 lt!1253183)))))

(declare-datatypes ((List!38311 0))(
  ( (Nil!38187) (Cons!38187 (h!43607 Token!10742) (t!294646 List!38311)) )
))
(declare-fun head!7664 (List!38311) Token!10742)

(declare-datatypes ((IArray!23299 0))(
  ( (IArray!23300 (innerList!11707 List!38311)) )
))
(declare-datatypes ((Conc!11647 0))(
  ( (Node!11647 (left!29813 Conc!11647) (right!30143 Conc!11647) (csize!23524 Int) (cheight!11858 Int)) (Leaf!18102 (xs!14849 IArray!23299) (csize!23525 Int)) (Empty!11647) )
))
(declare-datatypes ((BalanceConc!22908 0))(
  ( (BalanceConc!22909 (c!627343 Conc!11647)) )
))
(declare-fun list!14104 (BalanceConc!22908) List!38311)

(declare-datatypes ((tuple2!38064 0))(
  ( (tuple2!38065 (_1!22166 BalanceConc!22908) (_2!22166 BalanceConc!22904)) )
))
(declare-fun lex!2498 (LexerInterface!5277 List!38307 BalanceConc!22904) tuple2!38064)

(assert (=> d!1066515 (= lt!1253183 (head!7664 (list!14104 (_1!22166 (lex!2498 thiss!23823 rules!3307 (seqFromList!4237 lt!1252891))))))))

(assert (=> d!1066515 (not (isEmpty!22573 rules!3307))))

(assert (=> d!1066515 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!957 thiss!23823 rules!3307 lt!1252891 suffix!1395) lt!1253173)))

(declare-fun b!3625439 () Bool)

(declare-fun Unit!54939 () Unit!54932)

(assert (=> b!3625439 (= e!2244038 Unit!54939)))

(assert (= (and d!1066515 res!1467559) b!3625436))

(assert (= (and b!3625436 res!1467558) b!3625437))

(assert (= (and d!1066515 c!627330) b!3625438))

(assert (= (and d!1066515 (not c!627330)) b!3625439))

(declare-fun m!4126019 () Bool)

(assert (=> b!3625437 m!4126019))

(assert (=> b!3625437 m!4126019))

(declare-fun m!4126021 () Bool)

(assert (=> b!3625437 m!4126021))

(declare-fun m!4126023 () Bool)

(assert (=> b!3625436 m!4126023))

(declare-fun m!4126025 () Bool)

(assert (=> b!3625436 m!4126025))

(assert (=> b!3625436 m!4126023))

(assert (=> b!3625436 m!4126019))

(assert (=> b!3625436 m!4126019))

(assert (=> b!3625436 m!4126021))

(assert (=> b!3625436 m!4126025))

(declare-fun m!4126027 () Bool)

(assert (=> b!3625436 m!4126027))

(assert (=> b!3625438 m!4126023))

(assert (=> b!3625438 m!4126025))

(assert (=> b!3625438 m!4126023))

(declare-fun m!4126029 () Bool)

(assert (=> b!3625438 m!4126029))

(assert (=> b!3625438 m!4125239))

(declare-fun m!4126031 () Bool)

(assert (=> b!3625438 m!4126031))

(declare-fun m!4126033 () Bool)

(assert (=> b!3625438 m!4126033))

(declare-fun m!4126035 () Bool)

(assert (=> b!3625438 m!4126035))

(assert (=> b!3625438 m!4125239))

(assert (=> b!3625438 m!4126033))

(declare-fun m!4126037 () Bool)

(assert (=> b!3625438 m!4126037))

(declare-fun m!4126039 () Bool)

(assert (=> d!1066515 m!4126039))

(declare-fun m!4126041 () Bool)

(assert (=> d!1066515 m!4126041))

(assert (=> d!1066515 m!4125171))

(declare-fun m!4126043 () Bool)

(assert (=> d!1066515 m!4126043))

(assert (=> d!1066515 m!4126023))

(assert (=> d!1066515 m!4126025))

(declare-fun m!4126045 () Bool)

(assert (=> d!1066515 m!4126045))

(declare-fun m!4126047 () Bool)

(assert (=> d!1066515 m!4126047))

(declare-fun m!4126049 () Bool)

(assert (=> d!1066515 m!4126049))

(assert (=> d!1066515 m!4126039))

(declare-fun m!4126051 () Bool)

(assert (=> d!1066515 m!4126051))

(declare-fun m!4126053 () Bool)

(assert (=> d!1066515 m!4126053))

(assert (=> d!1066515 m!4126049))

(declare-fun m!4126055 () Bool)

(assert (=> d!1066515 m!4126055))

(assert (=> d!1066515 m!4125171))

(declare-fun m!4126057 () Bool)

(assert (=> d!1066515 m!4126057))

(assert (=> d!1066515 m!4125239))

(declare-fun m!4126059 () Bool)

(assert (=> d!1066515 m!4126059))

(assert (=> d!1066515 m!4126023))

(declare-fun m!4126061 () Bool)

(assert (=> d!1066515 m!4126061))

(assert (=> d!1066515 m!4126019))

(assert (=> d!1066515 m!4125221))

(assert (=> d!1066515 m!4125239))

(assert (=> d!1066515 m!4126039))

(assert (=> d!1066515 m!4126045))

(declare-fun m!4126063 () Bool)

(assert (=> d!1066515 m!4126063))

(assert (=> d!1066515 m!4126019))

(declare-fun m!4126065 () Bool)

(assert (=> d!1066515 m!4126065))

(assert (=> d!1066515 m!4126061))

(declare-fun m!4126067 () Bool)

(assert (=> d!1066515 m!4126067))

(assert (=> d!1066515 m!4125239))

(assert (=> b!3624760 d!1066515))

(declare-fun b!3625441 () Bool)

(declare-fun res!1467562 () Bool)

(declare-fun e!2244040 () Bool)

(assert (=> b!3625441 (=> (not res!1467562) (not e!2244040))))

(assert (=> b!3625441 (= res!1467562 (= (head!7662 lt!1252875) (head!7662 lt!1252894)))))

(declare-fun b!3625443 () Bool)

(declare-fun e!2244041 () Bool)

(assert (=> b!3625443 (= e!2244041 (>= (size!29129 lt!1252894) (size!29129 lt!1252875)))))

(declare-fun b!3625440 () Bool)

(declare-fun e!2244042 () Bool)

(assert (=> b!3625440 (= e!2244042 e!2244040)))

(declare-fun res!1467560 () Bool)

(assert (=> b!3625440 (=> (not res!1467560) (not e!2244040))))

(assert (=> b!3625440 (= res!1467560 (not ((_ is Nil!38182) lt!1252894)))))

(declare-fun b!3625442 () Bool)

(assert (=> b!3625442 (= e!2244040 (isPrefix!3051 (tail!5613 lt!1252875) (tail!5613 lt!1252894)))))

(declare-fun d!1066517 () Bool)

(assert (=> d!1066517 e!2244041))

(declare-fun res!1467561 () Bool)

(assert (=> d!1066517 (=> res!1467561 e!2244041)))

(declare-fun lt!1253184 () Bool)

(assert (=> d!1066517 (= res!1467561 (not lt!1253184))))

(assert (=> d!1066517 (= lt!1253184 e!2244042)))

(declare-fun res!1467563 () Bool)

(assert (=> d!1066517 (=> res!1467563 e!2244042)))

(assert (=> d!1066517 (= res!1467563 ((_ is Nil!38182) lt!1252875))))

(assert (=> d!1066517 (= (isPrefix!3051 lt!1252875 lt!1252894) lt!1253184)))

(assert (= (and d!1066517 (not res!1467563)) b!3625440))

(assert (= (and b!3625440 res!1467560) b!3625441))

(assert (= (and b!3625441 res!1467562) b!3625442))

(assert (= (and d!1066517 (not res!1467561)) b!3625443))

(assert (=> b!3625441 m!4125427))

(assert (=> b!3625441 m!4125979))

(assert (=> b!3625443 m!4125515))

(assert (=> b!3625443 m!4125283))

(assert (=> b!3625442 m!4125431))

(assert (=> b!3625442 m!4125613))

(assert (=> b!3625442 m!4125431))

(assert (=> b!3625442 m!4125613))

(declare-fun m!4126069 () Bool)

(assert (=> b!3625442 m!4126069))

(assert (=> b!3624760 d!1066517))

(declare-fun b!3625456 () Bool)

(declare-fun e!2244053 () Bool)

(declare-fun lt!1253192 () Option!8007)

(assert (=> b!3625456 (= e!2244053 (= (tag!6410 (get!12461 lt!1253192)) (tag!6410 (rule!8452 (_1!22162 lt!1252890)))))))

(declare-fun b!3625457 () Bool)

(declare-fun e!2244054 () Option!8007)

(assert (=> b!3625457 (= e!2244054 None!8006)))

(declare-fun b!3625458 () Bool)

(declare-fun lt!1253193 () Unit!54932)

(declare-fun lt!1253191 () Unit!54932)

(assert (=> b!3625458 (= lt!1253193 lt!1253191)))

(assert (=> b!3625458 (rulesInvariant!4674 thiss!23823 (t!294522 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!545 (LexerInterface!5277 Rule!11176 List!38307) Unit!54932)

(assert (=> b!3625458 (= lt!1253191 (lemmaInvariantOnRulesThenOnTail!545 thiss!23823 (h!43603 rules!3307) (t!294522 rules!3307)))))

(assert (=> b!3625458 (= e!2244054 (getRuleFromTag!1294 thiss!23823 (t!294522 rules!3307) (tag!6410 (rule!8452 (_1!22162 lt!1252890)))))))

(declare-fun b!3625459 () Bool)

(declare-fun e!2244051 () Bool)

(assert (=> b!3625459 (= e!2244051 e!2244053)))

(declare-fun res!1467569 () Bool)

(assert (=> b!3625459 (=> (not res!1467569) (not e!2244053))))

(assert (=> b!3625459 (= res!1467569 (contains!7442 rules!3307 (get!12461 lt!1253192)))))

(declare-fun b!3625460 () Bool)

(declare-fun e!2244052 () Option!8007)

(assert (=> b!3625460 (= e!2244052 (Some!8006 (h!43603 rules!3307)))))

(declare-fun d!1066519 () Bool)

(assert (=> d!1066519 e!2244051))

(declare-fun res!1467568 () Bool)

(assert (=> d!1066519 (=> res!1467568 e!2244051)))

(assert (=> d!1066519 (= res!1467568 (isEmpty!22577 lt!1253192))))

(assert (=> d!1066519 (= lt!1253192 e!2244052)))

(declare-fun c!627336 () Bool)

(assert (=> d!1066519 (= c!627336 (and ((_ is Cons!38183) rules!3307) (= (tag!6410 (h!43603 rules!3307)) (tag!6410 (rule!8452 (_1!22162 lt!1252890))))))))

(assert (=> d!1066519 (rulesInvariant!4674 thiss!23823 rules!3307)))

(assert (=> d!1066519 (= (getRuleFromTag!1294 thiss!23823 rules!3307 (tag!6410 (rule!8452 (_1!22162 lt!1252890)))) lt!1253192)))

(declare-fun b!3625461 () Bool)

(assert (=> b!3625461 (= e!2244052 e!2244054)))

(declare-fun c!627335 () Bool)

(assert (=> b!3625461 (= c!627335 (and ((_ is Cons!38183) rules!3307) (not (= (tag!6410 (h!43603 rules!3307)) (tag!6410 (rule!8452 (_1!22162 lt!1252890)))))))))

(assert (= (and d!1066519 c!627336) b!3625460))

(assert (= (and d!1066519 (not c!627336)) b!3625461))

(assert (= (and b!3625461 c!627335) b!3625458))

(assert (= (and b!3625461 (not c!627335)) b!3625457))

(assert (= (and d!1066519 (not res!1467568)) b!3625459))

(assert (= (and b!3625459 res!1467569) b!3625456))

(declare-fun m!4126071 () Bool)

(assert (=> b!3625456 m!4126071))

(declare-fun m!4126073 () Bool)

(assert (=> b!3625458 m!4126073))

(declare-fun m!4126075 () Bool)

(assert (=> b!3625458 m!4126075))

(declare-fun m!4126077 () Bool)

(assert (=> b!3625458 m!4126077))

(assert (=> b!3625459 m!4126071))

(assert (=> b!3625459 m!4126071))

(declare-fun m!4126079 () Bool)

(assert (=> b!3625459 m!4126079))

(declare-fun m!4126081 () Bool)

(assert (=> d!1066519 m!4126081))

(assert (=> d!1066519 m!4125197))

(assert (=> b!3624760 d!1066519))

(assert (=> b!3624760 d!1066399))

(declare-fun d!1066521 () Bool)

(assert (=> d!1066521 (isPrefix!3051 lt!1252891 (++!9504 lt!1252891 suffix!1395))))

(declare-fun lt!1253194 () Unit!54932)

(assert (=> d!1066521 (= lt!1253194 (choose!21282 lt!1252891 suffix!1395))))

(assert (=> d!1066521 (= (lemmaConcatTwoListThenFirstIsPrefix!1972 lt!1252891 suffix!1395) lt!1253194)))

(declare-fun bs!571417 () Bool)

(assert (= bs!571417 d!1066521))

(assert (=> bs!571417 m!4125239))

(assert (=> bs!571417 m!4125239))

(declare-fun m!4126083 () Bool)

(assert (=> bs!571417 m!4126083))

(declare-fun m!4126085 () Bool)

(assert (=> bs!571417 m!4126085))

(assert (=> b!3624760 d!1066521))

(declare-fun b!3625462 () Bool)

(declare-fun e!2244055 () Bool)

(declare-fun lt!1253198 () Option!8006)

(assert (=> b!3625462 (= e!2244055 (contains!7442 rules!3307 (rule!8452 (_1!22162 (get!12460 lt!1253198)))))))

(declare-fun b!3625463 () Bool)

(declare-fun res!1467574 () Bool)

(assert (=> b!3625463 (=> (not res!1467574) (not e!2244055))))

(assert (=> b!3625463 (= res!1467574 (matchR!5016 (regex!5688 (rule!8452 (_1!22162 (get!12460 lt!1253198)))) (list!14100 (charsOf!3702 (_1!22162 (get!12460 lt!1253198))))))))

(declare-fun b!3625464 () Bool)

(declare-fun e!2244056 () Bool)

(assert (=> b!3625464 (= e!2244056 e!2244055)))

(declare-fun res!1467573 () Bool)

(assert (=> b!3625464 (=> (not res!1467573) (not e!2244055))))

(assert (=> b!3625464 (= res!1467573 (isDefined!6238 lt!1253198))))

(declare-fun b!3625465 () Bool)

(declare-fun e!2244057 () Option!8006)

(declare-fun lt!1253197 () Option!8006)

(declare-fun lt!1253195 () Option!8006)

(assert (=> b!3625465 (= e!2244057 (ite (and ((_ is None!8005) lt!1253197) ((_ is None!8005) lt!1253195)) None!8005 (ite ((_ is None!8005) lt!1253195) lt!1253197 (ite ((_ is None!8005) lt!1253197) lt!1253195 (ite (>= (size!29127 (_1!22162 (v!37779 lt!1253197))) (size!29127 (_1!22162 (v!37779 lt!1253195)))) lt!1253197 lt!1253195)))))))

(declare-fun call!262280 () Option!8006)

(assert (=> b!3625465 (= lt!1253197 call!262280)))

(assert (=> b!3625465 (= lt!1253195 (maxPrefix!2811 thiss!23823 (t!294522 rules!3307) lt!1252894))))

(declare-fun b!3625466 () Bool)

(declare-fun res!1467572 () Bool)

(assert (=> b!3625466 (=> (not res!1467572) (not e!2244055))))

(assert (=> b!3625466 (= res!1467572 (< (size!29129 (_2!22162 (get!12460 lt!1253198))) (size!29129 lt!1252894)))))

(declare-fun d!1066523 () Bool)

(assert (=> d!1066523 e!2244056))

(declare-fun res!1467571 () Bool)

(assert (=> d!1066523 (=> res!1467571 e!2244056)))

(assert (=> d!1066523 (= res!1467571 (isEmpty!22576 lt!1253198))))

(assert (=> d!1066523 (= lt!1253198 e!2244057)))

(declare-fun c!627337 () Bool)

(assert (=> d!1066523 (= c!627337 (and ((_ is Cons!38183) rules!3307) ((_ is Nil!38183) (t!294522 rules!3307))))))

(declare-fun lt!1253199 () Unit!54932)

(declare-fun lt!1253196 () Unit!54932)

(assert (=> d!1066523 (= lt!1253199 lt!1253196)))

(assert (=> d!1066523 (isPrefix!3051 lt!1252894 lt!1252894)))

(assert (=> d!1066523 (= lt!1253196 (lemmaIsPrefixRefl!1934 lt!1252894 lt!1252894))))

(assert (=> d!1066523 (rulesValidInductive!1999 thiss!23823 rules!3307)))

(assert (=> d!1066523 (= (maxPrefix!2811 thiss!23823 rules!3307 lt!1252894) lt!1253198)))

(declare-fun b!3625467 () Bool)

(declare-fun res!1467570 () Bool)

(assert (=> b!3625467 (=> (not res!1467570) (not e!2244055))))

(assert (=> b!3625467 (= res!1467570 (= (value!182568 (_1!22162 (get!12460 lt!1253198))) (apply!9190 (transformation!5688 (rule!8452 (_1!22162 (get!12460 lt!1253198)))) (seqFromList!4237 (originalCharacters!6402 (_1!22162 (get!12460 lt!1253198)))))))))

(declare-fun b!3625468 () Bool)

(declare-fun res!1467576 () Bool)

(assert (=> b!3625468 (=> (not res!1467576) (not e!2244055))))

(assert (=> b!3625468 (= res!1467576 (= (list!14100 (charsOf!3702 (_1!22162 (get!12460 lt!1253198)))) (originalCharacters!6402 (_1!22162 (get!12460 lt!1253198)))))))

(declare-fun bm!262275 () Bool)

(assert (=> bm!262275 (= call!262280 (maxPrefixOneRule!1951 thiss!23823 (h!43603 rules!3307) lt!1252894))))

(declare-fun b!3625469 () Bool)

(assert (=> b!3625469 (= e!2244057 call!262280)))

(declare-fun b!3625470 () Bool)

(declare-fun res!1467575 () Bool)

(assert (=> b!3625470 (=> (not res!1467575) (not e!2244055))))

(assert (=> b!3625470 (= res!1467575 (= (++!9504 (list!14100 (charsOf!3702 (_1!22162 (get!12460 lt!1253198)))) (_2!22162 (get!12460 lt!1253198))) lt!1252894))))

(assert (= (and d!1066523 c!627337) b!3625469))

(assert (= (and d!1066523 (not c!627337)) b!3625465))

(assert (= (or b!3625469 b!3625465) bm!262275))

(assert (= (and d!1066523 (not res!1467571)) b!3625464))

(assert (= (and b!3625464 res!1467573) b!3625468))

(assert (= (and b!3625468 res!1467576) b!3625466))

(assert (= (and b!3625466 res!1467572) b!3625470))

(assert (= (and b!3625470 res!1467575) b!3625467))

(assert (= (and b!3625467 res!1467570) b!3625463))

(assert (= (and b!3625463 res!1467574) b!3625462))

(declare-fun m!4126087 () Bool)

(assert (=> b!3625465 m!4126087))

(declare-fun m!4126089 () Bool)

(assert (=> b!3625463 m!4126089))

(declare-fun m!4126091 () Bool)

(assert (=> b!3625463 m!4126091))

(assert (=> b!3625463 m!4126091))

(declare-fun m!4126093 () Bool)

(assert (=> b!3625463 m!4126093))

(assert (=> b!3625463 m!4126093))

(declare-fun m!4126095 () Bool)

(assert (=> b!3625463 m!4126095))

(declare-fun m!4126097 () Bool)

(assert (=> b!3625464 m!4126097))

(assert (=> b!3625468 m!4126089))

(assert (=> b!3625468 m!4126091))

(assert (=> b!3625468 m!4126091))

(assert (=> b!3625468 m!4126093))

(assert (=> b!3625470 m!4126089))

(assert (=> b!3625470 m!4126091))

(assert (=> b!3625470 m!4126091))

(assert (=> b!3625470 m!4126093))

(assert (=> b!3625470 m!4126093))

(declare-fun m!4126099 () Bool)

(assert (=> b!3625470 m!4126099))

(assert (=> b!3625466 m!4126089))

(declare-fun m!4126101 () Bool)

(assert (=> b!3625466 m!4126101))

(assert (=> b!3625466 m!4125515))

(declare-fun m!4126103 () Bool)

(assert (=> bm!262275 m!4126103))

(assert (=> b!3625467 m!4126089))

(declare-fun m!4126105 () Bool)

(assert (=> b!3625467 m!4126105))

(assert (=> b!3625467 m!4126105))

(declare-fun m!4126107 () Bool)

(assert (=> b!3625467 m!4126107))

(declare-fun m!4126109 () Bool)

(assert (=> d!1066523 m!4126109))

(declare-fun m!4126111 () Bool)

(assert (=> d!1066523 m!4126111))

(declare-fun m!4126113 () Bool)

(assert (=> d!1066523 m!4126113))

(assert (=> d!1066523 m!4125827))

(assert (=> b!3625462 m!4126089))

(declare-fun m!4126115 () Bool)

(assert (=> b!3625462 m!4126115))

(assert (=> b!3624760 d!1066523))

(declare-fun d!1066525 () Bool)

(assert (=> d!1066525 (= (isEmpty!22573 rules!3307) ((_ is Nil!38183) rules!3307))))

(assert (=> b!3624781 d!1066525))

(declare-fun d!1066527 () Bool)

(assert (=> d!1066527 (= (inv!51584 (tag!6410 rule!403)) (= (mod (str.len (value!182542 (tag!6410 rule!403))) 2) 0))))

(assert (=> b!3624767 d!1066527))

(declare-fun d!1066529 () Bool)

(declare-fun res!1467577 () Bool)

(declare-fun e!2244058 () Bool)

(assert (=> d!1066529 (=> (not res!1467577) (not e!2244058))))

(assert (=> d!1066529 (= res!1467577 (semiInverseModEq!2413 (toChars!7835 (transformation!5688 rule!403)) (toValue!7976 (transformation!5688 rule!403))))))

(assert (=> d!1066529 (= (inv!51587 (transformation!5688 rule!403)) e!2244058)))

(declare-fun b!3625471 () Bool)

(assert (=> b!3625471 (= e!2244058 (equivClasses!2312 (toChars!7835 (transformation!5688 rule!403)) (toValue!7976 (transformation!5688 rule!403))))))

(assert (= (and d!1066529 res!1467577) b!3625471))

(declare-fun m!4126117 () Bool)

(assert (=> d!1066529 m!4126117))

(declare-fun m!4126119 () Bool)

(assert (=> b!3625471 m!4126119))

(assert (=> b!3624767 d!1066529))

(declare-fun d!1066531 () Bool)

(declare-fun lt!1253200 () Bool)

(assert (=> d!1066531 (= lt!1253200 (select (content!5468 (usedCharacters!902 (regex!5688 anOtherTypeRule!33))) lt!1252882))))

(declare-fun e!2244059 () Bool)

(assert (=> d!1066531 (= lt!1253200 e!2244059)))

(declare-fun res!1467578 () Bool)

(assert (=> d!1066531 (=> (not res!1467578) (not e!2244059))))

(assert (=> d!1066531 (= res!1467578 ((_ is Cons!38182) (usedCharacters!902 (regex!5688 anOtherTypeRule!33))))))

(assert (=> d!1066531 (= (contains!7441 (usedCharacters!902 (regex!5688 anOtherTypeRule!33)) lt!1252882) lt!1253200)))

(declare-fun b!3625472 () Bool)

(declare-fun e!2244060 () Bool)

(assert (=> b!3625472 (= e!2244059 e!2244060)))

(declare-fun res!1467579 () Bool)

(assert (=> b!3625472 (=> res!1467579 e!2244060)))

(assert (=> b!3625472 (= res!1467579 (= (h!43602 (usedCharacters!902 (regex!5688 anOtherTypeRule!33))) lt!1252882))))

(declare-fun b!3625473 () Bool)

(assert (=> b!3625473 (= e!2244060 (contains!7441 (t!294521 (usedCharacters!902 (regex!5688 anOtherTypeRule!33))) lt!1252882))))

(assert (= (and d!1066531 res!1467578) b!3625472))

(assert (= (and b!3625472 (not res!1467579)) b!3625473))

(assert (=> d!1066531 m!4125179))

(declare-fun m!4126121 () Bool)

(assert (=> d!1066531 m!4126121))

(declare-fun m!4126123 () Bool)

(assert (=> d!1066531 m!4126123))

(declare-fun m!4126125 () Bool)

(assert (=> b!3625473 m!4126125))

(assert (=> b!3624763 d!1066531))

(declare-fun bm!262276 () Bool)

(declare-fun call!262281 () List!38306)

(declare-fun c!627338 () Bool)

(assert (=> bm!262276 (= call!262281 (usedCharacters!902 (ite c!627338 (regOne!21407 (regex!5688 anOtherTypeRule!33)) (regTwo!21406 (regex!5688 anOtherTypeRule!33)))))))

(declare-fun bm!262277 () Bool)

(declare-fun call!262284 () List!38306)

(declare-fun call!262283 () List!38306)

(assert (=> bm!262277 (= call!262284 call!262283)))

(declare-fun b!3625474 () Bool)

(declare-fun e!2244063 () List!38306)

(declare-fun e!2244062 () List!38306)

(assert (=> b!3625474 (= e!2244063 e!2244062)))

(assert (=> b!3625474 (= c!627338 ((_ is Union!10447) (regex!5688 anOtherTypeRule!33)))))

(declare-fun b!3625475 () Bool)

(declare-fun c!627339 () Bool)

(assert (=> b!3625475 (= c!627339 ((_ is Star!10447) (regex!5688 anOtherTypeRule!33)))))

(declare-fun e!2244061 () List!38306)

(assert (=> b!3625475 (= e!2244061 e!2244063)))

(declare-fun b!3625476 () Bool)

(assert (=> b!3625476 (= e!2244063 call!262283)))

(declare-fun b!3625477 () Bool)

(declare-fun e!2244064 () List!38306)

(assert (=> b!3625477 (= e!2244064 e!2244061)))

(declare-fun c!627341 () Bool)

(assert (=> b!3625477 (= c!627341 ((_ is ElementMatch!10447) (regex!5688 anOtherTypeRule!33)))))

(declare-fun b!3625478 () Bool)

(assert (=> b!3625478 (= e!2244061 (Cons!38182 (c!627212 (regex!5688 anOtherTypeRule!33)) Nil!38182))))

(declare-fun d!1066533 () Bool)

(declare-fun c!627340 () Bool)

(assert (=> d!1066533 (= c!627340 (or ((_ is EmptyExpr!10447) (regex!5688 anOtherTypeRule!33)) ((_ is EmptyLang!10447) (regex!5688 anOtherTypeRule!33))))))

(assert (=> d!1066533 (= (usedCharacters!902 (regex!5688 anOtherTypeRule!33)) e!2244064)))

(declare-fun b!3625479 () Bool)

(declare-fun call!262282 () List!38306)

(assert (=> b!3625479 (= e!2244062 call!262282)))

(declare-fun b!3625480 () Bool)

(assert (=> b!3625480 (= e!2244064 Nil!38182)))

(declare-fun bm!262278 () Bool)

(assert (=> bm!262278 (= call!262282 (++!9504 (ite c!627338 call!262281 call!262284) (ite c!627338 call!262284 call!262281)))))

(declare-fun b!3625481 () Bool)

(assert (=> b!3625481 (= e!2244062 call!262282)))

(declare-fun bm!262279 () Bool)

(assert (=> bm!262279 (= call!262283 (usedCharacters!902 (ite c!627339 (reg!10776 (regex!5688 anOtherTypeRule!33)) (ite c!627338 (regTwo!21407 (regex!5688 anOtherTypeRule!33)) (regOne!21406 (regex!5688 anOtherTypeRule!33))))))))

(assert (= (and d!1066533 c!627340) b!3625480))

(assert (= (and d!1066533 (not c!627340)) b!3625477))

(assert (= (and b!3625477 c!627341) b!3625478))

(assert (= (and b!3625477 (not c!627341)) b!3625475))

(assert (= (and b!3625475 c!627339) b!3625476))

(assert (= (and b!3625475 (not c!627339)) b!3625474))

(assert (= (and b!3625474 c!627338) b!3625481))

(assert (= (and b!3625474 (not c!627338)) b!3625479))

(assert (= (or b!3625481 b!3625479) bm!262276))

(assert (= (or b!3625481 b!3625479) bm!262277))

(assert (= (or b!3625481 b!3625479) bm!262278))

(assert (= (or b!3625476 bm!262277) bm!262279))

(declare-fun m!4126127 () Bool)

(assert (=> bm!262276 m!4126127))

(declare-fun m!4126129 () Bool)

(assert (=> bm!262278 m!4126129))

(declare-fun m!4126131 () Bool)

(assert (=> bm!262279 m!4126131))

(assert (=> b!3624763 d!1066533))

(declare-fun d!1066535 () Bool)

(assert (=> d!1066535 (= (isEmpty!22572 (_2!22162 lt!1252878)) ((_ is Nil!38182) (_2!22162 lt!1252878)))))

(assert (=> b!3624765 d!1066535))

(declare-fun e!2244067 () Bool)

(assert (=> b!3624782 (= tp!1106983 e!2244067)))

(declare-fun b!3625492 () Bool)

(assert (=> b!3625492 (= e!2244067 tp_is_empty!17977)))

(declare-fun b!3625495 () Bool)

(declare-fun tp!1107060 () Bool)

(declare-fun tp!1107058 () Bool)

(assert (=> b!3625495 (= e!2244067 (and tp!1107060 tp!1107058))))

(declare-fun b!3625494 () Bool)

(declare-fun tp!1107057 () Bool)

(assert (=> b!3625494 (= e!2244067 tp!1107057)))

(declare-fun b!3625493 () Bool)

(declare-fun tp!1107059 () Bool)

(declare-fun tp!1107061 () Bool)

(assert (=> b!3625493 (= e!2244067 (and tp!1107059 tp!1107061))))

(assert (= (and b!3624782 ((_ is ElementMatch!10447) (regex!5688 (rule!8452 token!511)))) b!3625492))

(assert (= (and b!3624782 ((_ is Concat!16365) (regex!5688 (rule!8452 token!511)))) b!3625493))

(assert (= (and b!3624782 ((_ is Star!10447) (regex!5688 (rule!8452 token!511)))) b!3625494))

(assert (= (and b!3624782 ((_ is Union!10447) (regex!5688 (rule!8452 token!511)))) b!3625495))

(declare-fun b!3625500 () Bool)

(declare-fun e!2244070 () Bool)

(declare-fun tp!1107064 () Bool)

(assert (=> b!3625500 (= e!2244070 (and tp_is_empty!17977 tp!1107064))))

(assert (=> b!3624766 (= tp!1106979 e!2244070)))

(assert (= (and b!3624766 ((_ is Cons!38182) (t!294521 suffix!1395))) b!3625500))

(declare-fun e!2244071 () Bool)

(assert (=> b!3624771 (= tp!1106980 e!2244071)))

(declare-fun b!3625501 () Bool)

(assert (=> b!3625501 (= e!2244071 tp_is_empty!17977)))

(declare-fun b!3625504 () Bool)

(declare-fun tp!1107068 () Bool)

(declare-fun tp!1107066 () Bool)

(assert (=> b!3625504 (= e!2244071 (and tp!1107068 tp!1107066))))

(declare-fun b!3625503 () Bool)

(declare-fun tp!1107065 () Bool)

(assert (=> b!3625503 (= e!2244071 tp!1107065)))

(declare-fun b!3625502 () Bool)

(declare-fun tp!1107067 () Bool)

(declare-fun tp!1107069 () Bool)

(assert (=> b!3625502 (= e!2244071 (and tp!1107067 tp!1107069))))

(assert (= (and b!3624771 ((_ is ElementMatch!10447) (regex!5688 anOtherTypeRule!33))) b!3625501))

(assert (= (and b!3624771 ((_ is Concat!16365) (regex!5688 anOtherTypeRule!33))) b!3625502))

(assert (= (and b!3624771 ((_ is Star!10447) (regex!5688 anOtherTypeRule!33))) b!3625503))

(assert (= (and b!3624771 ((_ is Union!10447) (regex!5688 anOtherTypeRule!33))) b!3625504))

(declare-fun e!2244072 () Bool)

(assert (=> b!3624761 (= tp!1106988 e!2244072)))

(declare-fun b!3625505 () Bool)

(assert (=> b!3625505 (= e!2244072 tp_is_empty!17977)))

(declare-fun b!3625508 () Bool)

(declare-fun tp!1107073 () Bool)

(declare-fun tp!1107071 () Bool)

(assert (=> b!3625508 (= e!2244072 (and tp!1107073 tp!1107071))))

(declare-fun b!3625507 () Bool)

(declare-fun tp!1107070 () Bool)

(assert (=> b!3625507 (= e!2244072 tp!1107070)))

(declare-fun b!3625506 () Bool)

(declare-fun tp!1107072 () Bool)

(declare-fun tp!1107074 () Bool)

(assert (=> b!3625506 (= e!2244072 (and tp!1107072 tp!1107074))))

(assert (= (and b!3624761 ((_ is ElementMatch!10447) (regex!5688 (h!43603 rules!3307)))) b!3625505))

(assert (= (and b!3624761 ((_ is Concat!16365) (regex!5688 (h!43603 rules!3307)))) b!3625506))

(assert (= (and b!3624761 ((_ is Star!10447) (regex!5688 (h!43603 rules!3307)))) b!3625507))

(assert (= (and b!3624761 ((_ is Union!10447) (regex!5688 (h!43603 rules!3307)))) b!3625508))

(declare-fun b!3625509 () Bool)

(declare-fun e!2244073 () Bool)

(declare-fun tp!1107075 () Bool)

(assert (=> b!3625509 (= e!2244073 (and tp_is_empty!17977 tp!1107075))))

(assert (=> b!3624778 (= tp!1106981 e!2244073)))

(assert (= (and b!3624778 ((_ is Cons!38182) (originalCharacters!6402 token!511))) b!3625509))

(declare-fun e!2244074 () Bool)

(assert (=> b!3624767 (= tp!1106977 e!2244074)))

(declare-fun b!3625510 () Bool)

(assert (=> b!3625510 (= e!2244074 tp_is_empty!17977)))

(declare-fun b!3625513 () Bool)

(declare-fun tp!1107079 () Bool)

(declare-fun tp!1107077 () Bool)

(assert (=> b!3625513 (= e!2244074 (and tp!1107079 tp!1107077))))

(declare-fun b!3625512 () Bool)

(declare-fun tp!1107076 () Bool)

(assert (=> b!3625512 (= e!2244074 tp!1107076)))

(declare-fun b!3625511 () Bool)

(declare-fun tp!1107078 () Bool)

(declare-fun tp!1107080 () Bool)

(assert (=> b!3625511 (= e!2244074 (and tp!1107078 tp!1107080))))

(assert (= (and b!3624767 ((_ is ElementMatch!10447) (regex!5688 rule!403))) b!3625510))

(assert (= (and b!3624767 ((_ is Concat!16365) (regex!5688 rule!403))) b!3625511))

(assert (= (and b!3624767 ((_ is Star!10447) (regex!5688 rule!403))) b!3625512))

(assert (= (and b!3624767 ((_ is Union!10447) (regex!5688 rule!403))) b!3625513))

(declare-fun b!3625524 () Bool)

(declare-fun b_free!94629 () Bool)

(declare-fun b_next!95333 () Bool)

(assert (=> b!3625524 (= b_free!94629 (not b_next!95333))))

(declare-fun tb!208085 () Bool)

(declare-fun t!294632 () Bool)

(assert (=> (and b!3625524 (= (toValue!7976 (transformation!5688 (h!43603 (t!294522 rules!3307)))) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294632) tb!208085))

(declare-fun result!253526 () Bool)

(assert (= result!253526 result!253498))

(assert (=> d!1066477 t!294632))

(declare-fun t!294634 () Bool)

(declare-fun tb!208087 () Bool)

(assert (=> (and b!3625524 (= (toValue!7976 (transformation!5688 (h!43603 (t!294522 rules!3307)))) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294634) tb!208087))

(declare-fun result!253528 () Bool)

(assert (= result!253528 result!253462))

(assert (=> d!1066441 t!294634))

(assert (=> d!1066477 t!294634))

(assert (=> d!1066447 t!294634))

(declare-fun t!294636 () Bool)

(declare-fun tb!208089 () Bool)

(assert (=> (and b!3625524 (= (toValue!7976 (transformation!5688 (h!43603 (t!294522 rules!3307)))) (toValue!7976 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294636) tb!208089))

(declare-fun result!253530 () Bool)

(assert (= result!253530 result!253428))

(assert (=> d!1066379 t!294636))

(declare-fun tp!1107091 () Bool)

(declare-fun b_and!265515 () Bool)

(assert (=> b!3625524 (= tp!1107091 (and (=> t!294636 result!253530) (=> t!294632 result!253526) (=> t!294634 result!253528) b_and!265515))))

(declare-fun b_free!94631 () Bool)

(declare-fun b_next!95335 () Bool)

(assert (=> b!3625524 (= b_free!94631 (not b_next!95335))))

(declare-fun tb!208091 () Bool)

(declare-fun t!294638 () Bool)

(assert (=> (and b!3625524 (= (toChars!7835 (transformation!5688 (h!43603 (t!294522 rules!3307)))) (toChars!7835 (transformation!5688 (rule!8452 token!511)))) t!294638) tb!208091))

(declare-fun result!253532 () Bool)

(assert (= result!253532 result!253418))

(assert (=> b!3625001 t!294638))

(declare-fun tb!208093 () Bool)

(declare-fun t!294640 () Bool)

(assert (=> (and b!3625524 (= (toChars!7835 (transformation!5688 (h!43603 (t!294522 rules!3307)))) (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294640) tb!208093))

(declare-fun result!253534 () Bool)

(assert (= result!253534 result!253438))

(assert (=> d!1066399 t!294640))

(assert (=> d!1066431 t!294638))

(declare-fun tb!208095 () Bool)

(declare-fun t!294642 () Bool)

(assert (=> (and b!3625524 (= (toChars!7835 (transformation!5688 (h!43603 (t!294522 rules!3307)))) (toChars!7835 (transformation!5688 (rule!8452 (_1!22162 lt!1252890))))) t!294642) tb!208095))

(declare-fun result!253536 () Bool)

(assert (= result!253536 result!253486))

(assert (=> d!1066447 t!294642))

(declare-fun b_and!265517 () Bool)

(declare-fun tp!1107089 () Bool)

(assert (=> b!3625524 (= tp!1107089 (and (=> t!294638 result!253532) (=> t!294640 result!253534) (=> t!294642 result!253536) b_and!265517))))

(declare-fun e!2244084 () Bool)

(assert (=> b!3625524 (= e!2244084 (and tp!1107091 tp!1107089))))

(declare-fun e!2244086 () Bool)

(declare-fun tp!1107092 () Bool)

(declare-fun b!3625523 () Bool)

(assert (=> b!3625523 (= e!2244086 (and tp!1107092 (inv!51584 (tag!6410 (h!43603 (t!294522 rules!3307)))) (inv!51587 (transformation!5688 (h!43603 (t!294522 rules!3307)))) e!2244084))))

(declare-fun b!3625522 () Bool)

(declare-fun e!2244085 () Bool)

(declare-fun tp!1107090 () Bool)

(assert (=> b!3625522 (= e!2244085 (and e!2244086 tp!1107090))))

(assert (=> b!3624770 (= tp!1106987 e!2244085)))

(assert (= b!3625523 b!3625524))

(assert (= b!3625522 b!3625523))

(assert (= (and b!3624770 ((_ is Cons!38183) (t!294522 rules!3307))) b!3625522))

(declare-fun m!4126133 () Bool)

(assert (=> b!3625523 m!4126133))

(declare-fun m!4126135 () Bool)

(assert (=> b!3625523 m!4126135))

(declare-fun b_lambda!107275 () Bool)

(assert (= b_lambda!107249 (or (and b!3624758 b_free!94619 (= (toChars!7835 (transformation!5688 rule!403)) (toChars!7835 (transformation!5688 (rule!8452 token!511))))) (and b!3624757 b_free!94623 (= (toChars!7835 (transformation!5688 (h!43603 rules!3307))) (toChars!7835 (transformation!5688 (rule!8452 token!511))))) (and b!3625524 b_free!94631 (= (toChars!7835 (transformation!5688 (h!43603 (t!294522 rules!3307)))) (toChars!7835 (transformation!5688 (rule!8452 token!511))))) (and b!3624768 b_free!94615) (and b!3624754 b_free!94611 (= (toChars!7835 (transformation!5688 anOtherTypeRule!33)) (toChars!7835 (transformation!5688 (rule!8452 token!511))))) b_lambda!107275)))

(declare-fun b_lambda!107277 () Bool)

(assert (= b_lambda!107239 (or (and b!3624758 b_free!94619 (= (toChars!7835 (transformation!5688 rule!403)) (toChars!7835 (transformation!5688 (rule!8452 token!511))))) (and b!3624757 b_free!94623 (= (toChars!7835 (transformation!5688 (h!43603 rules!3307))) (toChars!7835 (transformation!5688 (rule!8452 token!511))))) (and b!3625524 b_free!94631 (= (toChars!7835 (transformation!5688 (h!43603 (t!294522 rules!3307)))) (toChars!7835 (transformation!5688 (rule!8452 token!511))))) (and b!3624768 b_free!94615) (and b!3624754 b_free!94611 (= (toChars!7835 (transformation!5688 anOtherTypeRule!33)) (toChars!7835 (transformation!5688 (rule!8452 token!511))))) b_lambda!107277)))

(check-sat (not b_next!95319) (not b!3625523) (not d!1066529) (not b_next!95317) (not b!3625162) (not b_lambda!107269) (not bm!262279) (not d!1066315) (not bm!262259) (not b!3625471) (not b!3625509) (not bm!262278) b_and!265507 (not bm!262269) (not b_lambda!107277) (not b!3625436) (not b!3625129) (not b!3625502) (not b!3625069) (not b_lambda!107241) (not b!3625466) (not b!3625464) (not b!3625421) (not b!3625200) (not b!3625407) (not bm!262275) (not b!3625062) (not b!3625473) (not b!3625425) (not d!1066515) (not b!3625165) (not b!3625406) (not d!1066393) (not b!3625465) (not b!3624959) (not b_next!95321) (not b!3625178) (not b!3625104) (not b_next!95333) (not b!3625422) (not d!1066405) (not d!1066387) (not b!3625101) (not d!1066385) (not tb!208009) (not b!3625463) (not bm!262276) (not d!1066435) (not b!3625255) (not d!1066531) (not b!3625177) (not d!1066447) (not b_next!95325) (not b!3625249) (not b!3624972) b_and!265477 (not b!3625418) (not b!3625019) (not b!3625066) (not b!3625395) (not b_next!95323) (not b!3625443) (not d!1066375) b_and!265509 (not d!1066429) (not b!3625068) (not b!3625109) (not d!1066499) (not d!1066503) (not b!3625002) b_and!265471 (not d!1066399) (not bm!262258) (not b!3625500) (not b_lambda!107261) (not b!3625467) (not b!3625185) (not d!1066431) (not b!3625511) (not b!3625504) (not b!3625258) (not d!1066477) (not b!3624960) (not b!3625252) (not b!3625011) (not b!3625115) (not b_next!95315) (not d!1066511) (not b!3625254) (not b!3625394) (not b!3625166) (not d!1066389) b_and!265515 (not b!3624966) (not b!3625459) (not d!1066395) (not b!3625257) b_and!265517 (not d!1066473) (not b!3625441) (not b!3625508) (not b!3625417) (not b!3625458) (not b!3625067) (not b!3625064) (not b_lambda!107267) (not d!1066523) (not tb!207993) (not b!3625102) (not b!3624971) (not b!3625437) (not b!3625456) (not d!1066493) (not b!3625522) (not b!3625110) (not bm!262260) (not d!1066369) (not b!3625495) (not d!1066439) (not b!3625103) (not d!1066357) (not tb!208001) (not bm!262264) (not b!3625070) (not b_lambda!107251) (not d!1066505) (not b_next!95327) (not b!3625372) (not d!1066407) (not b!3625171) (not b!3625250) (not b!3625405) (not b!3625494) tp_is_empty!17977 (not b_lambda!107263) (not d!1066519) (not d!1066509) (not tb!208065) (not d!1066443) (not d!1066371) (not d!1066409) (not b_lambda!107275) (not b!3625493) (not bm!262256) (not b!3625438) (not b!3624857) b_and!265473 (not b!3625116) (not b!3625163) (not b_next!95335) (not d!1066497) (not b!3625512) (not b_next!95313) (not b_lambda!107243) (not b!3625253) (not b!3625468) b_and!265475 b_and!265505 (not b!3625084) (not b!3625426) (not b!3625507) b_and!265503 (not b!3625093) (not b!3625427) (not b!3625179) (not b!3625503) (not b!3625442) (not b!3625462) (not b!3625164) (not d!1066343) (not b!3625172) (not b!3625063) (not tb!208033) (not b!3625001) (not d!1066377) (not b!3624965) (not b!3625506) (not b!3625470) (not bm!262247) (not d!1066403) (not d!1066319) (not d!1066521) (not b!3625513) (not b!3625312) (not b!3625259) (not d!1066445) (not tb!208057) (not d!1066365) (not b!3625251))
(check-sat b_and!265507 b_and!265471 (not b_next!95315) b_and!265515 b_and!265517 (not b_next!95327) b_and!265473 b_and!265503 (not b_next!95319) (not b_next!95317) (not b_next!95321) (not b_next!95333) (not b_next!95325) b_and!265477 (not b_next!95323) b_and!265509 (not b_next!95335) (not b_next!95313) b_and!265475 b_and!265505)
