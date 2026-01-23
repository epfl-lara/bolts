; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!298434 () Bool)

(assert start!298434)

(declare-fun b!3184153 () Bool)

(declare-fun b_free!84057 () Bool)

(declare-fun b_next!84761 () Bool)

(assert (=> b!3184153 (= b_free!84057 (not b_next!84761))))

(declare-fun tp!1007166 () Bool)

(declare-fun b_and!210627 () Bool)

(assert (=> b!3184153 (= tp!1007166 b_and!210627)))

(declare-fun b_free!84059 () Bool)

(declare-fun b_next!84763 () Bool)

(assert (=> b!3184153 (= b_free!84059 (not b_next!84763))))

(declare-fun tp!1007169 () Bool)

(declare-fun b_and!210629 () Bool)

(assert (=> b!3184153 (= tp!1007169 b_and!210629)))

(declare-fun b!3184152 () Bool)

(declare-fun b_free!84061 () Bool)

(declare-fun b_next!84765 () Bool)

(assert (=> b!3184152 (= b_free!84061 (not b_next!84765))))

(declare-fun tp!1007170 () Bool)

(declare-fun b_and!210631 () Bool)

(assert (=> b!3184152 (= tp!1007170 b_and!210631)))

(declare-fun b_free!84063 () Bool)

(declare-fun b_next!84767 () Bool)

(assert (=> b!3184152 (= b_free!84063 (not b_next!84767))))

(declare-fun tp!1007168 () Bool)

(declare-fun b_and!210633 () Bool)

(assert (=> b!3184152 (= tp!1007168 b_and!210633)))

(declare-fun b!3184175 () Bool)

(declare-fun b_free!84065 () Bool)

(declare-fun b_next!84769 () Bool)

(assert (=> b!3184175 (= b_free!84065 (not b_next!84769))))

(declare-fun tp!1007174 () Bool)

(declare-fun b_and!210635 () Bool)

(assert (=> b!3184175 (= tp!1007174 b_and!210635)))

(declare-fun b_free!84067 () Bool)

(declare-fun b_next!84771 () Bool)

(assert (=> b!3184175 (= b_free!84067 (not b_next!84771))))

(declare-fun tp!1007164 () Bool)

(declare-fun b_and!210637 () Bool)

(assert (=> b!3184175 (= tp!1007164 b_and!210637)))

(declare-fun b!3184150 () Bool)

(declare-fun e!1984094 () Bool)

(declare-fun e!1984088 () Bool)

(assert (=> b!3184150 (= e!1984094 e!1984088)))

(declare-fun res!1294437 () Bool)

(assert (=> b!3184150 (=> res!1294437 e!1984088)))

(declare-fun lt!1070870 () Bool)

(assert (=> b!3184150 (= res!1294437 lt!1070870)))

(declare-datatypes ((Unit!50199 0))(
  ( (Unit!50200) )
))
(declare-fun lt!1070873 () Unit!50199)

(declare-fun e!1984099 () Unit!50199)

(assert (=> b!3184150 (= lt!1070873 e!1984099)))

(declare-fun c!534725 () Bool)

(assert (=> b!3184150 (= c!534725 lt!1070870)))

(declare-datatypes ((C!19968 0))(
  ( (C!19969 (val!12032 Int)) )
))
(declare-datatypes ((Regex!9891 0))(
  ( (ElementMatch!9891 (c!534726 C!19968)) (Concat!15253 (regOne!20294 Regex!9891) (regTwo!20294 Regex!9891)) (EmptyExpr!9891) (Star!9891 (reg!10220 Regex!9891)) (EmptyLang!9891) (Union!9891 (regOne!20295 Regex!9891) (regTwo!20295 Regex!9891)) )
))
(declare-datatypes ((String!40143 0))(
  ( (String!40144 (value!166696 String)) )
))
(declare-datatypes ((List!35914 0))(
  ( (Nil!35790) (Cons!35790 (h!41210 (_ BitVec 16)) (t!235425 List!35914)) )
))
(declare-datatypes ((TokenValue!5362 0))(
  ( (FloatLiteralValue!10724 (text!37979 List!35914)) (TokenValueExt!5361 (__x!22941 Int)) (Broken!26810 (value!166697 List!35914)) (Object!5485) (End!5362) (Def!5362) (Underscore!5362) (Match!5362) (Else!5362) (Error!5362) (Case!5362) (If!5362) (Extends!5362) (Abstract!5362) (Class!5362) (Val!5362) (DelimiterValue!10724 (del!5422 List!35914)) (KeywordValue!5368 (value!166698 List!35914)) (CommentValue!10724 (value!166699 List!35914)) (WhitespaceValue!10724 (value!166700 List!35914)) (IndentationValue!5362 (value!166701 List!35914)) (String!40145) (Int32!5362) (Broken!26811 (value!166702 List!35914)) (Boolean!5363) (Unit!50201) (OperatorValue!5365 (op!5422 List!35914)) (IdentifierValue!10724 (value!166703 List!35914)) (IdentifierValue!10725 (value!166704 List!35914)) (WhitespaceValue!10725 (value!166705 List!35914)) (True!10724) (False!10724) (Broken!26812 (value!166706 List!35914)) (Broken!26813 (value!166707 List!35914)) (True!10725) (RightBrace!5362) (RightBracket!5362) (Colon!5362) (Null!5362) (Comma!5362) (LeftBracket!5362) (False!10725) (LeftBrace!5362) (ImaginaryLiteralValue!5362 (text!37980 List!35914)) (StringLiteralValue!16086 (value!166708 List!35914)) (EOFValue!5362 (value!166709 List!35914)) (IdentValue!5362 (value!166710 List!35914)) (DelimiterValue!10725 (value!166711 List!35914)) (DedentValue!5362 (value!166712 List!35914)) (NewLineValue!5362 (value!166713 List!35914)) (IntegerValue!16086 (value!166714 (_ BitVec 32)) (text!37981 List!35914)) (IntegerValue!16087 (value!166715 Int) (text!37982 List!35914)) (Times!5362) (Or!5362) (Equal!5362) (Minus!5362) (Broken!26814 (value!166716 List!35914)) (And!5362) (Div!5362) (LessEqual!5362) (Mod!5362) (Concat!15254) (Not!5362) (Plus!5362) (SpaceValue!5362 (value!166717 List!35914)) (IntegerValue!16088 (value!166718 Int) (text!37983 List!35914)) (StringLiteralValue!16087 (text!37984 List!35914)) (FloatLiteralValue!10725 (text!37985 List!35914)) (BytesLiteralValue!5362 (value!166719 List!35914)) (CommentValue!10725 (value!166720 List!35914)) (StringLiteralValue!16088 (value!166721 List!35914)) (ErrorTokenValue!5362 (msg!5423 List!35914)) )
))
(declare-datatypes ((List!35915 0))(
  ( (Nil!35791) (Cons!35791 (h!41211 C!19968) (t!235426 List!35915)) )
))
(declare-datatypes ((IArray!21283 0))(
  ( (IArray!21284 (innerList!10699 List!35915)) )
))
(declare-datatypes ((Conc!10639 0))(
  ( (Node!10639 (left!27835 Conc!10639) (right!28165 Conc!10639) (csize!21508 Int) (cheight!10850 Int)) (Leaf!16816 (xs!13757 IArray!21283) (csize!21509 Int)) (Empty!10639) )
))
(declare-datatypes ((BalanceConc!20892 0))(
  ( (BalanceConc!20893 (c!534727 Conc!10639)) )
))
(declare-datatypes ((TokenValueInjection!10152 0))(
  ( (TokenValueInjection!10153 (toValue!7192 Int) (toChars!7051 Int)) )
))
(declare-datatypes ((Rule!10064 0))(
  ( (Rule!10065 (regex!5132 Regex!9891) (tag!5644 String!40143) (isSeparator!5132 Bool) (transformation!5132 TokenValueInjection!10152)) )
))
(declare-datatypes ((Token!9630 0))(
  ( (Token!9631 (value!166722 TokenValue!5362) (rule!7550 Rule!10064) (size!27002 Int) (originalCharacters!5846 List!35915)) )
))
(declare-fun separatorToken!241 () Token!9630)

(declare-fun lt!1070872 () C!19968)

(declare-fun contains!6343 (List!35915 C!19968) Bool)

(declare-fun usedCharacters!476 (Regex!9891) List!35915)

(assert (=> b!3184150 (= lt!1070870 (not (contains!6343 (usedCharacters!476 (regex!5132 (rule!7550 separatorToken!241))) lt!1070872)))))

(declare-fun lt!1070869 () List!35915)

(declare-fun head!6961 (List!35915) C!19968)

(assert (=> b!3184150 (= lt!1070872 (head!6961 lt!1070869))))

(declare-datatypes ((List!35916 0))(
  ( (Nil!35792) (Cons!35792 (h!41212 Token!9630) (t!235427 List!35916)) )
))
(declare-fun tokens!494 () List!35916)

(declare-fun lt!1070862 () List!35915)

(declare-datatypes ((LexerInterface!4721 0))(
  ( (LexerInterfaceExt!4718 (__x!22942 Int)) (Lexer!4719) )
))
(declare-fun thiss!18206 () LexerInterface!4721)

(declare-fun lt!1070876 () BalanceConc!20892)

(declare-datatypes ((tuple2!35142 0))(
  ( (tuple2!35143 (_1!20705 Token!9630) (_2!20705 List!35915)) )
))
(declare-datatypes ((Option!6995 0))(
  ( (None!6994) (Some!6994 (v!35464 tuple2!35142)) )
))
(declare-fun maxPrefixOneRule!1526 (LexerInterface!4721 Rule!10064 List!35915) Option!6995)

(declare-fun apply!8056 (TokenValueInjection!10152 BalanceConc!20892) TokenValue!5362)

(declare-fun size!27003 (List!35915) Int)

(assert (=> b!3184150 (= (maxPrefixOneRule!1526 thiss!18206 (rule!7550 (h!41212 tokens!494)) lt!1070862) (Some!6994 (tuple2!35143 (Token!9631 (apply!8056 (transformation!5132 (rule!7550 (h!41212 tokens!494))) lt!1070876) (rule!7550 (h!41212 tokens!494)) (size!27003 lt!1070862) lt!1070862) Nil!35791)))))

(declare-fun lt!1070880 () Unit!50199)

(declare-datatypes ((List!35917 0))(
  ( (Nil!35793) (Cons!35793 (h!41213 Rule!10064) (t!235428 List!35917)) )
))
(declare-fun rules!2135 () List!35917)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!639 (LexerInterface!4721 List!35917 List!35915 List!35915 List!35915 Rule!10064) Unit!50199)

(assert (=> b!3184150 (= lt!1070880 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!639 thiss!18206 rules!2135 lt!1070862 lt!1070862 Nil!35791 (rule!7550 (h!41212 tokens!494))))))

(declare-fun e!1984092 () Bool)

(assert (=> b!3184150 e!1984092))

(declare-fun res!1294441 () Bool)

(assert (=> b!3184150 (=> (not res!1294441) (not e!1984092))))

(declare-datatypes ((Option!6996 0))(
  ( (None!6995) (Some!6995 (v!35465 Rule!10064)) )
))
(declare-fun lt!1070865 () Option!6996)

(declare-fun isDefined!5478 (Option!6996) Bool)

(assert (=> b!3184150 (= res!1294441 (isDefined!5478 lt!1070865))))

(declare-fun getRuleFromTag!861 (LexerInterface!4721 List!35917 String!40143) Option!6996)

(assert (=> b!3184150 (= lt!1070865 (getRuleFromTag!861 thiss!18206 rules!2135 (tag!5644 (rule!7550 separatorToken!241))))))

(declare-fun lt!1070864 () Unit!50199)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!861 (LexerInterface!4721 List!35917 List!35915 Token!9630) Unit!50199)

(assert (=> b!3184150 (= lt!1070864 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!861 thiss!18206 rules!2135 lt!1070869 separatorToken!241))))

(declare-fun e!1984098 () Bool)

(assert (=> b!3184150 e!1984098))

(declare-fun res!1294435 () Bool)

(assert (=> b!3184150 (=> (not res!1294435) (not e!1984098))))

(declare-fun lt!1070875 () Option!6996)

(assert (=> b!3184150 (= res!1294435 (isDefined!5478 lt!1070875))))

(assert (=> b!3184150 (= lt!1070875 (getRuleFromTag!861 thiss!18206 rules!2135 (tag!5644 (rule!7550 (h!41212 tokens!494)))))))

(declare-fun lt!1070874 () Unit!50199)

(assert (=> b!3184150 (= lt!1070874 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!861 thiss!18206 rules!2135 lt!1070862 (h!41212 tokens!494)))))

(declare-fun lt!1070881 () Unit!50199)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!782 (LexerInterface!4721 List!35917 List!35916 Token!9630) Unit!50199)

(assert (=> b!3184150 (= lt!1070881 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!782 thiss!18206 rules!2135 tokens!494 (h!41212 tokens!494)))))

(declare-fun isEmpty!19915 (List!35915) Bool)

(declare-fun getSuffix!1348 (List!35915 List!35915) List!35915)

(assert (=> b!3184150 (isEmpty!19915 (getSuffix!1348 lt!1070862 lt!1070862))))

(declare-fun lt!1070868 () Unit!50199)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!26 (List!35915) Unit!50199)

(assert (=> b!3184150 (= lt!1070868 (lemmaGetSuffixOnListWithItSelfIsEmpty!26 lt!1070862))))

(declare-fun b!3184151 () Bool)

(declare-fun e!1984108 () Bool)

(assert (=> b!3184151 (= e!1984108 e!1984094)))

(declare-fun res!1294442 () Bool)

(assert (=> b!3184151 (=> res!1294442 e!1984094)))

(declare-fun lt!1070867 () List!35915)

(declare-fun lt!1070879 () List!35915)

(assert (=> b!3184151 (= res!1294442 (not (= lt!1070867 lt!1070879)))))

(declare-fun ++!8560 (List!35915 List!35915) List!35915)

(assert (=> b!3184151 (= lt!1070879 (++!8560 lt!1070862 lt!1070869))))

(declare-fun lt!1070878 () BalanceConc!20892)

(declare-fun list!12705 (BalanceConc!20892) List!35915)

(assert (=> b!3184151 (= lt!1070867 (list!12705 lt!1070878))))

(declare-fun charsOf!3154 (Token!9630) BalanceConc!20892)

(assert (=> b!3184151 (= lt!1070869 (list!12705 (charsOf!3154 separatorToken!241)))))

(declare-datatypes ((IArray!21285 0))(
  ( (IArray!21286 (innerList!10700 List!35916)) )
))
(declare-datatypes ((Conc!10640 0))(
  ( (Node!10640 (left!27836 Conc!10640) (right!28166 Conc!10640) (csize!21510 Int) (cheight!10851 Int)) (Leaf!16817 (xs!13758 IArray!21285) (csize!21511 Int)) (Empty!10640) )
))
(declare-datatypes ((BalanceConc!20894 0))(
  ( (BalanceConc!20895 (c!534728 Conc!10640)) )
))
(declare-fun lt!1070885 () BalanceConc!20894)

(declare-fun printWithSeparatorToken!30 (LexerInterface!4721 BalanceConc!20894 Token!9630) BalanceConc!20892)

(assert (=> b!3184151 (= lt!1070878 (printWithSeparatorToken!30 thiss!18206 lt!1070885 separatorToken!241))))

(declare-fun e!1984084 () Bool)

(assert (=> b!3184152 (= e!1984084 (and tp!1007170 tp!1007168))))

(declare-fun res!1294432 () Bool)

(declare-fun e!1984106 () Bool)

(assert (=> start!298434 (=> (not res!1294432) (not e!1984106))))

(get-info :version)

(assert (=> start!298434 (= res!1294432 ((_ is Lexer!4719) thiss!18206))))

(assert (=> start!298434 e!1984106))

(assert (=> start!298434 true))

(declare-fun e!1984103 () Bool)

(assert (=> start!298434 e!1984103))

(declare-fun e!1984082 () Bool)

(declare-fun inv!48641 (Token!9630) Bool)

(assert (=> start!298434 (and (inv!48641 separatorToken!241) e!1984082)))

(declare-fun e!1984089 () Bool)

(assert (=> start!298434 e!1984089))

(declare-fun e!1984095 () Bool)

(assert (=> b!3184153 (= e!1984095 (and tp!1007166 tp!1007169))))

(declare-fun b!3184154 () Bool)

(declare-fun e!1984087 () Bool)

(declare-fun tp!1007176 () Bool)

(assert (=> b!3184154 (= e!1984103 (and e!1984087 tp!1007176))))

(declare-fun b!3184155 () Bool)

(declare-fun e!1984109 () Bool)

(declare-fun e!1984100 () Bool)

(assert (=> b!3184155 (= e!1984109 e!1984100)))

(declare-fun res!1294445 () Bool)

(assert (=> b!3184155 (=> res!1294445 e!1984100)))

(declare-fun isEmpty!19916 (BalanceConc!20894) Bool)

(declare-datatypes ((tuple2!35144 0))(
  ( (tuple2!35145 (_1!20706 BalanceConc!20894) (_2!20706 BalanceConc!20892)) )
))
(declare-fun lex!2061 (LexerInterface!4721 List!35917 BalanceConc!20892) tuple2!35144)

(assert (=> b!3184155 (= res!1294445 (isEmpty!19916 (_1!20706 (lex!2061 thiss!18206 rules!2135 lt!1070876))))))

(declare-fun seqFromList!3343 (List!35915) BalanceConc!20892)

(assert (=> b!3184155 (= lt!1070876 (seqFromList!3343 lt!1070862))))

(declare-fun b!3184156 () Bool)

(declare-fun e!1984083 () Bool)

(declare-fun tp!1007165 () Bool)

(declare-fun inv!21 (TokenValue!5362) Bool)

(assert (=> b!3184156 (= e!1984082 (and (inv!21 (value!166722 separatorToken!241)) e!1984083 tp!1007165))))

(declare-fun b!3184157 () Bool)

(declare-fun e!1984110 () Bool)

(assert (=> b!3184157 (= e!1984110 false)))

(declare-fun b!3184158 () Bool)

(declare-fun res!1294443 () Bool)

(declare-fun e!1984096 () Bool)

(assert (=> b!3184158 (=> (not res!1294443) (not e!1984096))))

(assert (=> b!3184158 (= res!1294443 (and (not ((_ is Nil!35792) tokens!494)) ((_ is Nil!35792) (t!235427 tokens!494))))))

(declare-fun b!3184159 () Bool)

(declare-fun e!1984102 () Bool)

(declare-fun e!1984090 () Bool)

(declare-fun tp!1007172 () Bool)

(assert (=> b!3184159 (= e!1984090 (and (inv!21 (value!166722 (h!41212 tokens!494))) e!1984102 tp!1007172))))

(declare-fun b!3184160 () Bool)

(declare-fun e!1984101 () Bool)

(declare-fun lt!1070863 () Rule!10064)

(assert (=> b!3184160 (= e!1984101 (= (rule!7550 separatorToken!241) lt!1070863))))

(declare-fun b!3184161 () Bool)

(declare-fun res!1294439 () Bool)

(assert (=> b!3184161 (=> (not res!1294439) (not e!1984106))))

(declare-fun isEmpty!19917 (List!35917) Bool)

(assert (=> b!3184161 (= res!1294439 (not (isEmpty!19917 rules!2135)))))

(declare-fun b!3184162 () Bool)

(declare-fun e!1984086 () Bool)

(declare-fun tp!1007175 () Bool)

(declare-fun inv!48638 (String!40143) Bool)

(declare-fun inv!48642 (TokenValueInjection!10152) Bool)

(assert (=> b!3184162 (= e!1984087 (and tp!1007175 (inv!48638 (tag!5644 (h!41213 rules!2135))) (inv!48642 (transformation!5132 (h!41213 rules!2135))) e!1984086))))

(declare-fun b!3184163 () Bool)

(declare-fun Unit!50202 () Unit!50199)

(assert (=> b!3184163 (= e!1984099 Unit!50202)))

(declare-fun lt!1070866 () Unit!50199)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!330 (Regex!9891 List!35915 C!19968) Unit!50199)

(assert (=> b!3184163 (= lt!1070866 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!330 (regex!5132 (rule!7550 separatorToken!241)) lt!1070869 lt!1070872))))

(declare-fun res!1294431 () Bool)

(declare-fun matchR!4549 (Regex!9891 List!35915) Bool)

(assert (=> b!3184163 (= res!1294431 (not (matchR!4549 (regex!5132 (rule!7550 separatorToken!241)) lt!1070869)))))

(assert (=> b!3184163 (=> (not res!1294431) (not e!1984110))))

(assert (=> b!3184163 e!1984110))

(declare-fun b!3184164 () Bool)

(declare-fun e!1984097 () Bool)

(assert (=> b!3184164 (= e!1984098 e!1984097)))

(declare-fun res!1294444 () Bool)

(assert (=> b!3184164 (=> (not res!1294444) (not e!1984097))))

(declare-fun lt!1070883 () Rule!10064)

(assert (=> b!3184164 (= res!1294444 (matchR!4549 (regex!5132 lt!1070883) lt!1070862))))

(declare-fun get!11389 (Option!6996) Rule!10064)

(assert (=> b!3184164 (= lt!1070883 (get!11389 lt!1070875))))

(declare-fun b!3184165 () Bool)

(declare-fun e!1984085 () Bool)

(assert (=> b!3184165 (= e!1984085 e!1984109)))

(declare-fun res!1294446 () Bool)

(assert (=> b!3184165 (=> res!1294446 e!1984109)))

(declare-fun lt!1070877 () List!35915)

(declare-fun lt!1070882 () List!35915)

(assert (=> b!3184165 (= res!1294446 (or (not (= lt!1070882 lt!1070862)) (not (= lt!1070877 lt!1070862))))))

(assert (=> b!3184165 (= lt!1070862 (list!12705 (charsOf!3154 (h!41212 tokens!494))))))

(declare-fun b!3184166 () Bool)

(declare-fun tp!1007167 () Bool)

(assert (=> b!3184166 (= e!1984102 (and tp!1007167 (inv!48638 (tag!5644 (rule!7550 (h!41212 tokens!494)))) (inv!48642 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) e!1984084))))

(declare-fun b!3184167 () Bool)

(assert (=> b!3184167 (= e!1984092 e!1984101)))

(declare-fun res!1294433 () Bool)

(assert (=> b!3184167 (=> (not res!1294433) (not e!1984101))))

(assert (=> b!3184167 (= res!1294433 (matchR!4549 (regex!5132 lt!1070863) lt!1070869))))

(assert (=> b!3184167 (= lt!1070863 (get!11389 lt!1070865))))

(declare-fun b!3184168 () Bool)

(declare-fun res!1294447 () Bool)

(assert (=> b!3184168 (=> (not res!1294447) (not e!1984096))))

(declare-fun rulesProduceIndividualToken!2213 (LexerInterface!4721 List!35917 Token!9630) Bool)

(assert (=> b!3184168 (= res!1294447 (rulesProduceIndividualToken!2213 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3184169 () Bool)

(declare-fun rulesValidInductive!1757 (LexerInterface!4721 List!35917) Bool)

(assert (=> b!3184169 (= e!1984088 (rulesValidInductive!1757 thiss!18206 rules!2135))))

(declare-fun maxPrefix!2399 (LexerInterface!4721 List!35917 List!35915) Option!6995)

(assert (=> b!3184169 (= (maxPrefix!2399 thiss!18206 rules!2135 lt!1070879) (Some!6994 (tuple2!35143 (h!41212 tokens!494) lt!1070869)))))

(declare-fun lt!1070884 () Unit!50199)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!110 (LexerInterface!4721 List!35917 Token!9630 Rule!10064 List!35915 Rule!10064) Unit!50199)

(assert (=> b!3184169 (= lt!1070884 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!110 thiss!18206 rules!2135 (h!41212 tokens!494) (rule!7550 (h!41212 tokens!494)) lt!1070869 (rule!7550 separatorToken!241)))))

(assert (=> b!3184169 (not (contains!6343 (usedCharacters!476 (regex!5132 (rule!7550 (h!41212 tokens!494)))) lt!1070872))))

(declare-fun lt!1070871 () Unit!50199)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!108 (LexerInterface!4721 List!35917 List!35917 Rule!10064 Rule!10064 C!19968) Unit!50199)

(assert (=> b!3184169 (= lt!1070871 (lemmaNonSepRuleNotContainsCharContainedInASepRule!108 thiss!18206 rules!2135 rules!2135 (rule!7550 (h!41212 tokens!494)) (rule!7550 separatorToken!241) lt!1070872))))

(declare-fun b!3184170 () Bool)

(assert (=> b!3184170 (= e!1984096 (not e!1984085))))

(declare-fun res!1294428 () Bool)

(assert (=> b!3184170 (=> res!1294428 e!1984085)))

(assert (=> b!3184170 (= res!1294428 (not (= lt!1070877 lt!1070882)))))

(declare-fun printList!1275 (LexerInterface!4721 List!35916) List!35915)

(assert (=> b!3184170 (= lt!1070882 (printList!1275 thiss!18206 (Cons!35792 (h!41212 tokens!494) Nil!35792)))))

(declare-fun lt!1070886 () BalanceConc!20892)

(assert (=> b!3184170 (= lt!1070877 (list!12705 lt!1070886))))

(declare-fun lt!1070888 () BalanceConc!20894)

(declare-fun printTailRec!1220 (LexerInterface!4721 BalanceConc!20894 Int BalanceConc!20892) BalanceConc!20892)

(assert (=> b!3184170 (= lt!1070886 (printTailRec!1220 thiss!18206 lt!1070888 0 (BalanceConc!20893 Empty!10639)))))

(declare-fun print!1788 (LexerInterface!4721 BalanceConc!20894) BalanceConc!20892)

(assert (=> b!3184170 (= lt!1070886 (print!1788 thiss!18206 lt!1070888))))

(declare-fun singletonSeq!2228 (Token!9630) BalanceConc!20894)

(assert (=> b!3184170 (= lt!1070888 (singletonSeq!2228 (h!41212 tokens!494)))))

(declare-fun b!3184171 () Bool)

(declare-fun res!1294430 () Bool)

(assert (=> b!3184171 (=> (not res!1294430) (not e!1984096))))

(declare-fun sepAndNonSepRulesDisjointChars!1326 (List!35917 List!35917) Bool)

(assert (=> b!3184171 (= res!1294430 (sepAndNonSepRulesDisjointChars!1326 rules!2135 rules!2135))))

(declare-fun b!3184172 () Bool)

(declare-fun Unit!50203 () Unit!50199)

(assert (=> b!3184172 (= e!1984099 Unit!50203)))

(declare-fun b!3184173 () Bool)

(declare-fun res!1294427 () Bool)

(assert (=> b!3184173 (=> (not res!1294427) (not e!1984096))))

(declare-fun lambda!116493 () Int)

(declare-fun forall!7250 (List!35916 Int) Bool)

(assert (=> b!3184173 (= res!1294427 (forall!7250 tokens!494 lambda!116493))))

(declare-fun b!3184174 () Bool)

(declare-fun res!1294429 () Bool)

(assert (=> b!3184174 (=> (not res!1294429) (not e!1984106))))

(declare-fun rulesInvariant!4118 (LexerInterface!4721 List!35917) Bool)

(assert (=> b!3184174 (= res!1294429 (rulesInvariant!4118 thiss!18206 rules!2135))))

(assert (=> b!3184175 (= e!1984086 (and tp!1007174 tp!1007164))))

(declare-fun b!3184176 () Bool)

(declare-fun res!1294440 () Bool)

(assert (=> b!3184176 (=> res!1294440 e!1984109)))

(assert (=> b!3184176 (= res!1294440 (not (rulesProduceIndividualToken!2213 thiss!18206 rules!2135 (h!41212 tokens!494))))))

(declare-fun b!3184177 () Bool)

(assert (=> b!3184177 (= e!1984106 e!1984096)))

(declare-fun res!1294438 () Bool)

(assert (=> b!3184177 (=> (not res!1294438) (not e!1984096))))

(declare-fun rulesProduceEachTokenIndividually!1172 (LexerInterface!4721 List!35917 BalanceConc!20894) Bool)

(assert (=> b!3184177 (= res!1294438 (rulesProduceEachTokenIndividually!1172 thiss!18206 rules!2135 lt!1070885))))

(declare-fun seqFromList!3344 (List!35916) BalanceConc!20894)

(assert (=> b!3184177 (= lt!1070885 (seqFromList!3344 tokens!494))))

(declare-fun b!3184178 () Bool)

(assert (=> b!3184178 (= e!1984100 e!1984108)))

(declare-fun res!1294434 () Bool)

(assert (=> b!3184178 (=> res!1294434 e!1984108)))

(assert (=> b!3184178 (= res!1294434 (isSeparator!5132 (rule!7550 (h!41212 tokens!494))))))

(declare-fun lt!1070887 () Unit!50199)

(declare-fun forallContained!1115 (List!35916 Int Token!9630) Unit!50199)

(assert (=> b!3184178 (= lt!1070887 (forallContained!1115 tokens!494 lambda!116493 (h!41212 tokens!494)))))

(declare-fun tp!1007171 () Bool)

(declare-fun b!3184179 () Bool)

(assert (=> b!3184179 (= e!1984089 (and (inv!48641 (h!41212 tokens!494)) e!1984090 tp!1007171))))

(declare-fun tp!1007173 () Bool)

(declare-fun b!3184180 () Bool)

(assert (=> b!3184180 (= e!1984083 (and tp!1007173 (inv!48638 (tag!5644 (rule!7550 separatorToken!241))) (inv!48642 (transformation!5132 (rule!7550 separatorToken!241))) e!1984095))))

(declare-fun b!3184181 () Bool)

(assert (=> b!3184181 (= e!1984097 (= (rule!7550 (h!41212 tokens!494)) lt!1070883))))

(declare-fun b!3184182 () Bool)

(declare-fun res!1294436 () Bool)

(assert (=> b!3184182 (=> (not res!1294436) (not e!1984096))))

(assert (=> b!3184182 (= res!1294436 (isSeparator!5132 (rule!7550 separatorToken!241)))))

(assert (= (and start!298434 res!1294432) b!3184161))

(assert (= (and b!3184161 res!1294439) b!3184174))

(assert (= (and b!3184174 res!1294429) b!3184177))

(assert (= (and b!3184177 res!1294438) b!3184168))

(assert (= (and b!3184168 res!1294447) b!3184182))

(assert (= (and b!3184182 res!1294436) b!3184173))

(assert (= (and b!3184173 res!1294427) b!3184171))

(assert (= (and b!3184171 res!1294430) b!3184158))

(assert (= (and b!3184158 res!1294443) b!3184170))

(assert (= (and b!3184170 (not res!1294428)) b!3184165))

(assert (= (and b!3184165 (not res!1294446)) b!3184176))

(assert (= (and b!3184176 (not res!1294440)) b!3184155))

(assert (= (and b!3184155 (not res!1294445)) b!3184178))

(assert (= (and b!3184178 (not res!1294434)) b!3184151))

(assert (= (and b!3184151 (not res!1294442)) b!3184150))

(assert (= (and b!3184150 res!1294435) b!3184164))

(assert (= (and b!3184164 res!1294444) b!3184181))

(assert (= (and b!3184150 res!1294441) b!3184167))

(assert (= (and b!3184167 res!1294433) b!3184160))

(assert (= (and b!3184150 c!534725) b!3184163))

(assert (= (and b!3184150 (not c!534725)) b!3184172))

(assert (= (and b!3184163 res!1294431) b!3184157))

(assert (= (and b!3184150 (not res!1294437)) b!3184169))

(assert (= b!3184162 b!3184175))

(assert (= b!3184154 b!3184162))

(assert (= (and start!298434 ((_ is Cons!35793) rules!2135)) b!3184154))

(assert (= b!3184180 b!3184153))

(assert (= b!3184156 b!3184180))

(assert (= start!298434 b!3184156))

(assert (= b!3184166 b!3184152))

(assert (= b!3184159 b!3184166))

(assert (= b!3184179 b!3184159))

(assert (= (and start!298434 ((_ is Cons!35792) tokens!494)) b!3184179))

(declare-fun m!3441241 () Bool)

(assert (=> b!3184171 m!3441241))

(declare-fun m!3441243 () Bool)

(assert (=> b!3184162 m!3441243))

(declare-fun m!3441245 () Bool)

(assert (=> b!3184162 m!3441245))

(declare-fun m!3441247 () Bool)

(assert (=> b!3184169 m!3441247))

(declare-fun m!3441249 () Bool)

(assert (=> b!3184169 m!3441249))

(declare-fun m!3441251 () Bool)

(assert (=> b!3184169 m!3441251))

(declare-fun m!3441253 () Bool)

(assert (=> b!3184169 m!3441253))

(declare-fun m!3441255 () Bool)

(assert (=> b!3184169 m!3441255))

(declare-fun m!3441257 () Bool)

(assert (=> b!3184169 m!3441257))

(assert (=> b!3184169 m!3441249))

(declare-fun m!3441259 () Bool)

(assert (=> b!3184156 m!3441259))

(declare-fun m!3441261 () Bool)

(assert (=> b!3184163 m!3441261))

(declare-fun m!3441263 () Bool)

(assert (=> b!3184163 m!3441263))

(declare-fun m!3441265 () Bool)

(assert (=> b!3184166 m!3441265))

(declare-fun m!3441267 () Bool)

(assert (=> b!3184166 m!3441267))

(declare-fun m!3441269 () Bool)

(assert (=> b!3184176 m!3441269))

(declare-fun m!3441271 () Bool)

(assert (=> b!3184170 m!3441271))

(declare-fun m!3441273 () Bool)

(assert (=> b!3184170 m!3441273))

(declare-fun m!3441275 () Bool)

(assert (=> b!3184170 m!3441275))

(declare-fun m!3441277 () Bool)

(assert (=> b!3184170 m!3441277))

(declare-fun m!3441279 () Bool)

(assert (=> b!3184170 m!3441279))

(declare-fun m!3441281 () Bool)

(assert (=> start!298434 m!3441281))

(declare-fun m!3441283 () Bool)

(assert (=> b!3184168 m!3441283))

(declare-fun m!3441285 () Bool)

(assert (=> b!3184173 m!3441285))

(declare-fun m!3441287 () Bool)

(assert (=> b!3184151 m!3441287))

(declare-fun m!3441289 () Bool)

(assert (=> b!3184151 m!3441289))

(declare-fun m!3441291 () Bool)

(assert (=> b!3184151 m!3441291))

(declare-fun m!3441293 () Bool)

(assert (=> b!3184151 m!3441293))

(assert (=> b!3184151 m!3441287))

(declare-fun m!3441295 () Bool)

(assert (=> b!3184151 m!3441295))

(declare-fun m!3441297 () Bool)

(assert (=> b!3184178 m!3441297))

(declare-fun m!3441299 () Bool)

(assert (=> b!3184167 m!3441299))

(declare-fun m!3441301 () Bool)

(assert (=> b!3184167 m!3441301))

(declare-fun m!3441303 () Bool)

(assert (=> b!3184155 m!3441303))

(declare-fun m!3441305 () Bool)

(assert (=> b!3184155 m!3441305))

(declare-fun m!3441307 () Bool)

(assert (=> b!3184155 m!3441307))

(declare-fun m!3441309 () Bool)

(assert (=> b!3184150 m!3441309))

(declare-fun m!3441311 () Bool)

(assert (=> b!3184150 m!3441311))

(declare-fun m!3441313 () Bool)

(assert (=> b!3184150 m!3441313))

(declare-fun m!3441315 () Bool)

(assert (=> b!3184150 m!3441315))

(declare-fun m!3441317 () Bool)

(assert (=> b!3184150 m!3441317))

(declare-fun m!3441319 () Bool)

(assert (=> b!3184150 m!3441319))

(declare-fun m!3441321 () Bool)

(assert (=> b!3184150 m!3441321))

(declare-fun m!3441323 () Bool)

(assert (=> b!3184150 m!3441323))

(declare-fun m!3441325 () Bool)

(assert (=> b!3184150 m!3441325))

(declare-fun m!3441327 () Bool)

(assert (=> b!3184150 m!3441327))

(declare-fun m!3441329 () Bool)

(assert (=> b!3184150 m!3441329))

(declare-fun m!3441331 () Bool)

(assert (=> b!3184150 m!3441331))

(declare-fun m!3441333 () Bool)

(assert (=> b!3184150 m!3441333))

(assert (=> b!3184150 m!3441321))

(declare-fun m!3441335 () Bool)

(assert (=> b!3184150 m!3441335))

(declare-fun m!3441337 () Bool)

(assert (=> b!3184150 m!3441337))

(assert (=> b!3184150 m!3441337))

(declare-fun m!3441339 () Bool)

(assert (=> b!3184150 m!3441339))

(declare-fun m!3441341 () Bool)

(assert (=> b!3184150 m!3441341))

(declare-fun m!3441343 () Bool)

(assert (=> b!3184165 m!3441343))

(assert (=> b!3184165 m!3441343))

(declare-fun m!3441345 () Bool)

(assert (=> b!3184165 m!3441345))

(declare-fun m!3441347 () Bool)

(assert (=> b!3184180 m!3441347))

(declare-fun m!3441349 () Bool)

(assert (=> b!3184180 m!3441349))

(declare-fun m!3441351 () Bool)

(assert (=> b!3184159 m!3441351))

(declare-fun m!3441353 () Bool)

(assert (=> b!3184177 m!3441353))

(declare-fun m!3441355 () Bool)

(assert (=> b!3184177 m!3441355))

(declare-fun m!3441357 () Bool)

(assert (=> b!3184164 m!3441357))

(declare-fun m!3441359 () Bool)

(assert (=> b!3184164 m!3441359))

(declare-fun m!3441361 () Bool)

(assert (=> b!3184161 m!3441361))

(declare-fun m!3441363 () Bool)

(assert (=> b!3184179 m!3441363))

(declare-fun m!3441365 () Bool)

(assert (=> b!3184174 m!3441365))

(check-sat (not b!3184165) (not b!3184164) b_and!210637 b_and!210627 (not b_next!84761) (not b!3184150) (not b!3184151) (not b!3184159) (not b!3184162) (not b!3184167) (not b!3184179) (not start!298434) b_and!210629 (not b!3184171) b_and!210631 (not b!3184169) (not b_next!84769) (not b!3184156) (not b!3184180) (not b!3184154) (not b!3184170) (not b!3184174) (not b!3184178) (not b!3184168) (not b!3184163) (not b_next!84767) (not b!3184155) (not b!3184173) (not b!3184166) (not b!3184177) (not b_next!84763) b_and!210633 (not b_next!84771) (not b_next!84765) (not b!3184176) (not b!3184161) b_and!210635)
(check-sat (not b_next!84769) b_and!210637 b_and!210627 (not b_next!84761) (not b_next!84767) b_and!210629 b_and!210635 b_and!210631 (not b_next!84763) b_and!210633 (not b_next!84771) (not b_next!84765))
(get-model)

(declare-fun d!871079 () Bool)

(declare-fun lt!1070897 () Bool)

(declare-fun isEmpty!19922 (List!35916) Bool)

(declare-fun list!12708 (BalanceConc!20894) List!35916)

(assert (=> d!871079 (= lt!1070897 (isEmpty!19922 (list!12708 (_1!20706 (lex!2061 thiss!18206 rules!2135 lt!1070876)))))))

(declare-fun isEmpty!19923 (Conc!10640) Bool)

(assert (=> d!871079 (= lt!1070897 (isEmpty!19923 (c!534728 (_1!20706 (lex!2061 thiss!18206 rules!2135 lt!1070876)))))))

(assert (=> d!871079 (= (isEmpty!19916 (_1!20706 (lex!2061 thiss!18206 rules!2135 lt!1070876))) lt!1070897)))

(declare-fun bs!539979 () Bool)

(assert (= bs!539979 d!871079))

(declare-fun m!3441383 () Bool)

(assert (=> bs!539979 m!3441383))

(assert (=> bs!539979 m!3441383))

(declare-fun m!3441385 () Bool)

(assert (=> bs!539979 m!3441385))

(declare-fun m!3441387 () Bool)

(assert (=> bs!539979 m!3441387))

(assert (=> b!3184155 d!871079))

(declare-fun b!3184278 () Bool)

(declare-fun e!1984166 () Bool)

(declare-fun e!1984164 () Bool)

(assert (=> b!3184278 (= e!1984166 e!1984164)))

(declare-fun res!1294514 () Bool)

(declare-fun lt!1070929 () tuple2!35144)

(declare-fun size!27006 (BalanceConc!20892) Int)

(assert (=> b!3184278 (= res!1294514 (< (size!27006 (_2!20706 lt!1070929)) (size!27006 lt!1070876)))))

(assert (=> b!3184278 (=> (not res!1294514) (not e!1984164))))

(declare-fun b!3184279 () Bool)

(declare-fun e!1984165 () Bool)

(declare-datatypes ((tuple2!35148 0))(
  ( (tuple2!35149 (_1!20708 List!35916) (_2!20708 List!35915)) )
))
(declare-fun lexList!1277 (LexerInterface!4721 List!35917 List!35915) tuple2!35148)

(assert (=> b!3184279 (= e!1984165 (= (list!12705 (_2!20706 lt!1070929)) (_2!20708 (lexList!1277 thiss!18206 rules!2135 (list!12705 lt!1070876)))))))

(declare-fun b!3184280 () Bool)

(assert (=> b!3184280 (= e!1984166 (= (_2!20706 lt!1070929) lt!1070876))))

(declare-fun b!3184281 () Bool)

(declare-fun res!1294515 () Bool)

(assert (=> b!3184281 (=> (not res!1294515) (not e!1984165))))

(assert (=> b!3184281 (= res!1294515 (= (list!12708 (_1!20706 lt!1070929)) (_1!20708 (lexList!1277 thiss!18206 rules!2135 (list!12705 lt!1070876)))))))

(declare-fun d!871081 () Bool)

(assert (=> d!871081 e!1984165))

(declare-fun res!1294513 () Bool)

(assert (=> d!871081 (=> (not res!1294513) (not e!1984165))))

(assert (=> d!871081 (= res!1294513 e!1984166)))

(declare-fun c!534747 () Bool)

(declare-fun size!27007 (BalanceConc!20894) Int)

(assert (=> d!871081 (= c!534747 (> (size!27007 (_1!20706 lt!1070929)) 0))))

(declare-fun lexTailRecV2!915 (LexerInterface!4721 List!35917 BalanceConc!20892 BalanceConc!20892 BalanceConc!20892 BalanceConc!20894) tuple2!35144)

(assert (=> d!871081 (= lt!1070929 (lexTailRecV2!915 thiss!18206 rules!2135 lt!1070876 (BalanceConc!20893 Empty!10639) lt!1070876 (BalanceConc!20895 Empty!10640)))))

(assert (=> d!871081 (= (lex!2061 thiss!18206 rules!2135 lt!1070876) lt!1070929)))

(declare-fun b!3184282 () Bool)

(assert (=> b!3184282 (= e!1984164 (not (isEmpty!19916 (_1!20706 lt!1070929))))))

(assert (= (and d!871081 c!534747) b!3184278))

(assert (= (and d!871081 (not c!534747)) b!3184280))

(assert (= (and b!3184278 res!1294514) b!3184282))

(assert (= (and d!871081 res!1294513) b!3184281))

(assert (= (and b!3184281 res!1294515) b!3184279))

(declare-fun m!3441467 () Bool)

(assert (=> b!3184282 m!3441467))

(declare-fun m!3441469 () Bool)

(assert (=> b!3184281 m!3441469))

(declare-fun m!3441471 () Bool)

(assert (=> b!3184281 m!3441471))

(assert (=> b!3184281 m!3441471))

(declare-fun m!3441473 () Bool)

(assert (=> b!3184281 m!3441473))

(declare-fun m!3441475 () Bool)

(assert (=> d!871081 m!3441475))

(declare-fun m!3441477 () Bool)

(assert (=> d!871081 m!3441477))

(declare-fun m!3441479 () Bool)

(assert (=> b!3184279 m!3441479))

(assert (=> b!3184279 m!3441471))

(assert (=> b!3184279 m!3441471))

(assert (=> b!3184279 m!3441473))

(declare-fun m!3441481 () Bool)

(assert (=> b!3184278 m!3441481))

(declare-fun m!3441483 () Bool)

(assert (=> b!3184278 m!3441483))

(assert (=> b!3184155 d!871081))

(declare-fun d!871099 () Bool)

(declare-fun fromListB!1504 (List!35915) BalanceConc!20892)

(assert (=> d!871099 (= (seqFromList!3343 lt!1070862) (fromListB!1504 lt!1070862))))

(declare-fun bs!539982 () Bool)

(assert (= bs!539982 d!871099))

(declare-fun m!3441485 () Bool)

(assert (=> bs!539982 m!3441485))

(assert (=> b!3184155 d!871099))

(declare-fun d!871101 () Bool)

(declare-fun lt!1070935 () Bool)

(declare-fun e!1984172 () Bool)

(assert (=> d!871101 (= lt!1070935 e!1984172)))

(declare-fun res!1294523 () Bool)

(assert (=> d!871101 (=> (not res!1294523) (not e!1984172))))

(assert (=> d!871101 (= res!1294523 (= (list!12708 (_1!20706 (lex!2061 thiss!18206 rules!2135 (print!1788 thiss!18206 (singletonSeq!2228 (h!41212 tokens!494)))))) (list!12708 (singletonSeq!2228 (h!41212 tokens!494)))))))

(declare-fun e!1984171 () Bool)

(assert (=> d!871101 (= lt!1070935 e!1984171)))

(declare-fun res!1294522 () Bool)

(assert (=> d!871101 (=> (not res!1294522) (not e!1984171))))

(declare-fun lt!1070934 () tuple2!35144)

(assert (=> d!871101 (= res!1294522 (= (size!27007 (_1!20706 lt!1070934)) 1))))

(assert (=> d!871101 (= lt!1070934 (lex!2061 thiss!18206 rules!2135 (print!1788 thiss!18206 (singletonSeq!2228 (h!41212 tokens!494)))))))

(assert (=> d!871101 (not (isEmpty!19917 rules!2135))))

(assert (=> d!871101 (= (rulesProduceIndividualToken!2213 thiss!18206 rules!2135 (h!41212 tokens!494)) lt!1070935)))

(declare-fun b!3184289 () Bool)

(declare-fun res!1294524 () Bool)

(assert (=> b!3184289 (=> (not res!1294524) (not e!1984171))))

(declare-fun apply!8058 (BalanceConc!20894 Int) Token!9630)

(assert (=> b!3184289 (= res!1294524 (= (apply!8058 (_1!20706 lt!1070934) 0) (h!41212 tokens!494)))))

(declare-fun b!3184290 () Bool)

(declare-fun isEmpty!19924 (BalanceConc!20892) Bool)

(assert (=> b!3184290 (= e!1984171 (isEmpty!19924 (_2!20706 lt!1070934)))))

(declare-fun b!3184291 () Bool)

(assert (=> b!3184291 (= e!1984172 (isEmpty!19924 (_2!20706 (lex!2061 thiss!18206 rules!2135 (print!1788 thiss!18206 (singletonSeq!2228 (h!41212 tokens!494)))))))))

(assert (= (and d!871101 res!1294522) b!3184289))

(assert (= (and b!3184289 res!1294524) b!3184290))

(assert (= (and d!871101 res!1294523) b!3184291))

(assert (=> d!871101 m!3441273))

(declare-fun m!3441487 () Bool)

(assert (=> d!871101 m!3441487))

(assert (=> d!871101 m!3441361))

(declare-fun m!3441489 () Bool)

(assert (=> d!871101 m!3441489))

(assert (=> d!871101 m!3441273))

(assert (=> d!871101 m!3441273))

(declare-fun m!3441491 () Bool)

(assert (=> d!871101 m!3441491))

(declare-fun m!3441493 () Bool)

(assert (=> d!871101 m!3441493))

(assert (=> d!871101 m!3441487))

(declare-fun m!3441495 () Bool)

(assert (=> d!871101 m!3441495))

(declare-fun m!3441497 () Bool)

(assert (=> b!3184289 m!3441497))

(declare-fun m!3441499 () Bool)

(assert (=> b!3184290 m!3441499))

(assert (=> b!3184291 m!3441273))

(assert (=> b!3184291 m!3441273))

(assert (=> b!3184291 m!3441487))

(assert (=> b!3184291 m!3441487))

(assert (=> b!3184291 m!3441495))

(declare-fun m!3441501 () Bool)

(assert (=> b!3184291 m!3441501))

(assert (=> b!3184176 d!871101))

(declare-fun d!871103 () Bool)

(declare-fun res!1294529 () Bool)

(declare-fun e!1984175 () Bool)

(assert (=> d!871103 (=> (not res!1294529) (not e!1984175))))

(assert (=> d!871103 (= res!1294529 (not (isEmpty!19915 (originalCharacters!5846 separatorToken!241))))))

(assert (=> d!871103 (= (inv!48641 separatorToken!241) e!1984175)))

(declare-fun b!3184296 () Bool)

(declare-fun res!1294530 () Bool)

(assert (=> b!3184296 (=> (not res!1294530) (not e!1984175))))

(declare-fun dynLambda!14436 (Int TokenValue!5362) BalanceConc!20892)

(assert (=> b!3184296 (= res!1294530 (= (originalCharacters!5846 separatorToken!241) (list!12705 (dynLambda!14436 (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))) (value!166722 separatorToken!241)))))))

(declare-fun b!3184297 () Bool)

(assert (=> b!3184297 (= e!1984175 (= (size!27002 separatorToken!241) (size!27003 (originalCharacters!5846 separatorToken!241))))))

(assert (= (and d!871103 res!1294529) b!3184296))

(assert (= (and b!3184296 res!1294530) b!3184297))

(declare-fun b_lambda!86779 () Bool)

(assert (=> (not b_lambda!86779) (not b!3184296)))

(declare-fun t!235444 () Bool)

(declare-fun tb!155407 () Bool)

(assert (=> (and b!3184153 (= (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241)))) t!235444) tb!155407))

(declare-fun b!3184302 () Bool)

(declare-fun e!1984178 () Bool)

(declare-fun tp!1007183 () Bool)

(declare-fun inv!48645 (Conc!10639) Bool)

(assert (=> b!3184302 (= e!1984178 (and (inv!48645 (c!534727 (dynLambda!14436 (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))) (value!166722 separatorToken!241)))) tp!1007183))))

(declare-fun result!197518 () Bool)

(declare-fun inv!48646 (BalanceConc!20892) Bool)

(assert (=> tb!155407 (= result!197518 (and (inv!48646 (dynLambda!14436 (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))) (value!166722 separatorToken!241))) e!1984178))))

(assert (= tb!155407 b!3184302))

(declare-fun m!3441503 () Bool)

(assert (=> b!3184302 m!3441503))

(declare-fun m!3441505 () Bool)

(assert (=> tb!155407 m!3441505))

(assert (=> b!3184296 t!235444))

(declare-fun b_and!210651 () Bool)

(assert (= b_and!210629 (and (=> t!235444 result!197518) b_and!210651)))

(declare-fun t!235446 () Bool)

(declare-fun tb!155409 () Bool)

(assert (=> (and b!3184152 (= (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241)))) t!235446) tb!155409))

(declare-fun result!197522 () Bool)

(assert (= result!197522 result!197518))

(assert (=> b!3184296 t!235446))

(declare-fun b_and!210653 () Bool)

(assert (= b_and!210633 (and (=> t!235446 result!197522) b_and!210653)))

(declare-fun t!235448 () Bool)

(declare-fun tb!155411 () Bool)

(assert (=> (and b!3184175 (= (toChars!7051 (transformation!5132 (h!41213 rules!2135))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241)))) t!235448) tb!155411))

(declare-fun result!197524 () Bool)

(assert (= result!197524 result!197518))

(assert (=> b!3184296 t!235448))

(declare-fun b_and!210655 () Bool)

(assert (= b_and!210637 (and (=> t!235448 result!197524) b_and!210655)))

(declare-fun m!3441507 () Bool)

(assert (=> d!871103 m!3441507))

(declare-fun m!3441509 () Bool)

(assert (=> b!3184296 m!3441509))

(assert (=> b!3184296 m!3441509))

(declare-fun m!3441511 () Bool)

(assert (=> b!3184296 m!3441511))

(declare-fun m!3441513 () Bool)

(assert (=> b!3184297 m!3441513))

(assert (=> start!298434 d!871103))

(declare-fun d!871105 () Bool)

(declare-fun res!1294531 () Bool)

(declare-fun e!1984179 () Bool)

(assert (=> d!871105 (=> (not res!1294531) (not e!1984179))))

(assert (=> d!871105 (= res!1294531 (not (isEmpty!19915 (originalCharacters!5846 (h!41212 tokens!494)))))))

(assert (=> d!871105 (= (inv!48641 (h!41212 tokens!494)) e!1984179)))

(declare-fun b!3184303 () Bool)

(declare-fun res!1294532 () Bool)

(assert (=> b!3184303 (=> (not res!1294532) (not e!1984179))))

(assert (=> b!3184303 (= res!1294532 (= (originalCharacters!5846 (h!41212 tokens!494)) (list!12705 (dynLambda!14436 (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) (value!166722 (h!41212 tokens!494))))))))

(declare-fun b!3184304 () Bool)

(assert (=> b!3184304 (= e!1984179 (= (size!27002 (h!41212 tokens!494)) (size!27003 (originalCharacters!5846 (h!41212 tokens!494)))))))

(assert (= (and d!871105 res!1294531) b!3184303))

(assert (= (and b!3184303 res!1294532) b!3184304))

(declare-fun b_lambda!86781 () Bool)

(assert (=> (not b_lambda!86781) (not b!3184303)))

(declare-fun tb!155413 () Bool)

(declare-fun t!235450 () Bool)

(assert (=> (and b!3184153 (= (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494))))) t!235450) tb!155413))

(declare-fun b!3184305 () Bool)

(declare-fun e!1984180 () Bool)

(declare-fun tp!1007184 () Bool)

(assert (=> b!3184305 (= e!1984180 (and (inv!48645 (c!534727 (dynLambda!14436 (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) (value!166722 (h!41212 tokens!494))))) tp!1007184))))

(declare-fun result!197526 () Bool)

(assert (=> tb!155413 (= result!197526 (and (inv!48646 (dynLambda!14436 (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) (value!166722 (h!41212 tokens!494)))) e!1984180))))

(assert (= tb!155413 b!3184305))

(declare-fun m!3441515 () Bool)

(assert (=> b!3184305 m!3441515))

(declare-fun m!3441517 () Bool)

(assert (=> tb!155413 m!3441517))

(assert (=> b!3184303 t!235450))

(declare-fun b_and!210657 () Bool)

(assert (= b_and!210651 (and (=> t!235450 result!197526) b_and!210657)))

(declare-fun t!235452 () Bool)

(declare-fun tb!155415 () Bool)

(assert (=> (and b!3184152 (= (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494))))) t!235452) tb!155415))

(declare-fun result!197528 () Bool)

(assert (= result!197528 result!197526))

(assert (=> b!3184303 t!235452))

(declare-fun b_and!210659 () Bool)

(assert (= b_and!210653 (and (=> t!235452 result!197528) b_and!210659)))

(declare-fun t!235454 () Bool)

(declare-fun tb!155417 () Bool)

(assert (=> (and b!3184175 (= (toChars!7051 (transformation!5132 (h!41213 rules!2135))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494))))) t!235454) tb!155417))

(declare-fun result!197530 () Bool)

(assert (= result!197530 result!197526))

(assert (=> b!3184303 t!235454))

(declare-fun b_and!210661 () Bool)

(assert (= b_and!210655 (and (=> t!235454 result!197530) b_and!210661)))

(declare-fun m!3441519 () Bool)

(assert (=> d!871105 m!3441519))

(declare-fun m!3441521 () Bool)

(assert (=> b!3184303 m!3441521))

(assert (=> b!3184303 m!3441521))

(declare-fun m!3441523 () Bool)

(assert (=> b!3184303 m!3441523))

(declare-fun m!3441525 () Bool)

(assert (=> b!3184304 m!3441525))

(assert (=> b!3184179 d!871105))

(declare-fun d!871107 () Bool)

(declare-fun dynLambda!14437 (Int Token!9630) Bool)

(assert (=> d!871107 (dynLambda!14437 lambda!116493 (h!41212 tokens!494))))

(declare-fun lt!1070938 () Unit!50199)

(declare-fun choose!18575 (List!35916 Int Token!9630) Unit!50199)

(assert (=> d!871107 (= lt!1070938 (choose!18575 tokens!494 lambda!116493 (h!41212 tokens!494)))))

(declare-fun e!1984183 () Bool)

(assert (=> d!871107 e!1984183))

(declare-fun res!1294535 () Bool)

(assert (=> d!871107 (=> (not res!1294535) (not e!1984183))))

(assert (=> d!871107 (= res!1294535 (forall!7250 tokens!494 lambda!116493))))

(assert (=> d!871107 (= (forallContained!1115 tokens!494 lambda!116493 (h!41212 tokens!494)) lt!1070938)))

(declare-fun b!3184308 () Bool)

(declare-fun contains!6346 (List!35916 Token!9630) Bool)

(assert (=> b!3184308 (= e!1984183 (contains!6346 tokens!494 (h!41212 tokens!494)))))

(assert (= (and d!871107 res!1294535) b!3184308))

(declare-fun b_lambda!86783 () Bool)

(assert (=> (not b_lambda!86783) (not d!871107)))

(declare-fun m!3441527 () Bool)

(assert (=> d!871107 m!3441527))

(declare-fun m!3441529 () Bool)

(assert (=> d!871107 m!3441529))

(assert (=> d!871107 m!3441285))

(declare-fun m!3441531 () Bool)

(assert (=> b!3184308 m!3441531))

(assert (=> b!3184178 d!871107))

(declare-fun b!3184319 () Bool)

(declare-fun res!1294538 () Bool)

(declare-fun e!1984191 () Bool)

(assert (=> b!3184319 (=> res!1294538 e!1984191)))

(assert (=> b!3184319 (= res!1294538 (not ((_ is IntegerValue!16088) (value!166722 separatorToken!241))))))

(declare-fun e!1984190 () Bool)

(assert (=> b!3184319 (= e!1984190 e!1984191)))

(declare-fun b!3184320 () Bool)

(declare-fun inv!15 (TokenValue!5362) Bool)

(assert (=> b!3184320 (= e!1984191 (inv!15 (value!166722 separatorToken!241)))))

(declare-fun b!3184321 () Bool)

(declare-fun inv!17 (TokenValue!5362) Bool)

(assert (=> b!3184321 (= e!1984190 (inv!17 (value!166722 separatorToken!241)))))

(declare-fun b!3184322 () Bool)

(declare-fun e!1984192 () Bool)

(assert (=> b!3184322 (= e!1984192 e!1984190)))

(declare-fun c!534753 () Bool)

(assert (=> b!3184322 (= c!534753 ((_ is IntegerValue!16087) (value!166722 separatorToken!241)))))

(declare-fun d!871109 () Bool)

(declare-fun c!534752 () Bool)

(assert (=> d!871109 (= c!534752 ((_ is IntegerValue!16086) (value!166722 separatorToken!241)))))

(assert (=> d!871109 (= (inv!21 (value!166722 separatorToken!241)) e!1984192)))

(declare-fun b!3184323 () Bool)

(declare-fun inv!16 (TokenValue!5362) Bool)

(assert (=> b!3184323 (= e!1984192 (inv!16 (value!166722 separatorToken!241)))))

(assert (= (and d!871109 c!534752) b!3184323))

(assert (= (and d!871109 (not c!534752)) b!3184322))

(assert (= (and b!3184322 c!534753) b!3184321))

(assert (= (and b!3184322 (not c!534753)) b!3184319))

(assert (= (and b!3184319 (not res!1294538)) b!3184320))

(declare-fun m!3441533 () Bool)

(assert (=> b!3184320 m!3441533))

(declare-fun m!3441535 () Bool)

(assert (=> b!3184321 m!3441535))

(declare-fun m!3441537 () Bool)

(assert (=> b!3184323 m!3441537))

(assert (=> b!3184156 d!871109))

(declare-fun bs!539989 () Bool)

(declare-fun d!871111 () Bool)

(assert (= bs!539989 (and d!871111 b!3184173)))

(declare-fun lambda!116505 () Int)

(assert (=> bs!539989 (not (= lambda!116505 lambda!116493))))

(declare-fun b!3184437 () Bool)

(declare-fun e!1984267 () Bool)

(assert (=> b!3184437 (= e!1984267 true)))

(declare-fun b!3184436 () Bool)

(declare-fun e!1984266 () Bool)

(assert (=> b!3184436 (= e!1984266 e!1984267)))

(declare-fun b!3184435 () Bool)

(declare-fun e!1984265 () Bool)

(assert (=> b!3184435 (= e!1984265 e!1984266)))

(assert (=> d!871111 e!1984265))

(assert (= b!3184436 b!3184437))

(assert (= b!3184435 b!3184436))

(assert (= (and d!871111 ((_ is Cons!35793) rules!2135)) b!3184435))

(declare-fun order!18227 () Int)

(declare-fun order!18229 () Int)

(declare-fun dynLambda!14438 (Int Int) Int)

(declare-fun dynLambda!14439 (Int Int) Int)

(assert (=> b!3184437 (< (dynLambda!14438 order!18227 (toValue!7192 (transformation!5132 (h!41213 rules!2135)))) (dynLambda!14439 order!18229 lambda!116505))))

(declare-fun order!18231 () Int)

(declare-fun dynLambda!14440 (Int Int) Int)

(assert (=> b!3184437 (< (dynLambda!14440 order!18231 (toChars!7051 (transformation!5132 (h!41213 rules!2135)))) (dynLambda!14439 order!18229 lambda!116505))))

(assert (=> d!871111 true))

(declare-fun e!1984251 () Bool)

(assert (=> d!871111 e!1984251))

(declare-fun res!1294600 () Bool)

(assert (=> d!871111 (=> (not res!1294600) (not e!1984251))))

(declare-fun lt!1070966 () Bool)

(assert (=> d!871111 (= res!1294600 (= lt!1070966 (forall!7250 (list!12708 lt!1070885) lambda!116505)))))

(declare-fun forall!7252 (BalanceConc!20894 Int) Bool)

(assert (=> d!871111 (= lt!1070966 (forall!7252 lt!1070885 lambda!116505))))

(assert (=> d!871111 (not (isEmpty!19917 rules!2135))))

(assert (=> d!871111 (= (rulesProduceEachTokenIndividually!1172 thiss!18206 rules!2135 lt!1070885) lt!1070966)))

(declare-fun b!3184417 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1704 (LexerInterface!4721 List!35917 List!35916) Bool)

(assert (=> b!3184417 (= e!1984251 (= lt!1070966 (rulesProduceEachTokenIndividuallyList!1704 thiss!18206 rules!2135 (list!12708 lt!1070885))))))

(assert (= (and d!871111 res!1294600) b!3184417))

(declare-fun m!3441631 () Bool)

(assert (=> d!871111 m!3441631))

(assert (=> d!871111 m!3441631))

(declare-fun m!3441633 () Bool)

(assert (=> d!871111 m!3441633))

(declare-fun m!3441635 () Bool)

(assert (=> d!871111 m!3441635))

(assert (=> d!871111 m!3441361))

(assert (=> b!3184417 m!3441631))

(assert (=> b!3184417 m!3441631))

(declare-fun m!3441637 () Bool)

(assert (=> b!3184417 m!3441637))

(assert (=> b!3184177 d!871111))

(declare-fun d!871147 () Bool)

(declare-fun fromListB!1505 (List!35916) BalanceConc!20894)

(assert (=> d!871147 (= (seqFromList!3344 tokens!494) (fromListB!1505 tokens!494))))

(declare-fun bs!539991 () Bool)

(assert (= bs!539991 d!871147))

(declare-fun m!3441645 () Bool)

(assert (=> bs!539991 m!3441645))

(assert (=> b!3184177 d!871147))

(declare-fun d!871151 () Bool)

(assert (=> d!871151 (rulesProduceIndividualToken!2213 thiss!18206 rules!2135 (h!41212 tokens!494))))

(declare-fun lt!1071014 () Unit!50199)

(declare-fun choose!18576 (LexerInterface!4721 List!35917 List!35916 Token!9630) Unit!50199)

(assert (=> d!871151 (= lt!1071014 (choose!18576 thiss!18206 rules!2135 tokens!494 (h!41212 tokens!494)))))

(assert (=> d!871151 (not (isEmpty!19917 rules!2135))))

(assert (=> d!871151 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!782 thiss!18206 rules!2135 tokens!494 (h!41212 tokens!494)) lt!1071014)))

(declare-fun bs!539996 () Bool)

(assert (= bs!539996 d!871151))

(assert (=> bs!539996 m!3441269))

(declare-fun m!3441791 () Bool)

(assert (=> bs!539996 m!3441791))

(assert (=> bs!539996 m!3441361))

(assert (=> b!3184150 d!871151))

(declare-fun b!3184560 () Bool)

(declare-fun e!1984339 () Option!6995)

(declare-datatypes ((tuple2!35150 0))(
  ( (tuple2!35151 (_1!20709 List!35915) (_2!20709 List!35915)) )
))
(declare-fun lt!1071029 () tuple2!35150)

(assert (=> b!3184560 (= e!1984339 (Some!6994 (tuple2!35143 (Token!9631 (apply!8056 (transformation!5132 (rule!7550 (h!41212 tokens!494))) (seqFromList!3343 (_1!20709 lt!1071029))) (rule!7550 (h!41212 tokens!494)) (size!27006 (seqFromList!3343 (_1!20709 lt!1071029))) (_1!20709 lt!1071029)) (_2!20709 lt!1071029))))))

(declare-fun lt!1071028 () Unit!50199)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!789 (Regex!9891 List!35915) Unit!50199)

(assert (=> b!3184560 (= lt!1071028 (longestMatchIsAcceptedByMatchOrIsEmpty!789 (regex!5132 (rule!7550 (h!41212 tokens!494))) lt!1070862))))

(declare-fun res!1294659 () Bool)

(declare-fun findLongestMatchInner!816 (Regex!9891 List!35915 Int List!35915 List!35915 Int) tuple2!35150)

(assert (=> b!3184560 (= res!1294659 (isEmpty!19915 (_1!20709 (findLongestMatchInner!816 (regex!5132 (rule!7550 (h!41212 tokens!494))) Nil!35791 (size!27003 Nil!35791) lt!1070862 lt!1070862 (size!27003 lt!1070862)))))))

(declare-fun e!1984341 () Bool)

(assert (=> b!3184560 (=> res!1294659 e!1984341)))

(assert (=> b!3184560 e!1984341))

(declare-fun lt!1071025 () Unit!50199)

(assert (=> b!3184560 (= lt!1071025 lt!1071028)))

(declare-fun lt!1071026 () Unit!50199)

(declare-fun lemmaSemiInverse!1158 (TokenValueInjection!10152 BalanceConc!20892) Unit!50199)

(assert (=> b!3184560 (= lt!1071026 (lemmaSemiInverse!1158 (transformation!5132 (rule!7550 (h!41212 tokens!494))) (seqFromList!3343 (_1!20709 lt!1071029))))))

(declare-fun b!3184561 () Bool)

(declare-fun res!1294657 () Bool)

(declare-fun e!1984342 () Bool)

(assert (=> b!3184561 (=> (not res!1294657) (not e!1984342))))

(declare-fun lt!1071027 () Option!6995)

(declare-fun get!11391 (Option!6995) tuple2!35142)

(assert (=> b!3184561 (= res!1294657 (= (rule!7550 (_1!20705 (get!11391 lt!1071027))) (rule!7550 (h!41212 tokens!494))))))

(declare-fun b!3184562 () Bool)

(declare-fun res!1294660 () Bool)

(assert (=> b!3184562 (=> (not res!1294660) (not e!1984342))))

(assert (=> b!3184562 (= res!1294660 (< (size!27003 (_2!20705 (get!11391 lt!1071027))) (size!27003 lt!1070862)))))

(declare-fun b!3184563 () Bool)

(assert (=> b!3184563 (= e!1984342 (= (size!27002 (_1!20705 (get!11391 lt!1071027))) (size!27003 (originalCharacters!5846 (_1!20705 (get!11391 lt!1071027))))))))

(declare-fun d!871195 () Bool)

(declare-fun e!1984340 () Bool)

(assert (=> d!871195 e!1984340))

(declare-fun res!1294656 () Bool)

(assert (=> d!871195 (=> res!1294656 e!1984340)))

(declare-fun isEmpty!19925 (Option!6995) Bool)

(assert (=> d!871195 (= res!1294656 (isEmpty!19925 lt!1071027))))

(assert (=> d!871195 (= lt!1071027 e!1984339)))

(declare-fun c!534800 () Bool)

(assert (=> d!871195 (= c!534800 (isEmpty!19915 (_1!20709 lt!1071029)))))

(declare-fun findLongestMatch!731 (Regex!9891 List!35915) tuple2!35150)

(assert (=> d!871195 (= lt!1071029 (findLongestMatch!731 (regex!5132 (rule!7550 (h!41212 tokens!494))) lt!1070862))))

(declare-fun ruleValid!1628 (LexerInterface!4721 Rule!10064) Bool)

(assert (=> d!871195 (ruleValid!1628 thiss!18206 (rule!7550 (h!41212 tokens!494)))))

(assert (=> d!871195 (= (maxPrefixOneRule!1526 thiss!18206 (rule!7550 (h!41212 tokens!494)) lt!1070862) lt!1071027)))

(declare-fun b!3184564 () Bool)

(declare-fun res!1294661 () Bool)

(assert (=> b!3184564 (=> (not res!1294661) (not e!1984342))))

(assert (=> b!3184564 (= res!1294661 (= (value!166722 (_1!20705 (get!11391 lt!1071027))) (apply!8056 (transformation!5132 (rule!7550 (_1!20705 (get!11391 lt!1071027)))) (seqFromList!3343 (originalCharacters!5846 (_1!20705 (get!11391 lt!1071027)))))))))

(declare-fun b!3184565 () Bool)

(assert (=> b!3184565 (= e!1984341 (matchR!4549 (regex!5132 (rule!7550 (h!41212 tokens!494))) (_1!20709 (findLongestMatchInner!816 (regex!5132 (rule!7550 (h!41212 tokens!494))) Nil!35791 (size!27003 Nil!35791) lt!1070862 lt!1070862 (size!27003 lt!1070862)))))))

(declare-fun b!3184566 () Bool)

(assert (=> b!3184566 (= e!1984339 None!6994)))

(declare-fun b!3184567 () Bool)

(assert (=> b!3184567 (= e!1984340 e!1984342)))

(declare-fun res!1294658 () Bool)

(assert (=> b!3184567 (=> (not res!1294658) (not e!1984342))))

(assert (=> b!3184567 (= res!1294658 (matchR!4549 (regex!5132 (rule!7550 (h!41212 tokens!494))) (list!12705 (charsOf!3154 (_1!20705 (get!11391 lt!1071027))))))))

(declare-fun b!3184568 () Bool)

(declare-fun res!1294655 () Bool)

(assert (=> b!3184568 (=> (not res!1294655) (not e!1984342))))

(assert (=> b!3184568 (= res!1294655 (= (++!8560 (list!12705 (charsOf!3154 (_1!20705 (get!11391 lt!1071027)))) (_2!20705 (get!11391 lt!1071027))) lt!1070862))))

(assert (= (and d!871195 c!534800) b!3184566))

(assert (= (and d!871195 (not c!534800)) b!3184560))

(assert (= (and b!3184560 (not res!1294659)) b!3184565))

(assert (= (and d!871195 (not res!1294656)) b!3184567))

(assert (= (and b!3184567 res!1294658) b!3184568))

(assert (= (and b!3184568 res!1294655) b!3184562))

(assert (= (and b!3184562 res!1294660) b!3184561))

(assert (= (and b!3184561 res!1294657) b!3184564))

(assert (= (and b!3184564 res!1294661) b!3184563))

(declare-fun m!3441793 () Bool)

(assert (=> b!3184565 m!3441793))

(assert (=> b!3184565 m!3441317))

(assert (=> b!3184565 m!3441793))

(assert (=> b!3184565 m!3441317))

(declare-fun m!3441795 () Bool)

(assert (=> b!3184565 m!3441795))

(declare-fun m!3441797 () Bool)

(assert (=> b!3184565 m!3441797))

(declare-fun m!3441799 () Bool)

(assert (=> b!3184561 m!3441799))

(declare-fun m!3441801 () Bool)

(assert (=> d!871195 m!3441801))

(declare-fun m!3441803 () Bool)

(assert (=> d!871195 m!3441803))

(declare-fun m!3441805 () Bool)

(assert (=> d!871195 m!3441805))

(declare-fun m!3441807 () Bool)

(assert (=> d!871195 m!3441807))

(assert (=> b!3184560 m!3441317))

(declare-fun m!3441809 () Bool)

(assert (=> b!3184560 m!3441809))

(assert (=> b!3184560 m!3441793))

(declare-fun m!3441811 () Bool)

(assert (=> b!3184560 m!3441811))

(assert (=> b!3184560 m!3441811))

(declare-fun m!3441813 () Bool)

(assert (=> b!3184560 m!3441813))

(declare-fun m!3441815 () Bool)

(assert (=> b!3184560 m!3441815))

(assert (=> b!3184560 m!3441811))

(declare-fun m!3441817 () Bool)

(assert (=> b!3184560 m!3441817))

(assert (=> b!3184560 m!3441811))

(declare-fun m!3441819 () Bool)

(assert (=> b!3184560 m!3441819))

(assert (=> b!3184560 m!3441793))

(assert (=> b!3184560 m!3441317))

(assert (=> b!3184560 m!3441795))

(assert (=> b!3184567 m!3441799))

(declare-fun m!3441821 () Bool)

(assert (=> b!3184567 m!3441821))

(assert (=> b!3184567 m!3441821))

(declare-fun m!3441823 () Bool)

(assert (=> b!3184567 m!3441823))

(assert (=> b!3184567 m!3441823))

(declare-fun m!3441825 () Bool)

(assert (=> b!3184567 m!3441825))

(assert (=> b!3184564 m!3441799))

(declare-fun m!3441827 () Bool)

(assert (=> b!3184564 m!3441827))

(assert (=> b!3184564 m!3441827))

(declare-fun m!3441829 () Bool)

(assert (=> b!3184564 m!3441829))

(assert (=> b!3184568 m!3441799))

(assert (=> b!3184568 m!3441821))

(assert (=> b!3184568 m!3441821))

(assert (=> b!3184568 m!3441823))

(assert (=> b!3184568 m!3441823))

(declare-fun m!3441831 () Bool)

(assert (=> b!3184568 m!3441831))

(assert (=> b!3184563 m!3441799))

(declare-fun m!3441833 () Bool)

(assert (=> b!3184563 m!3441833))

(assert (=> b!3184562 m!3441799))

(declare-fun m!3441835 () Bool)

(assert (=> b!3184562 m!3441835))

(assert (=> b!3184562 m!3441317))

(assert (=> b!3184150 d!871195))

(declare-fun d!871197 () Bool)

(assert (=> d!871197 (= (isEmpty!19915 (getSuffix!1348 lt!1070862 lt!1070862)) ((_ is Nil!35791) (getSuffix!1348 lt!1070862 lt!1070862)))))

(assert (=> b!3184150 d!871197))

(declare-fun d!871199 () Bool)

(assert (=> d!871199 (= (maxPrefixOneRule!1526 thiss!18206 (rule!7550 (h!41212 tokens!494)) lt!1070862) (Some!6994 (tuple2!35143 (Token!9631 (apply!8056 (transformation!5132 (rule!7550 (h!41212 tokens!494))) (seqFromList!3343 lt!1070862)) (rule!7550 (h!41212 tokens!494)) (size!27003 lt!1070862) lt!1070862) Nil!35791)))))

(declare-fun lt!1071035 () Unit!50199)

(declare-fun choose!18577 (LexerInterface!4721 List!35917 List!35915 List!35915 List!35915 Rule!10064) Unit!50199)

(assert (=> d!871199 (= lt!1071035 (choose!18577 thiss!18206 rules!2135 lt!1070862 lt!1070862 Nil!35791 (rule!7550 (h!41212 tokens!494))))))

(assert (=> d!871199 (not (isEmpty!19917 rules!2135))))

(assert (=> d!871199 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!639 thiss!18206 rules!2135 lt!1070862 lt!1070862 Nil!35791 (rule!7550 (h!41212 tokens!494))) lt!1071035)))

(declare-fun bs!539999 () Bool)

(assert (= bs!539999 d!871199))

(assert (=> bs!539999 m!3441317))

(assert (=> bs!539999 m!3441307))

(declare-fun m!3441841 () Bool)

(assert (=> bs!539999 m!3441841))

(assert (=> bs!539999 m!3441361))

(assert (=> bs!539999 m!3441307))

(assert (=> bs!539999 m!3441331))

(declare-fun m!3441843 () Bool)

(assert (=> bs!539999 m!3441843))

(assert (=> b!3184150 d!871199))

(declare-fun d!871205 () Bool)

(declare-fun lt!1071041 () Int)

(assert (=> d!871205 (>= lt!1071041 0)))

(declare-fun e!1984348 () Int)

(assert (=> d!871205 (= lt!1071041 e!1984348)))

(declare-fun c!534806 () Bool)

(assert (=> d!871205 (= c!534806 ((_ is Nil!35791) lt!1070862))))

(assert (=> d!871205 (= (size!27003 lt!1070862) lt!1071041)))

(declare-fun b!3184579 () Bool)

(assert (=> b!3184579 (= e!1984348 0)))

(declare-fun b!3184580 () Bool)

(assert (=> b!3184580 (= e!1984348 (+ 1 (size!27003 (t!235426 lt!1070862))))))

(assert (= (and d!871205 c!534806) b!3184579))

(assert (= (and d!871205 (not c!534806)) b!3184580))

(declare-fun m!3441847 () Bool)

(assert (=> b!3184580 m!3441847))

(assert (=> b!3184150 d!871205))

(declare-fun d!871207 () Bool)

(declare-fun lt!1071044 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4848 (List!35915) (InoxSet C!19968))

(assert (=> d!871207 (= lt!1071044 (select (content!4848 (usedCharacters!476 (regex!5132 (rule!7550 separatorToken!241)))) lt!1070872))))

(declare-fun e!1984354 () Bool)

(assert (=> d!871207 (= lt!1071044 e!1984354)))

(declare-fun res!1294667 () Bool)

(assert (=> d!871207 (=> (not res!1294667) (not e!1984354))))

(assert (=> d!871207 (= res!1294667 ((_ is Cons!35791) (usedCharacters!476 (regex!5132 (rule!7550 separatorToken!241)))))))

(assert (=> d!871207 (= (contains!6343 (usedCharacters!476 (regex!5132 (rule!7550 separatorToken!241))) lt!1070872) lt!1071044)))

(declare-fun b!3184585 () Bool)

(declare-fun e!1984353 () Bool)

(assert (=> b!3184585 (= e!1984354 e!1984353)))

(declare-fun res!1294666 () Bool)

(assert (=> b!3184585 (=> res!1294666 e!1984353)))

(assert (=> b!3184585 (= res!1294666 (= (h!41211 (usedCharacters!476 (regex!5132 (rule!7550 separatorToken!241)))) lt!1070872))))

(declare-fun b!3184586 () Bool)

(assert (=> b!3184586 (= e!1984353 (contains!6343 (t!235426 (usedCharacters!476 (regex!5132 (rule!7550 separatorToken!241)))) lt!1070872))))

(assert (= (and d!871207 res!1294667) b!3184585))

(assert (= (and b!3184585 (not res!1294666)) b!3184586))

(assert (=> d!871207 m!3441337))

(declare-fun m!3441851 () Bool)

(assert (=> d!871207 m!3441851))

(declare-fun m!3441853 () Bool)

(assert (=> d!871207 m!3441853))

(declare-fun m!3441855 () Bool)

(assert (=> b!3184586 m!3441855))

(assert (=> b!3184150 d!871207))

(declare-fun d!871211 () Bool)

(declare-fun isEmpty!19926 (Option!6996) Bool)

(assert (=> d!871211 (= (isDefined!5478 lt!1070875) (not (isEmpty!19926 lt!1070875)))))

(declare-fun bs!540000 () Bool)

(assert (= bs!540000 d!871211))

(declare-fun m!3441857 () Bool)

(assert (=> bs!540000 m!3441857))

(assert (=> b!3184150 d!871211))

(declare-fun b!3184611 () Bool)

(declare-fun e!1984372 () Option!6996)

(assert (=> b!3184611 (= e!1984372 (Some!6995 (h!41213 rules!2135)))))

(declare-fun b!3184612 () Bool)

(declare-fun e!1984370 () Option!6996)

(assert (=> b!3184612 (= e!1984372 e!1984370)))

(declare-fun c!534813 () Bool)

(assert (=> b!3184612 (= c!534813 (and ((_ is Cons!35793) rules!2135) (not (= (tag!5644 (h!41213 rules!2135)) (tag!5644 (rule!7550 (h!41212 tokens!494)))))))))

(declare-fun b!3184613 () Bool)

(assert (=> b!3184613 (= e!1984370 None!6995)))

(declare-fun b!3184614 () Bool)

(declare-fun lt!1071058 () Unit!50199)

(declare-fun lt!1071059 () Unit!50199)

(assert (=> b!3184614 (= lt!1071058 lt!1071059)))

(assert (=> b!3184614 (rulesInvariant!4118 thiss!18206 (t!235428 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!335 (LexerInterface!4721 Rule!10064 List!35917) Unit!50199)

(assert (=> b!3184614 (= lt!1071059 (lemmaInvariantOnRulesThenOnTail!335 thiss!18206 (h!41213 rules!2135) (t!235428 rules!2135)))))

(assert (=> b!3184614 (= e!1984370 (getRuleFromTag!861 thiss!18206 (t!235428 rules!2135) (tag!5644 (rule!7550 (h!41212 tokens!494)))))))

(declare-fun d!871213 () Bool)

(declare-fun e!1984371 () Bool)

(assert (=> d!871213 e!1984371))

(declare-fun res!1294680 () Bool)

(assert (=> d!871213 (=> res!1294680 e!1984371)))

(declare-fun lt!1071057 () Option!6996)

(assert (=> d!871213 (= res!1294680 (isEmpty!19926 lt!1071057))))

(assert (=> d!871213 (= lt!1071057 e!1984372)))

(declare-fun c!534814 () Bool)

(assert (=> d!871213 (= c!534814 (and ((_ is Cons!35793) rules!2135) (= (tag!5644 (h!41213 rules!2135)) (tag!5644 (rule!7550 (h!41212 tokens!494))))))))

(assert (=> d!871213 (rulesInvariant!4118 thiss!18206 rules!2135)))

(assert (=> d!871213 (= (getRuleFromTag!861 thiss!18206 rules!2135 (tag!5644 (rule!7550 (h!41212 tokens!494)))) lt!1071057)))

(declare-fun b!3184615 () Bool)

(declare-fun e!1984373 () Bool)

(assert (=> b!3184615 (= e!1984373 (= (tag!5644 (get!11389 lt!1071057)) (tag!5644 (rule!7550 (h!41212 tokens!494)))))))

(declare-fun b!3184616 () Bool)

(assert (=> b!3184616 (= e!1984371 e!1984373)))

(declare-fun res!1294681 () Bool)

(assert (=> b!3184616 (=> (not res!1294681) (not e!1984373))))

(declare-fun contains!6347 (List!35917 Rule!10064) Bool)

(assert (=> b!3184616 (= res!1294681 (contains!6347 rules!2135 (get!11389 lt!1071057)))))

(assert (= (and d!871213 c!534814) b!3184611))

(assert (= (and d!871213 (not c!534814)) b!3184612))

(assert (= (and b!3184612 c!534813) b!3184614))

(assert (= (and b!3184612 (not c!534813)) b!3184613))

(assert (= (and d!871213 (not res!1294680)) b!3184616))

(assert (= (and b!3184616 res!1294681) b!3184615))

(declare-fun m!3441875 () Bool)

(assert (=> b!3184614 m!3441875))

(declare-fun m!3441877 () Bool)

(assert (=> b!3184614 m!3441877))

(declare-fun m!3441879 () Bool)

(assert (=> b!3184614 m!3441879))

(declare-fun m!3441881 () Bool)

(assert (=> d!871213 m!3441881))

(assert (=> d!871213 m!3441365))

(declare-fun m!3441883 () Bool)

(assert (=> b!3184615 m!3441883))

(assert (=> b!3184616 m!3441883))

(assert (=> b!3184616 m!3441883))

(declare-fun m!3441885 () Bool)

(assert (=> b!3184616 m!3441885))

(assert (=> b!3184150 d!871213))

(declare-fun d!871221 () Bool)

(assert (=> d!871221 (= (head!6961 lt!1070869) (h!41211 lt!1070869))))

(assert (=> b!3184150 d!871221))

(declare-fun b!3184617 () Bool)

(declare-fun e!1984376 () Option!6996)

(assert (=> b!3184617 (= e!1984376 (Some!6995 (h!41213 rules!2135)))))

(declare-fun b!3184618 () Bool)

(declare-fun e!1984374 () Option!6996)

(assert (=> b!3184618 (= e!1984376 e!1984374)))

(declare-fun c!534815 () Bool)

(assert (=> b!3184618 (= c!534815 (and ((_ is Cons!35793) rules!2135) (not (= (tag!5644 (h!41213 rules!2135)) (tag!5644 (rule!7550 separatorToken!241))))))))

(declare-fun b!3184619 () Bool)

(assert (=> b!3184619 (= e!1984374 None!6995)))

(declare-fun b!3184620 () Bool)

(declare-fun lt!1071061 () Unit!50199)

(declare-fun lt!1071062 () Unit!50199)

(assert (=> b!3184620 (= lt!1071061 lt!1071062)))

(assert (=> b!3184620 (rulesInvariant!4118 thiss!18206 (t!235428 rules!2135))))

(assert (=> b!3184620 (= lt!1071062 (lemmaInvariantOnRulesThenOnTail!335 thiss!18206 (h!41213 rules!2135) (t!235428 rules!2135)))))

(assert (=> b!3184620 (= e!1984374 (getRuleFromTag!861 thiss!18206 (t!235428 rules!2135) (tag!5644 (rule!7550 separatorToken!241))))))

(declare-fun d!871223 () Bool)

(declare-fun e!1984375 () Bool)

(assert (=> d!871223 e!1984375))

(declare-fun res!1294682 () Bool)

(assert (=> d!871223 (=> res!1294682 e!1984375)))

(declare-fun lt!1071060 () Option!6996)

(assert (=> d!871223 (= res!1294682 (isEmpty!19926 lt!1071060))))

(assert (=> d!871223 (= lt!1071060 e!1984376)))

(declare-fun c!534816 () Bool)

(assert (=> d!871223 (= c!534816 (and ((_ is Cons!35793) rules!2135) (= (tag!5644 (h!41213 rules!2135)) (tag!5644 (rule!7550 separatorToken!241)))))))

(assert (=> d!871223 (rulesInvariant!4118 thiss!18206 rules!2135)))

(assert (=> d!871223 (= (getRuleFromTag!861 thiss!18206 rules!2135 (tag!5644 (rule!7550 separatorToken!241))) lt!1071060)))

(declare-fun b!3184621 () Bool)

(declare-fun e!1984377 () Bool)

(assert (=> b!3184621 (= e!1984377 (= (tag!5644 (get!11389 lt!1071060)) (tag!5644 (rule!7550 separatorToken!241))))))

(declare-fun b!3184622 () Bool)

(assert (=> b!3184622 (= e!1984375 e!1984377)))

(declare-fun res!1294683 () Bool)

(assert (=> b!3184622 (=> (not res!1294683) (not e!1984377))))

(assert (=> b!3184622 (= res!1294683 (contains!6347 rules!2135 (get!11389 lt!1071060)))))

(assert (= (and d!871223 c!534816) b!3184617))

(assert (= (and d!871223 (not c!534816)) b!3184618))

(assert (= (and b!3184618 c!534815) b!3184620))

(assert (= (and b!3184618 (not c!534815)) b!3184619))

(assert (= (and d!871223 (not res!1294682)) b!3184622))

(assert (= (and b!3184622 res!1294683) b!3184621))

(assert (=> b!3184620 m!3441875))

(assert (=> b!3184620 m!3441877))

(declare-fun m!3441887 () Bool)

(assert (=> b!3184620 m!3441887))

(declare-fun m!3441889 () Bool)

(assert (=> d!871223 m!3441889))

(assert (=> d!871223 m!3441365))

(declare-fun m!3441891 () Bool)

(assert (=> b!3184621 m!3441891))

(assert (=> b!3184622 m!3441891))

(assert (=> b!3184622 m!3441891))

(declare-fun m!3441893 () Bool)

(assert (=> b!3184622 m!3441893))

(assert (=> b!3184150 d!871223))

(declare-fun d!871225 () Bool)

(declare-fun lt!1071065 () List!35915)

(assert (=> d!871225 (= (++!8560 lt!1070862 lt!1071065) lt!1070862)))

(declare-fun e!1984380 () List!35915)

(assert (=> d!871225 (= lt!1071065 e!1984380)))

(declare-fun c!534819 () Bool)

(assert (=> d!871225 (= c!534819 ((_ is Cons!35791) lt!1070862))))

(assert (=> d!871225 (>= (size!27003 lt!1070862) (size!27003 lt!1070862))))

(assert (=> d!871225 (= (getSuffix!1348 lt!1070862 lt!1070862) lt!1071065)))

(declare-fun b!3184627 () Bool)

(declare-fun tail!5179 (List!35915) List!35915)

(assert (=> b!3184627 (= e!1984380 (getSuffix!1348 (tail!5179 lt!1070862) (t!235426 lt!1070862)))))

(declare-fun b!3184628 () Bool)

(assert (=> b!3184628 (= e!1984380 lt!1070862)))

(assert (= (and d!871225 c!534819) b!3184627))

(assert (= (and d!871225 (not c!534819)) b!3184628))

(declare-fun m!3441895 () Bool)

(assert (=> d!871225 m!3441895))

(assert (=> d!871225 m!3441317))

(assert (=> d!871225 m!3441317))

(declare-fun m!3441897 () Bool)

(assert (=> b!3184627 m!3441897))

(assert (=> b!3184627 m!3441897))

(declare-fun m!3441899 () Bool)

(assert (=> b!3184627 m!3441899))

(assert (=> b!3184150 d!871225))

(declare-fun d!871227 () Bool)

(declare-fun e!1984384 () Bool)

(assert (=> d!871227 e!1984384))

(declare-fun res!1294690 () Bool)

(assert (=> d!871227 (=> (not res!1294690) (not e!1984384))))

(assert (=> d!871227 (= res!1294690 (isDefined!5478 (getRuleFromTag!861 thiss!18206 rules!2135 (tag!5644 (rule!7550 separatorToken!241)))))))

(declare-fun lt!1071072 () Unit!50199)

(declare-fun choose!18578 (LexerInterface!4721 List!35917 List!35915 Token!9630) Unit!50199)

(assert (=> d!871227 (= lt!1071072 (choose!18578 thiss!18206 rules!2135 lt!1070869 separatorToken!241))))

(assert (=> d!871227 (rulesInvariant!4118 thiss!18206 rules!2135)))

(assert (=> d!871227 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!861 thiss!18206 rules!2135 lt!1070869 separatorToken!241) lt!1071072)))

(declare-fun b!3184635 () Bool)

(declare-fun res!1294691 () Bool)

(assert (=> b!3184635 (=> (not res!1294691) (not e!1984384))))

(assert (=> b!3184635 (= res!1294691 (matchR!4549 (regex!5132 (get!11389 (getRuleFromTag!861 thiss!18206 rules!2135 (tag!5644 (rule!7550 separatorToken!241))))) (list!12705 (charsOf!3154 separatorToken!241))))))

(declare-fun b!3184636 () Bool)

(assert (=> b!3184636 (= e!1984384 (= (rule!7550 separatorToken!241) (get!11389 (getRuleFromTag!861 thiss!18206 rules!2135 (tag!5644 (rule!7550 separatorToken!241))))))))

(assert (= (and d!871227 res!1294690) b!3184635))

(assert (= (and b!3184635 res!1294691) b!3184636))

(assert (=> d!871227 m!3441325))

(assert (=> d!871227 m!3441325))

(declare-fun m!3441915 () Bool)

(assert (=> d!871227 m!3441915))

(declare-fun m!3441917 () Bool)

(assert (=> d!871227 m!3441917))

(assert (=> d!871227 m!3441365))

(assert (=> b!3184635 m!3441287))

(assert (=> b!3184635 m!3441287))

(assert (=> b!3184635 m!3441295))

(assert (=> b!3184635 m!3441325))

(declare-fun m!3441919 () Bool)

(assert (=> b!3184635 m!3441919))

(assert (=> b!3184635 m!3441295))

(declare-fun m!3441921 () Bool)

(assert (=> b!3184635 m!3441921))

(assert (=> b!3184635 m!3441325))

(assert (=> b!3184636 m!3441325))

(assert (=> b!3184636 m!3441325))

(assert (=> b!3184636 m!3441919))

(assert (=> b!3184150 d!871227))

(declare-fun d!871235 () Bool)

(assert (=> d!871235 (= (isDefined!5478 lt!1070865) (not (isEmpty!19926 lt!1070865)))))

(declare-fun bs!540003 () Bool)

(assert (= bs!540003 d!871235))

(declare-fun m!3441923 () Bool)

(assert (=> bs!540003 m!3441923))

(assert (=> b!3184150 d!871235))

(declare-fun d!871237 () Bool)

(assert (=> d!871237 (isEmpty!19915 (getSuffix!1348 lt!1070862 lt!1070862))))

(declare-fun lt!1071075 () Unit!50199)

(declare-fun choose!18579 (List!35915) Unit!50199)

(assert (=> d!871237 (= lt!1071075 (choose!18579 lt!1070862))))

(assert (=> d!871237 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!26 lt!1070862) lt!1071075)))

(declare-fun bs!540004 () Bool)

(assert (= bs!540004 d!871237))

(assert (=> bs!540004 m!3441321))

(assert (=> bs!540004 m!3441321))

(assert (=> bs!540004 m!3441335))

(declare-fun m!3441925 () Bool)

(assert (=> bs!540004 m!3441925))

(assert (=> b!3184150 d!871237))

(declare-fun d!871239 () Bool)

(declare-fun dynLambda!14444 (Int BalanceConc!20892) TokenValue!5362)

(assert (=> d!871239 (= (apply!8056 (transformation!5132 (rule!7550 (h!41212 tokens!494))) lt!1070876) (dynLambda!14444 (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) lt!1070876))))

(declare-fun b_lambda!86791 () Bool)

(assert (=> (not b_lambda!86791) (not d!871239)))

(declare-fun tb!155425 () Bool)

(declare-fun t!235473 () Bool)

(assert (=> (and b!3184153 (= (toValue!7192 (transformation!5132 (rule!7550 separatorToken!241))) (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494))))) t!235473) tb!155425))

(declare-fun result!197540 () Bool)

(assert (=> tb!155425 (= result!197540 (inv!21 (dynLambda!14444 (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) lt!1070876)))))

(declare-fun m!3441927 () Bool)

(assert (=> tb!155425 m!3441927))

(assert (=> d!871239 t!235473))

(declare-fun b_and!210681 () Bool)

(assert (= b_and!210627 (and (=> t!235473 result!197540) b_and!210681)))

(declare-fun t!235475 () Bool)

(declare-fun tb!155427 () Bool)

(assert (=> (and b!3184152 (= (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494))))) t!235475) tb!155427))

(declare-fun result!197544 () Bool)

(assert (= result!197544 result!197540))

(assert (=> d!871239 t!235475))

(declare-fun b_and!210683 () Bool)

(assert (= b_and!210631 (and (=> t!235475 result!197544) b_and!210683)))

(declare-fun t!235477 () Bool)

(declare-fun tb!155429 () Bool)

(assert (=> (and b!3184175 (= (toValue!7192 (transformation!5132 (h!41213 rules!2135))) (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494))))) t!235477) tb!155429))

(declare-fun result!197546 () Bool)

(assert (= result!197546 result!197540))

(assert (=> d!871239 t!235477))

(declare-fun b_and!210685 () Bool)

(assert (= b_and!210635 (and (=> t!235477 result!197546) b_and!210685)))

(declare-fun m!3441929 () Bool)

(assert (=> d!871239 m!3441929))

(assert (=> b!3184150 d!871239))

(declare-fun d!871241 () Bool)

(declare-fun e!1984388 () Bool)

(assert (=> d!871241 e!1984388))

(declare-fun res!1294692 () Bool)

(assert (=> d!871241 (=> (not res!1294692) (not e!1984388))))

(assert (=> d!871241 (= res!1294692 (isDefined!5478 (getRuleFromTag!861 thiss!18206 rules!2135 (tag!5644 (rule!7550 (h!41212 tokens!494))))))))

(declare-fun lt!1071076 () Unit!50199)

(assert (=> d!871241 (= lt!1071076 (choose!18578 thiss!18206 rules!2135 lt!1070862 (h!41212 tokens!494)))))

(assert (=> d!871241 (rulesInvariant!4118 thiss!18206 rules!2135)))

(assert (=> d!871241 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!861 thiss!18206 rules!2135 lt!1070862 (h!41212 tokens!494)) lt!1071076)))

(declare-fun b!3184639 () Bool)

(declare-fun res!1294693 () Bool)

(assert (=> b!3184639 (=> (not res!1294693) (not e!1984388))))

(assert (=> b!3184639 (= res!1294693 (matchR!4549 (regex!5132 (get!11389 (getRuleFromTag!861 thiss!18206 rules!2135 (tag!5644 (rule!7550 (h!41212 tokens!494)))))) (list!12705 (charsOf!3154 (h!41212 tokens!494)))))))

(declare-fun b!3184640 () Bool)

(assert (=> b!3184640 (= e!1984388 (= (rule!7550 (h!41212 tokens!494)) (get!11389 (getRuleFromTag!861 thiss!18206 rules!2135 (tag!5644 (rule!7550 (h!41212 tokens!494)))))))))

(assert (= (and d!871241 res!1294692) b!3184639))

(assert (= (and b!3184639 res!1294693) b!3184640))

(assert (=> d!871241 m!3441315))

(assert (=> d!871241 m!3441315))

(declare-fun m!3441931 () Bool)

(assert (=> d!871241 m!3441931))

(declare-fun m!3441933 () Bool)

(assert (=> d!871241 m!3441933))

(assert (=> d!871241 m!3441365))

(assert (=> b!3184639 m!3441343))

(assert (=> b!3184639 m!3441343))

(assert (=> b!3184639 m!3441345))

(assert (=> b!3184639 m!3441315))

(declare-fun m!3441935 () Bool)

(assert (=> b!3184639 m!3441935))

(assert (=> b!3184639 m!3441345))

(declare-fun m!3441937 () Bool)

(assert (=> b!3184639 m!3441937))

(assert (=> b!3184639 m!3441315))

(assert (=> b!3184640 m!3441315))

(assert (=> b!3184640 m!3441315))

(assert (=> b!3184640 m!3441935))

(assert (=> b!3184150 d!871241))

(declare-fun b!3184657 () Bool)

(declare-fun c!534829 () Bool)

(assert (=> b!3184657 (= c!534829 ((_ is Star!9891) (regex!5132 (rule!7550 separatorToken!241))))))

(declare-fun e!1984398 () List!35915)

(declare-fun e!1984399 () List!35915)

(assert (=> b!3184657 (= e!1984398 e!1984399)))

(declare-fun bm!231060 () Bool)

(declare-fun call!231068 () List!35915)

(declare-fun c!534831 () Bool)

(assert (=> bm!231060 (= call!231068 (usedCharacters!476 (ite c!534831 (regTwo!20295 (regex!5132 (rule!7550 separatorToken!241))) (regOne!20294 (regex!5132 (rule!7550 separatorToken!241))))))))

(declare-fun b!3184659 () Bool)

(declare-fun call!231066 () List!35915)

(assert (=> b!3184659 (= e!1984399 call!231066)))

(declare-fun b!3184660 () Bool)

(declare-fun e!1984397 () List!35915)

(assert (=> b!3184660 (= e!1984397 Nil!35791)))

(declare-fun b!3184661 () Bool)

(declare-fun e!1984400 () List!35915)

(declare-fun call!231065 () List!35915)

(assert (=> b!3184661 (= e!1984400 call!231065)))

(declare-fun b!3184662 () Bool)

(assert (=> b!3184662 (= e!1984400 call!231065)))

(declare-fun bm!231061 () Bool)

(declare-fun call!231067 () List!35915)

(assert (=> bm!231061 (= call!231065 (++!8560 (ite c!534831 call!231067 call!231068) (ite c!534831 call!231068 call!231067)))))

(declare-fun b!3184663 () Bool)

(assert (=> b!3184663 (= e!1984397 e!1984398)))

(declare-fun c!534828 () Bool)

(assert (=> b!3184663 (= c!534828 ((_ is ElementMatch!9891) (regex!5132 (rule!7550 separatorToken!241))))))

(declare-fun bm!231062 () Bool)

(assert (=> bm!231062 (= call!231067 call!231066)))

(declare-fun b!3184664 () Bool)

(assert (=> b!3184664 (= e!1984398 (Cons!35791 (c!534726 (regex!5132 (rule!7550 separatorToken!241))) Nil!35791))))

(declare-fun bm!231063 () Bool)

(assert (=> bm!231063 (= call!231066 (usedCharacters!476 (ite c!534829 (reg!10220 (regex!5132 (rule!7550 separatorToken!241))) (ite c!534831 (regOne!20295 (regex!5132 (rule!7550 separatorToken!241))) (regTwo!20294 (regex!5132 (rule!7550 separatorToken!241)))))))))

(declare-fun d!871243 () Bool)

(declare-fun c!534830 () Bool)

(assert (=> d!871243 (= c!534830 (or ((_ is EmptyExpr!9891) (regex!5132 (rule!7550 separatorToken!241))) ((_ is EmptyLang!9891) (regex!5132 (rule!7550 separatorToken!241)))))))

(assert (=> d!871243 (= (usedCharacters!476 (regex!5132 (rule!7550 separatorToken!241))) e!1984397)))

(declare-fun b!3184658 () Bool)

(assert (=> b!3184658 (= e!1984399 e!1984400)))

(assert (=> b!3184658 (= c!534831 ((_ is Union!9891) (regex!5132 (rule!7550 separatorToken!241))))))

(assert (= (and d!871243 c!534830) b!3184660))

(assert (= (and d!871243 (not c!534830)) b!3184663))

(assert (= (and b!3184663 c!534828) b!3184664))

(assert (= (and b!3184663 (not c!534828)) b!3184657))

(assert (= (and b!3184657 c!534829) b!3184659))

(assert (= (and b!3184657 (not c!534829)) b!3184658))

(assert (= (and b!3184658 c!534831) b!3184662))

(assert (= (and b!3184658 (not c!534831)) b!3184661))

(assert (= (or b!3184662 b!3184661) bm!231060))

(assert (= (or b!3184662 b!3184661) bm!231062))

(assert (= (or b!3184662 b!3184661) bm!231061))

(assert (= (or b!3184659 bm!231062) bm!231063))

(declare-fun m!3441939 () Bool)

(assert (=> bm!231060 m!3441939))

(declare-fun m!3441941 () Bool)

(assert (=> bm!231061 m!3441941))

(declare-fun m!3441943 () Bool)

(assert (=> bm!231063 m!3441943))

(assert (=> b!3184150 d!871243))

(declare-fun d!871245 () Bool)

(declare-fun res!1294698 () Bool)

(declare-fun e!1984405 () Bool)

(assert (=> d!871245 (=> res!1294698 e!1984405)))

(assert (=> d!871245 (= res!1294698 (not ((_ is Cons!35793) rules!2135)))))

(assert (=> d!871245 (= (sepAndNonSepRulesDisjointChars!1326 rules!2135 rules!2135) e!1984405)))

(declare-fun b!3184669 () Bool)

(declare-fun e!1984406 () Bool)

(assert (=> b!3184669 (= e!1984405 e!1984406)))

(declare-fun res!1294699 () Bool)

(assert (=> b!3184669 (=> (not res!1294699) (not e!1984406))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!573 (Rule!10064 List!35917) Bool)

(assert (=> b!3184669 (= res!1294699 (ruleDisjointCharsFromAllFromOtherType!573 (h!41213 rules!2135) rules!2135))))

(declare-fun b!3184670 () Bool)

(assert (=> b!3184670 (= e!1984406 (sepAndNonSepRulesDisjointChars!1326 rules!2135 (t!235428 rules!2135)))))

(assert (= (and d!871245 (not res!1294698)) b!3184669))

(assert (= (and b!3184669 res!1294699) b!3184670))

(declare-fun m!3441945 () Bool)

(assert (=> b!3184669 m!3441945))

(declare-fun m!3441947 () Bool)

(assert (=> b!3184670 m!3441947))

(assert (=> b!3184171 d!871245))

(declare-fun d!871247 () Bool)

(declare-fun lt!1071097 () BalanceConc!20892)

(declare-fun printListTailRec!543 (LexerInterface!4721 List!35916 List!35915) List!35915)

(declare-fun dropList!1060 (BalanceConc!20894 Int) List!35916)

(assert (=> d!871247 (= (list!12705 lt!1071097) (printListTailRec!543 thiss!18206 (dropList!1060 lt!1070888 0) (list!12705 (BalanceConc!20893 Empty!10639))))))

(declare-fun e!1984411 () BalanceConc!20892)

(assert (=> d!871247 (= lt!1071097 e!1984411)))

(declare-fun c!534834 () Bool)

(assert (=> d!871247 (= c!534834 (>= 0 (size!27007 lt!1070888)))))

(declare-fun e!1984412 () Bool)

(assert (=> d!871247 e!1984412))

(declare-fun res!1294702 () Bool)

(assert (=> d!871247 (=> (not res!1294702) (not e!1984412))))

(assert (=> d!871247 (= res!1294702 (>= 0 0))))

(assert (=> d!871247 (= (printTailRec!1220 thiss!18206 lt!1070888 0 (BalanceConc!20893 Empty!10639)) lt!1071097)))

(declare-fun b!3184677 () Bool)

(assert (=> b!3184677 (= e!1984412 (<= 0 (size!27007 lt!1070888)))))

(declare-fun b!3184678 () Bool)

(assert (=> b!3184678 (= e!1984411 (BalanceConc!20893 Empty!10639))))

(declare-fun b!3184679 () Bool)

(declare-fun ++!8562 (BalanceConc!20892 BalanceConc!20892) BalanceConc!20892)

(assert (=> b!3184679 (= e!1984411 (printTailRec!1220 thiss!18206 lt!1070888 (+ 0 1) (++!8562 (BalanceConc!20893 Empty!10639) (charsOf!3154 (apply!8058 lt!1070888 0)))))))

(declare-fun lt!1071092 () List!35916)

(assert (=> b!3184679 (= lt!1071092 (list!12708 lt!1070888))))

(declare-fun lt!1071091 () Unit!50199)

(declare-fun lemmaDropApply!1019 (List!35916 Int) Unit!50199)

(assert (=> b!3184679 (= lt!1071091 (lemmaDropApply!1019 lt!1071092 0))))

(declare-fun head!6963 (List!35916) Token!9630)

(declare-fun drop!1843 (List!35916 Int) List!35916)

(declare-fun apply!8060 (List!35916 Int) Token!9630)

(assert (=> b!3184679 (= (head!6963 (drop!1843 lt!1071092 0)) (apply!8060 lt!1071092 0))))

(declare-fun lt!1071096 () Unit!50199)

(assert (=> b!3184679 (= lt!1071096 lt!1071091)))

(declare-fun lt!1071095 () List!35916)

(assert (=> b!3184679 (= lt!1071095 (list!12708 lt!1070888))))

(declare-fun lt!1071094 () Unit!50199)

(declare-fun lemmaDropTail!902 (List!35916 Int) Unit!50199)

(assert (=> b!3184679 (= lt!1071094 (lemmaDropTail!902 lt!1071095 0))))

(declare-fun tail!5180 (List!35916) List!35916)

(assert (=> b!3184679 (= (tail!5180 (drop!1843 lt!1071095 0)) (drop!1843 lt!1071095 (+ 0 1)))))

(declare-fun lt!1071093 () Unit!50199)

(assert (=> b!3184679 (= lt!1071093 lt!1071094)))

(assert (= (and d!871247 res!1294702) b!3184677))

(assert (= (and d!871247 c!534834) b!3184678))

(assert (= (and d!871247 (not c!534834)) b!3184679))

(declare-fun m!3441949 () Bool)

(assert (=> d!871247 m!3441949))

(declare-fun m!3441951 () Bool)

(assert (=> d!871247 m!3441951))

(declare-fun m!3441953 () Bool)

(assert (=> d!871247 m!3441953))

(assert (=> d!871247 m!3441951))

(declare-fun m!3441955 () Bool)

(assert (=> d!871247 m!3441955))

(declare-fun m!3441957 () Bool)

(assert (=> d!871247 m!3441957))

(assert (=> d!871247 m!3441949))

(assert (=> b!3184677 m!3441957))

(declare-fun m!3441959 () Bool)

(assert (=> b!3184679 m!3441959))

(declare-fun m!3441961 () Bool)

(assert (=> b!3184679 m!3441961))

(declare-fun m!3441963 () Bool)

(assert (=> b!3184679 m!3441963))

(declare-fun m!3441965 () Bool)

(assert (=> b!3184679 m!3441965))

(declare-fun m!3441967 () Bool)

(assert (=> b!3184679 m!3441967))

(declare-fun m!3441969 () Bool)

(assert (=> b!3184679 m!3441969))

(declare-fun m!3441971 () Bool)

(assert (=> b!3184679 m!3441971))

(declare-fun m!3441973 () Bool)

(assert (=> b!3184679 m!3441973))

(assert (=> b!3184679 m!3441965))

(assert (=> b!3184679 m!3441959))

(declare-fun m!3441975 () Bool)

(assert (=> b!3184679 m!3441975))

(declare-fun m!3441977 () Bool)

(assert (=> b!3184679 m!3441977))

(declare-fun m!3441979 () Bool)

(assert (=> b!3184679 m!3441979))

(assert (=> b!3184679 m!3441973))

(assert (=> b!3184679 m!3441967))

(declare-fun m!3441981 () Bool)

(assert (=> b!3184679 m!3441981))

(assert (=> b!3184679 m!3441975))

(declare-fun m!3441983 () Bool)

(assert (=> b!3184679 m!3441983))

(assert (=> b!3184170 d!871247))

(declare-fun d!871249 () Bool)

(declare-fun lt!1071115 () BalanceConc!20892)

(assert (=> d!871249 (= (list!12705 lt!1071115) (printList!1275 thiss!18206 (list!12708 lt!1070888)))))

(assert (=> d!871249 (= lt!1071115 (printTailRec!1220 thiss!18206 lt!1070888 0 (BalanceConc!20893 Empty!10639)))))

(assert (=> d!871249 (= (print!1788 thiss!18206 lt!1070888) lt!1071115)))

(declare-fun bs!540005 () Bool)

(assert (= bs!540005 d!871249))

(declare-fun m!3441985 () Bool)

(assert (=> bs!540005 m!3441985))

(assert (=> bs!540005 m!3441983))

(assert (=> bs!540005 m!3441983))

(declare-fun m!3441987 () Bool)

(assert (=> bs!540005 m!3441987))

(assert (=> bs!540005 m!3441271))

(assert (=> b!3184170 d!871249))

(declare-fun d!871251 () Bool)

(declare-fun list!12709 (Conc!10639) List!35915)

(assert (=> d!871251 (= (list!12705 lt!1070886) (list!12709 (c!534727 lt!1070886)))))

(declare-fun bs!540006 () Bool)

(assert (= bs!540006 d!871251))

(declare-fun m!3442005 () Bool)

(assert (=> bs!540006 m!3442005))

(assert (=> b!3184170 d!871251))

(declare-fun d!871253 () Bool)

(declare-fun e!1984430 () Bool)

(assert (=> d!871253 e!1984430))

(declare-fun res!1294726 () Bool)

(assert (=> d!871253 (=> (not res!1294726) (not e!1984430))))

(declare-fun lt!1071121 () BalanceConc!20894)

(assert (=> d!871253 (= res!1294726 (= (list!12708 lt!1071121) (Cons!35792 (h!41212 tokens!494) Nil!35792)))))

(declare-fun singleton!975 (Token!9630) BalanceConc!20894)

(assert (=> d!871253 (= lt!1071121 (singleton!975 (h!41212 tokens!494)))))

(assert (=> d!871253 (= (singletonSeq!2228 (h!41212 tokens!494)) lt!1071121)))

(declare-fun b!3184715 () Bool)

(declare-fun isBalanced!3186 (Conc!10640) Bool)

(assert (=> b!3184715 (= e!1984430 (isBalanced!3186 (c!534728 lt!1071121)))))

(assert (= (and d!871253 res!1294726) b!3184715))

(declare-fun m!3442037 () Bool)

(assert (=> d!871253 m!3442037))

(declare-fun m!3442039 () Bool)

(assert (=> d!871253 m!3442039))

(declare-fun m!3442041 () Bool)

(assert (=> b!3184715 m!3442041))

(assert (=> b!3184170 d!871253))

(declare-fun d!871259 () Bool)

(declare-fun c!534843 () Bool)

(assert (=> d!871259 (= c!534843 ((_ is Cons!35792) (Cons!35792 (h!41212 tokens!494) Nil!35792)))))

(declare-fun e!1984436 () List!35915)

(assert (=> d!871259 (= (printList!1275 thiss!18206 (Cons!35792 (h!41212 tokens!494) Nil!35792)) e!1984436)))

(declare-fun b!3184723 () Bool)

(assert (=> b!3184723 (= e!1984436 (++!8560 (list!12705 (charsOf!3154 (h!41212 (Cons!35792 (h!41212 tokens!494) Nil!35792)))) (printList!1275 thiss!18206 (t!235427 (Cons!35792 (h!41212 tokens!494) Nil!35792)))))))

(declare-fun b!3184724 () Bool)

(assert (=> b!3184724 (= e!1984436 Nil!35791)))

(assert (= (and d!871259 c!534843) b!3184723))

(assert (= (and d!871259 (not c!534843)) b!3184724))

(declare-fun m!3442047 () Bool)

(assert (=> b!3184723 m!3442047))

(assert (=> b!3184723 m!3442047))

(declare-fun m!3442049 () Bool)

(assert (=> b!3184723 m!3442049))

(declare-fun m!3442051 () Bool)

(assert (=> b!3184723 m!3442051))

(assert (=> b!3184723 m!3442049))

(assert (=> b!3184723 m!3442051))

(declare-fun m!3442059 () Bool)

(assert (=> b!3184723 m!3442059))

(assert (=> b!3184170 d!871259))

(declare-fun d!871263 () Bool)

(declare-fun lt!1071122 () Bool)

(assert (=> d!871263 (= lt!1071122 (select (content!4848 (usedCharacters!476 (regex!5132 (rule!7550 (h!41212 tokens!494))))) lt!1070872))))

(declare-fun e!1984441 () Bool)

(assert (=> d!871263 (= lt!1071122 e!1984441)))

(declare-fun res!1294732 () Bool)

(assert (=> d!871263 (=> (not res!1294732) (not e!1984441))))

(assert (=> d!871263 (= res!1294732 ((_ is Cons!35791) (usedCharacters!476 (regex!5132 (rule!7550 (h!41212 tokens!494))))))))

(assert (=> d!871263 (= (contains!6343 (usedCharacters!476 (regex!5132 (rule!7550 (h!41212 tokens!494)))) lt!1070872) lt!1071122)))

(declare-fun b!3184730 () Bool)

(declare-fun e!1984440 () Bool)

(assert (=> b!3184730 (= e!1984441 e!1984440)))

(declare-fun res!1294731 () Bool)

(assert (=> b!3184730 (=> res!1294731 e!1984440)))

(assert (=> b!3184730 (= res!1294731 (= (h!41211 (usedCharacters!476 (regex!5132 (rule!7550 (h!41212 tokens!494))))) lt!1070872))))

(declare-fun b!3184731 () Bool)

(assert (=> b!3184731 (= e!1984440 (contains!6343 (t!235426 (usedCharacters!476 (regex!5132 (rule!7550 (h!41212 tokens!494))))) lt!1070872))))

(assert (= (and d!871263 res!1294732) b!3184730))

(assert (= (and b!3184730 (not res!1294731)) b!3184731))

(assert (=> d!871263 m!3441249))

(declare-fun m!3442061 () Bool)

(assert (=> d!871263 m!3442061))

(declare-fun m!3442063 () Bool)

(assert (=> d!871263 m!3442063))

(declare-fun m!3442065 () Bool)

(assert (=> b!3184731 m!3442065))

(assert (=> b!3184169 d!871263))

(declare-fun b!3184742 () Bool)

(declare-fun c!534847 () Bool)

(assert (=> b!3184742 (= c!534847 ((_ is Star!9891) (regex!5132 (rule!7550 (h!41212 tokens!494)))))))

(declare-fun e!1984445 () List!35915)

(declare-fun e!1984446 () List!35915)

(assert (=> b!3184742 (= e!1984445 e!1984446)))

(declare-fun bm!231064 () Bool)

(declare-fun call!231072 () List!35915)

(declare-fun c!534849 () Bool)

(assert (=> bm!231064 (= call!231072 (usedCharacters!476 (ite c!534849 (regTwo!20295 (regex!5132 (rule!7550 (h!41212 tokens!494)))) (regOne!20294 (regex!5132 (rule!7550 (h!41212 tokens!494)))))))))

(declare-fun b!3184744 () Bool)

(declare-fun call!231070 () List!35915)

(assert (=> b!3184744 (= e!1984446 call!231070)))

(declare-fun b!3184745 () Bool)

(declare-fun e!1984444 () List!35915)

(assert (=> b!3184745 (= e!1984444 Nil!35791)))

(declare-fun b!3184746 () Bool)

(declare-fun e!1984447 () List!35915)

(declare-fun call!231069 () List!35915)

(assert (=> b!3184746 (= e!1984447 call!231069)))

(declare-fun b!3184747 () Bool)

(assert (=> b!3184747 (= e!1984447 call!231069)))

(declare-fun call!231071 () List!35915)

(declare-fun bm!231065 () Bool)

(assert (=> bm!231065 (= call!231069 (++!8560 (ite c!534849 call!231071 call!231072) (ite c!534849 call!231072 call!231071)))))

(declare-fun b!3184748 () Bool)

(assert (=> b!3184748 (= e!1984444 e!1984445)))

(declare-fun c!534846 () Bool)

(assert (=> b!3184748 (= c!534846 ((_ is ElementMatch!9891) (regex!5132 (rule!7550 (h!41212 tokens!494)))))))

(declare-fun bm!231066 () Bool)

(assert (=> bm!231066 (= call!231071 call!231070)))

(declare-fun b!3184749 () Bool)

(assert (=> b!3184749 (= e!1984445 (Cons!35791 (c!534726 (regex!5132 (rule!7550 (h!41212 tokens!494)))) Nil!35791))))

(declare-fun bm!231067 () Bool)

(assert (=> bm!231067 (= call!231070 (usedCharacters!476 (ite c!534847 (reg!10220 (regex!5132 (rule!7550 (h!41212 tokens!494)))) (ite c!534849 (regOne!20295 (regex!5132 (rule!7550 (h!41212 tokens!494)))) (regTwo!20294 (regex!5132 (rule!7550 (h!41212 tokens!494))))))))))

(declare-fun d!871265 () Bool)

(declare-fun c!534848 () Bool)

(assert (=> d!871265 (= c!534848 (or ((_ is EmptyExpr!9891) (regex!5132 (rule!7550 (h!41212 tokens!494)))) ((_ is EmptyLang!9891) (regex!5132 (rule!7550 (h!41212 tokens!494))))))))

(assert (=> d!871265 (= (usedCharacters!476 (regex!5132 (rule!7550 (h!41212 tokens!494)))) e!1984444)))

(declare-fun b!3184743 () Bool)

(assert (=> b!3184743 (= e!1984446 e!1984447)))

(assert (=> b!3184743 (= c!534849 ((_ is Union!9891) (regex!5132 (rule!7550 (h!41212 tokens!494)))))))

(assert (= (and d!871265 c!534848) b!3184745))

(assert (= (and d!871265 (not c!534848)) b!3184748))

(assert (= (and b!3184748 c!534846) b!3184749))

(assert (= (and b!3184748 (not c!534846)) b!3184742))

(assert (= (and b!3184742 c!534847) b!3184744))

(assert (= (and b!3184742 (not c!534847)) b!3184743))

(assert (= (and b!3184743 c!534849) b!3184747))

(assert (= (and b!3184743 (not c!534849)) b!3184746))

(assert (= (or b!3184747 b!3184746) bm!231064))

(assert (= (or b!3184747 b!3184746) bm!231066))

(assert (= (or b!3184747 b!3184746) bm!231065))

(assert (= (or b!3184744 bm!231066) bm!231067))

(declare-fun m!3442067 () Bool)

(assert (=> bm!231064 m!3442067))

(declare-fun m!3442069 () Bool)

(assert (=> bm!231065 m!3442069))

(declare-fun m!3442071 () Bool)

(assert (=> bm!231067 m!3442071))

(assert (=> b!3184169 d!871265))

(declare-fun d!871267 () Bool)

(assert (=> d!871267 true))

(declare-fun lt!1071125 () Bool)

(declare-fun lambda!116509 () Int)

(declare-fun forall!7254 (List!35917 Int) Bool)

(assert (=> d!871267 (= lt!1071125 (forall!7254 rules!2135 lambda!116509))))

(declare-fun e!1984471 () Bool)

(assert (=> d!871267 (= lt!1071125 e!1984471)))

(declare-fun res!1294738 () Bool)

(assert (=> d!871267 (=> res!1294738 e!1984471)))

(assert (=> d!871267 (= res!1294738 (not ((_ is Cons!35793) rules!2135)))))

(assert (=> d!871267 (= (rulesValidInductive!1757 thiss!18206 rules!2135) lt!1071125)))

(declare-fun b!3184775 () Bool)

(declare-fun e!1984472 () Bool)

(assert (=> b!3184775 (= e!1984471 e!1984472)))

(declare-fun res!1294737 () Bool)

(assert (=> b!3184775 (=> (not res!1294737) (not e!1984472))))

(assert (=> b!3184775 (= res!1294737 (ruleValid!1628 thiss!18206 (h!41213 rules!2135)))))

(declare-fun b!3184776 () Bool)

(assert (=> b!3184776 (= e!1984472 (rulesValidInductive!1757 thiss!18206 (t!235428 rules!2135)))))

(assert (= (and d!871267 (not res!1294738)) b!3184775))

(assert (= (and b!3184775 res!1294737) b!3184776))

(declare-fun m!3442077 () Bool)

(assert (=> d!871267 m!3442077))

(declare-fun m!3442079 () Bool)

(assert (=> b!3184775 m!3442079))

(declare-fun m!3442081 () Bool)

(assert (=> b!3184776 m!3442081))

(assert (=> b!3184169 d!871267))

(declare-fun d!871269 () Bool)

(assert (=> d!871269 (= (maxPrefix!2399 thiss!18206 rules!2135 (++!8560 (list!12705 (charsOf!3154 (h!41212 tokens!494))) lt!1070869)) (Some!6994 (tuple2!35143 (h!41212 tokens!494) lt!1070869)))))

(declare-fun lt!1071128 () Unit!50199)

(declare-fun choose!18580 (LexerInterface!4721 List!35917 Token!9630 Rule!10064 List!35915 Rule!10064) Unit!50199)

(assert (=> d!871269 (= lt!1071128 (choose!18580 thiss!18206 rules!2135 (h!41212 tokens!494) (rule!7550 (h!41212 tokens!494)) lt!1070869 (rule!7550 separatorToken!241)))))

(assert (=> d!871269 (not (isEmpty!19917 rules!2135))))

(assert (=> d!871269 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!110 thiss!18206 rules!2135 (h!41212 tokens!494) (rule!7550 (h!41212 tokens!494)) lt!1070869 (rule!7550 separatorToken!241)) lt!1071128)))

(declare-fun bs!540008 () Bool)

(assert (= bs!540008 d!871269))

(declare-fun m!3442091 () Bool)

(assert (=> bs!540008 m!3442091))

(declare-fun m!3442093 () Bool)

(assert (=> bs!540008 m!3442093))

(assert (=> bs!540008 m!3441361))

(declare-fun m!3442095 () Bool)

(assert (=> bs!540008 m!3442095))

(assert (=> bs!540008 m!3441343))

(assert (=> bs!540008 m!3441345))

(assert (=> bs!540008 m!3441343))

(assert (=> bs!540008 m!3441345))

(assert (=> bs!540008 m!3442091))

(assert (=> b!3184169 d!871269))

(declare-fun b!3184819 () Bool)

(declare-fun e!1984497 () Option!6995)

(declare-fun call!231075 () Option!6995)

(assert (=> b!3184819 (= e!1984497 call!231075)))

(declare-fun b!3184820 () Bool)

(declare-fun res!1294756 () Bool)

(declare-fun e!1984499 () Bool)

(assert (=> b!3184820 (=> (not res!1294756) (not e!1984499))))

(declare-fun lt!1071140 () Option!6995)

(assert (=> b!3184820 (= res!1294756 (< (size!27003 (_2!20705 (get!11391 lt!1071140))) (size!27003 lt!1070879)))))

(declare-fun d!871273 () Bool)

(declare-fun e!1984498 () Bool)

(assert (=> d!871273 e!1984498))

(declare-fun res!1294753 () Bool)

(assert (=> d!871273 (=> res!1294753 e!1984498)))

(assert (=> d!871273 (= res!1294753 (isEmpty!19925 lt!1071140))))

(assert (=> d!871273 (= lt!1071140 e!1984497)))

(declare-fun c!534852 () Bool)

(assert (=> d!871273 (= c!534852 (and ((_ is Cons!35793) rules!2135) ((_ is Nil!35793) (t!235428 rules!2135))))))

(declare-fun lt!1071143 () Unit!50199)

(declare-fun lt!1071142 () Unit!50199)

(assert (=> d!871273 (= lt!1071143 lt!1071142)))

(declare-fun isPrefix!2770 (List!35915 List!35915) Bool)

(assert (=> d!871273 (isPrefix!2770 lt!1070879 lt!1070879)))

(declare-fun lemmaIsPrefixRefl!1729 (List!35915 List!35915) Unit!50199)

(assert (=> d!871273 (= lt!1071142 (lemmaIsPrefixRefl!1729 lt!1070879 lt!1070879))))

(assert (=> d!871273 (rulesValidInductive!1757 thiss!18206 rules!2135)))

(assert (=> d!871273 (= (maxPrefix!2399 thiss!18206 rules!2135 lt!1070879) lt!1071140)))

(declare-fun b!3184821 () Bool)

(declare-fun res!1294754 () Bool)

(assert (=> b!3184821 (=> (not res!1294754) (not e!1984499))))

(assert (=> b!3184821 (= res!1294754 (= (++!8560 (list!12705 (charsOf!3154 (_1!20705 (get!11391 lt!1071140)))) (_2!20705 (get!11391 lt!1071140))) lt!1070879))))

(declare-fun b!3184822 () Bool)

(declare-fun res!1294758 () Bool)

(assert (=> b!3184822 (=> (not res!1294758) (not e!1984499))))

(assert (=> b!3184822 (= res!1294758 (matchR!4549 (regex!5132 (rule!7550 (_1!20705 (get!11391 lt!1071140)))) (list!12705 (charsOf!3154 (_1!20705 (get!11391 lt!1071140))))))))

(declare-fun b!3184823 () Bool)

(assert (=> b!3184823 (= e!1984498 e!1984499)))

(declare-fun res!1294757 () Bool)

(assert (=> b!3184823 (=> (not res!1294757) (not e!1984499))))

(declare-fun isDefined!5480 (Option!6995) Bool)

(assert (=> b!3184823 (= res!1294757 (isDefined!5480 lt!1071140))))

(declare-fun b!3184824 () Bool)

(assert (=> b!3184824 (= e!1984499 (contains!6347 rules!2135 (rule!7550 (_1!20705 (get!11391 lt!1071140)))))))

(declare-fun b!3184825 () Bool)

(declare-fun lt!1071139 () Option!6995)

(declare-fun lt!1071141 () Option!6995)

(assert (=> b!3184825 (= e!1984497 (ite (and ((_ is None!6994) lt!1071139) ((_ is None!6994) lt!1071141)) None!6994 (ite ((_ is None!6994) lt!1071141) lt!1071139 (ite ((_ is None!6994) lt!1071139) lt!1071141 (ite (>= (size!27002 (_1!20705 (v!35464 lt!1071139))) (size!27002 (_1!20705 (v!35464 lt!1071141)))) lt!1071139 lt!1071141)))))))

(assert (=> b!3184825 (= lt!1071139 call!231075)))

(assert (=> b!3184825 (= lt!1071141 (maxPrefix!2399 thiss!18206 (t!235428 rules!2135) lt!1070879))))

(declare-fun bm!231070 () Bool)

(assert (=> bm!231070 (= call!231075 (maxPrefixOneRule!1526 thiss!18206 (h!41213 rules!2135) lt!1070879))))

(declare-fun b!3184826 () Bool)

(declare-fun res!1294759 () Bool)

(assert (=> b!3184826 (=> (not res!1294759) (not e!1984499))))

(assert (=> b!3184826 (= res!1294759 (= (list!12705 (charsOf!3154 (_1!20705 (get!11391 lt!1071140)))) (originalCharacters!5846 (_1!20705 (get!11391 lt!1071140)))))))

(declare-fun b!3184827 () Bool)

(declare-fun res!1294755 () Bool)

(assert (=> b!3184827 (=> (not res!1294755) (not e!1984499))))

(assert (=> b!3184827 (= res!1294755 (= (value!166722 (_1!20705 (get!11391 lt!1071140))) (apply!8056 (transformation!5132 (rule!7550 (_1!20705 (get!11391 lt!1071140)))) (seqFromList!3343 (originalCharacters!5846 (_1!20705 (get!11391 lt!1071140)))))))))

(assert (= (and d!871273 c!534852) b!3184819))

(assert (= (and d!871273 (not c!534852)) b!3184825))

(assert (= (or b!3184819 b!3184825) bm!231070))

(assert (= (and d!871273 (not res!1294753)) b!3184823))

(assert (= (and b!3184823 res!1294757) b!3184826))

(assert (= (and b!3184826 res!1294759) b!3184820))

(assert (= (and b!3184820 res!1294756) b!3184821))

(assert (= (and b!3184821 res!1294754) b!3184827))

(assert (= (and b!3184827 res!1294755) b!3184822))

(assert (= (and b!3184822 res!1294758) b!3184824))

(declare-fun m!3442097 () Bool)

(assert (=> b!3184820 m!3442097))

(declare-fun m!3442099 () Bool)

(assert (=> b!3184820 m!3442099))

(declare-fun m!3442101 () Bool)

(assert (=> b!3184820 m!3442101))

(declare-fun m!3442103 () Bool)

(assert (=> bm!231070 m!3442103))

(assert (=> b!3184824 m!3442097))

(declare-fun m!3442105 () Bool)

(assert (=> b!3184824 m!3442105))

(declare-fun m!3442107 () Bool)

(assert (=> b!3184825 m!3442107))

(assert (=> b!3184826 m!3442097))

(declare-fun m!3442109 () Bool)

(assert (=> b!3184826 m!3442109))

(assert (=> b!3184826 m!3442109))

(declare-fun m!3442111 () Bool)

(assert (=> b!3184826 m!3442111))

(assert (=> b!3184822 m!3442097))

(assert (=> b!3184822 m!3442109))

(assert (=> b!3184822 m!3442109))

(assert (=> b!3184822 m!3442111))

(assert (=> b!3184822 m!3442111))

(declare-fun m!3442113 () Bool)

(assert (=> b!3184822 m!3442113))

(declare-fun m!3442115 () Bool)

(assert (=> b!3184823 m!3442115))

(declare-fun m!3442117 () Bool)

(assert (=> d!871273 m!3442117))

(declare-fun m!3442119 () Bool)

(assert (=> d!871273 m!3442119))

(declare-fun m!3442121 () Bool)

(assert (=> d!871273 m!3442121))

(assert (=> d!871273 m!3441247))

(assert (=> b!3184821 m!3442097))

(assert (=> b!3184821 m!3442109))

(assert (=> b!3184821 m!3442109))

(assert (=> b!3184821 m!3442111))

(assert (=> b!3184821 m!3442111))

(declare-fun m!3442123 () Bool)

(assert (=> b!3184821 m!3442123))

(assert (=> b!3184827 m!3442097))

(declare-fun m!3442125 () Bool)

(assert (=> b!3184827 m!3442125))

(assert (=> b!3184827 m!3442125))

(declare-fun m!3442127 () Bool)

(assert (=> b!3184827 m!3442127))

(assert (=> b!3184169 d!871273))

(declare-fun d!871275 () Bool)

(assert (=> d!871275 (not (contains!6343 (usedCharacters!476 (regex!5132 (rule!7550 (h!41212 tokens!494)))) lt!1070872))))

(declare-fun lt!1071146 () Unit!50199)

(declare-fun choose!18582 (LexerInterface!4721 List!35917 List!35917 Rule!10064 Rule!10064 C!19968) Unit!50199)

(assert (=> d!871275 (= lt!1071146 (choose!18582 thiss!18206 rules!2135 rules!2135 (rule!7550 (h!41212 tokens!494)) (rule!7550 separatorToken!241) lt!1070872))))

(assert (=> d!871275 (rulesInvariant!4118 thiss!18206 rules!2135)))

(assert (=> d!871275 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!108 thiss!18206 rules!2135 rules!2135 (rule!7550 (h!41212 tokens!494)) (rule!7550 separatorToken!241) lt!1070872) lt!1071146)))

(declare-fun bs!540009 () Bool)

(assert (= bs!540009 d!871275))

(assert (=> bs!540009 m!3441249))

(assert (=> bs!540009 m!3441249))

(assert (=> bs!540009 m!3441251))

(declare-fun m!3442129 () Bool)

(assert (=> bs!540009 m!3442129))

(assert (=> bs!540009 m!3441365))

(assert (=> b!3184169 d!871275))

(declare-fun d!871277 () Bool)

(declare-fun res!1294762 () Bool)

(declare-fun e!1984502 () Bool)

(assert (=> d!871277 (=> (not res!1294762) (not e!1984502))))

(declare-fun rulesValid!1896 (LexerInterface!4721 List!35917) Bool)

(assert (=> d!871277 (= res!1294762 (rulesValid!1896 thiss!18206 rules!2135))))

(assert (=> d!871277 (= (rulesInvariant!4118 thiss!18206 rules!2135) e!1984502)))

(declare-fun b!3184830 () Bool)

(declare-datatypes ((List!35918 0))(
  ( (Nil!35794) (Cons!35794 (h!41214 String!40143) (t!235503 List!35918)) )
))
(declare-fun noDuplicateTag!1892 (LexerInterface!4721 List!35917 List!35918) Bool)

(assert (=> b!3184830 (= e!1984502 (noDuplicateTag!1892 thiss!18206 rules!2135 Nil!35794))))

(assert (= (and d!871277 res!1294762) b!3184830))

(declare-fun m!3442131 () Bool)

(assert (=> d!871277 m!3442131))

(declare-fun m!3442133 () Bool)

(assert (=> b!3184830 m!3442133))

(assert (=> b!3184174 d!871277))

(declare-fun d!871279 () Bool)

(declare-fun res!1294767 () Bool)

(declare-fun e!1984507 () Bool)

(assert (=> d!871279 (=> res!1294767 e!1984507)))

(assert (=> d!871279 (= res!1294767 ((_ is Nil!35792) tokens!494))))

(assert (=> d!871279 (= (forall!7250 tokens!494 lambda!116493) e!1984507)))

(declare-fun b!3184835 () Bool)

(declare-fun e!1984508 () Bool)

(assert (=> b!3184835 (= e!1984507 e!1984508)))

(declare-fun res!1294768 () Bool)

(assert (=> b!3184835 (=> (not res!1294768) (not e!1984508))))

(assert (=> b!3184835 (= res!1294768 (dynLambda!14437 lambda!116493 (h!41212 tokens!494)))))

(declare-fun b!3184836 () Bool)

(assert (=> b!3184836 (= e!1984508 (forall!7250 (t!235427 tokens!494) lambda!116493))))

(assert (= (and d!871279 (not res!1294767)) b!3184835))

(assert (= (and b!3184835 res!1294768) b!3184836))

(declare-fun b_lambda!86807 () Bool)

(assert (=> (not b_lambda!86807) (not b!3184835)))

(assert (=> b!3184835 m!3441527))

(declare-fun m!3442135 () Bool)

(assert (=> b!3184836 m!3442135))

(assert (=> b!3184173 d!871279))

(declare-fun b!3184845 () Bool)

(declare-fun e!1984513 () List!35915)

(assert (=> b!3184845 (= e!1984513 lt!1070869)))

(declare-fun b!3184847 () Bool)

(declare-fun res!1294773 () Bool)

(declare-fun e!1984514 () Bool)

(assert (=> b!3184847 (=> (not res!1294773) (not e!1984514))))

(declare-fun lt!1071149 () List!35915)

(assert (=> b!3184847 (= res!1294773 (= (size!27003 lt!1071149) (+ (size!27003 lt!1070862) (size!27003 lt!1070869))))))

(declare-fun d!871281 () Bool)

(assert (=> d!871281 e!1984514))

(declare-fun res!1294774 () Bool)

(assert (=> d!871281 (=> (not res!1294774) (not e!1984514))))

(assert (=> d!871281 (= res!1294774 (= (content!4848 lt!1071149) ((_ map or) (content!4848 lt!1070862) (content!4848 lt!1070869))))))

(assert (=> d!871281 (= lt!1071149 e!1984513)))

(declare-fun c!534856 () Bool)

(assert (=> d!871281 (= c!534856 ((_ is Nil!35791) lt!1070862))))

(assert (=> d!871281 (= (++!8560 lt!1070862 lt!1070869) lt!1071149)))

(declare-fun b!3184846 () Bool)

(assert (=> b!3184846 (= e!1984513 (Cons!35791 (h!41211 lt!1070862) (++!8560 (t!235426 lt!1070862) lt!1070869)))))

(declare-fun b!3184848 () Bool)

(assert (=> b!3184848 (= e!1984514 (or (not (= lt!1070869 Nil!35791)) (= lt!1071149 lt!1070862)))))

(assert (= (and d!871281 c!534856) b!3184845))

(assert (= (and d!871281 (not c!534856)) b!3184846))

(assert (= (and d!871281 res!1294774) b!3184847))

(assert (= (and b!3184847 res!1294773) b!3184848))

(declare-fun m!3442137 () Bool)

(assert (=> b!3184847 m!3442137))

(assert (=> b!3184847 m!3441317))

(declare-fun m!3442139 () Bool)

(assert (=> b!3184847 m!3442139))

(declare-fun m!3442141 () Bool)

(assert (=> d!871281 m!3442141))

(declare-fun m!3442143 () Bool)

(assert (=> d!871281 m!3442143))

(declare-fun m!3442145 () Bool)

(assert (=> d!871281 m!3442145))

(declare-fun m!3442147 () Bool)

(assert (=> b!3184846 m!3442147))

(assert (=> b!3184151 d!871281))

(declare-fun lt!1071152 () BalanceConc!20892)

(declare-fun d!871283 () Bool)

(declare-fun printWithSeparatorTokenList!96 (LexerInterface!4721 List!35916 Token!9630) List!35915)

(assert (=> d!871283 (= (list!12705 lt!1071152) (printWithSeparatorTokenList!96 thiss!18206 (list!12708 lt!1070885) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!10 (LexerInterface!4721 BalanceConc!20894 Token!9630 Int BalanceConc!20892) BalanceConc!20892)

(assert (=> d!871283 (= lt!1071152 (printWithSeparatorTokenTailRec!10 thiss!18206 lt!1070885 separatorToken!241 0 (BalanceConc!20893 Empty!10639)))))

(assert (=> d!871283 (isSeparator!5132 (rule!7550 separatorToken!241))))

(assert (=> d!871283 (= (printWithSeparatorToken!30 thiss!18206 lt!1070885 separatorToken!241) lt!1071152)))

(declare-fun bs!540010 () Bool)

(assert (= bs!540010 d!871283))

(declare-fun m!3442149 () Bool)

(assert (=> bs!540010 m!3442149))

(assert (=> bs!540010 m!3441631))

(assert (=> bs!540010 m!3441631))

(declare-fun m!3442151 () Bool)

(assert (=> bs!540010 m!3442151))

(declare-fun m!3442153 () Bool)

(assert (=> bs!540010 m!3442153))

(assert (=> b!3184151 d!871283))

(declare-fun d!871285 () Bool)

(assert (=> d!871285 (= (list!12705 lt!1070878) (list!12709 (c!534727 lt!1070878)))))

(declare-fun bs!540011 () Bool)

(assert (= bs!540011 d!871285))

(declare-fun m!3442155 () Bool)

(assert (=> bs!540011 m!3442155))

(assert (=> b!3184151 d!871285))

(declare-fun d!871287 () Bool)

(declare-fun lt!1071155 () BalanceConc!20892)

(assert (=> d!871287 (= (list!12705 lt!1071155) (originalCharacters!5846 separatorToken!241))))

(assert (=> d!871287 (= lt!1071155 (dynLambda!14436 (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))) (value!166722 separatorToken!241)))))

(assert (=> d!871287 (= (charsOf!3154 separatorToken!241) lt!1071155)))

(declare-fun b_lambda!86809 () Bool)

(assert (=> (not b_lambda!86809) (not d!871287)))

(assert (=> d!871287 t!235444))

(declare-fun b_and!210695 () Bool)

(assert (= b_and!210657 (and (=> t!235444 result!197518) b_and!210695)))

(assert (=> d!871287 t!235446))

(declare-fun b_and!210697 () Bool)

(assert (= b_and!210659 (and (=> t!235446 result!197522) b_and!210697)))

(assert (=> d!871287 t!235448))

(declare-fun b_and!210699 () Bool)

(assert (= b_and!210661 (and (=> t!235448 result!197524) b_and!210699)))

(declare-fun m!3442157 () Bool)

(assert (=> d!871287 m!3442157))

(assert (=> d!871287 m!3441509))

(assert (=> b!3184151 d!871287))

(declare-fun d!871289 () Bool)

(assert (=> d!871289 (= (list!12705 (charsOf!3154 separatorToken!241)) (list!12709 (c!534727 (charsOf!3154 separatorToken!241))))))

(declare-fun bs!540012 () Bool)

(assert (= bs!540012 d!871289))

(declare-fun m!3442159 () Bool)

(assert (=> bs!540012 m!3442159))

(assert (=> b!3184151 d!871289))

(declare-fun d!871291 () Bool)

(assert (=> d!871291 (= (inv!48638 (tag!5644 (rule!7550 (h!41212 tokens!494)))) (= (mod (str.len (value!166696 (tag!5644 (rule!7550 (h!41212 tokens!494))))) 2) 0))))

(assert (=> b!3184166 d!871291))

(declare-fun d!871293 () Bool)

(declare-fun res!1294777 () Bool)

(declare-fun e!1984517 () Bool)

(assert (=> d!871293 (=> (not res!1294777) (not e!1984517))))

(declare-fun semiInverseModEq!2137 (Int Int) Bool)

(assert (=> d!871293 (= res!1294777 (semiInverseModEq!2137 (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494))))))))

(assert (=> d!871293 (= (inv!48642 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) e!1984517)))

(declare-fun b!3184851 () Bool)

(declare-fun equivClasses!2036 (Int Int) Bool)

(assert (=> b!3184851 (= e!1984517 (equivClasses!2036 (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494))))))))

(assert (= (and d!871293 res!1294777) b!3184851))

(declare-fun m!3442161 () Bool)

(assert (=> d!871293 m!3442161))

(declare-fun m!3442163 () Bool)

(assert (=> b!3184851 m!3442163))

(assert (=> b!3184166 d!871293))

(declare-fun d!871295 () Bool)

(assert (=> d!871295 (= (list!12705 (charsOf!3154 (h!41212 tokens!494))) (list!12709 (c!534727 (charsOf!3154 (h!41212 tokens!494)))))))

(declare-fun bs!540013 () Bool)

(assert (= bs!540013 d!871295))

(declare-fun m!3442165 () Bool)

(assert (=> bs!540013 m!3442165))

(assert (=> b!3184165 d!871295))

(declare-fun d!871297 () Bool)

(declare-fun lt!1071156 () BalanceConc!20892)

(assert (=> d!871297 (= (list!12705 lt!1071156) (originalCharacters!5846 (h!41212 tokens!494)))))

(assert (=> d!871297 (= lt!1071156 (dynLambda!14436 (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) (value!166722 (h!41212 tokens!494))))))

(assert (=> d!871297 (= (charsOf!3154 (h!41212 tokens!494)) lt!1071156)))

(declare-fun b_lambda!86811 () Bool)

(assert (=> (not b_lambda!86811) (not d!871297)))

(assert (=> d!871297 t!235450))

(declare-fun b_and!210701 () Bool)

(assert (= b_and!210695 (and (=> t!235450 result!197526) b_and!210701)))

(assert (=> d!871297 t!235452))

(declare-fun b_and!210703 () Bool)

(assert (= b_and!210697 (and (=> t!235452 result!197528) b_and!210703)))

(assert (=> d!871297 t!235454))

(declare-fun b_and!210705 () Bool)

(assert (= b_and!210699 (and (=> t!235454 result!197530) b_and!210705)))

(declare-fun m!3442167 () Bool)

(assert (=> d!871297 m!3442167))

(assert (=> d!871297 m!3441521))

(assert (=> b!3184165 d!871297))

(declare-fun b!3184880 () Bool)

(declare-fun e!1984538 () Bool)

(declare-fun derivativeStep!2937 (Regex!9891 C!19968) Regex!9891)

(assert (=> b!3184880 (= e!1984538 (matchR!4549 (derivativeStep!2937 (regex!5132 lt!1070883) (head!6961 lt!1070862)) (tail!5179 lt!1070862)))))

(declare-fun b!3184881 () Bool)

(declare-fun res!1294794 () Bool)

(declare-fun e!1984534 () Bool)

(assert (=> b!3184881 (=> (not res!1294794) (not e!1984534))))

(assert (=> b!3184881 (= res!1294794 (isEmpty!19915 (tail!5179 lt!1070862)))))

(declare-fun b!3184882 () Bool)

(declare-fun e!1984537 () Bool)

(declare-fun e!1984535 () Bool)

(assert (=> b!3184882 (= e!1984537 e!1984535)))

(declare-fun res!1294799 () Bool)

(assert (=> b!3184882 (=> (not res!1294799) (not e!1984535))))

(declare-fun lt!1071159 () Bool)

(assert (=> b!3184882 (= res!1294799 (not lt!1071159))))

(declare-fun b!3184883 () Bool)

(declare-fun res!1294797 () Bool)

(assert (=> b!3184883 (=> res!1294797 e!1984537)))

(assert (=> b!3184883 (= res!1294797 (not ((_ is ElementMatch!9891) (regex!5132 lt!1070883))))))

(declare-fun e!1984532 () Bool)

(assert (=> b!3184883 (= e!1984532 e!1984537)))

(declare-fun b!3184884 () Bool)

(declare-fun e!1984536 () Bool)

(declare-fun call!231078 () Bool)

(assert (=> b!3184884 (= e!1984536 (= lt!1071159 call!231078))))

(declare-fun b!3184885 () Bool)

(declare-fun e!1984533 () Bool)

(assert (=> b!3184885 (= e!1984535 e!1984533)))

(declare-fun res!1294798 () Bool)

(assert (=> b!3184885 (=> res!1294798 e!1984533)))

(assert (=> b!3184885 (= res!1294798 call!231078)))

(declare-fun b!3184886 () Bool)

(assert (=> b!3184886 (= e!1984532 (not lt!1071159))))

(declare-fun b!3184887 () Bool)

(assert (=> b!3184887 (= e!1984534 (= (head!6961 lt!1070862) (c!534726 (regex!5132 lt!1070883))))))

(declare-fun b!3184888 () Bool)

(declare-fun nullable!3384 (Regex!9891) Bool)

(assert (=> b!3184888 (= e!1984538 (nullable!3384 (regex!5132 lt!1070883)))))

(declare-fun d!871299 () Bool)

(assert (=> d!871299 e!1984536))

(declare-fun c!534864 () Bool)

(assert (=> d!871299 (= c!534864 ((_ is EmptyExpr!9891) (regex!5132 lt!1070883)))))

(assert (=> d!871299 (= lt!1071159 e!1984538)))

(declare-fun c!534865 () Bool)

(assert (=> d!871299 (= c!534865 (isEmpty!19915 lt!1070862))))

(declare-fun validRegex!4536 (Regex!9891) Bool)

(assert (=> d!871299 (validRegex!4536 (regex!5132 lt!1070883))))

(assert (=> d!871299 (= (matchR!4549 (regex!5132 lt!1070883) lt!1070862) lt!1071159)))

(declare-fun b!3184889 () Bool)

(declare-fun res!1294795 () Bool)

(assert (=> b!3184889 (=> res!1294795 e!1984533)))

(assert (=> b!3184889 (= res!1294795 (not (isEmpty!19915 (tail!5179 lt!1070862))))))

(declare-fun b!3184890 () Bool)

(declare-fun res!1294801 () Bool)

(assert (=> b!3184890 (=> (not res!1294801) (not e!1984534))))

(assert (=> b!3184890 (= res!1294801 (not call!231078))))

(declare-fun bm!231073 () Bool)

(assert (=> bm!231073 (= call!231078 (isEmpty!19915 lt!1070862))))

(declare-fun b!3184891 () Bool)

(assert (=> b!3184891 (= e!1984533 (not (= (head!6961 lt!1070862) (c!534726 (regex!5132 lt!1070883)))))))

(declare-fun b!3184892 () Bool)

(assert (=> b!3184892 (= e!1984536 e!1984532)))

(declare-fun c!534863 () Bool)

(assert (=> b!3184892 (= c!534863 ((_ is EmptyLang!9891) (regex!5132 lt!1070883)))))

(declare-fun b!3184893 () Bool)

(declare-fun res!1294800 () Bool)

(assert (=> b!3184893 (=> res!1294800 e!1984537)))

(assert (=> b!3184893 (= res!1294800 e!1984534)))

(declare-fun res!1294796 () Bool)

(assert (=> b!3184893 (=> (not res!1294796) (not e!1984534))))

(assert (=> b!3184893 (= res!1294796 lt!1071159)))

(assert (= (and d!871299 c!534865) b!3184888))

(assert (= (and d!871299 (not c!534865)) b!3184880))

(assert (= (and d!871299 c!534864) b!3184884))

(assert (= (and d!871299 (not c!534864)) b!3184892))

(assert (= (and b!3184892 c!534863) b!3184886))

(assert (= (and b!3184892 (not c!534863)) b!3184883))

(assert (= (and b!3184883 (not res!1294797)) b!3184893))

(assert (= (and b!3184893 res!1294796) b!3184890))

(assert (= (and b!3184890 res!1294801) b!3184881))

(assert (= (and b!3184881 res!1294794) b!3184887))

(assert (= (and b!3184893 (not res!1294800)) b!3184882))

(assert (= (and b!3184882 res!1294799) b!3184885))

(assert (= (and b!3184885 (not res!1294798)) b!3184889))

(assert (= (and b!3184889 (not res!1294795)) b!3184891))

(assert (= (or b!3184884 b!3184885 b!3184890) bm!231073))

(declare-fun m!3442169 () Bool)

(assert (=> b!3184887 m!3442169))

(assert (=> b!3184880 m!3442169))

(assert (=> b!3184880 m!3442169))

(declare-fun m!3442171 () Bool)

(assert (=> b!3184880 m!3442171))

(assert (=> b!3184880 m!3441897))

(assert (=> b!3184880 m!3442171))

(assert (=> b!3184880 m!3441897))

(declare-fun m!3442173 () Bool)

(assert (=> b!3184880 m!3442173))

(declare-fun m!3442175 () Bool)

(assert (=> b!3184888 m!3442175))

(assert (=> b!3184881 m!3441897))

(assert (=> b!3184881 m!3441897))

(declare-fun m!3442177 () Bool)

(assert (=> b!3184881 m!3442177))

(declare-fun m!3442179 () Bool)

(assert (=> d!871299 m!3442179))

(declare-fun m!3442181 () Bool)

(assert (=> d!871299 m!3442181))

(assert (=> b!3184891 m!3442169))

(assert (=> bm!231073 m!3442179))

(assert (=> b!3184889 m!3441897))

(assert (=> b!3184889 m!3441897))

(assert (=> b!3184889 m!3442177))

(assert (=> b!3184164 d!871299))

(declare-fun d!871301 () Bool)

(assert (=> d!871301 (= (get!11389 lt!1070875) (v!35465 lt!1070875))))

(assert (=> b!3184164 d!871301))

(declare-fun d!871303 () Bool)

(declare-fun lt!1071161 () Bool)

(declare-fun e!1984540 () Bool)

(assert (=> d!871303 (= lt!1071161 e!1984540)))

(declare-fun res!1294803 () Bool)

(assert (=> d!871303 (=> (not res!1294803) (not e!1984540))))

(assert (=> d!871303 (= res!1294803 (= (list!12708 (_1!20706 (lex!2061 thiss!18206 rules!2135 (print!1788 thiss!18206 (singletonSeq!2228 separatorToken!241))))) (list!12708 (singletonSeq!2228 separatorToken!241))))))

(declare-fun e!1984539 () Bool)

(assert (=> d!871303 (= lt!1071161 e!1984539)))

(declare-fun res!1294802 () Bool)

(assert (=> d!871303 (=> (not res!1294802) (not e!1984539))))

(declare-fun lt!1071160 () tuple2!35144)

(assert (=> d!871303 (= res!1294802 (= (size!27007 (_1!20706 lt!1071160)) 1))))

(assert (=> d!871303 (= lt!1071160 (lex!2061 thiss!18206 rules!2135 (print!1788 thiss!18206 (singletonSeq!2228 separatorToken!241))))))

(assert (=> d!871303 (not (isEmpty!19917 rules!2135))))

(assert (=> d!871303 (= (rulesProduceIndividualToken!2213 thiss!18206 rules!2135 separatorToken!241) lt!1071161)))

(declare-fun b!3184894 () Bool)

(declare-fun res!1294804 () Bool)

(assert (=> b!3184894 (=> (not res!1294804) (not e!1984539))))

(assert (=> b!3184894 (= res!1294804 (= (apply!8058 (_1!20706 lt!1071160) 0) separatorToken!241))))

(declare-fun b!3184895 () Bool)

(assert (=> b!3184895 (= e!1984539 (isEmpty!19924 (_2!20706 lt!1071160)))))

(declare-fun b!3184896 () Bool)

(assert (=> b!3184896 (= e!1984540 (isEmpty!19924 (_2!20706 (lex!2061 thiss!18206 rules!2135 (print!1788 thiss!18206 (singletonSeq!2228 separatorToken!241))))))))

(assert (= (and d!871303 res!1294802) b!3184894))

(assert (= (and b!3184894 res!1294804) b!3184895))

(assert (= (and d!871303 res!1294803) b!3184896))

(declare-fun m!3442183 () Bool)

(assert (=> d!871303 m!3442183))

(declare-fun m!3442185 () Bool)

(assert (=> d!871303 m!3442185))

(assert (=> d!871303 m!3441361))

(declare-fun m!3442187 () Bool)

(assert (=> d!871303 m!3442187))

(assert (=> d!871303 m!3442183))

(assert (=> d!871303 m!3442183))

(declare-fun m!3442189 () Bool)

(assert (=> d!871303 m!3442189))

(declare-fun m!3442191 () Bool)

(assert (=> d!871303 m!3442191))

(assert (=> d!871303 m!3442185))

(declare-fun m!3442193 () Bool)

(assert (=> d!871303 m!3442193))

(declare-fun m!3442195 () Bool)

(assert (=> b!3184894 m!3442195))

(declare-fun m!3442197 () Bool)

(assert (=> b!3184895 m!3442197))

(assert (=> b!3184896 m!3442183))

(assert (=> b!3184896 m!3442183))

(assert (=> b!3184896 m!3442185))

(assert (=> b!3184896 m!3442185))

(assert (=> b!3184896 m!3442193))

(declare-fun m!3442199 () Bool)

(assert (=> b!3184896 m!3442199))

(assert (=> b!3184168 d!871303))

(declare-fun b!3184897 () Bool)

(declare-fun e!1984547 () Bool)

(assert (=> b!3184897 (= e!1984547 (matchR!4549 (derivativeStep!2937 (regex!5132 lt!1070863) (head!6961 lt!1070869)) (tail!5179 lt!1070869)))))

(declare-fun b!3184898 () Bool)

(declare-fun res!1294805 () Bool)

(declare-fun e!1984543 () Bool)

(assert (=> b!3184898 (=> (not res!1294805) (not e!1984543))))

(assert (=> b!3184898 (= res!1294805 (isEmpty!19915 (tail!5179 lt!1070869)))))

(declare-fun b!3184899 () Bool)

(declare-fun e!1984546 () Bool)

(declare-fun e!1984544 () Bool)

(assert (=> b!3184899 (= e!1984546 e!1984544)))

(declare-fun res!1294810 () Bool)

(assert (=> b!3184899 (=> (not res!1294810) (not e!1984544))))

(declare-fun lt!1071162 () Bool)

(assert (=> b!3184899 (= res!1294810 (not lt!1071162))))

(declare-fun b!3184900 () Bool)

(declare-fun res!1294808 () Bool)

(assert (=> b!3184900 (=> res!1294808 e!1984546)))

(assert (=> b!3184900 (= res!1294808 (not ((_ is ElementMatch!9891) (regex!5132 lt!1070863))))))

(declare-fun e!1984541 () Bool)

(assert (=> b!3184900 (= e!1984541 e!1984546)))

(declare-fun b!3184901 () Bool)

(declare-fun e!1984545 () Bool)

(declare-fun call!231079 () Bool)

(assert (=> b!3184901 (= e!1984545 (= lt!1071162 call!231079))))

(declare-fun b!3184902 () Bool)

(declare-fun e!1984542 () Bool)

(assert (=> b!3184902 (= e!1984544 e!1984542)))

(declare-fun res!1294809 () Bool)

(assert (=> b!3184902 (=> res!1294809 e!1984542)))

(assert (=> b!3184902 (= res!1294809 call!231079)))

(declare-fun b!3184903 () Bool)

(assert (=> b!3184903 (= e!1984541 (not lt!1071162))))

(declare-fun b!3184904 () Bool)

(assert (=> b!3184904 (= e!1984543 (= (head!6961 lt!1070869) (c!534726 (regex!5132 lt!1070863))))))

(declare-fun b!3184905 () Bool)

(assert (=> b!3184905 (= e!1984547 (nullable!3384 (regex!5132 lt!1070863)))))

(declare-fun d!871305 () Bool)

(assert (=> d!871305 e!1984545))

(declare-fun c!534867 () Bool)

(assert (=> d!871305 (= c!534867 ((_ is EmptyExpr!9891) (regex!5132 lt!1070863)))))

(assert (=> d!871305 (= lt!1071162 e!1984547)))

(declare-fun c!534868 () Bool)

(assert (=> d!871305 (= c!534868 (isEmpty!19915 lt!1070869))))

(assert (=> d!871305 (validRegex!4536 (regex!5132 lt!1070863))))

(assert (=> d!871305 (= (matchR!4549 (regex!5132 lt!1070863) lt!1070869) lt!1071162)))

(declare-fun b!3184906 () Bool)

(declare-fun res!1294806 () Bool)

(assert (=> b!3184906 (=> res!1294806 e!1984542)))

(assert (=> b!3184906 (= res!1294806 (not (isEmpty!19915 (tail!5179 lt!1070869))))))

(declare-fun b!3184907 () Bool)

(declare-fun res!1294812 () Bool)

(assert (=> b!3184907 (=> (not res!1294812) (not e!1984543))))

(assert (=> b!3184907 (= res!1294812 (not call!231079))))

(declare-fun bm!231074 () Bool)

(assert (=> bm!231074 (= call!231079 (isEmpty!19915 lt!1070869))))

(declare-fun b!3184908 () Bool)

(assert (=> b!3184908 (= e!1984542 (not (= (head!6961 lt!1070869) (c!534726 (regex!5132 lt!1070863)))))))

(declare-fun b!3184909 () Bool)

(assert (=> b!3184909 (= e!1984545 e!1984541)))

(declare-fun c!534866 () Bool)

(assert (=> b!3184909 (= c!534866 ((_ is EmptyLang!9891) (regex!5132 lt!1070863)))))

(declare-fun b!3184910 () Bool)

(declare-fun res!1294811 () Bool)

(assert (=> b!3184910 (=> res!1294811 e!1984546)))

(assert (=> b!3184910 (= res!1294811 e!1984543)))

(declare-fun res!1294807 () Bool)

(assert (=> b!3184910 (=> (not res!1294807) (not e!1984543))))

(assert (=> b!3184910 (= res!1294807 lt!1071162)))

(assert (= (and d!871305 c!534868) b!3184905))

(assert (= (and d!871305 (not c!534868)) b!3184897))

(assert (= (and d!871305 c!534867) b!3184901))

(assert (= (and d!871305 (not c!534867)) b!3184909))

(assert (= (and b!3184909 c!534866) b!3184903))

(assert (= (and b!3184909 (not c!534866)) b!3184900))

(assert (= (and b!3184900 (not res!1294808)) b!3184910))

(assert (= (and b!3184910 res!1294807) b!3184907))

(assert (= (and b!3184907 res!1294812) b!3184898))

(assert (= (and b!3184898 res!1294805) b!3184904))

(assert (= (and b!3184910 (not res!1294811)) b!3184899))

(assert (= (and b!3184899 res!1294810) b!3184902))

(assert (= (and b!3184902 (not res!1294809)) b!3184906))

(assert (= (and b!3184906 (not res!1294806)) b!3184908))

(assert (= (or b!3184901 b!3184902 b!3184907) bm!231074))

(assert (=> b!3184904 m!3441309))

(assert (=> b!3184897 m!3441309))

(assert (=> b!3184897 m!3441309))

(declare-fun m!3442201 () Bool)

(assert (=> b!3184897 m!3442201))

(declare-fun m!3442203 () Bool)

(assert (=> b!3184897 m!3442203))

(assert (=> b!3184897 m!3442201))

(assert (=> b!3184897 m!3442203))

(declare-fun m!3442205 () Bool)

(assert (=> b!3184897 m!3442205))

(declare-fun m!3442207 () Bool)

(assert (=> b!3184905 m!3442207))

(assert (=> b!3184898 m!3442203))

(assert (=> b!3184898 m!3442203))

(declare-fun m!3442209 () Bool)

(assert (=> b!3184898 m!3442209))

(declare-fun m!3442211 () Bool)

(assert (=> d!871305 m!3442211))

(declare-fun m!3442213 () Bool)

(assert (=> d!871305 m!3442213))

(assert (=> b!3184908 m!3441309))

(assert (=> bm!231074 m!3442211))

(assert (=> b!3184906 m!3442203))

(assert (=> b!3184906 m!3442203))

(assert (=> b!3184906 m!3442209))

(assert (=> b!3184167 d!871305))

(declare-fun d!871307 () Bool)

(assert (=> d!871307 (= (get!11389 lt!1070865) (v!35465 lt!1070865))))

(assert (=> b!3184167 d!871307))

(declare-fun b!3184911 () Bool)

(declare-fun res!1294813 () Bool)

(declare-fun e!1984549 () Bool)

(assert (=> b!3184911 (=> res!1294813 e!1984549)))

(assert (=> b!3184911 (= res!1294813 (not ((_ is IntegerValue!16088) (value!166722 (h!41212 tokens!494)))))))

(declare-fun e!1984548 () Bool)

(assert (=> b!3184911 (= e!1984548 e!1984549)))

(declare-fun b!3184912 () Bool)

(assert (=> b!3184912 (= e!1984549 (inv!15 (value!166722 (h!41212 tokens!494))))))

(declare-fun b!3184913 () Bool)

(assert (=> b!3184913 (= e!1984548 (inv!17 (value!166722 (h!41212 tokens!494))))))

(declare-fun b!3184914 () Bool)

(declare-fun e!1984550 () Bool)

(assert (=> b!3184914 (= e!1984550 e!1984548)))

(declare-fun c!534870 () Bool)

(assert (=> b!3184914 (= c!534870 ((_ is IntegerValue!16087) (value!166722 (h!41212 tokens!494))))))

(declare-fun d!871309 () Bool)

(declare-fun c!534869 () Bool)

(assert (=> d!871309 (= c!534869 ((_ is IntegerValue!16086) (value!166722 (h!41212 tokens!494))))))

(assert (=> d!871309 (= (inv!21 (value!166722 (h!41212 tokens!494))) e!1984550)))

(declare-fun b!3184915 () Bool)

(assert (=> b!3184915 (= e!1984550 (inv!16 (value!166722 (h!41212 tokens!494))))))

(assert (= (and d!871309 c!534869) b!3184915))

(assert (= (and d!871309 (not c!534869)) b!3184914))

(assert (= (and b!3184914 c!534870) b!3184913))

(assert (= (and b!3184914 (not c!534870)) b!3184911))

(assert (= (and b!3184911 (not res!1294813)) b!3184912))

(declare-fun m!3442215 () Bool)

(assert (=> b!3184912 m!3442215))

(declare-fun m!3442217 () Bool)

(assert (=> b!3184913 m!3442217))

(declare-fun m!3442219 () Bool)

(assert (=> b!3184915 m!3442219))

(assert (=> b!3184159 d!871309))

(declare-fun d!871311 () Bool)

(assert (=> d!871311 (= (inv!48638 (tag!5644 (rule!7550 separatorToken!241))) (= (mod (str.len (value!166696 (tag!5644 (rule!7550 separatorToken!241)))) 2) 0))))

(assert (=> b!3184180 d!871311))

(declare-fun d!871313 () Bool)

(declare-fun res!1294814 () Bool)

(declare-fun e!1984551 () Bool)

(assert (=> d!871313 (=> (not res!1294814) (not e!1984551))))

(assert (=> d!871313 (= res!1294814 (semiInverseModEq!2137 (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))) (toValue!7192 (transformation!5132 (rule!7550 separatorToken!241)))))))

(assert (=> d!871313 (= (inv!48642 (transformation!5132 (rule!7550 separatorToken!241))) e!1984551)))

(declare-fun b!3184916 () Bool)

(assert (=> b!3184916 (= e!1984551 (equivClasses!2036 (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))) (toValue!7192 (transformation!5132 (rule!7550 separatorToken!241)))))))

(assert (= (and d!871313 res!1294814) b!3184916))

(declare-fun m!3442221 () Bool)

(assert (=> d!871313 m!3442221))

(declare-fun m!3442223 () Bool)

(assert (=> b!3184916 m!3442223))

(assert (=> b!3184180 d!871313))

(declare-fun d!871315 () Bool)

(assert (=> d!871315 (not (matchR!4549 (regex!5132 (rule!7550 separatorToken!241)) lt!1070869))))

(declare-fun lt!1071165 () Unit!50199)

(declare-fun choose!18586 (Regex!9891 List!35915 C!19968) Unit!50199)

(assert (=> d!871315 (= lt!1071165 (choose!18586 (regex!5132 (rule!7550 separatorToken!241)) lt!1070869 lt!1070872))))

(assert (=> d!871315 (validRegex!4536 (regex!5132 (rule!7550 separatorToken!241)))))

(assert (=> d!871315 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!330 (regex!5132 (rule!7550 separatorToken!241)) lt!1070869 lt!1070872) lt!1071165)))

(declare-fun bs!540014 () Bool)

(assert (= bs!540014 d!871315))

(assert (=> bs!540014 m!3441263))

(declare-fun m!3442225 () Bool)

(assert (=> bs!540014 m!3442225))

(declare-fun m!3442227 () Bool)

(assert (=> bs!540014 m!3442227))

(assert (=> b!3184163 d!871315))

(declare-fun b!3184917 () Bool)

(declare-fun e!1984558 () Bool)

(assert (=> b!3184917 (= e!1984558 (matchR!4549 (derivativeStep!2937 (regex!5132 (rule!7550 separatorToken!241)) (head!6961 lt!1070869)) (tail!5179 lt!1070869)))))

(declare-fun b!3184918 () Bool)

(declare-fun res!1294815 () Bool)

(declare-fun e!1984554 () Bool)

(assert (=> b!3184918 (=> (not res!1294815) (not e!1984554))))

(assert (=> b!3184918 (= res!1294815 (isEmpty!19915 (tail!5179 lt!1070869)))))

(declare-fun b!3184919 () Bool)

(declare-fun e!1984557 () Bool)

(declare-fun e!1984555 () Bool)

(assert (=> b!3184919 (= e!1984557 e!1984555)))

(declare-fun res!1294820 () Bool)

(assert (=> b!3184919 (=> (not res!1294820) (not e!1984555))))

(declare-fun lt!1071166 () Bool)

(assert (=> b!3184919 (= res!1294820 (not lt!1071166))))

(declare-fun b!3184920 () Bool)

(declare-fun res!1294818 () Bool)

(assert (=> b!3184920 (=> res!1294818 e!1984557)))

(assert (=> b!3184920 (= res!1294818 (not ((_ is ElementMatch!9891) (regex!5132 (rule!7550 separatorToken!241)))))))

(declare-fun e!1984552 () Bool)

(assert (=> b!3184920 (= e!1984552 e!1984557)))

(declare-fun b!3184921 () Bool)

(declare-fun e!1984556 () Bool)

(declare-fun call!231080 () Bool)

(assert (=> b!3184921 (= e!1984556 (= lt!1071166 call!231080))))

(declare-fun b!3184922 () Bool)

(declare-fun e!1984553 () Bool)

(assert (=> b!3184922 (= e!1984555 e!1984553)))

(declare-fun res!1294819 () Bool)

(assert (=> b!3184922 (=> res!1294819 e!1984553)))

(assert (=> b!3184922 (= res!1294819 call!231080)))

(declare-fun b!3184923 () Bool)

(assert (=> b!3184923 (= e!1984552 (not lt!1071166))))

(declare-fun b!3184924 () Bool)

(assert (=> b!3184924 (= e!1984554 (= (head!6961 lt!1070869) (c!534726 (regex!5132 (rule!7550 separatorToken!241)))))))

(declare-fun b!3184925 () Bool)

(assert (=> b!3184925 (= e!1984558 (nullable!3384 (regex!5132 (rule!7550 separatorToken!241))))))

(declare-fun d!871317 () Bool)

(assert (=> d!871317 e!1984556))

(declare-fun c!534873 () Bool)

(assert (=> d!871317 (= c!534873 ((_ is EmptyExpr!9891) (regex!5132 (rule!7550 separatorToken!241))))))

(assert (=> d!871317 (= lt!1071166 e!1984558)))

(declare-fun c!534874 () Bool)

(assert (=> d!871317 (= c!534874 (isEmpty!19915 lt!1070869))))

(assert (=> d!871317 (validRegex!4536 (regex!5132 (rule!7550 separatorToken!241)))))

(assert (=> d!871317 (= (matchR!4549 (regex!5132 (rule!7550 separatorToken!241)) lt!1070869) lt!1071166)))

(declare-fun b!3184926 () Bool)

(declare-fun res!1294816 () Bool)

(assert (=> b!3184926 (=> res!1294816 e!1984553)))

(assert (=> b!3184926 (= res!1294816 (not (isEmpty!19915 (tail!5179 lt!1070869))))))

(declare-fun b!3184927 () Bool)

(declare-fun res!1294822 () Bool)

(assert (=> b!3184927 (=> (not res!1294822) (not e!1984554))))

(assert (=> b!3184927 (= res!1294822 (not call!231080))))

(declare-fun bm!231075 () Bool)

(assert (=> bm!231075 (= call!231080 (isEmpty!19915 lt!1070869))))

(declare-fun b!3184928 () Bool)

(assert (=> b!3184928 (= e!1984553 (not (= (head!6961 lt!1070869) (c!534726 (regex!5132 (rule!7550 separatorToken!241))))))))

(declare-fun b!3184929 () Bool)

(assert (=> b!3184929 (= e!1984556 e!1984552)))

(declare-fun c!534872 () Bool)

(assert (=> b!3184929 (= c!534872 ((_ is EmptyLang!9891) (regex!5132 (rule!7550 separatorToken!241))))))

(declare-fun b!3184930 () Bool)

(declare-fun res!1294821 () Bool)

(assert (=> b!3184930 (=> res!1294821 e!1984557)))

(assert (=> b!3184930 (= res!1294821 e!1984554)))

(declare-fun res!1294817 () Bool)

(assert (=> b!3184930 (=> (not res!1294817) (not e!1984554))))

(assert (=> b!3184930 (= res!1294817 lt!1071166)))

(assert (= (and d!871317 c!534874) b!3184925))

(assert (= (and d!871317 (not c!534874)) b!3184917))

(assert (= (and d!871317 c!534873) b!3184921))

(assert (= (and d!871317 (not c!534873)) b!3184929))

(assert (= (and b!3184929 c!534872) b!3184923))

(assert (= (and b!3184929 (not c!534872)) b!3184920))

(assert (= (and b!3184920 (not res!1294818)) b!3184930))

(assert (= (and b!3184930 res!1294817) b!3184927))

(assert (= (and b!3184927 res!1294822) b!3184918))

(assert (= (and b!3184918 res!1294815) b!3184924))

(assert (= (and b!3184930 (not res!1294821)) b!3184919))

(assert (= (and b!3184919 res!1294820) b!3184922))

(assert (= (and b!3184922 (not res!1294819)) b!3184926))

(assert (= (and b!3184926 (not res!1294816)) b!3184928))

(assert (= (or b!3184921 b!3184922 b!3184927) bm!231075))

(assert (=> b!3184924 m!3441309))

(assert (=> b!3184917 m!3441309))

(assert (=> b!3184917 m!3441309))

(declare-fun m!3442229 () Bool)

(assert (=> b!3184917 m!3442229))

(assert (=> b!3184917 m!3442203))

(assert (=> b!3184917 m!3442229))

(assert (=> b!3184917 m!3442203))

(declare-fun m!3442231 () Bool)

(assert (=> b!3184917 m!3442231))

(declare-fun m!3442233 () Bool)

(assert (=> b!3184925 m!3442233))

(assert (=> b!3184918 m!3442203))

(assert (=> b!3184918 m!3442203))

(assert (=> b!3184918 m!3442209))

(assert (=> d!871317 m!3442211))

(assert (=> d!871317 m!3442227))

(assert (=> b!3184928 m!3441309))

(assert (=> bm!231075 m!3442211))

(assert (=> b!3184926 m!3442203))

(assert (=> b!3184926 m!3442203))

(assert (=> b!3184926 m!3442209))

(assert (=> b!3184163 d!871317))

(declare-fun d!871319 () Bool)

(assert (=> d!871319 (= (inv!48638 (tag!5644 (h!41213 rules!2135))) (= (mod (str.len (value!166696 (tag!5644 (h!41213 rules!2135)))) 2) 0))))

(assert (=> b!3184162 d!871319))

(declare-fun d!871321 () Bool)

(declare-fun res!1294823 () Bool)

(declare-fun e!1984559 () Bool)

(assert (=> d!871321 (=> (not res!1294823) (not e!1984559))))

(assert (=> d!871321 (= res!1294823 (semiInverseModEq!2137 (toChars!7051 (transformation!5132 (h!41213 rules!2135))) (toValue!7192 (transformation!5132 (h!41213 rules!2135)))))))

(assert (=> d!871321 (= (inv!48642 (transformation!5132 (h!41213 rules!2135))) e!1984559)))

(declare-fun b!3184931 () Bool)

(assert (=> b!3184931 (= e!1984559 (equivClasses!2036 (toChars!7051 (transformation!5132 (h!41213 rules!2135))) (toValue!7192 (transformation!5132 (h!41213 rules!2135)))))))

(assert (= (and d!871321 res!1294823) b!3184931))

(declare-fun m!3442235 () Bool)

(assert (=> d!871321 m!3442235))

(declare-fun m!3442237 () Bool)

(assert (=> b!3184931 m!3442237))

(assert (=> b!3184162 d!871321))

(declare-fun d!871323 () Bool)

(assert (=> d!871323 (= (isEmpty!19917 rules!2135) ((_ is Nil!35793) rules!2135))))

(assert (=> b!3184161 d!871323))

(declare-fun b!3184944 () Bool)

(declare-fun e!1984562 () Bool)

(declare-fun tp!1007255 () Bool)

(assert (=> b!3184944 (= e!1984562 tp!1007255)))

(declare-fun b!3184945 () Bool)

(declare-fun tp!1007254 () Bool)

(declare-fun tp!1007252 () Bool)

(assert (=> b!3184945 (= e!1984562 (and tp!1007254 tp!1007252))))

(declare-fun b!3184942 () Bool)

(declare-fun tp_is_empty!17261 () Bool)

(assert (=> b!3184942 (= e!1984562 tp_is_empty!17261)))

(assert (=> b!3184166 (= tp!1007167 e!1984562)))

(declare-fun b!3184943 () Bool)

(declare-fun tp!1007251 () Bool)

(declare-fun tp!1007253 () Bool)

(assert (=> b!3184943 (= e!1984562 (and tp!1007251 tp!1007253))))

(assert (= (and b!3184166 ((_ is ElementMatch!9891) (regex!5132 (rule!7550 (h!41212 tokens!494))))) b!3184942))

(assert (= (and b!3184166 ((_ is Concat!15253) (regex!5132 (rule!7550 (h!41212 tokens!494))))) b!3184943))

(assert (= (and b!3184166 ((_ is Star!9891) (regex!5132 (rule!7550 (h!41212 tokens!494))))) b!3184944))

(assert (= (and b!3184166 ((_ is Union!9891) (regex!5132 (rule!7550 (h!41212 tokens!494))))) b!3184945))

(declare-fun b!3184956 () Bool)

(declare-fun b_free!84077 () Bool)

(declare-fun b_next!84781 () Bool)

(assert (=> b!3184956 (= b_free!84077 (not b_next!84781))))

(declare-fun t!235492 () Bool)

(declare-fun tb!155443 () Bool)

(assert (=> (and b!3184956 (= (toValue!7192 (transformation!5132 (h!41213 (t!235428 rules!2135)))) (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494))))) t!235492) tb!155443))

(declare-fun result!197572 () Bool)

(assert (= result!197572 result!197540))

(assert (=> d!871239 t!235492))

(declare-fun tp!1007267 () Bool)

(declare-fun b_and!210707 () Bool)

(assert (=> b!3184956 (= tp!1007267 (and (=> t!235492 result!197572) b_and!210707))))

(declare-fun b_free!84079 () Bool)

(declare-fun b_next!84783 () Bool)

(assert (=> b!3184956 (= b_free!84079 (not b_next!84783))))

(declare-fun t!235494 () Bool)

(declare-fun tb!155445 () Bool)

(assert (=> (and b!3184956 (= (toChars!7051 (transformation!5132 (h!41213 (t!235428 rules!2135)))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241)))) t!235494) tb!155445))

(declare-fun result!197574 () Bool)

(assert (= result!197574 result!197518))

(assert (=> b!3184296 t!235494))

(declare-fun t!235496 () Bool)

(declare-fun tb!155447 () Bool)

(assert (=> (and b!3184956 (= (toChars!7051 (transformation!5132 (h!41213 (t!235428 rules!2135)))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494))))) t!235496) tb!155447))

(declare-fun result!197576 () Bool)

(assert (= result!197576 result!197526))

(assert (=> b!3184303 t!235496))

(assert (=> d!871287 t!235494))

(assert (=> d!871297 t!235496))

(declare-fun b_and!210709 () Bool)

(declare-fun tp!1007266 () Bool)

(assert (=> b!3184956 (= tp!1007266 (and (=> t!235494 result!197574) (=> t!235496 result!197576) b_and!210709))))

(declare-fun e!1984573 () Bool)

(assert (=> b!3184956 (= e!1984573 (and tp!1007267 tp!1007266))))

(declare-fun b!3184955 () Bool)

(declare-fun tp!1007265 () Bool)

(declare-fun e!1984574 () Bool)

(assert (=> b!3184955 (= e!1984574 (and tp!1007265 (inv!48638 (tag!5644 (h!41213 (t!235428 rules!2135)))) (inv!48642 (transformation!5132 (h!41213 (t!235428 rules!2135)))) e!1984573))))

(declare-fun b!3184954 () Bool)

(declare-fun e!1984572 () Bool)

(declare-fun tp!1007264 () Bool)

(assert (=> b!3184954 (= e!1984572 (and e!1984574 tp!1007264))))

(assert (=> b!3184154 (= tp!1007176 e!1984572)))

(assert (= b!3184955 b!3184956))

(assert (= b!3184954 b!3184955))

(assert (= (and b!3184154 ((_ is Cons!35793) (t!235428 rules!2135))) b!3184954))

(declare-fun m!3442239 () Bool)

(assert (=> b!3184955 m!3442239))

(declare-fun m!3442241 () Bool)

(assert (=> b!3184955 m!3442241))

(declare-fun b!3184961 () Bool)

(declare-fun e!1984577 () Bool)

(declare-fun tp!1007270 () Bool)

(assert (=> b!3184961 (= e!1984577 (and tp_is_empty!17261 tp!1007270))))

(assert (=> b!3184159 (= tp!1007172 e!1984577)))

(assert (= (and b!3184159 ((_ is Cons!35791) (originalCharacters!5846 (h!41212 tokens!494)))) b!3184961))

(declare-fun b!3184964 () Bool)

(declare-fun e!1984578 () Bool)

(declare-fun tp!1007275 () Bool)

(assert (=> b!3184964 (= e!1984578 tp!1007275)))

(declare-fun b!3184965 () Bool)

(declare-fun tp!1007274 () Bool)

(declare-fun tp!1007272 () Bool)

(assert (=> b!3184965 (= e!1984578 (and tp!1007274 tp!1007272))))

(declare-fun b!3184962 () Bool)

(assert (=> b!3184962 (= e!1984578 tp_is_empty!17261)))

(assert (=> b!3184180 (= tp!1007173 e!1984578)))

(declare-fun b!3184963 () Bool)

(declare-fun tp!1007271 () Bool)

(declare-fun tp!1007273 () Bool)

(assert (=> b!3184963 (= e!1984578 (and tp!1007271 tp!1007273))))

(assert (= (and b!3184180 ((_ is ElementMatch!9891) (regex!5132 (rule!7550 separatorToken!241)))) b!3184962))

(assert (= (and b!3184180 ((_ is Concat!15253) (regex!5132 (rule!7550 separatorToken!241)))) b!3184963))

(assert (= (and b!3184180 ((_ is Star!9891) (regex!5132 (rule!7550 separatorToken!241)))) b!3184964))

(assert (= (and b!3184180 ((_ is Union!9891) (regex!5132 (rule!7550 separatorToken!241)))) b!3184965))

(declare-fun b!3184979 () Bool)

(declare-fun b_free!84081 () Bool)

(declare-fun b_next!84785 () Bool)

(assert (=> b!3184979 (= b_free!84081 (not b_next!84785))))

(declare-fun t!235498 () Bool)

(declare-fun tb!155449 () Bool)

(assert (=> (and b!3184979 (= (toValue!7192 (transformation!5132 (rule!7550 (h!41212 (t!235427 tokens!494))))) (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494))))) t!235498) tb!155449))

(declare-fun result!197582 () Bool)

(assert (= result!197582 result!197540))

(assert (=> d!871239 t!235498))

(declare-fun b_and!210711 () Bool)

(declare-fun tp!1007288 () Bool)

(assert (=> b!3184979 (= tp!1007288 (and (=> t!235498 result!197582) b_and!210711))))

(declare-fun b_free!84083 () Bool)

(declare-fun b_next!84787 () Bool)

(assert (=> b!3184979 (= b_free!84083 (not b_next!84787))))

(declare-fun t!235500 () Bool)

(declare-fun tb!155451 () Bool)

(assert (=> (and b!3184979 (= (toChars!7051 (transformation!5132 (rule!7550 (h!41212 (t!235427 tokens!494))))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241)))) t!235500) tb!155451))

(declare-fun result!197584 () Bool)

(assert (= result!197584 result!197518))

(assert (=> b!3184296 t!235500))

(declare-fun t!235502 () Bool)

(declare-fun tb!155453 () Bool)

(assert (=> (and b!3184979 (= (toChars!7051 (transformation!5132 (rule!7550 (h!41212 (t!235427 tokens!494))))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494))))) t!235502) tb!155453))

(declare-fun result!197586 () Bool)

(assert (= result!197586 result!197526))

(assert (=> b!3184303 t!235502))

(assert (=> d!871287 t!235500))

(assert (=> d!871297 t!235502))

(declare-fun b_and!210713 () Bool)

(declare-fun tp!1007287 () Bool)

(assert (=> b!3184979 (= tp!1007287 (and (=> t!235500 result!197584) (=> t!235502 result!197586) b_and!210713))))

(declare-fun e!1984594 () Bool)

(declare-fun tp!1007286 () Bool)

(declare-fun e!1984595 () Bool)

(declare-fun b!3184978 () Bool)

(assert (=> b!3184978 (= e!1984595 (and tp!1007286 (inv!48638 (tag!5644 (rule!7550 (h!41212 (t!235427 tokens!494))))) (inv!48642 (transformation!5132 (rule!7550 (h!41212 (t!235427 tokens!494))))) e!1984594))))

(declare-fun b!3184977 () Bool)

(declare-fun tp!1007289 () Bool)

(declare-fun e!1984596 () Bool)

(assert (=> b!3184977 (= e!1984596 (and (inv!21 (value!166722 (h!41212 (t!235427 tokens!494)))) e!1984595 tp!1007289))))

(assert (=> b!3184979 (= e!1984594 (and tp!1007288 tp!1007287))))

(declare-fun e!1984591 () Bool)

(assert (=> b!3184179 (= tp!1007171 e!1984591)))

(declare-fun b!3184976 () Bool)

(declare-fun tp!1007290 () Bool)

(assert (=> b!3184976 (= e!1984591 (and (inv!48641 (h!41212 (t!235427 tokens!494))) e!1984596 tp!1007290))))

(assert (= b!3184978 b!3184979))

(assert (= b!3184977 b!3184978))

(assert (= b!3184976 b!3184977))

(assert (= (and b!3184179 ((_ is Cons!35792) (t!235427 tokens!494))) b!3184976))

(declare-fun m!3442243 () Bool)

(assert (=> b!3184978 m!3442243))

(declare-fun m!3442245 () Bool)

(assert (=> b!3184978 m!3442245))

(declare-fun m!3442247 () Bool)

(assert (=> b!3184977 m!3442247))

(declare-fun m!3442249 () Bool)

(assert (=> b!3184976 m!3442249))

(declare-fun b!3184982 () Bool)

(declare-fun e!1984597 () Bool)

(declare-fun tp!1007295 () Bool)

(assert (=> b!3184982 (= e!1984597 tp!1007295)))

(declare-fun b!3184983 () Bool)

(declare-fun tp!1007294 () Bool)

(declare-fun tp!1007292 () Bool)

(assert (=> b!3184983 (= e!1984597 (and tp!1007294 tp!1007292))))

(declare-fun b!3184980 () Bool)

(assert (=> b!3184980 (= e!1984597 tp_is_empty!17261)))

(assert (=> b!3184162 (= tp!1007175 e!1984597)))

(declare-fun b!3184981 () Bool)

(declare-fun tp!1007291 () Bool)

(declare-fun tp!1007293 () Bool)

(assert (=> b!3184981 (= e!1984597 (and tp!1007291 tp!1007293))))

(assert (= (and b!3184162 ((_ is ElementMatch!9891) (regex!5132 (h!41213 rules!2135)))) b!3184980))

(assert (= (and b!3184162 ((_ is Concat!15253) (regex!5132 (h!41213 rules!2135)))) b!3184981))

(assert (= (and b!3184162 ((_ is Star!9891) (regex!5132 (h!41213 rules!2135)))) b!3184982))

(assert (= (and b!3184162 ((_ is Union!9891) (regex!5132 (h!41213 rules!2135)))) b!3184983))

(declare-fun b!3184984 () Bool)

(declare-fun e!1984598 () Bool)

(declare-fun tp!1007296 () Bool)

(assert (=> b!3184984 (= e!1984598 (and tp_is_empty!17261 tp!1007296))))

(assert (=> b!3184156 (= tp!1007165 e!1984598)))

(assert (= (and b!3184156 ((_ is Cons!35791) (originalCharacters!5846 separatorToken!241))) b!3184984))

(declare-fun b_lambda!86813 () Bool)

(assert (= b_lambda!86779 (or (and b!3184153 b_free!84059) (and b!3184175 b_free!84067 (= (toChars!7051 (transformation!5132 (h!41213 rules!2135))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))))) (and b!3184979 b_free!84083 (= (toChars!7051 (transformation!5132 (rule!7550 (h!41212 (t!235427 tokens!494))))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))))) (and b!3184152 b_free!84063 (= (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))))) (and b!3184956 b_free!84079 (= (toChars!7051 (transformation!5132 (h!41213 (t!235428 rules!2135)))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))))) b_lambda!86813)))

(declare-fun b_lambda!86815 () Bool)

(assert (= b_lambda!86811 (or (and b!3184152 b_free!84063) (and b!3184956 b_free!84079 (= (toChars!7051 (transformation!5132 (h!41213 (t!235428 rules!2135)))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) (and b!3184175 b_free!84067 (= (toChars!7051 (transformation!5132 (h!41213 rules!2135))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) (and b!3184153 b_free!84059 (= (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) (and b!3184979 b_free!84083 (= (toChars!7051 (transformation!5132 (rule!7550 (h!41212 (t!235427 tokens!494))))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) b_lambda!86815)))

(declare-fun b_lambda!86817 () Bool)

(assert (= b_lambda!86791 (or (and b!3184152 b_free!84061) (and b!3184175 b_free!84065 (= (toValue!7192 (transformation!5132 (h!41213 rules!2135))) (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) (and b!3184153 b_free!84057 (= (toValue!7192 (transformation!5132 (rule!7550 separatorToken!241))) (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) (and b!3184979 b_free!84081 (= (toValue!7192 (transformation!5132 (rule!7550 (h!41212 (t!235427 tokens!494))))) (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) (and b!3184956 b_free!84077 (= (toValue!7192 (transformation!5132 (h!41213 (t!235428 rules!2135)))) (toValue!7192 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) b_lambda!86817)))

(declare-fun b_lambda!86819 () Bool)

(assert (= b_lambda!86783 (or b!3184173 b_lambda!86819)))

(declare-fun bs!540015 () Bool)

(declare-fun d!871325 () Bool)

(assert (= bs!540015 (and d!871325 b!3184173)))

(assert (=> bs!540015 (= (dynLambda!14437 lambda!116493 (h!41212 tokens!494)) (not (isSeparator!5132 (rule!7550 (h!41212 tokens!494)))))))

(assert (=> d!871107 d!871325))

(declare-fun b_lambda!86821 () Bool)

(assert (= b_lambda!86807 (or b!3184173 b_lambda!86821)))

(assert (=> b!3184835 d!871325))

(declare-fun b_lambda!86823 () Bool)

(assert (= b_lambda!86781 (or (and b!3184152 b_free!84063) (and b!3184956 b_free!84079 (= (toChars!7051 (transformation!5132 (h!41213 (t!235428 rules!2135)))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) (and b!3184175 b_free!84067 (= (toChars!7051 (transformation!5132 (h!41213 rules!2135))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) (and b!3184153 b_free!84059 (= (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) (and b!3184979 b_free!84083 (= (toChars!7051 (transformation!5132 (rule!7550 (h!41212 (t!235427 tokens!494))))) (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))))) b_lambda!86823)))

(declare-fun b_lambda!86825 () Bool)

(assert (= b_lambda!86809 (or (and b!3184153 b_free!84059) (and b!3184175 b_free!84067 (= (toChars!7051 (transformation!5132 (h!41213 rules!2135))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))))) (and b!3184979 b_free!84083 (= (toChars!7051 (transformation!5132 (rule!7550 (h!41212 (t!235427 tokens!494))))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))))) (and b!3184152 b_free!84063 (= (toChars!7051 (transformation!5132 (rule!7550 (h!41212 tokens!494)))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))))) (and b!3184956 b_free!84079 (= (toChars!7051 (transformation!5132 (h!41213 (t!235428 rules!2135)))) (toChars!7051 (transformation!5132 (rule!7550 separatorToken!241))))) b_lambda!86825)))

(check-sat (not b!3184977) (not b!3184820) b_and!210709 (not b!3184965) (not b_lambda!86819) (not b!3184897) (not b!3184931) (not b!3184981) (not bm!231063) (not b!3184622) (not b!3184964) (not b!3184984) (not d!871241) (not d!871111) (not b!3184924) (not d!871303) (not d!871277) (not b_lambda!86823) (not tb!155425) (not b!3184824) (not b!3184894) b_and!210701 (not d!871267) (not b_next!84769) (not d!871321) (not bm!231074) b_and!210711 (not d!871151) (not b_lambda!86817) (not b!3184669) (not bm!231067) (not b_next!84787) (not b!3184279) (not b!3184982) (not b!3184889) (not b!3184963) (not b!3184904) (not b!3184822) (not b!3184296) (not d!871293) (not b!3184912) (not d!871317) (not b!3184775) (not tb!155413) (not b!3184887) (not b!3184905) (not b!3184880) (not b!3184723) (not b!3184564) (not d!871315) (not b!3184639) (not b!3184636) (not d!871227) (not b!3184560) (not d!871107) (not d!871207) b_and!210713 (not b!3184928) (not b!3184918) (not b!3184925) (not b_next!84761) (not b!3184614) (not d!871283) (not d!871281) (not d!871105) (not d!871299) (not b!3184916) (not b!3184954) (not b!3184776) (not b!3184983) (not d!871295) (not b!3184580) (not b!3184823) (not b!3184955) (not b!3184282) (not d!871081) (not d!871269) (not b!3184321) (not b_next!84785) (not b!3184568) (not bm!231065) (not b!3184417) (not b!3184961) (not b!3184896) (not b!3184290) (not d!871287) (not b!3184320) (not b!3184278) (not d!871237) (not b!3184302) (not b!3184323) (not d!871147) b_and!210683 (not b!3184303) (not b!3184846) (not d!871275) (not tb!155407) (not b!3184565) (not b!3184830) (not d!871235) (not b_lambda!86813) (not b!3184281) (not d!871285) (not b!3184944) (not b!3184620) (not b!3184562) (not d!871099) (not bm!231064) (not b!3184891) (not b!3184888) (not b!3184913) (not d!871195) (not b!3184881) (not b!3184567) (not d!871305) (not b!3184978) b_and!210703 (not b!3184826) (not b!3184976) (not b!3184898) (not b!3184615) (not b!3184621) (not d!871199) (not b!3184640) (not b!3184945) (not b!3184825) (not b!3184906) (not b!3184304) (not b!3184297) (not d!871101) (not b!3184308) (not b!3184847) (not b!3184561) b_and!210681 (not bm!231070) tp_is_empty!17261 (not d!871253) (not b_lambda!86815) (not b_next!84783) (not bm!231075) (not b_next!84767) (not d!871211) (not d!871079) (not b!3184836) b_and!210707 (not b!3184291) (not b!3184635) (not d!871297) (not b!3184586) b_and!210685 (not b!3184677) (not b!3184895) (not b!3184670) (not d!871103) (not b!3184827) (not b!3184917) (not b!3184679) (not d!871251) (not b!3184731) (not b!3184926) (not b!3184943) (not d!871273) (not b_next!84763) (not b_next!84771) (not b_lambda!86825) (not b!3184908) (not b!3184305) (not b!3184821) (not bm!231073) (not b_next!84765) (not bm!231061) b_and!210705 (not d!871223) (not d!871263) (not d!871247) (not b!3184616) (not d!871249) (not b!3184715) (not b!3184289) (not b!3184627) (not d!871213) (not b!3184435) (not b!3184851) (not b!3184563) (not d!871313) (not d!871289) (not b_lambda!86821) (not b!3184915) (not b_next!84781) (not bm!231060) (not d!871225))
(check-sat b_and!210709 (not b_next!84785) b_and!210683 b_and!210703 b_and!210681 b_and!210707 b_and!210685 (not b_next!84763) b_and!210705 (not b_next!84781) b_and!210701 (not b_next!84769) b_and!210711 (not b_next!84787) (not b_next!84761) b_and!210713 (not b_next!84783) (not b_next!84767) (not b_next!84771) (not b_next!84765))
