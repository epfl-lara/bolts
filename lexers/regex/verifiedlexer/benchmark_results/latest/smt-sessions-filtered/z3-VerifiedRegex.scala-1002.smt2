; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49952 () Bool)

(assert start!49952)

(declare-fun b!541525 () Bool)

(declare-fun b_free!14977 () Bool)

(declare-fun b_next!14993 () Bool)

(assert (=> b!541525 (= b_free!14977 (not b_next!14993))))

(declare-fun tp!172440 () Bool)

(declare-fun b_and!52891 () Bool)

(assert (=> b!541525 (= tp!172440 b_and!52891)))

(declare-fun b_free!14979 () Bool)

(declare-fun b_next!14995 () Bool)

(assert (=> b!541525 (= b_free!14979 (not b_next!14995))))

(declare-fun tp!172444 () Bool)

(declare-fun b_and!52893 () Bool)

(assert (=> b!541525 (= tp!172444 b_and!52893)))

(declare-fun b!541537 () Bool)

(declare-fun b_free!14981 () Bool)

(declare-fun b_next!14997 () Bool)

(assert (=> b!541537 (= b_free!14981 (not b_next!14997))))

(declare-fun tp!172441 () Bool)

(declare-fun b_and!52895 () Bool)

(assert (=> b!541537 (= tp!172441 b_and!52895)))

(declare-fun b_free!14983 () Bool)

(declare-fun b_next!14999 () Bool)

(assert (=> b!541537 (= b_free!14983 (not b_next!14999))))

(declare-fun tp!172437 () Bool)

(declare-fun b_and!52897 () Bool)

(assert (=> b!541537 (= tp!172437 b_and!52897)))

(declare-fun b!541507 () Bool)

(declare-fun res!230443 () Bool)

(declare-fun e!327077 () Bool)

(assert (=> b!541507 (=> res!230443 e!327077)))

(declare-datatypes ((C!3572 0))(
  ( (C!3573 (val!2012 Int)) )
))
(declare-datatypes ((List!5315 0))(
  ( (Nil!5305) (Cons!5305 (h!10706 C!3572) (t!74412 List!5315)) )
))
(declare-fun lt!225739 () List!5315)

(declare-fun input!2705 () List!5315)

(assert (=> b!541507 (= res!230443 (not (= lt!225739 input!2705)))))

(declare-fun b!541508 () Bool)

(declare-fun e!327065 () Bool)

(declare-fun tp_is_empty!3005 () Bool)

(declare-fun tp!172446 () Bool)

(assert (=> b!541508 (= e!327065 (and tp_is_empty!3005 tp!172446))))

(declare-datatypes ((List!5316 0))(
  ( (Nil!5306) (Cons!5306 (h!10707 (_ BitVec 16)) (t!74413 List!5316)) )
))
(declare-datatypes ((TokenValue!1015 0))(
  ( (FloatLiteralValue!2030 (text!7550 List!5316)) (TokenValueExt!1014 (__x!3928 Int)) (Broken!5075 (value!33084 List!5316)) (Object!1024) (End!1015) (Def!1015) (Underscore!1015) (Match!1015) (Else!1015) (Error!1015) (Case!1015) (If!1015) (Extends!1015) (Abstract!1015) (Class!1015) (Val!1015) (DelimiterValue!2030 (del!1075 List!5316)) (KeywordValue!1021 (value!33085 List!5316)) (CommentValue!2030 (value!33086 List!5316)) (WhitespaceValue!2030 (value!33087 List!5316)) (IndentationValue!1015 (value!33088 List!5316)) (String!6818) (Int32!1015) (Broken!5076 (value!33089 List!5316)) (Boolean!1016) (Unit!9270) (OperatorValue!1018 (op!1075 List!5316)) (IdentifierValue!2030 (value!33090 List!5316)) (IdentifierValue!2031 (value!33091 List!5316)) (WhitespaceValue!2031 (value!33092 List!5316)) (True!2030) (False!2030) (Broken!5077 (value!33093 List!5316)) (Broken!5078 (value!33094 List!5316)) (True!2031) (RightBrace!1015) (RightBracket!1015) (Colon!1015) (Null!1015) (Comma!1015) (LeftBracket!1015) (False!2031) (LeftBrace!1015) (ImaginaryLiteralValue!1015 (text!7551 List!5316)) (StringLiteralValue!3045 (value!33095 List!5316)) (EOFValue!1015 (value!33096 List!5316)) (IdentValue!1015 (value!33097 List!5316)) (DelimiterValue!2031 (value!33098 List!5316)) (DedentValue!1015 (value!33099 List!5316)) (NewLineValue!1015 (value!33100 List!5316)) (IntegerValue!3045 (value!33101 (_ BitVec 32)) (text!7552 List!5316)) (IntegerValue!3046 (value!33102 Int) (text!7553 List!5316)) (Times!1015) (Or!1015) (Equal!1015) (Minus!1015) (Broken!5079 (value!33103 List!5316)) (And!1015) (Div!1015) (LessEqual!1015) (Mod!1015) (Concat!2340) (Not!1015) (Plus!1015) (SpaceValue!1015 (value!33104 List!5316)) (IntegerValue!3047 (value!33105 Int) (text!7554 List!5316)) (StringLiteralValue!3046 (text!7555 List!5316)) (FloatLiteralValue!2031 (text!7556 List!5316)) (BytesLiteralValue!1015 (value!33106 List!5316)) (CommentValue!2031 (value!33107 List!5316)) (StringLiteralValue!3047 (value!33108 List!5316)) (ErrorTokenValue!1015 (msg!1076 List!5316)) )
))
(declare-fun lt!225740 () TokenValue!1015)

(declare-fun suffix!1342 () List!5315)

(declare-fun lt!225732 () List!5315)

(declare-datatypes ((Regex!1325 0))(
  ( (ElementMatch!1325 (c!102448 C!3572)) (Concat!2341 (regOne!3162 Regex!1325) (regTwo!3162 Regex!1325)) (EmptyExpr!1325) (Star!1325 (reg!1654 Regex!1325)) (EmptyLang!1325) (Union!1325 (regOne!3163 Regex!1325) (regTwo!3163 Regex!1325)) )
))
(declare-datatypes ((String!6819 0))(
  ( (String!6820 (value!33109 String)) )
))
(declare-datatypes ((IArray!3417 0))(
  ( (IArray!3418 (innerList!1766 List!5315)) )
))
(declare-datatypes ((Conc!1708 0))(
  ( (Node!1708 (left!4408 Conc!1708) (right!4738 Conc!1708) (csize!3646 Int) (cheight!1919 Int)) (Leaf!2711 (xs!4345 IArray!3417) (csize!3647 Int)) (Empty!1708) )
))
(declare-datatypes ((BalanceConc!3424 0))(
  ( (BalanceConc!3425 (c!102449 Conc!1708)) )
))
(declare-datatypes ((TokenValueInjection!1798 0))(
  ( (TokenValueInjection!1799 (toValue!1838 Int) (toChars!1697 Int)) )
))
(declare-datatypes ((Rule!1782 0))(
  ( (Rule!1783 (regex!991 Regex!1325) (tag!1253 String!6819) (isSeparator!991 Bool) (transformation!991 TokenValueInjection!1798)) )
))
(declare-datatypes ((Token!1718 0))(
  ( (Token!1719 (value!33110 TokenValue!1015) (rule!1701 Rule!1782) (size!4260 Int) (originalCharacters!1030 List!5315)) )
))
(declare-fun token!491 () Token!1718)

(declare-fun b!541509 () Bool)

(declare-fun lt!225735 () List!5315)

(declare-fun e!327059 () Bool)

(declare-fun lt!225744 () Int)

(declare-datatypes ((tuple2!6356 0))(
  ( (tuple2!6357 (_1!3442 Token!1718) (_2!3442 List!5315)) )
))
(assert (=> b!541509 (= e!327059 (and (= (size!4260 token!491) lt!225744) (= (originalCharacters!1030 token!491) lt!225735) (= (tuple2!6357 token!491 suffix!1342) (tuple2!6357 (Token!1719 lt!225740 (rule!1701 token!491) lt!225744 lt!225735) lt!225732))))))

(declare-fun b!541510 () Bool)

(declare-fun e!327058 () Bool)

(declare-fun tp!172439 () Bool)

(assert (=> b!541510 (= e!327058 (and tp_is_empty!3005 tp!172439))))

(declare-fun b!541511 () Bool)

(declare-fun e!327061 () Bool)

(assert (=> b!541511 (= e!327061 e!327077)))

(declare-fun res!230436 () Bool)

(assert (=> b!541511 (=> res!230436 e!327077)))

(declare-fun lt!225743 () Int)

(assert (=> b!541511 (= res!230436 (>= lt!225743 lt!225744))))

(declare-fun e!327052 () Bool)

(assert (=> b!541511 e!327052))

(declare-fun res!230442 () Bool)

(assert (=> b!541511 (=> (not res!230442) (not e!327052))))

(declare-fun lt!225742 () List!5315)

(declare-datatypes ((LexerInterface!877 0))(
  ( (LexerInterfaceExt!874 (__x!3929 Int)) (Lexer!875) )
))
(declare-fun thiss!22590 () LexerInterface!877)

(declare-datatypes ((Option!1341 0))(
  ( (None!1340) (Some!1340 (v!16151 tuple2!6356)) )
))
(declare-fun maxPrefixOneRule!290 (LexerInterface!877 Rule!1782 List!5315) Option!1341)

(assert (=> b!541511 (= res!230442 (= (maxPrefixOneRule!290 thiss!22590 (rule!1701 token!491) lt!225742) (Some!1340 (tuple2!6357 (Token!1719 lt!225740 (rule!1701 token!491) lt!225744 lt!225735) suffix!1342))))))

(declare-datatypes ((List!5317 0))(
  ( (Nil!5307) (Cons!5307 (h!10708 Rule!1782) (t!74414 List!5317)) )
))
(declare-fun rules!3103 () List!5317)

(declare-datatypes ((Unit!9271 0))(
  ( (Unit!9272) )
))
(declare-fun lt!225747 () Unit!9271)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!42 (LexerInterface!877 List!5317 List!5315 List!5315 List!5315 Rule!1782) Unit!9271)

(assert (=> b!541511 (= lt!225747 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!42 thiss!22590 rules!3103 lt!225735 lt!225742 suffix!1342 (rule!1701 token!491)))))

(declare-fun lt!225726 () Option!1341)

(declare-fun lt!225750 () Token!1718)

(declare-fun lt!225737 () Option!1341)

(assert (=> b!541511 (= lt!225726 (Some!1340 (tuple2!6357 lt!225750 (_2!3442 (v!16151 lt!225737)))))))

(assert (=> b!541511 (= lt!225726 (maxPrefixOneRule!290 thiss!22590 (rule!1701 (_1!3442 (v!16151 lt!225737))) input!2705))))

(declare-fun lt!225749 () Unit!9271)

(declare-fun lt!225728 () List!5315)

(assert (=> b!541511 (= lt!225749 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!42 thiss!22590 rules!3103 lt!225728 input!2705 (_2!3442 (v!16151 lt!225737)) (rule!1701 (_1!3442 (v!16151 lt!225737)))))))

(assert (=> b!541511 e!327059))

(declare-fun res!230451 () Bool)

(assert (=> b!541511 (=> (not res!230451) (not e!327059))))

(assert (=> b!541511 (= res!230451 (= (value!33110 token!491) lt!225740))))

(declare-fun apply!1266 (TokenValueInjection!1798 BalanceConc!3424) TokenValue!1015)

(declare-fun seqFromList!1189 (List!5315) BalanceConc!3424)

(assert (=> b!541511 (= lt!225740 (apply!1266 (transformation!991 (rule!1701 token!491)) (seqFromList!1189 lt!225735)))))

(assert (=> b!541511 (= suffix!1342 lt!225732)))

(declare-fun lt!225733 () Unit!9271)

(declare-fun lemmaSamePrefixThenSameSuffix!360 (List!5315 List!5315 List!5315 List!5315 List!5315) Unit!9271)

(assert (=> b!541511 (= lt!225733 (lemmaSamePrefixThenSameSuffix!360 lt!225735 suffix!1342 lt!225735 lt!225732 lt!225742))))

(declare-fun getSuffix!156 (List!5315 List!5315) List!5315)

(assert (=> b!541511 (= lt!225732 (getSuffix!156 lt!225742 lt!225735))))

(declare-fun b!541512 () Bool)

(declare-fun res!230450 () Bool)

(declare-fun e!327054 () Bool)

(assert (=> b!541512 (=> (not res!230450) (not e!327054))))

(declare-fun isEmpty!3832 (List!5315) Bool)

(assert (=> b!541512 (= res!230450 (not (isEmpty!3832 input!2705)))))

(declare-fun b!541513 () Bool)

(declare-fun res!230446 () Bool)

(assert (=> b!541513 (=> (not res!230446) (not e!327054))))

(declare-fun rulesInvariant!840 (LexerInterface!877 List!5317) Bool)

(assert (=> b!541513 (= res!230446 (rulesInvariant!840 thiss!22590 rules!3103))))

(declare-fun b!541514 () Bool)

(declare-fun e!327060 () Bool)

(declare-fun rulesValidInductive!344 (LexerInterface!877 List!5317) Bool)

(assert (=> b!541514 (= e!327060 (rulesValidInductive!344 thiss!22590 rules!3103))))

(declare-fun b!541515 () Bool)

(declare-fun res!230437 () Bool)

(assert (=> b!541515 (=> res!230437 e!327077)))

(declare-fun lt!225757 () List!5315)

(declare-fun ++!1479 (List!5315 List!5315) List!5315)

(assert (=> b!541515 (= res!230437 (not (= (++!1479 lt!225728 lt!225757) input!2705)))))

(declare-fun b!541516 () Bool)

(declare-fun res!230448 () Bool)

(assert (=> b!541516 (=> res!230448 e!327077)))

(declare-fun matchR!484 (Regex!1325 List!5315) Bool)

(assert (=> b!541516 (= res!230448 (not (matchR!484 (regex!991 (rule!1701 token!491)) input!2705)))))

(declare-fun b!541517 () Bool)

(declare-fun res!230456 () Bool)

(assert (=> b!541517 (=> res!230456 e!327077)))

(declare-fun isPrefix!633 (List!5315 List!5315) Bool)

(assert (=> b!541517 (= res!230456 (not (isPrefix!633 lt!225728 input!2705)))))

(declare-fun b!541518 () Bool)

(declare-fun e!327075 () Bool)

(assert (=> b!541518 (= e!327075 e!327060)))

(declare-fun res!230444 () Bool)

(assert (=> b!541518 (=> res!230444 e!327060)))

(assert (=> b!541518 (= res!230444 (not (= lt!225726 (Some!1340 (tuple2!6357 lt!225750 lt!225757)))))))

(declare-fun lt!225754 () Unit!9271)

(declare-fun lt!225759 () BalanceConc!3424)

(declare-fun lemmaSemiInverse!120 (TokenValueInjection!1798 BalanceConc!3424) Unit!9271)

(assert (=> b!541518 (= lt!225754 (lemmaSemiInverse!120 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) lt!225759))))

(declare-fun b!541519 () Bool)

(declare-fun e!327070 () Bool)

(declare-fun get!2001 (Option!1341) tuple2!6356)

(assert (=> b!541519 (= e!327070 (= (_1!3442 (get!2001 lt!225737)) (_1!3442 (v!16151 lt!225737))))))

(declare-fun b!541520 () Bool)

(declare-fun e!327073 () Bool)

(assert (=> b!541520 (= e!327052 e!327073)))

(declare-fun res!230441 () Bool)

(assert (=> b!541520 (=> res!230441 e!327073)))

(assert (=> b!541520 (= res!230441 (>= lt!225743 lt!225744))))

(declare-fun b!541521 () Bool)

(declare-fun e!327063 () Bool)

(assert (=> b!541521 (= e!327063 (not e!327061))))

(declare-fun res!230455 () Bool)

(assert (=> b!541521 (=> res!230455 e!327061)))

(declare-fun lt!225741 () List!5315)

(assert (=> b!541521 (= res!230455 (not (isPrefix!633 input!2705 lt!225741)))))

(assert (=> b!541521 (isPrefix!633 lt!225735 lt!225741)))

(declare-fun lt!225738 () Unit!9271)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!484 (List!5315 List!5315) Unit!9271)

(assert (=> b!541521 (= lt!225738 (lemmaConcatTwoListThenFirstIsPrefix!484 lt!225735 suffix!1342))))

(assert (=> b!541521 (isPrefix!633 input!2705 lt!225742)))

(declare-fun lt!225725 () Unit!9271)

(assert (=> b!541521 (= lt!225725 (lemmaConcatTwoListThenFirstIsPrefix!484 input!2705 suffix!1342))))

(declare-fun lt!225734 () TokenValue!1015)

(assert (=> b!541521 (= lt!225750 (Token!1719 lt!225734 (rule!1701 (_1!3442 (v!16151 lt!225737))) lt!225743 lt!225728))))

(declare-fun e!327071 () Bool)

(assert (=> b!541521 e!327071))

(declare-fun res!230431 () Bool)

(assert (=> b!541521 (=> (not res!230431) (not e!327071))))

(assert (=> b!541521 (= res!230431 (= (value!33110 (_1!3442 (v!16151 lt!225737))) lt!225734))))

(assert (=> b!541521 (= lt!225734 (apply!1266 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) lt!225759))))

(assert (=> b!541521 (= lt!225759 (seqFromList!1189 lt!225728))))

(declare-fun lt!225755 () Unit!9271)

(declare-fun lemmaInv!139 (TokenValueInjection!1798) Unit!9271)

(assert (=> b!541521 (= lt!225755 (lemmaInv!139 (transformation!991 (rule!1701 token!491))))))

(declare-fun lt!225752 () Unit!9271)

(assert (=> b!541521 (= lt!225752 (lemmaInv!139 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))))))

(declare-fun ruleValid!211 (LexerInterface!877 Rule!1782) Bool)

(assert (=> b!541521 (ruleValid!211 thiss!22590 (rule!1701 token!491))))

(declare-fun lt!225736 () Unit!9271)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!70 (LexerInterface!877 Rule!1782 List!5317) Unit!9271)

(assert (=> b!541521 (= lt!225736 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!70 thiss!22590 (rule!1701 token!491) rules!3103))))

(assert (=> b!541521 (ruleValid!211 thiss!22590 (rule!1701 (_1!3442 (v!16151 lt!225737))))))

(declare-fun lt!225748 () Unit!9271)

(assert (=> b!541521 (= lt!225748 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!70 thiss!22590 (rule!1701 (_1!3442 (v!16151 lt!225737))) rules!3103))))

(assert (=> b!541521 (isPrefix!633 input!2705 input!2705)))

(declare-fun lt!225727 () Unit!9271)

(declare-fun lemmaIsPrefixRefl!373 (List!5315 List!5315) Unit!9271)

(assert (=> b!541521 (= lt!225727 (lemmaIsPrefixRefl!373 input!2705 input!2705))))

(assert (=> b!541521 (= (_2!3442 (v!16151 lt!225737)) lt!225757)))

(declare-fun lt!225729 () Unit!9271)

(assert (=> b!541521 (= lt!225729 (lemmaSamePrefixThenSameSuffix!360 lt!225728 (_2!3442 (v!16151 lt!225737)) lt!225728 lt!225757 input!2705))))

(assert (=> b!541521 (= lt!225757 (getSuffix!156 input!2705 lt!225728))))

(assert (=> b!541521 (isPrefix!633 lt!225728 lt!225739)))

(assert (=> b!541521 (= lt!225739 (++!1479 lt!225728 (_2!3442 (v!16151 lt!225737))))))

(declare-fun lt!225745 () Unit!9271)

(assert (=> b!541521 (= lt!225745 (lemmaConcatTwoListThenFirstIsPrefix!484 lt!225728 (_2!3442 (v!16151 lt!225737))))))

(declare-fun lt!225758 () Unit!9271)

(declare-fun lemmaCharactersSize!70 (Token!1718) Unit!9271)

(assert (=> b!541521 (= lt!225758 (lemmaCharactersSize!70 token!491))))

(declare-fun lt!225751 () Unit!9271)

(assert (=> b!541521 (= lt!225751 (lemmaCharactersSize!70 (_1!3442 (v!16151 lt!225737))))))

(declare-fun lt!225730 () Unit!9271)

(declare-fun e!327053 () Unit!9271)

(assert (=> b!541521 (= lt!225730 e!327053)))

(declare-fun c!102447 () Bool)

(assert (=> b!541521 (= c!102447 (> lt!225743 lt!225744))))

(declare-fun size!4261 (List!5315) Int)

(assert (=> b!541521 (= lt!225744 (size!4261 lt!225735))))

(assert (=> b!541521 (= lt!225743 (size!4261 lt!225728))))

(declare-fun list!2201 (BalanceConc!3424) List!5315)

(declare-fun charsOf!620 (Token!1718) BalanceConc!3424)

(assert (=> b!541521 (= lt!225728 (list!2201 (charsOf!620 (_1!3442 (v!16151 lt!225737)))))))

(declare-fun lt!225756 () tuple2!6356)

(assert (=> b!541521 (= lt!225737 (Some!1340 lt!225756))))

(assert (=> b!541521 (= lt!225756 (tuple2!6357 (_1!3442 (v!16151 lt!225737)) (_2!3442 (v!16151 lt!225737))))))

(declare-fun lt!225731 () Unit!9271)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!76 (List!5315 List!5315 List!5315 List!5315) Unit!9271)

(assert (=> b!541521 (= lt!225731 (lemmaConcatSameAndSameSizesThenSameLists!76 lt!225735 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!541522 () Bool)

(declare-fun res!230438 () Bool)

(assert (=> b!541522 (=> res!230438 e!327060)))

(assert (=> b!541522 (= res!230438 (<= (size!4261 input!2705) lt!225743))))

(declare-fun e!327069 () Bool)

(declare-fun b!541523 () Bool)

(declare-fun e!327067 () Bool)

(declare-fun tp!172442 () Bool)

(declare-fun inv!21 (TokenValue!1015) Bool)

(assert (=> b!541523 (= e!327069 (and (inv!21 (value!33110 token!491)) e!327067 tp!172442))))

(declare-fun b!541524 () Bool)

(declare-fun res!230434 () Bool)

(assert (=> b!541524 (=> (not res!230434) (not e!327071))))

(assert (=> b!541524 (= res!230434 (= (size!4260 (_1!3442 (v!16151 lt!225737))) (size!4261 (originalCharacters!1030 (_1!3442 (v!16151 lt!225737))))))))

(declare-fun e!327076 () Bool)

(assert (=> b!541525 (= e!327076 (and tp!172440 tp!172444))))

(declare-fun tp!172443 () Bool)

(declare-fun b!541526 () Bool)

(declare-fun inv!6653 (String!6819) Bool)

(declare-fun inv!6656 (TokenValueInjection!1798) Bool)

(assert (=> b!541526 (= e!327067 (and tp!172443 (inv!6653 (tag!1253 (rule!1701 token!491))) (inv!6656 (transformation!991 (rule!1701 token!491))) e!327076))))

(declare-fun b!541527 () Bool)

(assert (=> b!541527 (= e!327077 e!327075)))

(declare-fun res!230447 () Bool)

(assert (=> b!541527 (=> res!230447 e!327075)))

(declare-fun contains!1235 (List!5317 Rule!1782) Bool)

(assert (=> b!541527 (= res!230447 (not (contains!1235 rules!3103 (rule!1701 (_1!3442 (v!16151 lt!225737))))))))

(assert (=> b!541527 (= lt!225757 (_2!3442 (v!16151 lt!225737)))))

(declare-fun b!541528 () Bool)

(declare-fun res!230439 () Bool)

(assert (=> b!541528 (=> res!230439 e!327075)))

(assert (=> b!541528 (= res!230439 (not (matchR!484 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) lt!225728)))))

(declare-fun b!541529 () Bool)

(declare-fun Unit!9273 () Unit!9271)

(assert (=> b!541529 (= e!327053 Unit!9273)))

(assert (=> b!541529 false))

(declare-fun res!230452 () Bool)

(assert (=> start!49952 (=> (not res!230452) (not e!327054))))

(get-info :version)

(assert (=> start!49952 (= res!230452 ((_ is Lexer!875) thiss!22590))))

(assert (=> start!49952 e!327054))

(assert (=> start!49952 e!327058))

(declare-fun e!327068 () Bool)

(assert (=> start!49952 e!327068))

(declare-fun inv!6657 (Token!1718) Bool)

(assert (=> start!49952 (and (inv!6657 token!491) e!327069)))

(assert (=> start!49952 true))

(assert (=> start!49952 e!327065))

(declare-fun b!541530 () Bool)

(declare-fun e!327074 () Bool)

(declare-fun e!327064 () Bool)

(assert (=> b!541530 (= e!327074 e!327064)))

(declare-fun res!230454 () Bool)

(assert (=> b!541530 (=> (not res!230454) (not e!327064))))

(assert (=> b!541530 (= res!230454 ((_ is Some!1340) lt!225737))))

(declare-fun maxPrefix!575 (LexerInterface!877 List!5317 List!5315) Option!1341)

(assert (=> b!541530 (= lt!225737 (maxPrefix!575 thiss!22590 rules!3103 input!2705))))

(declare-fun b!541531 () Bool)

(declare-fun Unit!9274 () Unit!9271)

(assert (=> b!541531 (= e!327053 Unit!9274)))

(declare-fun b!541532 () Bool)

(declare-fun res!230453 () Bool)

(assert (=> b!541532 (=> res!230453 e!327077)))

(assert (=> b!541532 (= res!230453 (not (isPrefix!633 lt!225735 input!2705)))))

(declare-fun b!541533 () Bool)

(assert (=> b!541533 (= e!327071 (and (= (size!4260 (_1!3442 (v!16151 lt!225737))) lt!225743) (= (originalCharacters!1030 (_1!3442 (v!16151 lt!225737))) lt!225728) (= lt!225756 (tuple2!6357 (Token!1719 lt!225734 (rule!1701 (_1!3442 (v!16151 lt!225737))) lt!225743 lt!225728) lt!225757))))))

(declare-fun b!541534 () Bool)

(declare-fun e!327062 () Bool)

(assert (=> b!541534 (= e!327062 e!327074)))

(declare-fun res!230428 () Bool)

(assert (=> b!541534 (=> (not res!230428) (not e!327074))))

(declare-fun lt!225746 () tuple2!6356)

(assert (=> b!541534 (= res!230428 (and (= (_1!3442 lt!225746) token!491) (= (_2!3442 lt!225746) suffix!1342)))))

(declare-fun lt!225753 () Option!1341)

(assert (=> b!541534 (= lt!225746 (get!2001 lt!225753))))

(declare-fun b!541535 () Bool)

(assert (=> b!541535 (= e!327064 e!327063)))

(declare-fun res!230435 () Bool)

(assert (=> b!541535 (=> (not res!230435) (not e!327063))))

(assert (=> b!541535 (= res!230435 (= lt!225741 lt!225742))))

(assert (=> b!541535 (= lt!225741 (++!1479 lt!225735 suffix!1342))))

(declare-fun b!541536 () Bool)

(declare-fun res!230429 () Bool)

(assert (=> b!541536 (=> res!230429 e!327077)))

(assert (=> b!541536 (= res!230429 (not (= (getSuffix!156 input!2705 input!2705) Nil!5305)))))

(declare-fun e!327057 () Bool)

(assert (=> b!541537 (= e!327057 (and tp!172441 tp!172437))))

(declare-fun b!541538 () Bool)

(assert (=> b!541538 (= e!327073 e!327070)))

(declare-fun res!230430 () Bool)

(assert (=> b!541538 (=> (not res!230430) (not e!327070))))

(declare-fun isDefined!1153 (Option!1341) Bool)

(assert (=> b!541538 (= res!230430 (isDefined!1153 lt!225737))))

(declare-fun b!541539 () Bool)

(declare-fun e!327055 () Bool)

(assert (=> b!541539 (= e!327054 e!327055)))

(declare-fun res!230440 () Bool)

(assert (=> b!541539 (=> (not res!230440) (not e!327055))))

(assert (=> b!541539 (= res!230440 (= lt!225735 input!2705))))

(assert (=> b!541539 (= lt!225735 (list!2201 (charsOf!620 token!491)))))

(declare-fun b!541540 () Bool)

(declare-fun res!230432 () Bool)

(assert (=> b!541540 (=> (not res!230432) (not e!327054))))

(declare-fun isEmpty!3833 (List!5317) Bool)

(assert (=> b!541540 (= res!230432 (not (isEmpty!3833 rules!3103)))))

(declare-fun b!541541 () Bool)

(declare-fun e!327066 () Bool)

(declare-fun tp!172445 () Bool)

(assert (=> b!541541 (= e!327068 (and e!327066 tp!172445))))

(declare-fun b!541542 () Bool)

(assert (=> b!541542 (= e!327055 e!327062)))

(declare-fun res!230433 () Bool)

(assert (=> b!541542 (=> (not res!230433) (not e!327062))))

(assert (=> b!541542 (= res!230433 (isDefined!1153 lt!225753))))

(assert (=> b!541542 (= lt!225753 (maxPrefix!575 thiss!22590 rules!3103 lt!225742))))

(assert (=> b!541542 (= lt!225742 (++!1479 input!2705 suffix!1342))))

(declare-fun b!541543 () Bool)

(declare-fun res!230449 () Bool)

(assert (=> b!541543 (=> res!230449 e!327077)))

(assert (=> b!541543 (= res!230449 (not (contains!1235 rules!3103 (rule!1701 token!491))))))

(declare-fun b!541544 () Bool)

(declare-fun res!230445 () Bool)

(assert (=> b!541544 (=> (not res!230445) (not e!327059))))

(assert (=> b!541544 (= res!230445 (= (size!4260 token!491) (size!4261 (originalCharacters!1030 token!491))))))

(declare-fun tp!172438 () Bool)

(declare-fun b!541545 () Bool)

(assert (=> b!541545 (= e!327066 (and tp!172438 (inv!6653 (tag!1253 (h!10708 rules!3103))) (inv!6656 (transformation!991 (h!10708 rules!3103))) e!327057))))

(assert (= (and start!49952 res!230452) b!541540))

(assert (= (and b!541540 res!230432) b!541513))

(assert (= (and b!541513 res!230446) b!541512))

(assert (= (and b!541512 res!230450) b!541539))

(assert (= (and b!541539 res!230440) b!541542))

(assert (= (and b!541542 res!230433) b!541534))

(assert (= (and b!541534 res!230428) b!541530))

(assert (= (and b!541530 res!230454) b!541535))

(assert (= (and b!541535 res!230435) b!541521))

(assert (= (and b!541521 c!102447) b!541529))

(assert (= (and b!541521 (not c!102447)) b!541531))

(assert (= (and b!541521 res!230431) b!541524))

(assert (= (and b!541524 res!230434) b!541533))

(assert (= (and b!541521 (not res!230455)) b!541511))

(assert (= (and b!541511 res!230451) b!541544))

(assert (= (and b!541544 res!230445) b!541509))

(assert (= (and b!541511 res!230442) b!541520))

(assert (= (and b!541520 (not res!230441)) b!541538))

(assert (= (and b!541538 res!230430) b!541519))

(assert (= (and b!541511 (not res!230436)) b!541543))

(assert (= (and b!541543 (not res!230449)) b!541516))

(assert (= (and b!541516 (not res!230448)) b!541532))

(assert (= (and b!541532 (not res!230453)) b!541536))

(assert (= (and b!541536 (not res!230429)) b!541507))

(assert (= (and b!541507 (not res!230443)) b!541517))

(assert (= (and b!541517 (not res!230456)) b!541515))

(assert (= (and b!541515 (not res!230437)) b!541527))

(assert (= (and b!541527 (not res!230447)) b!541528))

(assert (= (and b!541528 (not res!230439)) b!541518))

(assert (= (and b!541518 (not res!230444)) b!541522))

(assert (= (and b!541522 (not res!230438)) b!541514))

(assert (= (and start!49952 ((_ is Cons!5305) suffix!1342)) b!541510))

(assert (= b!541545 b!541537))

(assert (= b!541541 b!541545))

(assert (= (and start!49952 ((_ is Cons!5307) rules!3103)) b!541541))

(assert (= b!541526 b!541525))

(assert (= b!541523 b!541526))

(assert (= start!49952 b!541523))

(assert (= (and start!49952 ((_ is Cons!5305) input!2705)) b!541508))

(declare-fun m!789213 () Bool)

(assert (=> b!541522 m!789213))

(declare-fun m!789215 () Bool)

(assert (=> b!541515 m!789215))

(declare-fun m!789217 () Bool)

(assert (=> b!541539 m!789217))

(assert (=> b!541539 m!789217))

(declare-fun m!789219 () Bool)

(assert (=> b!541539 m!789219))

(declare-fun m!789221 () Bool)

(assert (=> b!541523 m!789221))

(declare-fun m!789223 () Bool)

(assert (=> b!541544 m!789223))

(declare-fun m!789225 () Bool)

(assert (=> b!541527 m!789225))

(declare-fun m!789227 () Bool)

(assert (=> b!541536 m!789227))

(declare-fun m!789229 () Bool)

(assert (=> b!541530 m!789229))

(declare-fun m!789231 () Bool)

(assert (=> b!541511 m!789231))

(declare-fun m!789233 () Bool)

(assert (=> b!541511 m!789233))

(assert (=> b!541511 m!789231))

(declare-fun m!789235 () Bool)

(assert (=> b!541511 m!789235))

(declare-fun m!789237 () Bool)

(assert (=> b!541511 m!789237))

(declare-fun m!789239 () Bool)

(assert (=> b!541511 m!789239))

(declare-fun m!789241 () Bool)

(assert (=> b!541511 m!789241))

(declare-fun m!789243 () Bool)

(assert (=> b!541511 m!789243))

(declare-fun m!789245 () Bool)

(assert (=> b!541511 m!789245))

(declare-fun m!789247 () Bool)

(assert (=> b!541514 m!789247))

(declare-fun m!789249 () Bool)

(assert (=> b!541535 m!789249))

(declare-fun m!789251 () Bool)

(assert (=> start!49952 m!789251))

(declare-fun m!789253 () Bool)

(assert (=> b!541512 m!789253))

(declare-fun m!789255 () Bool)

(assert (=> b!541543 m!789255))

(declare-fun m!789257 () Bool)

(assert (=> b!541513 m!789257))

(declare-fun m!789259 () Bool)

(assert (=> b!541521 m!789259))

(declare-fun m!789261 () Bool)

(assert (=> b!541521 m!789261))

(declare-fun m!789263 () Bool)

(assert (=> b!541521 m!789263))

(declare-fun m!789265 () Bool)

(assert (=> b!541521 m!789265))

(declare-fun m!789267 () Bool)

(assert (=> b!541521 m!789267))

(declare-fun m!789269 () Bool)

(assert (=> b!541521 m!789269))

(declare-fun m!789271 () Bool)

(assert (=> b!541521 m!789271))

(declare-fun m!789273 () Bool)

(assert (=> b!541521 m!789273))

(declare-fun m!789275 () Bool)

(assert (=> b!541521 m!789275))

(declare-fun m!789277 () Bool)

(assert (=> b!541521 m!789277))

(declare-fun m!789279 () Bool)

(assert (=> b!541521 m!789279))

(declare-fun m!789281 () Bool)

(assert (=> b!541521 m!789281))

(declare-fun m!789283 () Bool)

(assert (=> b!541521 m!789283))

(declare-fun m!789285 () Bool)

(assert (=> b!541521 m!789285))

(declare-fun m!789287 () Bool)

(assert (=> b!541521 m!789287))

(declare-fun m!789289 () Bool)

(assert (=> b!541521 m!789289))

(declare-fun m!789291 () Bool)

(assert (=> b!541521 m!789291))

(declare-fun m!789293 () Bool)

(assert (=> b!541521 m!789293))

(assert (=> b!541521 m!789261))

(declare-fun m!789295 () Bool)

(assert (=> b!541521 m!789295))

(declare-fun m!789297 () Bool)

(assert (=> b!541521 m!789297))

(declare-fun m!789299 () Bool)

(assert (=> b!541521 m!789299))

(declare-fun m!789301 () Bool)

(assert (=> b!541521 m!789301))

(declare-fun m!789303 () Bool)

(assert (=> b!541521 m!789303))

(declare-fun m!789305 () Bool)

(assert (=> b!541521 m!789305))

(declare-fun m!789307 () Bool)

(assert (=> b!541521 m!789307))

(declare-fun m!789309 () Bool)

(assert (=> b!541521 m!789309))

(declare-fun m!789311 () Bool)

(assert (=> b!541521 m!789311))

(declare-fun m!789313 () Bool)

(assert (=> b!541516 m!789313))

(declare-fun m!789315 () Bool)

(assert (=> b!541517 m!789315))

(declare-fun m!789317 () Bool)

(assert (=> b!541519 m!789317))

(declare-fun m!789319 () Bool)

(assert (=> b!541524 m!789319))

(declare-fun m!789321 () Bool)

(assert (=> b!541532 m!789321))

(declare-fun m!789323 () Bool)

(assert (=> b!541545 m!789323))

(declare-fun m!789325 () Bool)

(assert (=> b!541545 m!789325))

(declare-fun m!789327 () Bool)

(assert (=> b!541538 m!789327))

(declare-fun m!789329 () Bool)

(assert (=> b!541526 m!789329))

(declare-fun m!789331 () Bool)

(assert (=> b!541526 m!789331))

(declare-fun m!789333 () Bool)

(assert (=> b!541518 m!789333))

(declare-fun m!789335 () Bool)

(assert (=> b!541542 m!789335))

(declare-fun m!789337 () Bool)

(assert (=> b!541542 m!789337))

(declare-fun m!789339 () Bool)

(assert (=> b!541542 m!789339))

(declare-fun m!789341 () Bool)

(assert (=> b!541528 m!789341))

(declare-fun m!789343 () Bool)

(assert (=> b!541534 m!789343))

(declare-fun m!789345 () Bool)

(assert (=> b!541540 m!789345))

(check-sat tp_is_empty!3005 (not b!541539) (not b!541510) (not b!541534) (not b!541532) (not b!541536) (not b!541542) (not b!541518) (not b!541515) b_and!52897 (not b!541517) (not b!541513) (not b!541524) (not b!541516) (not b_next!14993) (not b!541545) (not start!49952) (not b!541527) (not b!541521) b_and!52893 (not b!541522) (not b!541523) (not b!541514) (not b_next!14995) (not b!541508) b_and!52891 (not b!541543) (not b_next!14999) (not b!541541) (not b!541540) (not b!541538) (not b!541512) (not b!541519) (not b!541530) (not b!541526) (not b!541511) (not b_next!14997) b_and!52895 (not b!541528) (not b!541535) (not b!541544))
(check-sat (not b_next!14993) b_and!52893 (not b_next!14995) b_and!52891 (not b_next!14999) b_and!52897 (not b_next!14997) b_and!52895)
(get-model)

(declare-fun d!190439 () Bool)

(declare-fun lt!225794 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!925 (List!5317) (InoxSet Rule!1782))

(assert (=> d!190439 (= lt!225794 (select (content!925 rules!3103) (rule!1701 (_1!3442 (v!16151 lt!225737)))))))

(declare-fun e!327136 () Bool)

(assert (=> d!190439 (= lt!225794 e!327136)))

(declare-fun res!230518 () Bool)

(assert (=> d!190439 (=> (not res!230518) (not e!327136))))

(assert (=> d!190439 (= res!230518 ((_ is Cons!5307) rules!3103))))

(assert (=> d!190439 (= (contains!1235 rules!3103 (rule!1701 (_1!3442 (v!16151 lt!225737)))) lt!225794)))

(declare-fun b!541626 () Bool)

(declare-fun e!327137 () Bool)

(assert (=> b!541626 (= e!327136 e!327137)))

(declare-fun res!230517 () Bool)

(assert (=> b!541626 (=> res!230517 e!327137)))

(assert (=> b!541626 (= res!230517 (= (h!10708 rules!3103) (rule!1701 (_1!3442 (v!16151 lt!225737)))))))

(declare-fun b!541627 () Bool)

(assert (=> b!541627 (= e!327137 (contains!1235 (t!74414 rules!3103) (rule!1701 (_1!3442 (v!16151 lt!225737)))))))

(assert (= (and d!190439 res!230518) b!541626))

(assert (= (and b!541626 (not res!230517)) b!541627))

(declare-fun m!789445 () Bool)

(assert (=> d!190439 m!789445))

(declare-fun m!789447 () Bool)

(assert (=> d!190439 m!789447))

(declare-fun m!789449 () Bool)

(assert (=> b!541627 m!789449))

(assert (=> b!541527 d!190439))

(declare-fun b!541688 () Bool)

(declare-fun e!327176 () Bool)

(declare-fun e!327174 () Bool)

(assert (=> b!541688 (= e!327176 e!327174)))

(declare-fun res!230560 () Bool)

(assert (=> b!541688 (=> res!230560 e!327174)))

(declare-fun call!38280 () Bool)

(assert (=> b!541688 (= res!230560 call!38280)))

(declare-fun b!541689 () Bool)

(declare-fun e!327177 () Bool)

(declare-fun nullable!347 (Regex!1325) Bool)

(assert (=> b!541689 (= e!327177 (nullable!347 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))))))

(declare-fun b!541690 () Bool)

(declare-fun res!230562 () Bool)

(declare-fun e!327178 () Bool)

(assert (=> b!541690 (=> (not res!230562) (not e!327178))))

(assert (=> b!541690 (= res!230562 (not call!38280))))

(declare-fun b!541691 () Bool)

(declare-fun head!1184 (List!5315) C!3572)

(assert (=> b!541691 (= e!327174 (not (= (head!1184 lt!225728) (c!102448 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))))))))

(declare-fun b!541692 () Bool)

(assert (=> b!541692 (= e!327178 (= (head!1184 lt!225728) (c!102448 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))))))

(declare-fun b!541693 () Bool)

(declare-fun e!327175 () Bool)

(assert (=> b!541693 (= e!327175 e!327176)))

(declare-fun res!230563 () Bool)

(assert (=> b!541693 (=> (not res!230563) (not e!327176))))

(declare-fun lt!225818 () Bool)

(assert (=> b!541693 (= res!230563 (not lt!225818))))

(declare-fun bm!38275 () Bool)

(assert (=> bm!38275 (= call!38280 (isEmpty!3832 lt!225728))))

(declare-fun b!541694 () Bool)

(declare-fun res!230565 () Bool)

(assert (=> b!541694 (=> res!230565 e!327174)))

(declare-fun tail!713 (List!5315) List!5315)

(assert (=> b!541694 (= res!230565 (not (isEmpty!3832 (tail!713 lt!225728))))))

(declare-fun b!541695 () Bool)

(declare-fun res!230566 () Bool)

(assert (=> b!541695 (=> res!230566 e!327175)))

(assert (=> b!541695 (= res!230566 e!327178)))

(declare-fun res!230561 () Bool)

(assert (=> b!541695 (=> (not res!230561) (not e!327178))))

(assert (=> b!541695 (= res!230561 lt!225818)))

(declare-fun b!541696 () Bool)

(declare-fun e!327173 () Bool)

(declare-fun e!327179 () Bool)

(assert (=> b!541696 (= e!327173 e!327179)))

(declare-fun c!102471 () Bool)

(assert (=> b!541696 (= c!102471 ((_ is EmptyLang!1325) (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))))))

(declare-fun b!541697 () Bool)

(declare-fun derivativeStep!262 (Regex!1325 C!3572) Regex!1325)

(assert (=> b!541697 (= e!327177 (matchR!484 (derivativeStep!262 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) (head!1184 lt!225728)) (tail!713 lt!225728)))))

(declare-fun b!541698 () Bool)

(assert (=> b!541698 (= e!327173 (= lt!225818 call!38280))))

(declare-fun b!541699 () Bool)

(assert (=> b!541699 (= e!327179 (not lt!225818))))

(declare-fun d!190449 () Bool)

(assert (=> d!190449 e!327173))

(declare-fun c!102472 () Bool)

(assert (=> d!190449 (= c!102472 ((_ is EmptyExpr!1325) (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))))))

(assert (=> d!190449 (= lt!225818 e!327177)))

(declare-fun c!102470 () Bool)

(assert (=> d!190449 (= c!102470 (isEmpty!3832 lt!225728))))

(declare-fun validRegex!442 (Regex!1325) Bool)

(assert (=> d!190449 (validRegex!442 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))))

(assert (=> d!190449 (= (matchR!484 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) lt!225728) lt!225818)))

(declare-fun b!541700 () Bool)

(declare-fun res!230564 () Bool)

(assert (=> b!541700 (=> res!230564 e!327175)))

(assert (=> b!541700 (= res!230564 (not ((_ is ElementMatch!1325) (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))))))

(assert (=> b!541700 (= e!327179 e!327175)))

(declare-fun b!541701 () Bool)

(declare-fun res!230559 () Bool)

(assert (=> b!541701 (=> (not res!230559) (not e!327178))))

(assert (=> b!541701 (= res!230559 (isEmpty!3832 (tail!713 lt!225728)))))

(assert (= (and d!190449 c!102470) b!541689))

(assert (= (and d!190449 (not c!102470)) b!541697))

(assert (= (and d!190449 c!102472) b!541698))

(assert (= (and d!190449 (not c!102472)) b!541696))

(assert (= (and b!541696 c!102471) b!541699))

(assert (= (and b!541696 (not c!102471)) b!541700))

(assert (= (and b!541700 (not res!230564)) b!541695))

(assert (= (and b!541695 res!230561) b!541690))

(assert (= (and b!541690 res!230562) b!541701))

(assert (= (and b!541701 res!230559) b!541692))

(assert (= (and b!541695 (not res!230566)) b!541693))

(assert (= (and b!541693 res!230563) b!541688))

(assert (= (and b!541688 (not res!230560)) b!541694))

(assert (= (and b!541694 (not res!230565)) b!541691))

(assert (= (or b!541698 b!541688 b!541690) bm!38275))

(declare-fun m!789529 () Bool)

(assert (=> b!541689 m!789529))

(declare-fun m!789531 () Bool)

(assert (=> d!190449 m!789531))

(declare-fun m!789533 () Bool)

(assert (=> d!190449 m!789533))

(declare-fun m!789535 () Bool)

(assert (=> b!541691 m!789535))

(declare-fun m!789537 () Bool)

(assert (=> b!541701 m!789537))

(assert (=> b!541701 m!789537))

(declare-fun m!789539 () Bool)

(assert (=> b!541701 m!789539))

(assert (=> bm!38275 m!789531))

(assert (=> b!541697 m!789535))

(assert (=> b!541697 m!789535))

(declare-fun m!789541 () Bool)

(assert (=> b!541697 m!789541))

(assert (=> b!541697 m!789537))

(assert (=> b!541697 m!789541))

(assert (=> b!541697 m!789537))

(declare-fun m!789543 () Bool)

(assert (=> b!541697 m!789543))

(assert (=> b!541692 m!789535))

(assert (=> b!541694 m!789537))

(assert (=> b!541694 m!789537))

(assert (=> b!541694 m!789539))

(assert (=> b!541528 d!190449))

(declare-fun d!190493 () Bool)

(declare-fun lt!225821 () Int)

(assert (=> d!190493 (>= lt!225821 0)))

(declare-fun e!327182 () Int)

(assert (=> d!190493 (= lt!225821 e!327182)))

(declare-fun c!102475 () Bool)

(assert (=> d!190493 (= c!102475 ((_ is Nil!5305) (originalCharacters!1030 (_1!3442 (v!16151 lt!225737)))))))

(assert (=> d!190493 (= (size!4261 (originalCharacters!1030 (_1!3442 (v!16151 lt!225737)))) lt!225821)))

(declare-fun b!541706 () Bool)

(assert (=> b!541706 (= e!327182 0)))

(declare-fun b!541707 () Bool)

(assert (=> b!541707 (= e!327182 (+ 1 (size!4261 (t!74412 (originalCharacters!1030 (_1!3442 (v!16151 lt!225737)))))))))

(assert (= (and d!190493 c!102475) b!541706))

(assert (= (and d!190493 (not c!102475)) b!541707))

(declare-fun m!789545 () Bool)

(assert (=> b!541707 m!789545))

(assert (=> b!541524 d!190493))

(declare-fun d!190495 () Bool)

(assert (=> d!190495 (= (inv!6653 (tag!1253 (rule!1701 token!491))) (= (mod (str.len (value!33109 (tag!1253 (rule!1701 token!491)))) 2) 0))))

(assert (=> b!541526 d!190495))

(declare-fun d!190497 () Bool)

(declare-fun res!230569 () Bool)

(declare-fun e!327185 () Bool)

(assert (=> d!190497 (=> (not res!230569) (not e!327185))))

(declare-fun semiInverseModEq!385 (Int Int) Bool)

(assert (=> d!190497 (= res!230569 (semiInverseModEq!385 (toChars!1697 (transformation!991 (rule!1701 token!491))) (toValue!1838 (transformation!991 (rule!1701 token!491)))))))

(assert (=> d!190497 (= (inv!6656 (transformation!991 (rule!1701 token!491))) e!327185)))

(declare-fun b!541710 () Bool)

(declare-fun equivClasses!368 (Int Int) Bool)

(assert (=> b!541710 (= e!327185 (equivClasses!368 (toChars!1697 (transformation!991 (rule!1701 token!491))) (toValue!1838 (transformation!991 (rule!1701 token!491)))))))

(assert (= (and d!190497 res!230569) b!541710))

(declare-fun m!789547 () Bool)

(assert (=> d!190497 m!789547))

(declare-fun m!789549 () Bool)

(assert (=> b!541710 m!789549))

(assert (=> b!541526 d!190497))

(declare-fun d!190499 () Bool)

(declare-fun lt!225822 () Bool)

(assert (=> d!190499 (= lt!225822 (select (content!925 rules!3103) (rule!1701 token!491)))))

(declare-fun e!327186 () Bool)

(assert (=> d!190499 (= lt!225822 e!327186)))

(declare-fun res!230571 () Bool)

(assert (=> d!190499 (=> (not res!230571) (not e!327186))))

(assert (=> d!190499 (= res!230571 ((_ is Cons!5307) rules!3103))))

(assert (=> d!190499 (= (contains!1235 rules!3103 (rule!1701 token!491)) lt!225822)))

(declare-fun b!541711 () Bool)

(declare-fun e!327187 () Bool)

(assert (=> b!541711 (= e!327186 e!327187)))

(declare-fun res!230570 () Bool)

(assert (=> b!541711 (=> res!230570 e!327187)))

(assert (=> b!541711 (= res!230570 (= (h!10708 rules!3103) (rule!1701 token!491)))))

(declare-fun b!541712 () Bool)

(assert (=> b!541712 (= e!327187 (contains!1235 (t!74414 rules!3103) (rule!1701 token!491)))))

(assert (= (and d!190499 res!230571) b!541711))

(assert (= (and b!541711 (not res!230570)) b!541712))

(assert (=> d!190499 m!789445))

(declare-fun m!789551 () Bool)

(assert (=> d!190499 m!789551))

(declare-fun m!789553 () Bool)

(assert (=> b!541712 m!789553))

(assert (=> b!541543 d!190499))

(declare-fun d!190501 () Bool)

(declare-fun lt!225823 () Int)

(assert (=> d!190501 (>= lt!225823 0)))

(declare-fun e!327188 () Int)

(assert (=> d!190501 (= lt!225823 e!327188)))

(declare-fun c!102476 () Bool)

(assert (=> d!190501 (= c!102476 ((_ is Nil!5305) input!2705))))

(assert (=> d!190501 (= (size!4261 input!2705) lt!225823)))

(declare-fun b!541713 () Bool)

(assert (=> b!541713 (= e!327188 0)))

(declare-fun b!541714 () Bool)

(assert (=> b!541714 (= e!327188 (+ 1 (size!4261 (t!74412 input!2705))))))

(assert (= (and d!190501 c!102476) b!541713))

(assert (= (and d!190501 (not c!102476)) b!541714))

(declare-fun m!789555 () Bool)

(assert (=> b!541714 m!789555))

(assert (=> b!541522 d!190501))

(declare-fun d!190503 () Bool)

(declare-fun lt!225824 () Int)

(assert (=> d!190503 (>= lt!225824 0)))

(declare-fun e!327189 () Int)

(assert (=> d!190503 (= lt!225824 e!327189)))

(declare-fun c!102477 () Bool)

(assert (=> d!190503 (= c!102477 ((_ is Nil!5305) (originalCharacters!1030 token!491)))))

(assert (=> d!190503 (= (size!4261 (originalCharacters!1030 token!491)) lt!225824)))

(declare-fun b!541715 () Bool)

(assert (=> b!541715 (= e!327189 0)))

(declare-fun b!541716 () Bool)

(assert (=> b!541716 (= e!327189 (+ 1 (size!4261 (t!74412 (originalCharacters!1030 token!491)))))))

(assert (= (and d!190503 c!102477) b!541715))

(assert (= (and d!190503 (not c!102477)) b!541716))

(declare-fun m!789557 () Bool)

(assert (=> b!541716 m!789557))

(assert (=> b!541544 d!190503))

(declare-fun b!541727 () Bool)

(declare-fun e!327196 () Bool)

(declare-fun inv!16 (TokenValue!1015) Bool)

(assert (=> b!541727 (= e!327196 (inv!16 (value!33110 token!491)))))

(declare-fun b!541728 () Bool)

(declare-fun e!327198 () Bool)

(assert (=> b!541728 (= e!327196 e!327198)))

(declare-fun c!102483 () Bool)

(assert (=> b!541728 (= c!102483 ((_ is IntegerValue!3046) (value!33110 token!491)))))

(declare-fun b!541729 () Bool)

(declare-fun res!230574 () Bool)

(declare-fun e!327197 () Bool)

(assert (=> b!541729 (=> res!230574 e!327197)))

(assert (=> b!541729 (= res!230574 (not ((_ is IntegerValue!3047) (value!33110 token!491))))))

(assert (=> b!541729 (= e!327198 e!327197)))

(declare-fun b!541730 () Bool)

(declare-fun inv!17 (TokenValue!1015) Bool)

(assert (=> b!541730 (= e!327198 (inv!17 (value!33110 token!491)))))

(declare-fun b!541731 () Bool)

(declare-fun inv!15 (TokenValue!1015) Bool)

(assert (=> b!541731 (= e!327197 (inv!15 (value!33110 token!491)))))

(declare-fun d!190505 () Bool)

(declare-fun c!102482 () Bool)

(assert (=> d!190505 (= c!102482 ((_ is IntegerValue!3045) (value!33110 token!491)))))

(assert (=> d!190505 (= (inv!21 (value!33110 token!491)) e!327196)))

(assert (= (and d!190505 c!102482) b!541727))

(assert (= (and d!190505 (not c!102482)) b!541728))

(assert (= (and b!541728 c!102483) b!541730))

(assert (= (and b!541728 (not c!102483)) b!541729))

(assert (= (and b!541729 (not res!230574)) b!541731))

(declare-fun m!789559 () Bool)

(assert (=> b!541727 m!789559))

(declare-fun m!789561 () Bool)

(assert (=> b!541730 m!789561))

(declare-fun m!789563 () Bool)

(assert (=> b!541731 m!789563))

(assert (=> b!541523 d!190505))

(declare-fun d!190507 () Bool)

(assert (=> d!190507 (= (inv!6653 (tag!1253 (h!10708 rules!3103))) (= (mod (str.len (value!33109 (tag!1253 (h!10708 rules!3103)))) 2) 0))))

(assert (=> b!541545 d!190507))

(declare-fun d!190509 () Bool)

(declare-fun res!230575 () Bool)

(declare-fun e!327199 () Bool)

(assert (=> d!190509 (=> (not res!230575) (not e!327199))))

(assert (=> d!190509 (= res!230575 (semiInverseModEq!385 (toChars!1697 (transformation!991 (h!10708 rules!3103))) (toValue!1838 (transformation!991 (h!10708 rules!3103)))))))

(assert (=> d!190509 (= (inv!6656 (transformation!991 (h!10708 rules!3103))) e!327199)))

(declare-fun b!541732 () Bool)

(assert (=> b!541732 (= e!327199 (equivClasses!368 (toChars!1697 (transformation!991 (h!10708 rules!3103))) (toValue!1838 (transformation!991 (h!10708 rules!3103)))))))

(assert (= (and d!190509 res!230575) b!541732))

(declare-fun m!789565 () Bool)

(assert (=> d!190509 m!789565))

(declare-fun m!789567 () Bool)

(assert (=> b!541732 m!789567))

(assert (=> b!541545 d!190509))

(declare-fun d!190511 () Bool)

(assert (=> d!190511 (= (isEmpty!3833 rules!3103) ((_ is Nil!5307) rules!3103))))

(assert (=> b!541540 d!190511))

(declare-fun d!190513 () Bool)

(assert (=> d!190513 (= (get!2001 lt!225737) (v!16151 lt!225737))))

(assert (=> b!541519 d!190513))

(declare-fun d!190515 () Bool)

(declare-fun isEmpty!3835 (Option!1341) Bool)

(assert (=> d!190515 (= (isDefined!1153 lt!225753) (not (isEmpty!3835 lt!225753)))))

(declare-fun bs!67526 () Bool)

(assert (= bs!67526 d!190515))

(declare-fun m!789569 () Bool)

(assert (=> bs!67526 m!789569))

(assert (=> b!541542 d!190515))

(declare-fun b!541849 () Bool)

(declare-fun res!230658 () Bool)

(declare-fun e!327250 () Bool)

(assert (=> b!541849 (=> (not res!230658) (not e!327250))))

(declare-fun lt!225873 () Option!1341)

(assert (=> b!541849 (= res!230658 (< (size!4261 (_2!3442 (get!2001 lt!225873))) (size!4261 lt!225742)))))

(declare-fun bm!38283 () Bool)

(declare-fun call!38288 () Option!1341)

(assert (=> bm!38283 (= call!38288 (maxPrefixOneRule!290 thiss!22590 (h!10708 rules!3103) lt!225742))))

(declare-fun b!541850 () Bool)

(assert (=> b!541850 (= e!327250 (contains!1235 rules!3103 (rule!1701 (_1!3442 (get!2001 lt!225873)))))))

(declare-fun d!190517 () Bool)

(declare-fun e!327251 () Bool)

(assert (=> d!190517 e!327251))

(declare-fun res!230659 () Bool)

(assert (=> d!190517 (=> res!230659 e!327251)))

(assert (=> d!190517 (= res!230659 (isEmpty!3835 lt!225873))))

(declare-fun e!327252 () Option!1341)

(assert (=> d!190517 (= lt!225873 e!327252)))

(declare-fun c!102502 () Bool)

(assert (=> d!190517 (= c!102502 (and ((_ is Cons!5307) rules!3103) ((_ is Nil!5307) (t!74414 rules!3103))))))

(declare-fun lt!225871 () Unit!9271)

(declare-fun lt!225872 () Unit!9271)

(assert (=> d!190517 (= lt!225871 lt!225872)))

(assert (=> d!190517 (isPrefix!633 lt!225742 lt!225742)))

(assert (=> d!190517 (= lt!225872 (lemmaIsPrefixRefl!373 lt!225742 lt!225742))))

(assert (=> d!190517 (rulesValidInductive!344 thiss!22590 rules!3103)))

(assert (=> d!190517 (= (maxPrefix!575 thiss!22590 rules!3103 lt!225742) lt!225873)))

(declare-fun b!541851 () Bool)

(declare-fun res!230662 () Bool)

(assert (=> b!541851 (=> (not res!230662) (not e!327250))))

(assert (=> b!541851 (= res!230662 (= (list!2201 (charsOf!620 (_1!3442 (get!2001 lt!225873)))) (originalCharacters!1030 (_1!3442 (get!2001 lt!225873)))))))

(declare-fun b!541852 () Bool)

(assert (=> b!541852 (= e!327252 call!38288)))

(declare-fun b!541853 () Bool)

(declare-fun res!230656 () Bool)

(assert (=> b!541853 (=> (not res!230656) (not e!327250))))

(assert (=> b!541853 (= res!230656 (matchR!484 (regex!991 (rule!1701 (_1!3442 (get!2001 lt!225873)))) (list!2201 (charsOf!620 (_1!3442 (get!2001 lt!225873))))))))

(declare-fun b!541854 () Bool)

(declare-fun lt!225870 () Option!1341)

(declare-fun lt!225869 () Option!1341)

(assert (=> b!541854 (= e!327252 (ite (and ((_ is None!1340) lt!225870) ((_ is None!1340) lt!225869)) None!1340 (ite ((_ is None!1340) lt!225869) lt!225870 (ite ((_ is None!1340) lt!225870) lt!225869 (ite (>= (size!4260 (_1!3442 (v!16151 lt!225870))) (size!4260 (_1!3442 (v!16151 lt!225869)))) lt!225870 lt!225869)))))))

(assert (=> b!541854 (= lt!225870 call!38288)))

(assert (=> b!541854 (= lt!225869 (maxPrefix!575 thiss!22590 (t!74414 rules!3103) lt!225742))))

(declare-fun b!541855 () Bool)

(declare-fun res!230660 () Bool)

(assert (=> b!541855 (=> (not res!230660) (not e!327250))))

(assert (=> b!541855 (= res!230660 (= (++!1479 (list!2201 (charsOf!620 (_1!3442 (get!2001 lt!225873)))) (_2!3442 (get!2001 lt!225873))) lt!225742))))

(declare-fun b!541856 () Bool)

(assert (=> b!541856 (= e!327251 e!327250)))

(declare-fun res!230657 () Bool)

(assert (=> b!541856 (=> (not res!230657) (not e!327250))))

(assert (=> b!541856 (= res!230657 (isDefined!1153 lt!225873))))

(declare-fun b!541857 () Bool)

(declare-fun res!230661 () Bool)

(assert (=> b!541857 (=> (not res!230661) (not e!327250))))

(assert (=> b!541857 (= res!230661 (= (value!33110 (_1!3442 (get!2001 lt!225873))) (apply!1266 (transformation!991 (rule!1701 (_1!3442 (get!2001 lt!225873)))) (seqFromList!1189 (originalCharacters!1030 (_1!3442 (get!2001 lt!225873)))))))))

(assert (= (and d!190517 c!102502) b!541852))

(assert (= (and d!190517 (not c!102502)) b!541854))

(assert (= (or b!541852 b!541854) bm!38283))

(assert (= (and d!190517 (not res!230659)) b!541856))

(assert (= (and b!541856 res!230657) b!541851))

(assert (= (and b!541851 res!230662) b!541849))

(assert (= (and b!541849 res!230658) b!541855))

(assert (= (and b!541855 res!230660) b!541857))

(assert (= (and b!541857 res!230661) b!541853))

(assert (= (and b!541853 res!230656) b!541850))

(declare-fun m!789669 () Bool)

(assert (=> b!541853 m!789669))

(declare-fun m!789671 () Bool)

(assert (=> b!541853 m!789671))

(assert (=> b!541853 m!789671))

(declare-fun m!789673 () Bool)

(assert (=> b!541853 m!789673))

(assert (=> b!541853 m!789673))

(declare-fun m!789675 () Bool)

(assert (=> b!541853 m!789675))

(declare-fun m!789677 () Bool)

(assert (=> b!541856 m!789677))

(assert (=> b!541857 m!789669))

(declare-fun m!789679 () Bool)

(assert (=> b!541857 m!789679))

(assert (=> b!541857 m!789679))

(declare-fun m!789681 () Bool)

(assert (=> b!541857 m!789681))

(declare-fun m!789689 () Bool)

(assert (=> b!541854 m!789689))

(assert (=> b!541855 m!789669))

(assert (=> b!541855 m!789671))

(assert (=> b!541855 m!789671))

(assert (=> b!541855 m!789673))

(assert (=> b!541855 m!789673))

(declare-fun m!789703 () Bool)

(assert (=> b!541855 m!789703))

(declare-fun m!789707 () Bool)

(assert (=> bm!38283 m!789707))

(assert (=> b!541850 m!789669))

(declare-fun m!789711 () Bool)

(assert (=> b!541850 m!789711))

(assert (=> b!541849 m!789669))

(declare-fun m!789717 () Bool)

(assert (=> b!541849 m!789717))

(declare-fun m!789721 () Bool)

(assert (=> b!541849 m!789721))

(assert (=> b!541851 m!789669))

(assert (=> b!541851 m!789671))

(assert (=> b!541851 m!789671))

(assert (=> b!541851 m!789673))

(declare-fun m!789725 () Bool)

(assert (=> d!190517 m!789725))

(declare-fun m!789727 () Bool)

(assert (=> d!190517 m!789727))

(declare-fun m!789729 () Bool)

(assert (=> d!190517 m!789729))

(assert (=> d!190517 m!789247))

(assert (=> b!541542 d!190517))

(declare-fun b!541901 () Bool)

(declare-fun res!230682 () Bool)

(declare-fun e!327276 () Bool)

(assert (=> b!541901 (=> (not res!230682) (not e!327276))))

(declare-fun lt!225883 () List!5315)

(assert (=> b!541901 (= res!230682 (= (size!4261 lt!225883) (+ (size!4261 input!2705) (size!4261 suffix!1342))))))

(declare-fun b!541899 () Bool)

(declare-fun e!327275 () List!5315)

(assert (=> b!541899 (= e!327275 suffix!1342)))

(declare-fun b!541902 () Bool)

(assert (=> b!541902 (= e!327276 (or (not (= suffix!1342 Nil!5305)) (= lt!225883 input!2705)))))

(declare-fun d!190533 () Bool)

(assert (=> d!190533 e!327276))

(declare-fun res!230683 () Bool)

(assert (=> d!190533 (=> (not res!230683) (not e!327276))))

(declare-fun content!926 (List!5315) (InoxSet C!3572))

(assert (=> d!190533 (= res!230683 (= (content!926 lt!225883) ((_ map or) (content!926 input!2705) (content!926 suffix!1342))))))

(assert (=> d!190533 (= lt!225883 e!327275)))

(declare-fun c!102514 () Bool)

(assert (=> d!190533 (= c!102514 ((_ is Nil!5305) input!2705))))

(assert (=> d!190533 (= (++!1479 input!2705 suffix!1342) lt!225883)))

(declare-fun b!541900 () Bool)

(assert (=> b!541900 (= e!327275 (Cons!5305 (h!10706 input!2705) (++!1479 (t!74412 input!2705) suffix!1342)))))

(assert (= (and d!190533 c!102514) b!541899))

(assert (= (and d!190533 (not c!102514)) b!541900))

(assert (= (and d!190533 res!230683) b!541901))

(assert (= (and b!541901 res!230682) b!541902))

(declare-fun m!789753 () Bool)

(assert (=> b!541901 m!789753))

(assert (=> b!541901 m!789213))

(declare-fun m!789755 () Bool)

(assert (=> b!541901 m!789755))

(declare-fun m!789757 () Bool)

(assert (=> d!190533 m!789757))

(declare-fun m!789759 () Bool)

(assert (=> d!190533 m!789759))

(declare-fun m!789761 () Bool)

(assert (=> d!190533 m!789761))

(declare-fun m!789763 () Bool)

(assert (=> b!541900 m!789763))

(assert (=> b!541542 d!190533))

(declare-fun b!541918 () Bool)

(declare-fun e!327288 () Bool)

(assert (=> b!541918 (= e!327288 (>= (size!4261 lt!225742) (size!4261 input!2705)))))

(declare-fun b!541915 () Bool)

(declare-fun e!327289 () Bool)

(declare-fun e!327287 () Bool)

(assert (=> b!541915 (= e!327289 e!327287)))

(declare-fun res!230696 () Bool)

(assert (=> b!541915 (=> (not res!230696) (not e!327287))))

(assert (=> b!541915 (= res!230696 (not ((_ is Nil!5305) lt!225742)))))

(declare-fun b!541916 () Bool)

(declare-fun res!230699 () Bool)

(assert (=> b!541916 (=> (not res!230699) (not e!327287))))

(assert (=> b!541916 (= res!230699 (= (head!1184 input!2705) (head!1184 lt!225742)))))

(declare-fun d!190549 () Bool)

(assert (=> d!190549 e!327288))

(declare-fun res!230698 () Bool)

(assert (=> d!190549 (=> res!230698 e!327288)))

(declare-fun lt!225888 () Bool)

(assert (=> d!190549 (= res!230698 (not lt!225888))))

(assert (=> d!190549 (= lt!225888 e!327289)))

(declare-fun res!230697 () Bool)

(assert (=> d!190549 (=> res!230697 e!327289)))

(assert (=> d!190549 (= res!230697 ((_ is Nil!5305) input!2705))))

(assert (=> d!190549 (= (isPrefix!633 input!2705 lt!225742) lt!225888)))

(declare-fun b!541917 () Bool)

(assert (=> b!541917 (= e!327287 (isPrefix!633 (tail!713 input!2705) (tail!713 lt!225742)))))

(assert (= (and d!190549 (not res!230697)) b!541915))

(assert (= (and b!541915 res!230696) b!541916))

(assert (= (and b!541916 res!230699) b!541917))

(assert (= (and d!190549 (not res!230698)) b!541918))

(assert (=> b!541918 m!789721))

(assert (=> b!541918 m!789213))

(declare-fun m!789765 () Bool)

(assert (=> b!541916 m!789765))

(declare-fun m!789767 () Bool)

(assert (=> b!541916 m!789767))

(declare-fun m!789769 () Bool)

(assert (=> b!541917 m!789769))

(declare-fun m!789771 () Bool)

(assert (=> b!541917 m!789771))

(assert (=> b!541917 m!789769))

(assert (=> b!541917 m!789771))

(declare-fun m!789773 () Bool)

(assert (=> b!541917 m!789773))

(assert (=> b!541521 d!190549))

(declare-fun d!190551 () Bool)

(declare-fun res!230704 () Bool)

(declare-fun e!327292 () Bool)

(assert (=> d!190551 (=> (not res!230704) (not e!327292))))

(assert (=> d!190551 (= res!230704 (validRegex!442 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))))))

(assert (=> d!190551 (= (ruleValid!211 thiss!22590 (rule!1701 (_1!3442 (v!16151 lt!225737)))) e!327292)))

(declare-fun b!541923 () Bool)

(declare-fun res!230705 () Bool)

(assert (=> b!541923 (=> (not res!230705) (not e!327292))))

(assert (=> b!541923 (= res!230705 (not (nullable!347 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))))))

(declare-fun b!541924 () Bool)

(assert (=> b!541924 (= e!327292 (not (= (tag!1253 (rule!1701 (_1!3442 (v!16151 lt!225737)))) (String!6820 ""))))))

(assert (= (and d!190551 res!230704) b!541923))

(assert (= (and b!541923 res!230705) b!541924))

(assert (=> d!190551 m!789533))

(assert (=> b!541923 m!789529))

(assert (=> b!541521 d!190551))

(declare-fun b!541928 () Bool)

(declare-fun e!327294 () Bool)

(assert (=> b!541928 (= e!327294 (>= (size!4261 lt!225739) (size!4261 lt!225728)))))

(declare-fun b!541925 () Bool)

(declare-fun e!327295 () Bool)

(declare-fun e!327293 () Bool)

(assert (=> b!541925 (= e!327295 e!327293)))

(declare-fun res!230706 () Bool)

(assert (=> b!541925 (=> (not res!230706) (not e!327293))))

(assert (=> b!541925 (= res!230706 (not ((_ is Nil!5305) lt!225739)))))

(declare-fun b!541926 () Bool)

(declare-fun res!230709 () Bool)

(assert (=> b!541926 (=> (not res!230709) (not e!327293))))

(assert (=> b!541926 (= res!230709 (= (head!1184 lt!225728) (head!1184 lt!225739)))))

(declare-fun d!190553 () Bool)

(assert (=> d!190553 e!327294))

(declare-fun res!230708 () Bool)

(assert (=> d!190553 (=> res!230708 e!327294)))

(declare-fun lt!225889 () Bool)

(assert (=> d!190553 (= res!230708 (not lt!225889))))

(assert (=> d!190553 (= lt!225889 e!327295)))

(declare-fun res!230707 () Bool)

(assert (=> d!190553 (=> res!230707 e!327295)))

(assert (=> d!190553 (= res!230707 ((_ is Nil!5305) lt!225728))))

(assert (=> d!190553 (= (isPrefix!633 lt!225728 lt!225739) lt!225889)))

(declare-fun b!541927 () Bool)

(assert (=> b!541927 (= e!327293 (isPrefix!633 (tail!713 lt!225728) (tail!713 lt!225739)))))

(assert (= (and d!190553 (not res!230707)) b!541925))

(assert (= (and b!541925 res!230706) b!541926))

(assert (= (and b!541926 res!230709) b!541927))

(assert (= (and d!190553 (not res!230708)) b!541928))

(declare-fun m!789775 () Bool)

(assert (=> b!541928 m!789775))

(assert (=> b!541928 m!789299))

(assert (=> b!541926 m!789535))

(declare-fun m!789777 () Bool)

(assert (=> b!541926 m!789777))

(assert (=> b!541927 m!789537))

(declare-fun m!789779 () Bool)

(assert (=> b!541927 m!789779))

(assert (=> b!541927 m!789537))

(assert (=> b!541927 m!789779))

(declare-fun m!789781 () Bool)

(assert (=> b!541927 m!789781))

(assert (=> b!541521 d!190553))

(declare-fun d!190555 () Bool)

(assert (=> d!190555 (isPrefix!633 lt!225728 (++!1479 lt!225728 (_2!3442 (v!16151 lt!225737))))))

(declare-fun lt!225892 () Unit!9271)

(declare-fun choose!3827 (List!5315 List!5315) Unit!9271)

(assert (=> d!190555 (= lt!225892 (choose!3827 lt!225728 (_2!3442 (v!16151 lt!225737))))))

(assert (=> d!190555 (= (lemmaConcatTwoListThenFirstIsPrefix!484 lt!225728 (_2!3442 (v!16151 lt!225737))) lt!225892)))

(declare-fun bs!67530 () Bool)

(assert (= bs!67530 d!190555))

(assert (=> bs!67530 m!789275))

(assert (=> bs!67530 m!789275))

(declare-fun m!789783 () Bool)

(assert (=> bs!67530 m!789783))

(declare-fun m!789785 () Bool)

(assert (=> bs!67530 m!789785))

(assert (=> b!541521 d!190555))

(declare-fun d!190557 () Bool)

(declare-fun lt!225893 () Int)

(assert (=> d!190557 (>= lt!225893 0)))

(declare-fun e!327296 () Int)

(assert (=> d!190557 (= lt!225893 e!327296)))

(declare-fun c!102515 () Bool)

(assert (=> d!190557 (= c!102515 ((_ is Nil!5305) lt!225735))))

(assert (=> d!190557 (= (size!4261 lt!225735) lt!225893)))

(declare-fun b!541929 () Bool)

(assert (=> b!541929 (= e!327296 0)))

(declare-fun b!541930 () Bool)

(assert (=> b!541930 (= e!327296 (+ 1 (size!4261 (t!74412 lt!225735))))))

(assert (= (and d!190557 c!102515) b!541929))

(assert (= (and d!190557 (not c!102515)) b!541930))

(declare-fun m!789787 () Bool)

(assert (=> b!541930 m!789787))

(assert (=> b!541521 d!190557))

(declare-fun b!541934 () Bool)

(declare-fun e!327298 () Bool)

(assert (=> b!541934 (= e!327298 (>= (size!4261 input!2705) (size!4261 input!2705)))))

(declare-fun b!541931 () Bool)

(declare-fun e!327299 () Bool)

(declare-fun e!327297 () Bool)

(assert (=> b!541931 (= e!327299 e!327297)))

(declare-fun res!230710 () Bool)

(assert (=> b!541931 (=> (not res!230710) (not e!327297))))

(assert (=> b!541931 (= res!230710 (not ((_ is Nil!5305) input!2705)))))

(declare-fun b!541932 () Bool)

(declare-fun res!230713 () Bool)

(assert (=> b!541932 (=> (not res!230713) (not e!327297))))

(assert (=> b!541932 (= res!230713 (= (head!1184 input!2705) (head!1184 input!2705)))))

(declare-fun d!190559 () Bool)

(assert (=> d!190559 e!327298))

(declare-fun res!230712 () Bool)

(assert (=> d!190559 (=> res!230712 e!327298)))

(declare-fun lt!225894 () Bool)

(assert (=> d!190559 (= res!230712 (not lt!225894))))

(assert (=> d!190559 (= lt!225894 e!327299)))

(declare-fun res!230711 () Bool)

(assert (=> d!190559 (=> res!230711 e!327299)))

(assert (=> d!190559 (= res!230711 ((_ is Nil!5305) input!2705))))

(assert (=> d!190559 (= (isPrefix!633 input!2705 input!2705) lt!225894)))

(declare-fun b!541933 () Bool)

(assert (=> b!541933 (= e!327297 (isPrefix!633 (tail!713 input!2705) (tail!713 input!2705)))))

(assert (= (and d!190559 (not res!230711)) b!541931))

(assert (= (and b!541931 res!230710) b!541932))

(assert (= (and b!541932 res!230713) b!541933))

(assert (= (and d!190559 (not res!230712)) b!541934))

(assert (=> b!541934 m!789213))

(assert (=> b!541934 m!789213))

(assert (=> b!541932 m!789765))

(assert (=> b!541932 m!789765))

(assert (=> b!541933 m!789769))

(assert (=> b!541933 m!789769))

(assert (=> b!541933 m!789769))

(assert (=> b!541933 m!789769))

(declare-fun m!789789 () Bool)

(assert (=> b!541933 m!789789))

(assert (=> b!541521 d!190559))

(declare-fun d!190561 () Bool)

(assert (=> d!190561 (isPrefix!633 lt!225735 (++!1479 lt!225735 suffix!1342))))

(declare-fun lt!225895 () Unit!9271)

(assert (=> d!190561 (= lt!225895 (choose!3827 lt!225735 suffix!1342))))

(assert (=> d!190561 (= (lemmaConcatTwoListThenFirstIsPrefix!484 lt!225735 suffix!1342) lt!225895)))

(declare-fun bs!67531 () Bool)

(assert (= bs!67531 d!190561))

(assert (=> bs!67531 m!789249))

(assert (=> bs!67531 m!789249))

(declare-fun m!789791 () Bool)

(assert (=> bs!67531 m!789791))

(declare-fun m!789793 () Bool)

(assert (=> bs!67531 m!789793))

(assert (=> b!541521 d!190561))

(declare-fun d!190563 () Bool)

(assert (=> d!190563 (isPrefix!633 input!2705 input!2705)))

(declare-fun lt!225898 () Unit!9271)

(declare-fun choose!3828 (List!5315 List!5315) Unit!9271)

(assert (=> d!190563 (= lt!225898 (choose!3828 input!2705 input!2705))))

(assert (=> d!190563 (= (lemmaIsPrefixRefl!373 input!2705 input!2705) lt!225898)))

(declare-fun bs!67532 () Bool)

(assert (= bs!67532 d!190563))

(assert (=> bs!67532 m!789287))

(declare-fun m!789795 () Bool)

(assert (=> bs!67532 m!789795))

(assert (=> b!541521 d!190563))

(declare-fun b!541938 () Bool)

(declare-fun e!327301 () Bool)

(assert (=> b!541938 (= e!327301 (>= (size!4261 lt!225741) (size!4261 input!2705)))))

(declare-fun b!541935 () Bool)

(declare-fun e!327302 () Bool)

(declare-fun e!327300 () Bool)

(assert (=> b!541935 (= e!327302 e!327300)))

(declare-fun res!230714 () Bool)

(assert (=> b!541935 (=> (not res!230714) (not e!327300))))

(assert (=> b!541935 (= res!230714 (not ((_ is Nil!5305) lt!225741)))))

(declare-fun b!541936 () Bool)

(declare-fun res!230717 () Bool)

(assert (=> b!541936 (=> (not res!230717) (not e!327300))))

(assert (=> b!541936 (= res!230717 (= (head!1184 input!2705) (head!1184 lt!225741)))))

(declare-fun d!190565 () Bool)

(assert (=> d!190565 e!327301))

(declare-fun res!230716 () Bool)

(assert (=> d!190565 (=> res!230716 e!327301)))

(declare-fun lt!225899 () Bool)

(assert (=> d!190565 (= res!230716 (not lt!225899))))

(assert (=> d!190565 (= lt!225899 e!327302)))

(declare-fun res!230715 () Bool)

(assert (=> d!190565 (=> res!230715 e!327302)))

(assert (=> d!190565 (= res!230715 ((_ is Nil!5305) input!2705))))

(assert (=> d!190565 (= (isPrefix!633 input!2705 lt!225741) lt!225899)))

(declare-fun b!541937 () Bool)

(assert (=> b!541937 (= e!327300 (isPrefix!633 (tail!713 input!2705) (tail!713 lt!225741)))))

(assert (= (and d!190565 (not res!230715)) b!541935))

(assert (= (and b!541935 res!230714) b!541936))

(assert (= (and b!541936 res!230717) b!541937))

(assert (= (and d!190565 (not res!230716)) b!541938))

(declare-fun m!789797 () Bool)

(assert (=> b!541938 m!789797))

(assert (=> b!541938 m!789213))

(assert (=> b!541936 m!789765))

(declare-fun m!789799 () Bool)

(assert (=> b!541936 m!789799))

(assert (=> b!541937 m!789769))

(declare-fun m!789801 () Bool)

(assert (=> b!541937 m!789801))

(assert (=> b!541937 m!789769))

(assert (=> b!541937 m!789801))

(declare-fun m!789803 () Bool)

(assert (=> b!541937 m!789803))

(assert (=> b!541521 d!190565))

(declare-fun d!190567 () Bool)

(declare-fun lt!225902 () BalanceConc!3424)

(assert (=> d!190567 (= (list!2201 lt!225902) (originalCharacters!1030 (_1!3442 (v!16151 lt!225737))))))

(declare-fun dynLambda!3104 (Int TokenValue!1015) BalanceConc!3424)

(assert (=> d!190567 (= lt!225902 (dynLambda!3104 (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) (value!33110 (_1!3442 (v!16151 lt!225737)))))))

(assert (=> d!190567 (= (charsOf!620 (_1!3442 (v!16151 lt!225737))) lt!225902)))

(declare-fun b_lambda!20817 () Bool)

(assert (=> (not b_lambda!20817) (not d!190567)))

(declare-fun t!74432 () Bool)

(declare-fun tb!47683 () Bool)

(assert (=> (and b!541525 (= (toChars!1697 (transformation!991 (rule!1701 token!491))) (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))) t!74432) tb!47683))

(declare-fun b!541943 () Bool)

(declare-fun e!327305 () Bool)

(declare-fun tp!172453 () Bool)

(declare-fun inv!6660 (Conc!1708) Bool)

(assert (=> b!541943 (= e!327305 (and (inv!6660 (c!102449 (dynLambda!3104 (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) (value!33110 (_1!3442 (v!16151 lt!225737)))))) tp!172453))))

(declare-fun result!53282 () Bool)

(declare-fun inv!6661 (BalanceConc!3424) Bool)

(assert (=> tb!47683 (= result!53282 (and (inv!6661 (dynLambda!3104 (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) (value!33110 (_1!3442 (v!16151 lt!225737))))) e!327305))))

(assert (= tb!47683 b!541943))

(declare-fun m!789805 () Bool)

(assert (=> b!541943 m!789805))

(declare-fun m!789807 () Bool)

(assert (=> tb!47683 m!789807))

(assert (=> d!190567 t!74432))

(declare-fun b_and!52919 () Bool)

(assert (= b_and!52893 (and (=> t!74432 result!53282) b_and!52919)))

(declare-fun tb!47685 () Bool)

(declare-fun t!74434 () Bool)

(assert (=> (and b!541537 (= (toChars!1697 (transformation!991 (h!10708 rules!3103))) (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))) t!74434) tb!47685))

(declare-fun result!53286 () Bool)

(assert (= result!53286 result!53282))

(assert (=> d!190567 t!74434))

(declare-fun b_and!52921 () Bool)

(assert (= b_and!52897 (and (=> t!74434 result!53286) b_and!52921)))

(declare-fun m!789809 () Bool)

(assert (=> d!190567 m!789809))

(declare-fun m!789811 () Bool)

(assert (=> d!190567 m!789811))

(assert (=> b!541521 d!190567))

(declare-fun d!190569 () Bool)

(declare-fun dynLambda!3105 (Int BalanceConc!3424) TokenValue!1015)

(assert (=> d!190569 (= (apply!1266 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) lt!225759) (dynLambda!3105 (toValue!1838 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) lt!225759))))

(declare-fun b_lambda!20819 () Bool)

(assert (=> (not b_lambda!20819) (not d!190569)))

(declare-fun tb!47687 () Bool)

(declare-fun t!74436 () Bool)

(assert (=> (and b!541525 (= (toValue!1838 (transformation!991 (rule!1701 token!491))) (toValue!1838 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))) t!74436) tb!47687))

(declare-fun result!53288 () Bool)

(assert (=> tb!47687 (= result!53288 (inv!21 (dynLambda!3105 (toValue!1838 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) lt!225759)))))

(declare-fun m!789813 () Bool)

(assert (=> tb!47687 m!789813))

(assert (=> d!190569 t!74436))

(declare-fun b_and!52923 () Bool)

(assert (= b_and!52891 (and (=> t!74436 result!53288) b_and!52923)))

(declare-fun t!74438 () Bool)

(declare-fun tb!47689 () Bool)

(assert (=> (and b!541537 (= (toValue!1838 (transformation!991 (h!10708 rules!3103))) (toValue!1838 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))) t!74438) tb!47689))

(declare-fun result!53292 () Bool)

(assert (= result!53292 result!53288))

(assert (=> d!190569 t!74438))

(declare-fun b_and!52925 () Bool)

(assert (= b_and!52895 (and (=> t!74438 result!53292) b_and!52925)))

(declare-fun m!789815 () Bool)

(assert (=> d!190569 m!789815))

(assert (=> b!541521 d!190569))

(declare-fun d!190571 () Bool)

(assert (=> d!190571 (= (size!4260 (_1!3442 (v!16151 lt!225737))) (size!4261 (originalCharacters!1030 (_1!3442 (v!16151 lt!225737)))))))

(declare-fun Unit!9279 () Unit!9271)

(assert (=> d!190571 (= (lemmaCharactersSize!70 (_1!3442 (v!16151 lt!225737))) Unit!9279)))

(declare-fun bs!67533 () Bool)

(assert (= bs!67533 d!190571))

(assert (=> bs!67533 m!789319))

(assert (=> b!541521 d!190571))

(declare-fun d!190573 () Bool)

(assert (=> d!190573 (= (_2!3442 (v!16151 lt!225737)) lt!225757)))

(declare-fun lt!225905 () Unit!9271)

(declare-fun choose!3829 (List!5315 List!5315 List!5315 List!5315 List!5315) Unit!9271)

(assert (=> d!190573 (= lt!225905 (choose!3829 lt!225728 (_2!3442 (v!16151 lt!225737)) lt!225728 lt!225757 input!2705))))

(assert (=> d!190573 (isPrefix!633 lt!225728 input!2705)))

(assert (=> d!190573 (= (lemmaSamePrefixThenSameSuffix!360 lt!225728 (_2!3442 (v!16151 lt!225737)) lt!225728 lt!225757 input!2705) lt!225905)))

(declare-fun bs!67534 () Bool)

(assert (= bs!67534 d!190573))

(declare-fun m!789817 () Bool)

(assert (=> bs!67534 m!789817))

(assert (=> bs!67534 m!789315))

(assert (=> b!541521 d!190573))

(declare-fun d!190575 () Bool)

(declare-fun list!2203 (Conc!1708) List!5315)

(assert (=> d!190575 (= (list!2201 (charsOf!620 (_1!3442 (v!16151 lt!225737)))) (list!2203 (c!102449 (charsOf!620 (_1!3442 (v!16151 lt!225737))))))))

(declare-fun bs!67535 () Bool)

(assert (= bs!67535 d!190575))

(declare-fun m!789819 () Bool)

(assert (=> bs!67535 m!789819))

(assert (=> b!541521 d!190575))

(declare-fun b!541949 () Bool)

(declare-fun e!327310 () Bool)

(assert (=> b!541949 (= e!327310 (>= (size!4261 lt!225741) (size!4261 lt!225735)))))

(declare-fun b!541946 () Bool)

(declare-fun e!327311 () Bool)

(declare-fun e!327309 () Bool)

(assert (=> b!541946 (= e!327311 e!327309)))

(declare-fun res!230718 () Bool)

(assert (=> b!541946 (=> (not res!230718) (not e!327309))))

(assert (=> b!541946 (= res!230718 (not ((_ is Nil!5305) lt!225741)))))

(declare-fun b!541947 () Bool)

(declare-fun res!230721 () Bool)

(assert (=> b!541947 (=> (not res!230721) (not e!327309))))

(assert (=> b!541947 (= res!230721 (= (head!1184 lt!225735) (head!1184 lt!225741)))))

(declare-fun d!190577 () Bool)

(assert (=> d!190577 e!327310))

(declare-fun res!230720 () Bool)

(assert (=> d!190577 (=> res!230720 e!327310)))

(declare-fun lt!225906 () Bool)

(assert (=> d!190577 (= res!230720 (not lt!225906))))

(assert (=> d!190577 (= lt!225906 e!327311)))

(declare-fun res!230719 () Bool)

(assert (=> d!190577 (=> res!230719 e!327311)))

(assert (=> d!190577 (= res!230719 ((_ is Nil!5305) lt!225735))))

(assert (=> d!190577 (= (isPrefix!633 lt!225735 lt!225741) lt!225906)))

(declare-fun b!541948 () Bool)

(assert (=> b!541948 (= e!327309 (isPrefix!633 (tail!713 lt!225735) (tail!713 lt!225741)))))

(assert (= (and d!190577 (not res!230719)) b!541946))

(assert (= (and b!541946 res!230718) b!541947))

(assert (= (and b!541947 res!230721) b!541948))

(assert (= (and d!190577 (not res!230720)) b!541949))

(assert (=> b!541949 m!789797))

(assert (=> b!541949 m!789269))

(declare-fun m!789821 () Bool)

(assert (=> b!541947 m!789821))

(assert (=> b!541947 m!789799))

(declare-fun m!789823 () Bool)

(assert (=> b!541948 m!789823))

(assert (=> b!541948 m!789801))

(assert (=> b!541948 m!789823))

(assert (=> b!541948 m!789801))

(declare-fun m!789825 () Bool)

(assert (=> b!541948 m!789825))

(assert (=> b!541521 d!190577))

(declare-fun d!190579 () Bool)

(assert (=> d!190579 (ruleValid!211 thiss!22590 (rule!1701 token!491))))

(declare-fun lt!225909 () Unit!9271)

(declare-fun choose!3830 (LexerInterface!877 Rule!1782 List!5317) Unit!9271)

(assert (=> d!190579 (= lt!225909 (choose!3830 thiss!22590 (rule!1701 token!491) rules!3103))))

(assert (=> d!190579 (contains!1235 rules!3103 (rule!1701 token!491))))

(assert (=> d!190579 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!70 thiss!22590 (rule!1701 token!491) rules!3103) lt!225909)))

(declare-fun bs!67536 () Bool)

(assert (= bs!67536 d!190579))

(assert (=> bs!67536 m!789259))

(declare-fun m!789827 () Bool)

(assert (=> bs!67536 m!789827))

(assert (=> bs!67536 m!789255))

(assert (=> b!541521 d!190579))

(declare-fun d!190581 () Bool)

(assert (=> d!190581 (isPrefix!633 input!2705 (++!1479 input!2705 suffix!1342))))

(declare-fun lt!225910 () Unit!9271)

(assert (=> d!190581 (= lt!225910 (choose!3827 input!2705 suffix!1342))))

(assert (=> d!190581 (= (lemmaConcatTwoListThenFirstIsPrefix!484 input!2705 suffix!1342) lt!225910)))

(declare-fun bs!67537 () Bool)

(assert (= bs!67537 d!190581))

(assert (=> bs!67537 m!789339))

(assert (=> bs!67537 m!789339))

(declare-fun m!789829 () Bool)

(assert (=> bs!67537 m!789829))

(declare-fun m!789831 () Bool)

(assert (=> bs!67537 m!789831))

(assert (=> b!541521 d!190581))

(declare-fun d!190583 () Bool)

(declare-fun res!230722 () Bool)

(declare-fun e!327312 () Bool)

(assert (=> d!190583 (=> (not res!230722) (not e!327312))))

(assert (=> d!190583 (= res!230722 (validRegex!442 (regex!991 (rule!1701 token!491))))))

(assert (=> d!190583 (= (ruleValid!211 thiss!22590 (rule!1701 token!491)) e!327312)))

(declare-fun b!541950 () Bool)

(declare-fun res!230723 () Bool)

(assert (=> b!541950 (=> (not res!230723) (not e!327312))))

(assert (=> b!541950 (= res!230723 (not (nullable!347 (regex!991 (rule!1701 token!491)))))))

(declare-fun b!541951 () Bool)

(assert (=> b!541951 (= e!327312 (not (= (tag!1253 (rule!1701 token!491)) (String!6820 ""))))))

(assert (= (and d!190583 res!230722) b!541950))

(assert (= (and b!541950 res!230723) b!541951))

(declare-fun m!789833 () Bool)

(assert (=> d!190583 m!789833))

(declare-fun m!789835 () Bool)

(assert (=> b!541950 m!789835))

(assert (=> b!541521 d!190583))

(declare-fun b!541954 () Bool)

(declare-fun res!230724 () Bool)

(declare-fun e!327314 () Bool)

(assert (=> b!541954 (=> (not res!230724) (not e!327314))))

(declare-fun lt!225911 () List!5315)

(assert (=> b!541954 (= res!230724 (= (size!4261 lt!225911) (+ (size!4261 lt!225728) (size!4261 (_2!3442 (v!16151 lt!225737))))))))

(declare-fun b!541952 () Bool)

(declare-fun e!327313 () List!5315)

(assert (=> b!541952 (= e!327313 (_2!3442 (v!16151 lt!225737)))))

(declare-fun b!541955 () Bool)

(assert (=> b!541955 (= e!327314 (or (not (= (_2!3442 (v!16151 lt!225737)) Nil!5305)) (= lt!225911 lt!225728)))))

(declare-fun d!190585 () Bool)

(assert (=> d!190585 e!327314))

(declare-fun res!230725 () Bool)

(assert (=> d!190585 (=> (not res!230725) (not e!327314))))

(assert (=> d!190585 (= res!230725 (= (content!926 lt!225911) ((_ map or) (content!926 lt!225728) (content!926 (_2!3442 (v!16151 lt!225737))))))))

(assert (=> d!190585 (= lt!225911 e!327313)))

(declare-fun c!102516 () Bool)

(assert (=> d!190585 (= c!102516 ((_ is Nil!5305) lt!225728))))

(assert (=> d!190585 (= (++!1479 lt!225728 (_2!3442 (v!16151 lt!225737))) lt!225911)))

(declare-fun b!541953 () Bool)

(assert (=> b!541953 (= e!327313 (Cons!5305 (h!10706 lt!225728) (++!1479 (t!74412 lt!225728) (_2!3442 (v!16151 lt!225737)))))))

(assert (= (and d!190585 c!102516) b!541952))

(assert (= (and d!190585 (not c!102516)) b!541953))

(assert (= (and d!190585 res!230725) b!541954))

(assert (= (and b!541954 res!230724) b!541955))

(declare-fun m!789837 () Bool)

(assert (=> b!541954 m!789837))

(assert (=> b!541954 m!789299))

(declare-fun m!789839 () Bool)

(assert (=> b!541954 m!789839))

(declare-fun m!789841 () Bool)

(assert (=> d!190585 m!789841))

(declare-fun m!789843 () Bool)

(assert (=> d!190585 m!789843))

(declare-fun m!789845 () Bool)

(assert (=> d!190585 m!789845))

(declare-fun m!789847 () Bool)

(assert (=> b!541953 m!789847))

(assert (=> b!541521 d!190585))

(declare-fun d!190587 () Bool)

(assert (=> d!190587 (ruleValid!211 thiss!22590 (rule!1701 (_1!3442 (v!16151 lt!225737))))))

(declare-fun lt!225912 () Unit!9271)

(assert (=> d!190587 (= lt!225912 (choose!3830 thiss!22590 (rule!1701 (_1!3442 (v!16151 lt!225737))) rules!3103))))

(assert (=> d!190587 (contains!1235 rules!3103 (rule!1701 (_1!3442 (v!16151 lt!225737))))))

(assert (=> d!190587 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!70 thiss!22590 (rule!1701 (_1!3442 (v!16151 lt!225737))) rules!3103) lt!225912)))

(declare-fun bs!67538 () Bool)

(assert (= bs!67538 d!190587))

(assert (=> bs!67538 m!789311))

(declare-fun m!789849 () Bool)

(assert (=> bs!67538 m!789849))

(assert (=> bs!67538 m!789225))

(assert (=> b!541521 d!190587))

(declare-fun d!190589 () Bool)

(declare-fun e!327317 () Bool)

(assert (=> d!190589 e!327317))

(declare-fun res!230728 () Bool)

(assert (=> d!190589 (=> (not res!230728) (not e!327317))))

(assert (=> d!190589 (= res!230728 (semiInverseModEq!385 (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) (toValue!1838 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))))))

(declare-fun Unit!9280 () Unit!9271)

(assert (=> d!190589 (= (lemmaInv!139 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) Unit!9280)))

(declare-fun b!541958 () Bool)

(assert (=> b!541958 (= e!327317 (equivClasses!368 (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) (toValue!1838 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))))))

(assert (= (and d!190589 res!230728) b!541958))

(declare-fun m!789851 () Bool)

(assert (=> d!190589 m!789851))

(declare-fun m!789853 () Bool)

(assert (=> b!541958 m!789853))

(assert (=> b!541521 d!190589))

(declare-fun d!190591 () Bool)

(declare-fun e!327318 () Bool)

(assert (=> d!190591 e!327318))

(declare-fun res!230729 () Bool)

(assert (=> d!190591 (=> (not res!230729) (not e!327318))))

(assert (=> d!190591 (= res!230729 (semiInverseModEq!385 (toChars!1697 (transformation!991 (rule!1701 token!491))) (toValue!1838 (transformation!991 (rule!1701 token!491)))))))

(declare-fun Unit!9281 () Unit!9271)

(assert (=> d!190591 (= (lemmaInv!139 (transformation!991 (rule!1701 token!491))) Unit!9281)))

(declare-fun b!541959 () Bool)

(assert (=> b!541959 (= e!327318 (equivClasses!368 (toChars!1697 (transformation!991 (rule!1701 token!491))) (toValue!1838 (transformation!991 (rule!1701 token!491)))))))

(assert (= (and d!190591 res!230729) b!541959))

(assert (=> d!190591 m!789547))

(assert (=> b!541959 m!789549))

(assert (=> b!541521 d!190591))

(declare-fun d!190593 () Bool)

(assert (=> d!190593 (= (size!4260 token!491) (size!4261 (originalCharacters!1030 token!491)))))

(declare-fun Unit!9282 () Unit!9271)

(assert (=> d!190593 (= (lemmaCharactersSize!70 token!491) Unit!9282)))

(declare-fun bs!67539 () Bool)

(assert (= bs!67539 d!190593))

(assert (=> bs!67539 m!789223))

(assert (=> b!541521 d!190593))

(declare-fun d!190595 () Bool)

(declare-fun lt!225913 () Int)

(assert (=> d!190595 (>= lt!225913 0)))

(declare-fun e!327319 () Int)

(assert (=> d!190595 (= lt!225913 e!327319)))

(declare-fun c!102517 () Bool)

(assert (=> d!190595 (= c!102517 ((_ is Nil!5305) lt!225728))))

(assert (=> d!190595 (= (size!4261 lt!225728) lt!225913)))

(declare-fun b!541960 () Bool)

(assert (=> b!541960 (= e!327319 0)))

(declare-fun b!541961 () Bool)

(assert (=> b!541961 (= e!327319 (+ 1 (size!4261 (t!74412 lt!225728))))))

(assert (= (and d!190595 c!102517) b!541960))

(assert (= (and d!190595 (not c!102517)) b!541961))

(declare-fun m!789855 () Bool)

(assert (=> b!541961 m!789855))

(assert (=> b!541521 d!190595))

(declare-fun d!190597 () Bool)

(declare-fun lt!225916 () List!5315)

(assert (=> d!190597 (= (++!1479 lt!225728 lt!225916) input!2705)))

(declare-fun e!327322 () List!5315)

(assert (=> d!190597 (= lt!225916 e!327322)))

(declare-fun c!102520 () Bool)

(assert (=> d!190597 (= c!102520 ((_ is Cons!5305) lt!225728))))

(assert (=> d!190597 (>= (size!4261 input!2705) (size!4261 lt!225728))))

(assert (=> d!190597 (= (getSuffix!156 input!2705 lt!225728) lt!225916)))

(declare-fun b!541966 () Bool)

(assert (=> b!541966 (= e!327322 (getSuffix!156 (tail!713 input!2705) (t!74412 lt!225728)))))

(declare-fun b!541967 () Bool)

(assert (=> b!541967 (= e!327322 input!2705)))

(assert (= (and d!190597 c!102520) b!541966))

(assert (= (and d!190597 (not c!102520)) b!541967))

(declare-fun m!789857 () Bool)

(assert (=> d!190597 m!789857))

(assert (=> d!190597 m!789213))

(assert (=> d!190597 m!789299))

(assert (=> b!541966 m!789769))

(assert (=> b!541966 m!789769))

(declare-fun m!789859 () Bool)

(assert (=> b!541966 m!789859))

(assert (=> b!541521 d!190597))

(declare-fun d!190599 () Bool)

(declare-fun fromListB!521 (List!5315) BalanceConc!3424)

(assert (=> d!190599 (= (seqFromList!1189 lt!225728) (fromListB!521 lt!225728))))

(declare-fun bs!67540 () Bool)

(assert (= bs!67540 d!190599))

(declare-fun m!789861 () Bool)

(assert (=> bs!67540 m!789861))

(assert (=> b!541521 d!190599))

(declare-fun d!190601 () Bool)

(assert (=> d!190601 (and (= lt!225735 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!225919 () Unit!9271)

(declare-fun choose!3831 (List!5315 List!5315 List!5315 List!5315) Unit!9271)

(assert (=> d!190601 (= lt!225919 (choose!3831 lt!225735 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!190601 (= (++!1479 lt!225735 suffix!1342) (++!1479 input!2705 suffix!1342))))

(assert (=> d!190601 (= (lemmaConcatSameAndSameSizesThenSameLists!76 lt!225735 suffix!1342 input!2705 suffix!1342) lt!225919)))

(declare-fun bs!67541 () Bool)

(assert (= bs!67541 d!190601))

(declare-fun m!789863 () Bool)

(assert (=> bs!67541 m!789863))

(assert (=> bs!67541 m!789249))

(assert (=> bs!67541 m!789339))

(assert (=> b!541521 d!190601))

(declare-fun b!541968 () Bool)

(declare-fun e!327326 () Bool)

(declare-fun e!327324 () Bool)

(assert (=> b!541968 (= e!327326 e!327324)))

(declare-fun res!230731 () Bool)

(assert (=> b!541968 (=> res!230731 e!327324)))

(declare-fun call!38290 () Bool)

(assert (=> b!541968 (= res!230731 call!38290)))

(declare-fun b!541969 () Bool)

(declare-fun e!327327 () Bool)

(assert (=> b!541969 (= e!327327 (nullable!347 (regex!991 (rule!1701 token!491))))))

(declare-fun b!541970 () Bool)

(declare-fun res!230733 () Bool)

(declare-fun e!327328 () Bool)

(assert (=> b!541970 (=> (not res!230733) (not e!327328))))

(assert (=> b!541970 (= res!230733 (not call!38290))))

(declare-fun b!541971 () Bool)

(assert (=> b!541971 (= e!327324 (not (= (head!1184 input!2705) (c!102448 (regex!991 (rule!1701 token!491))))))))

(declare-fun b!541972 () Bool)

(assert (=> b!541972 (= e!327328 (= (head!1184 input!2705) (c!102448 (regex!991 (rule!1701 token!491)))))))

(declare-fun b!541973 () Bool)

(declare-fun e!327325 () Bool)

(assert (=> b!541973 (= e!327325 e!327326)))

(declare-fun res!230734 () Bool)

(assert (=> b!541973 (=> (not res!230734) (not e!327326))))

(declare-fun lt!225920 () Bool)

(assert (=> b!541973 (= res!230734 (not lt!225920))))

(declare-fun bm!38285 () Bool)

(assert (=> bm!38285 (= call!38290 (isEmpty!3832 input!2705))))

(declare-fun b!541974 () Bool)

(declare-fun res!230736 () Bool)

(assert (=> b!541974 (=> res!230736 e!327324)))

(assert (=> b!541974 (= res!230736 (not (isEmpty!3832 (tail!713 input!2705))))))

(declare-fun b!541975 () Bool)

(declare-fun res!230737 () Bool)

(assert (=> b!541975 (=> res!230737 e!327325)))

(assert (=> b!541975 (= res!230737 e!327328)))

(declare-fun res!230732 () Bool)

(assert (=> b!541975 (=> (not res!230732) (not e!327328))))

(assert (=> b!541975 (= res!230732 lt!225920)))

(declare-fun b!541976 () Bool)

(declare-fun e!327323 () Bool)

(declare-fun e!327329 () Bool)

(assert (=> b!541976 (= e!327323 e!327329)))

(declare-fun c!102522 () Bool)

(assert (=> b!541976 (= c!102522 ((_ is EmptyLang!1325) (regex!991 (rule!1701 token!491))))))

(declare-fun b!541977 () Bool)

(assert (=> b!541977 (= e!327327 (matchR!484 (derivativeStep!262 (regex!991 (rule!1701 token!491)) (head!1184 input!2705)) (tail!713 input!2705)))))

(declare-fun b!541978 () Bool)

(assert (=> b!541978 (= e!327323 (= lt!225920 call!38290))))

(declare-fun b!541979 () Bool)

(assert (=> b!541979 (= e!327329 (not lt!225920))))

(declare-fun d!190603 () Bool)

(assert (=> d!190603 e!327323))

(declare-fun c!102523 () Bool)

(assert (=> d!190603 (= c!102523 ((_ is EmptyExpr!1325) (regex!991 (rule!1701 token!491))))))

(assert (=> d!190603 (= lt!225920 e!327327)))

(declare-fun c!102521 () Bool)

(assert (=> d!190603 (= c!102521 (isEmpty!3832 input!2705))))

(assert (=> d!190603 (validRegex!442 (regex!991 (rule!1701 token!491)))))

(assert (=> d!190603 (= (matchR!484 (regex!991 (rule!1701 token!491)) input!2705) lt!225920)))

(declare-fun b!541980 () Bool)

(declare-fun res!230735 () Bool)

(assert (=> b!541980 (=> res!230735 e!327325)))

(assert (=> b!541980 (= res!230735 (not ((_ is ElementMatch!1325) (regex!991 (rule!1701 token!491)))))))

(assert (=> b!541980 (= e!327329 e!327325)))

(declare-fun b!541981 () Bool)

(declare-fun res!230730 () Bool)

(assert (=> b!541981 (=> (not res!230730) (not e!327328))))

(assert (=> b!541981 (= res!230730 (isEmpty!3832 (tail!713 input!2705)))))

(assert (= (and d!190603 c!102521) b!541969))

(assert (= (and d!190603 (not c!102521)) b!541977))

(assert (= (and d!190603 c!102523) b!541978))

(assert (= (and d!190603 (not c!102523)) b!541976))

(assert (= (and b!541976 c!102522) b!541979))

(assert (= (and b!541976 (not c!102522)) b!541980))

(assert (= (and b!541980 (not res!230735)) b!541975))

(assert (= (and b!541975 res!230732) b!541970))

(assert (= (and b!541970 res!230733) b!541981))

(assert (= (and b!541981 res!230730) b!541972))

(assert (= (and b!541975 (not res!230737)) b!541973))

(assert (= (and b!541973 res!230734) b!541968))

(assert (= (and b!541968 (not res!230731)) b!541974))

(assert (= (and b!541974 (not res!230736)) b!541971))

(assert (= (or b!541978 b!541968 b!541970) bm!38285))

(assert (=> b!541969 m!789835))

(assert (=> d!190603 m!789253))

(assert (=> d!190603 m!789833))

(assert (=> b!541971 m!789765))

(assert (=> b!541981 m!789769))

(assert (=> b!541981 m!789769))

(declare-fun m!789865 () Bool)

(assert (=> b!541981 m!789865))

(assert (=> bm!38285 m!789253))

(assert (=> b!541977 m!789765))

(assert (=> b!541977 m!789765))

(declare-fun m!789867 () Bool)

(assert (=> b!541977 m!789867))

(assert (=> b!541977 m!789769))

(assert (=> b!541977 m!789867))

(assert (=> b!541977 m!789769))

(declare-fun m!789869 () Bool)

(assert (=> b!541977 m!789869))

(assert (=> b!541972 m!789765))

(assert (=> b!541974 m!789769))

(assert (=> b!541974 m!789769))

(assert (=> b!541974 m!789865))

(assert (=> b!541516 d!190603))

(declare-fun d!190605 () Bool)

(assert (=> d!190605 (= (isDefined!1153 lt!225737) (not (isEmpty!3835 lt!225737)))))

(declare-fun bs!67542 () Bool)

(assert (= bs!67542 d!190605))

(declare-fun m!789871 () Bool)

(assert (=> bs!67542 m!789871))

(assert (=> b!541538 d!190605))

(declare-fun b!541985 () Bool)

(declare-fun e!327331 () Bool)

(assert (=> b!541985 (= e!327331 (>= (size!4261 input!2705) (size!4261 lt!225728)))))

(declare-fun b!541982 () Bool)

(declare-fun e!327332 () Bool)

(declare-fun e!327330 () Bool)

(assert (=> b!541982 (= e!327332 e!327330)))

(declare-fun res!230738 () Bool)

(assert (=> b!541982 (=> (not res!230738) (not e!327330))))

(assert (=> b!541982 (= res!230738 (not ((_ is Nil!5305) input!2705)))))

(declare-fun b!541983 () Bool)

(declare-fun res!230741 () Bool)

(assert (=> b!541983 (=> (not res!230741) (not e!327330))))

(assert (=> b!541983 (= res!230741 (= (head!1184 lt!225728) (head!1184 input!2705)))))

(declare-fun d!190607 () Bool)

(assert (=> d!190607 e!327331))

(declare-fun res!230740 () Bool)

(assert (=> d!190607 (=> res!230740 e!327331)))

(declare-fun lt!225921 () Bool)

(assert (=> d!190607 (= res!230740 (not lt!225921))))

(assert (=> d!190607 (= lt!225921 e!327332)))

(declare-fun res!230739 () Bool)

(assert (=> d!190607 (=> res!230739 e!327332)))

(assert (=> d!190607 (= res!230739 ((_ is Nil!5305) lt!225728))))

(assert (=> d!190607 (= (isPrefix!633 lt!225728 input!2705) lt!225921)))

(declare-fun b!541984 () Bool)

(assert (=> b!541984 (= e!327330 (isPrefix!633 (tail!713 lt!225728) (tail!713 input!2705)))))

(assert (= (and d!190607 (not res!230739)) b!541982))

(assert (= (and b!541982 res!230738) b!541983))

(assert (= (and b!541983 res!230741) b!541984))

(assert (= (and d!190607 (not res!230740)) b!541985))

(assert (=> b!541985 m!789213))

(assert (=> b!541985 m!789299))

(assert (=> b!541983 m!789535))

(assert (=> b!541983 m!789765))

(assert (=> b!541984 m!789537))

(assert (=> b!541984 m!789769))

(assert (=> b!541984 m!789537))

(assert (=> b!541984 m!789769))

(declare-fun m!789873 () Bool)

(assert (=> b!541984 m!789873))

(assert (=> b!541517 d!190607))

(declare-fun d!190609 () Bool)

(assert (=> d!190609 (= (list!2201 (charsOf!620 token!491)) (list!2203 (c!102449 (charsOf!620 token!491))))))

(declare-fun bs!67543 () Bool)

(assert (= bs!67543 d!190609))

(declare-fun m!789875 () Bool)

(assert (=> bs!67543 m!789875))

(assert (=> b!541539 d!190609))

(declare-fun d!190611 () Bool)

(declare-fun lt!225922 () BalanceConc!3424)

(assert (=> d!190611 (= (list!2201 lt!225922) (originalCharacters!1030 token!491))))

(assert (=> d!190611 (= lt!225922 (dynLambda!3104 (toChars!1697 (transformation!991 (rule!1701 token!491))) (value!33110 token!491)))))

(assert (=> d!190611 (= (charsOf!620 token!491) lt!225922)))

(declare-fun b_lambda!20821 () Bool)

(assert (=> (not b_lambda!20821) (not d!190611)))

(declare-fun t!74440 () Bool)

(declare-fun tb!47691 () Bool)

(assert (=> (and b!541525 (= (toChars!1697 (transformation!991 (rule!1701 token!491))) (toChars!1697 (transformation!991 (rule!1701 token!491)))) t!74440) tb!47691))

(declare-fun b!541986 () Bool)

(declare-fun e!327333 () Bool)

(declare-fun tp!172454 () Bool)

(assert (=> b!541986 (= e!327333 (and (inv!6660 (c!102449 (dynLambda!3104 (toChars!1697 (transformation!991 (rule!1701 token!491))) (value!33110 token!491)))) tp!172454))))

(declare-fun result!53294 () Bool)

(assert (=> tb!47691 (= result!53294 (and (inv!6661 (dynLambda!3104 (toChars!1697 (transformation!991 (rule!1701 token!491))) (value!33110 token!491))) e!327333))))

(assert (= tb!47691 b!541986))

(declare-fun m!789877 () Bool)

(assert (=> b!541986 m!789877))

(declare-fun m!789879 () Bool)

(assert (=> tb!47691 m!789879))

(assert (=> d!190611 t!74440))

(declare-fun b_and!52927 () Bool)

(assert (= b_and!52919 (and (=> t!74440 result!53294) b_and!52927)))

(declare-fun t!74442 () Bool)

(declare-fun tb!47693 () Bool)

(assert (=> (and b!541537 (= (toChars!1697 (transformation!991 (h!10708 rules!3103))) (toChars!1697 (transformation!991 (rule!1701 token!491)))) t!74442) tb!47693))

(declare-fun result!53296 () Bool)

(assert (= result!53296 result!53294))

(assert (=> d!190611 t!74442))

(declare-fun b_and!52929 () Bool)

(assert (= b_and!52921 (and (=> t!74442 result!53296) b_and!52929)))

(declare-fun m!789881 () Bool)

(assert (=> d!190611 m!789881))

(declare-fun m!789883 () Bool)

(assert (=> d!190611 m!789883))

(assert (=> b!541539 d!190611))

(declare-fun b!542066 () Bool)

(declare-fun e!327377 () Bool)

(assert (=> b!542066 (= e!327377 true)))

(declare-fun d!190613 () Bool)

(assert (=> d!190613 e!327377))

(assert (= d!190613 b!542066))

(declare-fun order!4433 () Int)

(declare-fun order!4435 () Int)

(declare-fun lambda!15454 () Int)

(declare-fun dynLambda!3109 (Int Int) Int)

(declare-fun dynLambda!3110 (Int Int) Int)

(assert (=> b!542066 (< (dynLambda!3109 order!4433 (toValue!1838 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))) (dynLambda!3110 order!4435 lambda!15454))))

(declare-fun order!4437 () Int)

(declare-fun dynLambda!3111 (Int Int) Int)

(assert (=> b!542066 (< (dynLambda!3111 order!4437 (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))) (dynLambda!3110 order!4435 lambda!15454))))

(assert (=> d!190613 (= (list!2201 (dynLambda!3104 (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) (dynLambda!3105 (toValue!1838 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) lt!225759))) (list!2201 lt!225759))))

(declare-fun lt!225937 () Unit!9271)

(declare-fun ForallOf!80 (Int BalanceConc!3424) Unit!9271)

(assert (=> d!190613 (= lt!225937 (ForallOf!80 lambda!15454 lt!225759))))

(assert (=> d!190613 (= (lemmaSemiInverse!120 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) lt!225759) lt!225937)))

(declare-fun b_lambda!20833 () Bool)

(assert (=> (not b_lambda!20833) (not d!190613)))

(declare-fun tb!47709 () Bool)

(declare-fun t!74458 () Bool)

(assert (=> (and b!541525 (= (toChars!1697 (transformation!991 (rule!1701 token!491))) (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))) t!74458) tb!47709))

(declare-fun tp!172493 () Bool)

(declare-fun b!542067 () Bool)

(declare-fun e!327378 () Bool)

(assert (=> b!542067 (= e!327378 (and (inv!6660 (c!102449 (dynLambda!3104 (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) (dynLambda!3105 (toValue!1838 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) lt!225759)))) tp!172493))))

(declare-fun result!53318 () Bool)

(assert (=> tb!47709 (= result!53318 (and (inv!6661 (dynLambda!3104 (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) (dynLambda!3105 (toValue!1838 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737))))) lt!225759))) e!327378))))

(assert (= tb!47709 b!542067))

(declare-fun m!789953 () Bool)

(assert (=> b!542067 m!789953))

(declare-fun m!789955 () Bool)

(assert (=> tb!47709 m!789955))

(assert (=> d!190613 t!74458))

(declare-fun b_and!52943 () Bool)

(assert (= b_and!52927 (and (=> t!74458 result!53318) b_and!52943)))

(declare-fun t!74460 () Bool)

(declare-fun tb!47711 () Bool)

(assert (=> (and b!541537 (= (toChars!1697 (transformation!991 (h!10708 rules!3103))) (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))) t!74460) tb!47711))

(declare-fun result!53320 () Bool)

(assert (= result!53320 result!53318))

(assert (=> d!190613 t!74460))

(declare-fun b_and!52945 () Bool)

(assert (= b_and!52929 (and (=> t!74460 result!53320) b_and!52945)))

(declare-fun b_lambda!20835 () Bool)

(assert (=> (not b_lambda!20835) (not d!190613)))

(assert (=> d!190613 t!74436))

(declare-fun b_and!52947 () Bool)

(assert (= b_and!52923 (and (=> t!74436 result!53288) b_and!52947)))

(assert (=> d!190613 t!74438))

(declare-fun b_and!52949 () Bool)

(assert (= b_and!52925 (and (=> t!74438 result!53292) b_and!52949)))

(declare-fun m!789957 () Bool)

(assert (=> d!190613 m!789957))

(declare-fun m!789959 () Bool)

(assert (=> d!190613 m!789959))

(declare-fun m!789961 () Bool)

(assert (=> d!190613 m!789961))

(declare-fun m!789963 () Bool)

(assert (=> d!190613 m!789963))

(assert (=> d!190613 m!789815))

(assert (=> d!190613 m!789815))

(assert (=> d!190613 m!789957))

(assert (=> b!541518 d!190613))

(declare-fun b!542070 () Bool)

(declare-fun res!230763 () Bool)

(declare-fun e!327380 () Bool)

(assert (=> b!542070 (=> (not res!230763) (not e!327380))))

(declare-fun lt!225938 () List!5315)

(assert (=> b!542070 (= res!230763 (= (size!4261 lt!225938) (+ (size!4261 lt!225735) (size!4261 suffix!1342))))))

(declare-fun b!542068 () Bool)

(declare-fun e!327379 () List!5315)

(assert (=> b!542068 (= e!327379 suffix!1342)))

(declare-fun b!542071 () Bool)

(assert (=> b!542071 (= e!327380 (or (not (= suffix!1342 Nil!5305)) (= lt!225938 lt!225735)))))

(declare-fun d!190627 () Bool)

(assert (=> d!190627 e!327380))

(declare-fun res!230764 () Bool)

(assert (=> d!190627 (=> (not res!230764) (not e!327380))))

(assert (=> d!190627 (= res!230764 (= (content!926 lt!225938) ((_ map or) (content!926 lt!225735) (content!926 suffix!1342))))))

(assert (=> d!190627 (= lt!225938 e!327379)))

(declare-fun c!102531 () Bool)

(assert (=> d!190627 (= c!102531 ((_ is Nil!5305) lt!225735))))

(assert (=> d!190627 (= (++!1479 lt!225735 suffix!1342) lt!225938)))

(declare-fun b!542069 () Bool)

(assert (=> b!542069 (= e!327379 (Cons!5305 (h!10706 lt!225735) (++!1479 (t!74412 lt!225735) suffix!1342)))))

(assert (= (and d!190627 c!102531) b!542068))

(assert (= (and d!190627 (not c!102531)) b!542069))

(assert (= (and d!190627 res!230764) b!542070))

(assert (= (and b!542070 res!230763) b!542071))

(declare-fun m!789965 () Bool)

(assert (=> b!542070 m!789965))

(assert (=> b!542070 m!789269))

(assert (=> b!542070 m!789755))

(declare-fun m!789967 () Bool)

(assert (=> d!190627 m!789967))

(declare-fun m!789969 () Bool)

(assert (=> d!190627 m!789969))

(assert (=> d!190627 m!789761))

(declare-fun m!789971 () Bool)

(assert (=> b!542069 m!789971))

(assert (=> b!541535 d!190627))

(declare-fun d!190629 () Bool)

(assert (=> d!190629 true))

(declare-fun lt!225941 () Bool)

(declare-fun lambda!15457 () Int)

(declare-fun forall!1520 (List!5317 Int) Bool)

(assert (=> d!190629 (= lt!225941 (forall!1520 rules!3103 lambda!15457))))

(declare-fun e!327386 () Bool)

(assert (=> d!190629 (= lt!225941 e!327386)))

(declare-fun res!230769 () Bool)

(assert (=> d!190629 (=> res!230769 e!327386)))

(assert (=> d!190629 (= res!230769 (not ((_ is Cons!5307) rules!3103)))))

(assert (=> d!190629 (= (rulesValidInductive!344 thiss!22590 rules!3103) lt!225941)))

(declare-fun b!542076 () Bool)

(declare-fun e!327385 () Bool)

(assert (=> b!542076 (= e!327386 e!327385)))

(declare-fun res!230770 () Bool)

(assert (=> b!542076 (=> (not res!230770) (not e!327385))))

(assert (=> b!542076 (= res!230770 (ruleValid!211 thiss!22590 (h!10708 rules!3103)))))

(declare-fun b!542077 () Bool)

(assert (=> b!542077 (= e!327385 (rulesValidInductive!344 thiss!22590 (t!74414 rules!3103)))))

(assert (= (and d!190629 (not res!230769)) b!542076))

(assert (= (and b!542076 res!230770) b!542077))

(declare-fun m!789973 () Bool)

(assert (=> d!190629 m!789973))

(declare-fun m!789975 () Bool)

(assert (=> b!542076 m!789975))

(declare-fun m!789977 () Bool)

(assert (=> b!542077 m!789977))

(assert (=> b!541514 d!190629))

(declare-fun d!190631 () Bool)

(declare-fun lt!225942 () List!5315)

(assert (=> d!190631 (= (++!1479 input!2705 lt!225942) input!2705)))

(declare-fun e!327387 () List!5315)

(assert (=> d!190631 (= lt!225942 e!327387)))

(declare-fun c!102532 () Bool)

(assert (=> d!190631 (= c!102532 ((_ is Cons!5305) input!2705))))

(assert (=> d!190631 (>= (size!4261 input!2705) (size!4261 input!2705))))

(assert (=> d!190631 (= (getSuffix!156 input!2705 input!2705) lt!225942)))

(declare-fun b!542080 () Bool)

(assert (=> b!542080 (= e!327387 (getSuffix!156 (tail!713 input!2705) (t!74412 input!2705)))))

(declare-fun b!542081 () Bool)

(assert (=> b!542081 (= e!327387 input!2705)))

(assert (= (and d!190631 c!102532) b!542080))

(assert (= (and d!190631 (not c!102532)) b!542081))

(declare-fun m!789979 () Bool)

(assert (=> d!190631 m!789979))

(assert (=> d!190631 m!789213))

(assert (=> d!190631 m!789213))

(assert (=> b!542080 m!789769))

(assert (=> b!542080 m!789769))

(declare-fun m!789981 () Bool)

(assert (=> b!542080 m!789981))

(assert (=> b!541536 d!190631))

(declare-fun b!542084 () Bool)

(declare-fun res!230771 () Bool)

(declare-fun e!327389 () Bool)

(assert (=> b!542084 (=> (not res!230771) (not e!327389))))

(declare-fun lt!225943 () List!5315)

(assert (=> b!542084 (= res!230771 (= (size!4261 lt!225943) (+ (size!4261 lt!225728) (size!4261 lt!225757))))))

(declare-fun b!542082 () Bool)

(declare-fun e!327388 () List!5315)

(assert (=> b!542082 (= e!327388 lt!225757)))

(declare-fun b!542085 () Bool)

(assert (=> b!542085 (= e!327389 (or (not (= lt!225757 Nil!5305)) (= lt!225943 lt!225728)))))

(declare-fun d!190633 () Bool)

(assert (=> d!190633 e!327389))

(declare-fun res!230772 () Bool)

(assert (=> d!190633 (=> (not res!230772) (not e!327389))))

(assert (=> d!190633 (= res!230772 (= (content!926 lt!225943) ((_ map or) (content!926 lt!225728) (content!926 lt!225757))))))

(assert (=> d!190633 (= lt!225943 e!327388)))

(declare-fun c!102533 () Bool)

(assert (=> d!190633 (= c!102533 ((_ is Nil!5305) lt!225728))))

(assert (=> d!190633 (= (++!1479 lt!225728 lt!225757) lt!225943)))

(declare-fun b!542083 () Bool)

(assert (=> b!542083 (= e!327388 (Cons!5305 (h!10706 lt!225728) (++!1479 (t!74412 lt!225728) lt!225757)))))

(assert (= (and d!190633 c!102533) b!542082))

(assert (= (and d!190633 (not c!102533)) b!542083))

(assert (= (and d!190633 res!230772) b!542084))

(assert (= (and b!542084 res!230771) b!542085))

(declare-fun m!789983 () Bool)

(assert (=> b!542084 m!789983))

(assert (=> b!542084 m!789299))

(declare-fun m!789985 () Bool)

(assert (=> b!542084 m!789985))

(declare-fun m!789987 () Bool)

(assert (=> d!190633 m!789987))

(assert (=> d!190633 m!789843))

(declare-fun m!789989 () Bool)

(assert (=> d!190633 m!789989))

(declare-fun m!789991 () Bool)

(assert (=> b!542083 m!789991))

(assert (=> b!541515 d!190633))

(declare-fun b!542089 () Bool)

(declare-fun e!327391 () Bool)

(assert (=> b!542089 (= e!327391 (>= (size!4261 input!2705) (size!4261 lt!225735)))))

(declare-fun b!542086 () Bool)

(declare-fun e!327392 () Bool)

(declare-fun e!327390 () Bool)

(assert (=> b!542086 (= e!327392 e!327390)))

(declare-fun res!230773 () Bool)

(assert (=> b!542086 (=> (not res!230773) (not e!327390))))

(assert (=> b!542086 (= res!230773 (not ((_ is Nil!5305) input!2705)))))

(declare-fun b!542087 () Bool)

(declare-fun res!230776 () Bool)

(assert (=> b!542087 (=> (not res!230776) (not e!327390))))

(assert (=> b!542087 (= res!230776 (= (head!1184 lt!225735) (head!1184 input!2705)))))

(declare-fun d!190635 () Bool)

(assert (=> d!190635 e!327391))

(declare-fun res!230775 () Bool)

(assert (=> d!190635 (=> res!230775 e!327391)))

(declare-fun lt!225944 () Bool)

(assert (=> d!190635 (= res!230775 (not lt!225944))))

(assert (=> d!190635 (= lt!225944 e!327392)))

(declare-fun res!230774 () Bool)

(assert (=> d!190635 (=> res!230774 e!327392)))

(assert (=> d!190635 (= res!230774 ((_ is Nil!5305) lt!225735))))

(assert (=> d!190635 (= (isPrefix!633 lt!225735 input!2705) lt!225944)))

(declare-fun b!542088 () Bool)

(assert (=> b!542088 (= e!327390 (isPrefix!633 (tail!713 lt!225735) (tail!713 input!2705)))))

(assert (= (and d!190635 (not res!230774)) b!542086))

(assert (= (and b!542086 res!230773) b!542087))

(assert (= (and b!542087 res!230776) b!542088))

(assert (= (and d!190635 (not res!230775)) b!542089))

(assert (=> b!542089 m!789213))

(assert (=> b!542089 m!789269))

(assert (=> b!542087 m!789821))

(assert (=> b!542087 m!789765))

(assert (=> b!542088 m!789823))

(assert (=> b!542088 m!789769))

(assert (=> b!542088 m!789823))

(assert (=> b!542088 m!789769))

(declare-fun m!789993 () Bool)

(assert (=> b!542088 m!789993))

(assert (=> b!541532 d!190635))

(declare-fun d!190637 () Bool)

(assert (=> d!190637 (= suffix!1342 lt!225732)))

(declare-fun lt!225945 () Unit!9271)

(assert (=> d!190637 (= lt!225945 (choose!3829 lt!225735 suffix!1342 lt!225735 lt!225732 lt!225742))))

(assert (=> d!190637 (isPrefix!633 lt!225735 lt!225742)))

(assert (=> d!190637 (= (lemmaSamePrefixThenSameSuffix!360 lt!225735 suffix!1342 lt!225735 lt!225732 lt!225742) lt!225945)))

(declare-fun bs!67544 () Bool)

(assert (= bs!67544 d!190637))

(declare-fun m!789995 () Bool)

(assert (=> bs!67544 m!789995))

(declare-fun m!789997 () Bool)

(assert (=> bs!67544 m!789997))

(assert (=> b!541511 d!190637))

(declare-fun b!542108 () Bool)

(declare-fun res!230796 () Bool)

(declare-fun e!327401 () Bool)

(assert (=> b!542108 (=> (not res!230796) (not e!327401))))

(declare-fun lt!225958 () Option!1341)

(assert (=> b!542108 (= res!230796 (= (++!1479 (list!2201 (charsOf!620 (_1!3442 (get!2001 lt!225958)))) (_2!3442 (get!2001 lt!225958))) input!2705))))

(declare-fun b!542109 () Bool)

(declare-fun e!327402 () Bool)

(assert (=> b!542109 (= e!327402 e!327401)))

(declare-fun res!230795 () Bool)

(assert (=> b!542109 (=> (not res!230795) (not e!327401))))

(assert (=> b!542109 (= res!230795 (matchR!484 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) (list!2201 (charsOf!620 (_1!3442 (get!2001 lt!225958))))))))

(declare-fun b!542110 () Bool)

(assert (=> b!542110 (= e!327401 (= (size!4260 (_1!3442 (get!2001 lt!225958))) (size!4261 (originalCharacters!1030 (_1!3442 (get!2001 lt!225958))))))))

(declare-fun b!542111 () Bool)

(declare-fun e!327404 () Option!1341)

(assert (=> b!542111 (= e!327404 None!1340)))

(declare-fun b!542112 () Bool)

(declare-datatypes ((tuple2!6360 0))(
  ( (tuple2!6361 (_1!3444 List!5315) (_2!3444 List!5315)) )
))
(declare-fun lt!225957 () tuple2!6360)

(declare-fun size!4263 (BalanceConc!3424) Int)

(assert (=> b!542112 (= e!327404 (Some!1340 (tuple2!6357 (Token!1719 (apply!1266 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) (seqFromList!1189 (_1!3444 lt!225957))) (rule!1701 (_1!3442 (v!16151 lt!225737))) (size!4263 (seqFromList!1189 (_1!3444 lt!225957))) (_1!3444 lt!225957)) (_2!3444 lt!225957))))))

(declare-fun lt!225960 () Unit!9271)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!115 (Regex!1325 List!5315) Unit!9271)

(assert (=> b!542112 (= lt!225960 (longestMatchIsAcceptedByMatchOrIsEmpty!115 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) input!2705))))

(declare-fun res!230793 () Bool)

(declare-fun findLongestMatchInner!131 (Regex!1325 List!5315 Int List!5315 List!5315 Int) tuple2!6360)

(assert (=> b!542112 (= res!230793 (isEmpty!3832 (_1!3444 (findLongestMatchInner!131 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) Nil!5305 (size!4261 Nil!5305) input!2705 input!2705 (size!4261 input!2705)))))))

(declare-fun e!327403 () Bool)

(assert (=> b!542112 (=> res!230793 e!327403)))

(assert (=> b!542112 e!327403))

(declare-fun lt!225959 () Unit!9271)

(assert (=> b!542112 (= lt!225959 lt!225960)))

(declare-fun lt!225956 () Unit!9271)

(assert (=> b!542112 (= lt!225956 (lemmaSemiInverse!120 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) (seqFromList!1189 (_1!3444 lt!225957))))))

(declare-fun b!542113 () Bool)

(declare-fun res!230792 () Bool)

(assert (=> b!542113 (=> (not res!230792) (not e!327401))))

(assert (=> b!542113 (= res!230792 (= (value!33110 (_1!3442 (get!2001 lt!225958))) (apply!1266 (transformation!991 (rule!1701 (_1!3442 (get!2001 lt!225958)))) (seqFromList!1189 (originalCharacters!1030 (_1!3442 (get!2001 lt!225958)))))))))

(declare-fun d!190639 () Bool)

(assert (=> d!190639 e!327402))

(declare-fun res!230794 () Bool)

(assert (=> d!190639 (=> res!230794 e!327402)))

(assert (=> d!190639 (= res!230794 (isEmpty!3835 lt!225958))))

(assert (=> d!190639 (= lt!225958 e!327404)))

(declare-fun c!102536 () Bool)

(assert (=> d!190639 (= c!102536 (isEmpty!3832 (_1!3444 lt!225957)))))

(declare-fun findLongestMatch!110 (Regex!1325 List!5315) tuple2!6360)

(assert (=> d!190639 (= lt!225957 (findLongestMatch!110 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) input!2705))))

(assert (=> d!190639 (ruleValid!211 thiss!22590 (rule!1701 (_1!3442 (v!16151 lt!225737))))))

(assert (=> d!190639 (= (maxPrefixOneRule!290 thiss!22590 (rule!1701 (_1!3442 (v!16151 lt!225737))) input!2705) lt!225958)))

(declare-fun b!542114 () Bool)

(assert (=> b!542114 (= e!327403 (matchR!484 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) (_1!3444 (findLongestMatchInner!131 (regex!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) Nil!5305 (size!4261 Nil!5305) input!2705 input!2705 (size!4261 input!2705)))))))

(declare-fun b!542115 () Bool)

(declare-fun res!230791 () Bool)

(assert (=> b!542115 (=> (not res!230791) (not e!327401))))

(assert (=> b!542115 (= res!230791 (< (size!4261 (_2!3442 (get!2001 lt!225958))) (size!4261 input!2705)))))

(declare-fun b!542116 () Bool)

(declare-fun res!230797 () Bool)

(assert (=> b!542116 (=> (not res!230797) (not e!327401))))

(assert (=> b!542116 (= res!230797 (= (rule!1701 (_1!3442 (get!2001 lt!225958))) (rule!1701 (_1!3442 (v!16151 lt!225737)))))))

(assert (= (and d!190639 c!102536) b!542111))

(assert (= (and d!190639 (not c!102536)) b!542112))

(assert (= (and b!542112 (not res!230793)) b!542114))

(assert (= (and d!190639 (not res!230794)) b!542109))

(assert (= (and b!542109 res!230795) b!542108))

(assert (= (and b!542108 res!230796) b!542115))

(assert (= (and b!542115 res!230791) b!542116))

(assert (= (and b!542116 res!230797) b!542113))

(assert (= (and b!542113 res!230792) b!542110))

(declare-fun m!789999 () Bool)

(assert (=> b!542108 m!789999))

(declare-fun m!790001 () Bool)

(assert (=> b!542108 m!790001))

(assert (=> b!542108 m!790001))

(declare-fun m!790003 () Bool)

(assert (=> b!542108 m!790003))

(assert (=> b!542108 m!790003))

(declare-fun m!790005 () Bool)

(assert (=> b!542108 m!790005))

(assert (=> b!542115 m!789999))

(declare-fun m!790007 () Bool)

(assert (=> b!542115 m!790007))

(assert (=> b!542115 m!789213))

(declare-fun m!790009 () Bool)

(assert (=> b!542112 m!790009))

(declare-fun m!790011 () Bool)

(assert (=> b!542112 m!790011))

(assert (=> b!542112 m!790009))

(declare-fun m!790013 () Bool)

(assert (=> b!542112 m!790013))

(declare-fun m!790015 () Bool)

(assert (=> b!542112 m!790015))

(assert (=> b!542112 m!789213))

(declare-fun m!790017 () Bool)

(assert (=> b!542112 m!790017))

(assert (=> b!542112 m!789213))

(declare-fun m!790019 () Bool)

(assert (=> b!542112 m!790019))

(assert (=> b!542112 m!790009))

(assert (=> b!542112 m!790009))

(declare-fun m!790021 () Bool)

(assert (=> b!542112 m!790021))

(assert (=> b!542112 m!790017))

(declare-fun m!790023 () Bool)

(assert (=> b!542112 m!790023))

(assert (=> b!542116 m!789999))

(assert (=> b!542113 m!789999))

(declare-fun m!790025 () Bool)

(assert (=> b!542113 m!790025))

(assert (=> b!542113 m!790025))

(declare-fun m!790027 () Bool)

(assert (=> b!542113 m!790027))

(assert (=> b!542114 m!790017))

(assert (=> b!542114 m!789213))

(assert (=> b!542114 m!790017))

(assert (=> b!542114 m!789213))

(assert (=> b!542114 m!790019))

(declare-fun m!790029 () Bool)

(assert (=> b!542114 m!790029))

(assert (=> b!542109 m!789999))

(assert (=> b!542109 m!790001))

(assert (=> b!542109 m!790001))

(assert (=> b!542109 m!790003))

(assert (=> b!542109 m!790003))

(declare-fun m!790031 () Bool)

(assert (=> b!542109 m!790031))

(declare-fun m!790033 () Bool)

(assert (=> d!190639 m!790033))

(declare-fun m!790035 () Bool)

(assert (=> d!190639 m!790035))

(declare-fun m!790037 () Bool)

(assert (=> d!190639 m!790037))

(assert (=> d!190639 m!789311))

(assert (=> b!542110 m!789999))

(declare-fun m!790039 () Bool)

(assert (=> b!542110 m!790039))

(assert (=> b!541511 d!190639))

(declare-fun d!190641 () Bool)

(declare-fun lt!225961 () List!5315)

(assert (=> d!190641 (= (++!1479 lt!225735 lt!225961) lt!225742)))

(declare-fun e!327405 () List!5315)

(assert (=> d!190641 (= lt!225961 e!327405)))

(declare-fun c!102537 () Bool)

(assert (=> d!190641 (= c!102537 ((_ is Cons!5305) lt!225735))))

(assert (=> d!190641 (>= (size!4261 lt!225742) (size!4261 lt!225735))))

(assert (=> d!190641 (= (getSuffix!156 lt!225742 lt!225735) lt!225961)))

(declare-fun b!542117 () Bool)

(assert (=> b!542117 (= e!327405 (getSuffix!156 (tail!713 lt!225742) (t!74412 lt!225735)))))

(declare-fun b!542118 () Bool)

(assert (=> b!542118 (= e!327405 lt!225742)))

(assert (= (and d!190641 c!102537) b!542117))

(assert (= (and d!190641 (not c!102537)) b!542118))

(declare-fun m!790041 () Bool)

(assert (=> d!190641 m!790041))

(assert (=> d!190641 m!789721))

(assert (=> d!190641 m!789269))

(assert (=> b!542117 m!789771))

(assert (=> b!542117 m!789771))

(declare-fun m!790043 () Bool)

(assert (=> b!542117 m!790043))

(assert (=> b!541511 d!190641))

(declare-fun b!542119 () Bool)

(declare-fun res!230803 () Bool)

(declare-fun e!327406 () Bool)

(assert (=> b!542119 (=> (not res!230803) (not e!327406))))

(declare-fun lt!225964 () Option!1341)

(assert (=> b!542119 (= res!230803 (= (++!1479 (list!2201 (charsOf!620 (_1!3442 (get!2001 lt!225964)))) (_2!3442 (get!2001 lt!225964))) lt!225742))))

(declare-fun b!542120 () Bool)

(declare-fun e!327407 () Bool)

(assert (=> b!542120 (= e!327407 e!327406)))

(declare-fun res!230802 () Bool)

(assert (=> b!542120 (=> (not res!230802) (not e!327406))))

(assert (=> b!542120 (= res!230802 (matchR!484 (regex!991 (rule!1701 token!491)) (list!2201 (charsOf!620 (_1!3442 (get!2001 lt!225964))))))))

(declare-fun b!542121 () Bool)

(assert (=> b!542121 (= e!327406 (= (size!4260 (_1!3442 (get!2001 lt!225964))) (size!4261 (originalCharacters!1030 (_1!3442 (get!2001 lt!225964))))))))

(declare-fun b!542122 () Bool)

(declare-fun e!327409 () Option!1341)

(assert (=> b!542122 (= e!327409 None!1340)))

(declare-fun b!542123 () Bool)

(declare-fun lt!225963 () tuple2!6360)

(assert (=> b!542123 (= e!327409 (Some!1340 (tuple2!6357 (Token!1719 (apply!1266 (transformation!991 (rule!1701 token!491)) (seqFromList!1189 (_1!3444 lt!225963))) (rule!1701 token!491) (size!4263 (seqFromList!1189 (_1!3444 lt!225963))) (_1!3444 lt!225963)) (_2!3444 lt!225963))))))

(declare-fun lt!225966 () Unit!9271)

(assert (=> b!542123 (= lt!225966 (longestMatchIsAcceptedByMatchOrIsEmpty!115 (regex!991 (rule!1701 token!491)) lt!225742))))

(declare-fun res!230800 () Bool)

(assert (=> b!542123 (= res!230800 (isEmpty!3832 (_1!3444 (findLongestMatchInner!131 (regex!991 (rule!1701 token!491)) Nil!5305 (size!4261 Nil!5305) lt!225742 lt!225742 (size!4261 lt!225742)))))))

(declare-fun e!327408 () Bool)

(assert (=> b!542123 (=> res!230800 e!327408)))

(assert (=> b!542123 e!327408))

(declare-fun lt!225965 () Unit!9271)

(assert (=> b!542123 (= lt!225965 lt!225966)))

(declare-fun lt!225962 () Unit!9271)

(assert (=> b!542123 (= lt!225962 (lemmaSemiInverse!120 (transformation!991 (rule!1701 token!491)) (seqFromList!1189 (_1!3444 lt!225963))))))

(declare-fun b!542124 () Bool)

(declare-fun res!230799 () Bool)

(assert (=> b!542124 (=> (not res!230799) (not e!327406))))

(assert (=> b!542124 (= res!230799 (= (value!33110 (_1!3442 (get!2001 lt!225964))) (apply!1266 (transformation!991 (rule!1701 (_1!3442 (get!2001 lt!225964)))) (seqFromList!1189 (originalCharacters!1030 (_1!3442 (get!2001 lt!225964)))))))))

(declare-fun d!190643 () Bool)

(assert (=> d!190643 e!327407))

(declare-fun res!230801 () Bool)

(assert (=> d!190643 (=> res!230801 e!327407)))

(assert (=> d!190643 (= res!230801 (isEmpty!3835 lt!225964))))

(assert (=> d!190643 (= lt!225964 e!327409)))

(declare-fun c!102538 () Bool)

(assert (=> d!190643 (= c!102538 (isEmpty!3832 (_1!3444 lt!225963)))))

(assert (=> d!190643 (= lt!225963 (findLongestMatch!110 (regex!991 (rule!1701 token!491)) lt!225742))))

(assert (=> d!190643 (ruleValid!211 thiss!22590 (rule!1701 token!491))))

(assert (=> d!190643 (= (maxPrefixOneRule!290 thiss!22590 (rule!1701 token!491) lt!225742) lt!225964)))

(declare-fun b!542125 () Bool)

(assert (=> b!542125 (= e!327408 (matchR!484 (regex!991 (rule!1701 token!491)) (_1!3444 (findLongestMatchInner!131 (regex!991 (rule!1701 token!491)) Nil!5305 (size!4261 Nil!5305) lt!225742 lt!225742 (size!4261 lt!225742)))))))

(declare-fun b!542126 () Bool)

(declare-fun res!230798 () Bool)

(assert (=> b!542126 (=> (not res!230798) (not e!327406))))

(assert (=> b!542126 (= res!230798 (< (size!4261 (_2!3442 (get!2001 lt!225964))) (size!4261 lt!225742)))))

(declare-fun b!542127 () Bool)

(declare-fun res!230804 () Bool)

(assert (=> b!542127 (=> (not res!230804) (not e!327406))))

(assert (=> b!542127 (= res!230804 (= (rule!1701 (_1!3442 (get!2001 lt!225964))) (rule!1701 token!491)))))

(assert (= (and d!190643 c!102538) b!542122))

(assert (= (and d!190643 (not c!102538)) b!542123))

(assert (= (and b!542123 (not res!230800)) b!542125))

(assert (= (and d!190643 (not res!230801)) b!542120))

(assert (= (and b!542120 res!230802) b!542119))

(assert (= (and b!542119 res!230803) b!542126))

(assert (= (and b!542126 res!230798) b!542127))

(assert (= (and b!542127 res!230804) b!542124))

(assert (= (and b!542124 res!230799) b!542121))

(declare-fun m!790045 () Bool)

(assert (=> b!542119 m!790045))

(declare-fun m!790047 () Bool)

(assert (=> b!542119 m!790047))

(assert (=> b!542119 m!790047))

(declare-fun m!790049 () Bool)

(assert (=> b!542119 m!790049))

(assert (=> b!542119 m!790049))

(declare-fun m!790051 () Bool)

(assert (=> b!542119 m!790051))

(assert (=> b!542126 m!790045))

(declare-fun m!790053 () Bool)

(assert (=> b!542126 m!790053))

(assert (=> b!542126 m!789721))

(declare-fun m!790055 () Bool)

(assert (=> b!542123 m!790055))

(declare-fun m!790057 () Bool)

(assert (=> b!542123 m!790057))

(assert (=> b!542123 m!790055))

(declare-fun m!790059 () Bool)

(assert (=> b!542123 m!790059))

(declare-fun m!790061 () Bool)

(assert (=> b!542123 m!790061))

(assert (=> b!542123 m!789721))

(assert (=> b!542123 m!790017))

(assert (=> b!542123 m!789721))

(declare-fun m!790063 () Bool)

(assert (=> b!542123 m!790063))

(assert (=> b!542123 m!790055))

(assert (=> b!542123 m!790055))

(declare-fun m!790065 () Bool)

(assert (=> b!542123 m!790065))

(assert (=> b!542123 m!790017))

(declare-fun m!790067 () Bool)

(assert (=> b!542123 m!790067))

(assert (=> b!542127 m!790045))

(assert (=> b!542124 m!790045))

(declare-fun m!790069 () Bool)

(assert (=> b!542124 m!790069))

(assert (=> b!542124 m!790069))

(declare-fun m!790071 () Bool)

(assert (=> b!542124 m!790071))

(assert (=> b!542125 m!790017))

(assert (=> b!542125 m!789721))

(assert (=> b!542125 m!790017))

(assert (=> b!542125 m!789721))

(assert (=> b!542125 m!790063))

(declare-fun m!790073 () Bool)

(assert (=> b!542125 m!790073))

(assert (=> b!542120 m!790045))

(assert (=> b!542120 m!790047))

(assert (=> b!542120 m!790047))

(assert (=> b!542120 m!790049))

(assert (=> b!542120 m!790049))

(declare-fun m!790075 () Bool)

(assert (=> b!542120 m!790075))

(declare-fun m!790077 () Bool)

(assert (=> d!190643 m!790077))

(declare-fun m!790079 () Bool)

(assert (=> d!190643 m!790079))

(declare-fun m!790081 () Bool)

(assert (=> d!190643 m!790081))

(assert (=> d!190643 m!789259))

(assert (=> b!542121 m!790045))

(declare-fun m!790083 () Bool)

(assert (=> b!542121 m!790083))

(assert (=> b!541511 d!190643))

(declare-fun d!190645 () Bool)

(assert (=> d!190645 (= (maxPrefixOneRule!290 thiss!22590 (rule!1701 (_1!3442 (v!16151 lt!225737))) input!2705) (Some!1340 (tuple2!6357 (Token!1719 (apply!1266 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))) (seqFromList!1189 lt!225728)) (rule!1701 (_1!3442 (v!16151 lt!225737))) (size!4261 lt!225728) lt!225728) (_2!3442 (v!16151 lt!225737)))))))

(declare-fun lt!225969 () Unit!9271)

(declare-fun choose!3832 (LexerInterface!877 List!5317 List!5315 List!5315 List!5315 Rule!1782) Unit!9271)

(assert (=> d!190645 (= lt!225969 (choose!3832 thiss!22590 rules!3103 lt!225728 input!2705 (_2!3442 (v!16151 lt!225737)) (rule!1701 (_1!3442 (v!16151 lt!225737)))))))

(assert (=> d!190645 (not (isEmpty!3833 rules!3103))))

(assert (=> d!190645 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!42 thiss!22590 rules!3103 lt!225728 input!2705 (_2!3442 (v!16151 lt!225737)) (rule!1701 (_1!3442 (v!16151 lt!225737)))) lt!225969)))

(declare-fun bs!67545 () Bool)

(assert (= bs!67545 d!190645))

(assert (=> bs!67545 m!789345))

(assert (=> bs!67545 m!789265))

(assert (=> bs!67545 m!789233))

(declare-fun m!790085 () Bool)

(assert (=> bs!67545 m!790085))

(assert (=> bs!67545 m!789299))

(assert (=> bs!67545 m!789265))

(declare-fun m!790087 () Bool)

(assert (=> bs!67545 m!790087))

(assert (=> b!541511 d!190645))

(declare-fun d!190647 () Bool)

(assert (=> d!190647 (= (maxPrefixOneRule!290 thiss!22590 (rule!1701 token!491) lt!225742) (Some!1340 (tuple2!6357 (Token!1719 (apply!1266 (transformation!991 (rule!1701 token!491)) (seqFromList!1189 lt!225735)) (rule!1701 token!491) (size!4261 lt!225735) lt!225735) suffix!1342)))))

(declare-fun lt!225970 () Unit!9271)

(assert (=> d!190647 (= lt!225970 (choose!3832 thiss!22590 rules!3103 lt!225735 lt!225742 suffix!1342 (rule!1701 token!491)))))

(assert (=> d!190647 (not (isEmpty!3833 rules!3103))))

(assert (=> d!190647 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!42 thiss!22590 rules!3103 lt!225735 lt!225742 suffix!1342 (rule!1701 token!491)) lt!225970)))

(declare-fun bs!67546 () Bool)

(assert (= bs!67546 d!190647))

(assert (=> bs!67546 m!789345))

(assert (=> bs!67546 m!789231))

(assert (=> bs!67546 m!789241))

(declare-fun m!790089 () Bool)

(assert (=> bs!67546 m!790089))

(assert (=> bs!67546 m!789269))

(assert (=> bs!67546 m!789231))

(assert (=> bs!67546 m!789235))

(assert (=> b!541511 d!190647))

(declare-fun d!190649 () Bool)

(assert (=> d!190649 (= (seqFromList!1189 lt!225735) (fromListB!521 lt!225735))))

(declare-fun bs!67547 () Bool)

(assert (= bs!67547 d!190649))

(declare-fun m!790091 () Bool)

(assert (=> bs!67547 m!790091))

(assert (=> b!541511 d!190649))

(declare-fun d!190651 () Bool)

(assert (=> d!190651 (= (apply!1266 (transformation!991 (rule!1701 token!491)) (seqFromList!1189 lt!225735)) (dynLambda!3105 (toValue!1838 (transformation!991 (rule!1701 token!491))) (seqFromList!1189 lt!225735)))))

(declare-fun b_lambda!20837 () Bool)

(assert (=> (not b_lambda!20837) (not d!190651)))

(declare-fun t!74462 () Bool)

(declare-fun tb!47713 () Bool)

(assert (=> (and b!541525 (= (toValue!1838 (transformation!991 (rule!1701 token!491))) (toValue!1838 (transformation!991 (rule!1701 token!491)))) t!74462) tb!47713))

(declare-fun result!53322 () Bool)

(assert (=> tb!47713 (= result!53322 (inv!21 (dynLambda!3105 (toValue!1838 (transformation!991 (rule!1701 token!491))) (seqFromList!1189 lt!225735))))))

(declare-fun m!790093 () Bool)

(assert (=> tb!47713 m!790093))

(assert (=> d!190651 t!74462))

(declare-fun b_and!52951 () Bool)

(assert (= b_and!52947 (and (=> t!74462 result!53322) b_and!52951)))

(declare-fun tb!47715 () Bool)

(declare-fun t!74464 () Bool)

(assert (=> (and b!541537 (= (toValue!1838 (transformation!991 (h!10708 rules!3103))) (toValue!1838 (transformation!991 (rule!1701 token!491)))) t!74464) tb!47715))

(declare-fun result!53324 () Bool)

(assert (= result!53324 result!53322))

(assert (=> d!190651 t!74464))

(declare-fun b_and!52953 () Bool)

(assert (= b_and!52949 (and (=> t!74464 result!53324) b_and!52953)))

(assert (=> d!190651 m!789231))

(declare-fun m!790095 () Bool)

(assert (=> d!190651 m!790095))

(assert (=> b!541511 d!190651))

(declare-fun d!190653 () Bool)

(declare-fun res!230809 () Bool)

(declare-fun e!327413 () Bool)

(assert (=> d!190653 (=> (not res!230809) (not e!327413))))

(assert (=> d!190653 (= res!230809 (not (isEmpty!3832 (originalCharacters!1030 token!491))))))

(assert (=> d!190653 (= (inv!6657 token!491) e!327413)))

(declare-fun b!542132 () Bool)

(declare-fun res!230810 () Bool)

(assert (=> b!542132 (=> (not res!230810) (not e!327413))))

(assert (=> b!542132 (= res!230810 (= (originalCharacters!1030 token!491) (list!2201 (dynLambda!3104 (toChars!1697 (transformation!991 (rule!1701 token!491))) (value!33110 token!491)))))))

(declare-fun b!542133 () Bool)

(assert (=> b!542133 (= e!327413 (= (size!4260 token!491) (size!4261 (originalCharacters!1030 token!491))))))

(assert (= (and d!190653 res!230809) b!542132))

(assert (= (and b!542132 res!230810) b!542133))

(declare-fun b_lambda!20839 () Bool)

(assert (=> (not b_lambda!20839) (not b!542132)))

(assert (=> b!542132 t!74440))

(declare-fun b_and!52955 () Bool)

(assert (= b_and!52943 (and (=> t!74440 result!53294) b_and!52955)))

(assert (=> b!542132 t!74442))

(declare-fun b_and!52957 () Bool)

(assert (= b_and!52945 (and (=> t!74442 result!53296) b_and!52957)))

(declare-fun m!790097 () Bool)

(assert (=> d!190653 m!790097))

(assert (=> b!542132 m!789883))

(assert (=> b!542132 m!789883))

(declare-fun m!790099 () Bool)

(assert (=> b!542132 m!790099))

(assert (=> b!542133 m!789223))

(assert (=> start!49952 d!190653))

(declare-fun d!190655 () Bool)

(assert (=> d!190655 (= (isEmpty!3832 input!2705) ((_ is Nil!5305) input!2705))))

(assert (=> b!541512 d!190655))

(declare-fun d!190657 () Bool)

(assert (=> d!190657 (= (get!2001 lt!225753) (v!16151 lt!225753))))

(assert (=> b!541534 d!190657))

(declare-fun d!190659 () Bool)

(declare-fun res!230813 () Bool)

(declare-fun e!327416 () Bool)

(assert (=> d!190659 (=> (not res!230813) (not e!327416))))

(declare-fun rulesValid!350 (LexerInterface!877 List!5317) Bool)

(assert (=> d!190659 (= res!230813 (rulesValid!350 thiss!22590 rules!3103))))

(assert (=> d!190659 (= (rulesInvariant!840 thiss!22590 rules!3103) e!327416)))

(declare-fun b!542136 () Bool)

(declare-datatypes ((List!5319 0))(
  ( (Nil!5309) (Cons!5309 (h!10710 String!6819) (t!74476 List!5319)) )
))
(declare-fun noDuplicateTag!350 (LexerInterface!877 List!5317 List!5319) Bool)

(assert (=> b!542136 (= e!327416 (noDuplicateTag!350 thiss!22590 rules!3103 Nil!5309))))

(assert (= (and d!190659 res!230813) b!542136))

(declare-fun m!790101 () Bool)

(assert (=> d!190659 m!790101))

(declare-fun m!790103 () Bool)

(assert (=> b!542136 m!790103))

(assert (=> b!541513 d!190659))

(declare-fun b!542137 () Bool)

(declare-fun res!230816 () Bool)

(declare-fun e!327417 () Bool)

(assert (=> b!542137 (=> (not res!230816) (not e!327417))))

(declare-fun lt!225975 () Option!1341)

(assert (=> b!542137 (= res!230816 (< (size!4261 (_2!3442 (get!2001 lt!225975))) (size!4261 input!2705)))))

(declare-fun call!38293 () Option!1341)

(declare-fun bm!38288 () Bool)

(assert (=> bm!38288 (= call!38293 (maxPrefixOneRule!290 thiss!22590 (h!10708 rules!3103) input!2705))))

(declare-fun b!542138 () Bool)

(assert (=> b!542138 (= e!327417 (contains!1235 rules!3103 (rule!1701 (_1!3442 (get!2001 lt!225975)))))))

(declare-fun d!190661 () Bool)

(declare-fun e!327418 () Bool)

(assert (=> d!190661 e!327418))

(declare-fun res!230817 () Bool)

(assert (=> d!190661 (=> res!230817 e!327418)))

(assert (=> d!190661 (= res!230817 (isEmpty!3835 lt!225975))))

(declare-fun e!327419 () Option!1341)

(assert (=> d!190661 (= lt!225975 e!327419)))

(declare-fun c!102539 () Bool)

(assert (=> d!190661 (= c!102539 (and ((_ is Cons!5307) rules!3103) ((_ is Nil!5307) (t!74414 rules!3103))))))

(declare-fun lt!225973 () Unit!9271)

(declare-fun lt!225974 () Unit!9271)

(assert (=> d!190661 (= lt!225973 lt!225974)))

(assert (=> d!190661 (isPrefix!633 input!2705 input!2705)))

(assert (=> d!190661 (= lt!225974 (lemmaIsPrefixRefl!373 input!2705 input!2705))))

(assert (=> d!190661 (rulesValidInductive!344 thiss!22590 rules!3103)))

(assert (=> d!190661 (= (maxPrefix!575 thiss!22590 rules!3103 input!2705) lt!225975)))

(declare-fun b!542139 () Bool)

(declare-fun res!230820 () Bool)

(assert (=> b!542139 (=> (not res!230820) (not e!327417))))

(assert (=> b!542139 (= res!230820 (= (list!2201 (charsOf!620 (_1!3442 (get!2001 lt!225975)))) (originalCharacters!1030 (_1!3442 (get!2001 lt!225975)))))))

(declare-fun b!542140 () Bool)

(assert (=> b!542140 (= e!327419 call!38293)))

(declare-fun b!542141 () Bool)

(declare-fun res!230814 () Bool)

(assert (=> b!542141 (=> (not res!230814) (not e!327417))))

(assert (=> b!542141 (= res!230814 (matchR!484 (regex!991 (rule!1701 (_1!3442 (get!2001 lt!225975)))) (list!2201 (charsOf!620 (_1!3442 (get!2001 lt!225975))))))))

(declare-fun b!542142 () Bool)

(declare-fun lt!225972 () Option!1341)

(declare-fun lt!225971 () Option!1341)

(assert (=> b!542142 (= e!327419 (ite (and ((_ is None!1340) lt!225972) ((_ is None!1340) lt!225971)) None!1340 (ite ((_ is None!1340) lt!225971) lt!225972 (ite ((_ is None!1340) lt!225972) lt!225971 (ite (>= (size!4260 (_1!3442 (v!16151 lt!225972))) (size!4260 (_1!3442 (v!16151 lt!225971)))) lt!225972 lt!225971)))))))

(assert (=> b!542142 (= lt!225972 call!38293)))

(assert (=> b!542142 (= lt!225971 (maxPrefix!575 thiss!22590 (t!74414 rules!3103) input!2705))))

(declare-fun b!542143 () Bool)

(declare-fun res!230818 () Bool)

(assert (=> b!542143 (=> (not res!230818) (not e!327417))))

(assert (=> b!542143 (= res!230818 (= (++!1479 (list!2201 (charsOf!620 (_1!3442 (get!2001 lt!225975)))) (_2!3442 (get!2001 lt!225975))) input!2705))))

(declare-fun b!542144 () Bool)

(assert (=> b!542144 (= e!327418 e!327417)))

(declare-fun res!230815 () Bool)

(assert (=> b!542144 (=> (not res!230815) (not e!327417))))

(assert (=> b!542144 (= res!230815 (isDefined!1153 lt!225975))))

(declare-fun b!542145 () Bool)

(declare-fun res!230819 () Bool)

(assert (=> b!542145 (=> (not res!230819) (not e!327417))))

(assert (=> b!542145 (= res!230819 (= (value!33110 (_1!3442 (get!2001 lt!225975))) (apply!1266 (transformation!991 (rule!1701 (_1!3442 (get!2001 lt!225975)))) (seqFromList!1189 (originalCharacters!1030 (_1!3442 (get!2001 lt!225975)))))))))

(assert (= (and d!190661 c!102539) b!542140))

(assert (= (and d!190661 (not c!102539)) b!542142))

(assert (= (or b!542140 b!542142) bm!38288))

(assert (= (and d!190661 (not res!230817)) b!542144))

(assert (= (and b!542144 res!230815) b!542139))

(assert (= (and b!542139 res!230820) b!542137))

(assert (= (and b!542137 res!230816) b!542143))

(assert (= (and b!542143 res!230818) b!542145))

(assert (= (and b!542145 res!230819) b!542141))

(assert (= (and b!542141 res!230814) b!542138))

(declare-fun m!790105 () Bool)

(assert (=> b!542141 m!790105))

(declare-fun m!790107 () Bool)

(assert (=> b!542141 m!790107))

(assert (=> b!542141 m!790107))

(declare-fun m!790109 () Bool)

(assert (=> b!542141 m!790109))

(assert (=> b!542141 m!790109))

(declare-fun m!790111 () Bool)

(assert (=> b!542141 m!790111))

(declare-fun m!790113 () Bool)

(assert (=> b!542144 m!790113))

(assert (=> b!542145 m!790105))

(declare-fun m!790115 () Bool)

(assert (=> b!542145 m!790115))

(assert (=> b!542145 m!790115))

(declare-fun m!790117 () Bool)

(assert (=> b!542145 m!790117))

(declare-fun m!790119 () Bool)

(assert (=> b!542142 m!790119))

(assert (=> b!542143 m!790105))

(assert (=> b!542143 m!790107))

(assert (=> b!542143 m!790107))

(assert (=> b!542143 m!790109))

(assert (=> b!542143 m!790109))

(declare-fun m!790121 () Bool)

(assert (=> b!542143 m!790121))

(declare-fun m!790123 () Bool)

(assert (=> bm!38288 m!790123))

(assert (=> b!542138 m!790105))

(declare-fun m!790125 () Bool)

(assert (=> b!542138 m!790125))

(assert (=> b!542137 m!790105))

(declare-fun m!790127 () Bool)

(assert (=> b!542137 m!790127))

(assert (=> b!542137 m!789213))

(assert (=> b!542139 m!790105))

(assert (=> b!542139 m!790107))

(assert (=> b!542139 m!790107))

(assert (=> b!542139 m!790109))

(declare-fun m!790129 () Bool)

(assert (=> d!190661 m!790129))

(assert (=> d!190661 m!789287))

(assert (=> d!190661 m!789307))

(assert (=> d!190661 m!789247))

(assert (=> b!541530 d!190661))

(declare-fun b!542150 () Bool)

(declare-fun e!327422 () Bool)

(declare-fun tp!172496 () Bool)

(assert (=> b!542150 (= e!327422 (and tp_is_empty!3005 tp!172496))))

(assert (=> b!541523 (= tp!172442 e!327422)))

(assert (= (and b!541523 ((_ is Cons!5305) (originalCharacters!1030 token!491))) b!542150))

(declare-fun b!542161 () Bool)

(declare-fun e!327425 () Bool)

(assert (=> b!542161 (= e!327425 tp_is_empty!3005)))

(assert (=> b!541545 (= tp!172438 e!327425)))

(declare-fun b!542162 () Bool)

(declare-fun tp!172508 () Bool)

(declare-fun tp!172507 () Bool)

(assert (=> b!542162 (= e!327425 (and tp!172508 tp!172507))))

(declare-fun b!542164 () Bool)

(declare-fun tp!172511 () Bool)

(declare-fun tp!172510 () Bool)

(assert (=> b!542164 (= e!327425 (and tp!172511 tp!172510))))

(declare-fun b!542163 () Bool)

(declare-fun tp!172509 () Bool)

(assert (=> b!542163 (= e!327425 tp!172509)))

(assert (= (and b!541545 ((_ is ElementMatch!1325) (regex!991 (h!10708 rules!3103)))) b!542161))

(assert (= (and b!541545 ((_ is Concat!2341) (regex!991 (h!10708 rules!3103)))) b!542162))

(assert (= (and b!541545 ((_ is Star!1325) (regex!991 (h!10708 rules!3103)))) b!542163))

(assert (= (and b!541545 ((_ is Union!1325) (regex!991 (h!10708 rules!3103)))) b!542164))

(declare-fun b!542165 () Bool)

(declare-fun e!327426 () Bool)

(declare-fun tp!172512 () Bool)

(assert (=> b!542165 (= e!327426 (and tp_is_empty!3005 tp!172512))))

(assert (=> b!541508 (= tp!172446 e!327426)))

(assert (= (and b!541508 ((_ is Cons!5305) (t!74412 input!2705))) b!542165))

(declare-fun b!542176 () Bool)

(declare-fun b_free!14989 () Bool)

(declare-fun b_next!15005 () Bool)

(assert (=> b!542176 (= b_free!14989 (not b_next!15005))))

(declare-fun t!74466 () Bool)

(declare-fun tb!47717 () Bool)

(assert (=> (and b!542176 (= (toValue!1838 (transformation!991 (h!10708 (t!74414 rules!3103)))) (toValue!1838 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))) t!74466) tb!47717))

(declare-fun result!53332 () Bool)

(assert (= result!53332 result!53288))

(assert (=> d!190569 t!74466))

(assert (=> d!190613 t!74466))

(declare-fun tb!47719 () Bool)

(declare-fun t!74468 () Bool)

(assert (=> (and b!542176 (= (toValue!1838 (transformation!991 (h!10708 (t!74414 rules!3103)))) (toValue!1838 (transformation!991 (rule!1701 token!491)))) t!74468) tb!47719))

(declare-fun result!53334 () Bool)

(assert (= result!53334 result!53322))

(assert (=> d!190651 t!74468))

(declare-fun tp!172522 () Bool)

(declare-fun b_and!52959 () Bool)

(assert (=> b!542176 (= tp!172522 (and (=> t!74466 result!53332) (=> t!74468 result!53334) b_and!52959))))

(declare-fun b_free!14991 () Bool)

(declare-fun b_next!15007 () Bool)

(assert (=> b!542176 (= b_free!14991 (not b_next!15007))))

(declare-fun t!74470 () Bool)

(declare-fun tb!47721 () Bool)

(assert (=> (and b!542176 (= (toChars!1697 (transformation!991 (h!10708 (t!74414 rules!3103)))) (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))) t!74470) tb!47721))

(declare-fun result!53336 () Bool)

(assert (= result!53336 result!53282))

(assert (=> d!190567 t!74470))

(declare-fun tb!47723 () Bool)

(declare-fun t!74472 () Bool)

(assert (=> (and b!542176 (= (toChars!1697 (transformation!991 (h!10708 (t!74414 rules!3103)))) (toChars!1697 (transformation!991 (rule!1701 token!491)))) t!74472) tb!47723))

(declare-fun result!53338 () Bool)

(assert (= result!53338 result!53294))

(assert (=> d!190611 t!74472))

(declare-fun t!74474 () Bool)

(declare-fun tb!47725 () Bool)

(assert (=> (and b!542176 (= (toChars!1697 (transformation!991 (h!10708 (t!74414 rules!3103)))) (toChars!1697 (transformation!991 (rule!1701 (_1!3442 (v!16151 lt!225737)))))) t!74474) tb!47725))

(declare-fun result!53340 () Bool)

(assert (= result!53340 result!53318))

(assert (=> d!190613 t!74474))

(assert (=> b!542132 t!74472))

(declare-fun tp!172523 () Bool)

(declare-fun b_and!52961 () Bool)

(assert (=> b!542176 (= tp!172523 (and (=> t!74470 result!53336) (=> t!74472 result!53338) (=> t!74474 result!53340) b_and!52961))))

(declare-fun e!327435 () Bool)

(assert (=> b!542176 (= e!327435 (and tp!172522 tp!172523))))

(declare-fun e!327438 () Bool)

(declare-fun b!542175 () Bool)

(declare-fun tp!172521 () Bool)

(assert (=> b!542175 (= e!327438 (and tp!172521 (inv!6653 (tag!1253 (h!10708 (t!74414 rules!3103)))) (inv!6656 (transformation!991 (h!10708 (t!74414 rules!3103)))) e!327435))))

(declare-fun b!542174 () Bool)

(declare-fun e!327436 () Bool)

(declare-fun tp!172524 () Bool)

(assert (=> b!542174 (= e!327436 (and e!327438 tp!172524))))

(assert (=> b!541541 (= tp!172445 e!327436)))

(assert (= b!542175 b!542176))

(assert (= b!542174 b!542175))

(assert (= (and b!541541 ((_ is Cons!5307) (t!74414 rules!3103))) b!542174))

(declare-fun m!790131 () Bool)

(assert (=> b!542175 m!790131))

(declare-fun m!790133 () Bool)

(assert (=> b!542175 m!790133))

(declare-fun b!542177 () Bool)

(declare-fun e!327439 () Bool)

(declare-fun tp!172525 () Bool)

(assert (=> b!542177 (= e!327439 (and tp_is_empty!3005 tp!172525))))

(assert (=> b!541510 (= tp!172439 e!327439)))

(assert (= (and b!541510 ((_ is Cons!5305) (t!74412 suffix!1342))) b!542177))

(declare-fun b!542178 () Bool)

(declare-fun e!327440 () Bool)

(assert (=> b!542178 (= e!327440 tp_is_empty!3005)))

(assert (=> b!541526 (= tp!172443 e!327440)))

(declare-fun b!542179 () Bool)

(declare-fun tp!172527 () Bool)

(declare-fun tp!172526 () Bool)

(assert (=> b!542179 (= e!327440 (and tp!172527 tp!172526))))

(declare-fun b!542181 () Bool)

(declare-fun tp!172530 () Bool)

(declare-fun tp!172529 () Bool)

(assert (=> b!542181 (= e!327440 (and tp!172530 tp!172529))))

(declare-fun b!542180 () Bool)

(declare-fun tp!172528 () Bool)

(assert (=> b!542180 (= e!327440 tp!172528)))

(assert (= (and b!541526 ((_ is ElementMatch!1325) (regex!991 (rule!1701 token!491)))) b!542178))

(assert (= (and b!541526 ((_ is Concat!2341) (regex!991 (rule!1701 token!491)))) b!542179))

(assert (= (and b!541526 ((_ is Star!1325) (regex!991 (rule!1701 token!491)))) b!542180))

(assert (= (and b!541526 ((_ is Union!1325) (regex!991 (rule!1701 token!491)))) b!542181))

(declare-fun b_lambda!20841 () Bool)

(assert (= b_lambda!20839 (or (and b!541525 b_free!14979) (and b!541537 b_free!14983 (= (toChars!1697 (transformation!991 (h!10708 rules!3103))) (toChars!1697 (transformation!991 (rule!1701 token!491))))) (and b!542176 b_free!14991 (= (toChars!1697 (transformation!991 (h!10708 (t!74414 rules!3103)))) (toChars!1697 (transformation!991 (rule!1701 token!491))))) b_lambda!20841)))

(declare-fun b_lambda!20843 () Bool)

(assert (= b_lambda!20837 (or (and b!541525 b_free!14977) (and b!541537 b_free!14981 (= (toValue!1838 (transformation!991 (h!10708 rules!3103))) (toValue!1838 (transformation!991 (rule!1701 token!491))))) (and b!542176 b_free!14989 (= (toValue!1838 (transformation!991 (h!10708 (t!74414 rules!3103)))) (toValue!1838 (transformation!991 (rule!1701 token!491))))) b_lambda!20843)))

(declare-fun b_lambda!20845 () Bool)

(assert (= b_lambda!20821 (or (and b!541525 b_free!14979) (and b!541537 b_free!14983 (= (toChars!1697 (transformation!991 (h!10708 rules!3103))) (toChars!1697 (transformation!991 (rule!1701 token!491))))) (and b!542176 b_free!14991 (= (toChars!1697 (transformation!991 (h!10708 (t!74414 rules!3103)))) (toChars!1697 (transformation!991 (rule!1701 token!491))))) b_lambda!20845)))

(check-sat (not b!542069) (not b!542125) (not b_next!14993) (not tb!47687) b_and!52955 (not b!542139) (not b!541969) (not b!541901) (not b!541851) (not d!190633) (not b!542126) (not tb!47709) (not b!541854) (not b!541857) (not b!542116) tp_is_empty!3005 (not d!190509) (not b!541977) (not b!542110) (not b!541974) (not b!541849) (not d!190551) (not b!542175) (not d!190561) (not b!541732) (not d!190629) (not d!190649) (not b!541923) (not d!190639) (not b!541716) (not d!190587) (not d!190515) (not b!542162) (not d!190605) (not b!541701) (not d!190499) (not d!190597) (not b!541918) (not b_lambda!20845) (not d!190571) (not d!190589) (not b!541731) (not b!542124) (not b!542133) (not b_lambda!20817) (not d!190449) (not b!541937) (not b!541689) (not b!542180) (not b!542163) (not d!190627) (not b!542108) (not d!190647) (not d!190439) (not bm!38288) (not d!190517) (not d!190661) (not b!542137) (not b!541932) (not b!541958) (not b!542127) (not b!542076) (not b!541850) (not b!542114) (not b_lambda!20819) (not b_next!14995) (not b!541707) (not b!541986) (not b!541917) (not b_next!15005) (not b!542113) (not tb!47691) (not b!541727) (not bm!38275) (not b!541900) (not b!541692) (not b!541953) (not b!542121) (not d!190497) (not b!541949) (not d!190581) (not b!541961) (not b!542119) b_and!52951 (not b!541983) (not b!541714) (not d!190575) (not d!190643) (not d!190593) (not d!190579) (not d!190613) (not b!541691) (not b!542077) (not b!541730) (not d!190637) (not d!190641) (not d!190603) (not b!542164) (not b!541950) (not b!541928) (not b_next!15007) (not b!542067) (not b!542142) (not b!541934) (not b!542084) (not d!190591) (not b!542141) (not b!541943) (not b!541916) (not bm!38283) (not b!542136) (not d!190599) (not b!541938) (not b_lambda!20841) (not b!542138) (not b!542115) (not b!541930) (not d!190609) (not d!190659) (not b!542083) (not b_lambda!20833) (not b!542144) (not b!541926) (not d!190645) (not tb!47713) (not d!190573) (not b!541694) (not b!541966) (not b!542177) (not b!541971) b_and!52959 b_and!52961 (not b_next!14999) (not b!542112) (not b!541959) (not b_lambda!20843) (not d!190585) (not b!542145) (not b!541972) (not tb!47683) (not b!541627) (not b!542174) (not b!541985) (not b!542088) (not b!542165) (not b!542181) (not b!541936) (not b!541947) (not b!541984) (not b!541933) (not d!190533) (not b!541856) (not b!541981) (not b!542143) (not b!542070) (not b!542080) (not b!542179) (not d!190567) (not b!541697) (not b!541855) (not b!542087) b_and!52957 (not b!541710) (not d!190653) (not b!541954) (not d!190563) (not d!190631) b_and!52953 (not b!541712) (not b!542120) (not b_next!14997) (not b!541948) (not b!542117) (not b!542089) (not b!541853) (not b!542132) (not d!190583) (not d!190555) (not b!542123) (not d!190601) (not d!190611) (not bm!38285) (not b!541927) (not b!542109) (not b!542150) (not b_lambda!20835))
(check-sat (not b_next!14995) (not b_next!15005) b_and!52951 (not b_next!15007) b_and!52957 (not b_next!14993) b_and!52955 b_and!52959 b_and!52961 (not b_next!14999) b_and!52953 (not b_next!14997))
