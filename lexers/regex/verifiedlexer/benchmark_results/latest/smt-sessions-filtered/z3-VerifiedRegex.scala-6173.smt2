; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!298422 () Bool)

(assert start!298422)

(declare-fun b!3183555 () Bool)

(declare-fun b_free!83985 () Bool)

(declare-fun b_next!84689 () Bool)

(assert (=> b!3183555 (= b_free!83985 (not b_next!84689))))

(declare-fun tp!1006930 () Bool)

(declare-fun b_and!210555 () Bool)

(assert (=> b!3183555 (= tp!1006930 b_and!210555)))

(declare-fun b_free!83987 () Bool)

(declare-fun b_next!84691 () Bool)

(assert (=> b!3183555 (= b_free!83987 (not b_next!84691))))

(declare-fun tp!1006935 () Bool)

(declare-fun b_and!210557 () Bool)

(assert (=> b!3183555 (= tp!1006935 b_and!210557)))

(declare-fun b!3183531 () Bool)

(declare-fun b_free!83989 () Bool)

(declare-fun b_next!84693 () Bool)

(assert (=> b!3183531 (= b_free!83989 (not b_next!84693))))

(declare-fun tp!1006931 () Bool)

(declare-fun b_and!210559 () Bool)

(assert (=> b!3183531 (= tp!1006931 b_and!210559)))

(declare-fun b_free!83991 () Bool)

(declare-fun b_next!84695 () Bool)

(assert (=> b!3183531 (= b_free!83991 (not b_next!84695))))

(declare-fun tp!1006940 () Bool)

(declare-fun b_and!210561 () Bool)

(assert (=> b!3183531 (= tp!1006940 b_and!210561)))

(declare-fun b!3183547 () Bool)

(declare-fun b_free!83993 () Bool)

(declare-fun b_next!84697 () Bool)

(assert (=> b!3183547 (= b_free!83993 (not b_next!84697))))

(declare-fun tp!1006934 () Bool)

(declare-fun b_and!210563 () Bool)

(assert (=> b!3183547 (= tp!1006934 b_and!210563)))

(declare-fun b_free!83995 () Bool)

(declare-fun b_next!84699 () Bool)

(assert (=> b!3183547 (= b_free!83995 (not b_next!84699))))

(declare-fun tp!1006939 () Bool)

(declare-fun b_and!210565 () Bool)

(assert (=> b!3183547 (= tp!1006939 b_and!210565)))

(declare-fun e!1983555 () Bool)

(declare-datatypes ((C!19956 0))(
  ( (C!19957 (val!12026 Int)) )
))
(declare-datatypes ((Regex!9885 0))(
  ( (ElementMatch!9885 (c!534684 C!19956)) (Concat!15241 (regOne!20282 Regex!9885) (regTwo!20282 Regex!9885)) (EmptyExpr!9885) (Star!9885 (reg!10214 Regex!9885)) (EmptyLang!9885) (Union!9885 (regOne!20283 Regex!9885) (regTwo!20283 Regex!9885)) )
))
(declare-datatypes ((List!35890 0))(
  ( (Nil!35766) (Cons!35766 (h!41186 (_ BitVec 16)) (t!235389 List!35890)) )
))
(declare-datatypes ((TokenValue!5356 0))(
  ( (FloatLiteralValue!10712 (text!37937 List!35890)) (TokenValueExt!5355 (__x!22929 Int)) (Broken!26780 (value!166525 List!35890)) (Object!5479) (End!5356) (Def!5356) (Underscore!5356) (Match!5356) (Else!5356) (Error!5356) (Case!5356) (If!5356) (Extends!5356) (Abstract!5356) (Class!5356) (Val!5356) (DelimiterValue!10712 (del!5416 List!35890)) (KeywordValue!5362 (value!166526 List!35890)) (CommentValue!10712 (value!166527 List!35890)) (WhitespaceValue!10712 (value!166528 List!35890)) (IndentationValue!5356 (value!166529 List!35890)) (String!40113) (Int32!5356) (Broken!26781 (value!166530 List!35890)) (Boolean!5357) (Unit!50169) (OperatorValue!5359 (op!5416 List!35890)) (IdentifierValue!10712 (value!166531 List!35890)) (IdentifierValue!10713 (value!166532 List!35890)) (WhitespaceValue!10713 (value!166533 List!35890)) (True!10712) (False!10712) (Broken!26782 (value!166534 List!35890)) (Broken!26783 (value!166535 List!35890)) (True!10713) (RightBrace!5356) (RightBracket!5356) (Colon!5356) (Null!5356) (Comma!5356) (LeftBracket!5356) (False!10713) (LeftBrace!5356) (ImaginaryLiteralValue!5356 (text!37938 List!35890)) (StringLiteralValue!16068 (value!166536 List!35890)) (EOFValue!5356 (value!166537 List!35890)) (IdentValue!5356 (value!166538 List!35890)) (DelimiterValue!10713 (value!166539 List!35890)) (DedentValue!5356 (value!166540 List!35890)) (NewLineValue!5356 (value!166541 List!35890)) (IntegerValue!16068 (value!166542 (_ BitVec 32)) (text!37939 List!35890)) (IntegerValue!16069 (value!166543 Int) (text!37940 List!35890)) (Times!5356) (Or!5356) (Equal!5356) (Minus!5356) (Broken!26784 (value!166544 List!35890)) (And!5356) (Div!5356) (LessEqual!5356) (Mod!5356) (Concat!15242) (Not!5356) (Plus!5356) (SpaceValue!5356 (value!166545 List!35890)) (IntegerValue!16070 (value!166546 Int) (text!37941 List!35890)) (StringLiteralValue!16069 (text!37942 List!35890)) (FloatLiteralValue!10713 (text!37943 List!35890)) (BytesLiteralValue!5356 (value!166547 List!35890)) (CommentValue!10713 (value!166548 List!35890)) (StringLiteralValue!16070 (value!166549 List!35890)) (ErrorTokenValue!5356 (msg!5417 List!35890)) )
))
(declare-datatypes ((List!35891 0))(
  ( (Nil!35767) (Cons!35767 (h!41187 C!19956) (t!235390 List!35891)) )
))
(declare-datatypes ((IArray!21259 0))(
  ( (IArray!21260 (innerList!10687 List!35891)) )
))
(declare-datatypes ((Conc!10627 0))(
  ( (Node!10627 (left!27820 Conc!10627) (right!28150 Conc!10627) (csize!21484 Int) (cheight!10838 Int)) (Leaf!16801 (xs!13745 IArray!21259) (csize!21485 Int)) (Empty!10627) )
))
(declare-datatypes ((BalanceConc!20868 0))(
  ( (BalanceConc!20869 (c!534685 Conc!10627)) )
))
(declare-datatypes ((String!40114 0))(
  ( (String!40115 (value!166550 String)) )
))
(declare-datatypes ((TokenValueInjection!10140 0))(
  ( (TokenValueInjection!10141 (toValue!7186 Int) (toChars!7045 Int)) )
))
(declare-datatypes ((Rule!10052 0))(
  ( (Rule!10053 (regex!5126 Regex!9885) (tag!5638 String!40114) (isSeparator!5126 Bool) (transformation!5126 TokenValueInjection!10140)) )
))
(declare-datatypes ((Token!9618 0))(
  ( (Token!9619 (value!166551 TokenValue!5356) (rule!7544 Rule!10052) (size!26990 Int) (originalCharacters!5840 List!35891)) )
))
(declare-datatypes ((List!35892 0))(
  ( (Nil!35768) (Cons!35768 (h!41188 Token!9618) (t!235391 List!35892)) )
))
(declare-fun tokens!494 () List!35892)

(declare-fun e!1983568 () Bool)

(declare-fun b!3183525 () Bool)

(declare-fun tp!1006936 () Bool)

(declare-fun inv!48617 (String!40114) Bool)

(declare-fun inv!48620 (TokenValueInjection!10140) Bool)

(assert (=> b!3183525 (= e!1983555 (and tp!1006936 (inv!48617 (tag!5638 (rule!7544 (h!41188 tokens!494)))) (inv!48620 (transformation!5126 (rule!7544 (h!41188 tokens!494)))) e!1983568))))

(declare-fun b!3183526 () Bool)

(declare-fun e!1983545 () Bool)

(assert (=> b!3183526 (= e!1983545 false)))

(declare-fun b!3183527 () Bool)

(declare-fun e!1983544 () Bool)

(declare-fun e!1983560 () Bool)

(assert (=> b!3183527 (= e!1983544 e!1983560)))

(declare-fun res!1294037 () Bool)

(assert (=> b!3183527 (=> res!1294037 e!1983560)))

(declare-fun lt!1070391 () List!35891)

(declare-fun lt!1070376 () List!35891)

(declare-fun lt!1070388 () List!35891)

(assert (=> b!3183527 (= res!1294037 (or (not (= lt!1070376 lt!1070388)) (not (= lt!1070391 lt!1070388))))))

(declare-fun list!12699 (BalanceConc!20868) List!35891)

(declare-fun charsOf!3148 (Token!9618) BalanceConc!20868)

(assert (=> b!3183527 (= lt!1070388 (list!12699 (charsOf!3148 (h!41188 tokens!494))))))

(declare-fun res!1294038 () Bool)

(declare-fun e!1983556 () Bool)

(assert (=> start!298422 (=> (not res!1294038) (not e!1983556))))

(declare-datatypes ((LexerInterface!4715 0))(
  ( (LexerInterfaceExt!4712 (__x!22930 Int)) (Lexer!4713) )
))
(declare-fun thiss!18206 () LexerInterface!4715)

(get-info :version)

(assert (=> start!298422 (= res!1294038 ((_ is Lexer!4713) thiss!18206))))

(assert (=> start!298422 e!1983556))

(assert (=> start!298422 true))

(declare-fun e!1983557 () Bool)

(assert (=> start!298422 e!1983557))

(declare-fun separatorToken!241 () Token!9618)

(declare-fun e!1983569 () Bool)

(declare-fun inv!48621 (Token!9618) Bool)

(assert (=> start!298422 (and (inv!48621 separatorToken!241) e!1983569)))

(declare-fun e!1983558 () Bool)

(assert (=> start!298422 e!1983558))

(declare-fun b!3183528 () Bool)

(declare-fun e!1983561 () Bool)

(assert (=> b!3183528 (= e!1983561 true)))

(declare-fun lt!1070381 () Bool)

(declare-datatypes ((List!35893 0))(
  ( (Nil!35769) (Cons!35769 (h!41189 Rule!10052) (t!235392 List!35893)) )
))
(declare-fun rules!2135 () List!35893)

(declare-fun contains!6334 (List!35893 Rule!10052) Bool)

(assert (=> b!3183528 (= lt!1070381 (contains!6334 rules!2135 (rule!7544 (h!41188 tokens!494))))))

(declare-fun b!3183529 () Bool)

(declare-fun e!1983564 () Bool)

(assert (=> b!3183529 (= e!1983556 e!1983564)))

(declare-fun res!1294020 () Bool)

(assert (=> b!3183529 (=> (not res!1294020) (not e!1983564))))

(declare-datatypes ((IArray!21261 0))(
  ( (IArray!21262 (innerList!10688 List!35892)) )
))
(declare-datatypes ((Conc!10628 0))(
  ( (Node!10628 (left!27821 Conc!10628) (right!28151 Conc!10628) (csize!21486 Int) (cheight!10839 Int)) (Leaf!16802 (xs!13746 IArray!21261) (csize!21487 Int)) (Empty!10628) )
))
(declare-datatypes ((BalanceConc!20870 0))(
  ( (BalanceConc!20871 (c!534686 Conc!10628)) )
))
(declare-fun lt!1070389 () BalanceConc!20870)

(declare-fun rulesProduceEachTokenIndividually!1166 (LexerInterface!4715 List!35893 BalanceConc!20870) Bool)

(assert (=> b!3183529 (= res!1294020 (rulesProduceEachTokenIndividually!1166 thiss!18206 rules!2135 lt!1070389))))

(declare-fun seqFromList!3331 (List!35892) BalanceConc!20870)

(assert (=> b!3183529 (= lt!1070389 (seqFromList!3331 tokens!494))))

(declare-fun b!3183530 () Bool)

(declare-fun e!1983551 () Bool)

(declare-fun e!1983563 () Bool)

(assert (=> b!3183530 (= e!1983551 e!1983563)))

(declare-fun res!1294027 () Bool)

(assert (=> b!3183530 (=> (not res!1294027) (not e!1983563))))

(declare-fun lt!1070374 () Rule!10052)

(declare-fun lt!1070382 () List!35891)

(declare-fun matchR!4543 (Regex!9885 List!35891) Bool)

(assert (=> b!3183530 (= res!1294027 (matchR!4543 (regex!5126 lt!1070374) lt!1070382))))

(declare-datatypes ((Option!6983 0))(
  ( (None!6982) (Some!6982 (v!35452 Rule!10052)) )
))
(declare-fun lt!1070396 () Option!6983)

(declare-fun get!11378 (Option!6983) Rule!10052)

(assert (=> b!3183530 (= lt!1070374 (get!11378 lt!1070396))))

(assert (=> b!3183531 (= e!1983568 (and tp!1006931 tp!1006940))))

(declare-fun b!3183532 () Bool)

(declare-fun e!1983570 () Bool)

(declare-fun tp!1006941 () Bool)

(assert (=> b!3183532 (= e!1983558 (and (inv!48621 (h!41188 tokens!494)) e!1983570 tp!1006941))))

(declare-fun b!3183533 () Bool)

(declare-fun res!1294026 () Bool)

(assert (=> b!3183533 (=> (not res!1294026) (not e!1983564))))

(declare-fun sepAndNonSepRulesDisjointChars!1320 (List!35893 List!35893) Bool)

(assert (=> b!3183533 (= res!1294026 (sepAndNonSepRulesDisjointChars!1320 rules!2135 rules!2135))))

(declare-fun b!3183534 () Bool)

(declare-fun res!1294021 () Bool)

(assert (=> b!3183534 (=> res!1294021 e!1983561)))

(assert (=> b!3183534 (= res!1294021 (not (contains!6334 rules!2135 (rule!7544 separatorToken!241))))))

(declare-fun b!3183535 () Bool)

(declare-fun tp!1006932 () Bool)

(declare-fun inv!21 (TokenValue!5356) Bool)

(assert (=> b!3183535 (= e!1983570 (and (inv!21 (value!166551 (h!41188 tokens!494))) e!1983555 tp!1006932))))

(declare-fun b!3183536 () Bool)

(declare-datatypes ((Unit!50170 0))(
  ( (Unit!50171) )
))
(declare-fun e!1983550 () Unit!50170)

(declare-fun Unit!50172 () Unit!50170)

(assert (=> b!3183536 (= e!1983550 Unit!50172)))

(declare-fun b!3183537 () Bool)

(declare-fun e!1983562 () Bool)

(declare-fun tp!1006942 () Bool)

(assert (=> b!3183537 (= e!1983569 (and (inv!21 (value!166551 separatorToken!241)) e!1983562 tp!1006942))))

(declare-fun b!3183538 () Bool)

(declare-fun res!1294033 () Bool)

(assert (=> b!3183538 (=> (not res!1294033) (not e!1983556))))

(declare-fun isEmpty!19897 (List!35893) Bool)

(assert (=> b!3183538 (= res!1294033 (not (isEmpty!19897 rules!2135)))))

(declare-fun b!3183539 () Bool)

(declare-fun res!1294019 () Bool)

(assert (=> b!3183539 (=> (not res!1294019) (not e!1983564))))

(assert (=> b!3183539 (= res!1294019 (isSeparator!5126 (rule!7544 separatorToken!241)))))

(declare-fun b!3183540 () Bool)

(declare-fun res!1294030 () Bool)

(assert (=> b!3183540 (=> (not res!1294030) (not e!1983564))))

(assert (=> b!3183540 (= res!1294030 (and (not ((_ is Nil!35768) tokens!494)) ((_ is Nil!35768) (t!235391 tokens!494))))))

(declare-fun b!3183541 () Bool)

(declare-fun e!1983552 () Bool)

(assert (=> b!3183541 (= e!1983552 e!1983561)))

(declare-fun res!1294034 () Bool)

(assert (=> b!3183541 (=> res!1294034 e!1983561)))

(declare-fun lt!1070380 () Bool)

(assert (=> b!3183541 (= res!1294034 lt!1070380)))

(declare-fun lt!1070375 () Unit!50170)

(assert (=> b!3183541 (= lt!1070375 e!1983550)))

(declare-fun c!534683 () Bool)

(assert (=> b!3183541 (= c!534683 lt!1070380)))

(declare-fun lt!1070379 () C!19956)

(declare-fun contains!6335 (List!35891 C!19956) Bool)

(declare-fun usedCharacters!470 (Regex!9885) List!35891)

(assert (=> b!3183541 (= lt!1070380 (not (contains!6335 (usedCharacters!470 (regex!5126 (rule!7544 separatorToken!241))) lt!1070379)))))

(declare-fun head!6955 (List!35891) C!19956)

(assert (=> b!3183541 (= lt!1070379 (head!6955 lt!1070382))))

(declare-fun lt!1070394 () BalanceConc!20868)

(declare-datatypes ((tuple2!35118 0))(
  ( (tuple2!35119 (_1!20693 Token!9618) (_2!20693 List!35891)) )
))
(declare-datatypes ((Option!6984 0))(
  ( (None!6983) (Some!6983 (v!35453 tuple2!35118)) )
))
(declare-fun maxPrefixOneRule!1520 (LexerInterface!4715 Rule!10052 List!35891) Option!6984)

(declare-fun apply!8050 (TokenValueInjection!10140 BalanceConc!20868) TokenValue!5356)

(declare-fun size!26991 (List!35891) Int)

(assert (=> b!3183541 (= (maxPrefixOneRule!1520 thiss!18206 (rule!7544 (h!41188 tokens!494)) lt!1070388) (Some!6983 (tuple2!35119 (Token!9619 (apply!8050 (transformation!5126 (rule!7544 (h!41188 tokens!494))) lt!1070394) (rule!7544 (h!41188 tokens!494)) (size!26991 lt!1070388) lt!1070388) Nil!35767)))))

(declare-fun lt!1070384 () Unit!50170)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!633 (LexerInterface!4715 List!35893 List!35891 List!35891 List!35891 Rule!10052) Unit!50170)

(assert (=> b!3183541 (= lt!1070384 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!633 thiss!18206 rules!2135 lt!1070388 lt!1070388 Nil!35767 (rule!7544 (h!41188 tokens!494))))))

(assert (=> b!3183541 e!1983551))

(declare-fun res!1294031 () Bool)

(assert (=> b!3183541 (=> (not res!1294031) (not e!1983551))))

(declare-fun isDefined!5470 (Option!6983) Bool)

(assert (=> b!3183541 (= res!1294031 (isDefined!5470 lt!1070396))))

(declare-fun getRuleFromTag!855 (LexerInterface!4715 List!35893 String!40114) Option!6983)

(assert (=> b!3183541 (= lt!1070396 (getRuleFromTag!855 thiss!18206 rules!2135 (tag!5638 (rule!7544 separatorToken!241))))))

(declare-fun lt!1070395 () Unit!50170)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!855 (LexerInterface!4715 List!35893 List!35891 Token!9618) Unit!50170)

(assert (=> b!3183541 (= lt!1070395 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!855 thiss!18206 rules!2135 lt!1070382 separatorToken!241))))

(declare-fun e!1983546 () Bool)

(assert (=> b!3183541 e!1983546))

(declare-fun res!1294018 () Bool)

(assert (=> b!3183541 (=> (not res!1294018) (not e!1983546))))

(declare-fun lt!1070392 () Option!6983)

(assert (=> b!3183541 (= res!1294018 (isDefined!5470 lt!1070392))))

(assert (=> b!3183541 (= lt!1070392 (getRuleFromTag!855 thiss!18206 rules!2135 (tag!5638 (rule!7544 (h!41188 tokens!494)))))))

(declare-fun lt!1070373 () Unit!50170)

(assert (=> b!3183541 (= lt!1070373 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!855 thiss!18206 rules!2135 lt!1070388 (h!41188 tokens!494)))))

(declare-fun lt!1070393 () Unit!50170)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!776 (LexerInterface!4715 List!35893 List!35892 Token!9618) Unit!50170)

(assert (=> b!3183541 (= lt!1070393 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!776 thiss!18206 rules!2135 tokens!494 (h!41188 tokens!494)))))

(declare-fun isEmpty!19898 (List!35891) Bool)

(declare-fun getSuffix!1342 (List!35891 List!35891) List!35891)

(assert (=> b!3183541 (isEmpty!19898 (getSuffix!1342 lt!1070388 lt!1070388))))

(declare-fun lt!1070378 () Unit!50170)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!20 (List!35891) Unit!50170)

(assert (=> b!3183541 (= lt!1070378 (lemmaGetSuffixOnListWithItSelfIsEmpty!20 lt!1070388))))

(declare-fun b!3183542 () Bool)

(assert (=> b!3183542 (= e!1983563 (= (rule!7544 separatorToken!241) lt!1070374))))

(declare-fun tp!1006937 () Bool)

(declare-fun e!1983549 () Bool)

(declare-fun b!3183543 () Bool)

(assert (=> b!3183543 (= e!1983562 (and tp!1006937 (inv!48617 (tag!5638 (rule!7544 separatorToken!241))) (inv!48620 (transformation!5126 (rule!7544 separatorToken!241))) e!1983549))))

(declare-fun b!3183544 () Bool)

(declare-fun e!1983543 () Bool)

(assert (=> b!3183544 (= e!1983560 e!1983543)))

(declare-fun res!1294035 () Bool)

(assert (=> b!3183544 (=> res!1294035 e!1983543)))

(declare-fun isEmpty!19899 (BalanceConc!20870) Bool)

(declare-datatypes ((tuple2!35120 0))(
  ( (tuple2!35121 (_1!20694 BalanceConc!20870) (_2!20694 BalanceConc!20868)) )
))
(declare-fun lex!2055 (LexerInterface!4715 List!35893 BalanceConc!20868) tuple2!35120)

(assert (=> b!3183544 (= res!1294035 (isEmpty!19899 (_1!20694 (lex!2055 thiss!18206 rules!2135 lt!1070394))))))

(declare-fun seqFromList!3332 (List!35891) BalanceConc!20868)

(assert (=> b!3183544 (= lt!1070394 (seqFromList!3332 lt!1070388))))

(declare-fun b!3183545 () Bool)

(declare-fun res!1294036 () Bool)

(assert (=> b!3183545 (=> (not res!1294036) (not e!1983564))))

(declare-fun rulesProduceIndividualToken!2207 (LexerInterface!4715 List!35893 Token!9618) Bool)

(assert (=> b!3183545 (= res!1294036 (rulesProduceIndividualToken!2207 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3183546 () Bool)

(declare-fun res!1294029 () Bool)

(assert (=> b!3183546 (=> (not res!1294029) (not e!1983556))))

(declare-fun rulesInvariant!4112 (LexerInterface!4715 List!35893) Bool)

(assert (=> b!3183546 (= res!1294029 (rulesInvariant!4112 thiss!18206 rules!2135))))

(declare-fun e!1983554 () Bool)

(assert (=> b!3183547 (= e!1983554 (and tp!1006934 tp!1006939))))

(declare-fun b!3183548 () Bool)

(declare-fun e!1983566 () Bool)

(declare-fun lt!1070386 () Rule!10052)

(assert (=> b!3183548 (= e!1983566 (= (rule!7544 (h!41188 tokens!494)) lt!1070386))))

(declare-fun b!3183549 () Bool)

(assert (=> b!3183549 (= e!1983546 e!1983566)))

(declare-fun res!1294039 () Bool)

(assert (=> b!3183549 (=> (not res!1294039) (not e!1983566))))

(assert (=> b!3183549 (= res!1294039 (matchR!4543 (regex!5126 lt!1070386) lt!1070388))))

(assert (=> b!3183549 (= lt!1070386 (get!11378 lt!1070392))))

(declare-fun b!3183550 () Bool)

(declare-fun e!1983567 () Bool)

(assert (=> b!3183550 (= e!1983567 e!1983552)))

(declare-fun res!1294032 () Bool)

(assert (=> b!3183550 (=> res!1294032 e!1983552)))

(declare-fun lt!1070385 () BalanceConc!20868)

(declare-fun ++!8554 (List!35891 List!35891) List!35891)

(assert (=> b!3183550 (= res!1294032 (not (= (list!12699 lt!1070385) (++!8554 lt!1070388 lt!1070382))))))

(assert (=> b!3183550 (= lt!1070382 (list!12699 (charsOf!3148 separatorToken!241)))))

(declare-fun printWithSeparatorToken!24 (LexerInterface!4715 BalanceConc!20870 Token!9618) BalanceConc!20868)

(assert (=> b!3183550 (= lt!1070385 (printWithSeparatorToken!24 thiss!18206 lt!1070389 separatorToken!241))))

(declare-fun b!3183551 () Bool)

(assert (=> b!3183551 (= e!1983543 e!1983567)))

(declare-fun res!1294024 () Bool)

(assert (=> b!3183551 (=> res!1294024 e!1983567)))

(assert (=> b!3183551 (= res!1294024 (isSeparator!5126 (rule!7544 (h!41188 tokens!494))))))

(declare-fun lt!1070377 () Unit!50170)

(declare-fun lambda!116463 () Int)

(declare-fun forallContained!1109 (List!35892 Int Token!9618) Unit!50170)

(assert (=> b!3183551 (= lt!1070377 (forallContained!1109 tokens!494 lambda!116463 (h!41188 tokens!494)))))

(declare-fun b!3183552 () Bool)

(assert (=> b!3183552 (= e!1983564 (not e!1983544))))

(declare-fun res!1294023 () Bool)

(assert (=> b!3183552 (=> res!1294023 e!1983544)))

(assert (=> b!3183552 (= res!1294023 (not (= lt!1070391 lt!1070376)))))

(declare-fun printList!1269 (LexerInterface!4715 List!35892) List!35891)

(assert (=> b!3183552 (= lt!1070376 (printList!1269 thiss!18206 (Cons!35768 (h!41188 tokens!494) Nil!35768)))))

(declare-fun lt!1070387 () BalanceConc!20868)

(assert (=> b!3183552 (= lt!1070391 (list!12699 lt!1070387))))

(declare-fun lt!1070390 () BalanceConc!20870)

(declare-fun printTailRec!1214 (LexerInterface!4715 BalanceConc!20870 Int BalanceConc!20868) BalanceConc!20868)

(assert (=> b!3183552 (= lt!1070387 (printTailRec!1214 thiss!18206 lt!1070390 0 (BalanceConc!20869 Empty!10627)))))

(declare-fun print!1782 (LexerInterface!4715 BalanceConc!20870) BalanceConc!20868)

(assert (=> b!3183552 (= lt!1070387 (print!1782 thiss!18206 lt!1070390))))

(declare-fun singletonSeq!2222 (Token!9618) BalanceConc!20870)

(assert (=> b!3183552 (= lt!1070390 (singletonSeq!2222 (h!41188 tokens!494)))))

(declare-fun b!3183553 () Bool)

(declare-fun e!1983547 () Bool)

(declare-fun tp!1006933 () Bool)

(assert (=> b!3183553 (= e!1983547 (and tp!1006933 (inv!48617 (tag!5638 (h!41189 rules!2135))) (inv!48620 (transformation!5126 (h!41189 rules!2135))) e!1983554))))

(declare-fun b!3183554 () Bool)

(declare-fun res!1294022 () Bool)

(assert (=> b!3183554 (=> res!1294022 e!1983560)))

(assert (=> b!3183554 (= res!1294022 (not (rulesProduceIndividualToken!2207 thiss!18206 rules!2135 (h!41188 tokens!494))))))

(assert (=> b!3183555 (= e!1983549 (and tp!1006930 tp!1006935))))

(declare-fun b!3183556 () Bool)

(declare-fun tp!1006938 () Bool)

(assert (=> b!3183556 (= e!1983557 (and e!1983547 tp!1006938))))

(declare-fun b!3183557 () Bool)

(declare-fun res!1294025 () Bool)

(assert (=> b!3183557 (=> (not res!1294025) (not e!1983564))))

(declare-fun forall!7244 (List!35892 Int) Bool)

(assert (=> b!3183557 (= res!1294025 (forall!7244 tokens!494 lambda!116463))))

(declare-fun b!3183558 () Bool)

(declare-fun Unit!50173 () Unit!50170)

(assert (=> b!3183558 (= e!1983550 Unit!50173)))

(declare-fun lt!1070383 () Unit!50170)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!324 (Regex!9885 List!35891 C!19956) Unit!50170)

(assert (=> b!3183558 (= lt!1070383 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!324 (regex!5126 (rule!7544 separatorToken!241)) lt!1070382 lt!1070379))))

(declare-fun res!1294028 () Bool)

(assert (=> b!3183558 (= res!1294028 (not (matchR!4543 (regex!5126 (rule!7544 separatorToken!241)) lt!1070382)))))

(assert (=> b!3183558 (=> (not res!1294028) (not e!1983545))))

(assert (=> b!3183558 e!1983545))

(assert (= (and start!298422 res!1294038) b!3183538))

(assert (= (and b!3183538 res!1294033) b!3183546))

(assert (= (and b!3183546 res!1294029) b!3183529))

(assert (= (and b!3183529 res!1294020) b!3183545))

(assert (= (and b!3183545 res!1294036) b!3183539))

(assert (= (and b!3183539 res!1294019) b!3183557))

(assert (= (and b!3183557 res!1294025) b!3183533))

(assert (= (and b!3183533 res!1294026) b!3183540))

(assert (= (and b!3183540 res!1294030) b!3183552))

(assert (= (and b!3183552 (not res!1294023)) b!3183527))

(assert (= (and b!3183527 (not res!1294037)) b!3183554))

(assert (= (and b!3183554 (not res!1294022)) b!3183544))

(assert (= (and b!3183544 (not res!1294035)) b!3183551))

(assert (= (and b!3183551 (not res!1294024)) b!3183550))

(assert (= (and b!3183550 (not res!1294032)) b!3183541))

(assert (= (and b!3183541 res!1294018) b!3183549))

(assert (= (and b!3183549 res!1294039) b!3183548))

(assert (= (and b!3183541 res!1294031) b!3183530))

(assert (= (and b!3183530 res!1294027) b!3183542))

(assert (= (and b!3183541 c!534683) b!3183558))

(assert (= (and b!3183541 (not c!534683)) b!3183536))

(assert (= (and b!3183558 res!1294028) b!3183526))

(assert (= (and b!3183541 (not res!1294034)) b!3183534))

(assert (= (and b!3183534 (not res!1294021)) b!3183528))

(assert (= b!3183553 b!3183547))

(assert (= b!3183556 b!3183553))

(assert (= (and start!298422 ((_ is Cons!35769) rules!2135)) b!3183556))

(assert (= b!3183543 b!3183555))

(assert (= b!3183537 b!3183543))

(assert (= start!298422 b!3183537))

(assert (= b!3183525 b!3183531))

(assert (= b!3183535 b!3183525))

(assert (= b!3183532 b!3183535))

(assert (= (and start!298422 ((_ is Cons!35768) tokens!494)) b!3183532))

(declare-fun m!3440473 () Bool)

(assert (=> b!3183546 m!3440473))

(declare-fun m!3440475 () Bool)

(assert (=> b!3183545 m!3440475))

(declare-fun m!3440477 () Bool)

(assert (=> b!3183538 m!3440477))

(declare-fun m!3440479 () Bool)

(assert (=> b!3183551 m!3440479))

(declare-fun m!3440481 () Bool)

(assert (=> b!3183558 m!3440481))

(declare-fun m!3440483 () Bool)

(assert (=> b!3183558 m!3440483))

(declare-fun m!3440485 () Bool)

(assert (=> b!3183528 m!3440485))

(declare-fun m!3440487 () Bool)

(assert (=> b!3183549 m!3440487))

(declare-fun m!3440489 () Bool)

(assert (=> b!3183549 m!3440489))

(declare-fun m!3440491 () Bool)

(assert (=> b!3183552 m!3440491))

(declare-fun m!3440493 () Bool)

(assert (=> b!3183552 m!3440493))

(declare-fun m!3440495 () Bool)

(assert (=> b!3183552 m!3440495))

(declare-fun m!3440497 () Bool)

(assert (=> b!3183552 m!3440497))

(declare-fun m!3440499 () Bool)

(assert (=> b!3183552 m!3440499))

(declare-fun m!3440501 () Bool)

(assert (=> b!3183544 m!3440501))

(declare-fun m!3440503 () Bool)

(assert (=> b!3183544 m!3440503))

(declare-fun m!3440505 () Bool)

(assert (=> b!3183544 m!3440505))

(declare-fun m!3440507 () Bool)

(assert (=> b!3183534 m!3440507))

(declare-fun m!3440509 () Bool)

(assert (=> b!3183529 m!3440509))

(declare-fun m!3440511 () Bool)

(assert (=> b!3183529 m!3440511))

(declare-fun m!3440513 () Bool)

(assert (=> b!3183550 m!3440513))

(declare-fun m!3440515 () Bool)

(assert (=> b!3183550 m!3440515))

(declare-fun m!3440517 () Bool)

(assert (=> b!3183550 m!3440517))

(assert (=> b!3183550 m!3440513))

(declare-fun m!3440519 () Bool)

(assert (=> b!3183550 m!3440519))

(declare-fun m!3440521 () Bool)

(assert (=> b!3183550 m!3440521))

(declare-fun m!3440523 () Bool)

(assert (=> b!3183532 m!3440523))

(declare-fun m!3440525 () Bool)

(assert (=> b!3183557 m!3440525))

(declare-fun m!3440527 () Bool)

(assert (=> b!3183533 m!3440527))

(declare-fun m!3440529 () Bool)

(assert (=> b!3183537 m!3440529))

(declare-fun m!3440531 () Bool)

(assert (=> b!3183541 m!3440531))

(declare-fun m!3440533 () Bool)

(assert (=> b!3183541 m!3440533))

(declare-fun m!3440535 () Bool)

(assert (=> b!3183541 m!3440535))

(declare-fun m!3440537 () Bool)

(assert (=> b!3183541 m!3440537))

(declare-fun m!3440539 () Bool)

(assert (=> b!3183541 m!3440539))

(declare-fun m!3440541 () Bool)

(assert (=> b!3183541 m!3440541))

(declare-fun m!3440543 () Bool)

(assert (=> b!3183541 m!3440543))

(declare-fun m!3440545 () Bool)

(assert (=> b!3183541 m!3440545))

(declare-fun m!3440547 () Bool)

(assert (=> b!3183541 m!3440547))

(assert (=> b!3183541 m!3440535))

(declare-fun m!3440549 () Bool)

(assert (=> b!3183541 m!3440549))

(declare-fun m!3440551 () Bool)

(assert (=> b!3183541 m!3440551))

(declare-fun m!3440553 () Bool)

(assert (=> b!3183541 m!3440553))

(declare-fun m!3440555 () Bool)

(assert (=> b!3183541 m!3440555))

(assert (=> b!3183541 m!3440531))

(declare-fun m!3440557 () Bool)

(assert (=> b!3183541 m!3440557))

(declare-fun m!3440559 () Bool)

(assert (=> b!3183541 m!3440559))

(declare-fun m!3440561 () Bool)

(assert (=> b!3183541 m!3440561))

(declare-fun m!3440563 () Bool)

(assert (=> b!3183541 m!3440563))

(declare-fun m!3440565 () Bool)

(assert (=> b!3183530 m!3440565))

(declare-fun m!3440567 () Bool)

(assert (=> b!3183530 m!3440567))

(declare-fun m!3440569 () Bool)

(assert (=> start!298422 m!3440569))

(declare-fun m!3440571 () Bool)

(assert (=> b!3183553 m!3440571))

(declare-fun m!3440573 () Bool)

(assert (=> b!3183553 m!3440573))

(declare-fun m!3440575 () Bool)

(assert (=> b!3183527 m!3440575))

(assert (=> b!3183527 m!3440575))

(declare-fun m!3440577 () Bool)

(assert (=> b!3183527 m!3440577))

(declare-fun m!3440579 () Bool)

(assert (=> b!3183543 m!3440579))

(declare-fun m!3440581 () Bool)

(assert (=> b!3183543 m!3440581))

(declare-fun m!3440583 () Bool)

(assert (=> b!3183525 m!3440583))

(declare-fun m!3440585 () Bool)

(assert (=> b!3183525 m!3440585))

(declare-fun m!3440587 () Bool)

(assert (=> b!3183535 m!3440587))

(declare-fun m!3440589 () Bool)

(assert (=> b!3183554 m!3440589))

(check-sat b_and!210555 (not b!3183558) (not b!3183535) (not b!3183532) (not b!3183551) (not b!3183527) (not start!298422) b_and!210561 (not b!3183537) (not b_next!84695) b_and!210557 b_and!210563 (not b!3183543) (not b_next!84699) (not b!3183552) (not b!3183534) (not b_next!84697) (not b!3183529) b_and!210565 (not b!3183553) (not b!3183541) (not b!3183528) (not b!3183556) (not b!3183554) (not b_next!84689) (not b_next!84693) (not b!3183544) (not b!3183546) (not b!3183533) b_and!210559 (not b!3183545) (not b_next!84691) (not b!3183538) (not b!3183530) (not b!3183525) (not b!3183557) (not b!3183550) (not b!3183549))
(check-sat b_and!210555 b_and!210563 (not b_next!84699) b_and!210559 b_and!210561 (not b_next!84691) (not b_next!84695) b_and!210557 (not b_next!84697) b_and!210565 (not b_next!84689) (not b_next!84693))
