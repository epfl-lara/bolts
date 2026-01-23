; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373868 () Bool)

(assert start!373868)

(declare-fun b!3972829 () Bool)

(declare-fun b_free!110113 () Bool)

(declare-fun b_next!110817 () Bool)

(assert (=> b!3972829 (= b_free!110113 (not b_next!110817))))

(declare-fun tp!1211377 () Bool)

(declare-fun b_and!305407 () Bool)

(assert (=> b!3972829 (= tp!1211377 b_and!305407)))

(declare-fun b_free!110115 () Bool)

(declare-fun b_next!110819 () Bool)

(assert (=> b!3972829 (= b_free!110115 (not b_next!110819))))

(declare-fun tp!1211371 () Bool)

(declare-fun b_and!305409 () Bool)

(assert (=> b!3972829 (= tp!1211371 b_and!305409)))

(declare-fun b!3972822 () Bool)

(declare-fun b_free!110117 () Bool)

(declare-fun b_next!110821 () Bool)

(assert (=> b!3972822 (= b_free!110117 (not b_next!110821))))

(declare-fun tp!1211367 () Bool)

(declare-fun b_and!305411 () Bool)

(assert (=> b!3972822 (= tp!1211367 b_and!305411)))

(declare-fun b_free!110119 () Bool)

(declare-fun b_next!110823 () Bool)

(assert (=> b!3972822 (= b_free!110119 (not b_next!110823))))

(declare-fun tp!1211376 () Bool)

(declare-fun b_and!305413 () Bool)

(assert (=> b!3972822 (= tp!1211376 b_and!305413)))

(declare-fun b!3972809 () Bool)

(declare-fun e!2461195 () Bool)

(assert (=> b!3972809 (= e!2461195 true)))

(declare-fun lt!1391987 () Int)

(declare-datatypes ((C!23352 0))(
  ( (C!23353 (val!13770 Int)) )
))
(declare-datatypes ((List!42546 0))(
  ( (Nil!42422) (Cons!42422 (h!47842 C!23352) (t!330961 List!42546)) )
))
(declare-fun lt!1391975 () List!42546)

(declare-fun size!31740 (List!42546) Int)

(assert (=> b!3972809 (= lt!1391987 (size!31740 lt!1391975))))

(declare-fun e!2461198 () Bool)

(assert (=> b!3972809 e!2461198))

(declare-fun res!1608453 () Bool)

(assert (=> b!3972809 (=> (not res!1608453) (not e!2461198))))

(declare-fun isPrefix!3765 (List!42546 List!42546) Bool)

(assert (=> b!3972809 (= res!1608453 (isPrefix!3765 lt!1391975 lt!1391975))))

(declare-datatypes ((Unit!61072 0))(
  ( (Unit!61073) )
))
(declare-fun lt!1391986 () Unit!61072)

(declare-fun lemmaIsPrefixRefl!2357 (List!42546 List!42546) Unit!61072)

(assert (=> b!3972809 (= lt!1391986 (lemmaIsPrefixRefl!2357 lt!1391975 lt!1391975))))

(declare-fun b!3972810 () Bool)

(declare-fun res!1608446 () Bool)

(declare-fun e!2461194 () Bool)

(assert (=> b!3972810 (=> (not res!1608446) (not e!2461194))))

(declare-fun suffix!1299 () List!42546)

(declare-fun newSuffix!27 () List!42546)

(assert (=> b!3972810 (= res!1608446 (>= (size!31740 suffix!1299) (size!31740 newSuffix!27)))))

(declare-fun b!3972811 () Bool)

(declare-fun e!2461174 () Bool)

(assert (=> b!3972811 (= e!2461194 e!2461174)))

(declare-fun res!1608452 () Bool)

(assert (=> b!3972811 (=> (not res!1608452) (not e!2461174))))

(declare-fun lt!1392001 () Int)

(declare-fun lt!1391984 () Int)

(assert (=> b!3972811 (= res!1608452 (>= lt!1392001 lt!1391984))))

(declare-fun lt!1391979 () List!42546)

(assert (=> b!3972811 (= lt!1391984 (size!31740 lt!1391979))))

(declare-fun prefix!494 () List!42546)

(assert (=> b!3972811 (= lt!1392001 (size!31740 prefix!494))))

(declare-datatypes ((IArray!25783 0))(
  ( (IArray!25784 (innerList!12949 List!42546)) )
))
(declare-datatypes ((Conc!12889 0))(
  ( (Node!12889 (left!32122 Conc!12889) (right!32452 Conc!12889) (csize!26008 Int) (cheight!13100 Int)) (Leaf!19935 (xs!16195 IArray!25783) (csize!26009 Int)) (Empty!12889) )
))
(declare-datatypes ((BalanceConc!25372 0))(
  ( (BalanceConc!25373 (c!688926 Conc!12889)) )
))
(declare-datatypes ((List!42547 0))(
  ( (Nil!42423) (Cons!42423 (h!47843 (_ BitVec 16)) (t!330962 List!42547)) )
))
(declare-datatypes ((TokenValue!6908 0))(
  ( (FloatLiteralValue!13816 (text!48801 List!42547)) (TokenValueExt!6907 (__x!26033 Int)) (Broken!34540 (value!210931 List!42547)) (Object!7031) (End!6908) (Def!6908) (Underscore!6908) (Match!6908) (Else!6908) (Error!6908) (Case!6908) (If!6908) (Extends!6908) (Abstract!6908) (Class!6908) (Val!6908) (DelimiterValue!13816 (del!6968 List!42547)) (KeywordValue!6914 (value!210932 List!42547)) (CommentValue!13816 (value!210933 List!42547)) (WhitespaceValue!13816 (value!210934 List!42547)) (IndentationValue!6908 (value!210935 List!42547)) (String!48257) (Int32!6908) (Broken!34541 (value!210936 List!42547)) (Boolean!6909) (Unit!61074) (OperatorValue!6911 (op!6968 List!42547)) (IdentifierValue!13816 (value!210937 List!42547)) (IdentifierValue!13817 (value!210938 List!42547)) (WhitespaceValue!13817 (value!210939 List!42547)) (True!13816) (False!13816) (Broken!34542 (value!210940 List!42547)) (Broken!34543 (value!210941 List!42547)) (True!13817) (RightBrace!6908) (RightBracket!6908) (Colon!6908) (Null!6908) (Comma!6908) (LeftBracket!6908) (False!13817) (LeftBrace!6908) (ImaginaryLiteralValue!6908 (text!48802 List!42547)) (StringLiteralValue!20724 (value!210942 List!42547)) (EOFValue!6908 (value!210943 List!42547)) (IdentValue!6908 (value!210944 List!42547)) (DelimiterValue!13817 (value!210945 List!42547)) (DedentValue!6908 (value!210946 List!42547)) (NewLineValue!6908 (value!210947 List!42547)) (IntegerValue!20724 (value!210948 (_ BitVec 32)) (text!48803 List!42547)) (IntegerValue!20725 (value!210949 Int) (text!48804 List!42547)) (Times!6908) (Or!6908) (Equal!6908) (Minus!6908) (Broken!34544 (value!210950 List!42547)) (And!6908) (Div!6908) (LessEqual!6908) (Mod!6908) (Concat!18491) (Not!6908) (Plus!6908) (SpaceValue!6908 (value!210951 List!42547)) (IntegerValue!20726 (value!210952 Int) (text!48805 List!42547)) (StringLiteralValue!20725 (text!48806 List!42547)) (FloatLiteralValue!13817 (text!48807 List!42547)) (BytesLiteralValue!6908 (value!210953 List!42547)) (CommentValue!13817 (value!210954 List!42547)) (StringLiteralValue!20726 (value!210955 List!42547)) (ErrorTokenValue!6908 (msg!6969 List!42547)) )
))
(declare-datatypes ((Regex!11583 0))(
  ( (ElementMatch!11583 (c!688927 C!23352)) (Concat!18492 (regOne!23678 Regex!11583) (regTwo!23678 Regex!11583)) (EmptyExpr!11583) (Star!11583 (reg!11912 Regex!11583)) (EmptyLang!11583) (Union!11583 (regOne!23679 Regex!11583) (regTwo!23679 Regex!11583)) )
))
(declare-datatypes ((String!48258 0))(
  ( (String!48259 (value!210956 String)) )
))
(declare-datatypes ((TokenValueInjection!13244 0))(
  ( (TokenValueInjection!13245 (toValue!9166 Int) (toChars!9025 Int)) )
))
(declare-datatypes ((Rule!13156 0))(
  ( (Rule!13157 (regex!6678 Regex!11583) (tag!7538 String!48258) (isSeparator!6678 Bool) (transformation!6678 TokenValueInjection!13244)) )
))
(declare-datatypes ((Token!12494 0))(
  ( (Token!12495 (value!210957 TokenValue!6908) (rule!9670 Rule!13156) (size!31741 Int) (originalCharacters!7278 List!42546)) )
))
(declare-fun token!484 () Token!12494)

(declare-fun list!15742 (BalanceConc!25372) List!42546)

(declare-fun charsOf!4494 (Token!12494) BalanceConc!25372)

(assert (=> b!3972811 (= lt!1391979 (list!15742 (charsOf!4494 token!484)))))

(declare-fun b!3972812 () Bool)

(declare-fun e!2461187 () Bool)

(declare-fun tp_is_empty!20137 () Bool)

(declare-fun tp!1211372 () Bool)

(assert (=> b!3972812 (= e!2461187 (and tp_is_empty!20137 tp!1211372))))

(declare-fun b!3972813 () Bool)

(declare-fun e!2461176 () Bool)

(declare-fun tp!1211368 () Bool)

(assert (=> b!3972813 (= e!2461176 (and tp_is_empty!20137 tp!1211368))))

(declare-fun b!3972814 () Bool)

(declare-fun res!1608449 () Bool)

(assert (=> b!3972814 (=> (not res!1608449) (not e!2461194))))

(declare-datatypes ((List!42548 0))(
  ( (Nil!42424) (Cons!42424 (h!47844 Rule!13156) (t!330963 List!42548)) )
))
(declare-fun rules!2999 () List!42548)

(declare-fun isEmpty!25376 (List!42548) Bool)

(assert (=> b!3972814 (= res!1608449 (not (isEmpty!25376 rules!2999)))))

(declare-fun b!3972815 () Bool)

(declare-fun res!1608439 () Bool)

(assert (=> b!3972815 (=> (not res!1608439) (not e!2461194))))

(declare-datatypes ((LexerInterface!6267 0))(
  ( (LexerInterfaceExt!6264 (__x!26034 Int)) (Lexer!6265) )
))
(declare-fun thiss!21717 () LexerInterface!6267)

(declare-fun rulesInvariant!5610 (LexerInterface!6267 List!42548) Bool)

(assert (=> b!3972815 (= res!1608439 (rulesInvariant!5610 thiss!21717 rules!2999))))

(declare-fun b!3972816 () Bool)

(declare-fun e!2461182 () Bool)

(declare-fun tp!1211370 () Bool)

(assert (=> b!3972816 (= e!2461182 (and tp_is_empty!20137 tp!1211370))))

(declare-fun b!3972818 () Bool)

(declare-fun e!2461191 () Bool)

(assert (=> b!3972818 (= e!2461174 e!2461191)))

(declare-fun res!1608444 () Bool)

(assert (=> b!3972818 (=> (not res!1608444) (not e!2461191))))

(declare-fun lt!1391978 () List!42546)

(declare-fun lt!1391999 () List!42546)

(assert (=> b!3972818 (= res!1608444 (= lt!1391978 lt!1391999))))

(declare-fun ++!11080 (List!42546 List!42546) List!42546)

(assert (=> b!3972818 (= lt!1391999 (++!11080 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42546)

(assert (=> b!3972818 (= lt!1391978 (++!11080 lt!1391979 newSuffixResult!27))))

(declare-fun b!3972819 () Bool)

(declare-fun e!2461178 () Bool)

(declare-fun e!2461192 () Bool)

(declare-fun tp!1211375 () Bool)

(assert (=> b!3972819 (= e!2461178 (and e!2461192 tp!1211375))))

(declare-fun b!3972820 () Bool)

(declare-fun e!2461185 () Bool)

(assert (=> b!3972820 (= e!2461191 e!2461185)))

(declare-fun res!1608451 () Bool)

(assert (=> b!3972820 (=> (not res!1608451) (not e!2461185))))

(declare-datatypes ((tuple2!41676 0))(
  ( (tuple2!41677 (_1!23972 Token!12494) (_2!23972 List!42546)) )
))
(declare-datatypes ((Option!9092 0))(
  ( (None!9091) (Some!9091 (v!39439 tuple2!41676)) )
))
(declare-fun lt!1391995 () Option!9092)

(declare-fun maxPrefix!3565 (LexerInterface!6267 List!42548 List!42546) Option!9092)

(assert (=> b!3972820 (= res!1608451 (= (maxPrefix!3565 thiss!21717 rules!2999 lt!1391975) lt!1391995))))

(declare-fun suffixResult!105 () List!42546)

(assert (=> b!3972820 (= lt!1391995 (Some!9091 (tuple2!41677 token!484 suffixResult!105)))))

(assert (=> b!3972820 (= lt!1391975 (++!11080 prefix!494 suffix!1299))))

(declare-fun b!3972821 () Bool)

(declare-fun e!2461186 () Bool)

(declare-fun tp!1211373 () Bool)

(assert (=> b!3972821 (= e!2461186 (and tp_is_empty!20137 tp!1211373))))

(declare-fun e!2461184 () Bool)

(assert (=> b!3972822 (= e!2461184 (and tp!1211367 tp!1211376))))

(declare-fun b!3972823 () Bool)

(declare-fun res!1608450 () Bool)

(assert (=> b!3972823 (=> (not res!1608450) (not e!2461198))))

(declare-fun lt!1391997 () TokenValue!6908)

(assert (=> b!3972823 (= res!1608450 (= (value!210957 token!484) lt!1391997))))

(declare-fun b!3972824 () Bool)

(declare-fun e!2461196 () Bool)

(declare-fun e!2461189 () Bool)

(assert (=> b!3972824 (= e!2461196 e!2461189)))

(declare-fun res!1608447 () Bool)

(assert (=> b!3972824 (=> res!1608447 e!2461189)))

(assert (=> b!3972824 (= res!1608447 (not (isPrefix!3765 lt!1391979 lt!1391975)))))

(assert (=> b!3972824 (isPrefix!3765 prefix!494 lt!1391975)))

(declare-fun lt!1391989 () Unit!61072)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2608 (List!42546 List!42546) Unit!61072)

(assert (=> b!3972824 (= lt!1391989 (lemmaConcatTwoListThenFirstIsPrefix!2608 prefix!494 suffix!1299))))

(declare-fun lt!1391990 () List!42546)

(assert (=> b!3972824 (isPrefix!3765 lt!1391979 lt!1391990)))

(declare-fun lt!1391985 () Unit!61072)

(assert (=> b!3972824 (= lt!1391985 (lemmaConcatTwoListThenFirstIsPrefix!2608 lt!1391979 suffixResult!105))))

(declare-fun tp!1211369 () Bool)

(declare-fun b!3972825 () Bool)

(declare-fun e!2461193 () Bool)

(declare-fun inv!56681 (String!48258) Bool)

(declare-fun inv!56684 (TokenValueInjection!13244) Bool)

(assert (=> b!3972825 (= e!2461193 (and tp!1211369 (inv!56681 (tag!7538 (rule!9670 token!484))) (inv!56684 (transformation!6678 (rule!9670 token!484))) e!2461184))))

(declare-fun b!3972826 () Bool)

(assert (=> b!3972826 (= e!2461198 (and (= (size!31741 token!484) lt!1391984) (= (originalCharacters!7278 token!484) lt!1391979)))))

(declare-fun b!3972827 () Bool)

(declare-fun e!2461177 () Bool)

(assert (=> b!3972827 (= e!2461177 e!2461195)))

(declare-fun res!1608441 () Bool)

(assert (=> b!3972827 (=> res!1608441 e!2461195)))

(declare-fun matchR!5560 (Regex!11583 List!42546) Bool)

(assert (=> b!3972827 (= res!1608441 (not (matchR!5560 (regex!6678 (rule!9670 token!484)) lt!1391979)))))

(assert (=> b!3972827 (isPrefix!3765 lt!1391979 lt!1391999)))

(declare-fun lt!1391977 () Unit!61072)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!598 (List!42546 List!42546 List!42546) Unit!61072)

(assert (=> b!3972827 (= lt!1391977 (lemmaPrefixStaysPrefixWhenAddingToSuffix!598 lt!1391979 prefix!494 newSuffix!27))))

(declare-fun lt!1391981 () Unit!61072)

(assert (=> b!3972827 (= lt!1391981 (lemmaPrefixStaysPrefixWhenAddingToSuffix!598 lt!1391979 prefix!494 suffix!1299))))

(declare-fun b!3972828 () Bool)

(declare-fun e!2461183 () Bool)

(assert (=> b!3972828 (= e!2461189 e!2461183)))

(declare-fun res!1608438 () Bool)

(assert (=> b!3972828 (=> res!1608438 e!2461183)))

(declare-fun lt!1391983 () List!42546)

(assert (=> b!3972828 (= res!1608438 (not (= lt!1391983 prefix!494)))))

(declare-fun lt!1391996 () List!42546)

(assert (=> b!3972828 (= lt!1391983 (++!11080 lt!1391979 lt!1391996))))

(declare-fun getSuffix!2196 (List!42546 List!42546) List!42546)

(assert (=> b!3972828 (= lt!1391996 (getSuffix!2196 prefix!494 lt!1391979))))

(assert (=> b!3972828 (isPrefix!3765 lt!1391979 prefix!494)))

(declare-fun lt!1391974 () Unit!61072)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!343 (List!42546 List!42546 List!42546) Unit!61072)

(assert (=> b!3972828 (= lt!1391974 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!343 prefix!494 lt!1391979 lt!1391975))))

(declare-fun e!2461190 () Bool)

(assert (=> b!3972829 (= e!2461190 (and tp!1211377 tp!1211371))))

(declare-fun b!3972817 () Bool)

(declare-fun e!2461188 () Bool)

(declare-fun tp!1211378 () Bool)

(declare-fun inv!21 (TokenValue!6908) Bool)

(assert (=> b!3972817 (= e!2461188 (and (inv!21 (value!210957 token!484)) e!2461193 tp!1211378))))

(declare-fun res!1608445 () Bool)

(assert (=> start!373868 (=> (not res!1608445) (not e!2461194))))

(get-info :version)

(assert (=> start!373868 (= res!1608445 ((_ is Lexer!6265) thiss!21717))))

(assert (=> start!373868 e!2461194))

(declare-fun e!2461179 () Bool)

(assert (=> start!373868 e!2461179))

(declare-fun inv!56685 (Token!12494) Bool)

(assert (=> start!373868 (and (inv!56685 token!484) e!2461188)))

(assert (=> start!373868 e!2461186))

(assert (=> start!373868 e!2461187))

(assert (=> start!373868 e!2461182))

(assert (=> start!373868 true))

(assert (=> start!373868 e!2461178))

(assert (=> start!373868 e!2461176))

(declare-fun b!3972830 () Bool)

(declare-fun tp!1211374 () Bool)

(assert (=> b!3972830 (= e!2461179 (and tp_is_empty!20137 tp!1211374))))

(declare-fun b!3972831 () Bool)

(assert (=> b!3972831 (= e!2461185 (not e!2461196))))

(declare-fun res!1608443 () Bool)

(assert (=> b!3972831 (=> res!1608443 e!2461196)))

(assert (=> b!3972831 (= res!1608443 (not (= lt!1391990 lt!1391975)))))

(assert (=> b!3972831 (= lt!1391990 (++!11080 lt!1391979 suffixResult!105))))

(declare-fun lt!1391991 () Unit!61072)

(declare-fun lemmaInv!893 (TokenValueInjection!13244) Unit!61072)

(assert (=> b!3972831 (= lt!1391991 (lemmaInv!893 (transformation!6678 (rule!9670 token!484))))))

(declare-fun ruleValid!2610 (LexerInterface!6267 Rule!13156) Bool)

(assert (=> b!3972831 (ruleValid!2610 thiss!21717 (rule!9670 token!484))))

(declare-fun lt!1391998 () Unit!61072)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1684 (LexerInterface!6267 Rule!13156 List!42548) Unit!61072)

(assert (=> b!3972831 (= lt!1391998 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1684 thiss!21717 (rule!9670 token!484) rules!2999))))

(declare-fun b!3972832 () Bool)

(declare-fun res!1608448 () Bool)

(assert (=> b!3972832 (=> (not res!1608448) (not e!2461194))))

(assert (=> b!3972832 (= res!1608448 (isPrefix!3765 newSuffix!27 suffix!1299))))

(declare-fun b!3972833 () Bool)

(declare-fun tp!1211366 () Bool)

(assert (=> b!3972833 (= e!2461192 (and tp!1211366 (inv!56681 (tag!7538 (h!47844 rules!2999))) (inv!56684 (transformation!6678 (h!47844 rules!2999))) e!2461190))))

(declare-fun b!3972834 () Bool)

(declare-fun e!2461175 () Bool)

(assert (=> b!3972834 (= e!2461183 e!2461175)))

(declare-fun res!1608454 () Bool)

(assert (=> b!3972834 (=> res!1608454 e!2461175)))

(declare-fun lt!1391992 () List!42546)

(declare-fun lt!1391988 () List!42546)

(assert (=> b!3972834 (= res!1608454 (or (not (= lt!1391975 lt!1391988)) (not (= lt!1391975 lt!1391992))))))

(assert (=> b!3972834 (= lt!1391988 lt!1391992)))

(declare-fun lt!1391994 () List!42546)

(assert (=> b!3972834 (= lt!1391992 (++!11080 lt!1391979 lt!1391994))))

(assert (=> b!3972834 (= lt!1391988 (++!11080 lt!1391983 suffix!1299))))

(assert (=> b!3972834 (= lt!1391994 (++!11080 lt!1391996 suffix!1299))))

(declare-fun lt!1392000 () Unit!61072)

(declare-fun lemmaConcatAssociativity!2400 (List!42546 List!42546 List!42546) Unit!61072)

(assert (=> b!3972834 (= lt!1392000 (lemmaConcatAssociativity!2400 lt!1391979 lt!1391996 suffix!1299))))

(declare-fun b!3972835 () Bool)

(declare-fun res!1608440 () Bool)

(assert (=> b!3972835 (=> (not res!1608440) (not e!2461198))))

(assert (=> b!3972835 (= res!1608440 (= (size!31741 token!484) (size!31740 (originalCharacters!7278 token!484))))))

(declare-fun b!3972836 () Bool)

(assert (=> b!3972836 (= e!2461175 e!2461177)))

(declare-fun res!1608442 () Bool)

(assert (=> b!3972836 (=> res!1608442 e!2461177)))

(declare-fun lt!1391976 () Option!9092)

(assert (=> b!3972836 (= res!1608442 (not (= lt!1391976 lt!1391995)))))

(assert (=> b!3972836 (= lt!1391976 (Some!9091 (tuple2!41677 (Token!12495 lt!1391997 (rule!9670 token!484) lt!1391984 lt!1391979) suffixResult!105)))))

(declare-fun maxPrefixOneRule!2599 (LexerInterface!6267 Rule!13156 List!42546) Option!9092)

(assert (=> b!3972836 (= lt!1391976 (maxPrefixOneRule!2599 thiss!21717 (rule!9670 token!484) lt!1391975))))

(declare-fun apply!9889 (TokenValueInjection!13244 BalanceConc!25372) TokenValue!6908)

(declare-fun seqFromList!4917 (List!42546) BalanceConc!25372)

(assert (=> b!3972836 (= lt!1391997 (apply!9889 (transformation!6678 (rule!9670 token!484)) (seqFromList!4917 lt!1391979)))))

(declare-fun lt!1391982 () Unit!61072)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1421 (LexerInterface!6267 List!42548 List!42546 List!42546 List!42546 Rule!13156) Unit!61072)

(assert (=> b!3972836 (= lt!1391982 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1421 thiss!21717 rules!2999 lt!1391979 lt!1391975 suffixResult!105 (rule!9670 token!484)))))

(assert (=> b!3972836 (= lt!1391994 suffixResult!105)))

(declare-fun lt!1391980 () Unit!61072)

(declare-fun lemmaSamePrefixThenSameSuffix!1952 (List!42546 List!42546 List!42546 List!42546 List!42546) Unit!61072)

(assert (=> b!3972836 (= lt!1391980 (lemmaSamePrefixThenSameSuffix!1952 lt!1391979 lt!1391994 lt!1391979 suffixResult!105 lt!1391975))))

(assert (=> b!3972836 (isPrefix!3765 lt!1391979 lt!1391992)))

(declare-fun lt!1391993 () Unit!61072)

(assert (=> b!3972836 (= lt!1391993 (lemmaConcatTwoListThenFirstIsPrefix!2608 lt!1391979 lt!1391994))))

(assert (= (and start!373868 res!1608445) b!3972814))

(assert (= (and b!3972814 res!1608449) b!3972815))

(assert (= (and b!3972815 res!1608439) b!3972810))

(assert (= (and b!3972810 res!1608446) b!3972832))

(assert (= (and b!3972832 res!1608448) b!3972811))

(assert (= (and b!3972811 res!1608452) b!3972818))

(assert (= (and b!3972818 res!1608444) b!3972820))

(assert (= (and b!3972820 res!1608451) b!3972831))

(assert (= (and b!3972831 (not res!1608443)) b!3972824))

(assert (= (and b!3972824 (not res!1608447)) b!3972828))

(assert (= (and b!3972828 (not res!1608438)) b!3972834))

(assert (= (and b!3972834 (not res!1608454)) b!3972836))

(assert (= (and b!3972836 (not res!1608442)) b!3972827))

(assert (= (and b!3972827 (not res!1608441)) b!3972809))

(assert (= (and b!3972809 res!1608453) b!3972823))

(assert (= (and b!3972823 res!1608450) b!3972835))

(assert (= (and b!3972835 res!1608440) b!3972826))

(assert (= (and start!373868 ((_ is Cons!42422) prefix!494)) b!3972830))

(assert (= b!3972825 b!3972822))

(assert (= b!3972817 b!3972825))

(assert (= start!373868 b!3972817))

(assert (= (and start!373868 ((_ is Cons!42422) suffixResult!105)) b!3972821))

(assert (= (and start!373868 ((_ is Cons!42422) suffix!1299)) b!3972812))

(assert (= (and start!373868 ((_ is Cons!42422) newSuffix!27)) b!3972816))

(assert (= b!3972833 b!3972829))

(assert (= b!3972819 b!3972833))

(assert (= (and start!373868 ((_ is Cons!42424) rules!2999)) b!3972819))

(assert (= (and start!373868 ((_ is Cons!42422) newSuffixResult!27)) b!3972813))

(declare-fun m!4543311 () Bool)

(assert (=> b!3972824 m!4543311))

(declare-fun m!4543313 () Bool)

(assert (=> b!3972824 m!4543313))

(declare-fun m!4543315 () Bool)

(assert (=> b!3972824 m!4543315))

(declare-fun m!4543317 () Bool)

(assert (=> b!3972824 m!4543317))

(declare-fun m!4543319 () Bool)

(assert (=> b!3972824 m!4543319))

(declare-fun m!4543321 () Bool)

(assert (=> b!3972825 m!4543321))

(declare-fun m!4543323 () Bool)

(assert (=> b!3972825 m!4543323))

(declare-fun m!4543325 () Bool)

(assert (=> b!3972809 m!4543325))

(declare-fun m!4543327 () Bool)

(assert (=> b!3972809 m!4543327))

(declare-fun m!4543329 () Bool)

(assert (=> b!3972809 m!4543329))

(declare-fun m!4543331 () Bool)

(assert (=> b!3972828 m!4543331))

(declare-fun m!4543333 () Bool)

(assert (=> b!3972828 m!4543333))

(declare-fun m!4543335 () Bool)

(assert (=> b!3972828 m!4543335))

(declare-fun m!4543337 () Bool)

(assert (=> b!3972828 m!4543337))

(declare-fun m!4543339 () Bool)

(assert (=> start!373868 m!4543339))

(declare-fun m!4543341 () Bool)

(assert (=> b!3972817 m!4543341))

(declare-fun m!4543343 () Bool)

(assert (=> b!3972814 m!4543343))

(declare-fun m!4543345 () Bool)

(assert (=> b!3972827 m!4543345))

(declare-fun m!4543347 () Bool)

(assert (=> b!3972827 m!4543347))

(declare-fun m!4543349 () Bool)

(assert (=> b!3972827 m!4543349))

(declare-fun m!4543351 () Bool)

(assert (=> b!3972827 m!4543351))

(declare-fun m!4543353 () Bool)

(assert (=> b!3972815 m!4543353))

(declare-fun m!4543355 () Bool)

(assert (=> b!3972836 m!4543355))

(declare-fun m!4543357 () Bool)

(assert (=> b!3972836 m!4543357))

(declare-fun m!4543359 () Bool)

(assert (=> b!3972836 m!4543359))

(declare-fun m!4543361 () Bool)

(assert (=> b!3972836 m!4543361))

(assert (=> b!3972836 m!4543357))

(declare-fun m!4543363 () Bool)

(assert (=> b!3972836 m!4543363))

(declare-fun m!4543365 () Bool)

(assert (=> b!3972836 m!4543365))

(declare-fun m!4543367 () Bool)

(assert (=> b!3972836 m!4543367))

(declare-fun m!4543369 () Bool)

(assert (=> b!3972835 m!4543369))

(declare-fun m!4543371 () Bool)

(assert (=> b!3972832 m!4543371))

(declare-fun m!4543373 () Bool)

(assert (=> b!3972834 m!4543373))

(declare-fun m!4543375 () Bool)

(assert (=> b!3972834 m!4543375))

(declare-fun m!4543377 () Bool)

(assert (=> b!3972834 m!4543377))

(declare-fun m!4543379 () Bool)

(assert (=> b!3972834 m!4543379))

(declare-fun m!4543381 () Bool)

(assert (=> b!3972818 m!4543381))

(declare-fun m!4543383 () Bool)

(assert (=> b!3972818 m!4543383))

(declare-fun m!4543385 () Bool)

(assert (=> b!3972833 m!4543385))

(declare-fun m!4543387 () Bool)

(assert (=> b!3972833 m!4543387))

(declare-fun m!4543389 () Bool)

(assert (=> b!3972831 m!4543389))

(declare-fun m!4543391 () Bool)

(assert (=> b!3972831 m!4543391))

(declare-fun m!4543393 () Bool)

(assert (=> b!3972831 m!4543393))

(declare-fun m!4543395 () Bool)

(assert (=> b!3972831 m!4543395))

(declare-fun m!4543397 () Bool)

(assert (=> b!3972820 m!4543397))

(declare-fun m!4543399 () Bool)

(assert (=> b!3972820 m!4543399))

(declare-fun m!4543401 () Bool)

(assert (=> b!3972811 m!4543401))

(declare-fun m!4543403 () Bool)

(assert (=> b!3972811 m!4543403))

(declare-fun m!4543405 () Bool)

(assert (=> b!3972811 m!4543405))

(assert (=> b!3972811 m!4543405))

(declare-fun m!4543407 () Bool)

(assert (=> b!3972811 m!4543407))

(declare-fun m!4543409 () Bool)

(assert (=> b!3972810 m!4543409))

(declare-fun m!4543411 () Bool)

(assert (=> b!3972810 m!4543411))

(check-sat tp_is_empty!20137 (not b!3972830) (not b!3972819) (not b!3972816) (not b!3972836) (not b!3972827) (not b!3972825) (not b!3972828) b_and!305411 (not b!3972820) (not b!3972833) (not b!3972831) (not b!3972809) (not b!3972814) (not b!3972824) (not start!373868) (not b!3972810) (not b_next!110823) (not b_next!110819) (not b!3972821) (not b!3972818) (not b!3972832) (not b!3972813) (not b!3972835) (not b!3972834) (not b!3972817) (not b_next!110821) (not b!3972811) (not b!3972812) (not b!3972815) b_and!305413 b_and!305407 b_and!305409 (not b_next!110817))
(check-sat b_and!305411 (not b_next!110821) (not b_next!110823) (not b_next!110819) b_and!305413 b_and!305407 b_and!305409 (not b_next!110817))
