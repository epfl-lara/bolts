; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!371602 () Bool)

(assert start!371602)

(declare-fun b!3952929 () Bool)

(declare-fun b_free!108777 () Bool)

(declare-fun b_next!109481 () Bool)

(assert (=> b!3952929 (= b_free!108777 (not b_next!109481))))

(declare-fun tp!1204491 () Bool)

(declare-fun b_and!303019 () Bool)

(assert (=> b!3952929 (= tp!1204491 b_and!303019)))

(declare-fun b_free!108779 () Bool)

(declare-fun b_next!109483 () Bool)

(assert (=> b!3952929 (= b_free!108779 (not b_next!109483))))

(declare-fun tp!1204486 () Bool)

(declare-fun b_and!303021 () Bool)

(assert (=> b!3952929 (= tp!1204486 b_and!303021)))

(declare-fun b!3952934 () Bool)

(declare-fun b_free!108781 () Bool)

(declare-fun b_next!109485 () Bool)

(assert (=> b!3952934 (= b_free!108781 (not b_next!109485))))

(declare-fun tp!1204481 () Bool)

(declare-fun b_and!303023 () Bool)

(assert (=> b!3952934 (= tp!1204481 b_and!303023)))

(declare-fun b_free!108783 () Bool)

(declare-fun b_next!109487 () Bool)

(assert (=> b!3952934 (= b_free!108783 (not b_next!109487))))

(declare-fun tp!1204477 () Bool)

(declare-fun b_and!303025 () Bool)

(assert (=> b!3952934 (= tp!1204477 b_and!303025)))

(declare-fun b!3952935 () Bool)

(declare-fun b_free!108785 () Bool)

(declare-fun b_next!109489 () Bool)

(assert (=> b!3952935 (= b_free!108785 (not b_next!109489))))

(declare-fun tp!1204489 () Bool)

(declare-fun b_and!303027 () Bool)

(assert (=> b!3952935 (= tp!1204489 b_and!303027)))

(declare-fun b_free!108787 () Bool)

(declare-fun b_next!109491 () Bool)

(assert (=> b!3952935 (= b_free!108787 (not b_next!109491))))

(declare-fun tp!1204485 () Bool)

(declare-fun b_and!303029 () Bool)

(assert (=> b!3952935 (= tp!1204485 b_and!303029)))

(declare-fun b!3952921 () Bool)

(declare-fun e!2447054 () Bool)

(declare-fun tp_is_empty!19955 () Bool)

(declare-fun tp!1204475 () Bool)

(assert (=> b!3952921 (= e!2447054 (and tp_is_empty!19955 tp!1204475))))

(declare-fun b!3952922 () Bool)

(declare-fun e!2447064 () Bool)

(declare-fun e!2447057 () Bool)

(assert (=> b!3952922 (= e!2447064 e!2447057)))

(declare-fun res!1599478 () Bool)

(assert (=> b!3952922 (=> (not res!1599478) (not e!2447057))))

(declare-datatypes ((C!23170 0))(
  ( (C!23171 (val!13679 Int)) )
))
(declare-datatypes ((List!42183 0))(
  ( (Nil!42059) (Cons!42059 (h!47479 C!23170) (t!328824 List!42183)) )
))
(declare-fun suffixResult!91 () List!42183)

(declare-datatypes ((List!42184 0))(
  ( (Nil!42060) (Cons!42060 (h!47480 (_ BitVec 16)) (t!328825 List!42184)) )
))
(declare-datatypes ((TokenValue!6817 0))(
  ( (FloatLiteralValue!13634 (text!48164 List!42184)) (TokenValueExt!6816 (__x!25851 Int)) (Broken!34085 (value!208339 List!42184)) (Object!6940) (End!6817) (Def!6817) (Underscore!6817) (Match!6817) (Else!6817) (Error!6817) (Case!6817) (If!6817) (Extends!6817) (Abstract!6817) (Class!6817) (Val!6817) (DelimiterValue!13634 (del!6877 List!42184)) (KeywordValue!6823 (value!208340 List!42184)) (CommentValue!13634 (value!208341 List!42184)) (WhitespaceValue!13634 (value!208342 List!42184)) (IndentationValue!6817 (value!208343 List!42184)) (String!47804) (Int32!6817) (Broken!34086 (value!208344 List!42184)) (Boolean!6818) (Unit!60562) (OperatorValue!6820 (op!6877 List!42184)) (IdentifierValue!13634 (value!208345 List!42184)) (IdentifierValue!13635 (value!208346 List!42184)) (WhitespaceValue!13635 (value!208347 List!42184)) (True!13634) (False!13634) (Broken!34087 (value!208348 List!42184)) (Broken!34088 (value!208349 List!42184)) (True!13635) (RightBrace!6817) (RightBracket!6817) (Colon!6817) (Null!6817) (Comma!6817) (LeftBracket!6817) (False!13635) (LeftBrace!6817) (ImaginaryLiteralValue!6817 (text!48165 List!42184)) (StringLiteralValue!20451 (value!208350 List!42184)) (EOFValue!6817 (value!208351 List!42184)) (IdentValue!6817 (value!208352 List!42184)) (DelimiterValue!13635 (value!208353 List!42184)) (DedentValue!6817 (value!208354 List!42184)) (NewLineValue!6817 (value!208355 List!42184)) (IntegerValue!20451 (value!208356 (_ BitVec 32)) (text!48166 List!42184)) (IntegerValue!20452 (value!208357 Int) (text!48167 List!42184)) (Times!6817) (Or!6817) (Equal!6817) (Minus!6817) (Broken!34089 (value!208358 List!42184)) (And!6817) (Div!6817) (LessEqual!6817) (Mod!6817) (Concat!18309) (Not!6817) (Plus!6817) (SpaceValue!6817 (value!208359 List!42184)) (IntegerValue!20453 (value!208360 Int) (text!48168 List!42184)) (StringLiteralValue!20452 (text!48169 List!42184)) (FloatLiteralValue!13635 (text!48170 List!42184)) (BytesLiteralValue!6817 (value!208361 List!42184)) (CommentValue!13635 (value!208362 List!42184)) (StringLiteralValue!20453 (value!208363 List!42184)) (ErrorTokenValue!6817 (msg!6878 List!42184)) )
))
(declare-datatypes ((Regex!11492 0))(
  ( (ElementMatch!11492 (c!686225 C!23170)) (Concat!18310 (regOne!23496 Regex!11492) (regTwo!23496 Regex!11492)) (EmptyExpr!11492) (Star!11492 (reg!11821 Regex!11492)) (EmptyLang!11492) (Union!11492 (regOne!23497 Regex!11492) (regTwo!23497 Regex!11492)) )
))
(declare-datatypes ((String!47805 0))(
  ( (String!47806 (value!208364 String)) )
))
(declare-datatypes ((IArray!25601 0))(
  ( (IArray!25602 (innerList!12858 List!42183)) )
))
(declare-datatypes ((Conc!12798 0))(
  ( (Node!12798 (left!31970 Conc!12798) (right!32300 Conc!12798) (csize!25826 Int) (cheight!13009 Int)) (Leaf!19799 (xs!16104 IArray!25601) (csize!25827 Int)) (Empty!12798) )
))
(declare-datatypes ((BalanceConc!25190 0))(
  ( (BalanceConc!25191 (c!686226 Conc!12798)) )
))
(declare-datatypes ((TokenValueInjection!13062 0))(
  ( (TokenValueInjection!13063 (toValue!9063 Int) (toChars!8922 Int)) )
))
(declare-datatypes ((Rule!12974 0))(
  ( (Rule!12975 (regex!6587 Regex!11492) (tag!7447 String!47805) (isSeparator!6587 Bool) (transformation!6587 TokenValueInjection!13062)) )
))
(declare-datatypes ((Token!12312 0))(
  ( (Token!12313 (value!208365 TokenValue!6817) (rule!9557 Rule!12974) (size!31512 Int) (originalCharacters!7187 List!42183)) )
))
(declare-datatypes ((List!42185 0))(
  ( (Nil!42061) (Cons!42061 (h!47481 Token!12312) (t!328826 List!42185)) )
))
(declare-fun lt!1382061 () List!42185)

(declare-datatypes ((tuple2!41346 0))(
  ( (tuple2!41347 (_1!23807 List!42185) (_2!23807 List!42183)) )
))
(declare-fun lt!1382056 () tuple2!41346)

(assert (=> b!3952922 (= res!1599478 (= lt!1382056 (tuple2!41347 lt!1382061 suffixResult!91)))))

(declare-datatypes ((LexerInterface!6176 0))(
  ( (LexerInterfaceExt!6173 (__x!25852 Int)) (Lexer!6174) )
))
(declare-fun thiss!20629 () LexerInterface!6176)

(declare-datatypes ((List!42186 0))(
  ( (Nil!42062) (Cons!42062 (h!47482 Rule!12974) (t!328827 List!42186)) )
))
(declare-fun rules!2768 () List!42186)

(declare-fun lt!1382057 () List!42183)

(declare-fun lexList!1944 (LexerInterface!6176 List!42186 List!42183) tuple2!41346)

(assert (=> b!3952922 (= lt!1382056 (lexList!1944 thiss!20629 rules!2768 lt!1382057))))

(declare-fun prefixTokens!80 () List!42185)

(declare-fun suffixTokens!72 () List!42185)

(declare-fun ++!10931 (List!42185 List!42185) List!42185)

(assert (=> b!3952922 (= lt!1382061 (++!10931 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!42183)

(declare-fun suffix!1176 () List!42183)

(declare-fun ++!10932 (List!42183 List!42183) List!42183)

(assert (=> b!3952922 (= lt!1382057 (++!10932 prefix!426 suffix!1176))))

(declare-fun b!3952923 () Bool)

(declare-fun e!2447056 () Bool)

(declare-fun e!2447067 () Bool)

(assert (=> b!3952923 (= e!2447056 e!2447067)))

(declare-fun res!1599481 () Bool)

(assert (=> b!3952923 (=> res!1599481 e!2447067)))

(declare-fun lt!1382053 () Int)

(declare-fun lt!1382065 () Int)

(assert (=> b!3952923 (= res!1599481 (>= lt!1382053 lt!1382065))))

(declare-fun size!31513 (List!42183) Int)

(assert (=> b!3952923 (= lt!1382065 (size!31513 suffix!1176))))

(declare-datatypes ((tuple2!41348 0))(
  ( (tuple2!41349 (_1!23808 Token!12312) (_2!23808 List!42183)) )
))
(declare-datatypes ((Option!9007 0))(
  ( (None!9006) (Some!9006 (v!39346 tuple2!41348)) )
))
(declare-fun lt!1382055 () Option!9007)

(assert (=> b!3952923 (= lt!1382053 (size!31513 (_2!23808 (v!39346 lt!1382055))))))

(declare-fun b!3952924 () Bool)

(declare-fun res!1599487 () Bool)

(assert (=> b!3952924 (=> (not res!1599487) (not e!2447064))))

(declare-fun isEmpty!25129 (List!42185) Bool)

(assert (=> b!3952924 (= res!1599487 (not (isEmpty!25129 prefixTokens!80)))))

(declare-fun b!3952925 () Bool)

(declare-fun res!1599477 () Bool)

(assert (=> b!3952925 (=> (not res!1599477) (not e!2447064))))

(declare-fun isEmpty!25130 (List!42186) Bool)

(assert (=> b!3952925 (= res!1599477 (not (isEmpty!25130 rules!2768)))))

(declare-fun b!3952926 () Bool)

(declare-fun e!2447047 () Bool)

(declare-fun e!2447063 () Bool)

(assert (=> b!3952926 (= e!2447047 e!2447063)))

(declare-fun res!1599480 () Bool)

(assert (=> b!3952926 (=> res!1599480 e!2447063)))

(declare-fun lt!1382052 () Int)

(declare-fun lt!1382064 () Int)

(declare-fun lt!1382058 () Int)

(assert (=> b!3952926 (= res!1599480 (or (not (= (+ lt!1382058 lt!1382065) lt!1382064)) (<= lt!1382052 lt!1382058)))))

(assert (=> b!3952926 (= lt!1382058 (size!31513 prefix!426))))

(declare-fun b!3952927 () Bool)

(declare-fun res!1599484 () Bool)

(assert (=> b!3952927 (=> (not res!1599484) (not e!2447064))))

(declare-fun isEmpty!25131 (List!42183) Bool)

(assert (=> b!3952927 (= res!1599484 (not (isEmpty!25131 prefix!426)))))

(declare-fun b!3952928 () Bool)

(declare-fun e!2447059 () Bool)

(assert (=> b!3952928 (= e!2447059 (not e!2447056))))

(declare-fun res!1599483 () Bool)

(assert (=> b!3952928 (=> res!1599483 e!2447056)))

(declare-fun lt!1382063 () List!42183)

(assert (=> b!3952928 (= res!1599483 (not (= lt!1382063 lt!1382057)))))

(declare-fun lt!1382059 () tuple2!41346)

(assert (=> b!3952928 (= lt!1382059 (lexList!1944 thiss!20629 rules!2768 (_2!23808 (v!39346 lt!1382055))))))

(declare-fun lt!1382054 () List!42183)

(declare-fun lt!1382067 () List!42183)

(declare-fun lt!1382051 () TokenValue!6817)

(assert (=> b!3952928 (and (= (size!31512 (_1!23808 (v!39346 lt!1382055))) lt!1382052) (= (originalCharacters!7187 (_1!23808 (v!39346 lt!1382055))) lt!1382054) (= (v!39346 lt!1382055) (tuple2!41349 (Token!12313 lt!1382051 (rule!9557 (_1!23808 (v!39346 lt!1382055))) lt!1382052 lt!1382054) lt!1382067)))))

(assert (=> b!3952928 (= lt!1382052 (size!31513 lt!1382054))))

(declare-fun e!2447048 () Bool)

(assert (=> b!3952928 e!2447048))

(declare-fun res!1599490 () Bool)

(assert (=> b!3952928 (=> (not res!1599490) (not e!2447048))))

(assert (=> b!3952928 (= res!1599490 (= (value!208365 (_1!23808 (v!39346 lt!1382055))) lt!1382051))))

(declare-fun apply!9818 (TokenValueInjection!13062 BalanceConc!25190) TokenValue!6817)

(declare-fun seqFromList!4846 (List!42183) BalanceConc!25190)

(assert (=> b!3952928 (= lt!1382051 (apply!9818 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))) (seqFromList!4846 lt!1382054)))))

(assert (=> b!3952928 (= (_2!23808 (v!39346 lt!1382055)) lt!1382067)))

(declare-datatypes ((Unit!60563 0))(
  ( (Unit!60564) )
))
(declare-fun lt!1382062 () Unit!60563)

(declare-fun lemmaSamePrefixThenSameSuffix!1885 (List!42183 List!42183 List!42183 List!42183 List!42183) Unit!60563)

(assert (=> b!3952928 (= lt!1382062 (lemmaSamePrefixThenSameSuffix!1885 lt!1382054 (_2!23808 (v!39346 lt!1382055)) lt!1382054 lt!1382067 lt!1382057))))

(declare-fun getSuffix!2127 (List!42183 List!42183) List!42183)

(assert (=> b!3952928 (= lt!1382067 (getSuffix!2127 lt!1382057 lt!1382054))))

(declare-fun isPrefix!3676 (List!42183 List!42183) Bool)

(assert (=> b!3952928 (isPrefix!3676 lt!1382054 lt!1382063)))

(assert (=> b!3952928 (= lt!1382063 (++!10932 lt!1382054 (_2!23808 (v!39346 lt!1382055))))))

(declare-fun lt!1382066 () Unit!60563)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2535 (List!42183 List!42183) Unit!60563)

(assert (=> b!3952928 (= lt!1382066 (lemmaConcatTwoListThenFirstIsPrefix!2535 lt!1382054 (_2!23808 (v!39346 lt!1382055))))))

(declare-fun list!15617 (BalanceConc!25190) List!42183)

(declare-fun charsOf!4405 (Token!12312) BalanceConc!25190)

(assert (=> b!3952928 (= lt!1382054 (list!15617 (charsOf!4405 (_1!23808 (v!39346 lt!1382055)))))))

(declare-fun ruleValid!2529 (LexerInterface!6176 Rule!12974) Bool)

(assert (=> b!3952928 (ruleValid!2529 thiss!20629 (rule!9557 (_1!23808 (v!39346 lt!1382055))))))

(declare-fun lt!1382060 () Unit!60563)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1605 (LexerInterface!6176 Rule!12974 List!42186) Unit!60563)

(assert (=> b!3952928 (= lt!1382060 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1605 thiss!20629 (rule!9557 (_1!23808 (v!39346 lt!1382055))) rules!2768))))

(declare-fun lt!1382050 () Unit!60563)

(declare-fun lemmaCharactersSize!1240 (Token!12312) Unit!60563)

(assert (=> b!3952928 (= lt!1382050 (lemmaCharactersSize!1240 (_1!23808 (v!39346 lt!1382055))))))

(declare-fun e!2447050 () Bool)

(assert (=> b!3952929 (= e!2447050 (and tp!1204491 tp!1204486))))

(declare-fun e!2447053 () Bool)

(declare-fun tp!1204488 () Bool)

(declare-fun b!3952930 () Bool)

(declare-fun e!2447052 () Bool)

(declare-fun inv!21 (TokenValue!6817) Bool)

(assert (=> b!3952930 (= e!2447053 (and (inv!21 (value!208365 (h!47481 suffixTokens!72))) e!2447052 tp!1204488))))

(declare-fun b!3952931 () Bool)

(declare-fun res!1599489 () Bool)

(assert (=> b!3952931 (=> res!1599489 e!2447056)))

(assert (=> b!3952931 (= res!1599489 (or (not (= lt!1382059 (tuple2!41347 (_1!23807 lt!1382059) (_2!23807 lt!1382059)))) (= (_2!23808 (v!39346 lt!1382055)) suffix!1176)))))

(declare-fun b!3952932 () Bool)

(assert (=> b!3952932 (= e!2447057 e!2447059)))

(declare-fun res!1599486 () Bool)

(assert (=> b!3952932 (=> (not res!1599486) (not e!2447059))))

(assert (=> b!3952932 (= res!1599486 (is-Some!9006 lt!1382055))))

(declare-fun maxPrefix!3480 (LexerInterface!6176 List!42186 List!42183) Option!9007)

(assert (=> b!3952932 (= lt!1382055 (maxPrefix!3480 thiss!20629 rules!2768 lt!1382057))))

(declare-fun res!1599488 () Bool)

(assert (=> start!371602 (=> (not res!1599488) (not e!2447064))))

(assert (=> start!371602 (= res!1599488 (is-Lexer!6174 thiss!20629))))

(assert (=> start!371602 e!2447064))

(declare-fun e!2447062 () Bool)

(assert (=> start!371602 e!2447062))

(assert (=> start!371602 true))

(assert (=> start!371602 e!2447054))

(declare-fun e!2447061 () Bool)

(assert (=> start!371602 e!2447061))

(declare-fun e!2447060 () Bool)

(assert (=> start!371602 e!2447060))

(declare-fun e!2447066 () Bool)

(assert (=> start!371602 e!2447066))

(declare-fun e!2447043 () Bool)

(assert (=> start!371602 e!2447043))

(declare-fun b!3952933 () Bool)

(declare-fun res!1599485 () Bool)

(assert (=> b!3952933 (=> res!1599485 e!2447056)))

(assert (=> b!3952933 (= res!1599485 (not (= lt!1382056 (tuple2!41347 (++!10931 (Cons!42061 (_1!23808 (v!39346 lt!1382055)) Nil!42061) (_1!23807 lt!1382059)) (_2!23807 lt!1382059)))))))

(declare-fun e!2447044 () Bool)

(assert (=> b!3952934 (= e!2447044 (and tp!1204481 tp!1204477))))

(declare-fun e!2447069 () Bool)

(assert (=> b!3952935 (= e!2447069 (and tp!1204489 tp!1204485))))

(declare-fun b!3952936 () Bool)

(declare-fun res!1599479 () Bool)

(assert (=> b!3952936 (=> (not res!1599479) (not e!2447057))))

(assert (=> b!3952936 (= res!1599479 (= (lexList!1944 thiss!20629 rules!2768 suffix!1176) (tuple2!41347 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3952937 () Bool)

(declare-fun tp!1204480 () Bool)

(assert (=> b!3952937 (= e!2447043 (and tp_is_empty!19955 tp!1204480))))

(declare-fun tp!1204487 () Bool)

(declare-fun b!3952938 () Bool)

(declare-fun inv!56286 (Token!12312) Bool)

(assert (=> b!3952938 (= e!2447066 (and (inv!56286 (h!47481 suffixTokens!72)) e!2447053 tp!1204487))))

(declare-fun e!2447055 () Bool)

(declare-fun tp!1204482 () Bool)

(declare-fun b!3952939 () Bool)

(assert (=> b!3952939 (= e!2447060 (and (inv!56286 (h!47481 prefixTokens!80)) e!2447055 tp!1204482))))

(declare-fun b!3952940 () Bool)

(assert (=> b!3952940 (= e!2447067 e!2447047)))

(declare-fun res!1599491 () Bool)

(assert (=> b!3952940 (=> res!1599491 e!2447047)))

(assert (=> b!3952940 (= res!1599491 (not (= (+ lt!1382052 lt!1382053) lt!1382064)))))

(assert (=> b!3952940 (= lt!1382064 (size!31513 lt!1382057))))

(declare-fun b!3952941 () Bool)

(assert (=> b!3952941 (= e!2447048 (= (size!31512 (_1!23808 (v!39346 lt!1382055))) (size!31513 (originalCharacters!7187 (_1!23808 (v!39346 lt!1382055))))))))

(declare-fun tp!1204490 () Bool)

(declare-fun b!3952942 () Bool)

(declare-fun inv!56283 (String!47805) Bool)

(declare-fun inv!56287 (TokenValueInjection!13062) Bool)

(assert (=> b!3952942 (= e!2447052 (and tp!1204490 (inv!56283 (tag!7447 (rule!9557 (h!47481 suffixTokens!72)))) (inv!56287 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) e!2447050))))

(declare-fun tp!1204476 () Bool)

(declare-fun e!2447068 () Bool)

(declare-fun b!3952943 () Bool)

(assert (=> b!3952943 (= e!2447068 (and tp!1204476 (inv!56283 (tag!7447 (rule!9557 (h!47481 prefixTokens!80)))) (inv!56287 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) e!2447044))))

(declare-fun b!3952944 () Bool)

(declare-fun e!2447058 () Bool)

(declare-fun tp!1204478 () Bool)

(assert (=> b!3952944 (= e!2447058 (and tp!1204478 (inv!56283 (tag!7447 (h!47482 rules!2768))) (inv!56287 (transformation!6587 (h!47482 rules!2768))) e!2447069))))

(declare-fun tp!1204484 () Bool)

(declare-fun b!3952945 () Bool)

(assert (=> b!3952945 (= e!2447055 (and (inv!21 (value!208365 (h!47481 prefixTokens!80))) e!2447068 tp!1204484))))

(declare-fun b!3952946 () Bool)

(declare-fun contains!8409 (List!42186 Rule!12974) Bool)

(assert (=> b!3952946 (= e!2447063 (contains!8409 rules!2768 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))))

(declare-fun b!3952947 () Bool)

(declare-fun tp!1204479 () Bool)

(assert (=> b!3952947 (= e!2447061 (and e!2447058 tp!1204479))))

(declare-fun b!3952948 () Bool)

(declare-fun tp!1204483 () Bool)

(assert (=> b!3952948 (= e!2447062 (and tp_is_empty!19955 tp!1204483))))

(declare-fun b!3952949 () Bool)

(declare-fun res!1599482 () Bool)

(assert (=> b!3952949 (=> (not res!1599482) (not e!2447064))))

(declare-fun rulesInvariant!5519 (LexerInterface!6176 List!42186) Bool)

(assert (=> b!3952949 (= res!1599482 (rulesInvariant!5519 thiss!20629 rules!2768))))

(assert (= (and start!371602 res!1599488) b!3952925))

(assert (= (and b!3952925 res!1599477) b!3952949))

(assert (= (and b!3952949 res!1599482) b!3952924))

(assert (= (and b!3952924 res!1599487) b!3952927))

(assert (= (and b!3952927 res!1599484) b!3952922))

(assert (= (and b!3952922 res!1599478) b!3952936))

(assert (= (and b!3952936 res!1599479) b!3952932))

(assert (= (and b!3952932 res!1599486) b!3952928))

(assert (= (and b!3952928 res!1599490) b!3952941))

(assert (= (and b!3952928 (not res!1599483)) b!3952933))

(assert (= (and b!3952933 (not res!1599485)) b!3952931))

(assert (= (and b!3952931 (not res!1599489)) b!3952923))

(assert (= (and b!3952923 (not res!1599481)) b!3952940))

(assert (= (and b!3952940 (not res!1599491)) b!3952926))

(assert (= (and b!3952926 (not res!1599480)) b!3952946))

(assert (= (and start!371602 (is-Cons!42059 suffixResult!91)) b!3952948))

(assert (= (and start!371602 (is-Cons!42059 suffix!1176)) b!3952921))

(assert (= b!3952944 b!3952935))

(assert (= b!3952947 b!3952944))

(assert (= (and start!371602 (is-Cons!42062 rules!2768)) b!3952947))

(assert (= b!3952943 b!3952934))

(assert (= b!3952945 b!3952943))

(assert (= b!3952939 b!3952945))

(assert (= (and start!371602 (is-Cons!42061 prefixTokens!80)) b!3952939))

(assert (= b!3952942 b!3952929))

(assert (= b!3952930 b!3952942))

(assert (= b!3952938 b!3952930))

(assert (= (and start!371602 (is-Cons!42061 suffixTokens!72)) b!3952938))

(assert (= (and start!371602 (is-Cons!42059 prefix!426)) b!3952937))

(declare-fun m!4521689 () Bool)

(assert (=> b!3952925 m!4521689))

(declare-fun m!4521691 () Bool)

(assert (=> b!3952940 m!4521691))

(declare-fun m!4521693 () Bool)

(assert (=> b!3952945 m!4521693))

(declare-fun m!4521695 () Bool)

(assert (=> b!3952932 m!4521695))

(declare-fun m!4521697 () Bool)

(assert (=> b!3952944 m!4521697))

(declare-fun m!4521699 () Bool)

(assert (=> b!3952944 m!4521699))

(declare-fun m!4521701 () Bool)

(assert (=> b!3952949 m!4521701))

(declare-fun m!4521703 () Bool)

(assert (=> b!3952938 m!4521703))

(declare-fun m!4521705 () Bool)

(assert (=> b!3952941 m!4521705))

(declare-fun m!4521707 () Bool)

(assert (=> b!3952946 m!4521707))

(declare-fun m!4521709 () Bool)

(assert (=> b!3952927 m!4521709))

(declare-fun m!4521711 () Bool)

(assert (=> b!3952942 m!4521711))

(declare-fun m!4521713 () Bool)

(assert (=> b!3952942 m!4521713))

(declare-fun m!4521715 () Bool)

(assert (=> b!3952939 m!4521715))

(declare-fun m!4521717 () Bool)

(assert (=> b!3952923 m!4521717))

(declare-fun m!4521719 () Bool)

(assert (=> b!3952923 m!4521719))

(declare-fun m!4521721 () Bool)

(assert (=> b!3952943 m!4521721))

(declare-fun m!4521723 () Bool)

(assert (=> b!3952943 m!4521723))

(declare-fun m!4521725 () Bool)

(assert (=> b!3952928 m!4521725))

(declare-fun m!4521727 () Bool)

(assert (=> b!3952928 m!4521727))

(assert (=> b!3952928 m!4521725))

(declare-fun m!4521729 () Bool)

(assert (=> b!3952928 m!4521729))

(declare-fun m!4521731 () Bool)

(assert (=> b!3952928 m!4521731))

(declare-fun m!4521733 () Bool)

(assert (=> b!3952928 m!4521733))

(declare-fun m!4521735 () Bool)

(assert (=> b!3952928 m!4521735))

(declare-fun m!4521737 () Bool)

(assert (=> b!3952928 m!4521737))

(declare-fun m!4521739 () Bool)

(assert (=> b!3952928 m!4521739))

(declare-fun m!4521741 () Bool)

(assert (=> b!3952928 m!4521741))

(assert (=> b!3952928 m!4521729))

(declare-fun m!4521743 () Bool)

(assert (=> b!3952928 m!4521743))

(declare-fun m!4521745 () Bool)

(assert (=> b!3952928 m!4521745))

(declare-fun m!4521747 () Bool)

(assert (=> b!3952928 m!4521747))

(declare-fun m!4521749 () Bool)

(assert (=> b!3952928 m!4521749))

(declare-fun m!4521751 () Bool)

(assert (=> b!3952928 m!4521751))

(declare-fun m!4521753 () Bool)

(assert (=> b!3952922 m!4521753))

(declare-fun m!4521755 () Bool)

(assert (=> b!3952922 m!4521755))

(declare-fun m!4521757 () Bool)

(assert (=> b!3952922 m!4521757))

(declare-fun m!4521759 () Bool)

(assert (=> b!3952924 m!4521759))

(declare-fun m!4521761 () Bool)

(assert (=> b!3952936 m!4521761))

(declare-fun m!4521763 () Bool)

(assert (=> b!3952933 m!4521763))

(declare-fun m!4521765 () Bool)

(assert (=> b!3952930 m!4521765))

(declare-fun m!4521767 () Bool)

(assert (=> b!3952926 m!4521767))

(push 1)

(assert (not b!3952949))

(assert b_and!303027)

(assert (not b_next!109487))

(assert (not b!3952942))

(assert b_and!303021)

(assert (not b!3952925))

(assert b_and!303019)

(assert (not b!3952941))

(assert (not b!3952944))

(assert (not b!3952938))

(assert (not b!3952948))

(assert (not b!3952939))

(assert (not b!3952943))

(assert b_and!303023)

(assert (not b!3952923))

(assert (not b!3952928))

(assert (not b_next!109489))

(assert (not b!3952937))

(assert b_and!303029)

(assert (not b!3952924))

(assert b_and!303025)

(assert (not b!3952945))

(assert (not b!3952930))

(assert (not b!3952921))

(assert tp_is_empty!19955)

(assert (not b!3952947))

(assert (not b!3952940))

(assert (not b!3952933))

(assert (not b_next!109491))

(assert (not b!3952936))

(assert (not b!3952932))

(assert (not b_next!109483))

(assert (not b!3952922))

(assert (not b!3952946))

(assert (not b_next!109485))

(assert (not b!3952926))

(assert (not b_next!109481))

(assert (not b!3952927))

(check-sat)

(pop 1)

(push 1)

(assert b_and!303023)

(assert b_and!303027)

(assert (not b_next!109489))

(assert b_and!303029)

(assert b_and!303025)

(assert (not b_next!109487))

(assert b_and!303021)

(assert (not b_next!109491))

(assert (not b_next!109483))

(assert (not b_next!109485))

(assert (not b_next!109481))

(assert b_and!303019)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1171877 () Bool)

(assert (=> d!1171877 (= (_2!23808 (v!39346 lt!1382055)) lt!1382067)))

(declare-fun lt!1382124 () Unit!60563)

(declare-fun choose!23592 (List!42183 List!42183 List!42183 List!42183 List!42183) Unit!60563)

(assert (=> d!1171877 (= lt!1382124 (choose!23592 lt!1382054 (_2!23808 (v!39346 lt!1382055)) lt!1382054 lt!1382067 lt!1382057))))

(assert (=> d!1171877 (isPrefix!3676 lt!1382054 lt!1382057)))

(assert (=> d!1171877 (= (lemmaSamePrefixThenSameSuffix!1885 lt!1382054 (_2!23808 (v!39346 lt!1382055)) lt!1382054 lt!1382067 lt!1382057) lt!1382124)))

(declare-fun bs!587047 () Bool)

(assert (= bs!587047 d!1171877))

(declare-fun m!4521849 () Bool)

(assert (=> bs!587047 m!4521849))

(declare-fun m!4521851 () Bool)

(assert (=> bs!587047 m!4521851))

(assert (=> b!3952928 d!1171877))

(declare-fun b!3953045 () Bool)

(declare-fun e!2447158 () Bool)

(declare-fun e!2447159 () Bool)

(assert (=> b!3953045 (= e!2447158 e!2447159)))

(declare-fun res!1599552 () Bool)

(assert (=> b!3953045 (=> (not res!1599552) (not e!2447159))))

(assert (=> b!3953045 (= res!1599552 (not (is-Nil!42059 lt!1382063)))))

(declare-fun b!3953046 () Bool)

(declare-fun res!1599551 () Bool)

(assert (=> b!3953046 (=> (not res!1599551) (not e!2447159))))

(declare-fun head!8396 (List!42183) C!23170)

(assert (=> b!3953046 (= res!1599551 (= (head!8396 lt!1382054) (head!8396 lt!1382063)))))

(declare-fun b!3953047 () Bool)

(declare-fun tail!6122 (List!42183) List!42183)

(assert (=> b!3953047 (= e!2447159 (isPrefix!3676 (tail!6122 lt!1382054) (tail!6122 lt!1382063)))))

(declare-fun d!1171879 () Bool)

(declare-fun e!2447157 () Bool)

(assert (=> d!1171879 e!2447157))

(declare-fun res!1599550 () Bool)

(assert (=> d!1171879 (=> res!1599550 e!2447157)))

(declare-fun lt!1382127 () Bool)

(assert (=> d!1171879 (= res!1599550 (not lt!1382127))))

(assert (=> d!1171879 (= lt!1382127 e!2447158)))

(declare-fun res!1599553 () Bool)

(assert (=> d!1171879 (=> res!1599553 e!2447158)))

(assert (=> d!1171879 (= res!1599553 (is-Nil!42059 lt!1382054))))

(assert (=> d!1171879 (= (isPrefix!3676 lt!1382054 lt!1382063) lt!1382127)))

(declare-fun b!3953048 () Bool)

(assert (=> b!3953048 (= e!2447157 (>= (size!31513 lt!1382063) (size!31513 lt!1382054)))))

(assert (= (and d!1171879 (not res!1599553)) b!3953045))

(assert (= (and b!3953045 res!1599552) b!3953046))

(assert (= (and b!3953046 res!1599551) b!3953047))

(assert (= (and d!1171879 (not res!1599550)) b!3953048))

(declare-fun m!4521853 () Bool)

(assert (=> b!3953046 m!4521853))

(declare-fun m!4521855 () Bool)

(assert (=> b!3953046 m!4521855))

(declare-fun m!4521857 () Bool)

(assert (=> b!3953047 m!4521857))

(declare-fun m!4521859 () Bool)

(assert (=> b!3953047 m!4521859))

(assert (=> b!3953047 m!4521857))

(assert (=> b!3953047 m!4521859))

(declare-fun m!4521861 () Bool)

(assert (=> b!3953047 m!4521861))

(declare-fun m!4521863 () Bool)

(assert (=> b!3953048 m!4521863))

(assert (=> b!3953048 m!4521749))

(assert (=> b!3952928 d!1171879))

(declare-fun d!1171881 () Bool)

(declare-fun fromListB!2239 (List!42183) BalanceConc!25190)

(assert (=> d!1171881 (= (seqFromList!4846 lt!1382054) (fromListB!2239 lt!1382054))))

(declare-fun bs!587048 () Bool)

(assert (= bs!587048 d!1171881))

(declare-fun m!4521865 () Bool)

(assert (=> bs!587048 m!4521865))

(assert (=> b!3952928 d!1171881))

(declare-fun d!1171883 () Bool)

(declare-fun res!1599558 () Bool)

(declare-fun e!2447162 () Bool)

(assert (=> d!1171883 (=> (not res!1599558) (not e!2447162))))

(declare-fun validRegex!5233 (Regex!11492) Bool)

(assert (=> d!1171883 (= res!1599558 (validRegex!5233 (regex!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055))))))))

(assert (=> d!1171883 (= (ruleValid!2529 thiss!20629 (rule!9557 (_1!23808 (v!39346 lt!1382055)))) e!2447162)))

(declare-fun b!3953053 () Bool)

(declare-fun res!1599559 () Bool)

(assert (=> b!3953053 (=> (not res!1599559) (not e!2447162))))

(declare-fun nullable!4034 (Regex!11492) Bool)

(assert (=> b!3953053 (= res!1599559 (not (nullable!4034 (regex!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))))))

(declare-fun b!3953054 () Bool)

(assert (=> b!3953054 (= e!2447162 (not (= (tag!7447 (rule!9557 (_1!23808 (v!39346 lt!1382055)))) (String!47806 ""))))))

(assert (= (and d!1171883 res!1599558) b!3953053))

(assert (= (and b!3953053 res!1599559) b!3953054))

(declare-fun m!4521867 () Bool)

(assert (=> d!1171883 m!4521867))

(declare-fun m!4521869 () Bool)

(assert (=> b!3953053 m!4521869))

(assert (=> b!3952928 d!1171883))

(declare-fun b!3953066 () Bool)

(declare-fun lt!1382130 () List!42183)

(declare-fun e!2447167 () Bool)

(assert (=> b!3953066 (= e!2447167 (or (not (= (_2!23808 (v!39346 lt!1382055)) Nil!42059)) (= lt!1382130 lt!1382054)))))

(declare-fun b!3953065 () Bool)

(declare-fun res!1599564 () Bool)

(assert (=> b!3953065 (=> (not res!1599564) (not e!2447167))))

(assert (=> b!3953065 (= res!1599564 (= (size!31513 lt!1382130) (+ (size!31513 lt!1382054) (size!31513 (_2!23808 (v!39346 lt!1382055))))))))

(declare-fun b!3953063 () Bool)

(declare-fun e!2447168 () List!42183)

(assert (=> b!3953063 (= e!2447168 (_2!23808 (v!39346 lt!1382055)))))

(declare-fun d!1171885 () Bool)

(assert (=> d!1171885 e!2447167))

(declare-fun res!1599565 () Bool)

(assert (=> d!1171885 (=> (not res!1599565) (not e!2447167))))

(declare-fun content!6374 (List!42183) (Set C!23170))

(assert (=> d!1171885 (= res!1599565 (= (content!6374 lt!1382130) (set.union (content!6374 lt!1382054) (content!6374 (_2!23808 (v!39346 lt!1382055))))))))

(assert (=> d!1171885 (= lt!1382130 e!2447168)))

(declare-fun c!686232 () Bool)

(assert (=> d!1171885 (= c!686232 (is-Nil!42059 lt!1382054))))

(assert (=> d!1171885 (= (++!10932 lt!1382054 (_2!23808 (v!39346 lt!1382055))) lt!1382130)))

(declare-fun b!3953064 () Bool)

(assert (=> b!3953064 (= e!2447168 (Cons!42059 (h!47479 lt!1382054) (++!10932 (t!328824 lt!1382054) (_2!23808 (v!39346 lt!1382055)))))))

(assert (= (and d!1171885 c!686232) b!3953063))

(assert (= (and d!1171885 (not c!686232)) b!3953064))

(assert (= (and d!1171885 res!1599565) b!3953065))

(assert (= (and b!3953065 res!1599564) b!3953066))

(declare-fun m!4521871 () Bool)

(assert (=> b!3953065 m!4521871))

(assert (=> b!3953065 m!4521749))

(assert (=> b!3953065 m!4521719))

(declare-fun m!4521873 () Bool)

(assert (=> d!1171885 m!4521873))

(declare-fun m!4521875 () Bool)

(assert (=> d!1171885 m!4521875))

(declare-fun m!4521877 () Bool)

(assert (=> d!1171885 m!4521877))

(declare-fun m!4521879 () Bool)

(assert (=> b!3953064 m!4521879))

(assert (=> b!3952928 d!1171885))

(declare-fun d!1171889 () Bool)

(declare-fun lt!1382133 () Int)

(assert (=> d!1171889 (>= lt!1382133 0)))

(declare-fun e!2447171 () Int)

(assert (=> d!1171889 (= lt!1382133 e!2447171)))

(declare-fun c!686235 () Bool)

(assert (=> d!1171889 (= c!686235 (is-Nil!42059 lt!1382054))))

(assert (=> d!1171889 (= (size!31513 lt!1382054) lt!1382133)))

(declare-fun b!3953071 () Bool)

(assert (=> b!3953071 (= e!2447171 0)))

(declare-fun b!3953072 () Bool)

(assert (=> b!3953072 (= e!2447171 (+ 1 (size!31513 (t!328824 lt!1382054))))))

(assert (= (and d!1171889 c!686235) b!3953071))

(assert (= (and d!1171889 (not c!686235)) b!3953072))

(declare-fun m!4521881 () Bool)

(assert (=> b!3953072 m!4521881))

(assert (=> b!3952928 d!1171889))

(declare-fun d!1171891 () Bool)

(declare-fun list!15619 (Conc!12798) List!42183)

(assert (=> d!1171891 (= (list!15617 (charsOf!4405 (_1!23808 (v!39346 lt!1382055)))) (list!15619 (c!686226 (charsOf!4405 (_1!23808 (v!39346 lt!1382055))))))))

(declare-fun bs!587049 () Bool)

(assert (= bs!587049 d!1171891))

(declare-fun m!4521883 () Bool)

(assert (=> bs!587049 m!4521883))

(assert (=> b!3952928 d!1171891))

(declare-fun d!1171893 () Bool)

(assert (=> d!1171893 (ruleValid!2529 thiss!20629 (rule!9557 (_1!23808 (v!39346 lt!1382055))))))

(declare-fun lt!1382136 () Unit!60563)

(declare-fun choose!23593 (LexerInterface!6176 Rule!12974 List!42186) Unit!60563)

(assert (=> d!1171893 (= lt!1382136 (choose!23593 thiss!20629 (rule!9557 (_1!23808 (v!39346 lt!1382055))) rules!2768))))

(assert (=> d!1171893 (contains!8409 rules!2768 (rule!9557 (_1!23808 (v!39346 lt!1382055))))))

(assert (=> d!1171893 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1605 thiss!20629 (rule!9557 (_1!23808 (v!39346 lt!1382055))) rules!2768) lt!1382136)))

(declare-fun bs!587050 () Bool)

(assert (= bs!587050 d!1171893))

(assert (=> bs!587050 m!4521745))

(declare-fun m!4521885 () Bool)

(assert (=> bs!587050 m!4521885))

(assert (=> bs!587050 m!4521707))

(assert (=> b!3952928 d!1171893))

(declare-fun d!1171895 () Bool)

(assert (=> d!1171895 (= (size!31512 (_1!23808 (v!39346 lt!1382055))) (size!31513 (originalCharacters!7187 (_1!23808 (v!39346 lt!1382055)))))))

(declare-fun Unit!60568 () Unit!60563)

(assert (=> d!1171895 (= (lemmaCharactersSize!1240 (_1!23808 (v!39346 lt!1382055))) Unit!60568)))

(declare-fun bs!587051 () Bool)

(assert (= bs!587051 d!1171895))

(assert (=> bs!587051 m!4521705))

(assert (=> b!3952928 d!1171895))

(declare-fun d!1171897 () Bool)

(declare-fun dynLambda!17992 (Int BalanceConc!25190) TokenValue!6817)

(assert (=> d!1171897 (= (apply!9818 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))) (seqFromList!4846 lt!1382054)) (dynLambda!17992 (toValue!9063 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055))))) (seqFromList!4846 lt!1382054)))))

(declare-fun b_lambda!115625 () Bool)

(assert (=> (not b_lambda!115625) (not d!1171897)))

(declare-fun t!328835 () Bool)

(declare-fun tb!237911 () Bool)

(assert (=> (and b!3952929 (= (toValue!9063 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) (toValue!9063 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328835) tb!237911))

(declare-fun result!288126 () Bool)

(assert (=> tb!237911 (= result!288126 (inv!21 (dynLambda!17992 (toValue!9063 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055))))) (seqFromList!4846 lt!1382054))))))

(declare-fun m!4521887 () Bool)

(assert (=> tb!237911 m!4521887))

(assert (=> d!1171897 t!328835))

(declare-fun b_and!303043 () Bool)

(assert (= b_and!303019 (and (=> t!328835 result!288126) b_and!303043)))

(declare-fun tb!237913 () Bool)

(declare-fun t!328837 () Bool)

(assert (=> (and b!3952934 (= (toValue!9063 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) (toValue!9063 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328837) tb!237913))

(declare-fun result!288130 () Bool)

(assert (= result!288130 result!288126))

(assert (=> d!1171897 t!328837))

(declare-fun b_and!303045 () Bool)

(assert (= b_and!303023 (and (=> t!328837 result!288130) b_and!303045)))

(declare-fun t!328839 () Bool)

(declare-fun tb!237915 () Bool)

(assert (=> (and b!3952935 (= (toValue!9063 (transformation!6587 (h!47482 rules!2768))) (toValue!9063 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328839) tb!237915))

(declare-fun result!288132 () Bool)

(assert (= result!288132 result!288126))

(assert (=> d!1171897 t!328839))

(declare-fun b_and!303047 () Bool)

(assert (= b_and!303027 (and (=> t!328839 result!288132) b_and!303047)))

(assert (=> d!1171897 m!4521729))

(declare-fun m!4521889 () Bool)

(assert (=> d!1171897 m!4521889))

(assert (=> b!3952928 d!1171897))

(declare-fun d!1171899 () Bool)

(declare-fun lt!1382139 () List!42183)

(assert (=> d!1171899 (= (++!10932 lt!1382054 lt!1382139) lt!1382057)))

(declare-fun e!2447183 () List!42183)

(assert (=> d!1171899 (= lt!1382139 e!2447183)))

(declare-fun c!686238 () Bool)

(assert (=> d!1171899 (= c!686238 (is-Cons!42059 lt!1382054))))

(assert (=> d!1171899 (>= (size!31513 lt!1382057) (size!31513 lt!1382054))))

(assert (=> d!1171899 (= (getSuffix!2127 lt!1382057 lt!1382054) lt!1382139)))

(declare-fun b!3953090 () Bool)

(assert (=> b!3953090 (= e!2447183 (getSuffix!2127 (tail!6122 lt!1382057) (t!328824 lt!1382054)))))

(declare-fun b!3953091 () Bool)

(assert (=> b!3953091 (= e!2447183 lt!1382057)))

(assert (= (and d!1171899 c!686238) b!3953090))

(assert (= (and d!1171899 (not c!686238)) b!3953091))

(declare-fun m!4521903 () Bool)

(assert (=> d!1171899 m!4521903))

(assert (=> d!1171899 m!4521691))

(assert (=> d!1171899 m!4521749))

(declare-fun m!4521905 () Bool)

(assert (=> b!3953090 m!4521905))

(assert (=> b!3953090 m!4521905))

(declare-fun m!4521907 () Bool)

(assert (=> b!3953090 m!4521907))

(assert (=> b!3952928 d!1171899))

(declare-fun d!1171903 () Bool)

(assert (=> d!1171903 (isPrefix!3676 lt!1382054 (++!10932 lt!1382054 (_2!23808 (v!39346 lt!1382055))))))

(declare-fun lt!1382142 () Unit!60563)

(declare-fun choose!23594 (List!42183 List!42183) Unit!60563)

(assert (=> d!1171903 (= lt!1382142 (choose!23594 lt!1382054 (_2!23808 (v!39346 lt!1382055))))))

(assert (=> d!1171903 (= (lemmaConcatTwoListThenFirstIsPrefix!2535 lt!1382054 (_2!23808 (v!39346 lt!1382055))) lt!1382142)))

(declare-fun bs!587052 () Bool)

(assert (= bs!587052 d!1171903))

(assert (=> bs!587052 m!4521741))

(assert (=> bs!587052 m!4521741))

(declare-fun m!4521909 () Bool)

(assert (=> bs!587052 m!4521909))

(declare-fun m!4521911 () Bool)

(assert (=> bs!587052 m!4521911))

(assert (=> b!3952928 d!1171903))

(declare-fun d!1171905 () Bool)

(declare-fun lt!1382145 () BalanceConc!25190)

(assert (=> d!1171905 (= (list!15617 lt!1382145) (originalCharacters!7187 (_1!23808 (v!39346 lt!1382055))))))

(declare-fun dynLambda!17993 (Int TokenValue!6817) BalanceConc!25190)

(assert (=> d!1171905 (= lt!1382145 (dynLambda!17993 (toChars!8922 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055))))) (value!208365 (_1!23808 (v!39346 lt!1382055)))))))

(assert (=> d!1171905 (= (charsOf!4405 (_1!23808 (v!39346 lt!1382055))) lt!1382145)))

(declare-fun b_lambda!115627 () Bool)

(assert (=> (not b_lambda!115627) (not d!1171905)))

(declare-fun tb!237921 () Bool)

(declare-fun t!328845 () Bool)

(assert (=> (and b!3952929 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) (toChars!8922 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328845) tb!237921))

(declare-fun b!3953096 () Bool)

(declare-fun e!2447186 () Bool)

(declare-fun tp!1204548 () Bool)

(declare-fun inv!56290 (Conc!12798) Bool)

(assert (=> b!3953096 (= e!2447186 (and (inv!56290 (c!686226 (dynLambda!17993 (toChars!8922 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055))))) (value!208365 (_1!23808 (v!39346 lt!1382055)))))) tp!1204548))))

(declare-fun result!288138 () Bool)

(declare-fun inv!56291 (BalanceConc!25190) Bool)

(assert (=> tb!237921 (= result!288138 (and (inv!56291 (dynLambda!17993 (toChars!8922 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055))))) (value!208365 (_1!23808 (v!39346 lt!1382055))))) e!2447186))))

(assert (= tb!237921 b!3953096))

(declare-fun m!4521913 () Bool)

(assert (=> b!3953096 m!4521913))

(declare-fun m!4521915 () Bool)

(assert (=> tb!237921 m!4521915))

(assert (=> d!1171905 t!328845))

(declare-fun b_and!303055 () Bool)

(assert (= b_and!303021 (and (=> t!328845 result!288138) b_and!303055)))

(declare-fun t!328847 () Bool)

(declare-fun tb!237923 () Bool)

(assert (=> (and b!3952934 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) (toChars!8922 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328847) tb!237923))

(declare-fun result!288142 () Bool)

(assert (= result!288142 result!288138))

(assert (=> d!1171905 t!328847))

(declare-fun b_and!303057 () Bool)

(assert (= b_and!303025 (and (=> t!328847 result!288142) b_and!303057)))

(declare-fun tb!237925 () Bool)

(declare-fun t!328849 () Bool)

(assert (=> (and b!3952935 (= (toChars!8922 (transformation!6587 (h!47482 rules!2768))) (toChars!8922 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328849) tb!237925))

(declare-fun result!288144 () Bool)

(assert (= result!288144 result!288138))

(assert (=> d!1171905 t!328849))

(declare-fun b_and!303059 () Bool)

(assert (= b_and!303029 (and (=> t!328849 result!288144) b_and!303059)))

(declare-fun m!4521917 () Bool)

(assert (=> d!1171905 m!4521917))

(declare-fun m!4521919 () Bool)

(assert (=> d!1171905 m!4521919))

(assert (=> b!3952928 d!1171905))

(declare-fun b!3953107 () Bool)

(declare-fun e!2447194 () tuple2!41346)

(assert (=> b!3953107 (= e!2447194 (tuple2!41347 Nil!42061 (_2!23808 (v!39346 lt!1382055))))))

(declare-fun b!3953108 () Bool)

(declare-fun e!2447193 () Bool)

(declare-fun lt!1382152 () tuple2!41346)

(assert (=> b!3953108 (= e!2447193 (= (_2!23807 lt!1382152) (_2!23808 (v!39346 lt!1382055))))))

(declare-fun b!3953109 () Bool)

(declare-fun e!2447195 () Bool)

(assert (=> b!3953109 (= e!2447193 e!2447195)))

(declare-fun res!1599574 () Bool)

(assert (=> b!3953109 (= res!1599574 (< (size!31513 (_2!23807 lt!1382152)) (size!31513 (_2!23808 (v!39346 lt!1382055)))))))

(assert (=> b!3953109 (=> (not res!1599574) (not e!2447195))))

(declare-fun b!3953110 () Bool)

(assert (=> b!3953110 (= e!2447195 (not (isEmpty!25129 (_1!23807 lt!1382152))))))

(declare-fun d!1171907 () Bool)

(assert (=> d!1171907 e!2447193))

(declare-fun c!686243 () Bool)

(declare-fun size!31516 (List!42185) Int)

(assert (=> d!1171907 (= c!686243 (> (size!31516 (_1!23807 lt!1382152)) 0))))

(assert (=> d!1171907 (= lt!1382152 e!2447194)))

(declare-fun c!686244 () Bool)

(declare-fun lt!1382153 () Option!9007)

(assert (=> d!1171907 (= c!686244 (is-Some!9006 lt!1382153))))

(assert (=> d!1171907 (= lt!1382153 (maxPrefix!3480 thiss!20629 rules!2768 (_2!23808 (v!39346 lt!1382055))))))

(assert (=> d!1171907 (= (lexList!1944 thiss!20629 rules!2768 (_2!23808 (v!39346 lt!1382055))) lt!1382152)))

(declare-fun b!3953111 () Bool)

(declare-fun lt!1382154 () tuple2!41346)

(assert (=> b!3953111 (= e!2447194 (tuple2!41347 (Cons!42061 (_1!23808 (v!39346 lt!1382153)) (_1!23807 lt!1382154)) (_2!23807 lt!1382154)))))

(assert (=> b!3953111 (= lt!1382154 (lexList!1944 thiss!20629 rules!2768 (_2!23808 (v!39346 lt!1382153))))))

(assert (= (and d!1171907 c!686244) b!3953111))

(assert (= (and d!1171907 (not c!686244)) b!3953107))

(assert (= (and d!1171907 c!686243) b!3953109))

(assert (= (and d!1171907 (not c!686243)) b!3953108))

(assert (= (and b!3953109 res!1599574) b!3953110))

(declare-fun m!4521921 () Bool)

(assert (=> b!3953109 m!4521921))

(assert (=> b!3953109 m!4521719))

(declare-fun m!4521923 () Bool)

(assert (=> b!3953110 m!4521923))

(declare-fun m!4521925 () Bool)

(assert (=> d!1171907 m!4521925))

(declare-fun m!4521927 () Bool)

(assert (=> d!1171907 m!4521927))

(declare-fun m!4521929 () Bool)

(assert (=> b!3953111 m!4521929))

(assert (=> b!3952928 d!1171907))

(declare-fun d!1171909 () Bool)

(declare-fun res!1599579 () Bool)

(declare-fun e!2447198 () Bool)

(assert (=> d!1171909 (=> (not res!1599579) (not e!2447198))))

(assert (=> d!1171909 (= res!1599579 (not (isEmpty!25131 (originalCharacters!7187 (h!47481 prefixTokens!80)))))))

(assert (=> d!1171909 (= (inv!56286 (h!47481 prefixTokens!80)) e!2447198)))

(declare-fun b!3953116 () Bool)

(declare-fun res!1599580 () Bool)

(assert (=> b!3953116 (=> (not res!1599580) (not e!2447198))))

(assert (=> b!3953116 (= res!1599580 (= (originalCharacters!7187 (h!47481 prefixTokens!80)) (list!15617 (dynLambda!17993 (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) (value!208365 (h!47481 prefixTokens!80))))))))

(declare-fun b!3953117 () Bool)

(assert (=> b!3953117 (= e!2447198 (= (size!31512 (h!47481 prefixTokens!80)) (size!31513 (originalCharacters!7187 (h!47481 prefixTokens!80)))))))

(assert (= (and d!1171909 res!1599579) b!3953116))

(assert (= (and b!3953116 res!1599580) b!3953117))

(declare-fun b_lambda!115629 () Bool)

(assert (=> (not b_lambda!115629) (not b!3953116)))

(declare-fun tb!237927 () Bool)

(declare-fun t!328851 () Bool)

(assert (=> (and b!3952929 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80))))) t!328851) tb!237927))

(declare-fun b!3953118 () Bool)

(declare-fun e!2447199 () Bool)

(declare-fun tp!1204549 () Bool)

(assert (=> b!3953118 (= e!2447199 (and (inv!56290 (c!686226 (dynLambda!17993 (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) (value!208365 (h!47481 prefixTokens!80))))) tp!1204549))))

(declare-fun result!288146 () Bool)

(assert (=> tb!237927 (= result!288146 (and (inv!56291 (dynLambda!17993 (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) (value!208365 (h!47481 prefixTokens!80)))) e!2447199))))

(assert (= tb!237927 b!3953118))

(declare-fun m!4521931 () Bool)

(assert (=> b!3953118 m!4521931))

(declare-fun m!4521933 () Bool)

(assert (=> tb!237927 m!4521933))

(assert (=> b!3953116 t!328851))

(declare-fun b_and!303061 () Bool)

(assert (= b_and!303055 (and (=> t!328851 result!288146) b_and!303061)))

(declare-fun t!328853 () Bool)

(declare-fun tb!237929 () Bool)

(assert (=> (and b!3952934 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80))))) t!328853) tb!237929))

(declare-fun result!288148 () Bool)

(assert (= result!288148 result!288146))

(assert (=> b!3953116 t!328853))

(declare-fun b_and!303063 () Bool)

(assert (= b_and!303057 (and (=> t!328853 result!288148) b_and!303063)))

(declare-fun t!328855 () Bool)

(declare-fun tb!237931 () Bool)

(assert (=> (and b!3952935 (= (toChars!8922 (transformation!6587 (h!47482 rules!2768))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80))))) t!328855) tb!237931))

(declare-fun result!288150 () Bool)

(assert (= result!288150 result!288146))

(assert (=> b!3953116 t!328855))

(declare-fun b_and!303065 () Bool)

(assert (= b_and!303059 (and (=> t!328855 result!288150) b_and!303065)))

(declare-fun m!4521935 () Bool)

(assert (=> d!1171909 m!4521935))

(declare-fun m!4521937 () Bool)

(assert (=> b!3953116 m!4521937))

(assert (=> b!3953116 m!4521937))

(declare-fun m!4521939 () Bool)

(assert (=> b!3953116 m!4521939))

(declare-fun m!4521941 () Bool)

(assert (=> b!3953117 m!4521941))

(assert (=> b!3952939 d!1171909))

(declare-fun d!1171911 () Bool)

(declare-fun res!1599581 () Bool)

(declare-fun e!2447200 () Bool)

(assert (=> d!1171911 (=> (not res!1599581) (not e!2447200))))

(assert (=> d!1171911 (= res!1599581 (not (isEmpty!25131 (originalCharacters!7187 (h!47481 suffixTokens!72)))))))

(assert (=> d!1171911 (= (inv!56286 (h!47481 suffixTokens!72)) e!2447200)))

(declare-fun b!3953119 () Bool)

(declare-fun res!1599582 () Bool)

(assert (=> b!3953119 (=> (not res!1599582) (not e!2447200))))

(assert (=> b!3953119 (= res!1599582 (= (originalCharacters!7187 (h!47481 suffixTokens!72)) (list!15617 (dynLambda!17993 (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) (value!208365 (h!47481 suffixTokens!72))))))))

(declare-fun b!3953120 () Bool)

(assert (=> b!3953120 (= e!2447200 (= (size!31512 (h!47481 suffixTokens!72)) (size!31513 (originalCharacters!7187 (h!47481 suffixTokens!72)))))))

(assert (= (and d!1171911 res!1599581) b!3953119))

(assert (= (and b!3953119 res!1599582) b!3953120))

(declare-fun b_lambda!115631 () Bool)

(assert (=> (not b_lambda!115631) (not b!3953119)))

(declare-fun t!328857 () Bool)

(declare-fun tb!237933 () Bool)

(assert (=> (and b!3952929 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72))))) t!328857) tb!237933))

(declare-fun b!3953121 () Bool)

(declare-fun e!2447201 () Bool)

(declare-fun tp!1204550 () Bool)

(assert (=> b!3953121 (= e!2447201 (and (inv!56290 (c!686226 (dynLambda!17993 (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) (value!208365 (h!47481 suffixTokens!72))))) tp!1204550))))

(declare-fun result!288152 () Bool)

(assert (=> tb!237933 (= result!288152 (and (inv!56291 (dynLambda!17993 (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) (value!208365 (h!47481 suffixTokens!72)))) e!2447201))))

(assert (= tb!237933 b!3953121))

(declare-fun m!4521943 () Bool)

(assert (=> b!3953121 m!4521943))

(declare-fun m!4521945 () Bool)

(assert (=> tb!237933 m!4521945))

(assert (=> b!3953119 t!328857))

(declare-fun b_and!303067 () Bool)

(assert (= b_and!303061 (and (=> t!328857 result!288152) b_and!303067)))

(declare-fun tb!237935 () Bool)

(declare-fun t!328859 () Bool)

(assert (=> (and b!3952934 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72))))) t!328859) tb!237935))

(declare-fun result!288154 () Bool)

(assert (= result!288154 result!288152))

(assert (=> b!3953119 t!328859))

(declare-fun b_and!303069 () Bool)

(assert (= b_and!303063 (and (=> t!328859 result!288154) b_and!303069)))

(declare-fun t!328861 () Bool)

(declare-fun tb!237937 () Bool)

(assert (=> (and b!3952935 (= (toChars!8922 (transformation!6587 (h!47482 rules!2768))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72))))) t!328861) tb!237937))

(declare-fun result!288156 () Bool)

(assert (= result!288156 result!288152))

(assert (=> b!3953119 t!328861))

(declare-fun b_and!303071 () Bool)

(assert (= b_and!303065 (and (=> t!328861 result!288156) b_and!303071)))

(declare-fun m!4521947 () Bool)

(assert (=> d!1171911 m!4521947))

(declare-fun m!4521949 () Bool)

(assert (=> b!3953119 m!4521949))

(assert (=> b!3953119 m!4521949))

(declare-fun m!4521951 () Bool)

(assert (=> b!3953119 m!4521951))

(declare-fun m!4521953 () Bool)

(assert (=> b!3953120 m!4521953))

(assert (=> b!3952938 d!1171911))

(declare-fun d!1171913 () Bool)

(declare-fun res!1599585 () Bool)

(declare-fun e!2447204 () Bool)

(assert (=> d!1171913 (=> (not res!1599585) (not e!2447204))))

(declare-fun rulesValid!2572 (LexerInterface!6176 List!42186) Bool)

(assert (=> d!1171913 (= res!1599585 (rulesValid!2572 thiss!20629 rules!2768))))

(assert (=> d!1171913 (= (rulesInvariant!5519 thiss!20629 rules!2768) e!2447204)))

(declare-fun b!3953124 () Bool)

(declare-datatypes ((List!42191 0))(
  ( (Nil!42067) (Cons!42067 (h!47487 String!47805) (t!328886 List!42191)) )
))
(declare-fun noDuplicateTag!2573 (LexerInterface!6176 List!42186 List!42191) Bool)

(assert (=> b!3953124 (= e!2447204 (noDuplicateTag!2573 thiss!20629 rules!2768 Nil!42067))))

(assert (= (and d!1171913 res!1599585) b!3953124))

(declare-fun m!4521955 () Bool)

(assert (=> d!1171913 m!4521955))

(declare-fun m!4521957 () Bool)

(assert (=> b!3953124 m!4521957))

(assert (=> b!3952949 d!1171913))

(declare-fun d!1171915 () Bool)

(declare-fun lt!1382155 () Int)

(assert (=> d!1171915 (>= lt!1382155 0)))

(declare-fun e!2447205 () Int)

(assert (=> d!1171915 (= lt!1382155 e!2447205)))

(declare-fun c!686245 () Bool)

(assert (=> d!1171915 (= c!686245 (is-Nil!42059 lt!1382057))))

(assert (=> d!1171915 (= (size!31513 lt!1382057) lt!1382155)))

(declare-fun b!3953125 () Bool)

(assert (=> b!3953125 (= e!2447205 0)))

(declare-fun b!3953126 () Bool)

(assert (=> b!3953126 (= e!2447205 (+ 1 (size!31513 (t!328824 lt!1382057))))))

(assert (= (and d!1171915 c!686245) b!3953125))

(assert (= (and d!1171915 (not c!686245)) b!3953126))

(declare-fun m!4521959 () Bool)

(assert (=> b!3953126 m!4521959))

(assert (=> b!3952940 d!1171915))

(declare-fun b!3953147 () Bool)

(declare-fun e!2447219 () Bool)

(declare-fun inv!16 (TokenValue!6817) Bool)

(assert (=> b!3953147 (= e!2447219 (inv!16 (value!208365 (h!47481 suffixTokens!72))))))

(declare-fun b!3953148 () Bool)

(declare-fun e!2447220 () Bool)

(declare-fun inv!15 (TokenValue!6817) Bool)

(assert (=> b!3953148 (= e!2447220 (inv!15 (value!208365 (h!47481 suffixTokens!72))))))

(declare-fun d!1171917 () Bool)

(declare-fun c!686254 () Bool)

(assert (=> d!1171917 (= c!686254 (is-IntegerValue!20451 (value!208365 (h!47481 suffixTokens!72))))))

(assert (=> d!1171917 (= (inv!21 (value!208365 (h!47481 suffixTokens!72))) e!2447219)))

(declare-fun b!3953149 () Bool)

(declare-fun e!2447218 () Bool)

(declare-fun inv!17 (TokenValue!6817) Bool)

(assert (=> b!3953149 (= e!2447218 (inv!17 (value!208365 (h!47481 suffixTokens!72))))))

(declare-fun b!3953150 () Bool)

(assert (=> b!3953150 (= e!2447219 e!2447218)))

(declare-fun c!686255 () Bool)

(assert (=> b!3953150 (= c!686255 (is-IntegerValue!20452 (value!208365 (h!47481 suffixTokens!72))))))

(declare-fun b!3953151 () Bool)

(declare-fun res!1599590 () Bool)

(assert (=> b!3953151 (=> res!1599590 e!2447220)))

(assert (=> b!3953151 (= res!1599590 (not (is-IntegerValue!20453 (value!208365 (h!47481 suffixTokens!72)))))))

(assert (=> b!3953151 (= e!2447218 e!2447220)))

(assert (= (and d!1171917 c!686254) b!3953147))

(assert (= (and d!1171917 (not c!686254)) b!3953150))

(assert (= (and b!3953150 c!686255) b!3953149))

(assert (= (and b!3953150 (not c!686255)) b!3953151))

(assert (= (and b!3953151 (not res!1599590)) b!3953148))

(declare-fun m!4521961 () Bool)

(assert (=> b!3953147 m!4521961))

(declare-fun m!4521963 () Bool)

(assert (=> b!3953148 m!4521963))

(declare-fun m!4521965 () Bool)

(assert (=> b!3953149 m!4521965))

(assert (=> b!3952930 d!1171917))

(declare-fun d!1171919 () Bool)

(declare-fun lt!1382162 () Int)

(assert (=> d!1171919 (>= lt!1382162 0)))

(declare-fun e!2447221 () Int)

(assert (=> d!1171919 (= lt!1382162 e!2447221)))

(declare-fun c!686256 () Bool)

(assert (=> d!1171919 (= c!686256 (is-Nil!42059 (originalCharacters!7187 (_1!23808 (v!39346 lt!1382055)))))))

(assert (=> d!1171919 (= (size!31513 (originalCharacters!7187 (_1!23808 (v!39346 lt!1382055)))) lt!1382162)))

(declare-fun b!3953152 () Bool)

(assert (=> b!3953152 (= e!2447221 0)))

(declare-fun b!3953153 () Bool)

(assert (=> b!3953153 (= e!2447221 (+ 1 (size!31513 (t!328824 (originalCharacters!7187 (_1!23808 (v!39346 lt!1382055)))))))))

(assert (= (and d!1171919 c!686256) b!3953152))

(assert (= (and d!1171919 (not c!686256)) b!3953153))

(declare-fun m!4521967 () Bool)

(assert (=> b!3953153 m!4521967))

(assert (=> b!3952941 d!1171919))

(declare-fun b!3953177 () Bool)

(declare-fun e!2447233 () Option!9007)

(declare-fun lt!1382176 () Option!9007)

(declare-fun lt!1382180 () Option!9007)

(assert (=> b!3953177 (= e!2447233 (ite (and (is-None!9006 lt!1382176) (is-None!9006 lt!1382180)) None!9006 (ite (is-None!9006 lt!1382180) lt!1382176 (ite (is-None!9006 lt!1382176) lt!1382180 (ite (>= (size!31512 (_1!23808 (v!39346 lt!1382176))) (size!31512 (_1!23808 (v!39346 lt!1382180)))) lt!1382176 lt!1382180)))))))

(declare-fun call!285267 () Option!9007)

(assert (=> b!3953177 (= lt!1382176 call!285267)))

(assert (=> b!3953177 (= lt!1382180 (maxPrefix!3480 thiss!20629 (t!328827 rules!2768) lt!1382057))))

(declare-fun b!3953178 () Bool)

(declare-fun res!1599611 () Bool)

(declare-fun e!2447232 () Bool)

(assert (=> b!3953178 (=> (not res!1599611) (not e!2447232))))

(declare-fun lt!1382177 () Option!9007)

(declare-fun matchR!5517 (Regex!11492 List!42183) Bool)

(declare-fun get!13875 (Option!9007) tuple2!41348)

(assert (=> b!3953178 (= res!1599611 (matchR!5517 (regex!6587 (rule!9557 (_1!23808 (get!13875 lt!1382177)))) (list!15617 (charsOf!4405 (_1!23808 (get!13875 lt!1382177))))))))

(declare-fun d!1171921 () Bool)

(declare-fun e!2447231 () Bool)

(assert (=> d!1171921 e!2447231))

(declare-fun res!1599606 () Bool)

(assert (=> d!1171921 (=> res!1599606 e!2447231)))

(declare-fun isEmpty!25135 (Option!9007) Bool)

(assert (=> d!1171921 (= res!1599606 (isEmpty!25135 lt!1382177))))

(assert (=> d!1171921 (= lt!1382177 e!2447233)))

(declare-fun c!686261 () Bool)

(assert (=> d!1171921 (= c!686261 (and (is-Cons!42062 rules!2768) (is-Nil!42062 (t!328827 rules!2768))))))

(declare-fun lt!1382178 () Unit!60563)

(declare-fun lt!1382179 () Unit!60563)

(assert (=> d!1171921 (= lt!1382178 lt!1382179)))

(assert (=> d!1171921 (isPrefix!3676 lt!1382057 lt!1382057)))

(declare-fun lemmaIsPrefixRefl!2327 (List!42183 List!42183) Unit!60563)

(assert (=> d!1171921 (= lt!1382179 (lemmaIsPrefixRefl!2327 lt!1382057 lt!1382057))))

(declare-fun rulesValidInductive!2385 (LexerInterface!6176 List!42186) Bool)

(assert (=> d!1171921 (rulesValidInductive!2385 thiss!20629 rules!2768)))

(assert (=> d!1171921 (= (maxPrefix!3480 thiss!20629 rules!2768 lt!1382057) lt!1382177)))

(declare-fun b!3953179 () Bool)

(assert (=> b!3953179 (= e!2447233 call!285267)))

(declare-fun b!3953180 () Bool)

(declare-fun res!1599610 () Bool)

(assert (=> b!3953180 (=> (not res!1599610) (not e!2447232))))

(assert (=> b!3953180 (= res!1599610 (= (list!15617 (charsOf!4405 (_1!23808 (get!13875 lt!1382177)))) (originalCharacters!7187 (_1!23808 (get!13875 lt!1382177)))))))

(declare-fun b!3953181 () Bool)

(declare-fun res!1599612 () Bool)

(assert (=> b!3953181 (=> (not res!1599612) (not e!2447232))))

(assert (=> b!3953181 (= res!1599612 (= (value!208365 (_1!23808 (get!13875 lt!1382177))) (apply!9818 (transformation!6587 (rule!9557 (_1!23808 (get!13875 lt!1382177)))) (seqFromList!4846 (originalCharacters!7187 (_1!23808 (get!13875 lt!1382177)))))))))

(declare-fun b!3953182 () Bool)

(declare-fun res!1599608 () Bool)

(assert (=> b!3953182 (=> (not res!1599608) (not e!2447232))))

(assert (=> b!3953182 (= res!1599608 (= (++!10932 (list!15617 (charsOf!4405 (_1!23808 (get!13875 lt!1382177)))) (_2!23808 (get!13875 lt!1382177))) lt!1382057))))

(declare-fun bm!285262 () Bool)

(declare-fun maxPrefixOneRule!2534 (LexerInterface!6176 Rule!12974 List!42183) Option!9007)

(assert (=> bm!285262 (= call!285267 (maxPrefixOneRule!2534 thiss!20629 (h!47482 rules!2768) lt!1382057))))

(declare-fun b!3953183 () Bool)

(declare-fun res!1599607 () Bool)

(assert (=> b!3953183 (=> (not res!1599607) (not e!2447232))))

(assert (=> b!3953183 (= res!1599607 (< (size!31513 (_2!23808 (get!13875 lt!1382177))) (size!31513 lt!1382057)))))

(declare-fun b!3953184 () Bool)

(assert (=> b!3953184 (= e!2447231 e!2447232)))

(declare-fun res!1599609 () Bool)

(assert (=> b!3953184 (=> (not res!1599609) (not e!2447232))))

(declare-fun isDefined!6986 (Option!9007) Bool)

(assert (=> b!3953184 (= res!1599609 (isDefined!6986 lt!1382177))))

(declare-fun b!3953185 () Bool)

(assert (=> b!3953185 (= e!2447232 (contains!8409 rules!2768 (rule!9557 (_1!23808 (get!13875 lt!1382177)))))))

(assert (= (and d!1171921 c!686261) b!3953179))

(assert (= (and d!1171921 (not c!686261)) b!3953177))

(assert (= (or b!3953179 b!3953177) bm!285262))

(assert (= (and d!1171921 (not res!1599606)) b!3953184))

(assert (= (and b!3953184 res!1599609) b!3953180))

(assert (= (and b!3953180 res!1599610) b!3953183))

(assert (= (and b!3953183 res!1599607) b!3953182))

(assert (= (and b!3953182 res!1599608) b!3953181))

(assert (= (and b!3953181 res!1599612) b!3953178))

(assert (= (and b!3953178 res!1599611) b!3953185))

(declare-fun m!4521979 () Bool)

(assert (=> b!3953180 m!4521979))

(declare-fun m!4521981 () Bool)

(assert (=> b!3953180 m!4521981))

(assert (=> b!3953180 m!4521981))

(declare-fun m!4521983 () Bool)

(assert (=> b!3953180 m!4521983))

(declare-fun m!4521985 () Bool)

(assert (=> bm!285262 m!4521985))

(assert (=> b!3953182 m!4521979))

(assert (=> b!3953182 m!4521981))

(assert (=> b!3953182 m!4521981))

(assert (=> b!3953182 m!4521983))

(assert (=> b!3953182 m!4521983))

(declare-fun m!4521987 () Bool)

(assert (=> b!3953182 m!4521987))

(assert (=> b!3953183 m!4521979))

(declare-fun m!4521989 () Bool)

(assert (=> b!3953183 m!4521989))

(assert (=> b!3953183 m!4521691))

(assert (=> b!3953178 m!4521979))

(assert (=> b!3953178 m!4521981))

(assert (=> b!3953178 m!4521981))

(assert (=> b!3953178 m!4521983))

(assert (=> b!3953178 m!4521983))

(declare-fun m!4521991 () Bool)

(assert (=> b!3953178 m!4521991))

(assert (=> b!3953185 m!4521979))

(declare-fun m!4521993 () Bool)

(assert (=> b!3953185 m!4521993))

(assert (=> b!3953181 m!4521979))

(declare-fun m!4521995 () Bool)

(assert (=> b!3953181 m!4521995))

(assert (=> b!3953181 m!4521995))

(declare-fun m!4521997 () Bool)

(assert (=> b!3953181 m!4521997))

(declare-fun m!4521999 () Bool)

(assert (=> d!1171921 m!4521999))

(declare-fun m!4522001 () Bool)

(assert (=> d!1171921 m!4522001))

(declare-fun m!4522003 () Bool)

(assert (=> d!1171921 m!4522003))

(declare-fun m!4522005 () Bool)

(assert (=> d!1171921 m!4522005))

(declare-fun m!4522007 () Bool)

(assert (=> b!3953184 m!4522007))

(declare-fun m!4522009 () Bool)

(assert (=> b!3953177 m!4522009))

(assert (=> b!3952932 d!1171921))

(declare-fun d!1171927 () Bool)

(assert (=> d!1171927 (= (inv!56283 (tag!7447 (rule!9557 (h!47481 prefixTokens!80)))) (= (mod (str.len (value!208364 (tag!7447 (rule!9557 (h!47481 prefixTokens!80))))) 2) 0))))

(assert (=> b!3952943 d!1171927))

(declare-fun d!1171929 () Bool)

(declare-fun res!1599615 () Bool)

(declare-fun e!2447236 () Bool)

(assert (=> d!1171929 (=> (not res!1599615) (not e!2447236))))

(declare-fun semiInverseModEq!2838 (Int Int) Bool)

(assert (=> d!1171929 (= res!1599615 (semiInverseModEq!2838 (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) (toValue!9063 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80))))))))

(assert (=> d!1171929 (= (inv!56287 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) e!2447236)))

(declare-fun b!3953188 () Bool)

(declare-fun equivClasses!2737 (Int Int) Bool)

(assert (=> b!3953188 (= e!2447236 (equivClasses!2737 (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) (toValue!9063 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80))))))))

(assert (= (and d!1171929 res!1599615) b!3953188))

(declare-fun m!4522011 () Bool)

(assert (=> d!1171929 m!4522011))

(declare-fun m!4522013 () Bool)

(assert (=> b!3953188 m!4522013))

(assert (=> b!3952943 d!1171929))

(declare-fun d!1171931 () Bool)

(assert (=> d!1171931 (= (inv!56283 (tag!7447 (rule!9557 (h!47481 suffixTokens!72)))) (= (mod (str.len (value!208364 (tag!7447 (rule!9557 (h!47481 suffixTokens!72))))) 2) 0))))

(assert (=> b!3952942 d!1171931))

(declare-fun d!1171933 () Bool)

(declare-fun res!1599616 () Bool)

(declare-fun e!2447237 () Bool)

(assert (=> d!1171933 (=> (not res!1599616) (not e!2447237))))

(assert (=> d!1171933 (= res!1599616 (semiInverseModEq!2838 (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) (toValue!9063 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72))))))))

(assert (=> d!1171933 (= (inv!56287 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) e!2447237)))

(declare-fun b!3953189 () Bool)

(assert (=> b!3953189 (= e!2447237 (equivClasses!2737 (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) (toValue!9063 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72))))))))

(assert (= (and d!1171933 res!1599616) b!3953189))

(declare-fun m!4522015 () Bool)

(assert (=> d!1171933 m!4522015))

(declare-fun m!4522017 () Bool)

(assert (=> b!3953189 m!4522017))

(assert (=> b!3952942 d!1171933))

(declare-fun d!1171935 () Bool)

(assert (=> d!1171935 (= (inv!56283 (tag!7447 (h!47482 rules!2768))) (= (mod (str.len (value!208364 (tag!7447 (h!47482 rules!2768)))) 2) 0))))

(assert (=> b!3952944 d!1171935))

(declare-fun d!1171937 () Bool)

(declare-fun res!1599617 () Bool)

(declare-fun e!2447238 () Bool)

(assert (=> d!1171937 (=> (not res!1599617) (not e!2447238))))

(assert (=> d!1171937 (= res!1599617 (semiInverseModEq!2838 (toChars!8922 (transformation!6587 (h!47482 rules!2768))) (toValue!9063 (transformation!6587 (h!47482 rules!2768)))))))

(assert (=> d!1171937 (= (inv!56287 (transformation!6587 (h!47482 rules!2768))) e!2447238)))

(declare-fun b!3953190 () Bool)

(assert (=> b!3953190 (= e!2447238 (equivClasses!2737 (toChars!8922 (transformation!6587 (h!47482 rules!2768))) (toValue!9063 (transformation!6587 (h!47482 rules!2768)))))))

(assert (= (and d!1171937 res!1599617) b!3953190))

(declare-fun m!4522019 () Bool)

(assert (=> d!1171937 m!4522019))

(declare-fun m!4522021 () Bool)

(assert (=> b!3953190 m!4522021))

(assert (=> b!3952944 d!1171937))

(declare-fun d!1171939 () Bool)

(declare-fun lt!1382181 () Int)

(assert (=> d!1171939 (>= lt!1382181 0)))

(declare-fun e!2447239 () Int)

(assert (=> d!1171939 (= lt!1382181 e!2447239)))

(declare-fun c!686262 () Bool)

(assert (=> d!1171939 (= c!686262 (is-Nil!42059 suffix!1176))))

(assert (=> d!1171939 (= (size!31513 suffix!1176) lt!1382181)))

(declare-fun b!3953191 () Bool)

(assert (=> b!3953191 (= e!2447239 0)))

(declare-fun b!3953192 () Bool)

(assert (=> b!3953192 (= e!2447239 (+ 1 (size!31513 (t!328824 suffix!1176))))))

(assert (= (and d!1171939 c!686262) b!3953191))

(assert (= (and d!1171939 (not c!686262)) b!3953192))

(declare-fun m!4522023 () Bool)

(assert (=> b!3953192 m!4522023))

(assert (=> b!3952923 d!1171939))

(declare-fun d!1171941 () Bool)

(declare-fun lt!1382182 () Int)

(assert (=> d!1171941 (>= lt!1382182 0)))

(declare-fun e!2447240 () Int)

(assert (=> d!1171941 (= lt!1382182 e!2447240)))

(declare-fun c!686263 () Bool)

(assert (=> d!1171941 (= c!686263 (is-Nil!42059 (_2!23808 (v!39346 lt!1382055))))))

(assert (=> d!1171941 (= (size!31513 (_2!23808 (v!39346 lt!1382055))) lt!1382182)))

(declare-fun b!3953193 () Bool)

(assert (=> b!3953193 (= e!2447240 0)))

(declare-fun b!3953194 () Bool)

(assert (=> b!3953194 (= e!2447240 (+ 1 (size!31513 (t!328824 (_2!23808 (v!39346 lt!1382055))))))))

(assert (= (and d!1171941 c!686263) b!3953193))

(assert (= (and d!1171941 (not c!686263)) b!3953194))

(declare-fun m!4522025 () Bool)

(assert (=> b!3953194 m!4522025))

(assert (=> b!3952923 d!1171941))

(declare-fun b!3953195 () Bool)

(declare-fun e!2447242 () tuple2!41346)

(assert (=> b!3953195 (= e!2447242 (tuple2!41347 Nil!42061 lt!1382057))))

(declare-fun b!3953196 () Bool)

(declare-fun e!2447241 () Bool)

(declare-fun lt!1382183 () tuple2!41346)

(assert (=> b!3953196 (= e!2447241 (= (_2!23807 lt!1382183) lt!1382057))))

(declare-fun b!3953197 () Bool)

(declare-fun e!2447243 () Bool)

(assert (=> b!3953197 (= e!2447241 e!2447243)))

(declare-fun res!1599618 () Bool)

(assert (=> b!3953197 (= res!1599618 (< (size!31513 (_2!23807 lt!1382183)) (size!31513 lt!1382057)))))

(assert (=> b!3953197 (=> (not res!1599618) (not e!2447243))))

(declare-fun b!3953198 () Bool)

(assert (=> b!3953198 (= e!2447243 (not (isEmpty!25129 (_1!23807 lt!1382183))))))

(declare-fun d!1171943 () Bool)

(assert (=> d!1171943 e!2447241))

(declare-fun c!686264 () Bool)

(assert (=> d!1171943 (= c!686264 (> (size!31516 (_1!23807 lt!1382183)) 0))))

(assert (=> d!1171943 (= lt!1382183 e!2447242)))

(declare-fun c!686265 () Bool)

(declare-fun lt!1382184 () Option!9007)

(assert (=> d!1171943 (= c!686265 (is-Some!9006 lt!1382184))))

(assert (=> d!1171943 (= lt!1382184 (maxPrefix!3480 thiss!20629 rules!2768 lt!1382057))))

(assert (=> d!1171943 (= (lexList!1944 thiss!20629 rules!2768 lt!1382057) lt!1382183)))

(declare-fun b!3953199 () Bool)

(declare-fun lt!1382185 () tuple2!41346)

(assert (=> b!3953199 (= e!2447242 (tuple2!41347 (Cons!42061 (_1!23808 (v!39346 lt!1382184)) (_1!23807 lt!1382185)) (_2!23807 lt!1382185)))))

(assert (=> b!3953199 (= lt!1382185 (lexList!1944 thiss!20629 rules!2768 (_2!23808 (v!39346 lt!1382184))))))

(assert (= (and d!1171943 c!686265) b!3953199))

(assert (= (and d!1171943 (not c!686265)) b!3953195))

(assert (= (and d!1171943 c!686264) b!3953197))

(assert (= (and d!1171943 (not c!686264)) b!3953196))

(assert (= (and b!3953197 res!1599618) b!3953198))

(declare-fun m!4522027 () Bool)

(assert (=> b!3953197 m!4522027))

(assert (=> b!3953197 m!4521691))

(declare-fun m!4522029 () Bool)

(assert (=> b!3953198 m!4522029))

(declare-fun m!4522031 () Bool)

(assert (=> d!1171943 m!4522031))

(assert (=> d!1171943 m!4521695))

(declare-fun m!4522033 () Bool)

(assert (=> b!3953199 m!4522033))

(assert (=> b!3952922 d!1171943))

(declare-fun b!3953208 () Bool)

(declare-fun e!2447248 () List!42185)

(assert (=> b!3953208 (= e!2447248 suffixTokens!72)))

(declare-fun b!3953210 () Bool)

(declare-fun res!1599623 () Bool)

(declare-fun e!2447249 () Bool)

(assert (=> b!3953210 (=> (not res!1599623) (not e!2447249))))

(declare-fun lt!1382188 () List!42185)

(assert (=> b!3953210 (= res!1599623 (= (size!31516 lt!1382188) (+ (size!31516 prefixTokens!80) (size!31516 suffixTokens!72))))))

(declare-fun b!3953211 () Bool)

(assert (=> b!3953211 (= e!2447249 (or (not (= suffixTokens!72 Nil!42061)) (= lt!1382188 prefixTokens!80)))))

(declare-fun b!3953209 () Bool)

(assert (=> b!3953209 (= e!2447248 (Cons!42061 (h!47481 prefixTokens!80) (++!10931 (t!328826 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1171945 () Bool)

(assert (=> d!1171945 e!2447249))

(declare-fun res!1599624 () Bool)

(assert (=> d!1171945 (=> (not res!1599624) (not e!2447249))))

(declare-fun content!6375 (List!42185) (Set Token!12312))

(assert (=> d!1171945 (= res!1599624 (= (content!6375 lt!1382188) (set.union (content!6375 prefixTokens!80) (content!6375 suffixTokens!72))))))

(assert (=> d!1171945 (= lt!1382188 e!2447248)))

(declare-fun c!686268 () Bool)

(assert (=> d!1171945 (= c!686268 (is-Nil!42061 prefixTokens!80))))

(assert (=> d!1171945 (= (++!10931 prefixTokens!80 suffixTokens!72) lt!1382188)))

(assert (= (and d!1171945 c!686268) b!3953208))

(assert (= (and d!1171945 (not c!686268)) b!3953209))

(assert (= (and d!1171945 res!1599624) b!3953210))

(assert (= (and b!3953210 res!1599623) b!3953211))

(declare-fun m!4522035 () Bool)

(assert (=> b!3953210 m!4522035))

(declare-fun m!4522037 () Bool)

(assert (=> b!3953210 m!4522037))

(declare-fun m!4522039 () Bool)

(assert (=> b!3953210 m!4522039))

(declare-fun m!4522041 () Bool)

(assert (=> b!3953209 m!4522041))

(declare-fun m!4522043 () Bool)

(assert (=> d!1171945 m!4522043))

(declare-fun m!4522045 () Bool)

(assert (=> d!1171945 m!4522045))

(declare-fun m!4522047 () Bool)

(assert (=> d!1171945 m!4522047))

(assert (=> b!3952922 d!1171945))

(declare-fun lt!1382189 () List!42183)

(declare-fun b!3953215 () Bool)

(declare-fun e!2447250 () Bool)

(assert (=> b!3953215 (= e!2447250 (or (not (= suffix!1176 Nil!42059)) (= lt!1382189 prefix!426)))))

(declare-fun b!3953214 () Bool)

(declare-fun res!1599625 () Bool)

(assert (=> b!3953214 (=> (not res!1599625) (not e!2447250))))

(assert (=> b!3953214 (= res!1599625 (= (size!31513 lt!1382189) (+ (size!31513 prefix!426) (size!31513 suffix!1176))))))

(declare-fun b!3953212 () Bool)

(declare-fun e!2447251 () List!42183)

(assert (=> b!3953212 (= e!2447251 suffix!1176)))

(declare-fun d!1171947 () Bool)

(assert (=> d!1171947 e!2447250))

(declare-fun res!1599626 () Bool)

(assert (=> d!1171947 (=> (not res!1599626) (not e!2447250))))

(assert (=> d!1171947 (= res!1599626 (= (content!6374 lt!1382189) (set.union (content!6374 prefix!426) (content!6374 suffix!1176))))))

(assert (=> d!1171947 (= lt!1382189 e!2447251)))

(declare-fun c!686269 () Bool)

(assert (=> d!1171947 (= c!686269 (is-Nil!42059 prefix!426))))

(assert (=> d!1171947 (= (++!10932 prefix!426 suffix!1176) lt!1382189)))

(declare-fun b!3953213 () Bool)

(assert (=> b!3953213 (= e!2447251 (Cons!42059 (h!47479 prefix!426) (++!10932 (t!328824 prefix!426) suffix!1176)))))

(assert (= (and d!1171947 c!686269) b!3953212))

(assert (= (and d!1171947 (not c!686269)) b!3953213))

(assert (= (and d!1171947 res!1599626) b!3953214))

(assert (= (and b!3953214 res!1599625) b!3953215))

(declare-fun m!4522049 () Bool)

(assert (=> b!3953214 m!4522049))

(assert (=> b!3953214 m!4521767))

(assert (=> b!3953214 m!4521717))

(declare-fun m!4522051 () Bool)

(assert (=> d!1171947 m!4522051))

(declare-fun m!4522053 () Bool)

(assert (=> d!1171947 m!4522053))

(declare-fun m!4522055 () Bool)

(assert (=> d!1171947 m!4522055))

(declare-fun m!4522057 () Bool)

(assert (=> b!3953213 m!4522057))

(assert (=> b!3952922 d!1171947))

(declare-fun b!3953216 () Bool)

(declare-fun e!2447252 () List!42185)

(assert (=> b!3953216 (= e!2447252 (_1!23807 lt!1382059))))

(declare-fun b!3953218 () Bool)

(declare-fun res!1599627 () Bool)

(declare-fun e!2447253 () Bool)

(assert (=> b!3953218 (=> (not res!1599627) (not e!2447253))))

(declare-fun lt!1382190 () List!42185)

(assert (=> b!3953218 (= res!1599627 (= (size!31516 lt!1382190) (+ (size!31516 (Cons!42061 (_1!23808 (v!39346 lt!1382055)) Nil!42061)) (size!31516 (_1!23807 lt!1382059)))))))

(declare-fun b!3953219 () Bool)

(assert (=> b!3953219 (= e!2447253 (or (not (= (_1!23807 lt!1382059) Nil!42061)) (= lt!1382190 (Cons!42061 (_1!23808 (v!39346 lt!1382055)) Nil!42061))))))

(declare-fun b!3953217 () Bool)

(assert (=> b!3953217 (= e!2447252 (Cons!42061 (h!47481 (Cons!42061 (_1!23808 (v!39346 lt!1382055)) Nil!42061)) (++!10931 (t!328826 (Cons!42061 (_1!23808 (v!39346 lt!1382055)) Nil!42061)) (_1!23807 lt!1382059))))))

(declare-fun d!1171949 () Bool)

(assert (=> d!1171949 e!2447253))

(declare-fun res!1599628 () Bool)

(assert (=> d!1171949 (=> (not res!1599628) (not e!2447253))))

(assert (=> d!1171949 (= res!1599628 (= (content!6375 lt!1382190) (set.union (content!6375 (Cons!42061 (_1!23808 (v!39346 lt!1382055)) Nil!42061)) (content!6375 (_1!23807 lt!1382059)))))))

(assert (=> d!1171949 (= lt!1382190 e!2447252)))

(declare-fun c!686270 () Bool)

(assert (=> d!1171949 (= c!686270 (is-Nil!42061 (Cons!42061 (_1!23808 (v!39346 lt!1382055)) Nil!42061)))))

(assert (=> d!1171949 (= (++!10931 (Cons!42061 (_1!23808 (v!39346 lt!1382055)) Nil!42061) (_1!23807 lt!1382059)) lt!1382190)))

(assert (= (and d!1171949 c!686270) b!3953216))

(assert (= (and d!1171949 (not c!686270)) b!3953217))

(assert (= (and d!1171949 res!1599628) b!3953218))

(assert (= (and b!3953218 res!1599627) b!3953219))

(declare-fun m!4522059 () Bool)

(assert (=> b!3953218 m!4522059))

(declare-fun m!4522061 () Bool)

(assert (=> b!3953218 m!4522061))

(declare-fun m!4522063 () Bool)

(assert (=> b!3953218 m!4522063))

(declare-fun m!4522065 () Bool)

(assert (=> b!3953217 m!4522065))

(declare-fun m!4522067 () Bool)

(assert (=> d!1171949 m!4522067))

(declare-fun m!4522069 () Bool)

(assert (=> d!1171949 m!4522069))

(declare-fun m!4522071 () Bool)

(assert (=> d!1171949 m!4522071))

(assert (=> b!3952933 d!1171949))

(declare-fun d!1171951 () Bool)

(assert (=> d!1171951 (= (isEmpty!25129 prefixTokens!80) (is-Nil!42061 prefixTokens!80))))

(assert (=> b!3952924 d!1171951))

(declare-fun b!3953220 () Bool)

(declare-fun e!2447255 () Bool)

(assert (=> b!3953220 (= e!2447255 (inv!16 (value!208365 (h!47481 prefixTokens!80))))))

(declare-fun b!3953221 () Bool)

(declare-fun e!2447256 () Bool)

(assert (=> b!3953221 (= e!2447256 (inv!15 (value!208365 (h!47481 prefixTokens!80))))))

(declare-fun d!1171953 () Bool)

(declare-fun c!686271 () Bool)

(assert (=> d!1171953 (= c!686271 (is-IntegerValue!20451 (value!208365 (h!47481 prefixTokens!80))))))

(assert (=> d!1171953 (= (inv!21 (value!208365 (h!47481 prefixTokens!80))) e!2447255)))

(declare-fun b!3953222 () Bool)

(declare-fun e!2447254 () Bool)

(assert (=> b!3953222 (= e!2447254 (inv!17 (value!208365 (h!47481 prefixTokens!80))))))

(declare-fun b!3953223 () Bool)

(assert (=> b!3953223 (= e!2447255 e!2447254)))

(declare-fun c!686272 () Bool)

(assert (=> b!3953223 (= c!686272 (is-IntegerValue!20452 (value!208365 (h!47481 prefixTokens!80))))))

(declare-fun b!3953224 () Bool)

(declare-fun res!1599629 () Bool)

(assert (=> b!3953224 (=> res!1599629 e!2447256)))

(assert (=> b!3953224 (= res!1599629 (not (is-IntegerValue!20453 (value!208365 (h!47481 prefixTokens!80)))))))

(assert (=> b!3953224 (= e!2447254 e!2447256)))

(assert (= (and d!1171953 c!686271) b!3953220))

(assert (= (and d!1171953 (not c!686271)) b!3953223))

(assert (= (and b!3953223 c!686272) b!3953222))

(assert (= (and b!3953223 (not c!686272)) b!3953224))

(assert (= (and b!3953224 (not res!1599629)) b!3953221))

(declare-fun m!4522073 () Bool)

(assert (=> b!3953220 m!4522073))

(declare-fun m!4522075 () Bool)

(assert (=> b!3953221 m!4522075))

(declare-fun m!4522077 () Bool)

(assert (=> b!3953222 m!4522077))

(assert (=> b!3952945 d!1171953))

(declare-fun b!3953225 () Bool)

(declare-fun e!2447258 () tuple2!41346)

(assert (=> b!3953225 (= e!2447258 (tuple2!41347 Nil!42061 suffix!1176))))

(declare-fun b!3953226 () Bool)

(declare-fun e!2447257 () Bool)

(declare-fun lt!1382191 () tuple2!41346)

(assert (=> b!3953226 (= e!2447257 (= (_2!23807 lt!1382191) suffix!1176))))

(declare-fun b!3953227 () Bool)

(declare-fun e!2447259 () Bool)

(assert (=> b!3953227 (= e!2447257 e!2447259)))

(declare-fun res!1599630 () Bool)

(assert (=> b!3953227 (= res!1599630 (< (size!31513 (_2!23807 lt!1382191)) (size!31513 suffix!1176)))))

(assert (=> b!3953227 (=> (not res!1599630) (not e!2447259))))

(declare-fun b!3953228 () Bool)

(assert (=> b!3953228 (= e!2447259 (not (isEmpty!25129 (_1!23807 lt!1382191))))))

(declare-fun d!1171955 () Bool)

(assert (=> d!1171955 e!2447257))

(declare-fun c!686273 () Bool)

(assert (=> d!1171955 (= c!686273 (> (size!31516 (_1!23807 lt!1382191)) 0))))

(assert (=> d!1171955 (= lt!1382191 e!2447258)))

(declare-fun c!686274 () Bool)

(declare-fun lt!1382192 () Option!9007)

(assert (=> d!1171955 (= c!686274 (is-Some!9006 lt!1382192))))

(assert (=> d!1171955 (= lt!1382192 (maxPrefix!3480 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1171955 (= (lexList!1944 thiss!20629 rules!2768 suffix!1176) lt!1382191)))

(declare-fun b!3953229 () Bool)

(declare-fun lt!1382193 () tuple2!41346)

(assert (=> b!3953229 (= e!2447258 (tuple2!41347 (Cons!42061 (_1!23808 (v!39346 lt!1382192)) (_1!23807 lt!1382193)) (_2!23807 lt!1382193)))))

(assert (=> b!3953229 (= lt!1382193 (lexList!1944 thiss!20629 rules!2768 (_2!23808 (v!39346 lt!1382192))))))

(assert (= (and d!1171955 c!686274) b!3953229))

(assert (= (and d!1171955 (not c!686274)) b!3953225))

(assert (= (and d!1171955 c!686273) b!3953227))

(assert (= (and d!1171955 (not c!686273)) b!3953226))

(assert (= (and b!3953227 res!1599630) b!3953228))

(declare-fun m!4522079 () Bool)

(assert (=> b!3953227 m!4522079))

(assert (=> b!3953227 m!4521717))

(declare-fun m!4522081 () Bool)

(assert (=> b!3953228 m!4522081))

(declare-fun m!4522083 () Bool)

(assert (=> d!1171955 m!4522083))

(declare-fun m!4522085 () Bool)

(assert (=> d!1171955 m!4522085))

(declare-fun m!4522087 () Bool)

(assert (=> b!3953229 m!4522087))

(assert (=> b!3952936 d!1171955))

(declare-fun d!1171957 () Bool)

(declare-fun lt!1382196 () Bool)

(declare-fun content!6376 (List!42186) (Set Rule!12974))

(assert (=> d!1171957 (= lt!1382196 (set.member (rule!9557 (_1!23808 (v!39346 lt!1382055))) (content!6376 rules!2768)))))

(declare-fun e!2447264 () Bool)

(assert (=> d!1171957 (= lt!1382196 e!2447264)))

(declare-fun res!1599635 () Bool)

(assert (=> d!1171957 (=> (not res!1599635) (not e!2447264))))

(assert (=> d!1171957 (= res!1599635 (is-Cons!42062 rules!2768))))

(assert (=> d!1171957 (= (contains!8409 rules!2768 (rule!9557 (_1!23808 (v!39346 lt!1382055)))) lt!1382196)))

(declare-fun b!3953234 () Bool)

(declare-fun e!2447265 () Bool)

(assert (=> b!3953234 (= e!2447264 e!2447265)))

(declare-fun res!1599636 () Bool)

(assert (=> b!3953234 (=> res!1599636 e!2447265)))

(assert (=> b!3953234 (= res!1599636 (= (h!47482 rules!2768) (rule!9557 (_1!23808 (v!39346 lt!1382055)))))))

(declare-fun b!3953235 () Bool)

(assert (=> b!3953235 (= e!2447265 (contains!8409 (t!328827 rules!2768) (rule!9557 (_1!23808 (v!39346 lt!1382055)))))))

(assert (= (and d!1171957 res!1599635) b!3953234))

(assert (= (and b!3953234 (not res!1599636)) b!3953235))

(declare-fun m!4522089 () Bool)

(assert (=> d!1171957 m!4522089))

(declare-fun m!4522091 () Bool)

(assert (=> d!1171957 m!4522091))

(declare-fun m!4522093 () Bool)

(assert (=> b!3953235 m!4522093))

(assert (=> b!3952946 d!1171957))

(declare-fun d!1171959 () Bool)

(assert (=> d!1171959 (= (isEmpty!25130 rules!2768) (is-Nil!42062 rules!2768))))

(assert (=> b!3952925 d!1171959))

(declare-fun d!1171961 () Bool)

(assert (=> d!1171961 (= (isEmpty!25131 prefix!426) (is-Nil!42059 prefix!426))))

(assert (=> b!3952927 d!1171961))

(declare-fun d!1171963 () Bool)

(declare-fun lt!1382197 () Int)

(assert (=> d!1171963 (>= lt!1382197 0)))

(declare-fun e!2447266 () Int)

(assert (=> d!1171963 (= lt!1382197 e!2447266)))

(declare-fun c!686275 () Bool)

(assert (=> d!1171963 (= c!686275 (is-Nil!42059 prefix!426))))

(assert (=> d!1171963 (= (size!31513 prefix!426) lt!1382197)))

(declare-fun b!3953236 () Bool)

(assert (=> b!3953236 (= e!2447266 0)))

(declare-fun b!3953237 () Bool)

(assert (=> b!3953237 (= e!2447266 (+ 1 (size!31513 (t!328824 prefix!426))))))

(assert (= (and d!1171963 c!686275) b!3953236))

(assert (= (and d!1171963 (not c!686275)) b!3953237))

(declare-fun m!4522095 () Bool)

(assert (=> b!3953237 m!4522095))

(assert (=> b!3952926 d!1171963))

(declare-fun b!3953251 () Bool)

(declare-fun b_free!108801 () Bool)

(declare-fun b_next!109505 () Bool)

(assert (=> b!3953251 (= b_free!108801 (not b_next!109505))))

(declare-fun tb!237939 () Bool)

(declare-fun t!328863 () Bool)

(assert (=> (and b!3953251 (= (toValue!9063 (transformation!6587 (rule!9557 (h!47481 (t!328826 prefixTokens!80))))) (toValue!9063 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328863) tb!237939))

(declare-fun result!288160 () Bool)

(assert (= result!288160 result!288126))

(assert (=> d!1171897 t!328863))

(declare-fun tp!1204565 () Bool)

(declare-fun b_and!303073 () Bool)

(assert (=> b!3953251 (= tp!1204565 (and (=> t!328863 result!288160) b_and!303073))))

(declare-fun b_free!108803 () Bool)

(declare-fun b_next!109507 () Bool)

(assert (=> b!3953251 (= b_free!108803 (not b_next!109507))))

(declare-fun tb!237941 () Bool)

(declare-fun t!328865 () Bool)

(assert (=> (and b!3953251 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 (t!328826 prefixTokens!80))))) (toChars!8922 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328865) tb!237941))

(declare-fun result!288162 () Bool)

(assert (= result!288162 result!288138))

(assert (=> d!1171905 t!328865))

(declare-fun t!328867 () Bool)

(declare-fun tb!237943 () Bool)

(assert (=> (and b!3953251 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 (t!328826 prefixTokens!80))))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80))))) t!328867) tb!237943))

(declare-fun result!288164 () Bool)

(assert (= result!288164 result!288146))

(assert (=> b!3953116 t!328867))

(declare-fun t!328869 () Bool)

(declare-fun tb!237945 () Bool)

(assert (=> (and b!3953251 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 (t!328826 prefixTokens!80))))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72))))) t!328869) tb!237945))

(declare-fun result!288166 () Bool)

(assert (= result!288166 result!288152))

(assert (=> b!3953119 t!328869))

(declare-fun tp!1204561 () Bool)

(declare-fun b_and!303075 () Bool)

(assert (=> b!3953251 (= tp!1204561 (and (=> t!328865 result!288162) (=> t!328867 result!288164) (=> t!328869 result!288166) b_and!303075))))

(declare-fun e!2447279 () Bool)

(assert (=> b!3953251 (= e!2447279 (and tp!1204565 tp!1204561))))

(declare-fun e!2447282 () Bool)

(declare-fun tp!1204562 () Bool)

(declare-fun b!3953249 () Bool)

(declare-fun e!2447283 () Bool)

(assert (=> b!3953249 (= e!2447283 (and (inv!21 (value!208365 (h!47481 (t!328826 prefixTokens!80)))) e!2447282 tp!1204562))))

(declare-fun tp!1204564 () Bool)

(declare-fun b!3953250 () Bool)

(assert (=> b!3953250 (= e!2447282 (and tp!1204564 (inv!56283 (tag!7447 (rule!9557 (h!47481 (t!328826 prefixTokens!80))))) (inv!56287 (transformation!6587 (rule!9557 (h!47481 (t!328826 prefixTokens!80))))) e!2447279))))

(declare-fun e!2447284 () Bool)

(assert (=> b!3952939 (= tp!1204482 e!2447284)))

(declare-fun tp!1204563 () Bool)

(declare-fun b!3953248 () Bool)

(assert (=> b!3953248 (= e!2447284 (and (inv!56286 (h!47481 (t!328826 prefixTokens!80))) e!2447283 tp!1204563))))

(assert (= b!3953250 b!3953251))

(assert (= b!3953249 b!3953250))

(assert (= b!3953248 b!3953249))

(assert (= (and b!3952939 (is-Cons!42061 (t!328826 prefixTokens!80))) b!3953248))

(declare-fun m!4522097 () Bool)

(assert (=> b!3953249 m!4522097))

(declare-fun m!4522099 () Bool)

(assert (=> b!3953250 m!4522099))

(declare-fun m!4522101 () Bool)

(assert (=> b!3953250 m!4522101))

(declare-fun m!4522103 () Bool)

(assert (=> b!3953248 m!4522103))

(declare-fun b!3953255 () Bool)

(declare-fun b_free!108805 () Bool)

(declare-fun b_next!109509 () Bool)

(assert (=> b!3953255 (= b_free!108805 (not b_next!109509))))

(declare-fun t!328871 () Bool)

(declare-fun tb!237947 () Bool)

(assert (=> (and b!3953255 (= (toValue!9063 (transformation!6587 (rule!9557 (h!47481 (t!328826 suffixTokens!72))))) (toValue!9063 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328871) tb!237947))

(declare-fun result!288168 () Bool)

(assert (= result!288168 result!288126))

(assert (=> d!1171897 t!328871))

(declare-fun tp!1204570 () Bool)

(declare-fun b_and!303077 () Bool)

(assert (=> b!3953255 (= tp!1204570 (and (=> t!328871 result!288168) b_and!303077))))

(declare-fun b_free!108807 () Bool)

(declare-fun b_next!109511 () Bool)

(assert (=> b!3953255 (= b_free!108807 (not b_next!109511))))

(declare-fun t!328873 () Bool)

(declare-fun tb!237949 () Bool)

(assert (=> (and b!3953255 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 (t!328826 suffixTokens!72))))) (toChars!8922 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328873) tb!237949))

(declare-fun result!288170 () Bool)

(assert (= result!288170 result!288138))

(assert (=> d!1171905 t!328873))

(declare-fun t!328875 () Bool)

(declare-fun tb!237951 () Bool)

(assert (=> (and b!3953255 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 (t!328826 suffixTokens!72))))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80))))) t!328875) tb!237951))

(declare-fun result!288172 () Bool)

(assert (= result!288172 result!288146))

(assert (=> b!3953116 t!328875))

(declare-fun t!328877 () Bool)

(declare-fun tb!237953 () Bool)

(assert (=> (and b!3953255 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 (t!328826 suffixTokens!72))))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72))))) t!328877) tb!237953))

(declare-fun result!288174 () Bool)

(assert (= result!288174 result!288152))

(assert (=> b!3953119 t!328877))

(declare-fun b_and!303079 () Bool)

(declare-fun tp!1204566 () Bool)

(assert (=> b!3953255 (= tp!1204566 (and (=> t!328873 result!288170) (=> t!328875 result!288172) (=> t!328877 result!288174) b_and!303079))))

(declare-fun e!2447285 () Bool)

(assert (=> b!3953255 (= e!2447285 (and tp!1204570 tp!1204566))))

(declare-fun e!2447288 () Bool)

(declare-fun e!2447289 () Bool)

(declare-fun b!3953253 () Bool)

(declare-fun tp!1204567 () Bool)

(assert (=> b!3953253 (= e!2447289 (and (inv!21 (value!208365 (h!47481 (t!328826 suffixTokens!72)))) e!2447288 tp!1204567))))

(declare-fun b!3953254 () Bool)

(declare-fun tp!1204569 () Bool)

(assert (=> b!3953254 (= e!2447288 (and tp!1204569 (inv!56283 (tag!7447 (rule!9557 (h!47481 (t!328826 suffixTokens!72))))) (inv!56287 (transformation!6587 (rule!9557 (h!47481 (t!328826 suffixTokens!72))))) e!2447285))))

(declare-fun e!2447290 () Bool)

(assert (=> b!3952938 (= tp!1204487 e!2447290)))

(declare-fun b!3953252 () Bool)

(declare-fun tp!1204568 () Bool)

(assert (=> b!3953252 (= e!2447290 (and (inv!56286 (h!47481 (t!328826 suffixTokens!72))) e!2447289 tp!1204568))))

(assert (= b!3953254 b!3953255))

(assert (= b!3953253 b!3953254))

(assert (= b!3953252 b!3953253))

(assert (= (and b!3952938 (is-Cons!42061 (t!328826 suffixTokens!72))) b!3953252))

(declare-fun m!4522105 () Bool)

(assert (=> b!3953253 m!4522105))

(declare-fun m!4522107 () Bool)

(assert (=> b!3953254 m!4522107))

(declare-fun m!4522109 () Bool)

(assert (=> b!3953254 m!4522109))

(declare-fun m!4522111 () Bool)

(assert (=> b!3953252 m!4522111))

(declare-fun b!3953260 () Bool)

(declare-fun e!2447293 () Bool)

(declare-fun tp!1204573 () Bool)

(assert (=> b!3953260 (= e!2447293 (and tp_is_empty!19955 tp!1204573))))

(assert (=> b!3952930 (= tp!1204488 e!2447293)))

(assert (= (and b!3952930 (is-Cons!42059 (originalCharacters!7187 (h!47481 suffixTokens!72)))) b!3953260))

(declare-fun b!3953274 () Bool)

(declare-fun e!2447296 () Bool)

(declare-fun tp!1204588 () Bool)

(declare-fun tp!1204584 () Bool)

(assert (=> b!3953274 (= e!2447296 (and tp!1204588 tp!1204584))))

(declare-fun b!3953273 () Bool)

(declare-fun tp!1204586 () Bool)

(assert (=> b!3953273 (= e!2447296 tp!1204586)))

(declare-fun b!3953271 () Bool)

(assert (=> b!3953271 (= e!2447296 tp_is_empty!19955)))

(declare-fun b!3953272 () Bool)

(declare-fun tp!1204585 () Bool)

(declare-fun tp!1204587 () Bool)

(assert (=> b!3953272 (= e!2447296 (and tp!1204585 tp!1204587))))

(assert (=> b!3952943 (= tp!1204476 e!2447296)))

(assert (= (and b!3952943 (is-ElementMatch!11492 (regex!6587 (rule!9557 (h!47481 prefixTokens!80))))) b!3953271))

(assert (= (and b!3952943 (is-Concat!18310 (regex!6587 (rule!9557 (h!47481 prefixTokens!80))))) b!3953272))

(assert (= (and b!3952943 (is-Star!11492 (regex!6587 (rule!9557 (h!47481 prefixTokens!80))))) b!3953273))

(assert (= (and b!3952943 (is-Union!11492 (regex!6587 (rule!9557 (h!47481 prefixTokens!80))))) b!3953274))

(declare-fun b!3953278 () Bool)

(declare-fun e!2447297 () Bool)

(declare-fun tp!1204593 () Bool)

(declare-fun tp!1204589 () Bool)

(assert (=> b!3953278 (= e!2447297 (and tp!1204593 tp!1204589))))

(declare-fun b!3953277 () Bool)

(declare-fun tp!1204591 () Bool)

(assert (=> b!3953277 (= e!2447297 tp!1204591)))

(declare-fun b!3953275 () Bool)

(assert (=> b!3953275 (= e!2447297 tp_is_empty!19955)))

(declare-fun b!3953276 () Bool)

(declare-fun tp!1204590 () Bool)

(declare-fun tp!1204592 () Bool)

(assert (=> b!3953276 (= e!2447297 (and tp!1204590 tp!1204592))))

(assert (=> b!3952942 (= tp!1204490 e!2447297)))

(assert (= (and b!3952942 (is-ElementMatch!11492 (regex!6587 (rule!9557 (h!47481 suffixTokens!72))))) b!3953275))

(assert (= (and b!3952942 (is-Concat!18310 (regex!6587 (rule!9557 (h!47481 suffixTokens!72))))) b!3953276))

(assert (= (and b!3952942 (is-Star!11492 (regex!6587 (rule!9557 (h!47481 suffixTokens!72))))) b!3953277))

(assert (= (and b!3952942 (is-Union!11492 (regex!6587 (rule!9557 (h!47481 suffixTokens!72))))) b!3953278))

(declare-fun b!3953279 () Bool)

(declare-fun e!2447298 () Bool)

(declare-fun tp!1204594 () Bool)

(assert (=> b!3953279 (= e!2447298 (and tp_is_empty!19955 tp!1204594))))

(assert (=> b!3952921 (= tp!1204475 e!2447298)))

(assert (= (and b!3952921 (is-Cons!42059 (t!328824 suffix!1176))) b!3953279))

(declare-fun b!3953283 () Bool)

(declare-fun e!2447299 () Bool)

(declare-fun tp!1204599 () Bool)

(declare-fun tp!1204595 () Bool)

(assert (=> b!3953283 (= e!2447299 (and tp!1204599 tp!1204595))))

(declare-fun b!3953282 () Bool)

(declare-fun tp!1204597 () Bool)

(assert (=> b!3953282 (= e!2447299 tp!1204597)))

(declare-fun b!3953280 () Bool)

(assert (=> b!3953280 (= e!2447299 tp_is_empty!19955)))

(declare-fun b!3953281 () Bool)

(declare-fun tp!1204596 () Bool)

(declare-fun tp!1204598 () Bool)

(assert (=> b!3953281 (= e!2447299 (and tp!1204596 tp!1204598))))

(assert (=> b!3952944 (= tp!1204478 e!2447299)))

(assert (= (and b!3952944 (is-ElementMatch!11492 (regex!6587 (h!47482 rules!2768)))) b!3953280))

(assert (= (and b!3952944 (is-Concat!18310 (regex!6587 (h!47482 rules!2768)))) b!3953281))

(assert (= (and b!3952944 (is-Star!11492 (regex!6587 (h!47482 rules!2768)))) b!3953282))

(assert (= (and b!3952944 (is-Union!11492 (regex!6587 (h!47482 rules!2768)))) b!3953283))

(declare-fun b!3953284 () Bool)

(declare-fun e!2447300 () Bool)

(declare-fun tp!1204600 () Bool)

(assert (=> b!3953284 (= e!2447300 (and tp_is_empty!19955 tp!1204600))))

(assert (=> b!3952945 (= tp!1204484 e!2447300)))

(assert (= (and b!3952945 (is-Cons!42059 (originalCharacters!7187 (h!47481 prefixTokens!80)))) b!3953284))

(declare-fun b!3953295 () Bool)

(declare-fun b_free!108809 () Bool)

(declare-fun b_next!109513 () Bool)

(assert (=> b!3953295 (= b_free!108809 (not b_next!109513))))

(declare-fun t!328879 () Bool)

(declare-fun tb!237955 () Bool)

(assert (=> (and b!3953295 (= (toValue!9063 (transformation!6587 (h!47482 (t!328827 rules!2768)))) (toValue!9063 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328879) tb!237955))

(declare-fun result!288182 () Bool)

(assert (= result!288182 result!288126))

(assert (=> d!1171897 t!328879))

(declare-fun b_and!303081 () Bool)

(declare-fun tp!1204611 () Bool)

(assert (=> b!3953295 (= tp!1204611 (and (=> t!328879 result!288182) b_and!303081))))

(declare-fun b_free!108811 () Bool)

(declare-fun b_next!109515 () Bool)

(assert (=> b!3953295 (= b_free!108811 (not b_next!109515))))

(declare-fun t!328881 () Bool)

(declare-fun tb!237957 () Bool)

(assert (=> (and b!3953295 (= (toChars!8922 (transformation!6587 (h!47482 (t!328827 rules!2768)))) (toChars!8922 (transformation!6587 (rule!9557 (_1!23808 (v!39346 lt!1382055)))))) t!328881) tb!237957))

(declare-fun result!288184 () Bool)

(assert (= result!288184 result!288138))

(assert (=> d!1171905 t!328881))

(declare-fun tb!237959 () Bool)

(declare-fun t!328883 () Bool)

(assert (=> (and b!3953295 (= (toChars!8922 (transformation!6587 (h!47482 (t!328827 rules!2768)))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80))))) t!328883) tb!237959))

(declare-fun result!288186 () Bool)

(assert (= result!288186 result!288146))

(assert (=> b!3953116 t!328883))

(declare-fun tb!237961 () Bool)

(declare-fun t!328885 () Bool)

(assert (=> (and b!3953295 (= (toChars!8922 (transformation!6587 (h!47482 (t!328827 rules!2768)))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72))))) t!328885) tb!237961))

(declare-fun result!288188 () Bool)

(assert (= result!288188 result!288152))

(assert (=> b!3953119 t!328885))

(declare-fun tp!1204612 () Bool)

(declare-fun b_and!303083 () Bool)

(assert (=> b!3953295 (= tp!1204612 (and (=> t!328881 result!288184) (=> t!328883 result!288186) (=> t!328885 result!288188) b_and!303083))))

(declare-fun e!2447311 () Bool)

(assert (=> b!3953295 (= e!2447311 (and tp!1204611 tp!1204612))))

(declare-fun b!3953294 () Bool)

(declare-fun e!2447312 () Bool)

(declare-fun tp!1204610 () Bool)

(assert (=> b!3953294 (= e!2447312 (and tp!1204610 (inv!56283 (tag!7447 (h!47482 (t!328827 rules!2768)))) (inv!56287 (transformation!6587 (h!47482 (t!328827 rules!2768)))) e!2447311))))

(declare-fun b!3953293 () Bool)

(declare-fun e!2447309 () Bool)

(declare-fun tp!1204609 () Bool)

(assert (=> b!3953293 (= e!2447309 (and e!2447312 tp!1204609))))

(assert (=> b!3952947 (= tp!1204479 e!2447309)))

(assert (= b!3953294 b!3953295))

(assert (= b!3953293 b!3953294))

(assert (= (and b!3952947 (is-Cons!42062 (t!328827 rules!2768))) b!3953293))

(declare-fun m!4522113 () Bool)

(assert (=> b!3953294 m!4522113))

(declare-fun m!4522115 () Bool)

(assert (=> b!3953294 m!4522115))

(declare-fun b!3953296 () Bool)

(declare-fun e!2447313 () Bool)

(declare-fun tp!1204613 () Bool)

(assert (=> b!3953296 (= e!2447313 (and tp_is_empty!19955 tp!1204613))))

(assert (=> b!3952948 (= tp!1204483 e!2447313)))

(assert (= (and b!3952948 (is-Cons!42059 (t!328824 suffixResult!91))) b!3953296))

(declare-fun b!3953297 () Bool)

(declare-fun e!2447314 () Bool)

(declare-fun tp!1204614 () Bool)

(assert (=> b!3953297 (= e!2447314 (and tp_is_empty!19955 tp!1204614))))

(assert (=> b!3952937 (= tp!1204480 e!2447314)))

(assert (= (and b!3952937 (is-Cons!42059 (t!328824 prefix!426))) b!3953297))

(declare-fun b_lambda!115633 () Bool)

(assert (= b_lambda!115631 (or (and b!3953251 b_free!108803 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 (t!328826 prefixTokens!80))))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))))) (and b!3952929 b_free!108779) (and b!3953295 b_free!108811 (= (toChars!8922 (transformation!6587 (h!47482 (t!328827 rules!2768)))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))))) (and b!3952934 b_free!108783 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))))) (and b!3953255 b_free!108807 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 (t!328826 suffixTokens!72))))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))))) (and b!3952935 b_free!108787 (= (toChars!8922 (transformation!6587 (h!47482 rules!2768))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))))) b_lambda!115633)))

(declare-fun b_lambda!115635 () Bool)

(assert (= b_lambda!115629 (or (and b!3953255 b_free!108807 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 (t!328826 suffixTokens!72))))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))))) (and b!3952934 b_free!108783) (and b!3953251 b_free!108803 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 (t!328826 prefixTokens!80))))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))))) (and b!3953295 b_free!108811 (= (toChars!8922 (transformation!6587 (h!47482 (t!328827 rules!2768)))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))))) (and b!3952929 b_free!108779 (= (toChars!8922 (transformation!6587 (rule!9557 (h!47481 suffixTokens!72)))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))))) (and b!3952935 b_free!108787 (= (toChars!8922 (transformation!6587 (h!47482 rules!2768))) (toChars!8922 (transformation!6587 (rule!9557 (h!47481 prefixTokens!80)))))) b_lambda!115635)))

(push 1)

(assert (not b!3953183))

(assert (not b_lambda!115627))

(assert (not b_next!109515))

(assert (not b!3953148))

(assert (not tb!237911))

(assert (not b!3953199))

(assert b_and!303069)

(assert (not b!3953064))

(assert (not b_next!109509))

(assert (not b!3953273))

(assert (not d!1171883))

(assert (not b!3953274))

(assert (not b!3953260))

(assert (not tb!237927))

(assert (not d!1171903))

(assert (not b!3953116))

(assert (not b!3953209))

(assert (not b!3953210))

(assert (not b!3953189))

(assert (not b!3953282))

(assert (not b!3953237))

(assert (not b!3953294))

(assert (not b!3953111))

(assert (not b!3953109))

(assert (not d!1171907))

(assert (not b_next!109489))

(assert (not b_next!109511))

(assert (not b!3953110))

(assert (not d!1171895))

(assert (not bm!285262))

(assert (not b!3953177))

(assert (not b!3953281))

(assert b_and!303079)

(assert (not b!3953227))

(assert (not b!3953181))

(assert (not b!3953048))

(assert (not d!1171945))

(assert (not b!3953248))

(assert (not b!3953218))

(assert (not d!1171929))

(assert (not b!3953178))

(assert (not b!3953276))

(assert (not b!3953153))

(assert (not d!1171899))

(assert (not d!1171947))

(assert (not d!1171885))

(assert (not b!3953120))

(assert (not tb!237933))

(assert (not b!3953090))

(assert tp_is_empty!19955)

(assert (not b!3953047))

(assert (not b_next!109487))

(assert b_and!303081)

(assert (not b_next!109505))

(assert (not b!3953046))

(assert b_and!303077)

(assert (not d!1171949))

(assert (not b!3953149))

(assert (not d!1171913))

(assert (not d!1171911))

(assert (not b!3953182))

(assert (not b!3953221))

(assert (not d!1171921))

(assert (not d!1171881))

(assert (not b!3953180))

(assert (not b!3953297))

(assert (not b!3953235))

(assert (not b!3953117))

(assert (not b!3953250))

(assert b_and!303075)

(assert (not b!3953214))

(assert (not b!3953065))

(assert (not b!3953197))

(assert (not b!3953198))

(assert (not d!1171937))

(assert (not b!3953213))

(assert (not b_lambda!115635))

(assert (not b_lambda!115633))

(assert (not b!3953253))

(assert (not d!1171933))

(assert (not b_next!109491))

(assert (not b!3953249))

(assert (not b!3953283))

(assert (not b!3953220))

(assert (not b!3953185))

(assert (not d!1171891))

(assert (not b!3953190))

(assert (not b!3953124))

(assert (not b!3953096))

(assert (not b!3953121))

(assert (not b_next!109483))

(assert (not b!3953277))

(assert (not b!3953228))

(assert (not b_next!109485))

(assert (not b!3953293))

(assert (not b!3953118))

(assert (not b_lambda!115625))

(assert (not b!3953147))

(assert (not b!3953192))

(assert b_and!303071)

(assert (not d!1171955))

(assert (not d!1171909))

(assert (not b!3953296))

(assert (not b!3953272))

(assert (not b_next!109513))

(assert (not b!3953278))

(assert b_and!303045)

(assert (not b!3953188))

(assert (not d!1171905))

(assert (not d!1171877))

(assert (not b!3953126))

(assert (not b!3953229))

(assert (not tb!237921))

(assert b_and!303067)

(assert (not b_next!109481))

(assert b_and!303083)

(assert (not b!3953184))

(assert (not b_next!109507))

(assert (not b!3953284))

(assert (not b!3953254))

(assert (not b!3953252))

(assert b_and!303047)

(assert b_and!303043)

(assert (not b!3953217))

(assert (not b!3953119))

(assert (not d!1171943))

(assert (not b!3953222))

(assert (not b!3953053))

(assert (not b!3953072))

(assert (not d!1171893))

(assert (not b!3953194))

(assert (not b!3953279))

(assert b_and!303073)

(assert (not d!1171957))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!109509))

(assert b_and!303079)

(assert b_and!303075)

(assert (not b_next!109491))

(assert (not b_next!109483))

(assert (not b_next!109485))

(assert (not b_next!109507))

(assert b_and!303073)

(assert (not b_next!109515))

(assert b_and!303069)

(assert (not b_next!109489))

(assert (not b_next!109511))

(assert (not b_next!109487))

(assert b_and!303081)

(assert b_and!303077)

(assert (not b_next!109505))

(assert b_and!303045)

(assert b_and!303071)

(assert (not b_next!109513))

(assert b_and!303067)

(assert (not b_next!109481))

(assert b_and!303083)

(assert b_and!303047)

(assert b_and!303043)

(check-sat)

(pop 1)

