; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58400 () Bool)

(assert start!58400)

(declare-fun b!610169 () Bool)

(declare-fun b_free!17373 () Bool)

(declare-fun b_next!17389 () Bool)

(assert (=> b!610169 (= b_free!17373 (not b_next!17389))))

(declare-fun tp!189023 () Bool)

(declare-fun b_and!60415 () Bool)

(assert (=> b!610169 (= tp!189023 b_and!60415)))

(declare-fun b_free!17375 () Bool)

(declare-fun b_next!17391 () Bool)

(assert (=> b!610169 (= b_free!17375 (not b_next!17391))))

(declare-fun tp!189015 () Bool)

(declare-fun b_and!60417 () Bool)

(assert (=> b!610169 (= tp!189015 b_and!60417)))

(declare-fun b!610181 () Bool)

(declare-fun b_free!17377 () Bool)

(declare-fun b_next!17393 () Bool)

(assert (=> b!610181 (= b_free!17377 (not b_next!17393))))

(declare-fun tp!189022 () Bool)

(declare-fun b_and!60419 () Bool)

(assert (=> b!610181 (= tp!189022 b_and!60419)))

(declare-fun b_free!17379 () Bool)

(declare-fun b_next!17395 () Bool)

(assert (=> b!610181 (= b_free!17379 (not b_next!17395))))

(declare-fun tp!189018 () Bool)

(declare-fun b_and!60421 () Bool)

(assert (=> b!610181 (= tp!189018 b_and!60421)))

(declare-fun b!610166 () Bool)

(declare-fun e!369793 () Bool)

(declare-fun e!369775 () Bool)

(assert (=> b!610166 (= e!369793 e!369775)))

(declare-fun res!264970 () Bool)

(assert (=> b!610166 (=> (not res!264970) (not e!369775))))

(declare-datatypes ((C!4028 0))(
  ( (C!4029 (val!2240 Int)) )
))
(declare-datatypes ((List!6105 0))(
  ( (Nil!6095) (Cons!6095 (h!11496 C!4028) (t!80886 List!6105)) )
))
(declare-fun suffix!1342 () List!6105)

(declare-datatypes ((Regex!1553 0))(
  ( (ElementMatch!1553 (c!112863 C!4028)) (Concat!2796 (regOne!3618 Regex!1553) (regTwo!3618 Regex!1553)) (EmptyExpr!1553) (Star!1553 (reg!1882 Regex!1553)) (EmptyLang!1553) (Union!1553 (regOne!3619 Regex!1553) (regTwo!3619 Regex!1553)) )
))
(declare-datatypes ((List!6106 0))(
  ( (Nil!6096) (Cons!6096 (h!11497 (_ BitVec 16)) (t!80887 List!6106)) )
))
(declare-datatypes ((TokenValue!1243 0))(
  ( (FloatLiteralValue!2486 (text!9146 List!6106)) (TokenValueExt!1242 (__x!4384 Int)) (Broken!6215 (value!39582 List!6106)) (Object!1252) (End!1243) (Def!1243) (Underscore!1243) (Match!1243) (Else!1243) (Error!1243) (Case!1243) (If!1243) (Extends!1243) (Abstract!1243) (Class!1243) (Val!1243) (DelimiterValue!2486 (del!1303 List!6106)) (KeywordValue!1249 (value!39583 List!6106)) (CommentValue!2486 (value!39584 List!6106)) (WhitespaceValue!2486 (value!39585 List!6106)) (IndentationValue!1243 (value!39586 List!6106)) (String!7958) (Int32!1243) (Broken!6216 (value!39587 List!6106)) (Boolean!1244) (Unit!11141) (OperatorValue!1246 (op!1303 List!6106)) (IdentifierValue!2486 (value!39588 List!6106)) (IdentifierValue!2487 (value!39589 List!6106)) (WhitespaceValue!2487 (value!39590 List!6106)) (True!2486) (False!2486) (Broken!6217 (value!39591 List!6106)) (Broken!6218 (value!39592 List!6106)) (True!2487) (RightBrace!1243) (RightBracket!1243) (Colon!1243) (Null!1243) (Comma!1243) (LeftBracket!1243) (False!2487) (LeftBrace!1243) (ImaginaryLiteralValue!1243 (text!9147 List!6106)) (StringLiteralValue!3729 (value!39593 List!6106)) (EOFValue!1243 (value!39594 List!6106)) (IdentValue!1243 (value!39595 List!6106)) (DelimiterValue!2487 (value!39596 List!6106)) (DedentValue!1243 (value!39597 List!6106)) (NewLineValue!1243 (value!39598 List!6106)) (IntegerValue!3729 (value!39599 (_ BitVec 32)) (text!9148 List!6106)) (IntegerValue!3730 (value!39600 Int) (text!9149 List!6106)) (Times!1243) (Or!1243) (Equal!1243) (Minus!1243) (Broken!6219 (value!39601 List!6106)) (And!1243) (Div!1243) (LessEqual!1243) (Mod!1243) (Concat!2797) (Not!1243) (Plus!1243) (SpaceValue!1243 (value!39602 List!6106)) (IntegerValue!3731 (value!39603 Int) (text!9150 List!6106)) (StringLiteralValue!3730 (text!9151 List!6106)) (FloatLiteralValue!2487 (text!9152 List!6106)) (BytesLiteralValue!1243 (value!39604 List!6106)) (CommentValue!2487 (value!39605 List!6106)) (StringLiteralValue!3731 (value!39606 List!6106)) (ErrorTokenValue!1243 (msg!1304 List!6106)) )
))
(declare-datatypes ((String!7959 0))(
  ( (String!7960 (value!39607 String)) )
))
(declare-datatypes ((IArray!3873 0))(
  ( (IArray!3874 (innerList!1994 List!6105)) )
))
(declare-datatypes ((Conc!1936 0))(
  ( (Node!1936 (left!4886 Conc!1936) (right!5216 Conc!1936) (csize!4102 Int) (cheight!2147 Int)) (Leaf!3053 (xs!4573 IArray!3873) (csize!4103 Int)) (Empty!1936) )
))
(declare-datatypes ((BalanceConc!3880 0))(
  ( (BalanceConc!3881 (c!112864 Conc!1936)) )
))
(declare-datatypes ((TokenValueInjection!2254 0))(
  ( (TokenValueInjection!2255 (toValue!2126 Int) (toChars!1985 Int)) )
))
(declare-datatypes ((Rule!2238 0))(
  ( (Rule!2239 (regex!1219 Regex!1553) (tag!1481 String!7959) (isSeparator!1219 Bool) (transformation!1219 TokenValueInjection!2254)) )
))
(declare-datatypes ((Token!2174 0))(
  ( (Token!2175 (value!39608 TokenValue!1243) (rule!2009 Rule!2238) (size!4795 Int) (originalCharacters!1258 List!6105)) )
))
(declare-fun token!491 () Token!2174)

(declare-datatypes ((tuple2!6970 0))(
  ( (tuple2!6971 (_1!3749 Token!2174) (_2!3749 List!6105)) )
))
(declare-fun lt!260826 () tuple2!6970)

(assert (=> b!610166 (= res!264970 (and (= (_1!3749 lt!260826) token!491) (= (_2!3749 lt!260826) suffix!1342)))))

(declare-datatypes ((Option!1570 0))(
  ( (None!1569) (Some!1569 (v!16478 tuple2!6970)) )
))
(declare-fun lt!260850 () Option!1570)

(declare-fun get!2343 (Option!1570) tuple2!6970)

(assert (=> b!610166 (= lt!260826 (get!2343 lt!260850))))

(declare-fun b!610167 () Bool)

(declare-fun e!369791 () Bool)

(declare-fun e!369796 () Bool)

(assert (=> b!610167 (= e!369791 e!369796)))

(declare-fun res!264982 () Bool)

(assert (=> b!610167 (=> res!264982 e!369796)))

(declare-datatypes ((List!6107 0))(
  ( (Nil!6097) (Cons!6097 (h!11498 Rule!2238) (t!80888 List!6107)) )
))
(declare-fun rules!3103 () List!6107)

(declare-fun lt!260828 () Option!1570)

(declare-fun contains!1435 (List!6107 Rule!2238) Bool)

(assert (=> b!610167 (= res!264982 (not (contains!1435 rules!3103 (rule!2009 (_1!3749 (v!16478 lt!260828))))))))

(declare-fun lt!260857 () List!6105)

(assert (=> b!610167 (= lt!260857 (_2!3749 (v!16478 lt!260828)))))

(declare-fun b!610168 () Bool)

(declare-fun e!369785 () Bool)

(declare-fun e!369782 () Bool)

(assert (=> b!610168 (= e!369785 e!369782)))

(declare-fun res!264961 () Bool)

(assert (=> b!610168 (=> (not res!264961) (not e!369782))))

(declare-fun lt!260853 () List!6105)

(declare-fun lt!260825 () List!6105)

(assert (=> b!610168 (= res!264961 (= lt!260853 lt!260825))))

(declare-fun lt!260851 () List!6105)

(declare-fun ++!1707 (List!6105 List!6105) List!6105)

(assert (=> b!610168 (= lt!260853 (++!1707 lt!260851 suffix!1342))))

(declare-fun e!369773 () Bool)

(assert (=> b!610169 (= e!369773 (and tp!189023 tp!189015))))

(declare-fun e!369781 () Bool)

(declare-fun lt!260842 () Int)

(declare-fun lt!260858 () TokenValue!1243)

(declare-fun lt!260832 () tuple2!6970)

(declare-fun b!610170 () Bool)

(declare-fun lt!260836 () List!6105)

(assert (=> b!610170 (= e!369781 (and (= (size!4795 (_1!3749 (v!16478 lt!260828))) lt!260842) (= (originalCharacters!1258 (_1!3749 (v!16478 lt!260828))) lt!260836) (= lt!260832 (tuple2!6971 (Token!2175 lt!260858 (rule!2009 (_1!3749 (v!16478 lt!260828))) lt!260842 lt!260836) lt!260857))))))

(declare-fun b!610171 () Bool)

(declare-fun res!264983 () Bool)

(assert (=> b!610171 (=> res!264983 e!369791)))

(declare-fun input!2705 () List!6105)

(declare-fun isPrefix!847 (List!6105 List!6105) Bool)

(assert (=> b!610171 (= res!264983 (not (isPrefix!847 lt!260851 input!2705)))))

(declare-fun b!610173 () Bool)

(declare-fun res!264974 () Bool)

(assert (=> b!610173 (=> res!264974 e!369796)))

(declare-fun matchR!656 (Regex!1553 List!6105) Bool)

(assert (=> b!610173 (= res!264974 (not (matchR!656 (regex!1219 (rule!2009 (_1!3749 (v!16478 lt!260828)))) lt!260836)))))

(declare-fun b!610174 () Bool)

(declare-fun e!369783 () Bool)

(declare-fun tp!189017 () Bool)

(declare-fun e!369789 () Bool)

(declare-fun inv!21 (TokenValue!1243) Bool)

(assert (=> b!610174 (= e!369783 (and (inv!21 (value!39608 token!491)) e!369789 tp!189017))))

(declare-fun b!610175 () Bool)

(declare-fun e!369788 () Bool)

(declare-fun tp!189024 () Bool)

(declare-fun inv!7754 (String!7959) Bool)

(declare-fun inv!7757 (TokenValueInjection!2254) Bool)

(assert (=> b!610175 (= e!369788 (and tp!189024 (inv!7754 (tag!1481 (h!11498 rules!3103))) (inv!7757 (transformation!1219 (h!11498 rules!3103))) e!369773))))

(declare-fun b!610176 () Bool)

(declare-fun res!264972 () Bool)

(assert (=> b!610176 (=> res!264972 e!369791)))

(assert (=> b!610176 (= res!264972 (not (= (++!1707 lt!260836 lt!260857) input!2705)))))

(declare-fun b!610177 () Bool)

(declare-fun res!264986 () Bool)

(declare-fun e!369795 () Bool)

(assert (=> b!610177 (=> res!264986 e!369795)))

(declare-fun lt!260844 () Option!1570)

(assert (=> b!610177 (= res!264986 (not (= lt!260828 lt!260844)))))

(declare-fun b!610178 () Bool)

(assert (=> b!610178 (= e!369795 true)))

(assert (=> b!610178 false))

(declare-datatypes ((LexerInterface!1105 0))(
  ( (LexerInterfaceExt!1102 (__x!4385 Int)) (Lexer!1103) )
))
(declare-fun thiss!22590 () LexerInterface!1105)

(declare-datatypes ((Unit!11142 0))(
  ( (Unit!11143) )
))
(declare-fun lt!260846 () Unit!11142)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!72 (LexerInterface!1105 List!6107 Rule!2238 List!6105 List!6105 List!6105 Rule!2238) Unit!11142)

(assert (=> b!610178 (= lt!260846 (lemmaMaxPrefixOutputsMaxPrefix!72 thiss!22590 rules!3103 (rule!2009 (_1!3749 (v!16478 lt!260828))) lt!260836 input!2705 input!2705 (rule!2009 token!491)))))

(declare-fun b!610179 () Bool)

(assert (=> b!610179 (= e!369775 e!369785)))

(declare-fun res!264978 () Bool)

(assert (=> b!610179 (=> (not res!264978) (not e!369785))))

(get-info :version)

(assert (=> b!610179 (= res!264978 ((_ is Some!1569) lt!260828))))

(declare-fun maxPrefix!803 (LexerInterface!1105 List!6107 List!6105) Option!1570)

(assert (=> b!610179 (= lt!260828 (maxPrefix!803 thiss!22590 rules!3103 input!2705))))

(declare-fun b!610180 () Bool)

(declare-fun res!264964 () Bool)

(assert (=> b!610180 (=> res!264964 e!369791)))

(declare-fun getSuffix!364 (List!6105 List!6105) List!6105)

(assert (=> b!610180 (= res!264964 (not (= (getSuffix!364 input!2705 input!2705) Nil!6095)))))

(declare-fun e!369797 () Bool)

(assert (=> b!610181 (= e!369797 (and tp!189022 tp!189018))))

(declare-fun b!610182 () Bool)

(declare-fun res!264976 () Bool)

(declare-fun e!369798 () Bool)

(assert (=> b!610182 (=> (not res!264976) (not e!369798))))

(declare-fun isEmpty!4401 (List!6105) Bool)

(assert (=> b!610182 (= res!264976 (not (isEmpty!4401 input!2705)))))

(declare-fun b!610183 () Bool)

(declare-fun res!264977 () Bool)

(assert (=> b!610183 (=> res!264977 e!369791)))

(assert (=> b!610183 (= res!264977 (not (contains!1435 rules!3103 (rule!2009 token!491))))))

(declare-fun b!610184 () Bool)

(declare-fun res!264962 () Bool)

(assert (=> b!610184 (=> res!264962 e!369791)))

(declare-fun lt!260839 () List!6105)

(assert (=> b!610184 (= res!264962 (not (= lt!260839 input!2705)))))

(declare-fun b!610185 () Bool)

(declare-fun res!264980 () Bool)

(assert (=> b!610185 (=> (not res!264980) (not e!369798))))

(declare-fun rulesInvariant!1068 (LexerInterface!1105 List!6107) Bool)

(assert (=> b!610185 (= res!264980 (rulesInvariant!1068 thiss!22590 rules!3103))))

(declare-fun b!610186 () Bool)

(declare-fun e!369787 () Bool)

(assert (=> b!610186 (= e!369787 e!369791)))

(declare-fun res!264963 () Bool)

(assert (=> b!610186 (=> res!264963 e!369791)))

(declare-fun lt!260837 () Int)

(assert (=> b!610186 (= res!264963 (>= lt!260842 lt!260837))))

(declare-fun e!369792 () Bool)

(assert (=> b!610186 e!369792))

(declare-fun res!264979 () Bool)

(assert (=> b!610186 (=> (not res!264979) (not e!369792))))

(declare-fun lt!260838 () TokenValue!1243)

(declare-fun maxPrefixOneRule!466 (LexerInterface!1105 Rule!2238 List!6105) Option!1570)

(assert (=> b!610186 (= res!264979 (= (maxPrefixOneRule!466 thiss!22590 (rule!2009 token!491) lt!260825) (Some!1569 (tuple2!6971 (Token!2175 lt!260838 (rule!2009 token!491) lt!260837 lt!260851) suffix!1342))))))

(declare-fun lt!260830 () Unit!11142)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!172 (LexerInterface!1105 List!6107 List!6105 List!6105 List!6105 Rule!2238) Unit!11142)

(assert (=> b!610186 (= lt!260830 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!172 thiss!22590 rules!3103 lt!260851 lt!260825 suffix!1342 (rule!2009 token!491)))))

(declare-fun lt!260845 () Option!1570)

(declare-fun lt!260822 () Token!2174)

(assert (=> b!610186 (= lt!260845 (Some!1569 (tuple2!6971 lt!260822 (_2!3749 (v!16478 lt!260828)))))))

(assert (=> b!610186 (= lt!260845 (maxPrefixOneRule!466 thiss!22590 (rule!2009 (_1!3749 (v!16478 lt!260828))) input!2705))))

(declare-fun lt!260829 () Unit!11142)

(assert (=> b!610186 (= lt!260829 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!172 thiss!22590 rules!3103 lt!260836 input!2705 (_2!3749 (v!16478 lt!260828)) (rule!2009 (_1!3749 (v!16478 lt!260828)))))))

(declare-fun e!369794 () Bool)

(assert (=> b!610186 e!369794))

(declare-fun res!264985 () Bool)

(assert (=> b!610186 (=> (not res!264985) (not e!369794))))

(assert (=> b!610186 (= res!264985 (= (value!39608 token!491) lt!260838))))

(declare-fun apply!1472 (TokenValueInjection!2254 BalanceConc!3880) TokenValue!1243)

(declare-fun seqFromList!1395 (List!6105) BalanceConc!3880)

(assert (=> b!610186 (= lt!260838 (apply!1472 (transformation!1219 (rule!2009 token!491)) (seqFromList!1395 lt!260851)))))

(declare-fun lt!260855 () List!6105)

(assert (=> b!610186 (= suffix!1342 lt!260855)))

(declare-fun lt!260834 () Unit!11142)

(declare-fun lemmaSamePrefixThenSameSuffix!560 (List!6105 List!6105 List!6105 List!6105 List!6105) Unit!11142)

(assert (=> b!610186 (= lt!260834 (lemmaSamePrefixThenSameSuffix!560 lt!260851 suffix!1342 lt!260851 lt!260855 lt!260825))))

(assert (=> b!610186 (= lt!260855 (getSuffix!364 lt!260825 lt!260851))))

(declare-fun b!610187 () Bool)

(assert (=> b!610187 (= e!369794 (and (= (size!4795 token!491) lt!260837) (= (originalCharacters!1258 token!491) lt!260851) (= (tuple2!6971 token!491 suffix!1342) (tuple2!6971 (Token!2175 lt!260838 (rule!2009 token!491) lt!260837 lt!260851) lt!260855))))))

(declare-fun b!610188 () Bool)

(declare-fun res!264967 () Bool)

(assert (=> b!610188 (=> res!264967 e!369791)))

(assert (=> b!610188 (= res!264967 (not (matchR!656 (regex!1219 (rule!2009 token!491)) input!2705)))))

(declare-fun b!610189 () Bool)

(declare-fun res!264984 () Bool)

(assert (=> b!610189 (=> (not res!264984) (not e!369781))))

(declare-fun size!4796 (List!6105) Int)

(assert (=> b!610189 (= res!264984 (= (size!4795 (_1!3749 (v!16478 lt!260828))) (size!4796 (originalCharacters!1258 (_1!3749 (v!16478 lt!260828))))))))

(declare-fun b!610190 () Bool)

(declare-fun e!369776 () Bool)

(declare-fun tp!189019 () Bool)

(assert (=> b!610190 (= e!369776 (and e!369788 tp!189019))))

(declare-fun b!610191 () Bool)

(declare-fun e!369778 () Unit!11142)

(declare-fun Unit!11144 () Unit!11142)

(assert (=> b!610191 (= e!369778 Unit!11144)))

(declare-fun res!264965 () Bool)

(assert (=> start!58400 (=> (not res!264965) (not e!369798))))

(assert (=> start!58400 (= res!264965 ((_ is Lexer!1103) thiss!22590))))

(assert (=> start!58400 e!369798))

(declare-fun e!369779 () Bool)

(assert (=> start!58400 e!369779))

(assert (=> start!58400 e!369776))

(declare-fun inv!7758 (Token!2174) Bool)

(assert (=> start!58400 (and (inv!7758 token!491) e!369783)))

(assert (=> start!58400 true))

(declare-fun e!369777 () Bool)

(assert (=> start!58400 e!369777))

(declare-fun b!610172 () Bool)

(declare-fun tp_is_empty!3461 () Bool)

(declare-fun tp!189020 () Bool)

(assert (=> b!610172 (= e!369777 (and tp_is_empty!3461 tp!189020))))

(declare-fun b!610192 () Bool)

(declare-fun e!369790 () Bool)

(assert (=> b!610192 (= e!369792 e!369790)))

(declare-fun res!264960 () Bool)

(assert (=> b!610192 (=> res!264960 e!369790)))

(assert (=> b!610192 (= res!264960 (>= lt!260842 lt!260837))))

(declare-fun b!610193 () Bool)

(assert (=> b!610193 (= e!369782 (not e!369787))))

(declare-fun res!264969 () Bool)

(assert (=> b!610193 (=> res!264969 e!369787)))

(assert (=> b!610193 (= res!264969 (not (isPrefix!847 input!2705 lt!260853)))))

(assert (=> b!610193 (isPrefix!847 lt!260851 lt!260853)))

(declare-fun lt!260856 () Unit!11142)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!692 (List!6105 List!6105) Unit!11142)

(assert (=> b!610193 (= lt!260856 (lemmaConcatTwoListThenFirstIsPrefix!692 lt!260851 suffix!1342))))

(assert (=> b!610193 (isPrefix!847 input!2705 lt!260825)))

(declare-fun lt!260827 () Unit!11142)

(assert (=> b!610193 (= lt!260827 (lemmaConcatTwoListThenFirstIsPrefix!692 input!2705 suffix!1342))))

(assert (=> b!610193 (= lt!260822 (Token!2175 lt!260858 (rule!2009 (_1!3749 (v!16478 lt!260828))) lt!260842 lt!260836))))

(assert (=> b!610193 e!369781))

(declare-fun res!264975 () Bool)

(assert (=> b!610193 (=> (not res!264975) (not e!369781))))

(assert (=> b!610193 (= res!264975 (= (value!39608 (_1!3749 (v!16478 lt!260828))) lt!260858))))

(declare-fun lt!260831 () BalanceConc!3880)

(assert (=> b!610193 (= lt!260858 (apply!1472 (transformation!1219 (rule!2009 (_1!3749 (v!16478 lt!260828)))) lt!260831))))

(assert (=> b!610193 (= lt!260831 (seqFromList!1395 lt!260836))))

(declare-fun lt!260847 () Unit!11142)

(declare-fun lemmaInv!327 (TokenValueInjection!2254) Unit!11142)

(assert (=> b!610193 (= lt!260847 (lemmaInv!327 (transformation!1219 (rule!2009 token!491))))))

(declare-fun lt!260824 () Unit!11142)

(assert (=> b!610193 (= lt!260824 (lemmaInv!327 (transformation!1219 (rule!2009 (_1!3749 (v!16478 lt!260828))))))))

(declare-fun ruleValid!417 (LexerInterface!1105 Rule!2238) Bool)

(assert (=> b!610193 (ruleValid!417 thiss!22590 (rule!2009 token!491))))

(declare-fun lt!260849 () Unit!11142)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!264 (LexerInterface!1105 Rule!2238 List!6107) Unit!11142)

(assert (=> b!610193 (= lt!260849 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!264 thiss!22590 (rule!2009 token!491) rules!3103))))

(assert (=> b!610193 (ruleValid!417 thiss!22590 (rule!2009 (_1!3749 (v!16478 lt!260828))))))

(declare-fun lt!260841 () Unit!11142)

(assert (=> b!610193 (= lt!260841 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!264 thiss!22590 (rule!2009 (_1!3749 (v!16478 lt!260828))) rules!3103))))

(assert (=> b!610193 (isPrefix!847 input!2705 input!2705)))

(declare-fun lt!260843 () Unit!11142)

(declare-fun lemmaIsPrefixRefl!583 (List!6105 List!6105) Unit!11142)

(assert (=> b!610193 (= lt!260843 (lemmaIsPrefixRefl!583 input!2705 input!2705))))

(assert (=> b!610193 (= (_2!3749 (v!16478 lt!260828)) lt!260857)))

(declare-fun lt!260848 () Unit!11142)

(assert (=> b!610193 (= lt!260848 (lemmaSamePrefixThenSameSuffix!560 lt!260836 (_2!3749 (v!16478 lt!260828)) lt!260836 lt!260857 input!2705))))

(assert (=> b!610193 (= lt!260857 (getSuffix!364 input!2705 lt!260836))))

(assert (=> b!610193 (isPrefix!847 lt!260836 lt!260839)))

(assert (=> b!610193 (= lt!260839 (++!1707 lt!260836 (_2!3749 (v!16478 lt!260828))))))

(declare-fun lt!260840 () Unit!11142)

(assert (=> b!610193 (= lt!260840 (lemmaConcatTwoListThenFirstIsPrefix!692 lt!260836 (_2!3749 (v!16478 lt!260828))))))

(declare-fun lt!260823 () Unit!11142)

(declare-fun lemmaCharactersSize!278 (Token!2174) Unit!11142)

(assert (=> b!610193 (= lt!260823 (lemmaCharactersSize!278 token!491))))

(declare-fun lt!260854 () Unit!11142)

(assert (=> b!610193 (= lt!260854 (lemmaCharactersSize!278 (_1!3749 (v!16478 lt!260828))))))

(declare-fun lt!260833 () Unit!11142)

(assert (=> b!610193 (= lt!260833 e!369778)))

(declare-fun c!112862 () Bool)

(assert (=> b!610193 (= c!112862 (> lt!260842 lt!260837))))

(assert (=> b!610193 (= lt!260837 (size!4796 lt!260851))))

(assert (=> b!610193 (= lt!260842 (size!4796 lt!260836))))

(declare-fun list!2566 (BalanceConc!3880) List!6105)

(declare-fun charsOf!848 (Token!2174) BalanceConc!3880)

(assert (=> b!610193 (= lt!260836 (list!2566 (charsOf!848 (_1!3749 (v!16478 lt!260828)))))))

(assert (=> b!610193 (= lt!260828 (Some!1569 lt!260832))))

(assert (=> b!610193 (= lt!260832 (tuple2!6971 (_1!3749 (v!16478 lt!260828)) (_2!3749 (v!16478 lt!260828))))))

(declare-fun lt!260852 () Unit!11142)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!292 (List!6105 List!6105 List!6105 List!6105) Unit!11142)

(assert (=> b!610193 (= lt!260852 (lemmaConcatSameAndSameSizesThenSameLists!292 lt!260851 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!610194 () Bool)

(declare-fun res!264966 () Bool)

(assert (=> b!610194 (=> (not res!264966) (not e!369798))))

(declare-fun isEmpty!4402 (List!6107) Bool)

(assert (=> b!610194 (= res!264966 (not (isEmpty!4402 rules!3103)))))

(declare-fun b!610195 () Bool)

(declare-fun e!369780 () Bool)

(assert (=> b!610195 (= e!369798 e!369780)))

(declare-fun res!264971 () Bool)

(assert (=> b!610195 (=> (not res!264971) (not e!369780))))

(assert (=> b!610195 (= res!264971 (= lt!260851 input!2705))))

(assert (=> b!610195 (= lt!260851 (list!2566 (charsOf!848 token!491)))))

(declare-fun b!610196 () Bool)

(declare-fun res!264968 () Bool)

(assert (=> b!610196 (=> res!264968 e!369791)))

(assert (=> b!610196 (= res!264968 (not (isPrefix!847 lt!260836 input!2705)))))

(declare-fun b!610197 () Bool)

(declare-fun tp!189021 () Bool)

(assert (=> b!610197 (= e!369789 (and tp!189021 (inv!7754 (tag!1481 (rule!2009 token!491))) (inv!7757 (transformation!1219 (rule!2009 token!491))) e!369797))))

(declare-fun b!610198 () Bool)

(declare-fun res!264973 () Bool)

(assert (=> b!610198 (=> (not res!264973) (not e!369794))))

(assert (=> b!610198 (= res!264973 (= (size!4795 token!491) (size!4796 (originalCharacters!1258 token!491))))))

(declare-fun b!610199 () Bool)

(declare-fun tp!189016 () Bool)

(assert (=> b!610199 (= e!369779 (and tp_is_empty!3461 tp!189016))))

(declare-fun b!610200 () Bool)

(assert (=> b!610200 (= e!369780 e!369793)))

(declare-fun res!264988 () Bool)

(assert (=> b!610200 (=> (not res!264988) (not e!369793))))

(declare-fun isDefined!1381 (Option!1570) Bool)

(assert (=> b!610200 (= res!264988 (isDefined!1381 lt!260850))))

(assert (=> b!610200 (= lt!260850 (maxPrefix!803 thiss!22590 rules!3103 lt!260825))))

(assert (=> b!610200 (= lt!260825 (++!1707 input!2705 suffix!1342))))

(declare-fun b!610201 () Bool)

(declare-fun e!369799 () Bool)

(assert (=> b!610201 (= e!369799 (= (_1!3749 (get!2343 lt!260828)) (_1!3749 (v!16478 lt!260828))))))

(declare-fun b!610202 () Bool)

(declare-fun Unit!11145 () Unit!11142)

(assert (=> b!610202 (= e!369778 Unit!11145)))

(assert (=> b!610202 false))

(declare-fun b!610203 () Bool)

(assert (=> b!610203 (= e!369790 e!369799)))

(declare-fun res!264981 () Bool)

(assert (=> b!610203 (=> (not res!264981) (not e!369799))))

(assert (=> b!610203 (= res!264981 (isDefined!1381 lt!260828))))

(declare-fun b!610204 () Bool)

(declare-fun res!264987 () Bool)

(assert (=> b!610204 (=> res!264987 e!369795)))

(assert (=> b!610204 (= res!264987 (<= (size!4796 input!2705) lt!260842))))

(declare-fun b!610205 () Bool)

(assert (=> b!610205 (= e!369796 e!369795)))

(declare-fun res!264959 () Bool)

(assert (=> b!610205 (=> res!264959 e!369795)))

(assert (=> b!610205 (= res!264959 (not (= lt!260845 lt!260844)))))

(assert (=> b!610205 (= lt!260844 (Some!1569 (tuple2!6971 lt!260822 lt!260857)))))

(declare-fun lt!260835 () Unit!11142)

(declare-fun lemmaSemiInverse!249 (TokenValueInjection!2254 BalanceConc!3880) Unit!11142)

(assert (=> b!610205 (= lt!260835 (lemmaSemiInverse!249 (transformation!1219 (rule!2009 (_1!3749 (v!16478 lt!260828)))) lt!260831))))

(assert (= (and start!58400 res!264965) b!610194))

(assert (= (and b!610194 res!264966) b!610185))

(assert (= (and b!610185 res!264980) b!610182))

(assert (= (and b!610182 res!264976) b!610195))

(assert (= (and b!610195 res!264971) b!610200))

(assert (= (and b!610200 res!264988) b!610166))

(assert (= (and b!610166 res!264970) b!610179))

(assert (= (and b!610179 res!264978) b!610168))

(assert (= (and b!610168 res!264961) b!610193))

(assert (= (and b!610193 c!112862) b!610202))

(assert (= (and b!610193 (not c!112862)) b!610191))

(assert (= (and b!610193 res!264975) b!610189))

(assert (= (and b!610189 res!264984) b!610170))

(assert (= (and b!610193 (not res!264969)) b!610186))

(assert (= (and b!610186 res!264985) b!610198))

(assert (= (and b!610198 res!264973) b!610187))

(assert (= (and b!610186 res!264979) b!610192))

(assert (= (and b!610192 (not res!264960)) b!610203))

(assert (= (and b!610203 res!264981) b!610201))

(assert (= (and b!610186 (not res!264963)) b!610183))

(assert (= (and b!610183 (not res!264977)) b!610188))

(assert (= (and b!610188 (not res!264967)) b!610171))

(assert (= (and b!610171 (not res!264983)) b!610180))

(assert (= (and b!610180 (not res!264964)) b!610184))

(assert (= (and b!610184 (not res!264962)) b!610196))

(assert (= (and b!610196 (not res!264968)) b!610176))

(assert (= (and b!610176 (not res!264972)) b!610167))

(assert (= (and b!610167 (not res!264982)) b!610173))

(assert (= (and b!610173 (not res!264974)) b!610205))

(assert (= (and b!610205 (not res!264959)) b!610204))

(assert (= (and b!610204 (not res!264987)) b!610177))

(assert (= (and b!610177 (not res!264986)) b!610178))

(assert (= (and start!58400 ((_ is Cons!6095) suffix!1342)) b!610199))

(assert (= b!610175 b!610169))

(assert (= b!610190 b!610175))

(assert (= (and start!58400 ((_ is Cons!6097) rules!3103)) b!610190))

(assert (= b!610197 b!610181))

(assert (= b!610174 b!610197))

(assert (= start!58400 b!610174))

(assert (= (and start!58400 ((_ is Cons!6095) input!2705)) b!610172))

(declare-fun m!877731 () Bool)

(assert (=> b!610168 m!877731))

(declare-fun m!877733 () Bool)

(assert (=> b!610182 m!877733))

(declare-fun m!877735 () Bool)

(assert (=> b!610173 m!877735))

(declare-fun m!877737 () Bool)

(assert (=> b!610174 m!877737))

(declare-fun m!877739 () Bool)

(assert (=> b!610175 m!877739))

(declare-fun m!877741 () Bool)

(assert (=> b!610175 m!877741))

(declare-fun m!877743 () Bool)

(assert (=> b!610200 m!877743))

(declare-fun m!877745 () Bool)

(assert (=> b!610200 m!877745))

(declare-fun m!877747 () Bool)

(assert (=> b!610200 m!877747))

(declare-fun m!877749 () Bool)

(assert (=> b!610198 m!877749))

(declare-fun m!877751 () Bool)

(assert (=> b!610171 m!877751))

(declare-fun m!877753 () Bool)

(assert (=> b!610195 m!877753))

(assert (=> b!610195 m!877753))

(declare-fun m!877755 () Bool)

(assert (=> b!610195 m!877755))

(declare-fun m!877757 () Bool)

(assert (=> b!610188 m!877757))

(declare-fun m!877759 () Bool)

(assert (=> b!610203 m!877759))

(declare-fun m!877761 () Bool)

(assert (=> b!610194 m!877761))

(declare-fun m!877763 () Bool)

(assert (=> b!610179 m!877763))

(declare-fun m!877765 () Bool)

(assert (=> b!610178 m!877765))

(declare-fun m!877767 () Bool)

(assert (=> b!610193 m!877767))

(declare-fun m!877769 () Bool)

(assert (=> b!610193 m!877769))

(declare-fun m!877771 () Bool)

(assert (=> b!610193 m!877771))

(declare-fun m!877773 () Bool)

(assert (=> b!610193 m!877773))

(declare-fun m!877775 () Bool)

(assert (=> b!610193 m!877775))

(declare-fun m!877777 () Bool)

(assert (=> b!610193 m!877777))

(declare-fun m!877779 () Bool)

(assert (=> b!610193 m!877779))

(declare-fun m!877781 () Bool)

(assert (=> b!610193 m!877781))

(declare-fun m!877783 () Bool)

(assert (=> b!610193 m!877783))

(declare-fun m!877785 () Bool)

(assert (=> b!610193 m!877785))

(declare-fun m!877787 () Bool)

(assert (=> b!610193 m!877787))

(declare-fun m!877789 () Bool)

(assert (=> b!610193 m!877789))

(declare-fun m!877791 () Bool)

(assert (=> b!610193 m!877791))

(assert (=> b!610193 m!877767))

(declare-fun m!877793 () Bool)

(assert (=> b!610193 m!877793))

(declare-fun m!877795 () Bool)

(assert (=> b!610193 m!877795))

(declare-fun m!877797 () Bool)

(assert (=> b!610193 m!877797))

(declare-fun m!877799 () Bool)

(assert (=> b!610193 m!877799))

(declare-fun m!877801 () Bool)

(assert (=> b!610193 m!877801))

(declare-fun m!877803 () Bool)

(assert (=> b!610193 m!877803))

(declare-fun m!877805 () Bool)

(assert (=> b!610193 m!877805))

(declare-fun m!877807 () Bool)

(assert (=> b!610193 m!877807))

(declare-fun m!877809 () Bool)

(assert (=> b!610193 m!877809))

(declare-fun m!877811 () Bool)

(assert (=> b!610193 m!877811))

(declare-fun m!877813 () Bool)

(assert (=> b!610193 m!877813))

(declare-fun m!877815 () Bool)

(assert (=> b!610193 m!877815))

(declare-fun m!877817 () Bool)

(assert (=> b!610193 m!877817))

(declare-fun m!877819 () Bool)

(assert (=> b!610193 m!877819))

(declare-fun m!877821 () Bool)

(assert (=> b!610196 m!877821))

(declare-fun m!877823 () Bool)

(assert (=> b!610197 m!877823))

(declare-fun m!877825 () Bool)

(assert (=> b!610197 m!877825))

(declare-fun m!877827 () Bool)

(assert (=> b!610186 m!877827))

(declare-fun m!877829 () Bool)

(assert (=> b!610186 m!877829))

(declare-fun m!877831 () Bool)

(assert (=> b!610186 m!877831))

(declare-fun m!877833 () Bool)

(assert (=> b!610186 m!877833))

(declare-fun m!877835 () Bool)

(assert (=> b!610186 m!877835))

(declare-fun m!877837 () Bool)

(assert (=> b!610186 m!877837))

(declare-fun m!877839 () Bool)

(assert (=> b!610186 m!877839))

(assert (=> b!610186 m!877835))

(declare-fun m!877841 () Bool)

(assert (=> b!610186 m!877841))

(declare-fun m!877843 () Bool)

(assert (=> b!610183 m!877843))

(declare-fun m!877845 () Bool)

(assert (=> b!610204 m!877845))

(declare-fun m!877847 () Bool)

(assert (=> b!610205 m!877847))

(declare-fun m!877849 () Bool)

(assert (=> b!610189 m!877849))

(declare-fun m!877851 () Bool)

(assert (=> b!610180 m!877851))

(declare-fun m!877853 () Bool)

(assert (=> b!610166 m!877853))

(declare-fun m!877855 () Bool)

(assert (=> b!610185 m!877855))

(declare-fun m!877857 () Bool)

(assert (=> b!610201 m!877857))

(declare-fun m!877859 () Bool)

(assert (=> b!610176 m!877859))

(declare-fun m!877861 () Bool)

(assert (=> start!58400 m!877861))

(declare-fun m!877863 () Bool)

(assert (=> b!610167 m!877863))

(check-sat (not b!610178) (not b!610193) (not b_next!17395) (not b_next!17393) (not b!610189) b_and!60419 (not b!610190) b_and!60421 (not b_next!17389) (not b!610173) (not b!610172) (not b!610180) (not b!610168) (not b!610171) (not start!58400) (not b!610196) (not b_next!17391) (not b!610199) (not b!610183) (not b!610201) (not b!610179) b_and!60417 (not b!610182) (not b!610188) (not b!610195) (not b!610176) (not b!610198) b_and!60415 (not b!610175) (not b!610185) (not b!610205) (not b!610203) (not b!610194) (not b!610186) (not b!610197) (not b!610167) (not b!610200) (not b!610166) tp_is_empty!3461 (not b!610204) (not b!610174))
(check-sat (not b_next!17391) b_and!60417 (not b_next!17395) (not b_next!17393) b_and!60419 b_and!60415 b_and!60421 (not b_next!17389))
