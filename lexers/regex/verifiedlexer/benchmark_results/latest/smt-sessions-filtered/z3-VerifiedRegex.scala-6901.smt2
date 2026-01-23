; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363812 () Bool)

(assert start!363812)

(declare-fun b!3875072 () Bool)

(declare-fun b_free!104749 () Bool)

(declare-fun b_next!105453 () Bool)

(assert (=> b!3875072 (= b_free!104749 (not b_next!105453))))

(declare-fun tp!1174823 () Bool)

(declare-fun b_and!290547 () Bool)

(assert (=> b!3875072 (= tp!1174823 b_and!290547)))

(declare-fun b_free!104751 () Bool)

(declare-fun b_next!105455 () Bool)

(assert (=> b!3875072 (= b_free!104751 (not b_next!105455))))

(declare-fun tp!1174820 () Bool)

(declare-fun b_and!290549 () Bool)

(assert (=> b!3875072 (= tp!1174820 b_and!290549)))

(declare-fun b!3875053 () Bool)

(declare-fun b_free!104753 () Bool)

(declare-fun b_next!105457 () Bool)

(assert (=> b!3875053 (= b_free!104753 (not b_next!105457))))

(declare-fun tp!1174816 () Bool)

(declare-fun b_and!290551 () Bool)

(assert (=> b!3875053 (= tp!1174816 b_and!290551)))

(declare-fun b_free!104755 () Bool)

(declare-fun b_next!105459 () Bool)

(assert (=> b!3875053 (= b_free!104755 (not b_next!105459))))

(declare-fun tp!1174809 () Bool)

(declare-fun b_and!290553 () Bool)

(assert (=> b!3875053 (= tp!1174809 b_and!290553)))

(declare-fun b!3875068 () Bool)

(declare-fun b_free!104757 () Bool)

(declare-fun b_next!105461 () Bool)

(assert (=> b!3875068 (= b_free!104757 (not b_next!105461))))

(declare-fun tp!1174821 () Bool)

(declare-fun b_and!290555 () Bool)

(assert (=> b!3875068 (= tp!1174821 b_and!290555)))

(declare-fun b_free!104759 () Bool)

(declare-fun b_next!105463 () Bool)

(assert (=> b!3875068 (= b_free!104759 (not b_next!105463))))

(declare-fun tp!1174814 () Bool)

(declare-fun b_and!290557 () Bool)

(assert (=> b!3875068 (= tp!1174814 b_and!290557)))

(declare-fun b!3875029 () Bool)

(declare-fun e!2397186 () Bool)

(assert (=> b!3875029 (= e!2397186 false)))

(declare-fun b!3875030 () Bool)

(declare-datatypes ((Unit!59108 0))(
  ( (Unit!59109) )
))
(declare-fun e!2397174 () Unit!59108)

(declare-fun Unit!59110 () Unit!59108)

(assert (=> b!3875030 (= e!2397174 Unit!59110)))

(declare-fun e!2397199 () Bool)

(declare-fun b!3875031 () Bool)

(declare-datatypes ((List!41300 0))(
  ( (Nil!41176) (Cons!41176 (h!46596 (_ BitVec 16)) (t!314847 List!41300)) )
))
(declare-datatypes ((TokenValue!6620 0))(
  ( (FloatLiteralValue!13240 (text!46785 List!41300)) (TokenValueExt!6619 (__x!25457 Int)) (Broken!33100 (value!202723 List!41300)) (Object!6743) (End!6620) (Def!6620) (Underscore!6620) (Match!6620) (Else!6620) (Error!6620) (Case!6620) (If!6620) (Extends!6620) (Abstract!6620) (Class!6620) (Val!6620) (DelimiterValue!13240 (del!6680 List!41300)) (KeywordValue!6626 (value!202724 List!41300)) (CommentValue!13240 (value!202725 List!41300)) (WhitespaceValue!13240 (value!202726 List!41300)) (IndentationValue!6620 (value!202727 List!41300)) (String!46817) (Int32!6620) (Broken!33101 (value!202728 List!41300)) (Boolean!6621) (Unit!59111) (OperatorValue!6623 (op!6680 List!41300)) (IdentifierValue!13240 (value!202729 List!41300)) (IdentifierValue!13241 (value!202730 List!41300)) (WhitespaceValue!13241 (value!202731 List!41300)) (True!13240) (False!13240) (Broken!33102 (value!202732 List!41300)) (Broken!33103 (value!202733 List!41300)) (True!13241) (RightBrace!6620) (RightBracket!6620) (Colon!6620) (Null!6620) (Comma!6620) (LeftBracket!6620) (False!13241) (LeftBrace!6620) (ImaginaryLiteralValue!6620 (text!46786 List!41300)) (StringLiteralValue!19860 (value!202734 List!41300)) (EOFValue!6620 (value!202735 List!41300)) (IdentValue!6620 (value!202736 List!41300)) (DelimiterValue!13241 (value!202737 List!41300)) (DedentValue!6620 (value!202738 List!41300)) (NewLineValue!6620 (value!202739 List!41300)) (IntegerValue!19860 (value!202740 (_ BitVec 32)) (text!46787 List!41300)) (IntegerValue!19861 (value!202741 Int) (text!46788 List!41300)) (Times!6620) (Or!6620) (Equal!6620) (Minus!6620) (Broken!33104 (value!202742 List!41300)) (And!6620) (Div!6620) (LessEqual!6620) (Mod!6620) (Concat!17915) (Not!6620) (Plus!6620) (SpaceValue!6620 (value!202743 List!41300)) (IntegerValue!19862 (value!202744 Int) (text!46789 List!41300)) (StringLiteralValue!19861 (text!46790 List!41300)) (FloatLiteralValue!13241 (text!46791 List!41300)) (BytesLiteralValue!6620 (value!202745 List!41300)) (CommentValue!13241 (value!202746 List!41300)) (StringLiteralValue!19862 (value!202747 List!41300)) (ErrorTokenValue!6620 (msg!6681 List!41300)) )
))
(declare-datatypes ((C!22776 0))(
  ( (C!22777 (val!13482 Int)) )
))
(declare-datatypes ((Regex!11295 0))(
  ( (ElementMatch!11295 (c!674254 C!22776)) (Concat!17916 (regOne!23102 Regex!11295) (regTwo!23102 Regex!11295)) (EmptyExpr!11295) (Star!11295 (reg!11624 Regex!11295)) (EmptyLang!11295) (Union!11295 (regOne!23103 Regex!11295) (regTwo!23103 Regex!11295)) )
))
(declare-datatypes ((String!46818 0))(
  ( (String!46819 (value!202748 String)) )
))
(declare-datatypes ((List!41301 0))(
  ( (Nil!41177) (Cons!41177 (h!46597 C!22776) (t!314848 List!41301)) )
))
(declare-datatypes ((IArray!25207 0))(
  ( (IArray!25208 (innerList!12661 List!41301)) )
))
(declare-datatypes ((Conc!12601 0))(
  ( (Node!12601 (left!31614 Conc!12601) (right!31944 Conc!12601) (csize!25432 Int) (cheight!12812 Int)) (Leaf!19503 (xs!15907 IArray!25207) (csize!25433 Int)) (Empty!12601) )
))
(declare-datatypes ((BalanceConc!24796 0))(
  ( (BalanceConc!24797 (c!674255 Conc!12601)) )
))
(declare-datatypes ((TokenValueInjection!12668 0))(
  ( (TokenValueInjection!12669 (toValue!8818 Int) (toChars!8677 Int)) )
))
(declare-datatypes ((Rule!12580 0))(
  ( (Rule!12581 (regex!6390 Regex!11295) (tag!7250 String!46818) (isSeparator!6390 Bool) (transformation!6390 TokenValueInjection!12668)) )
))
(declare-datatypes ((Token!11918 0))(
  ( (Token!11919 (value!202749 TokenValue!6620) (rule!9284 Rule!12580) (size!30945 Int) (originalCharacters!6990 List!41301)) )
))
(declare-datatypes ((List!41302 0))(
  ( (Nil!41178) (Cons!41178 (h!46598 Token!11918) (t!314849 List!41302)) )
))
(declare-fun suffixTokens!72 () List!41302)

(declare-fun tp!1174817 () Bool)

(declare-fun e!2397197 () Bool)

(declare-fun inv!55337 (Token!11918) Bool)

(assert (=> b!3875031 (= e!2397199 (and (inv!55337 (h!46598 suffixTokens!72)) e!2397197 tp!1174817))))

(declare-fun b!3875032 () Bool)

(declare-fun e!2397187 () Bool)

(declare-fun e!2397201 () Bool)

(assert (=> b!3875032 (= e!2397187 (not e!2397201))))

(declare-fun res!1569793 () Bool)

(assert (=> b!3875032 (=> res!1569793 e!2397201)))

(declare-fun lt!1350279 () List!41301)

(declare-fun lt!1350300 () List!41301)

(assert (=> b!3875032 (= res!1569793 (not (= lt!1350279 lt!1350300)))))

(declare-datatypes ((tuple2!40406 0))(
  ( (tuple2!40407 (_1!23337 Token!11918) (_2!23337 List!41301)) )
))
(declare-datatypes ((Option!8808 0))(
  ( (None!8807) (Some!8807 (v!39105 tuple2!40406)) )
))
(declare-fun lt!1350281 () Option!8808)

(declare-datatypes ((LexerInterface!5979 0))(
  ( (LexerInterfaceExt!5976 (__x!25458 Int)) (Lexer!5977) )
))
(declare-fun thiss!20629 () LexerInterface!5979)

(declare-datatypes ((List!41303 0))(
  ( (Nil!41179) (Cons!41179 (h!46599 Rule!12580) (t!314850 List!41303)) )
))
(declare-fun rules!2768 () List!41303)

(declare-datatypes ((tuple2!40408 0))(
  ( (tuple2!40409 (_1!23338 List!41302) (_2!23338 List!41301)) )
))
(declare-fun lt!1350304 () tuple2!40408)

(declare-fun lexList!1747 (LexerInterface!5979 List!41303 List!41301) tuple2!40408)

(assert (=> b!3875032 (= lt!1350304 (lexList!1747 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350281))))))

(declare-fun lt!1350316 () List!41301)

(declare-fun lt!1350286 () TokenValue!6620)

(declare-fun lt!1350325 () List!41301)

(declare-fun lt!1350307 () Int)

(assert (=> b!3875032 (and (= (size!30945 (_1!23337 (v!39105 lt!1350281))) lt!1350307) (= (originalCharacters!6990 (_1!23337 (v!39105 lt!1350281))) lt!1350325) (= (v!39105 lt!1350281) (tuple2!40407 (Token!11919 lt!1350286 (rule!9284 (_1!23337 (v!39105 lt!1350281))) lt!1350307 lt!1350325) lt!1350316)))))

(declare-fun size!30946 (List!41301) Int)

(assert (=> b!3875032 (= lt!1350307 (size!30946 lt!1350325))))

(declare-fun e!2397181 () Bool)

(assert (=> b!3875032 e!2397181))

(declare-fun res!1569808 () Bool)

(assert (=> b!3875032 (=> (not res!1569808) (not e!2397181))))

(assert (=> b!3875032 (= res!1569808 (= (value!202749 (_1!23337 (v!39105 lt!1350281))) lt!1350286))))

(declare-fun apply!9633 (TokenValueInjection!12668 BalanceConc!24796) TokenValue!6620)

(declare-fun seqFromList!4661 (List!41301) BalanceConc!24796)

(assert (=> b!3875032 (= lt!1350286 (apply!9633 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) (seqFromList!4661 lt!1350325)))))

(assert (=> b!3875032 (= (_2!23337 (v!39105 lt!1350281)) lt!1350316)))

(declare-fun lt!1350297 () Unit!59108)

(declare-fun lemmaSamePrefixThenSameSuffix!1710 (List!41301 List!41301 List!41301 List!41301 List!41301) Unit!59108)

(assert (=> b!3875032 (= lt!1350297 (lemmaSamePrefixThenSameSuffix!1710 lt!1350325 (_2!23337 (v!39105 lt!1350281)) lt!1350325 lt!1350316 lt!1350300))))

(declare-fun getSuffix!1944 (List!41301 List!41301) List!41301)

(assert (=> b!3875032 (= lt!1350316 (getSuffix!1944 lt!1350300 lt!1350325))))

(declare-fun isPrefix!3489 (List!41301 List!41301) Bool)

(assert (=> b!3875032 (isPrefix!3489 lt!1350325 lt!1350279)))

(declare-fun ++!10537 (List!41301 List!41301) List!41301)

(assert (=> b!3875032 (= lt!1350279 (++!10537 lt!1350325 (_2!23337 (v!39105 lt!1350281))))))

(declare-fun lt!1350306 () Unit!59108)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2352 (List!41301 List!41301) Unit!59108)

(assert (=> b!3875032 (= lt!1350306 (lemmaConcatTwoListThenFirstIsPrefix!2352 lt!1350325 (_2!23337 (v!39105 lt!1350281))))))

(declare-fun list!15316 (BalanceConc!24796) List!41301)

(declare-fun charsOf!4218 (Token!11918) BalanceConc!24796)

(assert (=> b!3875032 (= lt!1350325 (list!15316 (charsOf!4218 (_1!23337 (v!39105 lt!1350281)))))))

(declare-fun ruleValid!2342 (LexerInterface!5979 Rule!12580) Bool)

(assert (=> b!3875032 (ruleValid!2342 thiss!20629 (rule!9284 (_1!23337 (v!39105 lt!1350281))))))

(declare-fun lt!1350289 () Unit!59108)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1422 (LexerInterface!5979 Rule!12580 List!41303) Unit!59108)

(assert (=> b!3875032 (= lt!1350289 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1422 thiss!20629 (rule!9284 (_1!23337 (v!39105 lt!1350281))) rules!2768))))

(declare-fun lt!1350292 () Unit!59108)

(declare-fun lemmaCharactersSize!1051 (Token!11918) Unit!59108)

(assert (=> b!3875032 (= lt!1350292 (lemmaCharactersSize!1051 (_1!23337 (v!39105 lt!1350281))))))

(declare-fun b!3875033 () Bool)

(declare-fun e!2397178 () Bool)

(declare-fun e!2397183 () Bool)

(declare-fun tp!1174824 () Bool)

(assert (=> b!3875033 (= e!2397178 (and e!2397183 tp!1174824))))

(declare-fun b!3875034 () Bool)

(declare-fun e!2397185 () Bool)

(assert (=> b!3875034 (= e!2397201 e!2397185)))

(declare-fun res!1569787 () Bool)

(assert (=> b!3875034 (=> res!1569787 e!2397185)))

(declare-fun lt!1350284 () tuple2!40408)

(declare-fun lt!1350324 () List!41302)

(declare-fun ++!10538 (List!41302 List!41302) List!41302)

(assert (=> b!3875034 (= res!1569787 (not (= lt!1350284 (tuple2!40409 (++!10538 lt!1350324 (_1!23338 lt!1350304)) (_2!23338 lt!1350304)))))))

(assert (=> b!3875034 (= lt!1350324 (Cons!41178 (_1!23337 (v!39105 lt!1350281)) Nil!41178))))

(declare-fun b!3875035 () Bool)

(declare-fun e!2397190 () Unit!59108)

(declare-fun Unit!59112 () Unit!59108)

(assert (=> b!3875035 (= e!2397190 Unit!59112)))

(declare-fun b!3875036 () Bool)

(declare-fun e!2397173 () Bool)

(declare-fun e!2397169 () Bool)

(assert (=> b!3875036 (= e!2397173 e!2397169)))

(declare-fun res!1569790 () Bool)

(assert (=> b!3875036 (=> res!1569790 e!2397169)))

(declare-fun lt!1350302 () List!41301)

(assert (=> b!3875036 (= res!1569790 (or (not (= lt!1350302 lt!1350300)) (not (= lt!1350302 lt!1350279))))))

(declare-fun lt!1350322 () List!41301)

(declare-fun suffix!1176 () List!41301)

(assert (=> b!3875036 (= lt!1350302 (++!10537 lt!1350322 suffix!1176))))

(declare-fun tp!1174808 () Bool)

(declare-fun e!2397168 () Bool)

(declare-fun b!3875037 () Bool)

(declare-fun prefixTokens!80 () List!41302)

(declare-fun e!2397198 () Bool)

(assert (=> b!3875037 (= e!2397168 (and (inv!55337 (h!46598 prefixTokens!80)) e!2397198 tp!1174808))))

(declare-fun res!1569801 () Bool)

(declare-fun e!2397180 () Bool)

(assert (=> start!363812 (=> (not res!1569801) (not e!2397180))))

(get-info :version)

(assert (=> start!363812 (= res!1569801 ((_ is Lexer!5977) thiss!20629))))

(assert (=> start!363812 e!2397180))

(declare-fun e!2397193 () Bool)

(assert (=> start!363812 e!2397193))

(assert (=> start!363812 true))

(declare-fun e!2397177 () Bool)

(assert (=> start!363812 e!2397177))

(assert (=> start!363812 e!2397178))

(assert (=> start!363812 e!2397168))

(assert (=> start!363812 e!2397199))

(declare-fun e!2397184 () Bool)

(assert (=> start!363812 e!2397184))

(declare-fun b!3875038 () Bool)

(declare-fun res!1569794 () Bool)

(assert (=> b!3875038 (=> (not res!1569794) (not e!2397180))))

(declare-fun isEmpty!24438 (List!41303) Bool)

(assert (=> b!3875038 (= res!1569794 (not (isEmpty!24438 rules!2768)))))

(declare-fun b!3875039 () Bool)

(declare-fun tp!1174819 () Bool)

(declare-fun e!2397171 () Bool)

(declare-fun inv!21 (TokenValue!6620) Bool)

(assert (=> b!3875039 (= e!2397198 (and (inv!21 (value!202749 (h!46598 prefixTokens!80))) e!2397171 tp!1174819))))

(declare-fun b!3875040 () Bool)

(declare-fun res!1569796 () Bool)

(assert (=> b!3875040 (=> (not res!1569796) (not e!2397180))))

(declare-fun rulesInvariant!5322 (LexerInterface!5979 List!41303) Bool)

(assert (=> b!3875040 (= res!1569796 (rulesInvariant!5322 thiss!20629 rules!2768))))

(declare-fun b!3875041 () Bool)

(declare-fun e!2397182 () Unit!59108)

(declare-fun Unit!59113 () Unit!59108)

(assert (=> b!3875041 (= e!2397182 Unit!59113)))

(declare-fun lt!1350287 () Unit!59108)

(declare-fun suffixResult!91 () List!41301)

(declare-fun lt!1350298 () List!41302)

(declare-fun lt!1350294 () tuple2!40406)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!50 (LexerInterface!5979 List!41303 List!41301 List!41301 List!41302 List!41301 List!41302) Unit!59108)

(assert (=> b!3875041 (= lt!1350287 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!50 thiss!20629 rules!2768 suffix!1176 (_2!23337 lt!1350294) suffixTokens!72 suffixResult!91 lt!1350298))))

(declare-fun res!1569795 () Bool)

(declare-fun call!282786 () tuple2!40408)

(assert (=> b!3875041 (= res!1569795 (not (= call!282786 (tuple2!40409 (++!10538 lt!1350298 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2397202 () Bool)

(assert (=> b!3875041 (=> (not res!1569795) (not e!2397202))))

(assert (=> b!3875041 e!2397202))

(declare-fun b!3875042 () Bool)

(declare-fun e!2397195 () Bool)

(assert (=> b!3875042 (= e!2397195 e!2397187)))

(declare-fun res!1569792 () Bool)

(assert (=> b!3875042 (=> (not res!1569792) (not e!2397187))))

(assert (=> b!3875042 (= res!1569792 ((_ is Some!8807) lt!1350281))))

(declare-fun maxPrefix!3283 (LexerInterface!5979 List!41303 List!41301) Option!8808)

(assert (=> b!3875042 (= lt!1350281 (maxPrefix!3283 thiss!20629 rules!2768 lt!1350300))))

(declare-fun e!2397164 () Bool)

(declare-fun b!3875043 () Bool)

(declare-fun tp!1174812 () Bool)

(declare-fun e!2397165 () Bool)

(declare-fun inv!55334 (String!46818) Bool)

(declare-fun inv!55338 (TokenValueInjection!12668) Bool)

(assert (=> b!3875043 (= e!2397164 (and tp!1174812 (inv!55334 (tag!7250 (rule!9284 (h!46598 suffixTokens!72)))) (inv!55338 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) e!2397165))))

(declare-fun b!3875044 () Bool)

(declare-fun Unit!59114 () Unit!59108)

(assert (=> b!3875044 (= e!2397174 Unit!59114)))

(declare-fun lt!1350305 () Unit!59108)

(declare-fun prefix!426 () List!41301)

(assert (=> b!3875044 (= lt!1350305 (lemmaConcatTwoListThenFirstIsPrefix!2352 prefix!426 suffix!1176))))

(assert (=> b!3875044 (isPrefix!3489 prefix!426 lt!1350300)))

(declare-fun lt!1350293 () Unit!59108)

(declare-fun lemmaIsPrefixSameLengthThenSameList!741 (List!41301 List!41301 List!41301) Unit!59108)

(assert (=> b!3875044 (= lt!1350293 (lemmaIsPrefixSameLengthThenSameList!741 lt!1350325 prefix!426 lt!1350300))))

(assert (=> b!3875044 (= lt!1350325 prefix!426)))

(declare-fun lt!1350315 () Unit!59108)

(assert (=> b!3875044 (= lt!1350315 (lemmaSamePrefixThenSameSuffix!1710 lt!1350325 (_2!23337 (v!39105 lt!1350281)) prefix!426 suffix!1176 lt!1350300))))

(assert (=> b!3875044 false))

(declare-fun b!3875045 () Bool)

(declare-fun tp!1174813 () Bool)

(assert (=> b!3875045 (= e!2397197 (and (inv!21 (value!202749 (h!46598 suffixTokens!72))) e!2397164 tp!1174813))))

(declare-fun b!3875046 () Bool)

(declare-fun tp_is_empty!19561 () Bool)

(declare-fun tp!1174810 () Bool)

(assert (=> b!3875046 (= e!2397184 (and tp_is_empty!19561 tp!1174810))))

(declare-fun b!3875047 () Bool)

(assert (=> b!3875047 (= e!2397202 false)))

(declare-fun b!3875048 () Bool)

(declare-fun e!2397194 () Bool)

(declare-fun e!2397179 () Bool)

(assert (=> b!3875048 (= e!2397194 e!2397179)))

(declare-fun res!1569797 () Bool)

(assert (=> b!3875048 (=> res!1569797 e!2397179)))

(declare-fun lt!1350291 () List!41301)

(assert (=> b!3875048 (= res!1569797 (not (= lt!1350291 (_2!23337 (v!39105 lt!1350281)))))))

(assert (=> b!3875048 (= (_2!23337 (v!39105 lt!1350281)) lt!1350291)))

(declare-fun lt!1350326 () Unit!59108)

(assert (=> b!3875048 (= lt!1350326 (lemmaSamePrefixThenSameSuffix!1710 lt!1350325 (_2!23337 (v!39105 lt!1350281)) lt!1350325 lt!1350291 lt!1350300))))

(declare-fun lt!1350283 () List!41301)

(assert (=> b!3875048 (isPrefix!3489 lt!1350325 lt!1350283)))

(declare-fun lt!1350320 () Unit!59108)

(assert (=> b!3875048 (= lt!1350320 (lemmaConcatTwoListThenFirstIsPrefix!2352 lt!1350325 lt!1350291))))

(declare-fun b!3875049 () Bool)

(declare-fun tp!1174815 () Bool)

(declare-fun e!2397192 () Bool)

(assert (=> b!3875049 (= e!2397183 (and tp!1174815 (inv!55334 (tag!7250 (h!46599 rules!2768))) (inv!55338 (transformation!6390 (h!46599 rules!2768))) e!2397192))))

(declare-fun b!3875050 () Bool)

(declare-fun Unit!59115 () Unit!59108)

(assert (=> b!3875050 (= e!2397182 Unit!59115)))

(declare-fun lt!1350282 () Unit!59108)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!474 (List!41301 List!41301 List!41301 List!41301) Unit!59108)

(assert (=> b!3875050 (= lt!1350282 (lemmaConcatSameAndSameSizesThenSameLists!474 lt!1350325 (_2!23337 (v!39105 lt!1350281)) lt!1350325 (_2!23337 lt!1350294)))))

(assert (=> b!3875050 (= (_2!23337 (v!39105 lt!1350281)) (_2!23337 lt!1350294))))

(declare-fun lt!1350311 () Unit!59108)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!50 (LexerInterface!5979 List!41303 List!41301 List!41301 List!41302 List!41301) Unit!59108)

(assert (=> b!3875050 (= lt!1350311 (lemmaLexWithSmallerInputCannotProduceSameResults!50 thiss!20629 rules!2768 suffix!1176 (_2!23337 lt!1350294) suffixTokens!72 suffixResult!91))))

(declare-fun res!1569804 () Bool)

(declare-fun lt!1350323 () tuple2!40408)

(assert (=> b!3875050 (= res!1569804 (not (= call!282786 lt!1350323)))))

(assert (=> b!3875050 (=> (not res!1569804) (not e!2397186))))

(assert (=> b!3875050 e!2397186))

(declare-fun b!3875051 () Bool)

(declare-fun e!2397191 () Bool)

(assert (=> b!3875051 (= e!2397180 e!2397191)))

(declare-fun res!1569785 () Bool)

(assert (=> b!3875051 (=> (not res!1569785) (not e!2397191))))

(declare-fun lt!1350327 () List!41302)

(assert (=> b!3875051 (= res!1569785 (= lt!1350284 (tuple2!40409 lt!1350327 suffixResult!91)))))

(assert (=> b!3875051 (= lt!1350284 (lexList!1747 thiss!20629 rules!2768 lt!1350300))))

(assert (=> b!3875051 (= lt!1350327 (++!10538 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3875051 (= lt!1350300 (++!10537 prefix!426 suffix!1176))))

(declare-fun b!3875052 () Bool)

(declare-fun res!1569789 () Bool)

(declare-fun e!2397172 () Bool)

(assert (=> b!3875052 (=> res!1569789 e!2397172)))

(declare-fun lt!1350299 () tuple2!40408)

(assert (=> b!3875052 (= res!1569789 (not (= (lexList!1747 thiss!20629 rules!2768 lt!1350291) lt!1350299)))))

(assert (=> b!3875053 (= e!2397192 (and tp!1174816 tp!1174809))))

(declare-fun b!3875054 () Bool)

(declare-fun Unit!59116 () Unit!59108)

(assert (=> b!3875054 (= e!2397190 Unit!59116)))

(declare-fun lt!1350313 () Int)

(assert (=> b!3875054 (= lt!1350313 (size!30946 lt!1350300))))

(declare-fun lt!1350295 () Unit!59108)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1263 (LexerInterface!5979 List!41303 List!41301 List!41301 List!41301 Rule!12580) Unit!59108)

(assert (=> b!3875054 (= lt!1350295 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1263 thiss!20629 rules!2768 lt!1350325 lt!1350300 (_2!23337 (v!39105 lt!1350281)) (rule!9284 (_1!23337 (v!39105 lt!1350281)))))))

(declare-fun maxPrefixOneRule!2365 (LexerInterface!5979 Rule!12580 List!41301) Option!8808)

(assert (=> b!3875054 (= (maxPrefixOneRule!2365 thiss!20629 (rule!9284 (_1!23337 (v!39105 lt!1350281))) lt!1350300) (Some!8807 (tuple2!40407 (Token!11919 lt!1350286 (rule!9284 (_1!23337 (v!39105 lt!1350281))) lt!1350307 lt!1350325) (_2!23337 (v!39105 lt!1350281)))))))

(declare-fun get!13625 (Option!8808) tuple2!40406)

(assert (=> b!3875054 (= lt!1350294 (get!13625 lt!1350281))))

(declare-fun c!674251 () Bool)

(declare-fun lt!1350285 () Int)

(assert (=> b!3875054 (= c!674251 (< (size!30946 (_2!23337 lt!1350294)) lt!1350285))))

(declare-fun lt!1350310 () Unit!59108)

(declare-fun e!2397167 () Unit!59108)

(assert (=> b!3875054 (= lt!1350310 e!2397167)))

(assert (=> b!3875054 false))

(declare-fun b!3875055 () Bool)

(declare-fun res!1569791 () Bool)

(assert (=> b!3875055 (=> (not res!1569791) (not e!2397180))))

(declare-fun isEmpty!24439 (List!41302) Bool)

(assert (=> b!3875055 (= res!1569791 (not (isEmpty!24439 prefixTokens!80)))))

(declare-fun b!3875056 () Bool)

(declare-fun e!2397163 () Unit!59108)

(declare-fun Unit!59117 () Unit!59108)

(assert (=> b!3875056 (= e!2397163 Unit!59117)))

(declare-fun b!3875057 () Bool)

(declare-fun e!2397188 () Bool)

(assert (=> b!3875057 (= e!2397185 e!2397188)))

(declare-fun res!1569799 () Bool)

(assert (=> b!3875057 (=> res!1569799 e!2397188)))

(declare-fun lt!1350317 () Int)

(assert (=> b!3875057 (= res!1569799 (<= lt!1350317 lt!1350285))))

(declare-fun lt!1350290 () Unit!59108)

(assert (=> b!3875057 (= lt!1350290 e!2397174)))

(declare-fun c!674252 () Bool)

(assert (=> b!3875057 (= c!674252 (= lt!1350317 lt!1350285))))

(declare-fun lt!1350296 () Unit!59108)

(assert (=> b!3875057 (= lt!1350296 e!2397190)))

(declare-fun c!674249 () Bool)

(assert (=> b!3875057 (= c!674249 (< lt!1350317 lt!1350285))))

(assert (=> b!3875057 (= lt!1350285 (size!30946 suffix!1176))))

(assert (=> b!3875057 (= lt!1350317 (size!30946 (_2!23337 (v!39105 lt!1350281))))))

(declare-fun b!3875058 () Bool)

(assert (=> b!3875058 (= e!2397169 e!2397194)))

(declare-fun res!1569798 () Bool)

(assert (=> b!3875058 (=> res!1569798 e!2397194)))

(assert (=> b!3875058 (= res!1569798 (or (not (= lt!1350300 lt!1350302)) (not (= lt!1350300 lt!1350283)) (not (= lt!1350279 lt!1350283))))))

(assert (=> b!3875058 (= lt!1350302 lt!1350283)))

(assert (=> b!3875058 (= lt!1350283 (++!10537 lt!1350325 lt!1350291))))

(declare-fun lt!1350288 () List!41301)

(assert (=> b!3875058 (= lt!1350291 (++!10537 lt!1350288 suffix!1176))))

(declare-fun lt!1350321 () Unit!59108)

(declare-fun lemmaConcatAssociativity!2251 (List!41301 List!41301 List!41301) Unit!59108)

(assert (=> b!3875058 (= lt!1350321 (lemmaConcatAssociativity!2251 lt!1350325 lt!1350288 suffix!1176))))

(declare-fun e!2397200 () Bool)

(declare-fun tp!1174818 () Bool)

(declare-fun b!3875059 () Bool)

(assert (=> b!3875059 (= e!2397171 (and tp!1174818 (inv!55334 (tag!7250 (rule!9284 (h!46598 prefixTokens!80)))) (inv!55338 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) e!2397200))))

(declare-fun b!3875060 () Bool)

(declare-fun e!2397196 () Bool)

(assert (=> b!3875060 (= e!2397196 e!2397173)))

(declare-fun res!1569805 () Bool)

(assert (=> b!3875060 (=> res!1569805 e!2397173)))

(assert (=> b!3875060 (= res!1569805 (not (= lt!1350322 prefix!426)))))

(assert (=> b!3875060 (= lt!1350322 (++!10537 lt!1350325 lt!1350288))))

(assert (=> b!3875060 (= lt!1350288 (getSuffix!1944 prefix!426 lt!1350325))))

(declare-fun b!3875061 () Bool)

(assert (=> b!3875061 (= e!2397191 e!2397195)))

(declare-fun res!1569803 () Bool)

(assert (=> b!3875061 (=> (not res!1569803) (not e!2397195))))

(assert (=> b!3875061 (= res!1569803 (= (lexList!1747 thiss!20629 rules!2768 suffix!1176) lt!1350323))))

(assert (=> b!3875061 (= lt!1350323 (tuple2!40409 suffixTokens!72 suffixResult!91))))

(declare-fun b!3875062 () Bool)

(declare-fun rulesValidInductive!2288 (LexerInterface!5979 List!41303) Bool)

(assert (=> b!3875062 (= e!2397172 (rulesValidInductive!2288 thiss!20629 rules!2768))))

(declare-fun lt!1350301 () List!41302)

(assert (=> b!3875062 (= (lexList!1747 thiss!20629 rules!2768 lt!1350288) (tuple2!40409 lt!1350301 Nil!41177))))

(declare-fun lt!1350318 () Unit!59108)

(declare-fun lemmaLexThenLexPrefix!579 (LexerInterface!5979 List!41303 List!41301 List!41301 List!41302 List!41302 List!41301) Unit!59108)

(assert (=> b!3875062 (= lt!1350318 (lemmaLexThenLexPrefix!579 thiss!20629 rules!2768 lt!1350288 suffix!1176 lt!1350301 suffixTokens!72 suffixResult!91))))

(declare-fun b!3875063 () Bool)

(declare-fun c!674250 () Bool)

(assert (=> b!3875063 (= c!674250 (isEmpty!24439 lt!1350298))))

(declare-fun tail!5931 (List!41302) List!41302)

(assert (=> b!3875063 (= lt!1350298 (tail!5931 prefixTokens!80))))

(assert (=> b!3875063 (= e!2397167 e!2397182)))

(declare-fun b!3875064 () Bool)

(assert (=> b!3875064 (= e!2397181 (= (size!30945 (_1!23337 (v!39105 lt!1350281))) (size!30946 (originalCharacters!6990 (_1!23337 (v!39105 lt!1350281))))))))

(declare-fun b!3875065 () Bool)

(declare-fun tp!1174811 () Bool)

(assert (=> b!3875065 (= e!2397177 (and tp_is_empty!19561 tp!1174811))))

(declare-fun b!3875066 () Bool)

(declare-fun res!1569806 () Bool)

(assert (=> b!3875066 (=> res!1569806 e!2397185)))

(assert (=> b!3875066 (= res!1569806 (or (not (= lt!1350304 (tuple2!40409 (_1!23338 lt!1350304) (_2!23338 lt!1350304)))) (= (_2!23337 (v!39105 lt!1350281)) suffix!1176)))))

(declare-fun b!3875067 () Bool)

(declare-fun res!1569807 () Bool)

(assert (=> b!3875067 (=> res!1569807 e!2397188)))

(declare-fun head!8214 (List!41302) Token!11918)

(assert (=> b!3875067 (= res!1569807 (not (= (head!8214 prefixTokens!80) (_1!23337 (v!39105 lt!1350281)))))))

(assert (=> b!3875068 (= e!2397200 (and tp!1174821 tp!1174814))))

(declare-fun b!3875069 () Bool)

(assert (=> b!3875069 (= e!2397188 e!2397196)))

(declare-fun res!1569786 () Bool)

(assert (=> b!3875069 (=> res!1569786 e!2397196)))

(assert (=> b!3875069 (= res!1569786 (>= lt!1350307 (size!30946 prefix!426)))))

(assert (=> b!3875069 (isPrefix!3489 lt!1350325 prefix!426)))

(declare-fun lt!1350303 () Unit!59108)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!239 (List!41301 List!41301 List!41301) Unit!59108)

(assert (=> b!3875069 (= lt!1350303 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!239 prefix!426 lt!1350325 lt!1350300))))

(assert (=> b!3875069 (isPrefix!3489 prefix!426 lt!1350300)))

(declare-fun lt!1350309 () Unit!59108)

(assert (=> b!3875069 (= lt!1350309 (lemmaConcatTwoListThenFirstIsPrefix!2352 prefix!426 suffix!1176))))

(declare-fun b!3875070 () Bool)

(declare-fun tp!1174822 () Bool)

(assert (=> b!3875070 (= e!2397193 (and tp_is_empty!19561 tp!1174822))))

(declare-fun b!3875071 () Bool)

(declare-fun res!1569788 () Bool)

(assert (=> b!3875071 (=> (not res!1569788) (not e!2397180))))

(declare-fun isEmpty!24440 (List!41301) Bool)

(assert (=> b!3875071 (= res!1569788 (not (isEmpty!24440 prefix!426)))))

(assert (=> b!3875072 (= e!2397165 (and tp!1174823 tp!1174820))))

(declare-fun b!3875073 () Bool)

(declare-fun e!2397176 () Bool)

(assert (=> b!3875073 (= e!2397179 e!2397176)))

(declare-fun res!1569802 () Bool)

(assert (=> b!3875073 (=> res!1569802 e!2397176)))

(assert (=> b!3875073 (= res!1569802 (not (= lt!1350304 lt!1350299)))))

(declare-fun lt!1350308 () List!41302)

(assert (=> b!3875073 (= lt!1350299 (tuple2!40409 lt!1350308 suffixResult!91))))

(assert (=> b!3875073 (= lt!1350308 (++!10538 lt!1350301 suffixTokens!72))))

(assert (=> b!3875073 (= lt!1350301 (tail!5931 prefixTokens!80))))

(assert (=> b!3875073 (isPrefix!3489 lt!1350288 lt!1350291)))

(declare-fun lt!1350312 () Unit!59108)

(assert (=> b!3875073 (= lt!1350312 (lemmaConcatTwoListThenFirstIsPrefix!2352 lt!1350288 suffix!1176))))

(declare-fun bm!282781 () Bool)

(assert (=> bm!282781 (= call!282786 (lexList!1747 thiss!20629 rules!2768 (_2!23337 lt!1350294)))))

(declare-fun b!3875074 () Bool)

(declare-fun Unit!59118 () Unit!59108)

(assert (=> b!3875074 (= e!2397163 Unit!59118)))

(declare-fun lt!1350319 () Unit!59108)

(assert (=> b!3875074 (= lt!1350319 (lemmaLexWithSmallerInputCannotProduceSameResults!50 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350281)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3875074 false))

(declare-fun b!3875075 () Bool)

(declare-fun Unit!59119 () Unit!59108)

(assert (=> b!3875075 (= e!2397167 Unit!59119)))

(declare-fun b!3875076 () Bool)

(assert (=> b!3875076 (= e!2397176 e!2397172)))

(declare-fun res!1569800 () Bool)

(assert (=> b!3875076 (=> res!1569800 e!2397172)))

(declare-fun lt!1350314 () List!41302)

(assert (=> b!3875076 (= res!1569800 (not (= lt!1350314 lt!1350327)))))

(assert (=> b!3875076 (= lt!1350314 (++!10538 lt!1350324 lt!1350308))))

(assert (=> b!3875076 (= lt!1350314 (++!10538 (++!10538 lt!1350324 lt!1350301) suffixTokens!72))))

(declare-fun lt!1350278 () Unit!59108)

(declare-fun lemmaConcatAssociativity!2252 (List!41302 List!41302 List!41302) Unit!59108)

(assert (=> b!3875076 (= lt!1350278 (lemmaConcatAssociativity!2252 lt!1350324 lt!1350301 suffixTokens!72))))

(declare-fun lt!1350280 () Unit!59108)

(assert (=> b!3875076 (= lt!1350280 e!2397163)))

(declare-fun c!674253 () Bool)

(assert (=> b!3875076 (= c!674253 (isEmpty!24439 lt!1350301))))

(assert (= (and start!363812 res!1569801) b!3875038))

(assert (= (and b!3875038 res!1569794) b!3875040))

(assert (= (and b!3875040 res!1569796) b!3875055))

(assert (= (and b!3875055 res!1569791) b!3875071))

(assert (= (and b!3875071 res!1569788) b!3875051))

(assert (= (and b!3875051 res!1569785) b!3875061))

(assert (= (and b!3875061 res!1569803) b!3875042))

(assert (= (and b!3875042 res!1569792) b!3875032))

(assert (= (and b!3875032 res!1569808) b!3875064))

(assert (= (and b!3875032 (not res!1569793)) b!3875034))

(assert (= (and b!3875034 (not res!1569787)) b!3875066))

(assert (= (and b!3875066 (not res!1569806)) b!3875057))

(assert (= (and b!3875057 c!674249) b!3875054))

(assert (= (and b!3875057 (not c!674249)) b!3875035))

(assert (= (and b!3875054 c!674251) b!3875063))

(assert (= (and b!3875054 (not c!674251)) b!3875075))

(assert (= (and b!3875063 c!674250) b!3875050))

(assert (= (and b!3875063 (not c!674250)) b!3875041))

(assert (= (and b!3875050 res!1569804) b!3875029))

(assert (= (and b!3875041 res!1569795) b!3875047))

(assert (= (or b!3875050 b!3875041) bm!282781))

(assert (= (and b!3875057 c!674252) b!3875044))

(assert (= (and b!3875057 (not c!674252)) b!3875030))

(assert (= (and b!3875057 (not res!1569799)) b!3875067))

(assert (= (and b!3875067 (not res!1569807)) b!3875069))

(assert (= (and b!3875069 (not res!1569786)) b!3875060))

(assert (= (and b!3875060 (not res!1569805)) b!3875036))

(assert (= (and b!3875036 (not res!1569790)) b!3875058))

(assert (= (and b!3875058 (not res!1569798)) b!3875048))

(assert (= (and b!3875048 (not res!1569797)) b!3875073))

(assert (= (and b!3875073 (not res!1569802)) b!3875076))

(assert (= (and b!3875076 c!674253) b!3875074))

(assert (= (and b!3875076 (not c!674253)) b!3875056))

(assert (= (and b!3875076 (not res!1569800)) b!3875052))

(assert (= (and b!3875052 (not res!1569789)) b!3875062))

(assert (= (and start!363812 ((_ is Cons!41177) suffixResult!91)) b!3875070))

(assert (= (and start!363812 ((_ is Cons!41177) suffix!1176)) b!3875065))

(assert (= b!3875049 b!3875053))

(assert (= b!3875033 b!3875049))

(assert (= (and start!363812 ((_ is Cons!41179) rules!2768)) b!3875033))

(assert (= b!3875059 b!3875068))

(assert (= b!3875039 b!3875059))

(assert (= b!3875037 b!3875039))

(assert (= (and start!363812 ((_ is Cons!41178) prefixTokens!80)) b!3875037))

(assert (= b!3875043 b!3875072))

(assert (= b!3875045 b!3875043))

(assert (= b!3875031 b!3875045))

(assert (= (and start!363812 ((_ is Cons!41178) suffixTokens!72)) b!3875031))

(assert (= (and start!363812 ((_ is Cons!41177) prefix!426)) b!3875046))

(declare-fun m!4432627 () Bool)

(assert (=> b!3875051 m!4432627))

(declare-fun m!4432629 () Bool)

(assert (=> b!3875051 m!4432629))

(declare-fun m!4432631 () Bool)

(assert (=> b!3875051 m!4432631))

(declare-fun m!4432633 () Bool)

(assert (=> b!3875041 m!4432633))

(declare-fun m!4432635 () Bool)

(assert (=> b!3875041 m!4432635))

(declare-fun m!4432637 () Bool)

(assert (=> b!3875060 m!4432637))

(declare-fun m!4432639 () Bool)

(assert (=> b!3875060 m!4432639))

(declare-fun m!4432641 () Bool)

(assert (=> b!3875037 m!4432641))

(declare-fun m!4432643 () Bool)

(assert (=> b!3875071 m!4432643))

(declare-fun m!4432645 () Bool)

(assert (=> b!3875034 m!4432645))

(declare-fun m!4432647 () Bool)

(assert (=> b!3875050 m!4432647))

(declare-fun m!4432649 () Bool)

(assert (=> b!3875050 m!4432649))

(declare-fun m!4432651 () Bool)

(assert (=> b!3875067 m!4432651))

(declare-fun m!4432653 () Bool)

(assert (=> b!3875069 m!4432653))

(declare-fun m!4432655 () Bool)

(assert (=> b!3875069 m!4432655))

(declare-fun m!4432657 () Bool)

(assert (=> b!3875069 m!4432657))

(declare-fun m!4432659 () Bool)

(assert (=> b!3875069 m!4432659))

(declare-fun m!4432661 () Bool)

(assert (=> b!3875069 m!4432661))

(declare-fun m!4432663 () Bool)

(assert (=> b!3875058 m!4432663))

(declare-fun m!4432665 () Bool)

(assert (=> b!3875058 m!4432665))

(declare-fun m!4432667 () Bool)

(assert (=> b!3875058 m!4432667))

(declare-fun m!4432669 () Bool)

(assert (=> b!3875074 m!4432669))

(declare-fun m!4432671 () Bool)

(assert (=> b!3875045 m!4432671))

(declare-fun m!4432673 () Bool)

(assert (=> b!3875039 m!4432673))

(declare-fun m!4432675 () Bool)

(assert (=> b!3875038 m!4432675))

(declare-fun m!4432677 () Bool)

(assert (=> b!3875036 m!4432677))

(declare-fun m!4432679 () Bool)

(assert (=> b!3875057 m!4432679))

(declare-fun m!4432681 () Bool)

(assert (=> b!3875057 m!4432681))

(assert (=> b!3875044 m!4432657))

(assert (=> b!3875044 m!4432659))

(declare-fun m!4432683 () Bool)

(assert (=> b!3875044 m!4432683))

(declare-fun m!4432685 () Bool)

(assert (=> b!3875044 m!4432685))

(declare-fun m!4432687 () Bool)

(assert (=> b!3875055 m!4432687))

(declare-fun m!4432689 () Bool)

(assert (=> b!3875052 m!4432689))

(declare-fun m!4432691 () Bool)

(assert (=> b!3875042 m!4432691))

(declare-fun m!4432693 () Bool)

(assert (=> b!3875031 m!4432693))

(declare-fun m!4432695 () Bool)

(assert (=> b!3875076 m!4432695))

(declare-fun m!4432697 () Bool)

(assert (=> b!3875076 m!4432697))

(assert (=> b!3875076 m!4432697))

(declare-fun m!4432699 () Bool)

(assert (=> b!3875076 m!4432699))

(declare-fun m!4432701 () Bool)

(assert (=> b!3875076 m!4432701))

(declare-fun m!4432703 () Bool)

(assert (=> b!3875076 m!4432703))

(declare-fun m!4432705 () Bool)

(assert (=> bm!282781 m!4432705))

(declare-fun m!4432707 () Bool)

(assert (=> b!3875048 m!4432707))

(declare-fun m!4432709 () Bool)

(assert (=> b!3875048 m!4432709))

(declare-fun m!4432711 () Bool)

(assert (=> b!3875048 m!4432711))

(declare-fun m!4432713 () Bool)

(assert (=> b!3875032 m!4432713))

(declare-fun m!4432715 () Bool)

(assert (=> b!3875032 m!4432715))

(declare-fun m!4432717 () Bool)

(assert (=> b!3875032 m!4432717))

(declare-fun m!4432719 () Bool)

(assert (=> b!3875032 m!4432719))

(declare-fun m!4432721 () Bool)

(assert (=> b!3875032 m!4432721))

(declare-fun m!4432723 () Bool)

(assert (=> b!3875032 m!4432723))

(declare-fun m!4432725 () Bool)

(assert (=> b!3875032 m!4432725))

(declare-fun m!4432727 () Bool)

(assert (=> b!3875032 m!4432727))

(declare-fun m!4432729 () Bool)

(assert (=> b!3875032 m!4432729))

(assert (=> b!3875032 m!4432719))

(declare-fun m!4432731 () Bool)

(assert (=> b!3875032 m!4432731))

(declare-fun m!4432733 () Bool)

(assert (=> b!3875032 m!4432733))

(assert (=> b!3875032 m!4432715))

(declare-fun m!4432735 () Bool)

(assert (=> b!3875032 m!4432735))

(declare-fun m!4432737 () Bool)

(assert (=> b!3875032 m!4432737))

(declare-fun m!4432739 () Bool)

(assert (=> b!3875032 m!4432739))

(declare-fun m!4432741 () Bool)

(assert (=> b!3875061 m!4432741))

(declare-fun m!4432743 () Bool)

(assert (=> b!3875049 m!4432743))

(declare-fun m!4432745 () Bool)

(assert (=> b!3875049 m!4432745))

(declare-fun m!4432747 () Bool)

(assert (=> b!3875043 m!4432747))

(declare-fun m!4432749 () Bool)

(assert (=> b!3875043 m!4432749))

(declare-fun m!4432751 () Bool)

(assert (=> b!3875062 m!4432751))

(declare-fun m!4432753 () Bool)

(assert (=> b!3875062 m!4432753))

(declare-fun m!4432755 () Bool)

(assert (=> b!3875062 m!4432755))

(declare-fun m!4432757 () Bool)

(assert (=> b!3875059 m!4432757))

(declare-fun m!4432759 () Bool)

(assert (=> b!3875059 m!4432759))

(declare-fun m!4432761 () Bool)

(assert (=> b!3875063 m!4432761))

(declare-fun m!4432763 () Bool)

(assert (=> b!3875063 m!4432763))

(declare-fun m!4432765 () Bool)

(assert (=> b!3875040 m!4432765))

(declare-fun m!4432767 () Bool)

(assert (=> b!3875054 m!4432767))

(declare-fun m!4432769 () Bool)

(assert (=> b!3875054 m!4432769))

(declare-fun m!4432771 () Bool)

(assert (=> b!3875054 m!4432771))

(declare-fun m!4432773 () Bool)

(assert (=> b!3875054 m!4432773))

(declare-fun m!4432775 () Bool)

(assert (=> b!3875054 m!4432775))

(declare-fun m!4432777 () Bool)

(assert (=> b!3875073 m!4432777))

(assert (=> b!3875073 m!4432763))

(declare-fun m!4432779 () Bool)

(assert (=> b!3875073 m!4432779))

(declare-fun m!4432781 () Bool)

(assert (=> b!3875073 m!4432781))

(declare-fun m!4432783 () Bool)

(assert (=> b!3875064 m!4432783))

(check-sat (not b!3875034) (not b!3875041) (not b!3875049) (not b!3875062) (not b!3875074) (not b!3875051) (not b!3875033) (not b!3875040) (not b!3875070) (not b!3875059) (not b!3875050) (not b_next!105457) (not b!3875058) (not b!3875060) (not b!3875032) b_and!290557 (not b_next!105461) (not b!3875044) (not b!3875069) b_and!290547 (not b!3875031) (not b!3875042) (not b_next!105463) (not b!3875063) (not b!3875048) (not b!3875076) (not b!3875057) (not b!3875052) b_and!290549 (not b_next!105455) (not b!3875036) (not b!3875067) (not b!3875064) (not b!3875055) (not b_next!105453) (not b!3875038) (not b!3875043) (not b!3875071) tp_is_empty!19561 (not b!3875039) b_and!290555 (not b!3875037) (not bm!282781) (not b_next!105459) (not b!3875045) b_and!290551 (not b!3875054) b_and!290553 (not b!3875046) (not b!3875061) (not b!3875065) (not b!3875073))
(check-sat (not b_next!105457) b_and!290557 (not b_next!105461) b_and!290547 (not b_next!105463) (not b_next!105453) b_and!290555 b_and!290553 b_and!290549 (not b_next!105455) (not b_next!105459) b_and!290551)
(get-model)

(declare-fun d!1147534 () Bool)

(assert (=> d!1147534 (isPrefix!3489 prefix!426 (++!10537 prefix!426 suffix!1176))))

(declare-fun lt!1350330 () Unit!59108)

(declare-fun choose!22952 (List!41301 List!41301) Unit!59108)

(assert (=> d!1147534 (= lt!1350330 (choose!22952 prefix!426 suffix!1176))))

(assert (=> d!1147534 (= (lemmaConcatTwoListThenFirstIsPrefix!2352 prefix!426 suffix!1176) lt!1350330)))

(declare-fun bs!583613 () Bool)

(assert (= bs!583613 d!1147534))

(assert (=> bs!583613 m!4432631))

(assert (=> bs!583613 m!4432631))

(declare-fun m!4432785 () Bool)

(assert (=> bs!583613 m!4432785))

(declare-fun m!4432787 () Bool)

(assert (=> bs!583613 m!4432787))

(assert (=> b!3875069 d!1147534))

(declare-fun b!3875088 () Bool)

(declare-fun e!2397210 () Bool)

(assert (=> b!3875088 (= e!2397210 (>= (size!30946 lt!1350300) (size!30946 prefix!426)))))

(declare-fun b!3875086 () Bool)

(declare-fun res!1569823 () Bool)

(declare-fun e!2397209 () Bool)

(assert (=> b!3875086 (=> (not res!1569823) (not e!2397209))))

(declare-fun head!8215 (List!41301) C!22776)

(assert (=> b!3875086 (= res!1569823 (= (head!8215 prefix!426) (head!8215 lt!1350300)))))

(declare-fun d!1147536 () Bool)

(assert (=> d!1147536 e!2397210))

(declare-fun res!1569824 () Bool)

(assert (=> d!1147536 (=> res!1569824 e!2397210)))

(declare-fun lt!1350333 () Bool)

(assert (=> d!1147536 (= res!1569824 (not lt!1350333))))

(declare-fun e!2397211 () Bool)

(assert (=> d!1147536 (= lt!1350333 e!2397211)))

(declare-fun res!1569821 () Bool)

(assert (=> d!1147536 (=> res!1569821 e!2397211)))

(assert (=> d!1147536 (= res!1569821 ((_ is Nil!41177) prefix!426))))

(assert (=> d!1147536 (= (isPrefix!3489 prefix!426 lt!1350300) lt!1350333)))

(declare-fun b!3875087 () Bool)

(declare-fun tail!5932 (List!41301) List!41301)

(assert (=> b!3875087 (= e!2397209 (isPrefix!3489 (tail!5932 prefix!426) (tail!5932 lt!1350300)))))

(declare-fun b!3875085 () Bool)

(assert (=> b!3875085 (= e!2397211 e!2397209)))

(declare-fun res!1569822 () Bool)

(assert (=> b!3875085 (=> (not res!1569822) (not e!2397209))))

(assert (=> b!3875085 (= res!1569822 (not ((_ is Nil!41177) lt!1350300)))))

(assert (= (and d!1147536 (not res!1569821)) b!3875085))

(assert (= (and b!3875085 res!1569822) b!3875086))

(assert (= (and b!3875086 res!1569823) b!3875087))

(assert (= (and d!1147536 (not res!1569824)) b!3875088))

(assert (=> b!3875088 m!4432769))

(assert (=> b!3875088 m!4432655))

(declare-fun m!4432789 () Bool)

(assert (=> b!3875086 m!4432789))

(declare-fun m!4432791 () Bool)

(assert (=> b!3875086 m!4432791))

(declare-fun m!4432793 () Bool)

(assert (=> b!3875087 m!4432793))

(declare-fun m!4432795 () Bool)

(assert (=> b!3875087 m!4432795))

(assert (=> b!3875087 m!4432793))

(assert (=> b!3875087 m!4432795))

(declare-fun m!4432797 () Bool)

(assert (=> b!3875087 m!4432797))

(assert (=> b!3875069 d!1147536))

(declare-fun b!3875092 () Bool)

(declare-fun e!2397213 () Bool)

(assert (=> b!3875092 (= e!2397213 (>= (size!30946 prefix!426) (size!30946 lt!1350325)))))

(declare-fun b!3875090 () Bool)

(declare-fun res!1569827 () Bool)

(declare-fun e!2397212 () Bool)

(assert (=> b!3875090 (=> (not res!1569827) (not e!2397212))))

(assert (=> b!3875090 (= res!1569827 (= (head!8215 lt!1350325) (head!8215 prefix!426)))))

(declare-fun d!1147538 () Bool)

(assert (=> d!1147538 e!2397213))

(declare-fun res!1569828 () Bool)

(assert (=> d!1147538 (=> res!1569828 e!2397213)))

(declare-fun lt!1350334 () Bool)

(assert (=> d!1147538 (= res!1569828 (not lt!1350334))))

(declare-fun e!2397214 () Bool)

(assert (=> d!1147538 (= lt!1350334 e!2397214)))

(declare-fun res!1569825 () Bool)

(assert (=> d!1147538 (=> res!1569825 e!2397214)))

(assert (=> d!1147538 (= res!1569825 ((_ is Nil!41177) lt!1350325))))

(assert (=> d!1147538 (= (isPrefix!3489 lt!1350325 prefix!426) lt!1350334)))

(declare-fun b!3875091 () Bool)

(assert (=> b!3875091 (= e!2397212 (isPrefix!3489 (tail!5932 lt!1350325) (tail!5932 prefix!426)))))

(declare-fun b!3875089 () Bool)

(assert (=> b!3875089 (= e!2397214 e!2397212)))

(declare-fun res!1569826 () Bool)

(assert (=> b!3875089 (=> (not res!1569826) (not e!2397212))))

(assert (=> b!3875089 (= res!1569826 (not ((_ is Nil!41177) prefix!426)))))

(assert (= (and d!1147538 (not res!1569825)) b!3875089))

(assert (= (and b!3875089 res!1569826) b!3875090))

(assert (= (and b!3875090 res!1569827) b!3875091))

(assert (= (and d!1147538 (not res!1569828)) b!3875092))

(assert (=> b!3875092 m!4432655))

(assert (=> b!3875092 m!4432733))

(declare-fun m!4432799 () Bool)

(assert (=> b!3875090 m!4432799))

(assert (=> b!3875090 m!4432789))

(declare-fun m!4432801 () Bool)

(assert (=> b!3875091 m!4432801))

(assert (=> b!3875091 m!4432793))

(assert (=> b!3875091 m!4432801))

(assert (=> b!3875091 m!4432793))

(declare-fun m!4432803 () Bool)

(assert (=> b!3875091 m!4432803))

(assert (=> b!3875069 d!1147538))

(declare-fun d!1147540 () Bool)

(assert (=> d!1147540 (isPrefix!3489 lt!1350325 prefix!426)))

(declare-fun lt!1350337 () Unit!59108)

(declare-fun choose!22955 (List!41301 List!41301 List!41301) Unit!59108)

(assert (=> d!1147540 (= lt!1350337 (choose!22955 prefix!426 lt!1350325 lt!1350300))))

(assert (=> d!1147540 (isPrefix!3489 prefix!426 lt!1350300)))

(assert (=> d!1147540 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!239 prefix!426 lt!1350325 lt!1350300) lt!1350337)))

(declare-fun bs!583614 () Bool)

(assert (= bs!583614 d!1147540))

(assert (=> bs!583614 m!4432653))

(declare-fun m!4432805 () Bool)

(assert (=> bs!583614 m!4432805))

(assert (=> bs!583614 m!4432659))

(assert (=> b!3875069 d!1147540))

(declare-fun d!1147542 () Bool)

(declare-fun lt!1350340 () Int)

(assert (=> d!1147542 (>= lt!1350340 0)))

(declare-fun e!2397217 () Int)

(assert (=> d!1147542 (= lt!1350340 e!2397217)))

(declare-fun c!674258 () Bool)

(assert (=> d!1147542 (= c!674258 ((_ is Nil!41177) prefix!426))))

(assert (=> d!1147542 (= (size!30946 prefix!426) lt!1350340)))

(declare-fun b!3875097 () Bool)

(assert (=> b!3875097 (= e!2397217 0)))

(declare-fun b!3875098 () Bool)

(assert (=> b!3875098 (= e!2397217 (+ 1 (size!30946 (t!314848 prefix!426))))))

(assert (= (and d!1147542 c!674258) b!3875097))

(assert (= (and d!1147542 (not c!674258)) b!3875098))

(declare-fun m!4432807 () Bool)

(assert (=> b!3875098 m!4432807))

(assert (=> b!3875069 d!1147542))

(declare-fun d!1147544 () Bool)

(assert (=> d!1147544 (= (_2!23337 (v!39105 lt!1350281)) lt!1350291)))

(declare-fun lt!1350343 () Unit!59108)

(declare-fun choose!22956 (List!41301 List!41301 List!41301 List!41301 List!41301) Unit!59108)

(assert (=> d!1147544 (= lt!1350343 (choose!22956 lt!1350325 (_2!23337 (v!39105 lt!1350281)) lt!1350325 lt!1350291 lt!1350300))))

(assert (=> d!1147544 (isPrefix!3489 lt!1350325 lt!1350300)))

(assert (=> d!1147544 (= (lemmaSamePrefixThenSameSuffix!1710 lt!1350325 (_2!23337 (v!39105 lt!1350281)) lt!1350325 lt!1350291 lt!1350300) lt!1350343)))

(declare-fun bs!583615 () Bool)

(assert (= bs!583615 d!1147544))

(declare-fun m!4432809 () Bool)

(assert (=> bs!583615 m!4432809))

(declare-fun m!4432811 () Bool)

(assert (=> bs!583615 m!4432811))

(assert (=> b!3875048 d!1147544))

(declare-fun b!3875102 () Bool)

(declare-fun e!2397219 () Bool)

(assert (=> b!3875102 (= e!2397219 (>= (size!30946 lt!1350283) (size!30946 lt!1350325)))))

(declare-fun b!3875100 () Bool)

(declare-fun res!1569834 () Bool)

(declare-fun e!2397218 () Bool)

(assert (=> b!3875100 (=> (not res!1569834) (not e!2397218))))

(assert (=> b!3875100 (= res!1569834 (= (head!8215 lt!1350325) (head!8215 lt!1350283)))))

(declare-fun d!1147546 () Bool)

(assert (=> d!1147546 e!2397219))

(declare-fun res!1569835 () Bool)

(assert (=> d!1147546 (=> res!1569835 e!2397219)))

(declare-fun lt!1350344 () Bool)

(assert (=> d!1147546 (= res!1569835 (not lt!1350344))))

(declare-fun e!2397220 () Bool)

(assert (=> d!1147546 (= lt!1350344 e!2397220)))

(declare-fun res!1569832 () Bool)

(assert (=> d!1147546 (=> res!1569832 e!2397220)))

(assert (=> d!1147546 (= res!1569832 ((_ is Nil!41177) lt!1350325))))

(assert (=> d!1147546 (= (isPrefix!3489 lt!1350325 lt!1350283) lt!1350344)))

(declare-fun b!3875101 () Bool)

(assert (=> b!3875101 (= e!2397218 (isPrefix!3489 (tail!5932 lt!1350325) (tail!5932 lt!1350283)))))

(declare-fun b!3875099 () Bool)

(assert (=> b!3875099 (= e!2397220 e!2397218)))

(declare-fun res!1569833 () Bool)

(assert (=> b!3875099 (=> (not res!1569833) (not e!2397218))))

(assert (=> b!3875099 (= res!1569833 (not ((_ is Nil!41177) lt!1350283)))))

(assert (= (and d!1147546 (not res!1569832)) b!3875099))

(assert (= (and b!3875099 res!1569833) b!3875100))

(assert (= (and b!3875100 res!1569834) b!3875101))

(assert (= (and d!1147546 (not res!1569835)) b!3875102))

(declare-fun m!4432813 () Bool)

(assert (=> b!3875102 m!4432813))

(assert (=> b!3875102 m!4432733))

(assert (=> b!3875100 m!4432799))

(declare-fun m!4432815 () Bool)

(assert (=> b!3875100 m!4432815))

(assert (=> b!3875101 m!4432801))

(declare-fun m!4432817 () Bool)

(assert (=> b!3875101 m!4432817))

(assert (=> b!3875101 m!4432801))

(assert (=> b!3875101 m!4432817))

(declare-fun m!4432819 () Bool)

(assert (=> b!3875101 m!4432819))

(assert (=> b!3875048 d!1147546))

(declare-fun d!1147548 () Bool)

(assert (=> d!1147548 (isPrefix!3489 lt!1350325 (++!10537 lt!1350325 lt!1350291))))

(declare-fun lt!1350345 () Unit!59108)

(assert (=> d!1147548 (= lt!1350345 (choose!22952 lt!1350325 lt!1350291))))

(assert (=> d!1147548 (= (lemmaConcatTwoListThenFirstIsPrefix!2352 lt!1350325 lt!1350291) lt!1350345)))

(declare-fun bs!583616 () Bool)

(assert (= bs!583616 d!1147548))

(assert (=> bs!583616 m!4432663))

(assert (=> bs!583616 m!4432663))

(declare-fun m!4432821 () Bool)

(assert (=> bs!583616 m!4432821))

(declare-fun m!4432823 () Bool)

(assert (=> bs!583616 m!4432823))

(assert (=> b!3875048 d!1147548))

(declare-fun d!1147550 () Bool)

(assert (=> d!1147550 (= (inv!55334 (tag!7250 (h!46599 rules!2768))) (= (mod (str.len (value!202748 (tag!7250 (h!46599 rules!2768)))) 2) 0))))

(assert (=> b!3875049 d!1147550))

(declare-fun d!1147552 () Bool)

(declare-fun res!1569838 () Bool)

(declare-fun e!2397223 () Bool)

(assert (=> d!1147552 (=> (not res!1569838) (not e!2397223))))

(declare-fun semiInverseModEq!2743 (Int Int) Bool)

(assert (=> d!1147552 (= res!1569838 (semiInverseModEq!2743 (toChars!8677 (transformation!6390 (h!46599 rules!2768))) (toValue!8818 (transformation!6390 (h!46599 rules!2768)))))))

(assert (=> d!1147552 (= (inv!55338 (transformation!6390 (h!46599 rules!2768))) e!2397223)))

(declare-fun b!3875105 () Bool)

(declare-fun equivClasses!2642 (Int Int) Bool)

(assert (=> b!3875105 (= e!2397223 (equivClasses!2642 (toChars!8677 (transformation!6390 (h!46599 rules!2768))) (toValue!8818 (transformation!6390 (h!46599 rules!2768)))))))

(assert (= (and d!1147552 res!1569838) b!3875105))

(declare-fun m!4432825 () Bool)

(assert (=> d!1147552 m!4432825))

(declare-fun m!4432827 () Bool)

(assert (=> b!3875105 m!4432827))

(assert (=> b!3875049 d!1147552))

(declare-fun d!1147556 () Bool)

(assert (=> d!1147556 (= (isEmpty!24440 prefix!426) ((_ is Nil!41177) prefix!426))))

(assert (=> b!3875071 d!1147556))

(declare-fun d!1147558 () Bool)

(assert (=> d!1147558 (and (= lt!1350325 lt!1350325) (= (_2!23337 (v!39105 lt!1350281)) (_2!23337 lt!1350294)))))

(declare-fun lt!1350348 () Unit!59108)

(declare-fun choose!22958 (List!41301 List!41301 List!41301 List!41301) Unit!59108)

(assert (=> d!1147558 (= lt!1350348 (choose!22958 lt!1350325 (_2!23337 (v!39105 lt!1350281)) lt!1350325 (_2!23337 lt!1350294)))))

(assert (=> d!1147558 (= (++!10537 lt!1350325 (_2!23337 (v!39105 lt!1350281))) (++!10537 lt!1350325 (_2!23337 lt!1350294)))))

(assert (=> d!1147558 (= (lemmaConcatSameAndSameSizesThenSameLists!474 lt!1350325 (_2!23337 (v!39105 lt!1350281)) lt!1350325 (_2!23337 lt!1350294)) lt!1350348)))

(declare-fun bs!583617 () Bool)

(assert (= bs!583617 d!1147558))

(declare-fun m!4432829 () Bool)

(assert (=> bs!583617 m!4432829))

(assert (=> bs!583617 m!4432739))

(declare-fun m!4432831 () Bool)

(assert (=> bs!583617 m!4432831))

(assert (=> b!3875050 d!1147558))

(declare-fun d!1147560 () Bool)

(assert (=> d!1147560 (not (= (lexList!1747 thiss!20629 rules!2768 (_2!23337 lt!1350294)) (tuple2!40409 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1350375 () Unit!59108)

(declare-fun choose!22959 (LexerInterface!5979 List!41303 List!41301 List!41301 List!41302 List!41301) Unit!59108)

(assert (=> d!1147560 (= lt!1350375 (choose!22959 thiss!20629 rules!2768 suffix!1176 (_2!23337 lt!1350294) suffixTokens!72 suffixResult!91))))

(assert (=> d!1147560 (not (isEmpty!24438 rules!2768))))

(assert (=> d!1147560 (= (lemmaLexWithSmallerInputCannotProduceSameResults!50 thiss!20629 rules!2768 suffix!1176 (_2!23337 lt!1350294) suffixTokens!72 suffixResult!91) lt!1350375)))

(declare-fun bs!583619 () Bool)

(assert (= bs!583619 d!1147560))

(assert (=> bs!583619 m!4432705))

(declare-fun m!4432923 () Bool)

(assert (=> bs!583619 m!4432923))

(assert (=> bs!583619 m!4432675))

(assert (=> b!3875050 d!1147560))

(declare-fun b!3875228 () Bool)

(declare-fun e!2397296 () Bool)

(declare-fun lt!1350399 () tuple2!40408)

(assert (=> b!3875228 (= e!2397296 (= (_2!23338 lt!1350399) lt!1350300))))

(declare-fun b!3875229 () Bool)

(declare-fun e!2397295 () tuple2!40408)

(assert (=> b!3875229 (= e!2397295 (tuple2!40409 Nil!41178 lt!1350300))))

(declare-fun b!3875230 () Bool)

(declare-fun e!2397297 () Bool)

(assert (=> b!3875230 (= e!2397296 e!2397297)))

(declare-fun res!1569890 () Bool)

(assert (=> b!3875230 (= res!1569890 (< (size!30946 (_2!23338 lt!1350399)) (size!30946 lt!1350300)))))

(assert (=> b!3875230 (=> (not res!1569890) (not e!2397297))))

(declare-fun b!3875231 () Bool)

(declare-fun lt!1350398 () Option!8808)

(declare-fun lt!1350400 () tuple2!40408)

(assert (=> b!3875231 (= e!2397295 (tuple2!40409 (Cons!41178 (_1!23337 (v!39105 lt!1350398)) (_1!23338 lt!1350400)) (_2!23338 lt!1350400)))))

(assert (=> b!3875231 (= lt!1350400 (lexList!1747 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350398))))))

(declare-fun d!1147586 () Bool)

(assert (=> d!1147586 e!2397296))

(declare-fun c!674292 () Bool)

(declare-fun size!30948 (List!41302) Int)

(assert (=> d!1147586 (= c!674292 (> (size!30948 (_1!23338 lt!1350399)) 0))))

(assert (=> d!1147586 (= lt!1350399 e!2397295)))

(declare-fun c!674293 () Bool)

(assert (=> d!1147586 (= c!674293 ((_ is Some!8807) lt!1350398))))

(assert (=> d!1147586 (= lt!1350398 (maxPrefix!3283 thiss!20629 rules!2768 lt!1350300))))

(assert (=> d!1147586 (= (lexList!1747 thiss!20629 rules!2768 lt!1350300) lt!1350399)))

(declare-fun b!3875232 () Bool)

(assert (=> b!3875232 (= e!2397297 (not (isEmpty!24439 (_1!23338 lt!1350399))))))

(assert (= (and d!1147586 c!674293) b!3875231))

(assert (= (and d!1147586 (not c!674293)) b!3875229))

(assert (= (and d!1147586 c!674292) b!3875230))

(assert (= (and d!1147586 (not c!674292)) b!3875228))

(assert (= (and b!3875230 res!1569890) b!3875232))

(declare-fun m!4432977 () Bool)

(assert (=> b!3875230 m!4432977))

(assert (=> b!3875230 m!4432769))

(declare-fun m!4432979 () Bool)

(assert (=> b!3875231 m!4432979))

(declare-fun m!4432981 () Bool)

(assert (=> d!1147586 m!4432981))

(assert (=> d!1147586 m!4432691))

(declare-fun m!4432983 () Bool)

(assert (=> b!3875232 m!4432983))

(assert (=> b!3875051 d!1147586))

(declare-fun b!3875242 () Bool)

(declare-fun e!2397302 () List!41302)

(assert (=> b!3875242 (= e!2397302 (Cons!41178 (h!46598 prefixTokens!80) (++!10538 (t!314849 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1147612 () Bool)

(declare-fun e!2397303 () Bool)

(assert (=> d!1147612 e!2397303))

(declare-fun res!1569896 () Bool)

(assert (=> d!1147612 (=> (not res!1569896) (not e!2397303))))

(declare-fun lt!1350403 () List!41302)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6156 (List!41302) (InoxSet Token!11918))

(assert (=> d!1147612 (= res!1569896 (= (content!6156 lt!1350403) ((_ map or) (content!6156 prefixTokens!80) (content!6156 suffixTokens!72))))))

(assert (=> d!1147612 (= lt!1350403 e!2397302)))

(declare-fun c!674296 () Bool)

(assert (=> d!1147612 (= c!674296 ((_ is Nil!41178) prefixTokens!80))))

(assert (=> d!1147612 (= (++!10538 prefixTokens!80 suffixTokens!72) lt!1350403)))

(declare-fun b!3875244 () Bool)

(assert (=> b!3875244 (= e!2397303 (or (not (= suffixTokens!72 Nil!41178)) (= lt!1350403 prefixTokens!80)))))

(declare-fun b!3875241 () Bool)

(assert (=> b!3875241 (= e!2397302 suffixTokens!72)))

(declare-fun b!3875243 () Bool)

(declare-fun res!1569895 () Bool)

(assert (=> b!3875243 (=> (not res!1569895) (not e!2397303))))

(assert (=> b!3875243 (= res!1569895 (= (size!30948 lt!1350403) (+ (size!30948 prefixTokens!80) (size!30948 suffixTokens!72))))))

(assert (= (and d!1147612 c!674296) b!3875241))

(assert (= (and d!1147612 (not c!674296)) b!3875242))

(assert (= (and d!1147612 res!1569896) b!3875243))

(assert (= (and b!3875243 res!1569895) b!3875244))

(declare-fun m!4432985 () Bool)

(assert (=> b!3875242 m!4432985))

(declare-fun m!4432987 () Bool)

(assert (=> d!1147612 m!4432987))

(declare-fun m!4432989 () Bool)

(assert (=> d!1147612 m!4432989))

(declare-fun m!4432991 () Bool)

(assert (=> d!1147612 m!4432991))

(declare-fun m!4432993 () Bool)

(assert (=> b!3875243 m!4432993))

(declare-fun m!4432995 () Bool)

(assert (=> b!3875243 m!4432995))

(declare-fun m!4432997 () Bool)

(assert (=> b!3875243 m!4432997))

(assert (=> b!3875051 d!1147612))

(declare-fun b!3875280 () Bool)

(declare-fun e!2397317 () List!41301)

(assert (=> b!3875280 (= e!2397317 suffix!1176)))

(declare-fun b!3875282 () Bool)

(declare-fun res!1569923 () Bool)

(declare-fun e!2397318 () Bool)

(assert (=> b!3875282 (=> (not res!1569923) (not e!2397318))))

(declare-fun lt!1350421 () List!41301)

(assert (=> b!3875282 (= res!1569923 (= (size!30946 lt!1350421) (+ (size!30946 prefix!426) (size!30946 suffix!1176))))))

(declare-fun b!3875281 () Bool)

(assert (=> b!3875281 (= e!2397317 (Cons!41177 (h!46597 prefix!426) (++!10537 (t!314848 prefix!426) suffix!1176)))))

(declare-fun b!3875283 () Bool)

(assert (=> b!3875283 (= e!2397318 (or (not (= suffix!1176 Nil!41177)) (= lt!1350421 prefix!426)))))

(declare-fun d!1147614 () Bool)

(assert (=> d!1147614 e!2397318))

(declare-fun res!1569922 () Bool)

(assert (=> d!1147614 (=> (not res!1569922) (not e!2397318))))

(declare-fun content!6157 (List!41301) (InoxSet C!22776))

(assert (=> d!1147614 (= res!1569922 (= (content!6157 lt!1350421) ((_ map or) (content!6157 prefix!426) (content!6157 suffix!1176))))))

(assert (=> d!1147614 (= lt!1350421 e!2397317)))

(declare-fun c!674302 () Bool)

(assert (=> d!1147614 (= c!674302 ((_ is Nil!41177) prefix!426))))

(assert (=> d!1147614 (= (++!10537 prefix!426 suffix!1176) lt!1350421)))

(assert (= (and d!1147614 c!674302) b!3875280))

(assert (= (and d!1147614 (not c!674302)) b!3875281))

(assert (= (and d!1147614 res!1569922) b!3875282))

(assert (= (and b!3875282 res!1569923) b!3875283))

(declare-fun m!4432999 () Bool)

(assert (=> b!3875282 m!4432999))

(assert (=> b!3875282 m!4432655))

(assert (=> b!3875282 m!4432679))

(declare-fun m!4433001 () Bool)

(assert (=> b!3875281 m!4433001))

(declare-fun m!4433003 () Bool)

(assert (=> d!1147614 m!4433003))

(declare-fun m!4433005 () Bool)

(assert (=> d!1147614 m!4433005))

(declare-fun m!4433007 () Bool)

(assert (=> d!1147614 m!4433007))

(assert (=> b!3875051 d!1147614))

(declare-fun b!3875285 () Bool)

(declare-fun e!2397319 () List!41302)

(assert (=> b!3875285 (= e!2397319 (Cons!41178 (h!46598 lt!1350301) (++!10538 (t!314849 lt!1350301) suffixTokens!72)))))

(declare-fun d!1147616 () Bool)

(declare-fun e!2397320 () Bool)

(assert (=> d!1147616 e!2397320))

(declare-fun res!1569925 () Bool)

(assert (=> d!1147616 (=> (not res!1569925) (not e!2397320))))

(declare-fun lt!1350422 () List!41302)

(assert (=> d!1147616 (= res!1569925 (= (content!6156 lt!1350422) ((_ map or) (content!6156 lt!1350301) (content!6156 suffixTokens!72))))))

(assert (=> d!1147616 (= lt!1350422 e!2397319)))

(declare-fun c!674303 () Bool)

(assert (=> d!1147616 (= c!674303 ((_ is Nil!41178) lt!1350301))))

(assert (=> d!1147616 (= (++!10538 lt!1350301 suffixTokens!72) lt!1350422)))

(declare-fun b!3875287 () Bool)

(assert (=> b!3875287 (= e!2397320 (or (not (= suffixTokens!72 Nil!41178)) (= lt!1350422 lt!1350301)))))

(declare-fun b!3875284 () Bool)

(assert (=> b!3875284 (= e!2397319 suffixTokens!72)))

(declare-fun b!3875286 () Bool)

(declare-fun res!1569924 () Bool)

(assert (=> b!3875286 (=> (not res!1569924) (not e!2397320))))

(assert (=> b!3875286 (= res!1569924 (= (size!30948 lt!1350422) (+ (size!30948 lt!1350301) (size!30948 suffixTokens!72))))))

(assert (= (and d!1147616 c!674303) b!3875284))

(assert (= (and d!1147616 (not c!674303)) b!3875285))

(assert (= (and d!1147616 res!1569925) b!3875286))

(assert (= (and b!3875286 res!1569924) b!3875287))

(declare-fun m!4433017 () Bool)

(assert (=> b!3875285 m!4433017))

(declare-fun m!4433019 () Bool)

(assert (=> d!1147616 m!4433019))

(declare-fun m!4433021 () Bool)

(assert (=> d!1147616 m!4433021))

(assert (=> d!1147616 m!4432991))

(declare-fun m!4433025 () Bool)

(assert (=> b!3875286 m!4433025))

(declare-fun m!4433027 () Bool)

(assert (=> b!3875286 m!4433027))

(assert (=> b!3875286 m!4432997))

(assert (=> b!3875073 d!1147616))

(declare-fun d!1147618 () Bool)

(assert (=> d!1147618 (= (tail!5931 prefixTokens!80) (t!314849 prefixTokens!80))))

(assert (=> b!3875073 d!1147618))

(declare-fun b!3875295 () Bool)

(declare-fun e!2397324 () Bool)

(assert (=> b!3875295 (= e!2397324 (>= (size!30946 lt!1350291) (size!30946 lt!1350288)))))

(declare-fun b!3875293 () Bool)

(declare-fun res!1569930 () Bool)

(declare-fun e!2397323 () Bool)

(assert (=> b!3875293 (=> (not res!1569930) (not e!2397323))))

(assert (=> b!3875293 (= res!1569930 (= (head!8215 lt!1350288) (head!8215 lt!1350291)))))

(declare-fun d!1147622 () Bool)

(assert (=> d!1147622 e!2397324))

(declare-fun res!1569931 () Bool)

(assert (=> d!1147622 (=> res!1569931 e!2397324)))

(declare-fun lt!1350424 () Bool)

(assert (=> d!1147622 (= res!1569931 (not lt!1350424))))

(declare-fun e!2397325 () Bool)

(assert (=> d!1147622 (= lt!1350424 e!2397325)))

(declare-fun res!1569928 () Bool)

(assert (=> d!1147622 (=> res!1569928 e!2397325)))

(assert (=> d!1147622 (= res!1569928 ((_ is Nil!41177) lt!1350288))))

(assert (=> d!1147622 (= (isPrefix!3489 lt!1350288 lt!1350291) lt!1350424)))

(declare-fun b!3875294 () Bool)

(assert (=> b!3875294 (= e!2397323 (isPrefix!3489 (tail!5932 lt!1350288) (tail!5932 lt!1350291)))))

(declare-fun b!3875292 () Bool)

(assert (=> b!3875292 (= e!2397325 e!2397323)))

(declare-fun res!1569929 () Bool)

(assert (=> b!3875292 (=> (not res!1569929) (not e!2397323))))

(assert (=> b!3875292 (= res!1569929 (not ((_ is Nil!41177) lt!1350291)))))

(assert (= (and d!1147622 (not res!1569928)) b!3875292))

(assert (= (and b!3875292 res!1569929) b!3875293))

(assert (= (and b!3875293 res!1569930) b!3875294))

(assert (= (and d!1147622 (not res!1569931)) b!3875295))

(declare-fun m!4433061 () Bool)

(assert (=> b!3875295 m!4433061))

(declare-fun m!4433063 () Bool)

(assert (=> b!3875295 m!4433063))

(declare-fun m!4433065 () Bool)

(assert (=> b!3875293 m!4433065))

(declare-fun m!4433067 () Bool)

(assert (=> b!3875293 m!4433067))

(declare-fun m!4433069 () Bool)

(assert (=> b!3875294 m!4433069))

(declare-fun m!4433071 () Bool)

(assert (=> b!3875294 m!4433071))

(assert (=> b!3875294 m!4433069))

(assert (=> b!3875294 m!4433071))

(declare-fun m!4433073 () Bool)

(assert (=> b!3875294 m!4433073))

(assert (=> b!3875073 d!1147622))

(declare-fun d!1147626 () Bool)

(assert (=> d!1147626 (isPrefix!3489 lt!1350288 (++!10537 lt!1350288 suffix!1176))))

(declare-fun lt!1350425 () Unit!59108)

(assert (=> d!1147626 (= lt!1350425 (choose!22952 lt!1350288 suffix!1176))))

(assert (=> d!1147626 (= (lemmaConcatTwoListThenFirstIsPrefix!2352 lt!1350288 suffix!1176) lt!1350425)))

(declare-fun bs!583623 () Bool)

(assert (= bs!583623 d!1147626))

(assert (=> bs!583623 m!4432665))

(assert (=> bs!583623 m!4432665))

(declare-fun m!4433075 () Bool)

(assert (=> bs!583623 m!4433075))

(declare-fun m!4433077 () Bool)

(assert (=> bs!583623 m!4433077))

(assert (=> b!3875073 d!1147626))

(declare-fun b!3875296 () Bool)

(declare-fun e!2397327 () Bool)

(declare-fun lt!1350427 () tuple2!40408)

(assert (=> b!3875296 (= e!2397327 (= (_2!23338 lt!1350427) lt!1350291))))

(declare-fun b!3875297 () Bool)

(declare-fun e!2397326 () tuple2!40408)

(assert (=> b!3875297 (= e!2397326 (tuple2!40409 Nil!41178 lt!1350291))))

(declare-fun b!3875298 () Bool)

(declare-fun e!2397328 () Bool)

(assert (=> b!3875298 (= e!2397327 e!2397328)))

(declare-fun res!1569932 () Bool)

(assert (=> b!3875298 (= res!1569932 (< (size!30946 (_2!23338 lt!1350427)) (size!30946 lt!1350291)))))

(assert (=> b!3875298 (=> (not res!1569932) (not e!2397328))))

(declare-fun b!3875299 () Bool)

(declare-fun lt!1350426 () Option!8808)

(declare-fun lt!1350428 () tuple2!40408)

(assert (=> b!3875299 (= e!2397326 (tuple2!40409 (Cons!41178 (_1!23337 (v!39105 lt!1350426)) (_1!23338 lt!1350428)) (_2!23338 lt!1350428)))))

(assert (=> b!3875299 (= lt!1350428 (lexList!1747 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350426))))))

(declare-fun d!1147628 () Bool)

(assert (=> d!1147628 e!2397327))

(declare-fun c!674305 () Bool)

(assert (=> d!1147628 (= c!674305 (> (size!30948 (_1!23338 lt!1350427)) 0))))

(assert (=> d!1147628 (= lt!1350427 e!2397326)))

(declare-fun c!674306 () Bool)

(assert (=> d!1147628 (= c!674306 ((_ is Some!8807) lt!1350426))))

(assert (=> d!1147628 (= lt!1350426 (maxPrefix!3283 thiss!20629 rules!2768 lt!1350291))))

(assert (=> d!1147628 (= (lexList!1747 thiss!20629 rules!2768 lt!1350291) lt!1350427)))

(declare-fun b!3875300 () Bool)

(assert (=> b!3875300 (= e!2397328 (not (isEmpty!24439 (_1!23338 lt!1350427))))))

(assert (= (and d!1147628 c!674306) b!3875299))

(assert (= (and d!1147628 (not c!674306)) b!3875297))

(assert (= (and d!1147628 c!674305) b!3875298))

(assert (= (and d!1147628 (not c!674305)) b!3875296))

(assert (= (and b!3875298 res!1569932) b!3875300))

(declare-fun m!4433079 () Bool)

(assert (=> b!3875298 m!4433079))

(assert (=> b!3875298 m!4433061))

(declare-fun m!4433081 () Bool)

(assert (=> b!3875299 m!4433081))

(declare-fun m!4433083 () Bool)

(assert (=> d!1147628 m!4433083))

(declare-fun m!4433085 () Bool)

(assert (=> d!1147628 m!4433085))

(declare-fun m!4433087 () Bool)

(assert (=> b!3875300 m!4433087))

(assert (=> b!3875052 d!1147628))

(declare-fun d!1147630 () Bool)

(declare-fun res!1569943 () Bool)

(declare-fun e!2397339 () Bool)

(assert (=> d!1147630 (=> (not res!1569943) (not e!2397339))))

(assert (=> d!1147630 (= res!1569943 (not (isEmpty!24440 (originalCharacters!6990 (h!46598 suffixTokens!72)))))))

(assert (=> d!1147630 (= (inv!55337 (h!46598 suffixTokens!72)) e!2397339)))

(declare-fun b!3875319 () Bool)

(declare-fun res!1569944 () Bool)

(assert (=> b!3875319 (=> (not res!1569944) (not e!2397339))))

(declare-fun dynLambda!17708 (Int TokenValue!6620) BalanceConc!24796)

(assert (=> b!3875319 (= res!1569944 (= (originalCharacters!6990 (h!46598 suffixTokens!72)) (list!15316 (dynLambda!17708 (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) (value!202749 (h!46598 suffixTokens!72))))))))

(declare-fun b!3875320 () Bool)

(assert (=> b!3875320 (= e!2397339 (= (size!30945 (h!46598 suffixTokens!72)) (size!30946 (originalCharacters!6990 (h!46598 suffixTokens!72)))))))

(assert (= (and d!1147630 res!1569943) b!3875319))

(assert (= (and b!3875319 res!1569944) b!3875320))

(declare-fun b_lambda!113153 () Bool)

(assert (=> (not b_lambda!113153) (not b!3875319)))

(declare-fun t!314858 () Bool)

(declare-fun tb!224855 () Bool)

(assert (=> (and b!3875072 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72))))) t!314858) tb!224855))

(declare-fun b!3875325 () Bool)

(declare-fun e!2397342 () Bool)

(declare-fun tp!1174830 () Bool)

(declare-fun inv!55341 (Conc!12601) Bool)

(assert (=> b!3875325 (= e!2397342 (and (inv!55341 (c!674255 (dynLambda!17708 (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) (value!202749 (h!46598 suffixTokens!72))))) tp!1174830))))

(declare-fun result!273882 () Bool)

(declare-fun inv!55342 (BalanceConc!24796) Bool)

(assert (=> tb!224855 (= result!273882 (and (inv!55342 (dynLambda!17708 (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) (value!202749 (h!46598 suffixTokens!72)))) e!2397342))))

(assert (= tb!224855 b!3875325))

(declare-fun m!4433121 () Bool)

(assert (=> b!3875325 m!4433121))

(declare-fun m!4433123 () Bool)

(assert (=> tb!224855 m!4433123))

(assert (=> b!3875319 t!314858))

(declare-fun b_and!290565 () Bool)

(assert (= b_and!290549 (and (=> t!314858 result!273882) b_and!290565)))

(declare-fun tb!224857 () Bool)

(declare-fun t!314860 () Bool)

(assert (=> (and b!3875053 (= (toChars!8677 (transformation!6390 (h!46599 rules!2768))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72))))) t!314860) tb!224857))

(declare-fun result!273886 () Bool)

(assert (= result!273886 result!273882))

(assert (=> b!3875319 t!314860))

(declare-fun b_and!290567 () Bool)

(assert (= b_and!290553 (and (=> t!314860 result!273886) b_and!290567)))

(declare-fun t!314862 () Bool)

(declare-fun tb!224859 () Bool)

(assert (=> (and b!3875068 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72))))) t!314862) tb!224859))

(declare-fun result!273888 () Bool)

(assert (= result!273888 result!273882))

(assert (=> b!3875319 t!314862))

(declare-fun b_and!290569 () Bool)

(assert (= b_and!290557 (and (=> t!314862 result!273888) b_and!290569)))

(declare-fun m!4433125 () Bool)

(assert (=> d!1147630 m!4433125))

(declare-fun m!4433127 () Bool)

(assert (=> b!3875319 m!4433127))

(assert (=> b!3875319 m!4433127))

(declare-fun m!4433129 () Bool)

(assert (=> b!3875319 m!4433129))

(declare-fun m!4433131 () Bool)

(assert (=> b!3875320 m!4433131))

(assert (=> b!3875031 d!1147630))

(declare-fun b!3875326 () Bool)

(declare-fun e!2397344 () Bool)

(declare-fun lt!1350439 () tuple2!40408)

(assert (=> b!3875326 (= e!2397344 (= (_2!23338 lt!1350439) (_2!23337 lt!1350294)))))

(declare-fun b!3875327 () Bool)

(declare-fun e!2397343 () tuple2!40408)

(assert (=> b!3875327 (= e!2397343 (tuple2!40409 Nil!41178 (_2!23337 lt!1350294)))))

(declare-fun b!3875328 () Bool)

(declare-fun e!2397345 () Bool)

(assert (=> b!3875328 (= e!2397344 e!2397345)))

(declare-fun res!1569945 () Bool)

(assert (=> b!3875328 (= res!1569945 (< (size!30946 (_2!23338 lt!1350439)) (size!30946 (_2!23337 lt!1350294))))))

(assert (=> b!3875328 (=> (not res!1569945) (not e!2397345))))

(declare-fun b!3875329 () Bool)

(declare-fun lt!1350438 () Option!8808)

(declare-fun lt!1350440 () tuple2!40408)

(assert (=> b!3875329 (= e!2397343 (tuple2!40409 (Cons!41178 (_1!23337 (v!39105 lt!1350438)) (_1!23338 lt!1350440)) (_2!23338 lt!1350440)))))

(assert (=> b!3875329 (= lt!1350440 (lexList!1747 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350438))))))

(declare-fun d!1147642 () Bool)

(assert (=> d!1147642 e!2397344))

(declare-fun c!674311 () Bool)

(assert (=> d!1147642 (= c!674311 (> (size!30948 (_1!23338 lt!1350439)) 0))))

(assert (=> d!1147642 (= lt!1350439 e!2397343)))

(declare-fun c!674312 () Bool)

(assert (=> d!1147642 (= c!674312 ((_ is Some!8807) lt!1350438))))

(assert (=> d!1147642 (= lt!1350438 (maxPrefix!3283 thiss!20629 rules!2768 (_2!23337 lt!1350294)))))

(assert (=> d!1147642 (= (lexList!1747 thiss!20629 rules!2768 (_2!23337 lt!1350294)) lt!1350439)))

(declare-fun b!3875330 () Bool)

(assert (=> b!3875330 (= e!2397345 (not (isEmpty!24439 (_1!23338 lt!1350439))))))

(assert (= (and d!1147642 c!674312) b!3875329))

(assert (= (and d!1147642 (not c!674312)) b!3875327))

(assert (= (and d!1147642 c!674311) b!3875328))

(assert (= (and d!1147642 (not c!674311)) b!3875326))

(assert (= (and b!3875328 res!1569945) b!3875330))

(declare-fun m!4433133 () Bool)

(assert (=> b!3875328 m!4433133))

(assert (=> b!3875328 m!4432767))

(declare-fun m!4433135 () Bool)

(assert (=> b!3875329 m!4433135))

(declare-fun m!4433137 () Bool)

(assert (=> d!1147642 m!4433137))

(declare-fun m!4433139 () Bool)

(assert (=> d!1147642 m!4433139))

(declare-fun m!4433141 () Bool)

(assert (=> b!3875330 m!4433141))

(assert (=> bm!282781 d!1147642))

(declare-fun d!1147644 () Bool)

(assert (=> d!1147644 (= (_2!23337 (v!39105 lt!1350281)) lt!1350316)))

(declare-fun lt!1350441 () Unit!59108)

(assert (=> d!1147644 (= lt!1350441 (choose!22956 lt!1350325 (_2!23337 (v!39105 lt!1350281)) lt!1350325 lt!1350316 lt!1350300))))

(assert (=> d!1147644 (isPrefix!3489 lt!1350325 lt!1350300)))

(assert (=> d!1147644 (= (lemmaSamePrefixThenSameSuffix!1710 lt!1350325 (_2!23337 (v!39105 lt!1350281)) lt!1350325 lt!1350316 lt!1350300) lt!1350441)))

(declare-fun bs!583626 () Bool)

(assert (= bs!583626 d!1147644))

(declare-fun m!4433143 () Bool)

(assert (=> bs!583626 m!4433143))

(assert (=> bs!583626 m!4432811))

(assert (=> b!3875032 d!1147644))

(declare-fun d!1147646 () Bool)

(assert (=> d!1147646 (ruleValid!2342 thiss!20629 (rule!9284 (_1!23337 (v!39105 lt!1350281))))))

(declare-fun lt!1350444 () Unit!59108)

(declare-fun choose!22963 (LexerInterface!5979 Rule!12580 List!41303) Unit!59108)

(assert (=> d!1147646 (= lt!1350444 (choose!22963 thiss!20629 (rule!9284 (_1!23337 (v!39105 lt!1350281))) rules!2768))))

(declare-fun contains!8295 (List!41303 Rule!12580) Bool)

(assert (=> d!1147646 (contains!8295 rules!2768 (rule!9284 (_1!23337 (v!39105 lt!1350281))))))

(assert (=> d!1147646 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1422 thiss!20629 (rule!9284 (_1!23337 (v!39105 lt!1350281))) rules!2768) lt!1350444)))

(declare-fun bs!583627 () Bool)

(assert (= bs!583627 d!1147646))

(assert (=> bs!583627 m!4432723))

(declare-fun m!4433145 () Bool)

(assert (=> bs!583627 m!4433145))

(declare-fun m!4433147 () Bool)

(assert (=> bs!583627 m!4433147))

(assert (=> b!3875032 d!1147646))

(declare-fun d!1147648 () Bool)

(assert (=> d!1147648 (= (size!30945 (_1!23337 (v!39105 lt!1350281))) (size!30946 (originalCharacters!6990 (_1!23337 (v!39105 lt!1350281)))))))

(declare-fun Unit!59120 () Unit!59108)

(assert (=> d!1147648 (= (lemmaCharactersSize!1051 (_1!23337 (v!39105 lt!1350281))) Unit!59120)))

(declare-fun bs!583628 () Bool)

(assert (= bs!583628 d!1147648))

(assert (=> bs!583628 m!4432783))

(assert (=> b!3875032 d!1147648))

(declare-fun d!1147650 () Bool)

(declare-fun list!15317 (Conc!12601) List!41301)

(assert (=> d!1147650 (= (list!15316 (charsOf!4218 (_1!23337 (v!39105 lt!1350281)))) (list!15317 (c!674255 (charsOf!4218 (_1!23337 (v!39105 lt!1350281))))))))

(declare-fun bs!583629 () Bool)

(assert (= bs!583629 d!1147650))

(declare-fun m!4433149 () Bool)

(assert (=> bs!583629 m!4433149))

(assert (=> b!3875032 d!1147650))

(declare-fun b!3875331 () Bool)

(declare-fun e!2397347 () Bool)

(declare-fun lt!1350446 () tuple2!40408)

(assert (=> b!3875331 (= e!2397347 (= (_2!23338 lt!1350446) (_2!23337 (v!39105 lt!1350281))))))

(declare-fun b!3875332 () Bool)

(declare-fun e!2397346 () tuple2!40408)

(assert (=> b!3875332 (= e!2397346 (tuple2!40409 Nil!41178 (_2!23337 (v!39105 lt!1350281))))))

(declare-fun b!3875333 () Bool)

(declare-fun e!2397348 () Bool)

(assert (=> b!3875333 (= e!2397347 e!2397348)))

(declare-fun res!1569946 () Bool)

(assert (=> b!3875333 (= res!1569946 (< (size!30946 (_2!23338 lt!1350446)) (size!30946 (_2!23337 (v!39105 lt!1350281)))))))

(assert (=> b!3875333 (=> (not res!1569946) (not e!2397348))))

(declare-fun b!3875334 () Bool)

(declare-fun lt!1350445 () Option!8808)

(declare-fun lt!1350447 () tuple2!40408)

(assert (=> b!3875334 (= e!2397346 (tuple2!40409 (Cons!41178 (_1!23337 (v!39105 lt!1350445)) (_1!23338 lt!1350447)) (_2!23338 lt!1350447)))))

(assert (=> b!3875334 (= lt!1350447 (lexList!1747 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350445))))))

(declare-fun d!1147652 () Bool)

(assert (=> d!1147652 e!2397347))

(declare-fun c!674313 () Bool)

(assert (=> d!1147652 (= c!674313 (> (size!30948 (_1!23338 lt!1350446)) 0))))

(assert (=> d!1147652 (= lt!1350446 e!2397346)))

(declare-fun c!674314 () Bool)

(assert (=> d!1147652 (= c!674314 ((_ is Some!8807) lt!1350445))))

(assert (=> d!1147652 (= lt!1350445 (maxPrefix!3283 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350281))))))

(assert (=> d!1147652 (= (lexList!1747 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350281))) lt!1350446)))

(declare-fun b!3875335 () Bool)

(assert (=> b!3875335 (= e!2397348 (not (isEmpty!24439 (_1!23338 lt!1350446))))))

(assert (= (and d!1147652 c!674314) b!3875334))

(assert (= (and d!1147652 (not c!674314)) b!3875332))

(assert (= (and d!1147652 c!674313) b!3875333))

(assert (= (and d!1147652 (not c!674313)) b!3875331))

(assert (= (and b!3875333 res!1569946) b!3875335))

(declare-fun m!4433151 () Bool)

(assert (=> b!3875333 m!4433151))

(assert (=> b!3875333 m!4432681))

(declare-fun m!4433153 () Bool)

(assert (=> b!3875334 m!4433153))

(declare-fun m!4433155 () Bool)

(assert (=> d!1147652 m!4433155))

(declare-fun m!4433157 () Bool)

(assert (=> d!1147652 m!4433157))

(declare-fun m!4433159 () Bool)

(assert (=> b!3875335 m!4433159))

(assert (=> b!3875032 d!1147652))

(declare-fun d!1147654 () Bool)

(declare-fun dynLambda!17709 (Int BalanceConc!24796) TokenValue!6620)

(assert (=> d!1147654 (= (apply!9633 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) (seqFromList!4661 lt!1350325)) (dynLambda!17709 (toValue!8818 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281))))) (seqFromList!4661 lt!1350325)))))

(declare-fun b_lambda!113155 () Bool)

(assert (=> (not b_lambda!113155) (not d!1147654)))

(declare-fun t!314864 () Bool)

(declare-fun tb!224861 () Bool)

(assert (=> (and b!3875072 (= (toValue!8818 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) (toValue!8818 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314864) tb!224861))

(declare-fun result!273890 () Bool)

(assert (=> tb!224861 (= result!273890 (inv!21 (dynLambda!17709 (toValue!8818 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281))))) (seqFromList!4661 lt!1350325))))))

(declare-fun m!4433161 () Bool)

(assert (=> tb!224861 m!4433161))

(assert (=> d!1147654 t!314864))

(declare-fun b_and!290571 () Bool)

(assert (= b_and!290547 (and (=> t!314864 result!273890) b_and!290571)))

(declare-fun t!314866 () Bool)

(declare-fun tb!224863 () Bool)

(assert (=> (and b!3875053 (= (toValue!8818 (transformation!6390 (h!46599 rules!2768))) (toValue!8818 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314866) tb!224863))

(declare-fun result!273894 () Bool)

(assert (= result!273894 result!273890))

(assert (=> d!1147654 t!314866))

(declare-fun b_and!290573 () Bool)

(assert (= b_and!290551 (and (=> t!314866 result!273894) b_and!290573)))

(declare-fun t!314868 () Bool)

(declare-fun tb!224865 () Bool)

(assert (=> (and b!3875068 (= (toValue!8818 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) (toValue!8818 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314868) tb!224865))

(declare-fun result!273896 () Bool)

(assert (= result!273896 result!273890))

(assert (=> d!1147654 t!314868))

(declare-fun b_and!290575 () Bool)

(assert (= b_and!290555 (and (=> t!314868 result!273896) b_and!290575)))

(assert (=> d!1147654 m!4432715))

(declare-fun m!4433163 () Bool)

(assert (=> d!1147654 m!4433163))

(assert (=> b!3875032 d!1147654))

(declare-fun d!1147656 () Bool)

(assert (=> d!1147656 (isPrefix!3489 lt!1350325 (++!10537 lt!1350325 (_2!23337 (v!39105 lt!1350281))))))

(declare-fun lt!1350448 () Unit!59108)

(assert (=> d!1147656 (= lt!1350448 (choose!22952 lt!1350325 (_2!23337 (v!39105 lt!1350281))))))

(assert (=> d!1147656 (= (lemmaConcatTwoListThenFirstIsPrefix!2352 lt!1350325 (_2!23337 (v!39105 lt!1350281))) lt!1350448)))

(declare-fun bs!583630 () Bool)

(assert (= bs!583630 d!1147656))

(assert (=> bs!583630 m!4432739))

(assert (=> bs!583630 m!4432739))

(declare-fun m!4433165 () Bool)

(assert (=> bs!583630 m!4433165))

(declare-fun m!4433167 () Bool)

(assert (=> bs!583630 m!4433167))

(assert (=> b!3875032 d!1147656))

(declare-fun d!1147658 () Bool)

(declare-fun res!1569951 () Bool)

(declare-fun e!2397354 () Bool)

(assert (=> d!1147658 (=> (not res!1569951) (not e!2397354))))

(declare-fun validRegex!5141 (Regex!11295) Bool)

(assert (=> d!1147658 (= res!1569951 (validRegex!5141 (regex!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281))))))))

(assert (=> d!1147658 (= (ruleValid!2342 thiss!20629 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) e!2397354)))

(declare-fun b!3875342 () Bool)

(declare-fun res!1569952 () Bool)

(assert (=> b!3875342 (=> (not res!1569952) (not e!2397354))))

(declare-fun nullable!3942 (Regex!11295) Bool)

(assert (=> b!3875342 (= res!1569952 (not (nullable!3942 (regex!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))))))

(declare-fun b!3875343 () Bool)

(assert (=> b!3875343 (= e!2397354 (not (= (tag!7250 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) (String!46819 ""))))))

(assert (= (and d!1147658 res!1569951) b!3875342))

(assert (= (and b!3875342 res!1569952) b!3875343))

(declare-fun m!4433171 () Bool)

(assert (=> d!1147658 m!4433171))

(declare-fun m!4433173 () Bool)

(assert (=> b!3875342 m!4433173))

(assert (=> b!3875032 d!1147658))

(declare-fun d!1147662 () Bool)

(declare-fun lt!1350456 () BalanceConc!24796)

(assert (=> d!1147662 (= (list!15316 lt!1350456) (originalCharacters!6990 (_1!23337 (v!39105 lt!1350281))))))

(assert (=> d!1147662 (= lt!1350456 (dynLambda!17708 (toChars!8677 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281))))) (value!202749 (_1!23337 (v!39105 lt!1350281)))))))

(assert (=> d!1147662 (= (charsOf!4218 (_1!23337 (v!39105 lt!1350281))) lt!1350456)))

(declare-fun b_lambda!113159 () Bool)

(assert (=> (not b_lambda!113159) (not d!1147662)))

(declare-fun t!314876 () Bool)

(declare-fun tb!224873 () Bool)

(assert (=> (and b!3875072 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) (toChars!8677 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314876) tb!224873))

(declare-fun b!3875351 () Bool)

(declare-fun e!2397359 () Bool)

(declare-fun tp!1174832 () Bool)

(assert (=> b!3875351 (= e!2397359 (and (inv!55341 (c!674255 (dynLambda!17708 (toChars!8677 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281))))) (value!202749 (_1!23337 (v!39105 lt!1350281)))))) tp!1174832))))

(declare-fun result!273904 () Bool)

(assert (=> tb!224873 (= result!273904 (and (inv!55342 (dynLambda!17708 (toChars!8677 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281))))) (value!202749 (_1!23337 (v!39105 lt!1350281))))) e!2397359))))

(assert (= tb!224873 b!3875351))

(declare-fun m!4433191 () Bool)

(assert (=> b!3875351 m!4433191))

(declare-fun m!4433193 () Bool)

(assert (=> tb!224873 m!4433193))

(assert (=> d!1147662 t!314876))

(declare-fun b_and!290583 () Bool)

(assert (= b_and!290565 (and (=> t!314876 result!273904) b_and!290583)))

(declare-fun tb!224875 () Bool)

(declare-fun t!314878 () Bool)

(assert (=> (and b!3875053 (= (toChars!8677 (transformation!6390 (h!46599 rules!2768))) (toChars!8677 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314878) tb!224875))

(declare-fun result!273906 () Bool)

(assert (= result!273906 result!273904))

(assert (=> d!1147662 t!314878))

(declare-fun b_and!290585 () Bool)

(assert (= b_and!290567 (and (=> t!314878 result!273906) b_and!290585)))

(declare-fun t!314880 () Bool)

(declare-fun tb!224877 () Bool)

(assert (=> (and b!3875068 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) (toChars!8677 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314880) tb!224877))

(declare-fun result!273908 () Bool)

(assert (= result!273908 result!273904))

(assert (=> d!1147662 t!314880))

(declare-fun b_and!290587 () Bool)

(assert (= b_and!290569 (and (=> t!314880 result!273908) b_and!290587)))

(declare-fun m!4433195 () Bool)

(assert (=> d!1147662 m!4433195))

(declare-fun m!4433197 () Bool)

(assert (=> d!1147662 m!4433197))

(assert (=> b!3875032 d!1147662))

(declare-fun d!1147672 () Bool)

(declare-fun lt!1350460 () Int)

(assert (=> d!1147672 (>= lt!1350460 0)))

(declare-fun e!2397363 () Int)

(assert (=> d!1147672 (= lt!1350460 e!2397363)))

(declare-fun c!674319 () Bool)

(assert (=> d!1147672 (= c!674319 ((_ is Nil!41177) lt!1350325))))

(assert (=> d!1147672 (= (size!30946 lt!1350325) lt!1350460)))

(declare-fun b!3875357 () Bool)

(assert (=> b!3875357 (= e!2397363 0)))

(declare-fun b!3875358 () Bool)

(assert (=> b!3875358 (= e!2397363 (+ 1 (size!30946 (t!314848 lt!1350325))))))

(assert (= (and d!1147672 c!674319) b!3875357))

(assert (= (and d!1147672 (not c!674319)) b!3875358))

(declare-fun m!4433207 () Bool)

(assert (=> b!3875358 m!4433207))

(assert (=> b!3875032 d!1147672))

(declare-fun d!1147674 () Bool)

(declare-fun fromListB!2152 (List!41301) BalanceConc!24796)

(assert (=> d!1147674 (= (seqFromList!4661 lt!1350325) (fromListB!2152 lt!1350325))))

(declare-fun bs!583632 () Bool)

(assert (= bs!583632 d!1147674))

(declare-fun m!4433211 () Bool)

(assert (=> bs!583632 m!4433211))

(assert (=> b!3875032 d!1147674))

(declare-fun b!3875359 () Bool)

(declare-fun e!2397364 () List!41301)

(assert (=> b!3875359 (= e!2397364 (_2!23337 (v!39105 lt!1350281)))))

(declare-fun b!3875361 () Bool)

(declare-fun res!1569957 () Bool)

(declare-fun e!2397365 () Bool)

(assert (=> b!3875361 (=> (not res!1569957) (not e!2397365))))

(declare-fun lt!1350461 () List!41301)

(assert (=> b!3875361 (= res!1569957 (= (size!30946 lt!1350461) (+ (size!30946 lt!1350325) (size!30946 (_2!23337 (v!39105 lt!1350281))))))))

(declare-fun b!3875360 () Bool)

(assert (=> b!3875360 (= e!2397364 (Cons!41177 (h!46597 lt!1350325) (++!10537 (t!314848 lt!1350325) (_2!23337 (v!39105 lt!1350281)))))))

(declare-fun b!3875362 () Bool)

(assert (=> b!3875362 (= e!2397365 (or (not (= (_2!23337 (v!39105 lt!1350281)) Nil!41177)) (= lt!1350461 lt!1350325)))))

(declare-fun d!1147678 () Bool)

(assert (=> d!1147678 e!2397365))

(declare-fun res!1569956 () Bool)

(assert (=> d!1147678 (=> (not res!1569956) (not e!2397365))))

(assert (=> d!1147678 (= res!1569956 (= (content!6157 lt!1350461) ((_ map or) (content!6157 lt!1350325) (content!6157 (_2!23337 (v!39105 lt!1350281))))))))

(assert (=> d!1147678 (= lt!1350461 e!2397364)))

(declare-fun c!674320 () Bool)

(assert (=> d!1147678 (= c!674320 ((_ is Nil!41177) lt!1350325))))

(assert (=> d!1147678 (= (++!10537 lt!1350325 (_2!23337 (v!39105 lt!1350281))) lt!1350461)))

(assert (= (and d!1147678 c!674320) b!3875359))

(assert (= (and d!1147678 (not c!674320)) b!3875360))

(assert (= (and d!1147678 res!1569956) b!3875361))

(assert (= (and b!3875361 res!1569957) b!3875362))

(declare-fun m!4433213 () Bool)

(assert (=> b!3875361 m!4433213))

(assert (=> b!3875361 m!4432733))

(assert (=> b!3875361 m!4432681))

(declare-fun m!4433215 () Bool)

(assert (=> b!3875360 m!4433215))

(declare-fun m!4433217 () Bool)

(assert (=> d!1147678 m!4433217))

(declare-fun m!4433219 () Bool)

(assert (=> d!1147678 m!4433219))

(declare-fun m!4433221 () Bool)

(assert (=> d!1147678 m!4433221))

(assert (=> b!3875032 d!1147678))

(declare-fun d!1147680 () Bool)

(declare-fun lt!1350466 () List!41301)

(assert (=> d!1147680 (= (++!10537 lt!1350325 lt!1350466) lt!1350300)))

(declare-fun e!2397372 () List!41301)

(assert (=> d!1147680 (= lt!1350466 e!2397372)))

(declare-fun c!674323 () Bool)

(assert (=> d!1147680 (= c!674323 ((_ is Cons!41177) lt!1350325))))

(assert (=> d!1147680 (>= (size!30946 lt!1350300) (size!30946 lt!1350325))))

(assert (=> d!1147680 (= (getSuffix!1944 lt!1350300 lt!1350325) lt!1350466)))

(declare-fun b!3875371 () Bool)

(assert (=> b!3875371 (= e!2397372 (getSuffix!1944 (tail!5932 lt!1350300) (t!314848 lt!1350325)))))

(declare-fun b!3875372 () Bool)

(assert (=> b!3875372 (= e!2397372 lt!1350300)))

(assert (= (and d!1147680 c!674323) b!3875371))

(assert (= (and d!1147680 (not c!674323)) b!3875372))

(declare-fun m!4433223 () Bool)

(assert (=> d!1147680 m!4433223))

(assert (=> d!1147680 m!4432769))

(assert (=> d!1147680 m!4432733))

(assert (=> b!3875371 m!4432795))

(assert (=> b!3875371 m!4432795))

(declare-fun m!4433225 () Bool)

(assert (=> b!3875371 m!4433225))

(assert (=> b!3875032 d!1147680))

(declare-fun b!3875376 () Bool)

(declare-fun e!2397374 () Bool)

(assert (=> b!3875376 (= e!2397374 (>= (size!30946 lt!1350279) (size!30946 lt!1350325)))))

(declare-fun b!3875374 () Bool)

(declare-fun res!1569964 () Bool)

(declare-fun e!2397373 () Bool)

(assert (=> b!3875374 (=> (not res!1569964) (not e!2397373))))

(assert (=> b!3875374 (= res!1569964 (= (head!8215 lt!1350325) (head!8215 lt!1350279)))))

(declare-fun d!1147682 () Bool)

(assert (=> d!1147682 e!2397374))

(declare-fun res!1569965 () Bool)

(assert (=> d!1147682 (=> res!1569965 e!2397374)))

(declare-fun lt!1350467 () Bool)

(assert (=> d!1147682 (= res!1569965 (not lt!1350467))))

(declare-fun e!2397375 () Bool)

(assert (=> d!1147682 (= lt!1350467 e!2397375)))

(declare-fun res!1569962 () Bool)

(assert (=> d!1147682 (=> res!1569962 e!2397375)))

(assert (=> d!1147682 (= res!1569962 ((_ is Nil!41177) lt!1350325))))

(assert (=> d!1147682 (= (isPrefix!3489 lt!1350325 lt!1350279) lt!1350467)))

(declare-fun b!3875375 () Bool)

(assert (=> b!3875375 (= e!2397373 (isPrefix!3489 (tail!5932 lt!1350325) (tail!5932 lt!1350279)))))

(declare-fun b!3875373 () Bool)

(assert (=> b!3875373 (= e!2397375 e!2397373)))

(declare-fun res!1569963 () Bool)

(assert (=> b!3875373 (=> (not res!1569963) (not e!2397373))))

(assert (=> b!3875373 (= res!1569963 (not ((_ is Nil!41177) lt!1350279)))))

(assert (= (and d!1147682 (not res!1569962)) b!3875373))

(assert (= (and b!3875373 res!1569963) b!3875374))

(assert (= (and b!3875374 res!1569964) b!3875375))

(assert (= (and d!1147682 (not res!1569965)) b!3875376))

(declare-fun m!4433227 () Bool)

(assert (=> b!3875376 m!4433227))

(assert (=> b!3875376 m!4432733))

(assert (=> b!3875374 m!4432799))

(declare-fun m!4433229 () Bool)

(assert (=> b!3875374 m!4433229))

(assert (=> b!3875375 m!4432801))

(declare-fun m!4433231 () Bool)

(assert (=> b!3875375 m!4433231))

(assert (=> b!3875375 m!4432801))

(assert (=> b!3875375 m!4433231))

(declare-fun m!4433233 () Bool)

(assert (=> b!3875375 m!4433233))

(assert (=> b!3875032 d!1147682))

(declare-fun d!1147684 () Bool)

(assert (=> d!1147684 (not (= (lexList!1747 thiss!20629 rules!2768 suffix!1176) (tuple2!40409 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1350468 () Unit!59108)

(assert (=> d!1147684 (= lt!1350468 (choose!22959 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350281)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1147684 (not (isEmpty!24438 rules!2768))))

(assert (=> d!1147684 (= (lemmaLexWithSmallerInputCannotProduceSameResults!50 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350281)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1350468)))

(declare-fun bs!583633 () Bool)

(assert (= bs!583633 d!1147684))

(assert (=> bs!583633 m!4432741))

(declare-fun m!4433235 () Bool)

(assert (=> bs!583633 m!4433235))

(assert (=> bs!583633 m!4432675))

(assert (=> b!3875074 d!1147684))

(declare-fun d!1147686 () Bool)

(declare-fun lt!1350469 () Int)

(assert (=> d!1147686 (>= lt!1350469 0)))

(declare-fun e!2397376 () Int)

(assert (=> d!1147686 (= lt!1350469 e!2397376)))

(declare-fun c!674324 () Bool)

(assert (=> d!1147686 (= c!674324 ((_ is Nil!41177) (_2!23337 lt!1350294)))))

(assert (=> d!1147686 (= (size!30946 (_2!23337 lt!1350294)) lt!1350469)))

(declare-fun b!3875377 () Bool)

(assert (=> b!3875377 (= e!2397376 0)))

(declare-fun b!3875378 () Bool)

(assert (=> b!3875378 (= e!2397376 (+ 1 (size!30946 (t!314848 (_2!23337 lt!1350294)))))))

(assert (= (and d!1147686 c!674324) b!3875377))

(assert (= (and d!1147686 (not c!674324)) b!3875378))

(declare-fun m!4433237 () Bool)

(assert (=> b!3875378 m!4433237))

(assert (=> b!3875054 d!1147686))

(declare-fun b!3875397 () Bool)

(declare-fun res!1569986 () Bool)

(declare-fun e!2397387 () Bool)

(assert (=> b!3875397 (=> (not res!1569986) (not e!2397387))))

(declare-fun lt!1350483 () Option!8808)

(assert (=> b!3875397 (= res!1569986 (= (rule!9284 (_1!23337 (get!13625 lt!1350483))) (rule!9284 (_1!23337 (v!39105 lt!1350281)))))))

(declare-fun d!1147688 () Bool)

(declare-fun e!2397388 () Bool)

(assert (=> d!1147688 e!2397388))

(declare-fun res!1569982 () Bool)

(assert (=> d!1147688 (=> res!1569982 e!2397388)))

(declare-fun isEmpty!24442 (Option!8808) Bool)

(assert (=> d!1147688 (= res!1569982 (isEmpty!24442 lt!1350483))))

(declare-fun e!2397385 () Option!8808)

(assert (=> d!1147688 (= lt!1350483 e!2397385)))

(declare-fun c!674327 () Bool)

(declare-datatypes ((tuple2!40412 0))(
  ( (tuple2!40413 (_1!23340 List!41301) (_2!23340 List!41301)) )
))
(declare-fun lt!1350481 () tuple2!40412)

(assert (=> d!1147688 (= c!674327 (isEmpty!24440 (_1!23340 lt!1350481)))))

(declare-fun findLongestMatch!1122 (Regex!11295 List!41301) tuple2!40412)

(assert (=> d!1147688 (= lt!1350481 (findLongestMatch!1122 (regex!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) lt!1350300))))

(assert (=> d!1147688 (ruleValid!2342 thiss!20629 (rule!9284 (_1!23337 (v!39105 lt!1350281))))))

(assert (=> d!1147688 (= (maxPrefixOneRule!2365 thiss!20629 (rule!9284 (_1!23337 (v!39105 lt!1350281))) lt!1350300) lt!1350483)))

(declare-fun b!3875398 () Bool)

(declare-fun res!1569980 () Bool)

(assert (=> b!3875398 (=> (not res!1569980) (not e!2397387))))

(assert (=> b!3875398 (= res!1569980 (= (++!10537 (list!15316 (charsOf!4218 (_1!23337 (get!13625 lt!1350483)))) (_2!23337 (get!13625 lt!1350483))) lt!1350300))))

(declare-fun b!3875399 () Bool)

(assert (=> b!3875399 (= e!2397387 (= (size!30945 (_1!23337 (get!13625 lt!1350483))) (size!30946 (originalCharacters!6990 (_1!23337 (get!13625 lt!1350483))))))))

(declare-fun b!3875400 () Bool)

(declare-fun res!1569984 () Bool)

(assert (=> b!3875400 (=> (not res!1569984) (not e!2397387))))

(assert (=> b!3875400 (= res!1569984 (< (size!30946 (_2!23337 (get!13625 lt!1350483))) (size!30946 lt!1350300)))))

(declare-fun b!3875401 () Bool)

(declare-fun e!2397386 () Bool)

(declare-fun matchR!5420 (Regex!11295 List!41301) Bool)

(declare-fun findLongestMatchInner!1210 (Regex!11295 List!41301 Int List!41301 List!41301 Int) tuple2!40412)

(assert (=> b!3875401 (= e!2397386 (matchR!5420 (regex!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) (_1!23340 (findLongestMatchInner!1210 (regex!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) Nil!41177 (size!30946 Nil!41177) lt!1350300 lt!1350300 (size!30946 lt!1350300)))))))

(declare-fun b!3875402 () Bool)

(declare-fun res!1569985 () Bool)

(assert (=> b!3875402 (=> (not res!1569985) (not e!2397387))))

(assert (=> b!3875402 (= res!1569985 (= (value!202749 (_1!23337 (get!13625 lt!1350483))) (apply!9633 (transformation!6390 (rule!9284 (_1!23337 (get!13625 lt!1350483)))) (seqFromList!4661 (originalCharacters!6990 (_1!23337 (get!13625 lt!1350483)))))))))

(declare-fun b!3875403 () Bool)

(assert (=> b!3875403 (= e!2397385 None!8807)))

(declare-fun b!3875404 () Bool)

(assert (=> b!3875404 (= e!2397388 e!2397387)))

(declare-fun res!1569983 () Bool)

(assert (=> b!3875404 (=> (not res!1569983) (not e!2397387))))

(assert (=> b!3875404 (= res!1569983 (matchR!5420 (regex!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) (list!15316 (charsOf!4218 (_1!23337 (get!13625 lt!1350483))))))))

(declare-fun b!3875405 () Bool)

(declare-fun size!30950 (BalanceConc!24796) Int)

(assert (=> b!3875405 (= e!2397385 (Some!8807 (tuple2!40407 (Token!11919 (apply!9633 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) (seqFromList!4661 (_1!23340 lt!1350481))) (rule!9284 (_1!23337 (v!39105 lt!1350281))) (size!30950 (seqFromList!4661 (_1!23340 lt!1350481))) (_1!23340 lt!1350481)) (_2!23340 lt!1350481))))))

(declare-fun lt!1350482 () Unit!59108)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1183 (Regex!11295 List!41301) Unit!59108)

(assert (=> b!3875405 (= lt!1350482 (longestMatchIsAcceptedByMatchOrIsEmpty!1183 (regex!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) lt!1350300))))

(declare-fun res!1569981 () Bool)

(assert (=> b!3875405 (= res!1569981 (isEmpty!24440 (_1!23340 (findLongestMatchInner!1210 (regex!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) Nil!41177 (size!30946 Nil!41177) lt!1350300 lt!1350300 (size!30946 lt!1350300)))))))

(assert (=> b!3875405 (=> res!1569981 e!2397386)))

(assert (=> b!3875405 e!2397386))

(declare-fun lt!1350480 () Unit!59108)

(assert (=> b!3875405 (= lt!1350480 lt!1350482)))

(declare-fun lt!1350484 () Unit!59108)

(declare-fun lemmaSemiInverse!1716 (TokenValueInjection!12668 BalanceConc!24796) Unit!59108)

(assert (=> b!3875405 (= lt!1350484 (lemmaSemiInverse!1716 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) (seqFromList!4661 (_1!23340 lt!1350481))))))

(assert (= (and d!1147688 c!674327) b!3875403))

(assert (= (and d!1147688 (not c!674327)) b!3875405))

(assert (= (and b!3875405 (not res!1569981)) b!3875401))

(assert (= (and d!1147688 (not res!1569982)) b!3875404))

(assert (= (and b!3875404 res!1569983) b!3875398))

(assert (= (and b!3875398 res!1569980) b!3875400))

(assert (= (and b!3875400 res!1569984) b!3875397))

(assert (= (and b!3875397 res!1569986) b!3875402))

(assert (= (and b!3875402 res!1569985) b!3875399))

(declare-fun m!4433239 () Bool)

(assert (=> b!3875397 m!4433239))

(assert (=> b!3875405 m!4432769))

(declare-fun m!4433241 () Bool)

(assert (=> b!3875405 m!4433241))

(declare-fun m!4433243 () Bool)

(assert (=> b!3875405 m!4433243))

(declare-fun m!4433245 () Bool)

(assert (=> b!3875405 m!4433245))

(assert (=> b!3875405 m!4433241))

(assert (=> b!3875405 m!4433241))

(declare-fun m!4433247 () Bool)

(assert (=> b!3875405 m!4433247))

(assert (=> b!3875405 m!4433241))

(declare-fun m!4433249 () Bool)

(assert (=> b!3875405 m!4433249))

(declare-fun m!4433251 () Bool)

(assert (=> b!3875405 m!4433251))

(assert (=> b!3875405 m!4433251))

(assert (=> b!3875405 m!4432769))

(declare-fun m!4433253 () Bool)

(assert (=> b!3875405 m!4433253))

(declare-fun m!4433255 () Bool)

(assert (=> b!3875405 m!4433255))

(declare-fun m!4433257 () Bool)

(assert (=> d!1147688 m!4433257))

(declare-fun m!4433259 () Bool)

(assert (=> d!1147688 m!4433259))

(declare-fun m!4433261 () Bool)

(assert (=> d!1147688 m!4433261))

(assert (=> d!1147688 m!4432723))

(assert (=> b!3875401 m!4433251))

(assert (=> b!3875401 m!4432769))

(assert (=> b!3875401 m!4433251))

(assert (=> b!3875401 m!4432769))

(assert (=> b!3875401 m!4433253))

(declare-fun m!4433263 () Bool)

(assert (=> b!3875401 m!4433263))

(assert (=> b!3875404 m!4433239))

(declare-fun m!4433265 () Bool)

(assert (=> b!3875404 m!4433265))

(assert (=> b!3875404 m!4433265))

(declare-fun m!4433267 () Bool)

(assert (=> b!3875404 m!4433267))

(assert (=> b!3875404 m!4433267))

(declare-fun m!4433269 () Bool)

(assert (=> b!3875404 m!4433269))

(assert (=> b!3875399 m!4433239))

(declare-fun m!4433271 () Bool)

(assert (=> b!3875399 m!4433271))

(assert (=> b!3875398 m!4433239))

(assert (=> b!3875398 m!4433265))

(assert (=> b!3875398 m!4433265))

(assert (=> b!3875398 m!4433267))

(assert (=> b!3875398 m!4433267))

(declare-fun m!4433273 () Bool)

(assert (=> b!3875398 m!4433273))

(assert (=> b!3875402 m!4433239))

(declare-fun m!4433275 () Bool)

(assert (=> b!3875402 m!4433275))

(assert (=> b!3875402 m!4433275))

(declare-fun m!4433277 () Bool)

(assert (=> b!3875402 m!4433277))

(assert (=> b!3875400 m!4433239))

(declare-fun m!4433279 () Bool)

(assert (=> b!3875400 m!4433279))

(assert (=> b!3875400 m!4432769))

(assert (=> b!3875054 d!1147688))

(declare-fun d!1147690 () Bool)

(assert (=> d!1147690 (= (maxPrefixOneRule!2365 thiss!20629 (rule!9284 (_1!23337 (v!39105 lt!1350281))) lt!1350300) (Some!8807 (tuple2!40407 (Token!11919 (apply!9633 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))) (seqFromList!4661 lt!1350325)) (rule!9284 (_1!23337 (v!39105 lt!1350281))) (size!30946 lt!1350325) lt!1350325) (_2!23337 (v!39105 lt!1350281)))))))

(declare-fun lt!1350487 () Unit!59108)

(declare-fun choose!22966 (LexerInterface!5979 List!41303 List!41301 List!41301 List!41301 Rule!12580) Unit!59108)

(assert (=> d!1147690 (= lt!1350487 (choose!22966 thiss!20629 rules!2768 lt!1350325 lt!1350300 (_2!23337 (v!39105 lt!1350281)) (rule!9284 (_1!23337 (v!39105 lt!1350281)))))))

(assert (=> d!1147690 (not (isEmpty!24438 rules!2768))))

(assert (=> d!1147690 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1263 thiss!20629 rules!2768 lt!1350325 lt!1350300 (_2!23337 (v!39105 lt!1350281)) (rule!9284 (_1!23337 (v!39105 lt!1350281)))) lt!1350487)))

(declare-fun bs!583634 () Bool)

(assert (= bs!583634 d!1147690))

(declare-fun m!4433281 () Bool)

(assert (=> bs!583634 m!4433281))

(assert (=> bs!583634 m!4432773))

(assert (=> bs!583634 m!4432715))

(assert (=> bs!583634 m!4432735))

(assert (=> bs!583634 m!4432733))

(assert (=> bs!583634 m!4432715))

(assert (=> bs!583634 m!4432675))

(assert (=> b!3875054 d!1147690))

(declare-fun d!1147692 () Bool)

(assert (=> d!1147692 (= (get!13625 lt!1350281) (v!39105 lt!1350281))))

(assert (=> b!3875054 d!1147692))

(declare-fun d!1147694 () Bool)

(declare-fun lt!1350488 () Int)

(assert (=> d!1147694 (>= lt!1350488 0)))

(declare-fun e!2397389 () Int)

(assert (=> d!1147694 (= lt!1350488 e!2397389)))

(declare-fun c!674328 () Bool)

(assert (=> d!1147694 (= c!674328 ((_ is Nil!41177) lt!1350300))))

(assert (=> d!1147694 (= (size!30946 lt!1350300) lt!1350488)))

(declare-fun b!3875406 () Bool)

(assert (=> b!3875406 (= e!2397389 0)))

(declare-fun b!3875407 () Bool)

(assert (=> b!3875407 (= e!2397389 (+ 1 (size!30946 (t!314848 lt!1350300))))))

(assert (= (and d!1147694 c!674328) b!3875406))

(assert (= (and d!1147694 (not c!674328)) b!3875407))

(declare-fun m!4433283 () Bool)

(assert (=> b!3875407 m!4433283))

(assert (=> b!3875054 d!1147694))

(declare-fun d!1147696 () Bool)

(assert (=> d!1147696 (= (isEmpty!24439 prefixTokens!80) ((_ is Nil!41178) prefixTokens!80))))

(assert (=> b!3875055 d!1147696))

(declare-fun b!3875409 () Bool)

(declare-fun e!2397390 () List!41302)

(assert (=> b!3875409 (= e!2397390 (Cons!41178 (h!46598 lt!1350324) (++!10538 (t!314849 lt!1350324) (_1!23338 lt!1350304))))))

(declare-fun d!1147698 () Bool)

(declare-fun e!2397391 () Bool)

(assert (=> d!1147698 e!2397391))

(declare-fun res!1569988 () Bool)

(assert (=> d!1147698 (=> (not res!1569988) (not e!2397391))))

(declare-fun lt!1350489 () List!41302)

(assert (=> d!1147698 (= res!1569988 (= (content!6156 lt!1350489) ((_ map or) (content!6156 lt!1350324) (content!6156 (_1!23338 lt!1350304)))))))

(assert (=> d!1147698 (= lt!1350489 e!2397390)))

(declare-fun c!674329 () Bool)

(assert (=> d!1147698 (= c!674329 ((_ is Nil!41178) lt!1350324))))

(assert (=> d!1147698 (= (++!10538 lt!1350324 (_1!23338 lt!1350304)) lt!1350489)))

(declare-fun b!3875411 () Bool)

(assert (=> b!3875411 (= e!2397391 (or (not (= (_1!23338 lt!1350304) Nil!41178)) (= lt!1350489 lt!1350324)))))

(declare-fun b!3875408 () Bool)

(assert (=> b!3875408 (= e!2397390 (_1!23338 lt!1350304))))

(declare-fun b!3875410 () Bool)

(declare-fun res!1569987 () Bool)

(assert (=> b!3875410 (=> (not res!1569987) (not e!2397391))))

(assert (=> b!3875410 (= res!1569987 (= (size!30948 lt!1350489) (+ (size!30948 lt!1350324) (size!30948 (_1!23338 lt!1350304)))))))

(assert (= (and d!1147698 c!674329) b!3875408))

(assert (= (and d!1147698 (not c!674329)) b!3875409))

(assert (= (and d!1147698 res!1569988) b!3875410))

(assert (= (and b!3875410 res!1569987) b!3875411))

(declare-fun m!4433285 () Bool)

(assert (=> b!3875409 m!4433285))

(declare-fun m!4433287 () Bool)

(assert (=> d!1147698 m!4433287))

(declare-fun m!4433289 () Bool)

(assert (=> d!1147698 m!4433289))

(declare-fun m!4433291 () Bool)

(assert (=> d!1147698 m!4433291))

(declare-fun m!4433293 () Bool)

(assert (=> b!3875410 m!4433293))

(declare-fun m!4433295 () Bool)

(assert (=> b!3875410 m!4433295))

(declare-fun m!4433297 () Bool)

(assert (=> b!3875410 m!4433297))

(assert (=> b!3875034 d!1147698))

(declare-fun d!1147700 () Bool)

(assert (=> d!1147700 (= (isEmpty!24439 lt!1350301) ((_ is Nil!41178) lt!1350301))))

(assert (=> b!3875076 d!1147700))

(declare-fun b!3875413 () Bool)

(declare-fun e!2397392 () List!41302)

(assert (=> b!3875413 (= e!2397392 (Cons!41178 (h!46598 (++!10538 lt!1350324 lt!1350301)) (++!10538 (t!314849 (++!10538 lt!1350324 lt!1350301)) suffixTokens!72)))))

(declare-fun d!1147702 () Bool)

(declare-fun e!2397393 () Bool)

(assert (=> d!1147702 e!2397393))

(declare-fun res!1569990 () Bool)

(assert (=> d!1147702 (=> (not res!1569990) (not e!2397393))))

(declare-fun lt!1350490 () List!41302)

(assert (=> d!1147702 (= res!1569990 (= (content!6156 lt!1350490) ((_ map or) (content!6156 (++!10538 lt!1350324 lt!1350301)) (content!6156 suffixTokens!72))))))

(assert (=> d!1147702 (= lt!1350490 e!2397392)))

(declare-fun c!674330 () Bool)

(assert (=> d!1147702 (= c!674330 ((_ is Nil!41178) (++!10538 lt!1350324 lt!1350301)))))

(assert (=> d!1147702 (= (++!10538 (++!10538 lt!1350324 lt!1350301) suffixTokens!72) lt!1350490)))

(declare-fun b!3875415 () Bool)

(assert (=> b!3875415 (= e!2397393 (or (not (= suffixTokens!72 Nil!41178)) (= lt!1350490 (++!10538 lt!1350324 lt!1350301))))))

(declare-fun b!3875412 () Bool)

(assert (=> b!3875412 (= e!2397392 suffixTokens!72)))

(declare-fun b!3875414 () Bool)

(declare-fun res!1569989 () Bool)

(assert (=> b!3875414 (=> (not res!1569989) (not e!2397393))))

(assert (=> b!3875414 (= res!1569989 (= (size!30948 lt!1350490) (+ (size!30948 (++!10538 lt!1350324 lt!1350301)) (size!30948 suffixTokens!72))))))

(assert (= (and d!1147702 c!674330) b!3875412))

(assert (= (and d!1147702 (not c!674330)) b!3875413))

(assert (= (and d!1147702 res!1569990) b!3875414))

(assert (= (and b!3875414 res!1569989) b!3875415))

(declare-fun m!4433299 () Bool)

(assert (=> b!3875413 m!4433299))

(declare-fun m!4433301 () Bool)

(assert (=> d!1147702 m!4433301))

(assert (=> d!1147702 m!4432697))

(declare-fun m!4433303 () Bool)

(assert (=> d!1147702 m!4433303))

(assert (=> d!1147702 m!4432991))

(declare-fun m!4433305 () Bool)

(assert (=> b!3875414 m!4433305))

(assert (=> b!3875414 m!4432697))

(declare-fun m!4433307 () Bool)

(assert (=> b!3875414 m!4433307))

(assert (=> b!3875414 m!4432997))

(assert (=> b!3875076 d!1147702))

(declare-fun d!1147704 () Bool)

(assert (=> d!1147704 (= (++!10538 (++!10538 lt!1350324 lt!1350301) suffixTokens!72) (++!10538 lt!1350324 (++!10538 lt!1350301 suffixTokens!72)))))

(declare-fun lt!1350493 () Unit!59108)

(declare-fun choose!22967 (List!41302 List!41302 List!41302) Unit!59108)

(assert (=> d!1147704 (= lt!1350493 (choose!22967 lt!1350324 lt!1350301 suffixTokens!72))))

(assert (=> d!1147704 (= (lemmaConcatAssociativity!2252 lt!1350324 lt!1350301 suffixTokens!72) lt!1350493)))

(declare-fun bs!583635 () Bool)

(assert (= bs!583635 d!1147704))

(assert (=> bs!583635 m!4432777))

(declare-fun m!4433309 () Bool)

(assert (=> bs!583635 m!4433309))

(assert (=> bs!583635 m!4432697))

(assert (=> bs!583635 m!4432699))

(assert (=> bs!583635 m!4432777))

(declare-fun m!4433311 () Bool)

(assert (=> bs!583635 m!4433311))

(assert (=> bs!583635 m!4432697))

(assert (=> b!3875076 d!1147704))

(declare-fun b!3875417 () Bool)

(declare-fun e!2397394 () List!41302)

(assert (=> b!3875417 (= e!2397394 (Cons!41178 (h!46598 lt!1350324) (++!10538 (t!314849 lt!1350324) lt!1350308)))))

(declare-fun d!1147706 () Bool)

(declare-fun e!2397395 () Bool)

(assert (=> d!1147706 e!2397395))

(declare-fun res!1569992 () Bool)

(assert (=> d!1147706 (=> (not res!1569992) (not e!2397395))))

(declare-fun lt!1350494 () List!41302)

(assert (=> d!1147706 (= res!1569992 (= (content!6156 lt!1350494) ((_ map or) (content!6156 lt!1350324) (content!6156 lt!1350308))))))

(assert (=> d!1147706 (= lt!1350494 e!2397394)))

(declare-fun c!674331 () Bool)

(assert (=> d!1147706 (= c!674331 ((_ is Nil!41178) lt!1350324))))

(assert (=> d!1147706 (= (++!10538 lt!1350324 lt!1350308) lt!1350494)))

(declare-fun b!3875419 () Bool)

(assert (=> b!3875419 (= e!2397395 (or (not (= lt!1350308 Nil!41178)) (= lt!1350494 lt!1350324)))))

(declare-fun b!3875416 () Bool)

(assert (=> b!3875416 (= e!2397394 lt!1350308)))

(declare-fun b!3875418 () Bool)

(declare-fun res!1569991 () Bool)

(assert (=> b!3875418 (=> (not res!1569991) (not e!2397395))))

(assert (=> b!3875418 (= res!1569991 (= (size!30948 lt!1350494) (+ (size!30948 lt!1350324) (size!30948 lt!1350308))))))

(assert (= (and d!1147706 c!674331) b!3875416))

(assert (= (and d!1147706 (not c!674331)) b!3875417))

(assert (= (and d!1147706 res!1569992) b!3875418))

(assert (= (and b!3875418 res!1569991) b!3875419))

(declare-fun m!4433313 () Bool)

(assert (=> b!3875417 m!4433313))

(declare-fun m!4433315 () Bool)

(assert (=> d!1147706 m!4433315))

(assert (=> d!1147706 m!4433289))

(declare-fun m!4433317 () Bool)

(assert (=> d!1147706 m!4433317))

(declare-fun m!4433319 () Bool)

(assert (=> b!3875418 m!4433319))

(assert (=> b!3875418 m!4433295))

(declare-fun m!4433321 () Bool)

(assert (=> b!3875418 m!4433321))

(assert (=> b!3875076 d!1147706))

(declare-fun b!3875421 () Bool)

(declare-fun e!2397396 () List!41302)

(assert (=> b!3875421 (= e!2397396 (Cons!41178 (h!46598 lt!1350324) (++!10538 (t!314849 lt!1350324) lt!1350301)))))

(declare-fun d!1147708 () Bool)

(declare-fun e!2397397 () Bool)

(assert (=> d!1147708 e!2397397))

(declare-fun res!1569994 () Bool)

(assert (=> d!1147708 (=> (not res!1569994) (not e!2397397))))

(declare-fun lt!1350495 () List!41302)

(assert (=> d!1147708 (= res!1569994 (= (content!6156 lt!1350495) ((_ map or) (content!6156 lt!1350324) (content!6156 lt!1350301))))))

(assert (=> d!1147708 (= lt!1350495 e!2397396)))

(declare-fun c!674332 () Bool)

(assert (=> d!1147708 (= c!674332 ((_ is Nil!41178) lt!1350324))))

(assert (=> d!1147708 (= (++!10538 lt!1350324 lt!1350301) lt!1350495)))

(declare-fun b!3875423 () Bool)

(assert (=> b!3875423 (= e!2397397 (or (not (= lt!1350301 Nil!41178)) (= lt!1350495 lt!1350324)))))

(declare-fun b!3875420 () Bool)

(assert (=> b!3875420 (= e!2397396 lt!1350301)))

(declare-fun b!3875422 () Bool)

(declare-fun res!1569993 () Bool)

(assert (=> b!3875422 (=> (not res!1569993) (not e!2397397))))

(assert (=> b!3875422 (= res!1569993 (= (size!30948 lt!1350495) (+ (size!30948 lt!1350324) (size!30948 lt!1350301))))))

(assert (= (and d!1147708 c!674332) b!3875420))

(assert (= (and d!1147708 (not c!674332)) b!3875421))

(assert (= (and d!1147708 res!1569994) b!3875422))

(assert (= (and b!3875422 res!1569993) b!3875423))

(declare-fun m!4433323 () Bool)

(assert (=> b!3875421 m!4433323))

(declare-fun m!4433325 () Bool)

(assert (=> d!1147708 m!4433325))

(assert (=> d!1147708 m!4433289))

(assert (=> d!1147708 m!4433021))

(declare-fun m!4433327 () Bool)

(assert (=> b!3875422 m!4433327))

(assert (=> b!3875422 m!4433295))

(assert (=> b!3875422 m!4433027))

(assert (=> b!3875076 d!1147708))

(declare-fun d!1147710 () Bool)

(declare-fun lt!1350496 () Int)

(assert (=> d!1147710 (>= lt!1350496 0)))

(declare-fun e!2397398 () Int)

(assert (=> d!1147710 (= lt!1350496 e!2397398)))

(declare-fun c!674333 () Bool)

(assert (=> d!1147710 (= c!674333 ((_ is Nil!41177) suffix!1176))))

(assert (=> d!1147710 (= (size!30946 suffix!1176) lt!1350496)))

(declare-fun b!3875424 () Bool)

(assert (=> b!3875424 (= e!2397398 0)))

(declare-fun b!3875425 () Bool)

(assert (=> b!3875425 (= e!2397398 (+ 1 (size!30946 (t!314848 suffix!1176))))))

(assert (= (and d!1147710 c!674333) b!3875424))

(assert (= (and d!1147710 (not c!674333)) b!3875425))

(declare-fun m!4433329 () Bool)

(assert (=> b!3875425 m!4433329))

(assert (=> b!3875057 d!1147710))

(declare-fun d!1147712 () Bool)

(declare-fun lt!1350497 () Int)

(assert (=> d!1147712 (>= lt!1350497 0)))

(declare-fun e!2397399 () Int)

(assert (=> d!1147712 (= lt!1350497 e!2397399)))

(declare-fun c!674334 () Bool)

(assert (=> d!1147712 (= c!674334 ((_ is Nil!41177) (_2!23337 (v!39105 lt!1350281))))))

(assert (=> d!1147712 (= (size!30946 (_2!23337 (v!39105 lt!1350281))) lt!1350497)))

(declare-fun b!3875426 () Bool)

(assert (=> b!3875426 (= e!2397399 0)))

(declare-fun b!3875427 () Bool)

(assert (=> b!3875427 (= e!2397399 (+ 1 (size!30946 (t!314848 (_2!23337 (v!39105 lt!1350281))))))))

(assert (= (and d!1147712 c!674334) b!3875426))

(assert (= (and d!1147712 (not c!674334)) b!3875427))

(declare-fun m!4433331 () Bool)

(assert (=> b!3875427 m!4433331))

(assert (=> b!3875057 d!1147712))

(declare-fun b!3875428 () Bool)

(declare-fun e!2397400 () List!41301)

(assert (=> b!3875428 (= e!2397400 suffix!1176)))

(declare-fun b!3875430 () Bool)

(declare-fun res!1569996 () Bool)

(declare-fun e!2397401 () Bool)

(assert (=> b!3875430 (=> (not res!1569996) (not e!2397401))))

(declare-fun lt!1350498 () List!41301)

(assert (=> b!3875430 (= res!1569996 (= (size!30946 lt!1350498) (+ (size!30946 lt!1350322) (size!30946 suffix!1176))))))

(declare-fun b!3875429 () Bool)

(assert (=> b!3875429 (= e!2397400 (Cons!41177 (h!46597 lt!1350322) (++!10537 (t!314848 lt!1350322) suffix!1176)))))

(declare-fun b!3875431 () Bool)

(assert (=> b!3875431 (= e!2397401 (or (not (= suffix!1176 Nil!41177)) (= lt!1350498 lt!1350322)))))

(declare-fun d!1147714 () Bool)

(assert (=> d!1147714 e!2397401))

(declare-fun res!1569995 () Bool)

(assert (=> d!1147714 (=> (not res!1569995) (not e!2397401))))

(assert (=> d!1147714 (= res!1569995 (= (content!6157 lt!1350498) ((_ map or) (content!6157 lt!1350322) (content!6157 suffix!1176))))))

(assert (=> d!1147714 (= lt!1350498 e!2397400)))

(declare-fun c!674335 () Bool)

(assert (=> d!1147714 (= c!674335 ((_ is Nil!41177) lt!1350322))))

(assert (=> d!1147714 (= (++!10537 lt!1350322 suffix!1176) lt!1350498)))

(assert (= (and d!1147714 c!674335) b!3875428))

(assert (= (and d!1147714 (not c!674335)) b!3875429))

(assert (= (and d!1147714 res!1569995) b!3875430))

(assert (= (and b!3875430 res!1569996) b!3875431))

(declare-fun m!4433333 () Bool)

(assert (=> b!3875430 m!4433333))

(declare-fun m!4433335 () Bool)

(assert (=> b!3875430 m!4433335))

(assert (=> b!3875430 m!4432679))

(declare-fun m!4433337 () Bool)

(assert (=> b!3875429 m!4433337))

(declare-fun m!4433339 () Bool)

(assert (=> d!1147714 m!4433339))

(declare-fun m!4433341 () Bool)

(assert (=> d!1147714 m!4433341))

(assert (=> d!1147714 m!4433007))

(assert (=> b!3875036 d!1147714))

(declare-fun b!3875432 () Bool)

(declare-fun e!2397402 () List!41301)

(assert (=> b!3875432 (= e!2397402 lt!1350291)))

(declare-fun b!3875434 () Bool)

(declare-fun res!1569998 () Bool)

(declare-fun e!2397403 () Bool)

(assert (=> b!3875434 (=> (not res!1569998) (not e!2397403))))

(declare-fun lt!1350499 () List!41301)

(assert (=> b!3875434 (= res!1569998 (= (size!30946 lt!1350499) (+ (size!30946 lt!1350325) (size!30946 lt!1350291))))))

(declare-fun b!3875433 () Bool)

(assert (=> b!3875433 (= e!2397402 (Cons!41177 (h!46597 lt!1350325) (++!10537 (t!314848 lt!1350325) lt!1350291)))))

(declare-fun b!3875435 () Bool)

(assert (=> b!3875435 (= e!2397403 (or (not (= lt!1350291 Nil!41177)) (= lt!1350499 lt!1350325)))))

(declare-fun d!1147716 () Bool)

(assert (=> d!1147716 e!2397403))

(declare-fun res!1569997 () Bool)

(assert (=> d!1147716 (=> (not res!1569997) (not e!2397403))))

(assert (=> d!1147716 (= res!1569997 (= (content!6157 lt!1350499) ((_ map or) (content!6157 lt!1350325) (content!6157 lt!1350291))))))

(assert (=> d!1147716 (= lt!1350499 e!2397402)))

(declare-fun c!674336 () Bool)

(assert (=> d!1147716 (= c!674336 ((_ is Nil!41177) lt!1350325))))

(assert (=> d!1147716 (= (++!10537 lt!1350325 lt!1350291) lt!1350499)))

(assert (= (and d!1147716 c!674336) b!3875432))

(assert (= (and d!1147716 (not c!674336)) b!3875433))

(assert (= (and d!1147716 res!1569997) b!3875434))

(assert (= (and b!3875434 res!1569998) b!3875435))

(declare-fun m!4433343 () Bool)

(assert (=> b!3875434 m!4433343))

(assert (=> b!3875434 m!4432733))

(assert (=> b!3875434 m!4433061))

(declare-fun m!4433345 () Bool)

(assert (=> b!3875433 m!4433345))

(declare-fun m!4433347 () Bool)

(assert (=> d!1147716 m!4433347))

(assert (=> d!1147716 m!4433219))

(declare-fun m!4433349 () Bool)

(assert (=> d!1147716 m!4433349))

(assert (=> b!3875058 d!1147716))

(declare-fun b!3875436 () Bool)

(declare-fun e!2397404 () List!41301)

(assert (=> b!3875436 (= e!2397404 suffix!1176)))

(declare-fun b!3875438 () Bool)

(declare-fun res!1570000 () Bool)

(declare-fun e!2397405 () Bool)

(assert (=> b!3875438 (=> (not res!1570000) (not e!2397405))))

(declare-fun lt!1350500 () List!41301)

(assert (=> b!3875438 (= res!1570000 (= (size!30946 lt!1350500) (+ (size!30946 lt!1350288) (size!30946 suffix!1176))))))

(declare-fun b!3875437 () Bool)

(assert (=> b!3875437 (= e!2397404 (Cons!41177 (h!46597 lt!1350288) (++!10537 (t!314848 lt!1350288) suffix!1176)))))

(declare-fun b!3875439 () Bool)

(assert (=> b!3875439 (= e!2397405 (or (not (= suffix!1176 Nil!41177)) (= lt!1350500 lt!1350288)))))

(declare-fun d!1147718 () Bool)

(assert (=> d!1147718 e!2397405))

(declare-fun res!1569999 () Bool)

(assert (=> d!1147718 (=> (not res!1569999) (not e!2397405))))

(assert (=> d!1147718 (= res!1569999 (= (content!6157 lt!1350500) ((_ map or) (content!6157 lt!1350288) (content!6157 suffix!1176))))))

(assert (=> d!1147718 (= lt!1350500 e!2397404)))

(declare-fun c!674337 () Bool)

(assert (=> d!1147718 (= c!674337 ((_ is Nil!41177) lt!1350288))))

(assert (=> d!1147718 (= (++!10537 lt!1350288 suffix!1176) lt!1350500)))

(assert (= (and d!1147718 c!674337) b!3875436))

(assert (= (and d!1147718 (not c!674337)) b!3875437))

(assert (= (and d!1147718 res!1569999) b!3875438))

(assert (= (and b!3875438 res!1570000) b!3875439))

(declare-fun m!4433351 () Bool)

(assert (=> b!3875438 m!4433351))

(assert (=> b!3875438 m!4433063))

(assert (=> b!3875438 m!4432679))

(declare-fun m!4433353 () Bool)

(assert (=> b!3875437 m!4433353))

(declare-fun m!4433355 () Bool)

(assert (=> d!1147718 m!4433355))

(declare-fun m!4433357 () Bool)

(assert (=> d!1147718 m!4433357))

(assert (=> d!1147718 m!4433007))

(assert (=> b!3875058 d!1147718))

(declare-fun d!1147720 () Bool)

(assert (=> d!1147720 (= (++!10537 (++!10537 lt!1350325 lt!1350288) suffix!1176) (++!10537 lt!1350325 (++!10537 lt!1350288 suffix!1176)))))

(declare-fun lt!1350503 () Unit!59108)

(declare-fun choose!22969 (List!41301 List!41301 List!41301) Unit!59108)

(assert (=> d!1147720 (= lt!1350503 (choose!22969 lt!1350325 lt!1350288 suffix!1176))))

(assert (=> d!1147720 (= (lemmaConcatAssociativity!2251 lt!1350325 lt!1350288 suffix!1176) lt!1350503)))

(declare-fun bs!583636 () Bool)

(assert (= bs!583636 d!1147720))

(declare-fun m!4433359 () Bool)

(assert (=> bs!583636 m!4433359))

(assert (=> bs!583636 m!4432665))

(assert (=> bs!583636 m!4432637))

(declare-fun m!4433361 () Bool)

(assert (=> bs!583636 m!4433361))

(assert (=> bs!583636 m!4432637))

(assert (=> bs!583636 m!4432665))

(declare-fun m!4433363 () Bool)

(assert (=> bs!583636 m!4433363))

(assert (=> b!3875058 d!1147720))

(declare-fun d!1147722 () Bool)

(declare-fun res!1570001 () Bool)

(declare-fun e!2397406 () Bool)

(assert (=> d!1147722 (=> (not res!1570001) (not e!2397406))))

(assert (=> d!1147722 (= res!1570001 (not (isEmpty!24440 (originalCharacters!6990 (h!46598 prefixTokens!80)))))))

(assert (=> d!1147722 (= (inv!55337 (h!46598 prefixTokens!80)) e!2397406)))

(declare-fun b!3875440 () Bool)

(declare-fun res!1570002 () Bool)

(assert (=> b!3875440 (=> (not res!1570002) (not e!2397406))))

(assert (=> b!3875440 (= res!1570002 (= (originalCharacters!6990 (h!46598 prefixTokens!80)) (list!15316 (dynLambda!17708 (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) (value!202749 (h!46598 prefixTokens!80))))))))

(declare-fun b!3875441 () Bool)

(assert (=> b!3875441 (= e!2397406 (= (size!30945 (h!46598 prefixTokens!80)) (size!30946 (originalCharacters!6990 (h!46598 prefixTokens!80)))))))

(assert (= (and d!1147722 res!1570001) b!3875440))

(assert (= (and b!3875440 res!1570002) b!3875441))

(declare-fun b_lambda!113161 () Bool)

(assert (=> (not b_lambda!113161) (not b!3875440)))

(declare-fun tb!224879 () Bool)

(declare-fun t!314882 () Bool)

(assert (=> (and b!3875072 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80))))) t!314882) tb!224879))

(declare-fun b!3875442 () Bool)

(declare-fun e!2397407 () Bool)

(declare-fun tp!1174833 () Bool)

(assert (=> b!3875442 (= e!2397407 (and (inv!55341 (c!674255 (dynLambda!17708 (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) (value!202749 (h!46598 prefixTokens!80))))) tp!1174833))))

(declare-fun result!273910 () Bool)

(assert (=> tb!224879 (= result!273910 (and (inv!55342 (dynLambda!17708 (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) (value!202749 (h!46598 prefixTokens!80)))) e!2397407))))

(assert (= tb!224879 b!3875442))

(declare-fun m!4433365 () Bool)

(assert (=> b!3875442 m!4433365))

(declare-fun m!4433367 () Bool)

(assert (=> tb!224879 m!4433367))

(assert (=> b!3875440 t!314882))

(declare-fun b_and!290589 () Bool)

(assert (= b_and!290583 (and (=> t!314882 result!273910) b_and!290589)))

(declare-fun tb!224881 () Bool)

(declare-fun t!314884 () Bool)

(assert (=> (and b!3875053 (= (toChars!8677 (transformation!6390 (h!46599 rules!2768))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80))))) t!314884) tb!224881))

(declare-fun result!273912 () Bool)

(assert (= result!273912 result!273910))

(assert (=> b!3875440 t!314884))

(declare-fun b_and!290591 () Bool)

(assert (= b_and!290585 (and (=> t!314884 result!273912) b_and!290591)))

(declare-fun t!314886 () Bool)

(declare-fun tb!224883 () Bool)

(assert (=> (and b!3875068 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80))))) t!314886) tb!224883))

(declare-fun result!273914 () Bool)

(assert (= result!273914 result!273910))

(assert (=> b!3875440 t!314886))

(declare-fun b_and!290593 () Bool)

(assert (= b_and!290587 (and (=> t!314886 result!273914) b_and!290593)))

(declare-fun m!4433369 () Bool)

(assert (=> d!1147722 m!4433369))

(declare-fun m!4433371 () Bool)

(assert (=> b!3875440 m!4433371))

(assert (=> b!3875440 m!4433371))

(declare-fun m!4433373 () Bool)

(assert (=> b!3875440 m!4433373))

(declare-fun m!4433375 () Bool)

(assert (=> b!3875441 m!4433375))

(assert (=> b!3875037 d!1147722))

(declare-fun d!1147724 () Bool)

(assert (=> d!1147724 (= (inv!55334 (tag!7250 (rule!9284 (h!46598 prefixTokens!80)))) (= (mod (str.len (value!202748 (tag!7250 (rule!9284 (h!46598 prefixTokens!80))))) 2) 0))))

(assert (=> b!3875059 d!1147724))

(declare-fun d!1147726 () Bool)

(declare-fun res!1570003 () Bool)

(declare-fun e!2397408 () Bool)

(assert (=> d!1147726 (=> (not res!1570003) (not e!2397408))))

(assert (=> d!1147726 (= res!1570003 (semiInverseModEq!2743 (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) (toValue!8818 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80))))))))

(assert (=> d!1147726 (= (inv!55338 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) e!2397408)))

(declare-fun b!3875443 () Bool)

(assert (=> b!3875443 (= e!2397408 (equivClasses!2642 (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) (toValue!8818 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80))))))))

(assert (= (and d!1147726 res!1570003) b!3875443))

(declare-fun m!4433377 () Bool)

(assert (=> d!1147726 m!4433377))

(declare-fun m!4433379 () Bool)

(assert (=> b!3875443 m!4433379))

(assert (=> b!3875059 d!1147726))

(declare-fun d!1147728 () Bool)

(assert (=> d!1147728 (= (isEmpty!24438 rules!2768) ((_ is Nil!41179) rules!2768))))

(assert (=> b!3875038 d!1147728))

(declare-fun b!3875444 () Bool)

(declare-fun e!2397409 () List!41301)

(assert (=> b!3875444 (= e!2397409 lt!1350288)))

(declare-fun b!3875446 () Bool)

(declare-fun res!1570005 () Bool)

(declare-fun e!2397410 () Bool)

(assert (=> b!3875446 (=> (not res!1570005) (not e!2397410))))

(declare-fun lt!1350504 () List!41301)

(assert (=> b!3875446 (= res!1570005 (= (size!30946 lt!1350504) (+ (size!30946 lt!1350325) (size!30946 lt!1350288))))))

(declare-fun b!3875445 () Bool)

(assert (=> b!3875445 (= e!2397409 (Cons!41177 (h!46597 lt!1350325) (++!10537 (t!314848 lt!1350325) lt!1350288)))))

(declare-fun b!3875447 () Bool)

(assert (=> b!3875447 (= e!2397410 (or (not (= lt!1350288 Nil!41177)) (= lt!1350504 lt!1350325)))))

(declare-fun d!1147730 () Bool)

(assert (=> d!1147730 e!2397410))

(declare-fun res!1570004 () Bool)

(assert (=> d!1147730 (=> (not res!1570004) (not e!2397410))))

(assert (=> d!1147730 (= res!1570004 (= (content!6157 lt!1350504) ((_ map or) (content!6157 lt!1350325) (content!6157 lt!1350288))))))

(assert (=> d!1147730 (= lt!1350504 e!2397409)))

(declare-fun c!674338 () Bool)

(assert (=> d!1147730 (= c!674338 ((_ is Nil!41177) lt!1350325))))

(assert (=> d!1147730 (= (++!10537 lt!1350325 lt!1350288) lt!1350504)))

(assert (= (and d!1147730 c!674338) b!3875444))

(assert (= (and d!1147730 (not c!674338)) b!3875445))

(assert (= (and d!1147730 res!1570004) b!3875446))

(assert (= (and b!3875446 res!1570005) b!3875447))

(declare-fun m!4433381 () Bool)

(assert (=> b!3875446 m!4433381))

(assert (=> b!3875446 m!4432733))

(assert (=> b!3875446 m!4433063))

(declare-fun m!4433383 () Bool)

(assert (=> b!3875445 m!4433383))

(declare-fun m!4433385 () Bool)

(assert (=> d!1147730 m!4433385))

(assert (=> d!1147730 m!4433219))

(assert (=> d!1147730 m!4433357))

(assert (=> b!3875060 d!1147730))

(declare-fun d!1147732 () Bool)

(declare-fun lt!1350505 () List!41301)

(assert (=> d!1147732 (= (++!10537 lt!1350325 lt!1350505) prefix!426)))

(declare-fun e!2397411 () List!41301)

(assert (=> d!1147732 (= lt!1350505 e!2397411)))

(declare-fun c!674339 () Bool)

(assert (=> d!1147732 (= c!674339 ((_ is Cons!41177) lt!1350325))))

(assert (=> d!1147732 (>= (size!30946 prefix!426) (size!30946 lt!1350325))))

(assert (=> d!1147732 (= (getSuffix!1944 prefix!426 lt!1350325) lt!1350505)))

(declare-fun b!3875448 () Bool)

(assert (=> b!3875448 (= e!2397411 (getSuffix!1944 (tail!5932 prefix!426) (t!314848 lt!1350325)))))

(declare-fun b!3875449 () Bool)

(assert (=> b!3875449 (= e!2397411 prefix!426)))

(assert (= (and d!1147732 c!674339) b!3875448))

(assert (= (and d!1147732 (not c!674339)) b!3875449))

(declare-fun m!4433387 () Bool)

(assert (=> d!1147732 m!4433387))

(assert (=> d!1147732 m!4432655))

(assert (=> d!1147732 m!4432733))

(assert (=> b!3875448 m!4432793))

(assert (=> b!3875448 m!4432793))

(declare-fun m!4433389 () Bool)

(assert (=> b!3875448 m!4433389))

(assert (=> b!3875060 d!1147732))

(declare-fun b!3875460 () Bool)

(declare-fun e!2397418 () Bool)

(declare-fun e!2397420 () Bool)

(assert (=> b!3875460 (= e!2397418 e!2397420)))

(declare-fun c!674345 () Bool)

(assert (=> b!3875460 (= c!674345 ((_ is IntegerValue!19861) (value!202749 (h!46598 prefixTokens!80))))))

(declare-fun b!3875461 () Bool)

(declare-fun inv!16 (TokenValue!6620) Bool)

(assert (=> b!3875461 (= e!2397418 (inv!16 (value!202749 (h!46598 prefixTokens!80))))))

(declare-fun d!1147734 () Bool)

(declare-fun c!674344 () Bool)

(assert (=> d!1147734 (= c!674344 ((_ is IntegerValue!19860) (value!202749 (h!46598 prefixTokens!80))))))

(assert (=> d!1147734 (= (inv!21 (value!202749 (h!46598 prefixTokens!80))) e!2397418)))

(declare-fun b!3875462 () Bool)

(declare-fun res!1570008 () Bool)

(declare-fun e!2397419 () Bool)

(assert (=> b!3875462 (=> res!1570008 e!2397419)))

(assert (=> b!3875462 (= res!1570008 (not ((_ is IntegerValue!19862) (value!202749 (h!46598 prefixTokens!80)))))))

(assert (=> b!3875462 (= e!2397420 e!2397419)))

(declare-fun b!3875463 () Bool)

(declare-fun inv!15 (TokenValue!6620) Bool)

(assert (=> b!3875463 (= e!2397419 (inv!15 (value!202749 (h!46598 prefixTokens!80))))))

(declare-fun b!3875464 () Bool)

(declare-fun inv!17 (TokenValue!6620) Bool)

(assert (=> b!3875464 (= e!2397420 (inv!17 (value!202749 (h!46598 prefixTokens!80))))))

(assert (= (and d!1147734 c!674344) b!3875461))

(assert (= (and d!1147734 (not c!674344)) b!3875460))

(assert (= (and b!3875460 c!674345) b!3875464))

(assert (= (and b!3875460 (not c!674345)) b!3875462))

(assert (= (and b!3875462 (not res!1570008)) b!3875463))

(declare-fun m!4433391 () Bool)

(assert (=> b!3875461 m!4433391))

(declare-fun m!4433393 () Bool)

(assert (=> b!3875463 m!4433393))

(declare-fun m!4433395 () Bool)

(assert (=> b!3875464 m!4433395))

(assert (=> b!3875039 d!1147734))

(declare-fun b!3875465 () Bool)

(declare-fun e!2397422 () Bool)

(declare-fun lt!1350507 () tuple2!40408)

(assert (=> b!3875465 (= e!2397422 (= (_2!23338 lt!1350507) suffix!1176))))

(declare-fun b!3875466 () Bool)

(declare-fun e!2397421 () tuple2!40408)

(assert (=> b!3875466 (= e!2397421 (tuple2!40409 Nil!41178 suffix!1176))))

(declare-fun b!3875467 () Bool)

(declare-fun e!2397423 () Bool)

(assert (=> b!3875467 (= e!2397422 e!2397423)))

(declare-fun res!1570009 () Bool)

(assert (=> b!3875467 (= res!1570009 (< (size!30946 (_2!23338 lt!1350507)) (size!30946 suffix!1176)))))

(assert (=> b!3875467 (=> (not res!1570009) (not e!2397423))))

(declare-fun b!3875468 () Bool)

(declare-fun lt!1350506 () Option!8808)

(declare-fun lt!1350508 () tuple2!40408)

(assert (=> b!3875468 (= e!2397421 (tuple2!40409 (Cons!41178 (_1!23337 (v!39105 lt!1350506)) (_1!23338 lt!1350508)) (_2!23338 lt!1350508)))))

(assert (=> b!3875468 (= lt!1350508 (lexList!1747 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350506))))))

(declare-fun d!1147736 () Bool)

(assert (=> d!1147736 e!2397422))

(declare-fun c!674346 () Bool)

(assert (=> d!1147736 (= c!674346 (> (size!30948 (_1!23338 lt!1350507)) 0))))

(assert (=> d!1147736 (= lt!1350507 e!2397421)))

(declare-fun c!674347 () Bool)

(assert (=> d!1147736 (= c!674347 ((_ is Some!8807) lt!1350506))))

(assert (=> d!1147736 (= lt!1350506 (maxPrefix!3283 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1147736 (= (lexList!1747 thiss!20629 rules!2768 suffix!1176) lt!1350507)))

(declare-fun b!3875469 () Bool)

(assert (=> b!3875469 (= e!2397423 (not (isEmpty!24439 (_1!23338 lt!1350507))))))

(assert (= (and d!1147736 c!674347) b!3875468))

(assert (= (and d!1147736 (not c!674347)) b!3875466))

(assert (= (and d!1147736 c!674346) b!3875467))

(assert (= (and d!1147736 (not c!674346)) b!3875465))

(assert (= (and b!3875467 res!1570009) b!3875469))

(declare-fun m!4433397 () Bool)

(assert (=> b!3875467 m!4433397))

(assert (=> b!3875467 m!4432679))

(declare-fun m!4433399 () Bool)

(assert (=> b!3875468 m!4433399))

(declare-fun m!4433401 () Bool)

(assert (=> d!1147736 m!4433401))

(declare-fun m!4433403 () Bool)

(assert (=> d!1147736 m!4433403))

(declare-fun m!4433405 () Bool)

(assert (=> b!3875469 m!4433405))

(assert (=> b!3875061 d!1147736))

(declare-fun d!1147738 () Bool)

(declare-fun res!1570012 () Bool)

(declare-fun e!2397426 () Bool)

(assert (=> d!1147738 (=> (not res!1570012) (not e!2397426))))

(declare-fun rulesValid!2478 (LexerInterface!5979 List!41303) Bool)

(assert (=> d!1147738 (= res!1570012 (rulesValid!2478 thiss!20629 rules!2768))))

(assert (=> d!1147738 (= (rulesInvariant!5322 thiss!20629 rules!2768) e!2397426)))

(declare-fun b!3875472 () Bool)

(declare-datatypes ((List!41305 0))(
  ( (Nil!41181) (Cons!41181 (h!46601 String!46818) (t!314948 List!41305)) )
))
(declare-fun noDuplicateTag!2479 (LexerInterface!5979 List!41303 List!41305) Bool)

(assert (=> b!3875472 (= e!2397426 (noDuplicateTag!2479 thiss!20629 rules!2768 Nil!41181))))

(assert (= (and d!1147738 res!1570012) b!3875472))

(declare-fun m!4433407 () Bool)

(assert (=> d!1147738 m!4433407))

(declare-fun m!4433409 () Bool)

(assert (=> b!3875472 m!4433409))

(assert (=> b!3875040 d!1147738))

(declare-fun d!1147740 () Bool)

(assert (=> d!1147740 true))

(declare-fun lt!1350549 () Bool)

(declare-fun lambda!126251 () Int)

(declare-fun forall!8298 (List!41303 Int) Bool)

(assert (=> d!1147740 (= lt!1350549 (forall!8298 rules!2768 lambda!126251))))

(declare-fun e!2397466 () Bool)

(assert (=> d!1147740 (= lt!1350549 e!2397466)))

(declare-fun res!1570055 () Bool)

(assert (=> d!1147740 (=> res!1570055 e!2397466)))

(assert (=> d!1147740 (= res!1570055 (not ((_ is Cons!41179) rules!2768)))))

(assert (=> d!1147740 (= (rulesValidInductive!2288 thiss!20629 rules!2768) lt!1350549)))

(declare-fun b!3875542 () Bool)

(declare-fun e!2397465 () Bool)

(assert (=> b!3875542 (= e!2397466 e!2397465)))

(declare-fun res!1570056 () Bool)

(assert (=> b!3875542 (=> (not res!1570056) (not e!2397465))))

(assert (=> b!3875542 (= res!1570056 (ruleValid!2342 thiss!20629 (h!46599 rules!2768)))))

(declare-fun b!3875543 () Bool)

(assert (=> b!3875543 (= e!2397465 (rulesValidInductive!2288 thiss!20629 (t!314850 rules!2768)))))

(assert (= (and d!1147740 (not res!1570055)) b!3875542))

(assert (= (and b!3875542 res!1570056) b!3875543))

(declare-fun m!4433539 () Bool)

(assert (=> d!1147740 m!4433539))

(declare-fun m!4433541 () Bool)

(assert (=> b!3875542 m!4433541))

(declare-fun m!4433543 () Bool)

(assert (=> b!3875543 m!4433543))

(assert (=> b!3875062 d!1147740))

(declare-fun b!3875552 () Bool)

(declare-fun e!2397472 () Bool)

(declare-fun lt!1350553 () tuple2!40408)

(assert (=> b!3875552 (= e!2397472 (= (_2!23338 lt!1350553) lt!1350288))))

(declare-fun b!3875553 () Bool)

(declare-fun e!2397471 () tuple2!40408)

(assert (=> b!3875553 (= e!2397471 (tuple2!40409 Nil!41178 lt!1350288))))

(declare-fun b!3875554 () Bool)

(declare-fun e!2397473 () Bool)

(assert (=> b!3875554 (= e!2397472 e!2397473)))

(declare-fun res!1570061 () Bool)

(assert (=> b!3875554 (= res!1570061 (< (size!30946 (_2!23338 lt!1350553)) (size!30946 lt!1350288)))))

(assert (=> b!3875554 (=> (not res!1570061) (not e!2397473))))

(declare-fun b!3875555 () Bool)

(declare-fun lt!1350552 () Option!8808)

(declare-fun lt!1350554 () tuple2!40408)

(assert (=> b!3875555 (= e!2397471 (tuple2!40409 (Cons!41178 (_1!23337 (v!39105 lt!1350552)) (_1!23338 lt!1350554)) (_2!23338 lt!1350554)))))

(assert (=> b!3875555 (= lt!1350554 (lexList!1747 thiss!20629 rules!2768 (_2!23337 (v!39105 lt!1350552))))))

(declare-fun d!1147786 () Bool)

(assert (=> d!1147786 e!2397472))

(declare-fun c!674361 () Bool)

(assert (=> d!1147786 (= c!674361 (> (size!30948 (_1!23338 lt!1350553)) 0))))

(assert (=> d!1147786 (= lt!1350553 e!2397471)))

(declare-fun c!674362 () Bool)

(assert (=> d!1147786 (= c!674362 ((_ is Some!8807) lt!1350552))))

(assert (=> d!1147786 (= lt!1350552 (maxPrefix!3283 thiss!20629 rules!2768 lt!1350288))))

(assert (=> d!1147786 (= (lexList!1747 thiss!20629 rules!2768 lt!1350288) lt!1350553)))

(declare-fun b!3875556 () Bool)

(assert (=> b!3875556 (= e!2397473 (not (isEmpty!24439 (_1!23338 lt!1350553))))))

(assert (= (and d!1147786 c!674362) b!3875555))

(assert (= (and d!1147786 (not c!674362)) b!3875553))

(assert (= (and d!1147786 c!674361) b!3875554))

(assert (= (and d!1147786 (not c!674361)) b!3875552))

(assert (= (and b!3875554 res!1570061) b!3875556))

(declare-fun m!4433553 () Bool)

(assert (=> b!3875554 m!4433553))

(assert (=> b!3875554 m!4433063))

(declare-fun m!4433555 () Bool)

(assert (=> b!3875555 m!4433555))

(declare-fun m!4433557 () Bool)

(assert (=> d!1147786 m!4433557))

(declare-fun m!4433559 () Bool)

(assert (=> d!1147786 m!4433559))

(declare-fun m!4433561 () Bool)

(assert (=> b!3875556 m!4433561))

(assert (=> b!3875062 d!1147786))

(declare-fun d!1147790 () Bool)

(assert (=> d!1147790 (= (lexList!1747 thiss!20629 rules!2768 lt!1350288) (tuple2!40409 lt!1350301 Nil!41177))))

(declare-fun lt!1350579 () Unit!59108)

(declare-fun choose!22971 (LexerInterface!5979 List!41303 List!41301 List!41301 List!41302 List!41302 List!41301) Unit!59108)

(assert (=> d!1147790 (= lt!1350579 (choose!22971 thiss!20629 rules!2768 lt!1350288 suffix!1176 lt!1350301 suffixTokens!72 suffixResult!91))))

(assert (=> d!1147790 (not (isEmpty!24438 rules!2768))))

(assert (=> d!1147790 (= (lemmaLexThenLexPrefix!579 thiss!20629 rules!2768 lt!1350288 suffix!1176 lt!1350301 suffixTokens!72 suffixResult!91) lt!1350579)))

(declare-fun bs!583650 () Bool)

(assert (= bs!583650 d!1147790))

(assert (=> bs!583650 m!4432753))

(declare-fun m!4433639 () Bool)

(assert (=> bs!583650 m!4433639))

(assert (=> bs!583650 m!4432675))

(assert (=> b!3875062 d!1147790))

(declare-fun d!1147828 () Bool)

(assert (=> d!1147828 (not (= (lexList!1747 thiss!20629 rules!2768 (_2!23337 lt!1350294)) (tuple2!40409 (++!10538 lt!1350298 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1350584 () Unit!59108)

(declare-fun choose!22973 (LexerInterface!5979 List!41303 List!41301 List!41301 List!41302 List!41301 List!41302) Unit!59108)

(assert (=> d!1147828 (= lt!1350584 (choose!22973 thiss!20629 rules!2768 suffix!1176 (_2!23337 lt!1350294) suffixTokens!72 suffixResult!91 lt!1350298))))

(assert (=> d!1147828 (not (isEmpty!24438 rules!2768))))

(assert (=> d!1147828 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!50 thiss!20629 rules!2768 suffix!1176 (_2!23337 lt!1350294) suffixTokens!72 suffixResult!91 lt!1350298) lt!1350584)))

(declare-fun bs!583652 () Bool)

(assert (= bs!583652 d!1147828))

(assert (=> bs!583652 m!4432705))

(assert (=> bs!583652 m!4432635))

(declare-fun m!4433663 () Bool)

(assert (=> bs!583652 m!4433663))

(assert (=> bs!583652 m!4432675))

(assert (=> b!3875041 d!1147828))

(declare-fun b!3875649 () Bool)

(declare-fun e!2397543 () List!41302)

(assert (=> b!3875649 (= e!2397543 (Cons!41178 (h!46598 lt!1350298) (++!10538 (t!314849 lt!1350298) suffixTokens!72)))))

(declare-fun d!1147830 () Bool)

(declare-fun e!2397544 () Bool)

(assert (=> d!1147830 e!2397544))

(declare-fun res!1570080 () Bool)

(assert (=> d!1147830 (=> (not res!1570080) (not e!2397544))))

(declare-fun lt!1350585 () List!41302)

(assert (=> d!1147830 (= res!1570080 (= (content!6156 lt!1350585) ((_ map or) (content!6156 lt!1350298) (content!6156 suffixTokens!72))))))

(assert (=> d!1147830 (= lt!1350585 e!2397543)))

(declare-fun c!674369 () Bool)

(assert (=> d!1147830 (= c!674369 ((_ is Nil!41178) lt!1350298))))

(assert (=> d!1147830 (= (++!10538 lt!1350298 suffixTokens!72) lt!1350585)))

(declare-fun b!3875651 () Bool)

(assert (=> b!3875651 (= e!2397544 (or (not (= suffixTokens!72 Nil!41178)) (= lt!1350585 lt!1350298)))))

(declare-fun b!3875648 () Bool)

(assert (=> b!3875648 (= e!2397543 suffixTokens!72)))

(declare-fun b!3875650 () Bool)

(declare-fun res!1570079 () Bool)

(assert (=> b!3875650 (=> (not res!1570079) (not e!2397544))))

(assert (=> b!3875650 (= res!1570079 (= (size!30948 lt!1350585) (+ (size!30948 lt!1350298) (size!30948 suffixTokens!72))))))

(assert (= (and d!1147830 c!674369) b!3875648))

(assert (= (and d!1147830 (not c!674369)) b!3875649))

(assert (= (and d!1147830 res!1570080) b!3875650))

(assert (= (and b!3875650 res!1570079) b!3875651))

(declare-fun m!4433665 () Bool)

(assert (=> b!3875649 m!4433665))

(declare-fun m!4433667 () Bool)

(assert (=> d!1147830 m!4433667))

(declare-fun m!4433669 () Bool)

(assert (=> d!1147830 m!4433669))

(assert (=> d!1147830 m!4432991))

(declare-fun m!4433671 () Bool)

(assert (=> b!3875650 m!4433671))

(declare-fun m!4433673 () Bool)

(assert (=> b!3875650 m!4433673))

(assert (=> b!3875650 m!4432997))

(assert (=> b!3875041 d!1147830))

(declare-fun d!1147832 () Bool)

(assert (=> d!1147832 (= (isEmpty!24439 lt!1350298) ((_ is Nil!41178) lt!1350298))))

(assert (=> b!3875063 d!1147832))

(assert (=> b!3875063 d!1147618))

(declare-fun b!3875670 () Bool)

(declare-fun res!1570098 () Bool)

(declare-fun e!2397553 () Bool)

(assert (=> b!3875670 (=> (not res!1570098) (not e!2397553))))

(declare-fun lt!1350599 () Option!8808)

(assert (=> b!3875670 (= res!1570098 (= (++!10537 (list!15316 (charsOf!4218 (_1!23337 (get!13625 lt!1350599)))) (_2!23337 (get!13625 lt!1350599))) lt!1350300))))

(declare-fun d!1147834 () Bool)

(declare-fun e!2397552 () Bool)

(assert (=> d!1147834 e!2397552))

(declare-fun res!1570101 () Bool)

(assert (=> d!1147834 (=> res!1570101 e!2397552)))

(assert (=> d!1147834 (= res!1570101 (isEmpty!24442 lt!1350599))))

(declare-fun e!2397551 () Option!8808)

(assert (=> d!1147834 (= lt!1350599 e!2397551)))

(declare-fun c!674372 () Bool)

(assert (=> d!1147834 (= c!674372 (and ((_ is Cons!41179) rules!2768) ((_ is Nil!41179) (t!314850 rules!2768))))))

(declare-fun lt!1350600 () Unit!59108)

(declare-fun lt!1350597 () Unit!59108)

(assert (=> d!1147834 (= lt!1350600 lt!1350597)))

(assert (=> d!1147834 (isPrefix!3489 lt!1350300 lt!1350300)))

(declare-fun lemmaIsPrefixRefl!2214 (List!41301 List!41301) Unit!59108)

(assert (=> d!1147834 (= lt!1350597 (lemmaIsPrefixRefl!2214 lt!1350300 lt!1350300))))

(assert (=> d!1147834 (rulesValidInductive!2288 thiss!20629 rules!2768)))

(assert (=> d!1147834 (= (maxPrefix!3283 thiss!20629 rules!2768 lt!1350300) lt!1350599)))

(declare-fun b!3875671 () Bool)

(declare-fun lt!1350596 () Option!8808)

(declare-fun lt!1350598 () Option!8808)

(assert (=> b!3875671 (= e!2397551 (ite (and ((_ is None!8807) lt!1350596) ((_ is None!8807) lt!1350598)) None!8807 (ite ((_ is None!8807) lt!1350598) lt!1350596 (ite ((_ is None!8807) lt!1350596) lt!1350598 (ite (>= (size!30945 (_1!23337 (v!39105 lt!1350596))) (size!30945 (_1!23337 (v!39105 lt!1350598)))) lt!1350596 lt!1350598)))))))

(declare-fun call!282792 () Option!8808)

(assert (=> b!3875671 (= lt!1350596 call!282792)))

(assert (=> b!3875671 (= lt!1350598 (maxPrefix!3283 thiss!20629 (t!314850 rules!2768) lt!1350300))))

(declare-fun bm!282787 () Bool)

(assert (=> bm!282787 (= call!282792 (maxPrefixOneRule!2365 thiss!20629 (h!46599 rules!2768) lt!1350300))))

(declare-fun b!3875672 () Bool)

(declare-fun res!1570095 () Bool)

(assert (=> b!3875672 (=> (not res!1570095) (not e!2397553))))

(assert (=> b!3875672 (= res!1570095 (= (list!15316 (charsOf!4218 (_1!23337 (get!13625 lt!1350599)))) (originalCharacters!6990 (_1!23337 (get!13625 lt!1350599)))))))

(declare-fun b!3875673 () Bool)

(assert (=> b!3875673 (= e!2397553 (contains!8295 rules!2768 (rule!9284 (_1!23337 (get!13625 lt!1350599)))))))

(declare-fun b!3875674 () Bool)

(assert (=> b!3875674 (= e!2397551 call!282792)))

(declare-fun b!3875675 () Bool)

(declare-fun res!1570097 () Bool)

(assert (=> b!3875675 (=> (not res!1570097) (not e!2397553))))

(assert (=> b!3875675 (= res!1570097 (< (size!30946 (_2!23337 (get!13625 lt!1350599))) (size!30946 lt!1350300)))))

(declare-fun b!3875676 () Bool)

(assert (=> b!3875676 (= e!2397552 e!2397553)))

(declare-fun res!1570099 () Bool)

(assert (=> b!3875676 (=> (not res!1570099) (not e!2397553))))

(declare-fun isDefined!6891 (Option!8808) Bool)

(assert (=> b!3875676 (= res!1570099 (isDefined!6891 lt!1350599))))

(declare-fun b!3875677 () Bool)

(declare-fun res!1570100 () Bool)

(assert (=> b!3875677 (=> (not res!1570100) (not e!2397553))))

(assert (=> b!3875677 (= res!1570100 (matchR!5420 (regex!6390 (rule!9284 (_1!23337 (get!13625 lt!1350599)))) (list!15316 (charsOf!4218 (_1!23337 (get!13625 lt!1350599))))))))

(declare-fun b!3875678 () Bool)

(declare-fun res!1570096 () Bool)

(assert (=> b!3875678 (=> (not res!1570096) (not e!2397553))))

(assert (=> b!3875678 (= res!1570096 (= (value!202749 (_1!23337 (get!13625 lt!1350599))) (apply!9633 (transformation!6390 (rule!9284 (_1!23337 (get!13625 lt!1350599)))) (seqFromList!4661 (originalCharacters!6990 (_1!23337 (get!13625 lt!1350599)))))))))

(assert (= (and d!1147834 c!674372) b!3875674))

(assert (= (and d!1147834 (not c!674372)) b!3875671))

(assert (= (or b!3875674 b!3875671) bm!282787))

(assert (= (and d!1147834 (not res!1570101)) b!3875676))

(assert (= (and b!3875676 res!1570099) b!3875672))

(assert (= (and b!3875672 res!1570095) b!3875675))

(assert (= (and b!3875675 res!1570097) b!3875670))

(assert (= (and b!3875670 res!1570098) b!3875678))

(assert (= (and b!3875678 res!1570096) b!3875677))

(assert (= (and b!3875677 res!1570100) b!3875673))

(declare-fun m!4433675 () Bool)

(assert (=> b!3875675 m!4433675))

(declare-fun m!4433677 () Bool)

(assert (=> b!3875675 m!4433677))

(assert (=> b!3875675 m!4432769))

(declare-fun m!4433679 () Bool)

(assert (=> bm!282787 m!4433679))

(declare-fun m!4433681 () Bool)

(assert (=> d!1147834 m!4433681))

(declare-fun m!4433683 () Bool)

(assert (=> d!1147834 m!4433683))

(declare-fun m!4433685 () Bool)

(assert (=> d!1147834 m!4433685))

(assert (=> d!1147834 m!4432751))

(assert (=> b!3875673 m!4433675))

(declare-fun m!4433687 () Bool)

(assert (=> b!3875673 m!4433687))

(assert (=> b!3875672 m!4433675))

(declare-fun m!4433689 () Bool)

(assert (=> b!3875672 m!4433689))

(assert (=> b!3875672 m!4433689))

(declare-fun m!4433691 () Bool)

(assert (=> b!3875672 m!4433691))

(assert (=> b!3875670 m!4433675))

(assert (=> b!3875670 m!4433689))

(assert (=> b!3875670 m!4433689))

(assert (=> b!3875670 m!4433691))

(assert (=> b!3875670 m!4433691))

(declare-fun m!4433693 () Bool)

(assert (=> b!3875670 m!4433693))

(assert (=> b!3875677 m!4433675))

(assert (=> b!3875677 m!4433689))

(assert (=> b!3875677 m!4433689))

(assert (=> b!3875677 m!4433691))

(assert (=> b!3875677 m!4433691))

(declare-fun m!4433695 () Bool)

(assert (=> b!3875677 m!4433695))

(declare-fun m!4433697 () Bool)

(assert (=> b!3875671 m!4433697))

(assert (=> b!3875678 m!4433675))

(declare-fun m!4433699 () Bool)

(assert (=> b!3875678 m!4433699))

(assert (=> b!3875678 m!4433699))

(declare-fun m!4433701 () Bool)

(assert (=> b!3875678 m!4433701))

(declare-fun m!4433703 () Bool)

(assert (=> b!3875676 m!4433703))

(assert (=> b!3875042 d!1147834))

(declare-fun d!1147836 () Bool)

(declare-fun lt!1350601 () Int)

(assert (=> d!1147836 (>= lt!1350601 0)))

(declare-fun e!2397554 () Int)

(assert (=> d!1147836 (= lt!1350601 e!2397554)))

(declare-fun c!674373 () Bool)

(assert (=> d!1147836 (= c!674373 ((_ is Nil!41177) (originalCharacters!6990 (_1!23337 (v!39105 lt!1350281)))))))

(assert (=> d!1147836 (= (size!30946 (originalCharacters!6990 (_1!23337 (v!39105 lt!1350281)))) lt!1350601)))

(declare-fun b!3875679 () Bool)

(assert (=> b!3875679 (= e!2397554 0)))

(declare-fun b!3875680 () Bool)

(assert (=> b!3875680 (= e!2397554 (+ 1 (size!30946 (t!314848 (originalCharacters!6990 (_1!23337 (v!39105 lt!1350281)))))))))

(assert (= (and d!1147836 c!674373) b!3875679))

(assert (= (and d!1147836 (not c!674373)) b!3875680))

(declare-fun m!4433705 () Bool)

(assert (=> b!3875680 m!4433705))

(assert (=> b!3875064 d!1147836))

(declare-fun d!1147838 () Bool)

(assert (=> d!1147838 (= (inv!55334 (tag!7250 (rule!9284 (h!46598 suffixTokens!72)))) (= (mod (str.len (value!202748 (tag!7250 (rule!9284 (h!46598 suffixTokens!72))))) 2) 0))))

(assert (=> b!3875043 d!1147838))

(declare-fun d!1147840 () Bool)

(declare-fun res!1570102 () Bool)

(declare-fun e!2397555 () Bool)

(assert (=> d!1147840 (=> (not res!1570102) (not e!2397555))))

(assert (=> d!1147840 (= res!1570102 (semiInverseModEq!2743 (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) (toValue!8818 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72))))))))

(assert (=> d!1147840 (= (inv!55338 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) e!2397555)))

(declare-fun b!3875681 () Bool)

(assert (=> b!3875681 (= e!2397555 (equivClasses!2642 (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) (toValue!8818 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72))))))))

(assert (= (and d!1147840 res!1570102) b!3875681))

(declare-fun m!4433707 () Bool)

(assert (=> d!1147840 m!4433707))

(declare-fun m!4433709 () Bool)

(assert (=> b!3875681 m!4433709))

(assert (=> b!3875043 d!1147840))

(assert (=> b!3875044 d!1147534))

(assert (=> b!3875044 d!1147536))

(declare-fun d!1147842 () Bool)

(assert (=> d!1147842 (= lt!1350325 prefix!426)))

(declare-fun lt!1350604 () Unit!59108)

(declare-fun choose!22975 (List!41301 List!41301 List!41301) Unit!59108)

(assert (=> d!1147842 (= lt!1350604 (choose!22975 lt!1350325 prefix!426 lt!1350300))))

(assert (=> d!1147842 (isPrefix!3489 lt!1350325 lt!1350300)))

(assert (=> d!1147842 (= (lemmaIsPrefixSameLengthThenSameList!741 lt!1350325 prefix!426 lt!1350300) lt!1350604)))

(declare-fun bs!583653 () Bool)

(assert (= bs!583653 d!1147842))

(declare-fun m!4433711 () Bool)

(assert (=> bs!583653 m!4433711))

(assert (=> bs!583653 m!4432811))

(assert (=> b!3875044 d!1147842))

(declare-fun d!1147844 () Bool)

(assert (=> d!1147844 (= (_2!23337 (v!39105 lt!1350281)) suffix!1176)))

(declare-fun lt!1350605 () Unit!59108)

(assert (=> d!1147844 (= lt!1350605 (choose!22956 lt!1350325 (_2!23337 (v!39105 lt!1350281)) prefix!426 suffix!1176 lt!1350300))))

(assert (=> d!1147844 (isPrefix!3489 lt!1350325 lt!1350300)))

(assert (=> d!1147844 (= (lemmaSamePrefixThenSameSuffix!1710 lt!1350325 (_2!23337 (v!39105 lt!1350281)) prefix!426 suffix!1176 lt!1350300) lt!1350605)))

(declare-fun bs!583654 () Bool)

(assert (= bs!583654 d!1147844))

(declare-fun m!4433713 () Bool)

(assert (=> bs!583654 m!4433713))

(assert (=> bs!583654 m!4432811))

(assert (=> b!3875044 d!1147844))

(declare-fun b!3875682 () Bool)

(declare-fun e!2397556 () Bool)

(declare-fun e!2397558 () Bool)

(assert (=> b!3875682 (= e!2397556 e!2397558)))

(declare-fun c!674375 () Bool)

(assert (=> b!3875682 (= c!674375 ((_ is IntegerValue!19861) (value!202749 (h!46598 suffixTokens!72))))))

(declare-fun b!3875683 () Bool)

(assert (=> b!3875683 (= e!2397556 (inv!16 (value!202749 (h!46598 suffixTokens!72))))))

(declare-fun d!1147846 () Bool)

(declare-fun c!674374 () Bool)

(assert (=> d!1147846 (= c!674374 ((_ is IntegerValue!19860) (value!202749 (h!46598 suffixTokens!72))))))

(assert (=> d!1147846 (= (inv!21 (value!202749 (h!46598 suffixTokens!72))) e!2397556)))

(declare-fun b!3875684 () Bool)

(declare-fun res!1570103 () Bool)

(declare-fun e!2397557 () Bool)

(assert (=> b!3875684 (=> res!1570103 e!2397557)))

(assert (=> b!3875684 (= res!1570103 (not ((_ is IntegerValue!19862) (value!202749 (h!46598 suffixTokens!72)))))))

(assert (=> b!3875684 (= e!2397558 e!2397557)))

(declare-fun b!3875685 () Bool)

(assert (=> b!3875685 (= e!2397557 (inv!15 (value!202749 (h!46598 suffixTokens!72))))))

(declare-fun b!3875686 () Bool)

(assert (=> b!3875686 (= e!2397558 (inv!17 (value!202749 (h!46598 suffixTokens!72))))))

(assert (= (and d!1147846 c!674374) b!3875683))

(assert (= (and d!1147846 (not c!674374)) b!3875682))

(assert (= (and b!3875682 c!674375) b!3875686))

(assert (= (and b!3875682 (not c!674375)) b!3875684))

(assert (= (and b!3875684 (not res!1570103)) b!3875685))

(declare-fun m!4433715 () Bool)

(assert (=> b!3875683 m!4433715))

(declare-fun m!4433717 () Bool)

(assert (=> b!3875685 m!4433717))

(declare-fun m!4433719 () Bool)

(assert (=> b!3875686 m!4433719))

(assert (=> b!3875045 d!1147846))

(declare-fun d!1147848 () Bool)

(assert (=> d!1147848 (= (head!8214 prefixTokens!80) (h!46598 prefixTokens!80))))

(assert (=> b!3875067 d!1147848))

(declare-fun b!3875700 () Bool)

(declare-fun b_free!104773 () Bool)

(declare-fun b_next!105477 () Bool)

(assert (=> b!3875700 (= b_free!104773 (not b_next!105477))))

(declare-fun t!314924 () Bool)

(declare-fun tb!224921 () Bool)

(assert (=> (and b!3875700 (= (toValue!8818 (transformation!6390 (rule!9284 (h!46598 (t!314849 prefixTokens!80))))) (toValue!8818 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314924) tb!224921))

(declare-fun result!273964 () Bool)

(assert (= result!273964 result!273890))

(assert (=> d!1147654 t!314924))

(declare-fun tp!1174910 () Bool)

(declare-fun b_and!290619 () Bool)

(assert (=> b!3875700 (= tp!1174910 (and (=> t!314924 result!273964) b_and!290619))))

(declare-fun b_free!104775 () Bool)

(declare-fun b_next!105479 () Bool)

(assert (=> b!3875700 (= b_free!104775 (not b_next!105479))))

(declare-fun t!314926 () Bool)

(declare-fun tb!224923 () Bool)

(assert (=> (and b!3875700 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 (t!314849 prefixTokens!80))))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72))))) t!314926) tb!224923))

(declare-fun result!273966 () Bool)

(assert (= result!273966 result!273882))

(assert (=> b!3875319 t!314926))

(declare-fun t!314928 () Bool)

(declare-fun tb!224925 () Bool)

(assert (=> (and b!3875700 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 (t!314849 prefixTokens!80))))) (toChars!8677 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314928) tb!224925))

(declare-fun result!273968 () Bool)

(assert (= result!273968 result!273904))

(assert (=> d!1147662 t!314928))

(declare-fun t!314930 () Bool)

(declare-fun tb!224927 () Bool)

(assert (=> (and b!3875700 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 (t!314849 prefixTokens!80))))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80))))) t!314930) tb!224927))

(declare-fun result!273970 () Bool)

(assert (= result!273970 result!273910))

(assert (=> b!3875440 t!314930))

(declare-fun tp!1174909 () Bool)

(declare-fun b_and!290621 () Bool)

(assert (=> b!3875700 (= tp!1174909 (and (=> t!314926 result!273966) (=> t!314928 result!273968) (=> t!314930 result!273970) b_and!290621))))

(declare-fun b!3875698 () Bool)

(declare-fun e!2397573 () Bool)

(declare-fun e!2397575 () Bool)

(declare-fun tp!1174911 () Bool)

(assert (=> b!3875698 (= e!2397575 (and (inv!21 (value!202749 (h!46598 (t!314849 prefixTokens!80)))) e!2397573 tp!1174911))))

(declare-fun tp!1174912 () Bool)

(declare-fun b!3875699 () Bool)

(declare-fun e!2397576 () Bool)

(assert (=> b!3875699 (= e!2397573 (and tp!1174912 (inv!55334 (tag!7250 (rule!9284 (h!46598 (t!314849 prefixTokens!80))))) (inv!55338 (transformation!6390 (rule!9284 (h!46598 (t!314849 prefixTokens!80))))) e!2397576))))

(assert (=> b!3875700 (= e!2397576 (and tp!1174910 tp!1174909))))

(declare-fun b!3875697 () Bool)

(declare-fun tp!1174913 () Bool)

(declare-fun e!2397574 () Bool)

(assert (=> b!3875697 (= e!2397574 (and (inv!55337 (h!46598 (t!314849 prefixTokens!80))) e!2397575 tp!1174913))))

(assert (=> b!3875037 (= tp!1174808 e!2397574)))

(assert (= b!3875699 b!3875700))

(assert (= b!3875698 b!3875699))

(assert (= b!3875697 b!3875698))

(assert (= (and b!3875037 ((_ is Cons!41178) (t!314849 prefixTokens!80))) b!3875697))

(declare-fun m!4433721 () Bool)

(assert (=> b!3875698 m!4433721))

(declare-fun m!4433723 () Bool)

(assert (=> b!3875699 m!4433723))

(declare-fun m!4433725 () Bool)

(assert (=> b!3875699 m!4433725))

(declare-fun m!4433727 () Bool)

(assert (=> b!3875697 m!4433727))

(declare-fun e!2397579 () Bool)

(assert (=> b!3875059 (= tp!1174818 e!2397579)))

(declare-fun b!3875714 () Bool)

(declare-fun tp!1174925 () Bool)

(declare-fun tp!1174926 () Bool)

(assert (=> b!3875714 (= e!2397579 (and tp!1174925 tp!1174926))))

(declare-fun b!3875711 () Bool)

(assert (=> b!3875711 (= e!2397579 tp_is_empty!19561)))

(declare-fun b!3875713 () Bool)

(declare-fun tp!1174928 () Bool)

(assert (=> b!3875713 (= e!2397579 tp!1174928)))

(declare-fun b!3875712 () Bool)

(declare-fun tp!1174927 () Bool)

(declare-fun tp!1174924 () Bool)

(assert (=> b!3875712 (= e!2397579 (and tp!1174927 tp!1174924))))

(assert (= (and b!3875059 ((_ is ElementMatch!11295) (regex!6390 (rule!9284 (h!46598 prefixTokens!80))))) b!3875711))

(assert (= (and b!3875059 ((_ is Concat!17916) (regex!6390 (rule!9284 (h!46598 prefixTokens!80))))) b!3875712))

(assert (= (and b!3875059 ((_ is Star!11295) (regex!6390 (rule!9284 (h!46598 prefixTokens!80))))) b!3875713))

(assert (= (and b!3875059 ((_ is Union!11295) (regex!6390 (rule!9284 (h!46598 prefixTokens!80))))) b!3875714))

(declare-fun b!3875719 () Bool)

(declare-fun e!2397582 () Bool)

(declare-fun tp!1174931 () Bool)

(assert (=> b!3875719 (= e!2397582 (and tp_is_empty!19561 tp!1174931))))

(assert (=> b!3875070 (= tp!1174822 e!2397582)))

(assert (= (and b!3875070 ((_ is Cons!41177) (t!314848 suffixResult!91))) b!3875719))

(declare-fun e!2397583 () Bool)

(assert (=> b!3875049 (= tp!1174815 e!2397583)))

(declare-fun b!3875723 () Bool)

(declare-fun tp!1174933 () Bool)

(declare-fun tp!1174934 () Bool)

(assert (=> b!3875723 (= e!2397583 (and tp!1174933 tp!1174934))))

(declare-fun b!3875720 () Bool)

(assert (=> b!3875720 (= e!2397583 tp_is_empty!19561)))

(declare-fun b!3875722 () Bool)

(declare-fun tp!1174936 () Bool)

(assert (=> b!3875722 (= e!2397583 tp!1174936)))

(declare-fun b!3875721 () Bool)

(declare-fun tp!1174935 () Bool)

(declare-fun tp!1174932 () Bool)

(assert (=> b!3875721 (= e!2397583 (and tp!1174935 tp!1174932))))

(assert (= (and b!3875049 ((_ is ElementMatch!11295) (regex!6390 (h!46599 rules!2768)))) b!3875720))

(assert (= (and b!3875049 ((_ is Concat!17916) (regex!6390 (h!46599 rules!2768)))) b!3875721))

(assert (= (and b!3875049 ((_ is Star!11295) (regex!6390 (h!46599 rules!2768)))) b!3875722))

(assert (= (and b!3875049 ((_ is Union!11295) (regex!6390 (h!46599 rules!2768)))) b!3875723))

(declare-fun b!3875724 () Bool)

(declare-fun e!2397584 () Bool)

(declare-fun tp!1174937 () Bool)

(assert (=> b!3875724 (= e!2397584 (and tp_is_empty!19561 tp!1174937))))

(assert (=> b!3875039 (= tp!1174819 e!2397584)))

(assert (= (and b!3875039 ((_ is Cons!41177) (originalCharacters!6990 (h!46598 prefixTokens!80)))) b!3875724))

(declare-fun b!3875728 () Bool)

(declare-fun b_free!104777 () Bool)

(declare-fun b_next!105481 () Bool)

(assert (=> b!3875728 (= b_free!104777 (not b_next!105481))))

(declare-fun tb!224929 () Bool)

(declare-fun t!314932 () Bool)

(assert (=> (and b!3875728 (= (toValue!8818 (transformation!6390 (rule!9284 (h!46598 (t!314849 suffixTokens!72))))) (toValue!8818 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314932) tb!224929))

(declare-fun result!273976 () Bool)

(assert (= result!273976 result!273890))

(assert (=> d!1147654 t!314932))

(declare-fun b_and!290623 () Bool)

(declare-fun tp!1174939 () Bool)

(assert (=> b!3875728 (= tp!1174939 (and (=> t!314932 result!273976) b_and!290623))))

(declare-fun b_free!104779 () Bool)

(declare-fun b_next!105483 () Bool)

(assert (=> b!3875728 (= b_free!104779 (not b_next!105483))))

(declare-fun t!314934 () Bool)

(declare-fun tb!224931 () Bool)

(assert (=> (and b!3875728 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 (t!314849 suffixTokens!72))))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72))))) t!314934) tb!224931))

(declare-fun result!273978 () Bool)

(assert (= result!273978 result!273882))

(assert (=> b!3875319 t!314934))

(declare-fun t!314936 () Bool)

(declare-fun tb!224933 () Bool)

(assert (=> (and b!3875728 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 (t!314849 suffixTokens!72))))) (toChars!8677 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314936) tb!224933))

(declare-fun result!273980 () Bool)

(assert (= result!273980 result!273904))

(assert (=> d!1147662 t!314936))

(declare-fun t!314938 () Bool)

(declare-fun tb!224935 () Bool)

(assert (=> (and b!3875728 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 (t!314849 suffixTokens!72))))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80))))) t!314938) tb!224935))

(declare-fun result!273982 () Bool)

(assert (= result!273982 result!273910))

(assert (=> b!3875440 t!314938))

(declare-fun tp!1174938 () Bool)

(declare-fun b_and!290625 () Bool)

(assert (=> b!3875728 (= tp!1174938 (and (=> t!314934 result!273978) (=> t!314936 result!273980) (=> t!314938 result!273982) b_and!290625))))

(declare-fun e!2397589 () Bool)

(declare-fun tp!1174940 () Bool)

(declare-fun b!3875726 () Bool)

(declare-fun e!2397587 () Bool)

(assert (=> b!3875726 (= e!2397589 (and (inv!21 (value!202749 (h!46598 (t!314849 suffixTokens!72)))) e!2397587 tp!1174940))))

(declare-fun tp!1174941 () Bool)

(declare-fun b!3875727 () Bool)

(declare-fun e!2397590 () Bool)

(assert (=> b!3875727 (= e!2397587 (and tp!1174941 (inv!55334 (tag!7250 (rule!9284 (h!46598 (t!314849 suffixTokens!72))))) (inv!55338 (transformation!6390 (rule!9284 (h!46598 (t!314849 suffixTokens!72))))) e!2397590))))

(assert (=> b!3875728 (= e!2397590 (and tp!1174939 tp!1174938))))

(declare-fun b!3875725 () Bool)

(declare-fun e!2397588 () Bool)

(declare-fun tp!1174942 () Bool)

(assert (=> b!3875725 (= e!2397588 (and (inv!55337 (h!46598 (t!314849 suffixTokens!72))) e!2397589 tp!1174942))))

(assert (=> b!3875031 (= tp!1174817 e!2397588)))

(assert (= b!3875727 b!3875728))

(assert (= b!3875726 b!3875727))

(assert (= b!3875725 b!3875726))

(assert (= (and b!3875031 ((_ is Cons!41178) (t!314849 suffixTokens!72))) b!3875725))

(declare-fun m!4433729 () Bool)

(assert (=> b!3875726 m!4433729))

(declare-fun m!4433731 () Bool)

(assert (=> b!3875727 m!4433731))

(declare-fun m!4433733 () Bool)

(assert (=> b!3875727 m!4433733))

(declare-fun m!4433735 () Bool)

(assert (=> b!3875725 m!4433735))

(declare-fun e!2397591 () Bool)

(assert (=> b!3875043 (= tp!1174812 e!2397591)))

(declare-fun b!3875732 () Bool)

(declare-fun tp!1174944 () Bool)

(declare-fun tp!1174945 () Bool)

(assert (=> b!3875732 (= e!2397591 (and tp!1174944 tp!1174945))))

(declare-fun b!3875729 () Bool)

(assert (=> b!3875729 (= e!2397591 tp_is_empty!19561)))

(declare-fun b!3875731 () Bool)

(declare-fun tp!1174947 () Bool)

(assert (=> b!3875731 (= e!2397591 tp!1174947)))

(declare-fun b!3875730 () Bool)

(declare-fun tp!1174946 () Bool)

(declare-fun tp!1174943 () Bool)

(assert (=> b!3875730 (= e!2397591 (and tp!1174946 tp!1174943))))

(assert (= (and b!3875043 ((_ is ElementMatch!11295) (regex!6390 (rule!9284 (h!46598 suffixTokens!72))))) b!3875729))

(assert (= (and b!3875043 ((_ is Concat!17916) (regex!6390 (rule!9284 (h!46598 suffixTokens!72))))) b!3875730))

(assert (= (and b!3875043 ((_ is Star!11295) (regex!6390 (rule!9284 (h!46598 suffixTokens!72))))) b!3875731))

(assert (= (and b!3875043 ((_ is Union!11295) (regex!6390 (rule!9284 (h!46598 suffixTokens!72))))) b!3875732))

(declare-fun b!3875743 () Bool)

(declare-fun b_free!104781 () Bool)

(declare-fun b_next!105485 () Bool)

(assert (=> b!3875743 (= b_free!104781 (not b_next!105485))))

(declare-fun tb!224937 () Bool)

(declare-fun t!314940 () Bool)

(assert (=> (and b!3875743 (= (toValue!8818 (transformation!6390 (h!46599 (t!314850 rules!2768)))) (toValue!8818 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314940) tb!224937))

(declare-fun result!273986 () Bool)

(assert (= result!273986 result!273890))

(assert (=> d!1147654 t!314940))

(declare-fun tp!1174957 () Bool)

(declare-fun b_and!290627 () Bool)

(assert (=> b!3875743 (= tp!1174957 (and (=> t!314940 result!273986) b_and!290627))))

(declare-fun b_free!104783 () Bool)

(declare-fun b_next!105487 () Bool)

(assert (=> b!3875743 (= b_free!104783 (not b_next!105487))))

(declare-fun t!314942 () Bool)

(declare-fun tb!224939 () Bool)

(assert (=> (and b!3875743 (= (toChars!8677 (transformation!6390 (h!46599 (t!314850 rules!2768)))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72))))) t!314942) tb!224939))

(declare-fun result!273988 () Bool)

(assert (= result!273988 result!273882))

(assert (=> b!3875319 t!314942))

(declare-fun tb!224941 () Bool)

(declare-fun t!314944 () Bool)

(assert (=> (and b!3875743 (= (toChars!8677 (transformation!6390 (h!46599 (t!314850 rules!2768)))) (toChars!8677 (transformation!6390 (rule!9284 (_1!23337 (v!39105 lt!1350281)))))) t!314944) tb!224941))

(declare-fun result!273990 () Bool)

(assert (= result!273990 result!273904))

(assert (=> d!1147662 t!314944))

(declare-fun tb!224943 () Bool)

(declare-fun t!314946 () Bool)

(assert (=> (and b!3875743 (= (toChars!8677 (transformation!6390 (h!46599 (t!314850 rules!2768)))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80))))) t!314946) tb!224943))

(declare-fun result!273992 () Bool)

(assert (= result!273992 result!273910))

(assert (=> b!3875440 t!314946))

(declare-fun tp!1174958 () Bool)

(declare-fun b_and!290629 () Bool)

(assert (=> b!3875743 (= tp!1174958 (and (=> t!314942 result!273988) (=> t!314944 result!273990) (=> t!314946 result!273992) b_and!290629))))

(declare-fun e!2397600 () Bool)

(assert (=> b!3875743 (= e!2397600 (and tp!1174957 tp!1174958))))

(declare-fun e!2397602 () Bool)

(declare-fun tp!1174959 () Bool)

(declare-fun b!3875742 () Bool)

(assert (=> b!3875742 (= e!2397602 (and tp!1174959 (inv!55334 (tag!7250 (h!46599 (t!314850 rules!2768)))) (inv!55338 (transformation!6390 (h!46599 (t!314850 rules!2768)))) e!2397600))))

(declare-fun b!3875741 () Bool)

(declare-fun e!2397603 () Bool)

(declare-fun tp!1174956 () Bool)

(assert (=> b!3875741 (= e!2397603 (and e!2397602 tp!1174956))))

(assert (=> b!3875033 (= tp!1174824 e!2397603)))

(assert (= b!3875742 b!3875743))

(assert (= b!3875741 b!3875742))

(assert (= (and b!3875033 ((_ is Cons!41179) (t!314850 rules!2768))) b!3875741))

(declare-fun m!4433737 () Bool)

(assert (=> b!3875742 m!4433737))

(declare-fun m!4433739 () Bool)

(assert (=> b!3875742 m!4433739))

(declare-fun b!3875744 () Bool)

(declare-fun e!2397604 () Bool)

(declare-fun tp!1174960 () Bool)

(assert (=> b!3875744 (= e!2397604 (and tp_is_empty!19561 tp!1174960))))

(assert (=> b!3875065 (= tp!1174811 e!2397604)))

(assert (= (and b!3875065 ((_ is Cons!41177) (t!314848 suffix!1176))) b!3875744))

(declare-fun b!3875745 () Bool)

(declare-fun e!2397605 () Bool)

(declare-fun tp!1174961 () Bool)

(assert (=> b!3875745 (= e!2397605 (and tp_is_empty!19561 tp!1174961))))

(assert (=> b!3875045 (= tp!1174813 e!2397605)))

(assert (= (and b!3875045 ((_ is Cons!41177) (originalCharacters!6990 (h!46598 suffixTokens!72)))) b!3875745))

(declare-fun b!3875746 () Bool)

(declare-fun e!2397606 () Bool)

(declare-fun tp!1174962 () Bool)

(assert (=> b!3875746 (= e!2397606 (and tp_is_empty!19561 tp!1174962))))

(assert (=> b!3875046 (= tp!1174810 e!2397606)))

(assert (= (and b!3875046 ((_ is Cons!41177) (t!314848 prefix!426))) b!3875746))

(declare-fun b_lambda!113171 () Bool)

(assert (= b_lambda!113153 (or (and b!3875743 b_free!104783 (= (toChars!8677 (transformation!6390 (h!46599 (t!314850 rules!2768)))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))))) (and b!3875053 b_free!104755 (= (toChars!8677 (transformation!6390 (h!46599 rules!2768))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))))) (and b!3875072 b_free!104751) (and b!3875068 b_free!104759 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))))) (and b!3875700 b_free!104775 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 (t!314849 prefixTokens!80))))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))))) (and b!3875728 b_free!104779 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 (t!314849 suffixTokens!72))))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))))) b_lambda!113171)))

(declare-fun b_lambda!113173 () Bool)

(assert (= b_lambda!113161 (or (and b!3875700 b_free!104775 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 (t!314849 prefixTokens!80))))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))))) (and b!3875053 b_free!104755 (= (toChars!8677 (transformation!6390 (h!46599 rules!2768))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))))) (and b!3875072 b_free!104751 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 suffixTokens!72)))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))))) (and b!3875068 b_free!104759) (and b!3875728 b_free!104779 (= (toChars!8677 (transformation!6390 (rule!9284 (h!46598 (t!314849 suffixTokens!72))))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))))) (and b!3875743 b_free!104783 (= (toChars!8677 (transformation!6390 (h!46599 (t!314850 rules!2768)))) (toChars!8677 (transformation!6390 (rule!9284 (h!46598 prefixTokens!80)))))) b_lambda!113173)))

(check-sat b_and!290623 (not b!3875437) (not b!3875741) (not b!3875723) b_and!290589 (not d!1147678) (not d!1147646) (not b!3875319) (not d!1147544) (not d!1147586) (not b_next!105457) (not b!3875400) (not d!1147714) (not d!1147842) (not d!1147612) (not b!3875092) (not b!3875100) (not d!1147732) (not b!3875721) (not b!3875335) b_and!290625 b_and!290575 (not b_lambda!113173) (not d!1147716) (not d!1147560) (not b!3875469) (not b_next!105461) (not b!3875330) (not b!3875397) (not d!1147704) (not b!3875398) (not b!3875726) (not b!3875293) (not b!3875342) (not b!3875463) (not b!3875295) (not b!3875440) (not b!3875090) (not b!3875399) (not b!3875713) (not b!3875410) (not b!3875405) (not d!1147648) (not b_lambda!113155) (not b!3875378) (not d!1147844) (not b!3875730) (not bm!282787) (not b!3875681) (not d!1147626) (not b!3875434) (not b!3875375) (not b!3875727) (not b!3875300) (not d!1147726) (not b!3875556) (not b!3875360) (not b_next!105479) (not d!1147548) (not b!3875467) (not b!3875719) (not b!3875468) (not d!1147650) (not b!3875232) (not b!3875413) (not tb!224873) (not b!3875712) (not b!3875417) (not b!3875282) (not b!3875672) (not b!3875671) (not b!3875446) (not b!3875299) (not b_next!105463) (not d!1147614) (not b!3875686) (not d!1147662) (not b!3875402) (not d!1147830) (not b!3875286) (not tb!224879) (not b!3875698) (not d!1147840) (not d!1147658) (not d!1147736) (not b!3875409) (not d!1147702) (not b!3875555) (not b!3875294) (not tb!224855) (not b!3875281) (not b_next!105455) (not d!1147834) (not b!3875670) (not b!3875745) (not d!1147720) (not b!3875724) (not b!3875231) (not b!3875714) (not b!3875725) (not b!3875461) (not b!3875098) (not b!3875298) (not b!3875731) (not b!3875358) (not d!1147706) (not b!3875422) (not b!3875649) (not d!1147558) (not b!3875407) (not d!1147722) (not b!3875088) (not b!3875676) (not b!3875325) (not b!3875685) (not b!3875677) (not b!3875445) (not b!3875427) (not d!1147698) (not b!3875418) (not d!1147552) (not d!1147790) (not b!3875091) (not b!3875732) (not b!3875421) (not b_lambda!113171) (not b!3875425) (not d!1147688) (not b!3875650) (not b!3875746) (not b_next!105453) (not b!3875472) (not b!3875351) b_and!290591 (not b!3875680) (not b!3875543) (not b!3875101) (not b_next!105477) (not b!3875722) (not b!3875102) (not b_next!105485) (not d!1147652) b_and!290627 (not b_next!105481) (not b!3875448) (not d!1147786) (not b!3875334) (not b!3875086) (not d!1147718) b_and!290573 (not b!3875443) (not b_next!105483) (not d!1147674) (not b!3875675) b_and!290621 tp_is_empty!19561 b_and!290619 (not b!3875554) (not b!3875087) (not d!1147616) (not b!3875744) (not d!1147828) (not b!3875441) (not b!3875438) (not b!3875697) (not d!1147628) (not b_lambda!113159) (not d!1147684) (not b!3875361) (not d!1147534) (not b!3875678) (not d!1147680) (not b!3875404) (not b!3875430) (not b!3875742) (not b!3875333) (not d!1147690) (not b!3875442) (not b!3875328) (not b!3875683) b_and!290593 (not b!3875699) (not d!1147730) (not tb!224861) (not b!3875243) (not d!1147642) (not b!3875374) (not b_next!105459) (not b!3875542) (not b!3875401) (not d!1147630) (not d!1147540) (not b!3875414) (not d!1147656) (not b!3875673) (not d!1147740) b_and!290571 (not b!3875230) (not b!3875433) (not b!3875105) (not b!3875376) b_and!290629 (not b!3875329) (not b_next!105487) (not b!3875371) (not b!3875242) (not d!1147708) (not b!3875464) (not d!1147644) (not b!3875285) (not b!3875429) (not b!3875320) (not d!1147738))
(check-sat b_and!290623 b_and!290589 (not b_next!105457) (not b_next!105479) (not b_next!105463) (not b_next!105455) (not b_next!105453) b_and!290573 (not b_next!105483) b_and!290593 (not b_next!105459) b_and!290571 (not b_next!105461) b_and!290625 b_and!290575 b_and!290591 (not b_next!105477) (not b_next!105481) (not b_next!105485) b_and!290627 b_and!290621 b_and!290619 b_and!290629 (not b_next!105487))
