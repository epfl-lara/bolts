; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57156 () Bool)

(assert start!57156)

(declare-fun b!601909 () Bool)

(declare-fun b_free!17117 () Bool)

(declare-fun b_next!17133 () Bool)

(assert (=> b!601909 (= b_free!17117 (not b_next!17133))))

(declare-fun tp!187372 () Bool)

(declare-fun b_and!59443 () Bool)

(assert (=> b!601909 (= tp!187372 b_and!59443)))

(declare-fun b_free!17119 () Bool)

(declare-fun b_next!17135 () Bool)

(assert (=> b!601909 (= b_free!17119 (not b_next!17135))))

(declare-fun tp!187364 () Bool)

(declare-fun b_and!59445 () Bool)

(assert (=> b!601909 (= tp!187364 b_and!59445)))

(declare-fun b!601904 () Bool)

(declare-fun b_free!17121 () Bool)

(declare-fun b_next!17137 () Bool)

(assert (=> b!601904 (= b_free!17121 (not b_next!17137))))

(declare-fun tp!187368 () Bool)

(declare-fun b_and!59447 () Bool)

(assert (=> b!601904 (= tp!187368 b_and!59447)))

(declare-fun b_free!17123 () Bool)

(declare-fun b_next!17139 () Bool)

(assert (=> b!601904 (= b_free!17123 (not b_next!17139))))

(declare-fun tp!187371 () Bool)

(declare-fun b_and!59449 () Bool)

(assert (=> b!601904 (= tp!187371 b_and!59449)))

(declare-fun e!364663 () Bool)

(assert (=> b!601904 (= e!364663 (and tp!187368 tp!187371))))

(declare-fun b!601905 () Bool)

(declare-fun e!364655 () Bool)

(declare-fun e!364672 () Bool)

(assert (=> b!601905 (= e!364655 (not e!364672))))

(declare-fun res!260391 () Bool)

(assert (=> b!601905 (=> res!260391 e!364672)))

(declare-datatypes ((C!3984 0))(
  ( (C!3985 (val!2218 Int)) )
))
(declare-datatypes ((List!6024 0))(
  ( (Nil!6014) (Cons!6014 (h!11415 C!3984) (t!79977 List!6024)) )
))
(declare-fun input!2705 () List!6024)

(declare-fun lt!256383 () List!6024)

(declare-fun isPrefix!825 (List!6024 List!6024) Bool)

(assert (=> b!601905 (= res!260391 (not (isPrefix!825 input!2705 lt!256383)))))

(declare-fun lt!256387 () List!6024)

(assert (=> b!601905 (isPrefix!825 lt!256387 lt!256383)))

(declare-datatypes ((Unit!10949 0))(
  ( (Unit!10950) )
))
(declare-fun lt!256369 () Unit!10949)

(declare-fun suffix!1342 () List!6024)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!670 (List!6024 List!6024) Unit!10949)

(assert (=> b!601905 (= lt!256369 (lemmaConcatTwoListThenFirstIsPrefix!670 lt!256387 suffix!1342))))

(declare-fun lt!256388 () List!6024)

(assert (=> b!601905 (isPrefix!825 input!2705 lt!256388)))

(declare-fun lt!256362 () Unit!10949)

(assert (=> b!601905 (= lt!256362 (lemmaConcatTwoListThenFirstIsPrefix!670 input!2705 suffix!1342))))

(declare-fun e!364671 () Bool)

(assert (=> b!601905 e!364671))

(declare-fun res!260387 () Bool)

(assert (=> b!601905 (=> (not res!260387) (not e!364671))))

(declare-datatypes ((Regex!1531 0))(
  ( (ElementMatch!1531 (c!111715 C!3984)) (Concat!2752 (regOne!3574 Regex!1531) (regTwo!3574 Regex!1531)) (EmptyExpr!1531) (Star!1531 (reg!1860 Regex!1531)) (EmptyLang!1531) (Union!1531 (regOne!3575 Regex!1531) (regTwo!3575 Regex!1531)) )
))
(declare-datatypes ((List!6025 0))(
  ( (Nil!6015) (Cons!6015 (h!11416 (_ BitVec 16)) (t!79978 List!6025)) )
))
(declare-datatypes ((IArray!3829 0))(
  ( (IArray!3830 (innerList!1972 List!6024)) )
))
(declare-datatypes ((Conc!1914 0))(
  ( (Node!1914 (left!4833 Conc!1914) (right!5163 Conc!1914) (csize!4058 Int) (cheight!2125 Int)) (Leaf!3020 (xs!4551 IArray!3829) (csize!4059 Int)) (Empty!1914) )
))
(declare-datatypes ((BalanceConc!3836 0))(
  ( (BalanceConc!3837 (c!111716 Conc!1914)) )
))
(declare-datatypes ((TokenValue!1221 0))(
  ( (FloatLiteralValue!2442 (text!8992 List!6025)) (TokenValueExt!1220 (__x!4340 Int)) (Broken!6105 (value!38955 List!6025)) (Object!1230) (End!1221) (Def!1221) (Underscore!1221) (Match!1221) (Else!1221) (Error!1221) (Case!1221) (If!1221) (Extends!1221) (Abstract!1221) (Class!1221) (Val!1221) (DelimiterValue!2442 (del!1281 List!6025)) (KeywordValue!1227 (value!38956 List!6025)) (CommentValue!2442 (value!38957 List!6025)) (WhitespaceValue!2442 (value!38958 List!6025)) (IndentationValue!1221 (value!38959 List!6025)) (String!7848) (Int32!1221) (Broken!6106 (value!38960 List!6025)) (Boolean!1222) (Unit!10951) (OperatorValue!1224 (op!1281 List!6025)) (IdentifierValue!2442 (value!38961 List!6025)) (IdentifierValue!2443 (value!38962 List!6025)) (WhitespaceValue!2443 (value!38963 List!6025)) (True!2442) (False!2442) (Broken!6107 (value!38964 List!6025)) (Broken!6108 (value!38965 List!6025)) (True!2443) (RightBrace!1221) (RightBracket!1221) (Colon!1221) (Null!1221) (Comma!1221) (LeftBracket!1221) (False!2443) (LeftBrace!1221) (ImaginaryLiteralValue!1221 (text!8993 List!6025)) (StringLiteralValue!3663 (value!38966 List!6025)) (EOFValue!1221 (value!38967 List!6025)) (IdentValue!1221 (value!38968 List!6025)) (DelimiterValue!2443 (value!38969 List!6025)) (DedentValue!1221 (value!38970 List!6025)) (NewLineValue!1221 (value!38971 List!6025)) (IntegerValue!3663 (value!38972 (_ BitVec 32)) (text!8994 List!6025)) (IntegerValue!3664 (value!38973 Int) (text!8995 List!6025)) (Times!1221) (Or!1221) (Equal!1221) (Minus!1221) (Broken!6109 (value!38974 List!6025)) (And!1221) (Div!1221) (LessEqual!1221) (Mod!1221) (Concat!2753) (Not!1221) (Plus!1221) (SpaceValue!1221 (value!38975 List!6025)) (IntegerValue!3665 (value!38976 Int) (text!8996 List!6025)) (StringLiteralValue!3664 (text!8997 List!6025)) (FloatLiteralValue!2443 (text!8998 List!6025)) (BytesLiteralValue!1221 (value!38977 List!6025)) (CommentValue!2443 (value!38978 List!6025)) (StringLiteralValue!3665 (value!38979 List!6025)) (ErrorTokenValue!1221 (msg!1282 List!6025)) )
))
(declare-datatypes ((String!7849 0))(
  ( (String!7850 (value!38980 String)) )
))
(declare-datatypes ((TokenValueInjection!2210 0))(
  ( (TokenValueInjection!2211 (toValue!2096 Int) (toChars!1955 Int)) )
))
(declare-datatypes ((Rule!2194 0))(
  ( (Rule!2195 (regex!1197 Regex!1531) (tag!1459 String!7849) (isSeparator!1197 Bool) (transformation!1197 TokenValueInjection!2210)) )
))
(declare-datatypes ((Token!2130 0))(
  ( (Token!2131 (value!38981 TokenValue!1221) (rule!1971 Rule!2194) (size!4732 Int) (originalCharacters!1236 List!6024)) )
))
(declare-datatypes ((tuple2!6896 0))(
  ( (tuple2!6897 (_1!3712 Token!2130) (_2!3712 List!6024)) )
))
(declare-datatypes ((Option!1548 0))(
  ( (None!1547) (Some!1547 (v!16442 tuple2!6896)) )
))
(declare-fun lt!256386 () Option!1548)

(declare-fun lt!256377 () TokenValue!1221)

(assert (=> b!601905 (= res!260387 (= (value!38981 (_1!3712 (v!16442 lt!256386))) lt!256377))))

(declare-fun lt!256384 () List!6024)

(declare-fun apply!1450 (TokenValueInjection!2210 BalanceConc!3836) TokenValue!1221)

(declare-fun seqFromList!1373 (List!6024) BalanceConc!3836)

(assert (=> b!601905 (= lt!256377 (apply!1450 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))) (seqFromList!1373 lt!256384)))))

(declare-fun lt!256366 () Unit!10949)

(declare-fun token!491 () Token!2130)

(declare-fun lemmaInv!305 (TokenValueInjection!2210) Unit!10949)

(assert (=> b!601905 (= lt!256366 (lemmaInv!305 (transformation!1197 (rule!1971 token!491))))))

(declare-fun lt!256385 () Unit!10949)

(assert (=> b!601905 (= lt!256385 (lemmaInv!305 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386))))))))

(declare-datatypes ((LexerInterface!1083 0))(
  ( (LexerInterfaceExt!1080 (__x!4341 Int)) (Lexer!1081) )
))
(declare-fun thiss!22590 () LexerInterface!1083)

(declare-fun ruleValid!395 (LexerInterface!1083 Rule!2194) Bool)

(assert (=> b!601905 (ruleValid!395 thiss!22590 (rule!1971 token!491))))

(declare-datatypes ((List!6026 0))(
  ( (Nil!6016) (Cons!6016 (h!11417 Rule!2194) (t!79979 List!6026)) )
))
(declare-fun rules!3103 () List!6026)

(declare-fun lt!256371 () Unit!10949)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!242 (LexerInterface!1083 Rule!2194 List!6026) Unit!10949)

(assert (=> b!601905 (= lt!256371 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!242 thiss!22590 (rule!1971 token!491) rules!3103))))

(assert (=> b!601905 (ruleValid!395 thiss!22590 (rule!1971 (_1!3712 (v!16442 lt!256386))))))

(declare-fun lt!256370 () Unit!10949)

(assert (=> b!601905 (= lt!256370 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!242 thiss!22590 (rule!1971 (_1!3712 (v!16442 lt!256386))) rules!3103))))

(assert (=> b!601905 (isPrefix!825 input!2705 input!2705)))

(declare-fun lt!256367 () Unit!10949)

(declare-fun lemmaIsPrefixRefl!561 (List!6024 List!6024) Unit!10949)

(assert (=> b!601905 (= lt!256367 (lemmaIsPrefixRefl!561 input!2705 input!2705))))

(declare-fun lt!256373 () List!6024)

(assert (=> b!601905 (= (_2!3712 (v!16442 lt!256386)) lt!256373)))

(declare-fun lt!256363 () Unit!10949)

(declare-fun lemmaSamePrefixThenSameSuffix!538 (List!6024 List!6024 List!6024 List!6024 List!6024) Unit!10949)

(assert (=> b!601905 (= lt!256363 (lemmaSamePrefixThenSameSuffix!538 lt!256384 (_2!3712 (v!16442 lt!256386)) lt!256384 lt!256373 input!2705))))

(declare-fun getSuffix!342 (List!6024 List!6024) List!6024)

(assert (=> b!601905 (= lt!256373 (getSuffix!342 input!2705 lt!256384))))

(declare-fun ++!1685 (List!6024 List!6024) List!6024)

(assert (=> b!601905 (isPrefix!825 lt!256384 (++!1685 lt!256384 (_2!3712 (v!16442 lt!256386))))))

(declare-fun lt!256375 () Unit!10949)

(assert (=> b!601905 (= lt!256375 (lemmaConcatTwoListThenFirstIsPrefix!670 lt!256384 (_2!3712 (v!16442 lt!256386))))))

(declare-fun lt!256361 () Unit!10949)

(declare-fun lemmaCharactersSize!256 (Token!2130) Unit!10949)

(assert (=> b!601905 (= lt!256361 (lemmaCharactersSize!256 token!491))))

(declare-fun lt!256378 () Unit!10949)

(assert (=> b!601905 (= lt!256378 (lemmaCharactersSize!256 (_1!3712 (v!16442 lt!256386))))))

(declare-fun lt!256376 () Unit!10949)

(declare-fun e!364667 () Unit!10949)

(assert (=> b!601905 (= lt!256376 e!364667)))

(declare-fun c!111714 () Bool)

(declare-fun lt!256368 () Int)

(declare-fun lt!256372 () Int)

(assert (=> b!601905 (= c!111714 (> lt!256368 lt!256372))))

(declare-fun size!4733 (List!6024) Int)

(assert (=> b!601905 (= lt!256372 (size!4733 lt!256387))))

(assert (=> b!601905 (= lt!256368 (size!4733 lt!256384))))

(declare-fun list!2524 (BalanceConc!3836) List!6024)

(declare-fun charsOf!826 (Token!2130) BalanceConc!3836)

(assert (=> b!601905 (= lt!256384 (list!2524 (charsOf!826 (_1!3712 (v!16442 lt!256386)))))))

(assert (=> b!601905 (= lt!256386 (Some!1547 (v!16442 lt!256386)))))

(declare-fun lt!256379 () Unit!10949)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!270 (List!6024 List!6024 List!6024 List!6024) Unit!10949)

(assert (=> b!601905 (= lt!256379 (lemmaConcatSameAndSameSizesThenSameLists!270 lt!256387 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!601906 () Bool)

(declare-fun e!364664 () Bool)

(declare-fun e!364669 () Bool)

(assert (=> b!601906 (= e!364664 e!364669)))

(declare-fun res!260392 () Bool)

(assert (=> b!601906 (=> (not res!260392) (not e!364669))))

(declare-fun lt!256381 () tuple2!6896)

(assert (=> b!601906 (= res!260392 (and (= (_1!3712 lt!256381) token!491) (= (_2!3712 lt!256381) suffix!1342)))))

(declare-fun lt!256364 () Option!1548)

(declare-fun get!2310 (Option!1548) tuple2!6896)

(assert (=> b!601906 (= lt!256381 (get!2310 lt!256364))))

(declare-fun b!601907 () Bool)

(declare-fun res!260384 () Bool)

(declare-fun e!364665 () Bool)

(assert (=> b!601907 (=> (not res!260384) (not e!364665))))

(declare-fun isEmpty!4341 (List!6024) Bool)

(assert (=> b!601907 (= res!260384 (not (isEmpty!4341 input!2705)))))

(declare-fun b!601908 () Bool)

(declare-fun e!364660 () Bool)

(assert (=> b!601908 (= e!364665 e!364660)))

(declare-fun res!260385 () Bool)

(assert (=> b!601908 (=> (not res!260385) (not e!364660))))

(assert (=> b!601908 (= res!260385 (= lt!256387 input!2705))))

(assert (=> b!601908 (= lt!256387 (list!2524 (charsOf!826 token!491)))))

(declare-fun e!364657 () Bool)

(assert (=> b!601909 (= e!364657 (and tp!187372 tp!187364))))

(declare-fun b!601910 () Bool)

(assert (=> b!601910 (= e!364660 e!364664)))

(declare-fun res!260396 () Bool)

(assert (=> b!601910 (=> (not res!260396) (not e!364664))))

(declare-fun isDefined!1359 (Option!1548) Bool)

(assert (=> b!601910 (= res!260396 (isDefined!1359 lt!256364))))

(declare-fun maxPrefix!781 (LexerInterface!1083 List!6026 List!6024) Option!1548)

(assert (=> b!601910 (= lt!256364 (maxPrefix!781 thiss!22590 rules!3103 lt!256388))))

(assert (=> b!601910 (= lt!256388 (++!1685 input!2705 suffix!1342))))

(declare-fun tp!187367 () Bool)

(declare-fun e!364654 () Bool)

(declare-fun e!364656 () Bool)

(declare-fun b!601911 () Bool)

(declare-fun inv!21 (TokenValue!1221) Bool)

(assert (=> b!601911 (= e!364656 (and (inv!21 (value!38981 token!491)) e!364654 tp!187367))))

(declare-fun b!601912 () Bool)

(declare-fun e!364670 () Bool)

(declare-fun e!364661 () Bool)

(declare-fun tp!187366 () Bool)

(assert (=> b!601912 (= e!364670 (and e!364661 tp!187366))))

(declare-fun b!601913 () Bool)

(declare-fun res!260390 () Bool)

(declare-fun e!364653 () Bool)

(assert (=> b!601913 (=> (not res!260390) (not e!364653))))

(assert (=> b!601913 (= res!260390 (= (size!4732 token!491) (size!4733 (originalCharacters!1236 token!491))))))

(declare-fun b!601914 () Bool)

(declare-fun e!364666 () Bool)

(declare-fun tp_is_empty!3417 () Bool)

(declare-fun tp!187363 () Bool)

(assert (=> b!601914 (= e!364666 (and tp_is_empty!3417 tp!187363))))

(declare-fun b!601915 () Bool)

(declare-fun lt!256374 () TokenValue!1221)

(declare-fun lt!256382 () List!6024)

(assert (=> b!601915 (= e!364653 (and (= (size!4732 token!491) lt!256372) (= (originalCharacters!1236 token!491) lt!256387) (= (tuple2!6897 token!491 suffix!1342) (tuple2!6897 (Token!2131 lt!256374 (rule!1971 token!491) lt!256372 lt!256387) lt!256382))))))

(declare-fun b!601916 () Bool)

(declare-fun res!260395 () Bool)

(assert (=> b!601916 (=> (not res!260395) (not e!364665))))

(declare-fun isEmpty!4342 (List!6026) Bool)

(assert (=> b!601916 (= res!260395 (not (isEmpty!4342 rules!3103)))))

(declare-fun b!601917 () Bool)

(declare-fun contains!1409 (List!6026 Rule!2194) Bool)

(assert (=> b!601917 (= e!364672 (contains!1409 rules!3103 (rule!1971 token!491)))))

(declare-fun maxPrefixOneRule!444 (LexerInterface!1083 Rule!2194 List!6024) Option!1548)

(assert (=> b!601917 (= (maxPrefixOneRule!444 thiss!22590 (rule!1971 (_1!3712 (v!16442 lt!256386))) input!2705) (Some!1547 (tuple2!6897 (Token!2131 lt!256377 (rule!1971 (_1!3712 (v!16442 lt!256386))) lt!256368 lt!256384) (_2!3712 (v!16442 lt!256386)))))))

(declare-fun lt!256365 () Unit!10949)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!150 (LexerInterface!1083 List!6026 List!6024 List!6024 List!6024 Rule!2194) Unit!10949)

(assert (=> b!601917 (= lt!256365 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!150 thiss!22590 rules!3103 lt!256384 input!2705 (_2!3712 (v!16442 lt!256386)) (rule!1971 (_1!3712 (v!16442 lt!256386)))))))

(assert (=> b!601917 e!364653))

(declare-fun res!260394 () Bool)

(assert (=> b!601917 (=> (not res!260394) (not e!364653))))

(assert (=> b!601917 (= res!260394 (= (value!38981 token!491) lt!256374))))

(assert (=> b!601917 (= lt!256374 (apply!1450 (transformation!1197 (rule!1971 token!491)) (seqFromList!1373 lt!256387)))))

(assert (=> b!601917 (= suffix!1342 lt!256382)))

(declare-fun lt!256380 () Unit!10949)

(assert (=> b!601917 (= lt!256380 (lemmaSamePrefixThenSameSuffix!538 lt!256387 suffix!1342 lt!256387 lt!256382 lt!256388))))

(assert (=> b!601917 (= lt!256382 (getSuffix!342 lt!256388 lt!256387))))

(declare-fun b!601918 () Bool)

(assert (=> b!601918 (= e!364671 (and (= (size!4732 (_1!3712 (v!16442 lt!256386))) lt!256368) (= (originalCharacters!1236 (_1!3712 (v!16442 lt!256386))) lt!256384) (= (v!16442 lt!256386) (tuple2!6897 (Token!2131 lt!256377 (rule!1971 (_1!3712 (v!16442 lt!256386))) lt!256368 lt!256384) lt!256373))))))

(declare-fun res!260383 () Bool)

(assert (=> start!57156 (=> (not res!260383) (not e!364665))))

(get-info :version)

(assert (=> start!57156 (= res!260383 ((_ is Lexer!1081) thiss!22590))))

(assert (=> start!57156 e!364665))

(declare-fun e!364668 () Bool)

(assert (=> start!57156 e!364668))

(assert (=> start!57156 e!364670))

(declare-fun inv!7636 (Token!2130) Bool)

(assert (=> start!57156 (and (inv!7636 token!491) e!364656)))

(assert (=> start!57156 true))

(assert (=> start!57156 e!364666))

(declare-fun b!601919 () Bool)

(declare-fun tp!187369 () Bool)

(declare-fun inv!7633 (String!7849) Bool)

(declare-fun inv!7637 (TokenValueInjection!2210) Bool)

(assert (=> b!601919 (= e!364661 (and tp!187369 (inv!7633 (tag!1459 (h!11417 rules!3103))) (inv!7637 (transformation!1197 (h!11417 rules!3103))) e!364663))))

(declare-fun b!601920 () Bool)

(declare-fun res!260389 () Bool)

(assert (=> b!601920 (=> (not res!260389) (not e!364665))))

(declare-fun rulesInvariant!1046 (LexerInterface!1083 List!6026) Bool)

(assert (=> b!601920 (= res!260389 (rulesInvariant!1046 thiss!22590 rules!3103))))

(declare-fun b!601921 () Bool)

(declare-fun e!364658 () Bool)

(assert (=> b!601921 (= e!364669 e!364658)))

(declare-fun res!260386 () Bool)

(assert (=> b!601921 (=> (not res!260386) (not e!364658))))

(assert (=> b!601921 (= res!260386 ((_ is Some!1547) lt!256386))))

(assert (=> b!601921 (= lt!256386 (maxPrefix!781 thiss!22590 rules!3103 input!2705))))

(declare-fun b!601922 () Bool)

(declare-fun res!260393 () Bool)

(assert (=> b!601922 (=> (not res!260393) (not e!364671))))

(assert (=> b!601922 (= res!260393 (= (size!4732 (_1!3712 (v!16442 lt!256386))) (size!4733 (originalCharacters!1236 (_1!3712 (v!16442 lt!256386))))))))

(declare-fun tp!187365 () Bool)

(declare-fun b!601923 () Bool)

(assert (=> b!601923 (= e!364654 (and tp!187365 (inv!7633 (tag!1459 (rule!1971 token!491))) (inv!7637 (transformation!1197 (rule!1971 token!491))) e!364657))))

(declare-fun b!601924 () Bool)

(declare-fun Unit!10952 () Unit!10949)

(assert (=> b!601924 (= e!364667 Unit!10952)))

(assert (=> b!601924 false))

(declare-fun b!601925 () Bool)

(declare-fun Unit!10953 () Unit!10949)

(assert (=> b!601925 (= e!364667 Unit!10953)))

(declare-fun b!601926 () Bool)

(assert (=> b!601926 (= e!364658 e!364655)))

(declare-fun res!260388 () Bool)

(assert (=> b!601926 (=> (not res!260388) (not e!364655))))

(assert (=> b!601926 (= res!260388 (= lt!256383 lt!256388))))

(assert (=> b!601926 (= lt!256383 (++!1685 lt!256387 suffix!1342))))

(declare-fun b!601927 () Bool)

(declare-fun tp!187370 () Bool)

(assert (=> b!601927 (= e!364668 (and tp_is_empty!3417 tp!187370))))

(assert (= (and start!57156 res!260383) b!601916))

(assert (= (and b!601916 res!260395) b!601920))

(assert (= (and b!601920 res!260389) b!601907))

(assert (= (and b!601907 res!260384) b!601908))

(assert (= (and b!601908 res!260385) b!601910))

(assert (= (and b!601910 res!260396) b!601906))

(assert (= (and b!601906 res!260392) b!601921))

(assert (= (and b!601921 res!260386) b!601926))

(assert (= (and b!601926 res!260388) b!601905))

(assert (= (and b!601905 c!111714) b!601924))

(assert (= (and b!601905 (not c!111714)) b!601925))

(assert (= (and b!601905 res!260387) b!601922))

(assert (= (and b!601922 res!260393) b!601918))

(assert (= (and b!601905 (not res!260391)) b!601917))

(assert (= (and b!601917 res!260394) b!601913))

(assert (= (and b!601913 res!260390) b!601915))

(assert (= (and start!57156 ((_ is Cons!6014) suffix!1342)) b!601927))

(assert (= b!601919 b!601904))

(assert (= b!601912 b!601919))

(assert (= (and start!57156 ((_ is Cons!6016) rules!3103)) b!601912))

(assert (= b!601923 b!601909))

(assert (= b!601911 b!601923))

(assert (= start!57156 b!601911))

(assert (= (and start!57156 ((_ is Cons!6014) input!2705)) b!601914))

(declare-fun m!866527 () Bool)

(assert (=> b!601907 m!866527))

(declare-fun m!866529 () Bool)

(assert (=> b!601911 m!866529))

(declare-fun m!866531 () Bool)

(assert (=> b!601922 m!866531))

(declare-fun m!866533 () Bool)

(assert (=> b!601919 m!866533))

(declare-fun m!866535 () Bool)

(assert (=> b!601919 m!866535))

(declare-fun m!866537 () Bool)

(assert (=> b!601913 m!866537))

(declare-fun m!866539 () Bool)

(assert (=> start!57156 m!866539))

(declare-fun m!866541 () Bool)

(assert (=> b!601910 m!866541))

(declare-fun m!866543 () Bool)

(assert (=> b!601910 m!866543))

(declare-fun m!866545 () Bool)

(assert (=> b!601910 m!866545))

(declare-fun m!866547 () Bool)

(assert (=> b!601920 m!866547))

(declare-fun m!866549 () Bool)

(assert (=> b!601926 m!866549))

(declare-fun m!866551 () Bool)

(assert (=> b!601921 m!866551))

(declare-fun m!866553 () Bool)

(assert (=> b!601908 m!866553))

(assert (=> b!601908 m!866553))

(declare-fun m!866555 () Bool)

(assert (=> b!601908 m!866555))

(declare-fun m!866557 () Bool)

(assert (=> b!601923 m!866557))

(declare-fun m!866559 () Bool)

(assert (=> b!601923 m!866559))

(declare-fun m!866561 () Bool)

(assert (=> b!601916 m!866561))

(declare-fun m!866563 () Bool)

(assert (=> b!601906 m!866563))

(declare-fun m!866565 () Bool)

(assert (=> b!601917 m!866565))

(declare-fun m!866567 () Bool)

(assert (=> b!601917 m!866567))

(declare-fun m!866569 () Bool)

(assert (=> b!601917 m!866569))

(declare-fun m!866571 () Bool)

(assert (=> b!601917 m!866571))

(declare-fun m!866573 () Bool)

(assert (=> b!601917 m!866573))

(declare-fun m!866575 () Bool)

(assert (=> b!601917 m!866575))

(assert (=> b!601917 m!866565))

(declare-fun m!866577 () Bool)

(assert (=> b!601917 m!866577))

(declare-fun m!866579 () Bool)

(assert (=> b!601905 m!866579))

(declare-fun m!866581 () Bool)

(assert (=> b!601905 m!866581))

(declare-fun m!866583 () Bool)

(assert (=> b!601905 m!866583))

(declare-fun m!866585 () Bool)

(assert (=> b!601905 m!866585))

(declare-fun m!866587 () Bool)

(assert (=> b!601905 m!866587))

(declare-fun m!866589 () Bool)

(assert (=> b!601905 m!866589))

(declare-fun m!866591 () Bool)

(assert (=> b!601905 m!866591))

(declare-fun m!866593 () Bool)

(assert (=> b!601905 m!866593))

(declare-fun m!866595 () Bool)

(assert (=> b!601905 m!866595))

(declare-fun m!866597 () Bool)

(assert (=> b!601905 m!866597))

(assert (=> b!601905 m!866587))

(declare-fun m!866599 () Bool)

(assert (=> b!601905 m!866599))

(declare-fun m!866601 () Bool)

(assert (=> b!601905 m!866601))

(declare-fun m!866603 () Bool)

(assert (=> b!601905 m!866603))

(declare-fun m!866605 () Bool)

(assert (=> b!601905 m!866605))

(declare-fun m!866607 () Bool)

(assert (=> b!601905 m!866607))

(declare-fun m!866609 () Bool)

(assert (=> b!601905 m!866609))

(declare-fun m!866611 () Bool)

(assert (=> b!601905 m!866611))

(declare-fun m!866613 () Bool)

(assert (=> b!601905 m!866613))

(declare-fun m!866615 () Bool)

(assert (=> b!601905 m!866615))

(declare-fun m!866617 () Bool)

(assert (=> b!601905 m!866617))

(declare-fun m!866619 () Bool)

(assert (=> b!601905 m!866619))

(declare-fun m!866621 () Bool)

(assert (=> b!601905 m!866621))

(declare-fun m!866623 () Bool)

(assert (=> b!601905 m!866623))

(declare-fun m!866625 () Bool)

(assert (=> b!601905 m!866625))

(assert (=> b!601905 m!866619))

(declare-fun m!866627 () Bool)

(assert (=> b!601905 m!866627))

(declare-fun m!866629 () Bool)

(assert (=> b!601905 m!866629))

(declare-fun m!866631 () Bool)

(assert (=> b!601905 m!866631))

(assert (=> b!601905 m!866607))

(check-sat (not b!601914) (not b!601916) (not b!601911) b_and!59449 (not b!601910) (not b!601905) (not b!601913) (not b_next!17139) (not b!601917) (not b!601922) (not b!601908) (not b_next!17133) (not b!601923) tp_is_empty!3417 (not b!601927) (not b!601907) (not b!601920) (not start!57156) b_and!59445 (not b!601906) (not b!601921) (not b_next!17137) (not b_next!17135) b_and!59447 (not b!601926) (not b!601912) b_and!59443 (not b!601919))
(check-sat (not b_next!17133) b_and!59449 b_and!59445 (not b_next!17139) b_and!59447 b_and!59443 (not b_next!17137) (not b_next!17135))
(get-model)

(declare-fun d!211806 () Bool)

(assert (=> d!211806 (= (get!2310 lt!256364) (v!16442 lt!256364))))

(assert (=> b!601906 d!211806))

(declare-fun d!211808 () Bool)

(declare-fun dynLambda!3481 (Int BalanceConc!3836) TokenValue!1221)

(assert (=> d!211808 (= (apply!1450 (transformation!1197 (rule!1971 token!491)) (seqFromList!1373 lt!256387)) (dynLambda!3481 (toValue!2096 (transformation!1197 (rule!1971 token!491))) (seqFromList!1373 lt!256387)))))

(declare-fun b_lambda!23753 () Bool)

(assert (=> (not b_lambda!23753) (not d!211808)))

(declare-fun t!79981 () Bool)

(declare-fun tb!52487 () Bool)

(assert (=> (and b!601909 (= (toValue!2096 (transformation!1197 (rule!1971 token!491))) (toValue!2096 (transformation!1197 (rule!1971 token!491)))) t!79981) tb!52487))

(declare-fun result!59038 () Bool)

(assert (=> tb!52487 (= result!59038 (inv!21 (dynLambda!3481 (toValue!2096 (transformation!1197 (rule!1971 token!491))) (seqFromList!1373 lt!256387))))))

(declare-fun m!866633 () Bool)

(assert (=> tb!52487 m!866633))

(assert (=> d!211808 t!79981))

(declare-fun b_and!59451 () Bool)

(assert (= b_and!59443 (and (=> t!79981 result!59038) b_and!59451)))

(declare-fun t!79983 () Bool)

(declare-fun tb!52489 () Bool)

(assert (=> (and b!601904 (= (toValue!2096 (transformation!1197 (h!11417 rules!3103))) (toValue!2096 (transformation!1197 (rule!1971 token!491)))) t!79983) tb!52489))

(declare-fun result!59042 () Bool)

(assert (= result!59042 result!59038))

(assert (=> d!211808 t!79983))

(declare-fun b_and!59453 () Bool)

(assert (= b_and!59447 (and (=> t!79983 result!59042) b_and!59453)))

(assert (=> d!211808 m!866565))

(declare-fun m!866635 () Bool)

(assert (=> d!211808 m!866635))

(assert (=> b!601917 d!211808))

(declare-fun d!211810 () Bool)

(declare-fun lt!256391 () List!6024)

(assert (=> d!211810 (= (++!1685 lt!256387 lt!256391) lt!256388)))

(declare-fun e!364679 () List!6024)

(assert (=> d!211810 (= lt!256391 e!364679)))

(declare-fun c!111719 () Bool)

(assert (=> d!211810 (= c!111719 ((_ is Cons!6014) lt!256387))))

(assert (=> d!211810 (>= (size!4733 lt!256388) (size!4733 lt!256387))))

(assert (=> d!211810 (= (getSuffix!342 lt!256388 lt!256387) lt!256391)))

(declare-fun b!601934 () Bool)

(declare-fun tail!805 (List!6024) List!6024)

(assert (=> b!601934 (= e!364679 (getSuffix!342 (tail!805 lt!256388) (t!79977 lt!256387)))))

(declare-fun b!601935 () Bool)

(assert (=> b!601935 (= e!364679 lt!256388)))

(assert (= (and d!211810 c!111719) b!601934))

(assert (= (and d!211810 (not c!111719)) b!601935))

(declare-fun m!866637 () Bool)

(assert (=> d!211810 m!866637))

(declare-fun m!866639 () Bool)

(assert (=> d!211810 m!866639))

(assert (=> d!211810 m!866589))

(declare-fun m!866641 () Bool)

(assert (=> b!601934 m!866641))

(assert (=> b!601934 m!866641))

(declare-fun m!866643 () Bool)

(assert (=> b!601934 m!866643))

(assert (=> b!601917 d!211810))

(declare-fun d!211812 () Bool)

(assert (=> d!211812 (= suffix!1342 lt!256382)))

(declare-fun lt!256394 () Unit!10949)

(declare-fun choose!4389 (List!6024 List!6024 List!6024 List!6024 List!6024) Unit!10949)

(assert (=> d!211812 (= lt!256394 (choose!4389 lt!256387 suffix!1342 lt!256387 lt!256382 lt!256388))))

(assert (=> d!211812 (isPrefix!825 lt!256387 lt!256388)))

(assert (=> d!211812 (= (lemmaSamePrefixThenSameSuffix!538 lt!256387 suffix!1342 lt!256387 lt!256382 lt!256388) lt!256394)))

(declare-fun bs!70996 () Bool)

(assert (= bs!70996 d!211812))

(declare-fun m!866645 () Bool)

(assert (=> bs!70996 m!866645))

(declare-fun m!866647 () Bool)

(assert (=> bs!70996 m!866647))

(assert (=> b!601917 d!211812))

(declare-fun d!211816 () Bool)

(declare-fun lt!256397 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1086 (List!6026) (InoxSet Rule!2194))

(assert (=> d!211816 (= lt!256397 (select (content!1086 rules!3103) (rule!1971 token!491)))))

(declare-fun e!364687 () Bool)

(assert (=> d!211816 (= lt!256397 e!364687)))

(declare-fun res!260413 () Bool)

(assert (=> d!211816 (=> (not res!260413) (not e!364687))))

(assert (=> d!211816 (= res!260413 ((_ is Cons!6016) rules!3103))))

(assert (=> d!211816 (= (contains!1409 rules!3103 (rule!1971 token!491)) lt!256397)))

(declare-fun b!601943 () Bool)

(declare-fun e!364688 () Bool)

(assert (=> b!601943 (= e!364687 e!364688)))

(declare-fun res!260412 () Bool)

(assert (=> b!601943 (=> res!260412 e!364688)))

(assert (=> b!601943 (= res!260412 (= (h!11417 rules!3103) (rule!1971 token!491)))))

(declare-fun b!601944 () Bool)

(assert (=> b!601944 (= e!364688 (contains!1409 (t!79979 rules!3103) (rule!1971 token!491)))))

(assert (= (and d!211816 res!260413) b!601943))

(assert (= (and b!601943 (not res!260412)) b!601944))

(declare-fun m!866655 () Bool)

(assert (=> d!211816 m!866655))

(declare-fun m!866657 () Bool)

(assert (=> d!211816 m!866657))

(declare-fun m!866659 () Bool)

(assert (=> b!601944 m!866659))

(assert (=> b!601917 d!211816))

(declare-fun b!602097 () Bool)

(declare-fun res!260509 () Bool)

(declare-fun e!364776 () Bool)

(assert (=> b!602097 (=> (not res!260509) (not e!364776))))

(declare-fun lt!256467 () Option!1548)

(assert (=> b!602097 (= res!260509 (= (rule!1971 (_1!3712 (get!2310 lt!256467))) (rule!1971 (_1!3712 (v!16442 lt!256386)))))))

(declare-fun d!211826 () Bool)

(declare-fun e!364775 () Bool)

(assert (=> d!211826 e!364775))

(declare-fun res!260513 () Bool)

(assert (=> d!211826 (=> res!260513 e!364775)))

(declare-fun isEmpty!4344 (Option!1548) Bool)

(assert (=> d!211826 (= res!260513 (isEmpty!4344 lt!256467))))

(declare-fun e!364773 () Option!1548)

(assert (=> d!211826 (= lt!256467 e!364773)))

(declare-fun c!111745 () Bool)

(declare-datatypes ((tuple2!6898 0))(
  ( (tuple2!6899 (_1!3713 List!6024) (_2!3713 List!6024)) )
))
(declare-fun lt!256470 () tuple2!6898)

(assert (=> d!211826 (= c!111745 (isEmpty!4341 (_1!3713 lt!256470)))))

(declare-fun findLongestMatch!173 (Regex!1531 List!6024) tuple2!6898)

(assert (=> d!211826 (= lt!256470 (findLongestMatch!173 (regex!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))) input!2705))))

(assert (=> d!211826 (ruleValid!395 thiss!22590 (rule!1971 (_1!3712 (v!16442 lt!256386))))))

(assert (=> d!211826 (= (maxPrefixOneRule!444 thiss!22590 (rule!1971 (_1!3712 (v!16442 lt!256386))) input!2705) lt!256467)))

(declare-fun b!602098 () Bool)

(declare-fun res!260508 () Bool)

(assert (=> b!602098 (=> (not res!260508) (not e!364776))))

(assert (=> b!602098 (= res!260508 (< (size!4733 (_2!3712 (get!2310 lt!256467))) (size!4733 input!2705)))))

(declare-fun b!602099 () Bool)

(declare-fun e!364774 () Bool)

(declare-fun matchR!638 (Regex!1531 List!6024) Bool)

(declare-fun findLongestMatchInner!194 (Regex!1531 List!6024 Int List!6024 List!6024 Int) tuple2!6898)

(assert (=> b!602099 (= e!364774 (matchR!638 (regex!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))) (_1!3713 (findLongestMatchInner!194 (regex!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))) Nil!6014 (size!4733 Nil!6014) input!2705 input!2705 (size!4733 input!2705)))))))

(declare-fun b!602100 () Bool)

(declare-fun res!260512 () Bool)

(assert (=> b!602100 (=> (not res!260512) (not e!364776))))

(assert (=> b!602100 (= res!260512 (= (++!1685 (list!2524 (charsOf!826 (_1!3712 (get!2310 lt!256467)))) (_2!3712 (get!2310 lt!256467))) input!2705))))

(declare-fun b!602101 () Bool)

(assert (=> b!602101 (= e!364775 e!364776)))

(declare-fun res!260511 () Bool)

(assert (=> b!602101 (=> (not res!260511) (not e!364776))))

(assert (=> b!602101 (= res!260511 (matchR!638 (regex!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))) (list!2524 (charsOf!826 (_1!3712 (get!2310 lt!256467))))))))

(declare-fun b!602102 () Bool)

(declare-fun res!260510 () Bool)

(assert (=> b!602102 (=> (not res!260510) (not e!364776))))

(assert (=> b!602102 (= res!260510 (= (value!38981 (_1!3712 (get!2310 lt!256467))) (apply!1450 (transformation!1197 (rule!1971 (_1!3712 (get!2310 lt!256467)))) (seqFromList!1373 (originalCharacters!1236 (_1!3712 (get!2310 lt!256467)))))))))

(declare-fun b!602103 () Bool)

(declare-fun size!4734 (BalanceConc!3836) Int)

(assert (=> b!602103 (= e!364773 (Some!1547 (tuple2!6897 (Token!2131 (apply!1450 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))) (seqFromList!1373 (_1!3713 lt!256470))) (rule!1971 (_1!3712 (v!16442 lt!256386))) (size!4734 (seqFromList!1373 (_1!3713 lt!256470))) (_1!3713 lt!256470)) (_2!3713 lt!256470))))))

(declare-fun lt!256471 () Unit!10949)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!178 (Regex!1531 List!6024) Unit!10949)

(assert (=> b!602103 (= lt!256471 (longestMatchIsAcceptedByMatchOrIsEmpty!178 (regex!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))) input!2705))))

(declare-fun res!260514 () Bool)

(assert (=> b!602103 (= res!260514 (isEmpty!4341 (_1!3713 (findLongestMatchInner!194 (regex!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))) Nil!6014 (size!4733 Nil!6014) input!2705 input!2705 (size!4733 input!2705)))))))

(assert (=> b!602103 (=> res!260514 e!364774)))

(assert (=> b!602103 e!364774))

(declare-fun lt!256469 () Unit!10949)

(assert (=> b!602103 (= lt!256469 lt!256471)))

(declare-fun lt!256468 () Unit!10949)

(declare-fun lemmaSemiInverse!233 (TokenValueInjection!2210 BalanceConc!3836) Unit!10949)

(assert (=> b!602103 (= lt!256468 (lemmaSemiInverse!233 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))) (seqFromList!1373 (_1!3713 lt!256470))))))

(declare-fun b!602104 () Bool)

(assert (=> b!602104 (= e!364773 None!1547)))

(declare-fun b!602105 () Bool)

(assert (=> b!602105 (= e!364776 (= (size!4732 (_1!3712 (get!2310 lt!256467))) (size!4733 (originalCharacters!1236 (_1!3712 (get!2310 lt!256467))))))))

(assert (= (and d!211826 c!111745) b!602104))

(assert (= (and d!211826 (not c!111745)) b!602103))

(assert (= (and b!602103 (not res!260514)) b!602099))

(assert (= (and d!211826 (not res!260513)) b!602101))

(assert (= (and b!602101 res!260511) b!602100))

(assert (= (and b!602100 res!260512) b!602098))

(assert (= (and b!602098 res!260508) b!602097))

(assert (= (and b!602097 res!260509) b!602102))

(assert (= (and b!602102 res!260510) b!602105))

(declare-fun m!866861 () Bool)

(assert (=> b!602102 m!866861))

(declare-fun m!866863 () Bool)

(assert (=> b!602102 m!866863))

(assert (=> b!602102 m!866863))

(declare-fun m!866865 () Bool)

(assert (=> b!602102 m!866865))

(assert (=> b!602097 m!866861))

(assert (=> b!602105 m!866861))

(declare-fun m!866867 () Bool)

(assert (=> b!602105 m!866867))

(declare-fun m!866869 () Bool)

(assert (=> b!602103 m!866869))

(declare-fun m!866871 () Bool)

(assert (=> b!602103 m!866871))

(declare-fun m!866873 () Bool)

(assert (=> b!602103 m!866873))

(assert (=> b!602103 m!866869))

(declare-fun m!866875 () Bool)

(assert (=> b!602103 m!866875))

(assert (=> b!602103 m!866871))

(declare-fun m!866877 () Bool)

(assert (=> b!602103 m!866877))

(declare-fun m!866879 () Bool)

(assert (=> b!602103 m!866879))

(assert (=> b!602103 m!866877))

(declare-fun m!866881 () Bool)

(assert (=> b!602103 m!866881))

(assert (=> b!602103 m!866877))

(declare-fun m!866883 () Bool)

(assert (=> b!602103 m!866883))

(assert (=> b!602103 m!866877))

(declare-fun m!866885 () Bool)

(assert (=> b!602103 m!866885))

(assert (=> b!602101 m!866861))

(declare-fun m!866887 () Bool)

(assert (=> b!602101 m!866887))

(assert (=> b!602101 m!866887))

(declare-fun m!866889 () Bool)

(assert (=> b!602101 m!866889))

(assert (=> b!602101 m!866889))

(declare-fun m!866891 () Bool)

(assert (=> b!602101 m!866891))

(assert (=> b!602099 m!866869))

(assert (=> b!602099 m!866871))

(assert (=> b!602099 m!866869))

(assert (=> b!602099 m!866871))

(assert (=> b!602099 m!866873))

(declare-fun m!866893 () Bool)

(assert (=> b!602099 m!866893))

(assert (=> b!602100 m!866861))

(assert (=> b!602100 m!866887))

(assert (=> b!602100 m!866887))

(assert (=> b!602100 m!866889))

(assert (=> b!602100 m!866889))

(declare-fun m!866895 () Bool)

(assert (=> b!602100 m!866895))

(declare-fun m!866897 () Bool)

(assert (=> d!211826 m!866897))

(declare-fun m!866899 () Bool)

(assert (=> d!211826 m!866899))

(declare-fun m!866901 () Bool)

(assert (=> d!211826 m!866901))

(assert (=> d!211826 m!866595))

(assert (=> b!602098 m!866861))

(declare-fun m!866903 () Bool)

(assert (=> b!602098 m!866903))

(assert (=> b!602098 m!866871))

(assert (=> b!601917 d!211826))

(declare-fun d!211904 () Bool)

(assert (=> d!211904 (= (maxPrefixOneRule!444 thiss!22590 (rule!1971 (_1!3712 (v!16442 lt!256386))) input!2705) (Some!1547 (tuple2!6897 (Token!2131 (apply!1450 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))) (seqFromList!1373 lt!256384)) (rule!1971 (_1!3712 (v!16442 lt!256386))) (size!4733 lt!256384) lt!256384) (_2!3712 (v!16442 lt!256386)))))))

(declare-fun lt!256492 () Unit!10949)

(declare-fun choose!4392 (LexerInterface!1083 List!6026 List!6024 List!6024 List!6024 Rule!2194) Unit!10949)

(assert (=> d!211904 (= lt!256492 (choose!4392 thiss!22590 rules!3103 lt!256384 input!2705 (_2!3712 (v!16442 lt!256386)) (rule!1971 (_1!3712 (v!16442 lt!256386)))))))

(assert (=> d!211904 (not (isEmpty!4342 rules!3103))))

(assert (=> d!211904 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!150 thiss!22590 rules!3103 lt!256384 input!2705 (_2!3712 (v!16442 lt!256386)) (rule!1971 (_1!3712 (v!16442 lt!256386)))) lt!256492)))

(declare-fun bs!71013 () Bool)

(assert (= bs!71013 d!211904))

(assert (=> bs!71013 m!866607))

(assert (=> bs!71013 m!866561))

(declare-fun m!866955 () Bool)

(assert (=> bs!71013 m!866955))

(assert (=> bs!71013 m!866573))

(assert (=> bs!71013 m!866617))

(assert (=> bs!71013 m!866607))

(assert (=> bs!71013 m!866609))

(assert (=> b!601917 d!211904))

(declare-fun d!211911 () Bool)

(declare-fun fromListB!603 (List!6024) BalanceConc!3836)

(assert (=> d!211911 (= (seqFromList!1373 lt!256387) (fromListB!603 lt!256387))))

(declare-fun bs!71014 () Bool)

(assert (= bs!71014 d!211911))

(declare-fun m!866963 () Bool)

(assert (=> bs!71014 m!866963))

(assert (=> b!601917 d!211911))

(declare-fun b!602149 () Bool)

(declare-fun e!364801 () List!6024)

(assert (=> b!602149 (= e!364801 suffix!1342)))

(declare-fun b!602151 () Bool)

(declare-fun res!260547 () Bool)

(declare-fun e!364802 () Bool)

(assert (=> b!602151 (=> (not res!260547) (not e!364802))))

(declare-fun lt!256496 () List!6024)

(assert (=> b!602151 (= res!260547 (= (size!4733 lt!256496) (+ (size!4733 lt!256387) (size!4733 suffix!1342))))))

(declare-fun b!602150 () Bool)

(assert (=> b!602150 (= e!364801 (Cons!6014 (h!11415 lt!256387) (++!1685 (t!79977 lt!256387) suffix!1342)))))

(declare-fun d!211916 () Bool)

(assert (=> d!211916 e!364802))

(declare-fun res!260546 () Bool)

(assert (=> d!211916 (=> (not res!260546) (not e!364802))))

(declare-fun content!1087 (List!6024) (InoxSet C!3984))

(assert (=> d!211916 (= res!260546 (= (content!1087 lt!256496) ((_ map or) (content!1087 lt!256387) (content!1087 suffix!1342))))))

(assert (=> d!211916 (= lt!256496 e!364801)))

(declare-fun c!111752 () Bool)

(assert (=> d!211916 (= c!111752 ((_ is Nil!6014) lt!256387))))

(assert (=> d!211916 (= (++!1685 lt!256387 suffix!1342) lt!256496)))

(declare-fun b!602152 () Bool)

(assert (=> b!602152 (= e!364802 (or (not (= suffix!1342 Nil!6014)) (= lt!256496 lt!256387)))))

(assert (= (and d!211916 c!111752) b!602149))

(assert (= (and d!211916 (not c!111752)) b!602150))

(assert (= (and d!211916 res!260546) b!602151))

(assert (= (and b!602151 res!260547) b!602152))

(declare-fun m!866965 () Bool)

(assert (=> b!602151 m!866965))

(assert (=> b!602151 m!866589))

(declare-fun m!866967 () Bool)

(assert (=> b!602151 m!866967))

(declare-fun m!866969 () Bool)

(assert (=> b!602150 m!866969))

(declare-fun m!866971 () Bool)

(assert (=> d!211916 m!866971))

(declare-fun m!866973 () Bool)

(assert (=> d!211916 m!866973))

(declare-fun m!866975 () Bool)

(assert (=> d!211916 m!866975))

(assert (=> b!601926 d!211916))

(declare-fun b!602164 () Bool)

(declare-fun e!364809 () Bool)

(assert (=> b!602164 (= e!364809 (>= (size!4733 (++!1685 lt!256384 (_2!3712 (v!16442 lt!256386)))) (size!4733 lt!256384)))))

(declare-fun b!602163 () Bool)

(declare-fun e!364810 () Bool)

(assert (=> b!602163 (= e!364810 (isPrefix!825 (tail!805 lt!256384) (tail!805 (++!1685 lt!256384 (_2!3712 (v!16442 lt!256386))))))))

(declare-fun d!211918 () Bool)

(assert (=> d!211918 e!364809))

(declare-fun res!260559 () Bool)

(assert (=> d!211918 (=> res!260559 e!364809)))

(declare-fun lt!256501 () Bool)

(assert (=> d!211918 (= res!260559 (not lt!256501))))

(declare-fun e!364811 () Bool)

(assert (=> d!211918 (= lt!256501 e!364811)))

(declare-fun res!260557 () Bool)

(assert (=> d!211918 (=> res!260557 e!364811)))

(assert (=> d!211918 (= res!260557 ((_ is Nil!6014) lt!256384))))

(assert (=> d!211918 (= (isPrefix!825 lt!256384 (++!1685 lt!256384 (_2!3712 (v!16442 lt!256386)))) lt!256501)))

(declare-fun b!602162 () Bool)

(declare-fun res!260558 () Bool)

(assert (=> b!602162 (=> (not res!260558) (not e!364810))))

(declare-fun head!1276 (List!6024) C!3984)

(assert (=> b!602162 (= res!260558 (= (head!1276 lt!256384) (head!1276 (++!1685 lt!256384 (_2!3712 (v!16442 lt!256386))))))))

(declare-fun b!602161 () Bool)

(assert (=> b!602161 (= e!364811 e!364810)))

(declare-fun res!260556 () Bool)

(assert (=> b!602161 (=> (not res!260556) (not e!364810))))

(assert (=> b!602161 (= res!260556 (not ((_ is Nil!6014) (++!1685 lt!256384 (_2!3712 (v!16442 lt!256386))))))))

(assert (= (and d!211918 (not res!260557)) b!602161))

(assert (= (and b!602161 res!260556) b!602162))

(assert (= (and b!602162 res!260558) b!602163))

(assert (= (and d!211918 (not res!260559)) b!602164))

(assert (=> b!602164 m!866587))

(declare-fun m!866977 () Bool)

(assert (=> b!602164 m!866977))

(assert (=> b!602164 m!866617))

(declare-fun m!866979 () Bool)

(assert (=> b!602163 m!866979))

(assert (=> b!602163 m!866587))

(declare-fun m!866981 () Bool)

(assert (=> b!602163 m!866981))

(assert (=> b!602163 m!866979))

(assert (=> b!602163 m!866981))

(declare-fun m!866983 () Bool)

(assert (=> b!602163 m!866983))

(declare-fun m!866987 () Bool)

(assert (=> b!602162 m!866987))

(assert (=> b!602162 m!866587))

(declare-fun m!866989 () Bool)

(assert (=> b!602162 m!866989))

(assert (=> b!601905 d!211918))

(declare-fun d!211920 () Bool)

(assert (=> d!211920 (isPrefix!825 lt!256384 (++!1685 lt!256384 (_2!3712 (v!16442 lt!256386))))))

(declare-fun lt!256505 () Unit!10949)

(declare-fun choose!4395 (List!6024 List!6024) Unit!10949)

(assert (=> d!211920 (= lt!256505 (choose!4395 lt!256384 (_2!3712 (v!16442 lt!256386))))))

(assert (=> d!211920 (= (lemmaConcatTwoListThenFirstIsPrefix!670 lt!256384 (_2!3712 (v!16442 lt!256386))) lt!256505)))

(declare-fun bs!71016 () Bool)

(assert (= bs!71016 d!211920))

(assert (=> bs!71016 m!866587))

(assert (=> bs!71016 m!866587))

(assert (=> bs!71016 m!866599))

(declare-fun m!866991 () Bool)

(assert (=> bs!71016 m!866991))

(assert (=> b!601905 d!211920))

(declare-fun d!211928 () Bool)

(assert (=> d!211928 (= (_2!3712 (v!16442 lt!256386)) lt!256373)))

(declare-fun lt!256506 () Unit!10949)

(assert (=> d!211928 (= lt!256506 (choose!4389 lt!256384 (_2!3712 (v!16442 lt!256386)) lt!256384 lt!256373 input!2705))))

(assert (=> d!211928 (isPrefix!825 lt!256384 input!2705)))

(assert (=> d!211928 (= (lemmaSamePrefixThenSameSuffix!538 lt!256384 (_2!3712 (v!16442 lt!256386)) lt!256384 lt!256373 input!2705) lt!256506)))

(declare-fun bs!71017 () Bool)

(assert (= bs!71017 d!211928))

(declare-fun m!866993 () Bool)

(assert (=> bs!71017 m!866993))

(declare-fun m!866995 () Bool)

(assert (=> bs!71017 m!866995))

(assert (=> b!601905 d!211928))

(declare-fun b!602171 () Bool)

(declare-fun e!364815 () Bool)

(assert (=> b!602171 (= e!364815 (>= (size!4733 lt!256383) (size!4733 input!2705)))))

(declare-fun b!602170 () Bool)

(declare-fun e!364816 () Bool)

(assert (=> b!602170 (= e!364816 (isPrefix!825 (tail!805 input!2705) (tail!805 lt!256383)))))

(declare-fun d!211930 () Bool)

(assert (=> d!211930 e!364815))

(declare-fun res!260566 () Bool)

(assert (=> d!211930 (=> res!260566 e!364815)))

(declare-fun lt!256507 () Bool)

(assert (=> d!211930 (= res!260566 (not lt!256507))))

(declare-fun e!364817 () Bool)

(assert (=> d!211930 (= lt!256507 e!364817)))

(declare-fun res!260564 () Bool)

(assert (=> d!211930 (=> res!260564 e!364817)))

(assert (=> d!211930 (= res!260564 ((_ is Nil!6014) input!2705))))

(assert (=> d!211930 (= (isPrefix!825 input!2705 lt!256383) lt!256507)))

(declare-fun b!602169 () Bool)

(declare-fun res!260565 () Bool)

(assert (=> b!602169 (=> (not res!260565) (not e!364816))))

(assert (=> b!602169 (= res!260565 (= (head!1276 input!2705) (head!1276 lt!256383)))))

(declare-fun b!602168 () Bool)

(assert (=> b!602168 (= e!364817 e!364816)))

(declare-fun res!260563 () Bool)

(assert (=> b!602168 (=> (not res!260563) (not e!364816))))

(assert (=> b!602168 (= res!260563 (not ((_ is Nil!6014) lt!256383)))))

(assert (= (and d!211930 (not res!260564)) b!602168))

(assert (= (and b!602168 res!260563) b!602169))

(assert (= (and b!602169 res!260565) b!602170))

(assert (= (and d!211930 (not res!260566)) b!602171))

(declare-fun m!866997 () Bool)

(assert (=> b!602171 m!866997))

(assert (=> b!602171 m!866871))

(declare-fun m!866999 () Bool)

(assert (=> b!602170 m!866999))

(declare-fun m!867001 () Bool)

(assert (=> b!602170 m!867001))

(assert (=> b!602170 m!866999))

(assert (=> b!602170 m!867001))

(declare-fun m!867003 () Bool)

(assert (=> b!602170 m!867003))

(declare-fun m!867005 () Bool)

(assert (=> b!602169 m!867005))

(declare-fun m!867007 () Bool)

(assert (=> b!602169 m!867007))

(assert (=> b!601905 d!211930))

(declare-fun d!211932 () Bool)

(declare-fun list!2526 (Conc!1914) List!6024)

(assert (=> d!211932 (= (list!2524 (charsOf!826 (_1!3712 (v!16442 lt!256386)))) (list!2526 (c!111716 (charsOf!826 (_1!3712 (v!16442 lt!256386))))))))

(declare-fun bs!71018 () Bool)

(assert (= bs!71018 d!211932))

(declare-fun m!867013 () Bool)

(assert (=> bs!71018 m!867013))

(assert (=> b!601905 d!211932))

(declare-fun d!211936 () Bool)

(assert (=> d!211936 (= (size!4732 (_1!3712 (v!16442 lt!256386))) (size!4733 (originalCharacters!1236 (_1!3712 (v!16442 lt!256386)))))))

(declare-fun Unit!10958 () Unit!10949)

(assert (=> d!211936 (= (lemmaCharactersSize!256 (_1!3712 (v!16442 lt!256386))) Unit!10958)))

(declare-fun bs!71019 () Bool)

(assert (= bs!71019 d!211936))

(assert (=> bs!71019 m!866531))

(assert (=> b!601905 d!211936))

(declare-fun d!211938 () Bool)

(assert (=> d!211938 (isPrefix!825 lt!256387 (++!1685 lt!256387 suffix!1342))))

(declare-fun lt!256513 () Unit!10949)

(assert (=> d!211938 (= lt!256513 (choose!4395 lt!256387 suffix!1342))))

(assert (=> d!211938 (= (lemmaConcatTwoListThenFirstIsPrefix!670 lt!256387 suffix!1342) lt!256513)))

(declare-fun bs!71020 () Bool)

(assert (= bs!71020 d!211938))

(assert (=> bs!71020 m!866549))

(assert (=> bs!71020 m!866549))

(declare-fun m!867025 () Bool)

(assert (=> bs!71020 m!867025))

(declare-fun m!867027 () Bool)

(assert (=> bs!71020 m!867027))

(assert (=> b!601905 d!211938))

(declare-fun d!211940 () Bool)

(declare-fun lt!256514 () List!6024)

(assert (=> d!211940 (= (++!1685 lt!256384 lt!256514) input!2705)))

(declare-fun e!364822 () List!6024)

(assert (=> d!211940 (= lt!256514 e!364822)))

(declare-fun c!111754 () Bool)

(assert (=> d!211940 (= c!111754 ((_ is Cons!6014) lt!256384))))

(assert (=> d!211940 (>= (size!4733 input!2705) (size!4733 lt!256384))))

(assert (=> d!211940 (= (getSuffix!342 input!2705 lt!256384) lt!256514)))

(declare-fun b!602182 () Bool)

(assert (=> b!602182 (= e!364822 (getSuffix!342 (tail!805 input!2705) (t!79977 lt!256384)))))

(declare-fun b!602183 () Bool)

(assert (=> b!602183 (= e!364822 input!2705)))

(assert (= (and d!211940 c!111754) b!602182))

(assert (= (and d!211940 (not c!111754)) b!602183))

(declare-fun m!867035 () Bool)

(assert (=> d!211940 m!867035))

(assert (=> d!211940 m!866871))

(assert (=> d!211940 m!866617))

(assert (=> b!602182 m!866999))

(assert (=> b!602182 m!866999))

(declare-fun m!867037 () Bool)

(assert (=> b!602182 m!867037))

(assert (=> b!601905 d!211940))

(declare-fun d!211942 () Bool)

(declare-fun lt!256517 () Int)

(assert (=> d!211942 (>= lt!256517 0)))

(declare-fun e!364827 () Int)

(assert (=> d!211942 (= lt!256517 e!364827)))

(declare-fun c!111757 () Bool)

(assert (=> d!211942 (= c!111757 ((_ is Nil!6014) lt!256384))))

(assert (=> d!211942 (= (size!4733 lt!256384) lt!256517)))

(declare-fun b!602194 () Bool)

(assert (=> b!602194 (= e!364827 0)))

(declare-fun b!602195 () Bool)

(assert (=> b!602195 (= e!364827 (+ 1 (size!4733 (t!79977 lt!256384))))))

(assert (= (and d!211942 c!111757) b!602194))

(assert (= (and d!211942 (not c!111757)) b!602195))

(declare-fun m!867049 () Bool)

(assert (=> b!602195 m!867049))

(assert (=> b!601905 d!211942))

(declare-fun d!211948 () Bool)

(declare-fun res!260579 () Bool)

(declare-fun e!364842 () Bool)

(assert (=> d!211948 (=> (not res!260579) (not e!364842))))

(declare-fun validRegex!530 (Regex!1531) Bool)

(assert (=> d!211948 (= res!260579 (validRegex!530 (regex!1197 (rule!1971 token!491))))))

(assert (=> d!211948 (= (ruleValid!395 thiss!22590 (rule!1971 token!491)) e!364842)))

(declare-fun b!602224 () Bool)

(declare-fun res!260580 () Bool)

(assert (=> b!602224 (=> (not res!260580) (not e!364842))))

(declare-fun nullable!435 (Regex!1531) Bool)

(assert (=> b!602224 (= res!260580 (not (nullable!435 (regex!1197 (rule!1971 token!491)))))))

(declare-fun b!602225 () Bool)

(assert (=> b!602225 (= e!364842 (not (= (tag!1459 (rule!1971 token!491)) (String!7850 ""))))))

(assert (= (and d!211948 res!260579) b!602224))

(assert (= (and b!602224 res!260580) b!602225))

(declare-fun m!867051 () Bool)

(assert (=> d!211948 m!867051))

(declare-fun m!867053 () Bool)

(assert (=> b!602224 m!867053))

(assert (=> b!601905 d!211948))

(declare-fun d!211950 () Bool)

(assert (=> d!211950 (= (seqFromList!1373 lt!256384) (fromListB!603 lt!256384))))

(declare-fun bs!71021 () Bool)

(assert (= bs!71021 d!211950))

(declare-fun m!867055 () Bool)

(assert (=> bs!71021 m!867055))

(assert (=> b!601905 d!211950))

(declare-fun d!211952 () Bool)

(declare-fun e!364852 () Bool)

(assert (=> d!211952 e!364852))

(declare-fun res!260583 () Bool)

(assert (=> d!211952 (=> (not res!260583) (not e!364852))))

(declare-fun semiInverseModEq!477 (Int Int) Bool)

(assert (=> d!211952 (= res!260583 (semiInverseModEq!477 (toChars!1955 (transformation!1197 (rule!1971 token!491))) (toValue!2096 (transformation!1197 (rule!1971 token!491)))))))

(declare-fun Unit!10959 () Unit!10949)

(assert (=> d!211952 (= (lemmaInv!305 (transformation!1197 (rule!1971 token!491))) Unit!10959)))

(declare-fun b!602234 () Bool)

(declare-fun equivClasses!460 (Int Int) Bool)

(assert (=> b!602234 (= e!364852 (equivClasses!460 (toChars!1955 (transformation!1197 (rule!1971 token!491))) (toValue!2096 (transformation!1197 (rule!1971 token!491)))))))

(assert (= (and d!211952 res!260583) b!602234))

(declare-fun m!867061 () Bool)

(assert (=> d!211952 m!867061))

(declare-fun m!867063 () Bool)

(assert (=> b!602234 m!867063))

(assert (=> b!601905 d!211952))

(declare-fun d!211954 () Bool)

(declare-fun res!260584 () Bool)

(declare-fun e!364853 () Bool)

(assert (=> d!211954 (=> (not res!260584) (not e!364853))))

(assert (=> d!211954 (= res!260584 (validRegex!530 (regex!1197 (rule!1971 (_1!3712 (v!16442 lt!256386))))))))

(assert (=> d!211954 (= (ruleValid!395 thiss!22590 (rule!1971 (_1!3712 (v!16442 lt!256386)))) e!364853)))

(declare-fun b!602235 () Bool)

(declare-fun res!260585 () Bool)

(assert (=> b!602235 (=> (not res!260585) (not e!364853))))

(assert (=> b!602235 (= res!260585 (not (nullable!435 (regex!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))))))))

(declare-fun b!602236 () Bool)

(assert (=> b!602236 (= e!364853 (not (= (tag!1459 (rule!1971 (_1!3712 (v!16442 lt!256386)))) (String!7850 ""))))))

(assert (= (and d!211954 res!260584) b!602235))

(assert (= (and b!602235 res!260585) b!602236))

(declare-fun m!867065 () Bool)

(assert (=> d!211954 m!867065))

(declare-fun m!867067 () Bool)

(assert (=> b!602235 m!867067))

(assert (=> b!601905 d!211954))

(declare-fun d!211956 () Bool)

(assert (=> d!211956 (ruleValid!395 thiss!22590 (rule!1971 (_1!3712 (v!16442 lt!256386))))))

(declare-fun lt!256520 () Unit!10949)

(declare-fun choose!4396 (LexerInterface!1083 Rule!2194 List!6026) Unit!10949)

(assert (=> d!211956 (= lt!256520 (choose!4396 thiss!22590 (rule!1971 (_1!3712 (v!16442 lt!256386))) rules!3103))))

(assert (=> d!211956 (contains!1409 rules!3103 (rule!1971 (_1!3712 (v!16442 lt!256386))))))

(assert (=> d!211956 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!242 thiss!22590 (rule!1971 (_1!3712 (v!16442 lt!256386))) rules!3103) lt!256520)))

(declare-fun bs!71022 () Bool)

(assert (= bs!71022 d!211956))

(assert (=> bs!71022 m!866595))

(declare-fun m!867069 () Bool)

(assert (=> bs!71022 m!867069))

(declare-fun m!867071 () Bool)

(assert (=> bs!71022 m!867071))

(assert (=> b!601905 d!211956))

(declare-fun d!211958 () Bool)

(assert (=> d!211958 (= (apply!1450 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))) (seqFromList!1373 lt!256384)) (dynLambda!3481 (toValue!2096 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386))))) (seqFromList!1373 lt!256384)))))

(declare-fun b_lambda!23771 () Bool)

(assert (=> (not b_lambda!23771) (not d!211958)))

(declare-fun tb!52515 () Bool)

(declare-fun t!80009 () Bool)

(assert (=> (and b!601909 (= (toValue!2096 (transformation!1197 (rule!1971 token!491))) (toValue!2096 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))))) t!80009) tb!52515))

(declare-fun result!59078 () Bool)

(assert (=> tb!52515 (= result!59078 (inv!21 (dynLambda!3481 (toValue!2096 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386))))) (seqFromList!1373 lt!256384))))))

(declare-fun m!867073 () Bool)

(assert (=> tb!52515 m!867073))

(assert (=> d!211958 t!80009))

(declare-fun b_and!59479 () Bool)

(assert (= b_and!59451 (and (=> t!80009 result!59078) b_and!59479)))

(declare-fun tb!52517 () Bool)

(declare-fun t!80011 () Bool)

(assert (=> (and b!601904 (= (toValue!2096 (transformation!1197 (h!11417 rules!3103))) (toValue!2096 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))))) t!80011) tb!52517))

(declare-fun result!59080 () Bool)

(assert (= result!59080 result!59078))

(assert (=> d!211958 t!80011))

(declare-fun b_and!59481 () Bool)

(assert (= b_and!59453 (and (=> t!80011 result!59080) b_and!59481)))

(assert (=> d!211958 m!866607))

(declare-fun m!867075 () Bool)

(assert (=> d!211958 m!867075))

(assert (=> b!601905 d!211958))

(declare-fun d!211960 () Bool)

(declare-fun lt!256521 () Int)

(assert (=> d!211960 (>= lt!256521 0)))

(declare-fun e!364855 () Int)

(assert (=> d!211960 (= lt!256521 e!364855)))

(declare-fun c!111758 () Bool)

(assert (=> d!211960 (= c!111758 ((_ is Nil!6014) lt!256387))))

(assert (=> d!211960 (= (size!4733 lt!256387) lt!256521)))

(declare-fun b!602237 () Bool)

(assert (=> b!602237 (= e!364855 0)))

(declare-fun b!602238 () Bool)

(assert (=> b!602238 (= e!364855 (+ 1 (size!4733 (t!79977 lt!256387))))))

(assert (= (and d!211960 c!111758) b!602237))

(assert (= (and d!211960 (not c!111758)) b!602238))

(declare-fun m!867077 () Bool)

(assert (=> b!602238 m!867077))

(assert (=> b!601905 d!211960))

(declare-fun b!602242 () Bool)

(declare-fun e!364856 () Bool)

(assert (=> b!602242 (= e!364856 (>= (size!4733 input!2705) (size!4733 input!2705)))))

(declare-fun b!602241 () Bool)

(declare-fun e!364857 () Bool)

(assert (=> b!602241 (= e!364857 (isPrefix!825 (tail!805 input!2705) (tail!805 input!2705)))))

(declare-fun d!211962 () Bool)

(assert (=> d!211962 e!364856))

(declare-fun res!260589 () Bool)

(assert (=> d!211962 (=> res!260589 e!364856)))

(declare-fun lt!256522 () Bool)

(assert (=> d!211962 (= res!260589 (not lt!256522))))

(declare-fun e!364858 () Bool)

(assert (=> d!211962 (= lt!256522 e!364858)))

(declare-fun res!260587 () Bool)

(assert (=> d!211962 (=> res!260587 e!364858)))

(assert (=> d!211962 (= res!260587 ((_ is Nil!6014) input!2705))))

(assert (=> d!211962 (= (isPrefix!825 input!2705 input!2705) lt!256522)))

(declare-fun b!602240 () Bool)

(declare-fun res!260588 () Bool)

(assert (=> b!602240 (=> (not res!260588) (not e!364857))))

(assert (=> b!602240 (= res!260588 (= (head!1276 input!2705) (head!1276 input!2705)))))

(declare-fun b!602239 () Bool)

(assert (=> b!602239 (= e!364858 e!364857)))

(declare-fun res!260586 () Bool)

(assert (=> b!602239 (=> (not res!260586) (not e!364857))))

(assert (=> b!602239 (= res!260586 (not ((_ is Nil!6014) input!2705)))))

(assert (= (and d!211962 (not res!260587)) b!602239))

(assert (= (and b!602239 res!260586) b!602240))

(assert (= (and b!602240 res!260588) b!602241))

(assert (= (and d!211962 (not res!260589)) b!602242))

(assert (=> b!602242 m!866871))

(assert (=> b!602242 m!866871))

(assert (=> b!602241 m!866999))

(assert (=> b!602241 m!866999))

(assert (=> b!602241 m!866999))

(assert (=> b!602241 m!866999))

(declare-fun m!867079 () Bool)

(assert (=> b!602241 m!867079))

(assert (=> b!602240 m!867005))

(assert (=> b!602240 m!867005))

(assert (=> b!601905 d!211962))

(declare-fun d!211964 () Bool)

(assert (=> d!211964 (ruleValid!395 thiss!22590 (rule!1971 token!491))))

(declare-fun lt!256523 () Unit!10949)

(assert (=> d!211964 (= lt!256523 (choose!4396 thiss!22590 (rule!1971 token!491) rules!3103))))

(assert (=> d!211964 (contains!1409 rules!3103 (rule!1971 token!491))))

(assert (=> d!211964 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!242 thiss!22590 (rule!1971 token!491) rules!3103) lt!256523)))

(declare-fun bs!71023 () Bool)

(assert (= bs!71023 d!211964))

(assert (=> bs!71023 m!866611))

(declare-fun m!867081 () Bool)

(assert (=> bs!71023 m!867081))

(assert (=> bs!71023 m!866569))

(assert (=> b!601905 d!211964))

(declare-fun d!211966 () Bool)

(assert (=> d!211966 (isPrefix!825 input!2705 (++!1685 input!2705 suffix!1342))))

(declare-fun lt!256524 () Unit!10949)

(assert (=> d!211966 (= lt!256524 (choose!4395 input!2705 suffix!1342))))

(assert (=> d!211966 (= (lemmaConcatTwoListThenFirstIsPrefix!670 input!2705 suffix!1342) lt!256524)))

(declare-fun bs!71024 () Bool)

(assert (= bs!71024 d!211966))

(assert (=> bs!71024 m!866545))

(assert (=> bs!71024 m!866545))

(declare-fun m!867083 () Bool)

(assert (=> bs!71024 m!867083))

(declare-fun m!867085 () Bool)

(assert (=> bs!71024 m!867085))

(assert (=> b!601905 d!211966))

(declare-fun d!211968 () Bool)

(assert (=> d!211968 (and (= lt!256387 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!256527 () Unit!10949)

(declare-fun choose!4397 (List!6024 List!6024 List!6024 List!6024) Unit!10949)

(assert (=> d!211968 (= lt!256527 (choose!4397 lt!256387 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!211968 (= (++!1685 lt!256387 suffix!1342) (++!1685 input!2705 suffix!1342))))

(assert (=> d!211968 (= (lemmaConcatSameAndSameSizesThenSameLists!270 lt!256387 suffix!1342 input!2705 suffix!1342) lt!256527)))

(declare-fun bs!71025 () Bool)

(assert (= bs!71025 d!211968))

(declare-fun m!867087 () Bool)

(assert (=> bs!71025 m!867087))

(assert (=> bs!71025 m!866549))

(assert (=> bs!71025 m!866545))

(assert (=> b!601905 d!211968))

(declare-fun b!602246 () Bool)

(declare-fun e!364859 () Bool)

(assert (=> b!602246 (= e!364859 (>= (size!4733 lt!256383) (size!4733 lt!256387)))))

(declare-fun b!602245 () Bool)

(declare-fun e!364860 () Bool)

(assert (=> b!602245 (= e!364860 (isPrefix!825 (tail!805 lt!256387) (tail!805 lt!256383)))))

(declare-fun d!211970 () Bool)

(assert (=> d!211970 e!364859))

(declare-fun res!260593 () Bool)

(assert (=> d!211970 (=> res!260593 e!364859)))

(declare-fun lt!256528 () Bool)

(assert (=> d!211970 (= res!260593 (not lt!256528))))

(declare-fun e!364861 () Bool)

(assert (=> d!211970 (= lt!256528 e!364861)))

(declare-fun res!260591 () Bool)

(assert (=> d!211970 (=> res!260591 e!364861)))

(assert (=> d!211970 (= res!260591 ((_ is Nil!6014) lt!256387))))

(assert (=> d!211970 (= (isPrefix!825 lt!256387 lt!256383) lt!256528)))

(declare-fun b!602244 () Bool)

(declare-fun res!260592 () Bool)

(assert (=> b!602244 (=> (not res!260592) (not e!364860))))

(assert (=> b!602244 (= res!260592 (= (head!1276 lt!256387) (head!1276 lt!256383)))))

(declare-fun b!602243 () Bool)

(assert (=> b!602243 (= e!364861 e!364860)))

(declare-fun res!260590 () Bool)

(assert (=> b!602243 (=> (not res!260590) (not e!364860))))

(assert (=> b!602243 (= res!260590 (not ((_ is Nil!6014) lt!256383)))))

(assert (= (and d!211970 (not res!260591)) b!602243))

(assert (= (and b!602243 res!260590) b!602244))

(assert (= (and b!602244 res!260592) b!602245))

(assert (= (and d!211970 (not res!260593)) b!602246))

(assert (=> b!602246 m!866997))

(assert (=> b!602246 m!866589))

(declare-fun m!867089 () Bool)

(assert (=> b!602245 m!867089))

(assert (=> b!602245 m!867001))

(assert (=> b!602245 m!867089))

(assert (=> b!602245 m!867001))

(declare-fun m!867091 () Bool)

(assert (=> b!602245 m!867091))

(declare-fun m!867093 () Bool)

(assert (=> b!602244 m!867093))

(assert (=> b!602244 m!867007))

(assert (=> b!601905 d!211970))

(declare-fun b!602247 () Bool)

(declare-fun e!364862 () List!6024)

(assert (=> b!602247 (= e!364862 (_2!3712 (v!16442 lt!256386)))))

(declare-fun b!602249 () Bool)

(declare-fun res!260595 () Bool)

(declare-fun e!364863 () Bool)

(assert (=> b!602249 (=> (not res!260595) (not e!364863))))

(declare-fun lt!256529 () List!6024)

(assert (=> b!602249 (= res!260595 (= (size!4733 lt!256529) (+ (size!4733 lt!256384) (size!4733 (_2!3712 (v!16442 lt!256386))))))))

(declare-fun b!602248 () Bool)

(assert (=> b!602248 (= e!364862 (Cons!6014 (h!11415 lt!256384) (++!1685 (t!79977 lt!256384) (_2!3712 (v!16442 lt!256386)))))))

(declare-fun d!211972 () Bool)

(assert (=> d!211972 e!364863))

(declare-fun res!260594 () Bool)

(assert (=> d!211972 (=> (not res!260594) (not e!364863))))

(assert (=> d!211972 (= res!260594 (= (content!1087 lt!256529) ((_ map or) (content!1087 lt!256384) (content!1087 (_2!3712 (v!16442 lt!256386))))))))

(assert (=> d!211972 (= lt!256529 e!364862)))

(declare-fun c!111759 () Bool)

(assert (=> d!211972 (= c!111759 ((_ is Nil!6014) lt!256384))))

(assert (=> d!211972 (= (++!1685 lt!256384 (_2!3712 (v!16442 lt!256386))) lt!256529)))

(declare-fun b!602250 () Bool)

(assert (=> b!602250 (= e!364863 (or (not (= (_2!3712 (v!16442 lt!256386)) Nil!6014)) (= lt!256529 lt!256384)))))

(assert (= (and d!211972 c!111759) b!602247))

(assert (= (and d!211972 (not c!111759)) b!602248))

(assert (= (and d!211972 res!260594) b!602249))

(assert (= (and b!602249 res!260595) b!602250))

(declare-fun m!867095 () Bool)

(assert (=> b!602249 m!867095))

(assert (=> b!602249 m!866617))

(declare-fun m!867097 () Bool)

(assert (=> b!602249 m!867097))

(declare-fun m!867099 () Bool)

(assert (=> b!602248 m!867099))

(declare-fun m!867101 () Bool)

(assert (=> d!211972 m!867101))

(declare-fun m!867103 () Bool)

(assert (=> d!211972 m!867103))

(declare-fun m!867105 () Bool)

(assert (=> d!211972 m!867105))

(assert (=> b!601905 d!211972))

(declare-fun d!211974 () Bool)

(assert (=> d!211974 (isPrefix!825 input!2705 input!2705)))

(declare-fun lt!256532 () Unit!10949)

(declare-fun choose!4398 (List!6024 List!6024) Unit!10949)

(assert (=> d!211974 (= lt!256532 (choose!4398 input!2705 input!2705))))

(assert (=> d!211974 (= (lemmaIsPrefixRefl!561 input!2705 input!2705) lt!256532)))

(declare-fun bs!71026 () Bool)

(assert (= bs!71026 d!211974))

(assert (=> bs!71026 m!866601))

(declare-fun m!867107 () Bool)

(assert (=> bs!71026 m!867107))

(assert (=> b!601905 d!211974))

(declare-fun b!602254 () Bool)

(declare-fun e!364864 () Bool)

(assert (=> b!602254 (= e!364864 (>= (size!4733 lt!256388) (size!4733 input!2705)))))

(declare-fun b!602253 () Bool)

(declare-fun e!364865 () Bool)

(assert (=> b!602253 (= e!364865 (isPrefix!825 (tail!805 input!2705) (tail!805 lt!256388)))))

(declare-fun d!211976 () Bool)

(assert (=> d!211976 e!364864))

(declare-fun res!260599 () Bool)

(assert (=> d!211976 (=> res!260599 e!364864)))

(declare-fun lt!256533 () Bool)

(assert (=> d!211976 (= res!260599 (not lt!256533))))

(declare-fun e!364866 () Bool)

(assert (=> d!211976 (= lt!256533 e!364866)))

(declare-fun res!260597 () Bool)

(assert (=> d!211976 (=> res!260597 e!364866)))

(assert (=> d!211976 (= res!260597 ((_ is Nil!6014) input!2705))))

(assert (=> d!211976 (= (isPrefix!825 input!2705 lt!256388) lt!256533)))

(declare-fun b!602252 () Bool)

(declare-fun res!260598 () Bool)

(assert (=> b!602252 (=> (not res!260598) (not e!364865))))

(assert (=> b!602252 (= res!260598 (= (head!1276 input!2705) (head!1276 lt!256388)))))

(declare-fun b!602251 () Bool)

(assert (=> b!602251 (= e!364866 e!364865)))

(declare-fun res!260596 () Bool)

(assert (=> b!602251 (=> (not res!260596) (not e!364865))))

(assert (=> b!602251 (= res!260596 (not ((_ is Nil!6014) lt!256388)))))

(assert (= (and d!211976 (not res!260597)) b!602251))

(assert (= (and b!602251 res!260596) b!602252))

(assert (= (and b!602252 res!260598) b!602253))

(assert (= (and d!211976 (not res!260599)) b!602254))

(assert (=> b!602254 m!866639))

(assert (=> b!602254 m!866871))

(assert (=> b!602253 m!866999))

(assert (=> b!602253 m!866641))

(assert (=> b!602253 m!866999))

(assert (=> b!602253 m!866641))

(declare-fun m!867109 () Bool)

(assert (=> b!602253 m!867109))

(assert (=> b!602252 m!867005))

(declare-fun m!867111 () Bool)

(assert (=> b!602252 m!867111))

(assert (=> b!601905 d!211976))

(declare-fun d!211978 () Bool)

(declare-fun e!364867 () Bool)

(assert (=> d!211978 e!364867))

(declare-fun res!260600 () Bool)

(assert (=> d!211978 (=> (not res!260600) (not e!364867))))

(assert (=> d!211978 (= res!260600 (semiInverseModEq!477 (toChars!1955 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386))))) (toValue!2096 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))))))))

(declare-fun Unit!10960 () Unit!10949)

(assert (=> d!211978 (= (lemmaInv!305 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386))))) Unit!10960)))

(declare-fun b!602255 () Bool)

(assert (=> b!602255 (= e!364867 (equivClasses!460 (toChars!1955 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386))))) (toValue!2096 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))))))))

(assert (= (and d!211978 res!260600) b!602255))

(declare-fun m!867113 () Bool)

(assert (=> d!211978 m!867113))

(declare-fun m!867115 () Bool)

(assert (=> b!602255 m!867115))

(assert (=> b!601905 d!211978))

(declare-fun d!211980 () Bool)

(assert (=> d!211980 (= (size!4732 token!491) (size!4733 (originalCharacters!1236 token!491)))))

(declare-fun Unit!10961 () Unit!10949)

(assert (=> d!211980 (= (lemmaCharactersSize!256 token!491) Unit!10961)))

(declare-fun bs!71027 () Bool)

(assert (= bs!71027 d!211980))

(assert (=> bs!71027 m!866537))

(assert (=> b!601905 d!211980))

(declare-fun d!211982 () Bool)

(declare-fun lt!256536 () BalanceConc!3836)

(assert (=> d!211982 (= (list!2524 lt!256536) (originalCharacters!1236 (_1!3712 (v!16442 lt!256386))))))

(declare-fun dynLambda!3482 (Int TokenValue!1221) BalanceConc!3836)

(assert (=> d!211982 (= lt!256536 (dynLambda!3482 (toChars!1955 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386))))) (value!38981 (_1!3712 (v!16442 lt!256386)))))))

(assert (=> d!211982 (= (charsOf!826 (_1!3712 (v!16442 lt!256386))) lt!256536)))

(declare-fun b_lambda!23773 () Bool)

(assert (=> (not b_lambda!23773) (not d!211982)))

(declare-fun tb!52519 () Bool)

(declare-fun t!80013 () Bool)

(assert (=> (and b!601909 (= (toChars!1955 (transformation!1197 (rule!1971 token!491))) (toChars!1955 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))))) t!80013) tb!52519))

(declare-fun b!602260 () Bool)

(declare-fun e!364870 () Bool)

(declare-fun tp!187416 () Bool)

(declare-fun inv!7640 (Conc!1914) Bool)

(assert (=> b!602260 (= e!364870 (and (inv!7640 (c!111716 (dynLambda!3482 (toChars!1955 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386))))) (value!38981 (_1!3712 (v!16442 lt!256386)))))) tp!187416))))

(declare-fun result!59082 () Bool)

(declare-fun inv!7641 (BalanceConc!3836) Bool)

(assert (=> tb!52519 (= result!59082 (and (inv!7641 (dynLambda!3482 (toChars!1955 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386))))) (value!38981 (_1!3712 (v!16442 lt!256386))))) e!364870))))

(assert (= tb!52519 b!602260))

(declare-fun m!867117 () Bool)

(assert (=> b!602260 m!867117))

(declare-fun m!867119 () Bool)

(assert (=> tb!52519 m!867119))

(assert (=> d!211982 t!80013))

(declare-fun b_and!59483 () Bool)

(assert (= b_and!59445 (and (=> t!80013 result!59082) b_and!59483)))

(declare-fun t!80015 () Bool)

(declare-fun tb!52521 () Bool)

(assert (=> (and b!601904 (= (toChars!1955 (transformation!1197 (h!11417 rules!3103))) (toChars!1955 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))))) t!80015) tb!52521))

(declare-fun result!59086 () Bool)

(assert (= result!59086 result!59082))

(assert (=> d!211982 t!80015))

(declare-fun b_and!59485 () Bool)

(assert (= b_and!59449 (and (=> t!80015 result!59086) b_and!59485)))

(declare-fun m!867121 () Bool)

(assert (=> d!211982 m!867121))

(declare-fun m!867123 () Bool)

(assert (=> d!211982 m!867123))

(assert (=> b!601905 d!211982))

(declare-fun d!211984 () Bool)

(assert (=> d!211984 (= (isEmpty!4342 rules!3103) ((_ is Nil!6016) rules!3103))))

(assert (=> b!601916 d!211984))

(declare-fun d!211986 () Bool)

(declare-fun res!260605 () Bool)

(declare-fun e!364873 () Bool)

(assert (=> d!211986 (=> (not res!260605) (not e!364873))))

(assert (=> d!211986 (= res!260605 (not (isEmpty!4341 (originalCharacters!1236 token!491))))))

(assert (=> d!211986 (= (inv!7636 token!491) e!364873)))

(declare-fun b!602265 () Bool)

(declare-fun res!260606 () Bool)

(assert (=> b!602265 (=> (not res!260606) (not e!364873))))

(assert (=> b!602265 (= res!260606 (= (originalCharacters!1236 token!491) (list!2524 (dynLambda!3482 (toChars!1955 (transformation!1197 (rule!1971 token!491))) (value!38981 token!491)))))))

(declare-fun b!602266 () Bool)

(assert (=> b!602266 (= e!364873 (= (size!4732 token!491) (size!4733 (originalCharacters!1236 token!491))))))

(assert (= (and d!211986 res!260605) b!602265))

(assert (= (and b!602265 res!260606) b!602266))

(declare-fun b_lambda!23775 () Bool)

(assert (=> (not b_lambda!23775) (not b!602265)))

(declare-fun t!80017 () Bool)

(declare-fun tb!52523 () Bool)

(assert (=> (and b!601909 (= (toChars!1955 (transformation!1197 (rule!1971 token!491))) (toChars!1955 (transformation!1197 (rule!1971 token!491)))) t!80017) tb!52523))

(declare-fun b!602267 () Bool)

(declare-fun e!364874 () Bool)

(declare-fun tp!187417 () Bool)

(assert (=> b!602267 (= e!364874 (and (inv!7640 (c!111716 (dynLambda!3482 (toChars!1955 (transformation!1197 (rule!1971 token!491))) (value!38981 token!491)))) tp!187417))))

(declare-fun result!59088 () Bool)

(assert (=> tb!52523 (= result!59088 (and (inv!7641 (dynLambda!3482 (toChars!1955 (transformation!1197 (rule!1971 token!491))) (value!38981 token!491))) e!364874))))

(assert (= tb!52523 b!602267))

(declare-fun m!867125 () Bool)

(assert (=> b!602267 m!867125))

(declare-fun m!867127 () Bool)

(assert (=> tb!52523 m!867127))

(assert (=> b!602265 t!80017))

(declare-fun b_and!59487 () Bool)

(assert (= b_and!59483 (and (=> t!80017 result!59088) b_and!59487)))

(declare-fun t!80019 () Bool)

(declare-fun tb!52525 () Bool)

(assert (=> (and b!601904 (= (toChars!1955 (transformation!1197 (h!11417 rules!3103))) (toChars!1955 (transformation!1197 (rule!1971 token!491)))) t!80019) tb!52525))

(declare-fun result!59090 () Bool)

(assert (= result!59090 result!59088))

(assert (=> b!602265 t!80019))

(declare-fun b_and!59489 () Bool)

(assert (= b_and!59485 (and (=> t!80019 result!59090) b_and!59489)))

(declare-fun m!867129 () Bool)

(assert (=> d!211986 m!867129))

(declare-fun m!867131 () Bool)

(assert (=> b!602265 m!867131))

(assert (=> b!602265 m!867131))

(declare-fun m!867133 () Bool)

(assert (=> b!602265 m!867133))

(assert (=> b!602266 m!866537))

(assert (=> start!57156 d!211986))

(declare-fun d!211988 () Bool)

(assert (=> d!211988 (= (inv!7633 (tag!1459 (rule!1971 token!491))) (= (mod (str.len (value!38980 (tag!1459 (rule!1971 token!491)))) 2) 0))))

(assert (=> b!601923 d!211988))

(declare-fun d!211990 () Bool)

(declare-fun res!260609 () Bool)

(declare-fun e!364877 () Bool)

(assert (=> d!211990 (=> (not res!260609) (not e!364877))))

(assert (=> d!211990 (= res!260609 (semiInverseModEq!477 (toChars!1955 (transformation!1197 (rule!1971 token!491))) (toValue!2096 (transformation!1197 (rule!1971 token!491)))))))

(assert (=> d!211990 (= (inv!7637 (transformation!1197 (rule!1971 token!491))) e!364877)))

(declare-fun b!602270 () Bool)

(assert (=> b!602270 (= e!364877 (equivClasses!460 (toChars!1955 (transformation!1197 (rule!1971 token!491))) (toValue!2096 (transformation!1197 (rule!1971 token!491)))))))

(assert (= (and d!211990 res!260609) b!602270))

(assert (=> d!211990 m!867061))

(assert (=> b!602270 m!867063))

(assert (=> b!601923 d!211990))

(declare-fun d!211992 () Bool)

(declare-fun lt!256537 () Int)

(assert (=> d!211992 (>= lt!256537 0)))

(declare-fun e!364878 () Int)

(assert (=> d!211992 (= lt!256537 e!364878)))

(declare-fun c!111760 () Bool)

(assert (=> d!211992 (= c!111760 ((_ is Nil!6014) (originalCharacters!1236 token!491)))))

(assert (=> d!211992 (= (size!4733 (originalCharacters!1236 token!491)) lt!256537)))

(declare-fun b!602271 () Bool)

(assert (=> b!602271 (= e!364878 0)))

(declare-fun b!602272 () Bool)

(assert (=> b!602272 (= e!364878 (+ 1 (size!4733 (t!79977 (originalCharacters!1236 token!491)))))))

(assert (= (and d!211992 c!111760) b!602271))

(assert (= (and d!211992 (not c!111760)) b!602272))

(declare-fun m!867135 () Bool)

(assert (=> b!602272 m!867135))

(assert (=> b!601913 d!211992))

(declare-fun b!602283 () Bool)

(declare-fun e!364885 () Bool)

(declare-fun inv!15 (TokenValue!1221) Bool)

(assert (=> b!602283 (= e!364885 (inv!15 (value!38981 token!491)))))

(declare-fun b!602284 () Bool)

(declare-fun e!364887 () Bool)

(declare-fun inv!17 (TokenValue!1221) Bool)

(assert (=> b!602284 (= e!364887 (inv!17 (value!38981 token!491)))))

(declare-fun b!602285 () Bool)

(declare-fun e!364886 () Bool)

(assert (=> b!602285 (= e!364886 e!364887)))

(declare-fun c!111766 () Bool)

(assert (=> b!602285 (= c!111766 ((_ is IntegerValue!3664) (value!38981 token!491)))))

(declare-fun d!211994 () Bool)

(declare-fun c!111765 () Bool)

(assert (=> d!211994 (= c!111765 ((_ is IntegerValue!3663) (value!38981 token!491)))))

(assert (=> d!211994 (= (inv!21 (value!38981 token!491)) e!364886)))

(declare-fun b!602286 () Bool)

(declare-fun inv!16 (TokenValue!1221) Bool)

(assert (=> b!602286 (= e!364886 (inv!16 (value!38981 token!491)))))

(declare-fun b!602287 () Bool)

(declare-fun res!260612 () Bool)

(assert (=> b!602287 (=> res!260612 e!364885)))

(assert (=> b!602287 (= res!260612 (not ((_ is IntegerValue!3665) (value!38981 token!491))))))

(assert (=> b!602287 (= e!364887 e!364885)))

(assert (= (and d!211994 c!111765) b!602286))

(assert (= (and d!211994 (not c!111765)) b!602285))

(assert (= (and b!602285 c!111766) b!602284))

(assert (= (and b!602285 (not c!111766)) b!602287))

(assert (= (and b!602287 (not res!260612)) b!602283))

(declare-fun m!867137 () Bool)

(assert (=> b!602283 m!867137))

(declare-fun m!867139 () Bool)

(assert (=> b!602284 m!867139))

(declare-fun m!867141 () Bool)

(assert (=> b!602286 m!867141))

(assert (=> b!601911 d!211994))

(declare-fun d!211996 () Bool)

(declare-fun lt!256538 () Int)

(assert (=> d!211996 (>= lt!256538 0)))

(declare-fun e!364888 () Int)

(assert (=> d!211996 (= lt!256538 e!364888)))

(declare-fun c!111767 () Bool)

(assert (=> d!211996 (= c!111767 ((_ is Nil!6014) (originalCharacters!1236 (_1!3712 (v!16442 lt!256386)))))))

(assert (=> d!211996 (= (size!4733 (originalCharacters!1236 (_1!3712 (v!16442 lt!256386)))) lt!256538)))

(declare-fun b!602288 () Bool)

(assert (=> b!602288 (= e!364888 0)))

(declare-fun b!602289 () Bool)

(assert (=> b!602289 (= e!364888 (+ 1 (size!4733 (t!79977 (originalCharacters!1236 (_1!3712 (v!16442 lt!256386)))))))))

(assert (= (and d!211996 c!111767) b!602288))

(assert (= (and d!211996 (not c!111767)) b!602289))

(declare-fun m!867143 () Bool)

(assert (=> b!602289 m!867143))

(assert (=> b!601922 d!211996))

(declare-fun d!211998 () Bool)

(assert (=> d!211998 (= (isDefined!1359 lt!256364) (not (isEmpty!4344 lt!256364)))))

(declare-fun bs!71028 () Bool)

(assert (= bs!71028 d!211998))

(declare-fun m!867145 () Bool)

(assert (=> bs!71028 m!867145))

(assert (=> b!601910 d!211998))

(declare-fun b!602308 () Bool)

(declare-fun e!364897 () Option!1548)

(declare-fun call!40560 () Option!1548)

(assert (=> b!602308 (= e!364897 call!40560)))

(declare-fun b!602309 () Bool)

(declare-fun e!364896 () Bool)

(declare-fun lt!256549 () Option!1548)

(assert (=> b!602309 (= e!364896 (contains!1409 rules!3103 (rule!1971 (_1!3712 (get!2310 lt!256549)))))))

(declare-fun b!602310 () Bool)

(declare-fun res!260632 () Bool)

(assert (=> b!602310 (=> (not res!260632) (not e!364896))))

(assert (=> b!602310 (= res!260632 (matchR!638 (regex!1197 (rule!1971 (_1!3712 (get!2310 lt!256549)))) (list!2524 (charsOf!826 (_1!3712 (get!2310 lt!256549))))))))

(declare-fun b!602311 () Bool)

(declare-fun e!364895 () Bool)

(assert (=> b!602311 (= e!364895 e!364896)))

(declare-fun res!260631 () Bool)

(assert (=> b!602311 (=> (not res!260631) (not e!364896))))

(assert (=> b!602311 (= res!260631 (isDefined!1359 lt!256549))))

(declare-fun b!602312 () Bool)

(declare-fun lt!256553 () Option!1548)

(declare-fun lt!256552 () Option!1548)

(assert (=> b!602312 (= e!364897 (ite (and ((_ is None!1547) lt!256553) ((_ is None!1547) lt!256552)) None!1547 (ite ((_ is None!1547) lt!256552) lt!256553 (ite ((_ is None!1547) lt!256553) lt!256552 (ite (>= (size!4732 (_1!3712 (v!16442 lt!256553))) (size!4732 (_1!3712 (v!16442 lt!256552)))) lt!256553 lt!256552)))))))

(assert (=> b!602312 (= lt!256553 call!40560)))

(assert (=> b!602312 (= lt!256552 (maxPrefix!781 thiss!22590 (t!79979 rules!3103) lt!256388))))

(declare-fun b!602313 () Bool)

(declare-fun res!260629 () Bool)

(assert (=> b!602313 (=> (not res!260629) (not e!364896))))

(assert (=> b!602313 (= res!260629 (= (++!1685 (list!2524 (charsOf!826 (_1!3712 (get!2310 lt!256549)))) (_2!3712 (get!2310 lt!256549))) lt!256388))))

(declare-fun b!602314 () Bool)

(declare-fun res!260627 () Bool)

(assert (=> b!602314 (=> (not res!260627) (not e!364896))))

(assert (=> b!602314 (= res!260627 (= (value!38981 (_1!3712 (get!2310 lt!256549))) (apply!1450 (transformation!1197 (rule!1971 (_1!3712 (get!2310 lt!256549)))) (seqFromList!1373 (originalCharacters!1236 (_1!3712 (get!2310 lt!256549)))))))))

(declare-fun b!602315 () Bool)

(declare-fun res!260628 () Bool)

(assert (=> b!602315 (=> (not res!260628) (not e!364896))))

(assert (=> b!602315 (= res!260628 (= (list!2524 (charsOf!826 (_1!3712 (get!2310 lt!256549)))) (originalCharacters!1236 (_1!3712 (get!2310 lt!256549)))))))

(declare-fun b!602316 () Bool)

(declare-fun res!260630 () Bool)

(assert (=> b!602316 (=> (not res!260630) (not e!364896))))

(assert (=> b!602316 (= res!260630 (< (size!4733 (_2!3712 (get!2310 lt!256549))) (size!4733 lt!256388)))))

(declare-fun bm!40555 () Bool)

(assert (=> bm!40555 (= call!40560 (maxPrefixOneRule!444 thiss!22590 (h!11417 rules!3103) lt!256388))))

(declare-fun d!212000 () Bool)

(assert (=> d!212000 e!364895))

(declare-fun res!260633 () Bool)

(assert (=> d!212000 (=> res!260633 e!364895)))

(assert (=> d!212000 (= res!260633 (isEmpty!4344 lt!256549))))

(assert (=> d!212000 (= lt!256549 e!364897)))

(declare-fun c!111770 () Bool)

(assert (=> d!212000 (= c!111770 (and ((_ is Cons!6016) rules!3103) ((_ is Nil!6016) (t!79979 rules!3103))))))

(declare-fun lt!256551 () Unit!10949)

(declare-fun lt!256550 () Unit!10949)

(assert (=> d!212000 (= lt!256551 lt!256550)))

(assert (=> d!212000 (isPrefix!825 lt!256388 lt!256388)))

(assert (=> d!212000 (= lt!256550 (lemmaIsPrefixRefl!561 lt!256388 lt!256388))))

(declare-fun rulesValidInductive!446 (LexerInterface!1083 List!6026) Bool)

(assert (=> d!212000 (rulesValidInductive!446 thiss!22590 rules!3103)))

(assert (=> d!212000 (= (maxPrefix!781 thiss!22590 rules!3103 lt!256388) lt!256549)))

(assert (= (and d!212000 c!111770) b!602308))

(assert (= (and d!212000 (not c!111770)) b!602312))

(assert (= (or b!602308 b!602312) bm!40555))

(assert (= (and d!212000 (not res!260633)) b!602311))

(assert (= (and b!602311 res!260631) b!602315))

(assert (= (and b!602315 res!260628) b!602316))

(assert (= (and b!602316 res!260630) b!602313))

(assert (= (and b!602313 res!260629) b!602314))

(assert (= (and b!602314 res!260627) b!602310))

(assert (= (and b!602310 res!260632) b!602309))

(declare-fun m!867147 () Bool)

(assert (=> bm!40555 m!867147))

(declare-fun m!867149 () Bool)

(assert (=> b!602316 m!867149))

(declare-fun m!867151 () Bool)

(assert (=> b!602316 m!867151))

(assert (=> b!602316 m!866639))

(assert (=> b!602314 m!867149))

(declare-fun m!867153 () Bool)

(assert (=> b!602314 m!867153))

(assert (=> b!602314 m!867153))

(declare-fun m!867155 () Bool)

(assert (=> b!602314 m!867155))

(declare-fun m!867157 () Bool)

(assert (=> d!212000 m!867157))

(declare-fun m!867159 () Bool)

(assert (=> d!212000 m!867159))

(declare-fun m!867161 () Bool)

(assert (=> d!212000 m!867161))

(declare-fun m!867163 () Bool)

(assert (=> d!212000 m!867163))

(assert (=> b!602313 m!867149))

(declare-fun m!867165 () Bool)

(assert (=> b!602313 m!867165))

(assert (=> b!602313 m!867165))

(declare-fun m!867167 () Bool)

(assert (=> b!602313 m!867167))

(assert (=> b!602313 m!867167))

(declare-fun m!867169 () Bool)

(assert (=> b!602313 m!867169))

(declare-fun m!867171 () Bool)

(assert (=> b!602311 m!867171))

(assert (=> b!602310 m!867149))

(assert (=> b!602310 m!867165))

(assert (=> b!602310 m!867165))

(assert (=> b!602310 m!867167))

(assert (=> b!602310 m!867167))

(declare-fun m!867173 () Bool)

(assert (=> b!602310 m!867173))

(assert (=> b!602315 m!867149))

(assert (=> b!602315 m!867165))

(assert (=> b!602315 m!867165))

(assert (=> b!602315 m!867167))

(declare-fun m!867175 () Bool)

(assert (=> b!602312 m!867175))

(assert (=> b!602309 m!867149))

(declare-fun m!867177 () Bool)

(assert (=> b!602309 m!867177))

(assert (=> b!601910 d!212000))

(declare-fun b!602317 () Bool)

(declare-fun e!364898 () List!6024)

(assert (=> b!602317 (= e!364898 suffix!1342)))

(declare-fun b!602319 () Bool)

(declare-fun res!260635 () Bool)

(declare-fun e!364899 () Bool)

(assert (=> b!602319 (=> (not res!260635) (not e!364899))))

(declare-fun lt!256554 () List!6024)

(assert (=> b!602319 (= res!260635 (= (size!4733 lt!256554) (+ (size!4733 input!2705) (size!4733 suffix!1342))))))

(declare-fun b!602318 () Bool)

(assert (=> b!602318 (= e!364898 (Cons!6014 (h!11415 input!2705) (++!1685 (t!79977 input!2705) suffix!1342)))))

(declare-fun d!212002 () Bool)

(assert (=> d!212002 e!364899))

(declare-fun res!260634 () Bool)

(assert (=> d!212002 (=> (not res!260634) (not e!364899))))

(assert (=> d!212002 (= res!260634 (= (content!1087 lt!256554) ((_ map or) (content!1087 input!2705) (content!1087 suffix!1342))))))

(assert (=> d!212002 (= lt!256554 e!364898)))

(declare-fun c!111771 () Bool)

(assert (=> d!212002 (= c!111771 ((_ is Nil!6014) input!2705))))

(assert (=> d!212002 (= (++!1685 input!2705 suffix!1342) lt!256554)))

(declare-fun b!602320 () Bool)

(assert (=> b!602320 (= e!364899 (or (not (= suffix!1342 Nil!6014)) (= lt!256554 input!2705)))))

(assert (= (and d!212002 c!111771) b!602317))

(assert (= (and d!212002 (not c!111771)) b!602318))

(assert (= (and d!212002 res!260634) b!602319))

(assert (= (and b!602319 res!260635) b!602320))

(declare-fun m!867179 () Bool)

(assert (=> b!602319 m!867179))

(assert (=> b!602319 m!866871))

(assert (=> b!602319 m!866967))

(declare-fun m!867181 () Bool)

(assert (=> b!602318 m!867181))

(declare-fun m!867183 () Bool)

(assert (=> d!212002 m!867183))

(declare-fun m!867185 () Bool)

(assert (=> d!212002 m!867185))

(assert (=> d!212002 m!866975))

(assert (=> b!601910 d!212002))

(declare-fun b!602321 () Bool)

(declare-fun e!364902 () Option!1548)

(declare-fun call!40561 () Option!1548)

(assert (=> b!602321 (= e!364902 call!40561)))

(declare-fun b!602322 () Bool)

(declare-fun e!364901 () Bool)

(declare-fun lt!256555 () Option!1548)

(assert (=> b!602322 (= e!364901 (contains!1409 rules!3103 (rule!1971 (_1!3712 (get!2310 lt!256555)))))))

(declare-fun b!602323 () Bool)

(declare-fun res!260641 () Bool)

(assert (=> b!602323 (=> (not res!260641) (not e!364901))))

(assert (=> b!602323 (= res!260641 (matchR!638 (regex!1197 (rule!1971 (_1!3712 (get!2310 lt!256555)))) (list!2524 (charsOf!826 (_1!3712 (get!2310 lt!256555))))))))

(declare-fun b!602324 () Bool)

(declare-fun e!364900 () Bool)

(assert (=> b!602324 (= e!364900 e!364901)))

(declare-fun res!260640 () Bool)

(assert (=> b!602324 (=> (not res!260640) (not e!364901))))

(assert (=> b!602324 (= res!260640 (isDefined!1359 lt!256555))))

(declare-fun b!602325 () Bool)

(declare-fun lt!256559 () Option!1548)

(declare-fun lt!256558 () Option!1548)

(assert (=> b!602325 (= e!364902 (ite (and ((_ is None!1547) lt!256559) ((_ is None!1547) lt!256558)) None!1547 (ite ((_ is None!1547) lt!256558) lt!256559 (ite ((_ is None!1547) lt!256559) lt!256558 (ite (>= (size!4732 (_1!3712 (v!16442 lt!256559))) (size!4732 (_1!3712 (v!16442 lt!256558)))) lt!256559 lt!256558)))))))

(assert (=> b!602325 (= lt!256559 call!40561)))

(assert (=> b!602325 (= lt!256558 (maxPrefix!781 thiss!22590 (t!79979 rules!3103) input!2705))))

(declare-fun b!602326 () Bool)

(declare-fun res!260638 () Bool)

(assert (=> b!602326 (=> (not res!260638) (not e!364901))))

(assert (=> b!602326 (= res!260638 (= (++!1685 (list!2524 (charsOf!826 (_1!3712 (get!2310 lt!256555)))) (_2!3712 (get!2310 lt!256555))) input!2705))))

(declare-fun b!602327 () Bool)

(declare-fun res!260636 () Bool)

(assert (=> b!602327 (=> (not res!260636) (not e!364901))))

(assert (=> b!602327 (= res!260636 (= (value!38981 (_1!3712 (get!2310 lt!256555))) (apply!1450 (transformation!1197 (rule!1971 (_1!3712 (get!2310 lt!256555)))) (seqFromList!1373 (originalCharacters!1236 (_1!3712 (get!2310 lt!256555)))))))))

(declare-fun b!602328 () Bool)

(declare-fun res!260637 () Bool)

(assert (=> b!602328 (=> (not res!260637) (not e!364901))))

(assert (=> b!602328 (= res!260637 (= (list!2524 (charsOf!826 (_1!3712 (get!2310 lt!256555)))) (originalCharacters!1236 (_1!3712 (get!2310 lt!256555)))))))

(declare-fun b!602329 () Bool)

(declare-fun res!260639 () Bool)

(assert (=> b!602329 (=> (not res!260639) (not e!364901))))

(assert (=> b!602329 (= res!260639 (< (size!4733 (_2!3712 (get!2310 lt!256555))) (size!4733 input!2705)))))

(declare-fun bm!40556 () Bool)

(assert (=> bm!40556 (= call!40561 (maxPrefixOneRule!444 thiss!22590 (h!11417 rules!3103) input!2705))))

(declare-fun d!212004 () Bool)

(assert (=> d!212004 e!364900))

(declare-fun res!260642 () Bool)

(assert (=> d!212004 (=> res!260642 e!364900)))

(assert (=> d!212004 (= res!260642 (isEmpty!4344 lt!256555))))

(assert (=> d!212004 (= lt!256555 e!364902)))

(declare-fun c!111772 () Bool)

(assert (=> d!212004 (= c!111772 (and ((_ is Cons!6016) rules!3103) ((_ is Nil!6016) (t!79979 rules!3103))))))

(declare-fun lt!256557 () Unit!10949)

(declare-fun lt!256556 () Unit!10949)

(assert (=> d!212004 (= lt!256557 lt!256556)))

(assert (=> d!212004 (isPrefix!825 input!2705 input!2705)))

(assert (=> d!212004 (= lt!256556 (lemmaIsPrefixRefl!561 input!2705 input!2705))))

(assert (=> d!212004 (rulesValidInductive!446 thiss!22590 rules!3103)))

(assert (=> d!212004 (= (maxPrefix!781 thiss!22590 rules!3103 input!2705) lt!256555)))

(assert (= (and d!212004 c!111772) b!602321))

(assert (= (and d!212004 (not c!111772)) b!602325))

(assert (= (or b!602321 b!602325) bm!40556))

(assert (= (and d!212004 (not res!260642)) b!602324))

(assert (= (and b!602324 res!260640) b!602328))

(assert (= (and b!602328 res!260637) b!602329))

(assert (= (and b!602329 res!260639) b!602326))

(assert (= (and b!602326 res!260638) b!602327))

(assert (= (and b!602327 res!260636) b!602323))

(assert (= (and b!602323 res!260641) b!602322))

(declare-fun m!867187 () Bool)

(assert (=> bm!40556 m!867187))

(declare-fun m!867189 () Bool)

(assert (=> b!602329 m!867189))

(declare-fun m!867191 () Bool)

(assert (=> b!602329 m!867191))

(assert (=> b!602329 m!866871))

(assert (=> b!602327 m!867189))

(declare-fun m!867193 () Bool)

(assert (=> b!602327 m!867193))

(assert (=> b!602327 m!867193))

(declare-fun m!867195 () Bool)

(assert (=> b!602327 m!867195))

(declare-fun m!867197 () Bool)

(assert (=> d!212004 m!867197))

(assert (=> d!212004 m!866601))

(assert (=> d!212004 m!866629))

(assert (=> d!212004 m!867163))

(assert (=> b!602326 m!867189))

(declare-fun m!867199 () Bool)

(assert (=> b!602326 m!867199))

(assert (=> b!602326 m!867199))

(declare-fun m!867201 () Bool)

(assert (=> b!602326 m!867201))

(assert (=> b!602326 m!867201))

(declare-fun m!867203 () Bool)

(assert (=> b!602326 m!867203))

(declare-fun m!867205 () Bool)

(assert (=> b!602324 m!867205))

(assert (=> b!602323 m!867189))

(assert (=> b!602323 m!867199))

(assert (=> b!602323 m!867199))

(assert (=> b!602323 m!867201))

(assert (=> b!602323 m!867201))

(declare-fun m!867207 () Bool)

(assert (=> b!602323 m!867207))

(assert (=> b!602328 m!867189))

(assert (=> b!602328 m!867199))

(assert (=> b!602328 m!867199))

(assert (=> b!602328 m!867201))

(declare-fun m!867209 () Bool)

(assert (=> b!602325 m!867209))

(assert (=> b!602322 m!867189))

(declare-fun m!867211 () Bool)

(assert (=> b!602322 m!867211))

(assert (=> b!601921 d!212004))

(declare-fun d!212006 () Bool)

(assert (=> d!212006 (= (inv!7633 (tag!1459 (h!11417 rules!3103))) (= (mod (str.len (value!38980 (tag!1459 (h!11417 rules!3103)))) 2) 0))))

(assert (=> b!601919 d!212006))

(declare-fun d!212008 () Bool)

(declare-fun res!260643 () Bool)

(declare-fun e!364903 () Bool)

(assert (=> d!212008 (=> (not res!260643) (not e!364903))))

(assert (=> d!212008 (= res!260643 (semiInverseModEq!477 (toChars!1955 (transformation!1197 (h!11417 rules!3103))) (toValue!2096 (transformation!1197 (h!11417 rules!3103)))))))

(assert (=> d!212008 (= (inv!7637 (transformation!1197 (h!11417 rules!3103))) e!364903)))

(declare-fun b!602330 () Bool)

(assert (=> b!602330 (= e!364903 (equivClasses!460 (toChars!1955 (transformation!1197 (h!11417 rules!3103))) (toValue!2096 (transformation!1197 (h!11417 rules!3103)))))))

(assert (= (and d!212008 res!260643) b!602330))

(declare-fun m!867213 () Bool)

(assert (=> d!212008 m!867213))

(declare-fun m!867215 () Bool)

(assert (=> b!602330 m!867215))

(assert (=> b!601919 d!212008))

(declare-fun d!212010 () Bool)

(declare-fun res!260646 () Bool)

(declare-fun e!364906 () Bool)

(assert (=> d!212010 (=> (not res!260646) (not e!364906))))

(declare-fun rulesValid!441 (LexerInterface!1083 List!6026) Bool)

(assert (=> d!212010 (= res!260646 (rulesValid!441 thiss!22590 rules!3103))))

(assert (=> d!212010 (= (rulesInvariant!1046 thiss!22590 rules!3103) e!364906)))

(declare-fun b!602333 () Bool)

(declare-datatypes ((List!6028 0))(
  ( (Nil!6018) (Cons!6018 (h!11419 String!7849) (t!80029 List!6028)) )
))
(declare-fun noDuplicateTag!441 (LexerInterface!1083 List!6026 List!6028) Bool)

(assert (=> b!602333 (= e!364906 (noDuplicateTag!441 thiss!22590 rules!3103 Nil!6018))))

(assert (= (and d!212010 res!260646) b!602333))

(declare-fun m!867217 () Bool)

(assert (=> d!212010 m!867217))

(declare-fun m!867219 () Bool)

(assert (=> b!602333 m!867219))

(assert (=> b!601920 d!212010))

(declare-fun d!212012 () Bool)

(assert (=> d!212012 (= (isEmpty!4341 input!2705) ((_ is Nil!6014) input!2705))))

(assert (=> b!601907 d!212012))

(declare-fun d!212014 () Bool)

(assert (=> d!212014 (= (list!2524 (charsOf!826 token!491)) (list!2526 (c!111716 (charsOf!826 token!491))))))

(declare-fun bs!71029 () Bool)

(assert (= bs!71029 d!212014))

(declare-fun m!867221 () Bool)

(assert (=> bs!71029 m!867221))

(assert (=> b!601908 d!212014))

(declare-fun d!212016 () Bool)

(declare-fun lt!256560 () BalanceConc!3836)

(assert (=> d!212016 (= (list!2524 lt!256560) (originalCharacters!1236 token!491))))

(assert (=> d!212016 (= lt!256560 (dynLambda!3482 (toChars!1955 (transformation!1197 (rule!1971 token!491))) (value!38981 token!491)))))

(assert (=> d!212016 (= (charsOf!826 token!491) lt!256560)))

(declare-fun b_lambda!23777 () Bool)

(assert (=> (not b_lambda!23777) (not d!212016)))

(assert (=> d!212016 t!80017))

(declare-fun b_and!59491 () Bool)

(assert (= b_and!59487 (and (=> t!80017 result!59088) b_and!59491)))

(assert (=> d!212016 t!80019))

(declare-fun b_and!59493 () Bool)

(assert (= b_and!59489 (and (=> t!80019 result!59090) b_and!59493)))

(declare-fun m!867223 () Bool)

(assert (=> d!212016 m!867223))

(assert (=> d!212016 m!867131))

(assert (=> b!601908 d!212016))

(declare-fun b!602338 () Bool)

(declare-fun e!364909 () Bool)

(declare-fun tp!187420 () Bool)

(assert (=> b!602338 (= e!364909 (and tp_is_empty!3417 tp!187420))))

(assert (=> b!601911 (= tp!187367 e!364909)))

(assert (= (and b!601911 ((_ is Cons!6014) (originalCharacters!1236 token!491))) b!602338))

(declare-fun b!602339 () Bool)

(declare-fun e!364910 () Bool)

(declare-fun tp!187421 () Bool)

(assert (=> b!602339 (= e!364910 (and tp_is_empty!3417 tp!187421))))

(assert (=> b!601927 (= tp!187370 e!364910)))

(assert (= (and b!601927 ((_ is Cons!6014) (t!79977 suffix!1342))) b!602339))

(declare-fun b!602350 () Bool)

(declare-fun b_free!17129 () Bool)

(declare-fun b_next!17145 () Bool)

(assert (=> b!602350 (= b_free!17129 (not b_next!17145))))

(declare-fun tb!52527 () Bool)

(declare-fun t!80021 () Bool)

(assert (=> (and b!602350 (= (toValue!2096 (transformation!1197 (h!11417 (t!79979 rules!3103)))) (toValue!2096 (transformation!1197 (rule!1971 token!491)))) t!80021) tb!52527))

(declare-fun result!59096 () Bool)

(assert (= result!59096 result!59038))

(assert (=> d!211808 t!80021))

(declare-fun tb!52529 () Bool)

(declare-fun t!80023 () Bool)

(assert (=> (and b!602350 (= (toValue!2096 (transformation!1197 (h!11417 (t!79979 rules!3103)))) (toValue!2096 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))))) t!80023) tb!52529))

(declare-fun result!59098 () Bool)

(assert (= result!59098 result!59078))

(assert (=> d!211958 t!80023))

(declare-fun tp!187433 () Bool)

(declare-fun b_and!59495 () Bool)

(assert (=> b!602350 (= tp!187433 (and (=> t!80021 result!59096) (=> t!80023 result!59098) b_and!59495))))

(declare-fun b_free!17131 () Bool)

(declare-fun b_next!17147 () Bool)

(assert (=> b!602350 (= b_free!17131 (not b_next!17147))))

(declare-fun t!80025 () Bool)

(declare-fun tb!52531 () Bool)

(assert (=> (and b!602350 (= (toChars!1955 (transformation!1197 (h!11417 (t!79979 rules!3103)))) (toChars!1955 (transformation!1197 (rule!1971 (_1!3712 (v!16442 lt!256386)))))) t!80025) tb!52531))

(declare-fun result!59100 () Bool)

(assert (= result!59100 result!59082))

(assert (=> d!211982 t!80025))

(declare-fun t!80027 () Bool)

(declare-fun tb!52533 () Bool)

(assert (=> (and b!602350 (= (toChars!1955 (transformation!1197 (h!11417 (t!79979 rules!3103)))) (toChars!1955 (transformation!1197 (rule!1971 token!491)))) t!80027) tb!52533))

(declare-fun result!59102 () Bool)

(assert (= result!59102 result!59088))

(assert (=> b!602265 t!80027))

(assert (=> d!212016 t!80027))

(declare-fun b_and!59497 () Bool)

(declare-fun tp!187431 () Bool)

(assert (=> b!602350 (= tp!187431 (and (=> t!80025 result!59100) (=> t!80027 result!59102) b_and!59497))))

(declare-fun e!364922 () Bool)

(assert (=> b!602350 (= e!364922 (and tp!187433 tp!187431))))

(declare-fun e!364921 () Bool)

(declare-fun tp!187432 () Bool)

(declare-fun b!602349 () Bool)

(assert (=> b!602349 (= e!364921 (and tp!187432 (inv!7633 (tag!1459 (h!11417 (t!79979 rules!3103)))) (inv!7637 (transformation!1197 (h!11417 (t!79979 rules!3103)))) e!364922))))

(declare-fun b!602348 () Bool)

(declare-fun e!364920 () Bool)

(declare-fun tp!187430 () Bool)

(assert (=> b!602348 (= e!364920 (and e!364921 tp!187430))))

(assert (=> b!601912 (= tp!187366 e!364920)))

(assert (= b!602349 b!602350))

(assert (= b!602348 b!602349))

(assert (= (and b!601912 ((_ is Cons!6016) (t!79979 rules!3103))) b!602348))

(declare-fun m!867225 () Bool)

(assert (=> b!602349 m!867225))

(declare-fun m!867227 () Bool)

(assert (=> b!602349 m!867227))

(declare-fun b!602361 () Bool)

(declare-fun e!364925 () Bool)

(assert (=> b!602361 (= e!364925 tp_is_empty!3417)))

(declare-fun b!602362 () Bool)

(declare-fun tp!187447 () Bool)

(declare-fun tp!187448 () Bool)

(assert (=> b!602362 (= e!364925 (and tp!187447 tp!187448))))

(assert (=> b!601919 (= tp!187369 e!364925)))

(declare-fun b!602364 () Bool)

(declare-fun tp!187444 () Bool)

(declare-fun tp!187445 () Bool)

(assert (=> b!602364 (= e!364925 (and tp!187444 tp!187445))))

(declare-fun b!602363 () Bool)

(declare-fun tp!187446 () Bool)

(assert (=> b!602363 (= e!364925 tp!187446)))

(assert (= (and b!601919 ((_ is ElementMatch!1531) (regex!1197 (h!11417 rules!3103)))) b!602361))

(assert (= (and b!601919 ((_ is Concat!2752) (regex!1197 (h!11417 rules!3103)))) b!602362))

(assert (= (and b!601919 ((_ is Star!1531) (regex!1197 (h!11417 rules!3103)))) b!602363))

(assert (= (and b!601919 ((_ is Union!1531) (regex!1197 (h!11417 rules!3103)))) b!602364))

(declare-fun b!602365 () Bool)

(declare-fun e!364926 () Bool)

(declare-fun tp!187449 () Bool)

(assert (=> b!602365 (= e!364926 (and tp_is_empty!3417 tp!187449))))

(assert (=> b!601914 (= tp!187363 e!364926)))

(assert (= (and b!601914 ((_ is Cons!6014) (t!79977 input!2705))) b!602365))

(declare-fun b!602366 () Bool)

(declare-fun e!364927 () Bool)

(assert (=> b!602366 (= e!364927 tp_is_empty!3417)))

(declare-fun b!602367 () Bool)

(declare-fun tp!187453 () Bool)

(declare-fun tp!187454 () Bool)

(assert (=> b!602367 (= e!364927 (and tp!187453 tp!187454))))

(assert (=> b!601923 (= tp!187365 e!364927)))

(declare-fun b!602369 () Bool)

(declare-fun tp!187450 () Bool)

(declare-fun tp!187451 () Bool)

(assert (=> b!602369 (= e!364927 (and tp!187450 tp!187451))))

(declare-fun b!602368 () Bool)

(declare-fun tp!187452 () Bool)

(assert (=> b!602368 (= e!364927 tp!187452)))

(assert (= (and b!601923 ((_ is ElementMatch!1531) (regex!1197 (rule!1971 token!491)))) b!602366))

(assert (= (and b!601923 ((_ is Concat!2752) (regex!1197 (rule!1971 token!491)))) b!602367))

(assert (= (and b!601923 ((_ is Star!1531) (regex!1197 (rule!1971 token!491)))) b!602368))

(assert (= (and b!601923 ((_ is Union!1531) (regex!1197 (rule!1971 token!491)))) b!602369))

(declare-fun b_lambda!23779 () Bool)

(assert (= b_lambda!23775 (or (and b!601909 b_free!17119) (and b!601904 b_free!17123 (= (toChars!1955 (transformation!1197 (h!11417 rules!3103))) (toChars!1955 (transformation!1197 (rule!1971 token!491))))) (and b!602350 b_free!17131 (= (toChars!1955 (transformation!1197 (h!11417 (t!79979 rules!3103)))) (toChars!1955 (transformation!1197 (rule!1971 token!491))))) b_lambda!23779)))

(declare-fun b_lambda!23781 () Bool)

(assert (= b_lambda!23777 (or (and b!601909 b_free!17119) (and b!601904 b_free!17123 (= (toChars!1955 (transformation!1197 (h!11417 rules!3103))) (toChars!1955 (transformation!1197 (rule!1971 token!491))))) (and b!602350 b_free!17131 (= (toChars!1955 (transformation!1197 (h!11417 (t!79979 rules!3103)))) (toChars!1955 (transformation!1197 (rule!1971 token!491))))) b_lambda!23781)))

(declare-fun b_lambda!23783 () Bool)

(assert (= b_lambda!23753 (or (and b!601909 b_free!17117) (and b!601904 b_free!17121 (= (toValue!2096 (transformation!1197 (h!11417 rules!3103))) (toValue!2096 (transformation!1197 (rule!1971 token!491))))) (and b!602350 b_free!17129 (= (toValue!2096 (transformation!1197 (h!11417 (t!79979 rules!3103)))) (toValue!2096 (transformation!1197 (rule!1971 token!491))))) b_lambda!23783)))

(check-sat (not b!602099) (not b!602327) (not b!602100) (not b!602150) (not tb!52515) (not b_next!17133) (not b!602314) (not b!602319) (not b!602105) (not b!602312) (not d!211964) (not b!602151) (not b!602315) (not d!212010) (not tb!52523) (not b!602266) (not d!211952) (not bm!40556) (not b!602169) (not b!602339) (not b!602246) (not b!602310) (not d!211986) (not b_lambda!23781) (not d!212000) (not d!212016) (not b!602323) tp_is_empty!3417 (not d!212004) b_and!59479 (not d!211978) (not b!602097) (not d!211916) (not b_lambda!23783) (not d!211920) (not b!602253) (not d!211938) (not b!601944) (not d!211980) (not d!211990) (not b!602289) (not b!602164) (not b!602284) b_and!59497 (not d!211974) (not d!211998) (not b!602286) (not b!602249) (not b!602311) (not b!602244) (not b!602240) (not d!211956) (not b!602103) (not d!211911) (not b!602325) (not d!211812) (not b!602254) (not d!211982) (not d!211904) (not b!602234) (not b!602101) (not b!602349) (not d!211928) (not d!212014) (not d!211954) (not b_lambda!23779) (not d!211932) (not d!211966) (not b!602368) (not b!602260) (not d!211950) (not b!602245) (not b!602163) (not b!602348) (not b!602235) (not b!602363) (not d!211816) (not b!602316) (not b!602171) (not tb!52487) (not b!602242) (not b!602267) (not b!602369) (not b_lambda!23771) (not d!211948) (not b_next!17147) b_and!59491 (not b!602333) (not b!602162) (not b_next!17145) (not b!602195) b_and!59493 (not b!602224) b_and!59481 (not b!602329) (not d!211826) (not bm!40555) (not b!602322) (not b!602241) (not b!602330) (not b!602362) (not b!602248) (not b_next!17139) (not b!602324) (not b!602098) (not d!212002) (not b!602255) (not d!212008) (not b!601934) (not b_lambda!23773) (not b!602328) (not b!602364) (not d!211972) (not tb!52519) (not b!602367) (not b!602365) (not b!602309) (not b!602252) (not b!602313) (not b!602102) (not d!211936) (not b_next!17137) (not b_next!17135) (not b!602338) (not b!602170) (not b!602326) (not b!602272) (not b!602318) (not b!602283) (not d!211940) b_and!59495 (not d!211810) (not b!602182) (not d!211968) (not b!602270) (not b!602238) (not b!602265))
(check-sat (not b_next!17133) b_and!59479 b_and!59497 (not b_next!17139) b_and!59495 (not b_next!17147) b_and!59491 b_and!59493 (not b_next!17145) b_and!59481 (not b_next!17137) (not b_next!17135))
