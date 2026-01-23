; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!367632 () Bool)

(assert start!367632)

(declare-fun b!3920800 () Bool)

(declare-fun b_free!106613 () Bool)

(declare-fun b_next!107317 () Bool)

(assert (=> b!3920800 (= b_free!106613 (not b_next!107317))))

(declare-fun tp!1193424 () Bool)

(declare-fun b_and!298823 () Bool)

(assert (=> b!3920800 (= tp!1193424 b_and!298823)))

(declare-fun b_free!106615 () Bool)

(declare-fun b_next!107319 () Bool)

(assert (=> b!3920800 (= b_free!106615 (not b_next!107319))))

(declare-fun tp!1193423 () Bool)

(declare-fun b_and!298825 () Bool)

(assert (=> b!3920800 (= tp!1193423 b_and!298825)))

(declare-fun b!3920774 () Bool)

(declare-fun b_free!106617 () Bool)

(declare-fun b_next!107321 () Bool)

(assert (=> b!3920774 (= b_free!106617 (not b_next!107321))))

(declare-fun tp!1193417 () Bool)

(declare-fun b_and!298827 () Bool)

(assert (=> b!3920774 (= tp!1193417 b_and!298827)))

(declare-fun b_free!106619 () Bool)

(declare-fun b_next!107323 () Bool)

(assert (=> b!3920774 (= b_free!106619 (not b_next!107323))))

(declare-fun tp!1193415 () Bool)

(declare-fun b_and!298829 () Bool)

(assert (=> b!3920774 (= tp!1193415 b_and!298829)))

(declare-fun b!3920795 () Bool)

(declare-fun b_free!106621 () Bool)

(declare-fun b_next!107325 () Bool)

(assert (=> b!3920795 (= b_free!106621 (not b_next!107325))))

(declare-fun tp!1193413 () Bool)

(declare-fun b_and!298831 () Bool)

(assert (=> b!3920795 (= tp!1193413 b_and!298831)))

(declare-fun b_free!106623 () Bool)

(declare-fun b_next!107327 () Bool)

(assert (=> b!3920795 (= b_free!106623 (not b_next!107327))))

(declare-fun tp!1193418 () Bool)

(declare-fun b_and!298833 () Bool)

(assert (=> b!3920795 (= tp!1193418 b_and!298833)))

(declare-fun b!3920768 () Bool)

(declare-datatypes ((Unit!59719 0))(
  ( (Unit!59720) )
))
(declare-fun e!2424439 () Unit!59719)

(declare-fun Unit!59721 () Unit!59719)

(assert (=> b!3920768 (= e!2424439 Unit!59721)))

(declare-fun tp!1193411 () Bool)

(declare-datatypes ((List!41687 0))(
  ( (Nil!41563) (Cons!41563 (h!46983 (_ BitVec 16)) (t!324534 List!41687)) )
))
(declare-datatypes ((TokenValue!6706 0))(
  ( (FloatLiteralValue!13412 (text!47387 List!41687)) (TokenValueExt!6705 (__x!25629 Int)) (Broken!33530 (value!205174 List!41687)) (Object!6829) (End!6706) (Def!6706) (Underscore!6706) (Match!6706) (Else!6706) (Error!6706) (Case!6706) (If!6706) (Extends!6706) (Abstract!6706) (Class!6706) (Val!6706) (DelimiterValue!13412 (del!6766 List!41687)) (KeywordValue!6712 (value!205175 List!41687)) (CommentValue!13412 (value!205176 List!41687)) (WhitespaceValue!13412 (value!205177 List!41687)) (IndentationValue!6706 (value!205178 List!41687)) (String!47247) (Int32!6706) (Broken!33531 (value!205179 List!41687)) (Boolean!6707) (Unit!59722) (OperatorValue!6709 (op!6766 List!41687)) (IdentifierValue!13412 (value!205180 List!41687)) (IdentifierValue!13413 (value!205181 List!41687)) (WhitespaceValue!13413 (value!205182 List!41687)) (True!13412) (False!13412) (Broken!33532 (value!205183 List!41687)) (Broken!33533 (value!205184 List!41687)) (True!13413) (RightBrace!6706) (RightBracket!6706) (Colon!6706) (Null!6706) (Comma!6706) (LeftBracket!6706) (False!13413) (LeftBrace!6706) (ImaginaryLiteralValue!6706 (text!47388 List!41687)) (StringLiteralValue!20118 (value!205185 List!41687)) (EOFValue!6706 (value!205186 List!41687)) (IdentValue!6706 (value!205187 List!41687)) (DelimiterValue!13413 (value!205188 List!41687)) (DedentValue!6706 (value!205189 List!41687)) (NewLineValue!6706 (value!205190 List!41687)) (IntegerValue!20118 (value!205191 (_ BitVec 32)) (text!47389 List!41687)) (IntegerValue!20119 (value!205192 Int) (text!47390 List!41687)) (Times!6706) (Or!6706) (Equal!6706) (Minus!6706) (Broken!33534 (value!205193 List!41687)) (And!6706) (Div!6706) (LessEqual!6706) (Mod!6706) (Concat!18087) (Not!6706) (Plus!6706) (SpaceValue!6706 (value!205194 List!41687)) (IntegerValue!20120 (value!205195 Int) (text!47391 List!41687)) (StringLiteralValue!20119 (text!47392 List!41687)) (FloatLiteralValue!13413 (text!47393 List!41687)) (BytesLiteralValue!6706 (value!205196 List!41687)) (CommentValue!13413 (value!205197 List!41687)) (StringLiteralValue!20120 (value!205198 List!41687)) (ErrorTokenValue!6706 (msg!6767 List!41687)) )
))
(declare-datatypes ((C!22948 0))(
  ( (C!22949 (val!13568 Int)) )
))
(declare-datatypes ((Regex!11381 0))(
  ( (ElementMatch!11381 (c!681384 C!22948)) (Concat!18088 (regOne!23274 Regex!11381) (regTwo!23274 Regex!11381)) (EmptyExpr!11381) (Star!11381 (reg!11710 Regex!11381)) (EmptyLang!11381) (Union!11381 (regOne!23275 Regex!11381) (regTwo!23275 Regex!11381)) )
))
(declare-datatypes ((String!47248 0))(
  ( (String!47249 (value!205199 String)) )
))
(declare-datatypes ((List!41688 0))(
  ( (Nil!41564) (Cons!41564 (h!46984 C!22948) (t!324535 List!41688)) )
))
(declare-datatypes ((IArray!25379 0))(
  ( (IArray!25380 (innerList!12747 List!41688)) )
))
(declare-datatypes ((Conc!12687 0))(
  ( (Node!12687 (left!31775 Conc!12687) (right!32105 Conc!12687) (csize!25604 Int) (cheight!12898 Int)) (Leaf!19632 (xs!15993 IArray!25379) (csize!25605 Int)) (Empty!12687) )
))
(declare-datatypes ((BalanceConc!24968 0))(
  ( (BalanceConc!24969 (c!681385 Conc!12687)) )
))
(declare-datatypes ((TokenValueInjection!12840 0))(
  ( (TokenValueInjection!12841 (toValue!8928 Int) (toChars!8787 Int)) )
))
(declare-datatypes ((Rule!12752 0))(
  ( (Rule!12753 (regex!6476 Regex!11381) (tag!7336 String!47248) (isSeparator!6476 Bool) (transformation!6476 TokenValueInjection!12840)) )
))
(declare-datatypes ((Token!12090 0))(
  ( (Token!12091 (value!205200 TokenValue!6706) (rule!9408 Rule!12752) (size!31205 Int) (originalCharacters!7076 List!41688)) )
))
(declare-datatypes ((List!41689 0))(
  ( (Nil!41565) (Cons!41565 (h!46985 Token!12090) (t!324536 List!41689)) )
))
(declare-fun suffixTokens!72 () List!41689)

(declare-fun e!2424443 () Bool)

(declare-fun b!3920769 () Bool)

(declare-fun e!2424448 () Bool)

(declare-fun inv!55762 (Token!12090) Bool)

(assert (=> b!3920769 (= e!2424448 (and (inv!55762 (h!46985 suffixTokens!72)) e!2424443 tp!1193411))))

(declare-fun bm!284609 () Bool)

(declare-datatypes ((LexerInterface!6065 0))(
  ( (LexerInterfaceExt!6062 (__x!25630 Int)) (Lexer!6063) )
))
(declare-fun thiss!20629 () LexerInterface!6065)

(declare-datatypes ((List!41690 0))(
  ( (Nil!41566) (Cons!41566 (h!46986 Rule!12752) (t!324537 List!41690)) )
))
(declare-fun rules!2768 () List!41690)

(declare-datatypes ((tuple2!40826 0))(
  ( (tuple2!40827 (_1!23547 List!41689) (_2!23547 List!41688)) )
))
(declare-fun call!284614 () tuple2!40826)

(declare-datatypes ((tuple2!40828 0))(
  ( (tuple2!40829 (_1!23548 Token!12090) (_2!23548 List!41688)) )
))
(declare-fun lt!1366470 () tuple2!40828)

(declare-fun lexList!1833 (LexerInterface!6065 List!41690 List!41688) tuple2!40826)

(assert (=> bm!284609 (= call!284614 (lexList!1833 thiss!20629 rules!2768 (_2!23548 lt!1366470)))))

(declare-fun b!3920770 () Bool)

(declare-fun res!1586040 () Bool)

(declare-fun e!2424438 () Bool)

(assert (=> b!3920770 (=> (not res!1586040) (not e!2424438))))

(declare-fun isEmpty!24746 (List!41690) Bool)

(assert (=> b!3920770 (= res!1586040 (not (isEmpty!24746 rules!2768)))))

(declare-fun b!3920771 () Bool)

(declare-fun e!2424429 () Unit!59719)

(declare-fun Unit!59723 () Unit!59719)

(assert (=> b!3920771 (= e!2424429 Unit!59723)))

(declare-fun lt!1366468 () List!41689)

(declare-fun suffixResult!91 () List!41688)

(declare-fun suffix!1176 () List!41688)

(declare-fun lt!1366472 () Unit!59719)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!76 (LexerInterface!6065 List!41690 List!41688 List!41688 List!41689 List!41688 List!41689) Unit!59719)

(assert (=> b!3920771 (= lt!1366472 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!76 thiss!20629 rules!2768 suffix!1176 (_2!23548 lt!1366470) suffixTokens!72 suffixResult!91 lt!1366468))))

(declare-fun res!1586045 () Bool)

(declare-fun ++!10709 (List!41689 List!41689) List!41689)

(assert (=> b!3920771 (= res!1586045 (not (= call!284614 (tuple2!40827 (++!10709 lt!1366468 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2424452 () Bool)

(assert (=> b!3920771 (=> (not res!1586045) (not e!2424452))))

(assert (=> b!3920771 e!2424452))

(declare-fun b!3920772 () Bool)

(declare-fun Unit!59724 () Unit!59719)

(assert (=> b!3920772 (= e!2424439 Unit!59724)))

(declare-fun lt!1366487 () Int)

(declare-fun lt!1366481 () List!41688)

(declare-fun size!31206 (List!41688) Int)

(assert (=> b!3920772 (= lt!1366487 (size!31206 lt!1366481))))

(declare-datatypes ((Option!8896 0))(
  ( (None!8895) (Some!8895 (v!39221 tuple2!40828)) )
))
(declare-fun lt!1366463 () Option!8896)

(declare-fun lt!1366483 () List!41688)

(declare-fun lt!1366474 () Unit!59719)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1307 (LexerInterface!6065 List!41690 List!41688 List!41688 List!41688 Rule!12752) Unit!59719)

(assert (=> b!3920772 (= lt!1366474 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1307 thiss!20629 rules!2768 lt!1366483 lt!1366481 (_2!23548 (v!39221 lt!1366463)) (rule!9408 (_1!23548 (v!39221 lt!1366463)))))))

(declare-fun lt!1366467 () TokenValue!6706)

(declare-fun lt!1366478 () Int)

(declare-fun maxPrefixOneRule!2439 (LexerInterface!6065 Rule!12752 List!41688) Option!8896)

(assert (=> b!3920772 (= (maxPrefixOneRule!2439 thiss!20629 (rule!9408 (_1!23548 (v!39221 lt!1366463))) lt!1366481) (Some!8895 (tuple2!40829 (Token!12091 lt!1366467 (rule!9408 (_1!23548 (v!39221 lt!1366463))) lt!1366478 lt!1366483) (_2!23548 (v!39221 lt!1366463)))))))

(declare-fun get!13734 (Option!8896) tuple2!40828)

(assert (=> b!3920772 (= lt!1366470 (get!13734 lt!1366463))))

(declare-fun c!681382 () Bool)

(declare-fun lt!1366461 () Int)

(assert (=> b!3920772 (= c!681382 (< (size!31206 (_2!23548 lt!1366470)) lt!1366461))))

(declare-fun lt!1366476 () Unit!59719)

(declare-fun e!2424434 () Unit!59719)

(assert (=> b!3920772 (= lt!1366476 e!2424434)))

(assert (=> b!3920772 false))

(declare-fun e!2424428 () Bool)

(declare-fun tp!1193416 () Bool)

(declare-fun e!2424442 () Bool)

(declare-fun b!3920773 () Bool)

(declare-fun inv!55759 (String!47248) Bool)

(declare-fun inv!55763 (TokenValueInjection!12840) Bool)

(assert (=> b!3920773 (= e!2424442 (and tp!1193416 (inv!55759 (tag!7336 (h!46986 rules!2768))) (inv!55763 (transformation!6476 (h!46986 rules!2768))) e!2424428))))

(declare-fun e!2424440 () Bool)

(assert (=> b!3920774 (= e!2424440 (and tp!1193417 tp!1193415))))

(declare-fun prefixTokens!80 () List!41689)

(declare-fun e!2424427 () Bool)

(declare-fun b!3920775 () Bool)

(declare-fun tp!1193419 () Bool)

(declare-fun e!2424435 () Bool)

(assert (=> b!3920775 (= e!2424427 (and (inv!55762 (h!46985 prefixTokens!80)) e!2424435 tp!1193419))))

(declare-fun b!3920776 () Bool)

(declare-fun e!2424451 () Bool)

(declare-fun e!2424433 () Bool)

(assert (=> b!3920776 (= e!2424451 e!2424433)))

(declare-fun res!1586046 () Bool)

(assert (=> b!3920776 (=> (not res!1586046) (not e!2424433))))

(declare-fun lt!1366466 () tuple2!40826)

(assert (=> b!3920776 (= res!1586046 (= (lexList!1833 thiss!20629 rules!2768 suffix!1176) lt!1366466))))

(assert (=> b!3920776 (= lt!1366466 (tuple2!40827 suffixTokens!72 suffixResult!91))))

(declare-fun b!3920777 () Bool)

(declare-fun tp!1193412 () Bool)

(declare-fun e!2424444 () Bool)

(declare-fun inv!21 (TokenValue!6706) Bool)

(assert (=> b!3920777 (= e!2424435 (and (inv!21 (value!205200 (h!46985 prefixTokens!80))) e!2424444 tp!1193412))))

(declare-fun b!3920778 () Bool)

(declare-fun e!2424436 () Bool)

(assert (=> b!3920778 (= e!2424433 e!2424436)))

(declare-fun res!1586038 () Bool)

(assert (=> b!3920778 (=> (not res!1586038) (not e!2424436))))

(get-info :version)

(assert (=> b!3920778 (= res!1586038 ((_ is Some!8895) lt!1366463))))

(declare-fun maxPrefix!3369 (LexerInterface!6065 List!41690 List!41688) Option!8896)

(assert (=> b!3920778 (= lt!1366463 (maxPrefix!3369 thiss!20629 rules!2768 lt!1366481))))

(declare-fun b!3920779 () Bool)

(declare-fun Unit!59725 () Unit!59719)

(assert (=> b!3920779 (= e!2424434 Unit!59725)))

(declare-fun b!3920780 () Bool)

(declare-fun e!2424431 () Bool)

(assert (=> b!3920780 (= e!2424436 (not e!2424431))))

(declare-fun res!1586037 () Bool)

(assert (=> b!3920780 (=> res!1586037 e!2424431)))

(declare-fun lt!1366473 () List!41688)

(assert (=> b!3920780 (= res!1586037 (not (= lt!1366473 lt!1366481)))))

(declare-fun lt!1366469 () tuple2!40826)

(assert (=> b!3920780 (= lt!1366469 (lexList!1833 thiss!20629 rules!2768 (_2!23548 (v!39221 lt!1366463))))))

(declare-fun lt!1366464 () List!41688)

(assert (=> b!3920780 (and (= (size!31205 (_1!23548 (v!39221 lt!1366463))) lt!1366478) (= (originalCharacters!7076 (_1!23548 (v!39221 lt!1366463))) lt!1366483) (= (v!39221 lt!1366463) (tuple2!40829 (Token!12091 lt!1366467 (rule!9408 (_1!23548 (v!39221 lt!1366463))) lt!1366478 lt!1366483) lt!1366464)))))

(assert (=> b!3920780 (= lt!1366478 (size!31206 lt!1366483))))

(declare-fun e!2424453 () Bool)

(assert (=> b!3920780 e!2424453))

(declare-fun res!1586039 () Bool)

(assert (=> b!3920780 (=> (not res!1586039) (not e!2424453))))

(assert (=> b!3920780 (= res!1586039 (= (value!205200 (_1!23548 (v!39221 lt!1366463))) lt!1366467))))

(declare-fun apply!9715 (TokenValueInjection!12840 BalanceConc!24968) TokenValue!6706)

(declare-fun seqFromList!4743 (List!41688) BalanceConc!24968)

(assert (=> b!3920780 (= lt!1366467 (apply!9715 (transformation!6476 (rule!9408 (_1!23548 (v!39221 lt!1366463)))) (seqFromList!4743 lt!1366483)))))

(assert (=> b!3920780 (= (_2!23548 (v!39221 lt!1366463)) lt!1366464)))

(declare-fun lt!1366479 () Unit!59719)

(declare-fun lemmaSamePrefixThenSameSuffix!1792 (List!41688 List!41688 List!41688 List!41688 List!41688) Unit!59719)

(assert (=> b!3920780 (= lt!1366479 (lemmaSamePrefixThenSameSuffix!1792 lt!1366483 (_2!23548 (v!39221 lt!1366463)) lt!1366483 lt!1366464 lt!1366481))))

(declare-fun getSuffix!2026 (List!41688 List!41688) List!41688)

(assert (=> b!3920780 (= lt!1366464 (getSuffix!2026 lt!1366481 lt!1366483))))

(declare-fun isPrefix!3571 (List!41688 List!41688) Bool)

(assert (=> b!3920780 (isPrefix!3571 lt!1366483 lt!1366473)))

(declare-fun ++!10710 (List!41688 List!41688) List!41688)

(assert (=> b!3920780 (= lt!1366473 (++!10710 lt!1366483 (_2!23548 (v!39221 lt!1366463))))))

(declare-fun lt!1366475 () Unit!59719)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2434 (List!41688 List!41688) Unit!59719)

(assert (=> b!3920780 (= lt!1366475 (lemmaConcatTwoListThenFirstIsPrefix!2434 lt!1366483 (_2!23548 (v!39221 lt!1366463))))))

(declare-fun list!15453 (BalanceConc!24968) List!41688)

(declare-fun charsOf!4300 (Token!12090) BalanceConc!24968)

(assert (=> b!3920780 (= lt!1366483 (list!15453 (charsOf!4300 (_1!23548 (v!39221 lt!1366463)))))))

(declare-fun ruleValid!2424 (LexerInterface!6065 Rule!12752) Bool)

(assert (=> b!3920780 (ruleValid!2424 thiss!20629 (rule!9408 (_1!23548 (v!39221 lt!1366463))))))

(declare-fun lt!1366486 () Unit!59719)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1504 (LexerInterface!6065 Rule!12752 List!41690) Unit!59719)

(assert (=> b!3920780 (= lt!1366486 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1504 thiss!20629 (rule!9408 (_1!23548 (v!39221 lt!1366463))) rules!2768))))

(declare-fun lt!1366465 () Unit!59719)

(declare-fun lemmaCharactersSize!1133 (Token!12090) Unit!59719)

(assert (=> b!3920780 (= lt!1366465 (lemmaCharactersSize!1133 (_1!23548 (v!39221 lt!1366463))))))

(declare-fun b!3920781 () Bool)

(declare-fun e!2424454 () Bool)

(declare-fun tp_is_empty!19733 () Bool)

(declare-fun tp!1193422 () Bool)

(assert (=> b!3920781 (= e!2424454 (and tp_is_empty!19733 tp!1193422))))

(declare-fun b!3920782 () Bool)

(declare-fun Unit!59726 () Unit!59719)

(assert (=> b!3920782 (= e!2424429 Unit!59726)))

(declare-fun lt!1366480 () Unit!59719)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!524 (List!41688 List!41688 List!41688 List!41688) Unit!59719)

(assert (=> b!3920782 (= lt!1366480 (lemmaConcatSameAndSameSizesThenSameLists!524 lt!1366483 (_2!23548 (v!39221 lt!1366463)) lt!1366483 (_2!23548 lt!1366470)))))

(assert (=> b!3920782 (= (_2!23548 (v!39221 lt!1366463)) (_2!23548 lt!1366470))))

(declare-fun lt!1366477 () Unit!59719)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!76 (LexerInterface!6065 List!41690 List!41688 List!41688 List!41689 List!41688) Unit!59719)

(assert (=> b!3920782 (= lt!1366477 (lemmaLexWithSmallerInputCannotProduceSameResults!76 thiss!20629 rules!2768 suffix!1176 (_2!23548 lt!1366470) suffixTokens!72 suffixResult!91))))

(declare-fun res!1586035 () Bool)

(assert (=> b!3920782 (= res!1586035 (not (= call!284614 lt!1366466)))))

(declare-fun e!2424441 () Bool)

(assert (=> b!3920782 (=> (not res!1586035) (not e!2424441))))

(assert (=> b!3920782 e!2424441))

(declare-fun b!3920783 () Bool)

(declare-fun e!2424437 () Bool)

(declare-fun tp!1193420 () Bool)

(assert (=> b!3920783 (= e!2424437 (and tp_is_empty!19733 tp!1193420))))

(declare-fun b!3920784 () Bool)

(declare-fun res!1586042 () Bool)

(assert (=> b!3920784 (=> (not res!1586042) (not e!2424438))))

(declare-fun rulesInvariant!5408 (LexerInterface!6065 List!41690) Bool)

(assert (=> b!3920784 (= res!1586042 (rulesInvariant!5408 thiss!20629 rules!2768))))

(declare-fun b!3920785 () Bool)

(declare-fun res!1586041 () Bool)

(assert (=> b!3920785 (=> res!1586041 e!2424431)))

(assert (=> b!3920785 (= res!1586041 (or (not (= lt!1366469 (tuple2!40827 (_1!23547 lt!1366469) (_2!23547 lt!1366469)))) (= (_2!23548 (v!39221 lt!1366463)) suffix!1176)))))

(declare-fun b!3920786 () Bool)

(declare-fun res!1586036 () Bool)

(assert (=> b!3920786 (=> (not res!1586036) (not e!2424438))))

(declare-fun isEmpty!24747 (List!41689) Bool)

(assert (=> b!3920786 (= res!1586036 (not (isEmpty!24747 prefixTokens!80)))))

(declare-fun b!3920787 () Bool)

(declare-fun res!1586043 () Bool)

(assert (=> b!3920787 (=> res!1586043 e!2424431)))

(declare-fun lt!1366462 () tuple2!40826)

(assert (=> b!3920787 (= res!1586043 (not (= lt!1366462 (tuple2!40827 (++!10709 (Cons!41565 (_1!23548 (v!39221 lt!1366463)) Nil!41565) (_1!23547 lt!1366469)) (_2!23547 lt!1366469)))))))

(declare-fun b!3920788 () Bool)

(declare-fun c!681381 () Bool)

(assert (=> b!3920788 (= c!681381 (isEmpty!24747 lt!1366468))))

(declare-fun tail!6015 (List!41689) List!41689)

(assert (=> b!3920788 (= lt!1366468 (tail!6015 prefixTokens!80))))

(assert (=> b!3920788 (= e!2424434 e!2424429)))

(declare-fun b!3920789 () Bool)

(declare-fun tp!1193410 () Bool)

(declare-fun e!2424449 () Bool)

(assert (=> b!3920789 (= e!2424444 (and tp!1193410 (inv!55759 (tag!7336 (rule!9408 (h!46985 prefixTokens!80)))) (inv!55763 (transformation!6476 (rule!9408 (h!46985 prefixTokens!80)))) e!2424449))))

(declare-fun e!2424446 () Bool)

(declare-fun tp!1193414 () Bool)

(declare-fun b!3920790 () Bool)

(assert (=> b!3920790 (= e!2424446 (and tp!1193414 (inv!55759 (tag!7336 (rule!9408 (h!46985 suffixTokens!72)))) (inv!55763 (transformation!6476 (rule!9408 (h!46985 suffixTokens!72)))) e!2424440))))

(declare-fun b!3920791 () Bool)

(declare-fun e!2424424 () Bool)

(assert (=> b!3920791 (= e!2424431 e!2424424)))

(declare-fun res!1586048 () Bool)

(assert (=> b!3920791 (=> res!1586048 e!2424424)))

(declare-fun lt!1366471 () Int)

(assert (=> b!3920791 (= res!1586048 (not (= lt!1366471 lt!1366461)))))

(declare-fun lt!1366484 () Unit!59719)

(assert (=> b!3920791 (= lt!1366484 e!2424439)))

(declare-fun c!681383 () Bool)

(assert (=> b!3920791 (= c!681383 (< lt!1366471 lt!1366461))))

(assert (=> b!3920791 (= lt!1366461 (size!31206 suffix!1176))))

(assert (=> b!3920791 (= lt!1366471 (size!31206 (_2!23548 (v!39221 lt!1366463))))))

(declare-fun tp!1193421 () Bool)

(declare-fun b!3920792 () Bool)

(assert (=> b!3920792 (= e!2424443 (and (inv!21 (value!205200 (h!46985 suffixTokens!72))) e!2424446 tp!1193421))))

(declare-fun b!3920793 () Bool)

(declare-fun res!1586044 () Bool)

(assert (=> b!3920793 (=> (not res!1586044) (not e!2424438))))

(declare-fun prefix!426 () List!41688)

(declare-fun isEmpty!24748 (List!41688) Bool)

(assert (=> b!3920793 (= res!1586044 (not (isEmpty!24748 prefix!426)))))

(declare-fun b!3920794 () Bool)

(assert (=> b!3920794 (= e!2424453 (= (size!31205 (_1!23548 (v!39221 lt!1366463))) (size!31206 (originalCharacters!7076 (_1!23548 (v!39221 lt!1366463))))))))

(assert (=> b!3920795 (= e!2424428 (and tp!1193413 tp!1193418))))

(declare-fun b!3920796 () Bool)

(assert (=> b!3920796 (= e!2424424 true)))

(assert (=> b!3920796 (isPrefix!3571 prefix!426 lt!1366481)))

(declare-fun lt!1366482 () Unit!59719)

(assert (=> b!3920796 (= lt!1366482 (lemmaConcatTwoListThenFirstIsPrefix!2434 prefix!426 suffix!1176))))

(declare-fun b!3920797 () Bool)

(declare-fun e!2424450 () Bool)

(declare-fun tp!1193409 () Bool)

(assert (=> b!3920797 (= e!2424450 (and tp_is_empty!19733 tp!1193409))))

(declare-fun b!3920798 () Bool)

(assert (=> b!3920798 (= e!2424452 false)))

(declare-fun b!3920799 () Bool)

(declare-fun e!2424447 () Bool)

(declare-fun tp!1193408 () Bool)

(assert (=> b!3920799 (= e!2424447 (and e!2424442 tp!1193408))))

(declare-fun res!1586047 () Bool)

(assert (=> start!367632 (=> (not res!1586047) (not e!2424438))))

(assert (=> start!367632 (= res!1586047 ((_ is Lexer!6063) thiss!20629))))

(assert (=> start!367632 e!2424438))

(assert (=> start!367632 e!2424454))

(assert (=> start!367632 true))

(assert (=> start!367632 e!2424437))

(assert (=> start!367632 e!2424447))

(assert (=> start!367632 e!2424427))

(assert (=> start!367632 e!2424448))

(assert (=> start!367632 e!2424450))

(assert (=> b!3920800 (= e!2424449 (and tp!1193424 tp!1193423))))

(declare-fun b!3920801 () Bool)

(assert (=> b!3920801 (= e!2424441 false)))

(declare-fun b!3920802 () Bool)

(assert (=> b!3920802 (= e!2424438 e!2424451)))

(declare-fun res!1586034 () Bool)

(assert (=> b!3920802 (=> (not res!1586034) (not e!2424451))))

(declare-fun lt!1366485 () List!41689)

(assert (=> b!3920802 (= res!1586034 (= lt!1366462 (tuple2!40827 lt!1366485 suffixResult!91)))))

(assert (=> b!3920802 (= lt!1366462 (lexList!1833 thiss!20629 rules!2768 lt!1366481))))

(assert (=> b!3920802 (= lt!1366485 (++!10709 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3920802 (= lt!1366481 (++!10710 prefix!426 suffix!1176))))

(assert (= (and start!367632 res!1586047) b!3920770))

(assert (= (and b!3920770 res!1586040) b!3920784))

(assert (= (and b!3920784 res!1586042) b!3920786))

(assert (= (and b!3920786 res!1586036) b!3920793))

(assert (= (and b!3920793 res!1586044) b!3920802))

(assert (= (and b!3920802 res!1586034) b!3920776))

(assert (= (and b!3920776 res!1586046) b!3920778))

(assert (= (and b!3920778 res!1586038) b!3920780))

(assert (= (and b!3920780 res!1586039) b!3920794))

(assert (= (and b!3920780 (not res!1586037)) b!3920787))

(assert (= (and b!3920787 (not res!1586043)) b!3920785))

(assert (= (and b!3920785 (not res!1586041)) b!3920791))

(assert (= (and b!3920791 c!681383) b!3920772))

(assert (= (and b!3920791 (not c!681383)) b!3920768))

(assert (= (and b!3920772 c!681382) b!3920788))

(assert (= (and b!3920772 (not c!681382)) b!3920779))

(assert (= (and b!3920788 c!681381) b!3920782))

(assert (= (and b!3920788 (not c!681381)) b!3920771))

(assert (= (and b!3920782 res!1586035) b!3920801))

(assert (= (and b!3920771 res!1586045) b!3920798))

(assert (= (or b!3920782 b!3920771) bm!284609))

(assert (= (and b!3920791 (not res!1586048)) b!3920796))

(assert (= (and start!367632 ((_ is Cons!41564) suffixResult!91)) b!3920781))

(assert (= (and start!367632 ((_ is Cons!41564) suffix!1176)) b!3920783))

(assert (= b!3920773 b!3920795))

(assert (= b!3920799 b!3920773))

(assert (= (and start!367632 ((_ is Cons!41566) rules!2768)) b!3920799))

(assert (= b!3920789 b!3920800))

(assert (= b!3920777 b!3920789))

(assert (= b!3920775 b!3920777))

(assert (= (and start!367632 ((_ is Cons!41565) prefixTokens!80)) b!3920775))

(assert (= b!3920790 b!3920774))

(assert (= b!3920792 b!3920790))

(assert (= b!3920769 b!3920792))

(assert (= (and start!367632 ((_ is Cons!41565) suffixTokens!72)) b!3920769))

(assert (= (and start!367632 ((_ is Cons!41564) prefix!426)) b!3920797))

(declare-fun m!4484491 () Bool)

(assert (=> b!3920775 m!4484491))

(declare-fun m!4484493 () Bool)

(assert (=> b!3920791 m!4484493))

(declare-fun m!4484495 () Bool)

(assert (=> b!3920791 m!4484495))

(declare-fun m!4484497 () Bool)

(assert (=> b!3920790 m!4484497))

(declare-fun m!4484499 () Bool)

(assert (=> b!3920790 m!4484499))

(declare-fun m!4484501 () Bool)

(assert (=> b!3920792 m!4484501))

(declare-fun m!4484503 () Bool)

(assert (=> b!3920770 m!4484503))

(declare-fun m!4484505 () Bool)

(assert (=> b!3920780 m!4484505))

(declare-fun m!4484507 () Bool)

(assert (=> b!3920780 m!4484507))

(declare-fun m!4484509 () Bool)

(assert (=> b!3920780 m!4484509))

(declare-fun m!4484511 () Bool)

(assert (=> b!3920780 m!4484511))

(declare-fun m!4484513 () Bool)

(assert (=> b!3920780 m!4484513))

(declare-fun m!4484515 () Bool)

(assert (=> b!3920780 m!4484515))

(assert (=> b!3920780 m!4484515))

(declare-fun m!4484517 () Bool)

(assert (=> b!3920780 m!4484517))

(declare-fun m!4484519 () Bool)

(assert (=> b!3920780 m!4484519))

(declare-fun m!4484521 () Bool)

(assert (=> b!3920780 m!4484521))

(declare-fun m!4484523 () Bool)

(assert (=> b!3920780 m!4484523))

(declare-fun m!4484525 () Bool)

(assert (=> b!3920780 m!4484525))

(assert (=> b!3920780 m!4484509))

(declare-fun m!4484527 () Bool)

(assert (=> b!3920780 m!4484527))

(declare-fun m!4484529 () Bool)

(assert (=> b!3920780 m!4484529))

(declare-fun m!4484531 () Bool)

(assert (=> b!3920780 m!4484531))

(declare-fun m!4484533 () Bool)

(assert (=> b!3920793 m!4484533))

(declare-fun m!4484535 () Bool)

(assert (=> b!3920789 m!4484535))

(declare-fun m!4484537 () Bool)

(assert (=> b!3920789 m!4484537))

(declare-fun m!4484539 () Bool)

(assert (=> b!3920786 m!4484539))

(declare-fun m!4484541 () Bool)

(assert (=> bm!284609 m!4484541))

(declare-fun m!4484543 () Bool)

(assert (=> b!3920771 m!4484543))

(declare-fun m!4484545 () Bool)

(assert (=> b!3920771 m!4484545))

(declare-fun m!4484547 () Bool)

(assert (=> b!3920773 m!4484547))

(declare-fun m!4484549 () Bool)

(assert (=> b!3920773 m!4484549))

(declare-fun m!4484551 () Bool)

(assert (=> b!3920778 m!4484551))

(declare-fun m!4484553 () Bool)

(assert (=> b!3920782 m!4484553))

(declare-fun m!4484555 () Bool)

(assert (=> b!3920782 m!4484555))

(declare-fun m!4484557 () Bool)

(assert (=> b!3920794 m!4484557))

(declare-fun m!4484559 () Bool)

(assert (=> b!3920796 m!4484559))

(declare-fun m!4484561 () Bool)

(assert (=> b!3920796 m!4484561))

(declare-fun m!4484563 () Bool)

(assert (=> b!3920776 m!4484563))

(declare-fun m!4484565 () Bool)

(assert (=> b!3920802 m!4484565))

(declare-fun m!4484567 () Bool)

(assert (=> b!3920802 m!4484567))

(declare-fun m!4484569 () Bool)

(assert (=> b!3920802 m!4484569))

(declare-fun m!4484571 () Bool)

(assert (=> b!3920777 m!4484571))

(declare-fun m!4484573 () Bool)

(assert (=> b!3920787 m!4484573))

(declare-fun m!4484575 () Bool)

(assert (=> b!3920772 m!4484575))

(declare-fun m!4484577 () Bool)

(assert (=> b!3920772 m!4484577))

(declare-fun m!4484579 () Bool)

(assert (=> b!3920772 m!4484579))

(declare-fun m!4484581 () Bool)

(assert (=> b!3920772 m!4484581))

(declare-fun m!4484583 () Bool)

(assert (=> b!3920772 m!4484583))

(declare-fun m!4484585 () Bool)

(assert (=> b!3920784 m!4484585))

(declare-fun m!4484587 () Bool)

(assert (=> b!3920769 m!4484587))

(declare-fun m!4484589 () Bool)

(assert (=> b!3920788 m!4484589))

(declare-fun m!4484591 () Bool)

(assert (=> b!3920788 m!4484591))

(check-sat (not b!3920793) (not b!3920782) (not b!3920773) (not b!3920788) (not b!3920783) b_and!298823 tp_is_empty!19733 (not b!3920772) (not b_next!107325) (not b!3920775) b_and!298825 (not b!3920802) (not b_next!107319) (not b!3920784) (not b_next!107323) (not b!3920799) (not b!3920796) (not b!3920777) (not b!3920778) (not b!3920791) (not b!3920786) b_and!298831 b_and!298829 (not bm!284609) (not b!3920770) (not b_next!107317) (not b!3920781) (not b!3920797) (not b!3920776) (not b_next!107327) (not b!3920780) (not b!3920787) (not b!3920794) (not b!3920792) (not b_next!107321) b_and!298827 (not b!3920769) (not b!3920771) (not b!3920790) b_and!298833 (not b!3920789))
(check-sat (not b_next!107323) b_and!298831 b_and!298829 (not b_next!107317) (not b_next!107327) b_and!298823 (not b_next!107325) b_and!298833 b_and!298825 (not b_next!107319) (not b_next!107321) b_and!298827)
