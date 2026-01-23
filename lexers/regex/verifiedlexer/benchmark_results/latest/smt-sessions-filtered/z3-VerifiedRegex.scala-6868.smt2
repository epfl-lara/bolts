; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361668 () Bool)

(assert start!361668)

(declare-fun b!3857935 () Bool)

(declare-fun b_free!103597 () Bool)

(declare-fun b_next!104301 () Bool)

(assert (=> b!3857935 (= b_free!103597 (not b_next!104301))))

(declare-fun tp!1169376 () Bool)

(declare-fun b_and!288675 () Bool)

(assert (=> b!3857935 (= tp!1169376 b_and!288675)))

(declare-fun b_free!103599 () Bool)

(declare-fun b_next!104303 () Bool)

(assert (=> b!3857935 (= b_free!103599 (not b_next!104303))))

(declare-fun tp!1169373 () Bool)

(declare-fun b_and!288677 () Bool)

(assert (=> b!3857935 (= tp!1169373 b_and!288677)))

(declare-fun b!3857917 () Bool)

(declare-fun b_free!103601 () Bool)

(declare-fun b_next!104305 () Bool)

(assert (=> b!3857917 (= b_free!103601 (not b_next!104305))))

(declare-fun tp!1169382 () Bool)

(declare-fun b_and!288679 () Bool)

(assert (=> b!3857917 (= tp!1169382 b_and!288679)))

(declare-fun b_free!103603 () Bool)

(declare-fun b_next!104307 () Bool)

(assert (=> b!3857917 (= b_free!103603 (not b_next!104307))))

(declare-fun tp!1169374 () Bool)

(declare-fun b_and!288681 () Bool)

(assert (=> b!3857917 (= tp!1169374 b_and!288681)))

(declare-fun b!3857937 () Bool)

(declare-fun b_free!103605 () Bool)

(declare-fun b_next!104309 () Bool)

(assert (=> b!3857937 (= b_free!103605 (not b_next!104309))))

(declare-fun tp!1169381 () Bool)

(declare-fun b_and!288683 () Bool)

(assert (=> b!3857937 (= tp!1169381 b_and!288683)))

(declare-fun b_free!103607 () Bool)

(declare-fun b_next!104311 () Bool)

(assert (=> b!3857937 (= b_free!103607 (not b_next!104311))))

(declare-fun tp!1169372 () Bool)

(declare-fun b_and!288685 () Bool)

(assert (=> b!3857937 (= tp!1169372 b_and!288685)))

(declare-fun b!3857916 () Bool)

(declare-fun e!2384820 () Bool)

(declare-fun e!2384802 () Bool)

(assert (=> b!3857916 (= e!2384820 e!2384802)))

(declare-fun res!1561854 () Bool)

(assert (=> b!3857916 (=> (not res!1561854) (not e!2384802))))

(declare-datatypes ((C!22644 0))(
  ( (C!22645 (val!13416 Int)) )
))
(declare-datatypes ((List!41006 0))(
  ( (Nil!40882) (Cons!40882 (h!46302 C!22644) (t!313113 List!41006)) )
))
(declare-datatypes ((IArray!25075 0))(
  ( (IArray!25076 (innerList!12595 List!41006)) )
))
(declare-datatypes ((Conc!12535 0))(
  ( (Node!12535 (left!31511 Conc!12535) (right!31841 Conc!12535) (csize!25300 Int) (cheight!12746 Int)) (Leaf!19404 (xs!15841 IArray!25075) (csize!25301 Int)) (Empty!12535) )
))
(declare-datatypes ((BalanceConc!24664 0))(
  ( (BalanceConc!24665 (c!671840 Conc!12535)) )
))
(declare-datatypes ((List!41007 0))(
  ( (Nil!40883) (Cons!40883 (h!46303 (_ BitVec 16)) (t!313114 List!41007)) )
))
(declare-datatypes ((TokenValue!6554 0))(
  ( (FloatLiteralValue!13108 (text!46323 List!41007)) (TokenValueExt!6553 (__x!25325 Int)) (Broken!32770 (value!200842 List!41007)) (Object!6677) (End!6554) (Def!6554) (Underscore!6554) (Match!6554) (Else!6554) (Error!6554) (Case!6554) (If!6554) (Extends!6554) (Abstract!6554) (Class!6554) (Val!6554) (DelimiterValue!13108 (del!6614 List!41007)) (KeywordValue!6560 (value!200843 List!41007)) (CommentValue!13108 (value!200844 List!41007)) (WhitespaceValue!13108 (value!200845 List!41007)) (IndentationValue!6554 (value!200846 List!41007)) (String!46487) (Int32!6554) (Broken!32771 (value!200847 List!41007)) (Boolean!6555) (Unit!58551) (OperatorValue!6557 (op!6614 List!41007)) (IdentifierValue!13108 (value!200848 List!41007)) (IdentifierValue!13109 (value!200849 List!41007)) (WhitespaceValue!13109 (value!200850 List!41007)) (True!13108) (False!13108) (Broken!32772 (value!200851 List!41007)) (Broken!32773 (value!200852 List!41007)) (True!13109) (RightBrace!6554) (RightBracket!6554) (Colon!6554) (Null!6554) (Comma!6554) (LeftBracket!6554) (False!13109) (LeftBrace!6554) (ImaginaryLiteralValue!6554 (text!46324 List!41007)) (StringLiteralValue!19662 (value!200853 List!41007)) (EOFValue!6554 (value!200854 List!41007)) (IdentValue!6554 (value!200855 List!41007)) (DelimiterValue!13109 (value!200856 List!41007)) (DedentValue!6554 (value!200857 List!41007)) (NewLineValue!6554 (value!200858 List!41007)) (IntegerValue!19662 (value!200859 (_ BitVec 32)) (text!46325 List!41007)) (IntegerValue!19663 (value!200860 Int) (text!46326 List!41007)) (Times!6554) (Or!6554) (Equal!6554) (Minus!6554) (Broken!32774 (value!200861 List!41007)) (And!6554) (Div!6554) (LessEqual!6554) (Mod!6554) (Concat!17783) (Not!6554) (Plus!6554) (SpaceValue!6554 (value!200862 List!41007)) (IntegerValue!19664 (value!200863 Int) (text!46327 List!41007)) (StringLiteralValue!19663 (text!46328 List!41007)) (FloatLiteralValue!13109 (text!46329 List!41007)) (BytesLiteralValue!6554 (value!200864 List!41007)) (CommentValue!13109 (value!200865 List!41007)) (StringLiteralValue!19664 (value!200866 List!41007)) (ErrorTokenValue!6554 (msg!6615 List!41007)) )
))
(declare-datatypes ((Regex!11229 0))(
  ( (ElementMatch!11229 (c!671841 C!22644)) (Concat!17784 (regOne!22970 Regex!11229) (regTwo!22970 Regex!11229)) (EmptyExpr!11229) (Star!11229 (reg!11558 Regex!11229)) (EmptyLang!11229) (Union!11229 (regOne!22971 Regex!11229) (regTwo!22971 Regex!11229)) )
))
(declare-datatypes ((String!46488 0))(
  ( (String!46489 (value!200867 String)) )
))
(declare-datatypes ((TokenValueInjection!12536 0))(
  ( (TokenValueInjection!12537 (toValue!8752 Int) (toChars!8611 Int)) )
))
(declare-datatypes ((Rule!12448 0))(
  ( (Rule!12449 (regex!6324 Regex!11229) (tag!7184 String!46488) (isSeparator!6324 Bool) (transformation!6324 TokenValueInjection!12536)) )
))
(declare-datatypes ((Token!11786 0))(
  ( (Token!11787 (value!200868 TokenValue!6554) (rule!9188 Rule!12448) (size!30753 Int) (originalCharacters!6924 List!41006)) )
))
(declare-datatypes ((List!41008 0))(
  ( (Nil!40884) (Cons!40884 (h!46304 Token!11786) (t!313115 List!41008)) )
))
(declare-datatypes ((tuple2!40082 0))(
  ( (tuple2!40083 (_1!23175 List!41008) (_2!23175 List!41006)) )
))
(declare-fun lt!1340280 () tuple2!40082)

(declare-fun suffixResult!91 () List!41006)

(declare-fun lt!1340276 () List!41008)

(assert (=> b!3857916 (= res!1561854 (= lt!1340280 (tuple2!40083 lt!1340276 suffixResult!91)))))

(declare-fun lt!1340271 () List!41006)

(declare-datatypes ((List!41009 0))(
  ( (Nil!40885) (Cons!40885 (h!46305 Rule!12448) (t!313116 List!41009)) )
))
(declare-fun rules!2768 () List!41009)

(declare-datatypes ((LexerInterface!5913 0))(
  ( (LexerInterfaceExt!5910 (__x!25326 Int)) (Lexer!5911) )
))
(declare-fun thiss!20629 () LexerInterface!5913)

(declare-fun lexList!1681 (LexerInterface!5913 List!41009 List!41006) tuple2!40082)

(assert (=> b!3857916 (= lt!1340280 (lexList!1681 thiss!20629 rules!2768 lt!1340271))))

(declare-fun prefixTokens!80 () List!41008)

(declare-fun suffixTokens!72 () List!41008)

(declare-fun ++!10405 (List!41008 List!41008) List!41008)

(assert (=> b!3857916 (= lt!1340276 (++!10405 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41006)

(declare-fun suffix!1176 () List!41006)

(declare-fun ++!10406 (List!41006 List!41006) List!41006)

(assert (=> b!3857916 (= lt!1340271 (++!10406 prefix!426 suffix!1176))))

(declare-fun b!3857918 () Bool)

(declare-fun e!2384823 () Bool)

(declare-fun tp_is_empty!19429 () Bool)

(declare-fun tp!1169377 () Bool)

(assert (=> b!3857918 (= e!2384823 (and tp_is_empty!19429 tp!1169377))))

(declare-fun e!2384806 () Bool)

(declare-fun e!2384813 () Bool)

(declare-fun tp!1169375 () Bool)

(declare-fun b!3857919 () Bool)

(declare-fun inv!55043 (String!46488) Bool)

(declare-fun inv!55046 (TokenValueInjection!12536) Bool)

(assert (=> b!3857919 (= e!2384813 (and tp!1169375 (inv!55043 (tag!7184 (rule!9188 (h!46304 suffixTokens!72)))) (inv!55046 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) e!2384806))))

(declare-fun b!3857920 () Bool)

(declare-fun e!2384808 () Bool)

(declare-fun e!2384826 () Bool)

(assert (=> b!3857920 (= e!2384808 e!2384826)))

(declare-fun res!1561842 () Bool)

(assert (=> b!3857920 (=> res!1561842 e!2384826)))

(declare-datatypes ((tuple2!40084 0))(
  ( (tuple2!40085 (_1!23176 Token!11786) (_2!23176 List!41006)) )
))
(declare-fun lt!1340282 () tuple2!40084)

(declare-fun head!8124 (List!41008) Token!11786)

(assert (=> b!3857920 (= res!1561842 (not (= (_1!23176 lt!1340282) (head!8124 prefixTokens!80))))))

(declare-datatypes ((Option!8742 0))(
  ( (None!8741) (Some!8741 (v!39039 tuple2!40084)) )
))
(declare-fun lt!1340265 () Option!8742)

(declare-fun get!13526 (Option!8742) tuple2!40084)

(assert (=> b!3857920 (= lt!1340282 (get!13526 lt!1340265))))

(declare-fun b!3857921 () Bool)

(declare-fun res!1561849 () Bool)

(assert (=> b!3857921 (=> res!1561849 e!2384826)))

(declare-fun isEmpty!24210 (List!41008) Bool)

(declare-fun tail!5835 (List!41008) List!41008)

(assert (=> b!3857921 (= res!1561849 (not (isEmpty!24210 (tail!5835 prefixTokens!80))))))

(declare-fun e!2384817 () Bool)

(declare-fun e!2384798 () Bool)

(declare-fun b!3857922 () Bool)

(declare-fun tp!1169388 () Bool)

(declare-fun inv!55047 (Token!11786) Bool)

(assert (=> b!3857922 (= e!2384817 (and (inv!55047 (h!46304 prefixTokens!80)) e!2384798 tp!1169388))))

(declare-fun b!3857923 () Bool)

(assert (=> b!3857923 (= e!2384826 (not (= prefixTokens!80 Nil!40884)))))

(declare-fun b!3857924 () Bool)

(declare-fun res!1561851 () Bool)

(declare-fun e!2384804 () Bool)

(assert (=> b!3857924 (=> res!1561851 e!2384804)))

(declare-fun lt!1340274 () tuple2!40082)

(assert (=> b!3857924 (= res!1561851 (not (= lt!1340280 (tuple2!40083 (++!10405 (Cons!40884 (_1!23176 (v!39039 lt!1340265)) Nil!40884) (_1!23175 lt!1340274)) (_2!23175 lt!1340274)))))))

(declare-fun b!3857925 () Bool)

(declare-fun res!1561844 () Bool)

(assert (=> b!3857925 (=> (not res!1561844) (not e!2384820))))

(assert (=> b!3857925 (= res!1561844 (not (isEmpty!24210 prefixTokens!80)))))

(declare-fun b!3857926 () Bool)

(declare-fun e!2384801 () Bool)

(assert (=> b!3857926 (= e!2384804 e!2384801)))

(declare-fun res!1561837 () Bool)

(assert (=> b!3857926 (=> res!1561837 e!2384801)))

(declare-fun lt!1340272 () Int)

(declare-fun lt!1340278 () Int)

(assert (=> b!3857926 (= res!1561837 (>= lt!1340272 lt!1340278))))

(declare-fun size!30754 (List!41006) Int)

(assert (=> b!3857926 (= lt!1340278 (size!30754 suffix!1176))))

(assert (=> b!3857926 (= lt!1340272 (size!30754 (_2!23176 (v!39039 lt!1340265))))))

(declare-fun b!3857927 () Bool)

(declare-fun e!2384821 () Bool)

(declare-fun tp!1169383 () Bool)

(assert (=> b!3857927 (= e!2384821 (and tp_is_empty!19429 tp!1169383))))

(declare-fun b!3857928 () Bool)

(declare-fun e!2384818 () Bool)

(declare-fun e!2384815 () Bool)

(declare-fun tp!1169387 () Bool)

(assert (=> b!3857928 (= e!2384818 (and tp!1169387 (inv!55043 (tag!7184 (h!46305 rules!2768))) (inv!55046 (transformation!6324 (h!46305 rules!2768))) e!2384815))))

(declare-fun b!3857929 () Bool)

(declare-fun res!1561843 () Bool)

(assert (=> b!3857929 (=> res!1561843 e!2384804)))

(assert (=> b!3857929 (= res!1561843 (or (not (= lt!1340274 (tuple2!40083 (_1!23175 lt!1340274) (_2!23175 lt!1340274)))) (= (_2!23176 (v!39039 lt!1340265)) suffix!1176)))))

(declare-fun b!3857930 () Bool)

(declare-fun e!2384819 () Bool)

(assert (=> b!3857930 (= e!2384819 (= (size!30753 (_1!23176 (v!39039 lt!1340265))) (size!30754 (originalCharacters!6924 (_1!23176 (v!39039 lt!1340265))))))))

(declare-fun e!2384825 () Bool)

(declare-fun b!3857931 () Bool)

(declare-fun tp!1169378 () Bool)

(declare-fun inv!21 (TokenValue!6554) Bool)

(assert (=> b!3857931 (= e!2384825 (and (inv!21 (value!200868 (h!46304 suffixTokens!72))) e!2384813 tp!1169378))))

(declare-fun res!1561853 () Bool)

(assert (=> start!361668 (=> (not res!1561853) (not e!2384820))))

(get-info :version)

(assert (=> start!361668 (= res!1561853 ((_ is Lexer!5911) thiss!20629))))

(assert (=> start!361668 e!2384820))

(declare-fun e!2384816 () Bool)

(assert (=> start!361668 e!2384816))

(assert (=> start!361668 true))

(assert (=> start!361668 e!2384821))

(declare-fun e!2384800 () Bool)

(assert (=> start!361668 e!2384800))

(assert (=> start!361668 e!2384817))

(declare-fun e!2384809 () Bool)

(assert (=> start!361668 e!2384809))

(assert (=> start!361668 e!2384823))

(assert (=> b!3857917 (= e!2384815 (and tp!1169382 tp!1169374))))

(declare-fun b!3857932 () Bool)

(declare-fun res!1561847 () Bool)

(assert (=> b!3857932 (=> (not res!1561847) (not e!2384820))))

(declare-fun isEmpty!24211 (List!41009) Bool)

(assert (=> b!3857932 (= res!1561847 (not (isEmpty!24211 rules!2768)))))

(declare-fun b!3857933 () Bool)

(declare-fun tp!1169385 () Bool)

(assert (=> b!3857933 (= e!2384816 (and tp_is_empty!19429 tp!1169385))))

(declare-fun b!3857934 () Bool)

(declare-fun res!1561846 () Bool)

(assert (=> b!3857934 (=> (not res!1561846) (not e!2384820))))

(declare-fun rulesInvariant!5256 (LexerInterface!5913 List!41009) Bool)

(assert (=> b!3857934 (= res!1561846 (rulesInvariant!5256 thiss!20629 rules!2768))))

(declare-fun e!2384805 () Bool)

(assert (=> b!3857935 (= e!2384805 (and tp!1169376 tp!1169373))))

(declare-fun b!3857936 () Bool)

(declare-fun e!2384807 () Bool)

(assert (=> b!3857936 (= e!2384807 e!2384808)))

(declare-fun res!1561841 () Bool)

(assert (=> b!3857936 (=> res!1561841 e!2384808)))

(declare-fun lt!1340281 () List!41006)

(declare-fun matchR!5376 (Regex!11229 List!41006) Bool)

(assert (=> b!3857936 (= res!1561841 (not (matchR!5376 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) lt!1340281)))))

(declare-fun lt!1340266 () Int)

(declare-fun lt!1340275 () TokenValue!6554)

(declare-fun maxPrefixOneRule!2299 (LexerInterface!5913 Rule!12448 List!41006) Option!8742)

(assert (=> b!3857936 (= (maxPrefixOneRule!2299 thiss!20629 (rule!9188 (_1!23176 (v!39039 lt!1340265))) lt!1340271) (Some!8741 (tuple2!40085 (Token!11787 lt!1340275 (rule!9188 (_1!23176 (v!39039 lt!1340265))) lt!1340266 lt!1340281) (_2!23176 (v!39039 lt!1340265)))))))

(declare-datatypes ((Unit!58552 0))(
  ( (Unit!58553) )
))
(declare-fun lt!1340269 () Unit!58552)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1197 (LexerInterface!5913 List!41009 List!41006 List!41006 List!41006 Rule!12448) Unit!58552)

(assert (=> b!3857936 (= lt!1340269 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1197 thiss!20629 rules!2768 lt!1340281 lt!1340271 (_2!23176 (v!39039 lt!1340265)) (rule!9188 (_1!23176 (v!39039 lt!1340265)))))))

(assert (=> b!3857937 (= e!2384806 (and tp!1169381 tp!1169372))))

(declare-fun b!3857938 () Bool)

(declare-fun res!1561838 () Bool)

(assert (=> b!3857938 (=> res!1561838 e!2384826)))

(assert (=> b!3857938 (= res!1561838 (>= (size!30754 (_2!23176 lt!1340282)) lt!1340278))))

(declare-fun b!3857939 () Bool)

(declare-fun e!2384822 () Bool)

(assert (=> b!3857939 (= e!2384802 e!2384822)))

(declare-fun res!1561850 () Bool)

(assert (=> b!3857939 (=> (not res!1561850) (not e!2384822))))

(assert (=> b!3857939 (= res!1561850 ((_ is Some!8741) lt!1340265))))

(declare-fun maxPrefix!3217 (LexerInterface!5913 List!41009 List!41006) Option!8742)

(assert (=> b!3857939 (= lt!1340265 (maxPrefix!3217 thiss!20629 rules!2768 lt!1340271))))

(declare-fun tp!1169380 () Bool)

(declare-fun b!3857940 () Bool)

(assert (=> b!3857940 (= e!2384809 (and (inv!55047 (h!46304 suffixTokens!72)) e!2384825 tp!1169380))))

(declare-fun b!3857941 () Bool)

(declare-fun res!1561855 () Bool)

(assert (=> b!3857941 (=> (not res!1561855) (not e!2384820))))

(declare-fun isEmpty!24212 (List!41006) Bool)

(assert (=> b!3857941 (= res!1561855 (not (isEmpty!24212 prefix!426)))))

(declare-fun b!3857942 () Bool)

(assert (=> b!3857942 (= e!2384822 (not e!2384804))))

(declare-fun res!1561845 () Bool)

(assert (=> b!3857942 (=> res!1561845 e!2384804)))

(declare-fun lt!1340277 () List!41006)

(assert (=> b!3857942 (= res!1561845 (not (= lt!1340277 lt!1340271)))))

(assert (=> b!3857942 (= lt!1340274 (lexList!1681 thiss!20629 rules!2768 (_2!23176 (v!39039 lt!1340265))))))

(declare-fun lt!1340268 () List!41006)

(assert (=> b!3857942 (and (= (size!30753 (_1!23176 (v!39039 lt!1340265))) lt!1340266) (= (originalCharacters!6924 (_1!23176 (v!39039 lt!1340265))) lt!1340281) (= (v!39039 lt!1340265) (tuple2!40085 (Token!11787 lt!1340275 (rule!9188 (_1!23176 (v!39039 lt!1340265))) lt!1340266 lt!1340281) lt!1340268)))))

(assert (=> b!3857942 (= lt!1340266 (size!30754 lt!1340281))))

(assert (=> b!3857942 e!2384819))

(declare-fun res!1561848 () Bool)

(assert (=> b!3857942 (=> (not res!1561848) (not e!2384819))))

(assert (=> b!3857942 (= res!1561848 (= (value!200868 (_1!23176 (v!39039 lt!1340265))) lt!1340275))))

(declare-fun apply!9567 (TokenValueInjection!12536 BalanceConc!24664) TokenValue!6554)

(declare-fun seqFromList!4595 (List!41006) BalanceConc!24664)

(assert (=> b!3857942 (= lt!1340275 (apply!9567 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) (seqFromList!4595 lt!1340281)))))

(assert (=> b!3857942 (= (_2!23176 (v!39039 lt!1340265)) lt!1340268)))

(declare-fun lt!1340283 () Unit!58552)

(declare-fun lemmaSamePrefixThenSameSuffix!1644 (List!41006 List!41006 List!41006 List!41006 List!41006) Unit!58552)

(assert (=> b!3857942 (= lt!1340283 (lemmaSamePrefixThenSameSuffix!1644 lt!1340281 (_2!23176 (v!39039 lt!1340265)) lt!1340281 lt!1340268 lt!1340271))))

(declare-fun getSuffix!1878 (List!41006 List!41006) List!41006)

(assert (=> b!3857942 (= lt!1340268 (getSuffix!1878 lt!1340271 lt!1340281))))

(declare-fun isPrefix!3423 (List!41006 List!41006) Bool)

(assert (=> b!3857942 (isPrefix!3423 lt!1340281 lt!1340277)))

(assert (=> b!3857942 (= lt!1340277 (++!10406 lt!1340281 (_2!23176 (v!39039 lt!1340265))))))

(declare-fun lt!1340264 () Unit!58552)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2286 (List!41006 List!41006) Unit!58552)

(assert (=> b!3857942 (= lt!1340264 (lemmaConcatTwoListThenFirstIsPrefix!2286 lt!1340281 (_2!23176 (v!39039 lt!1340265))))))

(declare-fun list!15220 (BalanceConc!24664) List!41006)

(declare-fun charsOf!4152 (Token!11786) BalanceConc!24664)

(assert (=> b!3857942 (= lt!1340281 (list!15220 (charsOf!4152 (_1!23176 (v!39039 lt!1340265)))))))

(declare-fun ruleValid!2276 (LexerInterface!5913 Rule!12448) Bool)

(assert (=> b!3857942 (ruleValid!2276 thiss!20629 (rule!9188 (_1!23176 (v!39039 lt!1340265))))))

(declare-fun lt!1340270 () Unit!58552)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1356 (LexerInterface!5913 Rule!12448 List!41009) Unit!58552)

(assert (=> b!3857942 (= lt!1340270 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1356 thiss!20629 (rule!9188 (_1!23176 (v!39039 lt!1340265))) rules!2768))))

(declare-fun lt!1340279 () Unit!58552)

(declare-fun lemmaCharactersSize!985 (Token!11786) Unit!58552)

(assert (=> b!3857942 (= lt!1340279 (lemmaCharactersSize!985 (_1!23176 (v!39039 lt!1340265))))))

(declare-fun b!3857943 () Bool)

(declare-fun res!1561840 () Bool)

(assert (=> b!3857943 (=> (not res!1561840) (not e!2384802))))

(assert (=> b!3857943 (= res!1561840 (= (lexList!1681 thiss!20629 rules!2768 suffix!1176) (tuple2!40083 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3857944 () Bool)

(declare-fun tp!1169379 () Bool)

(assert (=> b!3857944 (= e!2384800 (and e!2384818 tp!1169379))))

(declare-fun b!3857945 () Bool)

(declare-fun e!2384803 () Bool)

(assert (=> b!3857945 (= e!2384803 e!2384807)))

(declare-fun res!1561852 () Bool)

(assert (=> b!3857945 (=> res!1561852 e!2384807)))

(declare-fun lt!1340273 () Int)

(declare-fun lt!1340267 () Int)

(assert (=> b!3857945 (= res!1561852 (or (not (= (+ lt!1340267 lt!1340278) lt!1340273)) (<= lt!1340266 lt!1340267)))))

(assert (=> b!3857945 (= lt!1340267 (size!30754 prefix!426))))

(declare-fun b!3857946 () Bool)

(assert (=> b!3857946 (= e!2384801 e!2384803)))

(declare-fun res!1561839 () Bool)

(assert (=> b!3857946 (=> res!1561839 e!2384803)))

(assert (=> b!3857946 (= res!1561839 (not (= (+ lt!1340266 lt!1340272) lt!1340273)))))

(assert (=> b!3857946 (= lt!1340273 (size!30754 lt!1340271))))

(declare-fun tp!1169384 () Bool)

(declare-fun b!3857947 () Bool)

(declare-fun e!2384814 () Bool)

(assert (=> b!3857947 (= e!2384814 (and tp!1169384 (inv!55043 (tag!7184 (rule!9188 (h!46304 prefixTokens!80)))) (inv!55046 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) e!2384805))))

(declare-fun b!3857948 () Bool)

(declare-fun tp!1169386 () Bool)

(assert (=> b!3857948 (= e!2384798 (and (inv!21 (value!200868 (h!46304 prefixTokens!80))) e!2384814 tp!1169386))))

(assert (= (and start!361668 res!1561853) b!3857932))

(assert (= (and b!3857932 res!1561847) b!3857934))

(assert (= (and b!3857934 res!1561846) b!3857925))

(assert (= (and b!3857925 res!1561844) b!3857941))

(assert (= (and b!3857941 res!1561855) b!3857916))

(assert (= (and b!3857916 res!1561854) b!3857943))

(assert (= (and b!3857943 res!1561840) b!3857939))

(assert (= (and b!3857939 res!1561850) b!3857942))

(assert (= (and b!3857942 res!1561848) b!3857930))

(assert (= (and b!3857942 (not res!1561845)) b!3857924))

(assert (= (and b!3857924 (not res!1561851)) b!3857929))

(assert (= (and b!3857929 (not res!1561843)) b!3857926))

(assert (= (and b!3857926 (not res!1561837)) b!3857946))

(assert (= (and b!3857946 (not res!1561839)) b!3857945))

(assert (= (and b!3857945 (not res!1561852)) b!3857936))

(assert (= (and b!3857936 (not res!1561841)) b!3857920))

(assert (= (and b!3857920 (not res!1561842)) b!3857938))

(assert (= (and b!3857938 (not res!1561838)) b!3857921))

(assert (= (and b!3857921 (not res!1561849)) b!3857923))

(assert (= (and start!361668 ((_ is Cons!40882) suffixResult!91)) b!3857933))

(assert (= (and start!361668 ((_ is Cons!40882) suffix!1176)) b!3857927))

(assert (= b!3857928 b!3857917))

(assert (= b!3857944 b!3857928))

(assert (= (and start!361668 ((_ is Cons!40885) rules!2768)) b!3857944))

(assert (= b!3857947 b!3857935))

(assert (= b!3857948 b!3857947))

(assert (= b!3857922 b!3857948))

(assert (= (and start!361668 ((_ is Cons!40884) prefixTokens!80)) b!3857922))

(assert (= b!3857919 b!3857937))

(assert (= b!3857931 b!3857919))

(assert (= b!3857940 b!3857931))

(assert (= (and start!361668 ((_ is Cons!40884) suffixTokens!72)) b!3857940))

(assert (= (and start!361668 ((_ is Cons!40882) prefix!426)) b!3857918))

(declare-fun m!4413475 () Bool)

(assert (=> b!3857920 m!4413475))

(declare-fun m!4413477 () Bool)

(assert (=> b!3857920 m!4413477))

(declare-fun m!4413479 () Bool)

(assert (=> b!3857939 m!4413479))

(declare-fun m!4413481 () Bool)

(assert (=> b!3857942 m!4413481))

(declare-fun m!4413483 () Bool)

(assert (=> b!3857942 m!4413483))

(declare-fun m!4413485 () Bool)

(assert (=> b!3857942 m!4413485))

(declare-fun m!4413487 () Bool)

(assert (=> b!3857942 m!4413487))

(declare-fun m!4413489 () Bool)

(assert (=> b!3857942 m!4413489))

(declare-fun m!4413491 () Bool)

(assert (=> b!3857942 m!4413491))

(declare-fun m!4413493 () Bool)

(assert (=> b!3857942 m!4413493))

(declare-fun m!4413495 () Bool)

(assert (=> b!3857942 m!4413495))

(declare-fun m!4413497 () Bool)

(assert (=> b!3857942 m!4413497))

(declare-fun m!4413499 () Bool)

(assert (=> b!3857942 m!4413499))

(declare-fun m!4413501 () Bool)

(assert (=> b!3857942 m!4413501))

(declare-fun m!4413503 () Bool)

(assert (=> b!3857942 m!4413503))

(assert (=> b!3857942 m!4413481))

(declare-fun m!4413505 () Bool)

(assert (=> b!3857942 m!4413505))

(assert (=> b!3857942 m!4413497))

(declare-fun m!4413507 () Bool)

(assert (=> b!3857942 m!4413507))

(declare-fun m!4413509 () Bool)

(assert (=> b!3857948 m!4413509))

(declare-fun m!4413511 () Bool)

(assert (=> b!3857928 m!4413511))

(declare-fun m!4413513 () Bool)

(assert (=> b!3857928 m!4413513))

(declare-fun m!4413515 () Bool)

(assert (=> b!3857945 m!4413515))

(declare-fun m!4413517 () Bool)

(assert (=> b!3857946 m!4413517))

(declare-fun m!4413519 () Bool)

(assert (=> b!3857947 m!4413519))

(declare-fun m!4413521 () Bool)

(assert (=> b!3857947 m!4413521))

(declare-fun m!4413523 () Bool)

(assert (=> b!3857932 m!4413523))

(declare-fun m!4413525 () Bool)

(assert (=> b!3857938 m!4413525))

(declare-fun m!4413527 () Bool)

(assert (=> b!3857941 m!4413527))

(declare-fun m!4413529 () Bool)

(assert (=> b!3857916 m!4413529))

(declare-fun m!4413531 () Bool)

(assert (=> b!3857916 m!4413531))

(declare-fun m!4413533 () Bool)

(assert (=> b!3857916 m!4413533))

(declare-fun m!4413535 () Bool)

(assert (=> b!3857930 m!4413535))

(declare-fun m!4413537 () Bool)

(assert (=> b!3857922 m!4413537))

(declare-fun m!4413539 () Bool)

(assert (=> b!3857940 m!4413539))

(declare-fun m!4413541 () Bool)

(assert (=> b!3857936 m!4413541))

(declare-fun m!4413543 () Bool)

(assert (=> b!3857936 m!4413543))

(declare-fun m!4413545 () Bool)

(assert (=> b!3857936 m!4413545))

(declare-fun m!4413547 () Bool)

(assert (=> b!3857919 m!4413547))

(declare-fun m!4413549 () Bool)

(assert (=> b!3857919 m!4413549))

(declare-fun m!4413551 () Bool)

(assert (=> b!3857934 m!4413551))

(declare-fun m!4413553 () Bool)

(assert (=> b!3857925 m!4413553))

(declare-fun m!4413555 () Bool)

(assert (=> b!3857931 m!4413555))

(declare-fun m!4413557 () Bool)

(assert (=> b!3857924 m!4413557))

(declare-fun m!4413559 () Bool)

(assert (=> b!3857926 m!4413559))

(declare-fun m!4413561 () Bool)

(assert (=> b!3857926 m!4413561))

(declare-fun m!4413563 () Bool)

(assert (=> b!3857921 m!4413563))

(assert (=> b!3857921 m!4413563))

(declare-fun m!4413565 () Bool)

(assert (=> b!3857921 m!4413565))

(declare-fun m!4413567 () Bool)

(assert (=> b!3857943 m!4413567))

(check-sat (not b_next!104303) (not b!3857944) (not b!3857919) (not b!3857931) (not b!3857946) (not b!3857936) (not b!3857942) b_and!288675 (not b!3857918) b_and!288677 (not b!3857945) (not b!3857921) (not b!3857948) (not b!3857943) (not b!3857925) (not b!3857924) (not b!3857920) (not b!3857940) (not b_next!104305) (not b!3857938) (not b!3857930) (not b!3857916) b_and!288683 (not b!3857933) (not b_next!104307) (not b!3857934) (not b!3857922) b_and!288679 b_and!288681 (not b!3857927) tp_is_empty!19429 (not b!3857932) (not b!3857939) b_and!288685 (not b_next!104301) (not b!3857947) (not b_next!104309) (not b!3857926) (not b!3857928) (not b_next!104311) (not b!3857941))
(check-sat (not b_next!104303) (not b_next!104305) b_and!288683 (not b_next!104307) b_and!288675 (not b_next!104309) (not b_next!104311) b_and!288677 b_and!288679 b_and!288681 b_and!288685 (not b_next!104301))
(get-model)

(declare-fun d!1143849 () Bool)

(assert (=> d!1143849 (= (inv!55043 (tag!7184 (rule!9188 (h!46304 suffixTokens!72)))) (= (mod (str.len (value!200867 (tag!7184 (rule!9188 (h!46304 suffixTokens!72))))) 2) 0))))

(assert (=> b!3857919 d!1143849))

(declare-fun d!1143851 () Bool)

(declare-fun res!1561862 () Bool)

(declare-fun e!2384829 () Bool)

(assert (=> d!1143851 (=> (not res!1561862) (not e!2384829))))

(declare-fun semiInverseModEq!2713 (Int Int) Bool)

(assert (=> d!1143851 (= res!1561862 (semiInverseModEq!2713 (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) (toValue!8752 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72))))))))

(assert (=> d!1143851 (= (inv!55046 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) e!2384829)))

(declare-fun b!3857951 () Bool)

(declare-fun equivClasses!2612 (Int Int) Bool)

(assert (=> b!3857951 (= e!2384829 (equivClasses!2612 (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) (toValue!8752 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72))))))))

(assert (= (and d!1143851 res!1561862) b!3857951))

(declare-fun m!4413569 () Bool)

(assert (=> d!1143851 m!4413569))

(declare-fun m!4413571 () Bool)

(assert (=> b!3857951 m!4413571))

(assert (=> b!3857919 d!1143851))

(declare-fun d!1143853 () Bool)

(declare-fun res!1561867 () Bool)

(declare-fun e!2384832 () Bool)

(assert (=> d!1143853 (=> (not res!1561867) (not e!2384832))))

(assert (=> d!1143853 (= res!1561867 (not (isEmpty!24212 (originalCharacters!6924 (h!46304 suffixTokens!72)))))))

(assert (=> d!1143853 (= (inv!55047 (h!46304 suffixTokens!72)) e!2384832)))

(declare-fun b!3857956 () Bool)

(declare-fun res!1561868 () Bool)

(assert (=> b!3857956 (=> (not res!1561868) (not e!2384832))))

(declare-fun dynLambda!17648 (Int TokenValue!6554) BalanceConc!24664)

(assert (=> b!3857956 (= res!1561868 (= (originalCharacters!6924 (h!46304 suffixTokens!72)) (list!15220 (dynLambda!17648 (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) (value!200868 (h!46304 suffixTokens!72))))))))

(declare-fun b!3857957 () Bool)

(assert (=> b!3857957 (= e!2384832 (= (size!30753 (h!46304 suffixTokens!72)) (size!30754 (originalCharacters!6924 (h!46304 suffixTokens!72)))))))

(assert (= (and d!1143853 res!1561867) b!3857956))

(assert (= (and b!3857956 res!1561868) b!3857957))

(declare-fun b_lambda!112791 () Bool)

(assert (=> (not b_lambda!112791) (not b!3857956)))

(declare-fun tb!223409 () Bool)

(declare-fun t!313118 () Bool)

(assert (=> (and b!3857935 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72))))) t!313118) tb!223409))

(declare-fun b!3857962 () Bool)

(declare-fun e!2384835 () Bool)

(declare-fun tp!1169391 () Bool)

(declare-fun inv!55050 (Conc!12535) Bool)

(assert (=> b!3857962 (= e!2384835 (and (inv!55050 (c!671840 (dynLambda!17648 (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) (value!200868 (h!46304 suffixTokens!72))))) tp!1169391))))

(declare-fun result!272074 () Bool)

(declare-fun inv!55051 (BalanceConc!24664) Bool)

(assert (=> tb!223409 (= result!272074 (and (inv!55051 (dynLambda!17648 (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) (value!200868 (h!46304 suffixTokens!72)))) e!2384835))))

(assert (= tb!223409 b!3857962))

(declare-fun m!4413573 () Bool)

(assert (=> b!3857962 m!4413573))

(declare-fun m!4413575 () Bool)

(assert (=> tb!223409 m!4413575))

(assert (=> b!3857956 t!313118))

(declare-fun b_and!288687 () Bool)

(assert (= b_and!288677 (and (=> t!313118 result!272074) b_and!288687)))

(declare-fun tb!223411 () Bool)

(declare-fun t!313120 () Bool)

(assert (=> (and b!3857917 (= (toChars!8611 (transformation!6324 (h!46305 rules!2768))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72))))) t!313120) tb!223411))

(declare-fun result!272078 () Bool)

(assert (= result!272078 result!272074))

(assert (=> b!3857956 t!313120))

(declare-fun b_and!288689 () Bool)

(assert (= b_and!288681 (and (=> t!313120 result!272078) b_and!288689)))

(declare-fun t!313122 () Bool)

(declare-fun tb!223413 () Bool)

(assert (=> (and b!3857937 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72))))) t!313122) tb!223413))

(declare-fun result!272080 () Bool)

(assert (= result!272080 result!272074))

(assert (=> b!3857956 t!313122))

(declare-fun b_and!288691 () Bool)

(assert (= b_and!288685 (and (=> t!313122 result!272080) b_and!288691)))

(declare-fun m!4413577 () Bool)

(assert (=> d!1143853 m!4413577))

(declare-fun m!4413579 () Bool)

(assert (=> b!3857956 m!4413579))

(assert (=> b!3857956 m!4413579))

(declare-fun m!4413581 () Bool)

(assert (=> b!3857956 m!4413581))

(declare-fun m!4413583 () Bool)

(assert (=> b!3857957 m!4413583))

(assert (=> b!3857940 d!1143853))

(declare-fun d!1143855 () Bool)

(assert (=> d!1143855 (= (isEmpty!24212 prefix!426) ((_ is Nil!40882) prefix!426))))

(assert (=> b!3857941 d!1143855))

(declare-fun b!3858076 () Bool)

(declare-fun res!1561927 () Bool)

(declare-fun e!2384901 () Bool)

(assert (=> b!3858076 (=> (not res!1561927) (not e!2384901))))

(declare-fun lt!1340342 () Option!8742)

(assert (=> b!3858076 (= res!1561927 (matchR!5376 (regex!6324 (rule!9188 (_1!23176 (get!13526 lt!1340342)))) (list!15220 (charsOf!4152 (_1!23176 (get!13526 lt!1340342))))))))

(declare-fun d!1143857 () Bool)

(declare-fun e!2384900 () Bool)

(assert (=> d!1143857 e!2384900))

(declare-fun res!1561924 () Bool)

(assert (=> d!1143857 (=> res!1561924 e!2384900)))

(declare-fun isEmpty!24213 (Option!8742) Bool)

(assert (=> d!1143857 (= res!1561924 (isEmpty!24213 lt!1340342))))

(declare-fun e!2384899 () Option!8742)

(assert (=> d!1143857 (= lt!1340342 e!2384899)))

(declare-fun c!671869 () Bool)

(assert (=> d!1143857 (= c!671869 (and ((_ is Cons!40885) rules!2768) ((_ is Nil!40885) (t!313116 rules!2768))))))

(declare-fun lt!1340340 () Unit!58552)

(declare-fun lt!1340341 () Unit!58552)

(assert (=> d!1143857 (= lt!1340340 lt!1340341)))

(assert (=> d!1143857 (isPrefix!3423 lt!1340271 lt!1340271)))

(declare-fun lemmaIsPrefixRefl!2183 (List!41006 List!41006) Unit!58552)

(assert (=> d!1143857 (= lt!1340341 (lemmaIsPrefixRefl!2183 lt!1340271 lt!1340271))))

(declare-fun rulesValidInductive!2255 (LexerInterface!5913 List!41009) Bool)

(assert (=> d!1143857 (rulesValidInductive!2255 thiss!20629 rules!2768)))

(assert (=> d!1143857 (= (maxPrefix!3217 thiss!20629 rules!2768 lt!1340271) lt!1340342)))

(declare-fun b!3858077 () Bool)

(declare-fun res!1561930 () Bool)

(assert (=> b!3858077 (=> (not res!1561930) (not e!2384901))))

(assert (=> b!3858077 (= res!1561930 (= (++!10406 (list!15220 (charsOf!4152 (_1!23176 (get!13526 lt!1340342)))) (_2!23176 (get!13526 lt!1340342))) lt!1340271))))

(declare-fun bm!282502 () Bool)

(declare-fun call!282507 () Option!8742)

(assert (=> bm!282502 (= call!282507 (maxPrefixOneRule!2299 thiss!20629 (h!46305 rules!2768) lt!1340271))))

(declare-fun b!3858078 () Bool)

(declare-fun res!1561928 () Bool)

(assert (=> b!3858078 (=> (not res!1561928) (not e!2384901))))

(assert (=> b!3858078 (= res!1561928 (= (value!200868 (_1!23176 (get!13526 lt!1340342))) (apply!9567 (transformation!6324 (rule!9188 (_1!23176 (get!13526 lt!1340342)))) (seqFromList!4595 (originalCharacters!6924 (_1!23176 (get!13526 lt!1340342)))))))))

(declare-fun b!3858079 () Bool)

(declare-fun contains!8265 (List!41009 Rule!12448) Bool)

(assert (=> b!3858079 (= e!2384901 (contains!8265 rules!2768 (rule!9188 (_1!23176 (get!13526 lt!1340342)))))))

(declare-fun b!3858080 () Bool)

(declare-fun lt!1340339 () Option!8742)

(declare-fun lt!1340338 () Option!8742)

(assert (=> b!3858080 (= e!2384899 (ite (and ((_ is None!8741) lt!1340339) ((_ is None!8741) lt!1340338)) None!8741 (ite ((_ is None!8741) lt!1340338) lt!1340339 (ite ((_ is None!8741) lt!1340339) lt!1340338 (ite (>= (size!30753 (_1!23176 (v!39039 lt!1340339))) (size!30753 (_1!23176 (v!39039 lt!1340338)))) lt!1340339 lt!1340338)))))))

(assert (=> b!3858080 (= lt!1340339 call!282507)))

(assert (=> b!3858080 (= lt!1340338 (maxPrefix!3217 thiss!20629 (t!313116 rules!2768) lt!1340271))))

(declare-fun b!3858081 () Bool)

(declare-fun res!1561929 () Bool)

(assert (=> b!3858081 (=> (not res!1561929) (not e!2384901))))

(assert (=> b!3858081 (= res!1561929 (< (size!30754 (_2!23176 (get!13526 lt!1340342))) (size!30754 lt!1340271)))))

(declare-fun b!3858082 () Bool)

(assert (=> b!3858082 (= e!2384899 call!282507)))

(declare-fun b!3858083 () Bool)

(declare-fun res!1561925 () Bool)

(assert (=> b!3858083 (=> (not res!1561925) (not e!2384901))))

(assert (=> b!3858083 (= res!1561925 (= (list!15220 (charsOf!4152 (_1!23176 (get!13526 lt!1340342)))) (originalCharacters!6924 (_1!23176 (get!13526 lt!1340342)))))))

(declare-fun b!3858084 () Bool)

(assert (=> b!3858084 (= e!2384900 e!2384901)))

(declare-fun res!1561926 () Bool)

(assert (=> b!3858084 (=> (not res!1561926) (not e!2384901))))

(declare-fun isDefined!6860 (Option!8742) Bool)

(assert (=> b!3858084 (= res!1561926 (isDefined!6860 lt!1340342))))

(assert (= (and d!1143857 c!671869) b!3858082))

(assert (= (and d!1143857 (not c!671869)) b!3858080))

(assert (= (or b!3858082 b!3858080) bm!282502))

(assert (= (and d!1143857 (not res!1561924)) b!3858084))

(assert (= (and b!3858084 res!1561926) b!3858083))

(assert (= (and b!3858083 res!1561925) b!3858081))

(assert (= (and b!3858081 res!1561929) b!3858077))

(assert (= (and b!3858077 res!1561930) b!3858078))

(assert (= (and b!3858078 res!1561928) b!3858076))

(assert (= (and b!3858076 res!1561927) b!3858079))

(declare-fun m!4413701 () Bool)

(assert (=> b!3858078 m!4413701))

(declare-fun m!4413703 () Bool)

(assert (=> b!3858078 m!4413703))

(assert (=> b!3858078 m!4413703))

(declare-fun m!4413705 () Bool)

(assert (=> b!3858078 m!4413705))

(declare-fun m!4413707 () Bool)

(assert (=> b!3858080 m!4413707))

(assert (=> b!3858081 m!4413701))

(declare-fun m!4413709 () Bool)

(assert (=> b!3858081 m!4413709))

(assert (=> b!3858081 m!4413517))

(assert (=> b!3858079 m!4413701))

(declare-fun m!4413711 () Bool)

(assert (=> b!3858079 m!4413711))

(declare-fun m!4413713 () Bool)

(assert (=> bm!282502 m!4413713))

(declare-fun m!4413715 () Bool)

(assert (=> b!3858084 m!4413715))

(declare-fun m!4413717 () Bool)

(assert (=> d!1143857 m!4413717))

(declare-fun m!4413719 () Bool)

(assert (=> d!1143857 m!4413719))

(declare-fun m!4413721 () Bool)

(assert (=> d!1143857 m!4413721))

(declare-fun m!4413723 () Bool)

(assert (=> d!1143857 m!4413723))

(assert (=> b!3858077 m!4413701))

(declare-fun m!4413731 () Bool)

(assert (=> b!3858077 m!4413731))

(assert (=> b!3858077 m!4413731))

(declare-fun m!4413733 () Bool)

(assert (=> b!3858077 m!4413733))

(assert (=> b!3858077 m!4413733))

(declare-fun m!4413735 () Bool)

(assert (=> b!3858077 m!4413735))

(assert (=> b!3858083 m!4413701))

(assert (=> b!3858083 m!4413731))

(assert (=> b!3858083 m!4413731))

(assert (=> b!3858083 m!4413733))

(assert (=> b!3858076 m!4413701))

(assert (=> b!3858076 m!4413731))

(assert (=> b!3858076 m!4413731))

(assert (=> b!3858076 m!4413733))

(assert (=> b!3858076 m!4413733))

(declare-fun m!4413737 () Bool)

(assert (=> b!3858076 m!4413737))

(assert (=> b!3857939 d!1143857))

(declare-fun b!3858147 () Bool)

(declare-fun e!2384934 () Bool)

(declare-fun lt!1340365 () tuple2!40082)

(assert (=> b!3858147 (= e!2384934 (not (isEmpty!24210 (_1!23175 lt!1340365))))))

(declare-fun b!3858148 () Bool)

(declare-fun e!2384932 () Bool)

(assert (=> b!3858148 (= e!2384932 (= (_2!23175 lt!1340365) lt!1340271))))

(declare-fun d!1143919 () Bool)

(assert (=> d!1143919 e!2384932))

(declare-fun c!671885 () Bool)

(declare-fun size!30756 (List!41008) Int)

(assert (=> d!1143919 (= c!671885 (> (size!30756 (_1!23175 lt!1340365)) 0))))

(declare-fun e!2384933 () tuple2!40082)

(assert (=> d!1143919 (= lt!1340365 e!2384933)))

(declare-fun c!671884 () Bool)

(declare-fun lt!1340367 () Option!8742)

(assert (=> d!1143919 (= c!671884 ((_ is Some!8741) lt!1340367))))

(assert (=> d!1143919 (= lt!1340367 (maxPrefix!3217 thiss!20629 rules!2768 lt!1340271))))

(assert (=> d!1143919 (= (lexList!1681 thiss!20629 rules!2768 lt!1340271) lt!1340365)))

(declare-fun b!3858149 () Bool)

(declare-fun lt!1340366 () tuple2!40082)

(assert (=> b!3858149 (= e!2384933 (tuple2!40083 (Cons!40884 (_1!23176 (v!39039 lt!1340367)) (_1!23175 lt!1340366)) (_2!23175 lt!1340366)))))

(assert (=> b!3858149 (= lt!1340366 (lexList!1681 thiss!20629 rules!2768 (_2!23176 (v!39039 lt!1340367))))))

(declare-fun b!3858150 () Bool)

(assert (=> b!3858150 (= e!2384933 (tuple2!40083 Nil!40884 lt!1340271))))

(declare-fun b!3858151 () Bool)

(assert (=> b!3858151 (= e!2384932 e!2384934)))

(declare-fun res!1561964 () Bool)

(assert (=> b!3858151 (= res!1561964 (< (size!30754 (_2!23175 lt!1340365)) (size!30754 lt!1340271)))))

(assert (=> b!3858151 (=> (not res!1561964) (not e!2384934))))

(assert (= (and d!1143919 c!671884) b!3858149))

(assert (= (and d!1143919 (not c!671884)) b!3858150))

(assert (= (and d!1143919 c!671885) b!3858151))

(assert (= (and d!1143919 (not c!671885)) b!3858148))

(assert (= (and b!3858151 res!1561964) b!3858147))

(declare-fun m!4413793 () Bool)

(assert (=> b!3858147 m!4413793))

(declare-fun m!4413797 () Bool)

(assert (=> d!1143919 m!4413797))

(assert (=> d!1143919 m!4413479))

(declare-fun m!4413799 () Bool)

(assert (=> b!3858149 m!4413799))

(declare-fun m!4413801 () Bool)

(assert (=> b!3858151 m!4413801))

(assert (=> b!3858151 m!4413517))

(assert (=> b!3857916 d!1143919))

(declare-fun b!3858185 () Bool)

(declare-fun e!2384955 () List!41008)

(assert (=> b!3858185 (= e!2384955 (Cons!40884 (h!46304 prefixTokens!80) (++!10405 (t!313115 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1143937 () Bool)

(declare-fun e!2384954 () Bool)

(assert (=> d!1143937 e!2384954))

(declare-fun res!1561980 () Bool)

(assert (=> d!1143937 (=> (not res!1561980) (not e!2384954))))

(declare-fun lt!1340375 () List!41008)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6096 (List!41008) (InoxSet Token!11786))

(assert (=> d!1143937 (= res!1561980 (= (content!6096 lt!1340375) ((_ map or) (content!6096 prefixTokens!80) (content!6096 suffixTokens!72))))))

(assert (=> d!1143937 (= lt!1340375 e!2384955)))

(declare-fun c!671894 () Bool)

(assert (=> d!1143937 (= c!671894 ((_ is Nil!40884) prefixTokens!80))))

(assert (=> d!1143937 (= (++!10405 prefixTokens!80 suffixTokens!72) lt!1340375)))

(declare-fun b!3858184 () Bool)

(assert (=> b!3858184 (= e!2384955 suffixTokens!72)))

(declare-fun b!3858187 () Bool)

(assert (=> b!3858187 (= e!2384954 (or (not (= suffixTokens!72 Nil!40884)) (= lt!1340375 prefixTokens!80)))))

(declare-fun b!3858186 () Bool)

(declare-fun res!1561981 () Bool)

(assert (=> b!3858186 (=> (not res!1561981) (not e!2384954))))

(assert (=> b!3858186 (= res!1561981 (= (size!30756 lt!1340375) (+ (size!30756 prefixTokens!80) (size!30756 suffixTokens!72))))))

(assert (= (and d!1143937 c!671894) b!3858184))

(assert (= (and d!1143937 (not c!671894)) b!3858185))

(assert (= (and d!1143937 res!1561980) b!3858186))

(assert (= (and b!3858186 res!1561981) b!3858187))

(declare-fun m!4413849 () Bool)

(assert (=> b!3858185 m!4413849))

(declare-fun m!4413851 () Bool)

(assert (=> d!1143937 m!4413851))

(declare-fun m!4413853 () Bool)

(assert (=> d!1143937 m!4413853))

(declare-fun m!4413855 () Bool)

(assert (=> d!1143937 m!4413855))

(declare-fun m!4413857 () Bool)

(assert (=> b!3858186 m!4413857))

(declare-fun m!4413859 () Bool)

(assert (=> b!3858186 m!4413859))

(declare-fun m!4413861 () Bool)

(assert (=> b!3858186 m!4413861))

(assert (=> b!3857916 d!1143937))

(declare-fun b!3858238 () Bool)

(declare-fun e!2384981 () List!41006)

(assert (=> b!3858238 (= e!2384981 suffix!1176)))

(declare-fun lt!1340381 () List!41006)

(declare-fun b!3858241 () Bool)

(declare-fun e!2384982 () Bool)

(assert (=> b!3858241 (= e!2384982 (or (not (= suffix!1176 Nil!40882)) (= lt!1340381 prefix!426)))))

(declare-fun d!1143953 () Bool)

(assert (=> d!1143953 e!2384982))

(declare-fun res!1562011 () Bool)

(assert (=> d!1143953 (=> (not res!1562011) (not e!2384982))))

(declare-fun content!6097 (List!41006) (InoxSet C!22644))

(assert (=> d!1143953 (= res!1562011 (= (content!6097 lt!1340381) ((_ map or) (content!6097 prefix!426) (content!6097 suffix!1176))))))

(assert (=> d!1143953 (= lt!1340381 e!2384981)))

(declare-fun c!671906 () Bool)

(assert (=> d!1143953 (= c!671906 ((_ is Nil!40882) prefix!426))))

(assert (=> d!1143953 (= (++!10406 prefix!426 suffix!1176) lt!1340381)))

(declare-fun b!3858240 () Bool)

(declare-fun res!1562010 () Bool)

(assert (=> b!3858240 (=> (not res!1562010) (not e!2384982))))

(assert (=> b!3858240 (= res!1562010 (= (size!30754 lt!1340381) (+ (size!30754 prefix!426) (size!30754 suffix!1176))))))

(declare-fun b!3858239 () Bool)

(assert (=> b!3858239 (= e!2384981 (Cons!40882 (h!46302 prefix!426) (++!10406 (t!313113 prefix!426) suffix!1176)))))

(assert (= (and d!1143953 c!671906) b!3858238))

(assert (= (and d!1143953 (not c!671906)) b!3858239))

(assert (= (and d!1143953 res!1562011) b!3858240))

(assert (= (and b!3858240 res!1562010) b!3858241))

(declare-fun m!4413871 () Bool)

(assert (=> d!1143953 m!4413871))

(declare-fun m!4413873 () Bool)

(assert (=> d!1143953 m!4413873))

(declare-fun m!4413875 () Bool)

(assert (=> d!1143953 m!4413875))

(declare-fun m!4413877 () Bool)

(assert (=> b!3858240 m!4413877))

(assert (=> b!3858240 m!4413515))

(assert (=> b!3858240 m!4413559))

(declare-fun m!4413879 () Bool)

(assert (=> b!3858239 m!4413879))

(assert (=> b!3857916 d!1143953))

(declare-fun d!1143957 () Bool)

(declare-fun lt!1340384 () Int)

(assert (=> d!1143957 (>= lt!1340384 0)))

(declare-fun e!2384985 () Int)

(assert (=> d!1143957 (= lt!1340384 e!2384985)))

(declare-fun c!671909 () Bool)

(assert (=> d!1143957 (= c!671909 ((_ is Nil!40882) (_2!23176 lt!1340282)))))

(assert (=> d!1143957 (= (size!30754 (_2!23176 lt!1340282)) lt!1340384)))

(declare-fun b!3858246 () Bool)

(assert (=> b!3858246 (= e!2384985 0)))

(declare-fun b!3858247 () Bool)

(assert (=> b!3858247 (= e!2384985 (+ 1 (size!30754 (t!313113 (_2!23176 lt!1340282)))))))

(assert (= (and d!1143957 c!671909) b!3858246))

(assert (= (and d!1143957 (not c!671909)) b!3858247))

(declare-fun m!4413881 () Bool)

(assert (=> b!3858247 m!4413881))

(assert (=> b!3857938 d!1143957))

(declare-fun bm!282511 () Bool)

(declare-fun call!282516 () Bool)

(assert (=> bm!282511 (= call!282516 (isEmpty!24212 lt!1340281))))

(declare-fun b!3858276 () Bool)

(declare-fun e!2385004 () Bool)

(declare-fun nullable!3913 (Regex!11229) Bool)

(assert (=> b!3858276 (= e!2385004 (nullable!3913 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265))))))))

(declare-fun b!3858277 () Bool)

(declare-fun res!1562034 () Bool)

(declare-fun e!2385005 () Bool)

(assert (=> b!3858277 (=> (not res!1562034) (not e!2385005))))

(assert (=> b!3858277 (= res!1562034 (not call!282516))))

(declare-fun b!3858278 () Bool)

(declare-fun e!2385006 () Bool)

(declare-fun lt!1340387 () Bool)

(assert (=> b!3858278 (= e!2385006 (not lt!1340387))))

(declare-fun b!3858279 () Bool)

(declare-fun res!1562028 () Bool)

(declare-fun e!2385003 () Bool)

(assert (=> b!3858279 (=> res!1562028 e!2385003)))

(declare-fun tail!5837 (List!41006) List!41006)

(assert (=> b!3858279 (= res!1562028 (not (isEmpty!24212 (tail!5837 lt!1340281))))))

(declare-fun b!3858280 () Bool)

(declare-fun res!1562033 () Bool)

(assert (=> b!3858280 (=> (not res!1562033) (not e!2385005))))

(assert (=> b!3858280 (= res!1562033 (isEmpty!24212 (tail!5837 lt!1340281)))))

(declare-fun b!3858281 () Bool)

(declare-fun res!1562029 () Bool)

(declare-fun e!2385002 () Bool)

(assert (=> b!3858281 (=> res!1562029 e!2385002)))

(assert (=> b!3858281 (= res!1562029 (not ((_ is ElementMatch!11229) (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))))))

(assert (=> b!3858281 (= e!2385006 e!2385002)))

(declare-fun b!3858282 () Bool)

(declare-fun e!2385000 () Bool)

(assert (=> b!3858282 (= e!2385002 e!2385000)))

(declare-fun res!1562035 () Bool)

(assert (=> b!3858282 (=> (not res!1562035) (not e!2385000))))

(assert (=> b!3858282 (= res!1562035 (not lt!1340387))))

(declare-fun b!3858283 () Bool)

(declare-fun e!2385001 () Bool)

(assert (=> b!3858283 (= e!2385001 e!2385006)))

(declare-fun c!671917 () Bool)

(assert (=> b!3858283 (= c!671917 ((_ is EmptyLang!11229) (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265))))))))

(declare-fun b!3858284 () Bool)

(declare-fun head!8126 (List!41006) C!22644)

(assert (=> b!3858284 (= e!2385005 (= (head!8126 lt!1340281) (c!671841 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))))))

(declare-fun b!3858285 () Bool)

(assert (=> b!3858285 (= e!2385000 e!2385003)))

(declare-fun res!1562030 () Bool)

(assert (=> b!3858285 (=> res!1562030 e!2385003)))

(assert (=> b!3858285 (= res!1562030 call!282516)))

(declare-fun b!3858287 () Bool)

(assert (=> b!3858287 (= e!2385001 (= lt!1340387 call!282516))))

(declare-fun b!3858286 () Bool)

(assert (=> b!3858286 (= e!2385003 (not (= (head!8126 lt!1340281) (c!671841 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265))))))))))

(declare-fun d!1143959 () Bool)

(assert (=> d!1143959 e!2385001))

(declare-fun c!671918 () Bool)

(assert (=> d!1143959 (= c!671918 ((_ is EmptyExpr!11229) (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265))))))))

(assert (=> d!1143959 (= lt!1340387 e!2385004)))

(declare-fun c!671916 () Bool)

(assert (=> d!1143959 (= c!671916 (isEmpty!24212 lt!1340281))))

(declare-fun validRegex!5112 (Regex!11229) Bool)

(assert (=> d!1143959 (validRegex!5112 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))))

(assert (=> d!1143959 (= (matchR!5376 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) lt!1340281) lt!1340387)))

(declare-fun b!3858288 () Bool)

(declare-fun res!1562031 () Bool)

(assert (=> b!3858288 (=> res!1562031 e!2385002)))

(assert (=> b!3858288 (= res!1562031 e!2385005)))

(declare-fun res!1562032 () Bool)

(assert (=> b!3858288 (=> (not res!1562032) (not e!2385005))))

(assert (=> b!3858288 (= res!1562032 lt!1340387)))

(declare-fun b!3858289 () Bool)

(declare-fun derivativeStep!3411 (Regex!11229 C!22644) Regex!11229)

(assert (=> b!3858289 (= e!2385004 (matchR!5376 (derivativeStep!3411 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) (head!8126 lt!1340281)) (tail!5837 lt!1340281)))))

(assert (= (and d!1143959 c!671916) b!3858276))

(assert (= (and d!1143959 (not c!671916)) b!3858289))

(assert (= (and d!1143959 c!671918) b!3858287))

(assert (= (and d!1143959 (not c!671918)) b!3858283))

(assert (= (and b!3858283 c!671917) b!3858278))

(assert (= (and b!3858283 (not c!671917)) b!3858281))

(assert (= (and b!3858281 (not res!1562029)) b!3858288))

(assert (= (and b!3858288 res!1562032) b!3858277))

(assert (= (and b!3858277 res!1562034) b!3858280))

(assert (= (and b!3858280 res!1562033) b!3858284))

(assert (= (and b!3858288 (not res!1562031)) b!3858282))

(assert (= (and b!3858282 res!1562035) b!3858285))

(assert (= (and b!3858285 (not res!1562030)) b!3858279))

(assert (= (and b!3858279 (not res!1562028)) b!3858286))

(assert (= (or b!3858287 b!3858277 b!3858285) bm!282511))

(declare-fun m!4413883 () Bool)

(assert (=> bm!282511 m!4413883))

(declare-fun m!4413885 () Bool)

(assert (=> b!3858279 m!4413885))

(assert (=> b!3858279 m!4413885))

(declare-fun m!4413887 () Bool)

(assert (=> b!3858279 m!4413887))

(declare-fun m!4413889 () Bool)

(assert (=> b!3858276 m!4413889))

(declare-fun m!4413891 () Bool)

(assert (=> b!3858289 m!4413891))

(assert (=> b!3858289 m!4413891))

(declare-fun m!4413893 () Bool)

(assert (=> b!3858289 m!4413893))

(assert (=> b!3858289 m!4413885))

(assert (=> b!3858289 m!4413893))

(assert (=> b!3858289 m!4413885))

(declare-fun m!4413895 () Bool)

(assert (=> b!3858289 m!4413895))

(assert (=> d!1143959 m!4413883))

(declare-fun m!4413897 () Bool)

(assert (=> d!1143959 m!4413897))

(assert (=> b!3858280 m!4413885))

(assert (=> b!3858280 m!4413885))

(assert (=> b!3858280 m!4413887))

(assert (=> b!3858286 m!4413891))

(assert (=> b!3858284 m!4413891))

(assert (=> b!3857936 d!1143959))

(declare-fun b!3858395 () Bool)

(declare-fun res!1562074 () Bool)

(declare-fun e!2385075 () Bool)

(assert (=> b!3858395 (=> (not res!1562074) (not e!2385075))))

(declare-fun lt!1340419 () Option!8742)

(assert (=> b!3858395 (= res!1562074 (= (++!10406 (list!15220 (charsOf!4152 (_1!23176 (get!13526 lt!1340419)))) (_2!23176 (get!13526 lt!1340419))) lt!1340271))))

(declare-fun b!3858396 () Bool)

(declare-fun e!2385077 () Bool)

(assert (=> b!3858396 (= e!2385077 e!2385075)))

(declare-fun res!1562072 () Bool)

(assert (=> b!3858396 (=> (not res!1562072) (not e!2385075))))

(assert (=> b!3858396 (= res!1562072 (matchR!5376 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) (list!15220 (charsOf!4152 (_1!23176 (get!13526 lt!1340419))))))))

(declare-fun b!3858397 () Bool)

(declare-fun e!2385076 () Option!8742)

(assert (=> b!3858397 (= e!2385076 None!8741)))

(declare-fun b!3858398 () Bool)

(assert (=> b!3858398 (= e!2385075 (= (size!30753 (_1!23176 (get!13526 lt!1340419))) (size!30754 (originalCharacters!6924 (_1!23176 (get!13526 lt!1340419))))))))

(declare-fun b!3858400 () Bool)

(declare-fun e!2385078 () Bool)

(declare-datatypes ((tuple2!40086 0))(
  ( (tuple2!40087 (_1!23177 List!41006) (_2!23177 List!41006)) )
))
(declare-fun findLongestMatchInner!1179 (Regex!11229 List!41006 Int List!41006 List!41006 Int) tuple2!40086)

(assert (=> b!3858400 (= e!2385078 (matchR!5376 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) (_1!23177 (findLongestMatchInner!1179 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) Nil!40882 (size!30754 Nil!40882) lt!1340271 lt!1340271 (size!30754 lt!1340271)))))))

(declare-fun b!3858401 () Bool)

(declare-fun res!1562075 () Bool)

(assert (=> b!3858401 (=> (not res!1562075) (not e!2385075))))

(assert (=> b!3858401 (= res!1562075 (= (rule!9188 (_1!23176 (get!13526 lt!1340419))) (rule!9188 (_1!23176 (v!39039 lt!1340265)))))))

(declare-fun b!3858402 () Bool)

(declare-fun res!1562076 () Bool)

(assert (=> b!3858402 (=> (not res!1562076) (not e!2385075))))

(assert (=> b!3858402 (= res!1562076 (= (value!200868 (_1!23176 (get!13526 lt!1340419))) (apply!9567 (transformation!6324 (rule!9188 (_1!23176 (get!13526 lt!1340419)))) (seqFromList!4595 (originalCharacters!6924 (_1!23176 (get!13526 lt!1340419)))))))))

(declare-fun b!3858403 () Bool)

(declare-fun lt!1340416 () tuple2!40086)

(declare-fun size!30757 (BalanceConc!24664) Int)

(assert (=> b!3858403 (= e!2385076 (Some!8741 (tuple2!40085 (Token!11787 (apply!9567 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) (seqFromList!4595 (_1!23177 lt!1340416))) (rule!9188 (_1!23176 (v!39039 lt!1340265))) (size!30757 (seqFromList!4595 (_1!23177 lt!1340416))) (_1!23177 lt!1340416)) (_2!23177 lt!1340416))))))

(declare-fun lt!1340420 () Unit!58552)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1152 (Regex!11229 List!41006) Unit!58552)

(assert (=> b!3858403 (= lt!1340420 (longestMatchIsAcceptedByMatchOrIsEmpty!1152 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) lt!1340271))))

(declare-fun res!1562077 () Bool)

(assert (=> b!3858403 (= res!1562077 (isEmpty!24212 (_1!23177 (findLongestMatchInner!1179 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) Nil!40882 (size!30754 Nil!40882) lt!1340271 lt!1340271 (size!30754 lt!1340271)))))))

(assert (=> b!3858403 (=> res!1562077 e!2385078)))

(assert (=> b!3858403 e!2385078))

(declare-fun lt!1340417 () Unit!58552)

(assert (=> b!3858403 (= lt!1340417 lt!1340420)))

(declare-fun lt!1340418 () Unit!58552)

(declare-fun lemmaSemiInverse!1685 (TokenValueInjection!12536 BalanceConc!24664) Unit!58552)

(assert (=> b!3858403 (= lt!1340418 (lemmaSemiInverse!1685 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) (seqFromList!4595 (_1!23177 lt!1340416))))))

(declare-fun d!1143961 () Bool)

(assert (=> d!1143961 e!2385077))

(declare-fun res!1562071 () Bool)

(assert (=> d!1143961 (=> res!1562071 e!2385077)))

(assert (=> d!1143961 (= res!1562071 (isEmpty!24213 lt!1340419))))

(assert (=> d!1143961 (= lt!1340419 e!2385076)))

(declare-fun c!671924 () Bool)

(assert (=> d!1143961 (= c!671924 (isEmpty!24212 (_1!23177 lt!1340416)))))

(declare-fun findLongestMatch!1092 (Regex!11229 List!41006) tuple2!40086)

(assert (=> d!1143961 (= lt!1340416 (findLongestMatch!1092 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) lt!1340271))))

(assert (=> d!1143961 (ruleValid!2276 thiss!20629 (rule!9188 (_1!23176 (v!39039 lt!1340265))))))

(assert (=> d!1143961 (= (maxPrefixOneRule!2299 thiss!20629 (rule!9188 (_1!23176 (v!39039 lt!1340265))) lt!1340271) lt!1340419)))

(declare-fun b!3858399 () Bool)

(declare-fun res!1562073 () Bool)

(assert (=> b!3858399 (=> (not res!1562073) (not e!2385075))))

(assert (=> b!3858399 (= res!1562073 (< (size!30754 (_2!23176 (get!13526 lt!1340419))) (size!30754 lt!1340271)))))

(assert (= (and d!1143961 c!671924) b!3858397))

(assert (= (and d!1143961 (not c!671924)) b!3858403))

(assert (= (and b!3858403 (not res!1562077)) b!3858400))

(assert (= (and d!1143961 (not res!1562071)) b!3858396))

(assert (= (and b!3858396 res!1562072) b!3858395))

(assert (= (and b!3858395 res!1562074) b!3858399))

(assert (= (and b!3858399 res!1562073) b!3858401))

(assert (= (and b!3858401 res!1562075) b!3858402))

(assert (= (and b!3858402 res!1562076) b!3858398))

(declare-fun m!4413963 () Bool)

(assert (=> d!1143961 m!4413963))

(declare-fun m!4413965 () Bool)

(assert (=> d!1143961 m!4413965))

(declare-fun m!4413967 () Bool)

(assert (=> d!1143961 m!4413967))

(assert (=> d!1143961 m!4413495))

(declare-fun m!4413969 () Bool)

(assert (=> b!3858398 m!4413969))

(declare-fun m!4413971 () Bool)

(assert (=> b!3858398 m!4413971))

(assert (=> b!3858402 m!4413969))

(declare-fun m!4413973 () Bool)

(assert (=> b!3858402 m!4413973))

(assert (=> b!3858402 m!4413973))

(declare-fun m!4413975 () Bool)

(assert (=> b!3858402 m!4413975))

(assert (=> b!3858399 m!4413969))

(declare-fun m!4413977 () Bool)

(assert (=> b!3858399 m!4413977))

(assert (=> b!3858399 m!4413517))

(declare-fun m!4413979 () Bool)

(assert (=> b!3858403 m!4413979))

(declare-fun m!4413981 () Bool)

(assert (=> b!3858403 m!4413981))

(declare-fun m!4413983 () Bool)

(assert (=> b!3858403 m!4413983))

(declare-fun m!4413985 () Bool)

(assert (=> b!3858403 m!4413985))

(assert (=> b!3858403 m!4413979))

(declare-fun m!4413987 () Bool)

(assert (=> b!3858403 m!4413987))

(assert (=> b!3858403 m!4413983))

(assert (=> b!3858403 m!4413517))

(declare-fun m!4413989 () Bool)

(assert (=> b!3858403 m!4413989))

(assert (=> b!3858403 m!4413979))

(declare-fun m!4413991 () Bool)

(assert (=> b!3858403 m!4413991))

(assert (=> b!3858403 m!4413517))

(assert (=> b!3858403 m!4413979))

(declare-fun m!4413993 () Bool)

(assert (=> b!3858403 m!4413993))

(assert (=> b!3858401 m!4413969))

(assert (=> b!3858396 m!4413969))

(declare-fun m!4413995 () Bool)

(assert (=> b!3858396 m!4413995))

(assert (=> b!3858396 m!4413995))

(declare-fun m!4413997 () Bool)

(assert (=> b!3858396 m!4413997))

(assert (=> b!3858396 m!4413997))

(declare-fun m!4413999 () Bool)

(assert (=> b!3858396 m!4413999))

(assert (=> b!3858400 m!4413983))

(assert (=> b!3858400 m!4413517))

(assert (=> b!3858400 m!4413983))

(assert (=> b!3858400 m!4413517))

(assert (=> b!3858400 m!4413989))

(declare-fun m!4414001 () Bool)

(assert (=> b!3858400 m!4414001))

(assert (=> b!3858395 m!4413969))

(assert (=> b!3858395 m!4413995))

(assert (=> b!3858395 m!4413995))

(assert (=> b!3858395 m!4413997))

(assert (=> b!3858395 m!4413997))

(declare-fun m!4414003 () Bool)

(assert (=> b!3858395 m!4414003))

(assert (=> b!3857936 d!1143961))

(declare-fun d!1143965 () Bool)

(assert (=> d!1143965 (= (maxPrefixOneRule!2299 thiss!20629 (rule!9188 (_1!23176 (v!39039 lt!1340265))) lt!1340271) (Some!8741 (tuple2!40085 (Token!11787 (apply!9567 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) (seqFromList!4595 lt!1340281)) (rule!9188 (_1!23176 (v!39039 lt!1340265))) (size!30754 lt!1340281) lt!1340281) (_2!23176 (v!39039 lt!1340265)))))))

(declare-fun lt!1340423 () Unit!58552)

(declare-fun choose!22716 (LexerInterface!5913 List!41009 List!41006 List!41006 List!41006 Rule!12448) Unit!58552)

(assert (=> d!1143965 (= lt!1340423 (choose!22716 thiss!20629 rules!2768 lt!1340281 lt!1340271 (_2!23176 (v!39039 lt!1340265)) (rule!9188 (_1!23176 (v!39039 lt!1340265)))))))

(assert (=> d!1143965 (not (isEmpty!24211 rules!2768))))

(assert (=> d!1143965 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1197 thiss!20629 rules!2768 lt!1340281 lt!1340271 (_2!23176 (v!39039 lt!1340265)) (rule!9188 (_1!23176 (v!39039 lt!1340265)))) lt!1340423)))

(declare-fun bs!583138 () Bool)

(assert (= bs!583138 d!1143965))

(assert (=> bs!583138 m!4413481))

(assert (=> bs!583138 m!4413523))

(assert (=> bs!583138 m!4413481))

(assert (=> bs!583138 m!4413483))

(assert (=> bs!583138 m!4413501))

(assert (=> bs!583138 m!4413543))

(declare-fun m!4414005 () Bool)

(assert (=> bs!583138 m!4414005))

(assert (=> b!3857936 d!1143965))

(declare-fun b!3858405 () Bool)

(declare-fun e!2385080 () List!41008)

(assert (=> b!3858405 (= e!2385080 (Cons!40884 (h!46304 (Cons!40884 (_1!23176 (v!39039 lt!1340265)) Nil!40884)) (++!10405 (t!313115 (Cons!40884 (_1!23176 (v!39039 lt!1340265)) Nil!40884)) (_1!23175 lt!1340274))))))

(declare-fun d!1143967 () Bool)

(declare-fun e!2385079 () Bool)

(assert (=> d!1143967 e!2385079))

(declare-fun res!1562078 () Bool)

(assert (=> d!1143967 (=> (not res!1562078) (not e!2385079))))

(declare-fun lt!1340424 () List!41008)

(assert (=> d!1143967 (= res!1562078 (= (content!6096 lt!1340424) ((_ map or) (content!6096 (Cons!40884 (_1!23176 (v!39039 lt!1340265)) Nil!40884)) (content!6096 (_1!23175 lt!1340274)))))))

(assert (=> d!1143967 (= lt!1340424 e!2385080)))

(declare-fun c!671925 () Bool)

(assert (=> d!1143967 (= c!671925 ((_ is Nil!40884) (Cons!40884 (_1!23176 (v!39039 lt!1340265)) Nil!40884)))))

(assert (=> d!1143967 (= (++!10405 (Cons!40884 (_1!23176 (v!39039 lt!1340265)) Nil!40884) (_1!23175 lt!1340274)) lt!1340424)))

(declare-fun b!3858404 () Bool)

(assert (=> b!3858404 (= e!2385080 (_1!23175 lt!1340274))))

(declare-fun b!3858407 () Bool)

(assert (=> b!3858407 (= e!2385079 (or (not (= (_1!23175 lt!1340274) Nil!40884)) (= lt!1340424 (Cons!40884 (_1!23176 (v!39039 lt!1340265)) Nil!40884))))))

(declare-fun b!3858406 () Bool)

(declare-fun res!1562079 () Bool)

(assert (=> b!3858406 (=> (not res!1562079) (not e!2385079))))

(assert (=> b!3858406 (= res!1562079 (= (size!30756 lt!1340424) (+ (size!30756 (Cons!40884 (_1!23176 (v!39039 lt!1340265)) Nil!40884)) (size!30756 (_1!23175 lt!1340274)))))))

(assert (= (and d!1143967 c!671925) b!3858404))

(assert (= (and d!1143967 (not c!671925)) b!3858405))

(assert (= (and d!1143967 res!1562078) b!3858406))

(assert (= (and b!3858406 res!1562079) b!3858407))

(declare-fun m!4414007 () Bool)

(assert (=> b!3858405 m!4414007))

(declare-fun m!4414009 () Bool)

(assert (=> d!1143967 m!4414009))

(declare-fun m!4414011 () Bool)

(assert (=> d!1143967 m!4414011))

(declare-fun m!4414013 () Bool)

(assert (=> d!1143967 m!4414013))

(declare-fun m!4414015 () Bool)

(assert (=> b!3858406 m!4414015))

(declare-fun m!4414017 () Bool)

(assert (=> b!3858406 m!4414017))

(declare-fun m!4414019 () Bool)

(assert (=> b!3858406 m!4414019))

(assert (=> b!3857924 d!1143967))

(declare-fun d!1143969 () Bool)

(assert (=> d!1143969 (= (isEmpty!24210 prefixTokens!80) ((_ is Nil!40884) prefixTokens!80))))

(assert (=> b!3857925 d!1143969))

(declare-fun d!1143971 () Bool)

(declare-fun lt!1340425 () Int)

(assert (=> d!1143971 (>= lt!1340425 0)))

(declare-fun e!2385081 () Int)

(assert (=> d!1143971 (= lt!1340425 e!2385081)))

(declare-fun c!671926 () Bool)

(assert (=> d!1143971 (= c!671926 ((_ is Nil!40882) lt!1340271))))

(assert (=> d!1143971 (= (size!30754 lt!1340271) lt!1340425)))

(declare-fun b!3858408 () Bool)

(assert (=> b!3858408 (= e!2385081 0)))

(declare-fun b!3858409 () Bool)

(assert (=> b!3858409 (= e!2385081 (+ 1 (size!30754 (t!313113 lt!1340271))))))

(assert (= (and d!1143971 c!671926) b!3858408))

(assert (= (and d!1143971 (not c!671926)) b!3858409))

(declare-fun m!4414021 () Bool)

(assert (=> b!3858409 m!4414021))

(assert (=> b!3857946 d!1143971))

(declare-fun d!1143973 () Bool)

(declare-fun lt!1340426 () Int)

(assert (=> d!1143973 (>= lt!1340426 0)))

(declare-fun e!2385082 () Int)

(assert (=> d!1143973 (= lt!1340426 e!2385082)))

(declare-fun c!671927 () Bool)

(assert (=> d!1143973 (= c!671927 ((_ is Nil!40882) prefix!426))))

(assert (=> d!1143973 (= (size!30754 prefix!426) lt!1340426)))

(declare-fun b!3858410 () Bool)

(assert (=> b!3858410 (= e!2385082 0)))

(declare-fun b!3858411 () Bool)

(assert (=> b!3858411 (= e!2385082 (+ 1 (size!30754 (t!313113 prefix!426))))))

(assert (= (and d!1143973 c!671927) b!3858410))

(assert (= (and d!1143973 (not c!671927)) b!3858411))

(declare-fun m!4414023 () Bool)

(assert (=> b!3858411 m!4414023))

(assert (=> b!3857945 d!1143973))

(declare-fun b!3858412 () Bool)

(declare-fun e!2385085 () Bool)

(declare-fun lt!1340427 () tuple2!40082)

(assert (=> b!3858412 (= e!2385085 (not (isEmpty!24210 (_1!23175 lt!1340427))))))

(declare-fun b!3858413 () Bool)

(declare-fun e!2385083 () Bool)

(assert (=> b!3858413 (= e!2385083 (= (_2!23175 lt!1340427) suffix!1176))))

(declare-fun d!1143975 () Bool)

(assert (=> d!1143975 e!2385083))

(declare-fun c!671929 () Bool)

(assert (=> d!1143975 (= c!671929 (> (size!30756 (_1!23175 lt!1340427)) 0))))

(declare-fun e!2385084 () tuple2!40082)

(assert (=> d!1143975 (= lt!1340427 e!2385084)))

(declare-fun c!671928 () Bool)

(declare-fun lt!1340429 () Option!8742)

(assert (=> d!1143975 (= c!671928 ((_ is Some!8741) lt!1340429))))

(assert (=> d!1143975 (= lt!1340429 (maxPrefix!3217 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1143975 (= (lexList!1681 thiss!20629 rules!2768 suffix!1176) lt!1340427)))

(declare-fun b!3858414 () Bool)

(declare-fun lt!1340428 () tuple2!40082)

(assert (=> b!3858414 (= e!2385084 (tuple2!40083 (Cons!40884 (_1!23176 (v!39039 lt!1340429)) (_1!23175 lt!1340428)) (_2!23175 lt!1340428)))))

(assert (=> b!3858414 (= lt!1340428 (lexList!1681 thiss!20629 rules!2768 (_2!23176 (v!39039 lt!1340429))))))

(declare-fun b!3858415 () Bool)

(assert (=> b!3858415 (= e!2385084 (tuple2!40083 Nil!40884 suffix!1176))))

(declare-fun b!3858416 () Bool)

(assert (=> b!3858416 (= e!2385083 e!2385085)))

(declare-fun res!1562080 () Bool)

(assert (=> b!3858416 (= res!1562080 (< (size!30754 (_2!23175 lt!1340427)) (size!30754 suffix!1176)))))

(assert (=> b!3858416 (=> (not res!1562080) (not e!2385085))))

(assert (= (and d!1143975 c!671928) b!3858414))

(assert (= (and d!1143975 (not c!671928)) b!3858415))

(assert (= (and d!1143975 c!671929) b!3858416))

(assert (= (and d!1143975 (not c!671929)) b!3858413))

(assert (= (and b!3858416 res!1562080) b!3858412))

(declare-fun m!4414025 () Bool)

(assert (=> b!3858412 m!4414025))

(declare-fun m!4414027 () Bool)

(assert (=> d!1143975 m!4414027))

(declare-fun m!4414029 () Bool)

(assert (=> d!1143975 m!4414029))

(declare-fun m!4414031 () Bool)

(assert (=> b!3858414 m!4414031))

(declare-fun m!4414033 () Bool)

(assert (=> b!3858416 m!4414033))

(assert (=> b!3858416 m!4413559))

(assert (=> b!3857943 d!1143975))

(declare-fun d!1143977 () Bool)

(declare-fun res!1562081 () Bool)

(declare-fun e!2385086 () Bool)

(assert (=> d!1143977 (=> (not res!1562081) (not e!2385086))))

(assert (=> d!1143977 (= res!1562081 (not (isEmpty!24212 (originalCharacters!6924 (h!46304 prefixTokens!80)))))))

(assert (=> d!1143977 (= (inv!55047 (h!46304 prefixTokens!80)) e!2385086)))

(declare-fun b!3858417 () Bool)

(declare-fun res!1562082 () Bool)

(assert (=> b!3858417 (=> (not res!1562082) (not e!2385086))))

(assert (=> b!3858417 (= res!1562082 (= (originalCharacters!6924 (h!46304 prefixTokens!80)) (list!15220 (dynLambda!17648 (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) (value!200868 (h!46304 prefixTokens!80))))))))

(declare-fun b!3858418 () Bool)

(assert (=> b!3858418 (= e!2385086 (= (size!30753 (h!46304 prefixTokens!80)) (size!30754 (originalCharacters!6924 (h!46304 prefixTokens!80)))))))

(assert (= (and d!1143977 res!1562081) b!3858417))

(assert (= (and b!3858417 res!1562082) b!3858418))

(declare-fun b_lambda!112805 () Bool)

(assert (=> (not b_lambda!112805) (not b!3858417)))

(declare-fun t!313172 () Bool)

(declare-fun tb!223463 () Bool)

(assert (=> (and b!3857935 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80))))) t!313172) tb!223463))

(declare-fun b!3858419 () Bool)

(declare-fun e!2385087 () Bool)

(declare-fun tp!1169461 () Bool)

(assert (=> b!3858419 (= e!2385087 (and (inv!55050 (c!671840 (dynLambda!17648 (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) (value!200868 (h!46304 prefixTokens!80))))) tp!1169461))))

(declare-fun result!272142 () Bool)

(assert (=> tb!223463 (= result!272142 (and (inv!55051 (dynLambda!17648 (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) (value!200868 (h!46304 prefixTokens!80)))) e!2385087))))

(assert (= tb!223463 b!3858419))

(declare-fun m!4414035 () Bool)

(assert (=> b!3858419 m!4414035))

(declare-fun m!4414037 () Bool)

(assert (=> tb!223463 m!4414037))

(assert (=> b!3858417 t!313172))

(declare-fun b_and!288729 () Bool)

(assert (= b_and!288687 (and (=> t!313172 result!272142) b_and!288729)))

(declare-fun tb!223465 () Bool)

(declare-fun t!313174 () Bool)

(assert (=> (and b!3857917 (= (toChars!8611 (transformation!6324 (h!46305 rules!2768))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80))))) t!313174) tb!223465))

(declare-fun result!272144 () Bool)

(assert (= result!272144 result!272142))

(assert (=> b!3858417 t!313174))

(declare-fun b_and!288731 () Bool)

(assert (= b_and!288689 (and (=> t!313174 result!272144) b_and!288731)))

(declare-fun tb!223467 () Bool)

(declare-fun t!313176 () Bool)

(assert (=> (and b!3857937 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80))))) t!313176) tb!223467))

(declare-fun result!272146 () Bool)

(assert (= result!272146 result!272142))

(assert (=> b!3858417 t!313176))

(declare-fun b_and!288733 () Bool)

(assert (= b_and!288691 (and (=> t!313176 result!272146) b_and!288733)))

(declare-fun m!4414039 () Bool)

(assert (=> d!1143977 m!4414039))

(declare-fun m!4414041 () Bool)

(assert (=> b!3858417 m!4414041))

(assert (=> b!3858417 m!4414041))

(declare-fun m!4414043 () Bool)

(assert (=> b!3858417 m!4414043))

(declare-fun m!4414045 () Bool)

(assert (=> b!3858418 m!4414045))

(assert (=> b!3857922 d!1143977))

(declare-fun d!1143979 () Bool)

(assert (=> d!1143979 (= (head!8124 prefixTokens!80) (h!46304 prefixTokens!80))))

(assert (=> b!3857920 d!1143979))

(declare-fun d!1143981 () Bool)

(assert (=> d!1143981 (= (get!13526 lt!1340265) (v!39039 lt!1340265))))

(assert (=> b!3857920 d!1143981))

(declare-fun d!1143983 () Bool)

(assert (=> d!1143983 (= (isEmpty!24210 (tail!5835 prefixTokens!80)) ((_ is Nil!40884) (tail!5835 prefixTokens!80)))))

(assert (=> b!3857921 d!1143983))

(declare-fun d!1143985 () Bool)

(assert (=> d!1143985 (= (tail!5835 prefixTokens!80) (t!313115 prefixTokens!80))))

(assert (=> b!3857921 d!1143985))

(declare-fun d!1143987 () Bool)

(declare-fun res!1562087 () Bool)

(declare-fun e!2385090 () Bool)

(assert (=> d!1143987 (=> (not res!1562087) (not e!2385090))))

(assert (=> d!1143987 (= res!1562087 (validRegex!5112 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265))))))))

(assert (=> d!1143987 (= (ruleValid!2276 thiss!20629 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) e!2385090)))

(declare-fun b!3858424 () Bool)

(declare-fun res!1562088 () Bool)

(assert (=> b!3858424 (=> (not res!1562088) (not e!2385090))))

(assert (=> b!3858424 (= res!1562088 (not (nullable!3913 (regex!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))))))

(declare-fun b!3858425 () Bool)

(assert (=> b!3858425 (= e!2385090 (not (= (tag!7184 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) (String!46489 ""))))))

(assert (= (and d!1143987 res!1562087) b!3858424))

(assert (= (and b!3858424 res!1562088) b!3858425))

(assert (=> d!1143987 m!4413897))

(assert (=> b!3858424 m!4413889))

(assert (=> b!3857942 d!1143987))

(declare-fun b!3858426 () Bool)

(declare-fun e!2385091 () List!41006)

(assert (=> b!3858426 (= e!2385091 (_2!23176 (v!39039 lt!1340265)))))

(declare-fun lt!1340430 () List!41006)

(declare-fun e!2385092 () Bool)

(declare-fun b!3858429 () Bool)

(assert (=> b!3858429 (= e!2385092 (or (not (= (_2!23176 (v!39039 lt!1340265)) Nil!40882)) (= lt!1340430 lt!1340281)))))

(declare-fun d!1143989 () Bool)

(assert (=> d!1143989 e!2385092))

(declare-fun res!1562090 () Bool)

(assert (=> d!1143989 (=> (not res!1562090) (not e!2385092))))

(assert (=> d!1143989 (= res!1562090 (= (content!6097 lt!1340430) ((_ map or) (content!6097 lt!1340281) (content!6097 (_2!23176 (v!39039 lt!1340265))))))))

(assert (=> d!1143989 (= lt!1340430 e!2385091)))

(declare-fun c!671930 () Bool)

(assert (=> d!1143989 (= c!671930 ((_ is Nil!40882) lt!1340281))))

(assert (=> d!1143989 (= (++!10406 lt!1340281 (_2!23176 (v!39039 lt!1340265))) lt!1340430)))

(declare-fun b!3858428 () Bool)

(declare-fun res!1562089 () Bool)

(assert (=> b!3858428 (=> (not res!1562089) (not e!2385092))))

(assert (=> b!3858428 (= res!1562089 (= (size!30754 lt!1340430) (+ (size!30754 lt!1340281) (size!30754 (_2!23176 (v!39039 lt!1340265))))))))

(declare-fun b!3858427 () Bool)

(assert (=> b!3858427 (= e!2385091 (Cons!40882 (h!46302 lt!1340281) (++!10406 (t!313113 lt!1340281) (_2!23176 (v!39039 lt!1340265)))))))

(assert (= (and d!1143989 c!671930) b!3858426))

(assert (= (and d!1143989 (not c!671930)) b!3858427))

(assert (= (and d!1143989 res!1562090) b!3858428))

(assert (= (and b!3858428 res!1562089) b!3858429))

(declare-fun m!4414047 () Bool)

(assert (=> d!1143989 m!4414047))

(declare-fun m!4414049 () Bool)

(assert (=> d!1143989 m!4414049))

(declare-fun m!4414051 () Bool)

(assert (=> d!1143989 m!4414051))

(declare-fun m!4414053 () Bool)

(assert (=> b!3858428 m!4414053))

(assert (=> b!3858428 m!4413501))

(assert (=> b!3858428 m!4413561))

(declare-fun m!4414055 () Bool)

(assert (=> b!3858427 m!4414055))

(assert (=> b!3857942 d!1143989))

(declare-fun d!1143991 () Bool)

(declare-fun list!15222 (Conc!12535) List!41006)

(assert (=> d!1143991 (= (list!15220 (charsOf!4152 (_1!23176 (v!39039 lt!1340265)))) (list!15222 (c!671840 (charsOf!4152 (_1!23176 (v!39039 lt!1340265))))))))

(declare-fun bs!583139 () Bool)

(assert (= bs!583139 d!1143991))

(declare-fun m!4414057 () Bool)

(assert (=> bs!583139 m!4414057))

(assert (=> b!3857942 d!1143991))

(declare-fun d!1143993 () Bool)

(declare-fun lt!1340431 () Int)

(assert (=> d!1143993 (>= lt!1340431 0)))

(declare-fun e!2385093 () Int)

(assert (=> d!1143993 (= lt!1340431 e!2385093)))

(declare-fun c!671931 () Bool)

(assert (=> d!1143993 (= c!671931 ((_ is Nil!40882) lt!1340281))))

(assert (=> d!1143993 (= (size!30754 lt!1340281) lt!1340431)))

(declare-fun b!3858430 () Bool)

(assert (=> b!3858430 (= e!2385093 0)))

(declare-fun b!3858431 () Bool)

(assert (=> b!3858431 (= e!2385093 (+ 1 (size!30754 (t!313113 lt!1340281))))))

(assert (= (and d!1143993 c!671931) b!3858430))

(assert (= (and d!1143993 (not c!671931)) b!3858431))

(declare-fun m!4414059 () Bool)

(assert (=> b!3858431 m!4414059))

(assert (=> b!3857942 d!1143993))

(declare-fun d!1143995 () Bool)

(declare-fun lt!1340434 () BalanceConc!24664)

(assert (=> d!1143995 (= (list!15220 lt!1340434) (originalCharacters!6924 (_1!23176 (v!39039 lt!1340265))))))

(assert (=> d!1143995 (= lt!1340434 (dynLambda!17648 (toChars!8611 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265))))) (value!200868 (_1!23176 (v!39039 lt!1340265)))))))

(assert (=> d!1143995 (= (charsOf!4152 (_1!23176 (v!39039 lt!1340265))) lt!1340434)))

(declare-fun b_lambda!112807 () Bool)

(assert (=> (not b_lambda!112807) (not d!1143995)))

(declare-fun t!313178 () Bool)

(declare-fun tb!223469 () Bool)

(assert (=> (and b!3857935 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) (toChars!8611 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313178) tb!223469))

(declare-fun b!3858432 () Bool)

(declare-fun e!2385094 () Bool)

(declare-fun tp!1169462 () Bool)

(assert (=> b!3858432 (= e!2385094 (and (inv!55050 (c!671840 (dynLambda!17648 (toChars!8611 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265))))) (value!200868 (_1!23176 (v!39039 lt!1340265)))))) tp!1169462))))

(declare-fun result!272148 () Bool)

(assert (=> tb!223469 (= result!272148 (and (inv!55051 (dynLambda!17648 (toChars!8611 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265))))) (value!200868 (_1!23176 (v!39039 lt!1340265))))) e!2385094))))

(assert (= tb!223469 b!3858432))

(declare-fun m!4414061 () Bool)

(assert (=> b!3858432 m!4414061))

(declare-fun m!4414063 () Bool)

(assert (=> tb!223469 m!4414063))

(assert (=> d!1143995 t!313178))

(declare-fun b_and!288735 () Bool)

(assert (= b_and!288729 (and (=> t!313178 result!272148) b_and!288735)))

(declare-fun t!313180 () Bool)

(declare-fun tb!223471 () Bool)

(assert (=> (and b!3857917 (= (toChars!8611 (transformation!6324 (h!46305 rules!2768))) (toChars!8611 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313180) tb!223471))

(declare-fun result!272150 () Bool)

(assert (= result!272150 result!272148))

(assert (=> d!1143995 t!313180))

(declare-fun b_and!288737 () Bool)

(assert (= b_and!288731 (and (=> t!313180 result!272150) b_and!288737)))

(declare-fun tb!223473 () Bool)

(declare-fun t!313182 () Bool)

(assert (=> (and b!3857937 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) (toChars!8611 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313182) tb!223473))

(declare-fun result!272152 () Bool)

(assert (= result!272152 result!272148))

(assert (=> d!1143995 t!313182))

(declare-fun b_and!288739 () Bool)

(assert (= b_and!288733 (and (=> t!313182 result!272152) b_and!288739)))

(declare-fun m!4414065 () Bool)

(assert (=> d!1143995 m!4414065))

(declare-fun m!4414067 () Bool)

(assert (=> d!1143995 m!4414067))

(assert (=> b!3857942 d!1143995))

(declare-fun d!1143997 () Bool)

(assert (=> d!1143997 (= (_2!23176 (v!39039 lt!1340265)) lt!1340268)))

(declare-fun lt!1340437 () Unit!58552)

(declare-fun choose!22717 (List!41006 List!41006 List!41006 List!41006 List!41006) Unit!58552)

(assert (=> d!1143997 (= lt!1340437 (choose!22717 lt!1340281 (_2!23176 (v!39039 lt!1340265)) lt!1340281 lt!1340268 lt!1340271))))

(assert (=> d!1143997 (isPrefix!3423 lt!1340281 lt!1340271)))

(assert (=> d!1143997 (= (lemmaSamePrefixThenSameSuffix!1644 lt!1340281 (_2!23176 (v!39039 lt!1340265)) lt!1340281 lt!1340268 lt!1340271) lt!1340437)))

(declare-fun bs!583140 () Bool)

(assert (= bs!583140 d!1143997))

(declare-fun m!4414069 () Bool)

(assert (=> bs!583140 m!4414069))

(declare-fun m!4414071 () Bool)

(assert (=> bs!583140 m!4414071))

(assert (=> b!3857942 d!1143997))

(declare-fun d!1143999 () Bool)

(declare-fun dynLambda!17650 (Int BalanceConc!24664) TokenValue!6554)

(assert (=> d!1143999 (= (apply!9567 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))) (seqFromList!4595 lt!1340281)) (dynLambda!17650 (toValue!8752 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265))))) (seqFromList!4595 lt!1340281)))))

(declare-fun b_lambda!112809 () Bool)

(assert (=> (not b_lambda!112809) (not d!1143999)))

(declare-fun t!313184 () Bool)

(declare-fun tb!223475 () Bool)

(assert (=> (and b!3857935 (= (toValue!8752 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) (toValue!8752 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313184) tb!223475))

(declare-fun result!272154 () Bool)

(assert (=> tb!223475 (= result!272154 (inv!21 (dynLambda!17650 (toValue!8752 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265))))) (seqFromList!4595 lt!1340281))))))

(declare-fun m!4414073 () Bool)

(assert (=> tb!223475 m!4414073))

(assert (=> d!1143999 t!313184))

(declare-fun b_and!288741 () Bool)

(assert (= b_and!288675 (and (=> t!313184 result!272154) b_and!288741)))

(declare-fun tb!223477 () Bool)

(declare-fun t!313186 () Bool)

(assert (=> (and b!3857917 (= (toValue!8752 (transformation!6324 (h!46305 rules!2768))) (toValue!8752 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313186) tb!223477))

(declare-fun result!272158 () Bool)

(assert (= result!272158 result!272154))

(assert (=> d!1143999 t!313186))

(declare-fun b_and!288743 () Bool)

(assert (= b_and!288679 (and (=> t!313186 result!272158) b_and!288743)))

(declare-fun t!313188 () Bool)

(declare-fun tb!223479 () Bool)

(assert (=> (and b!3857937 (= (toValue!8752 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) (toValue!8752 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313188) tb!223479))

(declare-fun result!272160 () Bool)

(assert (= result!272160 result!272154))

(assert (=> d!1143999 t!313188))

(declare-fun b_and!288745 () Bool)

(assert (= b_and!288683 (and (=> t!313188 result!272160) b_and!288745)))

(assert (=> d!1143999 m!4413481))

(declare-fun m!4414075 () Bool)

(assert (=> d!1143999 m!4414075))

(assert (=> b!3857942 d!1143999))

(declare-fun d!1144001 () Bool)

(assert (=> d!1144001 (isPrefix!3423 lt!1340281 (++!10406 lt!1340281 (_2!23176 (v!39039 lt!1340265))))))

(declare-fun lt!1340440 () Unit!58552)

(declare-fun choose!22719 (List!41006 List!41006) Unit!58552)

(assert (=> d!1144001 (= lt!1340440 (choose!22719 lt!1340281 (_2!23176 (v!39039 lt!1340265))))))

(assert (=> d!1144001 (= (lemmaConcatTwoListThenFirstIsPrefix!2286 lt!1340281 (_2!23176 (v!39039 lt!1340265))) lt!1340440)))

(declare-fun bs!583141 () Bool)

(assert (= bs!583141 d!1144001))

(assert (=> bs!583141 m!4413489))

(assert (=> bs!583141 m!4413489))

(declare-fun m!4414077 () Bool)

(assert (=> bs!583141 m!4414077))

(declare-fun m!4414079 () Bool)

(assert (=> bs!583141 m!4414079))

(assert (=> b!3857942 d!1144001))

(declare-fun b!3858435 () Bool)

(declare-fun e!2385100 () Bool)

(declare-fun lt!1340441 () tuple2!40082)

(assert (=> b!3858435 (= e!2385100 (not (isEmpty!24210 (_1!23175 lt!1340441))))))

(declare-fun b!3858436 () Bool)

(declare-fun e!2385098 () Bool)

(assert (=> b!3858436 (= e!2385098 (= (_2!23175 lt!1340441) (_2!23176 (v!39039 lt!1340265))))))

(declare-fun d!1144003 () Bool)

(assert (=> d!1144003 e!2385098))

(declare-fun c!671933 () Bool)

(assert (=> d!1144003 (= c!671933 (> (size!30756 (_1!23175 lt!1340441)) 0))))

(declare-fun e!2385099 () tuple2!40082)

(assert (=> d!1144003 (= lt!1340441 e!2385099)))

(declare-fun c!671932 () Bool)

(declare-fun lt!1340443 () Option!8742)

(assert (=> d!1144003 (= c!671932 ((_ is Some!8741) lt!1340443))))

(assert (=> d!1144003 (= lt!1340443 (maxPrefix!3217 thiss!20629 rules!2768 (_2!23176 (v!39039 lt!1340265))))))

(assert (=> d!1144003 (= (lexList!1681 thiss!20629 rules!2768 (_2!23176 (v!39039 lt!1340265))) lt!1340441)))

(declare-fun b!3858437 () Bool)

(declare-fun lt!1340442 () tuple2!40082)

(assert (=> b!3858437 (= e!2385099 (tuple2!40083 (Cons!40884 (_1!23176 (v!39039 lt!1340443)) (_1!23175 lt!1340442)) (_2!23175 lt!1340442)))))

(assert (=> b!3858437 (= lt!1340442 (lexList!1681 thiss!20629 rules!2768 (_2!23176 (v!39039 lt!1340443))))))

(declare-fun b!3858438 () Bool)

(assert (=> b!3858438 (= e!2385099 (tuple2!40083 Nil!40884 (_2!23176 (v!39039 lt!1340265))))))

(declare-fun b!3858439 () Bool)

(assert (=> b!3858439 (= e!2385098 e!2385100)))

(declare-fun res!1562091 () Bool)

(assert (=> b!3858439 (= res!1562091 (< (size!30754 (_2!23175 lt!1340441)) (size!30754 (_2!23176 (v!39039 lt!1340265)))))))

(assert (=> b!3858439 (=> (not res!1562091) (not e!2385100))))

(assert (= (and d!1144003 c!671932) b!3858437))

(assert (= (and d!1144003 (not c!671932)) b!3858438))

(assert (= (and d!1144003 c!671933) b!3858439))

(assert (= (and d!1144003 (not c!671933)) b!3858436))

(assert (= (and b!3858439 res!1562091) b!3858435))

(declare-fun m!4414081 () Bool)

(assert (=> b!3858435 m!4414081))

(declare-fun m!4414083 () Bool)

(assert (=> d!1144003 m!4414083))

(declare-fun m!4414085 () Bool)

(assert (=> d!1144003 m!4414085))

(declare-fun m!4414087 () Bool)

(assert (=> b!3858437 m!4414087))

(declare-fun m!4414089 () Bool)

(assert (=> b!3858439 m!4414089))

(assert (=> b!3858439 m!4413561))

(assert (=> b!3857942 d!1144003))

(declare-fun d!1144005 () Bool)

(declare-fun fromListB!2123 (List!41006) BalanceConc!24664)

(assert (=> d!1144005 (= (seqFromList!4595 lt!1340281) (fromListB!2123 lt!1340281))))

(declare-fun bs!583142 () Bool)

(assert (= bs!583142 d!1144005))

(declare-fun m!4414091 () Bool)

(assert (=> bs!583142 m!4414091))

(assert (=> b!3857942 d!1144005))

(declare-fun d!1144007 () Bool)

(assert (=> d!1144007 (ruleValid!2276 thiss!20629 (rule!9188 (_1!23176 (v!39039 lt!1340265))))))

(declare-fun lt!1340446 () Unit!58552)

(declare-fun choose!22720 (LexerInterface!5913 Rule!12448 List!41009) Unit!58552)

(assert (=> d!1144007 (= lt!1340446 (choose!22720 thiss!20629 (rule!9188 (_1!23176 (v!39039 lt!1340265))) rules!2768))))

(assert (=> d!1144007 (contains!8265 rules!2768 (rule!9188 (_1!23176 (v!39039 lt!1340265))))))

(assert (=> d!1144007 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1356 thiss!20629 (rule!9188 (_1!23176 (v!39039 lt!1340265))) rules!2768) lt!1340446)))

(declare-fun bs!583143 () Bool)

(assert (= bs!583143 d!1144007))

(assert (=> bs!583143 m!4413495))

(declare-fun m!4414093 () Bool)

(assert (=> bs!583143 m!4414093))

(declare-fun m!4414095 () Bool)

(assert (=> bs!583143 m!4414095))

(assert (=> b!3857942 d!1144007))

(declare-fun d!1144009 () Bool)

(declare-fun lt!1340449 () List!41006)

(assert (=> d!1144009 (= (++!10406 lt!1340281 lt!1340449) lt!1340271)))

(declare-fun e!2385103 () List!41006)

(assert (=> d!1144009 (= lt!1340449 e!2385103)))

(declare-fun c!671936 () Bool)

(assert (=> d!1144009 (= c!671936 ((_ is Cons!40882) lt!1340281))))

(assert (=> d!1144009 (>= (size!30754 lt!1340271) (size!30754 lt!1340281))))

(assert (=> d!1144009 (= (getSuffix!1878 lt!1340271 lt!1340281) lt!1340449)))

(declare-fun b!3858444 () Bool)

(assert (=> b!3858444 (= e!2385103 (getSuffix!1878 (tail!5837 lt!1340271) (t!313113 lt!1340281)))))

(declare-fun b!3858445 () Bool)

(assert (=> b!3858445 (= e!2385103 lt!1340271)))

(assert (= (and d!1144009 c!671936) b!3858444))

(assert (= (and d!1144009 (not c!671936)) b!3858445))

(declare-fun m!4414097 () Bool)

(assert (=> d!1144009 m!4414097))

(assert (=> d!1144009 m!4413517))

(assert (=> d!1144009 m!4413501))

(declare-fun m!4414099 () Bool)

(assert (=> b!3858444 m!4414099))

(assert (=> b!3858444 m!4414099))

(declare-fun m!4414101 () Bool)

(assert (=> b!3858444 m!4414101))

(assert (=> b!3857942 d!1144009))

(declare-fun d!1144011 () Bool)

(declare-fun e!2385110 () Bool)

(assert (=> d!1144011 e!2385110))

(declare-fun res!1562101 () Bool)

(assert (=> d!1144011 (=> res!1562101 e!2385110)))

(declare-fun lt!1340452 () Bool)

(assert (=> d!1144011 (= res!1562101 (not lt!1340452))))

(declare-fun e!2385111 () Bool)

(assert (=> d!1144011 (= lt!1340452 e!2385111)))

(declare-fun res!1562102 () Bool)

(assert (=> d!1144011 (=> res!1562102 e!2385111)))

(assert (=> d!1144011 (= res!1562102 ((_ is Nil!40882) lt!1340281))))

(assert (=> d!1144011 (= (isPrefix!3423 lt!1340281 lt!1340277) lt!1340452)))

(declare-fun b!3858454 () Bool)

(declare-fun e!2385112 () Bool)

(assert (=> b!3858454 (= e!2385111 e!2385112)))

(declare-fun res!1562100 () Bool)

(assert (=> b!3858454 (=> (not res!1562100) (not e!2385112))))

(assert (=> b!3858454 (= res!1562100 (not ((_ is Nil!40882) lt!1340277)))))

(declare-fun b!3858457 () Bool)

(assert (=> b!3858457 (= e!2385110 (>= (size!30754 lt!1340277) (size!30754 lt!1340281)))))

(declare-fun b!3858455 () Bool)

(declare-fun res!1562103 () Bool)

(assert (=> b!3858455 (=> (not res!1562103) (not e!2385112))))

(assert (=> b!3858455 (= res!1562103 (= (head!8126 lt!1340281) (head!8126 lt!1340277)))))

(declare-fun b!3858456 () Bool)

(assert (=> b!3858456 (= e!2385112 (isPrefix!3423 (tail!5837 lt!1340281) (tail!5837 lt!1340277)))))

(assert (= (and d!1144011 (not res!1562102)) b!3858454))

(assert (= (and b!3858454 res!1562100) b!3858455))

(assert (= (and b!3858455 res!1562103) b!3858456))

(assert (= (and d!1144011 (not res!1562101)) b!3858457))

(declare-fun m!4414103 () Bool)

(assert (=> b!3858457 m!4414103))

(assert (=> b!3858457 m!4413501))

(assert (=> b!3858455 m!4413891))

(declare-fun m!4414105 () Bool)

(assert (=> b!3858455 m!4414105))

(assert (=> b!3858456 m!4413885))

(declare-fun m!4414107 () Bool)

(assert (=> b!3858456 m!4414107))

(assert (=> b!3858456 m!4413885))

(assert (=> b!3858456 m!4414107))

(declare-fun m!4414109 () Bool)

(assert (=> b!3858456 m!4414109))

(assert (=> b!3857942 d!1144011))

(declare-fun d!1144013 () Bool)

(assert (=> d!1144013 (= (size!30753 (_1!23176 (v!39039 lt!1340265))) (size!30754 (originalCharacters!6924 (_1!23176 (v!39039 lt!1340265)))))))

(declare-fun Unit!58555 () Unit!58552)

(assert (=> d!1144013 (= (lemmaCharactersSize!985 (_1!23176 (v!39039 lt!1340265))) Unit!58555)))

(declare-fun bs!583144 () Bool)

(assert (= bs!583144 d!1144013))

(assert (=> bs!583144 m!4413535))

(assert (=> b!3857942 d!1144013))

(declare-fun d!1144015 () Bool)

(declare-fun lt!1340453 () Int)

(assert (=> d!1144015 (>= lt!1340453 0)))

(declare-fun e!2385113 () Int)

(assert (=> d!1144015 (= lt!1340453 e!2385113)))

(declare-fun c!671937 () Bool)

(assert (=> d!1144015 (= c!671937 ((_ is Nil!40882) (originalCharacters!6924 (_1!23176 (v!39039 lt!1340265)))))))

(assert (=> d!1144015 (= (size!30754 (originalCharacters!6924 (_1!23176 (v!39039 lt!1340265)))) lt!1340453)))

(declare-fun b!3858458 () Bool)

(assert (=> b!3858458 (= e!2385113 0)))

(declare-fun b!3858459 () Bool)

(assert (=> b!3858459 (= e!2385113 (+ 1 (size!30754 (t!313113 (originalCharacters!6924 (_1!23176 (v!39039 lt!1340265)))))))))

(assert (= (and d!1144015 c!671937) b!3858458))

(assert (= (and d!1144015 (not c!671937)) b!3858459))

(declare-fun m!4414111 () Bool)

(assert (=> b!3858459 m!4414111))

(assert (=> b!3857930 d!1144015))

(declare-fun d!1144017 () Bool)

(assert (=> d!1144017 (= (inv!55043 (tag!7184 (h!46305 rules!2768))) (= (mod (str.len (value!200867 (tag!7184 (h!46305 rules!2768)))) 2) 0))))

(assert (=> b!3857928 d!1144017))

(declare-fun d!1144019 () Bool)

(declare-fun res!1562104 () Bool)

(declare-fun e!2385114 () Bool)

(assert (=> d!1144019 (=> (not res!1562104) (not e!2385114))))

(assert (=> d!1144019 (= res!1562104 (semiInverseModEq!2713 (toChars!8611 (transformation!6324 (h!46305 rules!2768))) (toValue!8752 (transformation!6324 (h!46305 rules!2768)))))))

(assert (=> d!1144019 (= (inv!55046 (transformation!6324 (h!46305 rules!2768))) e!2385114)))

(declare-fun b!3858460 () Bool)

(assert (=> b!3858460 (= e!2385114 (equivClasses!2612 (toChars!8611 (transformation!6324 (h!46305 rules!2768))) (toValue!8752 (transformation!6324 (h!46305 rules!2768)))))))

(assert (= (and d!1144019 res!1562104) b!3858460))

(declare-fun m!4414113 () Bool)

(assert (=> d!1144019 m!4414113))

(declare-fun m!4414115 () Bool)

(assert (=> b!3858460 m!4414115))

(assert (=> b!3857928 d!1144019))

(declare-fun b!3858471 () Bool)

(declare-fun e!2385123 () Bool)

(declare-fun inv!15 (TokenValue!6554) Bool)

(assert (=> b!3858471 (= e!2385123 (inv!15 (value!200868 (h!46304 prefixTokens!80))))))

(declare-fun d!1144021 () Bool)

(declare-fun c!671942 () Bool)

(assert (=> d!1144021 (= c!671942 ((_ is IntegerValue!19662) (value!200868 (h!46304 prefixTokens!80))))))

(declare-fun e!2385122 () Bool)

(assert (=> d!1144021 (= (inv!21 (value!200868 (h!46304 prefixTokens!80))) e!2385122)))

(declare-fun b!3858472 () Bool)

(declare-fun e!2385121 () Bool)

(assert (=> b!3858472 (= e!2385122 e!2385121)))

(declare-fun c!671943 () Bool)

(assert (=> b!3858472 (= c!671943 ((_ is IntegerValue!19663) (value!200868 (h!46304 prefixTokens!80))))))

(declare-fun b!3858473 () Bool)

(declare-fun inv!16 (TokenValue!6554) Bool)

(assert (=> b!3858473 (= e!2385122 (inv!16 (value!200868 (h!46304 prefixTokens!80))))))

(declare-fun b!3858474 () Bool)

(declare-fun inv!17 (TokenValue!6554) Bool)

(assert (=> b!3858474 (= e!2385121 (inv!17 (value!200868 (h!46304 prefixTokens!80))))))

(declare-fun b!3858475 () Bool)

(declare-fun res!1562107 () Bool)

(assert (=> b!3858475 (=> res!1562107 e!2385123)))

(assert (=> b!3858475 (= res!1562107 (not ((_ is IntegerValue!19664) (value!200868 (h!46304 prefixTokens!80)))))))

(assert (=> b!3858475 (= e!2385121 e!2385123)))

(assert (= (and d!1144021 c!671942) b!3858473))

(assert (= (and d!1144021 (not c!671942)) b!3858472))

(assert (= (and b!3858472 c!671943) b!3858474))

(assert (= (and b!3858472 (not c!671943)) b!3858475))

(assert (= (and b!3858475 (not res!1562107)) b!3858471))

(declare-fun m!4414117 () Bool)

(assert (=> b!3858471 m!4414117))

(declare-fun m!4414119 () Bool)

(assert (=> b!3858473 m!4414119))

(declare-fun m!4414121 () Bool)

(assert (=> b!3858474 m!4414121))

(assert (=> b!3857948 d!1144021))

(declare-fun d!1144023 () Bool)

(assert (=> d!1144023 (= (inv!55043 (tag!7184 (rule!9188 (h!46304 prefixTokens!80)))) (= (mod (str.len (value!200867 (tag!7184 (rule!9188 (h!46304 prefixTokens!80))))) 2) 0))))

(assert (=> b!3857947 d!1144023))

(declare-fun d!1144025 () Bool)

(declare-fun res!1562108 () Bool)

(declare-fun e!2385124 () Bool)

(assert (=> d!1144025 (=> (not res!1562108) (not e!2385124))))

(assert (=> d!1144025 (= res!1562108 (semiInverseModEq!2713 (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) (toValue!8752 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80))))))))

(assert (=> d!1144025 (= (inv!55046 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) e!2385124)))

(declare-fun b!3858476 () Bool)

(assert (=> b!3858476 (= e!2385124 (equivClasses!2612 (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) (toValue!8752 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80))))))))

(assert (= (and d!1144025 res!1562108) b!3858476))

(declare-fun m!4414123 () Bool)

(assert (=> d!1144025 m!4414123))

(declare-fun m!4414125 () Bool)

(assert (=> b!3858476 m!4414125))

(assert (=> b!3857947 d!1144025))

(declare-fun d!1144027 () Bool)

(declare-fun lt!1340454 () Int)

(assert (=> d!1144027 (>= lt!1340454 0)))

(declare-fun e!2385125 () Int)

(assert (=> d!1144027 (= lt!1340454 e!2385125)))

(declare-fun c!671944 () Bool)

(assert (=> d!1144027 (= c!671944 ((_ is Nil!40882) suffix!1176))))

(assert (=> d!1144027 (= (size!30754 suffix!1176) lt!1340454)))

(declare-fun b!3858477 () Bool)

(assert (=> b!3858477 (= e!2385125 0)))

(declare-fun b!3858478 () Bool)

(assert (=> b!3858478 (= e!2385125 (+ 1 (size!30754 (t!313113 suffix!1176))))))

(assert (= (and d!1144027 c!671944) b!3858477))

(assert (= (and d!1144027 (not c!671944)) b!3858478))

(declare-fun m!4414127 () Bool)

(assert (=> b!3858478 m!4414127))

(assert (=> b!3857926 d!1144027))

(declare-fun d!1144029 () Bool)

(declare-fun lt!1340455 () Int)

(assert (=> d!1144029 (>= lt!1340455 0)))

(declare-fun e!2385126 () Int)

(assert (=> d!1144029 (= lt!1340455 e!2385126)))

(declare-fun c!671945 () Bool)

(assert (=> d!1144029 (= c!671945 ((_ is Nil!40882) (_2!23176 (v!39039 lt!1340265))))))

(assert (=> d!1144029 (= (size!30754 (_2!23176 (v!39039 lt!1340265))) lt!1340455)))

(declare-fun b!3858479 () Bool)

(assert (=> b!3858479 (= e!2385126 0)))

(declare-fun b!3858480 () Bool)

(assert (=> b!3858480 (= e!2385126 (+ 1 (size!30754 (t!313113 (_2!23176 (v!39039 lt!1340265))))))))

(assert (= (and d!1144029 c!671945) b!3858479))

(assert (= (and d!1144029 (not c!671945)) b!3858480))

(declare-fun m!4414129 () Bool)

(assert (=> b!3858480 m!4414129))

(assert (=> b!3857926 d!1144029))

(declare-fun d!1144031 () Bool)

(declare-fun res!1562111 () Bool)

(declare-fun e!2385129 () Bool)

(assert (=> d!1144031 (=> (not res!1562111) (not e!2385129))))

(declare-fun rulesValid!2448 (LexerInterface!5913 List!41009) Bool)

(assert (=> d!1144031 (= res!1562111 (rulesValid!2448 thiss!20629 rules!2768))))

(assert (=> d!1144031 (= (rulesInvariant!5256 thiss!20629 rules!2768) e!2385129)))

(declare-fun b!3858483 () Bool)

(declare-datatypes ((List!41011 0))(
  ( (Nil!40887) (Cons!40887 (h!46307 String!46488) (t!313214 List!41011)) )
))
(declare-fun noDuplicateTag!2449 (LexerInterface!5913 List!41009 List!41011) Bool)

(assert (=> b!3858483 (= e!2385129 (noDuplicateTag!2449 thiss!20629 rules!2768 Nil!40887))))

(assert (= (and d!1144031 res!1562111) b!3858483))

(declare-fun m!4414131 () Bool)

(assert (=> d!1144031 m!4414131))

(declare-fun m!4414133 () Bool)

(assert (=> b!3858483 m!4414133))

(assert (=> b!3857934 d!1144031))

(declare-fun d!1144033 () Bool)

(assert (=> d!1144033 (= (isEmpty!24211 rules!2768) ((_ is Nil!40885) rules!2768))))

(assert (=> b!3857932 d!1144033))

(declare-fun b!3858484 () Bool)

(declare-fun e!2385132 () Bool)

(assert (=> b!3858484 (= e!2385132 (inv!15 (value!200868 (h!46304 suffixTokens!72))))))

(declare-fun d!1144035 () Bool)

(declare-fun c!671946 () Bool)

(assert (=> d!1144035 (= c!671946 ((_ is IntegerValue!19662) (value!200868 (h!46304 suffixTokens!72))))))

(declare-fun e!2385131 () Bool)

(assert (=> d!1144035 (= (inv!21 (value!200868 (h!46304 suffixTokens!72))) e!2385131)))

(declare-fun b!3858485 () Bool)

(declare-fun e!2385130 () Bool)

(assert (=> b!3858485 (= e!2385131 e!2385130)))

(declare-fun c!671947 () Bool)

(assert (=> b!3858485 (= c!671947 ((_ is IntegerValue!19663) (value!200868 (h!46304 suffixTokens!72))))))

(declare-fun b!3858486 () Bool)

(assert (=> b!3858486 (= e!2385131 (inv!16 (value!200868 (h!46304 suffixTokens!72))))))

(declare-fun b!3858487 () Bool)

(assert (=> b!3858487 (= e!2385130 (inv!17 (value!200868 (h!46304 suffixTokens!72))))))

(declare-fun b!3858488 () Bool)

(declare-fun res!1562112 () Bool)

(assert (=> b!3858488 (=> res!1562112 e!2385132)))

(assert (=> b!3858488 (= res!1562112 (not ((_ is IntegerValue!19664) (value!200868 (h!46304 suffixTokens!72)))))))

(assert (=> b!3858488 (= e!2385130 e!2385132)))

(assert (= (and d!1144035 c!671946) b!3858486))

(assert (= (and d!1144035 (not c!671946)) b!3858485))

(assert (= (and b!3858485 c!671947) b!3858487))

(assert (= (and b!3858485 (not c!671947)) b!3858488))

(assert (= (and b!3858488 (not res!1562112)) b!3858484))

(declare-fun m!4414135 () Bool)

(assert (=> b!3858484 m!4414135))

(declare-fun m!4414137 () Bool)

(assert (=> b!3858486 m!4414137))

(declare-fun m!4414139 () Bool)

(assert (=> b!3858487 m!4414139))

(assert (=> b!3857931 d!1144035))

(declare-fun b!3858500 () Bool)

(declare-fun e!2385135 () Bool)

(declare-fun tp!1169476 () Bool)

(declare-fun tp!1169474 () Bool)

(assert (=> b!3858500 (= e!2385135 (and tp!1169476 tp!1169474))))

(declare-fun b!3858501 () Bool)

(declare-fun tp!1169475 () Bool)

(assert (=> b!3858501 (= e!2385135 tp!1169475)))

(declare-fun b!3858502 () Bool)

(declare-fun tp!1169477 () Bool)

(declare-fun tp!1169473 () Bool)

(assert (=> b!3858502 (= e!2385135 (and tp!1169477 tp!1169473))))

(declare-fun b!3858499 () Bool)

(assert (=> b!3858499 (= e!2385135 tp_is_empty!19429)))

(assert (=> b!3857919 (= tp!1169375 e!2385135)))

(assert (= (and b!3857919 ((_ is ElementMatch!11229) (regex!6324 (rule!9188 (h!46304 suffixTokens!72))))) b!3858499))

(assert (= (and b!3857919 ((_ is Concat!17784) (regex!6324 (rule!9188 (h!46304 suffixTokens!72))))) b!3858500))

(assert (= (and b!3857919 ((_ is Star!11229) (regex!6324 (rule!9188 (h!46304 suffixTokens!72))))) b!3858501))

(assert (= (and b!3857919 ((_ is Union!11229) (regex!6324 (rule!9188 (h!46304 suffixTokens!72))))) b!3858502))

(declare-fun b!3858516 () Bool)

(declare-fun b_free!103621 () Bool)

(declare-fun b_next!104325 () Bool)

(assert (=> b!3858516 (= b_free!103621 (not b_next!104325))))

(declare-fun tb!223481 () Bool)

(declare-fun t!313190 () Bool)

(assert (=> (and b!3858516 (= (toValue!8752 (transformation!6324 (rule!9188 (h!46304 (t!313115 suffixTokens!72))))) (toValue!8752 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313190) tb!223481))

(declare-fun result!272166 () Bool)

(assert (= result!272166 result!272154))

(assert (=> d!1143999 t!313190))

(declare-fun b_and!288747 () Bool)

(declare-fun tp!1169488 () Bool)

(assert (=> b!3858516 (= tp!1169488 (and (=> t!313190 result!272166) b_and!288747))))

(declare-fun b_free!103623 () Bool)

(declare-fun b_next!104327 () Bool)

(assert (=> b!3858516 (= b_free!103623 (not b_next!104327))))

(declare-fun t!313192 () Bool)

(declare-fun tb!223483 () Bool)

(assert (=> (and b!3858516 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 (t!313115 suffixTokens!72))))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72))))) t!313192) tb!223483))

(declare-fun result!272168 () Bool)

(assert (= result!272168 result!272074))

(assert (=> b!3857956 t!313192))

(declare-fun t!313194 () Bool)

(declare-fun tb!223485 () Bool)

(assert (=> (and b!3858516 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 (t!313115 suffixTokens!72))))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80))))) t!313194) tb!223485))

(declare-fun result!272170 () Bool)

(assert (= result!272170 result!272142))

(assert (=> b!3858417 t!313194))

(declare-fun t!313196 () Bool)

(declare-fun tb!223487 () Bool)

(assert (=> (and b!3858516 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 (t!313115 suffixTokens!72))))) (toChars!8611 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313196) tb!223487))

(declare-fun result!272172 () Bool)

(assert (= result!272172 result!272148))

(assert (=> d!1143995 t!313196))

(declare-fun b_and!288749 () Bool)

(declare-fun tp!1169492 () Bool)

(assert (=> b!3858516 (= tp!1169492 (and (=> t!313192 result!272168) (=> t!313194 result!272170) (=> t!313196 result!272172) b_and!288749))))

(declare-fun e!2385150 () Bool)

(assert (=> b!3858516 (= e!2385150 (and tp!1169488 tp!1169492))))

(declare-fun e!2385151 () Bool)

(assert (=> b!3857940 (= tp!1169380 e!2385151)))

(declare-fun b!3858514 () Bool)

(declare-fun tp!1169489 () Bool)

(declare-fun e!2385148 () Bool)

(declare-fun e!2385149 () Bool)

(assert (=> b!3858514 (= e!2385149 (and (inv!21 (value!200868 (h!46304 (t!313115 suffixTokens!72)))) e!2385148 tp!1169489))))

(declare-fun tp!1169490 () Bool)

(declare-fun b!3858515 () Bool)

(assert (=> b!3858515 (= e!2385148 (and tp!1169490 (inv!55043 (tag!7184 (rule!9188 (h!46304 (t!313115 suffixTokens!72))))) (inv!55046 (transformation!6324 (rule!9188 (h!46304 (t!313115 suffixTokens!72))))) e!2385150))))

(declare-fun tp!1169491 () Bool)

(declare-fun b!3858513 () Bool)

(assert (=> b!3858513 (= e!2385151 (and (inv!55047 (h!46304 (t!313115 suffixTokens!72))) e!2385149 tp!1169491))))

(assert (= b!3858515 b!3858516))

(assert (= b!3858514 b!3858515))

(assert (= b!3858513 b!3858514))

(assert (= (and b!3857940 ((_ is Cons!40884) (t!313115 suffixTokens!72))) b!3858513))

(declare-fun m!4414141 () Bool)

(assert (=> b!3858514 m!4414141))

(declare-fun m!4414143 () Bool)

(assert (=> b!3858515 m!4414143))

(declare-fun m!4414145 () Bool)

(assert (=> b!3858515 m!4414145))

(declare-fun m!4414147 () Bool)

(assert (=> b!3858513 m!4414147))

(declare-fun b!3858518 () Bool)

(declare-fun e!2385154 () Bool)

(declare-fun tp!1169496 () Bool)

(declare-fun tp!1169494 () Bool)

(assert (=> b!3858518 (= e!2385154 (and tp!1169496 tp!1169494))))

(declare-fun b!3858519 () Bool)

(declare-fun tp!1169495 () Bool)

(assert (=> b!3858519 (= e!2385154 tp!1169495)))

(declare-fun b!3858520 () Bool)

(declare-fun tp!1169497 () Bool)

(declare-fun tp!1169493 () Bool)

(assert (=> b!3858520 (= e!2385154 (and tp!1169497 tp!1169493))))

(declare-fun b!3858517 () Bool)

(assert (=> b!3858517 (= e!2385154 tp_is_empty!19429)))

(assert (=> b!3857928 (= tp!1169387 e!2385154)))

(assert (= (and b!3857928 ((_ is ElementMatch!11229) (regex!6324 (h!46305 rules!2768)))) b!3858517))

(assert (= (and b!3857928 ((_ is Concat!17784) (regex!6324 (h!46305 rules!2768)))) b!3858518))

(assert (= (and b!3857928 ((_ is Star!11229) (regex!6324 (h!46305 rules!2768)))) b!3858519))

(assert (= (and b!3857928 ((_ is Union!11229) (regex!6324 (h!46305 rules!2768)))) b!3858520))

(declare-fun b!3858525 () Bool)

(declare-fun e!2385157 () Bool)

(declare-fun tp!1169500 () Bool)

(assert (=> b!3858525 (= e!2385157 (and tp_is_empty!19429 tp!1169500))))

(assert (=> b!3857918 (= tp!1169377 e!2385157)))

(assert (= (and b!3857918 ((_ is Cons!40882) (t!313113 prefix!426))) b!3858525))

(declare-fun b!3858526 () Bool)

(declare-fun e!2385158 () Bool)

(declare-fun tp!1169501 () Bool)

(assert (=> b!3858526 (= e!2385158 (and tp_is_empty!19429 tp!1169501))))

(assert (=> b!3857927 (= tp!1169383 e!2385158)))

(assert (= (and b!3857927 ((_ is Cons!40882) (t!313113 suffix!1176))) b!3858526))

(declare-fun b!3858527 () Bool)

(declare-fun e!2385159 () Bool)

(declare-fun tp!1169502 () Bool)

(assert (=> b!3858527 (= e!2385159 (and tp_is_empty!19429 tp!1169502))))

(assert (=> b!3857948 (= tp!1169386 e!2385159)))

(assert (= (and b!3857948 ((_ is Cons!40882) (originalCharacters!6924 (h!46304 prefixTokens!80)))) b!3858527))

(declare-fun b!3858529 () Bool)

(declare-fun e!2385160 () Bool)

(declare-fun tp!1169506 () Bool)

(declare-fun tp!1169504 () Bool)

(assert (=> b!3858529 (= e!2385160 (and tp!1169506 tp!1169504))))

(declare-fun b!3858530 () Bool)

(declare-fun tp!1169505 () Bool)

(assert (=> b!3858530 (= e!2385160 tp!1169505)))

(declare-fun b!3858531 () Bool)

(declare-fun tp!1169507 () Bool)

(declare-fun tp!1169503 () Bool)

(assert (=> b!3858531 (= e!2385160 (and tp!1169507 tp!1169503))))

(declare-fun b!3858528 () Bool)

(assert (=> b!3858528 (= e!2385160 tp_is_empty!19429)))

(assert (=> b!3857947 (= tp!1169384 e!2385160)))

(assert (= (and b!3857947 ((_ is ElementMatch!11229) (regex!6324 (rule!9188 (h!46304 prefixTokens!80))))) b!3858528))

(assert (= (and b!3857947 ((_ is Concat!17784) (regex!6324 (rule!9188 (h!46304 prefixTokens!80))))) b!3858529))

(assert (= (and b!3857947 ((_ is Star!11229) (regex!6324 (rule!9188 (h!46304 prefixTokens!80))))) b!3858530))

(assert (= (and b!3857947 ((_ is Union!11229) (regex!6324 (rule!9188 (h!46304 prefixTokens!80))))) b!3858531))

(declare-fun b!3858542 () Bool)

(declare-fun b_free!103625 () Bool)

(declare-fun b_next!104329 () Bool)

(assert (=> b!3858542 (= b_free!103625 (not b_next!104329))))

(declare-fun tb!223489 () Bool)

(declare-fun t!313198 () Bool)

(assert (=> (and b!3858542 (= (toValue!8752 (transformation!6324 (h!46305 (t!313116 rules!2768)))) (toValue!8752 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313198) tb!223489))

(declare-fun result!272178 () Bool)

(assert (= result!272178 result!272154))

(assert (=> d!1143999 t!313198))

(declare-fun b_and!288751 () Bool)

(declare-fun tp!1169518 () Bool)

(assert (=> b!3858542 (= tp!1169518 (and (=> t!313198 result!272178) b_and!288751))))

(declare-fun b_free!103627 () Bool)

(declare-fun b_next!104331 () Bool)

(assert (=> b!3858542 (= b_free!103627 (not b_next!104331))))

(declare-fun tb!223491 () Bool)

(declare-fun t!313200 () Bool)

(assert (=> (and b!3858542 (= (toChars!8611 (transformation!6324 (h!46305 (t!313116 rules!2768)))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72))))) t!313200) tb!223491))

(declare-fun result!272180 () Bool)

(assert (= result!272180 result!272074))

(assert (=> b!3857956 t!313200))

(declare-fun tb!223493 () Bool)

(declare-fun t!313202 () Bool)

(assert (=> (and b!3858542 (= (toChars!8611 (transformation!6324 (h!46305 (t!313116 rules!2768)))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80))))) t!313202) tb!223493))

(declare-fun result!272182 () Bool)

(assert (= result!272182 result!272142))

(assert (=> b!3858417 t!313202))

(declare-fun tb!223495 () Bool)

(declare-fun t!313204 () Bool)

(assert (=> (and b!3858542 (= (toChars!8611 (transformation!6324 (h!46305 (t!313116 rules!2768)))) (toChars!8611 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313204) tb!223495))

(declare-fun result!272184 () Bool)

(assert (= result!272184 result!272148))

(assert (=> d!1143995 t!313204))

(declare-fun b_and!288753 () Bool)

(declare-fun tp!1169516 () Bool)

(assert (=> b!3858542 (= tp!1169516 (and (=> t!313200 result!272180) (=> t!313202 result!272182) (=> t!313204 result!272184) b_and!288753))))

(declare-fun e!2385171 () Bool)

(assert (=> b!3858542 (= e!2385171 (and tp!1169518 tp!1169516))))

(declare-fun e!2385172 () Bool)

(declare-fun b!3858541 () Bool)

(declare-fun tp!1169519 () Bool)

(assert (=> b!3858541 (= e!2385172 (and tp!1169519 (inv!55043 (tag!7184 (h!46305 (t!313116 rules!2768)))) (inv!55046 (transformation!6324 (h!46305 (t!313116 rules!2768)))) e!2385171))))

(declare-fun b!3858540 () Bool)

(declare-fun e!2385170 () Bool)

(declare-fun tp!1169517 () Bool)

(assert (=> b!3858540 (= e!2385170 (and e!2385172 tp!1169517))))

(assert (=> b!3857944 (= tp!1169379 e!2385170)))

(assert (= b!3858541 b!3858542))

(assert (= b!3858540 b!3858541))

(assert (= (and b!3857944 ((_ is Cons!40885) (t!313116 rules!2768))) b!3858540))

(declare-fun m!4414149 () Bool)

(assert (=> b!3858541 m!4414149))

(declare-fun m!4414151 () Bool)

(assert (=> b!3858541 m!4414151))

(declare-fun b!3858543 () Bool)

(declare-fun e!2385173 () Bool)

(declare-fun tp!1169520 () Bool)

(assert (=> b!3858543 (= e!2385173 (and tp_is_empty!19429 tp!1169520))))

(assert (=> b!3857933 (= tp!1169385 e!2385173)))

(assert (= (and b!3857933 ((_ is Cons!40882) (t!313113 suffixResult!91))) b!3858543))

(declare-fun b!3858547 () Bool)

(declare-fun b_free!103629 () Bool)

(declare-fun b_next!104333 () Bool)

(assert (=> b!3858547 (= b_free!103629 (not b_next!104333))))

(declare-fun tb!223497 () Bool)

(declare-fun t!313206 () Bool)

(assert (=> (and b!3858547 (= (toValue!8752 (transformation!6324 (rule!9188 (h!46304 (t!313115 prefixTokens!80))))) (toValue!8752 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313206) tb!223497))

(declare-fun result!272186 () Bool)

(assert (= result!272186 result!272154))

(assert (=> d!1143999 t!313206))

(declare-fun tp!1169521 () Bool)

(declare-fun b_and!288755 () Bool)

(assert (=> b!3858547 (= tp!1169521 (and (=> t!313206 result!272186) b_and!288755))))

(declare-fun b_free!103631 () Bool)

(declare-fun b_next!104335 () Bool)

(assert (=> b!3858547 (= b_free!103631 (not b_next!104335))))

(declare-fun t!313208 () Bool)

(declare-fun tb!223499 () Bool)

(assert (=> (and b!3858547 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 (t!313115 prefixTokens!80))))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72))))) t!313208) tb!223499))

(declare-fun result!272188 () Bool)

(assert (= result!272188 result!272074))

(assert (=> b!3857956 t!313208))

(declare-fun t!313210 () Bool)

(declare-fun tb!223501 () Bool)

(assert (=> (and b!3858547 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 (t!313115 prefixTokens!80))))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80))))) t!313210) tb!223501))

(declare-fun result!272190 () Bool)

(assert (= result!272190 result!272142))

(assert (=> b!3858417 t!313210))

(declare-fun tb!223503 () Bool)

(declare-fun t!313212 () Bool)

(assert (=> (and b!3858547 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 (t!313115 prefixTokens!80))))) (toChars!8611 (transformation!6324 (rule!9188 (_1!23176 (v!39039 lt!1340265)))))) t!313212) tb!223503))

(declare-fun result!272192 () Bool)

(assert (= result!272192 result!272148))

(assert (=> d!1143995 t!313212))

(declare-fun b_and!288757 () Bool)

(declare-fun tp!1169525 () Bool)

(assert (=> b!3858547 (= tp!1169525 (and (=> t!313208 result!272188) (=> t!313210 result!272190) (=> t!313212 result!272192) b_and!288757))))

(declare-fun e!2385176 () Bool)

(assert (=> b!3858547 (= e!2385176 (and tp!1169521 tp!1169525))))

(declare-fun e!2385177 () Bool)

(assert (=> b!3857922 (= tp!1169388 e!2385177)))

(declare-fun e!2385174 () Bool)

(declare-fun tp!1169522 () Bool)

(declare-fun b!3858545 () Bool)

(declare-fun e!2385175 () Bool)

(assert (=> b!3858545 (= e!2385175 (and (inv!21 (value!200868 (h!46304 (t!313115 prefixTokens!80)))) e!2385174 tp!1169522))))

(declare-fun tp!1169523 () Bool)

(declare-fun b!3858546 () Bool)

(assert (=> b!3858546 (= e!2385174 (and tp!1169523 (inv!55043 (tag!7184 (rule!9188 (h!46304 (t!313115 prefixTokens!80))))) (inv!55046 (transformation!6324 (rule!9188 (h!46304 (t!313115 prefixTokens!80))))) e!2385176))))

(declare-fun tp!1169524 () Bool)

(declare-fun b!3858544 () Bool)

(assert (=> b!3858544 (= e!2385177 (and (inv!55047 (h!46304 (t!313115 prefixTokens!80))) e!2385175 tp!1169524))))

(assert (= b!3858546 b!3858547))

(assert (= b!3858545 b!3858546))

(assert (= b!3858544 b!3858545))

(assert (= (and b!3857922 ((_ is Cons!40884) (t!313115 prefixTokens!80))) b!3858544))

(declare-fun m!4414153 () Bool)

(assert (=> b!3858545 m!4414153))

(declare-fun m!4414155 () Bool)

(assert (=> b!3858546 m!4414155))

(declare-fun m!4414157 () Bool)

(assert (=> b!3858546 m!4414157))

(declare-fun m!4414159 () Bool)

(assert (=> b!3858544 m!4414159))

(declare-fun b!3858548 () Bool)

(declare-fun e!2385180 () Bool)

(declare-fun tp!1169526 () Bool)

(assert (=> b!3858548 (= e!2385180 (and tp_is_empty!19429 tp!1169526))))

(assert (=> b!3857931 (= tp!1169378 e!2385180)))

(assert (= (and b!3857931 ((_ is Cons!40882) (originalCharacters!6924 (h!46304 suffixTokens!72)))) b!3858548))

(declare-fun b_lambda!112811 () Bool)

(assert (= b_lambda!112805 (or (and b!3857935 b_free!103599) (and b!3858516 b_free!103623 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 (t!313115 suffixTokens!72))))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))))) (and b!3858547 b_free!103631 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 (t!313115 prefixTokens!80))))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))))) (and b!3858542 b_free!103627 (= (toChars!8611 (transformation!6324 (h!46305 (t!313116 rules!2768)))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))))) (and b!3857937 b_free!103607 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))))) (and b!3857917 b_free!103603 (= (toChars!8611 (transformation!6324 (h!46305 rules!2768))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))))) b_lambda!112811)))

(declare-fun b_lambda!112813 () Bool)

(assert (= b_lambda!112791 (or (and b!3857937 b_free!103607) (and b!3858542 b_free!103627 (= (toChars!8611 (transformation!6324 (h!46305 (t!313116 rules!2768)))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))))) (and b!3857935 b_free!103599 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 prefixTokens!80)))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))))) (and b!3858516 b_free!103623 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 (t!313115 suffixTokens!72))))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))))) (and b!3858547 b_free!103631 (= (toChars!8611 (transformation!6324 (rule!9188 (h!46304 (t!313115 prefixTokens!80))))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))))) (and b!3857917 b_free!103603 (= (toChars!8611 (transformation!6324 (h!46305 rules!2768))) (toChars!8611 (transformation!6324 (rule!9188 (h!46304 suffixTokens!72)))))) b_lambda!112813)))

(check-sat (not b!3858395) (not b_next!104303) b_and!288745 (not b!3858289) (not d!1143857) (not tb!223475) b_and!288747 (not b!3858077) (not b!3858435) (not b!3858474) (not b_lambda!112807) (not b!3858084) (not d!1144031) b_and!288739 (not b_lambda!112811) (not b!3858419) (not b!3858525) b_and!288735 (not d!1143937) (not b!3858437) (not b!3858398) (not b!3858147) (not b!3857956) (not b!3858185) (not b!3858400) (not b!3858531) (not b!3858529) (not b!3858076) (not d!1143965) (not b!3858459) b_and!288753 (not d!1144005) (not b!3858480) (not b!3858513) (not b!3858527) (not d!1143991) (not d!1143975) (not b!3858478) (not b!3858279) (not d!1143919) (not b!3858473) (not d!1144007) (not b!3858079) (not b!3858247) (not b_next!104325) (not d!1144025) (not d!1143997) (not b!3858514) (not b!3858540) (not b!3858502) (not b!3858520) (not b!3858439) (not b!3858487) (not b!3858455) (not b!3858418) b_and!288743 (not d!1143995) (not b!3858406) (not b!3858545) (not b!3858081) (not b!3857951) (not b!3858080) (not d!1143977) (not b!3858280) (not b!3858186) (not b!3857957) (not b_next!104327) (not b!3858544) (not b!3858416) (not b!3858519) (not b!3858456) (not b_next!104305) (not b!3858149) (not b!3858526) (not b!3858284) (not b!3858431) (not d!1144001) (not b!3858409) (not b!3858078) (not b!3857962) (not d!1143853) (not b!3858476) (not b_next!104307) (not d!1143961) (not b!3858501) (not b!3858424) (not b!3858276) (not b!3858515) (not b!3858486) (not b!3858239) (not b!3858414) (not b!3858427) (not b!3858484) (not b!3858417) (not b_lambda!112809) (not bm!282502) (not b!3858471) (not b_next!104329) (not tb!223409) (not b!3858444) (not b!3858432) (not b_lambda!112813) (not d!1144009) (not b_next!104331) (not b!3858500) b_and!288749 (not bm!282511) (not b!3858402) tp_is_empty!19429 (not d!1143959) (not b!3858399) (not b!3858401) (not b!3858411) (not b!3858428) (not b!3858240) (not d!1144013) (not b!3858412) (not d!1144019) (not d!1143967) b_and!288751 (not b!3858541) (not b!3858083) (not b!3858543) (not b!3858396) (not b!3858530) (not b!3858457) (not b_next!104335) (not b!3858518) (not d!1143851) (not b!3858286) (not d!1143989) (not d!1144003) (not b!3858403) (not b!3858546) (not b_next!104301) b_and!288757 (not b!3858151) (not b!3858548) (not b_next!104309) b_and!288755 (not tb!223463) (not b!3858460) (not b_next!104311) (not b!3858405) (not b_next!104333) (not d!1143953) b_and!288737 (not d!1143987) (not tb!223469) b_and!288741 (not b!3858483))
(check-sat b_and!288735 b_and!288753 (not b_next!104325) b_and!288743 (not b_next!104327) (not b_next!104305) (not b_next!104307) (not b_next!104329) b_and!288751 (not b_next!104335) (not b_next!104301) (not b_next!104303) b_and!288745 b_and!288747 b_and!288739 (not b_next!104331) b_and!288749 b_and!288757 (not b_next!104309) b_and!288755 (not b_next!104311) (not b_next!104333) b_and!288737 b_and!288741)
