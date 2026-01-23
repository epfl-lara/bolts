; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299266 () Bool)

(assert start!299266)

(declare-fun b!3190852 () Bool)

(declare-fun b_free!84409 () Bool)

(declare-fun b_next!85113 () Bool)

(assert (=> b!3190852 (= b_free!84409 (not b_next!85113))))

(declare-fun tp!1008704 () Bool)

(declare-fun b_and!211419 () Bool)

(assert (=> b!3190852 (= tp!1008704 b_and!211419)))

(declare-fun b_free!84411 () Bool)

(declare-fun b_next!85115 () Bool)

(assert (=> b!3190852 (= b_free!84411 (not b_next!85115))))

(declare-fun tp!1008698 () Bool)

(declare-fun b_and!211421 () Bool)

(assert (=> b!3190852 (= tp!1008698 b_and!211421)))

(declare-fun b!3190848 () Bool)

(declare-fun b_free!84413 () Bool)

(declare-fun b_next!85117 () Bool)

(assert (=> b!3190848 (= b_free!84413 (not b_next!85117))))

(declare-fun tp!1008694 () Bool)

(declare-fun b_and!211423 () Bool)

(assert (=> b!3190848 (= tp!1008694 b_and!211423)))

(declare-fun b_free!84415 () Bool)

(declare-fun b_next!85119 () Bool)

(assert (=> b!3190848 (= b_free!84415 (not b_next!85119))))

(declare-fun tp!1008700 () Bool)

(declare-fun b_and!211425 () Bool)

(assert (=> b!3190848 (= tp!1008700 b_and!211425)))

(declare-fun b!3190824 () Bool)

(declare-fun b_free!84417 () Bool)

(declare-fun b_next!85121 () Bool)

(assert (=> b!3190824 (= b_free!84417 (not b_next!85121))))

(declare-fun tp!1008692 () Bool)

(declare-fun b_and!211427 () Bool)

(assert (=> b!3190824 (= tp!1008692 b_and!211427)))

(declare-fun b_free!84419 () Bool)

(declare-fun b_next!85123 () Bool)

(assert (=> b!3190824 (= b_free!84419 (not b_next!85123))))

(declare-fun tp!1008703 () Bool)

(declare-fun b_and!211429 () Bool)

(assert (=> b!3190824 (= tp!1008703 b_and!211429)))

(declare-fun b!3190823 () Bool)

(declare-datatypes ((Unit!50329 0))(
  ( (Unit!50330) )
))
(declare-fun e!1988714 () Unit!50329)

(declare-fun Unit!50331 () Unit!50329)

(assert (=> b!3190823 (= e!1988714 Unit!50331)))

(declare-fun e!1988721 () Bool)

(assert (=> b!3190824 (= e!1988721 (and tp!1008692 tp!1008703))))

(declare-fun b!3190825 () Bool)

(declare-datatypes ((C!20016 0))(
  ( (C!20017 (val!12056 Int)) )
))
(declare-datatypes ((Regex!9915 0))(
  ( (ElementMatch!9915 (c!535812 C!20016)) (Concat!15301 (regOne!20342 Regex!9915) (regTwo!20342 Regex!9915)) (EmptyExpr!9915) (Star!9915 (reg!10244 Regex!9915)) (EmptyLang!9915) (Union!9915 (regOne!20343 Regex!9915) (regTwo!20343 Regex!9915)) )
))
(declare-datatypes ((List!36016 0))(
  ( (Nil!35892) (Cons!35892 (h!41312 (_ BitVec 16)) (t!236171 List!36016)) )
))
(declare-datatypes ((TokenValue!5386 0))(
  ( (FloatLiteralValue!10772 (text!38147 List!36016)) (TokenValueExt!5385 (__x!22989 Int)) (Broken!26930 (value!167380 List!36016)) (Object!5509) (End!5386) (Def!5386) (Underscore!5386) (Match!5386) (Else!5386) (Error!5386) (Case!5386) (If!5386) (Extends!5386) (Abstract!5386) (Class!5386) (Val!5386) (DelimiterValue!10772 (del!5446 List!36016)) (KeywordValue!5392 (value!167381 List!36016)) (CommentValue!10772 (value!167382 List!36016)) (WhitespaceValue!10772 (value!167383 List!36016)) (IndentationValue!5386 (value!167384 List!36016)) (String!40263) (Int32!5386) (Broken!26931 (value!167385 List!36016)) (Boolean!5387) (Unit!50332) (OperatorValue!5389 (op!5446 List!36016)) (IdentifierValue!10772 (value!167386 List!36016)) (IdentifierValue!10773 (value!167387 List!36016)) (WhitespaceValue!10773 (value!167388 List!36016)) (True!10772) (False!10772) (Broken!26932 (value!167389 List!36016)) (Broken!26933 (value!167390 List!36016)) (True!10773) (RightBrace!5386) (RightBracket!5386) (Colon!5386) (Null!5386) (Comma!5386) (LeftBracket!5386) (False!10773) (LeftBrace!5386) (ImaginaryLiteralValue!5386 (text!38148 List!36016)) (StringLiteralValue!16158 (value!167391 List!36016)) (EOFValue!5386 (value!167392 List!36016)) (IdentValue!5386 (value!167393 List!36016)) (DelimiterValue!10773 (value!167394 List!36016)) (DedentValue!5386 (value!167395 List!36016)) (NewLineValue!5386 (value!167396 List!36016)) (IntegerValue!16158 (value!167397 (_ BitVec 32)) (text!38149 List!36016)) (IntegerValue!16159 (value!167398 Int) (text!38150 List!36016)) (Times!5386) (Or!5386) (Equal!5386) (Minus!5386) (Broken!26934 (value!167399 List!36016)) (And!5386) (Div!5386) (LessEqual!5386) (Mod!5386) (Concat!15302) (Not!5386) (Plus!5386) (SpaceValue!5386 (value!167400 List!36016)) (IntegerValue!16160 (value!167401 Int) (text!38151 List!36016)) (StringLiteralValue!16159 (text!38152 List!36016)) (FloatLiteralValue!10773 (text!38153 List!36016)) (BytesLiteralValue!5386 (value!167402 List!36016)) (CommentValue!10773 (value!167403 List!36016)) (StringLiteralValue!16160 (value!167404 List!36016)) (ErrorTokenValue!5386 (msg!5447 List!36016)) )
))
(declare-datatypes ((List!36017 0))(
  ( (Nil!35893) (Cons!35893 (h!41313 C!20016) (t!236172 List!36017)) )
))
(declare-datatypes ((IArray!21379 0))(
  ( (IArray!21380 (innerList!10747 List!36017)) )
))
(declare-datatypes ((Conc!10687 0))(
  ( (Node!10687 (left!27907 Conc!10687) (right!28237 Conc!10687) (csize!21604 Int) (cheight!10898 Int)) (Leaf!16876 (xs!13805 IArray!21379) (csize!21605 Int)) (Empty!10687) )
))
(declare-datatypes ((BalanceConc!20988 0))(
  ( (BalanceConc!20989 (c!535813 Conc!10687)) )
))
(declare-datatypes ((String!40264 0))(
  ( (String!40265 (value!167405 String)) )
))
(declare-datatypes ((TokenValueInjection!10200 0))(
  ( (TokenValueInjection!10201 (toValue!7220 Int) (toChars!7079 Int)) )
))
(declare-datatypes ((Rule!10112 0))(
  ( (Rule!10113 (regex!5156 Regex!9915) (tag!5674 String!40264) (isSeparator!5156 Bool) (transformation!5156 TokenValueInjection!10200)) )
))
(declare-datatypes ((Token!9678 0))(
  ( (Token!9679 (value!167406 TokenValue!5386) (rule!7588 Rule!10112) (size!27068 Int) (originalCharacters!5870 List!36017)) )
))
(declare-datatypes ((List!36018 0))(
  ( (Nil!35894) (Cons!35894 (h!41314 Token!9678) (t!236173 List!36018)) )
))
(declare-datatypes ((tuple2!35292 0))(
  ( (tuple2!35293 (_1!20780 List!36018) (_2!20780 List!36017)) )
))
(declare-fun e!1988715 () tuple2!35292)

(declare-datatypes ((tuple2!35294 0))(
  ( (tuple2!35295 (_1!20781 Token!9678) (_2!20781 List!36017)) )
))
(declare-datatypes ((Option!7045 0))(
  ( (None!7044) (Some!7044 (v!35544 tuple2!35294)) )
))
(declare-fun lt!1074679 () Option!7045)

(declare-fun lt!1074695 () tuple2!35292)

(assert (=> b!3190825 (= e!1988715 (tuple2!35293 (Cons!35894 (_1!20781 (v!35544 lt!1074679)) (_1!20780 lt!1074695)) (_2!20780 lt!1074695)))))

(declare-datatypes ((LexerInterface!4745 0))(
  ( (LexerInterfaceExt!4742 (__x!22990 Int)) (Lexer!4743) )
))
(declare-fun thiss!18206 () LexerInterface!4745)

(declare-datatypes ((List!36019 0))(
  ( (Nil!35895) (Cons!35895 (h!41315 Rule!10112) (t!236174 List!36019)) )
))
(declare-fun rules!2135 () List!36019)

(declare-fun lexList!1295 (LexerInterface!4745 List!36019 List!36017) tuple2!35292)

(assert (=> b!3190825 (= lt!1074695 (lexList!1295 thiss!18206 rules!2135 (_2!20781 (v!35544 lt!1074679))))))

(declare-fun b!3190826 () Bool)

(declare-fun res!1297813 () Bool)

(declare-fun e!1988712 () Bool)

(assert (=> b!3190826 (=> (not res!1297813) (not e!1988712))))

(declare-fun isEmpty!20024 (List!36019) Bool)

(assert (=> b!3190826 (= res!1297813 (not (isEmpty!20024 rules!2135)))))

(declare-fun b!3190827 () Bool)

(declare-fun res!1297800 () Bool)

(declare-fun e!1988730 () Bool)

(assert (=> b!3190827 (=> (not res!1297800) (not e!1988730))))

(declare-fun tokens!494 () List!36018)

(declare-fun lambda!116723 () Int)

(declare-fun forall!7288 (List!36018 Int) Bool)

(assert (=> b!3190827 (= res!1297800 (forall!7288 tokens!494 lambda!116723))))

(declare-fun e!1988711 () Bool)

(declare-fun e!1988726 () Bool)

(declare-fun b!3190828 () Bool)

(declare-fun tp!1008696 () Bool)

(declare-fun inv!48743 (Token!9678) Bool)

(assert (=> b!3190828 (= e!1988711 (and (inv!48743 (h!41314 tokens!494)) e!1988726 tp!1008696))))

(declare-fun b!3190829 () Bool)

(declare-fun lt!1074693 () List!36017)

(assert (=> b!3190829 (= e!1988715 (tuple2!35293 Nil!35894 lt!1074693))))

(assert (=> b!3190829 false))

(declare-fun b!3190831 () Bool)

(declare-fun e!1988701 () Bool)

(declare-fun e!1988725 () Bool)

(assert (=> b!3190831 (= e!1988701 e!1988725)))

(declare-fun res!1297816 () Bool)

(assert (=> b!3190831 (=> (not res!1297816) (not e!1988725))))

(declare-fun lt!1074698 () Rule!10112)

(declare-fun lt!1074689 () List!36017)

(declare-fun matchR!4573 (Regex!9915 List!36017) Bool)

(assert (=> b!3190831 (= res!1297816 (matchR!4573 (regex!5156 lt!1074698) lt!1074689))))

(declare-datatypes ((Option!7046 0))(
  ( (None!7045) (Some!7045 (v!35545 Rule!10112)) )
))
(declare-fun lt!1074688 () Option!7046)

(declare-fun get!11431 (Option!7046) Rule!10112)

(assert (=> b!3190831 (= lt!1074698 (get!11431 lt!1074688))))

(declare-fun b!3190832 () Bool)

(declare-fun e!1988705 () Bool)

(declare-fun tp!1008702 () Bool)

(declare-fun e!1988724 () Bool)

(declare-fun inv!48740 (String!40264) Bool)

(declare-fun inv!48744 (TokenValueInjection!10200) Bool)

(assert (=> b!3190832 (= e!1988705 (and tp!1008702 (inv!48740 (tag!5674 (h!41315 rules!2135))) (inv!48744 (transformation!5156 (h!41315 rules!2135))) e!1988724))))

(declare-fun b!3190833 () Bool)

(declare-fun Unit!50333 () Unit!50329)

(assert (=> b!3190833 (= e!1988714 Unit!50333)))

(declare-fun separatorToken!241 () Token!9678)

(declare-fun lt!1074686 () Unit!50329)

(declare-fun lt!1074675 () List!36017)

(declare-fun lt!1074677 () C!20016)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!354 (Regex!9915 List!36017 C!20016) Unit!50329)

(assert (=> b!3190833 (= lt!1074686 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!354 (regex!5156 (rule!7588 separatorToken!241)) lt!1074675 lt!1074677))))

(declare-fun res!1297823 () Bool)

(assert (=> b!3190833 (= res!1297823 (not (matchR!4573 (regex!5156 (rule!7588 separatorToken!241)) lt!1074675)))))

(declare-fun e!1988702 () Bool)

(assert (=> b!3190833 (=> (not res!1297823) (not e!1988702))))

(assert (=> b!3190833 e!1988702))

(declare-fun e!1988723 () Bool)

(declare-fun tp!1008697 () Bool)

(declare-fun b!3190834 () Bool)

(declare-fun e!1988709 () Bool)

(assert (=> b!3190834 (= e!1988709 (and tp!1008697 (inv!48740 (tag!5674 (rule!7588 separatorToken!241))) (inv!48744 (transformation!5156 (rule!7588 separatorToken!241))) e!1988723))))

(declare-fun b!3190835 () Bool)

(declare-fun res!1297822 () Bool)

(declare-fun e!1988700 () Bool)

(assert (=> b!3190835 (=> res!1297822 e!1988700)))

(declare-fun isEmpty!20025 (List!36018) Bool)

(declare-fun filter!504 (List!36018 Int) List!36018)

(declare-datatypes ((IArray!21381 0))(
  ( (IArray!21382 (innerList!10748 List!36018)) )
))
(declare-datatypes ((Conc!10688 0))(
  ( (Node!10688 (left!27908 Conc!10688) (right!28238 Conc!10688) (csize!21606 Int) (cheight!10899 Int)) (Leaf!16877 (xs!13806 IArray!21381) (csize!21607 Int)) (Empty!10688) )
))
(declare-datatypes ((BalanceConc!20990 0))(
  ( (BalanceConc!20991 (c!535814 Conc!10688)) )
))
(declare-fun list!12752 (BalanceConc!20990) List!36018)

(declare-datatypes ((tuple2!35296 0))(
  ( (tuple2!35297 (_1!20782 BalanceConc!20990) (_2!20782 BalanceConc!20988)) )
))
(declare-fun lex!2085 (LexerInterface!4745 List!36019 BalanceConc!20988) tuple2!35296)

(declare-fun printWithSeparatorToken!54 (LexerInterface!4745 BalanceConc!20990 Token!9678) BalanceConc!20988)

(assert (=> b!3190835 (= res!1297822 (not (isEmpty!20025 (filter!504 (list!12752 (_1!20782 (lex!2085 thiss!18206 rules!2135 (printWithSeparatorToken!54 thiss!18206 (BalanceConc!20991 Empty!10688) separatorToken!241)))) lambda!116723))))))

(declare-fun b!3190836 () Bool)

(declare-fun e!1988713 () Bool)

(declare-fun tp!1008695 () Bool)

(declare-fun inv!21 (TokenValue!5386) Bool)

(assert (=> b!3190836 (= e!1988713 (and (inv!21 (value!167406 separatorToken!241)) e!1988709 tp!1008695))))

(declare-fun b!3190837 () Bool)

(declare-fun e!1988722 () Bool)

(declare-fun e!1988720 () Bool)

(assert (=> b!3190837 (= e!1988722 e!1988720)))

(declare-fun res!1297806 () Bool)

(assert (=> b!3190837 (=> res!1297806 e!1988720)))

(declare-fun lt!1074691 () List!36017)

(declare-fun lt!1074699 () List!36017)

(assert (=> b!3190837 (= res!1297806 (or (not (= lt!1074699 lt!1074689)) (not (= lt!1074691 lt!1074689))))))

(declare-fun list!12753 (BalanceConc!20988) List!36017)

(declare-fun charsOf!3178 (Token!9678) BalanceConc!20988)

(assert (=> b!3190837 (= lt!1074689 (list!12753 (charsOf!3178 (h!41314 tokens!494))))))

(declare-fun b!3190838 () Bool)

(declare-fun res!1297809 () Bool)

(assert (=> b!3190838 (=> res!1297809 e!1988720)))

(declare-fun rulesProduceIndividualToken!2237 (LexerInterface!4745 List!36019 Token!9678) Bool)

(assert (=> b!3190838 (= res!1297809 (not (rulesProduceIndividualToken!2237 thiss!18206 rules!2135 (h!41314 tokens!494))))))

(declare-fun b!3190839 () Bool)

(assert (=> b!3190839 (= e!1988702 false)))

(declare-fun b!3190840 () Bool)

(declare-fun e!1988708 () Bool)

(assert (=> b!3190840 (= e!1988720 e!1988708)))

(declare-fun res!1297818 () Bool)

(assert (=> b!3190840 (=> res!1297818 e!1988708)))

(declare-fun lt!1074690 () BalanceConc!20988)

(declare-fun isEmpty!20026 (BalanceConc!20990) Bool)

(assert (=> b!3190840 (= res!1297818 (isEmpty!20026 (_1!20782 (lex!2085 thiss!18206 rules!2135 lt!1074690))))))

(declare-fun seqFromList!3391 (List!36017) BalanceConc!20988)

(assert (=> b!3190840 (= lt!1074690 (seqFromList!3391 lt!1074689))))

(declare-fun b!3190841 () Bool)

(declare-fun res!1297808 () Bool)

(assert (=> b!3190841 (=> (not res!1297808) (not e!1988730))))

(get-info :version)

(assert (=> b!3190841 (= res!1297808 (and (not ((_ is Nil!35894) tokens!494)) ((_ is Nil!35894) (t!236173 tokens!494))))))

(declare-fun b!3190842 () Bool)

(assert (=> b!3190842 (= e!1988730 (not e!1988722))))

(declare-fun res!1297804 () Bool)

(assert (=> b!3190842 (=> res!1297804 e!1988722)))

(assert (=> b!3190842 (= res!1297804 (not (= lt!1074691 lt!1074699)))))

(declare-fun printList!1299 (LexerInterface!4745 List!36018) List!36017)

(assert (=> b!3190842 (= lt!1074699 (printList!1299 thiss!18206 (Cons!35894 (h!41314 tokens!494) Nil!35894)))))

(declare-fun lt!1074700 () BalanceConc!20988)

(assert (=> b!3190842 (= lt!1074691 (list!12753 lt!1074700))))

(declare-fun lt!1074702 () BalanceConc!20990)

(declare-fun printTailRec!1244 (LexerInterface!4745 BalanceConc!20990 Int BalanceConc!20988) BalanceConc!20988)

(assert (=> b!3190842 (= lt!1074700 (printTailRec!1244 thiss!18206 lt!1074702 0 (BalanceConc!20989 Empty!10687)))))

(declare-fun print!1812 (LexerInterface!4745 BalanceConc!20990) BalanceConc!20988)

(assert (=> b!3190842 (= lt!1074700 (print!1812 thiss!18206 lt!1074702))))

(declare-fun singletonSeq!2252 (Token!9678) BalanceConc!20990)

(assert (=> b!3190842 (= lt!1074702 (singletonSeq!2252 (h!41314 tokens!494)))))

(declare-fun b!3190843 () Bool)

(declare-fun e!1988719 () Bool)

(declare-fun tp!1008701 () Bool)

(assert (=> b!3190843 (= e!1988719 (and e!1988705 tp!1008701))))

(declare-fun b!3190844 () Bool)

(declare-fun res!1297814 () Bool)

(assert (=> b!3190844 (=> (not res!1297814) (not e!1988712))))

(declare-fun rulesInvariant!4142 (LexerInterface!4745 List!36019) Bool)

(assert (=> b!3190844 (= res!1297814 (rulesInvariant!4142 thiss!18206 rules!2135))))

(declare-fun tp!1008699 () Bool)

(declare-fun e!1988703 () Bool)

(declare-fun b!3190845 () Bool)

(assert (=> b!3190845 (= e!1988703 (and tp!1008699 (inv!48740 (tag!5674 (rule!7588 (h!41314 tokens!494)))) (inv!48744 (transformation!5156 (rule!7588 (h!41314 tokens!494)))) e!1988721))))

(declare-fun b!3190846 () Bool)

(declare-fun e!1988716 () Bool)

(declare-fun e!1988728 () Bool)

(assert (=> b!3190846 (= e!1988716 e!1988728)))

(declare-fun res!1297811 () Bool)

(assert (=> b!3190846 (=> res!1297811 e!1988728)))

(declare-fun lt!1074696 () Bool)

(assert (=> b!3190846 (= res!1297811 lt!1074696)))

(declare-fun lt!1074684 () Unit!50329)

(assert (=> b!3190846 (= lt!1074684 e!1988714)))

(declare-fun c!535811 () Bool)

(assert (=> b!3190846 (= c!535811 lt!1074696)))

(declare-fun contains!6381 (List!36017 C!20016) Bool)

(declare-fun usedCharacters!500 (Regex!9915) List!36017)

(assert (=> b!3190846 (= lt!1074696 (not (contains!6381 (usedCharacters!500 (regex!5156 (rule!7588 separatorToken!241))) lt!1074677)))))

(declare-fun head!6991 (List!36017) C!20016)

(assert (=> b!3190846 (= lt!1074677 (head!6991 lt!1074675))))

(declare-fun maxPrefixOneRule!1550 (LexerInterface!4745 Rule!10112 List!36017) Option!7045)

(declare-fun apply!8094 (TokenValueInjection!10200 BalanceConc!20988) TokenValue!5386)

(declare-fun size!27069 (List!36017) Int)

(assert (=> b!3190846 (= (maxPrefixOneRule!1550 thiss!18206 (rule!7588 (h!41314 tokens!494)) lt!1074689) (Some!7044 (tuple2!35295 (Token!9679 (apply!8094 (transformation!5156 (rule!7588 (h!41314 tokens!494))) lt!1074690) (rule!7588 (h!41314 tokens!494)) (size!27069 lt!1074689) lt!1074689) Nil!35893)))))

(declare-fun lt!1074694 () Unit!50329)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!663 (LexerInterface!4745 List!36019 List!36017 List!36017 List!36017 Rule!10112) Unit!50329)

(assert (=> b!3190846 (= lt!1074694 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!663 thiss!18206 rules!2135 lt!1074689 lt!1074689 Nil!35893 (rule!7588 (h!41314 tokens!494))))))

(declare-fun e!1988727 () Bool)

(assert (=> b!3190846 e!1988727))

(declare-fun res!1297807 () Bool)

(assert (=> b!3190846 (=> (not res!1297807) (not e!1988727))))

(declare-fun lt!1074697 () Option!7046)

(declare-fun isDefined!5508 (Option!7046) Bool)

(assert (=> b!3190846 (= res!1297807 (isDefined!5508 lt!1074697))))

(declare-fun getRuleFromTag!885 (LexerInterface!4745 List!36019 String!40264) Option!7046)

(assert (=> b!3190846 (= lt!1074697 (getRuleFromTag!885 thiss!18206 rules!2135 (tag!5674 (rule!7588 separatorToken!241))))))

(declare-fun lt!1074681 () Unit!50329)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!885 (LexerInterface!4745 List!36019 List!36017 Token!9678) Unit!50329)

(assert (=> b!3190846 (= lt!1074681 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!885 thiss!18206 rules!2135 lt!1074675 separatorToken!241))))

(assert (=> b!3190846 e!1988701))

(declare-fun res!1297817 () Bool)

(assert (=> b!3190846 (=> (not res!1297817) (not e!1988701))))

(assert (=> b!3190846 (= res!1297817 (isDefined!5508 lt!1074688))))

(assert (=> b!3190846 (= lt!1074688 (getRuleFromTag!885 thiss!18206 rules!2135 (tag!5674 (rule!7588 (h!41314 tokens!494)))))))

(declare-fun lt!1074704 () Unit!50329)

(assert (=> b!3190846 (= lt!1074704 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!885 thiss!18206 rules!2135 lt!1074689 (h!41314 tokens!494)))))

(declare-fun lt!1074685 () Unit!50329)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!806 (LexerInterface!4745 List!36019 List!36018 Token!9678) Unit!50329)

(assert (=> b!3190846 (= lt!1074685 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!806 thiss!18206 rules!2135 tokens!494 (h!41314 tokens!494)))))

(declare-fun isEmpty!20027 (List!36017) Bool)

(declare-fun getSuffix!1372 (List!36017 List!36017) List!36017)

(assert (=> b!3190846 (isEmpty!20027 (getSuffix!1372 lt!1074689 lt!1074689))))

(declare-fun lt!1074703 () Unit!50329)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!50 (List!36017) Unit!50329)

(assert (=> b!3190846 (= lt!1074703 (lemmaGetSuffixOnListWithItSelfIsEmpty!50 lt!1074689))))

(declare-fun b!3190847 () Bool)

(assert (=> b!3190847 (= e!1988728 e!1988700)))

(declare-fun res!1297821 () Bool)

(assert (=> b!3190847 (=> res!1297821 e!1988700)))

(assert (=> b!3190847 (= res!1297821 (not (= e!1988715 (lexList!1295 thiss!18206 rules!2135 lt!1074693))))))

(declare-fun c!535810 () Bool)

(assert (=> b!3190847 (= c!535810 ((_ is Some!7044) lt!1074679))))

(declare-fun maxPrefix!2423 (LexerInterface!4745 List!36019 List!36017) Option!7045)

(assert (=> b!3190847 (= lt!1074679 (maxPrefix!2423 thiss!18206 rules!2135 lt!1074693))))

(declare-fun lt!1074682 () List!36017)

(assert (=> b!3190847 (= (maxPrefix!2423 thiss!18206 rules!2135 lt!1074682) (Some!7044 (tuple2!35295 (h!41314 tokens!494) lt!1074675)))))

(declare-fun lt!1074701 () Unit!50329)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!134 (LexerInterface!4745 List!36019 Token!9678 Rule!10112 List!36017 Rule!10112) Unit!50329)

(assert (=> b!3190847 (= lt!1074701 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!134 thiss!18206 rules!2135 (h!41314 tokens!494) (rule!7588 (h!41314 tokens!494)) lt!1074675 (rule!7588 separatorToken!241)))))

(assert (=> b!3190847 (not (contains!6381 (usedCharacters!500 (regex!5156 (rule!7588 (h!41314 tokens!494)))) lt!1074677))))

(declare-fun lt!1074676 () Unit!50329)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!132 (LexerInterface!4745 List!36019 List!36019 Rule!10112 Rule!10112 C!20016) Unit!50329)

(assert (=> b!3190847 (= lt!1074676 (lemmaNonSepRuleNotContainsCharContainedInASepRule!132 thiss!18206 rules!2135 rules!2135 (rule!7588 (h!41314 tokens!494)) (rule!7588 separatorToken!241) lt!1074677))))

(declare-fun res!1297815 () Bool)

(assert (=> start!299266 (=> (not res!1297815) (not e!1988712))))

(assert (=> start!299266 (= res!1297815 ((_ is Lexer!4743) thiss!18206))))

(assert (=> start!299266 e!1988712))

(assert (=> start!299266 true))

(assert (=> start!299266 e!1988719))

(assert (=> start!299266 (and (inv!48743 separatorToken!241) e!1988713)))

(assert (=> start!299266 e!1988711))

(declare-fun b!3190830 () Bool)

(assert (=> b!3190830 (= e!1988700 true)))

(declare-fun lt!1074683 () List!36017)

(declare-fun printWithSeparatorTokenList!106 (LexerInterface!4745 List!36018 Token!9678) List!36017)

(assert (=> b!3190830 (= lt!1074683 (printWithSeparatorTokenList!106 thiss!18206 tokens!494 separatorToken!241))))

(assert (=> b!3190848 (= e!1988724 (and tp!1008694 tp!1008700))))

(declare-fun tp!1008693 () Bool)

(declare-fun b!3190849 () Bool)

(assert (=> b!3190849 (= e!1988726 (and (inv!21 (value!167406 (h!41314 tokens!494))) e!1988703 tp!1008693))))

(declare-fun b!3190850 () Bool)

(declare-fun e!1988718 () Bool)

(assert (=> b!3190850 (= e!1988727 e!1988718)))

(declare-fun res!1297819 () Bool)

(assert (=> b!3190850 (=> (not res!1297819) (not e!1988718))))

(declare-fun lt!1074692 () Rule!10112)

(assert (=> b!3190850 (= res!1297819 (matchR!4573 (regex!5156 lt!1074692) lt!1074675))))

(assert (=> b!3190850 (= lt!1074692 (get!11431 lt!1074697))))

(declare-fun b!3190851 () Bool)

(declare-fun res!1297801 () Bool)

(assert (=> b!3190851 (=> (not res!1297801) (not e!1988730))))

(declare-fun sepAndNonSepRulesDisjointChars!1350 (List!36019 List!36019) Bool)

(assert (=> b!3190851 (= res!1297801 (sepAndNonSepRulesDisjointChars!1350 rules!2135 rules!2135))))

(assert (=> b!3190852 (= e!1988723 (and tp!1008704 tp!1008698))))

(declare-fun b!3190853 () Bool)

(declare-fun res!1297802 () Bool)

(assert (=> b!3190853 (=> (not res!1297802) (not e!1988730))))

(assert (=> b!3190853 (= res!1297802 (isSeparator!5156 (rule!7588 separatorToken!241)))))

(declare-fun b!3190854 () Bool)

(declare-fun res!1297812 () Bool)

(assert (=> b!3190854 (=> res!1297812 e!1988700)))

(assert (=> b!3190854 (= res!1297812 (not (isEmpty!20025 (filter!504 (_1!20780 (lexList!1295 thiss!18206 rules!2135 (printWithSeparatorTokenList!106 thiss!18206 Nil!35894 separatorToken!241))) lambda!116723))))))

(declare-fun b!3190855 () Bool)

(declare-fun e!1988706 () Bool)

(assert (=> b!3190855 (= e!1988708 e!1988706)))

(declare-fun res!1297805 () Bool)

(assert (=> b!3190855 (=> res!1297805 e!1988706)))

(assert (=> b!3190855 (= res!1297805 (isSeparator!5156 (rule!7588 (h!41314 tokens!494))))))

(declare-fun lt!1074687 () Unit!50329)

(declare-fun forallContained!1139 (List!36018 Int Token!9678) Unit!50329)

(assert (=> b!3190855 (= lt!1074687 (forallContained!1139 tokens!494 lambda!116723 (h!41314 tokens!494)))))

(declare-fun b!3190856 () Bool)

(assert (=> b!3190856 (= e!1988725 (= (rule!7588 (h!41314 tokens!494)) lt!1074698))))

(declare-fun b!3190857 () Bool)

(declare-fun res!1297810 () Bool)

(assert (=> b!3190857 (=> (not res!1297810) (not e!1988730))))

(assert (=> b!3190857 (= res!1297810 (rulesProduceIndividualToken!2237 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3190858 () Bool)

(assert (=> b!3190858 (= e!1988706 e!1988716)))

(declare-fun res!1297820 () Bool)

(assert (=> b!3190858 (=> res!1297820 e!1988716)))

(assert (=> b!3190858 (= res!1297820 (not (= lt!1074693 lt!1074682)))))

(declare-fun ++!8594 (List!36017 List!36017) List!36017)

(assert (=> b!3190858 (= lt!1074682 (++!8594 lt!1074689 lt!1074675))))

(declare-fun lt!1074680 () BalanceConc!20988)

(assert (=> b!3190858 (= lt!1074693 (list!12753 lt!1074680))))

(assert (=> b!3190858 (= lt!1074675 (list!12753 (charsOf!3178 separatorToken!241)))))

(declare-fun lt!1074678 () BalanceConc!20990)

(assert (=> b!3190858 (= lt!1074680 (printWithSeparatorToken!54 thiss!18206 lt!1074678 separatorToken!241))))

(declare-fun b!3190859 () Bool)

(assert (=> b!3190859 (= e!1988712 e!1988730)))

(declare-fun res!1297803 () Bool)

(assert (=> b!3190859 (=> (not res!1297803) (not e!1988730))))

(declare-fun rulesProduceEachTokenIndividually!1196 (LexerInterface!4745 List!36019 BalanceConc!20990) Bool)

(assert (=> b!3190859 (= res!1297803 (rulesProduceEachTokenIndividually!1196 thiss!18206 rules!2135 lt!1074678))))

(declare-fun seqFromList!3392 (List!36018) BalanceConc!20990)

(assert (=> b!3190859 (= lt!1074678 (seqFromList!3392 tokens!494))))

(declare-fun b!3190860 () Bool)

(assert (=> b!3190860 (= e!1988718 (= (rule!7588 separatorToken!241) lt!1074692))))

(assert (= (and start!299266 res!1297815) b!3190826))

(assert (= (and b!3190826 res!1297813) b!3190844))

(assert (= (and b!3190844 res!1297814) b!3190859))

(assert (= (and b!3190859 res!1297803) b!3190857))

(assert (= (and b!3190857 res!1297810) b!3190853))

(assert (= (and b!3190853 res!1297802) b!3190827))

(assert (= (and b!3190827 res!1297800) b!3190851))

(assert (= (and b!3190851 res!1297801) b!3190841))

(assert (= (and b!3190841 res!1297808) b!3190842))

(assert (= (and b!3190842 (not res!1297804)) b!3190837))

(assert (= (and b!3190837 (not res!1297806)) b!3190838))

(assert (= (and b!3190838 (not res!1297809)) b!3190840))

(assert (= (and b!3190840 (not res!1297818)) b!3190855))

(assert (= (and b!3190855 (not res!1297805)) b!3190858))

(assert (= (and b!3190858 (not res!1297820)) b!3190846))

(assert (= (and b!3190846 res!1297817) b!3190831))

(assert (= (and b!3190831 res!1297816) b!3190856))

(assert (= (and b!3190846 res!1297807) b!3190850))

(assert (= (and b!3190850 res!1297819) b!3190860))

(assert (= (and b!3190846 c!535811) b!3190833))

(assert (= (and b!3190846 (not c!535811)) b!3190823))

(assert (= (and b!3190833 res!1297823) b!3190839))

(assert (= (and b!3190846 (not res!1297811)) b!3190847))

(assert (= (and b!3190847 c!535810) b!3190825))

(assert (= (and b!3190847 (not c!535810)) b!3190829))

(assert (= (and b!3190847 (not res!1297821)) b!3190835))

(assert (= (and b!3190835 (not res!1297822)) b!3190854))

(assert (= (and b!3190854 (not res!1297812)) b!3190830))

(assert (= b!3190832 b!3190848))

(assert (= b!3190843 b!3190832))

(assert (= (and start!299266 ((_ is Cons!35895) rules!2135)) b!3190843))

(assert (= b!3190834 b!3190852))

(assert (= b!3190836 b!3190834))

(assert (= start!299266 b!3190836))

(assert (= b!3190845 b!3190824))

(assert (= b!3190849 b!3190845))

(assert (= b!3190828 b!3190849))

(assert (= (and start!299266 ((_ is Cons!35894) tokens!494)) b!3190828))

(declare-fun m!3449961 () Bool)

(assert (=> b!3190844 m!3449961))

(declare-fun m!3449963 () Bool)

(assert (=> b!3190847 m!3449963))

(declare-fun m!3449965 () Bool)

(assert (=> b!3190847 m!3449965))

(declare-fun m!3449967 () Bool)

(assert (=> b!3190847 m!3449967))

(declare-fun m!3449969 () Bool)

(assert (=> b!3190847 m!3449969))

(declare-fun m!3449971 () Bool)

(assert (=> b!3190847 m!3449971))

(declare-fun m!3449973 () Bool)

(assert (=> b!3190847 m!3449973))

(assert (=> b!3190847 m!3449969))

(declare-fun m!3449975 () Bool)

(assert (=> b!3190847 m!3449975))

(declare-fun m!3449977 () Bool)

(assert (=> b!3190840 m!3449977))

(declare-fun m!3449979 () Bool)

(assert (=> b!3190840 m!3449979))

(declare-fun m!3449981 () Bool)

(assert (=> b!3190840 m!3449981))

(declare-fun m!3449983 () Bool)

(assert (=> b!3190833 m!3449983))

(declare-fun m!3449985 () Bool)

(assert (=> b!3190833 m!3449985))

(declare-fun m!3449987 () Bool)

(assert (=> b!3190858 m!3449987))

(declare-fun m!3449989 () Bool)

(assert (=> b!3190858 m!3449989))

(declare-fun m!3449991 () Bool)

(assert (=> b!3190858 m!3449991))

(declare-fun m!3449993 () Bool)

(assert (=> b!3190858 m!3449993))

(assert (=> b!3190858 m!3449987))

(declare-fun m!3449995 () Bool)

(assert (=> b!3190858 m!3449995))

(declare-fun m!3449997 () Bool)

(assert (=> b!3190846 m!3449997))

(declare-fun m!3449999 () Bool)

(assert (=> b!3190846 m!3449999))

(declare-fun m!3450001 () Bool)

(assert (=> b!3190846 m!3450001))

(declare-fun m!3450003 () Bool)

(assert (=> b!3190846 m!3450003))

(declare-fun m!3450005 () Bool)

(assert (=> b!3190846 m!3450005))

(declare-fun m!3450007 () Bool)

(assert (=> b!3190846 m!3450007))

(declare-fun m!3450009 () Bool)

(assert (=> b!3190846 m!3450009))

(declare-fun m!3450011 () Bool)

(assert (=> b!3190846 m!3450011))

(declare-fun m!3450013 () Bool)

(assert (=> b!3190846 m!3450013))

(declare-fun m!3450015 () Bool)

(assert (=> b!3190846 m!3450015))

(declare-fun m!3450017 () Bool)

(assert (=> b!3190846 m!3450017))

(assert (=> b!3190846 m!3449997))

(declare-fun m!3450019 () Bool)

(assert (=> b!3190846 m!3450019))

(declare-fun m!3450021 () Bool)

(assert (=> b!3190846 m!3450021))

(assert (=> b!3190846 m!3450009))

(declare-fun m!3450023 () Bool)

(assert (=> b!3190846 m!3450023))

(declare-fun m!3450025 () Bool)

(assert (=> b!3190846 m!3450025))

(declare-fun m!3450027 () Bool)

(assert (=> b!3190846 m!3450027))

(declare-fun m!3450029 () Bool)

(assert (=> b!3190846 m!3450029))

(declare-fun m!3450031 () Bool)

(assert (=> b!3190845 m!3450031))

(declare-fun m!3450033 () Bool)

(assert (=> b!3190845 m!3450033))

(declare-fun m!3450035 () Bool)

(assert (=> b!3190836 m!3450035))

(declare-fun m!3450037 () Bool)

(assert (=> b!3190831 m!3450037))

(declare-fun m!3450039 () Bool)

(assert (=> b!3190831 m!3450039))

(declare-fun m!3450041 () Bool)

(assert (=> b!3190842 m!3450041))

(declare-fun m!3450043 () Bool)

(assert (=> b!3190842 m!3450043))

(declare-fun m!3450045 () Bool)

(assert (=> b!3190842 m!3450045))

(declare-fun m!3450047 () Bool)

(assert (=> b!3190842 m!3450047))

(declare-fun m!3450049 () Bool)

(assert (=> b!3190842 m!3450049))

(declare-fun m!3450051 () Bool)

(assert (=> b!3190859 m!3450051))

(declare-fun m!3450053 () Bool)

(assert (=> b!3190859 m!3450053))

(declare-fun m!3450055 () Bool)

(assert (=> b!3190828 m!3450055))

(declare-fun m!3450057 () Bool)

(assert (=> b!3190849 m!3450057))

(declare-fun m!3450059 () Bool)

(assert (=> b!3190834 m!3450059))

(declare-fun m!3450061 () Bool)

(assert (=> b!3190834 m!3450061))

(declare-fun m!3450063 () Bool)

(assert (=> start!299266 m!3450063))

(declare-fun m!3450065 () Bool)

(assert (=> b!3190835 m!3450065))

(declare-fun m!3450067 () Bool)

(assert (=> b!3190835 m!3450067))

(declare-fun m!3450069 () Bool)

(assert (=> b!3190835 m!3450069))

(assert (=> b!3190835 m!3450065))

(assert (=> b!3190835 m!3450069))

(declare-fun m!3450071 () Bool)

(assert (=> b!3190835 m!3450071))

(assert (=> b!3190835 m!3450067))

(declare-fun m!3450073 () Bool)

(assert (=> b!3190835 m!3450073))

(declare-fun m!3450075 () Bool)

(assert (=> b!3190837 m!3450075))

(assert (=> b!3190837 m!3450075))

(declare-fun m!3450077 () Bool)

(assert (=> b!3190837 m!3450077))

(declare-fun m!3450079 () Bool)

(assert (=> b!3190827 m!3450079))

(declare-fun m!3450081 () Bool)

(assert (=> b!3190850 m!3450081))

(declare-fun m!3450083 () Bool)

(assert (=> b!3190850 m!3450083))

(declare-fun m!3450085 () Bool)

(assert (=> b!3190851 m!3450085))

(declare-fun m!3450087 () Bool)

(assert (=> b!3190830 m!3450087))

(declare-fun m!3450089 () Bool)

(assert (=> b!3190857 m!3450089))

(declare-fun m!3450091 () Bool)

(assert (=> b!3190855 m!3450091))

(declare-fun m!3450093 () Bool)

(assert (=> b!3190854 m!3450093))

(assert (=> b!3190854 m!3450093))

(declare-fun m!3450095 () Bool)

(assert (=> b!3190854 m!3450095))

(declare-fun m!3450097 () Bool)

(assert (=> b!3190854 m!3450097))

(assert (=> b!3190854 m!3450097))

(declare-fun m!3450099 () Bool)

(assert (=> b!3190854 m!3450099))

(declare-fun m!3450101 () Bool)

(assert (=> b!3190832 m!3450101))

(declare-fun m!3450103 () Bool)

(assert (=> b!3190832 m!3450103))

(declare-fun m!3450105 () Bool)

(assert (=> b!3190825 m!3450105))

(declare-fun m!3450107 () Bool)

(assert (=> b!3190826 m!3450107))

(declare-fun m!3450109 () Bool)

(assert (=> b!3190838 m!3450109))

(check-sat b_and!211423 b_and!211425 (not b!3190842) (not b!3190851) (not b!3190845) (not b!3190843) (not b!3190855) (not b!3190858) (not b!3190846) (not b!3190828) (not b!3190836) (not b!3190826) (not b!3190854) (not b!3190838) (not b!3190837) (not b!3190830) (not b!3190832) (not b!3190827) (not b_next!85117) (not b_next!85123) (not b!3190833) (not b!3190840) (not b_next!85121) (not b!3190844) (not b_next!85113) (not b!3190847) (not b!3190857) b_and!211421 (not b!3190859) b_and!211427 (not b!3190850) b_and!211429 (not b!3190834) (not b!3190831) (not b!3190849) (not b_next!85115) (not b_next!85119) (not b!3190835) (not b!3190825) b_and!211419 (not start!299266))
(check-sat b_and!211423 b_and!211425 b_and!211421 b_and!211419 (not b_next!85117) (not b_next!85123) (not b_next!85121) (not b_next!85113) b_and!211427 b_and!211429 (not b_next!85115) (not b_next!85119))
