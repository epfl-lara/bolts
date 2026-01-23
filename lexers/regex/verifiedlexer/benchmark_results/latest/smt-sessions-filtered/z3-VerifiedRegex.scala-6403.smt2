; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333530 () Bool)

(assert start!333530)

(declare-fun b!3593079 () Bool)

(declare-fun b_free!92785 () Bool)

(declare-fun b_next!93489 () Bool)

(assert (=> b!3593079 (= b_free!92785 (not b_next!93489))))

(declare-fun tp!1099790 () Bool)

(declare-fun b_and!260099 () Bool)

(assert (=> b!3593079 (= tp!1099790 b_and!260099)))

(declare-fun b_free!92787 () Bool)

(declare-fun b_next!93491 () Bool)

(assert (=> b!3593079 (= b_free!92787 (not b_next!93491))))

(declare-fun tp!1099784 () Bool)

(declare-fun b_and!260101 () Bool)

(assert (=> b!3593079 (= tp!1099784 b_and!260101)))

(declare-fun b!3593099 () Bool)

(declare-fun b_free!92789 () Bool)

(declare-fun b_next!93493 () Bool)

(assert (=> b!3593099 (= b_free!92789 (not b_next!93493))))

(declare-fun tp!1099794 () Bool)

(declare-fun b_and!260103 () Bool)

(assert (=> b!3593099 (= tp!1099794 b_and!260103)))

(declare-fun b_free!92791 () Bool)

(declare-fun b_next!93495 () Bool)

(assert (=> b!3593099 (= b_free!92791 (not b_next!93495))))

(declare-fun tp!1099795 () Bool)

(declare-fun b_and!260105 () Bool)

(assert (=> b!3593099 (= tp!1099795 b_and!260105)))

(declare-fun b!3593087 () Bool)

(declare-fun b_free!92793 () Bool)

(declare-fun b_next!93497 () Bool)

(assert (=> b!3593087 (= b_free!92793 (not b_next!93497))))

(declare-fun tp!1099792 () Bool)

(declare-fun b_and!260107 () Bool)

(assert (=> b!3593087 (= tp!1099792 b_and!260107)))

(declare-fun b_free!92795 () Bool)

(declare-fun b_next!93499 () Bool)

(assert (=> b!3593087 (= b_free!92795 (not b_next!93499))))

(declare-fun tp!1099787 () Bool)

(declare-fun b_and!260109 () Bool)

(assert (=> b!3593087 (= tp!1099787 b_and!260109)))

(declare-fun b!3593095 () Bool)

(declare-fun b_free!92797 () Bool)

(declare-fun b_next!93501 () Bool)

(assert (=> b!3593095 (= b_free!92797 (not b_next!93501))))

(declare-fun tp!1099788 () Bool)

(declare-fun b_and!260111 () Bool)

(assert (=> b!3593095 (= tp!1099788 b_and!260111)))

(declare-fun b_free!92799 () Bool)

(declare-fun b_next!93503 () Bool)

(assert (=> b!3593095 (= b_free!92799 (not b_next!93503))))

(declare-fun tp!1099786 () Bool)

(declare-fun b_and!260113 () Bool)

(assert (=> b!3593095 (= tp!1099786 b_and!260113)))

(declare-fun e!2223354 () Bool)

(assert (=> b!3593079 (= e!2223354 (and tp!1099790 tp!1099784))))

(declare-fun b!3593080 () Bool)

(declare-fun res!1450968 () Bool)

(declare-fun e!2223357 () Bool)

(assert (=> b!3593080 (=> (not res!1450968) (not e!2223357))))

(declare-datatypes ((List!37909 0))(
  ( (Nil!37785) (Cons!37785 (h!43205 (_ BitVec 16)) (t!291280 List!37909)) )
))
(declare-datatypes ((TokenValue!5816 0))(
  ( (FloatLiteralValue!11632 (text!41157 List!37909)) (TokenValueExt!5815 (__x!23849 Int)) (Broken!29080 (value!179635 List!37909)) (Object!5939) (End!5816) (Def!5816) (Underscore!5816) (Match!5816) (Else!5816) (Error!5816) (Case!5816) (If!5816) (Extends!5816) (Abstract!5816) (Class!5816) (Val!5816) (DelimiterValue!11632 (del!5876 List!37909)) (KeywordValue!5822 (value!179636 List!37909)) (CommentValue!11632 (value!179637 List!37909)) (WhitespaceValue!11632 (value!179638 List!37909)) (IndentationValue!5816 (value!179639 List!37909)) (String!42413) (Int32!5816) (Broken!29081 (value!179640 List!37909)) (Boolean!5817) (Unit!53788) (OperatorValue!5819 (op!5876 List!37909)) (IdentifierValue!11632 (value!179641 List!37909)) (IdentifierValue!11633 (value!179642 List!37909)) (WhitespaceValue!11633 (value!179643 List!37909)) (True!11632) (False!11632) (Broken!29082 (value!179644 List!37909)) (Broken!29083 (value!179645 List!37909)) (True!11633) (RightBrace!5816) (RightBracket!5816) (Colon!5816) (Null!5816) (Comma!5816) (LeftBracket!5816) (False!11633) (LeftBrace!5816) (ImaginaryLiteralValue!5816 (text!41158 List!37909)) (StringLiteralValue!17448 (value!179646 List!37909)) (EOFValue!5816 (value!179647 List!37909)) (IdentValue!5816 (value!179648 List!37909)) (DelimiterValue!11633 (value!179649 List!37909)) (DedentValue!5816 (value!179650 List!37909)) (NewLineValue!5816 (value!179651 List!37909)) (IntegerValue!17448 (value!179652 (_ BitVec 32)) (text!41159 List!37909)) (IntegerValue!17449 (value!179653 Int) (text!41160 List!37909)) (Times!5816) (Or!5816) (Equal!5816) (Minus!5816) (Broken!29084 (value!179654 List!37909)) (And!5816) (Div!5816) (LessEqual!5816) (Mod!5816) (Concat!16161) (Not!5816) (Plus!5816) (SpaceValue!5816 (value!179655 List!37909)) (IntegerValue!17450 (value!179656 Int) (text!41161 List!37909)) (StringLiteralValue!17449 (text!41162 List!37909)) (FloatLiteralValue!11633 (text!41163 List!37909)) (BytesLiteralValue!5816 (value!179657 List!37909)) (CommentValue!11633 (value!179658 List!37909)) (StringLiteralValue!17450 (value!179659 List!37909)) (ErrorTokenValue!5816 (msg!5877 List!37909)) )
))
(declare-datatypes ((C!20876 0))(
  ( (C!20877 (val!12486 Int)) )
))
(declare-datatypes ((Regex!10345 0))(
  ( (ElementMatch!10345 (c!622112 C!20876)) (Concat!16162 (regOne!21202 Regex!10345) (regTwo!21202 Regex!10345)) (EmptyExpr!10345) (Star!10345 (reg!10674 Regex!10345)) (EmptyLang!10345) (Union!10345 (regOne!21203 Regex!10345) (regTwo!21203 Regex!10345)) )
))
(declare-datatypes ((String!42414 0))(
  ( (String!42415 (value!179660 String)) )
))
(declare-datatypes ((List!37910 0))(
  ( (Nil!37786) (Cons!37786 (h!43206 C!20876) (t!291281 List!37910)) )
))
(declare-datatypes ((IArray!22999 0))(
  ( (IArray!23000 (innerList!11557 List!37910)) )
))
(declare-datatypes ((Conc!11497 0))(
  ( (Node!11497 (left!29520 Conc!11497) (right!29850 Conc!11497) (csize!23224 Int) (cheight!11708 Int)) (Leaf!17901 (xs!14699 IArray!22999) (csize!23225 Int)) (Empty!11497) )
))
(declare-datatypes ((BalanceConc!22608 0))(
  ( (BalanceConc!22609 (c!622113 Conc!11497)) )
))
(declare-datatypes ((TokenValueInjection!11060 0))(
  ( (TokenValueInjection!11061 (toValue!7870 Int) (toChars!7729 Int)) )
))
(declare-datatypes ((Rule!10972 0))(
  ( (Rule!10973 (regex!5586 Regex!10345) (tag!6262 String!42414) (isSeparator!5586 Bool) (transformation!5586 TokenValueInjection!11060)) )
))
(declare-datatypes ((List!37911 0))(
  ( (Nil!37787) (Cons!37787 (h!43207 Rule!10972) (t!291282 List!37911)) )
))
(declare-fun rules!3307 () List!37911)

(declare-fun rule!403 () Rule!10972)

(declare-fun contains!7235 (List!37911 Rule!10972) Bool)

(assert (=> b!3593080 (= res!1450968 (contains!7235 rules!3307 rule!403))))

(declare-fun tp!1099785 () Bool)

(declare-datatypes ((Token!10538 0))(
  ( (Token!10539 (value!179661 TokenValue!5816) (rule!8306 Rule!10972) (size!28786 Int) (originalCharacters!6300 List!37910)) )
))
(declare-fun token!511 () Token!10538)

(declare-fun b!3593081 () Bool)

(declare-fun e!2223364 () Bool)

(declare-fun e!2223355 () Bool)

(declare-fun inv!51129 (String!42414) Bool)

(declare-fun inv!51132 (TokenValueInjection!11060) Bool)

(assert (=> b!3593081 (= e!2223355 (and tp!1099785 (inv!51129 (tag!6262 (rule!8306 token!511))) (inv!51132 (transformation!5586 (rule!8306 token!511))) e!2223364))))

(declare-fun e!2223358 () Bool)

(declare-fun tp!1099797 () Bool)

(declare-fun b!3593082 () Bool)

(declare-fun e!2223365 () Bool)

(assert (=> b!3593082 (= e!2223358 (and tp!1099797 (inv!51129 (tag!6262 rule!403)) (inv!51132 (transformation!5586 rule!403)) e!2223365))))

(declare-fun b!3593083 () Bool)

(declare-fun e!2223376 () Bool)

(declare-fun e!2223360 () Bool)

(assert (=> b!3593083 (= e!2223376 e!2223360)))

(declare-fun res!1450975 () Bool)

(assert (=> b!3593083 (=> (not res!1450975) (not e!2223360))))

(declare-fun lt!1233094 () Rule!10972)

(declare-datatypes ((tuple2!37668 0))(
  ( (tuple2!37669 (_1!21968 Token!10538) (_2!21968 List!37910)) )
))
(declare-fun lt!1233101 () tuple2!37668)

(declare-fun matchR!4914 (Regex!10345 List!37910) Bool)

(declare-fun list!13902 (BalanceConc!22608) List!37910)

(declare-fun charsOf!3600 (Token!10538) BalanceConc!22608)

(assert (=> b!3593083 (= res!1450975 (matchR!4914 (regex!5586 lt!1233094) (list!13902 (charsOf!3600 (_1!21968 lt!1233101)))))))

(declare-datatypes ((Option!7802 0))(
  ( (None!7801) (Some!7801 (v!37483 Rule!10972)) )
))
(declare-fun lt!1233092 () Option!7802)

(declare-fun get!12205 (Option!7802) Rule!10972)

(assert (=> b!3593083 (= lt!1233094 (get!12205 lt!1233092))))

(declare-fun b!3593084 () Bool)

(declare-fun e!2223362 () Bool)

(declare-fun e!2223371 () Bool)

(declare-fun tp!1099798 () Bool)

(assert (=> b!3593084 (= e!2223362 (and e!2223371 tp!1099798))))

(declare-fun b!3593085 () Bool)

(declare-fun res!1450969 () Bool)

(declare-fun e!2223375 () Bool)

(assert (=> b!3593085 (=> (not res!1450969) (not e!2223375))))

(assert (=> b!3593085 (= res!1450969 (= (rule!8306 token!511) rule!403))))

(declare-fun b!3593086 () Bool)

(declare-fun e!2223369 () Bool)

(declare-fun e!2223366 () Bool)

(assert (=> b!3593086 (= e!2223369 e!2223366)))

(declare-fun res!1450973 () Bool)

(assert (=> b!3593086 (=> res!1450973 e!2223366)))

(declare-fun lt!1233089 () List!37910)

(declare-fun lt!1233105 () List!37910)

(declare-fun isPrefix!2949 (List!37910 List!37910) Bool)

(assert (=> b!3593086 (= res!1450973 (not (isPrefix!2949 lt!1233089 lt!1233105)))))

(declare-fun ++!9402 (List!37910 List!37910) List!37910)

(assert (=> b!3593086 (isPrefix!2949 lt!1233089 (++!9402 lt!1233089 (_2!21968 lt!1233101)))))

(declare-datatypes ((Unit!53789 0))(
  ( (Unit!53790) )
))
(declare-fun lt!1233098 () Unit!53789)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1870 (List!37910 List!37910) Unit!53789)

(assert (=> b!3593086 (= lt!1233098 (lemmaConcatTwoListThenFirstIsPrefix!1870 lt!1233089 (_2!21968 lt!1233101)))))

(declare-fun lt!1233096 () BalanceConc!22608)

(assert (=> b!3593086 (= lt!1233089 (list!13902 lt!1233096))))

(assert (=> b!3593086 (= lt!1233096 (charsOf!3600 (_1!21968 lt!1233101)))))

(assert (=> b!3593086 e!2223376))

(declare-fun res!1450974 () Bool)

(assert (=> b!3593086 (=> (not res!1450974) (not e!2223376))))

(declare-fun isDefined!6034 (Option!7802) Bool)

(assert (=> b!3593086 (= res!1450974 (isDefined!6034 lt!1233092))))

(declare-datatypes ((LexerInterface!5175 0))(
  ( (LexerInterfaceExt!5172 (__x!23850 Int)) (Lexer!5173) )
))
(declare-fun thiss!23823 () LexerInterface!5175)

(declare-fun getRuleFromTag!1192 (LexerInterface!5175 List!37911 String!42414) Option!7802)

(assert (=> b!3593086 (= lt!1233092 (getRuleFromTag!1192 thiss!23823 rules!3307 (tag!6262 (rule!8306 (_1!21968 lt!1233101)))))))

(declare-fun lt!1233108 () Unit!53789)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1192 (LexerInterface!5175 List!37911 List!37910 Token!10538) Unit!53789)

(assert (=> b!3593086 (= lt!1233108 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1192 thiss!23823 rules!3307 lt!1233105 (_1!21968 lt!1233101)))))

(declare-datatypes ((Option!7803 0))(
  ( (None!7802) (Some!7802 (v!37484 tuple2!37668)) )
))
(declare-fun lt!1233106 () Option!7803)

(declare-fun get!12206 (Option!7803) tuple2!37668)

(assert (=> b!3593086 (= lt!1233101 (get!12206 lt!1233106))))

(declare-fun lt!1233099 () Unit!53789)

(declare-fun suffix!1395 () List!37910)

(declare-fun lt!1233091 () List!37910)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!855 (LexerInterface!5175 List!37911 List!37910 List!37910) Unit!53789)

(assert (=> b!3593086 (= lt!1233099 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!855 thiss!23823 rules!3307 lt!1233091 suffix!1395))))

(declare-fun maxPrefix!2709 (LexerInterface!5175 List!37911 List!37910) Option!7803)

(assert (=> b!3593086 (= lt!1233106 (maxPrefix!2709 thiss!23823 rules!3307 lt!1233105))))

(assert (=> b!3593086 (isPrefix!2949 lt!1233091 lt!1233105)))

(declare-fun lt!1233104 () Unit!53789)

(assert (=> b!3593086 (= lt!1233104 (lemmaConcatTwoListThenFirstIsPrefix!1870 lt!1233091 suffix!1395))))

(assert (=> b!3593086 (= lt!1233105 (++!9402 lt!1233091 suffix!1395))))

(assert (=> b!3593087 (= e!2223365 (and tp!1099792 tp!1099787))))

(declare-fun b!3593089 () Bool)

(declare-fun e!2223359 () Bool)

(declare-fun ruleValid!1851 (LexerInterface!5175 Rule!10972) Bool)

(assert (=> b!3593089 (= e!2223359 (ruleValid!1851 thiss!23823 (rule!8306 (_1!21968 lt!1233101))))))

(declare-fun b!3593090 () Bool)

(declare-fun res!1450970 () Bool)

(assert (=> b!3593090 (=> (not res!1450970) (not e!2223357))))

(declare-fun anOtherTypeRule!33 () Rule!10972)

(assert (=> b!3593090 (= res!1450970 (contains!7235 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3593091 () Bool)

(declare-fun res!1450977 () Bool)

(assert (=> b!3593091 (=> (not res!1450977) (not e!2223357))))

(declare-fun isEmpty!22274 (List!37911) Bool)

(assert (=> b!3593091 (= res!1450977 (not (isEmpty!22274 rules!3307)))))

(declare-fun b!3593092 () Bool)

(declare-fun e!2223374 () Bool)

(declare-fun tp!1099796 () Bool)

(declare-fun inv!21 (TokenValue!5816) Bool)

(assert (=> b!3593092 (= e!2223374 (and (inv!21 (value!179661 token!511)) e!2223355 tp!1099796))))

(declare-fun b!3593093 () Bool)

(assert (=> b!3593093 (= e!2223360 (= (rule!8306 (_1!21968 lt!1233101)) lt!1233094))))

(declare-fun b!3593094 () Bool)

(declare-fun res!1450967 () Bool)

(assert (=> b!3593094 (=> res!1450967 e!2223369)))

(declare-fun sepAndNonSepRulesDisjointChars!1756 (List!37911 List!37911) Bool)

(assert (=> b!3593094 (= res!1450967 (not (sepAndNonSepRulesDisjointChars!1756 rules!3307 rules!3307)))))

(assert (=> b!3593095 (= e!2223364 (and tp!1099788 tp!1099786))))

(declare-fun b!3593096 () Bool)

(declare-fun e!2223370 () Bool)

(declare-fun tp!1099789 () Bool)

(assert (=> b!3593096 (= e!2223371 (and tp!1099789 (inv!51129 (tag!6262 (h!43207 rules!3307))) (inv!51132 (transformation!5586 (h!43207 rules!3307))) e!2223370))))

(declare-fun e!2223367 () Bool)

(declare-fun tp!1099791 () Bool)

(declare-fun b!3593097 () Bool)

(assert (=> b!3593097 (= e!2223367 (and tp!1099791 (inv!51129 (tag!6262 anOtherTypeRule!33)) (inv!51132 (transformation!5586 anOtherTypeRule!33)) e!2223354))))

(declare-fun b!3593098 () Bool)

(declare-fun e!2223361 () Bool)

(assert (=> b!3593098 (= e!2223366 e!2223361)))

(declare-fun res!1450980 () Bool)

(assert (=> b!3593098 (=> res!1450980 e!2223361)))

(declare-fun apply!9092 (TokenValueInjection!11060 BalanceConc!22608) TokenValue!5816)

(declare-fun size!28787 (BalanceConc!22608) Int)

(assert (=> b!3593098 (= res!1450980 (not (= lt!1233106 (Some!7802 (tuple2!37669 (Token!10539 (apply!9092 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))) lt!1233096) (rule!8306 (_1!21968 lt!1233101)) (size!28787 lt!1233096) lt!1233089) (_2!21968 lt!1233101))))))))

(declare-fun lt!1233093 () Unit!53789)

(declare-fun lemmaCharactersSize!639 (Token!10538) Unit!53789)

(assert (=> b!3593098 (= lt!1233093 (lemmaCharactersSize!639 (_1!21968 lt!1233101)))))

(declare-fun lt!1233095 () Unit!53789)

(declare-fun lemmaEqSameImage!777 (TokenValueInjection!11060 BalanceConc!22608 BalanceConc!22608) Unit!53789)

(declare-fun seqFromList!4139 (List!37910) BalanceConc!22608)

(assert (=> b!3593098 (= lt!1233095 (lemmaEqSameImage!777 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))) lt!1233096 (seqFromList!4139 (originalCharacters!6300 (_1!21968 lt!1233101)))))))

(declare-fun lt!1233110 () Unit!53789)

(declare-fun lemmaSemiInverse!1343 (TokenValueInjection!11060 BalanceConc!22608) Unit!53789)

(assert (=> b!3593098 (= lt!1233110 (lemmaSemiInverse!1343 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))) lt!1233096))))

(assert (=> b!3593099 (= e!2223370 (and tp!1099794 tp!1099795))))

(declare-fun b!3593100 () Bool)

(declare-fun e!2223363 () Bool)

(assert (=> b!3593100 (= e!2223375 (not e!2223363))))

(declare-fun res!1450972 () Bool)

(assert (=> b!3593100 (=> res!1450972 e!2223363)))

(assert (=> b!3593100 (= res!1450972 (not (matchR!4914 (regex!5586 rule!403) lt!1233091)))))

(assert (=> b!3593100 (ruleValid!1851 thiss!23823 rule!403)))

(declare-fun lt!1233097 () Unit!53789)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1006 (LexerInterface!5175 Rule!10972 List!37911) Unit!53789)

(assert (=> b!3593100 (= lt!1233097 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1006 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3593101 () Bool)

(declare-fun res!1450979 () Bool)

(assert (=> b!3593101 (=> res!1450979 e!2223363)))

(declare-fun isEmpty!22275 (List!37910) Bool)

(assert (=> b!3593101 (= res!1450979 (isEmpty!22275 suffix!1395))))

(declare-fun b!3593102 () Bool)

(declare-fun e!2223356 () Bool)

(assert (=> b!3593102 (= e!2223357 e!2223356)))

(declare-fun res!1450961 () Bool)

(assert (=> b!3593102 (=> (not res!1450961) (not e!2223356))))

(declare-fun lt!1233107 () Option!7803)

(declare-fun isDefined!6035 (Option!7803) Bool)

(assert (=> b!3593102 (= res!1450961 (isDefined!6035 lt!1233107))))

(assert (=> b!3593102 (= lt!1233107 (maxPrefix!2709 thiss!23823 rules!3307 lt!1233091))))

(assert (=> b!3593102 (= lt!1233091 (list!13902 (charsOf!3600 token!511)))))

(declare-fun b!3593103 () Bool)

(declare-fun e!2223353 () Bool)

(declare-fun tp_is_empty!17773 () Bool)

(declare-fun tp!1099793 () Bool)

(assert (=> b!3593103 (= e!2223353 (and tp_is_empty!17773 tp!1099793))))

(declare-fun b!3593104 () Bool)

(assert (=> b!3593104 (= e!2223356 e!2223375)))

(declare-fun res!1450976 () Bool)

(assert (=> b!3593104 (=> (not res!1450976) (not e!2223375))))

(declare-fun lt!1233090 () tuple2!37668)

(assert (=> b!3593104 (= res!1450976 (= (_1!21968 lt!1233090) token!511))))

(assert (=> b!3593104 (= lt!1233090 (get!12206 lt!1233107))))

(declare-fun b!3593105 () Bool)

(declare-fun res!1450960 () Bool)

(assert (=> b!3593105 (=> (not res!1450960) (not e!2223375))))

(assert (=> b!3593105 (= res!1450960 (isEmpty!22275 (_2!21968 lt!1233090)))))

(declare-fun b!3593106 () Bool)

(declare-fun res!1450962 () Bool)

(assert (=> b!3593106 (=> res!1450962 e!2223369)))

(declare-fun lt!1233102 () C!20876)

(declare-fun contains!7236 (List!37910 C!20876) Bool)

(declare-fun usedCharacters!800 (Regex!10345) List!37910)

(assert (=> b!3593106 (= res!1450962 (not (contains!7236 (usedCharacters!800 (regex!5586 anOtherTypeRule!33)) lt!1233102)))))

(declare-fun b!3593107 () Bool)

(declare-fun res!1450963 () Bool)

(assert (=> b!3593107 (=> (not res!1450963) (not e!2223357))))

(assert (=> b!3593107 (= res!1450963 (not (= (isSeparator!5586 anOtherTypeRule!33) (isSeparator!5586 rule!403))))))

(declare-fun b!3593108 () Bool)

(declare-fun res!1450965 () Bool)

(assert (=> b!3593108 (=> (not res!1450965) (not e!2223357))))

(declare-fun rulesInvariant!4572 (LexerInterface!5175 List!37911) Bool)

(assert (=> b!3593108 (= res!1450965 (rulesInvariant!4572 thiss!23823 rules!3307))))

(declare-fun b!3593109 () Bool)

(assert (=> b!3593109 (= e!2223363 e!2223369)))

(declare-fun res!1450964 () Bool)

(assert (=> b!3593109 (=> res!1450964 e!2223369)))

(assert (=> b!3593109 (= res!1450964 (contains!7236 (usedCharacters!800 (regex!5586 rule!403)) lt!1233102))))

(declare-fun head!7514 (List!37910) C!20876)

(assert (=> b!3593109 (= lt!1233102 (head!7514 suffix!1395))))

(declare-fun b!3593110 () Bool)

(assert (=> b!3593110 (= e!2223361 e!2223359)))

(declare-fun res!1450966 () Bool)

(assert (=> b!3593110 (=> res!1450966 e!2223359)))

(declare-fun lt!1233109 () List!37910)

(assert (=> b!3593110 (= res!1450966 (not (= lt!1233109 (_2!21968 lt!1233101))))))

(assert (=> b!3593110 (= (_2!21968 lt!1233101) lt!1233109)))

(declare-fun lt!1233100 () Unit!53789)

(declare-fun lemmaSamePrefixThenSameSuffix!1304 (List!37910 List!37910 List!37910 List!37910 List!37910) Unit!53789)

(assert (=> b!3593110 (= lt!1233100 (lemmaSamePrefixThenSameSuffix!1304 lt!1233089 (_2!21968 lt!1233101) lt!1233089 lt!1233109 lt!1233105))))

(declare-fun getSuffix!1524 (List!37910 List!37910) List!37910)

(assert (=> b!3593110 (= lt!1233109 (getSuffix!1524 lt!1233105 lt!1233089))))

(declare-fun maxPrefixOneRule!1853 (LexerInterface!5175 Rule!10972 List!37910) Option!7803)

(declare-fun size!28788 (List!37910) Int)

(assert (=> b!3593110 (= (maxPrefixOneRule!1853 thiss!23823 (rule!8306 (_1!21968 lt!1233101)) lt!1233105) (Some!7802 (tuple2!37669 (Token!10539 (apply!9092 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))) (seqFromList!4139 lt!1233089)) (rule!8306 (_1!21968 lt!1233101)) (size!28788 lt!1233089) lt!1233089) (_2!21968 lt!1233101))))))

(declare-fun lt!1233103 () Unit!53789)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!925 (LexerInterface!5175 List!37911 List!37910 List!37910 List!37910 Rule!10972) Unit!53789)

(assert (=> b!3593110 (= lt!1233103 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!925 thiss!23823 rules!3307 lt!1233089 lt!1233105 (_2!21968 lt!1233101) (rule!8306 (_1!21968 lt!1233101))))))

(declare-fun b!3593088 () Bool)

(declare-fun res!1450971 () Bool)

(assert (=> b!3593088 (=> res!1450971 e!2223366)))

(assert (=> b!3593088 (= res!1450971 (not (matchR!4914 (regex!5586 (rule!8306 (_1!21968 lt!1233101))) lt!1233089)))))

(declare-fun res!1450978 () Bool)

(assert (=> start!333530 (=> (not res!1450978) (not e!2223357))))

(get-info :version)

(assert (=> start!333530 (= res!1450978 ((_ is Lexer!5173) thiss!23823))))

(assert (=> start!333530 e!2223357))

(assert (=> start!333530 e!2223362))

(assert (=> start!333530 e!2223353))

(assert (=> start!333530 true))

(declare-fun inv!51133 (Token!10538) Bool)

(assert (=> start!333530 (and (inv!51133 token!511) e!2223374)))

(assert (=> start!333530 e!2223358))

(assert (=> start!333530 e!2223367))

(assert (= (and start!333530 res!1450978) b!3593091))

(assert (= (and b!3593091 res!1450977) b!3593108))

(assert (= (and b!3593108 res!1450965) b!3593080))

(assert (= (and b!3593080 res!1450968) b!3593090))

(assert (= (and b!3593090 res!1450970) b!3593107))

(assert (= (and b!3593107 res!1450963) b!3593102))

(assert (= (and b!3593102 res!1450961) b!3593104))

(assert (= (and b!3593104 res!1450976) b!3593105))

(assert (= (and b!3593105 res!1450960) b!3593085))

(assert (= (and b!3593085 res!1450969) b!3593100))

(assert (= (and b!3593100 (not res!1450972)) b!3593101))

(assert (= (and b!3593101 (not res!1450979)) b!3593109))

(assert (= (and b!3593109 (not res!1450964)) b!3593106))

(assert (= (and b!3593106 (not res!1450962)) b!3593094))

(assert (= (and b!3593094 (not res!1450967)) b!3593086))

(assert (= (and b!3593086 res!1450974) b!3593083))

(assert (= (and b!3593083 res!1450975) b!3593093))

(assert (= (and b!3593086 (not res!1450973)) b!3593088))

(assert (= (and b!3593088 (not res!1450971)) b!3593098))

(assert (= (and b!3593098 (not res!1450980)) b!3593110))

(assert (= (and b!3593110 (not res!1450966)) b!3593089))

(assert (= b!3593096 b!3593099))

(assert (= b!3593084 b!3593096))

(assert (= (and start!333530 ((_ is Cons!37787) rules!3307)) b!3593084))

(assert (= (and start!333530 ((_ is Cons!37786) suffix!1395)) b!3593103))

(assert (= b!3593081 b!3593095))

(assert (= b!3593092 b!3593081))

(assert (= start!333530 b!3593092))

(assert (= b!3593082 b!3593087))

(assert (= start!333530 b!3593082))

(assert (= b!3593097 b!3593079))

(assert (= start!333530 b!3593097))

(declare-fun m!4087595 () Bool)

(assert (=> b!3593097 m!4087595))

(declare-fun m!4087597 () Bool)

(assert (=> b!3593097 m!4087597))

(declare-fun m!4087599 () Bool)

(assert (=> b!3593092 m!4087599))

(declare-fun m!4087601 () Bool)

(assert (=> b!3593108 m!4087601))

(declare-fun m!4087603 () Bool)

(assert (=> b!3593090 m!4087603))

(declare-fun m!4087605 () Bool)

(assert (=> b!3593082 m!4087605))

(declare-fun m!4087607 () Bool)

(assert (=> b!3593082 m!4087607))

(declare-fun m!4087609 () Bool)

(assert (=> b!3593081 m!4087609))

(declare-fun m!4087611 () Bool)

(assert (=> b!3593081 m!4087611))

(declare-fun m!4087613 () Bool)

(assert (=> start!333530 m!4087613))

(declare-fun m!4087615 () Bool)

(assert (=> b!3593106 m!4087615))

(assert (=> b!3593106 m!4087615))

(declare-fun m!4087617 () Bool)

(assert (=> b!3593106 m!4087617))

(declare-fun m!4087619 () Bool)

(assert (=> b!3593110 m!4087619))

(declare-fun m!4087621 () Bool)

(assert (=> b!3593110 m!4087621))

(declare-fun m!4087623 () Bool)

(assert (=> b!3593110 m!4087623))

(declare-fun m!4087625 () Bool)

(assert (=> b!3593110 m!4087625))

(declare-fun m!4087627 () Bool)

(assert (=> b!3593110 m!4087627))

(declare-fun m!4087629 () Bool)

(assert (=> b!3593110 m!4087629))

(assert (=> b!3593110 m!4087619))

(declare-fun m!4087631 () Bool)

(assert (=> b!3593110 m!4087631))

(declare-fun m!4087633 () Bool)

(assert (=> b!3593088 m!4087633))

(declare-fun m!4087635 () Bool)

(assert (=> b!3593098 m!4087635))

(declare-fun m!4087637 () Bool)

(assert (=> b!3593098 m!4087637))

(assert (=> b!3593098 m!4087635))

(declare-fun m!4087639 () Bool)

(assert (=> b!3593098 m!4087639))

(declare-fun m!4087641 () Bool)

(assert (=> b!3593098 m!4087641))

(declare-fun m!4087643 () Bool)

(assert (=> b!3593098 m!4087643))

(declare-fun m!4087645 () Bool)

(assert (=> b!3593098 m!4087645))

(declare-fun m!4087647 () Bool)

(assert (=> b!3593102 m!4087647))

(declare-fun m!4087649 () Bool)

(assert (=> b!3593102 m!4087649))

(declare-fun m!4087651 () Bool)

(assert (=> b!3593102 m!4087651))

(assert (=> b!3593102 m!4087651))

(declare-fun m!4087653 () Bool)

(assert (=> b!3593102 m!4087653))

(declare-fun m!4087655 () Bool)

(assert (=> b!3593083 m!4087655))

(assert (=> b!3593083 m!4087655))

(declare-fun m!4087657 () Bool)

(assert (=> b!3593083 m!4087657))

(assert (=> b!3593083 m!4087657))

(declare-fun m!4087659 () Bool)

(assert (=> b!3593083 m!4087659))

(declare-fun m!4087661 () Bool)

(assert (=> b!3593083 m!4087661))

(declare-fun m!4087663 () Bool)

(assert (=> b!3593105 m!4087663))

(declare-fun m!4087665 () Bool)

(assert (=> b!3593080 m!4087665))

(declare-fun m!4087667 () Bool)

(assert (=> b!3593089 m!4087667))

(declare-fun m!4087669 () Bool)

(assert (=> b!3593091 m!4087669))

(declare-fun m!4087671 () Bool)

(assert (=> b!3593104 m!4087671))

(declare-fun m!4087673 () Bool)

(assert (=> b!3593109 m!4087673))

(assert (=> b!3593109 m!4087673))

(declare-fun m!4087675 () Bool)

(assert (=> b!3593109 m!4087675))

(declare-fun m!4087677 () Bool)

(assert (=> b!3593109 m!4087677))

(declare-fun m!4087679 () Bool)

(assert (=> b!3593100 m!4087679))

(declare-fun m!4087681 () Bool)

(assert (=> b!3593100 m!4087681))

(declare-fun m!4087683 () Bool)

(assert (=> b!3593100 m!4087683))

(declare-fun m!4087685 () Bool)

(assert (=> b!3593094 m!4087685))

(declare-fun m!4087687 () Bool)

(assert (=> b!3593086 m!4087687))

(declare-fun m!4087689 () Bool)

(assert (=> b!3593086 m!4087689))

(declare-fun m!4087691 () Bool)

(assert (=> b!3593086 m!4087691))

(declare-fun m!4087693 () Bool)

(assert (=> b!3593086 m!4087693))

(declare-fun m!4087695 () Bool)

(assert (=> b!3593086 m!4087695))

(declare-fun m!4087697 () Bool)

(assert (=> b!3593086 m!4087697))

(declare-fun m!4087699 () Bool)

(assert (=> b!3593086 m!4087699))

(declare-fun m!4087701 () Bool)

(assert (=> b!3593086 m!4087701))

(assert (=> b!3593086 m!4087655))

(declare-fun m!4087703 () Bool)

(assert (=> b!3593086 m!4087703))

(assert (=> b!3593086 m!4087699))

(declare-fun m!4087705 () Bool)

(assert (=> b!3593086 m!4087705))

(declare-fun m!4087707 () Bool)

(assert (=> b!3593086 m!4087707))

(declare-fun m!4087709 () Bool)

(assert (=> b!3593086 m!4087709))

(declare-fun m!4087711 () Bool)

(assert (=> b!3593086 m!4087711))

(declare-fun m!4087713 () Bool)

(assert (=> b!3593086 m!4087713))

(declare-fun m!4087715 () Bool)

(assert (=> b!3593096 m!4087715))

(declare-fun m!4087717 () Bool)

(assert (=> b!3593096 m!4087717))

(declare-fun m!4087719 () Bool)

(assert (=> b!3593101 m!4087719))

(check-sat b_and!260103 (not b!3593086) b_and!260105 b_and!260099 (not b!3593105) b_and!260109 b_and!260101 (not b!3593103) (not b!3593094) (not b!3593096) (not b!3593081) (not b!3593082) b_and!260113 (not b!3593088) (not b_next!93503) (not b_next!93497) (not b_next!93491) (not b!3593090) (not b!3593092) (not b!3593098) (not b!3593102) (not b!3593104) (not b!3593108) tp_is_empty!17773 (not b!3593109) (not b_next!93493) (not b!3593084) (not b!3593100) b_and!260111 (not b!3593083) (not start!333530) (not b!3593097) (not b!3593106) (not b!3593089) (not b!3593091) b_and!260107 (not b_next!93501) (not b_next!93499) (not b!3593101) (not b!3593080) (not b!3593110) (not b_next!93495) (not b_next!93489))
(check-sat b_and!260103 (not b_next!93493) b_and!260111 b_and!260105 b_and!260099 b_and!260107 b_and!260109 b_and!260101 b_and!260113 (not b_next!93503) (not b_next!93497) (not b_next!93491) (not b_next!93501) (not b_next!93499) (not b_next!93495) (not b_next!93489))
(get-model)

(declare-fun b!3593237 () Bool)

(declare-fun res!1451057 () Bool)

(declare-fun e!2223454 () Bool)

(assert (=> b!3593237 (=> (not res!1451057) (not e!2223454))))

(declare-fun tail!5567 (List!37910) List!37910)

(assert (=> b!3593237 (= res!1451057 (isEmpty!22275 (tail!5567 lt!1233091)))))

(declare-fun b!3593238 () Bool)

(declare-fun e!2223455 () Bool)

(declare-fun nullable!3569 (Regex!10345) Bool)

(assert (=> b!3593238 (= e!2223455 (nullable!3569 (regex!5586 rule!403)))))

(declare-fun b!3593239 () Bool)

(declare-fun res!1451053 () Bool)

(declare-fun e!2223453 () Bool)

(assert (=> b!3593239 (=> res!1451053 e!2223453)))

(assert (=> b!3593239 (= res!1451053 (not (isEmpty!22275 (tail!5567 lt!1233091))))))

(declare-fun b!3593240 () Bool)

(declare-fun derivativeStep!3118 (Regex!10345 C!20876) Regex!10345)

(assert (=> b!3593240 (= e!2223455 (matchR!4914 (derivativeStep!3118 (regex!5586 rule!403) (head!7514 lt!1233091)) (tail!5567 lt!1233091)))))

(declare-fun b!3593241 () Bool)

(assert (=> b!3593241 (= e!2223453 (not (= (head!7514 lt!1233091) (c!622112 (regex!5586 rule!403)))))))

(declare-fun bm!260026 () Bool)

(declare-fun call!260031 () Bool)

(assert (=> bm!260026 (= call!260031 (isEmpty!22275 lt!1233091))))

(declare-fun b!3593242 () Bool)

(declare-fun res!1451050 () Bool)

(declare-fun e!2223456 () Bool)

(assert (=> b!3593242 (=> res!1451050 e!2223456)))

(assert (=> b!3593242 (= res!1451050 e!2223454)))

(declare-fun res!1451054 () Bool)

(assert (=> b!3593242 (=> (not res!1451054) (not e!2223454))))

(declare-fun lt!1233143 () Bool)

(assert (=> b!3593242 (= res!1451054 lt!1233143)))

(declare-fun b!3593243 () Bool)

(assert (=> b!3593243 (= e!2223454 (= (head!7514 lt!1233091) (c!622112 (regex!5586 rule!403))))))

(declare-fun b!3593244 () Bool)

(declare-fun res!1451055 () Bool)

(assert (=> b!3593244 (=> (not res!1451055) (not e!2223454))))

(assert (=> b!3593244 (= res!1451055 (not call!260031))))

(declare-fun b!3593245 () Bool)

(declare-fun res!1451051 () Bool)

(assert (=> b!3593245 (=> res!1451051 e!2223456)))

(assert (=> b!3593245 (= res!1451051 (not ((_ is ElementMatch!10345) (regex!5586 rule!403))))))

(declare-fun e!2223450 () Bool)

(assert (=> b!3593245 (= e!2223450 e!2223456)))

(declare-fun b!3593247 () Bool)

(declare-fun e!2223452 () Bool)

(assert (=> b!3593247 (= e!2223456 e!2223452)))

(declare-fun res!1451052 () Bool)

(assert (=> b!3593247 (=> (not res!1451052) (not e!2223452))))

(assert (=> b!3593247 (= res!1451052 (not lt!1233143))))

(declare-fun b!3593248 () Bool)

(assert (=> b!3593248 (= e!2223450 (not lt!1233143))))

(declare-fun b!3593249 () Bool)

(declare-fun e!2223451 () Bool)

(assert (=> b!3593249 (= e!2223451 e!2223450)))

(declare-fun c!622147 () Bool)

(assert (=> b!3593249 (= c!622147 ((_ is EmptyLang!10345) (regex!5586 rule!403)))))

(declare-fun b!3593250 () Bool)

(assert (=> b!3593250 (= e!2223452 e!2223453)))

(declare-fun res!1451056 () Bool)

(assert (=> b!3593250 (=> res!1451056 e!2223453)))

(assert (=> b!3593250 (= res!1451056 call!260031)))

(declare-fun d!1059042 () Bool)

(assert (=> d!1059042 e!2223451))

(declare-fun c!622148 () Bool)

(assert (=> d!1059042 (= c!622148 ((_ is EmptyExpr!10345) (regex!5586 rule!403)))))

(assert (=> d!1059042 (= lt!1233143 e!2223455)))

(declare-fun c!622149 () Bool)

(assert (=> d!1059042 (= c!622149 (isEmpty!22275 lt!1233091))))

(declare-fun validRegex!4725 (Regex!10345) Bool)

(assert (=> d!1059042 (validRegex!4725 (regex!5586 rule!403))))

(assert (=> d!1059042 (= (matchR!4914 (regex!5586 rule!403) lt!1233091) lt!1233143)))

(declare-fun b!3593246 () Bool)

(assert (=> b!3593246 (= e!2223451 (= lt!1233143 call!260031))))

(assert (= (and d!1059042 c!622149) b!3593238))

(assert (= (and d!1059042 (not c!622149)) b!3593240))

(assert (= (and d!1059042 c!622148) b!3593246))

(assert (= (and d!1059042 (not c!622148)) b!3593249))

(assert (= (and b!3593249 c!622147) b!3593248))

(assert (= (and b!3593249 (not c!622147)) b!3593245))

(assert (= (and b!3593245 (not res!1451051)) b!3593242))

(assert (= (and b!3593242 res!1451054) b!3593244))

(assert (= (and b!3593244 res!1451055) b!3593237))

(assert (= (and b!3593237 res!1451057) b!3593243))

(assert (= (and b!3593242 (not res!1451050)) b!3593247))

(assert (= (and b!3593247 res!1451052) b!3593250))

(assert (= (and b!3593250 (not res!1451056)) b!3593239))

(assert (= (and b!3593239 (not res!1451053)) b!3593241))

(assert (= (or b!3593246 b!3593244 b!3593250) bm!260026))

(declare-fun m!4087809 () Bool)

(assert (=> b!3593243 m!4087809))

(assert (=> b!3593241 m!4087809))

(declare-fun m!4087811 () Bool)

(assert (=> b!3593239 m!4087811))

(assert (=> b!3593239 m!4087811))

(declare-fun m!4087813 () Bool)

(assert (=> b!3593239 m!4087813))

(assert (=> b!3593237 m!4087811))

(assert (=> b!3593237 m!4087811))

(assert (=> b!3593237 m!4087813))

(declare-fun m!4087815 () Bool)

(assert (=> bm!260026 m!4087815))

(assert (=> d!1059042 m!4087815))

(declare-fun m!4087817 () Bool)

(assert (=> d!1059042 m!4087817))

(declare-fun m!4087819 () Bool)

(assert (=> b!3593238 m!4087819))

(assert (=> b!3593240 m!4087809))

(assert (=> b!3593240 m!4087809))

(declare-fun m!4087821 () Bool)

(assert (=> b!3593240 m!4087821))

(assert (=> b!3593240 m!4087811))

(assert (=> b!3593240 m!4087821))

(assert (=> b!3593240 m!4087811))

(declare-fun m!4087823 () Bool)

(assert (=> b!3593240 m!4087823))

(assert (=> b!3593100 d!1059042))

(declare-fun d!1059046 () Bool)

(declare-fun res!1451066 () Bool)

(declare-fun e!2223463 () Bool)

(assert (=> d!1059046 (=> (not res!1451066) (not e!2223463))))

(assert (=> d!1059046 (= res!1451066 (validRegex!4725 (regex!5586 rule!403)))))

(assert (=> d!1059046 (= (ruleValid!1851 thiss!23823 rule!403) e!2223463)))

(declare-fun b!3593259 () Bool)

(declare-fun res!1451067 () Bool)

(assert (=> b!3593259 (=> (not res!1451067) (not e!2223463))))

(assert (=> b!3593259 (= res!1451067 (not (nullable!3569 (regex!5586 rule!403))))))

(declare-fun b!3593260 () Bool)

(assert (=> b!3593260 (= e!2223463 (not (= (tag!6262 rule!403) (String!42415 ""))))))

(assert (= (and d!1059046 res!1451066) b!3593259))

(assert (= (and b!3593259 res!1451067) b!3593260))

(assert (=> d!1059046 m!4087817))

(assert (=> b!3593259 m!4087819))

(assert (=> b!3593100 d!1059046))

(declare-fun d!1059058 () Bool)

(assert (=> d!1059058 (ruleValid!1851 thiss!23823 rule!403)))

(declare-fun lt!1233151 () Unit!53789)

(declare-fun choose!20909 (LexerInterface!5175 Rule!10972 List!37911) Unit!53789)

(assert (=> d!1059058 (= lt!1233151 (choose!20909 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1059058 (contains!7235 rules!3307 rule!403)))

(assert (=> d!1059058 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1006 thiss!23823 rule!403 rules!3307) lt!1233151)))

(declare-fun bs!570305 () Bool)

(assert (= bs!570305 d!1059058))

(assert (=> bs!570305 m!4087681))

(declare-fun m!4087835 () Bool)

(assert (=> bs!570305 m!4087835))

(assert (=> bs!570305 m!4087665))

(assert (=> b!3593100 d!1059058))

(declare-fun d!1059060 () Bool)

(declare-fun res!1451099 () Bool)

(declare-fun e!2223490 () Bool)

(assert (=> d!1059060 (=> (not res!1451099) (not e!2223490))))

(assert (=> d!1059060 (= res!1451099 (not (isEmpty!22275 (originalCharacters!6300 token!511))))))

(assert (=> d!1059060 (= (inv!51133 token!511) e!2223490)))

(declare-fun b!3593310 () Bool)

(declare-fun res!1451100 () Bool)

(assert (=> b!3593310 (=> (not res!1451100) (not e!2223490))))

(declare-fun dynLambda!16260 (Int TokenValue!5816) BalanceConc!22608)

(assert (=> b!3593310 (= res!1451100 (= (originalCharacters!6300 token!511) (list!13902 (dynLambda!16260 (toChars!7729 (transformation!5586 (rule!8306 token!511))) (value!179661 token!511)))))))

(declare-fun b!3593311 () Bool)

(assert (=> b!3593311 (= e!2223490 (= (size!28786 token!511) (size!28788 (originalCharacters!6300 token!511))))))

(assert (= (and d!1059060 res!1451099) b!3593310))

(assert (= (and b!3593310 res!1451100) b!3593311))

(declare-fun b_lambda!106161 () Bool)

(assert (=> (not b_lambda!106161) (not b!3593310)))

(declare-fun t!291292 () Bool)

(declare-fun tb!205145 () Bool)

(assert (=> (and b!3593079 (= (toChars!7729 (transformation!5586 anOtherTypeRule!33)) (toChars!7729 (transformation!5586 (rule!8306 token!511)))) t!291292) tb!205145))

(declare-fun b!3593323 () Bool)

(declare-fun e!2223497 () Bool)

(declare-fun tp!1099801 () Bool)

(declare-fun inv!51136 (Conc!11497) Bool)

(assert (=> b!3593323 (= e!2223497 (and (inv!51136 (c!622113 (dynLambda!16260 (toChars!7729 (transformation!5586 (rule!8306 token!511))) (value!179661 token!511)))) tp!1099801))))

(declare-fun result!250108 () Bool)

(declare-fun inv!51137 (BalanceConc!22608) Bool)

(assert (=> tb!205145 (= result!250108 (and (inv!51137 (dynLambda!16260 (toChars!7729 (transformation!5586 (rule!8306 token!511))) (value!179661 token!511))) e!2223497))))

(assert (= tb!205145 b!3593323))

(declare-fun m!4087857 () Bool)

(assert (=> b!3593323 m!4087857))

(declare-fun m!4087859 () Bool)

(assert (=> tb!205145 m!4087859))

(assert (=> b!3593310 t!291292))

(declare-fun b_and!260123 () Bool)

(assert (= b_and!260101 (and (=> t!291292 result!250108) b_and!260123)))

(declare-fun t!291296 () Bool)

(declare-fun tb!205149 () Bool)

(assert (=> (and b!3593099 (= (toChars!7729 (transformation!5586 (h!43207 rules!3307))) (toChars!7729 (transformation!5586 (rule!8306 token!511)))) t!291296) tb!205149))

(declare-fun result!250116 () Bool)

(assert (= result!250116 result!250108))

(assert (=> b!3593310 t!291296))

(declare-fun b_and!260125 () Bool)

(assert (= b_and!260105 (and (=> t!291296 result!250116) b_and!260125)))

(declare-fun tb!205151 () Bool)

(declare-fun t!291298 () Bool)

(assert (=> (and b!3593087 (= (toChars!7729 (transformation!5586 rule!403)) (toChars!7729 (transformation!5586 (rule!8306 token!511)))) t!291298) tb!205151))

(declare-fun result!250118 () Bool)

(assert (= result!250118 result!250108))

(assert (=> b!3593310 t!291298))

(declare-fun b_and!260127 () Bool)

(assert (= b_and!260109 (and (=> t!291298 result!250118) b_and!260127)))

(declare-fun t!291300 () Bool)

(declare-fun tb!205153 () Bool)

(assert (=> (and b!3593095 (= (toChars!7729 (transformation!5586 (rule!8306 token!511))) (toChars!7729 (transformation!5586 (rule!8306 token!511)))) t!291300) tb!205153))

(declare-fun result!250120 () Bool)

(assert (= result!250120 result!250108))

(assert (=> b!3593310 t!291300))

(declare-fun b_and!260129 () Bool)

(assert (= b_and!260113 (and (=> t!291300 result!250120) b_and!260129)))

(declare-fun m!4087865 () Bool)

(assert (=> d!1059060 m!4087865))

(declare-fun m!4087867 () Bool)

(assert (=> b!3593310 m!4087867))

(assert (=> b!3593310 m!4087867))

(declare-fun m!4087873 () Bool)

(assert (=> b!3593310 m!4087873))

(declare-fun m!4087879 () Bool)

(assert (=> b!3593311 m!4087879))

(assert (=> start!333530 d!1059060))

(declare-fun d!1059074 () Bool)

(assert (=> d!1059074 (= (isEmpty!22275 suffix!1395) ((_ is Nil!37786) suffix!1395))))

(assert (=> b!3593101 d!1059074))

(declare-fun d!1059078 () Bool)

(declare-fun lt!1233155 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5376 (List!37911) (InoxSet Rule!10972))

(assert (=> d!1059078 (= lt!1233155 (select (content!5376 rules!3307) rule!403))))

(declare-fun e!2223506 () Bool)

(assert (=> d!1059078 (= lt!1233155 e!2223506)))

(declare-fun res!1451112 () Bool)

(assert (=> d!1059078 (=> (not res!1451112) (not e!2223506))))

(assert (=> d!1059078 (= res!1451112 ((_ is Cons!37787) rules!3307))))

(assert (=> d!1059078 (= (contains!7235 rules!3307 rule!403) lt!1233155)))

(declare-fun b!3593333 () Bool)

(declare-fun e!2223505 () Bool)

(assert (=> b!3593333 (= e!2223506 e!2223505)))

(declare-fun res!1451113 () Bool)

(assert (=> b!3593333 (=> res!1451113 e!2223505)))

(assert (=> b!3593333 (= res!1451113 (= (h!43207 rules!3307) rule!403))))

(declare-fun b!3593334 () Bool)

(assert (=> b!3593334 (= e!2223505 (contains!7235 (t!291282 rules!3307) rule!403))))

(assert (= (and d!1059078 res!1451112) b!3593333))

(assert (= (and b!3593333 (not res!1451113)) b!3593334))

(declare-fun m!4087883 () Bool)

(assert (=> d!1059078 m!4087883))

(declare-fun m!4087885 () Bool)

(assert (=> d!1059078 m!4087885))

(declare-fun m!4087887 () Bool)

(assert (=> b!3593334 m!4087887))

(assert (=> b!3593080 d!1059078))

(declare-fun d!1059080 () Bool)

(declare-fun isEmpty!22277 (Option!7803) Bool)

(assert (=> d!1059080 (= (isDefined!6035 lt!1233107) (not (isEmpty!22277 lt!1233107)))))

(declare-fun bs!570307 () Bool)

(assert (= bs!570307 d!1059080))

(declare-fun m!4087889 () Bool)

(assert (=> bs!570307 m!4087889))

(assert (=> b!3593102 d!1059080))

(declare-fun b!3593388 () Bool)

(declare-fun res!1451160 () Bool)

(declare-fun e!2223531 () Bool)

(assert (=> b!3593388 (=> (not res!1451160) (not e!2223531))))

(declare-fun lt!1233193 () Option!7803)

(assert (=> b!3593388 (= res!1451160 (= (value!179661 (_1!21968 (get!12206 lt!1233193))) (apply!9092 (transformation!5586 (rule!8306 (_1!21968 (get!12206 lt!1233193)))) (seqFromList!4139 (originalCharacters!6300 (_1!21968 (get!12206 lt!1233193)))))))))

(declare-fun call!260040 () Option!7803)

(declare-fun bm!260035 () Bool)

(assert (=> bm!260035 (= call!260040 (maxPrefixOneRule!1853 thiss!23823 (h!43207 rules!3307) lt!1233091))))

(declare-fun b!3593389 () Bool)

(declare-fun res!1451162 () Bool)

(assert (=> b!3593389 (=> (not res!1451162) (not e!2223531))))

(assert (=> b!3593389 (= res!1451162 (< (size!28788 (_2!21968 (get!12206 lt!1233193))) (size!28788 lt!1233091)))))

(declare-fun b!3593390 () Bool)

(declare-fun res!1451158 () Bool)

(assert (=> b!3593390 (=> (not res!1451158) (not e!2223531))))

(assert (=> b!3593390 (= res!1451158 (= (list!13902 (charsOf!3600 (_1!21968 (get!12206 lt!1233193)))) (originalCharacters!6300 (_1!21968 (get!12206 lt!1233193)))))))

(declare-fun b!3593391 () Bool)

(declare-fun res!1451157 () Bool)

(assert (=> b!3593391 (=> (not res!1451157) (not e!2223531))))

(assert (=> b!3593391 (= res!1451157 (= (++!9402 (list!13902 (charsOf!3600 (_1!21968 (get!12206 lt!1233193)))) (_2!21968 (get!12206 lt!1233193))) lt!1233091))))

(declare-fun b!3593392 () Bool)

(declare-fun e!2223532 () Option!7803)

(assert (=> b!3593392 (= e!2223532 call!260040)))

(declare-fun b!3593393 () Bool)

(assert (=> b!3593393 (= e!2223531 (contains!7235 rules!3307 (rule!8306 (_1!21968 (get!12206 lt!1233193)))))))

(declare-fun b!3593394 () Bool)

(declare-fun res!1451161 () Bool)

(assert (=> b!3593394 (=> (not res!1451161) (not e!2223531))))

(assert (=> b!3593394 (= res!1451161 (matchR!4914 (regex!5586 (rule!8306 (_1!21968 (get!12206 lt!1233193)))) (list!13902 (charsOf!3600 (_1!21968 (get!12206 lt!1233193))))))))

(declare-fun d!1059082 () Bool)

(declare-fun e!2223533 () Bool)

(assert (=> d!1059082 e!2223533))

(declare-fun res!1451159 () Bool)

(assert (=> d!1059082 (=> res!1451159 e!2223533)))

(assert (=> d!1059082 (= res!1451159 (isEmpty!22277 lt!1233193))))

(assert (=> d!1059082 (= lt!1233193 e!2223532)))

(declare-fun c!622165 () Bool)

(assert (=> d!1059082 (= c!622165 (and ((_ is Cons!37787) rules!3307) ((_ is Nil!37787) (t!291282 rules!3307))))))

(declare-fun lt!1233192 () Unit!53789)

(declare-fun lt!1233190 () Unit!53789)

(assert (=> d!1059082 (= lt!1233192 lt!1233190)))

(assert (=> d!1059082 (isPrefix!2949 lt!1233091 lt!1233091)))

(declare-fun lemmaIsPrefixRefl!1886 (List!37910 List!37910) Unit!53789)

(assert (=> d!1059082 (= lt!1233190 (lemmaIsPrefixRefl!1886 lt!1233091 lt!1233091))))

(declare-fun rulesValidInductive!1951 (LexerInterface!5175 List!37911) Bool)

(assert (=> d!1059082 (rulesValidInductive!1951 thiss!23823 rules!3307)))

(assert (=> d!1059082 (= (maxPrefix!2709 thiss!23823 rules!3307 lt!1233091) lt!1233193)))

(declare-fun b!3593395 () Bool)

(assert (=> b!3593395 (= e!2223533 e!2223531)))

(declare-fun res!1451163 () Bool)

(assert (=> b!3593395 (=> (not res!1451163) (not e!2223531))))

(assert (=> b!3593395 (= res!1451163 (isDefined!6035 lt!1233193))))

(declare-fun b!3593396 () Bool)

(declare-fun lt!1233191 () Option!7803)

(declare-fun lt!1233194 () Option!7803)

(assert (=> b!3593396 (= e!2223532 (ite (and ((_ is None!7802) lt!1233191) ((_ is None!7802) lt!1233194)) None!7802 (ite ((_ is None!7802) lt!1233194) lt!1233191 (ite ((_ is None!7802) lt!1233191) lt!1233194 (ite (>= (size!28786 (_1!21968 (v!37484 lt!1233191))) (size!28786 (_1!21968 (v!37484 lt!1233194)))) lt!1233191 lt!1233194)))))))

(assert (=> b!3593396 (= lt!1233191 call!260040)))

(assert (=> b!3593396 (= lt!1233194 (maxPrefix!2709 thiss!23823 (t!291282 rules!3307) lt!1233091))))

(assert (= (and d!1059082 c!622165) b!3593392))

(assert (= (and d!1059082 (not c!622165)) b!3593396))

(assert (= (or b!3593392 b!3593396) bm!260035))

(assert (= (and d!1059082 (not res!1451159)) b!3593395))

(assert (= (and b!3593395 res!1451163) b!3593390))

(assert (= (and b!3593390 res!1451158) b!3593389))

(assert (= (and b!3593389 res!1451162) b!3593391))

(assert (= (and b!3593391 res!1451157) b!3593388))

(assert (= (and b!3593388 res!1451160) b!3593394))

(assert (= (and b!3593394 res!1451161) b!3593393))

(declare-fun m!4087945 () Bool)

(assert (=> b!3593389 m!4087945))

(declare-fun m!4087947 () Bool)

(assert (=> b!3593389 m!4087947))

(declare-fun m!4087949 () Bool)

(assert (=> b!3593389 m!4087949))

(assert (=> b!3593390 m!4087945))

(declare-fun m!4087951 () Bool)

(assert (=> b!3593390 m!4087951))

(assert (=> b!3593390 m!4087951))

(declare-fun m!4087953 () Bool)

(assert (=> b!3593390 m!4087953))

(assert (=> b!3593394 m!4087945))

(assert (=> b!3593394 m!4087951))

(assert (=> b!3593394 m!4087951))

(assert (=> b!3593394 m!4087953))

(assert (=> b!3593394 m!4087953))

(declare-fun m!4087955 () Bool)

(assert (=> b!3593394 m!4087955))

(declare-fun m!4087957 () Bool)

(assert (=> b!3593395 m!4087957))

(assert (=> b!3593388 m!4087945))

(declare-fun m!4087959 () Bool)

(assert (=> b!3593388 m!4087959))

(assert (=> b!3593388 m!4087959))

(declare-fun m!4087961 () Bool)

(assert (=> b!3593388 m!4087961))

(assert (=> b!3593391 m!4087945))

(assert (=> b!3593391 m!4087951))

(assert (=> b!3593391 m!4087951))

(assert (=> b!3593391 m!4087953))

(assert (=> b!3593391 m!4087953))

(declare-fun m!4087963 () Bool)

(assert (=> b!3593391 m!4087963))

(declare-fun m!4087965 () Bool)

(assert (=> b!3593396 m!4087965))

(assert (=> b!3593393 m!4087945))

(declare-fun m!4087967 () Bool)

(assert (=> b!3593393 m!4087967))

(declare-fun m!4087969 () Bool)

(assert (=> d!1059082 m!4087969))

(declare-fun m!4087971 () Bool)

(assert (=> d!1059082 m!4087971))

(declare-fun m!4087973 () Bool)

(assert (=> d!1059082 m!4087973))

(declare-fun m!4087975 () Bool)

(assert (=> d!1059082 m!4087975))

(declare-fun m!4087977 () Bool)

(assert (=> bm!260035 m!4087977))

(assert (=> b!3593102 d!1059082))

(declare-fun d!1059098 () Bool)

(declare-fun list!13904 (Conc!11497) List!37910)

(assert (=> d!1059098 (= (list!13902 (charsOf!3600 token!511)) (list!13904 (c!622113 (charsOf!3600 token!511))))))

(declare-fun bs!570310 () Bool)

(assert (= bs!570310 d!1059098))

(declare-fun m!4087979 () Bool)

(assert (=> bs!570310 m!4087979))

(assert (=> b!3593102 d!1059098))

(declare-fun d!1059100 () Bool)

(declare-fun lt!1233197 () BalanceConc!22608)

(assert (=> d!1059100 (= (list!13902 lt!1233197) (originalCharacters!6300 token!511))))

(assert (=> d!1059100 (= lt!1233197 (dynLambda!16260 (toChars!7729 (transformation!5586 (rule!8306 token!511))) (value!179661 token!511)))))

(assert (=> d!1059100 (= (charsOf!3600 token!511) lt!1233197)))

(declare-fun b_lambda!106169 () Bool)

(assert (=> (not b_lambda!106169) (not d!1059100)))

(assert (=> d!1059100 t!291292))

(declare-fun b_and!260155 () Bool)

(assert (= b_and!260123 (and (=> t!291292 result!250108) b_and!260155)))

(assert (=> d!1059100 t!291296))

(declare-fun b_and!260157 () Bool)

(assert (= b_and!260125 (and (=> t!291296 result!250116) b_and!260157)))

(assert (=> d!1059100 t!291298))

(declare-fun b_and!260159 () Bool)

(assert (= b_and!260127 (and (=> t!291298 result!250118) b_and!260159)))

(assert (=> d!1059100 t!291300))

(declare-fun b_and!260161 () Bool)

(assert (= b_and!260129 (and (=> t!291300 result!250120) b_and!260161)))

(declare-fun m!4087981 () Bool)

(assert (=> d!1059100 m!4087981))

(assert (=> d!1059100 m!4087867))

(assert (=> b!3593102 d!1059100))

(declare-fun d!1059102 () Bool)

(assert (=> d!1059102 (= (inv!51129 (tag!6262 (rule!8306 token!511))) (= (mod (str.len (value!179660 (tag!6262 (rule!8306 token!511)))) 2) 0))))

(assert (=> b!3593081 d!1059102))

(declare-fun d!1059104 () Bool)

(declare-fun res!1451166 () Bool)

(declare-fun e!2223536 () Bool)

(assert (=> d!1059104 (=> (not res!1451166) (not e!2223536))))

(declare-fun semiInverseModEq!2367 (Int Int) Bool)

(assert (=> d!1059104 (= res!1451166 (semiInverseModEq!2367 (toChars!7729 (transformation!5586 (rule!8306 token!511))) (toValue!7870 (transformation!5586 (rule!8306 token!511)))))))

(assert (=> d!1059104 (= (inv!51132 (transformation!5586 (rule!8306 token!511))) e!2223536)))

(declare-fun b!3593399 () Bool)

(declare-fun equivClasses!2266 (Int Int) Bool)

(assert (=> b!3593399 (= e!2223536 (equivClasses!2266 (toChars!7729 (transformation!5586 (rule!8306 token!511))) (toValue!7870 (transformation!5586 (rule!8306 token!511)))))))

(assert (= (and d!1059104 res!1451166) b!3593399))

(declare-fun m!4087983 () Bool)

(assert (=> d!1059104 m!4087983))

(declare-fun m!4087985 () Bool)

(assert (=> b!3593399 m!4087985))

(assert (=> b!3593081 d!1059104))

(declare-fun d!1059106 () Bool)

(declare-fun fromListB!1907 (List!37910) BalanceConc!22608)

(assert (=> d!1059106 (= (seqFromList!4139 (originalCharacters!6300 (_1!21968 lt!1233101))) (fromListB!1907 (originalCharacters!6300 (_1!21968 lt!1233101))))))

(declare-fun bs!570311 () Bool)

(assert (= bs!570311 d!1059106))

(declare-fun m!4087987 () Bool)

(assert (=> bs!570311 m!4087987))

(assert (=> b!3593098 d!1059106))

(declare-fun d!1059108 () Bool)

(assert (=> d!1059108 (= (size!28786 (_1!21968 lt!1233101)) (size!28788 (originalCharacters!6300 (_1!21968 lt!1233101))))))

(declare-fun Unit!53792 () Unit!53789)

(assert (=> d!1059108 (= (lemmaCharactersSize!639 (_1!21968 lt!1233101)) Unit!53792)))

(declare-fun bs!570312 () Bool)

(assert (= bs!570312 d!1059108))

(declare-fun m!4087989 () Bool)

(assert (=> bs!570312 m!4087989))

(assert (=> b!3593098 d!1059108))

(declare-fun b!3593462 () Bool)

(declare-fun e!2223576 () Bool)

(assert (=> b!3593462 (= e!2223576 true)))

(declare-fun d!1059110 () Bool)

(assert (=> d!1059110 e!2223576))

(assert (= d!1059110 b!3593462))

(declare-fun order!20523 () Int)

(declare-fun lambda!123882 () Int)

(declare-fun order!20525 () Int)

(declare-fun dynLambda!16262 (Int Int) Int)

(declare-fun dynLambda!16263 (Int Int) Int)

(assert (=> b!3593462 (< (dynLambda!16262 order!20523 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) (dynLambda!16263 order!20525 lambda!123882))))

(declare-fun order!20527 () Int)

(declare-fun dynLambda!16264 (Int Int) Int)

(assert (=> b!3593462 (< (dynLambda!16264 order!20527 (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) (dynLambda!16263 order!20525 lambda!123882))))

(declare-fun dynLambda!16265 (Int BalanceConc!22608) TokenValue!5816)

(assert (=> d!1059110 (= (list!13902 (dynLambda!16260 (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) (dynLambda!16265 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) lt!1233096))) (list!13902 lt!1233096))))

(declare-fun lt!1233227 () Unit!53789)

(declare-fun ForallOf!628 (Int BalanceConc!22608) Unit!53789)

(assert (=> d!1059110 (= lt!1233227 (ForallOf!628 lambda!123882 lt!1233096))))

(assert (=> d!1059110 (= (lemmaSemiInverse!1343 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))) lt!1233096) lt!1233227)))

(declare-fun b_lambda!106179 () Bool)

(assert (=> (not b_lambda!106179) (not d!1059110)))

(declare-fun t!291332 () Bool)

(declare-fun tb!205185 () Bool)

(assert (=> (and b!3593079 (= (toChars!7729 (transformation!5586 anOtherTypeRule!33)) (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291332) tb!205185))

(declare-fun e!2223577 () Bool)

(declare-fun tp!1099806 () Bool)

(declare-fun b!3593463 () Bool)

(assert (=> b!3593463 (= e!2223577 (and (inv!51136 (c!622113 (dynLambda!16260 (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) (dynLambda!16265 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) lt!1233096)))) tp!1099806))))

(declare-fun result!250152 () Bool)

(assert (=> tb!205185 (= result!250152 (and (inv!51137 (dynLambda!16260 (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) (dynLambda!16265 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) lt!1233096))) e!2223577))))

(assert (= tb!205185 b!3593463))

(declare-fun m!4088079 () Bool)

(assert (=> b!3593463 m!4088079))

(declare-fun m!4088081 () Bool)

(assert (=> tb!205185 m!4088081))

(assert (=> d!1059110 t!291332))

(declare-fun b_and!260195 () Bool)

(assert (= b_and!260155 (and (=> t!291332 result!250152) b_and!260195)))

(declare-fun t!291334 () Bool)

(declare-fun tb!205187 () Bool)

(assert (=> (and b!3593099 (= (toChars!7729 (transformation!5586 (h!43207 rules!3307))) (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291334) tb!205187))

(declare-fun result!250154 () Bool)

(assert (= result!250154 result!250152))

(assert (=> d!1059110 t!291334))

(declare-fun b_and!260197 () Bool)

(assert (= b_and!260157 (and (=> t!291334 result!250154) b_and!260197)))

(declare-fun tb!205189 () Bool)

(declare-fun t!291336 () Bool)

(assert (=> (and b!3593087 (= (toChars!7729 (transformation!5586 rule!403)) (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291336) tb!205189))

(declare-fun result!250156 () Bool)

(assert (= result!250156 result!250152))

(assert (=> d!1059110 t!291336))

(declare-fun b_and!260199 () Bool)

(assert (= b_and!260159 (and (=> t!291336 result!250156) b_and!260199)))

(declare-fun t!291338 () Bool)

(declare-fun tb!205191 () Bool)

(assert (=> (and b!3593095 (= (toChars!7729 (transformation!5586 (rule!8306 token!511))) (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291338) tb!205191))

(declare-fun result!250158 () Bool)

(assert (= result!250158 result!250152))

(assert (=> d!1059110 t!291338))

(declare-fun b_and!260201 () Bool)

(assert (= b_and!260161 (and (=> t!291338 result!250158) b_and!260201)))

(declare-fun b_lambda!106181 () Bool)

(assert (=> (not b_lambda!106181) (not d!1059110)))

(declare-fun t!291340 () Bool)

(declare-fun tb!205193 () Bool)

(assert (=> (and b!3593079 (= (toValue!7870 (transformation!5586 anOtherTypeRule!33)) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291340) tb!205193))

(declare-fun result!250160 () Bool)

(assert (=> tb!205193 (= result!250160 (inv!21 (dynLambda!16265 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) lt!1233096)))))

(declare-fun m!4088083 () Bool)

(assert (=> tb!205193 m!4088083))

(assert (=> d!1059110 t!291340))

(declare-fun b_and!260203 () Bool)

(assert (= b_and!260099 (and (=> t!291340 result!250160) b_and!260203)))

(declare-fun t!291342 () Bool)

(declare-fun tb!205195 () Bool)

(assert (=> (and b!3593099 (= (toValue!7870 (transformation!5586 (h!43207 rules!3307))) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291342) tb!205195))

(declare-fun result!250164 () Bool)

(assert (= result!250164 result!250160))

(assert (=> d!1059110 t!291342))

(declare-fun b_and!260205 () Bool)

(assert (= b_and!260103 (and (=> t!291342 result!250164) b_and!260205)))

(declare-fun tb!205197 () Bool)

(declare-fun t!291344 () Bool)

(assert (=> (and b!3593087 (= (toValue!7870 (transformation!5586 rule!403)) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291344) tb!205197))

(declare-fun result!250166 () Bool)

(assert (= result!250166 result!250160))

(assert (=> d!1059110 t!291344))

(declare-fun b_and!260207 () Bool)

(assert (= b_and!260107 (and (=> t!291344 result!250166) b_and!260207)))

(declare-fun tb!205199 () Bool)

(declare-fun t!291346 () Bool)

(assert (=> (and b!3593095 (= (toValue!7870 (transformation!5586 (rule!8306 token!511))) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291346) tb!205199))

(declare-fun result!250168 () Bool)

(assert (= result!250168 result!250160))

(assert (=> d!1059110 t!291346))

(declare-fun b_and!260209 () Bool)

(assert (= b_and!260111 (and (=> t!291346 result!250168) b_and!260209)))

(declare-fun m!4088085 () Bool)

(assert (=> d!1059110 m!4088085))

(declare-fun m!4088087 () Bool)

(assert (=> d!1059110 m!4088087))

(declare-fun m!4088089 () Bool)

(assert (=> d!1059110 m!4088089))

(assert (=> d!1059110 m!4088089))

(assert (=> d!1059110 m!4088085))

(assert (=> d!1059110 m!4087695))

(declare-fun m!4088091 () Bool)

(assert (=> d!1059110 m!4088091))

(assert (=> b!3593098 d!1059110))

(declare-fun d!1059136 () Bool)

(assert (=> d!1059136 (= (apply!9092 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))) lt!1233096) (dynLambda!16265 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) lt!1233096))))

(declare-fun b_lambda!106183 () Bool)

(assert (=> (not b_lambda!106183) (not d!1059136)))

(assert (=> d!1059136 t!291340))

(declare-fun b_and!260211 () Bool)

(assert (= b_and!260203 (and (=> t!291340 result!250160) b_and!260211)))

(assert (=> d!1059136 t!291342))

(declare-fun b_and!260213 () Bool)

(assert (= b_and!260205 (and (=> t!291342 result!250164) b_and!260213)))

(assert (=> d!1059136 t!291344))

(declare-fun b_and!260215 () Bool)

(assert (= b_and!260207 (and (=> t!291344 result!250166) b_and!260215)))

(assert (=> d!1059136 t!291346))

(declare-fun b_and!260217 () Bool)

(assert (= b_and!260209 (and (=> t!291346 result!250168) b_and!260217)))

(assert (=> d!1059136 m!4088089))

(assert (=> b!3593098 d!1059136))

(declare-fun d!1059138 () Bool)

(declare-fun lt!1233230 () Int)

(assert (=> d!1059138 (= lt!1233230 (size!28788 (list!13902 lt!1233096)))))

(declare-fun size!28790 (Conc!11497) Int)

(assert (=> d!1059138 (= lt!1233230 (size!28790 (c!622113 lt!1233096)))))

(assert (=> d!1059138 (= (size!28787 lt!1233096) lt!1233230)))

(declare-fun bs!570318 () Bool)

(assert (= bs!570318 d!1059138))

(assert (=> bs!570318 m!4087695))

(assert (=> bs!570318 m!4087695))

(declare-fun m!4088093 () Bool)

(assert (=> bs!570318 m!4088093))

(declare-fun m!4088095 () Bool)

(assert (=> bs!570318 m!4088095))

(assert (=> b!3593098 d!1059138))

(declare-fun b!3593472 () Bool)

(declare-fun e!2223585 () Bool)

(assert (=> b!3593472 (= e!2223585 true)))

(declare-fun d!1059140 () Bool)

(assert (=> d!1059140 e!2223585))

(assert (= d!1059140 b!3593472))

(declare-fun order!20529 () Int)

(declare-fun lambda!123885 () Int)

(declare-fun dynLambda!16266 (Int Int) Int)

(assert (=> b!3593472 (< (dynLambda!16262 order!20523 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) (dynLambda!16266 order!20529 lambda!123885))))

(assert (=> b!3593472 (< (dynLambda!16264 order!20527 (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) (dynLambda!16266 order!20529 lambda!123885))))

(assert (=> d!1059140 (= (dynLambda!16265 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) lt!1233096) (dynLambda!16265 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) (seqFromList!4139 (originalCharacters!6300 (_1!21968 lt!1233101)))))))

(declare-fun lt!1233233 () Unit!53789)

(declare-fun Forall2of!287 (Int BalanceConc!22608 BalanceConc!22608) Unit!53789)

(assert (=> d!1059140 (= lt!1233233 (Forall2of!287 lambda!123885 lt!1233096 (seqFromList!4139 (originalCharacters!6300 (_1!21968 lt!1233101)))))))

(assert (=> d!1059140 (= (list!13902 lt!1233096) (list!13902 (seqFromList!4139 (originalCharacters!6300 (_1!21968 lt!1233101)))))))

(assert (=> d!1059140 (= (lemmaEqSameImage!777 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))) lt!1233096 (seqFromList!4139 (originalCharacters!6300 (_1!21968 lt!1233101)))) lt!1233233)))

(declare-fun b_lambda!106185 () Bool)

(assert (=> (not b_lambda!106185) (not d!1059140)))

(assert (=> d!1059140 t!291340))

(declare-fun b_and!260219 () Bool)

(assert (= b_and!260211 (and (=> t!291340 result!250160) b_and!260219)))

(assert (=> d!1059140 t!291342))

(declare-fun b_and!260221 () Bool)

(assert (= b_and!260213 (and (=> t!291342 result!250164) b_and!260221)))

(assert (=> d!1059140 t!291344))

(declare-fun b_and!260223 () Bool)

(assert (= b_and!260215 (and (=> t!291344 result!250166) b_and!260223)))

(assert (=> d!1059140 t!291346))

(declare-fun b_and!260225 () Bool)

(assert (= b_and!260217 (and (=> t!291346 result!250168) b_and!260225)))

(declare-fun b_lambda!106187 () Bool)

(assert (=> (not b_lambda!106187) (not d!1059140)))

(declare-fun tb!205201 () Bool)

(declare-fun t!291348 () Bool)

(assert (=> (and b!3593079 (= (toValue!7870 (transformation!5586 anOtherTypeRule!33)) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291348) tb!205201))

(declare-fun result!250170 () Bool)

(assert (=> tb!205201 (= result!250170 (inv!21 (dynLambda!16265 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) (seqFromList!4139 (originalCharacters!6300 (_1!21968 lt!1233101))))))))

(declare-fun m!4088097 () Bool)

(assert (=> tb!205201 m!4088097))

(assert (=> d!1059140 t!291348))

(declare-fun b_and!260227 () Bool)

(assert (= b_and!260219 (and (=> t!291348 result!250170) b_and!260227)))

(declare-fun t!291350 () Bool)

(declare-fun tb!205203 () Bool)

(assert (=> (and b!3593099 (= (toValue!7870 (transformation!5586 (h!43207 rules!3307))) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291350) tb!205203))

(declare-fun result!250172 () Bool)

(assert (= result!250172 result!250170))

(assert (=> d!1059140 t!291350))

(declare-fun b_and!260229 () Bool)

(assert (= b_and!260221 (and (=> t!291350 result!250172) b_and!260229)))

(declare-fun tb!205205 () Bool)

(declare-fun t!291352 () Bool)

(assert (=> (and b!3593087 (= (toValue!7870 (transformation!5586 rule!403)) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291352) tb!205205))

(declare-fun result!250174 () Bool)

(assert (= result!250174 result!250170))

(assert (=> d!1059140 t!291352))

(declare-fun b_and!260231 () Bool)

(assert (= b_and!260223 (and (=> t!291352 result!250174) b_and!260231)))

(declare-fun tb!205207 () Bool)

(declare-fun t!291354 () Bool)

(assert (=> (and b!3593095 (= (toValue!7870 (transformation!5586 (rule!8306 token!511))) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291354) tb!205207))

(declare-fun result!250176 () Bool)

(assert (= result!250176 result!250170))

(assert (=> d!1059140 t!291354))

(declare-fun b_and!260233 () Bool)

(assert (= b_and!260225 (and (=> t!291354 result!250176) b_and!260233)))

(assert (=> d!1059140 m!4087635))

(declare-fun m!4088099 () Bool)

(assert (=> d!1059140 m!4088099))

(assert (=> d!1059140 m!4088089))

(assert (=> d!1059140 m!4087635))

(declare-fun m!4088101 () Bool)

(assert (=> d!1059140 m!4088101))

(assert (=> d!1059140 m!4087635))

(declare-fun m!4088103 () Bool)

(assert (=> d!1059140 m!4088103))

(assert (=> d!1059140 m!4087695))

(assert (=> b!3593098 d!1059140))

(declare-fun d!1059142 () Bool)

(assert (=> d!1059142 (= (inv!51129 (tag!6262 (h!43207 rules!3307))) (= (mod (str.len (value!179660 (tag!6262 (h!43207 rules!3307)))) 2) 0))))

(assert (=> b!3593096 d!1059142))

(declare-fun d!1059144 () Bool)

(declare-fun res!1451202 () Bool)

(declare-fun e!2223587 () Bool)

(assert (=> d!1059144 (=> (not res!1451202) (not e!2223587))))

(assert (=> d!1059144 (= res!1451202 (semiInverseModEq!2367 (toChars!7729 (transformation!5586 (h!43207 rules!3307))) (toValue!7870 (transformation!5586 (h!43207 rules!3307)))))))

(assert (=> d!1059144 (= (inv!51132 (transformation!5586 (h!43207 rules!3307))) e!2223587)))

(declare-fun b!3593473 () Bool)

(assert (=> b!3593473 (= e!2223587 (equivClasses!2266 (toChars!7729 (transformation!5586 (h!43207 rules!3307))) (toValue!7870 (transformation!5586 (h!43207 rules!3307)))))))

(assert (= (and d!1059144 res!1451202) b!3593473))

(declare-fun m!4088105 () Bool)

(assert (=> d!1059144 m!4088105))

(declare-fun m!4088107 () Bool)

(assert (=> b!3593473 m!4088107))

(assert (=> b!3593096 d!1059144))

(declare-fun d!1059146 () Bool)

(assert (=> d!1059146 (= (inv!51129 (tag!6262 anOtherTypeRule!33)) (= (mod (str.len (value!179660 (tag!6262 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3593097 d!1059146))

(declare-fun d!1059148 () Bool)

(declare-fun res!1451203 () Bool)

(declare-fun e!2223588 () Bool)

(assert (=> d!1059148 (=> (not res!1451203) (not e!2223588))))

(assert (=> d!1059148 (= res!1451203 (semiInverseModEq!2367 (toChars!7729 (transformation!5586 anOtherTypeRule!33)) (toValue!7870 (transformation!5586 anOtherTypeRule!33))))))

(assert (=> d!1059148 (= (inv!51132 (transformation!5586 anOtherTypeRule!33)) e!2223588)))

(declare-fun b!3593474 () Bool)

(assert (=> b!3593474 (= e!2223588 (equivClasses!2266 (toChars!7729 (transformation!5586 anOtherTypeRule!33)) (toValue!7870 (transformation!5586 anOtherTypeRule!33))))))

(assert (= (and d!1059148 res!1451203) b!3593474))

(declare-fun m!4088109 () Bool)

(assert (=> d!1059148 m!4088109))

(declare-fun m!4088111 () Bool)

(assert (=> b!3593474 m!4088111))

(assert (=> b!3593097 d!1059148))

(declare-fun b!3593485 () Bool)

(declare-fun e!2223597 () Bool)

(declare-fun inv!15 (TokenValue!5816) Bool)

(assert (=> b!3593485 (= e!2223597 (inv!15 (value!179661 token!511)))))

(declare-fun b!3593486 () Bool)

(declare-fun e!2223596 () Bool)

(declare-fun inv!16 (TokenValue!5816) Bool)

(assert (=> b!3593486 (= e!2223596 (inv!16 (value!179661 token!511)))))

(declare-fun d!1059150 () Bool)

(declare-fun c!622178 () Bool)

(assert (=> d!1059150 (= c!622178 ((_ is IntegerValue!17448) (value!179661 token!511)))))

(assert (=> d!1059150 (= (inv!21 (value!179661 token!511)) e!2223596)))

(declare-fun b!3593487 () Bool)

(declare-fun res!1451206 () Bool)

(assert (=> b!3593487 (=> res!1451206 e!2223597)))

(assert (=> b!3593487 (= res!1451206 (not ((_ is IntegerValue!17450) (value!179661 token!511))))))

(declare-fun e!2223595 () Bool)

(assert (=> b!3593487 (= e!2223595 e!2223597)))

(declare-fun b!3593488 () Bool)

(declare-fun inv!17 (TokenValue!5816) Bool)

(assert (=> b!3593488 (= e!2223595 (inv!17 (value!179661 token!511)))))

(declare-fun b!3593489 () Bool)

(assert (=> b!3593489 (= e!2223596 e!2223595)))

(declare-fun c!622179 () Bool)

(assert (=> b!3593489 (= c!622179 ((_ is IntegerValue!17449) (value!179661 token!511)))))

(assert (= (and d!1059150 c!622178) b!3593486))

(assert (= (and d!1059150 (not c!622178)) b!3593489))

(assert (= (and b!3593489 c!622179) b!3593488))

(assert (= (and b!3593489 (not c!622179)) b!3593487))

(assert (= (and b!3593487 (not res!1451206)) b!3593485))

(declare-fun m!4088113 () Bool)

(assert (=> b!3593485 m!4088113))

(declare-fun m!4088115 () Bool)

(assert (=> b!3593486 m!4088115))

(declare-fun m!4088117 () Bool)

(assert (=> b!3593488 m!4088117))

(assert (=> b!3593092 d!1059150))

(declare-fun d!1059152 () Bool)

(declare-fun res!1451211 () Bool)

(declare-fun e!2223602 () Bool)

(assert (=> d!1059152 (=> res!1451211 e!2223602)))

(assert (=> d!1059152 (= res!1451211 (not ((_ is Cons!37787) rules!3307)))))

(assert (=> d!1059152 (= (sepAndNonSepRulesDisjointChars!1756 rules!3307 rules!3307) e!2223602)))

(declare-fun b!3593494 () Bool)

(declare-fun e!2223603 () Bool)

(assert (=> b!3593494 (= e!2223602 e!2223603)))

(declare-fun res!1451212 () Bool)

(assert (=> b!3593494 (=> (not res!1451212) (not e!2223603))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!793 (Rule!10972 List!37911) Bool)

(assert (=> b!3593494 (= res!1451212 (ruleDisjointCharsFromAllFromOtherType!793 (h!43207 rules!3307) rules!3307))))

(declare-fun b!3593495 () Bool)

(assert (=> b!3593495 (= e!2223603 (sepAndNonSepRulesDisjointChars!1756 rules!3307 (t!291282 rules!3307)))))

(assert (= (and d!1059152 (not res!1451211)) b!3593494))

(assert (= (and b!3593494 res!1451212) b!3593495))

(declare-fun m!4088119 () Bool)

(assert (=> b!3593494 m!4088119))

(declare-fun m!4088121 () Bool)

(assert (=> b!3593495 m!4088121))

(assert (=> b!3593094 d!1059152))

(declare-fun d!1059154 () Bool)

(declare-fun lt!1233234 () Bool)

(assert (=> d!1059154 (= lt!1233234 (select (content!5376 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2223605 () Bool)

(assert (=> d!1059154 (= lt!1233234 e!2223605)))

(declare-fun res!1451213 () Bool)

(assert (=> d!1059154 (=> (not res!1451213) (not e!2223605))))

(assert (=> d!1059154 (= res!1451213 ((_ is Cons!37787) rules!3307))))

(assert (=> d!1059154 (= (contains!7235 rules!3307 anOtherTypeRule!33) lt!1233234)))

(declare-fun b!3593496 () Bool)

(declare-fun e!2223604 () Bool)

(assert (=> b!3593496 (= e!2223605 e!2223604)))

(declare-fun res!1451214 () Bool)

(assert (=> b!3593496 (=> res!1451214 e!2223604)))

(assert (=> b!3593496 (= res!1451214 (= (h!43207 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3593497 () Bool)

(assert (=> b!3593497 (= e!2223604 (contains!7235 (t!291282 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1059154 res!1451213) b!3593496))

(assert (= (and b!3593496 (not res!1451214)) b!3593497))

(assert (=> d!1059154 m!4087883))

(declare-fun m!4088123 () Bool)

(assert (=> d!1059154 m!4088123))

(declare-fun m!4088125 () Bool)

(assert (=> b!3593497 m!4088125))

(assert (=> b!3593090 d!1059154))

(declare-fun d!1059156 () Bool)

(assert (=> d!1059156 (= (isEmpty!22274 rules!3307) ((_ is Nil!37787) rules!3307))))

(assert (=> b!3593091 d!1059156))

(declare-fun d!1059158 () Bool)

(declare-fun res!1451217 () Bool)

(declare-fun e!2223608 () Bool)

(assert (=> d!1059158 (=> (not res!1451217) (not e!2223608))))

(declare-fun rulesValid!2126 (LexerInterface!5175 List!37911) Bool)

(assert (=> d!1059158 (= res!1451217 (rulesValid!2126 thiss!23823 rules!3307))))

(assert (=> d!1059158 (= (rulesInvariant!4572 thiss!23823 rules!3307) e!2223608)))

(declare-fun b!3593500 () Bool)

(declare-datatypes ((List!37914 0))(
  ( (Nil!37790) (Cons!37790 (h!43210 String!42414) (t!291405 List!37914)) )
))
(declare-fun noDuplicateTag!2122 (LexerInterface!5175 List!37911 List!37914) Bool)

(assert (=> b!3593500 (= e!2223608 (noDuplicateTag!2122 thiss!23823 rules!3307 Nil!37790))))

(assert (= (and d!1059158 res!1451217) b!3593500))

(declare-fun m!4088127 () Bool)

(assert (=> d!1059158 m!4088127))

(declare-fun m!4088129 () Bool)

(assert (=> b!3593500 m!4088129))

(assert (=> b!3593108 d!1059158))

(declare-fun d!1059160 () Bool)

(declare-fun lt!1233237 () Bool)

(declare-fun content!5377 (List!37910) (InoxSet C!20876))

(assert (=> d!1059160 (= lt!1233237 (select (content!5377 (usedCharacters!800 (regex!5586 rule!403))) lt!1233102))))

(declare-fun e!2223614 () Bool)

(assert (=> d!1059160 (= lt!1233237 e!2223614)))

(declare-fun res!1451223 () Bool)

(assert (=> d!1059160 (=> (not res!1451223) (not e!2223614))))

(assert (=> d!1059160 (= res!1451223 ((_ is Cons!37786) (usedCharacters!800 (regex!5586 rule!403))))))

(assert (=> d!1059160 (= (contains!7236 (usedCharacters!800 (regex!5586 rule!403)) lt!1233102) lt!1233237)))

(declare-fun b!3593505 () Bool)

(declare-fun e!2223613 () Bool)

(assert (=> b!3593505 (= e!2223614 e!2223613)))

(declare-fun res!1451222 () Bool)

(assert (=> b!3593505 (=> res!1451222 e!2223613)))

(assert (=> b!3593505 (= res!1451222 (= (h!43206 (usedCharacters!800 (regex!5586 rule!403))) lt!1233102))))

(declare-fun b!3593506 () Bool)

(assert (=> b!3593506 (= e!2223613 (contains!7236 (t!291281 (usedCharacters!800 (regex!5586 rule!403))) lt!1233102))))

(assert (= (and d!1059160 res!1451223) b!3593505))

(assert (= (and b!3593505 (not res!1451222)) b!3593506))

(assert (=> d!1059160 m!4087673))

(declare-fun m!4088131 () Bool)

(assert (=> d!1059160 m!4088131))

(declare-fun m!4088133 () Bool)

(assert (=> d!1059160 m!4088133))

(declare-fun m!4088135 () Bool)

(assert (=> b!3593506 m!4088135))

(assert (=> b!3593109 d!1059160))

(declare-fun b!3593523 () Bool)

(declare-fun e!2223626 () List!37910)

(declare-fun e!2223624 () List!37910)

(assert (=> b!3593523 (= e!2223626 e!2223624)))

(declare-fun c!622190 () Bool)

(assert (=> b!3593523 (= c!622190 ((_ is ElementMatch!10345) (regex!5586 rule!403)))))

(declare-fun call!260053 () List!37910)

(declare-fun c!622188 () Bool)

(declare-fun c!622191 () Bool)

(declare-fun bm!260045 () Bool)

(assert (=> bm!260045 (= call!260053 (usedCharacters!800 (ite c!622188 (reg!10674 (regex!5586 rule!403)) (ite c!622191 (regTwo!21203 (regex!5586 rule!403)) (regOne!21202 (regex!5586 rule!403))))))))

(declare-fun b!3593524 () Bool)

(assert (=> b!3593524 (= c!622188 ((_ is Star!10345) (regex!5586 rule!403)))))

(declare-fun e!2223625 () List!37910)

(assert (=> b!3593524 (= e!2223624 e!2223625)))

(declare-fun b!3593525 () Bool)

(assert (=> b!3593525 (= e!2223625 call!260053)))

(declare-fun bm!260046 () Bool)

(declare-fun call!260051 () List!37910)

(assert (=> bm!260046 (= call!260051 (usedCharacters!800 (ite c!622191 (regOne!21203 (regex!5586 rule!403)) (regTwo!21202 (regex!5586 rule!403)))))))

(declare-fun bm!260047 () Bool)

(declare-fun call!260052 () List!37910)

(assert (=> bm!260047 (= call!260052 call!260053)))

(declare-fun b!3593526 () Bool)

(assert (=> b!3593526 (= e!2223626 Nil!37786)))

(declare-fun b!3593527 () Bool)

(declare-fun e!2223623 () List!37910)

(declare-fun call!260050 () List!37910)

(assert (=> b!3593527 (= e!2223623 call!260050)))

(declare-fun d!1059162 () Bool)

(declare-fun c!622189 () Bool)

(assert (=> d!1059162 (= c!622189 (or ((_ is EmptyExpr!10345) (regex!5586 rule!403)) ((_ is EmptyLang!10345) (regex!5586 rule!403))))))

(assert (=> d!1059162 (= (usedCharacters!800 (regex!5586 rule!403)) e!2223626)))

(declare-fun b!3593528 () Bool)

(assert (=> b!3593528 (= e!2223623 call!260050)))

(declare-fun bm!260048 () Bool)

(assert (=> bm!260048 (= call!260050 (++!9402 (ite c!622191 call!260051 call!260052) (ite c!622191 call!260052 call!260051)))))

(declare-fun b!3593529 () Bool)

(assert (=> b!3593529 (= e!2223625 e!2223623)))

(assert (=> b!3593529 (= c!622191 ((_ is Union!10345) (regex!5586 rule!403)))))

(declare-fun b!3593530 () Bool)

(assert (=> b!3593530 (= e!2223624 (Cons!37786 (c!622112 (regex!5586 rule!403)) Nil!37786))))

(assert (= (and d!1059162 c!622189) b!3593526))

(assert (= (and d!1059162 (not c!622189)) b!3593523))

(assert (= (and b!3593523 c!622190) b!3593530))

(assert (= (and b!3593523 (not c!622190)) b!3593524))

(assert (= (and b!3593524 c!622188) b!3593525))

(assert (= (and b!3593524 (not c!622188)) b!3593529))

(assert (= (and b!3593529 c!622191) b!3593528))

(assert (= (and b!3593529 (not c!622191)) b!3593527))

(assert (= (or b!3593528 b!3593527) bm!260046))

(assert (= (or b!3593528 b!3593527) bm!260047))

(assert (= (or b!3593528 b!3593527) bm!260048))

(assert (= (or b!3593525 bm!260047) bm!260045))

(declare-fun m!4088137 () Bool)

(assert (=> bm!260045 m!4088137))

(declare-fun m!4088139 () Bool)

(assert (=> bm!260046 m!4088139))

(declare-fun m!4088141 () Bool)

(assert (=> bm!260048 m!4088141))

(assert (=> b!3593109 d!1059162))

(declare-fun d!1059164 () Bool)

(assert (=> d!1059164 (= (head!7514 suffix!1395) (h!43206 suffix!1395))))

(assert (=> b!3593109 d!1059164))

(declare-fun b!3593531 () Bool)

(declare-fun res!1451231 () Bool)

(declare-fun e!2223631 () Bool)

(assert (=> b!3593531 (=> (not res!1451231) (not e!2223631))))

(assert (=> b!3593531 (= res!1451231 (isEmpty!22275 (tail!5567 lt!1233089)))))

(declare-fun b!3593532 () Bool)

(declare-fun e!2223632 () Bool)

(assert (=> b!3593532 (= e!2223632 (nullable!3569 (regex!5586 (rule!8306 (_1!21968 lt!1233101)))))))

(declare-fun b!3593533 () Bool)

(declare-fun res!1451227 () Bool)

(declare-fun e!2223630 () Bool)

(assert (=> b!3593533 (=> res!1451227 e!2223630)))

(assert (=> b!3593533 (= res!1451227 (not (isEmpty!22275 (tail!5567 lt!1233089))))))

(declare-fun b!3593534 () Bool)

(assert (=> b!3593534 (= e!2223632 (matchR!4914 (derivativeStep!3118 (regex!5586 (rule!8306 (_1!21968 lt!1233101))) (head!7514 lt!1233089)) (tail!5567 lt!1233089)))))

(declare-fun b!3593535 () Bool)

(assert (=> b!3593535 (= e!2223630 (not (= (head!7514 lt!1233089) (c!622112 (regex!5586 (rule!8306 (_1!21968 lt!1233101)))))))))

(declare-fun bm!260049 () Bool)

(declare-fun call!260054 () Bool)

(assert (=> bm!260049 (= call!260054 (isEmpty!22275 lt!1233089))))

(declare-fun b!3593536 () Bool)

(declare-fun res!1451224 () Bool)

(declare-fun e!2223633 () Bool)

(assert (=> b!3593536 (=> res!1451224 e!2223633)))

(assert (=> b!3593536 (= res!1451224 e!2223631)))

(declare-fun res!1451228 () Bool)

(assert (=> b!3593536 (=> (not res!1451228) (not e!2223631))))

(declare-fun lt!1233238 () Bool)

(assert (=> b!3593536 (= res!1451228 lt!1233238)))

(declare-fun b!3593537 () Bool)

(assert (=> b!3593537 (= e!2223631 (= (head!7514 lt!1233089) (c!622112 (regex!5586 (rule!8306 (_1!21968 lt!1233101))))))))

(declare-fun b!3593538 () Bool)

(declare-fun res!1451229 () Bool)

(assert (=> b!3593538 (=> (not res!1451229) (not e!2223631))))

(assert (=> b!3593538 (= res!1451229 (not call!260054))))

(declare-fun b!3593539 () Bool)

(declare-fun res!1451225 () Bool)

(assert (=> b!3593539 (=> res!1451225 e!2223633)))

(assert (=> b!3593539 (= res!1451225 (not ((_ is ElementMatch!10345) (regex!5586 (rule!8306 (_1!21968 lt!1233101))))))))

(declare-fun e!2223627 () Bool)

(assert (=> b!3593539 (= e!2223627 e!2223633)))

(declare-fun b!3593541 () Bool)

(declare-fun e!2223629 () Bool)

(assert (=> b!3593541 (= e!2223633 e!2223629)))

(declare-fun res!1451226 () Bool)

(assert (=> b!3593541 (=> (not res!1451226) (not e!2223629))))

(assert (=> b!3593541 (= res!1451226 (not lt!1233238))))

(declare-fun b!3593542 () Bool)

(assert (=> b!3593542 (= e!2223627 (not lt!1233238))))

(declare-fun b!3593543 () Bool)

(declare-fun e!2223628 () Bool)

(assert (=> b!3593543 (= e!2223628 e!2223627)))

(declare-fun c!622192 () Bool)

(assert (=> b!3593543 (= c!622192 ((_ is EmptyLang!10345) (regex!5586 (rule!8306 (_1!21968 lt!1233101)))))))

(declare-fun b!3593544 () Bool)

(assert (=> b!3593544 (= e!2223629 e!2223630)))

(declare-fun res!1451230 () Bool)

(assert (=> b!3593544 (=> res!1451230 e!2223630)))

(assert (=> b!3593544 (= res!1451230 call!260054)))

(declare-fun d!1059166 () Bool)

(assert (=> d!1059166 e!2223628))

(declare-fun c!622193 () Bool)

(assert (=> d!1059166 (= c!622193 ((_ is EmptyExpr!10345) (regex!5586 (rule!8306 (_1!21968 lt!1233101)))))))

(assert (=> d!1059166 (= lt!1233238 e!2223632)))

(declare-fun c!622194 () Bool)

(assert (=> d!1059166 (= c!622194 (isEmpty!22275 lt!1233089))))

(assert (=> d!1059166 (validRegex!4725 (regex!5586 (rule!8306 (_1!21968 lt!1233101))))))

(assert (=> d!1059166 (= (matchR!4914 (regex!5586 (rule!8306 (_1!21968 lt!1233101))) lt!1233089) lt!1233238)))

(declare-fun b!3593540 () Bool)

(assert (=> b!3593540 (= e!2223628 (= lt!1233238 call!260054))))

(assert (= (and d!1059166 c!622194) b!3593532))

(assert (= (and d!1059166 (not c!622194)) b!3593534))

(assert (= (and d!1059166 c!622193) b!3593540))

(assert (= (and d!1059166 (not c!622193)) b!3593543))

(assert (= (and b!3593543 c!622192) b!3593542))

(assert (= (and b!3593543 (not c!622192)) b!3593539))

(assert (= (and b!3593539 (not res!1451225)) b!3593536))

(assert (= (and b!3593536 res!1451228) b!3593538))

(assert (= (and b!3593538 res!1451229) b!3593531))

(assert (= (and b!3593531 res!1451231) b!3593537))

(assert (= (and b!3593536 (not res!1451224)) b!3593541))

(assert (= (and b!3593541 res!1451226) b!3593544))

(assert (= (and b!3593544 (not res!1451230)) b!3593533))

(assert (= (and b!3593533 (not res!1451227)) b!3593535))

(assert (= (or b!3593540 b!3593538 b!3593544) bm!260049))

(declare-fun m!4088143 () Bool)

(assert (=> b!3593537 m!4088143))

(assert (=> b!3593535 m!4088143))

(declare-fun m!4088145 () Bool)

(assert (=> b!3593533 m!4088145))

(assert (=> b!3593533 m!4088145))

(declare-fun m!4088147 () Bool)

(assert (=> b!3593533 m!4088147))

(assert (=> b!3593531 m!4088145))

(assert (=> b!3593531 m!4088145))

(assert (=> b!3593531 m!4088147))

(declare-fun m!4088149 () Bool)

(assert (=> bm!260049 m!4088149))

(assert (=> d!1059166 m!4088149))

(declare-fun m!4088151 () Bool)

(assert (=> d!1059166 m!4088151))

(declare-fun m!4088153 () Bool)

(assert (=> b!3593532 m!4088153))

(assert (=> b!3593534 m!4088143))

(assert (=> b!3593534 m!4088143))

(declare-fun m!4088155 () Bool)

(assert (=> b!3593534 m!4088155))

(assert (=> b!3593534 m!4088145))

(assert (=> b!3593534 m!4088155))

(assert (=> b!3593534 m!4088145))

(declare-fun m!4088157 () Bool)

(assert (=> b!3593534 m!4088157))

(assert (=> b!3593088 d!1059166))

(declare-fun d!1059168 () Bool)

(assert (=> d!1059168 (= (apply!9092 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))) (seqFromList!4139 lt!1233089)) (dynLambda!16265 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) (seqFromList!4139 lt!1233089)))))

(declare-fun b_lambda!106189 () Bool)

(assert (=> (not b_lambda!106189) (not d!1059168)))

(declare-fun t!291356 () Bool)

(declare-fun tb!205209 () Bool)

(assert (=> (and b!3593079 (= (toValue!7870 (transformation!5586 anOtherTypeRule!33)) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291356) tb!205209))

(declare-fun result!250178 () Bool)

(assert (=> tb!205209 (= result!250178 (inv!21 (dynLambda!16265 (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) (seqFromList!4139 lt!1233089))))))

(declare-fun m!4088159 () Bool)

(assert (=> tb!205209 m!4088159))

(assert (=> d!1059168 t!291356))

(declare-fun b_and!260235 () Bool)

(assert (= b_and!260227 (and (=> t!291356 result!250178) b_and!260235)))

(declare-fun tb!205211 () Bool)

(declare-fun t!291358 () Bool)

(assert (=> (and b!3593099 (= (toValue!7870 (transformation!5586 (h!43207 rules!3307))) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291358) tb!205211))

(declare-fun result!250180 () Bool)

(assert (= result!250180 result!250178))

(assert (=> d!1059168 t!291358))

(declare-fun b_and!260237 () Bool)

(assert (= b_and!260229 (and (=> t!291358 result!250180) b_and!260237)))

(declare-fun t!291360 () Bool)

(declare-fun tb!205213 () Bool)

(assert (=> (and b!3593087 (= (toValue!7870 (transformation!5586 rule!403)) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291360) tb!205213))

(declare-fun result!250182 () Bool)

(assert (= result!250182 result!250178))

(assert (=> d!1059168 t!291360))

(declare-fun b_and!260239 () Bool)

(assert (= b_and!260231 (and (=> t!291360 result!250182) b_and!260239)))

(declare-fun tb!205215 () Bool)

(declare-fun t!291362 () Bool)

(assert (=> (and b!3593095 (= (toValue!7870 (transformation!5586 (rule!8306 token!511))) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291362) tb!205215))

(declare-fun result!250184 () Bool)

(assert (= result!250184 result!250178))

(assert (=> d!1059168 t!291362))

(declare-fun b_and!260241 () Bool)

(assert (= b_and!260233 (and (=> t!291362 result!250184) b_and!260241)))

(assert (=> d!1059168 m!4087619))

(declare-fun m!4088161 () Bool)

(assert (=> d!1059168 m!4088161))

(assert (=> b!3593110 d!1059168))

(declare-fun b!3593563 () Bool)

(declare-fun res!1451250 () Bool)

(declare-fun e!2223645 () Bool)

(assert (=> b!3593563 (=> (not res!1451250) (not e!2223645))))

(declare-fun lt!1233250 () Option!7803)

(assert (=> b!3593563 (= res!1451250 (= (++!9402 (list!13902 (charsOf!3600 (_1!21968 (get!12206 lt!1233250)))) (_2!21968 (get!12206 lt!1233250))) lt!1233105))))

(declare-fun b!3593564 () Bool)

(declare-fun res!1451247 () Bool)

(assert (=> b!3593564 (=> (not res!1451247) (not e!2223645))))

(assert (=> b!3593564 (= res!1451247 (< (size!28788 (_2!21968 (get!12206 lt!1233250))) (size!28788 lt!1233105)))))

(declare-fun b!3593565 () Bool)

(declare-fun e!2223646 () Option!7803)

(assert (=> b!3593565 (= e!2223646 None!7802)))

(declare-fun b!3593566 () Bool)

(declare-datatypes ((tuple2!37674 0))(
  ( (tuple2!37675 (_1!21971 List!37910) (_2!21971 List!37910)) )
))
(declare-fun lt!1233253 () tuple2!37674)

(assert (=> b!3593566 (= e!2223646 (Some!7802 (tuple2!37669 (Token!10539 (apply!9092 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))) (seqFromList!4139 (_1!21971 lt!1233253))) (rule!8306 (_1!21968 lt!1233101)) (size!28787 (seqFromList!4139 (_1!21971 lt!1233253))) (_1!21971 lt!1233253)) (_2!21971 lt!1233253))))))

(declare-fun lt!1233251 () Unit!53789)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!948 (Regex!10345 List!37910) Unit!53789)

(assert (=> b!3593566 (= lt!1233251 (longestMatchIsAcceptedByMatchOrIsEmpty!948 (regex!5586 (rule!8306 (_1!21968 lt!1233101))) lt!1233105))))

(declare-fun res!1451246 () Bool)

(declare-fun findLongestMatchInner!975 (Regex!10345 List!37910 Int List!37910 List!37910 Int) tuple2!37674)

(assert (=> b!3593566 (= res!1451246 (isEmpty!22275 (_1!21971 (findLongestMatchInner!975 (regex!5586 (rule!8306 (_1!21968 lt!1233101))) Nil!37786 (size!28788 Nil!37786) lt!1233105 lt!1233105 (size!28788 lt!1233105)))))))

(declare-fun e!2223643 () Bool)

(assert (=> b!3593566 (=> res!1451246 e!2223643)))

(assert (=> b!3593566 e!2223643))

(declare-fun lt!1233249 () Unit!53789)

(assert (=> b!3593566 (= lt!1233249 lt!1233251)))

(declare-fun lt!1233252 () Unit!53789)

(assert (=> b!3593566 (= lt!1233252 (lemmaSemiInverse!1343 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))) (seqFromList!4139 (_1!21971 lt!1233253))))))

(declare-fun b!3593567 () Bool)

(assert (=> b!3593567 (= e!2223643 (matchR!4914 (regex!5586 (rule!8306 (_1!21968 lt!1233101))) (_1!21971 (findLongestMatchInner!975 (regex!5586 (rule!8306 (_1!21968 lt!1233101))) Nil!37786 (size!28788 Nil!37786) lt!1233105 lt!1233105 (size!28788 lt!1233105)))))))

(declare-fun b!3593568 () Bool)

(declare-fun res!1451251 () Bool)

(assert (=> b!3593568 (=> (not res!1451251) (not e!2223645))))

(assert (=> b!3593568 (= res!1451251 (= (rule!8306 (_1!21968 (get!12206 lt!1233250))) (rule!8306 (_1!21968 lt!1233101))))))

(declare-fun b!3593569 () Bool)

(assert (=> b!3593569 (= e!2223645 (= (size!28786 (_1!21968 (get!12206 lt!1233250))) (size!28788 (originalCharacters!6300 (_1!21968 (get!12206 lt!1233250))))))))

(declare-fun d!1059170 () Bool)

(declare-fun e!2223644 () Bool)

(assert (=> d!1059170 e!2223644))

(declare-fun res!1451252 () Bool)

(assert (=> d!1059170 (=> res!1451252 e!2223644)))

(assert (=> d!1059170 (= res!1451252 (isEmpty!22277 lt!1233250))))

(assert (=> d!1059170 (= lt!1233250 e!2223646)))

(declare-fun c!622197 () Bool)

(assert (=> d!1059170 (= c!622197 (isEmpty!22275 (_1!21971 lt!1233253)))))

(declare-fun findLongestMatch!890 (Regex!10345 List!37910) tuple2!37674)

(assert (=> d!1059170 (= lt!1233253 (findLongestMatch!890 (regex!5586 (rule!8306 (_1!21968 lt!1233101))) lt!1233105))))

(assert (=> d!1059170 (ruleValid!1851 thiss!23823 (rule!8306 (_1!21968 lt!1233101)))))

(assert (=> d!1059170 (= (maxPrefixOneRule!1853 thiss!23823 (rule!8306 (_1!21968 lt!1233101)) lt!1233105) lt!1233250)))

(declare-fun b!3593570 () Bool)

(assert (=> b!3593570 (= e!2223644 e!2223645)))

(declare-fun res!1451248 () Bool)

(assert (=> b!3593570 (=> (not res!1451248) (not e!2223645))))

(assert (=> b!3593570 (= res!1451248 (matchR!4914 (regex!5586 (rule!8306 (_1!21968 lt!1233101))) (list!13902 (charsOf!3600 (_1!21968 (get!12206 lt!1233250))))))))

(declare-fun b!3593571 () Bool)

(declare-fun res!1451249 () Bool)

(assert (=> b!3593571 (=> (not res!1451249) (not e!2223645))))

(assert (=> b!3593571 (= res!1451249 (= (value!179661 (_1!21968 (get!12206 lt!1233250))) (apply!9092 (transformation!5586 (rule!8306 (_1!21968 (get!12206 lt!1233250)))) (seqFromList!4139 (originalCharacters!6300 (_1!21968 (get!12206 lt!1233250)))))))))

(assert (= (and d!1059170 c!622197) b!3593565))

(assert (= (and d!1059170 (not c!622197)) b!3593566))

(assert (= (and b!3593566 (not res!1451246)) b!3593567))

(assert (= (and d!1059170 (not res!1451252)) b!3593570))

(assert (= (and b!3593570 res!1451248) b!3593563))

(assert (= (and b!3593563 res!1451250) b!3593564))

(assert (= (and b!3593564 res!1451247) b!3593568))

(assert (= (and b!3593568 res!1451251) b!3593571))

(assert (= (and b!3593571 res!1451249) b!3593569))

(declare-fun m!4088163 () Bool)

(assert (=> b!3593566 m!4088163))

(declare-fun m!4088165 () Bool)

(assert (=> b!3593566 m!4088165))

(declare-fun m!4088167 () Bool)

(assert (=> b!3593566 m!4088167))

(declare-fun m!4088169 () Bool)

(assert (=> b!3593566 m!4088169))

(declare-fun m!4088171 () Bool)

(assert (=> b!3593566 m!4088171))

(declare-fun m!4088173 () Bool)

(assert (=> b!3593566 m!4088173))

(assert (=> b!3593566 m!4088169))

(declare-fun m!4088175 () Bool)

(assert (=> b!3593566 m!4088175))

(assert (=> b!3593566 m!4088163))

(declare-fun m!4088177 () Bool)

(assert (=> b!3593566 m!4088177))

(assert (=> b!3593566 m!4088171))

(assert (=> b!3593566 m!4088163))

(declare-fun m!4088179 () Bool)

(assert (=> b!3593566 m!4088179))

(assert (=> b!3593566 m!4088163))

(declare-fun m!4088181 () Bool)

(assert (=> b!3593571 m!4088181))

(declare-fun m!4088183 () Bool)

(assert (=> b!3593571 m!4088183))

(assert (=> b!3593571 m!4088183))

(declare-fun m!4088185 () Bool)

(assert (=> b!3593571 m!4088185))

(assert (=> b!3593570 m!4088181))

(declare-fun m!4088187 () Bool)

(assert (=> b!3593570 m!4088187))

(assert (=> b!3593570 m!4088187))

(declare-fun m!4088189 () Bool)

(assert (=> b!3593570 m!4088189))

(assert (=> b!3593570 m!4088189))

(declare-fun m!4088191 () Bool)

(assert (=> b!3593570 m!4088191))

(assert (=> b!3593569 m!4088181))

(declare-fun m!4088193 () Bool)

(assert (=> b!3593569 m!4088193))

(declare-fun m!4088195 () Bool)

(assert (=> d!1059170 m!4088195))

(declare-fun m!4088197 () Bool)

(assert (=> d!1059170 m!4088197))

(declare-fun m!4088199 () Bool)

(assert (=> d!1059170 m!4088199))

(assert (=> d!1059170 m!4087667))

(assert (=> b!3593563 m!4088181))

(assert (=> b!3593563 m!4088187))

(assert (=> b!3593563 m!4088187))

(assert (=> b!3593563 m!4088189))

(assert (=> b!3593563 m!4088189))

(declare-fun m!4088201 () Bool)

(assert (=> b!3593563 m!4088201))

(assert (=> b!3593568 m!4088181))

(assert (=> b!3593564 m!4088181))

(declare-fun m!4088203 () Bool)

(assert (=> b!3593564 m!4088203))

(assert (=> b!3593564 m!4088171))

(assert (=> b!3593567 m!4088169))

(assert (=> b!3593567 m!4088171))

(assert (=> b!3593567 m!4088169))

(assert (=> b!3593567 m!4088171))

(assert (=> b!3593567 m!4088173))

(declare-fun m!4088205 () Bool)

(assert (=> b!3593567 m!4088205))

(assert (=> b!3593110 d!1059170))

(declare-fun d!1059172 () Bool)

(assert (=> d!1059172 (= (maxPrefixOneRule!1853 thiss!23823 (rule!8306 (_1!21968 lt!1233101)) lt!1233105) (Some!7802 (tuple2!37669 (Token!10539 (apply!9092 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))) (seqFromList!4139 lt!1233089)) (rule!8306 (_1!21968 lt!1233101)) (size!28788 lt!1233089) lt!1233089) (_2!21968 lt!1233101))))))

(declare-fun lt!1233307 () Unit!53789)

(declare-fun choose!20913 (LexerInterface!5175 List!37911 List!37910 List!37910 List!37910 Rule!10972) Unit!53789)

(assert (=> d!1059172 (= lt!1233307 (choose!20913 thiss!23823 rules!3307 lt!1233089 lt!1233105 (_2!21968 lt!1233101) (rule!8306 (_1!21968 lt!1233101))))))

(assert (=> d!1059172 (not (isEmpty!22274 rules!3307))))

(assert (=> d!1059172 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!925 thiss!23823 rules!3307 lt!1233089 lt!1233105 (_2!21968 lt!1233101) (rule!8306 (_1!21968 lt!1233101))) lt!1233307)))

(declare-fun bs!570319 () Bool)

(assert (= bs!570319 d!1059172))

(assert (=> bs!570319 m!4087619))

(assert (=> bs!570319 m!4087619))

(assert (=> bs!570319 m!4087621))

(assert (=> bs!570319 m!4087625))

(assert (=> bs!570319 m!4087631))

(assert (=> bs!570319 m!4087669))

(declare-fun m!4088257 () Bool)

(assert (=> bs!570319 m!4088257))

(assert (=> b!3593110 d!1059172))

(declare-fun d!1059176 () Bool)

(assert (=> d!1059176 (= (seqFromList!4139 lt!1233089) (fromListB!1907 lt!1233089))))

(declare-fun bs!570320 () Bool)

(assert (= bs!570320 d!1059176))

(declare-fun m!4088259 () Bool)

(assert (=> bs!570320 m!4088259))

(assert (=> b!3593110 d!1059176))

(declare-fun d!1059178 () Bool)

(declare-fun lt!1233313 () List!37910)

(assert (=> d!1059178 (= (++!9402 lt!1233089 lt!1233313) lt!1233105)))

(declare-fun e!2223661 () List!37910)

(assert (=> d!1059178 (= lt!1233313 e!2223661)))

(declare-fun c!622206 () Bool)

(assert (=> d!1059178 (= c!622206 ((_ is Cons!37786) lt!1233089))))

(assert (=> d!1059178 (>= (size!28788 lt!1233105) (size!28788 lt!1233089))))

(assert (=> d!1059178 (= (getSuffix!1524 lt!1233105 lt!1233089) lt!1233313)))

(declare-fun b!3593600 () Bool)

(assert (=> b!3593600 (= e!2223661 (getSuffix!1524 (tail!5567 lt!1233105) (t!291281 lt!1233089)))))

(declare-fun b!3593601 () Bool)

(assert (=> b!3593601 (= e!2223661 lt!1233105)))

(assert (= (and d!1059178 c!622206) b!3593600))

(assert (= (and d!1059178 (not c!622206)) b!3593601))

(declare-fun m!4088273 () Bool)

(assert (=> d!1059178 m!4088273))

(assert (=> d!1059178 m!4088171))

(assert (=> d!1059178 m!4087625))

(declare-fun m!4088275 () Bool)

(assert (=> b!3593600 m!4088275))

(assert (=> b!3593600 m!4088275))

(declare-fun m!4088277 () Bool)

(assert (=> b!3593600 m!4088277))

(assert (=> b!3593110 d!1059178))

(declare-fun d!1059182 () Bool)

(assert (=> d!1059182 (= (_2!21968 lt!1233101) lt!1233109)))

(declare-fun lt!1233320 () Unit!53789)

(declare-fun choose!20914 (List!37910 List!37910 List!37910 List!37910 List!37910) Unit!53789)

(assert (=> d!1059182 (= lt!1233320 (choose!20914 lt!1233089 (_2!21968 lt!1233101) lt!1233089 lt!1233109 lt!1233105))))

(assert (=> d!1059182 (isPrefix!2949 lt!1233089 lt!1233105)))

(assert (=> d!1059182 (= (lemmaSamePrefixThenSameSuffix!1304 lt!1233089 (_2!21968 lt!1233101) lt!1233089 lt!1233109 lt!1233105) lt!1233320)))

(declare-fun bs!570322 () Bool)

(assert (= bs!570322 d!1059182))

(declare-fun m!4088291 () Bool)

(assert (=> bs!570322 m!4088291))

(assert (=> bs!570322 m!4087697))

(assert (=> b!3593110 d!1059182))

(declare-fun d!1059190 () Bool)

(declare-fun lt!1233325 () Int)

(assert (=> d!1059190 (>= lt!1233325 0)))

(declare-fun e!2223681 () Int)

(assert (=> d!1059190 (= lt!1233325 e!2223681)))

(declare-fun c!622213 () Bool)

(assert (=> d!1059190 (= c!622213 ((_ is Nil!37786) lt!1233089))))

(assert (=> d!1059190 (= (size!28788 lt!1233089) lt!1233325)))

(declare-fun b!3593634 () Bool)

(assert (=> b!3593634 (= e!2223681 0)))

(declare-fun b!3593635 () Bool)

(assert (=> b!3593635 (= e!2223681 (+ 1 (size!28788 (t!291281 lt!1233089))))))

(assert (= (and d!1059190 c!622213) b!3593634))

(assert (= (and d!1059190 (not c!622213)) b!3593635))

(declare-fun m!4088317 () Bool)

(assert (=> b!3593635 m!4088317))

(assert (=> b!3593110 d!1059190))

(declare-fun d!1059202 () Bool)

(declare-fun res!1451284 () Bool)

(declare-fun e!2223682 () Bool)

(assert (=> d!1059202 (=> (not res!1451284) (not e!2223682))))

(assert (=> d!1059202 (= res!1451284 (validRegex!4725 (regex!5586 (rule!8306 (_1!21968 lt!1233101)))))))

(assert (=> d!1059202 (= (ruleValid!1851 thiss!23823 (rule!8306 (_1!21968 lt!1233101))) e!2223682)))

(declare-fun b!3593636 () Bool)

(declare-fun res!1451285 () Bool)

(assert (=> b!3593636 (=> (not res!1451285) (not e!2223682))))

(assert (=> b!3593636 (= res!1451285 (not (nullable!3569 (regex!5586 (rule!8306 (_1!21968 lt!1233101))))))))

(declare-fun b!3593637 () Bool)

(assert (=> b!3593637 (= e!2223682 (not (= (tag!6262 (rule!8306 (_1!21968 lt!1233101))) (String!42415 ""))))))

(assert (= (and d!1059202 res!1451284) b!3593636))

(assert (= (and b!3593636 res!1451285) b!3593637))

(assert (=> d!1059202 m!4088151))

(assert (=> b!3593636 m!4088153))

(assert (=> b!3593089 d!1059202))

(declare-fun d!1059204 () Bool)

(declare-fun lt!1233326 () Bool)

(assert (=> d!1059204 (= lt!1233326 (select (content!5377 (usedCharacters!800 (regex!5586 anOtherTypeRule!33))) lt!1233102))))

(declare-fun e!2223684 () Bool)

(assert (=> d!1059204 (= lt!1233326 e!2223684)))

(declare-fun res!1451287 () Bool)

(assert (=> d!1059204 (=> (not res!1451287) (not e!2223684))))

(assert (=> d!1059204 (= res!1451287 ((_ is Cons!37786) (usedCharacters!800 (regex!5586 anOtherTypeRule!33))))))

(assert (=> d!1059204 (= (contains!7236 (usedCharacters!800 (regex!5586 anOtherTypeRule!33)) lt!1233102) lt!1233326)))

(declare-fun b!3593638 () Bool)

(declare-fun e!2223683 () Bool)

(assert (=> b!3593638 (= e!2223684 e!2223683)))

(declare-fun res!1451286 () Bool)

(assert (=> b!3593638 (=> res!1451286 e!2223683)))

(assert (=> b!3593638 (= res!1451286 (= (h!43206 (usedCharacters!800 (regex!5586 anOtherTypeRule!33))) lt!1233102))))

(declare-fun b!3593639 () Bool)

(assert (=> b!3593639 (= e!2223683 (contains!7236 (t!291281 (usedCharacters!800 (regex!5586 anOtherTypeRule!33))) lt!1233102))))

(assert (= (and d!1059204 res!1451287) b!3593638))

(assert (= (and b!3593638 (not res!1451286)) b!3593639))

(assert (=> d!1059204 m!4087615))

(declare-fun m!4088329 () Bool)

(assert (=> d!1059204 m!4088329))

(declare-fun m!4088333 () Bool)

(assert (=> d!1059204 m!4088333))

(declare-fun m!4088335 () Bool)

(assert (=> b!3593639 m!4088335))

(assert (=> b!3593106 d!1059204))

(declare-fun b!3593642 () Bool)

(declare-fun e!2223689 () List!37910)

(declare-fun e!2223687 () List!37910)

(assert (=> b!3593642 (= e!2223689 e!2223687)))

(declare-fun c!622216 () Bool)

(assert (=> b!3593642 (= c!622216 ((_ is ElementMatch!10345) (regex!5586 anOtherTypeRule!33)))))

(declare-fun bm!260051 () Bool)

(declare-fun call!260059 () List!37910)

(declare-fun c!622214 () Bool)

(declare-fun c!622217 () Bool)

(assert (=> bm!260051 (= call!260059 (usedCharacters!800 (ite c!622214 (reg!10674 (regex!5586 anOtherTypeRule!33)) (ite c!622217 (regTwo!21203 (regex!5586 anOtherTypeRule!33)) (regOne!21202 (regex!5586 anOtherTypeRule!33))))))))

(declare-fun b!3593643 () Bool)

(assert (=> b!3593643 (= c!622214 ((_ is Star!10345) (regex!5586 anOtherTypeRule!33)))))

(declare-fun e!2223688 () List!37910)

(assert (=> b!3593643 (= e!2223687 e!2223688)))

(declare-fun b!3593644 () Bool)

(assert (=> b!3593644 (= e!2223688 call!260059)))

(declare-fun bm!260052 () Bool)

(declare-fun call!260057 () List!37910)

(assert (=> bm!260052 (= call!260057 (usedCharacters!800 (ite c!622217 (regOne!21203 (regex!5586 anOtherTypeRule!33)) (regTwo!21202 (regex!5586 anOtherTypeRule!33)))))))

(declare-fun bm!260053 () Bool)

(declare-fun call!260058 () List!37910)

(assert (=> bm!260053 (= call!260058 call!260059)))

(declare-fun b!3593645 () Bool)

(assert (=> b!3593645 (= e!2223689 Nil!37786)))

(declare-fun b!3593646 () Bool)

(declare-fun e!2223686 () List!37910)

(declare-fun call!260056 () List!37910)

(assert (=> b!3593646 (= e!2223686 call!260056)))

(declare-fun d!1059208 () Bool)

(declare-fun c!622215 () Bool)

(assert (=> d!1059208 (= c!622215 (or ((_ is EmptyExpr!10345) (regex!5586 anOtherTypeRule!33)) ((_ is EmptyLang!10345) (regex!5586 anOtherTypeRule!33))))))

(assert (=> d!1059208 (= (usedCharacters!800 (regex!5586 anOtherTypeRule!33)) e!2223689)))

(declare-fun b!3593647 () Bool)

(assert (=> b!3593647 (= e!2223686 call!260056)))

(declare-fun bm!260054 () Bool)

(assert (=> bm!260054 (= call!260056 (++!9402 (ite c!622217 call!260057 call!260058) (ite c!622217 call!260058 call!260057)))))

(declare-fun b!3593648 () Bool)

(assert (=> b!3593648 (= e!2223688 e!2223686)))

(assert (=> b!3593648 (= c!622217 ((_ is Union!10345) (regex!5586 anOtherTypeRule!33)))))

(declare-fun b!3593649 () Bool)

(assert (=> b!3593649 (= e!2223687 (Cons!37786 (c!622112 (regex!5586 anOtherTypeRule!33)) Nil!37786))))

(assert (= (and d!1059208 c!622215) b!3593645))

(assert (= (and d!1059208 (not c!622215)) b!3593642))

(assert (= (and b!3593642 c!622216) b!3593649))

(assert (= (and b!3593642 (not c!622216)) b!3593643))

(assert (= (and b!3593643 c!622214) b!3593644))

(assert (= (and b!3593643 (not c!622214)) b!3593648))

(assert (= (and b!3593648 c!622217) b!3593647))

(assert (= (and b!3593648 (not c!622217)) b!3593646))

(assert (= (or b!3593647 b!3593646) bm!260052))

(assert (= (or b!3593647 b!3593646) bm!260053))

(assert (= (or b!3593647 b!3593646) bm!260054))

(assert (= (or b!3593644 bm!260053) bm!260051))

(declare-fun m!4088337 () Bool)

(assert (=> bm!260051 m!4088337))

(declare-fun m!4088339 () Bool)

(assert (=> bm!260052 m!4088339))

(declare-fun m!4088341 () Bool)

(assert (=> bm!260054 m!4088341))

(assert (=> b!3593106 d!1059208))

(declare-fun b!3593650 () Bool)

(declare-fun res!1451293 () Bool)

(declare-fun e!2223690 () Bool)

(assert (=> b!3593650 (=> (not res!1451293) (not e!2223690))))

(declare-fun lt!1233330 () Option!7803)

(assert (=> b!3593650 (= res!1451293 (= (value!179661 (_1!21968 (get!12206 lt!1233330))) (apply!9092 (transformation!5586 (rule!8306 (_1!21968 (get!12206 lt!1233330)))) (seqFromList!4139 (originalCharacters!6300 (_1!21968 (get!12206 lt!1233330)))))))))

(declare-fun call!260060 () Option!7803)

(declare-fun bm!260055 () Bool)

(assert (=> bm!260055 (= call!260060 (maxPrefixOneRule!1853 thiss!23823 (h!43207 rules!3307) lt!1233105))))

(declare-fun b!3593651 () Bool)

(declare-fun res!1451295 () Bool)

(assert (=> b!3593651 (=> (not res!1451295) (not e!2223690))))

(assert (=> b!3593651 (= res!1451295 (< (size!28788 (_2!21968 (get!12206 lt!1233330))) (size!28788 lt!1233105)))))

(declare-fun b!3593652 () Bool)

(declare-fun res!1451291 () Bool)

(assert (=> b!3593652 (=> (not res!1451291) (not e!2223690))))

(assert (=> b!3593652 (= res!1451291 (= (list!13902 (charsOf!3600 (_1!21968 (get!12206 lt!1233330)))) (originalCharacters!6300 (_1!21968 (get!12206 lt!1233330)))))))

(declare-fun b!3593653 () Bool)

(declare-fun res!1451290 () Bool)

(assert (=> b!3593653 (=> (not res!1451290) (not e!2223690))))

(assert (=> b!3593653 (= res!1451290 (= (++!9402 (list!13902 (charsOf!3600 (_1!21968 (get!12206 lt!1233330)))) (_2!21968 (get!12206 lt!1233330))) lt!1233105))))

(declare-fun b!3593654 () Bool)

(declare-fun e!2223691 () Option!7803)

(assert (=> b!3593654 (= e!2223691 call!260060)))

(declare-fun b!3593655 () Bool)

(assert (=> b!3593655 (= e!2223690 (contains!7235 rules!3307 (rule!8306 (_1!21968 (get!12206 lt!1233330)))))))

(declare-fun b!3593656 () Bool)

(declare-fun res!1451294 () Bool)

(assert (=> b!3593656 (=> (not res!1451294) (not e!2223690))))

(assert (=> b!3593656 (= res!1451294 (matchR!4914 (regex!5586 (rule!8306 (_1!21968 (get!12206 lt!1233330)))) (list!13902 (charsOf!3600 (_1!21968 (get!12206 lt!1233330))))))))

(declare-fun d!1059212 () Bool)

(declare-fun e!2223692 () Bool)

(assert (=> d!1059212 e!2223692))

(declare-fun res!1451292 () Bool)

(assert (=> d!1059212 (=> res!1451292 e!2223692)))

(assert (=> d!1059212 (= res!1451292 (isEmpty!22277 lt!1233330))))

(assert (=> d!1059212 (= lt!1233330 e!2223691)))

(declare-fun c!622218 () Bool)

(assert (=> d!1059212 (= c!622218 (and ((_ is Cons!37787) rules!3307) ((_ is Nil!37787) (t!291282 rules!3307))))))

(declare-fun lt!1233329 () Unit!53789)

(declare-fun lt!1233327 () Unit!53789)

(assert (=> d!1059212 (= lt!1233329 lt!1233327)))

(assert (=> d!1059212 (isPrefix!2949 lt!1233105 lt!1233105)))

(assert (=> d!1059212 (= lt!1233327 (lemmaIsPrefixRefl!1886 lt!1233105 lt!1233105))))

(assert (=> d!1059212 (rulesValidInductive!1951 thiss!23823 rules!3307)))

(assert (=> d!1059212 (= (maxPrefix!2709 thiss!23823 rules!3307 lt!1233105) lt!1233330)))

(declare-fun b!3593657 () Bool)

(assert (=> b!3593657 (= e!2223692 e!2223690)))

(declare-fun res!1451296 () Bool)

(assert (=> b!3593657 (=> (not res!1451296) (not e!2223690))))

(assert (=> b!3593657 (= res!1451296 (isDefined!6035 lt!1233330))))

(declare-fun b!3593658 () Bool)

(declare-fun lt!1233328 () Option!7803)

(declare-fun lt!1233331 () Option!7803)

(assert (=> b!3593658 (= e!2223691 (ite (and ((_ is None!7802) lt!1233328) ((_ is None!7802) lt!1233331)) None!7802 (ite ((_ is None!7802) lt!1233331) lt!1233328 (ite ((_ is None!7802) lt!1233328) lt!1233331 (ite (>= (size!28786 (_1!21968 (v!37484 lt!1233328))) (size!28786 (_1!21968 (v!37484 lt!1233331)))) lt!1233328 lt!1233331)))))))

(assert (=> b!3593658 (= lt!1233328 call!260060)))

(assert (=> b!3593658 (= lt!1233331 (maxPrefix!2709 thiss!23823 (t!291282 rules!3307) lt!1233105))))

(assert (= (and d!1059212 c!622218) b!3593654))

(assert (= (and d!1059212 (not c!622218)) b!3593658))

(assert (= (or b!3593654 b!3593658) bm!260055))

(assert (= (and d!1059212 (not res!1451292)) b!3593657))

(assert (= (and b!3593657 res!1451296) b!3593652))

(assert (= (and b!3593652 res!1451291) b!3593651))

(assert (= (and b!3593651 res!1451295) b!3593653))

(assert (= (and b!3593653 res!1451290) b!3593650))

(assert (= (and b!3593650 res!1451293) b!3593656))

(assert (= (and b!3593656 res!1451294) b!3593655))

(declare-fun m!4088345 () Bool)

(assert (=> b!3593651 m!4088345))

(declare-fun m!4088347 () Bool)

(assert (=> b!3593651 m!4088347))

(assert (=> b!3593651 m!4088171))

(assert (=> b!3593652 m!4088345))

(declare-fun m!4088349 () Bool)

(assert (=> b!3593652 m!4088349))

(assert (=> b!3593652 m!4088349))

(declare-fun m!4088351 () Bool)

(assert (=> b!3593652 m!4088351))

(assert (=> b!3593656 m!4088345))

(assert (=> b!3593656 m!4088349))

(assert (=> b!3593656 m!4088349))

(assert (=> b!3593656 m!4088351))

(assert (=> b!3593656 m!4088351))

(declare-fun m!4088353 () Bool)

(assert (=> b!3593656 m!4088353))

(declare-fun m!4088355 () Bool)

(assert (=> b!3593657 m!4088355))

(assert (=> b!3593650 m!4088345))

(declare-fun m!4088357 () Bool)

(assert (=> b!3593650 m!4088357))

(assert (=> b!3593650 m!4088357))

(declare-fun m!4088359 () Bool)

(assert (=> b!3593650 m!4088359))

(assert (=> b!3593653 m!4088345))

(assert (=> b!3593653 m!4088349))

(assert (=> b!3593653 m!4088349))

(assert (=> b!3593653 m!4088351))

(assert (=> b!3593653 m!4088351))

(declare-fun m!4088361 () Bool)

(assert (=> b!3593653 m!4088361))

(declare-fun m!4088363 () Bool)

(assert (=> b!3593658 m!4088363))

(assert (=> b!3593655 m!4088345))

(declare-fun m!4088371 () Bool)

(assert (=> b!3593655 m!4088371))

(declare-fun m!4088373 () Bool)

(assert (=> d!1059212 m!4088373))

(declare-fun m!4088375 () Bool)

(assert (=> d!1059212 m!4088375))

(declare-fun m!4088377 () Bool)

(assert (=> d!1059212 m!4088377))

(assert (=> d!1059212 m!4087975))

(declare-fun m!4088379 () Bool)

(assert (=> bm!260055 m!4088379))

(assert (=> b!3593086 d!1059212))

(declare-fun b!3593702 () Bool)

(declare-fun res!1451315 () Bool)

(declare-fun e!2223714 () Bool)

(assert (=> b!3593702 (=> (not res!1451315) (not e!2223714))))

(assert (=> b!3593702 (= res!1451315 (= (head!7514 lt!1233089) (head!7514 (++!9402 lt!1233089 (_2!21968 lt!1233101)))))))

(declare-fun b!3593703 () Bool)

(assert (=> b!3593703 (= e!2223714 (isPrefix!2949 (tail!5567 lt!1233089) (tail!5567 (++!9402 lt!1233089 (_2!21968 lt!1233101)))))))

(declare-fun b!3593701 () Bool)

(declare-fun e!2223715 () Bool)

(assert (=> b!3593701 (= e!2223715 e!2223714)))

(declare-fun res!1451316 () Bool)

(assert (=> b!3593701 (=> (not res!1451316) (not e!2223714))))

(assert (=> b!3593701 (= res!1451316 (not ((_ is Nil!37786) (++!9402 lt!1233089 (_2!21968 lt!1233101)))))))

(declare-fun b!3593704 () Bool)

(declare-fun e!2223716 () Bool)

(assert (=> b!3593704 (= e!2223716 (>= (size!28788 (++!9402 lt!1233089 (_2!21968 lt!1233101))) (size!28788 lt!1233089)))))

(declare-fun d!1059222 () Bool)

(assert (=> d!1059222 e!2223716))

(declare-fun res!1451318 () Bool)

(assert (=> d!1059222 (=> res!1451318 e!2223716)))

(declare-fun lt!1233339 () Bool)

(assert (=> d!1059222 (= res!1451318 (not lt!1233339))))

(assert (=> d!1059222 (= lt!1233339 e!2223715)))

(declare-fun res!1451317 () Bool)

(assert (=> d!1059222 (=> res!1451317 e!2223715)))

(assert (=> d!1059222 (= res!1451317 ((_ is Nil!37786) lt!1233089))))

(assert (=> d!1059222 (= (isPrefix!2949 lt!1233089 (++!9402 lt!1233089 (_2!21968 lt!1233101))) lt!1233339)))

(assert (= (and d!1059222 (not res!1451317)) b!3593701))

(assert (= (and b!3593701 res!1451316) b!3593702))

(assert (= (and b!3593702 res!1451315) b!3593703))

(assert (= (and d!1059222 (not res!1451318)) b!3593704))

(assert (=> b!3593702 m!4088143))

(assert (=> b!3593702 m!4087699))

(declare-fun m!4088405 () Bool)

(assert (=> b!3593702 m!4088405))

(assert (=> b!3593703 m!4088145))

(assert (=> b!3593703 m!4087699))

(declare-fun m!4088407 () Bool)

(assert (=> b!3593703 m!4088407))

(assert (=> b!3593703 m!4088145))

(assert (=> b!3593703 m!4088407))

(declare-fun m!4088409 () Bool)

(assert (=> b!3593703 m!4088409))

(assert (=> b!3593704 m!4087699))

(declare-fun m!4088411 () Bool)

(assert (=> b!3593704 m!4088411))

(assert (=> b!3593704 m!4087625))

(assert (=> b!3593086 d!1059222))

(declare-fun b!3593714 () Bool)

(declare-fun res!1451319 () Bool)

(declare-fun e!2223720 () Bool)

(assert (=> b!3593714 (=> (not res!1451319) (not e!2223720))))

(assert (=> b!3593714 (= res!1451319 (= (head!7514 lt!1233091) (head!7514 lt!1233105)))))

(declare-fun b!3593715 () Bool)

(assert (=> b!3593715 (= e!2223720 (isPrefix!2949 (tail!5567 lt!1233091) (tail!5567 lt!1233105)))))

(declare-fun b!3593713 () Bool)

(declare-fun e!2223721 () Bool)

(assert (=> b!3593713 (= e!2223721 e!2223720)))

(declare-fun res!1451320 () Bool)

(assert (=> b!3593713 (=> (not res!1451320) (not e!2223720))))

(assert (=> b!3593713 (= res!1451320 (not ((_ is Nil!37786) lt!1233105)))))

(declare-fun b!3593716 () Bool)

(declare-fun e!2223722 () Bool)

(assert (=> b!3593716 (= e!2223722 (>= (size!28788 lt!1233105) (size!28788 lt!1233091)))))

(declare-fun d!1059230 () Bool)

(assert (=> d!1059230 e!2223722))

(declare-fun res!1451322 () Bool)

(assert (=> d!1059230 (=> res!1451322 e!2223722)))

(declare-fun lt!1233340 () Bool)

(assert (=> d!1059230 (= res!1451322 (not lt!1233340))))

(assert (=> d!1059230 (= lt!1233340 e!2223721)))

(declare-fun res!1451321 () Bool)

(assert (=> d!1059230 (=> res!1451321 e!2223721)))

(assert (=> d!1059230 (= res!1451321 ((_ is Nil!37786) lt!1233091))))

(assert (=> d!1059230 (= (isPrefix!2949 lt!1233091 lt!1233105) lt!1233340)))

(assert (= (and d!1059230 (not res!1451321)) b!3593713))

(assert (= (and b!3593713 res!1451320) b!3593714))

(assert (= (and b!3593714 res!1451319) b!3593715))

(assert (= (and d!1059230 (not res!1451322)) b!3593716))

(assert (=> b!3593714 m!4087809))

(declare-fun m!4088413 () Bool)

(assert (=> b!3593714 m!4088413))

(assert (=> b!3593715 m!4087811))

(assert (=> b!3593715 m!4088275))

(assert (=> b!3593715 m!4087811))

(assert (=> b!3593715 m!4088275))

(declare-fun m!4088415 () Bool)

(assert (=> b!3593715 m!4088415))

(assert (=> b!3593716 m!4088171))

(assert (=> b!3593716 m!4087949))

(assert (=> b!3593086 d!1059230))

(declare-fun d!1059232 () Bool)

(assert (=> d!1059232 (= (list!13902 lt!1233096) (list!13904 (c!622113 lt!1233096)))))

(declare-fun bs!570325 () Bool)

(assert (= bs!570325 d!1059232))

(declare-fun m!4088417 () Bool)

(assert (=> bs!570325 m!4088417))

(assert (=> b!3593086 d!1059232))

(declare-fun b!3593754 () Bool)

(declare-fun e!2223751 () Option!7802)

(assert (=> b!3593754 (= e!2223751 None!7801)))

(declare-fun d!1059234 () Bool)

(declare-fun e!2223750 () Bool)

(assert (=> d!1059234 e!2223750))

(declare-fun res!1451327 () Bool)

(assert (=> d!1059234 (=> res!1451327 e!2223750)))

(declare-fun lt!1233347 () Option!7802)

(declare-fun isEmpty!22279 (Option!7802) Bool)

(assert (=> d!1059234 (= res!1451327 (isEmpty!22279 lt!1233347))))

(declare-fun e!2223749 () Option!7802)

(assert (=> d!1059234 (= lt!1233347 e!2223749)))

(declare-fun c!622230 () Bool)

(assert (=> d!1059234 (= c!622230 (and ((_ is Cons!37787) rules!3307) (= (tag!6262 (h!43207 rules!3307)) (tag!6262 (rule!8306 (_1!21968 lt!1233101))))))))

(assert (=> d!1059234 (rulesInvariant!4572 thiss!23823 rules!3307)))

(assert (=> d!1059234 (= (getRuleFromTag!1192 thiss!23823 rules!3307 (tag!6262 (rule!8306 (_1!21968 lt!1233101)))) lt!1233347)))

(declare-fun b!3593755 () Bool)

(declare-fun e!2223748 () Bool)

(assert (=> b!3593755 (= e!2223748 (= (tag!6262 (get!12205 lt!1233347)) (tag!6262 (rule!8306 (_1!21968 lt!1233101)))))))

(declare-fun b!3593756 () Bool)

(assert (=> b!3593756 (= e!2223749 (Some!7801 (h!43207 rules!3307)))))

(declare-fun b!3593757 () Bool)

(assert (=> b!3593757 (= e!2223749 e!2223751)))

(declare-fun c!622231 () Bool)

(assert (=> b!3593757 (= c!622231 (and ((_ is Cons!37787) rules!3307) (not (= (tag!6262 (h!43207 rules!3307)) (tag!6262 (rule!8306 (_1!21968 lt!1233101)))))))))

(declare-fun b!3593758 () Bool)

(assert (=> b!3593758 (= e!2223750 e!2223748)))

(declare-fun res!1451328 () Bool)

(assert (=> b!3593758 (=> (not res!1451328) (not e!2223748))))

(assert (=> b!3593758 (= res!1451328 (contains!7235 rules!3307 (get!12205 lt!1233347)))))

(declare-fun b!3593759 () Bool)

(declare-fun lt!1233348 () Unit!53789)

(declare-fun lt!1233349 () Unit!53789)

(assert (=> b!3593759 (= lt!1233348 lt!1233349)))

(assert (=> b!3593759 (rulesInvariant!4572 thiss!23823 (t!291282 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!500 (LexerInterface!5175 Rule!10972 List!37911) Unit!53789)

(assert (=> b!3593759 (= lt!1233349 (lemmaInvariantOnRulesThenOnTail!500 thiss!23823 (h!43207 rules!3307) (t!291282 rules!3307)))))

(assert (=> b!3593759 (= e!2223751 (getRuleFromTag!1192 thiss!23823 (t!291282 rules!3307) (tag!6262 (rule!8306 (_1!21968 lt!1233101)))))))

(assert (= (and d!1059234 c!622230) b!3593756))

(assert (= (and d!1059234 (not c!622230)) b!3593757))

(assert (= (and b!3593757 c!622231) b!3593759))

(assert (= (and b!3593757 (not c!622231)) b!3593754))

(assert (= (and d!1059234 (not res!1451327)) b!3593758))

(assert (= (and b!3593758 res!1451328) b!3593755))

(declare-fun m!4088423 () Bool)

(assert (=> d!1059234 m!4088423))

(assert (=> d!1059234 m!4087601))

(declare-fun m!4088425 () Bool)

(assert (=> b!3593755 m!4088425))

(assert (=> b!3593758 m!4088425))

(assert (=> b!3593758 m!4088425))

(declare-fun m!4088427 () Bool)

(assert (=> b!3593758 m!4088427))

(declare-fun m!4088429 () Bool)

(assert (=> b!3593759 m!4088429))

(declare-fun m!4088431 () Bool)

(assert (=> b!3593759 m!4088431))

(declare-fun m!4088433 () Bool)

(assert (=> b!3593759 m!4088433))

(assert (=> b!3593086 d!1059234))

(declare-fun b!3593761 () Bool)

(declare-fun res!1451329 () Bool)

(declare-fun e!2223752 () Bool)

(assert (=> b!3593761 (=> (not res!1451329) (not e!2223752))))

(assert (=> b!3593761 (= res!1451329 (= (head!7514 lt!1233089) (head!7514 lt!1233105)))))

(declare-fun b!3593762 () Bool)

(assert (=> b!3593762 (= e!2223752 (isPrefix!2949 (tail!5567 lt!1233089) (tail!5567 lt!1233105)))))

(declare-fun b!3593760 () Bool)

(declare-fun e!2223753 () Bool)

(assert (=> b!3593760 (= e!2223753 e!2223752)))

(declare-fun res!1451330 () Bool)

(assert (=> b!3593760 (=> (not res!1451330) (not e!2223752))))

(assert (=> b!3593760 (= res!1451330 (not ((_ is Nil!37786) lt!1233105)))))

(declare-fun b!3593763 () Bool)

(declare-fun e!2223754 () Bool)

(assert (=> b!3593763 (= e!2223754 (>= (size!28788 lt!1233105) (size!28788 lt!1233089)))))

(declare-fun d!1059236 () Bool)

(assert (=> d!1059236 e!2223754))

(declare-fun res!1451332 () Bool)

(assert (=> d!1059236 (=> res!1451332 e!2223754)))

(declare-fun lt!1233350 () Bool)

(assert (=> d!1059236 (= res!1451332 (not lt!1233350))))

(assert (=> d!1059236 (= lt!1233350 e!2223753)))

(declare-fun res!1451331 () Bool)

(assert (=> d!1059236 (=> res!1451331 e!2223753)))

(assert (=> d!1059236 (= res!1451331 ((_ is Nil!37786) lt!1233089))))

(assert (=> d!1059236 (= (isPrefix!2949 lt!1233089 lt!1233105) lt!1233350)))

(assert (= (and d!1059236 (not res!1451331)) b!3593760))

(assert (= (and b!3593760 res!1451330) b!3593761))

(assert (= (and b!3593761 res!1451329) b!3593762))

(assert (= (and d!1059236 (not res!1451332)) b!3593763))

(assert (=> b!3593761 m!4088143))

(assert (=> b!3593761 m!4088413))

(assert (=> b!3593762 m!4088145))

(assert (=> b!3593762 m!4088275))

(assert (=> b!3593762 m!4088145))

(assert (=> b!3593762 m!4088275))

(declare-fun m!4088435 () Bool)

(assert (=> b!3593762 m!4088435))

(assert (=> b!3593763 m!4088171))

(assert (=> b!3593763 m!4087625))

(assert (=> b!3593086 d!1059236))

(declare-fun d!1059238 () Bool)

(declare-fun e!2223759 () Bool)

(assert (=> d!1059238 e!2223759))

(declare-fun res!1451337 () Bool)

(assert (=> d!1059238 (=> (not res!1451337) (not e!2223759))))

(declare-fun lt!1233353 () List!37910)

(assert (=> d!1059238 (= res!1451337 (= (content!5377 lt!1233353) ((_ map or) (content!5377 lt!1233091) (content!5377 suffix!1395))))))

(declare-fun e!2223760 () List!37910)

(assert (=> d!1059238 (= lt!1233353 e!2223760)))

(declare-fun c!622234 () Bool)

(assert (=> d!1059238 (= c!622234 ((_ is Nil!37786) lt!1233091))))

(assert (=> d!1059238 (= (++!9402 lt!1233091 suffix!1395) lt!1233353)))

(declare-fun b!3593772 () Bool)

(assert (=> b!3593772 (= e!2223760 suffix!1395)))

(declare-fun b!3593775 () Bool)

(assert (=> b!3593775 (= e!2223759 (or (not (= suffix!1395 Nil!37786)) (= lt!1233353 lt!1233091)))))

(declare-fun b!3593774 () Bool)

(declare-fun res!1451338 () Bool)

(assert (=> b!3593774 (=> (not res!1451338) (not e!2223759))))

(assert (=> b!3593774 (= res!1451338 (= (size!28788 lt!1233353) (+ (size!28788 lt!1233091) (size!28788 suffix!1395))))))

(declare-fun b!3593773 () Bool)

(assert (=> b!3593773 (= e!2223760 (Cons!37786 (h!43206 lt!1233091) (++!9402 (t!291281 lt!1233091) suffix!1395)))))

(assert (= (and d!1059238 c!622234) b!3593772))

(assert (= (and d!1059238 (not c!622234)) b!3593773))

(assert (= (and d!1059238 res!1451337) b!3593774))

(assert (= (and b!3593774 res!1451338) b!3593775))

(declare-fun m!4088437 () Bool)

(assert (=> d!1059238 m!4088437))

(declare-fun m!4088439 () Bool)

(assert (=> d!1059238 m!4088439))

(declare-fun m!4088441 () Bool)

(assert (=> d!1059238 m!4088441))

(declare-fun m!4088443 () Bool)

(assert (=> b!3593774 m!4088443))

(assert (=> b!3593774 m!4087949))

(declare-fun m!4088445 () Bool)

(assert (=> b!3593774 m!4088445))

(declare-fun m!4088447 () Bool)

(assert (=> b!3593773 m!4088447))

(assert (=> b!3593086 d!1059238))

(declare-fun d!1059240 () Bool)

(assert (=> d!1059240 (= (isDefined!6034 lt!1233092) (not (isEmpty!22279 lt!1233092)))))

(declare-fun bs!570326 () Bool)

(assert (= bs!570326 d!1059240))

(declare-fun m!4088449 () Bool)

(assert (=> bs!570326 m!4088449))

(assert (=> b!3593086 d!1059240))

(declare-fun d!1059242 () Bool)

(assert (=> d!1059242 (isPrefix!2949 lt!1233089 (++!9402 lt!1233089 (_2!21968 lt!1233101)))))

(declare-fun lt!1233356 () Unit!53789)

(declare-fun choose!20915 (List!37910 List!37910) Unit!53789)

(assert (=> d!1059242 (= lt!1233356 (choose!20915 lt!1233089 (_2!21968 lt!1233101)))))

(assert (=> d!1059242 (= (lemmaConcatTwoListThenFirstIsPrefix!1870 lt!1233089 (_2!21968 lt!1233101)) lt!1233356)))

(declare-fun bs!570327 () Bool)

(assert (= bs!570327 d!1059242))

(assert (=> bs!570327 m!4087699))

(assert (=> bs!570327 m!4087699))

(assert (=> bs!570327 m!4087701))

(declare-fun m!4088451 () Bool)

(assert (=> bs!570327 m!4088451))

(assert (=> b!3593086 d!1059242))

(declare-fun d!1059244 () Bool)

(declare-fun e!2223761 () Bool)

(assert (=> d!1059244 e!2223761))

(declare-fun res!1451339 () Bool)

(assert (=> d!1059244 (=> (not res!1451339) (not e!2223761))))

(declare-fun lt!1233357 () List!37910)

(assert (=> d!1059244 (= res!1451339 (= (content!5377 lt!1233357) ((_ map or) (content!5377 lt!1233089) (content!5377 (_2!21968 lt!1233101)))))))

(declare-fun e!2223762 () List!37910)

(assert (=> d!1059244 (= lt!1233357 e!2223762)))

(declare-fun c!622235 () Bool)

(assert (=> d!1059244 (= c!622235 ((_ is Nil!37786) lt!1233089))))

(assert (=> d!1059244 (= (++!9402 lt!1233089 (_2!21968 lt!1233101)) lt!1233357)))

(declare-fun b!3593776 () Bool)

(assert (=> b!3593776 (= e!2223762 (_2!21968 lt!1233101))))

(declare-fun b!3593779 () Bool)

(assert (=> b!3593779 (= e!2223761 (or (not (= (_2!21968 lt!1233101) Nil!37786)) (= lt!1233357 lt!1233089)))))

(declare-fun b!3593778 () Bool)

(declare-fun res!1451340 () Bool)

(assert (=> b!3593778 (=> (not res!1451340) (not e!2223761))))

(assert (=> b!3593778 (= res!1451340 (= (size!28788 lt!1233357) (+ (size!28788 lt!1233089) (size!28788 (_2!21968 lt!1233101)))))))

(declare-fun b!3593777 () Bool)

(assert (=> b!3593777 (= e!2223762 (Cons!37786 (h!43206 lt!1233089) (++!9402 (t!291281 lt!1233089) (_2!21968 lt!1233101))))))

(assert (= (and d!1059244 c!622235) b!3593776))

(assert (= (and d!1059244 (not c!622235)) b!3593777))

(assert (= (and d!1059244 res!1451339) b!3593778))

(assert (= (and b!3593778 res!1451340) b!3593779))

(declare-fun m!4088453 () Bool)

(assert (=> d!1059244 m!4088453))

(declare-fun m!4088455 () Bool)

(assert (=> d!1059244 m!4088455))

(declare-fun m!4088457 () Bool)

(assert (=> d!1059244 m!4088457))

(declare-fun m!4088459 () Bool)

(assert (=> b!3593778 m!4088459))

(assert (=> b!3593778 m!4087625))

(declare-fun m!4088461 () Bool)

(assert (=> b!3593778 m!4088461))

(declare-fun m!4088463 () Bool)

(assert (=> b!3593777 m!4088463))

(assert (=> b!3593086 d!1059244))

(declare-fun d!1059246 () Bool)

(declare-fun lt!1233358 () BalanceConc!22608)

(assert (=> d!1059246 (= (list!13902 lt!1233358) (originalCharacters!6300 (_1!21968 lt!1233101)))))

(assert (=> d!1059246 (= lt!1233358 (dynLambda!16260 (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) (value!179661 (_1!21968 lt!1233101))))))

(assert (=> d!1059246 (= (charsOf!3600 (_1!21968 lt!1233101)) lt!1233358)))

(declare-fun b_lambda!106197 () Bool)

(assert (=> (not b_lambda!106197) (not d!1059246)))

(declare-fun tb!205237 () Bool)

(declare-fun t!291384 () Bool)

(assert (=> (and b!3593079 (= (toChars!7729 (transformation!5586 anOtherTypeRule!33)) (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291384) tb!205237))

(declare-fun b!3593780 () Bool)

(declare-fun e!2223763 () Bool)

(declare-fun tp!1099854 () Bool)

(assert (=> b!3593780 (= e!2223763 (and (inv!51136 (c!622113 (dynLambda!16260 (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) (value!179661 (_1!21968 lt!1233101))))) tp!1099854))))

(declare-fun result!250212 () Bool)

(assert (=> tb!205237 (= result!250212 (and (inv!51137 (dynLambda!16260 (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101)))) (value!179661 (_1!21968 lt!1233101)))) e!2223763))))

(assert (= tb!205237 b!3593780))

(declare-fun m!4088465 () Bool)

(assert (=> b!3593780 m!4088465))

(declare-fun m!4088467 () Bool)

(assert (=> tb!205237 m!4088467))

(assert (=> d!1059246 t!291384))

(declare-fun b_and!260255 () Bool)

(assert (= b_and!260195 (and (=> t!291384 result!250212) b_and!260255)))

(declare-fun t!291386 () Bool)

(declare-fun tb!205239 () Bool)

(assert (=> (and b!3593099 (= (toChars!7729 (transformation!5586 (h!43207 rules!3307))) (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291386) tb!205239))

(declare-fun result!250214 () Bool)

(assert (= result!250214 result!250212))

(assert (=> d!1059246 t!291386))

(declare-fun b_and!260257 () Bool)

(assert (= b_and!260197 (and (=> t!291386 result!250214) b_and!260257)))

(declare-fun t!291388 () Bool)

(declare-fun tb!205241 () Bool)

(assert (=> (and b!3593087 (= (toChars!7729 (transformation!5586 rule!403)) (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291388) tb!205241))

(declare-fun result!250216 () Bool)

(assert (= result!250216 result!250212))

(assert (=> d!1059246 t!291388))

(declare-fun b_and!260259 () Bool)

(assert (= b_and!260199 (and (=> t!291388 result!250216) b_and!260259)))

(declare-fun t!291390 () Bool)

(declare-fun tb!205243 () Bool)

(assert (=> (and b!3593095 (= (toChars!7729 (transformation!5586 (rule!8306 token!511))) (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291390) tb!205243))

(declare-fun result!250218 () Bool)

(assert (= result!250218 result!250212))

(assert (=> d!1059246 t!291390))

(declare-fun b_and!260261 () Bool)

(assert (= b_and!260201 (and (=> t!291390 result!250218) b_and!260261)))

(declare-fun m!4088469 () Bool)

(assert (=> d!1059246 m!4088469))

(declare-fun m!4088471 () Bool)

(assert (=> d!1059246 m!4088471))

(assert (=> b!3593086 d!1059246))

(declare-fun lt!1233398 () Token!10538)

(declare-fun b!3593790 () Bool)

(declare-fun e!2223769 () Bool)

(assert (=> b!3593790 (= e!2223769 (= (rule!8306 lt!1233398) (get!12205 (getRuleFromTag!1192 thiss!23823 rules!3307 (tag!6262 (rule!8306 lt!1233398))))))))

(declare-fun b!3593789 () Bool)

(declare-fun res!1451345 () Bool)

(assert (=> b!3593789 (=> (not res!1451345) (not e!2223769))))

(assert (=> b!3593789 (= res!1451345 (matchR!4914 (regex!5586 (get!12205 (getRuleFromTag!1192 thiss!23823 rules!3307 (tag!6262 (rule!8306 lt!1233398))))) (list!13902 (charsOf!3600 lt!1233398))))))

(declare-fun d!1059248 () Bool)

(assert (=> d!1059248 (isDefined!6035 (maxPrefix!2709 thiss!23823 rules!3307 (++!9402 lt!1233091 suffix!1395)))))

(declare-fun lt!1233399 () Unit!53789)

(declare-fun e!2223768 () Unit!53789)

(assert (=> d!1059248 (= lt!1233399 e!2223768)))

(declare-fun c!622238 () Bool)

(assert (=> d!1059248 (= c!622238 (isEmpty!22277 (maxPrefix!2709 thiss!23823 rules!3307 (++!9402 lt!1233091 suffix!1395))))))

(declare-fun lt!1233393 () Unit!53789)

(declare-fun lt!1233400 () Unit!53789)

(assert (=> d!1059248 (= lt!1233393 lt!1233400)))

(assert (=> d!1059248 e!2223769))

(declare-fun res!1451346 () Bool)

(assert (=> d!1059248 (=> (not res!1451346) (not e!2223769))))

(assert (=> d!1059248 (= res!1451346 (isDefined!6034 (getRuleFromTag!1192 thiss!23823 rules!3307 (tag!6262 (rule!8306 lt!1233398)))))))

(assert (=> d!1059248 (= lt!1233400 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1192 thiss!23823 rules!3307 lt!1233091 lt!1233398))))

(declare-fun lt!1233404 () Unit!53789)

(declare-fun lt!1233394 () Unit!53789)

(assert (=> d!1059248 (= lt!1233404 lt!1233394)))

(declare-fun lt!1233408 () List!37910)

(assert (=> d!1059248 (isPrefix!2949 lt!1233408 (++!9402 lt!1233091 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!420 (List!37910 List!37910 List!37910) Unit!53789)

(assert (=> d!1059248 (= lt!1233394 (lemmaPrefixStaysPrefixWhenAddingToSuffix!420 lt!1233408 lt!1233091 suffix!1395))))

(assert (=> d!1059248 (= lt!1233408 (list!13902 (charsOf!3600 lt!1233398)))))

(declare-fun lt!1233397 () Unit!53789)

(declare-fun lt!1233403 () Unit!53789)

(assert (=> d!1059248 (= lt!1233397 lt!1233403)))

(declare-fun lt!1233396 () List!37910)

(declare-fun lt!1233409 () List!37910)

(assert (=> d!1059248 (isPrefix!2949 lt!1233396 (++!9402 lt!1233396 lt!1233409))))

(assert (=> d!1059248 (= lt!1233403 (lemmaConcatTwoListThenFirstIsPrefix!1870 lt!1233396 lt!1233409))))

(assert (=> d!1059248 (= lt!1233409 (_2!21968 (get!12206 (maxPrefix!2709 thiss!23823 rules!3307 lt!1233091))))))

(assert (=> d!1059248 (= lt!1233396 (list!13902 (charsOf!3600 lt!1233398)))))

(declare-datatypes ((List!37915 0))(
  ( (Nil!37791) (Cons!37791 (h!43211 Token!10538) (t!291406 List!37915)) )
))
(declare-fun head!7516 (List!37915) Token!10538)

(declare-datatypes ((IArray!23003 0))(
  ( (IArray!23004 (innerList!11559 List!37915)) )
))
(declare-datatypes ((Conc!11499 0))(
  ( (Node!11499 (left!29526 Conc!11499) (right!29856 Conc!11499) (csize!23228 Int) (cheight!11710 Int)) (Leaf!17903 (xs!14701 IArray!23003) (csize!23229 Int)) (Empty!11499) )
))
(declare-datatypes ((BalanceConc!22612 0))(
  ( (BalanceConc!22613 (c!622243 Conc!11499)) )
))
(declare-fun list!13906 (BalanceConc!22612) List!37915)

(declare-datatypes ((tuple2!37676 0))(
  ( (tuple2!37677 (_1!21972 BalanceConc!22612) (_2!21972 BalanceConc!22608)) )
))
(declare-fun lex!2452 (LexerInterface!5175 List!37911 BalanceConc!22608) tuple2!37676)

(assert (=> d!1059248 (= lt!1233398 (head!7516 (list!13906 (_1!21972 (lex!2452 thiss!23823 rules!3307 (seqFromList!4139 lt!1233091))))))))

(assert (=> d!1059248 (not (isEmpty!22274 rules!3307))))

(assert (=> d!1059248 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!855 thiss!23823 rules!3307 lt!1233091 suffix!1395) lt!1233399)))

(declare-fun b!3593791 () Bool)

(declare-fun Unit!53795 () Unit!53789)

(assert (=> b!3593791 (= e!2223768 Unit!53795)))

(declare-fun lt!1233401 () List!37910)

(assert (=> b!3593791 (= lt!1233401 (++!9402 lt!1233091 suffix!1395))))

(declare-fun lt!1233405 () Unit!53789)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!456 (LexerInterface!5175 Rule!10972 List!37911 List!37910) Unit!53789)

(assert (=> b!3593791 (= lt!1233405 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!456 thiss!23823 (rule!8306 lt!1233398) rules!3307 lt!1233401))))

(assert (=> b!3593791 (isEmpty!22277 (maxPrefixOneRule!1853 thiss!23823 (rule!8306 lt!1233398) lt!1233401))))

(declare-fun lt!1233395 () Unit!53789)

(assert (=> b!3593791 (= lt!1233395 lt!1233405)))

(declare-fun lt!1233406 () List!37910)

(assert (=> b!3593791 (= lt!1233406 (list!13902 (charsOf!3600 lt!1233398)))))

(declare-fun lt!1233407 () Unit!53789)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!444 (LexerInterface!5175 Rule!10972 List!37910 List!37910) Unit!53789)

(assert (=> b!3593791 (= lt!1233407 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!444 thiss!23823 (rule!8306 lt!1233398) lt!1233406 (++!9402 lt!1233091 suffix!1395)))))

(assert (=> b!3593791 (not (matchR!4914 (regex!5586 (rule!8306 lt!1233398)) lt!1233406))))

(declare-fun lt!1233402 () Unit!53789)

(assert (=> b!3593791 (= lt!1233402 lt!1233407)))

(assert (=> b!3593791 false))

(declare-fun b!3593792 () Bool)

(declare-fun Unit!53796 () Unit!53789)

(assert (=> b!3593792 (= e!2223768 Unit!53796)))

(assert (= (and d!1059248 res!1451346) b!3593789))

(assert (= (and b!3593789 res!1451345) b!3593790))

(assert (= (and d!1059248 c!622238) b!3593791))

(assert (= (and d!1059248 (not c!622238)) b!3593792))

(declare-fun m!4088473 () Bool)

(assert (=> b!3593790 m!4088473))

(assert (=> b!3593790 m!4088473))

(declare-fun m!4088475 () Bool)

(assert (=> b!3593790 m!4088475))

(declare-fun m!4088477 () Bool)

(assert (=> b!3593789 m!4088477))

(declare-fun m!4088479 () Bool)

(assert (=> b!3593789 m!4088479))

(assert (=> b!3593789 m!4088473))

(declare-fun m!4088481 () Bool)

(assert (=> b!3593789 m!4088481))

(assert (=> b!3593789 m!4088477))

(assert (=> b!3593789 m!4088473))

(assert (=> b!3593789 m!4088475))

(assert (=> b!3593789 m!4088481))

(declare-fun m!4088483 () Bool)

(assert (=> d!1059248 m!4088483))

(declare-fun m!4088485 () Bool)

(assert (=> d!1059248 m!4088485))

(declare-fun m!4088487 () Bool)

(assert (=> d!1059248 m!4088487))

(declare-fun m!4088489 () Bool)

(assert (=> d!1059248 m!4088489))

(declare-fun m!4088491 () Bool)

(assert (=> d!1059248 m!4088491))

(assert (=> d!1059248 m!4087705))

(assert (=> d!1059248 m!4087649))

(declare-fun m!4088493 () Bool)

(assert (=> d!1059248 m!4088493))

(assert (=> d!1059248 m!4088485))

(declare-fun m!4088495 () Bool)

(assert (=> d!1059248 m!4088495))

(assert (=> d!1059248 m!4087705))

(declare-fun m!4088497 () Bool)

(assert (=> d!1059248 m!4088497))

(assert (=> d!1059248 m!4088481))

(assert (=> d!1059248 m!4087669))

(assert (=> d!1059248 m!4088489))

(assert (=> d!1059248 m!4087705))

(declare-fun m!4088499 () Bool)

(assert (=> d!1059248 m!4088499))

(assert (=> d!1059248 m!4088499))

(declare-fun m!4088501 () Bool)

(assert (=> d!1059248 m!4088501))

(assert (=> d!1059248 m!4087649))

(declare-fun m!4088503 () Bool)

(assert (=> d!1059248 m!4088503))

(declare-fun m!4088505 () Bool)

(assert (=> d!1059248 m!4088505))

(assert (=> d!1059248 m!4088473))

(assert (=> d!1059248 m!4088473))

(declare-fun m!4088507 () Bool)

(assert (=> d!1059248 m!4088507))

(assert (=> d!1059248 m!4088487))

(declare-fun m!4088509 () Bool)

(assert (=> d!1059248 m!4088509))

(assert (=> d!1059248 m!4088481))

(assert (=> d!1059248 m!4088477))

(assert (=> d!1059248 m!4088499))

(declare-fun m!4088511 () Bool)

(assert (=> d!1059248 m!4088511))

(assert (=> b!3593791 m!4088481))

(declare-fun m!4088513 () Bool)

(assert (=> b!3593791 m!4088513))

(assert (=> b!3593791 m!4088481))

(assert (=> b!3593791 m!4088477))

(declare-fun m!4088515 () Bool)

(assert (=> b!3593791 m!4088515))

(assert (=> b!3593791 m!4087705))

(declare-fun m!4088517 () Bool)

(assert (=> b!3593791 m!4088517))

(assert (=> b!3593791 m!4088513))

(declare-fun m!4088519 () Bool)

(assert (=> b!3593791 m!4088519))

(assert (=> b!3593791 m!4087705))

(declare-fun m!4088521 () Bool)

(assert (=> b!3593791 m!4088521))

(assert (=> b!3593086 d!1059248))

(declare-fun d!1059250 () Bool)

(declare-fun e!2223772 () Bool)

(assert (=> d!1059250 e!2223772))

(declare-fun res!1451351 () Bool)

(assert (=> d!1059250 (=> (not res!1451351) (not e!2223772))))

(assert (=> d!1059250 (= res!1451351 (isDefined!6034 (getRuleFromTag!1192 thiss!23823 rules!3307 (tag!6262 (rule!8306 (_1!21968 lt!1233101))))))))

(declare-fun lt!1233412 () Unit!53789)

(declare-fun choose!20916 (LexerInterface!5175 List!37911 List!37910 Token!10538) Unit!53789)

(assert (=> d!1059250 (= lt!1233412 (choose!20916 thiss!23823 rules!3307 lt!1233105 (_1!21968 lt!1233101)))))

(assert (=> d!1059250 (rulesInvariant!4572 thiss!23823 rules!3307)))

(assert (=> d!1059250 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1192 thiss!23823 rules!3307 lt!1233105 (_1!21968 lt!1233101)) lt!1233412)))

(declare-fun b!3593797 () Bool)

(declare-fun res!1451352 () Bool)

(assert (=> b!3593797 (=> (not res!1451352) (not e!2223772))))

(assert (=> b!3593797 (= res!1451352 (matchR!4914 (regex!5586 (get!12205 (getRuleFromTag!1192 thiss!23823 rules!3307 (tag!6262 (rule!8306 (_1!21968 lt!1233101)))))) (list!13902 (charsOf!3600 (_1!21968 lt!1233101)))))))

(declare-fun b!3593798 () Bool)

(assert (=> b!3593798 (= e!2223772 (= (rule!8306 (_1!21968 lt!1233101)) (get!12205 (getRuleFromTag!1192 thiss!23823 rules!3307 (tag!6262 (rule!8306 (_1!21968 lt!1233101)))))))))

(assert (= (and d!1059250 res!1451351) b!3593797))

(assert (= (and b!3593797 res!1451352) b!3593798))

(assert (=> d!1059250 m!4087713))

(assert (=> d!1059250 m!4087713))

(declare-fun m!4088523 () Bool)

(assert (=> d!1059250 m!4088523))

(declare-fun m!4088525 () Bool)

(assert (=> d!1059250 m!4088525))

(assert (=> d!1059250 m!4087601))

(assert (=> b!3593797 m!4087655))

(assert (=> b!3593797 m!4087657))

(declare-fun m!4088527 () Bool)

(assert (=> b!3593797 m!4088527))

(assert (=> b!3593797 m!4087713))

(assert (=> b!3593797 m!4087713))

(declare-fun m!4088529 () Bool)

(assert (=> b!3593797 m!4088529))

(assert (=> b!3593797 m!4087655))

(assert (=> b!3593797 m!4087657))

(assert (=> b!3593798 m!4087713))

(assert (=> b!3593798 m!4087713))

(assert (=> b!3593798 m!4088529))

(assert (=> b!3593086 d!1059250))

(declare-fun d!1059252 () Bool)

(assert (=> d!1059252 (isPrefix!2949 lt!1233091 (++!9402 lt!1233091 suffix!1395))))

(declare-fun lt!1233413 () Unit!53789)

(assert (=> d!1059252 (= lt!1233413 (choose!20915 lt!1233091 suffix!1395))))

(assert (=> d!1059252 (= (lemmaConcatTwoListThenFirstIsPrefix!1870 lt!1233091 suffix!1395) lt!1233413)))

(declare-fun bs!570328 () Bool)

(assert (= bs!570328 d!1059252))

(assert (=> bs!570328 m!4087705))

(assert (=> bs!570328 m!4087705))

(declare-fun m!4088531 () Bool)

(assert (=> bs!570328 m!4088531))

(declare-fun m!4088533 () Bool)

(assert (=> bs!570328 m!4088533))

(assert (=> b!3593086 d!1059252))

(declare-fun d!1059254 () Bool)

(assert (=> d!1059254 (= (get!12206 lt!1233106) (v!37484 lt!1233106))))

(assert (=> b!3593086 d!1059254))

(declare-fun d!1059256 () Bool)

(assert (=> d!1059256 (= (inv!51129 (tag!6262 rule!403)) (= (mod (str.len (value!179660 (tag!6262 rule!403))) 2) 0))))

(assert (=> b!3593082 d!1059256))

(declare-fun d!1059258 () Bool)

(declare-fun res!1451353 () Bool)

(declare-fun e!2223773 () Bool)

(assert (=> d!1059258 (=> (not res!1451353) (not e!2223773))))

(assert (=> d!1059258 (= res!1451353 (semiInverseModEq!2367 (toChars!7729 (transformation!5586 rule!403)) (toValue!7870 (transformation!5586 rule!403))))))

(assert (=> d!1059258 (= (inv!51132 (transformation!5586 rule!403)) e!2223773)))

(declare-fun b!3593799 () Bool)

(assert (=> b!3593799 (= e!2223773 (equivClasses!2266 (toChars!7729 (transformation!5586 rule!403)) (toValue!7870 (transformation!5586 rule!403))))))

(assert (= (and d!1059258 res!1451353) b!3593799))

(declare-fun m!4088535 () Bool)

(assert (=> d!1059258 m!4088535))

(declare-fun m!4088537 () Bool)

(assert (=> b!3593799 m!4088537))

(assert (=> b!3593082 d!1059258))

(declare-fun d!1059260 () Bool)

(assert (=> d!1059260 (= (get!12206 lt!1233107) (v!37484 lt!1233107))))

(assert (=> b!3593104 d!1059260))

(declare-fun b!3593800 () Bool)

(declare-fun res!1451361 () Bool)

(declare-fun e!2223778 () Bool)

(assert (=> b!3593800 (=> (not res!1451361) (not e!2223778))))

(assert (=> b!3593800 (= res!1451361 (isEmpty!22275 (tail!5567 (list!13902 (charsOf!3600 (_1!21968 lt!1233101))))))))

(declare-fun b!3593801 () Bool)

(declare-fun e!2223779 () Bool)

(assert (=> b!3593801 (= e!2223779 (nullable!3569 (regex!5586 lt!1233094)))))

(declare-fun b!3593802 () Bool)

(declare-fun res!1451357 () Bool)

(declare-fun e!2223777 () Bool)

(assert (=> b!3593802 (=> res!1451357 e!2223777)))

(assert (=> b!3593802 (= res!1451357 (not (isEmpty!22275 (tail!5567 (list!13902 (charsOf!3600 (_1!21968 lt!1233101)))))))))

(declare-fun b!3593803 () Bool)

(assert (=> b!3593803 (= e!2223779 (matchR!4914 (derivativeStep!3118 (regex!5586 lt!1233094) (head!7514 (list!13902 (charsOf!3600 (_1!21968 lt!1233101))))) (tail!5567 (list!13902 (charsOf!3600 (_1!21968 lt!1233101))))))))

(declare-fun b!3593804 () Bool)

(assert (=> b!3593804 (= e!2223777 (not (= (head!7514 (list!13902 (charsOf!3600 (_1!21968 lt!1233101)))) (c!622112 (regex!5586 lt!1233094)))))))

(declare-fun bm!260061 () Bool)

(declare-fun call!260066 () Bool)

(assert (=> bm!260061 (= call!260066 (isEmpty!22275 (list!13902 (charsOf!3600 (_1!21968 lt!1233101)))))))

(declare-fun b!3593805 () Bool)

(declare-fun res!1451354 () Bool)

(declare-fun e!2223780 () Bool)

(assert (=> b!3593805 (=> res!1451354 e!2223780)))

(assert (=> b!3593805 (= res!1451354 e!2223778)))

(declare-fun res!1451358 () Bool)

(assert (=> b!3593805 (=> (not res!1451358) (not e!2223778))))

(declare-fun lt!1233414 () Bool)

(assert (=> b!3593805 (= res!1451358 lt!1233414)))

(declare-fun b!3593806 () Bool)

(assert (=> b!3593806 (= e!2223778 (= (head!7514 (list!13902 (charsOf!3600 (_1!21968 lt!1233101)))) (c!622112 (regex!5586 lt!1233094))))))

(declare-fun b!3593807 () Bool)

(declare-fun res!1451359 () Bool)

(assert (=> b!3593807 (=> (not res!1451359) (not e!2223778))))

(assert (=> b!3593807 (= res!1451359 (not call!260066))))

(declare-fun b!3593808 () Bool)

(declare-fun res!1451355 () Bool)

(assert (=> b!3593808 (=> res!1451355 e!2223780)))

(assert (=> b!3593808 (= res!1451355 (not ((_ is ElementMatch!10345) (regex!5586 lt!1233094))))))

(declare-fun e!2223774 () Bool)

(assert (=> b!3593808 (= e!2223774 e!2223780)))

(declare-fun b!3593810 () Bool)

(declare-fun e!2223776 () Bool)

(assert (=> b!3593810 (= e!2223780 e!2223776)))

(declare-fun res!1451356 () Bool)

(assert (=> b!3593810 (=> (not res!1451356) (not e!2223776))))

(assert (=> b!3593810 (= res!1451356 (not lt!1233414))))

(declare-fun b!3593811 () Bool)

(assert (=> b!3593811 (= e!2223774 (not lt!1233414))))

(declare-fun b!3593812 () Bool)

(declare-fun e!2223775 () Bool)

(assert (=> b!3593812 (= e!2223775 e!2223774)))

(declare-fun c!622239 () Bool)

(assert (=> b!3593812 (= c!622239 ((_ is EmptyLang!10345) (regex!5586 lt!1233094)))))

(declare-fun b!3593813 () Bool)

(assert (=> b!3593813 (= e!2223776 e!2223777)))

(declare-fun res!1451360 () Bool)

(assert (=> b!3593813 (=> res!1451360 e!2223777)))

(assert (=> b!3593813 (= res!1451360 call!260066)))

(declare-fun d!1059262 () Bool)

(assert (=> d!1059262 e!2223775))

(declare-fun c!622240 () Bool)

(assert (=> d!1059262 (= c!622240 ((_ is EmptyExpr!10345) (regex!5586 lt!1233094)))))

(assert (=> d!1059262 (= lt!1233414 e!2223779)))

(declare-fun c!622241 () Bool)

(assert (=> d!1059262 (= c!622241 (isEmpty!22275 (list!13902 (charsOf!3600 (_1!21968 lt!1233101)))))))

(assert (=> d!1059262 (validRegex!4725 (regex!5586 lt!1233094))))

(assert (=> d!1059262 (= (matchR!4914 (regex!5586 lt!1233094) (list!13902 (charsOf!3600 (_1!21968 lt!1233101)))) lt!1233414)))

(declare-fun b!3593809 () Bool)

(assert (=> b!3593809 (= e!2223775 (= lt!1233414 call!260066))))

(assert (= (and d!1059262 c!622241) b!3593801))

(assert (= (and d!1059262 (not c!622241)) b!3593803))

(assert (= (and d!1059262 c!622240) b!3593809))

(assert (= (and d!1059262 (not c!622240)) b!3593812))

(assert (= (and b!3593812 c!622239) b!3593811))

(assert (= (and b!3593812 (not c!622239)) b!3593808))

(assert (= (and b!3593808 (not res!1451355)) b!3593805))

(assert (= (and b!3593805 res!1451358) b!3593807))

(assert (= (and b!3593807 res!1451359) b!3593800))

(assert (= (and b!3593800 res!1451361) b!3593806))

(assert (= (and b!3593805 (not res!1451354)) b!3593810))

(assert (= (and b!3593810 res!1451356) b!3593813))

(assert (= (and b!3593813 (not res!1451360)) b!3593802))

(assert (= (and b!3593802 (not res!1451357)) b!3593804))

(assert (= (or b!3593809 b!3593807 b!3593813) bm!260061))

(assert (=> b!3593806 m!4087657))

(declare-fun m!4088539 () Bool)

(assert (=> b!3593806 m!4088539))

(assert (=> b!3593804 m!4087657))

(assert (=> b!3593804 m!4088539))

(assert (=> b!3593802 m!4087657))

(declare-fun m!4088541 () Bool)

(assert (=> b!3593802 m!4088541))

(assert (=> b!3593802 m!4088541))

(declare-fun m!4088543 () Bool)

(assert (=> b!3593802 m!4088543))

(assert (=> b!3593800 m!4087657))

(assert (=> b!3593800 m!4088541))

(assert (=> b!3593800 m!4088541))

(assert (=> b!3593800 m!4088543))

(assert (=> bm!260061 m!4087657))

(declare-fun m!4088545 () Bool)

(assert (=> bm!260061 m!4088545))

(assert (=> d!1059262 m!4087657))

(assert (=> d!1059262 m!4088545))

(declare-fun m!4088547 () Bool)

(assert (=> d!1059262 m!4088547))

(declare-fun m!4088549 () Bool)

(assert (=> b!3593801 m!4088549))

(assert (=> b!3593803 m!4087657))

(assert (=> b!3593803 m!4088539))

(assert (=> b!3593803 m!4088539))

(declare-fun m!4088551 () Bool)

(assert (=> b!3593803 m!4088551))

(assert (=> b!3593803 m!4087657))

(assert (=> b!3593803 m!4088541))

(assert (=> b!3593803 m!4088551))

(assert (=> b!3593803 m!4088541))

(declare-fun m!4088553 () Bool)

(assert (=> b!3593803 m!4088553))

(assert (=> b!3593083 d!1059262))

(declare-fun d!1059264 () Bool)

(assert (=> d!1059264 (= (list!13902 (charsOf!3600 (_1!21968 lt!1233101))) (list!13904 (c!622113 (charsOf!3600 (_1!21968 lt!1233101)))))))

(declare-fun bs!570329 () Bool)

(assert (= bs!570329 d!1059264))

(declare-fun m!4088555 () Bool)

(assert (=> bs!570329 m!4088555))

(assert (=> b!3593083 d!1059264))

(assert (=> b!3593083 d!1059246))

(declare-fun d!1059266 () Bool)

(assert (=> d!1059266 (= (get!12205 lt!1233092) (v!37483 lt!1233092))))

(assert (=> b!3593083 d!1059266))

(declare-fun d!1059268 () Bool)

(assert (=> d!1059268 (= (isEmpty!22275 (_2!21968 lt!1233090)) ((_ is Nil!37786) (_2!21968 lt!1233090)))))

(assert (=> b!3593105 d!1059268))

(declare-fun b!3593824 () Bool)

(declare-fun b_free!92805 () Bool)

(declare-fun b_next!93509 () Bool)

(assert (=> b!3593824 (= b_free!92805 (not b_next!93509))))

(declare-fun tb!205245 () Bool)

(declare-fun t!291393 () Bool)

(assert (=> (and b!3593824 (= (toValue!7870 (transformation!5586 (h!43207 (t!291282 rules!3307)))) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291393) tb!205245))

(declare-fun result!250222 () Bool)

(assert (= result!250222 result!250178))

(assert (=> d!1059168 t!291393))

(declare-fun t!291395 () Bool)

(declare-fun tb!205247 () Bool)

(assert (=> (and b!3593824 (= (toValue!7870 (transformation!5586 (h!43207 (t!291282 rules!3307)))) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291395) tb!205247))

(declare-fun result!250224 () Bool)

(assert (= result!250224 result!250160))

(assert (=> d!1059140 t!291395))

(declare-fun tb!205249 () Bool)

(declare-fun t!291397 () Bool)

(assert (=> (and b!3593824 (= (toValue!7870 (transformation!5586 (h!43207 (t!291282 rules!3307)))) (toValue!7870 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291397) tb!205249))

(declare-fun result!250226 () Bool)

(assert (= result!250226 result!250170))

(assert (=> d!1059140 t!291397))

(assert (=> d!1059136 t!291395))

(assert (=> d!1059110 t!291395))

(declare-fun tp!1099866 () Bool)

(declare-fun b_and!260263 () Bool)

(assert (=> b!3593824 (= tp!1099866 (and (=> t!291397 result!250226) (=> t!291393 result!250222) (=> t!291395 result!250224) b_and!260263))))

(declare-fun b_free!92807 () Bool)

(declare-fun b_next!93511 () Bool)

(assert (=> b!3593824 (= b_free!92807 (not b_next!93511))))

(declare-fun tb!205251 () Bool)

(declare-fun t!291399 () Bool)

(assert (=> (and b!3593824 (= (toChars!7729 (transformation!5586 (h!43207 (t!291282 rules!3307)))) (toChars!7729 (transformation!5586 (rule!8306 token!511)))) t!291399) tb!205251))

(declare-fun result!250228 () Bool)

(assert (= result!250228 result!250108))

(assert (=> b!3593310 t!291399))

(assert (=> d!1059100 t!291399))

(declare-fun tb!205253 () Bool)

(declare-fun t!291401 () Bool)

(assert (=> (and b!3593824 (= (toChars!7729 (transformation!5586 (h!43207 (t!291282 rules!3307)))) (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291401) tb!205253))

(declare-fun result!250230 () Bool)

(assert (= result!250230 result!250152))

(assert (=> d!1059110 t!291401))

(declare-fun tb!205255 () Bool)

(declare-fun t!291403 () Bool)

(assert (=> (and b!3593824 (= (toChars!7729 (transformation!5586 (h!43207 (t!291282 rules!3307)))) (toChars!7729 (transformation!5586 (rule!8306 (_1!21968 lt!1233101))))) t!291403) tb!205255))

(declare-fun result!250232 () Bool)

(assert (= result!250232 result!250212))

(assert (=> d!1059246 t!291403))

(declare-fun b_and!260265 () Bool)

(declare-fun tp!1099863 () Bool)

(assert (=> b!3593824 (= tp!1099863 (and (=> t!291399 result!250228) (=> t!291401 result!250230) (=> t!291403 result!250232) b_and!260265))))

(declare-fun e!2223792 () Bool)

(assert (=> b!3593824 (= e!2223792 (and tp!1099866 tp!1099863))))

(declare-fun b!3593823 () Bool)

(declare-fun tp!1099865 () Bool)

(declare-fun e!2223791 () Bool)

(assert (=> b!3593823 (= e!2223791 (and tp!1099865 (inv!51129 (tag!6262 (h!43207 (t!291282 rules!3307)))) (inv!51132 (transformation!5586 (h!43207 (t!291282 rules!3307)))) e!2223792))))

(declare-fun b!3593822 () Bool)

(declare-fun e!2223789 () Bool)

(declare-fun tp!1099864 () Bool)

(assert (=> b!3593822 (= e!2223789 (and e!2223791 tp!1099864))))

(assert (=> b!3593084 (= tp!1099798 e!2223789)))

(assert (= b!3593823 b!3593824))

(assert (= b!3593822 b!3593823))

(assert (= (and b!3593084 ((_ is Cons!37787) (t!291282 rules!3307))) b!3593822))

(declare-fun m!4088557 () Bool)

(assert (=> b!3593823 m!4088557))

(declare-fun m!4088559 () Bool)

(assert (=> b!3593823 m!4088559))

(declare-fun b!3593835 () Bool)

(declare-fun e!2223795 () Bool)

(assert (=> b!3593835 (= e!2223795 tp_is_empty!17773)))

(declare-fun b!3593836 () Bool)

(declare-fun tp!1099878 () Bool)

(declare-fun tp!1099877 () Bool)

(assert (=> b!3593836 (= e!2223795 (and tp!1099878 tp!1099877))))

(assert (=> b!3593096 (= tp!1099789 e!2223795)))

(declare-fun b!3593838 () Bool)

(declare-fun tp!1099880 () Bool)

(declare-fun tp!1099879 () Bool)

(assert (=> b!3593838 (= e!2223795 (and tp!1099880 tp!1099879))))

(declare-fun b!3593837 () Bool)

(declare-fun tp!1099881 () Bool)

(assert (=> b!3593837 (= e!2223795 tp!1099881)))

(assert (= (and b!3593096 ((_ is ElementMatch!10345) (regex!5586 (h!43207 rules!3307)))) b!3593835))

(assert (= (and b!3593096 ((_ is Concat!16162) (regex!5586 (h!43207 rules!3307)))) b!3593836))

(assert (= (and b!3593096 ((_ is Star!10345) (regex!5586 (h!43207 rules!3307)))) b!3593837))

(assert (= (and b!3593096 ((_ is Union!10345) (regex!5586 (h!43207 rules!3307)))) b!3593838))

(declare-fun b!3593839 () Bool)

(declare-fun e!2223796 () Bool)

(assert (=> b!3593839 (= e!2223796 tp_is_empty!17773)))

(declare-fun b!3593840 () Bool)

(declare-fun tp!1099883 () Bool)

(declare-fun tp!1099882 () Bool)

(assert (=> b!3593840 (= e!2223796 (and tp!1099883 tp!1099882))))

(assert (=> b!3593097 (= tp!1099791 e!2223796)))

(declare-fun b!3593842 () Bool)

(declare-fun tp!1099885 () Bool)

(declare-fun tp!1099884 () Bool)

(assert (=> b!3593842 (= e!2223796 (and tp!1099885 tp!1099884))))

(declare-fun b!3593841 () Bool)

(declare-fun tp!1099886 () Bool)

(assert (=> b!3593841 (= e!2223796 tp!1099886)))

(assert (= (and b!3593097 ((_ is ElementMatch!10345) (regex!5586 anOtherTypeRule!33))) b!3593839))

(assert (= (and b!3593097 ((_ is Concat!16162) (regex!5586 anOtherTypeRule!33))) b!3593840))

(assert (= (and b!3593097 ((_ is Star!10345) (regex!5586 anOtherTypeRule!33))) b!3593841))

(assert (= (and b!3593097 ((_ is Union!10345) (regex!5586 anOtherTypeRule!33))) b!3593842))

(declare-fun b!3593843 () Bool)

(declare-fun e!2223797 () Bool)

(assert (=> b!3593843 (= e!2223797 tp_is_empty!17773)))

(declare-fun b!3593844 () Bool)

(declare-fun tp!1099888 () Bool)

(declare-fun tp!1099887 () Bool)

(assert (=> b!3593844 (= e!2223797 (and tp!1099888 tp!1099887))))

(assert (=> b!3593081 (= tp!1099785 e!2223797)))

(declare-fun b!3593846 () Bool)

(declare-fun tp!1099890 () Bool)

(declare-fun tp!1099889 () Bool)

(assert (=> b!3593846 (= e!2223797 (and tp!1099890 tp!1099889))))

(declare-fun b!3593845 () Bool)

(declare-fun tp!1099891 () Bool)

(assert (=> b!3593845 (= e!2223797 tp!1099891)))

(assert (= (and b!3593081 ((_ is ElementMatch!10345) (regex!5586 (rule!8306 token!511)))) b!3593843))

(assert (= (and b!3593081 ((_ is Concat!16162) (regex!5586 (rule!8306 token!511)))) b!3593844))

(assert (= (and b!3593081 ((_ is Star!10345) (regex!5586 (rule!8306 token!511)))) b!3593845))

(assert (= (and b!3593081 ((_ is Union!10345) (regex!5586 (rule!8306 token!511)))) b!3593846))

(declare-fun b!3593851 () Bool)

(declare-fun e!2223800 () Bool)

(declare-fun tp!1099894 () Bool)

(assert (=> b!3593851 (= e!2223800 (and tp_is_empty!17773 tp!1099894))))

(assert (=> b!3593092 (= tp!1099796 e!2223800)))

(assert (= (and b!3593092 ((_ is Cons!37786) (originalCharacters!6300 token!511))) b!3593851))

(declare-fun b!3593852 () Bool)

(declare-fun e!2223801 () Bool)

(declare-fun tp!1099895 () Bool)

(assert (=> b!3593852 (= e!2223801 (and tp_is_empty!17773 tp!1099895))))

(assert (=> b!3593103 (= tp!1099793 e!2223801)))

(assert (= (and b!3593103 ((_ is Cons!37786) (t!291281 suffix!1395))) b!3593852))

(declare-fun b!3593853 () Bool)

(declare-fun e!2223802 () Bool)

(assert (=> b!3593853 (= e!2223802 tp_is_empty!17773)))

(declare-fun b!3593854 () Bool)

(declare-fun tp!1099897 () Bool)

(declare-fun tp!1099896 () Bool)

(assert (=> b!3593854 (= e!2223802 (and tp!1099897 tp!1099896))))

(assert (=> b!3593082 (= tp!1099797 e!2223802)))

(declare-fun b!3593856 () Bool)

(declare-fun tp!1099899 () Bool)

(declare-fun tp!1099898 () Bool)

(assert (=> b!3593856 (= e!2223802 (and tp!1099899 tp!1099898))))

(declare-fun b!3593855 () Bool)

(declare-fun tp!1099900 () Bool)

(assert (=> b!3593855 (= e!2223802 tp!1099900)))

(assert (= (and b!3593082 ((_ is ElementMatch!10345) (regex!5586 rule!403))) b!3593853))

(assert (= (and b!3593082 ((_ is Concat!16162) (regex!5586 rule!403))) b!3593854))

(assert (= (and b!3593082 ((_ is Star!10345) (regex!5586 rule!403))) b!3593855))

(assert (= (and b!3593082 ((_ is Union!10345) (regex!5586 rule!403))) b!3593856))

(declare-fun b_lambda!106199 () Bool)

(assert (= b_lambda!106161 (or (and b!3593087 b_free!92795 (= (toChars!7729 (transformation!5586 rule!403)) (toChars!7729 (transformation!5586 (rule!8306 token!511))))) (and b!3593824 b_free!92807 (= (toChars!7729 (transformation!5586 (h!43207 (t!291282 rules!3307)))) (toChars!7729 (transformation!5586 (rule!8306 token!511))))) (and b!3593095 b_free!92799) (and b!3593079 b_free!92787 (= (toChars!7729 (transformation!5586 anOtherTypeRule!33)) (toChars!7729 (transformation!5586 (rule!8306 token!511))))) (and b!3593099 b_free!92791 (= (toChars!7729 (transformation!5586 (h!43207 rules!3307))) (toChars!7729 (transformation!5586 (rule!8306 token!511))))) b_lambda!106199)))

(declare-fun b_lambda!106201 () Bool)

(assert (= b_lambda!106169 (or (and b!3593087 b_free!92795 (= (toChars!7729 (transformation!5586 rule!403)) (toChars!7729 (transformation!5586 (rule!8306 token!511))))) (and b!3593824 b_free!92807 (= (toChars!7729 (transformation!5586 (h!43207 (t!291282 rules!3307)))) (toChars!7729 (transformation!5586 (rule!8306 token!511))))) (and b!3593095 b_free!92799) (and b!3593079 b_free!92787 (= (toChars!7729 (transformation!5586 anOtherTypeRule!33)) (toChars!7729 (transformation!5586 (rule!8306 token!511))))) (and b!3593099 b_free!92791 (= (toChars!7729 (transformation!5586 (h!43207 rules!3307))) (toChars!7729 (transformation!5586 (rule!8306 token!511))))) b_lambda!106201)))

(check-sat (not b!3593488) (not b_next!93503) (not d!1059148) (not b!3593533) (not b_next!93497) (not b_next!93491) (not b!3593802) (not b!3593500) (not b_next!93509) (not b!3593846) b_and!260239 (not b!3593800) b_and!260259 (not b!3593823) (not d!1059244) (not d!1059138) (not b!3593761) (not b!3593497) (not b!3593803) (not b!3593652) (not d!1059234) (not b!3593238) (not d!1059144) b_and!260237 (not tb!205145) (not b!3593798) (not b!3593259) (not bm!260026) (not b!3593494) (not b!3593486) (not b!3593650) (not b!3593655) (not b!3593702) (not d!1059082) (not b!3593534) (not d!1059166) tp_is_empty!17773 (not b_lambda!106181) (not b!3593390) (not b!3593564) (not d!1059238) (not d!1059098) (not b!3593838) (not b_lambda!106179) (not b_next!93493) (not b!3593841) (not b_lambda!106185) (not b!3593394) (not b_lambda!106183) (not d!1059262) (not b!3593855) (not tb!205185) (not d!1059060) (not b!3593844) b_and!260265 (not bm!260051) (not tb!205209) (not d!1059264) (not b!3593495) (not b!3593852) (not bm!260055) (not b!3593840) (not tb!205193) (not b!3593703) (not b!3593485) (not b!3593389) (not b!3593651) (not d!1059058) b_and!260261 (not b!3593777) (not d!1059246) (not tb!205237) (not b_next!93501) (not b_next!93499) (not b!3593237) (not d!1059172) (not b!3593714) (not b!3593797) (not b!3593773) b_and!260241 (not b!3593310) (not b!3593240) (not b!3593388) (not d!1059178) (not bm!260061) (not b!3593759) (not b!3593393) (not b_lambda!106197) (not b!3593636) (not b!3593856) (not b!3593804) (not b!3593656) (not d!1059252) (not b!3593799) (not b!3593567) (not b!3593790) (not d!1059250) (not b!3593715) (not bm!260048) (not b!3593842) (not d!1059078) (not d!1059202) (not b!3593758) (not b!3593239) (not b!3593563) (not bm!260035) (not b!3593806) (not d!1059160) (not b!3593755) (not d!1059104) (not d!1059248) (not b_lambda!106187) (not b!3593395) b_and!260255 (not b!3593774) (not d!1059232) (not b_lambda!106199) (not d!1059242) (not b!3593506) (not b!3593399) (not b!3593396) (not d!1059258) (not b!3593789) (not tb!205201) (not b!3593532) (not d!1059182) (not b!3593571) b_and!260263 (not b_lambda!106201) (not bm!260045) (not b!3593837) (not d!1059176) (not bm!260052) (not d!1059108) (not d!1059154) (not b!3593566) (not b_lambda!106189) b_and!260235 (not d!1059212) (not b_next!93511) b_and!260257 (not b!3593535) (not b!3593836) (not d!1059140) (not b!3593851) (not b!3593635) (not bm!260046) (not d!1059204) (not b!3593716) (not b!3593791) (not b!3593801) (not b!3593778) (not b!3593243) (not b!3593463) (not d!1059046) (not b!3593780) (not b!3593570) (not b!3593845) (not b!3593568) (not b!3593854) (not b!3593311) (not b!3593531) (not b!3593822) (not d!1059170) (not b!3593391) (not b!3593704) (not d!1059100) (not b!3593537) (not b!3593334) (not b!3593639) (not d!1059106) (not b!3593657) (not b!3593658) (not b!3593323) (not bm!260049) (not b!3593762) (not bm!260054) (not b!3593763) (not b!3593569) (not d!1059110) (not b!3593600) (not b!3593473) (not d!1059080) (not d!1059240) (not b_next!93495) (not b!3593241) (not b!3593653) (not b_next!93489) (not b!3593474) (not d!1059042) (not d!1059158))
(check-sat b_and!260259 b_and!260237 (not b_next!93493) b_and!260265 b_and!260261 b_and!260241 b_and!260255 b_and!260263 (not b_next!93503) (not b_next!93497) (not b_next!93491) b_and!260239 (not b_next!93509) (not b_next!93501) (not b_next!93499) b_and!260235 (not b_next!93511) b_and!260257 (not b_next!93495) (not b_next!93489))
