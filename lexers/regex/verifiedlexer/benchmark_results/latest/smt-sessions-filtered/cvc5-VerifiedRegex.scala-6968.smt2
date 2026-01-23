; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!369158 () Bool)

(assert start!369158)

(declare-fun b!3933775 () Bool)

(declare-fun b_free!107417 () Bool)

(declare-fun b_next!108121 () Bool)

(assert (=> b!3933775 (= b_free!107417 (not b_next!108121))))

(declare-fun tp!1197317 () Bool)

(declare-fun b_and!300275 () Bool)

(assert (=> b!3933775 (= tp!1197317 b_and!300275)))

(declare-fun b_free!107419 () Bool)

(declare-fun b_next!108123 () Bool)

(assert (=> b!3933775 (= b_free!107419 (not b_next!108123))))

(declare-fun tp!1197314 () Bool)

(declare-fun b_and!300277 () Bool)

(assert (=> b!3933775 (= tp!1197314 b_and!300277)))

(declare-fun b!3933781 () Bool)

(declare-fun b_free!107421 () Bool)

(declare-fun b_next!108125 () Bool)

(assert (=> b!3933781 (= b_free!107421 (not b_next!108125))))

(declare-fun tp!1197309 () Bool)

(declare-fun b_and!300279 () Bool)

(assert (=> b!3933781 (= tp!1197309 b_and!300279)))

(declare-fun b_free!107423 () Bool)

(declare-fun b_next!108127 () Bool)

(assert (=> b!3933781 (= b_free!107423 (not b_next!108127))))

(declare-fun tp!1197315 () Bool)

(declare-fun b_and!300281 () Bool)

(assert (=> b!3933781 (= tp!1197315 b_and!300281)))

(declare-fun b!3933750 () Bool)

(declare-fun b_free!107425 () Bool)

(declare-fun b_next!108129 () Bool)

(assert (=> b!3933750 (= b_free!107425 (not b_next!108129))))

(declare-fun tp!1197311 () Bool)

(declare-fun b_and!300283 () Bool)

(assert (=> b!3933750 (= tp!1197311 b_and!300283)))

(declare-fun b_free!107427 () Bool)

(declare-fun b_next!108131 () Bool)

(assert (=> b!3933750 (= b_free!107427 (not b_next!108131))))

(declare-fun tp!1197320 () Bool)

(declare-fun b_and!300285 () Bool)

(assert (=> b!3933750 (= tp!1197320 b_and!300285)))

(declare-fun b!3933733 () Bool)

(declare-fun e!2433682 () Bool)

(declare-fun e!2433680 () Bool)

(assert (=> b!3933733 (= e!2433682 e!2433680)))

(declare-fun res!1591763 () Bool)

(assert (=> b!3933733 (=> res!1591763 e!2433680)))

(declare-datatypes ((List!41893 0))(
  ( (Nil!41769) (Cons!41769 (h!47189 (_ BitVec 16)) (t!325942 List!41893)) )
))
(declare-datatypes ((TokenValue!6753 0))(
  ( (FloatLiteralValue!13506 (text!47716 List!41893)) (TokenValueExt!6752 (__x!25723 Int)) (Broken!33765 (value!206515 List!41893)) (Object!6876) (End!6753) (Def!6753) (Underscore!6753) (Match!6753) (Else!6753) (Error!6753) (Case!6753) (If!6753) (Extends!6753) (Abstract!6753) (Class!6753) (Val!6753) (DelimiterValue!13506 (del!6813 List!41893)) (KeywordValue!6759 (value!206516 List!41893)) (CommentValue!13506 (value!206517 List!41893)) (WhitespaceValue!13506 (value!206518 List!41893)) (IndentationValue!6753 (value!206519 List!41893)) (String!47484) (Int32!6753) (Broken!33766 (value!206520 List!41893)) (Boolean!6754) (Unit!60235) (OperatorValue!6756 (op!6813 List!41893)) (IdentifierValue!13506 (value!206521 List!41893)) (IdentifierValue!13507 (value!206522 List!41893)) (WhitespaceValue!13507 (value!206523 List!41893)) (True!13506) (False!13506) (Broken!33767 (value!206524 List!41893)) (Broken!33768 (value!206525 List!41893)) (True!13507) (RightBrace!6753) (RightBracket!6753) (Colon!6753) (Null!6753) (Comma!6753) (LeftBracket!6753) (False!13507) (LeftBrace!6753) (ImaginaryLiteralValue!6753 (text!47717 List!41893)) (StringLiteralValue!20259 (value!206526 List!41893)) (EOFValue!6753 (value!206527 List!41893)) (IdentValue!6753 (value!206528 List!41893)) (DelimiterValue!13507 (value!206529 List!41893)) (DedentValue!6753 (value!206530 List!41893)) (NewLineValue!6753 (value!206531 List!41893)) (IntegerValue!20259 (value!206532 (_ BitVec 32)) (text!47718 List!41893)) (IntegerValue!20260 (value!206533 Int) (text!47719 List!41893)) (Times!6753) (Or!6753) (Equal!6753) (Minus!6753) (Broken!33769 (value!206534 List!41893)) (And!6753) (Div!6753) (LessEqual!6753) (Mod!6753) (Concat!18181) (Not!6753) (Plus!6753) (SpaceValue!6753 (value!206535 List!41893)) (IntegerValue!20261 (value!206536 Int) (text!47720 List!41893)) (StringLiteralValue!20260 (text!47721 List!41893)) (FloatLiteralValue!13507 (text!47722 List!41893)) (BytesLiteralValue!6753 (value!206537 List!41893)) (CommentValue!13507 (value!206538 List!41893)) (StringLiteralValue!20261 (value!206539 List!41893)) (ErrorTokenValue!6753 (msg!6814 List!41893)) )
))
(declare-datatypes ((C!23042 0))(
  ( (C!23043 (val!13615 Int)) )
))
(declare-datatypes ((Regex!11428 0))(
  ( (ElementMatch!11428 (c!683464 C!23042)) (Concat!18182 (regOne!23368 Regex!11428) (regTwo!23368 Regex!11428)) (EmptyExpr!11428) (Star!11428 (reg!11757 Regex!11428)) (EmptyLang!11428) (Union!11428 (regOne!23369 Regex!11428) (regTwo!23369 Regex!11428)) )
))
(declare-datatypes ((String!47485 0))(
  ( (String!47486 (value!206540 String)) )
))
(declare-datatypes ((List!41894 0))(
  ( (Nil!41770) (Cons!41770 (h!47190 C!23042) (t!325943 List!41894)) )
))
(declare-datatypes ((IArray!25473 0))(
  ( (IArray!25474 (innerList!12794 List!41894)) )
))
(declare-datatypes ((Conc!12734 0))(
  ( (Node!12734 (left!31850 Conc!12734) (right!32180 Conc!12734) (csize!25698 Int) (cheight!12945 Int)) (Leaf!19703 (xs!16040 IArray!25473) (csize!25699 Int)) (Empty!12734) )
))
(declare-datatypes ((BalanceConc!25062 0))(
  ( (BalanceConc!25063 (c!683465 Conc!12734)) )
))
(declare-datatypes ((TokenValueInjection!12934 0))(
  ( (TokenValueInjection!12935 (toValue!8979 Int) (toChars!8838 Int)) )
))
(declare-datatypes ((Rule!12846 0))(
  ( (Rule!12847 (regex!6523 Regex!11428) (tag!7383 String!47485) (isSeparator!6523 Bool) (transformation!6523 TokenValueInjection!12934)) )
))
(declare-datatypes ((Token!12184 0))(
  ( (Token!12185 (value!206541 TokenValue!6753) (rule!9473 Rule!12846) (size!31337 Int) (originalCharacters!7123 List!41894)) )
))
(declare-datatypes ((List!41895 0))(
  ( (Nil!41771) (Cons!41771 (h!47191 Token!12184) (t!325944 List!41895)) )
))
(declare-fun lt!1374777 () List!41895)

(declare-fun lt!1374789 () List!41895)

(assert (=> b!3933733 (= res!1591763 (not (= lt!1374777 lt!1374789)))))

(declare-fun lt!1374792 () List!41895)

(declare-fun lt!1374801 () List!41895)

(declare-fun ++!10803 (List!41895 List!41895) List!41895)

(assert (=> b!3933733 (= lt!1374777 (++!10803 lt!1374792 lt!1374801))))

(declare-fun suffixTokens!72 () List!41895)

(declare-fun lt!1374778 () List!41895)

(assert (=> b!3933733 (= lt!1374777 (++!10803 (++!10803 lt!1374792 lt!1374778) suffixTokens!72))))

(declare-datatypes ((Unit!60236 0))(
  ( (Unit!60237) )
))
(declare-fun lt!1374812 () Unit!60236)

(declare-fun lemmaConcatAssociativity!2333 (List!41895 List!41895 List!41895) Unit!60236)

(assert (=> b!3933733 (= lt!1374812 (lemmaConcatAssociativity!2333 lt!1374792 lt!1374778 suffixTokens!72))))

(declare-fun lt!1374794 () Unit!60236)

(declare-fun e!2433678 () Unit!60236)

(assert (=> b!3933733 (= lt!1374794 e!2433678)))

(declare-fun c!683463 () Bool)

(declare-fun isEmpty!24905 (List!41895) Bool)

(assert (=> b!3933733 (= c!683463 (isEmpty!24905 lt!1374778))))

(declare-fun bm!284892 () Bool)

(declare-datatypes ((LexerInterface!6112 0))(
  ( (LexerInterfaceExt!6109 (__x!25724 Int)) (Lexer!6110) )
))
(declare-fun thiss!20629 () LexerInterface!6112)

(declare-datatypes ((tuple2!41050 0))(
  ( (tuple2!41051 (_1!23659 List!41895) (_2!23659 List!41894)) )
))
(declare-fun call!284897 () tuple2!41050)

(declare-datatypes ((List!41896 0))(
  ( (Nil!41772) (Cons!41772 (h!47192 Rule!12846) (t!325945 List!41896)) )
))
(declare-fun rules!2768 () List!41896)

(declare-datatypes ((tuple2!41052 0))(
  ( (tuple2!41053 (_1!23660 Token!12184) (_2!23660 List!41894)) )
))
(declare-fun lt!1374780 () tuple2!41052)

(declare-fun lexList!1880 (LexerInterface!6112 List!41896 List!41894) tuple2!41050)

(assert (=> bm!284892 (= call!284897 (lexList!1880 thiss!20629 rules!2768 (_2!23660 lt!1374780)))))

(declare-fun b!3933734 () Bool)

(declare-fun e!2433671 () Bool)

(declare-fun e!2433685 () Bool)

(assert (=> b!3933734 (= e!2433671 e!2433685)))

(declare-fun res!1591761 () Bool)

(assert (=> b!3933734 (=> res!1591761 e!2433685)))

(declare-fun lt!1374796 () Int)

(declare-fun lt!1374781 () Int)

(assert (=> b!3933734 (= res!1591761 (<= lt!1374796 lt!1374781))))

(declare-fun lt!1374802 () Unit!60236)

(declare-fun e!2433670 () Unit!60236)

(assert (=> b!3933734 (= lt!1374802 e!2433670)))

(declare-fun c!683461 () Bool)

(assert (=> b!3933734 (= c!683461 (= lt!1374796 lt!1374781))))

(declare-fun lt!1374815 () Unit!60236)

(declare-fun e!2433668 () Unit!60236)

(assert (=> b!3933734 (= lt!1374815 e!2433668)))

(declare-fun c!683462 () Bool)

(assert (=> b!3933734 (= c!683462 (< lt!1374796 lt!1374781))))

(declare-fun suffix!1176 () List!41894)

(declare-fun size!31338 (List!41894) Int)

(assert (=> b!3933734 (= lt!1374781 (size!31338 suffix!1176))))

(declare-datatypes ((Option!8943 0))(
  ( (None!8942) (Some!8942 (v!39270 tuple2!41052)) )
))
(declare-fun lt!1374800 () Option!8943)

(assert (=> b!3933734 (= lt!1374796 (size!31338 (_2!23660 (v!39270 lt!1374800))))))

(declare-fun b!3933735 () Bool)

(declare-fun e!2433663 () Bool)

(declare-fun e!2433703 () Bool)

(assert (=> b!3933735 (= e!2433663 e!2433703)))

(declare-fun res!1591747 () Bool)

(assert (=> b!3933735 (=> res!1591747 e!2433703)))

(declare-fun lt!1374784 () List!41894)

(declare-fun prefix!426 () List!41894)

(assert (=> b!3933735 (= res!1591747 (not (= lt!1374784 prefix!426)))))

(declare-fun lt!1374817 () List!41894)

(declare-fun lt!1374813 () List!41894)

(declare-fun ++!10804 (List!41894 List!41894) List!41894)

(assert (=> b!3933735 (= lt!1374784 (++!10804 lt!1374817 lt!1374813))))

(declare-fun getSuffix!2073 (List!41894 List!41894) List!41894)

(assert (=> b!3933735 (= lt!1374813 (getSuffix!2073 prefix!426 lt!1374817))))

(declare-fun b!3933736 () Bool)

(declare-fun res!1591759 () Bool)

(assert (=> b!3933736 (=> res!1591759 e!2433671)))

(declare-fun lt!1374768 () tuple2!41050)

(assert (=> b!3933736 (= res!1591759 (or (not (= lt!1374768 (tuple2!41051 (_1!23659 lt!1374768) (_2!23659 lt!1374768)))) (= (_2!23660 (v!39270 lt!1374800)) suffix!1176)))))

(declare-fun b!3933737 () Bool)

(declare-fun Unit!60238 () Unit!60236)

(assert (=> b!3933737 (= e!2433678 Unit!60238)))

(declare-fun lt!1374787 () Unit!60236)

(declare-fun suffixResult!91 () List!41894)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!123 (LexerInterface!6112 List!41896 List!41894 List!41894 List!41895 List!41894) Unit!60236)

(assert (=> b!3933737 (= lt!1374787 (lemmaLexWithSmallerInputCannotProduceSameResults!123 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1374800)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3933737 false))

(declare-fun b!3933738 () Bool)

(declare-fun res!1591760 () Bool)

(declare-fun e!2433666 () Bool)

(assert (=> b!3933738 (=> (not res!1591760) (not e!2433666))))

(declare-fun isEmpty!24906 (List!41896) Bool)

(assert (=> b!3933738 (= res!1591760 (not (isEmpty!24906 rules!2768)))))

(declare-fun b!3933739 () Bool)

(declare-fun Unit!60239 () Unit!60236)

(assert (=> b!3933739 (= e!2433678 Unit!60239)))

(declare-fun b!3933740 () Bool)

(declare-fun e!2433669 () Bool)

(declare-fun e!2433672 () Bool)

(assert (=> b!3933740 (= e!2433669 e!2433672)))

(declare-fun res!1591770 () Bool)

(assert (=> b!3933740 (=> (not res!1591770) (not e!2433672))))

(declare-fun lt!1374814 () tuple2!41050)

(assert (=> b!3933740 (= res!1591770 (= (lexList!1880 thiss!20629 rules!2768 suffix!1176) lt!1374814))))

(assert (=> b!3933740 (= lt!1374814 (tuple2!41051 suffixTokens!72 suffixResult!91))))

(declare-fun tp!1197316 () Bool)

(declare-fun b!3933741 () Bool)

(declare-fun e!2433691 () Bool)

(declare-fun prefixTokens!80 () List!41895)

(declare-fun e!2433684 () Bool)

(declare-fun inv!55969 (Token!12184) Bool)

(assert (=> b!3933741 (= e!2433684 (and (inv!55969 (h!47191 prefixTokens!80)) e!2433691 tp!1197316))))

(declare-fun b!3933742 () Bool)

(declare-fun e!2433700 () Bool)

(assert (=> b!3933742 (= e!2433703 e!2433700)))

(declare-fun res!1591762 () Bool)

(assert (=> b!3933742 (=> res!1591762 e!2433700)))

(declare-fun lt!1374790 () List!41894)

(declare-fun lt!1374804 () List!41894)

(declare-fun lt!1374783 () List!41894)

(assert (=> b!3933742 (= res!1591762 (or (not (= lt!1374804 lt!1374783)) (not (= lt!1374804 lt!1374790))))))

(assert (=> b!3933742 (= lt!1374804 (++!10804 lt!1374784 suffix!1176))))

(declare-fun b!3933743 () Bool)

(assert (=> b!3933743 (= e!2433666 e!2433669)))

(declare-fun res!1591753 () Bool)

(assert (=> b!3933743 (=> (not res!1591753) (not e!2433669))))

(declare-fun lt!1374795 () tuple2!41050)

(assert (=> b!3933743 (= res!1591753 (= lt!1374795 (tuple2!41051 lt!1374789 suffixResult!91)))))

(assert (=> b!3933743 (= lt!1374795 (lexList!1880 thiss!20629 rules!2768 lt!1374783))))

(assert (=> b!3933743 (= lt!1374789 (++!10803 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3933743 (= lt!1374783 (++!10804 prefix!426 suffix!1176))))

(declare-fun b!3933744 () Bool)

(declare-fun e!2433667 () Bool)

(assert (=> b!3933744 (= e!2433667 e!2433671)))

(declare-fun res!1591769 () Bool)

(assert (=> b!3933744 (=> res!1591769 e!2433671)))

(assert (=> b!3933744 (= res!1591769 (not (= lt!1374795 (tuple2!41051 (++!10803 lt!1374792 (_1!23659 lt!1374768)) (_2!23659 lt!1374768)))))))

(assert (=> b!3933744 (= lt!1374792 (Cons!41771 (_1!23660 (v!39270 lt!1374800)) Nil!41771))))

(declare-fun b!3933745 () Bool)

(declare-fun e!2433695 () Bool)

(declare-fun e!2433689 () Bool)

(declare-fun tp!1197319 () Bool)

(assert (=> b!3933745 (= e!2433695 (and e!2433689 tp!1197319))))

(declare-fun b!3933746 () Bool)

(declare-fun e!2433664 () Bool)

(assert (=> b!3933746 (= e!2433664 e!2433682)))

(declare-fun res!1591751 () Bool)

(assert (=> b!3933746 (=> res!1591751 e!2433682)))

(declare-fun lt!1374811 () tuple2!41050)

(assert (=> b!3933746 (= res!1591751 (not (= lt!1374768 lt!1374811)))))

(assert (=> b!3933746 (= lt!1374811 (tuple2!41051 lt!1374801 suffixResult!91))))

(assert (=> b!3933746 (= lt!1374801 (++!10803 lt!1374778 suffixTokens!72))))

(declare-fun tail!6080 (List!41895) List!41895)

(assert (=> b!3933746 (= lt!1374778 (tail!6080 prefixTokens!80))))

(declare-fun lt!1374797 () List!41894)

(declare-fun isPrefix!3618 (List!41894 List!41894) Bool)

(assert (=> b!3933746 (isPrefix!3618 lt!1374813 lt!1374797)))

(declare-fun lt!1374791 () Unit!60236)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2481 (List!41894 List!41894) Unit!60236)

(assert (=> b!3933746 (= lt!1374791 (lemmaConcatTwoListThenFirstIsPrefix!2481 lt!1374813 suffix!1176))))

(declare-fun b!3933747 () Bool)

(declare-fun res!1591768 () Bool)

(assert (=> b!3933747 (=> res!1591768 e!2433680)))

(assert (=> b!3933747 (= res!1591768 (not (= (lexList!1880 thiss!20629 rules!2768 lt!1374797) lt!1374811)))))

(declare-fun b!3933748 () Bool)

(declare-fun e!2433679 () Unit!60236)

(declare-fun Unit!60240 () Unit!60236)

(assert (=> b!3933748 (= e!2433679 Unit!60240)))

(declare-fun b!3933749 () Bool)

(declare-fun e!2433699 () Bool)

(assert (=> b!3933749 (= e!2433699 false)))

(declare-fun e!2433674 () Bool)

(assert (=> b!3933750 (= e!2433674 (and tp!1197311 tp!1197320))))

(declare-fun b!3933751 () Bool)

(declare-fun e!2433704 () Unit!60236)

(declare-fun Unit!60241 () Unit!60236)

(assert (=> b!3933751 (= e!2433704 Unit!60241)))

(declare-fun lt!1374770 () Unit!60236)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!571 (List!41894 List!41894 List!41894 List!41894) Unit!60236)

(assert (=> b!3933751 (= lt!1374770 (lemmaConcatSameAndSameSizesThenSameLists!571 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 (_2!23660 lt!1374780)))))

(assert (=> b!3933751 (= (_2!23660 (v!39270 lt!1374800)) (_2!23660 lt!1374780))))

(declare-fun lt!1374810 () Unit!60236)

(assert (=> b!3933751 (= lt!1374810 (lemmaLexWithSmallerInputCannotProduceSameResults!123 thiss!20629 rules!2768 suffix!1176 (_2!23660 lt!1374780) suffixTokens!72 suffixResult!91))))

(declare-fun res!1591766 () Bool)

(assert (=> b!3933751 (= res!1591766 (not (= call!284897 lt!1374814)))))

(assert (=> b!3933751 (=> (not res!1591766) (not e!2433699))))

(assert (=> b!3933751 e!2433699))

(declare-fun b!3933752 () Bool)

(declare-fun res!1591745 () Bool)

(assert (=> b!3933752 (=> (not res!1591745) (not e!2433666))))

(assert (=> b!3933752 (= res!1591745 (not (isEmpty!24905 prefixTokens!80)))))

(declare-fun b!3933753 () Bool)

(declare-fun res!1591749 () Bool)

(assert (=> b!3933753 (=> (not res!1591749) (not e!2433666))))

(declare-fun rulesInvariant!5455 (LexerInterface!6112 List!41896) Bool)

(assert (=> b!3933753 (= res!1591749 (rulesInvariant!5455 thiss!20629 rules!2768))))

(declare-fun b!3933754 () Bool)

(declare-fun e!2433687 () Bool)

(assert (=> b!3933754 (= e!2433700 e!2433687)))

(declare-fun res!1591757 () Bool)

(assert (=> b!3933754 (=> res!1591757 e!2433687)))

(declare-fun lt!1374769 () List!41894)

(assert (=> b!3933754 (= res!1591757 (or (not (= lt!1374783 lt!1374804)) (not (= lt!1374783 lt!1374769)) (not (= lt!1374790 lt!1374769))))))

(assert (=> b!3933754 (= lt!1374804 lt!1374769)))

(assert (=> b!3933754 (= lt!1374769 (++!10804 lt!1374817 lt!1374797))))

(assert (=> b!3933754 (= lt!1374797 (++!10804 lt!1374813 suffix!1176))))

(declare-fun lt!1374805 () Unit!60236)

(declare-fun lemmaConcatAssociativity!2334 (List!41894 List!41894 List!41894) Unit!60236)

(assert (=> b!3933754 (= lt!1374805 (lemmaConcatAssociativity!2334 lt!1374817 lt!1374813 suffix!1176))))

(declare-fun b!3933755 () Bool)

(declare-fun Unit!60242 () Unit!60236)

(assert (=> b!3933755 (= e!2433668 Unit!60242)))

(declare-fun b!3933756 () Bool)

(declare-fun res!1591750 () Bool)

(declare-fun e!2433692 () Bool)

(assert (=> b!3933756 (=> res!1591750 e!2433692)))

(declare-fun isEmpty!24907 (List!41894) Bool)

(assert (=> b!3933756 (= res!1591750 (isEmpty!24907 suffix!1176))))

(declare-fun res!1591767 () Bool)

(assert (=> start!369158 (=> (not res!1591767) (not e!2433666))))

(assert (=> start!369158 (= res!1591767 (is-Lexer!6110 thiss!20629))))

(assert (=> start!369158 e!2433666))

(declare-fun e!2433673 () Bool)

(assert (=> start!369158 e!2433673))

(assert (=> start!369158 true))

(declare-fun e!2433701 () Bool)

(assert (=> start!369158 e!2433701))

(assert (=> start!369158 e!2433695))

(assert (=> start!369158 e!2433684))

(declare-fun e!2433696 () Bool)

(assert (=> start!369158 e!2433696))

(declare-fun e!2433702 () Bool)

(assert (=> start!369158 e!2433702))

(declare-fun b!3933757 () Bool)

(declare-fun Unit!60243 () Unit!60236)

(assert (=> b!3933757 (= e!2433670 Unit!60243)))

(declare-fun b!3933758 () Bool)

(assert (=> b!3933758 (= e!2433685 e!2433663)))

(declare-fun res!1591748 () Bool)

(assert (=> b!3933758 (=> res!1591748 e!2433663)))

(declare-fun lt!1374807 () Int)

(assert (=> b!3933758 (= res!1591748 (>= lt!1374807 (size!31338 prefix!426)))))

(assert (=> b!3933758 (isPrefix!3618 lt!1374817 prefix!426)))

(declare-fun lt!1374806 () Unit!60236)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!296 (List!41894 List!41894 List!41894) Unit!60236)

(assert (=> b!3933758 (= lt!1374806 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!296 prefix!426 lt!1374817 lt!1374783))))

(assert (=> b!3933758 (isPrefix!3618 prefix!426 lt!1374783)))

(declare-fun lt!1374775 () Unit!60236)

(assert (=> b!3933758 (= lt!1374775 (lemmaConcatTwoListThenFirstIsPrefix!2481 prefix!426 suffix!1176))))

(declare-fun b!3933759 () Bool)

(declare-fun e!2433688 () Bool)

(assert (=> b!3933759 (= e!2433672 e!2433688)))

(declare-fun res!1591752 () Bool)

(assert (=> b!3933759 (=> (not res!1591752) (not e!2433688))))

(assert (=> b!3933759 (= res!1591752 (is-Some!8942 lt!1374800))))

(declare-fun maxPrefix!3416 (LexerInterface!6112 List!41896 List!41894) Option!8943)

(assert (=> b!3933759 (= lt!1374800 (maxPrefix!3416 thiss!20629 rules!2768 lt!1374783))))

(declare-fun b!3933760 () Bool)

(declare-fun Unit!60244 () Unit!60236)

(assert (=> b!3933760 (= e!2433670 Unit!60244)))

(declare-fun lt!1374782 () Unit!60236)

(assert (=> b!3933760 (= lt!1374782 (lemmaConcatTwoListThenFirstIsPrefix!2481 prefix!426 suffix!1176))))

(assert (=> b!3933760 (isPrefix!3618 prefix!426 lt!1374783)))

(declare-fun lt!1374809 () Unit!60236)

(declare-fun lemmaIsPrefixSameLengthThenSameList!814 (List!41894 List!41894 List!41894) Unit!60236)

(assert (=> b!3933760 (= lt!1374809 (lemmaIsPrefixSameLengthThenSameList!814 lt!1374817 prefix!426 lt!1374783))))

(assert (=> b!3933760 (= lt!1374817 prefix!426)))

(declare-fun lt!1374774 () Unit!60236)

(declare-fun lemmaSamePrefixThenSameSuffix!1839 (List!41894 List!41894 List!41894 List!41894 List!41894) Unit!60236)

(assert (=> b!3933760 (= lt!1374774 (lemmaSamePrefixThenSameSuffix!1839 lt!1374817 (_2!23660 (v!39270 lt!1374800)) prefix!426 suffix!1176 lt!1374783))))

(assert (=> b!3933760 false))

(declare-fun b!3933761 () Bool)

(declare-fun res!1591746 () Bool)

(assert (=> b!3933761 (=> res!1591746 e!2433685)))

(declare-fun head!8354 (List!41895) Token!12184)

(assert (=> b!3933761 (= res!1591746 (not (= (head!8354 prefixTokens!80) (_1!23660 (v!39270 lt!1374800)))))))

(declare-fun b!3933762 () Bool)

(assert (=> b!3933762 (= e!2433687 e!2433664)))

(declare-fun res!1591756 () Bool)

(assert (=> b!3933762 (=> res!1591756 e!2433664)))

(assert (=> b!3933762 (= res!1591756 (not (= lt!1374797 (_2!23660 (v!39270 lt!1374800)))))))

(assert (=> b!3933762 (= (_2!23660 (v!39270 lt!1374800)) lt!1374797)))

(declare-fun lt!1374771 () Unit!60236)

(assert (=> b!3933762 (= lt!1374771 (lemmaSamePrefixThenSameSuffix!1839 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 lt!1374797 lt!1374783))))

(assert (=> b!3933762 (isPrefix!3618 lt!1374817 lt!1374769)))

(declare-fun lt!1374798 () Unit!60236)

(assert (=> b!3933762 (= lt!1374798 (lemmaConcatTwoListThenFirstIsPrefix!2481 lt!1374817 lt!1374797))))

(declare-fun b!3933763 () Bool)

(declare-fun tp!1197321 () Bool)

(declare-fun e!2433694 () Bool)

(declare-fun inv!55966 (String!47485) Bool)

(declare-fun inv!55970 (TokenValueInjection!12934) Bool)

(assert (=> b!3933763 (= e!2433689 (and tp!1197321 (inv!55966 (tag!7383 (h!47192 rules!2768))) (inv!55970 (transformation!6523 (h!47192 rules!2768))) e!2433694))))

(declare-fun b!3933764 () Bool)

(declare-fun e!2433686 () Bool)

(assert (=> b!3933764 (= e!2433686 false)))

(declare-fun b!3933765 () Bool)

(assert (=> b!3933765 (= e!2433692 (> lt!1374781 (size!31338 Nil!41770)))))

(declare-fun e!2433683 () Bool)

(declare-fun e!2433665 () Bool)

(declare-fun tp!1197323 () Bool)

(declare-fun b!3933766 () Bool)

(declare-fun inv!21 (TokenValue!6753) Bool)

(assert (=> b!3933766 (= e!2433683 (and (inv!21 (value!206541 (h!47191 suffixTokens!72))) e!2433665 tp!1197323))))

(declare-fun b!3933767 () Bool)

(declare-fun tp!1197312 () Bool)

(assert (=> b!3933767 (= e!2433696 (and (inv!55969 (h!47191 suffixTokens!72)) e!2433683 tp!1197312))))

(declare-fun b!3933768 () Bool)

(declare-fun res!1591771 () Bool)

(assert (=> b!3933768 (=> res!1591771 e!2433692)))

(assert (=> b!3933768 (= res!1591771 (not (isPrefix!3618 lt!1374813 (_2!23660 (v!39270 lt!1374800)))))))

(declare-fun b!3933769 () Bool)

(assert (=> b!3933769 (= e!2433688 (not e!2433667))))

(declare-fun res!1591755 () Bool)

(assert (=> b!3933769 (=> res!1591755 e!2433667)))

(assert (=> b!3933769 (= res!1591755 (not (= lt!1374790 lt!1374783)))))

(assert (=> b!3933769 (= lt!1374768 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1374800))))))

(declare-fun lt!1374785 () List!41894)

(declare-fun lt!1374773 () TokenValue!6753)

(assert (=> b!3933769 (and (= (size!31337 (_1!23660 (v!39270 lt!1374800))) lt!1374807) (= (originalCharacters!7123 (_1!23660 (v!39270 lt!1374800))) lt!1374817) (= (tuple2!41053 (_1!23660 (v!39270 lt!1374800)) (_2!23660 (v!39270 lt!1374800))) (tuple2!41053 (Token!12185 lt!1374773 (rule!9473 (_1!23660 (v!39270 lt!1374800))) lt!1374807 lt!1374817) lt!1374785)))))

(assert (=> b!3933769 (= lt!1374807 (size!31338 lt!1374817))))

(declare-fun e!2433677 () Bool)

(assert (=> b!3933769 e!2433677))

(declare-fun res!1591754 () Bool)

(assert (=> b!3933769 (=> (not res!1591754) (not e!2433677))))

(assert (=> b!3933769 (= res!1591754 (= (value!206541 (_1!23660 (v!39270 lt!1374800))) lt!1374773))))

(declare-fun apply!9762 (TokenValueInjection!12934 BalanceConc!25062) TokenValue!6753)

(declare-fun seqFromList!4790 (List!41894) BalanceConc!25062)

(assert (=> b!3933769 (= lt!1374773 (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (seqFromList!4790 lt!1374817)))))

(assert (=> b!3933769 (= (_2!23660 (v!39270 lt!1374800)) lt!1374785)))

(declare-fun lt!1374776 () Unit!60236)

(assert (=> b!3933769 (= lt!1374776 (lemmaSamePrefixThenSameSuffix!1839 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 lt!1374785 lt!1374783))))

(assert (=> b!3933769 (= lt!1374785 (getSuffix!2073 lt!1374783 lt!1374817))))

(assert (=> b!3933769 (isPrefix!3618 lt!1374817 lt!1374790)))

(assert (=> b!3933769 (= lt!1374790 (++!10804 lt!1374817 (_2!23660 (v!39270 lt!1374800))))))

(declare-fun lt!1374786 () Unit!60236)

(assert (=> b!3933769 (= lt!1374786 (lemmaConcatTwoListThenFirstIsPrefix!2481 lt!1374817 (_2!23660 (v!39270 lt!1374800))))))

(declare-fun list!15520 (BalanceConc!25062) List!41894)

(declare-fun charsOf!4347 (Token!12184) BalanceConc!25062)

(assert (=> b!3933769 (= lt!1374817 (list!15520 (charsOf!4347 (_1!23660 (v!39270 lt!1374800)))))))

(declare-fun ruleValid!2471 (LexerInterface!6112 Rule!12846) Bool)

(assert (=> b!3933769 (ruleValid!2471 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))

(declare-fun lt!1374799 () Unit!60236)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1551 (LexerInterface!6112 Rule!12846 List!41896) Unit!60236)

(assert (=> b!3933769 (= lt!1374799 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1551 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))) rules!2768))))

(declare-fun lt!1374803 () Unit!60236)

(declare-fun lemmaCharactersSize!1180 (Token!12184) Unit!60236)

(assert (=> b!3933769 (= lt!1374803 (lemmaCharactersSize!1180 (_1!23660 (v!39270 lt!1374800))))))

(declare-fun b!3933770 () Bool)

(declare-fun Unit!60245 () Unit!60236)

(assert (=> b!3933770 (= e!2433704 Unit!60245)))

(declare-fun lt!1374816 () Unit!60236)

(declare-fun lt!1374793 () List!41895)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!123 (LexerInterface!6112 List!41896 List!41894 List!41894 List!41895 List!41894 List!41895) Unit!60236)

(assert (=> b!3933770 (= lt!1374816 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!123 thiss!20629 rules!2768 suffix!1176 (_2!23660 lt!1374780) suffixTokens!72 suffixResult!91 lt!1374793))))

(declare-fun res!1591765 () Bool)

(assert (=> b!3933770 (= res!1591765 (not (= call!284897 (tuple2!41051 (++!10803 lt!1374793 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3933770 (=> (not res!1591765) (not e!2433686))))

(assert (=> b!3933770 e!2433686))

(declare-fun b!3933771 () Bool)

(declare-fun tp_is_empty!19827 () Bool)

(declare-fun tp!1197324 () Bool)

(assert (=> b!3933771 (= e!2433673 (and tp_is_empty!19827 tp!1197324))))

(declare-fun b!3933772 () Bool)

(assert (=> b!3933772 (= e!2433677 (= (size!31337 (_1!23660 (v!39270 lt!1374800))) (size!31338 (originalCharacters!7123 (_1!23660 (v!39270 lt!1374800))))))))

(declare-fun tp!1197322 () Bool)

(declare-fun e!2433693 () Bool)

(declare-fun b!3933773 () Bool)

(assert (=> b!3933773 (= e!2433665 (and tp!1197322 (inv!55966 (tag!7383 (rule!9473 (h!47191 suffixTokens!72)))) (inv!55970 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) e!2433693))))

(declare-fun e!2433676 () Bool)

(declare-fun b!3933774 () Bool)

(declare-fun tp!1197318 () Bool)

(assert (=> b!3933774 (= e!2433676 (and tp!1197318 (inv!55966 (tag!7383 (rule!9473 (h!47191 prefixTokens!80)))) (inv!55970 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) e!2433674))))

(assert (=> b!3933775 (= e!2433694 (and tp!1197317 tp!1197314))))

(declare-fun b!3933776 () Bool)

(declare-fun res!1591764 () Bool)

(assert (=> b!3933776 (=> (not res!1591764) (not e!2433666))))

(assert (=> b!3933776 (= res!1591764 (not (isEmpty!24907 prefix!426)))))

(declare-fun b!3933777 () Bool)

(declare-fun tp!1197313 () Bool)

(assert (=> b!3933777 (= e!2433701 (and tp_is_empty!19827 tp!1197313))))

(declare-fun b!3933778 () Bool)

(declare-fun tp!1197325 () Bool)

(assert (=> b!3933778 (= e!2433702 (and tp_is_empty!19827 tp!1197325))))

(declare-fun b!3933779 () Bool)

(assert (=> b!3933779 (= e!2433680 e!2433692)))

(declare-fun res!1591758 () Bool)

(assert (=> b!3933779 (=> res!1591758 e!2433692)))

(assert (=> b!3933779 (= res!1591758 (not (= lt!1374800 (Some!8942 (tuple2!41053 (_1!23660 (v!39270 lt!1374800)) (_2!23660 (v!39270 lt!1374800)))))))))

(assert (=> b!3933779 (= (lexList!1880 thiss!20629 rules!2768 lt!1374813) (tuple2!41051 lt!1374778 Nil!41770))))

(declare-fun lt!1374772 () Unit!60236)

(declare-fun lemmaLexThenLexPrefix!608 (LexerInterface!6112 List!41896 List!41894 List!41894 List!41895 List!41895 List!41894) Unit!60236)

(assert (=> b!3933779 (= lt!1374772 (lemmaLexThenLexPrefix!608 thiss!20629 rules!2768 lt!1374813 suffix!1176 lt!1374778 suffixTokens!72 suffixResult!91))))

(declare-fun tp!1197310 () Bool)

(declare-fun b!3933780 () Bool)

(assert (=> b!3933780 (= e!2433691 (and (inv!21 (value!206541 (h!47191 prefixTokens!80))) e!2433676 tp!1197310))))

(assert (=> b!3933781 (= e!2433693 (and tp!1197309 tp!1197315))))

(declare-fun b!3933782 () Bool)

(declare-fun Unit!60246 () Unit!60236)

(assert (=> b!3933782 (= e!2433668 Unit!60246)))

(declare-fun lt!1374788 () Int)

(assert (=> b!3933782 (= lt!1374788 (size!31338 lt!1374783))))

(declare-fun lt!1374779 () Unit!60236)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1354 (LexerInterface!6112 List!41896 List!41894 List!41894 List!41894 Rule!12846) Unit!60236)

(assert (=> b!3933782 (= lt!1374779 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1354 thiss!20629 rules!2768 lt!1374817 lt!1374783 (_2!23660 (v!39270 lt!1374800)) (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))

(declare-fun maxPrefixOneRule!2486 (LexerInterface!6112 Rule!12846 List!41894) Option!8943)

(assert (=> b!3933782 (= (maxPrefixOneRule!2486 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))) lt!1374783) (Some!8942 (tuple2!41053 (Token!12185 lt!1374773 (rule!9473 (_1!23660 (v!39270 lt!1374800))) lt!1374807 lt!1374817) (_2!23660 (v!39270 lt!1374800)))))))

(declare-fun get!13805 (Option!8943) tuple2!41052)

(assert (=> b!3933782 (= lt!1374780 (get!13805 lt!1374800))))

(declare-fun c!683459 () Bool)

(assert (=> b!3933782 (= c!683459 (< (size!31338 (_2!23660 lt!1374780)) lt!1374781))))

(declare-fun lt!1374808 () Unit!60236)

(assert (=> b!3933782 (= lt!1374808 e!2433679)))

(assert (=> b!3933782 false))

(declare-fun b!3933783 () Bool)

(declare-fun c!683460 () Bool)

(assert (=> b!3933783 (= c!683460 (isEmpty!24905 lt!1374793))))

(assert (=> b!3933783 (= lt!1374793 (tail!6080 prefixTokens!80))))

(assert (=> b!3933783 (= e!2433679 e!2433704)))

(assert (= (and start!369158 res!1591767) b!3933738))

(assert (= (and b!3933738 res!1591760) b!3933753))

(assert (= (and b!3933753 res!1591749) b!3933752))

(assert (= (and b!3933752 res!1591745) b!3933776))

(assert (= (and b!3933776 res!1591764) b!3933743))

(assert (= (and b!3933743 res!1591753) b!3933740))

(assert (= (and b!3933740 res!1591770) b!3933759))

(assert (= (and b!3933759 res!1591752) b!3933769))

(assert (= (and b!3933769 res!1591754) b!3933772))

(assert (= (and b!3933769 (not res!1591755)) b!3933744))

(assert (= (and b!3933744 (not res!1591769)) b!3933736))

(assert (= (and b!3933736 (not res!1591759)) b!3933734))

(assert (= (and b!3933734 c!683462) b!3933782))

(assert (= (and b!3933734 (not c!683462)) b!3933755))

(assert (= (and b!3933782 c!683459) b!3933783))

(assert (= (and b!3933782 (not c!683459)) b!3933748))

(assert (= (and b!3933783 c!683460) b!3933751))

(assert (= (and b!3933783 (not c!683460)) b!3933770))

(assert (= (and b!3933751 res!1591766) b!3933749))

(assert (= (and b!3933770 res!1591765) b!3933764))

(assert (= (or b!3933751 b!3933770) bm!284892))

(assert (= (and b!3933734 c!683461) b!3933760))

(assert (= (and b!3933734 (not c!683461)) b!3933757))

(assert (= (and b!3933734 (not res!1591761)) b!3933761))

(assert (= (and b!3933761 (not res!1591746)) b!3933758))

(assert (= (and b!3933758 (not res!1591748)) b!3933735))

(assert (= (and b!3933735 (not res!1591747)) b!3933742))

(assert (= (and b!3933742 (not res!1591762)) b!3933754))

(assert (= (and b!3933754 (not res!1591757)) b!3933762))

(assert (= (and b!3933762 (not res!1591756)) b!3933746))

(assert (= (and b!3933746 (not res!1591751)) b!3933733))

(assert (= (and b!3933733 c!683463) b!3933737))

(assert (= (and b!3933733 (not c!683463)) b!3933739))

(assert (= (and b!3933733 (not res!1591763)) b!3933747))

(assert (= (and b!3933747 (not res!1591768)) b!3933779))

(assert (= (and b!3933779 (not res!1591758)) b!3933756))

(assert (= (and b!3933756 (not res!1591750)) b!3933768))

(assert (= (and b!3933768 (not res!1591771)) b!3933765))

(assert (= (and start!369158 (is-Cons!41770 suffixResult!91)) b!3933771))

(assert (= (and start!369158 (is-Cons!41770 suffix!1176)) b!3933777))

(assert (= b!3933763 b!3933775))

(assert (= b!3933745 b!3933763))

(assert (= (and start!369158 (is-Cons!41772 rules!2768)) b!3933745))

(assert (= b!3933774 b!3933750))

(assert (= b!3933780 b!3933774))

(assert (= b!3933741 b!3933780))

(assert (= (and start!369158 (is-Cons!41771 prefixTokens!80)) b!3933741))

(assert (= b!3933773 b!3933781))

(assert (= b!3933766 b!3933773))

(assert (= b!3933767 b!3933766))

(assert (= (and start!369158 (is-Cons!41771 suffixTokens!72)) b!3933767))

(assert (= (and start!369158 (is-Cons!41770 prefix!426)) b!3933778))

(declare-fun m!4500313 () Bool)

(assert (=> b!3933744 m!4500313))

(declare-fun m!4500315 () Bool)

(assert (=> b!3933734 m!4500315))

(declare-fun m!4500317 () Bool)

(assert (=> b!3933734 m!4500317))

(declare-fun m!4500319 () Bool)

(assert (=> b!3933761 m!4500319))

(declare-fun m!4500321 () Bool)

(assert (=> b!3933740 m!4500321))

(declare-fun m!4500323 () Bool)

(assert (=> b!3933773 m!4500323))

(declare-fun m!4500325 () Bool)

(assert (=> b!3933773 m!4500325))

(declare-fun m!4500327 () Bool)

(assert (=> b!3933752 m!4500327))

(declare-fun m!4500329 () Bool)

(assert (=> b!3933768 m!4500329))

(declare-fun m!4500331 () Bool)

(assert (=> b!3933758 m!4500331))

(declare-fun m!4500333 () Bool)

(assert (=> b!3933758 m!4500333))

(declare-fun m!4500335 () Bool)

(assert (=> b!3933758 m!4500335))

(declare-fun m!4500337 () Bool)

(assert (=> b!3933758 m!4500337))

(declare-fun m!4500339 () Bool)

(assert (=> b!3933758 m!4500339))

(declare-fun m!4500341 () Bool)

(assert (=> b!3933743 m!4500341))

(declare-fun m!4500343 () Bool)

(assert (=> b!3933743 m!4500343))

(declare-fun m!4500345 () Bool)

(assert (=> b!3933743 m!4500345))

(declare-fun m!4500347 () Bool)

(assert (=> b!3933751 m!4500347))

(declare-fun m!4500349 () Bool)

(assert (=> b!3933751 m!4500349))

(declare-fun m!4500351 () Bool)

(assert (=> b!3933741 m!4500351))

(declare-fun m!4500353 () Bool)

(assert (=> b!3933765 m!4500353))

(declare-fun m!4500355 () Bool)

(assert (=> b!3933779 m!4500355))

(declare-fun m!4500357 () Bool)

(assert (=> b!3933779 m!4500357))

(declare-fun m!4500359 () Bool)

(assert (=> b!3933759 m!4500359))

(declare-fun m!4500361 () Bool)

(assert (=> b!3933737 m!4500361))

(declare-fun m!4500363 () Bool)

(assert (=> b!3933753 m!4500363))

(declare-fun m!4500365 () Bool)

(assert (=> b!3933766 m!4500365))

(declare-fun m!4500367 () Bool)

(assert (=> b!3933742 m!4500367))

(declare-fun m!4500369 () Bool)

(assert (=> b!3933782 m!4500369))

(declare-fun m!4500371 () Bool)

(assert (=> b!3933782 m!4500371))

(declare-fun m!4500373 () Bool)

(assert (=> b!3933782 m!4500373))

(declare-fun m!4500375 () Bool)

(assert (=> b!3933782 m!4500375))

(declare-fun m!4500377 () Bool)

(assert (=> b!3933782 m!4500377))

(declare-fun m!4500379 () Bool)

(assert (=> b!3933756 m!4500379))

(assert (=> b!3933760 m!4500335))

(assert (=> b!3933760 m!4500337))

(declare-fun m!4500381 () Bool)

(assert (=> b!3933760 m!4500381))

(declare-fun m!4500383 () Bool)

(assert (=> b!3933760 m!4500383))

(declare-fun m!4500385 () Bool)

(assert (=> b!3933780 m!4500385))

(declare-fun m!4500387 () Bool)

(assert (=> b!3933733 m!4500387))

(declare-fun m!4500389 () Bool)

(assert (=> b!3933733 m!4500389))

(declare-fun m!4500391 () Bool)

(assert (=> b!3933733 m!4500391))

(declare-fun m!4500393 () Bool)

(assert (=> b!3933733 m!4500393))

(declare-fun m!4500395 () Bool)

(assert (=> b!3933733 m!4500395))

(assert (=> b!3933733 m!4500387))

(declare-fun m!4500397 () Bool)

(assert (=> b!3933735 m!4500397))

(declare-fun m!4500399 () Bool)

(assert (=> b!3933735 m!4500399))

(declare-fun m!4500401 () Bool)

(assert (=> b!3933738 m!4500401))

(declare-fun m!4500403 () Bool)

(assert (=> b!3933762 m!4500403))

(declare-fun m!4500405 () Bool)

(assert (=> b!3933762 m!4500405))

(declare-fun m!4500407 () Bool)

(assert (=> b!3933762 m!4500407))

(declare-fun m!4500409 () Bool)

(assert (=> b!3933754 m!4500409))

(declare-fun m!4500411 () Bool)

(assert (=> b!3933754 m!4500411))

(declare-fun m!4500413 () Bool)

(assert (=> b!3933754 m!4500413))

(declare-fun m!4500415 () Bool)

(assert (=> b!3933776 m!4500415))

(declare-fun m!4500417 () Bool)

(assert (=> b!3933772 m!4500417))

(declare-fun m!4500419 () Bool)

(assert (=> bm!284892 m!4500419))

(declare-fun m!4500421 () Bool)

(assert (=> b!3933783 m!4500421))

(declare-fun m!4500423 () Bool)

(assert (=> b!3933783 m!4500423))

(declare-fun m!4500425 () Bool)

(assert (=> b!3933763 m!4500425))

(declare-fun m!4500427 () Bool)

(assert (=> b!3933763 m!4500427))

(declare-fun m!4500429 () Bool)

(assert (=> b!3933774 m!4500429))

(declare-fun m!4500431 () Bool)

(assert (=> b!3933774 m!4500431))

(declare-fun m!4500433 () Bool)

(assert (=> b!3933767 m!4500433))

(declare-fun m!4500435 () Bool)

(assert (=> b!3933770 m!4500435))

(declare-fun m!4500437 () Bool)

(assert (=> b!3933770 m!4500437))

(declare-fun m!4500439 () Bool)

(assert (=> b!3933746 m!4500439))

(assert (=> b!3933746 m!4500423))

(declare-fun m!4500441 () Bool)

(assert (=> b!3933746 m!4500441))

(declare-fun m!4500443 () Bool)

(assert (=> b!3933746 m!4500443))

(declare-fun m!4500445 () Bool)

(assert (=> b!3933747 m!4500445))

(declare-fun m!4500447 () Bool)

(assert (=> b!3933769 m!4500447))

(declare-fun m!4500449 () Bool)

(assert (=> b!3933769 m!4500449))

(declare-fun m!4500451 () Bool)

(assert (=> b!3933769 m!4500451))

(declare-fun m!4500453 () Bool)

(assert (=> b!3933769 m!4500453))

(declare-fun m!4500455 () Bool)

(assert (=> b!3933769 m!4500455))

(declare-fun m!4500457 () Bool)

(assert (=> b!3933769 m!4500457))

(declare-fun m!4500459 () Bool)

(assert (=> b!3933769 m!4500459))

(declare-fun m!4500461 () Bool)

(assert (=> b!3933769 m!4500461))

(declare-fun m!4500463 () Bool)

(assert (=> b!3933769 m!4500463))

(declare-fun m!4500465 () Bool)

(assert (=> b!3933769 m!4500465))

(declare-fun m!4500467 () Bool)

(assert (=> b!3933769 m!4500467))

(declare-fun m!4500469 () Bool)

(assert (=> b!3933769 m!4500469))

(assert (=> b!3933769 m!4500459))

(declare-fun m!4500471 () Bool)

(assert (=> b!3933769 m!4500471))

(assert (=> b!3933769 m!4500463))

(declare-fun m!4500473 () Bool)

(assert (=> b!3933769 m!4500473))

(push 1)

(assert (not b!3933744))

(assert b_and!300281)

(assert (not b!3933735))

(assert (not b!3933737))

(assert (not b!3933779))

(assert (not b!3933766))

(assert (not b!3933774))

(assert b_and!300275)

(assert (not b!3933738))

(assert (not b_next!108131))

(assert (not b!3933760))

(assert (not b!3933740))

(assert (not b!3933771))

(assert (not b_next!108129))

(assert (not b!3933769))

(assert (not b!3933734))

(assert (not bm!284892))

(assert (not b!3933745))

(assert (not b!3933783))

(assert b_and!300277)

(assert (not b!3933778))

(assert (not b!3933747))

(assert b_and!300279)

(assert (not b_next!108127))

(assert (not b!3933762))

(assert (not b!3933780))

(assert (not b!3933768))

(assert (not b!3933776))

(assert (not b!3933751))

(assert (not b!3933741))

(assert (not b_next!108121))

(assert (not b!3933752))

(assert (not b!3933782))

(assert (not b!3933759))

(assert (not b!3933742))

(assert b_and!300283)

(assert tp_is_empty!19827)

(assert (not b!3933773))

(assert (not b!3933754))

(assert (not b!3933763))

(assert (not b!3933767))

(assert (not b_next!108125))

(assert (not b!3933746))

(assert (not b!3933761))

(assert (not b!3933772))

(assert (not b!3933765))

(assert (not b!3933753))

(assert (not b!3933733))

(assert (not b!3933770))

(assert (not b!3933758))

(assert (not b_next!108123))

(assert (not b!3933756))

(assert (not b!3933777))

(assert (not b!3933743))

(assert b_and!300285)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!108129))

(assert b_and!300277)

(assert b_and!300281)

(assert (not b_next!108121))

(assert b_and!300283)

(assert b_and!300275)

(assert (not b_next!108125))

(assert (not b_next!108131))

(assert (not b_next!108123))

(assert b_and!300285)

(assert b_and!300279)

(assert (not b_next!108127))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1166375 () Bool)

(assert (=> d!1166375 (= (isEmpty!24907 prefix!426) (is-Nil!41770 prefix!426))))

(assert (=> b!3933776 d!1166375))

(declare-fun d!1166379 () Bool)

(declare-fun lt!1374979 () Int)

(assert (=> d!1166379 (>= lt!1374979 0)))

(declare-fun e!2433842 () Int)

(assert (=> d!1166379 (= lt!1374979 e!2433842)))

(declare-fun c!683492 () Bool)

(assert (=> d!1166379 (= c!683492 (is-Nil!41770 suffix!1176))))

(assert (=> d!1166379 (= (size!31338 suffix!1176) lt!1374979)))

(declare-fun b!3933956 () Bool)

(assert (=> b!3933956 (= e!2433842 0)))

(declare-fun b!3933957 () Bool)

(assert (=> b!3933957 (= e!2433842 (+ 1 (size!31338 (t!325943 suffix!1176))))))

(assert (= (and d!1166379 c!683492) b!3933956))

(assert (= (and d!1166379 (not c!683492)) b!3933957))

(declare-fun m!4500645 () Bool)

(assert (=> b!3933957 m!4500645))

(assert (=> b!3933734 d!1166379))

(declare-fun d!1166381 () Bool)

(declare-fun lt!1374980 () Int)

(assert (=> d!1166381 (>= lt!1374980 0)))

(declare-fun e!2433843 () Int)

(assert (=> d!1166381 (= lt!1374980 e!2433843)))

(declare-fun c!683493 () Bool)

(assert (=> d!1166381 (= c!683493 (is-Nil!41770 (_2!23660 (v!39270 lt!1374800))))))

(assert (=> d!1166381 (= (size!31338 (_2!23660 (v!39270 lt!1374800))) lt!1374980)))

(declare-fun b!3933958 () Bool)

(assert (=> b!3933958 (= e!2433843 0)))

(declare-fun b!3933959 () Bool)

(assert (=> b!3933959 (= e!2433843 (+ 1 (size!31338 (t!325943 (_2!23660 (v!39270 lt!1374800))))))))

(assert (= (and d!1166381 c!683493) b!3933958))

(assert (= (and d!1166381 (not c!683493)) b!3933959))

(declare-fun m!4500647 () Bool)

(assert (=> b!3933959 m!4500647))

(assert (=> b!3933734 d!1166381))

(declare-fun b!3933976 () Bool)

(declare-fun e!2433853 () List!41894)

(assert (=> b!3933976 (= e!2433853 lt!1374813)))

(declare-fun b!3933977 () Bool)

(assert (=> b!3933977 (= e!2433853 (Cons!41770 (h!47190 lt!1374817) (++!10804 (t!325943 lt!1374817) lt!1374813)))))

(declare-fun b!3933978 () Bool)

(declare-fun res!1591872 () Bool)

(declare-fun e!2433852 () Bool)

(assert (=> b!3933978 (=> (not res!1591872) (not e!2433852))))

(declare-fun lt!1374985 () List!41894)

(assert (=> b!3933978 (= res!1591872 (= (size!31338 lt!1374985) (+ (size!31338 lt!1374817) (size!31338 lt!1374813))))))

(declare-fun d!1166383 () Bool)

(assert (=> d!1166383 e!2433852))

(declare-fun res!1591871 () Bool)

(assert (=> d!1166383 (=> (not res!1591871) (not e!2433852))))

(declare-fun content!6295 (List!41894) (Set C!23042))

(assert (=> d!1166383 (= res!1591871 (= (content!6295 lt!1374985) (set.union (content!6295 lt!1374817) (content!6295 lt!1374813))))))

(assert (=> d!1166383 (= lt!1374985 e!2433853)))

(declare-fun c!683498 () Bool)

(assert (=> d!1166383 (= c!683498 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166383 (= (++!10804 lt!1374817 lt!1374813) lt!1374985)))

(declare-fun b!3933979 () Bool)

(assert (=> b!3933979 (= e!2433852 (or (not (= lt!1374813 Nil!41770)) (= lt!1374985 lt!1374817)))))

(assert (= (and d!1166383 c!683498) b!3933976))

(assert (= (and d!1166383 (not c!683498)) b!3933977))

(assert (= (and d!1166383 res!1591871) b!3933978))

(assert (= (and b!3933978 res!1591872) b!3933979))

(declare-fun m!4500649 () Bool)

(assert (=> b!3933977 m!4500649))

(declare-fun m!4500651 () Bool)

(assert (=> b!3933978 m!4500651))

(assert (=> b!3933978 m!4500447))

(declare-fun m!4500653 () Bool)

(assert (=> b!3933978 m!4500653))

(declare-fun m!4500655 () Bool)

(assert (=> d!1166383 m!4500655))

(declare-fun m!4500657 () Bool)

(assert (=> d!1166383 m!4500657))

(declare-fun m!4500659 () Bool)

(assert (=> d!1166383 m!4500659))

(assert (=> b!3933735 d!1166383))

(declare-fun d!1166385 () Bool)

(declare-fun lt!1374988 () List!41894)

(assert (=> d!1166385 (= (++!10804 lt!1374817 lt!1374988) prefix!426)))

(declare-fun e!2433856 () List!41894)

(assert (=> d!1166385 (= lt!1374988 e!2433856)))

(declare-fun c!683501 () Bool)

(assert (=> d!1166385 (= c!683501 (is-Cons!41770 lt!1374817))))

(assert (=> d!1166385 (>= (size!31338 prefix!426) (size!31338 lt!1374817))))

(assert (=> d!1166385 (= (getSuffix!2073 prefix!426 lt!1374817) lt!1374988)))

(declare-fun b!3933984 () Bool)

(declare-fun tail!6082 (List!41894) List!41894)

(assert (=> b!3933984 (= e!2433856 (getSuffix!2073 (tail!6082 prefix!426) (t!325943 lt!1374817)))))

(declare-fun b!3933985 () Bool)

(assert (=> b!3933985 (= e!2433856 prefix!426)))

(assert (= (and d!1166385 c!683501) b!3933984))

(assert (= (and d!1166385 (not c!683501)) b!3933985))

(declare-fun m!4500661 () Bool)

(assert (=> d!1166385 m!4500661))

(assert (=> d!1166385 m!4500333))

(assert (=> d!1166385 m!4500447))

(declare-fun m!4500663 () Bool)

(assert (=> b!3933984 m!4500663))

(assert (=> b!3933984 m!4500663))

(declare-fun m!4500665 () Bool)

(assert (=> b!3933984 m!4500665))

(assert (=> b!3933735 d!1166385))

(declare-fun d!1166387 () Bool)

(assert (=> d!1166387 (= (isEmpty!24907 suffix!1176) (is-Nil!41770 suffix!1176))))

(assert (=> b!3933756 d!1166387))

(declare-fun d!1166389 () Bool)

(assert (=> d!1166389 (= (isEmpty!24905 prefixTokens!80) (is-Nil!41771 prefixTokens!80))))

(assert (=> b!3933752 d!1166389))

(declare-fun d!1166391 () Bool)

(declare-fun res!1591877 () Bool)

(declare-fun e!2433861 () Bool)

(assert (=> d!1166391 (=> (not res!1591877) (not e!2433861))))

(declare-fun rulesValid!2538 (LexerInterface!6112 List!41896) Bool)

(assert (=> d!1166391 (= res!1591877 (rulesValid!2538 thiss!20629 rules!2768))))

(assert (=> d!1166391 (= (rulesInvariant!5455 thiss!20629 rules!2768) e!2433861)))

(declare-fun b!3933992 () Bool)

(declare-datatypes ((List!41901 0))(
  ( (Nil!41777) (Cons!41777 (h!47197 String!47485) (t!326022 List!41901)) )
))
(declare-fun noDuplicateTag!2539 (LexerInterface!6112 List!41896 List!41901) Bool)

(assert (=> b!3933992 (= e!2433861 (noDuplicateTag!2539 thiss!20629 rules!2768 Nil!41777))))

(assert (= (and d!1166391 res!1591877) b!3933992))

(declare-fun m!4500681 () Bool)

(assert (=> d!1166391 m!4500681))

(declare-fun m!4500683 () Bool)

(assert (=> b!3933992 m!4500683))

(assert (=> b!3933753 d!1166391))

(declare-fun d!1166395 () Bool)

(assert (=> d!1166395 (= (inv!55966 (tag!7383 (rule!9473 (h!47191 prefixTokens!80)))) (= (mod (str.len (value!206540 (tag!7383 (rule!9473 (h!47191 prefixTokens!80))))) 2) 0))))

(assert (=> b!3933774 d!1166395))

(declare-fun d!1166397 () Bool)

(declare-fun res!1591880 () Bool)

(declare-fun e!2433864 () Bool)

(assert (=> d!1166397 (=> (not res!1591880) (not e!2433864))))

(declare-fun semiInverseModEq!2804 (Int Int) Bool)

(assert (=> d!1166397 (= res!1591880 (semiInverseModEq!2804 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))))))

(assert (=> d!1166397 (= (inv!55970 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) e!2433864)))

(declare-fun b!3933995 () Bool)

(declare-fun equivClasses!2703 (Int Int) Bool)

(assert (=> b!3933995 (= e!2433864 (equivClasses!2703 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))))))

(assert (= (and d!1166397 res!1591880) b!3933995))

(declare-fun m!4500685 () Bool)

(assert (=> d!1166397 m!4500685))

(declare-fun m!4500687 () Bool)

(assert (=> b!3933995 m!4500687))

(assert (=> b!3933774 d!1166397))

(declare-fun d!1166399 () Bool)

(assert (=> d!1166399 (= (++!10803 (++!10803 lt!1374792 lt!1374778) suffixTokens!72) (++!10803 lt!1374792 (++!10803 lt!1374778 suffixTokens!72)))))

(declare-fun lt!1374994 () Unit!60236)

(declare-fun choose!23424 (List!41895 List!41895 List!41895) Unit!60236)

(assert (=> d!1166399 (= lt!1374994 (choose!23424 lt!1374792 lt!1374778 suffixTokens!72))))

(assert (=> d!1166399 (= (lemmaConcatAssociativity!2333 lt!1374792 lt!1374778 suffixTokens!72) lt!1374994)))

(declare-fun bs!586331 () Bool)

(assert (= bs!586331 d!1166399))

(declare-fun m!4500689 () Bool)

(assert (=> bs!586331 m!4500689))

(assert (=> bs!586331 m!4500439))

(assert (=> bs!586331 m!4500387))

(assert (=> bs!586331 m!4500389))

(assert (=> bs!586331 m!4500439))

(declare-fun m!4500691 () Bool)

(assert (=> bs!586331 m!4500691))

(assert (=> bs!586331 m!4500387))

(assert (=> b!3933733 d!1166399))

(declare-fun d!1166401 () Bool)

(assert (=> d!1166401 (= (isEmpty!24905 lt!1374778) (is-Nil!41771 lt!1374778))))

(assert (=> b!3933733 d!1166401))

(declare-fun d!1166403 () Bool)

(declare-fun e!2433875 () Bool)

(assert (=> d!1166403 e!2433875))

(declare-fun res!1591891 () Bool)

(assert (=> d!1166403 (=> (not res!1591891) (not e!2433875))))

(declare-fun lt!1374998 () List!41895)

(declare-fun content!6296 (List!41895) (Set Token!12184))

(assert (=> d!1166403 (= res!1591891 (= (content!6296 lt!1374998) (set.union (content!6296 lt!1374792) (content!6296 lt!1374801))))))

(declare-fun e!2433876 () List!41895)

(assert (=> d!1166403 (= lt!1374998 e!2433876)))

(declare-fun c!683508 () Bool)

(assert (=> d!1166403 (= c!683508 (is-Nil!41771 lt!1374792))))

(assert (=> d!1166403 (= (++!10803 lt!1374792 lt!1374801) lt!1374998)))

(declare-fun b!3934019 () Bool)

(assert (=> b!3934019 (= e!2433875 (or (not (= lt!1374801 Nil!41771)) (= lt!1374998 lt!1374792)))))

(declare-fun b!3934018 () Bool)

(declare-fun res!1591892 () Bool)

(assert (=> b!3934018 (=> (not res!1591892) (not e!2433875))))

(declare-fun size!31341 (List!41895) Int)

(assert (=> b!3934018 (= res!1591892 (= (size!31341 lt!1374998) (+ (size!31341 lt!1374792) (size!31341 lt!1374801))))))

(declare-fun b!3934016 () Bool)

(assert (=> b!3934016 (= e!2433876 lt!1374801)))

(declare-fun b!3934017 () Bool)

(assert (=> b!3934017 (= e!2433876 (Cons!41771 (h!47191 lt!1374792) (++!10803 (t!325944 lt!1374792) lt!1374801)))))

(assert (= (and d!1166403 c!683508) b!3934016))

(assert (= (and d!1166403 (not c!683508)) b!3934017))

(assert (= (and d!1166403 res!1591891) b!3934018))

(assert (= (and b!3934018 res!1591892) b!3934019))

(declare-fun m!4500703 () Bool)

(assert (=> d!1166403 m!4500703))

(declare-fun m!4500705 () Bool)

(assert (=> d!1166403 m!4500705))

(declare-fun m!4500707 () Bool)

(assert (=> d!1166403 m!4500707))

(declare-fun m!4500709 () Bool)

(assert (=> b!3934018 m!4500709))

(declare-fun m!4500711 () Bool)

(assert (=> b!3934018 m!4500711))

(declare-fun m!4500713 () Bool)

(assert (=> b!3934018 m!4500713))

(declare-fun m!4500715 () Bool)

(assert (=> b!3934017 m!4500715))

(assert (=> b!3933733 d!1166403))

(declare-fun d!1166407 () Bool)

(declare-fun e!2433877 () Bool)

(assert (=> d!1166407 e!2433877))

(declare-fun res!1591893 () Bool)

(assert (=> d!1166407 (=> (not res!1591893) (not e!2433877))))

(declare-fun lt!1374999 () List!41895)

(assert (=> d!1166407 (= res!1591893 (= (content!6296 lt!1374999) (set.union (content!6296 (++!10803 lt!1374792 lt!1374778)) (content!6296 suffixTokens!72))))))

(declare-fun e!2433878 () List!41895)

(assert (=> d!1166407 (= lt!1374999 e!2433878)))

(declare-fun c!683509 () Bool)

(assert (=> d!1166407 (= c!683509 (is-Nil!41771 (++!10803 lt!1374792 lt!1374778)))))

(assert (=> d!1166407 (= (++!10803 (++!10803 lt!1374792 lt!1374778) suffixTokens!72) lt!1374999)))

(declare-fun b!3934023 () Bool)

(assert (=> b!3934023 (= e!2433877 (or (not (= suffixTokens!72 Nil!41771)) (= lt!1374999 (++!10803 lt!1374792 lt!1374778))))))

(declare-fun b!3934022 () Bool)

(declare-fun res!1591894 () Bool)

(assert (=> b!3934022 (=> (not res!1591894) (not e!2433877))))

(assert (=> b!3934022 (= res!1591894 (= (size!31341 lt!1374999) (+ (size!31341 (++!10803 lt!1374792 lt!1374778)) (size!31341 suffixTokens!72))))))

(declare-fun b!3934020 () Bool)

(assert (=> b!3934020 (= e!2433878 suffixTokens!72)))

(declare-fun b!3934021 () Bool)

(assert (=> b!3934021 (= e!2433878 (Cons!41771 (h!47191 (++!10803 lt!1374792 lt!1374778)) (++!10803 (t!325944 (++!10803 lt!1374792 lt!1374778)) suffixTokens!72)))))

(assert (= (and d!1166407 c!683509) b!3934020))

(assert (= (and d!1166407 (not c!683509)) b!3934021))

(assert (= (and d!1166407 res!1591893) b!3934022))

(assert (= (and b!3934022 res!1591894) b!3934023))

(declare-fun m!4500717 () Bool)

(assert (=> d!1166407 m!4500717))

(assert (=> d!1166407 m!4500387))

(declare-fun m!4500719 () Bool)

(assert (=> d!1166407 m!4500719))

(declare-fun m!4500721 () Bool)

(assert (=> d!1166407 m!4500721))

(declare-fun m!4500723 () Bool)

(assert (=> b!3934022 m!4500723))

(assert (=> b!3934022 m!4500387))

(declare-fun m!4500725 () Bool)

(assert (=> b!3934022 m!4500725))

(declare-fun m!4500727 () Bool)

(assert (=> b!3934022 m!4500727))

(declare-fun m!4500729 () Bool)

(assert (=> b!3934021 m!4500729))

(assert (=> b!3933733 d!1166407))

(declare-fun d!1166409 () Bool)

(declare-fun e!2433879 () Bool)

(assert (=> d!1166409 e!2433879))

(declare-fun res!1591895 () Bool)

(assert (=> d!1166409 (=> (not res!1591895) (not e!2433879))))

(declare-fun lt!1375000 () List!41895)

(assert (=> d!1166409 (= res!1591895 (= (content!6296 lt!1375000) (set.union (content!6296 lt!1374792) (content!6296 lt!1374778))))))

(declare-fun e!2433880 () List!41895)

(assert (=> d!1166409 (= lt!1375000 e!2433880)))

(declare-fun c!683510 () Bool)

(assert (=> d!1166409 (= c!683510 (is-Nil!41771 lt!1374792))))

(assert (=> d!1166409 (= (++!10803 lt!1374792 lt!1374778) lt!1375000)))

(declare-fun b!3934027 () Bool)

(assert (=> b!3934027 (= e!2433879 (or (not (= lt!1374778 Nil!41771)) (= lt!1375000 lt!1374792)))))

(declare-fun b!3934026 () Bool)

(declare-fun res!1591896 () Bool)

(assert (=> b!3934026 (=> (not res!1591896) (not e!2433879))))

(assert (=> b!3934026 (= res!1591896 (= (size!31341 lt!1375000) (+ (size!31341 lt!1374792) (size!31341 lt!1374778))))))

(declare-fun b!3934024 () Bool)

(assert (=> b!3934024 (= e!2433880 lt!1374778)))

(declare-fun b!3934025 () Bool)

(assert (=> b!3934025 (= e!2433880 (Cons!41771 (h!47191 lt!1374792) (++!10803 (t!325944 lt!1374792) lt!1374778)))))

(assert (= (and d!1166409 c!683510) b!3934024))

(assert (= (and d!1166409 (not c!683510)) b!3934025))

(assert (= (and d!1166409 res!1591895) b!3934026))

(assert (= (and b!3934026 res!1591896) b!3934027))

(declare-fun m!4500731 () Bool)

(assert (=> d!1166409 m!4500731))

(assert (=> d!1166409 m!4500705))

(declare-fun m!4500733 () Bool)

(assert (=> d!1166409 m!4500733))

(declare-fun m!4500735 () Bool)

(assert (=> b!3934026 m!4500735))

(assert (=> b!3934026 m!4500711))

(declare-fun m!4500737 () Bool)

(assert (=> b!3934026 m!4500737))

(declare-fun m!4500739 () Bool)

(assert (=> b!3934025 m!4500739))

(assert (=> b!3933733 d!1166409))

(declare-fun b!3934057 () Bool)

(declare-fun e!2433898 () Bool)

(declare-fun lt!1375012 () tuple2!41050)

(assert (=> b!3934057 (= e!2433898 (not (isEmpty!24905 (_1!23659 lt!1375012))))))

(declare-fun b!3934058 () Bool)

(declare-fun e!2433897 () tuple2!41050)

(assert (=> b!3934058 (= e!2433897 (tuple2!41051 Nil!41771 (_2!23660 lt!1374780)))))

(declare-fun d!1166411 () Bool)

(declare-fun e!2433899 () Bool)

(assert (=> d!1166411 e!2433899))

(declare-fun c!683518 () Bool)

(assert (=> d!1166411 (= c!683518 (> (size!31341 (_1!23659 lt!1375012)) 0))))

(assert (=> d!1166411 (= lt!1375012 e!2433897)))

(declare-fun c!683519 () Bool)

(declare-fun lt!1375010 () Option!8943)

(assert (=> d!1166411 (= c!683519 (is-Some!8942 lt!1375010))))

(assert (=> d!1166411 (= lt!1375010 (maxPrefix!3416 thiss!20629 rules!2768 (_2!23660 lt!1374780)))))

(assert (=> d!1166411 (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 lt!1374780)) lt!1375012)))

(declare-fun b!3934059 () Bool)

(declare-fun lt!1375011 () tuple2!41050)

(assert (=> b!3934059 (= e!2433897 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375010)) (_1!23659 lt!1375011)) (_2!23659 lt!1375011)))))

(assert (=> b!3934059 (= lt!1375011 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375010))))))

(declare-fun b!3934060 () Bool)

(assert (=> b!3934060 (= e!2433899 e!2433898)))

(declare-fun res!1591907 () Bool)

(assert (=> b!3934060 (= res!1591907 (< (size!31338 (_2!23659 lt!1375012)) (size!31338 (_2!23660 lt!1374780))))))

(assert (=> b!3934060 (=> (not res!1591907) (not e!2433898))))

(declare-fun b!3934061 () Bool)

(assert (=> b!3934061 (= e!2433899 (= (_2!23659 lt!1375012) (_2!23660 lt!1374780)))))

(assert (= (and d!1166411 c!683519) b!3934059))

(assert (= (and d!1166411 (not c!683519)) b!3934058))

(assert (= (and d!1166411 c!683518) b!3934060))

(assert (= (and d!1166411 (not c!683518)) b!3934061))

(assert (= (and b!3934060 res!1591907) b!3934057))

(declare-fun m!4500765 () Bool)

(assert (=> b!3934057 m!4500765))

(declare-fun m!4500767 () Bool)

(assert (=> d!1166411 m!4500767))

(declare-fun m!4500769 () Bool)

(assert (=> d!1166411 m!4500769))

(declare-fun m!4500771 () Bool)

(assert (=> b!3934059 m!4500771))

(declare-fun m!4500773 () Bool)

(assert (=> b!3934060 m!4500773))

(assert (=> b!3934060 m!4500375))

(assert (=> bm!284892 d!1166411))

(declare-fun b!3934062 () Bool)

(declare-fun e!2433901 () List!41894)

(assert (=> b!3934062 (= e!2433901 lt!1374797)))

(declare-fun b!3934063 () Bool)

(assert (=> b!3934063 (= e!2433901 (Cons!41770 (h!47190 lt!1374817) (++!10804 (t!325943 lt!1374817) lt!1374797)))))

(declare-fun b!3934064 () Bool)

(declare-fun res!1591909 () Bool)

(declare-fun e!2433900 () Bool)

(assert (=> b!3934064 (=> (not res!1591909) (not e!2433900))))

(declare-fun lt!1375013 () List!41894)

(assert (=> b!3934064 (= res!1591909 (= (size!31338 lt!1375013) (+ (size!31338 lt!1374817) (size!31338 lt!1374797))))))

(declare-fun d!1166417 () Bool)

(assert (=> d!1166417 e!2433900))

(declare-fun res!1591908 () Bool)

(assert (=> d!1166417 (=> (not res!1591908) (not e!2433900))))

(assert (=> d!1166417 (= res!1591908 (= (content!6295 lt!1375013) (set.union (content!6295 lt!1374817) (content!6295 lt!1374797))))))

(assert (=> d!1166417 (= lt!1375013 e!2433901)))

(declare-fun c!683520 () Bool)

(assert (=> d!1166417 (= c!683520 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166417 (= (++!10804 lt!1374817 lt!1374797) lt!1375013)))

(declare-fun b!3934065 () Bool)

(assert (=> b!3934065 (= e!2433900 (or (not (= lt!1374797 Nil!41770)) (= lt!1375013 lt!1374817)))))

(assert (= (and d!1166417 c!683520) b!3934062))

(assert (= (and d!1166417 (not c!683520)) b!3934063))

(assert (= (and d!1166417 res!1591908) b!3934064))

(assert (= (and b!3934064 res!1591909) b!3934065))

(declare-fun m!4500775 () Bool)

(assert (=> b!3934063 m!4500775))

(declare-fun m!4500777 () Bool)

(assert (=> b!3934064 m!4500777))

(assert (=> b!3934064 m!4500447))

(declare-fun m!4500779 () Bool)

(assert (=> b!3934064 m!4500779))

(declare-fun m!4500781 () Bool)

(assert (=> d!1166417 m!4500781))

(assert (=> d!1166417 m!4500657))

(declare-fun m!4500783 () Bool)

(assert (=> d!1166417 m!4500783))

(assert (=> b!3933754 d!1166417))

(declare-fun b!3934068 () Bool)

(declare-fun e!2433904 () List!41894)

(assert (=> b!3934068 (= e!2433904 suffix!1176)))

(declare-fun b!3934069 () Bool)

(assert (=> b!3934069 (= e!2433904 (Cons!41770 (h!47190 lt!1374813) (++!10804 (t!325943 lt!1374813) suffix!1176)))))

(declare-fun b!3934070 () Bool)

(declare-fun res!1591911 () Bool)

(declare-fun e!2433903 () Bool)

(assert (=> b!3934070 (=> (not res!1591911) (not e!2433903))))

(declare-fun lt!1375015 () List!41894)

(assert (=> b!3934070 (= res!1591911 (= (size!31338 lt!1375015) (+ (size!31338 lt!1374813) (size!31338 suffix!1176))))))

(declare-fun d!1166419 () Bool)

(assert (=> d!1166419 e!2433903))

(declare-fun res!1591910 () Bool)

(assert (=> d!1166419 (=> (not res!1591910) (not e!2433903))))

(assert (=> d!1166419 (= res!1591910 (= (content!6295 lt!1375015) (set.union (content!6295 lt!1374813) (content!6295 suffix!1176))))))

(assert (=> d!1166419 (= lt!1375015 e!2433904)))

(declare-fun c!683522 () Bool)

(assert (=> d!1166419 (= c!683522 (is-Nil!41770 lt!1374813))))

(assert (=> d!1166419 (= (++!10804 lt!1374813 suffix!1176) lt!1375015)))

(declare-fun b!3934071 () Bool)

(assert (=> b!3934071 (= e!2433903 (or (not (= suffix!1176 Nil!41770)) (= lt!1375015 lt!1374813)))))

(assert (= (and d!1166419 c!683522) b!3934068))

(assert (= (and d!1166419 (not c!683522)) b!3934069))

(assert (= (and d!1166419 res!1591910) b!3934070))

(assert (= (and b!3934070 res!1591911) b!3934071))

(declare-fun m!4500791 () Bool)

(assert (=> b!3934069 m!4500791))

(declare-fun m!4500793 () Bool)

(assert (=> b!3934070 m!4500793))

(assert (=> b!3934070 m!4500653))

(assert (=> b!3934070 m!4500315))

(declare-fun m!4500795 () Bool)

(assert (=> d!1166419 m!4500795))

(assert (=> d!1166419 m!4500659))

(declare-fun m!4500797 () Bool)

(assert (=> d!1166419 m!4500797))

(assert (=> b!3933754 d!1166419))

(declare-fun d!1166423 () Bool)

(assert (=> d!1166423 (= (++!10804 (++!10804 lt!1374817 lt!1374813) suffix!1176) (++!10804 lt!1374817 (++!10804 lt!1374813 suffix!1176)))))

(declare-fun lt!1375018 () Unit!60236)

(declare-fun choose!23425 (List!41894 List!41894 List!41894) Unit!60236)

(assert (=> d!1166423 (= lt!1375018 (choose!23425 lt!1374817 lt!1374813 suffix!1176))))

(assert (=> d!1166423 (= (lemmaConcatAssociativity!2334 lt!1374817 lt!1374813 suffix!1176) lt!1375018)))

(declare-fun bs!586332 () Bool)

(assert (= bs!586332 d!1166423))

(assert (=> bs!586332 m!4500411))

(declare-fun m!4500799 () Bool)

(assert (=> bs!586332 m!4500799))

(assert (=> bs!586332 m!4500397))

(declare-fun m!4500801 () Bool)

(assert (=> bs!586332 m!4500801))

(assert (=> bs!586332 m!4500411))

(assert (=> bs!586332 m!4500397))

(declare-fun m!4500803 () Bool)

(assert (=> bs!586332 m!4500803))

(assert (=> b!3933754 d!1166423))

(declare-fun d!1166427 () Bool)

(assert (=> d!1166427 (and (= lt!1374817 lt!1374817) (= (_2!23660 (v!39270 lt!1374800)) (_2!23660 lt!1374780)))))

(declare-fun lt!1375021 () Unit!60236)

(declare-fun choose!23426 (List!41894 List!41894 List!41894 List!41894) Unit!60236)

(assert (=> d!1166427 (= lt!1375021 (choose!23426 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 (_2!23660 lt!1374780)))))

(assert (=> d!1166427 (= (++!10804 lt!1374817 (_2!23660 (v!39270 lt!1374800))) (++!10804 lt!1374817 (_2!23660 lt!1374780)))))

(assert (=> d!1166427 (= (lemmaConcatSameAndSameSizesThenSameLists!571 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 (_2!23660 lt!1374780)) lt!1375021)))

(declare-fun bs!586333 () Bool)

(assert (= bs!586333 d!1166427))

(declare-fun m!4500807 () Bool)

(assert (=> bs!586333 m!4500807))

(assert (=> bs!586333 m!4500453))

(declare-fun m!4500811 () Bool)

(assert (=> bs!586333 m!4500811))

(assert (=> b!3933751 d!1166427))

(declare-fun d!1166431 () Bool)

(assert (=> d!1166431 (not (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 lt!1374780)) (tuple2!41051 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1375033 () Unit!60236)

(declare-fun choose!23427 (LexerInterface!6112 List!41896 List!41894 List!41894 List!41895 List!41894) Unit!60236)

(assert (=> d!1166431 (= lt!1375033 (choose!23427 thiss!20629 rules!2768 suffix!1176 (_2!23660 lt!1374780) suffixTokens!72 suffixResult!91))))

(assert (=> d!1166431 (not (isEmpty!24906 rules!2768))))

(assert (=> d!1166431 (= (lemmaLexWithSmallerInputCannotProduceSameResults!123 thiss!20629 rules!2768 suffix!1176 (_2!23660 lt!1374780) suffixTokens!72 suffixResult!91) lt!1375033)))

(declare-fun bs!586336 () Bool)

(assert (= bs!586336 d!1166431))

(assert (=> bs!586336 m!4500419))

(declare-fun m!4500823 () Bool)

(assert (=> bs!586336 m!4500823))

(assert (=> bs!586336 m!4500401))

(assert (=> b!3933751 d!1166431))

(declare-fun d!1166439 () Bool)

(declare-fun lt!1375034 () Int)

(assert (=> d!1166439 (>= lt!1375034 0)))

(declare-fun e!2433911 () Int)

(assert (=> d!1166439 (= lt!1375034 e!2433911)))

(declare-fun c!683526 () Bool)

(assert (=> d!1166439 (= c!683526 (is-Nil!41770 (originalCharacters!7123 (_1!23660 (v!39270 lt!1374800)))))))

(assert (=> d!1166439 (= (size!31338 (originalCharacters!7123 (_1!23660 (v!39270 lt!1374800)))) lt!1375034)))

(declare-fun b!3934084 () Bool)

(assert (=> b!3934084 (= e!2433911 0)))

(declare-fun b!3934085 () Bool)

(assert (=> b!3934085 (= e!2433911 (+ 1 (size!31338 (t!325943 (originalCharacters!7123 (_1!23660 (v!39270 lt!1374800)))))))))

(assert (= (and d!1166439 c!683526) b!3934084))

(assert (= (and d!1166439 (not c!683526)) b!3934085))

(declare-fun m!4500825 () Bool)

(assert (=> b!3934085 m!4500825))

(assert (=> b!3933772 d!1166439))

(declare-fun d!1166441 () Bool)

(assert (=> d!1166441 (= (inv!55966 (tag!7383 (rule!9473 (h!47191 suffixTokens!72)))) (= (mod (str.len (value!206540 (tag!7383 (rule!9473 (h!47191 suffixTokens!72))))) 2) 0))))

(assert (=> b!3933773 d!1166441))

(declare-fun d!1166443 () Bool)

(declare-fun res!1591918 () Bool)

(declare-fun e!2433912 () Bool)

(assert (=> d!1166443 (=> (not res!1591918) (not e!2433912))))

(assert (=> d!1166443 (= res!1591918 (semiInverseModEq!2804 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))))))

(assert (=> d!1166443 (= (inv!55970 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) e!2433912)))

(declare-fun b!3934086 () Bool)

(assert (=> b!3934086 (= e!2433912 (equivClasses!2703 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))))))

(assert (= (and d!1166443 res!1591918) b!3934086))

(declare-fun m!4500827 () Bool)

(assert (=> d!1166443 m!4500827))

(declare-fun m!4500829 () Bool)

(assert (=> b!3934086 m!4500829))

(assert (=> b!3933773 d!1166443))

(declare-fun b!3934089 () Bool)

(declare-fun e!2433916 () Bool)

(declare-fun lt!1375039 () tuple2!41050)

(assert (=> b!3934089 (= e!2433916 (not (isEmpty!24905 (_1!23659 lt!1375039))))))

(declare-fun b!3934090 () Bool)

(declare-fun e!2433915 () tuple2!41050)

(assert (=> b!3934090 (= e!2433915 (tuple2!41051 Nil!41771 lt!1374797))))

(declare-fun d!1166445 () Bool)

(declare-fun e!2433917 () Bool)

(assert (=> d!1166445 e!2433917))

(declare-fun c!683527 () Bool)

(assert (=> d!1166445 (= c!683527 (> (size!31341 (_1!23659 lt!1375039)) 0))))

(assert (=> d!1166445 (= lt!1375039 e!2433915)))

(declare-fun c!683528 () Bool)

(declare-fun lt!1375037 () Option!8943)

(assert (=> d!1166445 (= c!683528 (is-Some!8942 lt!1375037))))

(assert (=> d!1166445 (= lt!1375037 (maxPrefix!3416 thiss!20629 rules!2768 lt!1374797))))

(assert (=> d!1166445 (= (lexList!1880 thiss!20629 rules!2768 lt!1374797) lt!1375039)))

(declare-fun b!3934091 () Bool)

(declare-fun lt!1375038 () tuple2!41050)

(assert (=> b!3934091 (= e!2433915 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375037)) (_1!23659 lt!1375038)) (_2!23659 lt!1375038)))))

(assert (=> b!3934091 (= lt!1375038 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375037))))))

(declare-fun b!3934092 () Bool)

(assert (=> b!3934092 (= e!2433917 e!2433916)))

(declare-fun res!1591921 () Bool)

(assert (=> b!3934092 (= res!1591921 (< (size!31338 (_2!23659 lt!1375039)) (size!31338 lt!1374797)))))

(assert (=> b!3934092 (=> (not res!1591921) (not e!2433916))))

(declare-fun b!3934093 () Bool)

(assert (=> b!3934093 (= e!2433917 (= (_2!23659 lt!1375039) lt!1374797))))

(assert (= (and d!1166445 c!683528) b!3934091))

(assert (= (and d!1166445 (not c!683528)) b!3934090))

(assert (= (and d!1166445 c!683527) b!3934092))

(assert (= (and d!1166445 (not c!683527)) b!3934093))

(assert (= (and b!3934092 res!1591921) b!3934089))

(declare-fun m!4500831 () Bool)

(assert (=> b!3934089 m!4500831))

(declare-fun m!4500833 () Bool)

(assert (=> d!1166445 m!4500833))

(declare-fun m!4500835 () Bool)

(assert (=> d!1166445 m!4500835))

(declare-fun m!4500837 () Bool)

(assert (=> b!3934091 m!4500837))

(declare-fun m!4500839 () Bool)

(assert (=> b!3934092 m!4500839))

(assert (=> b!3934092 m!4500779))

(assert (=> b!3933747 d!1166445))

(declare-fun b!3934119 () Bool)

(declare-fun e!2433935 () Bool)

(assert (=> b!3934119 (= e!2433935 (isPrefix!3618 (tail!6082 lt!1374813) (tail!6082 (_2!23660 (v!39270 lt!1374800)))))))

(declare-fun b!3934118 () Bool)

(declare-fun res!1591942 () Bool)

(assert (=> b!3934118 (=> (not res!1591942) (not e!2433935))))

(declare-fun head!8357 (List!41894) C!23042)

(assert (=> b!3934118 (= res!1591942 (= (head!8357 lt!1374813) (head!8357 (_2!23660 (v!39270 lt!1374800)))))))

(declare-fun b!3934120 () Bool)

(declare-fun e!2433934 () Bool)

(assert (=> b!3934120 (= e!2433934 (>= (size!31338 (_2!23660 (v!39270 lt!1374800))) (size!31338 lt!1374813)))))

(declare-fun d!1166447 () Bool)

(assert (=> d!1166447 e!2433934))

(declare-fun res!1591943 () Bool)

(assert (=> d!1166447 (=> res!1591943 e!2433934)))

(declare-fun lt!1375046 () Bool)

(assert (=> d!1166447 (= res!1591943 (not lt!1375046))))

(declare-fun e!2433936 () Bool)

(assert (=> d!1166447 (= lt!1375046 e!2433936)))

(declare-fun res!1591944 () Bool)

(assert (=> d!1166447 (=> res!1591944 e!2433936)))

(assert (=> d!1166447 (= res!1591944 (is-Nil!41770 lt!1374813))))

(assert (=> d!1166447 (= (isPrefix!3618 lt!1374813 (_2!23660 (v!39270 lt!1374800))) lt!1375046)))

(declare-fun b!3934117 () Bool)

(assert (=> b!3934117 (= e!2433936 e!2433935)))

(declare-fun res!1591941 () Bool)

(assert (=> b!3934117 (=> (not res!1591941) (not e!2433935))))

(assert (=> b!3934117 (= res!1591941 (not (is-Nil!41770 (_2!23660 (v!39270 lt!1374800)))))))

(assert (= (and d!1166447 (not res!1591944)) b!3934117))

(assert (= (and b!3934117 res!1591941) b!3934118))

(assert (= (and b!3934118 res!1591942) b!3934119))

(assert (= (and d!1166447 (not res!1591943)) b!3934120))

(declare-fun m!4500859 () Bool)

(assert (=> b!3934119 m!4500859))

(declare-fun m!4500863 () Bool)

(assert (=> b!3934119 m!4500863))

(assert (=> b!3934119 m!4500859))

(assert (=> b!3934119 m!4500863))

(declare-fun m!4500867 () Bool)

(assert (=> b!3934119 m!4500867))

(declare-fun m!4500869 () Bool)

(assert (=> b!3934118 m!4500869))

(declare-fun m!4500871 () Bool)

(assert (=> b!3934118 m!4500871))

(assert (=> b!3934120 m!4500317))

(assert (=> b!3934120 m!4500653))

(assert (=> b!3933768 d!1166447))

(declare-fun d!1166453 () Bool)

(declare-fun lt!1375047 () Int)

(assert (=> d!1166453 (>= lt!1375047 0)))

(declare-fun e!2433937 () Int)

(assert (=> d!1166453 (= lt!1375047 e!2433937)))

(declare-fun c!683531 () Bool)

(assert (=> d!1166453 (= c!683531 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166453 (= (size!31338 lt!1374817) lt!1375047)))

(declare-fun b!3934121 () Bool)

(assert (=> b!3934121 (= e!2433937 0)))

(declare-fun b!3934122 () Bool)

(assert (=> b!3934122 (= e!2433937 (+ 1 (size!31338 (t!325943 lt!1374817))))))

(assert (= (and d!1166453 c!683531) b!3934121))

(assert (= (and d!1166453 (not c!683531)) b!3934122))

(declare-fun m!4500873 () Bool)

(assert (=> b!3934122 m!4500873))

(assert (=> b!3933769 d!1166453))

(declare-fun d!1166455 () Bool)

(declare-fun fromListB!2213 (List!41894) BalanceConc!25062)

(assert (=> d!1166455 (= (seqFromList!4790 lt!1374817) (fromListB!2213 lt!1374817))))

(declare-fun bs!586337 () Bool)

(assert (= bs!586337 d!1166455))

(declare-fun m!4500875 () Bool)

(assert (=> bs!586337 m!4500875))

(assert (=> b!3933769 d!1166455))

(declare-fun d!1166457 () Bool)

(assert (=> d!1166457 (ruleValid!2471 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))

(declare-fun lt!1375050 () Unit!60236)

(declare-fun choose!23430 (LexerInterface!6112 Rule!12846 List!41896) Unit!60236)

(assert (=> d!1166457 (= lt!1375050 (choose!23430 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))) rules!2768))))

(declare-fun contains!8369 (List!41896 Rule!12846) Bool)

(assert (=> d!1166457 (contains!8369 rules!2768 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))

(assert (=> d!1166457 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1551 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))) rules!2768) lt!1375050)))

(declare-fun bs!586338 () Bool)

(assert (= bs!586338 d!1166457))

(assert (=> bs!586338 m!4500471))

(declare-fun m!4500881 () Bool)

(assert (=> bs!586338 m!4500881))

(declare-fun m!4500883 () Bool)

(assert (=> bs!586338 m!4500883))

(assert (=> b!3933769 d!1166457))

(declare-fun d!1166461 () Bool)

(assert (=> d!1166461 (= (_2!23660 (v!39270 lt!1374800)) lt!1374785)))

(declare-fun lt!1375055 () Unit!60236)

(declare-fun choose!23431 (List!41894 List!41894 List!41894 List!41894 List!41894) Unit!60236)

(assert (=> d!1166461 (= lt!1375055 (choose!23431 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 lt!1374785 lt!1374783))))

(assert (=> d!1166461 (isPrefix!3618 lt!1374817 lt!1374783)))

(assert (=> d!1166461 (= (lemmaSamePrefixThenSameSuffix!1839 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 lt!1374785 lt!1374783) lt!1375055)))

(declare-fun bs!586339 () Bool)

(assert (= bs!586339 d!1166461))

(declare-fun m!4500885 () Bool)

(assert (=> bs!586339 m!4500885))

(declare-fun m!4500887 () Bool)

(assert (=> bs!586339 m!4500887))

(assert (=> b!3933769 d!1166461))

(declare-fun d!1166463 () Bool)

(declare-fun list!15522 (Conc!12734) List!41894)

(assert (=> d!1166463 (= (list!15520 (charsOf!4347 (_1!23660 (v!39270 lt!1374800)))) (list!15522 (c!683465 (charsOf!4347 (_1!23660 (v!39270 lt!1374800))))))))

(declare-fun bs!586340 () Bool)

(assert (= bs!586340 d!1166463))

(declare-fun m!4500893 () Bool)

(assert (=> bs!586340 m!4500893))

(assert (=> b!3933769 d!1166463))

(declare-fun d!1166465 () Bool)

(declare-fun lt!1375057 () List!41894)

(assert (=> d!1166465 (= (++!10804 lt!1374817 lt!1375057) lt!1374783)))

(declare-fun e!2433942 () List!41894)

(assert (=> d!1166465 (= lt!1375057 e!2433942)))

(declare-fun c!683532 () Bool)

(assert (=> d!1166465 (= c!683532 (is-Cons!41770 lt!1374817))))

(assert (=> d!1166465 (>= (size!31338 lt!1374783) (size!31338 lt!1374817))))

(assert (=> d!1166465 (= (getSuffix!2073 lt!1374783 lt!1374817) lt!1375057)))

(declare-fun b!3934126 () Bool)

(assert (=> b!3934126 (= e!2433942 (getSuffix!2073 (tail!6082 lt!1374783) (t!325943 lt!1374817)))))

(declare-fun b!3934127 () Bool)

(assert (=> b!3934127 (= e!2433942 lt!1374783)))

(assert (= (and d!1166465 c!683532) b!3934126))

(assert (= (and d!1166465 (not c!683532)) b!3934127))

(declare-fun m!4500897 () Bool)

(assert (=> d!1166465 m!4500897))

(assert (=> d!1166465 m!4500371))

(assert (=> d!1166465 m!4500447))

(declare-fun m!4500901 () Bool)

(assert (=> b!3934126 m!4500901))

(assert (=> b!3934126 m!4500901))

(declare-fun m!4500903 () Bool)

(assert (=> b!3934126 m!4500903))

(assert (=> b!3933769 d!1166465))

(declare-fun b!3934128 () Bool)

(declare-fun e!2433944 () Bool)

(declare-fun lt!1375060 () tuple2!41050)

(assert (=> b!3934128 (= e!2433944 (not (isEmpty!24905 (_1!23659 lt!1375060))))))

(declare-fun b!3934129 () Bool)

(declare-fun e!2433943 () tuple2!41050)

(assert (=> b!3934129 (= e!2433943 (tuple2!41051 Nil!41771 (_2!23660 (v!39270 lt!1374800))))))

(declare-fun d!1166469 () Bool)

(declare-fun e!2433945 () Bool)

(assert (=> d!1166469 e!2433945))

(declare-fun c!683533 () Bool)

(assert (=> d!1166469 (= c!683533 (> (size!31341 (_1!23659 lt!1375060)) 0))))

(assert (=> d!1166469 (= lt!1375060 e!2433943)))

(declare-fun c!683534 () Bool)

(declare-fun lt!1375058 () Option!8943)

(assert (=> d!1166469 (= c!683534 (is-Some!8942 lt!1375058))))

(assert (=> d!1166469 (= lt!1375058 (maxPrefix!3416 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1374800))))))

(assert (=> d!1166469 (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1374800))) lt!1375060)))

(declare-fun b!3934130 () Bool)

(declare-fun lt!1375059 () tuple2!41050)

(assert (=> b!3934130 (= e!2433943 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375058)) (_1!23659 lt!1375059)) (_2!23659 lt!1375059)))))

(assert (=> b!3934130 (= lt!1375059 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375058))))))

(declare-fun b!3934131 () Bool)

(assert (=> b!3934131 (= e!2433945 e!2433944)))

(declare-fun res!1591945 () Bool)

(assert (=> b!3934131 (= res!1591945 (< (size!31338 (_2!23659 lt!1375060)) (size!31338 (_2!23660 (v!39270 lt!1374800)))))))

(assert (=> b!3934131 (=> (not res!1591945) (not e!2433944))))

(declare-fun b!3934132 () Bool)

(assert (=> b!3934132 (= e!2433945 (= (_2!23659 lt!1375060) (_2!23660 (v!39270 lt!1374800))))))

(assert (= (and d!1166469 c!683534) b!3934130))

(assert (= (and d!1166469 (not c!683534)) b!3934129))

(assert (= (and d!1166469 c!683533) b!3934131))

(assert (= (and d!1166469 (not c!683533)) b!3934132))

(assert (= (and b!3934131 res!1591945) b!3934128))

(declare-fun m!4500905 () Bool)

(assert (=> b!3934128 m!4500905))

(declare-fun m!4500907 () Bool)

(assert (=> d!1166469 m!4500907))

(declare-fun m!4500909 () Bool)

(assert (=> d!1166469 m!4500909))

(declare-fun m!4500911 () Bool)

(assert (=> b!3934130 m!4500911))

(declare-fun m!4500913 () Bool)

(assert (=> b!3934131 m!4500913))

(assert (=> b!3934131 m!4500317))

(assert (=> b!3933769 d!1166469))

(declare-fun d!1166471 () Bool)

(declare-fun dynLambda!17897 (Int BalanceConc!25062) TokenValue!6753)

(assert (=> d!1166471 (= (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (seqFromList!4790 lt!1374817)) (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 lt!1374817)))))

(declare-fun b_lambda!115073 () Bool)

(assert (=> (not b_lambda!115073) (not d!1166471)))

(declare-fun t!325969 () Bool)

(declare-fun tb!235343 () Bool)

(assert (=> (and b!3933775 (= (toValue!8979 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!325969) tb!235343))

(declare-fun result!285144 () Bool)

(assert (=> tb!235343 (= result!285144 (inv!21 (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 lt!1374817))))))

(declare-fun m!4500915 () Bool)

(assert (=> tb!235343 m!4500915))

(assert (=> d!1166471 t!325969))

(declare-fun b_and!300317 () Bool)

(assert (= b_and!300275 (and (=> t!325969 result!285144) b_and!300317)))

(declare-fun tb!235345 () Bool)

(declare-fun t!325971 () Bool)

(assert (=> (and b!3933781 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!325971) tb!235345))

(declare-fun result!285148 () Bool)

(assert (= result!285148 result!285144))

(assert (=> d!1166471 t!325971))

(declare-fun b_and!300319 () Bool)

(assert (= b_and!300279 (and (=> t!325971 result!285148) b_and!300319)))

(declare-fun t!325973 () Bool)

(declare-fun tb!235347 () Bool)

(assert (=> (and b!3933750 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!325973) tb!235347))

(declare-fun result!285150 () Bool)

(assert (= result!285150 result!285144))

(assert (=> d!1166471 t!325973))

(declare-fun b_and!300321 () Bool)

(assert (= b_and!300283 (and (=> t!325973 result!285150) b_and!300321)))

(assert (=> d!1166471 m!4500459))

(declare-fun m!4500923 () Bool)

(assert (=> d!1166471 m!4500923))

(assert (=> b!3933769 d!1166471))

(declare-fun d!1166477 () Bool)

(declare-fun res!1591950 () Bool)

(declare-fun e!2433952 () Bool)

(assert (=> d!1166477 (=> (not res!1591950) (not e!2433952))))

(declare-fun validRegex!5204 (Regex!11428) Bool)

(assert (=> d!1166477 (= res!1591950 (validRegex!5204 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(assert (=> d!1166477 (= (ruleValid!2471 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) e!2433952)))

(declare-fun b!3934141 () Bool)

(declare-fun res!1591951 () Bool)

(assert (=> b!3934141 (=> (not res!1591951) (not e!2433952))))

(declare-fun nullable!4005 (Regex!11428) Bool)

(assert (=> b!3934141 (= res!1591951 (not (nullable!4005 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))))

(declare-fun b!3934142 () Bool)

(assert (=> b!3934142 (= e!2433952 (not (= (tag!7383 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (String!47486 ""))))))

(assert (= (and d!1166477 res!1591950) b!3934141))

(assert (= (and b!3934141 res!1591951) b!3934142))

(declare-fun m!4500925 () Bool)

(assert (=> d!1166477 m!4500925))

(declare-fun m!4500927 () Bool)

(assert (=> b!3934141 m!4500927))

(assert (=> b!3933769 d!1166477))

(declare-fun b!3934145 () Bool)

(declare-fun e!2433954 () Bool)

(assert (=> b!3934145 (= e!2433954 (isPrefix!3618 (tail!6082 lt!1374817) (tail!6082 lt!1374790)))))

(declare-fun b!3934144 () Bool)

(declare-fun res!1591953 () Bool)

(assert (=> b!3934144 (=> (not res!1591953) (not e!2433954))))

(assert (=> b!3934144 (= res!1591953 (= (head!8357 lt!1374817) (head!8357 lt!1374790)))))

(declare-fun b!3934146 () Bool)

(declare-fun e!2433953 () Bool)

(assert (=> b!3934146 (= e!2433953 (>= (size!31338 lt!1374790) (size!31338 lt!1374817)))))

(declare-fun d!1166479 () Bool)

(assert (=> d!1166479 e!2433953))

(declare-fun res!1591954 () Bool)

(assert (=> d!1166479 (=> res!1591954 e!2433953)))

(declare-fun lt!1375062 () Bool)

(assert (=> d!1166479 (= res!1591954 (not lt!1375062))))

(declare-fun e!2433955 () Bool)

(assert (=> d!1166479 (= lt!1375062 e!2433955)))

(declare-fun res!1591955 () Bool)

(assert (=> d!1166479 (=> res!1591955 e!2433955)))

(assert (=> d!1166479 (= res!1591955 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166479 (= (isPrefix!3618 lt!1374817 lt!1374790) lt!1375062)))

(declare-fun b!3934143 () Bool)

(assert (=> b!3934143 (= e!2433955 e!2433954)))

(declare-fun res!1591952 () Bool)

(assert (=> b!3934143 (=> (not res!1591952) (not e!2433954))))

(assert (=> b!3934143 (= res!1591952 (not (is-Nil!41770 lt!1374790)))))

(assert (= (and d!1166479 (not res!1591955)) b!3934143))

(assert (= (and b!3934143 res!1591952) b!3934144))

(assert (= (and b!3934144 res!1591953) b!3934145))

(assert (= (and d!1166479 (not res!1591954)) b!3934146))

(declare-fun m!4500929 () Bool)

(assert (=> b!3934145 m!4500929))

(declare-fun m!4500931 () Bool)

(assert (=> b!3934145 m!4500931))

(assert (=> b!3934145 m!4500929))

(assert (=> b!3934145 m!4500931))

(declare-fun m!4500933 () Bool)

(assert (=> b!3934145 m!4500933))

(declare-fun m!4500935 () Bool)

(assert (=> b!3934144 m!4500935))

(declare-fun m!4500937 () Bool)

(assert (=> b!3934144 m!4500937))

(declare-fun m!4500939 () Bool)

(assert (=> b!3934146 m!4500939))

(assert (=> b!3934146 m!4500447))

(assert (=> b!3933769 d!1166479))

(declare-fun d!1166481 () Bool)

(assert (=> d!1166481 (isPrefix!3618 lt!1374817 (++!10804 lt!1374817 (_2!23660 (v!39270 lt!1374800))))))

(declare-fun lt!1375066 () Unit!60236)

(declare-fun choose!23433 (List!41894 List!41894) Unit!60236)

(assert (=> d!1166481 (= lt!1375066 (choose!23433 lt!1374817 (_2!23660 (v!39270 lt!1374800))))))

(assert (=> d!1166481 (= (lemmaConcatTwoListThenFirstIsPrefix!2481 lt!1374817 (_2!23660 (v!39270 lt!1374800))) lt!1375066)))

(declare-fun bs!586343 () Bool)

(assert (= bs!586343 d!1166481))

(assert (=> bs!586343 m!4500453))

(assert (=> bs!586343 m!4500453))

(declare-fun m!4500951 () Bool)

(assert (=> bs!586343 m!4500951))

(declare-fun m!4500953 () Bool)

(assert (=> bs!586343 m!4500953))

(assert (=> b!3933769 d!1166481))

(declare-fun d!1166487 () Bool)

(declare-fun lt!1375069 () BalanceConc!25062)

(assert (=> d!1166487 (= (list!15520 lt!1375069) (originalCharacters!7123 (_1!23660 (v!39270 lt!1374800))))))

(declare-fun dynLambda!17898 (Int TokenValue!6753) BalanceConc!25062)

(assert (=> d!1166487 (= lt!1375069 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800)))))))

(assert (=> d!1166487 (= (charsOf!4347 (_1!23660 (v!39270 lt!1374800))) lt!1375069)))

(declare-fun b_lambda!115075 () Bool)

(assert (=> (not b_lambda!115075) (not d!1166487)))

(declare-fun t!325975 () Bool)

(declare-fun tb!235349 () Bool)

(assert (=> (and b!3933775 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!325975) tb!235349))

(declare-fun b!3934155 () Bool)

(declare-fun e!2433960 () Bool)

(declare-fun tp!1197383 () Bool)

(declare-fun inv!55975 (Conc!12734) Bool)

(assert (=> b!3934155 (= e!2433960 (and (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800)))))) tp!1197383))))

(declare-fun result!285152 () Bool)

(declare-fun inv!55976 (BalanceConc!25062) Bool)

(assert (=> tb!235349 (= result!285152 (and (inv!55976 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800))))) e!2433960))))

(assert (= tb!235349 b!3934155))

(declare-fun m!4500955 () Bool)

(assert (=> b!3934155 m!4500955))

(declare-fun m!4500957 () Bool)

(assert (=> tb!235349 m!4500957))

(assert (=> d!1166487 t!325975))

(declare-fun b_and!300323 () Bool)

(assert (= b_and!300277 (and (=> t!325975 result!285152) b_and!300323)))

(declare-fun tb!235351 () Bool)

(declare-fun t!325977 () Bool)

(assert (=> (and b!3933781 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!325977) tb!235351))

(declare-fun result!285156 () Bool)

(assert (= result!285156 result!285152))

(assert (=> d!1166487 t!325977))

(declare-fun b_and!300325 () Bool)

(assert (= b_and!300281 (and (=> t!325977 result!285156) b_and!300325)))

(declare-fun t!325979 () Bool)

(declare-fun tb!235353 () Bool)

(assert (=> (and b!3933750 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!325979) tb!235353))

(declare-fun result!285158 () Bool)

(assert (= result!285158 result!285152))

(assert (=> d!1166487 t!325979))

(declare-fun b_and!300327 () Bool)

(assert (= b_and!300285 (and (=> t!325979 result!285158) b_and!300327)))

(declare-fun m!4500959 () Bool)

(assert (=> d!1166487 m!4500959))

(declare-fun m!4500961 () Bool)

(assert (=> d!1166487 m!4500961))

(assert (=> b!3933769 d!1166487))

(declare-fun b!3934156 () Bool)

(declare-fun e!2433962 () List!41894)

(assert (=> b!3934156 (= e!2433962 (_2!23660 (v!39270 lt!1374800)))))

(declare-fun b!3934157 () Bool)

(assert (=> b!3934157 (= e!2433962 (Cons!41770 (h!47190 lt!1374817) (++!10804 (t!325943 lt!1374817) (_2!23660 (v!39270 lt!1374800)))))))

(declare-fun b!3934158 () Bool)

(declare-fun res!1591959 () Bool)

(declare-fun e!2433961 () Bool)

(assert (=> b!3934158 (=> (not res!1591959) (not e!2433961))))

(declare-fun lt!1375073 () List!41894)

(assert (=> b!3934158 (= res!1591959 (= (size!31338 lt!1375073) (+ (size!31338 lt!1374817) (size!31338 (_2!23660 (v!39270 lt!1374800))))))))

(declare-fun d!1166489 () Bool)

(assert (=> d!1166489 e!2433961))

(declare-fun res!1591958 () Bool)

(assert (=> d!1166489 (=> (not res!1591958) (not e!2433961))))

(assert (=> d!1166489 (= res!1591958 (= (content!6295 lt!1375073) (set.union (content!6295 lt!1374817) (content!6295 (_2!23660 (v!39270 lt!1374800))))))))

(assert (=> d!1166489 (= lt!1375073 e!2433962)))

(declare-fun c!683537 () Bool)

(assert (=> d!1166489 (= c!683537 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166489 (= (++!10804 lt!1374817 (_2!23660 (v!39270 lt!1374800))) lt!1375073)))

(declare-fun b!3934159 () Bool)

(assert (=> b!3934159 (= e!2433961 (or (not (= (_2!23660 (v!39270 lt!1374800)) Nil!41770)) (= lt!1375073 lt!1374817)))))

(assert (= (and d!1166489 c!683537) b!3934156))

(assert (= (and d!1166489 (not c!683537)) b!3934157))

(assert (= (and d!1166489 res!1591958) b!3934158))

(assert (= (and b!3934158 res!1591959) b!3934159))

(declare-fun m!4500967 () Bool)

(assert (=> b!3934157 m!4500967))

(declare-fun m!4500969 () Bool)

(assert (=> b!3934158 m!4500969))

(assert (=> b!3934158 m!4500447))

(assert (=> b!3934158 m!4500317))

(declare-fun m!4500971 () Bool)

(assert (=> d!1166489 m!4500971))

(assert (=> d!1166489 m!4500657))

(declare-fun m!4500973 () Bool)

(assert (=> d!1166489 m!4500973))

(assert (=> b!3933769 d!1166489))

(declare-fun d!1166493 () Bool)

(assert (=> d!1166493 (= (size!31337 (_1!23660 (v!39270 lt!1374800))) (size!31338 (originalCharacters!7123 (_1!23660 (v!39270 lt!1374800)))))))

(declare-fun Unit!60260 () Unit!60236)

(assert (=> d!1166493 (= (lemmaCharactersSize!1180 (_1!23660 (v!39270 lt!1374800))) Unit!60260)))

(declare-fun bs!586345 () Bool)

(assert (= bs!586345 d!1166493))

(assert (=> bs!586345 m!4500417))

(assert (=> b!3933769 d!1166493))

(declare-fun d!1166495 () Bool)

(assert (=> d!1166495 (not (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 lt!1374780)) (tuple2!41051 (++!10803 lt!1374793 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1375086 () Unit!60236)

(declare-fun choose!23435 (LexerInterface!6112 List!41896 List!41894 List!41894 List!41895 List!41894 List!41895) Unit!60236)

(assert (=> d!1166495 (= lt!1375086 (choose!23435 thiss!20629 rules!2768 suffix!1176 (_2!23660 lt!1374780) suffixTokens!72 suffixResult!91 lt!1374793))))

(assert (=> d!1166495 (not (isEmpty!24906 rules!2768))))

(assert (=> d!1166495 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!123 thiss!20629 rules!2768 suffix!1176 (_2!23660 lt!1374780) suffixTokens!72 suffixResult!91 lt!1374793) lt!1375086)))

(declare-fun bs!586350 () Bool)

(assert (= bs!586350 d!1166495))

(assert (=> bs!586350 m!4500419))

(assert (=> bs!586350 m!4500437))

(declare-fun m!4501015 () Bool)

(assert (=> bs!586350 m!4501015))

(assert (=> bs!586350 m!4500401))

(assert (=> b!3933770 d!1166495))

(declare-fun d!1166511 () Bool)

(declare-fun e!2433971 () Bool)

(assert (=> d!1166511 e!2433971))

(declare-fun res!1591967 () Bool)

(assert (=> d!1166511 (=> (not res!1591967) (not e!2433971))))

(declare-fun lt!1375087 () List!41895)

(assert (=> d!1166511 (= res!1591967 (= (content!6296 lt!1375087) (set.union (content!6296 lt!1374793) (content!6296 suffixTokens!72))))))

(declare-fun e!2433972 () List!41895)

(assert (=> d!1166511 (= lt!1375087 e!2433972)))

(declare-fun c!683541 () Bool)

(assert (=> d!1166511 (= c!683541 (is-Nil!41771 lt!1374793))))

(assert (=> d!1166511 (= (++!10803 lt!1374793 suffixTokens!72) lt!1375087)))

(declare-fun b!3934176 () Bool)

(assert (=> b!3934176 (= e!2433971 (or (not (= suffixTokens!72 Nil!41771)) (= lt!1375087 lt!1374793)))))

(declare-fun b!3934175 () Bool)

(declare-fun res!1591968 () Bool)

(assert (=> b!3934175 (=> (not res!1591968) (not e!2433971))))

(assert (=> b!3934175 (= res!1591968 (= (size!31341 lt!1375087) (+ (size!31341 lt!1374793) (size!31341 suffixTokens!72))))))

(declare-fun b!3934173 () Bool)

(assert (=> b!3934173 (= e!2433972 suffixTokens!72)))

(declare-fun b!3934174 () Bool)

(assert (=> b!3934174 (= e!2433972 (Cons!41771 (h!47191 lt!1374793) (++!10803 (t!325944 lt!1374793) suffixTokens!72)))))

(assert (= (and d!1166511 c!683541) b!3934173))

(assert (= (and d!1166511 (not c!683541)) b!3934174))

(assert (= (and d!1166511 res!1591967) b!3934175))

(assert (= (and b!3934175 res!1591968) b!3934176))

(declare-fun m!4501017 () Bool)

(assert (=> d!1166511 m!4501017))

(declare-fun m!4501019 () Bool)

(assert (=> d!1166511 m!4501019))

(assert (=> d!1166511 m!4500721))

(declare-fun m!4501021 () Bool)

(assert (=> b!3934175 m!4501021))

(declare-fun m!4501023 () Bool)

(assert (=> b!3934175 m!4501023))

(assert (=> b!3934175 m!4500727))

(declare-fun m!4501025 () Bool)

(assert (=> b!3934174 m!4501025))

(assert (=> b!3933770 d!1166511))

(declare-fun d!1166513 () Bool)

(declare-fun e!2433973 () Bool)

(assert (=> d!1166513 e!2433973))

(declare-fun res!1591969 () Bool)

(assert (=> d!1166513 (=> (not res!1591969) (not e!2433973))))

(declare-fun lt!1375088 () List!41895)

(assert (=> d!1166513 (= res!1591969 (= (content!6296 lt!1375088) (set.union (content!6296 lt!1374792) (content!6296 (_1!23659 lt!1374768)))))))

(declare-fun e!2433974 () List!41895)

(assert (=> d!1166513 (= lt!1375088 e!2433974)))

(declare-fun c!683542 () Bool)

(assert (=> d!1166513 (= c!683542 (is-Nil!41771 lt!1374792))))

(assert (=> d!1166513 (= (++!10803 lt!1374792 (_1!23659 lt!1374768)) lt!1375088)))

(declare-fun b!3934180 () Bool)

(assert (=> b!3934180 (= e!2433973 (or (not (= (_1!23659 lt!1374768) Nil!41771)) (= lt!1375088 lt!1374792)))))

(declare-fun b!3934179 () Bool)

(declare-fun res!1591970 () Bool)

(assert (=> b!3934179 (=> (not res!1591970) (not e!2433973))))

(assert (=> b!3934179 (= res!1591970 (= (size!31341 lt!1375088) (+ (size!31341 lt!1374792) (size!31341 (_1!23659 lt!1374768)))))))

(declare-fun b!3934177 () Bool)

(assert (=> b!3934177 (= e!2433974 (_1!23659 lt!1374768))))

(declare-fun b!3934178 () Bool)

(assert (=> b!3934178 (= e!2433974 (Cons!41771 (h!47191 lt!1374792) (++!10803 (t!325944 lt!1374792) (_1!23659 lt!1374768))))))

(assert (= (and d!1166513 c!683542) b!3934177))

(assert (= (and d!1166513 (not c!683542)) b!3934178))

(assert (= (and d!1166513 res!1591969) b!3934179))

(assert (= (and b!3934179 res!1591970) b!3934180))

(declare-fun m!4501027 () Bool)

(assert (=> d!1166513 m!4501027))

(assert (=> d!1166513 m!4500705))

(declare-fun m!4501029 () Bool)

(assert (=> d!1166513 m!4501029))

(declare-fun m!4501031 () Bool)

(assert (=> b!3934179 m!4501031))

(assert (=> b!3934179 m!4500711))

(declare-fun m!4501033 () Bool)

(assert (=> b!3934179 m!4501033))

(declare-fun m!4501035 () Bool)

(assert (=> b!3934178 m!4501035))

(assert (=> b!3933744 d!1166513))

(declare-fun b!3934191 () Bool)

(declare-fun e!2433983 () Bool)

(declare-fun e!2433981 () Bool)

(assert (=> b!3934191 (= e!2433983 e!2433981)))

(declare-fun c!683547 () Bool)

(assert (=> b!3934191 (= c!683547 (is-IntegerValue!20260 (value!206541 (h!47191 suffixTokens!72))))))

(declare-fun b!3934192 () Bool)

(declare-fun inv!17 (TokenValue!6753) Bool)

(assert (=> b!3934192 (= e!2433981 (inv!17 (value!206541 (h!47191 suffixTokens!72))))))

(declare-fun b!3934193 () Bool)

(declare-fun inv!16 (TokenValue!6753) Bool)

(assert (=> b!3934193 (= e!2433983 (inv!16 (value!206541 (h!47191 suffixTokens!72))))))

(declare-fun b!3934194 () Bool)

(declare-fun res!1591973 () Bool)

(declare-fun e!2433982 () Bool)

(assert (=> b!3934194 (=> res!1591973 e!2433982)))

(assert (=> b!3934194 (= res!1591973 (not (is-IntegerValue!20261 (value!206541 (h!47191 suffixTokens!72)))))))

(assert (=> b!3934194 (= e!2433981 e!2433982)))

(declare-fun d!1166515 () Bool)

(declare-fun c!683548 () Bool)

(assert (=> d!1166515 (= c!683548 (is-IntegerValue!20259 (value!206541 (h!47191 suffixTokens!72))))))

(assert (=> d!1166515 (= (inv!21 (value!206541 (h!47191 suffixTokens!72))) e!2433983)))

(declare-fun b!3934195 () Bool)

(declare-fun inv!15 (TokenValue!6753) Bool)

(assert (=> b!3934195 (= e!2433982 (inv!15 (value!206541 (h!47191 suffixTokens!72))))))

(assert (= (and d!1166515 c!683548) b!3934193))

(assert (= (and d!1166515 (not c!683548)) b!3934191))

(assert (= (and b!3934191 c!683547) b!3934192))

(assert (= (and b!3934191 (not c!683547)) b!3934194))

(assert (= (and b!3934194 (not res!1591973)) b!3934195))

(declare-fun m!4501037 () Bool)

(assert (=> b!3934192 m!4501037))

(declare-fun m!4501039 () Bool)

(assert (=> b!3934193 m!4501039))

(declare-fun m!4501041 () Bool)

(assert (=> b!3934195 m!4501041))

(assert (=> b!3933766 d!1166515))

(declare-fun d!1166517 () Bool)

(declare-fun res!1591978 () Bool)

(declare-fun e!2433986 () Bool)

(assert (=> d!1166517 (=> (not res!1591978) (not e!2433986))))

(assert (=> d!1166517 (= res!1591978 (not (isEmpty!24907 (originalCharacters!7123 (h!47191 suffixTokens!72)))))))

(assert (=> d!1166517 (= (inv!55969 (h!47191 suffixTokens!72)) e!2433986)))

(declare-fun b!3934200 () Bool)

(declare-fun res!1591979 () Bool)

(assert (=> b!3934200 (=> (not res!1591979) (not e!2433986))))

(assert (=> b!3934200 (= res!1591979 (= (originalCharacters!7123 (h!47191 suffixTokens!72)) (list!15520 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72))))))))

(declare-fun b!3934201 () Bool)

(assert (=> b!3934201 (= e!2433986 (= (size!31337 (h!47191 suffixTokens!72)) (size!31338 (originalCharacters!7123 (h!47191 suffixTokens!72)))))))

(assert (= (and d!1166517 res!1591978) b!3934200))

(assert (= (and b!3934200 res!1591979) b!3934201))

(declare-fun b_lambda!115077 () Bool)

(assert (=> (not b_lambda!115077) (not b!3934200)))

(declare-fun t!325981 () Bool)

(declare-fun tb!235355 () Bool)

(assert (=> (and b!3933775 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) t!325981) tb!235355))

(declare-fun b!3934202 () Bool)

(declare-fun e!2433987 () Bool)

(declare-fun tp!1197384 () Bool)

(assert (=> b!3934202 (= e!2433987 (and (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72))))) tp!1197384))))

(declare-fun result!285160 () Bool)

(assert (=> tb!235355 (= result!285160 (and (inv!55976 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72)))) e!2433987))))

(assert (= tb!235355 b!3934202))

(declare-fun m!4501043 () Bool)

(assert (=> b!3934202 m!4501043))

(declare-fun m!4501045 () Bool)

(assert (=> tb!235355 m!4501045))

(assert (=> b!3934200 t!325981))

(declare-fun b_and!300329 () Bool)

(assert (= b_and!300323 (and (=> t!325981 result!285160) b_and!300329)))

(declare-fun t!325983 () Bool)

(declare-fun tb!235357 () Bool)

(assert (=> (and b!3933781 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) t!325983) tb!235357))

(declare-fun result!285162 () Bool)

(assert (= result!285162 result!285160))

(assert (=> b!3934200 t!325983))

(declare-fun b_and!300331 () Bool)

(assert (= b_and!300325 (and (=> t!325983 result!285162) b_and!300331)))

(declare-fun tb!235359 () Bool)

(declare-fun t!325985 () Bool)

(assert (=> (and b!3933750 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) t!325985) tb!235359))

(declare-fun result!285164 () Bool)

(assert (= result!285164 result!285160))

(assert (=> b!3934200 t!325985))

(declare-fun b_and!300333 () Bool)

(assert (= b_and!300327 (and (=> t!325985 result!285164) b_and!300333)))

(declare-fun m!4501047 () Bool)

(assert (=> d!1166517 m!4501047))

(declare-fun m!4501049 () Bool)

(assert (=> b!3934200 m!4501049))

(assert (=> b!3934200 m!4501049))

(declare-fun m!4501051 () Bool)

(assert (=> b!3934200 m!4501051))

(declare-fun m!4501053 () Bool)

(assert (=> b!3934201 m!4501053))

(assert (=> b!3933767 d!1166517))

(declare-fun d!1166519 () Bool)

(declare-fun e!2433988 () Bool)

(assert (=> d!1166519 e!2433988))

(declare-fun res!1591980 () Bool)

(assert (=> d!1166519 (=> (not res!1591980) (not e!2433988))))

(declare-fun lt!1375089 () List!41895)

(assert (=> d!1166519 (= res!1591980 (= (content!6296 lt!1375089) (set.union (content!6296 lt!1374778) (content!6296 suffixTokens!72))))))

(declare-fun e!2433989 () List!41895)

(assert (=> d!1166519 (= lt!1375089 e!2433989)))

(declare-fun c!683549 () Bool)

(assert (=> d!1166519 (= c!683549 (is-Nil!41771 lt!1374778))))

(assert (=> d!1166519 (= (++!10803 lt!1374778 suffixTokens!72) lt!1375089)))

(declare-fun b!3934206 () Bool)

(assert (=> b!3934206 (= e!2433988 (or (not (= suffixTokens!72 Nil!41771)) (= lt!1375089 lt!1374778)))))

(declare-fun b!3934205 () Bool)

(declare-fun res!1591981 () Bool)

(assert (=> b!3934205 (=> (not res!1591981) (not e!2433988))))

(assert (=> b!3934205 (= res!1591981 (= (size!31341 lt!1375089) (+ (size!31341 lt!1374778) (size!31341 suffixTokens!72))))))

(declare-fun b!3934203 () Bool)

(assert (=> b!3934203 (= e!2433989 suffixTokens!72)))

(declare-fun b!3934204 () Bool)

(assert (=> b!3934204 (= e!2433989 (Cons!41771 (h!47191 lt!1374778) (++!10803 (t!325944 lt!1374778) suffixTokens!72)))))

(assert (= (and d!1166519 c!683549) b!3934203))

(assert (= (and d!1166519 (not c!683549)) b!3934204))

(assert (= (and d!1166519 res!1591980) b!3934205))

(assert (= (and b!3934205 res!1591981) b!3934206))

(declare-fun m!4501055 () Bool)

(assert (=> d!1166519 m!4501055))

(assert (=> d!1166519 m!4500733))

(assert (=> d!1166519 m!4500721))

(declare-fun m!4501057 () Bool)

(assert (=> b!3934205 m!4501057))

(assert (=> b!3934205 m!4500737))

(assert (=> b!3934205 m!4500727))

(declare-fun m!4501059 () Bool)

(assert (=> b!3934204 m!4501059))

(assert (=> b!3933746 d!1166519))

(declare-fun d!1166521 () Bool)

(assert (=> d!1166521 (= (tail!6080 prefixTokens!80) (t!325944 prefixTokens!80))))

(assert (=> b!3933746 d!1166521))

(declare-fun b!3934209 () Bool)

(declare-fun e!2433991 () Bool)

(assert (=> b!3934209 (= e!2433991 (isPrefix!3618 (tail!6082 lt!1374813) (tail!6082 lt!1374797)))))

(declare-fun b!3934208 () Bool)

(declare-fun res!1591983 () Bool)

(assert (=> b!3934208 (=> (not res!1591983) (not e!2433991))))

(assert (=> b!3934208 (= res!1591983 (= (head!8357 lt!1374813) (head!8357 lt!1374797)))))

(declare-fun b!3934210 () Bool)

(declare-fun e!2433990 () Bool)

(assert (=> b!3934210 (= e!2433990 (>= (size!31338 lt!1374797) (size!31338 lt!1374813)))))

(declare-fun d!1166523 () Bool)

(assert (=> d!1166523 e!2433990))

(declare-fun res!1591984 () Bool)

(assert (=> d!1166523 (=> res!1591984 e!2433990)))

(declare-fun lt!1375090 () Bool)

(assert (=> d!1166523 (= res!1591984 (not lt!1375090))))

(declare-fun e!2433992 () Bool)

(assert (=> d!1166523 (= lt!1375090 e!2433992)))

(declare-fun res!1591985 () Bool)

(assert (=> d!1166523 (=> res!1591985 e!2433992)))

(assert (=> d!1166523 (= res!1591985 (is-Nil!41770 lt!1374813))))

(assert (=> d!1166523 (= (isPrefix!3618 lt!1374813 lt!1374797) lt!1375090)))

(declare-fun b!3934207 () Bool)

(assert (=> b!3934207 (= e!2433992 e!2433991)))

(declare-fun res!1591982 () Bool)

(assert (=> b!3934207 (=> (not res!1591982) (not e!2433991))))

(assert (=> b!3934207 (= res!1591982 (not (is-Nil!41770 lt!1374797)))))

(assert (= (and d!1166523 (not res!1591985)) b!3934207))

(assert (= (and b!3934207 res!1591982) b!3934208))

(assert (= (and b!3934208 res!1591983) b!3934209))

(assert (= (and d!1166523 (not res!1591984)) b!3934210))

(assert (=> b!3934209 m!4500859))

(declare-fun m!4501061 () Bool)

(assert (=> b!3934209 m!4501061))

(assert (=> b!3934209 m!4500859))

(assert (=> b!3934209 m!4501061))

(declare-fun m!4501063 () Bool)

(assert (=> b!3934209 m!4501063))

(assert (=> b!3934208 m!4500869))

(declare-fun m!4501065 () Bool)

(assert (=> b!3934208 m!4501065))

(assert (=> b!3934210 m!4500779))

(assert (=> b!3934210 m!4500653))

(assert (=> b!3933746 d!1166523))

(declare-fun d!1166525 () Bool)

(assert (=> d!1166525 (isPrefix!3618 lt!1374813 (++!10804 lt!1374813 suffix!1176))))

(declare-fun lt!1375091 () Unit!60236)

(assert (=> d!1166525 (= lt!1375091 (choose!23433 lt!1374813 suffix!1176))))

(assert (=> d!1166525 (= (lemmaConcatTwoListThenFirstIsPrefix!2481 lt!1374813 suffix!1176) lt!1375091)))

(declare-fun bs!586351 () Bool)

(assert (= bs!586351 d!1166525))

(assert (=> bs!586351 m!4500411))

(assert (=> bs!586351 m!4500411))

(declare-fun m!4501067 () Bool)

(assert (=> bs!586351 m!4501067))

(declare-fun m!4501069 () Bool)

(assert (=> bs!586351 m!4501069))

(assert (=> b!3933746 d!1166525))

(declare-fun d!1166527 () Bool)

(assert (=> d!1166527 (= (inv!55966 (tag!7383 (h!47192 rules!2768))) (= (mod (str.len (value!206540 (tag!7383 (h!47192 rules!2768)))) 2) 0))))

(assert (=> b!3933763 d!1166527))

(declare-fun d!1166529 () Bool)

(declare-fun res!1591986 () Bool)

(declare-fun e!2433993 () Bool)

(assert (=> d!1166529 (=> (not res!1591986) (not e!2433993))))

(assert (=> d!1166529 (= res!1591986 (semiInverseModEq!2804 (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (h!47192 rules!2768)))))))

(assert (=> d!1166529 (= (inv!55970 (transformation!6523 (h!47192 rules!2768))) e!2433993)))

(declare-fun b!3934211 () Bool)

(assert (=> b!3934211 (= e!2433993 (equivClasses!2703 (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (h!47192 rules!2768)))))))

(assert (= (and d!1166529 res!1591986) b!3934211))

(declare-fun m!4501071 () Bool)

(assert (=> d!1166529 m!4501071))

(declare-fun m!4501073 () Bool)

(assert (=> b!3934211 m!4501073))

(assert (=> b!3933763 d!1166529))

(declare-fun b!3934212 () Bool)

(declare-fun e!2433995 () List!41894)

(assert (=> b!3934212 (= e!2433995 suffix!1176)))

(declare-fun b!3934213 () Bool)

(assert (=> b!3934213 (= e!2433995 (Cons!41770 (h!47190 lt!1374784) (++!10804 (t!325943 lt!1374784) suffix!1176)))))

(declare-fun b!3934214 () Bool)

(declare-fun res!1591988 () Bool)

(declare-fun e!2433994 () Bool)

(assert (=> b!3934214 (=> (not res!1591988) (not e!2433994))))

(declare-fun lt!1375092 () List!41894)

(assert (=> b!3934214 (= res!1591988 (= (size!31338 lt!1375092) (+ (size!31338 lt!1374784) (size!31338 suffix!1176))))))

(declare-fun d!1166531 () Bool)

(assert (=> d!1166531 e!2433994))

(declare-fun res!1591987 () Bool)

(assert (=> d!1166531 (=> (not res!1591987) (not e!2433994))))

(assert (=> d!1166531 (= res!1591987 (= (content!6295 lt!1375092) (set.union (content!6295 lt!1374784) (content!6295 suffix!1176))))))

(assert (=> d!1166531 (= lt!1375092 e!2433995)))

(declare-fun c!683550 () Bool)

(assert (=> d!1166531 (= c!683550 (is-Nil!41770 lt!1374784))))

(assert (=> d!1166531 (= (++!10804 lt!1374784 suffix!1176) lt!1375092)))

(declare-fun b!3934215 () Bool)

(assert (=> b!3934215 (= e!2433994 (or (not (= suffix!1176 Nil!41770)) (= lt!1375092 lt!1374784)))))

(assert (= (and d!1166531 c!683550) b!3934212))

(assert (= (and d!1166531 (not c!683550)) b!3934213))

(assert (= (and d!1166531 res!1591987) b!3934214))

(assert (= (and b!3934214 res!1591988) b!3934215))

(declare-fun m!4501075 () Bool)

(assert (=> b!3934213 m!4501075))

(declare-fun m!4501077 () Bool)

(assert (=> b!3934214 m!4501077))

(declare-fun m!4501079 () Bool)

(assert (=> b!3934214 m!4501079))

(assert (=> b!3934214 m!4500315))

(declare-fun m!4501081 () Bool)

(assert (=> d!1166531 m!4501081))

(declare-fun m!4501083 () Bool)

(assert (=> d!1166531 m!4501083))

(assert (=> d!1166531 m!4500797))

(assert (=> b!3933742 d!1166531))

(declare-fun b!3934216 () Bool)

(declare-fun e!2433997 () Bool)

(declare-fun lt!1375095 () tuple2!41050)

(assert (=> b!3934216 (= e!2433997 (not (isEmpty!24905 (_1!23659 lt!1375095))))))

(declare-fun b!3934217 () Bool)

(declare-fun e!2433996 () tuple2!41050)

(assert (=> b!3934217 (= e!2433996 (tuple2!41051 Nil!41771 lt!1374783))))

(declare-fun d!1166533 () Bool)

(declare-fun e!2433998 () Bool)

(assert (=> d!1166533 e!2433998))

(declare-fun c!683551 () Bool)

(assert (=> d!1166533 (= c!683551 (> (size!31341 (_1!23659 lt!1375095)) 0))))

(assert (=> d!1166533 (= lt!1375095 e!2433996)))

(declare-fun c!683552 () Bool)

(declare-fun lt!1375093 () Option!8943)

(assert (=> d!1166533 (= c!683552 (is-Some!8942 lt!1375093))))

(assert (=> d!1166533 (= lt!1375093 (maxPrefix!3416 thiss!20629 rules!2768 lt!1374783))))

(assert (=> d!1166533 (= (lexList!1880 thiss!20629 rules!2768 lt!1374783) lt!1375095)))

(declare-fun b!3934218 () Bool)

(declare-fun lt!1375094 () tuple2!41050)

(assert (=> b!3934218 (= e!2433996 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375093)) (_1!23659 lt!1375094)) (_2!23659 lt!1375094)))))

(assert (=> b!3934218 (= lt!1375094 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375093))))))

(declare-fun b!3934219 () Bool)

(assert (=> b!3934219 (= e!2433998 e!2433997)))

(declare-fun res!1591989 () Bool)

(assert (=> b!3934219 (= res!1591989 (< (size!31338 (_2!23659 lt!1375095)) (size!31338 lt!1374783)))))

(assert (=> b!3934219 (=> (not res!1591989) (not e!2433997))))

(declare-fun b!3934220 () Bool)

(assert (=> b!3934220 (= e!2433998 (= (_2!23659 lt!1375095) lt!1374783))))

(assert (= (and d!1166533 c!683552) b!3934218))

(assert (= (and d!1166533 (not c!683552)) b!3934217))

(assert (= (and d!1166533 c!683551) b!3934219))

(assert (= (and d!1166533 (not c!683551)) b!3934220))

(assert (= (and b!3934219 res!1591989) b!3934216))

(declare-fun m!4501085 () Bool)

(assert (=> b!3934216 m!4501085))

(declare-fun m!4501087 () Bool)

(assert (=> d!1166533 m!4501087))

(assert (=> d!1166533 m!4500359))

(declare-fun m!4501089 () Bool)

(assert (=> b!3934218 m!4501089))

(declare-fun m!4501091 () Bool)

(assert (=> b!3934219 m!4501091))

(assert (=> b!3934219 m!4500371))

(assert (=> b!3933743 d!1166533))

(declare-fun d!1166535 () Bool)

(declare-fun e!2433999 () Bool)

(assert (=> d!1166535 e!2433999))

(declare-fun res!1591990 () Bool)

(assert (=> d!1166535 (=> (not res!1591990) (not e!2433999))))

(declare-fun lt!1375096 () List!41895)

(assert (=> d!1166535 (= res!1591990 (= (content!6296 lt!1375096) (set.union (content!6296 prefixTokens!80) (content!6296 suffixTokens!72))))))

(declare-fun e!2434000 () List!41895)

(assert (=> d!1166535 (= lt!1375096 e!2434000)))

(declare-fun c!683553 () Bool)

(assert (=> d!1166535 (= c!683553 (is-Nil!41771 prefixTokens!80))))

(assert (=> d!1166535 (= (++!10803 prefixTokens!80 suffixTokens!72) lt!1375096)))

(declare-fun b!3934224 () Bool)

(assert (=> b!3934224 (= e!2433999 (or (not (= suffixTokens!72 Nil!41771)) (= lt!1375096 prefixTokens!80)))))

(declare-fun b!3934223 () Bool)

(declare-fun res!1591991 () Bool)

(assert (=> b!3934223 (=> (not res!1591991) (not e!2433999))))

(assert (=> b!3934223 (= res!1591991 (= (size!31341 lt!1375096) (+ (size!31341 prefixTokens!80) (size!31341 suffixTokens!72))))))

(declare-fun b!3934221 () Bool)

(assert (=> b!3934221 (= e!2434000 suffixTokens!72)))

(declare-fun b!3934222 () Bool)

(assert (=> b!3934222 (= e!2434000 (Cons!41771 (h!47191 prefixTokens!80) (++!10803 (t!325944 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1166535 c!683553) b!3934221))

(assert (= (and d!1166535 (not c!683553)) b!3934222))

(assert (= (and d!1166535 res!1591990) b!3934223))

(assert (= (and b!3934223 res!1591991) b!3934224))

(declare-fun m!4501093 () Bool)

(assert (=> d!1166535 m!4501093))

(declare-fun m!4501095 () Bool)

(assert (=> d!1166535 m!4501095))

(assert (=> d!1166535 m!4500721))

(declare-fun m!4501097 () Bool)

(assert (=> b!3934223 m!4501097))

(declare-fun m!4501099 () Bool)

(assert (=> b!3934223 m!4501099))

(assert (=> b!3934223 m!4500727))

(declare-fun m!4501101 () Bool)

(assert (=> b!3934222 m!4501101))

(assert (=> b!3933743 d!1166535))

(declare-fun b!3934225 () Bool)

(declare-fun e!2434002 () List!41894)

(assert (=> b!3934225 (= e!2434002 suffix!1176)))

(declare-fun b!3934226 () Bool)

(assert (=> b!3934226 (= e!2434002 (Cons!41770 (h!47190 prefix!426) (++!10804 (t!325943 prefix!426) suffix!1176)))))

(declare-fun b!3934227 () Bool)

(declare-fun res!1591993 () Bool)

(declare-fun e!2434001 () Bool)

(assert (=> b!3934227 (=> (not res!1591993) (not e!2434001))))

(declare-fun lt!1375097 () List!41894)

(assert (=> b!3934227 (= res!1591993 (= (size!31338 lt!1375097) (+ (size!31338 prefix!426) (size!31338 suffix!1176))))))

(declare-fun d!1166537 () Bool)

(assert (=> d!1166537 e!2434001))

(declare-fun res!1591992 () Bool)

(assert (=> d!1166537 (=> (not res!1591992) (not e!2434001))))

(assert (=> d!1166537 (= res!1591992 (= (content!6295 lt!1375097) (set.union (content!6295 prefix!426) (content!6295 suffix!1176))))))

(assert (=> d!1166537 (= lt!1375097 e!2434002)))

(declare-fun c!683554 () Bool)

(assert (=> d!1166537 (= c!683554 (is-Nil!41770 prefix!426))))

(assert (=> d!1166537 (= (++!10804 prefix!426 suffix!1176) lt!1375097)))

(declare-fun b!3934228 () Bool)

(assert (=> b!3934228 (= e!2434001 (or (not (= suffix!1176 Nil!41770)) (= lt!1375097 prefix!426)))))

(assert (= (and d!1166537 c!683554) b!3934225))

(assert (= (and d!1166537 (not c!683554)) b!3934226))

(assert (= (and d!1166537 res!1591992) b!3934227))

(assert (= (and b!3934227 res!1591993) b!3934228))

(declare-fun m!4501103 () Bool)

(assert (=> b!3934226 m!4501103))

(declare-fun m!4501105 () Bool)

(assert (=> b!3934227 m!4501105))

(assert (=> b!3934227 m!4500333))

(assert (=> b!3934227 m!4500315))

(declare-fun m!4501107 () Bool)

(assert (=> d!1166537 m!4501107))

(declare-fun m!4501109 () Bool)

(assert (=> d!1166537 m!4501109))

(assert (=> d!1166537 m!4500797))

(assert (=> b!3933743 d!1166537))

(declare-fun d!1166539 () Bool)

(declare-fun lt!1375098 () Int)

(assert (=> d!1166539 (>= lt!1375098 0)))

(declare-fun e!2434003 () Int)

(assert (=> d!1166539 (= lt!1375098 e!2434003)))

(declare-fun c!683555 () Bool)

(assert (=> d!1166539 (= c!683555 (is-Nil!41770 Nil!41770))))

(assert (=> d!1166539 (= (size!31338 Nil!41770) lt!1375098)))

(declare-fun b!3934229 () Bool)

(assert (=> b!3934229 (= e!2434003 0)))

(declare-fun b!3934230 () Bool)

(assert (=> b!3934230 (= e!2434003 (+ 1 (size!31338 (t!325943 Nil!41770))))))

(assert (= (and d!1166539 c!683555) b!3934229))

(assert (= (and d!1166539 (not c!683555)) b!3934230))

(declare-fun m!4501111 () Bool)

(assert (=> b!3934230 m!4501111))

(assert (=> b!3933765 d!1166539))

(declare-fun d!1166541 () Bool)

(assert (=> d!1166541 (isPrefix!3618 prefix!426 (++!10804 prefix!426 suffix!1176))))

(declare-fun lt!1375099 () Unit!60236)

(assert (=> d!1166541 (= lt!1375099 (choose!23433 prefix!426 suffix!1176))))

(assert (=> d!1166541 (= (lemmaConcatTwoListThenFirstIsPrefix!2481 prefix!426 suffix!1176) lt!1375099)))

(declare-fun bs!586352 () Bool)

(assert (= bs!586352 d!1166541))

(assert (=> bs!586352 m!4500345))

(assert (=> bs!586352 m!4500345))

(declare-fun m!4501113 () Bool)

(assert (=> bs!586352 m!4501113))

(declare-fun m!4501115 () Bool)

(assert (=> bs!586352 m!4501115))

(assert (=> b!3933760 d!1166541))

(declare-fun b!3934233 () Bool)

(declare-fun e!2434005 () Bool)

(assert (=> b!3934233 (= e!2434005 (isPrefix!3618 (tail!6082 prefix!426) (tail!6082 lt!1374783)))))

(declare-fun b!3934232 () Bool)

(declare-fun res!1591995 () Bool)

(assert (=> b!3934232 (=> (not res!1591995) (not e!2434005))))

(assert (=> b!3934232 (= res!1591995 (= (head!8357 prefix!426) (head!8357 lt!1374783)))))

(declare-fun b!3934234 () Bool)

(declare-fun e!2434004 () Bool)

(assert (=> b!3934234 (= e!2434004 (>= (size!31338 lt!1374783) (size!31338 prefix!426)))))

(declare-fun d!1166543 () Bool)

(assert (=> d!1166543 e!2434004))

(declare-fun res!1591996 () Bool)

(assert (=> d!1166543 (=> res!1591996 e!2434004)))

(declare-fun lt!1375100 () Bool)

(assert (=> d!1166543 (= res!1591996 (not lt!1375100))))

(declare-fun e!2434006 () Bool)

(assert (=> d!1166543 (= lt!1375100 e!2434006)))

(declare-fun res!1591997 () Bool)

(assert (=> d!1166543 (=> res!1591997 e!2434006)))

(assert (=> d!1166543 (= res!1591997 (is-Nil!41770 prefix!426))))

(assert (=> d!1166543 (= (isPrefix!3618 prefix!426 lt!1374783) lt!1375100)))

(declare-fun b!3934231 () Bool)

(assert (=> b!3934231 (= e!2434006 e!2434005)))

(declare-fun res!1591994 () Bool)

(assert (=> b!3934231 (=> (not res!1591994) (not e!2434005))))

(assert (=> b!3934231 (= res!1591994 (not (is-Nil!41770 lt!1374783)))))

(assert (= (and d!1166543 (not res!1591997)) b!3934231))

(assert (= (and b!3934231 res!1591994) b!3934232))

(assert (= (and b!3934232 res!1591995) b!3934233))

(assert (= (and d!1166543 (not res!1591996)) b!3934234))

(assert (=> b!3934233 m!4500663))

(assert (=> b!3934233 m!4500901))

(assert (=> b!3934233 m!4500663))

(assert (=> b!3934233 m!4500901))

(declare-fun m!4501117 () Bool)

(assert (=> b!3934233 m!4501117))

(declare-fun m!4501119 () Bool)

(assert (=> b!3934232 m!4501119))

(declare-fun m!4501121 () Bool)

(assert (=> b!3934232 m!4501121))

(assert (=> b!3934234 m!4500371))

(assert (=> b!3934234 m!4500333))

(assert (=> b!3933760 d!1166543))

(declare-fun d!1166545 () Bool)

(assert (=> d!1166545 (= lt!1374817 prefix!426)))

(declare-fun lt!1375103 () Unit!60236)

(declare-fun choose!23438 (List!41894 List!41894 List!41894) Unit!60236)

(assert (=> d!1166545 (= lt!1375103 (choose!23438 lt!1374817 prefix!426 lt!1374783))))

(assert (=> d!1166545 (isPrefix!3618 lt!1374817 lt!1374783)))

(assert (=> d!1166545 (= (lemmaIsPrefixSameLengthThenSameList!814 lt!1374817 prefix!426 lt!1374783) lt!1375103)))

(declare-fun bs!586353 () Bool)

(assert (= bs!586353 d!1166545))

(declare-fun m!4501123 () Bool)

(assert (=> bs!586353 m!4501123))

(assert (=> bs!586353 m!4500887))

(assert (=> b!3933760 d!1166545))

(declare-fun d!1166547 () Bool)

(assert (=> d!1166547 (= (_2!23660 (v!39270 lt!1374800)) suffix!1176)))

(declare-fun lt!1375104 () Unit!60236)

(assert (=> d!1166547 (= lt!1375104 (choose!23431 lt!1374817 (_2!23660 (v!39270 lt!1374800)) prefix!426 suffix!1176 lt!1374783))))

(assert (=> d!1166547 (isPrefix!3618 lt!1374817 lt!1374783)))

(assert (=> d!1166547 (= (lemmaSamePrefixThenSameSuffix!1839 lt!1374817 (_2!23660 (v!39270 lt!1374800)) prefix!426 suffix!1176 lt!1374783) lt!1375104)))

(declare-fun bs!586354 () Bool)

(assert (= bs!586354 d!1166547))

(declare-fun m!4501125 () Bool)

(assert (=> bs!586354 m!4501125))

(assert (=> bs!586354 m!4500887))

(assert (=> b!3933760 d!1166547))

(declare-fun d!1166549 () Bool)

(assert (=> d!1166549 (= (head!8354 prefixTokens!80) (h!47191 prefixTokens!80))))

(assert (=> b!3933761 d!1166549))

(declare-fun d!1166551 () Bool)

(declare-fun lt!1375105 () Int)

(assert (=> d!1166551 (>= lt!1375105 0)))

(declare-fun e!2434007 () Int)

(assert (=> d!1166551 (= lt!1375105 e!2434007)))

(declare-fun c!683556 () Bool)

(assert (=> d!1166551 (= c!683556 (is-Nil!41770 lt!1374783))))

(assert (=> d!1166551 (= (size!31338 lt!1374783) lt!1375105)))

(declare-fun b!3934235 () Bool)

(assert (=> b!3934235 (= e!2434007 0)))

(declare-fun b!3934236 () Bool)

(assert (=> b!3934236 (= e!2434007 (+ 1 (size!31338 (t!325943 lt!1374783))))))

(assert (= (and d!1166551 c!683556) b!3934235))

(assert (= (and d!1166551 (not c!683556)) b!3934236))

(declare-fun m!4501127 () Bool)

(assert (=> b!3934236 m!4501127))

(assert (=> b!3933782 d!1166551))

(declare-fun d!1166553 () Bool)

(declare-fun lt!1375106 () Int)

(assert (=> d!1166553 (>= lt!1375106 0)))

(declare-fun e!2434008 () Int)

(assert (=> d!1166553 (= lt!1375106 e!2434008)))

(declare-fun c!683557 () Bool)

(assert (=> d!1166553 (= c!683557 (is-Nil!41770 (_2!23660 lt!1374780)))))

(assert (=> d!1166553 (= (size!31338 (_2!23660 lt!1374780)) lt!1375106)))

(declare-fun b!3934237 () Bool)

(assert (=> b!3934237 (= e!2434008 0)))

(declare-fun b!3934238 () Bool)

(assert (=> b!3934238 (= e!2434008 (+ 1 (size!31338 (t!325943 (_2!23660 lt!1374780)))))))

(assert (= (and d!1166553 c!683557) b!3934237))

(assert (= (and d!1166553 (not c!683557)) b!3934238))

(declare-fun m!4501129 () Bool)

(assert (=> b!3934238 m!4501129))

(assert (=> b!3933782 d!1166553))

(declare-fun d!1166555 () Bool)

(assert (=> d!1166555 (= (maxPrefixOneRule!2486 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))) lt!1374783) (Some!8942 (tuple2!41053 (Token!12185 (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (seqFromList!4790 lt!1374817)) (rule!9473 (_1!23660 (v!39270 lt!1374800))) (size!31338 lt!1374817) lt!1374817) (_2!23660 (v!39270 lt!1374800)))))))

(declare-fun lt!1375124 () Unit!60236)

(declare-fun choose!23439 (LexerInterface!6112 List!41896 List!41894 List!41894 List!41894 Rule!12846) Unit!60236)

(assert (=> d!1166555 (= lt!1375124 (choose!23439 thiss!20629 rules!2768 lt!1374817 lt!1374783 (_2!23660 (v!39270 lt!1374800)) (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))

(assert (=> d!1166555 (not (isEmpty!24906 rules!2768))))

(assert (=> d!1166555 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1354 thiss!20629 rules!2768 lt!1374817 lt!1374783 (_2!23660 (v!39270 lt!1374800)) (rule!9473 (_1!23660 (v!39270 lt!1374800)))) lt!1375124)))

(declare-fun bs!586355 () Bool)

(assert (= bs!586355 d!1166555))

(assert (=> bs!586355 m!4500373))

(assert (=> bs!586355 m!4500459))

(assert (=> bs!586355 m!4500459))

(assert (=> bs!586355 m!4500461))

(declare-fun m!4501163 () Bool)

(assert (=> bs!586355 m!4501163))

(assert (=> bs!586355 m!4500447))

(assert (=> bs!586355 m!4500401))

(assert (=> b!3933782 d!1166555))

(declare-fun b!3934341 () Bool)

(declare-fun e!2434063 () Bool)

(declare-fun e!2434065 () Bool)

(assert (=> b!3934341 (= e!2434063 e!2434065)))

(declare-fun res!1592063 () Bool)

(assert (=> b!3934341 (=> (not res!1592063) (not e!2434065))))

(declare-fun lt!1375154 () Option!8943)

(declare-fun matchR!5486 (Regex!11428 List!41894) Bool)

(assert (=> b!3934341 (= res!1592063 (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))))))

(declare-fun b!3934342 () Bool)

(declare-fun e!2434062 () Option!8943)

(declare-datatypes ((tuple2!41060 0))(
  ( (tuple2!41061 (_1!23664 List!41894) (_2!23664 List!41894)) )
))
(declare-fun lt!1375153 () tuple2!41060)

(declare-fun size!31344 (BalanceConc!25062) Int)

(assert (=> b!3934342 (= e!2434062 (Some!8942 (tuple2!41053 (Token!12185 (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (seqFromList!4790 (_1!23664 lt!1375153))) (rule!9473 (_1!23660 (v!39270 lt!1374800))) (size!31344 (seqFromList!4790 (_1!23664 lt!1375153))) (_1!23664 lt!1375153)) (_2!23664 lt!1375153))))))

(declare-fun lt!1375157 () Unit!60236)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1239 (Regex!11428 List!41894) Unit!60236)

(assert (=> b!3934342 (= lt!1375157 (longestMatchIsAcceptedByMatchOrIsEmpty!1239 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) lt!1374783))))

(declare-fun res!1592066 () Bool)

(declare-fun findLongestMatchInner!1266 (Regex!11428 List!41894 Int List!41894 List!41894 Int) tuple2!41060)

(assert (=> b!3934342 (= res!1592066 (isEmpty!24907 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))))))

(declare-fun e!2434064 () Bool)

(assert (=> b!3934342 (=> res!1592066 e!2434064)))

(assert (=> b!3934342 e!2434064))

(declare-fun lt!1375156 () Unit!60236)

(assert (=> b!3934342 (= lt!1375156 lt!1375157)))

(declare-fun lt!1375155 () Unit!60236)

(declare-fun lemmaSemiInverse!1772 (TokenValueInjection!12934 BalanceConc!25062) Unit!60236)

(assert (=> b!3934342 (= lt!1375155 (lemmaSemiInverse!1772 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (seqFromList!4790 (_1!23664 lt!1375153))))))

(declare-fun b!3934343 () Bool)

(assert (=> b!3934343 (= e!2434064 (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))))))

(declare-fun b!3934344 () Bool)

(declare-fun res!1592061 () Bool)

(assert (=> b!3934344 (=> (not res!1592061) (not e!2434065))))

(assert (=> b!3934344 (= res!1592061 (= (rule!9473 (_1!23660 (get!13805 lt!1375154))) (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))

(declare-fun d!1166559 () Bool)

(assert (=> d!1166559 e!2434063))

(declare-fun res!1592065 () Bool)

(assert (=> d!1166559 (=> res!1592065 e!2434063)))

(declare-fun isEmpty!24912 (Option!8943) Bool)

(assert (=> d!1166559 (= res!1592065 (isEmpty!24912 lt!1375154))))

(assert (=> d!1166559 (= lt!1375154 e!2434062)))

(declare-fun c!683577 () Bool)

(assert (=> d!1166559 (= c!683577 (isEmpty!24907 (_1!23664 lt!1375153)))))

(declare-fun findLongestMatch!1179 (Regex!11428 List!41894) tuple2!41060)

(assert (=> d!1166559 (= lt!1375153 (findLongestMatch!1179 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) lt!1374783))))

(assert (=> d!1166559 (ruleValid!2471 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))

(assert (=> d!1166559 (= (maxPrefixOneRule!2486 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))) lt!1374783) lt!1375154)))

(declare-fun b!3934345 () Bool)

(assert (=> b!3934345 (= e!2434065 (= (size!31337 (_1!23660 (get!13805 lt!1375154))) (size!31338 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375154))))))))

(declare-fun b!3934346 () Bool)

(declare-fun res!1592062 () Bool)

(assert (=> b!3934346 (=> (not res!1592062) (not e!2434065))))

(assert (=> b!3934346 (= res!1592062 (= (value!206541 (_1!23660 (get!13805 lt!1375154))) (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375154)))))))))

(declare-fun b!3934347 () Bool)

(assert (=> b!3934347 (= e!2434062 None!8942)))

(declare-fun b!3934348 () Bool)

(declare-fun res!1592064 () Bool)

(assert (=> b!3934348 (=> (not res!1592064) (not e!2434065))))

(assert (=> b!3934348 (= res!1592064 (= (++!10804 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154)))) (_2!23660 (get!13805 lt!1375154))) lt!1374783))))

(declare-fun b!3934349 () Bool)

(declare-fun res!1592067 () Bool)

(assert (=> b!3934349 (=> (not res!1592067) (not e!2434065))))

(assert (=> b!3934349 (= res!1592067 (< (size!31338 (_2!23660 (get!13805 lt!1375154))) (size!31338 lt!1374783)))))

(assert (= (and d!1166559 c!683577) b!3934347))

(assert (= (and d!1166559 (not c!683577)) b!3934342))

(assert (= (and b!3934342 (not res!1592066)) b!3934343))

(assert (= (and d!1166559 (not res!1592065)) b!3934341))

(assert (= (and b!3934341 res!1592063) b!3934348))

(assert (= (and b!3934348 res!1592064) b!3934349))

(assert (= (and b!3934349 res!1592067) b!3934344))

(assert (= (and b!3934344 res!1592061) b!3934346))

(assert (= (and b!3934346 res!1592062) b!3934345))

(assert (=> b!3934343 m!4500353))

(assert (=> b!3934343 m!4500371))

(assert (=> b!3934343 m!4500353))

(assert (=> b!3934343 m!4500371))

(declare-fun m!4501269 () Bool)

(assert (=> b!3934343 m!4501269))

(declare-fun m!4501271 () Bool)

(assert (=> b!3934343 m!4501271))

(declare-fun m!4501273 () Bool)

(assert (=> b!3934345 m!4501273))

(declare-fun m!4501275 () Bool)

(assert (=> b!3934345 m!4501275))

(assert (=> b!3934344 m!4501273))

(assert (=> b!3934348 m!4501273))

(declare-fun m!4501277 () Bool)

(assert (=> b!3934348 m!4501277))

(assert (=> b!3934348 m!4501277))

(declare-fun m!4501279 () Bool)

(assert (=> b!3934348 m!4501279))

(assert (=> b!3934348 m!4501279))

(declare-fun m!4501281 () Bool)

(assert (=> b!3934348 m!4501281))

(assert (=> b!3934346 m!4501273))

(declare-fun m!4501283 () Bool)

(assert (=> b!3934346 m!4501283))

(assert (=> b!3934346 m!4501283))

(declare-fun m!4501285 () Bool)

(assert (=> b!3934346 m!4501285))

(assert (=> b!3934342 m!4500371))

(declare-fun m!4501287 () Bool)

(assert (=> b!3934342 m!4501287))

(declare-fun m!4501289 () Bool)

(assert (=> b!3934342 m!4501289))

(declare-fun m!4501291 () Bool)

(assert (=> b!3934342 m!4501291))

(assert (=> b!3934342 m!4500353))

(assert (=> b!3934342 m!4501289))

(assert (=> b!3934342 m!4500353))

(assert (=> b!3934342 m!4500371))

(assert (=> b!3934342 m!4501269))

(assert (=> b!3934342 m!4501289))

(declare-fun m!4501293 () Bool)

(assert (=> b!3934342 m!4501293))

(assert (=> b!3934342 m!4501289))

(declare-fun m!4501295 () Bool)

(assert (=> b!3934342 m!4501295))

(declare-fun m!4501297 () Bool)

(assert (=> b!3934342 m!4501297))

(declare-fun m!4501299 () Bool)

(assert (=> d!1166559 m!4501299))

(declare-fun m!4501301 () Bool)

(assert (=> d!1166559 m!4501301))

(declare-fun m!4501303 () Bool)

(assert (=> d!1166559 m!4501303))

(assert (=> d!1166559 m!4500471))

(assert (=> b!3934341 m!4501273))

(assert (=> b!3934341 m!4501277))

(assert (=> b!3934341 m!4501277))

(assert (=> b!3934341 m!4501279))

(assert (=> b!3934341 m!4501279))

(declare-fun m!4501305 () Bool)

(assert (=> b!3934341 m!4501305))

(assert (=> b!3934349 m!4501273))

(declare-fun m!4501307 () Bool)

(assert (=> b!3934349 m!4501307))

(assert (=> b!3934349 m!4500371))

(assert (=> b!3933782 d!1166559))

(declare-fun d!1166601 () Bool)

(assert (=> d!1166601 (= (get!13805 lt!1374800) (v!39270 lt!1374800))))

(assert (=> b!3933782 d!1166601))

(declare-fun d!1166603 () Bool)

(assert (=> d!1166603 (= (isEmpty!24905 lt!1374793) (is-Nil!41771 lt!1374793))))

(assert (=> b!3933783 d!1166603))

(assert (=> b!3933783 d!1166521))

(declare-fun b!3934350 () Bool)

(declare-fun e!2434067 () Bool)

(declare-fun lt!1375160 () tuple2!41050)

(assert (=> b!3934350 (= e!2434067 (not (isEmpty!24905 (_1!23659 lt!1375160))))))

(declare-fun b!3934351 () Bool)

(declare-fun e!2434066 () tuple2!41050)

(assert (=> b!3934351 (= e!2434066 (tuple2!41051 Nil!41771 suffix!1176))))

(declare-fun d!1166605 () Bool)

(declare-fun e!2434068 () Bool)

(assert (=> d!1166605 e!2434068))

(declare-fun c!683578 () Bool)

(assert (=> d!1166605 (= c!683578 (> (size!31341 (_1!23659 lt!1375160)) 0))))

(assert (=> d!1166605 (= lt!1375160 e!2434066)))

(declare-fun c!683579 () Bool)

(declare-fun lt!1375158 () Option!8943)

(assert (=> d!1166605 (= c!683579 (is-Some!8942 lt!1375158))))

(assert (=> d!1166605 (= lt!1375158 (maxPrefix!3416 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1166605 (= (lexList!1880 thiss!20629 rules!2768 suffix!1176) lt!1375160)))

(declare-fun b!3934352 () Bool)

(declare-fun lt!1375159 () tuple2!41050)

(assert (=> b!3934352 (= e!2434066 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375158)) (_1!23659 lt!1375159)) (_2!23659 lt!1375159)))))

(assert (=> b!3934352 (= lt!1375159 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375158))))))

(declare-fun b!3934353 () Bool)

(assert (=> b!3934353 (= e!2434068 e!2434067)))

(declare-fun res!1592068 () Bool)

(assert (=> b!3934353 (= res!1592068 (< (size!31338 (_2!23659 lt!1375160)) (size!31338 suffix!1176)))))

(assert (=> b!3934353 (=> (not res!1592068) (not e!2434067))))

(declare-fun b!3934354 () Bool)

(assert (=> b!3934354 (= e!2434068 (= (_2!23659 lt!1375160) suffix!1176))))

(assert (= (and d!1166605 c!683579) b!3934352))

(assert (= (and d!1166605 (not c!683579)) b!3934351))

(assert (= (and d!1166605 c!683578) b!3934353))

(assert (= (and d!1166605 (not c!683578)) b!3934354))

(assert (= (and b!3934353 res!1592068) b!3934350))

(declare-fun m!4501309 () Bool)

(assert (=> b!3934350 m!4501309))

(declare-fun m!4501311 () Bool)

(assert (=> d!1166605 m!4501311))

(declare-fun m!4501313 () Bool)

(assert (=> d!1166605 m!4501313))

(declare-fun m!4501315 () Bool)

(assert (=> b!3934352 m!4501315))

(declare-fun m!4501317 () Bool)

(assert (=> b!3934353 m!4501317))

(assert (=> b!3934353 m!4500315))

(assert (=> b!3933740 d!1166605))

(declare-fun d!1166607 () Bool)

(declare-fun res!1592069 () Bool)

(declare-fun e!2434069 () Bool)

(assert (=> d!1166607 (=> (not res!1592069) (not e!2434069))))

(assert (=> d!1166607 (= res!1592069 (not (isEmpty!24907 (originalCharacters!7123 (h!47191 prefixTokens!80)))))))

(assert (=> d!1166607 (= (inv!55969 (h!47191 prefixTokens!80)) e!2434069)))

(declare-fun b!3934355 () Bool)

(declare-fun res!1592070 () Bool)

(assert (=> b!3934355 (=> (not res!1592070) (not e!2434069))))

(assert (=> b!3934355 (= res!1592070 (= (originalCharacters!7123 (h!47191 prefixTokens!80)) (list!15520 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80))))))))

(declare-fun b!3934356 () Bool)

(assert (=> b!3934356 (= e!2434069 (= (size!31337 (h!47191 prefixTokens!80)) (size!31338 (originalCharacters!7123 (h!47191 prefixTokens!80)))))))

(assert (= (and d!1166607 res!1592069) b!3934355))

(assert (= (and b!3934355 res!1592070) b!3934356))

(declare-fun b_lambda!115081 () Bool)

(assert (=> (not b_lambda!115081) (not b!3934355)))

(declare-fun t!325993 () Bool)

(declare-fun tb!235367 () Bool)

(assert (=> (and b!3933775 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) t!325993) tb!235367))

(declare-fun b!3934357 () Bool)

(declare-fun e!2434070 () Bool)

(declare-fun tp!1197386 () Bool)

(assert (=> b!3934357 (= e!2434070 (and (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80))))) tp!1197386))))

(declare-fun result!285172 () Bool)

(assert (=> tb!235367 (= result!285172 (and (inv!55976 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80)))) e!2434070))))

(assert (= tb!235367 b!3934357))

(declare-fun m!4501319 () Bool)

(assert (=> b!3934357 m!4501319))

(declare-fun m!4501321 () Bool)

(assert (=> tb!235367 m!4501321))

(assert (=> b!3934355 t!325993))

(declare-fun b_and!300341 () Bool)

(assert (= b_and!300329 (and (=> t!325993 result!285172) b_and!300341)))

(declare-fun t!325995 () Bool)

(declare-fun tb!235369 () Bool)

(assert (=> (and b!3933781 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) t!325995) tb!235369))

(declare-fun result!285174 () Bool)

(assert (= result!285174 result!285172))

(assert (=> b!3934355 t!325995))

(declare-fun b_and!300343 () Bool)

(assert (= b_and!300331 (and (=> t!325995 result!285174) b_and!300343)))

(declare-fun t!325997 () Bool)

(declare-fun tb!235371 () Bool)

(assert (=> (and b!3933750 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) t!325997) tb!235371))

(declare-fun result!285176 () Bool)

(assert (= result!285176 result!285172))

(assert (=> b!3934355 t!325997))

(declare-fun b_and!300345 () Bool)

(assert (= b_and!300333 (and (=> t!325997 result!285176) b_and!300345)))

(declare-fun m!4501323 () Bool)

(assert (=> d!1166607 m!4501323))

(declare-fun m!4501325 () Bool)

(assert (=> b!3934355 m!4501325))

(assert (=> b!3934355 m!4501325))

(declare-fun m!4501327 () Bool)

(assert (=> b!3934355 m!4501327))

(declare-fun m!4501329 () Bool)

(assert (=> b!3934356 m!4501329))

(assert (=> b!3933741 d!1166607))

(declare-fun d!1166609 () Bool)

(assert (=> d!1166609 (= (_2!23660 (v!39270 lt!1374800)) lt!1374797)))

(declare-fun lt!1375161 () Unit!60236)

(assert (=> d!1166609 (= lt!1375161 (choose!23431 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 lt!1374797 lt!1374783))))

(assert (=> d!1166609 (isPrefix!3618 lt!1374817 lt!1374783)))

(assert (=> d!1166609 (= (lemmaSamePrefixThenSameSuffix!1839 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 lt!1374797 lt!1374783) lt!1375161)))

(declare-fun bs!586359 () Bool)

(assert (= bs!586359 d!1166609))

(declare-fun m!4501331 () Bool)

(assert (=> bs!586359 m!4501331))

(assert (=> bs!586359 m!4500887))

(assert (=> b!3933762 d!1166609))

(declare-fun b!3934360 () Bool)

(declare-fun e!2434072 () Bool)

(assert (=> b!3934360 (= e!2434072 (isPrefix!3618 (tail!6082 lt!1374817) (tail!6082 lt!1374769)))))

(declare-fun b!3934359 () Bool)

(declare-fun res!1592072 () Bool)

(assert (=> b!3934359 (=> (not res!1592072) (not e!2434072))))

(assert (=> b!3934359 (= res!1592072 (= (head!8357 lt!1374817) (head!8357 lt!1374769)))))

(declare-fun b!3934361 () Bool)

(declare-fun e!2434071 () Bool)

(assert (=> b!3934361 (= e!2434071 (>= (size!31338 lt!1374769) (size!31338 lt!1374817)))))

(declare-fun d!1166611 () Bool)

(assert (=> d!1166611 e!2434071))

(declare-fun res!1592073 () Bool)

(assert (=> d!1166611 (=> res!1592073 e!2434071)))

(declare-fun lt!1375162 () Bool)

(assert (=> d!1166611 (= res!1592073 (not lt!1375162))))

(declare-fun e!2434073 () Bool)

(assert (=> d!1166611 (= lt!1375162 e!2434073)))

(declare-fun res!1592074 () Bool)

(assert (=> d!1166611 (=> res!1592074 e!2434073)))

(assert (=> d!1166611 (= res!1592074 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166611 (= (isPrefix!3618 lt!1374817 lt!1374769) lt!1375162)))

(declare-fun b!3934358 () Bool)

(assert (=> b!3934358 (= e!2434073 e!2434072)))

(declare-fun res!1592071 () Bool)

(assert (=> b!3934358 (=> (not res!1592071) (not e!2434072))))

(assert (=> b!3934358 (= res!1592071 (not (is-Nil!41770 lt!1374769)))))

(assert (= (and d!1166611 (not res!1592074)) b!3934358))

(assert (= (and b!3934358 res!1592071) b!3934359))

(assert (= (and b!3934359 res!1592072) b!3934360))

(assert (= (and d!1166611 (not res!1592073)) b!3934361))

(assert (=> b!3934360 m!4500929))

(declare-fun m!4501333 () Bool)

(assert (=> b!3934360 m!4501333))

(assert (=> b!3934360 m!4500929))

(assert (=> b!3934360 m!4501333))

(declare-fun m!4501335 () Bool)

(assert (=> b!3934360 m!4501335))

(assert (=> b!3934359 m!4500935))

(declare-fun m!4501337 () Bool)

(assert (=> b!3934359 m!4501337))

(declare-fun m!4501339 () Bool)

(assert (=> b!3934361 m!4501339))

(assert (=> b!3934361 m!4500447))

(assert (=> b!3933762 d!1166611))

(declare-fun d!1166613 () Bool)

(assert (=> d!1166613 (isPrefix!3618 lt!1374817 (++!10804 lt!1374817 lt!1374797))))

(declare-fun lt!1375163 () Unit!60236)

(assert (=> d!1166613 (= lt!1375163 (choose!23433 lt!1374817 lt!1374797))))

(assert (=> d!1166613 (= (lemmaConcatTwoListThenFirstIsPrefix!2481 lt!1374817 lt!1374797) lt!1375163)))

(declare-fun bs!586360 () Bool)

(assert (= bs!586360 d!1166613))

(assert (=> bs!586360 m!4500409))

(assert (=> bs!586360 m!4500409))

(declare-fun m!4501341 () Bool)

(assert (=> bs!586360 m!4501341))

(declare-fun m!4501343 () Bool)

(assert (=> bs!586360 m!4501343))

(assert (=> b!3933762 d!1166613))

(declare-fun b!3934362 () Bool)

(declare-fun e!2434075 () Bool)

(declare-fun lt!1375166 () tuple2!41050)

(assert (=> b!3934362 (= e!2434075 (not (isEmpty!24905 (_1!23659 lt!1375166))))))

(declare-fun b!3934363 () Bool)

(declare-fun e!2434074 () tuple2!41050)

(assert (=> b!3934363 (= e!2434074 (tuple2!41051 Nil!41771 lt!1374813))))

(declare-fun d!1166615 () Bool)

(declare-fun e!2434076 () Bool)

(assert (=> d!1166615 e!2434076))

(declare-fun c!683580 () Bool)

(assert (=> d!1166615 (= c!683580 (> (size!31341 (_1!23659 lt!1375166)) 0))))

(assert (=> d!1166615 (= lt!1375166 e!2434074)))

(declare-fun c!683581 () Bool)

(declare-fun lt!1375164 () Option!8943)

(assert (=> d!1166615 (= c!683581 (is-Some!8942 lt!1375164))))

(assert (=> d!1166615 (= lt!1375164 (maxPrefix!3416 thiss!20629 rules!2768 lt!1374813))))

(assert (=> d!1166615 (= (lexList!1880 thiss!20629 rules!2768 lt!1374813) lt!1375166)))

(declare-fun b!3934364 () Bool)

(declare-fun lt!1375165 () tuple2!41050)

(assert (=> b!3934364 (= e!2434074 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375164)) (_1!23659 lt!1375165)) (_2!23659 lt!1375165)))))

(assert (=> b!3934364 (= lt!1375165 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375164))))))

(declare-fun b!3934365 () Bool)

(assert (=> b!3934365 (= e!2434076 e!2434075)))

(declare-fun res!1592075 () Bool)

(assert (=> b!3934365 (= res!1592075 (< (size!31338 (_2!23659 lt!1375166)) (size!31338 lt!1374813)))))

(assert (=> b!3934365 (=> (not res!1592075) (not e!2434075))))

(declare-fun b!3934366 () Bool)

(assert (=> b!3934366 (= e!2434076 (= (_2!23659 lt!1375166) lt!1374813))))

(assert (= (and d!1166615 c!683581) b!3934364))

(assert (= (and d!1166615 (not c!683581)) b!3934363))

(assert (= (and d!1166615 c!683580) b!3934365))

(assert (= (and d!1166615 (not c!683580)) b!3934366))

(assert (= (and b!3934365 res!1592075) b!3934362))

(declare-fun m!4501345 () Bool)

(assert (=> b!3934362 m!4501345))

(declare-fun m!4501347 () Bool)

(assert (=> d!1166615 m!4501347))

(declare-fun m!4501349 () Bool)

(assert (=> d!1166615 m!4501349))

(declare-fun m!4501351 () Bool)

(assert (=> b!3934364 m!4501351))

(declare-fun m!4501353 () Bool)

(assert (=> b!3934365 m!4501353))

(assert (=> b!3934365 m!4500653))

(assert (=> b!3933779 d!1166615))

(declare-fun d!1166617 () Bool)

(assert (=> d!1166617 (= (lexList!1880 thiss!20629 rules!2768 lt!1374813) (tuple2!41051 lt!1374778 Nil!41770))))

(declare-fun lt!1375169 () Unit!60236)

(declare-fun choose!23444 (LexerInterface!6112 List!41896 List!41894 List!41894 List!41895 List!41895 List!41894) Unit!60236)

(assert (=> d!1166617 (= lt!1375169 (choose!23444 thiss!20629 rules!2768 lt!1374813 suffix!1176 lt!1374778 suffixTokens!72 suffixResult!91))))

(assert (=> d!1166617 (not (isEmpty!24906 rules!2768))))

(assert (=> d!1166617 (= (lemmaLexThenLexPrefix!608 thiss!20629 rules!2768 lt!1374813 suffix!1176 lt!1374778 suffixTokens!72 suffixResult!91) lt!1375169)))

(declare-fun bs!586361 () Bool)

(assert (= bs!586361 d!1166617))

(assert (=> bs!586361 m!4500355))

(declare-fun m!4501355 () Bool)

(assert (=> bs!586361 m!4501355))

(assert (=> bs!586361 m!4500401))

(assert (=> b!3933779 d!1166617))

(declare-fun d!1166619 () Bool)

(assert (=> d!1166619 (not (= (lexList!1880 thiss!20629 rules!2768 suffix!1176) (tuple2!41051 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1375170 () Unit!60236)

(assert (=> d!1166619 (= lt!1375170 (choose!23427 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1374800)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1166619 (not (isEmpty!24906 rules!2768))))

(assert (=> d!1166619 (= (lemmaLexWithSmallerInputCannotProduceSameResults!123 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1374800)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1375170)))

(declare-fun bs!586362 () Bool)

(assert (= bs!586362 d!1166619))

(assert (=> bs!586362 m!4500321))

(declare-fun m!4501357 () Bool)

(assert (=> bs!586362 m!4501357))

(assert (=> bs!586362 m!4500401))

(assert (=> b!3933737 d!1166619))

(assert (=> b!3933758 d!1166543))

(declare-fun b!3934369 () Bool)

(declare-fun e!2434078 () Bool)

(assert (=> b!3934369 (= e!2434078 (isPrefix!3618 (tail!6082 lt!1374817) (tail!6082 prefix!426)))))

(declare-fun b!3934368 () Bool)

(declare-fun res!1592077 () Bool)

(assert (=> b!3934368 (=> (not res!1592077) (not e!2434078))))

(assert (=> b!3934368 (= res!1592077 (= (head!8357 lt!1374817) (head!8357 prefix!426)))))

(declare-fun b!3934370 () Bool)

(declare-fun e!2434077 () Bool)

(assert (=> b!3934370 (= e!2434077 (>= (size!31338 prefix!426) (size!31338 lt!1374817)))))

(declare-fun d!1166621 () Bool)

(assert (=> d!1166621 e!2434077))

(declare-fun res!1592078 () Bool)

(assert (=> d!1166621 (=> res!1592078 e!2434077)))

(declare-fun lt!1375171 () Bool)

(assert (=> d!1166621 (= res!1592078 (not lt!1375171))))

(declare-fun e!2434079 () Bool)

(assert (=> d!1166621 (= lt!1375171 e!2434079)))

(declare-fun res!1592079 () Bool)

(assert (=> d!1166621 (=> res!1592079 e!2434079)))

(assert (=> d!1166621 (= res!1592079 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166621 (= (isPrefix!3618 lt!1374817 prefix!426) lt!1375171)))

(declare-fun b!3934367 () Bool)

(assert (=> b!3934367 (= e!2434079 e!2434078)))

(declare-fun res!1592076 () Bool)

(assert (=> b!3934367 (=> (not res!1592076) (not e!2434078))))

(assert (=> b!3934367 (= res!1592076 (not (is-Nil!41770 prefix!426)))))

(assert (= (and d!1166621 (not res!1592079)) b!3934367))

(assert (= (and b!3934367 res!1592076) b!3934368))

(assert (= (and b!3934368 res!1592077) b!3934369))

(assert (= (and d!1166621 (not res!1592078)) b!3934370))

(assert (=> b!3934369 m!4500929))

(assert (=> b!3934369 m!4500663))

(assert (=> b!3934369 m!4500929))

(assert (=> b!3934369 m!4500663))

(declare-fun m!4501359 () Bool)

(assert (=> b!3934369 m!4501359))

(assert (=> b!3934368 m!4500935))

(assert (=> b!3934368 m!4501119))

(assert (=> b!3934370 m!4500333))

(assert (=> b!3934370 m!4500447))

(assert (=> b!3933758 d!1166621))

(assert (=> b!3933758 d!1166541))

(declare-fun d!1166623 () Bool)

(declare-fun lt!1375172 () Int)

(assert (=> d!1166623 (>= lt!1375172 0)))

(declare-fun e!2434080 () Int)

(assert (=> d!1166623 (= lt!1375172 e!2434080)))

(declare-fun c!683582 () Bool)

(assert (=> d!1166623 (= c!683582 (is-Nil!41770 prefix!426))))

(assert (=> d!1166623 (= (size!31338 prefix!426) lt!1375172)))

(declare-fun b!3934371 () Bool)

(assert (=> b!3934371 (= e!2434080 0)))

(declare-fun b!3934372 () Bool)

(assert (=> b!3934372 (= e!2434080 (+ 1 (size!31338 (t!325943 prefix!426))))))

(assert (= (and d!1166623 c!683582) b!3934371))

(assert (= (and d!1166623 (not c!683582)) b!3934372))

(declare-fun m!4501361 () Bool)

(assert (=> b!3934372 m!4501361))

(assert (=> b!3933758 d!1166623))

(declare-fun d!1166625 () Bool)

(assert (=> d!1166625 (isPrefix!3618 lt!1374817 prefix!426)))

(declare-fun lt!1375185 () Unit!60236)

(declare-fun choose!23446 (List!41894 List!41894 List!41894) Unit!60236)

(assert (=> d!1166625 (= lt!1375185 (choose!23446 prefix!426 lt!1374817 lt!1374783))))

(assert (=> d!1166625 (isPrefix!3618 prefix!426 lt!1374783)))

(assert (=> d!1166625 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!296 prefix!426 lt!1374817 lt!1374783) lt!1375185)))

(declare-fun bs!586363 () Bool)

(assert (= bs!586363 d!1166625))

(assert (=> bs!586363 m!4500331))

(declare-fun m!4501363 () Bool)

(assert (=> bs!586363 m!4501363))

(assert (=> bs!586363 m!4500337))

(assert (=> b!3933758 d!1166625))

(declare-fun d!1166627 () Bool)

(declare-fun e!2434102 () Bool)

(assert (=> d!1166627 e!2434102))

(declare-fun res!1592119 () Bool)

(assert (=> d!1166627 (=> res!1592119 e!2434102)))

(declare-fun lt!1375210 () Option!8943)

(assert (=> d!1166627 (= res!1592119 (isEmpty!24912 lt!1375210))))

(declare-fun e!2434103 () Option!8943)

(assert (=> d!1166627 (= lt!1375210 e!2434103)))

(declare-fun c!683590 () Bool)

(assert (=> d!1166627 (= c!683590 (and (is-Cons!41772 rules!2768) (is-Nil!41772 (t!325945 rules!2768))))))

(declare-fun lt!1375211 () Unit!60236)

(declare-fun lt!1375213 () Unit!60236)

(assert (=> d!1166627 (= lt!1375211 lt!1375213)))

(assert (=> d!1166627 (isPrefix!3618 lt!1374783 lt!1374783)))

(declare-fun lemmaIsPrefixRefl!2284 (List!41894 List!41894) Unit!60236)

(assert (=> d!1166627 (= lt!1375213 (lemmaIsPrefixRefl!2284 lt!1374783 lt!1374783))))

(declare-fun rulesValidInductive!2354 (LexerInterface!6112 List!41896) Bool)

(assert (=> d!1166627 (rulesValidInductive!2354 thiss!20629 rules!2768)))

(assert (=> d!1166627 (= (maxPrefix!3416 thiss!20629 rules!2768 lt!1374783) lt!1375210)))

(declare-fun b!3934422 () Bool)

(declare-fun res!1592115 () Bool)

(declare-fun e!2434101 () Bool)

(assert (=> b!3934422 (=> (not res!1592115) (not e!2434101))))

(assert (=> b!3934422 (= res!1592115 (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))) (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))))))

(declare-fun b!3934423 () Bool)

(declare-fun lt!1375209 () Option!8943)

(declare-fun lt!1375212 () Option!8943)

(assert (=> b!3934423 (= e!2434103 (ite (and (is-None!8942 lt!1375209) (is-None!8942 lt!1375212)) None!8942 (ite (is-None!8942 lt!1375212) lt!1375209 (ite (is-None!8942 lt!1375209) lt!1375212 (ite (>= (size!31337 (_1!23660 (v!39270 lt!1375209))) (size!31337 (_1!23660 (v!39270 lt!1375212)))) lt!1375209 lt!1375212)))))))

(declare-fun call!284906 () Option!8943)

(assert (=> b!3934423 (= lt!1375209 call!284906)))

(assert (=> b!3934423 (= lt!1375212 (maxPrefix!3416 thiss!20629 (t!325945 rules!2768) lt!1374783))))

(declare-fun b!3934424 () Bool)

(declare-fun res!1592117 () Bool)

(assert (=> b!3934424 (=> (not res!1592117) (not e!2434101))))

(assert (=> b!3934424 (= res!1592117 (= (value!206541 (_1!23660 (get!13805 lt!1375210))) (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375210)))))))))

(declare-fun bm!284901 () Bool)

(assert (=> bm!284901 (= call!284906 (maxPrefixOneRule!2486 thiss!20629 (h!47192 rules!2768) lt!1374783))))

(declare-fun b!3934425 () Bool)

(assert (=> b!3934425 (= e!2434103 call!284906)))

(declare-fun b!3934426 () Bool)

(declare-fun res!1592118 () Bool)

(assert (=> b!3934426 (=> (not res!1592118) (not e!2434101))))

(assert (=> b!3934426 (= res!1592118 (= (++!10804 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210)))) (_2!23660 (get!13805 lt!1375210))) lt!1374783))))

(declare-fun b!3934427 () Bool)

(assert (=> b!3934427 (= e!2434101 (contains!8369 rules!2768 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))))

(declare-fun b!3934428 () Bool)

(declare-fun res!1592120 () Bool)

(assert (=> b!3934428 (=> (not res!1592120) (not e!2434101))))

(assert (=> b!3934428 (= res!1592120 (< (size!31338 (_2!23660 (get!13805 lt!1375210))) (size!31338 lt!1374783)))))

(declare-fun b!3934429 () Bool)

(declare-fun res!1592116 () Bool)

(assert (=> b!3934429 (=> (not res!1592116) (not e!2434101))))

(assert (=> b!3934429 (= res!1592116 (= (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210)))) (originalCharacters!7123 (_1!23660 (get!13805 lt!1375210)))))))

(declare-fun b!3934430 () Bool)

(assert (=> b!3934430 (= e!2434102 e!2434101)))

(declare-fun res!1592121 () Bool)

(assert (=> b!3934430 (=> (not res!1592121) (not e!2434101))))

(declare-fun isDefined!6953 (Option!8943) Bool)

(assert (=> b!3934430 (= res!1592121 (isDefined!6953 lt!1375210))))

(assert (= (and d!1166627 c!683590) b!3934425))

(assert (= (and d!1166627 (not c!683590)) b!3934423))

(assert (= (or b!3934425 b!3934423) bm!284901))

(assert (= (and d!1166627 (not res!1592119)) b!3934430))

(assert (= (and b!3934430 res!1592121) b!3934429))

(assert (= (and b!3934429 res!1592116) b!3934428))

(assert (= (and b!3934428 res!1592120) b!3934426))

(assert (= (and b!3934426 res!1592118) b!3934424))

(assert (= (and b!3934424 res!1592117) b!3934422))

(assert (= (and b!3934422 res!1592115) b!3934427))

(declare-fun m!4501415 () Bool)

(assert (=> b!3934426 m!4501415))

(declare-fun m!4501417 () Bool)

(assert (=> b!3934426 m!4501417))

(assert (=> b!3934426 m!4501417))

(declare-fun m!4501419 () Bool)

(assert (=> b!3934426 m!4501419))

(assert (=> b!3934426 m!4501419))

(declare-fun m!4501421 () Bool)

(assert (=> b!3934426 m!4501421))

(declare-fun m!4501423 () Bool)

(assert (=> bm!284901 m!4501423))

(assert (=> b!3934422 m!4501415))

(assert (=> b!3934422 m!4501417))

(assert (=> b!3934422 m!4501417))

(assert (=> b!3934422 m!4501419))

(assert (=> b!3934422 m!4501419))

(declare-fun m!4501425 () Bool)

(assert (=> b!3934422 m!4501425))

(assert (=> b!3934427 m!4501415))

(declare-fun m!4501427 () Bool)

(assert (=> b!3934427 m!4501427))

(declare-fun m!4501429 () Bool)

(assert (=> d!1166627 m!4501429))

(declare-fun m!4501431 () Bool)

(assert (=> d!1166627 m!4501431))

(declare-fun m!4501433 () Bool)

(assert (=> d!1166627 m!4501433))

(declare-fun m!4501435 () Bool)

(assert (=> d!1166627 m!4501435))

(assert (=> b!3934429 m!4501415))

(assert (=> b!3934429 m!4501417))

(assert (=> b!3934429 m!4501417))

(assert (=> b!3934429 m!4501419))

(assert (=> b!3934428 m!4501415))

(declare-fun m!4501437 () Bool)

(assert (=> b!3934428 m!4501437))

(assert (=> b!3934428 m!4500371))

(declare-fun m!4501439 () Bool)

(assert (=> b!3934423 m!4501439))

(assert (=> b!3934424 m!4501415))

(declare-fun m!4501441 () Bool)

(assert (=> b!3934424 m!4501441))

(assert (=> b!3934424 m!4501441))

(declare-fun m!4501443 () Bool)

(assert (=> b!3934424 m!4501443))

(declare-fun m!4501445 () Bool)

(assert (=> b!3934430 m!4501445))

(assert (=> b!3933759 d!1166627))

(declare-fun b!3934431 () Bool)

(declare-fun e!2434106 () Bool)

(declare-fun e!2434104 () Bool)

(assert (=> b!3934431 (= e!2434106 e!2434104)))

(declare-fun c!683591 () Bool)

(assert (=> b!3934431 (= c!683591 (is-IntegerValue!20260 (value!206541 (h!47191 prefixTokens!80))))))

(declare-fun b!3934432 () Bool)

(assert (=> b!3934432 (= e!2434104 (inv!17 (value!206541 (h!47191 prefixTokens!80))))))

(declare-fun b!3934433 () Bool)

(assert (=> b!3934433 (= e!2434106 (inv!16 (value!206541 (h!47191 prefixTokens!80))))))

(declare-fun b!3934434 () Bool)

(declare-fun res!1592122 () Bool)

(declare-fun e!2434105 () Bool)

(assert (=> b!3934434 (=> res!1592122 e!2434105)))

(assert (=> b!3934434 (= res!1592122 (not (is-IntegerValue!20261 (value!206541 (h!47191 prefixTokens!80)))))))

(assert (=> b!3934434 (= e!2434104 e!2434105)))

(declare-fun d!1166641 () Bool)

(declare-fun c!683592 () Bool)

(assert (=> d!1166641 (= c!683592 (is-IntegerValue!20259 (value!206541 (h!47191 prefixTokens!80))))))

(assert (=> d!1166641 (= (inv!21 (value!206541 (h!47191 prefixTokens!80))) e!2434106)))

(declare-fun b!3934435 () Bool)

(assert (=> b!3934435 (= e!2434105 (inv!15 (value!206541 (h!47191 prefixTokens!80))))))

(assert (= (and d!1166641 c!683592) b!3934433))

(assert (= (and d!1166641 (not c!683592)) b!3934431))

(assert (= (and b!3934431 c!683591) b!3934432))

(assert (= (and b!3934431 (not c!683591)) b!3934434))

(assert (= (and b!3934434 (not res!1592122)) b!3934435))

(declare-fun m!4501447 () Bool)

(assert (=> b!3934432 m!4501447))

(declare-fun m!4501449 () Bool)

(assert (=> b!3934433 m!4501449))

(declare-fun m!4501451 () Bool)

(assert (=> b!3934435 m!4501451))

(assert (=> b!3933780 d!1166641))

(declare-fun d!1166643 () Bool)

(assert (=> d!1166643 (= (isEmpty!24906 rules!2768) (is-Nil!41772 rules!2768))))

(assert (=> b!3933738 d!1166643))

(declare-fun b!3934446 () Bool)

(declare-fun b_free!107441 () Bool)

(declare-fun b_next!108145 () Bool)

(assert (=> b!3934446 (= b_free!107441 (not b_next!108145))))

(declare-fun tb!235373 () Bool)

(declare-fun t!325999 () Bool)

(assert (=> (and b!3934446 (= (toValue!8979 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!325999) tb!235373))

(declare-fun result!285180 () Bool)

(assert (= result!285180 result!285144))

(assert (=> d!1166471 t!325999))

(declare-fun tp!1197398 () Bool)

(declare-fun b_and!300347 () Bool)

(assert (=> b!3934446 (= tp!1197398 (and (=> t!325999 result!285180) b_and!300347))))

(declare-fun b_free!107443 () Bool)

(declare-fun b_next!108147 () Bool)

(assert (=> b!3934446 (= b_free!107443 (not b_next!108147))))

(declare-fun t!326001 () Bool)

(declare-fun tb!235375 () Bool)

(assert (=> (and b!3934446 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326001) tb!235375))

(declare-fun result!285182 () Bool)

(assert (= result!285182 result!285152))

(assert (=> d!1166487 t!326001))

(declare-fun t!326003 () Bool)

(declare-fun tb!235377 () Bool)

(assert (=> (and b!3934446 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) t!326003) tb!235377))

(declare-fun result!285184 () Bool)

(assert (= result!285184 result!285160))

(assert (=> b!3934200 t!326003))

(declare-fun t!326005 () Bool)

(declare-fun tb!235379 () Bool)

(assert (=> (and b!3934446 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) t!326005) tb!235379))

(declare-fun result!285186 () Bool)

(assert (= result!285186 result!285172))

(assert (=> b!3934355 t!326005))

(declare-fun tp!1197396 () Bool)

(declare-fun b_and!300349 () Bool)

(assert (=> b!3934446 (= tp!1197396 (and (=> t!326001 result!285182) (=> t!326003 result!285184) (=> t!326005 result!285186) b_and!300349))))

(declare-fun e!2434117 () Bool)

(assert (=> b!3934446 (= e!2434117 (and tp!1197398 tp!1197396))))

(declare-fun tp!1197395 () Bool)

(declare-fun b!3934445 () Bool)

(declare-fun e!2434115 () Bool)

(assert (=> b!3934445 (= e!2434115 (and tp!1197395 (inv!55966 (tag!7383 (h!47192 (t!325945 rules!2768)))) (inv!55970 (transformation!6523 (h!47192 (t!325945 rules!2768)))) e!2434117))))

(declare-fun b!3934444 () Bool)

(declare-fun e!2434116 () Bool)

(declare-fun tp!1197397 () Bool)

(assert (=> b!3934444 (= e!2434116 (and e!2434115 tp!1197397))))

(assert (=> b!3933745 (= tp!1197319 e!2434116)))

(assert (= b!3934445 b!3934446))

(assert (= b!3934444 b!3934445))

(assert (= (and b!3933745 (is-Cons!41772 (t!325945 rules!2768))) b!3934444))

(declare-fun m!4501453 () Bool)

(assert (=> b!3934445 m!4501453))

(declare-fun m!4501455 () Bool)

(assert (=> b!3934445 m!4501455))

(declare-fun b!3934451 () Bool)

(declare-fun e!2434121 () Bool)

(declare-fun tp!1197401 () Bool)

(assert (=> b!3934451 (= e!2434121 (and tp_is_empty!19827 tp!1197401))))

(assert (=> b!3933777 (= tp!1197313 e!2434121)))

(assert (= (and b!3933777 (is-Cons!41770 (t!325943 suffix!1176))) b!3934451))

(declare-fun b!3934452 () Bool)

(declare-fun e!2434122 () Bool)

(declare-fun tp!1197402 () Bool)

(assert (=> b!3934452 (= e!2434122 (and tp_is_empty!19827 tp!1197402))))

(assert (=> b!3933766 (= tp!1197323 e!2434122)))

(assert (= (and b!3933766 (is-Cons!41770 (originalCharacters!7123 (h!47191 suffixTokens!72)))) b!3934452))

(declare-fun b!3934466 () Bool)

(declare-fun b_free!107445 () Bool)

(declare-fun b_next!108149 () Bool)

(assert (=> b!3934466 (= b_free!107445 (not b_next!108149))))

(declare-fun t!326007 () Bool)

(declare-fun tb!235381 () Bool)

(assert (=> (and b!3934466 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326007) tb!235381))

(declare-fun result!285192 () Bool)

(assert (= result!285192 result!285144))

(assert (=> d!1166471 t!326007))

(declare-fun b_and!300351 () Bool)

(declare-fun tp!1197413 () Bool)

(assert (=> b!3934466 (= tp!1197413 (and (=> t!326007 result!285192) b_and!300351))))

(declare-fun b_free!107447 () Bool)

(declare-fun b_next!108151 () Bool)

(assert (=> b!3934466 (= b_free!107447 (not b_next!108151))))

(declare-fun tb!235383 () Bool)

(declare-fun t!326009 () Bool)

(assert (=> (and b!3934466 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326009) tb!235383))

(declare-fun result!285194 () Bool)

(assert (= result!285194 result!285152))

(assert (=> d!1166487 t!326009))

(declare-fun t!326011 () Bool)

(declare-fun tb!235385 () Bool)

(assert (=> (and b!3934466 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) t!326011) tb!235385))

(declare-fun result!285196 () Bool)

(assert (= result!285196 result!285160))

(assert (=> b!3934200 t!326011))

(declare-fun t!326013 () Bool)

(declare-fun tb!235387 () Bool)

(assert (=> (and b!3934466 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) t!326013) tb!235387))

(declare-fun result!285198 () Bool)

(assert (= result!285198 result!285172))

(assert (=> b!3934355 t!326013))

(declare-fun tp!1197415 () Bool)

(declare-fun b_and!300353 () Bool)

(assert (=> b!3934466 (= tp!1197415 (and (=> t!326009 result!285194) (=> t!326011 result!285196) (=> t!326013 result!285198) b_and!300353))))

(declare-fun e!2434136 () Bool)

(declare-fun tp!1197417 () Bool)

(declare-fun e!2434140 () Bool)

(declare-fun b!3934463 () Bool)

(assert (=> b!3934463 (= e!2434136 (and (inv!55969 (h!47191 (t!325944 suffixTokens!72))) e!2434140 tp!1197417))))

(declare-fun e!2434135 () Bool)

(declare-fun b!3934464 () Bool)

(declare-fun tp!1197414 () Bool)

(assert (=> b!3934464 (= e!2434140 (and (inv!21 (value!206541 (h!47191 (t!325944 suffixTokens!72)))) e!2434135 tp!1197414))))

(declare-fun b!3934465 () Bool)

(declare-fun e!2434137 () Bool)

(declare-fun tp!1197416 () Bool)

(assert (=> b!3934465 (= e!2434135 (and tp!1197416 (inv!55966 (tag!7383 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (inv!55970 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) e!2434137))))

(assert (=> b!3934466 (= e!2434137 (and tp!1197413 tp!1197415))))

(assert (=> b!3933767 (= tp!1197312 e!2434136)))

(assert (= b!3934465 b!3934466))

(assert (= b!3934464 b!3934465))

(assert (= b!3934463 b!3934464))

(assert (= (and b!3933767 (is-Cons!41771 (t!325944 suffixTokens!72))) b!3934463))

(declare-fun m!4501457 () Bool)

(assert (=> b!3934463 m!4501457))

(declare-fun m!4501459 () Bool)

(assert (=> b!3934464 m!4501459))

(declare-fun m!4501461 () Bool)

(assert (=> b!3934465 m!4501461))

(declare-fun m!4501463 () Bool)

(assert (=> b!3934465 m!4501463))

(declare-fun b!3934467 () Bool)

(declare-fun e!2434141 () Bool)

(declare-fun tp!1197418 () Bool)

(assert (=> b!3934467 (= e!2434141 (and tp_is_empty!19827 tp!1197418))))

(assert (=> b!3933778 (= tp!1197325 e!2434141)))

(assert (= (and b!3933778 (is-Cons!41770 (t!325943 prefix!426))) b!3934467))

(declare-fun e!2434147 () Bool)

(assert (=> b!3933763 (= tp!1197321 e!2434147)))

(declare-fun b!3934486 () Bool)

(declare-fun tp!1197431 () Bool)

(declare-fun tp!1197429 () Bool)

(assert (=> b!3934486 (= e!2434147 (and tp!1197431 tp!1197429))))

(declare-fun b!3934483 () Bool)

(assert (=> b!3934483 (= e!2434147 tp_is_empty!19827)))

(declare-fun b!3934484 () Bool)

(declare-fun tp!1197430 () Bool)

(declare-fun tp!1197432 () Bool)

(assert (=> b!3934484 (= e!2434147 (and tp!1197430 tp!1197432))))

(declare-fun b!3934485 () Bool)

(declare-fun tp!1197433 () Bool)

(assert (=> b!3934485 (= e!2434147 tp!1197433)))

(assert (= (and b!3933763 (is-ElementMatch!11428 (regex!6523 (h!47192 rules!2768)))) b!3934483))

(assert (= (and b!3933763 (is-Concat!18182 (regex!6523 (h!47192 rules!2768)))) b!3934484))

(assert (= (and b!3933763 (is-Star!11428 (regex!6523 (h!47192 rules!2768)))) b!3934485))

(assert (= (and b!3933763 (is-Union!11428 (regex!6523 (h!47192 rules!2768)))) b!3934486))

(declare-fun e!2434149 () Bool)

(assert (=> b!3933774 (= tp!1197318 e!2434149)))

(declare-fun b!3934491 () Bool)

(declare-fun tp!1197436 () Bool)

(declare-fun tp!1197434 () Bool)

(assert (=> b!3934491 (= e!2434149 (and tp!1197436 tp!1197434))))

(declare-fun b!3934488 () Bool)

(assert (=> b!3934488 (= e!2434149 tp_is_empty!19827)))

(declare-fun b!3934489 () Bool)

(declare-fun tp!1197435 () Bool)

(declare-fun tp!1197437 () Bool)

(assert (=> b!3934489 (= e!2434149 (and tp!1197435 tp!1197437))))

(declare-fun b!3934490 () Bool)

(declare-fun tp!1197438 () Bool)

(assert (=> b!3934490 (= e!2434149 tp!1197438)))

(assert (= (and b!3933774 (is-ElementMatch!11428 (regex!6523 (rule!9473 (h!47191 prefixTokens!80))))) b!3934488))

(assert (= (and b!3933774 (is-Concat!18182 (regex!6523 (rule!9473 (h!47191 prefixTokens!80))))) b!3934489))

(assert (= (and b!3933774 (is-Star!11428 (regex!6523 (rule!9473 (h!47191 prefixTokens!80))))) b!3934490))

(assert (= (and b!3933774 (is-Union!11428 (regex!6523 (rule!9473 (h!47191 prefixTokens!80))))) b!3934491))

(declare-fun b!3934492 () Bool)

(declare-fun e!2434150 () Bool)

(declare-fun tp!1197439 () Bool)

(assert (=> b!3934492 (= e!2434150 (and tp_is_empty!19827 tp!1197439))))

(assert (=> b!3933771 (= tp!1197324 e!2434150)))

(assert (= (and b!3933771 (is-Cons!41770 (t!325943 suffixResult!91))) b!3934492))

(declare-fun b!3934496 () Bool)

(declare-fun b_free!107449 () Bool)

(declare-fun b_next!108153 () Bool)

(assert (=> b!3934496 (= b_free!107449 (not b_next!108153))))

(declare-fun t!326015 () Bool)

(declare-fun tb!235389 () Bool)

(assert (=> (and b!3934496 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326015) tb!235389))

(declare-fun result!285202 () Bool)

(assert (= result!285202 result!285144))

(assert (=> d!1166471 t!326015))

(declare-fun b_and!300355 () Bool)

(declare-fun tp!1197440 () Bool)

(assert (=> b!3934496 (= tp!1197440 (and (=> t!326015 result!285202) b_and!300355))))

(declare-fun b_free!107451 () Bool)

(declare-fun b_next!108155 () Bool)

(assert (=> b!3934496 (= b_free!107451 (not b_next!108155))))

(declare-fun tb!235391 () Bool)

(declare-fun t!326017 () Bool)

(assert (=> (and b!3934496 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326017) tb!235391))

(declare-fun result!285204 () Bool)

(assert (= result!285204 result!285152))

(assert (=> d!1166487 t!326017))

(declare-fun tb!235393 () Bool)

(declare-fun t!326019 () Bool)

(assert (=> (and b!3934496 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) t!326019) tb!235393))

(declare-fun result!285206 () Bool)

(assert (= result!285206 result!285160))

(assert (=> b!3934200 t!326019))

(declare-fun t!326021 () Bool)

(declare-fun tb!235395 () Bool)

(assert (=> (and b!3934496 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) t!326021) tb!235395))

(declare-fun result!285208 () Bool)

(assert (= result!285208 result!285172))

(assert (=> b!3934355 t!326021))

(declare-fun tp!1197442 () Bool)

(declare-fun b_and!300357 () Bool)

(assert (=> b!3934496 (= tp!1197442 (and (=> t!326017 result!285204) (=> t!326019 result!285206) (=> t!326021 result!285208) b_and!300357))))

(declare-fun tp!1197444 () Bool)

(declare-fun e!2434152 () Bool)

(declare-fun e!2434156 () Bool)

(declare-fun b!3934493 () Bool)

(assert (=> b!3934493 (= e!2434152 (and (inv!55969 (h!47191 (t!325944 prefixTokens!80))) e!2434156 tp!1197444))))

(declare-fun b!3934494 () Bool)

(declare-fun tp!1197441 () Bool)

(declare-fun e!2434151 () Bool)

(assert (=> b!3934494 (= e!2434156 (and (inv!21 (value!206541 (h!47191 (t!325944 prefixTokens!80)))) e!2434151 tp!1197441))))

(declare-fun e!2434153 () Bool)

(declare-fun b!3934495 () Bool)

(declare-fun tp!1197443 () Bool)

(assert (=> b!3934495 (= e!2434151 (and tp!1197443 (inv!55966 (tag!7383 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (inv!55970 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) e!2434153))))

(assert (=> b!3934496 (= e!2434153 (and tp!1197440 tp!1197442))))

(assert (=> b!3933741 (= tp!1197316 e!2434152)))

(assert (= b!3934495 b!3934496))

(assert (= b!3934494 b!3934495))

(assert (= b!3934493 b!3934494))

(assert (= (and b!3933741 (is-Cons!41771 (t!325944 prefixTokens!80))) b!3934493))

(declare-fun m!4501485 () Bool)

(assert (=> b!3934493 m!4501485))

(declare-fun m!4501489 () Bool)

(assert (=> b!3934494 m!4501489))

(declare-fun m!4501493 () Bool)

(assert (=> b!3934495 m!4501493))

(declare-fun m!4501497 () Bool)

(assert (=> b!3934495 m!4501497))

(declare-fun e!2434160 () Bool)

(assert (=> b!3933773 (= tp!1197322 e!2434160)))

(declare-fun b!3934504 () Bool)

(declare-fun tp!1197447 () Bool)

(declare-fun tp!1197445 () Bool)

(assert (=> b!3934504 (= e!2434160 (and tp!1197447 tp!1197445))))

(declare-fun b!3934501 () Bool)

(assert (=> b!3934501 (= e!2434160 tp_is_empty!19827)))

(declare-fun b!3934502 () Bool)

(declare-fun tp!1197446 () Bool)

(declare-fun tp!1197448 () Bool)

(assert (=> b!3934502 (= e!2434160 (and tp!1197446 tp!1197448))))

(declare-fun b!3934503 () Bool)

(declare-fun tp!1197449 () Bool)

(assert (=> b!3934503 (= e!2434160 tp!1197449)))

(assert (= (and b!3933773 (is-ElementMatch!11428 (regex!6523 (rule!9473 (h!47191 suffixTokens!72))))) b!3934501))

(assert (= (and b!3933773 (is-Concat!18182 (regex!6523 (rule!9473 (h!47191 suffixTokens!72))))) b!3934502))

(assert (= (and b!3933773 (is-Star!11428 (regex!6523 (rule!9473 (h!47191 suffixTokens!72))))) b!3934503))

(assert (= (and b!3933773 (is-Union!11428 (regex!6523 (rule!9473 (h!47191 suffixTokens!72))))) b!3934504))

(declare-fun b!3934505 () Bool)

(declare-fun e!2434161 () Bool)

(declare-fun tp!1197450 () Bool)

(assert (=> b!3934505 (= e!2434161 (and tp_is_empty!19827 tp!1197450))))

(assert (=> b!3933780 (= tp!1197310 e!2434161)))

(assert (= (and b!3933780 (is-Cons!41770 (originalCharacters!7123 (h!47191 prefixTokens!80)))) b!3934505))

(declare-fun b_lambda!115083 () Bool)

(assert (= b_lambda!115077 (or (and b!3933781 b_free!107423) (and b!3934446 b_free!107443 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))))) (and b!3933750 b_free!107427 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))))) (and b!3934496 b_free!107451 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))))) (and b!3933775 b_free!107419 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))))) (and b!3934466 b_free!107447 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b_lambda!115083)))

(declare-fun b_lambda!115085 () Bool)

(assert (= b_lambda!115081 (or (and b!3934466 b_free!107447 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))))) (and b!3934446 b_free!107443 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))))) (and b!3933781 b_free!107423 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))))) (and b!3933775 b_free!107419 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))))) (and b!3934496 b_free!107451 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))))) (and b!3933750 b_free!107427) b_lambda!115085)))

(push 1)

(assert (not b!3933959))

(assert (not b!3934179))

(assert (not d!1166613))

(assert (not b!3934069))

(assert (not b_next!108149))

(assert (not b!3934204))

(assert (not b_next!108129))

(assert (not b!3934427))

(assert (not d!1166417))

(assert (not b!3934356))

(assert (not d!1166535))

(assert (not b!3934218))

(assert (not b!3934086))

(assert (not b!3934213))

(assert (not b!3934503))

(assert (not d!1166625))

(assert (not d!1166545))

(assert (not b!3934064))

(assert (not d!1166495))

(assert (not b!3934352))

(assert (not d!1166615))

(assert (not b!3934463))

(assert (not b!3934141))

(assert (not b!3934195))

(assert (not b!3933984))

(assert b_and!300317)

(assert (not b!3934342))

(assert (not b!3934219))

(assert (not b!3934361))

(assert b_and!300345)

(assert (not b!3934145))

(assert (not b!3934444))

(assert (not d!1166419))

(assert (not b!3934368))

(assert (not b!3934445))

(assert (not b!3934495))

(assert (not b_lambda!115075))

(assert (not d!1166489))

(assert (not b!3934208))

(assert (not b!3934465))

(assert (not b!3933957))

(assert (not b!3934238))

(assert (not b!3934214))

(assert b_and!300351)

(assert b_and!300355)

(assert (not b!3934202))

(assert (not b!3934349))

(assert (not d!1166627))

(assert b_and!300341)

(assert (not b!3934451))

(assert (not d!1166397))

(assert (not b_next!108127))

(assert (not tb!235349))

(assert (not b!3934155))

(assert (not b!3934350))

(assert (not b!3934210))

(assert (not b!3934193))

(assert (not b!3934490))

(assert (not b!3934128))

(assert (not b!3934021))

(assert (not b!3934017))

(assert (not b!3934370))

(assert (not d!1166461))

(assert (not b!3934230))

(assert (not b!3934057))

(assert b_and!300357)

(assert (not tb!235355))

(assert (not b_next!108155))

(assert (not b!3934174))

(assert (not b!3934433))

(assert (not d!1166477))

(assert b_and!300353)

(assert (not b!3934192))

(assert b_and!300343)

(assert (not d!1166547))

(assert (not b!3934432))

(assert (not b_next!108121))

(assert (not b!3934091))

(assert (not d!1166513))

(assert (not b!3934464))

(assert (not b!3934346))

(assert (not b!3934426))

(assert (not b!3934059))

(assert (not b_lambda!115085))

(assert (not d!1166391))

(assert (not b!3934362))

(assert (not b!3934341))

(assert (not b!3934369))

(assert (not b!3934493))

(assert (not d!1166493))

(assert (not b!3934484))

(assert (not d!1166385))

(assert (not d!1166407))

(assert (not b!3934200))

(assert (not b!3934122))

(assert (not b!3933995))

(assert (not d!1166531))

(assert (not b!3934092))

(assert (not d!1166559))

(assert (not d!1166445))

(assert (not b_next!108153))

(assert (not b!3934428))

(assert (not b!3934372))

(assert (not d!1166487))

(assert (not tb!235343))

(assert (not b!3934201))

(assert (not b!3934343))

(assert (not b!3934158))

(assert (not b!3934486))

(assert (not b!3934226))

(assert (not d!1166463))

(assert (not b_next!108151))

(assert (not b!3933992))

(assert (not d!1166517))

(assert (not b!3934365))

(assert (not b!3934119))

(assert (not b!3934359))

(assert (not b!3934209))

(assert (not b!3934435))

(assert (not b!3934492))

(assert (not b_lambda!115083))

(assert tp_is_empty!19827)

(assert (not b!3934422))

(assert (not d!1166481))

(assert (not b!3934205))

(assert (not b!3934060))

(assert (not b!3934157))

(assert (not d!1166605))

(assert (not d!1166519))

(assert (not d!1166533))

(assert (not b!3934234))

(assert (not d!1166511))

(assert (not b!3934430))

(assert b_and!300349)

(assert (not b!3934494))

(assert (not d!1166607))

(assert (not b!3934223))

(assert (not b!3933978))

(assert (not d!1166541))

(assert (not b!3934353))

(assert (not b!3934344))

(assert (not b!3934089))

(assert (not d!1166469))

(assert (not b!3934232))

(assert (not b!3934063))

(assert (not b_lambda!115073))

(assert (not b!3934126))

(assert (not b_next!108125))

(assert (not tb!235367))

(assert (not b!3934233))

(assert (not b!3934211))

(assert (not b!3934222))

(assert (not d!1166465))

(assert b_and!300319)

(assert b_and!300347)

(assert (not d!1166617))

(assert (not b!3934178))

(assert (not b!3934485))

(assert (not d!1166423))

(assert (not b!3934502))

(assert (not b!3934070))

(assert (not b!3934130))

(assert (not b!3934144))

(assert (not b!3934505))

(assert (not b!3934216))

(assert (not b!3934018))

(assert (not b!3934227))

(assert (not d!1166609))

(assert (not b!3934364))

(assert (not d!1166555))

(assert (not d!1166529))

(assert (not d!1166383))

(assert (not d!1166619))

(assert (not d!1166537))

(assert (not b!3934026))

(assert (not b!3934491))

(assert (not d!1166525))

(assert (not b_next!108131))

(assert (not bm!284901))

(assert (not d!1166409))

(assert (not b!3934348))

(assert (not b!3934467))

(assert (not d!1166427))

(assert (not b!3934131))

(assert (not b_next!108145))

(assert (not d!1166403))

(assert (not d!1166457))

(assert (not d!1166399))

(assert (not b!3934120))

(assert (not b_next!108147))

(assert (not b!3934355))

(assert (not b!3934360))

(assert (not b!3934146))

(assert (not b!3933977))

(assert (not b!3934236))

(assert (not b!3934022))

(assert (not b!3934423))

(assert (not b!3934025))

(assert (not b!3934175))

(assert (not b_next!108123))

(assert (not d!1166411))

(assert (not d!1166431))

(assert (not b!3934489))

(assert (not b!3934452))

(assert (not b!3934345))

(assert (not b!3934085))

(assert (not b!3934357))

(assert (not b!3934118))

(assert (not b!3934504))

(assert (not d!1166443))

(assert (not b!3934424))

(assert (not d!1166455))

(assert (not b!3934429))

(assert b_and!300321)

(check-sat)

(pop 1)

(push 1)

(assert b_and!300357)

(assert (not b_next!108153))

(assert (not b_next!108151))

(assert b_and!300349)

(assert (not b_next!108125))

(assert b_and!300319)

(assert b_and!300347)

(assert (not b_next!108131))

(assert (not b_next!108123))

(assert b_and!300321)

(assert (not b_next!108149))

(assert (not b_next!108129))

(assert b_and!300317)

(assert b_and!300345)

(assert b_and!300351)

(assert b_and!300355)

(assert b_and!300341)

(assert (not b_next!108127))

(assert (not b_next!108155))

(assert b_and!300343)

(assert (not b_next!108121))

(assert b_and!300353)

(assert (not b_next!108147))

(assert (not b_next!108145))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1166697 () Bool)

(assert (=> d!1166697 true))

(declare-fun order!22303 () Int)

(declare-fun order!22305 () Int)

(declare-fun lambda!126594 () Int)

(declare-fun dynLambda!17899 (Int Int) Int)

(declare-fun dynLambda!17900 (Int Int) Int)

(assert (=> d!1166697 (< (dynLambda!17899 order!22303 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) (dynLambda!17900 order!22305 lambda!126594))))

(assert (=> d!1166697 true))

(declare-fun order!22307 () Int)

(declare-fun dynLambda!17901 (Int Int) Int)

(assert (=> d!1166697 (< (dynLambda!17901 order!22307 (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) (dynLambda!17900 order!22305 lambda!126594))))

(declare-fun Forall!1450 (Int) Bool)

(assert (=> d!1166697 (= (semiInverseModEq!2804 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) (Forall!1450 lambda!126594))))

(declare-fun bs!586373 () Bool)

(assert (= bs!586373 d!1166697))

(declare-fun m!4501597 () Bool)

(assert (=> bs!586373 m!4501597))

(assert (=> d!1166397 d!1166697))

(declare-fun d!1166699 () Bool)

(declare-fun c!683608 () Bool)

(assert (=> d!1166699 (= c!683608 (is-Nil!41771 lt!1375088))))

(declare-fun e!2434233 () (Set Token!12184))

(assert (=> d!1166699 (= (content!6296 lt!1375088) e!2434233)))

(declare-fun b!3934611 () Bool)

(assert (=> b!3934611 (= e!2434233 (as set.empty (Set Token!12184)))))

(declare-fun b!3934612 () Bool)

(assert (=> b!3934612 (= e!2434233 (set.union (set.insert (h!47191 lt!1375088) (as set.empty (Set Token!12184))) (content!6296 (t!325944 lt!1375088))))))

(assert (= (and d!1166699 c!683608) b!3934611))

(assert (= (and d!1166699 (not c!683608)) b!3934612))

(declare-fun m!4501599 () Bool)

(assert (=> b!3934612 m!4501599))

(declare-fun m!4501601 () Bool)

(assert (=> b!3934612 m!4501601))

(assert (=> d!1166513 d!1166699))

(declare-fun d!1166701 () Bool)

(declare-fun c!683609 () Bool)

(assert (=> d!1166701 (= c!683609 (is-Nil!41771 lt!1374792))))

(declare-fun e!2434234 () (Set Token!12184))

(assert (=> d!1166701 (= (content!6296 lt!1374792) e!2434234)))

(declare-fun b!3934613 () Bool)

(assert (=> b!3934613 (= e!2434234 (as set.empty (Set Token!12184)))))

(declare-fun b!3934614 () Bool)

(assert (=> b!3934614 (= e!2434234 (set.union (set.insert (h!47191 lt!1374792) (as set.empty (Set Token!12184))) (content!6296 (t!325944 lt!1374792))))))

(assert (= (and d!1166701 c!683609) b!3934613))

(assert (= (and d!1166701 (not c!683609)) b!3934614))

(declare-fun m!4501603 () Bool)

(assert (=> b!3934614 m!4501603))

(declare-fun m!4501605 () Bool)

(assert (=> b!3934614 m!4501605))

(assert (=> d!1166513 d!1166701))

(declare-fun d!1166703 () Bool)

(declare-fun c!683610 () Bool)

(assert (=> d!1166703 (= c!683610 (is-Nil!41771 (_1!23659 lt!1374768)))))

(declare-fun e!2434235 () (Set Token!12184))

(assert (=> d!1166703 (= (content!6296 (_1!23659 lt!1374768)) e!2434235)))

(declare-fun b!3934615 () Bool)

(assert (=> b!3934615 (= e!2434235 (as set.empty (Set Token!12184)))))

(declare-fun b!3934616 () Bool)

(assert (=> b!3934616 (= e!2434235 (set.union (set.insert (h!47191 (_1!23659 lt!1374768)) (as set.empty (Set Token!12184))) (content!6296 (t!325944 (_1!23659 lt!1374768)))))))

(assert (= (and d!1166703 c!683610) b!3934615))

(assert (= (and d!1166703 (not c!683610)) b!3934616))

(declare-fun m!4501607 () Bool)

(assert (=> b!3934616 m!4501607))

(declare-fun m!4501609 () Bool)

(assert (=> b!3934616 m!4501609))

(assert (=> d!1166513 d!1166703))

(declare-fun d!1166705 () Bool)

(declare-fun c!683611 () Bool)

(assert (=> d!1166705 (= c!683611 (is-Nil!41771 lt!1375096))))

(declare-fun e!2434236 () (Set Token!12184))

(assert (=> d!1166705 (= (content!6296 lt!1375096) e!2434236)))

(declare-fun b!3934617 () Bool)

(assert (=> b!3934617 (= e!2434236 (as set.empty (Set Token!12184)))))

(declare-fun b!3934618 () Bool)

(assert (=> b!3934618 (= e!2434236 (set.union (set.insert (h!47191 lt!1375096) (as set.empty (Set Token!12184))) (content!6296 (t!325944 lt!1375096))))))

(assert (= (and d!1166705 c!683611) b!3934617))

(assert (= (and d!1166705 (not c!683611)) b!3934618))

(declare-fun m!4501611 () Bool)

(assert (=> b!3934618 m!4501611))

(declare-fun m!4501613 () Bool)

(assert (=> b!3934618 m!4501613))

(assert (=> d!1166535 d!1166705))

(declare-fun d!1166707 () Bool)

(declare-fun c!683612 () Bool)

(assert (=> d!1166707 (= c!683612 (is-Nil!41771 prefixTokens!80))))

(declare-fun e!2434237 () (Set Token!12184))

(assert (=> d!1166707 (= (content!6296 prefixTokens!80) e!2434237)))

(declare-fun b!3934619 () Bool)

(assert (=> b!3934619 (= e!2434237 (as set.empty (Set Token!12184)))))

(declare-fun b!3934620 () Bool)

(assert (=> b!3934620 (= e!2434237 (set.union (set.insert (h!47191 prefixTokens!80) (as set.empty (Set Token!12184))) (content!6296 (t!325944 prefixTokens!80))))))

(assert (= (and d!1166707 c!683612) b!3934619))

(assert (= (and d!1166707 (not c!683612)) b!3934620))

(declare-fun m!4501615 () Bool)

(assert (=> b!3934620 m!4501615))

(declare-fun m!4501617 () Bool)

(assert (=> b!3934620 m!4501617))

(assert (=> d!1166535 d!1166707))

(declare-fun d!1166709 () Bool)

(declare-fun c!683613 () Bool)

(assert (=> d!1166709 (= c!683613 (is-Nil!41771 suffixTokens!72))))

(declare-fun e!2434238 () (Set Token!12184))

(assert (=> d!1166709 (= (content!6296 suffixTokens!72) e!2434238)))

(declare-fun b!3934621 () Bool)

(assert (=> b!3934621 (= e!2434238 (as set.empty (Set Token!12184)))))

(declare-fun b!3934622 () Bool)

(assert (=> b!3934622 (= e!2434238 (set.union (set.insert (h!47191 suffixTokens!72) (as set.empty (Set Token!12184))) (content!6296 (t!325944 suffixTokens!72))))))

(assert (= (and d!1166709 c!683613) b!3934621))

(assert (= (and d!1166709 (not c!683613)) b!3934622))

(declare-fun m!4501619 () Bool)

(assert (=> b!3934622 m!4501619))

(declare-fun m!4501621 () Bool)

(assert (=> b!3934622 m!4501621))

(assert (=> d!1166535 d!1166709))

(declare-fun d!1166711 () Bool)

(declare-fun res!1592144 () Bool)

(declare-fun e!2434239 () Bool)

(assert (=> d!1166711 (=> (not res!1592144) (not e!2434239))))

(assert (=> d!1166711 (= res!1592144 (not (isEmpty!24907 (originalCharacters!7123 (h!47191 (t!325944 prefixTokens!80))))))))

(assert (=> d!1166711 (= (inv!55969 (h!47191 (t!325944 prefixTokens!80))) e!2434239)))

(declare-fun b!3934623 () Bool)

(declare-fun res!1592145 () Bool)

(assert (=> b!3934623 (=> (not res!1592145) (not e!2434239))))

(assert (=> b!3934623 (= res!1592145 (= (originalCharacters!7123 (h!47191 (t!325944 prefixTokens!80))) (list!15520 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (value!206541 (h!47191 (t!325944 prefixTokens!80)))))))))

(declare-fun b!3934624 () Bool)

(assert (=> b!3934624 (= e!2434239 (= (size!31337 (h!47191 (t!325944 prefixTokens!80))) (size!31338 (originalCharacters!7123 (h!47191 (t!325944 prefixTokens!80))))))))

(assert (= (and d!1166711 res!1592144) b!3934623))

(assert (= (and b!3934623 res!1592145) b!3934624))

(declare-fun b_lambda!115091 () Bool)

(assert (=> (not b_lambda!115091) (not b!3934623)))

(declare-fun t!326049 () Bool)

(declare-fun tb!235421 () Bool)

(assert (=> (and b!3933781 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) t!326049) tb!235421))

(declare-fun b!3934625 () Bool)

(declare-fun e!2434240 () Bool)

(declare-fun tp!1197515 () Bool)

(assert (=> b!3934625 (= e!2434240 (and (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (value!206541 (h!47191 (t!325944 prefixTokens!80)))))) tp!1197515))))

(declare-fun result!285242 () Bool)

(assert (=> tb!235421 (= result!285242 (and (inv!55976 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (value!206541 (h!47191 (t!325944 prefixTokens!80))))) e!2434240))))

(assert (= tb!235421 b!3934625))

(declare-fun m!4501623 () Bool)

(assert (=> b!3934625 m!4501623))

(declare-fun m!4501625 () Bool)

(assert (=> tb!235421 m!4501625))

(assert (=> b!3934623 t!326049))

(declare-fun b_and!300371 () Bool)

(assert (= b_and!300343 (and (=> t!326049 result!285242) b_and!300371)))

(declare-fun t!326051 () Bool)

(declare-fun tb!235423 () Bool)

(assert (=> (and b!3934496 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) t!326051) tb!235423))

(declare-fun result!285244 () Bool)

(assert (= result!285244 result!285242))

(assert (=> b!3934623 t!326051))

(declare-fun b_and!300373 () Bool)

(assert (= b_and!300357 (and (=> t!326051 result!285244) b_and!300373)))

(declare-fun tb!235425 () Bool)

(declare-fun t!326053 () Bool)

(assert (=> (and b!3934446 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) t!326053) tb!235425))

(declare-fun result!285246 () Bool)

(assert (= result!285246 result!285242))

(assert (=> b!3934623 t!326053))

(declare-fun b_and!300375 () Bool)

(assert (= b_and!300349 (and (=> t!326053 result!285246) b_and!300375)))

(declare-fun t!326055 () Bool)

(declare-fun tb!235427 () Bool)

(assert (=> (and b!3933775 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) t!326055) tb!235427))

(declare-fun result!285248 () Bool)

(assert (= result!285248 result!285242))

(assert (=> b!3934623 t!326055))

(declare-fun b_and!300377 () Bool)

(assert (= b_and!300341 (and (=> t!326055 result!285248) b_and!300377)))

(declare-fun t!326057 () Bool)

(declare-fun tb!235429 () Bool)

(assert (=> (and b!3933750 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) t!326057) tb!235429))

(declare-fun result!285250 () Bool)

(assert (= result!285250 result!285242))

(assert (=> b!3934623 t!326057))

(declare-fun b_and!300379 () Bool)

(assert (= b_and!300345 (and (=> t!326057 result!285250) b_and!300379)))

(declare-fun t!326059 () Bool)

(declare-fun tb!235431 () Bool)

(assert (=> (and b!3934466 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) t!326059) tb!235431))

(declare-fun result!285252 () Bool)

(assert (= result!285252 result!285242))

(assert (=> b!3934623 t!326059))

(declare-fun b_and!300381 () Bool)

(assert (= b_and!300353 (and (=> t!326059 result!285252) b_and!300381)))

(declare-fun m!4501627 () Bool)

(assert (=> d!1166711 m!4501627))

(declare-fun m!4501629 () Bool)

(assert (=> b!3934623 m!4501629))

(assert (=> b!3934623 m!4501629))

(declare-fun m!4501631 () Bool)

(assert (=> b!3934623 m!4501631))

(declare-fun m!4501633 () Bool)

(assert (=> b!3934624 m!4501633))

(assert (=> b!3934493 d!1166711))

(declare-fun d!1166713 () Bool)

(declare-fun lt!1375244 () Int)

(assert (=> d!1166713 (>= lt!1375244 0)))

(declare-fun e!2434241 () Int)

(assert (=> d!1166713 (= lt!1375244 e!2434241)))

(declare-fun c!683614 () Bool)

(assert (=> d!1166713 (= c!683614 (is-Nil!41770 (originalCharacters!7123 (h!47191 suffixTokens!72))))))

(assert (=> d!1166713 (= (size!31338 (originalCharacters!7123 (h!47191 suffixTokens!72))) lt!1375244)))

(declare-fun b!3934626 () Bool)

(assert (=> b!3934626 (= e!2434241 0)))

(declare-fun b!3934627 () Bool)

(assert (=> b!3934627 (= e!2434241 (+ 1 (size!31338 (t!325943 (originalCharacters!7123 (h!47191 suffixTokens!72))))))))

(assert (= (and d!1166713 c!683614) b!3934626))

(assert (= (and d!1166713 (not c!683614)) b!3934627))

(declare-fun m!4501635 () Bool)

(assert (=> b!3934627 m!4501635))

(assert (=> b!3934201 d!1166713))

(declare-fun b!3934630 () Bool)

(declare-fun e!2434243 () Bool)

(assert (=> b!3934630 (= e!2434243 (isPrefix!3618 (tail!6082 (tail!6082 lt!1374817)) (tail!6082 (tail!6082 prefix!426))))))

(declare-fun b!3934629 () Bool)

(declare-fun res!1592147 () Bool)

(assert (=> b!3934629 (=> (not res!1592147) (not e!2434243))))

(assert (=> b!3934629 (= res!1592147 (= (head!8357 (tail!6082 lt!1374817)) (head!8357 (tail!6082 prefix!426))))))

(declare-fun b!3934631 () Bool)

(declare-fun e!2434242 () Bool)

(assert (=> b!3934631 (= e!2434242 (>= (size!31338 (tail!6082 prefix!426)) (size!31338 (tail!6082 lt!1374817))))))

(declare-fun d!1166715 () Bool)

(assert (=> d!1166715 e!2434242))

(declare-fun res!1592148 () Bool)

(assert (=> d!1166715 (=> res!1592148 e!2434242)))

(declare-fun lt!1375245 () Bool)

(assert (=> d!1166715 (= res!1592148 (not lt!1375245))))

(declare-fun e!2434244 () Bool)

(assert (=> d!1166715 (= lt!1375245 e!2434244)))

(declare-fun res!1592149 () Bool)

(assert (=> d!1166715 (=> res!1592149 e!2434244)))

(assert (=> d!1166715 (= res!1592149 (is-Nil!41770 (tail!6082 lt!1374817)))))

(assert (=> d!1166715 (= (isPrefix!3618 (tail!6082 lt!1374817) (tail!6082 prefix!426)) lt!1375245)))

(declare-fun b!3934628 () Bool)

(assert (=> b!3934628 (= e!2434244 e!2434243)))

(declare-fun res!1592146 () Bool)

(assert (=> b!3934628 (=> (not res!1592146) (not e!2434243))))

(assert (=> b!3934628 (= res!1592146 (not (is-Nil!41770 (tail!6082 prefix!426))))))

(assert (= (and d!1166715 (not res!1592149)) b!3934628))

(assert (= (and b!3934628 res!1592146) b!3934629))

(assert (= (and b!3934629 res!1592147) b!3934630))

(assert (= (and d!1166715 (not res!1592148)) b!3934631))

(assert (=> b!3934630 m!4500929))

(declare-fun m!4501637 () Bool)

(assert (=> b!3934630 m!4501637))

(assert (=> b!3934630 m!4500663))

(declare-fun m!4501639 () Bool)

(assert (=> b!3934630 m!4501639))

(assert (=> b!3934630 m!4501637))

(assert (=> b!3934630 m!4501639))

(declare-fun m!4501641 () Bool)

(assert (=> b!3934630 m!4501641))

(assert (=> b!3934629 m!4500929))

(declare-fun m!4501643 () Bool)

(assert (=> b!3934629 m!4501643))

(assert (=> b!3934629 m!4500663))

(declare-fun m!4501645 () Bool)

(assert (=> b!3934629 m!4501645))

(assert (=> b!3934631 m!4500663))

(declare-fun m!4501647 () Bool)

(assert (=> b!3934631 m!4501647))

(assert (=> b!3934631 m!4500929))

(declare-fun m!4501649 () Bool)

(assert (=> b!3934631 m!4501649))

(assert (=> b!3934369 d!1166715))

(declare-fun d!1166717 () Bool)

(assert (=> d!1166717 (= (tail!6082 lt!1374817) (t!325943 lt!1374817))))

(assert (=> b!3934369 d!1166717))

(declare-fun d!1166719 () Bool)

(assert (=> d!1166719 (= (tail!6082 prefix!426) (t!325943 prefix!426))))

(assert (=> b!3934369 d!1166719))

(declare-fun b!3934632 () Bool)

(declare-fun e!2434246 () List!41894)

(assert (=> b!3934632 (= e!2434246 lt!1374988)))

(declare-fun b!3934633 () Bool)

(assert (=> b!3934633 (= e!2434246 (Cons!41770 (h!47190 lt!1374817) (++!10804 (t!325943 lt!1374817) lt!1374988)))))

(declare-fun b!3934634 () Bool)

(declare-fun res!1592151 () Bool)

(declare-fun e!2434245 () Bool)

(assert (=> b!3934634 (=> (not res!1592151) (not e!2434245))))

(declare-fun lt!1375246 () List!41894)

(assert (=> b!3934634 (= res!1592151 (= (size!31338 lt!1375246) (+ (size!31338 lt!1374817) (size!31338 lt!1374988))))))

(declare-fun d!1166721 () Bool)

(assert (=> d!1166721 e!2434245))

(declare-fun res!1592150 () Bool)

(assert (=> d!1166721 (=> (not res!1592150) (not e!2434245))))

(assert (=> d!1166721 (= res!1592150 (= (content!6295 lt!1375246) (set.union (content!6295 lt!1374817) (content!6295 lt!1374988))))))

(assert (=> d!1166721 (= lt!1375246 e!2434246)))

(declare-fun c!683615 () Bool)

(assert (=> d!1166721 (= c!683615 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166721 (= (++!10804 lt!1374817 lt!1374988) lt!1375246)))

(declare-fun b!3934635 () Bool)

(assert (=> b!3934635 (= e!2434245 (or (not (= lt!1374988 Nil!41770)) (= lt!1375246 lt!1374817)))))

(assert (= (and d!1166721 c!683615) b!3934632))

(assert (= (and d!1166721 (not c!683615)) b!3934633))

(assert (= (and d!1166721 res!1592150) b!3934634))

(assert (= (and b!3934634 res!1592151) b!3934635))

(declare-fun m!4501651 () Bool)

(assert (=> b!3934633 m!4501651))

(declare-fun m!4501653 () Bool)

(assert (=> b!3934634 m!4501653))

(assert (=> b!3934634 m!4500447))

(declare-fun m!4501655 () Bool)

(assert (=> b!3934634 m!4501655))

(declare-fun m!4501657 () Bool)

(assert (=> d!1166721 m!4501657))

(assert (=> d!1166721 m!4500657))

(declare-fun m!4501659 () Bool)

(assert (=> d!1166721 m!4501659))

(assert (=> d!1166385 d!1166721))

(assert (=> d!1166385 d!1166623))

(assert (=> d!1166385 d!1166453))

(declare-fun d!1166723 () Bool)

(declare-fun nullableFct!1131 (Regex!11428) Bool)

(assert (=> d!1166723 (= (nullable!4005 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (nullableFct!1131 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(declare-fun bs!586374 () Bool)

(assert (= bs!586374 d!1166723))

(declare-fun m!4501661 () Bool)

(assert (=> bs!586374 m!4501661))

(assert (=> b!3934141 d!1166723))

(declare-fun d!1166725 () Bool)

(declare-fun lt!1375247 () Int)

(assert (=> d!1166725 (>= lt!1375247 0)))

(declare-fun e!2434247 () Int)

(assert (=> d!1166725 (= lt!1375247 e!2434247)))

(declare-fun c!683616 () Bool)

(assert (=> d!1166725 (= c!683616 (is-Nil!41770 (_2!23659 lt!1375012)))))

(assert (=> d!1166725 (= (size!31338 (_2!23659 lt!1375012)) lt!1375247)))

(declare-fun b!3934636 () Bool)

(assert (=> b!3934636 (= e!2434247 0)))

(declare-fun b!3934637 () Bool)

(assert (=> b!3934637 (= e!2434247 (+ 1 (size!31338 (t!325943 (_2!23659 lt!1375012)))))))

(assert (= (and d!1166725 c!683616) b!3934636))

(assert (= (and d!1166725 (not c!683616)) b!3934637))

(declare-fun m!4501663 () Bool)

(assert (=> b!3934637 m!4501663))

(assert (=> b!3934060 d!1166725))

(assert (=> b!3934060 d!1166553))

(declare-fun b!3934638 () Bool)

(declare-fun e!2434249 () List!41894)

(assert (=> b!3934638 (= e!2434249 lt!1374797)))

(declare-fun b!3934639 () Bool)

(assert (=> b!3934639 (= e!2434249 (Cons!41770 (h!47190 (t!325943 lt!1374817)) (++!10804 (t!325943 (t!325943 lt!1374817)) lt!1374797)))))

(declare-fun b!3934640 () Bool)

(declare-fun res!1592153 () Bool)

(declare-fun e!2434248 () Bool)

(assert (=> b!3934640 (=> (not res!1592153) (not e!2434248))))

(declare-fun lt!1375248 () List!41894)

(assert (=> b!3934640 (= res!1592153 (= (size!31338 lt!1375248) (+ (size!31338 (t!325943 lt!1374817)) (size!31338 lt!1374797))))))

(declare-fun d!1166727 () Bool)

(assert (=> d!1166727 e!2434248))

(declare-fun res!1592152 () Bool)

(assert (=> d!1166727 (=> (not res!1592152) (not e!2434248))))

(assert (=> d!1166727 (= res!1592152 (= (content!6295 lt!1375248) (set.union (content!6295 (t!325943 lt!1374817)) (content!6295 lt!1374797))))))

(assert (=> d!1166727 (= lt!1375248 e!2434249)))

(declare-fun c!683617 () Bool)

(assert (=> d!1166727 (= c!683617 (is-Nil!41770 (t!325943 lt!1374817)))))

(assert (=> d!1166727 (= (++!10804 (t!325943 lt!1374817) lt!1374797) lt!1375248)))

(declare-fun b!3934641 () Bool)

(assert (=> b!3934641 (= e!2434248 (or (not (= lt!1374797 Nil!41770)) (= lt!1375248 (t!325943 lt!1374817))))))

(assert (= (and d!1166727 c!683617) b!3934638))

(assert (= (and d!1166727 (not c!683617)) b!3934639))

(assert (= (and d!1166727 res!1592152) b!3934640))

(assert (= (and b!3934640 res!1592153) b!3934641))

(declare-fun m!4501665 () Bool)

(assert (=> b!3934639 m!4501665))

(declare-fun m!4501667 () Bool)

(assert (=> b!3934640 m!4501667))

(assert (=> b!3934640 m!4500873))

(assert (=> b!3934640 m!4500779))

(declare-fun m!4501669 () Bool)

(assert (=> d!1166727 m!4501669))

(declare-fun m!4501671 () Bool)

(assert (=> d!1166727 m!4501671))

(assert (=> d!1166727 m!4500783))

(assert (=> b!3934063 d!1166727))

(declare-fun d!1166729 () Bool)

(assert (=> d!1166729 (= (isEmpty!24905 (_1!23659 lt!1375166)) (is-Nil!41771 (_1!23659 lt!1375166)))))

(assert (=> b!3934362 d!1166729))

(declare-fun d!1166731 () Bool)

(assert (=> d!1166731 (= (get!13805 lt!1375154) (v!39270 lt!1375154))))

(assert (=> b!3934346 d!1166731))

(declare-fun d!1166733 () Bool)

(assert (=> d!1166733 (= (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375154))))) (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154))))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375154))))))))

(declare-fun b_lambda!115093 () Bool)

(assert (=> (not b_lambda!115093) (not d!1166733)))

(declare-fun tb!235433 () Bool)

(declare-fun t!326061 () Bool)

(assert (=> (and b!3934496 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326061) tb!235433))

(declare-fun result!285254 () Bool)

(assert (=> tb!235433 (= result!285254 (inv!21 (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154))))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375154)))))))))

(declare-fun m!4501673 () Bool)

(assert (=> tb!235433 m!4501673))

(assert (=> d!1166733 t!326061))

(declare-fun b_and!300383 () Bool)

(assert (= b_and!300355 (and (=> t!326061 result!285254) b_and!300383)))

(declare-fun t!326063 () Bool)

(declare-fun tb!235435 () Bool)

(assert (=> (and b!3934466 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326063) tb!235435))

(declare-fun result!285256 () Bool)

(assert (= result!285256 result!285254))

(assert (=> d!1166733 t!326063))

(declare-fun b_and!300385 () Bool)

(assert (= b_and!300351 (and (=> t!326063 result!285256) b_and!300385)))

(declare-fun t!326065 () Bool)

(declare-fun tb!235437 () Bool)

(assert (=> (and b!3934446 (= (toValue!8979 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326065) tb!235437))

(declare-fun result!285258 () Bool)

(assert (= result!285258 result!285254))

(assert (=> d!1166733 t!326065))

(declare-fun b_and!300387 () Bool)

(assert (= b_and!300347 (and (=> t!326065 result!285258) b_and!300387)))

(declare-fun tb!235439 () Bool)

(declare-fun t!326067 () Bool)

(assert (=> (and b!3933750 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326067) tb!235439))

(declare-fun result!285260 () Bool)

(assert (= result!285260 result!285254))

(assert (=> d!1166733 t!326067))

(declare-fun b_and!300389 () Bool)

(assert (= b_and!300321 (and (=> t!326067 result!285260) b_and!300389)))

(declare-fun tb!235441 () Bool)

(declare-fun t!326069 () Bool)

(assert (=> (and b!3933781 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326069) tb!235441))

(declare-fun result!285262 () Bool)

(assert (= result!285262 result!285254))

(assert (=> d!1166733 t!326069))

(declare-fun b_and!300391 () Bool)

(assert (= b_and!300319 (and (=> t!326069 result!285262) b_and!300391)))

(declare-fun tb!235443 () Bool)

(declare-fun t!326071 () Bool)

(assert (=> (and b!3933775 (= (toValue!8979 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326071) tb!235443))

(declare-fun result!285264 () Bool)

(assert (= result!285264 result!285254))

(assert (=> d!1166733 t!326071))

(declare-fun b_and!300393 () Bool)

(assert (= b_and!300317 (and (=> t!326071 result!285264) b_and!300393)))

(assert (=> d!1166733 m!4501283))

(declare-fun m!4501675 () Bool)

(assert (=> d!1166733 m!4501675))

(assert (=> b!3934346 d!1166733))

(declare-fun d!1166735 () Bool)

(assert (=> d!1166735 (= (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375154)))) (fromListB!2213 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375154)))))))

(declare-fun bs!586375 () Bool)

(assert (= bs!586375 d!1166735))

(declare-fun m!4501677 () Bool)

(assert (=> bs!586375 m!4501677))

(assert (=> b!3934346 d!1166735))

(declare-fun d!1166737 () Bool)

(declare-fun lt!1375251 () Bool)

(declare-fun content!6299 (List!41896) (Set Rule!12846))

(assert (=> d!1166737 (= lt!1375251 (set.member (rule!9473 (_1!23660 (get!13805 lt!1375210))) (content!6299 rules!2768)))))

(declare-fun e!2434255 () Bool)

(assert (=> d!1166737 (= lt!1375251 e!2434255)))

(declare-fun res!1592158 () Bool)

(assert (=> d!1166737 (=> (not res!1592158) (not e!2434255))))

(assert (=> d!1166737 (= res!1592158 (is-Cons!41772 rules!2768))))

(assert (=> d!1166737 (= (contains!8369 rules!2768 (rule!9473 (_1!23660 (get!13805 lt!1375210)))) lt!1375251)))

(declare-fun b!3934646 () Bool)

(declare-fun e!2434256 () Bool)

(assert (=> b!3934646 (= e!2434255 e!2434256)))

(declare-fun res!1592159 () Bool)

(assert (=> b!3934646 (=> res!1592159 e!2434256)))

(assert (=> b!3934646 (= res!1592159 (= (h!47192 rules!2768) (rule!9473 (_1!23660 (get!13805 lt!1375210)))))))

(declare-fun b!3934647 () Bool)

(assert (=> b!3934647 (= e!2434256 (contains!8369 (t!325945 rules!2768) (rule!9473 (_1!23660 (get!13805 lt!1375210)))))))

(assert (= (and d!1166737 res!1592158) b!3934646))

(assert (= (and b!3934646 (not res!1592159)) b!3934647))

(declare-fun m!4501679 () Bool)

(assert (=> d!1166737 m!4501679))

(declare-fun m!4501681 () Bool)

(assert (=> d!1166737 m!4501681))

(declare-fun m!4501683 () Bool)

(assert (=> b!3934647 m!4501683))

(assert (=> b!3934427 d!1166737))

(declare-fun d!1166739 () Bool)

(assert (=> d!1166739 (= (get!13805 lt!1375210) (v!39270 lt!1375210))))

(assert (=> b!3934427 d!1166739))

(declare-fun d!1166741 () Bool)

(declare-fun charsToInt!0 (List!41893) (_ BitVec 32))

(assert (=> d!1166741 (= (inv!16 (value!206541 (h!47191 prefixTokens!80))) (= (charsToInt!0 (text!47718 (value!206541 (h!47191 prefixTokens!80)))) (value!206532 (value!206541 (h!47191 prefixTokens!80)))))))

(declare-fun bs!586376 () Bool)

(assert (= bs!586376 d!1166741))

(declare-fun m!4501685 () Bool)

(assert (=> bs!586376 m!4501685))

(assert (=> b!3934433 d!1166741))

(declare-fun d!1166743 () Bool)

(assert (=> d!1166743 (= (head!8357 lt!1374817) (h!47190 lt!1374817))))

(assert (=> b!3934144 d!1166743))

(declare-fun d!1166745 () Bool)

(assert (=> d!1166745 (= (head!8357 lt!1374790) (h!47190 lt!1374790))))

(assert (=> b!3934144 d!1166745))

(declare-fun d!1166747 () Bool)

(declare-fun c!683620 () Bool)

(assert (=> d!1166747 (= c!683620 (is-Nil!41770 lt!1375092))))

(declare-fun e!2434259 () (Set C!23042))

(assert (=> d!1166747 (= (content!6295 lt!1375092) e!2434259)))

(declare-fun b!3934652 () Bool)

(assert (=> b!3934652 (= e!2434259 (as set.empty (Set C!23042)))))

(declare-fun b!3934653 () Bool)

(assert (=> b!3934653 (= e!2434259 (set.union (set.insert (h!47190 lt!1375092) (as set.empty (Set C!23042))) (content!6295 (t!325943 lt!1375092))))))

(assert (= (and d!1166747 c!683620) b!3934652))

(assert (= (and d!1166747 (not c!683620)) b!3934653))

(declare-fun m!4501687 () Bool)

(assert (=> b!3934653 m!4501687))

(declare-fun m!4501689 () Bool)

(assert (=> b!3934653 m!4501689))

(assert (=> d!1166531 d!1166747))

(declare-fun d!1166749 () Bool)

(declare-fun c!683621 () Bool)

(assert (=> d!1166749 (= c!683621 (is-Nil!41770 lt!1374784))))

(declare-fun e!2434260 () (Set C!23042))

(assert (=> d!1166749 (= (content!6295 lt!1374784) e!2434260)))

(declare-fun b!3934654 () Bool)

(assert (=> b!3934654 (= e!2434260 (as set.empty (Set C!23042)))))

(declare-fun b!3934655 () Bool)

(assert (=> b!3934655 (= e!2434260 (set.union (set.insert (h!47190 lt!1374784) (as set.empty (Set C!23042))) (content!6295 (t!325943 lt!1374784))))))

(assert (= (and d!1166749 c!683621) b!3934654))

(assert (= (and d!1166749 (not c!683621)) b!3934655))

(declare-fun m!4501691 () Bool)

(assert (=> b!3934655 m!4501691))

(declare-fun m!4501693 () Bool)

(assert (=> b!3934655 m!4501693))

(assert (=> d!1166531 d!1166749))

(declare-fun d!1166751 () Bool)

(declare-fun c!683622 () Bool)

(assert (=> d!1166751 (= c!683622 (is-Nil!41770 suffix!1176))))

(declare-fun e!2434261 () (Set C!23042))

(assert (=> d!1166751 (= (content!6295 suffix!1176) e!2434261)))

(declare-fun b!3934656 () Bool)

(assert (=> b!3934656 (= e!2434261 (as set.empty (Set C!23042)))))

(declare-fun b!3934657 () Bool)

(assert (=> b!3934657 (= e!2434261 (set.union (set.insert (h!47190 suffix!1176) (as set.empty (Set C!23042))) (content!6295 (t!325943 suffix!1176))))))

(assert (= (and d!1166751 c!683622) b!3934656))

(assert (= (and d!1166751 (not c!683622)) b!3934657))

(declare-fun m!4501695 () Bool)

(assert (=> b!3934657 m!4501695))

(declare-fun m!4501697 () Bool)

(assert (=> b!3934657 m!4501697))

(assert (=> d!1166531 d!1166751))

(declare-fun d!1166753 () Bool)

(assert (=> d!1166753 true))

(declare-fun lambda!126597 () Int)

(declare-fun order!22309 () Int)

(declare-fun dynLambda!17902 (Int Int) Int)

(assert (=> d!1166753 (< (dynLambda!17901 order!22307 (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) (dynLambda!17902 order!22309 lambda!126597))))

(declare-fun Forall2!1049 (Int) Bool)

(assert (=> d!1166753 (= (equivClasses!2703 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) (Forall2!1049 lambda!126597))))

(declare-fun bs!586377 () Bool)

(assert (= bs!586377 d!1166753))

(declare-fun m!4501699 () Bool)

(assert (=> bs!586377 m!4501699))

(assert (=> b!3934086 d!1166753))

(declare-fun d!1166755 () Bool)

(declare-fun c!683623 () Bool)

(assert (=> d!1166755 (= c!683623 (is-Nil!41771 lt!1374998))))

(declare-fun e!2434264 () (Set Token!12184))

(assert (=> d!1166755 (= (content!6296 lt!1374998) e!2434264)))

(declare-fun b!3934662 () Bool)

(assert (=> b!3934662 (= e!2434264 (as set.empty (Set Token!12184)))))

(declare-fun b!3934663 () Bool)

(assert (=> b!3934663 (= e!2434264 (set.union (set.insert (h!47191 lt!1374998) (as set.empty (Set Token!12184))) (content!6296 (t!325944 lt!1374998))))))

(assert (= (and d!1166755 c!683623) b!3934662))

(assert (= (and d!1166755 (not c!683623)) b!3934663))

(declare-fun m!4501701 () Bool)

(assert (=> b!3934663 m!4501701))

(declare-fun m!4501703 () Bool)

(assert (=> b!3934663 m!4501703))

(assert (=> d!1166403 d!1166755))

(assert (=> d!1166403 d!1166701))

(declare-fun d!1166757 () Bool)

(declare-fun c!683624 () Bool)

(assert (=> d!1166757 (= c!683624 (is-Nil!41771 lt!1374801))))

(declare-fun e!2434265 () (Set Token!12184))

(assert (=> d!1166757 (= (content!6296 lt!1374801) e!2434265)))

(declare-fun b!3934664 () Bool)

(assert (=> b!3934664 (= e!2434265 (as set.empty (Set Token!12184)))))

(declare-fun b!3934665 () Bool)

(assert (=> b!3934665 (= e!2434265 (set.union (set.insert (h!47191 lt!1374801) (as set.empty (Set Token!12184))) (content!6296 (t!325944 lt!1374801))))))

(assert (= (and d!1166757 c!683624) b!3934664))

(assert (= (and d!1166757 (not c!683624)) b!3934665))

(declare-fun m!4501705 () Bool)

(assert (=> b!3934665 m!4501705))

(declare-fun m!4501707 () Bool)

(assert (=> b!3934665 m!4501707))

(assert (=> d!1166403 d!1166757))

(declare-fun d!1166759 () Bool)

(declare-fun lt!1375252 () Int)

(assert (=> d!1166759 (>= lt!1375252 0)))

(declare-fun e!2434266 () Int)

(assert (=> d!1166759 (= lt!1375252 e!2434266)))

(declare-fun c!683625 () Bool)

(assert (=> d!1166759 (= c!683625 (is-Nil!41770 (t!325943 (_2!23660 (v!39270 lt!1374800)))))))

(assert (=> d!1166759 (= (size!31338 (t!325943 (_2!23660 (v!39270 lt!1374800)))) lt!1375252)))

(declare-fun b!3934666 () Bool)

(assert (=> b!3934666 (= e!2434266 0)))

(declare-fun b!3934667 () Bool)

(assert (=> b!3934667 (= e!2434266 (+ 1 (size!31338 (t!325943 (t!325943 (_2!23660 (v!39270 lt!1374800)))))))))

(assert (= (and d!1166759 c!683625) b!3934666))

(assert (= (and d!1166759 (not c!683625)) b!3934667))

(declare-fun m!4501709 () Bool)

(assert (=> b!3934667 m!4501709))

(assert (=> b!3933959 d!1166759))

(declare-fun d!1166761 () Bool)

(declare-fun lt!1375253 () Int)

(assert (=> d!1166761 (>= lt!1375253 0)))

(declare-fun e!2434267 () Int)

(assert (=> d!1166761 (= lt!1375253 e!2434267)))

(declare-fun c!683626 () Bool)

(assert (=> d!1166761 (= c!683626 (is-Nil!41770 (t!325943 (_2!23660 lt!1374780))))))

(assert (=> d!1166761 (= (size!31338 (t!325943 (_2!23660 lt!1374780))) lt!1375253)))

(declare-fun b!3934668 () Bool)

(assert (=> b!3934668 (= e!2434267 0)))

(declare-fun b!3934669 () Bool)

(assert (=> b!3934669 (= e!2434267 (+ 1 (size!31338 (t!325943 (t!325943 (_2!23660 lt!1374780))))))))

(assert (= (and d!1166761 c!683626) b!3934668))

(assert (= (and d!1166761 (not c!683626)) b!3934669))

(declare-fun m!4501711 () Bool)

(assert (=> b!3934669 m!4501711))

(assert (=> b!3934238 d!1166761))

(assert (=> d!1166617 d!1166615))

(declare-fun d!1166763 () Bool)

(assert (=> d!1166763 (= (lexList!1880 thiss!20629 rules!2768 lt!1374813) (tuple2!41051 lt!1374778 Nil!41770))))

(assert (=> d!1166763 true))

(declare-fun _$42!345 () Unit!60236)

(assert (=> d!1166763 (= (choose!23444 thiss!20629 rules!2768 lt!1374813 suffix!1176 lt!1374778 suffixTokens!72 suffixResult!91) _$42!345)))

(declare-fun bs!586378 () Bool)

(assert (= bs!586378 d!1166763))

(assert (=> bs!586378 m!4500355))

(assert (=> d!1166617 d!1166763))

(assert (=> d!1166617 d!1166643))

(declare-fun bs!586379 () Bool)

(declare-fun d!1166765 () Bool)

(assert (= bs!586379 (and d!1166765 d!1166697)))

(declare-fun lambda!126598 () Int)

(assert (=> bs!586379 (= (and (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) (= (toValue!8979 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))))) (= lambda!126598 lambda!126594))))

(assert (=> d!1166765 true))

(assert (=> d!1166765 (< (dynLambda!17899 order!22303 (toChars!8838 (transformation!6523 (h!47192 rules!2768)))) (dynLambda!17900 order!22305 lambda!126598))))

(assert (=> d!1166765 true))

(assert (=> d!1166765 (< (dynLambda!17901 order!22307 (toValue!8979 (transformation!6523 (h!47192 rules!2768)))) (dynLambda!17900 order!22305 lambda!126598))))

(assert (=> d!1166765 (= (semiInverseModEq!2804 (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (h!47192 rules!2768)))) (Forall!1450 lambda!126598))))

(declare-fun bs!586380 () Bool)

(assert (= bs!586380 d!1166765))

(declare-fun m!4501713 () Bool)

(assert (=> bs!586380 m!4501713))

(assert (=> d!1166529 d!1166765))

(declare-fun b!3934698 () Bool)

(declare-fun res!1592180 () Bool)

(declare-fun e!2434287 () Bool)

(assert (=> b!3934698 (=> res!1592180 e!2434287)))

(assert (=> b!3934698 (= res!1592180 (not (isEmpty!24907 (tail!6082 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))))))))

(declare-fun b!3934699 () Bool)

(assert (=> b!3934699 (= e!2434287 (not (= (head!8357 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))) (c!683464 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))))

(declare-fun b!3934700 () Bool)

(declare-fun res!1592184 () Bool)

(declare-fun e!2434283 () Bool)

(assert (=> b!3934700 (=> res!1592184 e!2434283)))

(declare-fun e!2434286 () Bool)

(assert (=> b!3934700 (= res!1592184 e!2434286)))

(declare-fun res!1592178 () Bool)

(assert (=> b!3934700 (=> (not res!1592178) (not e!2434286))))

(declare-fun lt!1375256 () Bool)

(assert (=> b!3934700 (= res!1592178 lt!1375256)))

(declare-fun b!3934701 () Bool)

(declare-fun e!2434284 () Bool)

(assert (=> b!3934701 (= e!2434284 e!2434287)))

(declare-fun res!1592182 () Bool)

(assert (=> b!3934701 (=> res!1592182 e!2434287)))

(declare-fun call!284909 () Bool)

(assert (=> b!3934701 (= res!1592182 call!284909)))

(declare-fun b!3934702 () Bool)

(declare-fun e!2434285 () Bool)

(declare-fun e!2434288 () Bool)

(assert (=> b!3934702 (= e!2434285 e!2434288)))

(declare-fun c!683633 () Bool)

(assert (=> b!3934702 (= c!683633 (is-EmptyLang!11428 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(declare-fun b!3934703 () Bool)

(declare-fun e!2434282 () Bool)

(assert (=> b!3934703 (= e!2434282 (nullable!4005 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(declare-fun b!3934705 () Bool)

(declare-fun res!1592181 () Bool)

(assert (=> b!3934705 (=> (not res!1592181) (not e!2434286))))

(assert (=> b!3934705 (= res!1592181 (isEmpty!24907 (tail!6082 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154)))))))))

(declare-fun b!3934706 () Bool)

(assert (=> b!3934706 (= e!2434288 (not lt!1375256))))

(declare-fun b!3934707 () Bool)

(declare-fun derivativeStep!3453 (Regex!11428 C!23042) Regex!11428)

(assert (=> b!3934707 (= e!2434282 (matchR!5486 (derivativeStep!3453 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (head!8357 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154)))))) (tail!6082 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154)))))))))

(declare-fun b!3934708 () Bool)

(declare-fun res!1592183 () Bool)

(assert (=> b!3934708 (=> res!1592183 e!2434283)))

(assert (=> b!3934708 (= res!1592183 (not (is-ElementMatch!11428 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))))

(assert (=> b!3934708 (= e!2434288 e!2434283)))

(declare-fun b!3934709 () Bool)

(assert (=> b!3934709 (= e!2434285 (= lt!1375256 call!284909))))

(declare-fun b!3934710 () Bool)

(declare-fun res!1592185 () Bool)

(assert (=> b!3934710 (=> (not res!1592185) (not e!2434286))))

(assert (=> b!3934710 (= res!1592185 (not call!284909))))

(declare-fun bm!284904 () Bool)

(assert (=> bm!284904 (= call!284909 (isEmpty!24907 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))))))

(declare-fun b!3934711 () Bool)

(assert (=> b!3934711 (= e!2434283 e!2434284)))

(declare-fun res!1592179 () Bool)

(assert (=> b!3934711 (=> (not res!1592179) (not e!2434284))))

(assert (=> b!3934711 (= res!1592179 (not lt!1375256))))

(declare-fun d!1166767 () Bool)

(assert (=> d!1166767 e!2434285))

(declare-fun c!683635 () Bool)

(assert (=> d!1166767 (= c!683635 (is-EmptyExpr!11428 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(assert (=> d!1166767 (= lt!1375256 e!2434282)))

(declare-fun c!683634 () Bool)

(assert (=> d!1166767 (= c!683634 (isEmpty!24907 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))))))

(assert (=> d!1166767 (validRegex!5204 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))

(assert (=> d!1166767 (= (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))) lt!1375256)))

(declare-fun b!3934704 () Bool)

(assert (=> b!3934704 (= e!2434286 (= (head!8357 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))) (c!683464 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))))

(assert (= (and d!1166767 c!683634) b!3934703))

(assert (= (and d!1166767 (not c!683634)) b!3934707))

(assert (= (and d!1166767 c!683635) b!3934709))

(assert (= (and d!1166767 (not c!683635)) b!3934702))

(assert (= (and b!3934702 c!683633) b!3934706))

(assert (= (and b!3934702 (not c!683633)) b!3934708))

(assert (= (and b!3934708 (not res!1592183)) b!3934700))

(assert (= (and b!3934700 res!1592178) b!3934710))

(assert (= (and b!3934710 res!1592185) b!3934705))

(assert (= (and b!3934705 res!1592181) b!3934704))

(assert (= (and b!3934700 (not res!1592184)) b!3934711))

(assert (= (and b!3934711 res!1592179) b!3934701))

(assert (= (and b!3934701 (not res!1592182)) b!3934698))

(assert (= (and b!3934698 (not res!1592180)) b!3934699))

(assert (= (or b!3934709 b!3934701 b!3934710) bm!284904))

(assert (=> b!3934707 m!4501279))

(declare-fun m!4501715 () Bool)

(assert (=> b!3934707 m!4501715))

(assert (=> b!3934707 m!4501715))

(declare-fun m!4501717 () Bool)

(assert (=> b!3934707 m!4501717))

(assert (=> b!3934707 m!4501279))

(declare-fun m!4501719 () Bool)

(assert (=> b!3934707 m!4501719))

(assert (=> b!3934707 m!4501717))

(assert (=> b!3934707 m!4501719))

(declare-fun m!4501721 () Bool)

(assert (=> b!3934707 m!4501721))

(assert (=> b!3934704 m!4501279))

(assert (=> b!3934704 m!4501715))

(assert (=> b!3934698 m!4501279))

(assert (=> b!3934698 m!4501719))

(assert (=> b!3934698 m!4501719))

(declare-fun m!4501723 () Bool)

(assert (=> b!3934698 m!4501723))

(assert (=> b!3934703 m!4500927))

(assert (=> b!3934699 m!4501279))

(assert (=> b!3934699 m!4501715))

(assert (=> d!1166767 m!4501279))

(declare-fun m!4501725 () Bool)

(assert (=> d!1166767 m!4501725))

(assert (=> d!1166767 m!4500925))

(assert (=> bm!284904 m!4501279))

(assert (=> bm!284904 m!4501725))

(assert (=> b!3934705 m!4501279))

(assert (=> b!3934705 m!4501719))

(assert (=> b!3934705 m!4501719))

(assert (=> b!3934705 m!4501723))

(assert (=> b!3934341 d!1166767))

(declare-fun d!1166769 () Bool)

(assert (=> d!1166769 (= (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154)))) (list!15522 (c!683465 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))))))

(declare-fun bs!586381 () Bool)

(assert (= bs!586381 d!1166769))

(declare-fun m!4501727 () Bool)

(assert (=> bs!586381 m!4501727))

(assert (=> b!3934341 d!1166769))

(declare-fun d!1166771 () Bool)

(declare-fun lt!1375257 () BalanceConc!25062)

(assert (=> d!1166771 (= (list!15520 lt!1375257) (originalCharacters!7123 (_1!23660 (get!13805 lt!1375154))))))

(assert (=> d!1166771 (= lt!1375257 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154))))) (value!206541 (_1!23660 (get!13805 lt!1375154)))))))

(assert (=> d!1166771 (= (charsOf!4347 (_1!23660 (get!13805 lt!1375154))) lt!1375257)))

(declare-fun b_lambda!115095 () Bool)

(assert (=> (not b_lambda!115095) (not d!1166771)))

(declare-fun tb!235445 () Bool)

(declare-fun t!326073 () Bool)

(assert (=> (and b!3933781 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326073) tb!235445))

(declare-fun b!3934712 () Bool)

(declare-fun e!2434289 () Bool)

(declare-fun tp!1197516 () Bool)

(assert (=> b!3934712 (= e!2434289 (and (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154))))) (value!206541 (_1!23660 (get!13805 lt!1375154)))))) tp!1197516))))

(declare-fun result!285266 () Bool)

(assert (=> tb!235445 (= result!285266 (and (inv!55976 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154))))) (value!206541 (_1!23660 (get!13805 lt!1375154))))) e!2434289))))

(assert (= tb!235445 b!3934712))

(declare-fun m!4501729 () Bool)

(assert (=> b!3934712 m!4501729))

(declare-fun m!4501731 () Bool)

(assert (=> tb!235445 m!4501731))

(assert (=> d!1166771 t!326073))

(declare-fun b_and!300395 () Bool)

(assert (= b_and!300371 (and (=> t!326073 result!285266) b_and!300395)))

(declare-fun t!326075 () Bool)

(declare-fun tb!235447 () Bool)

(assert (=> (and b!3933775 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326075) tb!235447))

(declare-fun result!285268 () Bool)

(assert (= result!285268 result!285266))

(assert (=> d!1166771 t!326075))

(declare-fun b_and!300397 () Bool)

(assert (= b_and!300377 (and (=> t!326075 result!285268) b_and!300397)))

(declare-fun t!326077 () Bool)

(declare-fun tb!235449 () Bool)

(assert (=> (and b!3934496 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326077) tb!235449))

(declare-fun result!285270 () Bool)

(assert (= result!285270 result!285266))

(assert (=> d!1166771 t!326077))

(declare-fun b_and!300399 () Bool)

(assert (= b_and!300373 (and (=> t!326077 result!285270) b_and!300399)))

(declare-fun tb!235451 () Bool)

(declare-fun t!326079 () Bool)

(assert (=> (and b!3933750 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326079) tb!235451))

(declare-fun result!285272 () Bool)

(assert (= result!285272 result!285266))

(assert (=> d!1166771 t!326079))

(declare-fun b_and!300401 () Bool)

(assert (= b_and!300379 (and (=> t!326079 result!285272) b_and!300401)))

(declare-fun tb!235453 () Bool)

(declare-fun t!326081 () Bool)

(assert (=> (and b!3934466 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326081) tb!235453))

(declare-fun result!285274 () Bool)

(assert (= result!285274 result!285266))

(assert (=> d!1166771 t!326081))

(declare-fun b_and!300403 () Bool)

(assert (= b_and!300381 (and (=> t!326081 result!285274) b_and!300403)))

(declare-fun t!326083 () Bool)

(declare-fun tb!235455 () Bool)

(assert (=> (and b!3934446 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326083) tb!235455))

(declare-fun result!285276 () Bool)

(assert (= result!285276 result!285266))

(assert (=> d!1166771 t!326083))

(declare-fun b_and!300405 () Bool)

(assert (= b_and!300375 (and (=> t!326083 result!285276) b_and!300405)))

(declare-fun m!4501733 () Bool)

(assert (=> d!1166771 m!4501733))

(declare-fun m!4501735 () Bool)

(assert (=> d!1166771 m!4501735))

(assert (=> b!3934341 d!1166771))

(assert (=> b!3934341 d!1166731))

(declare-fun d!1166773 () Bool)

(declare-fun e!2434291 () Bool)

(assert (=> d!1166773 e!2434291))

(declare-fun res!1592190 () Bool)

(assert (=> d!1166773 (=> res!1592190 e!2434291)))

(declare-fun lt!1375259 () Option!8943)

(assert (=> d!1166773 (= res!1592190 (isEmpty!24912 lt!1375259))))

(declare-fun e!2434292 () Option!8943)

(assert (=> d!1166773 (= lt!1375259 e!2434292)))

(declare-fun c!683636 () Bool)

(assert (=> d!1166773 (= c!683636 (and (is-Cons!41772 (t!325945 rules!2768)) (is-Nil!41772 (t!325945 (t!325945 rules!2768)))))))

(declare-fun lt!1375260 () Unit!60236)

(declare-fun lt!1375262 () Unit!60236)

(assert (=> d!1166773 (= lt!1375260 lt!1375262)))

(assert (=> d!1166773 (isPrefix!3618 lt!1374783 lt!1374783)))

(assert (=> d!1166773 (= lt!1375262 (lemmaIsPrefixRefl!2284 lt!1374783 lt!1374783))))

(assert (=> d!1166773 (rulesValidInductive!2354 thiss!20629 (t!325945 rules!2768))))

(assert (=> d!1166773 (= (maxPrefix!3416 thiss!20629 (t!325945 rules!2768) lt!1374783) lt!1375259)))

(declare-fun b!3934713 () Bool)

(declare-fun res!1592186 () Bool)

(declare-fun e!2434290 () Bool)

(assert (=> b!3934713 (=> (not res!1592186) (not e!2434290))))

(assert (=> b!3934713 (= res!1592186 (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375259)))) (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375259))))))))

(declare-fun b!3934714 () Bool)

(declare-fun lt!1375258 () Option!8943)

(declare-fun lt!1375261 () Option!8943)

(assert (=> b!3934714 (= e!2434292 (ite (and (is-None!8942 lt!1375258) (is-None!8942 lt!1375261)) None!8942 (ite (is-None!8942 lt!1375261) lt!1375258 (ite (is-None!8942 lt!1375258) lt!1375261 (ite (>= (size!31337 (_1!23660 (v!39270 lt!1375258))) (size!31337 (_1!23660 (v!39270 lt!1375261)))) lt!1375258 lt!1375261)))))))

(declare-fun call!284910 () Option!8943)

(assert (=> b!3934714 (= lt!1375258 call!284910)))

(assert (=> b!3934714 (= lt!1375261 (maxPrefix!3416 thiss!20629 (t!325945 (t!325945 rules!2768)) lt!1374783))))

(declare-fun b!3934715 () Bool)

(declare-fun res!1592188 () Bool)

(assert (=> b!3934715 (=> (not res!1592188) (not e!2434290))))

(assert (=> b!3934715 (= res!1592188 (= (value!206541 (_1!23660 (get!13805 lt!1375259))) (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375259)))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375259)))))))))

(declare-fun bm!284905 () Bool)

(assert (=> bm!284905 (= call!284910 (maxPrefixOneRule!2486 thiss!20629 (h!47192 (t!325945 rules!2768)) lt!1374783))))

(declare-fun b!3934716 () Bool)

(assert (=> b!3934716 (= e!2434292 call!284910)))

(declare-fun b!3934717 () Bool)

(declare-fun res!1592189 () Bool)

(assert (=> b!3934717 (=> (not res!1592189) (not e!2434290))))

(assert (=> b!3934717 (= res!1592189 (= (++!10804 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375259)))) (_2!23660 (get!13805 lt!1375259))) lt!1374783))))

(declare-fun b!3934718 () Bool)

(assert (=> b!3934718 (= e!2434290 (contains!8369 (t!325945 rules!2768) (rule!9473 (_1!23660 (get!13805 lt!1375259)))))))

(declare-fun b!3934719 () Bool)

(declare-fun res!1592191 () Bool)

(assert (=> b!3934719 (=> (not res!1592191) (not e!2434290))))

(assert (=> b!3934719 (= res!1592191 (< (size!31338 (_2!23660 (get!13805 lt!1375259))) (size!31338 lt!1374783)))))

(declare-fun b!3934720 () Bool)

(declare-fun res!1592187 () Bool)

(assert (=> b!3934720 (=> (not res!1592187) (not e!2434290))))

(assert (=> b!3934720 (= res!1592187 (= (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375259)))) (originalCharacters!7123 (_1!23660 (get!13805 lt!1375259)))))))

(declare-fun b!3934721 () Bool)

(assert (=> b!3934721 (= e!2434291 e!2434290)))

(declare-fun res!1592192 () Bool)

(assert (=> b!3934721 (=> (not res!1592192) (not e!2434290))))

(assert (=> b!3934721 (= res!1592192 (isDefined!6953 lt!1375259))))

(assert (= (and d!1166773 c!683636) b!3934716))

(assert (= (and d!1166773 (not c!683636)) b!3934714))

(assert (= (or b!3934716 b!3934714) bm!284905))

(assert (= (and d!1166773 (not res!1592190)) b!3934721))

(assert (= (and b!3934721 res!1592192) b!3934720))

(assert (= (and b!3934720 res!1592187) b!3934719))

(assert (= (and b!3934719 res!1592191) b!3934717))

(assert (= (and b!3934717 res!1592189) b!3934715))

(assert (= (and b!3934715 res!1592188) b!3934713))

(assert (= (and b!3934713 res!1592186) b!3934718))

(declare-fun m!4501737 () Bool)

(assert (=> b!3934717 m!4501737))

(declare-fun m!4501739 () Bool)

(assert (=> b!3934717 m!4501739))

(assert (=> b!3934717 m!4501739))

(declare-fun m!4501741 () Bool)

(assert (=> b!3934717 m!4501741))

(assert (=> b!3934717 m!4501741))

(declare-fun m!4501743 () Bool)

(assert (=> b!3934717 m!4501743))

(declare-fun m!4501745 () Bool)

(assert (=> bm!284905 m!4501745))

(assert (=> b!3934713 m!4501737))

(assert (=> b!3934713 m!4501739))

(assert (=> b!3934713 m!4501739))

(assert (=> b!3934713 m!4501741))

(assert (=> b!3934713 m!4501741))

(declare-fun m!4501747 () Bool)

(assert (=> b!3934713 m!4501747))

(assert (=> b!3934718 m!4501737))

(declare-fun m!4501749 () Bool)

(assert (=> b!3934718 m!4501749))

(declare-fun m!4501751 () Bool)

(assert (=> d!1166773 m!4501751))

(assert (=> d!1166773 m!4501431))

(assert (=> d!1166773 m!4501433))

(declare-fun m!4501753 () Bool)

(assert (=> d!1166773 m!4501753))

(assert (=> b!3934720 m!4501737))

(assert (=> b!3934720 m!4501739))

(assert (=> b!3934720 m!4501739))

(assert (=> b!3934720 m!4501741))

(assert (=> b!3934719 m!4501737))

(declare-fun m!4501755 () Bool)

(assert (=> b!3934719 m!4501755))

(assert (=> b!3934719 m!4500371))

(declare-fun m!4501757 () Bool)

(assert (=> b!3934714 m!4501757))

(assert (=> b!3934715 m!4501737))

(declare-fun m!4501759 () Bool)

(assert (=> b!3934715 m!4501759))

(assert (=> b!3934715 m!4501759))

(declare-fun m!4501761 () Bool)

(assert (=> b!3934715 m!4501761))

(declare-fun m!4501763 () Bool)

(assert (=> b!3934721 m!4501763))

(assert (=> b!3934423 d!1166773))

(declare-fun d!1166775 () Bool)

(assert (=> d!1166775 (= (isEmpty!24905 (_1!23659 lt!1375160)) (is-Nil!41771 (_1!23659 lt!1375160)))))

(assert (=> b!3934350 d!1166775))

(assert (=> b!3934345 d!1166731))

(declare-fun d!1166777 () Bool)

(declare-fun lt!1375263 () Int)

(assert (=> d!1166777 (>= lt!1375263 0)))

(declare-fun e!2434293 () Int)

(assert (=> d!1166777 (= lt!1375263 e!2434293)))

(declare-fun c!683637 () Bool)

(assert (=> d!1166777 (= c!683637 (is-Nil!41770 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375154)))))))

(assert (=> d!1166777 (= (size!31338 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375154)))) lt!1375263)))

(declare-fun b!3934722 () Bool)

(assert (=> b!3934722 (= e!2434293 0)))

(declare-fun b!3934723 () Bool)

(assert (=> b!3934723 (= e!2434293 (+ 1 (size!31338 (t!325943 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375154)))))))))

(assert (= (and d!1166777 c!683637) b!3934722))

(assert (= (and d!1166777 (not c!683637)) b!3934723))

(declare-fun m!4501765 () Bool)

(assert (=> b!3934723 m!4501765))

(assert (=> b!3934345 d!1166777))

(declare-fun b!3934724 () Bool)

(declare-fun e!2434295 () List!41894)

(assert (=> b!3934724 (= e!2434295 (_2!23660 (get!13805 lt!1375210)))))

(declare-fun b!3934725 () Bool)

(assert (=> b!3934725 (= e!2434295 (Cons!41770 (h!47190 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))) (++!10804 (t!325943 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))) (_2!23660 (get!13805 lt!1375210)))))))

(declare-fun b!3934726 () Bool)

(declare-fun res!1592194 () Bool)

(declare-fun e!2434294 () Bool)

(assert (=> b!3934726 (=> (not res!1592194) (not e!2434294))))

(declare-fun lt!1375264 () List!41894)

(assert (=> b!3934726 (= res!1592194 (= (size!31338 lt!1375264) (+ (size!31338 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))) (size!31338 (_2!23660 (get!13805 lt!1375210))))))))

(declare-fun d!1166779 () Bool)

(assert (=> d!1166779 e!2434294))

(declare-fun res!1592193 () Bool)

(assert (=> d!1166779 (=> (not res!1592193) (not e!2434294))))

(assert (=> d!1166779 (= res!1592193 (= (content!6295 lt!1375264) (set.union (content!6295 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))) (content!6295 (_2!23660 (get!13805 lt!1375210))))))))

(assert (=> d!1166779 (= lt!1375264 e!2434295)))

(declare-fun c!683638 () Bool)

(assert (=> d!1166779 (= c!683638 (is-Nil!41770 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))))))

(assert (=> d!1166779 (= (++!10804 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210)))) (_2!23660 (get!13805 lt!1375210))) lt!1375264)))

(declare-fun b!3934727 () Bool)

(assert (=> b!3934727 (= e!2434294 (or (not (= (_2!23660 (get!13805 lt!1375210)) Nil!41770)) (= lt!1375264 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210)))))))))

(assert (= (and d!1166779 c!683638) b!3934724))

(assert (= (and d!1166779 (not c!683638)) b!3934725))

(assert (= (and d!1166779 res!1592193) b!3934726))

(assert (= (and b!3934726 res!1592194) b!3934727))

(declare-fun m!4501767 () Bool)

(assert (=> b!3934725 m!4501767))

(declare-fun m!4501769 () Bool)

(assert (=> b!3934726 m!4501769))

(assert (=> b!3934726 m!4501419))

(declare-fun m!4501771 () Bool)

(assert (=> b!3934726 m!4501771))

(assert (=> b!3934726 m!4501437))

(declare-fun m!4501773 () Bool)

(assert (=> d!1166779 m!4501773))

(assert (=> d!1166779 m!4501419))

(declare-fun m!4501775 () Bool)

(assert (=> d!1166779 m!4501775))

(declare-fun m!4501777 () Bool)

(assert (=> d!1166779 m!4501777))

(assert (=> b!3934426 d!1166779))

(declare-fun d!1166781 () Bool)

(assert (=> d!1166781 (= (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210)))) (list!15522 (c!683465 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))))))

(declare-fun bs!586382 () Bool)

(assert (= bs!586382 d!1166781))

(declare-fun m!4501779 () Bool)

(assert (=> bs!586382 m!4501779))

(assert (=> b!3934426 d!1166781))

(declare-fun d!1166783 () Bool)

(declare-fun lt!1375265 () BalanceConc!25062)

(assert (=> d!1166783 (= (list!15520 lt!1375265) (originalCharacters!7123 (_1!23660 (get!13805 lt!1375210))))))

(assert (=> d!1166783 (= lt!1375265 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210))))) (value!206541 (_1!23660 (get!13805 lt!1375210)))))))

(assert (=> d!1166783 (= (charsOf!4347 (_1!23660 (get!13805 lt!1375210))) lt!1375265)))

(declare-fun b_lambda!115097 () Bool)

(assert (=> (not b_lambda!115097) (not d!1166783)))

(declare-fun t!326085 () Bool)

(declare-fun tb!235457 () Bool)

(assert (=> (and b!3933750 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326085) tb!235457))

(declare-fun b!3934728 () Bool)

(declare-fun e!2434296 () Bool)

(declare-fun tp!1197517 () Bool)

(assert (=> b!3934728 (= e!2434296 (and (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210))))) (value!206541 (_1!23660 (get!13805 lt!1375210)))))) tp!1197517))))

(declare-fun result!285278 () Bool)

(assert (=> tb!235457 (= result!285278 (and (inv!55976 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210))))) (value!206541 (_1!23660 (get!13805 lt!1375210))))) e!2434296))))

(assert (= tb!235457 b!3934728))

(declare-fun m!4501781 () Bool)

(assert (=> b!3934728 m!4501781))

(declare-fun m!4501783 () Bool)

(assert (=> tb!235457 m!4501783))

(assert (=> d!1166783 t!326085))

(declare-fun b_and!300407 () Bool)

(assert (= b_and!300401 (and (=> t!326085 result!285278) b_and!300407)))

(declare-fun tb!235459 () Bool)

(declare-fun t!326087 () Bool)

(assert (=> (and b!3934466 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326087) tb!235459))

(declare-fun result!285280 () Bool)

(assert (= result!285280 result!285278))

(assert (=> d!1166783 t!326087))

(declare-fun b_and!300409 () Bool)

(assert (= b_and!300403 (and (=> t!326087 result!285280) b_and!300409)))

(declare-fun tb!235461 () Bool)

(declare-fun t!326089 () Bool)

(assert (=> (and b!3934496 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326089) tb!235461))

(declare-fun result!285282 () Bool)

(assert (= result!285282 result!285278))

(assert (=> d!1166783 t!326089))

(declare-fun b_and!300411 () Bool)

(assert (= b_and!300399 (and (=> t!326089 result!285282) b_and!300411)))

(declare-fun t!326091 () Bool)

(declare-fun tb!235463 () Bool)

(assert (=> (and b!3933781 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326091) tb!235463))

(declare-fun result!285284 () Bool)

(assert (= result!285284 result!285278))

(assert (=> d!1166783 t!326091))

(declare-fun b_and!300413 () Bool)

(assert (= b_and!300395 (and (=> t!326091 result!285284) b_and!300413)))

(declare-fun t!326093 () Bool)

(declare-fun tb!235465 () Bool)

(assert (=> (and b!3934446 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326093) tb!235465))

(declare-fun result!285286 () Bool)

(assert (= result!285286 result!285278))

(assert (=> d!1166783 t!326093))

(declare-fun b_and!300415 () Bool)

(assert (= b_and!300405 (and (=> t!326093 result!285286) b_and!300415)))

(declare-fun t!326095 () Bool)

(declare-fun tb!235467 () Bool)

(assert (=> (and b!3933775 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326095) tb!235467))

(declare-fun result!285288 () Bool)

(assert (= result!285288 result!285278))

(assert (=> d!1166783 t!326095))

(declare-fun b_and!300417 () Bool)

(assert (= b_and!300397 (and (=> t!326095 result!285288) b_and!300417)))

(declare-fun m!4501785 () Bool)

(assert (=> d!1166783 m!4501785))

(declare-fun m!4501787 () Bool)

(assert (=> d!1166783 m!4501787))

(assert (=> b!3934426 d!1166783))

(assert (=> b!3934426 d!1166739))

(declare-fun bs!586383 () Bool)

(declare-fun d!1166785 () Bool)

(assert (= bs!586383 (and d!1166785 d!1166753)))

(declare-fun lambda!126599 () Int)

(assert (=> bs!586383 (= (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) (= lambda!126599 lambda!126597))))

(assert (=> d!1166785 true))

(assert (=> d!1166785 (< (dynLambda!17901 order!22307 (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) (dynLambda!17902 order!22309 lambda!126599))))

(assert (=> d!1166785 (= (equivClasses!2703 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) (Forall2!1049 lambda!126599))))

(declare-fun bs!586384 () Bool)

(assert (= bs!586384 d!1166785))

(declare-fun m!4501789 () Bool)

(assert (=> bs!586384 m!4501789))

(assert (=> b!3933995 d!1166785))

(declare-fun d!1166787 () Bool)

(assert (=> d!1166787 (= (list!15520 lt!1375069) (list!15522 (c!683465 lt!1375069)))))

(declare-fun bs!586385 () Bool)

(assert (= bs!586385 d!1166787))

(declare-fun m!4501791 () Bool)

(assert (=> bs!586385 m!4501791))

(assert (=> d!1166487 d!1166787))

(declare-fun d!1166789 () Bool)

(declare-fun lt!1375266 () Int)

(assert (=> d!1166789 (>= lt!1375266 0)))

(declare-fun e!2434297 () Int)

(assert (=> d!1166789 (= lt!1375266 e!2434297)))

(declare-fun c!683639 () Bool)

(assert (=> d!1166789 (= c!683639 (is-Nil!41770 (originalCharacters!7123 (h!47191 prefixTokens!80))))))

(assert (=> d!1166789 (= (size!31338 (originalCharacters!7123 (h!47191 prefixTokens!80))) lt!1375266)))

(declare-fun b!3934729 () Bool)

(assert (=> b!3934729 (= e!2434297 0)))

(declare-fun b!3934730 () Bool)

(assert (=> b!3934730 (= e!2434297 (+ 1 (size!31338 (t!325943 (originalCharacters!7123 (h!47191 prefixTokens!80))))))))

(assert (= (and d!1166789 c!683639) b!3934729))

(assert (= (and d!1166789 (not c!683639)) b!3934730))

(declare-fun m!4501793 () Bool)

(assert (=> b!3934730 m!4501793))

(assert (=> b!3934356 d!1166789))

(declare-fun d!1166791 () Bool)

(assert (=> d!1166791 (= (head!8357 lt!1374813) (h!47190 lt!1374813))))

(assert (=> b!3934118 d!1166791))

(declare-fun d!1166793 () Bool)

(assert (=> d!1166793 (= (head!8357 (_2!23660 (v!39270 lt!1374800))) (h!47190 (_2!23660 (v!39270 lt!1374800))))))

(assert (=> b!3934118 d!1166793))

(assert (=> d!1166457 d!1166477))

(declare-fun d!1166795 () Bool)

(assert (=> d!1166795 (ruleValid!2471 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))

(assert (=> d!1166795 true))

(declare-fun _$65!1383 () Unit!60236)

(assert (=> d!1166795 (= (choose!23430 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))) rules!2768) _$65!1383)))

(declare-fun bs!586386 () Bool)

(assert (= bs!586386 d!1166795))

(assert (=> bs!586386 m!4500471))

(assert (=> d!1166457 d!1166795))

(declare-fun d!1166797 () Bool)

(declare-fun lt!1375267 () Bool)

(assert (=> d!1166797 (= lt!1375267 (set.member (rule!9473 (_1!23660 (v!39270 lt!1374800))) (content!6299 rules!2768)))))

(declare-fun e!2434298 () Bool)

(assert (=> d!1166797 (= lt!1375267 e!2434298)))

(declare-fun res!1592195 () Bool)

(assert (=> d!1166797 (=> (not res!1592195) (not e!2434298))))

(assert (=> d!1166797 (= res!1592195 (is-Cons!41772 rules!2768))))

(assert (=> d!1166797 (= (contains!8369 rules!2768 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) lt!1375267)))

(declare-fun b!3934731 () Bool)

(declare-fun e!2434299 () Bool)

(assert (=> b!3934731 (= e!2434298 e!2434299)))

(declare-fun res!1592196 () Bool)

(assert (=> b!3934731 (=> res!1592196 e!2434299)))

(assert (=> b!3934731 (= res!1592196 (= (h!47192 rules!2768) (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))

(declare-fun b!3934732 () Bool)

(assert (=> b!3934732 (= e!2434299 (contains!8369 (t!325945 rules!2768) (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))

(assert (= (and d!1166797 res!1592195) b!3934731))

(assert (= (and b!3934731 (not res!1592196)) b!3934732))

(assert (=> d!1166797 m!4501679))

(declare-fun m!4501795 () Bool)

(assert (=> d!1166797 m!4501795))

(declare-fun m!4501797 () Bool)

(assert (=> b!3934732 m!4501797))

(assert (=> d!1166457 d!1166797))

(declare-fun b!3934733 () Bool)

(declare-fun e!2434301 () List!41894)

(assert (=> b!3934733 (= e!2434301 suffix!1176)))

(declare-fun b!3934734 () Bool)

(assert (=> b!3934734 (= e!2434301 (Cons!41770 (h!47190 (t!325943 lt!1374784)) (++!10804 (t!325943 (t!325943 lt!1374784)) suffix!1176)))))

(declare-fun b!3934735 () Bool)

(declare-fun res!1592198 () Bool)

(declare-fun e!2434300 () Bool)

(assert (=> b!3934735 (=> (not res!1592198) (not e!2434300))))

(declare-fun lt!1375268 () List!41894)

(assert (=> b!3934735 (= res!1592198 (= (size!31338 lt!1375268) (+ (size!31338 (t!325943 lt!1374784)) (size!31338 suffix!1176))))))

(declare-fun d!1166799 () Bool)

(assert (=> d!1166799 e!2434300))

(declare-fun res!1592197 () Bool)

(assert (=> d!1166799 (=> (not res!1592197) (not e!2434300))))

(assert (=> d!1166799 (= res!1592197 (= (content!6295 lt!1375268) (set.union (content!6295 (t!325943 lt!1374784)) (content!6295 suffix!1176))))))

(assert (=> d!1166799 (= lt!1375268 e!2434301)))

(declare-fun c!683640 () Bool)

(assert (=> d!1166799 (= c!683640 (is-Nil!41770 (t!325943 lt!1374784)))))

(assert (=> d!1166799 (= (++!10804 (t!325943 lt!1374784) suffix!1176) lt!1375268)))

(declare-fun b!3934736 () Bool)

(assert (=> b!3934736 (= e!2434300 (or (not (= suffix!1176 Nil!41770)) (= lt!1375268 (t!325943 lt!1374784))))))

(assert (= (and d!1166799 c!683640) b!3934733))

(assert (= (and d!1166799 (not c!683640)) b!3934734))

(assert (= (and d!1166799 res!1592197) b!3934735))

(assert (= (and b!3934735 res!1592198) b!3934736))

(declare-fun m!4501799 () Bool)

(assert (=> b!3934734 m!4501799))

(declare-fun m!4501801 () Bool)

(assert (=> b!3934735 m!4501801))

(declare-fun m!4501803 () Bool)

(assert (=> b!3934735 m!4501803))

(assert (=> b!3934735 m!4500315))

(declare-fun m!4501805 () Bool)

(assert (=> d!1166799 m!4501805))

(assert (=> d!1166799 m!4501693))

(assert (=> d!1166799 m!4500797))

(assert (=> b!3934213 d!1166799))

(declare-fun b!3934746 () Bool)

(declare-fun e!2434306 () List!41894)

(declare-fun e!2434307 () List!41894)

(assert (=> b!3934746 (= e!2434306 e!2434307)))

(declare-fun c!683646 () Bool)

(assert (=> b!3934746 (= c!683646 (is-Leaf!19703 (c!683465 (charsOf!4347 (_1!23660 (v!39270 lt!1374800))))))))

(declare-fun d!1166801 () Bool)

(declare-fun c!683645 () Bool)

(assert (=> d!1166801 (= c!683645 (is-Empty!12734 (c!683465 (charsOf!4347 (_1!23660 (v!39270 lt!1374800))))))))

(assert (=> d!1166801 (= (list!15522 (c!683465 (charsOf!4347 (_1!23660 (v!39270 lt!1374800))))) e!2434306)))

(declare-fun b!3934748 () Bool)

(assert (=> b!3934748 (= e!2434307 (++!10804 (list!15522 (left!31850 (c!683465 (charsOf!4347 (_1!23660 (v!39270 lt!1374800)))))) (list!15522 (right!32180 (c!683465 (charsOf!4347 (_1!23660 (v!39270 lt!1374800))))))))))

(declare-fun b!3934745 () Bool)

(assert (=> b!3934745 (= e!2434306 Nil!41770)))

(declare-fun b!3934747 () Bool)

(declare-fun list!15524 (IArray!25473) List!41894)

(assert (=> b!3934747 (= e!2434307 (list!15524 (xs!16040 (c!683465 (charsOf!4347 (_1!23660 (v!39270 lt!1374800)))))))))

(assert (= (and d!1166801 c!683645) b!3934745))

(assert (= (and d!1166801 (not c!683645)) b!3934746))

(assert (= (and b!3934746 c!683646) b!3934747))

(assert (= (and b!3934746 (not c!683646)) b!3934748))

(declare-fun m!4501807 () Bool)

(assert (=> b!3934748 m!4501807))

(declare-fun m!4501809 () Bool)

(assert (=> b!3934748 m!4501809))

(assert (=> b!3934748 m!4501807))

(assert (=> b!3934748 m!4501809))

(declare-fun m!4501811 () Bool)

(assert (=> b!3934748 m!4501811))

(declare-fun m!4501813 () Bool)

(assert (=> b!3934747 m!4501813))

(assert (=> d!1166463 d!1166801))

(declare-fun d!1166803 () Bool)

(declare-fun e!2434308 () Bool)

(assert (=> d!1166803 e!2434308))

(declare-fun res!1592199 () Bool)

(assert (=> d!1166803 (=> (not res!1592199) (not e!2434308))))

(declare-fun lt!1375269 () List!41895)

(assert (=> d!1166803 (= res!1592199 (= (content!6296 lt!1375269) (set.union (content!6296 (t!325944 lt!1374792)) (content!6296 (_1!23659 lt!1374768)))))))

(declare-fun e!2434309 () List!41895)

(assert (=> d!1166803 (= lt!1375269 e!2434309)))

(declare-fun c!683647 () Bool)

(assert (=> d!1166803 (= c!683647 (is-Nil!41771 (t!325944 lt!1374792)))))

(assert (=> d!1166803 (= (++!10803 (t!325944 lt!1374792) (_1!23659 lt!1374768)) lt!1375269)))

(declare-fun b!3934752 () Bool)

(assert (=> b!3934752 (= e!2434308 (or (not (= (_1!23659 lt!1374768) Nil!41771)) (= lt!1375269 (t!325944 lt!1374792))))))

(declare-fun b!3934751 () Bool)

(declare-fun res!1592200 () Bool)

(assert (=> b!3934751 (=> (not res!1592200) (not e!2434308))))

(assert (=> b!3934751 (= res!1592200 (= (size!31341 lt!1375269) (+ (size!31341 (t!325944 lt!1374792)) (size!31341 (_1!23659 lt!1374768)))))))

(declare-fun b!3934749 () Bool)

(assert (=> b!3934749 (= e!2434309 (_1!23659 lt!1374768))))

(declare-fun b!3934750 () Bool)

(assert (=> b!3934750 (= e!2434309 (Cons!41771 (h!47191 (t!325944 lt!1374792)) (++!10803 (t!325944 (t!325944 lt!1374792)) (_1!23659 lt!1374768))))))

(assert (= (and d!1166803 c!683647) b!3934749))

(assert (= (and d!1166803 (not c!683647)) b!3934750))

(assert (= (and d!1166803 res!1592199) b!3934751))

(assert (= (and b!3934751 res!1592200) b!3934752))

(declare-fun m!4501815 () Bool)

(assert (=> d!1166803 m!4501815))

(assert (=> d!1166803 m!4501605))

(assert (=> d!1166803 m!4501029))

(declare-fun m!4501817 () Bool)

(assert (=> b!3934751 m!4501817))

(declare-fun m!4501819 () Bool)

(assert (=> b!3934751 m!4501819))

(assert (=> b!3934751 m!4501033))

(declare-fun m!4501821 () Bool)

(assert (=> b!3934750 m!4501821))

(assert (=> b!3934178 d!1166803))

(declare-fun d!1166805 () Bool)

(declare-fun lt!1375270 () Int)

(assert (=> d!1166805 (>= lt!1375270 0)))

(declare-fun e!2434310 () Int)

(assert (=> d!1166805 (= lt!1375270 e!2434310)))

(declare-fun c!683648 () Bool)

(assert (=> d!1166805 (= c!683648 (is-Nil!41770 (t!325943 (originalCharacters!7123 (_1!23660 (v!39270 lt!1374800))))))))

(assert (=> d!1166805 (= (size!31338 (t!325943 (originalCharacters!7123 (_1!23660 (v!39270 lt!1374800))))) lt!1375270)))

(declare-fun b!3934753 () Bool)

(assert (=> b!3934753 (= e!2434310 0)))

(declare-fun b!3934754 () Bool)

(assert (=> b!3934754 (= e!2434310 (+ 1 (size!31338 (t!325943 (t!325943 (originalCharacters!7123 (_1!23660 (v!39270 lt!1374800))))))))))

(assert (= (and d!1166805 c!683648) b!3934753))

(assert (= (and d!1166805 (not c!683648)) b!3934754))

(declare-fun m!4501823 () Bool)

(assert (=> b!3934754 m!4501823))

(assert (=> b!3934085 d!1166805))

(declare-fun d!1166807 () Bool)

(declare-fun lt!1375273 () Int)

(assert (=> d!1166807 (>= lt!1375273 0)))

(declare-fun e!2434313 () Int)

(assert (=> d!1166807 (= lt!1375273 e!2434313)))

(declare-fun c!683651 () Bool)

(assert (=> d!1166807 (= c!683651 (is-Nil!41771 lt!1375087))))

(assert (=> d!1166807 (= (size!31341 lt!1375087) lt!1375273)))

(declare-fun b!3934759 () Bool)

(assert (=> b!3934759 (= e!2434313 0)))

(declare-fun b!3934760 () Bool)

(assert (=> b!3934760 (= e!2434313 (+ 1 (size!31341 (t!325944 lt!1375087))))))

(assert (= (and d!1166807 c!683651) b!3934759))

(assert (= (and d!1166807 (not c!683651)) b!3934760))

(declare-fun m!4501825 () Bool)

(assert (=> b!3934760 m!4501825))

(assert (=> b!3934175 d!1166807))

(declare-fun d!1166809 () Bool)

(declare-fun lt!1375274 () Int)

(assert (=> d!1166809 (>= lt!1375274 0)))

(declare-fun e!2434314 () Int)

(assert (=> d!1166809 (= lt!1375274 e!2434314)))

(declare-fun c!683652 () Bool)

(assert (=> d!1166809 (= c!683652 (is-Nil!41771 lt!1374793))))

(assert (=> d!1166809 (= (size!31341 lt!1374793) lt!1375274)))

(declare-fun b!3934761 () Bool)

(assert (=> b!3934761 (= e!2434314 0)))

(declare-fun b!3934762 () Bool)

(assert (=> b!3934762 (= e!2434314 (+ 1 (size!31341 (t!325944 lt!1374793))))))

(assert (= (and d!1166809 c!683652) b!3934761))

(assert (= (and d!1166809 (not c!683652)) b!3934762))

(declare-fun m!4501827 () Bool)

(assert (=> b!3934762 m!4501827))

(assert (=> b!3934175 d!1166809))

(declare-fun d!1166811 () Bool)

(declare-fun lt!1375275 () Int)

(assert (=> d!1166811 (>= lt!1375275 0)))

(declare-fun e!2434315 () Int)

(assert (=> d!1166811 (= lt!1375275 e!2434315)))

(declare-fun c!683653 () Bool)

(assert (=> d!1166811 (= c!683653 (is-Nil!41771 suffixTokens!72))))

(assert (=> d!1166811 (= (size!31341 suffixTokens!72) lt!1375275)))

(declare-fun b!3934763 () Bool)

(assert (=> b!3934763 (= e!2434315 0)))

(declare-fun b!3934764 () Bool)

(assert (=> b!3934764 (= e!2434315 (+ 1 (size!31341 (t!325944 suffixTokens!72))))))

(assert (= (and d!1166811 c!683653) b!3934763))

(assert (= (and d!1166811 (not c!683653)) b!3934764))

(declare-fun m!4501829 () Bool)

(assert (=> b!3934764 m!4501829))

(assert (=> b!3934175 d!1166811))

(declare-fun d!1166813 () Bool)

(declare-fun e!2434316 () Bool)

(assert (=> d!1166813 e!2434316))

(declare-fun res!1592201 () Bool)

(assert (=> d!1166813 (=> (not res!1592201) (not e!2434316))))

(declare-fun lt!1375276 () List!41895)

(assert (=> d!1166813 (= res!1592201 (= (content!6296 lt!1375276) (set.union (content!6296 (t!325944 prefixTokens!80)) (content!6296 suffixTokens!72))))))

(declare-fun e!2434317 () List!41895)

(assert (=> d!1166813 (= lt!1375276 e!2434317)))

(declare-fun c!683654 () Bool)

(assert (=> d!1166813 (= c!683654 (is-Nil!41771 (t!325944 prefixTokens!80)))))

(assert (=> d!1166813 (= (++!10803 (t!325944 prefixTokens!80) suffixTokens!72) lt!1375276)))

(declare-fun b!3934768 () Bool)

(assert (=> b!3934768 (= e!2434316 (or (not (= suffixTokens!72 Nil!41771)) (= lt!1375276 (t!325944 prefixTokens!80))))))

(declare-fun b!3934767 () Bool)

(declare-fun res!1592202 () Bool)

(assert (=> b!3934767 (=> (not res!1592202) (not e!2434316))))

(assert (=> b!3934767 (= res!1592202 (= (size!31341 lt!1375276) (+ (size!31341 (t!325944 prefixTokens!80)) (size!31341 suffixTokens!72))))))

(declare-fun b!3934765 () Bool)

(assert (=> b!3934765 (= e!2434317 suffixTokens!72)))

(declare-fun b!3934766 () Bool)

(assert (=> b!3934766 (= e!2434317 (Cons!41771 (h!47191 (t!325944 prefixTokens!80)) (++!10803 (t!325944 (t!325944 prefixTokens!80)) suffixTokens!72)))))

(assert (= (and d!1166813 c!683654) b!3934765))

(assert (= (and d!1166813 (not c!683654)) b!3934766))

(assert (= (and d!1166813 res!1592201) b!3934767))

(assert (= (and b!3934767 res!1592202) b!3934768))

(declare-fun m!4501831 () Bool)

(assert (=> d!1166813 m!4501831))

(assert (=> d!1166813 m!4501617))

(assert (=> d!1166813 m!4500721))

(declare-fun m!4501833 () Bool)

(assert (=> b!3934767 m!4501833))

(declare-fun m!4501835 () Bool)

(assert (=> b!3934767 m!4501835))

(assert (=> b!3934767 m!4500727))

(declare-fun m!4501837 () Bool)

(assert (=> b!3934766 m!4501837))

(assert (=> b!3934222 d!1166813))

(assert (=> b!3934359 d!1166743))

(declare-fun d!1166815 () Bool)

(assert (=> d!1166815 (= (head!8357 lt!1374769) (h!47190 lt!1374769))))

(assert (=> b!3934359 d!1166815))

(declare-fun b!3934769 () Bool)

(declare-fun e!2434319 () List!41894)

(assert (=> b!3934769 (= e!2434319 lt!1375057)))

(declare-fun b!3934770 () Bool)

(assert (=> b!3934770 (= e!2434319 (Cons!41770 (h!47190 lt!1374817) (++!10804 (t!325943 lt!1374817) lt!1375057)))))

(declare-fun b!3934771 () Bool)

(declare-fun res!1592204 () Bool)

(declare-fun e!2434318 () Bool)

(assert (=> b!3934771 (=> (not res!1592204) (not e!2434318))))

(declare-fun lt!1375277 () List!41894)

(assert (=> b!3934771 (= res!1592204 (= (size!31338 lt!1375277) (+ (size!31338 lt!1374817) (size!31338 lt!1375057))))))

(declare-fun d!1166817 () Bool)

(assert (=> d!1166817 e!2434318))

(declare-fun res!1592203 () Bool)

(assert (=> d!1166817 (=> (not res!1592203) (not e!2434318))))

(assert (=> d!1166817 (= res!1592203 (= (content!6295 lt!1375277) (set.union (content!6295 lt!1374817) (content!6295 lt!1375057))))))

(assert (=> d!1166817 (= lt!1375277 e!2434319)))

(declare-fun c!683655 () Bool)

(assert (=> d!1166817 (= c!683655 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166817 (= (++!10804 lt!1374817 lt!1375057) lt!1375277)))

(declare-fun b!3934772 () Bool)

(assert (=> b!3934772 (= e!2434318 (or (not (= lt!1375057 Nil!41770)) (= lt!1375277 lt!1374817)))))

(assert (= (and d!1166817 c!683655) b!3934769))

(assert (= (and d!1166817 (not c!683655)) b!3934770))

(assert (= (and d!1166817 res!1592203) b!3934771))

(assert (= (and b!3934771 res!1592204) b!3934772))

(declare-fun m!4501839 () Bool)

(assert (=> b!3934770 m!4501839))

(declare-fun m!4501841 () Bool)

(assert (=> b!3934771 m!4501841))

(assert (=> b!3934771 m!4500447))

(declare-fun m!4501843 () Bool)

(assert (=> b!3934771 m!4501843))

(declare-fun m!4501845 () Bool)

(assert (=> d!1166817 m!4501845))

(assert (=> d!1166817 m!4500657))

(declare-fun m!4501847 () Bool)

(assert (=> d!1166817 m!4501847))

(assert (=> d!1166465 d!1166817))

(assert (=> d!1166465 d!1166551))

(assert (=> d!1166465 d!1166453))

(assert (=> b!3934234 d!1166551))

(assert (=> b!3934234 d!1166623))

(declare-fun b!3934773 () Bool)

(declare-fun e!2434322 () Bool)

(declare-fun e!2434320 () Bool)

(assert (=> b!3934773 (= e!2434322 e!2434320)))

(declare-fun c!683656 () Bool)

(assert (=> b!3934773 (= c!683656 (is-IntegerValue!20260 (value!206541 (h!47191 (t!325944 suffixTokens!72)))))))

(declare-fun b!3934774 () Bool)

(assert (=> b!3934774 (= e!2434320 (inv!17 (value!206541 (h!47191 (t!325944 suffixTokens!72)))))))

(declare-fun b!3934775 () Bool)

(assert (=> b!3934775 (= e!2434322 (inv!16 (value!206541 (h!47191 (t!325944 suffixTokens!72)))))))

(declare-fun b!3934776 () Bool)

(declare-fun res!1592205 () Bool)

(declare-fun e!2434321 () Bool)

(assert (=> b!3934776 (=> res!1592205 e!2434321)))

(assert (=> b!3934776 (= res!1592205 (not (is-IntegerValue!20261 (value!206541 (h!47191 (t!325944 suffixTokens!72))))))))

(assert (=> b!3934776 (= e!2434320 e!2434321)))

(declare-fun d!1166819 () Bool)

(declare-fun c!683657 () Bool)

(assert (=> d!1166819 (= c!683657 (is-IntegerValue!20259 (value!206541 (h!47191 (t!325944 suffixTokens!72)))))))

(assert (=> d!1166819 (= (inv!21 (value!206541 (h!47191 (t!325944 suffixTokens!72)))) e!2434322)))

(declare-fun b!3934777 () Bool)

(assert (=> b!3934777 (= e!2434321 (inv!15 (value!206541 (h!47191 (t!325944 suffixTokens!72)))))))

(assert (= (and d!1166819 c!683657) b!3934775))

(assert (= (and d!1166819 (not c!683657)) b!3934773))

(assert (= (and b!3934773 c!683656) b!3934774))

(assert (= (and b!3934773 (not c!683656)) b!3934776))

(assert (= (and b!3934776 (not res!1592205)) b!3934777))

(declare-fun m!4501849 () Bool)

(assert (=> b!3934774 m!4501849))

(declare-fun m!4501851 () Bool)

(assert (=> b!3934775 m!4501851))

(declare-fun m!4501853 () Bool)

(assert (=> b!3934777 m!4501853))

(assert (=> b!3934464 d!1166819))

(assert (=> d!1166619 d!1166605))

(declare-fun d!1166821 () Bool)

(assert (=> d!1166821 (not (= (lexList!1880 thiss!20629 rules!2768 suffix!1176) (tuple2!41051 suffixTokens!72 suffixResult!91)))))

(assert (=> d!1166821 true))

(declare-fun _$44!1331 () Unit!60236)

(assert (=> d!1166821 (= (choose!23427 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1374800)) suffix!1176 suffixTokens!72 suffixResult!91) _$44!1331)))

(declare-fun bs!586387 () Bool)

(assert (= bs!586387 d!1166821))

(assert (=> bs!586387 m!4500321))

(assert (=> d!1166619 d!1166821))

(assert (=> d!1166619 d!1166643))

(declare-fun d!1166823 () Bool)

(declare-fun e!2434323 () Bool)

(assert (=> d!1166823 e!2434323))

(declare-fun res!1592206 () Bool)

(assert (=> d!1166823 (=> (not res!1592206) (not e!2434323))))

(declare-fun lt!1375278 () List!41895)

(assert (=> d!1166823 (= res!1592206 (= (content!6296 lt!1375278) (set.union (content!6296 (t!325944 lt!1374792)) (content!6296 lt!1374801))))))

(declare-fun e!2434324 () List!41895)

(assert (=> d!1166823 (= lt!1375278 e!2434324)))

(declare-fun c!683658 () Bool)

(assert (=> d!1166823 (= c!683658 (is-Nil!41771 (t!325944 lt!1374792)))))

(assert (=> d!1166823 (= (++!10803 (t!325944 lt!1374792) lt!1374801) lt!1375278)))

(declare-fun b!3934781 () Bool)

(assert (=> b!3934781 (= e!2434323 (or (not (= lt!1374801 Nil!41771)) (= lt!1375278 (t!325944 lt!1374792))))))

(declare-fun b!3934780 () Bool)

(declare-fun res!1592207 () Bool)

(assert (=> b!3934780 (=> (not res!1592207) (not e!2434323))))

(assert (=> b!3934780 (= res!1592207 (= (size!31341 lt!1375278) (+ (size!31341 (t!325944 lt!1374792)) (size!31341 lt!1374801))))))

(declare-fun b!3934778 () Bool)

(assert (=> b!3934778 (= e!2434324 lt!1374801)))

(declare-fun b!3934779 () Bool)

(assert (=> b!3934779 (= e!2434324 (Cons!41771 (h!47191 (t!325944 lt!1374792)) (++!10803 (t!325944 (t!325944 lt!1374792)) lt!1374801)))))

(assert (= (and d!1166823 c!683658) b!3934778))

(assert (= (and d!1166823 (not c!683658)) b!3934779))

(assert (= (and d!1166823 res!1592206) b!3934780))

(assert (= (and b!3934780 res!1592207) b!3934781))

(declare-fun m!4501855 () Bool)

(assert (=> d!1166823 m!4501855))

(assert (=> d!1166823 m!4501605))

(assert (=> d!1166823 m!4500707))

(declare-fun m!4501857 () Bool)

(assert (=> b!3934780 m!4501857))

(assert (=> b!3934780 m!4501819))

(assert (=> b!3934780 m!4500713))

(declare-fun m!4501859 () Bool)

(assert (=> b!3934779 m!4501859))

(assert (=> b!3934017 d!1166823))

(declare-fun d!1166825 () Bool)

(assert (=> d!1166825 (= (_2!23660 (v!39270 lt!1374800)) suffix!1176)))

(assert (=> d!1166825 true))

(declare-fun _$63!996 () Unit!60236)

(assert (=> d!1166825 (= (choose!23431 lt!1374817 (_2!23660 (v!39270 lt!1374800)) prefix!426 suffix!1176 lt!1374783) _$63!996)))

(assert (=> d!1166547 d!1166825))

(declare-fun b!3934784 () Bool)

(declare-fun e!2434326 () Bool)

(assert (=> b!3934784 (= e!2434326 (isPrefix!3618 (tail!6082 lt!1374817) (tail!6082 lt!1374783)))))

(declare-fun b!3934783 () Bool)

(declare-fun res!1592209 () Bool)

(assert (=> b!3934783 (=> (not res!1592209) (not e!2434326))))

(assert (=> b!3934783 (= res!1592209 (= (head!8357 lt!1374817) (head!8357 lt!1374783)))))

(declare-fun b!3934785 () Bool)

(declare-fun e!2434325 () Bool)

(assert (=> b!3934785 (= e!2434325 (>= (size!31338 lt!1374783) (size!31338 lt!1374817)))))

(declare-fun d!1166827 () Bool)

(assert (=> d!1166827 e!2434325))

(declare-fun res!1592210 () Bool)

(assert (=> d!1166827 (=> res!1592210 e!2434325)))

(declare-fun lt!1375279 () Bool)

(assert (=> d!1166827 (= res!1592210 (not lt!1375279))))

(declare-fun e!2434327 () Bool)

(assert (=> d!1166827 (= lt!1375279 e!2434327)))

(declare-fun res!1592211 () Bool)

(assert (=> d!1166827 (=> res!1592211 e!2434327)))

(assert (=> d!1166827 (= res!1592211 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166827 (= (isPrefix!3618 lt!1374817 lt!1374783) lt!1375279)))

(declare-fun b!3934782 () Bool)

(assert (=> b!3934782 (= e!2434327 e!2434326)))

(declare-fun res!1592208 () Bool)

(assert (=> b!3934782 (=> (not res!1592208) (not e!2434326))))

(assert (=> b!3934782 (= res!1592208 (not (is-Nil!41770 lt!1374783)))))

(assert (= (and d!1166827 (not res!1592211)) b!3934782))

(assert (= (and b!3934782 res!1592208) b!3934783))

(assert (= (and b!3934783 res!1592209) b!3934784))

(assert (= (and d!1166827 (not res!1592210)) b!3934785))

(assert (=> b!3934784 m!4500929))

(assert (=> b!3934784 m!4500901))

(assert (=> b!3934784 m!4500929))

(assert (=> b!3934784 m!4500901))

(declare-fun m!4501861 () Bool)

(assert (=> b!3934784 m!4501861))

(assert (=> b!3934783 m!4500935))

(assert (=> b!3934783 m!4501121))

(assert (=> b!3934785 m!4500371))

(assert (=> b!3934785 m!4500447))

(assert (=> d!1166547 d!1166827))

(assert (=> d!1166495 d!1166411))

(assert (=> d!1166495 d!1166511))

(declare-fun d!1166829 () Bool)

(assert (=> d!1166829 (not (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 lt!1374780)) (tuple2!41051 (++!10803 lt!1374793 suffixTokens!72) suffixResult!91)))))

(assert (=> d!1166829 true))

(declare-fun _$43!88 () Unit!60236)

(assert (=> d!1166829 (= (choose!23435 thiss!20629 rules!2768 suffix!1176 (_2!23660 lt!1374780) suffixTokens!72 suffixResult!91 lt!1374793) _$43!88)))

(declare-fun bs!586388 () Bool)

(assert (= bs!586388 d!1166829))

(assert (=> bs!586388 m!4500419))

(assert (=> bs!586388 m!4500437))

(assert (=> d!1166495 d!1166829))

(assert (=> d!1166495 d!1166643))

(declare-fun b!3934786 () Bool)

(declare-fun e!2434329 () List!41894)

(assert (=> b!3934786 (= e!2434329 (_2!23660 (v!39270 lt!1374800)))))

(declare-fun b!3934787 () Bool)

(assert (=> b!3934787 (= e!2434329 (Cons!41770 (h!47190 (t!325943 lt!1374817)) (++!10804 (t!325943 (t!325943 lt!1374817)) (_2!23660 (v!39270 lt!1374800)))))))

(declare-fun b!3934788 () Bool)

(declare-fun res!1592213 () Bool)

(declare-fun e!2434328 () Bool)

(assert (=> b!3934788 (=> (not res!1592213) (not e!2434328))))

(declare-fun lt!1375280 () List!41894)

(assert (=> b!3934788 (= res!1592213 (= (size!31338 lt!1375280) (+ (size!31338 (t!325943 lt!1374817)) (size!31338 (_2!23660 (v!39270 lt!1374800))))))))

(declare-fun d!1166831 () Bool)

(assert (=> d!1166831 e!2434328))

(declare-fun res!1592212 () Bool)

(assert (=> d!1166831 (=> (not res!1592212) (not e!2434328))))

(assert (=> d!1166831 (= res!1592212 (= (content!6295 lt!1375280) (set.union (content!6295 (t!325943 lt!1374817)) (content!6295 (_2!23660 (v!39270 lt!1374800))))))))

(assert (=> d!1166831 (= lt!1375280 e!2434329)))

(declare-fun c!683659 () Bool)

(assert (=> d!1166831 (= c!683659 (is-Nil!41770 (t!325943 lt!1374817)))))

(assert (=> d!1166831 (= (++!10804 (t!325943 lt!1374817) (_2!23660 (v!39270 lt!1374800))) lt!1375280)))

(declare-fun b!3934789 () Bool)

(assert (=> b!3934789 (= e!2434328 (or (not (= (_2!23660 (v!39270 lt!1374800)) Nil!41770)) (= lt!1375280 (t!325943 lt!1374817))))))

(assert (= (and d!1166831 c!683659) b!3934786))

(assert (= (and d!1166831 (not c!683659)) b!3934787))

(assert (= (and d!1166831 res!1592212) b!3934788))

(assert (= (and b!3934788 res!1592213) b!3934789))

(declare-fun m!4501863 () Bool)

(assert (=> b!3934787 m!4501863))

(declare-fun m!4501865 () Bool)

(assert (=> b!3934788 m!4501865))

(assert (=> b!3934788 m!4500873))

(assert (=> b!3934788 m!4500317))

(declare-fun m!4501867 () Bool)

(assert (=> d!1166831 m!4501867))

(assert (=> d!1166831 m!4501671))

(assert (=> d!1166831 m!4500973))

(assert (=> b!3934157 d!1166831))

(declare-fun d!1166833 () Bool)

(declare-fun lt!1375281 () Int)

(assert (=> d!1166833 (>= lt!1375281 0)))

(declare-fun e!2434330 () Int)

(assert (=> d!1166833 (= lt!1375281 e!2434330)))

(declare-fun c!683660 () Bool)

(assert (=> d!1166833 (= c!683660 (is-Nil!41771 (_1!23659 lt!1375060)))))

(assert (=> d!1166833 (= (size!31341 (_1!23659 lt!1375060)) lt!1375281)))

(declare-fun b!3934790 () Bool)

(assert (=> b!3934790 (= e!2434330 0)))

(declare-fun b!3934791 () Bool)

(assert (=> b!3934791 (= e!2434330 (+ 1 (size!31341 (t!325944 (_1!23659 lt!1375060)))))))

(assert (= (and d!1166833 c!683660) b!3934790))

(assert (= (and d!1166833 (not c!683660)) b!3934791))

(declare-fun m!4501869 () Bool)

(assert (=> b!3934791 m!4501869))

(assert (=> d!1166469 d!1166833))

(declare-fun d!1166835 () Bool)

(declare-fun e!2434332 () Bool)

(assert (=> d!1166835 e!2434332))

(declare-fun res!1592218 () Bool)

(assert (=> d!1166835 (=> res!1592218 e!2434332)))

(declare-fun lt!1375283 () Option!8943)

(assert (=> d!1166835 (= res!1592218 (isEmpty!24912 lt!1375283))))

(declare-fun e!2434333 () Option!8943)

(assert (=> d!1166835 (= lt!1375283 e!2434333)))

(declare-fun c!683661 () Bool)

(assert (=> d!1166835 (= c!683661 (and (is-Cons!41772 rules!2768) (is-Nil!41772 (t!325945 rules!2768))))))

(declare-fun lt!1375284 () Unit!60236)

(declare-fun lt!1375286 () Unit!60236)

(assert (=> d!1166835 (= lt!1375284 lt!1375286)))

(assert (=> d!1166835 (isPrefix!3618 (_2!23660 (v!39270 lt!1374800)) (_2!23660 (v!39270 lt!1374800)))))

(assert (=> d!1166835 (= lt!1375286 (lemmaIsPrefixRefl!2284 (_2!23660 (v!39270 lt!1374800)) (_2!23660 (v!39270 lt!1374800))))))

(assert (=> d!1166835 (rulesValidInductive!2354 thiss!20629 rules!2768)))

(assert (=> d!1166835 (= (maxPrefix!3416 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1374800))) lt!1375283)))

(declare-fun b!3934792 () Bool)

(declare-fun res!1592214 () Bool)

(declare-fun e!2434331 () Bool)

(assert (=> b!3934792 (=> (not res!1592214) (not e!2434331))))

(assert (=> b!3934792 (= res!1592214 (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375283)))) (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375283))))))))

(declare-fun b!3934793 () Bool)

(declare-fun lt!1375282 () Option!8943)

(declare-fun lt!1375285 () Option!8943)

(assert (=> b!3934793 (= e!2434333 (ite (and (is-None!8942 lt!1375282) (is-None!8942 lt!1375285)) None!8942 (ite (is-None!8942 lt!1375285) lt!1375282 (ite (is-None!8942 lt!1375282) lt!1375285 (ite (>= (size!31337 (_1!23660 (v!39270 lt!1375282))) (size!31337 (_1!23660 (v!39270 lt!1375285)))) lt!1375282 lt!1375285)))))))

(declare-fun call!284911 () Option!8943)

(assert (=> b!3934793 (= lt!1375282 call!284911)))

(assert (=> b!3934793 (= lt!1375285 (maxPrefix!3416 thiss!20629 (t!325945 rules!2768) (_2!23660 (v!39270 lt!1374800))))))

(declare-fun b!3934794 () Bool)

(declare-fun res!1592216 () Bool)

(assert (=> b!3934794 (=> (not res!1592216) (not e!2434331))))

(assert (=> b!3934794 (= res!1592216 (= (value!206541 (_1!23660 (get!13805 lt!1375283))) (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375283)))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375283)))))))))

(declare-fun bm!284906 () Bool)

(assert (=> bm!284906 (= call!284911 (maxPrefixOneRule!2486 thiss!20629 (h!47192 rules!2768) (_2!23660 (v!39270 lt!1374800))))))

(declare-fun b!3934795 () Bool)

(assert (=> b!3934795 (= e!2434333 call!284911)))

(declare-fun b!3934796 () Bool)

(declare-fun res!1592217 () Bool)

(assert (=> b!3934796 (=> (not res!1592217) (not e!2434331))))

(assert (=> b!3934796 (= res!1592217 (= (++!10804 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375283)))) (_2!23660 (get!13805 lt!1375283))) (_2!23660 (v!39270 lt!1374800))))))

(declare-fun b!3934797 () Bool)

(assert (=> b!3934797 (= e!2434331 (contains!8369 rules!2768 (rule!9473 (_1!23660 (get!13805 lt!1375283)))))))

(declare-fun b!3934798 () Bool)

(declare-fun res!1592219 () Bool)

(assert (=> b!3934798 (=> (not res!1592219) (not e!2434331))))

(assert (=> b!3934798 (= res!1592219 (< (size!31338 (_2!23660 (get!13805 lt!1375283))) (size!31338 (_2!23660 (v!39270 lt!1374800)))))))

(declare-fun b!3934799 () Bool)

(declare-fun res!1592215 () Bool)

(assert (=> b!3934799 (=> (not res!1592215) (not e!2434331))))

(assert (=> b!3934799 (= res!1592215 (= (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375283)))) (originalCharacters!7123 (_1!23660 (get!13805 lt!1375283)))))))

(declare-fun b!3934800 () Bool)

(assert (=> b!3934800 (= e!2434332 e!2434331)))

(declare-fun res!1592220 () Bool)

(assert (=> b!3934800 (=> (not res!1592220) (not e!2434331))))

(assert (=> b!3934800 (= res!1592220 (isDefined!6953 lt!1375283))))

(assert (= (and d!1166835 c!683661) b!3934795))

(assert (= (and d!1166835 (not c!683661)) b!3934793))

(assert (= (or b!3934795 b!3934793) bm!284906))

(assert (= (and d!1166835 (not res!1592218)) b!3934800))

(assert (= (and b!3934800 res!1592220) b!3934799))

(assert (= (and b!3934799 res!1592215) b!3934798))

(assert (= (and b!3934798 res!1592219) b!3934796))

(assert (= (and b!3934796 res!1592217) b!3934794))

(assert (= (and b!3934794 res!1592216) b!3934792))

(assert (= (and b!3934792 res!1592214) b!3934797))

(declare-fun m!4501871 () Bool)

(assert (=> b!3934796 m!4501871))

(declare-fun m!4501873 () Bool)

(assert (=> b!3934796 m!4501873))

(assert (=> b!3934796 m!4501873))

(declare-fun m!4501875 () Bool)

(assert (=> b!3934796 m!4501875))

(assert (=> b!3934796 m!4501875))

(declare-fun m!4501877 () Bool)

(assert (=> b!3934796 m!4501877))

(declare-fun m!4501879 () Bool)

(assert (=> bm!284906 m!4501879))

(assert (=> b!3934792 m!4501871))

(assert (=> b!3934792 m!4501873))

(assert (=> b!3934792 m!4501873))

(assert (=> b!3934792 m!4501875))

(assert (=> b!3934792 m!4501875))

(declare-fun m!4501881 () Bool)

(assert (=> b!3934792 m!4501881))

(assert (=> b!3934797 m!4501871))

(declare-fun m!4501883 () Bool)

(assert (=> b!3934797 m!4501883))

(declare-fun m!4501885 () Bool)

(assert (=> d!1166835 m!4501885))

(declare-fun m!4501887 () Bool)

(assert (=> d!1166835 m!4501887))

(declare-fun m!4501889 () Bool)

(assert (=> d!1166835 m!4501889))

(assert (=> d!1166835 m!4501435))

(assert (=> b!3934799 m!4501871))

(assert (=> b!3934799 m!4501873))

(assert (=> b!3934799 m!4501873))

(assert (=> b!3934799 m!4501875))

(assert (=> b!3934798 m!4501871))

(declare-fun m!4501891 () Bool)

(assert (=> b!3934798 m!4501891))

(assert (=> b!3934798 m!4500317))

(declare-fun m!4501893 () Bool)

(assert (=> b!3934793 m!4501893))

(assert (=> b!3934794 m!4501871))

(declare-fun m!4501895 () Bool)

(assert (=> b!3934794 m!4501895))

(assert (=> b!3934794 m!4501895))

(declare-fun m!4501897 () Bool)

(assert (=> b!3934794 m!4501897))

(declare-fun m!4501899 () Bool)

(assert (=> b!3934800 m!4501899))

(assert (=> d!1166469 d!1166835))

(declare-fun d!1166837 () Bool)

(assert (=> d!1166837 (= (++!10804 (++!10804 lt!1374817 lt!1374813) suffix!1176) (++!10804 lt!1374817 (++!10804 lt!1374813 suffix!1176)))))

(assert (=> d!1166837 true))

(declare-fun _$52!2219 () Unit!60236)

(assert (=> d!1166837 (= (choose!23425 lt!1374817 lt!1374813 suffix!1176) _$52!2219)))

(declare-fun bs!586389 () Bool)

(assert (= bs!586389 d!1166837))

(assert (=> bs!586389 m!4500397))

(assert (=> bs!586389 m!4500397))

(assert (=> bs!586389 m!4500801))

(assert (=> bs!586389 m!4500411))

(assert (=> bs!586389 m!4500411))

(assert (=> bs!586389 m!4500799))

(assert (=> d!1166423 d!1166837))

(assert (=> d!1166423 d!1166419))

(declare-fun b!3934801 () Bool)

(declare-fun e!2434335 () List!41894)

(assert (=> b!3934801 (= e!2434335 suffix!1176)))

(declare-fun b!3934802 () Bool)

(assert (=> b!3934802 (= e!2434335 (Cons!41770 (h!47190 (++!10804 lt!1374817 lt!1374813)) (++!10804 (t!325943 (++!10804 lt!1374817 lt!1374813)) suffix!1176)))))

(declare-fun b!3934803 () Bool)

(declare-fun res!1592222 () Bool)

(declare-fun e!2434334 () Bool)

(assert (=> b!3934803 (=> (not res!1592222) (not e!2434334))))

(declare-fun lt!1375287 () List!41894)

(assert (=> b!3934803 (= res!1592222 (= (size!31338 lt!1375287) (+ (size!31338 (++!10804 lt!1374817 lt!1374813)) (size!31338 suffix!1176))))))

(declare-fun d!1166839 () Bool)

(assert (=> d!1166839 e!2434334))

(declare-fun res!1592221 () Bool)

(assert (=> d!1166839 (=> (not res!1592221) (not e!2434334))))

(assert (=> d!1166839 (= res!1592221 (= (content!6295 lt!1375287) (set.union (content!6295 (++!10804 lt!1374817 lt!1374813)) (content!6295 suffix!1176))))))

(assert (=> d!1166839 (= lt!1375287 e!2434335)))

(declare-fun c!683662 () Bool)

(assert (=> d!1166839 (= c!683662 (is-Nil!41770 (++!10804 lt!1374817 lt!1374813)))))

(assert (=> d!1166839 (= (++!10804 (++!10804 lt!1374817 lt!1374813) suffix!1176) lt!1375287)))

(declare-fun b!3934804 () Bool)

(assert (=> b!3934804 (= e!2434334 (or (not (= suffix!1176 Nil!41770)) (= lt!1375287 (++!10804 lt!1374817 lt!1374813))))))

(assert (= (and d!1166839 c!683662) b!3934801))

(assert (= (and d!1166839 (not c!683662)) b!3934802))

(assert (= (and d!1166839 res!1592221) b!3934803))

(assert (= (and b!3934803 res!1592222) b!3934804))

(declare-fun m!4501901 () Bool)

(assert (=> b!3934802 m!4501901))

(declare-fun m!4501903 () Bool)

(assert (=> b!3934803 m!4501903))

(assert (=> b!3934803 m!4500397))

(declare-fun m!4501905 () Bool)

(assert (=> b!3934803 m!4501905))

(assert (=> b!3934803 m!4500315))

(declare-fun m!4501907 () Bool)

(assert (=> d!1166839 m!4501907))

(assert (=> d!1166839 m!4500397))

(declare-fun m!4501909 () Bool)

(assert (=> d!1166839 m!4501909))

(assert (=> d!1166839 m!4500797))

(assert (=> d!1166423 d!1166839))

(declare-fun b!3934805 () Bool)

(declare-fun e!2434337 () List!41894)

(assert (=> b!3934805 (= e!2434337 (++!10804 lt!1374813 suffix!1176))))

(declare-fun b!3934806 () Bool)

(assert (=> b!3934806 (= e!2434337 (Cons!41770 (h!47190 lt!1374817) (++!10804 (t!325943 lt!1374817) (++!10804 lt!1374813 suffix!1176))))))

(declare-fun b!3934807 () Bool)

(declare-fun res!1592224 () Bool)

(declare-fun e!2434336 () Bool)

(assert (=> b!3934807 (=> (not res!1592224) (not e!2434336))))

(declare-fun lt!1375288 () List!41894)

(assert (=> b!3934807 (= res!1592224 (= (size!31338 lt!1375288) (+ (size!31338 lt!1374817) (size!31338 (++!10804 lt!1374813 suffix!1176)))))))

(declare-fun d!1166841 () Bool)

(assert (=> d!1166841 e!2434336))

(declare-fun res!1592223 () Bool)

(assert (=> d!1166841 (=> (not res!1592223) (not e!2434336))))

(assert (=> d!1166841 (= res!1592223 (= (content!6295 lt!1375288) (set.union (content!6295 lt!1374817) (content!6295 (++!10804 lt!1374813 suffix!1176)))))))

(assert (=> d!1166841 (= lt!1375288 e!2434337)))

(declare-fun c!683663 () Bool)

(assert (=> d!1166841 (= c!683663 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166841 (= (++!10804 lt!1374817 (++!10804 lt!1374813 suffix!1176)) lt!1375288)))

(declare-fun b!3934808 () Bool)

(assert (=> b!3934808 (= e!2434336 (or (not (= (++!10804 lt!1374813 suffix!1176) Nil!41770)) (= lt!1375288 lt!1374817)))))

(assert (= (and d!1166841 c!683663) b!3934805))

(assert (= (and d!1166841 (not c!683663)) b!3934806))

(assert (= (and d!1166841 res!1592223) b!3934807))

(assert (= (and b!3934807 res!1592224) b!3934808))

(assert (=> b!3934806 m!4500411))

(declare-fun m!4501911 () Bool)

(assert (=> b!3934806 m!4501911))

(declare-fun m!4501913 () Bool)

(assert (=> b!3934807 m!4501913))

(assert (=> b!3934807 m!4500447))

(assert (=> b!3934807 m!4500411))

(declare-fun m!4501915 () Bool)

(assert (=> b!3934807 m!4501915))

(declare-fun m!4501917 () Bool)

(assert (=> d!1166841 m!4501917))

(assert (=> d!1166841 m!4500657))

(assert (=> d!1166841 m!4500411))

(declare-fun m!4501919 () Bool)

(assert (=> d!1166841 m!4501919))

(assert (=> d!1166423 d!1166841))

(assert (=> d!1166423 d!1166383))

(declare-fun d!1166843 () Bool)

(declare-fun c!683664 () Bool)

(assert (=> d!1166843 (= c!683664 (is-Nil!41771 lt!1375089))))

(declare-fun e!2434338 () (Set Token!12184))

(assert (=> d!1166843 (= (content!6296 lt!1375089) e!2434338)))

(declare-fun b!3934809 () Bool)

(assert (=> b!3934809 (= e!2434338 (as set.empty (Set Token!12184)))))

(declare-fun b!3934810 () Bool)

(assert (=> b!3934810 (= e!2434338 (set.union (set.insert (h!47191 lt!1375089) (as set.empty (Set Token!12184))) (content!6296 (t!325944 lt!1375089))))))

(assert (= (and d!1166843 c!683664) b!3934809))

(assert (= (and d!1166843 (not c!683664)) b!3934810))

(declare-fun m!4501921 () Bool)

(assert (=> b!3934810 m!4501921))

(declare-fun m!4501923 () Bool)

(assert (=> b!3934810 m!4501923))

(assert (=> d!1166519 d!1166843))

(declare-fun d!1166845 () Bool)

(declare-fun c!683665 () Bool)

(assert (=> d!1166845 (= c!683665 (is-Nil!41771 lt!1374778))))

(declare-fun e!2434339 () (Set Token!12184))

(assert (=> d!1166845 (= (content!6296 lt!1374778) e!2434339)))

(declare-fun b!3934811 () Bool)

(assert (=> b!3934811 (= e!2434339 (as set.empty (Set Token!12184)))))

(declare-fun b!3934812 () Bool)

(assert (=> b!3934812 (= e!2434339 (set.union (set.insert (h!47191 lt!1374778) (as set.empty (Set Token!12184))) (content!6296 (t!325944 lt!1374778))))))

(assert (= (and d!1166845 c!683665) b!3934811))

(assert (= (and d!1166845 (not c!683665)) b!3934812))

(declare-fun m!4501925 () Bool)

(assert (=> b!3934812 m!4501925))

(declare-fun m!4501927 () Bool)

(assert (=> b!3934812 m!4501927))

(assert (=> d!1166519 d!1166845))

(assert (=> d!1166519 d!1166709))

(declare-fun d!1166847 () Bool)

(declare-fun lt!1375289 () List!41894)

(assert (=> d!1166847 (= (++!10804 (t!325943 lt!1374817) lt!1375289) (tail!6082 prefix!426))))

(declare-fun e!2434340 () List!41894)

(assert (=> d!1166847 (= lt!1375289 e!2434340)))

(declare-fun c!683666 () Bool)

(assert (=> d!1166847 (= c!683666 (is-Cons!41770 (t!325943 lt!1374817)))))

(assert (=> d!1166847 (>= (size!31338 (tail!6082 prefix!426)) (size!31338 (t!325943 lt!1374817)))))

(assert (=> d!1166847 (= (getSuffix!2073 (tail!6082 prefix!426) (t!325943 lt!1374817)) lt!1375289)))

(declare-fun b!3934813 () Bool)

(assert (=> b!3934813 (= e!2434340 (getSuffix!2073 (tail!6082 (tail!6082 prefix!426)) (t!325943 (t!325943 lt!1374817))))))

(declare-fun b!3934814 () Bool)

(assert (=> b!3934814 (= e!2434340 (tail!6082 prefix!426))))

(assert (= (and d!1166847 c!683666) b!3934813))

(assert (= (and d!1166847 (not c!683666)) b!3934814))

(declare-fun m!4501929 () Bool)

(assert (=> d!1166847 m!4501929))

(assert (=> d!1166847 m!4500663))

(assert (=> d!1166847 m!4501647))

(assert (=> d!1166847 m!4500873))

(assert (=> b!3934813 m!4500663))

(assert (=> b!3934813 m!4501639))

(assert (=> b!3934813 m!4501639))

(declare-fun m!4501931 () Bool)

(assert (=> b!3934813 m!4501931))

(assert (=> b!3933984 d!1166847))

(assert (=> b!3933984 d!1166719))

(declare-fun d!1166849 () Bool)

(declare-fun e!2434343 () Bool)

(assert (=> d!1166849 e!2434343))

(declare-fun res!1592227 () Bool)

(assert (=> d!1166849 (=> (not res!1592227) (not e!2434343))))

(declare-fun lt!1375292 () BalanceConc!25062)

(assert (=> d!1166849 (= res!1592227 (= (list!15520 lt!1375292) lt!1374817))))

(declare-fun fromList!831 (List!41894) Conc!12734)

(assert (=> d!1166849 (= lt!1375292 (BalanceConc!25063 (fromList!831 lt!1374817)))))

(assert (=> d!1166849 (= (fromListB!2213 lt!1374817) lt!1375292)))

(declare-fun b!3934817 () Bool)

(declare-fun isBalanced!3641 (Conc!12734) Bool)

(assert (=> b!3934817 (= e!2434343 (isBalanced!3641 (fromList!831 lt!1374817)))))

(assert (= (and d!1166849 res!1592227) b!3934817))

(declare-fun m!4501933 () Bool)

(assert (=> d!1166849 m!4501933))

(declare-fun m!4501935 () Bool)

(assert (=> d!1166849 m!4501935))

(assert (=> b!3934817 m!4501935))

(assert (=> b!3934817 m!4501935))

(declare-fun m!4501937 () Bool)

(assert (=> b!3934817 m!4501937))

(assert (=> d!1166455 d!1166849))

(assert (=> d!1166431 d!1166411))

(declare-fun d!1166851 () Bool)

(assert (=> d!1166851 (not (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 lt!1374780)) (tuple2!41051 suffixTokens!72 suffixResult!91)))))

(assert (=> d!1166851 true))

(declare-fun _$44!1332 () Unit!60236)

(assert (=> d!1166851 (= (choose!23427 thiss!20629 rules!2768 suffix!1176 (_2!23660 lt!1374780) suffixTokens!72 suffixResult!91) _$44!1332)))

(declare-fun bs!586390 () Bool)

(assert (= bs!586390 d!1166851))

(assert (=> bs!586390 m!4500419))

(assert (=> d!1166431 d!1166851))

(assert (=> d!1166431 d!1166643))

(assert (=> b!3934370 d!1166623))

(assert (=> b!3934370 d!1166453))

(declare-fun d!1166853 () Bool)

(assert (=> d!1166853 (= (isEmpty!24912 lt!1375154) (not (is-Some!8942 lt!1375154)))))

(assert (=> d!1166559 d!1166853))

(declare-fun d!1166855 () Bool)

(assert (=> d!1166855 (= (isEmpty!24907 (_1!23664 lt!1375153)) (is-Nil!41770 (_1!23664 lt!1375153)))))

(assert (=> d!1166559 d!1166855))

(declare-fun d!1166857 () Bool)

(declare-fun lt!1375315 () tuple2!41060)

(assert (=> d!1166857 (= (++!10804 (_1!23664 lt!1375315) (_2!23664 lt!1375315)) lt!1374783)))

(declare-fun sizeTr!251 (List!41894 Int) Int)

(assert (=> d!1166857 (= lt!1375315 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 0 lt!1374783 lt!1374783 (sizeTr!251 lt!1374783 0)))))

(declare-fun lt!1375311 () Unit!60236)

(declare-fun lt!1375309 () Unit!60236)

(assert (=> d!1166857 (= lt!1375311 lt!1375309)))

(declare-fun lt!1375310 () List!41894)

(declare-fun lt!1375316 () Int)

(assert (=> d!1166857 (= (sizeTr!251 lt!1375310 lt!1375316) (+ (size!31338 lt!1375310) lt!1375316))))

(declare-fun lemmaSizeTrEqualsSize!250 (List!41894 Int) Unit!60236)

(assert (=> d!1166857 (= lt!1375309 (lemmaSizeTrEqualsSize!250 lt!1375310 lt!1375316))))

(assert (=> d!1166857 (= lt!1375316 0)))

(assert (=> d!1166857 (= lt!1375310 Nil!41770)))

(declare-fun lt!1375313 () Unit!60236)

(declare-fun lt!1375314 () Unit!60236)

(assert (=> d!1166857 (= lt!1375313 lt!1375314)))

(declare-fun lt!1375312 () Int)

(assert (=> d!1166857 (= (sizeTr!251 lt!1374783 lt!1375312) (+ (size!31338 lt!1374783) lt!1375312))))

(assert (=> d!1166857 (= lt!1375314 (lemmaSizeTrEqualsSize!250 lt!1374783 lt!1375312))))

(assert (=> d!1166857 (= lt!1375312 0)))

(assert (=> d!1166857 (validRegex!5204 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))

(assert (=> d!1166857 (= (findLongestMatch!1179 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) lt!1374783) lt!1375315)))

(declare-fun bs!586391 () Bool)

(assert (= bs!586391 d!1166857))

(declare-fun m!4501939 () Bool)

(assert (=> bs!586391 m!4501939))

(declare-fun m!4501941 () Bool)

(assert (=> bs!586391 m!4501941))

(assert (=> bs!586391 m!4500371))

(declare-fun m!4501943 () Bool)

(assert (=> bs!586391 m!4501943))

(declare-fun m!4501945 () Bool)

(assert (=> bs!586391 m!4501945))

(declare-fun m!4501947 () Bool)

(assert (=> bs!586391 m!4501947))

(declare-fun m!4501949 () Bool)

(assert (=> bs!586391 m!4501949))

(assert (=> bs!586391 m!4500925))

(assert (=> bs!586391 m!4501939))

(declare-fun m!4501951 () Bool)

(assert (=> bs!586391 m!4501951))

(declare-fun m!4501953 () Bool)

(assert (=> bs!586391 m!4501953))

(assert (=> d!1166559 d!1166857))

(assert (=> d!1166559 d!1166477))

(declare-fun b!3934818 () Bool)

(declare-fun e!2434346 () Bool)

(declare-fun e!2434344 () Bool)

(assert (=> b!3934818 (= e!2434346 e!2434344)))

(declare-fun c!683668 () Bool)

(assert (=> b!3934818 (= c!683668 (is-IntegerValue!20260 (value!206541 (h!47191 (t!325944 prefixTokens!80)))))))

(declare-fun b!3934819 () Bool)

(assert (=> b!3934819 (= e!2434344 (inv!17 (value!206541 (h!47191 (t!325944 prefixTokens!80)))))))

(declare-fun b!3934820 () Bool)

(assert (=> b!3934820 (= e!2434346 (inv!16 (value!206541 (h!47191 (t!325944 prefixTokens!80)))))))

(declare-fun b!3934821 () Bool)

(declare-fun res!1592228 () Bool)

(declare-fun e!2434345 () Bool)

(assert (=> b!3934821 (=> res!1592228 e!2434345)))

(assert (=> b!3934821 (= res!1592228 (not (is-IntegerValue!20261 (value!206541 (h!47191 (t!325944 prefixTokens!80))))))))

(assert (=> b!3934821 (= e!2434344 e!2434345)))

(declare-fun d!1166859 () Bool)

(declare-fun c!683669 () Bool)

(assert (=> d!1166859 (= c!683669 (is-IntegerValue!20259 (value!206541 (h!47191 (t!325944 prefixTokens!80)))))))

(assert (=> d!1166859 (= (inv!21 (value!206541 (h!47191 (t!325944 prefixTokens!80)))) e!2434346)))

(declare-fun b!3934822 () Bool)

(assert (=> b!3934822 (= e!2434345 (inv!15 (value!206541 (h!47191 (t!325944 prefixTokens!80)))))))

(assert (= (and d!1166859 c!683669) b!3934820))

(assert (= (and d!1166859 (not c!683669)) b!3934818))

(assert (= (and b!3934818 c!683668) b!3934819))

(assert (= (and b!3934818 (not c!683668)) b!3934821))

(assert (= (and b!3934821 (not res!1592228)) b!3934822))

(declare-fun m!4501955 () Bool)

(assert (=> b!3934819 m!4501955))

(declare-fun m!4501957 () Bool)

(assert (=> b!3934820 m!4501957))

(declare-fun m!4501959 () Bool)

(assert (=> b!3934822 m!4501959))

(assert (=> b!3934494 d!1166859))

(declare-fun d!1166861 () Bool)

(declare-fun c!683670 () Bool)

(assert (=> d!1166861 (= c!683670 (is-Nil!41770 lt!1375097))))

(declare-fun e!2434347 () (Set C!23042))

(assert (=> d!1166861 (= (content!6295 lt!1375097) e!2434347)))

(declare-fun b!3934823 () Bool)

(assert (=> b!3934823 (= e!2434347 (as set.empty (Set C!23042)))))

(declare-fun b!3934824 () Bool)

(assert (=> b!3934824 (= e!2434347 (set.union (set.insert (h!47190 lt!1375097) (as set.empty (Set C!23042))) (content!6295 (t!325943 lt!1375097))))))

(assert (= (and d!1166861 c!683670) b!3934823))

(assert (= (and d!1166861 (not c!683670)) b!3934824))

(declare-fun m!4501961 () Bool)

(assert (=> b!3934824 m!4501961))

(declare-fun m!4501963 () Bool)

(assert (=> b!3934824 m!4501963))

(assert (=> d!1166537 d!1166861))

(declare-fun d!1166863 () Bool)

(declare-fun c!683671 () Bool)

(assert (=> d!1166863 (= c!683671 (is-Nil!41770 prefix!426))))

(declare-fun e!2434348 () (Set C!23042))

(assert (=> d!1166863 (= (content!6295 prefix!426) e!2434348)))

(declare-fun b!3934825 () Bool)

(assert (=> b!3934825 (= e!2434348 (as set.empty (Set C!23042)))))

(declare-fun b!3934826 () Bool)

(assert (=> b!3934826 (= e!2434348 (set.union (set.insert (h!47190 prefix!426) (as set.empty (Set C!23042))) (content!6295 (t!325943 prefix!426))))))

(assert (= (and d!1166863 c!683671) b!3934825))

(assert (= (and d!1166863 (not c!683671)) b!3934826))

(declare-fun m!4501965 () Bool)

(assert (=> b!3934826 m!4501965))

(declare-fun m!4501967 () Bool)

(assert (=> b!3934826 m!4501967))

(assert (=> d!1166537 d!1166863))

(assert (=> d!1166537 d!1166751))

(declare-fun d!1166865 () Bool)

(declare-fun lt!1375317 () Int)

(assert (=> d!1166865 (>= lt!1375317 0)))

(declare-fun e!2434349 () Int)

(assert (=> d!1166865 (= lt!1375317 e!2434349)))

(declare-fun c!683672 () Bool)

(assert (=> d!1166865 (= c!683672 (is-Nil!41770 (_2!23660 (get!13805 lt!1375210))))))

(assert (=> d!1166865 (= (size!31338 (_2!23660 (get!13805 lt!1375210))) lt!1375317)))

(declare-fun b!3934827 () Bool)

(assert (=> b!3934827 (= e!2434349 0)))

(declare-fun b!3934828 () Bool)

(assert (=> b!3934828 (= e!2434349 (+ 1 (size!31338 (t!325943 (_2!23660 (get!13805 lt!1375210))))))))

(assert (= (and d!1166865 c!683672) b!3934827))

(assert (= (and d!1166865 (not c!683672)) b!3934828))

(declare-fun m!4501969 () Bool)

(assert (=> b!3934828 m!4501969))

(assert (=> b!3934428 d!1166865))

(assert (=> b!3934428 d!1166739))

(assert (=> b!3934428 d!1166551))

(declare-fun d!1166867 () Bool)

(declare-fun e!2434350 () Bool)

(assert (=> d!1166867 e!2434350))

(declare-fun res!1592229 () Bool)

(assert (=> d!1166867 (=> (not res!1592229) (not e!2434350))))

(declare-fun lt!1375318 () List!41895)

(assert (=> d!1166867 (= res!1592229 (= (content!6296 lt!1375318) (set.union (content!6296 (t!325944 lt!1374792)) (content!6296 lt!1374778))))))

(declare-fun e!2434351 () List!41895)

(assert (=> d!1166867 (= lt!1375318 e!2434351)))

(declare-fun c!683673 () Bool)

(assert (=> d!1166867 (= c!683673 (is-Nil!41771 (t!325944 lt!1374792)))))

(assert (=> d!1166867 (= (++!10803 (t!325944 lt!1374792) lt!1374778) lt!1375318)))

(declare-fun b!3934832 () Bool)

(assert (=> b!3934832 (= e!2434350 (or (not (= lt!1374778 Nil!41771)) (= lt!1375318 (t!325944 lt!1374792))))))

(declare-fun b!3934831 () Bool)

(declare-fun res!1592230 () Bool)

(assert (=> b!3934831 (=> (not res!1592230) (not e!2434350))))

(assert (=> b!3934831 (= res!1592230 (= (size!31341 lt!1375318) (+ (size!31341 (t!325944 lt!1374792)) (size!31341 lt!1374778))))))

(declare-fun b!3934829 () Bool)

(assert (=> b!3934829 (= e!2434351 lt!1374778)))

(declare-fun b!3934830 () Bool)

(assert (=> b!3934830 (= e!2434351 (Cons!41771 (h!47191 (t!325944 lt!1374792)) (++!10803 (t!325944 (t!325944 lt!1374792)) lt!1374778)))))

(assert (= (and d!1166867 c!683673) b!3934829))

(assert (= (and d!1166867 (not c!683673)) b!3934830))

(assert (= (and d!1166867 res!1592229) b!3934831))

(assert (= (and b!3934831 res!1592230) b!3934832))

(declare-fun m!4501971 () Bool)

(assert (=> d!1166867 m!4501971))

(assert (=> d!1166867 m!4501605))

(assert (=> d!1166867 m!4500733))

(declare-fun m!4501973 () Bool)

(assert (=> b!3934831 m!4501973))

(assert (=> b!3934831 m!4501819))

(assert (=> b!3934831 m!4500737))

(declare-fun m!4501975 () Bool)

(assert (=> b!3934830 m!4501975))

(assert (=> b!3934025 d!1166867))

(declare-fun d!1166869 () Bool)

(declare-fun lt!1375319 () Int)

(assert (=> d!1166869 (>= lt!1375319 0)))

(declare-fun e!2434352 () Int)

(assert (=> d!1166869 (= lt!1375319 e!2434352)))

(declare-fun c!683674 () Bool)

(assert (=> d!1166869 (= c!683674 (is-Nil!41770 (t!325943 lt!1374817)))))

(assert (=> d!1166869 (= (size!31338 (t!325943 lt!1374817)) lt!1375319)))

(declare-fun b!3934833 () Bool)

(assert (=> b!3934833 (= e!2434352 0)))

(declare-fun b!3934834 () Bool)

(assert (=> b!3934834 (= e!2434352 (+ 1 (size!31338 (t!325943 (t!325943 lt!1374817)))))))

(assert (= (and d!1166869 c!683674) b!3934833))

(assert (= (and d!1166869 (not c!683674)) b!3934834))

(declare-fun m!4501977 () Bool)

(assert (=> b!3934834 m!4501977))

(assert (=> b!3934122 d!1166869))

(assert (=> d!1166625 d!1166621))

(declare-fun d!1166871 () Bool)

(assert (=> d!1166871 (isPrefix!3618 lt!1374817 prefix!426)))

(assert (=> d!1166871 true))

(declare-fun _$69!211 () Unit!60236)

(assert (=> d!1166871 (= (choose!23446 prefix!426 lt!1374817 lt!1374783) _$69!211)))

(declare-fun bs!586392 () Bool)

(assert (= bs!586392 d!1166871))

(assert (=> bs!586392 m!4500331))

(assert (=> d!1166625 d!1166871))

(assert (=> d!1166625 d!1166543))

(declare-fun bs!586393 () Bool)

(declare-fun d!1166873 () Bool)

(assert (= bs!586393 (and d!1166873 d!1166697)))

(declare-fun lambda!126600 () Int)

(assert (=> bs!586393 (= (and (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))))) (= lambda!126600 lambda!126594))))

(declare-fun bs!586394 () Bool)

(assert (= bs!586394 (and d!1166873 d!1166765)))

(assert (=> bs!586394 (= (and (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (h!47192 rules!2768)))) (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toValue!8979 (transformation!6523 (h!47192 rules!2768))))) (= lambda!126600 lambda!126598))))

(assert (=> d!1166873 true))

(assert (=> d!1166873 (< (dynLambda!17899 order!22303 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) (dynLambda!17900 order!22305 lambda!126600))))

(assert (=> d!1166873 true))

(assert (=> d!1166873 (< (dynLambda!17901 order!22307 (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) (dynLambda!17900 order!22305 lambda!126600))))

(assert (=> d!1166873 (= (semiInverseModEq!2804 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) (Forall!1450 lambda!126600))))

(declare-fun bs!586395 () Bool)

(assert (= bs!586395 d!1166873))

(declare-fun m!4501979 () Bool)

(assert (=> bs!586395 m!4501979))

(assert (=> d!1166443 d!1166873))

(declare-fun b!3934835 () Bool)

(declare-fun e!2434354 () Bool)

(declare-fun lt!1375322 () tuple2!41050)

(assert (=> b!3934835 (= e!2434354 (not (isEmpty!24905 (_1!23659 lt!1375322))))))

(declare-fun b!3934836 () Bool)

(declare-fun e!2434353 () tuple2!41050)

(assert (=> b!3934836 (= e!2434353 (tuple2!41051 Nil!41771 (_2!23660 (v!39270 lt!1375158))))))

(declare-fun d!1166875 () Bool)

(declare-fun e!2434355 () Bool)

(assert (=> d!1166875 e!2434355))

(declare-fun c!683675 () Bool)

(assert (=> d!1166875 (= c!683675 (> (size!31341 (_1!23659 lt!1375322)) 0))))

(assert (=> d!1166875 (= lt!1375322 e!2434353)))

(declare-fun c!683676 () Bool)

(declare-fun lt!1375320 () Option!8943)

(assert (=> d!1166875 (= c!683676 (is-Some!8942 lt!1375320))))

(assert (=> d!1166875 (= lt!1375320 (maxPrefix!3416 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375158))))))

(assert (=> d!1166875 (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375158))) lt!1375322)))

(declare-fun b!3934837 () Bool)

(declare-fun lt!1375321 () tuple2!41050)

(assert (=> b!3934837 (= e!2434353 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375320)) (_1!23659 lt!1375321)) (_2!23659 lt!1375321)))))

(assert (=> b!3934837 (= lt!1375321 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375320))))))

(declare-fun b!3934838 () Bool)

(assert (=> b!3934838 (= e!2434355 e!2434354)))

(declare-fun res!1592231 () Bool)

(assert (=> b!3934838 (= res!1592231 (< (size!31338 (_2!23659 lt!1375322)) (size!31338 (_2!23660 (v!39270 lt!1375158)))))))

(assert (=> b!3934838 (=> (not res!1592231) (not e!2434354))))

(declare-fun b!3934839 () Bool)

(assert (=> b!3934839 (= e!2434355 (= (_2!23659 lt!1375322) (_2!23660 (v!39270 lt!1375158))))))

(assert (= (and d!1166875 c!683676) b!3934837))

(assert (= (and d!1166875 (not c!683676)) b!3934836))

(assert (= (and d!1166875 c!683675) b!3934838))

(assert (= (and d!1166875 (not c!683675)) b!3934839))

(assert (= (and b!3934838 res!1592231) b!3934835))

(declare-fun m!4501981 () Bool)

(assert (=> b!3934835 m!4501981))

(declare-fun m!4501983 () Bool)

(assert (=> d!1166875 m!4501983))

(declare-fun m!4501985 () Bool)

(assert (=> d!1166875 m!4501985))

(declare-fun m!4501987 () Bool)

(assert (=> b!3934837 m!4501987))

(declare-fun m!4501989 () Bool)

(assert (=> b!3934838 m!4501989))

(declare-fun m!4501991 () Bool)

(assert (=> b!3934838 m!4501991))

(assert (=> b!3934352 d!1166875))

(declare-fun d!1166877 () Bool)

(assert (=> d!1166877 (= (inv!55976 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80)))) (isBalanced!3641 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80))))))))

(declare-fun bs!586396 () Bool)

(assert (= bs!586396 d!1166877))

(declare-fun m!4501993 () Bool)

(assert (=> bs!586396 m!4501993))

(assert (=> tb!235367 d!1166877))

(declare-fun b!3934842 () Bool)

(declare-fun e!2434357 () Bool)

(assert (=> b!3934842 (= e!2434357 (isPrefix!3618 (tail!6082 (tail!6082 lt!1374817)) (tail!6082 (tail!6082 lt!1374790))))))

(declare-fun b!3934841 () Bool)

(declare-fun res!1592233 () Bool)

(assert (=> b!3934841 (=> (not res!1592233) (not e!2434357))))

(assert (=> b!3934841 (= res!1592233 (= (head!8357 (tail!6082 lt!1374817)) (head!8357 (tail!6082 lt!1374790))))))

(declare-fun b!3934843 () Bool)

(declare-fun e!2434356 () Bool)

(assert (=> b!3934843 (= e!2434356 (>= (size!31338 (tail!6082 lt!1374790)) (size!31338 (tail!6082 lt!1374817))))))

(declare-fun d!1166879 () Bool)

(assert (=> d!1166879 e!2434356))

(declare-fun res!1592234 () Bool)

(assert (=> d!1166879 (=> res!1592234 e!2434356)))

(declare-fun lt!1375323 () Bool)

(assert (=> d!1166879 (= res!1592234 (not lt!1375323))))

(declare-fun e!2434358 () Bool)

(assert (=> d!1166879 (= lt!1375323 e!2434358)))

(declare-fun res!1592235 () Bool)

(assert (=> d!1166879 (=> res!1592235 e!2434358)))

(assert (=> d!1166879 (= res!1592235 (is-Nil!41770 (tail!6082 lt!1374817)))))

(assert (=> d!1166879 (= (isPrefix!3618 (tail!6082 lt!1374817) (tail!6082 lt!1374790)) lt!1375323)))

(declare-fun b!3934840 () Bool)

(assert (=> b!3934840 (= e!2434358 e!2434357)))

(declare-fun res!1592232 () Bool)

(assert (=> b!3934840 (=> (not res!1592232) (not e!2434357))))

(assert (=> b!3934840 (= res!1592232 (not (is-Nil!41770 (tail!6082 lt!1374790))))))

(assert (= (and d!1166879 (not res!1592235)) b!3934840))

(assert (= (and b!3934840 res!1592232) b!3934841))

(assert (= (and b!3934841 res!1592233) b!3934842))

(assert (= (and d!1166879 (not res!1592234)) b!3934843))

(assert (=> b!3934842 m!4500929))

(assert (=> b!3934842 m!4501637))

(assert (=> b!3934842 m!4500931))

(declare-fun m!4501995 () Bool)

(assert (=> b!3934842 m!4501995))

(assert (=> b!3934842 m!4501637))

(assert (=> b!3934842 m!4501995))

(declare-fun m!4501997 () Bool)

(assert (=> b!3934842 m!4501997))

(assert (=> b!3934841 m!4500929))

(assert (=> b!3934841 m!4501643))

(assert (=> b!3934841 m!4500931))

(declare-fun m!4501999 () Bool)

(assert (=> b!3934841 m!4501999))

(assert (=> b!3934843 m!4500931))

(declare-fun m!4502001 () Bool)

(assert (=> b!3934843 m!4502001))

(assert (=> b!3934843 m!4500929))

(assert (=> b!3934843 m!4501649))

(assert (=> b!3934145 d!1166879))

(assert (=> b!3934145 d!1166717))

(declare-fun d!1166881 () Bool)

(assert (=> d!1166881 (= (tail!6082 lt!1374790) (t!325943 lt!1374790))))

(assert (=> b!3934145 d!1166881))

(declare-fun d!1166883 () Bool)

(declare-fun lt!1375324 () Int)

(assert (=> d!1166883 (>= lt!1375324 0)))

(declare-fun e!2434359 () Int)

(assert (=> d!1166883 (= lt!1375324 e!2434359)))

(declare-fun c!683677 () Bool)

(assert (=> d!1166883 (= c!683677 (is-Nil!41771 (_1!23659 lt!1375095)))))

(assert (=> d!1166883 (= (size!31341 (_1!23659 lt!1375095)) lt!1375324)))

(declare-fun b!3934844 () Bool)

(assert (=> b!3934844 (= e!2434359 0)))

(declare-fun b!3934845 () Bool)

(assert (=> b!3934845 (= e!2434359 (+ 1 (size!31341 (t!325944 (_1!23659 lt!1375095)))))))

(assert (= (and d!1166883 c!683677) b!3934844))

(assert (= (and d!1166883 (not c!683677)) b!3934845))

(declare-fun m!4502003 () Bool)

(assert (=> b!3934845 m!4502003))

(assert (=> d!1166533 d!1166883))

(assert (=> d!1166533 d!1166627))

(declare-fun d!1166885 () Bool)

(assert (=> d!1166885 (= (++!10803 (++!10803 lt!1374792 lt!1374778) suffixTokens!72) (++!10803 lt!1374792 (++!10803 lt!1374778 suffixTokens!72)))))

(assert (=> d!1166885 true))

(declare-fun _$52!2222 () Unit!60236)

(assert (=> d!1166885 (= (choose!23424 lt!1374792 lt!1374778 suffixTokens!72) _$52!2222)))

(declare-fun bs!586397 () Bool)

(assert (= bs!586397 d!1166885))

(assert (=> bs!586397 m!4500387))

(assert (=> bs!586397 m!4500387))

(assert (=> bs!586397 m!4500389))

(assert (=> bs!586397 m!4500439))

(assert (=> bs!586397 m!4500439))

(assert (=> bs!586397 m!4500691))

(assert (=> d!1166399 d!1166885))

(assert (=> d!1166399 d!1166409))

(declare-fun d!1166887 () Bool)

(declare-fun e!2434360 () Bool)

(assert (=> d!1166887 e!2434360))

(declare-fun res!1592236 () Bool)

(assert (=> d!1166887 (=> (not res!1592236) (not e!2434360))))

(declare-fun lt!1375325 () List!41895)

(assert (=> d!1166887 (= res!1592236 (= (content!6296 lt!1375325) (set.union (content!6296 lt!1374792) (content!6296 (++!10803 lt!1374778 suffixTokens!72)))))))

(declare-fun e!2434361 () List!41895)

(assert (=> d!1166887 (= lt!1375325 e!2434361)))

(declare-fun c!683678 () Bool)

(assert (=> d!1166887 (= c!683678 (is-Nil!41771 lt!1374792))))

(assert (=> d!1166887 (= (++!10803 lt!1374792 (++!10803 lt!1374778 suffixTokens!72)) lt!1375325)))

(declare-fun b!3934849 () Bool)

(assert (=> b!3934849 (= e!2434360 (or (not (= (++!10803 lt!1374778 suffixTokens!72) Nil!41771)) (= lt!1375325 lt!1374792)))))

(declare-fun b!3934848 () Bool)

(declare-fun res!1592237 () Bool)

(assert (=> b!3934848 (=> (not res!1592237) (not e!2434360))))

(assert (=> b!3934848 (= res!1592237 (= (size!31341 lt!1375325) (+ (size!31341 lt!1374792) (size!31341 (++!10803 lt!1374778 suffixTokens!72)))))))

(declare-fun b!3934846 () Bool)

(assert (=> b!3934846 (= e!2434361 (++!10803 lt!1374778 suffixTokens!72))))

(declare-fun b!3934847 () Bool)

(assert (=> b!3934847 (= e!2434361 (Cons!41771 (h!47191 lt!1374792) (++!10803 (t!325944 lt!1374792) (++!10803 lt!1374778 suffixTokens!72))))))

(assert (= (and d!1166887 c!683678) b!3934846))

(assert (= (and d!1166887 (not c!683678)) b!3934847))

(assert (= (and d!1166887 res!1592236) b!3934848))

(assert (= (and b!3934848 res!1592237) b!3934849))

(declare-fun m!4502005 () Bool)

(assert (=> d!1166887 m!4502005))

(assert (=> d!1166887 m!4500705))

(assert (=> d!1166887 m!4500439))

(declare-fun m!4502007 () Bool)

(assert (=> d!1166887 m!4502007))

(declare-fun m!4502009 () Bool)

(assert (=> b!3934848 m!4502009))

(assert (=> b!3934848 m!4500711))

(assert (=> b!3934848 m!4500439))

(declare-fun m!4502011 () Bool)

(assert (=> b!3934848 m!4502011))

(assert (=> b!3934847 m!4500439))

(declare-fun m!4502013 () Bool)

(assert (=> b!3934847 m!4502013))

(assert (=> d!1166399 d!1166887))

(assert (=> d!1166399 d!1166519))

(assert (=> d!1166399 d!1166407))

(declare-fun d!1166889 () Bool)

(declare-fun lt!1375326 () Int)

(assert (=> d!1166889 (>= lt!1375326 0)))

(declare-fun e!2434362 () Int)

(assert (=> d!1166889 (= lt!1375326 e!2434362)))

(declare-fun c!683679 () Bool)

(assert (=> d!1166889 (= c!683679 (is-Nil!41770 lt!1375013))))

(assert (=> d!1166889 (= (size!31338 lt!1375013) lt!1375326)))

(declare-fun b!3934850 () Bool)

(assert (=> b!3934850 (= e!2434362 0)))

(declare-fun b!3934851 () Bool)

(assert (=> b!3934851 (= e!2434362 (+ 1 (size!31338 (t!325943 lt!1375013))))))

(assert (= (and d!1166889 c!683679) b!3934850))

(assert (= (and d!1166889 (not c!683679)) b!3934851))

(declare-fun m!4502015 () Bool)

(assert (=> b!3934851 m!4502015))

(assert (=> b!3934064 d!1166889))

(assert (=> b!3934064 d!1166453))

(declare-fun d!1166891 () Bool)

(declare-fun lt!1375327 () Int)

(assert (=> d!1166891 (>= lt!1375327 0)))

(declare-fun e!2434363 () Int)

(assert (=> d!1166891 (= lt!1375327 e!2434363)))

(declare-fun c!683680 () Bool)

(assert (=> d!1166891 (= c!683680 (is-Nil!41770 lt!1374797))))

(assert (=> d!1166891 (= (size!31338 lt!1374797) lt!1375327)))

(declare-fun b!3934852 () Bool)

(assert (=> b!3934852 (= e!2434363 0)))

(declare-fun b!3934853 () Bool)

(assert (=> b!3934853 (= e!2434363 (+ 1 (size!31338 (t!325943 lt!1374797))))))

(assert (= (and d!1166891 c!683680) b!3934852))

(assert (= (and d!1166891 (not c!683680)) b!3934853))

(declare-fun m!4502017 () Bool)

(assert (=> b!3934853 m!4502017))

(assert (=> b!3934064 d!1166891))

(assert (=> b!3934208 d!1166791))

(declare-fun d!1166893 () Bool)

(assert (=> d!1166893 (= (head!8357 lt!1374797) (h!47190 lt!1374797))))

(assert (=> b!3934208 d!1166893))

(declare-fun d!1166895 () Bool)

(assert (=> d!1166895 (= (isEmpty!24912 lt!1375210) (not (is-Some!8942 lt!1375210)))))

(assert (=> d!1166627 d!1166895))

(declare-fun b!3934856 () Bool)

(declare-fun e!2434365 () Bool)

(assert (=> b!3934856 (= e!2434365 (isPrefix!3618 (tail!6082 lt!1374783) (tail!6082 lt!1374783)))))

(declare-fun b!3934855 () Bool)

(declare-fun res!1592239 () Bool)

(assert (=> b!3934855 (=> (not res!1592239) (not e!2434365))))

(assert (=> b!3934855 (= res!1592239 (= (head!8357 lt!1374783) (head!8357 lt!1374783)))))

(declare-fun b!3934857 () Bool)

(declare-fun e!2434364 () Bool)

(assert (=> b!3934857 (= e!2434364 (>= (size!31338 lt!1374783) (size!31338 lt!1374783)))))

(declare-fun d!1166897 () Bool)

(assert (=> d!1166897 e!2434364))

(declare-fun res!1592240 () Bool)

(assert (=> d!1166897 (=> res!1592240 e!2434364)))

(declare-fun lt!1375328 () Bool)

(assert (=> d!1166897 (= res!1592240 (not lt!1375328))))

(declare-fun e!2434366 () Bool)

(assert (=> d!1166897 (= lt!1375328 e!2434366)))

(declare-fun res!1592241 () Bool)

(assert (=> d!1166897 (=> res!1592241 e!2434366)))

(assert (=> d!1166897 (= res!1592241 (is-Nil!41770 lt!1374783))))

(assert (=> d!1166897 (= (isPrefix!3618 lt!1374783 lt!1374783) lt!1375328)))

(declare-fun b!3934854 () Bool)

(assert (=> b!3934854 (= e!2434366 e!2434365)))

(declare-fun res!1592238 () Bool)

(assert (=> b!3934854 (=> (not res!1592238) (not e!2434365))))

(assert (=> b!3934854 (= res!1592238 (not (is-Nil!41770 lt!1374783)))))

(assert (= (and d!1166897 (not res!1592241)) b!3934854))

(assert (= (and b!3934854 res!1592238) b!3934855))

(assert (= (and b!3934855 res!1592239) b!3934856))

(assert (= (and d!1166897 (not res!1592240)) b!3934857))

(assert (=> b!3934856 m!4500901))

(assert (=> b!3934856 m!4500901))

(assert (=> b!3934856 m!4500901))

(assert (=> b!3934856 m!4500901))

(declare-fun m!4502019 () Bool)

(assert (=> b!3934856 m!4502019))

(assert (=> b!3934855 m!4501121))

(assert (=> b!3934855 m!4501121))

(assert (=> b!3934857 m!4500371))

(assert (=> b!3934857 m!4500371))

(assert (=> d!1166627 d!1166897))

(declare-fun d!1166899 () Bool)

(assert (=> d!1166899 (isPrefix!3618 lt!1374783 lt!1374783)))

(declare-fun lt!1375331 () Unit!60236)

(declare-fun choose!23448 (List!41894 List!41894) Unit!60236)

(assert (=> d!1166899 (= lt!1375331 (choose!23448 lt!1374783 lt!1374783))))

(assert (=> d!1166899 (= (lemmaIsPrefixRefl!2284 lt!1374783 lt!1374783) lt!1375331)))

(declare-fun bs!586398 () Bool)

(assert (= bs!586398 d!1166899))

(assert (=> bs!586398 m!4501431))

(declare-fun m!4502021 () Bool)

(assert (=> bs!586398 m!4502021))

(assert (=> d!1166627 d!1166899))

(declare-fun d!1166901 () Bool)

(assert (=> d!1166901 true))

(declare-fun lt!1375334 () Bool)

(declare-fun lambda!126603 () Int)

(declare-fun forall!8315 (List!41896 Int) Bool)

(assert (=> d!1166901 (= lt!1375334 (forall!8315 rules!2768 lambda!126603))))

(declare-fun e!2434372 () Bool)

(assert (=> d!1166901 (= lt!1375334 e!2434372)))

(declare-fun res!1592246 () Bool)

(assert (=> d!1166901 (=> res!1592246 e!2434372)))

(assert (=> d!1166901 (= res!1592246 (not (is-Cons!41772 rules!2768)))))

(assert (=> d!1166901 (= (rulesValidInductive!2354 thiss!20629 rules!2768) lt!1375334)))

(declare-fun b!3934862 () Bool)

(declare-fun e!2434371 () Bool)

(assert (=> b!3934862 (= e!2434372 e!2434371)))

(declare-fun res!1592247 () Bool)

(assert (=> b!3934862 (=> (not res!1592247) (not e!2434371))))

(assert (=> b!3934862 (= res!1592247 (ruleValid!2471 thiss!20629 (h!47192 rules!2768)))))

(declare-fun b!3934863 () Bool)

(assert (=> b!3934863 (= e!2434371 (rulesValidInductive!2354 thiss!20629 (t!325945 rules!2768)))))

(assert (= (and d!1166901 (not res!1592246)) b!3934862))

(assert (= (and b!3934862 res!1592247) b!3934863))

(declare-fun m!4502023 () Bool)

(assert (=> d!1166901 m!4502023))

(declare-fun m!4502025 () Bool)

(assert (=> b!3934862 m!4502025))

(assert (=> b!3934863 m!4501753))

(assert (=> d!1166627 d!1166901))

(assert (=> b!3934342 d!1166551))

(declare-fun d!1166903 () Bool)

(assert (=> d!1166903 (= (seqFromList!4790 (_1!23664 lt!1375153)) (fromListB!2213 (_1!23664 lt!1375153)))))

(declare-fun bs!586399 () Bool)

(assert (= bs!586399 d!1166903))

(declare-fun m!4502027 () Bool)

(assert (=> bs!586399 m!4502027))

(assert (=> b!3934342 d!1166903))

(declare-fun d!1166905 () Bool)

(assert (=> d!1166905 (= (isEmpty!24907 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))) (is-Nil!41770 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))))))

(assert (=> b!3934342 d!1166905))

(declare-fun d!1166907 () Bool)

(assert (=> d!1166907 (= (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (seqFromList!4790 (_1!23664 lt!1375153))) (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 (_1!23664 lt!1375153))))))

(declare-fun b_lambda!115099 () Bool)

(assert (=> (not b_lambda!115099) (not d!1166907)))

(declare-fun tb!235469 () Bool)

(declare-fun t!326098 () Bool)

(assert (=> (and b!3933781 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326098) tb!235469))

(declare-fun result!285290 () Bool)

(assert (=> tb!235469 (= result!285290 (inv!21 (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 (_1!23664 lt!1375153)))))))

(declare-fun m!4502029 () Bool)

(assert (=> tb!235469 m!4502029))

(assert (=> d!1166907 t!326098))

(declare-fun b_and!300419 () Bool)

(assert (= b_and!300391 (and (=> t!326098 result!285290) b_and!300419)))

(declare-fun t!326100 () Bool)

(declare-fun tb!235471 () Bool)

(assert (=> (and b!3933775 (= (toValue!8979 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326100) tb!235471))

(declare-fun result!285292 () Bool)

(assert (= result!285292 result!285290))

(assert (=> d!1166907 t!326100))

(declare-fun b_and!300421 () Bool)

(assert (= b_and!300393 (and (=> t!326100 result!285292) b_and!300421)))

(declare-fun t!326102 () Bool)

(declare-fun tb!235473 () Bool)

(assert (=> (and b!3934496 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326102) tb!235473))

(declare-fun result!285294 () Bool)

(assert (= result!285294 result!285290))

(assert (=> d!1166907 t!326102))

(declare-fun b_and!300423 () Bool)

(assert (= b_and!300383 (and (=> t!326102 result!285294) b_and!300423)))

(declare-fun tb!235475 () Bool)

(declare-fun t!326104 () Bool)

(assert (=> (and b!3933750 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326104) tb!235475))

(declare-fun result!285296 () Bool)

(assert (= result!285296 result!285290))

(assert (=> d!1166907 t!326104))

(declare-fun b_and!300425 () Bool)

(assert (= b_and!300389 (and (=> t!326104 result!285296) b_and!300425)))

(declare-fun tb!235477 () Bool)

(declare-fun t!326106 () Bool)

(assert (=> (and b!3934446 (= (toValue!8979 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326106) tb!235477))

(declare-fun result!285298 () Bool)

(assert (= result!285298 result!285290))

(assert (=> d!1166907 t!326106))

(declare-fun b_and!300427 () Bool)

(assert (= b_and!300387 (and (=> t!326106 result!285298) b_and!300427)))

(declare-fun t!326108 () Bool)

(declare-fun tb!235479 () Bool)

(assert (=> (and b!3934466 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326108) tb!235479))

(declare-fun result!285300 () Bool)

(assert (= result!285300 result!285290))

(assert (=> d!1166907 t!326108))

(declare-fun b_and!300429 () Bool)

(assert (= b_and!300385 (and (=> t!326108 result!285300) b_and!300429)))

(assert (=> d!1166907 m!4501289))

(declare-fun m!4502031 () Bool)

(assert (=> d!1166907 m!4502031))

(assert (=> b!3934342 d!1166907))

(declare-fun bs!586400 () Bool)

(declare-fun d!1166909 () Bool)

(assert (= bs!586400 (and d!1166909 d!1166697)))

(declare-fun lambda!126606 () Int)

(assert (=> bs!586400 (= (and (= (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) (= (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))))) (= lambda!126606 lambda!126594))))

(declare-fun bs!586401 () Bool)

(assert (= bs!586401 (and d!1166909 d!1166765)))

(assert (=> bs!586401 (= (and (= (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (toChars!8838 (transformation!6523 (h!47192 rules!2768)))) (= (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (toValue!8979 (transformation!6523 (h!47192 rules!2768))))) (= lambda!126606 lambda!126598))))

(declare-fun bs!586402 () Bool)

(assert (= bs!586402 (and d!1166909 d!1166873)))

(assert (=> bs!586402 (= (and (= (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) (= (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))))) (= lambda!126606 lambda!126600))))

(declare-fun b!3934870 () Bool)

(declare-fun e!2434376 () Bool)

(assert (=> b!3934870 (= e!2434376 true)))

(assert (=> d!1166909 e!2434376))

(assert (= d!1166909 b!3934870))

(assert (=> b!3934870 (< (dynLambda!17901 order!22307 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) (dynLambda!17900 order!22305 lambda!126606))))

(assert (=> b!3934870 (< (dynLambda!17899 order!22303 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) (dynLambda!17900 order!22305 lambda!126606))))

(assert (=> d!1166909 (= (list!15520 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 (_1!23664 lt!1375153))))) (list!15520 (seqFromList!4790 (_1!23664 lt!1375153))))))

(declare-fun lt!1375337 () Unit!60236)

(declare-fun ForallOf!797 (Int BalanceConc!25062) Unit!60236)

(assert (=> d!1166909 (= lt!1375337 (ForallOf!797 lambda!126606 (seqFromList!4790 (_1!23664 lt!1375153))))))

(assert (=> d!1166909 (= (lemmaSemiInverse!1772 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (seqFromList!4790 (_1!23664 lt!1375153))) lt!1375337)))

(declare-fun b_lambda!115101 () Bool)

(assert (=> (not b_lambda!115101) (not d!1166909)))

(declare-fun t!326110 () Bool)

(declare-fun tb!235481 () Bool)

(assert (=> (and b!3934496 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326110) tb!235481))

(declare-fun b!3934871 () Bool)

(declare-fun tp!1197518 () Bool)

(declare-fun e!2434377 () Bool)

(assert (=> b!3934871 (= e!2434377 (and (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 (_1!23664 lt!1375153)))))) tp!1197518))))

(declare-fun result!285302 () Bool)

(assert (=> tb!235481 (= result!285302 (and (inv!55976 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 (_1!23664 lt!1375153))))) e!2434377))))

(assert (= tb!235481 b!3934871))

(declare-fun m!4502033 () Bool)

(assert (=> b!3934871 m!4502033))

(declare-fun m!4502035 () Bool)

(assert (=> tb!235481 m!4502035))

(assert (=> d!1166909 t!326110))

(declare-fun b_and!300431 () Bool)

(assert (= b_and!300411 (and (=> t!326110 result!285302) b_and!300431)))

(declare-fun tb!235483 () Bool)

(declare-fun t!326112 () Bool)

(assert (=> (and b!3934466 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326112) tb!235483))

(declare-fun result!285304 () Bool)

(assert (= result!285304 result!285302))

(assert (=> d!1166909 t!326112))

(declare-fun b_and!300433 () Bool)

(assert (= b_and!300409 (and (=> t!326112 result!285304) b_and!300433)))

(declare-fun t!326114 () Bool)

(declare-fun tb!235485 () Bool)

(assert (=> (and b!3933750 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326114) tb!235485))

(declare-fun result!285306 () Bool)

(assert (= result!285306 result!285302))

(assert (=> d!1166909 t!326114))

(declare-fun b_and!300435 () Bool)

(assert (= b_and!300407 (and (=> t!326114 result!285306) b_and!300435)))

(declare-fun tb!235487 () Bool)

(declare-fun t!326116 () Bool)

(assert (=> (and b!3933781 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326116) tb!235487))

(declare-fun result!285308 () Bool)

(assert (= result!285308 result!285302))

(assert (=> d!1166909 t!326116))

(declare-fun b_and!300437 () Bool)

(assert (= b_and!300413 (and (=> t!326116 result!285308) b_and!300437)))

(declare-fun t!326118 () Bool)

(declare-fun tb!235489 () Bool)

(assert (=> (and b!3934446 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326118) tb!235489))

(declare-fun result!285310 () Bool)

(assert (= result!285310 result!285302))

(assert (=> d!1166909 t!326118))

(declare-fun b_and!300439 () Bool)

(assert (= b_and!300415 (and (=> t!326118 result!285310) b_and!300439)))

(declare-fun tb!235491 () Bool)

(declare-fun t!326120 () Bool)

(assert (=> (and b!3933775 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326120) tb!235491))

(declare-fun result!285312 () Bool)

(assert (= result!285312 result!285302))

(assert (=> d!1166909 t!326120))

(declare-fun b_and!300441 () Bool)

(assert (= b_and!300417 (and (=> t!326120 result!285312) b_and!300441)))

(declare-fun b_lambda!115103 () Bool)

(assert (=> (not b_lambda!115103) (not d!1166909)))

(assert (=> d!1166909 t!326104))

(declare-fun b_and!300443 () Bool)

(assert (= b_and!300425 (and (=> t!326104 result!285296) b_and!300443)))

(assert (=> d!1166909 t!326100))

(declare-fun b_and!300445 () Bool)

(assert (= b_and!300421 (and (=> t!326100 result!285292) b_and!300445)))

(assert (=> d!1166909 t!326106))

(declare-fun b_and!300447 () Bool)

(assert (= b_and!300427 (and (=> t!326106 result!285298) b_and!300447)))

(assert (=> d!1166909 t!326102))

(declare-fun b_and!300449 () Bool)

(assert (= b_and!300423 (and (=> t!326102 result!285294) b_and!300449)))

(assert (=> d!1166909 t!326108))

(declare-fun b_and!300451 () Bool)

(assert (= b_and!300429 (and (=> t!326108 result!285300) b_and!300451)))

(assert (=> d!1166909 t!326098))

(declare-fun b_and!300453 () Bool)

(assert (= b_and!300419 (and (=> t!326098 result!285290) b_and!300453)))

(declare-fun m!4502037 () Bool)

(assert (=> d!1166909 m!4502037))

(declare-fun m!4502039 () Bool)

(assert (=> d!1166909 m!4502039))

(assert (=> d!1166909 m!4501289))

(assert (=> d!1166909 m!4502031))

(assert (=> d!1166909 m!4501289))

(declare-fun m!4502041 () Bool)

(assert (=> d!1166909 m!4502041))

(assert (=> d!1166909 m!4502031))

(assert (=> d!1166909 m!4502037))

(assert (=> d!1166909 m!4501289))

(declare-fun m!4502043 () Bool)

(assert (=> d!1166909 m!4502043))

(assert (=> b!3934342 d!1166909))

(declare-fun b!3934900 () Bool)

(declare-fun c!683698 () Bool)

(declare-fun call!284928 () Bool)

(assert (=> b!3934900 (= c!683698 call!284928)))

(declare-fun lt!1375412 () Unit!60236)

(declare-fun lt!1375407 () Unit!60236)

(assert (=> b!3934900 (= lt!1375412 lt!1375407)))

(assert (=> b!3934900 (= lt!1374783 Nil!41770)))

(declare-fun call!284930 () Unit!60236)

(assert (=> b!3934900 (= lt!1375407 call!284930)))

(declare-fun lt!1375394 () Unit!60236)

(declare-fun lt!1375397 () Unit!60236)

(assert (=> b!3934900 (= lt!1375394 lt!1375397)))

(declare-fun call!284934 () Bool)

(assert (=> b!3934900 call!284934))

(declare-fun call!284933 () Unit!60236)

(assert (=> b!3934900 (= lt!1375397 call!284933)))

(declare-fun e!2434396 () tuple2!41060)

(declare-fun e!2434400 () tuple2!41060)

(assert (=> b!3934900 (= e!2434396 e!2434400)))

(declare-fun b!3934901 () Bool)

(declare-fun e!2434401 () Unit!60236)

(declare-fun Unit!60261 () Unit!60236)

(assert (=> b!3934901 (= e!2434401 Unit!60261)))

(declare-fun b!3934902 () Bool)

(declare-fun e!2434398 () tuple2!41060)

(assert (=> b!3934902 (= e!2434398 (tuple2!41061 Nil!41770 lt!1374783))))

(declare-fun bm!284923 () Bool)

(declare-fun call!284929 () C!23042)

(assert (=> bm!284923 (= call!284929 (head!8357 lt!1374783))))

(declare-fun call!284932 () tuple2!41060)

(declare-fun lt!1375419 () List!41894)

(declare-fun bm!284924 () Bool)

(declare-fun call!284935 () List!41894)

(declare-fun call!284931 () Regex!11428)

(assert (=> bm!284924 (= call!284932 (findLongestMatchInner!1266 call!284931 lt!1375419 (+ (size!31338 Nil!41770) 1) call!284935 lt!1374783 (size!31338 lt!1374783)))))

(declare-fun d!1166911 () Bool)

(declare-fun e!2434394 () Bool)

(assert (=> d!1166911 e!2434394))

(declare-fun res!1592252 () Bool)

(assert (=> d!1166911 (=> (not res!1592252) (not e!2434394))))

(declare-fun lt!1375403 () tuple2!41060)

(assert (=> d!1166911 (= res!1592252 (= (++!10804 (_1!23664 lt!1375403) (_2!23664 lt!1375403)) lt!1374783))))

(declare-fun e!2434397 () tuple2!41060)

(assert (=> d!1166911 (= lt!1375403 e!2434397)))

(declare-fun c!683697 () Bool)

(declare-fun lostCause!989 (Regex!11428) Bool)

(assert (=> d!1166911 (= c!683697 (lostCause!989 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(declare-fun lt!1375395 () Unit!60236)

(declare-fun Unit!60262 () Unit!60236)

(assert (=> d!1166911 (= lt!1375395 Unit!60262)))

(assert (=> d!1166911 (= (getSuffix!2073 lt!1374783 Nil!41770) lt!1374783)))

(declare-fun lt!1375404 () Unit!60236)

(declare-fun lt!1375416 () Unit!60236)

(assert (=> d!1166911 (= lt!1375404 lt!1375416)))

(declare-fun lt!1375418 () List!41894)

(assert (=> d!1166911 (= lt!1374783 lt!1375418)))

(assert (=> d!1166911 (= lt!1375416 (lemmaSamePrefixThenSameSuffix!1839 Nil!41770 lt!1374783 Nil!41770 lt!1375418 lt!1374783))))

(assert (=> d!1166911 (= lt!1375418 (getSuffix!2073 lt!1374783 Nil!41770))))

(declare-fun lt!1375399 () Unit!60236)

(declare-fun lt!1375409 () Unit!60236)

(assert (=> d!1166911 (= lt!1375399 lt!1375409)))

(assert (=> d!1166911 (isPrefix!3618 Nil!41770 (++!10804 Nil!41770 lt!1374783))))

(assert (=> d!1166911 (= lt!1375409 (lemmaConcatTwoListThenFirstIsPrefix!2481 Nil!41770 lt!1374783))))

(assert (=> d!1166911 (validRegex!5204 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))

(assert (=> d!1166911 (= (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)) lt!1375403)))

(declare-fun bm!284925 () Bool)

(assert (=> bm!284925 (= call!284931 (derivativeStep!3453 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) call!284929))))

(declare-fun b!3934903 () Bool)

(declare-fun e!2434399 () Bool)

(assert (=> b!3934903 (= e!2434399 (>= (size!31338 (_1!23664 lt!1375403)) (size!31338 Nil!41770)))))

(declare-fun b!3934904 () Bool)

(assert (=> b!3934904 (= e!2434400 (tuple2!41061 Nil!41770 Nil!41770))))

(declare-fun b!3934905 () Bool)

(declare-fun lt!1375413 () tuple2!41060)

(assert (=> b!3934905 (= e!2434398 lt!1375413)))

(declare-fun b!3934906 () Bool)

(assert (=> b!3934906 (= e!2434397 e!2434396)))

(declare-fun c!683694 () Bool)

(assert (=> b!3934906 (= c!683694 (= (size!31338 Nil!41770) (size!31338 lt!1374783)))))

(declare-fun bm!284926 () Bool)

(assert (=> bm!284926 (= call!284935 (tail!6082 lt!1374783))))

(declare-fun b!3934907 () Bool)

(assert (=> b!3934907 (= e!2434400 (tuple2!41061 Nil!41770 lt!1374783))))

(declare-fun b!3934908 () Bool)

(declare-fun e!2434395 () tuple2!41060)

(assert (=> b!3934908 (= e!2434395 call!284932)))

(declare-fun b!3934909 () Bool)

(assert (=> b!3934909 (= e!2434397 (tuple2!41061 Nil!41770 lt!1374783))))

(declare-fun bm!284927 () Bool)

(assert (=> bm!284927 (= call!284933 (lemmaIsPrefixRefl!2284 lt!1374783 lt!1374783))))

(declare-fun b!3934910 () Bool)

(assert (=> b!3934910 (= e!2434394 e!2434399)))

(declare-fun res!1592253 () Bool)

(assert (=> b!3934910 (=> res!1592253 e!2434399)))

(assert (=> b!3934910 (= res!1592253 (isEmpty!24907 (_1!23664 lt!1375403)))))

(declare-fun b!3934911 () Bool)

(declare-fun c!683699 () Bool)

(assert (=> b!3934911 (= c!683699 call!284928)))

(declare-fun lt!1375411 () Unit!60236)

(declare-fun lt!1375421 () Unit!60236)

(assert (=> b!3934911 (= lt!1375411 lt!1375421)))

(declare-fun lt!1375401 () C!23042)

(declare-fun lt!1375406 () List!41894)

(assert (=> b!3934911 (= (++!10804 (++!10804 Nil!41770 (Cons!41770 lt!1375401 Nil!41770)) lt!1375406) lt!1374783)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1233 (List!41894 C!23042 List!41894 List!41894) Unit!60236)

(assert (=> b!3934911 (= lt!1375421 (lemmaMoveElementToOtherListKeepsConcatEq!1233 Nil!41770 lt!1375401 lt!1375406 lt!1374783))))

(assert (=> b!3934911 (= lt!1375406 (tail!6082 lt!1374783))))

(assert (=> b!3934911 (= lt!1375401 (head!8357 lt!1374783))))

(declare-fun lt!1375408 () Unit!60236)

(declare-fun lt!1375415 () Unit!60236)

(assert (=> b!3934911 (= lt!1375408 lt!1375415)))

(assert (=> b!3934911 (isPrefix!3618 (++!10804 Nil!41770 (Cons!41770 (head!8357 (getSuffix!2073 lt!1374783 Nil!41770)) Nil!41770)) lt!1374783)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!615 (List!41894 List!41894) Unit!60236)

(assert (=> b!3934911 (= lt!1375415 (lemmaAddHeadSuffixToPrefixStillPrefix!615 Nil!41770 lt!1374783))))

(declare-fun lt!1375400 () Unit!60236)

(declare-fun lt!1375410 () Unit!60236)

(assert (=> b!3934911 (= lt!1375400 lt!1375410)))

(assert (=> b!3934911 (= lt!1375410 (lemmaAddHeadSuffixToPrefixStillPrefix!615 Nil!41770 lt!1374783))))

(assert (=> b!3934911 (= lt!1375419 (++!10804 Nil!41770 (Cons!41770 (head!8357 lt!1374783) Nil!41770)))))

(declare-fun lt!1375398 () Unit!60236)

(assert (=> b!3934911 (= lt!1375398 e!2434401)))

(declare-fun c!683696 () Bool)

(assert (=> b!3934911 (= c!683696 (= (size!31338 Nil!41770) (size!31338 lt!1374783)))))

(declare-fun lt!1375402 () Unit!60236)

(declare-fun lt!1375396 () Unit!60236)

(assert (=> b!3934911 (= lt!1375402 lt!1375396)))

(assert (=> b!3934911 (<= (size!31338 Nil!41770) (size!31338 lt!1374783))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!423 (List!41894 List!41894) Unit!60236)

(assert (=> b!3934911 (= lt!1375396 (lemmaIsPrefixThenSmallerEqSize!423 Nil!41770 lt!1374783))))

(assert (=> b!3934911 (= e!2434396 e!2434395)))

(declare-fun bm!284928 () Bool)

(assert (=> bm!284928 (= call!284934 (isPrefix!3618 lt!1374783 lt!1374783))))

(declare-fun bm!284929 () Bool)

(assert (=> bm!284929 (= call!284928 (nullable!4005 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(declare-fun b!3934912 () Bool)

(declare-fun Unit!60263 () Unit!60236)

(assert (=> b!3934912 (= e!2434401 Unit!60263)))

(declare-fun lt!1375405 () Unit!60236)

(assert (=> b!3934912 (= lt!1375405 call!284933)))

(assert (=> b!3934912 call!284934))

(declare-fun lt!1375417 () Unit!60236)

(assert (=> b!3934912 (= lt!1375417 lt!1375405)))

(declare-fun lt!1375420 () Unit!60236)

(assert (=> b!3934912 (= lt!1375420 call!284930)))

(assert (=> b!3934912 (= lt!1374783 Nil!41770)))

(declare-fun lt!1375414 () Unit!60236)

(assert (=> b!3934912 (= lt!1375414 lt!1375420)))

(assert (=> b!3934912 false))

(declare-fun bm!284930 () Bool)

(assert (=> bm!284930 (= call!284930 (lemmaIsPrefixSameLengthThenSameList!814 lt!1374783 Nil!41770 lt!1374783))))

(declare-fun b!3934913 () Bool)

(assert (=> b!3934913 (= e!2434395 e!2434398)))

(assert (=> b!3934913 (= lt!1375413 call!284932)))

(declare-fun c!683695 () Bool)

(assert (=> b!3934913 (= c!683695 (isEmpty!24907 (_1!23664 lt!1375413)))))

(assert (= (and d!1166911 c!683697) b!3934909))

(assert (= (and d!1166911 (not c!683697)) b!3934906))

(assert (= (and b!3934906 c!683694) b!3934900))

(assert (= (and b!3934906 (not c!683694)) b!3934911))

(assert (= (and b!3934900 c!683698) b!3934904))

(assert (= (and b!3934900 (not c!683698)) b!3934907))

(assert (= (and b!3934911 c!683696) b!3934912))

(assert (= (and b!3934911 (not c!683696)) b!3934901))

(assert (= (and b!3934911 c!683699) b!3934913))

(assert (= (and b!3934911 (not c!683699)) b!3934908))

(assert (= (and b!3934913 c!683695) b!3934902))

(assert (= (and b!3934913 (not c!683695)) b!3934905))

(assert (= (or b!3934913 b!3934908) bm!284923))

(assert (= (or b!3934913 b!3934908) bm!284926))

(assert (= (or b!3934913 b!3934908) bm!284925))

(assert (= (or b!3934913 b!3934908) bm!284924))

(assert (= (or b!3934900 b!3934912) bm!284930))

(assert (= (or b!3934900 b!3934911) bm!284929))

(assert (= (or b!3934900 b!3934912) bm!284928))

(assert (= (or b!3934900 b!3934912) bm!284927))

(assert (= (and d!1166911 res!1592252) b!3934910))

(assert (= (and b!3934910 (not res!1592253)) b!3934903))

(assert (=> bm!284924 m!4500371))

(declare-fun m!4502045 () Bool)

(assert (=> bm!284924 m!4502045))

(declare-fun m!4502047 () Bool)

(assert (=> b!3934910 m!4502047))

(declare-fun m!4502049 () Bool)

(assert (=> b!3934913 m!4502049))

(declare-fun m!4502051 () Bool)

(assert (=> bm!284925 m!4502051))

(assert (=> bm!284923 m!4501121))

(assert (=> bm!284926 m!4500901))

(assert (=> bm!284927 m!4501433))

(assert (=> bm!284928 m!4501431))

(assert (=> bm!284929 m!4500927))

(declare-fun m!4502053 () Bool)

(assert (=> bm!284930 m!4502053))

(declare-fun m!4502055 () Bool)

(assert (=> b!3934911 m!4502055))

(declare-fun m!4502057 () Bool)

(assert (=> b!3934911 m!4502057))

(assert (=> b!3934911 m!4501121))

(assert (=> b!3934911 m!4502055))

(assert (=> b!3934911 m!4500371))

(declare-fun m!4502059 () Bool)

(assert (=> b!3934911 m!4502059))

(declare-fun m!4502061 () Bool)

(assert (=> b!3934911 m!4502061))

(declare-fun m!4502063 () Bool)

(assert (=> b!3934911 m!4502063))

(assert (=> b!3934911 m!4502059))

(assert (=> b!3934911 m!4500353))

(declare-fun m!4502065 () Bool)

(assert (=> b!3934911 m!4502065))

(assert (=> b!3934911 m!4500901))

(declare-fun m!4502067 () Bool)

(assert (=> b!3934911 m!4502067))

(assert (=> b!3934911 m!4502067))

(declare-fun m!4502069 () Bool)

(assert (=> b!3934911 m!4502069))

(declare-fun m!4502071 () Bool)

(assert (=> b!3934911 m!4502071))

(declare-fun m!4502073 () Bool)

(assert (=> b!3934911 m!4502073))

(declare-fun m!4502075 () Bool)

(assert (=> b!3934903 m!4502075))

(assert (=> b!3934903 m!4500353))

(declare-fun m!4502077 () Bool)

(assert (=> d!1166911 m!4502077))

(declare-fun m!4502079 () Bool)

(assert (=> d!1166911 m!4502079))

(declare-fun m!4502081 () Bool)

(assert (=> d!1166911 m!4502081))

(declare-fun m!4502083 () Bool)

(assert (=> d!1166911 m!4502083))

(assert (=> d!1166911 m!4500925))

(assert (=> d!1166911 m!4502059))

(assert (=> d!1166911 m!4502081))

(declare-fun m!4502085 () Bool)

(assert (=> d!1166911 m!4502085))

(declare-fun m!4502087 () Bool)

(assert (=> d!1166911 m!4502087))

(assert (=> b!3934342 d!1166911))

(declare-fun d!1166913 () Bool)

(declare-fun e!2434404 () Bool)

(assert (=> d!1166913 e!2434404))

(declare-fun res!1592256 () Bool)

(assert (=> d!1166913 (=> res!1592256 e!2434404)))

(assert (=> d!1166913 (= res!1592256 (isEmpty!24907 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))))))

(declare-fun lt!1375424 () Unit!60236)

(declare-fun choose!23449 (Regex!11428 List!41894) Unit!60236)

(assert (=> d!1166913 (= lt!1375424 (choose!23449 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) lt!1374783))))

(assert (=> d!1166913 (validRegex!5204 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))

(assert (=> d!1166913 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1239 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) lt!1374783) lt!1375424)))

(declare-fun b!3934916 () Bool)

(assert (=> b!3934916 (= e!2434404 (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))))))

(assert (= (and d!1166913 (not res!1592256)) b!3934916))

(declare-fun m!4502089 () Bool)

(assert (=> d!1166913 m!4502089))

(assert (=> d!1166913 m!4500925))

(assert (=> d!1166913 m!4500371))

(assert (=> d!1166913 m!4501287))

(assert (=> d!1166913 m!4500353))

(assert (=> d!1166913 m!4500353))

(assert (=> d!1166913 m!4500371))

(assert (=> d!1166913 m!4501269))

(assert (=> b!3934916 m!4500353))

(assert (=> b!3934916 m!4500371))

(assert (=> b!3934916 m!4500353))

(assert (=> b!3934916 m!4500371))

(assert (=> b!3934916 m!4501269))

(assert (=> b!3934916 m!4501271))

(assert (=> b!3934342 d!1166913))

(declare-fun d!1166915 () Bool)

(declare-fun lt!1375427 () Int)

(assert (=> d!1166915 (= lt!1375427 (size!31338 (list!15520 (seqFromList!4790 (_1!23664 lt!1375153)))))))

(declare-fun size!31345 (Conc!12734) Int)

(assert (=> d!1166915 (= lt!1375427 (size!31345 (c!683465 (seqFromList!4790 (_1!23664 lt!1375153)))))))

(assert (=> d!1166915 (= (size!31344 (seqFromList!4790 (_1!23664 lt!1375153))) lt!1375427)))

(declare-fun bs!586403 () Bool)

(assert (= bs!586403 d!1166915))

(assert (=> bs!586403 m!4501289))

(assert (=> bs!586403 m!4502043))

(assert (=> bs!586403 m!4502043))

(declare-fun m!4502091 () Bool)

(assert (=> bs!586403 m!4502091))

(declare-fun m!4502093 () Bool)

(assert (=> bs!586403 m!4502093))

(assert (=> b!3934342 d!1166915))

(assert (=> b!3934342 d!1166539))

(assert (=> b!3934424 d!1166739))

(declare-fun d!1166917 () Bool)

(assert (=> d!1166917 (= (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375210))))) (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210))))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375210))))))))

(declare-fun b_lambda!115105 () Bool)

(assert (=> (not b_lambda!115105) (not d!1166917)))

(declare-fun tb!235493 () Bool)

(declare-fun t!326122 () Bool)

(assert (=> (and b!3934496 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326122) tb!235493))

(declare-fun result!285314 () Bool)

(assert (=> tb!235493 (= result!285314 (inv!21 (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210))))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375210)))))))))

(declare-fun m!4502095 () Bool)

(assert (=> tb!235493 m!4502095))

(assert (=> d!1166917 t!326122))

(declare-fun b_and!300455 () Bool)

(assert (= b_and!300449 (and (=> t!326122 result!285314) b_and!300455)))

(declare-fun t!326124 () Bool)

(declare-fun tb!235495 () Bool)

(assert (=> (and b!3933781 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326124) tb!235495))

(declare-fun result!285316 () Bool)

(assert (= result!285316 result!285314))

(assert (=> d!1166917 t!326124))

(declare-fun b_and!300457 () Bool)

(assert (= b_and!300453 (and (=> t!326124 result!285316) b_and!300457)))

(declare-fun t!326126 () Bool)

(declare-fun tb!235497 () Bool)

(assert (=> (and b!3933750 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326126) tb!235497))

(declare-fun result!285318 () Bool)

(assert (= result!285318 result!285314))

(assert (=> d!1166917 t!326126))

(declare-fun b_and!300459 () Bool)

(assert (= b_and!300443 (and (=> t!326126 result!285318) b_and!300459)))

(declare-fun t!326128 () Bool)

(declare-fun tb!235499 () Bool)

(assert (=> (and b!3933775 (= (toValue!8979 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326128) tb!235499))

(declare-fun result!285320 () Bool)

(assert (= result!285320 result!285314))

(assert (=> d!1166917 t!326128))

(declare-fun b_and!300461 () Bool)

(assert (= b_and!300445 (and (=> t!326128 result!285320) b_and!300461)))

(declare-fun tb!235501 () Bool)

(declare-fun t!326130 () Bool)

(assert (=> (and b!3934446 (= (toValue!8979 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326130) tb!235501))

(declare-fun result!285322 () Bool)

(assert (= result!285322 result!285314))

(assert (=> d!1166917 t!326130))

(declare-fun b_and!300463 () Bool)

(assert (= b_and!300447 (and (=> t!326130 result!285322) b_and!300463)))

(declare-fun t!326132 () Bool)

(declare-fun tb!235503 () Bool)

(assert (=> (and b!3934466 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326132) tb!235503))

(declare-fun result!285324 () Bool)

(assert (= result!285324 result!285314))

(assert (=> d!1166917 t!326132))

(declare-fun b_and!300465 () Bool)

(assert (= b_and!300451 (and (=> t!326132 result!285324) b_and!300465)))

(assert (=> d!1166917 m!4501441))

(declare-fun m!4502097 () Bool)

(assert (=> d!1166917 m!4502097))

(assert (=> b!3934424 d!1166917))

(declare-fun d!1166919 () Bool)

(assert (=> d!1166919 (= (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375210)))) (fromListB!2213 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375210)))))))

(declare-fun bs!586404 () Bool)

(assert (= bs!586404 d!1166919))

(declare-fun m!4502099 () Bool)

(assert (=> bs!586404 m!4502099))

(assert (=> b!3934424 d!1166919))

(declare-fun d!1166921 () Bool)

(declare-fun lt!1375428 () Int)

(assert (=> d!1166921 (>= lt!1375428 0)))

(declare-fun e!2434406 () Int)

(assert (=> d!1166921 (= lt!1375428 e!2434406)))

(declare-fun c!683700 () Bool)

(assert (=> d!1166921 (= c!683700 (is-Nil!41771 lt!1375096))))

(assert (=> d!1166921 (= (size!31341 lt!1375096) lt!1375428)))

(declare-fun b!3934917 () Bool)

(assert (=> b!3934917 (= e!2434406 0)))

(declare-fun b!3934918 () Bool)

(assert (=> b!3934918 (= e!2434406 (+ 1 (size!31341 (t!325944 lt!1375096))))))

(assert (= (and d!1166921 c!683700) b!3934917))

(assert (= (and d!1166921 (not c!683700)) b!3934918))

(declare-fun m!4502101 () Bool)

(assert (=> b!3934918 m!4502101))

(assert (=> b!3934223 d!1166921))

(declare-fun d!1166923 () Bool)

(declare-fun lt!1375429 () Int)

(assert (=> d!1166923 (>= lt!1375429 0)))

(declare-fun e!2434407 () Int)

(assert (=> d!1166923 (= lt!1375429 e!2434407)))

(declare-fun c!683701 () Bool)

(assert (=> d!1166923 (= c!683701 (is-Nil!41771 prefixTokens!80))))

(assert (=> d!1166923 (= (size!31341 prefixTokens!80) lt!1375429)))

(declare-fun b!3934919 () Bool)

(assert (=> b!3934919 (= e!2434407 0)))

(declare-fun b!3934920 () Bool)

(assert (=> b!3934920 (= e!2434407 (+ 1 (size!31341 (t!325944 prefixTokens!80))))))

(assert (= (and d!1166923 c!683701) b!3934919))

(assert (= (and d!1166923 (not c!683701)) b!3934920))

(assert (=> b!3934920 m!4501835))

(assert (=> b!3934223 d!1166923))

(assert (=> b!3934223 d!1166811))

(declare-fun b!3934921 () Bool)

(declare-fun e!2434409 () Bool)

(declare-fun lt!1375432 () tuple2!41050)

(assert (=> b!3934921 (= e!2434409 (not (isEmpty!24905 (_1!23659 lt!1375432))))))

(declare-fun b!3934922 () Bool)

(declare-fun e!2434408 () tuple2!41050)

(assert (=> b!3934922 (= e!2434408 (tuple2!41051 Nil!41771 (_2!23660 (v!39270 lt!1375093))))))

(declare-fun d!1166925 () Bool)

(declare-fun e!2434410 () Bool)

(assert (=> d!1166925 e!2434410))

(declare-fun c!683702 () Bool)

(assert (=> d!1166925 (= c!683702 (> (size!31341 (_1!23659 lt!1375432)) 0))))

(assert (=> d!1166925 (= lt!1375432 e!2434408)))

(declare-fun c!683703 () Bool)

(declare-fun lt!1375430 () Option!8943)

(assert (=> d!1166925 (= c!683703 (is-Some!8942 lt!1375430))))

(assert (=> d!1166925 (= lt!1375430 (maxPrefix!3416 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375093))))))

(assert (=> d!1166925 (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375093))) lt!1375432)))

(declare-fun b!3934923 () Bool)

(declare-fun lt!1375431 () tuple2!41050)

(assert (=> b!3934923 (= e!2434408 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375430)) (_1!23659 lt!1375431)) (_2!23659 lt!1375431)))))

(assert (=> b!3934923 (= lt!1375431 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375430))))))

(declare-fun b!3934924 () Bool)

(assert (=> b!3934924 (= e!2434410 e!2434409)))

(declare-fun res!1592257 () Bool)

(assert (=> b!3934924 (= res!1592257 (< (size!31338 (_2!23659 lt!1375432)) (size!31338 (_2!23660 (v!39270 lt!1375093)))))))

(assert (=> b!3934924 (=> (not res!1592257) (not e!2434409))))

(declare-fun b!3934925 () Bool)

(assert (=> b!3934925 (= e!2434410 (= (_2!23659 lt!1375432) (_2!23660 (v!39270 lt!1375093))))))

(assert (= (and d!1166925 c!683703) b!3934923))

(assert (= (and d!1166925 (not c!683703)) b!3934922))

(assert (= (and d!1166925 c!683702) b!3934924))

(assert (= (and d!1166925 (not c!683702)) b!3934925))

(assert (= (and b!3934924 res!1592257) b!3934921))

(declare-fun m!4502103 () Bool)

(assert (=> b!3934921 m!4502103))

(declare-fun m!4502105 () Bool)

(assert (=> d!1166925 m!4502105))

(declare-fun m!4502107 () Bool)

(assert (=> d!1166925 m!4502107))

(declare-fun m!4502109 () Bool)

(assert (=> b!3934923 m!4502109))

(declare-fun m!4502111 () Bool)

(assert (=> b!3934924 m!4502111))

(declare-fun m!4502113 () Bool)

(assert (=> b!3934924 m!4502113))

(assert (=> b!3934218 d!1166925))

(declare-fun b!3934928 () Bool)

(declare-fun e!2434412 () Bool)

(assert (=> b!3934928 (= e!2434412 (isPrefix!3618 (tail!6082 prefix!426) (tail!6082 (++!10804 prefix!426 suffix!1176))))))

(declare-fun b!3934927 () Bool)

(declare-fun res!1592259 () Bool)

(assert (=> b!3934927 (=> (not res!1592259) (not e!2434412))))

(assert (=> b!3934927 (= res!1592259 (= (head!8357 prefix!426) (head!8357 (++!10804 prefix!426 suffix!1176))))))

(declare-fun b!3934929 () Bool)

(declare-fun e!2434411 () Bool)

(assert (=> b!3934929 (= e!2434411 (>= (size!31338 (++!10804 prefix!426 suffix!1176)) (size!31338 prefix!426)))))

(declare-fun d!1166927 () Bool)

(assert (=> d!1166927 e!2434411))

(declare-fun res!1592260 () Bool)

(assert (=> d!1166927 (=> res!1592260 e!2434411)))

(declare-fun lt!1375433 () Bool)

(assert (=> d!1166927 (= res!1592260 (not lt!1375433))))

(declare-fun e!2434413 () Bool)

(assert (=> d!1166927 (= lt!1375433 e!2434413)))

(declare-fun res!1592261 () Bool)

(assert (=> d!1166927 (=> res!1592261 e!2434413)))

(assert (=> d!1166927 (= res!1592261 (is-Nil!41770 prefix!426))))

(assert (=> d!1166927 (= (isPrefix!3618 prefix!426 (++!10804 prefix!426 suffix!1176)) lt!1375433)))

(declare-fun b!3934926 () Bool)

(assert (=> b!3934926 (= e!2434413 e!2434412)))

(declare-fun res!1592258 () Bool)

(assert (=> b!3934926 (=> (not res!1592258) (not e!2434412))))

(assert (=> b!3934926 (= res!1592258 (not (is-Nil!41770 (++!10804 prefix!426 suffix!1176))))))

(assert (= (and d!1166927 (not res!1592261)) b!3934926))

(assert (= (and b!3934926 res!1592258) b!3934927))

(assert (= (and b!3934927 res!1592259) b!3934928))

(assert (= (and d!1166927 (not res!1592260)) b!3934929))

(assert (=> b!3934928 m!4500663))

(assert (=> b!3934928 m!4500345))

(declare-fun m!4502115 () Bool)

(assert (=> b!3934928 m!4502115))

(assert (=> b!3934928 m!4500663))

(assert (=> b!3934928 m!4502115))

(declare-fun m!4502117 () Bool)

(assert (=> b!3934928 m!4502117))

(assert (=> b!3934927 m!4501119))

(assert (=> b!3934927 m!4500345))

(declare-fun m!4502119 () Bool)

(assert (=> b!3934927 m!4502119))

(assert (=> b!3934929 m!4500345))

(declare-fun m!4502121 () Bool)

(assert (=> b!3934929 m!4502121))

(assert (=> b!3934929 m!4500333))

(assert (=> d!1166541 d!1166927))

(assert (=> d!1166541 d!1166537))

(declare-fun d!1166929 () Bool)

(assert (=> d!1166929 (isPrefix!3618 prefix!426 (++!10804 prefix!426 suffix!1176))))

(assert (=> d!1166929 true))

(declare-fun _$46!1576 () Unit!60236)

(assert (=> d!1166929 (= (choose!23433 prefix!426 suffix!1176) _$46!1576)))

(declare-fun bs!586405 () Bool)

(assert (= bs!586405 d!1166929))

(assert (=> bs!586405 m!4500345))

(assert (=> bs!586405 m!4500345))

(assert (=> bs!586405 m!4501113))

(assert (=> d!1166541 d!1166929))

(declare-fun d!1166931 () Bool)

(declare-fun lt!1375434 () Int)

(assert (=> d!1166931 (>= lt!1375434 0)))

(declare-fun e!2434414 () Int)

(assert (=> d!1166931 (= lt!1375434 e!2434414)))

(declare-fun c!683704 () Bool)

(assert (=> d!1166931 (= c!683704 (is-Nil!41771 lt!1375088))))

(assert (=> d!1166931 (= (size!31341 lt!1375088) lt!1375434)))

(declare-fun b!3934930 () Bool)

(assert (=> b!3934930 (= e!2434414 0)))

(declare-fun b!3934931 () Bool)

(assert (=> b!3934931 (= e!2434414 (+ 1 (size!31341 (t!325944 lt!1375088))))))

(assert (= (and d!1166931 c!683704) b!3934930))

(assert (= (and d!1166931 (not c!683704)) b!3934931))

(declare-fun m!4502123 () Bool)

(assert (=> b!3934931 m!4502123))

(assert (=> b!3934179 d!1166931))

(declare-fun d!1166933 () Bool)

(declare-fun lt!1375435 () Int)

(assert (=> d!1166933 (>= lt!1375435 0)))

(declare-fun e!2434415 () Int)

(assert (=> d!1166933 (= lt!1375435 e!2434415)))

(declare-fun c!683705 () Bool)

(assert (=> d!1166933 (= c!683705 (is-Nil!41771 lt!1374792))))

(assert (=> d!1166933 (= (size!31341 lt!1374792) lt!1375435)))

(declare-fun b!3934932 () Bool)

(assert (=> b!3934932 (= e!2434415 0)))

(declare-fun b!3934933 () Bool)

(assert (=> b!3934933 (= e!2434415 (+ 1 (size!31341 (t!325944 lt!1374792))))))

(assert (= (and d!1166933 c!683705) b!3934932))

(assert (= (and d!1166933 (not c!683705)) b!3934933))

(assert (=> b!3934933 m!4501819))

(assert (=> b!3934179 d!1166933))

(declare-fun d!1166935 () Bool)

(declare-fun lt!1375436 () Int)

(assert (=> d!1166935 (>= lt!1375436 0)))

(declare-fun e!2434416 () Int)

(assert (=> d!1166935 (= lt!1375436 e!2434416)))

(declare-fun c!683706 () Bool)

(assert (=> d!1166935 (= c!683706 (is-Nil!41771 (_1!23659 lt!1374768)))))

(assert (=> d!1166935 (= (size!31341 (_1!23659 lt!1374768)) lt!1375436)))

(declare-fun b!3934934 () Bool)

(assert (=> b!3934934 (= e!2434416 0)))

(declare-fun b!3934935 () Bool)

(assert (=> b!3934935 (= e!2434416 (+ 1 (size!31341 (t!325944 (_1!23659 lt!1374768)))))))

(assert (= (and d!1166935 c!683706) b!3934934))

(assert (= (and d!1166935 (not c!683706)) b!3934935))

(declare-fun m!4502125 () Bool)

(assert (=> b!3934935 m!4502125))

(assert (=> b!3934179 d!1166935))

(declare-fun b!3934936 () Bool)

(declare-fun e!2434418 () List!41894)

(assert (=> b!3934936 (= e!2434418 suffix!1176)))

(declare-fun b!3934937 () Bool)

(assert (=> b!3934937 (= e!2434418 (Cons!41770 (h!47190 (t!325943 prefix!426)) (++!10804 (t!325943 (t!325943 prefix!426)) suffix!1176)))))

(declare-fun b!3934938 () Bool)

(declare-fun res!1592263 () Bool)

(declare-fun e!2434417 () Bool)

(assert (=> b!3934938 (=> (not res!1592263) (not e!2434417))))

(declare-fun lt!1375437 () List!41894)

(assert (=> b!3934938 (= res!1592263 (= (size!31338 lt!1375437) (+ (size!31338 (t!325943 prefix!426)) (size!31338 suffix!1176))))))

(declare-fun d!1166937 () Bool)

(assert (=> d!1166937 e!2434417))

(declare-fun res!1592262 () Bool)

(assert (=> d!1166937 (=> (not res!1592262) (not e!2434417))))

(assert (=> d!1166937 (= res!1592262 (= (content!6295 lt!1375437) (set.union (content!6295 (t!325943 prefix!426)) (content!6295 suffix!1176))))))

(assert (=> d!1166937 (= lt!1375437 e!2434418)))

(declare-fun c!683707 () Bool)

(assert (=> d!1166937 (= c!683707 (is-Nil!41770 (t!325943 prefix!426)))))

(assert (=> d!1166937 (= (++!10804 (t!325943 prefix!426) suffix!1176) lt!1375437)))

(declare-fun b!3934939 () Bool)

(assert (=> b!3934939 (= e!2434417 (or (not (= suffix!1176 Nil!41770)) (= lt!1375437 (t!325943 prefix!426))))))

(assert (= (and d!1166937 c!683707) b!3934936))

(assert (= (and d!1166937 (not c!683707)) b!3934937))

(assert (= (and d!1166937 res!1592262) b!3934938))

(assert (= (and b!3934938 res!1592263) b!3934939))

(declare-fun m!4502127 () Bool)

(assert (=> b!3934937 m!4502127))

(declare-fun m!4502129 () Bool)

(assert (=> b!3934938 m!4502129))

(assert (=> b!3934938 m!4501361))

(assert (=> b!3934938 m!4500315))

(declare-fun m!4502131 () Bool)

(assert (=> d!1166937 m!4502131))

(assert (=> d!1166937 m!4501967))

(assert (=> d!1166937 m!4500797))

(assert (=> b!3934226 d!1166937))

(declare-fun d!1166939 () Bool)

(assert (=> d!1166939 (= (_2!23660 (v!39270 lt!1374800)) lt!1374797)))

(assert (=> d!1166939 true))

(declare-fun _$63!997 () Unit!60236)

(assert (=> d!1166939 (= (choose!23431 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 lt!1374797 lt!1374783) _$63!997)))

(assert (=> d!1166609 d!1166939))

(assert (=> d!1166609 d!1166827))

(declare-fun d!1166941 () Bool)

(declare-fun charsToBigInt!1 (List!41893) Int)

(assert (=> d!1166941 (= (inv!17 (value!206541 (h!47191 suffixTokens!72))) (= (charsToBigInt!1 (text!47719 (value!206541 (h!47191 suffixTokens!72)))) (value!206533 (value!206541 (h!47191 suffixTokens!72)))))))

(declare-fun bs!586406 () Bool)

(assert (= bs!586406 d!1166941))

(declare-fun m!4502133 () Bool)

(assert (=> bs!586406 m!4502133))

(assert (=> b!3934192 d!1166941))

(declare-fun d!1166943 () Bool)

(declare-fun e!2434419 () Bool)

(assert (=> d!1166943 e!2434419))

(declare-fun res!1592264 () Bool)

(assert (=> d!1166943 (=> (not res!1592264) (not e!2434419))))

(declare-fun lt!1375438 () List!41895)

(assert (=> d!1166943 (= res!1592264 (= (content!6296 lt!1375438) (set.union (content!6296 (t!325944 (++!10803 lt!1374792 lt!1374778))) (content!6296 suffixTokens!72))))))

(declare-fun e!2434420 () List!41895)

(assert (=> d!1166943 (= lt!1375438 e!2434420)))

(declare-fun c!683708 () Bool)

(assert (=> d!1166943 (= c!683708 (is-Nil!41771 (t!325944 (++!10803 lt!1374792 lt!1374778))))))

(assert (=> d!1166943 (= (++!10803 (t!325944 (++!10803 lt!1374792 lt!1374778)) suffixTokens!72) lt!1375438)))

(declare-fun b!3934943 () Bool)

(assert (=> b!3934943 (= e!2434419 (or (not (= suffixTokens!72 Nil!41771)) (= lt!1375438 (t!325944 (++!10803 lt!1374792 lt!1374778)))))))

(declare-fun b!3934942 () Bool)

(declare-fun res!1592265 () Bool)

(assert (=> b!3934942 (=> (not res!1592265) (not e!2434419))))

(assert (=> b!3934942 (= res!1592265 (= (size!31341 lt!1375438) (+ (size!31341 (t!325944 (++!10803 lt!1374792 lt!1374778))) (size!31341 suffixTokens!72))))))

(declare-fun b!3934940 () Bool)

(assert (=> b!3934940 (= e!2434420 suffixTokens!72)))

(declare-fun b!3934941 () Bool)

(assert (=> b!3934941 (= e!2434420 (Cons!41771 (h!47191 (t!325944 (++!10803 lt!1374792 lt!1374778))) (++!10803 (t!325944 (t!325944 (++!10803 lt!1374792 lt!1374778))) suffixTokens!72)))))

(assert (= (and d!1166943 c!683708) b!3934940))

(assert (= (and d!1166943 (not c!683708)) b!3934941))

(assert (= (and d!1166943 res!1592264) b!3934942))

(assert (= (and b!3934942 res!1592265) b!3934943))

(declare-fun m!4502135 () Bool)

(assert (=> d!1166943 m!4502135))

(declare-fun m!4502137 () Bool)

(assert (=> d!1166943 m!4502137))

(assert (=> d!1166943 m!4500721))

(declare-fun m!4502139 () Bool)

(assert (=> b!3934942 m!4502139))

(declare-fun m!4502141 () Bool)

(assert (=> b!3934942 m!4502141))

(assert (=> b!3934942 m!4500727))

(declare-fun m!4502143 () Bool)

(assert (=> b!3934941 m!4502143))

(assert (=> b!3934021 d!1166943))

(declare-fun b!3934944 () Bool)

(declare-fun e!2434422 () Bool)

(declare-fun lt!1375441 () tuple2!41050)

(assert (=> b!3934944 (= e!2434422 (not (isEmpty!24905 (_1!23659 lt!1375441))))))

(declare-fun b!3934945 () Bool)

(declare-fun e!2434421 () tuple2!41050)

(assert (=> b!3934945 (= e!2434421 (tuple2!41051 Nil!41771 (_2!23660 (v!39270 lt!1375058))))))

(declare-fun d!1166945 () Bool)

(declare-fun e!2434423 () Bool)

(assert (=> d!1166945 e!2434423))

(declare-fun c!683709 () Bool)

(assert (=> d!1166945 (= c!683709 (> (size!31341 (_1!23659 lt!1375441)) 0))))

(assert (=> d!1166945 (= lt!1375441 e!2434421)))

(declare-fun c!683710 () Bool)

(declare-fun lt!1375439 () Option!8943)

(assert (=> d!1166945 (= c!683710 (is-Some!8942 lt!1375439))))

(assert (=> d!1166945 (= lt!1375439 (maxPrefix!3416 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375058))))))

(assert (=> d!1166945 (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375058))) lt!1375441)))

(declare-fun b!3934946 () Bool)

(declare-fun lt!1375440 () tuple2!41050)

(assert (=> b!3934946 (= e!2434421 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375439)) (_1!23659 lt!1375440)) (_2!23659 lt!1375440)))))

(assert (=> b!3934946 (= lt!1375440 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375439))))))

(declare-fun b!3934947 () Bool)

(assert (=> b!3934947 (= e!2434423 e!2434422)))

(declare-fun res!1592266 () Bool)

(assert (=> b!3934947 (= res!1592266 (< (size!31338 (_2!23659 lt!1375441)) (size!31338 (_2!23660 (v!39270 lt!1375058)))))))

(assert (=> b!3934947 (=> (not res!1592266) (not e!2434422))))

(declare-fun b!3934948 () Bool)

(assert (=> b!3934948 (= e!2434423 (= (_2!23659 lt!1375441) (_2!23660 (v!39270 lt!1375058))))))

(assert (= (and d!1166945 c!683710) b!3934946))

(assert (= (and d!1166945 (not c!683710)) b!3934945))

(assert (= (and d!1166945 c!683709) b!3934947))

(assert (= (and d!1166945 (not c!683709)) b!3934948))

(assert (= (and b!3934947 res!1592266) b!3934944))

(declare-fun m!4502145 () Bool)

(assert (=> b!3934944 m!4502145))

(declare-fun m!4502147 () Bool)

(assert (=> d!1166945 m!4502147))

(declare-fun m!4502149 () Bool)

(assert (=> d!1166945 m!4502149))

(declare-fun m!4502151 () Bool)

(assert (=> b!3934946 m!4502151))

(declare-fun m!4502153 () Bool)

(assert (=> b!3934947 m!4502153))

(declare-fun m!4502155 () Bool)

(assert (=> b!3934947 m!4502155))

(assert (=> b!3934130 d!1166945))

(declare-fun d!1166947 () Bool)

(assert (=> d!1166947 (= (inv!55966 (tag!7383 (h!47192 (t!325945 rules!2768)))) (= (mod (str.len (value!206540 (tag!7383 (h!47192 (t!325945 rules!2768))))) 2) 0))))

(assert (=> b!3934445 d!1166947))

(declare-fun d!1166949 () Bool)

(declare-fun res!1592267 () Bool)

(declare-fun e!2434424 () Bool)

(assert (=> d!1166949 (=> (not res!1592267) (not e!2434424))))

(assert (=> d!1166949 (= res!1592267 (semiInverseModEq!2804 (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toValue!8979 (transformation!6523 (h!47192 (t!325945 rules!2768))))))))

(assert (=> d!1166949 (= (inv!55970 (transformation!6523 (h!47192 (t!325945 rules!2768)))) e!2434424)))

(declare-fun b!3934949 () Bool)

(assert (=> b!3934949 (= e!2434424 (equivClasses!2703 (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toValue!8979 (transformation!6523 (h!47192 (t!325945 rules!2768))))))))

(assert (= (and d!1166949 res!1592267) b!3934949))

(declare-fun m!4502157 () Bool)

(assert (=> d!1166949 m!4502157))

(declare-fun m!4502159 () Bool)

(assert (=> b!3934949 m!4502159))

(assert (=> b!3934445 d!1166949))

(declare-fun d!1166951 () Bool)

(assert (not d!1166951))

(assert (=> b!3934230 d!1166951))

(declare-fun b!3934950 () Bool)

(declare-fun e!2434426 () Bool)

(declare-fun lt!1375444 () tuple2!41050)

(assert (=> b!3934950 (= e!2434426 (not (isEmpty!24905 (_1!23659 lt!1375444))))))

(declare-fun b!3934951 () Bool)

(declare-fun e!2434425 () tuple2!41050)

(assert (=> b!3934951 (= e!2434425 (tuple2!41051 Nil!41771 (_2!23660 (v!39270 lt!1375037))))))

(declare-fun d!1166953 () Bool)

(declare-fun e!2434427 () Bool)

(assert (=> d!1166953 e!2434427))

(declare-fun c!683711 () Bool)

(assert (=> d!1166953 (= c!683711 (> (size!31341 (_1!23659 lt!1375444)) 0))))

(assert (=> d!1166953 (= lt!1375444 e!2434425)))

(declare-fun c!683712 () Bool)

(declare-fun lt!1375442 () Option!8943)

(assert (=> d!1166953 (= c!683712 (is-Some!8942 lt!1375442))))

(assert (=> d!1166953 (= lt!1375442 (maxPrefix!3416 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375037))))))

(assert (=> d!1166953 (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375037))) lt!1375444)))

(declare-fun b!3934952 () Bool)

(declare-fun lt!1375443 () tuple2!41050)

(assert (=> b!3934952 (= e!2434425 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375442)) (_1!23659 lt!1375443)) (_2!23659 lt!1375443)))))

(assert (=> b!3934952 (= lt!1375443 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375442))))))

(declare-fun b!3934953 () Bool)

(assert (=> b!3934953 (= e!2434427 e!2434426)))

(declare-fun res!1592268 () Bool)

(assert (=> b!3934953 (= res!1592268 (< (size!31338 (_2!23659 lt!1375444)) (size!31338 (_2!23660 (v!39270 lt!1375037)))))))

(assert (=> b!3934953 (=> (not res!1592268) (not e!2434426))))

(declare-fun b!3934954 () Bool)

(assert (=> b!3934954 (= e!2434427 (= (_2!23659 lt!1375444) (_2!23660 (v!39270 lt!1375037))))))

(assert (= (and d!1166953 c!683712) b!3934952))

(assert (= (and d!1166953 (not c!683712)) b!3934951))

(assert (= (and d!1166953 c!683711) b!3934953))

(assert (= (and d!1166953 (not c!683711)) b!3934954))

(assert (= (and b!3934953 res!1592268) b!3934950))

(declare-fun m!4502161 () Bool)

(assert (=> b!3934950 m!4502161))

(declare-fun m!4502163 () Bool)

(assert (=> d!1166953 m!4502163))

(declare-fun m!4502165 () Bool)

(assert (=> d!1166953 m!4502165))

(declare-fun m!4502167 () Bool)

(assert (=> b!3934952 m!4502167))

(declare-fun m!4502169 () Bool)

(assert (=> b!3934953 m!4502169))

(declare-fun m!4502171 () Bool)

(assert (=> b!3934953 m!4502171))

(assert (=> b!3934091 d!1166953))

(declare-fun d!1166955 () Bool)

(declare-fun c!683713 () Bool)

(assert (=> d!1166955 (= c!683713 (is-Nil!41771 lt!1374999))))

(declare-fun e!2434428 () (Set Token!12184))

(assert (=> d!1166955 (= (content!6296 lt!1374999) e!2434428)))

(declare-fun b!3934955 () Bool)

(assert (=> b!3934955 (= e!2434428 (as set.empty (Set Token!12184)))))

(declare-fun b!3934956 () Bool)

(assert (=> b!3934956 (= e!2434428 (set.union (set.insert (h!47191 lt!1374999) (as set.empty (Set Token!12184))) (content!6296 (t!325944 lt!1374999))))))

(assert (= (and d!1166955 c!683713) b!3934955))

(assert (= (and d!1166955 (not c!683713)) b!3934956))

(declare-fun m!4502173 () Bool)

(assert (=> b!3934956 m!4502173))

(declare-fun m!4502175 () Bool)

(assert (=> b!3934956 m!4502175))

(assert (=> d!1166407 d!1166955))

(declare-fun d!1166957 () Bool)

(declare-fun c!683714 () Bool)

(assert (=> d!1166957 (= c!683714 (is-Nil!41771 (++!10803 lt!1374792 lt!1374778)))))

(declare-fun e!2434429 () (Set Token!12184))

(assert (=> d!1166957 (= (content!6296 (++!10803 lt!1374792 lt!1374778)) e!2434429)))

(declare-fun b!3934957 () Bool)

(assert (=> b!3934957 (= e!2434429 (as set.empty (Set Token!12184)))))

(declare-fun b!3934958 () Bool)

(assert (=> b!3934958 (= e!2434429 (set.union (set.insert (h!47191 (++!10803 lt!1374792 lt!1374778)) (as set.empty (Set Token!12184))) (content!6296 (t!325944 (++!10803 lt!1374792 lt!1374778)))))))

(assert (= (and d!1166957 c!683714) b!3934957))

(assert (= (and d!1166957 (not c!683714)) b!3934958))

(declare-fun m!4502177 () Bool)

(assert (=> b!3934958 m!4502177))

(assert (=> b!3934958 m!4502137))

(assert (=> d!1166407 d!1166957))

(assert (=> d!1166407 d!1166709))

(declare-fun d!1166959 () Bool)

(declare-fun c!683715 () Bool)

(assert (=> d!1166959 (= c!683715 (is-Nil!41770 lt!1375013))))

(declare-fun e!2434430 () (Set C!23042))

(assert (=> d!1166959 (= (content!6295 lt!1375013) e!2434430)))

(declare-fun b!3934959 () Bool)

(assert (=> b!3934959 (= e!2434430 (as set.empty (Set C!23042)))))

(declare-fun b!3934960 () Bool)

(assert (=> b!3934960 (= e!2434430 (set.union (set.insert (h!47190 lt!1375013) (as set.empty (Set C!23042))) (content!6295 (t!325943 lt!1375013))))))

(assert (= (and d!1166959 c!683715) b!3934959))

(assert (= (and d!1166959 (not c!683715)) b!3934960))

(declare-fun m!4502179 () Bool)

(assert (=> b!3934960 m!4502179))

(declare-fun m!4502181 () Bool)

(assert (=> b!3934960 m!4502181))

(assert (=> d!1166417 d!1166959))

(declare-fun d!1166961 () Bool)

(declare-fun c!683716 () Bool)

(assert (=> d!1166961 (= c!683716 (is-Nil!41770 lt!1374817))))

(declare-fun e!2434431 () (Set C!23042))

(assert (=> d!1166961 (= (content!6295 lt!1374817) e!2434431)))

(declare-fun b!3934961 () Bool)

(assert (=> b!3934961 (= e!2434431 (as set.empty (Set C!23042)))))

(declare-fun b!3934962 () Bool)

(assert (=> b!3934962 (= e!2434431 (set.union (set.insert (h!47190 lt!1374817) (as set.empty (Set C!23042))) (content!6295 (t!325943 lt!1374817))))))

(assert (= (and d!1166961 c!683716) b!3934961))

(assert (= (and d!1166961 (not c!683716)) b!3934962))

(declare-fun m!4502183 () Bool)

(assert (=> b!3934962 m!4502183))

(assert (=> b!3934962 m!4501671))

(assert (=> d!1166417 d!1166961))

(declare-fun d!1166963 () Bool)

(declare-fun c!683717 () Bool)

(assert (=> d!1166963 (= c!683717 (is-Nil!41770 lt!1374797))))

(declare-fun e!2434432 () (Set C!23042))

(assert (=> d!1166963 (= (content!6295 lt!1374797) e!2434432)))

(declare-fun b!3934963 () Bool)

(assert (=> b!3934963 (= e!2434432 (as set.empty (Set C!23042)))))

(declare-fun b!3934964 () Bool)

(assert (=> b!3934964 (= e!2434432 (set.union (set.insert (h!47190 lt!1374797) (as set.empty (Set C!23042))) (content!6295 (t!325943 lt!1374797))))))

(assert (= (and d!1166963 c!683717) b!3934963))

(assert (= (and d!1166963 (not c!683717)) b!3934964))

(declare-fun m!4502185 () Bool)

(assert (=> b!3934964 m!4502185))

(declare-fun m!4502187 () Bool)

(assert (=> b!3934964 m!4502187))

(assert (=> d!1166417 d!1166963))

(declare-fun d!1166965 () Bool)

(assert (=> d!1166965 (= (inv!55966 (tag!7383 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (= (mod (str.len (value!206540 (tag!7383 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3934465 d!1166965))

(declare-fun d!1166967 () Bool)

(declare-fun res!1592269 () Bool)

(declare-fun e!2434433 () Bool)

(assert (=> d!1166967 (=> (not res!1592269) (not e!2434433))))

(assert (=> d!1166967 (= res!1592269 (semiInverseModEq!2804 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))))))

(assert (=> d!1166967 (= (inv!55970 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) e!2434433)))

(declare-fun b!3934965 () Bool)

(assert (=> b!3934965 (= e!2434433 (equivClasses!2703 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))))))

(assert (= (and d!1166967 res!1592269) b!3934965))

(declare-fun m!4502189 () Bool)

(assert (=> d!1166967 m!4502189))

(declare-fun m!4502191 () Bool)

(assert (=> b!3934965 m!4502191))

(assert (=> b!3934465 d!1166967))

(declare-fun d!1166969 () Bool)

(declare-fun lt!1375445 () Int)

(assert (=> d!1166969 (>= lt!1375445 0)))

(declare-fun e!2434434 () Int)

(assert (=> d!1166969 (= lt!1375445 e!2434434)))

(declare-fun c!683718 () Bool)

(assert (=> d!1166969 (= c!683718 (is-Nil!41771 lt!1374998))))

(assert (=> d!1166969 (= (size!31341 lt!1374998) lt!1375445)))

(declare-fun b!3934966 () Bool)

(assert (=> b!3934966 (= e!2434434 0)))

(declare-fun b!3934967 () Bool)

(assert (=> b!3934967 (= e!2434434 (+ 1 (size!31341 (t!325944 lt!1374998))))))

(assert (= (and d!1166969 c!683718) b!3934966))

(assert (= (and d!1166969 (not c!683718)) b!3934967))

(declare-fun m!4502193 () Bool)

(assert (=> b!3934967 m!4502193))

(assert (=> b!3934018 d!1166969))

(assert (=> b!3934018 d!1166933))

(declare-fun d!1166971 () Bool)

(declare-fun lt!1375446 () Int)

(assert (=> d!1166971 (>= lt!1375446 0)))

(declare-fun e!2434435 () Int)

(assert (=> d!1166971 (= lt!1375446 e!2434435)))

(declare-fun c!683719 () Bool)

(assert (=> d!1166971 (= c!683719 (is-Nil!41771 lt!1374801))))

(assert (=> d!1166971 (= (size!31341 lt!1374801) lt!1375446)))

(declare-fun b!3934968 () Bool)

(assert (=> b!3934968 (= e!2434435 0)))

(declare-fun b!3934969 () Bool)

(assert (=> b!3934969 (= e!2434435 (+ 1 (size!31341 (t!325944 lt!1374801))))))

(assert (= (and d!1166971 c!683719) b!3934968))

(assert (= (and d!1166971 (not c!683719)) b!3934969))

(declare-fun m!4502195 () Bool)

(assert (=> b!3934969 m!4502195))

(assert (=> b!3934018 d!1166971))

(declare-fun b!3934972 () Bool)

(declare-fun e!2434437 () Bool)

(assert (=> b!3934972 (= e!2434437 (isPrefix!3618 (tail!6082 (tail!6082 lt!1374817)) (tail!6082 (tail!6082 lt!1374769))))))

(declare-fun b!3934971 () Bool)

(declare-fun res!1592271 () Bool)

(assert (=> b!3934971 (=> (not res!1592271) (not e!2434437))))

(assert (=> b!3934971 (= res!1592271 (= (head!8357 (tail!6082 lt!1374817)) (head!8357 (tail!6082 lt!1374769))))))

(declare-fun b!3934973 () Bool)

(declare-fun e!2434436 () Bool)

(assert (=> b!3934973 (= e!2434436 (>= (size!31338 (tail!6082 lt!1374769)) (size!31338 (tail!6082 lt!1374817))))))

(declare-fun d!1166973 () Bool)

(assert (=> d!1166973 e!2434436))

(declare-fun res!1592272 () Bool)

(assert (=> d!1166973 (=> res!1592272 e!2434436)))

(declare-fun lt!1375447 () Bool)

(assert (=> d!1166973 (= res!1592272 (not lt!1375447))))

(declare-fun e!2434438 () Bool)

(assert (=> d!1166973 (= lt!1375447 e!2434438)))

(declare-fun res!1592273 () Bool)

(assert (=> d!1166973 (=> res!1592273 e!2434438)))

(assert (=> d!1166973 (= res!1592273 (is-Nil!41770 (tail!6082 lt!1374817)))))

(assert (=> d!1166973 (= (isPrefix!3618 (tail!6082 lt!1374817) (tail!6082 lt!1374769)) lt!1375447)))

(declare-fun b!3934970 () Bool)

(assert (=> b!3934970 (= e!2434438 e!2434437)))

(declare-fun res!1592270 () Bool)

(assert (=> b!3934970 (=> (not res!1592270) (not e!2434437))))

(assert (=> b!3934970 (= res!1592270 (not (is-Nil!41770 (tail!6082 lt!1374769))))))

(assert (= (and d!1166973 (not res!1592273)) b!3934970))

(assert (= (and b!3934970 res!1592270) b!3934971))

(assert (= (and b!3934971 res!1592271) b!3934972))

(assert (= (and d!1166973 (not res!1592272)) b!3934973))

(assert (=> b!3934972 m!4500929))

(assert (=> b!3934972 m!4501637))

(assert (=> b!3934972 m!4501333))

(declare-fun m!4502197 () Bool)

(assert (=> b!3934972 m!4502197))

(assert (=> b!3934972 m!4501637))

(assert (=> b!3934972 m!4502197))

(declare-fun m!4502199 () Bool)

(assert (=> b!3934972 m!4502199))

(assert (=> b!3934971 m!4500929))

(assert (=> b!3934971 m!4501643))

(assert (=> b!3934971 m!4501333))

(declare-fun m!4502201 () Bool)

(assert (=> b!3934971 m!4502201))

(assert (=> b!3934973 m!4501333))

(declare-fun m!4502203 () Bool)

(assert (=> b!3934973 m!4502203))

(assert (=> b!3934973 m!4500929))

(assert (=> b!3934973 m!4501649))

(assert (=> b!3934360 d!1166973))

(assert (=> b!3934360 d!1166717))

(declare-fun d!1166975 () Bool)

(assert (=> d!1166975 (= (tail!6082 lt!1374769) (t!325943 lt!1374769))))

(assert (=> b!3934360 d!1166975))

(declare-fun b!3934974 () Bool)

(declare-fun e!2434440 () List!41894)

(assert (=> b!3934974 (= e!2434440 lt!1374813)))

(declare-fun b!3934975 () Bool)

(assert (=> b!3934975 (= e!2434440 (Cons!41770 (h!47190 (t!325943 lt!1374817)) (++!10804 (t!325943 (t!325943 lt!1374817)) lt!1374813)))))

(declare-fun b!3934976 () Bool)

(declare-fun res!1592275 () Bool)

(declare-fun e!2434439 () Bool)

(assert (=> b!3934976 (=> (not res!1592275) (not e!2434439))))

(declare-fun lt!1375448 () List!41894)

(assert (=> b!3934976 (= res!1592275 (= (size!31338 lt!1375448) (+ (size!31338 (t!325943 lt!1374817)) (size!31338 lt!1374813))))))

(declare-fun d!1166977 () Bool)

(assert (=> d!1166977 e!2434439))

(declare-fun res!1592274 () Bool)

(assert (=> d!1166977 (=> (not res!1592274) (not e!2434439))))

(assert (=> d!1166977 (= res!1592274 (= (content!6295 lt!1375448) (set.union (content!6295 (t!325943 lt!1374817)) (content!6295 lt!1374813))))))

(assert (=> d!1166977 (= lt!1375448 e!2434440)))

(declare-fun c!683720 () Bool)

(assert (=> d!1166977 (= c!683720 (is-Nil!41770 (t!325943 lt!1374817)))))

(assert (=> d!1166977 (= (++!10804 (t!325943 lt!1374817) lt!1374813) lt!1375448)))

(declare-fun b!3934977 () Bool)

(assert (=> b!3934977 (= e!2434439 (or (not (= lt!1374813 Nil!41770)) (= lt!1375448 (t!325943 lt!1374817))))))

(assert (= (and d!1166977 c!683720) b!3934974))

(assert (= (and d!1166977 (not c!683720)) b!3934975))

(assert (= (and d!1166977 res!1592274) b!3934976))

(assert (= (and b!3934976 res!1592275) b!3934977))

(declare-fun m!4502205 () Bool)

(assert (=> b!3934975 m!4502205))

(declare-fun m!4502207 () Bool)

(assert (=> b!3934976 m!4502207))

(assert (=> b!3934976 m!4500873))

(assert (=> b!3934976 m!4500653))

(declare-fun m!4502209 () Bool)

(assert (=> d!1166977 m!4502209))

(assert (=> d!1166977 m!4501671))

(assert (=> d!1166977 m!4500659))

(assert (=> b!3933977 d!1166977))

(declare-fun b!3934980 () Bool)

(declare-fun e!2434442 () Bool)

(assert (=> b!3934980 (= e!2434442 (isPrefix!3618 (tail!6082 (tail!6082 lt!1374813)) (tail!6082 (tail!6082 (_2!23660 (v!39270 lt!1374800))))))))

(declare-fun b!3934979 () Bool)

(declare-fun res!1592277 () Bool)

(assert (=> b!3934979 (=> (not res!1592277) (not e!2434442))))

(assert (=> b!3934979 (= res!1592277 (= (head!8357 (tail!6082 lt!1374813)) (head!8357 (tail!6082 (_2!23660 (v!39270 lt!1374800))))))))

(declare-fun b!3934981 () Bool)

(declare-fun e!2434441 () Bool)

(assert (=> b!3934981 (= e!2434441 (>= (size!31338 (tail!6082 (_2!23660 (v!39270 lt!1374800)))) (size!31338 (tail!6082 lt!1374813))))))

(declare-fun d!1166979 () Bool)

(assert (=> d!1166979 e!2434441))

(declare-fun res!1592278 () Bool)

(assert (=> d!1166979 (=> res!1592278 e!2434441)))

(declare-fun lt!1375449 () Bool)

(assert (=> d!1166979 (= res!1592278 (not lt!1375449))))

(declare-fun e!2434443 () Bool)

(assert (=> d!1166979 (= lt!1375449 e!2434443)))

(declare-fun res!1592279 () Bool)

(assert (=> d!1166979 (=> res!1592279 e!2434443)))

(assert (=> d!1166979 (= res!1592279 (is-Nil!41770 (tail!6082 lt!1374813)))))

(assert (=> d!1166979 (= (isPrefix!3618 (tail!6082 lt!1374813) (tail!6082 (_2!23660 (v!39270 lt!1374800)))) lt!1375449)))

(declare-fun b!3934978 () Bool)

(assert (=> b!3934978 (= e!2434443 e!2434442)))

(declare-fun res!1592276 () Bool)

(assert (=> b!3934978 (=> (not res!1592276) (not e!2434442))))

(assert (=> b!3934978 (= res!1592276 (not (is-Nil!41770 (tail!6082 (_2!23660 (v!39270 lt!1374800))))))))

(assert (= (and d!1166979 (not res!1592279)) b!3934978))

(assert (= (and b!3934978 res!1592276) b!3934979))

(assert (= (and b!3934979 res!1592277) b!3934980))

(assert (= (and d!1166979 (not res!1592278)) b!3934981))

(assert (=> b!3934980 m!4500859))

(declare-fun m!4502211 () Bool)

(assert (=> b!3934980 m!4502211))

(assert (=> b!3934980 m!4500863))

(declare-fun m!4502213 () Bool)

(assert (=> b!3934980 m!4502213))

(assert (=> b!3934980 m!4502211))

(assert (=> b!3934980 m!4502213))

(declare-fun m!4502215 () Bool)

(assert (=> b!3934980 m!4502215))

(assert (=> b!3934979 m!4500859))

(declare-fun m!4502217 () Bool)

(assert (=> b!3934979 m!4502217))

(assert (=> b!3934979 m!4500863))

(declare-fun m!4502219 () Bool)

(assert (=> b!3934979 m!4502219))

(assert (=> b!3934981 m!4500863))

(declare-fun m!4502221 () Bool)

(assert (=> b!3934981 m!4502221))

(assert (=> b!3934981 m!4500859))

(declare-fun m!4502223 () Bool)

(assert (=> b!3934981 m!4502223))

(assert (=> b!3934119 d!1166979))

(declare-fun d!1166981 () Bool)

(assert (=> d!1166981 (= (tail!6082 lt!1374813) (t!325943 lt!1374813))))

(assert (=> b!3934119 d!1166981))

(declare-fun d!1166983 () Bool)

(assert (=> d!1166983 (= (tail!6082 (_2!23660 (v!39270 lt!1374800))) (t!325943 (_2!23660 (v!39270 lt!1374800))))))

(assert (=> b!3934119 d!1166983))

(declare-fun d!1166985 () Bool)

(declare-fun e!2434444 () Bool)

(assert (=> d!1166985 e!2434444))

(declare-fun res!1592280 () Bool)

(assert (=> d!1166985 (=> (not res!1592280) (not e!2434444))))

(declare-fun lt!1375450 () List!41895)

(assert (=> d!1166985 (= res!1592280 (= (content!6296 lt!1375450) (set.union (content!6296 (t!325944 lt!1374778)) (content!6296 suffixTokens!72))))))

(declare-fun e!2434445 () List!41895)

(assert (=> d!1166985 (= lt!1375450 e!2434445)))

(declare-fun c!683721 () Bool)

(assert (=> d!1166985 (= c!683721 (is-Nil!41771 (t!325944 lt!1374778)))))

(assert (=> d!1166985 (= (++!10803 (t!325944 lt!1374778) suffixTokens!72) lt!1375450)))

(declare-fun b!3934985 () Bool)

(assert (=> b!3934985 (= e!2434444 (or (not (= suffixTokens!72 Nil!41771)) (= lt!1375450 (t!325944 lt!1374778))))))

(declare-fun b!3934984 () Bool)

(declare-fun res!1592281 () Bool)

(assert (=> b!3934984 (=> (not res!1592281) (not e!2434444))))

(assert (=> b!3934984 (= res!1592281 (= (size!31341 lt!1375450) (+ (size!31341 (t!325944 lt!1374778)) (size!31341 suffixTokens!72))))))

(declare-fun b!3934982 () Bool)

(assert (=> b!3934982 (= e!2434445 suffixTokens!72)))

(declare-fun b!3934983 () Bool)

(assert (=> b!3934983 (= e!2434445 (Cons!41771 (h!47191 (t!325944 lt!1374778)) (++!10803 (t!325944 (t!325944 lt!1374778)) suffixTokens!72)))))

(assert (= (and d!1166985 c!683721) b!3934982))

(assert (= (and d!1166985 (not c!683721)) b!3934983))

(assert (= (and d!1166985 res!1592280) b!3934984))

(assert (= (and b!3934984 res!1592281) b!3934985))

(declare-fun m!4502225 () Bool)

(assert (=> d!1166985 m!4502225))

(assert (=> d!1166985 m!4501927))

(assert (=> d!1166985 m!4500721))

(declare-fun m!4502227 () Bool)

(assert (=> b!3934984 m!4502227))

(declare-fun m!4502229 () Bool)

(assert (=> b!3934984 m!4502229))

(assert (=> b!3934984 m!4500727))

(declare-fun m!4502231 () Bool)

(assert (=> b!3934983 m!4502231))

(assert (=> b!3934204 d!1166985))

(declare-fun d!1166987 () Bool)

(declare-fun lt!1375451 () Int)

(assert (=> d!1166987 (>= lt!1375451 0)))

(declare-fun e!2434446 () Int)

(assert (=> d!1166987 (= lt!1375451 e!2434446)))

(declare-fun c!683722 () Bool)

(assert (=> d!1166987 (= c!683722 (is-Nil!41770 lt!1375092))))

(assert (=> d!1166987 (= (size!31338 lt!1375092) lt!1375451)))

(declare-fun b!3934986 () Bool)

(assert (=> b!3934986 (= e!2434446 0)))

(declare-fun b!3934987 () Bool)

(assert (=> b!3934987 (= e!2434446 (+ 1 (size!31338 (t!325943 lt!1375092))))))

(assert (= (and d!1166987 c!683722) b!3934986))

(assert (= (and d!1166987 (not c!683722)) b!3934987))

(declare-fun m!4502233 () Bool)

(assert (=> b!3934987 m!4502233))

(assert (=> b!3934214 d!1166987))

(declare-fun d!1166989 () Bool)

(declare-fun lt!1375452 () Int)

(assert (=> d!1166989 (>= lt!1375452 0)))

(declare-fun e!2434447 () Int)

(assert (=> d!1166989 (= lt!1375452 e!2434447)))

(declare-fun c!683723 () Bool)

(assert (=> d!1166989 (= c!683723 (is-Nil!41770 lt!1374784))))

(assert (=> d!1166989 (= (size!31338 lt!1374784) lt!1375452)))

(declare-fun b!3934988 () Bool)

(assert (=> b!3934988 (= e!2434447 0)))

(declare-fun b!3934989 () Bool)

(assert (=> b!3934989 (= e!2434447 (+ 1 (size!31338 (t!325943 lt!1374784))))))

(assert (= (and d!1166989 c!683723) b!3934988))

(assert (= (and d!1166989 (not c!683723)) b!3934989))

(assert (=> b!3934989 m!4501803))

(assert (=> b!3934214 d!1166989))

(assert (=> b!3934214 d!1166379))

(declare-fun b!3934990 () Bool)

(declare-fun e!2434449 () List!41894)

(assert (=> b!3934990 (= e!2434449 suffix!1176)))

(declare-fun b!3934991 () Bool)

(assert (=> b!3934991 (= e!2434449 (Cons!41770 (h!47190 (t!325943 lt!1374813)) (++!10804 (t!325943 (t!325943 lt!1374813)) suffix!1176)))))

(declare-fun b!3934992 () Bool)

(declare-fun res!1592283 () Bool)

(declare-fun e!2434448 () Bool)

(assert (=> b!3934992 (=> (not res!1592283) (not e!2434448))))

(declare-fun lt!1375453 () List!41894)

(assert (=> b!3934992 (= res!1592283 (= (size!31338 lt!1375453) (+ (size!31338 (t!325943 lt!1374813)) (size!31338 suffix!1176))))))

(declare-fun d!1166991 () Bool)

(assert (=> d!1166991 e!2434448))

(declare-fun res!1592282 () Bool)

(assert (=> d!1166991 (=> (not res!1592282) (not e!2434448))))

(assert (=> d!1166991 (= res!1592282 (= (content!6295 lt!1375453) (set.union (content!6295 (t!325943 lt!1374813)) (content!6295 suffix!1176))))))

(assert (=> d!1166991 (= lt!1375453 e!2434449)))

(declare-fun c!683724 () Bool)

(assert (=> d!1166991 (= c!683724 (is-Nil!41770 (t!325943 lt!1374813)))))

(assert (=> d!1166991 (= (++!10804 (t!325943 lt!1374813) suffix!1176) lt!1375453)))

(declare-fun b!3934993 () Bool)

(assert (=> b!3934993 (= e!2434448 (or (not (= suffix!1176 Nil!41770)) (= lt!1375453 (t!325943 lt!1374813))))))

(assert (= (and d!1166991 c!683724) b!3934990))

(assert (= (and d!1166991 (not c!683724)) b!3934991))

(assert (= (and d!1166991 res!1592282) b!3934992))

(assert (= (and b!3934992 res!1592283) b!3934993))

(declare-fun m!4502235 () Bool)

(assert (=> b!3934991 m!4502235))

(declare-fun m!4502237 () Bool)

(assert (=> b!3934992 m!4502237))

(declare-fun m!4502239 () Bool)

(assert (=> b!3934992 m!4502239))

(assert (=> b!3934992 m!4500315))

(declare-fun m!4502241 () Bool)

(assert (=> d!1166991 m!4502241))

(declare-fun m!4502243 () Bool)

(assert (=> d!1166991 m!4502243))

(assert (=> d!1166991 m!4500797))

(assert (=> b!3934069 d!1166991))

(declare-fun d!1166993 () Bool)

(assert (=> d!1166993 (and (= lt!1374817 lt!1374817) (= (_2!23660 (v!39270 lt!1374800)) (_2!23660 lt!1374780)))))

(assert (=> d!1166993 true))

(declare-fun _$50!373 () Unit!60236)

(assert (=> d!1166993 (= (choose!23426 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 (_2!23660 lt!1374780)) _$50!373)))

(assert (=> d!1166427 d!1166993))

(assert (=> d!1166427 d!1166489))

(declare-fun b!3934994 () Bool)

(declare-fun e!2434451 () List!41894)

(assert (=> b!3934994 (= e!2434451 (_2!23660 lt!1374780))))

(declare-fun b!3934995 () Bool)

(assert (=> b!3934995 (= e!2434451 (Cons!41770 (h!47190 lt!1374817) (++!10804 (t!325943 lt!1374817) (_2!23660 lt!1374780))))))

(declare-fun b!3934996 () Bool)

(declare-fun res!1592285 () Bool)

(declare-fun e!2434450 () Bool)

(assert (=> b!3934996 (=> (not res!1592285) (not e!2434450))))

(declare-fun lt!1375454 () List!41894)

(assert (=> b!3934996 (= res!1592285 (= (size!31338 lt!1375454) (+ (size!31338 lt!1374817) (size!31338 (_2!23660 lt!1374780)))))))

(declare-fun d!1166995 () Bool)

(assert (=> d!1166995 e!2434450))

(declare-fun res!1592284 () Bool)

(assert (=> d!1166995 (=> (not res!1592284) (not e!2434450))))

(assert (=> d!1166995 (= res!1592284 (= (content!6295 lt!1375454) (set.union (content!6295 lt!1374817) (content!6295 (_2!23660 lt!1374780)))))))

(assert (=> d!1166995 (= lt!1375454 e!2434451)))

(declare-fun c!683725 () Bool)

(assert (=> d!1166995 (= c!683725 (is-Nil!41770 lt!1374817))))

(assert (=> d!1166995 (= (++!10804 lt!1374817 (_2!23660 lt!1374780)) lt!1375454)))

(declare-fun b!3934997 () Bool)

(assert (=> b!3934997 (= e!2434450 (or (not (= (_2!23660 lt!1374780) Nil!41770)) (= lt!1375454 lt!1374817)))))

(assert (= (and d!1166995 c!683725) b!3934994))

(assert (= (and d!1166995 (not c!683725)) b!3934995))

(assert (= (and d!1166995 res!1592284) b!3934996))

(assert (= (and b!3934996 res!1592285) b!3934997))

(declare-fun m!4502245 () Bool)

(assert (=> b!3934995 m!4502245))

(declare-fun m!4502247 () Bool)

(assert (=> b!3934996 m!4502247))

(assert (=> b!3934996 m!4500447))

(assert (=> b!3934996 m!4500375))

(declare-fun m!4502249 () Bool)

(assert (=> d!1166995 m!4502249))

(assert (=> d!1166995 m!4500657))

(declare-fun m!4502251 () Bool)

(assert (=> d!1166995 m!4502251))

(assert (=> d!1166427 d!1166995))

(declare-fun b!3935000 () Bool)

(declare-fun e!2434453 () Bool)

(assert (=> b!3935000 (= e!2434453 (isPrefix!3618 (tail!6082 lt!1374813) (tail!6082 (++!10804 lt!1374813 suffix!1176))))))

(declare-fun b!3934999 () Bool)

(declare-fun res!1592287 () Bool)

(assert (=> b!3934999 (=> (not res!1592287) (not e!2434453))))

(assert (=> b!3934999 (= res!1592287 (= (head!8357 lt!1374813) (head!8357 (++!10804 lt!1374813 suffix!1176))))))

(declare-fun b!3935001 () Bool)

(declare-fun e!2434452 () Bool)

(assert (=> b!3935001 (= e!2434452 (>= (size!31338 (++!10804 lt!1374813 suffix!1176)) (size!31338 lt!1374813)))))

(declare-fun d!1166997 () Bool)

(assert (=> d!1166997 e!2434452))

(declare-fun res!1592288 () Bool)

(assert (=> d!1166997 (=> res!1592288 e!2434452)))

(declare-fun lt!1375455 () Bool)

(assert (=> d!1166997 (= res!1592288 (not lt!1375455))))

(declare-fun e!2434454 () Bool)

(assert (=> d!1166997 (= lt!1375455 e!2434454)))

(declare-fun res!1592289 () Bool)

(assert (=> d!1166997 (=> res!1592289 e!2434454)))

(assert (=> d!1166997 (= res!1592289 (is-Nil!41770 lt!1374813))))

(assert (=> d!1166997 (= (isPrefix!3618 lt!1374813 (++!10804 lt!1374813 suffix!1176)) lt!1375455)))

(declare-fun b!3934998 () Bool)

(assert (=> b!3934998 (= e!2434454 e!2434453)))

(declare-fun res!1592286 () Bool)

(assert (=> b!3934998 (=> (not res!1592286) (not e!2434453))))

(assert (=> b!3934998 (= res!1592286 (not (is-Nil!41770 (++!10804 lt!1374813 suffix!1176))))))

(assert (= (and d!1166997 (not res!1592289)) b!3934998))

(assert (= (and b!3934998 res!1592286) b!3934999))

(assert (= (and b!3934999 res!1592287) b!3935000))

(assert (= (and d!1166997 (not res!1592288)) b!3935001))

(assert (=> b!3935000 m!4500859))

(assert (=> b!3935000 m!4500411))

(declare-fun m!4502253 () Bool)

(assert (=> b!3935000 m!4502253))

(assert (=> b!3935000 m!4500859))

(assert (=> b!3935000 m!4502253))

(declare-fun m!4502255 () Bool)

(assert (=> b!3935000 m!4502255))

(assert (=> b!3934999 m!4500869))

(assert (=> b!3934999 m!4500411))

(declare-fun m!4502257 () Bool)

(assert (=> b!3934999 m!4502257))

(assert (=> b!3935001 m!4500411))

(assert (=> b!3935001 m!4501915))

(assert (=> b!3935001 m!4500653))

(assert (=> d!1166525 d!1166997))

(assert (=> d!1166525 d!1166419))

(declare-fun d!1166999 () Bool)

(assert (=> d!1166999 (isPrefix!3618 lt!1374813 (++!10804 lt!1374813 suffix!1176))))

(assert (=> d!1166999 true))

(declare-fun _$46!1577 () Unit!60236)

(assert (=> d!1166999 (= (choose!23433 lt!1374813 suffix!1176) _$46!1577)))

(declare-fun bs!586407 () Bool)

(assert (= bs!586407 d!1166999))

(assert (=> bs!586407 m!4500411))

(assert (=> bs!586407 m!4500411))

(assert (=> bs!586407 m!4501067))

(assert (=> d!1166525 d!1166999))

(declare-fun d!1167001 () Bool)

(declare-fun lt!1375456 () Int)

(assert (=> d!1167001 (>= lt!1375456 0)))

(declare-fun e!2434455 () Int)

(assert (=> d!1167001 (= lt!1375456 e!2434455)))

(declare-fun c!683726 () Bool)

(assert (=> d!1167001 (= c!683726 (is-Nil!41770 lt!1374790))))

(assert (=> d!1167001 (= (size!31338 lt!1374790) lt!1375456)))

(declare-fun b!3935002 () Bool)

(assert (=> b!3935002 (= e!2434455 0)))

(declare-fun b!3935003 () Bool)

(assert (=> b!3935003 (= e!2434455 (+ 1 (size!31338 (t!325943 lt!1374790))))))

(assert (= (and d!1167001 c!683726) b!3935002))

(assert (= (and d!1167001 (not c!683726)) b!3935003))

(declare-fun m!4502259 () Bool)

(assert (=> b!3935003 m!4502259))

(assert (=> b!3934146 d!1167001))

(assert (=> b!3934146 d!1166453))

(declare-fun d!1167003 () Bool)

(declare-fun charsToBigInt!0 (List!41893 Int) Int)

(assert (=> d!1167003 (= (inv!15 (value!206541 (h!47191 prefixTokens!80))) (= (charsToBigInt!0 (text!47720 (value!206541 (h!47191 prefixTokens!80))) 0) (value!206536 (value!206541 (h!47191 prefixTokens!80)))))))

(declare-fun bs!586408 () Bool)

(assert (= bs!586408 d!1167003))

(declare-fun m!4502261 () Bool)

(assert (=> bs!586408 m!4502261))

(assert (=> b!3934435 d!1167003))

(declare-fun bs!586409 () Bool)

(declare-fun d!1167005 () Bool)

(assert (= bs!586409 (and d!1167005 d!1166901)))

(declare-fun lambda!126609 () Int)

(assert (=> bs!586409 (= lambda!126609 lambda!126603)))

(assert (=> d!1167005 true))

(declare-fun lt!1375459 () Bool)

(assert (=> d!1167005 (= lt!1375459 (rulesValidInductive!2354 thiss!20629 rules!2768))))

(assert (=> d!1167005 (= lt!1375459 (forall!8315 rules!2768 lambda!126609))))

(assert (=> d!1167005 (= (rulesValid!2538 thiss!20629 rules!2768) lt!1375459)))

(declare-fun bs!586410 () Bool)

(assert (= bs!586410 d!1167005))

(assert (=> bs!586410 m!4501435))

(declare-fun m!4502263 () Bool)

(assert (=> bs!586410 m!4502263))

(assert (=> d!1166391 d!1167005))

(declare-fun d!1167007 () Bool)

(declare-fun c!683729 () Bool)

(assert (=> d!1167007 (= c!683729 (is-Node!12734 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80))))))))

(declare-fun e!2434460 () Bool)

(assert (=> d!1167007 (= (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80))))) e!2434460)))

(declare-fun b!3935010 () Bool)

(declare-fun inv!55977 (Conc!12734) Bool)

(assert (=> b!3935010 (= e!2434460 (inv!55977 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80))))))))

(declare-fun b!3935011 () Bool)

(declare-fun e!2434461 () Bool)

(assert (=> b!3935011 (= e!2434460 e!2434461)))

(declare-fun res!1592292 () Bool)

(assert (=> b!3935011 (= res!1592292 (not (is-Leaf!19703 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80)))))))))

(assert (=> b!3935011 (=> res!1592292 e!2434461)))

(declare-fun b!3935012 () Bool)

(declare-fun inv!55978 (Conc!12734) Bool)

(assert (=> b!3935012 (= e!2434461 (inv!55978 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80))))))))

(assert (= (and d!1167007 c!683729) b!3935010))

(assert (= (and d!1167007 (not c!683729)) b!3935011))

(assert (= (and b!3935011 (not res!1592292)) b!3935012))

(declare-fun m!4502265 () Bool)

(assert (=> b!3935010 m!4502265))

(declare-fun m!4502267 () Bool)

(assert (=> b!3935012 m!4502267))

(assert (=> b!3934357 d!1167007))

(declare-fun d!1167009 () Bool)

(assert (=> d!1167009 (= (_2!23660 (v!39270 lt!1374800)) lt!1374785)))

(assert (=> d!1167009 true))

(declare-fun _$63!998 () Unit!60236)

(assert (=> d!1167009 (= (choose!23431 lt!1374817 (_2!23660 (v!39270 lt!1374800)) lt!1374817 lt!1374785 lt!1374783) _$63!998)))

(assert (=> d!1166461 d!1167009))

(assert (=> d!1166461 d!1166827))

(declare-fun d!1167011 () Bool)

(declare-fun lt!1375460 () Int)

(assert (=> d!1167011 (>= lt!1375460 0)))

(declare-fun e!2434462 () Int)

(assert (=> d!1167011 (= lt!1375460 e!2434462)))

(declare-fun c!683730 () Bool)

(assert (=> d!1167011 (= c!683730 (is-Nil!41771 (_1!23659 lt!1375160)))))

(assert (=> d!1167011 (= (size!31341 (_1!23659 lt!1375160)) lt!1375460)))

(declare-fun b!3935013 () Bool)

(assert (=> b!3935013 (= e!2434462 0)))

(declare-fun b!3935014 () Bool)

(assert (=> b!3935014 (= e!2434462 (+ 1 (size!31341 (t!325944 (_1!23659 lt!1375160)))))))

(assert (= (and d!1167011 c!683730) b!3935013))

(assert (= (and d!1167011 (not c!683730)) b!3935014))

(declare-fun m!4502269 () Bool)

(assert (=> b!3935014 m!4502269))

(assert (=> d!1166605 d!1167011))

(declare-fun d!1167013 () Bool)

(declare-fun e!2434464 () Bool)

(assert (=> d!1167013 e!2434464))

(declare-fun res!1592297 () Bool)

(assert (=> d!1167013 (=> res!1592297 e!2434464)))

(declare-fun lt!1375462 () Option!8943)

(assert (=> d!1167013 (= res!1592297 (isEmpty!24912 lt!1375462))))

(declare-fun e!2434465 () Option!8943)

(assert (=> d!1167013 (= lt!1375462 e!2434465)))

(declare-fun c!683731 () Bool)

(assert (=> d!1167013 (= c!683731 (and (is-Cons!41772 rules!2768) (is-Nil!41772 (t!325945 rules!2768))))))

(declare-fun lt!1375463 () Unit!60236)

(declare-fun lt!1375465 () Unit!60236)

(assert (=> d!1167013 (= lt!1375463 lt!1375465)))

(assert (=> d!1167013 (isPrefix!3618 suffix!1176 suffix!1176)))

(assert (=> d!1167013 (= lt!1375465 (lemmaIsPrefixRefl!2284 suffix!1176 suffix!1176))))

(assert (=> d!1167013 (rulesValidInductive!2354 thiss!20629 rules!2768)))

(assert (=> d!1167013 (= (maxPrefix!3416 thiss!20629 rules!2768 suffix!1176) lt!1375462)))

(declare-fun b!3935015 () Bool)

(declare-fun res!1592293 () Bool)

(declare-fun e!2434463 () Bool)

(assert (=> b!3935015 (=> (not res!1592293) (not e!2434463))))

(assert (=> b!3935015 (= res!1592293 (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375462)))) (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375462))))))))

(declare-fun b!3935016 () Bool)

(declare-fun lt!1375461 () Option!8943)

(declare-fun lt!1375464 () Option!8943)

(assert (=> b!3935016 (= e!2434465 (ite (and (is-None!8942 lt!1375461) (is-None!8942 lt!1375464)) None!8942 (ite (is-None!8942 lt!1375464) lt!1375461 (ite (is-None!8942 lt!1375461) lt!1375464 (ite (>= (size!31337 (_1!23660 (v!39270 lt!1375461))) (size!31337 (_1!23660 (v!39270 lt!1375464)))) lt!1375461 lt!1375464)))))))

(declare-fun call!284936 () Option!8943)

(assert (=> b!3935016 (= lt!1375461 call!284936)))

(assert (=> b!3935016 (= lt!1375464 (maxPrefix!3416 thiss!20629 (t!325945 rules!2768) suffix!1176))))

(declare-fun b!3935017 () Bool)

(declare-fun res!1592295 () Bool)

(assert (=> b!3935017 (=> (not res!1592295) (not e!2434463))))

(assert (=> b!3935017 (= res!1592295 (= (value!206541 (_1!23660 (get!13805 lt!1375462))) (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375462)))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375462)))))))))

(declare-fun bm!284931 () Bool)

(assert (=> bm!284931 (= call!284936 (maxPrefixOneRule!2486 thiss!20629 (h!47192 rules!2768) suffix!1176))))

(declare-fun b!3935018 () Bool)

(assert (=> b!3935018 (= e!2434465 call!284936)))

(declare-fun b!3935019 () Bool)

(declare-fun res!1592296 () Bool)

(assert (=> b!3935019 (=> (not res!1592296) (not e!2434463))))

(assert (=> b!3935019 (= res!1592296 (= (++!10804 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375462)))) (_2!23660 (get!13805 lt!1375462))) suffix!1176))))

(declare-fun b!3935020 () Bool)

(assert (=> b!3935020 (= e!2434463 (contains!8369 rules!2768 (rule!9473 (_1!23660 (get!13805 lt!1375462)))))))

(declare-fun b!3935021 () Bool)

(declare-fun res!1592298 () Bool)

(assert (=> b!3935021 (=> (not res!1592298) (not e!2434463))))

(assert (=> b!3935021 (= res!1592298 (< (size!31338 (_2!23660 (get!13805 lt!1375462))) (size!31338 suffix!1176)))))

(declare-fun b!3935022 () Bool)

(declare-fun res!1592294 () Bool)

(assert (=> b!3935022 (=> (not res!1592294) (not e!2434463))))

(assert (=> b!3935022 (= res!1592294 (= (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375462)))) (originalCharacters!7123 (_1!23660 (get!13805 lt!1375462)))))))

(declare-fun b!3935023 () Bool)

(assert (=> b!3935023 (= e!2434464 e!2434463)))

(declare-fun res!1592299 () Bool)

(assert (=> b!3935023 (=> (not res!1592299) (not e!2434463))))

(assert (=> b!3935023 (= res!1592299 (isDefined!6953 lt!1375462))))

(assert (= (and d!1167013 c!683731) b!3935018))

(assert (= (and d!1167013 (not c!683731)) b!3935016))

(assert (= (or b!3935018 b!3935016) bm!284931))

(assert (= (and d!1167013 (not res!1592297)) b!3935023))

(assert (= (and b!3935023 res!1592299) b!3935022))

(assert (= (and b!3935022 res!1592294) b!3935021))

(assert (= (and b!3935021 res!1592298) b!3935019))

(assert (= (and b!3935019 res!1592296) b!3935017))

(assert (= (and b!3935017 res!1592295) b!3935015))

(assert (= (and b!3935015 res!1592293) b!3935020))

(declare-fun m!4502271 () Bool)

(assert (=> b!3935019 m!4502271))

(declare-fun m!4502273 () Bool)

(assert (=> b!3935019 m!4502273))

(assert (=> b!3935019 m!4502273))

(declare-fun m!4502275 () Bool)

(assert (=> b!3935019 m!4502275))

(assert (=> b!3935019 m!4502275))

(declare-fun m!4502277 () Bool)

(assert (=> b!3935019 m!4502277))

(declare-fun m!4502279 () Bool)

(assert (=> bm!284931 m!4502279))

(assert (=> b!3935015 m!4502271))

(assert (=> b!3935015 m!4502273))

(assert (=> b!3935015 m!4502273))

(assert (=> b!3935015 m!4502275))

(assert (=> b!3935015 m!4502275))

(declare-fun m!4502281 () Bool)

(assert (=> b!3935015 m!4502281))

(assert (=> b!3935020 m!4502271))

(declare-fun m!4502283 () Bool)

(assert (=> b!3935020 m!4502283))

(declare-fun m!4502285 () Bool)

(assert (=> d!1167013 m!4502285))

(declare-fun m!4502287 () Bool)

(assert (=> d!1167013 m!4502287))

(declare-fun m!4502289 () Bool)

(assert (=> d!1167013 m!4502289))

(assert (=> d!1167013 m!4501435))

(assert (=> b!3935022 m!4502271))

(assert (=> b!3935022 m!4502273))

(assert (=> b!3935022 m!4502273))

(assert (=> b!3935022 m!4502275))

(assert (=> b!3935021 m!4502271))

(declare-fun m!4502291 () Bool)

(assert (=> b!3935021 m!4502291))

(assert (=> b!3935021 m!4500315))

(declare-fun m!4502293 () Bool)

(assert (=> b!3935016 m!4502293))

(assert (=> b!3935017 m!4502271))

(declare-fun m!4502295 () Bool)

(assert (=> b!3935017 m!4502295))

(assert (=> b!3935017 m!4502295))

(declare-fun m!4502297 () Bool)

(assert (=> b!3935017 m!4502297))

(declare-fun m!4502299 () Bool)

(assert (=> b!3935023 m!4502299))

(assert (=> d!1166605 d!1167013))

(declare-fun d!1167015 () Bool)

(declare-fun lt!1375466 () Int)

(assert (=> d!1167015 (>= lt!1375466 0)))

(declare-fun e!2434466 () Int)

(assert (=> d!1167015 (= lt!1375466 e!2434466)))

(declare-fun c!683732 () Bool)

(assert (=> d!1167015 (= c!683732 (is-Nil!41770 lt!1375073))))

(assert (=> d!1167015 (= (size!31338 lt!1375073) lt!1375466)))

(declare-fun b!3935024 () Bool)

(assert (=> b!3935024 (= e!2434466 0)))

(declare-fun b!3935025 () Bool)

(assert (=> b!3935025 (= e!2434466 (+ 1 (size!31338 (t!325943 lt!1375073))))))

(assert (= (and d!1167015 c!683732) b!3935024))

(assert (= (and d!1167015 (not c!683732)) b!3935025))

(declare-fun m!4502301 () Bool)

(assert (=> b!3935025 m!4502301))

(assert (=> b!3934158 d!1167015))

(assert (=> b!3934158 d!1166453))

(assert (=> b!3934158 d!1166381))

(declare-fun d!1167017 () Bool)

(assert (=> d!1167017 (= (inv!55966 (tag!7383 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (= (mod (str.len (value!206540 (tag!7383 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3934495 d!1167017))

(declare-fun d!1167019 () Bool)

(declare-fun res!1592300 () Bool)

(declare-fun e!2434467 () Bool)

(assert (=> d!1167019 (=> (not res!1592300) (not e!2434467))))

(assert (=> d!1167019 (= res!1592300 (semiInverseModEq!2804 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))))))

(assert (=> d!1167019 (= (inv!55970 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) e!2434467)))

(declare-fun b!3935026 () Bool)

(assert (=> b!3935026 (= e!2434467 (equivClasses!2703 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))))))

(assert (= (and d!1167019 res!1592300) b!3935026))

(declare-fun m!4502303 () Bool)

(assert (=> d!1167019 m!4502303))

(declare-fun m!4502305 () Bool)

(assert (=> b!3935026 m!4502305))

(assert (=> b!3934495 d!1167019))

(declare-fun d!1167021 () Bool)

(declare-fun lt!1375467 () Int)

(assert (=> d!1167021 (>= lt!1375467 0)))

(declare-fun e!2434468 () Int)

(assert (=> d!1167021 (= lt!1375467 e!2434468)))

(declare-fun c!683733 () Bool)

(assert (=> d!1167021 (= c!683733 (is-Nil!41770 (_2!23659 lt!1375160)))))

(assert (=> d!1167021 (= (size!31338 (_2!23659 lt!1375160)) lt!1375467)))

(declare-fun b!3935027 () Bool)

(assert (=> b!3935027 (= e!2434468 0)))

(declare-fun b!3935028 () Bool)

(assert (=> b!3935028 (= e!2434468 (+ 1 (size!31338 (t!325943 (_2!23659 lt!1375160)))))))

(assert (= (and d!1167021 c!683733) b!3935027))

(assert (= (and d!1167021 (not c!683733)) b!3935028))

(declare-fun m!4502307 () Bool)

(assert (=> b!3935028 m!4502307))

(assert (=> b!3934353 d!1167021))

(assert (=> b!3934353 d!1166379))

(declare-fun b!3935031 () Bool)

(declare-fun e!2434470 () Bool)

(assert (=> b!3935031 (= e!2434470 (isPrefix!3618 (tail!6082 lt!1374817) (tail!6082 (++!10804 lt!1374817 (_2!23660 (v!39270 lt!1374800))))))))

(declare-fun b!3935030 () Bool)

(declare-fun res!1592302 () Bool)

(assert (=> b!3935030 (=> (not res!1592302) (not e!2434470))))

(assert (=> b!3935030 (= res!1592302 (= (head!8357 lt!1374817) (head!8357 (++!10804 lt!1374817 (_2!23660 (v!39270 lt!1374800))))))))

(declare-fun b!3935032 () Bool)

(declare-fun e!2434469 () Bool)

(assert (=> b!3935032 (= e!2434469 (>= (size!31338 (++!10804 lt!1374817 (_2!23660 (v!39270 lt!1374800)))) (size!31338 lt!1374817)))))

(declare-fun d!1167023 () Bool)

(assert (=> d!1167023 e!2434469))

(declare-fun res!1592303 () Bool)

(assert (=> d!1167023 (=> res!1592303 e!2434469)))

(declare-fun lt!1375468 () Bool)

(assert (=> d!1167023 (= res!1592303 (not lt!1375468))))

(declare-fun e!2434471 () Bool)

(assert (=> d!1167023 (= lt!1375468 e!2434471)))

(declare-fun res!1592304 () Bool)

(assert (=> d!1167023 (=> res!1592304 e!2434471)))

(assert (=> d!1167023 (= res!1592304 (is-Nil!41770 lt!1374817))))

(assert (=> d!1167023 (= (isPrefix!3618 lt!1374817 (++!10804 lt!1374817 (_2!23660 (v!39270 lt!1374800)))) lt!1375468)))

(declare-fun b!3935029 () Bool)

(assert (=> b!3935029 (= e!2434471 e!2434470)))

(declare-fun res!1592301 () Bool)

(assert (=> b!3935029 (=> (not res!1592301) (not e!2434470))))

(assert (=> b!3935029 (= res!1592301 (not (is-Nil!41770 (++!10804 lt!1374817 (_2!23660 (v!39270 lt!1374800))))))))

(assert (= (and d!1167023 (not res!1592304)) b!3935029))

(assert (= (and b!3935029 res!1592301) b!3935030))

(assert (= (and b!3935030 res!1592302) b!3935031))

(assert (= (and d!1167023 (not res!1592303)) b!3935032))

(assert (=> b!3935031 m!4500929))

(assert (=> b!3935031 m!4500453))

(declare-fun m!4502309 () Bool)

(assert (=> b!3935031 m!4502309))

(assert (=> b!3935031 m!4500929))

(assert (=> b!3935031 m!4502309))

(declare-fun m!4502311 () Bool)

(assert (=> b!3935031 m!4502311))

(assert (=> b!3935030 m!4500935))

(assert (=> b!3935030 m!4500453))

(declare-fun m!4502313 () Bool)

(assert (=> b!3935030 m!4502313))

(assert (=> b!3935032 m!4500453))

(declare-fun m!4502315 () Bool)

(assert (=> b!3935032 m!4502315))

(assert (=> b!3935032 m!4500447))

(assert (=> d!1166481 d!1167023))

(assert (=> d!1166481 d!1166489))

(declare-fun d!1167025 () Bool)

(assert (=> d!1167025 (isPrefix!3618 lt!1374817 (++!10804 lt!1374817 (_2!23660 (v!39270 lt!1374800))))))

(assert (=> d!1167025 true))

(declare-fun _$46!1578 () Unit!60236)

(assert (=> d!1167025 (= (choose!23433 lt!1374817 (_2!23660 (v!39270 lt!1374800))) _$46!1578)))

(declare-fun bs!586411 () Bool)

(assert (= bs!586411 d!1167025))

(assert (=> bs!586411 m!4500453))

(assert (=> bs!586411 m!4500453))

(assert (=> bs!586411 m!4500951))

(assert (=> d!1166481 d!1167025))

(declare-fun b!3935033 () Bool)

(declare-fun e!2434473 () Bool)

(declare-fun lt!1375471 () tuple2!41050)

(assert (=> b!3935033 (= e!2434473 (not (isEmpty!24905 (_1!23659 lt!1375471))))))

(declare-fun b!3935034 () Bool)

(declare-fun e!2434472 () tuple2!41050)

(assert (=> b!3935034 (= e!2434472 (tuple2!41051 Nil!41771 (_2!23660 (v!39270 lt!1375164))))))

(declare-fun d!1167027 () Bool)

(declare-fun e!2434474 () Bool)

(assert (=> d!1167027 e!2434474))

(declare-fun c!683734 () Bool)

(assert (=> d!1167027 (= c!683734 (> (size!31341 (_1!23659 lt!1375471)) 0))))

(assert (=> d!1167027 (= lt!1375471 e!2434472)))

(declare-fun c!683735 () Bool)

(declare-fun lt!1375469 () Option!8943)

(assert (=> d!1167027 (= c!683735 (is-Some!8942 lt!1375469))))

(assert (=> d!1167027 (= lt!1375469 (maxPrefix!3416 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375164))))))

(assert (=> d!1167027 (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375164))) lt!1375471)))

(declare-fun b!3935035 () Bool)

(declare-fun lt!1375470 () tuple2!41050)

(assert (=> b!3935035 (= e!2434472 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375469)) (_1!23659 lt!1375470)) (_2!23659 lt!1375470)))))

(assert (=> b!3935035 (= lt!1375470 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375469))))))

(declare-fun b!3935036 () Bool)

(assert (=> b!3935036 (= e!2434474 e!2434473)))

(declare-fun res!1592305 () Bool)

(assert (=> b!3935036 (= res!1592305 (< (size!31338 (_2!23659 lt!1375471)) (size!31338 (_2!23660 (v!39270 lt!1375164)))))))

(assert (=> b!3935036 (=> (not res!1592305) (not e!2434473))))

(declare-fun b!3935037 () Bool)

(assert (=> b!3935037 (= e!2434474 (= (_2!23659 lt!1375471) (_2!23660 (v!39270 lt!1375164))))))

(assert (= (and d!1167027 c!683735) b!3935035))

(assert (= (and d!1167027 (not c!683735)) b!3935034))

(assert (= (and d!1167027 c!683734) b!3935036))

(assert (= (and d!1167027 (not c!683734)) b!3935037))

(assert (= (and b!3935036 res!1592305) b!3935033))

(declare-fun m!4502317 () Bool)

(assert (=> b!3935033 m!4502317))

(declare-fun m!4502319 () Bool)

(assert (=> d!1167027 m!4502319))

(declare-fun m!4502321 () Bool)

(assert (=> d!1167027 m!4502321))

(declare-fun m!4502323 () Bool)

(assert (=> b!3935035 m!4502323))

(declare-fun m!4502325 () Bool)

(assert (=> b!3935036 m!4502325))

(declare-fun m!4502327 () Bool)

(assert (=> b!3935036 m!4502327))

(assert (=> b!3934364 d!1167027))

(declare-fun b!3935038 () Bool)

(declare-fun e!2434477 () Bool)

(declare-fun e!2434475 () Bool)

(assert (=> b!3935038 (= e!2434477 e!2434475)))

(declare-fun c!683736 () Bool)

(assert (=> b!3935038 (= c!683736 (is-IntegerValue!20260 (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 lt!1374817))))))

(declare-fun b!3935039 () Bool)

(assert (=> b!3935039 (= e!2434475 (inv!17 (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 lt!1374817))))))

(declare-fun b!3935040 () Bool)

(assert (=> b!3935040 (= e!2434477 (inv!16 (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 lt!1374817))))))

(declare-fun b!3935041 () Bool)

(declare-fun res!1592306 () Bool)

(declare-fun e!2434476 () Bool)

(assert (=> b!3935041 (=> res!1592306 e!2434476)))

(assert (=> b!3935041 (= res!1592306 (not (is-IntegerValue!20261 (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 lt!1374817)))))))

(assert (=> b!3935041 (= e!2434475 e!2434476)))

(declare-fun d!1167029 () Bool)

(declare-fun c!683737 () Bool)

(assert (=> d!1167029 (= c!683737 (is-IntegerValue!20259 (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 lt!1374817))))))

(assert (=> d!1167029 (= (inv!21 (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 lt!1374817))) e!2434477)))

(declare-fun b!3935042 () Bool)

(assert (=> b!3935042 (= e!2434476 (inv!15 (dynLambda!17897 (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (seqFromList!4790 lt!1374817))))))

(assert (= (and d!1167029 c!683737) b!3935040))

(assert (= (and d!1167029 (not c!683737)) b!3935038))

(assert (= (and b!3935038 c!683736) b!3935039))

(assert (= (and b!3935038 (not c!683736)) b!3935041))

(assert (= (and b!3935041 (not res!1592306)) b!3935042))

(declare-fun m!4502329 () Bool)

(assert (=> b!3935039 m!4502329))

(declare-fun m!4502331 () Bool)

(assert (=> b!3935040 m!4502331))

(declare-fun m!4502333 () Bool)

(assert (=> b!3935042 m!4502333))

(assert (=> tb!235343 d!1167029))

(declare-fun b!3935043 () Bool)

(declare-fun e!2434479 () List!41894)

(assert (=> b!3935043 (= e!2434479 (_2!23660 (get!13805 lt!1375154)))))

(declare-fun b!3935044 () Bool)

(assert (=> b!3935044 (= e!2434479 (Cons!41770 (h!47190 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))) (++!10804 (t!325943 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))) (_2!23660 (get!13805 lt!1375154)))))))

(declare-fun b!3935045 () Bool)

(declare-fun res!1592308 () Bool)

(declare-fun e!2434478 () Bool)

(assert (=> b!3935045 (=> (not res!1592308) (not e!2434478))))

(declare-fun lt!1375472 () List!41894)

(assert (=> b!3935045 (= res!1592308 (= (size!31338 lt!1375472) (+ (size!31338 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))) (size!31338 (_2!23660 (get!13805 lt!1375154))))))))

(declare-fun d!1167031 () Bool)

(assert (=> d!1167031 e!2434478))

(declare-fun res!1592307 () Bool)

(assert (=> d!1167031 (=> (not res!1592307) (not e!2434478))))

(assert (=> d!1167031 (= res!1592307 (= (content!6295 lt!1375472) (set.union (content!6295 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))) (content!6295 (_2!23660 (get!13805 lt!1375154))))))))

(assert (=> d!1167031 (= lt!1375472 e!2434479)))

(declare-fun c!683738 () Bool)

(assert (=> d!1167031 (= c!683738 (is-Nil!41770 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154))))))))

(assert (=> d!1167031 (= (++!10804 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154)))) (_2!23660 (get!13805 lt!1375154))) lt!1375472)))

(declare-fun b!3935046 () Bool)

(assert (=> b!3935046 (= e!2434478 (or (not (= (_2!23660 (get!13805 lt!1375154)) Nil!41770)) (= lt!1375472 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375154)))))))))

(assert (= (and d!1167031 c!683738) b!3935043))

(assert (= (and d!1167031 (not c!683738)) b!3935044))

(assert (= (and d!1167031 res!1592307) b!3935045))

(assert (= (and b!3935045 res!1592308) b!3935046))

(declare-fun m!4502335 () Bool)

(assert (=> b!3935044 m!4502335))

(declare-fun m!4502337 () Bool)

(assert (=> b!3935045 m!4502337))

(assert (=> b!3935045 m!4501279))

(declare-fun m!4502339 () Bool)

(assert (=> b!3935045 m!4502339))

(assert (=> b!3935045 m!4501307))

(declare-fun m!4502341 () Bool)

(assert (=> d!1167031 m!4502341))

(assert (=> d!1167031 m!4501279))

(declare-fun m!4502343 () Bool)

(assert (=> d!1167031 m!4502343))

(declare-fun m!4502345 () Bool)

(assert (=> d!1167031 m!4502345))

(assert (=> b!3934348 d!1167031))

(assert (=> b!3934348 d!1166769))

(assert (=> b!3934348 d!1166771))

(assert (=> b!3934348 d!1166731))

(assert (=> b!3934429 d!1166781))

(assert (=> b!3934429 d!1166783))

(assert (=> b!3934429 d!1166739))

(declare-fun d!1167033 () Bool)

(declare-fun lt!1375473 () Int)

(assert (=> d!1167033 (>= lt!1375473 0)))

(declare-fun e!2434480 () Int)

(assert (=> d!1167033 (= lt!1375473 e!2434480)))

(declare-fun c!683739 () Bool)

(assert (=> d!1167033 (= c!683739 (is-Nil!41771 lt!1375000))))

(assert (=> d!1167033 (= (size!31341 lt!1375000) lt!1375473)))

(declare-fun b!3935047 () Bool)

(assert (=> b!3935047 (= e!2434480 0)))

(declare-fun b!3935048 () Bool)

(assert (=> b!3935048 (= e!2434480 (+ 1 (size!31341 (t!325944 lt!1375000))))))

(assert (= (and d!1167033 c!683739) b!3935047))

(assert (= (and d!1167033 (not c!683739)) b!3935048))

(declare-fun m!4502347 () Bool)

(assert (=> b!3935048 m!4502347))

(assert (=> b!3934026 d!1167033))

(assert (=> b!3934026 d!1166933))

(declare-fun d!1167035 () Bool)

(declare-fun lt!1375474 () Int)

(assert (=> d!1167035 (>= lt!1375474 0)))

(declare-fun e!2434481 () Int)

(assert (=> d!1167035 (= lt!1375474 e!2434481)))

(declare-fun c!683740 () Bool)

(assert (=> d!1167035 (= c!683740 (is-Nil!41771 lt!1374778))))

(assert (=> d!1167035 (= (size!31341 lt!1374778) lt!1375474)))

(declare-fun b!3935049 () Bool)

(assert (=> b!3935049 (= e!2434481 0)))

(declare-fun b!3935050 () Bool)

(assert (=> b!3935050 (= e!2434481 (+ 1 (size!31341 (t!325944 lt!1374778))))))

(assert (= (and d!1167035 c!683740) b!3935049))

(assert (= (and d!1167035 (not c!683740)) b!3935050))

(assert (=> b!3935050 m!4502229))

(assert (=> b!3934026 d!1167035))

(declare-fun d!1167037 () Bool)

(declare-fun lt!1375475 () Int)

(assert (=> d!1167037 (>= lt!1375475 0)))

(declare-fun e!2434482 () Int)

(assert (=> d!1167037 (= lt!1375475 e!2434482)))

(declare-fun c!683741 () Bool)

(assert (=> d!1167037 (= c!683741 (is-Nil!41770 (_2!23659 lt!1375095)))))

(assert (=> d!1167037 (= (size!31338 (_2!23659 lt!1375095)) lt!1375475)))

(declare-fun b!3935051 () Bool)

(assert (=> b!3935051 (= e!2434482 0)))

(declare-fun b!3935052 () Bool)

(assert (=> b!3935052 (= e!2434482 (+ 1 (size!31338 (t!325943 (_2!23659 lt!1375095)))))))

(assert (= (and d!1167037 c!683741) b!3935051))

(assert (= (and d!1167037 (not c!683741)) b!3935052))

(declare-fun m!4502349 () Bool)

(assert (=> b!3935052 m!4502349))

(assert (=> b!3934219 d!1167037))

(assert (=> b!3934219 d!1166551))

(declare-fun d!1167039 () Bool)

(declare-fun res!1592313 () Bool)

(declare-fun e!2434487 () Bool)

(assert (=> d!1167039 (=> res!1592313 e!2434487)))

(assert (=> d!1167039 (= res!1592313 (is-Nil!41772 rules!2768))))

(assert (=> d!1167039 (= (noDuplicateTag!2539 thiss!20629 rules!2768 Nil!41777) e!2434487)))

(declare-fun b!3935057 () Bool)

(declare-fun e!2434488 () Bool)

(assert (=> b!3935057 (= e!2434487 e!2434488)))

(declare-fun res!1592314 () Bool)

(assert (=> b!3935057 (=> (not res!1592314) (not e!2434488))))

(declare-fun contains!8371 (List!41901 String!47485) Bool)

(assert (=> b!3935057 (= res!1592314 (not (contains!8371 Nil!41777 (tag!7383 (h!47192 rules!2768)))))))

(declare-fun b!3935058 () Bool)

(assert (=> b!3935058 (= e!2434488 (noDuplicateTag!2539 thiss!20629 (t!325945 rules!2768) (Cons!41777 (tag!7383 (h!47192 rules!2768)) Nil!41777)))))

(assert (= (and d!1167039 (not res!1592313)) b!3935057))

(assert (= (and b!3935057 res!1592314) b!3935058))

(declare-fun m!4502351 () Bool)

(assert (=> b!3935057 m!4502351))

(declare-fun m!4502353 () Bool)

(assert (=> b!3935058 m!4502353))

(assert (=> b!3933992 d!1167039))

(declare-fun d!1167041 () Bool)

(declare-fun lt!1375476 () Int)

(assert (=> d!1167041 (>= lt!1375476 0)))

(declare-fun e!2434489 () Int)

(assert (=> d!1167041 (= lt!1375476 e!2434489)))

(declare-fun c!683742 () Bool)

(assert (=> d!1167041 (= c!683742 (is-Nil!41770 lt!1375097))))

(assert (=> d!1167041 (= (size!31338 lt!1375097) lt!1375476)))

(declare-fun b!3935059 () Bool)

(assert (=> b!3935059 (= e!2434489 0)))

(declare-fun b!3935060 () Bool)

(assert (=> b!3935060 (= e!2434489 (+ 1 (size!31338 (t!325943 lt!1375097))))))

(assert (= (and d!1167041 c!683742) b!3935059))

(assert (= (and d!1167041 (not c!683742)) b!3935060))

(declare-fun m!4502355 () Bool)

(assert (=> b!3935060 m!4502355))

(assert (=> b!3934227 d!1167041))

(assert (=> b!3934227 d!1166623))

(assert (=> b!3934227 d!1166379))

(declare-fun d!1167043 () Bool)

(declare-fun lt!1375477 () Int)

(assert (=> d!1167043 (>= lt!1375477 0)))

(declare-fun e!2434490 () Int)

(assert (=> d!1167043 (= lt!1375477 e!2434490)))

(declare-fun c!683743 () Bool)

(assert (=> d!1167043 (= c!683743 (is-Nil!41770 lt!1374769))))

(assert (=> d!1167043 (= (size!31338 lt!1374769) lt!1375477)))

(declare-fun b!3935061 () Bool)

(assert (=> b!3935061 (= e!2434490 0)))

(declare-fun b!3935062 () Bool)

(assert (=> b!3935062 (= e!2434490 (+ 1 (size!31338 (t!325943 lt!1374769))))))

(assert (= (and d!1167043 c!683743) b!3935061))

(assert (= (and d!1167043 (not c!683743)) b!3935062))

(declare-fun m!4502357 () Bool)

(assert (=> b!3935062 m!4502357))

(assert (=> b!3934361 d!1167043))

(assert (=> b!3934361 d!1166453))

(declare-fun d!1167045 () Bool)

(declare-fun lt!1375478 () Int)

(assert (=> d!1167045 (>= lt!1375478 0)))

(declare-fun e!2434491 () Int)

(assert (=> d!1167045 (= lt!1375478 e!2434491)))

(declare-fun c!683744 () Bool)

(assert (=> d!1167045 (= c!683744 (is-Nil!41771 (_1!23659 lt!1375039)))))

(assert (=> d!1167045 (= (size!31341 (_1!23659 lt!1375039)) lt!1375478)))

(declare-fun b!3935063 () Bool)

(assert (=> b!3935063 (= e!2434491 0)))

(declare-fun b!3935064 () Bool)

(assert (=> b!3935064 (= e!2434491 (+ 1 (size!31341 (t!325944 (_1!23659 lt!1375039)))))))

(assert (= (and d!1167045 c!683744) b!3935063))

(assert (= (and d!1167045 (not c!683744)) b!3935064))

(declare-fun m!4502359 () Bool)

(assert (=> b!3935064 m!4502359))

(assert (=> d!1166445 d!1167045))

(declare-fun d!1167047 () Bool)

(declare-fun e!2434493 () Bool)

(assert (=> d!1167047 e!2434493))

(declare-fun res!1592319 () Bool)

(assert (=> d!1167047 (=> res!1592319 e!2434493)))

(declare-fun lt!1375480 () Option!8943)

(assert (=> d!1167047 (= res!1592319 (isEmpty!24912 lt!1375480))))

(declare-fun e!2434494 () Option!8943)

(assert (=> d!1167047 (= lt!1375480 e!2434494)))

(declare-fun c!683745 () Bool)

(assert (=> d!1167047 (= c!683745 (and (is-Cons!41772 rules!2768) (is-Nil!41772 (t!325945 rules!2768))))))

(declare-fun lt!1375481 () Unit!60236)

(declare-fun lt!1375483 () Unit!60236)

(assert (=> d!1167047 (= lt!1375481 lt!1375483)))

(assert (=> d!1167047 (isPrefix!3618 lt!1374797 lt!1374797)))

(assert (=> d!1167047 (= lt!1375483 (lemmaIsPrefixRefl!2284 lt!1374797 lt!1374797))))

(assert (=> d!1167047 (rulesValidInductive!2354 thiss!20629 rules!2768)))

(assert (=> d!1167047 (= (maxPrefix!3416 thiss!20629 rules!2768 lt!1374797) lt!1375480)))

(declare-fun b!3935065 () Bool)

(declare-fun res!1592315 () Bool)

(declare-fun e!2434492 () Bool)

(assert (=> b!3935065 (=> (not res!1592315) (not e!2434492))))

(assert (=> b!3935065 (= res!1592315 (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375480)))) (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375480))))))))

(declare-fun b!3935066 () Bool)

(declare-fun lt!1375479 () Option!8943)

(declare-fun lt!1375482 () Option!8943)

(assert (=> b!3935066 (= e!2434494 (ite (and (is-None!8942 lt!1375479) (is-None!8942 lt!1375482)) None!8942 (ite (is-None!8942 lt!1375482) lt!1375479 (ite (is-None!8942 lt!1375479) lt!1375482 (ite (>= (size!31337 (_1!23660 (v!39270 lt!1375479))) (size!31337 (_1!23660 (v!39270 lt!1375482)))) lt!1375479 lt!1375482)))))))

(declare-fun call!284937 () Option!8943)

(assert (=> b!3935066 (= lt!1375479 call!284937)))

(assert (=> b!3935066 (= lt!1375482 (maxPrefix!3416 thiss!20629 (t!325945 rules!2768) lt!1374797))))

(declare-fun b!3935067 () Bool)

(declare-fun res!1592317 () Bool)

(assert (=> b!3935067 (=> (not res!1592317) (not e!2434492))))

(assert (=> b!3935067 (= res!1592317 (= (value!206541 (_1!23660 (get!13805 lt!1375480))) (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375480)))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375480)))))))))

(declare-fun bm!284932 () Bool)

(assert (=> bm!284932 (= call!284937 (maxPrefixOneRule!2486 thiss!20629 (h!47192 rules!2768) lt!1374797))))

(declare-fun b!3935068 () Bool)

(assert (=> b!3935068 (= e!2434494 call!284937)))

(declare-fun b!3935069 () Bool)

(declare-fun res!1592318 () Bool)

(assert (=> b!3935069 (=> (not res!1592318) (not e!2434492))))

(assert (=> b!3935069 (= res!1592318 (= (++!10804 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375480)))) (_2!23660 (get!13805 lt!1375480))) lt!1374797))))

(declare-fun b!3935070 () Bool)

(assert (=> b!3935070 (= e!2434492 (contains!8369 rules!2768 (rule!9473 (_1!23660 (get!13805 lt!1375480)))))))

(declare-fun b!3935071 () Bool)

(declare-fun res!1592320 () Bool)

(assert (=> b!3935071 (=> (not res!1592320) (not e!2434492))))

(assert (=> b!3935071 (= res!1592320 (< (size!31338 (_2!23660 (get!13805 lt!1375480))) (size!31338 lt!1374797)))))

(declare-fun b!3935072 () Bool)

(declare-fun res!1592316 () Bool)

(assert (=> b!3935072 (=> (not res!1592316) (not e!2434492))))

(assert (=> b!3935072 (= res!1592316 (= (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375480)))) (originalCharacters!7123 (_1!23660 (get!13805 lt!1375480)))))))

(declare-fun b!3935073 () Bool)

(assert (=> b!3935073 (= e!2434493 e!2434492)))

(declare-fun res!1592321 () Bool)

(assert (=> b!3935073 (=> (not res!1592321) (not e!2434492))))

(assert (=> b!3935073 (= res!1592321 (isDefined!6953 lt!1375480))))

(assert (= (and d!1167047 c!683745) b!3935068))

(assert (= (and d!1167047 (not c!683745)) b!3935066))

(assert (= (or b!3935068 b!3935066) bm!284932))

(assert (= (and d!1167047 (not res!1592319)) b!3935073))

(assert (= (and b!3935073 res!1592321) b!3935072))

(assert (= (and b!3935072 res!1592316) b!3935071))

(assert (= (and b!3935071 res!1592320) b!3935069))

(assert (= (and b!3935069 res!1592318) b!3935067))

(assert (= (and b!3935067 res!1592317) b!3935065))

(assert (= (and b!3935065 res!1592315) b!3935070))

(declare-fun m!4502361 () Bool)

(assert (=> b!3935069 m!4502361))

(declare-fun m!4502363 () Bool)

(assert (=> b!3935069 m!4502363))

(assert (=> b!3935069 m!4502363))

(declare-fun m!4502365 () Bool)

(assert (=> b!3935069 m!4502365))

(assert (=> b!3935069 m!4502365))

(declare-fun m!4502367 () Bool)

(assert (=> b!3935069 m!4502367))

(declare-fun m!4502369 () Bool)

(assert (=> bm!284932 m!4502369))

(assert (=> b!3935065 m!4502361))

(assert (=> b!3935065 m!4502363))

(assert (=> b!3935065 m!4502363))

(assert (=> b!3935065 m!4502365))

(assert (=> b!3935065 m!4502365))

(declare-fun m!4502371 () Bool)

(assert (=> b!3935065 m!4502371))

(assert (=> b!3935070 m!4502361))

(declare-fun m!4502373 () Bool)

(assert (=> b!3935070 m!4502373))

(declare-fun m!4502375 () Bool)

(assert (=> d!1167047 m!4502375))

(declare-fun m!4502377 () Bool)

(assert (=> d!1167047 m!4502377))

(declare-fun m!4502379 () Bool)

(assert (=> d!1167047 m!4502379))

(assert (=> d!1167047 m!4501435))

(assert (=> b!3935072 m!4502361))

(assert (=> b!3935072 m!4502363))

(assert (=> b!3935072 m!4502363))

(assert (=> b!3935072 m!4502365))

(assert (=> b!3935071 m!4502361))

(declare-fun m!4502381 () Bool)

(assert (=> b!3935071 m!4502381))

(assert (=> b!3935071 m!4500779))

(declare-fun m!4502383 () Bool)

(assert (=> b!3935066 m!4502383))

(assert (=> b!3935067 m!4502361))

(declare-fun m!4502385 () Bool)

(assert (=> b!3935067 m!4502385))

(assert (=> b!3935067 m!4502385))

(declare-fun m!4502387 () Bool)

(assert (=> b!3935067 m!4502387))

(declare-fun m!4502389 () Bool)

(assert (=> b!3935073 m!4502389))

(assert (=> d!1166445 d!1167047))

(declare-fun d!1167049 () Bool)

(assert (=> d!1167049 (= (inv!16 (value!206541 (h!47191 suffixTokens!72))) (= (charsToInt!0 (text!47718 (value!206541 (h!47191 suffixTokens!72)))) (value!206532 (value!206541 (h!47191 suffixTokens!72)))))))

(declare-fun bs!586412 () Bool)

(assert (= bs!586412 d!1167049))

(declare-fun m!4502391 () Bool)

(assert (=> bs!586412 m!4502391))

(assert (=> b!3934193 d!1167049))

(declare-fun d!1167051 () Bool)

(assert (=> d!1167051 (= (isEmpty!24905 (_1!23659 lt!1375012)) (is-Nil!41771 (_1!23659 lt!1375012)))))

(assert (=> b!3934057 d!1167051))

(declare-fun d!1167053 () Bool)

(declare-fun lt!1375484 () Int)

(assert (=> d!1167053 (>= lt!1375484 0)))

(declare-fun e!2434495 () Int)

(assert (=> d!1167053 (= lt!1375484 e!2434495)))

(declare-fun c!683746 () Bool)

(assert (=> d!1167053 (= c!683746 (is-Nil!41770 (_2!23659 lt!1375060)))))

(assert (=> d!1167053 (= (size!31338 (_2!23659 lt!1375060)) lt!1375484)))

(declare-fun b!3935074 () Bool)

(assert (=> b!3935074 (= e!2434495 0)))

(declare-fun b!3935075 () Bool)

(assert (=> b!3935075 (= e!2434495 (+ 1 (size!31338 (t!325943 (_2!23659 lt!1375060)))))))

(assert (= (and d!1167053 c!683746) b!3935074))

(assert (= (and d!1167053 (not c!683746)) b!3935075))

(declare-fun m!4502393 () Bool)

(assert (=> b!3935075 m!4502393))

(assert (=> b!3934131 d!1167053))

(assert (=> b!3934131 d!1166381))

(declare-fun d!1167055 () Bool)

(declare-fun c!683747 () Bool)

(assert (=> d!1167055 (= c!683747 (is-Nil!41770 lt!1375073))))

(declare-fun e!2434496 () (Set C!23042))

(assert (=> d!1167055 (= (content!6295 lt!1375073) e!2434496)))

(declare-fun b!3935076 () Bool)

(assert (=> b!3935076 (= e!2434496 (as set.empty (Set C!23042)))))

(declare-fun b!3935077 () Bool)

(assert (=> b!3935077 (= e!2434496 (set.union (set.insert (h!47190 lt!1375073) (as set.empty (Set C!23042))) (content!6295 (t!325943 lt!1375073))))))

(assert (= (and d!1167055 c!683747) b!3935076))

(assert (= (and d!1167055 (not c!683747)) b!3935077))

(declare-fun m!4502395 () Bool)

(assert (=> b!3935077 m!4502395))

(declare-fun m!4502397 () Bool)

(assert (=> b!3935077 m!4502397))

(assert (=> d!1166489 d!1167055))

(assert (=> d!1166489 d!1166961))

(declare-fun d!1167057 () Bool)

(declare-fun c!683748 () Bool)

(assert (=> d!1167057 (= c!683748 (is-Nil!41770 (_2!23660 (v!39270 lt!1374800))))))

(declare-fun e!2434497 () (Set C!23042))

(assert (=> d!1167057 (= (content!6295 (_2!23660 (v!39270 lt!1374800))) e!2434497)))

(declare-fun b!3935078 () Bool)

(assert (=> b!3935078 (= e!2434497 (as set.empty (Set C!23042)))))

(declare-fun b!3935079 () Bool)

(assert (=> b!3935079 (= e!2434497 (set.union (set.insert (h!47190 (_2!23660 (v!39270 lt!1374800))) (as set.empty (Set C!23042))) (content!6295 (t!325943 (_2!23660 (v!39270 lt!1374800))))))))

(assert (= (and d!1167057 c!683748) b!3935078))

(assert (= (and d!1167057 (not c!683748)) b!3935079))

(declare-fun m!4502399 () Bool)

(assert (=> b!3935079 m!4502399))

(declare-fun m!4502401 () Bool)

(assert (=> b!3935079 m!4502401))

(assert (=> d!1166489 d!1167057))

(declare-fun d!1167059 () Bool)

(declare-fun lt!1375485 () Int)

(assert (=> d!1167059 (>= lt!1375485 0)))

(declare-fun e!2434498 () Int)

(assert (=> d!1167059 (= lt!1375485 e!2434498)))

(declare-fun c!683749 () Bool)

(assert (=> d!1167059 (= c!683749 (is-Nil!41771 lt!1374999))))

(assert (=> d!1167059 (= (size!31341 lt!1374999) lt!1375485)))

(declare-fun b!3935080 () Bool)

(assert (=> b!3935080 (= e!2434498 0)))

(declare-fun b!3935081 () Bool)

(assert (=> b!3935081 (= e!2434498 (+ 1 (size!31341 (t!325944 lt!1374999))))))

(assert (= (and d!1167059 c!683749) b!3935080))

(assert (= (and d!1167059 (not c!683749)) b!3935081))

(declare-fun m!4502403 () Bool)

(assert (=> b!3935081 m!4502403))

(assert (=> b!3934022 d!1167059))

(declare-fun d!1167061 () Bool)

(declare-fun lt!1375486 () Int)

(assert (=> d!1167061 (>= lt!1375486 0)))

(declare-fun e!2434499 () Int)

(assert (=> d!1167061 (= lt!1375486 e!2434499)))

(declare-fun c!683750 () Bool)

(assert (=> d!1167061 (= c!683750 (is-Nil!41771 (++!10803 lt!1374792 lt!1374778)))))

(assert (=> d!1167061 (= (size!31341 (++!10803 lt!1374792 lt!1374778)) lt!1375486)))

(declare-fun b!3935082 () Bool)

(assert (=> b!3935082 (= e!2434499 0)))

(declare-fun b!3935083 () Bool)

(assert (=> b!3935083 (= e!2434499 (+ 1 (size!31341 (t!325944 (++!10803 lt!1374792 lt!1374778)))))))

(assert (= (and d!1167061 c!683750) b!3935082))

(assert (= (and d!1167061 (not c!683750)) b!3935083))

(assert (=> b!3935083 m!4502141))

(assert (=> b!3934022 d!1167061))

(assert (=> b!3934022 d!1166811))

(declare-fun b!3935084 () Bool)

(declare-fun res!1592324 () Bool)

(declare-fun e!2434505 () Bool)

(assert (=> b!3935084 (=> res!1592324 e!2434505)))

(assert (=> b!3935084 (= res!1592324 (not (isEmpty!24907 (tail!6082 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))))))))

(declare-fun b!3935085 () Bool)

(assert (=> b!3935085 (= e!2434505 (not (= (head!8357 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))) (c!683464 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))))

(declare-fun b!3935086 () Bool)

(declare-fun res!1592328 () Bool)

(declare-fun e!2434501 () Bool)

(assert (=> b!3935086 (=> res!1592328 e!2434501)))

(declare-fun e!2434504 () Bool)

(assert (=> b!3935086 (= res!1592328 e!2434504)))

(declare-fun res!1592322 () Bool)

(assert (=> b!3935086 (=> (not res!1592322) (not e!2434504))))

(declare-fun lt!1375487 () Bool)

(assert (=> b!3935086 (= res!1592322 lt!1375487)))

(declare-fun b!3935087 () Bool)

(declare-fun e!2434502 () Bool)

(assert (=> b!3935087 (= e!2434502 e!2434505)))

(declare-fun res!1592326 () Bool)

(assert (=> b!3935087 (=> res!1592326 e!2434505)))

(declare-fun call!284938 () Bool)

(assert (=> b!3935087 (= res!1592326 call!284938)))

(declare-fun b!3935088 () Bool)

(declare-fun e!2434503 () Bool)

(declare-fun e!2434506 () Bool)

(assert (=> b!3935088 (= e!2434503 e!2434506)))

(declare-fun c!683751 () Bool)

(assert (=> b!3935088 (= c!683751 (is-EmptyLang!11428 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(declare-fun b!3935089 () Bool)

(declare-fun e!2434500 () Bool)

(assert (=> b!3935089 (= e!2434500 (nullable!4005 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(declare-fun b!3935091 () Bool)

(declare-fun res!1592325 () Bool)

(assert (=> b!3935091 (=> (not res!1592325) (not e!2434504))))

(assert (=> b!3935091 (= res!1592325 (isEmpty!24907 (tail!6082 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783))))))))

(declare-fun b!3935092 () Bool)

(assert (=> b!3935092 (= e!2434506 (not lt!1375487))))

(declare-fun b!3935093 () Bool)

(assert (=> b!3935093 (= e!2434500 (matchR!5486 (derivativeStep!3453 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (head!8357 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783))))) (tail!6082 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783))))))))

(declare-fun b!3935094 () Bool)

(declare-fun res!1592327 () Bool)

(assert (=> b!3935094 (=> res!1592327 e!2434501)))

(assert (=> b!3935094 (= res!1592327 (not (is-ElementMatch!11428 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))))

(assert (=> b!3935094 (= e!2434506 e!2434501)))

(declare-fun b!3935095 () Bool)

(assert (=> b!3935095 (= e!2434503 (= lt!1375487 call!284938))))

(declare-fun b!3935096 () Bool)

(declare-fun res!1592329 () Bool)

(assert (=> b!3935096 (=> (not res!1592329) (not e!2434504))))

(assert (=> b!3935096 (= res!1592329 (not call!284938))))

(declare-fun bm!284933 () Bool)

(assert (=> bm!284933 (= call!284938 (isEmpty!24907 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))))))

(declare-fun b!3935097 () Bool)

(assert (=> b!3935097 (= e!2434501 e!2434502)))

(declare-fun res!1592323 () Bool)

(assert (=> b!3935097 (=> (not res!1592323) (not e!2434502))))

(assert (=> b!3935097 (= res!1592323 (not lt!1375487))))

(declare-fun d!1167063 () Bool)

(assert (=> d!1167063 e!2434503))

(declare-fun c!683753 () Bool)

(assert (=> d!1167063 (= c!683753 (is-EmptyExpr!11428 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(assert (=> d!1167063 (= lt!1375487 e!2434500)))

(declare-fun c!683752 () Bool)

(assert (=> d!1167063 (= c!683752 (isEmpty!24907 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))))))

(assert (=> d!1167063 (validRegex!5204 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))

(assert (=> d!1167063 (= (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))) lt!1375487)))

(declare-fun b!3935090 () Bool)

(assert (=> b!3935090 (= e!2434504 (= (head!8357 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))) (c!683464 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))))

(assert (= (and d!1167063 c!683752) b!3935089))

(assert (= (and d!1167063 (not c!683752)) b!3935093))

(assert (= (and d!1167063 c!683753) b!3935095))

(assert (= (and d!1167063 (not c!683753)) b!3935088))

(assert (= (and b!3935088 c!683751) b!3935092))

(assert (= (and b!3935088 (not c!683751)) b!3935094))

(assert (= (and b!3935094 (not res!1592327)) b!3935086))

(assert (= (and b!3935086 res!1592322) b!3935096))

(assert (= (and b!3935096 res!1592329) b!3935091))

(assert (= (and b!3935091 res!1592325) b!3935090))

(assert (= (and b!3935086 (not res!1592328)) b!3935097))

(assert (= (and b!3935097 res!1592323) b!3935087))

(assert (= (and b!3935087 (not res!1592326)) b!3935084))

(assert (= (and b!3935084 (not res!1592324)) b!3935085))

(assert (= (or b!3935095 b!3935087 b!3935096) bm!284933))

(declare-fun m!4502405 () Bool)

(assert (=> b!3935093 m!4502405))

(assert (=> b!3935093 m!4502405))

(declare-fun m!4502407 () Bool)

(assert (=> b!3935093 m!4502407))

(declare-fun m!4502409 () Bool)

(assert (=> b!3935093 m!4502409))

(assert (=> b!3935093 m!4502407))

(assert (=> b!3935093 m!4502409))

(declare-fun m!4502411 () Bool)

(assert (=> b!3935093 m!4502411))

(assert (=> b!3935090 m!4502405))

(assert (=> b!3935084 m!4502409))

(assert (=> b!3935084 m!4502409))

(declare-fun m!4502413 () Bool)

(assert (=> b!3935084 m!4502413))

(assert (=> b!3935089 m!4500927))

(assert (=> b!3935085 m!4502405))

(assert (=> d!1167063 m!4501287))

(assert (=> d!1167063 m!4500925))

(assert (=> bm!284933 m!4501287))

(assert (=> b!3935091 m!4502409))

(assert (=> b!3935091 m!4502409))

(assert (=> b!3935091 m!4502413))

(assert (=> b!3934343 d!1167063))

(assert (=> b!3934343 d!1166911))

(assert (=> b!3934343 d!1166539))

(assert (=> b!3934343 d!1166551))

(declare-fun b!3935098 () Bool)

(declare-fun e!2434508 () Bool)

(declare-fun e!2434510 () Bool)

(assert (=> b!3935098 (= e!2434508 e!2434510)))

(declare-fun res!1592332 () Bool)

(assert (=> b!3935098 (=> (not res!1592332) (not e!2434510))))

(declare-fun lt!1375489 () Option!8943)

(assert (=> b!3935098 (= res!1592332 (matchR!5486 (regex!6523 (h!47192 rules!2768)) (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375489))))))))

(declare-fun b!3935099 () Bool)

(declare-fun e!2434507 () Option!8943)

(declare-fun lt!1375488 () tuple2!41060)

(assert (=> b!3935099 (= e!2434507 (Some!8942 (tuple2!41053 (Token!12185 (apply!9762 (transformation!6523 (h!47192 rules!2768)) (seqFromList!4790 (_1!23664 lt!1375488))) (h!47192 rules!2768) (size!31344 (seqFromList!4790 (_1!23664 lt!1375488))) (_1!23664 lt!1375488)) (_2!23664 lt!1375488))))))

(declare-fun lt!1375492 () Unit!60236)

(assert (=> b!3935099 (= lt!1375492 (longestMatchIsAcceptedByMatchOrIsEmpty!1239 (regex!6523 (h!47192 rules!2768)) lt!1374783))))

(declare-fun res!1592335 () Bool)

(assert (=> b!3935099 (= res!1592335 (isEmpty!24907 (_1!23664 (findLongestMatchInner!1266 (regex!6523 (h!47192 rules!2768)) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))))))

(declare-fun e!2434509 () Bool)

(assert (=> b!3935099 (=> res!1592335 e!2434509)))

(assert (=> b!3935099 e!2434509))

(declare-fun lt!1375491 () Unit!60236)

(assert (=> b!3935099 (= lt!1375491 lt!1375492)))

(declare-fun lt!1375490 () Unit!60236)

(assert (=> b!3935099 (= lt!1375490 (lemmaSemiInverse!1772 (transformation!6523 (h!47192 rules!2768)) (seqFromList!4790 (_1!23664 lt!1375488))))))

(declare-fun b!3935100 () Bool)

(assert (=> b!3935100 (= e!2434509 (matchR!5486 (regex!6523 (h!47192 rules!2768)) (_1!23664 (findLongestMatchInner!1266 (regex!6523 (h!47192 rules!2768)) Nil!41770 (size!31338 Nil!41770) lt!1374783 lt!1374783 (size!31338 lt!1374783)))))))

(declare-fun b!3935101 () Bool)

(declare-fun res!1592330 () Bool)

(assert (=> b!3935101 (=> (not res!1592330) (not e!2434510))))

(assert (=> b!3935101 (= res!1592330 (= (rule!9473 (_1!23660 (get!13805 lt!1375489))) (h!47192 rules!2768)))))

(declare-fun d!1167065 () Bool)

(assert (=> d!1167065 e!2434508))

(declare-fun res!1592334 () Bool)

(assert (=> d!1167065 (=> res!1592334 e!2434508)))

(assert (=> d!1167065 (= res!1592334 (isEmpty!24912 lt!1375489))))

(assert (=> d!1167065 (= lt!1375489 e!2434507)))

(declare-fun c!683754 () Bool)

(assert (=> d!1167065 (= c!683754 (isEmpty!24907 (_1!23664 lt!1375488)))))

(assert (=> d!1167065 (= lt!1375488 (findLongestMatch!1179 (regex!6523 (h!47192 rules!2768)) lt!1374783))))

(assert (=> d!1167065 (ruleValid!2471 thiss!20629 (h!47192 rules!2768))))

(assert (=> d!1167065 (= (maxPrefixOneRule!2486 thiss!20629 (h!47192 rules!2768) lt!1374783) lt!1375489)))

(declare-fun b!3935102 () Bool)

(assert (=> b!3935102 (= e!2434510 (= (size!31337 (_1!23660 (get!13805 lt!1375489))) (size!31338 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375489))))))))

(declare-fun b!3935103 () Bool)

(declare-fun res!1592331 () Bool)

(assert (=> b!3935103 (=> (not res!1592331) (not e!2434510))))

(assert (=> b!3935103 (= res!1592331 (= (value!206541 (_1!23660 (get!13805 lt!1375489))) (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375489)))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375489)))))))))

(declare-fun b!3935104 () Bool)

(assert (=> b!3935104 (= e!2434507 None!8942)))

(declare-fun b!3935105 () Bool)

(declare-fun res!1592333 () Bool)

(assert (=> b!3935105 (=> (not res!1592333) (not e!2434510))))

(assert (=> b!3935105 (= res!1592333 (= (++!10804 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375489)))) (_2!23660 (get!13805 lt!1375489))) lt!1374783))))

(declare-fun b!3935106 () Bool)

(declare-fun res!1592336 () Bool)

(assert (=> b!3935106 (=> (not res!1592336) (not e!2434510))))

(assert (=> b!3935106 (= res!1592336 (< (size!31338 (_2!23660 (get!13805 lt!1375489))) (size!31338 lt!1374783)))))

(assert (= (and d!1167065 c!683754) b!3935104))

(assert (= (and d!1167065 (not c!683754)) b!3935099))

(assert (= (and b!3935099 (not res!1592335)) b!3935100))

(assert (= (and d!1167065 (not res!1592334)) b!3935098))

(assert (= (and b!3935098 res!1592332) b!3935105))

(assert (= (and b!3935105 res!1592333) b!3935106))

(assert (= (and b!3935106 res!1592336) b!3935101))

(assert (= (and b!3935101 res!1592330) b!3935103))

(assert (= (and b!3935103 res!1592331) b!3935102))

(assert (=> b!3935100 m!4500353))

(assert (=> b!3935100 m!4500371))

(assert (=> b!3935100 m!4500353))

(assert (=> b!3935100 m!4500371))

(declare-fun m!4502415 () Bool)

(assert (=> b!3935100 m!4502415))

(declare-fun m!4502417 () Bool)

(assert (=> b!3935100 m!4502417))

(declare-fun m!4502419 () Bool)

(assert (=> b!3935102 m!4502419))

(declare-fun m!4502421 () Bool)

(assert (=> b!3935102 m!4502421))

(assert (=> b!3935101 m!4502419))

(assert (=> b!3935105 m!4502419))

(declare-fun m!4502423 () Bool)

(assert (=> b!3935105 m!4502423))

(assert (=> b!3935105 m!4502423))

(declare-fun m!4502425 () Bool)

(assert (=> b!3935105 m!4502425))

(assert (=> b!3935105 m!4502425))

(declare-fun m!4502427 () Bool)

(assert (=> b!3935105 m!4502427))

(assert (=> b!3935103 m!4502419))

(declare-fun m!4502429 () Bool)

(assert (=> b!3935103 m!4502429))

(assert (=> b!3935103 m!4502429))

(declare-fun m!4502431 () Bool)

(assert (=> b!3935103 m!4502431))

(assert (=> b!3935099 m!4500371))

(declare-fun m!4502433 () Bool)

(assert (=> b!3935099 m!4502433))

(declare-fun m!4502435 () Bool)

(assert (=> b!3935099 m!4502435))

(declare-fun m!4502437 () Bool)

(assert (=> b!3935099 m!4502437))

(assert (=> b!3935099 m!4500353))

(assert (=> b!3935099 m!4502435))

(assert (=> b!3935099 m!4500353))

(assert (=> b!3935099 m!4500371))

(assert (=> b!3935099 m!4502415))

(assert (=> b!3935099 m!4502435))

(declare-fun m!4502439 () Bool)

(assert (=> b!3935099 m!4502439))

(assert (=> b!3935099 m!4502435))

(declare-fun m!4502441 () Bool)

(assert (=> b!3935099 m!4502441))

(declare-fun m!4502443 () Bool)

(assert (=> b!3935099 m!4502443))

(declare-fun m!4502445 () Bool)

(assert (=> d!1167065 m!4502445))

(declare-fun m!4502447 () Bool)

(assert (=> d!1167065 m!4502447))

(declare-fun m!4502449 () Bool)

(assert (=> d!1167065 m!4502449))

(assert (=> d!1167065 m!4502025))

(assert (=> b!3935098 m!4502419))

(assert (=> b!3935098 m!4502423))

(assert (=> b!3935098 m!4502423))

(assert (=> b!3935098 m!4502425))

(assert (=> b!3935098 m!4502425))

(declare-fun m!4502451 () Bool)

(assert (=> b!3935098 m!4502451))

(assert (=> b!3935106 m!4502419))

(declare-fun m!4502453 () Bool)

(assert (=> b!3935106 m!4502453))

(assert (=> b!3935106 m!4500371))

(assert (=> bm!284901 d!1167065))

(declare-fun b!3935109 () Bool)

(declare-fun e!2434512 () Bool)

(assert (=> b!3935109 (= e!2434512 (isPrefix!3618 (tail!6082 (tail!6082 lt!1374813)) (tail!6082 (tail!6082 lt!1374797))))))

(declare-fun b!3935108 () Bool)

(declare-fun res!1592338 () Bool)

(assert (=> b!3935108 (=> (not res!1592338) (not e!2434512))))

(assert (=> b!3935108 (= res!1592338 (= (head!8357 (tail!6082 lt!1374813)) (head!8357 (tail!6082 lt!1374797))))))

(declare-fun b!3935110 () Bool)

(declare-fun e!2434511 () Bool)

(assert (=> b!3935110 (= e!2434511 (>= (size!31338 (tail!6082 lt!1374797)) (size!31338 (tail!6082 lt!1374813))))))

(declare-fun d!1167067 () Bool)

(assert (=> d!1167067 e!2434511))

(declare-fun res!1592339 () Bool)

(assert (=> d!1167067 (=> res!1592339 e!2434511)))

(declare-fun lt!1375493 () Bool)

(assert (=> d!1167067 (= res!1592339 (not lt!1375493))))

(declare-fun e!2434513 () Bool)

(assert (=> d!1167067 (= lt!1375493 e!2434513)))

(declare-fun res!1592340 () Bool)

(assert (=> d!1167067 (=> res!1592340 e!2434513)))

(assert (=> d!1167067 (= res!1592340 (is-Nil!41770 (tail!6082 lt!1374813)))))

(assert (=> d!1167067 (= (isPrefix!3618 (tail!6082 lt!1374813) (tail!6082 lt!1374797)) lt!1375493)))

(declare-fun b!3935107 () Bool)

(assert (=> b!3935107 (= e!2434513 e!2434512)))

(declare-fun res!1592337 () Bool)

(assert (=> b!3935107 (=> (not res!1592337) (not e!2434512))))

(assert (=> b!3935107 (= res!1592337 (not (is-Nil!41770 (tail!6082 lt!1374797))))))

(assert (= (and d!1167067 (not res!1592340)) b!3935107))

(assert (= (and b!3935107 res!1592337) b!3935108))

(assert (= (and b!3935108 res!1592338) b!3935109))

(assert (= (and d!1167067 (not res!1592339)) b!3935110))

(assert (=> b!3935109 m!4500859))

(assert (=> b!3935109 m!4502211))

(assert (=> b!3935109 m!4501061))

(declare-fun m!4502455 () Bool)

(assert (=> b!3935109 m!4502455))

(assert (=> b!3935109 m!4502211))

(assert (=> b!3935109 m!4502455))

(declare-fun m!4502457 () Bool)

(assert (=> b!3935109 m!4502457))

(assert (=> b!3935108 m!4500859))

(assert (=> b!3935108 m!4502217))

(assert (=> b!3935108 m!4501061))

(declare-fun m!4502459 () Bool)

(assert (=> b!3935108 m!4502459))

(assert (=> b!3935110 m!4501061))

(declare-fun m!4502461 () Bool)

(assert (=> b!3935110 m!4502461))

(assert (=> b!3935110 m!4500859))

(assert (=> b!3935110 m!4502223))

(assert (=> b!3934209 d!1167067))

(assert (=> b!3934209 d!1166981))

(declare-fun d!1167069 () Bool)

(assert (=> d!1167069 (= (tail!6082 lt!1374797) (t!325943 lt!1374797))))

(assert (=> b!3934209 d!1167069))

(declare-fun d!1167071 () Bool)

(declare-fun lt!1375494 () Int)

(assert (=> d!1167071 (>= lt!1375494 0)))

(declare-fun e!2434514 () Int)

(assert (=> d!1167071 (= lt!1375494 e!2434514)))

(declare-fun c!683755 () Bool)

(assert (=> d!1167071 (= c!683755 (is-Nil!41770 (t!325943 prefix!426)))))

(assert (=> d!1167071 (= (size!31338 (t!325943 prefix!426)) lt!1375494)))

(declare-fun b!3935111 () Bool)

(assert (=> b!3935111 (= e!2434514 0)))

(declare-fun b!3935112 () Bool)

(assert (=> b!3935112 (= e!2434514 (+ 1 (size!31338 (t!325943 (t!325943 prefix!426)))))))

(assert (= (and d!1167071 c!683755) b!3935111))

(assert (= (and d!1167071 (not c!683755)) b!3935112))

(declare-fun m!4502463 () Bool)

(assert (=> b!3935112 m!4502463))

(assert (=> b!3934372 d!1167071))

(declare-fun d!1167073 () Bool)

(declare-fun c!683756 () Bool)

(assert (=> d!1167073 (= c!683756 (is-Node!12734 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800)))))))))

(declare-fun e!2434515 () Bool)

(assert (=> d!1167073 (= (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800)))))) e!2434515)))

(declare-fun b!3935113 () Bool)

(assert (=> b!3935113 (= e!2434515 (inv!55977 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800)))))))))

(declare-fun b!3935114 () Bool)

(declare-fun e!2434516 () Bool)

(assert (=> b!3935114 (= e!2434515 e!2434516)))

(declare-fun res!1592341 () Bool)

(assert (=> b!3935114 (= res!1592341 (not (is-Leaf!19703 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800))))))))))

(assert (=> b!3935114 (=> res!1592341 e!2434516)))

(declare-fun b!3935115 () Bool)

(assert (=> b!3935115 (= e!2434516 (inv!55978 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800)))))))))

(assert (= (and d!1167073 c!683756) b!3935113))

(assert (= (and d!1167073 (not c!683756)) b!3935114))

(assert (= (and b!3935114 (not res!1592341)) b!3935115))

(declare-fun m!4502465 () Bool)

(assert (=> b!3935113 m!4502465))

(declare-fun m!4502467 () Bool)

(assert (=> b!3935115 m!4502467))

(assert (=> b!3934155 d!1167073))

(declare-fun d!1167075 () Bool)

(assert (=> d!1167075 (= (head!8357 prefix!426) (h!47190 prefix!426))))

(assert (=> b!3934232 d!1167075))

(declare-fun d!1167077 () Bool)

(assert (=> d!1167077 (= (head!8357 lt!1374783) (h!47190 lt!1374783))))

(assert (=> b!3934232 d!1167077))

(declare-fun d!1167079 () Bool)

(declare-fun lt!1375495 () Int)

(assert (=> d!1167079 (>= lt!1375495 0)))

(declare-fun e!2434517 () Int)

(assert (=> d!1167079 (= lt!1375495 e!2434517)))

(declare-fun c!683757 () Bool)

(assert (=> d!1167079 (= c!683757 (is-Nil!41770 (_2!23659 lt!1375039)))))

(assert (=> d!1167079 (= (size!31338 (_2!23659 lt!1375039)) lt!1375495)))

(declare-fun b!3935116 () Bool)

(assert (=> b!3935116 (= e!2434517 0)))

(declare-fun b!3935117 () Bool)

(assert (=> b!3935117 (= e!2434517 (+ 1 (size!31338 (t!325943 (_2!23659 lt!1375039)))))))

(assert (= (and d!1167079 c!683757) b!3935116))

(assert (= (and d!1167079 (not c!683757)) b!3935117))

(declare-fun m!4502469 () Bool)

(assert (=> b!3935117 m!4502469))

(assert (=> b!3934092 d!1167079))

(assert (=> b!3934092 d!1166891))

(declare-fun d!1167081 () Bool)

(assert (=> d!1167081 (= (inv!55976 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72)))) (isBalanced!3641 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72))))))))

(declare-fun bs!586413 () Bool)

(assert (= bs!586413 d!1167081))

(declare-fun m!4502471 () Bool)

(assert (=> bs!586413 m!4502471))

(assert (=> tb!235355 d!1167081))

(declare-fun d!1167083 () Bool)

(declare-fun lt!1375496 () Int)

(assert (=> d!1167083 (>= lt!1375496 0)))

(declare-fun e!2434518 () Int)

(assert (=> d!1167083 (= lt!1375496 e!2434518)))

(declare-fun c!683758 () Bool)

(assert (=> d!1167083 (= c!683758 (is-Nil!41771 lt!1375089))))

(assert (=> d!1167083 (= (size!31341 lt!1375089) lt!1375496)))

(declare-fun b!3935118 () Bool)

(assert (=> b!3935118 (= e!2434518 0)))

(declare-fun b!3935119 () Bool)

(assert (=> b!3935119 (= e!2434518 (+ 1 (size!31341 (t!325944 lt!1375089))))))

(assert (= (and d!1167083 c!683758) b!3935118))

(assert (= (and d!1167083 (not c!683758)) b!3935119))

(declare-fun m!4502473 () Bool)

(assert (=> b!3935119 m!4502473))

(assert (=> b!3934205 d!1167083))

(assert (=> b!3934205 d!1167035))

(assert (=> b!3934205 d!1166811))

(declare-fun d!1167085 () Bool)

(declare-fun c!683759 () Bool)

(assert (=> d!1167085 (= c!683759 (is-Nil!41771 lt!1375000))))

(declare-fun e!2434519 () (Set Token!12184))

(assert (=> d!1167085 (= (content!6296 lt!1375000) e!2434519)))

(declare-fun b!3935120 () Bool)

(assert (=> b!3935120 (= e!2434519 (as set.empty (Set Token!12184)))))

(declare-fun b!3935121 () Bool)

(assert (=> b!3935121 (= e!2434519 (set.union (set.insert (h!47191 lt!1375000) (as set.empty (Set Token!12184))) (content!6296 (t!325944 lt!1375000))))))

(assert (= (and d!1167085 c!683759) b!3935120))

(assert (= (and d!1167085 (not c!683759)) b!3935121))

(declare-fun m!4502475 () Bool)

(assert (=> b!3935121 m!4502475))

(declare-fun m!4502477 () Bool)

(assert (=> b!3935121 m!4502477))

(assert (=> d!1166409 d!1167085))

(assert (=> d!1166409 d!1166701))

(assert (=> d!1166409 d!1166845))

(declare-fun d!1167087 () Bool)

(declare-fun lt!1375497 () Int)

(assert (=> d!1167087 (>= lt!1375497 0)))

(declare-fun e!2434520 () Int)

(assert (=> d!1167087 (= lt!1375497 e!2434520)))

(declare-fun c!683760 () Bool)

(assert (=> d!1167087 (= c!683760 (is-Nil!41770 lt!1374985))))

(assert (=> d!1167087 (= (size!31338 lt!1374985) lt!1375497)))

(declare-fun b!3935122 () Bool)

(assert (=> b!3935122 (= e!2434520 0)))

(declare-fun b!3935123 () Bool)

(assert (=> b!3935123 (= e!2434520 (+ 1 (size!31338 (t!325943 lt!1374985))))))

(assert (= (and d!1167087 c!683760) b!3935122))

(assert (= (and d!1167087 (not c!683760)) b!3935123))

(declare-fun m!4502479 () Bool)

(assert (=> b!3935123 m!4502479))

(assert (=> b!3933978 d!1167087))

(assert (=> b!3933978 d!1166453))

(declare-fun d!1167089 () Bool)

(declare-fun lt!1375498 () Int)

(assert (=> d!1167089 (>= lt!1375498 0)))

(declare-fun e!2434521 () Int)

(assert (=> d!1167089 (= lt!1375498 e!2434521)))

(declare-fun c!683761 () Bool)

(assert (=> d!1167089 (= c!683761 (is-Nil!41770 lt!1374813))))

(assert (=> d!1167089 (= (size!31338 lt!1374813) lt!1375498)))

(declare-fun b!3935124 () Bool)

(assert (=> b!3935124 (= e!2434521 0)))

(declare-fun b!3935125 () Bool)

(assert (=> b!3935125 (= e!2434521 (+ 1 (size!31338 (t!325943 lt!1374813))))))

(assert (= (and d!1167089 c!683761) b!3935124))

(assert (= (and d!1167089 (not c!683761)) b!3935125))

(assert (=> b!3935125 m!4502239))

(assert (=> b!3933978 d!1167089))

(assert (=> b!3934120 d!1166381))

(assert (=> b!3934120 d!1167089))

(declare-fun d!1167091 () Bool)

(declare-fun c!683762 () Bool)

(assert (=> d!1167091 (= c!683762 (is-Nil!41771 lt!1375087))))

(declare-fun e!2434522 () (Set Token!12184))

(assert (=> d!1167091 (= (content!6296 lt!1375087) e!2434522)))

(declare-fun b!3935126 () Bool)

(assert (=> b!3935126 (= e!2434522 (as set.empty (Set Token!12184)))))

(declare-fun b!3935127 () Bool)

(assert (=> b!3935127 (= e!2434522 (set.union (set.insert (h!47191 lt!1375087) (as set.empty (Set Token!12184))) (content!6296 (t!325944 lt!1375087))))))

(assert (= (and d!1167091 c!683762) b!3935126))

(assert (= (and d!1167091 (not c!683762)) b!3935127))

(declare-fun m!4502481 () Bool)

(assert (=> b!3935127 m!4502481))

(declare-fun m!4502483 () Bool)

(assert (=> b!3935127 m!4502483))

(assert (=> d!1166511 d!1167091))

(declare-fun d!1167093 () Bool)

(declare-fun c!683763 () Bool)

(assert (=> d!1167093 (= c!683763 (is-Nil!41771 lt!1374793))))

(declare-fun e!2434523 () (Set Token!12184))

(assert (=> d!1167093 (= (content!6296 lt!1374793) e!2434523)))

(declare-fun b!3935128 () Bool)

(assert (=> b!3935128 (= e!2434523 (as set.empty (Set Token!12184)))))

(declare-fun b!3935129 () Bool)

(assert (=> b!3935129 (= e!2434523 (set.union (set.insert (h!47191 lt!1374793) (as set.empty (Set Token!12184))) (content!6296 (t!325944 lt!1374793))))))

(assert (= (and d!1167093 c!683763) b!3935128))

(assert (= (and d!1167093 (not c!683763)) b!3935129))

(declare-fun m!4502485 () Bool)

(assert (=> b!3935129 m!4502485))

(declare-fun m!4502487 () Bool)

(assert (=> b!3935129 m!4502487))

(assert (=> d!1166511 d!1167093))

(assert (=> d!1166511 d!1166709))

(declare-fun b!3935132 () Bool)

(declare-fun e!2434525 () Bool)

(assert (=> b!3935132 (= e!2434525 (isPrefix!3618 (tail!6082 lt!1374817) (tail!6082 (++!10804 lt!1374817 lt!1374797))))))

(declare-fun b!3935131 () Bool)

(declare-fun res!1592343 () Bool)

(assert (=> b!3935131 (=> (not res!1592343) (not e!2434525))))

(assert (=> b!3935131 (= res!1592343 (= (head!8357 lt!1374817) (head!8357 (++!10804 lt!1374817 lt!1374797))))))

(declare-fun b!3935133 () Bool)

(declare-fun e!2434524 () Bool)

(assert (=> b!3935133 (= e!2434524 (>= (size!31338 (++!10804 lt!1374817 lt!1374797)) (size!31338 lt!1374817)))))

(declare-fun d!1167095 () Bool)

(assert (=> d!1167095 e!2434524))

(declare-fun res!1592344 () Bool)

(assert (=> d!1167095 (=> res!1592344 e!2434524)))

(declare-fun lt!1375499 () Bool)

(assert (=> d!1167095 (= res!1592344 (not lt!1375499))))

(declare-fun e!2434526 () Bool)

(assert (=> d!1167095 (= lt!1375499 e!2434526)))

(declare-fun res!1592345 () Bool)

(assert (=> d!1167095 (=> res!1592345 e!2434526)))

(assert (=> d!1167095 (= res!1592345 (is-Nil!41770 lt!1374817))))

(assert (=> d!1167095 (= (isPrefix!3618 lt!1374817 (++!10804 lt!1374817 lt!1374797)) lt!1375499)))

(declare-fun b!3935130 () Bool)

(assert (=> b!3935130 (= e!2434526 e!2434525)))

(declare-fun res!1592342 () Bool)

(assert (=> b!3935130 (=> (not res!1592342) (not e!2434525))))

(assert (=> b!3935130 (= res!1592342 (not (is-Nil!41770 (++!10804 lt!1374817 lt!1374797))))))

(assert (= (and d!1167095 (not res!1592345)) b!3935130))

(assert (= (and b!3935130 res!1592342) b!3935131))

(assert (= (and b!3935131 res!1592343) b!3935132))

(assert (= (and d!1167095 (not res!1592344)) b!3935133))

(assert (=> b!3935132 m!4500929))

(assert (=> b!3935132 m!4500409))

(declare-fun m!4502489 () Bool)

(assert (=> b!3935132 m!4502489))

(assert (=> b!3935132 m!4500929))

(assert (=> b!3935132 m!4502489))

(declare-fun m!4502491 () Bool)

(assert (=> b!3935132 m!4502491))

(assert (=> b!3935131 m!4500935))

(assert (=> b!3935131 m!4500409))

(declare-fun m!4502493 () Bool)

(assert (=> b!3935131 m!4502493))

(assert (=> b!3935133 m!4500409))

(declare-fun m!4502495 () Bool)

(assert (=> b!3935133 m!4502495))

(assert (=> b!3935133 m!4500447))

(assert (=> d!1166613 d!1167095))

(assert (=> d!1166613 d!1166417))

(declare-fun d!1167097 () Bool)

(assert (=> d!1167097 (isPrefix!3618 lt!1374817 (++!10804 lt!1374817 lt!1374797))))

(assert (=> d!1167097 true))

(declare-fun _$46!1579 () Unit!60236)

(assert (=> d!1167097 (= (choose!23433 lt!1374817 lt!1374797) _$46!1579)))

(declare-fun bs!586414 () Bool)

(assert (= bs!586414 d!1167097))

(assert (=> bs!586414 m!4500409))

(assert (=> bs!586414 m!4500409))

(assert (=> bs!586414 m!4501341))

(assert (=> d!1166613 d!1167097))

(declare-fun d!1167099 () Bool)

(assert (=> d!1167099 (= (inv!55976 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800))))) (isBalanced!3641 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800)))))))))

(declare-fun bs!586415 () Bool)

(assert (= bs!586415 d!1167099))

(declare-fun m!4502497 () Bool)

(assert (=> bs!586415 m!4502497))

(assert (=> tb!235349 d!1167099))

(declare-fun d!1167101 () Bool)

(assert (=> d!1167101 (= (isEmpty!24905 (_1!23659 lt!1375039)) (is-Nil!41771 (_1!23659 lt!1375039)))))

(assert (=> b!3934089 d!1167101))

(declare-fun d!1167103 () Bool)

(assert (=> d!1167103 (= (isEmpty!24907 (originalCharacters!7123 (h!47191 suffixTokens!72))) (is-Nil!41770 (originalCharacters!7123 (h!47191 suffixTokens!72))))))

(assert (=> d!1166517 d!1167103))

(declare-fun d!1167105 () Bool)

(declare-fun lt!1375500 () Int)

(assert (=> d!1167105 (>= lt!1375500 0)))

(declare-fun e!2434527 () Int)

(assert (=> d!1167105 (= lt!1375500 e!2434527)))

(declare-fun c!683764 () Bool)

(assert (=> d!1167105 (= c!683764 (is-Nil!41770 (t!325943 suffix!1176)))))

(assert (=> d!1167105 (= (size!31338 (t!325943 suffix!1176)) lt!1375500)))

(declare-fun b!3935134 () Bool)

(assert (=> b!3935134 (= e!2434527 0)))

(declare-fun b!3935135 () Bool)

(assert (=> b!3935135 (= e!2434527 (+ 1 (size!31338 (t!325943 (t!325943 suffix!1176)))))))

(assert (= (and d!1167105 c!683764) b!3935134))

(assert (= (and d!1167105 (not c!683764)) b!3935135))

(declare-fun m!4502499 () Bool)

(assert (=> b!3935135 m!4502499))

(assert (=> b!3933957 d!1167105))

(assert (=> b!3934368 d!1166743))

(assert (=> b!3934368 d!1167075))

(declare-fun d!1167107 () Bool)

(declare-fun lt!1375501 () Int)

(assert (=> d!1167107 (>= lt!1375501 0)))

(declare-fun e!2434528 () Int)

(assert (=> d!1167107 (= lt!1375501 e!2434528)))

(declare-fun c!683765 () Bool)

(assert (=> d!1167107 (= c!683765 (is-Nil!41770 lt!1375015))))

(assert (=> d!1167107 (= (size!31338 lt!1375015) lt!1375501)))

(declare-fun b!3935136 () Bool)

(assert (=> b!3935136 (= e!2434528 0)))

(declare-fun b!3935137 () Bool)

(assert (=> b!3935137 (= e!2434528 (+ 1 (size!31338 (t!325943 lt!1375015))))))

(assert (= (and d!1167107 c!683765) b!3935136))

(assert (= (and d!1167107 (not c!683765)) b!3935137))

(declare-fun m!4502501 () Bool)

(assert (=> b!3935137 m!4502501))

(assert (=> b!3934070 d!1167107))

(assert (=> b!3934070 d!1167089))

(assert (=> b!3934070 d!1166379))

(declare-fun d!1167109 () Bool)

(declare-fun lt!1375502 () Int)

(assert (=> d!1167109 (>= lt!1375502 0)))

(declare-fun e!2434529 () Int)

(assert (=> d!1167109 (= lt!1375502 e!2434529)))

(declare-fun c!683766 () Bool)

(assert (=> d!1167109 (= c!683766 (is-Nil!41770 (t!325943 lt!1374783)))))

(assert (=> d!1167109 (= (size!31338 (t!325943 lt!1374783)) lt!1375502)))

(declare-fun b!3935138 () Bool)

(assert (=> b!3935138 (= e!2434529 0)))

(declare-fun b!3935139 () Bool)

(assert (=> b!3935139 (= e!2434529 (+ 1 (size!31338 (t!325943 (t!325943 lt!1374783)))))))

(assert (= (and d!1167109 c!683766) b!3935138))

(assert (= (and d!1167109 (not c!683766)) b!3935139))

(declare-fun m!4502503 () Bool)

(assert (=> b!3935139 m!4502503))

(assert (=> b!3934236 d!1167109))

(declare-fun d!1167111 () Bool)

(declare-fun lt!1375503 () List!41894)

(assert (=> d!1167111 (= (++!10804 (t!325943 lt!1374817) lt!1375503) (tail!6082 lt!1374783))))

(declare-fun e!2434530 () List!41894)

(assert (=> d!1167111 (= lt!1375503 e!2434530)))

(declare-fun c!683767 () Bool)

(assert (=> d!1167111 (= c!683767 (is-Cons!41770 (t!325943 lt!1374817)))))

(assert (=> d!1167111 (>= (size!31338 (tail!6082 lt!1374783)) (size!31338 (t!325943 lt!1374817)))))

(assert (=> d!1167111 (= (getSuffix!2073 (tail!6082 lt!1374783) (t!325943 lt!1374817)) lt!1375503)))

(declare-fun b!3935140 () Bool)

(assert (=> b!3935140 (= e!2434530 (getSuffix!2073 (tail!6082 (tail!6082 lt!1374783)) (t!325943 (t!325943 lt!1374817))))))

(declare-fun b!3935141 () Bool)

(assert (=> b!3935141 (= e!2434530 (tail!6082 lt!1374783))))

(assert (= (and d!1167111 c!683767) b!3935140))

(assert (= (and d!1167111 (not c!683767)) b!3935141))

(declare-fun m!4502505 () Bool)

(assert (=> d!1167111 m!4502505))

(assert (=> d!1167111 m!4500901))

(declare-fun m!4502507 () Bool)

(assert (=> d!1167111 m!4502507))

(assert (=> d!1167111 m!4500873))

(assert (=> b!3935140 m!4500901))

(declare-fun m!4502509 () Bool)

(assert (=> b!3935140 m!4502509))

(assert (=> b!3935140 m!4502509))

(declare-fun m!4502511 () Bool)

(assert (=> b!3935140 m!4502511))

(assert (=> b!3934126 d!1167111))

(declare-fun d!1167113 () Bool)

(assert (=> d!1167113 (= (tail!6082 lt!1374783) (t!325943 lt!1374783))))

(assert (=> b!3934126 d!1167113))

(declare-fun d!1167115 () Bool)

(assert (=> d!1167115 (= (inv!15 (value!206541 (h!47191 suffixTokens!72))) (= (charsToBigInt!0 (text!47720 (value!206541 (h!47191 suffixTokens!72))) 0) (value!206536 (value!206541 (h!47191 suffixTokens!72)))))))

(declare-fun bs!586416 () Bool)

(assert (= bs!586416 d!1167115))

(declare-fun m!4502513 () Bool)

(assert (=> bs!586416 m!4502513))

(assert (=> b!3934195 d!1167115))

(declare-fun d!1167117 () Bool)

(assert (=> d!1167117 (= lt!1374817 prefix!426)))

(assert (=> d!1167117 true))

(declare-fun _$60!804 () Unit!60236)

(assert (=> d!1167117 (= (choose!23438 lt!1374817 prefix!426 lt!1374783) _$60!804)))

(assert (=> d!1166545 d!1167117))

(assert (=> d!1166545 d!1166827))

(declare-fun b!3935142 () Bool)

(declare-fun e!2434532 () Bool)

(declare-fun lt!1375506 () tuple2!41050)

(assert (=> b!3935142 (= e!2434532 (not (isEmpty!24905 (_1!23659 lt!1375506))))))

(declare-fun b!3935143 () Bool)

(declare-fun e!2434531 () tuple2!41050)

(assert (=> b!3935143 (= e!2434531 (tuple2!41051 Nil!41771 (_2!23660 (v!39270 lt!1375010))))))

(declare-fun d!1167119 () Bool)

(declare-fun e!2434533 () Bool)

(assert (=> d!1167119 e!2434533))

(declare-fun c!683768 () Bool)

(assert (=> d!1167119 (= c!683768 (> (size!31341 (_1!23659 lt!1375506)) 0))))

(assert (=> d!1167119 (= lt!1375506 e!2434531)))

(declare-fun c!683769 () Bool)

(declare-fun lt!1375504 () Option!8943)

(assert (=> d!1167119 (= c!683769 (is-Some!8942 lt!1375504))))

(assert (=> d!1167119 (= lt!1375504 (maxPrefix!3416 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375010))))))

(assert (=> d!1167119 (= (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375010))) lt!1375506)))

(declare-fun b!3935144 () Bool)

(declare-fun lt!1375505 () tuple2!41050)

(assert (=> b!3935144 (= e!2434531 (tuple2!41051 (Cons!41771 (_1!23660 (v!39270 lt!1375504)) (_1!23659 lt!1375505)) (_2!23659 lt!1375505)))))

(assert (=> b!3935144 (= lt!1375505 (lexList!1880 thiss!20629 rules!2768 (_2!23660 (v!39270 lt!1375504))))))

(declare-fun b!3935145 () Bool)

(assert (=> b!3935145 (= e!2434533 e!2434532)))

(declare-fun res!1592346 () Bool)

(assert (=> b!3935145 (= res!1592346 (< (size!31338 (_2!23659 lt!1375506)) (size!31338 (_2!23660 (v!39270 lt!1375010)))))))

(assert (=> b!3935145 (=> (not res!1592346) (not e!2434532))))

(declare-fun b!3935146 () Bool)

(assert (=> b!3935146 (= e!2434533 (= (_2!23659 lt!1375506) (_2!23660 (v!39270 lt!1375010))))))

(assert (= (and d!1167119 c!683769) b!3935144))

(assert (= (and d!1167119 (not c!683769)) b!3935143))

(assert (= (and d!1167119 c!683768) b!3935145))

(assert (= (and d!1167119 (not c!683768)) b!3935146))

(assert (= (and b!3935145 res!1592346) b!3935142))

(declare-fun m!4502515 () Bool)

(assert (=> b!3935142 m!4502515))

(declare-fun m!4502517 () Bool)

(assert (=> d!1167119 m!4502517))

(declare-fun m!4502519 () Bool)

(assert (=> d!1167119 m!4502519))

(declare-fun m!4502521 () Bool)

(assert (=> b!3935144 m!4502521))

(declare-fun m!4502523 () Bool)

(assert (=> b!3935145 m!4502523))

(declare-fun m!4502525 () Bool)

(assert (=> b!3935145 m!4502525))

(assert (=> b!3934059 d!1167119))

(declare-fun d!1167121 () Bool)

(declare-fun c!683770 () Bool)

(assert (=> d!1167121 (= c!683770 (is-Nil!41770 lt!1374985))))

(declare-fun e!2434534 () (Set C!23042))

(assert (=> d!1167121 (= (content!6295 lt!1374985) e!2434534)))

(declare-fun b!3935147 () Bool)

(assert (=> b!3935147 (= e!2434534 (as set.empty (Set C!23042)))))

(declare-fun b!3935148 () Bool)

(assert (=> b!3935148 (= e!2434534 (set.union (set.insert (h!47190 lt!1374985) (as set.empty (Set C!23042))) (content!6295 (t!325943 lt!1374985))))))

(assert (= (and d!1167121 c!683770) b!3935147))

(assert (= (and d!1167121 (not c!683770)) b!3935148))

(declare-fun m!4502527 () Bool)

(assert (=> b!3935148 m!4502527))

(declare-fun m!4502529 () Bool)

(assert (=> b!3935148 m!4502529))

(assert (=> d!1166383 d!1167121))

(assert (=> d!1166383 d!1166961))

(declare-fun d!1167123 () Bool)

(declare-fun c!683771 () Bool)

(assert (=> d!1167123 (= c!683771 (is-Nil!41770 lt!1374813))))

(declare-fun e!2434535 () (Set C!23042))

(assert (=> d!1167123 (= (content!6295 lt!1374813) e!2434535)))

(declare-fun b!3935149 () Bool)

(assert (=> b!3935149 (= e!2434535 (as set.empty (Set C!23042)))))

(declare-fun b!3935150 () Bool)

(assert (=> b!3935150 (= e!2434535 (set.union (set.insert (h!47190 lt!1374813) (as set.empty (Set C!23042))) (content!6295 (t!325943 lt!1374813))))))

(assert (= (and d!1167123 c!683771) b!3935149))

(assert (= (and d!1167123 (not c!683771)) b!3935150))

(declare-fun m!4502531 () Bool)

(assert (=> b!3935150 m!4502531))

(assert (=> b!3935150 m!4502243))

(assert (=> d!1166383 d!1167123))

(assert (=> d!1166555 d!1166643))

(assert (=> d!1166555 d!1166455))

(assert (=> d!1166555 d!1166559))

(assert (=> d!1166555 d!1166471))

(declare-fun d!1167125 () Bool)

(assert (=> d!1167125 (= (maxPrefixOneRule!2486 thiss!20629 (rule!9473 (_1!23660 (v!39270 lt!1374800))) lt!1374783) (Some!8942 (tuple2!41053 (Token!12185 (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))) (seqFromList!4790 lt!1374817)) (rule!9473 (_1!23660 (v!39270 lt!1374800))) (size!31338 lt!1374817) lt!1374817) (_2!23660 (v!39270 lt!1374800)))))))

(assert (=> d!1167125 true))

(declare-fun _$59!620 () Unit!60236)

(assert (=> d!1167125 (= (choose!23439 thiss!20629 rules!2768 lt!1374817 lt!1374783 (_2!23660 (v!39270 lt!1374800)) (rule!9473 (_1!23660 (v!39270 lt!1374800)))) _$59!620)))

(declare-fun bs!586417 () Bool)

(assert (= bs!586417 d!1167125))

(assert (=> bs!586417 m!4500373))

(assert (=> bs!586417 m!4500459))

(assert (=> bs!586417 m!4500459))

(assert (=> bs!586417 m!4500461))

(assert (=> bs!586417 m!4500447))

(assert (=> d!1166555 d!1167125))

(assert (=> d!1166555 d!1166453))

(assert (=> d!1166493 d!1166439))

(declare-fun d!1167127 () Bool)

(assert (=> d!1167127 (= (list!15520 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72)))) (list!15522 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72))))))))

(declare-fun bs!586418 () Bool)

(assert (= bs!586418 d!1167127))

(declare-fun m!4502533 () Bool)

(assert (=> bs!586418 m!4502533))

(assert (=> b!3934200 d!1167127))

(declare-fun d!1167129 () Bool)

(declare-fun lt!1375507 () Int)

(assert (=> d!1167129 (>= lt!1375507 0)))

(declare-fun e!2434536 () Int)

(assert (=> d!1167129 (= lt!1375507 e!2434536)))

(declare-fun c!683772 () Bool)

(assert (=> d!1167129 (= c!683772 (is-Nil!41770 (_2!23659 lt!1375166)))))

(assert (=> d!1167129 (= (size!31338 (_2!23659 lt!1375166)) lt!1375507)))

(declare-fun b!3935151 () Bool)

(assert (=> b!3935151 (= e!2434536 0)))

(declare-fun b!3935152 () Bool)

(assert (=> b!3935152 (= e!2434536 (+ 1 (size!31338 (t!325943 (_2!23659 lt!1375166)))))))

(assert (= (and d!1167129 c!683772) b!3935151))

(assert (= (and d!1167129 (not c!683772)) b!3935152))

(declare-fun m!4502535 () Bool)

(assert (=> b!3935152 m!4502535))

(assert (=> b!3934365 d!1167129))

(assert (=> b!3934365 d!1167089))

(declare-fun d!1167131 () Bool)

(assert (=> d!1167131 (= (inv!17 (value!206541 (h!47191 prefixTokens!80))) (= (charsToBigInt!1 (text!47719 (value!206541 (h!47191 prefixTokens!80)))) (value!206533 (value!206541 (h!47191 prefixTokens!80)))))))

(declare-fun bs!586419 () Bool)

(assert (= bs!586419 d!1167131))

(declare-fun m!4502537 () Bool)

(assert (=> bs!586419 m!4502537))

(assert (=> b!3934432 d!1167131))

(declare-fun d!1167133 () Bool)

(declare-fun lt!1375508 () Int)

(assert (=> d!1167133 (>= lt!1375508 0)))

(declare-fun e!2434537 () Int)

(assert (=> d!1167133 (= lt!1375508 e!2434537)))

(declare-fun c!683773 () Bool)

(assert (=> d!1167133 (= c!683773 (is-Nil!41770 (_2!23660 (get!13805 lt!1375154))))))

(assert (=> d!1167133 (= (size!31338 (_2!23660 (get!13805 lt!1375154))) lt!1375508)))

(declare-fun b!3935153 () Bool)

(assert (=> b!3935153 (= e!2434537 0)))

(declare-fun b!3935154 () Bool)

(assert (=> b!3935154 (= e!2434537 (+ 1 (size!31338 (t!325943 (_2!23660 (get!13805 lt!1375154))))))))

(assert (= (and d!1167133 c!683773) b!3935153))

(assert (= (and d!1167133 (not c!683773)) b!3935154))

(declare-fun m!4502539 () Bool)

(assert (=> b!3935154 m!4502539))

(assert (=> b!3934349 d!1167133))

(assert (=> b!3934349 d!1166731))

(assert (=> b!3934349 d!1166551))

(declare-fun d!1167135 () Bool)

(assert (=> d!1167135 (= (isDefined!6953 lt!1375210) (not (isEmpty!24912 lt!1375210)))))

(declare-fun bs!586420 () Bool)

(assert (= bs!586420 d!1167135))

(assert (=> bs!586420 m!4501429))

(assert (=> b!3934430 d!1167135))

(declare-fun d!1167137 () Bool)

(assert (=> d!1167137 (= (isEmpty!24905 (_1!23659 lt!1375060)) (is-Nil!41771 (_1!23659 lt!1375060)))))

(assert (=> b!3934128 d!1167137))

(declare-fun d!1167139 () Bool)

(declare-fun c!683774 () Bool)

(assert (=> d!1167139 (= c!683774 (is-Node!12734 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72))))))))

(declare-fun e!2434538 () Bool)

(assert (=> d!1167139 (= (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72))))) e!2434538)))

(declare-fun b!3935155 () Bool)

(assert (=> b!3935155 (= e!2434538 (inv!55977 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72))))))))

(declare-fun b!3935156 () Bool)

(declare-fun e!2434539 () Bool)

(assert (=> b!3935156 (= e!2434538 e!2434539)))

(declare-fun res!1592347 () Bool)

(assert (=> b!3935156 (= res!1592347 (not (is-Leaf!19703 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72)))))))))

(assert (=> b!3935156 (=> res!1592347 e!2434539)))

(declare-fun b!3935157 () Bool)

(assert (=> b!3935157 (= e!2434539 (inv!55978 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72))))))))

(assert (= (and d!1167139 c!683774) b!3935155))

(assert (= (and d!1167139 (not c!683774)) b!3935156))

(assert (= (and b!3935156 (not res!1592347)) b!3935157))

(declare-fun m!4502541 () Bool)

(assert (=> b!3935155 m!4502541))

(declare-fun m!4502543 () Bool)

(assert (=> b!3935157 m!4502543))

(assert (=> b!3934202 d!1167139))

(declare-fun b!3935158 () Bool)

(declare-fun res!1592350 () Bool)

(declare-fun e!2434545 () Bool)

(assert (=> b!3935158 (=> res!1592350 e!2434545)))

(assert (=> b!3935158 (= res!1592350 (not (isEmpty!24907 (tail!6082 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))))))))

(declare-fun b!3935159 () Bool)

(assert (=> b!3935159 (= e!2434545 (not (= (head!8357 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))) (c!683464 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210))))))))))

(declare-fun b!3935160 () Bool)

(declare-fun res!1592354 () Bool)

(declare-fun e!2434541 () Bool)

(assert (=> b!3935160 (=> res!1592354 e!2434541)))

(declare-fun e!2434544 () Bool)

(assert (=> b!3935160 (= res!1592354 e!2434544)))

(declare-fun res!1592348 () Bool)

(assert (=> b!3935160 (=> (not res!1592348) (not e!2434544))))

(declare-fun lt!1375509 () Bool)

(assert (=> b!3935160 (= res!1592348 lt!1375509)))

(declare-fun b!3935161 () Bool)

(declare-fun e!2434542 () Bool)

(assert (=> b!3935161 (= e!2434542 e!2434545)))

(declare-fun res!1592352 () Bool)

(assert (=> b!3935161 (=> res!1592352 e!2434545)))

(declare-fun call!284939 () Bool)

(assert (=> b!3935161 (= res!1592352 call!284939)))

(declare-fun b!3935162 () Bool)

(declare-fun e!2434543 () Bool)

(declare-fun e!2434546 () Bool)

(assert (=> b!3935162 (= e!2434543 e!2434546)))

(declare-fun c!683775 () Bool)

(assert (=> b!3935162 (= c!683775 (is-EmptyLang!11428 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210))))))))

(declare-fun b!3935163 () Bool)

(declare-fun e!2434540 () Bool)

(assert (=> b!3935163 (= e!2434540 (nullable!4005 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210))))))))

(declare-fun b!3935165 () Bool)

(declare-fun res!1592351 () Bool)

(assert (=> b!3935165 (=> (not res!1592351) (not e!2434544))))

(assert (=> b!3935165 (= res!1592351 (isEmpty!24907 (tail!6082 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210)))))))))

(declare-fun b!3935166 () Bool)

(assert (=> b!3935166 (= e!2434546 (not lt!1375509))))

(declare-fun b!3935167 () Bool)

(assert (=> b!3935167 (= e!2434540 (matchR!5486 (derivativeStep!3453 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))) (head!8357 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210)))))) (tail!6082 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210)))))))))

(declare-fun b!3935168 () Bool)

(declare-fun res!1592353 () Bool)

(assert (=> b!3935168 (=> res!1592353 e!2434541)))

(assert (=> b!3935168 (= res!1592353 (not (is-ElementMatch!11428 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))))))

(assert (=> b!3935168 (= e!2434546 e!2434541)))

(declare-fun b!3935169 () Bool)

(assert (=> b!3935169 (= e!2434543 (= lt!1375509 call!284939))))

(declare-fun b!3935170 () Bool)

(declare-fun res!1592355 () Bool)

(assert (=> b!3935170 (=> (not res!1592355) (not e!2434544))))

(assert (=> b!3935170 (= res!1592355 (not call!284939))))

(declare-fun bm!284934 () Bool)

(assert (=> bm!284934 (= call!284939 (isEmpty!24907 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))))))

(declare-fun b!3935171 () Bool)

(assert (=> b!3935171 (= e!2434541 e!2434542)))

(declare-fun res!1592349 () Bool)

(assert (=> b!3935171 (=> (not res!1592349) (not e!2434542))))

(assert (=> b!3935171 (= res!1592349 (not lt!1375509))))

(declare-fun d!1167141 () Bool)

(assert (=> d!1167141 e!2434543))

(declare-fun c!683777 () Bool)

(assert (=> d!1167141 (= c!683777 (is-EmptyExpr!11428 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210))))))))

(assert (=> d!1167141 (= lt!1375509 e!2434540)))

(declare-fun c!683776 () Bool)

(assert (=> d!1167141 (= c!683776 (isEmpty!24907 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))))))

(assert (=> d!1167141 (validRegex!5204 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))))

(assert (=> d!1167141 (= (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))) (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))) lt!1375509)))

(declare-fun b!3935164 () Bool)

(assert (=> b!3935164 (= e!2434544 (= (head!8357 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375210))))) (c!683464 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))))))

(assert (= (and d!1167141 c!683776) b!3935163))

(assert (= (and d!1167141 (not c!683776)) b!3935167))

(assert (= (and d!1167141 c!683777) b!3935169))

(assert (= (and d!1167141 (not c!683777)) b!3935162))

(assert (= (and b!3935162 c!683775) b!3935166))

(assert (= (and b!3935162 (not c!683775)) b!3935168))

(assert (= (and b!3935168 (not res!1592353)) b!3935160))

(assert (= (and b!3935160 res!1592348) b!3935170))

(assert (= (and b!3935170 res!1592355) b!3935165))

(assert (= (and b!3935165 res!1592351) b!3935164))

(assert (= (and b!3935160 (not res!1592354)) b!3935171))

(assert (= (and b!3935171 res!1592349) b!3935161))

(assert (= (and b!3935161 (not res!1592352)) b!3935158))

(assert (= (and b!3935158 (not res!1592350)) b!3935159))

(assert (= (or b!3935169 b!3935161 b!3935170) bm!284934))

(assert (=> b!3935167 m!4501419))

(declare-fun m!4502545 () Bool)

(assert (=> b!3935167 m!4502545))

(assert (=> b!3935167 m!4502545))

(declare-fun m!4502547 () Bool)

(assert (=> b!3935167 m!4502547))

(assert (=> b!3935167 m!4501419))

(declare-fun m!4502549 () Bool)

(assert (=> b!3935167 m!4502549))

(assert (=> b!3935167 m!4502547))

(assert (=> b!3935167 m!4502549))

(declare-fun m!4502551 () Bool)

(assert (=> b!3935167 m!4502551))

(assert (=> b!3935164 m!4501419))

(assert (=> b!3935164 m!4502545))

(assert (=> b!3935158 m!4501419))

(assert (=> b!3935158 m!4502549))

(assert (=> b!3935158 m!4502549))

(declare-fun m!4502553 () Bool)

(assert (=> b!3935158 m!4502553))

(declare-fun m!4502555 () Bool)

(assert (=> b!3935163 m!4502555))

(assert (=> b!3935159 m!4501419))

(assert (=> b!3935159 m!4502545))

(assert (=> d!1167141 m!4501419))

(declare-fun m!4502557 () Bool)

(assert (=> d!1167141 m!4502557))

(declare-fun m!4502559 () Bool)

(assert (=> d!1167141 m!4502559))

(assert (=> bm!284934 m!4501419))

(assert (=> bm!284934 m!4502557))

(assert (=> b!3935165 m!4501419))

(assert (=> b!3935165 m!4502549))

(assert (=> b!3935165 m!4502549))

(assert (=> b!3935165 m!4502553))

(assert (=> b!3934422 d!1167141))

(assert (=> b!3934422 d!1166739))

(assert (=> b!3934422 d!1166781))

(assert (=> b!3934422 d!1166783))

(declare-fun d!1167143 () Bool)

(declare-fun lt!1375510 () Int)

(assert (=> d!1167143 (>= lt!1375510 0)))

(declare-fun e!2434547 () Int)

(assert (=> d!1167143 (= lt!1375510 e!2434547)))

(declare-fun c!683778 () Bool)

(assert (=> d!1167143 (= c!683778 (is-Nil!41771 (_1!23659 lt!1375012)))))

(assert (=> d!1167143 (= (size!31341 (_1!23659 lt!1375012)) lt!1375510)))

(declare-fun b!3935172 () Bool)

(assert (=> b!3935172 (= e!2434547 0)))

(declare-fun b!3935173 () Bool)

(assert (=> b!3935173 (= e!2434547 (+ 1 (size!31341 (t!325944 (_1!23659 lt!1375012)))))))

(assert (= (and d!1167143 c!683778) b!3935172))

(assert (= (and d!1167143 (not c!683778)) b!3935173))

(declare-fun m!4502561 () Bool)

(assert (=> b!3935173 m!4502561))

(assert (=> d!1166411 d!1167143))

(declare-fun d!1167145 () Bool)

(declare-fun e!2434549 () Bool)

(assert (=> d!1167145 e!2434549))

(declare-fun res!1592360 () Bool)

(assert (=> d!1167145 (=> res!1592360 e!2434549)))

(declare-fun lt!1375512 () Option!8943)

(assert (=> d!1167145 (= res!1592360 (isEmpty!24912 lt!1375512))))

(declare-fun e!2434550 () Option!8943)

(assert (=> d!1167145 (= lt!1375512 e!2434550)))

(declare-fun c!683779 () Bool)

(assert (=> d!1167145 (= c!683779 (and (is-Cons!41772 rules!2768) (is-Nil!41772 (t!325945 rules!2768))))))

(declare-fun lt!1375513 () Unit!60236)

(declare-fun lt!1375515 () Unit!60236)

(assert (=> d!1167145 (= lt!1375513 lt!1375515)))

(assert (=> d!1167145 (isPrefix!3618 (_2!23660 lt!1374780) (_2!23660 lt!1374780))))

(assert (=> d!1167145 (= lt!1375515 (lemmaIsPrefixRefl!2284 (_2!23660 lt!1374780) (_2!23660 lt!1374780)))))

(assert (=> d!1167145 (rulesValidInductive!2354 thiss!20629 rules!2768)))

(assert (=> d!1167145 (= (maxPrefix!3416 thiss!20629 rules!2768 (_2!23660 lt!1374780)) lt!1375512)))

(declare-fun b!3935174 () Bool)

(declare-fun res!1592356 () Bool)

(declare-fun e!2434548 () Bool)

(assert (=> b!3935174 (=> (not res!1592356) (not e!2434548))))

(assert (=> b!3935174 (= res!1592356 (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375512)))) (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375512))))))))

(declare-fun b!3935175 () Bool)

(declare-fun lt!1375511 () Option!8943)

(declare-fun lt!1375514 () Option!8943)

(assert (=> b!3935175 (= e!2434550 (ite (and (is-None!8942 lt!1375511) (is-None!8942 lt!1375514)) None!8942 (ite (is-None!8942 lt!1375514) lt!1375511 (ite (is-None!8942 lt!1375511) lt!1375514 (ite (>= (size!31337 (_1!23660 (v!39270 lt!1375511))) (size!31337 (_1!23660 (v!39270 lt!1375514)))) lt!1375511 lt!1375514)))))))

(declare-fun call!284940 () Option!8943)

(assert (=> b!3935175 (= lt!1375511 call!284940)))

(assert (=> b!3935175 (= lt!1375514 (maxPrefix!3416 thiss!20629 (t!325945 rules!2768) (_2!23660 lt!1374780)))))

(declare-fun b!3935176 () Bool)

(declare-fun res!1592358 () Bool)

(assert (=> b!3935176 (=> (not res!1592358) (not e!2434548))))

(assert (=> b!3935176 (= res!1592358 (= (value!206541 (_1!23660 (get!13805 lt!1375512))) (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375512)))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375512)))))))))

(declare-fun bm!284935 () Bool)

(assert (=> bm!284935 (= call!284940 (maxPrefixOneRule!2486 thiss!20629 (h!47192 rules!2768) (_2!23660 lt!1374780)))))

(declare-fun b!3935177 () Bool)

(assert (=> b!3935177 (= e!2434550 call!284940)))

(declare-fun b!3935178 () Bool)

(declare-fun res!1592359 () Bool)

(assert (=> b!3935178 (=> (not res!1592359) (not e!2434548))))

(assert (=> b!3935178 (= res!1592359 (= (++!10804 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375512)))) (_2!23660 (get!13805 lt!1375512))) (_2!23660 lt!1374780)))))

(declare-fun b!3935179 () Bool)

(assert (=> b!3935179 (= e!2434548 (contains!8369 rules!2768 (rule!9473 (_1!23660 (get!13805 lt!1375512)))))))

(declare-fun b!3935180 () Bool)

(declare-fun res!1592361 () Bool)

(assert (=> b!3935180 (=> (not res!1592361) (not e!2434548))))

(assert (=> b!3935180 (= res!1592361 (< (size!31338 (_2!23660 (get!13805 lt!1375512))) (size!31338 (_2!23660 lt!1374780))))))

(declare-fun b!3935181 () Bool)

(declare-fun res!1592357 () Bool)

(assert (=> b!3935181 (=> (not res!1592357) (not e!2434548))))

(assert (=> b!3935181 (= res!1592357 (= (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375512)))) (originalCharacters!7123 (_1!23660 (get!13805 lt!1375512)))))))

(declare-fun b!3935182 () Bool)

(assert (=> b!3935182 (= e!2434549 e!2434548)))

(declare-fun res!1592362 () Bool)

(assert (=> b!3935182 (=> (not res!1592362) (not e!2434548))))

(assert (=> b!3935182 (= res!1592362 (isDefined!6953 lt!1375512))))

(assert (= (and d!1167145 c!683779) b!3935177))

(assert (= (and d!1167145 (not c!683779)) b!3935175))

(assert (= (or b!3935177 b!3935175) bm!284935))

(assert (= (and d!1167145 (not res!1592360)) b!3935182))

(assert (= (and b!3935182 res!1592362) b!3935181))

(assert (= (and b!3935181 res!1592357) b!3935180))

(assert (= (and b!3935180 res!1592361) b!3935178))

(assert (= (and b!3935178 res!1592359) b!3935176))

(assert (= (and b!3935176 res!1592358) b!3935174))

(assert (= (and b!3935174 res!1592356) b!3935179))

(declare-fun m!4502563 () Bool)

(assert (=> b!3935178 m!4502563))

(declare-fun m!4502565 () Bool)

(assert (=> b!3935178 m!4502565))

(assert (=> b!3935178 m!4502565))

(declare-fun m!4502567 () Bool)

(assert (=> b!3935178 m!4502567))

(assert (=> b!3935178 m!4502567))

(declare-fun m!4502569 () Bool)

(assert (=> b!3935178 m!4502569))

(declare-fun m!4502571 () Bool)

(assert (=> bm!284935 m!4502571))

(assert (=> b!3935174 m!4502563))

(assert (=> b!3935174 m!4502565))

(assert (=> b!3935174 m!4502565))

(assert (=> b!3935174 m!4502567))

(assert (=> b!3935174 m!4502567))

(declare-fun m!4502573 () Bool)

(assert (=> b!3935174 m!4502573))

(assert (=> b!3935179 m!4502563))

(declare-fun m!4502575 () Bool)

(assert (=> b!3935179 m!4502575))

(declare-fun m!4502577 () Bool)

(assert (=> d!1167145 m!4502577))

(declare-fun m!4502579 () Bool)

(assert (=> d!1167145 m!4502579))

(declare-fun m!4502581 () Bool)

(assert (=> d!1167145 m!4502581))

(assert (=> d!1167145 m!4501435))

(assert (=> b!3935181 m!4502563))

(assert (=> b!3935181 m!4502565))

(assert (=> b!3935181 m!4502565))

(assert (=> b!3935181 m!4502567))

(assert (=> b!3935180 m!4502563))

(declare-fun m!4502583 () Bool)

(assert (=> b!3935180 m!4502583))

(assert (=> b!3935180 m!4500375))

(declare-fun m!4502585 () Bool)

(assert (=> b!3935175 m!4502585))

(assert (=> b!3935176 m!4502563))

(declare-fun m!4502587 () Bool)

(assert (=> b!3935176 m!4502587))

(assert (=> b!3935176 m!4502587))

(declare-fun m!4502589 () Bool)

(assert (=> b!3935176 m!4502589))

(declare-fun m!4502591 () Bool)

(assert (=> b!3935182 m!4502591))

(assert (=> d!1166411 d!1167145))

(declare-fun d!1167147 () Bool)

(declare-fun c!683780 () Bool)

(assert (=> d!1167147 (= c!683780 (is-Nil!41770 lt!1375015))))

(declare-fun e!2434551 () (Set C!23042))

(assert (=> d!1167147 (= (content!6295 lt!1375015) e!2434551)))

(declare-fun b!3935183 () Bool)

(assert (=> b!3935183 (= e!2434551 (as set.empty (Set C!23042)))))

(declare-fun b!3935184 () Bool)

(assert (=> b!3935184 (= e!2434551 (set.union (set.insert (h!47190 lt!1375015) (as set.empty (Set C!23042))) (content!6295 (t!325943 lt!1375015))))))

(assert (= (and d!1167147 c!683780) b!3935183))

(assert (= (and d!1167147 (not c!683780)) b!3935184))

(declare-fun m!4502593 () Bool)

(assert (=> b!3935184 m!4502593))

(declare-fun m!4502595 () Bool)

(assert (=> b!3935184 m!4502595))

(assert (=> d!1166419 d!1167147))

(assert (=> d!1166419 d!1167123))

(assert (=> d!1166419 d!1166751))

(assert (=> b!3934344 d!1166731))

(assert (=> b!3934210 d!1166891))

(assert (=> b!3934210 d!1167089))

(declare-fun bs!586421 () Bool)

(declare-fun d!1167149 () Bool)

(assert (= bs!586421 (and d!1167149 d!1166753)))

(declare-fun lambda!126610 () Int)

(assert (=> bs!586421 (= (= (toValue!8979 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) (= lambda!126610 lambda!126597))))

(declare-fun bs!586422 () Bool)

(assert (= bs!586422 (and d!1167149 d!1166785)))

(assert (=> bs!586422 (= (= (toValue!8979 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) (= lambda!126610 lambda!126599))))

(assert (=> d!1167149 true))

(assert (=> d!1167149 (< (dynLambda!17901 order!22307 (toValue!8979 (transformation!6523 (h!47192 rules!2768)))) (dynLambda!17902 order!22309 lambda!126610))))

(assert (=> d!1167149 (= (equivClasses!2703 (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (h!47192 rules!2768)))) (Forall2!1049 lambda!126610))))

(declare-fun bs!586423 () Bool)

(assert (= bs!586423 d!1167149))

(declare-fun m!4502597 () Bool)

(assert (=> bs!586423 m!4502597))

(assert (=> b!3934211 d!1167149))

(declare-fun d!1167151 () Bool)

(assert (=> d!1167151 (= (list!15520 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80)))) (list!15522 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80))))))))

(declare-fun bs!586424 () Bool)

(assert (= bs!586424 d!1167151))

(declare-fun m!4502599 () Bool)

(assert (=> bs!586424 m!4502599))

(assert (=> b!3934355 d!1167151))

(declare-fun d!1167153 () Bool)

(declare-fun res!1592363 () Bool)

(declare-fun e!2434552 () Bool)

(assert (=> d!1167153 (=> (not res!1592363) (not e!2434552))))

(assert (=> d!1167153 (= res!1592363 (not (isEmpty!24907 (originalCharacters!7123 (h!47191 (t!325944 suffixTokens!72))))))))

(assert (=> d!1167153 (= (inv!55969 (h!47191 (t!325944 suffixTokens!72))) e!2434552)))

(declare-fun b!3935185 () Bool)

(declare-fun res!1592364 () Bool)

(assert (=> b!3935185 (=> (not res!1592364) (not e!2434552))))

(assert (=> b!3935185 (= res!1592364 (= (originalCharacters!7123 (h!47191 (t!325944 suffixTokens!72))) (list!15520 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (value!206541 (h!47191 (t!325944 suffixTokens!72)))))))))

(declare-fun b!3935186 () Bool)

(assert (=> b!3935186 (= e!2434552 (= (size!31337 (h!47191 (t!325944 suffixTokens!72))) (size!31338 (originalCharacters!7123 (h!47191 (t!325944 suffixTokens!72))))))))

(assert (= (and d!1167153 res!1592363) b!3935185))

(assert (= (and b!3935185 res!1592364) b!3935186))

(declare-fun b_lambda!115107 () Bool)

(assert (=> (not b_lambda!115107) (not b!3935185)))

(declare-fun tb!235505 () Bool)

(declare-fun t!326134 () Bool)

(assert (=> (and b!3933750 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) t!326134) tb!235505))

(declare-fun b!3935187 () Bool)

(declare-fun e!2434553 () Bool)

(declare-fun tp!1197519 () Bool)

(assert (=> b!3935187 (= e!2434553 (and (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (value!206541 (h!47191 (t!325944 suffixTokens!72)))))) tp!1197519))))

(declare-fun result!285326 () Bool)

(assert (=> tb!235505 (= result!285326 (and (inv!55976 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (value!206541 (h!47191 (t!325944 suffixTokens!72))))) e!2434553))))

(assert (= tb!235505 b!3935187))

(declare-fun m!4502601 () Bool)

(assert (=> b!3935187 m!4502601))

(declare-fun m!4502603 () Bool)

(assert (=> tb!235505 m!4502603))

(assert (=> b!3935185 t!326134))

(declare-fun b_and!300467 () Bool)

(assert (= b_and!300435 (and (=> t!326134 result!285326) b_and!300467)))

(declare-fun tb!235507 () Bool)

(declare-fun t!326136 () Bool)

(assert (=> (and b!3934496 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) t!326136) tb!235507))

(declare-fun result!285328 () Bool)

(assert (= result!285328 result!285326))

(assert (=> b!3935185 t!326136))

(declare-fun b_and!300469 () Bool)

(assert (= b_and!300431 (and (=> t!326136 result!285328) b_and!300469)))

(declare-fun tb!235509 () Bool)

(declare-fun t!326138 () Bool)

(assert (=> (and b!3933775 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) t!326138) tb!235509))

(declare-fun result!285330 () Bool)

(assert (= result!285330 result!285326))

(assert (=> b!3935185 t!326138))

(declare-fun b_and!300471 () Bool)

(assert (= b_and!300441 (and (=> t!326138 result!285330) b_and!300471)))

(declare-fun t!326140 () Bool)

(declare-fun tb!235511 () Bool)

(assert (=> (and b!3934466 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) t!326140) tb!235511))

(declare-fun result!285332 () Bool)

(assert (= result!285332 result!285326))

(assert (=> b!3935185 t!326140))

(declare-fun b_and!300473 () Bool)

(assert (= b_and!300433 (and (=> t!326140 result!285332) b_and!300473)))

(declare-fun t!326142 () Bool)

(declare-fun tb!235513 () Bool)

(assert (=> (and b!3934446 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) t!326142) tb!235513))

(declare-fun result!285334 () Bool)

(assert (= result!285334 result!285326))

(assert (=> b!3935185 t!326142))

(declare-fun b_and!300475 () Bool)

(assert (= b_and!300439 (and (=> t!326142 result!285334) b_and!300475)))

(declare-fun t!326144 () Bool)

(declare-fun tb!235515 () Bool)

(assert (=> (and b!3933781 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) t!326144) tb!235515))

(declare-fun result!285336 () Bool)

(assert (= result!285336 result!285326))

(assert (=> b!3935185 t!326144))

(declare-fun b_and!300477 () Bool)

(assert (= b_and!300437 (and (=> t!326144 result!285336) b_and!300477)))

(declare-fun m!4502605 () Bool)

(assert (=> d!1167153 m!4502605))

(declare-fun m!4502607 () Bool)

(assert (=> b!3935185 m!4502607))

(assert (=> b!3935185 m!4502607))

(declare-fun m!4502609 () Bool)

(assert (=> b!3935185 m!4502609))

(declare-fun m!4502611 () Bool)

(assert (=> b!3935186 m!4502611))

(assert (=> b!3934463 d!1167153))

(declare-fun b!3935206 () Bool)

(declare-fun e!2434569 () Bool)

(declare-fun e!2434570 () Bool)

(assert (=> b!3935206 (= e!2434569 e!2434570)))

(declare-fun c!683786 () Bool)

(assert (=> b!3935206 (= c!683786 (is-Union!11428 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(declare-fun b!3935207 () Bool)

(declare-fun e!2434572 () Bool)

(declare-fun call!284949 () Bool)

(assert (=> b!3935207 (= e!2434572 call!284949)))

(declare-fun bm!284942 () Bool)

(declare-fun call!284948 () Bool)

(declare-fun call!284947 () Bool)

(assert (=> bm!284942 (= call!284948 call!284947)))

(declare-fun b!3935208 () Bool)

(declare-fun e!2434568 () Bool)

(assert (=> b!3935208 (= e!2434569 e!2434568)))

(declare-fun res!1592376 () Bool)

(assert (=> b!3935208 (= res!1592376 (not (nullable!4005 (reg!11757 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))))

(assert (=> b!3935208 (=> (not res!1592376) (not e!2434568))))

(declare-fun bm!284943 () Bool)

(assert (=> bm!284943 (= call!284949 (validRegex!5204 (ite c!683786 (regTwo!23369 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (regOne!23368 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))))

(declare-fun b!3935209 () Bool)

(declare-fun res!1592377 () Bool)

(assert (=> b!3935209 (=> (not res!1592377) (not e!2434572))))

(assert (=> b!3935209 (= res!1592377 call!284948)))

(assert (=> b!3935209 (= e!2434570 e!2434572)))

(declare-fun d!1167155 () Bool)

(declare-fun res!1592378 () Bool)

(declare-fun e!2434571 () Bool)

(assert (=> d!1167155 (=> res!1592378 e!2434571)))

(assert (=> d!1167155 (= res!1592378 (is-ElementMatch!11428 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(assert (=> d!1167155 (= (validRegex!5204 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) e!2434571)))

(declare-fun b!3935210 () Bool)

(declare-fun e!2434573 () Bool)

(assert (=> b!3935210 (= e!2434573 call!284948)))

(declare-fun b!3935211 () Bool)

(declare-fun e!2434574 () Bool)

(assert (=> b!3935211 (= e!2434574 e!2434573)))

(declare-fun res!1592375 () Bool)

(assert (=> b!3935211 (=> (not res!1592375) (not e!2434573))))

(assert (=> b!3935211 (= res!1592375 call!284949)))

(declare-fun b!3935212 () Bool)

(declare-fun res!1592379 () Bool)

(assert (=> b!3935212 (=> res!1592379 e!2434574)))

(assert (=> b!3935212 (= res!1592379 (not (is-Concat!18182 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))))

(assert (=> b!3935212 (= e!2434570 e!2434574)))

(declare-fun c!683785 () Bool)

(declare-fun bm!284944 () Bool)

(assert (=> bm!284944 (= call!284947 (validRegex!5204 (ite c!683785 (reg!11757 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (ite c!683786 (regOne!23369 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (regTwo!23368 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))))))))

(declare-fun b!3935213 () Bool)

(assert (=> b!3935213 (= e!2434568 call!284947)))

(declare-fun b!3935214 () Bool)

(assert (=> b!3935214 (= e!2434571 e!2434569)))

(assert (=> b!3935214 (= c!683785 (is-Star!11428 (regex!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))))

(assert (= (and d!1167155 (not res!1592378)) b!3935214))

(assert (= (and b!3935214 c!683785) b!3935208))

(assert (= (and b!3935214 (not c!683785)) b!3935206))

(assert (= (and b!3935208 res!1592376) b!3935213))

(assert (= (and b!3935206 c!683786) b!3935209))

(assert (= (and b!3935206 (not c!683786)) b!3935212))

(assert (= (and b!3935209 res!1592377) b!3935207))

(assert (= (and b!3935212 (not res!1592379)) b!3935211))

(assert (= (and b!3935211 res!1592375) b!3935210))

(assert (= (or b!3935207 b!3935211) bm!284943))

(assert (= (or b!3935209 b!3935210) bm!284942))

(assert (= (or b!3935213 bm!284942) bm!284944))

(declare-fun m!4502613 () Bool)

(assert (=> b!3935208 m!4502613))

(declare-fun m!4502615 () Bool)

(assert (=> bm!284943 m!4502615))

(declare-fun m!4502617 () Bool)

(assert (=> bm!284944 m!4502617))

(assert (=> d!1166477 d!1167155))

(declare-fun d!1167157 () Bool)

(assert (=> d!1167157 (= (isEmpty!24907 (originalCharacters!7123 (h!47191 prefixTokens!80))) (is-Nil!41770 (originalCharacters!7123 (h!47191 prefixTokens!80))))))

(assert (=> d!1166607 d!1167157))

(declare-fun d!1167159 () Bool)

(declare-fun e!2434575 () Bool)

(assert (=> d!1167159 e!2434575))

(declare-fun res!1592380 () Bool)

(assert (=> d!1167159 (=> (not res!1592380) (not e!2434575))))

(declare-fun lt!1375516 () List!41895)

(assert (=> d!1167159 (= res!1592380 (= (content!6296 lt!1375516) (set.union (content!6296 (t!325944 lt!1374793)) (content!6296 suffixTokens!72))))))

(declare-fun e!2434576 () List!41895)

(assert (=> d!1167159 (= lt!1375516 e!2434576)))

(declare-fun c!683787 () Bool)

(assert (=> d!1167159 (= c!683787 (is-Nil!41771 (t!325944 lt!1374793)))))

(assert (=> d!1167159 (= (++!10803 (t!325944 lt!1374793) suffixTokens!72) lt!1375516)))

(declare-fun b!3935218 () Bool)

(assert (=> b!3935218 (= e!2434575 (or (not (= suffixTokens!72 Nil!41771)) (= lt!1375516 (t!325944 lt!1374793))))))

(declare-fun b!3935217 () Bool)

(declare-fun res!1592381 () Bool)

(assert (=> b!3935217 (=> (not res!1592381) (not e!2434575))))

(assert (=> b!3935217 (= res!1592381 (= (size!31341 lt!1375516) (+ (size!31341 (t!325944 lt!1374793)) (size!31341 suffixTokens!72))))))

(declare-fun b!3935215 () Bool)

(assert (=> b!3935215 (= e!2434576 suffixTokens!72)))

(declare-fun b!3935216 () Bool)

(assert (=> b!3935216 (= e!2434576 (Cons!41771 (h!47191 (t!325944 lt!1374793)) (++!10803 (t!325944 (t!325944 lt!1374793)) suffixTokens!72)))))

(assert (= (and d!1167159 c!683787) b!3935215))

(assert (= (and d!1167159 (not c!683787)) b!3935216))

(assert (= (and d!1167159 res!1592380) b!3935217))

(assert (= (and b!3935217 res!1592381) b!3935218))

(declare-fun m!4502619 () Bool)

(assert (=> d!1167159 m!4502619))

(assert (=> d!1167159 m!4502487))

(assert (=> d!1167159 m!4500721))

(declare-fun m!4502621 () Bool)

(assert (=> b!3935217 m!4502621))

(assert (=> b!3935217 m!4501827))

(assert (=> b!3935217 m!4500727))

(declare-fun m!4502623 () Bool)

(assert (=> b!3935216 m!4502623))

(assert (=> b!3934174 d!1167159))

(declare-fun d!1167161 () Bool)

(assert (=> d!1167161 (= (isEmpty!24905 (_1!23659 lt!1375095)) (is-Nil!41771 (_1!23659 lt!1375095)))))

(assert (=> b!3934216 d!1167161))

(declare-fun d!1167163 () Bool)

(declare-fun lt!1375517 () Int)

(assert (=> d!1167163 (>= lt!1375517 0)))

(declare-fun e!2434577 () Int)

(assert (=> d!1167163 (= lt!1375517 e!2434577)))

(declare-fun c!683788 () Bool)

(assert (=> d!1167163 (= c!683788 (is-Nil!41771 (_1!23659 lt!1375166)))))

(assert (=> d!1167163 (= (size!31341 (_1!23659 lt!1375166)) lt!1375517)))

(declare-fun b!3935219 () Bool)

(assert (=> b!3935219 (= e!2434577 0)))

(declare-fun b!3935220 () Bool)

(assert (=> b!3935220 (= e!2434577 (+ 1 (size!31341 (t!325944 (_1!23659 lt!1375166)))))))

(assert (= (and d!1167163 c!683788) b!3935219))

(assert (= (and d!1167163 (not c!683788)) b!3935220))

(declare-fun m!4502625 () Bool)

(assert (=> b!3935220 m!4502625))

(assert (=> d!1166615 d!1167163))

(declare-fun d!1167165 () Bool)

(declare-fun e!2434579 () Bool)

(assert (=> d!1167165 e!2434579))

(declare-fun res!1592386 () Bool)

(assert (=> d!1167165 (=> res!1592386 e!2434579)))

(declare-fun lt!1375519 () Option!8943)

(assert (=> d!1167165 (= res!1592386 (isEmpty!24912 lt!1375519))))

(declare-fun e!2434580 () Option!8943)

(assert (=> d!1167165 (= lt!1375519 e!2434580)))

(declare-fun c!683789 () Bool)

(assert (=> d!1167165 (= c!683789 (and (is-Cons!41772 rules!2768) (is-Nil!41772 (t!325945 rules!2768))))))

(declare-fun lt!1375520 () Unit!60236)

(declare-fun lt!1375522 () Unit!60236)

(assert (=> d!1167165 (= lt!1375520 lt!1375522)))

(assert (=> d!1167165 (isPrefix!3618 lt!1374813 lt!1374813)))

(assert (=> d!1167165 (= lt!1375522 (lemmaIsPrefixRefl!2284 lt!1374813 lt!1374813))))

(assert (=> d!1167165 (rulesValidInductive!2354 thiss!20629 rules!2768)))

(assert (=> d!1167165 (= (maxPrefix!3416 thiss!20629 rules!2768 lt!1374813) lt!1375519)))

(declare-fun b!3935221 () Bool)

(declare-fun res!1592382 () Bool)

(declare-fun e!2434578 () Bool)

(assert (=> b!3935221 (=> (not res!1592382) (not e!2434578))))

(assert (=> b!3935221 (= res!1592382 (matchR!5486 (regex!6523 (rule!9473 (_1!23660 (get!13805 lt!1375519)))) (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375519))))))))

(declare-fun b!3935222 () Bool)

(declare-fun lt!1375518 () Option!8943)

(declare-fun lt!1375521 () Option!8943)

(assert (=> b!3935222 (= e!2434580 (ite (and (is-None!8942 lt!1375518) (is-None!8942 lt!1375521)) None!8942 (ite (is-None!8942 lt!1375521) lt!1375518 (ite (is-None!8942 lt!1375518) lt!1375521 (ite (>= (size!31337 (_1!23660 (v!39270 lt!1375518))) (size!31337 (_1!23660 (v!39270 lt!1375521)))) lt!1375518 lt!1375521)))))))

(declare-fun call!284950 () Option!8943)

(assert (=> b!3935222 (= lt!1375518 call!284950)))

(assert (=> b!3935222 (= lt!1375521 (maxPrefix!3416 thiss!20629 (t!325945 rules!2768) lt!1374813))))

(declare-fun b!3935223 () Bool)

(declare-fun res!1592384 () Bool)

(assert (=> b!3935223 (=> (not res!1592384) (not e!2434578))))

(assert (=> b!3935223 (= res!1592384 (= (value!206541 (_1!23660 (get!13805 lt!1375519))) (apply!9762 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375519)))) (seqFromList!4790 (originalCharacters!7123 (_1!23660 (get!13805 lt!1375519)))))))))

(declare-fun bm!284945 () Bool)

(assert (=> bm!284945 (= call!284950 (maxPrefixOneRule!2486 thiss!20629 (h!47192 rules!2768) lt!1374813))))

(declare-fun b!3935224 () Bool)

(assert (=> b!3935224 (= e!2434580 call!284950)))

(declare-fun b!3935225 () Bool)

(declare-fun res!1592385 () Bool)

(assert (=> b!3935225 (=> (not res!1592385) (not e!2434578))))

(assert (=> b!3935225 (= res!1592385 (= (++!10804 (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375519)))) (_2!23660 (get!13805 lt!1375519))) lt!1374813))))

(declare-fun b!3935226 () Bool)

(assert (=> b!3935226 (= e!2434578 (contains!8369 rules!2768 (rule!9473 (_1!23660 (get!13805 lt!1375519)))))))

(declare-fun b!3935227 () Bool)

(declare-fun res!1592387 () Bool)

(assert (=> b!3935227 (=> (not res!1592387) (not e!2434578))))

(assert (=> b!3935227 (= res!1592387 (< (size!31338 (_2!23660 (get!13805 lt!1375519))) (size!31338 lt!1374813)))))

(declare-fun b!3935228 () Bool)

(declare-fun res!1592383 () Bool)

(assert (=> b!3935228 (=> (not res!1592383) (not e!2434578))))

(assert (=> b!3935228 (= res!1592383 (= (list!15520 (charsOf!4347 (_1!23660 (get!13805 lt!1375519)))) (originalCharacters!7123 (_1!23660 (get!13805 lt!1375519)))))))

(declare-fun b!3935229 () Bool)

(assert (=> b!3935229 (= e!2434579 e!2434578)))

(declare-fun res!1592388 () Bool)

(assert (=> b!3935229 (=> (not res!1592388) (not e!2434578))))

(assert (=> b!3935229 (= res!1592388 (isDefined!6953 lt!1375519))))

(assert (= (and d!1167165 c!683789) b!3935224))

(assert (= (and d!1167165 (not c!683789)) b!3935222))

(assert (= (or b!3935224 b!3935222) bm!284945))

(assert (= (and d!1167165 (not res!1592386)) b!3935229))

(assert (= (and b!3935229 res!1592388) b!3935228))

(assert (= (and b!3935228 res!1592383) b!3935227))

(assert (= (and b!3935227 res!1592387) b!3935225))

(assert (= (and b!3935225 res!1592385) b!3935223))

(assert (= (and b!3935223 res!1592384) b!3935221))

(assert (= (and b!3935221 res!1592382) b!3935226))

(declare-fun m!4502627 () Bool)

(assert (=> b!3935225 m!4502627))

(declare-fun m!4502629 () Bool)

(assert (=> b!3935225 m!4502629))

(assert (=> b!3935225 m!4502629))

(declare-fun m!4502631 () Bool)

(assert (=> b!3935225 m!4502631))

(assert (=> b!3935225 m!4502631))

(declare-fun m!4502633 () Bool)

(assert (=> b!3935225 m!4502633))

(declare-fun m!4502635 () Bool)

(assert (=> bm!284945 m!4502635))

(assert (=> b!3935221 m!4502627))

(assert (=> b!3935221 m!4502629))

(assert (=> b!3935221 m!4502629))

(assert (=> b!3935221 m!4502631))

(assert (=> b!3935221 m!4502631))

(declare-fun m!4502637 () Bool)

(assert (=> b!3935221 m!4502637))

(assert (=> b!3935226 m!4502627))

(declare-fun m!4502639 () Bool)

(assert (=> b!3935226 m!4502639))

(declare-fun m!4502641 () Bool)

(assert (=> d!1167165 m!4502641))

(declare-fun m!4502643 () Bool)

(assert (=> d!1167165 m!4502643))

(declare-fun m!4502645 () Bool)

(assert (=> d!1167165 m!4502645))

(assert (=> d!1167165 m!4501435))

(assert (=> b!3935228 m!4502627))

(assert (=> b!3935228 m!4502629))

(assert (=> b!3935228 m!4502629))

(assert (=> b!3935228 m!4502631))

(assert (=> b!3935227 m!4502627))

(declare-fun m!4502647 () Bool)

(assert (=> b!3935227 m!4502647))

(assert (=> b!3935227 m!4500653))

(declare-fun m!4502649 () Bool)

(assert (=> b!3935222 m!4502649))

(assert (=> b!3935223 m!4502627))

(declare-fun m!4502651 () Bool)

(assert (=> b!3935223 m!4502651))

(assert (=> b!3935223 m!4502651))

(declare-fun m!4502653 () Bool)

(assert (=> b!3935223 m!4502653))

(declare-fun m!4502655 () Bool)

(assert (=> b!3935229 m!4502655))

(assert (=> d!1166615 d!1167165))

(declare-fun b!3935232 () Bool)

(declare-fun e!2434582 () Bool)

(assert (=> b!3935232 (= e!2434582 (isPrefix!3618 (tail!6082 (tail!6082 prefix!426)) (tail!6082 (tail!6082 lt!1374783))))))

(declare-fun b!3935231 () Bool)

(declare-fun res!1592390 () Bool)

(assert (=> b!3935231 (=> (not res!1592390) (not e!2434582))))

(assert (=> b!3935231 (= res!1592390 (= (head!8357 (tail!6082 prefix!426)) (head!8357 (tail!6082 lt!1374783))))))

(declare-fun b!3935233 () Bool)

(declare-fun e!2434581 () Bool)

(assert (=> b!3935233 (= e!2434581 (>= (size!31338 (tail!6082 lt!1374783)) (size!31338 (tail!6082 prefix!426))))))

(declare-fun d!1167167 () Bool)

(assert (=> d!1167167 e!2434581))

(declare-fun res!1592391 () Bool)

(assert (=> d!1167167 (=> res!1592391 e!2434581)))

(declare-fun lt!1375523 () Bool)

(assert (=> d!1167167 (= res!1592391 (not lt!1375523))))

(declare-fun e!2434583 () Bool)

(assert (=> d!1167167 (= lt!1375523 e!2434583)))

(declare-fun res!1592392 () Bool)

(assert (=> d!1167167 (=> res!1592392 e!2434583)))

(assert (=> d!1167167 (= res!1592392 (is-Nil!41770 (tail!6082 prefix!426)))))

(assert (=> d!1167167 (= (isPrefix!3618 (tail!6082 prefix!426) (tail!6082 lt!1374783)) lt!1375523)))

(declare-fun b!3935230 () Bool)

(assert (=> b!3935230 (= e!2434583 e!2434582)))

(declare-fun res!1592389 () Bool)

(assert (=> b!3935230 (=> (not res!1592389) (not e!2434582))))

(assert (=> b!3935230 (= res!1592389 (not (is-Nil!41770 (tail!6082 lt!1374783))))))

(assert (= (and d!1167167 (not res!1592392)) b!3935230))

(assert (= (and b!3935230 res!1592389) b!3935231))

(assert (= (and b!3935231 res!1592390) b!3935232))

(assert (= (and d!1167167 (not res!1592391)) b!3935233))

(assert (=> b!3935232 m!4500663))

(assert (=> b!3935232 m!4501639))

(assert (=> b!3935232 m!4500901))

(assert (=> b!3935232 m!4502509))

(assert (=> b!3935232 m!4501639))

(assert (=> b!3935232 m!4502509))

(declare-fun m!4502657 () Bool)

(assert (=> b!3935232 m!4502657))

(assert (=> b!3935231 m!4500663))

(assert (=> b!3935231 m!4501645))

(assert (=> b!3935231 m!4500901))

(declare-fun m!4502659 () Bool)

(assert (=> b!3935231 m!4502659))

(assert (=> b!3935233 m!4500901))

(assert (=> b!3935233 m!4502507))

(assert (=> b!3935233 m!4500663))

(assert (=> b!3935233 m!4501647))

(assert (=> b!3934233 d!1167167))

(assert (=> b!3934233 d!1166719))

(assert (=> b!3934233 d!1167113))

(declare-fun b!3935237 () Bool)

(declare-fun b_free!107465 () Bool)

(declare-fun b_next!108169 () Bool)

(assert (=> b!3935237 (= b_free!107465 (not b_next!108169))))

(declare-fun t!326146 () Bool)

(declare-fun tb!235517 () Bool)

(assert (=> (and b!3935237 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326146) tb!235517))

(declare-fun result!285338 () Bool)

(assert (= result!285338 result!285290))

(assert (=> d!1166907 t!326146))

(declare-fun tb!235519 () Bool)

(declare-fun t!326148 () Bool)

(assert (=> (and b!3935237 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326148) tb!235519))

(declare-fun result!285340 () Bool)

(assert (= result!285340 result!285254))

(assert (=> d!1166733 t!326148))

(declare-fun tb!235521 () Bool)

(declare-fun t!326150 () Bool)

(assert (=> (and b!3935237 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326150) tb!235521))

(declare-fun result!285342 () Bool)

(assert (= result!285342 result!285144))

(assert (=> d!1166471 t!326150))

(assert (=> d!1166909 t!326146))

(declare-fun t!326152 () Bool)

(declare-fun tb!235523 () Bool)

(assert (=> (and b!3935237 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326152) tb!235523))

(declare-fun result!285344 () Bool)

(assert (= result!285344 result!285314))

(assert (=> d!1166917 t!326152))

(declare-fun b_and!300479 () Bool)

(declare-fun tp!1197520 () Bool)

(assert (=> b!3935237 (= tp!1197520 (and (=> t!326150 result!285342) (=> t!326152 result!285344) (=> t!326146 result!285338) (=> t!326148 result!285340) b_and!300479))))

(declare-fun b_free!107467 () Bool)

(declare-fun b_next!108171 () Bool)

(assert (=> b!3935237 (= b_free!107467 (not b_next!108171))))

(declare-fun t!326154 () Bool)

(declare-fun tb!235525 () Bool)

(assert (=> (and b!3935237 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) t!326154) tb!235525))

(declare-fun result!285346 () Bool)

(assert (= result!285346 result!285326))

(assert (=> b!3935185 t!326154))

(declare-fun t!326156 () Bool)

(declare-fun tb!235527 () Bool)

(assert (=> (and b!3935237 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326156) tb!235527))

(declare-fun result!285348 () Bool)

(assert (= result!285348 result!285302))

(assert (=> d!1166909 t!326156))

(declare-fun t!326158 () Bool)

(declare-fun tb!235529 () Bool)

(assert (=> (and b!3935237 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) t!326158) tb!235529))

(declare-fun result!285350 () Bool)

(assert (= result!285350 result!285242))

(assert (=> b!3934623 t!326158))

(declare-fun tb!235531 () Bool)

(declare-fun t!326160 () Bool)

(assert (=> (and b!3935237 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326160) tb!235531))

(declare-fun result!285352 () Bool)

(assert (= result!285352 result!285152))

(assert (=> d!1166487 t!326160))

(declare-fun t!326162 () Bool)

(declare-fun tb!235533 () Bool)

(assert (=> (and b!3935237 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) t!326162) tb!235533))

(declare-fun result!285354 () Bool)

(assert (= result!285354 result!285172))

(assert (=> b!3934355 t!326162))

(declare-fun t!326164 () Bool)

(declare-fun tb!235535 () Bool)

(assert (=> (and b!3935237 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326164) tb!235535))

(declare-fun result!285356 () Bool)

(assert (= result!285356 result!285278))

(assert (=> d!1166783 t!326164))

(declare-fun t!326166 () Bool)

(declare-fun tb!235537 () Bool)

(assert (=> (and b!3935237 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326166) tb!235537))

(declare-fun result!285358 () Bool)

(assert (= result!285358 result!285266))

(assert (=> d!1166771 t!326166))

(declare-fun tb!235539 () Bool)

(declare-fun t!326168 () Bool)

(assert (=> (and b!3935237 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) t!326168) tb!235539))

(declare-fun result!285360 () Bool)

(assert (= result!285360 result!285160))

(assert (=> b!3934200 t!326168))

(declare-fun tp!1197522 () Bool)

(declare-fun b_and!300481 () Bool)

(assert (=> b!3935237 (= tp!1197522 (and (=> t!326162 result!285354) (=> t!326166 result!285358) (=> t!326156 result!285348) (=> t!326164 result!285356) (=> t!326154 result!285346) (=> t!326160 result!285352) (=> t!326168 result!285360) (=> t!326158 result!285350) b_and!300481))))

(declare-fun e!2434589 () Bool)

(declare-fun b!3935234 () Bool)

(declare-fun e!2434585 () Bool)

(declare-fun tp!1197524 () Bool)

(assert (=> b!3935234 (= e!2434585 (and (inv!55969 (h!47191 (t!325944 (t!325944 prefixTokens!80)))) e!2434589 tp!1197524))))

(declare-fun e!2434584 () Bool)

(declare-fun b!3935235 () Bool)

(declare-fun tp!1197521 () Bool)

(assert (=> b!3935235 (= e!2434589 (and (inv!21 (value!206541 (h!47191 (t!325944 (t!325944 prefixTokens!80))))) e!2434584 tp!1197521))))

(declare-fun e!2434586 () Bool)

(declare-fun b!3935236 () Bool)

(declare-fun tp!1197523 () Bool)

(assert (=> b!3935236 (= e!2434584 (and tp!1197523 (inv!55966 (tag!7383 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (inv!55970 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) e!2434586))))

(assert (=> b!3935237 (= e!2434586 (and tp!1197520 tp!1197522))))

(assert (=> b!3934493 (= tp!1197444 e!2434585)))

(assert (= b!3935236 b!3935237))

(assert (= b!3935235 b!3935236))

(assert (= b!3935234 b!3935235))

(assert (= (and b!3934493 (is-Cons!41771 (t!325944 (t!325944 prefixTokens!80)))) b!3935234))

(declare-fun m!4502661 () Bool)

(assert (=> b!3935234 m!4502661))

(declare-fun m!4502663 () Bool)

(assert (=> b!3935235 m!4502663))

(declare-fun m!4502665 () Bool)

(assert (=> b!3935236 m!4502665))

(declare-fun m!4502667 () Bool)

(assert (=> b!3935236 m!4502667))

(declare-fun b!3935238 () Bool)

(declare-fun e!2434590 () Bool)

(declare-fun tp!1197525 () Bool)

(assert (=> b!3935238 (= e!2434590 (and tp_is_empty!19827 tp!1197525))))

(assert (=> b!3934452 (= tp!1197402 e!2434590)))

(assert (= (and b!3934452 (is-Cons!41770 (t!325943 (originalCharacters!7123 (h!47191 suffixTokens!72))))) b!3935238))

(declare-fun e!2434591 () Bool)

(assert (=> b!3934502 (= tp!1197446 e!2434591)))

(declare-fun b!3935242 () Bool)

(declare-fun tp!1197528 () Bool)

(declare-fun tp!1197526 () Bool)

(assert (=> b!3935242 (= e!2434591 (and tp!1197528 tp!1197526))))

(declare-fun b!3935239 () Bool)

(assert (=> b!3935239 (= e!2434591 tp_is_empty!19827)))

(declare-fun b!3935240 () Bool)

(declare-fun tp!1197527 () Bool)

(declare-fun tp!1197529 () Bool)

(assert (=> b!3935240 (= e!2434591 (and tp!1197527 tp!1197529))))

(declare-fun b!3935241 () Bool)

(declare-fun tp!1197530 () Bool)

(assert (=> b!3935241 (= e!2434591 tp!1197530)))

(assert (= (and b!3934502 (is-ElementMatch!11428 (regOne!23368 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935239))

(assert (= (and b!3934502 (is-Concat!18182 (regOne!23368 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935240))

(assert (= (and b!3934502 (is-Star!11428 (regOne!23368 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935241))

(assert (= (and b!3934502 (is-Union!11428 (regOne!23368 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935242))

(declare-fun e!2434592 () Bool)

(assert (=> b!3934502 (= tp!1197448 e!2434592)))

(declare-fun b!3935246 () Bool)

(declare-fun tp!1197533 () Bool)

(declare-fun tp!1197531 () Bool)

(assert (=> b!3935246 (= e!2434592 (and tp!1197533 tp!1197531))))

(declare-fun b!3935243 () Bool)

(assert (=> b!3935243 (= e!2434592 tp_is_empty!19827)))

(declare-fun b!3935244 () Bool)

(declare-fun tp!1197532 () Bool)

(declare-fun tp!1197534 () Bool)

(assert (=> b!3935244 (= e!2434592 (and tp!1197532 tp!1197534))))

(declare-fun b!3935245 () Bool)

(declare-fun tp!1197535 () Bool)

(assert (=> b!3935245 (= e!2434592 tp!1197535)))

(assert (= (and b!3934502 (is-ElementMatch!11428 (regTwo!23368 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935243))

(assert (= (and b!3934502 (is-Concat!18182 (regTwo!23368 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935244))

(assert (= (and b!3934502 (is-Star!11428 (regTwo!23368 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935245))

(assert (= (and b!3934502 (is-Union!11428 (regTwo!23368 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935246))

(declare-fun e!2434593 () Bool)

(assert (=> b!3934490 (= tp!1197438 e!2434593)))

(declare-fun b!3935250 () Bool)

(declare-fun tp!1197538 () Bool)

(declare-fun tp!1197536 () Bool)

(assert (=> b!3935250 (= e!2434593 (and tp!1197538 tp!1197536))))

(declare-fun b!3935247 () Bool)

(assert (=> b!3935247 (= e!2434593 tp_is_empty!19827)))

(declare-fun b!3935248 () Bool)

(declare-fun tp!1197537 () Bool)

(declare-fun tp!1197539 () Bool)

(assert (=> b!3935248 (= e!2434593 (and tp!1197537 tp!1197539))))

(declare-fun b!3935249 () Bool)

(declare-fun tp!1197540 () Bool)

(assert (=> b!3935249 (= e!2434593 tp!1197540)))

(assert (= (and b!3934490 (is-ElementMatch!11428 (reg!11757 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935247))

(assert (= (and b!3934490 (is-Concat!18182 (reg!11757 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935248))

(assert (= (and b!3934490 (is-Star!11428 (reg!11757 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935249))

(assert (= (and b!3934490 (is-Union!11428 (reg!11757 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935250))

(declare-fun e!2434594 () Bool)

(assert (=> b!3934491 (= tp!1197436 e!2434594)))

(declare-fun b!3935254 () Bool)

(declare-fun tp!1197543 () Bool)

(declare-fun tp!1197541 () Bool)

(assert (=> b!3935254 (= e!2434594 (and tp!1197543 tp!1197541))))

(declare-fun b!3935251 () Bool)

(assert (=> b!3935251 (= e!2434594 tp_is_empty!19827)))

(declare-fun b!3935252 () Bool)

(declare-fun tp!1197542 () Bool)

(declare-fun tp!1197544 () Bool)

(assert (=> b!3935252 (= e!2434594 (and tp!1197542 tp!1197544))))

(declare-fun b!3935253 () Bool)

(declare-fun tp!1197545 () Bool)

(assert (=> b!3935253 (= e!2434594 tp!1197545)))

(assert (= (and b!3934491 (is-ElementMatch!11428 (regOne!23369 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935251))

(assert (= (and b!3934491 (is-Concat!18182 (regOne!23369 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935252))

(assert (= (and b!3934491 (is-Star!11428 (regOne!23369 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935253))

(assert (= (and b!3934491 (is-Union!11428 (regOne!23369 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935254))

(declare-fun e!2434595 () Bool)

(assert (=> b!3934491 (= tp!1197434 e!2434595)))

(declare-fun b!3935258 () Bool)

(declare-fun tp!1197548 () Bool)

(declare-fun tp!1197546 () Bool)

(assert (=> b!3935258 (= e!2434595 (and tp!1197548 tp!1197546))))

(declare-fun b!3935255 () Bool)

(assert (=> b!3935255 (= e!2434595 tp_is_empty!19827)))

(declare-fun b!3935256 () Bool)

(declare-fun tp!1197547 () Bool)

(declare-fun tp!1197549 () Bool)

(assert (=> b!3935256 (= e!2434595 (and tp!1197547 tp!1197549))))

(declare-fun b!3935257 () Bool)

(declare-fun tp!1197550 () Bool)

(assert (=> b!3935257 (= e!2434595 tp!1197550)))

(assert (= (and b!3934491 (is-ElementMatch!11428 (regTwo!23369 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935255))

(assert (= (and b!3934491 (is-Concat!18182 (regTwo!23369 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935256))

(assert (= (and b!3934491 (is-Star!11428 (regTwo!23369 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935257))

(assert (= (and b!3934491 (is-Union!11428 (regTwo!23369 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935258))

(declare-fun b!3935267 () Bool)

(declare-fun tp!1197559 () Bool)

(declare-fun e!2434600 () Bool)

(declare-fun tp!1197557 () Bool)

(assert (=> b!3935267 (= e!2434600 (and (inv!55975 (left!31850 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80)))))) tp!1197557 (inv!55975 (right!32180 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80)))))) tp!1197559))))

(declare-fun b!3935269 () Bool)

(declare-fun e!2434601 () Bool)

(declare-fun tp!1197558 () Bool)

(assert (=> b!3935269 (= e!2434601 tp!1197558)))

(declare-fun b!3935268 () Bool)

(declare-fun inv!55979 (IArray!25473) Bool)

(assert (=> b!3935268 (= e!2434600 (and (inv!55979 (xs!16040 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80)))))) e!2434601))))

(assert (=> b!3934357 (= tp!1197386 (and (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80))))) e!2434600))))

(assert (= (and b!3934357 (is-Node!12734 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80)))))) b!3935267))

(assert (= b!3935268 b!3935269))

(assert (= (and b!3934357 (is-Leaf!19703 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (value!206541 (h!47191 prefixTokens!80)))))) b!3935268))

(declare-fun m!4502669 () Bool)

(assert (=> b!3935267 m!4502669))

(declare-fun m!4502671 () Bool)

(assert (=> b!3935267 m!4502671))

(declare-fun m!4502673 () Bool)

(assert (=> b!3935268 m!4502673))

(assert (=> b!3934357 m!4501319))

(declare-fun b!3935270 () Bool)

(declare-fun e!2434602 () Bool)

(declare-fun tp!1197560 () Bool)

(assert (=> b!3935270 (= e!2434602 (and tp_is_empty!19827 tp!1197560))))

(assert (=> b!3934467 (= tp!1197418 e!2434602)))

(assert (= (and b!3934467 (is-Cons!41770 (t!325943 (t!325943 prefix!426)))) b!3935270))

(declare-fun e!2434603 () Bool)

(assert (=> b!3934504 (= tp!1197447 e!2434603)))

(declare-fun b!3935274 () Bool)

(declare-fun tp!1197563 () Bool)

(declare-fun tp!1197561 () Bool)

(assert (=> b!3935274 (= e!2434603 (and tp!1197563 tp!1197561))))

(declare-fun b!3935271 () Bool)

(assert (=> b!3935271 (= e!2434603 tp_is_empty!19827)))

(declare-fun b!3935272 () Bool)

(declare-fun tp!1197562 () Bool)

(declare-fun tp!1197564 () Bool)

(assert (=> b!3935272 (= e!2434603 (and tp!1197562 tp!1197564))))

(declare-fun b!3935273 () Bool)

(declare-fun tp!1197565 () Bool)

(assert (=> b!3935273 (= e!2434603 tp!1197565)))

(assert (= (and b!3934504 (is-ElementMatch!11428 (regOne!23369 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935271))

(assert (= (and b!3934504 (is-Concat!18182 (regOne!23369 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935272))

(assert (= (and b!3934504 (is-Star!11428 (regOne!23369 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935273))

(assert (= (and b!3934504 (is-Union!11428 (regOne!23369 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935274))

(declare-fun e!2434604 () Bool)

(assert (=> b!3934504 (= tp!1197445 e!2434604)))

(declare-fun b!3935278 () Bool)

(declare-fun tp!1197568 () Bool)

(declare-fun tp!1197566 () Bool)

(assert (=> b!3935278 (= e!2434604 (and tp!1197568 tp!1197566))))

(declare-fun b!3935275 () Bool)

(assert (=> b!3935275 (= e!2434604 tp_is_empty!19827)))

(declare-fun b!3935276 () Bool)

(declare-fun tp!1197567 () Bool)

(declare-fun tp!1197569 () Bool)

(assert (=> b!3935276 (= e!2434604 (and tp!1197567 tp!1197569))))

(declare-fun b!3935277 () Bool)

(declare-fun tp!1197570 () Bool)

(assert (=> b!3935277 (= e!2434604 tp!1197570)))

(assert (= (and b!3934504 (is-ElementMatch!11428 (regTwo!23369 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935275))

(assert (= (and b!3934504 (is-Concat!18182 (regTwo!23369 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935276))

(assert (= (and b!3934504 (is-Star!11428 (regTwo!23369 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935277))

(assert (= (and b!3934504 (is-Union!11428 (regTwo!23369 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935278))

(declare-fun b!3935279 () Bool)

(declare-fun e!2434605 () Bool)

(declare-fun tp!1197571 () Bool)

(assert (=> b!3935279 (= e!2434605 (and tp_is_empty!19827 tp!1197571))))

(assert (=> b!3934494 (= tp!1197441 e!2434605)))

(assert (= (and b!3934494 (is-Cons!41770 (originalCharacters!7123 (h!47191 (t!325944 prefixTokens!80))))) b!3935279))

(declare-fun e!2434606 () Bool)

(assert (=> b!3934503 (= tp!1197449 e!2434606)))

(declare-fun b!3935283 () Bool)

(declare-fun tp!1197574 () Bool)

(declare-fun tp!1197572 () Bool)

(assert (=> b!3935283 (= e!2434606 (and tp!1197574 tp!1197572))))

(declare-fun b!3935280 () Bool)

(assert (=> b!3935280 (= e!2434606 tp_is_empty!19827)))

(declare-fun b!3935281 () Bool)

(declare-fun tp!1197573 () Bool)

(declare-fun tp!1197575 () Bool)

(assert (=> b!3935281 (= e!2434606 (and tp!1197573 tp!1197575))))

(declare-fun b!3935282 () Bool)

(declare-fun tp!1197576 () Bool)

(assert (=> b!3935282 (= e!2434606 tp!1197576)))

(assert (= (and b!3934503 (is-ElementMatch!11428 (reg!11757 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935280))

(assert (= (and b!3934503 (is-Concat!18182 (reg!11757 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935281))

(assert (= (and b!3934503 (is-Star!11428 (reg!11757 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935282))

(assert (= (and b!3934503 (is-Union!11428 (reg!11757 (regex!6523 (rule!9473 (h!47191 suffixTokens!72)))))) b!3935283))

(declare-fun e!2434607 () Bool)

(assert (=> b!3934495 (= tp!1197443 e!2434607)))

(declare-fun b!3935287 () Bool)

(declare-fun tp!1197579 () Bool)

(declare-fun tp!1197577 () Bool)

(assert (=> b!3935287 (= e!2434607 (and tp!1197579 tp!1197577))))

(declare-fun b!3935284 () Bool)

(assert (=> b!3935284 (= e!2434607 tp_is_empty!19827)))

(declare-fun b!3935285 () Bool)

(declare-fun tp!1197578 () Bool)

(declare-fun tp!1197580 () Bool)

(assert (=> b!3935285 (= e!2434607 (and tp!1197578 tp!1197580))))

(declare-fun b!3935286 () Bool)

(declare-fun tp!1197581 () Bool)

(assert (=> b!3935286 (= e!2434607 tp!1197581)))

(assert (= (and b!3934495 (is-ElementMatch!11428 (regex!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) b!3935284))

(assert (= (and b!3934495 (is-Concat!18182 (regex!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) b!3935285))

(assert (= (and b!3934495 (is-Star!11428 (regex!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) b!3935286))

(assert (= (and b!3934495 (is-Union!11428 (regex!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) b!3935287))

(declare-fun b!3935288 () Bool)

(declare-fun e!2434608 () Bool)

(declare-fun tp!1197582 () Bool)

(assert (=> b!3935288 (= e!2434608 (and tp_is_empty!19827 tp!1197582))))

(assert (=> b!3934451 (= tp!1197401 e!2434608)))

(assert (= (and b!3934451 (is-Cons!41770 (t!325943 (t!325943 suffix!1176)))) b!3935288))

(declare-fun e!2434609 () Bool)

(assert (=> b!3934489 (= tp!1197435 e!2434609)))

(declare-fun b!3935292 () Bool)

(declare-fun tp!1197585 () Bool)

(declare-fun tp!1197583 () Bool)

(assert (=> b!3935292 (= e!2434609 (and tp!1197585 tp!1197583))))

(declare-fun b!3935289 () Bool)

(assert (=> b!3935289 (= e!2434609 tp_is_empty!19827)))

(declare-fun b!3935290 () Bool)

(declare-fun tp!1197584 () Bool)

(declare-fun tp!1197586 () Bool)

(assert (=> b!3935290 (= e!2434609 (and tp!1197584 tp!1197586))))

(declare-fun b!3935291 () Bool)

(declare-fun tp!1197587 () Bool)

(assert (=> b!3935291 (= e!2434609 tp!1197587)))

(assert (= (and b!3934489 (is-ElementMatch!11428 (regOne!23368 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935289))

(assert (= (and b!3934489 (is-Concat!18182 (regOne!23368 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935290))

(assert (= (and b!3934489 (is-Star!11428 (regOne!23368 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935291))

(assert (= (and b!3934489 (is-Union!11428 (regOne!23368 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935292))

(declare-fun e!2434610 () Bool)

(assert (=> b!3934489 (= tp!1197437 e!2434610)))

(declare-fun b!3935296 () Bool)

(declare-fun tp!1197590 () Bool)

(declare-fun tp!1197588 () Bool)

(assert (=> b!3935296 (= e!2434610 (and tp!1197590 tp!1197588))))

(declare-fun b!3935293 () Bool)

(assert (=> b!3935293 (= e!2434610 tp_is_empty!19827)))

(declare-fun b!3935294 () Bool)

(declare-fun tp!1197589 () Bool)

(declare-fun tp!1197591 () Bool)

(assert (=> b!3935294 (= e!2434610 (and tp!1197589 tp!1197591))))

(declare-fun b!3935295 () Bool)

(declare-fun tp!1197592 () Bool)

(assert (=> b!3935295 (= e!2434610 tp!1197592)))

(assert (= (and b!3934489 (is-ElementMatch!11428 (regTwo!23368 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935293))

(assert (= (and b!3934489 (is-Concat!18182 (regTwo!23368 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935294))

(assert (= (and b!3934489 (is-Star!11428 (regTwo!23368 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935295))

(assert (= (and b!3934489 (is-Union!11428 (regTwo!23368 (regex!6523 (rule!9473 (h!47191 prefixTokens!80)))))) b!3935296))

(declare-fun tp!1197593 () Bool)

(declare-fun tp!1197595 () Bool)

(declare-fun b!3935297 () Bool)

(declare-fun e!2434611 () Bool)

(assert (=> b!3935297 (= e!2434611 (and (inv!55975 (left!31850 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72)))))) tp!1197593 (inv!55975 (right!32180 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72)))))) tp!1197595))))

(declare-fun b!3935299 () Bool)

(declare-fun e!2434612 () Bool)

(declare-fun tp!1197594 () Bool)

(assert (=> b!3935299 (= e!2434612 tp!1197594)))

(declare-fun b!3935298 () Bool)

(assert (=> b!3935298 (= e!2434611 (and (inv!55979 (xs!16040 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72)))))) e!2434612))))

(assert (=> b!3934202 (= tp!1197384 (and (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72))))) e!2434611))))

(assert (= (and b!3934202 (is-Node!12734 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72)))))) b!3935297))

(assert (= b!3935298 b!3935299))

(assert (= (and b!3934202 (is-Leaf!19703 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (value!206541 (h!47191 suffixTokens!72)))))) b!3935298))

(declare-fun m!4502675 () Bool)

(assert (=> b!3935297 m!4502675))

(declare-fun m!4502677 () Bool)

(assert (=> b!3935297 m!4502677))

(declare-fun m!4502679 () Bool)

(assert (=> b!3935298 m!4502679))

(assert (=> b!3934202 m!4501043))

(declare-fun b!3935300 () Bool)

(declare-fun e!2434613 () Bool)

(declare-fun tp!1197596 () Bool)

(assert (=> b!3935300 (= e!2434613 (and tp_is_empty!19827 tp!1197596))))

(assert (=> b!3934492 (= tp!1197439 e!2434613)))

(assert (= (and b!3934492 (is-Cons!41770 (t!325943 (t!325943 suffixResult!91)))) b!3935300))

(declare-fun b!3935301 () Bool)

(declare-fun e!2434614 () Bool)

(declare-fun tp!1197597 () Bool)

(assert (=> b!3935301 (= e!2434614 (and tp_is_empty!19827 tp!1197597))))

(assert (=> b!3934505 (= tp!1197450 e!2434614)))

(assert (= (and b!3934505 (is-Cons!41770 (t!325943 (originalCharacters!7123 (h!47191 prefixTokens!80))))) b!3935301))

(declare-fun tp!1197598 () Bool)

(declare-fun e!2434615 () Bool)

(declare-fun tp!1197600 () Bool)

(declare-fun b!3935302 () Bool)

(assert (=> b!3935302 (= e!2434615 (and (inv!55975 (left!31850 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800))))))) tp!1197598 (inv!55975 (right!32180 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800))))))) tp!1197600))))

(declare-fun b!3935304 () Bool)

(declare-fun e!2434616 () Bool)

(declare-fun tp!1197599 () Bool)

(assert (=> b!3935304 (= e!2434616 tp!1197599)))

(declare-fun b!3935303 () Bool)

(assert (=> b!3935303 (= e!2434615 (and (inv!55979 (xs!16040 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800))))))) e!2434616))))

(assert (=> b!3934155 (= tp!1197383 (and (inv!55975 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800)))))) e!2434615))))

(assert (= (and b!3934155 (is-Node!12734 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800))))))) b!3935302))

(assert (= b!3935303 b!3935304))

(assert (= (and b!3934155 (is-Leaf!19703 (c!683465 (dynLambda!17898 (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))) (value!206541 (_1!23660 (v!39270 lt!1374800))))))) b!3935303))

(declare-fun m!4502681 () Bool)

(assert (=> b!3935302 m!4502681))

(declare-fun m!4502683 () Bool)

(assert (=> b!3935302 m!4502683))

(declare-fun m!4502685 () Bool)

(assert (=> b!3935303 m!4502685))

(assert (=> b!3934155 m!4500955))

(declare-fun e!2434617 () Bool)

(assert (=> b!3934445 (= tp!1197395 e!2434617)))

(declare-fun b!3935308 () Bool)

(declare-fun tp!1197603 () Bool)

(declare-fun tp!1197601 () Bool)

(assert (=> b!3935308 (= e!2434617 (and tp!1197603 tp!1197601))))

(declare-fun b!3935305 () Bool)

(assert (=> b!3935305 (= e!2434617 tp_is_empty!19827)))

(declare-fun b!3935306 () Bool)

(declare-fun tp!1197602 () Bool)

(declare-fun tp!1197604 () Bool)

(assert (=> b!3935306 (= e!2434617 (and tp!1197602 tp!1197604))))

(declare-fun b!3935307 () Bool)

(declare-fun tp!1197605 () Bool)

(assert (=> b!3935307 (= e!2434617 tp!1197605)))

(assert (= (and b!3934445 (is-ElementMatch!11428 (regex!6523 (h!47192 (t!325945 rules!2768))))) b!3935305))

(assert (= (and b!3934445 (is-Concat!18182 (regex!6523 (h!47192 (t!325945 rules!2768))))) b!3935306))

(assert (= (and b!3934445 (is-Star!11428 (regex!6523 (h!47192 (t!325945 rules!2768))))) b!3935307))

(assert (= (and b!3934445 (is-Union!11428 (regex!6523 (h!47192 (t!325945 rules!2768))))) b!3935308))

(declare-fun e!2434618 () Bool)

(assert (=> b!3934486 (= tp!1197431 e!2434618)))

(declare-fun b!3935312 () Bool)

(declare-fun tp!1197608 () Bool)

(declare-fun tp!1197606 () Bool)

(assert (=> b!3935312 (= e!2434618 (and tp!1197608 tp!1197606))))

(declare-fun b!3935309 () Bool)

(assert (=> b!3935309 (= e!2434618 tp_is_empty!19827)))

(declare-fun b!3935310 () Bool)

(declare-fun tp!1197607 () Bool)

(declare-fun tp!1197609 () Bool)

(assert (=> b!3935310 (= e!2434618 (and tp!1197607 tp!1197609))))

(declare-fun b!3935311 () Bool)

(declare-fun tp!1197610 () Bool)

(assert (=> b!3935311 (= e!2434618 tp!1197610)))

(assert (= (and b!3934486 (is-ElementMatch!11428 (regOne!23369 (regex!6523 (h!47192 rules!2768))))) b!3935309))

(assert (= (and b!3934486 (is-Concat!18182 (regOne!23369 (regex!6523 (h!47192 rules!2768))))) b!3935310))

(assert (= (and b!3934486 (is-Star!11428 (regOne!23369 (regex!6523 (h!47192 rules!2768))))) b!3935311))

(assert (= (and b!3934486 (is-Union!11428 (regOne!23369 (regex!6523 (h!47192 rules!2768))))) b!3935312))

(declare-fun e!2434619 () Bool)

(assert (=> b!3934486 (= tp!1197429 e!2434619)))

(declare-fun b!3935316 () Bool)

(declare-fun tp!1197613 () Bool)

(declare-fun tp!1197611 () Bool)

(assert (=> b!3935316 (= e!2434619 (and tp!1197613 tp!1197611))))

(declare-fun b!3935313 () Bool)

(assert (=> b!3935313 (= e!2434619 tp_is_empty!19827)))

(declare-fun b!3935314 () Bool)

(declare-fun tp!1197612 () Bool)

(declare-fun tp!1197614 () Bool)

(assert (=> b!3935314 (= e!2434619 (and tp!1197612 tp!1197614))))

(declare-fun b!3935315 () Bool)

(declare-fun tp!1197615 () Bool)

(assert (=> b!3935315 (= e!2434619 tp!1197615)))

(assert (= (and b!3934486 (is-ElementMatch!11428 (regTwo!23369 (regex!6523 (h!47192 rules!2768))))) b!3935313))

(assert (= (and b!3934486 (is-Concat!18182 (regTwo!23369 (regex!6523 (h!47192 rules!2768))))) b!3935314))

(assert (= (and b!3934486 (is-Star!11428 (regTwo!23369 (regex!6523 (h!47192 rules!2768))))) b!3935315))

(assert (= (and b!3934486 (is-Union!11428 (regTwo!23369 (regex!6523 (h!47192 rules!2768))))) b!3935316))

(declare-fun b!3935320 () Bool)

(declare-fun b_free!107469 () Bool)

(declare-fun b_next!108173 () Bool)

(assert (=> b!3935320 (= b_free!107469 (not b_next!108173))))

(declare-fun t!326170 () Bool)

(declare-fun tb!235541 () Bool)

(assert (=> (and b!3935320 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326170) tb!235541))

(declare-fun result!285364 () Bool)

(assert (= result!285364 result!285290))

(assert (=> d!1166907 t!326170))

(declare-fun t!326172 () Bool)

(declare-fun tb!235543 () Bool)

(assert (=> (and b!3935320 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326172) tb!235543))

(declare-fun result!285366 () Bool)

(assert (= result!285366 result!285254))

(assert (=> d!1166733 t!326172))

(declare-fun t!326174 () Bool)

(declare-fun tb!235545 () Bool)

(assert (=> (and b!3935320 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326174) tb!235545))

(declare-fun result!285368 () Bool)

(assert (= result!285368 result!285144))

(assert (=> d!1166471 t!326174))

(assert (=> d!1166909 t!326170))

(declare-fun tb!235547 () Bool)

(declare-fun t!326176 () Bool)

(assert (=> (and b!3935320 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326176) tb!235547))

(declare-fun result!285370 () Bool)

(assert (= result!285370 result!285314))

(assert (=> d!1166917 t!326176))

(declare-fun tp!1197616 () Bool)

(declare-fun b_and!300483 () Bool)

(assert (=> b!3935320 (= tp!1197616 (and (=> t!326174 result!285368) (=> t!326172 result!285366) (=> t!326170 result!285364) (=> t!326176 result!285370) b_and!300483))))

(declare-fun b_free!107471 () Bool)

(declare-fun b_next!108175 () Bool)

(assert (=> b!3935320 (= b_free!107471 (not b_next!108175))))

(declare-fun t!326178 () Bool)

(declare-fun tb!235549 () Bool)

(assert (=> (and b!3935320 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) t!326178) tb!235549))

(declare-fun result!285372 () Bool)

(assert (= result!285372 result!285326))

(assert (=> b!3935185 t!326178))

(declare-fun tb!235551 () Bool)

(declare-fun t!326180 () Bool)

(assert (=> (and b!3935320 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326180) tb!235551))

(declare-fun result!285374 () Bool)

(assert (= result!285374 result!285302))

(assert (=> d!1166909 t!326180))

(declare-fun tb!235553 () Bool)

(declare-fun t!326182 () Bool)

(assert (=> (and b!3935320 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) t!326182) tb!235553))

(declare-fun result!285376 () Bool)

(assert (= result!285376 result!285242))

(assert (=> b!3934623 t!326182))

(declare-fun tb!235555 () Bool)

(declare-fun t!326184 () Bool)

(assert (=> (and b!3935320 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326184) tb!235555))

(declare-fun result!285378 () Bool)

(assert (= result!285378 result!285152))

(assert (=> d!1166487 t!326184))

(declare-fun tb!235557 () Bool)

(declare-fun t!326186 () Bool)

(assert (=> (and b!3935320 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) t!326186) tb!235557))

(declare-fun result!285380 () Bool)

(assert (= result!285380 result!285172))

(assert (=> b!3934355 t!326186))

(declare-fun t!326188 () Bool)

(declare-fun tb!235559 () Bool)

(assert (=> (and b!3935320 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326188) tb!235559))

(declare-fun result!285382 () Bool)

(assert (= result!285382 result!285278))

(assert (=> d!1166783 t!326188))

(declare-fun t!326190 () Bool)

(declare-fun tb!235561 () Bool)

(assert (=> (and b!3935320 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326190) tb!235561))

(declare-fun result!285384 () Bool)

(assert (= result!285384 result!285266))

(assert (=> d!1166771 t!326190))

(declare-fun t!326192 () Bool)

(declare-fun tb!235563 () Bool)

(assert (=> (and b!3935320 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) t!326192) tb!235563))

(declare-fun result!285386 () Bool)

(assert (= result!285386 result!285160))

(assert (=> b!3934200 t!326192))

(declare-fun b_and!300485 () Bool)

(declare-fun tp!1197618 () Bool)

(assert (=> b!3935320 (= tp!1197618 (and (=> t!326184 result!285378) (=> t!326188 result!285382) (=> t!326178 result!285372) (=> t!326186 result!285380) (=> t!326190 result!285384) (=> t!326180 result!285374) (=> t!326182 result!285376) (=> t!326192 result!285386) b_and!300485))))

(declare-fun b!3935317 () Bool)

(declare-fun tp!1197620 () Bool)

(declare-fun e!2434625 () Bool)

(declare-fun e!2434621 () Bool)

(assert (=> b!3935317 (= e!2434621 (and (inv!55969 (h!47191 (t!325944 (t!325944 suffixTokens!72)))) e!2434625 tp!1197620))))

(declare-fun tp!1197617 () Bool)

(declare-fun b!3935318 () Bool)

(declare-fun e!2434620 () Bool)

(assert (=> b!3935318 (= e!2434625 (and (inv!21 (value!206541 (h!47191 (t!325944 (t!325944 suffixTokens!72))))) e!2434620 tp!1197617))))

(declare-fun b!3935319 () Bool)

(declare-fun tp!1197619 () Bool)

(declare-fun e!2434622 () Bool)

(assert (=> b!3935319 (= e!2434620 (and tp!1197619 (inv!55966 (tag!7383 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (inv!55970 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) e!2434622))))

(assert (=> b!3935320 (= e!2434622 (and tp!1197616 tp!1197618))))

(assert (=> b!3934463 (= tp!1197417 e!2434621)))

(assert (= b!3935319 b!3935320))

(assert (= b!3935318 b!3935319))

(assert (= b!3935317 b!3935318))

(assert (= (and b!3934463 (is-Cons!41771 (t!325944 (t!325944 suffixTokens!72)))) b!3935317))

(declare-fun m!4502687 () Bool)

(assert (=> b!3935317 m!4502687))

(declare-fun m!4502689 () Bool)

(assert (=> b!3935318 m!4502689))

(declare-fun m!4502691 () Bool)

(assert (=> b!3935319 m!4502691))

(declare-fun m!4502693 () Bool)

(assert (=> b!3935319 m!4502693))

(declare-fun e!2434626 () Bool)

(assert (=> b!3934484 (= tp!1197430 e!2434626)))

(declare-fun b!3935324 () Bool)

(declare-fun tp!1197623 () Bool)

(declare-fun tp!1197621 () Bool)

(assert (=> b!3935324 (= e!2434626 (and tp!1197623 tp!1197621))))

(declare-fun b!3935321 () Bool)

(assert (=> b!3935321 (= e!2434626 tp_is_empty!19827)))

(declare-fun b!3935322 () Bool)

(declare-fun tp!1197622 () Bool)

(declare-fun tp!1197624 () Bool)

(assert (=> b!3935322 (= e!2434626 (and tp!1197622 tp!1197624))))

(declare-fun b!3935323 () Bool)

(declare-fun tp!1197625 () Bool)

(assert (=> b!3935323 (= e!2434626 tp!1197625)))

(assert (= (and b!3934484 (is-ElementMatch!11428 (regOne!23368 (regex!6523 (h!47192 rules!2768))))) b!3935321))

(assert (= (and b!3934484 (is-Concat!18182 (regOne!23368 (regex!6523 (h!47192 rules!2768))))) b!3935322))

(assert (= (and b!3934484 (is-Star!11428 (regOne!23368 (regex!6523 (h!47192 rules!2768))))) b!3935323))

(assert (= (and b!3934484 (is-Union!11428 (regOne!23368 (regex!6523 (h!47192 rules!2768))))) b!3935324))

(declare-fun e!2434627 () Bool)

(assert (=> b!3934484 (= tp!1197432 e!2434627)))

(declare-fun b!3935328 () Bool)

(declare-fun tp!1197628 () Bool)

(declare-fun tp!1197626 () Bool)

(assert (=> b!3935328 (= e!2434627 (and tp!1197628 tp!1197626))))

(declare-fun b!3935325 () Bool)

(assert (=> b!3935325 (= e!2434627 tp_is_empty!19827)))

(declare-fun b!3935326 () Bool)

(declare-fun tp!1197627 () Bool)

(declare-fun tp!1197629 () Bool)

(assert (=> b!3935326 (= e!2434627 (and tp!1197627 tp!1197629))))

(declare-fun b!3935327 () Bool)

(declare-fun tp!1197630 () Bool)

(assert (=> b!3935327 (= e!2434627 tp!1197630)))

(assert (= (and b!3934484 (is-ElementMatch!11428 (regTwo!23368 (regex!6523 (h!47192 rules!2768))))) b!3935325))

(assert (= (and b!3934484 (is-Concat!18182 (regTwo!23368 (regex!6523 (h!47192 rules!2768))))) b!3935326))

(assert (= (and b!3934484 (is-Star!11428 (regTwo!23368 (regex!6523 (h!47192 rules!2768))))) b!3935327))

(assert (= (and b!3934484 (is-Union!11428 (regTwo!23368 (regex!6523 (h!47192 rules!2768))))) b!3935328))

(declare-fun b!3935331 () Bool)

(declare-fun b_free!107473 () Bool)

(declare-fun b_next!108177 () Bool)

(assert (=> b!3935331 (= b_free!107473 (not b_next!108177))))

(declare-fun tb!235565 () Bool)

(declare-fun t!326194 () Bool)

(assert (=> (and b!3935331 (= (toValue!8979 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326194) tb!235565))

(declare-fun result!285388 () Bool)

(assert (= result!285388 result!285290))

(assert (=> d!1166907 t!326194))

(declare-fun t!326196 () Bool)

(declare-fun tb!235567 () Bool)

(assert (=> (and b!3935331 (= (toValue!8979 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326196) tb!235567))

(declare-fun result!285390 () Bool)

(assert (= result!285390 result!285254))

(assert (=> d!1166733 t!326196))

(declare-fun t!326198 () Bool)

(declare-fun tb!235569 () Bool)

(assert (=> (and b!3935331 (= (toValue!8979 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326198) tb!235569))

(declare-fun result!285392 () Bool)

(assert (= result!285392 result!285144))

(assert (=> d!1166471 t!326198))

(assert (=> d!1166909 t!326194))

(declare-fun tb!235571 () Bool)

(declare-fun t!326200 () Bool)

(assert (=> (and b!3935331 (= (toValue!8979 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326200) tb!235571))

(declare-fun result!285394 () Bool)

(assert (= result!285394 result!285314))

(assert (=> d!1166917 t!326200))

(declare-fun b_and!300487 () Bool)

(declare-fun tp!1197634 () Bool)

(assert (=> b!3935331 (= tp!1197634 (and (=> t!326200 result!285394) (=> t!326194 result!285388) (=> t!326198 result!285392) (=> t!326196 result!285390) b_and!300487))))

(declare-fun b_free!107475 () Bool)

(declare-fun b_next!108179 () Bool)

(assert (=> b!3935331 (= b_free!107475 (not b_next!108179))))

(declare-fun tb!235573 () Bool)

(declare-fun t!326202 () Bool)

(assert (=> (and b!3935331 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) t!326202) tb!235573))

(declare-fun result!285396 () Bool)

(assert (= result!285396 result!285326))

(assert (=> b!3935185 t!326202))

(declare-fun tb!235575 () Bool)

(declare-fun t!326204 () Bool)

(assert (=> (and b!3935331 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326204) tb!235575))

(declare-fun result!285398 () Bool)

(assert (= result!285398 result!285302))

(assert (=> d!1166909 t!326204))

(declare-fun tb!235577 () Bool)

(declare-fun t!326206 () Bool)

(assert (=> (and b!3935331 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80)))))) t!326206) tb!235577))

(declare-fun result!285400 () Bool)

(assert (= result!285400 result!285242))

(assert (=> b!3934623 t!326206))

(declare-fun tb!235579 () Bool)

(declare-fun t!326208 () Bool)

(assert (=> (and b!3935331 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800)))))) t!326208) tb!235579))

(declare-fun result!285402 () Bool)

(assert (= result!285402 result!285152))

(assert (=> d!1166487 t!326208))

(declare-fun t!326210 () Bool)

(declare-fun tb!235581 () Bool)

(assert (=> (and b!3935331 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80))))) t!326210) tb!235581))

(declare-fun result!285404 () Bool)

(assert (= result!285404 result!285172))

(assert (=> b!3934355 t!326210))

(declare-fun tb!235583 () Bool)

(declare-fun t!326212 () Bool)

(assert (=> (and b!3935331 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375210)))))) t!326212) tb!235583))

(declare-fun result!285406 () Bool)

(assert (= result!285406 result!285278))

(assert (=> d!1166783 t!326212))

(declare-fun tb!235585 () Bool)

(declare-fun t!326214 () Bool)

(assert (=> (and b!3935331 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (get!13805 lt!1375154)))))) t!326214) tb!235585))

(declare-fun result!285408 () Bool)

(assert (= result!285408 result!285266))

(assert (=> d!1166771 t!326214))

(declare-fun t!326216 () Bool)

(declare-fun tb!235587 () Bool)

(assert (=> (and b!3935331 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72))))) t!326216) tb!235587))

(declare-fun result!285410 () Bool)

(assert (= result!285410 result!285160))

(assert (=> b!3934200 t!326216))

(declare-fun tp!1197632 () Bool)

(declare-fun b_and!300489 () Bool)

(assert (=> b!3935331 (= tp!1197632 (and (=> t!326214 result!285408) (=> t!326204 result!285398) (=> t!326202 result!285396) (=> t!326206 result!285400) (=> t!326216 result!285410) (=> t!326208 result!285402) (=> t!326212 result!285406) (=> t!326210 result!285404) b_and!300489))))

(declare-fun e!2434630 () Bool)

(assert (=> b!3935331 (= e!2434630 (and tp!1197634 tp!1197632))))

(declare-fun e!2434628 () Bool)

(declare-fun tp!1197631 () Bool)

(declare-fun b!3935330 () Bool)

(assert (=> b!3935330 (= e!2434628 (and tp!1197631 (inv!55966 (tag!7383 (h!47192 (t!325945 (t!325945 rules!2768))))) (inv!55970 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) e!2434630))))

(declare-fun b!3935329 () Bool)

(declare-fun e!2434629 () Bool)

(declare-fun tp!1197633 () Bool)

(assert (=> b!3935329 (= e!2434629 (and e!2434628 tp!1197633))))

(assert (=> b!3934444 (= tp!1197397 e!2434629)))

(assert (= b!3935330 b!3935331))

(assert (= b!3935329 b!3935330))

(assert (= (and b!3934444 (is-Cons!41772 (t!325945 (t!325945 rules!2768)))) b!3935329))

(declare-fun m!4502695 () Bool)

(assert (=> b!3935330 m!4502695))

(declare-fun m!4502697 () Bool)

(assert (=> b!3935330 m!4502697))

(declare-fun e!2434632 () Bool)

(assert (=> b!3934485 (= tp!1197433 e!2434632)))

(declare-fun b!3935335 () Bool)

(declare-fun tp!1197637 () Bool)

(declare-fun tp!1197635 () Bool)

(assert (=> b!3935335 (= e!2434632 (and tp!1197637 tp!1197635))))

(declare-fun b!3935332 () Bool)

(assert (=> b!3935332 (= e!2434632 tp_is_empty!19827)))

(declare-fun b!3935333 () Bool)

(declare-fun tp!1197636 () Bool)

(declare-fun tp!1197638 () Bool)

(assert (=> b!3935333 (= e!2434632 (and tp!1197636 tp!1197638))))

(declare-fun b!3935334 () Bool)

(declare-fun tp!1197639 () Bool)

(assert (=> b!3935334 (= e!2434632 tp!1197639)))

(assert (= (and b!3934485 (is-ElementMatch!11428 (reg!11757 (regex!6523 (h!47192 rules!2768))))) b!3935332))

(assert (= (and b!3934485 (is-Concat!18182 (reg!11757 (regex!6523 (h!47192 rules!2768))))) b!3935333))

(assert (= (and b!3934485 (is-Star!11428 (reg!11757 (regex!6523 (h!47192 rules!2768))))) b!3935334))

(assert (= (and b!3934485 (is-Union!11428 (reg!11757 (regex!6523 (h!47192 rules!2768))))) b!3935335))

(declare-fun e!2434633 () Bool)

(assert (=> b!3934465 (= tp!1197416 e!2434633)))

(declare-fun b!3935339 () Bool)

(declare-fun tp!1197642 () Bool)

(declare-fun tp!1197640 () Bool)

(assert (=> b!3935339 (= e!2434633 (and tp!1197642 tp!1197640))))

(declare-fun b!3935336 () Bool)

(assert (=> b!3935336 (= e!2434633 tp_is_empty!19827)))

(declare-fun b!3935337 () Bool)

(declare-fun tp!1197641 () Bool)

(declare-fun tp!1197643 () Bool)

(assert (=> b!3935337 (= e!2434633 (and tp!1197641 tp!1197643))))

(declare-fun b!3935338 () Bool)

(declare-fun tp!1197644 () Bool)

(assert (=> b!3935338 (= e!2434633 tp!1197644)))

(assert (= (and b!3934465 (is-ElementMatch!11428 (regex!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) b!3935336))

(assert (= (and b!3934465 (is-Concat!18182 (regex!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) b!3935337))

(assert (= (and b!3934465 (is-Star!11428 (regex!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) b!3935338))

(assert (= (and b!3934465 (is-Union!11428 (regex!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72)))))) b!3935339))

(declare-fun b!3935340 () Bool)

(declare-fun e!2434634 () Bool)

(declare-fun tp!1197645 () Bool)

(assert (=> b!3935340 (= e!2434634 (and tp_is_empty!19827 tp!1197645))))

(assert (=> b!3934464 (= tp!1197414 e!2434634)))

(assert (= (and b!3934464 (is-Cons!41770 (originalCharacters!7123 (h!47191 (t!325944 suffixTokens!72))))) b!3935340))

(declare-fun b_lambda!115109 () Bool)

(assert (= b_lambda!115075 (or (and b!3933750 b_free!107427 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3933781 b_free!107423 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3935320 b_free!107471 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3934446 b_free!107443 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3933775 b_free!107419 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3934496 b_free!107451 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3935237 b_free!107467 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3934466 b_free!107447 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3935331 b_free!107475 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toChars!8838 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) b_lambda!115109)))

(declare-fun b_lambda!115111 () Bool)

(assert (= b_lambda!115091 (or (and b!3933750 b_free!107427 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))))) (and b!3933775 b_free!107419 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))))) (and b!3933781 b_free!107423 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))))) (and b!3935331 b_free!107475 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))))) (and b!3935320 b_free!107471 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))))) (and b!3934446 b_free!107443 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))))) (and b!3934466 b_free!107447 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))))) (and b!3934496 b_free!107451) (and b!3935237 b_free!107467 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))))) b_lambda!115111)))

(declare-fun b_lambda!115113 () Bool)

(assert (= b_lambda!115107 (or (and b!3933775 b_free!107419 (= (toChars!8838 (transformation!6523 (h!47192 rules!2768))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))))) (and b!3934446 b_free!107443 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))))) (and b!3933781 b_free!107423 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))))) (and b!3934466 b_free!107447) (and b!3935331 b_free!107475 (= (toChars!8838 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))))) (and b!3933750 b_free!107427 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))))) (and b!3935320 b_free!107471 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))))) (and b!3934496 b_free!107451 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))))) (and b!3935237 b_free!107467 (= (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toChars!8838 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))))) b_lambda!115113)))

(declare-fun b_lambda!115115 () Bool)

(assert (= b_lambda!115073 (or (and b!3933781 b_free!107421 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 suffixTokens!72)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3933750 b_free!107425 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 prefixTokens!80)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3934496 b_free!107449 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 prefixTokens!80))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3935320 b_free!107469 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 suffixTokens!72)))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3933775 b_free!107417 (= (toValue!8979 (transformation!6523 (h!47192 rules!2768))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3934466 b_free!107445 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 suffixTokens!72))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3935237 b_free!107465 (= (toValue!8979 (transformation!6523 (rule!9473 (h!47191 (t!325944 (t!325944 prefixTokens!80)))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3934446 b_free!107441 (= (toValue!8979 (transformation!6523 (h!47192 (t!325945 rules!2768)))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) (and b!3935331 b_free!107473 (= (toValue!8979 (transformation!6523 (h!47192 (t!325945 (t!325945 rules!2768))))) (toValue!8979 (transformation!6523 (rule!9473 (_1!23660 (v!39270 lt!1374800))))))) b_lambda!115115)))

(push 1)

(assert (not b!3935269))

(assert (not d!1166875))

(assert (not b!3935044))

(assert (not b!3934987))

(assert (not b!3935296))

(assert (not b!3935252))

(assert (not d!1167005))

(assert (not b_next!108149))

(assert (not b!3935299))

(assert (not d!1166985))

(assert (not b!3934704))

(assert (not d!1167111))

(assert (not b!3935176))

(assert (not d!1166779))

(assert b_and!300461)

(assert (not b_next!108129))

(assert (not b!3935164))

(assert (not d!1166737))

(assert (not b!3934787))

(assert (not b!3934950))

(assert (not d!1166735))

(assert (not b_lambda!115105))

(assert (not b!3934999))

(assert (not b!3934935))

(assert (not b!3934748))

(assert (not b!3935294))

(assert (not b!3935167))

(assert (not b!3935268))

(assert (not b!3934871))

(assert (not b!3934937))

(assert (not b!3935315))

(assert (not b!3934705))

(assert (not b!3935109))

(assert (not d!1167153))

(assert (not b!3935115))

(assert (not b!3935235))

(assert (not b!3934992))

(assert (not b!3935020))

(assert (not d!1166841))

(assert b_and!300485)

(assert (not b!3934929))

(assert (not b!3935304))

(assert (not tb!235457))

(assert (not d!1166937))

(assert (not d!1166837))

(assert (not b!3935329))

(assert (not b!3935303))

(assert (not b!3934797))

(assert (not b!3934719))

(assert (not b!3934835))

(assert (not b!3934933))

(assert (not b!3934629))

(assert (not b!3935298))

(assert (not b!3935242))

(assert (not b!3935040))

(assert (not b!3935227))

(assert (not d!1166851))

(assert (not b!3934916))

(assert (not b_lambda!115099))

(assert (not b!3935175))

(assert (not b!3934956))

(assert b_and!300481)

(assert (not d!1166765))

(assert (not b!3934779))

(assert (not d!1166867))

(assert (not b_next!108179))

(assert (not b!3935129))

(assert (not b!3935300))

(assert (not b!3934657))

(assert (not b!3934984))

(assert (not b!3935035))

(assert (not b!3934931))

(assert (not b!3935223))

(assert (not b!3935335))

(assert (not b!3935105))

(assert (not b!3934771))

(assert (not b!3935016))

(assert (not d!1166949))

(assert (not b!3934830))

(assert b_and!300487)

(assert (not b!3934944))

(assert (not b!3935312))

(assert b_and!300459)

(assert (not d!1167099))

(assert (not b!3934812))

(assert (not b!3934927))

(assert (not b!3935067))

(assert (not b!3934813))

(assert (not d!1166903))

(assert (not b!3935127))

(assert (not bm!284928))

(assert (not b!3935311))

(assert (not b!3935066))

(assert (not b_lambda!115101))

(assert (not b!3934976))

(assert (not b!3935174))

(assert (not d!1166769))

(assert (not tb!235493))

(assert (not d!1167047))

(assert (not d!1166831))

(assert (not b!3934980))

(assert (not b_lambda!115097))

(assert (not b!3935173))

(assert b_and!300475)

(assert (not b!3934774))

(assert (not d!1167159))

(assert (not b_lambda!115115))

(assert (not bm!284927))

(assert (not b!3935112))

(assert (not b!3934958))

(assert (not b!3935339))

(assert (not b!3934995))

(assert (not d!1166871))

(assert (not bm!284906))

(assert (not b!3934942))

(assert (not b!3935125))

(assert (not b!3934921))

(assert (not b!3934780))

(assert (not b!3935058))

(assert (not b!3935158))

(assert (not b!3935245))

(assert (not b!3934924))

(assert (not b!3935042))

(assert (not b!3935117))

(assert (not b!3935085))

(assert (not b!3935106))

(assert (not b!3935228))

(assert (not b!3935276))

(assert (not b!3935221))

(assert (not d!1167019))

(assert (not b!3934973))

(assert (not b!3935307))

(assert (not b!3934862))

(assert (not b!3934202))

(assert (not b!3935000))

(assert (not d!1166797))

(assert (not b!3934775))

(assert (not b!3935075))

(assert (not bm!284934))

(assert (not d!1166829))

(assert (not b!3935023))

(assert (not b!3935165))

(assert (not b!3934754))

(assert (not b!3934810))

(assert (not b!3934855))

(assert (not b!3934802))

(assert (not b_next!108127))

(assert (not b!3935142))

(assert (not b!3934831))

(assert (not d!1166901))

(assert (not b!3934991))

(assert (not b!3935178))

(assert (not b!3934155))

(assert (not b!3935050))

(assert (not d!1166799))

(assert (not b!3934946))

(assert (not b!3935131))

(assert (not b!3935032))

(assert (not b!3935110))

(assert (not d!1167027))

(assert (not d!1166911))

(assert (not b!3935065))

(assert (not b!3934928))

(assert (not d!1166771))

(assert (not d!1166915))

(assert (not b_next!108175))

(assert (not b!3935283))

(assert (not b!3935113))

(assert (not b!3935157))

(assert (not d!1166873))

(assert (not d!1166913))

(assert (not b!3934640))

(assert (not d!1166795))

(assert (not b!3934698))

(assert (not b!3935285))

(assert (not b!3935099))

(assert (not b!3935328))

(assert (not b!3935229))

(assert (not b!3934665))

(assert (not b!3935292))

(assert (not b!3934764))

(assert b_and!300463)

(assert (not b!3934843))

(assert (not b!3934728))

(assert (not b!3935217))

(assert (not b!3935062))

(assert (not b!3934667))

(assert (not b!3935139))

(assert (not b!3934647))

(assert (not bm!284930))

(assert (not b!3935121))

(assert (not d!1166847))

(assert (not b!3935231))

(assert (not b!3935071))

(assert (not b_next!108155))

(assert (not b!3935091))

(assert (not b_next!108121))

(assert (not b!3934734))

(assert (not b!3935012))

(assert (not b!3934920))

(assert (not b!3935101))

(assert (not b!3935290))

(assert (not b!3934910))

(assert (not b!3935103))

(assert (not d!1166721))

(assert b_and!300477)

(assert (not b!3934856))

(assert (not b!3935179))

(assert (not b!3934848))

(assert (not d!1166741))

(assert (not d!1166813))

(assert (not b!3934947))

(assert (not b!3935233))

(assert (not b!3935155))

(assert (not b!3935144))

(assert b_and!300465)

(assert (not b!3935010))

(assert (not b!3934903))

(assert (not tb!235421))

(assert (not b!3934953))

(assert (not b!3935246))

(assert (not bm!284904))

(assert (not b!3934971))

(assert (not b!3934707))

(assert (not b!3934828))

(assert (not b!3935318))

(assert (not b!3934965))

(assert (not d!1167049))

(assert (not b!3934798))

(assert (not d!1166803))

(assert (not b!3934669))

(assert (not d!1167065))

(assert (not b!3935100))

(assert (not b!3934822))

(assert (not b!3935234))

(assert (not b!3935333))

(assert (not b!3935338))

(assert (not b!3935186))

(assert (not b!3935048))

(assert (not b!3935253))

(assert (not b!3935248))

(assert (not b!3934969))

(assert (not d!1166763))

(assert (not b_lambda!115085))

(assert (not b!3935324))

(assert (not b!3935150))

(assert (not d!1167097))

(assert (not b!3935069))

(assert (not b!3935001))

(assert (not b!3935267))

(assert (not d!1166823))

(assert (not b!3934845))

(assert (not b!3934792))

(assert (not b!3934703))

(assert (not b!3935236))

(assert (not b!3934713))

(assert (not b!3934618))

(assert (not b!3935244))

(assert (not bm!284943))

(assert (not b!3935077))

(assert (not b!3935102))

(assert (not b!3935098))

(assert (not b!3934979))

(assert (not b!3935084))

(assert (not b!3935323))

(assert (not b!3935090))

(assert (not b!3935281))

(assert (not b!3934841))

(assert (not b!3935028))

(assert (not b!3934817))

(assert (not b_next!108153))

(assert (not b!3934725))

(assert (not b!3935030))

(assert (not b!3935257))

(assert (not b!3935306))

(assert (not b!3935322))

(assert (not b!3934800))

(assert b_and!300467)

(assert (not d!1166783))

(assert (not b!3935330))

(assert (not b_next!108151))

(assert (not bm!284925))

(assert (not d!1166781))

(assert (not b!3935340))

(assert (not b!3935225))

(assert (not b!3935003))

(assert (not b!3935073))

(assert (not bm!284933))

(assert (not b!3934634))

(assert (not b!3935140))

(assert (not b!3935327))

(assert (not d!1166995))

(assert (not b!3934620))

(assert (not d!1166817))

(assert (not tb!235469))

(assert (not b!3934981))

(assert (not b!3934770))

(assert (not b!3934783))

(assert (not b!3934723))

(assert (not b!3935017))

(assert (not d!1167165))

(assert (not b_lambda!115083))

(assert (not b!3934918))

(assert (not b!3935154))

(assert (not b!3934851))

(assert (not b!3935232))

(assert (not b!3935064))

(assert (not b!3934699))

(assert (not b!3934989))

(assert (not b!3934911))

(assert (not d!1166977))

(assert (not b!3934820))

(assert (not d!1167151))

(assert (not d!1166991))

(assert (not b!3935026))

(assert (not bm!284932))

(assert tp_is_empty!19827)

(assert (not b!3934983))

(assert (not d!1166953))

(assert (not d!1167125))

(assert (not b!3934639))

(assert (not bm!284944))

(assert (not b!3934964))

(assert (not b!3935039))

(assert (not b!3934750))

(assert (not d!1167141))

(assert (not b!3934751))

(assert (not b!3935184))

(assert b_and!300479)

(assert (not b!3934784))

(assert (not bm!284929))

(assert (not d!1166899))

(assert b_and!300469)

(assert (not tb!235433))

(assert (not b!3935272))

(assert (not b!3935277))

(assert (not d!1166885))

(assert (not b!3935187))

(assert (not b!3935089))

(assert (not d!1166887))

(assert (not b!3934627))

(assert (not b!3935288))

(assert (not b!3935133))

(assert (not b!3935295))

(assert (not b!3935250))

(assert (not b!3934732))

(assert (not b!3935123))

(assert (not b!3934735))

(assert (not b!3935036))

(assert b_and!300483)

(assert (not b!3935241))

(assert (not d!1167119))

(assert (not b!3935216))

(assert (not b!3934720))

(assert (not d!1166773))

(assert (not b!3934630))

(assert (not b_next!108169))

(assert (not b!3935033))

(assert (not b!3935015))

(assert (not d!1167013))

(assert (not b!3935132))

(assert (not d!1166723))

(assert (not b!3935249))

(assert (not b!3934663))

(assert (not bm!284924))

(assert (not bm!284905))

(assert (not b!3934717))

(assert (not b!3934766))

(assert (not b_lambda!115095))

(assert (not b!3935182))

(assert (not b_next!108125))

(assert (not d!1166753))

(assert (not b!3934714))

(assert (not d!1166945))

(assert b_and!300489)

(assert (not b!3934847))

(assert (not d!1166909))

(assert (not b!3935278))

(assert (not b!3935317))

(assert (not b!3935274))

(assert (not b!3934834))

(assert (not b_lambda!115093))

(assert (not b!3934803))

(assert (not b!3934806))

(assert (not b!3934793))

(assert (not d!1166821))

(assert (not b!3935083))

(assert (not b!3934721))

(assert (not tb!235481))

(assert (not b!3935314))

(assert (not d!1166999))

(assert (not b!3935270))

(assert (not b!3935291))

(assert (not b!3934653))

(assert (not b!3935287))

(assert (not d!1167127))

(assert (not b!3935256))

(assert (not b!3934941))

(assert (not b!3935316))

(assert (not b!3935081))

(assert (not b!3934712))

(assert (not b!3934622))

(assert (not b!3934791))

(assert (not b!3934967))

(assert (not b!3935279))

(assert (not b!3934863))

(assert (not d!1166849))

(assert (not b!3934853))

(assert (not b!3934807))

(assert (not bm!284923))

(assert (not b!3935301))

(assert (not b!3935119))

(assert (not b!3934837))

(assert (not b!3935108))

(assert (not b!3934614))

(assert (not b!3934796))

(assert (not b!3934972))

(assert (not b!3934975))

(assert (not d!1167149))

(assert (not b!3935222))

(assert (not b!3934785))

(assert (not b!3935220))

(assert (not b!3935180))

(assert (not b!3935045))

(assert (not b!3935185))

(assert (not b!3934794))

(assert (not b!3934838))

(assert (not b!3935079))

(assert (not b!3934637))

(assert (not b_next!108173))

(assert (not b!3935014))

(assert (not d!1166697))

(assert (not b!3934655))

(assert (not b!3935135))

(assert (not b!3935159))

(assert (not b!3934726))

(assert (not d!1167135))

(assert (not b!3935297))

(assert (not d!1166941))

(assert (not b!3935145))

(assert (not b!3934760))

(assert (not b!3935093))

(assert (not b!3934923))

(assert (not d!1166967))

(assert b_and!300473)

(assert (not d!1166857))

(assert (not b!3934625))

(assert (not b!3934633))

(assert b_and!300457)

(assert (not b!3935021))

(assert (not b!3935052))

(assert (not b!3934747))

(assert (not d!1167081))

(assert (not b!3934952))

(assert (not d!1166727))

(assert (not b!3935240))

(assert (not b_next!108131))

(assert (not b!3935057))

(assert (not b!3934623))

(assert (not tb!235505))

(assert (not b!3934730))

(assert (not b!3935025))

(assert (not b_next!108147))

(assert (not d!1167031))

(assert (not b!3935308))

(assert (not b!3934842))

(assert (not b_next!108145))

(assert (not b_next!108171))

(assert (not b!3934996))

(assert (not d!1166839))

(assert (not b!3935326))

(assert (not d!1167063))

(assert (not b!3934715))

(assert (not d!1166943))

(assert (not d!1166925))

(assert (not bm!284926))

(assert (not d!1166787))

(assert (not b!3935181))

(assert (not b!3934960))

(assert (not b!3935258))

(assert b_and!300471)

(assert (not b!3934819))

(assert (not b_lambda!115103))

(assert (not d!1167003))

(assert (not d!1167025))

(assert (not b!3934826))

(assert (not b!3935334))

(assert (not b!3935137))

(assert (not b!3935238))

(assert (not b!3934788))

(assert (not b!3934767))

(assert (not b!3935072))

(assert (not b!3934631))

(assert (not b_next!108177))

(assert (not b!3934762))

(assert (not b!3934857))

(assert (not b!3934616))

(assert (not bm!284945))

(assert (not d!1167145))

(assert (not b!3935226))

(assert (not d!1167131))

(assert (not d!1166929))

(assert (not b!3935208))

(assert (not tb!235445))

(assert (not b!3934938))

(assert (not b!3935302))

(assert (not b!3935310))

(assert (not b!3935254))

(assert (not d!1166711))

(assert (not b!3935022))

(assert (not b!3935019))

(assert (not b!3935273))

(assert (not b_next!108123))

(assert (not d!1166785))

(assert (not b!3934962))

(assert (not d!1166877))

(assert (not b!3935319))

(assert (not b!3934612))

(assert (not d!1166767))

(assert (not b!3935152))

(assert (not b!3935070))

(assert (not d!1167115))

(assert (not b!3935031))

(assert (not b_lambda!115109))

(assert (not bm!284935))

(assert (not b_lambda!115113))

(assert (not b!3934799))

(assert (not b!3934718))

(assert (not b!3934357))

(assert (not b!3935163))

(assert (not b!3935337))

(assert (not b!3934913))

(assert (not bm!284931))

(assert (not b_lambda!115111))

(assert (not b!3934624))

(assert (not d!1166919))

(assert (not b!3935060))

(assert (not b!3935148))

(assert (not d!1166835))

(assert (not b!3935282))

(assert b_and!300455)

(assert (not b!3934824))

(assert (not b!3935286))

(assert (not b!3934777))

(assert (not b!3934949))

(check-sat)

(pop 1)

(push 1)

(assert b_and!300485)

(assert b_and!300475)

(assert (not b_next!108127))

(assert (not b_next!108175))

(assert b_and!300463)

(assert b_and!300465)

(assert (not b_next!108151))

(assert b_and!300479)

(assert b_and!300469)

(assert (not b_next!108173))

(assert b_and!300473)

(assert (not b_next!108123))

(assert b_and!300455)

(assert (not b_next!108149))

(assert b_and!300461)

(assert (not b_next!108129))

(assert b_and!300481)

(assert (not b_next!108179))

(assert b_and!300459)

(assert b_and!300487)

(assert (not b_next!108155))

(assert b_and!300477)

(assert (not b_next!108121))

(assert b_and!300467)

(assert (not b_next!108153))

(assert b_and!300483)

(assert (not b_next!108169))

(assert b_and!300489)

(assert (not b_next!108125))

(assert b_and!300457)

(assert (not b_next!108131))

(assert (not b_next!108147))

(assert (not b_next!108145))

(assert (not b_next!108171))

(assert b_and!300471)

(assert (not b_next!108177))

(check-sat)

(pop 1)

