; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403358 () Bool)

(assert start!403358)

(declare-fun b!4219864 () Bool)

(declare-fun b_free!123899 () Bool)

(declare-fun b_next!124603 () Bool)

(assert (=> b!4219864 (= b_free!123899 (not b_next!124603))))

(declare-fun tp!1291063 () Bool)

(declare-fun b_and!332869 () Bool)

(assert (=> b!4219864 (= tp!1291063 b_and!332869)))

(declare-fun b_free!123901 () Bool)

(declare-fun b_next!124605 () Bool)

(assert (=> b!4219864 (= b_free!123901 (not b_next!124605))))

(declare-fun tp!1291074 () Bool)

(declare-fun b_and!332871 () Bool)

(assert (=> b!4219864 (= tp!1291074 b_and!332871)))

(declare-fun b!4219865 () Bool)

(declare-fun b_free!123903 () Bool)

(declare-fun b_next!124607 () Bool)

(assert (=> b!4219865 (= b_free!123903 (not b_next!124607))))

(declare-fun tp!1291067 () Bool)

(declare-fun b_and!332873 () Bool)

(assert (=> b!4219865 (= tp!1291067 b_and!332873)))

(declare-fun b_free!123905 () Bool)

(declare-fun b_next!124609 () Bool)

(assert (=> b!4219865 (= b_free!123905 (not b_next!124609))))

(declare-fun tp!1291065 () Bool)

(declare-fun b_and!332875 () Bool)

(assert (=> b!4219865 (= tp!1291065 b_and!332875)))

(declare-fun b!4219861 () Bool)

(declare-fun b_free!123907 () Bool)

(declare-fun b_next!124611 () Bool)

(assert (=> b!4219861 (= b_free!123907 (not b_next!124611))))

(declare-fun tp!1291073 () Bool)

(declare-fun b_and!332877 () Bool)

(assert (=> b!4219861 (= tp!1291073 b_and!332877)))

(declare-fun b_free!123909 () Bool)

(declare-fun b_next!124613 () Bool)

(assert (=> b!4219861 (= b_free!123909 (not b_next!124613))))

(declare-fun tp!1291068 () Bool)

(declare-fun b_and!332879 () Bool)

(assert (=> b!4219861 (= tp!1291068 b_and!332879)))

(declare-fun b!4219847 () Bool)

(declare-fun b_free!123911 () Bool)

(declare-fun b_next!124615 () Bool)

(assert (=> b!4219847 (= b_free!123911 (not b_next!124615))))

(declare-fun tp!1291055 () Bool)

(declare-fun b_and!332881 () Bool)

(assert (=> b!4219847 (= tp!1291055 b_and!332881)))

(declare-fun b_free!123913 () Bool)

(declare-fun b_next!124617 () Bool)

(assert (=> b!4219847 (= b_free!123913 (not b_next!124617))))

(declare-fun tp!1291056 () Bool)

(declare-fun b_and!332883 () Bool)

(assert (=> b!4219847 (= tp!1291056 b_and!332883)))

(declare-fun b!4219836 () Bool)

(declare-fun res!1734325 () Bool)

(declare-fun e!2619795 () Bool)

(assert (=> b!4219836 (=> res!1734325 e!2619795)))

(declare-datatypes ((List!46545 0))(
  ( (Nil!46421) (Cons!46421 (h!51841 (_ BitVec 16)) (t!348930 List!46545)) )
))
(declare-datatypes ((TokenValue!8014 0))(
  ( (FloatLiteralValue!16028 (text!56543 List!46545)) (TokenValueExt!8013 (__x!28251 Int)) (Broken!40070 (value!242347 List!46545)) (Object!8137) (End!8014) (Def!8014) (Underscore!8014) (Match!8014) (Else!8014) (Error!8014) (Case!8014) (If!8014) (Extends!8014) (Abstract!8014) (Class!8014) (Val!8014) (DelimiterValue!16028 (del!8074 List!46545)) (KeywordValue!8020 (value!242348 List!46545)) (CommentValue!16028 (value!242349 List!46545)) (WhitespaceValue!16028 (value!242350 List!46545)) (IndentationValue!8014 (value!242351 List!46545)) (String!53939) (Int32!8014) (Broken!40071 (value!242352 List!46545)) (Boolean!8015) (Unit!65598) (OperatorValue!8017 (op!8074 List!46545)) (IdentifierValue!16028 (value!242353 List!46545)) (IdentifierValue!16029 (value!242354 List!46545)) (WhitespaceValue!16029 (value!242355 List!46545)) (True!16028) (False!16028) (Broken!40072 (value!242356 List!46545)) (Broken!40073 (value!242357 List!46545)) (True!16029) (RightBrace!8014) (RightBracket!8014) (Colon!8014) (Null!8014) (Comma!8014) (LeftBracket!8014) (False!16029) (LeftBrace!8014) (ImaginaryLiteralValue!8014 (text!56544 List!46545)) (StringLiteralValue!24042 (value!242358 List!46545)) (EOFValue!8014 (value!242359 List!46545)) (IdentValue!8014 (value!242360 List!46545)) (DelimiterValue!16029 (value!242361 List!46545)) (DedentValue!8014 (value!242362 List!46545)) (NewLineValue!8014 (value!242363 List!46545)) (IntegerValue!24042 (value!242364 (_ BitVec 32)) (text!56545 List!46545)) (IntegerValue!24043 (value!242365 Int) (text!56546 List!46545)) (Times!8014) (Or!8014) (Equal!8014) (Minus!8014) (Broken!40074 (value!242366 List!46545)) (And!8014) (Div!8014) (LessEqual!8014) (Mod!8014) (Concat!20703) (Not!8014) (Plus!8014) (SpaceValue!8014 (value!242367 List!46545)) (IntegerValue!24044 (value!242368 Int) (text!56547 List!46545)) (StringLiteralValue!24043 (text!56548 List!46545)) (FloatLiteralValue!16029 (text!56549 List!46545)) (BytesLiteralValue!8014 (value!242369 List!46545)) (CommentValue!16029 (value!242370 List!46545)) (StringLiteralValue!24044 (value!242371 List!46545)) (ErrorTokenValue!8014 (msg!8075 List!46545)) )
))
(declare-datatypes ((C!25572 0))(
  ( (C!25573 (val!14948 Int)) )
))
(declare-datatypes ((List!46546 0))(
  ( (Nil!46422) (Cons!46422 (h!51842 C!25572) (t!348931 List!46546)) )
))
(declare-datatypes ((IArray!27995 0))(
  ( (IArray!27996 (innerList!14055 List!46546)) )
))
(declare-datatypes ((Regex!12689 0))(
  ( (ElementMatch!12689 (c!718206 C!25572)) (Concat!20704 (regOne!25890 Regex!12689) (regTwo!25890 Regex!12689)) (EmptyExpr!12689) (Star!12689 (reg!13018 Regex!12689)) (EmptyLang!12689) (Union!12689 (regOne!25891 Regex!12689) (regTwo!25891 Regex!12689)) )
))
(declare-datatypes ((String!53940 0))(
  ( (String!53941 (value!242372 String)) )
))
(declare-datatypes ((Conc!13995 0))(
  ( (Node!13995 (left!34530 Conc!13995) (right!34860 Conc!13995) (csize!28220 Int) (cheight!14206 Int)) (Leaf!21631 (xs!17301 IArray!27995) (csize!28221 Int)) (Empty!13995) )
))
(declare-datatypes ((BalanceConc!27584 0))(
  ( (BalanceConc!27585 (c!718207 Conc!13995)) )
))
(declare-datatypes ((TokenValueInjection!15456 0))(
  ( (TokenValueInjection!15457 (toValue!10508 Int) (toChars!10367 Int)) )
))
(declare-datatypes ((Rule!15368 0))(
  ( (Rule!15369 (regex!7784 Regex!12689) (tag!8648 String!53940) (isSeparator!7784 Bool) (transformation!7784 TokenValueInjection!15456)) )
))
(declare-datatypes ((List!46547 0))(
  ( (Nil!46423) (Cons!46423 (h!51843 Rule!15368) (t!348932 List!46547)) )
))
(declare-fun rules!3967 () List!46547)

(declare-fun rBis!178 () Rule!15368)

(get-info :version)

(assert (=> b!4219836 (= res!1734325 (or (and ((_ is Cons!46423) rules!3967) ((_ is Nil!46423) (t!348932 rules!3967))) (not ((_ is Cons!46423) rules!3967)) (= (h!51843 rules!3967) rBis!178)))))

(declare-fun b!4219837 () Bool)

(declare-fun e!2619803 () Bool)

(assert (=> b!4219837 (= e!2619803 (not e!2619795))))

(declare-fun res!1734327 () Bool)

(assert (=> b!4219837 (=> res!1734327 e!2619795)))

(declare-datatypes ((Token!14270 0))(
  ( (Token!14271 (value!242373 TokenValue!8014) (rule!10916 Rule!15368) (size!34089 Int) (originalCharacters!8166 List!46546)) )
))
(declare-fun tBis!41 () Token!14270)

(declare-datatypes ((LexerInterface!7379 0))(
  ( (LexerInterfaceExt!7376 (__x!28252 Int)) (Lexer!7377) )
))
(declare-fun thiss!26544 () LexerInterface!7379)

(declare-fun input!3517 () List!46546)

(declare-fun suffixBis!41 () List!46546)

(declare-datatypes ((tuple2!44146 0))(
  ( (tuple2!44147 (_1!25207 Token!14270) (_2!25207 List!46546)) )
))
(declare-datatypes ((Option!9972 0))(
  ( (None!9971) (Some!9971 (v!40859 tuple2!44146)) )
))
(declare-fun maxPrefixOneRule!3374 (LexerInterface!7379 Rule!15368 List!46546) Option!9972)

(assert (=> b!4219837 (= res!1734327 (not (= (maxPrefixOneRule!3374 thiss!26544 rBis!178 input!3517) (Some!9971 (tuple2!44147 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4643 (List!46546 List!46546) Bool)

(assert (=> b!4219837 (isPrefix!4643 input!3517 input!3517)))

(declare-datatypes ((Unit!65599 0))(
  ( (Unit!65600) )
))
(declare-fun lt!1501795 () Unit!65599)

(declare-fun lemmaIsPrefixRefl!3060 (List!46546 List!46546) Unit!65599)

(assert (=> b!4219837 (= lt!1501795 (lemmaIsPrefixRefl!3060 input!3517 input!3517))))

(declare-fun b!4219838 () Bool)

(declare-fun e!2619810 () Bool)

(declare-fun tp_is_empty!22345 () Bool)

(declare-fun tp!1291057 () Bool)

(assert (=> b!4219838 (= e!2619810 (and tp_is_empty!22345 tp!1291057))))

(declare-fun b!4219839 () Bool)

(declare-fun res!1734330 () Bool)

(declare-fun e!2619796 () Bool)

(assert (=> b!4219839 (=> (not res!1734330) (not e!2619796))))

(declare-fun p!3001 () List!46546)

(assert (=> b!4219839 (= res!1734330 (isPrefix!4643 p!3001 input!3517))))

(declare-fun res!1734324 () Bool)

(assert (=> start!403358 (=> (not res!1734324) (not e!2619796))))

(assert (=> start!403358 (= res!1734324 ((_ is Lexer!7377) thiss!26544))))

(assert (=> start!403358 e!2619796))

(declare-fun e!2619790 () Bool)

(declare-fun inv!61079 (Token!14270) Bool)

(assert (=> start!403358 (and (inv!61079 tBis!41) e!2619790)))

(assert (=> start!403358 true))

(declare-fun e!2619800 () Bool)

(assert (=> start!403358 e!2619800))

(declare-fun e!2619797 () Bool)

(assert (=> start!403358 e!2619797))

(declare-fun e!2619807 () Bool)

(assert (=> start!403358 e!2619807))

(declare-fun e!2619793 () Bool)

(assert (=> start!403358 e!2619793))

(declare-fun t!8364 () Token!14270)

(declare-fun e!2619808 () Bool)

(assert (=> start!403358 (and (inv!61079 t!8364) e!2619808)))

(assert (=> start!403358 e!2619810))

(declare-fun e!2619788 () Bool)

(assert (=> start!403358 e!2619788))

(declare-fun e!2619806 () Bool)

(assert (=> start!403358 e!2619806))

(declare-fun b!4219840 () Bool)

(declare-fun tp!1291072 () Bool)

(assert (=> b!4219840 (= e!2619806 (and tp_is_empty!22345 tp!1291072))))

(declare-fun b!4219841 () Bool)

(declare-fun tp!1291061 () Bool)

(assert (=> b!4219841 (= e!2619797 (and tp_is_empty!22345 tp!1291061))))

(declare-fun b!4219842 () Bool)

(declare-fun res!1734322 () Bool)

(assert (=> b!4219842 (=> res!1734322 e!2619795)))

(assert (=> b!4219842 (= res!1734322 (not (= (rule!10916 tBis!41) rBis!178)))))

(declare-fun b!4219843 () Bool)

(declare-fun res!1734334 () Bool)

(assert (=> b!4219843 (=> (not res!1734334) (not e!2619796))))

(declare-fun isEmpty!27503 (List!46547) Bool)

(assert (=> b!4219843 (= res!1734334 (not (isEmpty!27503 rules!3967)))))

(declare-fun b!4219844 () Bool)

(declare-fun res!1734332 () Bool)

(assert (=> b!4219844 (=> (not res!1734332) (not e!2619796))))

(declare-fun rulesInvariant!6590 (LexerInterface!7379 List!46547) Bool)

(assert (=> b!4219844 (= res!1734332 (rulesInvariant!6590 thiss!26544 rules!3967))))

(declare-fun b!4219845 () Bool)

(assert (=> b!4219845 (= e!2619795 (rulesInvariant!6590 thiss!26544 (Cons!46423 (h!51843 rules!3967) (t!348932 rules!3967))))))

(declare-fun b!4219846 () Bool)

(assert (=> b!4219846 (= e!2619796 e!2619803)))

(declare-fun res!1734336 () Bool)

(assert (=> b!4219846 (=> (not res!1734336) (not e!2619803))))

(declare-fun lt!1501796 () Option!9972)

(declare-fun maxPrefix!4419 (LexerInterface!7379 List!46547 List!46546) Option!9972)

(assert (=> b!4219846 (= res!1734336 (= (maxPrefix!4419 thiss!26544 rules!3967 input!3517) lt!1501796))))

(declare-fun suffix!1557 () List!46546)

(assert (=> b!4219846 (= lt!1501796 (Some!9971 (tuple2!44147 t!8364 suffix!1557)))))

(declare-fun e!2619805 () Bool)

(assert (=> b!4219847 (= e!2619805 (and tp!1291055 tp!1291056))))

(declare-fun b!4219848 () Bool)

(declare-fun res!1734335 () Bool)

(assert (=> b!4219848 (=> res!1734335 e!2619795)))

(declare-fun pBis!121 () List!46546)

(declare-fun list!16797 (BalanceConc!27584) List!46546)

(declare-fun charsOf!5207 (Token!14270) BalanceConc!27584)

(assert (=> b!4219848 (= res!1734335 (not (= (list!16797 (charsOf!5207 tBis!41)) pBis!121)))))

(declare-fun b!4219849 () Bool)

(declare-fun e!2619804 () Bool)

(declare-fun tp!1291069 () Bool)

(assert (=> b!4219849 (= e!2619807 (and e!2619804 tp!1291069))))

(declare-fun b!4219850 () Bool)

(declare-fun res!1734333 () Bool)

(assert (=> b!4219850 (=> res!1734333 e!2619795)))

(declare-fun ++!11858 (List!46546 List!46546) List!46546)

(assert (=> b!4219850 (= res!1734333 (not (= (++!11858 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4219851 () Bool)

(declare-fun e!2619809 () Bool)

(declare-fun tp!1291070 () Bool)

(declare-fun inv!21 (TokenValue!8014) Bool)

(assert (=> b!4219851 (= e!2619808 (and (inv!21 (value!242373 t!8364)) e!2619809 tp!1291070))))

(declare-fun b!4219852 () Bool)

(declare-fun tp!1291059 () Bool)

(assert (=> b!4219852 (= e!2619793 (and tp_is_empty!22345 tp!1291059))))

(declare-fun b!4219853 () Bool)

(declare-fun res!1734329 () Bool)

(assert (=> b!4219853 (=> (not res!1734329) (not e!2619796))))

(assert (=> b!4219853 (= res!1734329 (isPrefix!4643 pBis!121 input!3517))))

(declare-fun b!4219854 () Bool)

(declare-fun res!1734331 () Bool)

(assert (=> b!4219854 (=> (not res!1734331) (not e!2619803))))

(declare-fun ruleValid!3496 (LexerInterface!7379 Rule!15368) Bool)

(assert (=> b!4219854 (= res!1734331 (ruleValid!3496 thiss!26544 rBis!178))))

(declare-fun b!4219855 () Bool)

(declare-fun res!1734326 () Bool)

(assert (=> b!4219855 (=> (not res!1734326) (not e!2619796))))

(assert (=> b!4219855 (= res!1734326 (= (++!11858 p!3001 suffix!1557) input!3517))))

(declare-fun b!4219856 () Bool)

(declare-fun res!1734328 () Bool)

(assert (=> b!4219856 (=> (not res!1734328) (not e!2619796))))

(declare-fun contains!9607 (List!46547 Rule!15368) Bool)

(assert (=> b!4219856 (= res!1734328 (contains!9607 rules!3967 rBis!178))))

(declare-fun b!4219857 () Bool)

(declare-fun tp!1291062 () Bool)

(assert (=> b!4219857 (= e!2619788 (and tp_is_empty!22345 tp!1291062))))

(declare-fun tp!1291066 () Bool)

(declare-fun b!4219858 () Bool)

(declare-fun e!2619792 () Bool)

(declare-fun inv!61076 (String!53940) Bool)

(declare-fun inv!61080 (TokenValueInjection!15456) Bool)

(assert (=> b!4219858 (= e!2619792 (and tp!1291066 (inv!61076 (tag!8648 (rule!10916 tBis!41))) (inv!61080 (transformation!7784 (rule!10916 tBis!41))) e!2619805))))

(declare-fun e!2619811 () Bool)

(declare-fun tp!1291071 () Bool)

(declare-fun b!4219859 () Bool)

(assert (=> b!4219859 (= e!2619800 (and tp!1291071 (inv!61076 (tag!8648 rBis!178)) (inv!61080 (transformation!7784 rBis!178)) e!2619811))))

(declare-fun b!4219860 () Bool)

(declare-fun res!1734323 () Bool)

(assert (=> b!4219860 (=> res!1734323 e!2619795)))

(assert (=> b!4219860 (= res!1734323 (= (maxPrefixOneRule!3374 thiss!26544 (h!51843 rules!3967) input!3517) lt!1501796))))

(assert (=> b!4219861 (= e!2619811 (and tp!1291073 tp!1291068))))

(declare-fun b!4219862 () Bool)

(declare-fun e!2619799 () Bool)

(declare-fun tp!1291060 () Bool)

(assert (=> b!4219862 (= e!2619809 (and tp!1291060 (inv!61076 (tag!8648 (rule!10916 t!8364))) (inv!61080 (transformation!7784 (rule!10916 t!8364))) e!2619799))))

(declare-fun b!4219863 () Bool)

(declare-fun e!2619789 () Bool)

(declare-fun tp!1291064 () Bool)

(assert (=> b!4219863 (= e!2619804 (and tp!1291064 (inv!61076 (tag!8648 (h!51843 rules!3967))) (inv!61080 (transformation!7784 (h!51843 rules!3967))) e!2619789))))

(assert (=> b!4219864 (= e!2619789 (and tp!1291063 tp!1291074))))

(assert (=> b!4219865 (= e!2619799 (and tp!1291067 tp!1291065))))

(declare-fun tp!1291058 () Bool)

(declare-fun b!4219866 () Bool)

(assert (=> b!4219866 (= e!2619790 (and (inv!21 (value!242373 tBis!41)) e!2619792 tp!1291058))))

(assert (= (and start!403358 res!1734324) b!4219855))

(assert (= (and b!4219855 res!1734326) b!4219839))

(assert (= (and b!4219839 res!1734330) b!4219853))

(assert (= (and b!4219853 res!1734329) b!4219843))

(assert (= (and b!4219843 res!1734334) b!4219844))

(assert (= (and b!4219844 res!1734332) b!4219856))

(assert (= (and b!4219856 res!1734328) b!4219846))

(assert (= (and b!4219846 res!1734336) b!4219854))

(assert (= (and b!4219854 res!1734331) b!4219837))

(assert (= (and b!4219837 (not res!1734327)) b!4219842))

(assert (= (and b!4219842 (not res!1734322)) b!4219848))

(assert (= (and b!4219848 (not res!1734335)) b!4219850))

(assert (= (and b!4219850 (not res!1734333)) b!4219836))

(assert (= (and b!4219836 (not res!1734325)) b!4219860))

(assert (= (and b!4219860 (not res!1734323)) b!4219845))

(assert (= b!4219858 b!4219847))

(assert (= b!4219866 b!4219858))

(assert (= start!403358 b!4219866))

(assert (= b!4219859 b!4219861))

(assert (= start!403358 b!4219859))

(assert (= (and start!403358 ((_ is Cons!46422) p!3001)) b!4219841))

(assert (= b!4219863 b!4219864))

(assert (= b!4219849 b!4219863))

(assert (= (and start!403358 ((_ is Cons!46423) rules!3967)) b!4219849))

(assert (= (and start!403358 ((_ is Cons!46422) input!3517)) b!4219852))

(assert (= b!4219862 b!4219865))

(assert (= b!4219851 b!4219862))

(assert (= start!403358 b!4219851))

(assert (= (and start!403358 ((_ is Cons!46422) pBis!121)) b!4219838))

(assert (= (and start!403358 ((_ is Cons!46422) suffix!1557)) b!4219857))

(assert (= (and start!403358 ((_ is Cons!46422) suffixBis!41)) b!4219840))

(declare-fun m!4808531 () Bool)

(assert (=> b!4219862 m!4808531))

(declare-fun m!4808533 () Bool)

(assert (=> b!4219862 m!4808533))

(declare-fun m!4808535 () Bool)

(assert (=> b!4219851 m!4808535))

(declare-fun m!4808537 () Bool)

(assert (=> b!4219866 m!4808537))

(declare-fun m!4808539 () Bool)

(assert (=> b!4219853 m!4808539))

(declare-fun m!4808541 () Bool)

(assert (=> b!4219839 m!4808541))

(declare-fun m!4808543 () Bool)

(assert (=> b!4219856 m!4808543))

(declare-fun m!4808545 () Bool)

(assert (=> b!4219843 m!4808545))

(declare-fun m!4808547 () Bool)

(assert (=> b!4219848 m!4808547))

(assert (=> b!4219848 m!4808547))

(declare-fun m!4808549 () Bool)

(assert (=> b!4219848 m!4808549))

(declare-fun m!4808551 () Bool)

(assert (=> b!4219844 m!4808551))

(declare-fun m!4808553 () Bool)

(assert (=> b!4219859 m!4808553))

(declare-fun m!4808555 () Bool)

(assert (=> b!4219859 m!4808555))

(declare-fun m!4808557 () Bool)

(assert (=> b!4219855 m!4808557))

(declare-fun m!4808559 () Bool)

(assert (=> start!403358 m!4808559))

(declare-fun m!4808561 () Bool)

(assert (=> start!403358 m!4808561))

(declare-fun m!4808563 () Bool)

(assert (=> b!4219860 m!4808563))

(declare-fun m!4808565 () Bool)

(assert (=> b!4219850 m!4808565))

(declare-fun m!4808567 () Bool)

(assert (=> b!4219846 m!4808567))

(declare-fun m!4808569 () Bool)

(assert (=> b!4219863 m!4808569))

(declare-fun m!4808571 () Bool)

(assert (=> b!4219863 m!4808571))

(declare-fun m!4808573 () Bool)

(assert (=> b!4219837 m!4808573))

(declare-fun m!4808575 () Bool)

(assert (=> b!4219837 m!4808575))

(declare-fun m!4808577 () Bool)

(assert (=> b!4219837 m!4808577))

(declare-fun m!4808579 () Bool)

(assert (=> b!4219845 m!4808579))

(declare-fun m!4808581 () Bool)

(assert (=> b!4219854 m!4808581))

(declare-fun m!4808583 () Bool)

(assert (=> b!4219858 m!4808583))

(declare-fun m!4808585 () Bool)

(assert (=> b!4219858 m!4808585))

(check-sat (not b!4219845) tp_is_empty!22345 (not b!4219862) b_and!332879 (not b_next!124607) b_and!332883 (not b_next!124617) (not b_next!124603) b_and!332871 (not b!4219852) b_and!332869 (not b_next!124609) (not b!4219846) b_and!332873 (not start!403358) (not b!4219848) (not b!4219837) (not b!4219853) (not b_next!124611) (not b!4219863) b_and!332875 (not b!4219838) (not b!4219843) (not b!4219854) (not b!4219850) (not b!4219857) (not b!4219860) (not b_next!124613) (not b_next!124615) (not b!4219839) (not b!4219841) (not b!4219859) b_and!332881 (not b!4219851) (not b!4219840) (not b_next!124605) b_and!332877 (not b!4219844) (not b!4219849) (not b!4219858) (not b!4219866) (not b!4219855) (not b!4219856))
(check-sat b_and!332873 (not b_next!124611) b_and!332875 b_and!332881 b_and!332879 (not b_next!124605) (not b_next!124607) b_and!332883 b_and!332877 (not b_next!124617) (not b_next!124603) b_and!332871 b_and!332869 (not b_next!124609) (not b_next!124613) (not b_next!124615))
