; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!383008 () Bool)

(assert start!383008)

(declare-fun b!4061144 () Bool)

(declare-fun b_free!112977 () Bool)

(declare-fun b_next!113681 () Bool)

(assert (=> b!4061144 (= b_free!112977 (not b_next!113681))))

(declare-fun tp!1230138 () Bool)

(declare-fun b_and!312259 () Bool)

(assert (=> b!4061144 (= tp!1230138 b_and!312259)))

(declare-fun b_free!112979 () Bool)

(declare-fun b_next!113683 () Bool)

(assert (=> b!4061144 (= b_free!112979 (not b_next!113683))))

(declare-fun tp!1230141 () Bool)

(declare-fun b_and!312261 () Bool)

(assert (=> b!4061144 (= tp!1230141 b_and!312261)))

(declare-fun b!4061141 () Bool)

(declare-fun b_free!112981 () Bool)

(declare-fun b_next!113685 () Bool)

(assert (=> b!4061141 (= b_free!112981 (not b_next!113685))))

(declare-fun tp!1230143 () Bool)

(declare-fun b_and!312263 () Bool)

(assert (=> b!4061141 (= tp!1230143 b_and!312263)))

(declare-fun b_free!112983 () Bool)

(declare-fun b_next!113687 () Bool)

(assert (=> b!4061141 (= b_free!112983 (not b_next!113687))))

(declare-fun tp!1230150 () Bool)

(declare-fun b_and!312265 () Bool)

(assert (=> b!4061141 (= tp!1230150 b_and!312265)))

(declare-fun b!4061125 () Bool)

(declare-fun e!2520123 () Bool)

(declare-fun e!2520143 () Bool)

(assert (=> b!4061125 (= e!2520123 e!2520143)))

(declare-fun res!1656474 () Bool)

(assert (=> b!4061125 (=> res!1656474 e!2520143)))

(declare-datatypes ((C!23924 0))(
  ( (C!23925 (val!14056 Int)) )
))
(declare-datatypes ((List!43511 0))(
  ( (Nil!43387) (Cons!43387 (h!48807 C!23924) (t!336622 List!43511)) )
))
(declare-fun lt!1450972 () List!43511)

(declare-fun lt!1450973 () List!43511)

(assert (=> b!4061125 (= res!1656474 (not (= lt!1450972 lt!1450973)))))

(declare-fun lt!1450942 () List!43511)

(declare-fun lt!1450969 () List!43511)

(declare-fun ++!11366 (List!43511 List!43511) List!43511)

(assert (=> b!4061125 (= lt!1450972 (++!11366 lt!1450942 lt!1450969))))

(declare-fun getSuffix!2468 (List!43511 List!43511) List!43511)

(assert (=> b!4061125 (= lt!1450969 (getSuffix!2468 lt!1450973 lt!1450942))))

(declare-fun res!1656489 () Bool)

(declare-fun e!2520127 () Bool)

(assert (=> start!383008 (=> (not res!1656489) (not e!2520127))))

(declare-datatypes ((LexerInterface!6553 0))(
  ( (LexerInterfaceExt!6550 (__x!26605 Int)) (Lexer!6551) )
))
(declare-fun thiss!21717 () LexerInterface!6553)

(get-info :version)

(assert (=> start!383008 (= res!1656489 ((_ is Lexer!6551) thiss!21717))))

(assert (=> start!383008 e!2520127))

(declare-fun e!2520147 () Bool)

(assert (=> start!383008 e!2520147))

(declare-datatypes ((IArray!26355 0))(
  ( (IArray!26356 (innerList!13235 List!43511)) )
))
(declare-datatypes ((Conc!13175 0))(
  ( (Node!13175 (left!32651 Conc!13175) (right!32981 Conc!13175) (csize!26580 Int) (cheight!13386 Int)) (Leaf!20364 (xs!16481 IArray!26355) (csize!26581 Int)) (Empty!13175) )
))
(declare-datatypes ((BalanceConc!25944 0))(
  ( (BalanceConc!25945 (c!701408 Conc!13175)) )
))
(declare-datatypes ((List!43512 0))(
  ( (Nil!43388) (Cons!43388 (h!48808 (_ BitVec 16)) (t!336623 List!43512)) )
))
(declare-datatypes ((TokenValue!7194 0))(
  ( (FloatLiteralValue!14388 (text!50803 List!43512)) (TokenValueExt!7193 (__x!26606 Int)) (Broken!35970 (value!219082 List!43512)) (Object!7317) (End!7194) (Def!7194) (Underscore!7194) (Match!7194) (Else!7194) (Error!7194) (Case!7194) (If!7194) (Extends!7194) (Abstract!7194) (Class!7194) (Val!7194) (DelimiterValue!14388 (del!7254 List!43512)) (KeywordValue!7200 (value!219083 List!43512)) (CommentValue!14388 (value!219084 List!43512)) (WhitespaceValue!14388 (value!219085 List!43512)) (IndentationValue!7194 (value!219086 List!43512)) (String!49687) (Int32!7194) (Broken!35971 (value!219087 List!43512)) (Boolean!7195) (Unit!62810) (OperatorValue!7197 (op!7254 List!43512)) (IdentifierValue!14388 (value!219088 List!43512)) (IdentifierValue!14389 (value!219089 List!43512)) (WhitespaceValue!14389 (value!219090 List!43512)) (True!14388) (False!14388) (Broken!35972 (value!219091 List!43512)) (Broken!35973 (value!219092 List!43512)) (True!14389) (RightBrace!7194) (RightBracket!7194) (Colon!7194) (Null!7194) (Comma!7194) (LeftBracket!7194) (False!14389) (LeftBrace!7194) (ImaginaryLiteralValue!7194 (text!50804 List!43512)) (StringLiteralValue!21582 (value!219093 List!43512)) (EOFValue!7194 (value!219094 List!43512)) (IdentValue!7194 (value!219095 List!43512)) (DelimiterValue!14389 (value!219096 List!43512)) (DedentValue!7194 (value!219097 List!43512)) (NewLineValue!7194 (value!219098 List!43512)) (IntegerValue!21582 (value!219099 (_ BitVec 32)) (text!50805 List!43512)) (IntegerValue!21583 (value!219100 Int) (text!50806 List!43512)) (Times!7194) (Or!7194) (Equal!7194) (Minus!7194) (Broken!35974 (value!219101 List!43512)) (And!7194) (Div!7194) (LessEqual!7194) (Mod!7194) (Concat!19063) (Not!7194) (Plus!7194) (SpaceValue!7194 (value!219102 List!43512)) (IntegerValue!21584 (value!219103 Int) (text!50807 List!43512)) (StringLiteralValue!21583 (text!50808 List!43512)) (FloatLiteralValue!14389 (text!50809 List!43512)) (BytesLiteralValue!7194 (value!219104 List!43512)) (CommentValue!14389 (value!219105 List!43512)) (StringLiteralValue!21584 (value!219106 List!43512)) (ErrorTokenValue!7194 (msg!7255 List!43512)) )
))
(declare-datatypes ((Regex!11869 0))(
  ( (ElementMatch!11869 (c!701409 C!23924)) (Concat!19064 (regOne!24250 Regex!11869) (regTwo!24250 Regex!11869)) (EmptyExpr!11869) (Star!11869 (reg!12198 Regex!11869)) (EmptyLang!11869) (Union!11869 (regOne!24251 Regex!11869) (regTwo!24251 Regex!11869)) )
))
(declare-datatypes ((String!49688 0))(
  ( (String!49689 (value!219107 String)) )
))
(declare-datatypes ((TokenValueInjection!13816 0))(
  ( (TokenValueInjection!13817 (toValue!9524 Int) (toChars!9383 Int)) )
))
(declare-datatypes ((Rule!13728 0))(
  ( (Rule!13729 (regex!6964 Regex!11869) (tag!7824 String!49688) (isSeparator!6964 Bool) (transformation!6964 TokenValueInjection!13816)) )
))
(declare-datatypes ((Token!13066 0))(
  ( (Token!13067 (value!219108 TokenValue!7194) (rule!10056 Rule!13728) (size!32439 Int) (originalCharacters!7564 List!43511)) )
))
(declare-fun token!484 () Token!13066)

(declare-fun e!2520121 () Bool)

(declare-fun inv!58004 (Token!13066) Bool)

(assert (=> start!383008 (and (inv!58004 token!484) e!2520121)))

(declare-fun e!2520144 () Bool)

(assert (=> start!383008 e!2520144))

(declare-fun e!2520125 () Bool)

(assert (=> start!383008 e!2520125))

(declare-fun e!2520114 () Bool)

(assert (=> start!383008 e!2520114))

(assert (=> start!383008 true))

(declare-fun e!2520117 () Bool)

(assert (=> start!383008 e!2520117))

(declare-fun e!2520141 () Bool)

(assert (=> start!383008 e!2520141))

(declare-fun b!4061126 () Bool)

(declare-fun e!2520128 () Bool)

(assert (=> b!4061126 (= e!2520127 e!2520128)))

(declare-fun res!1656466 () Bool)

(assert (=> b!4061126 (=> (not res!1656466) (not e!2520128))))

(declare-fun lt!1450961 () Int)

(declare-fun lt!1450986 () Int)

(assert (=> b!4061126 (= res!1656466 (>= lt!1450961 lt!1450986))))

(declare-fun lt!1450946 () List!43511)

(declare-fun size!32440 (List!43511) Int)

(assert (=> b!4061126 (= lt!1450986 (size!32440 lt!1450946))))

(declare-fun prefix!494 () List!43511)

(assert (=> b!4061126 (= lt!1450961 (size!32440 prefix!494))))

(declare-fun list!16172 (BalanceConc!25944) List!43511)

(declare-fun charsOf!4780 (Token!13066) BalanceConc!25944)

(assert (=> b!4061126 (= lt!1450946 (list!16172 (charsOf!4780 token!484)))))

(declare-fun b!4061127 () Bool)

(declare-fun e!2520122 () Bool)

(assert (=> b!4061127 (= e!2520143 e!2520122)))

(declare-fun res!1656494 () Bool)

(assert (=> b!4061127 (=> res!1656494 e!2520122)))

(declare-fun lt!1450959 () Int)

(assert (=> b!4061127 (= res!1656494 (not (= lt!1450986 lt!1450959)))))

(declare-datatypes ((Unit!62811 0))(
  ( (Unit!62812) )
))
(declare-fun lt!1450965 () Unit!62811)

(declare-fun e!2520130 () Unit!62811)

(assert (=> b!4061127 (= lt!1450965 e!2520130)))

(declare-fun c!701407 () Bool)

(assert (=> b!4061127 (= c!701407 (< lt!1450959 lt!1450986))))

(declare-fun lt!1450977 () Unit!62811)

(declare-fun e!2520138 () Unit!62811)

(assert (=> b!4061127 (= lt!1450977 e!2520138)))

(declare-fun c!701405 () Bool)

(assert (=> b!4061127 (= c!701405 (> lt!1450959 lt!1450986))))

(declare-datatypes ((tuple2!42446 0))(
  ( (tuple2!42447 (_1!24357 Token!13066) (_2!24357 List!43511)) )
))
(declare-datatypes ((Option!9378 0))(
  ( (None!9377) (Some!9377 (v!39797 tuple2!42446)) )
))
(declare-fun lt!1450988 () Option!9378)

(assert (=> b!4061127 (= (_2!24357 (v!39797 lt!1450988)) lt!1450969)))

(declare-fun lt!1450970 () Unit!62811)

(declare-fun lemmaSamePrefixThenSameSuffix!2212 (List!43511 List!43511 List!43511 List!43511 List!43511) Unit!62811)

(assert (=> b!4061127 (= lt!1450970 (lemmaSamePrefixThenSameSuffix!2212 lt!1450942 (_2!24357 (v!39797 lt!1450988)) lt!1450942 lt!1450969 lt!1450973))))

(declare-fun isPrefix!4051 (List!43511 List!43511) Bool)

(assert (=> b!4061127 (isPrefix!4051 lt!1450942 lt!1450972)))

(declare-fun lt!1450941 () Unit!62811)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2886 (List!43511 List!43511) Unit!62811)

(assert (=> b!4061127 (= lt!1450941 (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450942 lt!1450969))))

(declare-fun b!4061128 () Bool)

(declare-fun e!2520115 () Bool)

(declare-fun e!2520149 () Bool)

(assert (=> b!4061128 (= e!2520115 e!2520149)))

(declare-fun res!1656475 () Bool)

(assert (=> b!4061128 (=> res!1656475 e!2520149)))

(declare-fun lt!1450976 () List!43511)

(declare-fun suffix!1299 () List!43511)

(assert (=> b!4061128 (= res!1656475 (not (= lt!1450976 suffix!1299)))))

(declare-fun newSuffix!27 () List!43511)

(declare-fun lt!1450968 () List!43511)

(assert (=> b!4061128 (= lt!1450976 (++!11366 newSuffix!27 lt!1450968))))

(assert (=> b!4061128 (= lt!1450968 (getSuffix!2468 suffix!1299 newSuffix!27))))

(declare-fun b!4061129 () Bool)

(declare-fun e!2520126 () Bool)

(declare-fun e!2520124 () Bool)

(assert (=> b!4061129 (= e!2520126 e!2520124)))

(declare-fun res!1656479 () Bool)

(assert (=> b!4061129 (=> res!1656479 e!2520124)))

(assert (=> b!4061129 (= res!1656479 (not ((_ is Some!9377) lt!1450988)))))

(declare-datatypes ((List!43513 0))(
  ( (Nil!43389) (Cons!43389 (h!48809 Rule!13728) (t!336624 List!43513)) )
))
(declare-fun rules!2999 () List!43513)

(declare-fun maxPrefix!3851 (LexerInterface!6553 List!43513 List!43511) Option!9378)

(assert (=> b!4061129 (= lt!1450988 (maxPrefix!3851 thiss!21717 rules!2999 lt!1450973))))

(declare-fun suffixResult!105 () List!43511)

(declare-fun lt!1450975 () tuple2!42446)

(declare-fun lt!1450974 () List!43511)

(declare-fun lt!1450958 () Token!13066)

(assert (=> b!4061129 (and (= suffixResult!105 lt!1450974) (= lt!1450975 (tuple2!42447 lt!1450958 lt!1450974)))))

(declare-fun lt!1450945 () Unit!62811)

(declare-fun lt!1450984 () List!43511)

(assert (=> b!4061129 (= lt!1450945 (lemmaSamePrefixThenSameSuffix!2212 lt!1450946 suffixResult!105 lt!1450946 lt!1450974 lt!1450984))))

(declare-fun lt!1450937 () List!43511)

(assert (=> b!4061129 (isPrefix!4051 lt!1450946 lt!1450937)))

(declare-fun lt!1450990 () Unit!62811)

(assert (=> b!4061129 (= lt!1450990 (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450946 lt!1450974))))

(declare-fun b!4061130 () Bool)

(declare-fun tp_is_empty!20709 () Bool)

(declare-fun tp!1230142 () Bool)

(assert (=> b!4061130 (= e!2520144 (and tp_is_empty!20709 tp!1230142))))

(declare-fun b!4061131 () Bool)

(declare-fun e!2520131 () Bool)

(assert (=> b!4061131 (= e!2520131 e!2520123)))

(declare-fun res!1656467 () Bool)

(assert (=> b!4061131 (=> res!1656467 e!2520123)))

(assert (=> b!4061131 (= res!1656467 (not (isPrefix!4051 lt!1450942 lt!1450984)))))

(declare-fun lt!1450979 () List!43511)

(assert (=> b!4061131 (isPrefix!4051 lt!1450942 lt!1450979)))

(declare-fun lt!1450983 () Unit!62811)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!844 (List!43511 List!43511 List!43511) Unit!62811)

(assert (=> b!4061131 (= lt!1450983 (lemmaPrefixStaysPrefixWhenAddingToSuffix!844 lt!1450942 lt!1450973 lt!1450968))))

(declare-fun b!4061132 () Bool)

(declare-fun tp!1230147 () Bool)

(assert (=> b!4061132 (= e!2520125 (and tp_is_empty!20709 tp!1230147))))

(declare-fun b!4061133 () Bool)

(declare-fun res!1656495 () Bool)

(assert (=> b!4061133 (=> res!1656495 e!2520122)))

(assert (=> b!4061133 (= res!1656495 (not (isPrefix!4051 lt!1450942 lt!1450973)))))

(declare-fun tp!1230144 () Bool)

(declare-fun e!2520146 () Bool)

(declare-fun b!4061134 () Bool)

(declare-fun e!2520145 () Bool)

(declare-fun inv!58001 (String!49688) Bool)

(declare-fun inv!58005 (TokenValueInjection!13816) Bool)

(assert (=> b!4061134 (= e!2520146 (and tp!1230144 (inv!58001 (tag!7824 (h!48809 rules!2999))) (inv!58005 (transformation!6964 (h!48809 rules!2999))) e!2520145))))

(declare-fun b!4061135 () Bool)

(declare-fun e!2520116 () Bool)

(declare-fun e!2520135 () Bool)

(assert (=> b!4061135 (= e!2520116 (not e!2520135))))

(declare-fun res!1656471 () Bool)

(assert (=> b!4061135 (=> res!1656471 e!2520135)))

(declare-fun lt!1450967 () List!43511)

(assert (=> b!4061135 (= res!1656471 (not (= lt!1450967 lt!1450984)))))

(assert (=> b!4061135 (= lt!1450967 (++!11366 lt!1450946 suffixResult!105))))

(declare-fun lt!1450960 () Unit!62811)

(declare-fun lemmaInv!1173 (TokenValueInjection!13816) Unit!62811)

(assert (=> b!4061135 (= lt!1450960 (lemmaInv!1173 (transformation!6964 (rule!10056 token!484))))))

(declare-fun ruleValid!2894 (LexerInterface!6553 Rule!13728) Bool)

(assert (=> b!4061135 (ruleValid!2894 thiss!21717 (rule!10056 token!484))))

(declare-fun lt!1450971 () Unit!62811)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1964 (LexerInterface!6553 Rule!13728 List!43513) Unit!62811)

(assert (=> b!4061135 (= lt!1450971 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1964 thiss!21717 (rule!10056 token!484) rules!2999))))

(declare-fun b!4061136 () Bool)

(declare-fun Unit!62813 () Unit!62811)

(assert (=> b!4061136 (= e!2520130 Unit!62813)))

(declare-fun lt!1450933 () Unit!62811)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!490 (LexerInterface!6553 List!43513 Rule!13728 List!43511 List!43511 List!43511 Rule!13728) Unit!62811)

(assert (=> b!4061136 (= lt!1450933 (lemmaMaxPrefixOutputsMaxPrefix!490 thiss!21717 rules!2999 (rule!10056 (_1!24357 (v!39797 lt!1450988))) lt!1450942 lt!1450973 lt!1450946 (rule!10056 token!484)))))

(assert (=> b!4061136 false))

(declare-fun tp!1230146 () Bool)

(declare-fun b!4061137 () Bool)

(declare-fun e!2520139 () Bool)

(declare-fun inv!21 (TokenValue!7194) Bool)

(assert (=> b!4061137 (= e!2520121 (and (inv!21 (value!219108 token!484)) e!2520139 tp!1230146))))

(declare-fun b!4061138 () Bool)

(declare-fun e!2520142 () Bool)

(assert (=> b!4061138 (= e!2520142 false)))

(declare-fun b!4061139 () Bool)

(declare-fun tp!1230145 () Bool)

(assert (=> b!4061139 (= e!2520117 (and e!2520146 tp!1230145))))

(declare-fun b!4061140 () Bool)

(declare-fun e!2520133 () Bool)

(assert (=> b!4061140 (= e!2520128 e!2520133)))

(declare-fun res!1656476 () Bool)

(assert (=> b!4061140 (=> (not res!1656476) (not e!2520133))))

(declare-fun lt!1450956 () List!43511)

(assert (=> b!4061140 (= res!1656476 (= lt!1450956 lt!1450973))))

(assert (=> b!4061140 (= lt!1450973 (++!11366 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43511)

(assert (=> b!4061140 (= lt!1450956 (++!11366 lt!1450946 newSuffixResult!27))))

(declare-fun e!2520137 () Bool)

(assert (=> b!4061141 (= e!2520137 (and tp!1230143 tp!1230150))))

(declare-fun b!4061142 () Bool)

(declare-fun e!2520134 () Bool)

(declare-fun e!2520120 () Bool)

(assert (=> b!4061142 (= e!2520134 e!2520120)))

(declare-fun res!1656477 () Bool)

(assert (=> b!4061142 (=> res!1656477 e!2520120)))

(declare-fun lt!1450954 () List!43511)

(assert (=> b!4061142 (= res!1656477 (not (= lt!1450954 prefix!494)))))

(declare-fun lt!1450963 () List!43511)

(assert (=> b!4061142 (= lt!1450954 (++!11366 lt!1450946 lt!1450963))))

(assert (=> b!4061142 (= lt!1450963 (getSuffix!2468 prefix!494 lt!1450946))))

(assert (=> b!4061142 (isPrefix!4051 lt!1450946 prefix!494)))

(declare-fun lt!1450991 () Unit!62811)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!615 (List!43511 List!43511 List!43511) Unit!62811)

(assert (=> b!4061142 (= lt!1450991 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!615 prefix!494 lt!1450946 lt!1450984))))

(declare-fun b!4061143 () Bool)

(assert (=> b!4061143 (= e!2520124 e!2520115)))

(declare-fun res!1656481 () Bool)

(assert (=> b!4061143 (=> res!1656481 e!2520115)))

(declare-fun lt!1450935 () Option!9378)

(assert (=> b!4061143 (= res!1656481 (not (= lt!1450935 (Some!9377 (v!39797 lt!1450988)))))))

(assert (=> b!4061143 (isPrefix!4051 lt!1450942 (++!11366 lt!1450942 newSuffixResult!27))))

(declare-fun lt!1450938 () Unit!62811)

(assert (=> b!4061143 (= lt!1450938 (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450942 newSuffixResult!27))))

(declare-fun lt!1450951 () List!43511)

(assert (=> b!4061143 (isPrefix!4051 lt!1450942 lt!1450951)))

(assert (=> b!4061143 (= lt!1450951 (++!11366 lt!1450942 (_2!24357 (v!39797 lt!1450988))))))

(declare-fun lt!1450936 () Unit!62811)

(assert (=> b!4061143 (= lt!1450936 (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450942 (_2!24357 (v!39797 lt!1450988))))))

(declare-fun lt!1450995 () TokenValue!7194)

(assert (=> b!4061143 (= lt!1450935 (Some!9377 (tuple2!42447 (Token!13067 lt!1450995 (rule!10056 (_1!24357 (v!39797 lt!1450988))) lt!1450959 lt!1450942) (_2!24357 (v!39797 lt!1450988)))))))

(declare-fun maxPrefixOneRule!2863 (LexerInterface!6553 Rule!13728 List!43511) Option!9378)

(assert (=> b!4061143 (= lt!1450935 (maxPrefixOneRule!2863 thiss!21717 (rule!10056 (_1!24357 (v!39797 lt!1450988))) lt!1450973))))

(assert (=> b!4061143 (= lt!1450959 (size!32440 lt!1450942))))

(declare-fun apply!10153 (TokenValueInjection!13816 BalanceConc!25944) TokenValue!7194)

(declare-fun seqFromList!5181 (List!43511) BalanceConc!25944)

(assert (=> b!4061143 (= lt!1450995 (apply!10153 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) (seqFromList!5181 lt!1450942)))))

(declare-fun lt!1450949 () Unit!62811)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1669 (LexerInterface!6553 List!43513 List!43511 List!43511 List!43511 Rule!13728) Unit!62811)

(assert (=> b!4061143 (= lt!1450949 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1669 thiss!21717 rules!2999 lt!1450942 lt!1450973 (_2!24357 (v!39797 lt!1450988)) (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(assert (=> b!4061143 (= lt!1450942 (list!16172 (charsOf!4780 (_1!24357 (v!39797 lt!1450988)))))))

(declare-fun lt!1450978 () Unit!62811)

(assert (=> b!4061143 (= lt!1450978 (lemmaInv!1173 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))

(assert (=> b!4061143 (ruleValid!2894 thiss!21717 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))

(declare-fun lt!1450964 () Unit!62811)

(assert (=> b!4061143 (= lt!1450964 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1964 thiss!21717 (rule!10056 (_1!24357 (v!39797 lt!1450988))) rules!2999))))

(declare-fun lt!1450955 () Unit!62811)

(declare-fun lemmaCharactersSize!1483 (Token!13066) Unit!62811)

(assert (=> b!4061143 (= lt!1450955 (lemmaCharactersSize!1483 token!484))))

(declare-fun lt!1450985 () Unit!62811)

(assert (=> b!4061143 (= lt!1450985 (lemmaCharactersSize!1483 (_1!24357 (v!39797 lt!1450988))))))

(assert (=> b!4061144 (= e!2520145 (and tp!1230138 tp!1230141))))

(declare-fun b!4061145 () Bool)

(declare-fun e!2520129 () Bool)

(assert (=> b!4061145 (= e!2520122 e!2520129)))

(declare-fun res!1656470 () Bool)

(assert (=> b!4061145 (=> res!1656470 e!2520129)))

(declare-fun lt!1450993 () Int)

(declare-fun lt!1450980 () Int)

(assert (=> b!4061145 (= res!1656470 (<= lt!1450993 lt!1450980))))

(declare-fun lt!1450982 () Unit!62811)

(declare-fun e!2520119 () Unit!62811)

(assert (=> b!4061145 (= lt!1450982 e!2520119)))

(declare-fun c!701406 () Bool)

(assert (=> b!4061145 (= c!701406 (< lt!1450993 lt!1450980))))

(declare-fun getIndex!576 (List!43513 Rule!13728) Int)

(assert (=> b!4061145 (= lt!1450980 (getIndex!576 rules!2999 (rule!10056 token!484)))))

(assert (=> b!4061145 (= lt!1450993 (getIndex!576 rules!2999 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(assert (=> b!4061145 (= (_2!24357 (v!39797 lt!1450988)) newSuffixResult!27)))

(declare-fun lt!1450940 () Unit!62811)

(assert (=> b!4061145 (= lt!1450940 (lemmaSamePrefixThenSameSuffix!2212 lt!1450942 (_2!24357 (v!39797 lt!1450988)) lt!1450946 newSuffixResult!27 lt!1450973))))

(assert (=> b!4061145 (= lt!1450942 lt!1450946)))

(declare-fun lt!1450962 () Unit!62811)

(declare-fun lemmaIsPrefixSameLengthThenSameList!941 (List!43511 List!43511 List!43511) Unit!62811)

(assert (=> b!4061145 (= lt!1450962 (lemmaIsPrefixSameLengthThenSameList!941 lt!1450942 lt!1450946 lt!1450973))))

(declare-fun b!4061146 () Bool)

(declare-fun Unit!62814 () Unit!62811)

(assert (=> b!4061146 (= e!2520119 Unit!62814)))

(declare-fun lt!1450997 () Unit!62811)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!292 (LexerInterface!6553 List!43513 Rule!13728 List!43511 List!43511 Rule!13728) Unit!62811)

(assert (=> b!4061146 (= lt!1450997 (lemmaMaxPrefNoSmallerRuleMatches!292 thiss!21717 rules!2999 (rule!10056 token!484) lt!1450946 lt!1450984 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(declare-fun res!1656493 () Bool)

(declare-fun matchR!5822 (Regex!11869 List!43511) Bool)

(assert (=> b!4061146 (= res!1656493 (not (matchR!5822 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1450946)))))

(declare-fun e!2520136 () Bool)

(assert (=> b!4061146 (=> (not res!1656493) (not e!2520136))))

(assert (=> b!4061146 e!2520136))

(declare-fun b!4061147 () Bool)

(assert (=> b!4061147 (= e!2520136 false)))

(declare-fun b!4061148 () Bool)

(declare-fun e!2520118 () Bool)

(declare-fun e!2520151 () Bool)

(assert (=> b!4061148 (= e!2520118 e!2520151)))

(declare-fun res!1656488 () Bool)

(assert (=> b!4061148 (=> res!1656488 e!2520151)))

(assert (=> b!4061148 (= res!1656488 (not (matchR!5822 (regex!6964 (rule!10056 token!484)) lt!1450946)))))

(assert (=> b!4061148 (isPrefix!4051 lt!1450946 lt!1450973)))

(declare-fun lt!1450957 () Unit!62811)

(assert (=> b!4061148 (= lt!1450957 (lemmaPrefixStaysPrefixWhenAddingToSuffix!844 lt!1450946 prefix!494 newSuffix!27))))

(declare-fun lt!1450943 () Unit!62811)

(assert (=> b!4061148 (= lt!1450943 (lemmaPrefixStaysPrefixWhenAddingToSuffix!844 lt!1450946 prefix!494 suffix!1299))))

(declare-fun b!4061149 () Bool)

(declare-fun contains!8632 (List!43513 Rule!13728) Bool)

(assert (=> b!4061149 (= e!2520129 (contains!8632 rules!2999 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(declare-fun b!4061150 () Bool)

(assert (=> b!4061150 (= e!2520151 e!2520126)))

(declare-fun res!1656469 () Bool)

(assert (=> b!4061150 (=> res!1656469 e!2520126)))

(assert (=> b!4061150 (= res!1656469 (not (= lt!1450937 lt!1450984)))))

(assert (=> b!4061150 (= lt!1450937 (++!11366 lt!1450946 lt!1450974))))

(assert (=> b!4061150 (= lt!1450974 (getSuffix!2468 lt!1450984 lt!1450946))))

(declare-fun e!2520140 () Bool)

(assert (=> b!4061150 e!2520140))

(declare-fun res!1656483 () Bool)

(assert (=> b!4061150 (=> (not res!1656483) (not e!2520140))))

(assert (=> b!4061150 (= res!1656483 (isPrefix!4051 lt!1450984 lt!1450984))))

(declare-fun lt!1450981 () Unit!62811)

(declare-fun lemmaIsPrefixRefl!2618 (List!43511 List!43511) Unit!62811)

(assert (=> b!4061150 (= lt!1450981 (lemmaIsPrefixRefl!2618 lt!1450984 lt!1450984))))

(declare-fun b!4061151 () Bool)

(assert (=> b!4061151 (= e!2520140 (and (= (size!32439 token!484) lt!1450986) (= (originalCharacters!7564 token!484) lt!1450946)))))

(declare-fun b!4061152 () Bool)

(declare-fun e!2520148 () Bool)

(assert (=> b!4061152 (= e!2520148 e!2520118)))

(declare-fun res!1656480 () Bool)

(assert (=> b!4061152 (=> res!1656480 e!2520118)))

(declare-fun lt!1450944 () Option!9378)

(declare-fun lt!1450996 () Option!9378)

(assert (=> b!4061152 (= res!1656480 (not (= lt!1450944 lt!1450996)))))

(assert (=> b!4061152 (= lt!1450944 (Some!9377 (tuple2!42447 lt!1450958 suffixResult!105)))))

(assert (=> b!4061152 (= lt!1450944 (maxPrefixOneRule!2863 thiss!21717 (rule!10056 token!484) lt!1450984))))

(declare-fun lt!1450948 () TokenValue!7194)

(assert (=> b!4061152 (= lt!1450958 (Token!13067 lt!1450948 (rule!10056 token!484) lt!1450986 lt!1450946))))

(assert (=> b!4061152 (= lt!1450948 (apply!10153 (transformation!6964 (rule!10056 token!484)) (seqFromList!5181 lt!1450946)))))

(declare-fun lt!1450939 () Unit!62811)

(assert (=> b!4061152 (= lt!1450939 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1669 thiss!21717 rules!2999 lt!1450946 lt!1450984 suffixResult!105 (rule!10056 token!484)))))

(declare-fun lt!1450994 () List!43511)

(assert (=> b!4061152 (= lt!1450994 suffixResult!105)))

(declare-fun lt!1450953 () Unit!62811)

(assert (=> b!4061152 (= lt!1450953 (lemmaSamePrefixThenSameSuffix!2212 lt!1450946 lt!1450994 lt!1450946 suffixResult!105 lt!1450984))))

(declare-fun lt!1450989 () List!43511)

(assert (=> b!4061152 (isPrefix!4051 lt!1450946 lt!1450989)))

(declare-fun lt!1450987 () Unit!62811)

(assert (=> b!4061152 (= lt!1450987 (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450946 lt!1450994))))

(declare-fun b!4061153 () Bool)

(assert (=> b!4061153 (= e!2520120 e!2520148)))

(declare-fun res!1656472 () Bool)

(assert (=> b!4061153 (=> res!1656472 e!2520148)))

(declare-fun lt!1450947 () List!43511)

(assert (=> b!4061153 (= res!1656472 (or (not (= lt!1450984 lt!1450947)) (not (= lt!1450984 lt!1450989))))))

(assert (=> b!4061153 (= lt!1450947 lt!1450989)))

(assert (=> b!4061153 (= lt!1450989 (++!11366 lt!1450946 lt!1450994))))

(assert (=> b!4061153 (= lt!1450947 (++!11366 lt!1450954 suffix!1299))))

(assert (=> b!4061153 (= lt!1450994 (++!11366 lt!1450963 suffix!1299))))

(declare-fun lt!1450934 () Unit!62811)

(declare-fun lemmaConcatAssociativity!2668 (List!43511 List!43511 List!43511) Unit!62811)

(assert (=> b!4061153 (= lt!1450934 (lemmaConcatAssociativity!2668 lt!1450946 lt!1450963 suffix!1299))))

(declare-fun b!4061154 () Bool)

(declare-fun Unit!62815 () Unit!62811)

(assert (=> b!4061154 (= e!2520138 Unit!62815)))

(declare-fun lt!1450992 () Unit!62811)

(assert (=> b!4061154 (= lt!1450992 (lemmaMaxPrefixOutputsMaxPrefix!490 thiss!21717 rules!2999 (rule!10056 token!484) lt!1450946 lt!1450984 lt!1450942 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(declare-fun res!1656490 () Bool)

(assert (=> b!4061154 (= res!1656490 (not (matchR!5822 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1450942)))))

(assert (=> b!4061154 (=> (not res!1656490) (not e!2520142))))

(assert (=> b!4061154 e!2520142))

(declare-fun b!4061155 () Bool)

(assert (=> b!4061155 (= e!2520149 e!2520131)))

(declare-fun res!1656484 () Bool)

(assert (=> b!4061155 (=> res!1656484 e!2520131)))

(assert (=> b!4061155 (= res!1656484 (not (= lt!1450979 lt!1450984)))))

(assert (=> b!4061155 (= lt!1450979 (++!11366 prefix!494 lt!1450976))))

(assert (=> b!4061155 (= lt!1450979 (++!11366 lt!1450973 lt!1450968))))

(declare-fun lt!1450952 () Unit!62811)

(assert (=> b!4061155 (= lt!1450952 (lemmaConcatAssociativity!2668 prefix!494 newSuffix!27 lt!1450968))))

(declare-fun b!4061156 () Bool)

(declare-fun res!1656465 () Bool)

(assert (=> b!4061156 (=> (not res!1656465) (not e!2520127))))

(declare-fun isEmpty!25889 (List!43513) Bool)

(assert (=> b!4061156 (= res!1656465 (not (isEmpty!25889 rules!2999)))))

(declare-fun b!4061157 () Bool)

(declare-fun res!1656468 () Bool)

(assert (=> b!4061157 (=> (not res!1656468) (not e!2520127))))

(declare-fun rulesInvariant!5896 (LexerInterface!6553 List!43513) Bool)

(assert (=> b!4061157 (= res!1656468 (rulesInvariant!5896 thiss!21717 rules!2999))))

(declare-fun b!4061158 () Bool)

(declare-fun res!1656482 () Bool)

(assert (=> b!4061158 (=> (not res!1656482) (not e!2520127))))

(assert (=> b!4061158 (= res!1656482 (isPrefix!4051 newSuffix!27 suffix!1299))))

(declare-fun b!4061159 () Bool)

(declare-fun tp!1230149 () Bool)

(assert (=> b!4061159 (= e!2520114 (and tp_is_empty!20709 tp!1230149))))

(declare-fun b!4061160 () Bool)

(declare-fun tp!1230148 () Bool)

(assert (=> b!4061160 (= e!2520147 (and tp_is_empty!20709 tp!1230148))))

(declare-fun b!4061161 () Bool)

(declare-fun res!1656478 () Bool)

(assert (=> b!4061161 (=> (not res!1656478) (not e!2520140))))

(assert (=> b!4061161 (= res!1656478 (= (value!219108 token!484) lt!1450948))))

(declare-fun b!4061162 () Bool)

(declare-fun res!1656487 () Bool)

(assert (=> b!4061162 (=> (not res!1656487) (not e!2520140))))

(assert (=> b!4061162 (= res!1656487 (= (size!32439 token!484) (size!32440 (originalCharacters!7564 token!484))))))

(declare-fun b!4061163 () Bool)

(declare-fun Unit!62816 () Unit!62811)

(assert (=> b!4061163 (= e!2520130 Unit!62816)))

(declare-fun b!4061164 () Bool)

(declare-fun res!1656491 () Bool)

(assert (=> b!4061164 (=> res!1656491 e!2520123)))

(assert (=> b!4061164 (= res!1656491 (not (= lt!1450951 lt!1450973)))))

(declare-fun b!4061165 () Bool)

(declare-fun Unit!62817 () Unit!62811)

(assert (=> b!4061165 (= e!2520138 Unit!62817)))

(declare-fun b!4061166 () Bool)

(declare-fun tp!1230140 () Bool)

(assert (=> b!4061166 (= e!2520141 (and tp_is_empty!20709 tp!1230140))))

(declare-fun b!4061167 () Bool)

(declare-fun Unit!62818 () Unit!62811)

(assert (=> b!4061167 (= e!2520119 Unit!62818)))

(declare-fun b!4061168 () Bool)

(assert (=> b!4061168 (= e!2520133 e!2520116)))

(declare-fun res!1656492 () Bool)

(assert (=> b!4061168 (=> (not res!1656492) (not e!2520116))))

(assert (=> b!4061168 (= res!1656492 (= (maxPrefix!3851 thiss!21717 rules!2999 lt!1450984) lt!1450996))))

(assert (=> b!4061168 (= lt!1450996 (Some!9377 lt!1450975))))

(assert (=> b!4061168 (= lt!1450975 (tuple2!42447 token!484 suffixResult!105))))

(assert (=> b!4061168 (= lt!1450984 (++!11366 prefix!494 suffix!1299))))

(declare-fun tp!1230139 () Bool)

(declare-fun b!4061169 () Bool)

(assert (=> b!4061169 (= e!2520139 (and tp!1230139 (inv!58001 (tag!7824 (rule!10056 token!484))) (inv!58005 (transformation!6964 (rule!10056 token!484))) e!2520137))))

(declare-fun b!4061170 () Bool)

(declare-fun res!1656485 () Bool)

(assert (=> b!4061170 (=> res!1656485 e!2520129)))

(assert (=> b!4061170 (= res!1656485 (not (matchR!5822 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1450942)))))

(declare-fun b!4061171 () Bool)

(assert (=> b!4061171 (= e!2520135 e!2520134)))

(declare-fun res!1656473 () Bool)

(assert (=> b!4061171 (=> res!1656473 e!2520134)))

(assert (=> b!4061171 (= res!1656473 (not (isPrefix!4051 lt!1450946 lt!1450984)))))

(assert (=> b!4061171 (isPrefix!4051 prefix!494 lt!1450984)))

(declare-fun lt!1450950 () Unit!62811)

(assert (=> b!4061171 (= lt!1450950 (lemmaConcatTwoListThenFirstIsPrefix!2886 prefix!494 suffix!1299))))

(assert (=> b!4061171 (isPrefix!4051 lt!1450946 lt!1450967)))

(declare-fun lt!1450966 () Unit!62811)

(assert (=> b!4061171 (= lt!1450966 (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450946 suffixResult!105))))

(declare-fun b!4061172 () Bool)

(declare-fun res!1656486 () Bool)

(assert (=> b!4061172 (=> (not res!1656486) (not e!2520127))))

(assert (=> b!4061172 (= res!1656486 (>= (size!32440 suffix!1299) (size!32440 newSuffix!27)))))

(assert (= (and start!383008 res!1656489) b!4061156))

(assert (= (and b!4061156 res!1656465) b!4061157))

(assert (= (and b!4061157 res!1656468) b!4061172))

(assert (= (and b!4061172 res!1656486) b!4061158))

(assert (= (and b!4061158 res!1656482) b!4061126))

(assert (= (and b!4061126 res!1656466) b!4061140))

(assert (= (and b!4061140 res!1656476) b!4061168))

(assert (= (and b!4061168 res!1656492) b!4061135))

(assert (= (and b!4061135 (not res!1656471)) b!4061171))

(assert (= (and b!4061171 (not res!1656473)) b!4061142))

(assert (= (and b!4061142 (not res!1656477)) b!4061153))

(assert (= (and b!4061153 (not res!1656472)) b!4061152))

(assert (= (and b!4061152 (not res!1656480)) b!4061148))

(assert (= (and b!4061148 (not res!1656488)) b!4061150))

(assert (= (and b!4061150 res!1656483) b!4061161))

(assert (= (and b!4061161 res!1656478) b!4061162))

(assert (= (and b!4061162 res!1656487) b!4061151))

(assert (= (and b!4061150 (not res!1656469)) b!4061129))

(assert (= (and b!4061129 (not res!1656479)) b!4061143))

(assert (= (and b!4061143 (not res!1656481)) b!4061128))

(assert (= (and b!4061128 (not res!1656475)) b!4061155))

(assert (= (and b!4061155 (not res!1656484)) b!4061131))

(assert (= (and b!4061131 (not res!1656467)) b!4061164))

(assert (= (and b!4061164 (not res!1656491)) b!4061125))

(assert (= (and b!4061125 (not res!1656474)) b!4061127))

(assert (= (and b!4061127 c!701405) b!4061154))

(assert (= (and b!4061127 (not c!701405)) b!4061165))

(assert (= (and b!4061154 res!1656490) b!4061138))

(assert (= (and b!4061127 c!701407) b!4061136))

(assert (= (and b!4061127 (not c!701407)) b!4061163))

(assert (= (and b!4061127 (not res!1656494)) b!4061133))

(assert (= (and b!4061133 (not res!1656495)) b!4061145))

(assert (= (and b!4061145 c!701406) b!4061146))

(assert (= (and b!4061145 (not c!701406)) b!4061167))

(assert (= (and b!4061146 res!1656493) b!4061147))

(assert (= (and b!4061145 (not res!1656470)) b!4061170))

(assert (= (and b!4061170 (not res!1656485)) b!4061149))

(assert (= (and start!383008 ((_ is Cons!43387) prefix!494)) b!4061160))

(assert (= b!4061169 b!4061141))

(assert (= b!4061137 b!4061169))

(assert (= start!383008 b!4061137))

(assert (= (and start!383008 ((_ is Cons!43387) suffixResult!105)) b!4061130))

(assert (= (and start!383008 ((_ is Cons!43387) suffix!1299)) b!4061132))

(assert (= (and start!383008 ((_ is Cons!43387) newSuffix!27)) b!4061159))

(assert (= b!4061134 b!4061144))

(assert (= b!4061139 b!4061134))

(assert (= (and start!383008 ((_ is Cons!43389) rules!2999)) b!4061139))

(assert (= (and start!383008 ((_ is Cons!43387) newSuffixResult!27)) b!4061166))

(declare-fun m!4666933 () Bool)

(assert (=> b!4061152 m!4666933))

(declare-fun m!4666935 () Bool)

(assert (=> b!4061152 m!4666935))

(declare-fun m!4666937 () Bool)

(assert (=> b!4061152 m!4666937))

(declare-fun m!4666939 () Bool)

(assert (=> b!4061152 m!4666939))

(assert (=> b!4061152 m!4666937))

(declare-fun m!4666941 () Bool)

(assert (=> b!4061152 m!4666941))

(declare-fun m!4666943 () Bool)

(assert (=> b!4061152 m!4666943))

(declare-fun m!4666945 () Bool)

(assert (=> b!4061152 m!4666945))

(declare-fun m!4666947 () Bool)

(assert (=> b!4061172 m!4666947))

(declare-fun m!4666949 () Bool)

(assert (=> b!4061172 m!4666949))

(declare-fun m!4666951 () Bool)

(assert (=> b!4061136 m!4666951))

(declare-fun m!4666953 () Bool)

(assert (=> b!4061137 m!4666953))

(declare-fun m!4666955 () Bool)

(assert (=> b!4061145 m!4666955))

(declare-fun m!4666957 () Bool)

(assert (=> b!4061145 m!4666957))

(declare-fun m!4666959 () Bool)

(assert (=> b!4061145 m!4666959))

(declare-fun m!4666961 () Bool)

(assert (=> b!4061145 m!4666961))

(declare-fun m!4666963 () Bool)

(assert (=> b!4061168 m!4666963))

(declare-fun m!4666965 () Bool)

(assert (=> b!4061168 m!4666965))

(declare-fun m!4666967 () Bool)

(assert (=> b!4061169 m!4666967))

(declare-fun m!4666969 () Bool)

(assert (=> b!4061169 m!4666969))

(declare-fun m!4666971 () Bool)

(assert (=> b!4061157 m!4666971))

(declare-fun m!4666973 () Bool)

(assert (=> b!4061158 m!4666973))

(declare-fun m!4666975 () Bool)

(assert (=> b!4061127 m!4666975))

(declare-fun m!4666977 () Bool)

(assert (=> b!4061127 m!4666977))

(declare-fun m!4666979 () Bool)

(assert (=> b!4061127 m!4666979))

(declare-fun m!4666981 () Bool)

(assert (=> b!4061170 m!4666981))

(declare-fun m!4666983 () Bool)

(assert (=> b!4061150 m!4666983))

(declare-fun m!4666985 () Bool)

(assert (=> b!4061150 m!4666985))

(declare-fun m!4666987 () Bool)

(assert (=> b!4061150 m!4666987))

(declare-fun m!4666989 () Bool)

(assert (=> b!4061150 m!4666989))

(declare-fun m!4666991 () Bool)

(assert (=> b!4061154 m!4666991))

(assert (=> b!4061154 m!4666981))

(declare-fun m!4666993 () Bool)

(assert (=> b!4061148 m!4666993))

(declare-fun m!4666995 () Bool)

(assert (=> b!4061148 m!4666995))

(declare-fun m!4666997 () Bool)

(assert (=> b!4061148 m!4666997))

(declare-fun m!4666999 () Bool)

(assert (=> b!4061148 m!4666999))

(declare-fun m!4667001 () Bool)

(assert (=> b!4061128 m!4667001))

(declare-fun m!4667003 () Bool)

(assert (=> b!4061128 m!4667003))

(declare-fun m!4667005 () Bool)

(assert (=> b!4061153 m!4667005))

(declare-fun m!4667007 () Bool)

(assert (=> b!4061153 m!4667007))

(declare-fun m!4667009 () Bool)

(assert (=> b!4061153 m!4667009))

(declare-fun m!4667011 () Bool)

(assert (=> b!4061153 m!4667011))

(declare-fun m!4667013 () Bool)

(assert (=> b!4061156 m!4667013))

(declare-fun m!4667015 () Bool)

(assert (=> b!4061171 m!4667015))

(declare-fun m!4667017 () Bool)

(assert (=> b!4061171 m!4667017))

(declare-fun m!4667019 () Bool)

(assert (=> b!4061171 m!4667019))

(declare-fun m!4667021 () Bool)

(assert (=> b!4061171 m!4667021))

(declare-fun m!4667023 () Bool)

(assert (=> b!4061171 m!4667023))

(declare-fun m!4667025 () Bool)

(assert (=> b!4061149 m!4667025))

(declare-fun m!4667027 () Bool)

(assert (=> b!4061155 m!4667027))

(declare-fun m!4667029 () Bool)

(assert (=> b!4061155 m!4667029))

(declare-fun m!4667031 () Bool)

(assert (=> b!4061155 m!4667031))

(declare-fun m!4667033 () Bool)

(assert (=> b!4061129 m!4667033))

(declare-fun m!4667035 () Bool)

(assert (=> b!4061129 m!4667035))

(declare-fun m!4667037 () Bool)

(assert (=> b!4061129 m!4667037))

(declare-fun m!4667039 () Bool)

(assert (=> b!4061129 m!4667039))

(declare-fun m!4667041 () Bool)

(assert (=> b!4061125 m!4667041))

(declare-fun m!4667043 () Bool)

(assert (=> b!4061125 m!4667043))

(declare-fun m!4667045 () Bool)

(assert (=> b!4061143 m!4667045))

(declare-fun m!4667047 () Bool)

(assert (=> b!4061143 m!4667047))

(declare-fun m!4667049 () Bool)

(assert (=> b!4061143 m!4667049))

(assert (=> b!4061143 m!4667047))

(declare-fun m!4667051 () Bool)

(assert (=> b!4061143 m!4667051))

(declare-fun m!4667053 () Bool)

(assert (=> b!4061143 m!4667053))

(declare-fun m!4667055 () Bool)

(assert (=> b!4061143 m!4667055))

(declare-fun m!4667057 () Bool)

(assert (=> b!4061143 m!4667057))

(declare-fun m!4667059 () Bool)

(assert (=> b!4061143 m!4667059))

(declare-fun m!4667061 () Bool)

(assert (=> b!4061143 m!4667061))

(declare-fun m!4667063 () Bool)

(assert (=> b!4061143 m!4667063))

(declare-fun m!4667065 () Bool)

(assert (=> b!4061143 m!4667065))

(declare-fun m!4667067 () Bool)

(assert (=> b!4061143 m!4667067))

(declare-fun m!4667069 () Bool)

(assert (=> b!4061143 m!4667069))

(declare-fun m!4667071 () Bool)

(assert (=> b!4061143 m!4667071))

(declare-fun m!4667073 () Bool)

(assert (=> b!4061143 m!4667073))

(declare-fun m!4667075 () Bool)

(assert (=> b!4061143 m!4667075))

(assert (=> b!4061143 m!4667045))

(declare-fun m!4667077 () Bool)

(assert (=> b!4061143 m!4667077))

(assert (=> b!4061143 m!4667073))

(declare-fun m!4667079 () Bool)

(assert (=> b!4061143 m!4667079))

(declare-fun m!4667081 () Bool)

(assert (=> b!4061126 m!4667081))

(declare-fun m!4667083 () Bool)

(assert (=> b!4061126 m!4667083))

(declare-fun m!4667085 () Bool)

(assert (=> b!4061126 m!4667085))

(assert (=> b!4061126 m!4667085))

(declare-fun m!4667087 () Bool)

(assert (=> b!4061126 m!4667087))

(declare-fun m!4667089 () Bool)

(assert (=> b!4061146 m!4667089))

(declare-fun m!4667091 () Bool)

(assert (=> b!4061146 m!4667091))

(declare-fun m!4667093 () Bool)

(assert (=> b!4061134 m!4667093))

(declare-fun m!4667095 () Bool)

(assert (=> b!4061134 m!4667095))

(declare-fun m!4667097 () Bool)

(assert (=> b!4061133 m!4667097))

(declare-fun m!4667099 () Bool)

(assert (=> b!4061140 m!4667099))

(declare-fun m!4667101 () Bool)

(assert (=> b!4061140 m!4667101))

(declare-fun m!4667103 () Bool)

(assert (=> b!4061162 m!4667103))

(declare-fun m!4667105 () Bool)

(assert (=> b!4061135 m!4667105))

(declare-fun m!4667107 () Bool)

(assert (=> b!4061135 m!4667107))

(declare-fun m!4667109 () Bool)

(assert (=> b!4061135 m!4667109))

(declare-fun m!4667111 () Bool)

(assert (=> b!4061135 m!4667111))

(declare-fun m!4667113 () Bool)

(assert (=> b!4061131 m!4667113))

(declare-fun m!4667115 () Bool)

(assert (=> b!4061131 m!4667115))

(declare-fun m!4667117 () Bool)

(assert (=> b!4061131 m!4667117))

(declare-fun m!4667119 () Bool)

(assert (=> start!383008 m!4667119))

(declare-fun m!4667121 () Bool)

(assert (=> b!4061142 m!4667121))

(declare-fun m!4667123 () Bool)

(assert (=> b!4061142 m!4667123))

(declare-fun m!4667125 () Bool)

(assert (=> b!4061142 m!4667125))

(declare-fun m!4667127 () Bool)

(assert (=> b!4061142 m!4667127))

(check-sat (not b!4061130) (not b!4061149) (not b!4061131) (not b!4061129) (not b!4061159) (not b!4061137) (not b_next!113681) (not b!4061135) (not b!4061169) (not b!4061143) (not b!4061145) (not b_next!113685) b_and!312261 (not b!4061162) b_and!312259 (not b!4061146) (not b!4061171) (not b!4061157) (not b!4061158) (not b_next!113683) tp_is_empty!20709 (not b!4061154) (not b!4061139) (not b!4061127) (not b!4061140) (not start!383008) (not b!4061155) (not b!4061153) (not b!4061152) b_and!312263 b_and!312265 (not b_next!113687) (not b!4061126) (not b!4061156) (not b!4061125) (not b!4061150) (not b!4061133) (not b!4061160) (not b!4061166) (not b!4061136) (not b!4061148) (not b!4061132) (not b!4061168) (not b!4061128) (not b!4061170) (not b!4061172) (not b!4061142) (not b!4061134))
(check-sat b_and!312259 (not b_next!113683) b_and!312263 (not b_next!113681) (not b_next!113685) b_and!312261 b_and!312265 (not b_next!113687))
(get-model)

(declare-fun b!4061183 () Bool)

(declare-fun e!2520159 () Int)

(assert (=> b!4061183 (= e!2520159 (+ 1 (getIndex!576 (t!336624 rules!2999) (rule!10056 token!484))))))

(declare-fun b!4061184 () Bool)

(assert (=> b!4061184 (= e!2520159 (- 1))))

(declare-fun d!1207157 () Bool)

(declare-fun lt!1451000 () Int)

(assert (=> d!1207157 (>= lt!1451000 0)))

(declare-fun e!2520158 () Int)

(assert (=> d!1207157 (= lt!1451000 e!2520158)))

(declare-fun c!701414 () Bool)

(assert (=> d!1207157 (= c!701414 (and ((_ is Cons!43389) rules!2999) (= (h!48809 rules!2999) (rule!10056 token!484))))))

(assert (=> d!1207157 (contains!8632 rules!2999 (rule!10056 token!484))))

(assert (=> d!1207157 (= (getIndex!576 rules!2999 (rule!10056 token!484)) lt!1451000)))

(declare-fun b!4061181 () Bool)

(assert (=> b!4061181 (= e!2520158 0)))

(declare-fun b!4061182 () Bool)

(assert (=> b!4061182 (= e!2520158 e!2520159)))

(declare-fun c!701415 () Bool)

(assert (=> b!4061182 (= c!701415 (and ((_ is Cons!43389) rules!2999) (not (= (h!48809 rules!2999) (rule!10056 token!484)))))))

(assert (= (and d!1207157 c!701414) b!4061181))

(assert (= (and d!1207157 (not c!701414)) b!4061182))

(assert (= (and b!4061182 c!701415) b!4061183))

(assert (= (and b!4061182 (not c!701415)) b!4061184))

(declare-fun m!4667129 () Bool)

(assert (=> b!4061183 m!4667129))

(declare-fun m!4667131 () Bool)

(assert (=> d!1207157 m!4667131))

(assert (=> b!4061145 d!1207157))

(declare-fun b!4061187 () Bool)

(declare-fun e!2520161 () Int)

(assert (=> b!4061187 (= e!2520161 (+ 1 (getIndex!576 (t!336624 rules!2999) (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))

(declare-fun b!4061188 () Bool)

(assert (=> b!4061188 (= e!2520161 (- 1))))

(declare-fun d!1207159 () Bool)

(declare-fun lt!1451001 () Int)

(assert (=> d!1207159 (>= lt!1451001 0)))

(declare-fun e!2520160 () Int)

(assert (=> d!1207159 (= lt!1451001 e!2520160)))

(declare-fun c!701416 () Bool)

(assert (=> d!1207159 (= c!701416 (and ((_ is Cons!43389) rules!2999) (= (h!48809 rules!2999) (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))

(assert (=> d!1207159 (contains!8632 rules!2999 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))

(assert (=> d!1207159 (= (getIndex!576 rules!2999 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1451001)))

(declare-fun b!4061185 () Bool)

(assert (=> b!4061185 (= e!2520160 0)))

(declare-fun b!4061186 () Bool)

(assert (=> b!4061186 (= e!2520160 e!2520161)))

(declare-fun c!701417 () Bool)

(assert (=> b!4061186 (= c!701417 (and ((_ is Cons!43389) rules!2999) (not (= (h!48809 rules!2999) (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))))

(assert (= (and d!1207159 c!701416) b!4061185))

(assert (= (and d!1207159 (not c!701416)) b!4061186))

(assert (= (and b!4061186 c!701417) b!4061187))

(assert (= (and b!4061186 (not c!701417)) b!4061188))

(declare-fun m!4667133 () Bool)

(assert (=> b!4061187 m!4667133))

(assert (=> d!1207159 m!4667025))

(assert (=> b!4061145 d!1207159))

(declare-fun d!1207161 () Bool)

(assert (=> d!1207161 (= (_2!24357 (v!39797 lt!1450988)) newSuffixResult!27)))

(declare-fun lt!1451004 () Unit!62811)

(declare-fun choose!24677 (List!43511 List!43511 List!43511 List!43511 List!43511) Unit!62811)

(assert (=> d!1207161 (= lt!1451004 (choose!24677 lt!1450942 (_2!24357 (v!39797 lt!1450988)) lt!1450946 newSuffixResult!27 lt!1450973))))

(assert (=> d!1207161 (isPrefix!4051 lt!1450942 lt!1450973)))

(assert (=> d!1207161 (= (lemmaSamePrefixThenSameSuffix!2212 lt!1450942 (_2!24357 (v!39797 lt!1450988)) lt!1450946 newSuffixResult!27 lt!1450973) lt!1451004)))

(declare-fun bs!592111 () Bool)

(assert (= bs!592111 d!1207161))

(declare-fun m!4667135 () Bool)

(assert (=> bs!592111 m!4667135))

(assert (=> bs!592111 m!4667097))

(assert (=> b!4061145 d!1207161))

(declare-fun d!1207163 () Bool)

(assert (=> d!1207163 (= lt!1450942 lt!1450946)))

(declare-fun lt!1451007 () Unit!62811)

(declare-fun choose!24678 (List!43511 List!43511 List!43511) Unit!62811)

(assert (=> d!1207163 (= lt!1451007 (choose!24678 lt!1450942 lt!1450946 lt!1450973))))

(assert (=> d!1207163 (isPrefix!4051 lt!1450942 lt!1450973)))

(assert (=> d!1207163 (= (lemmaIsPrefixSameLengthThenSameList!941 lt!1450942 lt!1450946 lt!1450973) lt!1451007)))

(declare-fun bs!592112 () Bool)

(assert (= bs!592112 d!1207163))

(declare-fun m!4667137 () Bool)

(assert (=> bs!592112 m!4667137))

(assert (=> bs!592112 m!4667097))

(assert (=> b!4061145 d!1207163))

(declare-fun e!2520166 () Bool)

(declare-fun lt!1451010 () List!43511)

(declare-fun b!4061200 () Bool)

(assert (=> b!4061200 (= e!2520166 (or (not (= lt!1450969 Nil!43387)) (= lt!1451010 lt!1450942)))))

(declare-fun d!1207165 () Bool)

(assert (=> d!1207165 e!2520166))

(declare-fun res!1656505 () Bool)

(assert (=> d!1207165 (=> (not res!1656505) (not e!2520166))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6617 (List!43511) (InoxSet C!23924))

(assert (=> d!1207165 (= res!1656505 (= (content!6617 lt!1451010) ((_ map or) (content!6617 lt!1450942) (content!6617 lt!1450969))))))

(declare-fun e!2520167 () List!43511)

(assert (=> d!1207165 (= lt!1451010 e!2520167)))

(declare-fun c!701420 () Bool)

(assert (=> d!1207165 (= c!701420 ((_ is Nil!43387) lt!1450942))))

(assert (=> d!1207165 (= (++!11366 lt!1450942 lt!1450969) lt!1451010)))

(declare-fun b!4061197 () Bool)

(assert (=> b!4061197 (= e!2520167 lt!1450969)))

(declare-fun b!4061198 () Bool)

(assert (=> b!4061198 (= e!2520167 (Cons!43387 (h!48807 lt!1450942) (++!11366 (t!336622 lt!1450942) lt!1450969)))))

(declare-fun b!4061199 () Bool)

(declare-fun res!1656504 () Bool)

(assert (=> b!4061199 (=> (not res!1656504) (not e!2520166))))

(assert (=> b!4061199 (= res!1656504 (= (size!32440 lt!1451010) (+ (size!32440 lt!1450942) (size!32440 lt!1450969))))))

(assert (= (and d!1207165 c!701420) b!4061197))

(assert (= (and d!1207165 (not c!701420)) b!4061198))

(assert (= (and d!1207165 res!1656505) b!4061199))

(assert (= (and b!4061199 res!1656504) b!4061200))

(declare-fun m!4667139 () Bool)

(assert (=> d!1207165 m!4667139))

(declare-fun m!4667141 () Bool)

(assert (=> d!1207165 m!4667141))

(declare-fun m!4667143 () Bool)

(assert (=> d!1207165 m!4667143))

(declare-fun m!4667145 () Bool)

(assert (=> b!4061198 m!4667145))

(declare-fun m!4667147 () Bool)

(assert (=> b!4061199 m!4667147))

(assert (=> b!4061199 m!4667067))

(declare-fun m!4667149 () Bool)

(assert (=> b!4061199 m!4667149))

(assert (=> b!4061125 d!1207165))

(declare-fun d!1207167 () Bool)

(declare-fun lt!1451013 () List!43511)

(assert (=> d!1207167 (= (++!11366 lt!1450942 lt!1451013) lt!1450973)))

(declare-fun e!2520170 () List!43511)

(assert (=> d!1207167 (= lt!1451013 e!2520170)))

(declare-fun c!701423 () Bool)

(assert (=> d!1207167 (= c!701423 ((_ is Cons!43387) lt!1450942))))

(assert (=> d!1207167 (>= (size!32440 lt!1450973) (size!32440 lt!1450942))))

(assert (=> d!1207167 (= (getSuffix!2468 lt!1450973 lt!1450942) lt!1451013)))

(declare-fun b!4061205 () Bool)

(declare-fun tail!6304 (List!43511) List!43511)

(assert (=> b!4061205 (= e!2520170 (getSuffix!2468 (tail!6304 lt!1450973) (t!336622 lt!1450942)))))

(declare-fun b!4061206 () Bool)

(assert (=> b!4061206 (= e!2520170 lt!1450973)))

(assert (= (and d!1207167 c!701423) b!4061205))

(assert (= (and d!1207167 (not c!701423)) b!4061206))

(declare-fun m!4667151 () Bool)

(assert (=> d!1207167 m!4667151))

(declare-fun m!4667153 () Bool)

(assert (=> d!1207167 m!4667153))

(assert (=> d!1207167 m!4667067))

(declare-fun m!4667155 () Bool)

(assert (=> b!4061205 m!4667155))

(assert (=> b!4061205 m!4667155))

(declare-fun m!4667157 () Bool)

(assert (=> b!4061205 m!4667157))

(assert (=> b!4061125 d!1207167))

(declare-fun d!1207169 () Bool)

(assert (=> d!1207169 (not (matchR!5822 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1450946))))

(declare-fun lt!1451016 () Unit!62811)

(declare-fun choose!24680 (LexerInterface!6553 List!43513 Rule!13728 List!43511 List!43511 Rule!13728) Unit!62811)

(assert (=> d!1207169 (= lt!1451016 (choose!24680 thiss!21717 rules!2999 (rule!10056 token!484) lt!1450946 lt!1450984 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(assert (=> d!1207169 (isPrefix!4051 lt!1450946 lt!1450984)))

(assert (=> d!1207169 (= (lemmaMaxPrefNoSmallerRuleMatches!292 thiss!21717 rules!2999 (rule!10056 token!484) lt!1450946 lt!1450984 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1451016)))

(declare-fun bs!592113 () Bool)

(assert (= bs!592113 d!1207169))

(assert (=> bs!592113 m!4667091))

(declare-fun m!4667159 () Bool)

(assert (=> bs!592113 m!4667159))

(assert (=> bs!592113 m!4667015))

(assert (=> b!4061146 d!1207169))

(declare-fun bm!288216 () Bool)

(declare-fun call!288221 () Bool)

(declare-fun isEmpty!25891 (List!43511) Bool)

(assert (=> bm!288216 (= call!288221 (isEmpty!25891 lt!1450946))))

(declare-fun b!4061235 () Bool)

(declare-fun res!1656523 () Bool)

(declare-fun e!2520185 () Bool)

(assert (=> b!4061235 (=> res!1656523 e!2520185)))

(assert (=> b!4061235 (= res!1656523 (not ((_ is ElementMatch!11869) (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))))

(declare-fun e!2520189 () Bool)

(assert (=> b!4061235 (= e!2520189 e!2520185)))

(declare-fun d!1207171 () Bool)

(declare-fun e!2520191 () Bool)

(assert (=> d!1207171 e!2520191))

(declare-fun c!701430 () Bool)

(assert (=> d!1207171 (= c!701430 ((_ is EmptyExpr!11869) (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))

(declare-fun lt!1451019 () Bool)

(declare-fun e!2520187 () Bool)

(assert (=> d!1207171 (= lt!1451019 e!2520187)))

(declare-fun c!701431 () Bool)

(assert (=> d!1207171 (= c!701431 (isEmpty!25891 lt!1450946))))

(declare-fun validRegex!5369 (Regex!11869) Bool)

(assert (=> d!1207171 (validRegex!5369 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(assert (=> d!1207171 (= (matchR!5822 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1450946) lt!1451019)))

(declare-fun b!4061236 () Bool)

(declare-fun res!1656525 () Bool)

(declare-fun e!2520188 () Bool)

(assert (=> b!4061236 (=> res!1656525 e!2520188)))

(assert (=> b!4061236 (= res!1656525 (not (isEmpty!25891 (tail!6304 lt!1450946))))))

(declare-fun b!4061237 () Bool)

(declare-fun e!2520186 () Bool)

(assert (=> b!4061237 (= e!2520186 e!2520188)))

(declare-fun res!1656524 () Bool)

(assert (=> b!4061237 (=> res!1656524 e!2520188)))

(assert (=> b!4061237 (= res!1656524 call!288221)))

(declare-fun b!4061238 () Bool)

(assert (=> b!4061238 (= e!2520189 (not lt!1451019))))

(declare-fun b!4061239 () Bool)

(declare-fun derivativeStep!3574 (Regex!11869 C!23924) Regex!11869)

(declare-fun head!8572 (List!43511) C!23924)

(assert (=> b!4061239 (= e!2520187 (matchR!5822 (derivativeStep!3574 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) (head!8572 lt!1450946)) (tail!6304 lt!1450946)))))

(declare-fun b!4061240 () Bool)

(declare-fun e!2520190 () Bool)

(assert (=> b!4061240 (= e!2520190 (= (head!8572 lt!1450946) (c!701409 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))))

(declare-fun b!4061241 () Bool)

(declare-fun nullable!4169 (Regex!11869) Bool)

(assert (=> b!4061241 (= e!2520187 (nullable!4169 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))

(declare-fun b!4061242 () Bool)

(assert (=> b!4061242 (= e!2520185 e!2520186)))

(declare-fun res!1656526 () Bool)

(assert (=> b!4061242 (=> (not res!1656526) (not e!2520186))))

(assert (=> b!4061242 (= res!1656526 (not lt!1451019))))

(declare-fun b!4061243 () Bool)

(declare-fun res!1656528 () Bool)

(assert (=> b!4061243 (=> (not res!1656528) (not e!2520190))))

(assert (=> b!4061243 (= res!1656528 (isEmpty!25891 (tail!6304 lt!1450946)))))

(declare-fun b!4061244 () Bool)

(declare-fun res!1656529 () Bool)

(assert (=> b!4061244 (=> (not res!1656529) (not e!2520190))))

(assert (=> b!4061244 (= res!1656529 (not call!288221))))

(declare-fun b!4061245 () Bool)

(declare-fun res!1656527 () Bool)

(assert (=> b!4061245 (=> res!1656527 e!2520185)))

(assert (=> b!4061245 (= res!1656527 e!2520190)))

(declare-fun res!1656522 () Bool)

(assert (=> b!4061245 (=> (not res!1656522) (not e!2520190))))

(assert (=> b!4061245 (= res!1656522 lt!1451019)))

(declare-fun b!4061246 () Bool)

(assert (=> b!4061246 (= e!2520188 (not (= (head!8572 lt!1450946) (c!701409 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))))

(declare-fun b!4061247 () Bool)

(assert (=> b!4061247 (= e!2520191 (= lt!1451019 call!288221))))

(declare-fun b!4061248 () Bool)

(assert (=> b!4061248 (= e!2520191 e!2520189)))

(declare-fun c!701432 () Bool)

(assert (=> b!4061248 (= c!701432 ((_ is EmptyLang!11869) (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))

(assert (= (and d!1207171 c!701431) b!4061241))

(assert (= (and d!1207171 (not c!701431)) b!4061239))

(assert (= (and d!1207171 c!701430) b!4061247))

(assert (= (and d!1207171 (not c!701430)) b!4061248))

(assert (= (and b!4061248 c!701432) b!4061238))

(assert (= (and b!4061248 (not c!701432)) b!4061235))

(assert (= (and b!4061235 (not res!1656523)) b!4061245))

(assert (= (and b!4061245 res!1656522) b!4061244))

(assert (= (and b!4061244 res!1656529) b!4061243))

(assert (= (and b!4061243 res!1656528) b!4061240))

(assert (= (and b!4061245 (not res!1656527)) b!4061242))

(assert (= (and b!4061242 res!1656526) b!4061237))

(assert (= (and b!4061237 (not res!1656524)) b!4061236))

(assert (= (and b!4061236 (not res!1656525)) b!4061246))

(assert (= (or b!4061247 b!4061237 b!4061244) bm!288216))

(declare-fun m!4667161 () Bool)

(assert (=> b!4061243 m!4667161))

(assert (=> b!4061243 m!4667161))

(declare-fun m!4667163 () Bool)

(assert (=> b!4061243 m!4667163))

(assert (=> b!4061236 m!4667161))

(assert (=> b!4061236 m!4667161))

(assert (=> b!4061236 m!4667163))

(declare-fun m!4667165 () Bool)

(assert (=> d!1207171 m!4667165))

(declare-fun m!4667167 () Bool)

(assert (=> d!1207171 m!4667167))

(declare-fun m!4667169 () Bool)

(assert (=> b!4061239 m!4667169))

(assert (=> b!4061239 m!4667169))

(declare-fun m!4667171 () Bool)

(assert (=> b!4061239 m!4667171))

(assert (=> b!4061239 m!4667161))

(assert (=> b!4061239 m!4667171))

(assert (=> b!4061239 m!4667161))

(declare-fun m!4667173 () Bool)

(assert (=> b!4061239 m!4667173))

(assert (=> b!4061246 m!4667169))

(assert (=> b!4061240 m!4667169))

(declare-fun m!4667175 () Bool)

(assert (=> b!4061241 m!4667175))

(assert (=> bm!288216 m!4667165))

(assert (=> b!4061146 d!1207171))

(declare-fun b!4061334 () Bool)

(declare-fun res!1656593 () Bool)

(declare-fun e!2520239 () Bool)

(assert (=> b!4061334 (=> (not res!1656593) (not e!2520239))))

(declare-fun lt!1451058 () Option!9378)

(declare-fun get!14229 (Option!9378) tuple2!42446)

(assert (=> b!4061334 (= res!1656593 (matchR!5822 (regex!6964 (rule!10056 (_1!24357 (get!14229 lt!1451058)))) (list!16172 (charsOf!4780 (_1!24357 (get!14229 lt!1451058))))))))

(declare-fun b!4061335 () Bool)

(declare-fun e!2520240 () Bool)

(assert (=> b!4061335 (= e!2520240 e!2520239)))

(declare-fun res!1656596 () Bool)

(assert (=> b!4061335 (=> (not res!1656596) (not e!2520239))))

(declare-fun isDefined!7123 (Option!9378) Bool)

(assert (=> b!4061335 (= res!1656596 (isDefined!7123 lt!1451058))))

(declare-fun b!4061336 () Bool)

(declare-fun res!1656594 () Bool)

(assert (=> b!4061336 (=> (not res!1656594) (not e!2520239))))

(assert (=> b!4061336 (= res!1656594 (= (value!219108 (_1!24357 (get!14229 lt!1451058))) (apply!10153 (transformation!6964 (rule!10056 (_1!24357 (get!14229 lt!1451058)))) (seqFromList!5181 (originalCharacters!7564 (_1!24357 (get!14229 lt!1451058)))))))))

(declare-fun b!4061337 () Bool)

(declare-fun res!1656591 () Bool)

(assert (=> b!4061337 (=> (not res!1656591) (not e!2520239))))

(assert (=> b!4061337 (= res!1656591 (= (list!16172 (charsOf!4780 (_1!24357 (get!14229 lt!1451058)))) (originalCharacters!7564 (_1!24357 (get!14229 lt!1451058)))))))

(declare-fun b!4061338 () Bool)

(assert (=> b!4061338 (= e!2520239 (contains!8632 rules!2999 (rule!10056 (_1!24357 (get!14229 lt!1451058)))))))

(declare-fun b!4061339 () Bool)

(declare-fun res!1656592 () Bool)

(assert (=> b!4061339 (=> (not res!1656592) (not e!2520239))))

(assert (=> b!4061339 (= res!1656592 (= (++!11366 (list!16172 (charsOf!4780 (_1!24357 (get!14229 lt!1451058)))) (_2!24357 (get!14229 lt!1451058))) lt!1450984))))

(declare-fun b!4061340 () Bool)

(declare-fun res!1656590 () Bool)

(assert (=> b!4061340 (=> (not res!1656590) (not e!2520239))))

(assert (=> b!4061340 (= res!1656590 (< (size!32440 (_2!24357 (get!14229 lt!1451058))) (size!32440 lt!1450984)))))

(declare-fun b!4061341 () Bool)

(declare-fun e!2520241 () Option!9378)

(declare-fun lt!1451060 () Option!9378)

(declare-fun lt!1451056 () Option!9378)

(assert (=> b!4061341 (= e!2520241 (ite (and ((_ is None!9377) lt!1451060) ((_ is None!9377) lt!1451056)) None!9377 (ite ((_ is None!9377) lt!1451056) lt!1451060 (ite ((_ is None!9377) lt!1451060) lt!1451056 (ite (>= (size!32439 (_1!24357 (v!39797 lt!1451060))) (size!32439 (_1!24357 (v!39797 lt!1451056)))) lt!1451060 lt!1451056)))))))

(declare-fun call!288224 () Option!9378)

(assert (=> b!4061341 (= lt!1451060 call!288224)))

(assert (=> b!4061341 (= lt!1451056 (maxPrefix!3851 thiss!21717 (t!336624 rules!2999) lt!1450984))))

(declare-fun d!1207173 () Bool)

(assert (=> d!1207173 e!2520240))

(declare-fun res!1656595 () Bool)

(assert (=> d!1207173 (=> res!1656595 e!2520240)))

(declare-fun isEmpty!25892 (Option!9378) Bool)

(assert (=> d!1207173 (= res!1656595 (isEmpty!25892 lt!1451058))))

(assert (=> d!1207173 (= lt!1451058 e!2520241)))

(declare-fun c!701445 () Bool)

(assert (=> d!1207173 (= c!701445 (and ((_ is Cons!43389) rules!2999) ((_ is Nil!43389) (t!336624 rules!2999))))))

(declare-fun lt!1451059 () Unit!62811)

(declare-fun lt!1451057 () Unit!62811)

(assert (=> d!1207173 (= lt!1451059 lt!1451057)))

(assert (=> d!1207173 (isPrefix!4051 lt!1450984 lt!1450984)))

(assert (=> d!1207173 (= lt!1451057 (lemmaIsPrefixRefl!2618 lt!1450984 lt!1450984))))

(declare-fun rulesValidInductive!2544 (LexerInterface!6553 List!43513) Bool)

(assert (=> d!1207173 (rulesValidInductive!2544 thiss!21717 rules!2999)))

(assert (=> d!1207173 (= (maxPrefix!3851 thiss!21717 rules!2999 lt!1450984) lt!1451058)))

(declare-fun b!4061342 () Bool)

(assert (=> b!4061342 (= e!2520241 call!288224)))

(declare-fun bm!288219 () Bool)

(assert (=> bm!288219 (= call!288224 (maxPrefixOneRule!2863 thiss!21717 (h!48809 rules!2999) lt!1450984))))

(assert (= (and d!1207173 c!701445) b!4061342))

(assert (= (and d!1207173 (not c!701445)) b!4061341))

(assert (= (or b!4061342 b!4061341) bm!288219))

(assert (= (and d!1207173 (not res!1656595)) b!4061335))

(assert (= (and b!4061335 res!1656596) b!4061337))

(assert (= (and b!4061337 res!1656591) b!4061340))

(assert (= (and b!4061340 res!1656590) b!4061339))

(assert (= (and b!4061339 res!1656592) b!4061336))

(assert (= (and b!4061336 res!1656594) b!4061334))

(assert (= (and b!4061334 res!1656593) b!4061338))

(declare-fun m!4667289 () Bool)

(assert (=> b!4061337 m!4667289))

(declare-fun m!4667291 () Bool)

(assert (=> b!4061337 m!4667291))

(assert (=> b!4061337 m!4667291))

(declare-fun m!4667293 () Bool)

(assert (=> b!4061337 m!4667293))

(assert (=> b!4061339 m!4667289))

(assert (=> b!4061339 m!4667291))

(assert (=> b!4061339 m!4667291))

(assert (=> b!4061339 m!4667293))

(assert (=> b!4061339 m!4667293))

(declare-fun m!4667295 () Bool)

(assert (=> b!4061339 m!4667295))

(assert (=> b!4061334 m!4667289))

(assert (=> b!4061334 m!4667291))

(assert (=> b!4061334 m!4667291))

(assert (=> b!4061334 m!4667293))

(assert (=> b!4061334 m!4667293))

(declare-fun m!4667297 () Bool)

(assert (=> b!4061334 m!4667297))

(declare-fun m!4667299 () Bool)

(assert (=> b!4061341 m!4667299))

(declare-fun m!4667301 () Bool)

(assert (=> b!4061335 m!4667301))

(assert (=> b!4061340 m!4667289))

(declare-fun m!4667303 () Bool)

(assert (=> b!4061340 m!4667303))

(declare-fun m!4667305 () Bool)

(assert (=> b!4061340 m!4667305))

(assert (=> b!4061336 m!4667289))

(declare-fun m!4667307 () Bool)

(assert (=> b!4061336 m!4667307))

(assert (=> b!4061336 m!4667307))

(declare-fun m!4667309 () Bool)

(assert (=> b!4061336 m!4667309))

(declare-fun m!4667311 () Bool)

(assert (=> d!1207173 m!4667311))

(assert (=> d!1207173 m!4666987))

(assert (=> d!1207173 m!4666989))

(declare-fun m!4667313 () Bool)

(assert (=> d!1207173 m!4667313))

(assert (=> b!4061338 m!4667289))

(declare-fun m!4667315 () Bool)

(assert (=> b!4061338 m!4667315))

(declare-fun m!4667317 () Bool)

(assert (=> bm!288219 m!4667317))

(assert (=> b!4061168 d!1207173))

(declare-fun b!4061346 () Bool)

(declare-fun lt!1451061 () List!43511)

(declare-fun e!2520242 () Bool)

(assert (=> b!4061346 (= e!2520242 (or (not (= suffix!1299 Nil!43387)) (= lt!1451061 prefix!494)))))

(declare-fun d!1207209 () Bool)

(assert (=> d!1207209 e!2520242))

(declare-fun res!1656598 () Bool)

(assert (=> d!1207209 (=> (not res!1656598) (not e!2520242))))

(assert (=> d!1207209 (= res!1656598 (= (content!6617 lt!1451061) ((_ map or) (content!6617 prefix!494) (content!6617 suffix!1299))))))

(declare-fun e!2520243 () List!43511)

(assert (=> d!1207209 (= lt!1451061 e!2520243)))

(declare-fun c!701446 () Bool)

(assert (=> d!1207209 (= c!701446 ((_ is Nil!43387) prefix!494))))

(assert (=> d!1207209 (= (++!11366 prefix!494 suffix!1299) lt!1451061)))

(declare-fun b!4061343 () Bool)

(assert (=> b!4061343 (= e!2520243 suffix!1299)))

(declare-fun b!4061344 () Bool)

(assert (=> b!4061344 (= e!2520243 (Cons!43387 (h!48807 prefix!494) (++!11366 (t!336622 prefix!494) suffix!1299)))))

(declare-fun b!4061345 () Bool)

(declare-fun res!1656597 () Bool)

(assert (=> b!4061345 (=> (not res!1656597) (not e!2520242))))

(assert (=> b!4061345 (= res!1656597 (= (size!32440 lt!1451061) (+ (size!32440 prefix!494) (size!32440 suffix!1299))))))

(assert (= (and d!1207209 c!701446) b!4061343))

(assert (= (and d!1207209 (not c!701446)) b!4061344))

(assert (= (and d!1207209 res!1656598) b!4061345))

(assert (= (and b!4061345 res!1656597) b!4061346))

(declare-fun m!4667319 () Bool)

(assert (=> d!1207209 m!4667319))

(declare-fun m!4667321 () Bool)

(assert (=> d!1207209 m!4667321))

(declare-fun m!4667323 () Bool)

(assert (=> d!1207209 m!4667323))

(declare-fun m!4667325 () Bool)

(assert (=> b!4061344 m!4667325))

(declare-fun m!4667327 () Bool)

(assert (=> b!4061345 m!4667327))

(assert (=> b!4061345 m!4667083))

(assert (=> b!4061345 m!4666947))

(assert (=> b!4061168 d!1207209))

(declare-fun d!1207211 () Bool)

(assert (=> d!1207211 (= (inv!58001 (tag!7824 (rule!10056 token!484))) (= (mod (str.len (value!219107 (tag!7824 (rule!10056 token!484)))) 2) 0))))

(assert (=> b!4061169 d!1207211))

(declare-fun d!1207213 () Bool)

(declare-fun res!1656605 () Bool)

(declare-fun e!2520252 () Bool)

(assert (=> d!1207213 (=> (not res!1656605) (not e!2520252))))

(declare-fun semiInverseModEq!2977 (Int Int) Bool)

(assert (=> d!1207213 (= res!1656605 (semiInverseModEq!2977 (toChars!9383 (transformation!6964 (rule!10056 token!484))) (toValue!9524 (transformation!6964 (rule!10056 token!484)))))))

(assert (=> d!1207213 (= (inv!58005 (transformation!6964 (rule!10056 token!484))) e!2520252)))

(declare-fun b!4061355 () Bool)

(declare-fun equivClasses!2876 (Int Int) Bool)

(assert (=> b!4061355 (= e!2520252 (equivClasses!2876 (toChars!9383 (transformation!6964 (rule!10056 token!484))) (toValue!9524 (transformation!6964 (rule!10056 token!484)))))))

(assert (= (and d!1207213 res!1656605) b!4061355))

(declare-fun m!4667329 () Bool)

(assert (=> d!1207213 m!4667329))

(declare-fun m!4667331 () Bool)

(assert (=> b!4061355 m!4667331))

(assert (=> b!4061169 d!1207213))

(declare-fun d!1207215 () Bool)

(declare-fun lt!1451074 () Int)

(assert (=> d!1207215 (>= lt!1451074 0)))

(declare-fun e!2520255 () Int)

(assert (=> d!1207215 (= lt!1451074 e!2520255)))

(declare-fun c!701451 () Bool)

(assert (=> d!1207215 (= c!701451 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207215 (= (size!32440 lt!1450946) lt!1451074)))

(declare-fun b!4061372 () Bool)

(assert (=> b!4061372 (= e!2520255 0)))

(declare-fun b!4061373 () Bool)

(assert (=> b!4061373 (= e!2520255 (+ 1 (size!32440 (t!336622 lt!1450946))))))

(assert (= (and d!1207215 c!701451) b!4061372))

(assert (= (and d!1207215 (not c!701451)) b!4061373))

(declare-fun m!4667333 () Bool)

(assert (=> b!4061373 m!4667333))

(assert (=> b!4061126 d!1207215))

(declare-fun d!1207217 () Bool)

(declare-fun lt!1451075 () Int)

(assert (=> d!1207217 (>= lt!1451075 0)))

(declare-fun e!2520256 () Int)

(assert (=> d!1207217 (= lt!1451075 e!2520256)))

(declare-fun c!701452 () Bool)

(assert (=> d!1207217 (= c!701452 ((_ is Nil!43387) prefix!494))))

(assert (=> d!1207217 (= (size!32440 prefix!494) lt!1451075)))

(declare-fun b!4061374 () Bool)

(assert (=> b!4061374 (= e!2520256 0)))

(declare-fun b!4061375 () Bool)

(assert (=> b!4061375 (= e!2520256 (+ 1 (size!32440 (t!336622 prefix!494))))))

(assert (= (and d!1207217 c!701452) b!4061374))

(assert (= (and d!1207217 (not c!701452)) b!4061375))

(declare-fun m!4667335 () Bool)

(assert (=> b!4061375 m!4667335))

(assert (=> b!4061126 d!1207217))

(declare-fun d!1207219 () Bool)

(declare-fun list!16173 (Conc!13175) List!43511)

(assert (=> d!1207219 (= (list!16172 (charsOf!4780 token!484)) (list!16173 (c!701408 (charsOf!4780 token!484))))))

(declare-fun bs!592118 () Bool)

(assert (= bs!592118 d!1207219))

(declare-fun m!4667337 () Bool)

(assert (=> bs!592118 m!4667337))

(assert (=> b!4061126 d!1207219))

(declare-fun d!1207221 () Bool)

(declare-fun lt!1451084 () BalanceConc!25944)

(assert (=> d!1207221 (= (list!16172 lt!1451084) (originalCharacters!7564 token!484))))

(declare-fun dynLambda!18436 (Int TokenValue!7194) BalanceConc!25944)

(assert (=> d!1207221 (= lt!1451084 (dynLambda!18436 (toChars!9383 (transformation!6964 (rule!10056 token!484))) (value!219108 token!484)))))

(assert (=> d!1207221 (= (charsOf!4780 token!484) lt!1451084)))

(declare-fun b_lambda!118681 () Bool)

(assert (=> (not b_lambda!118681) (not d!1207221)))

(declare-fun tb!244341 () Bool)

(declare-fun t!336630 () Bool)

(assert (=> (and b!4061144 (= (toChars!9383 (transformation!6964 (h!48809 rules!2999))) (toChars!9383 (transformation!6964 (rule!10056 token!484)))) t!336630) tb!244341))

(declare-fun b!4061393 () Bool)

(declare-fun e!2520264 () Bool)

(declare-fun tp!1230156 () Bool)

(declare-fun inv!58008 (Conc!13175) Bool)

(assert (=> b!4061393 (= e!2520264 (and (inv!58008 (c!701408 (dynLambda!18436 (toChars!9383 (transformation!6964 (rule!10056 token!484))) (value!219108 token!484)))) tp!1230156))))

(declare-fun result!296060 () Bool)

(declare-fun inv!58009 (BalanceConc!25944) Bool)

(assert (=> tb!244341 (= result!296060 (and (inv!58009 (dynLambda!18436 (toChars!9383 (transformation!6964 (rule!10056 token!484))) (value!219108 token!484))) e!2520264))))

(assert (= tb!244341 b!4061393))

(declare-fun m!4667375 () Bool)

(assert (=> b!4061393 m!4667375))

(declare-fun m!4667377 () Bool)

(assert (=> tb!244341 m!4667377))

(assert (=> d!1207221 t!336630))

(declare-fun b_and!312271 () Bool)

(assert (= b_and!312261 (and (=> t!336630 result!296060) b_and!312271)))

(declare-fun t!336632 () Bool)

(declare-fun tb!244343 () Bool)

(assert (=> (and b!4061141 (= (toChars!9383 (transformation!6964 (rule!10056 token!484))) (toChars!9383 (transformation!6964 (rule!10056 token!484)))) t!336632) tb!244343))

(declare-fun result!296064 () Bool)

(assert (= result!296064 result!296060))

(assert (=> d!1207221 t!336632))

(declare-fun b_and!312273 () Bool)

(assert (= b_and!312265 (and (=> t!336632 result!296064) b_and!312273)))

(declare-fun m!4667379 () Bool)

(assert (=> d!1207221 m!4667379))

(declare-fun m!4667381 () Bool)

(assert (=> d!1207221 m!4667381))

(assert (=> b!4061126 d!1207221))

(declare-fun d!1207227 () Bool)

(assert (=> d!1207227 (= (_2!24357 (v!39797 lt!1450988)) lt!1450969)))

(declare-fun lt!1451085 () Unit!62811)

(assert (=> d!1207227 (= lt!1451085 (choose!24677 lt!1450942 (_2!24357 (v!39797 lt!1450988)) lt!1450942 lt!1450969 lt!1450973))))

(assert (=> d!1207227 (isPrefix!4051 lt!1450942 lt!1450973)))

(assert (=> d!1207227 (= (lemmaSamePrefixThenSameSuffix!2212 lt!1450942 (_2!24357 (v!39797 lt!1450988)) lt!1450942 lt!1450969 lt!1450973) lt!1451085)))

(declare-fun bs!592119 () Bool)

(assert (= bs!592119 d!1207227))

(declare-fun m!4667383 () Bool)

(assert (=> bs!592119 m!4667383))

(assert (=> bs!592119 m!4667097))

(assert (=> b!4061127 d!1207227))

(declare-fun b!4061430 () Bool)

(declare-fun e!2520286 () Bool)

(declare-fun e!2520285 () Bool)

(assert (=> b!4061430 (= e!2520286 e!2520285)))

(declare-fun res!1656652 () Bool)

(assert (=> b!4061430 (=> (not res!1656652) (not e!2520285))))

(assert (=> b!4061430 (= res!1656652 (not ((_ is Nil!43387) lt!1450972)))))

(declare-fun b!4061432 () Bool)

(assert (=> b!4061432 (= e!2520285 (isPrefix!4051 (tail!6304 lt!1450942) (tail!6304 lt!1450972)))))

(declare-fun b!4061433 () Bool)

(declare-fun e!2520287 () Bool)

(assert (=> b!4061433 (= e!2520287 (>= (size!32440 lt!1450972) (size!32440 lt!1450942)))))

(declare-fun b!4061431 () Bool)

(declare-fun res!1656651 () Bool)

(assert (=> b!4061431 (=> (not res!1656651) (not e!2520285))))

(assert (=> b!4061431 (= res!1656651 (= (head!8572 lt!1450942) (head!8572 lt!1450972)))))

(declare-fun d!1207229 () Bool)

(assert (=> d!1207229 e!2520287))

(declare-fun res!1656649 () Bool)

(assert (=> d!1207229 (=> res!1656649 e!2520287)))

(declare-fun lt!1451090 () Bool)

(assert (=> d!1207229 (= res!1656649 (not lt!1451090))))

(assert (=> d!1207229 (= lt!1451090 e!2520286)))

(declare-fun res!1656650 () Bool)

(assert (=> d!1207229 (=> res!1656650 e!2520286)))

(assert (=> d!1207229 (= res!1656650 ((_ is Nil!43387) lt!1450942))))

(assert (=> d!1207229 (= (isPrefix!4051 lt!1450942 lt!1450972) lt!1451090)))

(assert (= (and d!1207229 (not res!1656650)) b!4061430))

(assert (= (and b!4061430 res!1656652) b!4061431))

(assert (= (and b!4061431 res!1656651) b!4061432))

(assert (= (and d!1207229 (not res!1656649)) b!4061433))

(declare-fun m!4667385 () Bool)

(assert (=> b!4061432 m!4667385))

(declare-fun m!4667387 () Bool)

(assert (=> b!4061432 m!4667387))

(assert (=> b!4061432 m!4667385))

(assert (=> b!4061432 m!4667387))

(declare-fun m!4667389 () Bool)

(assert (=> b!4061432 m!4667389))

(declare-fun m!4667391 () Bool)

(assert (=> b!4061433 m!4667391))

(assert (=> b!4061433 m!4667067))

(declare-fun m!4667393 () Bool)

(assert (=> b!4061431 m!4667393))

(declare-fun m!4667395 () Bool)

(assert (=> b!4061431 m!4667395))

(assert (=> b!4061127 d!1207229))

(declare-fun d!1207231 () Bool)

(assert (=> d!1207231 (isPrefix!4051 lt!1450942 (++!11366 lt!1450942 lt!1450969))))

(declare-fun lt!1451093 () Unit!62811)

(declare-fun choose!24684 (List!43511 List!43511) Unit!62811)

(assert (=> d!1207231 (= lt!1451093 (choose!24684 lt!1450942 lt!1450969))))

(assert (=> d!1207231 (= (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450942 lt!1450969) lt!1451093)))

(declare-fun bs!592120 () Bool)

(assert (= bs!592120 d!1207231))

(assert (=> bs!592120 m!4667041))

(assert (=> bs!592120 m!4667041))

(declare-fun m!4667397 () Bool)

(assert (=> bs!592120 m!4667397))

(declare-fun m!4667399 () Bool)

(assert (=> bs!592120 m!4667399))

(assert (=> b!4061127 d!1207231))

(declare-fun bm!288225 () Bool)

(declare-fun call!288230 () Bool)

(assert (=> bm!288225 (= call!288230 (isEmpty!25891 lt!1450946))))

(declare-fun b!4061434 () Bool)

(declare-fun res!1656654 () Bool)

(declare-fun e!2520288 () Bool)

(assert (=> b!4061434 (=> res!1656654 e!2520288)))

(assert (=> b!4061434 (= res!1656654 (not ((_ is ElementMatch!11869) (regex!6964 (rule!10056 token!484)))))))

(declare-fun e!2520292 () Bool)

(assert (=> b!4061434 (= e!2520292 e!2520288)))

(declare-fun d!1207233 () Bool)

(declare-fun e!2520294 () Bool)

(assert (=> d!1207233 e!2520294))

(declare-fun c!701461 () Bool)

(assert (=> d!1207233 (= c!701461 ((_ is EmptyExpr!11869) (regex!6964 (rule!10056 token!484))))))

(declare-fun lt!1451094 () Bool)

(declare-fun e!2520290 () Bool)

(assert (=> d!1207233 (= lt!1451094 e!2520290)))

(declare-fun c!701462 () Bool)

(assert (=> d!1207233 (= c!701462 (isEmpty!25891 lt!1450946))))

(assert (=> d!1207233 (validRegex!5369 (regex!6964 (rule!10056 token!484)))))

(assert (=> d!1207233 (= (matchR!5822 (regex!6964 (rule!10056 token!484)) lt!1450946) lt!1451094)))

(declare-fun b!4061435 () Bool)

(declare-fun res!1656656 () Bool)

(declare-fun e!2520291 () Bool)

(assert (=> b!4061435 (=> res!1656656 e!2520291)))

(assert (=> b!4061435 (= res!1656656 (not (isEmpty!25891 (tail!6304 lt!1450946))))))

(declare-fun b!4061436 () Bool)

(declare-fun e!2520289 () Bool)

(assert (=> b!4061436 (= e!2520289 e!2520291)))

(declare-fun res!1656655 () Bool)

(assert (=> b!4061436 (=> res!1656655 e!2520291)))

(assert (=> b!4061436 (= res!1656655 call!288230)))

(declare-fun b!4061437 () Bool)

(assert (=> b!4061437 (= e!2520292 (not lt!1451094))))

(declare-fun b!4061438 () Bool)

(assert (=> b!4061438 (= e!2520290 (matchR!5822 (derivativeStep!3574 (regex!6964 (rule!10056 token!484)) (head!8572 lt!1450946)) (tail!6304 lt!1450946)))))

(declare-fun b!4061439 () Bool)

(declare-fun e!2520293 () Bool)

(assert (=> b!4061439 (= e!2520293 (= (head!8572 lt!1450946) (c!701409 (regex!6964 (rule!10056 token!484)))))))

(declare-fun b!4061440 () Bool)

(assert (=> b!4061440 (= e!2520290 (nullable!4169 (regex!6964 (rule!10056 token!484))))))

(declare-fun b!4061441 () Bool)

(assert (=> b!4061441 (= e!2520288 e!2520289)))

(declare-fun res!1656657 () Bool)

(assert (=> b!4061441 (=> (not res!1656657) (not e!2520289))))

(assert (=> b!4061441 (= res!1656657 (not lt!1451094))))

(declare-fun b!4061442 () Bool)

(declare-fun res!1656659 () Bool)

(assert (=> b!4061442 (=> (not res!1656659) (not e!2520293))))

(assert (=> b!4061442 (= res!1656659 (isEmpty!25891 (tail!6304 lt!1450946)))))

(declare-fun b!4061443 () Bool)

(declare-fun res!1656660 () Bool)

(assert (=> b!4061443 (=> (not res!1656660) (not e!2520293))))

(assert (=> b!4061443 (= res!1656660 (not call!288230))))

(declare-fun b!4061444 () Bool)

(declare-fun res!1656658 () Bool)

(assert (=> b!4061444 (=> res!1656658 e!2520288)))

(assert (=> b!4061444 (= res!1656658 e!2520293)))

(declare-fun res!1656653 () Bool)

(assert (=> b!4061444 (=> (not res!1656653) (not e!2520293))))

(assert (=> b!4061444 (= res!1656653 lt!1451094)))

(declare-fun b!4061445 () Bool)

(assert (=> b!4061445 (= e!2520291 (not (= (head!8572 lt!1450946) (c!701409 (regex!6964 (rule!10056 token!484))))))))

(declare-fun b!4061446 () Bool)

(assert (=> b!4061446 (= e!2520294 (= lt!1451094 call!288230))))

(declare-fun b!4061447 () Bool)

(assert (=> b!4061447 (= e!2520294 e!2520292)))

(declare-fun c!701463 () Bool)

(assert (=> b!4061447 (= c!701463 ((_ is EmptyLang!11869) (regex!6964 (rule!10056 token!484))))))

(assert (= (and d!1207233 c!701462) b!4061440))

(assert (= (and d!1207233 (not c!701462)) b!4061438))

(assert (= (and d!1207233 c!701461) b!4061446))

(assert (= (and d!1207233 (not c!701461)) b!4061447))

(assert (= (and b!4061447 c!701463) b!4061437))

(assert (= (and b!4061447 (not c!701463)) b!4061434))

(assert (= (and b!4061434 (not res!1656654)) b!4061444))

(assert (= (and b!4061444 res!1656653) b!4061443))

(assert (= (and b!4061443 res!1656660) b!4061442))

(assert (= (and b!4061442 res!1656659) b!4061439))

(assert (= (and b!4061444 (not res!1656658)) b!4061441))

(assert (= (and b!4061441 res!1656657) b!4061436))

(assert (= (and b!4061436 (not res!1656655)) b!4061435))

(assert (= (and b!4061435 (not res!1656656)) b!4061445))

(assert (= (or b!4061446 b!4061436 b!4061443) bm!288225))

(assert (=> b!4061442 m!4667161))

(assert (=> b!4061442 m!4667161))

(assert (=> b!4061442 m!4667163))

(assert (=> b!4061435 m!4667161))

(assert (=> b!4061435 m!4667161))

(assert (=> b!4061435 m!4667163))

(assert (=> d!1207233 m!4667165))

(declare-fun m!4667401 () Bool)

(assert (=> d!1207233 m!4667401))

(assert (=> b!4061438 m!4667169))

(assert (=> b!4061438 m!4667169))

(declare-fun m!4667403 () Bool)

(assert (=> b!4061438 m!4667403))

(assert (=> b!4061438 m!4667161))

(assert (=> b!4061438 m!4667403))

(assert (=> b!4061438 m!4667161))

(declare-fun m!4667405 () Bool)

(assert (=> b!4061438 m!4667405))

(assert (=> b!4061445 m!4667169))

(assert (=> b!4061439 m!4667169))

(declare-fun m!4667407 () Bool)

(assert (=> b!4061440 m!4667407))

(assert (=> bm!288225 m!4667165))

(assert (=> b!4061148 d!1207233))

(declare-fun b!4061462 () Bool)

(declare-fun e!2520303 () Bool)

(declare-fun e!2520302 () Bool)

(assert (=> b!4061462 (= e!2520303 e!2520302)))

(declare-fun res!1656672 () Bool)

(assert (=> b!4061462 (=> (not res!1656672) (not e!2520302))))

(assert (=> b!4061462 (= res!1656672 (not ((_ is Nil!43387) lt!1450973)))))

(declare-fun b!4061464 () Bool)

(assert (=> b!4061464 (= e!2520302 (isPrefix!4051 (tail!6304 lt!1450946) (tail!6304 lt!1450973)))))

(declare-fun b!4061465 () Bool)

(declare-fun e!2520304 () Bool)

(assert (=> b!4061465 (= e!2520304 (>= (size!32440 lt!1450973) (size!32440 lt!1450946)))))

(declare-fun b!4061463 () Bool)

(declare-fun res!1656671 () Bool)

(assert (=> b!4061463 (=> (not res!1656671) (not e!2520302))))

(assert (=> b!4061463 (= res!1656671 (= (head!8572 lt!1450946) (head!8572 lt!1450973)))))

(declare-fun d!1207235 () Bool)

(assert (=> d!1207235 e!2520304))

(declare-fun res!1656669 () Bool)

(assert (=> d!1207235 (=> res!1656669 e!2520304)))

(declare-fun lt!1451096 () Bool)

(assert (=> d!1207235 (= res!1656669 (not lt!1451096))))

(assert (=> d!1207235 (= lt!1451096 e!2520303)))

(declare-fun res!1656670 () Bool)

(assert (=> d!1207235 (=> res!1656670 e!2520303)))

(assert (=> d!1207235 (= res!1656670 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207235 (= (isPrefix!4051 lt!1450946 lt!1450973) lt!1451096)))

(assert (= (and d!1207235 (not res!1656670)) b!4061462))

(assert (= (and b!4061462 res!1656672) b!4061463))

(assert (= (and b!4061463 res!1656671) b!4061464))

(assert (= (and d!1207235 (not res!1656669)) b!4061465))

(assert (=> b!4061464 m!4667161))

(assert (=> b!4061464 m!4667155))

(assert (=> b!4061464 m!4667161))

(assert (=> b!4061464 m!4667155))

(declare-fun m!4667409 () Bool)

(assert (=> b!4061464 m!4667409))

(assert (=> b!4061465 m!4667153))

(assert (=> b!4061465 m!4667081))

(assert (=> b!4061463 m!4667169))

(declare-fun m!4667411 () Bool)

(assert (=> b!4061463 m!4667411))

(assert (=> b!4061148 d!1207235))

(declare-fun d!1207237 () Bool)

(assert (=> d!1207237 (isPrefix!4051 lt!1450946 (++!11366 prefix!494 newSuffix!27))))

(declare-fun lt!1451100 () Unit!62811)

(declare-fun choose!24685 (List!43511 List!43511 List!43511) Unit!62811)

(assert (=> d!1207237 (= lt!1451100 (choose!24685 lt!1450946 prefix!494 newSuffix!27))))

(assert (=> d!1207237 (isPrefix!4051 lt!1450946 prefix!494)))

(assert (=> d!1207237 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!844 lt!1450946 prefix!494 newSuffix!27) lt!1451100)))

(declare-fun bs!592121 () Bool)

(assert (= bs!592121 d!1207237))

(assert (=> bs!592121 m!4667099))

(assert (=> bs!592121 m!4667099))

(declare-fun m!4667435 () Bool)

(assert (=> bs!592121 m!4667435))

(declare-fun m!4667437 () Bool)

(assert (=> bs!592121 m!4667437))

(assert (=> bs!592121 m!4667125))

(assert (=> b!4061148 d!1207237))

(declare-fun d!1207243 () Bool)

(assert (=> d!1207243 (isPrefix!4051 lt!1450946 (++!11366 prefix!494 suffix!1299))))

(declare-fun lt!1451101 () Unit!62811)

(assert (=> d!1207243 (= lt!1451101 (choose!24685 lt!1450946 prefix!494 suffix!1299))))

(assert (=> d!1207243 (isPrefix!4051 lt!1450946 prefix!494)))

(assert (=> d!1207243 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!844 lt!1450946 prefix!494 suffix!1299) lt!1451101)))

(declare-fun bs!592122 () Bool)

(assert (= bs!592122 d!1207243))

(assert (=> bs!592122 m!4666965))

(assert (=> bs!592122 m!4666965))

(declare-fun m!4667439 () Bool)

(assert (=> bs!592122 m!4667439))

(declare-fun m!4667441 () Bool)

(assert (=> bs!592122 m!4667441))

(assert (=> bs!592122 m!4667125))

(assert (=> b!4061148 d!1207243))

(declare-fun d!1207245 () Bool)

(declare-fun res!1656687 () Bool)

(declare-fun e!2520316 () Bool)

(assert (=> d!1207245 (=> (not res!1656687) (not e!2520316))))

(assert (=> d!1207245 (= res!1656687 (not (isEmpty!25891 (originalCharacters!7564 token!484))))))

(assert (=> d!1207245 (= (inv!58004 token!484) e!2520316)))

(declare-fun b!4061484 () Bool)

(declare-fun res!1656688 () Bool)

(assert (=> b!4061484 (=> (not res!1656688) (not e!2520316))))

(assert (=> b!4061484 (= res!1656688 (= (originalCharacters!7564 token!484) (list!16172 (dynLambda!18436 (toChars!9383 (transformation!6964 (rule!10056 token!484))) (value!219108 token!484)))))))

(declare-fun b!4061485 () Bool)

(assert (=> b!4061485 (= e!2520316 (= (size!32439 token!484) (size!32440 (originalCharacters!7564 token!484))))))

(assert (= (and d!1207245 res!1656687) b!4061484))

(assert (= (and b!4061484 res!1656688) b!4061485))

(declare-fun b_lambda!118683 () Bool)

(assert (=> (not b_lambda!118683) (not b!4061484)))

(assert (=> b!4061484 t!336630))

(declare-fun b_and!312275 () Bool)

(assert (= b_and!312271 (and (=> t!336630 result!296060) b_and!312275)))

(assert (=> b!4061484 t!336632))

(declare-fun b_and!312277 () Bool)

(assert (= b_and!312273 (and (=> t!336632 result!296064) b_and!312277)))

(declare-fun m!4667471 () Bool)

(assert (=> d!1207245 m!4667471))

(assert (=> b!4061484 m!4667381))

(assert (=> b!4061484 m!4667381))

(declare-fun m!4667473 () Bool)

(assert (=> b!4061484 m!4667473))

(assert (=> b!4061485 m!4667103))

(assert (=> start!383008 d!1207245))

(declare-fun d!1207257 () Bool)

(declare-fun lt!1451114 () Bool)

(declare-fun content!6618 (List!43513) (InoxSet Rule!13728))

(assert (=> d!1207257 (= lt!1451114 (select (content!6618 rules!2999) (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(declare-fun e!2520322 () Bool)

(assert (=> d!1207257 (= lt!1451114 e!2520322)))

(declare-fun res!1656693 () Bool)

(assert (=> d!1207257 (=> (not res!1656693) (not e!2520322))))

(assert (=> d!1207257 (= res!1656693 ((_ is Cons!43389) rules!2999))))

(assert (=> d!1207257 (= (contains!8632 rules!2999 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1451114)))

(declare-fun b!4061490 () Bool)

(declare-fun e!2520321 () Bool)

(assert (=> b!4061490 (= e!2520322 e!2520321)))

(declare-fun res!1656694 () Bool)

(assert (=> b!4061490 (=> res!1656694 e!2520321)))

(assert (=> b!4061490 (= res!1656694 (= (h!48809 rules!2999) (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(declare-fun b!4061491 () Bool)

(assert (=> b!4061491 (= e!2520321 (contains!8632 (t!336624 rules!2999) (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(assert (= (and d!1207257 res!1656693) b!4061490))

(assert (= (and b!4061490 (not res!1656694)) b!4061491))

(declare-fun m!4667477 () Bool)

(assert (=> d!1207257 m!4667477))

(declare-fun m!4667479 () Bool)

(assert (=> d!1207257 m!4667479))

(declare-fun m!4667481 () Bool)

(assert (=> b!4061491 m!4667481))

(assert (=> b!4061149 d!1207257))

(declare-fun bm!288227 () Bool)

(declare-fun call!288232 () Bool)

(assert (=> bm!288227 (= call!288232 (isEmpty!25891 lt!1450942))))

(declare-fun b!4061492 () Bool)

(declare-fun res!1656696 () Bool)

(declare-fun e!2520323 () Bool)

(assert (=> b!4061492 (=> res!1656696 e!2520323)))

(assert (=> b!4061492 (= res!1656696 (not ((_ is ElementMatch!11869) (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))))

(declare-fun e!2520327 () Bool)

(assert (=> b!4061492 (= e!2520327 e!2520323)))

(declare-fun d!1207261 () Bool)

(declare-fun e!2520329 () Bool)

(assert (=> d!1207261 e!2520329))

(declare-fun c!701469 () Bool)

(assert (=> d!1207261 (= c!701469 ((_ is EmptyExpr!11869) (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))

(declare-fun lt!1451115 () Bool)

(declare-fun e!2520325 () Bool)

(assert (=> d!1207261 (= lt!1451115 e!2520325)))

(declare-fun c!701470 () Bool)

(assert (=> d!1207261 (= c!701470 (isEmpty!25891 lt!1450942))))

(assert (=> d!1207261 (validRegex!5369 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(assert (=> d!1207261 (= (matchR!5822 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1450942) lt!1451115)))

(declare-fun b!4061493 () Bool)

(declare-fun res!1656698 () Bool)

(declare-fun e!2520326 () Bool)

(assert (=> b!4061493 (=> res!1656698 e!2520326)))

(assert (=> b!4061493 (= res!1656698 (not (isEmpty!25891 (tail!6304 lt!1450942))))))

(declare-fun b!4061494 () Bool)

(declare-fun e!2520324 () Bool)

(assert (=> b!4061494 (= e!2520324 e!2520326)))

(declare-fun res!1656697 () Bool)

(assert (=> b!4061494 (=> res!1656697 e!2520326)))

(assert (=> b!4061494 (= res!1656697 call!288232)))

(declare-fun b!4061495 () Bool)

(assert (=> b!4061495 (= e!2520327 (not lt!1451115))))

(declare-fun b!4061496 () Bool)

(assert (=> b!4061496 (= e!2520325 (matchR!5822 (derivativeStep!3574 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) (head!8572 lt!1450942)) (tail!6304 lt!1450942)))))

(declare-fun b!4061497 () Bool)

(declare-fun e!2520328 () Bool)

(assert (=> b!4061497 (= e!2520328 (= (head!8572 lt!1450942) (c!701409 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))))

(declare-fun b!4061498 () Bool)

(assert (=> b!4061498 (= e!2520325 (nullable!4169 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))

(declare-fun b!4061499 () Bool)

(assert (=> b!4061499 (= e!2520323 e!2520324)))

(declare-fun res!1656699 () Bool)

(assert (=> b!4061499 (=> (not res!1656699) (not e!2520324))))

(assert (=> b!4061499 (= res!1656699 (not lt!1451115))))

(declare-fun b!4061500 () Bool)

(declare-fun res!1656701 () Bool)

(assert (=> b!4061500 (=> (not res!1656701) (not e!2520328))))

(assert (=> b!4061500 (= res!1656701 (isEmpty!25891 (tail!6304 lt!1450942)))))

(declare-fun b!4061501 () Bool)

(declare-fun res!1656702 () Bool)

(assert (=> b!4061501 (=> (not res!1656702) (not e!2520328))))

(assert (=> b!4061501 (= res!1656702 (not call!288232))))

(declare-fun b!4061502 () Bool)

(declare-fun res!1656700 () Bool)

(assert (=> b!4061502 (=> res!1656700 e!2520323)))

(assert (=> b!4061502 (= res!1656700 e!2520328)))

(declare-fun res!1656695 () Bool)

(assert (=> b!4061502 (=> (not res!1656695) (not e!2520328))))

(assert (=> b!4061502 (= res!1656695 lt!1451115)))

(declare-fun b!4061503 () Bool)

(assert (=> b!4061503 (= e!2520326 (not (= (head!8572 lt!1450942) (c!701409 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))))

(declare-fun b!4061504 () Bool)

(assert (=> b!4061504 (= e!2520329 (= lt!1451115 call!288232))))

(declare-fun b!4061505 () Bool)

(assert (=> b!4061505 (= e!2520329 e!2520327)))

(declare-fun c!701471 () Bool)

(assert (=> b!4061505 (= c!701471 ((_ is EmptyLang!11869) (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))

(assert (= (and d!1207261 c!701470) b!4061498))

(assert (= (and d!1207261 (not c!701470)) b!4061496))

(assert (= (and d!1207261 c!701469) b!4061504))

(assert (= (and d!1207261 (not c!701469)) b!4061505))

(assert (= (and b!4061505 c!701471) b!4061495))

(assert (= (and b!4061505 (not c!701471)) b!4061492))

(assert (= (and b!4061492 (not res!1656696)) b!4061502))

(assert (= (and b!4061502 res!1656695) b!4061501))

(assert (= (and b!4061501 res!1656702) b!4061500))

(assert (= (and b!4061500 res!1656701) b!4061497))

(assert (= (and b!4061502 (not res!1656700)) b!4061499))

(assert (= (and b!4061499 res!1656699) b!4061494))

(assert (= (and b!4061494 (not res!1656697)) b!4061493))

(assert (= (and b!4061493 (not res!1656698)) b!4061503))

(assert (= (or b!4061504 b!4061494 b!4061501) bm!288227))

(assert (=> b!4061500 m!4667385))

(assert (=> b!4061500 m!4667385))

(declare-fun m!4667485 () Bool)

(assert (=> b!4061500 m!4667485))

(assert (=> b!4061493 m!4667385))

(assert (=> b!4061493 m!4667385))

(assert (=> b!4061493 m!4667485))

(declare-fun m!4667487 () Bool)

(assert (=> d!1207261 m!4667487))

(assert (=> d!1207261 m!4667167))

(assert (=> b!4061496 m!4667393))

(assert (=> b!4061496 m!4667393))

(declare-fun m!4667489 () Bool)

(assert (=> b!4061496 m!4667489))

(assert (=> b!4061496 m!4667385))

(assert (=> b!4061496 m!4667489))

(assert (=> b!4061496 m!4667385))

(declare-fun m!4667491 () Bool)

(assert (=> b!4061496 m!4667491))

(assert (=> b!4061503 m!4667393))

(assert (=> b!4061497 m!4667393))

(assert (=> b!4061498 m!4667175))

(assert (=> bm!288227 m!4667487))

(assert (=> b!4061170 d!1207261))

(declare-fun e!2520331 () Bool)

(declare-fun b!4061511 () Bool)

(declare-fun lt!1451116 () List!43511)

(assert (=> b!4061511 (= e!2520331 (or (not (= newSuffix!27 Nil!43387)) (= lt!1451116 prefix!494)))))

(declare-fun d!1207265 () Bool)

(assert (=> d!1207265 e!2520331))

(declare-fun res!1656704 () Bool)

(assert (=> d!1207265 (=> (not res!1656704) (not e!2520331))))

(assert (=> d!1207265 (= res!1656704 (= (content!6617 lt!1451116) ((_ map or) (content!6617 prefix!494) (content!6617 newSuffix!27))))))

(declare-fun e!2520333 () List!43511)

(assert (=> d!1207265 (= lt!1451116 e!2520333)))

(declare-fun c!701472 () Bool)

(assert (=> d!1207265 (= c!701472 ((_ is Nil!43387) prefix!494))))

(assert (=> d!1207265 (= (++!11366 prefix!494 newSuffix!27) lt!1451116)))

(declare-fun b!4061508 () Bool)

(assert (=> b!4061508 (= e!2520333 newSuffix!27)))

(declare-fun b!4061509 () Bool)

(assert (=> b!4061509 (= e!2520333 (Cons!43387 (h!48807 prefix!494) (++!11366 (t!336622 prefix!494) newSuffix!27)))))

(declare-fun b!4061510 () Bool)

(declare-fun res!1656703 () Bool)

(assert (=> b!4061510 (=> (not res!1656703) (not e!2520331))))

(assert (=> b!4061510 (= res!1656703 (= (size!32440 lt!1451116) (+ (size!32440 prefix!494) (size!32440 newSuffix!27))))))

(assert (= (and d!1207265 c!701472) b!4061508))

(assert (= (and d!1207265 (not c!701472)) b!4061509))

(assert (= (and d!1207265 res!1656704) b!4061510))

(assert (= (and b!4061510 res!1656703) b!4061511))

(declare-fun m!4667495 () Bool)

(assert (=> d!1207265 m!4667495))

(assert (=> d!1207265 m!4667321))

(declare-fun m!4667497 () Bool)

(assert (=> d!1207265 m!4667497))

(declare-fun m!4667499 () Bool)

(assert (=> b!4061509 m!4667499))

(declare-fun m!4667501 () Bool)

(assert (=> b!4061510 m!4667501))

(assert (=> b!4061510 m!4667083))

(assert (=> b!4061510 m!4666949))

(assert (=> b!4061140 d!1207265))

(declare-fun e!2520335 () Bool)

(declare-fun b!4061515 () Bool)

(declare-fun lt!1451117 () List!43511)

(assert (=> b!4061515 (= e!2520335 (or (not (= newSuffixResult!27 Nil!43387)) (= lt!1451117 lt!1450946)))))

(declare-fun d!1207267 () Bool)

(assert (=> d!1207267 e!2520335))

(declare-fun res!1656706 () Bool)

(assert (=> d!1207267 (=> (not res!1656706) (not e!2520335))))

(assert (=> d!1207267 (= res!1656706 (= (content!6617 lt!1451117) ((_ map or) (content!6617 lt!1450946) (content!6617 newSuffixResult!27))))))

(declare-fun e!2520336 () List!43511)

(assert (=> d!1207267 (= lt!1451117 e!2520336)))

(declare-fun c!701473 () Bool)

(assert (=> d!1207267 (= c!701473 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207267 (= (++!11366 lt!1450946 newSuffixResult!27) lt!1451117)))

(declare-fun b!4061512 () Bool)

(assert (=> b!4061512 (= e!2520336 newSuffixResult!27)))

(declare-fun b!4061513 () Bool)

(assert (=> b!4061513 (= e!2520336 (Cons!43387 (h!48807 lt!1450946) (++!11366 (t!336622 lt!1450946) newSuffixResult!27)))))

(declare-fun b!4061514 () Bool)

(declare-fun res!1656705 () Bool)

(assert (=> b!4061514 (=> (not res!1656705) (not e!2520335))))

(assert (=> b!4061514 (= res!1656705 (= (size!32440 lt!1451117) (+ (size!32440 lt!1450946) (size!32440 newSuffixResult!27))))))

(assert (= (and d!1207267 c!701473) b!4061512))

(assert (= (and d!1207267 (not c!701473)) b!4061513))

(assert (= (and d!1207267 res!1656706) b!4061514))

(assert (= (and b!4061514 res!1656705) b!4061515))

(declare-fun m!4667509 () Bool)

(assert (=> d!1207267 m!4667509))

(declare-fun m!4667511 () Bool)

(assert (=> d!1207267 m!4667511))

(declare-fun m!4667513 () Bool)

(assert (=> d!1207267 m!4667513))

(declare-fun m!4667515 () Bool)

(assert (=> b!4061513 m!4667515))

(declare-fun m!4667517 () Bool)

(assert (=> b!4061514 m!4667517))

(assert (=> b!4061514 m!4667081))

(declare-fun m!4667519 () Bool)

(assert (=> b!4061514 m!4667519))

(assert (=> b!4061140 d!1207267))

(declare-fun d!1207273 () Bool)

(declare-fun lt!1451119 () Int)

(assert (=> d!1207273 (>= lt!1451119 0)))

(declare-fun e!2520337 () Int)

(assert (=> d!1207273 (= lt!1451119 e!2520337)))

(declare-fun c!701474 () Bool)

(assert (=> d!1207273 (= c!701474 ((_ is Nil!43387) (originalCharacters!7564 token!484)))))

(assert (=> d!1207273 (= (size!32440 (originalCharacters!7564 token!484)) lt!1451119)))

(declare-fun b!4061516 () Bool)

(assert (=> b!4061516 (= e!2520337 0)))

(declare-fun b!4061517 () Bool)

(assert (=> b!4061517 (= e!2520337 (+ 1 (size!32440 (t!336622 (originalCharacters!7564 token!484)))))))

(assert (= (and d!1207273 c!701474) b!4061516))

(assert (= (and d!1207273 (not c!701474)) b!4061517))

(declare-fun m!4667521 () Bool)

(assert (=> b!4061517 m!4667521))

(assert (=> b!4061162 d!1207273))

(declare-fun b!4061521 () Bool)

(declare-fun e!2520338 () Bool)

(declare-fun lt!1451120 () List!43511)

(assert (=> b!4061521 (= e!2520338 (or (not (= lt!1450963 Nil!43387)) (= lt!1451120 lt!1450946)))))

(declare-fun d!1207275 () Bool)

(assert (=> d!1207275 e!2520338))

(declare-fun res!1656708 () Bool)

(assert (=> d!1207275 (=> (not res!1656708) (not e!2520338))))

(assert (=> d!1207275 (= res!1656708 (= (content!6617 lt!1451120) ((_ map or) (content!6617 lt!1450946) (content!6617 lt!1450963))))))

(declare-fun e!2520339 () List!43511)

(assert (=> d!1207275 (= lt!1451120 e!2520339)))

(declare-fun c!701475 () Bool)

(assert (=> d!1207275 (= c!701475 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207275 (= (++!11366 lt!1450946 lt!1450963) lt!1451120)))

(declare-fun b!4061518 () Bool)

(assert (=> b!4061518 (= e!2520339 lt!1450963)))

(declare-fun b!4061519 () Bool)

(assert (=> b!4061519 (= e!2520339 (Cons!43387 (h!48807 lt!1450946) (++!11366 (t!336622 lt!1450946) lt!1450963)))))

(declare-fun b!4061520 () Bool)

(declare-fun res!1656707 () Bool)

(assert (=> b!4061520 (=> (not res!1656707) (not e!2520338))))

(assert (=> b!4061520 (= res!1656707 (= (size!32440 lt!1451120) (+ (size!32440 lt!1450946) (size!32440 lt!1450963))))))

(assert (= (and d!1207275 c!701475) b!4061518))

(assert (= (and d!1207275 (not c!701475)) b!4061519))

(assert (= (and d!1207275 res!1656708) b!4061520))

(assert (= (and b!4061520 res!1656707) b!4061521))

(declare-fun m!4667523 () Bool)

(assert (=> d!1207275 m!4667523))

(assert (=> d!1207275 m!4667511))

(declare-fun m!4667525 () Bool)

(assert (=> d!1207275 m!4667525))

(declare-fun m!4667527 () Bool)

(assert (=> b!4061519 m!4667527))

(declare-fun m!4667529 () Bool)

(assert (=> b!4061520 m!4667529))

(assert (=> b!4061520 m!4667081))

(declare-fun m!4667531 () Bool)

(assert (=> b!4061520 m!4667531))

(assert (=> b!4061142 d!1207275))

(declare-fun d!1207277 () Bool)

(declare-fun lt!1451121 () List!43511)

(assert (=> d!1207277 (= (++!11366 lt!1450946 lt!1451121) prefix!494)))

(declare-fun e!2520340 () List!43511)

(assert (=> d!1207277 (= lt!1451121 e!2520340)))

(declare-fun c!701476 () Bool)

(assert (=> d!1207277 (= c!701476 ((_ is Cons!43387) lt!1450946))))

(assert (=> d!1207277 (>= (size!32440 prefix!494) (size!32440 lt!1450946))))

(assert (=> d!1207277 (= (getSuffix!2468 prefix!494 lt!1450946) lt!1451121)))

(declare-fun b!4061522 () Bool)

(assert (=> b!4061522 (= e!2520340 (getSuffix!2468 (tail!6304 prefix!494) (t!336622 lt!1450946)))))

(declare-fun b!4061523 () Bool)

(assert (=> b!4061523 (= e!2520340 prefix!494)))

(assert (= (and d!1207277 c!701476) b!4061522))

(assert (= (and d!1207277 (not c!701476)) b!4061523))

(declare-fun m!4667533 () Bool)

(assert (=> d!1207277 m!4667533))

(assert (=> d!1207277 m!4667083))

(assert (=> d!1207277 m!4667081))

(declare-fun m!4667535 () Bool)

(assert (=> b!4061522 m!4667535))

(assert (=> b!4061522 m!4667535))

(declare-fun m!4667537 () Bool)

(assert (=> b!4061522 m!4667537))

(assert (=> b!4061142 d!1207277))

(declare-fun b!4061524 () Bool)

(declare-fun e!2520342 () Bool)

(declare-fun e!2520341 () Bool)

(assert (=> b!4061524 (= e!2520342 e!2520341)))

(declare-fun res!1656712 () Bool)

(assert (=> b!4061524 (=> (not res!1656712) (not e!2520341))))

(assert (=> b!4061524 (= res!1656712 (not ((_ is Nil!43387) prefix!494)))))

(declare-fun b!4061526 () Bool)

(assert (=> b!4061526 (= e!2520341 (isPrefix!4051 (tail!6304 lt!1450946) (tail!6304 prefix!494)))))

(declare-fun b!4061527 () Bool)

(declare-fun e!2520343 () Bool)

(assert (=> b!4061527 (= e!2520343 (>= (size!32440 prefix!494) (size!32440 lt!1450946)))))

(declare-fun b!4061525 () Bool)

(declare-fun res!1656711 () Bool)

(assert (=> b!4061525 (=> (not res!1656711) (not e!2520341))))

(assert (=> b!4061525 (= res!1656711 (= (head!8572 lt!1450946) (head!8572 prefix!494)))))

(declare-fun d!1207279 () Bool)

(assert (=> d!1207279 e!2520343))

(declare-fun res!1656709 () Bool)

(assert (=> d!1207279 (=> res!1656709 e!2520343)))

(declare-fun lt!1451122 () Bool)

(assert (=> d!1207279 (= res!1656709 (not lt!1451122))))

(assert (=> d!1207279 (= lt!1451122 e!2520342)))

(declare-fun res!1656710 () Bool)

(assert (=> d!1207279 (=> res!1656710 e!2520342)))

(assert (=> d!1207279 (= res!1656710 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207279 (= (isPrefix!4051 lt!1450946 prefix!494) lt!1451122)))

(assert (= (and d!1207279 (not res!1656710)) b!4061524))

(assert (= (and b!4061524 res!1656712) b!4061525))

(assert (= (and b!4061525 res!1656711) b!4061526))

(assert (= (and d!1207279 (not res!1656709)) b!4061527))

(assert (=> b!4061526 m!4667161))

(assert (=> b!4061526 m!4667535))

(assert (=> b!4061526 m!4667161))

(assert (=> b!4061526 m!4667535))

(declare-fun m!4667539 () Bool)

(assert (=> b!4061526 m!4667539))

(assert (=> b!4061527 m!4667083))

(assert (=> b!4061527 m!4667081))

(assert (=> b!4061525 m!4667169))

(declare-fun m!4667541 () Bool)

(assert (=> b!4061525 m!4667541))

(assert (=> b!4061142 d!1207279))

(declare-fun d!1207281 () Bool)

(assert (=> d!1207281 (isPrefix!4051 lt!1450946 prefix!494)))

(declare-fun lt!1451125 () Unit!62811)

(declare-fun choose!24688 (List!43511 List!43511 List!43511) Unit!62811)

(assert (=> d!1207281 (= lt!1451125 (choose!24688 prefix!494 lt!1450946 lt!1450984))))

(assert (=> d!1207281 (isPrefix!4051 prefix!494 lt!1450984)))

(assert (=> d!1207281 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!615 prefix!494 lt!1450946 lt!1450984) lt!1451125)))

(declare-fun bs!592128 () Bool)

(assert (= bs!592128 d!1207281))

(assert (=> bs!592128 m!4667125))

(declare-fun m!4667543 () Bool)

(assert (=> bs!592128 m!4667543))

(assert (=> bs!592128 m!4667023))

(assert (=> b!4061142 d!1207281))

(declare-fun d!1207283 () Bool)

(declare-fun fromListB!2364 (List!43511) BalanceConc!25944)

(assert (=> d!1207283 (= (seqFromList!5181 lt!1450942) (fromListB!2364 lt!1450942))))

(declare-fun bs!592129 () Bool)

(assert (= bs!592129 d!1207283))

(declare-fun m!4667545 () Bool)

(assert (=> bs!592129 m!4667545))

(assert (=> b!4061143 d!1207283))

(declare-fun d!1207285 () Bool)

(assert (=> d!1207285 (= (size!32439 token!484) (size!32440 (originalCharacters!7564 token!484)))))

(declare-fun Unit!62819 () Unit!62811)

(assert (=> d!1207285 (= (lemmaCharactersSize!1483 token!484) Unit!62819)))

(declare-fun bs!592130 () Bool)

(assert (= bs!592130 d!1207285))

(assert (=> bs!592130 m!4667103))

(assert (=> b!4061143 d!1207285))

(declare-fun d!1207287 () Bool)

(declare-fun lt!1451126 () Int)

(assert (=> d!1207287 (>= lt!1451126 0)))

(declare-fun e!2520344 () Int)

(assert (=> d!1207287 (= lt!1451126 e!2520344)))

(declare-fun c!701477 () Bool)

(assert (=> d!1207287 (= c!701477 ((_ is Nil!43387) lt!1450942))))

(assert (=> d!1207287 (= (size!32440 lt!1450942) lt!1451126)))

(declare-fun b!4061528 () Bool)

(assert (=> b!4061528 (= e!2520344 0)))

(declare-fun b!4061529 () Bool)

(assert (=> b!4061529 (= e!2520344 (+ 1 (size!32440 (t!336622 lt!1450942))))))

(assert (= (and d!1207287 c!701477) b!4061528))

(assert (= (and d!1207287 (not c!701477)) b!4061529))

(declare-fun m!4667547 () Bool)

(assert (=> b!4061529 m!4667547))

(assert (=> b!4061143 d!1207287))

(declare-fun b!4061533 () Bool)

(declare-fun lt!1451127 () List!43511)

(declare-fun e!2520345 () Bool)

(assert (=> b!4061533 (= e!2520345 (or (not (= newSuffixResult!27 Nil!43387)) (= lt!1451127 lt!1450942)))))

(declare-fun d!1207289 () Bool)

(assert (=> d!1207289 e!2520345))

(declare-fun res!1656714 () Bool)

(assert (=> d!1207289 (=> (not res!1656714) (not e!2520345))))

(assert (=> d!1207289 (= res!1656714 (= (content!6617 lt!1451127) ((_ map or) (content!6617 lt!1450942) (content!6617 newSuffixResult!27))))))

(declare-fun e!2520346 () List!43511)

(assert (=> d!1207289 (= lt!1451127 e!2520346)))

(declare-fun c!701478 () Bool)

(assert (=> d!1207289 (= c!701478 ((_ is Nil!43387) lt!1450942))))

(assert (=> d!1207289 (= (++!11366 lt!1450942 newSuffixResult!27) lt!1451127)))

(declare-fun b!4061530 () Bool)

(assert (=> b!4061530 (= e!2520346 newSuffixResult!27)))

(declare-fun b!4061531 () Bool)

(assert (=> b!4061531 (= e!2520346 (Cons!43387 (h!48807 lt!1450942) (++!11366 (t!336622 lt!1450942) newSuffixResult!27)))))

(declare-fun b!4061532 () Bool)

(declare-fun res!1656713 () Bool)

(assert (=> b!4061532 (=> (not res!1656713) (not e!2520345))))

(assert (=> b!4061532 (= res!1656713 (= (size!32440 lt!1451127) (+ (size!32440 lt!1450942) (size!32440 newSuffixResult!27))))))

(assert (= (and d!1207289 c!701478) b!4061530))

(assert (= (and d!1207289 (not c!701478)) b!4061531))

(assert (= (and d!1207289 res!1656714) b!4061532))

(assert (= (and b!4061532 res!1656713) b!4061533))

(declare-fun m!4667549 () Bool)

(assert (=> d!1207289 m!4667549))

(assert (=> d!1207289 m!4667141))

(assert (=> d!1207289 m!4667513))

(declare-fun m!4667551 () Bool)

(assert (=> b!4061531 m!4667551))

(declare-fun m!4667553 () Bool)

(assert (=> b!4061532 m!4667553))

(assert (=> b!4061532 m!4667067))

(assert (=> b!4061532 m!4667519))

(assert (=> b!4061143 d!1207289))

(declare-fun d!1207291 () Bool)

(assert (=> d!1207291 (isPrefix!4051 lt!1450942 (++!11366 lt!1450942 (_2!24357 (v!39797 lt!1450988))))))

(declare-fun lt!1451128 () Unit!62811)

(assert (=> d!1207291 (= lt!1451128 (choose!24684 lt!1450942 (_2!24357 (v!39797 lt!1450988))))))

(assert (=> d!1207291 (= (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450942 (_2!24357 (v!39797 lt!1450988))) lt!1451128)))

(declare-fun bs!592131 () Bool)

(assert (= bs!592131 d!1207291))

(assert (=> bs!592131 m!4667063))

(assert (=> bs!592131 m!4667063))

(declare-fun m!4667555 () Bool)

(assert (=> bs!592131 m!4667555))

(declare-fun m!4667557 () Bool)

(assert (=> bs!592131 m!4667557))

(assert (=> b!4061143 d!1207291))

(declare-fun d!1207293 () Bool)

(assert (=> d!1207293 (isPrefix!4051 lt!1450942 (++!11366 lt!1450942 newSuffixResult!27))))

(declare-fun lt!1451129 () Unit!62811)

(assert (=> d!1207293 (= lt!1451129 (choose!24684 lt!1450942 newSuffixResult!27))))

(assert (=> d!1207293 (= (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450942 newSuffixResult!27) lt!1451129)))

(declare-fun bs!592132 () Bool)

(assert (= bs!592132 d!1207293))

(assert (=> bs!592132 m!4667047))

(assert (=> bs!592132 m!4667047))

(assert (=> bs!592132 m!4667051))

(declare-fun m!4667559 () Bool)

(assert (=> bs!592132 m!4667559))

(assert (=> b!4061143 d!1207293))

(declare-fun d!1207295 () Bool)

(assert (=> d!1207295 (ruleValid!2894 thiss!21717 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))

(declare-fun lt!1451132 () Unit!62811)

(declare-fun choose!24690 (LexerInterface!6553 Rule!13728 List!43513) Unit!62811)

(assert (=> d!1207295 (= lt!1451132 (choose!24690 thiss!21717 (rule!10056 (_1!24357 (v!39797 lt!1450988))) rules!2999))))

(assert (=> d!1207295 (contains!8632 rules!2999 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))

(assert (=> d!1207295 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1964 thiss!21717 (rule!10056 (_1!24357 (v!39797 lt!1450988))) rules!2999) lt!1451132)))

(declare-fun bs!592133 () Bool)

(assert (= bs!592133 d!1207295))

(assert (=> bs!592133 m!4667065))

(declare-fun m!4667561 () Bool)

(assert (=> bs!592133 m!4667561))

(assert (=> bs!592133 m!4667025))

(assert (=> b!4061143 d!1207295))

(declare-fun d!1207297 () Bool)

(declare-fun dynLambda!18438 (Int BalanceConc!25944) TokenValue!7194)

(assert (=> d!1207297 (= (apply!10153 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) (seqFromList!5181 lt!1450942)) (dynLambda!18438 (toValue!9524 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))) (seqFromList!5181 lt!1450942)))))

(declare-fun b_lambda!118687 () Bool)

(assert (=> (not b_lambda!118687) (not d!1207297)))

(declare-fun tb!244349 () Bool)

(declare-fun t!336638 () Bool)

(assert (=> (and b!4061144 (= (toValue!9524 (transformation!6964 (h!48809 rules!2999))) (toValue!9524 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))) t!336638) tb!244349))

(declare-fun result!296072 () Bool)

(assert (=> tb!244349 (= result!296072 (inv!21 (dynLambda!18438 (toValue!9524 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))) (seqFromList!5181 lt!1450942))))))

(declare-fun m!4667563 () Bool)

(assert (=> tb!244349 m!4667563))

(assert (=> d!1207297 t!336638))

(declare-fun b_and!312283 () Bool)

(assert (= b_and!312259 (and (=> t!336638 result!296072) b_and!312283)))

(declare-fun tb!244351 () Bool)

(declare-fun t!336640 () Bool)

(assert (=> (and b!4061141 (= (toValue!9524 (transformation!6964 (rule!10056 token!484))) (toValue!9524 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))) t!336640) tb!244351))

(declare-fun result!296076 () Bool)

(assert (= result!296076 result!296072))

(assert (=> d!1207297 t!336640))

(declare-fun b_and!312285 () Bool)

(assert (= b_and!312263 (and (=> t!336640 result!296076) b_and!312285)))

(assert (=> d!1207297 m!4667073))

(declare-fun m!4667565 () Bool)

(assert (=> d!1207297 m!4667565))

(assert (=> b!4061143 d!1207297))

(declare-fun b!4061536 () Bool)

(declare-fun e!2520351 () Bool)

(declare-fun e!2520350 () Bool)

(assert (=> b!4061536 (= e!2520351 e!2520350)))

(declare-fun res!1656718 () Bool)

(assert (=> b!4061536 (=> (not res!1656718) (not e!2520350))))

(assert (=> b!4061536 (= res!1656718 (not ((_ is Nil!43387) lt!1450951)))))

(declare-fun b!4061538 () Bool)

(assert (=> b!4061538 (= e!2520350 (isPrefix!4051 (tail!6304 lt!1450942) (tail!6304 lt!1450951)))))

(declare-fun b!4061539 () Bool)

(declare-fun e!2520352 () Bool)

(assert (=> b!4061539 (= e!2520352 (>= (size!32440 lt!1450951) (size!32440 lt!1450942)))))

(declare-fun b!4061537 () Bool)

(declare-fun res!1656717 () Bool)

(assert (=> b!4061537 (=> (not res!1656717) (not e!2520350))))

(assert (=> b!4061537 (= res!1656717 (= (head!8572 lt!1450942) (head!8572 lt!1450951)))))

(declare-fun d!1207299 () Bool)

(assert (=> d!1207299 e!2520352))

(declare-fun res!1656715 () Bool)

(assert (=> d!1207299 (=> res!1656715 e!2520352)))

(declare-fun lt!1451133 () Bool)

(assert (=> d!1207299 (= res!1656715 (not lt!1451133))))

(assert (=> d!1207299 (= lt!1451133 e!2520351)))

(declare-fun res!1656716 () Bool)

(assert (=> d!1207299 (=> res!1656716 e!2520351)))

(assert (=> d!1207299 (= res!1656716 ((_ is Nil!43387) lt!1450942))))

(assert (=> d!1207299 (= (isPrefix!4051 lt!1450942 lt!1450951) lt!1451133)))

(assert (= (and d!1207299 (not res!1656716)) b!4061536))

(assert (= (and b!4061536 res!1656718) b!4061537))

(assert (= (and b!4061537 res!1656717) b!4061538))

(assert (= (and d!1207299 (not res!1656715)) b!4061539))

(assert (=> b!4061538 m!4667385))

(declare-fun m!4667567 () Bool)

(assert (=> b!4061538 m!4667567))

(assert (=> b!4061538 m!4667385))

(assert (=> b!4061538 m!4667567))

(declare-fun m!4667569 () Bool)

(assert (=> b!4061538 m!4667569))

(declare-fun m!4667571 () Bool)

(assert (=> b!4061539 m!4667571))

(assert (=> b!4061539 m!4667067))

(assert (=> b!4061537 m!4667393))

(declare-fun m!4667573 () Bool)

(assert (=> b!4061537 m!4667573))

(assert (=> b!4061143 d!1207299))

(declare-fun b!4061543 () Bool)

(declare-fun e!2520353 () Bool)

(declare-fun lt!1451134 () List!43511)

(assert (=> b!4061543 (= e!2520353 (or (not (= (_2!24357 (v!39797 lt!1450988)) Nil!43387)) (= lt!1451134 lt!1450942)))))

(declare-fun d!1207301 () Bool)

(assert (=> d!1207301 e!2520353))

(declare-fun res!1656720 () Bool)

(assert (=> d!1207301 (=> (not res!1656720) (not e!2520353))))

(assert (=> d!1207301 (= res!1656720 (= (content!6617 lt!1451134) ((_ map or) (content!6617 lt!1450942) (content!6617 (_2!24357 (v!39797 lt!1450988))))))))

(declare-fun e!2520354 () List!43511)

(assert (=> d!1207301 (= lt!1451134 e!2520354)))

(declare-fun c!701479 () Bool)

(assert (=> d!1207301 (= c!701479 ((_ is Nil!43387) lt!1450942))))

(assert (=> d!1207301 (= (++!11366 lt!1450942 (_2!24357 (v!39797 lt!1450988))) lt!1451134)))

(declare-fun b!4061540 () Bool)

(assert (=> b!4061540 (= e!2520354 (_2!24357 (v!39797 lt!1450988)))))

(declare-fun b!4061541 () Bool)

(assert (=> b!4061541 (= e!2520354 (Cons!43387 (h!48807 lt!1450942) (++!11366 (t!336622 lt!1450942) (_2!24357 (v!39797 lt!1450988)))))))

(declare-fun b!4061542 () Bool)

(declare-fun res!1656719 () Bool)

(assert (=> b!4061542 (=> (not res!1656719) (not e!2520353))))

(assert (=> b!4061542 (= res!1656719 (= (size!32440 lt!1451134) (+ (size!32440 lt!1450942) (size!32440 (_2!24357 (v!39797 lt!1450988))))))))

(assert (= (and d!1207301 c!701479) b!4061540))

(assert (= (and d!1207301 (not c!701479)) b!4061541))

(assert (= (and d!1207301 res!1656720) b!4061542))

(assert (= (and b!4061542 res!1656719) b!4061543))

(declare-fun m!4667575 () Bool)

(assert (=> d!1207301 m!4667575))

(assert (=> d!1207301 m!4667141))

(declare-fun m!4667577 () Bool)

(assert (=> d!1207301 m!4667577))

(declare-fun m!4667579 () Bool)

(assert (=> b!4061541 m!4667579))

(declare-fun m!4667581 () Bool)

(assert (=> b!4061542 m!4667581))

(assert (=> b!4061542 m!4667067))

(declare-fun m!4667583 () Bool)

(assert (=> b!4061542 m!4667583))

(assert (=> b!4061143 d!1207301))

(declare-fun d!1207303 () Bool)

(assert (=> d!1207303 (= (list!16172 (charsOf!4780 (_1!24357 (v!39797 lt!1450988)))) (list!16173 (c!701408 (charsOf!4780 (_1!24357 (v!39797 lt!1450988))))))))

(declare-fun bs!592134 () Bool)

(assert (= bs!592134 d!1207303))

(declare-fun m!4667585 () Bool)

(assert (=> bs!592134 m!4667585))

(assert (=> b!4061143 d!1207303))

(declare-fun d!1207305 () Bool)

(declare-fun e!2520357 () Bool)

(assert (=> d!1207305 e!2520357))

(declare-fun res!1656723 () Bool)

(assert (=> d!1207305 (=> (not res!1656723) (not e!2520357))))

(assert (=> d!1207305 (= res!1656723 (semiInverseModEq!2977 (toChars!9383 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))) (toValue!9524 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))))

(declare-fun Unit!62820 () Unit!62811)

(assert (=> d!1207305 (= (lemmaInv!1173 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))) Unit!62820)))

(declare-fun b!4061546 () Bool)

(assert (=> b!4061546 (= e!2520357 (equivClasses!2876 (toChars!9383 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))) (toValue!9524 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))))

(assert (= (and d!1207305 res!1656723) b!4061546))

(declare-fun m!4667587 () Bool)

(assert (=> d!1207305 m!4667587))

(declare-fun m!4667589 () Bool)

(assert (=> b!4061546 m!4667589))

(assert (=> b!4061143 d!1207305))

(declare-fun b!4061547 () Bool)

(declare-fun e!2520359 () Bool)

(declare-fun e!2520358 () Bool)

(assert (=> b!4061547 (= e!2520359 e!2520358)))

(declare-fun res!1656727 () Bool)

(assert (=> b!4061547 (=> (not res!1656727) (not e!2520358))))

(assert (=> b!4061547 (= res!1656727 (not ((_ is Nil!43387) (++!11366 lt!1450942 newSuffixResult!27))))))

(declare-fun b!4061549 () Bool)

(assert (=> b!4061549 (= e!2520358 (isPrefix!4051 (tail!6304 lt!1450942) (tail!6304 (++!11366 lt!1450942 newSuffixResult!27))))))

(declare-fun b!4061550 () Bool)

(declare-fun e!2520360 () Bool)

(assert (=> b!4061550 (= e!2520360 (>= (size!32440 (++!11366 lt!1450942 newSuffixResult!27)) (size!32440 lt!1450942)))))

(declare-fun b!4061548 () Bool)

(declare-fun res!1656726 () Bool)

(assert (=> b!4061548 (=> (not res!1656726) (not e!2520358))))

(assert (=> b!4061548 (= res!1656726 (= (head!8572 lt!1450942) (head!8572 (++!11366 lt!1450942 newSuffixResult!27))))))

(declare-fun d!1207307 () Bool)

(assert (=> d!1207307 e!2520360))

(declare-fun res!1656724 () Bool)

(assert (=> d!1207307 (=> res!1656724 e!2520360)))

(declare-fun lt!1451135 () Bool)

(assert (=> d!1207307 (= res!1656724 (not lt!1451135))))

(assert (=> d!1207307 (= lt!1451135 e!2520359)))

(declare-fun res!1656725 () Bool)

(assert (=> d!1207307 (=> res!1656725 e!2520359)))

(assert (=> d!1207307 (= res!1656725 ((_ is Nil!43387) lt!1450942))))

(assert (=> d!1207307 (= (isPrefix!4051 lt!1450942 (++!11366 lt!1450942 newSuffixResult!27)) lt!1451135)))

(assert (= (and d!1207307 (not res!1656725)) b!4061547))

(assert (= (and b!4061547 res!1656727) b!4061548))

(assert (= (and b!4061548 res!1656726) b!4061549))

(assert (= (and d!1207307 (not res!1656724)) b!4061550))

(assert (=> b!4061549 m!4667385))

(assert (=> b!4061549 m!4667047))

(declare-fun m!4667591 () Bool)

(assert (=> b!4061549 m!4667591))

(assert (=> b!4061549 m!4667385))

(assert (=> b!4061549 m!4667591))

(declare-fun m!4667593 () Bool)

(assert (=> b!4061549 m!4667593))

(assert (=> b!4061550 m!4667047))

(declare-fun m!4667595 () Bool)

(assert (=> b!4061550 m!4667595))

(assert (=> b!4061550 m!4667067))

(assert (=> b!4061548 m!4667393))

(assert (=> b!4061548 m!4667047))

(declare-fun m!4667597 () Bool)

(assert (=> b!4061548 m!4667597))

(assert (=> b!4061143 d!1207307))

(declare-fun d!1207309 () Bool)

(declare-fun res!1656732 () Bool)

(declare-fun e!2520363 () Bool)

(assert (=> d!1207309 (=> (not res!1656732) (not e!2520363))))

(assert (=> d!1207309 (= res!1656732 (validRegex!5369 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))))

(assert (=> d!1207309 (= (ruleValid!2894 thiss!21717 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) e!2520363)))

(declare-fun b!4061555 () Bool)

(declare-fun res!1656733 () Bool)

(assert (=> b!4061555 (=> (not res!1656733) (not e!2520363))))

(assert (=> b!4061555 (= res!1656733 (not (nullable!4169 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))))

(declare-fun b!4061556 () Bool)

(assert (=> b!4061556 (= e!2520363 (not (= (tag!7824 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) (String!49689 ""))))))

(assert (= (and d!1207309 res!1656732) b!4061555))

(assert (= (and b!4061555 res!1656733) b!4061556))

(assert (=> d!1207309 m!4667167))

(assert (=> b!4061555 m!4667175))

(assert (=> b!4061143 d!1207309))

(declare-fun d!1207311 () Bool)

(assert (=> d!1207311 (= (maxPrefixOneRule!2863 thiss!21717 (rule!10056 (_1!24357 (v!39797 lt!1450988))) lt!1450973) (Some!9377 (tuple2!42447 (Token!13067 (apply!10153 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) (seqFromList!5181 lt!1450942)) (rule!10056 (_1!24357 (v!39797 lt!1450988))) (size!32440 lt!1450942) lt!1450942) (_2!24357 (v!39797 lt!1450988)))))))

(declare-fun lt!1451138 () Unit!62811)

(declare-fun choose!24691 (LexerInterface!6553 List!43513 List!43511 List!43511 List!43511 Rule!13728) Unit!62811)

(assert (=> d!1207311 (= lt!1451138 (choose!24691 thiss!21717 rules!2999 lt!1450942 lt!1450973 (_2!24357 (v!39797 lt!1450988)) (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(assert (=> d!1207311 (not (isEmpty!25889 rules!2999))))

(assert (=> d!1207311 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1669 thiss!21717 rules!2999 lt!1450942 lt!1450973 (_2!24357 (v!39797 lt!1450988)) (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1451138)))

(declare-fun bs!592135 () Bool)

(assert (= bs!592135 d!1207311))

(assert (=> bs!592135 m!4667073))

(declare-fun m!4667599 () Bool)

(assert (=> bs!592135 m!4667599))

(assert (=> bs!592135 m!4667013))

(assert (=> bs!592135 m!4667073))

(assert (=> bs!592135 m!4667075))

(assert (=> bs!592135 m!4667067))

(assert (=> bs!592135 m!4667061))

(assert (=> b!4061143 d!1207311))

(declare-fun d!1207313 () Bool)

(assert (=> d!1207313 (= (size!32439 (_1!24357 (v!39797 lt!1450988))) (size!32440 (originalCharacters!7564 (_1!24357 (v!39797 lt!1450988)))))))

(declare-fun Unit!62821 () Unit!62811)

(assert (=> d!1207313 (= (lemmaCharactersSize!1483 (_1!24357 (v!39797 lt!1450988))) Unit!62821)))

(declare-fun bs!592136 () Bool)

(assert (= bs!592136 d!1207313))

(declare-fun m!4667601 () Bool)

(assert (=> bs!592136 m!4667601))

(assert (=> b!4061143 d!1207313))

(declare-fun b!4061670 () Bool)

(declare-fun res!1656797 () Bool)

(declare-fun e!2520422 () Bool)

(assert (=> b!4061670 (=> (not res!1656797) (not e!2520422))))

(declare-fun lt!1451193 () Option!9378)

(assert (=> b!4061670 (= res!1656797 (= (rule!10056 (_1!24357 (get!14229 lt!1451193))) (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(declare-fun b!4061671 () Bool)

(assert (=> b!4061671 (= e!2520422 (= (size!32439 (_1!24357 (get!14229 lt!1451193))) (size!32440 (originalCharacters!7564 (_1!24357 (get!14229 lt!1451193))))))))

(declare-fun d!1207315 () Bool)

(declare-fun e!2520423 () Bool)

(assert (=> d!1207315 e!2520423))

(declare-fun res!1656801 () Bool)

(assert (=> d!1207315 (=> res!1656801 e!2520423)))

(assert (=> d!1207315 (= res!1656801 (isEmpty!25892 lt!1451193))))

(declare-fun e!2520425 () Option!9378)

(assert (=> d!1207315 (= lt!1451193 e!2520425)))

(declare-fun c!701505 () Bool)

(declare-datatypes ((tuple2!42450 0))(
  ( (tuple2!42451 (_1!24359 List!43511) (_2!24359 List!43511)) )
))
(declare-fun lt!1451191 () tuple2!42450)

(assert (=> d!1207315 (= c!701505 (isEmpty!25891 (_1!24359 lt!1451191)))))

(declare-fun findLongestMatch!1320 (Regex!11869 List!43511) tuple2!42450)

(assert (=> d!1207315 (= lt!1451191 (findLongestMatch!1320 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1450973))))

(assert (=> d!1207315 (ruleValid!2894 thiss!21717 (rule!10056 (_1!24357 (v!39797 lt!1450988))))))

(assert (=> d!1207315 (= (maxPrefixOneRule!2863 thiss!21717 (rule!10056 (_1!24357 (v!39797 lt!1450988))) lt!1450973) lt!1451193)))

(declare-fun b!4061672 () Bool)

(assert (=> b!4061672 (= e!2520425 None!9377)))

(declare-fun b!4061673 () Bool)

(declare-fun res!1656798 () Bool)

(assert (=> b!4061673 (=> (not res!1656798) (not e!2520422))))

(assert (=> b!4061673 (= res!1656798 (< (size!32440 (_2!24357 (get!14229 lt!1451193))) (size!32440 lt!1450973)))))

(declare-fun b!4061674 () Bool)

(declare-fun res!1656799 () Bool)

(assert (=> b!4061674 (=> (not res!1656799) (not e!2520422))))

(assert (=> b!4061674 (= res!1656799 (= (++!11366 (list!16172 (charsOf!4780 (_1!24357 (get!14229 lt!1451193)))) (_2!24357 (get!14229 lt!1451193))) lt!1450973))))

(declare-fun b!4061675 () Bool)

(declare-fun size!32442 (BalanceConc!25944) Int)

(assert (=> b!4061675 (= e!2520425 (Some!9377 (tuple2!42447 (Token!13067 (apply!10153 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) (seqFromList!5181 (_1!24359 lt!1451191))) (rule!10056 (_1!24357 (v!39797 lt!1450988))) (size!32442 (seqFromList!5181 (_1!24359 lt!1451191))) (_1!24359 lt!1451191)) (_2!24359 lt!1451191))))))

(declare-fun lt!1451192 () Unit!62811)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1380 (Regex!11869 List!43511) Unit!62811)

(assert (=> b!4061675 (= lt!1451192 (longestMatchIsAcceptedByMatchOrIsEmpty!1380 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1450973))))

(declare-fun res!1656800 () Bool)

(declare-fun findLongestMatchInner!1407 (Regex!11869 List!43511 Int List!43511 List!43511 Int) tuple2!42450)

(assert (=> b!4061675 (= res!1656800 (isEmpty!25891 (_1!24359 (findLongestMatchInner!1407 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) Nil!43387 (size!32440 Nil!43387) lt!1450973 lt!1450973 (size!32440 lt!1450973)))))))

(declare-fun e!2520424 () Bool)

(assert (=> b!4061675 (=> res!1656800 e!2520424)))

(assert (=> b!4061675 e!2520424))

(declare-fun lt!1451195 () Unit!62811)

(assert (=> b!4061675 (= lt!1451195 lt!1451192)))

(declare-fun lt!1451194 () Unit!62811)

(declare-fun lemmaSemiInverse!1935 (TokenValueInjection!13816 BalanceConc!25944) Unit!62811)

(assert (=> b!4061675 (= lt!1451194 (lemmaSemiInverse!1935 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) (seqFromList!5181 (_1!24359 lt!1451191))))))

(declare-fun b!4061676 () Bool)

(assert (=> b!4061676 (= e!2520423 e!2520422)))

(declare-fun res!1656802 () Bool)

(assert (=> b!4061676 (=> (not res!1656802) (not e!2520422))))

(assert (=> b!4061676 (= res!1656802 (matchR!5822 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) (list!16172 (charsOf!4780 (_1!24357 (get!14229 lt!1451193))))))))

(declare-fun b!4061677 () Bool)

(assert (=> b!4061677 (= e!2520424 (matchR!5822 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) (_1!24359 (findLongestMatchInner!1407 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) Nil!43387 (size!32440 Nil!43387) lt!1450973 lt!1450973 (size!32440 lt!1450973)))))))

(declare-fun b!4061678 () Bool)

(declare-fun res!1656803 () Bool)

(assert (=> b!4061678 (=> (not res!1656803) (not e!2520422))))

(assert (=> b!4061678 (= res!1656803 (= (value!219108 (_1!24357 (get!14229 lt!1451193))) (apply!10153 (transformation!6964 (rule!10056 (_1!24357 (get!14229 lt!1451193)))) (seqFromList!5181 (originalCharacters!7564 (_1!24357 (get!14229 lt!1451193)))))))))

(assert (= (and d!1207315 c!701505) b!4061672))

(assert (= (and d!1207315 (not c!701505)) b!4061675))

(assert (= (and b!4061675 (not res!1656800)) b!4061677))

(assert (= (and d!1207315 (not res!1656801)) b!4061676))

(assert (= (and b!4061676 res!1656802) b!4061674))

(assert (= (and b!4061674 res!1656799) b!4061673))

(assert (= (and b!4061673 res!1656798) b!4061670))

(assert (= (and b!4061670 res!1656797) b!4061678))

(assert (= (and b!4061678 res!1656803) b!4061671))

(declare-fun m!4667741 () Bool)

(assert (=> b!4061675 m!4667741))

(declare-fun m!4667743 () Bool)

(assert (=> b!4061675 m!4667743))

(assert (=> b!4061675 m!4667741))

(declare-fun m!4667745 () Bool)

(assert (=> b!4061675 m!4667745))

(declare-fun m!4667747 () Bool)

(assert (=> b!4061675 m!4667747))

(assert (=> b!4061675 m!4667153))

(declare-fun m!4667749 () Bool)

(assert (=> b!4061675 m!4667749))

(assert (=> b!4061675 m!4667741))

(declare-fun m!4667751 () Bool)

(assert (=> b!4061675 m!4667751))

(declare-fun m!4667753 () Bool)

(assert (=> b!4061675 m!4667753))

(assert (=> b!4061675 m!4667749))

(assert (=> b!4061675 m!4667153))

(declare-fun m!4667755 () Bool)

(assert (=> b!4061675 m!4667755))

(assert (=> b!4061675 m!4667741))

(declare-fun m!4667757 () Bool)

(assert (=> b!4061676 m!4667757))

(declare-fun m!4667759 () Bool)

(assert (=> b!4061676 m!4667759))

(assert (=> b!4061676 m!4667759))

(declare-fun m!4667763 () Bool)

(assert (=> b!4061676 m!4667763))

(assert (=> b!4061676 m!4667763))

(declare-fun m!4667767 () Bool)

(assert (=> b!4061676 m!4667767))

(declare-fun m!4667769 () Bool)

(assert (=> d!1207315 m!4667769))

(declare-fun m!4667771 () Bool)

(assert (=> d!1207315 m!4667771))

(declare-fun m!4667773 () Bool)

(assert (=> d!1207315 m!4667773))

(assert (=> d!1207315 m!4667065))

(assert (=> b!4061670 m!4667757))

(assert (=> b!4061673 m!4667757))

(declare-fun m!4667775 () Bool)

(assert (=> b!4061673 m!4667775))

(assert (=> b!4061673 m!4667153))

(assert (=> b!4061671 m!4667757))

(declare-fun m!4667777 () Bool)

(assert (=> b!4061671 m!4667777))

(assert (=> b!4061677 m!4667749))

(assert (=> b!4061677 m!4667153))

(assert (=> b!4061677 m!4667749))

(assert (=> b!4061677 m!4667153))

(assert (=> b!4061677 m!4667755))

(declare-fun m!4667779 () Bool)

(assert (=> b!4061677 m!4667779))

(assert (=> b!4061674 m!4667757))

(assert (=> b!4061674 m!4667759))

(assert (=> b!4061674 m!4667759))

(assert (=> b!4061674 m!4667763))

(assert (=> b!4061674 m!4667763))

(declare-fun m!4667781 () Bool)

(assert (=> b!4061674 m!4667781))

(assert (=> b!4061678 m!4667757))

(declare-fun m!4667783 () Bool)

(assert (=> b!4061678 m!4667783))

(assert (=> b!4061678 m!4667783))

(declare-fun m!4667785 () Bool)

(assert (=> b!4061678 m!4667785))

(assert (=> b!4061143 d!1207315))

(declare-fun d!1207359 () Bool)

(declare-fun lt!1451196 () BalanceConc!25944)

(assert (=> d!1207359 (= (list!16172 lt!1451196) (originalCharacters!7564 (_1!24357 (v!39797 lt!1450988))))))

(assert (=> d!1207359 (= lt!1451196 (dynLambda!18436 (toChars!9383 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))) (value!219108 (_1!24357 (v!39797 lt!1450988)))))))

(assert (=> d!1207359 (= (charsOf!4780 (_1!24357 (v!39797 lt!1450988))) lt!1451196)))

(declare-fun b_lambda!118689 () Bool)

(assert (=> (not b_lambda!118689) (not d!1207359)))

(declare-fun tb!244353 () Bool)

(declare-fun t!336642 () Bool)

(assert (=> (and b!4061144 (= (toChars!9383 (transformation!6964 (h!48809 rules!2999))) (toChars!9383 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))) t!336642) tb!244353))

(declare-fun b!4061686 () Bool)

(declare-fun e!2520431 () Bool)

(declare-fun tp!1230157 () Bool)

(assert (=> b!4061686 (= e!2520431 (and (inv!58008 (c!701408 (dynLambda!18436 (toChars!9383 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))) (value!219108 (_1!24357 (v!39797 lt!1450988)))))) tp!1230157))))

(declare-fun result!296078 () Bool)

(assert (=> tb!244353 (= result!296078 (and (inv!58009 (dynLambda!18436 (toChars!9383 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988))))) (value!219108 (_1!24357 (v!39797 lt!1450988))))) e!2520431))))

(assert (= tb!244353 b!4061686))

(declare-fun m!4667787 () Bool)

(assert (=> b!4061686 m!4667787))

(declare-fun m!4667789 () Bool)

(assert (=> tb!244353 m!4667789))

(assert (=> d!1207359 t!336642))

(declare-fun b_and!312287 () Bool)

(assert (= b_and!312275 (and (=> t!336642 result!296078) b_and!312287)))

(declare-fun t!336644 () Bool)

(declare-fun tb!244355 () Bool)

(assert (=> (and b!4061141 (= (toChars!9383 (transformation!6964 (rule!10056 token!484))) (toChars!9383 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))) t!336644) tb!244355))

(declare-fun result!296080 () Bool)

(assert (= result!296080 result!296078))

(assert (=> d!1207359 t!336644))

(declare-fun b_and!312289 () Bool)

(assert (= b_and!312277 (and (=> t!336644 result!296080) b_and!312289)))

(declare-fun m!4667791 () Bool)

(assert (=> d!1207359 m!4667791))

(declare-fun m!4667793 () Bool)

(assert (=> d!1207359 m!4667793))

(assert (=> b!4061143 d!1207359))

(declare-fun b!4061692 () Bool)

(declare-fun e!2520432 () Bool)

(declare-fun lt!1451197 () List!43511)

(assert (=> b!4061692 (= e!2520432 (or (not (= lt!1450976 Nil!43387)) (= lt!1451197 prefix!494)))))

(declare-fun d!1207361 () Bool)

(assert (=> d!1207361 e!2520432))

(declare-fun res!1656812 () Bool)

(assert (=> d!1207361 (=> (not res!1656812) (not e!2520432))))

(assert (=> d!1207361 (= res!1656812 (= (content!6617 lt!1451197) ((_ map or) (content!6617 prefix!494) (content!6617 lt!1450976))))))

(declare-fun e!2520433 () List!43511)

(assert (=> d!1207361 (= lt!1451197 e!2520433)))

(declare-fun c!701506 () Bool)

(assert (=> d!1207361 (= c!701506 ((_ is Nil!43387) prefix!494))))

(assert (=> d!1207361 (= (++!11366 prefix!494 lt!1450976) lt!1451197)))

(declare-fun b!4061687 () Bool)

(assert (=> b!4061687 (= e!2520433 lt!1450976)))

(declare-fun b!4061689 () Bool)

(assert (=> b!4061689 (= e!2520433 (Cons!43387 (h!48807 prefix!494) (++!11366 (t!336622 prefix!494) lt!1450976)))))

(declare-fun b!4061691 () Bool)

(declare-fun res!1656811 () Bool)

(assert (=> b!4061691 (=> (not res!1656811) (not e!2520432))))

(assert (=> b!4061691 (= res!1656811 (= (size!32440 lt!1451197) (+ (size!32440 prefix!494) (size!32440 lt!1450976))))))

(assert (= (and d!1207361 c!701506) b!4061687))

(assert (= (and d!1207361 (not c!701506)) b!4061689))

(assert (= (and d!1207361 res!1656812) b!4061691))

(assert (= (and b!4061691 res!1656811) b!4061692))

(declare-fun m!4667795 () Bool)

(assert (=> d!1207361 m!4667795))

(assert (=> d!1207361 m!4667321))

(declare-fun m!4667797 () Bool)

(assert (=> d!1207361 m!4667797))

(declare-fun m!4667799 () Bool)

(assert (=> b!4061689 m!4667799))

(declare-fun m!4667801 () Bool)

(assert (=> b!4061691 m!4667801))

(assert (=> b!4061691 m!4667083))

(declare-fun m!4667803 () Bool)

(assert (=> b!4061691 m!4667803))

(assert (=> b!4061155 d!1207361))

(declare-fun lt!1451198 () List!43511)

(declare-fun e!2520435 () Bool)

(declare-fun b!4061696 () Bool)

(assert (=> b!4061696 (= e!2520435 (or (not (= lt!1450968 Nil!43387)) (= lt!1451198 lt!1450973)))))

(declare-fun d!1207365 () Bool)

(assert (=> d!1207365 e!2520435))

(declare-fun res!1656816 () Bool)

(assert (=> d!1207365 (=> (not res!1656816) (not e!2520435))))

(assert (=> d!1207365 (= res!1656816 (= (content!6617 lt!1451198) ((_ map or) (content!6617 lt!1450973) (content!6617 lt!1450968))))))

(declare-fun e!2520436 () List!43511)

(assert (=> d!1207365 (= lt!1451198 e!2520436)))

(declare-fun c!701507 () Bool)

(assert (=> d!1207365 (= c!701507 ((_ is Nil!43387) lt!1450973))))

(assert (=> d!1207365 (= (++!11366 lt!1450973 lt!1450968) lt!1451198)))

(declare-fun b!4061693 () Bool)

(assert (=> b!4061693 (= e!2520436 lt!1450968)))

(declare-fun b!4061694 () Bool)

(assert (=> b!4061694 (= e!2520436 (Cons!43387 (h!48807 lt!1450973) (++!11366 (t!336622 lt!1450973) lt!1450968)))))

(declare-fun b!4061695 () Bool)

(declare-fun res!1656815 () Bool)

(assert (=> b!4061695 (=> (not res!1656815) (not e!2520435))))

(assert (=> b!4061695 (= res!1656815 (= (size!32440 lt!1451198) (+ (size!32440 lt!1450973) (size!32440 lt!1450968))))))

(assert (= (and d!1207365 c!701507) b!4061693))

(assert (= (and d!1207365 (not c!701507)) b!4061694))

(assert (= (and d!1207365 res!1656816) b!4061695))

(assert (= (and b!4061695 res!1656815) b!4061696))

(declare-fun m!4667805 () Bool)

(assert (=> d!1207365 m!4667805))

(declare-fun m!4667807 () Bool)

(assert (=> d!1207365 m!4667807))

(declare-fun m!4667809 () Bool)

(assert (=> d!1207365 m!4667809))

(declare-fun m!4667811 () Bool)

(assert (=> b!4061694 m!4667811))

(declare-fun m!4667813 () Bool)

(assert (=> b!4061695 m!4667813))

(assert (=> b!4061695 m!4667153))

(declare-fun m!4667815 () Bool)

(assert (=> b!4061695 m!4667815))

(assert (=> b!4061155 d!1207365))

(declare-fun d!1207367 () Bool)

(assert (=> d!1207367 (= (++!11366 (++!11366 prefix!494 newSuffix!27) lt!1450968) (++!11366 prefix!494 (++!11366 newSuffix!27 lt!1450968)))))

(declare-fun lt!1451204 () Unit!62811)

(declare-fun choose!24693 (List!43511 List!43511 List!43511) Unit!62811)

(assert (=> d!1207367 (= lt!1451204 (choose!24693 prefix!494 newSuffix!27 lt!1450968))))

(assert (=> d!1207367 (= (lemmaConcatAssociativity!2668 prefix!494 newSuffix!27 lt!1450968) lt!1451204)))

(declare-fun bs!592144 () Bool)

(assert (= bs!592144 d!1207367))

(declare-fun m!4667819 () Bool)

(assert (=> bs!592144 m!4667819))

(assert (=> bs!592144 m!4667001))

(assert (=> bs!592144 m!4667099))

(declare-fun m!4667821 () Bool)

(assert (=> bs!592144 m!4667821))

(assert (=> bs!592144 m!4667001))

(declare-fun m!4667823 () Bool)

(assert (=> bs!592144 m!4667823))

(assert (=> bs!592144 m!4667099))

(assert (=> b!4061155 d!1207367))

(declare-fun d!1207371 () Bool)

(assert (=> d!1207371 (= (inv!58001 (tag!7824 (h!48809 rules!2999))) (= (mod (str.len (value!219107 (tag!7824 (h!48809 rules!2999)))) 2) 0))))

(assert (=> b!4061134 d!1207371))

(declare-fun d!1207373 () Bool)

(declare-fun res!1656817 () Bool)

(declare-fun e!2520437 () Bool)

(assert (=> d!1207373 (=> (not res!1656817) (not e!2520437))))

(assert (=> d!1207373 (= res!1656817 (semiInverseModEq!2977 (toChars!9383 (transformation!6964 (h!48809 rules!2999))) (toValue!9524 (transformation!6964 (h!48809 rules!2999)))))))

(assert (=> d!1207373 (= (inv!58005 (transformation!6964 (h!48809 rules!2999))) e!2520437)))

(declare-fun b!4061697 () Bool)

(assert (=> b!4061697 (= e!2520437 (equivClasses!2876 (toChars!9383 (transformation!6964 (h!48809 rules!2999))) (toValue!9524 (transformation!6964 (h!48809 rules!2999)))))))

(assert (= (and d!1207373 res!1656817) b!4061697))

(declare-fun m!4667825 () Bool)

(assert (=> d!1207373 m!4667825))

(declare-fun m!4667827 () Bool)

(assert (=> b!4061697 m!4667827))

(assert (=> b!4061134 d!1207373))

(declare-fun lt!1451205 () List!43511)

(declare-fun b!4061701 () Bool)

(declare-fun e!2520438 () Bool)

(assert (=> b!4061701 (= e!2520438 (or (not (= suffixResult!105 Nil!43387)) (= lt!1451205 lt!1450946)))))

(declare-fun d!1207375 () Bool)

(assert (=> d!1207375 e!2520438))

(declare-fun res!1656819 () Bool)

(assert (=> d!1207375 (=> (not res!1656819) (not e!2520438))))

(assert (=> d!1207375 (= res!1656819 (= (content!6617 lt!1451205) ((_ map or) (content!6617 lt!1450946) (content!6617 suffixResult!105))))))

(declare-fun e!2520439 () List!43511)

(assert (=> d!1207375 (= lt!1451205 e!2520439)))

(declare-fun c!701508 () Bool)

(assert (=> d!1207375 (= c!701508 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207375 (= (++!11366 lt!1450946 suffixResult!105) lt!1451205)))

(declare-fun b!4061698 () Bool)

(assert (=> b!4061698 (= e!2520439 suffixResult!105)))

(declare-fun b!4061699 () Bool)

(assert (=> b!4061699 (= e!2520439 (Cons!43387 (h!48807 lt!1450946) (++!11366 (t!336622 lt!1450946) suffixResult!105)))))

(declare-fun b!4061700 () Bool)

(declare-fun res!1656818 () Bool)

(assert (=> b!4061700 (=> (not res!1656818) (not e!2520438))))

(assert (=> b!4061700 (= res!1656818 (= (size!32440 lt!1451205) (+ (size!32440 lt!1450946) (size!32440 suffixResult!105))))))

(assert (= (and d!1207375 c!701508) b!4061698))

(assert (= (and d!1207375 (not c!701508)) b!4061699))

(assert (= (and d!1207375 res!1656819) b!4061700))

(assert (= (and b!4061700 res!1656818) b!4061701))

(declare-fun m!4667829 () Bool)

(assert (=> d!1207375 m!4667829))

(assert (=> d!1207375 m!4667511))

(declare-fun m!4667831 () Bool)

(assert (=> d!1207375 m!4667831))

(declare-fun m!4667833 () Bool)

(assert (=> b!4061699 m!4667833))

(declare-fun m!4667835 () Bool)

(assert (=> b!4061700 m!4667835))

(assert (=> b!4061700 m!4667081))

(declare-fun m!4667837 () Bool)

(assert (=> b!4061700 m!4667837))

(assert (=> b!4061135 d!1207375))

(declare-fun d!1207377 () Bool)

(declare-fun e!2520442 () Bool)

(assert (=> d!1207377 e!2520442))

(declare-fun res!1656820 () Bool)

(assert (=> d!1207377 (=> (not res!1656820) (not e!2520442))))

(assert (=> d!1207377 (= res!1656820 (semiInverseModEq!2977 (toChars!9383 (transformation!6964 (rule!10056 token!484))) (toValue!9524 (transformation!6964 (rule!10056 token!484)))))))

(declare-fun Unit!62823 () Unit!62811)

(assert (=> d!1207377 (= (lemmaInv!1173 (transformation!6964 (rule!10056 token!484))) Unit!62823)))

(declare-fun b!4061706 () Bool)

(assert (=> b!4061706 (= e!2520442 (equivClasses!2876 (toChars!9383 (transformation!6964 (rule!10056 token!484))) (toValue!9524 (transformation!6964 (rule!10056 token!484)))))))

(assert (= (and d!1207377 res!1656820) b!4061706))

(assert (=> d!1207377 m!4667329))

(assert (=> b!4061706 m!4667331))

(assert (=> b!4061135 d!1207377))

(declare-fun d!1207379 () Bool)

(declare-fun res!1656823 () Bool)

(declare-fun e!2520447 () Bool)

(assert (=> d!1207379 (=> (not res!1656823) (not e!2520447))))

(assert (=> d!1207379 (= res!1656823 (validRegex!5369 (regex!6964 (rule!10056 token!484))))))

(assert (=> d!1207379 (= (ruleValid!2894 thiss!21717 (rule!10056 token!484)) e!2520447)))

(declare-fun b!4061713 () Bool)

(declare-fun res!1656824 () Bool)

(assert (=> b!4061713 (=> (not res!1656824) (not e!2520447))))

(assert (=> b!4061713 (= res!1656824 (not (nullable!4169 (regex!6964 (rule!10056 token!484)))))))

(declare-fun b!4061714 () Bool)

(assert (=> b!4061714 (= e!2520447 (not (= (tag!7824 (rule!10056 token!484)) (String!49689 ""))))))

(assert (= (and d!1207379 res!1656823) b!4061713))

(assert (= (and b!4061713 res!1656824) b!4061714))

(assert (=> d!1207379 m!4667401))

(assert (=> b!4061713 m!4667407))

(assert (=> b!4061135 d!1207379))

(declare-fun d!1207381 () Bool)

(assert (=> d!1207381 (ruleValid!2894 thiss!21717 (rule!10056 token!484))))

(declare-fun lt!1451206 () Unit!62811)

(assert (=> d!1207381 (= lt!1451206 (choose!24690 thiss!21717 (rule!10056 token!484) rules!2999))))

(assert (=> d!1207381 (contains!8632 rules!2999 (rule!10056 token!484))))

(assert (=> d!1207381 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1964 thiss!21717 (rule!10056 token!484) rules!2999) lt!1451206)))

(declare-fun bs!592145 () Bool)

(assert (= bs!592145 d!1207381))

(assert (=> bs!592145 m!4667109))

(declare-fun m!4667839 () Bool)

(assert (=> bs!592145 m!4667839))

(assert (=> bs!592145 m!4667131))

(assert (=> b!4061135 d!1207381))

(declare-fun d!1207383 () Bool)

(assert (=> d!1207383 (= (isEmpty!25889 rules!2999) ((_ is Nil!43389) rules!2999))))

(assert (=> b!4061156 d!1207383))

(declare-fun d!1207385 () Bool)

(declare-fun res!1656828 () Bool)

(declare-fun e!2520453 () Bool)

(assert (=> d!1207385 (=> (not res!1656828) (not e!2520453))))

(declare-fun rulesValid!2712 (LexerInterface!6553 List!43513) Bool)

(assert (=> d!1207385 (= res!1656828 (rulesValid!2712 thiss!21717 rules!2999))))

(assert (=> d!1207385 (= (rulesInvariant!5896 thiss!21717 rules!2999) e!2520453)))

(declare-fun b!4061722 () Bool)

(declare-datatypes ((List!43515 0))(
  ( (Nil!43391) (Cons!43391 (h!48811 String!49688) (t!336674 List!43515)) )
))
(declare-fun noDuplicateTag!2713 (LexerInterface!6553 List!43513 List!43515) Bool)

(assert (=> b!4061722 (= e!2520453 (noDuplicateTag!2713 thiss!21717 rules!2999 Nil!43391))))

(assert (= (and d!1207385 res!1656828) b!4061722))

(declare-fun m!4667847 () Bool)

(assert (=> d!1207385 m!4667847))

(declare-fun m!4667849 () Bool)

(assert (=> b!4061722 m!4667849))

(assert (=> b!4061157 d!1207385))

(declare-fun d!1207389 () Bool)

(assert (=> d!1207389 (not (matchR!5822 (regex!6964 (rule!10056 token!484)) lt!1450946))))

(declare-fun lt!1451215 () Unit!62811)

(declare-fun choose!24696 (LexerInterface!6553 List!43513 Rule!13728 List!43511 List!43511 List!43511 Rule!13728) Unit!62811)

(assert (=> d!1207389 (= lt!1451215 (choose!24696 thiss!21717 rules!2999 (rule!10056 (_1!24357 (v!39797 lt!1450988))) lt!1450942 lt!1450973 lt!1450946 (rule!10056 token!484)))))

(assert (=> d!1207389 (isPrefix!4051 lt!1450942 lt!1450973)))

(assert (=> d!1207389 (= (lemmaMaxPrefixOutputsMaxPrefix!490 thiss!21717 rules!2999 (rule!10056 (_1!24357 (v!39797 lt!1450988))) lt!1450942 lt!1450973 lt!1450946 (rule!10056 token!484)) lt!1451215)))

(declare-fun bs!592148 () Bool)

(assert (= bs!592148 d!1207389))

(assert (=> bs!592148 m!4666993))

(declare-fun m!4667871 () Bool)

(assert (=> bs!592148 m!4667871))

(assert (=> bs!592148 m!4667097))

(assert (=> b!4061136 d!1207389))

(declare-fun b!4061748 () Bool)

(declare-fun res!1656838 () Bool)

(declare-fun e!2520470 () Bool)

(assert (=> b!4061748 (=> res!1656838 e!2520470)))

(assert (=> b!4061748 (= res!1656838 (not ((_ is IntegerValue!21584) (value!219108 token!484))))))

(declare-fun e!2520469 () Bool)

(assert (=> b!4061748 (= e!2520469 e!2520470)))

(declare-fun b!4061749 () Bool)

(declare-fun inv!15 (TokenValue!7194) Bool)

(assert (=> b!4061749 (= e!2520470 (inv!15 (value!219108 token!484)))))

(declare-fun b!4061750 () Bool)

(declare-fun e!2520471 () Bool)

(declare-fun inv!16 (TokenValue!7194) Bool)

(assert (=> b!4061750 (= e!2520471 (inv!16 (value!219108 token!484)))))

(declare-fun d!1207403 () Bool)

(declare-fun c!701523 () Bool)

(assert (=> d!1207403 (= c!701523 ((_ is IntegerValue!21582) (value!219108 token!484)))))

(assert (=> d!1207403 (= (inv!21 (value!219108 token!484)) e!2520471)))

(declare-fun b!4061751 () Bool)

(declare-fun inv!17 (TokenValue!7194) Bool)

(assert (=> b!4061751 (= e!2520469 (inv!17 (value!219108 token!484)))))

(declare-fun b!4061752 () Bool)

(assert (=> b!4061752 (= e!2520471 e!2520469)))

(declare-fun c!701524 () Bool)

(assert (=> b!4061752 (= c!701524 ((_ is IntegerValue!21583) (value!219108 token!484)))))

(assert (= (and d!1207403 c!701523) b!4061750))

(assert (= (and d!1207403 (not c!701523)) b!4061752))

(assert (= (and b!4061752 c!701524) b!4061751))

(assert (= (and b!4061752 (not c!701524)) b!4061748))

(assert (= (and b!4061748 (not res!1656838)) b!4061749))

(declare-fun m!4667889 () Bool)

(assert (=> b!4061749 m!4667889))

(declare-fun m!4667891 () Bool)

(assert (=> b!4061750 m!4667891))

(declare-fun m!4667893 () Bool)

(assert (=> b!4061751 m!4667893))

(assert (=> b!4061137 d!1207403))

(declare-fun b!4061753 () Bool)

(declare-fun e!2520473 () Bool)

(declare-fun e!2520472 () Bool)

(assert (=> b!4061753 (= e!2520473 e!2520472)))

(declare-fun res!1656842 () Bool)

(assert (=> b!4061753 (=> (not res!1656842) (not e!2520472))))

(assert (=> b!4061753 (= res!1656842 (not ((_ is Nil!43387) suffix!1299)))))

(declare-fun b!4061755 () Bool)

(assert (=> b!4061755 (= e!2520472 (isPrefix!4051 (tail!6304 newSuffix!27) (tail!6304 suffix!1299)))))

(declare-fun b!4061756 () Bool)

(declare-fun e!2520474 () Bool)

(assert (=> b!4061756 (= e!2520474 (>= (size!32440 suffix!1299) (size!32440 newSuffix!27)))))

(declare-fun b!4061754 () Bool)

(declare-fun res!1656841 () Bool)

(assert (=> b!4061754 (=> (not res!1656841) (not e!2520472))))

(assert (=> b!4061754 (= res!1656841 (= (head!8572 newSuffix!27) (head!8572 suffix!1299)))))

(declare-fun d!1207413 () Bool)

(assert (=> d!1207413 e!2520474))

(declare-fun res!1656839 () Bool)

(assert (=> d!1207413 (=> res!1656839 e!2520474)))

(declare-fun lt!1451222 () Bool)

(assert (=> d!1207413 (= res!1656839 (not lt!1451222))))

(assert (=> d!1207413 (= lt!1451222 e!2520473)))

(declare-fun res!1656840 () Bool)

(assert (=> d!1207413 (=> res!1656840 e!2520473)))

(assert (=> d!1207413 (= res!1656840 ((_ is Nil!43387) newSuffix!27))))

(assert (=> d!1207413 (= (isPrefix!4051 newSuffix!27 suffix!1299) lt!1451222)))

(assert (= (and d!1207413 (not res!1656840)) b!4061753))

(assert (= (and b!4061753 res!1656842) b!4061754))

(assert (= (and b!4061754 res!1656841) b!4061755))

(assert (= (and d!1207413 (not res!1656839)) b!4061756))

(declare-fun m!4667897 () Bool)

(assert (=> b!4061755 m!4667897))

(declare-fun m!4667899 () Bool)

(assert (=> b!4061755 m!4667899))

(assert (=> b!4061755 m!4667897))

(assert (=> b!4061755 m!4667899))

(declare-fun m!4667901 () Bool)

(assert (=> b!4061755 m!4667901))

(assert (=> b!4061756 m!4666947))

(assert (=> b!4061756 m!4666949))

(declare-fun m!4667905 () Bool)

(assert (=> b!4061754 m!4667905))

(declare-fun m!4667907 () Bool)

(assert (=> b!4061754 m!4667907))

(assert (=> b!4061158 d!1207413))

(declare-fun b!4061765 () Bool)

(declare-fun e!2520482 () Bool)

(declare-fun e!2520481 () Bool)

(assert (=> b!4061765 (= e!2520482 e!2520481)))

(declare-fun res!1656854 () Bool)

(assert (=> b!4061765 (=> (not res!1656854) (not e!2520481))))

(assert (=> b!4061765 (= res!1656854 (not ((_ is Nil!43387) lt!1450967)))))

(declare-fun b!4061767 () Bool)

(assert (=> b!4061767 (= e!2520481 (isPrefix!4051 (tail!6304 lt!1450946) (tail!6304 lt!1450967)))))

(declare-fun b!4061768 () Bool)

(declare-fun e!2520483 () Bool)

(assert (=> b!4061768 (= e!2520483 (>= (size!32440 lt!1450967) (size!32440 lt!1450946)))))

(declare-fun b!4061766 () Bool)

(declare-fun res!1656853 () Bool)

(assert (=> b!4061766 (=> (not res!1656853) (not e!2520481))))

(assert (=> b!4061766 (= res!1656853 (= (head!8572 lt!1450946) (head!8572 lt!1450967)))))

(declare-fun d!1207419 () Bool)

(assert (=> d!1207419 e!2520483))

(declare-fun res!1656851 () Bool)

(assert (=> d!1207419 (=> res!1656851 e!2520483)))

(declare-fun lt!1451225 () Bool)

(assert (=> d!1207419 (= res!1656851 (not lt!1451225))))

(assert (=> d!1207419 (= lt!1451225 e!2520482)))

(declare-fun res!1656852 () Bool)

(assert (=> d!1207419 (=> res!1656852 e!2520482)))

(assert (=> d!1207419 (= res!1656852 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207419 (= (isPrefix!4051 lt!1450946 lt!1450967) lt!1451225)))

(assert (= (and d!1207419 (not res!1656852)) b!4061765))

(assert (= (and b!4061765 res!1656854) b!4061766))

(assert (= (and b!4061766 res!1656853) b!4061767))

(assert (= (and d!1207419 (not res!1656851)) b!4061768))

(assert (=> b!4061767 m!4667161))

(declare-fun m!4667909 () Bool)

(assert (=> b!4061767 m!4667909))

(assert (=> b!4061767 m!4667161))

(assert (=> b!4061767 m!4667909))

(declare-fun m!4667911 () Bool)

(assert (=> b!4061767 m!4667911))

(declare-fun m!4667913 () Bool)

(assert (=> b!4061768 m!4667913))

(assert (=> b!4061768 m!4667081))

(assert (=> b!4061766 m!4667169))

(declare-fun m!4667915 () Bool)

(assert (=> b!4061766 m!4667915))

(assert (=> b!4061171 d!1207419))

(declare-fun d!1207421 () Bool)

(assert (=> d!1207421 (isPrefix!4051 lt!1450946 (++!11366 lt!1450946 suffixResult!105))))

(declare-fun lt!1451227 () Unit!62811)

(assert (=> d!1207421 (= lt!1451227 (choose!24684 lt!1450946 suffixResult!105))))

(assert (=> d!1207421 (= (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450946 suffixResult!105) lt!1451227)))

(declare-fun bs!592150 () Bool)

(assert (= bs!592150 d!1207421))

(assert (=> bs!592150 m!4667105))

(assert (=> bs!592150 m!4667105))

(declare-fun m!4667919 () Bool)

(assert (=> bs!592150 m!4667919))

(declare-fun m!4667921 () Bool)

(assert (=> bs!592150 m!4667921))

(assert (=> b!4061171 d!1207421))

(declare-fun b!4061773 () Bool)

(declare-fun e!2520488 () Bool)

(declare-fun e!2520487 () Bool)

(assert (=> b!4061773 (= e!2520488 e!2520487)))

(declare-fun res!1656862 () Bool)

(assert (=> b!4061773 (=> (not res!1656862) (not e!2520487))))

(assert (=> b!4061773 (= res!1656862 (not ((_ is Nil!43387) lt!1450984)))))

(declare-fun b!4061775 () Bool)

(assert (=> b!4061775 (= e!2520487 (isPrefix!4051 (tail!6304 prefix!494) (tail!6304 lt!1450984)))))

(declare-fun b!4061776 () Bool)

(declare-fun e!2520489 () Bool)

(assert (=> b!4061776 (= e!2520489 (>= (size!32440 lt!1450984) (size!32440 prefix!494)))))

(declare-fun b!4061774 () Bool)

(declare-fun res!1656861 () Bool)

(assert (=> b!4061774 (=> (not res!1656861) (not e!2520487))))

(assert (=> b!4061774 (= res!1656861 (= (head!8572 prefix!494) (head!8572 lt!1450984)))))

(declare-fun d!1207425 () Bool)

(assert (=> d!1207425 e!2520489))

(declare-fun res!1656859 () Bool)

(assert (=> d!1207425 (=> res!1656859 e!2520489)))

(declare-fun lt!1451228 () Bool)

(assert (=> d!1207425 (= res!1656859 (not lt!1451228))))

(assert (=> d!1207425 (= lt!1451228 e!2520488)))

(declare-fun res!1656860 () Bool)

(assert (=> d!1207425 (=> res!1656860 e!2520488)))

(assert (=> d!1207425 (= res!1656860 ((_ is Nil!43387) prefix!494))))

(assert (=> d!1207425 (= (isPrefix!4051 prefix!494 lt!1450984) lt!1451228)))

(assert (= (and d!1207425 (not res!1656860)) b!4061773))

(assert (= (and b!4061773 res!1656862) b!4061774))

(assert (= (and b!4061774 res!1656861) b!4061775))

(assert (= (and d!1207425 (not res!1656859)) b!4061776))

(assert (=> b!4061775 m!4667535))

(declare-fun m!4667931 () Bool)

(assert (=> b!4061775 m!4667931))

(assert (=> b!4061775 m!4667535))

(assert (=> b!4061775 m!4667931))

(declare-fun m!4667933 () Bool)

(assert (=> b!4061775 m!4667933))

(assert (=> b!4061776 m!4667305))

(assert (=> b!4061776 m!4667083))

(assert (=> b!4061774 m!4667541))

(declare-fun m!4667939 () Bool)

(assert (=> b!4061774 m!4667939))

(assert (=> b!4061171 d!1207425))

(declare-fun d!1207431 () Bool)

(assert (=> d!1207431 (isPrefix!4051 prefix!494 (++!11366 prefix!494 suffix!1299))))

(declare-fun lt!1451231 () Unit!62811)

(assert (=> d!1207431 (= lt!1451231 (choose!24684 prefix!494 suffix!1299))))

(assert (=> d!1207431 (= (lemmaConcatTwoListThenFirstIsPrefix!2886 prefix!494 suffix!1299) lt!1451231)))

(declare-fun bs!592153 () Bool)

(assert (= bs!592153 d!1207431))

(assert (=> bs!592153 m!4666965))

(assert (=> bs!592153 m!4666965))

(declare-fun m!4667945 () Bool)

(assert (=> bs!592153 m!4667945))

(declare-fun m!4667947 () Bool)

(assert (=> bs!592153 m!4667947))

(assert (=> b!4061171 d!1207431))

(declare-fun b!4061777 () Bool)

(declare-fun e!2520491 () Bool)

(declare-fun e!2520490 () Bool)

(assert (=> b!4061777 (= e!2520491 e!2520490)))

(declare-fun res!1656866 () Bool)

(assert (=> b!4061777 (=> (not res!1656866) (not e!2520490))))

(assert (=> b!4061777 (= res!1656866 (not ((_ is Nil!43387) lt!1450984)))))

(declare-fun b!4061779 () Bool)

(assert (=> b!4061779 (= e!2520490 (isPrefix!4051 (tail!6304 lt!1450946) (tail!6304 lt!1450984)))))

(declare-fun b!4061780 () Bool)

(declare-fun e!2520492 () Bool)

(assert (=> b!4061780 (= e!2520492 (>= (size!32440 lt!1450984) (size!32440 lt!1450946)))))

(declare-fun b!4061778 () Bool)

(declare-fun res!1656865 () Bool)

(assert (=> b!4061778 (=> (not res!1656865) (not e!2520490))))

(assert (=> b!4061778 (= res!1656865 (= (head!8572 lt!1450946) (head!8572 lt!1450984)))))

(declare-fun d!1207433 () Bool)

(assert (=> d!1207433 e!2520492))

(declare-fun res!1656863 () Bool)

(assert (=> d!1207433 (=> res!1656863 e!2520492)))

(declare-fun lt!1451232 () Bool)

(assert (=> d!1207433 (= res!1656863 (not lt!1451232))))

(assert (=> d!1207433 (= lt!1451232 e!2520491)))

(declare-fun res!1656864 () Bool)

(assert (=> d!1207433 (=> res!1656864 e!2520491)))

(assert (=> d!1207433 (= res!1656864 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207433 (= (isPrefix!4051 lt!1450946 lt!1450984) lt!1451232)))

(assert (= (and d!1207433 (not res!1656864)) b!4061777))

(assert (= (and b!4061777 res!1656866) b!4061778))

(assert (= (and b!4061778 res!1656865) b!4061779))

(assert (= (and d!1207433 (not res!1656863)) b!4061780))

(assert (=> b!4061779 m!4667161))

(assert (=> b!4061779 m!4667931))

(assert (=> b!4061779 m!4667161))

(assert (=> b!4061779 m!4667931))

(declare-fun m!4667949 () Bool)

(assert (=> b!4061779 m!4667949))

(assert (=> b!4061780 m!4667305))

(assert (=> b!4061780 m!4667081))

(assert (=> b!4061778 m!4667169))

(assert (=> b!4061778 m!4667939))

(assert (=> b!4061171 d!1207433))

(declare-fun b!4061788 () Bool)

(declare-fun e!2520495 () Bool)

(declare-fun lt!1451234 () List!43511)

(assert (=> b!4061788 (= e!2520495 (or (not (= lt!1450968 Nil!43387)) (= lt!1451234 newSuffix!27)))))

(declare-fun d!1207437 () Bool)

(assert (=> d!1207437 e!2520495))

(declare-fun res!1656870 () Bool)

(assert (=> d!1207437 (=> (not res!1656870) (not e!2520495))))

(assert (=> d!1207437 (= res!1656870 (= (content!6617 lt!1451234) ((_ map or) (content!6617 newSuffix!27) (content!6617 lt!1450968))))))

(declare-fun e!2520496 () List!43511)

(assert (=> d!1207437 (= lt!1451234 e!2520496)))

(declare-fun c!701526 () Bool)

(assert (=> d!1207437 (= c!701526 ((_ is Nil!43387) newSuffix!27))))

(assert (=> d!1207437 (= (++!11366 newSuffix!27 lt!1450968) lt!1451234)))

(declare-fun b!4061785 () Bool)

(assert (=> b!4061785 (= e!2520496 lt!1450968)))

(declare-fun b!4061786 () Bool)

(assert (=> b!4061786 (= e!2520496 (Cons!43387 (h!48807 newSuffix!27) (++!11366 (t!336622 newSuffix!27) lt!1450968)))))

(declare-fun b!4061787 () Bool)

(declare-fun res!1656869 () Bool)

(assert (=> b!4061787 (=> (not res!1656869) (not e!2520495))))

(assert (=> b!4061787 (= res!1656869 (= (size!32440 lt!1451234) (+ (size!32440 newSuffix!27) (size!32440 lt!1450968))))))

(assert (= (and d!1207437 c!701526) b!4061785))

(assert (= (and d!1207437 (not c!701526)) b!4061786))

(assert (= (and d!1207437 res!1656870) b!4061787))

(assert (= (and b!4061787 res!1656869) b!4061788))

(declare-fun m!4667959 () Bool)

(assert (=> d!1207437 m!4667959))

(assert (=> d!1207437 m!4667497))

(assert (=> d!1207437 m!4667809))

(declare-fun m!4667963 () Bool)

(assert (=> b!4061786 m!4667963))

(declare-fun m!4667965 () Bool)

(assert (=> b!4061787 m!4667965))

(assert (=> b!4061787 m!4666949))

(assert (=> b!4061787 m!4667815))

(assert (=> b!4061128 d!1207437))

(declare-fun d!1207443 () Bool)

(declare-fun lt!1451237 () List!43511)

(assert (=> d!1207443 (= (++!11366 newSuffix!27 lt!1451237) suffix!1299)))

(declare-fun e!2520500 () List!43511)

(assert (=> d!1207443 (= lt!1451237 e!2520500)))

(declare-fun c!701529 () Bool)

(assert (=> d!1207443 (= c!701529 ((_ is Cons!43387) newSuffix!27))))

(assert (=> d!1207443 (>= (size!32440 suffix!1299) (size!32440 newSuffix!27))))

(assert (=> d!1207443 (= (getSuffix!2468 suffix!1299 newSuffix!27) lt!1451237)))

(declare-fun b!4061795 () Bool)

(assert (=> b!4061795 (= e!2520500 (getSuffix!2468 (tail!6304 suffix!1299) (t!336622 newSuffix!27)))))

(declare-fun b!4061796 () Bool)

(assert (=> b!4061796 (= e!2520500 suffix!1299)))

(assert (= (and d!1207443 c!701529) b!4061795))

(assert (= (and d!1207443 (not c!701529)) b!4061796))

(declare-fun m!4667971 () Bool)

(assert (=> d!1207443 m!4667971))

(assert (=> d!1207443 m!4666947))

(assert (=> d!1207443 m!4666949))

(assert (=> b!4061795 m!4667899))

(assert (=> b!4061795 m!4667899))

(declare-fun m!4667975 () Bool)

(assert (=> b!4061795 m!4667975))

(assert (=> b!4061128 d!1207443))

(declare-fun b!4061797 () Bool)

(declare-fun res!1656876 () Bool)

(declare-fun e!2520501 () Bool)

(assert (=> b!4061797 (=> (not res!1656876) (not e!2520501))))

(declare-fun lt!1451240 () Option!9378)

(assert (=> b!4061797 (= res!1656876 (matchR!5822 (regex!6964 (rule!10056 (_1!24357 (get!14229 lt!1451240)))) (list!16172 (charsOf!4780 (_1!24357 (get!14229 lt!1451240))))))))

(declare-fun b!4061798 () Bool)

(declare-fun e!2520502 () Bool)

(assert (=> b!4061798 (= e!2520502 e!2520501)))

(declare-fun res!1656879 () Bool)

(assert (=> b!4061798 (=> (not res!1656879) (not e!2520501))))

(assert (=> b!4061798 (= res!1656879 (isDefined!7123 lt!1451240))))

(declare-fun b!4061799 () Bool)

(declare-fun res!1656877 () Bool)

(assert (=> b!4061799 (=> (not res!1656877) (not e!2520501))))

(assert (=> b!4061799 (= res!1656877 (= (value!219108 (_1!24357 (get!14229 lt!1451240))) (apply!10153 (transformation!6964 (rule!10056 (_1!24357 (get!14229 lt!1451240)))) (seqFromList!5181 (originalCharacters!7564 (_1!24357 (get!14229 lt!1451240)))))))))

(declare-fun b!4061800 () Bool)

(declare-fun res!1656874 () Bool)

(assert (=> b!4061800 (=> (not res!1656874) (not e!2520501))))

(assert (=> b!4061800 (= res!1656874 (= (list!16172 (charsOf!4780 (_1!24357 (get!14229 lt!1451240)))) (originalCharacters!7564 (_1!24357 (get!14229 lt!1451240)))))))

(declare-fun b!4061801 () Bool)

(assert (=> b!4061801 (= e!2520501 (contains!8632 rules!2999 (rule!10056 (_1!24357 (get!14229 lt!1451240)))))))

(declare-fun b!4061802 () Bool)

(declare-fun res!1656875 () Bool)

(assert (=> b!4061802 (=> (not res!1656875) (not e!2520501))))

(assert (=> b!4061802 (= res!1656875 (= (++!11366 (list!16172 (charsOf!4780 (_1!24357 (get!14229 lt!1451240)))) (_2!24357 (get!14229 lt!1451240))) lt!1450973))))

(declare-fun b!4061803 () Bool)

(declare-fun res!1656873 () Bool)

(assert (=> b!4061803 (=> (not res!1656873) (not e!2520501))))

(assert (=> b!4061803 (= res!1656873 (< (size!32440 (_2!24357 (get!14229 lt!1451240))) (size!32440 lt!1450973)))))

(declare-fun b!4061804 () Bool)

(declare-fun e!2520503 () Option!9378)

(declare-fun lt!1451242 () Option!9378)

(declare-fun lt!1451238 () Option!9378)

(assert (=> b!4061804 (= e!2520503 (ite (and ((_ is None!9377) lt!1451242) ((_ is None!9377) lt!1451238)) None!9377 (ite ((_ is None!9377) lt!1451238) lt!1451242 (ite ((_ is None!9377) lt!1451242) lt!1451238 (ite (>= (size!32439 (_1!24357 (v!39797 lt!1451242))) (size!32439 (_1!24357 (v!39797 lt!1451238)))) lt!1451242 lt!1451238)))))))

(declare-fun call!288234 () Option!9378)

(assert (=> b!4061804 (= lt!1451242 call!288234)))

(assert (=> b!4061804 (= lt!1451238 (maxPrefix!3851 thiss!21717 (t!336624 rules!2999) lt!1450973))))

(declare-fun d!1207447 () Bool)

(assert (=> d!1207447 e!2520502))

(declare-fun res!1656878 () Bool)

(assert (=> d!1207447 (=> res!1656878 e!2520502)))

(assert (=> d!1207447 (= res!1656878 (isEmpty!25892 lt!1451240))))

(assert (=> d!1207447 (= lt!1451240 e!2520503)))

(declare-fun c!701530 () Bool)

(assert (=> d!1207447 (= c!701530 (and ((_ is Cons!43389) rules!2999) ((_ is Nil!43389) (t!336624 rules!2999))))))

(declare-fun lt!1451241 () Unit!62811)

(declare-fun lt!1451239 () Unit!62811)

(assert (=> d!1207447 (= lt!1451241 lt!1451239)))

(assert (=> d!1207447 (isPrefix!4051 lt!1450973 lt!1450973)))

(assert (=> d!1207447 (= lt!1451239 (lemmaIsPrefixRefl!2618 lt!1450973 lt!1450973))))

(assert (=> d!1207447 (rulesValidInductive!2544 thiss!21717 rules!2999)))

(assert (=> d!1207447 (= (maxPrefix!3851 thiss!21717 rules!2999 lt!1450973) lt!1451240)))

(declare-fun b!4061805 () Bool)

(assert (=> b!4061805 (= e!2520503 call!288234)))

(declare-fun bm!288229 () Bool)

(assert (=> bm!288229 (= call!288234 (maxPrefixOneRule!2863 thiss!21717 (h!48809 rules!2999) lt!1450973))))

(assert (= (and d!1207447 c!701530) b!4061805))

(assert (= (and d!1207447 (not c!701530)) b!4061804))

(assert (= (or b!4061805 b!4061804) bm!288229))

(assert (= (and d!1207447 (not res!1656878)) b!4061798))

(assert (= (and b!4061798 res!1656879) b!4061800))

(assert (= (and b!4061800 res!1656874) b!4061803))

(assert (= (and b!4061803 res!1656873) b!4061802))

(assert (= (and b!4061802 res!1656875) b!4061799))

(assert (= (and b!4061799 res!1656877) b!4061797))

(assert (= (and b!4061797 res!1656876) b!4061801))

(declare-fun m!4667985 () Bool)

(assert (=> b!4061800 m!4667985))

(declare-fun m!4667987 () Bool)

(assert (=> b!4061800 m!4667987))

(assert (=> b!4061800 m!4667987))

(declare-fun m!4667989 () Bool)

(assert (=> b!4061800 m!4667989))

(assert (=> b!4061802 m!4667985))

(assert (=> b!4061802 m!4667987))

(assert (=> b!4061802 m!4667987))

(assert (=> b!4061802 m!4667989))

(assert (=> b!4061802 m!4667989))

(declare-fun m!4667991 () Bool)

(assert (=> b!4061802 m!4667991))

(assert (=> b!4061797 m!4667985))

(assert (=> b!4061797 m!4667987))

(assert (=> b!4061797 m!4667987))

(assert (=> b!4061797 m!4667989))

(assert (=> b!4061797 m!4667989))

(declare-fun m!4667993 () Bool)

(assert (=> b!4061797 m!4667993))

(declare-fun m!4667995 () Bool)

(assert (=> b!4061804 m!4667995))

(declare-fun m!4667997 () Bool)

(assert (=> b!4061798 m!4667997))

(assert (=> b!4061803 m!4667985))

(declare-fun m!4667999 () Bool)

(assert (=> b!4061803 m!4667999))

(assert (=> b!4061803 m!4667153))

(assert (=> b!4061799 m!4667985))

(declare-fun m!4668001 () Bool)

(assert (=> b!4061799 m!4668001))

(assert (=> b!4061799 m!4668001))

(declare-fun m!4668003 () Bool)

(assert (=> b!4061799 m!4668003))

(declare-fun m!4668005 () Bool)

(assert (=> d!1207447 m!4668005))

(declare-fun m!4668007 () Bool)

(assert (=> d!1207447 m!4668007))

(declare-fun m!4668009 () Bool)

(assert (=> d!1207447 m!4668009))

(assert (=> d!1207447 m!4667313))

(assert (=> b!4061801 m!4667985))

(declare-fun m!4668011 () Bool)

(assert (=> b!4061801 m!4668011))

(declare-fun m!4668013 () Bool)

(assert (=> bm!288229 m!4668013))

(assert (=> b!4061129 d!1207447))

(declare-fun d!1207455 () Bool)

(assert (=> d!1207455 (= suffixResult!105 lt!1450974)))

(declare-fun lt!1451249 () Unit!62811)

(assert (=> d!1207455 (= lt!1451249 (choose!24677 lt!1450946 suffixResult!105 lt!1450946 lt!1450974 lt!1450984))))

(assert (=> d!1207455 (isPrefix!4051 lt!1450946 lt!1450984)))

(assert (=> d!1207455 (= (lemmaSamePrefixThenSameSuffix!2212 lt!1450946 suffixResult!105 lt!1450946 lt!1450974 lt!1450984) lt!1451249)))

(declare-fun bs!592156 () Bool)

(assert (= bs!592156 d!1207455))

(declare-fun m!4668021 () Bool)

(assert (=> bs!592156 m!4668021))

(assert (=> bs!592156 m!4667015))

(assert (=> b!4061129 d!1207455))

(declare-fun b!4061815 () Bool)

(declare-fun e!2520510 () Bool)

(declare-fun e!2520509 () Bool)

(assert (=> b!4061815 (= e!2520510 e!2520509)))

(declare-fun res!1656890 () Bool)

(assert (=> b!4061815 (=> (not res!1656890) (not e!2520509))))

(assert (=> b!4061815 (= res!1656890 (not ((_ is Nil!43387) lt!1450937)))))

(declare-fun b!4061817 () Bool)

(assert (=> b!4061817 (= e!2520509 (isPrefix!4051 (tail!6304 lt!1450946) (tail!6304 lt!1450937)))))

(declare-fun b!4061818 () Bool)

(declare-fun e!2520511 () Bool)

(assert (=> b!4061818 (= e!2520511 (>= (size!32440 lt!1450937) (size!32440 lt!1450946)))))

(declare-fun b!4061816 () Bool)

(declare-fun res!1656889 () Bool)

(assert (=> b!4061816 (=> (not res!1656889) (not e!2520509))))

(assert (=> b!4061816 (= res!1656889 (= (head!8572 lt!1450946) (head!8572 lt!1450937)))))

(declare-fun d!1207457 () Bool)

(assert (=> d!1207457 e!2520511))

(declare-fun res!1656887 () Bool)

(assert (=> d!1207457 (=> res!1656887 e!2520511)))

(declare-fun lt!1451250 () Bool)

(assert (=> d!1207457 (= res!1656887 (not lt!1451250))))

(assert (=> d!1207457 (= lt!1451250 e!2520510)))

(declare-fun res!1656888 () Bool)

(assert (=> d!1207457 (=> res!1656888 e!2520510)))

(assert (=> d!1207457 (= res!1656888 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207457 (= (isPrefix!4051 lt!1450946 lt!1450937) lt!1451250)))

(assert (= (and d!1207457 (not res!1656888)) b!4061815))

(assert (= (and b!4061815 res!1656890) b!4061816))

(assert (= (and b!4061816 res!1656889) b!4061817))

(assert (= (and d!1207457 (not res!1656887)) b!4061818))

(assert (=> b!4061817 m!4667161))

(declare-fun m!4668033 () Bool)

(assert (=> b!4061817 m!4668033))

(assert (=> b!4061817 m!4667161))

(assert (=> b!4061817 m!4668033))

(declare-fun m!4668037 () Bool)

(assert (=> b!4061817 m!4668037))

(declare-fun m!4668039 () Bool)

(assert (=> b!4061818 m!4668039))

(assert (=> b!4061818 m!4667081))

(assert (=> b!4061816 m!4667169))

(declare-fun m!4668041 () Bool)

(assert (=> b!4061816 m!4668041))

(assert (=> b!4061129 d!1207457))

(declare-fun d!1207459 () Bool)

(assert (=> d!1207459 (isPrefix!4051 lt!1450946 (++!11366 lt!1450946 lt!1450974))))

(declare-fun lt!1451251 () Unit!62811)

(assert (=> d!1207459 (= lt!1451251 (choose!24684 lt!1450946 lt!1450974))))

(assert (=> d!1207459 (= (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450946 lt!1450974) lt!1451251)))

(declare-fun bs!592157 () Bool)

(assert (= bs!592157 d!1207459))

(assert (=> bs!592157 m!4666983))

(assert (=> bs!592157 m!4666983))

(declare-fun m!4668051 () Bool)

(assert (=> bs!592157 m!4668051))

(declare-fun m!4668053 () Bool)

(assert (=> bs!592157 m!4668053))

(assert (=> b!4061129 d!1207459))

(declare-fun b!4061822 () Bool)

(declare-fun lt!1451252 () List!43511)

(declare-fun e!2520512 () Bool)

(assert (=> b!4061822 (= e!2520512 (or (not (= lt!1450974 Nil!43387)) (= lt!1451252 lt!1450946)))))

(declare-fun d!1207461 () Bool)

(assert (=> d!1207461 e!2520512))

(declare-fun res!1656892 () Bool)

(assert (=> d!1207461 (=> (not res!1656892) (not e!2520512))))

(assert (=> d!1207461 (= res!1656892 (= (content!6617 lt!1451252) ((_ map or) (content!6617 lt!1450946) (content!6617 lt!1450974))))))

(declare-fun e!2520513 () List!43511)

(assert (=> d!1207461 (= lt!1451252 e!2520513)))

(declare-fun c!701532 () Bool)

(assert (=> d!1207461 (= c!701532 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207461 (= (++!11366 lt!1450946 lt!1450974) lt!1451252)))

(declare-fun b!4061819 () Bool)

(assert (=> b!4061819 (= e!2520513 lt!1450974)))

(declare-fun b!4061820 () Bool)

(assert (=> b!4061820 (= e!2520513 (Cons!43387 (h!48807 lt!1450946) (++!11366 (t!336622 lt!1450946) lt!1450974)))))

(declare-fun b!4061821 () Bool)

(declare-fun res!1656891 () Bool)

(assert (=> b!4061821 (=> (not res!1656891) (not e!2520512))))

(assert (=> b!4061821 (= res!1656891 (= (size!32440 lt!1451252) (+ (size!32440 lt!1450946) (size!32440 lt!1450974))))))

(assert (= (and d!1207461 c!701532) b!4061819))

(assert (= (and d!1207461 (not c!701532)) b!4061820))

(assert (= (and d!1207461 res!1656892) b!4061821))

(assert (= (and b!4061821 res!1656891) b!4061822))

(declare-fun m!4668063 () Bool)

(assert (=> d!1207461 m!4668063))

(assert (=> d!1207461 m!4667511))

(declare-fun m!4668065 () Bool)

(assert (=> d!1207461 m!4668065))

(declare-fun m!4668069 () Bool)

(assert (=> b!4061820 m!4668069))

(declare-fun m!4668071 () Bool)

(assert (=> b!4061821 m!4668071))

(assert (=> b!4061821 m!4667081))

(declare-fun m!4668073 () Bool)

(assert (=> b!4061821 m!4668073))

(assert (=> b!4061150 d!1207461))

(declare-fun d!1207463 () Bool)

(declare-fun lt!1451253 () List!43511)

(assert (=> d!1207463 (= (++!11366 lt!1450946 lt!1451253) lt!1450984)))

(declare-fun e!2520514 () List!43511)

(assert (=> d!1207463 (= lt!1451253 e!2520514)))

(declare-fun c!701533 () Bool)

(assert (=> d!1207463 (= c!701533 ((_ is Cons!43387) lt!1450946))))

(assert (=> d!1207463 (>= (size!32440 lt!1450984) (size!32440 lt!1450946))))

(assert (=> d!1207463 (= (getSuffix!2468 lt!1450984 lt!1450946) lt!1451253)))

(declare-fun b!4061823 () Bool)

(assert (=> b!4061823 (= e!2520514 (getSuffix!2468 (tail!6304 lt!1450984) (t!336622 lt!1450946)))))

(declare-fun b!4061824 () Bool)

(assert (=> b!4061824 (= e!2520514 lt!1450984)))

(assert (= (and d!1207463 c!701533) b!4061823))

(assert (= (and d!1207463 (not c!701533)) b!4061824))

(declare-fun m!4668079 () Bool)

(assert (=> d!1207463 m!4668079))

(assert (=> d!1207463 m!4667305))

(assert (=> d!1207463 m!4667081))

(assert (=> b!4061823 m!4667931))

(assert (=> b!4061823 m!4667931))

(declare-fun m!4668081 () Bool)

(assert (=> b!4061823 m!4668081))

(assert (=> b!4061150 d!1207463))

(declare-fun b!4061825 () Bool)

(declare-fun e!2520516 () Bool)

(declare-fun e!2520515 () Bool)

(assert (=> b!4061825 (= e!2520516 e!2520515)))

(declare-fun res!1656896 () Bool)

(assert (=> b!4061825 (=> (not res!1656896) (not e!2520515))))

(assert (=> b!4061825 (= res!1656896 (not ((_ is Nil!43387) lt!1450984)))))

(declare-fun b!4061827 () Bool)

(assert (=> b!4061827 (= e!2520515 (isPrefix!4051 (tail!6304 lt!1450984) (tail!6304 lt!1450984)))))

(declare-fun b!4061828 () Bool)

(declare-fun e!2520517 () Bool)

(assert (=> b!4061828 (= e!2520517 (>= (size!32440 lt!1450984) (size!32440 lt!1450984)))))

(declare-fun b!4061826 () Bool)

(declare-fun res!1656895 () Bool)

(assert (=> b!4061826 (=> (not res!1656895) (not e!2520515))))

(assert (=> b!4061826 (= res!1656895 (= (head!8572 lt!1450984) (head!8572 lt!1450984)))))

(declare-fun d!1207467 () Bool)

(assert (=> d!1207467 e!2520517))

(declare-fun res!1656893 () Bool)

(assert (=> d!1207467 (=> res!1656893 e!2520517)))

(declare-fun lt!1451254 () Bool)

(assert (=> d!1207467 (= res!1656893 (not lt!1451254))))

(assert (=> d!1207467 (= lt!1451254 e!2520516)))

(declare-fun res!1656894 () Bool)

(assert (=> d!1207467 (=> res!1656894 e!2520516)))

(assert (=> d!1207467 (= res!1656894 ((_ is Nil!43387) lt!1450984))))

(assert (=> d!1207467 (= (isPrefix!4051 lt!1450984 lt!1450984) lt!1451254)))

(assert (= (and d!1207467 (not res!1656894)) b!4061825))

(assert (= (and b!4061825 res!1656896) b!4061826))

(assert (= (and b!4061826 res!1656895) b!4061827))

(assert (= (and d!1207467 (not res!1656893)) b!4061828))

(assert (=> b!4061827 m!4667931))

(assert (=> b!4061827 m!4667931))

(assert (=> b!4061827 m!4667931))

(assert (=> b!4061827 m!4667931))

(declare-fun m!4668083 () Bool)

(assert (=> b!4061827 m!4668083))

(assert (=> b!4061828 m!4667305))

(assert (=> b!4061828 m!4667305))

(assert (=> b!4061826 m!4667939))

(assert (=> b!4061826 m!4667939))

(assert (=> b!4061150 d!1207467))

(declare-fun d!1207469 () Bool)

(assert (=> d!1207469 (isPrefix!4051 lt!1450984 lt!1450984)))

(declare-fun lt!1451259 () Unit!62811)

(declare-fun choose!24697 (List!43511 List!43511) Unit!62811)

(assert (=> d!1207469 (= lt!1451259 (choose!24697 lt!1450984 lt!1450984))))

(assert (=> d!1207469 (= (lemmaIsPrefixRefl!2618 lt!1450984 lt!1450984) lt!1451259)))

(declare-fun bs!592161 () Bool)

(assert (= bs!592161 d!1207469))

(assert (=> bs!592161 m!4666987))

(declare-fun m!4668097 () Bool)

(assert (=> bs!592161 m!4668097))

(assert (=> b!4061150 d!1207469))

(declare-fun d!1207481 () Bool)

(declare-fun lt!1451261 () Int)

(assert (=> d!1207481 (>= lt!1451261 0)))

(declare-fun e!2520522 () Int)

(assert (=> d!1207481 (= lt!1451261 e!2520522)))

(declare-fun c!701536 () Bool)

(assert (=> d!1207481 (= c!701536 ((_ is Nil!43387) suffix!1299))))

(assert (=> d!1207481 (= (size!32440 suffix!1299) lt!1451261)))

(declare-fun b!4061836 () Bool)

(assert (=> b!4061836 (= e!2520522 0)))

(declare-fun b!4061837 () Bool)

(assert (=> b!4061837 (= e!2520522 (+ 1 (size!32440 (t!336622 suffix!1299))))))

(assert (= (and d!1207481 c!701536) b!4061836))

(assert (= (and d!1207481 (not c!701536)) b!4061837))

(declare-fun m!4668099 () Bool)

(assert (=> b!4061837 m!4668099))

(assert (=> b!4061172 d!1207481))

(declare-fun d!1207483 () Bool)

(declare-fun lt!1451262 () Int)

(assert (=> d!1207483 (>= lt!1451262 0)))

(declare-fun e!2520523 () Int)

(assert (=> d!1207483 (= lt!1451262 e!2520523)))

(declare-fun c!701537 () Bool)

(assert (=> d!1207483 (= c!701537 ((_ is Nil!43387) newSuffix!27))))

(assert (=> d!1207483 (= (size!32440 newSuffix!27) lt!1451262)))

(declare-fun b!4061838 () Bool)

(assert (=> b!4061838 (= e!2520523 0)))

(declare-fun b!4061839 () Bool)

(assert (=> b!4061839 (= e!2520523 (+ 1 (size!32440 (t!336622 newSuffix!27))))))

(assert (= (and d!1207483 c!701537) b!4061838))

(assert (= (and d!1207483 (not c!701537)) b!4061839))

(declare-fun m!4668111 () Bool)

(assert (=> b!4061839 m!4668111))

(assert (=> b!4061172 d!1207483))

(declare-fun b!4061840 () Bool)

(declare-fun e!2520525 () Bool)

(declare-fun e!2520524 () Bool)

(assert (=> b!4061840 (= e!2520525 e!2520524)))

(declare-fun res!1656903 () Bool)

(assert (=> b!4061840 (=> (not res!1656903) (not e!2520524))))

(assert (=> b!4061840 (= res!1656903 (not ((_ is Nil!43387) lt!1450984)))))

(declare-fun b!4061842 () Bool)

(assert (=> b!4061842 (= e!2520524 (isPrefix!4051 (tail!6304 lt!1450942) (tail!6304 lt!1450984)))))

(declare-fun b!4061843 () Bool)

(declare-fun e!2520526 () Bool)

(assert (=> b!4061843 (= e!2520526 (>= (size!32440 lt!1450984) (size!32440 lt!1450942)))))

(declare-fun b!4061841 () Bool)

(declare-fun res!1656902 () Bool)

(assert (=> b!4061841 (=> (not res!1656902) (not e!2520524))))

(assert (=> b!4061841 (= res!1656902 (= (head!8572 lt!1450942) (head!8572 lt!1450984)))))

(declare-fun d!1207487 () Bool)

(assert (=> d!1207487 e!2520526))

(declare-fun res!1656900 () Bool)

(assert (=> d!1207487 (=> res!1656900 e!2520526)))

(declare-fun lt!1451264 () Bool)

(assert (=> d!1207487 (= res!1656900 (not lt!1451264))))

(assert (=> d!1207487 (= lt!1451264 e!2520525)))

(declare-fun res!1656901 () Bool)

(assert (=> d!1207487 (=> res!1656901 e!2520525)))

(assert (=> d!1207487 (= res!1656901 ((_ is Nil!43387) lt!1450942))))

(assert (=> d!1207487 (= (isPrefix!4051 lt!1450942 lt!1450984) lt!1451264)))

(assert (= (and d!1207487 (not res!1656901)) b!4061840))

(assert (= (and b!4061840 res!1656903) b!4061841))

(assert (= (and b!4061841 res!1656902) b!4061842))

(assert (= (and d!1207487 (not res!1656900)) b!4061843))

(assert (=> b!4061842 m!4667385))

(assert (=> b!4061842 m!4667931))

(assert (=> b!4061842 m!4667385))

(assert (=> b!4061842 m!4667931))

(declare-fun m!4668115 () Bool)

(assert (=> b!4061842 m!4668115))

(assert (=> b!4061843 m!4667305))

(assert (=> b!4061843 m!4667067))

(assert (=> b!4061841 m!4667393))

(assert (=> b!4061841 m!4667939))

(assert (=> b!4061131 d!1207487))

(declare-fun b!4061845 () Bool)

(declare-fun e!2520528 () Bool)

(declare-fun e!2520527 () Bool)

(assert (=> b!4061845 (= e!2520528 e!2520527)))

(declare-fun res!1656907 () Bool)

(assert (=> b!4061845 (=> (not res!1656907) (not e!2520527))))

(assert (=> b!4061845 (= res!1656907 (not ((_ is Nil!43387) lt!1450979)))))

(declare-fun b!4061847 () Bool)

(assert (=> b!4061847 (= e!2520527 (isPrefix!4051 (tail!6304 lt!1450942) (tail!6304 lt!1450979)))))

(declare-fun b!4061848 () Bool)

(declare-fun e!2520530 () Bool)

(assert (=> b!4061848 (= e!2520530 (>= (size!32440 lt!1450979) (size!32440 lt!1450942)))))

(declare-fun b!4061846 () Bool)

(declare-fun res!1656906 () Bool)

(assert (=> b!4061846 (=> (not res!1656906) (not e!2520527))))

(assert (=> b!4061846 (= res!1656906 (= (head!8572 lt!1450942) (head!8572 lt!1450979)))))

(declare-fun d!1207491 () Bool)

(assert (=> d!1207491 e!2520530))

(declare-fun res!1656904 () Bool)

(assert (=> d!1207491 (=> res!1656904 e!2520530)))

(declare-fun lt!1451266 () Bool)

(assert (=> d!1207491 (= res!1656904 (not lt!1451266))))

(assert (=> d!1207491 (= lt!1451266 e!2520528)))

(declare-fun res!1656905 () Bool)

(assert (=> d!1207491 (=> res!1656905 e!2520528)))

(assert (=> d!1207491 (= res!1656905 ((_ is Nil!43387) lt!1450942))))

(assert (=> d!1207491 (= (isPrefix!4051 lt!1450942 lt!1450979) lt!1451266)))

(assert (= (and d!1207491 (not res!1656905)) b!4061845))

(assert (= (and b!4061845 res!1656907) b!4061846))

(assert (= (and b!4061846 res!1656906) b!4061847))

(assert (= (and d!1207491 (not res!1656904)) b!4061848))

(assert (=> b!4061847 m!4667385))

(declare-fun m!4668121 () Bool)

(assert (=> b!4061847 m!4668121))

(assert (=> b!4061847 m!4667385))

(assert (=> b!4061847 m!4668121))

(declare-fun m!4668123 () Bool)

(assert (=> b!4061847 m!4668123))

(declare-fun m!4668125 () Bool)

(assert (=> b!4061848 m!4668125))

(assert (=> b!4061848 m!4667067))

(assert (=> b!4061846 m!4667393))

(declare-fun m!4668127 () Bool)

(assert (=> b!4061846 m!4668127))

(assert (=> b!4061131 d!1207491))

(declare-fun d!1207493 () Bool)

(assert (=> d!1207493 (isPrefix!4051 lt!1450942 (++!11366 lt!1450973 lt!1450968))))

(declare-fun lt!1451267 () Unit!62811)

(assert (=> d!1207493 (= lt!1451267 (choose!24685 lt!1450942 lt!1450973 lt!1450968))))

(assert (=> d!1207493 (isPrefix!4051 lt!1450942 lt!1450973)))

(assert (=> d!1207493 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!844 lt!1450942 lt!1450973 lt!1450968) lt!1451267)))

(declare-fun bs!592163 () Bool)

(assert (= bs!592163 d!1207493))

(assert (=> bs!592163 m!4667029))

(assert (=> bs!592163 m!4667029))

(declare-fun m!4668133 () Bool)

(assert (=> bs!592163 m!4668133))

(declare-fun m!4668135 () Bool)

(assert (=> bs!592163 m!4668135))

(assert (=> bs!592163 m!4667097))

(assert (=> b!4061131 d!1207493))

(declare-fun d!1207497 () Bool)

(assert (=> d!1207497 (= lt!1450994 suffixResult!105)))

(declare-fun lt!1451268 () Unit!62811)

(assert (=> d!1207497 (= lt!1451268 (choose!24677 lt!1450946 lt!1450994 lt!1450946 suffixResult!105 lt!1450984))))

(assert (=> d!1207497 (isPrefix!4051 lt!1450946 lt!1450984)))

(assert (=> d!1207497 (= (lemmaSamePrefixThenSameSuffix!2212 lt!1450946 lt!1450994 lt!1450946 suffixResult!105 lt!1450984) lt!1451268)))

(declare-fun bs!592164 () Bool)

(assert (= bs!592164 d!1207497))

(declare-fun m!4668137 () Bool)

(assert (=> bs!592164 m!4668137))

(assert (=> bs!592164 m!4667015))

(assert (=> b!4061152 d!1207497))

(declare-fun d!1207503 () Bool)

(assert (=> d!1207503 (isPrefix!4051 lt!1450946 (++!11366 lt!1450946 lt!1450994))))

(declare-fun lt!1451269 () Unit!62811)

(assert (=> d!1207503 (= lt!1451269 (choose!24684 lt!1450946 lt!1450994))))

(assert (=> d!1207503 (= (lemmaConcatTwoListThenFirstIsPrefix!2886 lt!1450946 lt!1450994) lt!1451269)))

(declare-fun bs!592166 () Bool)

(assert (= bs!592166 d!1207503))

(assert (=> bs!592166 m!4667005))

(assert (=> bs!592166 m!4667005))

(declare-fun m!4668141 () Bool)

(assert (=> bs!592166 m!4668141))

(declare-fun m!4668143 () Bool)

(assert (=> bs!592166 m!4668143))

(assert (=> b!4061152 d!1207503))

(declare-fun d!1207505 () Bool)

(assert (=> d!1207505 (= (seqFromList!5181 lt!1450946) (fromListB!2364 lt!1450946))))

(declare-fun bs!592167 () Bool)

(assert (= bs!592167 d!1207505))

(declare-fun m!4668145 () Bool)

(assert (=> bs!592167 m!4668145))

(assert (=> b!4061152 d!1207505))

(declare-fun b!4061855 () Bool)

(declare-fun e!2520536 () Bool)

(declare-fun e!2520535 () Bool)

(assert (=> b!4061855 (= e!2520536 e!2520535)))

(declare-fun res!1656917 () Bool)

(assert (=> b!4061855 (=> (not res!1656917) (not e!2520535))))

(assert (=> b!4061855 (= res!1656917 (not ((_ is Nil!43387) lt!1450989)))))

(declare-fun b!4061857 () Bool)

(assert (=> b!4061857 (= e!2520535 (isPrefix!4051 (tail!6304 lt!1450946) (tail!6304 lt!1450989)))))

(declare-fun b!4061858 () Bool)

(declare-fun e!2520537 () Bool)

(assert (=> b!4061858 (= e!2520537 (>= (size!32440 lt!1450989) (size!32440 lt!1450946)))))

(declare-fun b!4061856 () Bool)

(declare-fun res!1656916 () Bool)

(assert (=> b!4061856 (=> (not res!1656916) (not e!2520535))))

(assert (=> b!4061856 (= res!1656916 (= (head!8572 lt!1450946) (head!8572 lt!1450989)))))

(declare-fun d!1207507 () Bool)

(assert (=> d!1207507 e!2520537))

(declare-fun res!1656914 () Bool)

(assert (=> d!1207507 (=> res!1656914 e!2520537)))

(declare-fun lt!1451271 () Bool)

(assert (=> d!1207507 (= res!1656914 (not lt!1451271))))

(assert (=> d!1207507 (= lt!1451271 e!2520536)))

(declare-fun res!1656915 () Bool)

(assert (=> d!1207507 (=> res!1656915 e!2520536)))

(assert (=> d!1207507 (= res!1656915 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207507 (= (isPrefix!4051 lt!1450946 lt!1450989) lt!1451271)))

(assert (= (and d!1207507 (not res!1656915)) b!4061855))

(assert (= (and b!4061855 res!1656917) b!4061856))

(assert (= (and b!4061856 res!1656916) b!4061857))

(assert (= (and d!1207507 (not res!1656914)) b!4061858))

(assert (=> b!4061857 m!4667161))

(declare-fun m!4668155 () Bool)

(assert (=> b!4061857 m!4668155))

(assert (=> b!4061857 m!4667161))

(assert (=> b!4061857 m!4668155))

(declare-fun m!4668157 () Bool)

(assert (=> b!4061857 m!4668157))

(declare-fun m!4668159 () Bool)

(assert (=> b!4061858 m!4668159))

(assert (=> b!4061858 m!4667081))

(assert (=> b!4061856 m!4667169))

(declare-fun m!4668161 () Bool)

(assert (=> b!4061856 m!4668161))

(assert (=> b!4061152 d!1207507))

(declare-fun d!1207511 () Bool)

(assert (=> d!1207511 (= (maxPrefixOneRule!2863 thiss!21717 (rule!10056 token!484) lt!1450984) (Some!9377 (tuple2!42447 (Token!13067 (apply!10153 (transformation!6964 (rule!10056 token!484)) (seqFromList!5181 lt!1450946)) (rule!10056 token!484) (size!32440 lt!1450946) lt!1450946) suffixResult!105)))))

(declare-fun lt!1451273 () Unit!62811)

(assert (=> d!1207511 (= lt!1451273 (choose!24691 thiss!21717 rules!2999 lt!1450946 lt!1450984 suffixResult!105 (rule!10056 token!484)))))

(assert (=> d!1207511 (not (isEmpty!25889 rules!2999))))

(assert (=> d!1207511 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1669 thiss!21717 rules!2999 lt!1450946 lt!1450984 suffixResult!105 (rule!10056 token!484)) lt!1451273)))

(declare-fun bs!592168 () Bool)

(assert (= bs!592168 d!1207511))

(assert (=> bs!592168 m!4666937))

(declare-fun m!4668171 () Bool)

(assert (=> bs!592168 m!4668171))

(assert (=> bs!592168 m!4667013))

(assert (=> bs!592168 m!4666937))

(assert (=> bs!592168 m!4666941))

(assert (=> bs!592168 m!4667081))

(assert (=> bs!592168 m!4666933))

(assert (=> b!4061152 d!1207511))

(declare-fun b!4061863 () Bool)

(declare-fun res!1656922 () Bool)

(declare-fun e!2520541 () Bool)

(assert (=> b!4061863 (=> (not res!1656922) (not e!2520541))))

(declare-fun lt!1451277 () Option!9378)

(assert (=> b!4061863 (= res!1656922 (= (rule!10056 (_1!24357 (get!14229 lt!1451277))) (rule!10056 token!484)))))

(declare-fun b!4061864 () Bool)

(assert (=> b!4061864 (= e!2520541 (= (size!32439 (_1!24357 (get!14229 lt!1451277))) (size!32440 (originalCharacters!7564 (_1!24357 (get!14229 lt!1451277))))))))

(declare-fun d!1207515 () Bool)

(declare-fun e!2520542 () Bool)

(assert (=> d!1207515 e!2520542))

(declare-fun res!1656926 () Bool)

(assert (=> d!1207515 (=> res!1656926 e!2520542)))

(assert (=> d!1207515 (= res!1656926 (isEmpty!25892 lt!1451277))))

(declare-fun e!2520544 () Option!9378)

(assert (=> d!1207515 (= lt!1451277 e!2520544)))

(declare-fun c!701538 () Bool)

(declare-fun lt!1451275 () tuple2!42450)

(assert (=> d!1207515 (= c!701538 (isEmpty!25891 (_1!24359 lt!1451275)))))

(assert (=> d!1207515 (= lt!1451275 (findLongestMatch!1320 (regex!6964 (rule!10056 token!484)) lt!1450984))))

(assert (=> d!1207515 (ruleValid!2894 thiss!21717 (rule!10056 token!484))))

(assert (=> d!1207515 (= (maxPrefixOneRule!2863 thiss!21717 (rule!10056 token!484) lt!1450984) lt!1451277)))

(declare-fun b!4061865 () Bool)

(assert (=> b!4061865 (= e!2520544 None!9377)))

(declare-fun b!4061866 () Bool)

(declare-fun res!1656923 () Bool)

(assert (=> b!4061866 (=> (not res!1656923) (not e!2520541))))

(assert (=> b!4061866 (= res!1656923 (< (size!32440 (_2!24357 (get!14229 lt!1451277))) (size!32440 lt!1450984)))))

(declare-fun b!4061867 () Bool)

(declare-fun res!1656924 () Bool)

(assert (=> b!4061867 (=> (not res!1656924) (not e!2520541))))

(assert (=> b!4061867 (= res!1656924 (= (++!11366 (list!16172 (charsOf!4780 (_1!24357 (get!14229 lt!1451277)))) (_2!24357 (get!14229 lt!1451277))) lt!1450984))))

(declare-fun b!4061868 () Bool)

(assert (=> b!4061868 (= e!2520544 (Some!9377 (tuple2!42447 (Token!13067 (apply!10153 (transformation!6964 (rule!10056 token!484)) (seqFromList!5181 (_1!24359 lt!1451275))) (rule!10056 token!484) (size!32442 (seqFromList!5181 (_1!24359 lt!1451275))) (_1!24359 lt!1451275)) (_2!24359 lt!1451275))))))

(declare-fun lt!1451276 () Unit!62811)

(assert (=> b!4061868 (= lt!1451276 (longestMatchIsAcceptedByMatchOrIsEmpty!1380 (regex!6964 (rule!10056 token!484)) lt!1450984))))

(declare-fun res!1656925 () Bool)

(assert (=> b!4061868 (= res!1656925 (isEmpty!25891 (_1!24359 (findLongestMatchInner!1407 (regex!6964 (rule!10056 token!484)) Nil!43387 (size!32440 Nil!43387) lt!1450984 lt!1450984 (size!32440 lt!1450984)))))))

(declare-fun e!2520543 () Bool)

(assert (=> b!4061868 (=> res!1656925 e!2520543)))

(assert (=> b!4061868 e!2520543))

(declare-fun lt!1451279 () Unit!62811)

(assert (=> b!4061868 (= lt!1451279 lt!1451276)))

(declare-fun lt!1451278 () Unit!62811)

(assert (=> b!4061868 (= lt!1451278 (lemmaSemiInverse!1935 (transformation!6964 (rule!10056 token!484)) (seqFromList!5181 (_1!24359 lt!1451275))))))

(declare-fun b!4061869 () Bool)

(assert (=> b!4061869 (= e!2520542 e!2520541)))

(declare-fun res!1656927 () Bool)

(assert (=> b!4061869 (=> (not res!1656927) (not e!2520541))))

(assert (=> b!4061869 (= res!1656927 (matchR!5822 (regex!6964 (rule!10056 token!484)) (list!16172 (charsOf!4780 (_1!24357 (get!14229 lt!1451277))))))))

(declare-fun b!4061870 () Bool)

(assert (=> b!4061870 (= e!2520543 (matchR!5822 (regex!6964 (rule!10056 token!484)) (_1!24359 (findLongestMatchInner!1407 (regex!6964 (rule!10056 token!484)) Nil!43387 (size!32440 Nil!43387) lt!1450984 lt!1450984 (size!32440 lt!1450984)))))))

(declare-fun b!4061871 () Bool)

(declare-fun res!1656928 () Bool)

(assert (=> b!4061871 (=> (not res!1656928) (not e!2520541))))

(assert (=> b!4061871 (= res!1656928 (= (value!219108 (_1!24357 (get!14229 lt!1451277))) (apply!10153 (transformation!6964 (rule!10056 (_1!24357 (get!14229 lt!1451277)))) (seqFromList!5181 (originalCharacters!7564 (_1!24357 (get!14229 lt!1451277)))))))))

(assert (= (and d!1207515 c!701538) b!4061865))

(assert (= (and d!1207515 (not c!701538)) b!4061868))

(assert (= (and b!4061868 (not res!1656925)) b!4061870))

(assert (= (and d!1207515 (not res!1656926)) b!4061869))

(assert (= (and b!4061869 res!1656927) b!4061867))

(assert (= (and b!4061867 res!1656924) b!4061866))

(assert (= (and b!4061866 res!1656923) b!4061863))

(assert (= (and b!4061863 res!1656922) b!4061871))

(assert (= (and b!4061871 res!1656928) b!4061864))

(declare-fun m!4668175 () Bool)

(assert (=> b!4061868 m!4668175))

(declare-fun m!4668177 () Bool)

(assert (=> b!4061868 m!4668177))

(assert (=> b!4061868 m!4668175))

(declare-fun m!4668179 () Bool)

(assert (=> b!4061868 m!4668179))

(declare-fun m!4668181 () Bool)

(assert (=> b!4061868 m!4668181))

(assert (=> b!4061868 m!4667305))

(assert (=> b!4061868 m!4667749))

(assert (=> b!4061868 m!4668175))

(declare-fun m!4668183 () Bool)

(assert (=> b!4061868 m!4668183))

(declare-fun m!4668185 () Bool)

(assert (=> b!4061868 m!4668185))

(assert (=> b!4061868 m!4667749))

(assert (=> b!4061868 m!4667305))

(declare-fun m!4668187 () Bool)

(assert (=> b!4061868 m!4668187))

(assert (=> b!4061868 m!4668175))

(declare-fun m!4668189 () Bool)

(assert (=> b!4061869 m!4668189))

(declare-fun m!4668191 () Bool)

(assert (=> b!4061869 m!4668191))

(assert (=> b!4061869 m!4668191))

(declare-fun m!4668193 () Bool)

(assert (=> b!4061869 m!4668193))

(assert (=> b!4061869 m!4668193))

(declare-fun m!4668195 () Bool)

(assert (=> b!4061869 m!4668195))

(declare-fun m!4668197 () Bool)

(assert (=> d!1207515 m!4668197))

(declare-fun m!4668199 () Bool)

(assert (=> d!1207515 m!4668199))

(declare-fun m!4668201 () Bool)

(assert (=> d!1207515 m!4668201))

(assert (=> d!1207515 m!4667109))

(assert (=> b!4061863 m!4668189))

(assert (=> b!4061866 m!4668189))

(declare-fun m!4668203 () Bool)

(assert (=> b!4061866 m!4668203))

(assert (=> b!4061866 m!4667305))

(assert (=> b!4061864 m!4668189))

(declare-fun m!4668205 () Bool)

(assert (=> b!4061864 m!4668205))

(assert (=> b!4061870 m!4667749))

(assert (=> b!4061870 m!4667305))

(assert (=> b!4061870 m!4667749))

(assert (=> b!4061870 m!4667305))

(assert (=> b!4061870 m!4668187))

(declare-fun m!4668207 () Bool)

(assert (=> b!4061870 m!4668207))

(assert (=> b!4061867 m!4668189))

(assert (=> b!4061867 m!4668191))

(assert (=> b!4061867 m!4668191))

(assert (=> b!4061867 m!4668193))

(assert (=> b!4061867 m!4668193))

(declare-fun m!4668209 () Bool)

(assert (=> b!4061867 m!4668209))

(assert (=> b!4061871 m!4668189))

(declare-fun m!4668211 () Bool)

(assert (=> b!4061871 m!4668211))

(assert (=> b!4061871 m!4668211))

(declare-fun m!4668213 () Bool)

(assert (=> b!4061871 m!4668213))

(assert (=> b!4061152 d!1207515))

(declare-fun d!1207521 () Bool)

(assert (=> d!1207521 (= (apply!10153 (transformation!6964 (rule!10056 token!484)) (seqFromList!5181 lt!1450946)) (dynLambda!18438 (toValue!9524 (transformation!6964 (rule!10056 token!484))) (seqFromList!5181 lt!1450946)))))

(declare-fun b_lambda!118697 () Bool)

(assert (=> (not b_lambda!118697) (not d!1207521)))

(declare-fun tb!244365 () Bool)

(declare-fun t!336654 () Bool)

(assert (=> (and b!4061144 (= (toValue!9524 (transformation!6964 (h!48809 rules!2999))) (toValue!9524 (transformation!6964 (rule!10056 token!484)))) t!336654) tb!244365))

(declare-fun result!296090 () Bool)

(assert (=> tb!244365 (= result!296090 (inv!21 (dynLambda!18438 (toValue!9524 (transformation!6964 (rule!10056 token!484))) (seqFromList!5181 lt!1450946))))))

(declare-fun m!4668215 () Bool)

(assert (=> tb!244365 m!4668215))

(assert (=> d!1207521 t!336654))

(declare-fun b_and!312303 () Bool)

(assert (= b_and!312283 (and (=> t!336654 result!296090) b_and!312303)))

(declare-fun t!336656 () Bool)

(declare-fun tb!244367 () Bool)

(assert (=> (and b!4061141 (= (toValue!9524 (transformation!6964 (rule!10056 token!484))) (toValue!9524 (transformation!6964 (rule!10056 token!484)))) t!336656) tb!244367))

(declare-fun result!296092 () Bool)

(assert (= result!296092 result!296090))

(assert (=> d!1207521 t!336656))

(declare-fun b_and!312305 () Bool)

(assert (= b_and!312285 (and (=> t!336656 result!296092) b_and!312305)))

(assert (=> d!1207521 m!4666937))

(declare-fun m!4668223 () Bool)

(assert (=> d!1207521 m!4668223))

(assert (=> b!4061152 d!1207521))

(declare-fun lt!1451283 () List!43511)

(declare-fun e!2520552 () Bool)

(declare-fun b!4061881 () Bool)

(assert (=> b!4061881 (= e!2520552 (or (not (= lt!1450994 Nil!43387)) (= lt!1451283 lt!1450946)))))

(declare-fun d!1207525 () Bool)

(assert (=> d!1207525 e!2520552))

(declare-fun res!1656936 () Bool)

(assert (=> d!1207525 (=> (not res!1656936) (not e!2520552))))

(assert (=> d!1207525 (= res!1656936 (= (content!6617 lt!1451283) ((_ map or) (content!6617 lt!1450946) (content!6617 lt!1450994))))))

(declare-fun e!2520553 () List!43511)

(assert (=> d!1207525 (= lt!1451283 e!2520553)))

(declare-fun c!701539 () Bool)

(assert (=> d!1207525 (= c!701539 ((_ is Nil!43387) lt!1450946))))

(assert (=> d!1207525 (= (++!11366 lt!1450946 lt!1450994) lt!1451283)))

(declare-fun b!4061878 () Bool)

(assert (=> b!4061878 (= e!2520553 lt!1450994)))

(declare-fun b!4061879 () Bool)

(assert (=> b!4061879 (= e!2520553 (Cons!43387 (h!48807 lt!1450946) (++!11366 (t!336622 lt!1450946) lt!1450994)))))

(declare-fun b!4061880 () Bool)

(declare-fun res!1656935 () Bool)

(assert (=> b!4061880 (=> (not res!1656935) (not e!2520552))))

(assert (=> b!4061880 (= res!1656935 (= (size!32440 lt!1451283) (+ (size!32440 lt!1450946) (size!32440 lt!1450994))))))

(assert (= (and d!1207525 c!701539) b!4061878))

(assert (= (and d!1207525 (not c!701539)) b!4061879))

(assert (= (and d!1207525 res!1656936) b!4061880))

(assert (= (and b!4061880 res!1656935) b!4061881))

(declare-fun m!4668225 () Bool)

(assert (=> d!1207525 m!4668225))

(assert (=> d!1207525 m!4667511))

(declare-fun m!4668227 () Bool)

(assert (=> d!1207525 m!4668227))

(declare-fun m!4668229 () Bool)

(assert (=> b!4061879 m!4668229))

(declare-fun m!4668231 () Bool)

(assert (=> b!4061880 m!4668231))

(assert (=> b!4061880 m!4667081))

(declare-fun m!4668233 () Bool)

(assert (=> b!4061880 m!4668233))

(assert (=> b!4061153 d!1207525))

(declare-fun e!2520554 () Bool)

(declare-fun lt!1451284 () List!43511)

(declare-fun b!4061885 () Bool)

(assert (=> b!4061885 (= e!2520554 (or (not (= suffix!1299 Nil!43387)) (= lt!1451284 lt!1450954)))))

(declare-fun d!1207527 () Bool)

(assert (=> d!1207527 e!2520554))

(declare-fun res!1656938 () Bool)

(assert (=> d!1207527 (=> (not res!1656938) (not e!2520554))))

(assert (=> d!1207527 (= res!1656938 (= (content!6617 lt!1451284) ((_ map or) (content!6617 lt!1450954) (content!6617 suffix!1299))))))

(declare-fun e!2520555 () List!43511)

(assert (=> d!1207527 (= lt!1451284 e!2520555)))

(declare-fun c!701540 () Bool)

(assert (=> d!1207527 (= c!701540 ((_ is Nil!43387) lt!1450954))))

(assert (=> d!1207527 (= (++!11366 lt!1450954 suffix!1299) lt!1451284)))

(declare-fun b!4061882 () Bool)

(assert (=> b!4061882 (= e!2520555 suffix!1299)))

(declare-fun b!4061883 () Bool)

(assert (=> b!4061883 (= e!2520555 (Cons!43387 (h!48807 lt!1450954) (++!11366 (t!336622 lt!1450954) suffix!1299)))))

(declare-fun b!4061884 () Bool)

(declare-fun res!1656937 () Bool)

(assert (=> b!4061884 (=> (not res!1656937) (not e!2520554))))

(assert (=> b!4061884 (= res!1656937 (= (size!32440 lt!1451284) (+ (size!32440 lt!1450954) (size!32440 suffix!1299))))))

(assert (= (and d!1207527 c!701540) b!4061882))

(assert (= (and d!1207527 (not c!701540)) b!4061883))

(assert (= (and d!1207527 res!1656938) b!4061884))

(assert (= (and b!4061884 res!1656937) b!4061885))

(declare-fun m!4668235 () Bool)

(assert (=> d!1207527 m!4668235))

(declare-fun m!4668237 () Bool)

(assert (=> d!1207527 m!4668237))

(assert (=> d!1207527 m!4667323))

(declare-fun m!4668239 () Bool)

(assert (=> b!4061883 m!4668239))

(declare-fun m!4668241 () Bool)

(assert (=> b!4061884 m!4668241))

(declare-fun m!4668243 () Bool)

(assert (=> b!4061884 m!4668243))

(assert (=> b!4061884 m!4666947))

(assert (=> b!4061153 d!1207527))

(declare-fun b!4061889 () Bool)

(declare-fun lt!1451285 () List!43511)

(declare-fun e!2520556 () Bool)

(assert (=> b!4061889 (= e!2520556 (or (not (= suffix!1299 Nil!43387)) (= lt!1451285 lt!1450963)))))

(declare-fun d!1207529 () Bool)

(assert (=> d!1207529 e!2520556))

(declare-fun res!1656940 () Bool)

(assert (=> d!1207529 (=> (not res!1656940) (not e!2520556))))

(assert (=> d!1207529 (= res!1656940 (= (content!6617 lt!1451285) ((_ map or) (content!6617 lt!1450963) (content!6617 suffix!1299))))))

(declare-fun e!2520557 () List!43511)

(assert (=> d!1207529 (= lt!1451285 e!2520557)))

(declare-fun c!701541 () Bool)

(assert (=> d!1207529 (= c!701541 ((_ is Nil!43387) lt!1450963))))

(assert (=> d!1207529 (= (++!11366 lt!1450963 suffix!1299) lt!1451285)))

(declare-fun b!4061886 () Bool)

(assert (=> b!4061886 (= e!2520557 suffix!1299)))

(declare-fun b!4061887 () Bool)

(assert (=> b!4061887 (= e!2520557 (Cons!43387 (h!48807 lt!1450963) (++!11366 (t!336622 lt!1450963) suffix!1299)))))

(declare-fun b!4061888 () Bool)

(declare-fun res!1656939 () Bool)

(assert (=> b!4061888 (=> (not res!1656939) (not e!2520556))))

(assert (=> b!4061888 (= res!1656939 (= (size!32440 lt!1451285) (+ (size!32440 lt!1450963) (size!32440 suffix!1299))))))

(assert (= (and d!1207529 c!701541) b!4061886))

(assert (= (and d!1207529 (not c!701541)) b!4061887))

(assert (= (and d!1207529 res!1656940) b!4061888))

(assert (= (and b!4061888 res!1656939) b!4061889))

(declare-fun m!4668245 () Bool)

(assert (=> d!1207529 m!4668245))

(assert (=> d!1207529 m!4667525))

(assert (=> d!1207529 m!4667323))

(declare-fun m!4668247 () Bool)

(assert (=> b!4061887 m!4668247))

(declare-fun m!4668249 () Bool)

(assert (=> b!4061888 m!4668249))

(assert (=> b!4061888 m!4667531))

(assert (=> b!4061888 m!4666947))

(assert (=> b!4061153 d!1207529))

(declare-fun d!1207531 () Bool)

(assert (=> d!1207531 (= (++!11366 (++!11366 lt!1450946 lt!1450963) suffix!1299) (++!11366 lt!1450946 (++!11366 lt!1450963 suffix!1299)))))

(declare-fun lt!1451286 () Unit!62811)

(assert (=> d!1207531 (= lt!1451286 (choose!24693 lt!1450946 lt!1450963 suffix!1299))))

(assert (=> d!1207531 (= (lemmaConcatAssociativity!2668 lt!1450946 lt!1450963 suffix!1299) lt!1451286)))

(declare-fun bs!592170 () Bool)

(assert (= bs!592170 d!1207531))

(declare-fun m!4668251 () Bool)

(assert (=> bs!592170 m!4668251))

(assert (=> bs!592170 m!4667009))

(assert (=> bs!592170 m!4667121))

(declare-fun m!4668253 () Bool)

(assert (=> bs!592170 m!4668253))

(assert (=> bs!592170 m!4667009))

(declare-fun m!4668255 () Bool)

(assert (=> bs!592170 m!4668255))

(assert (=> bs!592170 m!4667121))

(assert (=> b!4061153 d!1207531))

(declare-fun b!4061890 () Bool)

(declare-fun e!2520559 () Bool)

(declare-fun e!2520558 () Bool)

(assert (=> b!4061890 (= e!2520559 e!2520558)))

(declare-fun res!1656944 () Bool)

(assert (=> b!4061890 (=> (not res!1656944) (not e!2520558))))

(assert (=> b!4061890 (= res!1656944 (not ((_ is Nil!43387) lt!1450973)))))

(declare-fun b!4061892 () Bool)

(assert (=> b!4061892 (= e!2520558 (isPrefix!4051 (tail!6304 lt!1450942) (tail!6304 lt!1450973)))))

(declare-fun b!4061893 () Bool)

(declare-fun e!2520560 () Bool)

(assert (=> b!4061893 (= e!2520560 (>= (size!32440 lt!1450973) (size!32440 lt!1450942)))))

(declare-fun b!4061891 () Bool)

(declare-fun res!1656943 () Bool)

(assert (=> b!4061891 (=> (not res!1656943) (not e!2520558))))

(assert (=> b!4061891 (= res!1656943 (= (head!8572 lt!1450942) (head!8572 lt!1450973)))))

(declare-fun d!1207533 () Bool)

(assert (=> d!1207533 e!2520560))

(declare-fun res!1656941 () Bool)

(assert (=> d!1207533 (=> res!1656941 e!2520560)))

(declare-fun lt!1451287 () Bool)

(assert (=> d!1207533 (= res!1656941 (not lt!1451287))))

(assert (=> d!1207533 (= lt!1451287 e!2520559)))

(declare-fun res!1656942 () Bool)

(assert (=> d!1207533 (=> res!1656942 e!2520559)))

(assert (=> d!1207533 (= res!1656942 ((_ is Nil!43387) lt!1450942))))

(assert (=> d!1207533 (= (isPrefix!4051 lt!1450942 lt!1450973) lt!1451287)))

(assert (= (and d!1207533 (not res!1656942)) b!4061890))

(assert (= (and b!4061890 res!1656944) b!4061891))

(assert (= (and b!4061891 res!1656943) b!4061892))

(assert (= (and d!1207533 (not res!1656941)) b!4061893))

(assert (=> b!4061892 m!4667385))

(assert (=> b!4061892 m!4667155))

(assert (=> b!4061892 m!4667385))

(assert (=> b!4061892 m!4667155))

(declare-fun m!4668257 () Bool)

(assert (=> b!4061892 m!4668257))

(assert (=> b!4061893 m!4667153))

(assert (=> b!4061893 m!4667067))

(assert (=> b!4061891 m!4667393))

(assert (=> b!4061891 m!4667411))

(assert (=> b!4061133 d!1207533))

(declare-fun d!1207535 () Bool)

(assert (=> d!1207535 (not (matchR!5822 (regex!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1450942))))

(declare-fun lt!1451288 () Unit!62811)

(assert (=> d!1207535 (= lt!1451288 (choose!24696 thiss!21717 rules!2999 (rule!10056 token!484) lt!1450946 lt!1450984 lt!1450942 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))))

(assert (=> d!1207535 (isPrefix!4051 lt!1450946 lt!1450984)))

(assert (=> d!1207535 (= (lemmaMaxPrefixOutputsMaxPrefix!490 thiss!21717 rules!2999 (rule!10056 token!484) lt!1450946 lt!1450984 lt!1450942 (rule!10056 (_1!24357 (v!39797 lt!1450988)))) lt!1451288)))

(declare-fun bs!592171 () Bool)

(assert (= bs!592171 d!1207535))

(assert (=> bs!592171 m!4666981))

(declare-fun m!4668259 () Bool)

(assert (=> bs!592171 m!4668259))

(assert (=> bs!592171 m!4667015))

(assert (=> b!4061154 d!1207535))

(assert (=> b!4061154 d!1207261))

(declare-fun b!4061927 () Bool)

(declare-fun b_free!112985 () Bool)

(declare-fun b_next!113689 () Bool)

(assert (=> b!4061927 (= b_free!112985 (not b_next!113689))))

(declare-fun tb!244369 () Bool)

(declare-fun t!336658 () Bool)

(assert (=> (and b!4061927 (= (toValue!9524 (transformation!6964 (h!48809 (t!336624 rules!2999)))) (toValue!9524 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))) t!336658) tb!244369))

(declare-fun result!296096 () Bool)

(assert (= result!296096 result!296072))

(assert (=> d!1207297 t!336658))

(declare-fun t!336660 () Bool)

(declare-fun tb!244371 () Bool)

(assert (=> (and b!4061927 (= (toValue!9524 (transformation!6964 (h!48809 (t!336624 rules!2999)))) (toValue!9524 (transformation!6964 (rule!10056 token!484)))) t!336660) tb!244371))

(declare-fun result!296098 () Bool)

(assert (= result!296098 result!296090))

(assert (=> d!1207521 t!336660))

(declare-fun b_and!312307 () Bool)

(declare-fun tp!1230167 () Bool)

(assert (=> b!4061927 (= tp!1230167 (and (=> t!336658 result!296096) (=> t!336660 result!296098) b_and!312307))))

(declare-fun b_free!112987 () Bool)

(declare-fun b_next!113691 () Bool)

(assert (=> b!4061927 (= b_free!112987 (not b_next!113691))))

(declare-fun t!336662 () Bool)

(declare-fun tb!244373 () Bool)

(assert (=> (and b!4061927 (= (toChars!9383 (transformation!6964 (h!48809 (t!336624 rules!2999)))) (toChars!9383 (transformation!6964 (rule!10056 token!484)))) t!336662) tb!244373))

(declare-fun result!296100 () Bool)

(assert (= result!296100 result!296060))

(assert (=> d!1207221 t!336662))

(assert (=> b!4061484 t!336662))

(declare-fun t!336664 () Bool)

(declare-fun tb!244375 () Bool)

(assert (=> (and b!4061927 (= (toChars!9383 (transformation!6964 (h!48809 (t!336624 rules!2999)))) (toChars!9383 (transformation!6964 (rule!10056 (_1!24357 (v!39797 lt!1450988)))))) t!336664) tb!244375))

(declare-fun result!296102 () Bool)

(assert (= result!296102 result!296078))

(assert (=> d!1207359 t!336664))

(declare-fun b_and!312309 () Bool)

(declare-fun tp!1230170 () Bool)

(assert (=> b!4061927 (= tp!1230170 (and (=> t!336662 result!296100) (=> t!336664 result!296102) b_and!312309))))

(declare-fun e!2520582 () Bool)

(assert (=> b!4061927 (= e!2520582 (and tp!1230167 tp!1230170))))

(declare-fun b!4061925 () Bool)

(declare-fun tp!1230168 () Bool)

(declare-fun e!2520581 () Bool)

(assert (=> b!4061925 (= e!2520581 (and tp!1230168 (inv!58001 (tag!7824 (h!48809 (t!336624 rules!2999)))) (inv!58005 (transformation!6964 (h!48809 (t!336624 rules!2999)))) e!2520582))))

(declare-fun b!4061923 () Bool)

(declare-fun e!2520579 () Bool)

(declare-fun tp!1230169 () Bool)

(assert (=> b!4061923 (= e!2520579 (and e!2520581 tp!1230169))))

(assert (=> b!4061139 (= tp!1230145 e!2520579)))

(assert (= b!4061925 b!4061927))

(assert (= b!4061923 b!4061925))

(assert (= (and b!4061139 ((_ is Cons!43389) (t!336624 rules!2999))) b!4061923))

(declare-fun m!4668267 () Bool)

(assert (=> b!4061925 m!4668267))

(declare-fun m!4668269 () Bool)

(assert (=> b!4061925 m!4668269))

(declare-fun b!4061932 () Bool)

(declare-fun e!2520585 () Bool)

(declare-fun tp!1230173 () Bool)

(assert (=> b!4061932 (= e!2520585 (and tp_is_empty!20709 tp!1230173))))

(assert (=> b!4061160 (= tp!1230148 e!2520585)))

(assert (= (and b!4061160 ((_ is Cons!43387) (t!336622 prefix!494))) b!4061932))

(declare-fun b!4061943 () Bool)

(declare-fun e!2520588 () Bool)

(assert (=> b!4061943 (= e!2520588 tp_is_empty!20709)))

(declare-fun b!4061944 () Bool)

(declare-fun tp!1230186 () Bool)

(declare-fun tp!1230187 () Bool)

(assert (=> b!4061944 (= e!2520588 (and tp!1230186 tp!1230187))))

(assert (=> b!4061134 (= tp!1230144 e!2520588)))

(declare-fun b!4061945 () Bool)

(declare-fun tp!1230184 () Bool)

(assert (=> b!4061945 (= e!2520588 tp!1230184)))

(declare-fun b!4061946 () Bool)

(declare-fun tp!1230188 () Bool)

(declare-fun tp!1230185 () Bool)

(assert (=> b!4061946 (= e!2520588 (and tp!1230188 tp!1230185))))

(assert (= (and b!4061134 ((_ is ElementMatch!11869) (regex!6964 (h!48809 rules!2999)))) b!4061943))

(assert (= (and b!4061134 ((_ is Concat!19064) (regex!6964 (h!48809 rules!2999)))) b!4061944))

(assert (= (and b!4061134 ((_ is Star!11869) (regex!6964 (h!48809 rules!2999)))) b!4061945))

(assert (= (and b!4061134 ((_ is Union!11869) (regex!6964 (h!48809 rules!2999)))) b!4061946))

(declare-fun b!4061947 () Bool)

(declare-fun e!2520589 () Bool)

(declare-fun tp!1230189 () Bool)

(assert (=> b!4061947 (= e!2520589 (and tp_is_empty!20709 tp!1230189))))

(assert (=> b!4061166 (= tp!1230140 e!2520589)))

(assert (= (and b!4061166 ((_ is Cons!43387) (t!336622 newSuffixResult!27))) b!4061947))

(declare-fun b!4061948 () Bool)

(declare-fun e!2520590 () Bool)

(declare-fun tp!1230190 () Bool)

(assert (=> b!4061948 (= e!2520590 (and tp_is_empty!20709 tp!1230190))))

(assert (=> b!4061130 (= tp!1230142 e!2520590)))

(assert (= (and b!4061130 ((_ is Cons!43387) (t!336622 suffixResult!105))) b!4061948))

(declare-fun b!4061949 () Bool)

(declare-fun e!2520591 () Bool)

(declare-fun tp!1230191 () Bool)

(assert (=> b!4061949 (= e!2520591 (and tp_is_empty!20709 tp!1230191))))

(assert (=> b!4061137 (= tp!1230146 e!2520591)))

(assert (= (and b!4061137 ((_ is Cons!43387) (originalCharacters!7564 token!484))) b!4061949))

(declare-fun b!4061950 () Bool)

(declare-fun e!2520592 () Bool)

(assert (=> b!4061950 (= e!2520592 tp_is_empty!20709)))

(declare-fun b!4061951 () Bool)

(declare-fun tp!1230194 () Bool)

(declare-fun tp!1230195 () Bool)

(assert (=> b!4061951 (= e!2520592 (and tp!1230194 tp!1230195))))

(assert (=> b!4061169 (= tp!1230139 e!2520592)))

(declare-fun b!4061952 () Bool)

(declare-fun tp!1230192 () Bool)

(assert (=> b!4061952 (= e!2520592 tp!1230192)))

(declare-fun b!4061953 () Bool)

(declare-fun tp!1230196 () Bool)

(declare-fun tp!1230193 () Bool)

(assert (=> b!4061953 (= e!2520592 (and tp!1230196 tp!1230193))))

(assert (= (and b!4061169 ((_ is ElementMatch!11869) (regex!6964 (rule!10056 token!484)))) b!4061950))

(assert (= (and b!4061169 ((_ is Concat!19064) (regex!6964 (rule!10056 token!484)))) b!4061951))

(assert (= (and b!4061169 ((_ is Star!11869) (regex!6964 (rule!10056 token!484)))) b!4061952))

(assert (= (and b!4061169 ((_ is Union!11869) (regex!6964 (rule!10056 token!484)))) b!4061953))

(declare-fun b!4061954 () Bool)

(declare-fun e!2520593 () Bool)

(declare-fun tp!1230197 () Bool)

(assert (=> b!4061954 (= e!2520593 (and tp_is_empty!20709 tp!1230197))))

(assert (=> b!4061159 (= tp!1230149 e!2520593)))

(assert (= (and b!4061159 ((_ is Cons!43387) (t!336622 newSuffix!27))) b!4061954))

(declare-fun b!4061955 () Bool)

(declare-fun e!2520594 () Bool)

(declare-fun tp!1230198 () Bool)

(assert (=> b!4061955 (= e!2520594 (and tp_is_empty!20709 tp!1230198))))

(assert (=> b!4061132 (= tp!1230147 e!2520594)))

(assert (= (and b!4061132 ((_ is Cons!43387) (t!336622 suffix!1299))) b!4061955))

(declare-fun b_lambda!118699 () Bool)

(assert (= b_lambda!118697 (or (and b!4061144 b_free!112977 (= (toValue!9524 (transformation!6964 (h!48809 rules!2999))) (toValue!9524 (transformation!6964 (rule!10056 token!484))))) (and b!4061141 b_free!112981) (and b!4061927 b_free!112985 (= (toValue!9524 (transformation!6964 (h!48809 (t!336624 rules!2999)))) (toValue!9524 (transformation!6964 (rule!10056 token!484))))) b_lambda!118699)))

(declare-fun b_lambda!118701 () Bool)

(assert (= b_lambda!118681 (or (and b!4061144 b_free!112979 (= (toChars!9383 (transformation!6964 (h!48809 rules!2999))) (toChars!9383 (transformation!6964 (rule!10056 token!484))))) (and b!4061141 b_free!112983) (and b!4061927 b_free!112987 (= (toChars!9383 (transformation!6964 (h!48809 (t!336624 rules!2999)))) (toChars!9383 (transformation!6964 (rule!10056 token!484))))) b_lambda!118701)))

(declare-fun b_lambda!118703 () Bool)

(assert (= b_lambda!118683 (or (and b!4061144 b_free!112979 (= (toChars!9383 (transformation!6964 (h!48809 rules!2999))) (toChars!9383 (transformation!6964 (rule!10056 token!484))))) (and b!4061141 b_free!112983) (and b!4061927 b_free!112987 (= (toChars!9383 (transformation!6964 (h!48809 (t!336624 rules!2999)))) (toChars!9383 (transformation!6964 (rule!10056 token!484))))) b_lambda!118703)))

(check-sat (not bm!288225) (not b!4061713) (not b_lambda!118703) (not d!1207497) (not d!1207165) (not b!4061947) (not b!4061503) (not d!1207163) (not b!4061338) (not b!4061883) (not d!1207261) (not d!1207167) (not b!4061768) (not b!4061842) (not bm!288227) (not b!4061500) (not d!1207527) (not d!1207511) (not b!4061820) (not b!4061780) (not b!4061517) (not b!4061817) (not d!1207293) (not d!1207459) (not b_next!113685) (not b!4061887) (not b!4061856) b_and!312305 (not b!4061334) (not d!1207285) (not b!4061514) (not d!1207281) (not b!4061435) (not b!4061858) (not b!4061722) (not b!4061497) (not b!4061513) (not b_next!113691) (not d!1207437) (not b!4061847) (not d!1207267) (not b!4061496) (not b!4061864) (not b!4061670) (not d!1207221) (not d!1207431) (not b!4061485) (not b!4061867) (not b!4061816) (not b!4061548) (not b!4061344) (not b!4061236) (not b!4061678) (not b!4061686) (not b_next!113683) (not b!4061868) (not b!4061440) (not b!4061775) (not b!4061870) b_and!312309 (not b!4061863) (not b!4061345) (not b!4061804) (not b!4061519) (not b!4061445) tp_is_empty!20709 (not d!1207283) (not d!1207361) (not b!4061892) (not d!1207227) (not d!1207291) (not b!4061925) (not d!1207161) (not b!4061520) (not b!4061821) (not b!4061749) b_and!312307 (not b!4061539) (not d!1207315) (not d!1207373) (not d!1207531) (not b!4061431) (not b!4061691) (not b!4061183) (not b!4061891) (not b!4061774) (not d!1207503) (not b!4061239) (not b!4061432) (not b!4061526) b_and!312303 (not b!4061755) (not d!1207493) (not b!4061843) (not d!1207171) (not d!1207365) (not b!4061869) (not b!4061888) (not b!4061955) (not b_next!113689) (not b!4061538) (not b!4061205) (not b!4061879) (not b_lambda!118701) (not d!1207385) (not b!4061951) (not b!4061797) (not d!1207377) (not d!1207173) (not b!4061818) (not b!4061848) (not d!1207303) (not d!1207277) (not b!4061493) (not b_lambda!118687) (not b!4061442) (not d!1207455) (not b!4061339) (not b!4061839) (not d!1207231) (not bm!288216) (not d!1207213) (not d!1207311) (not b!4061463) (not b!4061932) (not d!1207245) (not tb!244341) (not b!4061827) (not b_next!113687) (not b!4061465) (not d!1207529) (not b!4061550) (not b!4061866) (not b!4061754) (not d!1207275) (not b!4061531) (not b!4061542) (not b!4061677) (not d!1207461) (not b!4061525) (not d!1207309) (not b!4061798) (not b!4061433) (not d!1207243) (not b!4061337) (not d!1207295) (not bm!288229) (not d!1207219) (not d!1207421) (not d!1207313) (not b!4061522) (not b!4061954) (not b!4061923) (not b!4061837) (not b!4061953) (not b!4061801) (not b!4061706) (not b!4061786) (not d!1207443) (not d!1207375) (not b!4061846) (not b!4061509) (not b!4061335) (not b!4061438) (not tb!244349) (not b!4061484) (not d!1207381) (not b_lambda!118689) (not d!1207157) (not b!4061751) (not b!4061673) (not d!1207359) (not b!4061674) (not b!4061439) (not d!1207265) (not b!4061944) (not b!4061510) (not b!4061945) (not b!4061355) (not tb!244353) (not b!4061700) (not d!1207463) (not b!4061893) (not b!4061857) (not d!1207367) (not b!4061795) (not b!4061948) (not b!4061541) (not b!4061828) (not d!1207301) (not b!4061546) (not d!1207505) (not b!4061491) (not d!1207389) (not b!4061336) (not b!4061341) (not d!1207379) (not b!4061767) (not b!4061694) (not d!1207169) (not b!4061946) (not b!4061699) (not b!4061340) (not b!4061695) (not d!1207515) (not d!1207535) (not b!4061779) (not b!4061823) b_and!312289 (not tb!244365) (not b!4061187) (not b!4061671) (not b!4061549) (not b!4061498) (not b!4061766) (not b!4061675) (not bm!288219) (not d!1207305) (not b!4061799) (not d!1207469) (not b!4061246) (not b!4061841) (not b!4061949) (not b!4061464) (not b!4061750) (not b!4061555) (not d!1207289) (not b!4061375) (not b!4061199) (not b!4061884) (not b!4061787) (not d!1207237) (not b!4061241) (not b!4061697) (not b_next!113681) (not b_lambda!118699) (not b!4061826) (not b!4061952) (not b!4061393) (not b!4061532) (not b!4061802) (not b!4061240) (not b!4061778) (not d!1207159) (not b!4061527) (not b!4061537) (not b!4061198) (not b!4061800) (not d!1207447) (not d!1207233) (not b!4061243) b_and!312287 (not b!4061676) (not b!4061880) (not b!4061689) (not b!4061803) (not b!4061871) (not b!4061756) (not d!1207525) (not d!1207209) (not b!4061529) (not d!1207257) (not b!4061776) (not b!4061373))
(check-sat (not b_next!113685) b_and!312305 (not b_next!113691) (not b_next!113683) b_and!312309 b_and!312307 (not b_next!113687) b_and!312289 (not b_next!113681) b_and!312287 (not b_next!113689) b_and!312303)
