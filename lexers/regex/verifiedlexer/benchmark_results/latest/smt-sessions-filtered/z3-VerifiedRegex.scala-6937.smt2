; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!366972 () Bool)

(assert start!366972)

(declare-fun b!3915686 () Bool)

(declare-fun b_free!106325 () Bool)

(declare-fun b_next!107029 () Bool)

(assert (=> b!3915686 (= b_free!106325 (not b_next!107029))))

(declare-fun tp!1191883 () Bool)

(declare-fun b_and!298115 () Bool)

(assert (=> b!3915686 (= tp!1191883 b_and!298115)))

(declare-fun b_free!106327 () Bool)

(declare-fun b_next!107031 () Bool)

(assert (=> b!3915686 (= b_free!106327 (not b_next!107031))))

(declare-fun tp!1191894 () Bool)

(declare-fun b_and!298117 () Bool)

(assert (=> b!3915686 (= tp!1191894 b_and!298117)))

(declare-fun b!3915705 () Bool)

(declare-fun b_free!106329 () Bool)

(declare-fun b_next!107033 () Bool)

(assert (=> b!3915705 (= b_free!106329 (not b_next!107033))))

(declare-fun tp!1191892 () Bool)

(declare-fun b_and!298119 () Bool)

(assert (=> b!3915705 (= tp!1191892 b_and!298119)))

(declare-fun b_free!106331 () Bool)

(declare-fun b_next!107035 () Bool)

(assert (=> b!3915705 (= b_free!106331 (not b_next!107035))))

(declare-fun tp!1191880 () Bool)

(declare-fun b_and!298121 () Bool)

(assert (=> b!3915705 (= tp!1191880 b_and!298121)))

(declare-fun b!3915712 () Bool)

(declare-fun b_free!106333 () Bool)

(declare-fun b_next!107037 () Bool)

(assert (=> b!3915712 (= b_free!106333 (not b_next!107037))))

(declare-fun tp!1191887 () Bool)

(declare-fun b_and!298123 () Bool)

(assert (=> b!3915712 (= tp!1191887 b_and!298123)))

(declare-fun b_free!106335 () Bool)

(declare-fun b_next!107039 () Bool)

(assert (=> b!3915712 (= b_free!106335 (not b_next!107039))))

(declare-fun tp!1191881 () Bool)

(declare-fun b_and!298125 () Bool)

(assert (=> b!3915712 (= tp!1191881 b_and!298125)))

(declare-fun e!2421018 () Bool)

(declare-fun tp!1191891 () Bool)

(declare-fun e!2421037 () Bool)

(declare-datatypes ((List!41623 0))(
  ( (Nil!41499) (Cons!41499 (h!46919 (_ BitVec 16)) (t!323724 List!41623)) )
))
(declare-datatypes ((TokenValue!6692 0))(
  ( (FloatLiteralValue!13384 (text!47289 List!41623)) (TokenValueExt!6691 (__x!25601 Int)) (Broken!33460 (value!204775 List!41623)) (Object!6815) (End!6692) (Def!6692) (Underscore!6692) (Match!6692) (Else!6692) (Error!6692) (Case!6692) (If!6692) (Extends!6692) (Abstract!6692) (Class!6692) (Val!6692) (DelimiterValue!13384 (del!6752 List!41623)) (KeywordValue!6698 (value!204776 List!41623)) (CommentValue!13384 (value!204777 List!41623)) (WhitespaceValue!13384 (value!204778 List!41623)) (IndentationValue!6692 (value!204779 List!41623)) (String!47177) (Int32!6692) (Broken!33461 (value!204780 List!41623)) (Boolean!6693) (Unit!59636) (OperatorValue!6695 (op!6752 List!41623)) (IdentifierValue!13384 (value!204781 List!41623)) (IdentifierValue!13385 (value!204782 List!41623)) (WhitespaceValue!13385 (value!204783 List!41623)) (True!13384) (False!13384) (Broken!33462 (value!204784 List!41623)) (Broken!33463 (value!204785 List!41623)) (True!13385) (RightBrace!6692) (RightBracket!6692) (Colon!6692) (Null!6692) (Comma!6692) (LeftBracket!6692) (False!13385) (LeftBrace!6692) (ImaginaryLiteralValue!6692 (text!47290 List!41623)) (StringLiteralValue!20076 (value!204786 List!41623)) (EOFValue!6692 (value!204787 List!41623)) (IdentValue!6692 (value!204788 List!41623)) (DelimiterValue!13385 (value!204789 List!41623)) (DedentValue!6692 (value!204790 List!41623)) (NewLineValue!6692 (value!204791 List!41623)) (IntegerValue!20076 (value!204792 (_ BitVec 32)) (text!47291 List!41623)) (IntegerValue!20077 (value!204793 Int) (text!47292 List!41623)) (Times!6692) (Or!6692) (Equal!6692) (Minus!6692) (Broken!33464 (value!204794 List!41623)) (And!6692) (Div!6692) (LessEqual!6692) (Mod!6692) (Concat!18059) (Not!6692) (Plus!6692) (SpaceValue!6692 (value!204795 List!41623)) (IntegerValue!20078 (value!204796 Int) (text!47293 List!41623)) (StringLiteralValue!20077 (text!47294 List!41623)) (FloatLiteralValue!13385 (text!47295 List!41623)) (BytesLiteralValue!6692 (value!204797 List!41623)) (CommentValue!13385 (value!204798 List!41623)) (StringLiteralValue!20078 (value!204799 List!41623)) (ErrorTokenValue!6692 (msg!6753 List!41623)) )
))
(declare-datatypes ((C!22920 0))(
  ( (C!22921 (val!13554 Int)) )
))
(declare-datatypes ((Regex!11367 0))(
  ( (ElementMatch!11367 (c!680552 C!22920)) (Concat!18060 (regOne!23246 Regex!11367) (regTwo!23246 Regex!11367)) (EmptyExpr!11367) (Star!11367 (reg!11696 Regex!11367)) (EmptyLang!11367) (Union!11367 (regOne!23247 Regex!11367) (regTwo!23247 Regex!11367)) )
))
(declare-datatypes ((String!47178 0))(
  ( (String!47179 (value!204800 String)) )
))
(declare-datatypes ((List!41624 0))(
  ( (Nil!41500) (Cons!41500 (h!46920 C!22920) (t!323725 List!41624)) )
))
(declare-datatypes ((IArray!25351 0))(
  ( (IArray!25352 (innerList!12733 List!41624)) )
))
(declare-datatypes ((Conc!12673 0))(
  ( (Node!12673 (left!31750 Conc!12673) (right!32080 Conc!12673) (csize!25576 Int) (cheight!12884 Int)) (Leaf!19611 (xs!15979 IArray!25351) (csize!25577 Int)) (Empty!12673) )
))
(declare-datatypes ((BalanceConc!24940 0))(
  ( (BalanceConc!24941 (c!680553 Conc!12673)) )
))
(declare-datatypes ((TokenValueInjection!12812 0))(
  ( (TokenValueInjection!12813 (toValue!8910 Int) (toChars!8769 Int)) )
))
(declare-datatypes ((Rule!12724 0))(
  ( (Rule!12725 (regex!6462 Regex!11367) (tag!7322 String!47178) (isSeparator!6462 Bool) (transformation!6462 TokenValueInjection!12812)) )
))
(declare-datatypes ((Token!12062 0))(
  ( (Token!12063 (value!204801 TokenValue!6692) (rule!9386 Rule!12724) (size!31159 Int) (originalCharacters!7062 List!41624)) )
))
(declare-datatypes ((List!41625 0))(
  ( (Nil!41501) (Cons!41501 (h!46921 Token!12062) (t!323726 List!41625)) )
))
(declare-fun prefixTokens!80 () List!41625)

(declare-fun b!3915678 () Bool)

(declare-fun inv!21 (TokenValue!6692) Bool)

(assert (=> b!3915678 (= e!2421037 (and (inv!21 (value!204801 (h!46921 prefixTokens!80))) e!2421018 tp!1191891))))

(declare-fun b!3915680 () Bool)

(declare-fun tp!1191882 () Bool)

(declare-fun suffixTokens!72 () List!41625)

(declare-fun e!2421036 () Bool)

(declare-fun e!2421046 () Bool)

(declare-fun inv!55688 (String!47178) Bool)

(declare-fun inv!55691 (TokenValueInjection!12812) Bool)

(assert (=> b!3915680 (= e!2421046 (and tp!1191882 (inv!55688 (tag!7322 (rule!9386 (h!46921 suffixTokens!72)))) (inv!55691 (transformation!6462 (rule!9386 (h!46921 suffixTokens!72)))) e!2421036))))

(declare-fun b!3915681 () Bool)

(declare-fun e!2421027 () Bool)

(declare-fun tp!1191888 () Bool)

(assert (=> b!3915681 (= e!2421018 (and tp!1191888 (inv!55688 (tag!7322 (rule!9386 (h!46921 prefixTokens!80)))) (inv!55691 (transformation!6462 (rule!9386 (h!46921 prefixTokens!80)))) e!2421027))))

(declare-fun b!3915682 () Bool)

(declare-fun res!1583894 () Bool)

(declare-fun e!2421023 () Bool)

(assert (=> b!3915682 (=> (not res!1583894) (not e!2421023))))

(declare-datatypes ((List!41626 0))(
  ( (Nil!41502) (Cons!41502 (h!46922 Rule!12724) (t!323727 List!41626)) )
))
(declare-fun rules!2768 () List!41626)

(declare-fun isEmpty!24696 (List!41626) Bool)

(assert (=> b!3915682 (= res!1583894 (not (isEmpty!24696 rules!2768)))))

(declare-fun b!3915683 () Bool)

(declare-fun e!2421033 () Bool)

(declare-fun tp_is_empty!19705 () Bool)

(declare-fun tp!1191890 () Bool)

(assert (=> b!3915683 (= e!2421033 (and tp_is_empty!19705 tp!1191890))))

(declare-fun b!3915684 () Bool)

(declare-fun e!2421034 () Bool)

(declare-fun e!2421028 () Bool)

(assert (=> b!3915684 (= e!2421034 e!2421028)))

(declare-fun res!1583881 () Bool)

(assert (=> b!3915684 (=> res!1583881 e!2421028)))

(declare-fun lt!1364232 () Int)

(declare-fun lt!1364235 () Int)

(declare-fun lt!1364229 () Int)

(assert (=> b!3915684 (= res!1583881 (not (= (+ lt!1364232 lt!1364235) lt!1364229)))))

(declare-fun lt!1364241 () List!41624)

(declare-fun size!31160 (List!41624) Int)

(assert (=> b!3915684 (= lt!1364229 (size!31160 lt!1364241))))

(declare-fun b!3915685 () Bool)

(declare-fun e!2421040 () Bool)

(declare-fun lt!1364234 () Int)

(assert (=> b!3915685 (= e!2421040 (= lt!1364235 lt!1364234))))

(declare-datatypes ((tuple2!40754 0))(
  ( (tuple2!40755 (_1!23511 Token!12062) (_2!23511 List!41624)) )
))
(declare-datatypes ((Option!8882 0))(
  ( (None!8881) (Some!8881 (v!39205 tuple2!40754)) )
))
(declare-fun lt!1364242 () Option!8882)

(declare-fun lt!1364233 () tuple2!40754)

(assert (=> b!3915685 (= (_2!23511 (v!39205 lt!1364242)) (_2!23511 lt!1364233))))

(declare-datatypes ((Unit!59637 0))(
  ( (Unit!59638) )
))
(declare-fun lt!1364244 () Unit!59637)

(declare-fun lt!1364236 () List!41624)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!514 (List!41624 List!41624 List!41624 List!41624) Unit!59637)

(assert (=> b!3915685 (= lt!1364244 (lemmaConcatSameAndSameSizesThenSameLists!514 lt!1364236 (_2!23511 (v!39205 lt!1364242)) lt!1364236 (_2!23511 lt!1364233)))))

(assert (=> b!3915686 (= e!2421036 (and tp!1191883 tp!1191894))))

(declare-fun b!3915687 () Bool)

(declare-fun e!2421017 () Bool)

(declare-fun e!2421026 () Bool)

(assert (=> b!3915687 (= e!2421017 e!2421026)))

(declare-fun res!1583883 () Bool)

(assert (=> b!3915687 (=> res!1583883 e!2421026)))

(declare-fun lt!1364247 () Token!12062)

(assert (=> b!3915687 (= res!1583883 (not (= (_1!23511 lt!1364233) lt!1364247)))))

(declare-fun head!8277 (List!41625) Token!12062)

(assert (=> b!3915687 (= lt!1364247 (head!8277 prefixTokens!80))))

(declare-fun get!13713 (Option!8882) tuple2!40754)

(assert (=> b!3915687 (= lt!1364233 (get!13713 lt!1364242))))

(declare-fun b!3915688 () Bool)

(declare-fun e!2421021 () Bool)

(assert (=> b!3915688 (= e!2421021 (= (size!31159 (_1!23511 (v!39205 lt!1364242))) (size!31160 (originalCharacters!7062 (_1!23511 (v!39205 lt!1364242))))))))

(declare-fun b!3915689 () Bool)

(declare-fun e!2421030 () Bool)

(declare-fun e!2421035 () Bool)

(assert (=> b!3915689 (= e!2421030 e!2421035)))

(declare-fun res!1583884 () Bool)

(assert (=> b!3915689 (=> (not res!1583884) (not e!2421035))))

(get-info :version)

(assert (=> b!3915689 (= res!1583884 ((_ is Some!8881) lt!1364242))))

(declare-datatypes ((LexerInterface!6051 0))(
  ( (LexerInterfaceExt!6048 (__x!25602 Int)) (Lexer!6049) )
))
(declare-fun thiss!20629 () LexerInterface!6051)

(declare-fun maxPrefix!3355 (LexerInterface!6051 List!41626 List!41624) Option!8882)

(assert (=> b!3915689 (= lt!1364242 (maxPrefix!3355 thiss!20629 rules!2768 lt!1364241))))

(declare-fun b!3915690 () Bool)

(declare-fun res!1583877 () Bool)

(assert (=> b!3915690 (=> res!1583877 e!2421040)))

(declare-fun isEmpty!24697 (List!41625) Bool)

(declare-fun tail!5993 (List!41625) List!41625)

(assert (=> b!3915690 (= res!1583877 (not (isEmpty!24697 (tail!5993 prefixTokens!80))))))

(declare-fun b!3915691 () Bool)

(declare-fun res!1583879 () Bool)

(declare-fun e!2421039 () Bool)

(assert (=> b!3915691 (=> res!1583879 e!2421039)))

(declare-datatypes ((tuple2!40756 0))(
  ( (tuple2!40757 (_1!23512 List!41625) (_2!23512 List!41624)) )
))
(declare-fun lt!1364226 () tuple2!40756)

(declare-fun lt!1364245 () tuple2!40756)

(declare-fun ++!10681 (List!41625 List!41625) List!41625)

(assert (=> b!3915691 (= res!1583879 (not (= lt!1364226 (tuple2!40757 (++!10681 (Cons!41501 (_1!23511 (v!39205 lt!1364242)) Nil!41501) (_1!23512 lt!1364245)) (_2!23512 lt!1364245)))))))

(declare-fun b!3915692 () Bool)

(assert (=> b!3915692 (= e!2421026 e!2421040)))

(declare-fun res!1583880 () Bool)

(assert (=> b!3915692 (=> res!1583880 e!2421040)))

(declare-fun lt!1364246 () Int)

(assert (=> b!3915692 (= res!1583880 (>= lt!1364234 lt!1364246))))

(assert (=> b!3915692 (= lt!1364234 (size!31160 (_2!23511 lt!1364233)))))

(declare-fun b!3915693 () Bool)

(declare-fun e!2421019 () Bool)

(assert (=> b!3915693 (= e!2421028 e!2421019)))

(declare-fun res!1583895 () Bool)

(assert (=> b!3915693 (=> res!1583895 e!2421019)))

(declare-fun lt!1364225 () Int)

(assert (=> b!3915693 (= res!1583895 (or (not (= (+ lt!1364225 lt!1364246) lt!1364229)) (<= lt!1364232 lt!1364225)))))

(declare-fun prefix!426 () List!41624)

(assert (=> b!3915693 (= lt!1364225 (size!31160 prefix!426))))

(declare-fun e!2421024 () Bool)

(declare-fun e!2421044 () Bool)

(declare-fun b!3915694 () Bool)

(declare-fun tp!1191885 () Bool)

(assert (=> b!3915694 (= e!2421044 (and tp!1191885 (inv!55688 (tag!7322 (h!46922 rules!2768))) (inv!55691 (transformation!6462 (h!46922 rules!2768))) e!2421024))))

(declare-fun b!3915679 () Bool)

(declare-fun res!1583876 () Bool)

(assert (=> b!3915679 (=> (not res!1583876) (not e!2421023))))

(declare-fun rulesInvariant!5394 (LexerInterface!6051 List!41626) Bool)

(assert (=> b!3915679 (= res!1583876 (rulesInvariant!5394 thiss!20629 rules!2768))))

(declare-fun res!1583891 () Bool)

(assert (=> start!366972 (=> (not res!1583891) (not e!2421023))))

(assert (=> start!366972 (= res!1583891 ((_ is Lexer!6049) thiss!20629))))

(assert (=> start!366972 e!2421023))

(declare-fun e!2421045 () Bool)

(assert (=> start!366972 e!2421045))

(assert (=> start!366972 true))

(declare-fun e!2421041 () Bool)

(assert (=> start!366972 e!2421041))

(declare-fun e!2421025 () Bool)

(assert (=> start!366972 e!2421025))

(declare-fun e!2421031 () Bool)

(assert (=> start!366972 e!2421031))

(declare-fun e!2421043 () Bool)

(assert (=> start!366972 e!2421043))

(assert (=> start!366972 e!2421033))

(declare-fun b!3915695 () Bool)

(declare-fun res!1583887 () Bool)

(assert (=> b!3915695 (=> (not res!1583887) (not e!2421023))))

(declare-fun isEmpty!24698 (List!41624) Bool)

(assert (=> b!3915695 (= res!1583887 (not (isEmpty!24698 prefix!426)))))

(declare-fun b!3915696 () Bool)

(assert (=> b!3915696 (= e!2421035 (not e!2421039))))

(declare-fun res!1583886 () Bool)

(assert (=> b!3915696 (=> res!1583886 e!2421039)))

(declare-fun lt!1364240 () List!41624)

(assert (=> b!3915696 (= res!1583886 (not (= lt!1364240 lt!1364241)))))

(declare-fun lexList!1819 (LexerInterface!6051 List!41626 List!41624) tuple2!40756)

(assert (=> b!3915696 (= lt!1364245 (lexList!1819 thiss!20629 rules!2768 (_2!23511 (v!39205 lt!1364242))))))

(declare-fun lt!1364239 () TokenValue!6692)

(declare-fun lt!1364227 () List!41624)

(assert (=> b!3915696 (and (= (size!31159 (_1!23511 (v!39205 lt!1364242))) lt!1364232) (= (originalCharacters!7062 (_1!23511 (v!39205 lt!1364242))) lt!1364236) (= (v!39205 lt!1364242) (tuple2!40755 (Token!12063 lt!1364239 (rule!9386 (_1!23511 (v!39205 lt!1364242))) lt!1364232 lt!1364236) lt!1364227)))))

(assert (=> b!3915696 (= lt!1364232 (size!31160 lt!1364236))))

(assert (=> b!3915696 e!2421021))

(declare-fun res!1583892 () Bool)

(assert (=> b!3915696 (=> (not res!1583892) (not e!2421021))))

(assert (=> b!3915696 (= res!1583892 (= (value!204801 (_1!23511 (v!39205 lt!1364242))) lt!1364239))))

(declare-fun apply!9701 (TokenValueInjection!12812 BalanceConc!24940) TokenValue!6692)

(declare-fun seqFromList!4729 (List!41624) BalanceConc!24940)

(assert (=> b!3915696 (= lt!1364239 (apply!9701 (transformation!6462 (rule!9386 (_1!23511 (v!39205 lt!1364242)))) (seqFromList!4729 lt!1364236)))))

(assert (=> b!3915696 (= (_2!23511 (v!39205 lt!1364242)) lt!1364227)))

(declare-fun lt!1364237 () Unit!59637)

(declare-fun lemmaSamePrefixThenSameSuffix!1778 (List!41624 List!41624 List!41624 List!41624 List!41624) Unit!59637)

(assert (=> b!3915696 (= lt!1364237 (lemmaSamePrefixThenSameSuffix!1778 lt!1364236 (_2!23511 (v!39205 lt!1364242)) lt!1364236 lt!1364227 lt!1364241))))

(declare-fun getSuffix!2012 (List!41624 List!41624) List!41624)

(assert (=> b!3915696 (= lt!1364227 (getSuffix!2012 lt!1364241 lt!1364236))))

(declare-fun isPrefix!3557 (List!41624 List!41624) Bool)

(assert (=> b!3915696 (isPrefix!3557 lt!1364236 lt!1364240)))

(declare-fun ++!10682 (List!41624 List!41624) List!41624)

(assert (=> b!3915696 (= lt!1364240 (++!10682 lt!1364236 (_2!23511 (v!39205 lt!1364242))))))

(declare-fun lt!1364228 () Unit!59637)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2420 (List!41624 List!41624) Unit!59637)

(assert (=> b!3915696 (= lt!1364228 (lemmaConcatTwoListThenFirstIsPrefix!2420 lt!1364236 (_2!23511 (v!39205 lt!1364242))))))

(declare-fun list!15429 (BalanceConc!24940) List!41624)

(declare-fun charsOf!4286 (Token!12062) BalanceConc!24940)

(assert (=> b!3915696 (= lt!1364236 (list!15429 (charsOf!4286 (_1!23511 (v!39205 lt!1364242)))))))

(declare-fun ruleValid!2410 (LexerInterface!6051 Rule!12724) Bool)

(assert (=> b!3915696 (ruleValid!2410 thiss!20629 (rule!9386 (_1!23511 (v!39205 lt!1364242))))))

(declare-fun lt!1364243 () Unit!59637)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1490 (LexerInterface!6051 Rule!12724 List!41626) Unit!59637)

(assert (=> b!3915696 (= lt!1364243 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1490 thiss!20629 (rule!9386 (_1!23511 (v!39205 lt!1364242))) rules!2768))))

(declare-fun lt!1364230 () Unit!59637)

(declare-fun lemmaCharactersSize!1119 (Token!12062) Unit!59637)

(assert (=> b!3915696 (= lt!1364230 (lemmaCharactersSize!1119 (_1!23511 (v!39205 lt!1364242))))))

(declare-fun b!3915697 () Bool)

(assert (=> b!3915697 (= e!2421023 e!2421030)))

(declare-fun res!1583889 () Bool)

(assert (=> b!3915697 (=> (not res!1583889) (not e!2421030))))

(declare-fun suffixResult!91 () List!41624)

(declare-fun lt!1364238 () List!41625)

(assert (=> b!3915697 (= res!1583889 (= lt!1364226 (tuple2!40757 lt!1364238 suffixResult!91)))))

(assert (=> b!3915697 (= lt!1364226 (lexList!1819 thiss!20629 rules!2768 lt!1364241))))

(assert (=> b!3915697 (= lt!1364238 (++!10681 prefixTokens!80 suffixTokens!72))))

(declare-fun suffix!1176 () List!41624)

(assert (=> b!3915697 (= lt!1364241 (++!10682 prefix!426 suffix!1176))))

(declare-fun b!3915698 () Bool)

(declare-fun res!1583885 () Bool)

(assert (=> b!3915698 (=> res!1583885 e!2421040)))

(assert (=> b!3915698 (= res!1583885 (or (not (= prefixTokens!80 (Cons!41501 lt!1364247 Nil!41501))) (not (= (_1!23511 (v!39205 lt!1364242)) lt!1364247))))))

(declare-fun b!3915699 () Bool)

(declare-fun tp!1191878 () Bool)

(declare-fun inv!55692 (Token!12062) Bool)

(assert (=> b!3915699 (= e!2421031 (and (inv!55692 (h!46921 prefixTokens!80)) e!2421037 tp!1191878))))

(declare-fun b!3915700 () Bool)

(assert (=> b!3915700 (= e!2421019 e!2421017)))

(declare-fun res!1583890 () Bool)

(assert (=> b!3915700 (=> res!1583890 e!2421017)))

(declare-fun matchR!5456 (Regex!11367 List!41624) Bool)

(assert (=> b!3915700 (= res!1583890 (not (matchR!5456 (regex!6462 (rule!9386 (_1!23511 (v!39205 lt!1364242)))) lt!1364236)))))

(declare-fun maxPrefixOneRule!2425 (LexerInterface!6051 Rule!12724 List!41624) Option!8882)

(assert (=> b!3915700 (= (maxPrefixOneRule!2425 thiss!20629 (rule!9386 (_1!23511 (v!39205 lt!1364242))) lt!1364241) (Some!8881 (tuple2!40755 (Token!12063 lt!1364239 (rule!9386 (_1!23511 (v!39205 lt!1364242))) lt!1364232 lt!1364236) (_2!23511 (v!39205 lt!1364242)))))))

(declare-fun lt!1364231 () Unit!59637)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1293 (LexerInterface!6051 List!41626 List!41624 List!41624 List!41624 Rule!12724) Unit!59637)

(assert (=> b!3915700 (= lt!1364231 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1293 thiss!20629 rules!2768 lt!1364236 lt!1364241 (_2!23511 (v!39205 lt!1364242)) (rule!9386 (_1!23511 (v!39205 lt!1364242)))))))

(declare-fun tp!1191879 () Bool)

(declare-fun b!3915701 () Bool)

(declare-fun e!2421032 () Bool)

(assert (=> b!3915701 (= e!2421043 (and (inv!55692 (h!46921 suffixTokens!72)) e!2421032 tp!1191879))))

(declare-fun b!3915702 () Bool)

(declare-fun res!1583888 () Bool)

(assert (=> b!3915702 (=> (not res!1583888) (not e!2421023))))

(assert (=> b!3915702 (= res!1583888 (not (isEmpty!24697 prefixTokens!80)))))

(declare-fun b!3915703 () Bool)

(assert (=> b!3915703 (= e!2421039 e!2421034)))

(declare-fun res!1583896 () Bool)

(assert (=> b!3915703 (=> res!1583896 e!2421034)))

(assert (=> b!3915703 (= res!1583896 (>= lt!1364235 lt!1364246))))

(assert (=> b!3915703 (= lt!1364246 (size!31160 suffix!1176))))

(assert (=> b!3915703 (= lt!1364235 (size!31160 (_2!23511 (v!39205 lt!1364242))))))

(declare-fun b!3915704 () Bool)

(declare-fun res!1583878 () Bool)

(assert (=> b!3915704 (=> (not res!1583878) (not e!2421030))))

(assert (=> b!3915704 (= res!1583878 (= (lexList!1819 thiss!20629 rules!2768 suffix!1176) (tuple2!40757 suffixTokens!72 suffixResult!91)))))

(assert (=> b!3915705 (= e!2421027 (and tp!1191892 tp!1191880))))

(declare-fun b!3915706 () Bool)

(declare-fun tp!1191884 () Bool)

(assert (=> b!3915706 (= e!2421041 (and tp_is_empty!19705 tp!1191884))))

(declare-fun b!3915707 () Bool)

(declare-fun tp!1191889 () Bool)

(assert (=> b!3915707 (= e!2421025 (and e!2421044 tp!1191889))))

(declare-fun b!3915708 () Bool)

(declare-fun tp!1191893 () Bool)

(assert (=> b!3915708 (= e!2421032 (and (inv!21 (value!204801 (h!46921 suffixTokens!72))) e!2421046 tp!1191893))))

(declare-fun b!3915709 () Bool)

(declare-fun tp!1191886 () Bool)

(assert (=> b!3915709 (= e!2421045 (and tp_is_empty!19705 tp!1191886))))

(declare-fun b!3915710 () Bool)

(declare-fun res!1583893 () Bool)

(assert (=> b!3915710 (=> res!1583893 e!2421039)))

(assert (=> b!3915710 (= res!1583893 (or (not (= lt!1364245 (tuple2!40757 (_1!23512 lt!1364245) (_2!23512 lt!1364245)))) (= (_2!23511 (v!39205 lt!1364242)) suffix!1176)))))

(declare-fun b!3915711 () Bool)

(declare-fun res!1583882 () Bool)

(assert (=> b!3915711 (=> res!1583882 e!2421040)))

(assert (=> b!3915711 (= res!1583882 (not (= lt!1364240 (++!10682 lt!1364236 (_2!23511 lt!1364233)))))))

(assert (=> b!3915712 (= e!2421024 (and tp!1191887 tp!1191881))))

(assert (= (and start!366972 res!1583891) b!3915682))

(assert (= (and b!3915682 res!1583894) b!3915679))

(assert (= (and b!3915679 res!1583876) b!3915702))

(assert (= (and b!3915702 res!1583888) b!3915695))

(assert (= (and b!3915695 res!1583887) b!3915697))

(assert (= (and b!3915697 res!1583889) b!3915704))

(assert (= (and b!3915704 res!1583878) b!3915689))

(assert (= (and b!3915689 res!1583884) b!3915696))

(assert (= (and b!3915696 res!1583892) b!3915688))

(assert (= (and b!3915696 (not res!1583886)) b!3915691))

(assert (= (and b!3915691 (not res!1583879)) b!3915710))

(assert (= (and b!3915710 (not res!1583893)) b!3915703))

(assert (= (and b!3915703 (not res!1583896)) b!3915684))

(assert (= (and b!3915684 (not res!1583881)) b!3915693))

(assert (= (and b!3915693 (not res!1583895)) b!3915700))

(assert (= (and b!3915700 (not res!1583890)) b!3915687))

(assert (= (and b!3915687 (not res!1583883)) b!3915692))

(assert (= (and b!3915692 (not res!1583880)) b!3915690))

(assert (= (and b!3915690 (not res!1583877)) b!3915698))

(assert (= (and b!3915698 (not res!1583885)) b!3915711))

(assert (= (and b!3915711 (not res!1583882)) b!3915685))

(assert (= (and start!366972 ((_ is Cons!41500) suffixResult!91)) b!3915709))

(assert (= (and start!366972 ((_ is Cons!41500) suffix!1176)) b!3915706))

(assert (= b!3915694 b!3915712))

(assert (= b!3915707 b!3915694))

(assert (= (and start!366972 ((_ is Cons!41502) rules!2768)) b!3915707))

(assert (= b!3915681 b!3915705))

(assert (= b!3915678 b!3915681))

(assert (= b!3915699 b!3915678))

(assert (= (and start!366972 ((_ is Cons!41501) prefixTokens!80)) b!3915699))

(assert (= b!3915680 b!3915686))

(assert (= b!3915708 b!3915680))

(assert (= b!3915701 b!3915708))

(assert (= (and start!366972 ((_ is Cons!41501) suffixTokens!72)) b!3915701))

(assert (= (and start!366972 ((_ is Cons!41500) prefix!426)) b!3915683))

(declare-fun m!4478995 () Bool)

(assert (=> b!3915697 m!4478995))

(declare-fun m!4478997 () Bool)

(assert (=> b!3915697 m!4478997))

(declare-fun m!4478999 () Bool)

(assert (=> b!3915697 m!4478999))

(declare-fun m!4479001 () Bool)

(assert (=> b!3915678 m!4479001))

(declare-fun m!4479003 () Bool)

(assert (=> b!3915688 m!4479003))

(declare-fun m!4479005 () Bool)

(assert (=> b!3915708 m!4479005))

(declare-fun m!4479007 () Bool)

(assert (=> b!3915679 m!4479007))

(declare-fun m!4479009 () Bool)

(assert (=> b!3915694 m!4479009))

(declare-fun m!4479011 () Bool)

(assert (=> b!3915694 m!4479011))

(declare-fun m!4479013 () Bool)

(assert (=> b!3915702 m!4479013))

(declare-fun m!4479015 () Bool)

(assert (=> b!3915701 m!4479015))

(declare-fun m!4479017 () Bool)

(assert (=> b!3915703 m!4479017))

(declare-fun m!4479019 () Bool)

(assert (=> b!3915703 m!4479019))

(declare-fun m!4479021 () Bool)

(assert (=> b!3915680 m!4479021))

(declare-fun m!4479023 () Bool)

(assert (=> b!3915680 m!4479023))

(declare-fun m!4479025 () Bool)

(assert (=> b!3915699 m!4479025))

(declare-fun m!4479027 () Bool)

(assert (=> b!3915696 m!4479027))

(declare-fun m!4479029 () Bool)

(assert (=> b!3915696 m!4479029))

(declare-fun m!4479031 () Bool)

(assert (=> b!3915696 m!4479031))

(assert (=> b!3915696 m!4479031))

(declare-fun m!4479033 () Bool)

(assert (=> b!3915696 m!4479033))

(declare-fun m!4479035 () Bool)

(assert (=> b!3915696 m!4479035))

(declare-fun m!4479037 () Bool)

(assert (=> b!3915696 m!4479037))

(assert (=> b!3915696 m!4479035))

(declare-fun m!4479039 () Bool)

(assert (=> b!3915696 m!4479039))

(declare-fun m!4479041 () Bool)

(assert (=> b!3915696 m!4479041))

(declare-fun m!4479043 () Bool)

(assert (=> b!3915696 m!4479043))

(declare-fun m!4479045 () Bool)

(assert (=> b!3915696 m!4479045))

(declare-fun m!4479047 () Bool)

(assert (=> b!3915696 m!4479047))

(declare-fun m!4479049 () Bool)

(assert (=> b!3915696 m!4479049))

(declare-fun m!4479051 () Bool)

(assert (=> b!3915696 m!4479051))

(declare-fun m!4479053 () Bool)

(assert (=> b!3915696 m!4479053))

(declare-fun m!4479055 () Bool)

(assert (=> b!3915684 m!4479055))

(declare-fun m!4479057 () Bool)

(assert (=> b!3915695 m!4479057))

(declare-fun m!4479059 () Bool)

(assert (=> b!3915691 m!4479059))

(declare-fun m!4479061 () Bool)

(assert (=> b!3915689 m!4479061))

(declare-fun m!4479063 () Bool)

(assert (=> b!3915690 m!4479063))

(assert (=> b!3915690 m!4479063))

(declare-fun m!4479065 () Bool)

(assert (=> b!3915690 m!4479065))

(declare-fun m!4479067 () Bool)

(assert (=> b!3915681 m!4479067))

(declare-fun m!4479069 () Bool)

(assert (=> b!3915681 m!4479069))

(declare-fun m!4479071 () Bool)

(assert (=> b!3915711 m!4479071))

(declare-fun m!4479073 () Bool)

(assert (=> b!3915687 m!4479073))

(declare-fun m!4479075 () Bool)

(assert (=> b!3915687 m!4479075))

(declare-fun m!4479077 () Bool)

(assert (=> b!3915693 m!4479077))

(declare-fun m!4479079 () Bool)

(assert (=> b!3915700 m!4479079))

(declare-fun m!4479081 () Bool)

(assert (=> b!3915700 m!4479081))

(declare-fun m!4479083 () Bool)

(assert (=> b!3915700 m!4479083))

(declare-fun m!4479085 () Bool)

(assert (=> b!3915682 m!4479085))

(declare-fun m!4479087 () Bool)

(assert (=> b!3915685 m!4479087))

(declare-fun m!4479089 () Bool)

(assert (=> b!3915704 m!4479089))

(declare-fun m!4479091 () Bool)

(assert (=> b!3915692 m!4479091))

(check-sat (not b!3915690) (not b!3915683) b_and!298121 (not b!3915692) (not b!3915679) (not b!3915708) (not b_next!107037) b_and!298123 (not b!3915681) (not b!3915702) (not b!3915694) (not b!3915699) (not b_next!107033) (not b!3915680) (not b!3915701) (not b!3915689) (not b!3915682) (not b_next!107039) b_and!298115 (not b!3915678) b_and!298117 (not b!3915706) (not b!3915685) (not b!3915709) (not b!3915700) (not b_next!107029) (not b!3915704) (not b!3915684) (not b!3915695) (not b!3915696) (not b!3915693) (not b_next!107031) tp_is_empty!19705 (not b!3915711) (not b!3915703) (not b!3915688) b_and!298119 (not b!3915691) (not b!3915697) (not b_next!107035) (not b!3915707) b_and!298125 (not b!3915687))
(check-sat (not b_next!107033) b_and!298117 b_and!298121 (not b_next!107029) (not b_next!107031) b_and!298119 (not b_next!107035) b_and!298125 (not b_next!107037) b_and!298123 (not b_next!107039) b_and!298115)
