; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363356 () Bool)

(assert start!363356)

(declare-fun b!3871672 () Bool)

(declare-fun b_free!104557 () Bool)

(declare-fun b_next!105261 () Bool)

(assert (=> b!3871672 (= b_free!104557 (not b_next!105261))))

(declare-fun tp!1173891 () Bool)

(declare-fun b_and!290211 () Bool)

(assert (=> b!3871672 (= tp!1173891 b_and!290211)))

(declare-fun b_free!104559 () Bool)

(declare-fun b_next!105263 () Bool)

(assert (=> b!3871672 (= b_free!104559 (not b_next!105263))))

(declare-fun tp!1173885 () Bool)

(declare-fun b_and!290213 () Bool)

(assert (=> b!3871672 (= tp!1173885 b_and!290213)))

(declare-fun b!3871677 () Bool)

(declare-fun b_free!104561 () Bool)

(declare-fun b_next!105265 () Bool)

(assert (=> b!3871677 (= b_free!104561 (not b_next!105265))))

(declare-fun tp!1173886 () Bool)

(declare-fun b_and!290215 () Bool)

(assert (=> b!3871677 (= tp!1173886 b_and!290215)))

(declare-fun b_free!104563 () Bool)

(declare-fun b_next!105267 () Bool)

(assert (=> b!3871677 (= b_free!104563 (not b_next!105267))))

(declare-fun tp!1173888 () Bool)

(declare-fun b_and!290217 () Bool)

(assert (=> b!3871677 (= tp!1173888 b_and!290217)))

(declare-fun b!3871668 () Bool)

(declare-fun b_free!104565 () Bool)

(declare-fun b_next!105269 () Bool)

(assert (=> b!3871668 (= b_free!104565 (not b_next!105269))))

(declare-fun tp!1173892 () Bool)

(declare-fun b_and!290219 () Bool)

(assert (=> b!3871668 (= tp!1173892 b_and!290219)))

(declare-fun b_free!104567 () Bool)

(declare-fun b_next!105271 () Bool)

(assert (=> b!3871668 (= b_free!104567 (not b_next!105271))))

(declare-fun tp!1173895 () Bool)

(declare-fun b_and!290221 () Bool)

(assert (=> b!3871668 (= tp!1173895 b_and!290221)))

(declare-datatypes ((C!22756 0))(
  ( (C!22757 (val!13472 Int)) )
))
(declare-datatypes ((List!41254 0))(
  ( (Nil!41130) (Cons!41130 (h!46550 C!22756) (t!314513 List!41254)) )
))
(declare-datatypes ((IArray!25187 0))(
  ( (IArray!25188 (innerList!12651 List!41254)) )
))
(declare-datatypes ((Conc!12591 0))(
  ( (Node!12591 (left!31599 Conc!12591) (right!31929 Conc!12591) (csize!25412 Int) (cheight!12802 Int)) (Leaf!19488 (xs!15897 IArray!25187) (csize!25413 Int)) (Empty!12591) )
))
(declare-datatypes ((BalanceConc!24776 0))(
  ( (BalanceConc!24777 (c!673726 Conc!12591)) )
))
(declare-datatypes ((List!41255 0))(
  ( (Nil!41131) (Cons!41131 (h!46551 (_ BitVec 16)) (t!314514 List!41255)) )
))
(declare-datatypes ((TokenValue!6610 0))(
  ( (FloatLiteralValue!13220 (text!46715 List!41255)) (TokenValueExt!6609 (__x!25437 Int)) (Broken!33050 (value!202438 List!41255)) (Object!6733) (End!6610) (Def!6610) (Underscore!6610) (Match!6610) (Else!6610) (Error!6610) (Case!6610) (If!6610) (Extends!6610) (Abstract!6610) (Class!6610) (Val!6610) (DelimiterValue!13220 (del!6670 List!41255)) (KeywordValue!6616 (value!202439 List!41255)) (CommentValue!13220 (value!202440 List!41255)) (WhitespaceValue!13220 (value!202441 List!41255)) (IndentationValue!6610 (value!202442 List!41255)) (String!46767) (Int32!6610) (Broken!33051 (value!202443 List!41255)) (Boolean!6611) (Unit!58982) (OperatorValue!6613 (op!6670 List!41255)) (IdentifierValue!13220 (value!202444 List!41255)) (IdentifierValue!13221 (value!202445 List!41255)) (WhitespaceValue!13221 (value!202446 List!41255)) (True!13220) (False!13220) (Broken!33052 (value!202447 List!41255)) (Broken!33053 (value!202448 List!41255)) (True!13221) (RightBrace!6610) (RightBracket!6610) (Colon!6610) (Null!6610) (Comma!6610) (LeftBracket!6610) (False!13221) (LeftBrace!6610) (ImaginaryLiteralValue!6610 (text!46716 List!41255)) (StringLiteralValue!19830 (value!202449 List!41255)) (EOFValue!6610 (value!202450 List!41255)) (IdentValue!6610 (value!202451 List!41255)) (DelimiterValue!13221 (value!202452 List!41255)) (DedentValue!6610 (value!202453 List!41255)) (NewLineValue!6610 (value!202454 List!41255)) (IntegerValue!19830 (value!202455 (_ BitVec 32)) (text!46717 List!41255)) (IntegerValue!19831 (value!202456 Int) (text!46718 List!41255)) (Times!6610) (Or!6610) (Equal!6610) (Minus!6610) (Broken!33054 (value!202457 List!41255)) (And!6610) (Div!6610) (LessEqual!6610) (Mod!6610) (Concat!17895) (Not!6610) (Plus!6610) (SpaceValue!6610 (value!202458 List!41255)) (IntegerValue!19832 (value!202459 Int) (text!46719 List!41255)) (StringLiteralValue!19831 (text!46720 List!41255)) (FloatLiteralValue!13221 (text!46721 List!41255)) (BytesLiteralValue!6610 (value!202460 List!41255)) (CommentValue!13221 (value!202461 List!41255)) (StringLiteralValue!19832 (value!202462 List!41255)) (ErrorTokenValue!6610 (msg!6671 List!41255)) )
))
(declare-datatypes ((Regex!11285 0))(
  ( (ElementMatch!11285 (c!673727 C!22756)) (Concat!17896 (regOne!23082 Regex!11285) (regTwo!23082 Regex!11285)) (EmptyExpr!11285) (Star!11285 (reg!11614 Regex!11285)) (EmptyLang!11285) (Union!11285 (regOne!23083 Regex!11285) (regTwo!23083 Regex!11285)) )
))
(declare-datatypes ((String!46768 0))(
  ( (String!46769 (value!202463 String)) )
))
(declare-datatypes ((TokenValueInjection!12648 0))(
  ( (TokenValueInjection!12649 (toValue!8808 Int) (toChars!8667 Int)) )
))
(declare-datatypes ((Rule!12560 0))(
  ( (Rule!12561 (regex!6380 Regex!11285) (tag!7240 String!46768) (isSeparator!6380 Bool) (transformation!6380 TokenValueInjection!12648)) )
))
(declare-datatypes ((List!41256 0))(
  ( (Nil!41132) (Cons!41132 (h!46552 Rule!12560) (t!314515 List!41256)) )
))
(declare-fun rules!2768 () List!41256)

(declare-datatypes ((Token!11898 0))(
  ( (Token!11899 (value!202464 TokenValue!6610) (rule!9268 Rule!12560) (size!30913 Int) (originalCharacters!6980 List!41254)) )
))
(declare-datatypes ((List!41257 0))(
  ( (Nil!41133) (Cons!41133 (h!46553 Token!11898) (t!314516 List!41257)) )
))
(declare-datatypes ((tuple2!40354 0))(
  ( (tuple2!40355 (_1!23311 List!41257) (_2!23311 List!41254)) )
))
(declare-fun call!282738 () tuple2!40354)

(declare-fun bm!282733 () Bool)

(declare-datatypes ((tuple2!40356 0))(
  ( (tuple2!40357 (_1!23312 Token!11898) (_2!23312 List!41254)) )
))
(declare-fun lt!1348013 () tuple2!40356)

(declare-datatypes ((LexerInterface!5969 0))(
  ( (LexerInterfaceExt!5966 (__x!25438 Int)) (Lexer!5967) )
))
(declare-fun thiss!20629 () LexerInterface!5969)

(declare-fun lexList!1737 (LexerInterface!5969 List!41256 List!41254) tuple2!40354)

(assert (=> bm!282733 (= call!282738 (lexList!1737 thiss!20629 rules!2768 (_2!23312 lt!1348013)))))

(declare-fun b!3871665 () Bool)

(declare-fun res!1568250 () Bool)

(declare-fun e!2394797 () Bool)

(assert (=> b!3871665 (=> res!1568250 e!2394797)))

(declare-fun lt!1348050 () tuple2!40354)

(declare-fun suffix!1176 () List!41254)

(declare-datatypes ((Option!8798 0))(
  ( (None!8797) (Some!8797 (v!39095 tuple2!40356)) )
))
(declare-fun lt!1348027 () Option!8798)

(assert (=> b!3871665 (= res!1568250 (or (not (= lt!1348050 (tuple2!40355 (_1!23311 lt!1348050) (_2!23311 lt!1348050)))) (= (_2!23312 (v!39095 lt!1348027)) suffix!1176)))))

(declare-fun b!3871666 () Bool)

(declare-fun res!1568230 () Bool)

(declare-fun e!2394811 () Bool)

(assert (=> b!3871666 (=> (not res!1568230) (not e!2394811))))

(declare-fun prefixTokens!80 () List!41257)

(declare-fun isEmpty!24402 (List!41257) Bool)

(assert (=> b!3871666 (= res!1568230 (not (isEmpty!24402 prefixTokens!80)))))

(declare-fun b!3871667 () Bool)

(declare-fun e!2394776 () Bool)

(assert (=> b!3871667 (= e!2394776 e!2394797)))

(declare-fun res!1568236 () Bool)

(assert (=> b!3871667 (=> res!1568236 e!2394797)))

(declare-fun lt!1348011 () List!41257)

(declare-fun lt!1348040 () tuple2!40354)

(declare-fun ++!10517 (List!41257 List!41257) List!41257)

(assert (=> b!3871667 (= res!1568236 (not (= lt!1348040 (tuple2!40355 (++!10517 lt!1348011 (_1!23311 lt!1348050)) (_2!23311 lt!1348050)))))))

(assert (=> b!3871667 (= lt!1348011 (Cons!41133 (_1!23312 (v!39095 lt!1348027)) Nil!41133))))

(declare-fun e!2394810 () Bool)

(assert (=> b!3871668 (= e!2394810 (and tp!1173892 tp!1173895))))

(declare-fun b!3871669 () Bool)

(declare-datatypes ((Unit!58983 0))(
  ( (Unit!58984) )
))
(declare-fun e!2394785 () Unit!58983)

(declare-fun Unit!58985 () Unit!58983)

(assert (=> b!3871669 (= e!2394785 Unit!58985)))

(declare-fun lt!1348038 () Unit!58983)

(declare-fun suffixResult!91 () List!41254)

(declare-fun suffixTokens!72 () List!41257)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!40 (LexerInterface!5969 List!41256 List!41254 List!41254 List!41257 List!41254) Unit!58983)

(assert (=> b!3871669 (= lt!1348038 (lemmaLexWithSmallerInputCannotProduceSameResults!40 thiss!20629 rules!2768 (_2!23312 (v!39095 lt!1348027)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3871669 false))

(declare-fun b!3871670 () Bool)

(declare-fun e!2394807 () Unit!58983)

(declare-fun Unit!58986 () Unit!58983)

(assert (=> b!3871670 (= e!2394807 Unit!58986)))

(declare-fun b!3871671 () Bool)

(declare-fun e!2394777 () Bool)

(declare-fun tp!1173890 () Bool)

(declare-fun e!2394792 () Bool)

(declare-fun inv!21 (TokenValue!6610) Bool)

(assert (=> b!3871671 (= e!2394777 (and (inv!21 (value!202464 (h!46553 suffixTokens!72))) e!2394792 tp!1173890))))

(declare-fun e!2394788 () Bool)

(assert (=> b!3871672 (= e!2394788 (and tp!1173891 tp!1173885))))

(declare-fun e!2394794 () Bool)

(declare-fun b!3871673 () Bool)

(declare-fun tp!1173889 () Bool)

(declare-fun inv!55287 (String!46768) Bool)

(declare-fun inv!55290 (TokenValueInjection!12648) Bool)

(assert (=> b!3871673 (= e!2394794 (and tp!1173889 (inv!55287 (tag!7240 (h!46552 rules!2768))) (inv!55290 (transformation!6380 (h!46552 rules!2768))) e!2394810))))

(declare-fun b!3871674 () Bool)

(declare-fun e!2394790 () Bool)

(declare-fun e!2394784 () Bool)

(assert (=> b!3871674 (= e!2394790 e!2394784)))

(declare-fun res!1568235 () Bool)

(assert (=> b!3871674 (=> res!1568235 e!2394784)))

(declare-fun lt!1348032 () Int)

(declare-fun prefix!426 () List!41254)

(declare-fun size!30914 (List!41254) Int)

(assert (=> b!3871674 (= res!1568235 (>= lt!1348032 (size!30914 prefix!426)))))

(declare-fun lt!1348044 () List!41254)

(declare-fun isPrefix!3479 (List!41254 List!41254) Bool)

(assert (=> b!3871674 (isPrefix!3479 lt!1348044 prefix!426)))

(declare-fun lt!1348024 () Unit!58983)

(declare-fun lt!1348035 () List!41254)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!229 (List!41254 List!41254 List!41254) Unit!58983)

(assert (=> b!3871674 (= lt!1348024 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!229 prefix!426 lt!1348044 lt!1348035))))

(assert (=> b!3871674 (isPrefix!3479 prefix!426 lt!1348035)))

(declare-fun lt!1348049 () Unit!58983)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2342 (List!41254 List!41254) Unit!58983)

(assert (=> b!3871674 (= lt!1348049 (lemmaConcatTwoListThenFirstIsPrefix!2342 prefix!426 suffix!1176))))

(declare-fun b!3871675 () Bool)

(declare-fun e!2394779 () Bool)

(assert (=> b!3871675 (= e!2394779 (not e!2394776))))

(declare-fun res!1568244 () Bool)

(assert (=> b!3871675 (=> res!1568244 e!2394776)))

(declare-fun lt!1348029 () List!41254)

(assert (=> b!3871675 (= res!1568244 (not (= lt!1348029 lt!1348035)))))

(assert (=> b!3871675 (= lt!1348050 (lexList!1737 thiss!20629 rules!2768 (_2!23312 (v!39095 lt!1348027))))))

(declare-fun lt!1348033 () TokenValue!6610)

(declare-fun lt!1348045 () List!41254)

(assert (=> b!3871675 (and (= (size!30913 (_1!23312 (v!39095 lt!1348027))) lt!1348032) (= (originalCharacters!6980 (_1!23312 (v!39095 lt!1348027))) lt!1348044) (= (v!39095 lt!1348027) (tuple2!40357 (Token!11899 lt!1348033 (rule!9268 (_1!23312 (v!39095 lt!1348027))) lt!1348032 lt!1348044) lt!1348045)))))

(assert (=> b!3871675 (= lt!1348032 (size!30914 lt!1348044))))

(declare-fun e!2394793 () Bool)

(assert (=> b!3871675 e!2394793))

(declare-fun res!1568243 () Bool)

(assert (=> b!3871675 (=> (not res!1568243) (not e!2394793))))

(assert (=> b!3871675 (= res!1568243 (= (value!202464 (_1!23312 (v!39095 lt!1348027))) lt!1348033))))

(declare-fun apply!9623 (TokenValueInjection!12648 BalanceConc!24776) TokenValue!6610)

(declare-fun seqFromList!4651 (List!41254) BalanceConc!24776)

(assert (=> b!3871675 (= lt!1348033 (apply!9623 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) (seqFromList!4651 lt!1348044)))))

(assert (=> b!3871675 (= (_2!23312 (v!39095 lt!1348027)) lt!1348045)))

(declare-fun lt!1348036 () Unit!58983)

(declare-fun lemmaSamePrefixThenSameSuffix!1700 (List!41254 List!41254 List!41254 List!41254 List!41254) Unit!58983)

(assert (=> b!3871675 (= lt!1348036 (lemmaSamePrefixThenSameSuffix!1700 lt!1348044 (_2!23312 (v!39095 lt!1348027)) lt!1348044 lt!1348045 lt!1348035))))

(declare-fun getSuffix!1934 (List!41254 List!41254) List!41254)

(assert (=> b!3871675 (= lt!1348045 (getSuffix!1934 lt!1348035 lt!1348044))))

(assert (=> b!3871675 (isPrefix!3479 lt!1348044 lt!1348029)))

(declare-fun ++!10518 (List!41254 List!41254) List!41254)

(assert (=> b!3871675 (= lt!1348029 (++!10518 lt!1348044 (_2!23312 (v!39095 lt!1348027))))))

(declare-fun lt!1348006 () Unit!58983)

(assert (=> b!3871675 (= lt!1348006 (lemmaConcatTwoListThenFirstIsPrefix!2342 lt!1348044 (_2!23312 (v!39095 lt!1348027))))))

(declare-fun list!15300 (BalanceConc!24776) List!41254)

(declare-fun charsOf!4208 (Token!11898) BalanceConc!24776)

(assert (=> b!3871675 (= lt!1348044 (list!15300 (charsOf!4208 (_1!23312 (v!39095 lt!1348027)))))))

(declare-fun ruleValid!2332 (LexerInterface!5969 Rule!12560) Bool)

(assert (=> b!3871675 (ruleValid!2332 thiss!20629 (rule!9268 (_1!23312 (v!39095 lt!1348027))))))

(declare-fun lt!1348052 () Unit!58983)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1412 (LexerInterface!5969 Rule!12560 List!41256) Unit!58983)

(assert (=> b!3871675 (= lt!1348052 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1412 thiss!20629 (rule!9268 (_1!23312 (v!39095 lt!1348027))) rules!2768))))

(declare-fun lt!1348041 () Unit!58983)

(declare-fun lemmaCharactersSize!1041 (Token!11898) Unit!58983)

(assert (=> b!3871675 (= lt!1348041 (lemmaCharactersSize!1041 (_1!23312 (v!39095 lt!1348027))))))

(declare-fun b!3871676 () Bool)

(declare-fun e!2394787 () Unit!58983)

(declare-fun Unit!58987 () Unit!58983)

(assert (=> b!3871676 (= e!2394787 Unit!58987)))

(declare-fun lt!1348015 () Int)

(assert (=> b!3871676 (= lt!1348015 (size!30914 lt!1348035))))

(declare-fun lt!1348026 () Unit!58983)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1253 (LexerInterface!5969 List!41256 List!41254 List!41254 List!41254 Rule!12560) Unit!58983)

(assert (=> b!3871676 (= lt!1348026 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1253 thiss!20629 rules!2768 lt!1348044 lt!1348035 (_2!23312 (v!39095 lt!1348027)) (rule!9268 (_1!23312 (v!39095 lt!1348027)))))))

(declare-fun maxPrefixOneRule!2355 (LexerInterface!5969 Rule!12560 List!41254) Option!8798)

(assert (=> b!3871676 (= (maxPrefixOneRule!2355 thiss!20629 (rule!9268 (_1!23312 (v!39095 lt!1348027))) lt!1348035) (Some!8797 (tuple2!40357 (Token!11899 lt!1348033 (rule!9268 (_1!23312 (v!39095 lt!1348027))) lt!1348032 lt!1348044) (_2!23312 (v!39095 lt!1348027)))))))

(declare-fun get!13610 (Option!8798) tuple2!40356)

(assert (=> b!3871676 (= lt!1348013 (get!13610 lt!1348027))))

(declare-fun c!673723 () Bool)

(declare-fun lt!1348028 () Int)

(assert (=> b!3871676 (= c!673723 (< (size!30914 (_2!23312 lt!1348013)) lt!1348028))))

(declare-fun lt!1348010 () Unit!58983)

(declare-fun e!2394775 () Unit!58983)

(assert (=> b!3871676 (= lt!1348010 e!2394775)))

(assert (=> b!3871676 false))

(declare-fun e!2394786 () Bool)

(assert (=> b!3871677 (= e!2394786 (and tp!1173886 tp!1173888))))

(declare-fun b!3871678 () Bool)

(declare-fun e!2394782 () Unit!58983)

(declare-fun Unit!58988 () Unit!58983)

(assert (=> b!3871678 (= e!2394782 Unit!58988)))

(declare-fun lt!1348018 () Unit!58983)

(declare-fun lt!1348042 () List!41257)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!40 (LexerInterface!5969 List!41256 List!41254 List!41254 List!41257 List!41254 List!41257) Unit!58983)

(assert (=> b!3871678 (= lt!1348018 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!40 thiss!20629 rules!2768 suffix!1176 (_2!23312 lt!1348013) suffixTokens!72 suffixResult!91 lt!1348042))))

(declare-fun res!1568247 () Bool)

(assert (=> b!3871678 (= res!1568247 (not (= call!282738 (tuple2!40355 (++!10517 lt!1348042 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2394803 () Bool)

(assert (=> b!3871678 (=> (not res!1568247) (not e!2394803))))

(assert (=> b!3871678 e!2394803))

(declare-fun b!3871679 () Bool)

(declare-fun e!2394806 () Bool)

(declare-fun e!2394801 () Bool)

(assert (=> b!3871679 (= e!2394806 e!2394801)))

(declare-fun res!1568242 () Bool)

(assert (=> b!3871679 (=> (not res!1568242) (not e!2394801))))

(declare-fun lt!1348007 () tuple2!40354)

(assert (=> b!3871679 (= res!1568242 (= (lexList!1737 thiss!20629 rules!2768 suffix!1176) lt!1348007))))

(assert (=> b!3871679 (= lt!1348007 (tuple2!40355 suffixTokens!72 suffixResult!91))))

(declare-fun b!3871680 () Bool)

(assert (=> b!3871680 (= e!2394801 e!2394779)))

(declare-fun res!1568237 () Bool)

(assert (=> b!3871680 (=> (not res!1568237) (not e!2394779))))

(get-info :version)

(assert (=> b!3871680 (= res!1568237 ((_ is Some!8797) lt!1348027))))

(declare-fun maxPrefix!3273 (LexerInterface!5969 List!41256 List!41254) Option!8798)

(assert (=> b!3871680 (= lt!1348027 (maxPrefix!3273 thiss!20629 rules!2768 lt!1348035))))

(declare-fun tp!1173898 () Bool)

(declare-fun e!2394800 () Bool)

(declare-fun b!3871681 () Bool)

(declare-fun inv!55291 (Token!11898) Bool)

(assert (=> b!3871681 (= e!2394800 (and (inv!55291 (h!46553 suffixTokens!72)) e!2394777 tp!1173898))))

(declare-fun b!3871682 () Bool)

(declare-fun e!2394814 () Bool)

(assert (=> b!3871682 (= e!2394784 e!2394814)))

(declare-fun res!1568231 () Bool)

(assert (=> b!3871682 (=> res!1568231 e!2394814)))

(declare-fun lt!1348034 () List!41254)

(assert (=> b!3871682 (= res!1568231 (not (= lt!1348034 prefix!426)))))

(declare-fun lt!1348020 () List!41254)

(assert (=> b!3871682 (= lt!1348034 (++!10518 lt!1348044 lt!1348020))))

(assert (=> b!3871682 (= lt!1348020 (getSuffix!1934 prefix!426 lt!1348044))))

(declare-fun b!3871683 () Bool)

(declare-fun Unit!58989 () Unit!58983)

(assert (=> b!3871683 (= e!2394782 Unit!58989)))

(declare-fun lt!1348022 () Unit!58983)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!464 (List!41254 List!41254 List!41254 List!41254) Unit!58983)

(assert (=> b!3871683 (= lt!1348022 (lemmaConcatSameAndSameSizesThenSameLists!464 lt!1348044 (_2!23312 (v!39095 lt!1348027)) lt!1348044 (_2!23312 lt!1348013)))))

(assert (=> b!3871683 (= (_2!23312 (v!39095 lt!1348027)) (_2!23312 lt!1348013))))

(declare-fun lt!1348021 () Unit!58983)

(assert (=> b!3871683 (= lt!1348021 (lemmaLexWithSmallerInputCannotProduceSameResults!40 thiss!20629 rules!2768 suffix!1176 (_2!23312 lt!1348013) suffixTokens!72 suffixResult!91))))

(declare-fun res!1568239 () Bool)

(assert (=> b!3871683 (= res!1568239 (not (= call!282738 lt!1348007)))))

(declare-fun e!2394809 () Bool)

(assert (=> b!3871683 (=> (not res!1568239) (not e!2394809))))

(assert (=> b!3871683 e!2394809))

(declare-fun e!2394812 () Bool)

(declare-fun e!2394804 () Bool)

(declare-fun b!3871684 () Bool)

(declare-fun tp!1173887 () Bool)

(assert (=> b!3871684 (= e!2394804 (and (inv!21 (value!202464 (h!46553 prefixTokens!80))) e!2394812 tp!1173887))))

(declare-fun b!3871685 () Bool)

(assert (=> b!3871685 (= e!2394809 false)))

(declare-fun b!3871686 () Bool)

(declare-fun e!2394808 () Bool)

(declare-fun tp!1173896 () Bool)

(assert (=> b!3871686 (= e!2394808 (and e!2394794 tp!1173896))))

(declare-fun b!3871687 () Bool)

(declare-fun res!1568233 () Bool)

(assert (=> b!3871687 (=> res!1568233 e!2394790)))

(declare-fun head!8198 (List!41257) Token!11898)

(assert (=> b!3871687 (= res!1568233 (not (= (head!8198 prefixTokens!80) (_1!23312 (v!39095 lt!1348027)))))))

(declare-fun b!3871688 () Bool)

(declare-fun e!2394813 () Bool)

(declare-fun e!2394780 () Bool)

(assert (=> b!3871688 (= e!2394813 e!2394780)))

(declare-fun res!1568240 () Bool)

(assert (=> b!3871688 (=> res!1568240 e!2394780)))

(declare-fun lt!1348014 () List!41254)

(declare-fun lt!1348053 () List!41254)

(assert (=> b!3871688 (= res!1568240 (or (not (= lt!1348035 lt!1348053)) (not (= lt!1348035 lt!1348014)) (not (= lt!1348029 lt!1348014))))))

(assert (=> b!3871688 (= lt!1348053 lt!1348014)))

(declare-fun lt!1348019 () List!41254)

(assert (=> b!3871688 (= lt!1348014 (++!10518 lt!1348044 lt!1348019))))

(assert (=> b!3871688 (= lt!1348019 (++!10518 lt!1348020 suffix!1176))))

(declare-fun lt!1348046 () Unit!58983)

(declare-fun lemmaConcatAssociativity!2231 (List!41254 List!41254 List!41254) Unit!58983)

(assert (=> b!3871688 (= lt!1348046 (lemmaConcatAssociativity!2231 lt!1348044 lt!1348020 suffix!1176))))

(declare-fun b!3871689 () Bool)

(declare-fun e!2394795 () Bool)

(declare-fun tp_is_empty!19541 () Bool)

(declare-fun tp!1173893 () Bool)

(assert (=> b!3871689 (= e!2394795 (and tp_is_empty!19541 tp!1173893))))

(declare-fun tp!1173884 () Bool)

(declare-fun b!3871690 () Bool)

(assert (=> b!3871690 (= e!2394812 (and tp!1173884 (inv!55287 (tag!7240 (rule!9268 (h!46553 prefixTokens!80)))) (inv!55290 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) e!2394786))))

(declare-fun b!3871691 () Bool)

(declare-fun e!2394798 () Bool)

(declare-fun tp!1173899 () Bool)

(assert (=> b!3871691 (= e!2394798 (and tp_is_empty!19541 tp!1173899))))

(declare-fun b!3871692 () Bool)

(declare-fun c!673725 () Bool)

(assert (=> b!3871692 (= c!673725 (isEmpty!24402 lt!1348042))))

(declare-fun tail!5915 (List!41257) List!41257)

(assert (=> b!3871692 (= lt!1348042 (tail!5915 prefixTokens!80))))

(assert (=> b!3871692 (= e!2394775 e!2394782)))

(declare-fun b!3871693 () Bool)

(declare-fun Unit!58990 () Unit!58983)

(assert (=> b!3871693 (= e!2394785 Unit!58990)))

(declare-fun b!3871694 () Bool)

(declare-fun e!2394796 () Bool)

(declare-fun tp!1173897 () Bool)

(assert (=> b!3871694 (= e!2394796 (and tp_is_empty!19541 tp!1173897))))

(declare-fun b!3871695 () Bool)

(declare-fun tp!1173894 () Bool)

(assert (=> b!3871695 (= e!2394792 (and tp!1173894 (inv!55287 (tag!7240 (rule!9268 (h!46553 suffixTokens!72)))) (inv!55290 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) e!2394788))))

(declare-fun b!3871696 () Bool)

(assert (=> b!3871696 (= e!2394803 false)))

(declare-fun b!3871697 () Bool)

(declare-fun Unit!58991 () Unit!58983)

(assert (=> b!3871697 (= e!2394807 Unit!58991)))

(declare-fun lt!1348051 () Unit!58983)

(assert (=> b!3871697 (= lt!1348051 (lemmaConcatTwoListThenFirstIsPrefix!2342 prefix!426 suffix!1176))))

(assert (=> b!3871697 (isPrefix!3479 prefix!426 lt!1348035)))

(declare-fun lt!1348037 () Unit!58983)

(declare-fun lemmaIsPrefixSameLengthThenSameList!731 (List!41254 List!41254 List!41254) Unit!58983)

(assert (=> b!3871697 (= lt!1348037 (lemmaIsPrefixSameLengthThenSameList!731 lt!1348044 prefix!426 lt!1348035))))

(assert (=> b!3871697 (= lt!1348044 prefix!426)))

(declare-fun lt!1348043 () Unit!58983)

(assert (=> b!3871697 (= lt!1348043 (lemmaSamePrefixThenSameSuffix!1700 lt!1348044 (_2!23312 (v!39095 lt!1348027)) prefix!426 suffix!1176 lt!1348035))))

(assert (=> b!3871697 false))

(declare-fun b!3871698 () Bool)

(declare-fun res!1568245 () Bool)

(assert (=> b!3871698 (=> (not res!1568245) (not e!2394811))))

(declare-fun isEmpty!24403 (List!41254) Bool)

(assert (=> b!3871698 (= res!1568245 (not (isEmpty!24403 prefix!426)))))

(declare-fun res!1568246 () Bool)

(assert (=> start!363356 (=> (not res!1568246) (not e!2394811))))

(assert (=> start!363356 (= res!1568246 ((_ is Lexer!5967) thiss!20629))))

(assert (=> start!363356 e!2394811))

(assert (=> start!363356 e!2394796))

(assert (=> start!363356 true))

(assert (=> start!363356 e!2394795))

(assert (=> start!363356 e!2394808))

(declare-fun e!2394805 () Bool)

(assert (=> start!363356 e!2394805))

(assert (=> start!363356 e!2394800))

(assert (=> start!363356 e!2394798))

(declare-fun b!3871699 () Bool)

(declare-fun e!2394778 () Bool)

(declare-fun e!2394789 () Bool)

(assert (=> b!3871699 (= e!2394778 e!2394789)))

(declare-fun res!1568248 () Bool)

(assert (=> b!3871699 (=> res!1568248 e!2394789)))

(declare-fun lt!1348031 () List!41257)

(assert (=> b!3871699 (= res!1568248 (not (= lt!1348050 (tuple2!40355 lt!1348031 suffixResult!91))))))

(declare-fun lt!1348025 () List!41257)

(assert (=> b!3871699 (= lt!1348031 (++!10517 lt!1348025 suffixTokens!72))))

(assert (=> b!3871699 (= lt!1348025 (tail!5915 prefixTokens!80))))

(assert (=> b!3871699 (isPrefix!3479 lt!1348020 lt!1348019)))

(declare-fun lt!1348047 () Unit!58983)

(assert (=> b!3871699 (= lt!1348047 (lemmaConcatTwoListThenFirstIsPrefix!2342 lt!1348020 suffix!1176))))

(declare-fun b!3871700 () Bool)

(assert (=> b!3871700 (= e!2394814 e!2394813)))

(declare-fun res!1568249 () Bool)

(assert (=> b!3871700 (=> res!1568249 e!2394813)))

(assert (=> b!3871700 (= res!1568249 (or (not (= lt!1348053 lt!1348035)) (not (= lt!1348053 lt!1348029))))))

(assert (=> b!3871700 (= lt!1348053 (++!10518 lt!1348034 suffix!1176))))

(declare-fun b!3871701 () Bool)

(assert (=> b!3871701 (= e!2394797 e!2394790)))

(declare-fun res!1568241 () Bool)

(assert (=> b!3871701 (=> res!1568241 e!2394790)))

(declare-fun lt!1348039 () Int)

(assert (=> b!3871701 (= res!1568241 (<= lt!1348039 lt!1348028))))

(declare-fun lt!1348017 () Unit!58983)

(assert (=> b!3871701 (= lt!1348017 e!2394807)))

(declare-fun c!673724 () Bool)

(assert (=> b!3871701 (= c!673724 (= lt!1348039 lt!1348028))))

(declare-fun lt!1348048 () Unit!58983)

(assert (=> b!3871701 (= lt!1348048 e!2394787)))

(declare-fun c!673721 () Bool)

(assert (=> b!3871701 (= c!673721 (< lt!1348039 lt!1348028))))

(assert (=> b!3871701 (= lt!1348028 (size!30914 suffix!1176))))

(assert (=> b!3871701 (= lt!1348039 (size!30914 (_2!23312 (v!39095 lt!1348027))))))

(declare-fun b!3871702 () Bool)

(declare-fun Unit!58992 () Unit!58983)

(assert (=> b!3871702 (= e!2394775 Unit!58992)))

(declare-fun b!3871703 () Bool)

(declare-fun res!1568232 () Bool)

(assert (=> b!3871703 (=> (not res!1568232) (not e!2394811))))

(declare-fun isEmpty!24404 (List!41256) Bool)

(assert (=> b!3871703 (= res!1568232 (not (isEmpty!24404 rules!2768)))))

(declare-fun b!3871704 () Bool)

(declare-fun res!1568238 () Bool)

(assert (=> b!3871704 (=> (not res!1568238) (not e!2394811))))

(declare-fun rulesInvariant!5312 (LexerInterface!5969 List!41256) Bool)

(assert (=> b!3871704 (= res!1568238 (rulesInvariant!5312 thiss!20629 rules!2768))))

(declare-fun b!3871705 () Bool)

(declare-fun Unit!58993 () Unit!58983)

(assert (=> b!3871705 (= e!2394787 Unit!58993)))

(declare-fun lt!1348009 () List!41257)

(declare-fun b!3871706 () Bool)

(declare-fun lt!1348016 () List!41257)

(assert (=> b!3871706 (= e!2394789 (or (not (= lt!1348016 lt!1348009)) (not (= prefixTokens!80 Nil!41133))))))

(assert (=> b!3871706 (= lt!1348016 (++!10517 lt!1348011 lt!1348031))))

(assert (=> b!3871706 (= lt!1348016 (++!10517 (++!10517 lt!1348011 lt!1348025) suffixTokens!72))))

(declare-fun lt!1348008 () Unit!58983)

(declare-fun lemmaConcatAssociativity!2232 (List!41257 List!41257 List!41257) Unit!58983)

(assert (=> b!3871706 (= lt!1348008 (lemmaConcatAssociativity!2232 lt!1348011 lt!1348025 suffixTokens!72))))

(declare-fun lt!1348030 () Unit!58983)

(assert (=> b!3871706 (= lt!1348030 e!2394785)))

(declare-fun c!673722 () Bool)

(assert (=> b!3871706 (= c!673722 (isEmpty!24402 lt!1348025))))

(declare-fun b!3871707 () Bool)

(assert (=> b!3871707 (= e!2394793 (= (size!30913 (_1!23312 (v!39095 lt!1348027))) (size!30914 (originalCharacters!6980 (_1!23312 (v!39095 lt!1348027))))))))

(declare-fun b!3871708 () Bool)

(declare-fun tp!1173900 () Bool)

(assert (=> b!3871708 (= e!2394805 (and (inv!55291 (h!46553 prefixTokens!80)) e!2394804 tp!1173900))))

(declare-fun b!3871709 () Bool)

(assert (=> b!3871709 (= e!2394780 e!2394778)))

(declare-fun res!1568234 () Bool)

(assert (=> b!3871709 (=> res!1568234 e!2394778)))

(assert (=> b!3871709 (= res!1568234 (not (= lt!1348019 (_2!23312 (v!39095 lt!1348027)))))))

(assert (=> b!3871709 (= (_2!23312 (v!39095 lt!1348027)) lt!1348019)))

(declare-fun lt!1348023 () Unit!58983)

(assert (=> b!3871709 (= lt!1348023 (lemmaSamePrefixThenSameSuffix!1700 lt!1348044 (_2!23312 (v!39095 lt!1348027)) lt!1348044 lt!1348019 lt!1348035))))

(assert (=> b!3871709 (isPrefix!3479 lt!1348044 lt!1348014)))

(declare-fun lt!1348012 () Unit!58983)

(assert (=> b!3871709 (= lt!1348012 (lemmaConcatTwoListThenFirstIsPrefix!2342 lt!1348044 lt!1348019))))

(declare-fun b!3871710 () Bool)

(assert (=> b!3871710 (= e!2394811 e!2394806)))

(declare-fun res!1568251 () Bool)

(assert (=> b!3871710 (=> (not res!1568251) (not e!2394806))))

(assert (=> b!3871710 (= res!1568251 (= lt!1348040 (tuple2!40355 lt!1348009 suffixResult!91)))))

(assert (=> b!3871710 (= lt!1348040 (lexList!1737 thiss!20629 rules!2768 lt!1348035))))

(assert (=> b!3871710 (= lt!1348009 (++!10517 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3871710 (= lt!1348035 (++!10518 prefix!426 suffix!1176))))

(assert (= (and start!363356 res!1568246) b!3871703))

(assert (= (and b!3871703 res!1568232) b!3871704))

(assert (= (and b!3871704 res!1568238) b!3871666))

(assert (= (and b!3871666 res!1568230) b!3871698))

(assert (= (and b!3871698 res!1568245) b!3871710))

(assert (= (and b!3871710 res!1568251) b!3871679))

(assert (= (and b!3871679 res!1568242) b!3871680))

(assert (= (and b!3871680 res!1568237) b!3871675))

(assert (= (and b!3871675 res!1568243) b!3871707))

(assert (= (and b!3871675 (not res!1568244)) b!3871667))

(assert (= (and b!3871667 (not res!1568236)) b!3871665))

(assert (= (and b!3871665 (not res!1568250)) b!3871701))

(assert (= (and b!3871701 c!673721) b!3871676))

(assert (= (and b!3871701 (not c!673721)) b!3871705))

(assert (= (and b!3871676 c!673723) b!3871692))

(assert (= (and b!3871676 (not c!673723)) b!3871702))

(assert (= (and b!3871692 c!673725) b!3871683))

(assert (= (and b!3871692 (not c!673725)) b!3871678))

(assert (= (and b!3871683 res!1568239) b!3871685))

(assert (= (and b!3871678 res!1568247) b!3871696))

(assert (= (or b!3871683 b!3871678) bm!282733))

(assert (= (and b!3871701 c!673724) b!3871697))

(assert (= (and b!3871701 (not c!673724)) b!3871670))

(assert (= (and b!3871701 (not res!1568241)) b!3871687))

(assert (= (and b!3871687 (not res!1568233)) b!3871674))

(assert (= (and b!3871674 (not res!1568235)) b!3871682))

(assert (= (and b!3871682 (not res!1568231)) b!3871700))

(assert (= (and b!3871700 (not res!1568249)) b!3871688))

(assert (= (and b!3871688 (not res!1568240)) b!3871709))

(assert (= (and b!3871709 (not res!1568234)) b!3871699))

(assert (= (and b!3871699 (not res!1568248)) b!3871706))

(assert (= (and b!3871706 c!673722) b!3871669))

(assert (= (and b!3871706 (not c!673722)) b!3871693))

(assert (= (and start!363356 ((_ is Cons!41130) suffixResult!91)) b!3871694))

(assert (= (and start!363356 ((_ is Cons!41130) suffix!1176)) b!3871689))

(assert (= b!3871673 b!3871668))

(assert (= b!3871686 b!3871673))

(assert (= (and start!363356 ((_ is Cons!41132) rules!2768)) b!3871686))

(assert (= b!3871690 b!3871677))

(assert (= b!3871684 b!3871690))

(assert (= b!3871708 b!3871684))

(assert (= (and start!363356 ((_ is Cons!41133) prefixTokens!80)) b!3871708))

(assert (= b!3871695 b!3871672))

(assert (= b!3871671 b!3871695))

(assert (= b!3871681 b!3871671))

(assert (= (and start!363356 ((_ is Cons!41133) suffixTokens!72)) b!3871681))

(assert (= (and start!363356 ((_ is Cons!41130) prefix!426)) b!3871691))

(declare-fun m!4428311 () Bool)

(assert (=> b!3871669 m!4428311))

(declare-fun m!4428313 () Bool)

(assert (=> b!3871683 m!4428313))

(declare-fun m!4428315 () Bool)

(assert (=> b!3871683 m!4428315))

(declare-fun m!4428317 () Bool)

(assert (=> b!3871678 m!4428317))

(declare-fun m!4428319 () Bool)

(assert (=> b!3871678 m!4428319))

(declare-fun m!4428321 () Bool)

(assert (=> b!3871710 m!4428321))

(declare-fun m!4428323 () Bool)

(assert (=> b!3871710 m!4428323))

(declare-fun m!4428325 () Bool)

(assert (=> b!3871710 m!4428325))

(declare-fun m!4428327 () Bool)

(assert (=> b!3871671 m!4428327))

(declare-fun m!4428329 () Bool)

(assert (=> b!3871673 m!4428329))

(declare-fun m!4428331 () Bool)

(assert (=> b!3871673 m!4428331))

(declare-fun m!4428333 () Bool)

(assert (=> b!3871695 m!4428333))

(declare-fun m!4428335 () Bool)

(assert (=> b!3871695 m!4428335))

(declare-fun m!4428337 () Bool)

(assert (=> b!3871666 m!4428337))

(declare-fun m!4428339 () Bool)

(assert (=> b!3871688 m!4428339))

(declare-fun m!4428341 () Bool)

(assert (=> b!3871688 m!4428341))

(declare-fun m!4428343 () Bool)

(assert (=> b!3871688 m!4428343))

(declare-fun m!4428345 () Bool)

(assert (=> b!3871675 m!4428345))

(declare-fun m!4428347 () Bool)

(assert (=> b!3871675 m!4428347))

(declare-fun m!4428349 () Bool)

(assert (=> b!3871675 m!4428349))

(declare-fun m!4428351 () Bool)

(assert (=> b!3871675 m!4428351))

(declare-fun m!4428353 () Bool)

(assert (=> b!3871675 m!4428353))

(declare-fun m!4428355 () Bool)

(assert (=> b!3871675 m!4428355))

(declare-fun m!4428357 () Bool)

(assert (=> b!3871675 m!4428357))

(declare-fun m!4428359 () Bool)

(assert (=> b!3871675 m!4428359))

(declare-fun m!4428361 () Bool)

(assert (=> b!3871675 m!4428361))

(declare-fun m!4428363 () Bool)

(assert (=> b!3871675 m!4428363))

(declare-fun m!4428365 () Bool)

(assert (=> b!3871675 m!4428365))

(declare-fun m!4428367 () Bool)

(assert (=> b!3871675 m!4428367))

(assert (=> b!3871675 m!4428365))

(declare-fun m!4428369 () Bool)

(assert (=> b!3871675 m!4428369))

(assert (=> b!3871675 m!4428367))

(declare-fun m!4428371 () Bool)

(assert (=> b!3871675 m!4428371))

(declare-fun m!4428373 () Bool)

(assert (=> b!3871704 m!4428373))

(declare-fun m!4428375 () Bool)

(assert (=> b!3871700 m!4428375))

(declare-fun m!4428377 () Bool)

(assert (=> b!3871706 m!4428377))

(declare-fun m!4428379 () Bool)

(assert (=> b!3871706 m!4428379))

(declare-fun m!4428381 () Bool)

(assert (=> b!3871706 m!4428381))

(declare-fun m!4428383 () Bool)

(assert (=> b!3871706 m!4428383))

(declare-fun m!4428385 () Bool)

(assert (=> b!3871706 m!4428385))

(assert (=> b!3871706 m!4428377))

(declare-fun m!4428387 () Bool)

(assert (=> b!3871687 m!4428387))

(declare-fun m!4428389 () Bool)

(assert (=> b!3871692 m!4428389))

(declare-fun m!4428391 () Bool)

(assert (=> b!3871692 m!4428391))

(declare-fun m!4428393 () Bool)

(assert (=> b!3871698 m!4428393))

(declare-fun m!4428395 () Bool)

(assert (=> b!3871681 m!4428395))

(declare-fun m!4428397 () Bool)

(assert (=> bm!282733 m!4428397))

(declare-fun m!4428399 () Bool)

(assert (=> b!3871701 m!4428399))

(declare-fun m!4428401 () Bool)

(assert (=> b!3871701 m!4428401))

(declare-fun m!4428403 () Bool)

(assert (=> b!3871690 m!4428403))

(declare-fun m!4428405 () Bool)

(assert (=> b!3871690 m!4428405))

(declare-fun m!4428407 () Bool)

(assert (=> b!3871682 m!4428407))

(declare-fun m!4428409 () Bool)

(assert (=> b!3871682 m!4428409))

(declare-fun m!4428411 () Bool)

(assert (=> b!3871679 m!4428411))

(declare-fun m!4428413 () Bool)

(assert (=> b!3871699 m!4428413))

(assert (=> b!3871699 m!4428391))

(declare-fun m!4428415 () Bool)

(assert (=> b!3871699 m!4428415))

(declare-fun m!4428417 () Bool)

(assert (=> b!3871699 m!4428417))

(declare-fun m!4428419 () Bool)

(assert (=> b!3871703 m!4428419))

(declare-fun m!4428421 () Bool)

(assert (=> b!3871684 m!4428421))

(declare-fun m!4428423 () Bool)

(assert (=> b!3871674 m!4428423))

(declare-fun m!4428425 () Bool)

(assert (=> b!3871674 m!4428425))

(declare-fun m!4428427 () Bool)

(assert (=> b!3871674 m!4428427))

(declare-fun m!4428429 () Bool)

(assert (=> b!3871674 m!4428429))

(declare-fun m!4428431 () Bool)

(assert (=> b!3871674 m!4428431))

(declare-fun m!4428433 () Bool)

(assert (=> b!3871708 m!4428433))

(declare-fun m!4428435 () Bool)

(assert (=> b!3871676 m!4428435))

(declare-fun m!4428437 () Bool)

(assert (=> b!3871676 m!4428437))

(declare-fun m!4428439 () Bool)

(assert (=> b!3871676 m!4428439))

(declare-fun m!4428441 () Bool)

(assert (=> b!3871676 m!4428441))

(declare-fun m!4428443 () Bool)

(assert (=> b!3871676 m!4428443))

(assert (=> b!3871697 m!4428429))

(assert (=> b!3871697 m!4428427))

(declare-fun m!4428445 () Bool)

(assert (=> b!3871697 m!4428445))

(declare-fun m!4428447 () Bool)

(assert (=> b!3871697 m!4428447))

(declare-fun m!4428449 () Bool)

(assert (=> b!3871667 m!4428449))

(declare-fun m!4428451 () Bool)

(assert (=> b!3871680 m!4428451))

(declare-fun m!4428453 () Bool)

(assert (=> b!3871709 m!4428453))

(declare-fun m!4428455 () Bool)

(assert (=> b!3871709 m!4428455))

(declare-fun m!4428457 () Bool)

(assert (=> b!3871709 m!4428457))

(declare-fun m!4428459 () Bool)

(assert (=> b!3871707 m!4428459))

(check-sat (not b!3871678) (not b!3871679) (not b!3871674) (not b_next!105263) (not b_next!105269) b_and!290211 (not b!3871692) (not b!3871684) (not b!3871701) (not b_next!105271) (not b!3871686) (not b!3871704) (not b!3871689) (not b!3871700) (not b!3871675) b_and!290221 (not b!3871676) (not b!3871709) (not b!3871706) (not b!3871671) (not b!3871669) (not b!3871691) tp_is_empty!19541 b_and!290213 (not b!3871694) (not b!3871690) (not b!3871703) (not b!3871683) (not b!3871673) (not b!3871707) (not b!3871666) (not bm!282733) b_and!290219 (not b_next!105267) (not b!3871680) (not b!3871698) (not b!3871695) (not b!3871688) (not b!3871699) b_and!290215 (not b!3871710) (not b!3871697) (not b_next!105265) (not b!3871687) (not b_next!105261) (not b!3871682) b_and!290217 (not b!3871667) (not b!3871708) (not b!3871681))
(check-sat b_and!290221 b_and!290213 (not b_next!105263) (not b_next!105269) b_and!290211 (not b_next!105271) (not b_next!105261) b_and!290217 b_and!290219 (not b_next!105267) b_and!290215 (not b_next!105265))
(get-model)

(declare-fun d!1146637 () Bool)

(declare-fun lt!1348076 () Int)

(assert (=> d!1146637 (>= lt!1348076 0)))

(declare-fun e!2394864 () Int)

(assert (=> d!1146637 (= lt!1348076 e!2394864)))

(declare-fun c!673755 () Bool)

(assert (=> d!1146637 (= c!673755 ((_ is Nil!41130) (originalCharacters!6980 (_1!23312 (v!39095 lt!1348027)))))))

(assert (=> d!1146637 (= (size!30914 (originalCharacters!6980 (_1!23312 (v!39095 lt!1348027)))) lt!1348076)))

(declare-fun b!3871798 () Bool)

(assert (=> b!3871798 (= e!2394864 0)))

(declare-fun b!3871799 () Bool)

(assert (=> b!3871799 (= e!2394864 (+ 1 (size!30914 (t!314513 (originalCharacters!6980 (_1!23312 (v!39095 lt!1348027)))))))))

(assert (= (and d!1146637 c!673755) b!3871798))

(assert (= (and d!1146637 (not c!673755)) b!3871799))

(declare-fun m!4428527 () Bool)

(assert (=> b!3871799 m!4428527))

(assert (=> b!3871707 d!1146637))

(declare-fun b!3871873 () Bool)

(declare-fun e!2394905 () tuple2!40354)

(assert (=> b!3871873 (= e!2394905 (tuple2!40355 Nil!41133 (_2!23312 lt!1348013)))))

(declare-fun b!3871874 () Bool)

(declare-fun lt!1348113 () Option!8798)

(declare-fun lt!1348111 () tuple2!40354)

(assert (=> b!3871874 (= e!2394905 (tuple2!40355 (Cons!41133 (_1!23312 (v!39095 lt!1348113)) (_1!23311 lt!1348111)) (_2!23311 lt!1348111)))))

(assert (=> b!3871874 (= lt!1348111 (lexList!1737 thiss!20629 rules!2768 (_2!23312 (v!39095 lt!1348113))))))

(declare-fun b!3871875 () Bool)

(declare-fun e!2394904 () Bool)

(declare-fun e!2394903 () Bool)

(assert (=> b!3871875 (= e!2394904 e!2394903)))

(declare-fun res!1568336 () Bool)

(declare-fun lt!1348112 () tuple2!40354)

(assert (=> b!3871875 (= res!1568336 (< (size!30914 (_2!23311 lt!1348112)) (size!30914 (_2!23312 lt!1348013))))))

(assert (=> b!3871875 (=> (not res!1568336) (not e!2394903))))

(declare-fun b!3871876 () Bool)

(assert (=> b!3871876 (= e!2394903 (not (isEmpty!24402 (_1!23311 lt!1348112))))))

(declare-fun b!3871872 () Bool)

(assert (=> b!3871872 (= e!2394904 (= (_2!23311 lt!1348112) (_2!23312 lt!1348013)))))

(declare-fun d!1146639 () Bool)

(assert (=> d!1146639 e!2394904))

(declare-fun c!673768 () Bool)

(declare-fun size!30916 (List!41257) Int)

(assert (=> d!1146639 (= c!673768 (> (size!30916 (_1!23311 lt!1348112)) 0))))

(assert (=> d!1146639 (= lt!1348112 e!2394905)))

(declare-fun c!673767 () Bool)

(assert (=> d!1146639 (= c!673767 ((_ is Some!8797) lt!1348113))))

(assert (=> d!1146639 (= lt!1348113 (maxPrefix!3273 thiss!20629 rules!2768 (_2!23312 lt!1348013)))))

(assert (=> d!1146639 (= (lexList!1737 thiss!20629 rules!2768 (_2!23312 lt!1348013)) lt!1348112)))

(assert (= (and d!1146639 c!673767) b!3871874))

(assert (= (and d!1146639 (not c!673767)) b!3871873))

(assert (= (and d!1146639 c!673768) b!3871875))

(assert (= (and d!1146639 (not c!673768)) b!3871872))

(assert (= (and b!3871875 res!1568336) b!3871876))

(declare-fun m!4428643 () Bool)

(assert (=> b!3871874 m!4428643))

(declare-fun m!4428645 () Bool)

(assert (=> b!3871875 m!4428645))

(assert (=> b!3871875 m!4428443))

(declare-fun m!4428647 () Bool)

(assert (=> b!3871876 m!4428647))

(declare-fun m!4428649 () Bool)

(assert (=> d!1146639 m!4428649))

(declare-fun m!4428653 () Bool)

(assert (=> d!1146639 m!4428653))

(assert (=> bm!282733 d!1146639))

(declare-fun b!3871887 () Bool)

(declare-fun res!1568341 () Bool)

(declare-fun e!2394911 () Bool)

(assert (=> b!3871887 (=> (not res!1568341) (not e!2394911))))

(declare-fun lt!1348119 () List!41257)

(assert (=> b!3871887 (= res!1568341 (= (size!30916 lt!1348119) (+ (size!30916 lt!1348011) (size!30916 lt!1348025))))))

(declare-fun b!3871886 () Bool)

(declare-fun e!2394910 () List!41257)

(assert (=> b!3871886 (= e!2394910 (Cons!41133 (h!46553 lt!1348011) (++!10517 (t!314516 lt!1348011) lt!1348025)))))

(declare-fun b!3871885 () Bool)

(assert (=> b!3871885 (= e!2394910 lt!1348025)))

(declare-fun b!3871888 () Bool)

(assert (=> b!3871888 (= e!2394911 (or (not (= lt!1348025 Nil!41133)) (= lt!1348119 lt!1348011)))))

(declare-fun d!1146671 () Bool)

(assert (=> d!1146671 e!2394911))

(declare-fun res!1568342 () Bool)

(assert (=> d!1146671 (=> (not res!1568342) (not e!2394911))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6144 (List!41257) (InoxSet Token!11898))

(assert (=> d!1146671 (= res!1568342 (= (content!6144 lt!1348119) ((_ map or) (content!6144 lt!1348011) (content!6144 lt!1348025))))))

(assert (=> d!1146671 (= lt!1348119 e!2394910)))

(declare-fun c!673771 () Bool)

(assert (=> d!1146671 (= c!673771 ((_ is Nil!41133) lt!1348011))))

(assert (=> d!1146671 (= (++!10517 lt!1348011 lt!1348025) lt!1348119)))

(assert (= (and d!1146671 c!673771) b!3871885))

(assert (= (and d!1146671 (not c!673771)) b!3871886))

(assert (= (and d!1146671 res!1568342) b!3871887))

(assert (= (and b!3871887 res!1568341) b!3871888))

(declare-fun m!4428657 () Bool)

(assert (=> b!3871887 m!4428657))

(declare-fun m!4428659 () Bool)

(assert (=> b!3871887 m!4428659))

(declare-fun m!4428661 () Bool)

(assert (=> b!3871887 m!4428661))

(declare-fun m!4428663 () Bool)

(assert (=> b!3871886 m!4428663))

(declare-fun m!4428665 () Bool)

(assert (=> d!1146671 m!4428665))

(declare-fun m!4428667 () Bool)

(assert (=> d!1146671 m!4428667))

(declare-fun m!4428669 () Bool)

(assert (=> d!1146671 m!4428669))

(assert (=> b!3871706 d!1146671))

(declare-fun d!1146675 () Bool)

(assert (=> d!1146675 (= (++!10517 (++!10517 lt!1348011 lt!1348025) suffixTokens!72) (++!10517 lt!1348011 (++!10517 lt!1348025 suffixTokens!72)))))

(declare-fun lt!1348128 () Unit!58983)

(declare-fun choose!22889 (List!41257 List!41257 List!41257) Unit!58983)

(assert (=> d!1146675 (= lt!1348128 (choose!22889 lt!1348011 lt!1348025 suffixTokens!72))))

(assert (=> d!1146675 (= (lemmaConcatAssociativity!2232 lt!1348011 lt!1348025 suffixTokens!72) lt!1348128)))

(declare-fun bs!583485 () Bool)

(assert (= bs!583485 d!1146675))

(assert (=> bs!583485 m!4428413))

(declare-fun m!4428683 () Bool)

(assert (=> bs!583485 m!4428683))

(assert (=> bs!583485 m!4428377))

(assert (=> bs!583485 m!4428413))

(declare-fun m!4428685 () Bool)

(assert (=> bs!583485 m!4428685))

(assert (=> bs!583485 m!4428377))

(assert (=> bs!583485 m!4428379))

(assert (=> b!3871706 d!1146675))

(declare-fun b!3871896 () Bool)

(declare-fun res!1568344 () Bool)

(declare-fun e!2394916 () Bool)

(assert (=> b!3871896 (=> (not res!1568344) (not e!2394916))))

(declare-fun lt!1348129 () List!41257)

(assert (=> b!3871896 (= res!1568344 (= (size!30916 lt!1348129) (+ (size!30916 lt!1348011) (size!30916 lt!1348031))))))

(declare-fun b!3871895 () Bool)

(declare-fun e!2394915 () List!41257)

(assert (=> b!3871895 (= e!2394915 (Cons!41133 (h!46553 lt!1348011) (++!10517 (t!314516 lt!1348011) lt!1348031)))))

(declare-fun b!3871894 () Bool)

(assert (=> b!3871894 (= e!2394915 lt!1348031)))

(declare-fun b!3871897 () Bool)

(assert (=> b!3871897 (= e!2394916 (or (not (= lt!1348031 Nil!41133)) (= lt!1348129 lt!1348011)))))

(declare-fun d!1146685 () Bool)

(assert (=> d!1146685 e!2394916))

(declare-fun res!1568345 () Bool)

(assert (=> d!1146685 (=> (not res!1568345) (not e!2394916))))

(assert (=> d!1146685 (= res!1568345 (= (content!6144 lt!1348129) ((_ map or) (content!6144 lt!1348011) (content!6144 lt!1348031))))))

(assert (=> d!1146685 (= lt!1348129 e!2394915)))

(declare-fun c!673774 () Bool)

(assert (=> d!1146685 (= c!673774 ((_ is Nil!41133) lt!1348011))))

(assert (=> d!1146685 (= (++!10517 lt!1348011 lt!1348031) lt!1348129)))

(assert (= (and d!1146685 c!673774) b!3871894))

(assert (= (and d!1146685 (not c!673774)) b!3871895))

(assert (= (and d!1146685 res!1568345) b!3871896))

(assert (= (and b!3871896 res!1568344) b!3871897))

(declare-fun m!4428687 () Bool)

(assert (=> b!3871896 m!4428687))

(assert (=> b!3871896 m!4428659))

(declare-fun m!4428689 () Bool)

(assert (=> b!3871896 m!4428689))

(declare-fun m!4428691 () Bool)

(assert (=> b!3871895 m!4428691))

(declare-fun m!4428693 () Bool)

(assert (=> d!1146685 m!4428693))

(assert (=> d!1146685 m!4428667))

(declare-fun m!4428695 () Bool)

(assert (=> d!1146685 m!4428695))

(assert (=> b!3871706 d!1146685))

(declare-fun d!1146687 () Bool)

(assert (=> d!1146687 (= (isEmpty!24402 lt!1348025) ((_ is Nil!41133) lt!1348025))))

(assert (=> b!3871706 d!1146687))

(declare-fun b!3871900 () Bool)

(declare-fun res!1568346 () Bool)

(declare-fun e!2394918 () Bool)

(assert (=> b!3871900 (=> (not res!1568346) (not e!2394918))))

(declare-fun lt!1348130 () List!41257)

(assert (=> b!3871900 (= res!1568346 (= (size!30916 lt!1348130) (+ (size!30916 (++!10517 lt!1348011 lt!1348025)) (size!30916 suffixTokens!72))))))

(declare-fun b!3871899 () Bool)

(declare-fun e!2394917 () List!41257)

(assert (=> b!3871899 (= e!2394917 (Cons!41133 (h!46553 (++!10517 lt!1348011 lt!1348025)) (++!10517 (t!314516 (++!10517 lt!1348011 lt!1348025)) suffixTokens!72)))))

(declare-fun b!3871898 () Bool)

(assert (=> b!3871898 (= e!2394917 suffixTokens!72)))

(declare-fun b!3871901 () Bool)

(assert (=> b!3871901 (= e!2394918 (or (not (= suffixTokens!72 Nil!41133)) (= lt!1348130 (++!10517 lt!1348011 lt!1348025))))))

(declare-fun d!1146689 () Bool)

(assert (=> d!1146689 e!2394918))

(declare-fun res!1568347 () Bool)

(assert (=> d!1146689 (=> (not res!1568347) (not e!2394918))))

(assert (=> d!1146689 (= res!1568347 (= (content!6144 lt!1348130) ((_ map or) (content!6144 (++!10517 lt!1348011 lt!1348025)) (content!6144 suffixTokens!72))))))

(assert (=> d!1146689 (= lt!1348130 e!2394917)))

(declare-fun c!673775 () Bool)

(assert (=> d!1146689 (= c!673775 ((_ is Nil!41133) (++!10517 lt!1348011 lt!1348025)))))

(assert (=> d!1146689 (= (++!10517 (++!10517 lt!1348011 lt!1348025) suffixTokens!72) lt!1348130)))

(assert (= (and d!1146689 c!673775) b!3871898))

(assert (= (and d!1146689 (not c!673775)) b!3871899))

(assert (= (and d!1146689 res!1568347) b!3871900))

(assert (= (and b!3871900 res!1568346) b!3871901))

(declare-fun m!4428697 () Bool)

(assert (=> b!3871900 m!4428697))

(assert (=> b!3871900 m!4428377))

(declare-fun m!4428699 () Bool)

(assert (=> b!3871900 m!4428699))

(declare-fun m!4428701 () Bool)

(assert (=> b!3871900 m!4428701))

(declare-fun m!4428703 () Bool)

(assert (=> b!3871899 m!4428703))

(declare-fun m!4428705 () Bool)

(assert (=> d!1146689 m!4428705))

(assert (=> d!1146689 m!4428377))

(declare-fun m!4428707 () Bool)

(assert (=> d!1146689 m!4428707))

(declare-fun m!4428709 () Bool)

(assert (=> d!1146689 m!4428709))

(assert (=> b!3871706 d!1146689))

(declare-fun b!3871912 () Bool)

(declare-fun e!2394927 () Bool)

(declare-fun inv!15 (TokenValue!6610) Bool)

(assert (=> b!3871912 (= e!2394927 (inv!15 (value!202464 (h!46553 prefixTokens!80))))))

(declare-fun d!1146691 () Bool)

(declare-fun c!673780 () Bool)

(assert (=> d!1146691 (= c!673780 ((_ is IntegerValue!19830) (value!202464 (h!46553 prefixTokens!80))))))

(declare-fun e!2394925 () Bool)

(assert (=> d!1146691 (= (inv!21 (value!202464 (h!46553 prefixTokens!80))) e!2394925)))

(declare-fun b!3871913 () Bool)

(declare-fun e!2394926 () Bool)

(assert (=> b!3871913 (= e!2394925 e!2394926)))

(declare-fun c!673781 () Bool)

(assert (=> b!3871913 (= c!673781 ((_ is IntegerValue!19831) (value!202464 (h!46553 prefixTokens!80))))))

(declare-fun b!3871914 () Bool)

(declare-fun inv!16 (TokenValue!6610) Bool)

(assert (=> b!3871914 (= e!2394925 (inv!16 (value!202464 (h!46553 prefixTokens!80))))))

(declare-fun b!3871915 () Bool)

(declare-fun inv!17 (TokenValue!6610) Bool)

(assert (=> b!3871915 (= e!2394926 (inv!17 (value!202464 (h!46553 prefixTokens!80))))))

(declare-fun b!3871916 () Bool)

(declare-fun res!1568350 () Bool)

(assert (=> b!3871916 (=> res!1568350 e!2394927)))

(assert (=> b!3871916 (= res!1568350 (not ((_ is IntegerValue!19832) (value!202464 (h!46553 prefixTokens!80)))))))

(assert (=> b!3871916 (= e!2394926 e!2394927)))

(assert (= (and d!1146691 c!673780) b!3871914))

(assert (= (and d!1146691 (not c!673780)) b!3871913))

(assert (= (and b!3871913 c!673781) b!3871915))

(assert (= (and b!3871913 (not c!673781)) b!3871916))

(assert (= (and b!3871916 (not res!1568350)) b!3871912))

(declare-fun m!4428711 () Bool)

(assert (=> b!3871912 m!4428711))

(declare-fun m!4428713 () Bool)

(assert (=> b!3871914 m!4428713))

(declare-fun m!4428715 () Bool)

(assert (=> b!3871915 m!4428715))

(assert (=> b!3871684 d!1146691))

(declare-fun b!3871919 () Bool)

(declare-fun res!1568351 () Bool)

(declare-fun e!2394929 () Bool)

(assert (=> b!3871919 (=> (not res!1568351) (not e!2394929))))

(declare-fun lt!1348131 () List!41257)

(assert (=> b!3871919 (= res!1568351 (= (size!30916 lt!1348131) (+ (size!30916 lt!1348011) (size!30916 (_1!23311 lt!1348050)))))))

(declare-fun b!3871918 () Bool)

(declare-fun e!2394928 () List!41257)

(assert (=> b!3871918 (= e!2394928 (Cons!41133 (h!46553 lt!1348011) (++!10517 (t!314516 lt!1348011) (_1!23311 lt!1348050))))))

(declare-fun b!3871917 () Bool)

(assert (=> b!3871917 (= e!2394928 (_1!23311 lt!1348050))))

(declare-fun b!3871920 () Bool)

(assert (=> b!3871920 (= e!2394929 (or (not (= (_1!23311 lt!1348050) Nil!41133)) (= lt!1348131 lt!1348011)))))

(declare-fun d!1146693 () Bool)

(assert (=> d!1146693 e!2394929))

(declare-fun res!1568352 () Bool)

(assert (=> d!1146693 (=> (not res!1568352) (not e!2394929))))

(assert (=> d!1146693 (= res!1568352 (= (content!6144 lt!1348131) ((_ map or) (content!6144 lt!1348011) (content!6144 (_1!23311 lt!1348050)))))))

(assert (=> d!1146693 (= lt!1348131 e!2394928)))

(declare-fun c!673782 () Bool)

(assert (=> d!1146693 (= c!673782 ((_ is Nil!41133) lt!1348011))))

(assert (=> d!1146693 (= (++!10517 lt!1348011 (_1!23311 lt!1348050)) lt!1348131)))

(assert (= (and d!1146693 c!673782) b!3871917))

(assert (= (and d!1146693 (not c!673782)) b!3871918))

(assert (= (and d!1146693 res!1568352) b!3871919))

(assert (= (and b!3871919 res!1568351) b!3871920))

(declare-fun m!4428717 () Bool)

(assert (=> b!3871919 m!4428717))

(assert (=> b!3871919 m!4428659))

(declare-fun m!4428719 () Bool)

(assert (=> b!3871919 m!4428719))

(declare-fun m!4428721 () Bool)

(assert (=> b!3871918 m!4428721))

(declare-fun m!4428723 () Bool)

(assert (=> d!1146693 m!4428723))

(assert (=> d!1146693 m!4428667))

(declare-fun m!4428725 () Bool)

(assert (=> d!1146693 m!4428725))

(assert (=> b!3871667 d!1146693))

(declare-fun b!3871922 () Bool)

(declare-fun e!2394932 () tuple2!40354)

(assert (=> b!3871922 (= e!2394932 (tuple2!40355 Nil!41133 lt!1348035))))

(declare-fun b!3871923 () Bool)

(declare-fun lt!1348134 () Option!8798)

(declare-fun lt!1348132 () tuple2!40354)

(assert (=> b!3871923 (= e!2394932 (tuple2!40355 (Cons!41133 (_1!23312 (v!39095 lt!1348134)) (_1!23311 lt!1348132)) (_2!23311 lt!1348132)))))

(assert (=> b!3871923 (= lt!1348132 (lexList!1737 thiss!20629 rules!2768 (_2!23312 (v!39095 lt!1348134))))))

(declare-fun b!3871924 () Bool)

(declare-fun e!2394931 () Bool)

(declare-fun e!2394930 () Bool)

(assert (=> b!3871924 (= e!2394931 e!2394930)))

(declare-fun res!1568353 () Bool)

(declare-fun lt!1348133 () tuple2!40354)

(assert (=> b!3871924 (= res!1568353 (< (size!30914 (_2!23311 lt!1348133)) (size!30914 lt!1348035)))))

(assert (=> b!3871924 (=> (not res!1568353) (not e!2394930))))

(declare-fun b!3871925 () Bool)

(assert (=> b!3871925 (= e!2394930 (not (isEmpty!24402 (_1!23311 lt!1348133))))))

(declare-fun b!3871921 () Bool)

(assert (=> b!3871921 (= e!2394931 (= (_2!23311 lt!1348133) lt!1348035))))

(declare-fun d!1146695 () Bool)

(assert (=> d!1146695 e!2394931))

(declare-fun c!673784 () Bool)

(assert (=> d!1146695 (= c!673784 (> (size!30916 (_1!23311 lt!1348133)) 0))))

(assert (=> d!1146695 (= lt!1348133 e!2394932)))

(declare-fun c!673783 () Bool)

(assert (=> d!1146695 (= c!673783 ((_ is Some!8797) lt!1348134))))

(assert (=> d!1146695 (= lt!1348134 (maxPrefix!3273 thiss!20629 rules!2768 lt!1348035))))

(assert (=> d!1146695 (= (lexList!1737 thiss!20629 rules!2768 lt!1348035) lt!1348133)))

(assert (= (and d!1146695 c!673783) b!3871923))

(assert (= (and d!1146695 (not c!673783)) b!3871922))

(assert (= (and d!1146695 c!673784) b!3871924))

(assert (= (and d!1146695 (not c!673784)) b!3871921))

(assert (= (and b!3871924 res!1568353) b!3871925))

(declare-fun m!4428727 () Bool)

(assert (=> b!3871923 m!4428727))

(declare-fun m!4428729 () Bool)

(assert (=> b!3871924 m!4428729))

(assert (=> b!3871924 m!4428441))

(declare-fun m!4428731 () Bool)

(assert (=> b!3871925 m!4428731))

(declare-fun m!4428733 () Bool)

(assert (=> d!1146695 m!4428733))

(assert (=> d!1146695 m!4428451))

(assert (=> b!3871710 d!1146695))

(declare-fun b!3871928 () Bool)

(declare-fun res!1568354 () Bool)

(declare-fun e!2394934 () Bool)

(assert (=> b!3871928 (=> (not res!1568354) (not e!2394934))))

(declare-fun lt!1348135 () List!41257)

(assert (=> b!3871928 (= res!1568354 (= (size!30916 lt!1348135) (+ (size!30916 prefixTokens!80) (size!30916 suffixTokens!72))))))

(declare-fun b!3871927 () Bool)

(declare-fun e!2394933 () List!41257)

(assert (=> b!3871927 (= e!2394933 (Cons!41133 (h!46553 prefixTokens!80) (++!10517 (t!314516 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3871926 () Bool)

(assert (=> b!3871926 (= e!2394933 suffixTokens!72)))

(declare-fun b!3871929 () Bool)

(assert (=> b!3871929 (= e!2394934 (or (not (= suffixTokens!72 Nil!41133)) (= lt!1348135 prefixTokens!80)))))

(declare-fun d!1146697 () Bool)

(assert (=> d!1146697 e!2394934))

(declare-fun res!1568355 () Bool)

(assert (=> d!1146697 (=> (not res!1568355) (not e!2394934))))

(assert (=> d!1146697 (= res!1568355 (= (content!6144 lt!1348135) ((_ map or) (content!6144 prefixTokens!80) (content!6144 suffixTokens!72))))))

(assert (=> d!1146697 (= lt!1348135 e!2394933)))

(declare-fun c!673785 () Bool)

(assert (=> d!1146697 (= c!673785 ((_ is Nil!41133) prefixTokens!80))))

(assert (=> d!1146697 (= (++!10517 prefixTokens!80 suffixTokens!72) lt!1348135)))

(assert (= (and d!1146697 c!673785) b!3871926))

(assert (= (and d!1146697 (not c!673785)) b!3871927))

(assert (= (and d!1146697 res!1568355) b!3871928))

(assert (= (and b!3871928 res!1568354) b!3871929))

(declare-fun m!4428735 () Bool)

(assert (=> b!3871928 m!4428735))

(declare-fun m!4428737 () Bool)

(assert (=> b!3871928 m!4428737))

(assert (=> b!3871928 m!4428701))

(declare-fun m!4428739 () Bool)

(assert (=> b!3871927 m!4428739))

(declare-fun m!4428741 () Bool)

(assert (=> d!1146697 m!4428741))

(declare-fun m!4428743 () Bool)

(assert (=> d!1146697 m!4428743))

(assert (=> d!1146697 m!4428709))

(assert (=> b!3871710 d!1146697))

(declare-fun b!3871939 () Bool)

(declare-fun e!2394939 () List!41254)

(assert (=> b!3871939 (= e!2394939 (Cons!41130 (h!46550 prefix!426) (++!10518 (t!314513 prefix!426) suffix!1176)))))

(declare-fun b!3871940 () Bool)

(declare-fun res!1568360 () Bool)

(declare-fun e!2394940 () Bool)

(assert (=> b!3871940 (=> (not res!1568360) (not e!2394940))))

(declare-fun lt!1348138 () List!41254)

(assert (=> b!3871940 (= res!1568360 (= (size!30914 lt!1348138) (+ (size!30914 prefix!426) (size!30914 suffix!1176))))))

(declare-fun b!3871938 () Bool)

(assert (=> b!3871938 (= e!2394939 suffix!1176)))

(declare-fun b!3871941 () Bool)

(assert (=> b!3871941 (= e!2394940 (or (not (= suffix!1176 Nil!41130)) (= lt!1348138 prefix!426)))))

(declare-fun d!1146699 () Bool)

(assert (=> d!1146699 e!2394940))

(declare-fun res!1568361 () Bool)

(assert (=> d!1146699 (=> (not res!1568361) (not e!2394940))))

(declare-fun content!6145 (List!41254) (InoxSet C!22756))

(assert (=> d!1146699 (= res!1568361 (= (content!6145 lt!1348138) ((_ map or) (content!6145 prefix!426) (content!6145 suffix!1176))))))

(assert (=> d!1146699 (= lt!1348138 e!2394939)))

(declare-fun c!673788 () Bool)

(assert (=> d!1146699 (= c!673788 ((_ is Nil!41130) prefix!426))))

(assert (=> d!1146699 (= (++!10518 prefix!426 suffix!1176) lt!1348138)))

(assert (= (and d!1146699 c!673788) b!3871938))

(assert (= (and d!1146699 (not c!673788)) b!3871939))

(assert (= (and d!1146699 res!1568361) b!3871940))

(assert (= (and b!3871940 res!1568360) b!3871941))

(declare-fun m!4428745 () Bool)

(assert (=> b!3871939 m!4428745))

(declare-fun m!4428747 () Bool)

(assert (=> b!3871940 m!4428747))

(assert (=> b!3871940 m!4428425))

(assert (=> b!3871940 m!4428399))

(declare-fun m!4428749 () Bool)

(assert (=> d!1146699 m!4428749))

(declare-fun m!4428751 () Bool)

(assert (=> d!1146699 m!4428751))

(declare-fun m!4428753 () Bool)

(assert (=> d!1146699 m!4428753))

(assert (=> b!3871710 d!1146699))

(declare-fun d!1146701 () Bool)

(assert (=> d!1146701 (= (_2!23312 (v!39095 lt!1348027)) lt!1348019)))

(declare-fun lt!1348141 () Unit!58983)

(declare-fun choose!22892 (List!41254 List!41254 List!41254 List!41254 List!41254) Unit!58983)

(assert (=> d!1146701 (= lt!1348141 (choose!22892 lt!1348044 (_2!23312 (v!39095 lt!1348027)) lt!1348044 lt!1348019 lt!1348035))))

(assert (=> d!1146701 (isPrefix!3479 lt!1348044 lt!1348035)))

(assert (=> d!1146701 (= (lemmaSamePrefixThenSameSuffix!1700 lt!1348044 (_2!23312 (v!39095 lt!1348027)) lt!1348044 lt!1348019 lt!1348035) lt!1348141)))

(declare-fun bs!583486 () Bool)

(assert (= bs!583486 d!1146701))

(declare-fun m!4428755 () Bool)

(assert (=> bs!583486 m!4428755))

(declare-fun m!4428757 () Bool)

(assert (=> bs!583486 m!4428757))

(assert (=> b!3871709 d!1146701))

(declare-fun b!3871953 () Bool)

(declare-fun e!2394947 () Bool)

(assert (=> b!3871953 (= e!2394947 (>= (size!30914 lt!1348014) (size!30914 lt!1348044)))))

(declare-fun b!3871951 () Bool)

(declare-fun res!1568370 () Bool)

(declare-fun e!2394949 () Bool)

(assert (=> b!3871951 (=> (not res!1568370) (not e!2394949))))

(declare-fun head!8200 (List!41254) C!22756)

(assert (=> b!3871951 (= res!1568370 (= (head!8200 lt!1348044) (head!8200 lt!1348014)))))

(declare-fun b!3871950 () Bool)

(declare-fun e!2394948 () Bool)

(assert (=> b!3871950 (= e!2394948 e!2394949)))

(declare-fun res!1568373 () Bool)

(assert (=> b!3871950 (=> (not res!1568373) (not e!2394949))))

(assert (=> b!3871950 (= res!1568373 (not ((_ is Nil!41130) lt!1348014)))))

(declare-fun d!1146703 () Bool)

(assert (=> d!1146703 e!2394947))

(declare-fun res!1568372 () Bool)

(assert (=> d!1146703 (=> res!1568372 e!2394947)))

(declare-fun lt!1348144 () Bool)

(assert (=> d!1146703 (= res!1568372 (not lt!1348144))))

(assert (=> d!1146703 (= lt!1348144 e!2394948)))

(declare-fun res!1568371 () Bool)

(assert (=> d!1146703 (=> res!1568371 e!2394948)))

(assert (=> d!1146703 (= res!1568371 ((_ is Nil!41130) lt!1348044))))

(assert (=> d!1146703 (= (isPrefix!3479 lt!1348044 lt!1348014) lt!1348144)))

(declare-fun b!3871952 () Bool)

(declare-fun tail!5917 (List!41254) List!41254)

(assert (=> b!3871952 (= e!2394949 (isPrefix!3479 (tail!5917 lt!1348044) (tail!5917 lt!1348014)))))

(assert (= (and d!1146703 (not res!1568371)) b!3871950))

(assert (= (and b!3871950 res!1568373) b!3871951))

(assert (= (and b!3871951 res!1568370) b!3871952))

(assert (= (and d!1146703 (not res!1568372)) b!3871953))

(declare-fun m!4428759 () Bool)

(assert (=> b!3871953 m!4428759))

(assert (=> b!3871953 m!4428347))

(declare-fun m!4428761 () Bool)

(assert (=> b!3871951 m!4428761))

(declare-fun m!4428763 () Bool)

(assert (=> b!3871951 m!4428763))

(declare-fun m!4428765 () Bool)

(assert (=> b!3871952 m!4428765))

(declare-fun m!4428767 () Bool)

(assert (=> b!3871952 m!4428767))

(assert (=> b!3871952 m!4428765))

(assert (=> b!3871952 m!4428767))

(declare-fun m!4428769 () Bool)

(assert (=> b!3871952 m!4428769))

(assert (=> b!3871709 d!1146703))

(declare-fun d!1146705 () Bool)

(assert (=> d!1146705 (isPrefix!3479 lt!1348044 (++!10518 lt!1348044 lt!1348019))))

(declare-fun lt!1348157 () Unit!58983)

(declare-fun choose!22893 (List!41254 List!41254) Unit!58983)

(assert (=> d!1146705 (= lt!1348157 (choose!22893 lt!1348044 lt!1348019))))

(assert (=> d!1146705 (= (lemmaConcatTwoListThenFirstIsPrefix!2342 lt!1348044 lt!1348019) lt!1348157)))

(declare-fun bs!583487 () Bool)

(assert (= bs!583487 d!1146705))

(assert (=> bs!583487 m!4428339))

(assert (=> bs!583487 m!4428339))

(declare-fun m!4428771 () Bool)

(assert (=> bs!583487 m!4428771))

(declare-fun m!4428773 () Bool)

(assert (=> bs!583487 m!4428773))

(assert (=> b!3871709 d!1146705))

(declare-fun b!3871973 () Bool)

(declare-fun e!2394958 () List!41254)

(assert (=> b!3871973 (= e!2394958 (Cons!41130 (h!46550 lt!1348044) (++!10518 (t!314513 lt!1348044) lt!1348019)))))

(declare-fun b!3871974 () Bool)

(declare-fun res!1568388 () Bool)

(declare-fun e!2394959 () Bool)

(assert (=> b!3871974 (=> (not res!1568388) (not e!2394959))))

(declare-fun lt!1348158 () List!41254)

(assert (=> b!3871974 (= res!1568388 (= (size!30914 lt!1348158) (+ (size!30914 lt!1348044) (size!30914 lt!1348019))))))

(declare-fun b!3871972 () Bool)

(assert (=> b!3871972 (= e!2394958 lt!1348019)))

(declare-fun b!3871975 () Bool)

(assert (=> b!3871975 (= e!2394959 (or (not (= lt!1348019 Nil!41130)) (= lt!1348158 lt!1348044)))))

(declare-fun d!1146707 () Bool)

(assert (=> d!1146707 e!2394959))

(declare-fun res!1568389 () Bool)

(assert (=> d!1146707 (=> (not res!1568389) (not e!2394959))))

(assert (=> d!1146707 (= res!1568389 (= (content!6145 lt!1348158) ((_ map or) (content!6145 lt!1348044) (content!6145 lt!1348019))))))

(assert (=> d!1146707 (= lt!1348158 e!2394958)))

(declare-fun c!673791 () Bool)

(assert (=> d!1146707 (= c!673791 ((_ is Nil!41130) lt!1348044))))

(assert (=> d!1146707 (= (++!10518 lt!1348044 lt!1348019) lt!1348158)))

(assert (= (and d!1146707 c!673791) b!3871972))

(assert (= (and d!1146707 (not c!673791)) b!3871973))

(assert (= (and d!1146707 res!1568389) b!3871974))

(assert (= (and b!3871974 res!1568388) b!3871975))

(declare-fun m!4428775 () Bool)

(assert (=> b!3871973 m!4428775))

(declare-fun m!4428777 () Bool)

(assert (=> b!3871974 m!4428777))

(assert (=> b!3871974 m!4428347))

(declare-fun m!4428779 () Bool)

(assert (=> b!3871974 m!4428779))

(declare-fun m!4428781 () Bool)

(assert (=> d!1146707 m!4428781))

(declare-fun m!4428783 () Bool)

(assert (=> d!1146707 m!4428783))

(declare-fun m!4428785 () Bool)

(assert (=> d!1146707 m!4428785))

(assert (=> b!3871688 d!1146707))

(declare-fun b!3871977 () Bool)

(declare-fun e!2394960 () List!41254)

(assert (=> b!3871977 (= e!2394960 (Cons!41130 (h!46550 lt!1348020) (++!10518 (t!314513 lt!1348020) suffix!1176)))))

(declare-fun b!3871978 () Bool)

(declare-fun res!1568390 () Bool)

(declare-fun e!2394961 () Bool)

(assert (=> b!3871978 (=> (not res!1568390) (not e!2394961))))

(declare-fun lt!1348159 () List!41254)

(assert (=> b!3871978 (= res!1568390 (= (size!30914 lt!1348159) (+ (size!30914 lt!1348020) (size!30914 suffix!1176))))))

(declare-fun b!3871976 () Bool)

(assert (=> b!3871976 (= e!2394960 suffix!1176)))

(declare-fun b!3871979 () Bool)

(assert (=> b!3871979 (= e!2394961 (or (not (= suffix!1176 Nil!41130)) (= lt!1348159 lt!1348020)))))

(declare-fun d!1146709 () Bool)

(assert (=> d!1146709 e!2394961))

(declare-fun res!1568391 () Bool)

(assert (=> d!1146709 (=> (not res!1568391) (not e!2394961))))

(assert (=> d!1146709 (= res!1568391 (= (content!6145 lt!1348159) ((_ map or) (content!6145 lt!1348020) (content!6145 suffix!1176))))))

(assert (=> d!1146709 (= lt!1348159 e!2394960)))

(declare-fun c!673792 () Bool)

(assert (=> d!1146709 (= c!673792 ((_ is Nil!41130) lt!1348020))))

(assert (=> d!1146709 (= (++!10518 lt!1348020 suffix!1176) lt!1348159)))

(assert (= (and d!1146709 c!673792) b!3871976))

(assert (= (and d!1146709 (not c!673792)) b!3871977))

(assert (= (and d!1146709 res!1568391) b!3871978))

(assert (= (and b!3871978 res!1568390) b!3871979))

(declare-fun m!4428787 () Bool)

(assert (=> b!3871977 m!4428787))

(declare-fun m!4428789 () Bool)

(assert (=> b!3871978 m!4428789))

(declare-fun m!4428791 () Bool)

(assert (=> b!3871978 m!4428791))

(assert (=> b!3871978 m!4428399))

(declare-fun m!4428793 () Bool)

(assert (=> d!1146709 m!4428793))

(declare-fun m!4428795 () Bool)

(assert (=> d!1146709 m!4428795))

(assert (=> d!1146709 m!4428753))

(assert (=> b!3871688 d!1146709))

(declare-fun d!1146711 () Bool)

(assert (=> d!1146711 (= (++!10518 (++!10518 lt!1348044 lt!1348020) suffix!1176) (++!10518 lt!1348044 (++!10518 lt!1348020 suffix!1176)))))

(declare-fun lt!1348162 () Unit!58983)

(declare-fun choose!22894 (List!41254 List!41254 List!41254) Unit!58983)

(assert (=> d!1146711 (= lt!1348162 (choose!22894 lt!1348044 lt!1348020 suffix!1176))))

(assert (=> d!1146711 (= (lemmaConcatAssociativity!2231 lt!1348044 lt!1348020 suffix!1176) lt!1348162)))

(declare-fun bs!583488 () Bool)

(assert (= bs!583488 d!1146711))

(assert (=> bs!583488 m!4428341))

(assert (=> bs!583488 m!4428407))

(declare-fun m!4428797 () Bool)

(assert (=> bs!583488 m!4428797))

(declare-fun m!4428799 () Bool)

(assert (=> bs!583488 m!4428799))

(assert (=> bs!583488 m!4428407))

(assert (=> bs!583488 m!4428341))

(declare-fun m!4428801 () Bool)

(assert (=> bs!583488 m!4428801))

(assert (=> b!3871688 d!1146711))

(declare-fun d!1146713 () Bool)

(assert (=> d!1146713 (= (head!8198 prefixTokens!80) (h!46553 prefixTokens!80))))

(assert (=> b!3871687 d!1146713))

(declare-fun d!1146715 () Bool)

(assert (=> d!1146715 (= (isEmpty!24402 prefixTokens!80) ((_ is Nil!41133) prefixTokens!80))))

(assert (=> b!3871666 d!1146715))

(declare-fun d!1146717 () Bool)

(declare-fun res!1568403 () Bool)

(declare-fun e!2394970 () Bool)

(assert (=> d!1146717 (=> (not res!1568403) (not e!2394970))))

(assert (=> d!1146717 (= res!1568403 (not (isEmpty!24403 (originalCharacters!6980 (h!46553 prefixTokens!80)))))))

(assert (=> d!1146717 (= (inv!55291 (h!46553 prefixTokens!80)) e!2394970)))

(declare-fun b!3871997 () Bool)

(declare-fun res!1568404 () Bool)

(assert (=> b!3871997 (=> (not res!1568404) (not e!2394970))))

(declare-fun dynLambda!17697 (Int TokenValue!6610) BalanceConc!24776)

(assert (=> b!3871997 (= res!1568404 (= (originalCharacters!6980 (h!46553 prefixTokens!80)) (list!15300 (dynLambda!17697 (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) (value!202464 (h!46553 prefixTokens!80))))))))

(declare-fun b!3871998 () Bool)

(assert (=> b!3871998 (= e!2394970 (= (size!30913 (h!46553 prefixTokens!80)) (size!30914 (originalCharacters!6980 (h!46553 prefixTokens!80)))))))

(assert (= (and d!1146717 res!1568403) b!3871997))

(assert (= (and b!3871997 res!1568404) b!3871998))

(declare-fun b_lambda!113083 () Bool)

(assert (=> (not b_lambda!113083) (not b!3871997)))

(declare-fun t!314530 () Bool)

(declare-fun tb!224573 () Bool)

(assert (=> (and b!3871672 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80))))) t!314530) tb!224573))

(declare-fun b!3872003 () Bool)

(declare-fun e!2394973 () Bool)

(declare-fun tp!1173907 () Bool)

(declare-fun inv!55294 (Conc!12591) Bool)

(assert (=> b!3872003 (= e!2394973 (and (inv!55294 (c!673726 (dynLambda!17697 (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) (value!202464 (h!46553 prefixTokens!80))))) tp!1173907))))

(declare-fun result!273528 () Bool)

(declare-fun inv!55295 (BalanceConc!24776) Bool)

(assert (=> tb!224573 (= result!273528 (and (inv!55295 (dynLambda!17697 (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) (value!202464 (h!46553 prefixTokens!80)))) e!2394973))))

(assert (= tb!224573 b!3872003))

(declare-fun m!4428849 () Bool)

(assert (=> b!3872003 m!4428849))

(declare-fun m!4428851 () Bool)

(assert (=> tb!224573 m!4428851))

(assert (=> b!3871997 t!314530))

(declare-fun b_and!290235 () Bool)

(assert (= b_and!290213 (and (=> t!314530 result!273528) b_and!290235)))

(declare-fun t!314532 () Bool)

(declare-fun tb!224575 () Bool)

(assert (=> (and b!3871677 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80))))) t!314532) tb!224575))

(declare-fun result!273532 () Bool)

(assert (= result!273532 result!273528))

(assert (=> b!3871997 t!314532))

(declare-fun b_and!290237 () Bool)

(assert (= b_and!290217 (and (=> t!314532 result!273532) b_and!290237)))

(declare-fun tb!224577 () Bool)

(declare-fun t!314534 () Bool)

(assert (=> (and b!3871668 (= (toChars!8667 (transformation!6380 (h!46552 rules!2768))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80))))) t!314534) tb!224577))

(declare-fun result!273534 () Bool)

(assert (= result!273534 result!273528))

(assert (=> b!3871997 t!314534))

(declare-fun b_and!290239 () Bool)

(assert (= b_and!290221 (and (=> t!314534 result!273534) b_and!290239)))

(declare-fun m!4428853 () Bool)

(assert (=> d!1146717 m!4428853))

(declare-fun m!4428855 () Bool)

(assert (=> b!3871997 m!4428855))

(assert (=> b!3871997 m!4428855))

(declare-fun m!4428857 () Bool)

(assert (=> b!3871997 m!4428857))

(declare-fun m!4428859 () Bool)

(assert (=> b!3871998 m!4428859))

(assert (=> b!3871708 d!1146717))

(declare-fun d!1146725 () Bool)

(declare-fun lt!1348170 () Int)

(assert (=> d!1146725 (>= lt!1348170 0)))

(declare-fun e!2394974 () Int)

(assert (=> d!1146725 (= lt!1348170 e!2394974)))

(declare-fun c!673796 () Bool)

(assert (=> d!1146725 (= c!673796 ((_ is Nil!41130) suffix!1176))))

(assert (=> d!1146725 (= (size!30914 suffix!1176) lt!1348170)))

(declare-fun b!3872004 () Bool)

(assert (=> b!3872004 (= e!2394974 0)))

(declare-fun b!3872005 () Bool)

(assert (=> b!3872005 (= e!2394974 (+ 1 (size!30914 (t!314513 suffix!1176))))))

(assert (= (and d!1146725 c!673796) b!3872004))

(assert (= (and d!1146725 (not c!673796)) b!3872005))

(declare-fun m!4428861 () Bool)

(assert (=> b!3872005 m!4428861))

(assert (=> b!3871701 d!1146725))

(declare-fun d!1146727 () Bool)

(declare-fun lt!1348171 () Int)

(assert (=> d!1146727 (>= lt!1348171 0)))

(declare-fun e!2394975 () Int)

(assert (=> d!1146727 (= lt!1348171 e!2394975)))

(declare-fun c!673797 () Bool)

(assert (=> d!1146727 (= c!673797 ((_ is Nil!41130) (_2!23312 (v!39095 lt!1348027))))))

(assert (=> d!1146727 (= (size!30914 (_2!23312 (v!39095 lt!1348027))) lt!1348171)))

(declare-fun b!3872006 () Bool)

(assert (=> b!3872006 (= e!2394975 0)))

(declare-fun b!3872007 () Bool)

(assert (=> b!3872007 (= e!2394975 (+ 1 (size!30914 (t!314513 (_2!23312 (v!39095 lt!1348027))))))))

(assert (= (and d!1146727 c!673797) b!3872006))

(assert (= (and d!1146727 (not c!673797)) b!3872007))

(declare-fun m!4428863 () Bool)

(assert (=> b!3872007 m!4428863))

(assert (=> b!3871701 d!1146727))

(declare-fun b!3872067 () Bool)

(declare-fun e!2395007 () Bool)

(declare-fun lt!1348207 () Option!8798)

(declare-fun contains!8289 (List!41256 Rule!12560) Bool)

(assert (=> b!3872067 (= e!2395007 (contains!8289 rules!2768 (rule!9268 (_1!23312 (get!13610 lt!1348207)))))))

(declare-fun b!3872068 () Bool)

(declare-fun res!1568443 () Bool)

(assert (=> b!3872068 (=> (not res!1568443) (not e!2395007))))

(declare-fun matchR!5414 (Regex!11285 List!41254) Bool)

(assert (=> b!3872068 (= res!1568443 (matchR!5414 (regex!6380 (rule!9268 (_1!23312 (get!13610 lt!1348207)))) (list!15300 (charsOf!4208 (_1!23312 (get!13610 lt!1348207))))))))

(declare-fun b!3872069 () Bool)

(declare-fun res!1568439 () Bool)

(assert (=> b!3872069 (=> (not res!1568439) (not e!2395007))))

(assert (=> b!3872069 (= res!1568439 (= (++!10518 (list!15300 (charsOf!4208 (_1!23312 (get!13610 lt!1348207)))) (_2!23312 (get!13610 lt!1348207))) lt!1348035))))

(declare-fun b!3872070 () Bool)

(declare-fun res!1568442 () Bool)

(assert (=> b!3872070 (=> (not res!1568442) (not e!2395007))))

(assert (=> b!3872070 (= res!1568442 (= (value!202464 (_1!23312 (get!13610 lt!1348207))) (apply!9623 (transformation!6380 (rule!9268 (_1!23312 (get!13610 lt!1348207)))) (seqFromList!4651 (originalCharacters!6980 (_1!23312 (get!13610 lt!1348207)))))))))

(declare-fun b!3872071 () Bool)

(declare-fun e!2395008 () Option!8798)

(declare-fun lt!1348211 () Option!8798)

(declare-fun lt!1348209 () Option!8798)

(assert (=> b!3872071 (= e!2395008 (ite (and ((_ is None!8797) lt!1348211) ((_ is None!8797) lt!1348209)) None!8797 (ite ((_ is None!8797) lt!1348209) lt!1348211 (ite ((_ is None!8797) lt!1348211) lt!1348209 (ite (>= (size!30913 (_1!23312 (v!39095 lt!1348211))) (size!30913 (_1!23312 (v!39095 lt!1348209)))) lt!1348211 lt!1348209)))))))

(declare-fun call!282744 () Option!8798)

(assert (=> b!3872071 (= lt!1348211 call!282744)))

(assert (=> b!3872071 (= lt!1348209 (maxPrefix!3273 thiss!20629 (t!314515 rules!2768) lt!1348035))))

(declare-fun b!3872072 () Bool)

(declare-fun e!2395009 () Bool)

(assert (=> b!3872072 (= e!2395009 e!2395007)))

(declare-fun res!1568438 () Bool)

(assert (=> b!3872072 (=> (not res!1568438) (not e!2395007))))

(declare-fun isDefined!6885 (Option!8798) Bool)

(assert (=> b!3872072 (= res!1568438 (isDefined!6885 lt!1348207))))

(declare-fun bm!282739 () Bool)

(assert (=> bm!282739 (= call!282744 (maxPrefixOneRule!2355 thiss!20629 (h!46552 rules!2768) lt!1348035))))

(declare-fun d!1146729 () Bool)

(assert (=> d!1146729 e!2395009))

(declare-fun res!1568437 () Bool)

(assert (=> d!1146729 (=> res!1568437 e!2395009)))

(declare-fun isEmpty!24406 (Option!8798) Bool)

(assert (=> d!1146729 (= res!1568437 (isEmpty!24406 lt!1348207))))

(assert (=> d!1146729 (= lt!1348207 e!2395008)))

(declare-fun c!673810 () Bool)

(assert (=> d!1146729 (= c!673810 (and ((_ is Cons!41132) rules!2768) ((_ is Nil!41132) (t!314515 rules!2768))))))

(declare-fun lt!1348210 () Unit!58983)

(declare-fun lt!1348208 () Unit!58983)

(assert (=> d!1146729 (= lt!1348210 lt!1348208)))

(assert (=> d!1146729 (isPrefix!3479 lt!1348035 lt!1348035)))

(declare-fun lemmaIsPrefixRefl!2208 (List!41254 List!41254) Unit!58983)

(assert (=> d!1146729 (= lt!1348208 (lemmaIsPrefixRefl!2208 lt!1348035 lt!1348035))))

(declare-fun rulesValidInductive!2282 (LexerInterface!5969 List!41256) Bool)

(assert (=> d!1146729 (rulesValidInductive!2282 thiss!20629 rules!2768)))

(assert (=> d!1146729 (= (maxPrefix!3273 thiss!20629 rules!2768 lt!1348035) lt!1348207)))

(declare-fun b!3872073 () Bool)

(declare-fun res!1568441 () Bool)

(assert (=> b!3872073 (=> (not res!1568441) (not e!2395007))))

(assert (=> b!3872073 (= res!1568441 (= (list!15300 (charsOf!4208 (_1!23312 (get!13610 lt!1348207)))) (originalCharacters!6980 (_1!23312 (get!13610 lt!1348207)))))))

(declare-fun b!3872074 () Bool)

(declare-fun res!1568440 () Bool)

(assert (=> b!3872074 (=> (not res!1568440) (not e!2395007))))

(assert (=> b!3872074 (= res!1568440 (< (size!30914 (_2!23312 (get!13610 lt!1348207))) (size!30914 lt!1348035)))))

(declare-fun b!3872075 () Bool)

(assert (=> b!3872075 (= e!2395008 call!282744)))

(assert (= (and d!1146729 c!673810) b!3872075))

(assert (= (and d!1146729 (not c!673810)) b!3872071))

(assert (= (or b!3872075 b!3872071) bm!282739))

(assert (= (and d!1146729 (not res!1568437)) b!3872072))

(assert (= (and b!3872072 res!1568438) b!3872073))

(assert (= (and b!3872073 res!1568441) b!3872074))

(assert (= (and b!3872074 res!1568440) b!3872069))

(assert (= (and b!3872069 res!1568439) b!3872070))

(assert (= (and b!3872070 res!1568442) b!3872068))

(assert (= (and b!3872068 res!1568443) b!3872067))

(declare-fun m!4428967 () Bool)

(assert (=> b!3872074 m!4428967))

(declare-fun m!4428969 () Bool)

(assert (=> b!3872074 m!4428969))

(assert (=> b!3872074 m!4428441))

(declare-fun m!4428971 () Bool)

(assert (=> b!3872072 m!4428971))

(assert (=> b!3872069 m!4428967))

(declare-fun m!4428973 () Bool)

(assert (=> b!3872069 m!4428973))

(assert (=> b!3872069 m!4428973))

(declare-fun m!4428975 () Bool)

(assert (=> b!3872069 m!4428975))

(assert (=> b!3872069 m!4428975))

(declare-fun m!4428977 () Bool)

(assert (=> b!3872069 m!4428977))

(assert (=> b!3872068 m!4428967))

(assert (=> b!3872068 m!4428973))

(assert (=> b!3872068 m!4428973))

(assert (=> b!3872068 m!4428975))

(assert (=> b!3872068 m!4428975))

(declare-fun m!4428979 () Bool)

(assert (=> b!3872068 m!4428979))

(assert (=> b!3872073 m!4428967))

(assert (=> b!3872073 m!4428973))

(assert (=> b!3872073 m!4428973))

(assert (=> b!3872073 m!4428975))

(declare-fun m!4428981 () Bool)

(assert (=> bm!282739 m!4428981))

(assert (=> b!3872067 m!4428967))

(declare-fun m!4428983 () Bool)

(assert (=> b!3872067 m!4428983))

(declare-fun m!4428985 () Bool)

(assert (=> b!3872071 m!4428985))

(declare-fun m!4428987 () Bool)

(assert (=> d!1146729 m!4428987))

(declare-fun m!4428989 () Bool)

(assert (=> d!1146729 m!4428989))

(declare-fun m!4428991 () Bool)

(assert (=> d!1146729 m!4428991))

(declare-fun m!4428993 () Bool)

(assert (=> d!1146729 m!4428993))

(assert (=> b!3872070 m!4428967))

(declare-fun m!4428995 () Bool)

(assert (=> b!3872070 m!4428995))

(assert (=> b!3872070 m!4428995))

(declare-fun m!4428997 () Bool)

(assert (=> b!3872070 m!4428997))

(assert (=> b!3871680 d!1146729))

(declare-fun b!3872077 () Bool)

(declare-fun e!2395012 () tuple2!40354)

(assert (=> b!3872077 (= e!2395012 (tuple2!40355 Nil!41133 suffix!1176))))

(declare-fun b!3872078 () Bool)

(declare-fun lt!1348214 () Option!8798)

(declare-fun lt!1348212 () tuple2!40354)

(assert (=> b!3872078 (= e!2395012 (tuple2!40355 (Cons!41133 (_1!23312 (v!39095 lt!1348214)) (_1!23311 lt!1348212)) (_2!23311 lt!1348212)))))

(assert (=> b!3872078 (= lt!1348212 (lexList!1737 thiss!20629 rules!2768 (_2!23312 (v!39095 lt!1348214))))))

(declare-fun b!3872079 () Bool)

(declare-fun e!2395011 () Bool)

(declare-fun e!2395010 () Bool)

(assert (=> b!3872079 (= e!2395011 e!2395010)))

(declare-fun res!1568444 () Bool)

(declare-fun lt!1348213 () tuple2!40354)

(assert (=> b!3872079 (= res!1568444 (< (size!30914 (_2!23311 lt!1348213)) (size!30914 suffix!1176)))))

(assert (=> b!3872079 (=> (not res!1568444) (not e!2395010))))

(declare-fun b!3872080 () Bool)

(assert (=> b!3872080 (= e!2395010 (not (isEmpty!24402 (_1!23311 lt!1348213))))))

(declare-fun b!3872076 () Bool)

(assert (=> b!3872076 (= e!2395011 (= (_2!23311 lt!1348213) suffix!1176))))

(declare-fun d!1146771 () Bool)

(assert (=> d!1146771 e!2395011))

(declare-fun c!673812 () Bool)

(assert (=> d!1146771 (= c!673812 (> (size!30916 (_1!23311 lt!1348213)) 0))))

(assert (=> d!1146771 (= lt!1348213 e!2395012)))

(declare-fun c!673811 () Bool)

(assert (=> d!1146771 (= c!673811 ((_ is Some!8797) lt!1348214))))

(assert (=> d!1146771 (= lt!1348214 (maxPrefix!3273 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1146771 (= (lexList!1737 thiss!20629 rules!2768 suffix!1176) lt!1348213)))

(assert (= (and d!1146771 c!673811) b!3872078))

(assert (= (and d!1146771 (not c!673811)) b!3872077))

(assert (= (and d!1146771 c!673812) b!3872079))

(assert (= (and d!1146771 (not c!673812)) b!3872076))

(assert (= (and b!3872079 res!1568444) b!3872080))

(declare-fun m!4428999 () Bool)

(assert (=> b!3872078 m!4428999))

(declare-fun m!4429001 () Bool)

(assert (=> b!3872079 m!4429001))

(assert (=> b!3872079 m!4428399))

(declare-fun m!4429003 () Bool)

(assert (=> b!3872080 m!4429003))

(declare-fun m!4429005 () Bool)

(assert (=> d!1146771 m!4429005))

(declare-fun m!4429007 () Bool)

(assert (=> d!1146771 m!4429007))

(assert (=> b!3871679 d!1146771))

(declare-fun b!3872082 () Bool)

(declare-fun e!2395013 () List!41254)

(assert (=> b!3872082 (= e!2395013 (Cons!41130 (h!46550 lt!1348034) (++!10518 (t!314513 lt!1348034) suffix!1176)))))

(declare-fun b!3872083 () Bool)

(declare-fun res!1568445 () Bool)

(declare-fun e!2395014 () Bool)

(assert (=> b!3872083 (=> (not res!1568445) (not e!2395014))))

(declare-fun lt!1348215 () List!41254)

(assert (=> b!3872083 (= res!1568445 (= (size!30914 lt!1348215) (+ (size!30914 lt!1348034) (size!30914 suffix!1176))))))

(declare-fun b!3872081 () Bool)

(assert (=> b!3872081 (= e!2395013 suffix!1176)))

(declare-fun b!3872084 () Bool)

(assert (=> b!3872084 (= e!2395014 (or (not (= suffix!1176 Nil!41130)) (= lt!1348215 lt!1348034)))))

(declare-fun d!1146773 () Bool)

(assert (=> d!1146773 e!2395014))

(declare-fun res!1568446 () Bool)

(assert (=> d!1146773 (=> (not res!1568446) (not e!2395014))))

(assert (=> d!1146773 (= res!1568446 (= (content!6145 lt!1348215) ((_ map or) (content!6145 lt!1348034) (content!6145 suffix!1176))))))

(assert (=> d!1146773 (= lt!1348215 e!2395013)))

(declare-fun c!673813 () Bool)

(assert (=> d!1146773 (= c!673813 ((_ is Nil!41130) lt!1348034))))

(assert (=> d!1146773 (= (++!10518 lt!1348034 suffix!1176) lt!1348215)))

(assert (= (and d!1146773 c!673813) b!3872081))

(assert (= (and d!1146773 (not c!673813)) b!3872082))

(assert (= (and d!1146773 res!1568446) b!3872083))

(assert (= (and b!3872083 res!1568445) b!3872084))

(declare-fun m!4429009 () Bool)

(assert (=> b!3872082 m!4429009))

(declare-fun m!4429011 () Bool)

(assert (=> b!3872083 m!4429011))

(declare-fun m!4429013 () Bool)

(assert (=> b!3872083 m!4429013))

(assert (=> b!3872083 m!4428399))

(declare-fun m!4429015 () Bool)

(assert (=> d!1146773 m!4429015))

(declare-fun m!4429017 () Bool)

(assert (=> d!1146773 m!4429017))

(assert (=> d!1146773 m!4428753))

(assert (=> b!3871700 d!1146773))

(declare-fun d!1146775 () Bool)

(assert (=> d!1146775 (and (= lt!1348044 lt!1348044) (= (_2!23312 (v!39095 lt!1348027)) (_2!23312 lt!1348013)))))

(declare-fun lt!1348222 () Unit!58983)

(declare-fun choose!22897 (List!41254 List!41254 List!41254 List!41254) Unit!58983)

(assert (=> d!1146775 (= lt!1348222 (choose!22897 lt!1348044 (_2!23312 (v!39095 lt!1348027)) lt!1348044 (_2!23312 lt!1348013)))))

(assert (=> d!1146775 (= (++!10518 lt!1348044 (_2!23312 (v!39095 lt!1348027))) (++!10518 lt!1348044 (_2!23312 lt!1348013)))))

(assert (=> d!1146775 (= (lemmaConcatSameAndSameSizesThenSameLists!464 lt!1348044 (_2!23312 (v!39095 lt!1348027)) lt!1348044 (_2!23312 lt!1348013)) lt!1348222)))

(declare-fun bs!583497 () Bool)

(assert (= bs!583497 d!1146775))

(declare-fun m!4429027 () Bool)

(assert (=> bs!583497 m!4429027))

(assert (=> bs!583497 m!4428353))

(declare-fun m!4429033 () Bool)

(assert (=> bs!583497 m!4429033))

(assert (=> b!3871683 d!1146775))

(declare-fun d!1146781 () Bool)

(assert (=> d!1146781 (not (= (lexList!1737 thiss!20629 rules!2768 (_2!23312 lt!1348013)) (tuple2!40355 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1348249 () Unit!58983)

(declare-fun choose!22898 (LexerInterface!5969 List!41256 List!41254 List!41254 List!41257 List!41254) Unit!58983)

(assert (=> d!1146781 (= lt!1348249 (choose!22898 thiss!20629 rules!2768 suffix!1176 (_2!23312 lt!1348013) suffixTokens!72 suffixResult!91))))

(assert (=> d!1146781 (not (isEmpty!24404 rules!2768))))

(assert (=> d!1146781 (= (lemmaLexWithSmallerInputCannotProduceSameResults!40 thiss!20629 rules!2768 suffix!1176 (_2!23312 lt!1348013) suffixTokens!72 suffixResult!91) lt!1348249)))

(declare-fun bs!583506 () Bool)

(assert (= bs!583506 d!1146781))

(assert (=> bs!583506 m!4428397))

(declare-fun m!4429111 () Bool)

(assert (=> bs!583506 m!4429111))

(assert (=> bs!583506 m!4428419))

(assert (=> b!3871683 d!1146781))

(declare-fun d!1146819 () Bool)

(declare-fun res!1568470 () Bool)

(declare-fun e!2395056 () Bool)

(assert (=> d!1146819 (=> (not res!1568470) (not e!2395056))))

(declare-fun rulesValid!2472 (LexerInterface!5969 List!41256) Bool)

(assert (=> d!1146819 (= res!1568470 (rulesValid!2472 thiss!20629 rules!2768))))

(assert (=> d!1146819 (= (rulesInvariant!5312 thiss!20629 rules!2768) e!2395056)))

(declare-fun b!3872136 () Bool)

(declare-datatypes ((List!41259 0))(
  ( (Nil!41135) (Cons!41135 (h!46555 String!46768) (t!314614 List!41259)) )
))
(declare-fun noDuplicateTag!2473 (LexerInterface!5969 List!41256 List!41259) Bool)

(assert (=> b!3872136 (= e!2395056 (noDuplicateTag!2473 thiss!20629 rules!2768 Nil!41135))))

(assert (= (and d!1146819 res!1568470) b!3872136))

(declare-fun m!4429113 () Bool)

(assert (=> d!1146819 m!4429113))

(declare-fun m!4429115 () Bool)

(assert (=> b!3872136 m!4429115))

(assert (=> b!3871704 d!1146819))

(declare-fun d!1146821 () Bool)

(assert (=> d!1146821 (= (isEmpty!24404 rules!2768) ((_ is Nil!41132) rules!2768))))

(assert (=> b!3871703 d!1146821))

(declare-fun b!3872142 () Bool)

(declare-fun e!2395059 () List!41254)

(assert (=> b!3872142 (= e!2395059 (Cons!41130 (h!46550 lt!1348044) (++!10518 (t!314513 lt!1348044) lt!1348020)))))

(declare-fun b!3872144 () Bool)

(declare-fun res!1568471 () Bool)

(declare-fun e!2395060 () Bool)

(assert (=> b!3872144 (=> (not res!1568471) (not e!2395060))))

(declare-fun lt!1348250 () List!41254)

(assert (=> b!3872144 (= res!1568471 (= (size!30914 lt!1348250) (+ (size!30914 lt!1348044) (size!30914 lt!1348020))))))

(declare-fun b!3872141 () Bool)

(assert (=> b!3872141 (= e!2395059 lt!1348020)))

(declare-fun b!3872145 () Bool)

(assert (=> b!3872145 (= e!2395060 (or (not (= lt!1348020 Nil!41130)) (= lt!1348250 lt!1348044)))))

(declare-fun d!1146823 () Bool)

(assert (=> d!1146823 e!2395060))

(declare-fun res!1568472 () Bool)

(assert (=> d!1146823 (=> (not res!1568472) (not e!2395060))))

(assert (=> d!1146823 (= res!1568472 (= (content!6145 lt!1348250) ((_ map or) (content!6145 lt!1348044) (content!6145 lt!1348020))))))

(assert (=> d!1146823 (= lt!1348250 e!2395059)))

(declare-fun c!673821 () Bool)

(assert (=> d!1146823 (= c!673821 ((_ is Nil!41130) lt!1348044))))

(assert (=> d!1146823 (= (++!10518 lt!1348044 lt!1348020) lt!1348250)))

(assert (= (and d!1146823 c!673821) b!3872141))

(assert (= (and d!1146823 (not c!673821)) b!3872142))

(assert (= (and d!1146823 res!1568472) b!3872144))

(assert (= (and b!3872144 res!1568471) b!3872145))

(declare-fun m!4429125 () Bool)

(assert (=> b!3872142 m!4429125))

(declare-fun m!4429127 () Bool)

(assert (=> b!3872144 m!4429127))

(assert (=> b!3872144 m!4428347))

(assert (=> b!3872144 m!4428791))

(declare-fun m!4429129 () Bool)

(assert (=> d!1146823 m!4429129))

(assert (=> d!1146823 m!4428783))

(assert (=> d!1146823 m!4428795))

(assert (=> b!3871682 d!1146823))

(declare-fun d!1146825 () Bool)

(declare-fun lt!1348253 () List!41254)

(assert (=> d!1146825 (= (++!10518 lt!1348044 lt!1348253) prefix!426)))

(declare-fun e!2395081 () List!41254)

(assert (=> d!1146825 (= lt!1348253 e!2395081)))

(declare-fun c!673824 () Bool)

(assert (=> d!1146825 (= c!673824 ((_ is Cons!41130) lt!1348044))))

(assert (=> d!1146825 (>= (size!30914 prefix!426) (size!30914 lt!1348044))))

(assert (=> d!1146825 (= (getSuffix!1934 prefix!426 lt!1348044) lt!1348253)))

(declare-fun b!3872177 () Bool)

(assert (=> b!3872177 (= e!2395081 (getSuffix!1934 (tail!5917 prefix!426) (t!314513 lt!1348044)))))

(declare-fun b!3872178 () Bool)

(assert (=> b!3872178 (= e!2395081 prefix!426)))

(assert (= (and d!1146825 c!673824) b!3872177))

(assert (= (and d!1146825 (not c!673824)) b!3872178))

(declare-fun m!4429131 () Bool)

(assert (=> d!1146825 m!4429131))

(assert (=> d!1146825 m!4428425))

(assert (=> d!1146825 m!4428347))

(declare-fun m!4429133 () Bool)

(assert (=> b!3872177 m!4429133))

(assert (=> b!3872177 m!4429133))

(declare-fun m!4429135 () Bool)

(assert (=> b!3872177 m!4429135))

(assert (=> b!3871682 d!1146825))

(declare-fun d!1146827 () Bool)

(declare-fun res!1568473 () Bool)

(declare-fun e!2395082 () Bool)

(assert (=> d!1146827 (=> (not res!1568473) (not e!2395082))))

(assert (=> d!1146827 (= res!1568473 (not (isEmpty!24403 (originalCharacters!6980 (h!46553 suffixTokens!72)))))))

(assert (=> d!1146827 (= (inv!55291 (h!46553 suffixTokens!72)) e!2395082)))

(declare-fun b!3872179 () Bool)

(declare-fun res!1568474 () Bool)

(assert (=> b!3872179 (=> (not res!1568474) (not e!2395082))))

(assert (=> b!3872179 (= res!1568474 (= (originalCharacters!6980 (h!46553 suffixTokens!72)) (list!15300 (dynLambda!17697 (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) (value!202464 (h!46553 suffixTokens!72))))))))

(declare-fun b!3872180 () Bool)

(assert (=> b!3872180 (= e!2395082 (= (size!30913 (h!46553 suffixTokens!72)) (size!30914 (originalCharacters!6980 (h!46553 suffixTokens!72)))))))

(assert (= (and d!1146827 res!1568473) b!3872179))

(assert (= (and b!3872179 res!1568474) b!3872180))

(declare-fun b_lambda!113089 () Bool)

(assert (=> (not b_lambda!113089) (not b!3872179)))

(declare-fun t!314564 () Bool)

(declare-fun tb!224607 () Bool)

(assert (=> (and b!3871672 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72))))) t!314564) tb!224607))

(declare-fun b!3872191 () Bool)

(declare-fun e!2395087 () Bool)

(declare-fun tp!1173968 () Bool)

(assert (=> b!3872191 (= e!2395087 (and (inv!55294 (c!673726 (dynLambda!17697 (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) (value!202464 (h!46553 suffixTokens!72))))) tp!1173968))))

(declare-fun result!273574 () Bool)

(assert (=> tb!224607 (= result!273574 (and (inv!55295 (dynLambda!17697 (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) (value!202464 (h!46553 suffixTokens!72)))) e!2395087))))

(assert (= tb!224607 b!3872191))

(declare-fun m!4429141 () Bool)

(assert (=> b!3872191 m!4429141))

(declare-fun m!4429143 () Bool)

(assert (=> tb!224607 m!4429143))

(assert (=> b!3872179 t!314564))

(declare-fun b_and!290261 () Bool)

(assert (= b_and!290235 (and (=> t!314564 result!273574) b_and!290261)))

(declare-fun tb!224609 () Bool)

(declare-fun t!314566 () Bool)

(assert (=> (and b!3871677 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72))))) t!314566) tb!224609))

(declare-fun result!273576 () Bool)

(assert (= result!273576 result!273574))

(assert (=> b!3872179 t!314566))

(declare-fun b_and!290263 () Bool)

(assert (= b_and!290237 (and (=> t!314566 result!273576) b_and!290263)))

(declare-fun t!314568 () Bool)

(declare-fun tb!224611 () Bool)

(assert (=> (and b!3871668 (= (toChars!8667 (transformation!6380 (h!46552 rules!2768))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72))))) t!314568) tb!224611))

(declare-fun result!273578 () Bool)

(assert (= result!273578 result!273574))

(assert (=> b!3872179 t!314568))

(declare-fun b_and!290267 () Bool)

(assert (= b_and!290239 (and (=> t!314568 result!273578) b_and!290267)))

(declare-fun m!4429145 () Bool)

(assert (=> d!1146827 m!4429145))

(declare-fun m!4429147 () Bool)

(assert (=> b!3872179 m!4429147))

(assert (=> b!3872179 m!4429147))

(declare-fun m!4429149 () Bool)

(assert (=> b!3872179 m!4429149))

(declare-fun m!4429151 () Bool)

(assert (=> b!3872180 m!4429151))

(assert (=> b!3871681 d!1146827))

(declare-fun d!1146829 () Bool)

(assert (=> d!1146829 (isPrefix!3479 lt!1348044 (++!10518 lt!1348044 (_2!23312 (v!39095 lt!1348027))))))

(declare-fun lt!1348254 () Unit!58983)

(assert (=> d!1146829 (= lt!1348254 (choose!22893 lt!1348044 (_2!23312 (v!39095 lt!1348027))))))

(assert (=> d!1146829 (= (lemmaConcatTwoListThenFirstIsPrefix!2342 lt!1348044 (_2!23312 (v!39095 lt!1348027))) lt!1348254)))

(declare-fun bs!583507 () Bool)

(assert (= bs!583507 d!1146829))

(assert (=> bs!583507 m!4428353))

(assert (=> bs!583507 m!4428353))

(declare-fun m!4429153 () Bool)

(assert (=> bs!583507 m!4429153))

(declare-fun m!4429155 () Bool)

(assert (=> bs!583507 m!4429155))

(assert (=> b!3871675 d!1146829))

(declare-fun d!1146831 () Bool)

(declare-fun lt!1348255 () List!41254)

(assert (=> d!1146831 (= (++!10518 lt!1348044 lt!1348255) lt!1348035)))

(declare-fun e!2395094 () List!41254)

(assert (=> d!1146831 (= lt!1348255 e!2395094)))

(declare-fun c!673825 () Bool)

(assert (=> d!1146831 (= c!673825 ((_ is Cons!41130) lt!1348044))))

(assert (=> d!1146831 (>= (size!30914 lt!1348035) (size!30914 lt!1348044))))

(assert (=> d!1146831 (= (getSuffix!1934 lt!1348035 lt!1348044) lt!1348255)))

(declare-fun b!3872196 () Bool)

(assert (=> b!3872196 (= e!2395094 (getSuffix!1934 (tail!5917 lt!1348035) (t!314513 lt!1348044)))))

(declare-fun b!3872197 () Bool)

(assert (=> b!3872197 (= e!2395094 lt!1348035)))

(assert (= (and d!1146831 c!673825) b!3872196))

(assert (= (and d!1146831 (not c!673825)) b!3872197))

(declare-fun m!4429163 () Bool)

(assert (=> d!1146831 m!4429163))

(assert (=> d!1146831 m!4428441))

(assert (=> d!1146831 m!4428347))

(declare-fun m!4429167 () Bool)

(assert (=> b!3872196 m!4429167))

(assert (=> b!3872196 m!4429167))

(declare-fun m!4429169 () Bool)

(assert (=> b!3872196 m!4429169))

(assert (=> b!3871675 d!1146831))

(declare-fun d!1146833 () Bool)

(declare-fun dynLambda!17698 (Int BalanceConc!24776) TokenValue!6610)

(assert (=> d!1146833 (= (apply!9623 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) (seqFromList!4651 lt!1348044)) (dynLambda!17698 (toValue!8808 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027))))) (seqFromList!4651 lt!1348044)))))

(declare-fun b_lambda!113095 () Bool)

(assert (=> (not b_lambda!113095) (not d!1146833)))

(declare-fun t!314578 () Bool)

(declare-fun tb!224621 () Bool)

(assert (=> (and b!3871672 (= (toValue!8808 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) (toValue!8808 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314578) tb!224621))

(declare-fun result!273588 () Bool)

(assert (=> tb!224621 (= result!273588 (inv!21 (dynLambda!17698 (toValue!8808 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027))))) (seqFromList!4651 lt!1348044))))))

(declare-fun m!4429171 () Bool)

(assert (=> tb!224621 m!4429171))

(assert (=> d!1146833 t!314578))

(declare-fun b_and!290271 () Bool)

(assert (= b_and!290211 (and (=> t!314578 result!273588) b_and!290271)))

(declare-fun t!314580 () Bool)

(declare-fun tb!224623 () Bool)

(assert (=> (and b!3871677 (= (toValue!8808 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) (toValue!8808 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314580) tb!224623))

(declare-fun result!273592 () Bool)

(assert (= result!273592 result!273588))

(assert (=> d!1146833 t!314580))

(declare-fun b_and!290273 () Bool)

(assert (= b_and!290215 (and (=> t!314580 result!273592) b_and!290273)))

(declare-fun tb!224625 () Bool)

(declare-fun t!314582 () Bool)

(assert (=> (and b!3871668 (= (toValue!8808 (transformation!6380 (h!46552 rules!2768))) (toValue!8808 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314582) tb!224625))

(declare-fun result!273594 () Bool)

(assert (= result!273594 result!273588))

(assert (=> d!1146833 t!314582))

(declare-fun b_and!290275 () Bool)

(assert (= b_and!290219 (and (=> t!314582 result!273594) b_and!290275)))

(assert (=> d!1146833 m!4428365))

(declare-fun m!4429173 () Bool)

(assert (=> d!1146833 m!4429173))

(assert (=> b!3871675 d!1146833))

(declare-fun d!1146835 () Bool)

(assert (=> d!1146835 (= (size!30913 (_1!23312 (v!39095 lt!1348027))) (size!30914 (originalCharacters!6980 (_1!23312 (v!39095 lt!1348027)))))))

(declare-fun Unit!58995 () Unit!58983)

(assert (=> d!1146835 (= (lemmaCharactersSize!1041 (_1!23312 (v!39095 lt!1348027))) Unit!58995)))

(declare-fun bs!583508 () Bool)

(assert (= bs!583508 d!1146835))

(assert (=> bs!583508 m!4428459))

(assert (=> b!3871675 d!1146835))

(declare-fun b!3872203 () Bool)

(declare-fun e!2395098 () Bool)

(assert (=> b!3872203 (= e!2395098 (>= (size!30914 lt!1348029) (size!30914 lt!1348044)))))

(declare-fun b!3872201 () Bool)

(declare-fun res!1568475 () Bool)

(declare-fun e!2395100 () Bool)

(assert (=> b!3872201 (=> (not res!1568475) (not e!2395100))))

(assert (=> b!3872201 (= res!1568475 (= (head!8200 lt!1348044) (head!8200 lt!1348029)))))

(declare-fun b!3872200 () Bool)

(declare-fun e!2395099 () Bool)

(assert (=> b!3872200 (= e!2395099 e!2395100)))

(declare-fun res!1568478 () Bool)

(assert (=> b!3872200 (=> (not res!1568478) (not e!2395100))))

(assert (=> b!3872200 (= res!1568478 (not ((_ is Nil!41130) lt!1348029)))))

(declare-fun d!1146837 () Bool)

(assert (=> d!1146837 e!2395098))

(declare-fun res!1568477 () Bool)

(assert (=> d!1146837 (=> res!1568477 e!2395098)))

(declare-fun lt!1348256 () Bool)

(assert (=> d!1146837 (= res!1568477 (not lt!1348256))))

(assert (=> d!1146837 (= lt!1348256 e!2395099)))

(declare-fun res!1568476 () Bool)

(assert (=> d!1146837 (=> res!1568476 e!2395099)))

(assert (=> d!1146837 (= res!1568476 ((_ is Nil!41130) lt!1348044))))

(assert (=> d!1146837 (= (isPrefix!3479 lt!1348044 lt!1348029) lt!1348256)))

(declare-fun b!3872202 () Bool)

(assert (=> b!3872202 (= e!2395100 (isPrefix!3479 (tail!5917 lt!1348044) (tail!5917 lt!1348029)))))

(assert (= (and d!1146837 (not res!1568476)) b!3872200))

(assert (= (and b!3872200 res!1568478) b!3872201))

(assert (= (and b!3872201 res!1568475) b!3872202))

(assert (= (and d!1146837 (not res!1568477)) b!3872203))

(declare-fun m!4429175 () Bool)

(assert (=> b!3872203 m!4429175))

(assert (=> b!3872203 m!4428347))

(assert (=> b!3872201 m!4428761))

(declare-fun m!4429177 () Bool)

(assert (=> b!3872201 m!4429177))

(assert (=> b!3872202 m!4428765))

(declare-fun m!4429179 () Bool)

(assert (=> b!3872202 m!4429179))

(assert (=> b!3872202 m!4428765))

(assert (=> b!3872202 m!4429179))

(declare-fun m!4429181 () Bool)

(assert (=> b!3872202 m!4429181))

(assert (=> b!3871675 d!1146837))

(declare-fun d!1146839 () Bool)

(assert (=> d!1146839 (= (_2!23312 (v!39095 lt!1348027)) lt!1348045)))

(declare-fun lt!1348257 () Unit!58983)

(assert (=> d!1146839 (= lt!1348257 (choose!22892 lt!1348044 (_2!23312 (v!39095 lt!1348027)) lt!1348044 lt!1348045 lt!1348035))))

(assert (=> d!1146839 (isPrefix!3479 lt!1348044 lt!1348035)))

(assert (=> d!1146839 (= (lemmaSamePrefixThenSameSuffix!1700 lt!1348044 (_2!23312 (v!39095 lt!1348027)) lt!1348044 lt!1348045 lt!1348035) lt!1348257)))

(declare-fun bs!583509 () Bool)

(assert (= bs!583509 d!1146839))

(declare-fun m!4429183 () Bool)

(assert (=> bs!583509 m!4429183))

(assert (=> bs!583509 m!4428757))

(assert (=> b!3871675 d!1146839))

(declare-fun d!1146841 () Bool)

(declare-fun lt!1348260 () BalanceConc!24776)

(assert (=> d!1146841 (= (list!15300 lt!1348260) (originalCharacters!6980 (_1!23312 (v!39095 lt!1348027))))))

(assert (=> d!1146841 (= lt!1348260 (dynLambda!17697 (toChars!8667 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027))))) (value!202464 (_1!23312 (v!39095 lt!1348027)))))))

(assert (=> d!1146841 (= (charsOf!4208 (_1!23312 (v!39095 lt!1348027))) lt!1348260)))

(declare-fun b_lambda!113097 () Bool)

(assert (=> (not b_lambda!113097) (not d!1146841)))

(declare-fun tb!224627 () Bool)

(declare-fun t!314584 () Bool)

(assert (=> (and b!3871672 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) (toChars!8667 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314584) tb!224627))

(declare-fun b!3872204 () Bool)

(declare-fun e!2395101 () Bool)

(declare-fun tp!1173974 () Bool)

(assert (=> b!3872204 (= e!2395101 (and (inv!55294 (c!673726 (dynLambda!17697 (toChars!8667 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027))))) (value!202464 (_1!23312 (v!39095 lt!1348027)))))) tp!1173974))))

(declare-fun result!273596 () Bool)

(assert (=> tb!224627 (= result!273596 (and (inv!55295 (dynLambda!17697 (toChars!8667 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027))))) (value!202464 (_1!23312 (v!39095 lt!1348027))))) e!2395101))))

(assert (= tb!224627 b!3872204))

(declare-fun m!4429185 () Bool)

(assert (=> b!3872204 m!4429185))

(declare-fun m!4429187 () Bool)

(assert (=> tb!224627 m!4429187))

(assert (=> d!1146841 t!314584))

(declare-fun b_and!290277 () Bool)

(assert (= b_and!290261 (and (=> t!314584 result!273596) b_and!290277)))

(declare-fun t!314586 () Bool)

(declare-fun tb!224629 () Bool)

(assert (=> (and b!3871677 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) (toChars!8667 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314586) tb!224629))

(declare-fun result!273598 () Bool)

(assert (= result!273598 result!273596))

(assert (=> d!1146841 t!314586))

(declare-fun b_and!290279 () Bool)

(assert (= b_and!290263 (and (=> t!314586 result!273598) b_and!290279)))

(declare-fun tb!224631 () Bool)

(declare-fun t!314588 () Bool)

(assert (=> (and b!3871668 (= (toChars!8667 (transformation!6380 (h!46552 rules!2768))) (toChars!8667 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314588) tb!224631))

(declare-fun result!273600 () Bool)

(assert (= result!273600 result!273596))

(assert (=> d!1146841 t!314588))

(declare-fun b_and!290281 () Bool)

(assert (= b_and!290267 (and (=> t!314588 result!273600) b_and!290281)))

(declare-fun m!4429189 () Bool)

(assert (=> d!1146841 m!4429189))

(declare-fun m!4429191 () Bool)

(assert (=> d!1146841 m!4429191))

(assert (=> b!3871675 d!1146841))

(declare-fun b!3872206 () Bool)

(declare-fun e!2395104 () tuple2!40354)

(assert (=> b!3872206 (= e!2395104 (tuple2!40355 Nil!41133 (_2!23312 (v!39095 lt!1348027))))))

(declare-fun b!3872207 () Bool)

(declare-fun lt!1348263 () Option!8798)

(declare-fun lt!1348261 () tuple2!40354)

(assert (=> b!3872207 (= e!2395104 (tuple2!40355 (Cons!41133 (_1!23312 (v!39095 lt!1348263)) (_1!23311 lt!1348261)) (_2!23311 lt!1348261)))))

(assert (=> b!3872207 (= lt!1348261 (lexList!1737 thiss!20629 rules!2768 (_2!23312 (v!39095 lt!1348263))))))

(declare-fun b!3872208 () Bool)

(declare-fun e!2395103 () Bool)

(declare-fun e!2395102 () Bool)

(assert (=> b!3872208 (= e!2395103 e!2395102)))

(declare-fun res!1568479 () Bool)

(declare-fun lt!1348262 () tuple2!40354)

(assert (=> b!3872208 (= res!1568479 (< (size!30914 (_2!23311 lt!1348262)) (size!30914 (_2!23312 (v!39095 lt!1348027)))))))

(assert (=> b!3872208 (=> (not res!1568479) (not e!2395102))))

(declare-fun b!3872209 () Bool)

(assert (=> b!3872209 (= e!2395102 (not (isEmpty!24402 (_1!23311 lt!1348262))))))

(declare-fun b!3872205 () Bool)

(assert (=> b!3872205 (= e!2395103 (= (_2!23311 lt!1348262) (_2!23312 (v!39095 lt!1348027))))))

(declare-fun d!1146843 () Bool)

(assert (=> d!1146843 e!2395103))

(declare-fun c!673827 () Bool)

(assert (=> d!1146843 (= c!673827 (> (size!30916 (_1!23311 lt!1348262)) 0))))

(assert (=> d!1146843 (= lt!1348262 e!2395104)))

(declare-fun c!673826 () Bool)

(assert (=> d!1146843 (= c!673826 ((_ is Some!8797) lt!1348263))))

(assert (=> d!1146843 (= lt!1348263 (maxPrefix!3273 thiss!20629 rules!2768 (_2!23312 (v!39095 lt!1348027))))))

(assert (=> d!1146843 (= (lexList!1737 thiss!20629 rules!2768 (_2!23312 (v!39095 lt!1348027))) lt!1348262)))

(assert (= (and d!1146843 c!673826) b!3872207))

(assert (= (and d!1146843 (not c!673826)) b!3872206))

(assert (= (and d!1146843 c!673827) b!3872208))

(assert (= (and d!1146843 (not c!673827)) b!3872205))

(assert (= (and b!3872208 res!1568479) b!3872209))

(declare-fun m!4429193 () Bool)

(assert (=> b!3872207 m!4429193))

(declare-fun m!4429195 () Bool)

(assert (=> b!3872208 m!4429195))

(assert (=> b!3872208 m!4428401))

(declare-fun m!4429197 () Bool)

(assert (=> b!3872209 m!4429197))

(declare-fun m!4429199 () Bool)

(assert (=> d!1146843 m!4429199))

(declare-fun m!4429201 () Bool)

(assert (=> d!1146843 m!4429201))

(assert (=> b!3871675 d!1146843))

(declare-fun d!1146845 () Bool)

(assert (=> d!1146845 (ruleValid!2332 thiss!20629 (rule!9268 (_1!23312 (v!39095 lt!1348027))))))

(declare-fun lt!1348266 () Unit!58983)

(declare-fun choose!22902 (LexerInterface!5969 Rule!12560 List!41256) Unit!58983)

(assert (=> d!1146845 (= lt!1348266 (choose!22902 thiss!20629 (rule!9268 (_1!23312 (v!39095 lt!1348027))) rules!2768))))

(assert (=> d!1146845 (contains!8289 rules!2768 (rule!9268 (_1!23312 (v!39095 lt!1348027))))))

(assert (=> d!1146845 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1412 thiss!20629 (rule!9268 (_1!23312 (v!39095 lt!1348027))) rules!2768) lt!1348266)))

(declare-fun bs!583510 () Bool)

(assert (= bs!583510 d!1146845))

(assert (=> bs!583510 m!4428357))

(declare-fun m!4429203 () Bool)

(assert (=> bs!583510 m!4429203))

(declare-fun m!4429205 () Bool)

(assert (=> bs!583510 m!4429205))

(assert (=> b!3871675 d!1146845))

(declare-fun d!1146847 () Bool)

(declare-fun lt!1348267 () Int)

(assert (=> d!1146847 (>= lt!1348267 0)))

(declare-fun e!2395105 () Int)

(assert (=> d!1146847 (= lt!1348267 e!2395105)))

(declare-fun c!673828 () Bool)

(assert (=> d!1146847 (= c!673828 ((_ is Nil!41130) lt!1348044))))

(assert (=> d!1146847 (= (size!30914 lt!1348044) lt!1348267)))

(declare-fun b!3872210 () Bool)

(assert (=> b!3872210 (= e!2395105 0)))

(declare-fun b!3872211 () Bool)

(assert (=> b!3872211 (= e!2395105 (+ 1 (size!30914 (t!314513 lt!1348044))))))

(assert (= (and d!1146847 c!673828) b!3872210))

(assert (= (and d!1146847 (not c!673828)) b!3872211))

(declare-fun m!4429207 () Bool)

(assert (=> b!3872211 m!4429207))

(assert (=> b!3871675 d!1146847))

(declare-fun d!1146849 () Bool)

(declare-fun res!1568484 () Bool)

(declare-fun e!2395108 () Bool)

(assert (=> d!1146849 (=> (not res!1568484) (not e!2395108))))

(declare-fun validRegex!5136 (Regex!11285) Bool)

(assert (=> d!1146849 (= res!1568484 (validRegex!5136 (regex!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027))))))))

(assert (=> d!1146849 (= (ruleValid!2332 thiss!20629 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) e!2395108)))

(declare-fun b!3872216 () Bool)

(declare-fun res!1568485 () Bool)

(assert (=> b!3872216 (=> (not res!1568485) (not e!2395108))))

(declare-fun nullable!3937 (Regex!11285) Bool)

(assert (=> b!3872216 (= res!1568485 (not (nullable!3937 (regex!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))))))

(declare-fun b!3872217 () Bool)

(assert (=> b!3872217 (= e!2395108 (not (= (tag!7240 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) (String!46769 ""))))))

(assert (= (and d!1146849 res!1568484) b!3872216))

(assert (= (and b!3872216 res!1568485) b!3872217))

(declare-fun m!4429209 () Bool)

(assert (=> d!1146849 m!4429209))

(declare-fun m!4429211 () Bool)

(assert (=> b!3872216 m!4429211))

(assert (=> b!3871675 d!1146849))

(declare-fun d!1146851 () Bool)

(declare-fun fromListB!2147 (List!41254) BalanceConc!24776)

(assert (=> d!1146851 (= (seqFromList!4651 lt!1348044) (fromListB!2147 lt!1348044))))

(declare-fun bs!583511 () Bool)

(assert (= bs!583511 d!1146851))

(declare-fun m!4429213 () Bool)

(assert (=> bs!583511 m!4429213))

(assert (=> b!3871675 d!1146851))

(declare-fun d!1146853 () Bool)

(declare-fun list!15302 (Conc!12591) List!41254)

(assert (=> d!1146853 (= (list!15300 (charsOf!4208 (_1!23312 (v!39095 lt!1348027)))) (list!15302 (c!673726 (charsOf!4208 (_1!23312 (v!39095 lt!1348027))))))))

(declare-fun bs!583512 () Bool)

(assert (= bs!583512 d!1146853))

(declare-fun m!4429215 () Bool)

(assert (=> bs!583512 m!4429215))

(assert (=> b!3871675 d!1146853))

(declare-fun b!3872219 () Bool)

(declare-fun e!2395109 () List!41254)

(assert (=> b!3872219 (= e!2395109 (Cons!41130 (h!46550 lt!1348044) (++!10518 (t!314513 lt!1348044) (_2!23312 (v!39095 lt!1348027)))))))

(declare-fun b!3872220 () Bool)

(declare-fun res!1568486 () Bool)

(declare-fun e!2395110 () Bool)

(assert (=> b!3872220 (=> (not res!1568486) (not e!2395110))))

(declare-fun lt!1348268 () List!41254)

(assert (=> b!3872220 (= res!1568486 (= (size!30914 lt!1348268) (+ (size!30914 lt!1348044) (size!30914 (_2!23312 (v!39095 lt!1348027))))))))

(declare-fun b!3872218 () Bool)

(assert (=> b!3872218 (= e!2395109 (_2!23312 (v!39095 lt!1348027)))))

(declare-fun b!3872221 () Bool)

(assert (=> b!3872221 (= e!2395110 (or (not (= (_2!23312 (v!39095 lt!1348027)) Nil!41130)) (= lt!1348268 lt!1348044)))))

(declare-fun d!1146855 () Bool)

(assert (=> d!1146855 e!2395110))

(declare-fun res!1568487 () Bool)

(assert (=> d!1146855 (=> (not res!1568487) (not e!2395110))))

(assert (=> d!1146855 (= res!1568487 (= (content!6145 lt!1348268) ((_ map or) (content!6145 lt!1348044) (content!6145 (_2!23312 (v!39095 lt!1348027))))))))

(assert (=> d!1146855 (= lt!1348268 e!2395109)))

(declare-fun c!673829 () Bool)

(assert (=> d!1146855 (= c!673829 ((_ is Nil!41130) lt!1348044))))

(assert (=> d!1146855 (= (++!10518 lt!1348044 (_2!23312 (v!39095 lt!1348027))) lt!1348268)))

(assert (= (and d!1146855 c!673829) b!3872218))

(assert (= (and d!1146855 (not c!673829)) b!3872219))

(assert (= (and d!1146855 res!1568487) b!3872220))

(assert (= (and b!3872220 res!1568486) b!3872221))

(declare-fun m!4429217 () Bool)

(assert (=> b!3872219 m!4429217))

(declare-fun m!4429219 () Bool)

(assert (=> b!3872220 m!4429219))

(assert (=> b!3872220 m!4428347))

(assert (=> b!3872220 m!4428401))

(declare-fun m!4429221 () Bool)

(assert (=> d!1146855 m!4429221))

(assert (=> d!1146855 m!4428783))

(declare-fun m!4429223 () Bool)

(assert (=> d!1146855 m!4429223))

(assert (=> b!3871675 d!1146855))

(declare-fun d!1146857 () Bool)

(assert (=> d!1146857 (= (inv!55287 (tag!7240 (rule!9268 (h!46553 suffixTokens!72)))) (= (mod (str.len (value!202463 (tag!7240 (rule!9268 (h!46553 suffixTokens!72))))) 2) 0))))

(assert (=> b!3871695 d!1146857))

(declare-fun d!1146859 () Bool)

(declare-fun res!1568490 () Bool)

(declare-fun e!2395113 () Bool)

(assert (=> d!1146859 (=> (not res!1568490) (not e!2395113))))

(declare-fun semiInverseModEq!2737 (Int Int) Bool)

(assert (=> d!1146859 (= res!1568490 (semiInverseModEq!2737 (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) (toValue!8808 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72))))))))

(assert (=> d!1146859 (= (inv!55290 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) e!2395113)))

(declare-fun b!3872224 () Bool)

(declare-fun equivClasses!2636 (Int Int) Bool)

(assert (=> b!3872224 (= e!2395113 (equivClasses!2636 (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) (toValue!8808 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72))))))))

(assert (= (and d!1146859 res!1568490) b!3872224))

(declare-fun m!4429225 () Bool)

(assert (=> d!1146859 m!4429225))

(declare-fun m!4429227 () Bool)

(assert (=> b!3872224 m!4429227))

(assert (=> b!3871695 d!1146859))

(declare-fun b!3872228 () Bool)

(declare-fun e!2395114 () Bool)

(assert (=> b!3872228 (= e!2395114 (>= (size!30914 lt!1348035) (size!30914 prefix!426)))))

(declare-fun b!3872226 () Bool)

(declare-fun res!1568491 () Bool)

(declare-fun e!2395116 () Bool)

(assert (=> b!3872226 (=> (not res!1568491) (not e!2395116))))

(assert (=> b!3872226 (= res!1568491 (= (head!8200 prefix!426) (head!8200 lt!1348035)))))

(declare-fun b!3872225 () Bool)

(declare-fun e!2395115 () Bool)

(assert (=> b!3872225 (= e!2395115 e!2395116)))

(declare-fun res!1568494 () Bool)

(assert (=> b!3872225 (=> (not res!1568494) (not e!2395116))))

(assert (=> b!3872225 (= res!1568494 (not ((_ is Nil!41130) lt!1348035)))))

(declare-fun d!1146861 () Bool)

(assert (=> d!1146861 e!2395114))

(declare-fun res!1568493 () Bool)

(assert (=> d!1146861 (=> res!1568493 e!2395114)))

(declare-fun lt!1348269 () Bool)

(assert (=> d!1146861 (= res!1568493 (not lt!1348269))))

(assert (=> d!1146861 (= lt!1348269 e!2395115)))

(declare-fun res!1568492 () Bool)

(assert (=> d!1146861 (=> res!1568492 e!2395115)))

(assert (=> d!1146861 (= res!1568492 ((_ is Nil!41130) prefix!426))))

(assert (=> d!1146861 (= (isPrefix!3479 prefix!426 lt!1348035) lt!1348269)))

(declare-fun b!3872227 () Bool)

(assert (=> b!3872227 (= e!2395116 (isPrefix!3479 (tail!5917 prefix!426) (tail!5917 lt!1348035)))))

(assert (= (and d!1146861 (not res!1568492)) b!3872225))

(assert (= (and b!3872225 res!1568494) b!3872226))

(assert (= (and b!3872226 res!1568491) b!3872227))

(assert (= (and d!1146861 (not res!1568493)) b!3872228))

(assert (=> b!3872228 m!4428441))

(assert (=> b!3872228 m!4428425))

(declare-fun m!4429229 () Bool)

(assert (=> b!3872226 m!4429229))

(declare-fun m!4429231 () Bool)

(assert (=> b!3872226 m!4429231))

(assert (=> b!3872227 m!4429133))

(assert (=> b!3872227 m!4429167))

(assert (=> b!3872227 m!4429133))

(assert (=> b!3872227 m!4429167))

(declare-fun m!4429233 () Bool)

(assert (=> b!3872227 m!4429233))

(assert (=> b!3871674 d!1146861))

(declare-fun d!1146863 () Bool)

(assert (=> d!1146863 (isPrefix!3479 prefix!426 (++!10518 prefix!426 suffix!1176))))

(declare-fun lt!1348270 () Unit!58983)

(assert (=> d!1146863 (= lt!1348270 (choose!22893 prefix!426 suffix!1176))))

(assert (=> d!1146863 (= (lemmaConcatTwoListThenFirstIsPrefix!2342 prefix!426 suffix!1176) lt!1348270)))

(declare-fun bs!583513 () Bool)

(assert (= bs!583513 d!1146863))

(assert (=> bs!583513 m!4428325))

(assert (=> bs!583513 m!4428325))

(declare-fun m!4429235 () Bool)

(assert (=> bs!583513 m!4429235))

(declare-fun m!4429237 () Bool)

(assert (=> bs!583513 m!4429237))

(assert (=> b!3871674 d!1146863))

(declare-fun d!1146865 () Bool)

(declare-fun lt!1348271 () Int)

(assert (=> d!1146865 (>= lt!1348271 0)))

(declare-fun e!2395117 () Int)

(assert (=> d!1146865 (= lt!1348271 e!2395117)))

(declare-fun c!673830 () Bool)

(assert (=> d!1146865 (= c!673830 ((_ is Nil!41130) prefix!426))))

(assert (=> d!1146865 (= (size!30914 prefix!426) lt!1348271)))

(declare-fun b!3872229 () Bool)

(assert (=> b!3872229 (= e!2395117 0)))

(declare-fun b!3872230 () Bool)

(assert (=> b!3872230 (= e!2395117 (+ 1 (size!30914 (t!314513 prefix!426))))))

(assert (= (and d!1146865 c!673830) b!3872229))

(assert (= (and d!1146865 (not c!673830)) b!3872230))

(declare-fun m!4429239 () Bool)

(assert (=> b!3872230 m!4429239))

(assert (=> b!3871674 d!1146865))

(declare-fun b!3872234 () Bool)

(declare-fun e!2395118 () Bool)

(assert (=> b!3872234 (= e!2395118 (>= (size!30914 prefix!426) (size!30914 lt!1348044)))))

(declare-fun b!3872232 () Bool)

(declare-fun res!1568495 () Bool)

(declare-fun e!2395120 () Bool)

(assert (=> b!3872232 (=> (not res!1568495) (not e!2395120))))

(assert (=> b!3872232 (= res!1568495 (= (head!8200 lt!1348044) (head!8200 prefix!426)))))

(declare-fun b!3872231 () Bool)

(declare-fun e!2395119 () Bool)

(assert (=> b!3872231 (= e!2395119 e!2395120)))

(declare-fun res!1568498 () Bool)

(assert (=> b!3872231 (=> (not res!1568498) (not e!2395120))))

(assert (=> b!3872231 (= res!1568498 (not ((_ is Nil!41130) prefix!426)))))

(declare-fun d!1146867 () Bool)

(assert (=> d!1146867 e!2395118))

(declare-fun res!1568497 () Bool)

(assert (=> d!1146867 (=> res!1568497 e!2395118)))

(declare-fun lt!1348272 () Bool)

(assert (=> d!1146867 (= res!1568497 (not lt!1348272))))

(assert (=> d!1146867 (= lt!1348272 e!2395119)))

(declare-fun res!1568496 () Bool)

(assert (=> d!1146867 (=> res!1568496 e!2395119)))

(assert (=> d!1146867 (= res!1568496 ((_ is Nil!41130) lt!1348044))))

(assert (=> d!1146867 (= (isPrefix!3479 lt!1348044 prefix!426) lt!1348272)))

(declare-fun b!3872233 () Bool)

(assert (=> b!3872233 (= e!2395120 (isPrefix!3479 (tail!5917 lt!1348044) (tail!5917 prefix!426)))))

(assert (= (and d!1146867 (not res!1568496)) b!3872231))

(assert (= (and b!3872231 res!1568498) b!3872232))

(assert (= (and b!3872232 res!1568495) b!3872233))

(assert (= (and d!1146867 (not res!1568497)) b!3872234))

(assert (=> b!3872234 m!4428425))

(assert (=> b!3872234 m!4428347))

(assert (=> b!3872232 m!4428761))

(assert (=> b!3872232 m!4429229))

(assert (=> b!3872233 m!4428765))

(assert (=> b!3872233 m!4429133))

(assert (=> b!3872233 m!4428765))

(assert (=> b!3872233 m!4429133))

(declare-fun m!4429241 () Bool)

(assert (=> b!3872233 m!4429241))

(assert (=> b!3871674 d!1146867))

(declare-fun d!1146869 () Bool)

(assert (=> d!1146869 (isPrefix!3479 lt!1348044 prefix!426)))

(declare-fun lt!1348275 () Unit!58983)

(declare-fun choose!22903 (List!41254 List!41254 List!41254) Unit!58983)

(assert (=> d!1146869 (= lt!1348275 (choose!22903 prefix!426 lt!1348044 lt!1348035))))

(assert (=> d!1146869 (isPrefix!3479 prefix!426 lt!1348035)))

(assert (=> d!1146869 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!229 prefix!426 lt!1348044 lt!1348035) lt!1348275)))

(declare-fun bs!583514 () Bool)

(assert (= bs!583514 d!1146869))

(assert (=> bs!583514 m!4428431))

(declare-fun m!4429243 () Bool)

(assert (=> bs!583514 m!4429243))

(assert (=> bs!583514 m!4428427))

(assert (=> b!3871674 d!1146869))

(declare-fun d!1146871 () Bool)

(assert (=> d!1146871 (= (inv!55287 (tag!7240 (h!46552 rules!2768))) (= (mod (str.len (value!202463 (tag!7240 (h!46552 rules!2768)))) 2) 0))))

(assert (=> b!3871673 d!1146871))

(declare-fun d!1146873 () Bool)

(declare-fun res!1568499 () Bool)

(declare-fun e!2395121 () Bool)

(assert (=> d!1146873 (=> (not res!1568499) (not e!2395121))))

(assert (=> d!1146873 (= res!1568499 (semiInverseModEq!2737 (toChars!8667 (transformation!6380 (h!46552 rules!2768))) (toValue!8808 (transformation!6380 (h!46552 rules!2768)))))))

(assert (=> d!1146873 (= (inv!55290 (transformation!6380 (h!46552 rules!2768))) e!2395121)))

(declare-fun b!3872235 () Bool)

(assert (=> b!3872235 (= e!2395121 (equivClasses!2636 (toChars!8667 (transformation!6380 (h!46552 rules!2768))) (toValue!8808 (transformation!6380 (h!46552 rules!2768)))))))

(assert (= (and d!1146873 res!1568499) b!3872235))

(declare-fun m!4429245 () Bool)

(assert (=> d!1146873 m!4429245))

(declare-fun m!4429247 () Bool)

(assert (=> b!3872235 m!4429247))

(assert (=> b!3871673 d!1146873))

(declare-fun b!3872238 () Bool)

(declare-fun res!1568500 () Bool)

(declare-fun e!2395123 () Bool)

(assert (=> b!3872238 (=> (not res!1568500) (not e!2395123))))

(declare-fun lt!1348276 () List!41257)

(assert (=> b!3872238 (= res!1568500 (= (size!30916 lt!1348276) (+ (size!30916 lt!1348025) (size!30916 suffixTokens!72))))))

(declare-fun b!3872237 () Bool)

(declare-fun e!2395122 () List!41257)

(assert (=> b!3872237 (= e!2395122 (Cons!41133 (h!46553 lt!1348025) (++!10517 (t!314516 lt!1348025) suffixTokens!72)))))

(declare-fun b!3872236 () Bool)

(assert (=> b!3872236 (= e!2395122 suffixTokens!72)))

(declare-fun b!3872239 () Bool)

(assert (=> b!3872239 (= e!2395123 (or (not (= suffixTokens!72 Nil!41133)) (= lt!1348276 lt!1348025)))))

(declare-fun d!1146875 () Bool)

(assert (=> d!1146875 e!2395123))

(declare-fun res!1568501 () Bool)

(assert (=> d!1146875 (=> (not res!1568501) (not e!2395123))))

(assert (=> d!1146875 (= res!1568501 (= (content!6144 lt!1348276) ((_ map or) (content!6144 lt!1348025) (content!6144 suffixTokens!72))))))

(assert (=> d!1146875 (= lt!1348276 e!2395122)))

(declare-fun c!673831 () Bool)

(assert (=> d!1146875 (= c!673831 ((_ is Nil!41133) lt!1348025))))

(assert (=> d!1146875 (= (++!10517 lt!1348025 suffixTokens!72) lt!1348276)))

(assert (= (and d!1146875 c!673831) b!3872236))

(assert (= (and d!1146875 (not c!673831)) b!3872237))

(assert (= (and d!1146875 res!1568501) b!3872238))

(assert (= (and b!3872238 res!1568500) b!3872239))

(declare-fun m!4429249 () Bool)

(assert (=> b!3872238 m!4429249))

(assert (=> b!3872238 m!4428661))

(assert (=> b!3872238 m!4428701))

(declare-fun m!4429251 () Bool)

(assert (=> b!3872237 m!4429251))

(declare-fun m!4429253 () Bool)

(assert (=> d!1146875 m!4429253))

(assert (=> d!1146875 m!4428669))

(assert (=> d!1146875 m!4428709))

(assert (=> b!3871699 d!1146875))

(declare-fun d!1146877 () Bool)

(assert (=> d!1146877 (= (tail!5915 prefixTokens!80) (t!314516 prefixTokens!80))))

(assert (=> b!3871699 d!1146877))

(declare-fun b!3872243 () Bool)

(declare-fun e!2395124 () Bool)

(assert (=> b!3872243 (= e!2395124 (>= (size!30914 lt!1348019) (size!30914 lt!1348020)))))

(declare-fun b!3872241 () Bool)

(declare-fun res!1568502 () Bool)

(declare-fun e!2395126 () Bool)

(assert (=> b!3872241 (=> (not res!1568502) (not e!2395126))))

(assert (=> b!3872241 (= res!1568502 (= (head!8200 lt!1348020) (head!8200 lt!1348019)))))

(declare-fun b!3872240 () Bool)

(declare-fun e!2395125 () Bool)

(assert (=> b!3872240 (= e!2395125 e!2395126)))

(declare-fun res!1568505 () Bool)

(assert (=> b!3872240 (=> (not res!1568505) (not e!2395126))))

(assert (=> b!3872240 (= res!1568505 (not ((_ is Nil!41130) lt!1348019)))))

(declare-fun d!1146879 () Bool)

(assert (=> d!1146879 e!2395124))

(declare-fun res!1568504 () Bool)

(assert (=> d!1146879 (=> res!1568504 e!2395124)))

(declare-fun lt!1348277 () Bool)

(assert (=> d!1146879 (= res!1568504 (not lt!1348277))))

(assert (=> d!1146879 (= lt!1348277 e!2395125)))

(declare-fun res!1568503 () Bool)

(assert (=> d!1146879 (=> res!1568503 e!2395125)))

(assert (=> d!1146879 (= res!1568503 ((_ is Nil!41130) lt!1348020))))

(assert (=> d!1146879 (= (isPrefix!3479 lt!1348020 lt!1348019) lt!1348277)))

(declare-fun b!3872242 () Bool)

(assert (=> b!3872242 (= e!2395126 (isPrefix!3479 (tail!5917 lt!1348020) (tail!5917 lt!1348019)))))

(assert (= (and d!1146879 (not res!1568503)) b!3872240))

(assert (= (and b!3872240 res!1568505) b!3872241))

(assert (= (and b!3872241 res!1568502) b!3872242))

(assert (= (and d!1146879 (not res!1568504)) b!3872243))

(assert (=> b!3872243 m!4428779))

(assert (=> b!3872243 m!4428791))

(declare-fun m!4429255 () Bool)

(assert (=> b!3872241 m!4429255))

(declare-fun m!4429257 () Bool)

(assert (=> b!3872241 m!4429257))

(declare-fun m!4429259 () Bool)

(assert (=> b!3872242 m!4429259))

(declare-fun m!4429261 () Bool)

(assert (=> b!3872242 m!4429261))

(assert (=> b!3872242 m!4429259))

(assert (=> b!3872242 m!4429261))

(declare-fun m!4429263 () Bool)

(assert (=> b!3872242 m!4429263))

(assert (=> b!3871699 d!1146879))

(declare-fun d!1146881 () Bool)

(assert (=> d!1146881 (isPrefix!3479 lt!1348020 (++!10518 lt!1348020 suffix!1176))))

(declare-fun lt!1348278 () Unit!58983)

(assert (=> d!1146881 (= lt!1348278 (choose!22893 lt!1348020 suffix!1176))))

(assert (=> d!1146881 (= (lemmaConcatTwoListThenFirstIsPrefix!2342 lt!1348020 suffix!1176) lt!1348278)))

(declare-fun bs!583515 () Bool)

(assert (= bs!583515 d!1146881))

(assert (=> bs!583515 m!4428341))

(assert (=> bs!583515 m!4428341))

(declare-fun m!4429265 () Bool)

(assert (=> bs!583515 m!4429265))

(declare-fun m!4429267 () Bool)

(assert (=> bs!583515 m!4429267))

(assert (=> b!3871699 d!1146881))

(declare-fun d!1146883 () Bool)

(assert (=> d!1146883 (not (= (lexList!1737 thiss!20629 rules!2768 (_2!23312 lt!1348013)) (tuple2!40355 (++!10517 lt!1348042 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1348281 () Unit!58983)

(declare-fun choose!22904 (LexerInterface!5969 List!41256 List!41254 List!41254 List!41257 List!41254 List!41257) Unit!58983)

(assert (=> d!1146883 (= lt!1348281 (choose!22904 thiss!20629 rules!2768 suffix!1176 (_2!23312 lt!1348013) suffixTokens!72 suffixResult!91 lt!1348042))))

(assert (=> d!1146883 (not (isEmpty!24404 rules!2768))))

(assert (=> d!1146883 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!40 thiss!20629 rules!2768 suffix!1176 (_2!23312 lt!1348013) suffixTokens!72 suffixResult!91 lt!1348042) lt!1348281)))

(declare-fun bs!583516 () Bool)

(assert (= bs!583516 d!1146883))

(assert (=> bs!583516 m!4428397))

(assert (=> bs!583516 m!4428319))

(declare-fun m!4429269 () Bool)

(assert (=> bs!583516 m!4429269))

(assert (=> bs!583516 m!4428419))

(assert (=> b!3871678 d!1146883))

(declare-fun b!3872246 () Bool)

(declare-fun res!1568506 () Bool)

(declare-fun e!2395128 () Bool)

(assert (=> b!3872246 (=> (not res!1568506) (not e!2395128))))

(declare-fun lt!1348282 () List!41257)

(assert (=> b!3872246 (= res!1568506 (= (size!30916 lt!1348282) (+ (size!30916 lt!1348042) (size!30916 suffixTokens!72))))))

(declare-fun b!3872245 () Bool)

(declare-fun e!2395127 () List!41257)

(assert (=> b!3872245 (= e!2395127 (Cons!41133 (h!46553 lt!1348042) (++!10517 (t!314516 lt!1348042) suffixTokens!72)))))

(declare-fun b!3872244 () Bool)

(assert (=> b!3872244 (= e!2395127 suffixTokens!72)))

(declare-fun b!3872247 () Bool)

(assert (=> b!3872247 (= e!2395128 (or (not (= suffixTokens!72 Nil!41133)) (= lt!1348282 lt!1348042)))))

(declare-fun d!1146885 () Bool)

(assert (=> d!1146885 e!2395128))

(declare-fun res!1568507 () Bool)

(assert (=> d!1146885 (=> (not res!1568507) (not e!2395128))))

(assert (=> d!1146885 (= res!1568507 (= (content!6144 lt!1348282) ((_ map or) (content!6144 lt!1348042) (content!6144 suffixTokens!72))))))

(assert (=> d!1146885 (= lt!1348282 e!2395127)))

(declare-fun c!673832 () Bool)

(assert (=> d!1146885 (= c!673832 ((_ is Nil!41133) lt!1348042))))

(assert (=> d!1146885 (= (++!10517 lt!1348042 suffixTokens!72) lt!1348282)))

(assert (= (and d!1146885 c!673832) b!3872244))

(assert (= (and d!1146885 (not c!673832)) b!3872245))

(assert (= (and d!1146885 res!1568507) b!3872246))

(assert (= (and b!3872246 res!1568506) b!3872247))

(declare-fun m!4429271 () Bool)

(assert (=> b!3872246 m!4429271))

(declare-fun m!4429273 () Bool)

(assert (=> b!3872246 m!4429273))

(assert (=> b!3872246 m!4428701))

(declare-fun m!4429275 () Bool)

(assert (=> b!3872245 m!4429275))

(declare-fun m!4429277 () Bool)

(assert (=> d!1146885 m!4429277))

(declare-fun m!4429279 () Bool)

(assert (=> d!1146885 m!4429279))

(assert (=> d!1146885 m!4428709))

(assert (=> b!3871678 d!1146885))

(declare-fun d!1146887 () Bool)

(assert (=> d!1146887 (= (isEmpty!24403 prefix!426) ((_ is Nil!41130) prefix!426))))

(assert (=> b!3871698 d!1146887))

(assert (=> b!3871697 d!1146863))

(assert (=> b!3871697 d!1146861))

(declare-fun d!1146889 () Bool)

(assert (=> d!1146889 (= lt!1348044 prefix!426)))

(declare-fun lt!1348285 () Unit!58983)

(declare-fun choose!22905 (List!41254 List!41254 List!41254) Unit!58983)

(assert (=> d!1146889 (= lt!1348285 (choose!22905 lt!1348044 prefix!426 lt!1348035))))

(assert (=> d!1146889 (isPrefix!3479 lt!1348044 lt!1348035)))

(assert (=> d!1146889 (= (lemmaIsPrefixSameLengthThenSameList!731 lt!1348044 prefix!426 lt!1348035) lt!1348285)))

(declare-fun bs!583517 () Bool)

(assert (= bs!583517 d!1146889))

(declare-fun m!4429281 () Bool)

(assert (=> bs!583517 m!4429281))

(assert (=> bs!583517 m!4428757))

(assert (=> b!3871697 d!1146889))

(declare-fun d!1146891 () Bool)

(assert (=> d!1146891 (= (_2!23312 (v!39095 lt!1348027)) suffix!1176)))

(declare-fun lt!1348286 () Unit!58983)

(assert (=> d!1146891 (= lt!1348286 (choose!22892 lt!1348044 (_2!23312 (v!39095 lt!1348027)) prefix!426 suffix!1176 lt!1348035))))

(assert (=> d!1146891 (isPrefix!3479 lt!1348044 lt!1348035)))

(assert (=> d!1146891 (= (lemmaSamePrefixThenSameSuffix!1700 lt!1348044 (_2!23312 (v!39095 lt!1348027)) prefix!426 suffix!1176 lt!1348035) lt!1348286)))

(declare-fun bs!583518 () Bool)

(assert (= bs!583518 d!1146891))

(declare-fun m!4429283 () Bool)

(assert (=> bs!583518 m!4429283))

(assert (=> bs!583518 m!4428757))

(assert (=> b!3871697 d!1146891))

(declare-fun b!3872266 () Bool)

(declare-fun res!1568527 () Bool)

(declare-fun e!2395138 () Bool)

(assert (=> b!3872266 (=> (not res!1568527) (not e!2395138))))

(declare-fun lt!1348299 () Option!8798)

(assert (=> b!3872266 (= res!1568527 (= (++!10518 (list!15300 (charsOf!4208 (_1!23312 (get!13610 lt!1348299)))) (_2!23312 (get!13610 lt!1348299))) lt!1348035))))

(declare-fun b!3872267 () Bool)

(assert (=> b!3872267 (= e!2395138 (= (size!30913 (_1!23312 (get!13610 lt!1348299))) (size!30914 (originalCharacters!6980 (_1!23312 (get!13610 lt!1348299))))))))

(declare-fun d!1146893 () Bool)

(declare-fun e!2395139 () Bool)

(assert (=> d!1146893 e!2395139))

(declare-fun res!1568523 () Bool)

(assert (=> d!1146893 (=> res!1568523 e!2395139)))

(assert (=> d!1146893 (= res!1568523 (isEmpty!24406 lt!1348299))))

(declare-fun e!2395140 () Option!8798)

(assert (=> d!1146893 (= lt!1348299 e!2395140)))

(declare-fun c!673835 () Bool)

(declare-datatypes ((tuple2!40360 0))(
  ( (tuple2!40361 (_1!23314 List!41254) (_2!23314 List!41254)) )
))
(declare-fun lt!1348300 () tuple2!40360)

(assert (=> d!1146893 (= c!673835 (isEmpty!24403 (_1!23314 lt!1348300)))))

(declare-fun findLongestMatch!1117 (Regex!11285 List!41254) tuple2!40360)

(assert (=> d!1146893 (= lt!1348300 (findLongestMatch!1117 (regex!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) lt!1348035))))

(assert (=> d!1146893 (ruleValid!2332 thiss!20629 (rule!9268 (_1!23312 (v!39095 lt!1348027))))))

(assert (=> d!1146893 (= (maxPrefixOneRule!2355 thiss!20629 (rule!9268 (_1!23312 (v!39095 lt!1348027))) lt!1348035) lt!1348299)))

(declare-fun b!3872268 () Bool)

(declare-fun res!1568526 () Bool)

(assert (=> b!3872268 (=> (not res!1568526) (not e!2395138))))

(assert (=> b!3872268 (= res!1568526 (= (rule!9268 (_1!23312 (get!13610 lt!1348299))) (rule!9268 (_1!23312 (v!39095 lt!1348027)))))))

(declare-fun b!3872269 () Bool)

(declare-fun res!1568522 () Bool)

(assert (=> b!3872269 (=> (not res!1568522) (not e!2395138))))

(assert (=> b!3872269 (= res!1568522 (= (value!202464 (_1!23312 (get!13610 lt!1348299))) (apply!9623 (transformation!6380 (rule!9268 (_1!23312 (get!13610 lt!1348299)))) (seqFromList!4651 (originalCharacters!6980 (_1!23312 (get!13610 lt!1348299)))))))))

(declare-fun b!3872270 () Bool)

(declare-fun size!30918 (BalanceConc!24776) Int)

(assert (=> b!3872270 (= e!2395140 (Some!8797 (tuple2!40357 (Token!11899 (apply!9623 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) (seqFromList!4651 (_1!23314 lt!1348300))) (rule!9268 (_1!23312 (v!39095 lt!1348027))) (size!30918 (seqFromList!4651 (_1!23314 lt!1348300))) (_1!23314 lt!1348300)) (_2!23314 lt!1348300))))))

(declare-fun lt!1348301 () Unit!58983)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1177 (Regex!11285 List!41254) Unit!58983)

(assert (=> b!3872270 (= lt!1348301 (longestMatchIsAcceptedByMatchOrIsEmpty!1177 (regex!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) lt!1348035))))

(declare-fun res!1568528 () Bool)

(declare-fun findLongestMatchInner!1204 (Regex!11285 List!41254 Int List!41254 List!41254 Int) tuple2!40360)

(assert (=> b!3872270 (= res!1568528 (isEmpty!24403 (_1!23314 (findLongestMatchInner!1204 (regex!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) Nil!41130 (size!30914 Nil!41130) lt!1348035 lt!1348035 (size!30914 lt!1348035)))))))

(declare-fun e!2395137 () Bool)

(assert (=> b!3872270 (=> res!1568528 e!2395137)))

(assert (=> b!3872270 e!2395137))

(declare-fun lt!1348297 () Unit!58983)

(assert (=> b!3872270 (= lt!1348297 lt!1348301)))

(declare-fun lt!1348298 () Unit!58983)

(declare-fun lemmaSemiInverse!1710 (TokenValueInjection!12648 BalanceConc!24776) Unit!58983)

(assert (=> b!3872270 (= lt!1348298 (lemmaSemiInverse!1710 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) (seqFromList!4651 (_1!23314 lt!1348300))))))

(declare-fun b!3872271 () Bool)

(declare-fun res!1568524 () Bool)

(assert (=> b!3872271 (=> (not res!1568524) (not e!2395138))))

(assert (=> b!3872271 (= res!1568524 (< (size!30914 (_2!23312 (get!13610 lt!1348299))) (size!30914 lt!1348035)))))

(declare-fun b!3872272 () Bool)

(assert (=> b!3872272 (= e!2395139 e!2395138)))

(declare-fun res!1568525 () Bool)

(assert (=> b!3872272 (=> (not res!1568525) (not e!2395138))))

(assert (=> b!3872272 (= res!1568525 (matchR!5414 (regex!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) (list!15300 (charsOf!4208 (_1!23312 (get!13610 lt!1348299))))))))

(declare-fun b!3872273 () Bool)

(assert (=> b!3872273 (= e!2395137 (matchR!5414 (regex!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) (_1!23314 (findLongestMatchInner!1204 (regex!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) Nil!41130 (size!30914 Nil!41130) lt!1348035 lt!1348035 (size!30914 lt!1348035)))))))

(declare-fun b!3872274 () Bool)

(assert (=> b!3872274 (= e!2395140 None!8797)))

(assert (= (and d!1146893 c!673835) b!3872274))

(assert (= (and d!1146893 (not c!673835)) b!3872270))

(assert (= (and b!3872270 (not res!1568528)) b!3872273))

(assert (= (and d!1146893 (not res!1568523)) b!3872272))

(assert (= (and b!3872272 res!1568525) b!3872266))

(assert (= (and b!3872266 res!1568527) b!3872271))

(assert (= (and b!3872271 res!1568524) b!3872268))

(assert (= (and b!3872268 res!1568526) b!3872269))

(assert (= (and b!3872269 res!1568522) b!3872267))

(declare-fun m!4429285 () Bool)

(assert (=> b!3872272 m!4429285))

(declare-fun m!4429287 () Bool)

(assert (=> b!3872272 m!4429287))

(assert (=> b!3872272 m!4429287))

(declare-fun m!4429289 () Bool)

(assert (=> b!3872272 m!4429289))

(assert (=> b!3872272 m!4429289))

(declare-fun m!4429291 () Bool)

(assert (=> b!3872272 m!4429291))

(assert (=> b!3872271 m!4429285))

(declare-fun m!4429293 () Bool)

(assert (=> b!3872271 m!4429293))

(assert (=> b!3872271 m!4428441))

(assert (=> b!3872269 m!4429285))

(declare-fun m!4429295 () Bool)

(assert (=> b!3872269 m!4429295))

(assert (=> b!3872269 m!4429295))

(declare-fun m!4429297 () Bool)

(assert (=> b!3872269 m!4429297))

(assert (=> b!3872266 m!4429285))

(assert (=> b!3872266 m!4429287))

(assert (=> b!3872266 m!4429287))

(assert (=> b!3872266 m!4429289))

(assert (=> b!3872266 m!4429289))

(declare-fun m!4429299 () Bool)

(assert (=> b!3872266 m!4429299))

(assert (=> b!3872267 m!4429285))

(declare-fun m!4429301 () Bool)

(assert (=> b!3872267 m!4429301))

(declare-fun m!4429303 () Bool)

(assert (=> b!3872273 m!4429303))

(assert (=> b!3872273 m!4428441))

(assert (=> b!3872273 m!4429303))

(assert (=> b!3872273 m!4428441))

(declare-fun m!4429305 () Bool)

(assert (=> b!3872273 m!4429305))

(declare-fun m!4429307 () Bool)

(assert (=> b!3872273 m!4429307))

(declare-fun m!4429309 () Bool)

(assert (=> d!1146893 m!4429309))

(declare-fun m!4429311 () Bool)

(assert (=> d!1146893 m!4429311))

(declare-fun m!4429313 () Bool)

(assert (=> d!1146893 m!4429313))

(assert (=> d!1146893 m!4428357))

(assert (=> b!3872268 m!4429285))

(declare-fun m!4429315 () Bool)

(assert (=> b!3872270 m!4429315))

(declare-fun m!4429317 () Bool)

(assert (=> b!3872270 m!4429317))

(assert (=> b!3872270 m!4429315))

(declare-fun m!4429319 () Bool)

(assert (=> b!3872270 m!4429319))

(assert (=> b!3872270 m!4429303))

(assert (=> b!3872270 m!4428441))

(assert (=> b!3872270 m!4429305))

(assert (=> b!3872270 m!4429303))

(declare-fun m!4429321 () Bool)

(assert (=> b!3872270 m!4429321))

(assert (=> b!3872270 m!4429315))

(declare-fun m!4429323 () Bool)

(assert (=> b!3872270 m!4429323))

(assert (=> b!3872270 m!4429315))

(declare-fun m!4429325 () Bool)

(assert (=> b!3872270 m!4429325))

(assert (=> b!3872270 m!4428441))

(assert (=> b!3871676 d!1146893))

(declare-fun d!1146895 () Bool)

(declare-fun lt!1348302 () Int)

(assert (=> d!1146895 (>= lt!1348302 0)))

(declare-fun e!2395141 () Int)

(assert (=> d!1146895 (= lt!1348302 e!2395141)))

(declare-fun c!673836 () Bool)

(assert (=> d!1146895 (= c!673836 ((_ is Nil!41130) lt!1348035))))

(assert (=> d!1146895 (= (size!30914 lt!1348035) lt!1348302)))

(declare-fun b!3872275 () Bool)

(assert (=> b!3872275 (= e!2395141 0)))

(declare-fun b!3872276 () Bool)

(assert (=> b!3872276 (= e!2395141 (+ 1 (size!30914 (t!314513 lt!1348035))))))

(assert (= (and d!1146895 c!673836) b!3872275))

(assert (= (and d!1146895 (not c!673836)) b!3872276))

(declare-fun m!4429327 () Bool)

(assert (=> b!3872276 m!4429327))

(assert (=> b!3871676 d!1146895))

(declare-fun d!1146897 () Bool)

(declare-fun lt!1348303 () Int)

(assert (=> d!1146897 (>= lt!1348303 0)))

(declare-fun e!2395142 () Int)

(assert (=> d!1146897 (= lt!1348303 e!2395142)))

(declare-fun c!673837 () Bool)

(assert (=> d!1146897 (= c!673837 ((_ is Nil!41130) (_2!23312 lt!1348013)))))

(assert (=> d!1146897 (= (size!30914 (_2!23312 lt!1348013)) lt!1348303)))

(declare-fun b!3872277 () Bool)

(assert (=> b!3872277 (= e!2395142 0)))

(declare-fun b!3872278 () Bool)

(assert (=> b!3872278 (= e!2395142 (+ 1 (size!30914 (t!314513 (_2!23312 lt!1348013)))))))

(assert (= (and d!1146897 c!673837) b!3872277))

(assert (= (and d!1146897 (not c!673837)) b!3872278))

(declare-fun m!4429329 () Bool)

(assert (=> b!3872278 m!4429329))

(assert (=> b!3871676 d!1146897))

(declare-fun d!1146899 () Bool)

(assert (=> d!1146899 (= (get!13610 lt!1348027) (v!39095 lt!1348027))))

(assert (=> b!3871676 d!1146899))

(declare-fun d!1146901 () Bool)

(assert (=> d!1146901 (= (maxPrefixOneRule!2355 thiss!20629 (rule!9268 (_1!23312 (v!39095 lt!1348027))) lt!1348035) (Some!8797 (tuple2!40357 (Token!11899 (apply!9623 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))) (seqFromList!4651 lt!1348044)) (rule!9268 (_1!23312 (v!39095 lt!1348027))) (size!30914 lt!1348044) lt!1348044) (_2!23312 (v!39095 lt!1348027)))))))

(declare-fun lt!1348306 () Unit!58983)

(declare-fun choose!22906 (LexerInterface!5969 List!41256 List!41254 List!41254 List!41254 Rule!12560) Unit!58983)

(assert (=> d!1146901 (= lt!1348306 (choose!22906 thiss!20629 rules!2768 lt!1348044 lt!1348035 (_2!23312 (v!39095 lt!1348027)) (rule!9268 (_1!23312 (v!39095 lt!1348027)))))))

(assert (=> d!1146901 (not (isEmpty!24404 rules!2768))))

(assert (=> d!1146901 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1253 thiss!20629 rules!2768 lt!1348044 lt!1348035 (_2!23312 (v!39095 lt!1348027)) (rule!9268 (_1!23312 (v!39095 lt!1348027)))) lt!1348306)))

(declare-fun bs!583519 () Bool)

(assert (= bs!583519 d!1146901))

(assert (=> bs!583519 m!4428365))

(assert (=> bs!583519 m!4428347))

(declare-fun m!4429331 () Bool)

(assert (=> bs!583519 m!4429331))

(assert (=> bs!583519 m!4428419))

(assert (=> bs!583519 m!4428437))

(assert (=> bs!583519 m!4428365))

(assert (=> bs!583519 m!4428369))

(assert (=> b!3871676 d!1146901))

(declare-fun d!1146903 () Bool)

(assert (=> d!1146903 (not (= (lexList!1737 thiss!20629 rules!2768 suffix!1176) (tuple2!40355 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1348307 () Unit!58983)

(assert (=> d!1146903 (= lt!1348307 (choose!22898 thiss!20629 rules!2768 (_2!23312 (v!39095 lt!1348027)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1146903 (not (isEmpty!24404 rules!2768))))

(assert (=> d!1146903 (= (lemmaLexWithSmallerInputCannotProduceSameResults!40 thiss!20629 rules!2768 (_2!23312 (v!39095 lt!1348027)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1348307)))

(declare-fun bs!583520 () Bool)

(assert (= bs!583520 d!1146903))

(assert (=> bs!583520 m!4428411))

(declare-fun m!4429333 () Bool)

(assert (=> bs!583520 m!4429333))

(assert (=> bs!583520 m!4428419))

(assert (=> b!3871669 d!1146903))

(declare-fun d!1146905 () Bool)

(assert (=> d!1146905 (= (inv!55287 (tag!7240 (rule!9268 (h!46553 prefixTokens!80)))) (= (mod (str.len (value!202463 (tag!7240 (rule!9268 (h!46553 prefixTokens!80))))) 2) 0))))

(assert (=> b!3871690 d!1146905))

(declare-fun d!1146907 () Bool)

(declare-fun res!1568529 () Bool)

(declare-fun e!2395143 () Bool)

(assert (=> d!1146907 (=> (not res!1568529) (not e!2395143))))

(assert (=> d!1146907 (= res!1568529 (semiInverseModEq!2737 (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) (toValue!8808 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80))))))))

(assert (=> d!1146907 (= (inv!55290 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) e!2395143)))

(declare-fun b!3872279 () Bool)

(assert (=> b!3872279 (= e!2395143 (equivClasses!2636 (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) (toValue!8808 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80))))))))

(assert (= (and d!1146907 res!1568529) b!3872279))

(declare-fun m!4429335 () Bool)

(assert (=> d!1146907 m!4429335))

(declare-fun m!4429337 () Bool)

(assert (=> b!3872279 m!4429337))

(assert (=> b!3871690 d!1146907))

(declare-fun b!3872280 () Bool)

(declare-fun e!2395146 () Bool)

(assert (=> b!3872280 (= e!2395146 (inv!15 (value!202464 (h!46553 suffixTokens!72))))))

(declare-fun d!1146909 () Bool)

(declare-fun c!673838 () Bool)

(assert (=> d!1146909 (= c!673838 ((_ is IntegerValue!19830) (value!202464 (h!46553 suffixTokens!72))))))

(declare-fun e!2395144 () Bool)

(assert (=> d!1146909 (= (inv!21 (value!202464 (h!46553 suffixTokens!72))) e!2395144)))

(declare-fun b!3872281 () Bool)

(declare-fun e!2395145 () Bool)

(assert (=> b!3872281 (= e!2395144 e!2395145)))

(declare-fun c!673839 () Bool)

(assert (=> b!3872281 (= c!673839 ((_ is IntegerValue!19831) (value!202464 (h!46553 suffixTokens!72))))))

(declare-fun b!3872282 () Bool)

(assert (=> b!3872282 (= e!2395144 (inv!16 (value!202464 (h!46553 suffixTokens!72))))))

(declare-fun b!3872283 () Bool)

(assert (=> b!3872283 (= e!2395145 (inv!17 (value!202464 (h!46553 suffixTokens!72))))))

(declare-fun b!3872284 () Bool)

(declare-fun res!1568530 () Bool)

(assert (=> b!3872284 (=> res!1568530 e!2395146)))

(assert (=> b!3872284 (= res!1568530 (not ((_ is IntegerValue!19832) (value!202464 (h!46553 suffixTokens!72)))))))

(assert (=> b!3872284 (= e!2395145 e!2395146)))

(assert (= (and d!1146909 c!673838) b!3872282))

(assert (= (and d!1146909 (not c!673838)) b!3872281))

(assert (= (and b!3872281 c!673839) b!3872283))

(assert (= (and b!3872281 (not c!673839)) b!3872284))

(assert (= (and b!3872284 (not res!1568530)) b!3872280))

(declare-fun m!4429339 () Bool)

(assert (=> b!3872280 m!4429339))

(declare-fun m!4429341 () Bool)

(assert (=> b!3872282 m!4429341))

(declare-fun m!4429343 () Bool)

(assert (=> b!3872283 m!4429343))

(assert (=> b!3871671 d!1146909))

(declare-fun d!1146911 () Bool)

(assert (=> d!1146911 (= (isEmpty!24402 lt!1348042) ((_ is Nil!41133) lt!1348042))))

(assert (=> b!3871692 d!1146911))

(assert (=> b!3871692 d!1146877))

(declare-fun b!3872295 () Bool)

(declare-fun b_free!104581 () Bool)

(declare-fun b_next!105285 () Bool)

(assert (=> b!3872295 (= b_free!104581 (not b_next!105285))))

(declare-fun tb!224633 () Bool)

(declare-fun t!314591 () Bool)

(assert (=> (and b!3872295 (= (toValue!8808 (transformation!6380 (h!46552 (t!314515 rules!2768)))) (toValue!8808 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314591) tb!224633))

(declare-fun result!273604 () Bool)

(assert (= result!273604 result!273588))

(assert (=> d!1146833 t!314591))

(declare-fun b_and!290283 () Bool)

(declare-fun tp!1173984 () Bool)

(assert (=> b!3872295 (= tp!1173984 (and (=> t!314591 result!273604) b_and!290283))))

(declare-fun b_free!104583 () Bool)

(declare-fun b_next!105287 () Bool)

(assert (=> b!3872295 (= b_free!104583 (not b_next!105287))))

(declare-fun tb!224635 () Bool)

(declare-fun t!314593 () Bool)

(assert (=> (and b!3872295 (= (toChars!8667 (transformation!6380 (h!46552 (t!314515 rules!2768)))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80))))) t!314593) tb!224635))

(declare-fun result!273606 () Bool)

(assert (= result!273606 result!273528))

(assert (=> b!3871997 t!314593))

(declare-fun tb!224637 () Bool)

(declare-fun t!314595 () Bool)

(assert (=> (and b!3872295 (= (toChars!8667 (transformation!6380 (h!46552 (t!314515 rules!2768)))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72))))) t!314595) tb!224637))

(declare-fun result!273608 () Bool)

(assert (= result!273608 result!273574))

(assert (=> b!3872179 t!314595))

(declare-fun tb!224639 () Bool)

(declare-fun t!314597 () Bool)

(assert (=> (and b!3872295 (= (toChars!8667 (transformation!6380 (h!46552 (t!314515 rules!2768)))) (toChars!8667 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314597) tb!224639))

(declare-fun result!273610 () Bool)

(assert (= result!273610 result!273596))

(assert (=> d!1146841 t!314597))

(declare-fun b_and!290285 () Bool)

(declare-fun tp!1173985 () Bool)

(assert (=> b!3872295 (= tp!1173985 (and (=> t!314593 result!273606) (=> t!314595 result!273608) (=> t!314597 result!273610) b_and!290285))))

(declare-fun e!2395157 () Bool)

(assert (=> b!3872295 (= e!2395157 (and tp!1173984 tp!1173985))))

(declare-fun e!2395156 () Bool)

(declare-fun tp!1173986 () Bool)

(declare-fun b!3872294 () Bool)

(assert (=> b!3872294 (= e!2395156 (and tp!1173986 (inv!55287 (tag!7240 (h!46552 (t!314515 rules!2768)))) (inv!55290 (transformation!6380 (h!46552 (t!314515 rules!2768)))) e!2395157))))

(declare-fun b!3872293 () Bool)

(declare-fun e!2395155 () Bool)

(declare-fun tp!1173983 () Bool)

(assert (=> b!3872293 (= e!2395155 (and e!2395156 tp!1173983))))

(assert (=> b!3871686 (= tp!1173896 e!2395155)))

(assert (= b!3872294 b!3872295))

(assert (= b!3872293 b!3872294))

(assert (= (and b!3871686 ((_ is Cons!41132) (t!314515 rules!2768))) b!3872293))

(declare-fun m!4429345 () Bool)

(assert (=> b!3872294 m!4429345))

(declare-fun m!4429347 () Bool)

(assert (=> b!3872294 m!4429347))

(declare-fun b!3872306 () Bool)

(declare-fun e!2395161 () Bool)

(assert (=> b!3872306 (= e!2395161 tp_is_empty!19541)))

(declare-fun b!3872308 () Bool)

(declare-fun tp!1173999 () Bool)

(assert (=> b!3872308 (= e!2395161 tp!1173999)))

(assert (=> b!3871695 (= tp!1173894 e!2395161)))

(declare-fun b!3872309 () Bool)

(declare-fun tp!1173998 () Bool)

(declare-fun tp!1174001 () Bool)

(assert (=> b!3872309 (= e!2395161 (and tp!1173998 tp!1174001))))

(declare-fun b!3872307 () Bool)

(declare-fun tp!1173997 () Bool)

(declare-fun tp!1174000 () Bool)

(assert (=> b!3872307 (= e!2395161 (and tp!1173997 tp!1174000))))

(assert (= (and b!3871695 ((_ is ElementMatch!11285) (regex!6380 (rule!9268 (h!46553 suffixTokens!72))))) b!3872306))

(assert (= (and b!3871695 ((_ is Concat!17896) (regex!6380 (rule!9268 (h!46553 suffixTokens!72))))) b!3872307))

(assert (= (and b!3871695 ((_ is Star!11285) (regex!6380 (rule!9268 (h!46553 suffixTokens!72))))) b!3872308))

(assert (= (and b!3871695 ((_ is Union!11285) (regex!6380 (rule!9268 (h!46553 suffixTokens!72))))) b!3872309))

(declare-fun b!3872310 () Bool)

(declare-fun e!2395162 () Bool)

(assert (=> b!3872310 (= e!2395162 tp_is_empty!19541)))

(declare-fun b!3872312 () Bool)

(declare-fun tp!1174004 () Bool)

(assert (=> b!3872312 (= e!2395162 tp!1174004)))

(assert (=> b!3871673 (= tp!1173889 e!2395162)))

(declare-fun b!3872313 () Bool)

(declare-fun tp!1174003 () Bool)

(declare-fun tp!1174006 () Bool)

(assert (=> b!3872313 (= e!2395162 (and tp!1174003 tp!1174006))))

(declare-fun b!3872311 () Bool)

(declare-fun tp!1174002 () Bool)

(declare-fun tp!1174005 () Bool)

(assert (=> b!3872311 (= e!2395162 (and tp!1174002 tp!1174005))))

(assert (= (and b!3871673 ((_ is ElementMatch!11285) (regex!6380 (h!46552 rules!2768)))) b!3872310))

(assert (= (and b!3871673 ((_ is Concat!17896) (regex!6380 (h!46552 rules!2768)))) b!3872311))

(assert (= (and b!3871673 ((_ is Star!11285) (regex!6380 (h!46552 rules!2768)))) b!3872312))

(assert (= (and b!3871673 ((_ is Union!11285) (regex!6380 (h!46552 rules!2768)))) b!3872313))

(declare-fun b!3872318 () Bool)

(declare-fun e!2395165 () Bool)

(declare-fun tp!1174009 () Bool)

(assert (=> b!3872318 (= e!2395165 (and tp_is_empty!19541 tp!1174009))))

(assert (=> b!3871684 (= tp!1173887 e!2395165)))

(assert (= (and b!3871684 ((_ is Cons!41130) (originalCharacters!6980 (h!46553 prefixTokens!80)))) b!3872318))

(declare-fun b!3872332 () Bool)

(declare-fun b_free!104585 () Bool)

(declare-fun b_next!105289 () Bool)

(assert (=> b!3872332 (= b_free!104585 (not b_next!105289))))

(declare-fun tb!224641 () Bool)

(declare-fun t!314599 () Bool)

(assert (=> (and b!3872332 (= (toValue!8808 (transformation!6380 (rule!9268 (h!46553 (t!314516 prefixTokens!80))))) (toValue!8808 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314599) tb!224641))

(declare-fun result!273618 () Bool)

(assert (= result!273618 result!273588))

(assert (=> d!1146833 t!314599))

(declare-fun tp!1174022 () Bool)

(declare-fun b_and!290287 () Bool)

(assert (=> b!3872332 (= tp!1174022 (and (=> t!314599 result!273618) b_and!290287))))

(declare-fun b_free!104587 () Bool)

(declare-fun b_next!105291 () Bool)

(assert (=> b!3872332 (= b_free!104587 (not b_next!105291))))

(declare-fun t!314601 () Bool)

(declare-fun tb!224643 () Bool)

(assert (=> (and b!3872332 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 (t!314516 prefixTokens!80))))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80))))) t!314601) tb!224643))

(declare-fun result!273620 () Bool)

(assert (= result!273620 result!273528))

(assert (=> b!3871997 t!314601))

(declare-fun tb!224645 () Bool)

(declare-fun t!314603 () Bool)

(assert (=> (and b!3872332 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 (t!314516 prefixTokens!80))))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72))))) t!314603) tb!224645))

(declare-fun result!273622 () Bool)

(assert (= result!273622 result!273574))

(assert (=> b!3872179 t!314603))

(declare-fun t!314605 () Bool)

(declare-fun tb!224647 () Bool)

(assert (=> (and b!3872332 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 (t!314516 prefixTokens!80))))) (toChars!8667 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314605) tb!224647))

(declare-fun result!273624 () Bool)

(assert (= result!273624 result!273596))

(assert (=> d!1146841 t!314605))

(declare-fun tp!1174023 () Bool)

(declare-fun b_and!290289 () Bool)

(assert (=> b!3872332 (= tp!1174023 (and (=> t!314601 result!273620) (=> t!314603 result!273622) (=> t!314605 result!273624) b_and!290289))))

(declare-fun e!2395180 () Bool)

(declare-fun b!3872329 () Bool)

(declare-fun e!2395179 () Bool)

(declare-fun tp!1174021 () Bool)

(assert (=> b!3872329 (= e!2395180 (and (inv!55291 (h!46553 (t!314516 prefixTokens!80))) e!2395179 tp!1174021))))

(declare-fun tp!1174024 () Bool)

(declare-fun e!2395178 () Bool)

(declare-fun e!2395182 () Bool)

(declare-fun b!3872331 () Bool)

(assert (=> b!3872331 (= e!2395178 (and tp!1174024 (inv!55287 (tag!7240 (rule!9268 (h!46553 (t!314516 prefixTokens!80))))) (inv!55290 (transformation!6380 (rule!9268 (h!46553 (t!314516 prefixTokens!80))))) e!2395182))))

(assert (=> b!3871708 (= tp!1173900 e!2395180)))

(assert (=> b!3872332 (= e!2395182 (and tp!1174022 tp!1174023))))

(declare-fun b!3872330 () Bool)

(declare-fun tp!1174020 () Bool)

(assert (=> b!3872330 (= e!2395179 (and (inv!21 (value!202464 (h!46553 (t!314516 prefixTokens!80)))) e!2395178 tp!1174020))))

(assert (= b!3872331 b!3872332))

(assert (= b!3872330 b!3872331))

(assert (= b!3872329 b!3872330))

(assert (= (and b!3871708 ((_ is Cons!41133) (t!314516 prefixTokens!80))) b!3872329))

(declare-fun m!4429349 () Bool)

(assert (=> b!3872329 m!4429349))

(declare-fun m!4429351 () Bool)

(assert (=> b!3872331 m!4429351))

(declare-fun m!4429353 () Bool)

(assert (=> b!3872331 m!4429353))

(declare-fun m!4429355 () Bool)

(assert (=> b!3872330 m!4429355))

(declare-fun b!3872333 () Bool)

(declare-fun e!2395184 () Bool)

(declare-fun tp!1174025 () Bool)

(assert (=> b!3872333 (= e!2395184 (and tp_is_empty!19541 tp!1174025))))

(assert (=> b!3871691 (= tp!1173899 e!2395184)))

(assert (= (and b!3871691 ((_ is Cons!41130) (t!314513 prefix!426))) b!3872333))

(declare-fun b!3872334 () Bool)

(declare-fun e!2395185 () Bool)

(assert (=> b!3872334 (= e!2395185 tp_is_empty!19541)))

(declare-fun b!3872336 () Bool)

(declare-fun tp!1174028 () Bool)

(assert (=> b!3872336 (= e!2395185 tp!1174028)))

(assert (=> b!3871690 (= tp!1173884 e!2395185)))

(declare-fun b!3872337 () Bool)

(declare-fun tp!1174027 () Bool)

(declare-fun tp!1174030 () Bool)

(assert (=> b!3872337 (= e!2395185 (and tp!1174027 tp!1174030))))

(declare-fun b!3872335 () Bool)

(declare-fun tp!1174026 () Bool)

(declare-fun tp!1174029 () Bool)

(assert (=> b!3872335 (= e!2395185 (and tp!1174026 tp!1174029))))

(assert (= (and b!3871690 ((_ is ElementMatch!11285) (regex!6380 (rule!9268 (h!46553 prefixTokens!80))))) b!3872334))

(assert (= (and b!3871690 ((_ is Concat!17896) (regex!6380 (rule!9268 (h!46553 prefixTokens!80))))) b!3872335))

(assert (= (and b!3871690 ((_ is Star!11285) (regex!6380 (rule!9268 (h!46553 prefixTokens!80))))) b!3872336))

(assert (= (and b!3871690 ((_ is Union!11285) (regex!6380 (rule!9268 (h!46553 prefixTokens!80))))) b!3872337))

(declare-fun b!3872338 () Bool)

(declare-fun e!2395186 () Bool)

(declare-fun tp!1174031 () Bool)

(assert (=> b!3872338 (= e!2395186 (and tp_is_empty!19541 tp!1174031))))

(assert (=> b!3871689 (= tp!1173893 e!2395186)))

(assert (= (and b!3871689 ((_ is Cons!41130) (t!314513 suffix!1176))) b!3872338))

(declare-fun b!3872339 () Bool)

(declare-fun e!2395187 () Bool)

(declare-fun tp!1174032 () Bool)

(assert (=> b!3872339 (= e!2395187 (and tp_is_empty!19541 tp!1174032))))

(assert (=> b!3871694 (= tp!1173897 e!2395187)))

(assert (= (and b!3871694 ((_ is Cons!41130) (t!314513 suffixResult!91))) b!3872339))

(declare-fun b!3872340 () Bool)

(declare-fun e!2395188 () Bool)

(declare-fun tp!1174033 () Bool)

(assert (=> b!3872340 (= e!2395188 (and tp_is_empty!19541 tp!1174033))))

(assert (=> b!3871671 (= tp!1173890 e!2395188)))

(assert (= (and b!3871671 ((_ is Cons!41130) (originalCharacters!6980 (h!46553 suffixTokens!72)))) b!3872340))

(declare-fun b!3872344 () Bool)

(declare-fun b_free!104589 () Bool)

(declare-fun b_next!105293 () Bool)

(assert (=> b!3872344 (= b_free!104589 (not b_next!105293))))

(declare-fun t!314607 () Bool)

(declare-fun tb!224649 () Bool)

(assert (=> (and b!3872344 (= (toValue!8808 (transformation!6380 (rule!9268 (h!46553 (t!314516 suffixTokens!72))))) (toValue!8808 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314607) tb!224649))

(declare-fun result!273626 () Bool)

(assert (= result!273626 result!273588))

(assert (=> d!1146833 t!314607))

(declare-fun tp!1174036 () Bool)

(declare-fun b_and!290291 () Bool)

(assert (=> b!3872344 (= tp!1174036 (and (=> t!314607 result!273626) b_and!290291))))

(declare-fun b_free!104591 () Bool)

(declare-fun b_next!105295 () Bool)

(assert (=> b!3872344 (= b_free!104591 (not b_next!105295))))

(declare-fun t!314609 () Bool)

(declare-fun tb!224651 () Bool)

(assert (=> (and b!3872344 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 (t!314516 suffixTokens!72))))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80))))) t!314609) tb!224651))

(declare-fun result!273628 () Bool)

(assert (= result!273628 result!273528))

(assert (=> b!3871997 t!314609))

(declare-fun t!314611 () Bool)

(declare-fun tb!224653 () Bool)

(assert (=> (and b!3872344 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 (t!314516 suffixTokens!72))))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72))))) t!314611) tb!224653))

(declare-fun result!273630 () Bool)

(assert (= result!273630 result!273574))

(assert (=> b!3872179 t!314611))

(declare-fun t!314613 () Bool)

(declare-fun tb!224655 () Bool)

(assert (=> (and b!3872344 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 (t!314516 suffixTokens!72))))) (toChars!8667 (transformation!6380 (rule!9268 (_1!23312 (v!39095 lt!1348027)))))) t!314613) tb!224655))

(declare-fun result!273632 () Bool)

(assert (= result!273632 result!273596))

(assert (=> d!1146841 t!314613))

(declare-fun b_and!290293 () Bool)

(declare-fun tp!1174037 () Bool)

(assert (=> b!3872344 (= tp!1174037 (and (=> t!314609 result!273628) (=> t!314611 result!273630) (=> t!314613 result!273632) b_and!290293))))

(declare-fun e!2395191 () Bool)

(declare-fun b!3872341 () Bool)

(declare-fun e!2395190 () Bool)

(declare-fun tp!1174035 () Bool)

(assert (=> b!3872341 (= e!2395191 (and (inv!55291 (h!46553 (t!314516 suffixTokens!72))) e!2395190 tp!1174035))))

(declare-fun e!2395189 () Bool)

(declare-fun tp!1174038 () Bool)

(declare-fun e!2395193 () Bool)

(declare-fun b!3872343 () Bool)

(assert (=> b!3872343 (= e!2395189 (and tp!1174038 (inv!55287 (tag!7240 (rule!9268 (h!46553 (t!314516 suffixTokens!72))))) (inv!55290 (transformation!6380 (rule!9268 (h!46553 (t!314516 suffixTokens!72))))) e!2395193))))

(assert (=> b!3871681 (= tp!1173898 e!2395191)))

(assert (=> b!3872344 (= e!2395193 (and tp!1174036 tp!1174037))))

(declare-fun tp!1174034 () Bool)

(declare-fun b!3872342 () Bool)

(assert (=> b!3872342 (= e!2395190 (and (inv!21 (value!202464 (h!46553 (t!314516 suffixTokens!72)))) e!2395189 tp!1174034))))

(assert (= b!3872343 b!3872344))

(assert (= b!3872342 b!3872343))

(assert (= b!3872341 b!3872342))

(assert (= (and b!3871681 ((_ is Cons!41133) (t!314516 suffixTokens!72))) b!3872341))

(declare-fun m!4429357 () Bool)

(assert (=> b!3872341 m!4429357))

(declare-fun m!4429359 () Bool)

(assert (=> b!3872343 m!4429359))

(declare-fun m!4429361 () Bool)

(assert (=> b!3872343 m!4429361))

(declare-fun m!4429363 () Bool)

(assert (=> b!3872342 m!4429363))

(declare-fun b_lambda!113099 () Bool)

(assert (= b_lambda!113083 (or (and b!3871677 b_free!104563) (and b!3872332 b_free!104587 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 (t!314516 prefixTokens!80))))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))))) (and b!3872344 b_free!104591 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 (t!314516 suffixTokens!72))))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))))) (and b!3872295 b_free!104583 (= (toChars!8667 (transformation!6380 (h!46552 (t!314515 rules!2768)))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))))) (and b!3871672 b_free!104559 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))))) (and b!3871668 b_free!104567 (= (toChars!8667 (transformation!6380 (h!46552 rules!2768))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))))) b_lambda!113099)))

(declare-fun b_lambda!113101 () Bool)

(assert (= b_lambda!113089 (or (and b!3871677 b_free!104563 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 prefixTokens!80)))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))))) (and b!3872332 b_free!104587 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 (t!314516 prefixTokens!80))))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))))) (and b!3871668 b_free!104567 (= (toChars!8667 (transformation!6380 (h!46552 rules!2768))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))))) (and b!3872295 b_free!104583 (= (toChars!8667 (transformation!6380 (h!46552 (t!314515 rules!2768)))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))))) (and b!3872344 b_free!104591 (= (toChars!8667 (transformation!6380 (rule!9268 (h!46553 (t!314516 suffixTokens!72))))) (toChars!8667 (transformation!6380 (rule!9268 (h!46553 suffixTokens!72)))))) (and b!3871672 b_free!104559) b_lambda!113101)))

(check-sat (not b!3872180) b_and!290293 (not d!1146697) (not tb!224573) (not b!3872230) (not d!1146699) (not d!1146863) (not b!3872207) (not b!3872339) (not d!1146823) (not b!3872201) (not b!3871952) (not b!3872245) (not b!3871951) (not b!3871974) (not b_lambda!113095) (not d!1146855) (not b!3872313) (not b!3872269) (not b!3872068) (not d!1146893) (not d!1146885) (not b!3872074) (not d!1146831) (not b!3872204) (not b!3872235) (not b!3872078) (not d!1146859) (not b!3872340) (not b!3872329) (not b!3872268) (not d!1146689) (not b!3871918) (not b!3872072) (not d!1146891) (not b!3871887) (not b!3872267) b_and!290285 (not b_lambda!113101) (not b!3871953) (not d!1146889) b_and!290281 (not d!1146709) (not b!3871899) (not tb!224607) (not b!3872333) (not b!3872179) (not b!3872069) (not b!3871998) (not b!3872309) (not b_next!105285) (not b!3872331) (not b!3872177) (not b!3871876) b_and!290289 tp_is_empty!19541 (not b!3872283) (not b!3872243) (not b!3872338) (not b!3872226) (not b_next!105263) (not b!3871886) (not d!1146701) (not b!3872342) (not b!3872209) (not b!3872203) (not b!3871939) b_and!290275 (not b!3872280) (not b!3871925) (not b!3872279) (not d!1146839) (not b_next!105269) (not b!3872273) (not b!3872266) (not b!3871874) (not d!1146819) (not b!3871923) (not b!3871927) (not b!3872202) (not b!3872246) (not d!1146773) (not d!1146771) (not d!1146729) (not tb!224621) (not d!1146825) (not d!1146853) (not b!3872227) (not b!3872312) (not b!3872237) (not d!1146845) (not b!3872191) (not d!1146695) (not b!3872005) (not b_next!105267) (not b!3872224) (not d!1146843) (not d!1146693) (not b!3871928) (not d!1146781) (not d!1146903) (not b_next!105287) (not b!3871914) (not d!1146835) (not b!3872311) (not b!3872294) (not b!3872318) (not b!3872067) (not d!1146907) (not b!3872220) (not bm!282739) (not d!1146849) (not d!1146827) (not b!3871977) (not b_next!105289) (not b!3872271) b_and!290291 b_and!290283 (not d!1146705) (not d!1146875) (not b!3872071) (not b_lambda!113097) (not d!1146829) b_and!290287 (not b!3871912) (not b!3872082) (not b!3871799) (not b!3871875) (not b!3871896) (not b!3871924) (not b!3872341) (not b!3872080) (not b_next!105295) b_and!290279 (not b!3871915) (not b!3872343) (not b!3872330) (not b!3872211) (not d!1146873) (not b_lambda!113099) (not b!3872007) (not b!3871919) (not b!3872270) b_and!290277 (not b!3872233) (not b!3872293) b_and!290271 (not b!3872307) (not b!3872308) (not b!3872216) (not d!1146841) (not b!3872208) (not b!3872070) (not d!1146707) (not b_next!105291) (not d!1146711) (not b!3872234) (not b!3872242) (not b!3871997) (not b_next!105271) (not b!3872337) (not b!3872073) (not b!3872278) (not b!3872232) (not b!3872136) (not b!3872335) (not b!3871973) b_and!290273 (not b!3871940) (not b_next!105265) (not d!1146775) (not d!1146901) (not d!1146685) (not b!3872144) (not b!3872003) (not b_next!105261) (not d!1146851) (not d!1146675) (not d!1146881) (not b_next!105293) (not d!1146671) (not b!3871978) (not d!1146639) (not b!3872083) (not d!1146883) (not b!3872228) (not b!3872276) (not b!3872142) (not b!3872336) (not b!3872219) (not b!3871895) (not d!1146717) (not b!3872196) (not b!3872241) (not d!1146869) (not b!3872272) (not b!3872079) (not tb!224627) (not b!3872282) (not b!3871900) (not b!3872238))
(check-sat b_and!290285 b_and!290281 (not b_next!105285) b_and!290289 (not b_next!105263) b_and!290275 (not b_next!105269) b_and!290293 (not b_next!105267) (not b_next!105287) (not b_next!105289) (not b_next!105291) (not b_next!105271) (not b_next!105261) (not b_next!105293) b_and!290291 b_and!290283 b_and!290287 (not b_next!105295) b_and!290279 b_and!290277 b_and!290271 b_and!290273 (not b_next!105265))
