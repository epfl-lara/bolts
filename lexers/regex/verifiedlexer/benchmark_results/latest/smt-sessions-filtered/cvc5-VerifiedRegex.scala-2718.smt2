; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!146192 () Bool)

(assert start!146192)

(declare-fun res!699191 () Bool)

(declare-fun e!1007663 () Bool)

(assert (=> start!146192 (=> (not res!699191) (not e!1007663))))

(declare-datatypes ((List!17157 0))(
  ( (Nil!17087) (Cons!17087 (h!22488 (_ BitVec 16)) (t!142454 List!17157)) )
))
(declare-datatypes ((TokenValue!3086 0))(
  ( (FloatLiteralValue!6172 (text!22047 List!17157)) (TokenValueExt!3085 (__x!11474 Int)) (Broken!15430 (value!95034 List!17157)) (Object!3155) (End!3086) (Def!3086) (Underscore!3086) (Match!3086) (Else!3086) (Error!3086) (Case!3086) (If!3086) (Extends!3086) (Abstract!3086) (Class!3086) (Val!3086) (DelimiterValue!6172 (del!3146 List!17157)) (KeywordValue!3092 (value!95035 List!17157)) (CommentValue!6172 (value!95036 List!17157)) (WhitespaceValue!6172 (value!95037 List!17157)) (IndentationValue!3086 (value!95038 List!17157)) (String!19763) (Int32!3086) (Broken!15431 (value!95039 List!17157)) (Boolean!3087) (Unit!26343) (OperatorValue!3089 (op!3146 List!17157)) (IdentifierValue!6172 (value!95040 List!17157)) (IdentifierValue!6173 (value!95041 List!17157)) (WhitespaceValue!6173 (value!95042 List!17157)) (True!6172) (False!6172) (Broken!15432 (value!95043 List!17157)) (Broken!15433 (value!95044 List!17157)) (True!6173) (RightBrace!3086) (RightBracket!3086) (Colon!3086) (Null!3086) (Comma!3086) (LeftBracket!3086) (False!6173) (LeftBrace!3086) (ImaginaryLiteralValue!3086 (text!22048 List!17157)) (StringLiteralValue!9258 (value!95045 List!17157)) (EOFValue!3086 (value!95046 List!17157)) (IdentValue!3086 (value!95047 List!17157)) (DelimiterValue!6173 (value!95048 List!17157)) (DedentValue!3086 (value!95049 List!17157)) (NewLineValue!3086 (value!95050 List!17157)) (IntegerValue!9258 (value!95051 (_ BitVec 32)) (text!22049 List!17157)) (IntegerValue!9259 (value!95052 Int) (text!22050 List!17157)) (Times!3086) (Or!3086) (Equal!3086) (Minus!3086) (Broken!15434 (value!95053 List!17157)) (And!3086) (Div!3086) (LessEqual!3086) (Mod!3086) (Concat!7410) (Not!3086) (Plus!3086) (SpaceValue!3086 (value!95054 List!17157)) (IntegerValue!9260 (value!95055 Int) (text!22051 List!17157)) (StringLiteralValue!9259 (text!22052 List!17157)) (FloatLiteralValue!6173 (text!22053 List!17157)) (BytesLiteralValue!3086 (value!95056 List!17157)) (CommentValue!6173 (value!95057 List!17157)) (StringLiteralValue!9260 (value!95058 List!17157)) (ErrorTokenValue!3086 (msg!3147 List!17157)) )
))
(declare-datatypes ((C!8822 0))(
  ( (C!8823 (val!5007 Int)) )
))
(declare-datatypes ((List!17158 0))(
  ( (Nil!17088) (Cons!17088 (h!22489 C!8822) (t!142455 List!17158)) )
))
(declare-datatypes ((IArray!11285 0))(
  ( (IArray!11286 (innerList!5700 List!17158)) )
))
(declare-datatypes ((Conc!5640 0))(
  ( (Node!5640 (left!13840 Conc!5640) (right!14170 Conc!5640) (csize!11510 Int) (cheight!5851 Int)) (Leaf!8359 (xs!8444 IArray!11285) (csize!11511 Int)) (Empty!5640) )
))
(declare-datatypes ((BalanceConc!11224 0))(
  ( (BalanceConc!11225 (c!254267 Conc!5640)) )
))
(declare-datatypes ((Regex!4324 0))(
  ( (ElementMatch!4324 (c!254268 C!8822)) (Concat!7411 (regOne!9160 Regex!4324) (regTwo!9160 Regex!4324)) (EmptyExpr!4324) (Star!4324 (reg!4653 Regex!4324)) (EmptyLang!4324) (Union!4324 (regOne!9161 Regex!4324) (regTwo!9161 Regex!4324)) )
))
(declare-datatypes ((String!19764 0))(
  ( (String!19765 (value!95059 String)) )
))
(declare-datatypes ((TokenValueInjection!5832 0))(
  ( (TokenValueInjection!5833 (toValue!4387 Int) (toChars!4246 Int)) )
))
(declare-datatypes ((Rule!5792 0))(
  ( (Rule!5793 (regex!2996 Regex!4324) (tag!3260 String!19764) (isSeparator!2996 Bool) (transformation!2996 TokenValueInjection!5832)) )
))
(declare-datatypes ((Token!5558 0))(
  ( (Token!5559 (value!95060 TokenValue!3086) (rule!4782 Rule!5792) (size!13835 Int) (originalCharacters!3810 List!17158)) )
))
(declare-datatypes ((List!17159 0))(
  ( (Nil!17089) (Cons!17089 (h!22490 Token!5558) (t!142456 List!17159)) )
))
(declare-datatypes ((IArray!11287 0))(
  ( (IArray!11288 (innerList!5701 List!17159)) )
))
(declare-datatypes ((Conc!5641 0))(
  ( (Node!5641 (left!13841 Conc!5641) (right!14171 Conc!5641) (csize!11512 Int) (cheight!5852 Int)) (Leaf!8360 (xs!8445 IArray!11287) (csize!11513 Int)) (Empty!5641) )
))
(declare-datatypes ((BalanceConc!11226 0))(
  ( (BalanceConc!11227 (c!254269 Conc!5641)) )
))
(declare-datatypes ((List!17160 0))(
  ( (Nil!17090) (Cons!17090 (h!22491 Rule!5792) (t!142457 List!17160)) )
))
(declare-datatypes ((PrintableTokens!1210 0))(
  ( (PrintableTokens!1211 (rules!12135 List!17160) (tokens!2225 BalanceConc!11226)) )
))
(declare-fun thiss!10002 () PrintableTokens!1210)

(declare-fun lt!543806 () List!17159)

(declare-fun list!6580 (BalanceConc!11226) List!17159)

(declare-datatypes ((tuple2!16636 0))(
  ( (tuple2!16637 (_1!9720 BalanceConc!11226) (_2!9720 BalanceConc!11224)) )
))
(declare-datatypes ((LexerInterface!2625 0))(
  ( (LexerInterfaceExt!2622 (__x!11475 Int)) (Lexer!2623) )
))
(declare-fun lex!1123 (LexerInterface!2625 List!17160 BalanceConc!11224) tuple2!16636)

(declare-fun print!1162 (LexerInterface!2625 BalanceConc!11226) BalanceConc!11224)

(assert (=> start!146192 (= res!699191 (= (list!6580 (_1!9720 (lex!1123 Lexer!2623 (rules!12135 thiss!10002) (print!1162 Lexer!2623 (tokens!2225 thiss!10002))))) lt!543806))))

(declare-datatypes ((Unit!26344 0))(
  ( (Unit!26345) )
))
(declare-fun lt!543805 () Unit!26344)

(declare-fun theoremInvertabilityWhenTokenListSeparable!94 (LexerInterface!2625 List!17160 List!17159) Unit!26344)

(assert (=> start!146192 (= lt!543805 (theoremInvertabilityWhenTokenListSeparable!94 Lexer!2623 (rules!12135 thiss!10002) lt!543806))))

(assert (=> start!146192 (= lt!543806 (list!6580 (tokens!2225 thiss!10002)))))

(assert (=> start!146192 e!1007663))

(declare-fun e!1007664 () Bool)

(declare-fun inv!22488 (PrintableTokens!1210) Bool)

(assert (=> start!146192 (and (inv!22488 thiss!10002) e!1007664)))

(declare-fun b!1568975 () Bool)

(declare-fun res!699192 () Bool)

(assert (=> b!1568975 (=> (not res!699192) (not e!1007663))))

(declare-fun isEmpty!10227 (List!17160) Bool)

(assert (=> b!1568975 (= res!699192 (not (isEmpty!10227 (rules!12135 thiss!10002))))))

(declare-fun b!1568977 () Bool)

(declare-fun e!1007665 () Bool)

(declare-fun tp!462107 () Bool)

(declare-fun inv!22489 (BalanceConc!11226) Bool)

(assert (=> b!1568977 (= e!1007664 (and tp!462107 (inv!22489 (tokens!2225 thiss!10002)) e!1007665))))

(declare-fun b!1568978 () Bool)

(declare-fun tp!462108 () Bool)

(declare-fun inv!22490 (Conc!5641) Bool)

(assert (=> b!1568978 (= e!1007665 (and (inv!22490 (c!254269 (tokens!2225 thiss!10002))) tp!462108))))

(declare-fun b!1568976 () Bool)

(declare-fun rulesInvariant!2294 (LexerInterface!2625 List!17160) Bool)

(assert (=> b!1568976 (= e!1007663 (not (rulesInvariant!2294 Lexer!2623 (rules!12135 thiss!10002))))))

(assert (= (and start!146192 res!699191) b!1568975))

(assert (= (and b!1568975 res!699192) b!1568976))

(assert (= b!1568977 b!1568978))

(assert (= start!146192 b!1568977))

(declare-fun m!1843137 () Bool)

(assert (=> b!1568976 m!1843137))

(declare-fun m!1843139 () Bool)

(assert (=> b!1568975 m!1843139))

(declare-fun m!1843141 () Bool)

(assert (=> b!1568978 m!1843141))

(declare-fun m!1843143 () Bool)

(assert (=> b!1568977 m!1843143))

(declare-fun m!1843145 () Bool)

(assert (=> start!146192 m!1843145))

(declare-fun m!1843147 () Bool)

(assert (=> start!146192 m!1843147))

(declare-fun m!1843149 () Bool)

(assert (=> start!146192 m!1843149))

(declare-fun m!1843151 () Bool)

(assert (=> start!146192 m!1843151))

(declare-fun m!1843153 () Bool)

(assert (=> start!146192 m!1843153))

(assert (=> start!146192 m!1843149))

(declare-fun m!1843155 () Bool)

(assert (=> start!146192 m!1843155))

(push 1)

(assert (not b!1568978))

(assert (not b!1568977))

(assert (not b!1568976))

(assert (not b!1568975))

(assert (not start!146192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!465429 () Bool)

(assert (=> d!465429 (= (isEmpty!10227 (rules!12135 thiss!10002)) (is-Nil!17090 (rules!12135 thiss!10002)))))

(assert (=> b!1568975 d!465429))

(declare-fun d!465431 () Bool)

(declare-fun res!699201 () Bool)

(declare-fun e!1007677 () Bool)

(assert (=> d!465431 (=> (not res!699201) (not e!1007677))))

(declare-fun rulesValid!1059 (LexerInterface!2625 List!17160) Bool)

(assert (=> d!465431 (= res!699201 (rulesValid!1059 Lexer!2623 (rules!12135 thiss!10002)))))

(assert (=> d!465431 (= (rulesInvariant!2294 Lexer!2623 (rules!12135 thiss!10002)) e!1007677)))

(declare-fun b!1568993 () Bool)

(declare-datatypes ((List!17165 0))(
  ( (Nil!17095) (Cons!17095 (h!22496 String!19764) (t!142462 List!17165)) )
))
(declare-fun noDuplicateTag!1059 (LexerInterface!2625 List!17160 List!17165) Bool)

(assert (=> b!1568993 (= e!1007677 (noDuplicateTag!1059 Lexer!2623 (rules!12135 thiss!10002) Nil!17095))))

(assert (= (and d!465431 res!699201) b!1568993))

(declare-fun m!1843177 () Bool)

(assert (=> d!465431 m!1843177))

(declare-fun m!1843179 () Bool)

(assert (=> b!1568993 m!1843179))

(assert (=> b!1568976 d!465431))

(declare-fun d!465433 () Bool)

(declare-fun e!1007692 () Bool)

(assert (=> d!465433 e!1007692))

(declare-fun res!699210 () Bool)

(assert (=> d!465433 (=> (not res!699210) (not e!1007692))))

(declare-fun seqFromList!1792 (List!17159) BalanceConc!11226)

(assert (=> d!465433 (= res!699210 (= (list!6580 (_1!9720 (lex!1123 Lexer!2623 (rules!12135 thiss!10002) (print!1162 Lexer!2623 (seqFromList!1792 lt!543806))))) lt!543806))))

(declare-fun lt!543886 () Unit!26344)

(declare-fun e!1007691 () Unit!26344)

(assert (=> d!465433 (= lt!543886 e!1007691)))

(declare-fun c!254279 () Bool)

(assert (=> d!465433 (= c!254279 (or (is-Nil!17089 lt!543806) (is-Nil!17089 (t!142456 lt!543806))))))

(assert (=> d!465433 (not (isEmpty!10227 (rules!12135 thiss!10002)))))

(assert (=> d!465433 (= (theoremInvertabilityWhenTokenListSeparable!94 Lexer!2623 (rules!12135 thiss!10002) lt!543806) lt!543886)))

(declare-fun b!1569012 () Bool)

(declare-fun Unit!26349 () Unit!26344)

(assert (=> b!1569012 (= e!1007691 Unit!26349)))

(declare-fun b!1569013 () Bool)

(declare-fun Unit!26350 () Unit!26344)

(assert (=> b!1569013 (= e!1007691 Unit!26350)))

(declare-fun lt!543872 () BalanceConc!11224)

(assert (=> b!1569013 (= lt!543872 (print!1162 Lexer!2623 (seqFromList!1792 lt!543806)))))

(declare-fun lt!543875 () BalanceConc!11224)

(assert (=> b!1569013 (= lt!543875 (print!1162 Lexer!2623 (seqFromList!1792 (t!142456 lt!543806))))))

(declare-fun lt!543885 () tuple2!16636)

(assert (=> b!1569013 (= lt!543885 (lex!1123 Lexer!2623 (rules!12135 thiss!10002) lt!543875))))

(declare-fun lt!543877 () List!17158)

(declare-fun list!6582 (BalanceConc!11224) List!17158)

(declare-fun charsOf!1664 (Token!5558) BalanceConc!11224)

(assert (=> b!1569013 (= lt!543877 (list!6582 (charsOf!1664 (h!22490 lt!543806))))))

(declare-fun lt!543870 () List!17158)

(assert (=> b!1569013 (= lt!543870 (list!6582 lt!543875))))

(declare-fun lt!543878 () Unit!26344)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!800 (List!17158 List!17158) Unit!26344)

(assert (=> b!1569013 (= lt!543878 (lemmaConcatTwoListThenFirstIsPrefix!800 lt!543877 lt!543870))))

(declare-fun isPrefix!1275 (List!17158 List!17158) Bool)

(declare-fun ++!4443 (List!17158 List!17158) List!17158)

(assert (=> b!1569013 (isPrefix!1275 lt!543877 (++!4443 lt!543877 lt!543870))))

(declare-fun lt!543892 () Unit!26344)

(assert (=> b!1569013 (= lt!543892 lt!543878)))

(declare-fun lt!543890 () Unit!26344)

(assert (=> b!1569013 (= lt!543890 (theoremInvertabilityWhenTokenListSeparable!94 Lexer!2623 (rules!12135 thiss!10002) (t!142456 lt!543806)))))

(declare-fun lt!543876 () Unit!26344)

(declare-fun seqFromListBHdTlConstructive!104 (Token!5558 List!17159 BalanceConc!11226) Unit!26344)

(assert (=> b!1569013 (= lt!543876 (seqFromListBHdTlConstructive!104 (h!22490 (t!142456 lt!543806)) (t!142456 (t!142456 lt!543806)) (_1!9720 lt!543885)))))

(declare-fun prepend!491 (BalanceConc!11226 Token!5558) BalanceConc!11226)

(assert (=> b!1569013 (= (list!6580 (_1!9720 lt!543885)) (list!6580 (prepend!491 (seqFromList!1792 (t!142456 (t!142456 lt!543806))) (h!22490 (t!142456 lt!543806)))))))

(declare-fun lt!543893 () Unit!26344)

(assert (=> b!1569013 (= lt!543893 lt!543876)))

(declare-datatypes ((tuple2!16640 0))(
  ( (tuple2!16641 (_1!9722 Token!5558) (_2!9722 List!17158)) )
))
(declare-datatypes ((Option!3074 0))(
  ( (None!3073) (Some!3073 (v!23862 tuple2!16640)) )
))
(declare-fun lt!543869 () Option!3074)

(declare-fun maxPrefix!1228 (LexerInterface!2625 List!17160 List!17158) Option!3074)

(assert (=> b!1569013 (= lt!543869 (maxPrefix!1228 Lexer!2623 (rules!12135 thiss!10002) (list!6582 lt!543872)))))

(declare-fun singletonSeq!1360 (Token!5558) BalanceConc!11226)

(declare-fun printTailRec!714 (LexerInterface!2625 BalanceConc!11226 Int BalanceConc!11224) BalanceConc!11224)

(assert (=> b!1569013 (= (print!1162 Lexer!2623 (singletonSeq!1360 (h!22490 lt!543806))) (printTailRec!714 Lexer!2623 (singletonSeq!1360 (h!22490 lt!543806)) 0 (BalanceConc!11225 Empty!5640)))))

(declare-fun lt!543871 () Unit!26344)

(declare-fun Unit!26351 () Unit!26344)

(assert (=> b!1569013 (= lt!543871 Unit!26351)))

(declare-fun lt!543880 () Unit!26344)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!248 (LexerInterface!2625 List!17160 List!17158 List!17158) Unit!26344)

(assert (=> b!1569013 (= lt!543880 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!248 Lexer!2623 (rules!12135 thiss!10002) (list!6582 (charsOf!1664 (h!22490 lt!543806))) (list!6582 lt!543875)))))

(assert (=> b!1569013 (= (list!6582 (charsOf!1664 (h!22490 lt!543806))) (originalCharacters!3810 (h!22490 lt!543806)))))

(declare-fun lt!543879 () Unit!26344)

(declare-fun Unit!26352 () Unit!26344)

(assert (=> b!1569013 (= lt!543879 Unit!26352)))

(declare-fun singletonSeq!1361 (C!8822) BalanceConc!11224)

(declare-fun apply!4150 (BalanceConc!11224 Int) C!8822)

(declare-fun head!3140 (List!17158) C!8822)

(assert (=> b!1569013 (= (list!6582 (singletonSeq!1361 (apply!4150 (charsOf!1664 (h!22490 (t!142456 lt!543806))) 0))) (Cons!17088 (head!3140 (originalCharacters!3810 (h!22490 (t!142456 lt!543806)))) Nil!17088))))

(declare-fun lt!543884 () Unit!26344)

(declare-fun Unit!26353 () Unit!26344)

(assert (=> b!1569013 (= lt!543884 Unit!26353)))

(assert (=> b!1569013 (= (list!6582 (singletonSeq!1361 (apply!4150 (charsOf!1664 (h!22490 (t!142456 lt!543806))) 0))) (Cons!17088 (head!3140 (list!6582 lt!543875)) Nil!17088))))

(declare-fun lt!543874 () Unit!26344)

(declare-fun Unit!26354 () Unit!26344)

(assert (=> b!1569013 (= lt!543874 Unit!26354)))

(declare-fun head!3141 (BalanceConc!11224) C!8822)

(assert (=> b!1569013 (= (list!6582 (singletonSeq!1361 (apply!4150 (charsOf!1664 (h!22490 (t!142456 lt!543806))) 0))) (Cons!17088 (head!3141 lt!543875) Nil!17088))))

(declare-fun lt!543883 () Unit!26344)

(declare-fun Unit!26355 () Unit!26344)

(assert (=> b!1569013 (= lt!543883 Unit!26355)))

(declare-fun isDefined!2469 (Option!3074) Bool)

(assert (=> b!1569013 (isDefined!2469 (maxPrefix!1228 Lexer!2623 (rules!12135 thiss!10002) (originalCharacters!3810 (h!22490 lt!543806))))))

(declare-fun lt!543873 () Unit!26344)

(declare-fun Unit!26356 () Unit!26344)

(assert (=> b!1569013 (= lt!543873 Unit!26356)))

(assert (=> b!1569013 (isDefined!2469 (maxPrefix!1228 Lexer!2623 (rules!12135 thiss!10002) (list!6582 (charsOf!1664 (h!22490 lt!543806)))))))

(declare-fun lt!543888 () Unit!26344)

(declare-fun Unit!26357 () Unit!26344)

(assert (=> b!1569013 (= lt!543888 Unit!26357)))

(declare-fun lt!543891 () Unit!26344)

(declare-fun Unit!26358 () Unit!26344)

(assert (=> b!1569013 (= lt!543891 Unit!26358)))

(declare-fun get!4906 (Option!3074) tuple2!16640)

(assert (=> b!1569013 (= (_1!9722 (get!4906 (maxPrefix!1228 Lexer!2623 (rules!12135 thiss!10002) (list!6582 (charsOf!1664 (h!22490 lt!543806)))))) (h!22490 lt!543806))))

(declare-fun lt!543882 () Unit!26344)

(declare-fun Unit!26359 () Unit!26344)

(assert (=> b!1569013 (= lt!543882 Unit!26359)))

(declare-fun isEmpty!10229 (List!17158) Bool)

(assert (=> b!1569013 (isEmpty!10229 (_2!9722 (get!4906 (maxPrefix!1228 Lexer!2623 (rules!12135 thiss!10002) (list!6582 (charsOf!1664 (h!22490 lt!543806)))))))))

(declare-fun lt!543881 () Unit!26344)

(declare-fun Unit!26360 () Unit!26344)

(assert (=> b!1569013 (= lt!543881 Unit!26360)))

(declare-fun matchR!1896 (Regex!4324 List!17158) Bool)

(assert (=> b!1569013 (matchR!1896 (regex!2996 (rule!4782 (h!22490 lt!543806))) (list!6582 (charsOf!1664 (h!22490 lt!543806))))))

(declare-fun lt!543868 () Unit!26344)

(declare-fun Unit!26361 () Unit!26344)

(assert (=> b!1569013 (= lt!543868 Unit!26361)))

(assert (=> b!1569013 (= (rule!4782 (h!22490 lt!543806)) (rule!4782 (h!22490 lt!543806)))))

(declare-fun lt!543889 () Unit!26344)

(declare-fun Unit!26362 () Unit!26344)

(assert (=> b!1569013 (= lt!543889 Unit!26362)))

(declare-fun lt!543887 () Unit!26344)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!46 (LexerInterface!2625 List!17160 Token!5558 Rule!5792 List!17158) Unit!26344)

(assert (=> b!1569013 (= lt!543887 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!46 Lexer!2623 (rules!12135 thiss!10002) (h!22490 lt!543806) (rule!4782 (h!22490 lt!543806)) (list!6582 lt!543875)))))

(declare-fun b!1569014 () Bool)

(declare-fun isEmpty!10230 (BalanceConc!11224) Bool)

(assert (=> b!1569014 (= e!1007692 (isEmpty!10230 (_2!9720 (lex!1123 Lexer!2623 (rules!12135 thiss!10002) (print!1162 Lexer!2623 (seqFromList!1792 lt!543806))))))))

(assert (= (and d!465433 c!254279) b!1569012))

(assert (= (and d!465433 (not c!254279)) b!1569013))

(assert (= (and d!465433 res!699210) b!1569014))

(declare-fun m!1843197 () Bool)

(assert (=> d!465433 m!1843197))

(declare-fun m!1843199 () Bool)

(assert (=> d!465433 m!1843199))

(assert (=> d!465433 m!1843139))

(declare-fun m!1843201 () Bool)

(assert (=> d!465433 m!1843201))

(assert (=> d!465433 m!1843199))

(declare-fun m!1843203 () Bool)

(assert (=> d!465433 m!1843203))

(assert (=> d!465433 m!1843197))

(declare-fun m!1843205 () Bool)

(assert (=> b!1569013 m!1843205))

(declare-fun m!1843207 () Bool)

(assert (=> b!1569013 m!1843207))

(declare-fun m!1843209 () Bool)

(assert (=> b!1569013 m!1843209))

(declare-fun m!1843211 () Bool)

(assert (=> b!1569013 m!1843211))

(declare-fun m!1843213 () Bool)

(assert (=> b!1569013 m!1843213))

(declare-fun m!1843215 () Bool)

(assert (=> b!1569013 m!1843215))

(declare-fun m!1843217 () Bool)

(assert (=> b!1569013 m!1843217))

(declare-fun m!1843219 () Bool)

(assert (=> b!1569013 m!1843219))

(declare-fun m!1843221 () Bool)

(assert (=> b!1569013 m!1843221))

(declare-fun m!1843223 () Bool)

(assert (=> b!1569013 m!1843223))

(declare-fun m!1843225 () Bool)

(assert (=> b!1569013 m!1843225))

(assert (=> b!1569013 m!1843221))

(assert (=> b!1569013 m!1843215))

(assert (=> b!1569013 m!1843215))

(declare-fun m!1843227 () Bool)

(assert (=> b!1569013 m!1843227))

(declare-fun m!1843229 () Bool)

(assert (=> b!1569013 m!1843229))

(declare-fun m!1843231 () Bool)

(assert (=> b!1569013 m!1843231))

(assert (=> b!1569013 m!1843205))

(declare-fun m!1843233 () Bool)

(assert (=> b!1569013 m!1843233))

(declare-fun m!1843235 () Bool)

(assert (=> b!1569013 m!1843235))

(declare-fun m!1843237 () Bool)

(assert (=> b!1569013 m!1843237))

(assert (=> b!1569013 m!1843219))

(assert (=> b!1569013 m!1843207))

(declare-fun m!1843239 () Bool)

(assert (=> b!1569013 m!1843239))

(declare-fun m!1843241 () Bool)

(assert (=> b!1569013 m!1843241))

(declare-fun m!1843243 () Bool)

(assert (=> b!1569013 m!1843243))

(declare-fun m!1843245 () Bool)

(assert (=> b!1569013 m!1843245))

(assert (=> b!1569013 m!1843237))

(declare-fun m!1843247 () Bool)

(assert (=> b!1569013 m!1843247))

(declare-fun m!1843249 () Bool)

(assert (=> b!1569013 m!1843249))

(declare-fun m!1843251 () Bool)

(assert (=> b!1569013 m!1843251))

(assert (=> b!1569013 m!1843221))

(declare-fun m!1843253 () Bool)

(assert (=> b!1569013 m!1843253))

(assert (=> b!1569013 m!1843245))

(declare-fun m!1843255 () Bool)

(assert (=> b!1569013 m!1843255))

(assert (=> b!1569013 m!1843239))

(assert (=> b!1569013 m!1843211))

(declare-fun m!1843257 () Bool)

(assert (=> b!1569013 m!1843257))

(assert (=> b!1569013 m!1843219))

(declare-fun m!1843259 () Bool)

(assert (=> b!1569013 m!1843259))

(declare-fun m!1843261 () Bool)

(assert (=> b!1569013 m!1843261))

(assert (=> b!1569013 m!1843221))

(declare-fun m!1843263 () Bool)

(assert (=> b!1569013 m!1843263))

(assert (=> b!1569013 m!1843219))

(declare-fun m!1843265 () Bool)

(assert (=> b!1569013 m!1843265))

(assert (=> b!1569013 m!1843249))

(assert (=> b!1569013 m!1843209))

(declare-fun m!1843267 () Bool)

(assert (=> b!1569013 m!1843267))

(assert (=> b!1569013 m!1843231))

(declare-fun m!1843269 () Bool)

(assert (=> b!1569013 m!1843269))

(assert (=> b!1569013 m!1843255))

(declare-fun m!1843271 () Bool)

(assert (=> b!1569013 m!1843271))

(assert (=> b!1569013 m!1843265))

(declare-fun m!1843273 () Bool)

(assert (=> b!1569013 m!1843273))

(assert (=> b!1569013 m!1843197))

(assert (=> b!1569013 m!1843197))

(assert (=> b!1569013 m!1843199))

(assert (=> b!1569013 m!1843265))

(declare-fun m!1843275 () Bool)

(assert (=> b!1569013 m!1843275))

(assert (=> b!1569014 m!1843197))

(assert (=> b!1569014 m!1843197))

(assert (=> b!1569014 m!1843199))

(assert (=> b!1569014 m!1843199))

(assert (=> b!1569014 m!1843203))

(declare-fun m!1843277 () Bool)

(assert (=> b!1569014 m!1843277))

(assert (=> start!146192 d!465433))

(declare-fun d!465445 () Bool)

(declare-fun lt!543896 () BalanceConc!11224)

(declare-fun printList!778 (LexerInterface!2625 List!17159) List!17158)

(assert (=> d!465445 (= (list!6582 lt!543896) (printList!778 Lexer!2623 (list!6580 (tokens!2225 thiss!10002))))))

(assert (=> d!465445 (= lt!543896 (printTailRec!714 Lexer!2623 (tokens!2225 thiss!10002) 0 (BalanceConc!11225 Empty!5640)))))

(assert (=> d!465445 (= (print!1162 Lexer!2623 (tokens!2225 thiss!10002)) lt!543896)))

(declare-fun bs!390004 () Bool)

(assert (= bs!390004 d!465445))

(declare-fun m!1843279 () Bool)

(assert (=> bs!390004 m!1843279))

(assert (=> bs!390004 m!1843145))

(assert (=> bs!390004 m!1843145))

(declare-fun m!1843281 () Bool)

(assert (=> bs!390004 m!1843281))

(declare-fun m!1843283 () Bool)

(assert (=> bs!390004 m!1843283))

(assert (=> start!146192 d!465445))

(declare-fun d!465447 () Bool)

(declare-fun list!6583 (Conc!5641) List!17159)

(assert (=> d!465447 (= (list!6580 (tokens!2225 thiss!10002)) (list!6583 (c!254269 (tokens!2225 thiss!10002))))))

(declare-fun bs!390005 () Bool)

(assert (= bs!390005 d!465447))

(declare-fun m!1843285 () Bool)

(assert (=> bs!390005 m!1843285))

(assert (=> start!146192 d!465447))

(declare-fun d!465449 () Bool)

(assert (=> d!465449 (= (list!6580 (_1!9720 (lex!1123 Lexer!2623 (rules!12135 thiss!10002) (print!1162 Lexer!2623 (tokens!2225 thiss!10002))))) (list!6583 (c!254269 (_1!9720 (lex!1123 Lexer!2623 (rules!12135 thiss!10002) (print!1162 Lexer!2623 (tokens!2225 thiss!10002)))))))))

(declare-fun bs!390006 () Bool)

(assert (= bs!390006 d!465449))

(declare-fun m!1843287 () Bool)

(assert (=> bs!390006 m!1843287))

(assert (=> start!146192 d!465449))

(declare-fun d!465451 () Bool)

(declare-fun e!1007701 () Bool)

(assert (=> d!465451 e!1007701))

(declare-fun res!699218 () Bool)

(assert (=> d!465451 (=> (not res!699218) (not e!1007701))))

(declare-fun e!1007699 () Bool)

(assert (=> d!465451 (= res!699218 e!1007699)))

(declare-fun c!254282 () Bool)

(declare-fun lt!543899 () tuple2!16636)

(declare-fun size!13837 (BalanceConc!11226) Int)

(assert (=> d!465451 (= c!254282 (> (size!13837 (_1!9720 lt!543899)) 0))))

(declare-fun lexTailRecV2!484 (LexerInterface!2625 List!17160 BalanceConc!11224 BalanceConc!11224 BalanceConc!11224 BalanceConc!11226) tuple2!16636)

(assert (=> d!465451 (= lt!543899 (lexTailRecV2!484 Lexer!2623 (rules!12135 thiss!10002) (print!1162 Lexer!2623 (tokens!2225 thiss!10002)) (BalanceConc!11225 Empty!5640) (print!1162 Lexer!2623 (tokens!2225 thiss!10002)) (BalanceConc!11227 Empty!5641)))))

(assert (=> d!465451 (= (lex!1123 Lexer!2623 (rules!12135 thiss!10002) (print!1162 Lexer!2623 (tokens!2225 thiss!10002))) lt!543899)))

(declare-fun b!1569025 () Bool)

(declare-fun e!1007700 () Bool)

(assert (=> b!1569025 (= e!1007699 e!1007700)))

(declare-fun res!699219 () Bool)

(declare-fun size!13838 (BalanceConc!11224) Int)

(assert (=> b!1569025 (= res!699219 (< (size!13838 (_2!9720 lt!543899)) (size!13838 (print!1162 Lexer!2623 (tokens!2225 thiss!10002)))))))

(assert (=> b!1569025 (=> (not res!699219) (not e!1007700))))

(declare-fun b!1569026 () Bool)

(assert (=> b!1569026 (= e!1007699 (= (_2!9720 lt!543899) (print!1162 Lexer!2623 (tokens!2225 thiss!10002))))))

(declare-fun b!1569027 () Bool)

(declare-datatypes ((tuple2!16642 0))(
  ( (tuple2!16643 (_1!9723 List!17159) (_2!9723 List!17158)) )
))
(declare-fun lexList!761 (LexerInterface!2625 List!17160 List!17158) tuple2!16642)

(assert (=> b!1569027 (= e!1007701 (= (list!6582 (_2!9720 lt!543899)) (_2!9723 (lexList!761 Lexer!2623 (rules!12135 thiss!10002) (list!6582 (print!1162 Lexer!2623 (tokens!2225 thiss!10002)))))))))

(declare-fun b!1569028 () Bool)

(declare-fun isEmpty!10231 (BalanceConc!11226) Bool)

(assert (=> b!1569028 (= e!1007700 (not (isEmpty!10231 (_1!9720 lt!543899))))))

(declare-fun b!1569029 () Bool)

(declare-fun res!699217 () Bool)

(assert (=> b!1569029 (=> (not res!699217) (not e!1007701))))

(assert (=> b!1569029 (= res!699217 (= (list!6580 (_1!9720 lt!543899)) (_1!9723 (lexList!761 Lexer!2623 (rules!12135 thiss!10002) (list!6582 (print!1162 Lexer!2623 (tokens!2225 thiss!10002)))))))))

(assert (= (and d!465451 c!254282) b!1569025))

(assert (= (and d!465451 (not c!254282)) b!1569026))

(assert (= (and b!1569025 res!699219) b!1569028))

(assert (= (and d!465451 res!699218) b!1569029))

(assert (= (and b!1569029 res!699217) b!1569027))

(declare-fun m!1843289 () Bool)

(assert (=> b!1569029 m!1843289))

(assert (=> b!1569029 m!1843149))

(declare-fun m!1843291 () Bool)

(assert (=> b!1569029 m!1843291))

(assert (=> b!1569029 m!1843291))

(declare-fun m!1843293 () Bool)

(assert (=> b!1569029 m!1843293))

(declare-fun m!1843295 () Bool)

(assert (=> b!1569028 m!1843295))

(declare-fun m!1843297 () Bool)

(assert (=> b!1569027 m!1843297))

(assert (=> b!1569027 m!1843149))

(assert (=> b!1569027 m!1843291))

(assert (=> b!1569027 m!1843291))

(assert (=> b!1569027 m!1843293))

(declare-fun m!1843299 () Bool)

(assert (=> b!1569025 m!1843299))

(assert (=> b!1569025 m!1843149))

(declare-fun m!1843301 () Bool)

(assert (=> b!1569025 m!1843301))

(declare-fun m!1843303 () Bool)

(assert (=> d!465451 m!1843303))

(assert (=> d!465451 m!1843149))

(assert (=> d!465451 m!1843149))

(declare-fun m!1843305 () Bool)

(assert (=> d!465451 m!1843305))

(assert (=> start!146192 d!465451))

(declare-fun d!465453 () Bool)

(declare-fun res!699229 () Bool)

(declare-fun e!1007710 () Bool)

(assert (=> d!465453 (=> (not res!699229) (not e!1007710))))

(assert (=> d!465453 (= res!699229 (not (isEmpty!10227 (rules!12135 thiss!10002))))))

(assert (=> d!465453 (= (inv!22488 thiss!10002) e!1007710)))

(declare-fun b!1569045 () Bool)

(declare-fun res!699230 () Bool)

(assert (=> b!1569045 (=> (not res!699230) (not e!1007710))))

(assert (=> b!1569045 (= res!699230 (rulesInvariant!2294 Lexer!2623 (rules!12135 thiss!10002)))))

(declare-fun b!1569046 () Bool)

(declare-fun res!699231 () Bool)

(assert (=> b!1569046 (=> (not res!699231) (not e!1007710))))

(declare-fun rulesProduceEachTokenIndividually!913 (LexerInterface!2625 List!17160 BalanceConc!11226) Bool)

(assert (=> b!1569046 (= res!699231 (rulesProduceEachTokenIndividually!913 Lexer!2623 (rules!12135 thiss!10002) (tokens!2225 thiss!10002)))))

(declare-fun b!1569047 () Bool)

(declare-fun separableTokens!284 (LexerInterface!2625 BalanceConc!11226 List!17160) Bool)

(assert (=> b!1569047 (= e!1007710 (separableTokens!284 Lexer!2623 (tokens!2225 thiss!10002) (rules!12135 thiss!10002)))))

(assert (= (and d!465453 res!699229) b!1569045))

(assert (= (and b!1569045 res!699230) b!1569046))

(assert (= (and b!1569046 res!699231) b!1569047))

(assert (=> d!465453 m!1843139))

(assert (=> b!1569045 m!1843137))

(declare-fun m!1843393 () Bool)

(assert (=> b!1569046 m!1843393))

(declare-fun m!1843395 () Bool)

(assert (=> b!1569047 m!1843395))

(assert (=> start!146192 d!465453))

(declare-fun d!465461 () Bool)

(declare-fun isBalanced!1671 (Conc!5641) Bool)

(assert (=> d!465461 (= (inv!22489 (tokens!2225 thiss!10002)) (isBalanced!1671 (c!254269 (tokens!2225 thiss!10002))))))

(declare-fun bs!390009 () Bool)

(assert (= bs!390009 d!465461))

(declare-fun m!1843397 () Bool)

(assert (=> bs!390009 m!1843397))

(assert (=> b!1568977 d!465461))

(declare-fun d!465463 () Bool)

(declare-fun c!254288 () Bool)

(assert (=> d!465463 (= c!254288 (is-Node!5641 (c!254269 (tokens!2225 thiss!10002))))))

(declare-fun e!1007715 () Bool)

(assert (=> d!465463 (= (inv!22490 (c!254269 (tokens!2225 thiss!10002))) e!1007715)))

(declare-fun b!1569054 () Bool)

(declare-fun inv!22494 (Conc!5641) Bool)

(assert (=> b!1569054 (= e!1007715 (inv!22494 (c!254269 (tokens!2225 thiss!10002))))))

(declare-fun b!1569055 () Bool)

(declare-fun e!1007716 () Bool)

(assert (=> b!1569055 (= e!1007715 e!1007716)))

(declare-fun res!699234 () Bool)

(assert (=> b!1569055 (= res!699234 (not (is-Leaf!8360 (c!254269 (tokens!2225 thiss!10002)))))))

(assert (=> b!1569055 (=> res!699234 e!1007716)))

(declare-fun b!1569056 () Bool)

(declare-fun inv!22495 (Conc!5641) Bool)

(assert (=> b!1569056 (= e!1007716 (inv!22495 (c!254269 (tokens!2225 thiss!10002))))))

(assert (= (and d!465463 c!254288) b!1569054))

(assert (= (and d!465463 (not c!254288)) b!1569055))

(assert (= (and b!1569055 (not res!699234)) b!1569056))

(declare-fun m!1843399 () Bool)

(assert (=> b!1569054 m!1843399))

(declare-fun m!1843401 () Bool)

(assert (=> b!1569056 m!1843401))

(assert (=> b!1568978 d!465463))

(declare-fun b!1569067 () Bool)

(declare-fun b_free!41999 () Bool)

(declare-fun b_next!42703 () Bool)

(assert (=> b!1569067 (= b_free!41999 (not b_next!42703))))

(declare-fun tp!462126 () Bool)

(declare-fun b_and!109569 () Bool)

(assert (=> b!1569067 (= tp!462126 b_and!109569)))

(declare-fun b_free!42001 () Bool)

(declare-fun b_next!42705 () Bool)

(assert (=> b!1569067 (= b_free!42001 (not b_next!42705))))

(declare-fun tp!462125 () Bool)

(declare-fun b_and!109571 () Bool)

(assert (=> b!1569067 (= tp!462125 b_and!109571)))

(declare-fun e!1007727 () Bool)

(assert (=> b!1569067 (= e!1007727 (and tp!462126 tp!462125))))

(declare-fun e!1007725 () Bool)

(declare-fun tp!462123 () Bool)

(declare-fun b!1569066 () Bool)

(declare-fun inv!22485 (String!19764) Bool)

(declare-fun inv!22496 (TokenValueInjection!5832) Bool)

(assert (=> b!1569066 (= e!1007725 (and tp!462123 (inv!22485 (tag!3260 (h!22491 (rules!12135 thiss!10002)))) (inv!22496 (transformation!2996 (h!22491 (rules!12135 thiss!10002)))) e!1007727))))

(declare-fun b!1569065 () Bool)

(declare-fun e!1007728 () Bool)

(declare-fun tp!462124 () Bool)

(assert (=> b!1569065 (= e!1007728 (and e!1007725 tp!462124))))

(assert (=> b!1568977 (= tp!462107 e!1007728)))

(assert (= b!1569066 b!1569067))

(assert (= b!1569065 b!1569066))

(assert (= (and b!1568977 (is-Cons!17090 (rules!12135 thiss!10002))) b!1569065))

(declare-fun m!1843403 () Bool)

(assert (=> b!1569066 m!1843403))

(declare-fun m!1843405 () Bool)

(assert (=> b!1569066 m!1843405))

(declare-fun tp!462135 () Bool)

(declare-fun e!1007734 () Bool)

(declare-fun tp!462133 () Bool)

(declare-fun b!1569076 () Bool)

(assert (=> b!1569076 (= e!1007734 (and (inv!22490 (left!13841 (c!254269 (tokens!2225 thiss!10002)))) tp!462135 (inv!22490 (right!14171 (c!254269 (tokens!2225 thiss!10002)))) tp!462133))))

(declare-fun b!1569078 () Bool)

(declare-fun e!1007733 () Bool)

(declare-fun tp!462134 () Bool)

(assert (=> b!1569078 (= e!1007733 tp!462134)))

(declare-fun b!1569077 () Bool)

(declare-fun inv!22497 (IArray!11287) Bool)

(assert (=> b!1569077 (= e!1007734 (and (inv!22497 (xs!8445 (c!254269 (tokens!2225 thiss!10002)))) e!1007733))))

(assert (=> b!1568978 (= tp!462108 (and (inv!22490 (c!254269 (tokens!2225 thiss!10002))) e!1007734))))

(assert (= (and b!1568978 (is-Node!5641 (c!254269 (tokens!2225 thiss!10002)))) b!1569076))

(assert (= b!1569077 b!1569078))

(assert (= (and b!1568978 (is-Leaf!8360 (c!254269 (tokens!2225 thiss!10002)))) b!1569077))

(declare-fun m!1843407 () Bool)

(assert (=> b!1569076 m!1843407))

(declare-fun m!1843409 () Bool)

(assert (=> b!1569076 m!1843409))

(declare-fun m!1843411 () Bool)

(assert (=> b!1569077 m!1843411))

(assert (=> b!1568978 m!1843141))

(push 1)

(assert (not b!1569014))

(assert (not b!1568978))

(assert (not b!1569056))

(assert (not b_next!42705))

(assert (not b!1569077))

(assert (not b!1569066))

(assert (not b!1569028))

(assert b_and!109569)

(assert (not b!1568993))

(assert (not d!465445))

(assert (not b!1569065))

(assert (not d!465449))

(assert (not b!1569047))

(assert (not b!1569054))

(assert (not b!1569027))

(assert (not d!465461))

(assert (not d!465447))

(assert (not d!465453))

(assert b_and!109571)

(assert (not b_next!42703))

(assert (not b!1569046))

(assert (not b!1569029))

(assert (not d!465451))

(assert (not b!1569013))

(assert (not d!465431))

(assert (not b!1569078))

(assert (not b!1569025))

(assert (not b!1569076))

(assert (not d!465433))

(assert (not b!1569045))

(check-sat)

(pop 1)

(push 1)

(assert b_and!109569)

(assert b_and!109571)

(assert (not b_next!42703))

(assert (not b_next!42705))

(check-sat)

(pop 1)

