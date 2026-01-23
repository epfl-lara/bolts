; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!323320 () Bool)

(assert start!323320)

(declare-fun b!3475961 () Bool)

(declare-fun b_free!90117 () Bool)

(declare-fun b_next!90821 () Bool)

(assert (=> b!3475961 (= b_free!90117 (not b_next!90821))))

(declare-fun tp!1080437 () Bool)

(declare-fun b_and!245159 () Bool)

(assert (=> b!3475961 (= tp!1080437 b_and!245159)))

(declare-fun b_free!90119 () Bool)

(declare-fun b_next!90823 () Bool)

(assert (=> b!3475961 (= b_free!90119 (not b_next!90823))))

(declare-fun tp!1080433 () Bool)

(declare-fun b_and!245161 () Bool)

(assert (=> b!3475961 (= tp!1080433 b_and!245161)))

(declare-fun b!3475953 () Bool)

(declare-fun b_free!90121 () Bool)

(declare-fun b_next!90825 () Bool)

(assert (=> b!3475953 (= b_free!90121 (not b_next!90825))))

(declare-fun tp!1080431 () Bool)

(declare-fun b_and!245163 () Bool)

(assert (=> b!3475953 (= tp!1080431 b_and!245163)))

(declare-fun b_free!90123 () Bool)

(declare-fun b_next!90827 () Bool)

(assert (=> b!3475953 (= b_free!90123 (not b_next!90827))))

(declare-fun tp!1080442 () Bool)

(declare-fun b_and!245165 () Bool)

(assert (=> b!3475953 (= tp!1080442 b_and!245165)))

(declare-fun b!3475991 () Bool)

(declare-fun b_free!90125 () Bool)

(declare-fun b_next!90829 () Bool)

(assert (=> b!3475991 (= b_free!90125 (not b_next!90829))))

(declare-fun tp!1080439 () Bool)

(declare-fun b_and!245167 () Bool)

(assert (=> b!3475991 (= tp!1080439 b_and!245167)))

(declare-fun b_free!90127 () Bool)

(declare-fun b_next!90831 () Bool)

(assert (=> b!3475991 (= b_free!90127 (not b_next!90831))))

(declare-fun tp!1080436 () Bool)

(declare-fun b_and!245169 () Bool)

(assert (=> b!3475991 (= tp!1080436 b_and!245169)))

(declare-fun bs!561702 () Bool)

(declare-fun b!3475968 () Bool)

(declare-fun b!3475960 () Bool)

(assert (= bs!561702 (and b!3475968 b!3475960)))

(declare-fun lambda!122095 () Int)

(declare-fun lambda!122094 () Int)

(assert (=> bs!561702 (not (= lambda!122095 lambda!122094))))

(declare-fun b!3476008 () Bool)

(declare-fun e!2153024 () Bool)

(assert (=> b!3476008 (= e!2153024 true)))

(declare-fun b!3476007 () Bool)

(declare-fun e!2153023 () Bool)

(assert (=> b!3476007 (= e!2153023 e!2153024)))

(declare-fun b!3476006 () Bool)

(declare-fun e!2153022 () Bool)

(assert (=> b!3476006 (= e!2153022 e!2153023)))

(assert (=> b!3475968 e!2153022))

(assert (= b!3476007 b!3476008))

(assert (= b!3476006 b!3476007))

(declare-datatypes ((C!20602 0))(
  ( (C!20603 (val!12349 Int)) )
))
(declare-datatypes ((Regex!10208 0))(
  ( (ElementMatch!10208 (c!596147 C!20602)) (Concat!15887 (regOne!20928 Regex!10208) (regTwo!20928 Regex!10208)) (EmptyExpr!10208) (Star!10208 (reg!10537 Regex!10208)) (EmptyLang!10208) (Union!10208 (regOne!20929 Regex!10208) (regTwo!20929 Regex!10208)) )
))
(declare-datatypes ((List!37336 0))(
  ( (Nil!37212) (Cons!37212 (h!42632 (_ BitVec 16)) (t!275057 List!37336)) )
))
(declare-datatypes ((TokenValue!5679 0))(
  ( (FloatLiteralValue!11358 (text!40198 List!37336)) (TokenValueExt!5678 (__x!23575 Int)) (Broken!28395 (value!175732 List!37336)) (Object!5802) (End!5679) (Def!5679) (Underscore!5679) (Match!5679) (Else!5679) (Error!5679) (Case!5679) (If!5679) (Extends!5679) (Abstract!5679) (Class!5679) (Val!5679) (DelimiterValue!11358 (del!5739 List!37336)) (KeywordValue!5685 (value!175733 List!37336)) (CommentValue!11358 (value!175734 List!37336)) (WhitespaceValue!11358 (value!175735 List!37336)) (IndentationValue!5679 (value!175736 List!37336)) (String!41730) (Int32!5679) (Broken!28396 (value!175737 List!37336)) (Boolean!5680) (Unit!52642) (OperatorValue!5682 (op!5739 List!37336)) (IdentifierValue!11358 (value!175738 List!37336)) (IdentifierValue!11359 (value!175739 List!37336)) (WhitespaceValue!11359 (value!175740 List!37336)) (True!11358) (False!11358) (Broken!28397 (value!175741 List!37336)) (Broken!28398 (value!175742 List!37336)) (True!11359) (RightBrace!5679) (RightBracket!5679) (Colon!5679) (Null!5679) (Comma!5679) (LeftBracket!5679) (False!11359) (LeftBrace!5679) (ImaginaryLiteralValue!5679 (text!40199 List!37336)) (StringLiteralValue!17037 (value!175743 List!37336)) (EOFValue!5679 (value!175744 List!37336)) (IdentValue!5679 (value!175745 List!37336)) (DelimiterValue!11359 (value!175746 List!37336)) (DedentValue!5679 (value!175747 List!37336)) (NewLineValue!5679 (value!175748 List!37336)) (IntegerValue!17037 (value!175749 (_ BitVec 32)) (text!40200 List!37336)) (IntegerValue!17038 (value!175750 Int) (text!40201 List!37336)) (Times!5679) (Or!5679) (Equal!5679) (Minus!5679) (Broken!28399 (value!175751 List!37336)) (And!5679) (Div!5679) (LessEqual!5679) (Mod!5679) (Concat!15888) (Not!5679) (Plus!5679) (SpaceValue!5679 (value!175752 List!37336)) (IntegerValue!17039 (value!175753 Int) (text!40202 List!37336)) (StringLiteralValue!17038 (text!40203 List!37336)) (FloatLiteralValue!11359 (text!40204 List!37336)) (BytesLiteralValue!5679 (value!175754 List!37336)) (CommentValue!11359 (value!175755 List!37336)) (StringLiteralValue!17039 (value!175756 List!37336)) (ErrorTokenValue!5679 (msg!5740 List!37336)) )
))
(declare-datatypes ((List!37337 0))(
  ( (Nil!37213) (Cons!37213 (h!42633 C!20602) (t!275058 List!37337)) )
))
(declare-datatypes ((IArray!22551 0))(
  ( (IArray!22552 (innerList!11333 List!37337)) )
))
(declare-datatypes ((Conc!11273 0))(
  ( (Node!11273 (left!29046 Conc!11273) (right!29376 Conc!11273) (csize!22776 Int) (cheight!11484 Int)) (Leaf!17609 (xs!14451 IArray!22551) (csize!22777 Int)) (Empty!11273) )
))
(declare-datatypes ((BalanceConc!22160 0))(
  ( (BalanceConc!22161 (c!596148 Conc!11273)) )
))
(declare-datatypes ((String!41731 0))(
  ( (String!41732 (value!175757 String)) )
))
(declare-datatypes ((TokenValueInjection!10786 0))(
  ( (TokenValueInjection!10787 (toValue!7685 Int) (toChars!7544 Int)) )
))
(declare-datatypes ((Rule!10698 0))(
  ( (Rule!10699 (regex!5449 Regex!10208) (tag!6065 String!41731) (isSeparator!5449 Bool) (transformation!5449 TokenValueInjection!10786)) )
))
(declare-datatypes ((List!37338 0))(
  ( (Nil!37214) (Cons!37214 (h!42634 Rule!10698) (t!275059 List!37338)) )
))
(declare-fun rules!2135 () List!37338)

(assert (= (and b!3475968 (is-Cons!37214 rules!2135)) b!3476006))

(declare-fun order!19879 () Int)

(declare-fun order!19881 () Int)

(declare-fun dynLambda!15723 (Int Int) Int)

(declare-fun dynLambda!15724 (Int Int) Int)

(assert (=> b!3476008 (< (dynLambda!15723 order!19879 (toValue!7685 (transformation!5449 (h!42634 rules!2135)))) (dynLambda!15724 order!19881 lambda!122095))))

(declare-fun order!19883 () Int)

(declare-fun dynLambda!15725 (Int Int) Int)

(assert (=> b!3476008 (< (dynLambda!15725 order!19883 (toChars!7544 (transformation!5449 (h!42634 rules!2135)))) (dynLambda!15724 order!19881 lambda!122095))))

(assert (=> b!3475968 true))

(declare-fun e!2153001 () Bool)

(assert (=> b!3475953 (= e!2153001 (and tp!1080431 tp!1080442))))

(declare-fun b!3475954 () Bool)

(declare-fun res!1402156 () Bool)

(declare-fun e!2152985 () Bool)

(assert (=> b!3475954 (=> (not res!1402156) (not e!2152985))))

(declare-datatypes ((Token!10264 0))(
  ( (Token!10265 (value!175758 TokenValue!5679) (rule!8047 Rule!10698) (size!28250 Int) (originalCharacters!6163 List!37337)) )
))
(declare-datatypes ((List!37339 0))(
  ( (Nil!37215) (Cons!37215 (h!42635 Token!10264) (t!275060 List!37339)) )
))
(declare-datatypes ((IArray!22553 0))(
  ( (IArray!22554 (innerList!11334 List!37339)) )
))
(declare-datatypes ((Conc!11274 0))(
  ( (Node!11274 (left!29047 Conc!11274) (right!29377 Conc!11274) (csize!22778 Int) (cheight!11485 Int)) (Leaf!17610 (xs!14452 IArray!22553) (csize!22779 Int)) (Empty!11274) )
))
(declare-datatypes ((BalanceConc!22162 0))(
  ( (BalanceConc!22163 (c!596149 Conc!11274)) )
))
(declare-datatypes ((tuple2!36964 0))(
  ( (tuple2!36965 (_1!21616 BalanceConc!22162) (_2!21616 BalanceConc!22160)) )
))
(declare-fun lt!1183027 () tuple2!36964)

(declare-fun tokens!494 () List!37339)

(declare-fun apply!8790 (BalanceConc!22162 Int) Token!10264)

(assert (=> b!3475954 (= res!1402156 (= (apply!8790 (_1!21616 lt!1183027) 0) (h!42635 (t!275060 tokens!494))))))

(declare-fun b!3475956 () Bool)

(declare-datatypes ((Unit!52643 0))(
  ( (Unit!52644) )
))
(declare-fun e!2153002 () Unit!52643)

(declare-fun Unit!52645 () Unit!52643)

(assert (=> b!3475956 (= e!2153002 Unit!52645)))

(declare-fun b!3475957 () Bool)

(declare-fun Unit!52646 () Unit!52643)

(assert (=> b!3475957 (= e!2153002 Unit!52646)))

(declare-fun separatorToken!241 () Token!10264)

(declare-fun lt!1182997 () Unit!52643)

(declare-fun lt!1183020 () C!20602)

(declare-fun lt!1183007 () List!37337)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!507 (Regex!10208 List!37337 C!20602) Unit!52643)

(assert (=> b!3475957 (= lt!1182997 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!507 (regex!5449 (rule!8047 separatorToken!241)) lt!1183007 lt!1183020))))

(declare-fun res!1402132 () Bool)

(declare-fun matchR!4792 (Regex!10208 List!37337) Bool)

(assert (=> b!3475957 (= res!1402132 (not (matchR!4792 (regex!5449 (rule!8047 separatorToken!241)) lt!1183007)))))

(declare-fun e!2152992 () Bool)

(assert (=> b!3475957 (=> (not res!1402132) (not e!2152992))))

(assert (=> b!3475957 e!2152992))

(declare-fun b!3475958 () Bool)

(declare-fun res!1402138 () Bool)

(declare-fun e!2153012 () Bool)

(assert (=> b!3475958 (=> res!1402138 e!2153012)))

(declare-fun lt!1183028 () List!37337)

(declare-fun isEmpty!21590 (List!37337) Bool)

(assert (=> b!3475958 (= res!1402138 (isEmpty!21590 lt!1183028))))

(declare-fun b!3475959 () Bool)

(assert (=> b!3475959 (= e!2152992 false)))

(declare-fun res!1402148 () Bool)

(declare-fun e!2152987 () Bool)

(assert (=> b!3475960 (=> (not res!1402148) (not e!2152987))))

(declare-fun forall!7952 (List!37339 Int) Bool)

(assert (=> b!3475960 (= res!1402148 (forall!7952 tokens!494 lambda!122094))))

(declare-fun e!2152998 () Bool)

(assert (=> b!3475961 (= e!2152998 (and tp!1080437 tp!1080433))))

(declare-fun b!3475962 () Bool)

(declare-fun res!1402131 () Bool)

(assert (=> b!3475962 (=> (not res!1402131) (not e!2152987))))

(declare-fun isEmpty!21591 (List!37338) Bool)

(assert (=> b!3475962 (= res!1402131 (not (isEmpty!21591 rules!2135)))))

(declare-fun b!3475963 () Bool)

(declare-fun e!2152986 () Bool)

(assert (=> b!3475963 (= e!2152986 e!2153012)))

(declare-fun res!1402144 () Bool)

(assert (=> b!3475963 (=> res!1402144 e!2153012)))

(declare-fun lt!1183017 () List!37337)

(assert (=> b!3475963 (= res!1402144 (not (matchR!4792 (regex!5449 (rule!8047 (h!42635 tokens!494))) lt!1183017)))))

(declare-datatypes ((LexerInterface!5038 0))(
  ( (LexerInterfaceExt!5035 (__x!23576 Int)) (Lexer!5036) )
))
(declare-fun thiss!18206 () LexerInterface!5038)

(declare-fun ruleValid!1747 (LexerInterface!5038 Rule!10698) Bool)

(assert (=> b!3475963 (ruleValid!1747 thiss!18206 (rule!8047 (h!42635 tokens!494)))))

(declare-fun lt!1183001 () Unit!52643)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!947 (LexerInterface!5038 Rule!10698 List!37338) Unit!52643)

(assert (=> b!3475963 (= lt!1183001 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!947 thiss!18206 (rule!8047 (h!42635 tokens!494)) rules!2135))))

(declare-fun b!3475964 () Bool)

(declare-fun res!1402145 () Bool)

(assert (=> b!3475964 (=> (not res!1402145) (not e!2152987))))

(declare-fun sepAndNonSepRulesDisjointChars!1643 (List!37338 List!37338) Bool)

(assert (=> b!3475964 (= res!1402145 (sepAndNonSepRulesDisjointChars!1643 rules!2135 rules!2135))))

(declare-fun b!3475965 () Bool)

(declare-fun e!2152988 () Bool)

(declare-fun e!2152995 () Bool)

(assert (=> b!3475965 (= e!2152988 e!2152995)))

(declare-fun res!1402150 () Bool)

(assert (=> b!3475965 (=> res!1402150 e!2152995)))

(declare-fun lt!1183024 () BalanceConc!22160)

(declare-fun isEmpty!21592 (BalanceConc!22162) Bool)

(declare-fun lex!2364 (LexerInterface!5038 List!37338 BalanceConc!22160) tuple2!36964)

(assert (=> b!3475965 (= res!1402150 (isEmpty!21592 (_1!21616 (lex!2364 thiss!18206 rules!2135 lt!1183024))))))

(declare-fun seqFromList!3951 (List!37337) BalanceConc!22160)

(assert (=> b!3475965 (= lt!1183024 (seqFromList!3951 lt!1183017))))

(declare-fun tp!1080443 () Bool)

(declare-fun b!3475966 () Bool)

(declare-fun e!2152984 () Bool)

(declare-fun inv!50402 (String!41731) Bool)

(declare-fun inv!50405 (TokenValueInjection!10786) Bool)

(assert (=> b!3475966 (= e!2152984 (and tp!1080443 (inv!50402 (tag!6065 (rule!8047 (h!42635 tokens!494)))) (inv!50405 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) e!2152998))))

(declare-fun b!3475955 () Bool)

(declare-fun e!2152981 () Bool)

(declare-fun e!2152982 () Bool)

(declare-fun tp!1080440 () Bool)

(assert (=> b!3475955 (= e!2152981 (and e!2152982 tp!1080440))))

(declare-fun res!1402147 () Bool)

(assert (=> start!323320 (=> (not res!1402147) (not e!2152987))))

(assert (=> start!323320 (= res!1402147 (is-Lexer!5036 thiss!18206))))

(assert (=> start!323320 e!2152987))

(assert (=> start!323320 true))

(assert (=> start!323320 e!2152981))

(declare-fun e!2153004 () Bool)

(assert (=> start!323320 e!2153004))

(declare-fun e!2153007 () Bool)

(declare-fun inv!50406 (Token!10264) Bool)

(assert (=> start!323320 (and (inv!50406 separatorToken!241) e!2153007)))

(declare-fun b!3475967 () Bool)

(declare-fun e!2152996 () Bool)

(declare-fun tp!1080435 () Bool)

(declare-fun inv!21 (TokenValue!5679) Bool)

(assert (=> b!3475967 (= e!2152996 (and (inv!21 (value!175758 (h!42635 tokens!494))) e!2152984 tp!1080435))))

(declare-fun e!2153006 () Bool)

(declare-fun e!2153008 () Bool)

(assert (=> b!3475968 (= e!2153006 e!2153008)))

(declare-fun res!1402152 () Bool)

(assert (=> b!3475968 (=> res!1402152 e!2153008)))

(declare-fun contains!6923 (List!37338 Rule!10698) Bool)

(assert (=> b!3475968 (= res!1402152 (not (contains!6923 rules!2135 (rule!8047 (h!42635 tokens!494)))))))

(declare-fun lt!1183026 () List!37337)

(declare-fun contains!6924 (List!37337 C!20602) Bool)

(assert (=> b!3475968 (not (contains!6924 lt!1183026 lt!1183020))))

(declare-fun usedCharacters!683 (Regex!10208) List!37337)

(assert (=> b!3475968 (= lt!1183026 (usedCharacters!683 (regex!5449 (rule!8047 (h!42635 tokens!494)))))))

(declare-fun lt!1183034 () Unit!52643)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!249 (LexerInterface!5038 List!37338 List!37338 Rule!10698 Rule!10698 C!20602) Unit!52643)

(assert (=> b!3475968 (= lt!1183034 (lemmaNonSepRuleNotContainsCharContainedInASepRule!249 thiss!18206 rules!2135 rules!2135 (rule!8047 (h!42635 tokens!494)) (rule!8047 separatorToken!241) lt!1183020))))

(declare-fun lt!1182998 () Unit!52643)

(declare-fun forallContained!1396 (List!37339 Int Token!10264) Unit!52643)

(assert (=> b!3475968 (= lt!1182998 (forallContained!1396 tokens!494 lambda!122095 (h!42635 (t!275060 tokens!494))))))

(declare-fun rulesProduceIndividualToken!2530 (LexerInterface!5038 List!37338 Token!10264) Bool)

(assert (=> b!3475968 (= (rulesProduceIndividualToken!2530 thiss!18206 rules!2135 (h!42635 (t!275060 tokens!494))) e!2152985)))

(declare-fun res!1402127 () Bool)

(assert (=> b!3475968 (=> (not res!1402127) (not e!2152985))))

(declare-fun size!28251 (BalanceConc!22162) Int)

(assert (=> b!3475968 (= res!1402127 (= (size!28251 (_1!21616 lt!1183027)) 1))))

(declare-fun lt!1183003 () BalanceConc!22160)

(assert (=> b!3475968 (= lt!1183027 (lex!2364 thiss!18206 rules!2135 lt!1183003))))

(declare-fun lt!1183029 () BalanceConc!22162)

(declare-fun printTailRec!1533 (LexerInterface!5038 BalanceConc!22162 Int BalanceConc!22160) BalanceConc!22160)

(assert (=> b!3475968 (= lt!1183003 (printTailRec!1533 thiss!18206 lt!1183029 0 (BalanceConc!22161 Empty!11273)))))

(declare-fun print!2103 (LexerInterface!5038 BalanceConc!22162) BalanceConc!22160)

(assert (=> b!3475968 (= lt!1183003 (print!2103 thiss!18206 lt!1183029))))

(declare-fun singletonSeq!2545 (Token!10264) BalanceConc!22162)

(assert (=> b!3475968 (= lt!1183029 (singletonSeq!2545 (h!42635 (t!275060 tokens!494))))))

(declare-fun e!2153010 () Bool)

(assert (=> b!3475968 e!2153010))

(declare-fun res!1402137 () Bool)

(assert (=> b!3475968 (=> (not res!1402137) (not e!2153010))))

(declare-fun lt!1183004 () tuple2!36964)

(assert (=> b!3475968 (= res!1402137 (= (size!28251 (_1!21616 lt!1183004)) 1))))

(declare-fun lt!1183023 () BalanceConc!22160)

(assert (=> b!3475968 (= lt!1183004 (lex!2364 thiss!18206 rules!2135 lt!1183023))))

(declare-fun lt!1183030 () BalanceConc!22162)

(assert (=> b!3475968 (= lt!1183023 (printTailRec!1533 thiss!18206 lt!1183030 0 (BalanceConc!22161 Empty!11273)))))

(assert (=> b!3475968 (= lt!1183023 (print!2103 thiss!18206 lt!1183030))))

(assert (=> b!3475968 (= lt!1183030 (singletonSeq!2545 separatorToken!241))))

(declare-fun lt!1183006 () Unit!52643)

(assert (=> b!3475968 (= lt!1183006 e!2153002)))

(declare-fun c!596146 () Bool)

(assert (=> b!3475968 (= c!596146 (not (contains!6924 (usedCharacters!683 (regex!5449 (rule!8047 separatorToken!241))) lt!1183020)))))

(declare-fun head!7336 (List!37337) C!20602)

(assert (=> b!3475968 (= lt!1183020 (head!7336 lt!1183007))))

(declare-fun e!2153003 () Bool)

(assert (=> b!3475968 e!2153003))

(declare-fun res!1402143 () Bool)

(assert (=> b!3475968 (=> (not res!1402143) (not e!2153003))))

(declare-datatypes ((Option!7551 0))(
  ( (None!7550) (Some!7550 (v!36914 Rule!10698)) )
))
(declare-fun lt!1183000 () Option!7551)

(declare-fun isDefined!5815 (Option!7551) Bool)

(assert (=> b!3475968 (= res!1402143 (isDefined!5815 lt!1183000))))

(declare-fun getRuleFromTag!1092 (LexerInterface!5038 List!37338 String!41731) Option!7551)

(assert (=> b!3475968 (= lt!1183000 (getRuleFromTag!1092 thiss!18206 rules!2135 (tag!6065 (rule!8047 separatorToken!241))))))

(declare-fun lt!1183016 () Unit!52643)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1092 (LexerInterface!5038 List!37338 List!37337 Token!10264) Unit!52643)

(assert (=> b!3475968 (= lt!1183016 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1092 thiss!18206 rules!2135 lt!1183007 separatorToken!241))))

(declare-datatypes ((tuple2!36966 0))(
  ( (tuple2!36967 (_1!21617 Token!10264) (_2!21617 List!37337)) )
))
(declare-datatypes ((Option!7552 0))(
  ( (None!7551) (Some!7551 (v!36915 tuple2!36966)) )
))
(declare-fun maxPrefixOneRule!1745 (LexerInterface!5038 Rule!10698 List!37337) Option!7552)

(declare-fun apply!8791 (TokenValueInjection!10786 BalanceConc!22160) TokenValue!5679)

(declare-fun size!28252 (List!37337) Int)

(assert (=> b!3475968 (= (maxPrefixOneRule!1745 thiss!18206 (rule!8047 (h!42635 tokens!494)) lt!1183017) (Some!7551 (tuple2!36967 (Token!10265 (apply!8791 (transformation!5449 (rule!8047 (h!42635 tokens!494))) lt!1183024) (rule!8047 (h!42635 tokens!494)) (size!28252 lt!1183017) lt!1183017) Nil!37213)))))

(declare-fun lt!1183019 () Unit!52643)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!838 (LexerInterface!5038 List!37338 List!37337 List!37337 List!37337 Rule!10698) Unit!52643)

(assert (=> b!3475968 (= lt!1183019 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!838 thiss!18206 rules!2135 lt!1183017 lt!1183017 Nil!37213 (rule!8047 (h!42635 tokens!494))))))

(declare-fun e!2152989 () Bool)

(assert (=> b!3475968 e!2152989))

(declare-fun res!1402154 () Bool)

(assert (=> b!3475968 (=> (not res!1402154) (not e!2152989))))

(declare-fun lt!1183014 () Option!7551)

(assert (=> b!3475968 (= res!1402154 (isDefined!5815 lt!1183014))))

(assert (=> b!3475968 (= lt!1183014 (getRuleFromTag!1092 thiss!18206 rules!2135 (tag!6065 (rule!8047 (h!42635 tokens!494)))))))

(declare-fun lt!1183011 () Unit!52643)

(assert (=> b!3475968 (= lt!1183011 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1092 thiss!18206 rules!2135 lt!1183017 (h!42635 tokens!494)))))

(declare-fun lt!1183031 () Unit!52643)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1027 (LexerInterface!5038 List!37338 List!37339 Token!10264) Unit!52643)

(assert (=> b!3475968 (= lt!1183031 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1027 thiss!18206 rules!2135 tokens!494 (h!42635 tokens!494)))))

(declare-fun b!3475969 () Bool)

(declare-fun e!2152983 () Bool)

(declare-fun e!2152999 () Bool)

(assert (=> b!3475969 (= e!2152983 e!2152999)))

(declare-fun res!1402149 () Bool)

(assert (=> b!3475969 (=> res!1402149 e!2152999)))

(declare-fun lt!1183005 () List!37337)

(declare-fun ++!9188 (List!37337 List!37337) List!37337)

(declare-fun list!13566 (BalanceConc!22160) List!37337)

(declare-fun charsOf!3463 (Token!10264) BalanceConc!22160)

(declare-fun printWithSeparatorTokenList!325 (LexerInterface!5038 List!37339 Token!10264) List!37337)

(assert (=> b!3475969 (= res!1402149 (not (= lt!1183005 (++!9188 (++!9188 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))) lt!1183007) (printWithSeparatorTokenList!325 thiss!18206 (t!275060 (t!275060 tokens!494)) separatorToken!241)))))))

(assert (=> b!3475969 (= lt!1183028 (++!9188 lt!1183007 lt!1183005))))

(assert (=> b!3475969 (= lt!1183007 (list!13566 (charsOf!3463 separatorToken!241)))))

(assert (=> b!3475969 (= lt!1183005 (printWithSeparatorTokenList!325 thiss!18206 (t!275060 tokens!494) separatorToken!241))))

(declare-fun lt!1183013 () List!37337)

(assert (=> b!3475969 (= lt!1183013 (printWithSeparatorTokenList!325 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3475970 () Bool)

(declare-fun res!1402142 () Bool)

(assert (=> b!3475970 (=> (not res!1402142) (not e!2152987))))

(assert (=> b!3475970 (= res!1402142 (isSeparator!5449 (rule!8047 separatorToken!241)))))

(declare-fun b!3475971 () Bool)

(assert (=> b!3475971 (= e!2153012 (not (contains!6924 lt!1183026 (head!7336 lt!1183028))))))

(declare-fun b!3475972 () Bool)

(declare-fun e!2153005 () Bool)

(assert (=> b!3475972 (= e!2153005 e!2152988)))

(declare-fun res!1402126 () Bool)

(assert (=> b!3475972 (=> res!1402126 e!2152988)))

(declare-fun lt!1183002 () List!37337)

(declare-fun lt!1183032 () List!37337)

(assert (=> b!3475972 (= res!1402126 (or (not (= lt!1183002 lt!1183017)) (not (= lt!1183032 lt!1183017))))))

(assert (=> b!3475972 (= lt!1183017 (list!13566 (charsOf!3463 (h!42635 tokens!494))))))

(declare-fun tp!1080438 () Bool)

(declare-fun b!3475973 () Bool)

(declare-fun e!2152997 () Bool)

(assert (=> b!3475973 (= e!2153007 (and (inv!21 (value!175758 separatorToken!241)) e!2152997 tp!1080438))))

(declare-fun b!3475974 () Bool)

(declare-fun e!2152991 () Bool)

(declare-fun lt!1183033 () Rule!10698)

(assert (=> b!3475974 (= e!2152991 (= (rule!8047 (h!42635 tokens!494)) lt!1183033))))

(declare-fun b!3475975 () Bool)

(declare-fun isEmpty!21593 (BalanceConc!22160) Bool)

(assert (=> b!3475975 (= e!2152985 (isEmpty!21593 (_2!21616 lt!1183027)))))

(declare-fun b!3475976 () Bool)

(declare-fun e!2152994 () Bool)

(assert (=> b!3475976 (= e!2152994 e!2152986)))

(declare-fun res!1402158 () Bool)

(assert (=> b!3475976 (=> res!1402158 e!2152986)))

(declare-fun lt!1183012 () tuple2!36966)

(assert (=> b!3475976 (= res!1402158 (not (= (_1!21617 lt!1183012) (h!42635 tokens!494))))))

(declare-fun lt!1183021 () Option!7552)

(declare-fun get!11921 (Option!7552) tuple2!36966)

(assert (=> b!3475976 (= lt!1183012 (get!11921 lt!1183021))))

(declare-fun b!3475977 () Bool)

(declare-fun res!1402146 () Bool)

(assert (=> b!3475977 (=> (not res!1402146) (not e!2152987))))

(assert (=> b!3475977 (= res!1402146 (and (not (is-Nil!37215 tokens!494)) (not (is-Nil!37215 (t!275060 tokens!494)))))))

(declare-fun b!3475978 () Bool)

(declare-fun res!1402151 () Bool)

(assert (=> b!3475978 (=> (not res!1402151) (not e!2153010))))

(assert (=> b!3475978 (= res!1402151 (= (apply!8790 (_1!21616 lt!1183004) 0) separatorToken!241))))

(declare-fun b!3475979 () Bool)

(assert (=> b!3475979 (= e!2153008 e!2152994)))

(declare-fun res!1402134 () Bool)

(assert (=> b!3475979 (=> res!1402134 e!2152994)))

(declare-fun isDefined!5816 (Option!7552) Bool)

(assert (=> b!3475979 (= res!1402134 (not (isDefined!5816 lt!1183021)))))

(declare-fun maxPrefix!2578 (LexerInterface!5038 List!37338 List!37337) Option!7552)

(assert (=> b!3475979 (= lt!1183021 (maxPrefix!2578 thiss!18206 rules!2135 lt!1183017))))

(declare-fun b!3475980 () Bool)

(declare-fun e!2152993 () Bool)

(assert (=> b!3475980 (= e!2152993 e!2153006)))

(declare-fun res!1402130 () Bool)

(assert (=> b!3475980 (=> res!1402130 e!2153006)))

(declare-fun lt!1183008 () List!37337)

(assert (=> b!3475980 (= res!1402130 (not (= lt!1183013 lt!1183008)))))

(declare-fun lt!1183025 () List!37337)

(assert (=> b!3475980 (= lt!1183025 lt!1183008)))

(assert (=> b!3475980 (= lt!1183008 (++!9188 lt!1183017 lt!1183028))))

(declare-fun lt!1183015 () Unit!52643)

(declare-fun lemmaConcatAssociativity!1973 (List!37337 List!37337 List!37337) Unit!52643)

(assert (=> b!3475980 (= lt!1183015 (lemmaConcatAssociativity!1973 lt!1183017 lt!1183007 lt!1183005))))

(declare-fun b!3475981 () Bool)

(assert (=> b!3475981 (= e!2153010 (isEmpty!21593 (_2!21616 lt!1183004)))))

(declare-fun b!3475982 () Bool)

(declare-fun e!2153000 () Bool)

(assert (=> b!3475982 (= e!2153003 e!2153000)))

(declare-fun res!1402155 () Bool)

(assert (=> b!3475982 (=> (not res!1402155) (not e!2153000))))

(declare-fun lt!1183022 () Rule!10698)

(assert (=> b!3475982 (= res!1402155 (matchR!4792 (regex!5449 lt!1183022) lt!1183007))))

(declare-fun get!11922 (Option!7551) Rule!10698)

(assert (=> b!3475982 (= lt!1183022 (get!11922 lt!1183000))))

(declare-fun b!3475983 () Bool)

(assert (=> b!3475983 (= e!2152989 e!2152991)))

(declare-fun res!1402141 () Bool)

(assert (=> b!3475983 (=> (not res!1402141) (not e!2152991))))

(assert (=> b!3475983 (= res!1402141 (matchR!4792 (regex!5449 lt!1183033) lt!1183017))))

(assert (=> b!3475983 (= lt!1183033 (get!11922 lt!1183014))))

(declare-fun b!3475984 () Bool)

(assert (=> b!3475984 (= e!2153000 (= (rule!8047 separatorToken!241) lt!1183022))))

(declare-fun e!2153013 () Bool)

(declare-fun b!3475985 () Bool)

(declare-fun tp!1080441 () Bool)

(assert (=> b!3475985 (= e!2152982 (and tp!1080441 (inv!50402 (tag!6065 (h!42634 rules!2135))) (inv!50405 (transformation!5449 (h!42634 rules!2135))) e!2153013))))

(declare-fun b!3475986 () Bool)

(declare-fun res!1402133 () Bool)

(assert (=> b!3475986 (=> res!1402133 e!2153008)))

(assert (=> b!3475986 (= res!1402133 (not (contains!6923 rules!2135 (rule!8047 separatorToken!241))))))

(declare-fun tp!1080434 () Bool)

(declare-fun b!3475987 () Bool)

(assert (=> b!3475987 (= e!2152997 (and tp!1080434 (inv!50402 (tag!6065 (rule!8047 separatorToken!241))) (inv!50405 (transformation!5449 (rule!8047 separatorToken!241))) e!2153001))))

(declare-fun b!3475988 () Bool)

(declare-fun res!1402157 () Bool)

(assert (=> b!3475988 (=> (not res!1402157) (not e!2152987))))

(assert (=> b!3475988 (= res!1402157 (rulesProduceIndividualToken!2530 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3475989 () Bool)

(declare-fun res!1402139 () Bool)

(assert (=> b!3475989 (=> res!1402139 e!2152986)))

(assert (=> b!3475989 (= res!1402139 (not (isEmpty!21590 (_2!21617 lt!1183012))))))

(declare-fun b!3475990 () Bool)

(declare-fun res!1402140 () Bool)

(assert (=> b!3475990 (=> (not res!1402140) (not e!2152987))))

(declare-fun rulesInvariant!4435 (LexerInterface!5038 List!37338) Bool)

(assert (=> b!3475990 (= res!1402140 (rulesInvariant!4435 thiss!18206 rules!2135))))

(assert (=> b!3475991 (= e!2153013 (and tp!1080439 tp!1080436))))

(declare-fun b!3475992 () Bool)

(declare-fun res!1402136 () Bool)

(assert (=> b!3475992 (=> (not res!1402136) (not e!2152987))))

(declare-fun rulesProduceEachTokenIndividually!1489 (LexerInterface!5038 List!37338 BalanceConc!22162) Bool)

(declare-fun seqFromList!3952 (List!37339) BalanceConc!22162)

(assert (=> b!3475992 (= res!1402136 (rulesProduceEachTokenIndividually!1489 thiss!18206 rules!2135 (seqFromList!3952 tokens!494)))))

(declare-fun tp!1080432 () Bool)

(declare-fun b!3475993 () Bool)

(assert (=> b!3475993 (= e!2153004 (and (inv!50406 (h!42635 tokens!494)) e!2152996 tp!1080432))))

(declare-fun b!3475994 () Bool)

(assert (=> b!3475994 (= e!2152987 (not e!2153005))))

(declare-fun res!1402135 () Bool)

(assert (=> b!3475994 (=> res!1402135 e!2153005)))

(assert (=> b!3475994 (= res!1402135 (not (= lt!1183032 lt!1183002)))))

(declare-fun printList!1586 (LexerInterface!5038 List!37339) List!37337)

(assert (=> b!3475994 (= lt!1183002 (printList!1586 thiss!18206 (Cons!37215 (h!42635 tokens!494) Nil!37215)))))

(declare-fun lt!1183009 () BalanceConc!22160)

(assert (=> b!3475994 (= lt!1183032 (list!13566 lt!1183009))))

(declare-fun lt!1183010 () BalanceConc!22162)

(assert (=> b!3475994 (= lt!1183009 (printTailRec!1533 thiss!18206 lt!1183010 0 (BalanceConc!22161 Empty!11273)))))

(assert (=> b!3475994 (= lt!1183009 (print!2103 thiss!18206 lt!1183010))))

(assert (=> b!3475994 (= lt!1183010 (singletonSeq!2545 (h!42635 tokens!494)))))

(declare-fun b!3475995 () Bool)

(assert (=> b!3475995 (= e!2152995 e!2152983)))

(declare-fun res!1402128 () Bool)

(assert (=> b!3475995 (=> res!1402128 e!2152983)))

(assert (=> b!3475995 (= res!1402128 (or (isSeparator!5449 (rule!8047 (h!42635 tokens!494))) (isSeparator!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))))))

(declare-fun lt!1183018 () Unit!52643)

(assert (=> b!3475995 (= lt!1183018 (forallContained!1396 tokens!494 lambda!122094 (h!42635 (t!275060 tokens!494))))))

(declare-fun lt!1182999 () Unit!52643)

(assert (=> b!3475995 (= lt!1182999 (forallContained!1396 tokens!494 lambda!122094 (h!42635 tokens!494)))))

(declare-fun b!3475996 () Bool)

(declare-fun res!1402153 () Bool)

(assert (=> b!3475996 (=> res!1402153 e!2152988)))

(assert (=> b!3475996 (= res!1402153 (not (rulesProduceIndividualToken!2530 thiss!18206 rules!2135 (h!42635 tokens!494))))))

(declare-fun b!3475997 () Bool)

(assert (=> b!3475997 (= e!2152999 e!2152993)))

(declare-fun res!1402129 () Bool)

(assert (=> b!3475997 (=> res!1402129 e!2152993)))

(assert (=> b!3475997 (= res!1402129 (not (= lt!1183013 lt!1183025)))))

(assert (=> b!3475997 (= lt!1183025 (++!9188 (++!9188 lt!1183017 lt!1183007) lt!1183005))))

(assert (= (and start!323320 res!1402147) b!3475962))

(assert (= (and b!3475962 res!1402131) b!3475990))

(assert (= (and b!3475990 res!1402140) b!3475992))

(assert (= (and b!3475992 res!1402136) b!3475988))

(assert (= (and b!3475988 res!1402157) b!3475970))

(assert (= (and b!3475970 res!1402142) b!3475960))

(assert (= (and b!3475960 res!1402148) b!3475964))

(assert (= (and b!3475964 res!1402145) b!3475977))

(assert (= (and b!3475977 res!1402146) b!3475994))

(assert (= (and b!3475994 (not res!1402135)) b!3475972))

(assert (= (and b!3475972 (not res!1402126)) b!3475996))

(assert (= (and b!3475996 (not res!1402153)) b!3475965))

(assert (= (and b!3475965 (not res!1402150)) b!3475995))

(assert (= (and b!3475995 (not res!1402128)) b!3475969))

(assert (= (and b!3475969 (not res!1402149)) b!3475997))

(assert (= (and b!3475997 (not res!1402129)) b!3475980))

(assert (= (and b!3475980 (not res!1402130)) b!3475968))

(assert (= (and b!3475968 res!1402154) b!3475983))

(assert (= (and b!3475983 res!1402141) b!3475974))

(assert (= (and b!3475968 res!1402143) b!3475982))

(assert (= (and b!3475982 res!1402155) b!3475984))

(assert (= (and b!3475968 c!596146) b!3475957))

(assert (= (and b!3475968 (not c!596146)) b!3475956))

(assert (= (and b!3475957 res!1402132) b!3475959))

(assert (= (and b!3475968 res!1402137) b!3475978))

(assert (= (and b!3475978 res!1402151) b!3475981))

(assert (= (and b!3475968 res!1402127) b!3475954))

(assert (= (and b!3475954 res!1402156) b!3475975))

(assert (= (and b!3475968 (not res!1402152)) b!3475986))

(assert (= (and b!3475986 (not res!1402133)) b!3475979))

(assert (= (and b!3475979 (not res!1402134)) b!3475976))

(assert (= (and b!3475976 (not res!1402158)) b!3475989))

(assert (= (and b!3475989 (not res!1402139)) b!3475963))

(assert (= (and b!3475963 (not res!1402144)) b!3475958))

(assert (= (and b!3475958 (not res!1402138)) b!3475971))

(assert (= b!3475985 b!3475991))

(assert (= b!3475955 b!3475985))

(assert (= (and start!323320 (is-Cons!37214 rules!2135)) b!3475955))

(assert (= b!3475966 b!3475961))

(assert (= b!3475967 b!3475966))

(assert (= b!3475993 b!3475967))

(assert (= (and start!323320 (is-Cons!37215 tokens!494)) b!3475993))

(assert (= b!3475987 b!3475953))

(assert (= b!3475973 b!3475987))

(assert (= start!323320 b!3475973))

(declare-fun m!3890477 () Bool)

(assert (=> b!3475978 m!3890477))

(declare-fun m!3890479 () Bool)

(assert (=> b!3475957 m!3890479))

(declare-fun m!3890481 () Bool)

(assert (=> b!3475957 m!3890481))

(declare-fun m!3890483 () Bool)

(assert (=> b!3475989 m!3890483))

(declare-fun m!3890485 () Bool)

(assert (=> b!3475972 m!3890485))

(assert (=> b!3475972 m!3890485))

(declare-fun m!3890487 () Bool)

(assert (=> b!3475972 m!3890487))

(declare-fun m!3890489 () Bool)

(assert (=> b!3475983 m!3890489))

(declare-fun m!3890491 () Bool)

(assert (=> b!3475983 m!3890491))

(declare-fun m!3890493 () Bool)

(assert (=> b!3475990 m!3890493))

(declare-fun m!3890495 () Bool)

(assert (=> b!3475995 m!3890495))

(declare-fun m!3890497 () Bool)

(assert (=> b!3475995 m!3890497))

(declare-fun m!3890499 () Bool)

(assert (=> b!3475960 m!3890499))

(declare-fun m!3890501 () Bool)

(assert (=> b!3475967 m!3890501))

(declare-fun m!3890503 () Bool)

(assert (=> b!3475963 m!3890503))

(declare-fun m!3890505 () Bool)

(assert (=> b!3475963 m!3890505))

(declare-fun m!3890507 () Bool)

(assert (=> b!3475963 m!3890507))

(declare-fun m!3890509 () Bool)

(assert (=> b!3475973 m!3890509))

(declare-fun m!3890511 () Bool)

(assert (=> b!3475979 m!3890511))

(declare-fun m!3890513 () Bool)

(assert (=> b!3475979 m!3890513))

(declare-fun m!3890515 () Bool)

(assert (=> b!3475962 m!3890515))

(declare-fun m!3890517 () Bool)

(assert (=> b!3475958 m!3890517))

(declare-fun m!3890519 () Bool)

(assert (=> b!3475980 m!3890519))

(declare-fun m!3890521 () Bool)

(assert (=> b!3475980 m!3890521))

(declare-fun m!3890523 () Bool)

(assert (=> b!3475981 m!3890523))

(declare-fun m!3890525 () Bool)

(assert (=> b!3475997 m!3890525))

(assert (=> b!3475997 m!3890525))

(declare-fun m!3890527 () Bool)

(assert (=> b!3475997 m!3890527))

(declare-fun m!3890529 () Bool)

(assert (=> b!3475994 m!3890529))

(declare-fun m!3890531 () Bool)

(assert (=> b!3475994 m!3890531))

(declare-fun m!3890533 () Bool)

(assert (=> b!3475994 m!3890533))

(declare-fun m!3890535 () Bool)

(assert (=> b!3475994 m!3890535))

(declare-fun m!3890537 () Bool)

(assert (=> b!3475994 m!3890537))

(declare-fun m!3890539 () Bool)

(assert (=> b!3475976 m!3890539))

(declare-fun m!3890541 () Bool)

(assert (=> b!3475969 m!3890541))

(declare-fun m!3890543 () Bool)

(assert (=> b!3475969 m!3890543))

(declare-fun m!3890545 () Bool)

(assert (=> b!3475969 m!3890545))

(declare-fun m!3890547 () Bool)

(assert (=> b!3475969 m!3890547))

(assert (=> b!3475969 m!3890541))

(declare-fun m!3890549 () Bool)

(assert (=> b!3475969 m!3890549))

(declare-fun m!3890551 () Bool)

(assert (=> b!3475969 m!3890551))

(declare-fun m!3890553 () Bool)

(assert (=> b!3475969 m!3890553))

(declare-fun m!3890555 () Bool)

(assert (=> b!3475969 m!3890555))

(assert (=> b!3475969 m!3890551))

(declare-fun m!3890557 () Bool)

(assert (=> b!3475969 m!3890557))

(assert (=> b!3475969 m!3890543))

(declare-fun m!3890559 () Bool)

(assert (=> b!3475969 m!3890559))

(assert (=> b!3475969 m!3890549))

(assert (=> b!3475969 m!3890555))

(declare-fun m!3890561 () Bool)

(assert (=> b!3475975 m!3890561))

(declare-fun m!3890563 () Bool)

(assert (=> b!3475993 m!3890563))

(declare-fun m!3890565 () Bool)

(assert (=> b!3475964 m!3890565))

(declare-fun m!3890567 () Bool)

(assert (=> b!3475965 m!3890567))

(declare-fun m!3890569 () Bool)

(assert (=> b!3475965 m!3890569))

(declare-fun m!3890571 () Bool)

(assert (=> b!3475965 m!3890571))

(declare-fun m!3890573 () Bool)

(assert (=> b!3475971 m!3890573))

(assert (=> b!3475971 m!3890573))

(declare-fun m!3890575 () Bool)

(assert (=> b!3475971 m!3890575))

(declare-fun m!3890577 () Bool)

(assert (=> b!3475985 m!3890577))

(declare-fun m!3890579 () Bool)

(assert (=> b!3475985 m!3890579))

(declare-fun m!3890581 () Bool)

(assert (=> b!3475988 m!3890581))

(declare-fun m!3890583 () Bool)

(assert (=> b!3475966 m!3890583))

(declare-fun m!3890585 () Bool)

(assert (=> b!3475966 m!3890585))

(declare-fun m!3890587 () Bool)

(assert (=> b!3475992 m!3890587))

(assert (=> b!3475992 m!3890587))

(declare-fun m!3890589 () Bool)

(assert (=> b!3475992 m!3890589))

(declare-fun m!3890591 () Bool)

(assert (=> b!3475986 m!3890591))

(declare-fun m!3890593 () Bool)

(assert (=> b!3475996 m!3890593))

(declare-fun m!3890595 () Bool)

(assert (=> b!3475987 m!3890595))

(declare-fun m!3890597 () Bool)

(assert (=> b!3475987 m!3890597))

(declare-fun m!3890599 () Bool)

(assert (=> b!3475982 m!3890599))

(declare-fun m!3890601 () Bool)

(assert (=> b!3475982 m!3890601))

(declare-fun m!3890603 () Bool)

(assert (=> start!323320 m!3890603))

(declare-fun m!3890605 () Bool)

(assert (=> b!3475968 m!3890605))

(declare-fun m!3890607 () Bool)

(assert (=> b!3475968 m!3890607))

(declare-fun m!3890609 () Bool)

(assert (=> b!3475968 m!3890609))

(declare-fun m!3890611 () Bool)

(assert (=> b!3475968 m!3890611))

(declare-fun m!3890613 () Bool)

(assert (=> b!3475968 m!3890613))

(declare-fun m!3890615 () Bool)

(assert (=> b!3475968 m!3890615))

(declare-fun m!3890617 () Bool)

(assert (=> b!3475968 m!3890617))

(declare-fun m!3890619 () Bool)

(assert (=> b!3475968 m!3890619))

(declare-fun m!3890621 () Bool)

(assert (=> b!3475968 m!3890621))

(declare-fun m!3890623 () Bool)

(assert (=> b!3475968 m!3890623))

(declare-fun m!3890625 () Bool)

(assert (=> b!3475968 m!3890625))

(declare-fun m!3890627 () Bool)

(assert (=> b!3475968 m!3890627))

(declare-fun m!3890629 () Bool)

(assert (=> b!3475968 m!3890629))

(declare-fun m!3890631 () Bool)

(assert (=> b!3475968 m!3890631))

(declare-fun m!3890633 () Bool)

(assert (=> b!3475968 m!3890633))

(declare-fun m!3890635 () Bool)

(assert (=> b!3475968 m!3890635))

(declare-fun m!3890637 () Bool)

(assert (=> b!3475968 m!3890637))

(assert (=> b!3475968 m!3890607))

(declare-fun m!3890639 () Bool)

(assert (=> b!3475968 m!3890639))

(declare-fun m!3890641 () Bool)

(assert (=> b!3475968 m!3890641))

(declare-fun m!3890643 () Bool)

(assert (=> b!3475968 m!3890643))

(declare-fun m!3890645 () Bool)

(assert (=> b!3475968 m!3890645))

(declare-fun m!3890647 () Bool)

(assert (=> b!3475968 m!3890647))

(declare-fun m!3890649 () Bool)

(assert (=> b!3475968 m!3890649))

(declare-fun m!3890651 () Bool)

(assert (=> b!3475968 m!3890651))

(declare-fun m!3890653 () Bool)

(assert (=> b!3475968 m!3890653))

(declare-fun m!3890655 () Bool)

(assert (=> b!3475968 m!3890655))

(declare-fun m!3890657 () Bool)

(assert (=> b!3475968 m!3890657))

(declare-fun m!3890659 () Bool)

(assert (=> b!3475968 m!3890659))

(declare-fun m!3890661 () Bool)

(assert (=> b!3475968 m!3890661))

(declare-fun m!3890663 () Bool)

(assert (=> b!3475968 m!3890663))

(declare-fun m!3890665 () Bool)

(assert (=> b!3475954 m!3890665))

(push 1)

(assert (not b!3475962))

(assert (not b!3475975))

(assert (not b!3475981))

(assert (not b_next!90829))

(assert (not b!3475955))

(assert (not b!3475987))

(assert (not b!3475983))

(assert (not start!323320))

(assert (not b!3475965))

(assert (not b_next!90825))

(assert b_and!245159)

(assert (not b!3475985))

(assert (not b!3475978))

(assert b_and!245163)

(assert (not b!3475971))

(assert (not b!3475960))

(assert (not b_next!90831))

(assert (not b!3475990))

(assert (not b!3475963))

(assert (not b!3475968))

(assert (not b!3475986))

(assert (not b!3475989))

(assert (not b!3475969))

(assert (not b!3475972))

(assert (not b_next!90823))

(assert b_and!245161)

(assert (not b!3475997))

(assert (not b!3475973))

(assert (not b!3475976))

(assert (not b!3475994))

(assert (not b!3475967))

(assert (not b!3475958))

(assert (not b!3475966))

(assert (not b!3475988))

(assert (not b!3475982))

(assert (not b_next!90827))

(assert (not b!3476006))

(assert (not b!3475979))

(assert b_and!245165)

(assert (not b!3475993))

(assert (not b_next!90821))

(assert (not b!3475992))

(assert (not b!3475995))

(assert (not b!3475957))

(assert b_and!245169)

(assert (not b!3475980))

(assert (not b!3475996))

(assert b_and!245167)

(assert (not b!3475964))

(assert (not b!3475954))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!90825))

(assert b_and!245159)

(assert b_and!245163)

(assert (not b_next!90831))

(assert (not b_next!90829))

(assert (not b_next!90827))

(assert b_and!245165)

(assert (not b_next!90821))

(assert b_and!245169)

(assert b_and!245167)

(assert (not b_next!90823))

(assert b_and!245161)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1003874 () Bool)

(assert (=> d!1003874 (= (isEmpty!21590 (_2!21617 lt!1183012)) (is-Nil!37213 (_2!21617 lt!1183012)))))

(assert (=> b!3475989 d!1003874))

(declare-fun d!1003876 () Bool)

(declare-fun c!596161 () Bool)

(assert (=> d!1003876 (= c!596161 (is-IntegerValue!17037 (value!175758 (h!42635 tokens!494))))))

(declare-fun e!2153146 () Bool)

(assert (=> d!1003876 (= (inv!21 (value!175758 (h!42635 tokens!494))) e!2153146)))

(declare-fun b!3476169 () Bool)

(declare-fun e!2153145 () Bool)

(declare-fun inv!15 (TokenValue!5679) Bool)

(assert (=> b!3476169 (= e!2153145 (inv!15 (value!175758 (h!42635 tokens!494))))))

(declare-fun b!3476170 () Bool)

(declare-fun e!2153147 () Bool)

(declare-fun inv!17 (TokenValue!5679) Bool)

(assert (=> b!3476170 (= e!2153147 (inv!17 (value!175758 (h!42635 tokens!494))))))

(declare-fun b!3476171 () Bool)

(assert (=> b!3476171 (= e!2153146 e!2153147)))

(declare-fun c!596162 () Bool)

(assert (=> b!3476171 (= c!596162 (is-IntegerValue!17038 (value!175758 (h!42635 tokens!494))))))

(declare-fun b!3476172 () Bool)

(declare-fun res!1402271 () Bool)

(assert (=> b!3476172 (=> res!1402271 e!2153145)))

(assert (=> b!3476172 (= res!1402271 (not (is-IntegerValue!17039 (value!175758 (h!42635 tokens!494)))))))

(assert (=> b!3476172 (= e!2153147 e!2153145)))

(declare-fun b!3476173 () Bool)

(declare-fun inv!16 (TokenValue!5679) Bool)

(assert (=> b!3476173 (= e!2153146 (inv!16 (value!175758 (h!42635 tokens!494))))))

(assert (= (and d!1003876 c!596161) b!3476173))

(assert (= (and d!1003876 (not c!596161)) b!3476171))

(assert (= (and b!3476171 c!596162) b!3476170))

(assert (= (and b!3476171 (not c!596162)) b!3476172))

(assert (= (and b!3476172 (not res!1402271)) b!3476169))

(declare-fun m!3890857 () Bool)

(assert (=> b!3476169 m!3890857))

(declare-fun m!3890859 () Bool)

(assert (=> b!3476170 m!3890859))

(declare-fun m!3890861 () Bool)

(assert (=> b!3476173 m!3890861))

(assert (=> b!3475967 d!1003876))

(declare-fun d!1003878 () Bool)

(declare-fun lt!1183158 () Bool)

(declare-fun e!2153161 () Bool)

(assert (=> d!1003878 (= lt!1183158 e!2153161)))

(declare-fun res!1402286 () Bool)

(assert (=> d!1003878 (=> (not res!1402286) (not e!2153161))))

(declare-fun list!13568 (BalanceConc!22162) List!37339)

(assert (=> d!1003878 (= res!1402286 (= (list!13568 (_1!21616 (lex!2364 thiss!18206 rules!2135 (print!2103 thiss!18206 (singletonSeq!2545 separatorToken!241))))) (list!13568 (singletonSeq!2545 separatorToken!241))))))

(declare-fun e!2153160 () Bool)

(assert (=> d!1003878 (= lt!1183158 e!2153160)))

(declare-fun res!1402288 () Bool)

(assert (=> d!1003878 (=> (not res!1402288) (not e!2153160))))

(declare-fun lt!1183159 () tuple2!36964)

(assert (=> d!1003878 (= res!1402288 (= (size!28251 (_1!21616 lt!1183159)) 1))))

(assert (=> d!1003878 (= lt!1183159 (lex!2364 thiss!18206 rules!2135 (print!2103 thiss!18206 (singletonSeq!2545 separatorToken!241))))))

(assert (=> d!1003878 (not (isEmpty!21591 rules!2135))))

(assert (=> d!1003878 (= (rulesProduceIndividualToken!2530 thiss!18206 rules!2135 separatorToken!241) lt!1183158)))

(declare-fun b!3476193 () Bool)

(declare-fun res!1402287 () Bool)

(assert (=> b!3476193 (=> (not res!1402287) (not e!2153160))))

(assert (=> b!3476193 (= res!1402287 (= (apply!8790 (_1!21616 lt!1183159) 0) separatorToken!241))))

(declare-fun b!3476194 () Bool)

(assert (=> b!3476194 (= e!2153160 (isEmpty!21593 (_2!21616 lt!1183159)))))

(declare-fun b!3476195 () Bool)

(assert (=> b!3476195 (= e!2153161 (isEmpty!21593 (_2!21616 (lex!2364 thiss!18206 rules!2135 (print!2103 thiss!18206 (singletonSeq!2545 separatorToken!241))))))))

(assert (= (and d!1003878 res!1402288) b!3476193))

(assert (= (and b!3476193 res!1402287) b!3476194))

(assert (= (and d!1003878 res!1402286) b!3476195))

(assert (=> d!1003878 m!3890515))

(assert (=> d!1003878 m!3890645))

(declare-fun m!3890883 () Bool)

(assert (=> d!1003878 m!3890883))

(assert (=> d!1003878 m!3890645))

(declare-fun m!3890885 () Bool)

(assert (=> d!1003878 m!3890885))

(declare-fun m!3890887 () Bool)

(assert (=> d!1003878 m!3890887))

(declare-fun m!3890889 () Bool)

(assert (=> d!1003878 m!3890889))

(assert (=> d!1003878 m!3890883))

(declare-fun m!3890891 () Bool)

(assert (=> d!1003878 m!3890891))

(assert (=> d!1003878 m!3890645))

(declare-fun m!3890893 () Bool)

(assert (=> b!3476193 m!3890893))

(declare-fun m!3890895 () Bool)

(assert (=> b!3476194 m!3890895))

(assert (=> b!3476195 m!3890645))

(assert (=> b!3476195 m!3890645))

(assert (=> b!3476195 m!3890883))

(assert (=> b!3476195 m!3890883))

(assert (=> b!3476195 m!3890891))

(declare-fun m!3890897 () Bool)

(assert (=> b!3476195 m!3890897))

(assert (=> b!3475988 d!1003878))

(declare-fun b!3476210 () Bool)

(declare-fun e!2153170 () List!37337)

(assert (=> b!3476210 (= e!2153170 (Cons!37213 (h!42633 lt!1183007) (++!9188 (t!275058 lt!1183007) lt!1183005)))))

(declare-fun b!3476211 () Bool)

(declare-fun res!1402295 () Bool)

(declare-fun e!2153169 () Bool)

(assert (=> b!3476211 (=> (not res!1402295) (not e!2153169))))

(declare-fun lt!1183163 () List!37337)

(assert (=> b!3476211 (= res!1402295 (= (size!28252 lt!1183163) (+ (size!28252 lt!1183007) (size!28252 lt!1183005))))))

(declare-fun b!3476212 () Bool)

(assert (=> b!3476212 (= e!2153169 (or (not (= lt!1183005 Nil!37213)) (= lt!1183163 lt!1183007)))))

(declare-fun d!1003888 () Bool)

(assert (=> d!1003888 e!2153169))

(declare-fun res!1402294 () Bool)

(assert (=> d!1003888 (=> (not res!1402294) (not e!2153169))))

(declare-fun content!5206 (List!37337) (Set C!20602))

(assert (=> d!1003888 (= res!1402294 (= (content!5206 lt!1183163) (set.union (content!5206 lt!1183007) (content!5206 lt!1183005))))))

(assert (=> d!1003888 (= lt!1183163 e!2153170)))

(declare-fun c!596167 () Bool)

(assert (=> d!1003888 (= c!596167 (is-Nil!37213 lt!1183007))))

(assert (=> d!1003888 (= (++!9188 lt!1183007 lt!1183005) lt!1183163)))

(declare-fun b!3476209 () Bool)

(assert (=> b!3476209 (= e!2153170 lt!1183005)))

(assert (= (and d!1003888 c!596167) b!3476209))

(assert (= (and d!1003888 (not c!596167)) b!3476210))

(assert (= (and d!1003888 res!1402294) b!3476211))

(assert (= (and b!3476211 res!1402295) b!3476212))

(declare-fun m!3890905 () Bool)

(assert (=> b!3476210 m!3890905))

(declare-fun m!3890907 () Bool)

(assert (=> b!3476211 m!3890907))

(declare-fun m!3890909 () Bool)

(assert (=> b!3476211 m!3890909))

(declare-fun m!3890911 () Bool)

(assert (=> b!3476211 m!3890911))

(declare-fun m!3890913 () Bool)

(assert (=> d!1003888 m!3890913))

(declare-fun m!3890915 () Bool)

(assert (=> d!1003888 m!3890915))

(declare-fun m!3890917 () Bool)

(assert (=> d!1003888 m!3890917))

(assert (=> b!3475969 d!1003888))

(declare-fun d!1003892 () Bool)

(declare-fun list!13569 (Conc!11273) List!37337)

(assert (=> d!1003892 (= (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))) (list!13569 (c!596148 (charsOf!3463 (h!42635 (t!275060 tokens!494))))))))

(declare-fun bs!561706 () Bool)

(assert (= bs!561706 d!1003892))

(declare-fun m!3890919 () Bool)

(assert (=> bs!561706 m!3890919))

(assert (=> b!3475969 d!1003892))

(declare-fun b!3476216 () Bool)

(declare-fun e!2153173 () List!37337)

(assert (=> b!3476216 (= e!2153173 (Cons!37213 (h!42633 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494))))) (++!9188 (t!275058 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494))))) lt!1183007)))))

(declare-fun b!3476217 () Bool)

(declare-fun res!1402297 () Bool)

(declare-fun e!2153172 () Bool)

(assert (=> b!3476217 (=> (not res!1402297) (not e!2153172))))

(declare-fun lt!1183164 () List!37337)

(assert (=> b!3476217 (= res!1402297 (= (size!28252 lt!1183164) (+ (size!28252 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494))))) (size!28252 lt!1183007))))))

(declare-fun b!3476218 () Bool)

(assert (=> b!3476218 (= e!2153172 (or (not (= lt!1183007 Nil!37213)) (= lt!1183164 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))))))))

(declare-fun d!1003894 () Bool)

(assert (=> d!1003894 e!2153172))

(declare-fun res!1402296 () Bool)

(assert (=> d!1003894 (=> (not res!1402296) (not e!2153172))))

(assert (=> d!1003894 (= res!1402296 (= (content!5206 lt!1183164) (set.union (content!5206 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494))))) (content!5206 lt!1183007))))))

(assert (=> d!1003894 (= lt!1183164 e!2153173)))

(declare-fun c!596169 () Bool)

(assert (=> d!1003894 (= c!596169 (is-Nil!37213 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494))))))))

(assert (=> d!1003894 (= (++!9188 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))) lt!1183007) lt!1183164)))

(declare-fun b!3476215 () Bool)

(assert (=> b!3476215 (= e!2153173 lt!1183007)))

(assert (= (and d!1003894 c!596169) b!3476215))

(assert (= (and d!1003894 (not c!596169)) b!3476216))

(assert (= (and d!1003894 res!1402296) b!3476217))

(assert (= (and b!3476217 res!1402297) b!3476218))

(declare-fun m!3890927 () Bool)

(assert (=> b!3476216 m!3890927))

(declare-fun m!3890929 () Bool)

(assert (=> b!3476217 m!3890929))

(assert (=> b!3476217 m!3890549))

(declare-fun m!3890933 () Bool)

(assert (=> b!3476217 m!3890933))

(assert (=> b!3476217 m!3890909))

(declare-fun m!3890935 () Bool)

(assert (=> d!1003894 m!3890935))

(assert (=> d!1003894 m!3890549))

(declare-fun m!3890937 () Bool)

(assert (=> d!1003894 m!3890937))

(assert (=> d!1003894 m!3890915))

(assert (=> b!3475969 d!1003894))

(declare-fun d!1003898 () Bool)

(declare-fun c!596172 () Bool)

(assert (=> d!1003898 (= c!596172 (is-Cons!37215 tokens!494))))

(declare-fun e!2153176 () List!37337)

(assert (=> d!1003898 (= (printWithSeparatorTokenList!325 thiss!18206 tokens!494 separatorToken!241) e!2153176)))

(declare-fun b!3476223 () Bool)

(assert (=> b!3476223 (= e!2153176 (++!9188 (++!9188 (list!13566 (charsOf!3463 (h!42635 tokens!494))) (list!13566 (charsOf!3463 separatorToken!241))) (printWithSeparatorTokenList!325 thiss!18206 (t!275060 tokens!494) separatorToken!241)))))

(declare-fun b!3476224 () Bool)

(assert (=> b!3476224 (= e!2153176 Nil!37213)))

(assert (= (and d!1003898 c!596172) b!3476223))

(assert (= (and d!1003898 (not c!596172)) b!3476224))

(assert (=> b!3476223 m!3890547))

(assert (=> b!3476223 m!3890543))

(assert (=> b!3476223 m!3890559))

(declare-fun m!3890939 () Bool)

(assert (=> b!3476223 m!3890939))

(assert (=> b!3476223 m!3890547))

(declare-fun m!3890941 () Bool)

(assert (=> b!3476223 m!3890941))

(assert (=> b!3476223 m!3890487))

(assert (=> b!3476223 m!3890559))

(assert (=> b!3476223 m!3890939))

(assert (=> b!3476223 m!3890543))

(assert (=> b!3476223 m!3890485))

(assert (=> b!3476223 m!3890487))

(assert (=> b!3476223 m!3890485))

(assert (=> b!3475969 d!1003898))

(declare-fun d!1003900 () Bool)

(declare-fun c!596173 () Bool)

(assert (=> d!1003900 (= c!596173 (is-Cons!37215 (t!275060 (t!275060 tokens!494))))))

(declare-fun e!2153177 () List!37337)

(assert (=> d!1003900 (= (printWithSeparatorTokenList!325 thiss!18206 (t!275060 (t!275060 tokens!494)) separatorToken!241) e!2153177)))

(declare-fun b!3476225 () Bool)

(assert (=> b!3476225 (= e!2153177 (++!9188 (++!9188 (list!13566 (charsOf!3463 (h!42635 (t!275060 (t!275060 tokens!494))))) (list!13566 (charsOf!3463 separatorToken!241))) (printWithSeparatorTokenList!325 thiss!18206 (t!275060 (t!275060 (t!275060 tokens!494))) separatorToken!241)))))

(declare-fun b!3476226 () Bool)

(assert (=> b!3476226 (= e!2153177 Nil!37213)))

(assert (= (and d!1003900 c!596173) b!3476225))

(assert (= (and d!1003900 (not c!596173)) b!3476226))

(declare-fun m!3890943 () Bool)

(assert (=> b!3476225 m!3890943))

(assert (=> b!3476225 m!3890543))

(assert (=> b!3476225 m!3890559))

(declare-fun m!3890945 () Bool)

(assert (=> b!3476225 m!3890945))

(assert (=> b!3476225 m!3890943))

(declare-fun m!3890947 () Bool)

(assert (=> b!3476225 m!3890947))

(declare-fun m!3890949 () Bool)

(assert (=> b!3476225 m!3890949))

(assert (=> b!3476225 m!3890559))

(assert (=> b!3476225 m!3890945))

(assert (=> b!3476225 m!3890543))

(declare-fun m!3890951 () Bool)

(assert (=> b!3476225 m!3890951))

(assert (=> b!3476225 m!3890949))

(assert (=> b!3476225 m!3890951))

(assert (=> b!3475969 d!1003900))

(declare-fun d!1003902 () Bool)

(declare-fun c!596174 () Bool)

(assert (=> d!1003902 (= c!596174 (is-Cons!37215 (t!275060 tokens!494)))))

(declare-fun e!2153178 () List!37337)

(assert (=> d!1003902 (= (printWithSeparatorTokenList!325 thiss!18206 (t!275060 tokens!494) separatorToken!241) e!2153178)))

(declare-fun b!3476227 () Bool)

(assert (=> b!3476227 (= e!2153178 (++!9188 (++!9188 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))) (list!13566 (charsOf!3463 separatorToken!241))) (printWithSeparatorTokenList!325 thiss!18206 (t!275060 (t!275060 tokens!494)) separatorToken!241)))))

(declare-fun b!3476228 () Bool)

(assert (=> b!3476228 (= e!2153178 Nil!37213)))

(assert (= (and d!1003902 c!596174) b!3476227))

(assert (= (and d!1003902 (not c!596174)) b!3476228))

(assert (=> b!3476227 m!3890551))

(assert (=> b!3476227 m!3890543))

(assert (=> b!3476227 m!3890559))

(declare-fun m!3890953 () Bool)

(assert (=> b!3476227 m!3890953))

(assert (=> b!3476227 m!3890551))

(declare-fun m!3890955 () Bool)

(assert (=> b!3476227 m!3890955))

(assert (=> b!3476227 m!3890549))

(assert (=> b!3476227 m!3890559))

(assert (=> b!3476227 m!3890953))

(assert (=> b!3476227 m!3890543))

(assert (=> b!3476227 m!3890541))

(assert (=> b!3476227 m!3890549))

(assert (=> b!3476227 m!3890541))

(assert (=> b!3475969 d!1003902))

(declare-fun b!3476230 () Bool)

(declare-fun e!2153180 () List!37337)

(assert (=> b!3476230 (= e!2153180 (Cons!37213 (h!42633 (++!9188 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))) lt!1183007)) (++!9188 (t!275058 (++!9188 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))) lt!1183007)) (printWithSeparatorTokenList!325 thiss!18206 (t!275060 (t!275060 tokens!494)) separatorToken!241))))))

(declare-fun b!3476231 () Bool)

(declare-fun res!1402299 () Bool)

(declare-fun e!2153179 () Bool)

(assert (=> b!3476231 (=> (not res!1402299) (not e!2153179))))

(declare-fun lt!1183165 () List!37337)

(assert (=> b!3476231 (= res!1402299 (= (size!28252 lt!1183165) (+ (size!28252 (++!9188 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))) lt!1183007)) (size!28252 (printWithSeparatorTokenList!325 thiss!18206 (t!275060 (t!275060 tokens!494)) separatorToken!241)))))))

(declare-fun b!3476232 () Bool)

(assert (=> b!3476232 (= e!2153179 (or (not (= (printWithSeparatorTokenList!325 thiss!18206 (t!275060 (t!275060 tokens!494)) separatorToken!241) Nil!37213)) (= lt!1183165 (++!9188 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))) lt!1183007))))))

(declare-fun d!1003904 () Bool)

(assert (=> d!1003904 e!2153179))

(declare-fun res!1402298 () Bool)

(assert (=> d!1003904 (=> (not res!1402298) (not e!2153179))))

(assert (=> d!1003904 (= res!1402298 (= (content!5206 lt!1183165) (set.union (content!5206 (++!9188 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))) lt!1183007)) (content!5206 (printWithSeparatorTokenList!325 thiss!18206 (t!275060 (t!275060 tokens!494)) separatorToken!241)))))))

(assert (=> d!1003904 (= lt!1183165 e!2153180)))

(declare-fun c!596175 () Bool)

(assert (=> d!1003904 (= c!596175 (is-Nil!37213 (++!9188 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))) lt!1183007)))))

(assert (=> d!1003904 (= (++!9188 (++!9188 (list!13566 (charsOf!3463 (h!42635 (t!275060 tokens!494)))) lt!1183007) (printWithSeparatorTokenList!325 thiss!18206 (t!275060 (t!275060 tokens!494)) separatorToken!241)) lt!1183165)))

(declare-fun b!3476229 () Bool)

(assert (=> b!3476229 (= e!2153180 (printWithSeparatorTokenList!325 thiss!18206 (t!275060 (t!275060 tokens!494)) separatorToken!241))))

(assert (= (and d!1003904 c!596175) b!3476229))

(assert (= (and d!1003904 (not c!596175)) b!3476230))

(assert (= (and d!1003904 res!1402298) b!3476231))

(assert (= (and b!3476231 res!1402299) b!3476232))

(assert (=> b!3476230 m!3890551))

(declare-fun m!3890957 () Bool)

(assert (=> b!3476230 m!3890957))

(declare-fun m!3890959 () Bool)

(assert (=> b!3476231 m!3890959))

(assert (=> b!3476231 m!3890555))

(declare-fun m!3890961 () Bool)

(assert (=> b!3476231 m!3890961))

(assert (=> b!3476231 m!3890551))

(declare-fun m!3890963 () Bool)

(assert (=> b!3476231 m!3890963))

(declare-fun m!3890965 () Bool)

(assert (=> d!1003904 m!3890965))

(assert (=> d!1003904 m!3890555))

(declare-fun m!3890967 () Bool)

(assert (=> d!1003904 m!3890967))

(assert (=> d!1003904 m!3890551))

(declare-fun m!3890969 () Bool)

(assert (=> d!1003904 m!3890969))

(assert (=> b!3475969 d!1003904))

(declare-fun d!1003906 () Bool)

(declare-fun lt!1183168 () BalanceConc!22160)

(assert (=> d!1003906 (= (list!13566 lt!1183168) (originalCharacters!6163 separatorToken!241))))

(declare-fun dynLambda!15729 (Int TokenValue!5679) BalanceConc!22160)

(assert (=> d!1003906 (= lt!1183168 (dynLambda!15729 (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (value!175758 separatorToken!241)))))

(assert (=> d!1003906 (= (charsOf!3463 separatorToken!241) lt!1183168)))

(declare-fun b_lambda!100405 () Bool)

(assert (=> (not b_lambda!100405) (not d!1003906)))

(declare-fun tb!190557 () Bool)

(declare-fun t!275080 () Bool)

(assert (=> (and b!3475961 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241)))) t!275080) tb!190557))

(declare-fun b!3476237 () Bool)

(declare-fun e!2153183 () Bool)

(declare-fun tp!1080488 () Bool)

(declare-fun inv!50409 (Conc!11273) Bool)

(assert (=> b!3476237 (= e!2153183 (and (inv!50409 (c!596148 (dynLambda!15729 (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (value!175758 separatorToken!241)))) tp!1080488))))

(declare-fun result!234628 () Bool)

(declare-fun inv!50410 (BalanceConc!22160) Bool)

(assert (=> tb!190557 (= result!234628 (and (inv!50410 (dynLambda!15729 (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (value!175758 separatorToken!241))) e!2153183))))

(assert (= tb!190557 b!3476237))

(declare-fun m!3890971 () Bool)

(assert (=> b!3476237 m!3890971))

(declare-fun m!3890973 () Bool)

(assert (=> tb!190557 m!3890973))

(assert (=> d!1003906 t!275080))

(declare-fun b_and!245189 () Bool)

(assert (= b_and!245161 (and (=> t!275080 result!234628) b_and!245189)))

(declare-fun t!275082 () Bool)

(declare-fun tb!190559 () Bool)

(assert (=> (and b!3475953 (= (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241)))) t!275082) tb!190559))

(declare-fun result!234632 () Bool)

(assert (= result!234632 result!234628))

(assert (=> d!1003906 t!275082))

(declare-fun b_and!245191 () Bool)

(assert (= b_and!245165 (and (=> t!275082 result!234632) b_and!245191)))

(declare-fun tb!190561 () Bool)

(declare-fun t!275084 () Bool)

(assert (=> (and b!3475991 (= (toChars!7544 (transformation!5449 (h!42634 rules!2135))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241)))) t!275084) tb!190561))

(declare-fun result!234634 () Bool)

(assert (= result!234634 result!234628))

(assert (=> d!1003906 t!275084))

(declare-fun b_and!245193 () Bool)

(assert (= b_and!245169 (and (=> t!275084 result!234634) b_and!245193)))

(declare-fun m!3890975 () Bool)

(assert (=> d!1003906 m!3890975))

(declare-fun m!3890977 () Bool)

(assert (=> d!1003906 m!3890977))

(assert (=> b!3475969 d!1003906))

(declare-fun d!1003908 () Bool)

(assert (=> d!1003908 (= (list!13566 (charsOf!3463 separatorToken!241)) (list!13569 (c!596148 (charsOf!3463 separatorToken!241))))))

(declare-fun bs!561707 () Bool)

(assert (= bs!561707 d!1003908))

(declare-fun m!3890979 () Bool)

(assert (=> bs!561707 m!3890979))

(assert (=> b!3475969 d!1003908))

(declare-fun d!1003910 () Bool)

(declare-fun lt!1183169 () BalanceConc!22160)

(assert (=> d!1003910 (= (list!13566 lt!1183169) (originalCharacters!6163 (h!42635 (t!275060 tokens!494))))))

(assert (=> d!1003910 (= lt!1183169 (dynLambda!15729 (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (value!175758 (h!42635 (t!275060 tokens!494)))))))

(assert (=> d!1003910 (= (charsOf!3463 (h!42635 (t!275060 tokens!494))) lt!1183169)))

(declare-fun b_lambda!100407 () Bool)

(assert (=> (not b_lambda!100407) (not d!1003910)))

(declare-fun t!275086 () Bool)

(declare-fun tb!190563 () Bool)

(assert (=> (and b!3475961 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494)))))) t!275086) tb!190563))

(declare-fun b!3476238 () Bool)

(declare-fun e!2153184 () Bool)

(declare-fun tp!1080489 () Bool)

(assert (=> b!3476238 (= e!2153184 (and (inv!50409 (c!596148 (dynLambda!15729 (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (value!175758 (h!42635 (t!275060 tokens!494)))))) tp!1080489))))

(declare-fun result!234636 () Bool)

(assert (=> tb!190563 (= result!234636 (and (inv!50410 (dynLambda!15729 (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (value!175758 (h!42635 (t!275060 tokens!494))))) e!2153184))))

(assert (= tb!190563 b!3476238))

(declare-fun m!3890981 () Bool)

(assert (=> b!3476238 m!3890981))

(declare-fun m!3890983 () Bool)

(assert (=> tb!190563 m!3890983))

(assert (=> d!1003910 t!275086))

(declare-fun b_and!245195 () Bool)

(assert (= b_and!245189 (and (=> t!275086 result!234636) b_and!245195)))

(declare-fun tb!190565 () Bool)

(declare-fun t!275088 () Bool)

(assert (=> (and b!3475953 (= (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494)))))) t!275088) tb!190565))

(declare-fun result!234638 () Bool)

(assert (= result!234638 result!234636))

(assert (=> d!1003910 t!275088))

(declare-fun b_and!245197 () Bool)

(assert (= b_and!245191 (and (=> t!275088 result!234638) b_and!245197)))

(declare-fun t!275090 () Bool)

(declare-fun tb!190567 () Bool)

(assert (=> (and b!3475991 (= (toChars!7544 (transformation!5449 (h!42634 rules!2135))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494)))))) t!275090) tb!190567))

(declare-fun result!234640 () Bool)

(assert (= result!234640 result!234636))

(assert (=> d!1003910 t!275090))

(declare-fun b_and!245199 () Bool)

(assert (= b_and!245193 (and (=> t!275090 result!234640) b_and!245199)))

(declare-fun m!3890985 () Bool)

(assert (=> d!1003910 m!3890985))

(declare-fun m!3890987 () Bool)

(assert (=> d!1003910 m!3890987))

(assert (=> b!3475969 d!1003910))

(declare-fun d!1003912 () Bool)

(declare-fun res!1402302 () Bool)

(declare-fun e!2153187 () Bool)

(assert (=> d!1003912 (=> (not res!1402302) (not e!2153187))))

(declare-fun rulesValid!2050 (LexerInterface!5038 List!37338) Bool)

(assert (=> d!1003912 (= res!1402302 (rulesValid!2050 thiss!18206 rules!2135))))

(assert (=> d!1003912 (= (rulesInvariant!4435 thiss!18206 rules!2135) e!2153187)))

(declare-fun b!3476241 () Bool)

(declare-datatypes ((List!37344 0))(
  ( (Nil!37220) (Cons!37220 (h!42640 String!41731) (t!275143 List!37344)) )
))
(declare-fun noDuplicateTag!2046 (LexerInterface!5038 List!37338 List!37344) Bool)

(assert (=> b!3476241 (= e!2153187 (noDuplicateTag!2046 thiss!18206 rules!2135 Nil!37220))))

(assert (= (and d!1003912 res!1402302) b!3476241))

(declare-fun m!3890989 () Bool)

(assert (=> d!1003912 m!3890989))

(declare-fun m!3890991 () Bool)

(assert (=> b!3476241 m!3890991))

(assert (=> b!3475990 d!1003912))

(declare-fun d!1003914 () Bool)

(declare-fun e!2153190 () Bool)

(assert (=> d!1003914 e!2153190))

(declare-fun res!1402307 () Bool)

(assert (=> d!1003914 (=> (not res!1402307) (not e!2153190))))

(assert (=> d!1003914 (= res!1402307 (isDefined!5815 (getRuleFromTag!1092 thiss!18206 rules!2135 (tag!6065 (rule!8047 separatorToken!241)))))))

(declare-fun lt!1183172 () Unit!52643)

(declare-fun choose!20115 (LexerInterface!5038 List!37338 List!37337 Token!10264) Unit!52643)

(assert (=> d!1003914 (= lt!1183172 (choose!20115 thiss!18206 rules!2135 lt!1183007 separatorToken!241))))

(assert (=> d!1003914 (rulesInvariant!4435 thiss!18206 rules!2135)))

(assert (=> d!1003914 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1092 thiss!18206 rules!2135 lt!1183007 separatorToken!241) lt!1183172)))

(declare-fun b!3476246 () Bool)

(declare-fun res!1402308 () Bool)

(assert (=> b!3476246 (=> (not res!1402308) (not e!2153190))))

(assert (=> b!3476246 (= res!1402308 (matchR!4792 (regex!5449 (get!11922 (getRuleFromTag!1092 thiss!18206 rules!2135 (tag!6065 (rule!8047 separatorToken!241))))) (list!13566 (charsOf!3463 separatorToken!241))))))

(declare-fun b!3476247 () Bool)

(assert (=> b!3476247 (= e!2153190 (= (rule!8047 separatorToken!241) (get!11922 (getRuleFromTag!1092 thiss!18206 rules!2135 (tag!6065 (rule!8047 separatorToken!241))))))))

(assert (= (and d!1003914 res!1402307) b!3476246))

(assert (= (and b!3476246 res!1402308) b!3476247))

(assert (=> d!1003914 m!3890653))

(assert (=> d!1003914 m!3890653))

(declare-fun m!3890993 () Bool)

(assert (=> d!1003914 m!3890993))

(declare-fun m!3890995 () Bool)

(assert (=> d!1003914 m!3890995))

(assert (=> d!1003914 m!3890493))

(assert (=> b!3476246 m!3890543))

(assert (=> b!3476246 m!3890653))

(assert (=> b!3476246 m!3890543))

(assert (=> b!3476246 m!3890559))

(assert (=> b!3476246 m!3890559))

(declare-fun m!3890997 () Bool)

(assert (=> b!3476246 m!3890997))

(assert (=> b!3476246 m!3890653))

(declare-fun m!3890999 () Bool)

(assert (=> b!3476246 m!3890999))

(assert (=> b!3476247 m!3890653))

(assert (=> b!3476247 m!3890653))

(assert (=> b!3476247 m!3890999))

(assert (=> b!3475968 d!1003914))

(declare-fun b!3476260 () Bool)

(declare-fun e!2153199 () Bool)

(declare-fun lt!1183179 () Option!7551)

(assert (=> b!3476260 (= e!2153199 (= (tag!6065 (get!11922 lt!1183179)) (tag!6065 (rule!8047 (h!42635 tokens!494)))))))

(declare-fun d!1003916 () Bool)

(declare-fun e!2153201 () Bool)

(assert (=> d!1003916 e!2153201))

(declare-fun res!1402313 () Bool)

(assert (=> d!1003916 (=> res!1402313 e!2153201)))

(declare-fun isEmpty!21598 (Option!7551) Bool)

(assert (=> d!1003916 (= res!1402313 (isEmpty!21598 lt!1183179))))

(declare-fun e!2153202 () Option!7551)

(assert (=> d!1003916 (= lt!1183179 e!2153202)))

(declare-fun c!596180 () Bool)

(assert (=> d!1003916 (= c!596180 (and (is-Cons!37214 rules!2135) (= (tag!6065 (h!42634 rules!2135)) (tag!6065 (rule!8047 (h!42635 tokens!494))))))))

(assert (=> d!1003916 (rulesInvariant!4435 thiss!18206 rules!2135)))

(assert (=> d!1003916 (= (getRuleFromTag!1092 thiss!18206 rules!2135 (tag!6065 (rule!8047 (h!42635 tokens!494)))) lt!1183179)))

(declare-fun b!3476261 () Bool)

(declare-fun lt!1183180 () Unit!52643)

(declare-fun lt!1183181 () Unit!52643)

(assert (=> b!3476261 (= lt!1183180 lt!1183181)))

(assert (=> b!3476261 (rulesInvariant!4435 thiss!18206 (t!275059 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!439 (LexerInterface!5038 Rule!10698 List!37338) Unit!52643)

(assert (=> b!3476261 (= lt!1183181 (lemmaInvariantOnRulesThenOnTail!439 thiss!18206 (h!42634 rules!2135) (t!275059 rules!2135)))))

(declare-fun e!2153200 () Option!7551)

(assert (=> b!3476261 (= e!2153200 (getRuleFromTag!1092 thiss!18206 (t!275059 rules!2135) (tag!6065 (rule!8047 (h!42635 tokens!494)))))))

(declare-fun b!3476262 () Bool)

(assert (=> b!3476262 (= e!2153202 e!2153200)))

(declare-fun c!596181 () Bool)

(assert (=> b!3476262 (= c!596181 (and (is-Cons!37214 rules!2135) (not (= (tag!6065 (h!42634 rules!2135)) (tag!6065 (rule!8047 (h!42635 tokens!494)))))))))

(declare-fun b!3476263 () Bool)

(assert (=> b!3476263 (= e!2153200 None!7550)))

(declare-fun b!3476264 () Bool)

(assert (=> b!3476264 (= e!2153201 e!2153199)))

(declare-fun res!1402314 () Bool)

(assert (=> b!3476264 (=> (not res!1402314) (not e!2153199))))

(assert (=> b!3476264 (= res!1402314 (contains!6923 rules!2135 (get!11922 lt!1183179)))))

(declare-fun b!3476265 () Bool)

(assert (=> b!3476265 (= e!2153202 (Some!7550 (h!42634 rules!2135)))))

(assert (= (and d!1003916 c!596180) b!3476265))

(assert (= (and d!1003916 (not c!596180)) b!3476262))

(assert (= (and b!3476262 c!596181) b!3476261))

(assert (= (and b!3476262 (not c!596181)) b!3476263))

(assert (= (and d!1003916 (not res!1402313)) b!3476264))

(assert (= (and b!3476264 res!1402314) b!3476260))

(declare-fun m!3891001 () Bool)

(assert (=> b!3476260 m!3891001))

(declare-fun m!3891003 () Bool)

(assert (=> d!1003916 m!3891003))

(assert (=> d!1003916 m!3890493))

(declare-fun m!3891005 () Bool)

(assert (=> b!3476261 m!3891005))

(declare-fun m!3891007 () Bool)

(assert (=> b!3476261 m!3891007))

(declare-fun m!3891009 () Bool)

(assert (=> b!3476261 m!3891009))

(assert (=> b!3476264 m!3891001))

(assert (=> b!3476264 m!3891001))

(declare-fun m!3891011 () Bool)

(assert (=> b!3476264 m!3891011))

(assert (=> b!3475968 d!1003916))

(declare-fun d!1003918 () Bool)

(declare-fun e!2153209 () Bool)

(assert (=> d!1003918 e!2153209))

(declare-fun res!1402319 () Bool)

(assert (=> d!1003918 (=> (not res!1402319) (not e!2153209))))

(declare-fun lt!1183198 () BalanceConc!22162)

(assert (=> d!1003918 (= res!1402319 (= (list!13568 lt!1183198) (Cons!37215 separatorToken!241 Nil!37215)))))

(declare-fun singleton!1127 (Token!10264) BalanceConc!22162)

(assert (=> d!1003918 (= lt!1183198 (singleton!1127 separatorToken!241))))

(assert (=> d!1003918 (= (singletonSeq!2545 separatorToken!241) lt!1183198)))

(declare-fun b!3476274 () Bool)

(declare-fun isBalanced!3426 (Conc!11274) Bool)

(assert (=> b!3476274 (= e!2153209 (isBalanced!3426 (c!596149 lt!1183198)))))

(assert (= (and d!1003918 res!1402319) b!3476274))

(declare-fun m!3891013 () Bool)

(assert (=> d!1003918 m!3891013))

(declare-fun m!3891015 () Bool)

(assert (=> d!1003918 m!3891015))

(declare-fun m!3891017 () Bool)

(assert (=> b!3476274 m!3891017))

(assert (=> b!3475968 d!1003918))

(declare-fun b!3476275 () Bool)

(declare-fun e!2153210 () Bool)

(declare-fun lt!1183199 () Option!7551)

(assert (=> b!3476275 (= e!2153210 (= (tag!6065 (get!11922 lt!1183199)) (tag!6065 (rule!8047 separatorToken!241))))))

(declare-fun d!1003920 () Bool)

(declare-fun e!2153212 () Bool)

(assert (=> d!1003920 e!2153212))

(declare-fun res!1402320 () Bool)

(assert (=> d!1003920 (=> res!1402320 e!2153212)))

(assert (=> d!1003920 (= res!1402320 (isEmpty!21598 lt!1183199))))

(declare-fun e!2153213 () Option!7551)

(assert (=> d!1003920 (= lt!1183199 e!2153213)))

(declare-fun c!596184 () Bool)

(assert (=> d!1003920 (= c!596184 (and (is-Cons!37214 rules!2135) (= (tag!6065 (h!42634 rules!2135)) (tag!6065 (rule!8047 separatorToken!241)))))))

(assert (=> d!1003920 (rulesInvariant!4435 thiss!18206 rules!2135)))

(assert (=> d!1003920 (= (getRuleFromTag!1092 thiss!18206 rules!2135 (tag!6065 (rule!8047 separatorToken!241))) lt!1183199)))

(declare-fun b!3476276 () Bool)

(declare-fun lt!1183200 () Unit!52643)

(declare-fun lt!1183201 () Unit!52643)

(assert (=> b!3476276 (= lt!1183200 lt!1183201)))

(assert (=> b!3476276 (rulesInvariant!4435 thiss!18206 (t!275059 rules!2135))))

(assert (=> b!3476276 (= lt!1183201 (lemmaInvariantOnRulesThenOnTail!439 thiss!18206 (h!42634 rules!2135) (t!275059 rules!2135)))))

(declare-fun e!2153211 () Option!7551)

(assert (=> b!3476276 (= e!2153211 (getRuleFromTag!1092 thiss!18206 (t!275059 rules!2135) (tag!6065 (rule!8047 separatorToken!241))))))

(declare-fun b!3476277 () Bool)

(assert (=> b!3476277 (= e!2153213 e!2153211)))

(declare-fun c!596185 () Bool)

(assert (=> b!3476277 (= c!596185 (and (is-Cons!37214 rules!2135) (not (= (tag!6065 (h!42634 rules!2135)) (tag!6065 (rule!8047 separatorToken!241))))))))

(declare-fun b!3476278 () Bool)

(assert (=> b!3476278 (= e!2153211 None!7550)))

(declare-fun b!3476279 () Bool)

(assert (=> b!3476279 (= e!2153212 e!2153210)))

(declare-fun res!1402321 () Bool)

(assert (=> b!3476279 (=> (not res!1402321) (not e!2153210))))

(assert (=> b!3476279 (= res!1402321 (contains!6923 rules!2135 (get!11922 lt!1183199)))))

(declare-fun b!3476280 () Bool)

(assert (=> b!3476280 (= e!2153213 (Some!7550 (h!42634 rules!2135)))))

(assert (= (and d!1003920 c!596184) b!3476280))

(assert (= (and d!1003920 (not c!596184)) b!3476277))

(assert (= (and b!3476277 c!596185) b!3476276))

(assert (= (and b!3476277 (not c!596185)) b!3476278))

(assert (= (and d!1003920 (not res!1402320)) b!3476279))

(assert (= (and b!3476279 res!1402321) b!3476275))

(declare-fun m!3891019 () Bool)

(assert (=> b!3476275 m!3891019))

(declare-fun m!3891021 () Bool)

(assert (=> d!1003920 m!3891021))

(assert (=> d!1003920 m!3890493))

(assert (=> b!3476276 m!3891005))

(assert (=> b!3476276 m!3891007))

(declare-fun m!3891023 () Bool)

(assert (=> b!3476276 m!3891023))

(assert (=> b!3476279 m!3891019))

(assert (=> b!3476279 m!3891019))

(declare-fun m!3891025 () Bool)

(assert (=> b!3476279 m!3891025))

(assert (=> b!3475968 d!1003920))

(declare-fun d!1003922 () Bool)

(declare-fun e!2153214 () Bool)

(assert (=> d!1003922 e!2153214))

(declare-fun res!1402322 () Bool)

(assert (=> d!1003922 (=> (not res!1402322) (not e!2153214))))

(assert (=> d!1003922 (= res!1402322 (isDefined!5815 (getRuleFromTag!1092 thiss!18206 rules!2135 (tag!6065 (rule!8047 (h!42635 tokens!494))))))))

(declare-fun lt!1183202 () Unit!52643)

(assert (=> d!1003922 (= lt!1183202 (choose!20115 thiss!18206 rules!2135 lt!1183017 (h!42635 tokens!494)))))

(assert (=> d!1003922 (rulesInvariant!4435 thiss!18206 rules!2135)))

(assert (=> d!1003922 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1092 thiss!18206 rules!2135 lt!1183017 (h!42635 tokens!494)) lt!1183202)))

(declare-fun b!3476281 () Bool)

(declare-fun res!1402323 () Bool)

(assert (=> b!3476281 (=> (not res!1402323) (not e!2153214))))

(assert (=> b!3476281 (= res!1402323 (matchR!4792 (regex!5449 (get!11922 (getRuleFromTag!1092 thiss!18206 rules!2135 (tag!6065 (rule!8047 (h!42635 tokens!494)))))) (list!13566 (charsOf!3463 (h!42635 tokens!494)))))))

(declare-fun b!3476282 () Bool)

(assert (=> b!3476282 (= e!2153214 (= (rule!8047 (h!42635 tokens!494)) (get!11922 (getRuleFromTag!1092 thiss!18206 rules!2135 (tag!6065 (rule!8047 (h!42635 tokens!494)))))))))

(assert (= (and d!1003922 res!1402322) b!3476281))

(assert (= (and b!3476281 res!1402323) b!3476282))

(assert (=> d!1003922 m!3890641))

(assert (=> d!1003922 m!3890641))

(declare-fun m!3891027 () Bool)

(assert (=> d!1003922 m!3891027))

(declare-fun m!3891029 () Bool)

(assert (=> d!1003922 m!3891029))

(assert (=> d!1003922 m!3890493))

(assert (=> b!3476281 m!3890485))

(assert (=> b!3476281 m!3890641))

(assert (=> b!3476281 m!3890485))

(assert (=> b!3476281 m!3890487))

(assert (=> b!3476281 m!3890487))

(declare-fun m!3891031 () Bool)

(assert (=> b!3476281 m!3891031))

(assert (=> b!3476281 m!3890641))

(declare-fun m!3891033 () Bool)

(assert (=> b!3476281 m!3891033))

(assert (=> b!3476282 m!3890641))

(assert (=> b!3476282 m!3890641))

(assert (=> b!3476282 m!3891033))

(assert (=> b!3475968 d!1003922))

(declare-fun d!1003924 () Bool)

(declare-fun lt!1183205 () Bool)

(declare-fun content!5207 (List!37338) (Set Rule!10698))

(assert (=> d!1003924 (= lt!1183205 (set.member (rule!8047 (h!42635 tokens!494)) (content!5207 rules!2135)))))

(declare-fun e!2153220 () Bool)

(assert (=> d!1003924 (= lt!1183205 e!2153220)))

(declare-fun res!1402329 () Bool)

(assert (=> d!1003924 (=> (not res!1402329) (not e!2153220))))

(assert (=> d!1003924 (= res!1402329 (is-Cons!37214 rules!2135))))

(assert (=> d!1003924 (= (contains!6923 rules!2135 (rule!8047 (h!42635 tokens!494))) lt!1183205)))

(declare-fun b!3476287 () Bool)

(declare-fun e!2153219 () Bool)

(assert (=> b!3476287 (= e!2153220 e!2153219)))

(declare-fun res!1402328 () Bool)

(assert (=> b!3476287 (=> res!1402328 e!2153219)))

(assert (=> b!3476287 (= res!1402328 (= (h!42634 rules!2135) (rule!8047 (h!42635 tokens!494))))))

(declare-fun b!3476288 () Bool)

(assert (=> b!3476288 (= e!2153219 (contains!6923 (t!275059 rules!2135) (rule!8047 (h!42635 tokens!494))))))

(assert (= (and d!1003924 res!1402329) b!3476287))

(assert (= (and b!3476287 (not res!1402328)) b!3476288))

(declare-fun m!3891035 () Bool)

(assert (=> d!1003924 m!3891035))

(declare-fun m!3891037 () Bool)

(assert (=> d!1003924 m!3891037))

(declare-fun m!3891039 () Bool)

(assert (=> b!3476288 m!3891039))

(assert (=> b!3475968 d!1003924))

(declare-fun d!1003926 () Bool)

(declare-fun lt!1183215 () Int)

(declare-fun size!28256 (List!37339) Int)

(assert (=> d!1003926 (= lt!1183215 (size!28256 (list!13568 (_1!21616 lt!1183004))))))

(declare-fun size!28257 (Conc!11274) Int)

(assert (=> d!1003926 (= lt!1183215 (size!28257 (c!596149 (_1!21616 lt!1183004))))))

(assert (=> d!1003926 (= (size!28251 (_1!21616 lt!1183004)) lt!1183215)))

(declare-fun bs!561708 () Bool)

(assert (= bs!561708 d!1003926))

(declare-fun m!3891067 () Bool)

(assert (=> bs!561708 m!3891067))

(assert (=> bs!561708 m!3891067))

(declare-fun m!3891073 () Bool)

(assert (=> bs!561708 m!3891073))

(declare-fun m!3891075 () Bool)

(assert (=> bs!561708 m!3891075))

(assert (=> b!3475968 d!1003926))

(declare-fun d!1003928 () Bool)

(declare-fun lt!1183218 () Bool)

(assert (=> d!1003928 (= lt!1183218 (set.member lt!1183020 (content!5206 (usedCharacters!683 (regex!5449 (rule!8047 separatorToken!241))))))))

(declare-fun e!2153227 () Bool)

(assert (=> d!1003928 (= lt!1183218 e!2153227)))

(declare-fun res!1402336 () Bool)

(assert (=> d!1003928 (=> (not res!1402336) (not e!2153227))))

(assert (=> d!1003928 (= res!1402336 (is-Cons!37213 (usedCharacters!683 (regex!5449 (rule!8047 separatorToken!241)))))))

(assert (=> d!1003928 (= (contains!6924 (usedCharacters!683 (regex!5449 (rule!8047 separatorToken!241))) lt!1183020) lt!1183218)))

(declare-fun b!3476296 () Bool)

(declare-fun e!2153228 () Bool)

(assert (=> b!3476296 (= e!2153227 e!2153228)))

(declare-fun res!1402335 () Bool)

(assert (=> b!3476296 (=> res!1402335 e!2153228)))

(assert (=> b!3476296 (= res!1402335 (= (h!42633 (usedCharacters!683 (regex!5449 (rule!8047 separatorToken!241)))) lt!1183020))))

(declare-fun b!3476297 () Bool)

(assert (=> b!3476297 (= e!2153228 (contains!6924 (t!275058 (usedCharacters!683 (regex!5449 (rule!8047 separatorToken!241)))) lt!1183020))))

(assert (= (and d!1003928 res!1402336) b!3476296))

(assert (= (and b!3476296 (not res!1402335)) b!3476297))

(assert (=> d!1003928 m!3890607))

(declare-fun m!3891081 () Bool)

(assert (=> d!1003928 m!3891081))

(declare-fun m!3891083 () Bool)

(assert (=> d!1003928 m!3891083))

(declare-fun m!3891085 () Bool)

(assert (=> b!3476297 m!3891085))

(assert (=> b!3475968 d!1003928))

(declare-fun d!1003932 () Bool)

(declare-fun e!2153229 () Bool)

(assert (=> d!1003932 e!2153229))

(declare-fun res!1402337 () Bool)

(assert (=> d!1003932 (=> (not res!1402337) (not e!2153229))))

(declare-fun lt!1183219 () BalanceConc!22162)

(assert (=> d!1003932 (= res!1402337 (= (list!13568 lt!1183219) (Cons!37215 (h!42635 (t!275060 tokens!494)) Nil!37215)))))

(assert (=> d!1003932 (= lt!1183219 (singleton!1127 (h!42635 (t!275060 tokens!494))))))

(assert (=> d!1003932 (= (singletonSeq!2545 (h!42635 (t!275060 tokens!494))) lt!1183219)))

(declare-fun b!3476298 () Bool)

(assert (=> b!3476298 (= e!2153229 (isBalanced!3426 (c!596149 lt!1183219)))))

(assert (= (and d!1003932 res!1402337) b!3476298))

(declare-fun m!3891087 () Bool)

(assert (=> d!1003932 m!3891087))

(declare-fun m!3891089 () Bool)

(assert (=> d!1003932 m!3891089))

(declare-fun m!3891091 () Bool)

(assert (=> b!3476298 m!3891091))

(assert (=> b!3475968 d!1003932))

(declare-fun d!1003934 () Bool)

(declare-fun lt!1183242 () BalanceConc!22160)

(declare-fun printListTailRec!695 (LexerInterface!5038 List!37339 List!37337) List!37337)

(declare-fun dropList!1212 (BalanceConc!22162 Int) List!37339)

(assert (=> d!1003934 (= (list!13566 lt!1183242) (printListTailRec!695 thiss!18206 (dropList!1212 lt!1183030 0) (list!13566 (BalanceConc!22161 Empty!11273))))))

(declare-fun e!2153243 () BalanceConc!22160)

(assert (=> d!1003934 (= lt!1183242 e!2153243)))

(declare-fun c!596194 () Bool)

(assert (=> d!1003934 (= c!596194 (>= 0 (size!28251 lt!1183030)))))

(declare-fun e!2153242 () Bool)

(assert (=> d!1003934 e!2153242))

(declare-fun res!1402348 () Bool)

(assert (=> d!1003934 (=> (not res!1402348) (not e!2153242))))

(assert (=> d!1003934 (= res!1402348 (>= 0 0))))

(assert (=> d!1003934 (= (printTailRec!1533 thiss!18206 lt!1183030 0 (BalanceConc!22161 Empty!11273)) lt!1183242)))

(declare-fun b!3476321 () Bool)

(assert (=> b!3476321 (= e!2153242 (<= 0 (size!28251 lt!1183030)))))

(declare-fun b!3476322 () Bool)

(assert (=> b!3476322 (= e!2153243 (BalanceConc!22161 Empty!11273))))

(declare-fun b!3476323 () Bool)

(declare-fun ++!9190 (BalanceConc!22160 BalanceConc!22160) BalanceConc!22160)

(assert (=> b!3476323 (= e!2153243 (printTailRec!1533 thiss!18206 lt!1183030 (+ 0 1) (++!9190 (BalanceConc!22161 Empty!11273) (charsOf!3463 (apply!8790 lt!1183030 0)))))))

(declare-fun lt!1183247 () List!37339)

(assert (=> b!3476323 (= lt!1183247 (list!13568 lt!1183030))))

(declare-fun lt!1183246 () Unit!52643)

(declare-fun lemmaDropApply!1170 (List!37339 Int) Unit!52643)

(assert (=> b!3476323 (= lt!1183246 (lemmaDropApply!1170 lt!1183247 0))))

(declare-fun head!7338 (List!37339) Token!10264)

(declare-fun drop!2020 (List!37339 Int) List!37339)

(declare-fun apply!8794 (List!37339 Int) Token!10264)

(assert (=> b!3476323 (= (head!7338 (drop!2020 lt!1183247 0)) (apply!8794 lt!1183247 0))))

(declare-fun lt!1183243 () Unit!52643)

(assert (=> b!3476323 (= lt!1183243 lt!1183246)))

(declare-fun lt!1183244 () List!37339)

(assert (=> b!3476323 (= lt!1183244 (list!13568 lt!1183030))))

(declare-fun lt!1183245 () Unit!52643)

(declare-fun lemmaDropTail!1054 (List!37339 Int) Unit!52643)

(assert (=> b!3476323 (= lt!1183245 (lemmaDropTail!1054 lt!1183244 0))))

(declare-fun tail!5446 (List!37339) List!37339)

(assert (=> b!3476323 (= (tail!5446 (drop!2020 lt!1183244 0)) (drop!2020 lt!1183244 (+ 0 1)))))

(declare-fun lt!1183241 () Unit!52643)

(assert (=> b!3476323 (= lt!1183241 lt!1183245)))

(assert (= (and d!1003934 res!1402348) b!3476321))

(assert (= (and d!1003934 c!596194) b!3476322))

(assert (= (and d!1003934 (not c!596194)) b!3476323))

(declare-fun m!3891123 () Bool)

(assert (=> d!1003934 m!3891123))

(declare-fun m!3891125 () Bool)

(assert (=> d!1003934 m!3891125))

(assert (=> d!1003934 m!3891123))

(declare-fun m!3891127 () Bool)

(assert (=> d!1003934 m!3891127))

(declare-fun m!3891129 () Bool)

(assert (=> d!1003934 m!3891129))

(declare-fun m!3891131 () Bool)

(assert (=> d!1003934 m!3891131))

(assert (=> d!1003934 m!3891125))

(assert (=> b!3476321 m!3891131))

(declare-fun m!3891133 () Bool)

(assert (=> b!3476323 m!3891133))

(declare-fun m!3891135 () Bool)

(assert (=> b!3476323 m!3891135))

(declare-fun m!3891137 () Bool)

(assert (=> b!3476323 m!3891137))

(assert (=> b!3476323 m!3891137))

(declare-fun m!3891139 () Bool)

(assert (=> b!3476323 m!3891139))

(declare-fun m!3891141 () Bool)

(assert (=> b!3476323 m!3891141))

(declare-fun m!3891143 () Bool)

(assert (=> b!3476323 m!3891143))

(assert (=> b!3476323 m!3891139))

(declare-fun m!3891145 () Bool)

(assert (=> b!3476323 m!3891145))

(declare-fun m!3891147 () Bool)

(assert (=> b!3476323 m!3891147))

(declare-fun m!3891149 () Bool)

(assert (=> b!3476323 m!3891149))

(declare-fun m!3891151 () Bool)

(assert (=> b!3476323 m!3891151))

(assert (=> b!3476323 m!3891149))

(assert (=> b!3476323 m!3891135))

(declare-fun m!3891153 () Bool)

(assert (=> b!3476323 m!3891153))

(declare-fun m!3891155 () Bool)

(assert (=> b!3476323 m!3891155))

(assert (=> b!3476323 m!3891133))

(declare-fun m!3891157 () Bool)

(assert (=> b!3476323 m!3891157))

(assert (=> b!3475968 d!1003934))

(declare-fun b!3476379 () Bool)

(declare-fun e!2153276 () List!37337)

(assert (=> b!3476379 (= e!2153276 (Cons!37213 (c!596147 (regex!5449 (rule!8047 separatorToken!241))) Nil!37213))))

(declare-fun b!3476380 () Bool)

(declare-fun c!596212 () Bool)

(assert (=> b!3476380 (= c!596212 (is-Star!10208 (regex!5449 (rule!8047 separatorToken!241))))))

(declare-fun e!2153275 () List!37337)

(assert (=> b!3476380 (= e!2153276 e!2153275)))

(declare-fun c!596215 () Bool)

(declare-fun call!250804 () List!37337)

(declare-fun call!250803 () List!37337)

(declare-fun bm!250797 () Bool)

(declare-fun call!250805 () List!37337)

(assert (=> bm!250797 (= call!250803 (++!9188 (ite c!596215 call!250804 call!250805) (ite c!596215 call!250805 call!250804)))))

(declare-fun b!3476383 () Bool)

(declare-fun call!250802 () List!37337)

(assert (=> b!3476383 (= e!2153275 call!250802)))

(declare-fun b!3476385 () Bool)

(declare-fun e!2153273 () List!37337)

(assert (=> b!3476385 (= e!2153275 e!2153273)))

(assert (=> b!3476385 (= c!596215 (is-Union!10208 (regex!5449 (rule!8047 separatorToken!241))))))

(declare-fun d!1003942 () Bool)

(declare-fun c!596214 () Bool)

(assert (=> d!1003942 (= c!596214 (or (is-EmptyExpr!10208 (regex!5449 (rule!8047 separatorToken!241))) (is-EmptyLang!10208 (regex!5449 (rule!8047 separatorToken!241)))))))

(declare-fun e!2153274 () List!37337)

(assert (=> d!1003942 (= (usedCharacters!683 (regex!5449 (rule!8047 separatorToken!241))) e!2153274)))

(declare-fun bm!250798 () Bool)

(assert (=> bm!250798 (= call!250802 (usedCharacters!683 (ite c!596212 (reg!10537 (regex!5449 (rule!8047 separatorToken!241))) (ite c!596215 (regTwo!20929 (regex!5449 (rule!8047 separatorToken!241))) (regOne!20928 (regex!5449 (rule!8047 separatorToken!241)))))))))

(declare-fun b!3476386 () Bool)

(assert (=> b!3476386 (= e!2153273 call!250803)))

(declare-fun b!3476387 () Bool)

(assert (=> b!3476387 (= e!2153274 e!2153276)))

(declare-fun c!596213 () Bool)

(assert (=> b!3476387 (= c!596213 (is-ElementMatch!10208 (regex!5449 (rule!8047 separatorToken!241))))))

(declare-fun b!3476388 () Bool)

(assert (=> b!3476388 (= e!2153274 Nil!37213)))

(declare-fun bm!250799 () Bool)

(assert (=> bm!250799 (= call!250804 (usedCharacters!683 (ite c!596215 (regOne!20929 (regex!5449 (rule!8047 separatorToken!241))) (regTwo!20928 (regex!5449 (rule!8047 separatorToken!241))))))))

(declare-fun b!3476389 () Bool)

(assert (=> b!3476389 (= e!2153273 call!250803)))

(declare-fun bm!250800 () Bool)

(assert (=> bm!250800 (= call!250805 call!250802)))

(assert (= (and d!1003942 c!596214) b!3476388))

(assert (= (and d!1003942 (not c!596214)) b!3476387))

(assert (= (and b!3476387 c!596213) b!3476379))

(assert (= (and b!3476387 (not c!596213)) b!3476380))

(assert (= (and b!3476380 c!596212) b!3476383))

(assert (= (and b!3476380 (not c!596212)) b!3476385))

(assert (= (and b!3476385 c!596215) b!3476389))

(assert (= (and b!3476385 (not c!596215)) b!3476386))

(assert (= (or b!3476389 b!3476386) bm!250800))

(assert (= (or b!3476389 b!3476386) bm!250799))

(assert (= (or b!3476389 b!3476386) bm!250797))

(assert (= (or b!3476383 bm!250800) bm!250798))

(declare-fun m!3891159 () Bool)

(assert (=> bm!250797 m!3891159))

(declare-fun m!3891161 () Bool)

(assert (=> bm!250798 m!3891161))

(declare-fun m!3891163 () Bool)

(assert (=> bm!250799 m!3891163))

(assert (=> b!3475968 d!1003942))

(declare-fun b!3476432 () Bool)

(declare-fun e!2153298 () Option!7552)

(declare-datatypes ((tuple2!36972 0))(
  ( (tuple2!36973 (_1!21620 List!37337) (_2!21620 List!37337)) )
))
(declare-fun lt!1183275 () tuple2!36972)

(declare-fun size!28258 (BalanceConc!22160) Int)

(assert (=> b!3476432 (= e!2153298 (Some!7551 (tuple2!36967 (Token!10265 (apply!8791 (transformation!5449 (rule!8047 (h!42635 tokens!494))) (seqFromList!3951 (_1!21620 lt!1183275))) (rule!8047 (h!42635 tokens!494)) (size!28258 (seqFromList!3951 (_1!21620 lt!1183275))) (_1!21620 lt!1183275)) (_2!21620 lt!1183275))))))

(declare-fun lt!1183272 () Unit!52643)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!889 (Regex!10208 List!37337) Unit!52643)

(assert (=> b!3476432 (= lt!1183272 (longestMatchIsAcceptedByMatchOrIsEmpty!889 (regex!5449 (rule!8047 (h!42635 tokens!494))) lt!1183017))))

(declare-fun res!1402412 () Bool)

(declare-fun findLongestMatchInner!916 (Regex!10208 List!37337 Int List!37337 List!37337 Int) tuple2!36972)

(assert (=> b!3476432 (= res!1402412 (isEmpty!21590 (_1!21620 (findLongestMatchInner!916 (regex!5449 (rule!8047 (h!42635 tokens!494))) Nil!37213 (size!28252 Nil!37213) lt!1183017 lt!1183017 (size!28252 lt!1183017)))))))

(declare-fun e!2153301 () Bool)

(assert (=> b!3476432 (=> res!1402412 e!2153301)))

(assert (=> b!3476432 e!2153301))

(declare-fun lt!1183273 () Unit!52643)

(assert (=> b!3476432 (= lt!1183273 lt!1183272)))

(declare-fun lt!1183274 () Unit!52643)

(declare-fun lemmaSemiInverse!1266 (TokenValueInjection!10786 BalanceConc!22160) Unit!52643)

(assert (=> b!3476432 (= lt!1183274 (lemmaSemiInverse!1266 (transformation!5449 (rule!8047 (h!42635 tokens!494))) (seqFromList!3951 (_1!21620 lt!1183275))))))

(declare-fun b!3476433 () Bool)

(declare-fun res!1402408 () Bool)

(declare-fun e!2153299 () Bool)

(assert (=> b!3476433 (=> (not res!1402408) (not e!2153299))))

(declare-fun lt!1183271 () Option!7552)

(assert (=> b!3476433 (= res!1402408 (< (size!28252 (_2!21617 (get!11921 lt!1183271))) (size!28252 lt!1183017)))))

(declare-fun b!3476434 () Bool)

(assert (=> b!3476434 (= e!2153298 None!7551)))

(declare-fun b!3476435 () Bool)

(declare-fun res!1402410 () Bool)

(assert (=> b!3476435 (=> (not res!1402410) (not e!2153299))))

(assert (=> b!3476435 (= res!1402410 (= (rule!8047 (_1!21617 (get!11921 lt!1183271))) (rule!8047 (h!42635 tokens!494))))))

(declare-fun b!3476436 () Bool)

(declare-fun e!2153300 () Bool)

(assert (=> b!3476436 (= e!2153300 e!2153299)))

(declare-fun res!1402407 () Bool)

(assert (=> b!3476436 (=> (not res!1402407) (not e!2153299))))

(assert (=> b!3476436 (= res!1402407 (matchR!4792 (regex!5449 (rule!8047 (h!42635 tokens!494))) (list!13566 (charsOf!3463 (_1!21617 (get!11921 lt!1183271))))))))

(declare-fun d!1003944 () Bool)

(assert (=> d!1003944 e!2153300))

(declare-fun res!1402406 () Bool)

(assert (=> d!1003944 (=> res!1402406 e!2153300)))

(declare-fun isEmpty!21599 (Option!7552) Bool)

(assert (=> d!1003944 (= res!1402406 (isEmpty!21599 lt!1183271))))

(assert (=> d!1003944 (= lt!1183271 e!2153298)))

(declare-fun c!596220 () Bool)

(assert (=> d!1003944 (= c!596220 (isEmpty!21590 (_1!21620 lt!1183275)))))

(declare-fun findLongestMatch!831 (Regex!10208 List!37337) tuple2!36972)

(assert (=> d!1003944 (= lt!1183275 (findLongestMatch!831 (regex!5449 (rule!8047 (h!42635 tokens!494))) lt!1183017))))

(assert (=> d!1003944 (ruleValid!1747 thiss!18206 (rule!8047 (h!42635 tokens!494)))))

(assert (=> d!1003944 (= (maxPrefixOneRule!1745 thiss!18206 (rule!8047 (h!42635 tokens!494)) lt!1183017) lt!1183271)))

(declare-fun b!3476437 () Bool)

(declare-fun res!1402409 () Bool)

(assert (=> b!3476437 (=> (not res!1402409) (not e!2153299))))

(assert (=> b!3476437 (= res!1402409 (= (value!175758 (_1!21617 (get!11921 lt!1183271))) (apply!8791 (transformation!5449 (rule!8047 (_1!21617 (get!11921 lt!1183271)))) (seqFromList!3951 (originalCharacters!6163 (_1!21617 (get!11921 lt!1183271)))))))))

(declare-fun b!3476438 () Bool)

(declare-fun res!1402411 () Bool)

(assert (=> b!3476438 (=> (not res!1402411) (not e!2153299))))

(assert (=> b!3476438 (= res!1402411 (= (++!9188 (list!13566 (charsOf!3463 (_1!21617 (get!11921 lt!1183271)))) (_2!21617 (get!11921 lt!1183271))) lt!1183017))))

(declare-fun b!3476439 () Bool)

(assert (=> b!3476439 (= e!2153299 (= (size!28250 (_1!21617 (get!11921 lt!1183271))) (size!28252 (originalCharacters!6163 (_1!21617 (get!11921 lt!1183271))))))))

(declare-fun b!3476440 () Bool)

(assert (=> b!3476440 (= e!2153301 (matchR!4792 (regex!5449 (rule!8047 (h!42635 tokens!494))) (_1!21620 (findLongestMatchInner!916 (regex!5449 (rule!8047 (h!42635 tokens!494))) Nil!37213 (size!28252 Nil!37213) lt!1183017 lt!1183017 (size!28252 lt!1183017)))))))

(assert (= (and d!1003944 c!596220) b!3476434))

(assert (= (and d!1003944 (not c!596220)) b!3476432))

(assert (= (and b!3476432 (not res!1402412)) b!3476440))

(assert (= (and d!1003944 (not res!1402406)) b!3476436))

(assert (= (and b!3476436 res!1402407) b!3476438))

(assert (= (and b!3476438 res!1402411) b!3476433))

(assert (= (and b!3476433 res!1402408) b!3476435))

(assert (= (and b!3476435 res!1402410) b!3476437))

(assert (= (and b!3476437 res!1402409) b!3476439))

(declare-fun m!3891193 () Bool)

(assert (=> b!3476433 m!3891193))

(declare-fun m!3891195 () Bool)

(assert (=> b!3476433 m!3891195))

(assert (=> b!3476433 m!3890623))

(declare-fun m!3891197 () Bool)

(assert (=> d!1003944 m!3891197))

(declare-fun m!3891199 () Bool)

(assert (=> d!1003944 m!3891199))

(declare-fun m!3891201 () Bool)

(assert (=> d!1003944 m!3891201))

(assert (=> d!1003944 m!3890505))

(declare-fun m!3891203 () Bool)

(assert (=> b!3476432 m!3891203))

(declare-fun m!3891205 () Bool)

(assert (=> b!3476432 m!3891205))

(assert (=> b!3476432 m!3890623))

(declare-fun m!3891207 () Bool)

(assert (=> b!3476432 m!3891207))

(declare-fun m!3891209 () Bool)

(assert (=> b!3476432 m!3891209))

(declare-fun m!3891211 () Bool)

(assert (=> b!3476432 m!3891211))

(declare-fun m!3891213 () Bool)

(assert (=> b!3476432 m!3891213))

(assert (=> b!3476432 m!3890623))

(assert (=> b!3476432 m!3891211))

(declare-fun m!3891215 () Bool)

(assert (=> b!3476432 m!3891215))

(assert (=> b!3476432 m!3891211))

(assert (=> b!3476432 m!3891211))

(declare-fun m!3891217 () Bool)

(assert (=> b!3476432 m!3891217))

(assert (=> b!3476432 m!3891205))

(assert (=> b!3476436 m!3891193))

(declare-fun m!3891219 () Bool)

(assert (=> b!3476436 m!3891219))

(assert (=> b!3476436 m!3891219))

(declare-fun m!3891221 () Bool)

(assert (=> b!3476436 m!3891221))

(assert (=> b!3476436 m!3891221))

(declare-fun m!3891223 () Bool)

(assert (=> b!3476436 m!3891223))

(assert (=> b!3476440 m!3891205))

(assert (=> b!3476440 m!3890623))

(assert (=> b!3476440 m!3891205))

(assert (=> b!3476440 m!3890623))

(assert (=> b!3476440 m!3891207))

(declare-fun m!3891225 () Bool)

(assert (=> b!3476440 m!3891225))

(assert (=> b!3476439 m!3891193))

(declare-fun m!3891227 () Bool)

(assert (=> b!3476439 m!3891227))

(assert (=> b!3476438 m!3891193))

(assert (=> b!3476438 m!3891219))

(assert (=> b!3476438 m!3891219))

(assert (=> b!3476438 m!3891221))

(assert (=> b!3476438 m!3891221))

(declare-fun m!3891229 () Bool)

(assert (=> b!3476438 m!3891229))

(assert (=> b!3476437 m!3891193))

(declare-fun m!3891231 () Bool)

(assert (=> b!3476437 m!3891231))

(assert (=> b!3476437 m!3891231))

(declare-fun m!3891233 () Bool)

(assert (=> b!3476437 m!3891233))

(assert (=> b!3476435 m!3891193))

(assert (=> b!3475968 d!1003944))

(declare-fun d!1003954 () Bool)

(declare-fun lt!1183283 () BalanceConc!22160)

(assert (=> d!1003954 (= (list!13566 lt!1183283) (printList!1586 thiss!18206 (list!13568 lt!1183029)))))

(assert (=> d!1003954 (= lt!1183283 (printTailRec!1533 thiss!18206 lt!1183029 0 (BalanceConc!22161 Empty!11273)))))

(assert (=> d!1003954 (= (print!2103 thiss!18206 lt!1183029) lt!1183283)))

(declare-fun bs!561710 () Bool)

(assert (= bs!561710 d!1003954))

(declare-fun m!3891277 () Bool)

(assert (=> bs!561710 m!3891277))

(declare-fun m!3891279 () Bool)

(assert (=> bs!561710 m!3891279))

(assert (=> bs!561710 m!3891279))

(declare-fun m!3891281 () Bool)

(assert (=> bs!561710 m!3891281))

(assert (=> bs!561710 m!3890619))

(assert (=> b!3475968 d!1003954))

(declare-fun d!1003958 () Bool)

(declare-fun lt!1183284 () Bool)

(assert (=> d!1003958 (= lt!1183284 (set.member lt!1183020 (content!5206 lt!1183026)))))

(declare-fun e!2153306 () Bool)

(assert (=> d!1003958 (= lt!1183284 e!2153306)))

(declare-fun res!1402421 () Bool)

(assert (=> d!1003958 (=> (not res!1402421) (not e!2153306))))

(assert (=> d!1003958 (= res!1402421 (is-Cons!37213 lt!1183026))))

(assert (=> d!1003958 (= (contains!6924 lt!1183026 lt!1183020) lt!1183284)))

(declare-fun b!3476450 () Bool)

(declare-fun e!2153307 () Bool)

(assert (=> b!3476450 (= e!2153306 e!2153307)))

(declare-fun res!1402420 () Bool)

(assert (=> b!3476450 (=> res!1402420 e!2153307)))

(assert (=> b!3476450 (= res!1402420 (= (h!42633 lt!1183026) lt!1183020))))

(declare-fun b!3476451 () Bool)

(assert (=> b!3476451 (= e!2153307 (contains!6924 (t!275058 lt!1183026) lt!1183020))))

(assert (= (and d!1003958 res!1402421) b!3476450))

(assert (= (and b!3476450 (not res!1402420)) b!3476451))

(declare-fun m!3891283 () Bool)

(assert (=> d!1003958 m!3891283))

(declare-fun m!3891285 () Bool)

(assert (=> d!1003958 m!3891285))

(declare-fun m!3891287 () Bool)

(assert (=> b!3476451 m!3891287))

(assert (=> b!3475968 d!1003958))

(declare-fun b!3476452 () Bool)

(declare-fun e!2153311 () List!37337)

(assert (=> b!3476452 (= e!2153311 (Cons!37213 (c!596147 (regex!5449 (rule!8047 (h!42635 tokens!494)))) Nil!37213))))

(declare-fun b!3476453 () Bool)

(declare-fun c!596222 () Bool)

(assert (=> b!3476453 (= c!596222 (is-Star!10208 (regex!5449 (rule!8047 (h!42635 tokens!494)))))))

(declare-fun e!2153310 () List!37337)

(assert (=> b!3476453 (= e!2153311 e!2153310)))

(declare-fun call!250808 () List!37337)

(declare-fun bm!250801 () Bool)

(declare-fun call!250807 () List!37337)

(declare-fun call!250809 () List!37337)

(declare-fun c!596225 () Bool)

(assert (=> bm!250801 (= call!250807 (++!9188 (ite c!596225 call!250808 call!250809) (ite c!596225 call!250809 call!250808)))))

(declare-fun b!3476454 () Bool)

(declare-fun call!250806 () List!37337)

(assert (=> b!3476454 (= e!2153310 call!250806)))

(declare-fun b!3476455 () Bool)

(declare-fun e!2153308 () List!37337)

(assert (=> b!3476455 (= e!2153310 e!2153308)))

(assert (=> b!3476455 (= c!596225 (is-Union!10208 (regex!5449 (rule!8047 (h!42635 tokens!494)))))))

(declare-fun d!1003960 () Bool)

(declare-fun c!596224 () Bool)

(assert (=> d!1003960 (= c!596224 (or (is-EmptyExpr!10208 (regex!5449 (rule!8047 (h!42635 tokens!494)))) (is-EmptyLang!10208 (regex!5449 (rule!8047 (h!42635 tokens!494))))))))

(declare-fun e!2153309 () List!37337)

(assert (=> d!1003960 (= (usedCharacters!683 (regex!5449 (rule!8047 (h!42635 tokens!494)))) e!2153309)))

(declare-fun bm!250802 () Bool)

(assert (=> bm!250802 (= call!250806 (usedCharacters!683 (ite c!596222 (reg!10537 (regex!5449 (rule!8047 (h!42635 tokens!494)))) (ite c!596225 (regTwo!20929 (regex!5449 (rule!8047 (h!42635 tokens!494)))) (regOne!20928 (regex!5449 (rule!8047 (h!42635 tokens!494))))))))))

(declare-fun b!3476456 () Bool)

(assert (=> b!3476456 (= e!2153308 call!250807)))

(declare-fun b!3476457 () Bool)

(assert (=> b!3476457 (= e!2153309 e!2153311)))

(declare-fun c!596223 () Bool)

(assert (=> b!3476457 (= c!596223 (is-ElementMatch!10208 (regex!5449 (rule!8047 (h!42635 tokens!494)))))))

(declare-fun b!3476458 () Bool)

(assert (=> b!3476458 (= e!2153309 Nil!37213)))

(declare-fun bm!250803 () Bool)

(assert (=> bm!250803 (= call!250808 (usedCharacters!683 (ite c!596225 (regOne!20929 (regex!5449 (rule!8047 (h!42635 tokens!494)))) (regTwo!20928 (regex!5449 (rule!8047 (h!42635 tokens!494)))))))))

(declare-fun b!3476459 () Bool)

(assert (=> b!3476459 (= e!2153308 call!250807)))

(declare-fun bm!250804 () Bool)

(assert (=> bm!250804 (= call!250809 call!250806)))

(assert (= (and d!1003960 c!596224) b!3476458))

(assert (= (and d!1003960 (not c!596224)) b!3476457))

(assert (= (and b!3476457 c!596223) b!3476452))

(assert (= (and b!3476457 (not c!596223)) b!3476453))

(assert (= (and b!3476453 c!596222) b!3476454))

(assert (= (and b!3476453 (not c!596222)) b!3476455))

(assert (= (and b!3476455 c!596225) b!3476459))

(assert (= (and b!3476455 (not c!596225)) b!3476456))

(assert (= (or b!3476459 b!3476456) bm!250804))

(assert (= (or b!3476459 b!3476456) bm!250803))

(assert (= (or b!3476459 b!3476456) bm!250801))

(assert (= (or b!3476454 bm!250804) bm!250802))

(declare-fun m!3891289 () Bool)

(assert (=> bm!250801 m!3891289))

(declare-fun m!3891291 () Bool)

(assert (=> bm!250802 m!3891291))

(declare-fun m!3891293 () Bool)

(assert (=> bm!250803 m!3891293))

(assert (=> b!3475968 d!1003960))

(declare-fun d!1003962 () Bool)

(assert (=> d!1003962 (rulesProduceIndividualToken!2530 thiss!18206 rules!2135 (h!42635 tokens!494))))

(declare-fun lt!1183317 () Unit!52643)

(declare-fun choose!20116 (LexerInterface!5038 List!37338 List!37339 Token!10264) Unit!52643)

(assert (=> d!1003962 (= lt!1183317 (choose!20116 thiss!18206 rules!2135 tokens!494 (h!42635 tokens!494)))))

(assert (=> d!1003962 (not (isEmpty!21591 rules!2135))))

(assert (=> d!1003962 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1027 thiss!18206 rules!2135 tokens!494 (h!42635 tokens!494)) lt!1183317)))

(declare-fun bs!561713 () Bool)

(assert (= bs!561713 d!1003962))

(assert (=> bs!561713 m!3890593))

(declare-fun m!3891389 () Bool)

(assert (=> bs!561713 m!3891389))

(assert (=> bs!561713 m!3890515))

(assert (=> b!3475968 d!1003962))

(declare-fun d!1003984 () Bool)

(declare-fun lt!1183318 () Bool)

(declare-fun e!2153357 () Bool)

(assert (=> d!1003984 (= lt!1183318 e!2153357)))

(declare-fun res!1402441 () Bool)

(assert (=> d!1003984 (=> (not res!1402441) (not e!2153357))))

(assert (=> d!1003984 (= res!1402441 (= (list!13568 (_1!21616 (lex!2364 thiss!18206 rules!2135 (print!2103 thiss!18206 (singletonSeq!2545 (h!42635 (t!275060 tokens!494))))))) (list!13568 (singletonSeq!2545 (h!42635 (t!275060 tokens!494))))))))

(declare-fun e!2153356 () Bool)

(assert (=> d!1003984 (= lt!1183318 e!2153356)))

(declare-fun res!1402443 () Bool)

(assert (=> d!1003984 (=> (not res!1402443) (not e!2153356))))

(declare-fun lt!1183319 () tuple2!36964)

(assert (=> d!1003984 (= res!1402443 (= (size!28251 (_1!21616 lt!1183319)) 1))))

(assert (=> d!1003984 (= lt!1183319 (lex!2364 thiss!18206 rules!2135 (print!2103 thiss!18206 (singletonSeq!2545 (h!42635 (t!275060 tokens!494))))))))

(assert (=> d!1003984 (not (isEmpty!21591 rules!2135))))

(assert (=> d!1003984 (= (rulesProduceIndividualToken!2530 thiss!18206 rules!2135 (h!42635 (t!275060 tokens!494))) lt!1183318)))

(declare-fun b!3476529 () Bool)

(declare-fun res!1402442 () Bool)

(assert (=> b!3476529 (=> (not res!1402442) (not e!2153356))))

(assert (=> b!3476529 (= res!1402442 (= (apply!8790 (_1!21616 lt!1183319) 0) (h!42635 (t!275060 tokens!494))))))

(declare-fun b!3476530 () Bool)

(assert (=> b!3476530 (= e!2153356 (isEmpty!21593 (_2!21616 lt!1183319)))))

(declare-fun b!3476531 () Bool)

(assert (=> b!3476531 (= e!2153357 (isEmpty!21593 (_2!21616 (lex!2364 thiss!18206 rules!2135 (print!2103 thiss!18206 (singletonSeq!2545 (h!42635 (t!275060 tokens!494))))))))))

(assert (= (and d!1003984 res!1402443) b!3476529))

(assert (= (and b!3476529 res!1402442) b!3476530))

(assert (= (and d!1003984 res!1402441) b!3476531))

(assert (=> d!1003984 m!3890515))

(assert (=> d!1003984 m!3890657))

(declare-fun m!3891391 () Bool)

(assert (=> d!1003984 m!3891391))

(assert (=> d!1003984 m!3890657))

(declare-fun m!3891393 () Bool)

(assert (=> d!1003984 m!3891393))

(declare-fun m!3891395 () Bool)

(assert (=> d!1003984 m!3891395))

(declare-fun m!3891397 () Bool)

(assert (=> d!1003984 m!3891397))

(assert (=> d!1003984 m!3891391))

(declare-fun m!3891399 () Bool)

(assert (=> d!1003984 m!3891399))

(assert (=> d!1003984 m!3890657))

(declare-fun m!3891401 () Bool)

(assert (=> b!3476529 m!3891401))

(declare-fun m!3891403 () Bool)

(assert (=> b!3476530 m!3891403))

(assert (=> b!3476531 m!3890657))

(assert (=> b!3476531 m!3890657))

(assert (=> b!3476531 m!3891391))

(assert (=> b!3476531 m!3891391))

(assert (=> b!3476531 m!3891399))

(declare-fun m!3891405 () Bool)

(assert (=> b!3476531 m!3891405))

(assert (=> b!3475968 d!1003984))

(declare-fun d!1003986 () Bool)

(assert (=> d!1003986 (not (contains!6924 (usedCharacters!683 (regex!5449 (rule!8047 (h!42635 tokens!494)))) lt!1183020))))

(declare-fun lt!1183322 () Unit!52643)

(declare-fun choose!20118 (LexerInterface!5038 List!37338 List!37338 Rule!10698 Rule!10698 C!20602) Unit!52643)

(assert (=> d!1003986 (= lt!1183322 (choose!20118 thiss!18206 rules!2135 rules!2135 (rule!8047 (h!42635 tokens!494)) (rule!8047 separatorToken!241) lt!1183020))))

(assert (=> d!1003986 (rulesInvariant!4435 thiss!18206 rules!2135)))

(assert (=> d!1003986 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!249 thiss!18206 rules!2135 rules!2135 (rule!8047 (h!42635 tokens!494)) (rule!8047 separatorToken!241) lt!1183020) lt!1183322)))

(declare-fun bs!561714 () Bool)

(assert (= bs!561714 d!1003986))

(assert (=> bs!561714 m!3890663))

(assert (=> bs!561714 m!3890663))

(declare-fun m!3891407 () Bool)

(assert (=> bs!561714 m!3891407))

(declare-fun m!3891409 () Bool)

(assert (=> bs!561714 m!3891409))

(assert (=> bs!561714 m!3890493))

(assert (=> b!3475968 d!1003986))

(declare-fun d!1003988 () Bool)

(assert (=> d!1003988 (= (isDefined!5815 lt!1183014) (not (isEmpty!21598 lt!1183014)))))

(declare-fun bs!561715 () Bool)

(assert (= bs!561715 d!1003988))

(declare-fun m!3891411 () Bool)

(assert (=> bs!561715 m!3891411))

(assert (=> b!3475968 d!1003988))

(declare-fun d!1003990 () Bool)

(declare-fun lt!1183325 () Int)

(assert (=> d!1003990 (>= lt!1183325 0)))

(declare-fun e!2153360 () Int)

(assert (=> d!1003990 (= lt!1183325 e!2153360)))

(declare-fun c!596255 () Bool)

(assert (=> d!1003990 (= c!596255 (is-Nil!37213 lt!1183017))))

(assert (=> d!1003990 (= (size!28252 lt!1183017) lt!1183325)))

(declare-fun b!3476536 () Bool)

(assert (=> b!3476536 (= e!2153360 0)))

(declare-fun b!3476537 () Bool)

(assert (=> b!3476537 (= e!2153360 (+ 1 (size!28252 (t!275058 lt!1183017))))))

(assert (= (and d!1003990 c!596255) b!3476536))

(assert (= (and d!1003990 (not c!596255)) b!3476537))

(declare-fun m!3891413 () Bool)

(assert (=> b!3476537 m!3891413))

(assert (=> b!3475968 d!1003990))

(declare-fun d!1003992 () Bool)

(assert (=> d!1003992 (= (maxPrefixOneRule!1745 thiss!18206 (rule!8047 (h!42635 tokens!494)) lt!1183017) (Some!7551 (tuple2!36967 (Token!10265 (apply!8791 (transformation!5449 (rule!8047 (h!42635 tokens!494))) (seqFromList!3951 lt!1183017)) (rule!8047 (h!42635 tokens!494)) (size!28252 lt!1183017) lt!1183017) Nil!37213)))))

(declare-fun lt!1183328 () Unit!52643)

(declare-fun choose!20119 (LexerInterface!5038 List!37338 List!37337 List!37337 List!37337 Rule!10698) Unit!52643)

(assert (=> d!1003992 (= lt!1183328 (choose!20119 thiss!18206 rules!2135 lt!1183017 lt!1183017 Nil!37213 (rule!8047 (h!42635 tokens!494))))))

(assert (=> d!1003992 (not (isEmpty!21591 rules!2135))))

(assert (=> d!1003992 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!838 thiss!18206 rules!2135 lt!1183017 lt!1183017 Nil!37213 (rule!8047 (h!42635 tokens!494))) lt!1183328)))

(declare-fun bs!561716 () Bool)

(assert (= bs!561716 d!1003992))

(assert (=> bs!561716 m!3890623))

(declare-fun m!3891415 () Bool)

(assert (=> bs!561716 m!3891415))

(assert (=> bs!561716 m!3890643))

(assert (=> bs!561716 m!3890515))

(assert (=> bs!561716 m!3890571))

(declare-fun m!3891417 () Bool)

(assert (=> bs!561716 m!3891417))

(assert (=> bs!561716 m!3890571))

(assert (=> b!3475968 d!1003992))

(declare-fun d!1003994 () Bool)

(assert (=> d!1003994 (= (head!7336 lt!1183007) (h!42633 lt!1183007))))

(assert (=> b!3475968 d!1003994))

(declare-fun b!3476556 () Bool)

(declare-fun res!1402450 () Bool)

(declare-fun e!2153374 () Bool)

(assert (=> b!3476556 (=> (not res!1402450) (not e!2153374))))

(declare-fun lt!1183340 () tuple2!36964)

(declare-datatypes ((tuple2!36974 0))(
  ( (tuple2!36975 (_1!21621 List!37339) (_2!21621 List!37337)) )
))
(declare-fun lexList!1455 (LexerInterface!5038 List!37338 List!37337) tuple2!36974)

(assert (=> b!3476556 (= res!1402450 (= (list!13568 (_1!21616 lt!1183340)) (_1!21621 (lexList!1455 thiss!18206 rules!2135 (list!13566 lt!1183023)))))))

(declare-fun d!1003996 () Bool)

(assert (=> d!1003996 e!2153374))

(declare-fun res!1402452 () Bool)

(assert (=> d!1003996 (=> (not res!1402452) (not e!2153374))))

(declare-fun e!2153375 () Bool)

(assert (=> d!1003996 (= res!1402452 e!2153375)))

(declare-fun c!596261 () Bool)

(assert (=> d!1003996 (= c!596261 (> (size!28251 (_1!21616 lt!1183340)) 0))))

(declare-fun lexTailRecV2!1063 (LexerInterface!5038 List!37338 BalanceConc!22160 BalanceConc!22160 BalanceConc!22160 BalanceConc!22162) tuple2!36964)

(assert (=> d!1003996 (= lt!1183340 (lexTailRecV2!1063 thiss!18206 rules!2135 lt!1183023 (BalanceConc!22161 Empty!11273) lt!1183023 (BalanceConc!22163 Empty!11274)))))

(assert (=> d!1003996 (= (lex!2364 thiss!18206 rules!2135 lt!1183023) lt!1183340)))

(declare-fun b!3476557 () Bool)

(assert (=> b!3476557 (= e!2153374 (= (list!13566 (_2!21616 lt!1183340)) (_2!21621 (lexList!1455 thiss!18206 rules!2135 (list!13566 lt!1183023)))))))

(declare-fun b!3476558 () Bool)

(declare-fun e!2153373 () Bool)

(assert (=> b!3476558 (= e!2153373 (not (isEmpty!21592 (_1!21616 lt!1183340))))))

(declare-fun b!3476559 () Bool)

(assert (=> b!3476559 (= e!2153375 e!2153373)))

(declare-fun res!1402451 () Bool)

(assert (=> b!3476559 (= res!1402451 (< (size!28258 (_2!21616 lt!1183340)) (size!28258 lt!1183023)))))

(assert (=> b!3476559 (=> (not res!1402451) (not e!2153373))))

(declare-fun b!3476560 () Bool)

(assert (=> b!3476560 (= e!2153375 (= (_2!21616 lt!1183340) lt!1183023))))

(assert (= (and d!1003996 c!596261) b!3476559))

(assert (= (and d!1003996 (not c!596261)) b!3476560))

(assert (= (and b!3476559 res!1402451) b!3476558))

(assert (= (and d!1003996 res!1402452) b!3476556))

(assert (= (and b!3476556 res!1402450) b!3476557))

(declare-fun m!3891433 () Bool)

(assert (=> b!3476557 m!3891433))

(declare-fun m!3891435 () Bool)

(assert (=> b!3476557 m!3891435))

(assert (=> b!3476557 m!3891435))

(declare-fun m!3891437 () Bool)

(assert (=> b!3476557 m!3891437))

(declare-fun m!3891439 () Bool)

(assert (=> b!3476558 m!3891439))

(declare-fun m!3891441 () Bool)

(assert (=> b!3476556 m!3891441))

(assert (=> b!3476556 m!3891435))

(assert (=> b!3476556 m!3891435))

(assert (=> b!3476556 m!3891437))

(declare-fun m!3891443 () Bool)

(assert (=> b!3476559 m!3891443))

(declare-fun m!3891445 () Bool)

(assert (=> b!3476559 m!3891445))

(declare-fun m!3891447 () Bool)

(assert (=> d!1003996 m!3891447))

(declare-fun m!3891449 () Bool)

(assert (=> d!1003996 m!3891449))

(assert (=> b!3475968 d!1003996))

(declare-fun d!1004006 () Bool)

(declare-fun lt!1183341 () BalanceConc!22160)

(assert (=> d!1004006 (= (list!13566 lt!1183341) (printList!1586 thiss!18206 (list!13568 lt!1183030)))))

(assert (=> d!1004006 (= lt!1183341 (printTailRec!1533 thiss!18206 lt!1183030 0 (BalanceConc!22161 Empty!11273)))))

(assert (=> d!1004006 (= (print!2103 thiss!18206 lt!1183030) lt!1183341)))

(declare-fun bs!561719 () Bool)

(assert (= bs!561719 d!1004006))

(declare-fun m!3891451 () Bool)

(assert (=> bs!561719 m!3891451))

(assert (=> bs!561719 m!3891147))

(assert (=> bs!561719 m!3891147))

(declare-fun m!3891453 () Bool)

(assert (=> bs!561719 m!3891453))

(assert (=> bs!561719 m!3890611))

(assert (=> b!3475968 d!1004006))

(declare-fun d!1004008 () Bool)

(declare-fun lt!1183343 () BalanceConc!22160)

(assert (=> d!1004008 (= (list!13566 lt!1183343) (printListTailRec!695 thiss!18206 (dropList!1212 lt!1183029 0) (list!13566 (BalanceConc!22161 Empty!11273))))))

(declare-fun e!2153377 () BalanceConc!22160)

(assert (=> d!1004008 (= lt!1183343 e!2153377)))

(declare-fun c!596262 () Bool)

(assert (=> d!1004008 (= c!596262 (>= 0 (size!28251 lt!1183029)))))

(declare-fun e!2153376 () Bool)

(assert (=> d!1004008 e!2153376))

(declare-fun res!1402453 () Bool)

(assert (=> d!1004008 (=> (not res!1402453) (not e!2153376))))

(assert (=> d!1004008 (= res!1402453 (>= 0 0))))

(assert (=> d!1004008 (= (printTailRec!1533 thiss!18206 lt!1183029 0 (BalanceConc!22161 Empty!11273)) lt!1183343)))

(declare-fun b!3476561 () Bool)

(assert (=> b!3476561 (= e!2153376 (<= 0 (size!28251 lt!1183029)))))

(declare-fun b!3476562 () Bool)

(assert (=> b!3476562 (= e!2153377 (BalanceConc!22161 Empty!11273))))

(declare-fun b!3476563 () Bool)

(assert (=> b!3476563 (= e!2153377 (printTailRec!1533 thiss!18206 lt!1183029 (+ 0 1) (++!9190 (BalanceConc!22161 Empty!11273) (charsOf!3463 (apply!8790 lt!1183029 0)))))))

(declare-fun lt!1183348 () List!37339)

(assert (=> b!3476563 (= lt!1183348 (list!13568 lt!1183029))))

(declare-fun lt!1183347 () Unit!52643)

(assert (=> b!3476563 (= lt!1183347 (lemmaDropApply!1170 lt!1183348 0))))

(assert (=> b!3476563 (= (head!7338 (drop!2020 lt!1183348 0)) (apply!8794 lt!1183348 0))))

(declare-fun lt!1183344 () Unit!52643)

(assert (=> b!3476563 (= lt!1183344 lt!1183347)))

(declare-fun lt!1183345 () List!37339)

(assert (=> b!3476563 (= lt!1183345 (list!13568 lt!1183029))))

(declare-fun lt!1183346 () Unit!52643)

(assert (=> b!3476563 (= lt!1183346 (lemmaDropTail!1054 lt!1183345 0))))

(assert (=> b!3476563 (= (tail!5446 (drop!2020 lt!1183345 0)) (drop!2020 lt!1183345 (+ 0 1)))))

(declare-fun lt!1183342 () Unit!52643)

(assert (=> b!3476563 (= lt!1183342 lt!1183346)))

(assert (= (and d!1004008 res!1402453) b!3476561))

(assert (= (and d!1004008 c!596262) b!3476562))

(assert (= (and d!1004008 (not c!596262)) b!3476563))

(assert (=> d!1004008 m!3891123))

(declare-fun m!3891455 () Bool)

(assert (=> d!1004008 m!3891455))

(assert (=> d!1004008 m!3891123))

(declare-fun m!3891457 () Bool)

(assert (=> d!1004008 m!3891457))

(declare-fun m!3891459 () Bool)

(assert (=> d!1004008 m!3891459))

(declare-fun m!3891461 () Bool)

(assert (=> d!1004008 m!3891461))

(assert (=> d!1004008 m!3891455))

(assert (=> b!3476561 m!3891461))

(declare-fun m!3891463 () Bool)

(assert (=> b!3476563 m!3891463))

(declare-fun m!3891465 () Bool)

(assert (=> b!3476563 m!3891465))

(declare-fun m!3891467 () Bool)

(assert (=> b!3476563 m!3891467))

(assert (=> b!3476563 m!3891467))

(declare-fun m!3891469 () Bool)

(assert (=> b!3476563 m!3891469))

(declare-fun m!3891471 () Bool)

(assert (=> b!3476563 m!3891471))

(declare-fun m!3891473 () Bool)

(assert (=> b!3476563 m!3891473))

(assert (=> b!3476563 m!3891469))

(declare-fun m!3891475 () Bool)

(assert (=> b!3476563 m!3891475))

(assert (=> b!3476563 m!3891279))

(declare-fun m!3891477 () Bool)

(assert (=> b!3476563 m!3891477))

(declare-fun m!3891479 () Bool)

(assert (=> b!3476563 m!3891479))

(assert (=> b!3476563 m!3891477))

(assert (=> b!3476563 m!3891465))

(declare-fun m!3891481 () Bool)

(assert (=> b!3476563 m!3891481))

(declare-fun m!3891483 () Bool)

(assert (=> b!3476563 m!3891483))

(assert (=> b!3476563 m!3891463))

(declare-fun m!3891485 () Bool)

(assert (=> b!3476563 m!3891485))

(assert (=> b!3475968 d!1004008))

(declare-fun b!3476564 () Bool)

(declare-fun res!1402454 () Bool)

(declare-fun e!2153379 () Bool)

(assert (=> b!3476564 (=> (not res!1402454) (not e!2153379))))

(declare-fun lt!1183349 () tuple2!36964)

(assert (=> b!3476564 (= res!1402454 (= (list!13568 (_1!21616 lt!1183349)) (_1!21621 (lexList!1455 thiss!18206 rules!2135 (list!13566 lt!1183003)))))))

(declare-fun d!1004010 () Bool)

(assert (=> d!1004010 e!2153379))

(declare-fun res!1402456 () Bool)

(assert (=> d!1004010 (=> (not res!1402456) (not e!2153379))))

(declare-fun e!2153380 () Bool)

(assert (=> d!1004010 (= res!1402456 e!2153380)))

(declare-fun c!596263 () Bool)

(assert (=> d!1004010 (= c!596263 (> (size!28251 (_1!21616 lt!1183349)) 0))))

(assert (=> d!1004010 (= lt!1183349 (lexTailRecV2!1063 thiss!18206 rules!2135 lt!1183003 (BalanceConc!22161 Empty!11273) lt!1183003 (BalanceConc!22163 Empty!11274)))))

(assert (=> d!1004010 (= (lex!2364 thiss!18206 rules!2135 lt!1183003) lt!1183349)))

(declare-fun b!3476565 () Bool)

(assert (=> b!3476565 (= e!2153379 (= (list!13566 (_2!21616 lt!1183349)) (_2!21621 (lexList!1455 thiss!18206 rules!2135 (list!13566 lt!1183003)))))))

(declare-fun b!3476566 () Bool)

(declare-fun e!2153378 () Bool)

(assert (=> b!3476566 (= e!2153378 (not (isEmpty!21592 (_1!21616 lt!1183349))))))

(declare-fun b!3476567 () Bool)

(assert (=> b!3476567 (= e!2153380 e!2153378)))

(declare-fun res!1402455 () Bool)

(assert (=> b!3476567 (= res!1402455 (< (size!28258 (_2!21616 lt!1183349)) (size!28258 lt!1183003)))))

(assert (=> b!3476567 (=> (not res!1402455) (not e!2153378))))

(declare-fun b!3476568 () Bool)

(assert (=> b!3476568 (= e!2153380 (= (_2!21616 lt!1183349) lt!1183003))))

(assert (= (and d!1004010 c!596263) b!3476567))

(assert (= (and d!1004010 (not c!596263)) b!3476568))

(assert (= (and b!3476567 res!1402455) b!3476566))

(assert (= (and d!1004010 res!1402456) b!3476564))

(assert (= (and b!3476564 res!1402454) b!3476565))

(declare-fun m!3891487 () Bool)

(assert (=> b!3476565 m!3891487))

(declare-fun m!3891489 () Bool)

(assert (=> b!3476565 m!3891489))

(assert (=> b!3476565 m!3891489))

(declare-fun m!3891491 () Bool)

(assert (=> b!3476565 m!3891491))

(declare-fun m!3891493 () Bool)

(assert (=> b!3476566 m!3891493))

(declare-fun m!3891495 () Bool)

(assert (=> b!3476564 m!3891495))

(assert (=> b!3476564 m!3891489))

(assert (=> b!3476564 m!3891489))

(assert (=> b!3476564 m!3891491))

(declare-fun m!3891497 () Bool)

(assert (=> b!3476567 m!3891497))

(declare-fun m!3891499 () Bool)

(assert (=> b!3476567 m!3891499))

(declare-fun m!3891501 () Bool)

(assert (=> d!1004010 m!3891501))

(declare-fun m!3891503 () Bool)

(assert (=> d!1004010 m!3891503))

(assert (=> b!3475968 d!1004010))

(declare-fun d!1004012 () Bool)

(assert (=> d!1004012 (= (isDefined!5815 lt!1183000) (not (isEmpty!21598 lt!1183000)))))

(declare-fun bs!561720 () Bool)

(assert (= bs!561720 d!1004012))

(declare-fun m!3891505 () Bool)

(assert (=> bs!561720 m!3891505))

(assert (=> b!3475968 d!1004012))

(declare-fun d!1004014 () Bool)

(declare-fun lt!1183350 () Int)

(assert (=> d!1004014 (= lt!1183350 (size!28256 (list!13568 (_1!21616 lt!1183027))))))

(assert (=> d!1004014 (= lt!1183350 (size!28257 (c!596149 (_1!21616 lt!1183027))))))

(assert (=> d!1004014 (= (size!28251 (_1!21616 lt!1183027)) lt!1183350)))

(declare-fun bs!561721 () Bool)

(assert (= bs!561721 d!1004014))

(declare-fun m!3891507 () Bool)

(assert (=> bs!561721 m!3891507))

(assert (=> bs!561721 m!3891507))

(declare-fun m!3891509 () Bool)

(assert (=> bs!561721 m!3891509))

(declare-fun m!3891511 () Bool)

(assert (=> bs!561721 m!3891511))

(assert (=> b!3475968 d!1004014))

(declare-fun d!1004016 () Bool)

(declare-fun dynLambda!15731 (Int Token!10264) Bool)

(assert (=> d!1004016 (dynLambda!15731 lambda!122095 (h!42635 (t!275060 tokens!494)))))

(declare-fun lt!1183353 () Unit!52643)

(declare-fun choose!20120 (List!37339 Int Token!10264) Unit!52643)

(assert (=> d!1004016 (= lt!1183353 (choose!20120 tokens!494 lambda!122095 (h!42635 (t!275060 tokens!494))))))

(declare-fun e!2153383 () Bool)

(assert (=> d!1004016 e!2153383))

(declare-fun res!1402459 () Bool)

(assert (=> d!1004016 (=> (not res!1402459) (not e!2153383))))

(assert (=> d!1004016 (= res!1402459 (forall!7952 tokens!494 lambda!122095))))

(assert (=> d!1004016 (= (forallContained!1396 tokens!494 lambda!122095 (h!42635 (t!275060 tokens!494))) lt!1183353)))

(declare-fun b!3476571 () Bool)

(declare-fun contains!6927 (List!37339 Token!10264) Bool)

(assert (=> b!3476571 (= e!2153383 (contains!6927 tokens!494 (h!42635 (t!275060 tokens!494))))))

(assert (= (and d!1004016 res!1402459) b!3476571))

(declare-fun b_lambda!100415 () Bool)

(assert (=> (not b_lambda!100415) (not d!1004016)))

(declare-fun m!3891513 () Bool)

(assert (=> d!1004016 m!3891513))

(declare-fun m!3891515 () Bool)

(assert (=> d!1004016 m!3891515))

(declare-fun m!3891517 () Bool)

(assert (=> d!1004016 m!3891517))

(declare-fun m!3891519 () Bool)

(assert (=> b!3476571 m!3891519))

(assert (=> b!3475968 d!1004016))

(declare-fun d!1004018 () Bool)

(declare-fun dynLambda!15732 (Int BalanceConc!22160) TokenValue!5679)

(assert (=> d!1004018 (= (apply!8791 (transformation!5449 (rule!8047 (h!42635 tokens!494))) lt!1183024) (dynLambda!15732 (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) lt!1183024))))

(declare-fun b_lambda!100417 () Bool)

(assert (=> (not b_lambda!100417) (not d!1004018)))

(declare-fun t!275107 () Bool)

(declare-fun tb!190581 () Bool)

(assert (=> (and b!3475961 (= (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494))))) t!275107) tb!190581))

(declare-fun result!234656 () Bool)

(assert (=> tb!190581 (= result!234656 (inv!21 (dynLambda!15732 (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) lt!1183024)))))

(declare-fun m!3891521 () Bool)

(assert (=> tb!190581 m!3891521))

(assert (=> d!1004018 t!275107))

(declare-fun b_and!245213 () Bool)

(assert (= b_and!245159 (and (=> t!275107 result!234656) b_and!245213)))

(declare-fun tb!190583 () Bool)

(declare-fun t!275109 () Bool)

(assert (=> (and b!3475953 (= (toValue!7685 (transformation!5449 (rule!8047 separatorToken!241))) (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494))))) t!275109) tb!190583))

(declare-fun result!234660 () Bool)

(assert (= result!234660 result!234656))

(assert (=> d!1004018 t!275109))

(declare-fun b_and!245215 () Bool)

(assert (= b_and!245163 (and (=> t!275109 result!234660) b_and!245215)))

(declare-fun tb!190585 () Bool)

(declare-fun t!275111 () Bool)

(assert (=> (and b!3475991 (= (toValue!7685 (transformation!5449 (h!42634 rules!2135))) (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494))))) t!275111) tb!190585))

(declare-fun result!234662 () Bool)

(assert (= result!234662 result!234656))

(assert (=> d!1004018 t!275111))

(declare-fun b_and!245217 () Bool)

(assert (= b_and!245167 (and (=> t!275111 result!234662) b_and!245217)))

(declare-fun m!3891523 () Bool)

(assert (=> d!1004018 m!3891523))

(assert (=> b!3475968 d!1004018))

(declare-fun d!1004020 () Bool)

(declare-fun res!1402470 () Bool)

(declare-fun e!2153395 () Bool)

(assert (=> d!1004020 (=> (not res!1402470) (not e!2153395))))

(assert (=> d!1004020 (= res!1402470 (not (isEmpty!21590 (originalCharacters!6163 (h!42635 tokens!494)))))))

(assert (=> d!1004020 (= (inv!50406 (h!42635 tokens!494)) e!2153395)))

(declare-fun b!3476588 () Bool)

(declare-fun res!1402471 () Bool)

(assert (=> b!3476588 (=> (not res!1402471) (not e!2153395))))

(assert (=> b!3476588 (= res!1402471 (= (originalCharacters!6163 (h!42635 tokens!494)) (list!13566 (dynLambda!15729 (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (value!175758 (h!42635 tokens!494))))))))

(declare-fun b!3476589 () Bool)

(assert (=> b!3476589 (= e!2153395 (= (size!28250 (h!42635 tokens!494)) (size!28252 (originalCharacters!6163 (h!42635 tokens!494)))))))

(assert (= (and d!1004020 res!1402470) b!3476588))

(assert (= (and b!3476588 res!1402471) b!3476589))

(declare-fun b_lambda!100419 () Bool)

(assert (=> (not b_lambda!100419) (not b!3476588)))

(declare-fun t!275113 () Bool)

(declare-fun tb!190587 () Bool)

(assert (=> (and b!3475961 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494))))) t!275113) tb!190587))

(declare-fun b!3476590 () Bool)

(declare-fun e!2153396 () Bool)

(declare-fun tp!1080491 () Bool)

(assert (=> b!3476590 (= e!2153396 (and (inv!50409 (c!596148 (dynLambda!15729 (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (value!175758 (h!42635 tokens!494))))) tp!1080491))))

(declare-fun result!234664 () Bool)

(assert (=> tb!190587 (= result!234664 (and (inv!50410 (dynLambda!15729 (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (value!175758 (h!42635 tokens!494)))) e!2153396))))

(assert (= tb!190587 b!3476590))

(declare-fun m!3891525 () Bool)

(assert (=> b!3476590 m!3891525))

(declare-fun m!3891527 () Bool)

(assert (=> tb!190587 m!3891527))

(assert (=> b!3476588 t!275113))

(declare-fun b_and!245219 () Bool)

(assert (= b_and!245195 (and (=> t!275113 result!234664) b_and!245219)))

(declare-fun t!275115 () Bool)

(declare-fun tb!190589 () Bool)

(assert (=> (and b!3475953 (= (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494))))) t!275115) tb!190589))

(declare-fun result!234666 () Bool)

(assert (= result!234666 result!234664))

(assert (=> b!3476588 t!275115))

(declare-fun b_and!245221 () Bool)

(assert (= b_and!245197 (and (=> t!275115 result!234666) b_and!245221)))

(declare-fun t!275117 () Bool)

(declare-fun tb!190591 () Bool)

(assert (=> (and b!3475991 (= (toChars!7544 (transformation!5449 (h!42634 rules!2135))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494))))) t!275117) tb!190591))

(declare-fun result!234668 () Bool)

(assert (= result!234668 result!234664))

(assert (=> b!3476588 t!275117))

(declare-fun b_and!245223 () Bool)

(assert (= b_and!245199 (and (=> t!275117 result!234668) b_and!245223)))

(declare-fun m!3891529 () Bool)

(assert (=> d!1004020 m!3891529))

(declare-fun m!3891531 () Bool)

(assert (=> b!3476588 m!3891531))

(assert (=> b!3476588 m!3891531))

(declare-fun m!3891533 () Bool)

(assert (=> b!3476588 m!3891533))

(declare-fun m!3891535 () Bool)

(assert (=> b!3476589 m!3891535))

(assert (=> b!3475993 d!1004020))

(declare-fun d!1004022 () Bool)

(declare-fun lt!1183357 () Bool)

(assert (=> d!1004022 (= lt!1183357 (set.member (head!7336 lt!1183028) (content!5206 lt!1183026)))))

(declare-fun e!2153400 () Bool)

(assert (=> d!1004022 (= lt!1183357 e!2153400)))

(declare-fun res!1402476 () Bool)

(assert (=> d!1004022 (=> (not res!1402476) (not e!2153400))))

(assert (=> d!1004022 (= res!1402476 (is-Cons!37213 lt!1183026))))

(assert (=> d!1004022 (= (contains!6924 lt!1183026 (head!7336 lt!1183028)) lt!1183357)))

(declare-fun b!3476596 () Bool)

(declare-fun e!2153401 () Bool)

(assert (=> b!3476596 (= e!2153400 e!2153401)))

(declare-fun res!1402475 () Bool)

(assert (=> b!3476596 (=> res!1402475 e!2153401)))

(assert (=> b!3476596 (= res!1402475 (= (h!42633 lt!1183026) (head!7336 lt!1183028)))))

(declare-fun b!3476597 () Bool)

(assert (=> b!3476597 (= e!2153401 (contains!6924 (t!275058 lt!1183026) (head!7336 lt!1183028)))))

(assert (= (and d!1004022 res!1402476) b!3476596))

(assert (= (and b!3476596 (not res!1402475)) b!3476597))

(assert (=> d!1004022 m!3891283))

(assert (=> d!1004022 m!3890573))

(declare-fun m!3891537 () Bool)

(assert (=> d!1004022 m!3891537))

(assert (=> b!3476597 m!3890573))

(declare-fun m!3891539 () Bool)

(assert (=> b!3476597 m!3891539))

(assert (=> b!3475971 d!1004022))

(declare-fun d!1004024 () Bool)

(assert (=> d!1004024 (= (head!7336 lt!1183028) (h!42633 lt!1183028))))

(assert (=> b!3475971 d!1004024))

(declare-fun bs!561722 () Bool)

(declare-fun d!1004026 () Bool)

(assert (= bs!561722 (and d!1004026 b!3475960)))

(declare-fun lambda!122110 () Int)

(assert (=> bs!561722 (not (= lambda!122110 lambda!122094))))

(declare-fun bs!561723 () Bool)

(assert (= bs!561723 (and d!1004026 b!3475968)))

(assert (=> bs!561723 (= lambda!122110 lambda!122095)))

(declare-fun b!3476609 () Bool)

(declare-fun e!2153410 () Bool)

(assert (=> b!3476609 (= e!2153410 true)))

(declare-fun b!3476608 () Bool)

(declare-fun e!2153409 () Bool)

(assert (=> b!3476608 (= e!2153409 e!2153410)))

(declare-fun b!3476607 () Bool)

(declare-fun e!2153408 () Bool)

(assert (=> b!3476607 (= e!2153408 e!2153409)))

(assert (=> d!1004026 e!2153408))

(assert (= b!3476608 b!3476609))

(assert (= b!3476607 b!3476608))

(assert (= (and d!1004026 (is-Cons!37214 rules!2135)) b!3476607))

(assert (=> b!3476609 (< (dynLambda!15723 order!19879 (toValue!7685 (transformation!5449 (h!42634 rules!2135)))) (dynLambda!15724 order!19881 lambda!122110))))

(assert (=> b!3476609 (< (dynLambda!15725 order!19883 (toChars!7544 (transformation!5449 (h!42634 rules!2135)))) (dynLambda!15724 order!19881 lambda!122110))))

(assert (=> d!1004026 true))

(declare-fun e!2153407 () Bool)

(assert (=> d!1004026 e!2153407))

(declare-fun res!1402485 () Bool)

(assert (=> d!1004026 (=> (not res!1402485) (not e!2153407))))

(declare-fun lt!1183363 () Bool)

(assert (=> d!1004026 (= res!1402485 (= lt!1183363 (forall!7952 (list!13568 (seqFromList!3952 tokens!494)) lambda!122110)))))

(declare-fun forall!7954 (BalanceConc!22162 Int) Bool)

(assert (=> d!1004026 (= lt!1183363 (forall!7954 (seqFromList!3952 tokens!494) lambda!122110))))

(assert (=> d!1004026 (not (isEmpty!21591 rules!2135))))

(assert (=> d!1004026 (= (rulesProduceEachTokenIndividually!1489 thiss!18206 rules!2135 (seqFromList!3952 tokens!494)) lt!1183363)))

(declare-fun b!3476606 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1862 (LexerInterface!5038 List!37338 List!37339) Bool)

(assert (=> b!3476606 (= e!2153407 (= lt!1183363 (rulesProduceEachTokenIndividuallyList!1862 thiss!18206 rules!2135 (list!13568 (seqFromList!3952 tokens!494)))))))

(assert (= (and d!1004026 res!1402485) b!3476606))

(assert (=> d!1004026 m!3890587))

(declare-fun m!3891567 () Bool)

(assert (=> d!1004026 m!3891567))

(assert (=> d!1004026 m!3891567))

(declare-fun m!3891569 () Bool)

(assert (=> d!1004026 m!3891569))

(assert (=> d!1004026 m!3890587))

(declare-fun m!3891571 () Bool)

(assert (=> d!1004026 m!3891571))

(assert (=> d!1004026 m!3890515))

(assert (=> b!3476606 m!3890587))

(assert (=> b!3476606 m!3891567))

(assert (=> b!3476606 m!3891567))

(declare-fun m!3891573 () Bool)

(assert (=> b!3476606 m!3891573))

(assert (=> b!3475992 d!1004026))

(declare-fun d!1004032 () Bool)

(declare-fun fromListB!1796 (List!37339) BalanceConc!22162)

(assert (=> d!1004032 (= (seqFromList!3952 tokens!494) (fromListB!1796 tokens!494))))

(declare-fun bs!561724 () Bool)

(assert (= bs!561724 d!1004032))

(declare-fun m!3891575 () Bool)

(assert (=> bs!561724 m!3891575))

(assert (=> b!3475992 d!1004032))

(declare-fun d!1004034 () Bool)

(assert (=> d!1004034 (= (isEmpty!21591 rules!2135) (is-Nil!37214 rules!2135))))

(assert (=> b!3475962 d!1004034))

(declare-fun b!3476658 () Bool)

(declare-fun e!2153447 () Bool)

(assert (=> b!3476658 (= e!2153447 (= (head!7336 lt!1183017) (c!596147 (regex!5449 lt!1183033))))))

(declare-fun bm!250823 () Bool)

(declare-fun call!250828 () Bool)

(assert (=> bm!250823 (= call!250828 (isEmpty!21590 lt!1183017))))

(declare-fun b!3476659 () Bool)

(declare-fun e!2153445 () Bool)

(declare-fun e!2153444 () Bool)

(assert (=> b!3476659 (= e!2153445 e!2153444)))

(declare-fun res!1402524 () Bool)

(assert (=> b!3476659 (=> res!1402524 e!2153444)))

(assert (=> b!3476659 (= res!1402524 call!250828)))

(declare-fun b!3476660 () Bool)

(declare-fun res!1402528 () Bool)

(assert (=> b!3476660 (=> (not res!1402528) (not e!2153447))))

(declare-fun tail!5449 (List!37337) List!37337)

(assert (=> b!3476660 (= res!1402528 (isEmpty!21590 (tail!5449 lt!1183017)))))

(declare-fun b!3476661 () Bool)

(declare-fun e!2153442 () Bool)

(declare-fun e!2153441 () Bool)

(assert (=> b!3476661 (= e!2153442 e!2153441)))

(declare-fun c!596275 () Bool)

(assert (=> b!3476661 (= c!596275 (is-EmptyLang!10208 (regex!5449 lt!1183033)))))

(declare-fun d!1004036 () Bool)

(assert (=> d!1004036 e!2153442))

(declare-fun c!596273 () Bool)

(assert (=> d!1004036 (= c!596273 (is-EmptyExpr!10208 (regex!5449 lt!1183033)))))

(declare-fun lt!1183380 () Bool)

(declare-fun e!2153446 () Bool)

(assert (=> d!1004036 (= lt!1183380 e!2153446)))

(declare-fun c!596274 () Bool)

(assert (=> d!1004036 (= c!596274 (isEmpty!21590 lt!1183017))))

(declare-fun validRegex!4652 (Regex!10208) Bool)

(assert (=> d!1004036 (validRegex!4652 (regex!5449 lt!1183033))))

(assert (=> d!1004036 (= (matchR!4792 (regex!5449 lt!1183033) lt!1183017) lt!1183380)))

(declare-fun b!3476662 () Bool)

(assert (=> b!3476662 (= e!2153441 (not lt!1183380))))

(declare-fun b!3476663 () Bool)

(assert (=> b!3476663 (= e!2153444 (not (= (head!7336 lt!1183017) (c!596147 (regex!5449 lt!1183033)))))))

(declare-fun b!3476664 () Bool)

(declare-fun res!1402527 () Bool)

(declare-fun e!2153443 () Bool)

(assert (=> b!3476664 (=> res!1402527 e!2153443)))

(assert (=> b!3476664 (= res!1402527 e!2153447)))

(declare-fun res!1402525 () Bool)

(assert (=> b!3476664 (=> (not res!1402525) (not e!2153447))))

(assert (=> b!3476664 (= res!1402525 lt!1183380)))

(declare-fun b!3476665 () Bool)

(assert (=> b!3476665 (= e!2153443 e!2153445)))

(declare-fun res!1402523 () Bool)

(assert (=> b!3476665 (=> (not res!1402523) (not e!2153445))))

(assert (=> b!3476665 (= res!1402523 (not lt!1183380))))

(declare-fun b!3476666 () Bool)

(declare-fun res!1402522 () Bool)

(assert (=> b!3476666 (=> res!1402522 e!2153443)))

(assert (=> b!3476666 (= res!1402522 (not (is-ElementMatch!10208 (regex!5449 lt!1183033))))))

(assert (=> b!3476666 (= e!2153441 e!2153443)))

(declare-fun b!3476667 () Bool)

(declare-fun res!1402529 () Bool)

(assert (=> b!3476667 (=> res!1402529 e!2153444)))

(assert (=> b!3476667 (= res!1402529 (not (isEmpty!21590 (tail!5449 lt!1183017))))))

(declare-fun b!3476668 () Bool)

(assert (=> b!3476668 (= e!2153442 (= lt!1183380 call!250828))))

(declare-fun b!3476669 () Bool)

(declare-fun res!1402526 () Bool)

(assert (=> b!3476669 (=> (not res!1402526) (not e!2153447))))

(assert (=> b!3476669 (= res!1402526 (not call!250828))))

(declare-fun b!3476670 () Bool)

(declare-fun derivativeStep!3049 (Regex!10208 C!20602) Regex!10208)

(assert (=> b!3476670 (= e!2153446 (matchR!4792 (derivativeStep!3049 (regex!5449 lt!1183033) (head!7336 lt!1183017)) (tail!5449 lt!1183017)))))

(declare-fun b!3476671 () Bool)

(declare-fun nullable!3496 (Regex!10208) Bool)

(assert (=> b!3476671 (= e!2153446 (nullable!3496 (regex!5449 lt!1183033)))))

(assert (= (and d!1004036 c!596274) b!3476671))

(assert (= (and d!1004036 (not c!596274)) b!3476670))

(assert (= (and d!1004036 c!596273) b!3476668))

(assert (= (and d!1004036 (not c!596273)) b!3476661))

(assert (= (and b!3476661 c!596275) b!3476662))

(assert (= (and b!3476661 (not c!596275)) b!3476666))

(assert (= (and b!3476666 (not res!1402522)) b!3476664))

(assert (= (and b!3476664 res!1402525) b!3476669))

(assert (= (and b!3476669 res!1402526) b!3476660))

(assert (= (and b!3476660 res!1402528) b!3476658))

(assert (= (and b!3476664 (not res!1402527)) b!3476665))

(assert (= (and b!3476665 res!1402523) b!3476659))

(assert (= (and b!3476659 (not res!1402524)) b!3476667))

(assert (= (and b!3476667 (not res!1402529)) b!3476663))

(assert (= (or b!3476668 b!3476659 b!3476669) bm!250823))

(declare-fun m!3891635 () Bool)

(assert (=> b!3476660 m!3891635))

(assert (=> b!3476660 m!3891635))

(declare-fun m!3891637 () Bool)

(assert (=> b!3476660 m!3891637))

(declare-fun m!3891639 () Bool)

(assert (=> d!1004036 m!3891639))

(declare-fun m!3891641 () Bool)

(assert (=> d!1004036 m!3891641))

(declare-fun m!3891643 () Bool)

(assert (=> b!3476663 m!3891643))

(assert (=> b!3476667 m!3891635))

(assert (=> b!3476667 m!3891635))

(assert (=> b!3476667 m!3891637))

(assert (=> bm!250823 m!3891639))

(declare-fun m!3891645 () Bool)

(assert (=> b!3476671 m!3891645))

(assert (=> b!3476658 m!3891643))

(assert (=> b!3476670 m!3891643))

(assert (=> b!3476670 m!3891643))

(declare-fun m!3891647 () Bool)

(assert (=> b!3476670 m!3891647))

(assert (=> b!3476670 m!3891635))

(assert (=> b!3476670 m!3891647))

(assert (=> b!3476670 m!3891635))

(declare-fun m!3891649 () Bool)

(assert (=> b!3476670 m!3891649))

(assert (=> b!3475983 d!1004036))

(declare-fun d!1004058 () Bool)

(assert (=> d!1004058 (= (get!11922 lt!1183014) (v!36914 lt!1183014))))

(assert (=> b!3475983 d!1004058))

(declare-fun d!1004060 () Bool)

(declare-fun res!1402530 () Bool)

(declare-fun e!2153448 () Bool)

(assert (=> d!1004060 (=> (not res!1402530) (not e!2153448))))

(assert (=> d!1004060 (= res!1402530 (not (isEmpty!21590 (originalCharacters!6163 separatorToken!241))))))

(assert (=> d!1004060 (= (inv!50406 separatorToken!241) e!2153448)))

(declare-fun b!3476672 () Bool)

(declare-fun res!1402531 () Bool)

(assert (=> b!3476672 (=> (not res!1402531) (not e!2153448))))

(assert (=> b!3476672 (= res!1402531 (= (originalCharacters!6163 separatorToken!241) (list!13566 (dynLambda!15729 (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (value!175758 separatorToken!241)))))))

(declare-fun b!3476673 () Bool)

(assert (=> b!3476673 (= e!2153448 (= (size!28250 separatorToken!241) (size!28252 (originalCharacters!6163 separatorToken!241))))))

(assert (= (and d!1004060 res!1402530) b!3476672))

(assert (= (and b!3476672 res!1402531) b!3476673))

(declare-fun b_lambda!100421 () Bool)

(assert (=> (not b_lambda!100421) (not b!3476672)))

(assert (=> b!3476672 t!275080))

(declare-fun b_and!245225 () Bool)

(assert (= b_and!245219 (and (=> t!275080 result!234628) b_and!245225)))

(assert (=> b!3476672 t!275082))

(declare-fun b_and!245227 () Bool)

(assert (= b_and!245221 (and (=> t!275082 result!234632) b_and!245227)))

(assert (=> b!3476672 t!275084))

(declare-fun b_and!245229 () Bool)

(assert (= b_and!245223 (and (=> t!275084 result!234634) b_and!245229)))

(declare-fun m!3891651 () Bool)

(assert (=> d!1004060 m!3891651))

(assert (=> b!3476672 m!3890977))

(assert (=> b!3476672 m!3890977))

(declare-fun m!3891653 () Bool)

(assert (=> b!3476672 m!3891653))

(declare-fun m!3891655 () Bool)

(assert (=> b!3476673 m!3891655))

(assert (=> start!323320 d!1004060))

(declare-fun d!1004062 () Bool)

(assert (=> d!1004062 (= (inv!50402 (tag!6065 (h!42634 rules!2135))) (= (mod (str.len (value!175757 (tag!6065 (h!42634 rules!2135)))) 2) 0))))

(assert (=> b!3475985 d!1004062))

(declare-fun d!1004064 () Bool)

(declare-fun res!1402534 () Bool)

(declare-fun e!2153451 () Bool)

(assert (=> d!1004064 (=> (not res!1402534) (not e!2153451))))

(declare-fun semiInverseModEq!2291 (Int Int) Bool)

(assert (=> d!1004064 (= res!1402534 (semiInverseModEq!2291 (toChars!7544 (transformation!5449 (h!42634 rules!2135))) (toValue!7685 (transformation!5449 (h!42634 rules!2135)))))))

(assert (=> d!1004064 (= (inv!50405 (transformation!5449 (h!42634 rules!2135))) e!2153451)))

(declare-fun b!3476676 () Bool)

(declare-fun equivClasses!2190 (Int Int) Bool)

(assert (=> b!3476676 (= e!2153451 (equivClasses!2190 (toChars!7544 (transformation!5449 (h!42634 rules!2135))) (toValue!7685 (transformation!5449 (h!42634 rules!2135)))))))

(assert (= (and d!1004064 res!1402534) b!3476676))

(declare-fun m!3891657 () Bool)

(assert (=> d!1004064 m!3891657))

(declare-fun m!3891659 () Bool)

(assert (=> b!3476676 m!3891659))

(assert (=> b!3475985 d!1004064))

(declare-fun b!3476677 () Bool)

(declare-fun e!2153458 () Bool)

(assert (=> b!3476677 (= e!2153458 (= (head!7336 lt!1183017) (c!596147 (regex!5449 (rule!8047 (h!42635 tokens!494))))))))

(declare-fun bm!250824 () Bool)

(declare-fun call!250829 () Bool)

(assert (=> bm!250824 (= call!250829 (isEmpty!21590 lt!1183017))))

(declare-fun b!3476678 () Bool)

(declare-fun e!2153456 () Bool)

(declare-fun e!2153455 () Bool)

(assert (=> b!3476678 (= e!2153456 e!2153455)))

(declare-fun res!1402537 () Bool)

(assert (=> b!3476678 (=> res!1402537 e!2153455)))

(assert (=> b!3476678 (= res!1402537 call!250829)))

(declare-fun b!3476679 () Bool)

(declare-fun res!1402541 () Bool)

(assert (=> b!3476679 (=> (not res!1402541) (not e!2153458))))

(assert (=> b!3476679 (= res!1402541 (isEmpty!21590 (tail!5449 lt!1183017)))))

(declare-fun b!3476680 () Bool)

(declare-fun e!2153453 () Bool)

(declare-fun e!2153452 () Bool)

(assert (=> b!3476680 (= e!2153453 e!2153452)))

(declare-fun c!596278 () Bool)

(assert (=> b!3476680 (= c!596278 (is-EmptyLang!10208 (regex!5449 (rule!8047 (h!42635 tokens!494)))))))

(declare-fun d!1004066 () Bool)

(assert (=> d!1004066 e!2153453))

(declare-fun c!596276 () Bool)

(assert (=> d!1004066 (= c!596276 (is-EmptyExpr!10208 (regex!5449 (rule!8047 (h!42635 tokens!494)))))))

(declare-fun lt!1183381 () Bool)

(declare-fun e!2153457 () Bool)

(assert (=> d!1004066 (= lt!1183381 e!2153457)))

(declare-fun c!596277 () Bool)

(assert (=> d!1004066 (= c!596277 (isEmpty!21590 lt!1183017))))

(assert (=> d!1004066 (validRegex!4652 (regex!5449 (rule!8047 (h!42635 tokens!494))))))

(assert (=> d!1004066 (= (matchR!4792 (regex!5449 (rule!8047 (h!42635 tokens!494))) lt!1183017) lt!1183381)))

(declare-fun b!3476681 () Bool)

(assert (=> b!3476681 (= e!2153452 (not lt!1183381))))

(declare-fun b!3476682 () Bool)

(assert (=> b!3476682 (= e!2153455 (not (= (head!7336 lt!1183017) (c!596147 (regex!5449 (rule!8047 (h!42635 tokens!494)))))))))

(declare-fun b!3476683 () Bool)

(declare-fun res!1402540 () Bool)

(declare-fun e!2153454 () Bool)

(assert (=> b!3476683 (=> res!1402540 e!2153454)))

(assert (=> b!3476683 (= res!1402540 e!2153458)))

(declare-fun res!1402538 () Bool)

(assert (=> b!3476683 (=> (not res!1402538) (not e!2153458))))

(assert (=> b!3476683 (= res!1402538 lt!1183381)))

(declare-fun b!3476684 () Bool)

(assert (=> b!3476684 (= e!2153454 e!2153456)))

(declare-fun res!1402536 () Bool)

(assert (=> b!3476684 (=> (not res!1402536) (not e!2153456))))

(assert (=> b!3476684 (= res!1402536 (not lt!1183381))))

(declare-fun b!3476685 () Bool)

(declare-fun res!1402535 () Bool)

(assert (=> b!3476685 (=> res!1402535 e!2153454)))

(assert (=> b!3476685 (= res!1402535 (not (is-ElementMatch!10208 (regex!5449 (rule!8047 (h!42635 tokens!494))))))))

(assert (=> b!3476685 (= e!2153452 e!2153454)))

(declare-fun b!3476686 () Bool)

(declare-fun res!1402542 () Bool)

(assert (=> b!3476686 (=> res!1402542 e!2153455)))

(assert (=> b!3476686 (= res!1402542 (not (isEmpty!21590 (tail!5449 lt!1183017))))))

(declare-fun b!3476687 () Bool)

(assert (=> b!3476687 (= e!2153453 (= lt!1183381 call!250829))))

(declare-fun b!3476688 () Bool)

(declare-fun res!1402539 () Bool)

(assert (=> b!3476688 (=> (not res!1402539) (not e!2153458))))

(assert (=> b!3476688 (= res!1402539 (not call!250829))))

(declare-fun b!3476689 () Bool)

(assert (=> b!3476689 (= e!2153457 (matchR!4792 (derivativeStep!3049 (regex!5449 (rule!8047 (h!42635 tokens!494))) (head!7336 lt!1183017)) (tail!5449 lt!1183017)))))

(declare-fun b!3476690 () Bool)

(assert (=> b!3476690 (= e!2153457 (nullable!3496 (regex!5449 (rule!8047 (h!42635 tokens!494)))))))

(assert (= (and d!1004066 c!596277) b!3476690))

(assert (= (and d!1004066 (not c!596277)) b!3476689))

(assert (= (and d!1004066 c!596276) b!3476687))

(assert (= (and d!1004066 (not c!596276)) b!3476680))

(assert (= (and b!3476680 c!596278) b!3476681))

(assert (= (and b!3476680 (not c!596278)) b!3476685))

(assert (= (and b!3476685 (not res!1402535)) b!3476683))

(assert (= (and b!3476683 res!1402538) b!3476688))

(assert (= (and b!3476688 res!1402539) b!3476679))

(assert (= (and b!3476679 res!1402541) b!3476677))

(assert (= (and b!3476683 (not res!1402540)) b!3476684))

(assert (= (and b!3476684 res!1402536) b!3476678))

(assert (= (and b!3476678 (not res!1402537)) b!3476686))

(assert (= (and b!3476686 (not res!1402542)) b!3476682))

(assert (= (or b!3476687 b!3476678 b!3476688) bm!250824))

(assert (=> b!3476679 m!3891635))

(assert (=> b!3476679 m!3891635))

(assert (=> b!3476679 m!3891637))

(assert (=> d!1004066 m!3891639))

(declare-fun m!3891661 () Bool)

(assert (=> d!1004066 m!3891661))

(assert (=> b!3476682 m!3891643))

(assert (=> b!3476686 m!3891635))

(assert (=> b!3476686 m!3891635))

(assert (=> b!3476686 m!3891637))

(assert (=> bm!250824 m!3891639))

(declare-fun m!3891663 () Bool)

(assert (=> b!3476690 m!3891663))

(assert (=> b!3476677 m!3891643))

(assert (=> b!3476689 m!3891643))

(assert (=> b!3476689 m!3891643))

(declare-fun m!3891665 () Bool)

(assert (=> b!3476689 m!3891665))

(assert (=> b!3476689 m!3891635))

(assert (=> b!3476689 m!3891665))

(assert (=> b!3476689 m!3891635))

(declare-fun m!3891667 () Bool)

(assert (=> b!3476689 m!3891667))

(assert (=> b!3475963 d!1004066))

(declare-fun d!1004068 () Bool)

(declare-fun res!1402548 () Bool)

(declare-fun e!2153463 () Bool)

(assert (=> d!1004068 (=> (not res!1402548) (not e!2153463))))

(assert (=> d!1004068 (= res!1402548 (validRegex!4652 (regex!5449 (rule!8047 (h!42635 tokens!494)))))))

(assert (=> d!1004068 (= (ruleValid!1747 thiss!18206 (rule!8047 (h!42635 tokens!494))) e!2153463)))

(declare-fun b!3476698 () Bool)

(declare-fun res!1402549 () Bool)

(assert (=> b!3476698 (=> (not res!1402549) (not e!2153463))))

(assert (=> b!3476698 (= res!1402549 (not (nullable!3496 (regex!5449 (rule!8047 (h!42635 tokens!494))))))))

(declare-fun b!3476699 () Bool)

(assert (=> b!3476699 (= e!2153463 (not (= (tag!6065 (rule!8047 (h!42635 tokens!494))) (String!41732 ""))))))

(assert (= (and d!1004068 res!1402548) b!3476698))

(assert (= (and b!3476698 res!1402549) b!3476699))

(assert (=> d!1004068 m!3891661))

(assert (=> b!3476698 m!3891663))

(assert (=> b!3475963 d!1004068))

(declare-fun d!1004072 () Bool)

(assert (=> d!1004072 (ruleValid!1747 thiss!18206 (rule!8047 (h!42635 tokens!494)))))

(declare-fun lt!1183395 () Unit!52643)

(declare-fun choose!20123 (LexerInterface!5038 Rule!10698 List!37338) Unit!52643)

(assert (=> d!1004072 (= lt!1183395 (choose!20123 thiss!18206 (rule!8047 (h!42635 tokens!494)) rules!2135))))

(assert (=> d!1004072 (contains!6923 rules!2135 (rule!8047 (h!42635 tokens!494)))))

(assert (=> d!1004072 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!947 thiss!18206 (rule!8047 (h!42635 tokens!494)) rules!2135) lt!1183395)))

(declare-fun bs!561730 () Bool)

(assert (= bs!561730 d!1004072))

(assert (=> bs!561730 m!3890505))

(declare-fun m!3891723 () Bool)

(assert (=> bs!561730 m!3891723))

(assert (=> bs!561730 m!3890627))

(assert (=> b!3475963 d!1004072))

(declare-fun d!1004078 () Bool)

(declare-fun lt!1183398 () Bool)

(declare-fun isEmpty!21602 (List!37339) Bool)

(assert (=> d!1004078 (= lt!1183398 (isEmpty!21602 (list!13568 (_1!21616 (lex!2364 thiss!18206 rules!2135 lt!1183024)))))))

(declare-fun isEmpty!21603 (Conc!11274) Bool)

(assert (=> d!1004078 (= lt!1183398 (isEmpty!21603 (c!596149 (_1!21616 (lex!2364 thiss!18206 rules!2135 lt!1183024)))))))

(assert (=> d!1004078 (= (isEmpty!21592 (_1!21616 (lex!2364 thiss!18206 rules!2135 lt!1183024))) lt!1183398)))

(declare-fun bs!561731 () Bool)

(assert (= bs!561731 d!1004078))

(declare-fun m!3891725 () Bool)

(assert (=> bs!561731 m!3891725))

(assert (=> bs!561731 m!3891725))

(declare-fun m!3891727 () Bool)

(assert (=> bs!561731 m!3891727))

(declare-fun m!3891729 () Bool)

(assert (=> bs!561731 m!3891729))

(assert (=> b!3475965 d!1004078))

(declare-fun b!3476713 () Bool)

(declare-fun res!1402553 () Bool)

(declare-fun e!2153474 () Bool)

(assert (=> b!3476713 (=> (not res!1402553) (not e!2153474))))

(declare-fun lt!1183399 () tuple2!36964)

(assert (=> b!3476713 (= res!1402553 (= (list!13568 (_1!21616 lt!1183399)) (_1!21621 (lexList!1455 thiss!18206 rules!2135 (list!13566 lt!1183024)))))))

(declare-fun d!1004082 () Bool)

(assert (=> d!1004082 e!2153474))

(declare-fun res!1402555 () Bool)

(assert (=> d!1004082 (=> (not res!1402555) (not e!2153474))))

(declare-fun e!2153475 () Bool)

(assert (=> d!1004082 (= res!1402555 e!2153475)))

(declare-fun c!596285 () Bool)

(assert (=> d!1004082 (= c!596285 (> (size!28251 (_1!21616 lt!1183399)) 0))))

(assert (=> d!1004082 (= lt!1183399 (lexTailRecV2!1063 thiss!18206 rules!2135 lt!1183024 (BalanceConc!22161 Empty!11273) lt!1183024 (BalanceConc!22163 Empty!11274)))))

(assert (=> d!1004082 (= (lex!2364 thiss!18206 rules!2135 lt!1183024) lt!1183399)))

(declare-fun b!3476716 () Bool)

(assert (=> b!3476716 (= e!2153474 (= (list!13566 (_2!21616 lt!1183399)) (_2!21621 (lexList!1455 thiss!18206 rules!2135 (list!13566 lt!1183024)))))))

(declare-fun b!3476717 () Bool)

(declare-fun e!2153471 () Bool)

(assert (=> b!3476717 (= e!2153471 (not (isEmpty!21592 (_1!21616 lt!1183399))))))

(declare-fun b!3476718 () Bool)

(assert (=> b!3476718 (= e!2153475 e!2153471)))

(declare-fun res!1402554 () Bool)

(assert (=> b!3476718 (= res!1402554 (< (size!28258 (_2!21616 lt!1183399)) (size!28258 lt!1183024)))))

(assert (=> b!3476718 (=> (not res!1402554) (not e!2153471))))

(declare-fun b!3476719 () Bool)

(assert (=> b!3476719 (= e!2153475 (= (_2!21616 lt!1183399) lt!1183024))))

(assert (= (and d!1004082 c!596285) b!3476718))

(assert (= (and d!1004082 (not c!596285)) b!3476719))

(assert (= (and b!3476718 res!1402554) b!3476717))

(assert (= (and d!1004082 res!1402555) b!3476713))

(assert (= (and b!3476713 res!1402553) b!3476716))

(declare-fun m!3891731 () Bool)

(assert (=> b!3476716 m!3891731))

(declare-fun m!3891733 () Bool)

(assert (=> b!3476716 m!3891733))

(assert (=> b!3476716 m!3891733))

(declare-fun m!3891735 () Bool)

(assert (=> b!3476716 m!3891735))

(declare-fun m!3891737 () Bool)

(assert (=> b!3476717 m!3891737))

(declare-fun m!3891739 () Bool)

(assert (=> b!3476713 m!3891739))

(assert (=> b!3476713 m!3891733))

(assert (=> b!3476713 m!3891733))

(assert (=> b!3476713 m!3891735))

(declare-fun m!3891741 () Bool)

(assert (=> b!3476718 m!3891741))

(declare-fun m!3891743 () Bool)

(assert (=> b!3476718 m!3891743))

(declare-fun m!3891745 () Bool)

(assert (=> d!1004082 m!3891745))

(declare-fun m!3891747 () Bool)

(assert (=> d!1004082 m!3891747))

(assert (=> b!3475965 d!1004082))

(declare-fun d!1004084 () Bool)

(declare-fun fromListB!1797 (List!37337) BalanceConc!22160)

(assert (=> d!1004084 (= (seqFromList!3951 lt!1183017) (fromListB!1797 lt!1183017))))

(declare-fun bs!561732 () Bool)

(assert (= bs!561732 d!1004084))

(declare-fun m!3891755 () Bool)

(assert (=> bs!561732 m!3891755))

(assert (=> b!3475965 d!1004084))

(declare-fun d!1004088 () Bool)

(declare-fun lt!1183400 () Bool)

(assert (=> d!1004088 (= lt!1183400 (set.member (rule!8047 separatorToken!241) (content!5207 rules!2135)))))

(declare-fun e!2153480 () Bool)

(assert (=> d!1004088 (= lt!1183400 e!2153480)))

(declare-fun res!1402560 () Bool)

(assert (=> d!1004088 (=> (not res!1402560) (not e!2153480))))

(assert (=> d!1004088 (= res!1402560 (is-Cons!37214 rules!2135))))

(assert (=> d!1004088 (= (contains!6923 rules!2135 (rule!8047 separatorToken!241)) lt!1183400)))

(declare-fun b!3476725 () Bool)

(declare-fun e!2153479 () Bool)

(assert (=> b!3476725 (= e!2153480 e!2153479)))

(declare-fun res!1402559 () Bool)

(assert (=> b!3476725 (=> res!1402559 e!2153479)))

(assert (=> b!3476725 (= res!1402559 (= (h!42634 rules!2135) (rule!8047 separatorToken!241)))))

(declare-fun b!3476726 () Bool)

(assert (=> b!3476726 (= e!2153479 (contains!6923 (t!275059 rules!2135) (rule!8047 separatorToken!241)))))

(assert (= (and d!1004088 res!1402560) b!3476725))

(assert (= (and b!3476725 (not res!1402559)) b!3476726))

(assert (=> d!1004088 m!3891035))

(declare-fun m!3891757 () Bool)

(assert (=> d!1004088 m!3891757))

(declare-fun m!3891759 () Bool)

(assert (=> b!3476726 m!3891759))

(assert (=> b!3475986 d!1004088))

(declare-fun d!1004090 () Bool)

(declare-fun res!1402565 () Bool)

(declare-fun e!2153485 () Bool)

(assert (=> d!1004090 (=> res!1402565 e!2153485)))

(assert (=> d!1004090 (= res!1402565 (not (is-Cons!37214 rules!2135)))))

(assert (=> d!1004090 (= (sepAndNonSepRulesDisjointChars!1643 rules!2135 rules!2135) e!2153485)))

(declare-fun b!3476731 () Bool)

(declare-fun e!2153486 () Bool)

(assert (=> b!3476731 (= e!2153485 e!2153486)))

(declare-fun res!1402566 () Bool)

(assert (=> b!3476731 (=> (not res!1402566) (not e!2153486))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!726 (Rule!10698 List!37338) Bool)

(assert (=> b!3476731 (= res!1402566 (ruleDisjointCharsFromAllFromOtherType!726 (h!42634 rules!2135) rules!2135))))

(declare-fun b!3476732 () Bool)

(assert (=> b!3476732 (= e!2153486 (sepAndNonSepRulesDisjointChars!1643 rules!2135 (t!275059 rules!2135)))))

(assert (= (and d!1004090 (not res!1402565)) b!3476731))

(assert (= (and b!3476731 res!1402566) b!3476732))

(declare-fun m!3891761 () Bool)

(assert (=> b!3476731 m!3891761))

(declare-fun m!3891763 () Bool)

(assert (=> b!3476732 m!3891763))

(assert (=> b!3475964 d!1004090))

(declare-fun d!1004092 () Bool)

(assert (=> d!1004092 (= (inv!50402 (tag!6065 (rule!8047 (h!42635 tokens!494)))) (= (mod (str.len (value!175757 (tag!6065 (rule!8047 (h!42635 tokens!494))))) 2) 0))))

(assert (=> b!3475966 d!1004092))

(declare-fun d!1004094 () Bool)

(declare-fun res!1402567 () Bool)

(declare-fun e!2153487 () Bool)

(assert (=> d!1004094 (=> (not res!1402567) (not e!2153487))))

(assert (=> d!1004094 (= res!1402567 (semiInverseModEq!2291 (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494))))))))

(assert (=> d!1004094 (= (inv!50405 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) e!2153487)))

(declare-fun b!3476733 () Bool)

(assert (=> b!3476733 (= e!2153487 (equivClasses!2190 (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494))))))))

(assert (= (and d!1004094 res!1402567) b!3476733))

(declare-fun m!3891765 () Bool)

(assert (=> d!1004094 m!3891765))

(declare-fun m!3891767 () Bool)

(assert (=> b!3476733 m!3891767))

(assert (=> b!3475966 d!1004094))

(declare-fun d!1004096 () Bool)

(assert (=> d!1004096 (= (inv!50402 (tag!6065 (rule!8047 separatorToken!241))) (= (mod (str.len (value!175757 (tag!6065 (rule!8047 separatorToken!241)))) 2) 0))))

(assert (=> b!3475987 d!1004096))

(declare-fun d!1004098 () Bool)

(declare-fun res!1402568 () Bool)

(declare-fun e!2153488 () Bool)

(assert (=> d!1004098 (=> (not res!1402568) (not e!2153488))))

(assert (=> d!1004098 (= res!1402568 (semiInverseModEq!2291 (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (toValue!7685 (transformation!5449 (rule!8047 separatorToken!241)))))))

(assert (=> d!1004098 (= (inv!50405 (transformation!5449 (rule!8047 separatorToken!241))) e!2153488)))

(declare-fun b!3476734 () Bool)

(assert (=> b!3476734 (= e!2153488 (equivClasses!2190 (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (toValue!7685 (transformation!5449 (rule!8047 separatorToken!241)))))))

(assert (= (and d!1004098 res!1402568) b!3476734))

(declare-fun m!3891769 () Bool)

(assert (=> d!1004098 m!3891769))

(declare-fun m!3891771 () Bool)

(assert (=> b!3476734 m!3891771))

(assert (=> b!3475987 d!1004098))

(declare-fun d!1004100 () Bool)

(assert (=> d!1004100 (not (matchR!4792 (regex!5449 (rule!8047 separatorToken!241)) lt!1183007))))

(declare-fun lt!1183403 () Unit!52643)

(declare-fun choose!20125 (Regex!10208 List!37337 C!20602) Unit!52643)

(assert (=> d!1004100 (= lt!1183403 (choose!20125 (regex!5449 (rule!8047 separatorToken!241)) lt!1183007 lt!1183020))))

(assert (=> d!1004100 (validRegex!4652 (regex!5449 (rule!8047 separatorToken!241)))))

(assert (=> d!1004100 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!507 (regex!5449 (rule!8047 separatorToken!241)) lt!1183007 lt!1183020) lt!1183403)))

(declare-fun bs!561733 () Bool)

(assert (= bs!561733 d!1004100))

(assert (=> bs!561733 m!3890481))

(declare-fun m!3891773 () Bool)

(assert (=> bs!561733 m!3891773))

(declare-fun m!3891775 () Bool)

(assert (=> bs!561733 m!3891775))

(assert (=> b!3475957 d!1004100))

(declare-fun b!3476735 () Bool)

(declare-fun e!2153495 () Bool)

(assert (=> b!3476735 (= e!2153495 (= (head!7336 lt!1183007) (c!596147 (regex!5449 (rule!8047 separatorToken!241)))))))

(declare-fun bm!250825 () Bool)

(declare-fun call!250830 () Bool)

(assert (=> bm!250825 (= call!250830 (isEmpty!21590 lt!1183007))))

(declare-fun b!3476736 () Bool)

(declare-fun e!2153493 () Bool)

(declare-fun e!2153492 () Bool)

(assert (=> b!3476736 (= e!2153493 e!2153492)))

(declare-fun res!1402571 () Bool)

(assert (=> b!3476736 (=> res!1402571 e!2153492)))

(assert (=> b!3476736 (= res!1402571 call!250830)))

(declare-fun b!3476737 () Bool)

(declare-fun res!1402575 () Bool)

(assert (=> b!3476737 (=> (not res!1402575) (not e!2153495))))

(assert (=> b!3476737 (= res!1402575 (isEmpty!21590 (tail!5449 lt!1183007)))))

(declare-fun b!3476738 () Bool)

(declare-fun e!2153490 () Bool)

(declare-fun e!2153489 () Bool)

(assert (=> b!3476738 (= e!2153490 e!2153489)))

(declare-fun c!596291 () Bool)

(assert (=> b!3476738 (= c!596291 (is-EmptyLang!10208 (regex!5449 (rule!8047 separatorToken!241))))))

(declare-fun d!1004102 () Bool)

(assert (=> d!1004102 e!2153490))

(declare-fun c!596289 () Bool)

(assert (=> d!1004102 (= c!596289 (is-EmptyExpr!10208 (regex!5449 (rule!8047 separatorToken!241))))))

(declare-fun lt!1183404 () Bool)

(declare-fun e!2153494 () Bool)

(assert (=> d!1004102 (= lt!1183404 e!2153494)))

(declare-fun c!596290 () Bool)

(assert (=> d!1004102 (= c!596290 (isEmpty!21590 lt!1183007))))

(assert (=> d!1004102 (validRegex!4652 (regex!5449 (rule!8047 separatorToken!241)))))

(assert (=> d!1004102 (= (matchR!4792 (regex!5449 (rule!8047 separatorToken!241)) lt!1183007) lt!1183404)))

(declare-fun b!3476739 () Bool)

(assert (=> b!3476739 (= e!2153489 (not lt!1183404))))

(declare-fun b!3476740 () Bool)

(assert (=> b!3476740 (= e!2153492 (not (= (head!7336 lt!1183007) (c!596147 (regex!5449 (rule!8047 separatorToken!241))))))))

(declare-fun b!3476741 () Bool)

(declare-fun res!1402574 () Bool)

(declare-fun e!2153491 () Bool)

(assert (=> b!3476741 (=> res!1402574 e!2153491)))

(assert (=> b!3476741 (= res!1402574 e!2153495)))

(declare-fun res!1402572 () Bool)

(assert (=> b!3476741 (=> (not res!1402572) (not e!2153495))))

(assert (=> b!3476741 (= res!1402572 lt!1183404)))

(declare-fun b!3476742 () Bool)

(assert (=> b!3476742 (= e!2153491 e!2153493)))

(declare-fun res!1402570 () Bool)

(assert (=> b!3476742 (=> (not res!1402570) (not e!2153493))))

(assert (=> b!3476742 (= res!1402570 (not lt!1183404))))

(declare-fun b!3476743 () Bool)

(declare-fun res!1402569 () Bool)

(assert (=> b!3476743 (=> res!1402569 e!2153491)))

(assert (=> b!3476743 (= res!1402569 (not (is-ElementMatch!10208 (regex!5449 (rule!8047 separatorToken!241)))))))

(assert (=> b!3476743 (= e!2153489 e!2153491)))

(declare-fun b!3476744 () Bool)

(declare-fun res!1402576 () Bool)

(assert (=> b!3476744 (=> res!1402576 e!2153492)))

(assert (=> b!3476744 (= res!1402576 (not (isEmpty!21590 (tail!5449 lt!1183007))))))

(declare-fun b!3476745 () Bool)

(assert (=> b!3476745 (= e!2153490 (= lt!1183404 call!250830))))

(declare-fun b!3476746 () Bool)

(declare-fun res!1402573 () Bool)

(assert (=> b!3476746 (=> (not res!1402573) (not e!2153495))))

(assert (=> b!3476746 (= res!1402573 (not call!250830))))

(declare-fun b!3476747 () Bool)

(assert (=> b!3476747 (= e!2153494 (matchR!4792 (derivativeStep!3049 (regex!5449 (rule!8047 separatorToken!241)) (head!7336 lt!1183007)) (tail!5449 lt!1183007)))))

(declare-fun b!3476748 () Bool)

(assert (=> b!3476748 (= e!2153494 (nullable!3496 (regex!5449 (rule!8047 separatorToken!241))))))

(assert (= (and d!1004102 c!596290) b!3476748))

(assert (= (and d!1004102 (not c!596290)) b!3476747))

(assert (= (and d!1004102 c!596289) b!3476745))

(assert (= (and d!1004102 (not c!596289)) b!3476738))

(assert (= (and b!3476738 c!596291) b!3476739))

(assert (= (and b!3476738 (not c!596291)) b!3476743))

(assert (= (and b!3476743 (not res!1402569)) b!3476741))

(assert (= (and b!3476741 res!1402572) b!3476746))

(assert (= (and b!3476746 res!1402573) b!3476737))

(assert (= (and b!3476737 res!1402575) b!3476735))

(assert (= (and b!3476741 (not res!1402574)) b!3476742))

(assert (= (and b!3476742 res!1402570) b!3476736))

(assert (= (and b!3476736 (not res!1402571)) b!3476744))

(assert (= (and b!3476744 (not res!1402576)) b!3476740))

(assert (= (or b!3476745 b!3476736 b!3476746) bm!250825))

(declare-fun m!3891777 () Bool)

(assert (=> b!3476737 m!3891777))

(assert (=> b!3476737 m!3891777))

(declare-fun m!3891779 () Bool)

(assert (=> b!3476737 m!3891779))

(declare-fun m!3891781 () Bool)

(assert (=> d!1004102 m!3891781))

(assert (=> d!1004102 m!3891775))

(assert (=> b!3476740 m!3890631))

(assert (=> b!3476744 m!3891777))

(assert (=> b!3476744 m!3891777))

(assert (=> b!3476744 m!3891779))

(assert (=> bm!250825 m!3891781))

(declare-fun m!3891783 () Bool)

(assert (=> b!3476748 m!3891783))

(assert (=> b!3476735 m!3890631))

(assert (=> b!3476747 m!3890631))

(assert (=> b!3476747 m!3890631))

(declare-fun m!3891785 () Bool)

(assert (=> b!3476747 m!3891785))

(assert (=> b!3476747 m!3891777))

(assert (=> b!3476747 m!3891785))

(assert (=> b!3476747 m!3891777))

(declare-fun m!3891787 () Bool)

(assert (=> b!3476747 m!3891787))

(assert (=> b!3475957 d!1004102))

(declare-fun d!1004104 () Bool)

(declare-fun lt!1183407 () Token!10264)

(assert (=> d!1004104 (= lt!1183407 (apply!8794 (list!13568 (_1!21616 lt!1183004)) 0))))

(declare-fun apply!8796 (Conc!11274 Int) Token!10264)

(assert (=> d!1004104 (= lt!1183407 (apply!8796 (c!596149 (_1!21616 lt!1183004)) 0))))

(declare-fun e!2153498 () Bool)

(assert (=> d!1004104 e!2153498))

(declare-fun res!1402579 () Bool)

(assert (=> d!1004104 (=> (not res!1402579) (not e!2153498))))

(assert (=> d!1004104 (= res!1402579 (<= 0 0))))

(assert (=> d!1004104 (= (apply!8790 (_1!21616 lt!1183004) 0) lt!1183407)))

(declare-fun b!3476751 () Bool)

(assert (=> b!3476751 (= e!2153498 (< 0 (size!28251 (_1!21616 lt!1183004))))))

(assert (= (and d!1004104 res!1402579) b!3476751))

(assert (=> d!1004104 m!3891067))

(assert (=> d!1004104 m!3891067))

(declare-fun m!3891789 () Bool)

(assert (=> d!1004104 m!3891789))

(declare-fun m!3891791 () Bool)

(assert (=> d!1004104 m!3891791))

(assert (=> b!3476751 m!3890621))

(assert (=> b!3475978 d!1004104))

(declare-fun d!1004106 () Bool)

(assert (=> d!1004106 (= (isEmpty!21590 lt!1183028) (is-Nil!37213 lt!1183028))))

(assert (=> b!3475958 d!1004106))

(declare-fun d!1004108 () Bool)

(assert (=> d!1004108 (= (isDefined!5816 lt!1183021) (not (isEmpty!21599 lt!1183021)))))

(declare-fun bs!561734 () Bool)

(assert (= bs!561734 d!1004108))

(declare-fun m!3891793 () Bool)

(assert (=> bs!561734 m!3891793))

(assert (=> b!3475979 d!1004108))

(declare-fun b!3476770 () Bool)

(declare-fun res!1402594 () Bool)

(declare-fun e!2153507 () Bool)

(assert (=> b!3476770 (=> (not res!1402594) (not e!2153507))))

(declare-fun lt!1183420 () Option!7552)

(assert (=> b!3476770 (= res!1402594 (= (value!175758 (_1!21617 (get!11921 lt!1183420))) (apply!8791 (transformation!5449 (rule!8047 (_1!21617 (get!11921 lt!1183420)))) (seqFromList!3951 (originalCharacters!6163 (_1!21617 (get!11921 lt!1183420)))))))))

(declare-fun b!3476771 () Bool)

(declare-fun res!1402599 () Bool)

(assert (=> b!3476771 (=> (not res!1402599) (not e!2153507))))

(assert (=> b!3476771 (= res!1402599 (< (size!28252 (_2!21617 (get!11921 lt!1183420))) (size!28252 lt!1183017)))))

(declare-fun b!3476772 () Bool)

(declare-fun res!1402595 () Bool)

(assert (=> b!3476772 (=> (not res!1402595) (not e!2153507))))

(assert (=> b!3476772 (= res!1402595 (= (++!9188 (list!13566 (charsOf!3463 (_1!21617 (get!11921 lt!1183420)))) (_2!21617 (get!11921 lt!1183420))) lt!1183017))))

(declare-fun b!3476773 () Bool)

(declare-fun e!2153506 () Option!7552)

(declare-fun call!250833 () Option!7552)

(assert (=> b!3476773 (= e!2153506 call!250833)))

(declare-fun d!1004110 () Bool)

(declare-fun e!2153505 () Bool)

(assert (=> d!1004110 e!2153505))

(declare-fun res!1402600 () Bool)

(assert (=> d!1004110 (=> res!1402600 e!2153505)))

(assert (=> d!1004110 (= res!1402600 (isEmpty!21599 lt!1183420))))

(assert (=> d!1004110 (= lt!1183420 e!2153506)))

(declare-fun c!596294 () Bool)

(assert (=> d!1004110 (= c!596294 (and (is-Cons!37214 rules!2135) (is-Nil!37214 (t!275059 rules!2135))))))

(declare-fun lt!1183422 () Unit!52643)

(declare-fun lt!1183419 () Unit!52643)

(assert (=> d!1004110 (= lt!1183422 lt!1183419)))

(declare-fun isPrefix!2851 (List!37337 List!37337) Bool)

(assert (=> d!1004110 (isPrefix!2851 lt!1183017 lt!1183017)))

(declare-fun lemmaIsPrefixRefl!1810 (List!37337 List!37337) Unit!52643)

(assert (=> d!1004110 (= lt!1183419 (lemmaIsPrefixRefl!1810 lt!1183017 lt!1183017))))

(declare-fun rulesValidInductive!1860 (LexerInterface!5038 List!37338) Bool)

(assert (=> d!1004110 (rulesValidInductive!1860 thiss!18206 rules!2135)))

(assert (=> d!1004110 (= (maxPrefix!2578 thiss!18206 rules!2135 lt!1183017) lt!1183420)))

(declare-fun bm!250828 () Bool)

(assert (=> bm!250828 (= call!250833 (maxPrefixOneRule!1745 thiss!18206 (h!42634 rules!2135) lt!1183017))))

(declare-fun b!3476774 () Bool)

(declare-fun res!1402597 () Bool)

(assert (=> b!3476774 (=> (not res!1402597) (not e!2153507))))

(assert (=> b!3476774 (= res!1402597 (matchR!4792 (regex!5449 (rule!8047 (_1!21617 (get!11921 lt!1183420)))) (list!13566 (charsOf!3463 (_1!21617 (get!11921 lt!1183420))))))))

(declare-fun b!3476775 () Bool)

(assert (=> b!3476775 (= e!2153505 e!2153507)))

(declare-fun res!1402598 () Bool)

(assert (=> b!3476775 (=> (not res!1402598) (not e!2153507))))

(assert (=> b!3476775 (= res!1402598 (isDefined!5816 lt!1183420))))

(declare-fun b!3476776 () Bool)

(assert (=> b!3476776 (= e!2153507 (contains!6923 rules!2135 (rule!8047 (_1!21617 (get!11921 lt!1183420)))))))

(declare-fun b!3476777 () Bool)

(declare-fun res!1402596 () Bool)

(assert (=> b!3476777 (=> (not res!1402596) (not e!2153507))))

(assert (=> b!3476777 (= res!1402596 (= (list!13566 (charsOf!3463 (_1!21617 (get!11921 lt!1183420)))) (originalCharacters!6163 (_1!21617 (get!11921 lt!1183420)))))))

(declare-fun b!3476778 () Bool)

(declare-fun lt!1183418 () Option!7552)

(declare-fun lt!1183421 () Option!7552)

(assert (=> b!3476778 (= e!2153506 (ite (and (is-None!7551 lt!1183418) (is-None!7551 lt!1183421)) None!7551 (ite (is-None!7551 lt!1183421) lt!1183418 (ite (is-None!7551 lt!1183418) lt!1183421 (ite (>= (size!28250 (_1!21617 (v!36915 lt!1183418))) (size!28250 (_1!21617 (v!36915 lt!1183421)))) lt!1183418 lt!1183421)))))))

(assert (=> b!3476778 (= lt!1183418 call!250833)))

(assert (=> b!3476778 (= lt!1183421 (maxPrefix!2578 thiss!18206 (t!275059 rules!2135) lt!1183017))))

(assert (= (and d!1004110 c!596294) b!3476773))

(assert (= (and d!1004110 (not c!596294)) b!3476778))

(assert (= (or b!3476773 b!3476778) bm!250828))

(assert (= (and d!1004110 (not res!1402600)) b!3476775))

(assert (= (and b!3476775 res!1402598) b!3476777))

(assert (= (and b!3476777 res!1402596) b!3476771))

(assert (= (and b!3476771 res!1402599) b!3476772))

(assert (= (and b!3476772 res!1402595) b!3476770))

(assert (= (and b!3476770 res!1402594) b!3476774))

(assert (= (and b!3476774 res!1402597) b!3476776))

(declare-fun m!3891795 () Bool)

(assert (=> b!3476770 m!3891795))

(declare-fun m!3891797 () Bool)

(assert (=> b!3476770 m!3891797))

(assert (=> b!3476770 m!3891797))

(declare-fun m!3891799 () Bool)

(assert (=> b!3476770 m!3891799))

(declare-fun m!3891801 () Bool)

(assert (=> d!1004110 m!3891801))

(declare-fun m!3891803 () Bool)

(assert (=> d!1004110 m!3891803))

(declare-fun m!3891805 () Bool)

(assert (=> d!1004110 m!3891805))

(declare-fun m!3891807 () Bool)

(assert (=> d!1004110 m!3891807))

(assert (=> b!3476774 m!3891795))

(declare-fun m!3891809 () Bool)

(assert (=> b!3476774 m!3891809))

(assert (=> b!3476774 m!3891809))

(declare-fun m!3891811 () Bool)

(assert (=> b!3476774 m!3891811))

(assert (=> b!3476774 m!3891811))

(declare-fun m!3891813 () Bool)

(assert (=> b!3476774 m!3891813))

(declare-fun m!3891815 () Bool)

(assert (=> bm!250828 m!3891815))

(assert (=> b!3476771 m!3891795))

(declare-fun m!3891817 () Bool)

(assert (=> b!3476771 m!3891817))

(assert (=> b!3476771 m!3890623))

(assert (=> b!3476772 m!3891795))

(assert (=> b!3476772 m!3891809))

(assert (=> b!3476772 m!3891809))

(assert (=> b!3476772 m!3891811))

(assert (=> b!3476772 m!3891811))

(declare-fun m!3891819 () Bool)

(assert (=> b!3476772 m!3891819))

(assert (=> b!3476777 m!3891795))

(assert (=> b!3476777 m!3891809))

(assert (=> b!3476777 m!3891809))

(assert (=> b!3476777 m!3891811))

(assert (=> b!3476776 m!3891795))

(declare-fun m!3891821 () Bool)

(assert (=> b!3476776 m!3891821))

(declare-fun m!3891823 () Bool)

(assert (=> b!3476778 m!3891823))

(declare-fun m!3891825 () Bool)

(assert (=> b!3476775 m!3891825))

(assert (=> b!3475979 d!1004110))

(declare-fun d!1004112 () Bool)

(declare-fun lt!1183425 () Bool)

(assert (=> d!1004112 (= lt!1183425 (isEmpty!21590 (list!13566 (_2!21616 lt!1183004))))))

(declare-fun isEmpty!21604 (Conc!11273) Bool)

(assert (=> d!1004112 (= lt!1183425 (isEmpty!21604 (c!596148 (_2!21616 lt!1183004))))))

(assert (=> d!1004112 (= (isEmpty!21593 (_2!21616 lt!1183004)) lt!1183425)))

(declare-fun bs!561735 () Bool)

(assert (= bs!561735 d!1004112))

(declare-fun m!3891827 () Bool)

(assert (=> bs!561735 m!3891827))

(assert (=> bs!561735 m!3891827))

(declare-fun m!3891829 () Bool)

(assert (=> bs!561735 m!3891829))

(declare-fun m!3891831 () Bool)

(assert (=> bs!561735 m!3891831))

(assert (=> b!3475981 d!1004112))

(declare-fun b!3476780 () Bool)

(declare-fun e!2153509 () List!37337)

(assert (=> b!3476780 (= e!2153509 (Cons!37213 (h!42633 lt!1183017) (++!9188 (t!275058 lt!1183017) lt!1183028)))))

(declare-fun b!3476781 () Bool)

(declare-fun res!1402602 () Bool)

(declare-fun e!2153508 () Bool)

(assert (=> b!3476781 (=> (not res!1402602) (not e!2153508))))

(declare-fun lt!1183426 () List!37337)

(assert (=> b!3476781 (= res!1402602 (= (size!28252 lt!1183426) (+ (size!28252 lt!1183017) (size!28252 lt!1183028))))))

(declare-fun b!3476782 () Bool)

(assert (=> b!3476782 (= e!2153508 (or (not (= lt!1183028 Nil!37213)) (= lt!1183426 lt!1183017)))))

(declare-fun d!1004114 () Bool)

(assert (=> d!1004114 e!2153508))

(declare-fun res!1402601 () Bool)

(assert (=> d!1004114 (=> (not res!1402601) (not e!2153508))))

(assert (=> d!1004114 (= res!1402601 (= (content!5206 lt!1183426) (set.union (content!5206 lt!1183017) (content!5206 lt!1183028))))))

(assert (=> d!1004114 (= lt!1183426 e!2153509)))

(declare-fun c!596295 () Bool)

(assert (=> d!1004114 (= c!596295 (is-Nil!37213 lt!1183017))))

(assert (=> d!1004114 (= (++!9188 lt!1183017 lt!1183028) lt!1183426)))

(declare-fun b!3476779 () Bool)

(assert (=> b!3476779 (= e!2153509 lt!1183028)))

(assert (= (and d!1004114 c!596295) b!3476779))

(assert (= (and d!1004114 (not c!596295)) b!3476780))

(assert (= (and d!1004114 res!1402601) b!3476781))

(assert (= (and b!3476781 res!1402602) b!3476782))

(declare-fun m!3891833 () Bool)

(assert (=> b!3476780 m!3891833))

(declare-fun m!3891835 () Bool)

(assert (=> b!3476781 m!3891835))

(assert (=> b!3476781 m!3890623))

(declare-fun m!3891837 () Bool)

(assert (=> b!3476781 m!3891837))

(declare-fun m!3891839 () Bool)

(assert (=> d!1004114 m!3891839))

(declare-fun m!3891841 () Bool)

(assert (=> d!1004114 m!3891841))

(declare-fun m!3891843 () Bool)

(assert (=> d!1004114 m!3891843))

(assert (=> b!3475980 d!1004114))

(declare-fun d!1004116 () Bool)

(assert (=> d!1004116 (= (++!9188 (++!9188 lt!1183017 lt!1183007) lt!1183005) (++!9188 lt!1183017 (++!9188 lt!1183007 lt!1183005)))))

(declare-fun lt!1183429 () Unit!52643)

(declare-fun choose!20127 (List!37337 List!37337 List!37337) Unit!52643)

(assert (=> d!1004116 (= lt!1183429 (choose!20127 lt!1183017 lt!1183007 lt!1183005))))

(assert (=> d!1004116 (= (lemmaConcatAssociativity!1973 lt!1183017 lt!1183007 lt!1183005) lt!1183429)))

(declare-fun bs!561736 () Bool)

(assert (= bs!561736 d!1004116))

(declare-fun m!3891845 () Bool)

(assert (=> bs!561736 m!3891845))

(assert (=> bs!561736 m!3890525))

(assert (=> bs!561736 m!3890553))

(declare-fun m!3891847 () Bool)

(assert (=> bs!561736 m!3891847))

(assert (=> bs!561736 m!3890553))

(assert (=> bs!561736 m!3890525))

(assert (=> bs!561736 m!3890527))

(assert (=> b!3475980 d!1004116))

(declare-fun b!3476783 () Bool)

(declare-fun e!2153516 () Bool)

(assert (=> b!3476783 (= e!2153516 (= (head!7336 lt!1183007) (c!596147 (regex!5449 lt!1183022))))))

(declare-fun bm!250829 () Bool)

(declare-fun call!250834 () Bool)

(assert (=> bm!250829 (= call!250834 (isEmpty!21590 lt!1183007))))

(declare-fun b!3476784 () Bool)

(declare-fun e!2153514 () Bool)

(declare-fun e!2153513 () Bool)

(assert (=> b!3476784 (= e!2153514 e!2153513)))

(declare-fun res!1402605 () Bool)

(assert (=> b!3476784 (=> res!1402605 e!2153513)))

(assert (=> b!3476784 (= res!1402605 call!250834)))

(declare-fun b!3476785 () Bool)

(declare-fun res!1402609 () Bool)

(assert (=> b!3476785 (=> (not res!1402609) (not e!2153516))))

(assert (=> b!3476785 (= res!1402609 (isEmpty!21590 (tail!5449 lt!1183007)))))

(declare-fun b!3476786 () Bool)

(declare-fun e!2153511 () Bool)

(declare-fun e!2153510 () Bool)

(assert (=> b!3476786 (= e!2153511 e!2153510)))

(declare-fun c!596298 () Bool)

(assert (=> b!3476786 (= c!596298 (is-EmptyLang!10208 (regex!5449 lt!1183022)))))

(declare-fun d!1004118 () Bool)

(assert (=> d!1004118 e!2153511))

(declare-fun c!596296 () Bool)

(assert (=> d!1004118 (= c!596296 (is-EmptyExpr!10208 (regex!5449 lt!1183022)))))

(declare-fun lt!1183430 () Bool)

(declare-fun e!2153515 () Bool)

(assert (=> d!1004118 (= lt!1183430 e!2153515)))

(declare-fun c!596297 () Bool)

(assert (=> d!1004118 (= c!596297 (isEmpty!21590 lt!1183007))))

(assert (=> d!1004118 (validRegex!4652 (regex!5449 lt!1183022))))

(assert (=> d!1004118 (= (matchR!4792 (regex!5449 lt!1183022) lt!1183007) lt!1183430)))

(declare-fun b!3476787 () Bool)

(assert (=> b!3476787 (= e!2153510 (not lt!1183430))))

(declare-fun b!3476788 () Bool)

(assert (=> b!3476788 (= e!2153513 (not (= (head!7336 lt!1183007) (c!596147 (regex!5449 lt!1183022)))))))

(declare-fun b!3476789 () Bool)

(declare-fun res!1402608 () Bool)

(declare-fun e!2153512 () Bool)

(assert (=> b!3476789 (=> res!1402608 e!2153512)))

(assert (=> b!3476789 (= res!1402608 e!2153516)))

(declare-fun res!1402606 () Bool)

(assert (=> b!3476789 (=> (not res!1402606) (not e!2153516))))

(assert (=> b!3476789 (= res!1402606 lt!1183430)))

(declare-fun b!3476790 () Bool)

(assert (=> b!3476790 (= e!2153512 e!2153514)))

(declare-fun res!1402604 () Bool)

(assert (=> b!3476790 (=> (not res!1402604) (not e!2153514))))

(assert (=> b!3476790 (= res!1402604 (not lt!1183430))))

(declare-fun b!3476791 () Bool)

(declare-fun res!1402603 () Bool)

(assert (=> b!3476791 (=> res!1402603 e!2153512)))

(assert (=> b!3476791 (= res!1402603 (not (is-ElementMatch!10208 (regex!5449 lt!1183022))))))

(assert (=> b!3476791 (= e!2153510 e!2153512)))

(declare-fun b!3476792 () Bool)

(declare-fun res!1402610 () Bool)

(assert (=> b!3476792 (=> res!1402610 e!2153513)))

(assert (=> b!3476792 (= res!1402610 (not (isEmpty!21590 (tail!5449 lt!1183007))))))

(declare-fun b!3476793 () Bool)

(assert (=> b!3476793 (= e!2153511 (= lt!1183430 call!250834))))

(declare-fun b!3476794 () Bool)

(declare-fun res!1402607 () Bool)

(assert (=> b!3476794 (=> (not res!1402607) (not e!2153516))))

(assert (=> b!3476794 (= res!1402607 (not call!250834))))

(declare-fun b!3476795 () Bool)

(assert (=> b!3476795 (= e!2153515 (matchR!4792 (derivativeStep!3049 (regex!5449 lt!1183022) (head!7336 lt!1183007)) (tail!5449 lt!1183007)))))

(declare-fun b!3476796 () Bool)

(assert (=> b!3476796 (= e!2153515 (nullable!3496 (regex!5449 lt!1183022)))))

(assert (= (and d!1004118 c!596297) b!3476796))

(assert (= (and d!1004118 (not c!596297)) b!3476795))

(assert (= (and d!1004118 c!596296) b!3476793))

(assert (= (and d!1004118 (not c!596296)) b!3476786))

(assert (= (and b!3476786 c!596298) b!3476787))

(assert (= (and b!3476786 (not c!596298)) b!3476791))

(assert (= (and b!3476791 (not res!1402603)) b!3476789))

(assert (= (and b!3476789 res!1402606) b!3476794))

(assert (= (and b!3476794 res!1402607) b!3476785))

(assert (= (and b!3476785 res!1402609) b!3476783))

(assert (= (and b!3476789 (not res!1402608)) b!3476790))

(assert (= (and b!3476790 res!1402604) b!3476784))

(assert (= (and b!3476784 (not res!1402605)) b!3476792))

(assert (= (and b!3476792 (not res!1402610)) b!3476788))

(assert (= (or b!3476793 b!3476784 b!3476794) bm!250829))

(assert (=> b!3476785 m!3891777))

(assert (=> b!3476785 m!3891777))

(assert (=> b!3476785 m!3891779))

(assert (=> d!1004118 m!3891781))

(declare-fun m!3891849 () Bool)

(assert (=> d!1004118 m!3891849))

(assert (=> b!3476788 m!3890631))

(assert (=> b!3476792 m!3891777))

(assert (=> b!3476792 m!3891777))

(assert (=> b!3476792 m!3891779))

(assert (=> bm!250829 m!3891781))

(declare-fun m!3891851 () Bool)

(assert (=> b!3476796 m!3891851))

(assert (=> b!3476783 m!3890631))

(assert (=> b!3476795 m!3890631))

(assert (=> b!3476795 m!3890631))

(declare-fun m!3891853 () Bool)

(assert (=> b!3476795 m!3891853))

(assert (=> b!3476795 m!3891777))

(assert (=> b!3476795 m!3891853))

(assert (=> b!3476795 m!3891777))

(declare-fun m!3891855 () Bool)

(assert (=> b!3476795 m!3891855))

(assert (=> b!3475982 d!1004118))

(declare-fun d!1004120 () Bool)

(assert (=> d!1004120 (= (get!11922 lt!1183000) (v!36914 lt!1183000))))

(assert (=> b!3475982 d!1004120))

(declare-fun d!1004122 () Bool)

(declare-fun res!1402615 () Bool)

(declare-fun e!2153521 () Bool)

(assert (=> d!1004122 (=> res!1402615 e!2153521)))

(assert (=> d!1004122 (= res!1402615 (is-Nil!37215 tokens!494))))

(assert (=> d!1004122 (= (forall!7952 tokens!494 lambda!122094) e!2153521)))

(declare-fun b!3476801 () Bool)

(declare-fun e!2153522 () Bool)

(assert (=> b!3476801 (= e!2153521 e!2153522)))

(declare-fun res!1402616 () Bool)

(assert (=> b!3476801 (=> (not res!1402616) (not e!2153522))))

(assert (=> b!3476801 (= res!1402616 (dynLambda!15731 lambda!122094 (h!42635 tokens!494)))))

(declare-fun b!3476802 () Bool)

(assert (=> b!3476802 (= e!2153522 (forall!7952 (t!275060 tokens!494) lambda!122094))))

(assert (= (and d!1004122 (not res!1402615)) b!3476801))

(assert (= (and b!3476801 res!1402616) b!3476802))

(declare-fun b_lambda!100423 () Bool)

(assert (=> (not b_lambda!100423) (not b!3476801)))

(declare-fun m!3891857 () Bool)

(assert (=> b!3476801 m!3891857))

(declare-fun m!3891859 () Bool)

(assert (=> b!3476802 m!3891859))

(assert (=> b!3475960 d!1004122))

(declare-fun d!1004124 () Bool)

(declare-fun c!596299 () Bool)

(assert (=> d!1004124 (= c!596299 (is-IntegerValue!17037 (value!175758 separatorToken!241)))))

(declare-fun e!2153524 () Bool)

(assert (=> d!1004124 (= (inv!21 (value!175758 separatorToken!241)) e!2153524)))

(declare-fun b!3476803 () Bool)

(declare-fun e!2153523 () Bool)

(assert (=> b!3476803 (= e!2153523 (inv!15 (value!175758 separatorToken!241)))))

(declare-fun b!3476804 () Bool)

(declare-fun e!2153525 () Bool)

(assert (=> b!3476804 (= e!2153525 (inv!17 (value!175758 separatorToken!241)))))

(declare-fun b!3476805 () Bool)

(assert (=> b!3476805 (= e!2153524 e!2153525)))

(declare-fun c!596300 () Bool)

(assert (=> b!3476805 (= c!596300 (is-IntegerValue!17038 (value!175758 separatorToken!241)))))

(declare-fun b!3476806 () Bool)

(declare-fun res!1402617 () Bool)

(assert (=> b!3476806 (=> res!1402617 e!2153523)))

(assert (=> b!3476806 (= res!1402617 (not (is-IntegerValue!17039 (value!175758 separatorToken!241))))))

(assert (=> b!3476806 (= e!2153525 e!2153523)))

(declare-fun b!3476807 () Bool)

(assert (=> b!3476807 (= e!2153524 (inv!16 (value!175758 separatorToken!241)))))

(assert (= (and d!1004124 c!596299) b!3476807))

(assert (= (and d!1004124 (not c!596299)) b!3476805))

(assert (= (and b!3476805 c!596300) b!3476804))

(assert (= (and b!3476805 (not c!596300)) b!3476806))

(assert (= (and b!3476806 (not res!1402617)) b!3476803))

(declare-fun m!3891861 () Bool)

(assert (=> b!3476803 m!3891861))

(declare-fun m!3891863 () Bool)

(assert (=> b!3476804 m!3891863))

(declare-fun m!3891865 () Bool)

(assert (=> b!3476807 m!3891865))

(assert (=> b!3475973 d!1004124))

(declare-fun d!1004126 () Bool)

(declare-fun lt!1183432 () BalanceConc!22160)

(assert (=> d!1004126 (= (list!13566 lt!1183432) (printListTailRec!695 thiss!18206 (dropList!1212 lt!1183010 0) (list!13566 (BalanceConc!22161 Empty!11273))))))

(declare-fun e!2153527 () BalanceConc!22160)

(assert (=> d!1004126 (= lt!1183432 e!2153527)))

(declare-fun c!596301 () Bool)

(assert (=> d!1004126 (= c!596301 (>= 0 (size!28251 lt!1183010)))))

(declare-fun e!2153526 () Bool)

(assert (=> d!1004126 e!2153526))

(declare-fun res!1402618 () Bool)

(assert (=> d!1004126 (=> (not res!1402618) (not e!2153526))))

(assert (=> d!1004126 (= res!1402618 (>= 0 0))))

(assert (=> d!1004126 (= (printTailRec!1533 thiss!18206 lt!1183010 0 (BalanceConc!22161 Empty!11273)) lt!1183432)))

(declare-fun b!3476808 () Bool)

(assert (=> b!3476808 (= e!2153526 (<= 0 (size!28251 lt!1183010)))))

(declare-fun b!3476809 () Bool)

(assert (=> b!3476809 (= e!2153527 (BalanceConc!22161 Empty!11273))))

(declare-fun b!3476810 () Bool)

(assert (=> b!3476810 (= e!2153527 (printTailRec!1533 thiss!18206 lt!1183010 (+ 0 1) (++!9190 (BalanceConc!22161 Empty!11273) (charsOf!3463 (apply!8790 lt!1183010 0)))))))

(declare-fun lt!1183437 () List!37339)

(assert (=> b!3476810 (= lt!1183437 (list!13568 lt!1183010))))

(declare-fun lt!1183436 () Unit!52643)

(assert (=> b!3476810 (= lt!1183436 (lemmaDropApply!1170 lt!1183437 0))))

(assert (=> b!3476810 (= (head!7338 (drop!2020 lt!1183437 0)) (apply!8794 lt!1183437 0))))

(declare-fun lt!1183433 () Unit!52643)

(assert (=> b!3476810 (= lt!1183433 lt!1183436)))

(declare-fun lt!1183434 () List!37339)

(assert (=> b!3476810 (= lt!1183434 (list!13568 lt!1183010))))

(declare-fun lt!1183435 () Unit!52643)

(assert (=> b!3476810 (= lt!1183435 (lemmaDropTail!1054 lt!1183434 0))))

(assert (=> b!3476810 (= (tail!5446 (drop!2020 lt!1183434 0)) (drop!2020 lt!1183434 (+ 0 1)))))

(declare-fun lt!1183431 () Unit!52643)

(assert (=> b!3476810 (= lt!1183431 lt!1183435)))

(assert (= (and d!1004126 res!1402618) b!3476808))

(assert (= (and d!1004126 c!596301) b!3476809))

(assert (= (and d!1004126 (not c!596301)) b!3476810))

(assert (=> d!1004126 m!3891123))

(declare-fun m!3891867 () Bool)

(assert (=> d!1004126 m!3891867))

(assert (=> d!1004126 m!3891123))

(declare-fun m!3891869 () Bool)

(assert (=> d!1004126 m!3891869))

(declare-fun m!3891871 () Bool)

(assert (=> d!1004126 m!3891871))

(declare-fun m!3891873 () Bool)

(assert (=> d!1004126 m!3891873))

(assert (=> d!1004126 m!3891867))

(assert (=> b!3476808 m!3891873))

(declare-fun m!3891875 () Bool)

(assert (=> b!3476810 m!3891875))

(declare-fun m!3891877 () Bool)

(assert (=> b!3476810 m!3891877))

(declare-fun m!3891879 () Bool)

(assert (=> b!3476810 m!3891879))

(assert (=> b!3476810 m!3891879))

(declare-fun m!3891881 () Bool)

(assert (=> b!3476810 m!3891881))

(declare-fun m!3891883 () Bool)

(assert (=> b!3476810 m!3891883))

(declare-fun m!3891885 () Bool)

(assert (=> b!3476810 m!3891885))

(assert (=> b!3476810 m!3891881))

(declare-fun m!3891887 () Bool)

(assert (=> b!3476810 m!3891887))

(declare-fun m!3891889 () Bool)

(assert (=> b!3476810 m!3891889))

(declare-fun m!3891891 () Bool)

(assert (=> b!3476810 m!3891891))

(declare-fun m!3891893 () Bool)

(assert (=> b!3476810 m!3891893))

(assert (=> b!3476810 m!3891891))

(assert (=> b!3476810 m!3891877))

(declare-fun m!3891895 () Bool)

(assert (=> b!3476810 m!3891895))

(declare-fun m!3891897 () Bool)

(assert (=> b!3476810 m!3891897))

(assert (=> b!3476810 m!3891875))

(declare-fun m!3891899 () Bool)

(assert (=> b!3476810 m!3891899))

(assert (=> b!3475994 d!1004126))

(declare-fun d!1004128 () Bool)

(assert (=> d!1004128 (= (list!13566 lt!1183009) (list!13569 (c!596148 lt!1183009)))))

(declare-fun bs!561737 () Bool)

(assert (= bs!561737 d!1004128))

(declare-fun m!3891901 () Bool)

(assert (=> bs!561737 m!3891901))

(assert (=> b!3475994 d!1004128))

(declare-fun d!1004130 () Bool)

(declare-fun lt!1183438 () BalanceConc!22160)

(assert (=> d!1004130 (= (list!13566 lt!1183438) (printList!1586 thiss!18206 (list!13568 lt!1183010)))))

(assert (=> d!1004130 (= lt!1183438 (printTailRec!1533 thiss!18206 lt!1183010 0 (BalanceConc!22161 Empty!11273)))))

(assert (=> d!1004130 (= (print!2103 thiss!18206 lt!1183010) lt!1183438)))

(declare-fun bs!561738 () Bool)

(assert (= bs!561738 d!1004130))

(declare-fun m!3891903 () Bool)

(assert (=> bs!561738 m!3891903))

(assert (=> bs!561738 m!3891889))

(assert (=> bs!561738 m!3891889))

(declare-fun m!3891905 () Bool)

(assert (=> bs!561738 m!3891905))

(assert (=> bs!561738 m!3890537))

(assert (=> b!3475994 d!1004130))

(declare-fun d!1004132 () Bool)

(declare-fun e!2153528 () Bool)

(assert (=> d!1004132 e!2153528))

(declare-fun res!1402619 () Bool)

(assert (=> d!1004132 (=> (not res!1402619) (not e!2153528))))

(declare-fun lt!1183439 () BalanceConc!22162)

(assert (=> d!1004132 (= res!1402619 (= (list!13568 lt!1183439) (Cons!37215 (h!42635 tokens!494) Nil!37215)))))

(assert (=> d!1004132 (= lt!1183439 (singleton!1127 (h!42635 tokens!494)))))

(assert (=> d!1004132 (= (singletonSeq!2545 (h!42635 tokens!494)) lt!1183439)))

(declare-fun b!3476811 () Bool)

(assert (=> b!3476811 (= e!2153528 (isBalanced!3426 (c!596149 lt!1183439)))))

(assert (= (and d!1004132 res!1402619) b!3476811))

(declare-fun m!3891907 () Bool)

(assert (=> d!1004132 m!3891907))

(declare-fun m!3891909 () Bool)

(assert (=> d!1004132 m!3891909))

(declare-fun m!3891911 () Bool)

(assert (=> b!3476811 m!3891911))

(assert (=> b!3475994 d!1004132))

(declare-fun d!1004134 () Bool)

(declare-fun c!596304 () Bool)

(assert (=> d!1004134 (= c!596304 (is-Cons!37215 (Cons!37215 (h!42635 tokens!494) Nil!37215)))))

(declare-fun e!2153531 () List!37337)

(assert (=> d!1004134 (= (printList!1586 thiss!18206 (Cons!37215 (h!42635 tokens!494) Nil!37215)) e!2153531)))

(declare-fun b!3476816 () Bool)

(assert (=> b!3476816 (= e!2153531 (++!9188 (list!13566 (charsOf!3463 (h!42635 (Cons!37215 (h!42635 tokens!494) Nil!37215)))) (printList!1586 thiss!18206 (t!275060 (Cons!37215 (h!42635 tokens!494) Nil!37215)))))))

(declare-fun b!3476817 () Bool)

(assert (=> b!3476817 (= e!2153531 Nil!37213)))

(assert (= (and d!1004134 c!596304) b!3476816))

(assert (= (and d!1004134 (not c!596304)) b!3476817))

(declare-fun m!3891913 () Bool)

(assert (=> b!3476816 m!3891913))

(assert (=> b!3476816 m!3891913))

(declare-fun m!3891915 () Bool)

(assert (=> b!3476816 m!3891915))

(declare-fun m!3891917 () Bool)

(assert (=> b!3476816 m!3891917))

(assert (=> b!3476816 m!3891915))

(assert (=> b!3476816 m!3891917))

(declare-fun m!3891919 () Bool)

(assert (=> b!3476816 m!3891919))

(assert (=> b!3475994 d!1004134))

(declare-fun d!1004136 () Bool)

(assert (=> d!1004136 (= (list!13566 (charsOf!3463 (h!42635 tokens!494))) (list!13569 (c!596148 (charsOf!3463 (h!42635 tokens!494)))))))

(declare-fun bs!561739 () Bool)

(assert (= bs!561739 d!1004136))

(declare-fun m!3891921 () Bool)

(assert (=> bs!561739 m!3891921))

(assert (=> b!3475972 d!1004136))

(declare-fun d!1004138 () Bool)

(declare-fun lt!1183440 () BalanceConc!22160)

(assert (=> d!1004138 (= (list!13566 lt!1183440) (originalCharacters!6163 (h!42635 tokens!494)))))

(assert (=> d!1004138 (= lt!1183440 (dynLambda!15729 (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (value!175758 (h!42635 tokens!494))))))

(assert (=> d!1004138 (= (charsOf!3463 (h!42635 tokens!494)) lt!1183440)))

(declare-fun b_lambda!100425 () Bool)

(assert (=> (not b_lambda!100425) (not d!1004138)))

(assert (=> d!1004138 t!275113))

(declare-fun b_and!245231 () Bool)

(assert (= b_and!245225 (and (=> t!275113 result!234664) b_and!245231)))

(assert (=> d!1004138 t!275115))

(declare-fun b_and!245233 () Bool)

(assert (= b_and!245227 (and (=> t!275115 result!234666) b_and!245233)))

(assert (=> d!1004138 t!275117))

(declare-fun b_and!245235 () Bool)

(assert (= b_and!245229 (and (=> t!275117 result!234668) b_and!245235)))

(declare-fun m!3891923 () Bool)

(assert (=> d!1004138 m!3891923))

(assert (=> d!1004138 m!3891531))

(assert (=> b!3475972 d!1004138))

(declare-fun d!1004140 () Bool)

(assert (=> d!1004140 (dynLambda!15731 lambda!122094 (h!42635 (t!275060 tokens!494)))))

(declare-fun lt!1183441 () Unit!52643)

(assert (=> d!1004140 (= lt!1183441 (choose!20120 tokens!494 lambda!122094 (h!42635 (t!275060 tokens!494))))))

(declare-fun e!2153532 () Bool)

(assert (=> d!1004140 e!2153532))

(declare-fun res!1402620 () Bool)

(assert (=> d!1004140 (=> (not res!1402620) (not e!2153532))))

(assert (=> d!1004140 (= res!1402620 (forall!7952 tokens!494 lambda!122094))))

(assert (=> d!1004140 (= (forallContained!1396 tokens!494 lambda!122094 (h!42635 (t!275060 tokens!494))) lt!1183441)))

(declare-fun b!3476818 () Bool)

(assert (=> b!3476818 (= e!2153532 (contains!6927 tokens!494 (h!42635 (t!275060 tokens!494))))))

(assert (= (and d!1004140 res!1402620) b!3476818))

(declare-fun b_lambda!100427 () Bool)

(assert (=> (not b_lambda!100427) (not d!1004140)))

(declare-fun m!3891925 () Bool)

(assert (=> d!1004140 m!3891925))

(declare-fun m!3891927 () Bool)

(assert (=> d!1004140 m!3891927))

(assert (=> d!1004140 m!3890499))

(assert (=> b!3476818 m!3891519))

(assert (=> b!3475995 d!1004140))

(declare-fun d!1004142 () Bool)

(assert (=> d!1004142 (dynLambda!15731 lambda!122094 (h!42635 tokens!494))))

(declare-fun lt!1183442 () Unit!52643)

(assert (=> d!1004142 (= lt!1183442 (choose!20120 tokens!494 lambda!122094 (h!42635 tokens!494)))))

(declare-fun e!2153533 () Bool)

(assert (=> d!1004142 e!2153533))

(declare-fun res!1402621 () Bool)

(assert (=> d!1004142 (=> (not res!1402621) (not e!2153533))))

(assert (=> d!1004142 (= res!1402621 (forall!7952 tokens!494 lambda!122094))))

(assert (=> d!1004142 (= (forallContained!1396 tokens!494 lambda!122094 (h!42635 tokens!494)) lt!1183442)))

(declare-fun b!3476819 () Bool)

(assert (=> b!3476819 (= e!2153533 (contains!6927 tokens!494 (h!42635 tokens!494)))))

(assert (= (and d!1004142 res!1402621) b!3476819))

(declare-fun b_lambda!100429 () Bool)

(assert (=> (not b_lambda!100429) (not d!1004142)))

(assert (=> d!1004142 m!3891857))

(declare-fun m!3891929 () Bool)

(assert (=> d!1004142 m!3891929))

(assert (=> d!1004142 m!3890499))

(declare-fun m!3891931 () Bool)

(assert (=> b!3476819 m!3891931))

(assert (=> b!3475995 d!1004142))

(declare-fun e!2153535 () List!37337)

(declare-fun b!3476821 () Bool)

(assert (=> b!3476821 (= e!2153535 (Cons!37213 (h!42633 (++!9188 lt!1183017 lt!1183007)) (++!9188 (t!275058 (++!9188 lt!1183017 lt!1183007)) lt!1183005)))))

(declare-fun b!3476822 () Bool)

(declare-fun res!1402623 () Bool)

(declare-fun e!2153534 () Bool)

(assert (=> b!3476822 (=> (not res!1402623) (not e!2153534))))

(declare-fun lt!1183443 () List!37337)

(assert (=> b!3476822 (= res!1402623 (= (size!28252 lt!1183443) (+ (size!28252 (++!9188 lt!1183017 lt!1183007)) (size!28252 lt!1183005))))))

(declare-fun b!3476823 () Bool)

(assert (=> b!3476823 (= e!2153534 (or (not (= lt!1183005 Nil!37213)) (= lt!1183443 (++!9188 lt!1183017 lt!1183007))))))

(declare-fun d!1004144 () Bool)

(assert (=> d!1004144 e!2153534))

(declare-fun res!1402622 () Bool)

(assert (=> d!1004144 (=> (not res!1402622) (not e!2153534))))

(assert (=> d!1004144 (= res!1402622 (= (content!5206 lt!1183443) (set.union (content!5206 (++!9188 lt!1183017 lt!1183007)) (content!5206 lt!1183005))))))

(assert (=> d!1004144 (= lt!1183443 e!2153535)))

(declare-fun c!596305 () Bool)

(assert (=> d!1004144 (= c!596305 (is-Nil!37213 (++!9188 lt!1183017 lt!1183007)))))

(assert (=> d!1004144 (= (++!9188 (++!9188 lt!1183017 lt!1183007) lt!1183005) lt!1183443)))

(declare-fun b!3476820 () Bool)

(assert (=> b!3476820 (= e!2153535 lt!1183005)))

(assert (= (and d!1004144 c!596305) b!3476820))

(assert (= (and d!1004144 (not c!596305)) b!3476821))

(assert (= (and d!1004144 res!1402622) b!3476822))

(assert (= (and b!3476822 res!1402623) b!3476823))

(declare-fun m!3891933 () Bool)

(assert (=> b!3476821 m!3891933))

(declare-fun m!3891935 () Bool)

(assert (=> b!3476822 m!3891935))

(assert (=> b!3476822 m!3890525))

(declare-fun m!3891937 () Bool)

(assert (=> b!3476822 m!3891937))

(assert (=> b!3476822 m!3890911))

(declare-fun m!3891939 () Bool)

(assert (=> d!1004144 m!3891939))

(assert (=> d!1004144 m!3890525))

(declare-fun m!3891941 () Bool)

(assert (=> d!1004144 m!3891941))

(assert (=> d!1004144 m!3890917))

(assert (=> b!3475997 d!1004144))

(declare-fun b!3476825 () Bool)

(declare-fun e!2153537 () List!37337)

(assert (=> b!3476825 (= e!2153537 (Cons!37213 (h!42633 lt!1183017) (++!9188 (t!275058 lt!1183017) lt!1183007)))))

(declare-fun b!3476826 () Bool)

(declare-fun res!1402625 () Bool)

(declare-fun e!2153536 () Bool)

(assert (=> b!3476826 (=> (not res!1402625) (not e!2153536))))

(declare-fun lt!1183444 () List!37337)

(assert (=> b!3476826 (= res!1402625 (= (size!28252 lt!1183444) (+ (size!28252 lt!1183017) (size!28252 lt!1183007))))))

(declare-fun b!3476827 () Bool)

(assert (=> b!3476827 (= e!2153536 (or (not (= lt!1183007 Nil!37213)) (= lt!1183444 lt!1183017)))))

(declare-fun d!1004146 () Bool)

(assert (=> d!1004146 e!2153536))

(declare-fun res!1402624 () Bool)

(assert (=> d!1004146 (=> (not res!1402624) (not e!2153536))))

(assert (=> d!1004146 (= res!1402624 (= (content!5206 lt!1183444) (set.union (content!5206 lt!1183017) (content!5206 lt!1183007))))))

(assert (=> d!1004146 (= lt!1183444 e!2153537)))

(declare-fun c!596306 () Bool)

(assert (=> d!1004146 (= c!596306 (is-Nil!37213 lt!1183017))))

(assert (=> d!1004146 (= (++!9188 lt!1183017 lt!1183007) lt!1183444)))

(declare-fun b!3476824 () Bool)

(assert (=> b!3476824 (= e!2153537 lt!1183007)))

(assert (= (and d!1004146 c!596306) b!3476824))

(assert (= (and d!1004146 (not c!596306)) b!3476825))

(assert (= (and d!1004146 res!1402624) b!3476826))

(assert (= (and b!3476826 res!1402625) b!3476827))

(declare-fun m!3891943 () Bool)

(assert (=> b!3476825 m!3891943))

(declare-fun m!3891945 () Bool)

(assert (=> b!3476826 m!3891945))

(assert (=> b!3476826 m!3890623))

(assert (=> b!3476826 m!3890909))

(declare-fun m!3891947 () Bool)

(assert (=> d!1004146 m!3891947))

(assert (=> d!1004146 m!3891841))

(assert (=> d!1004146 m!3890915))

(assert (=> b!3475997 d!1004146))

(declare-fun d!1004148 () Bool)

(declare-fun lt!1183445 () Token!10264)

(assert (=> d!1004148 (= lt!1183445 (apply!8794 (list!13568 (_1!21616 lt!1183027)) 0))))

(assert (=> d!1004148 (= lt!1183445 (apply!8796 (c!596149 (_1!21616 lt!1183027)) 0))))

(declare-fun e!2153538 () Bool)

(assert (=> d!1004148 e!2153538))

(declare-fun res!1402626 () Bool)

(assert (=> d!1004148 (=> (not res!1402626) (not e!2153538))))

(assert (=> d!1004148 (= res!1402626 (<= 0 0))))

(assert (=> d!1004148 (= (apply!8790 (_1!21616 lt!1183027) 0) lt!1183445)))

(declare-fun b!3476828 () Bool)

(assert (=> b!3476828 (= e!2153538 (< 0 (size!28251 (_1!21616 lt!1183027))))))

(assert (= (and d!1004148 res!1402626) b!3476828))

(assert (=> d!1004148 m!3891507))

(assert (=> d!1004148 m!3891507))

(declare-fun m!3891949 () Bool)

(assert (=> d!1004148 m!3891949))

(declare-fun m!3891951 () Bool)

(assert (=> d!1004148 m!3891951))

(assert (=> b!3476828 m!3890635))

(assert (=> b!3475954 d!1004148))

(declare-fun d!1004150 () Bool)

(declare-fun lt!1183446 () Bool)

(assert (=> d!1004150 (= lt!1183446 (isEmpty!21590 (list!13566 (_2!21616 lt!1183027))))))

(assert (=> d!1004150 (= lt!1183446 (isEmpty!21604 (c!596148 (_2!21616 lt!1183027))))))

(assert (=> d!1004150 (= (isEmpty!21593 (_2!21616 lt!1183027)) lt!1183446)))

(declare-fun bs!561740 () Bool)

(assert (= bs!561740 d!1004150))

(declare-fun m!3891953 () Bool)

(assert (=> bs!561740 m!3891953))

(assert (=> bs!561740 m!3891953))

(declare-fun m!3891955 () Bool)

(assert (=> bs!561740 m!3891955))

(declare-fun m!3891957 () Bool)

(assert (=> bs!561740 m!3891957))

(assert (=> b!3475975 d!1004150))

(declare-fun d!1004152 () Bool)

(declare-fun lt!1183447 () Bool)

(declare-fun e!2153540 () Bool)

(assert (=> d!1004152 (= lt!1183447 e!2153540)))

(declare-fun res!1402627 () Bool)

(assert (=> d!1004152 (=> (not res!1402627) (not e!2153540))))

(assert (=> d!1004152 (= res!1402627 (= (list!13568 (_1!21616 (lex!2364 thiss!18206 rules!2135 (print!2103 thiss!18206 (singletonSeq!2545 (h!42635 tokens!494)))))) (list!13568 (singletonSeq!2545 (h!42635 tokens!494)))))))

(declare-fun e!2153539 () Bool)

(assert (=> d!1004152 (= lt!1183447 e!2153539)))

(declare-fun res!1402629 () Bool)

(assert (=> d!1004152 (=> (not res!1402629) (not e!2153539))))

(declare-fun lt!1183448 () tuple2!36964)

(assert (=> d!1004152 (= res!1402629 (= (size!28251 (_1!21616 lt!1183448)) 1))))

(assert (=> d!1004152 (= lt!1183448 (lex!2364 thiss!18206 rules!2135 (print!2103 thiss!18206 (singletonSeq!2545 (h!42635 tokens!494)))))))

(assert (=> d!1004152 (not (isEmpty!21591 rules!2135))))

(assert (=> d!1004152 (= (rulesProduceIndividualToken!2530 thiss!18206 rules!2135 (h!42635 tokens!494)) lt!1183447)))

(declare-fun b!3476829 () Bool)

(declare-fun res!1402628 () Bool)

(assert (=> b!3476829 (=> (not res!1402628) (not e!2153539))))

(assert (=> b!3476829 (= res!1402628 (= (apply!8790 (_1!21616 lt!1183448) 0) (h!42635 tokens!494)))))

(declare-fun b!3476830 () Bool)

(assert (=> b!3476830 (= e!2153539 (isEmpty!21593 (_2!21616 lt!1183448)))))

(declare-fun b!3476831 () Bool)

(assert (=> b!3476831 (= e!2153540 (isEmpty!21593 (_2!21616 (lex!2364 thiss!18206 rules!2135 (print!2103 thiss!18206 (singletonSeq!2545 (h!42635 tokens!494)))))))))

(assert (= (and d!1004152 res!1402629) b!3476829))

(assert (= (and b!3476829 res!1402628) b!3476830))

(assert (= (and d!1004152 res!1402627) b!3476831))

(assert (=> d!1004152 m!3890515))

(assert (=> d!1004152 m!3890531))

(declare-fun m!3891959 () Bool)

(assert (=> d!1004152 m!3891959))

(assert (=> d!1004152 m!3890531))

(declare-fun m!3891961 () Bool)

(assert (=> d!1004152 m!3891961))

(declare-fun m!3891963 () Bool)

(assert (=> d!1004152 m!3891963))

(declare-fun m!3891965 () Bool)

(assert (=> d!1004152 m!3891965))

(assert (=> d!1004152 m!3891959))

(declare-fun m!3891967 () Bool)

(assert (=> d!1004152 m!3891967))

(assert (=> d!1004152 m!3890531))

(declare-fun m!3891969 () Bool)

(assert (=> b!3476829 m!3891969))

(declare-fun m!3891971 () Bool)

(assert (=> b!3476830 m!3891971))

(assert (=> b!3476831 m!3890531))

(assert (=> b!3476831 m!3890531))

(assert (=> b!3476831 m!3891959))

(assert (=> b!3476831 m!3891959))

(assert (=> b!3476831 m!3891967))

(declare-fun m!3891973 () Bool)

(assert (=> b!3476831 m!3891973))

(assert (=> b!3475996 d!1004152))

(declare-fun d!1004154 () Bool)

(assert (=> d!1004154 (= (get!11921 lt!1183021) (v!36915 lt!1183021))))

(assert (=> b!3475976 d!1004154))

(declare-fun b!3476836 () Bool)

(declare-fun e!2153543 () Bool)

(declare-fun tp_is_empty!17571 () Bool)

(declare-fun tp!1080494 () Bool)

(assert (=> b!3476836 (= e!2153543 (and tp_is_empty!17571 tp!1080494))))

(assert (=> b!3475967 (= tp!1080435 e!2153543)))

(assert (= (and b!3475967 (is-Cons!37213 (originalCharacters!6163 (h!42635 tokens!494)))) b!3476836))

(declare-fun b!3476850 () Bool)

(declare-fun b_free!90141 () Bool)

(declare-fun b_next!90845 () Bool)

(assert (=> b!3476850 (= b_free!90141 (not b_next!90845))))

(declare-fun t!275124 () Bool)

(declare-fun tb!190593 () Bool)

(assert (=> (and b!3476850 (= (toValue!7685 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494))))) t!275124) tb!190593))

(declare-fun result!234674 () Bool)

(assert (= result!234674 result!234656))

(assert (=> d!1004018 t!275124))

(declare-fun b_and!245237 () Bool)

(declare-fun tp!1080509 () Bool)

(assert (=> b!3476850 (= tp!1080509 (and (=> t!275124 result!234674) b_and!245237))))

(declare-fun b_free!90143 () Bool)

(declare-fun b_next!90847 () Bool)

(assert (=> b!3476850 (= b_free!90143 (not b_next!90847))))

(declare-fun t!275126 () Bool)

(declare-fun tb!190595 () Bool)

(assert (=> (and b!3476850 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494))))) t!275126) tb!190595))

(declare-fun result!234676 () Bool)

(assert (= result!234676 result!234664))

(assert (=> d!1004138 t!275126))

(declare-fun t!275128 () Bool)

(declare-fun tb!190597 () Bool)

(assert (=> (and b!3476850 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241)))) t!275128) tb!190597))

(declare-fun result!234678 () Bool)

(assert (= result!234678 result!234628))

(assert (=> d!1003906 t!275128))

(assert (=> b!3476588 t!275126))

(declare-fun t!275130 () Bool)

(declare-fun tb!190599 () Bool)

(assert (=> (and b!3476850 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494)))))) t!275130) tb!190599))

(declare-fun result!234680 () Bool)

(assert (= result!234680 result!234636))

(assert (=> d!1003910 t!275130))

(assert (=> b!3476672 t!275128))

(declare-fun tp!1080508 () Bool)

(declare-fun b_and!245239 () Bool)

(assert (=> b!3476850 (= tp!1080508 (and (=> t!275126 result!234676) (=> t!275130 result!234680) (=> t!275128 result!234678) b_and!245239))))

(declare-fun e!2153559 () Bool)

(assert (=> b!3476850 (= e!2153559 (and tp!1080509 tp!1080508))))

(declare-fun b!3476849 () Bool)

(declare-fun e!2153560 () Bool)

(declare-fun tp!1080507 () Bool)

(assert (=> b!3476849 (= e!2153560 (and tp!1080507 (inv!50402 (tag!6065 (rule!8047 (h!42635 (t!275060 tokens!494))))) (inv!50405 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) e!2153559))))

(declare-fun tp!1080505 () Bool)

(declare-fun b!3476848 () Bool)

(declare-fun e!2153558 () Bool)

(assert (=> b!3476848 (= e!2153558 (and (inv!21 (value!175758 (h!42635 (t!275060 tokens!494)))) e!2153560 tp!1080505))))

(declare-fun e!2153556 () Bool)

(declare-fun tp!1080506 () Bool)

(declare-fun b!3476847 () Bool)

(assert (=> b!3476847 (= e!2153556 (and (inv!50406 (h!42635 (t!275060 tokens!494))) e!2153558 tp!1080506))))

(assert (=> b!3475993 (= tp!1080432 e!2153556)))

(assert (= b!3476849 b!3476850))

(assert (= b!3476848 b!3476849))

(assert (= b!3476847 b!3476848))

(assert (= (and b!3475993 (is-Cons!37215 (t!275060 tokens!494))) b!3476847))

(declare-fun m!3891975 () Bool)

(assert (=> b!3476849 m!3891975))

(declare-fun m!3891977 () Bool)

(assert (=> b!3476849 m!3891977))

(declare-fun m!3891979 () Bool)

(assert (=> b!3476848 m!3891979))

(declare-fun m!3891981 () Bool)

(assert (=> b!3476847 m!3891981))

(declare-fun b!3476851 () Bool)

(declare-fun e!2153562 () Bool)

(declare-fun tp!1080510 () Bool)

(assert (=> b!3476851 (= e!2153562 (and tp_is_empty!17571 tp!1080510))))

(assert (=> b!3475973 (= tp!1080438 e!2153562)))

(assert (= (and b!3475973 (is-Cons!37213 (originalCharacters!6163 separatorToken!241))) b!3476851))

(declare-fun b!3476862 () Bool)

(declare-fun e!2153565 () Bool)

(assert (=> b!3476862 (= e!2153565 tp_is_empty!17571)))

(declare-fun b!3476864 () Bool)

(declare-fun tp!1080525 () Bool)

(assert (=> b!3476864 (= e!2153565 tp!1080525)))

(assert (=> b!3475985 (= tp!1080441 e!2153565)))

(declare-fun b!3476863 () Bool)

(declare-fun tp!1080521 () Bool)

(declare-fun tp!1080524 () Bool)

(assert (=> b!3476863 (= e!2153565 (and tp!1080521 tp!1080524))))

(declare-fun b!3476865 () Bool)

(declare-fun tp!1080522 () Bool)

(declare-fun tp!1080523 () Bool)

(assert (=> b!3476865 (= e!2153565 (and tp!1080522 tp!1080523))))

(assert (= (and b!3475985 (is-ElementMatch!10208 (regex!5449 (h!42634 rules!2135)))) b!3476862))

(assert (= (and b!3475985 (is-Concat!15887 (regex!5449 (h!42634 rules!2135)))) b!3476863))

(assert (= (and b!3475985 (is-Star!10208 (regex!5449 (h!42634 rules!2135)))) b!3476864))

(assert (= (and b!3475985 (is-Union!10208 (regex!5449 (h!42634 rules!2135)))) b!3476865))

(declare-fun b!3476868 () Bool)

(declare-fun e!2153568 () Bool)

(assert (=> b!3476868 (= e!2153568 true)))

(declare-fun b!3476867 () Bool)

(declare-fun e!2153567 () Bool)

(assert (=> b!3476867 (= e!2153567 e!2153568)))

(declare-fun b!3476866 () Bool)

(declare-fun e!2153566 () Bool)

(assert (=> b!3476866 (= e!2153566 e!2153567)))

(assert (=> b!3476006 e!2153566))

(assert (= b!3476867 b!3476868))

(assert (= b!3476866 b!3476867))

(assert (= (and b!3476006 (is-Cons!37214 (t!275059 rules!2135))) b!3476866))

(assert (=> b!3476868 (< (dynLambda!15723 order!19879 (toValue!7685 (transformation!5449 (h!42634 (t!275059 rules!2135))))) (dynLambda!15724 order!19881 lambda!122095))))

(assert (=> b!3476868 (< (dynLambda!15725 order!19883 (toChars!7544 (transformation!5449 (h!42634 (t!275059 rules!2135))))) (dynLambda!15724 order!19881 lambda!122095))))

(declare-fun b!3476869 () Bool)

(declare-fun e!2153569 () Bool)

(assert (=> b!3476869 (= e!2153569 tp_is_empty!17571)))

(declare-fun b!3476871 () Bool)

(declare-fun tp!1080530 () Bool)

(assert (=> b!3476871 (= e!2153569 tp!1080530)))

(assert (=> b!3475966 (= tp!1080443 e!2153569)))

(declare-fun b!3476870 () Bool)

(declare-fun tp!1080526 () Bool)

(declare-fun tp!1080529 () Bool)

(assert (=> b!3476870 (= e!2153569 (and tp!1080526 tp!1080529))))

(declare-fun b!3476872 () Bool)

(declare-fun tp!1080527 () Bool)

(declare-fun tp!1080528 () Bool)

(assert (=> b!3476872 (= e!2153569 (and tp!1080527 tp!1080528))))

(assert (= (and b!3475966 (is-ElementMatch!10208 (regex!5449 (rule!8047 (h!42635 tokens!494))))) b!3476869))

(assert (= (and b!3475966 (is-Concat!15887 (regex!5449 (rule!8047 (h!42635 tokens!494))))) b!3476870))

(assert (= (and b!3475966 (is-Star!10208 (regex!5449 (rule!8047 (h!42635 tokens!494))))) b!3476871))

(assert (= (and b!3475966 (is-Union!10208 (regex!5449 (rule!8047 (h!42635 tokens!494))))) b!3476872))

(declare-fun b!3476873 () Bool)

(declare-fun e!2153570 () Bool)

(assert (=> b!3476873 (= e!2153570 tp_is_empty!17571)))

(declare-fun b!3476875 () Bool)

(declare-fun tp!1080535 () Bool)

(assert (=> b!3476875 (= e!2153570 tp!1080535)))

(assert (=> b!3475987 (= tp!1080434 e!2153570)))

(declare-fun b!3476874 () Bool)

(declare-fun tp!1080531 () Bool)

(declare-fun tp!1080534 () Bool)

(assert (=> b!3476874 (= e!2153570 (and tp!1080531 tp!1080534))))

(declare-fun b!3476876 () Bool)

(declare-fun tp!1080532 () Bool)

(declare-fun tp!1080533 () Bool)

(assert (=> b!3476876 (= e!2153570 (and tp!1080532 tp!1080533))))

(assert (= (and b!3475987 (is-ElementMatch!10208 (regex!5449 (rule!8047 separatorToken!241)))) b!3476873))

(assert (= (and b!3475987 (is-Concat!15887 (regex!5449 (rule!8047 separatorToken!241)))) b!3476874))

(assert (= (and b!3475987 (is-Star!10208 (regex!5449 (rule!8047 separatorToken!241)))) b!3476875))

(assert (= (and b!3475987 (is-Union!10208 (regex!5449 (rule!8047 separatorToken!241)))) b!3476876))

(declare-fun b!3476887 () Bool)

(declare-fun b_free!90145 () Bool)

(declare-fun b_next!90849 () Bool)

(assert (=> b!3476887 (= b_free!90145 (not b_next!90849))))

(declare-fun tb!190601 () Bool)

(declare-fun t!275132 () Bool)

(assert (=> (and b!3476887 (= (toValue!7685 (transformation!5449 (h!42634 (t!275059 rules!2135)))) (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494))))) t!275132) tb!190601))

(declare-fun result!234686 () Bool)

(assert (= result!234686 result!234656))

(assert (=> d!1004018 t!275132))

(declare-fun b_and!245241 () Bool)

(declare-fun tp!1080547 () Bool)

(assert (=> b!3476887 (= tp!1080547 (and (=> t!275132 result!234686) b_and!245241))))

(declare-fun b_free!90147 () Bool)

(declare-fun b_next!90851 () Bool)

(assert (=> b!3476887 (= b_free!90147 (not b_next!90851))))

(declare-fun tb!190603 () Bool)

(declare-fun t!275134 () Bool)

(assert (=> (and b!3476887 (= (toChars!7544 (transformation!5449 (h!42634 (t!275059 rules!2135)))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494))))) t!275134) tb!190603))

(declare-fun result!234688 () Bool)

(assert (= result!234688 result!234664))

(assert (=> d!1004138 t!275134))

(declare-fun tb!190605 () Bool)

(declare-fun t!275136 () Bool)

(assert (=> (and b!3476887 (= (toChars!7544 (transformation!5449 (h!42634 (t!275059 rules!2135)))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241)))) t!275136) tb!190605))

(declare-fun result!234690 () Bool)

(assert (= result!234690 result!234628))

(assert (=> d!1003906 t!275136))

(assert (=> b!3476588 t!275134))

(declare-fun tb!190607 () Bool)

(declare-fun t!275140 () Bool)

(assert (=> (and b!3476887 (= (toChars!7544 (transformation!5449 (h!42634 (t!275059 rules!2135)))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494)))))) t!275140) tb!190607))

(declare-fun result!234692 () Bool)

(assert (= result!234692 result!234636))

(assert (=> d!1003910 t!275140))

(assert (=> b!3476672 t!275136))

(declare-fun b_and!245243 () Bool)

(declare-fun tp!1080545 () Bool)

(assert (=> b!3476887 (= tp!1080545 (and (=> t!275136 result!234690) (=> t!275140 result!234692) (=> t!275134 result!234688) b_and!245243))))

(declare-fun e!2153580 () Bool)

(assert (=> b!3476887 (= e!2153580 (and tp!1080547 tp!1080545))))

(declare-fun b!3476886 () Bool)

(declare-fun e!2153579 () Bool)

(declare-fun tp!1080544 () Bool)

(assert (=> b!3476886 (= e!2153579 (and tp!1080544 (inv!50402 (tag!6065 (h!42634 (t!275059 rules!2135)))) (inv!50405 (transformation!5449 (h!42634 (t!275059 rules!2135)))) e!2153580))))

(declare-fun b!3476885 () Bool)

(declare-fun e!2153581 () Bool)

(declare-fun tp!1080546 () Bool)

(assert (=> b!3476885 (= e!2153581 (and e!2153579 tp!1080546))))

(assert (=> b!3475955 (= tp!1080440 e!2153581)))

(assert (= b!3476886 b!3476887))

(assert (= b!3476885 b!3476886))

(assert (= (and b!3475955 (is-Cons!37214 (t!275059 rules!2135))) b!3476885))

(declare-fun m!3891983 () Bool)

(assert (=> b!3476886 m!3891983))

(declare-fun m!3891985 () Bool)

(assert (=> b!3476886 m!3891985))

(declare-fun b_lambda!100431 () Bool)

(assert (= b_lambda!100417 (or (and b!3476887 b_free!90145 (= (toValue!7685 (transformation!5449 (h!42634 (t!275059 rules!2135)))) (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) (and b!3475961 b_free!90117) (and b!3475953 b_free!90121 (= (toValue!7685 (transformation!5449 (rule!8047 separatorToken!241))) (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) (and b!3475991 b_free!90125 (= (toValue!7685 (transformation!5449 (h!42634 rules!2135))) (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) (and b!3476850 b_free!90141 (= (toValue!7685 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (toValue!7685 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) b_lambda!100431)))

(declare-fun b_lambda!100433 () Bool)

(assert (= b_lambda!100429 (or b!3475960 b_lambda!100433)))

(declare-fun bs!561741 () Bool)

(declare-fun d!1004156 () Bool)

(assert (= bs!561741 (and d!1004156 b!3475960)))

(assert (=> bs!561741 (= (dynLambda!15731 lambda!122094 (h!42635 tokens!494)) (not (isSeparator!5449 (rule!8047 (h!42635 tokens!494)))))))

(assert (=> d!1004142 d!1004156))

(declare-fun b_lambda!100435 () Bool)

(assert (= b_lambda!100415 (or b!3475968 b_lambda!100435)))

(declare-fun bs!561742 () Bool)

(declare-fun d!1004158 () Bool)

(assert (= bs!561742 (and d!1004158 b!3475968)))

(assert (=> bs!561742 (= (dynLambda!15731 lambda!122095 (h!42635 (t!275060 tokens!494))) (rulesProduceIndividualToken!2530 thiss!18206 rules!2135 (h!42635 (t!275060 tokens!494))))))

(assert (=> bs!561742 m!3890647))

(assert (=> d!1004016 d!1004158))

(declare-fun b_lambda!100437 () Bool)

(assert (= b_lambda!100423 (or b!3475960 b_lambda!100437)))

(assert (=> b!3476801 d!1004156))

(declare-fun b_lambda!100439 () Bool)

(assert (= b_lambda!100407 (or (and b!3475953 b_free!90123 (= (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))))) (and b!3475961 b_free!90119 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))))) (and b!3476887 b_free!90147 (= (toChars!7544 (transformation!5449 (h!42634 (t!275059 rules!2135)))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))))) (and b!3475991 b_free!90127 (= (toChars!7544 (transformation!5449 (h!42634 rules!2135))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))))) (and b!3476850 b_free!90143) b_lambda!100439)))

(declare-fun b_lambda!100441 () Bool)

(assert (= b_lambda!100427 (or b!3475960 b_lambda!100441)))

(declare-fun bs!561743 () Bool)

(declare-fun d!1004160 () Bool)

(assert (= bs!561743 (and d!1004160 b!3475960)))

(assert (=> bs!561743 (= (dynLambda!15731 lambda!122094 (h!42635 (t!275060 tokens!494))) (not (isSeparator!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))))))

(assert (=> d!1004140 d!1004160))

(declare-fun b_lambda!100443 () Bool)

(assert (= b_lambda!100419 (or (and b!3475953 b_free!90123 (= (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) (and b!3475961 b_free!90119) (and b!3476887 b_free!90147 (= (toChars!7544 (transformation!5449 (h!42634 (t!275059 rules!2135)))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) (and b!3475991 b_free!90127 (= (toChars!7544 (transformation!5449 (h!42634 rules!2135))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) (and b!3476850 b_free!90143 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) b_lambda!100443)))

(declare-fun b_lambda!100445 () Bool)

(assert (= b_lambda!100421 (or (and b!3476887 b_free!90147 (= (toChars!7544 (transformation!5449 (h!42634 (t!275059 rules!2135)))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))))) (and b!3475991 b_free!90127 (= (toChars!7544 (transformation!5449 (h!42634 rules!2135))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))))) (and b!3475953 b_free!90123) (and b!3476850 b_free!90143 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))))) (and b!3475961 b_free!90119 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))))) b_lambda!100445)))

(declare-fun b_lambda!100447 () Bool)

(assert (= b_lambda!100405 (or (and b!3476887 b_free!90147 (= (toChars!7544 (transformation!5449 (h!42634 (t!275059 rules!2135)))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))))) (and b!3475991 b_free!90127 (= (toChars!7544 (transformation!5449 (h!42634 rules!2135))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))))) (and b!3475953 b_free!90123) (and b!3476850 b_free!90143 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))))) (and b!3475961 b_free!90119 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))) (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))))) b_lambda!100447)))

(declare-fun b_lambda!100449 () Bool)

(assert (= b_lambda!100425 (or (and b!3475953 b_free!90123 (= (toChars!7544 (transformation!5449 (rule!8047 separatorToken!241))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) (and b!3475961 b_free!90119) (and b!3476887 b_free!90147 (= (toChars!7544 (transformation!5449 (h!42634 (t!275059 rules!2135)))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) (and b!3475991 b_free!90127 (= (toChars!7544 (transformation!5449 (h!42634 rules!2135))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) (and b!3476850 b_free!90143 (= (toChars!7544 (transformation!5449 (rule!8047 (h!42635 (t!275060 tokens!494))))) (toChars!7544 (transformation!5449 (rule!8047 (h!42635 tokens!494)))))) b_lambda!100449)))

(push 1)

(assert (not b!3476279))

(assert (not d!1004110))

(assert (not b!3476193))

(assert (not b_next!90825))

(assert (not b!3476726))

(assert (not b!3476875))

(assert (not b!3476671))

(assert (not b!3476825))

(assert (not b!3476811))

(assert (not b!3476247))

(assert (not d!1003988))

(assert (not d!1003958))

(assert b_and!245241)

(assert (not b!3476788))

(assert (not b!3476848))

(assert b_and!245217)

(assert (not b!3476677))

(assert (not bm!250803))

(assert (not b!3476796))

(assert (not b!3476785))

(assert (not b!3476735))

(assert (not b!3476676))

(assert (not d!1004148))

(assert (not b!3476807))

(assert (not b!3476830))

(assert (not b!3476217))

(assert (not d!1003926))

(assert (not d!1004016))

(assert (not d!1003912))

(assert (not b!3476828))

(assert (not b!3476731))

(assert (not b!3476537))

(assert (not d!1004132))

(assert (not b!3476874))

(assert (not bm!250798))

(assert (not d!1003928))

(assert b_and!245237)

(assert (not b!3476698))

(assert (not d!1004066))

(assert (not b!3476607))

(assert (not b!3476297))

(assert (not b_lambda!100447))

(assert (not b!3476663))

(assert (not d!1003986))

(assert (not b!3476439))

(assert (not b_next!90849))

(assert (not b!3476831))

(assert (not b!3476440))

(assert (not b!3476530))

(assert (not b!3476264))

(assert (not d!1004108))

(assert b_and!245239)

(assert (not d!1003932))

(assert (not b!3476783))

(assert (not b_next!90831))

(assert (not b!3476866))

(assert (not b!3476872))

(assert (not b!3476276))

(assert (not d!1004084))

(assert (not b!3476795))

(assert b_and!245233)

(assert (not d!1003984))

(assert (not b!3476590))

(assert (not b!3476230))

(assert (not b!3476776))

(assert (not b!3476733))

(assert b_and!245231)

(assert (not d!1004020))

(assert (not d!1004012))

(assert (not d!1004082))

(assert (not tb!190581))

(assert (not d!1004140))

(assert (not d!1004146))

(assert (not bm!250823))

(assert (not d!1003904))

(assert (not b!3476780))

(assert (not d!1004142))

(assert (not b!3476717))

(assert (not b!3476588))

(assert (not bs!561742))

(assert (not d!1004014))

(assert (not b_next!90847))

(assert (not d!1004098))

(assert (not b_lambda!100443))

(assert (not d!1004100))

(assert (not b!3476563))

(assert (not b!3476792))

(assert (not b!3476865))

(assert (not b!3476686))

(assert (not bm!250829))

(assert (not b!3476864))

(assert (not b!3476778))

(assert (not b!3476818))

(assert (not b_next!90823))

(assert (not d!1003924))

(assert (not d!1004102))

(assert (not d!1003922))

(assert (not b!3476194))

(assert (not b!3476529))

(assert (not d!1004032))

(assert (not bm!250824))

(assert (not b!3476775))

(assert (not b!3476849))

(assert (not b!3476227))

(assert (not d!1003910))

(assert tp_is_empty!17571)

(assert (not d!1004112))

(assert (not b!3476819))

(assert (not bm!250801))

(assert (not b!3476559))

(assert (not d!1003892))

(assert (not d!1003878))

(assert (not b!3476803))

(assert (not b!3476225))

(assert (not b_lambda!100431))

(assert (not b!3476195))

(assert b_and!245243)

(assert (not b!3476804))

(assert (not d!1003944))

(assert (not bm!250828))

(assert (not d!1004072))

(assert (not b!3476241))

(assert (not d!1003894))

(assert (not b!3476737))

(assert (not b!3476885))

(assert (not b!3476774))

(assert (not b!3476606))

(assert (not b!3476836))

(assert (not d!1004136))

(assert (not b!3476432))

(assert (not d!1003918))

(assert (not b!3476216))

(assert (not b!3476260))

(assert (not b!3476238))

(assert (not b_lambda!100441))

(assert (not d!1003914))

(assert (not b!3476781))

(assert (not b!3476816))

(assert (not b!3476747))

(assert (not b!3476822))

(assert (not b!3476211))

(assert b_and!245235)

(assert (not b!3476261))

(assert (not b!3476169))

(assert (not b!3476435))

(assert (not d!1004008))

(assert (not b!3476672))

(assert (not b!3476667))

(assert (not b!3476433))

(assert (not b!3476826))

(assert (not d!1004078))

(assert (not d!1003916))

(assert (not b_next!90829))

(assert (not b!3476558))

(assert (not b!3476436))

(assert (not b!3476886))

(assert (not b!3476718))

(assert (not b!3476851))

(assert (not d!1004026))

(assert (not b!3476246))

(assert (not b!3476564))

(assert (not b_lambda!100433))

(assert (not bm!250799))

(assert (not b!3476438))

(assert (not b!3476321))

(assert (not d!1004088))

(assert (not b!3476770))

(assert (not b!3476870))

(assert (not b!3476282))

(assert (not d!1004114))

(assert (not d!1004010))

(assert (not b!3476716))

(assert (not b_next!90827))

(assert (not d!1003996))

(assert (not b!3476876))

(assert (not b!3476231))

(assert (not d!1004068))

(assert (not b!3476170))

(assert (not b!3476682))

(assert (not b!3476556))

(assert (not d!1004006))

(assert (not b!3476713))

(assert (not b_lambda!100445))

(assert (not d!1004022))

(assert (not d!1003962))

(assert (not b!3476871))

(assert (not b!3476565))

(assert (not b!3476829))

(assert (not tb!190557))

(assert (not b!3476237))

(assert (not b!3476288))

(assert (not b!3476821))

(assert (not d!1004152))

(assert (not tb!190563))

(assert (not b!3476561))

(assert (not b!3476690))

(assert (not d!1004138))

(assert (not b!3476658))

(assert (not b!3476740))

(assert (not b_next!90821))

(assert (not b!3476281))

(assert (not b_lambda!100437))

(assert (not b!3476323))

(assert (not b!3476298))

(assert (not d!1003992))

(assert (not d!1004094))

(assert (not b!3476689))

(assert (not b!3476173))

(assert (not d!1004130))

(assert (not b!3476597))

(assert (not b!3476810))

(assert (not b_next!90851))

(assert (not d!1004060))

(assert (not tb!190587))

(assert (not d!1004128))

(assert (not d!1004036))

(assert (not d!1004064))

(assert (not b!3476679))

(assert (not d!1003920))

(assert (not b!3476772))

(assert (not b!3476863))

(assert (not b!3476531))

(assert (not b!3476802))

(assert (not b!3476223))

(assert (not b!3476589))

(assert (not bm!250802))

(assert b_and!245213)

(assert (not b!3476451))

(assert (not d!1004116))

(assert (not b!3476771))

(assert (not d!1003934))

(assert (not b!3476744))

(assert (not d!1004144))

(assert (not b!3476557))

(assert (not d!1004118))

(assert (not bm!250797))

(assert (not b_lambda!100449))

(assert (not d!1003908))

(assert (not b!3476210))

(assert (not b!3476732))

(assert (not b_lambda!100435))

(assert (not b!3476437))

(assert (not d!1003954))

(assert (not b!3476673))

(assert (not d!1004150))

(assert (not b!3476670))

(assert (not b!3476567))

(assert (not b!3476808))

(assert (not b_lambda!100439))

(assert (not b!3476275))

(assert (not d!1003888))

(assert b_and!245215)

(assert (not b!3476566))

(assert (not d!1003906))

(assert (not b!3476734))

(assert (not d!1004104))

(assert (not d!1004126))

(assert (not b!3476274))

(assert (not bm!250825))

(assert (not b!3476571))

(assert (not b_next!90845))

(assert (not b!3476660))

(assert (not b!3476748))

(assert (not b!3476751))

(assert (not b!3476777))

(assert (not b!3476847))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!90825))

(assert b_and!245241)

(assert b_and!245217)

(assert b_and!245237)

(assert b_and!245233)

(assert b_and!245231)

(assert (not b_next!90847))

(assert (not b_next!90823))

(assert b_and!245243)

(assert b_and!245235)

(assert (not b_next!90829))

(assert (not b_next!90827))

(assert (not b_next!90821))

(assert (not b_next!90851))

(assert b_and!245213)

(assert b_and!245215)

(assert (not b_next!90845))

(assert (not b_next!90831))

(assert (not b_next!90849))

(assert b_and!245239)

(check-sat)

(pop 1)

