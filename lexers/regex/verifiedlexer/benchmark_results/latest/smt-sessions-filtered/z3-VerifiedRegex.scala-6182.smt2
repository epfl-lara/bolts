; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299242 () Bool)

(assert start!299242)

(declare-fun b!3189524 () Bool)

(declare-fun b_free!84265 () Bool)

(declare-fun b_next!84969 () Bool)

(assert (=> b!3189524 (= b_free!84265 (not b_next!84969))))

(declare-fun tp!1008224 () Bool)

(declare-fun b_and!211275 () Bool)

(assert (=> b!3189524 (= tp!1008224 b_and!211275)))

(declare-fun b_free!84267 () Bool)

(declare-fun b_next!84971 () Bool)

(assert (=> b!3189524 (= b_free!84267 (not b_next!84971))))

(declare-fun tp!1008229 () Bool)

(declare-fun b_and!211277 () Bool)

(assert (=> b!3189524 (= tp!1008229 b_and!211277)))

(declare-fun b!3189537 () Bool)

(declare-fun b_free!84269 () Bool)

(declare-fun b_next!84973 () Bool)

(assert (=> b!3189537 (= b_free!84269 (not b_next!84973))))

(declare-fun tp!1008230 () Bool)

(declare-fun b_and!211279 () Bool)

(assert (=> b!3189537 (= tp!1008230 b_and!211279)))

(declare-fun b_free!84271 () Bool)

(declare-fun b_next!84975 () Bool)

(assert (=> b!3189537 (= b_free!84271 (not b_next!84975))))

(declare-fun tp!1008232 () Bool)

(declare-fun b_and!211281 () Bool)

(assert (=> b!3189537 (= tp!1008232 b_and!211281)))

(declare-fun b!3189535 () Bool)

(declare-fun b_free!84273 () Bool)

(declare-fun b_next!84977 () Bool)

(assert (=> b!3189535 (= b_free!84273 (not b_next!84977))))

(declare-fun tp!1008233 () Bool)

(declare-fun b_and!211283 () Bool)

(assert (=> b!3189535 (= tp!1008233 b_and!211283)))

(declare-fun b_free!84275 () Bool)

(declare-fun b_next!84979 () Bool)

(assert (=> b!3189535 (= b_free!84275 (not b_next!84979))))

(declare-fun tp!1008225 () Bool)

(declare-fun b_and!211285 () Bool)

(assert (=> b!3189535 (= tp!1008225 b_and!211285)))

(declare-fun b!3189512 () Bool)

(declare-datatypes ((List!35968 0))(
  ( (Nil!35844) (Cons!35844 (h!41264 (_ BitVec 16)) (t!236099 List!35968)) )
))
(declare-datatypes ((TokenValue!5374 0))(
  ( (FloatLiteralValue!10748 (text!38063 List!35968)) (TokenValueExt!5373 (__x!22965 Int)) (Broken!26870 (value!167038 List!35968)) (Object!5497) (End!5374) (Def!5374) (Underscore!5374) (Match!5374) (Else!5374) (Error!5374) (Case!5374) (If!5374) (Extends!5374) (Abstract!5374) (Class!5374) (Val!5374) (DelimiterValue!10748 (del!5434 List!35968)) (KeywordValue!5380 (value!167039 List!35968)) (CommentValue!10748 (value!167040 List!35968)) (WhitespaceValue!10748 (value!167041 List!35968)) (IndentationValue!5374 (value!167042 List!35968)) (String!40203) (Int32!5374) (Broken!26871 (value!167043 List!35968)) (Boolean!5375) (Unit!50269) (OperatorValue!5377 (op!5434 List!35968)) (IdentifierValue!10748 (value!167044 List!35968)) (IdentifierValue!10749 (value!167045 List!35968)) (WhitespaceValue!10749 (value!167046 List!35968)) (True!10748) (False!10748) (Broken!26872 (value!167047 List!35968)) (Broken!26873 (value!167048 List!35968)) (True!10749) (RightBrace!5374) (RightBracket!5374) (Colon!5374) (Null!5374) (Comma!5374) (LeftBracket!5374) (False!10749) (LeftBrace!5374) (ImaginaryLiteralValue!5374 (text!38064 List!35968)) (StringLiteralValue!16122 (value!167049 List!35968)) (EOFValue!5374 (value!167050 List!35968)) (IdentValue!5374 (value!167051 List!35968)) (DelimiterValue!10749 (value!167052 List!35968)) (DedentValue!5374 (value!167053 List!35968)) (NewLineValue!5374 (value!167054 List!35968)) (IntegerValue!16122 (value!167055 (_ BitVec 32)) (text!38065 List!35968)) (IntegerValue!16123 (value!167056 Int) (text!38066 List!35968)) (Times!5374) (Or!5374) (Equal!5374) (Minus!5374) (Broken!26874 (value!167057 List!35968)) (And!5374) (Div!5374) (LessEqual!5374) (Mod!5374) (Concat!15277) (Not!5374) (Plus!5374) (SpaceValue!5374 (value!167058 List!35968)) (IntegerValue!16124 (value!167059 Int) (text!38067 List!35968)) (StringLiteralValue!16123 (text!38068 List!35968)) (FloatLiteralValue!10749 (text!38069 List!35968)) (BytesLiteralValue!5374 (value!167060 List!35968)) (CommentValue!10749 (value!167061 List!35968)) (StringLiteralValue!16124 (value!167062 List!35968)) (ErrorTokenValue!5374 (msg!5435 List!35968)) )
))
(declare-datatypes ((C!19992 0))(
  ( (C!19993 (val!12044 Int)) )
))
(declare-datatypes ((List!35969 0))(
  ( (Nil!35845) (Cons!35845 (h!41265 C!19992) (t!236100 List!35969)) )
))
(declare-datatypes ((IArray!21331 0))(
  ( (IArray!21332 (innerList!10723 List!35969)) )
))
(declare-datatypes ((Conc!10663 0))(
  ( (Node!10663 (left!27877 Conc!10663) (right!28207 Conc!10663) (csize!21556 Int) (cheight!10874 Int)) (Leaf!16846 (xs!13781 IArray!21331) (csize!21557 Int)) (Empty!10663) )
))
(declare-datatypes ((BalanceConc!20940 0))(
  ( (BalanceConc!20941 (c!535692 Conc!10663)) )
))
(declare-datatypes ((Regex!9903 0))(
  ( (ElementMatch!9903 (c!535693 C!19992)) (Concat!15278 (regOne!20318 Regex!9903) (regTwo!20318 Regex!9903)) (EmptyExpr!9903) (Star!9903 (reg!10232 Regex!9903)) (EmptyLang!9903) (Union!9903 (regOne!20319 Regex!9903) (regTwo!20319 Regex!9903)) )
))
(declare-datatypes ((String!40204 0))(
  ( (String!40205 (value!167063 String)) )
))
(declare-datatypes ((TokenValueInjection!10176 0))(
  ( (TokenValueInjection!10177 (toValue!7208 Int) (toChars!7067 Int)) )
))
(declare-datatypes ((Rule!10088 0))(
  ( (Rule!10089 (regex!5144 Regex!9903) (tag!5662 String!40204) (isSeparator!5144 Bool) (transformation!5144 TokenValueInjection!10176)) )
))
(declare-datatypes ((Token!9654 0))(
  ( (Token!9655 (value!167064 TokenValue!5374) (rule!7576 Rule!10088) (size!27044 Int) (originalCharacters!5858 List!35969)) )
))
(declare-datatypes ((List!35970 0))(
  ( (Nil!35846) (Cons!35846 (h!41266 Token!9654) (t!236101 List!35970)) )
))
(declare-datatypes ((tuple2!35220 0))(
  ( (tuple2!35221 (_1!20744 List!35970) (_2!20744 List!35969)) )
))
(declare-fun e!1987594 () tuple2!35220)

(declare-datatypes ((tuple2!35222 0))(
  ( (tuple2!35223 (_1!20745 Token!9654) (_2!20745 List!35969)) )
))
(declare-datatypes ((Option!7021 0))(
  ( (None!7020) (Some!7020 (v!35520 tuple2!35222)) )
))
(declare-fun lt!1073610 () Option!7021)

(declare-fun lt!1073595 () tuple2!35220)

(assert (=> b!3189512 (= e!1987594 (tuple2!35221 (Cons!35846 (_1!20745 (v!35520 lt!1073610)) (_1!20744 lt!1073595)) (_2!20744 lt!1073595)))))

(declare-datatypes ((LexerInterface!4733 0))(
  ( (LexerInterfaceExt!4730 (__x!22966 Int)) (Lexer!4731) )
))
(declare-fun thiss!18206 () LexerInterface!4733)

(declare-datatypes ((List!35971 0))(
  ( (Nil!35847) (Cons!35847 (h!41267 Rule!10088) (t!236102 List!35971)) )
))
(declare-fun rules!2135 () List!35971)

(declare-fun lexList!1283 (LexerInterface!4733 List!35971 List!35969) tuple2!35220)

(assert (=> b!3189512 (= lt!1073595 (lexList!1283 thiss!18206 rules!2135 (_2!20745 (v!35520 lt!1073610))))))

(declare-fun tp!1008231 () Bool)

(declare-fun tokens!494 () List!35970)

(declare-fun e!1987614 () Bool)

(declare-fun b!3189513 () Bool)

(declare-fun e!1987604 () Bool)

(declare-fun inv!21 (TokenValue!5374) Bool)

(assert (=> b!3189513 (= e!1987604 (and (inv!21 (value!167064 (h!41266 tokens!494))) e!1987614 tp!1008231))))

(declare-fun b!3189514 () Bool)

(declare-fun e!1987601 () Bool)

(declare-fun e!1987602 () Bool)

(assert (=> b!3189514 (= e!1987601 e!1987602)))

(declare-fun res!1297013 () Bool)

(assert (=> b!3189514 (=> res!1297013 e!1987602)))

(declare-fun lt!1073615 () List!35969)

(declare-fun lt!1073612 () List!35969)

(declare-fun lt!1073589 () List!35969)

(assert (=> b!3189514 (= res!1297013 (or (not (= lt!1073615 lt!1073589)) (not (= lt!1073612 lt!1073589))))))

(declare-fun list!12733 (BalanceConc!20940) List!35969)

(declare-fun charsOf!3166 (Token!9654) BalanceConc!20940)

(assert (=> b!3189514 (= lt!1073589 (list!12733 (charsOf!3166 (h!41266 tokens!494))))))

(declare-fun b!3189515 () Bool)

(declare-fun res!1296995 () Bool)

(declare-fun e!1987597 () Bool)

(assert (=> b!3189515 (=> (not res!1296995) (not e!1987597))))

(get-info :version)

(assert (=> b!3189515 (= res!1296995 (and (not ((_ is Nil!35846) tokens!494)) ((_ is Nil!35846) (t!236101 tokens!494))))))

(declare-fun b!3189516 () Bool)

(declare-fun res!1297010 () Bool)

(assert (=> b!3189516 (=> (not res!1297010) (not e!1987597))))

(declare-fun lambda!116639 () Int)

(declare-fun forall!7276 (List!35970 Int) Bool)

(assert (=> b!3189516 (= res!1297010 (forall!7276 tokens!494 lambda!116639))))

(declare-fun b!3189517 () Bool)

(declare-datatypes ((Unit!50270 0))(
  ( (Unit!50271) )
))
(declare-fun e!1987607 () Unit!50270)

(declare-fun Unit!50272 () Unit!50270)

(assert (=> b!3189517 (= e!1987607 Unit!50272)))

(declare-fun lt!1073602 () C!19992)

(declare-fun separatorToken!241 () Token!9654)

(declare-fun lt!1073607 () Unit!50270)

(declare-fun lt!1073618 () List!35969)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!342 (Regex!9903 List!35969 C!19992) Unit!50270)

(assert (=> b!3189517 (= lt!1073607 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!342 (regex!5144 (rule!7576 separatorToken!241)) lt!1073618 lt!1073602))))

(declare-fun res!1296999 () Bool)

(declare-fun matchR!4561 (Regex!9903 List!35969) Bool)

(assert (=> b!3189517 (= res!1296999 (not (matchR!4561 (regex!5144 (rule!7576 separatorToken!241)) lt!1073618)))))

(declare-fun e!1987612 () Bool)

(assert (=> b!3189517 (=> (not res!1296999) (not e!1987612))))

(assert (=> b!3189517 e!1987612))

(declare-fun tp!1008236 () Bool)

(declare-fun e!1987591 () Bool)

(declare-fun b!3189518 () Bool)

(declare-fun inv!48698 (String!40204) Bool)

(declare-fun inv!48701 (TokenValueInjection!10176) Bool)

(assert (=> b!3189518 (= e!1987614 (and tp!1008236 (inv!48698 (tag!5662 (rule!7576 (h!41266 tokens!494)))) (inv!48701 (transformation!5144 (rule!7576 (h!41266 tokens!494)))) e!1987591))))

(declare-fun b!3189519 () Bool)

(declare-fun res!1297002 () Bool)

(assert (=> b!3189519 (=> (not res!1297002) (not e!1987597))))

(declare-fun sepAndNonSepRulesDisjointChars!1338 (List!35971 List!35971) Bool)

(assert (=> b!3189519 (= res!1297002 (sepAndNonSepRulesDisjointChars!1338 rules!2135 rules!2135))))

(declare-fun b!3189520 () Bool)

(declare-fun lt!1073597 () List!35969)

(assert (=> b!3189520 (= e!1987594 (tuple2!35221 Nil!35846 lt!1073597))))

(assert (=> b!3189520 false))

(declare-fun b!3189521 () Bool)

(declare-fun e!1987620 () Bool)

(declare-fun lt!1073599 () Rule!10088)

(assert (=> b!3189521 (= e!1987620 (= (rule!7576 (h!41266 tokens!494)) lt!1073599))))

(declare-fun b!3189522 () Bool)

(declare-fun e!1987603 () Bool)

(assert (=> b!3189522 (= e!1987603 e!1987597)))

(declare-fun res!1297006 () Bool)

(assert (=> b!3189522 (=> (not res!1297006) (not e!1987597))))

(declare-datatypes ((IArray!21333 0))(
  ( (IArray!21334 (innerList!10724 List!35970)) )
))
(declare-datatypes ((Conc!10664 0))(
  ( (Node!10664 (left!27878 Conc!10664) (right!28208 Conc!10664) (csize!21558 Int) (cheight!10875 Int)) (Leaf!16847 (xs!13782 IArray!21333) (csize!21559 Int)) (Empty!10664) )
))
(declare-datatypes ((BalanceConc!20942 0))(
  ( (BalanceConc!20943 (c!535694 Conc!10664)) )
))
(declare-fun lt!1073591 () BalanceConc!20942)

(declare-fun rulesProduceEachTokenIndividually!1184 (LexerInterface!4733 List!35971 BalanceConc!20942) Bool)

(assert (=> b!3189522 (= res!1297006 (rulesProduceEachTokenIndividually!1184 thiss!18206 rules!2135 lt!1073591))))

(declare-fun seqFromList!3367 (List!35970) BalanceConc!20942)

(assert (=> b!3189522 (= lt!1073591 (seqFromList!3367 tokens!494))))

(declare-fun b!3189523 () Bool)

(declare-fun e!1987608 () Bool)

(declare-fun e!1987613 () Bool)

(assert (=> b!3189523 (= e!1987608 e!1987613)))

(declare-fun res!1297001 () Bool)

(assert (=> b!3189523 (=> (not res!1297001) (not e!1987613))))

(declare-fun lt!1073614 () Rule!10088)

(assert (=> b!3189523 (= res!1297001 (matchR!4561 (regex!5144 lt!1073614) lt!1073618))))

(declare-datatypes ((Option!7022 0))(
  ( (None!7021) (Some!7021 (v!35521 Rule!10088)) )
))
(declare-fun lt!1073592 () Option!7022)

(declare-fun get!11413 (Option!7022) Rule!10088)

(assert (=> b!3189523 (= lt!1073614 (get!11413 lt!1073592))))

(declare-fun e!1987618 () Bool)

(assert (=> b!3189524 (= e!1987618 (and tp!1008224 tp!1008229))))

(declare-fun b!3189525 () Bool)

(declare-fun res!1296994 () Bool)

(assert (=> b!3189525 (=> (not res!1296994) (not e!1987597))))

(assert (=> b!3189525 (= res!1296994 (isSeparator!5144 (rule!7576 separatorToken!241)))))

(declare-fun b!3189526 () Bool)

(declare-fun res!1297000 () Bool)

(assert (=> b!3189526 (=> res!1297000 e!1987602)))

(declare-fun rulesProduceIndividualToken!2225 (LexerInterface!4733 List!35971 Token!9654) Bool)

(assert (=> b!3189526 (= res!1297000 (not (rulesProduceIndividualToken!2225 thiss!18206 rules!2135 (h!41266 tokens!494))))))

(declare-fun b!3189527 () Bool)

(assert (=> b!3189527 (= e!1987613 (= (rule!7576 separatorToken!241) lt!1073614))))

(declare-fun b!3189528 () Bool)

(declare-fun e!1987605 () Bool)

(declare-fun e!1987599 () Bool)

(assert (=> b!3189528 (= e!1987605 e!1987599)))

(declare-fun res!1296996 () Bool)

(assert (=> b!3189528 (=> res!1296996 e!1987599)))

(declare-fun lt!1073605 () List!35969)

(assert (=> b!3189528 (= res!1296996 (not (= lt!1073597 lt!1073605)))))

(declare-fun ++!8582 (List!35969 List!35969) List!35969)

(assert (=> b!3189528 (= lt!1073605 (++!8582 lt!1073589 lt!1073618))))

(declare-fun lt!1073596 () BalanceConc!20940)

(assert (=> b!3189528 (= lt!1073597 (list!12733 lt!1073596))))

(assert (=> b!3189528 (= lt!1073618 (list!12733 (charsOf!3166 separatorToken!241)))))

(declare-fun printWithSeparatorToken!42 (LexerInterface!4733 BalanceConc!20942 Token!9654) BalanceConc!20940)

(assert (=> b!3189528 (= lt!1073596 (printWithSeparatorToken!42 thiss!18206 lt!1073591 separatorToken!241))))

(declare-fun b!3189529 () Bool)

(declare-fun e!1987595 () Bool)

(assert (=> b!3189529 (= e!1987595 true)))

(declare-fun lt!1073600 () tuple2!35220)

(assert (=> b!3189529 (= lt!1073600 e!1987594)))

(declare-fun c!535691 () Bool)

(assert (=> b!3189529 (= c!535691 ((_ is Some!7020) lt!1073610))))

(declare-fun maxPrefix!2411 (LexerInterface!4733 List!35971 List!35969) Option!7021)

(assert (=> b!3189529 (= lt!1073610 (maxPrefix!2411 thiss!18206 rules!2135 lt!1073597))))

(assert (=> b!3189529 (= (maxPrefix!2411 thiss!18206 rules!2135 lt!1073605) (Some!7020 (tuple2!35223 (h!41266 tokens!494) lt!1073618)))))

(declare-fun lt!1073617 () Unit!50270)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!122 (LexerInterface!4733 List!35971 Token!9654 Rule!10088 List!35969 Rule!10088) Unit!50270)

(assert (=> b!3189529 (= lt!1073617 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!122 thiss!18206 rules!2135 (h!41266 tokens!494) (rule!7576 (h!41266 tokens!494)) lt!1073618 (rule!7576 separatorToken!241)))))

(declare-fun contains!6369 (List!35969 C!19992) Bool)

(declare-fun usedCharacters!488 (Regex!9903) List!35969)

(assert (=> b!3189529 (not (contains!6369 (usedCharacters!488 (regex!5144 (rule!7576 (h!41266 tokens!494)))) lt!1073602))))

(declare-fun lt!1073598 () Unit!50270)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!120 (LexerInterface!4733 List!35971 List!35971 Rule!10088 Rule!10088 C!19992) Unit!50270)

(assert (=> b!3189529 (= lt!1073598 (lemmaNonSepRuleNotContainsCharContainedInASepRule!120 thiss!18206 rules!2135 rules!2135 (rule!7576 (h!41266 tokens!494)) (rule!7576 separatorToken!241) lt!1073602))))

(declare-fun b!3189530 () Bool)

(assert (=> b!3189530 (= e!1987597 (not e!1987601))))

(declare-fun res!1296993 () Bool)

(assert (=> b!3189530 (=> res!1296993 e!1987601)))

(assert (=> b!3189530 (= res!1296993 (not (= lt!1073612 lt!1073615)))))

(declare-fun printList!1287 (LexerInterface!4733 List!35970) List!35969)

(assert (=> b!3189530 (= lt!1073615 (printList!1287 thiss!18206 (Cons!35846 (h!41266 tokens!494) Nil!35846)))))

(declare-fun lt!1073593 () BalanceConc!20940)

(assert (=> b!3189530 (= lt!1073612 (list!12733 lt!1073593))))

(declare-fun lt!1073603 () BalanceConc!20942)

(declare-fun printTailRec!1232 (LexerInterface!4733 BalanceConc!20942 Int BalanceConc!20940) BalanceConc!20940)

(assert (=> b!3189530 (= lt!1073593 (printTailRec!1232 thiss!18206 lt!1073603 0 (BalanceConc!20941 Empty!10663)))))

(declare-fun print!1800 (LexerInterface!4733 BalanceConc!20942) BalanceConc!20940)

(assert (=> b!3189530 (= lt!1073593 (print!1800 thiss!18206 lt!1073603))))

(declare-fun singletonSeq!2240 (Token!9654) BalanceConc!20942)

(assert (=> b!3189530 (= lt!1073603 (singletonSeq!2240 (h!41266 tokens!494)))))

(declare-fun b!3189531 () Bool)

(declare-fun e!1987600 () Bool)

(assert (=> b!3189531 (= e!1987600 e!1987605)))

(declare-fun res!1297008 () Bool)

(assert (=> b!3189531 (=> res!1297008 e!1987605)))

(assert (=> b!3189531 (= res!1297008 (isSeparator!5144 (rule!7576 (h!41266 tokens!494))))))

(declare-fun lt!1073609 () Unit!50270)

(declare-fun forallContained!1127 (List!35970 Int Token!9654) Unit!50270)

(assert (=> b!3189531 (= lt!1073609 (forallContained!1127 tokens!494 lambda!116639 (h!41266 tokens!494)))))

(declare-fun b!3189532 () Bool)

(declare-fun tp!1008227 () Bool)

(declare-fun e!1987610 () Bool)

(declare-fun inv!48702 (Token!9654) Bool)

(assert (=> b!3189532 (= e!1987610 (and (inv!48702 (h!41266 tokens!494)) e!1987604 tp!1008227))))

(declare-fun b!3189533 () Bool)

(declare-fun res!1297005 () Bool)

(assert (=> b!3189533 (=> (not res!1297005) (not e!1987597))))

(assert (=> b!3189533 (= res!1297005 (rulesProduceIndividualToken!2225 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3189534 () Bool)

(assert (=> b!3189534 (= e!1987602 e!1987600)))

(declare-fun res!1297012 () Bool)

(assert (=> b!3189534 (=> res!1297012 e!1987600)))

(declare-fun lt!1073616 () BalanceConc!20940)

(declare-fun isEmpty!19983 (BalanceConc!20942) Bool)

(declare-datatypes ((tuple2!35224 0))(
  ( (tuple2!35225 (_1!20746 BalanceConc!20942) (_2!20746 BalanceConc!20940)) )
))
(declare-fun lex!2073 (LexerInterface!4733 List!35971 BalanceConc!20940) tuple2!35224)

(assert (=> b!3189534 (= res!1297012 (isEmpty!19983 (_1!20746 (lex!2073 thiss!18206 rules!2135 lt!1073616))))))

(declare-fun seqFromList!3368 (List!35969) BalanceConc!20940)

(assert (=> b!3189534 (= lt!1073616 (seqFromList!3368 lt!1073589))))

(assert (=> b!3189535 (= e!1987591 (and tp!1008233 tp!1008225))))

(declare-fun b!3189536 () Bool)

(declare-fun e!1987606 () Bool)

(assert (=> b!3189536 (= e!1987606 e!1987620)))

(declare-fun res!1297011 () Bool)

(assert (=> b!3189536 (=> (not res!1297011) (not e!1987620))))

(assert (=> b!3189536 (= res!1297011 (matchR!4561 (regex!5144 lt!1073599) lt!1073589))))

(declare-fun lt!1073611 () Option!7022)

(assert (=> b!3189536 (= lt!1073599 (get!11413 lt!1073611))))

(declare-fun e!1987592 () Bool)

(assert (=> b!3189537 (= e!1987592 (and tp!1008230 tp!1008232))))

(declare-fun e!1987596 () Bool)

(declare-fun b!3189538 () Bool)

(declare-fun tp!1008234 () Bool)

(assert (=> b!3189538 (= e!1987596 (and tp!1008234 (inv!48698 (tag!5662 (h!41267 rules!2135))) (inv!48701 (transformation!5144 (h!41267 rules!2135))) e!1987618))))

(declare-fun b!3189539 () Bool)

(assert (=> b!3189539 (= e!1987599 e!1987595)))

(declare-fun res!1297003 () Bool)

(assert (=> b!3189539 (=> res!1297003 e!1987595)))

(declare-fun lt!1073590 () Bool)

(assert (=> b!3189539 (= res!1297003 lt!1073590)))

(declare-fun lt!1073604 () Unit!50270)

(assert (=> b!3189539 (= lt!1073604 e!1987607)))

(declare-fun c!535690 () Bool)

(assert (=> b!3189539 (= c!535690 lt!1073590)))

(assert (=> b!3189539 (= lt!1073590 (not (contains!6369 (usedCharacters!488 (regex!5144 (rule!7576 separatorToken!241))) lt!1073602)))))

(declare-fun head!6979 (List!35969) C!19992)

(assert (=> b!3189539 (= lt!1073602 (head!6979 lt!1073618))))

(declare-fun maxPrefixOneRule!1538 (LexerInterface!4733 Rule!10088 List!35969) Option!7021)

(declare-fun apply!8082 (TokenValueInjection!10176 BalanceConc!20940) TokenValue!5374)

(declare-fun size!27045 (List!35969) Int)

(assert (=> b!3189539 (= (maxPrefixOneRule!1538 thiss!18206 (rule!7576 (h!41266 tokens!494)) lt!1073589) (Some!7020 (tuple2!35223 (Token!9655 (apply!8082 (transformation!5144 (rule!7576 (h!41266 tokens!494))) lt!1073616) (rule!7576 (h!41266 tokens!494)) (size!27045 lt!1073589) lt!1073589) Nil!35845)))))

(declare-fun lt!1073608 () Unit!50270)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!651 (LexerInterface!4733 List!35971 List!35969 List!35969 List!35969 Rule!10088) Unit!50270)

(assert (=> b!3189539 (= lt!1073608 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!651 thiss!18206 rules!2135 lt!1073589 lt!1073589 Nil!35845 (rule!7576 (h!41266 tokens!494))))))

(assert (=> b!3189539 e!1987608))

(declare-fun res!1297004 () Bool)

(assert (=> b!3189539 (=> (not res!1297004) (not e!1987608))))

(declare-fun isDefined!5496 (Option!7022) Bool)

(assert (=> b!3189539 (= res!1297004 (isDefined!5496 lt!1073592))))

(declare-fun getRuleFromTag!873 (LexerInterface!4733 List!35971 String!40204) Option!7022)

(assert (=> b!3189539 (= lt!1073592 (getRuleFromTag!873 thiss!18206 rules!2135 (tag!5662 (rule!7576 separatorToken!241))))))

(declare-fun lt!1073594 () Unit!50270)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!873 (LexerInterface!4733 List!35971 List!35969 Token!9654) Unit!50270)

(assert (=> b!3189539 (= lt!1073594 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!873 thiss!18206 rules!2135 lt!1073618 separatorToken!241))))

(assert (=> b!3189539 e!1987606))

(declare-fun res!1296998 () Bool)

(assert (=> b!3189539 (=> (not res!1296998) (not e!1987606))))

(assert (=> b!3189539 (= res!1296998 (isDefined!5496 lt!1073611))))

(assert (=> b!3189539 (= lt!1073611 (getRuleFromTag!873 thiss!18206 rules!2135 (tag!5662 (rule!7576 (h!41266 tokens!494)))))))

(declare-fun lt!1073613 () Unit!50270)

(assert (=> b!3189539 (= lt!1073613 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!873 thiss!18206 rules!2135 lt!1073589 (h!41266 tokens!494)))))

(declare-fun lt!1073606 () Unit!50270)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!794 (LexerInterface!4733 List!35971 List!35970 Token!9654) Unit!50270)

(assert (=> b!3189539 (= lt!1073606 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!794 thiss!18206 rules!2135 tokens!494 (h!41266 tokens!494)))))

(declare-fun isEmpty!19984 (List!35969) Bool)

(declare-fun getSuffix!1360 (List!35969 List!35969) List!35969)

(assert (=> b!3189539 (isEmpty!19984 (getSuffix!1360 lt!1073589 lt!1073589))))

(declare-fun lt!1073601 () Unit!50270)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!38 (List!35969) Unit!50270)

(assert (=> b!3189539 (= lt!1073601 (lemmaGetSuffixOnListWithItSelfIsEmpty!38 lt!1073589))))

(declare-fun b!3189540 () Bool)

(declare-fun e!1987598 () Bool)

(declare-fun tp!1008226 () Bool)

(assert (=> b!3189540 (= e!1987598 (and e!1987596 tp!1008226))))

(declare-fun b!3189541 () Bool)

(declare-fun res!1297009 () Bool)

(assert (=> b!3189541 (=> (not res!1297009) (not e!1987603))))

(declare-fun isEmpty!19985 (List!35971) Bool)

(assert (=> b!3189541 (= res!1297009 (not (isEmpty!19985 rules!2135)))))

(declare-fun b!3189542 () Bool)

(declare-fun tp!1008228 () Bool)

(declare-fun e!1987615 () Bool)

(assert (=> b!3189542 (= e!1987615 (and tp!1008228 (inv!48698 (tag!5662 (rule!7576 separatorToken!241))) (inv!48701 (transformation!5144 (rule!7576 separatorToken!241))) e!1987592))))

(declare-fun b!3189543 () Bool)

(declare-fun res!1297007 () Bool)

(assert (=> b!3189543 (=> (not res!1297007) (not e!1987603))))

(declare-fun rulesInvariant!4130 (LexerInterface!4733 List!35971) Bool)

(assert (=> b!3189543 (= res!1297007 (rulesInvariant!4130 thiss!18206 rules!2135))))

(declare-fun b!3189544 () Bool)

(declare-fun e!1987617 () Bool)

(declare-fun tp!1008235 () Bool)

(assert (=> b!3189544 (= e!1987617 (and (inv!21 (value!167064 separatorToken!241)) e!1987615 tp!1008235))))

(declare-fun res!1296997 () Bool)

(assert (=> start!299242 (=> (not res!1296997) (not e!1987603))))

(assert (=> start!299242 (= res!1296997 ((_ is Lexer!4731) thiss!18206))))

(assert (=> start!299242 e!1987603))

(assert (=> start!299242 true))

(assert (=> start!299242 e!1987598))

(assert (=> start!299242 (and (inv!48702 separatorToken!241) e!1987617)))

(assert (=> start!299242 e!1987610))

(declare-fun b!3189545 () Bool)

(declare-fun Unit!50273 () Unit!50270)

(assert (=> b!3189545 (= e!1987607 Unit!50273)))

(declare-fun b!3189546 () Bool)

(assert (=> b!3189546 (= e!1987612 false)))

(assert (= (and start!299242 res!1296997) b!3189541))

(assert (= (and b!3189541 res!1297009) b!3189543))

(assert (= (and b!3189543 res!1297007) b!3189522))

(assert (= (and b!3189522 res!1297006) b!3189533))

(assert (= (and b!3189533 res!1297005) b!3189525))

(assert (= (and b!3189525 res!1296994) b!3189516))

(assert (= (and b!3189516 res!1297010) b!3189519))

(assert (= (and b!3189519 res!1297002) b!3189515))

(assert (= (and b!3189515 res!1296995) b!3189530))

(assert (= (and b!3189530 (not res!1296993)) b!3189514))

(assert (= (and b!3189514 (not res!1297013)) b!3189526))

(assert (= (and b!3189526 (not res!1297000)) b!3189534))

(assert (= (and b!3189534 (not res!1297012)) b!3189531))

(assert (= (and b!3189531 (not res!1297008)) b!3189528))

(assert (= (and b!3189528 (not res!1296996)) b!3189539))

(assert (= (and b!3189539 res!1296998) b!3189536))

(assert (= (and b!3189536 res!1297011) b!3189521))

(assert (= (and b!3189539 res!1297004) b!3189523))

(assert (= (and b!3189523 res!1297001) b!3189527))

(assert (= (and b!3189539 c!535690) b!3189517))

(assert (= (and b!3189539 (not c!535690)) b!3189545))

(assert (= (and b!3189517 res!1296999) b!3189546))

(assert (= (and b!3189539 (not res!1297003)) b!3189529))

(assert (= (and b!3189529 c!535691) b!3189512))

(assert (= (and b!3189529 (not c!535691)) b!3189520))

(assert (= b!3189538 b!3189524))

(assert (= b!3189540 b!3189538))

(assert (= (and start!299242 ((_ is Cons!35847) rules!2135)) b!3189540))

(assert (= b!3189542 b!3189537))

(assert (= b!3189544 b!3189542))

(assert (= start!299242 b!3189544))

(assert (= b!3189518 b!3189535))

(assert (= b!3189513 b!3189518))

(assert (= b!3189532 b!3189513))

(assert (= (and start!299242 ((_ is Cons!35846) tokens!494)) b!3189532))

(declare-fun m!3448307 () Bool)

(assert (=> b!3189543 m!3448307))

(declare-fun m!3448309 () Bool)

(assert (=> b!3189541 m!3448309))

(declare-fun m!3448311 () Bool)

(assert (=> b!3189514 m!3448311))

(assert (=> b!3189514 m!3448311))

(declare-fun m!3448313 () Bool)

(assert (=> b!3189514 m!3448313))

(declare-fun m!3448315 () Bool)

(assert (=> b!3189539 m!3448315))

(declare-fun m!3448317 () Bool)

(assert (=> b!3189539 m!3448317))

(declare-fun m!3448319 () Bool)

(assert (=> b!3189539 m!3448319))

(declare-fun m!3448321 () Bool)

(assert (=> b!3189539 m!3448321))

(declare-fun m!3448323 () Bool)

(assert (=> b!3189539 m!3448323))

(declare-fun m!3448325 () Bool)

(assert (=> b!3189539 m!3448325))

(declare-fun m!3448327 () Bool)

(assert (=> b!3189539 m!3448327))

(declare-fun m!3448329 () Bool)

(assert (=> b!3189539 m!3448329))

(declare-fun m!3448331 () Bool)

(assert (=> b!3189539 m!3448331))

(declare-fun m!3448333 () Bool)

(assert (=> b!3189539 m!3448333))

(declare-fun m!3448335 () Bool)

(assert (=> b!3189539 m!3448335))

(assert (=> b!3189539 m!3448317))

(declare-fun m!3448337 () Bool)

(assert (=> b!3189539 m!3448337))

(declare-fun m!3448339 () Bool)

(assert (=> b!3189539 m!3448339))

(declare-fun m!3448341 () Bool)

(assert (=> b!3189539 m!3448341))

(declare-fun m!3448343 () Bool)

(assert (=> b!3189539 m!3448343))

(assert (=> b!3189539 m!3448327))

(declare-fun m!3448345 () Bool)

(assert (=> b!3189539 m!3448345))

(declare-fun m!3448347 () Bool)

(assert (=> b!3189539 m!3448347))

(declare-fun m!3448349 () Bool)

(assert (=> b!3189530 m!3448349))

(declare-fun m!3448351 () Bool)

(assert (=> b!3189530 m!3448351))

(declare-fun m!3448353 () Bool)

(assert (=> b!3189530 m!3448353))

(declare-fun m!3448355 () Bool)

(assert (=> b!3189530 m!3448355))

(declare-fun m!3448357 () Bool)

(assert (=> b!3189530 m!3448357))

(declare-fun m!3448359 () Bool)

(assert (=> b!3189512 m!3448359))

(declare-fun m!3448361 () Bool)

(assert (=> b!3189544 m!3448361))

(declare-fun m!3448363 () Bool)

(assert (=> b!3189531 m!3448363))

(declare-fun m!3448365 () Bool)

(assert (=> b!3189522 m!3448365))

(declare-fun m!3448367 () Bool)

(assert (=> b!3189522 m!3448367))

(declare-fun m!3448369 () Bool)

(assert (=> b!3189516 m!3448369))

(declare-fun m!3448371 () Bool)

(assert (=> b!3189526 m!3448371))

(declare-fun m!3448373 () Bool)

(assert (=> b!3189533 m!3448373))

(declare-fun m!3448375 () Bool)

(assert (=> b!3189538 m!3448375))

(declare-fun m!3448377 () Bool)

(assert (=> b!3189538 m!3448377))

(declare-fun m!3448379 () Bool)

(assert (=> b!3189532 m!3448379))

(declare-fun m!3448381 () Bool)

(assert (=> b!3189542 m!3448381))

(declare-fun m!3448383 () Bool)

(assert (=> b!3189542 m!3448383))

(declare-fun m!3448385 () Bool)

(assert (=> b!3189517 m!3448385))

(declare-fun m!3448387 () Bool)

(assert (=> b!3189517 m!3448387))

(declare-fun m!3448389 () Bool)

(assert (=> b!3189523 m!3448389))

(declare-fun m!3448391 () Bool)

(assert (=> b!3189523 m!3448391))

(declare-fun m!3448393 () Bool)

(assert (=> b!3189519 m!3448393))

(declare-fun m!3448395 () Bool)

(assert (=> b!3189513 m!3448395))

(declare-fun m!3448397 () Bool)

(assert (=> b!3189518 m!3448397))

(declare-fun m!3448399 () Bool)

(assert (=> b!3189518 m!3448399))

(declare-fun m!3448401 () Bool)

(assert (=> b!3189536 m!3448401))

(declare-fun m!3448403 () Bool)

(assert (=> b!3189536 m!3448403))

(declare-fun m!3448405 () Bool)

(assert (=> b!3189534 m!3448405))

(declare-fun m!3448407 () Bool)

(assert (=> b!3189534 m!3448407))

(declare-fun m!3448409 () Bool)

(assert (=> b!3189534 m!3448409))

(declare-fun m!3448411 () Bool)

(assert (=> b!3189528 m!3448411))

(declare-fun m!3448413 () Bool)

(assert (=> b!3189528 m!3448413))

(declare-fun m!3448415 () Bool)

(assert (=> b!3189528 m!3448415))

(assert (=> b!3189528 m!3448413))

(declare-fun m!3448417 () Bool)

(assert (=> b!3189528 m!3448417))

(declare-fun m!3448419 () Bool)

(assert (=> b!3189528 m!3448419))

(declare-fun m!3448421 () Bool)

(assert (=> b!3189529 m!3448421))

(declare-fun m!3448423 () Bool)

(assert (=> b!3189529 m!3448423))

(declare-fun m!3448425 () Bool)

(assert (=> b!3189529 m!3448425))

(declare-fun m!3448427 () Bool)

(assert (=> b!3189529 m!3448427))

(declare-fun m!3448429 () Bool)

(assert (=> b!3189529 m!3448429))

(declare-fun m!3448431 () Bool)

(assert (=> b!3189529 m!3448431))

(assert (=> b!3189529 m!3448425))

(declare-fun m!3448433 () Bool)

(assert (=> start!299242 m!3448433))

(check-sat (not b!3189530) (not b!3189543) (not b_next!84979) (not b!3189518) (not b!3189514) (not b!3189533) (not b!3189544) (not b!3189516) b_and!211279 (not b_next!84971) (not b!3189532) (not b!3189538) (not b!3189541) (not b_next!84975) b_and!211275 (not b!3189517) (not b!3189539) b_and!211281 (not b!3189513) (not b!3189522) b_and!211283 b_and!211277 (not b!3189523) (not b_next!84977) b_and!211285 (not b!3189519) (not b!3189512) (not b!3189534) (not b!3189531) (not b!3189536) (not b!3189528) (not b_next!84969) (not start!299242) (not b!3189540) (not b!3189542) (not b!3189529) (not b_next!84973) (not b!3189526))
(check-sat (not b_next!84979) b_and!211281 b_and!211279 (not b_next!84971) (not b_next!84969) (not b_next!84973) (not b_next!84975) b_and!211275 b_and!211283 b_and!211277 (not b_next!84977) b_and!211285)
