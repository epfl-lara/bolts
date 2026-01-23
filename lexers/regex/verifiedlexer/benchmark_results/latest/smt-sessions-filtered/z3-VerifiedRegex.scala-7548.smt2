; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398122 () Bool)

(assert start!398122)

(declare-fun b!4175970 () Bool)

(declare-fun b_free!121151 () Bool)

(declare-fun b_next!121855 () Bool)

(assert (=> b!4175970 (= b_free!121151 (not b_next!121855))))

(declare-fun tp!1276199 () Bool)

(declare-fun b_and!326381 () Bool)

(assert (=> b!4175970 (= tp!1276199 b_and!326381)))

(declare-fun b_free!121153 () Bool)

(declare-fun b_next!121857 () Bool)

(assert (=> b!4175970 (= b_free!121153 (not b_next!121857))))

(declare-fun tp!1276196 () Bool)

(declare-fun b_and!326383 () Bool)

(assert (=> b!4175970 (= tp!1276196 b_and!326383)))

(declare-fun b!4175978 () Bool)

(declare-fun b_free!121155 () Bool)

(declare-fun b_next!121859 () Bool)

(assert (=> b!4175978 (= b_free!121155 (not b_next!121859))))

(declare-fun tp!1276195 () Bool)

(declare-fun b_and!326385 () Bool)

(assert (=> b!4175978 (= tp!1276195 b_and!326385)))

(declare-fun b_free!121157 () Bool)

(declare-fun b_next!121861 () Bool)

(assert (=> b!4175978 (= b_free!121157 (not b_next!121861))))

(declare-fun tp!1276203 () Bool)

(declare-fun b_and!326387 () Bool)

(assert (=> b!4175978 (= tp!1276203 b_and!326387)))

(declare-fun b!4175975 () Bool)

(declare-fun b_free!121159 () Bool)

(declare-fun b_next!121863 () Bool)

(assert (=> b!4175975 (= b_free!121159 (not b_next!121863))))

(declare-fun tp!1276204 () Bool)

(declare-fun b_and!326389 () Bool)

(assert (=> b!4175975 (= tp!1276204 b_and!326389)))

(declare-fun b_free!121161 () Bool)

(declare-fun b_next!121865 () Bool)

(assert (=> b!4175975 (= b_free!121161 (not b_next!121865))))

(declare-fun tp!1276193 () Bool)

(declare-fun b_and!326391 () Bool)

(assert (=> b!4175975 (= tp!1276193 b_and!326391)))

(declare-fun b!4175963 () Bool)

(declare-fun res!1711786 () Bool)

(declare-fun e!2592547 () Bool)

(assert (=> b!4175963 (=> res!1711786 e!2592547)))

(declare-datatypes ((C!25224 0))(
  ( (C!25225 (val!14774 Int)) )
))
(declare-datatypes ((List!45939 0))(
  ( (Nil!45815) (Cons!45815 (h!51235 C!25224) (t!344698 List!45939)) )
))
(declare-datatypes ((IArray!27651 0))(
  ( (IArray!27652 (innerList!13883 List!45939)) )
))
(declare-datatypes ((Conc!13823 0))(
  ( (Node!13823 (left!34135 Conc!13823) (right!34465 Conc!13823) (csize!27876 Int) (cheight!14034 Int)) (Leaf!21372 (xs!17129 IArray!27651) (csize!27877 Int)) (Empty!13823) )
))
(declare-datatypes ((BalanceConc!27240 0))(
  ( (BalanceConc!27241 (c!713388 Conc!13823)) )
))
(declare-fun lt!1487087 () BalanceConc!27240)

(declare-fun lt!1487090 () Int)

(declare-fun size!33630 (BalanceConc!27240) Int)

(assert (=> b!4175963 (= res!1711786 (>= (size!33630 lt!1487087) lt!1487090))))

(declare-fun b!4175964 () Bool)

(declare-fun res!1711784 () Bool)

(assert (=> b!4175964 (=> res!1711784 e!2592547)))

(declare-fun lt!1487086 () List!45939)

(declare-fun input!3342 () List!45939)

(declare-fun isPrefix!4469 (List!45939 List!45939) Bool)

(assert (=> b!4175964 (= res!1711784 (not (isPrefix!4469 lt!1487086 input!3342)))))

(declare-fun b!4175965 () Bool)

(declare-datatypes ((List!45940 0))(
  ( (Nil!45816) (Cons!45816 (h!51236 (_ BitVec 16)) (t!344699 List!45940)) )
))
(declare-datatypes ((TokenValue!7842 0))(
  ( (FloatLiteralValue!15684 (text!55339 List!45940)) (TokenValueExt!7841 (__x!27905 Int)) (Broken!39210 (value!237448 List!45940)) (Object!7965) (End!7842) (Def!7842) (Underscore!7842) (Match!7842) (Else!7842) (Error!7842) (Case!7842) (If!7842) (Extends!7842) (Abstract!7842) (Class!7842) (Val!7842) (DelimiterValue!15684 (del!7902 List!45940)) (KeywordValue!7848 (value!237449 List!45940)) (CommentValue!15684 (value!237450 List!45940)) (WhitespaceValue!15684 (value!237451 List!45940)) (IndentationValue!7842 (value!237452 List!45940)) (String!53075) (Int32!7842) (Broken!39211 (value!237453 List!45940)) (Boolean!7843) (Unit!64880) (OperatorValue!7845 (op!7902 List!45940)) (IdentifierValue!15684 (value!237454 List!45940)) (IdentifierValue!15685 (value!237455 List!45940)) (WhitespaceValue!15685 (value!237456 List!45940)) (True!15684) (False!15684) (Broken!39212 (value!237457 List!45940)) (Broken!39213 (value!237458 List!45940)) (True!15685) (RightBrace!7842) (RightBracket!7842) (Colon!7842) (Null!7842) (Comma!7842) (LeftBracket!7842) (False!15685) (LeftBrace!7842) (ImaginaryLiteralValue!7842 (text!55340 List!45940)) (StringLiteralValue!23526 (value!237459 List!45940)) (EOFValue!7842 (value!237460 List!45940)) (IdentValue!7842 (value!237461 List!45940)) (DelimiterValue!15685 (value!237462 List!45940)) (DedentValue!7842 (value!237463 List!45940)) (NewLineValue!7842 (value!237464 List!45940)) (IntegerValue!23526 (value!237465 (_ BitVec 32)) (text!55341 List!45940)) (IntegerValue!23527 (value!237466 Int) (text!55342 List!45940)) (Times!7842) (Or!7842) (Equal!7842) (Minus!7842) (Broken!39214 (value!237467 List!45940)) (And!7842) (Div!7842) (LessEqual!7842) (Mod!7842) (Concat!20359) (Not!7842) (Plus!7842) (SpaceValue!7842 (value!237468 List!45940)) (IntegerValue!23528 (value!237469 Int) (text!55343 List!45940)) (StringLiteralValue!23527 (text!55344 List!45940)) (FloatLiteralValue!15685 (text!55345 List!45940)) (BytesLiteralValue!7842 (value!237470 List!45940)) (CommentValue!15685 (value!237471 List!45940)) (StringLiteralValue!23528 (value!237472 List!45940)) (ErrorTokenValue!7842 (msg!7903 List!45940)) )
))
(declare-datatypes ((String!53076 0))(
  ( (String!53077 (value!237473 String)) )
))
(declare-datatypes ((Regex!12517 0))(
  ( (ElementMatch!12517 (c!713389 C!25224)) (Concat!20360 (regOne!25546 Regex!12517) (regTwo!25546 Regex!12517)) (EmptyExpr!12517) (Star!12517 (reg!12846 Regex!12517)) (EmptyLang!12517) (Union!12517 (regOne!25547 Regex!12517) (regTwo!25547 Regex!12517)) )
))
(declare-datatypes ((TokenValueInjection!15112 0))(
  ( (TokenValueInjection!15113 (toValue!10296 Int) (toChars!10155 Int)) )
))
(declare-datatypes ((Rule!15024 0))(
  ( (Rule!15025 (regex!7612 Regex!12517) (tag!8476 String!53076) (isSeparator!7612 Bool) (transformation!7612 TokenValueInjection!15112)) )
))
(declare-fun rBis!167 () Rule!15024)

(declare-fun validRegex!5634 (Regex!12517) Bool)

(assert (=> b!4175965 (= e!2592547 (validRegex!5634 (regex!7612 rBis!167)))))

(declare-fun pBis!107 () List!45939)

(declare-fun matchR!6256 (Regex!12517 List!45939) Bool)

(assert (=> b!4175965 (not (matchR!6256 (regex!7612 rBis!167) pBis!107))))

(declare-datatypes ((Token!13938 0))(
  ( (Token!13939 (value!237474 TokenValue!7842) (rule!10666 Rule!15024) (size!33631 Int) (originalCharacters!8000 List!45939)) )
))
(declare-datatypes ((tuple2!43650 0))(
  ( (tuple2!43651 (_1!24959 Token!13938) (_2!24959 List!45939)) )
))
(declare-fun lt!1487098 () tuple2!43650)

(declare-datatypes ((LexerInterface!7205 0))(
  ( (LexerInterfaceExt!7202 (__x!27906 Int)) (Lexer!7203) )
))
(declare-fun thiss!25986 () LexerInterface!7205)

(declare-datatypes ((Unit!64881 0))(
  ( (Unit!64882) )
))
(declare-fun lt!1487097 () Unit!64881)

(declare-fun lemmaMaxPrefixOneRuleOutputsMaxPrefix!6 (LexerInterface!7205 Rule!15024 List!45939 Token!13938 List!45939 List!45939 List!45939) Unit!64881)

(assert (=> b!4175965 (= lt!1487097 (lemmaMaxPrefixOneRuleOutputsMaxPrefix!6 thiss!25986 rBis!167 lt!1487086 (_1!24959 lt!1487098) input!3342 (_2!24959 lt!1487098) pBis!107))))

(declare-fun b!4175966 () Bool)

(declare-fun e!2592550 () Bool)

(assert (=> b!4175966 (= e!2592550 e!2592547)))

(declare-fun res!1711795 () Bool)

(assert (=> b!4175966 (=> res!1711795 e!2592547)))

(assert (=> b!4175966 (= res!1711795 (= lt!1487086 pBis!107))))

(declare-fun ++!11690 (List!45939 List!45939) List!45939)

(assert (=> b!4175966 (isPrefix!4469 lt!1487086 (++!11690 lt!1487086 (_2!24959 lt!1487098)))))

(declare-fun lt!1487089 () Unit!64881)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2976 (List!45939 List!45939) Unit!64881)

(assert (=> b!4175966 (= lt!1487089 (lemmaConcatTwoListThenFirstIsPrefix!2976 lt!1487086 (_2!24959 lt!1487098)))))

(declare-fun list!16547 (BalanceConc!27240) List!45939)

(assert (=> b!4175966 (= lt!1487086 (list!16547 lt!1487087))))

(declare-fun charsOf!5053 (Token!13938) BalanceConc!27240)

(assert (=> b!4175966 (= lt!1487087 (charsOf!5053 (_1!24959 lt!1487098)))))

(declare-datatypes ((Option!9808 0))(
  ( (None!9807) (Some!9807 (v!40607 tuple2!43650)) )
))
(declare-fun lt!1487085 () Option!9808)

(declare-fun get!14883 (Option!9808) tuple2!43650)

(assert (=> b!4175966 (= lt!1487098 (get!14883 lt!1487085))))

(declare-fun b!4175967 () Bool)

(declare-fun res!1711791 () Bool)

(declare-fun e!2592548 () Bool)

(assert (=> b!4175967 (=> (not res!1711791) (not e!2592548))))

(declare-fun r!4142 () Rule!15024)

(declare-fun ruleValid!3330 (LexerInterface!7205 Rule!15024) Bool)

(assert (=> b!4175967 (= res!1711791 (ruleValid!3330 thiss!25986 r!4142))))

(declare-fun b!4175968 () Bool)

(declare-fun res!1711785 () Bool)

(declare-fun e!2592549 () Bool)

(assert (=> b!4175968 (=> res!1711785 e!2592549)))

(declare-fun lt!1487092 () Option!9808)

(declare-datatypes ((List!45941 0))(
  ( (Nil!45817) (Cons!45817 (h!51237 Rule!15024) (t!344700 List!45941)) )
))
(declare-fun rules!3843 () List!45941)

(declare-fun maxPrefix!4257 (LexerInterface!7205 List!45941 List!45939) Option!9808)

(assert (=> b!4175968 (= res!1711785 (not (= (maxPrefix!4257 thiss!25986 rules!3843 input!3342) lt!1487092)))))

(declare-fun b!4175969 () Bool)

(declare-fun res!1711782 () Bool)

(assert (=> b!4175969 (=> (not res!1711782) (not e!2592548))))

(assert (=> b!4175969 (= res!1711782 (isPrefix!4469 pBis!107 input!3342))))

(declare-fun e!2592543 () Bool)

(assert (=> b!4175970 (= e!2592543 (and tp!1276199 tp!1276196))))

(declare-fun b!4175971 () Bool)

(declare-fun res!1711792 () Bool)

(assert (=> b!4175971 (=> (not res!1711792) (not e!2592548))))

(declare-fun contains!9415 (List!45941 Rule!15024) Bool)

(assert (=> b!4175971 (= res!1711792 (contains!9415 rules!3843 r!4142))))

(declare-fun e!2592538 () Bool)

(declare-fun b!4175972 () Bool)

(declare-fun tp!1276192 () Bool)

(declare-fun inv!60339 (String!53076) Bool)

(declare-fun inv!60341 (TokenValueInjection!15112) Bool)

(assert (=> b!4175972 (= e!2592538 (and tp!1276192 (inv!60339 (tag!8476 r!4142)) (inv!60341 (transformation!7612 r!4142)) e!2592543))))

(declare-fun b!4175973 () Bool)

(declare-fun e!2592545 () Bool)

(declare-fun tp_is_empty!21997 () Bool)

(declare-fun tp!1276201 () Bool)

(assert (=> b!4175973 (= e!2592545 (and tp_is_empty!21997 tp!1276201))))

(declare-fun b!4175974 () Bool)

(declare-fun e!2592546 () Bool)

(assert (=> b!4175974 (= e!2592546 e!2592549)))

(declare-fun res!1711793 () Bool)

(assert (=> b!4175974 (=> res!1711793 e!2592549)))

(declare-fun lt!1487091 () Int)

(assert (=> b!4175974 (= res!1711793 (<= lt!1487090 lt!1487091))))

(declare-fun size!33632 (List!45939) Int)

(assert (=> b!4175974 (= lt!1487090 (size!33632 pBis!107))))

(declare-fun e!2592541 () Bool)

(assert (=> b!4175975 (= e!2592541 (and tp!1276204 tp!1276193))))

(declare-fun tp!1276197 () Bool)

(declare-fun e!2592554 () Bool)

(declare-fun e!2592553 () Bool)

(declare-fun b!4175976 () Bool)

(assert (=> b!4175976 (= e!2592553 (and tp!1276197 (inv!60339 (tag!8476 (h!51237 rules!3843))) (inv!60341 (transformation!7612 (h!51237 rules!3843))) e!2592554))))

(declare-fun b!4175977 () Bool)

(declare-fun res!1711781 () Bool)

(assert (=> b!4175977 (=> (not res!1711781) (not e!2592548))))

(declare-fun rulesInvariant!6418 (LexerInterface!7205 List!45941) Bool)

(assert (=> b!4175977 (= res!1711781 (rulesInvariant!6418 thiss!25986 rules!3843))))

(assert (=> b!4175978 (= e!2592554 (and tp!1276195 tp!1276203))))

(declare-fun b!4175979 () Bool)

(declare-fun res!1711796 () Bool)

(assert (=> b!4175979 (=> (not res!1711796) (not e!2592548))))

(assert (=> b!4175979 (= res!1711796 (contains!9415 rules!3843 rBis!167))))

(declare-fun res!1711787 () Bool)

(assert (=> start!398122 (=> (not res!1711787) (not e!2592548))))

(get-info :version)

(assert (=> start!398122 (= res!1711787 ((_ is Lexer!7203) thiss!25986))))

(assert (=> start!398122 e!2592548))

(assert (=> start!398122 true))

(declare-fun e!2592542 () Bool)

(assert (=> start!398122 e!2592542))

(assert (=> start!398122 e!2592538))

(declare-fun e!2592552 () Bool)

(assert (=> start!398122 e!2592552))

(declare-fun e!2592551 () Bool)

(assert (=> start!398122 e!2592551))

(declare-fun e!2592539 () Bool)

(assert (=> start!398122 e!2592539))

(assert (=> start!398122 e!2592545))

(declare-fun b!4175980 () Bool)

(declare-fun res!1711794 () Bool)

(assert (=> b!4175980 (=> (not res!1711794) (not e!2592548))))

(declare-fun isEmpty!27102 (List!45941) Bool)

(assert (=> b!4175980 (= res!1711794 (not (isEmpty!27102 rules!3843)))))

(declare-fun b!4175981 () Bool)

(declare-fun tp!1276200 () Bool)

(assert (=> b!4175981 (= e!2592552 (and e!2592553 tp!1276200))))

(declare-fun b!4175982 () Bool)

(declare-fun res!1711780 () Bool)

(assert (=> b!4175982 (=> (not res!1711780) (not e!2592548))))

(declare-fun p!2959 () List!45939)

(assert (=> b!4175982 (= res!1711780 (isPrefix!4469 p!2959 input!3342))))

(declare-fun b!4175983 () Bool)

(assert (=> b!4175983 (= e!2592549 e!2592550)))

(declare-fun res!1711779 () Bool)

(assert (=> b!4175983 (=> res!1711779 e!2592550)))

(declare-fun isEmpty!27103 (Option!9808) Bool)

(assert (=> b!4175983 (= res!1711779 (isEmpty!27103 lt!1487085))))

(declare-fun maxPrefixOneRule!3216 (LexerInterface!7205 Rule!15024 List!45939) Option!9808)

(assert (=> b!4175983 (= lt!1487085 (maxPrefixOneRule!3216 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1487096 () Unit!64881)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2344 (LexerInterface!7205 Rule!15024 List!45941) Unit!64881)

(assert (=> b!4175983 (= lt!1487096 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2344 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4175983 (<= lt!1487090 (size!33632 input!3342))))

(declare-fun lt!1487095 () Unit!64881)

(declare-fun lemmaIsPrefixThenSmallerEqSize!501 (List!45939 List!45939) Unit!64881)

(assert (=> b!4175983 (= lt!1487095 (lemmaIsPrefixThenSmallerEqSize!501 pBis!107 input!3342))))

(declare-fun b!4175984 () Bool)

(assert (=> b!4175984 (= e!2592548 (not e!2592546))))

(declare-fun res!1711788 () Bool)

(assert (=> b!4175984 (=> res!1711788 e!2592546)))

(assert (=> b!4175984 (= res!1711788 (not (= (maxPrefixOneRule!3216 thiss!25986 r!4142 input!3342) lt!1487092)))))

(declare-fun lt!1487088 () TokenValue!7842)

(declare-fun getSuffix!2764 (List!45939 List!45939) List!45939)

(assert (=> b!4175984 (= lt!1487092 (Some!9807 (tuple2!43651 (Token!13939 lt!1487088 r!4142 lt!1487091 p!2959) (getSuffix!2764 input!3342 p!2959))))))

(assert (=> b!4175984 (= lt!1487091 (size!33632 p!2959))))

(declare-fun lt!1487084 () BalanceConc!27240)

(declare-fun apply!10577 (TokenValueInjection!15112 BalanceConc!27240) TokenValue!7842)

(assert (=> b!4175984 (= lt!1487088 (apply!10577 (transformation!7612 r!4142) lt!1487084))))

(assert (=> b!4175984 (isPrefix!4469 input!3342 input!3342)))

(declare-fun lt!1487094 () Unit!64881)

(declare-fun lemmaIsPrefixRefl!2898 (List!45939 List!45939) Unit!64881)

(assert (=> b!4175984 (= lt!1487094 (lemmaIsPrefixRefl!2898 input!3342 input!3342))))

(declare-fun lt!1487093 () Unit!64881)

(declare-fun lemmaSemiInverse!2378 (TokenValueInjection!15112 BalanceConc!27240) Unit!64881)

(assert (=> b!4175984 (= lt!1487093 (lemmaSemiInverse!2378 (transformation!7612 r!4142) lt!1487084))))

(declare-fun seqFromList!5637 (List!45939) BalanceConc!27240)

(assert (=> b!4175984 (= lt!1487084 (seqFromList!5637 p!2959))))

(declare-fun b!4175985 () Bool)

(declare-fun res!1711789 () Bool)

(assert (=> b!4175985 (=> (not res!1711789) (not e!2592548))))

(assert (=> b!4175985 (= res!1711789 (matchR!6256 (regex!7612 r!4142) p!2959))))

(declare-fun b!4175986 () Bool)

(declare-fun res!1711783 () Bool)

(assert (=> b!4175986 (=> (not res!1711783) (not e!2592548))))

(assert (=> b!4175986 (= res!1711783 (validRegex!5634 (regex!7612 r!4142)))))

(declare-fun b!4175987 () Bool)

(declare-fun tp!1276202 () Bool)

(assert (=> b!4175987 (= e!2592551 (and tp_is_empty!21997 tp!1276202))))

(declare-fun tp!1276194 () Bool)

(declare-fun b!4175988 () Bool)

(assert (=> b!4175988 (= e!2592542 (and tp!1276194 (inv!60339 (tag!8476 rBis!167)) (inv!60341 (transformation!7612 rBis!167)) e!2592541))))

(declare-fun b!4175989 () Bool)

(declare-fun res!1711790 () Bool)

(assert (=> b!4175989 (=> res!1711790 e!2592549)))

(assert (=> b!4175989 (= res!1711790 (not (ruleValid!3330 thiss!25986 rBis!167)))))

(declare-fun b!4175990 () Bool)

(declare-fun tp!1276198 () Bool)

(assert (=> b!4175990 (= e!2592539 (and tp_is_empty!21997 tp!1276198))))

(assert (= (and start!398122 res!1711787) b!4175982))

(assert (= (and b!4175982 res!1711780) b!4175969))

(assert (= (and b!4175969 res!1711782) b!4175980))

(assert (= (and b!4175980 res!1711794) b!4175977))

(assert (= (and b!4175977 res!1711781) b!4175971))

(assert (= (and b!4175971 res!1711792) b!4175979))

(assert (= (and b!4175979 res!1711796) b!4175986))

(assert (= (and b!4175986 res!1711783) b!4175985))

(assert (= (and b!4175985 res!1711789) b!4175967))

(assert (= (and b!4175967 res!1711791) b!4175984))

(assert (= (and b!4175984 (not res!1711788)) b!4175974))

(assert (= (and b!4175974 (not res!1711793)) b!4175989))

(assert (= (and b!4175989 (not res!1711790)) b!4175968))

(assert (= (and b!4175968 (not res!1711785)) b!4175983))

(assert (= (and b!4175983 (not res!1711779)) b!4175966))

(assert (= (and b!4175966 (not res!1711795)) b!4175963))

(assert (= (and b!4175963 (not res!1711786)) b!4175964))

(assert (= (and b!4175964 (not res!1711784)) b!4175965))

(assert (= b!4175988 b!4175975))

(assert (= start!398122 b!4175988))

(assert (= b!4175972 b!4175970))

(assert (= start!398122 b!4175972))

(assert (= b!4175976 b!4175978))

(assert (= b!4175981 b!4175976))

(assert (= (and start!398122 ((_ is Cons!45817) rules!3843)) b!4175981))

(assert (= (and start!398122 ((_ is Cons!45815) input!3342)) b!4175987))

(assert (= (and start!398122 ((_ is Cons!45815) pBis!107)) b!4175990))

(assert (= (and start!398122 ((_ is Cons!45815) p!2959)) b!4175973))

(declare-fun m!4765663 () Bool)

(assert (=> b!4175974 m!4765663))

(declare-fun m!4765665 () Bool)

(assert (=> b!4175979 m!4765665))

(declare-fun m!4765667 () Bool)

(assert (=> b!4175988 m!4765667))

(declare-fun m!4765669 () Bool)

(assert (=> b!4175988 m!4765669))

(declare-fun m!4765671 () Bool)

(assert (=> b!4175976 m!4765671))

(declare-fun m!4765673 () Bool)

(assert (=> b!4175976 m!4765673))

(declare-fun m!4765675 () Bool)

(assert (=> b!4175964 m!4765675))

(declare-fun m!4765677 () Bool)

(assert (=> b!4175980 m!4765677))

(declare-fun m!4765679 () Bool)

(assert (=> b!4175983 m!4765679))

(declare-fun m!4765681 () Bool)

(assert (=> b!4175983 m!4765681))

(declare-fun m!4765683 () Bool)

(assert (=> b!4175983 m!4765683))

(declare-fun m!4765685 () Bool)

(assert (=> b!4175983 m!4765685))

(declare-fun m!4765687 () Bool)

(assert (=> b!4175983 m!4765687))

(declare-fun m!4765689 () Bool)

(assert (=> b!4175989 m!4765689))

(declare-fun m!4765691 () Bool)

(assert (=> b!4175971 m!4765691))

(declare-fun m!4765693 () Bool)

(assert (=> b!4175969 m!4765693))

(declare-fun m!4765695 () Bool)

(assert (=> b!4175985 m!4765695))

(declare-fun m!4765697 () Bool)

(assert (=> b!4175966 m!4765697))

(declare-fun m!4765699 () Bool)

(assert (=> b!4175966 m!4765699))

(declare-fun m!4765701 () Bool)

(assert (=> b!4175966 m!4765701))

(declare-fun m!4765703 () Bool)

(assert (=> b!4175966 m!4765703))

(assert (=> b!4175966 m!4765701))

(declare-fun m!4765705 () Bool)

(assert (=> b!4175966 m!4765705))

(declare-fun m!4765707 () Bool)

(assert (=> b!4175966 m!4765707))

(declare-fun m!4765709 () Bool)

(assert (=> b!4175967 m!4765709))

(declare-fun m!4765711 () Bool)

(assert (=> b!4175984 m!4765711))

(declare-fun m!4765713 () Bool)

(assert (=> b!4175984 m!4765713))

(declare-fun m!4765715 () Bool)

(assert (=> b!4175984 m!4765715))

(declare-fun m!4765717 () Bool)

(assert (=> b!4175984 m!4765717))

(declare-fun m!4765719 () Bool)

(assert (=> b!4175984 m!4765719))

(declare-fun m!4765721 () Bool)

(assert (=> b!4175984 m!4765721))

(declare-fun m!4765723 () Bool)

(assert (=> b!4175984 m!4765723))

(declare-fun m!4765725 () Bool)

(assert (=> b!4175984 m!4765725))

(declare-fun m!4765727 () Bool)

(assert (=> b!4175968 m!4765727))

(declare-fun m!4765729 () Bool)

(assert (=> b!4175963 m!4765729))

(declare-fun m!4765731 () Bool)

(assert (=> b!4175965 m!4765731))

(declare-fun m!4765733 () Bool)

(assert (=> b!4175965 m!4765733))

(declare-fun m!4765735 () Bool)

(assert (=> b!4175965 m!4765735))

(declare-fun m!4765737 () Bool)

(assert (=> b!4175986 m!4765737))

(declare-fun m!4765739 () Bool)

(assert (=> b!4175972 m!4765739))

(declare-fun m!4765741 () Bool)

(assert (=> b!4175972 m!4765741))

(declare-fun m!4765743 () Bool)

(assert (=> b!4175977 m!4765743))

(declare-fun m!4765745 () Bool)

(assert (=> b!4175982 m!4765745))

(check-sat (not b!4175989) (not b!4175977) (not b!4175964) (not b!4175985) b_and!326391 (not b!4175973) b_and!326381 (not b!4175982) (not b!4175974) tp_is_empty!21997 (not b!4175967) (not b!4175971) (not b!4175976) (not b_next!121857) (not b!4175987) b_and!326383 (not b!4175988) (not b_next!121855) (not b_next!121865) (not b!4175986) (not b_next!121863) (not b!4175990) b_and!326385 b_and!326389 (not b!4175966) (not b!4175972) (not b!4175981) (not b!4175983) (not b!4175965) (not b!4175968) (not b!4175980) (not b!4175979) (not b_next!121859) (not b_next!121861) (not b!4175984) (not b!4175963) (not b!4175969) b_and!326387)
(check-sat (not b_next!121857) b_and!326383 b_and!326391 b_and!326385 b_and!326389 b_and!326381 b_and!326387 (not b_next!121855) (not b_next!121865) (not b_next!121863) (not b_next!121859) (not b_next!121861))
(get-model)

(declare-fun d!1232901 () Bool)

(declare-fun e!2592565 () Bool)

(assert (=> d!1232901 e!2592565))

(declare-fun res!1711821 () Bool)

(assert (=> d!1232901 (=> res!1711821 e!2592565)))

(declare-fun lt!1487104 () Bool)

(assert (=> d!1232901 (= res!1711821 (not lt!1487104))))

(declare-fun e!2592566 () Bool)

(assert (=> d!1232901 (= lt!1487104 e!2592566)))

(declare-fun res!1711819 () Bool)

(assert (=> d!1232901 (=> res!1711819 e!2592566)))

(assert (=> d!1232901 (= res!1711819 ((_ is Nil!45815) lt!1487086))))

(assert (=> d!1232901 (= (isPrefix!4469 lt!1487086 input!3342) lt!1487104)))

(declare-fun b!4176004 () Bool)

(declare-fun e!2592564 () Bool)

(declare-fun tail!6711 (List!45939) List!45939)

(assert (=> b!4176004 (= e!2592564 (isPrefix!4469 (tail!6711 lt!1487086) (tail!6711 input!3342)))))

(declare-fun b!4176005 () Bool)

(assert (=> b!4176005 (= e!2592565 (>= (size!33632 input!3342) (size!33632 lt!1487086)))))

(declare-fun b!4176002 () Bool)

(assert (=> b!4176002 (= e!2592566 e!2592564)))

(declare-fun res!1711818 () Bool)

(assert (=> b!4176002 (=> (not res!1711818) (not e!2592564))))

(assert (=> b!4176002 (= res!1711818 (not ((_ is Nil!45815) input!3342)))))

(declare-fun b!4176003 () Bool)

(declare-fun res!1711820 () Bool)

(assert (=> b!4176003 (=> (not res!1711820) (not e!2592564))))

(declare-fun head!8864 (List!45939) C!25224)

(assert (=> b!4176003 (= res!1711820 (= (head!8864 lt!1487086) (head!8864 input!3342)))))

(assert (= (and d!1232901 (not res!1711819)) b!4176002))

(assert (= (and b!4176002 res!1711818) b!4176003))

(assert (= (and b!4176003 res!1711820) b!4176004))

(assert (= (and d!1232901 (not res!1711821)) b!4176005))

(declare-fun m!4765751 () Bool)

(assert (=> b!4176004 m!4765751))

(declare-fun m!4765753 () Bool)

(assert (=> b!4176004 m!4765753))

(assert (=> b!4176004 m!4765751))

(assert (=> b!4176004 m!4765753))

(declare-fun m!4765755 () Bool)

(assert (=> b!4176004 m!4765755))

(assert (=> b!4176005 m!4765683))

(declare-fun m!4765757 () Bool)

(assert (=> b!4176005 m!4765757))

(declare-fun m!4765759 () Bool)

(assert (=> b!4176003 m!4765759))

(declare-fun m!4765761 () Bool)

(assert (=> b!4176003 m!4765761))

(assert (=> b!4175964 d!1232901))

(declare-fun d!1232909 () Bool)

(declare-fun lt!1487110 () Int)

(assert (=> d!1232909 (>= lt!1487110 0)))

(declare-fun e!2592572 () Int)

(assert (=> d!1232909 (= lt!1487110 e!2592572)))

(declare-fun c!713392 () Bool)

(assert (=> d!1232909 (= c!713392 ((_ is Nil!45815) pBis!107))))

(assert (=> d!1232909 (= (size!33632 pBis!107) lt!1487110)))

(declare-fun b!4176015 () Bool)

(assert (=> b!4176015 (= e!2592572 0)))

(declare-fun b!4176016 () Bool)

(assert (=> b!4176016 (= e!2592572 (+ 1 (size!33632 (t!344698 pBis!107))))))

(assert (= (and d!1232909 c!713392) b!4176015))

(assert (= (and d!1232909 (not c!713392)) b!4176016))

(declare-fun m!4765773 () Bool)

(assert (=> b!4176016 m!4765773))

(assert (=> b!4175974 d!1232909))

(declare-fun b!4176081 () Bool)

(declare-fun res!1711875 () Bool)

(declare-fun e!2592611 () Bool)

(assert (=> b!4176081 (=> (not res!1711875) (not e!2592611))))

(declare-fun isEmpty!27105 (List!45939) Bool)

(assert (=> b!4176081 (= res!1711875 (isEmpty!27105 (tail!6711 p!2959)))))

(declare-fun b!4176082 () Bool)

(declare-fun e!2592612 () Bool)

(declare-fun lt!1487122 () Bool)

(assert (=> b!4176082 (= e!2592612 (not lt!1487122))))

(declare-fun bm!291424 () Bool)

(declare-fun call!291429 () Bool)

(assert (=> bm!291424 (= call!291429 (isEmpty!27105 p!2959))))

(declare-fun b!4176083 () Bool)

(declare-fun res!1711870 () Bool)

(declare-fun e!2592617 () Bool)

(assert (=> b!4176083 (=> res!1711870 e!2592617)))

(assert (=> b!4176083 (= res!1711870 e!2592611)))

(declare-fun res!1711873 () Bool)

(assert (=> b!4176083 (=> (not res!1711873) (not e!2592611))))

(assert (=> b!4176083 (= res!1711873 lt!1487122)))

(declare-fun b!4176084 () Bool)

(declare-fun e!2592613 () Bool)

(assert (=> b!4176084 (= e!2592613 e!2592612)))

(declare-fun c!713403 () Bool)

(assert (=> b!4176084 (= c!713403 ((_ is EmptyLang!12517) (regex!7612 r!4142)))))

(declare-fun b!4176085 () Bool)

(declare-fun e!2592616 () Bool)

(declare-fun nullable!4387 (Regex!12517) Bool)

(assert (=> b!4176085 (= e!2592616 (nullable!4387 (regex!7612 r!4142)))))

(declare-fun b!4176086 () Bool)

(declare-fun res!1711871 () Bool)

(declare-fun e!2592615 () Bool)

(assert (=> b!4176086 (=> res!1711871 e!2592615)))

(assert (=> b!4176086 (= res!1711871 (not (isEmpty!27105 (tail!6711 p!2959))))))

(declare-fun b!4176087 () Bool)

(declare-fun e!2592614 () Bool)

(assert (=> b!4176087 (= e!2592614 e!2592615)))

(declare-fun res!1711874 () Bool)

(assert (=> b!4176087 (=> res!1711874 e!2592615)))

(assert (=> b!4176087 (= res!1711874 call!291429)))

(declare-fun b!4176088 () Bool)

(declare-fun res!1711872 () Bool)

(assert (=> b!4176088 (=> res!1711872 e!2592617)))

(assert (=> b!4176088 (= res!1711872 (not ((_ is ElementMatch!12517) (regex!7612 r!4142))))))

(assert (=> b!4176088 (= e!2592612 e!2592617)))

(declare-fun b!4176089 () Bool)

(assert (=> b!4176089 (= e!2592617 e!2592614)))

(declare-fun res!1711869 () Bool)

(assert (=> b!4176089 (=> (not res!1711869) (not e!2592614))))

(assert (=> b!4176089 (= res!1711869 (not lt!1487122))))

(declare-fun b!4176091 () Bool)

(assert (=> b!4176091 (= e!2592613 (= lt!1487122 call!291429))))

(declare-fun b!4176092 () Bool)

(assert (=> b!4176092 (= e!2592615 (not (= (head!8864 p!2959) (c!713389 (regex!7612 r!4142)))))))

(declare-fun b!4176093 () Bool)

(declare-fun derivativeStep!3776 (Regex!12517 C!25224) Regex!12517)

(assert (=> b!4176093 (= e!2592616 (matchR!6256 (derivativeStep!3776 (regex!7612 r!4142) (head!8864 p!2959)) (tail!6711 p!2959)))))

(declare-fun b!4176094 () Bool)

(declare-fun res!1711868 () Bool)

(assert (=> b!4176094 (=> (not res!1711868) (not e!2592611))))

(assert (=> b!4176094 (= res!1711868 (not call!291429))))

(declare-fun d!1232915 () Bool)

(assert (=> d!1232915 e!2592613))

(declare-fun c!713404 () Bool)

(assert (=> d!1232915 (= c!713404 ((_ is EmptyExpr!12517) (regex!7612 r!4142)))))

(assert (=> d!1232915 (= lt!1487122 e!2592616)))

(declare-fun c!713402 () Bool)

(assert (=> d!1232915 (= c!713402 (isEmpty!27105 p!2959))))

(assert (=> d!1232915 (validRegex!5634 (regex!7612 r!4142))))

(assert (=> d!1232915 (= (matchR!6256 (regex!7612 r!4142) p!2959) lt!1487122)))

(declare-fun b!4176090 () Bool)

(assert (=> b!4176090 (= e!2592611 (= (head!8864 p!2959) (c!713389 (regex!7612 r!4142))))))

(assert (= (and d!1232915 c!713402) b!4176085))

(assert (= (and d!1232915 (not c!713402)) b!4176093))

(assert (= (and d!1232915 c!713404) b!4176091))

(assert (= (and d!1232915 (not c!713404)) b!4176084))

(assert (= (and b!4176084 c!713403) b!4176082))

(assert (= (and b!4176084 (not c!713403)) b!4176088))

(assert (= (and b!4176088 (not res!1711872)) b!4176083))

(assert (= (and b!4176083 res!1711873) b!4176094))

(assert (= (and b!4176094 res!1711868) b!4176081))

(assert (= (and b!4176081 res!1711875) b!4176090))

(assert (= (and b!4176083 (not res!1711870)) b!4176089))

(assert (= (and b!4176089 res!1711869) b!4176087))

(assert (= (and b!4176087 (not res!1711874)) b!4176086))

(assert (= (and b!4176086 (not res!1711871)) b!4176092))

(assert (= (or b!4176091 b!4176094 b!4176087) bm!291424))

(declare-fun m!4765811 () Bool)

(assert (=> d!1232915 m!4765811))

(assert (=> d!1232915 m!4765737))

(declare-fun m!4765813 () Bool)

(assert (=> b!4176086 m!4765813))

(assert (=> b!4176086 m!4765813))

(declare-fun m!4765815 () Bool)

(assert (=> b!4176086 m!4765815))

(declare-fun m!4765817 () Bool)

(assert (=> b!4176093 m!4765817))

(assert (=> b!4176093 m!4765817))

(declare-fun m!4765819 () Bool)

(assert (=> b!4176093 m!4765819))

(assert (=> b!4176093 m!4765813))

(assert (=> b!4176093 m!4765819))

(assert (=> b!4176093 m!4765813))

(declare-fun m!4765821 () Bool)

(assert (=> b!4176093 m!4765821))

(assert (=> b!4176092 m!4765817))

(assert (=> b!4176081 m!4765813))

(assert (=> b!4176081 m!4765813))

(assert (=> b!4176081 m!4765815))

(assert (=> bm!291424 m!4765811))

(assert (=> b!4176090 m!4765817))

(declare-fun m!4765823 () Bool)

(assert (=> b!4176085 m!4765823))

(assert (=> b!4175985 d!1232915))

(declare-fun d!1232929 () Bool)

(assert (=> d!1232929 (= (inv!60339 (tag!8476 (h!51237 rules!3843))) (= (mod (str.len (value!237473 (tag!8476 (h!51237 rules!3843)))) 2) 0))))

(assert (=> b!4175976 d!1232929))

(declare-fun d!1232931 () Bool)

(declare-fun res!1711885 () Bool)

(declare-fun e!2592628 () Bool)

(assert (=> d!1232931 (=> (not res!1711885) (not e!2592628))))

(declare-fun semiInverseModEq!3296 (Int Int) Bool)

(assert (=> d!1232931 (= res!1711885 (semiInverseModEq!3296 (toChars!10155 (transformation!7612 (h!51237 rules!3843))) (toValue!10296 (transformation!7612 (h!51237 rules!3843)))))))

(assert (=> d!1232931 (= (inv!60341 (transformation!7612 (h!51237 rules!3843))) e!2592628)))

(declare-fun b!4176108 () Bool)

(declare-fun equivClasses!3195 (Int Int) Bool)

(assert (=> b!4176108 (= e!2592628 (equivClasses!3195 (toChars!10155 (transformation!7612 (h!51237 rules!3843))) (toValue!10296 (transformation!7612 (h!51237 rules!3843)))))))

(assert (= (and d!1232931 res!1711885) b!4176108))

(declare-fun m!4765839 () Bool)

(assert (=> d!1232931 m!4765839))

(declare-fun m!4765841 () Bool)

(assert (=> b!4176108 m!4765841))

(assert (=> b!4175976 d!1232931))

(declare-fun bm!291431 () Bool)

(declare-fun call!291436 () Bool)

(declare-fun c!713413 () Bool)

(declare-fun c!713414 () Bool)

(assert (=> bm!291431 (= call!291436 (validRegex!5634 (ite c!713414 (reg!12846 (regex!7612 r!4142)) (ite c!713413 (regTwo!25547 (regex!7612 r!4142)) (regTwo!25546 (regex!7612 r!4142))))))))

(declare-fun b!4176133 () Bool)

(declare-fun e!2592651 () Bool)

(assert (=> b!4176133 (= e!2592651 call!291436)))

(declare-fun b!4176135 () Bool)

(declare-fun e!2592648 () Bool)

(assert (=> b!4176135 (= e!2592648 e!2592651)))

(declare-fun res!1711902 () Bool)

(assert (=> b!4176135 (= res!1711902 (not (nullable!4387 (reg!12846 (regex!7612 r!4142)))))))

(assert (=> b!4176135 (=> (not res!1711902) (not e!2592651))))

(declare-fun b!4176136 () Bool)

(declare-fun res!1711904 () Bool)

(declare-fun e!2592649 () Bool)

(assert (=> b!4176136 (=> res!1711904 e!2592649)))

(assert (=> b!4176136 (= res!1711904 (not ((_ is Concat!20360) (regex!7612 r!4142))))))

(declare-fun e!2592647 () Bool)

(assert (=> b!4176136 (= e!2592647 e!2592649)))

(declare-fun b!4176137 () Bool)

(declare-fun e!2592653 () Bool)

(assert (=> b!4176137 (= e!2592653 e!2592648)))

(assert (=> b!4176137 (= c!713414 ((_ is Star!12517) (regex!7612 r!4142)))))

(declare-fun b!4176138 () Bool)

(declare-fun e!2592652 () Bool)

(declare-fun call!291437 () Bool)

(assert (=> b!4176138 (= e!2592652 call!291437)))

(declare-fun bm!291432 () Bool)

(declare-fun call!291438 () Bool)

(assert (=> bm!291432 (= call!291438 (validRegex!5634 (ite c!713413 (regOne!25547 (regex!7612 r!4142)) (regOne!25546 (regex!7612 r!4142)))))))

(declare-fun b!4176139 () Bool)

(declare-fun e!2592650 () Bool)

(assert (=> b!4176139 (= e!2592650 call!291437)))

(declare-fun bm!291433 () Bool)

(assert (=> bm!291433 (= call!291437 call!291436)))

(declare-fun b!4176134 () Bool)

(declare-fun res!1711901 () Bool)

(assert (=> b!4176134 (=> (not res!1711901) (not e!2592650))))

(assert (=> b!4176134 (= res!1711901 call!291438)))

(assert (=> b!4176134 (= e!2592647 e!2592650)))

(declare-fun d!1232937 () Bool)

(declare-fun res!1711900 () Bool)

(assert (=> d!1232937 (=> res!1711900 e!2592653)))

(assert (=> d!1232937 (= res!1711900 ((_ is ElementMatch!12517) (regex!7612 r!4142)))))

(assert (=> d!1232937 (= (validRegex!5634 (regex!7612 r!4142)) e!2592653)))

(declare-fun b!4176140 () Bool)

(assert (=> b!4176140 (= e!2592649 e!2592652)))

(declare-fun res!1711903 () Bool)

(assert (=> b!4176140 (=> (not res!1711903) (not e!2592652))))

(assert (=> b!4176140 (= res!1711903 call!291438)))

(declare-fun b!4176141 () Bool)

(assert (=> b!4176141 (= e!2592648 e!2592647)))

(assert (=> b!4176141 (= c!713413 ((_ is Union!12517) (regex!7612 r!4142)))))

(assert (= (and d!1232937 (not res!1711900)) b!4176137))

(assert (= (and b!4176137 c!713414) b!4176135))

(assert (= (and b!4176137 (not c!713414)) b!4176141))

(assert (= (and b!4176135 res!1711902) b!4176133))

(assert (= (and b!4176141 c!713413) b!4176134))

(assert (= (and b!4176141 (not c!713413)) b!4176136))

(assert (= (and b!4176134 res!1711901) b!4176139))

(assert (= (and b!4176136 (not res!1711904)) b!4176140))

(assert (= (and b!4176140 res!1711903) b!4176138))

(assert (= (or b!4176139 b!4176138) bm!291433))

(assert (= (or b!4176134 b!4176140) bm!291432))

(assert (= (or b!4176133 bm!291433) bm!291431))

(declare-fun m!4765851 () Bool)

(assert (=> bm!291431 m!4765851))

(declare-fun m!4765853 () Bool)

(assert (=> b!4176135 m!4765853))

(declare-fun m!4765855 () Bool)

(assert (=> bm!291432 m!4765855))

(assert (=> b!4175986 d!1232937))

(declare-fun bm!291434 () Bool)

(declare-fun c!713415 () Bool)

(declare-fun c!713416 () Bool)

(declare-fun call!291439 () Bool)

(assert (=> bm!291434 (= call!291439 (validRegex!5634 (ite c!713416 (reg!12846 (regex!7612 rBis!167)) (ite c!713415 (regTwo!25547 (regex!7612 rBis!167)) (regTwo!25546 (regex!7612 rBis!167))))))))

(declare-fun b!4176142 () Bool)

(declare-fun e!2592658 () Bool)

(assert (=> b!4176142 (= e!2592658 call!291439)))

(declare-fun b!4176144 () Bool)

(declare-fun e!2592655 () Bool)

(assert (=> b!4176144 (= e!2592655 e!2592658)))

(declare-fun res!1711907 () Bool)

(assert (=> b!4176144 (= res!1711907 (not (nullable!4387 (reg!12846 (regex!7612 rBis!167)))))))

(assert (=> b!4176144 (=> (not res!1711907) (not e!2592658))))

(declare-fun b!4176145 () Bool)

(declare-fun res!1711909 () Bool)

(declare-fun e!2592656 () Bool)

(assert (=> b!4176145 (=> res!1711909 e!2592656)))

(assert (=> b!4176145 (= res!1711909 (not ((_ is Concat!20360) (regex!7612 rBis!167))))))

(declare-fun e!2592654 () Bool)

(assert (=> b!4176145 (= e!2592654 e!2592656)))

(declare-fun b!4176146 () Bool)

(declare-fun e!2592660 () Bool)

(assert (=> b!4176146 (= e!2592660 e!2592655)))

(assert (=> b!4176146 (= c!713416 ((_ is Star!12517) (regex!7612 rBis!167)))))

(declare-fun b!4176147 () Bool)

(declare-fun e!2592659 () Bool)

(declare-fun call!291440 () Bool)

(assert (=> b!4176147 (= e!2592659 call!291440)))

(declare-fun bm!291435 () Bool)

(declare-fun call!291441 () Bool)

(assert (=> bm!291435 (= call!291441 (validRegex!5634 (ite c!713415 (regOne!25547 (regex!7612 rBis!167)) (regOne!25546 (regex!7612 rBis!167)))))))

(declare-fun b!4176148 () Bool)

(declare-fun e!2592657 () Bool)

(assert (=> b!4176148 (= e!2592657 call!291440)))

(declare-fun bm!291436 () Bool)

(assert (=> bm!291436 (= call!291440 call!291439)))

(declare-fun b!4176143 () Bool)

(declare-fun res!1711906 () Bool)

(assert (=> b!4176143 (=> (not res!1711906) (not e!2592657))))

(assert (=> b!4176143 (= res!1711906 call!291441)))

(assert (=> b!4176143 (= e!2592654 e!2592657)))

(declare-fun d!1232945 () Bool)

(declare-fun res!1711905 () Bool)

(assert (=> d!1232945 (=> res!1711905 e!2592660)))

(assert (=> d!1232945 (= res!1711905 ((_ is ElementMatch!12517) (regex!7612 rBis!167)))))

(assert (=> d!1232945 (= (validRegex!5634 (regex!7612 rBis!167)) e!2592660)))

(declare-fun b!4176149 () Bool)

(assert (=> b!4176149 (= e!2592656 e!2592659)))

(declare-fun res!1711908 () Bool)

(assert (=> b!4176149 (=> (not res!1711908) (not e!2592659))))

(assert (=> b!4176149 (= res!1711908 call!291441)))

(declare-fun b!4176150 () Bool)

(assert (=> b!4176150 (= e!2592655 e!2592654)))

(assert (=> b!4176150 (= c!713415 ((_ is Union!12517) (regex!7612 rBis!167)))))

(assert (= (and d!1232945 (not res!1711905)) b!4176146))

(assert (= (and b!4176146 c!713416) b!4176144))

(assert (= (and b!4176146 (not c!713416)) b!4176150))

(assert (= (and b!4176144 res!1711907) b!4176142))

(assert (= (and b!4176150 c!713415) b!4176143))

(assert (= (and b!4176150 (not c!713415)) b!4176145))

(assert (= (and b!4176143 res!1711906) b!4176148))

(assert (= (and b!4176145 (not res!1711909)) b!4176149))

(assert (= (and b!4176149 res!1711908) b!4176147))

(assert (= (or b!4176148 b!4176147) bm!291436))

(assert (= (or b!4176143 b!4176149) bm!291435))

(assert (= (or b!4176142 bm!291436) bm!291434))

(declare-fun m!4765857 () Bool)

(assert (=> bm!291434 m!4765857))

(declare-fun m!4765859 () Bool)

(assert (=> b!4176144 m!4765859))

(declare-fun m!4765861 () Bool)

(assert (=> bm!291435 m!4765861))

(assert (=> b!4175965 d!1232945))

(declare-fun b!4176151 () Bool)

(declare-fun res!1711917 () Bool)

(declare-fun e!2592661 () Bool)

(assert (=> b!4176151 (=> (not res!1711917) (not e!2592661))))

(assert (=> b!4176151 (= res!1711917 (isEmpty!27105 (tail!6711 pBis!107)))))

(declare-fun b!4176152 () Bool)

(declare-fun e!2592662 () Bool)

(declare-fun lt!1487130 () Bool)

(assert (=> b!4176152 (= e!2592662 (not lt!1487130))))

(declare-fun bm!291437 () Bool)

(declare-fun call!291442 () Bool)

(assert (=> bm!291437 (= call!291442 (isEmpty!27105 pBis!107))))

(declare-fun b!4176153 () Bool)

(declare-fun res!1711912 () Bool)

(declare-fun e!2592667 () Bool)

(assert (=> b!4176153 (=> res!1711912 e!2592667)))

(assert (=> b!4176153 (= res!1711912 e!2592661)))

(declare-fun res!1711915 () Bool)

(assert (=> b!4176153 (=> (not res!1711915) (not e!2592661))))

(assert (=> b!4176153 (= res!1711915 lt!1487130)))

(declare-fun b!4176154 () Bool)

(declare-fun e!2592663 () Bool)

(assert (=> b!4176154 (= e!2592663 e!2592662)))

(declare-fun c!713418 () Bool)

(assert (=> b!4176154 (= c!713418 ((_ is EmptyLang!12517) (regex!7612 rBis!167)))))

(declare-fun b!4176155 () Bool)

(declare-fun e!2592666 () Bool)

(assert (=> b!4176155 (= e!2592666 (nullable!4387 (regex!7612 rBis!167)))))

(declare-fun b!4176156 () Bool)

(declare-fun res!1711913 () Bool)

(declare-fun e!2592665 () Bool)

(assert (=> b!4176156 (=> res!1711913 e!2592665)))

(assert (=> b!4176156 (= res!1711913 (not (isEmpty!27105 (tail!6711 pBis!107))))))

(declare-fun b!4176157 () Bool)

(declare-fun e!2592664 () Bool)

(assert (=> b!4176157 (= e!2592664 e!2592665)))

(declare-fun res!1711916 () Bool)

(assert (=> b!4176157 (=> res!1711916 e!2592665)))

(assert (=> b!4176157 (= res!1711916 call!291442)))

(declare-fun b!4176158 () Bool)

(declare-fun res!1711914 () Bool)

(assert (=> b!4176158 (=> res!1711914 e!2592667)))

(assert (=> b!4176158 (= res!1711914 (not ((_ is ElementMatch!12517) (regex!7612 rBis!167))))))

(assert (=> b!4176158 (= e!2592662 e!2592667)))

(declare-fun b!4176159 () Bool)

(assert (=> b!4176159 (= e!2592667 e!2592664)))

(declare-fun res!1711911 () Bool)

(assert (=> b!4176159 (=> (not res!1711911) (not e!2592664))))

(assert (=> b!4176159 (= res!1711911 (not lt!1487130))))

(declare-fun b!4176161 () Bool)

(assert (=> b!4176161 (= e!2592663 (= lt!1487130 call!291442))))

(declare-fun b!4176162 () Bool)

(assert (=> b!4176162 (= e!2592665 (not (= (head!8864 pBis!107) (c!713389 (regex!7612 rBis!167)))))))

(declare-fun b!4176163 () Bool)

(assert (=> b!4176163 (= e!2592666 (matchR!6256 (derivativeStep!3776 (regex!7612 rBis!167) (head!8864 pBis!107)) (tail!6711 pBis!107)))))

(declare-fun b!4176164 () Bool)

(declare-fun res!1711910 () Bool)

(assert (=> b!4176164 (=> (not res!1711910) (not e!2592661))))

(assert (=> b!4176164 (= res!1711910 (not call!291442))))

(declare-fun d!1232947 () Bool)

(assert (=> d!1232947 e!2592663))

(declare-fun c!713419 () Bool)

(assert (=> d!1232947 (= c!713419 ((_ is EmptyExpr!12517) (regex!7612 rBis!167)))))

(assert (=> d!1232947 (= lt!1487130 e!2592666)))

(declare-fun c!713417 () Bool)

(assert (=> d!1232947 (= c!713417 (isEmpty!27105 pBis!107))))

(assert (=> d!1232947 (validRegex!5634 (regex!7612 rBis!167))))

(assert (=> d!1232947 (= (matchR!6256 (regex!7612 rBis!167) pBis!107) lt!1487130)))

(declare-fun b!4176160 () Bool)

(assert (=> b!4176160 (= e!2592661 (= (head!8864 pBis!107) (c!713389 (regex!7612 rBis!167))))))

(assert (= (and d!1232947 c!713417) b!4176155))

(assert (= (and d!1232947 (not c!713417)) b!4176163))

(assert (= (and d!1232947 c!713419) b!4176161))

(assert (= (and d!1232947 (not c!713419)) b!4176154))

(assert (= (and b!4176154 c!713418) b!4176152))

(assert (= (and b!4176154 (not c!713418)) b!4176158))

(assert (= (and b!4176158 (not res!1711914)) b!4176153))

(assert (= (and b!4176153 res!1711915) b!4176164))

(assert (= (and b!4176164 res!1711910) b!4176151))

(assert (= (and b!4176151 res!1711917) b!4176160))

(assert (= (and b!4176153 (not res!1711912)) b!4176159))

(assert (= (and b!4176159 res!1711911) b!4176157))

(assert (= (and b!4176157 (not res!1711916)) b!4176156))

(assert (= (and b!4176156 (not res!1711913)) b!4176162))

(assert (= (or b!4176161 b!4176164 b!4176157) bm!291437))

(declare-fun m!4765863 () Bool)

(assert (=> d!1232947 m!4765863))

(assert (=> d!1232947 m!4765731))

(declare-fun m!4765865 () Bool)

(assert (=> b!4176156 m!4765865))

(assert (=> b!4176156 m!4765865))

(declare-fun m!4765867 () Bool)

(assert (=> b!4176156 m!4765867))

(declare-fun m!4765869 () Bool)

(assert (=> b!4176163 m!4765869))

(assert (=> b!4176163 m!4765869))

(declare-fun m!4765871 () Bool)

(assert (=> b!4176163 m!4765871))

(assert (=> b!4176163 m!4765865))

(assert (=> b!4176163 m!4765871))

(assert (=> b!4176163 m!4765865))

(declare-fun m!4765873 () Bool)

(assert (=> b!4176163 m!4765873))

(assert (=> b!4176162 m!4765869))

(assert (=> b!4176151 m!4765865))

(assert (=> b!4176151 m!4765865))

(assert (=> b!4176151 m!4765867))

(assert (=> bm!291437 m!4765863))

(assert (=> b!4176160 m!4765869))

(declare-fun m!4765875 () Bool)

(assert (=> b!4176155 m!4765875))

(assert (=> b!4175965 d!1232947))

(declare-fun d!1232949 () Bool)

(assert (=> d!1232949 (not (matchR!6256 (regex!7612 rBis!167) pBis!107))))

(declare-fun lt!1487133 () Unit!64881)

(declare-fun choose!25556 (LexerInterface!7205 Rule!15024 List!45939 Token!13938 List!45939 List!45939 List!45939) Unit!64881)

(assert (=> d!1232949 (= lt!1487133 (choose!25556 thiss!25986 rBis!167 lt!1487086 (_1!24959 lt!1487098) input!3342 (_2!24959 lt!1487098) pBis!107))))

(assert (=> d!1232949 (= (lemmaMaxPrefixOneRuleOutputsMaxPrefix!6 thiss!25986 rBis!167 lt!1487086 (_1!24959 lt!1487098) input!3342 (_2!24959 lt!1487098) pBis!107) lt!1487133)))

(declare-fun bs!596153 () Bool)

(assert (= bs!596153 d!1232949))

(assert (=> bs!596153 m!4765733))

(declare-fun m!4765877 () Bool)

(assert (=> bs!596153 m!4765877))

(assert (=> b!4175965 d!1232949))

(declare-fun d!1232951 () Bool)

(assert (=> d!1232951 (= (inv!60339 (tag!8476 rBis!167)) (= (mod (str.len (value!237473 (tag!8476 rBis!167))) 2) 0))))

(assert (=> b!4175988 d!1232951))

(declare-fun d!1232953 () Bool)

(declare-fun res!1711918 () Bool)

(declare-fun e!2592668 () Bool)

(assert (=> d!1232953 (=> (not res!1711918) (not e!2592668))))

(assert (=> d!1232953 (= res!1711918 (semiInverseModEq!3296 (toChars!10155 (transformation!7612 rBis!167)) (toValue!10296 (transformation!7612 rBis!167))))))

(assert (=> d!1232953 (= (inv!60341 (transformation!7612 rBis!167)) e!2592668)))

(declare-fun b!4176165 () Bool)

(assert (=> b!4176165 (= e!2592668 (equivClasses!3195 (toChars!10155 (transformation!7612 rBis!167)) (toValue!10296 (transformation!7612 rBis!167))))))

(assert (= (and d!1232953 res!1711918) b!4176165))

(declare-fun m!4765879 () Bool)

(assert (=> d!1232953 m!4765879))

(declare-fun m!4765881 () Bool)

(assert (=> b!4176165 m!4765881))

(assert (=> b!4175988 d!1232953))

(declare-fun d!1232955 () Bool)

(declare-fun res!1711923 () Bool)

(declare-fun e!2592671 () Bool)

(assert (=> d!1232955 (=> (not res!1711923) (not e!2592671))))

(assert (=> d!1232955 (= res!1711923 (validRegex!5634 (regex!7612 r!4142)))))

(assert (=> d!1232955 (= (ruleValid!3330 thiss!25986 r!4142) e!2592671)))

(declare-fun b!4176170 () Bool)

(declare-fun res!1711924 () Bool)

(assert (=> b!4176170 (=> (not res!1711924) (not e!2592671))))

(assert (=> b!4176170 (= res!1711924 (not (nullable!4387 (regex!7612 r!4142))))))

(declare-fun b!4176171 () Bool)

(assert (=> b!4176171 (= e!2592671 (not (= (tag!8476 r!4142) (String!53077 ""))))))

(assert (= (and d!1232955 res!1711923) b!4176170))

(assert (= (and b!4176170 res!1711924) b!4176171))

(assert (=> d!1232955 m!4765737))

(assert (=> b!4176170 m!4765823))

(assert (=> b!4175967 d!1232955))

(declare-fun d!1232957 () Bool)

(assert (=> d!1232957 (= (get!14883 lt!1487085) (v!40607 lt!1487085))))

(assert (=> b!4175966 d!1232957))

(declare-fun e!2592677 () Bool)

(declare-fun lt!1487136 () List!45939)

(declare-fun b!4176183 () Bool)

(assert (=> b!4176183 (= e!2592677 (or (not (= (_2!24959 lt!1487098) Nil!45815)) (= lt!1487136 lt!1487086)))))

(declare-fun b!4176182 () Bool)

(declare-fun res!1711930 () Bool)

(assert (=> b!4176182 (=> (not res!1711930) (not e!2592677))))

(assert (=> b!4176182 (= res!1711930 (= (size!33632 lt!1487136) (+ (size!33632 lt!1487086) (size!33632 (_2!24959 lt!1487098)))))))

(declare-fun b!4176181 () Bool)

(declare-fun e!2592676 () List!45939)

(assert (=> b!4176181 (= e!2592676 (Cons!45815 (h!51235 lt!1487086) (++!11690 (t!344698 lt!1487086) (_2!24959 lt!1487098))))))

(declare-fun d!1232959 () Bool)

(assert (=> d!1232959 e!2592677))

(declare-fun res!1711929 () Bool)

(assert (=> d!1232959 (=> (not res!1711929) (not e!2592677))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7115 (List!45939) (InoxSet C!25224))

(assert (=> d!1232959 (= res!1711929 (= (content!7115 lt!1487136) ((_ map or) (content!7115 lt!1487086) (content!7115 (_2!24959 lt!1487098)))))))

(assert (=> d!1232959 (= lt!1487136 e!2592676)))

(declare-fun c!713422 () Bool)

(assert (=> d!1232959 (= c!713422 ((_ is Nil!45815) lt!1487086))))

(assert (=> d!1232959 (= (++!11690 lt!1487086 (_2!24959 lt!1487098)) lt!1487136)))

(declare-fun b!4176180 () Bool)

(assert (=> b!4176180 (= e!2592676 (_2!24959 lt!1487098))))

(assert (= (and d!1232959 c!713422) b!4176180))

(assert (= (and d!1232959 (not c!713422)) b!4176181))

(assert (= (and d!1232959 res!1711929) b!4176182))

(assert (= (and b!4176182 res!1711930) b!4176183))

(declare-fun m!4765883 () Bool)

(assert (=> b!4176182 m!4765883))

(assert (=> b!4176182 m!4765757))

(declare-fun m!4765885 () Bool)

(assert (=> b!4176182 m!4765885))

(declare-fun m!4765887 () Bool)

(assert (=> b!4176181 m!4765887))

(declare-fun m!4765889 () Bool)

(assert (=> d!1232959 m!4765889))

(declare-fun m!4765891 () Bool)

(assert (=> d!1232959 m!4765891))

(declare-fun m!4765893 () Bool)

(assert (=> d!1232959 m!4765893))

(assert (=> b!4175966 d!1232959))

(declare-fun d!1232961 () Bool)

(declare-fun lt!1487139 () BalanceConc!27240)

(assert (=> d!1232961 (= (list!16547 lt!1487139) (originalCharacters!8000 (_1!24959 lt!1487098)))))

(declare-fun dynLambda!19643 (Int TokenValue!7842) BalanceConc!27240)

(assert (=> d!1232961 (= lt!1487139 (dynLambda!19643 (toChars!10155 (transformation!7612 (rule!10666 (_1!24959 lt!1487098)))) (value!237474 (_1!24959 lt!1487098))))))

(assert (=> d!1232961 (= (charsOf!5053 (_1!24959 lt!1487098)) lt!1487139)))

(declare-fun b_lambda!122657 () Bool)

(assert (=> (not b_lambda!122657) (not d!1232961)))

(declare-fun tb!249985 () Bool)

(declare-fun t!344709 () Bool)

(assert (=> (and b!4175970 (= (toChars!10155 (transformation!7612 r!4142)) (toChars!10155 (transformation!7612 (rule!10666 (_1!24959 lt!1487098))))) t!344709) tb!249985))

(declare-fun b!4176188 () Bool)

(declare-fun e!2592680 () Bool)

(declare-fun tp!1276210 () Bool)

(declare-fun inv!60344 (Conc!13823) Bool)

(assert (=> b!4176188 (= e!2592680 (and (inv!60344 (c!713388 (dynLambda!19643 (toChars!10155 (transformation!7612 (rule!10666 (_1!24959 lt!1487098)))) (value!237474 (_1!24959 lt!1487098))))) tp!1276210))))

(declare-fun result!304580 () Bool)

(declare-fun inv!60345 (BalanceConc!27240) Bool)

(assert (=> tb!249985 (= result!304580 (and (inv!60345 (dynLambda!19643 (toChars!10155 (transformation!7612 (rule!10666 (_1!24959 lt!1487098)))) (value!237474 (_1!24959 lt!1487098)))) e!2592680))))

(assert (= tb!249985 b!4176188))

(declare-fun m!4765895 () Bool)

(assert (=> b!4176188 m!4765895))

(declare-fun m!4765897 () Bool)

(assert (=> tb!249985 m!4765897))

(assert (=> d!1232961 t!344709))

(declare-fun b_and!326399 () Bool)

(assert (= b_and!326383 (and (=> t!344709 result!304580) b_and!326399)))

(declare-fun t!344711 () Bool)

(declare-fun tb!249987 () Bool)

(assert (=> (and b!4175978 (= (toChars!10155 (transformation!7612 (h!51237 rules!3843))) (toChars!10155 (transformation!7612 (rule!10666 (_1!24959 lt!1487098))))) t!344711) tb!249987))

(declare-fun result!304584 () Bool)

(assert (= result!304584 result!304580))

(assert (=> d!1232961 t!344711))

(declare-fun b_and!326401 () Bool)

(assert (= b_and!326387 (and (=> t!344711 result!304584) b_and!326401)))

(declare-fun t!344713 () Bool)

(declare-fun tb!249989 () Bool)

(assert (=> (and b!4175975 (= (toChars!10155 (transformation!7612 rBis!167)) (toChars!10155 (transformation!7612 (rule!10666 (_1!24959 lt!1487098))))) t!344713) tb!249989))

(declare-fun result!304586 () Bool)

(assert (= result!304586 result!304580))

(assert (=> d!1232961 t!344713))

(declare-fun b_and!326403 () Bool)

(assert (= b_and!326391 (and (=> t!344713 result!304586) b_and!326403)))

(declare-fun m!4765899 () Bool)

(assert (=> d!1232961 m!4765899))

(declare-fun m!4765901 () Bool)

(assert (=> d!1232961 m!4765901))

(assert (=> b!4175966 d!1232961))

(declare-fun d!1232963 () Bool)

(declare-fun list!16549 (Conc!13823) List!45939)

(assert (=> d!1232963 (= (list!16547 lt!1487087) (list!16549 (c!713388 lt!1487087)))))

(declare-fun bs!596154 () Bool)

(assert (= bs!596154 d!1232963))

(declare-fun m!4765903 () Bool)

(assert (=> bs!596154 m!4765903))

(assert (=> b!4175966 d!1232963))

(declare-fun d!1232965 () Bool)

(declare-fun e!2592682 () Bool)

(assert (=> d!1232965 e!2592682))

(declare-fun res!1711934 () Bool)

(assert (=> d!1232965 (=> res!1711934 e!2592682)))

(declare-fun lt!1487140 () Bool)

(assert (=> d!1232965 (= res!1711934 (not lt!1487140))))

(declare-fun e!2592683 () Bool)

(assert (=> d!1232965 (= lt!1487140 e!2592683)))

(declare-fun res!1711932 () Bool)

(assert (=> d!1232965 (=> res!1711932 e!2592683)))

(assert (=> d!1232965 (= res!1711932 ((_ is Nil!45815) lt!1487086))))

(assert (=> d!1232965 (= (isPrefix!4469 lt!1487086 (++!11690 lt!1487086 (_2!24959 lt!1487098))) lt!1487140)))

(declare-fun b!4176191 () Bool)

(declare-fun e!2592681 () Bool)

(assert (=> b!4176191 (= e!2592681 (isPrefix!4469 (tail!6711 lt!1487086) (tail!6711 (++!11690 lt!1487086 (_2!24959 lt!1487098)))))))

(declare-fun b!4176192 () Bool)

(assert (=> b!4176192 (= e!2592682 (>= (size!33632 (++!11690 lt!1487086 (_2!24959 lt!1487098))) (size!33632 lt!1487086)))))

(declare-fun b!4176189 () Bool)

(assert (=> b!4176189 (= e!2592683 e!2592681)))

(declare-fun res!1711931 () Bool)

(assert (=> b!4176189 (=> (not res!1711931) (not e!2592681))))

(assert (=> b!4176189 (= res!1711931 (not ((_ is Nil!45815) (++!11690 lt!1487086 (_2!24959 lt!1487098)))))))

(declare-fun b!4176190 () Bool)

(declare-fun res!1711933 () Bool)

(assert (=> b!4176190 (=> (not res!1711933) (not e!2592681))))

(assert (=> b!4176190 (= res!1711933 (= (head!8864 lt!1487086) (head!8864 (++!11690 lt!1487086 (_2!24959 lt!1487098)))))))

(assert (= (and d!1232965 (not res!1711932)) b!4176189))

(assert (= (and b!4176189 res!1711931) b!4176190))

(assert (= (and b!4176190 res!1711933) b!4176191))

(assert (= (and d!1232965 (not res!1711934)) b!4176192))

(assert (=> b!4176191 m!4765751))

(assert (=> b!4176191 m!4765701))

(declare-fun m!4765905 () Bool)

(assert (=> b!4176191 m!4765905))

(assert (=> b!4176191 m!4765751))

(assert (=> b!4176191 m!4765905))

(declare-fun m!4765907 () Bool)

(assert (=> b!4176191 m!4765907))

(assert (=> b!4176192 m!4765701))

(declare-fun m!4765909 () Bool)

(assert (=> b!4176192 m!4765909))

(assert (=> b!4176192 m!4765757))

(assert (=> b!4176190 m!4765759))

(assert (=> b!4176190 m!4765701))

(declare-fun m!4765911 () Bool)

(assert (=> b!4176190 m!4765911))

(assert (=> b!4175966 d!1232965))

(declare-fun d!1232967 () Bool)

(assert (=> d!1232967 (isPrefix!4469 lt!1487086 (++!11690 lt!1487086 (_2!24959 lt!1487098)))))

(declare-fun lt!1487143 () Unit!64881)

(declare-fun choose!25558 (List!45939 List!45939) Unit!64881)

(assert (=> d!1232967 (= lt!1487143 (choose!25558 lt!1487086 (_2!24959 lt!1487098)))))

(assert (=> d!1232967 (= (lemmaConcatTwoListThenFirstIsPrefix!2976 lt!1487086 (_2!24959 lt!1487098)) lt!1487143)))

(declare-fun bs!596155 () Bool)

(assert (= bs!596155 d!1232967))

(assert (=> bs!596155 m!4765701))

(assert (=> bs!596155 m!4765701))

(assert (=> bs!596155 m!4765703))

(declare-fun m!4765913 () Bool)

(assert (=> bs!596155 m!4765913))

(assert (=> b!4175966 d!1232967))

(declare-fun d!1232969 () Bool)

(declare-fun res!1711937 () Bool)

(declare-fun e!2592686 () Bool)

(assert (=> d!1232969 (=> (not res!1711937) (not e!2592686))))

(declare-fun rulesValid!2964 (LexerInterface!7205 List!45941) Bool)

(assert (=> d!1232969 (= res!1711937 (rulesValid!2964 thiss!25986 rules!3843))))

(assert (=> d!1232969 (= (rulesInvariant!6418 thiss!25986 rules!3843) e!2592686)))

(declare-fun b!4176195 () Bool)

(declare-datatypes ((List!45943 0))(
  ( (Nil!45819) (Cons!45819 (h!51239 String!53076) (t!344752 List!45943)) )
))
(declare-fun noDuplicateTag!3125 (LexerInterface!7205 List!45941 List!45943) Bool)

(assert (=> b!4176195 (= e!2592686 (noDuplicateTag!3125 thiss!25986 rules!3843 Nil!45819))))

(assert (= (and d!1232969 res!1711937) b!4176195))

(declare-fun m!4765915 () Bool)

(assert (=> d!1232969 m!4765915))

(declare-fun m!4765917 () Bool)

(assert (=> b!4176195 m!4765917))

(assert (=> b!4175977 d!1232969))

(declare-fun b!4176214 () Bool)

(declare-fun e!2592695 () Option!9808)

(declare-fun lt!1487157 () Option!9808)

(declare-fun lt!1487154 () Option!9808)

(assert (=> b!4176214 (= e!2592695 (ite (and ((_ is None!9807) lt!1487157) ((_ is None!9807) lt!1487154)) None!9807 (ite ((_ is None!9807) lt!1487154) lt!1487157 (ite ((_ is None!9807) lt!1487157) lt!1487154 (ite (>= (size!33631 (_1!24959 (v!40607 lt!1487157))) (size!33631 (_1!24959 (v!40607 lt!1487154)))) lt!1487157 lt!1487154)))))))

(declare-fun call!291445 () Option!9808)

(assert (=> b!4176214 (= lt!1487157 call!291445)))

(assert (=> b!4176214 (= lt!1487154 (maxPrefix!4257 thiss!25986 (t!344700 rules!3843) input!3342))))

(declare-fun b!4176215 () Bool)

(declare-fun res!1711957 () Bool)

(declare-fun e!2592694 () Bool)

(assert (=> b!4176215 (=> (not res!1711957) (not e!2592694))))

(declare-fun lt!1487158 () Option!9808)

(assert (=> b!4176215 (= res!1711957 (< (size!33632 (_2!24959 (get!14883 lt!1487158))) (size!33632 input!3342)))))

(declare-fun d!1232971 () Bool)

(declare-fun e!2592693 () Bool)

(assert (=> d!1232971 e!2592693))

(declare-fun res!1711956 () Bool)

(assert (=> d!1232971 (=> res!1711956 e!2592693)))

(assert (=> d!1232971 (= res!1711956 (isEmpty!27103 lt!1487158))))

(assert (=> d!1232971 (= lt!1487158 e!2592695)))

(declare-fun c!713425 () Bool)

(assert (=> d!1232971 (= c!713425 (and ((_ is Cons!45817) rules!3843) ((_ is Nil!45817) (t!344700 rules!3843))))))

(declare-fun lt!1487155 () Unit!64881)

(declare-fun lt!1487156 () Unit!64881)

(assert (=> d!1232971 (= lt!1487155 lt!1487156)))

(assert (=> d!1232971 (isPrefix!4469 input!3342 input!3342)))

(assert (=> d!1232971 (= lt!1487156 (lemmaIsPrefixRefl!2898 input!3342 input!3342))))

(declare-fun rulesValidInductive!2802 (LexerInterface!7205 List!45941) Bool)

(assert (=> d!1232971 (rulesValidInductive!2802 thiss!25986 rules!3843)))

(assert (=> d!1232971 (= (maxPrefix!4257 thiss!25986 rules!3843 input!3342) lt!1487158)))

(declare-fun b!4176216 () Bool)

(declare-fun res!1711954 () Bool)

(assert (=> b!4176216 (=> (not res!1711954) (not e!2592694))))

(assert (=> b!4176216 (= res!1711954 (= (++!11690 (list!16547 (charsOf!5053 (_1!24959 (get!14883 lt!1487158)))) (_2!24959 (get!14883 lt!1487158))) input!3342))))

(declare-fun b!4176217 () Bool)

(assert (=> b!4176217 (= e!2592694 (contains!9415 rules!3843 (rule!10666 (_1!24959 (get!14883 lt!1487158)))))))

(declare-fun b!4176218 () Bool)

(declare-fun res!1711953 () Bool)

(assert (=> b!4176218 (=> (not res!1711953) (not e!2592694))))

(assert (=> b!4176218 (= res!1711953 (= (list!16547 (charsOf!5053 (_1!24959 (get!14883 lt!1487158)))) (originalCharacters!8000 (_1!24959 (get!14883 lt!1487158)))))))

(declare-fun b!4176219 () Bool)

(declare-fun res!1711952 () Bool)

(assert (=> b!4176219 (=> (not res!1711952) (not e!2592694))))

(assert (=> b!4176219 (= res!1711952 (matchR!6256 (regex!7612 (rule!10666 (_1!24959 (get!14883 lt!1487158)))) (list!16547 (charsOf!5053 (_1!24959 (get!14883 lt!1487158))))))))

(declare-fun b!4176220 () Bool)

(assert (=> b!4176220 (= e!2592693 e!2592694)))

(declare-fun res!1711958 () Bool)

(assert (=> b!4176220 (=> (not res!1711958) (not e!2592694))))

(declare-fun isDefined!7322 (Option!9808) Bool)

(assert (=> b!4176220 (= res!1711958 (isDefined!7322 lt!1487158))))

(declare-fun bm!291440 () Bool)

(assert (=> bm!291440 (= call!291445 (maxPrefixOneRule!3216 thiss!25986 (h!51237 rules!3843) input!3342))))

(declare-fun b!4176221 () Bool)

(declare-fun res!1711955 () Bool)

(assert (=> b!4176221 (=> (not res!1711955) (not e!2592694))))

(assert (=> b!4176221 (= res!1711955 (= (value!237474 (_1!24959 (get!14883 lt!1487158))) (apply!10577 (transformation!7612 (rule!10666 (_1!24959 (get!14883 lt!1487158)))) (seqFromList!5637 (originalCharacters!8000 (_1!24959 (get!14883 lt!1487158)))))))))

(declare-fun b!4176222 () Bool)

(assert (=> b!4176222 (= e!2592695 call!291445)))

(assert (= (and d!1232971 c!713425) b!4176222))

(assert (= (and d!1232971 (not c!713425)) b!4176214))

(assert (= (or b!4176222 b!4176214) bm!291440))

(assert (= (and d!1232971 (not res!1711956)) b!4176220))

(assert (= (and b!4176220 res!1711958) b!4176218))

(assert (= (and b!4176218 res!1711953) b!4176215))

(assert (= (and b!4176215 res!1711957) b!4176216))

(assert (= (and b!4176216 res!1711954) b!4176221))

(assert (= (and b!4176221 res!1711955) b!4176219))

(assert (= (and b!4176219 res!1711952) b!4176217))

(declare-fun m!4765919 () Bool)

(assert (=> b!4176218 m!4765919))

(declare-fun m!4765921 () Bool)

(assert (=> b!4176218 m!4765921))

(assert (=> b!4176218 m!4765921))

(declare-fun m!4765923 () Bool)

(assert (=> b!4176218 m!4765923))

(assert (=> b!4176221 m!4765919))

(declare-fun m!4765925 () Bool)

(assert (=> b!4176221 m!4765925))

(assert (=> b!4176221 m!4765925))

(declare-fun m!4765927 () Bool)

(assert (=> b!4176221 m!4765927))

(assert (=> b!4176215 m!4765919))

(declare-fun m!4765929 () Bool)

(assert (=> b!4176215 m!4765929))

(assert (=> b!4176215 m!4765683))

(declare-fun m!4765931 () Bool)

(assert (=> b!4176220 m!4765931))

(declare-fun m!4765933 () Bool)

(assert (=> d!1232971 m!4765933))

(assert (=> d!1232971 m!4765717))

(assert (=> d!1232971 m!4765721))

(declare-fun m!4765935 () Bool)

(assert (=> d!1232971 m!4765935))

(assert (=> b!4176216 m!4765919))

(assert (=> b!4176216 m!4765921))

(assert (=> b!4176216 m!4765921))

(assert (=> b!4176216 m!4765923))

(assert (=> b!4176216 m!4765923))

(declare-fun m!4765937 () Bool)

(assert (=> b!4176216 m!4765937))

(declare-fun m!4765939 () Bool)

(assert (=> bm!291440 m!4765939))

(assert (=> b!4176219 m!4765919))

(assert (=> b!4176219 m!4765921))

(assert (=> b!4176219 m!4765921))

(assert (=> b!4176219 m!4765923))

(assert (=> b!4176219 m!4765923))

(declare-fun m!4765941 () Bool)

(assert (=> b!4176219 m!4765941))

(assert (=> b!4176217 m!4765919))

(declare-fun m!4765943 () Bool)

(assert (=> b!4176217 m!4765943))

(declare-fun m!4765945 () Bool)

(assert (=> b!4176214 m!4765945))

(assert (=> b!4175968 d!1232971))

(declare-fun d!1232973 () Bool)

(declare-fun lt!1487161 () Bool)

(declare-fun content!7116 (List!45941) (InoxSet Rule!15024))

(assert (=> d!1232973 (= lt!1487161 (select (content!7116 rules!3843) rBis!167))))

(declare-fun e!2592700 () Bool)

(assert (=> d!1232973 (= lt!1487161 e!2592700)))

(declare-fun res!1711963 () Bool)

(assert (=> d!1232973 (=> (not res!1711963) (not e!2592700))))

(assert (=> d!1232973 (= res!1711963 ((_ is Cons!45817) rules!3843))))

(assert (=> d!1232973 (= (contains!9415 rules!3843 rBis!167) lt!1487161)))

(declare-fun b!4176227 () Bool)

(declare-fun e!2592701 () Bool)

(assert (=> b!4176227 (= e!2592700 e!2592701)))

(declare-fun res!1711964 () Bool)

(assert (=> b!4176227 (=> res!1711964 e!2592701)))

(assert (=> b!4176227 (= res!1711964 (= (h!51237 rules!3843) rBis!167))))

(declare-fun b!4176228 () Bool)

(assert (=> b!4176228 (= e!2592701 (contains!9415 (t!344700 rules!3843) rBis!167))))

(assert (= (and d!1232973 res!1711963) b!4176227))

(assert (= (and b!4176227 (not res!1711964)) b!4176228))

(declare-fun m!4765947 () Bool)

(assert (=> d!1232973 m!4765947))

(declare-fun m!4765949 () Bool)

(assert (=> d!1232973 m!4765949))

(declare-fun m!4765951 () Bool)

(assert (=> b!4176228 m!4765951))

(assert (=> b!4175979 d!1232973))

(declare-fun d!1232975 () Bool)

(declare-fun res!1711965 () Bool)

(declare-fun e!2592702 () Bool)

(assert (=> d!1232975 (=> (not res!1711965) (not e!2592702))))

(assert (=> d!1232975 (= res!1711965 (validRegex!5634 (regex!7612 rBis!167)))))

(assert (=> d!1232975 (= (ruleValid!3330 thiss!25986 rBis!167) e!2592702)))

(declare-fun b!4176229 () Bool)

(declare-fun res!1711966 () Bool)

(assert (=> b!4176229 (=> (not res!1711966) (not e!2592702))))

(assert (=> b!4176229 (= res!1711966 (not (nullable!4387 (regex!7612 rBis!167))))))

(declare-fun b!4176230 () Bool)

(assert (=> b!4176230 (= e!2592702 (not (= (tag!8476 rBis!167) (String!53077 ""))))))

(assert (= (and d!1232975 res!1711965) b!4176229))

(assert (= (and b!4176229 res!1711966) b!4176230))

(assert (=> d!1232975 m!4765731))

(assert (=> b!4176229 m!4765875))

(assert (=> b!4175989 d!1232975))

(declare-fun d!1232977 () Bool)

(assert (=> d!1232977 (= (isEmpty!27102 rules!3843) ((_ is Nil!45817) rules!3843))))

(assert (=> b!4175980 d!1232977))

(declare-fun d!1232979 () Bool)

(declare-fun e!2592704 () Bool)

(assert (=> d!1232979 e!2592704))

(declare-fun res!1711970 () Bool)

(assert (=> d!1232979 (=> res!1711970 e!2592704)))

(declare-fun lt!1487162 () Bool)

(assert (=> d!1232979 (= res!1711970 (not lt!1487162))))

(declare-fun e!2592705 () Bool)

(assert (=> d!1232979 (= lt!1487162 e!2592705)))

(declare-fun res!1711968 () Bool)

(assert (=> d!1232979 (=> res!1711968 e!2592705)))

(assert (=> d!1232979 (= res!1711968 ((_ is Nil!45815) pBis!107))))

(assert (=> d!1232979 (= (isPrefix!4469 pBis!107 input!3342) lt!1487162)))

(declare-fun b!4176233 () Bool)

(declare-fun e!2592703 () Bool)

(assert (=> b!4176233 (= e!2592703 (isPrefix!4469 (tail!6711 pBis!107) (tail!6711 input!3342)))))

(declare-fun b!4176234 () Bool)

(assert (=> b!4176234 (= e!2592704 (>= (size!33632 input!3342) (size!33632 pBis!107)))))

(declare-fun b!4176231 () Bool)

(assert (=> b!4176231 (= e!2592705 e!2592703)))

(declare-fun res!1711967 () Bool)

(assert (=> b!4176231 (=> (not res!1711967) (not e!2592703))))

(assert (=> b!4176231 (= res!1711967 (not ((_ is Nil!45815) input!3342)))))

(declare-fun b!4176232 () Bool)

(declare-fun res!1711969 () Bool)

(assert (=> b!4176232 (=> (not res!1711969) (not e!2592703))))

(assert (=> b!4176232 (= res!1711969 (= (head!8864 pBis!107) (head!8864 input!3342)))))

(assert (= (and d!1232979 (not res!1711968)) b!4176231))

(assert (= (and b!4176231 res!1711967) b!4176232))

(assert (= (and b!4176232 res!1711969) b!4176233))

(assert (= (and d!1232979 (not res!1711970)) b!4176234))

(assert (=> b!4176233 m!4765865))

(assert (=> b!4176233 m!4765753))

(assert (=> b!4176233 m!4765865))

(assert (=> b!4176233 m!4765753))

(declare-fun m!4765953 () Bool)

(assert (=> b!4176233 m!4765953))

(assert (=> b!4176234 m!4765683))

(assert (=> b!4176234 m!4765663))

(assert (=> b!4176232 m!4765869))

(assert (=> b!4176232 m!4765761))

(assert (=> b!4175969 d!1232979))

(declare-fun d!1232981 () Bool)

(declare-fun lt!1487163 () Bool)

(assert (=> d!1232981 (= lt!1487163 (select (content!7116 rules!3843) r!4142))))

(declare-fun e!2592706 () Bool)

(assert (=> d!1232981 (= lt!1487163 e!2592706)))

(declare-fun res!1711971 () Bool)

(assert (=> d!1232981 (=> (not res!1711971) (not e!2592706))))

(assert (=> d!1232981 (= res!1711971 ((_ is Cons!45817) rules!3843))))

(assert (=> d!1232981 (= (contains!9415 rules!3843 r!4142) lt!1487163)))

(declare-fun b!4176235 () Bool)

(declare-fun e!2592707 () Bool)

(assert (=> b!4176235 (= e!2592706 e!2592707)))

(declare-fun res!1711972 () Bool)

(assert (=> b!4176235 (=> res!1711972 e!2592707)))

(assert (=> b!4176235 (= res!1711972 (= (h!51237 rules!3843) r!4142))))

(declare-fun b!4176236 () Bool)

(assert (=> b!4176236 (= e!2592707 (contains!9415 (t!344700 rules!3843) r!4142))))

(assert (= (and d!1232981 res!1711971) b!4176235))

(assert (= (and b!4176235 (not res!1711972)) b!4176236))

(assert (=> d!1232981 m!4765947))

(declare-fun m!4765955 () Bool)

(assert (=> d!1232981 m!4765955))

(declare-fun m!4765957 () Bool)

(assert (=> b!4176236 m!4765957))

(assert (=> b!4175971 d!1232981))

(declare-fun d!1232983 () Bool)

(assert (=> d!1232983 (= (inv!60339 (tag!8476 r!4142)) (= (mod (str.len (value!237473 (tag!8476 r!4142))) 2) 0))))

(assert (=> b!4175972 d!1232983))

(declare-fun d!1232985 () Bool)

(declare-fun res!1711973 () Bool)

(declare-fun e!2592708 () Bool)

(assert (=> d!1232985 (=> (not res!1711973) (not e!2592708))))

(assert (=> d!1232985 (= res!1711973 (semiInverseModEq!3296 (toChars!10155 (transformation!7612 r!4142)) (toValue!10296 (transformation!7612 r!4142))))))

(assert (=> d!1232985 (= (inv!60341 (transformation!7612 r!4142)) e!2592708)))

(declare-fun b!4176237 () Bool)

(assert (=> b!4176237 (= e!2592708 (equivClasses!3195 (toChars!10155 (transformation!7612 r!4142)) (toValue!10296 (transformation!7612 r!4142))))))

(assert (= (and d!1232985 res!1711973) b!4176237))

(declare-fun m!4765959 () Bool)

(assert (=> d!1232985 m!4765959))

(declare-fun m!4765961 () Bool)

(assert (=> b!4176237 m!4765961))

(assert (=> b!4175972 d!1232985))

(declare-fun d!1232987 () Bool)

(assert (=> d!1232987 (ruleValid!3330 thiss!25986 rBis!167)))

(declare-fun lt!1487166 () Unit!64881)

(declare-fun choose!25559 (LexerInterface!7205 Rule!15024 List!45941) Unit!64881)

(assert (=> d!1232987 (= lt!1487166 (choose!25559 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1232987 (contains!9415 rules!3843 rBis!167)))

(assert (=> d!1232987 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2344 thiss!25986 rBis!167 rules!3843) lt!1487166)))

(declare-fun bs!596156 () Bool)

(assert (= bs!596156 d!1232987))

(assert (=> bs!596156 m!4765689))

(declare-fun m!4765963 () Bool)

(assert (=> bs!596156 m!4765963))

(assert (=> bs!596156 m!4765665))

(assert (=> b!4175983 d!1232987))

(declare-fun b!4176256 () Bool)

(declare-fun res!1711992 () Bool)

(declare-fun e!2592719 () Bool)

(assert (=> b!4176256 (=> (not res!1711992) (not e!2592719))))

(declare-fun lt!1487180 () Option!9808)

(assert (=> b!4176256 (= res!1711992 (< (size!33632 (_2!24959 (get!14883 lt!1487180))) (size!33632 input!3342)))))

(declare-fun b!4176257 () Bool)

(declare-fun res!1711994 () Bool)

(assert (=> b!4176257 (=> (not res!1711994) (not e!2592719))))

(assert (=> b!4176257 (= res!1711994 (= (rule!10666 (_1!24959 (get!14883 lt!1487180))) rBis!167))))

(declare-fun b!4176258 () Bool)

(declare-fun e!2592717 () Bool)

(declare-datatypes ((tuple2!43654 0))(
  ( (tuple2!43655 (_1!24961 List!45939) (_2!24961 List!45939)) )
))
(declare-fun findLongestMatchInner!1579 (Regex!12517 List!45939 Int List!45939 List!45939 Int) tuple2!43654)

(assert (=> b!4176258 (= e!2592717 (matchR!6256 (regex!7612 rBis!167) (_1!24961 (findLongestMatchInner!1579 (regex!7612 rBis!167) Nil!45815 (size!33632 Nil!45815) input!3342 input!3342 (size!33632 input!3342)))))))

(declare-fun b!4176259 () Bool)

(declare-fun e!2592718 () Option!9808)

(declare-fun lt!1487181 () tuple2!43654)

(assert (=> b!4176259 (= e!2592718 (Some!9807 (tuple2!43651 (Token!13939 (apply!10577 (transformation!7612 rBis!167) (seqFromList!5637 (_1!24961 lt!1487181))) rBis!167 (size!33630 (seqFromList!5637 (_1!24961 lt!1487181))) (_1!24961 lt!1487181)) (_2!24961 lt!1487181))))))

(declare-fun lt!1487177 () Unit!64881)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1552 (Regex!12517 List!45939) Unit!64881)

(assert (=> b!4176259 (= lt!1487177 (longestMatchIsAcceptedByMatchOrIsEmpty!1552 (regex!7612 rBis!167) input!3342))))

(declare-fun res!1711993 () Bool)

(assert (=> b!4176259 (= res!1711993 (isEmpty!27105 (_1!24961 (findLongestMatchInner!1579 (regex!7612 rBis!167) Nil!45815 (size!33632 Nil!45815) input!3342 input!3342 (size!33632 input!3342)))))))

(assert (=> b!4176259 (=> res!1711993 e!2592717)))

(assert (=> b!4176259 e!2592717))

(declare-fun lt!1487179 () Unit!64881)

(assert (=> b!4176259 (= lt!1487179 lt!1487177)))

(declare-fun lt!1487178 () Unit!64881)

(assert (=> b!4176259 (= lt!1487178 (lemmaSemiInverse!2378 (transformation!7612 rBis!167) (seqFromList!5637 (_1!24961 lt!1487181))))))

(declare-fun b!4176260 () Bool)

(declare-fun e!2592720 () Bool)

(assert (=> b!4176260 (= e!2592720 e!2592719)))

(declare-fun res!1711990 () Bool)

(assert (=> b!4176260 (=> (not res!1711990) (not e!2592719))))

(assert (=> b!4176260 (= res!1711990 (matchR!6256 (regex!7612 rBis!167) (list!16547 (charsOf!5053 (_1!24959 (get!14883 lt!1487180))))))))

(declare-fun b!4176261 () Bool)

(declare-fun res!1711989 () Bool)

(assert (=> b!4176261 (=> (not res!1711989) (not e!2592719))))

(assert (=> b!4176261 (= res!1711989 (= (value!237474 (_1!24959 (get!14883 lt!1487180))) (apply!10577 (transformation!7612 (rule!10666 (_1!24959 (get!14883 lt!1487180)))) (seqFromList!5637 (originalCharacters!8000 (_1!24959 (get!14883 lt!1487180)))))))))

(declare-fun d!1232989 () Bool)

(assert (=> d!1232989 e!2592720))

(declare-fun res!1711988 () Bool)

(assert (=> d!1232989 (=> res!1711988 e!2592720)))

(assert (=> d!1232989 (= res!1711988 (isEmpty!27103 lt!1487180))))

(assert (=> d!1232989 (= lt!1487180 e!2592718)))

(declare-fun c!713428 () Bool)

(assert (=> d!1232989 (= c!713428 (isEmpty!27105 (_1!24961 lt!1487181)))))

(declare-fun findLongestMatch!1492 (Regex!12517 List!45939) tuple2!43654)

(assert (=> d!1232989 (= lt!1487181 (findLongestMatch!1492 (regex!7612 rBis!167) input!3342))))

(assert (=> d!1232989 (ruleValid!3330 thiss!25986 rBis!167)))

(assert (=> d!1232989 (= (maxPrefixOneRule!3216 thiss!25986 rBis!167 input!3342) lt!1487180)))

(declare-fun b!4176262 () Bool)

(declare-fun res!1711991 () Bool)

(assert (=> b!4176262 (=> (not res!1711991) (not e!2592719))))

(assert (=> b!4176262 (= res!1711991 (= (++!11690 (list!16547 (charsOf!5053 (_1!24959 (get!14883 lt!1487180)))) (_2!24959 (get!14883 lt!1487180))) input!3342))))

(declare-fun b!4176263 () Bool)

(assert (=> b!4176263 (= e!2592719 (= (size!33631 (_1!24959 (get!14883 lt!1487180))) (size!33632 (originalCharacters!8000 (_1!24959 (get!14883 lt!1487180))))))))

(declare-fun b!4176264 () Bool)

(assert (=> b!4176264 (= e!2592718 None!9807)))

(assert (= (and d!1232989 c!713428) b!4176264))

(assert (= (and d!1232989 (not c!713428)) b!4176259))

(assert (= (and b!4176259 (not res!1711993)) b!4176258))

(assert (= (and d!1232989 (not res!1711988)) b!4176260))

(assert (= (and b!4176260 res!1711990) b!4176262))

(assert (= (and b!4176262 res!1711991) b!4176256))

(assert (= (and b!4176256 res!1711992) b!4176257))

(assert (= (and b!4176257 res!1711994) b!4176261))

(assert (= (and b!4176261 res!1711989) b!4176263))

(declare-fun m!4765965 () Bool)

(assert (=> b!4176257 m!4765965))

(assert (=> b!4176261 m!4765965))

(declare-fun m!4765967 () Bool)

(assert (=> b!4176261 m!4765967))

(assert (=> b!4176261 m!4765967))

(declare-fun m!4765969 () Bool)

(assert (=> b!4176261 m!4765969))

(assert (=> b!4176260 m!4765965))

(declare-fun m!4765971 () Bool)

(assert (=> b!4176260 m!4765971))

(assert (=> b!4176260 m!4765971))

(declare-fun m!4765973 () Bool)

(assert (=> b!4176260 m!4765973))

(assert (=> b!4176260 m!4765973))

(declare-fun m!4765975 () Bool)

(assert (=> b!4176260 m!4765975))

(assert (=> b!4176256 m!4765965))

(declare-fun m!4765977 () Bool)

(assert (=> b!4176256 m!4765977))

(assert (=> b!4176256 m!4765683))

(assert (=> b!4176263 m!4765965))

(declare-fun m!4765979 () Bool)

(assert (=> b!4176263 m!4765979))

(declare-fun m!4765981 () Bool)

(assert (=> b!4176258 m!4765981))

(assert (=> b!4176258 m!4765683))

(assert (=> b!4176258 m!4765981))

(assert (=> b!4176258 m!4765683))

(declare-fun m!4765983 () Bool)

(assert (=> b!4176258 m!4765983))

(declare-fun m!4765985 () Bool)

(assert (=> b!4176258 m!4765985))

(declare-fun m!4765987 () Bool)

(assert (=> d!1232989 m!4765987))

(declare-fun m!4765989 () Bool)

(assert (=> d!1232989 m!4765989))

(declare-fun m!4765991 () Bool)

(assert (=> d!1232989 m!4765991))

(assert (=> d!1232989 m!4765689))

(assert (=> b!4176262 m!4765965))

(assert (=> b!4176262 m!4765971))

(assert (=> b!4176262 m!4765971))

(assert (=> b!4176262 m!4765973))

(assert (=> b!4176262 m!4765973))

(declare-fun m!4765993 () Bool)

(assert (=> b!4176262 m!4765993))

(declare-fun m!4765995 () Bool)

(assert (=> b!4176259 m!4765995))

(assert (=> b!4176259 m!4765981))

(assert (=> b!4176259 m!4765683))

(assert (=> b!4176259 m!4765983))

(declare-fun m!4765997 () Bool)

(assert (=> b!4176259 m!4765997))

(declare-fun m!4765999 () Bool)

(assert (=> b!4176259 m!4765999))

(declare-fun m!4766001 () Bool)

(assert (=> b!4176259 m!4766001))

(assert (=> b!4176259 m!4765683))

(assert (=> b!4176259 m!4765997))

(declare-fun m!4766003 () Bool)

(assert (=> b!4176259 m!4766003))

(assert (=> b!4176259 m!4765997))

(declare-fun m!4766005 () Bool)

(assert (=> b!4176259 m!4766005))

(assert (=> b!4176259 m!4765997))

(assert (=> b!4176259 m!4765981))

(assert (=> b!4175983 d!1232989))

(declare-fun d!1232991 () Bool)

(declare-fun lt!1487182 () Int)

(assert (=> d!1232991 (>= lt!1487182 0)))

(declare-fun e!2592721 () Int)

(assert (=> d!1232991 (= lt!1487182 e!2592721)))

(declare-fun c!713429 () Bool)

(assert (=> d!1232991 (= c!713429 ((_ is Nil!45815) input!3342))))

(assert (=> d!1232991 (= (size!33632 input!3342) lt!1487182)))

(declare-fun b!4176265 () Bool)

(assert (=> b!4176265 (= e!2592721 0)))

(declare-fun b!4176266 () Bool)

(assert (=> b!4176266 (= e!2592721 (+ 1 (size!33632 (t!344698 input!3342))))))

(assert (= (and d!1232991 c!713429) b!4176265))

(assert (= (and d!1232991 (not c!713429)) b!4176266))

(declare-fun m!4766007 () Bool)

(assert (=> b!4176266 m!4766007))

(assert (=> b!4175983 d!1232991))

(declare-fun d!1232993 () Bool)

(assert (=> d!1232993 (= (isEmpty!27103 lt!1487085) (not ((_ is Some!9807) lt!1487085)))))

(assert (=> b!4175983 d!1232993))

(declare-fun d!1232995 () Bool)

(assert (=> d!1232995 (<= (size!33632 pBis!107) (size!33632 input!3342))))

(declare-fun lt!1487185 () Unit!64881)

(declare-fun choose!25561 (List!45939 List!45939) Unit!64881)

(assert (=> d!1232995 (= lt!1487185 (choose!25561 pBis!107 input!3342))))

(assert (=> d!1232995 (isPrefix!4469 pBis!107 input!3342)))

(assert (=> d!1232995 (= (lemmaIsPrefixThenSmallerEqSize!501 pBis!107 input!3342) lt!1487185)))

(declare-fun bs!596157 () Bool)

(assert (= bs!596157 d!1232995))

(assert (=> bs!596157 m!4765663))

(assert (=> bs!596157 m!4765683))

(declare-fun m!4766009 () Bool)

(assert (=> bs!596157 m!4766009))

(assert (=> bs!596157 m!4765693))

(assert (=> b!4175983 d!1232995))

(declare-fun d!1232997 () Bool)

(declare-fun e!2592723 () Bool)

(assert (=> d!1232997 e!2592723))

(declare-fun res!1711998 () Bool)

(assert (=> d!1232997 (=> res!1711998 e!2592723)))

(declare-fun lt!1487186 () Bool)

(assert (=> d!1232997 (= res!1711998 (not lt!1487186))))

(declare-fun e!2592724 () Bool)

(assert (=> d!1232997 (= lt!1487186 e!2592724)))

(declare-fun res!1711996 () Bool)

(assert (=> d!1232997 (=> res!1711996 e!2592724)))

(assert (=> d!1232997 (= res!1711996 ((_ is Nil!45815) p!2959))))

(assert (=> d!1232997 (= (isPrefix!4469 p!2959 input!3342) lt!1487186)))

(declare-fun b!4176269 () Bool)

(declare-fun e!2592722 () Bool)

(assert (=> b!4176269 (= e!2592722 (isPrefix!4469 (tail!6711 p!2959) (tail!6711 input!3342)))))

(declare-fun b!4176270 () Bool)

(assert (=> b!4176270 (= e!2592723 (>= (size!33632 input!3342) (size!33632 p!2959)))))

(declare-fun b!4176267 () Bool)

(assert (=> b!4176267 (= e!2592724 e!2592722)))

(declare-fun res!1711995 () Bool)

(assert (=> b!4176267 (=> (not res!1711995) (not e!2592722))))

(assert (=> b!4176267 (= res!1711995 (not ((_ is Nil!45815) input!3342)))))

(declare-fun b!4176268 () Bool)

(declare-fun res!1711997 () Bool)

(assert (=> b!4176268 (=> (not res!1711997) (not e!2592722))))

(assert (=> b!4176268 (= res!1711997 (= (head!8864 p!2959) (head!8864 input!3342)))))

(assert (= (and d!1232997 (not res!1711996)) b!4176267))

(assert (= (and b!4176267 res!1711995) b!4176268))

(assert (= (and b!4176268 res!1711997) b!4176269))

(assert (= (and d!1232997 (not res!1711998)) b!4176270))

(assert (=> b!4176269 m!4765813))

(assert (=> b!4176269 m!4765753))

(assert (=> b!4176269 m!4765813))

(assert (=> b!4176269 m!4765753))

(declare-fun m!4766011 () Bool)

(assert (=> b!4176269 m!4766011))

(assert (=> b!4176270 m!4765683))

(assert (=> b!4176270 m!4765723))

(assert (=> b!4176268 m!4765817))

(assert (=> b!4176268 m!4765761))

(assert (=> b!4175982 d!1232997))

(declare-fun b!4176502 () Bool)

(declare-fun e!2592853 () Bool)

(assert (=> b!4176502 (= e!2592853 true)))

(declare-fun d!1232999 () Bool)

(assert (=> d!1232999 e!2592853))

(assert (= d!1232999 b!4176502))

(declare-fun order!24157 () Int)

(declare-fun order!24159 () Int)

(declare-fun lambda!129295 () Int)

(declare-fun dynLambda!19644 (Int Int) Int)

(declare-fun dynLambda!19645 (Int Int) Int)

(assert (=> b!4176502 (< (dynLambda!19644 order!24157 (toValue!10296 (transformation!7612 r!4142))) (dynLambda!19645 order!24159 lambda!129295))))

(declare-fun order!24161 () Int)

(declare-fun dynLambda!19646 (Int Int) Int)

(assert (=> b!4176502 (< (dynLambda!19646 order!24161 (toChars!10155 (transformation!7612 r!4142))) (dynLambda!19645 order!24159 lambda!129295))))

(declare-fun dynLambda!19647 (Int BalanceConc!27240) TokenValue!7842)

(assert (=> d!1232999 (= (list!16547 (dynLambda!19643 (toChars!10155 (transformation!7612 r!4142)) (dynLambda!19647 (toValue!10296 (transformation!7612 r!4142)) lt!1487084))) (list!16547 lt!1487084))))

(declare-fun lt!1487252 () Unit!64881)

(declare-fun ForallOf!1030 (Int BalanceConc!27240) Unit!64881)

(assert (=> d!1232999 (= lt!1487252 (ForallOf!1030 lambda!129295 lt!1487084))))

(assert (=> d!1232999 (= (lemmaSemiInverse!2378 (transformation!7612 r!4142) lt!1487084) lt!1487252)))

(declare-fun b_lambda!122671 () Bool)

(assert (=> (not b_lambda!122671) (not d!1232999)))

(declare-fun t!344735 () Bool)

(declare-fun tb!250009 () Bool)

(assert (=> (and b!4175970 (= (toChars!10155 (transformation!7612 r!4142)) (toChars!10155 (transformation!7612 r!4142))) t!344735) tb!250009))

(declare-fun tp!1276254 () Bool)

(declare-fun b!4176503 () Bool)

(declare-fun e!2592854 () Bool)

(assert (=> b!4176503 (= e!2592854 (and (inv!60344 (c!713388 (dynLambda!19643 (toChars!10155 (transformation!7612 r!4142)) (dynLambda!19647 (toValue!10296 (transformation!7612 r!4142)) lt!1487084)))) tp!1276254))))

(declare-fun result!304614 () Bool)

(assert (=> tb!250009 (= result!304614 (and (inv!60345 (dynLambda!19643 (toChars!10155 (transformation!7612 r!4142)) (dynLambda!19647 (toValue!10296 (transformation!7612 r!4142)) lt!1487084))) e!2592854))))

(assert (= tb!250009 b!4176503))

(declare-fun m!4766211 () Bool)

(assert (=> b!4176503 m!4766211))

(declare-fun m!4766213 () Bool)

(assert (=> tb!250009 m!4766213))

(assert (=> d!1232999 t!344735))

(declare-fun b_and!326427 () Bool)

(assert (= b_and!326399 (and (=> t!344735 result!304614) b_and!326427)))

(declare-fun t!344737 () Bool)

(declare-fun tb!250011 () Bool)

(assert (=> (and b!4175978 (= (toChars!10155 (transformation!7612 (h!51237 rules!3843))) (toChars!10155 (transformation!7612 r!4142))) t!344737) tb!250011))

(declare-fun result!304616 () Bool)

(assert (= result!304616 result!304614))

(assert (=> d!1232999 t!344737))

(declare-fun b_and!326429 () Bool)

(assert (= b_and!326401 (and (=> t!344737 result!304616) b_and!326429)))

(declare-fun tb!250013 () Bool)

(declare-fun t!344739 () Bool)

(assert (=> (and b!4175975 (= (toChars!10155 (transformation!7612 rBis!167)) (toChars!10155 (transformation!7612 r!4142))) t!344739) tb!250013))

(declare-fun result!304618 () Bool)

(assert (= result!304618 result!304614))

(assert (=> d!1232999 t!344739))

(declare-fun b_and!326431 () Bool)

(assert (= b_and!326403 (and (=> t!344739 result!304618) b_and!326431)))

(declare-fun b_lambda!122673 () Bool)

(assert (=> (not b_lambda!122673) (not d!1232999)))

(declare-fun t!344741 () Bool)

(declare-fun tb!250015 () Bool)

(assert (=> (and b!4175970 (= (toValue!10296 (transformation!7612 r!4142)) (toValue!10296 (transformation!7612 r!4142))) t!344741) tb!250015))

(declare-fun result!304620 () Bool)

(declare-fun inv!21 (TokenValue!7842) Bool)

(assert (=> tb!250015 (= result!304620 (inv!21 (dynLambda!19647 (toValue!10296 (transformation!7612 r!4142)) lt!1487084)))))

(declare-fun m!4766215 () Bool)

(assert (=> tb!250015 m!4766215))

(assert (=> d!1232999 t!344741))

(declare-fun b_and!326433 () Bool)

(assert (= b_and!326381 (and (=> t!344741 result!304620) b_and!326433)))

(declare-fun t!344743 () Bool)

(declare-fun tb!250017 () Bool)

(assert (=> (and b!4175978 (= (toValue!10296 (transformation!7612 (h!51237 rules!3843))) (toValue!10296 (transformation!7612 r!4142))) t!344743) tb!250017))

(declare-fun result!304624 () Bool)

(assert (= result!304624 result!304620))

(assert (=> d!1232999 t!344743))

(declare-fun b_and!326435 () Bool)

(assert (= b_and!326385 (and (=> t!344743 result!304624) b_and!326435)))

(declare-fun t!344745 () Bool)

(declare-fun tb!250019 () Bool)

(assert (=> (and b!4175975 (= (toValue!10296 (transformation!7612 rBis!167)) (toValue!10296 (transformation!7612 r!4142))) t!344745) tb!250019))

(declare-fun result!304626 () Bool)

(assert (= result!304626 result!304620))

(assert (=> d!1232999 t!344745))

(declare-fun b_and!326437 () Bool)

(assert (= b_and!326389 (and (=> t!344745 result!304626) b_and!326437)))

(declare-fun m!4766217 () Bool)

(assert (=> d!1232999 m!4766217))

(declare-fun m!4766219 () Bool)

(assert (=> d!1232999 m!4766219))

(declare-fun m!4766221 () Bool)

(assert (=> d!1232999 m!4766221))

(declare-fun m!4766223 () Bool)

(assert (=> d!1232999 m!4766223))

(declare-fun m!4766225 () Bool)

(assert (=> d!1232999 m!4766225))

(assert (=> d!1232999 m!4766219))

(assert (=> d!1232999 m!4766223))

(assert (=> b!4175984 d!1232999))

(declare-fun d!1233053 () Bool)

(declare-fun lt!1487255 () List!45939)

(assert (=> d!1233053 (= (++!11690 p!2959 lt!1487255) input!3342)))

(declare-fun e!2592860 () List!45939)

(assert (=> d!1233053 (= lt!1487255 e!2592860)))

(declare-fun c!713465 () Bool)

(assert (=> d!1233053 (= c!713465 ((_ is Cons!45815) p!2959))))

(assert (=> d!1233053 (>= (size!33632 input!3342) (size!33632 p!2959))))

(assert (=> d!1233053 (= (getSuffix!2764 input!3342 p!2959) lt!1487255)))

(declare-fun b!4176510 () Bool)

(assert (=> b!4176510 (= e!2592860 (getSuffix!2764 (tail!6711 input!3342) (t!344698 p!2959)))))

(declare-fun b!4176511 () Bool)

(assert (=> b!4176511 (= e!2592860 input!3342)))

(assert (= (and d!1233053 c!713465) b!4176510))

(assert (= (and d!1233053 (not c!713465)) b!4176511))

(declare-fun m!4766227 () Bool)

(assert (=> d!1233053 m!4766227))

(assert (=> d!1233053 m!4765683))

(assert (=> d!1233053 m!4765723))

(assert (=> b!4176510 m!4765753))

(assert (=> b!4176510 m!4765753))

(declare-fun m!4766229 () Bool)

(assert (=> b!4176510 m!4766229))

(assert (=> b!4175984 d!1233053))

(declare-fun d!1233055 () Bool)

(declare-fun e!2592862 () Bool)

(assert (=> d!1233055 e!2592862))

(declare-fun res!1712117 () Bool)

(assert (=> d!1233055 (=> res!1712117 e!2592862)))

(declare-fun lt!1487256 () Bool)

(assert (=> d!1233055 (= res!1712117 (not lt!1487256))))

(declare-fun e!2592863 () Bool)

(assert (=> d!1233055 (= lt!1487256 e!2592863)))

(declare-fun res!1712115 () Bool)

(assert (=> d!1233055 (=> res!1712115 e!2592863)))

(assert (=> d!1233055 (= res!1712115 ((_ is Nil!45815) input!3342))))

(assert (=> d!1233055 (= (isPrefix!4469 input!3342 input!3342) lt!1487256)))

(declare-fun b!4176514 () Bool)

(declare-fun e!2592861 () Bool)

(assert (=> b!4176514 (= e!2592861 (isPrefix!4469 (tail!6711 input!3342) (tail!6711 input!3342)))))

(declare-fun b!4176515 () Bool)

(assert (=> b!4176515 (= e!2592862 (>= (size!33632 input!3342) (size!33632 input!3342)))))

(declare-fun b!4176512 () Bool)

(assert (=> b!4176512 (= e!2592863 e!2592861)))

(declare-fun res!1712114 () Bool)

(assert (=> b!4176512 (=> (not res!1712114) (not e!2592861))))

(assert (=> b!4176512 (= res!1712114 (not ((_ is Nil!45815) input!3342)))))

(declare-fun b!4176513 () Bool)

(declare-fun res!1712116 () Bool)

(assert (=> b!4176513 (=> (not res!1712116) (not e!2592861))))

(assert (=> b!4176513 (= res!1712116 (= (head!8864 input!3342) (head!8864 input!3342)))))

(assert (= (and d!1233055 (not res!1712115)) b!4176512))

(assert (= (and b!4176512 res!1712114) b!4176513))

(assert (= (and b!4176513 res!1712116) b!4176514))

(assert (= (and d!1233055 (not res!1712117)) b!4176515))

(assert (=> b!4176514 m!4765753))

(assert (=> b!4176514 m!4765753))

(assert (=> b!4176514 m!4765753))

(assert (=> b!4176514 m!4765753))

(declare-fun m!4766231 () Bool)

(assert (=> b!4176514 m!4766231))

(assert (=> b!4176515 m!4765683))

(assert (=> b!4176515 m!4765683))

(assert (=> b!4176513 m!4765761))

(assert (=> b!4176513 m!4765761))

(assert (=> b!4175984 d!1233055))

(declare-fun d!1233057 () Bool)

(declare-fun fromListB!2579 (List!45939) BalanceConc!27240)

(assert (=> d!1233057 (= (seqFromList!5637 p!2959) (fromListB!2579 p!2959))))

(declare-fun bs!596163 () Bool)

(assert (= bs!596163 d!1233057))

(declare-fun m!4766233 () Bool)

(assert (=> bs!596163 m!4766233))

(assert (=> b!4175984 d!1233057))

(declare-fun d!1233059 () Bool)

(assert (=> d!1233059 (isPrefix!4469 input!3342 input!3342)))

(declare-fun lt!1487259 () Unit!64881)

(declare-fun choose!25562 (List!45939 List!45939) Unit!64881)

(assert (=> d!1233059 (= lt!1487259 (choose!25562 input!3342 input!3342))))

(assert (=> d!1233059 (= (lemmaIsPrefixRefl!2898 input!3342 input!3342) lt!1487259)))

(declare-fun bs!596164 () Bool)

(assert (= bs!596164 d!1233059))

(assert (=> bs!596164 m!4765717))

(declare-fun m!4766235 () Bool)

(assert (=> bs!596164 m!4766235))

(assert (=> b!4175984 d!1233059))

(declare-fun d!1233061 () Bool)

(assert (=> d!1233061 (= (apply!10577 (transformation!7612 r!4142) lt!1487084) (dynLambda!19647 (toValue!10296 (transformation!7612 r!4142)) lt!1487084))))

(declare-fun b_lambda!122675 () Bool)

(assert (=> (not b_lambda!122675) (not d!1233061)))

(assert (=> d!1233061 t!344741))

(declare-fun b_and!326439 () Bool)

(assert (= b_and!326433 (and (=> t!344741 result!304620) b_and!326439)))

(assert (=> d!1233061 t!344743))

(declare-fun b_and!326441 () Bool)

(assert (= b_and!326435 (and (=> t!344743 result!304624) b_and!326441)))

(assert (=> d!1233061 t!344745))

(declare-fun b_and!326443 () Bool)

(assert (= b_and!326437 (and (=> t!344745 result!304626) b_and!326443)))

(assert (=> d!1233061 m!4766219))

(assert (=> b!4175984 d!1233061))

(declare-fun b!4176516 () Bool)

(declare-fun res!1712122 () Bool)

(declare-fun e!2592866 () Bool)

(assert (=> b!4176516 (=> (not res!1712122) (not e!2592866))))

(declare-fun lt!1487263 () Option!9808)

(assert (=> b!4176516 (= res!1712122 (< (size!33632 (_2!24959 (get!14883 lt!1487263))) (size!33632 input!3342)))))

(declare-fun b!4176517 () Bool)

(declare-fun res!1712124 () Bool)

(assert (=> b!4176517 (=> (not res!1712124) (not e!2592866))))

(assert (=> b!4176517 (= res!1712124 (= (rule!10666 (_1!24959 (get!14883 lt!1487263))) r!4142))))

(declare-fun b!4176518 () Bool)

(declare-fun e!2592864 () Bool)

(assert (=> b!4176518 (= e!2592864 (matchR!6256 (regex!7612 r!4142) (_1!24961 (findLongestMatchInner!1579 (regex!7612 r!4142) Nil!45815 (size!33632 Nil!45815) input!3342 input!3342 (size!33632 input!3342)))))))

(declare-fun b!4176519 () Bool)

(declare-fun e!2592865 () Option!9808)

(declare-fun lt!1487264 () tuple2!43654)

(assert (=> b!4176519 (= e!2592865 (Some!9807 (tuple2!43651 (Token!13939 (apply!10577 (transformation!7612 r!4142) (seqFromList!5637 (_1!24961 lt!1487264))) r!4142 (size!33630 (seqFromList!5637 (_1!24961 lt!1487264))) (_1!24961 lt!1487264)) (_2!24961 lt!1487264))))))

(declare-fun lt!1487260 () Unit!64881)

(assert (=> b!4176519 (= lt!1487260 (longestMatchIsAcceptedByMatchOrIsEmpty!1552 (regex!7612 r!4142) input!3342))))

(declare-fun res!1712123 () Bool)

(assert (=> b!4176519 (= res!1712123 (isEmpty!27105 (_1!24961 (findLongestMatchInner!1579 (regex!7612 r!4142) Nil!45815 (size!33632 Nil!45815) input!3342 input!3342 (size!33632 input!3342)))))))

(assert (=> b!4176519 (=> res!1712123 e!2592864)))

(assert (=> b!4176519 e!2592864))

(declare-fun lt!1487262 () Unit!64881)

(assert (=> b!4176519 (= lt!1487262 lt!1487260)))

(declare-fun lt!1487261 () Unit!64881)

(assert (=> b!4176519 (= lt!1487261 (lemmaSemiInverse!2378 (transformation!7612 r!4142) (seqFromList!5637 (_1!24961 lt!1487264))))))

(declare-fun b!4176520 () Bool)

(declare-fun e!2592867 () Bool)

(assert (=> b!4176520 (= e!2592867 e!2592866)))

(declare-fun res!1712120 () Bool)

(assert (=> b!4176520 (=> (not res!1712120) (not e!2592866))))

(assert (=> b!4176520 (= res!1712120 (matchR!6256 (regex!7612 r!4142) (list!16547 (charsOf!5053 (_1!24959 (get!14883 lt!1487263))))))))

(declare-fun b!4176521 () Bool)

(declare-fun res!1712119 () Bool)

(assert (=> b!4176521 (=> (not res!1712119) (not e!2592866))))

(assert (=> b!4176521 (= res!1712119 (= (value!237474 (_1!24959 (get!14883 lt!1487263))) (apply!10577 (transformation!7612 (rule!10666 (_1!24959 (get!14883 lt!1487263)))) (seqFromList!5637 (originalCharacters!8000 (_1!24959 (get!14883 lt!1487263)))))))))

(declare-fun d!1233063 () Bool)

(assert (=> d!1233063 e!2592867))

(declare-fun res!1712118 () Bool)

(assert (=> d!1233063 (=> res!1712118 e!2592867)))

(assert (=> d!1233063 (= res!1712118 (isEmpty!27103 lt!1487263))))

(assert (=> d!1233063 (= lt!1487263 e!2592865)))

(declare-fun c!713466 () Bool)

(assert (=> d!1233063 (= c!713466 (isEmpty!27105 (_1!24961 lt!1487264)))))

(assert (=> d!1233063 (= lt!1487264 (findLongestMatch!1492 (regex!7612 r!4142) input!3342))))

(assert (=> d!1233063 (ruleValid!3330 thiss!25986 r!4142)))

(assert (=> d!1233063 (= (maxPrefixOneRule!3216 thiss!25986 r!4142 input!3342) lt!1487263)))

(declare-fun b!4176522 () Bool)

(declare-fun res!1712121 () Bool)

(assert (=> b!4176522 (=> (not res!1712121) (not e!2592866))))

(assert (=> b!4176522 (= res!1712121 (= (++!11690 (list!16547 (charsOf!5053 (_1!24959 (get!14883 lt!1487263)))) (_2!24959 (get!14883 lt!1487263))) input!3342))))

(declare-fun b!4176523 () Bool)

(assert (=> b!4176523 (= e!2592866 (= (size!33631 (_1!24959 (get!14883 lt!1487263))) (size!33632 (originalCharacters!8000 (_1!24959 (get!14883 lt!1487263))))))))

(declare-fun b!4176524 () Bool)

(assert (=> b!4176524 (= e!2592865 None!9807)))

(assert (= (and d!1233063 c!713466) b!4176524))

(assert (= (and d!1233063 (not c!713466)) b!4176519))

(assert (= (and b!4176519 (not res!1712123)) b!4176518))

(assert (= (and d!1233063 (not res!1712118)) b!4176520))

(assert (= (and b!4176520 res!1712120) b!4176522))

(assert (= (and b!4176522 res!1712121) b!4176516))

(assert (= (and b!4176516 res!1712122) b!4176517))

(assert (= (and b!4176517 res!1712124) b!4176521))

(assert (= (and b!4176521 res!1712119) b!4176523))

(declare-fun m!4766237 () Bool)

(assert (=> b!4176517 m!4766237))

(assert (=> b!4176521 m!4766237))

(declare-fun m!4766239 () Bool)

(assert (=> b!4176521 m!4766239))

(assert (=> b!4176521 m!4766239))

(declare-fun m!4766241 () Bool)

(assert (=> b!4176521 m!4766241))

(assert (=> b!4176520 m!4766237))

(declare-fun m!4766243 () Bool)

(assert (=> b!4176520 m!4766243))

(assert (=> b!4176520 m!4766243))

(declare-fun m!4766245 () Bool)

(assert (=> b!4176520 m!4766245))

(assert (=> b!4176520 m!4766245))

(declare-fun m!4766247 () Bool)

(assert (=> b!4176520 m!4766247))

(assert (=> b!4176516 m!4766237))

(declare-fun m!4766249 () Bool)

(assert (=> b!4176516 m!4766249))

(assert (=> b!4176516 m!4765683))

(assert (=> b!4176523 m!4766237))

(declare-fun m!4766251 () Bool)

(assert (=> b!4176523 m!4766251))

(assert (=> b!4176518 m!4765981))

(assert (=> b!4176518 m!4765683))

(assert (=> b!4176518 m!4765981))

(assert (=> b!4176518 m!4765683))

(declare-fun m!4766253 () Bool)

(assert (=> b!4176518 m!4766253))

(declare-fun m!4766255 () Bool)

(assert (=> b!4176518 m!4766255))

(declare-fun m!4766257 () Bool)

(assert (=> d!1233063 m!4766257))

(declare-fun m!4766259 () Bool)

(assert (=> d!1233063 m!4766259))

(declare-fun m!4766261 () Bool)

(assert (=> d!1233063 m!4766261))

(assert (=> d!1233063 m!4765709))

(assert (=> b!4176522 m!4766237))

(assert (=> b!4176522 m!4766243))

(assert (=> b!4176522 m!4766243))

(assert (=> b!4176522 m!4766245))

(assert (=> b!4176522 m!4766245))

(declare-fun m!4766263 () Bool)

(assert (=> b!4176522 m!4766263))

(declare-fun m!4766265 () Bool)

(assert (=> b!4176519 m!4766265))

(assert (=> b!4176519 m!4765981))

(assert (=> b!4176519 m!4765683))

(assert (=> b!4176519 m!4766253))

(declare-fun m!4766267 () Bool)

(assert (=> b!4176519 m!4766267))

(declare-fun m!4766269 () Bool)

(assert (=> b!4176519 m!4766269))

(declare-fun m!4766271 () Bool)

(assert (=> b!4176519 m!4766271))

(assert (=> b!4176519 m!4765683))

(assert (=> b!4176519 m!4766267))

(declare-fun m!4766273 () Bool)

(assert (=> b!4176519 m!4766273))

(assert (=> b!4176519 m!4766267))

(declare-fun m!4766275 () Bool)

(assert (=> b!4176519 m!4766275))

(assert (=> b!4176519 m!4766267))

(assert (=> b!4176519 m!4765981))

(assert (=> b!4175984 d!1233063))

(declare-fun d!1233065 () Bool)

(declare-fun lt!1487265 () Int)

(assert (=> d!1233065 (>= lt!1487265 0)))

(declare-fun e!2592868 () Int)

(assert (=> d!1233065 (= lt!1487265 e!2592868)))

(declare-fun c!713467 () Bool)

(assert (=> d!1233065 (= c!713467 ((_ is Nil!45815) p!2959))))

(assert (=> d!1233065 (= (size!33632 p!2959) lt!1487265)))

(declare-fun b!4176525 () Bool)

(assert (=> b!4176525 (= e!2592868 0)))

(declare-fun b!4176526 () Bool)

(assert (=> b!4176526 (= e!2592868 (+ 1 (size!33632 (t!344698 p!2959))))))

(assert (= (and d!1233065 c!713467) b!4176525))

(assert (= (and d!1233065 (not c!713467)) b!4176526))

(declare-fun m!4766277 () Bool)

(assert (=> b!4176526 m!4766277))

(assert (=> b!4175984 d!1233065))

(declare-fun d!1233067 () Bool)

(declare-fun lt!1487268 () Int)

(assert (=> d!1233067 (= lt!1487268 (size!33632 (list!16547 lt!1487087)))))

(declare-fun size!33634 (Conc!13823) Int)

(assert (=> d!1233067 (= lt!1487268 (size!33634 (c!713388 lt!1487087)))))

(assert (=> d!1233067 (= (size!33630 lt!1487087) lt!1487268)))

(declare-fun bs!596165 () Bool)

(assert (= bs!596165 d!1233067))

(assert (=> bs!596165 m!4765707))

(assert (=> bs!596165 m!4765707))

(declare-fun m!4766279 () Bool)

(assert (=> bs!596165 m!4766279))

(declare-fun m!4766281 () Bool)

(assert (=> bs!596165 m!4766281))

(assert (=> b!4175963 d!1233067))

(declare-fun b!4176531 () Bool)

(declare-fun e!2592871 () Bool)

(declare-fun tp!1276257 () Bool)

(assert (=> b!4176531 (= e!2592871 (and tp_is_empty!21997 tp!1276257))))

(assert (=> b!4175990 (= tp!1276198 e!2592871)))

(assert (= (and b!4175990 ((_ is Cons!45815) (t!344698 pBis!107))) b!4176531))

(declare-fun b!4176543 () Bool)

(declare-fun e!2592874 () Bool)

(declare-fun tp!1276272 () Bool)

(declare-fun tp!1276269 () Bool)

(assert (=> b!4176543 (= e!2592874 (and tp!1276272 tp!1276269))))

(declare-fun b!4176544 () Bool)

(declare-fun tp!1276268 () Bool)

(assert (=> b!4176544 (= e!2592874 tp!1276268)))

(declare-fun b!4176545 () Bool)

(declare-fun tp!1276270 () Bool)

(declare-fun tp!1276271 () Bool)

(assert (=> b!4176545 (= e!2592874 (and tp!1276270 tp!1276271))))

(assert (=> b!4175976 (= tp!1276197 e!2592874)))

(declare-fun b!4176542 () Bool)

(assert (=> b!4176542 (= e!2592874 tp_is_empty!21997)))

(assert (= (and b!4175976 ((_ is ElementMatch!12517) (regex!7612 (h!51237 rules!3843)))) b!4176542))

(assert (= (and b!4175976 ((_ is Concat!20360) (regex!7612 (h!51237 rules!3843)))) b!4176543))

(assert (= (and b!4175976 ((_ is Star!12517) (regex!7612 (h!51237 rules!3843)))) b!4176544))

(assert (= (and b!4175976 ((_ is Union!12517) (regex!7612 (h!51237 rules!3843)))) b!4176545))

(declare-fun b!4176546 () Bool)

(declare-fun e!2592875 () Bool)

(declare-fun tp!1276273 () Bool)

(assert (=> b!4176546 (= e!2592875 (and tp_is_empty!21997 tp!1276273))))

(assert (=> b!4175987 (= tp!1276202 e!2592875)))

(assert (= (and b!4175987 ((_ is Cons!45815) (t!344698 input!3342))) b!4176546))

(declare-fun b!4176557 () Bool)

(declare-fun b_free!121167 () Bool)

(declare-fun b_next!121871 () Bool)

(assert (=> b!4176557 (= b_free!121167 (not b_next!121871))))

(declare-fun tb!250021 () Bool)

(declare-fun t!344747 () Bool)

(assert (=> (and b!4176557 (= (toValue!10296 (transformation!7612 (h!51237 (t!344700 rules!3843)))) (toValue!10296 (transformation!7612 r!4142))) t!344747) tb!250021))

(declare-fun result!304634 () Bool)

(assert (= result!304634 result!304620))

(assert (=> d!1232999 t!344747))

(assert (=> d!1233061 t!344747))

(declare-fun b_and!326445 () Bool)

(declare-fun tp!1276285 () Bool)

(assert (=> b!4176557 (= tp!1276285 (and (=> t!344747 result!304634) b_and!326445))))

(declare-fun b_free!121169 () Bool)

(declare-fun b_next!121873 () Bool)

(assert (=> b!4176557 (= b_free!121169 (not b_next!121873))))

(declare-fun t!344749 () Bool)

(declare-fun tb!250023 () Bool)

(assert (=> (and b!4176557 (= (toChars!10155 (transformation!7612 (h!51237 (t!344700 rules!3843)))) (toChars!10155 (transformation!7612 (rule!10666 (_1!24959 lt!1487098))))) t!344749) tb!250023))

(declare-fun result!304636 () Bool)

(assert (= result!304636 result!304580))

(assert (=> d!1232961 t!344749))

(declare-fun tb!250025 () Bool)

(declare-fun t!344751 () Bool)

(assert (=> (and b!4176557 (= (toChars!10155 (transformation!7612 (h!51237 (t!344700 rules!3843)))) (toChars!10155 (transformation!7612 r!4142))) t!344751) tb!250025))

(declare-fun result!304638 () Bool)

(assert (= result!304638 result!304614))

(assert (=> d!1232999 t!344751))

(declare-fun b_and!326447 () Bool)

(declare-fun tp!1276284 () Bool)

(assert (=> b!4176557 (= tp!1276284 (and (=> t!344749 result!304636) (=> t!344751 result!304638) b_and!326447))))

(declare-fun e!2592887 () Bool)

(assert (=> b!4176557 (= e!2592887 (and tp!1276285 tp!1276284))))

(declare-fun b!4176556 () Bool)

(declare-fun tp!1276283 () Bool)

(declare-fun e!2592886 () Bool)

(assert (=> b!4176556 (= e!2592886 (and tp!1276283 (inv!60339 (tag!8476 (h!51237 (t!344700 rules!3843)))) (inv!60341 (transformation!7612 (h!51237 (t!344700 rules!3843)))) e!2592887))))

(declare-fun b!4176555 () Bool)

(declare-fun e!2592885 () Bool)

(declare-fun tp!1276282 () Bool)

(assert (=> b!4176555 (= e!2592885 (and e!2592886 tp!1276282))))

(assert (=> b!4175981 (= tp!1276200 e!2592885)))

(assert (= b!4176556 b!4176557))

(assert (= b!4176555 b!4176556))

(assert (= (and b!4175981 ((_ is Cons!45817) (t!344700 rules!3843))) b!4176555))

(declare-fun m!4766283 () Bool)

(assert (=> b!4176556 m!4766283))

(declare-fun m!4766285 () Bool)

(assert (=> b!4176556 m!4766285))

(declare-fun b!4176559 () Bool)

(declare-fun e!2592888 () Bool)

(declare-fun tp!1276290 () Bool)

(declare-fun tp!1276287 () Bool)

(assert (=> b!4176559 (= e!2592888 (and tp!1276290 tp!1276287))))

(declare-fun b!4176560 () Bool)

(declare-fun tp!1276286 () Bool)

(assert (=> b!4176560 (= e!2592888 tp!1276286)))

(declare-fun b!4176561 () Bool)

(declare-fun tp!1276288 () Bool)

(declare-fun tp!1276289 () Bool)

(assert (=> b!4176561 (= e!2592888 (and tp!1276288 tp!1276289))))

(assert (=> b!4175972 (= tp!1276192 e!2592888)))

(declare-fun b!4176558 () Bool)

(assert (=> b!4176558 (= e!2592888 tp_is_empty!21997)))

(assert (= (and b!4175972 ((_ is ElementMatch!12517) (regex!7612 r!4142))) b!4176558))

(assert (= (and b!4175972 ((_ is Concat!20360) (regex!7612 r!4142))) b!4176559))

(assert (= (and b!4175972 ((_ is Star!12517) (regex!7612 r!4142))) b!4176560))

(assert (= (and b!4175972 ((_ is Union!12517) (regex!7612 r!4142))) b!4176561))

(declare-fun b!4176563 () Bool)

(declare-fun e!2592889 () Bool)

(declare-fun tp!1276295 () Bool)

(declare-fun tp!1276292 () Bool)

(assert (=> b!4176563 (= e!2592889 (and tp!1276295 tp!1276292))))

(declare-fun b!4176564 () Bool)

(declare-fun tp!1276291 () Bool)

(assert (=> b!4176564 (= e!2592889 tp!1276291)))

(declare-fun b!4176565 () Bool)

(declare-fun tp!1276293 () Bool)

(declare-fun tp!1276294 () Bool)

(assert (=> b!4176565 (= e!2592889 (and tp!1276293 tp!1276294))))

(assert (=> b!4175988 (= tp!1276194 e!2592889)))

(declare-fun b!4176562 () Bool)

(assert (=> b!4176562 (= e!2592889 tp_is_empty!21997)))

(assert (= (and b!4175988 ((_ is ElementMatch!12517) (regex!7612 rBis!167))) b!4176562))

(assert (= (and b!4175988 ((_ is Concat!20360) (regex!7612 rBis!167))) b!4176563))

(assert (= (and b!4175988 ((_ is Star!12517) (regex!7612 rBis!167))) b!4176564))

(assert (= (and b!4175988 ((_ is Union!12517) (regex!7612 rBis!167))) b!4176565))

(declare-fun b!4176566 () Bool)

(declare-fun e!2592890 () Bool)

(declare-fun tp!1276296 () Bool)

(assert (=> b!4176566 (= e!2592890 (and tp_is_empty!21997 tp!1276296))))

(assert (=> b!4175973 (= tp!1276201 e!2592890)))

(assert (= (and b!4175973 ((_ is Cons!45815) (t!344698 p!2959))) b!4176566))

(declare-fun b_lambda!122677 () Bool)

(assert (= b_lambda!122675 (or (and b!4175970 b_free!121151) (and b!4175978 b_free!121155 (= (toValue!10296 (transformation!7612 (h!51237 rules!3843))) (toValue!10296 (transformation!7612 r!4142)))) (and b!4175975 b_free!121159 (= (toValue!10296 (transformation!7612 rBis!167)) (toValue!10296 (transformation!7612 r!4142)))) (and b!4176557 b_free!121167 (= (toValue!10296 (transformation!7612 (h!51237 (t!344700 rules!3843)))) (toValue!10296 (transformation!7612 r!4142)))) b_lambda!122677)))

(declare-fun b_lambda!122679 () Bool)

(assert (= b_lambda!122673 (or (and b!4175970 b_free!121151) (and b!4175978 b_free!121155 (= (toValue!10296 (transformation!7612 (h!51237 rules!3843))) (toValue!10296 (transformation!7612 r!4142)))) (and b!4175975 b_free!121159 (= (toValue!10296 (transformation!7612 rBis!167)) (toValue!10296 (transformation!7612 r!4142)))) (and b!4176557 b_free!121167 (= (toValue!10296 (transformation!7612 (h!51237 (t!344700 rules!3843)))) (toValue!10296 (transformation!7612 r!4142)))) b_lambda!122679)))

(declare-fun b_lambda!122681 () Bool)

(assert (= b_lambda!122671 (or (and b!4175970 b_free!121153) (and b!4175978 b_free!121157 (= (toChars!10155 (transformation!7612 (h!51237 rules!3843))) (toChars!10155 (transformation!7612 r!4142)))) (and b!4175975 b_free!121161 (= (toChars!10155 (transformation!7612 rBis!167)) (toChars!10155 (transformation!7612 r!4142)))) (and b!4176557 b_free!121169 (= (toChars!10155 (transformation!7612 (h!51237 (t!344700 rules!3843)))) (toChars!10155 (transformation!7612 r!4142)))) b_lambda!122681)))

(check-sat (not b!4176517) (not d!1232959) (not b!4176514) (not bm!291432) (not b!4176261) tp_is_empty!21997 (not b!4176503) (not b!4176081) (not b!4176515) (not b!4176221) (not b_next!121857) b_and!326445 (not tb!250015) (not b!4176559) (not bm!291435) (not d!1232989) (not b!4176108) (not b_lambda!122681) (not b!4176544) (not d!1233067) (not d!1233053) (not b!4176232) (not d!1232953) (not b!4176545) (not b_lambda!122679) (not d!1233059) (not b!4176237) (not b_next!121855) (not b_next!121865) (not b_next!121863) (not bm!291434) (not b!4176563) (not b!4176085) (not b_lambda!122677) (not b!4176566) (not b!4176092) (not b!4176218) (not b!4176555) (not b!4176565) (not d!1232931) (not b!4176522) (not b!4176256) (not d!1232999) (not d!1232973) (not b!4176257) (not b!4176518) (not b!4176163) (not b!4176260) (not b!4176216) (not b!4176268) (not b!4176135) b_and!326443 b_and!326441 (not b!4176228) (not b!4176531) (not b!4176520) (not b!4176151) (not d!1232975) (not d!1232967) (not b!4176543) (not b!4176269) (not b!4176510) (not b!4176521) (not b!4176513) (not b!4176005) (not b!4176217) (not b!4176162) (not b!4176181) (not b!4176233) (not d!1232985) (not d!1232971) (not d!1232949) (not d!1233057) (not b!4176219) (not b!4176270) (not b!4176526) (not b!4176155) (not b!4176258) (not b!4176215) (not b!4176266) (not tb!250009) (not b!4176214) (not b!4176556) (not b!4176090) (not b!4176519) (not b!4176560) (not b!4176003) b_and!326427 (not b_lambda!122657) b_and!326447 (not b!4176093) (not b!4176160) (not d!1232969) (not d!1232947) (not d!1232963) (not tb!249985) b_and!326439 (not bm!291440) (not b!4176561) b_and!326431 (not b!4176262) (not b!4176188) (not b!4176516) (not b!4176156) (not b!4176259) (not b!4176192) (not d!1232915) (not b!4176229) (not b!4176086) (not b!4176523) (not d!1233063) (not b_next!121859) b_and!326429 (not bm!291437) (not b!4176170) (not bm!291431) (not b_next!121861) (not b_next!121873) (not d!1232961) (not b!4176144) (not b!4176191) (not d!1232995) (not b_next!121871) (not b!4176182) (not b!4176195) (not b!4176165) (not b!4176236) (not d!1232987) (not b!4176564) (not b!4176190) (not bm!291424) (not d!1232981) (not b!4176016) (not b!4176004) (not b!4176234) (not b!4176263) (not d!1232955) (not b!4176546) (not b!4176220))
(check-sat b_and!326427 b_and!326447 (not b_next!121871) b_and!326445 (not b_next!121857) (not b_next!121855) (not b_next!121865) (not b_next!121863) b_and!326443 b_and!326441 b_and!326431 b_and!326439 (not b_next!121859) b_and!326429 (not b_next!121861) (not b_next!121873))
