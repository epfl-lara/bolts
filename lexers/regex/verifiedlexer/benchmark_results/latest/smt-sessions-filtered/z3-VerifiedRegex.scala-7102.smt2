; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376512 () Bool)

(assert start!376512)

(declare-fun b!4000999 () Bool)

(declare-fun b_free!111185 () Bool)

(declare-fun b_next!111889 () Bool)

(assert (=> b!4000999 (= b_free!111185 (not b_next!111889))))

(declare-fun tp!1217567 () Bool)

(declare-fun b_and!307215 () Bool)

(assert (=> b!4000999 (= tp!1217567 b_and!307215)))

(declare-fun b_free!111187 () Bool)

(declare-fun b_next!111891 () Bool)

(assert (=> b!4000999 (= b_free!111187 (not b_next!111891))))

(declare-fun tp!1217571 () Bool)

(declare-fun b_and!307217 () Bool)

(assert (=> b!4000999 (= tp!1217571 b_and!307217)))

(declare-fun b!4000998 () Bool)

(declare-fun b_free!111189 () Bool)

(declare-fun b_next!111893 () Bool)

(assert (=> b!4000998 (= b_free!111189 (not b_next!111893))))

(declare-fun tp!1217576 () Bool)

(declare-fun b_and!307219 () Bool)

(assert (=> b!4000998 (= tp!1217576 b_and!307219)))

(declare-fun b_free!111191 () Bool)

(declare-fun b_next!111895 () Bool)

(assert (=> b!4000998 (= b_free!111191 (not b_next!111895))))

(declare-fun tp!1217565 () Bool)

(declare-fun b_and!307221 () Bool)

(assert (=> b!4000998 (= tp!1217565 b_and!307221)))

(declare-fun b!4000986 () Bool)

(declare-fun e!2480928 () Bool)

(declare-fun e!2480932 () Bool)

(assert (=> b!4000986 (= e!2480928 e!2480932)))

(declare-fun res!1625649 () Bool)

(assert (=> b!4000986 (=> res!1625649 e!2480932)))

(declare-datatypes ((C!23580 0))(
  ( (C!23581 (val!13884 Int)) )
))
(declare-datatypes ((List!42928 0))(
  ( (Nil!42804) (Cons!42804 (h!48224 C!23580) (t!332207 List!42928)) )
))
(declare-fun lt!1415079 () List!42928)

(declare-fun lt!1415088 () List!42928)

(assert (=> b!4000986 (= res!1625649 (not (= lt!1415079 lt!1415088)))))

(declare-fun lt!1415070 () List!42928)

(declare-fun lt!1415090 () List!42928)

(declare-fun ++!11194 (List!42928 List!42928) List!42928)

(assert (=> b!4000986 (= lt!1415079 (++!11194 lt!1415070 lt!1415090))))

(declare-fun getSuffix!2310 (List!42928 List!42928) List!42928)

(assert (=> b!4000986 (= lt!1415090 (getSuffix!2310 lt!1415088 lt!1415070))))

(declare-fun e!2480929 () Bool)

(assert (=> b!4000986 e!2480929))

(declare-fun res!1625653 () Bool)

(assert (=> b!4000986 (=> (not res!1625653) (not e!2480929))))

(declare-fun isPrefix!3879 (List!42928 List!42928) Bool)

(assert (=> b!4000986 (= res!1625653 (isPrefix!3879 lt!1415088 lt!1415088))))

(declare-datatypes ((Unit!61793 0))(
  ( (Unit!61794) )
))
(declare-fun lt!1415087 () Unit!61793)

(declare-fun lemmaIsPrefixRefl!2471 (List!42928 List!42928) Unit!61793)

(assert (=> b!4000986 (= lt!1415087 (lemmaIsPrefixRefl!2471 lt!1415088 lt!1415088))))

(declare-datatypes ((IArray!26011 0))(
  ( (IArray!26012 (innerList!13063 List!42928)) )
))
(declare-datatypes ((Conc!13003 0))(
  ( (Node!13003 (left!32313 Conc!13003) (right!32643 Conc!13003) (csize!26236 Int) (cheight!13214 Int)) (Leaf!20106 (xs!16309 IArray!26011) (csize!26237 Int)) (Empty!13003) )
))
(declare-datatypes ((BalanceConc!25600 0))(
  ( (BalanceConc!25601 (c!691980 Conc!13003)) )
))
(declare-datatypes ((List!42929 0))(
  ( (Nil!42805) (Cons!42805 (h!48225 (_ BitVec 16)) (t!332208 List!42929)) )
))
(declare-datatypes ((TokenValue!7022 0))(
  ( (FloatLiteralValue!14044 (text!49599 List!42929)) (TokenValueExt!7021 (__x!26261 Int)) (Broken!35110 (value!214180 List!42929)) (Object!7145) (End!7022) (Def!7022) (Underscore!7022) (Match!7022) (Else!7022) (Error!7022) (Case!7022) (If!7022) (Extends!7022) (Abstract!7022) (Class!7022) (Val!7022) (DelimiterValue!14044 (del!7082 List!42929)) (KeywordValue!7028 (value!214181 List!42929)) (CommentValue!14044 (value!214182 List!42929)) (WhitespaceValue!14044 (value!214183 List!42929)) (IndentationValue!7022 (value!214184 List!42929)) (String!48827) (Int32!7022) (Broken!35111 (value!214185 List!42929)) (Boolean!7023) (Unit!61795) (OperatorValue!7025 (op!7082 List!42929)) (IdentifierValue!14044 (value!214186 List!42929)) (IdentifierValue!14045 (value!214187 List!42929)) (WhitespaceValue!14045 (value!214188 List!42929)) (True!14044) (False!14044) (Broken!35112 (value!214189 List!42929)) (Broken!35113 (value!214190 List!42929)) (True!14045) (RightBrace!7022) (RightBracket!7022) (Colon!7022) (Null!7022) (Comma!7022) (LeftBracket!7022) (False!14045) (LeftBrace!7022) (ImaginaryLiteralValue!7022 (text!49600 List!42929)) (StringLiteralValue!21066 (value!214191 List!42929)) (EOFValue!7022 (value!214192 List!42929)) (IdentValue!7022 (value!214193 List!42929)) (DelimiterValue!14045 (value!214194 List!42929)) (DedentValue!7022 (value!214195 List!42929)) (NewLineValue!7022 (value!214196 List!42929)) (IntegerValue!21066 (value!214197 (_ BitVec 32)) (text!49601 List!42929)) (IntegerValue!21067 (value!214198 Int) (text!49602 List!42929)) (Times!7022) (Or!7022) (Equal!7022) (Minus!7022) (Broken!35114 (value!214199 List!42929)) (And!7022) (Div!7022) (LessEqual!7022) (Mod!7022) (Concat!18719) (Not!7022) (Plus!7022) (SpaceValue!7022 (value!214200 List!42929)) (IntegerValue!21068 (value!214201 Int) (text!49603 List!42929)) (StringLiteralValue!21067 (text!49604 List!42929)) (FloatLiteralValue!14045 (text!49605 List!42929)) (BytesLiteralValue!7022 (value!214202 List!42929)) (CommentValue!14045 (value!214203 List!42929)) (StringLiteralValue!21068 (value!214204 List!42929)) (ErrorTokenValue!7022 (msg!7083 List!42929)) )
))
(declare-datatypes ((Regex!11697 0))(
  ( (ElementMatch!11697 (c!691981 C!23580)) (Concat!18720 (regOne!23906 Regex!11697) (regTwo!23906 Regex!11697)) (EmptyExpr!11697) (Star!11697 (reg!12026 Regex!11697)) (EmptyLang!11697) (Union!11697 (regOne!23907 Regex!11697) (regTwo!23907 Regex!11697)) )
))
(declare-datatypes ((String!48828 0))(
  ( (String!48829 (value!214205 String)) )
))
(declare-datatypes ((TokenValueInjection!13472 0))(
  ( (TokenValueInjection!13473 (toValue!9280 Int) (toChars!9139 Int)) )
))
(declare-datatypes ((Rule!13384 0))(
  ( (Rule!13385 (regex!6792 Regex!11697) (tag!7652 String!48828) (isSeparator!6792 Bool) (transformation!6792 TokenValueInjection!13472)) )
))
(declare-datatypes ((Token!12722 0))(
  ( (Token!12723 (value!214206 TokenValue!7022) (rule!9824 Rule!13384) (size!32007 Int) (originalCharacters!7392 List!42928)) )
))
(declare-fun token!484 () Token!12722)

(declare-fun e!2480922 () Bool)

(declare-fun e!2480931 () Bool)

(declare-fun b!4000987 () Bool)

(declare-fun tp!1217573 () Bool)

(declare-fun inv!21 (TokenValue!7022) Bool)

(assert (=> b!4000987 (= e!2480931 (and (inv!21 (value!214206 token!484)) e!2480922 tp!1217573))))

(declare-fun lt!1415059 () Int)

(declare-fun b!4000988 () Bool)

(assert (=> b!4000988 (= e!2480929 (and (= (size!32007 token!484) lt!1415059) (= (originalCharacters!7392 token!484) lt!1415070)))))

(declare-fun b!4000989 () Bool)

(declare-fun e!2480919 () Bool)

(declare-fun e!2480934 () Bool)

(assert (=> b!4000989 (= e!2480919 (not e!2480934))))

(declare-fun res!1625651 () Bool)

(assert (=> b!4000989 (=> res!1625651 e!2480934)))

(declare-fun lt!1415060 () List!42928)

(assert (=> b!4000989 (= res!1625651 (not (= lt!1415060 lt!1415088)))))

(declare-fun suffixResult!105 () List!42928)

(assert (=> b!4000989 (= lt!1415060 (++!11194 lt!1415070 suffixResult!105))))

(declare-fun lt!1415085 () Unit!61793)

(declare-fun lemmaInv!1007 (TokenValueInjection!13472) Unit!61793)

(assert (=> b!4000989 (= lt!1415085 (lemmaInv!1007 (transformation!6792 (rule!9824 token!484))))))

(declare-datatypes ((LexerInterface!6381 0))(
  ( (LexerInterfaceExt!6378 (__x!26262 Int)) (Lexer!6379) )
))
(declare-fun thiss!21717 () LexerInterface!6381)

(declare-fun ruleValid!2724 (LexerInterface!6381 Rule!13384) Bool)

(assert (=> b!4000989 (ruleValid!2724 thiss!21717 (rule!9824 token!484))))

(declare-datatypes ((List!42930 0))(
  ( (Nil!42806) (Cons!42806 (h!48226 Rule!13384) (t!332209 List!42930)) )
))
(declare-fun rules!2999 () List!42930)

(declare-fun lt!1415073 () Unit!61793)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1798 (LexerInterface!6381 Rule!13384 List!42930) Unit!61793)

(assert (=> b!4000989 (= lt!1415073 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1798 thiss!21717 (rule!9824 token!484) rules!2999))))

(declare-fun b!4000991 () Bool)

(declare-fun e!2480923 () Bool)

(declare-fun e!2480930 () Bool)

(assert (=> b!4000991 (= e!2480923 e!2480930)))

(declare-fun res!1625655 () Bool)

(assert (=> b!4000991 (=> res!1625655 e!2480930)))

(declare-datatypes ((tuple2!41982 0))(
  ( (tuple2!41983 (_1!24125 Token!12722) (_2!24125 List!42928)) )
))
(declare-datatypes ((Option!9206 0))(
  ( (None!9205) (Some!9205 (v!39565 tuple2!41982)) )
))
(declare-fun lt!1415063 () Option!9206)

(declare-fun lt!1415075 () Option!9206)

(assert (=> b!4000991 (= res!1625655 (not (= lt!1415063 lt!1415075)))))

(declare-fun lt!1415064 () Token!12722)

(assert (=> b!4000991 (= lt!1415063 (Some!9205 (tuple2!41983 lt!1415064 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2713 (LexerInterface!6381 Rule!13384 List!42928) Option!9206)

(assert (=> b!4000991 (= lt!1415063 (maxPrefixOneRule!2713 thiss!21717 (rule!9824 token!484) lt!1415088))))

(declare-fun lt!1415091 () TokenValue!7022)

(assert (=> b!4000991 (= lt!1415064 (Token!12723 lt!1415091 (rule!9824 token!484) lt!1415059 lt!1415070))))

(declare-fun apply!10003 (TokenValueInjection!13472 BalanceConc!25600) TokenValue!7022)

(declare-fun seqFromList!5031 (List!42928) BalanceConc!25600)

(assert (=> b!4000991 (= lt!1415091 (apply!10003 (transformation!6792 (rule!9824 token!484)) (seqFromList!5031 lt!1415070)))))

(declare-fun lt!1415077 () Unit!61793)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1535 (LexerInterface!6381 List!42930 List!42928 List!42928 List!42928 Rule!13384) Unit!61793)

(assert (=> b!4000991 (= lt!1415077 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1535 thiss!21717 rules!2999 lt!1415070 lt!1415088 suffixResult!105 (rule!9824 token!484)))))

(declare-fun lt!1415074 () List!42928)

(assert (=> b!4000991 (= lt!1415074 suffixResult!105)))

(declare-fun lt!1415061 () Unit!61793)

(declare-fun lemmaSamePrefixThenSameSuffix!2066 (List!42928 List!42928 List!42928 List!42928 List!42928) Unit!61793)

(assert (=> b!4000991 (= lt!1415061 (lemmaSamePrefixThenSameSuffix!2066 lt!1415070 lt!1415074 lt!1415070 suffixResult!105 lt!1415088))))

(declare-fun lt!1415071 () List!42928)

(assert (=> b!4000991 (isPrefix!3879 lt!1415070 lt!1415071)))

(declare-fun lt!1415082 () Unit!61793)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2722 (List!42928 List!42928) Unit!61793)

(assert (=> b!4000991 (= lt!1415082 (lemmaConcatTwoListThenFirstIsPrefix!2722 lt!1415070 lt!1415074))))

(declare-fun b!4000992 () Bool)

(assert (=> b!4000992 (= e!2480930 e!2480928)))

(declare-fun res!1625652 () Bool)

(assert (=> b!4000992 (=> res!1625652 e!2480928)))

(declare-fun matchR!5674 (Regex!11697 List!42928) Bool)

(assert (=> b!4000992 (= res!1625652 (not (matchR!5674 (regex!6792 (rule!9824 token!484)) lt!1415070)))))

(declare-fun lt!1415086 () List!42928)

(assert (=> b!4000992 (isPrefix!3879 lt!1415070 lt!1415086)))

(declare-fun prefix!494 () List!42928)

(declare-fun newSuffix!27 () List!42928)

(declare-fun lt!1415083 () Unit!61793)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!712 (List!42928 List!42928 List!42928) Unit!61793)

(assert (=> b!4000992 (= lt!1415083 (lemmaPrefixStaysPrefixWhenAddingToSuffix!712 lt!1415070 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!42928)

(declare-fun lt!1415084 () Unit!61793)

(assert (=> b!4000992 (= lt!1415084 (lemmaPrefixStaysPrefixWhenAddingToSuffix!712 lt!1415070 prefix!494 suffix!1299))))

(declare-fun b!4000993 () Bool)

(declare-fun e!2480910 () Bool)

(assert (=> b!4000993 (= e!2480910 e!2480923)))

(declare-fun res!1625658 () Bool)

(assert (=> b!4000993 (=> res!1625658 e!2480923)))

(declare-fun lt!1415067 () List!42928)

(assert (=> b!4000993 (= res!1625658 (or (not (= lt!1415088 lt!1415067)) (not (= lt!1415088 lt!1415071))))))

(assert (=> b!4000993 (= lt!1415067 lt!1415071)))

(assert (=> b!4000993 (= lt!1415071 (++!11194 lt!1415070 lt!1415074))))

(declare-fun lt!1415065 () List!42928)

(assert (=> b!4000993 (= lt!1415067 (++!11194 lt!1415065 suffix!1299))))

(declare-fun lt!1415072 () List!42928)

(assert (=> b!4000993 (= lt!1415074 (++!11194 lt!1415072 suffix!1299))))

(declare-fun lt!1415089 () Unit!61793)

(declare-fun lemmaConcatAssociativity!2514 (List!42928 List!42928 List!42928) Unit!61793)

(assert (=> b!4000993 (= lt!1415089 (lemmaConcatAssociativity!2514 lt!1415070 lt!1415072 suffix!1299))))

(declare-fun b!4000994 () Bool)

(declare-fun e!2480926 () Bool)

(declare-fun e!2480916 () Bool)

(assert (=> b!4000994 (= e!2480926 e!2480916)))

(declare-fun res!1625650 () Bool)

(assert (=> b!4000994 (=> (not res!1625650) (not e!2480916))))

(declare-fun lt!1415066 () Int)

(assert (=> b!4000994 (= res!1625650 (>= lt!1415066 lt!1415059))))

(declare-fun size!32008 (List!42928) Int)

(assert (=> b!4000994 (= lt!1415059 (size!32008 lt!1415070))))

(assert (=> b!4000994 (= lt!1415066 (size!32008 prefix!494))))

(declare-fun list!15896 (BalanceConc!25600) List!42928)

(declare-fun charsOf!4608 (Token!12722) BalanceConc!25600)

(assert (=> b!4000994 (= lt!1415070 (list!15896 (charsOf!4608 token!484)))))

(declare-fun e!2480915 () Bool)

(declare-fun tp!1217566 () Bool)

(declare-fun b!4000995 () Bool)

(declare-fun e!2480920 () Bool)

(declare-fun inv!57160 (String!48828) Bool)

(declare-fun inv!57163 (TokenValueInjection!13472) Bool)

(assert (=> b!4000995 (= e!2480920 (and tp!1217566 (inv!57160 (tag!7652 (h!48226 rules!2999))) (inv!57163 (transformation!6792 (h!48226 rules!2999))) e!2480915))))

(declare-fun b!4000996 () Bool)

(declare-fun e!2480913 () Bool)

(assert (=> b!4000996 (= e!2480913 e!2480910)))

(declare-fun res!1625643 () Bool)

(assert (=> b!4000996 (=> res!1625643 e!2480910)))

(assert (=> b!4000996 (= res!1625643 (not (= lt!1415065 prefix!494)))))

(assert (=> b!4000996 (= lt!1415065 (++!11194 lt!1415070 lt!1415072))))

(assert (=> b!4000996 (= lt!1415072 (getSuffix!2310 prefix!494 lt!1415070))))

(assert (=> b!4000996 (isPrefix!3879 lt!1415070 prefix!494)))

(declare-fun lt!1415058 () Unit!61793)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!457 (List!42928 List!42928 List!42928) Unit!61793)

(assert (=> b!4000996 (= lt!1415058 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!457 prefix!494 lt!1415070 lt!1415088))))

(declare-fun b!4000997 () Bool)

(declare-fun res!1625644 () Bool)

(assert (=> b!4000997 (=> (not res!1625644) (not e!2480926))))

(assert (=> b!4000997 (= res!1625644 (isPrefix!3879 newSuffix!27 suffix!1299))))

(assert (=> b!4000998 (= e!2480915 (and tp!1217576 tp!1217565))))

(declare-fun e!2480927 () Bool)

(assert (=> b!4000999 (= e!2480927 (and tp!1217567 tp!1217571))))

(declare-fun b!4001000 () Bool)

(declare-fun tp!1217568 () Bool)

(assert (=> b!4001000 (= e!2480922 (and tp!1217568 (inv!57160 (tag!7652 (rule!9824 token!484))) (inv!57163 (transformation!6792 (rule!9824 token!484))) e!2480927))))

(declare-fun b!4001001 () Bool)

(declare-fun e!2480914 () Bool)

(declare-fun tp_is_empty!20365 () Bool)

(declare-fun tp!1217570 () Bool)

(assert (=> b!4001001 (= e!2480914 (and tp_is_empty!20365 tp!1217570))))

(declare-fun b!4000990 () Bool)

(declare-fun e!2480925 () Bool)

(assert (=> b!4000990 (= e!2480916 e!2480925)))

(declare-fun res!1625648 () Bool)

(assert (=> b!4000990 (=> (not res!1625648) (not e!2480925))))

(declare-fun lt!1415062 () List!42928)

(assert (=> b!4000990 (= res!1625648 (= lt!1415062 lt!1415086))))

(assert (=> b!4000990 (= lt!1415086 (++!11194 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42928)

(assert (=> b!4000990 (= lt!1415062 (++!11194 lt!1415070 newSuffixResult!27))))

(declare-fun res!1625647 () Bool)

(assert (=> start!376512 (=> (not res!1625647) (not e!2480926))))

(get-info :version)

(assert (=> start!376512 (= res!1625647 ((_ is Lexer!6379) thiss!21717))))

(assert (=> start!376512 e!2480926))

(declare-fun e!2480933 () Bool)

(assert (=> start!376512 e!2480933))

(declare-fun inv!57164 (Token!12722) Bool)

(assert (=> start!376512 (and (inv!57164 token!484) e!2480931)))

(declare-fun e!2480911 () Bool)

(assert (=> start!376512 e!2480911))

(assert (=> start!376512 e!2480914))

(declare-fun e!2480917 () Bool)

(assert (=> start!376512 e!2480917))

(assert (=> start!376512 true))

(declare-fun e!2480909 () Bool)

(assert (=> start!376512 e!2480909))

(declare-fun e!2480918 () Bool)

(assert (=> start!376512 e!2480918))

(declare-fun b!4001002 () Bool)

(declare-fun tp!1217564 () Bool)

(assert (=> b!4001002 (= e!2480909 (and e!2480920 tp!1217564))))

(declare-fun b!4001003 () Bool)

(declare-fun tp!1217569 () Bool)

(assert (=> b!4001003 (= e!2480918 (and tp_is_empty!20365 tp!1217569))))

(declare-fun b!4001004 () Bool)

(declare-fun res!1625646 () Bool)

(assert (=> b!4001004 (=> (not res!1625646) (not e!2480926))))

(declare-fun isEmpty!25580 (List!42930) Bool)

(assert (=> b!4001004 (= res!1625646 (not (isEmpty!25580 rules!2999)))))

(declare-fun b!4001005 () Bool)

(assert (=> b!4001005 (= e!2480934 e!2480913)))

(declare-fun res!1625641 () Bool)

(assert (=> b!4001005 (=> res!1625641 e!2480913)))

(assert (=> b!4001005 (= res!1625641 (not (isPrefix!3879 lt!1415070 lt!1415088)))))

(assert (=> b!4001005 (isPrefix!3879 prefix!494 lt!1415088)))

(declare-fun lt!1415078 () Unit!61793)

(assert (=> b!4001005 (= lt!1415078 (lemmaConcatTwoListThenFirstIsPrefix!2722 prefix!494 suffix!1299))))

(assert (=> b!4001005 (isPrefix!3879 lt!1415070 lt!1415060)))

(declare-fun lt!1415080 () Unit!61793)

(assert (=> b!4001005 (= lt!1415080 (lemmaConcatTwoListThenFirstIsPrefix!2722 lt!1415070 suffixResult!105))))

(declare-fun b!4001006 () Bool)

(assert (=> b!4001006 (= e!2480932 true)))

(declare-fun lt!1415076 () Option!9206)

(declare-fun maxPrefix!3679 (LexerInterface!6381 List!42930 List!42928) Option!9206)

(assert (=> b!4001006 (= lt!1415076 (maxPrefix!3679 thiss!21717 rules!2999 lt!1415086))))

(declare-fun lt!1415081 () tuple2!41982)

(assert (=> b!4001006 (and (= suffixResult!105 lt!1415090) (= lt!1415081 (tuple2!41983 lt!1415064 lt!1415090)))))

(declare-fun lt!1415068 () Unit!61793)

(assert (=> b!4001006 (= lt!1415068 (lemmaSamePrefixThenSameSuffix!2066 lt!1415070 suffixResult!105 lt!1415070 lt!1415090 lt!1415088))))

(assert (=> b!4001006 (isPrefix!3879 lt!1415070 lt!1415079)))

(declare-fun lt!1415069 () Unit!61793)

(assert (=> b!4001006 (= lt!1415069 (lemmaConcatTwoListThenFirstIsPrefix!2722 lt!1415070 lt!1415090))))

(declare-fun b!4001007 () Bool)

(declare-fun res!1625656 () Bool)

(assert (=> b!4001007 (=> (not res!1625656) (not e!2480926))))

(assert (=> b!4001007 (= res!1625656 (>= (size!32008 suffix!1299) (size!32008 newSuffix!27)))))

(declare-fun b!4001008 () Bool)

(declare-fun tp!1217574 () Bool)

(assert (=> b!4001008 (= e!2480917 (and tp_is_empty!20365 tp!1217574))))

(declare-fun b!4001009 () Bool)

(declare-fun tp!1217572 () Bool)

(assert (=> b!4001009 (= e!2480911 (and tp_is_empty!20365 tp!1217572))))

(declare-fun b!4001010 () Bool)

(assert (=> b!4001010 (= e!2480925 e!2480919)))

(declare-fun res!1625654 () Bool)

(assert (=> b!4001010 (=> (not res!1625654) (not e!2480919))))

(assert (=> b!4001010 (= res!1625654 (= (maxPrefix!3679 thiss!21717 rules!2999 lt!1415088) lt!1415075))))

(assert (=> b!4001010 (= lt!1415075 (Some!9205 lt!1415081))))

(assert (=> b!4001010 (= lt!1415081 (tuple2!41983 token!484 suffixResult!105))))

(assert (=> b!4001010 (= lt!1415088 (++!11194 prefix!494 suffix!1299))))

(declare-fun b!4001011 () Bool)

(declare-fun tp!1217575 () Bool)

(assert (=> b!4001011 (= e!2480933 (and tp_is_empty!20365 tp!1217575))))

(declare-fun b!4001012 () Bool)

(declare-fun res!1625657 () Bool)

(assert (=> b!4001012 (=> (not res!1625657) (not e!2480929))))

(assert (=> b!4001012 (= res!1625657 (= (value!214206 token!484) lt!1415091))))

(declare-fun b!4001013 () Bool)

(declare-fun res!1625645 () Bool)

(assert (=> b!4001013 (=> (not res!1625645) (not e!2480929))))

(assert (=> b!4001013 (= res!1625645 (= (size!32007 token!484) (size!32008 (originalCharacters!7392 token!484))))))

(declare-fun b!4001014 () Bool)

(declare-fun res!1625642 () Bool)

(assert (=> b!4001014 (=> (not res!1625642) (not e!2480926))))

(declare-fun rulesInvariant!5724 (LexerInterface!6381 List!42930) Bool)

(assert (=> b!4001014 (= res!1625642 (rulesInvariant!5724 thiss!21717 rules!2999))))

(assert (= (and start!376512 res!1625647) b!4001004))

(assert (= (and b!4001004 res!1625646) b!4001014))

(assert (= (and b!4001014 res!1625642) b!4001007))

(assert (= (and b!4001007 res!1625656) b!4000997))

(assert (= (and b!4000997 res!1625644) b!4000994))

(assert (= (and b!4000994 res!1625650) b!4000990))

(assert (= (and b!4000990 res!1625648) b!4001010))

(assert (= (and b!4001010 res!1625654) b!4000989))

(assert (= (and b!4000989 (not res!1625651)) b!4001005))

(assert (= (and b!4001005 (not res!1625641)) b!4000996))

(assert (= (and b!4000996 (not res!1625643)) b!4000993))

(assert (= (and b!4000993 (not res!1625658)) b!4000991))

(assert (= (and b!4000991 (not res!1625655)) b!4000992))

(assert (= (and b!4000992 (not res!1625652)) b!4000986))

(assert (= (and b!4000986 res!1625653) b!4001012))

(assert (= (and b!4001012 res!1625657) b!4001013))

(assert (= (and b!4001013 res!1625645) b!4000988))

(assert (= (and b!4000986 (not res!1625649)) b!4001006))

(assert (= (and start!376512 ((_ is Cons!42804) prefix!494)) b!4001011))

(assert (= b!4001000 b!4000999))

(assert (= b!4000987 b!4001000))

(assert (= start!376512 b!4000987))

(assert (= (and start!376512 ((_ is Cons!42804) suffixResult!105)) b!4001009))

(assert (= (and start!376512 ((_ is Cons!42804) suffix!1299)) b!4001001))

(assert (= (and start!376512 ((_ is Cons!42804) newSuffix!27)) b!4001008))

(assert (= b!4000995 b!4000998))

(assert (= b!4001002 b!4000995))

(assert (= (and start!376512 ((_ is Cons!42806) rules!2999)) b!4001002))

(assert (= (and start!376512 ((_ is Cons!42804) newSuffixResult!27)) b!4001003))

(declare-fun m!4583425 () Bool)

(assert (=> b!4000986 m!4583425))

(declare-fun m!4583427 () Bool)

(assert (=> b!4000986 m!4583427))

(declare-fun m!4583429 () Bool)

(assert (=> b!4000986 m!4583429))

(declare-fun m!4583431 () Bool)

(assert (=> b!4000986 m!4583431))

(declare-fun m!4583433 () Bool)

(assert (=> b!4000993 m!4583433))

(declare-fun m!4583435 () Bool)

(assert (=> b!4000993 m!4583435))

(declare-fun m!4583437 () Bool)

(assert (=> b!4000993 m!4583437))

(declare-fun m!4583439 () Bool)

(assert (=> b!4000993 m!4583439))

(declare-fun m!4583441 () Bool)

(assert (=> b!4001004 m!4583441))

(declare-fun m!4583443 () Bool)

(assert (=> b!4000992 m!4583443))

(declare-fun m!4583445 () Bool)

(assert (=> b!4000992 m!4583445))

(declare-fun m!4583447 () Bool)

(assert (=> b!4000992 m!4583447))

(declare-fun m!4583449 () Bool)

(assert (=> b!4000992 m!4583449))

(declare-fun m!4583451 () Bool)

(assert (=> b!4000995 m!4583451))

(declare-fun m!4583453 () Bool)

(assert (=> b!4000995 m!4583453))

(declare-fun m!4583455 () Bool)

(assert (=> b!4001010 m!4583455))

(declare-fun m!4583457 () Bool)

(assert (=> b!4001010 m!4583457))

(declare-fun m!4583459 () Bool)

(assert (=> b!4000987 m!4583459))

(declare-fun m!4583461 () Bool)

(assert (=> b!4001014 m!4583461))

(declare-fun m!4583463 () Bool)

(assert (=> b!4000989 m!4583463))

(declare-fun m!4583465 () Bool)

(assert (=> b!4000989 m!4583465))

(declare-fun m!4583467 () Bool)

(assert (=> b!4000989 m!4583467))

(declare-fun m!4583469 () Bool)

(assert (=> b!4000989 m!4583469))

(declare-fun m!4583471 () Bool)

(assert (=> b!4000997 m!4583471))

(declare-fun m!4583473 () Bool)

(assert (=> b!4001005 m!4583473))

(declare-fun m!4583475 () Bool)

(assert (=> b!4001005 m!4583475))

(declare-fun m!4583477 () Bool)

(assert (=> b!4001005 m!4583477))

(declare-fun m!4583479 () Bool)

(assert (=> b!4001005 m!4583479))

(declare-fun m!4583481 () Bool)

(assert (=> b!4001005 m!4583481))

(declare-fun m!4583483 () Bool)

(assert (=> b!4001006 m!4583483))

(declare-fun m!4583485 () Bool)

(assert (=> b!4001006 m!4583485))

(declare-fun m!4583487 () Bool)

(assert (=> b!4001006 m!4583487))

(declare-fun m!4583489 () Bool)

(assert (=> b!4001006 m!4583489))

(declare-fun m!4583491 () Bool)

(assert (=> b!4000991 m!4583491))

(declare-fun m!4583493 () Bool)

(assert (=> b!4000991 m!4583493))

(declare-fun m!4583495 () Bool)

(assert (=> b!4000991 m!4583495))

(declare-fun m!4583497 () Bool)

(assert (=> b!4000991 m!4583497))

(assert (=> b!4000991 m!4583495))

(declare-fun m!4583499 () Bool)

(assert (=> b!4000991 m!4583499))

(declare-fun m!4583501 () Bool)

(assert (=> b!4000991 m!4583501))

(declare-fun m!4583503 () Bool)

(assert (=> b!4000991 m!4583503))

(declare-fun m!4583505 () Bool)

(assert (=> b!4001007 m!4583505))

(declare-fun m!4583507 () Bool)

(assert (=> b!4001007 m!4583507))

(declare-fun m!4583509 () Bool)

(assert (=> b!4000996 m!4583509))

(declare-fun m!4583511 () Bool)

(assert (=> b!4000996 m!4583511))

(declare-fun m!4583513 () Bool)

(assert (=> b!4000996 m!4583513))

(declare-fun m!4583515 () Bool)

(assert (=> b!4000996 m!4583515))

(declare-fun m!4583517 () Bool)

(assert (=> b!4000990 m!4583517))

(declare-fun m!4583519 () Bool)

(assert (=> b!4000990 m!4583519))

(declare-fun m!4583521 () Bool)

(assert (=> b!4001000 m!4583521))

(declare-fun m!4583523 () Bool)

(assert (=> b!4001000 m!4583523))

(declare-fun m!4583525 () Bool)

(assert (=> b!4001013 m!4583525))

(declare-fun m!4583527 () Bool)

(assert (=> start!376512 m!4583527))

(declare-fun m!4583529 () Bool)

(assert (=> b!4000994 m!4583529))

(declare-fun m!4583531 () Bool)

(assert (=> b!4000994 m!4583531))

(declare-fun m!4583533 () Bool)

(assert (=> b!4000994 m!4583533))

(assert (=> b!4000994 m!4583533))

(declare-fun m!4583535 () Bool)

(assert (=> b!4000994 m!4583535))

(check-sat (not b!4001009) (not b!4001007) (not b_next!111893) (not b_next!111891) (not b!4001008) tp_is_empty!20365 b_and!307219 (not b!4001002) (not b!4001001) (not b!4001014) (not b!4001000) b_and!307221 (not b!4001005) (not b!4001006) (not b!4001003) (not b!4000990) (not b!4000997) (not b!4001010) (not b!4000994) (not b!4000993) (not b!4000989) (not b!4001011) (not b!4000996) (not b!4000987) (not b!4001013) (not b!4000995) (not start!376512) (not b_next!111889) (not b!4000986) (not b!4000992) (not b!4001004) (not b!4000991) b_and!307217 b_and!307215 (not b_next!111895))
(check-sat (not b_next!111893) (not b_next!111891) (not b_next!111889) b_and!307219 b_and!307221 b_and!307217 b_and!307215 (not b_next!111895))
