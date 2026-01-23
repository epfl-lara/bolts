; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374220 () Bool)

(assert start!374220)

(declare-fun b!3975792 () Bool)

(declare-fun b_free!110249 () Bool)

(declare-fun b_next!110953 () Bool)

(assert (=> b!3975792 (= b_free!110249 (not b_next!110953))))

(declare-fun tp!1212176 () Bool)

(declare-fun b_and!305615 () Bool)

(assert (=> b!3975792 (= tp!1212176 b_and!305615)))

(declare-fun b_free!110251 () Bool)

(declare-fun b_next!110955 () Bool)

(assert (=> b!3975792 (= b_free!110251 (not b_next!110955))))

(declare-fun tp!1212174 () Bool)

(declare-fun b_and!305617 () Bool)

(assert (=> b!3975792 (= tp!1212174 b_and!305617)))

(declare-fun b!3975781 () Bool)

(declare-fun b_free!110253 () Bool)

(declare-fun b_next!110957 () Bool)

(assert (=> b!3975781 (= b_free!110253 (not b_next!110957))))

(declare-fun tp!1212179 () Bool)

(declare-fun b_and!305619 () Bool)

(assert (=> b!3975781 (= tp!1212179 b_and!305619)))

(declare-fun b_free!110255 () Bool)

(declare-fun b_next!110959 () Bool)

(assert (=> b!3975781 (= b_free!110255 (not b_next!110959))))

(declare-fun tp!1212171 () Bool)

(declare-fun b_and!305621 () Bool)

(assert (=> b!3975781 (= tp!1212171 b_and!305621)))

(declare-fun e!2463250 () Bool)

(declare-fun e!2463254 () Bool)

(declare-fun tp!1212175 () Bool)

(declare-datatypes ((C!23380 0))(
  ( (C!23381 (val!13784 Int)) )
))
(declare-datatypes ((List!42594 0))(
  ( (Nil!42470) (Cons!42470 (h!47890 C!23380) (t!331081 List!42594)) )
))
(declare-datatypes ((IArray!25811 0))(
  ( (IArray!25812 (innerList!12963 List!42594)) )
))
(declare-datatypes ((Conc!12903 0))(
  ( (Node!12903 (left!32143 Conc!12903) (right!32473 Conc!12903) (csize!26036 Int) (cheight!13114 Int)) (Leaf!19956 (xs!16209 IArray!25811) (csize!26037 Int)) (Empty!12903) )
))
(declare-datatypes ((BalanceConc!25400 0))(
  ( (BalanceConc!25401 (c!689232 Conc!12903)) )
))
(declare-datatypes ((List!42595 0))(
  ( (Nil!42471) (Cons!42471 (h!47891 (_ BitVec 16)) (t!331082 List!42595)) )
))
(declare-datatypes ((TokenValue!6922 0))(
  ( (FloatLiteralValue!13844 (text!48899 List!42595)) (TokenValueExt!6921 (__x!26061 Int)) (Broken!34610 (value!211330 List!42595)) (Object!7045) (End!6922) (Def!6922) (Underscore!6922) (Match!6922) (Else!6922) (Error!6922) (Case!6922) (If!6922) (Extends!6922) (Abstract!6922) (Class!6922) (Val!6922) (DelimiterValue!13844 (del!6982 List!42595)) (KeywordValue!6928 (value!211331 List!42595)) (CommentValue!13844 (value!211332 List!42595)) (WhitespaceValue!13844 (value!211333 List!42595)) (IndentationValue!6922 (value!211334 List!42595)) (String!48327) (Int32!6922) (Broken!34611 (value!211335 List!42595)) (Boolean!6923) (Unit!61120) (OperatorValue!6925 (op!6982 List!42595)) (IdentifierValue!13844 (value!211336 List!42595)) (IdentifierValue!13845 (value!211337 List!42595)) (WhitespaceValue!13845 (value!211338 List!42595)) (True!13844) (False!13844) (Broken!34612 (value!211339 List!42595)) (Broken!34613 (value!211340 List!42595)) (True!13845) (RightBrace!6922) (RightBracket!6922) (Colon!6922) (Null!6922) (Comma!6922) (LeftBracket!6922) (False!13845) (LeftBrace!6922) (ImaginaryLiteralValue!6922 (text!48900 List!42595)) (StringLiteralValue!20766 (value!211341 List!42595)) (EOFValue!6922 (value!211342 List!42595)) (IdentValue!6922 (value!211343 List!42595)) (DelimiterValue!13845 (value!211344 List!42595)) (DedentValue!6922 (value!211345 List!42595)) (NewLineValue!6922 (value!211346 List!42595)) (IntegerValue!20766 (value!211347 (_ BitVec 32)) (text!48901 List!42595)) (IntegerValue!20767 (value!211348 Int) (text!48902 List!42595)) (Times!6922) (Or!6922) (Equal!6922) (Minus!6922) (Broken!34614 (value!211349 List!42595)) (And!6922) (Div!6922) (LessEqual!6922) (Mod!6922) (Concat!18519) (Not!6922) (Plus!6922) (SpaceValue!6922 (value!211350 List!42595)) (IntegerValue!20768 (value!211351 Int) (text!48903 List!42595)) (StringLiteralValue!20767 (text!48904 List!42595)) (FloatLiteralValue!13845 (text!48905 List!42595)) (BytesLiteralValue!6922 (value!211352 List!42595)) (CommentValue!13845 (value!211353 List!42595)) (StringLiteralValue!20768 (value!211354 List!42595)) (ErrorTokenValue!6922 (msg!6983 List!42595)) )
))
(declare-datatypes ((Regex!11597 0))(
  ( (ElementMatch!11597 (c!689233 C!23380)) (Concat!18520 (regOne!23706 Regex!11597) (regTwo!23706 Regex!11597)) (EmptyExpr!11597) (Star!11597 (reg!11926 Regex!11597)) (EmptyLang!11597) (Union!11597 (regOne!23707 Regex!11597) (regTwo!23707 Regex!11597)) )
))
(declare-datatypes ((String!48328 0))(
  ( (String!48329 (value!211355 String)) )
))
(declare-datatypes ((TokenValueInjection!13272 0))(
  ( (TokenValueInjection!13273 (toValue!9180 Int) (toChars!9039 Int)) )
))
(declare-datatypes ((Rule!13184 0))(
  ( (Rule!13185 (regex!6692 Regex!11597) (tag!7552 String!48328) (isSeparator!6692 Bool) (transformation!6692 TokenValueInjection!13272)) )
))
(declare-datatypes ((List!42596 0))(
  ( (Nil!42472) (Cons!42472 (h!47892 Rule!13184) (t!331083 List!42596)) )
))
(declare-fun rules!2999 () List!42596)

(declare-fun b!3975764 () Bool)

(declare-fun inv!56742 (String!48328) Bool)

(declare-fun inv!56745 (TokenValueInjection!13272) Bool)

(assert (=> b!3975764 (= e!2463254 (and tp!1212175 (inv!56742 (tag!7552 (h!47892 rules!2999))) (inv!56745 (transformation!6692 (h!47892 rules!2999))) e!2463250))))

(declare-fun b!3975765 () Bool)

(declare-fun e!2463256 () Bool)

(declare-fun e!2463251 () Bool)

(assert (=> b!3975765 (= e!2463256 e!2463251)))

(declare-fun res!1610153 () Bool)

(assert (=> b!3975765 (=> (not res!1610153) (not e!2463251))))

(declare-fun lt!1393819 () List!42594)

(declare-fun lt!1393836 () List!42594)

(assert (=> b!3975765 (= res!1610153 (= lt!1393819 lt!1393836))))

(declare-fun prefix!494 () List!42594)

(declare-fun newSuffix!27 () List!42594)

(declare-fun ++!11094 (List!42594 List!42594) List!42594)

(assert (=> b!3975765 (= lt!1393836 (++!11094 prefix!494 newSuffix!27))))

(declare-fun lt!1393831 () List!42594)

(declare-fun newSuffixResult!27 () List!42594)

(assert (=> b!3975765 (= lt!1393819 (++!11094 lt!1393831 newSuffixResult!27))))

(declare-fun b!3975766 () Bool)

(declare-fun e!2463259 () Bool)

(assert (=> b!3975766 (= e!2463259 true)))

(declare-fun lt!1393839 () Int)

(declare-fun lt!1393814 () List!42594)

(declare-fun size!31774 (List!42594) Int)

(assert (=> b!3975766 (= lt!1393839 (size!31774 lt!1393814))))

(declare-fun suffixResult!105 () List!42594)

(declare-fun lt!1393824 () List!42594)

(assert (=> b!3975766 (= suffixResult!105 lt!1393824)))

(declare-datatypes ((Unit!61121 0))(
  ( (Unit!61122) )
))
(declare-fun lt!1393822 () Unit!61121)

(declare-fun lemmaSamePrefixThenSameSuffix!1966 (List!42594 List!42594 List!42594 List!42594 List!42594) Unit!61121)

(assert (=> b!3975766 (= lt!1393822 (lemmaSamePrefixThenSameSuffix!1966 lt!1393831 suffixResult!105 lt!1393831 lt!1393824 lt!1393814))))

(declare-fun lt!1393841 () List!42594)

(declare-fun isPrefix!3779 (List!42594 List!42594) Bool)

(assert (=> b!3975766 (isPrefix!3779 lt!1393831 lt!1393841)))

(declare-fun lt!1393837 () Unit!61121)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2622 (List!42594 List!42594) Unit!61121)

(assert (=> b!3975766 (= lt!1393837 (lemmaConcatTwoListThenFirstIsPrefix!2622 lt!1393831 lt!1393824))))

(declare-fun b!3975767 () Bool)

(declare-fun e!2463248 () Bool)

(declare-fun tp_is_empty!20165 () Bool)

(declare-fun tp!1212182 () Bool)

(assert (=> b!3975767 (= e!2463248 (and tp_is_empty!20165 tp!1212182))))

(declare-fun b!3975768 () Bool)

(declare-fun res!1610143 () Bool)

(declare-fun e!2463261 () Bool)

(assert (=> b!3975768 (=> (not res!1610143) (not e!2463261))))

(declare-fun suffix!1299 () List!42594)

(assert (=> b!3975768 (= res!1610143 (isPrefix!3779 newSuffix!27 suffix!1299))))

(declare-fun res!1610148 () Bool)

(assert (=> start!374220 (=> (not res!1610148) (not e!2463261))))

(declare-datatypes ((LexerInterface!6281 0))(
  ( (LexerInterfaceExt!6278 (__x!26062 Int)) (Lexer!6279) )
))
(declare-fun thiss!21717 () LexerInterface!6281)

(get-info :version)

(assert (=> start!374220 (= res!1610148 ((_ is Lexer!6279) thiss!21717))))

(assert (=> start!374220 e!2463261))

(declare-fun e!2463249 () Bool)

(assert (=> start!374220 e!2463249))

(declare-datatypes ((Token!12522 0))(
  ( (Token!12523 (value!211356 TokenValue!6922) (rule!9690 Rule!13184) (size!31775 Int) (originalCharacters!7292 List!42594)) )
))
(declare-fun token!484 () Token!12522)

(declare-fun e!2463244 () Bool)

(declare-fun inv!56746 (Token!12522) Bool)

(assert (=> start!374220 (and (inv!56746 token!484) e!2463244)))

(declare-fun e!2463247 () Bool)

(assert (=> start!374220 e!2463247))

(assert (=> start!374220 e!2463248))

(declare-fun e!2463257 () Bool)

(assert (=> start!374220 e!2463257))

(assert (=> start!374220 true))

(declare-fun e!2463252 () Bool)

(assert (=> start!374220 e!2463252))

(declare-fun e!2463265 () Bool)

(assert (=> start!374220 e!2463265))

(declare-fun b!3975769 () Bool)

(declare-fun e!2463267 () Bool)

(assert (=> b!3975769 (= e!2463267 e!2463259)))

(declare-fun res!1610152 () Bool)

(assert (=> b!3975769 (=> res!1610152 e!2463259)))

(assert (=> b!3975769 (= res!1610152 (not (= lt!1393841 lt!1393814)))))

(assert (=> b!3975769 (= lt!1393841 (++!11094 lt!1393831 lt!1393824))))

(declare-fun getSuffix!2210 (List!42594 List!42594) List!42594)

(assert (=> b!3975769 (= lt!1393824 (getSuffix!2210 lt!1393814 lt!1393831))))

(declare-fun e!2463255 () Bool)

(assert (=> b!3975769 e!2463255))

(declare-fun res!1610150 () Bool)

(assert (=> b!3975769 (=> (not res!1610150) (not e!2463255))))

(assert (=> b!3975769 (= res!1610150 (isPrefix!3779 lt!1393814 lt!1393814))))

(declare-fun lt!1393816 () Unit!61121)

(declare-fun lemmaIsPrefixRefl!2371 (List!42594 List!42594) Unit!61121)

(assert (=> b!3975769 (= lt!1393816 (lemmaIsPrefixRefl!2371 lt!1393814 lt!1393814))))

(declare-fun b!3975770 () Bool)

(declare-fun e!2463258 () Bool)

(assert (=> b!3975770 (= e!2463258 e!2463267)))

(declare-fun res!1610154 () Bool)

(assert (=> b!3975770 (=> res!1610154 e!2463267)))

(declare-fun matchR!5574 (Regex!11597 List!42594) Bool)

(assert (=> b!3975770 (= res!1610154 (not (matchR!5574 (regex!6692 (rule!9690 token!484)) lt!1393831)))))

(assert (=> b!3975770 (isPrefix!3779 lt!1393831 lt!1393836)))

(declare-fun lt!1393840 () Unit!61121)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!612 (List!42594 List!42594 List!42594) Unit!61121)

(assert (=> b!3975770 (= lt!1393840 (lemmaPrefixStaysPrefixWhenAddingToSuffix!612 lt!1393831 prefix!494 newSuffix!27))))

(declare-fun lt!1393828 () Unit!61121)

(assert (=> b!3975770 (= lt!1393828 (lemmaPrefixStaysPrefixWhenAddingToSuffix!612 lt!1393831 prefix!494 suffix!1299))))

(declare-fun b!3975771 () Bool)

(declare-fun lt!1393830 () Int)

(assert (=> b!3975771 (= e!2463255 (and (= (size!31775 token!484) lt!1393830) (= (originalCharacters!7292 token!484) lt!1393831)))))

(declare-fun b!3975772 () Bool)

(assert (=> b!3975772 (= e!2463261 e!2463256)))

(declare-fun res!1610142 () Bool)

(assert (=> b!3975772 (=> (not res!1610142) (not e!2463256))))

(declare-fun lt!1393829 () Int)

(assert (=> b!3975772 (= res!1610142 (>= lt!1393829 lt!1393830))))

(assert (=> b!3975772 (= lt!1393830 (size!31774 lt!1393831))))

(assert (=> b!3975772 (= lt!1393829 (size!31774 prefix!494))))

(declare-fun list!15762 (BalanceConc!25400) List!42594)

(declare-fun charsOf!4508 (Token!12522) BalanceConc!25400)

(assert (=> b!3975772 (= lt!1393831 (list!15762 (charsOf!4508 token!484)))))

(declare-fun b!3975773 () Bool)

(declare-fun e!2463268 () Bool)

(assert (=> b!3975773 (= e!2463268 e!2463258)))

(declare-fun res!1610146 () Bool)

(assert (=> b!3975773 (=> res!1610146 e!2463258)))

(declare-datatypes ((tuple2!41716 0))(
  ( (tuple2!41717 (_1!23992 Token!12522) (_2!23992 List!42594)) )
))
(declare-datatypes ((Option!9106 0))(
  ( (None!9105) (Some!9105 (v!39453 tuple2!41716)) )
))
(declare-fun lt!1393821 () Option!9106)

(declare-fun lt!1393823 () Option!9106)

(assert (=> b!3975773 (= res!1610146 (not (= lt!1393821 lt!1393823)))))

(declare-fun lt!1393817 () TokenValue!6922)

(assert (=> b!3975773 (= lt!1393821 (Some!9105 (tuple2!41717 (Token!12523 lt!1393817 (rule!9690 token!484) lt!1393830 lt!1393831) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2613 (LexerInterface!6281 Rule!13184 List!42594) Option!9106)

(assert (=> b!3975773 (= lt!1393821 (maxPrefixOneRule!2613 thiss!21717 (rule!9690 token!484) lt!1393814))))

(declare-fun apply!9903 (TokenValueInjection!13272 BalanceConc!25400) TokenValue!6922)

(declare-fun seqFromList!4931 (List!42594) BalanceConc!25400)

(assert (=> b!3975773 (= lt!1393817 (apply!9903 (transformation!6692 (rule!9690 token!484)) (seqFromList!4931 lt!1393831)))))

(declare-fun lt!1393811 () Unit!61121)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1435 (LexerInterface!6281 List!42596 List!42594 List!42594 List!42594 Rule!13184) Unit!61121)

(assert (=> b!3975773 (= lt!1393811 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1435 thiss!21717 rules!2999 lt!1393831 lt!1393814 suffixResult!105 (rule!9690 token!484)))))

(declare-fun lt!1393832 () List!42594)

(assert (=> b!3975773 (= lt!1393832 suffixResult!105)))

(declare-fun lt!1393813 () Unit!61121)

(assert (=> b!3975773 (= lt!1393813 (lemmaSamePrefixThenSameSuffix!1966 lt!1393831 lt!1393832 lt!1393831 suffixResult!105 lt!1393814))))

(declare-fun lt!1393835 () List!42594)

(assert (=> b!3975773 (isPrefix!3779 lt!1393831 lt!1393835)))

(declare-fun lt!1393825 () Unit!61121)

(assert (=> b!3975773 (= lt!1393825 (lemmaConcatTwoListThenFirstIsPrefix!2622 lt!1393831 lt!1393832))))

(declare-fun tp!1212170 () Bool)

(declare-fun b!3975774 () Bool)

(declare-fun e!2463260 () Bool)

(declare-fun inv!21 (TokenValue!6922) Bool)

(assert (=> b!3975774 (= e!2463244 (and (inv!21 (value!211356 token!484)) e!2463260 tp!1212170))))

(declare-fun b!3975775 () Bool)

(declare-fun e!2463264 () Bool)

(assert (=> b!3975775 (= e!2463251 e!2463264)))

(declare-fun res!1610155 () Bool)

(assert (=> b!3975775 (=> (not res!1610155) (not e!2463264))))

(declare-fun maxPrefix!3579 (LexerInterface!6281 List!42596 List!42594) Option!9106)

(assert (=> b!3975775 (= res!1610155 (= (maxPrefix!3579 thiss!21717 rules!2999 lt!1393814) lt!1393823))))

(assert (=> b!3975775 (= lt!1393823 (Some!9105 (tuple2!41717 token!484 suffixResult!105)))))

(assert (=> b!3975775 (= lt!1393814 (++!11094 prefix!494 suffix!1299))))

(declare-fun b!3975776 () Bool)

(declare-fun tp!1212177 () Bool)

(assert (=> b!3975776 (= e!2463247 (and tp_is_empty!20165 tp!1212177))))

(declare-fun b!3975777 () Bool)

(declare-fun res!1610141 () Bool)

(assert (=> b!3975777 (=> (not res!1610141) (not e!2463255))))

(assert (=> b!3975777 (= res!1610141 (= (size!31775 token!484) (size!31774 (originalCharacters!7292 token!484))))))

(declare-fun b!3975778 () Bool)

(declare-fun e!2463253 () Bool)

(declare-fun e!2463263 () Bool)

(assert (=> b!3975778 (= e!2463253 e!2463263)))

(declare-fun res!1610156 () Bool)

(assert (=> b!3975778 (=> res!1610156 e!2463263)))

(declare-fun lt!1393815 () List!42594)

(assert (=> b!3975778 (= res!1610156 (not (= lt!1393815 prefix!494)))))

(declare-fun lt!1393812 () List!42594)

(assert (=> b!3975778 (= lt!1393815 (++!11094 lt!1393831 lt!1393812))))

(assert (=> b!3975778 (= lt!1393812 (getSuffix!2210 prefix!494 lt!1393831))))

(assert (=> b!3975778 (isPrefix!3779 lt!1393831 prefix!494)))

(declare-fun lt!1393833 () Unit!61121)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!357 (List!42594 List!42594 List!42594) Unit!61121)

(assert (=> b!3975778 (= lt!1393833 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!357 prefix!494 lt!1393831 lt!1393814))))

(declare-fun b!3975779 () Bool)

(declare-fun res!1610151 () Bool)

(assert (=> b!3975779 (=> (not res!1610151) (not e!2463261))))

(assert (=> b!3975779 (= res!1610151 (>= (size!31774 suffix!1299) (size!31774 newSuffix!27)))))

(declare-fun b!3975780 () Bool)

(declare-fun res!1610147 () Bool)

(assert (=> b!3975780 (=> (not res!1610147) (not e!2463261))))

(declare-fun isEmpty!25402 (List!42596) Bool)

(assert (=> b!3975780 (= res!1610147 (not (isEmpty!25402 rules!2999)))))

(assert (=> b!3975781 (= e!2463250 (and tp!1212179 tp!1212171))))

(declare-fun b!3975782 () Bool)

(assert (=> b!3975782 (= e!2463263 e!2463268)))

(declare-fun res!1610145 () Bool)

(assert (=> b!3975782 (=> res!1610145 e!2463268)))

(declare-fun lt!1393827 () List!42594)

(assert (=> b!3975782 (= res!1610145 (or (not (= lt!1393814 lt!1393827)) (not (= lt!1393814 lt!1393835))))))

(assert (=> b!3975782 (= lt!1393827 lt!1393835)))

(assert (=> b!3975782 (= lt!1393835 (++!11094 lt!1393831 lt!1393832))))

(assert (=> b!3975782 (= lt!1393827 (++!11094 lt!1393815 suffix!1299))))

(assert (=> b!3975782 (= lt!1393832 (++!11094 lt!1393812 suffix!1299))))

(declare-fun lt!1393834 () Unit!61121)

(declare-fun lemmaConcatAssociativity!2414 (List!42594 List!42594 List!42594) Unit!61121)

(assert (=> b!3975782 (= lt!1393834 (lemmaConcatAssociativity!2414 lt!1393831 lt!1393812 suffix!1299))))

(declare-fun b!3975783 () Bool)

(declare-fun e!2463243 () Bool)

(assert (=> b!3975783 (= e!2463243 e!2463253)))

(declare-fun res!1610139 () Bool)

(assert (=> b!3975783 (=> res!1610139 e!2463253)))

(assert (=> b!3975783 (= res!1610139 (not (isPrefix!3779 lt!1393831 lt!1393814)))))

(assert (=> b!3975783 (isPrefix!3779 prefix!494 lt!1393814)))

(declare-fun lt!1393810 () Unit!61121)

(assert (=> b!3975783 (= lt!1393810 (lemmaConcatTwoListThenFirstIsPrefix!2622 prefix!494 suffix!1299))))

(declare-fun lt!1393826 () List!42594)

(assert (=> b!3975783 (isPrefix!3779 lt!1393831 lt!1393826)))

(declare-fun lt!1393838 () Unit!61121)

(assert (=> b!3975783 (= lt!1393838 (lemmaConcatTwoListThenFirstIsPrefix!2622 lt!1393831 suffixResult!105))))

(declare-fun b!3975784 () Bool)

(declare-fun tp!1212172 () Bool)

(assert (=> b!3975784 (= e!2463265 (and tp_is_empty!20165 tp!1212172))))

(declare-fun b!3975785 () Bool)

(assert (=> b!3975785 (= e!2463264 (not e!2463243))))

(declare-fun res!1610149 () Bool)

(assert (=> b!3975785 (=> res!1610149 e!2463243)))

(assert (=> b!3975785 (= res!1610149 (not (= lt!1393826 lt!1393814)))))

(assert (=> b!3975785 (= lt!1393826 (++!11094 lt!1393831 suffixResult!105))))

(declare-fun lt!1393818 () Unit!61121)

(declare-fun lemmaInv!907 (TokenValueInjection!13272) Unit!61121)

(assert (=> b!3975785 (= lt!1393818 (lemmaInv!907 (transformation!6692 (rule!9690 token!484))))))

(declare-fun ruleValid!2624 (LexerInterface!6281 Rule!13184) Bool)

(assert (=> b!3975785 (ruleValid!2624 thiss!21717 (rule!9690 token!484))))

(declare-fun lt!1393820 () Unit!61121)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1698 (LexerInterface!6281 Rule!13184 List!42596) Unit!61121)

(assert (=> b!3975785 (= lt!1393820 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1698 thiss!21717 (rule!9690 token!484) rules!2999))))

(declare-fun b!3975786 () Bool)

(declare-fun res!1610144 () Bool)

(assert (=> b!3975786 (=> (not res!1610144) (not e!2463261))))

(declare-fun rulesInvariant!5624 (LexerInterface!6281 List!42596) Bool)

(assert (=> b!3975786 (= res!1610144 (rulesInvariant!5624 thiss!21717 rules!2999))))

(declare-fun b!3975787 () Bool)

(declare-fun res!1610140 () Bool)

(assert (=> b!3975787 (=> (not res!1610140) (not e!2463255))))

(assert (=> b!3975787 (= res!1610140 (= (value!211356 token!484) lt!1393817))))

(declare-fun b!3975788 () Bool)

(declare-fun tp!1212181 () Bool)

(assert (=> b!3975788 (= e!2463257 (and tp_is_empty!20165 tp!1212181))))

(declare-fun b!3975789 () Bool)

(declare-fun e!2463266 () Bool)

(declare-fun tp!1212173 () Bool)

(assert (=> b!3975789 (= e!2463260 (and tp!1212173 (inv!56742 (tag!7552 (rule!9690 token!484))) (inv!56745 (transformation!6692 (rule!9690 token!484))) e!2463266))))

(declare-fun b!3975790 () Bool)

(declare-fun tp!1212178 () Bool)

(assert (=> b!3975790 (= e!2463252 (and e!2463254 tp!1212178))))

(declare-fun b!3975791 () Bool)

(declare-fun tp!1212180 () Bool)

(assert (=> b!3975791 (= e!2463249 (and tp_is_empty!20165 tp!1212180))))

(assert (=> b!3975792 (= e!2463266 (and tp!1212176 tp!1212174))))

(assert (= (and start!374220 res!1610148) b!3975780))

(assert (= (and b!3975780 res!1610147) b!3975786))

(assert (= (and b!3975786 res!1610144) b!3975779))

(assert (= (and b!3975779 res!1610151) b!3975768))

(assert (= (and b!3975768 res!1610143) b!3975772))

(assert (= (and b!3975772 res!1610142) b!3975765))

(assert (= (and b!3975765 res!1610153) b!3975775))

(assert (= (and b!3975775 res!1610155) b!3975785))

(assert (= (and b!3975785 (not res!1610149)) b!3975783))

(assert (= (and b!3975783 (not res!1610139)) b!3975778))

(assert (= (and b!3975778 (not res!1610156)) b!3975782))

(assert (= (and b!3975782 (not res!1610145)) b!3975773))

(assert (= (and b!3975773 (not res!1610146)) b!3975770))

(assert (= (and b!3975770 (not res!1610154)) b!3975769))

(assert (= (and b!3975769 res!1610150) b!3975787))

(assert (= (and b!3975787 res!1610140) b!3975777))

(assert (= (and b!3975777 res!1610141) b!3975771))

(assert (= (and b!3975769 (not res!1610152)) b!3975766))

(assert (= (and start!374220 ((_ is Cons!42470) prefix!494)) b!3975791))

(assert (= b!3975789 b!3975792))

(assert (= b!3975774 b!3975789))

(assert (= start!374220 b!3975774))

(assert (= (and start!374220 ((_ is Cons!42470) suffixResult!105)) b!3975776))

(assert (= (and start!374220 ((_ is Cons!42470) suffix!1299)) b!3975767))

(assert (= (and start!374220 ((_ is Cons!42470) newSuffix!27)) b!3975788))

(assert (= b!3975764 b!3975781))

(assert (= b!3975790 b!3975764))

(assert (= (and start!374220 ((_ is Cons!42472) rules!2999)) b!3975790))

(assert (= (and start!374220 ((_ is Cons!42470) newSuffixResult!27)) b!3975784))

(declare-fun m!4546813 () Bool)

(assert (=> b!3975764 m!4546813))

(declare-fun m!4546815 () Bool)

(assert (=> b!3975764 m!4546815))

(declare-fun m!4546817 () Bool)

(assert (=> b!3975789 m!4546817))

(declare-fun m!4546819 () Bool)

(assert (=> b!3975789 m!4546819))

(declare-fun m!4546821 () Bool)

(assert (=> b!3975786 m!4546821))

(declare-fun m!4546823 () Bool)

(assert (=> start!374220 m!4546823))

(declare-fun m!4546825 () Bool)

(assert (=> b!3975766 m!4546825))

(declare-fun m!4546827 () Bool)

(assert (=> b!3975766 m!4546827))

(declare-fun m!4546829 () Bool)

(assert (=> b!3975766 m!4546829))

(declare-fun m!4546831 () Bool)

(assert (=> b!3975766 m!4546831))

(declare-fun m!4546833 () Bool)

(assert (=> b!3975780 m!4546833))

(declare-fun m!4546835 () Bool)

(assert (=> b!3975774 m!4546835))

(declare-fun m!4546837 () Bool)

(assert (=> b!3975782 m!4546837))

(declare-fun m!4546839 () Bool)

(assert (=> b!3975782 m!4546839))

(declare-fun m!4546841 () Bool)

(assert (=> b!3975782 m!4546841))

(declare-fun m!4546843 () Bool)

(assert (=> b!3975782 m!4546843))

(declare-fun m!4546845 () Bool)

(assert (=> b!3975777 m!4546845))

(declare-fun m!4546847 () Bool)

(assert (=> b!3975779 m!4546847))

(declare-fun m!4546849 () Bool)

(assert (=> b!3975779 m!4546849))

(declare-fun m!4546851 () Bool)

(assert (=> b!3975778 m!4546851))

(declare-fun m!4546853 () Bool)

(assert (=> b!3975778 m!4546853))

(declare-fun m!4546855 () Bool)

(assert (=> b!3975778 m!4546855))

(declare-fun m!4546857 () Bool)

(assert (=> b!3975778 m!4546857))

(declare-fun m!4546859 () Bool)

(assert (=> b!3975765 m!4546859))

(declare-fun m!4546861 () Bool)

(assert (=> b!3975765 m!4546861))

(declare-fun m!4546863 () Bool)

(assert (=> b!3975783 m!4546863))

(declare-fun m!4546865 () Bool)

(assert (=> b!3975783 m!4546865))

(declare-fun m!4546867 () Bool)

(assert (=> b!3975783 m!4546867))

(declare-fun m!4546869 () Bool)

(assert (=> b!3975783 m!4546869))

(declare-fun m!4546871 () Bool)

(assert (=> b!3975783 m!4546871))

(declare-fun m!4546873 () Bool)

(assert (=> b!3975773 m!4546873))

(declare-fun m!4546875 () Bool)

(assert (=> b!3975773 m!4546875))

(declare-fun m!4546877 () Bool)

(assert (=> b!3975773 m!4546877))

(declare-fun m!4546879 () Bool)

(assert (=> b!3975773 m!4546879))

(declare-fun m!4546881 () Bool)

(assert (=> b!3975773 m!4546881))

(assert (=> b!3975773 m!4546879))

(declare-fun m!4546883 () Bool)

(assert (=> b!3975773 m!4546883))

(declare-fun m!4546885 () Bool)

(assert (=> b!3975773 m!4546885))

(declare-fun m!4546887 () Bool)

(assert (=> b!3975769 m!4546887))

(declare-fun m!4546889 () Bool)

(assert (=> b!3975769 m!4546889))

(declare-fun m!4546891 () Bool)

(assert (=> b!3975769 m!4546891))

(declare-fun m!4546893 () Bool)

(assert (=> b!3975769 m!4546893))

(declare-fun m!4546895 () Bool)

(assert (=> b!3975772 m!4546895))

(declare-fun m!4546897 () Bool)

(assert (=> b!3975772 m!4546897))

(declare-fun m!4546899 () Bool)

(assert (=> b!3975772 m!4546899))

(assert (=> b!3975772 m!4546899))

(declare-fun m!4546901 () Bool)

(assert (=> b!3975772 m!4546901))

(declare-fun m!4546903 () Bool)

(assert (=> b!3975785 m!4546903))

(declare-fun m!4546905 () Bool)

(assert (=> b!3975785 m!4546905))

(declare-fun m!4546907 () Bool)

(assert (=> b!3975785 m!4546907))

(declare-fun m!4546909 () Bool)

(assert (=> b!3975785 m!4546909))

(declare-fun m!4546911 () Bool)

(assert (=> b!3975768 m!4546911))

(declare-fun m!4546913 () Bool)

(assert (=> b!3975775 m!4546913))

(declare-fun m!4546915 () Bool)

(assert (=> b!3975775 m!4546915))

(declare-fun m!4546917 () Bool)

(assert (=> b!3975770 m!4546917))

(declare-fun m!4546919 () Bool)

(assert (=> b!3975770 m!4546919))

(declare-fun m!4546921 () Bool)

(assert (=> b!3975770 m!4546921))

(declare-fun m!4546923 () Bool)

(assert (=> b!3975770 m!4546923))

(check-sat tp_is_empty!20165 (not b!3975772) (not b!3975782) (not start!374220) (not b!3975785) (not b_next!110955) (not b!3975783) (not b!3975780) (not b!3975779) b_and!305617 (not b!3975768) (not b!3975789) (not b!3975767) (not b!3975774) (not b_next!110953) b_and!305619 (not b!3975769) (not b!3975788) (not b!3975776) (not b!3975765) (not b!3975770) (not b!3975784) (not b!3975766) (not b!3975773) b_and!305615 (not b!3975786) (not b!3975777) (not b!3975791) (not b_next!110959) (not b_next!110957) (not b!3975778) (not b!3975775) (not b!3975764) b_and!305621 (not b!3975790))
(check-sat (not b_next!110953) b_and!305619 (not b_next!110955) b_and!305617 b_and!305615 b_and!305621 (not b_next!110959) (not b_next!110957))
