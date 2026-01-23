; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49940 () Bool)

(assert start!49940)

(declare-fun b!540842 () Bool)

(declare-fun b_free!14929 () Bool)

(declare-fun b_next!14945 () Bool)

(assert (=> b!540842 (= b_free!14929 (not b_next!14945))))

(declare-fun tp!172262 () Bool)

(declare-fun b_and!52843 () Bool)

(assert (=> b!540842 (= tp!172262 b_and!52843)))

(declare-fun b_free!14931 () Bool)

(declare-fun b_next!14947 () Bool)

(assert (=> b!540842 (= b_free!14931 (not b_next!14947))))

(declare-fun tp!172261 () Bool)

(declare-fun b_and!52845 () Bool)

(assert (=> b!540842 (= tp!172261 b_and!52845)))

(declare-fun b!540854 () Bool)

(declare-fun b_free!14933 () Bool)

(declare-fun b_next!14949 () Bool)

(assert (=> b!540854 (= b_free!14933 (not b_next!14949))))

(declare-fun tp!172265 () Bool)

(declare-fun b_and!52847 () Bool)

(assert (=> b!540854 (= tp!172265 b_and!52847)))

(declare-fun b_free!14935 () Bool)

(declare-fun b_next!14951 () Bool)

(assert (=> b!540854 (= b_free!14935 (not b_next!14951))))

(declare-fun tp!172259 () Bool)

(declare-fun b_and!52849 () Bool)

(assert (=> b!540854 (= tp!172259 b_and!52849)))

(declare-fun b!540825 () Bool)

(declare-fun e!326596 () Bool)

(declare-fun e!326583 () Bool)

(assert (=> b!540825 (= e!326596 e!326583)))

(declare-fun res!229947 () Bool)

(assert (=> b!540825 (=> (not res!229947) (not e!326583))))

(declare-datatypes ((C!3560 0))(
  ( (C!3561 (val!2006 Int)) )
))
(declare-datatypes ((List!5297 0))(
  ( (Nil!5287) (Cons!5287 (h!10688 C!3560) (t!74394 List!5297)) )
))
(declare-fun suffix!1342 () List!5297)

(declare-datatypes ((Regex!1319 0))(
  ( (ElementMatch!1319 (c!102412 C!3560)) (Concat!2328 (regOne!3150 Regex!1319) (regTwo!3150 Regex!1319)) (EmptyExpr!1319) (Star!1319 (reg!1648 Regex!1319)) (EmptyLang!1319) (Union!1319 (regOne!3151 Regex!1319) (regTwo!3151 Regex!1319)) )
))
(declare-datatypes ((List!5298 0))(
  ( (Nil!5288) (Cons!5288 (h!10689 (_ BitVec 16)) (t!74395 List!5298)) )
))
(declare-datatypes ((IArray!3405 0))(
  ( (IArray!3406 (innerList!1760 List!5297)) )
))
(declare-datatypes ((Conc!1702 0))(
  ( (Node!1702 (left!4399 Conc!1702) (right!4729 Conc!1702) (csize!3634 Int) (cheight!1913 Int)) (Leaf!2702 (xs!4339 IArray!3405) (csize!3635 Int)) (Empty!1702) )
))
(declare-datatypes ((BalanceConc!3412 0))(
  ( (BalanceConc!3413 (c!102413 Conc!1702)) )
))
(declare-datatypes ((TokenValue!1009 0))(
  ( (FloatLiteralValue!2018 (text!7508 List!5298)) (TokenValueExt!1008 (__x!3916 Int)) (Broken!5045 (value!32913 List!5298)) (Object!1018) (End!1009) (Def!1009) (Underscore!1009) (Match!1009) (Else!1009) (Error!1009) (Case!1009) (If!1009) (Extends!1009) (Abstract!1009) (Class!1009) (Val!1009) (DelimiterValue!2018 (del!1069 List!5298)) (KeywordValue!1015 (value!32914 List!5298)) (CommentValue!2018 (value!32915 List!5298)) (WhitespaceValue!2018 (value!32916 List!5298)) (IndentationValue!1009 (value!32917 List!5298)) (String!6788) (Int32!1009) (Broken!5046 (value!32918 List!5298)) (Boolean!1010) (Unit!9240) (OperatorValue!1012 (op!1069 List!5298)) (IdentifierValue!2018 (value!32919 List!5298)) (IdentifierValue!2019 (value!32920 List!5298)) (WhitespaceValue!2019 (value!32921 List!5298)) (True!2018) (False!2018) (Broken!5047 (value!32922 List!5298)) (Broken!5048 (value!32923 List!5298)) (True!2019) (RightBrace!1009) (RightBracket!1009) (Colon!1009) (Null!1009) (Comma!1009) (LeftBracket!1009) (False!2019) (LeftBrace!1009) (ImaginaryLiteralValue!1009 (text!7509 List!5298)) (StringLiteralValue!3027 (value!32924 List!5298)) (EOFValue!1009 (value!32925 List!5298)) (IdentValue!1009 (value!32926 List!5298)) (DelimiterValue!2019 (value!32927 List!5298)) (DedentValue!1009 (value!32928 List!5298)) (NewLineValue!1009 (value!32929 List!5298)) (IntegerValue!3027 (value!32930 (_ BitVec 32)) (text!7510 List!5298)) (IntegerValue!3028 (value!32931 Int) (text!7511 List!5298)) (Times!1009) (Or!1009) (Equal!1009) (Minus!1009) (Broken!5049 (value!32932 List!5298)) (And!1009) (Div!1009) (LessEqual!1009) (Mod!1009) (Concat!2329) (Not!1009) (Plus!1009) (SpaceValue!1009 (value!32933 List!5298)) (IntegerValue!3029 (value!32934 Int) (text!7512 List!5298)) (StringLiteralValue!3028 (text!7513 List!5298)) (FloatLiteralValue!2019 (text!7514 List!5298)) (BytesLiteralValue!1009 (value!32935 List!5298)) (CommentValue!2019 (value!32936 List!5298)) (StringLiteralValue!3029 (value!32937 List!5298)) (ErrorTokenValue!1009 (msg!1070 List!5298)) )
))
(declare-datatypes ((String!6789 0))(
  ( (String!6790 (value!32938 String)) )
))
(declare-datatypes ((TokenValueInjection!1786 0))(
  ( (TokenValueInjection!1787 (toValue!1832 Int) (toChars!1691 Int)) )
))
(declare-datatypes ((Rule!1770 0))(
  ( (Rule!1771 (regex!985 Regex!1319) (tag!1247 String!6789) (isSeparator!985 Bool) (transformation!985 TokenValueInjection!1786)) )
))
(declare-datatypes ((Token!1706 0))(
  ( (Token!1707 (value!32939 TokenValue!1009) (rule!1695 Rule!1770) (size!4248 Int) (originalCharacters!1024 List!5297)) )
))
(declare-datatypes ((tuple2!6344 0))(
  ( (tuple2!6345 (_1!3436 Token!1706) (_2!3436 List!5297)) )
))
(declare-fun lt!225110 () tuple2!6344)

(declare-fun token!491 () Token!1706)

(assert (=> b!540825 (= res!229947 (and (= (_1!3436 lt!225110) token!491) (= (_2!3436 lt!225110) suffix!1342)))))

(declare-datatypes ((Option!1335 0))(
  ( (None!1334) (Some!1334 (v!16145 tuple2!6344)) )
))
(declare-fun lt!225125 () Option!1335)

(declare-fun get!1992 (Option!1335) tuple2!6344)

(assert (=> b!540825 (= lt!225110 (get!1992 lt!225125))))

(declare-fun b!540826 () Bool)

(declare-fun res!229945 () Bool)

(declare-fun e!326582 () Bool)

(assert (=> b!540826 (=> res!229945 e!326582)))

(declare-fun lt!225109 () List!5297)

(declare-fun input!2705 () List!5297)

(declare-fun isPrefix!627 (List!5297 List!5297) Bool)

(assert (=> b!540826 (= res!229945 (not (isPrefix!627 lt!225109 input!2705)))))

(declare-fun b!540827 () Bool)

(declare-fun res!229944 () Bool)

(declare-fun e!326584 () Bool)

(assert (=> b!540827 (=> (not res!229944) (not e!326584))))

(declare-datatypes ((LexerInterface!871 0))(
  ( (LexerInterfaceExt!868 (__x!3917 Int)) (Lexer!869) )
))
(declare-fun thiss!22590 () LexerInterface!871)

(declare-datatypes ((List!5299 0))(
  ( (Nil!5289) (Cons!5289 (h!10690 Rule!1770) (t!74396 List!5299)) )
))
(declare-fun rules!3103 () List!5299)

(declare-fun rulesInvariant!834 (LexerInterface!871 List!5299) Bool)

(assert (=> b!540827 (= res!229944 (rulesInvariant!834 thiss!22590 rules!3103))))

(declare-fun b!540828 () Bool)

(declare-datatypes ((Unit!9241 0))(
  ( (Unit!9242) )
))
(declare-fun e!326588 () Unit!9241)

(declare-fun Unit!9243 () Unit!9241)

(assert (=> b!540828 (= e!326588 Unit!9243)))

(assert (=> b!540828 false))

(declare-fun b!540829 () Bool)

(declare-fun res!229938 () Bool)

(assert (=> b!540829 (=> res!229938 e!326582)))

(declare-fun contains!1229 (List!5299 Rule!1770) Bool)

(assert (=> b!540829 (= res!229938 (not (contains!1229 rules!3103 (rule!1695 token!491))))))

(declare-fun b!540830 () Bool)

(declare-fun e!326573 () Bool)

(declare-fun tp_is_empty!2993 () Bool)

(declare-fun tp!172263 () Bool)

(assert (=> b!540830 (= e!326573 (and tp_is_empty!2993 tp!172263))))

(declare-fun lt!225103 () TokenValue!1009)

(declare-fun lt!225106 () tuple2!6344)

(declare-fun b!540831 () Bool)

(declare-fun lt!225121 () Int)

(declare-fun lt!225115 () Option!1335)

(declare-fun e!326574 () Bool)

(declare-fun lt!225105 () List!5297)

(assert (=> b!540831 (= e!326574 (and (= (size!4248 (_1!3436 (v!16145 lt!225115))) lt!225121) (= (originalCharacters!1024 (_1!3436 (v!16145 lt!225115))) lt!225109) (= lt!225106 (tuple2!6345 (Token!1707 lt!225103 (rule!1695 (_1!3436 (v!16145 lt!225115))) lt!225121 lt!225109) lt!225105))))))

(declare-fun b!540832 () Bool)

(declare-fun res!229936 () Bool)

(assert (=> b!540832 (=> res!229936 e!326582)))

(declare-fun ++!1473 (List!5297 List!5297) List!5297)

(assert (=> b!540832 (= res!229936 (not (= (++!1473 lt!225109 lt!225105) input!2705)))))

(declare-fun b!540833 () Bool)

(declare-fun e!326593 () Bool)

(declare-fun tp!172260 () Bool)

(assert (=> b!540833 (= e!326593 (and tp_is_empty!2993 tp!172260))))

(declare-fun b!540834 () Bool)

(declare-fun e!326595 () Bool)

(declare-fun tp!172258 () Bool)

(declare-fun e!326575 () Bool)

(declare-fun inv!6632 (String!6789) Bool)

(declare-fun inv!6635 (TokenValueInjection!1786) Bool)

(assert (=> b!540834 (= e!326575 (and tp!172258 (inv!6632 (tag!1247 (h!10690 rules!3103))) (inv!6635 (transformation!985 (h!10690 rules!3103))) e!326595))))

(declare-fun lt!225112 () TokenValue!1009)

(declare-fun lt!225116 () Int)

(declare-fun b!540835 () Bool)

(declare-fun lt!225126 () List!5297)

(declare-fun lt!225099 () List!5297)

(declare-fun e!326592 () Bool)

(assert (=> b!540835 (= e!326592 (and (= (size!4248 token!491) lt!225116) (= (originalCharacters!1024 token!491) lt!225126) (= (tuple2!6345 token!491 suffix!1342) (tuple2!6345 (Token!1707 lt!225112 (rule!1695 token!491) lt!225116 lt!225126) lt!225099))))))

(declare-fun b!540836 () Bool)

(declare-fun res!229927 () Bool)

(assert (=> b!540836 (=> res!229927 e!326582)))

(declare-fun lt!225119 () List!5297)

(assert (=> b!540836 (= res!229927 (not (= lt!225119 input!2705)))))

(declare-fun b!540837 () Bool)

(declare-fun res!229952 () Bool)

(assert (=> b!540837 (=> res!229952 e!326582)))

(assert (=> b!540837 (= res!229952 (not (isPrefix!627 lt!225126 input!2705)))))

(declare-fun b!540838 () Bool)

(declare-fun res!229943 () Bool)

(declare-fun e!326586 () Bool)

(assert (=> b!540838 (=> res!229943 e!326586)))

(declare-fun matchR!478 (Regex!1319 List!5297) Bool)

(assert (=> b!540838 (= res!229943 (not (matchR!478 (regex!985 (rule!1695 (_1!3436 (v!16145 lt!225115)))) lt!225109)))))

(declare-fun b!540839 () Bool)

(declare-fun res!229940 () Bool)

(assert (=> b!540839 (=> (not res!229940) (not e!326584))))

(declare-fun isEmpty!3820 (List!5297) Bool)

(assert (=> b!540839 (= res!229940 (not (isEmpty!3820 input!2705)))))

(declare-fun b!540840 () Bool)

(declare-fun e!326579 () Bool)

(declare-fun e!326580 () Bool)

(assert (=> b!540840 (= e!326579 (not e!326580))))

(declare-fun res!229933 () Bool)

(assert (=> b!540840 (=> res!229933 e!326580)))

(declare-fun lt!225100 () List!5297)

(assert (=> b!540840 (= res!229933 (not (isPrefix!627 input!2705 lt!225100)))))

(assert (=> b!540840 (isPrefix!627 lt!225126 lt!225100)))

(declare-fun lt!225118 () Unit!9241)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!478 (List!5297 List!5297) Unit!9241)

(assert (=> b!540840 (= lt!225118 (lemmaConcatTwoListThenFirstIsPrefix!478 lt!225126 suffix!1342))))

(declare-fun lt!225124 () List!5297)

(assert (=> b!540840 (isPrefix!627 input!2705 lt!225124)))

(declare-fun lt!225097 () Unit!9241)

(assert (=> b!540840 (= lt!225097 (lemmaConcatTwoListThenFirstIsPrefix!478 input!2705 suffix!1342))))

(assert (=> b!540840 e!326574))

(declare-fun res!229926 () Bool)

(assert (=> b!540840 (=> (not res!229926) (not e!326574))))

(assert (=> b!540840 (= res!229926 (= (value!32939 (_1!3436 (v!16145 lt!225115))) lt!225103))))

(declare-fun lt!225113 () BalanceConc!3412)

(declare-fun apply!1260 (TokenValueInjection!1786 BalanceConc!3412) TokenValue!1009)

(assert (=> b!540840 (= lt!225103 (apply!1260 (transformation!985 (rule!1695 (_1!3436 (v!16145 lt!225115)))) lt!225113))))

(declare-fun seqFromList!1183 (List!5297) BalanceConc!3412)

(assert (=> b!540840 (= lt!225113 (seqFromList!1183 lt!225109))))

(declare-fun lt!225111 () Unit!9241)

(declare-fun lemmaInv!133 (TokenValueInjection!1786) Unit!9241)

(assert (=> b!540840 (= lt!225111 (lemmaInv!133 (transformation!985 (rule!1695 token!491))))))

(declare-fun lt!225098 () Unit!9241)

(assert (=> b!540840 (= lt!225098 (lemmaInv!133 (transformation!985 (rule!1695 (_1!3436 (v!16145 lt!225115))))))))

(declare-fun ruleValid!205 (LexerInterface!871 Rule!1770) Bool)

(assert (=> b!540840 (ruleValid!205 thiss!22590 (rule!1695 token!491))))

(declare-fun lt!225104 () Unit!9241)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!64 (LexerInterface!871 Rule!1770 List!5299) Unit!9241)

(assert (=> b!540840 (= lt!225104 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!64 thiss!22590 (rule!1695 token!491) rules!3103))))

(assert (=> b!540840 (ruleValid!205 thiss!22590 (rule!1695 (_1!3436 (v!16145 lt!225115))))))

(declare-fun lt!225114 () Unit!9241)

(assert (=> b!540840 (= lt!225114 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!64 thiss!22590 (rule!1695 (_1!3436 (v!16145 lt!225115))) rules!3103))))

(assert (=> b!540840 (isPrefix!627 input!2705 input!2705)))

(declare-fun lt!225122 () Unit!9241)

(declare-fun lemmaIsPrefixRefl!367 (List!5297 List!5297) Unit!9241)

(assert (=> b!540840 (= lt!225122 (lemmaIsPrefixRefl!367 input!2705 input!2705))))

(assert (=> b!540840 (= (_2!3436 (v!16145 lt!225115)) lt!225105)))

(declare-fun lt!225101 () Unit!9241)

(declare-fun lemmaSamePrefixThenSameSuffix!354 (List!5297 List!5297 List!5297 List!5297 List!5297) Unit!9241)

(assert (=> b!540840 (= lt!225101 (lemmaSamePrefixThenSameSuffix!354 lt!225109 (_2!3436 (v!16145 lt!225115)) lt!225109 lt!225105 input!2705))))

(declare-fun getSuffix!150 (List!5297 List!5297) List!5297)

(assert (=> b!540840 (= lt!225105 (getSuffix!150 input!2705 lt!225109))))

(assert (=> b!540840 (isPrefix!627 lt!225109 lt!225119)))

(assert (=> b!540840 (= lt!225119 (++!1473 lt!225109 (_2!3436 (v!16145 lt!225115))))))

(declare-fun lt!225123 () Unit!9241)

(assert (=> b!540840 (= lt!225123 (lemmaConcatTwoListThenFirstIsPrefix!478 lt!225109 (_2!3436 (v!16145 lt!225115))))))

(declare-fun lt!225107 () Unit!9241)

(declare-fun lemmaCharactersSize!64 (Token!1706) Unit!9241)

(assert (=> b!540840 (= lt!225107 (lemmaCharactersSize!64 token!491))))

(declare-fun lt!225127 () Unit!9241)

(assert (=> b!540840 (= lt!225127 (lemmaCharactersSize!64 (_1!3436 (v!16145 lt!225115))))))

(declare-fun lt!225108 () Unit!9241)

(assert (=> b!540840 (= lt!225108 e!326588)))

(declare-fun c!102411 () Bool)

(assert (=> b!540840 (= c!102411 (> lt!225121 lt!225116))))

(declare-fun size!4249 (List!5297) Int)

(assert (=> b!540840 (= lt!225116 (size!4249 lt!225126))))

(assert (=> b!540840 (= lt!225121 (size!4249 lt!225109))))

(declare-fun list!2195 (BalanceConc!3412) List!5297)

(declare-fun charsOf!614 (Token!1706) BalanceConc!3412)

(assert (=> b!540840 (= lt!225109 (list!2195 (charsOf!614 (_1!3436 (v!16145 lt!225115)))))))

(assert (=> b!540840 (= lt!225115 (Some!1334 lt!225106))))

(assert (=> b!540840 (= lt!225106 (tuple2!6345 (_1!3436 (v!16145 lt!225115)) (_2!3436 (v!16145 lt!225115))))))

(declare-fun lt!225102 () Unit!9241)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!70 (List!5297 List!5297 List!5297 List!5297) Unit!9241)

(assert (=> b!540840 (= lt!225102 (lemmaConcatSameAndSameSizesThenSameLists!70 lt!225126 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!540841 () Bool)

(declare-fun Unit!9244 () Unit!9241)

(assert (=> b!540841 (= e!326588 Unit!9244)))

(assert (=> b!540842 (= e!326595 (and tp!172262 tp!172261))))

(declare-fun b!540843 () Bool)

(declare-fun tp!172266 () Bool)

(declare-fun e!326585 () Bool)

(declare-fun e!326578 () Bool)

(declare-fun inv!21 (TokenValue!1009) Bool)

(assert (=> b!540843 (= e!326585 (and (inv!21 (value!32939 token!491)) e!326578 tp!172266))))

(declare-fun b!540844 () Bool)

(declare-fun res!229937 () Bool)

(assert (=> b!540844 (=> (not res!229937) (not e!326592))))

(assert (=> b!540844 (= res!229937 (= (size!4248 token!491) (size!4249 (originalCharacters!1024 token!491))))))

(declare-fun b!540845 () Bool)

(declare-fun e!326589 () Bool)

(assert (=> b!540845 (= e!326589 e!326579)))

(declare-fun res!229951 () Bool)

(assert (=> b!540845 (=> (not res!229951) (not e!326579))))

(assert (=> b!540845 (= res!229951 (= lt!225100 lt!225124))))

(assert (=> b!540845 (= lt!225100 (++!1473 lt!225126 suffix!1342))))

(declare-fun b!540846 () Bool)

(declare-fun res!229941 () Bool)

(assert (=> b!540846 (=> (not res!229941) (not e!326574))))

(assert (=> b!540846 (= res!229941 (= (size!4248 (_1!3436 (v!16145 lt!225115))) (size!4249 (originalCharacters!1024 (_1!3436 (v!16145 lt!225115))))))))

(declare-fun b!540847 () Bool)

(declare-fun res!229928 () Bool)

(assert (=> b!540847 (=> res!229928 e!326582)))

(assert (=> b!540847 (= res!229928 (not (= (getSuffix!150 input!2705 input!2705) Nil!5287)))))

(declare-fun b!540848 () Bool)

(declare-fun e!326598 () Bool)

(declare-fun e!326576 () Bool)

(assert (=> b!540848 (= e!326598 e!326576)))

(declare-fun res!229948 () Bool)

(assert (=> b!540848 (=> res!229948 e!326576)))

(assert (=> b!540848 (= res!229948 (>= lt!225121 lt!225116))))

(declare-fun b!540849 () Bool)

(assert (=> b!540849 (= e!326586 (>= (size!4249 input!2705) lt!225121))))

(declare-fun lt!225128 () Unit!9241)

(declare-fun lemmaSemiInverse!114 (TokenValueInjection!1786 BalanceConc!3412) Unit!9241)

(assert (=> b!540849 (= lt!225128 (lemmaSemiInverse!114 (transformation!985 (rule!1695 (_1!3436 (v!16145 lt!225115)))) lt!225113))))

(declare-fun b!540850 () Bool)

(declare-fun e!326590 () Bool)

(assert (=> b!540850 (= e!326590 (= (_1!3436 (get!1992 lt!225115)) (_1!3436 (v!16145 lt!225115))))))

(declare-fun b!540851 () Bool)

(assert (=> b!540851 (= e!326580 e!326582)))

(declare-fun res!229935 () Bool)

(assert (=> b!540851 (=> res!229935 e!326582)))

(assert (=> b!540851 (= res!229935 (>= lt!225121 lt!225116))))

(assert (=> b!540851 e!326598))

(declare-fun res!229939 () Bool)

(assert (=> b!540851 (=> (not res!229939) (not e!326598))))

(declare-fun maxPrefixOneRule!284 (LexerInterface!871 Rule!1770 List!5297) Option!1335)

(assert (=> b!540851 (= res!229939 (= (maxPrefixOneRule!284 thiss!22590 (rule!1695 token!491) lt!225124) (Some!1334 (tuple2!6345 (Token!1707 lt!225112 (rule!1695 token!491) lt!225116 lt!225126) suffix!1342))))))

(declare-fun lt!225120 () Unit!9241)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!36 (LexerInterface!871 List!5299 List!5297 List!5297 List!5297 Rule!1770) Unit!9241)

(assert (=> b!540851 (= lt!225120 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!36 thiss!22590 rules!3103 lt!225126 lt!225124 suffix!1342 (rule!1695 token!491)))))

(assert (=> b!540851 (= (maxPrefixOneRule!284 thiss!22590 (rule!1695 (_1!3436 (v!16145 lt!225115))) input!2705) (Some!1334 (tuple2!6345 (Token!1707 lt!225103 (rule!1695 (_1!3436 (v!16145 lt!225115))) lt!225121 lt!225109) (_2!3436 (v!16145 lt!225115)))))))

(declare-fun lt!225117 () Unit!9241)

(assert (=> b!540851 (= lt!225117 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!36 thiss!22590 rules!3103 lt!225109 input!2705 (_2!3436 (v!16145 lt!225115)) (rule!1695 (_1!3436 (v!16145 lt!225115)))))))

(assert (=> b!540851 e!326592))

(declare-fun res!229932 () Bool)

(assert (=> b!540851 (=> (not res!229932) (not e!326592))))

(assert (=> b!540851 (= res!229932 (= (value!32939 token!491) lt!225112))))

(assert (=> b!540851 (= lt!225112 (apply!1260 (transformation!985 (rule!1695 token!491)) (seqFromList!1183 lt!225126)))))

(assert (=> b!540851 (= suffix!1342 lt!225099)))

(declare-fun lt!225129 () Unit!9241)

(assert (=> b!540851 (= lt!225129 (lemmaSamePrefixThenSameSuffix!354 lt!225126 suffix!1342 lt!225126 lt!225099 lt!225124))))

(assert (=> b!540851 (= lt!225099 (getSuffix!150 lt!225124 lt!225126))))

(declare-fun b!540852 () Bool)

(assert (=> b!540852 (= e!326582 e!326586)))

(declare-fun res!229934 () Bool)

(assert (=> b!540852 (=> res!229934 e!326586)))

(assert (=> b!540852 (= res!229934 (not (contains!1229 rules!3103 (rule!1695 (_1!3436 (v!16145 lt!225115))))))))

(assert (=> b!540852 (= lt!225105 (_2!3436 (v!16145 lt!225115)))))

(declare-fun b!540853 () Bool)

(declare-fun e!326597 () Bool)

(assert (=> b!540853 (= e!326584 e!326597)))

(declare-fun res!229942 () Bool)

(assert (=> b!540853 (=> (not res!229942) (not e!326597))))

(assert (=> b!540853 (= res!229942 (= lt!225126 input!2705))))

(assert (=> b!540853 (= lt!225126 (list!2195 (charsOf!614 token!491)))))

(declare-fun e!326577 () Bool)

(assert (=> b!540854 (= e!326577 (and tp!172265 tp!172259))))

(declare-fun b!540855 () Bool)

(assert (=> b!540855 (= e!326583 e!326589)))

(declare-fun res!229930 () Bool)

(assert (=> b!540855 (=> (not res!229930) (not e!326589))))

(get-info :version)

(assert (=> b!540855 (= res!229930 ((_ is Some!1334) lt!225115))))

(declare-fun maxPrefix!569 (LexerInterface!871 List!5299 List!5297) Option!1335)

(assert (=> b!540855 (= lt!225115 (maxPrefix!569 thiss!22590 rules!3103 input!2705))))

(declare-fun b!540856 () Bool)

(declare-fun e!326594 () Bool)

(declare-fun tp!172257 () Bool)

(assert (=> b!540856 (= e!326594 (and e!326575 tp!172257))))

(declare-fun b!540857 () Bool)

(declare-fun res!229949 () Bool)

(assert (=> b!540857 (=> res!229949 e!326582)))

(assert (=> b!540857 (= res!229949 (not (matchR!478 (regex!985 (rule!1695 token!491)) input!2705)))))

(declare-fun b!540858 () Bool)

(assert (=> b!540858 (= e!326576 e!326590)))

(declare-fun res!229950 () Bool)

(assert (=> b!540858 (=> (not res!229950) (not e!326590))))

(declare-fun isDefined!1147 (Option!1335) Bool)

(assert (=> b!540858 (= res!229950 (isDefined!1147 lt!225115))))

(declare-fun b!540859 () Bool)

(assert (=> b!540859 (= e!326597 e!326596)))

(declare-fun res!229929 () Bool)

(assert (=> b!540859 (=> (not res!229929) (not e!326596))))

(assert (=> b!540859 (= res!229929 (isDefined!1147 lt!225125))))

(assert (=> b!540859 (= lt!225125 (maxPrefix!569 thiss!22590 rules!3103 lt!225124))))

(assert (=> b!540859 (= lt!225124 (++!1473 input!2705 suffix!1342))))

(declare-fun b!540860 () Bool)

(declare-fun res!229946 () Bool)

(assert (=> b!540860 (=> (not res!229946) (not e!326584))))

(declare-fun isEmpty!3821 (List!5299) Bool)

(assert (=> b!540860 (= res!229946 (not (isEmpty!3821 rules!3103)))))

(declare-fun res!229931 () Bool)

(assert (=> start!49940 (=> (not res!229931) (not e!326584))))

(assert (=> start!49940 (= res!229931 ((_ is Lexer!869) thiss!22590))))

(assert (=> start!49940 e!326584))

(assert (=> start!49940 e!326593))

(assert (=> start!49940 e!326594))

(declare-fun inv!6636 (Token!1706) Bool)

(assert (=> start!49940 (and (inv!6636 token!491) e!326585)))

(assert (=> start!49940 true))

(assert (=> start!49940 e!326573))

(declare-fun b!540861 () Bool)

(declare-fun tp!172264 () Bool)

(assert (=> b!540861 (= e!326578 (and tp!172264 (inv!6632 (tag!1247 (rule!1695 token!491))) (inv!6635 (transformation!985 (rule!1695 token!491))) e!326577))))

(assert (= (and start!49940 res!229931) b!540860))

(assert (= (and b!540860 res!229946) b!540827))

(assert (= (and b!540827 res!229944) b!540839))

(assert (= (and b!540839 res!229940) b!540853))

(assert (= (and b!540853 res!229942) b!540859))

(assert (= (and b!540859 res!229929) b!540825))

(assert (= (and b!540825 res!229947) b!540855))

(assert (= (and b!540855 res!229930) b!540845))

(assert (= (and b!540845 res!229951) b!540840))

(assert (= (and b!540840 c!102411) b!540828))

(assert (= (and b!540840 (not c!102411)) b!540841))

(assert (= (and b!540840 res!229926) b!540846))

(assert (= (and b!540846 res!229941) b!540831))

(assert (= (and b!540840 (not res!229933)) b!540851))

(assert (= (and b!540851 res!229932) b!540844))

(assert (= (and b!540844 res!229937) b!540835))

(assert (= (and b!540851 res!229939) b!540848))

(assert (= (and b!540848 (not res!229948)) b!540858))

(assert (= (and b!540858 res!229950) b!540850))

(assert (= (and b!540851 (not res!229935)) b!540829))

(assert (= (and b!540829 (not res!229938)) b!540857))

(assert (= (and b!540857 (not res!229949)) b!540837))

(assert (= (and b!540837 (not res!229952)) b!540847))

(assert (= (and b!540847 (not res!229928)) b!540836))

(assert (= (and b!540836 (not res!229927)) b!540826))

(assert (= (and b!540826 (not res!229945)) b!540832))

(assert (= (and b!540832 (not res!229936)) b!540852))

(assert (= (and b!540852 (not res!229934)) b!540838))

(assert (= (and b!540838 (not res!229943)) b!540849))

(assert (= (and start!49940 ((_ is Cons!5287) suffix!1342)) b!540833))

(assert (= b!540834 b!540842))

(assert (= b!540856 b!540834))

(assert (= (and start!49940 ((_ is Cons!5289) rules!3103)) b!540856))

(assert (= b!540861 b!540854))

(assert (= b!540843 b!540861))

(assert (= start!49940 b!540843))

(assert (= (and start!49940 ((_ is Cons!5287) input!2705)) b!540830))

(declare-fun m!788419 () Bool)

(assert (=> b!540859 m!788419))

(declare-fun m!788421 () Bool)

(assert (=> b!540859 m!788421))

(declare-fun m!788423 () Bool)

(assert (=> b!540859 m!788423))

(declare-fun m!788425 () Bool)

(assert (=> b!540855 m!788425))

(declare-fun m!788427 () Bool)

(assert (=> b!540860 m!788427))

(declare-fun m!788429 () Bool)

(assert (=> b!540826 m!788429))

(declare-fun m!788431 () Bool)

(assert (=> b!540834 m!788431))

(declare-fun m!788433 () Bool)

(assert (=> b!540834 m!788433))

(declare-fun m!788435 () Bool)

(assert (=> b!540851 m!788435))

(declare-fun m!788437 () Bool)

(assert (=> b!540851 m!788437))

(declare-fun m!788439 () Bool)

(assert (=> b!540851 m!788439))

(declare-fun m!788441 () Bool)

(assert (=> b!540851 m!788441))

(declare-fun m!788443 () Bool)

(assert (=> b!540851 m!788443))

(declare-fun m!788445 () Bool)

(assert (=> b!540851 m!788445))

(declare-fun m!788447 () Bool)

(assert (=> b!540851 m!788447))

(declare-fun m!788449 () Bool)

(assert (=> b!540851 m!788449))

(assert (=> b!540851 m!788435))

(declare-fun m!788451 () Bool)

(assert (=> b!540845 m!788451))

(declare-fun m!788453 () Bool)

(assert (=> b!540832 m!788453))

(declare-fun m!788455 () Bool)

(assert (=> b!540844 m!788455))

(declare-fun m!788457 () Bool)

(assert (=> b!540843 m!788457))

(declare-fun m!788459 () Bool)

(assert (=> b!540838 m!788459))

(declare-fun m!788461 () Bool)

(assert (=> b!540825 m!788461))

(declare-fun m!788463 () Bool)

(assert (=> b!540850 m!788463))

(declare-fun m!788465 () Bool)

(assert (=> b!540829 m!788465))

(declare-fun m!788467 () Bool)

(assert (=> b!540839 m!788467))

(declare-fun m!788469 () Bool)

(assert (=> b!540840 m!788469))

(declare-fun m!788471 () Bool)

(assert (=> b!540840 m!788471))

(declare-fun m!788473 () Bool)

(assert (=> b!540840 m!788473))

(declare-fun m!788475 () Bool)

(assert (=> b!540840 m!788475))

(declare-fun m!788477 () Bool)

(assert (=> b!540840 m!788477))

(declare-fun m!788479 () Bool)

(assert (=> b!540840 m!788479))

(declare-fun m!788481 () Bool)

(assert (=> b!540840 m!788481))

(declare-fun m!788483 () Bool)

(assert (=> b!540840 m!788483))

(declare-fun m!788485 () Bool)

(assert (=> b!540840 m!788485))

(declare-fun m!788487 () Bool)

(assert (=> b!540840 m!788487))

(declare-fun m!788489 () Bool)

(assert (=> b!540840 m!788489))

(declare-fun m!788491 () Bool)

(assert (=> b!540840 m!788491))

(declare-fun m!788493 () Bool)

(assert (=> b!540840 m!788493))

(declare-fun m!788495 () Bool)

(assert (=> b!540840 m!788495))

(declare-fun m!788497 () Bool)

(assert (=> b!540840 m!788497))

(declare-fun m!788499 () Bool)

(assert (=> b!540840 m!788499))

(declare-fun m!788501 () Bool)

(assert (=> b!540840 m!788501))

(declare-fun m!788503 () Bool)

(assert (=> b!540840 m!788503))

(declare-fun m!788505 () Bool)

(assert (=> b!540840 m!788505))

(declare-fun m!788507 () Bool)

(assert (=> b!540840 m!788507))

(assert (=> b!540840 m!788503))

(declare-fun m!788509 () Bool)

(assert (=> b!540840 m!788509))

(declare-fun m!788511 () Bool)

(assert (=> b!540840 m!788511))

(declare-fun m!788513 () Bool)

(assert (=> b!540840 m!788513))

(declare-fun m!788515 () Bool)

(assert (=> b!540840 m!788515))

(declare-fun m!788517 () Bool)

(assert (=> b!540840 m!788517))

(declare-fun m!788519 () Bool)

(assert (=> b!540840 m!788519))

(declare-fun m!788521 () Bool)

(assert (=> b!540840 m!788521))

(declare-fun m!788523 () Bool)

(assert (=> b!540858 m!788523))

(declare-fun m!788525 () Bool)

(assert (=> b!540861 m!788525))

(declare-fun m!788527 () Bool)

(assert (=> b!540861 m!788527))

(declare-fun m!788529 () Bool)

(assert (=> b!540852 m!788529))

(declare-fun m!788531 () Bool)

(assert (=> b!540849 m!788531))

(declare-fun m!788533 () Bool)

(assert (=> b!540849 m!788533))

(declare-fun m!788535 () Bool)

(assert (=> b!540857 m!788535))

(declare-fun m!788537 () Bool)

(assert (=> b!540827 m!788537))

(declare-fun m!788539 () Bool)

(assert (=> b!540853 m!788539))

(assert (=> b!540853 m!788539))

(declare-fun m!788541 () Bool)

(assert (=> b!540853 m!788541))

(declare-fun m!788543 () Bool)

(assert (=> b!540837 m!788543))

(declare-fun m!788545 () Bool)

(assert (=> b!540847 m!788545))

(declare-fun m!788547 () Bool)

(assert (=> b!540846 m!788547))

(declare-fun m!788549 () Bool)

(assert (=> start!49940 m!788549))

(check-sat (not b!540855) (not b!540826) (not b!540856) (not b!540839) (not b!540825) b_and!52847 (not b!540833) (not b!540829) (not b!540832) (not b!540843) (not b!540850) (not b!540838) (not b!540859) (not b!540849) (not b!540845) (not b!540858) (not b!540851) (not b!540840) (not b!540844) (not b_next!14951) b_and!52849 (not b!540830) (not b!540837) (not b_next!14947) (not b!540847) b_and!52843 tp_is_empty!2993 (not b!540834) b_and!52845 (not b_next!14949) (not b!540846) (not start!49940) (not b!540827) (not b_next!14945) (not b!540853) (not b!540861) (not b!540860) (not b!540857) (not b!540852))
(check-sat b_and!52847 (not b_next!14945) (not b_next!14951) b_and!52849 (not b_next!14947) b_and!52843 b_and!52845 (not b_next!14949))
