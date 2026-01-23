; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!166928 () Bool)

(assert start!166928)

(declare-fun b!1708831 () Bool)

(declare-fun b_free!46271 () Bool)

(declare-fun b_next!46975 () Bool)

(assert (=> b!1708831 (= b_free!46271 (not b_next!46975))))

(declare-fun tp!488298 () Bool)

(declare-fun b_and!123637 () Bool)

(assert (=> b!1708831 (= tp!488298 b_and!123637)))

(declare-fun b_free!46273 () Bool)

(declare-fun b_next!46977 () Bool)

(assert (=> b!1708831 (= b_free!46273 (not b_next!46977))))

(declare-fun tp!488300 () Bool)

(declare-fun b_and!123639 () Bool)

(assert (=> b!1708831 (= tp!488300 b_and!123639)))

(declare-fun b!1708836 () Bool)

(declare-fun b_free!46275 () Bool)

(declare-fun b_next!46979 () Bool)

(assert (=> b!1708836 (= b_free!46275 (not b_next!46979))))

(declare-fun tp!488304 () Bool)

(declare-fun b_and!123641 () Bool)

(assert (=> b!1708836 (= tp!488304 b_and!123641)))

(declare-fun b_free!46277 () Bool)

(declare-fun b_next!46981 () Bool)

(assert (=> b!1708836 (= b_free!46277 (not b_next!46981))))

(declare-fun tp!488301 () Bool)

(declare-fun b_and!123643 () Bool)

(assert (=> b!1708836 (= tp!488301 b_and!123643)))

(declare-fun b!1708842 () Bool)

(declare-fun b_free!46279 () Bool)

(declare-fun b_next!46983 () Bool)

(assert (=> b!1708842 (= b_free!46279 (not b_next!46983))))

(declare-fun tp!488302 () Bool)

(declare-fun b_and!123645 () Bool)

(assert (=> b!1708842 (= tp!488302 b_and!123645)))

(declare-fun b_free!46281 () Bool)

(declare-fun b_next!46985 () Bool)

(assert (=> b!1708842 (= b_free!46281 (not b_next!46985))))

(declare-fun tp!488295 () Bool)

(declare-fun b_and!123647 () Bool)

(assert (=> b!1708842 (= tp!488295 b_and!123647)))

(declare-fun tp!488293 () Bool)

(declare-fun e!1092981 () Bool)

(declare-datatypes ((List!18714 0))(
  ( (Nil!18644) (Cons!18644 (h!24045 (_ BitVec 16)) (t!158141 List!18714)) )
))
(declare-datatypes ((TokenValue!3382 0))(
  ( (FloatLiteralValue!6764 (text!24119 List!18714)) (TokenValueExt!3381 (__x!12066 Int)) (Broken!16910 (value!103470 List!18714)) (Object!3451) (End!3382) (Def!3382) (Underscore!3382) (Match!3382) (Else!3382) (Error!3382) (Case!3382) (If!3382) (Extends!3382) (Abstract!3382) (Class!3382) (Val!3382) (DelimiterValue!6764 (del!3442 List!18714)) (KeywordValue!3388 (value!103471 List!18714)) (CommentValue!6764 (value!103472 List!18714)) (WhitespaceValue!6764 (value!103473 List!18714)) (IndentationValue!3382 (value!103474 List!18714)) (String!21243) (Int32!3382) (Broken!16911 (value!103475 List!18714)) (Boolean!3383) (Unit!32477) (OperatorValue!3385 (op!3442 List!18714)) (IdentifierValue!6764 (value!103476 List!18714)) (IdentifierValue!6765 (value!103477 List!18714)) (WhitespaceValue!6765 (value!103478 List!18714)) (True!6764) (False!6764) (Broken!16912 (value!103479 List!18714)) (Broken!16913 (value!103480 List!18714)) (True!6765) (RightBrace!3382) (RightBracket!3382) (Colon!3382) (Null!3382) (Comma!3382) (LeftBracket!3382) (False!6765) (LeftBrace!3382) (ImaginaryLiteralValue!3382 (text!24120 List!18714)) (StringLiteralValue!10146 (value!103481 List!18714)) (EOFValue!3382 (value!103482 List!18714)) (IdentValue!3382 (value!103483 List!18714)) (DelimiterValue!6765 (value!103484 List!18714)) (DedentValue!3382 (value!103485 List!18714)) (NewLineValue!3382 (value!103486 List!18714)) (IntegerValue!10146 (value!103487 (_ BitVec 32)) (text!24121 List!18714)) (IntegerValue!10147 (value!103488 Int) (text!24122 List!18714)) (Times!3382) (Or!3382) (Equal!3382) (Minus!3382) (Broken!16914 (value!103489 List!18714)) (And!3382) (Div!3382) (LessEqual!3382) (Mod!3382) (Concat!8002) (Not!3382) (Plus!3382) (SpaceValue!3382 (value!103490 List!18714)) (IntegerValue!10148 (value!103491 Int) (text!24123 List!18714)) (StringLiteralValue!10147 (text!24124 List!18714)) (FloatLiteralValue!6765 (text!24125 List!18714)) (BytesLiteralValue!3382 (value!103492 List!18714)) (CommentValue!6765 (value!103493 List!18714)) (StringLiteralValue!10148 (value!103494 List!18714)) (ErrorTokenValue!3382 (msg!3443 List!18714)) )
))
(declare-datatypes ((C!9414 0))(
  ( (C!9415 (val!5303 Int)) )
))
(declare-datatypes ((List!18715 0))(
  ( (Nil!18645) (Cons!18645 (h!24046 C!9414) (t!158142 List!18715)) )
))
(declare-datatypes ((Regex!4620 0))(
  ( (ElementMatch!4620 (c!280023 C!9414)) (Concat!8003 (regOne!9752 Regex!4620) (regTwo!9752 Regex!4620)) (EmptyExpr!4620) (Star!4620 (reg!4949 Regex!4620)) (EmptyLang!4620) (Union!4620 (regOne!9753 Regex!4620) (regTwo!9753 Regex!4620)) )
))
(declare-datatypes ((String!21244 0))(
  ( (String!21245 (value!103495 String)) )
))
(declare-datatypes ((IArray!12409 0))(
  ( (IArray!12410 (innerList!6262 List!18715)) )
))
(declare-datatypes ((Conc!6202 0))(
  ( (Node!6202 (left!14874 Conc!6202) (right!15204 Conc!6202) (csize!12634 Int) (cheight!6413 Int)) (Leaf!9069 (xs!9078 IArray!12409) (csize!12635 Int)) (Empty!6202) )
))
(declare-datatypes ((BalanceConc!12348 0))(
  ( (BalanceConc!12349 (c!280024 Conc!6202)) )
))
(declare-datatypes ((TokenValueInjection!6424 0))(
  ( (TokenValueInjection!6425 (toValue!4791 Int) (toChars!4650 Int)) )
))
(declare-datatypes ((Rule!6384 0))(
  ( (Rule!6385 (regex!3292 Regex!4620) (tag!3588 String!21244) (isSeparator!3292 Bool) (transformation!3292 TokenValueInjection!6424)) )
))
(declare-fun rule!422 () Rule!6384)

(declare-fun e!1092983 () Bool)

(declare-fun b!1708827 () Bool)

(declare-fun inv!24053 (String!21244) Bool)

(declare-fun inv!24056 (TokenValueInjection!6424) Bool)

(assert (=> b!1708827 (= e!1092981 (and tp!488293 (inv!24053 (tag!3588 rule!422)) (inv!24056 (transformation!3292 rule!422)) e!1092983))))

(declare-fun b!1708828 () Bool)

(declare-fun e!1092974 () Bool)

(declare-fun e!1092967 () Bool)

(assert (=> b!1708828 (= e!1092974 (not e!1092967))))

(declare-fun res!765986 () Bool)

(assert (=> b!1708828 (=> res!765986 e!1092967)))

(declare-fun lt!652937 () List!18715)

(declare-fun matchR!2094 (Regex!4620 List!18715) Bool)

(assert (=> b!1708828 (= res!765986 (not (matchR!2094 (regex!3292 rule!422) lt!652937)))))

(declare-datatypes ((LexerInterface!2921 0))(
  ( (LexerInterfaceExt!2918 (__x!12067 Int)) (Lexer!2919) )
))
(declare-fun thiss!24550 () LexerInterface!2921)

(declare-fun ruleValid!791 (LexerInterface!2921 Rule!6384) Bool)

(assert (=> b!1708828 (ruleValid!791 thiss!24550 rule!422)))

(declare-datatypes ((List!18716 0))(
  ( (Nil!18646) (Cons!18646 (h!24047 Rule!6384) (t!158143 List!18716)) )
))
(declare-fun rules!3447 () List!18716)

(declare-datatypes ((Unit!32478 0))(
  ( (Unit!32479) )
))
(declare-fun lt!652938 () Unit!32478)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!315 (LexerInterface!2921 Rule!6384 List!18716) Unit!32478)

(assert (=> b!1708828 (= lt!652938 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!315 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1708829 () Bool)

(declare-fun res!765984 () Bool)

(assert (=> b!1708829 (=> (not res!765984) (not e!1092974))))

(declare-datatypes ((Token!6150 0))(
  ( (Token!6151 (value!103496 TokenValue!3382) (rule!5226 Rule!6384) (size!14833 Int) (originalCharacters!4106 List!18715)) )
))
(declare-datatypes ((tuple2!18368 0))(
  ( (tuple2!18369 (_1!10586 Token!6150) (_2!10586 List!18715)) )
))
(declare-fun lt!652936 () tuple2!18368)

(declare-fun isEmpty!11707 (List!18715) Bool)

(assert (=> b!1708829 (= res!765984 (isEmpty!11707 (_2!10586 lt!652936)))))

(declare-fun b!1708830 () Bool)

(declare-fun res!765987 () Bool)

(declare-fun e!1092982 () Bool)

(assert (=> b!1708830 (=> (not res!765987) (not e!1092982))))

(declare-fun rulesInvariant!2590 (LexerInterface!2921 List!18716) Bool)

(assert (=> b!1708830 (= res!765987 (rulesInvariant!2590 thiss!24550 rules!3447))))

(assert (=> b!1708831 (= e!1092983 (and tp!488298 tp!488300))))

(declare-fun b!1708832 () Bool)

(declare-fun e!1092976 () Bool)

(declare-fun e!1092971 () Bool)

(declare-fun tp!488303 () Bool)

(assert (=> b!1708832 (= e!1092976 (and e!1092971 tp!488303))))

(declare-fun res!765985 () Bool)

(assert (=> start!166928 (=> (not res!765985) (not e!1092982))))

(assert (=> start!166928 (= res!765985 (is-Lexer!2919 thiss!24550))))

(assert (=> start!166928 e!1092982))

(declare-fun e!1092979 () Bool)

(assert (=> start!166928 e!1092979))

(assert (=> start!166928 e!1092981))

(assert (=> start!166928 true))

(declare-fun token!523 () Token!6150)

(declare-fun e!1092977 () Bool)

(declare-fun inv!24057 (Token!6150) Bool)

(assert (=> start!166928 (and (inv!24057 token!523) e!1092977)))

(assert (=> start!166928 e!1092976))

(declare-fun b!1708833 () Bool)

(declare-fun e!1092973 () Bool)

(assert (=> b!1708833 (= e!1092982 e!1092973)))

(declare-fun res!765978 () Bool)

(assert (=> b!1708833 (=> (not res!765978) (not e!1092973))))

(declare-datatypes ((Option!3616 0))(
  ( (None!3615) (Some!3615 (v!24998 tuple2!18368)) )
))
(declare-fun lt!652934 () Option!3616)

(declare-fun isDefined!2961 (Option!3616) Bool)

(assert (=> b!1708833 (= res!765978 (isDefined!2961 lt!652934))))

(declare-fun maxPrefix!1475 (LexerInterface!2921 List!18716 List!18715) Option!3616)

(assert (=> b!1708833 (= lt!652934 (maxPrefix!1475 thiss!24550 rules!3447 lt!652937))))

(declare-fun list!7519 (BalanceConc!12348) List!18715)

(declare-fun charsOf!1941 (Token!6150) BalanceConc!12348)

(assert (=> b!1708833 (= lt!652937 (list!7519 (charsOf!1941 token!523)))))

(declare-fun b!1708834 () Bool)

(declare-fun res!765979 () Bool)

(assert (=> b!1708834 (=> res!765979 e!1092967)))

(declare-fun suffix!1421 () List!18715)

(assert (=> b!1708834 (= res!765979 (isEmpty!11707 suffix!1421))))

(declare-fun tp!488296 () Bool)

(declare-fun e!1092980 () Bool)

(declare-fun b!1708835 () Bool)

(assert (=> b!1708835 (= e!1092971 (and tp!488296 (inv!24053 (tag!3588 (h!24047 rules!3447))) (inv!24056 (transformation!3292 (h!24047 rules!3447))) e!1092980))))

(declare-fun e!1092968 () Bool)

(assert (=> b!1708836 (= e!1092968 (and tp!488304 tp!488301))))

(declare-fun b!1708837 () Bool)

(declare-fun res!765983 () Bool)

(assert (=> b!1708837 (=> (not res!765983) (not e!1092982))))

(declare-fun isEmpty!11708 (List!18716) Bool)

(assert (=> b!1708837 (= res!765983 (not (isEmpty!11708 rules!3447)))))

(declare-fun b!1708838 () Bool)

(declare-fun res!765982 () Bool)

(assert (=> b!1708838 (=> (not res!765982) (not e!1092974))))

(assert (=> b!1708838 (= res!765982 (= (rule!5226 token!523) rule!422))))

(declare-fun b!1708839 () Bool)

(declare-fun tp_is_empty!7483 () Bool)

(declare-fun tp!488297 () Bool)

(assert (=> b!1708839 (= e!1092979 (and tp_is_empty!7483 tp!488297))))

(declare-fun b!1708840 () Bool)

(declare-fun res!765981 () Bool)

(assert (=> b!1708840 (=> (not res!765981) (not e!1092982))))

(declare-fun contains!3310 (List!18716 Rule!6384) Bool)

(assert (=> b!1708840 (= res!765981 (contains!3310 rules!3447 rule!422))))

(declare-fun b!1708841 () Bool)

(assert (=> b!1708841 (= e!1092973 e!1092974)))

(declare-fun res!765980 () Bool)

(assert (=> b!1708841 (=> (not res!765980) (not e!1092974))))

(assert (=> b!1708841 (= res!765980 (= (_1!10586 lt!652936) token!523))))

(declare-fun get!5482 (Option!3616) tuple2!18368)

(assert (=> b!1708841 (= lt!652936 (get!5482 lt!652934))))

(assert (=> b!1708842 (= e!1092980 (and tp!488302 tp!488295))))

(declare-fun b!1708843 () Bool)

(declare-fun res!765977 () Bool)

(assert (=> b!1708843 (=> res!765977 e!1092967)))

(declare-fun prefixMatch!505 (Regex!4620 List!18715) Bool)

(declare-fun rulesRegex!650 (LexerInterface!2921 List!18716) Regex!4620)

(declare-fun ++!5113 (List!18715 List!18715) List!18715)

(declare-fun head!3825 (List!18715) C!9414)

(assert (=> b!1708843 (= res!765977 (prefixMatch!505 (rulesRegex!650 thiss!24550 rules!3447) (++!5113 lt!652937 (Cons!18645 (head!3825 suffix!1421) Nil!18645))))))

(declare-fun tp!488299 () Bool)

(declare-fun b!1708844 () Bool)

(declare-fun e!1092978 () Bool)

(assert (=> b!1708844 (= e!1092978 (and tp!488299 (inv!24053 (tag!3588 (rule!5226 token!523))) (inv!24056 (transformation!3292 (rule!5226 token!523))) e!1092968))))

(declare-fun b!1708845 () Bool)

(declare-fun rulesValidInductive!1081 (LexerInterface!2921 List!18716) Bool)

(assert (=> b!1708845 (= e!1092967 (rulesValidInductive!1081 thiss!24550 rules!3447))))

(declare-fun lt!652935 () List!18715)

(declare-fun isPrefix!1533 (List!18715 List!18715) Bool)

(assert (=> b!1708845 (isPrefix!1533 lt!652937 lt!652935)))

(declare-fun lt!652933 () Unit!32478)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1043 (List!18715 List!18715) Unit!32478)

(assert (=> b!1708845 (= lt!652933 (lemmaConcatTwoListThenFirstIsPrefix!1043 lt!652937 suffix!1421))))

(assert (=> b!1708845 (= lt!652935 (++!5113 lt!652937 suffix!1421))))

(declare-fun b!1708846 () Bool)

(declare-fun tp!488294 () Bool)

(declare-fun inv!21 (TokenValue!3382) Bool)

(assert (=> b!1708846 (= e!1092977 (and (inv!21 (value!103496 token!523)) e!1092978 tp!488294))))

(assert (= (and start!166928 res!765985) b!1708837))

(assert (= (and b!1708837 res!765983) b!1708830))

(assert (= (and b!1708830 res!765987) b!1708840))

(assert (= (and b!1708840 res!765981) b!1708833))

(assert (= (and b!1708833 res!765978) b!1708841))

(assert (= (and b!1708841 res!765980) b!1708829))

(assert (= (and b!1708829 res!765984) b!1708838))

(assert (= (and b!1708838 res!765982) b!1708828))

(assert (= (and b!1708828 (not res!765986)) b!1708834))

(assert (= (and b!1708834 (not res!765979)) b!1708843))

(assert (= (and b!1708843 (not res!765977)) b!1708845))

(assert (= (and start!166928 (is-Cons!18645 suffix!1421)) b!1708839))

(assert (= b!1708827 b!1708831))

(assert (= start!166928 b!1708827))

(assert (= b!1708844 b!1708836))

(assert (= b!1708846 b!1708844))

(assert (= start!166928 b!1708846))

(assert (= b!1708835 b!1708842))

(assert (= b!1708832 b!1708835))

(assert (= (and start!166928 (is-Cons!18646 rules!3447)) b!1708832))

(declare-fun m!2111925 () Bool)

(assert (=> start!166928 m!2111925))

(declare-fun m!2111927 () Bool)

(assert (=> b!1708834 m!2111927))

(declare-fun m!2111929 () Bool)

(assert (=> b!1708837 m!2111929))

(declare-fun m!2111931 () Bool)

(assert (=> b!1708828 m!2111931))

(declare-fun m!2111933 () Bool)

(assert (=> b!1708828 m!2111933))

(declare-fun m!2111935 () Bool)

(assert (=> b!1708828 m!2111935))

(declare-fun m!2111937 () Bool)

(assert (=> b!1708835 m!2111937))

(declare-fun m!2111939 () Bool)

(assert (=> b!1708835 m!2111939))

(declare-fun m!2111941 () Bool)

(assert (=> b!1708844 m!2111941))

(declare-fun m!2111943 () Bool)

(assert (=> b!1708844 m!2111943))

(declare-fun m!2111945 () Bool)

(assert (=> b!1708829 m!2111945))

(declare-fun m!2111947 () Bool)

(assert (=> b!1708841 m!2111947))

(declare-fun m!2111949 () Bool)

(assert (=> b!1708827 m!2111949))

(declare-fun m!2111951 () Bool)

(assert (=> b!1708827 m!2111951))

(declare-fun m!2111953 () Bool)

(assert (=> b!1708845 m!2111953))

(declare-fun m!2111955 () Bool)

(assert (=> b!1708845 m!2111955))

(declare-fun m!2111957 () Bool)

(assert (=> b!1708845 m!2111957))

(declare-fun m!2111959 () Bool)

(assert (=> b!1708845 m!2111959))

(declare-fun m!2111961 () Bool)

(assert (=> b!1708840 m!2111961))

(declare-fun m!2111963 () Bool)

(assert (=> b!1708843 m!2111963))

(declare-fun m!2111965 () Bool)

(assert (=> b!1708843 m!2111965))

(declare-fun m!2111967 () Bool)

(assert (=> b!1708843 m!2111967))

(assert (=> b!1708843 m!2111963))

(assert (=> b!1708843 m!2111967))

(declare-fun m!2111969 () Bool)

(assert (=> b!1708843 m!2111969))

(declare-fun m!2111971 () Bool)

(assert (=> b!1708830 m!2111971))

(declare-fun m!2111973 () Bool)

(assert (=> b!1708833 m!2111973))

(declare-fun m!2111975 () Bool)

(assert (=> b!1708833 m!2111975))

(declare-fun m!2111977 () Bool)

(assert (=> b!1708833 m!2111977))

(assert (=> b!1708833 m!2111977))

(declare-fun m!2111979 () Bool)

(assert (=> b!1708833 m!2111979))

(declare-fun m!2111981 () Bool)

(assert (=> b!1708846 m!2111981))

(push 1)

(assert (not b_next!46981))

(assert (not b!1708840))

(assert (not b!1708837))

(assert b_and!123639)

(assert b_and!123647)

(assert (not b!1708828))

(assert b_and!123645)

(assert (not b_next!46977))

(assert (not b_next!46983))

(assert (not b!1708841))

(assert b_and!123641)

(assert (not b!1708845))

(assert (not b!1708830))

(assert (not b!1708834))

(assert (not b_next!46975))

(assert (not b!1708835))

(assert tp_is_empty!7483)

(assert (not b!1708827))

(assert (not b!1708844))

(assert (not b!1708839))

(assert (not b!1708843))

(assert (not b_next!46985))

(assert (not start!166928))

(assert (not b_next!46979))

(assert (not b!1708832))

(assert (not b!1708829))

(assert b_and!123637)

(assert b_and!123643)

(assert (not b!1708833))

(assert (not b!1708846))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!46975))

(assert (not b_next!46981))

(assert (not b_next!46985))

(assert b_and!123639)

(assert b_and!123647)

(assert b_and!123645)

(assert (not b_next!46977))

(assert (not b_next!46979))

(assert (not b_next!46983))

(assert b_and!123641)

(assert b_and!123637)

(assert b_and!123643)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!524383 () Bool)

(declare-fun res!766035 () Bool)

(declare-fun e!1093049 () Bool)

(assert (=> d!524383 (=> (not res!766035) (not e!1093049))))

(declare-fun rulesValid!1226 (LexerInterface!2921 List!18716) Bool)

(assert (=> d!524383 (= res!766035 (rulesValid!1226 thiss!24550 rules!3447))))

(assert (=> d!524383 (= (rulesInvariant!2590 thiss!24550 rules!3447) e!1093049)))

(declare-fun b!1708925 () Bool)

(declare-datatypes ((List!18720 0))(
  ( (Nil!18650) (Cons!18650 (h!24051 String!21244) (t!158161 List!18720)) )
))
(declare-fun noDuplicateTag!1226 (LexerInterface!2921 List!18716 List!18720) Bool)

(assert (=> b!1708925 (= e!1093049 (noDuplicateTag!1226 thiss!24550 rules!3447 Nil!18650))))

(assert (= (and d!524383 res!766035) b!1708925))

(declare-fun m!2112047 () Bool)

(assert (=> d!524383 m!2112047))

(declare-fun m!2112049 () Bool)

(assert (=> b!1708925 m!2112049))

(assert (=> b!1708830 d!524383))

(declare-fun d!524387 () Bool)

(assert (=> d!524387 (= (get!5482 lt!652934) (v!24998 lt!652934))))

(assert (=> b!1708841 d!524387))

(declare-fun d!524389 () Bool)

(assert (=> d!524389 (= (isEmpty!11707 (_2!10586 lt!652936)) (is-Nil!18645 (_2!10586 lt!652936)))))

(assert (=> b!1708829 d!524389))

(declare-fun d!524391 () Bool)

(declare-fun lt!652962 () Bool)

(declare-fun content!2647 (List!18716) (Set Rule!6384))

(assert (=> d!524391 (= lt!652962 (set.member rule!422 (content!2647 rules!3447)))))

(declare-fun e!1093058 () Bool)

(assert (=> d!524391 (= lt!652962 e!1093058)))

(declare-fun res!766042 () Bool)

(assert (=> d!524391 (=> (not res!766042) (not e!1093058))))

(assert (=> d!524391 (= res!766042 (is-Cons!18646 rules!3447))))

(assert (=> d!524391 (= (contains!3310 rules!3447 rule!422) lt!652962)))

(declare-fun b!1708935 () Bool)

(declare-fun e!1093057 () Bool)

(assert (=> b!1708935 (= e!1093058 e!1093057)))

(declare-fun res!766041 () Bool)

(assert (=> b!1708935 (=> res!766041 e!1093057)))

(assert (=> b!1708935 (= res!766041 (= (h!24047 rules!3447) rule!422))))

(declare-fun b!1708936 () Bool)

(assert (=> b!1708936 (= e!1093057 (contains!3310 (t!158143 rules!3447) rule!422))))

(assert (= (and d!524391 res!766042) b!1708935))

(assert (= (and b!1708935 (not res!766041)) b!1708936))

(declare-fun m!2112057 () Bool)

(assert (=> d!524391 m!2112057))

(declare-fun m!2112059 () Bool)

(assert (=> d!524391 m!2112059))

(declare-fun m!2112061 () Bool)

(assert (=> b!1708936 m!2112061))

(assert (=> b!1708840 d!524391))

(declare-fun b!1708994 () Bool)

(declare-fun e!1093092 () Bool)

(declare-fun e!1093088 () Bool)

(assert (=> b!1708994 (= e!1093092 e!1093088)))

(declare-fun res!766080 () Bool)

(assert (=> b!1708994 (=> res!766080 e!1093088)))

(declare-fun call!109377 () Bool)

(assert (=> b!1708994 (= res!766080 call!109377)))

(declare-fun b!1708995 () Bool)

(declare-fun res!766077 () Bool)

(assert (=> b!1708995 (=> res!766077 e!1093088)))

(declare-fun tail!2546 (List!18715) List!18715)

(assert (=> b!1708995 (= res!766077 (not (isEmpty!11707 (tail!2546 lt!652937))))))

(declare-fun b!1708996 () Bool)

(declare-fun e!1093089 () Bool)

(declare-fun derivativeStep!1153 (Regex!4620 C!9414) Regex!4620)

(assert (=> b!1708996 (= e!1093089 (matchR!2094 (derivativeStep!1153 (regex!3292 rule!422) (head!3825 lt!652937)) (tail!2546 lt!652937)))))

(declare-fun b!1708997 () Bool)

(declare-fun res!766081 () Bool)

(declare-fun e!1093087 () Bool)

(assert (=> b!1708997 (=> res!766081 e!1093087)))

(assert (=> b!1708997 (= res!766081 (not (is-ElementMatch!4620 (regex!3292 rule!422))))))

(declare-fun e!1093090 () Bool)

(assert (=> b!1708997 (= e!1093090 e!1093087)))

(declare-fun b!1708998 () Bool)

(declare-fun nullable!1385 (Regex!4620) Bool)

(assert (=> b!1708998 (= e!1093089 (nullable!1385 (regex!3292 rule!422)))))

(declare-fun b!1708999 () Bool)

(declare-fun e!1093091 () Bool)

(assert (=> b!1708999 (= e!1093091 (= (head!3825 lt!652937) (c!280023 (regex!3292 rule!422))))))

(declare-fun b!1709000 () Bool)

(declare-fun e!1093093 () Bool)

(assert (=> b!1709000 (= e!1093093 e!1093090)))

(declare-fun c!280046 () Bool)

(assert (=> b!1709000 (= c!280046 (is-EmptyLang!4620 (regex!3292 rule!422)))))

(declare-fun b!1709001 () Bool)

(declare-fun res!766082 () Bool)

(assert (=> b!1709001 (=> res!766082 e!1093087)))

(assert (=> b!1709001 (= res!766082 e!1093091)))

(declare-fun res!766078 () Bool)

(assert (=> b!1709001 (=> (not res!766078) (not e!1093091))))

(declare-fun lt!652967 () Bool)

(assert (=> b!1709001 (= res!766078 lt!652967)))

(declare-fun b!1709002 () Bool)

(assert (=> b!1709002 (= e!1093093 (= lt!652967 call!109377))))

(declare-fun b!1709003 () Bool)

(assert (=> b!1709003 (= e!1093090 (not lt!652967))))

(declare-fun b!1709004 () Bool)

(assert (=> b!1709004 (= e!1093087 e!1093092)))

(declare-fun res!766079 () Bool)

(assert (=> b!1709004 (=> (not res!766079) (not e!1093092))))

(assert (=> b!1709004 (= res!766079 (not lt!652967))))

(declare-fun bm!109372 () Bool)

(assert (=> bm!109372 (= call!109377 (isEmpty!11707 lt!652937))))

(declare-fun d!524395 () Bool)

(assert (=> d!524395 e!1093093))

(declare-fun c!280047 () Bool)

(assert (=> d!524395 (= c!280047 (is-EmptyExpr!4620 (regex!3292 rule!422)))))

(assert (=> d!524395 (= lt!652967 e!1093089)))

(declare-fun c!280048 () Bool)

(assert (=> d!524395 (= c!280048 (isEmpty!11707 lt!652937))))

(declare-fun validRegex!1859 (Regex!4620) Bool)

(assert (=> d!524395 (validRegex!1859 (regex!3292 rule!422))))

(assert (=> d!524395 (= (matchR!2094 (regex!3292 rule!422) lt!652937) lt!652967)))

(declare-fun b!1708993 () Bool)

(assert (=> b!1708993 (= e!1093088 (not (= (head!3825 lt!652937) (c!280023 (regex!3292 rule!422)))))))

(declare-fun b!1709005 () Bool)

(declare-fun res!766076 () Bool)

(assert (=> b!1709005 (=> (not res!766076) (not e!1093091))))

(assert (=> b!1709005 (= res!766076 (not call!109377))))

(declare-fun b!1709006 () Bool)

(declare-fun res!766075 () Bool)

(assert (=> b!1709006 (=> (not res!766075) (not e!1093091))))

(assert (=> b!1709006 (= res!766075 (isEmpty!11707 (tail!2546 lt!652937)))))

(assert (= (and d!524395 c!280048) b!1708998))

(assert (= (and d!524395 (not c!280048)) b!1708996))

(assert (= (and d!524395 c!280047) b!1709002))

(assert (= (and d!524395 (not c!280047)) b!1709000))

(assert (= (and b!1709000 c!280046) b!1709003))

(assert (= (and b!1709000 (not c!280046)) b!1708997))

(assert (= (and b!1708997 (not res!766081)) b!1709001))

(assert (= (and b!1709001 res!766078) b!1709005))

(assert (= (and b!1709005 res!766076) b!1709006))

(assert (= (and b!1709006 res!766075) b!1708999))

(assert (= (and b!1709001 (not res!766082)) b!1709004))

(assert (= (and b!1709004 res!766079) b!1708994))

(assert (= (and b!1708994 (not res!766080)) b!1708995))

(assert (= (and b!1708995 (not res!766077)) b!1708993))

(assert (= (or b!1709002 b!1708994 b!1709005) bm!109372))

(declare-fun m!2112063 () Bool)

(assert (=> b!1708993 m!2112063))

(assert (=> b!1708996 m!2112063))

(assert (=> b!1708996 m!2112063))

(declare-fun m!2112065 () Bool)

(assert (=> b!1708996 m!2112065))

(declare-fun m!2112067 () Bool)

(assert (=> b!1708996 m!2112067))

(assert (=> b!1708996 m!2112065))

(assert (=> b!1708996 m!2112067))

(declare-fun m!2112069 () Bool)

(assert (=> b!1708996 m!2112069))

(assert (=> b!1708999 m!2112063))

(assert (=> b!1709006 m!2112067))

(assert (=> b!1709006 m!2112067))

(declare-fun m!2112071 () Bool)

(assert (=> b!1709006 m!2112071))

(declare-fun m!2112073 () Bool)

(assert (=> d!524395 m!2112073))

(declare-fun m!2112075 () Bool)

(assert (=> d!524395 m!2112075))

(assert (=> b!1708995 m!2112067))

(assert (=> b!1708995 m!2112067))

(assert (=> b!1708995 m!2112071))

(assert (=> bm!109372 m!2112073))

(declare-fun m!2112077 () Bool)

(assert (=> b!1708998 m!2112077))

(assert (=> b!1708828 d!524395))

(declare-fun d!524397 () Bool)

(declare-fun res!766095 () Bool)

(declare-fun e!1093103 () Bool)

(assert (=> d!524397 (=> (not res!766095) (not e!1093103))))

(assert (=> d!524397 (= res!766095 (validRegex!1859 (regex!3292 rule!422)))))

(assert (=> d!524397 (= (ruleValid!791 thiss!24550 rule!422) e!1093103)))

(declare-fun b!1709025 () Bool)

(declare-fun res!766096 () Bool)

(assert (=> b!1709025 (=> (not res!766096) (not e!1093103))))

(assert (=> b!1709025 (= res!766096 (not (nullable!1385 (regex!3292 rule!422))))))

(declare-fun b!1709026 () Bool)

(assert (=> b!1709026 (= e!1093103 (not (= (tag!3588 rule!422) (String!21245 ""))))))

(assert (= (and d!524397 res!766095) b!1709025))

(assert (= (and b!1709025 res!766096) b!1709026))

(assert (=> d!524397 m!2112075))

(assert (=> b!1709025 m!2112077))

(assert (=> b!1708828 d!524397))

(declare-fun d!524399 () Bool)

(assert (=> d!524399 (ruleValid!791 thiss!24550 rule!422)))

(declare-fun lt!652971 () Unit!32478)

(declare-fun choose!10371 (LexerInterface!2921 Rule!6384 List!18716) Unit!32478)

(assert (=> d!524399 (= lt!652971 (choose!10371 thiss!24550 rule!422 rules!3447))))

(assert (=> d!524399 (contains!3310 rules!3447 rule!422)))

(assert (=> d!524399 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!315 thiss!24550 rule!422 rules!3447) lt!652971)))

(declare-fun bs!401662 () Bool)

(assert (= bs!401662 d!524399))

(assert (=> bs!401662 m!2111933))

(declare-fun m!2112095 () Bool)

(assert (=> bs!401662 m!2112095))

(assert (=> bs!401662 m!2111961))

(assert (=> b!1708828 d!524399))

(declare-fun d!524403 () Bool)

(declare-fun res!766105 () Bool)

(declare-fun e!1093108 () Bool)

(assert (=> d!524403 (=> (not res!766105) (not e!1093108))))

(assert (=> d!524403 (= res!766105 (not (isEmpty!11707 (originalCharacters!4106 token!523))))))

(assert (=> d!524403 (= (inv!24057 token!523) e!1093108)))

(declare-fun b!1709035 () Bool)

(declare-fun res!766106 () Bool)

(assert (=> b!1709035 (=> (not res!766106) (not e!1093108))))

(declare-fun dynLambda!8482 (Int TokenValue!3382) BalanceConc!12348)

(assert (=> b!1709035 (= res!766106 (= (originalCharacters!4106 token!523) (list!7519 (dynLambda!8482 (toChars!4650 (transformation!3292 (rule!5226 token!523))) (value!103496 token!523)))))))

(declare-fun b!1709036 () Bool)

(declare-fun size!14835 (List!18715) Int)

(assert (=> b!1709036 (= e!1093108 (= (size!14833 token!523) (size!14835 (originalCharacters!4106 token!523))))))

(assert (= (and d!524403 res!766105) b!1709035))

(assert (= (and b!1709035 res!766106) b!1709036))

(declare-fun b_lambda!53933 () Bool)

(assert (=> (not b_lambda!53933) (not b!1709035)))

(declare-fun t!158148 () Bool)

(declare-fun tb!100871 () Bool)

(assert (=> (and b!1708831 (= (toChars!4650 (transformation!3292 rule!422)) (toChars!4650 (transformation!3292 (rule!5226 token!523)))) t!158148) tb!100871))

(declare-fun b!1709043 () Bool)

(declare-fun e!1093112 () Bool)

(declare-fun tp!488343 () Bool)

(declare-fun inv!24060 (Conc!6202) Bool)

(assert (=> b!1709043 (= e!1093112 (and (inv!24060 (c!280024 (dynLambda!8482 (toChars!4650 (transformation!3292 (rule!5226 token!523))) (value!103496 token!523)))) tp!488343))))

(declare-fun result!121182 () Bool)

(declare-fun inv!24061 (BalanceConc!12348) Bool)

(assert (=> tb!100871 (= result!121182 (and (inv!24061 (dynLambda!8482 (toChars!4650 (transformation!3292 (rule!5226 token!523))) (value!103496 token!523))) e!1093112))))

(assert (= tb!100871 b!1709043))

(declare-fun m!2112097 () Bool)

(assert (=> b!1709043 m!2112097))

(declare-fun m!2112099 () Bool)

(assert (=> tb!100871 m!2112099))

(assert (=> b!1709035 t!158148))

(declare-fun b_and!123661 () Bool)

(assert (= b_and!123639 (and (=> t!158148 result!121182) b_and!123661)))

(declare-fun t!158150 () Bool)

(declare-fun tb!100873 () Bool)

(assert (=> (and b!1708836 (= (toChars!4650 (transformation!3292 (rule!5226 token!523))) (toChars!4650 (transformation!3292 (rule!5226 token!523)))) t!158150) tb!100873))

(declare-fun result!121186 () Bool)

(assert (= result!121186 result!121182))

(assert (=> b!1709035 t!158150))

(declare-fun b_and!123663 () Bool)

(assert (= b_and!123643 (and (=> t!158150 result!121186) b_and!123663)))

(declare-fun tb!100875 () Bool)

(declare-fun t!158152 () Bool)

(assert (=> (and b!1708842 (= (toChars!4650 (transformation!3292 (h!24047 rules!3447))) (toChars!4650 (transformation!3292 (rule!5226 token!523)))) t!158152) tb!100875))

(declare-fun result!121188 () Bool)

(assert (= result!121188 result!121182))

(assert (=> b!1709035 t!158152))

(declare-fun b_and!123665 () Bool)

(assert (= b_and!123647 (and (=> t!158152 result!121188) b_and!123665)))

(declare-fun m!2112101 () Bool)

(assert (=> d!524403 m!2112101))

(declare-fun m!2112103 () Bool)

(assert (=> b!1709035 m!2112103))

(assert (=> b!1709035 m!2112103))

(declare-fun m!2112105 () Bool)

(assert (=> b!1709035 m!2112105))

(declare-fun m!2112107 () Bool)

(assert (=> b!1709036 m!2112107))

(assert (=> start!166928 d!524403))

(declare-fun d!524407 () Bool)

(assert (=> d!524407 (= (isEmpty!11708 rules!3447) (is-Nil!18646 rules!3447))))

(assert (=> b!1708837 d!524407))

(declare-fun d!524409 () Bool)

(assert (=> d!524409 (= (inv!24053 (tag!3588 rule!422)) (= (mod (str.len (value!103495 (tag!3588 rule!422))) 2) 0))))

(assert (=> b!1708827 d!524409))

(declare-fun d!524411 () Bool)

(declare-fun res!766111 () Bool)

(declare-fun e!1093115 () Bool)

(assert (=> d!524411 (=> (not res!766111) (not e!1093115))))

(declare-fun semiInverseModEq!1298 (Int Int) Bool)

(assert (=> d!524411 (= res!766111 (semiInverseModEq!1298 (toChars!4650 (transformation!3292 rule!422)) (toValue!4791 (transformation!3292 rule!422))))))

(assert (=> d!524411 (= (inv!24056 (transformation!3292 rule!422)) e!1093115)))

(declare-fun b!1709046 () Bool)

(declare-fun equivClasses!1239 (Int Int) Bool)

(assert (=> b!1709046 (= e!1093115 (equivClasses!1239 (toChars!4650 (transformation!3292 rule!422)) (toValue!4791 (transformation!3292 rule!422))))))

(assert (= (and d!524411 res!766111) b!1709046))

(declare-fun m!2112109 () Bool)

(assert (=> d!524411 m!2112109))

(declare-fun m!2112111 () Bool)

(assert (=> b!1709046 m!2112111))

(assert (=> b!1708827 d!524411))

(declare-fun b!1709057 () Bool)

(declare-fun e!1093124 () Bool)

(declare-fun inv!15 (TokenValue!3382) Bool)

(assert (=> b!1709057 (= e!1093124 (inv!15 (value!103496 token!523)))))

(declare-fun b!1709058 () Bool)

(declare-fun e!1093122 () Bool)

(declare-fun e!1093123 () Bool)

(assert (=> b!1709058 (= e!1093122 e!1093123)))

(declare-fun c!280056 () Bool)

(assert (=> b!1709058 (= c!280056 (is-IntegerValue!10147 (value!103496 token!523)))))

(declare-fun b!1709059 () Bool)

(declare-fun inv!17 (TokenValue!3382) Bool)

(assert (=> b!1709059 (= e!1093123 (inv!17 (value!103496 token!523)))))

(declare-fun d!524413 () Bool)

(declare-fun c!280057 () Bool)

(assert (=> d!524413 (= c!280057 (is-IntegerValue!10146 (value!103496 token!523)))))

(assert (=> d!524413 (= (inv!21 (value!103496 token!523)) e!1093122)))

(declare-fun b!1709060 () Bool)

(declare-fun res!766114 () Bool)

(assert (=> b!1709060 (=> res!766114 e!1093124)))

(assert (=> b!1709060 (= res!766114 (not (is-IntegerValue!10148 (value!103496 token!523))))))

(assert (=> b!1709060 (= e!1093123 e!1093124)))

(declare-fun b!1709061 () Bool)

(declare-fun inv!16 (TokenValue!3382) Bool)

(assert (=> b!1709061 (= e!1093122 (inv!16 (value!103496 token!523)))))

(assert (= (and d!524413 c!280057) b!1709061))

(assert (= (and d!524413 (not c!280057)) b!1709058))

(assert (= (and b!1709058 c!280056) b!1709059))

(assert (= (and b!1709058 (not c!280056)) b!1709060))

(assert (= (and b!1709060 (not res!766114)) b!1709057))

(declare-fun m!2112117 () Bool)

(assert (=> b!1709057 m!2112117))

(declare-fun m!2112119 () Bool)

(assert (=> b!1709059 m!2112119))

(declare-fun m!2112121 () Bool)

(assert (=> b!1709061 m!2112121))

(assert (=> b!1708846 d!524413))

(declare-fun d!524419 () Bool)

(assert (=> d!524419 (= (isEmpty!11707 suffix!1421) (is-Nil!18645 suffix!1421))))

(assert (=> b!1708834 d!524419))

(declare-fun d!524421 () Bool)

(assert (=> d!524421 true))

(declare-fun lt!653003 () Bool)

(declare-fun lambda!68784 () Int)

(declare-fun forall!4242 (List!18716 Int) Bool)

(assert (=> d!524421 (= lt!653003 (forall!4242 rules!3447 lambda!68784))))

(declare-fun e!1093162 () Bool)

(assert (=> d!524421 (= lt!653003 e!1093162)))

(declare-fun res!766157 () Bool)

(assert (=> d!524421 (=> res!766157 e!1093162)))

(assert (=> d!524421 (= res!766157 (not (is-Cons!18646 rules!3447)))))

(assert (=> d!524421 (= (rulesValidInductive!1081 thiss!24550 rules!3447) lt!653003)))

(declare-fun b!1709127 () Bool)

(declare-fun e!1093161 () Bool)

(assert (=> b!1709127 (= e!1093162 e!1093161)))

(declare-fun res!766158 () Bool)

(assert (=> b!1709127 (=> (not res!766158) (not e!1093161))))

(assert (=> b!1709127 (= res!766158 (ruleValid!791 thiss!24550 (h!24047 rules!3447)))))

(declare-fun b!1709128 () Bool)

(assert (=> b!1709128 (= e!1093161 (rulesValidInductive!1081 thiss!24550 (t!158143 rules!3447)))))

(assert (= (and d!524421 (not res!766157)) b!1709127))

(assert (= (and b!1709127 res!766158) b!1709128))

(declare-fun m!2112207 () Bool)

(assert (=> d!524421 m!2112207))

(declare-fun m!2112209 () Bool)

(assert (=> b!1709127 m!2112209))

(declare-fun m!2112211 () Bool)

(assert (=> b!1709128 m!2112211))

(assert (=> b!1708845 d!524421))

(declare-fun b!1709140 () Bool)

(declare-fun res!766169 () Bool)

(declare-fun e!1093171 () Bool)

(assert (=> b!1709140 (=> (not res!766169) (not e!1093171))))

(assert (=> b!1709140 (= res!766169 (= (head!3825 lt!652937) (head!3825 lt!652935)))))

(declare-fun b!1709139 () Bool)

(declare-fun e!1093170 () Bool)

(assert (=> b!1709139 (= e!1093170 e!1093171)))

(declare-fun res!766168 () Bool)

(assert (=> b!1709139 (=> (not res!766168) (not e!1093171))))

(assert (=> b!1709139 (= res!766168 (not (is-Nil!18645 lt!652935)))))

(declare-fun b!1709142 () Bool)

(declare-fun e!1093169 () Bool)

(assert (=> b!1709142 (= e!1093169 (>= (size!14835 lt!652935) (size!14835 lt!652937)))))

(declare-fun b!1709141 () Bool)

(assert (=> b!1709141 (= e!1093171 (isPrefix!1533 (tail!2546 lt!652937) (tail!2546 lt!652935)))))

(declare-fun d!524455 () Bool)

(assert (=> d!524455 e!1093169))

(declare-fun res!766170 () Bool)

(assert (=> d!524455 (=> res!766170 e!1093169)))

(declare-fun lt!653006 () Bool)

(assert (=> d!524455 (= res!766170 (not lt!653006))))

(assert (=> d!524455 (= lt!653006 e!1093170)))

(declare-fun res!766167 () Bool)

(assert (=> d!524455 (=> res!766167 e!1093170)))

(assert (=> d!524455 (= res!766167 (is-Nil!18645 lt!652937))))

(assert (=> d!524455 (= (isPrefix!1533 lt!652937 lt!652935) lt!653006)))

(assert (= (and d!524455 (not res!766167)) b!1709139))

(assert (= (and b!1709139 res!766168) b!1709140))

(assert (= (and b!1709140 res!766169) b!1709141))

(assert (= (and d!524455 (not res!766170)) b!1709142))

(assert (=> b!1709140 m!2112063))

(declare-fun m!2112213 () Bool)

(assert (=> b!1709140 m!2112213))

(declare-fun m!2112215 () Bool)

(assert (=> b!1709142 m!2112215))

(declare-fun m!2112217 () Bool)

(assert (=> b!1709142 m!2112217))

(assert (=> b!1709141 m!2112067))

(declare-fun m!2112219 () Bool)

(assert (=> b!1709141 m!2112219))

(assert (=> b!1709141 m!2112067))

(assert (=> b!1709141 m!2112219))

(declare-fun m!2112221 () Bool)

(assert (=> b!1709141 m!2112221))

(assert (=> b!1708845 d!524455))

(declare-fun d!524457 () Bool)

(assert (=> d!524457 (isPrefix!1533 lt!652937 (++!5113 lt!652937 suffix!1421))))

(declare-fun lt!653009 () Unit!32478)

(declare-fun choose!10372 (List!18715 List!18715) Unit!32478)

(assert (=> d!524457 (= lt!653009 (choose!10372 lt!652937 suffix!1421))))

(assert (=> d!524457 (= (lemmaConcatTwoListThenFirstIsPrefix!1043 lt!652937 suffix!1421) lt!653009)))

(declare-fun bs!401667 () Bool)

(assert (= bs!401667 d!524457))

(assert (=> bs!401667 m!2111959))

(assert (=> bs!401667 m!2111959))

(declare-fun m!2112223 () Bool)

(assert (=> bs!401667 m!2112223))

(declare-fun m!2112225 () Bool)

(assert (=> bs!401667 m!2112225))

(assert (=> b!1708845 d!524457))

(declare-fun b!1709151 () Bool)

(declare-fun e!1093177 () List!18715)

(assert (=> b!1709151 (= e!1093177 suffix!1421)))

(declare-fun b!1709154 () Bool)

(declare-fun lt!653012 () List!18715)

(declare-fun e!1093176 () Bool)

(assert (=> b!1709154 (= e!1093176 (or (not (= suffix!1421 Nil!18645)) (= lt!653012 lt!652937)))))

(declare-fun d!524459 () Bool)

(assert (=> d!524459 e!1093176))

(declare-fun res!766176 () Bool)

(assert (=> d!524459 (=> (not res!766176) (not e!1093176))))

(declare-fun content!2648 (List!18715) (Set C!9414))

(assert (=> d!524459 (= res!766176 (= (content!2648 lt!653012) (set.union (content!2648 lt!652937) (content!2648 suffix!1421))))))

(assert (=> d!524459 (= lt!653012 e!1093177)))

(declare-fun c!280069 () Bool)

(assert (=> d!524459 (= c!280069 (is-Nil!18645 lt!652937))))

(assert (=> d!524459 (= (++!5113 lt!652937 suffix!1421) lt!653012)))

(declare-fun b!1709152 () Bool)

(assert (=> b!1709152 (= e!1093177 (Cons!18645 (h!24046 lt!652937) (++!5113 (t!158142 lt!652937) suffix!1421)))))

(declare-fun b!1709153 () Bool)

(declare-fun res!766175 () Bool)

(assert (=> b!1709153 (=> (not res!766175) (not e!1093176))))

(assert (=> b!1709153 (= res!766175 (= (size!14835 lt!653012) (+ (size!14835 lt!652937) (size!14835 suffix!1421))))))

(assert (= (and d!524459 c!280069) b!1709151))

(assert (= (and d!524459 (not c!280069)) b!1709152))

(assert (= (and d!524459 res!766176) b!1709153))

(assert (= (and b!1709153 res!766175) b!1709154))

(declare-fun m!2112227 () Bool)

(assert (=> d!524459 m!2112227))

(declare-fun m!2112229 () Bool)

(assert (=> d!524459 m!2112229))

(declare-fun m!2112231 () Bool)

(assert (=> d!524459 m!2112231))

(declare-fun m!2112233 () Bool)

(assert (=> b!1709152 m!2112233))

(declare-fun m!2112235 () Bool)

(assert (=> b!1709153 m!2112235))

(assert (=> b!1709153 m!2112217))

(declare-fun m!2112237 () Bool)

(assert (=> b!1709153 m!2112237))

(assert (=> b!1708845 d!524459))

(declare-fun d!524461 () Bool)

(assert (=> d!524461 (= (inv!24053 (tag!3588 (h!24047 rules!3447))) (= (mod (str.len (value!103495 (tag!3588 (h!24047 rules!3447)))) 2) 0))))

(assert (=> b!1708835 d!524461))

(declare-fun d!524463 () Bool)

(declare-fun res!766177 () Bool)

(declare-fun e!1093178 () Bool)

(assert (=> d!524463 (=> (not res!766177) (not e!1093178))))

(assert (=> d!524463 (= res!766177 (semiInverseModEq!1298 (toChars!4650 (transformation!3292 (h!24047 rules!3447))) (toValue!4791 (transformation!3292 (h!24047 rules!3447)))))))

(assert (=> d!524463 (= (inv!24056 (transformation!3292 (h!24047 rules!3447))) e!1093178)))

(declare-fun b!1709155 () Bool)

(assert (=> b!1709155 (= e!1093178 (equivClasses!1239 (toChars!4650 (transformation!3292 (h!24047 rules!3447))) (toValue!4791 (transformation!3292 (h!24047 rules!3447)))))))

(assert (= (and d!524463 res!766177) b!1709155))

(declare-fun m!2112239 () Bool)

(assert (=> d!524463 m!2112239))

(declare-fun m!2112241 () Bool)

(assert (=> b!1709155 m!2112241))

(assert (=> b!1708835 d!524463))

(declare-fun d!524465 () Bool)

(declare-fun isEmpty!11711 (Option!3616) Bool)

(assert (=> d!524465 (= (isDefined!2961 lt!652934) (not (isEmpty!11711 lt!652934)))))

(declare-fun bs!401668 () Bool)

(assert (= bs!401668 d!524465))

(declare-fun m!2112243 () Bool)

(assert (=> bs!401668 m!2112243))

(assert (=> b!1708833 d!524465))

(declare-fun b!1709174 () Bool)

(declare-fun e!1093187 () Bool)

(declare-fun lt!653027 () Option!3616)

(assert (=> b!1709174 (= e!1093187 (contains!3310 rules!3447 (rule!5226 (_1!10586 (get!5482 lt!653027)))))))

(declare-fun b!1709175 () Bool)

(declare-fun e!1093185 () Option!3616)

(declare-fun call!109384 () Option!3616)

(assert (=> b!1709175 (= e!1093185 call!109384)))

(declare-fun b!1709176 () Bool)

(declare-fun res!766197 () Bool)

(assert (=> b!1709176 (=> (not res!766197) (not e!1093187))))

(declare-fun apply!5107 (TokenValueInjection!6424 BalanceConc!12348) TokenValue!3382)

(declare-fun seqFromList!2272 (List!18715) BalanceConc!12348)

(assert (=> b!1709176 (= res!766197 (= (value!103496 (_1!10586 (get!5482 lt!653027))) (apply!5107 (transformation!3292 (rule!5226 (_1!10586 (get!5482 lt!653027)))) (seqFromList!2272 (originalCharacters!4106 (_1!10586 (get!5482 lt!653027)))))))))

(declare-fun b!1709178 () Bool)

(declare-fun e!1093186 () Bool)

(assert (=> b!1709178 (= e!1093186 e!1093187)))

(declare-fun res!766192 () Bool)

(assert (=> b!1709178 (=> (not res!766192) (not e!1093187))))

(assert (=> b!1709178 (= res!766192 (isDefined!2961 lt!653027))))

(declare-fun b!1709179 () Bool)

(declare-fun res!766195 () Bool)

(assert (=> b!1709179 (=> (not res!766195) (not e!1093187))))

(assert (=> b!1709179 (= res!766195 (= (++!5113 (list!7519 (charsOf!1941 (_1!10586 (get!5482 lt!653027)))) (_2!10586 (get!5482 lt!653027))) lt!652937))))

(declare-fun b!1709180 () Bool)

(declare-fun res!766193 () Bool)

(assert (=> b!1709180 (=> (not res!766193) (not e!1093187))))

(assert (=> b!1709180 (= res!766193 (matchR!2094 (regex!3292 (rule!5226 (_1!10586 (get!5482 lt!653027)))) (list!7519 (charsOf!1941 (_1!10586 (get!5482 lt!653027))))))))

(declare-fun b!1709181 () Bool)

(declare-fun res!766196 () Bool)

(assert (=> b!1709181 (=> (not res!766196) (not e!1093187))))

(assert (=> b!1709181 (= res!766196 (= (list!7519 (charsOf!1941 (_1!10586 (get!5482 lt!653027)))) (originalCharacters!4106 (_1!10586 (get!5482 lt!653027)))))))

(declare-fun b!1709182 () Bool)

(declare-fun res!766198 () Bool)

(assert (=> b!1709182 (=> (not res!766198) (not e!1093187))))

(assert (=> b!1709182 (= res!766198 (< (size!14835 (_2!10586 (get!5482 lt!653027))) (size!14835 lt!652937)))))

(declare-fun bm!109379 () Bool)

(declare-fun maxPrefixOneRule!863 (LexerInterface!2921 Rule!6384 List!18715) Option!3616)

(assert (=> bm!109379 (= call!109384 (maxPrefixOneRule!863 thiss!24550 (h!24047 rules!3447) lt!652937))))

(declare-fun b!1709177 () Bool)

(declare-fun lt!653023 () Option!3616)

(declare-fun lt!653024 () Option!3616)

(assert (=> b!1709177 (= e!1093185 (ite (and (is-None!3615 lt!653023) (is-None!3615 lt!653024)) None!3615 (ite (is-None!3615 lt!653024) lt!653023 (ite (is-None!3615 lt!653023) lt!653024 (ite (>= (size!14833 (_1!10586 (v!24998 lt!653023))) (size!14833 (_1!10586 (v!24998 lt!653024)))) lt!653023 lt!653024)))))))

(assert (=> b!1709177 (= lt!653023 call!109384)))

(assert (=> b!1709177 (= lt!653024 (maxPrefix!1475 thiss!24550 (t!158143 rules!3447) lt!652937))))

(declare-fun d!524467 () Bool)

(assert (=> d!524467 e!1093186))

(declare-fun res!766194 () Bool)

(assert (=> d!524467 (=> res!766194 e!1093186)))

(assert (=> d!524467 (= res!766194 (isEmpty!11711 lt!653027))))

(assert (=> d!524467 (= lt!653027 e!1093185)))

(declare-fun c!280072 () Bool)

(assert (=> d!524467 (= c!280072 (and (is-Cons!18646 rules!3447) (is-Nil!18646 (t!158143 rules!3447))))))

(declare-fun lt!653026 () Unit!32478)

(declare-fun lt!653025 () Unit!32478)

(assert (=> d!524467 (= lt!653026 lt!653025)))

(assert (=> d!524467 (isPrefix!1533 lt!652937 lt!652937)))

(declare-fun lemmaIsPrefixRefl!1048 (List!18715 List!18715) Unit!32478)

(assert (=> d!524467 (= lt!653025 (lemmaIsPrefixRefl!1048 lt!652937 lt!652937))))

(assert (=> d!524467 (rulesValidInductive!1081 thiss!24550 rules!3447)))

(assert (=> d!524467 (= (maxPrefix!1475 thiss!24550 rules!3447 lt!652937) lt!653027)))

(assert (= (and d!524467 c!280072) b!1709175))

(assert (= (and d!524467 (not c!280072)) b!1709177))

(assert (= (or b!1709175 b!1709177) bm!109379))

(assert (= (and d!524467 (not res!766194)) b!1709178))

(assert (= (and b!1709178 res!766192) b!1709181))

(assert (= (and b!1709181 res!766196) b!1709182))

(assert (= (and b!1709182 res!766198) b!1709179))

(assert (= (and b!1709179 res!766195) b!1709176))

(assert (= (and b!1709176 res!766197) b!1709180))

(assert (= (and b!1709180 res!766193) b!1709174))

(declare-fun m!2112245 () Bool)

(assert (=> bm!109379 m!2112245))

(declare-fun m!2112247 () Bool)

(assert (=> d!524467 m!2112247))

(declare-fun m!2112249 () Bool)

(assert (=> d!524467 m!2112249))

(declare-fun m!2112251 () Bool)

(assert (=> d!524467 m!2112251))

(assert (=> d!524467 m!2111953))

(declare-fun m!2112253 () Bool)

(assert (=> b!1709180 m!2112253))

(declare-fun m!2112255 () Bool)

(assert (=> b!1709180 m!2112255))

(assert (=> b!1709180 m!2112255))

(declare-fun m!2112257 () Bool)

(assert (=> b!1709180 m!2112257))

(assert (=> b!1709180 m!2112257))

(declare-fun m!2112259 () Bool)

(assert (=> b!1709180 m!2112259))

(assert (=> b!1709179 m!2112253))

(assert (=> b!1709179 m!2112255))

(assert (=> b!1709179 m!2112255))

(assert (=> b!1709179 m!2112257))

(assert (=> b!1709179 m!2112257))

(declare-fun m!2112261 () Bool)

(assert (=> b!1709179 m!2112261))

(declare-fun m!2112263 () Bool)

(assert (=> b!1709177 m!2112263))

(assert (=> b!1709174 m!2112253))

(declare-fun m!2112265 () Bool)

(assert (=> b!1709174 m!2112265))

(assert (=> b!1709176 m!2112253))

(declare-fun m!2112267 () Bool)

(assert (=> b!1709176 m!2112267))

(assert (=> b!1709176 m!2112267))

(declare-fun m!2112269 () Bool)

(assert (=> b!1709176 m!2112269))

(assert (=> b!1709181 m!2112253))

(assert (=> b!1709181 m!2112255))

(assert (=> b!1709181 m!2112255))

(assert (=> b!1709181 m!2112257))

(assert (=> b!1709182 m!2112253))

(declare-fun m!2112271 () Bool)

(assert (=> b!1709182 m!2112271))

(assert (=> b!1709182 m!2112217))

(declare-fun m!2112273 () Bool)

(assert (=> b!1709178 m!2112273))

(assert (=> b!1708833 d!524467))

(declare-fun d!524469 () Bool)

(declare-fun list!7521 (Conc!6202) List!18715)

(assert (=> d!524469 (= (list!7519 (charsOf!1941 token!523)) (list!7521 (c!280024 (charsOf!1941 token!523))))))

(declare-fun bs!401669 () Bool)

(assert (= bs!401669 d!524469))

(declare-fun m!2112275 () Bool)

(assert (=> bs!401669 m!2112275))

(assert (=> b!1708833 d!524469))

(declare-fun d!524471 () Bool)

(declare-fun lt!653030 () BalanceConc!12348)

(assert (=> d!524471 (= (list!7519 lt!653030) (originalCharacters!4106 token!523))))

(assert (=> d!524471 (= lt!653030 (dynLambda!8482 (toChars!4650 (transformation!3292 (rule!5226 token!523))) (value!103496 token!523)))))

(assert (=> d!524471 (= (charsOf!1941 token!523) lt!653030)))

(declare-fun b_lambda!53937 () Bool)

(assert (=> (not b_lambda!53937) (not d!524471)))

(assert (=> d!524471 t!158148))

(declare-fun b_and!123673 () Bool)

(assert (= b_and!123661 (and (=> t!158148 result!121182) b_and!123673)))

(assert (=> d!524471 t!158150))

(declare-fun b_and!123675 () Bool)

(assert (= b_and!123663 (and (=> t!158150 result!121186) b_and!123675)))

(assert (=> d!524471 t!158152))

(declare-fun b_and!123677 () Bool)

(assert (= b_and!123665 (and (=> t!158152 result!121188) b_and!123677)))

(declare-fun m!2112277 () Bool)

(assert (=> d!524471 m!2112277))

(assert (=> d!524471 m!2112103))

(assert (=> b!1708833 d!524471))

(declare-fun d!524473 () Bool)

(assert (=> d!524473 (= (inv!24053 (tag!3588 (rule!5226 token!523))) (= (mod (str.len (value!103495 (tag!3588 (rule!5226 token!523)))) 2) 0))))

(assert (=> b!1708844 d!524473))

(declare-fun d!524475 () Bool)

(declare-fun res!766199 () Bool)

(declare-fun e!1093188 () Bool)

(assert (=> d!524475 (=> (not res!766199) (not e!1093188))))

(assert (=> d!524475 (= res!766199 (semiInverseModEq!1298 (toChars!4650 (transformation!3292 (rule!5226 token!523))) (toValue!4791 (transformation!3292 (rule!5226 token!523)))))))

(assert (=> d!524475 (= (inv!24056 (transformation!3292 (rule!5226 token!523))) e!1093188)))

(declare-fun b!1709183 () Bool)

(assert (=> b!1709183 (= e!1093188 (equivClasses!1239 (toChars!4650 (transformation!3292 (rule!5226 token!523))) (toValue!4791 (transformation!3292 (rule!5226 token!523)))))))

(assert (= (and d!524475 res!766199) b!1709183))

(declare-fun m!2112279 () Bool)

(assert (=> d!524475 m!2112279))

(declare-fun m!2112281 () Bool)

(assert (=> b!1709183 m!2112281))

(assert (=> b!1708844 d!524475))

(declare-fun d!524477 () Bool)

(declare-fun c!280075 () Bool)

(assert (=> d!524477 (= c!280075 (isEmpty!11707 (++!5113 lt!652937 (Cons!18645 (head!3825 suffix!1421) Nil!18645))))))

(declare-fun e!1093191 () Bool)

(assert (=> d!524477 (= (prefixMatch!505 (rulesRegex!650 thiss!24550 rules!3447) (++!5113 lt!652937 (Cons!18645 (head!3825 suffix!1421) Nil!18645))) e!1093191)))

(declare-fun b!1709188 () Bool)

(declare-fun lostCause!495 (Regex!4620) Bool)

(assert (=> b!1709188 (= e!1093191 (not (lostCause!495 (rulesRegex!650 thiss!24550 rules!3447))))))

(declare-fun b!1709189 () Bool)

(assert (=> b!1709189 (= e!1093191 (prefixMatch!505 (derivativeStep!1153 (rulesRegex!650 thiss!24550 rules!3447) (head!3825 (++!5113 lt!652937 (Cons!18645 (head!3825 suffix!1421) Nil!18645)))) (tail!2546 (++!5113 lt!652937 (Cons!18645 (head!3825 suffix!1421) Nil!18645)))))))

(assert (= (and d!524477 c!280075) b!1709188))

(assert (= (and d!524477 (not c!280075)) b!1709189))

(assert (=> d!524477 m!2111967))

(declare-fun m!2112283 () Bool)

(assert (=> d!524477 m!2112283))

(assert (=> b!1709188 m!2111963))

(declare-fun m!2112285 () Bool)

(assert (=> b!1709188 m!2112285))

(assert (=> b!1709189 m!2111967))

(declare-fun m!2112287 () Bool)

(assert (=> b!1709189 m!2112287))

(assert (=> b!1709189 m!2111963))

(assert (=> b!1709189 m!2112287))

(declare-fun m!2112289 () Bool)

(assert (=> b!1709189 m!2112289))

(assert (=> b!1709189 m!2111967))

(declare-fun m!2112291 () Bool)

(assert (=> b!1709189 m!2112291))

(assert (=> b!1709189 m!2112289))

(assert (=> b!1709189 m!2112291))

(declare-fun m!2112293 () Bool)

(assert (=> b!1709189 m!2112293))

(assert (=> b!1708843 d!524477))

(declare-fun d!524479 () Bool)

(declare-fun lt!653033 () Unit!32478)

(declare-fun lemma!309 (List!18716 LexerInterface!2921 List!18716) Unit!32478)

(assert (=> d!524479 (= lt!653033 (lemma!309 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!68787 () Int)

(declare-datatypes ((List!18721 0))(
  ( (Nil!18651) (Cons!18651 (h!24052 Regex!4620) (t!158164 List!18721)) )
))
(declare-fun generalisedUnion!317 (List!18721) Regex!4620)

(declare-fun map!3835 (List!18716 Int) List!18721)

(assert (=> d!524479 (= (rulesRegex!650 thiss!24550 rules!3447) (generalisedUnion!317 (map!3835 rules!3447 lambda!68787)))))

(declare-fun bs!401670 () Bool)

(assert (= bs!401670 d!524479))

(declare-fun m!2112295 () Bool)

(assert (=> bs!401670 m!2112295))

(declare-fun m!2112297 () Bool)

(assert (=> bs!401670 m!2112297))

(assert (=> bs!401670 m!2112297))

(declare-fun m!2112299 () Bool)

(assert (=> bs!401670 m!2112299))

(assert (=> b!1708843 d!524479))

(declare-fun b!1709190 () Bool)

(declare-fun e!1093193 () List!18715)

(assert (=> b!1709190 (= e!1093193 (Cons!18645 (head!3825 suffix!1421) Nil!18645))))

(declare-fun lt!653034 () List!18715)

(declare-fun e!1093192 () Bool)

(declare-fun b!1709193 () Bool)

(assert (=> b!1709193 (= e!1093192 (or (not (= (Cons!18645 (head!3825 suffix!1421) Nil!18645) Nil!18645)) (= lt!653034 lt!652937)))))

(declare-fun d!524481 () Bool)

(assert (=> d!524481 e!1093192))

(declare-fun res!766201 () Bool)

(assert (=> d!524481 (=> (not res!766201) (not e!1093192))))

(assert (=> d!524481 (= res!766201 (= (content!2648 lt!653034) (set.union (content!2648 lt!652937) (content!2648 (Cons!18645 (head!3825 suffix!1421) Nil!18645)))))))

(assert (=> d!524481 (= lt!653034 e!1093193)))

(declare-fun c!280076 () Bool)

(assert (=> d!524481 (= c!280076 (is-Nil!18645 lt!652937))))

(assert (=> d!524481 (= (++!5113 lt!652937 (Cons!18645 (head!3825 suffix!1421) Nil!18645)) lt!653034)))

(declare-fun b!1709191 () Bool)

(assert (=> b!1709191 (= e!1093193 (Cons!18645 (h!24046 lt!652937) (++!5113 (t!158142 lt!652937) (Cons!18645 (head!3825 suffix!1421) Nil!18645))))))

(declare-fun b!1709192 () Bool)

(declare-fun res!766200 () Bool)

(assert (=> b!1709192 (=> (not res!766200) (not e!1093192))))

(assert (=> b!1709192 (= res!766200 (= (size!14835 lt!653034) (+ (size!14835 lt!652937) (size!14835 (Cons!18645 (head!3825 suffix!1421) Nil!18645)))))))

(assert (= (and d!524481 c!280076) b!1709190))

(assert (= (and d!524481 (not c!280076)) b!1709191))

(assert (= (and d!524481 res!766201) b!1709192))

(assert (= (and b!1709192 res!766200) b!1709193))

(declare-fun m!2112301 () Bool)

(assert (=> d!524481 m!2112301))

(assert (=> d!524481 m!2112229))

(declare-fun m!2112303 () Bool)

(assert (=> d!524481 m!2112303))

(declare-fun m!2112305 () Bool)

(assert (=> b!1709191 m!2112305))

(declare-fun m!2112307 () Bool)

(assert (=> b!1709192 m!2112307))

(assert (=> b!1709192 m!2112217))

(declare-fun m!2112309 () Bool)

(assert (=> b!1709192 m!2112309))

(assert (=> b!1708843 d!524481))

(declare-fun d!524483 () Bool)

(assert (=> d!524483 (= (head!3825 suffix!1421) (h!24046 suffix!1421))))

(assert (=> b!1708843 d!524483))

(declare-fun b!1709198 () Bool)

(declare-fun e!1093196 () Bool)

(declare-fun tp!488349 () Bool)

(assert (=> b!1709198 (= e!1093196 (and tp_is_empty!7483 tp!488349))))

(assert (=> b!1708846 (= tp!488294 e!1093196)))

(assert (= (and b!1708846 (is-Cons!18645 (originalCharacters!4106 token!523))) b!1709198))

(declare-fun b!1709212 () Bool)

(declare-fun e!1093199 () Bool)

(declare-fun tp!488360 () Bool)

(declare-fun tp!488364 () Bool)

(assert (=> b!1709212 (= e!1093199 (and tp!488360 tp!488364))))

(assert (=> b!1708835 (= tp!488296 e!1093199)))

(declare-fun b!1709210 () Bool)

(declare-fun tp!488362 () Bool)

(declare-fun tp!488363 () Bool)

(assert (=> b!1709210 (= e!1093199 (and tp!488362 tp!488363))))

(declare-fun b!1709211 () Bool)

(declare-fun tp!488361 () Bool)

(assert (=> b!1709211 (= e!1093199 tp!488361)))

(declare-fun b!1709209 () Bool)

(assert (=> b!1709209 (= e!1093199 tp_is_empty!7483)))

(assert (= (and b!1708835 (is-ElementMatch!4620 (regex!3292 (h!24047 rules!3447)))) b!1709209))

(assert (= (and b!1708835 (is-Concat!8003 (regex!3292 (h!24047 rules!3447)))) b!1709210))

(assert (= (and b!1708835 (is-Star!4620 (regex!3292 (h!24047 rules!3447)))) b!1709211))

(assert (= (and b!1708835 (is-Union!4620 (regex!3292 (h!24047 rules!3447)))) b!1709212))

(declare-fun b!1709216 () Bool)

(declare-fun e!1093200 () Bool)

(declare-fun tp!488365 () Bool)

(declare-fun tp!488369 () Bool)

(assert (=> b!1709216 (= e!1093200 (and tp!488365 tp!488369))))

(assert (=> b!1708844 (= tp!488299 e!1093200)))

(declare-fun b!1709214 () Bool)

(declare-fun tp!488367 () Bool)

(declare-fun tp!488368 () Bool)

(assert (=> b!1709214 (= e!1093200 (and tp!488367 tp!488368))))

(declare-fun b!1709215 () Bool)

(declare-fun tp!488366 () Bool)

(assert (=> b!1709215 (= e!1093200 tp!488366)))

(declare-fun b!1709213 () Bool)

(assert (=> b!1709213 (= e!1093200 tp_is_empty!7483)))

(assert (= (and b!1708844 (is-ElementMatch!4620 (regex!3292 (rule!5226 token!523)))) b!1709213))

(assert (= (and b!1708844 (is-Concat!8003 (regex!3292 (rule!5226 token!523)))) b!1709214))

(assert (= (and b!1708844 (is-Star!4620 (regex!3292 (rule!5226 token!523)))) b!1709215))

(assert (= (and b!1708844 (is-Union!4620 (regex!3292 (rule!5226 token!523)))) b!1709216))

(declare-fun b!1709217 () Bool)

(declare-fun e!1093201 () Bool)

(declare-fun tp!488370 () Bool)

(assert (=> b!1709217 (= e!1093201 (and tp_is_empty!7483 tp!488370))))

(assert (=> b!1708839 (= tp!488297 e!1093201)))

(assert (= (and b!1708839 (is-Cons!18645 (t!158142 suffix!1421))) b!1709217))

(declare-fun b!1709228 () Bool)

(declare-fun b_free!46295 () Bool)

(declare-fun b_next!46999 () Bool)

(assert (=> b!1709228 (= b_free!46295 (not b_next!46999))))

(declare-fun tp!488381 () Bool)

(declare-fun b_and!123679 () Bool)

(assert (=> b!1709228 (= tp!488381 b_and!123679)))

(declare-fun b_free!46297 () Bool)

(declare-fun b_next!47001 () Bool)

(assert (=> b!1709228 (= b_free!46297 (not b_next!47001))))

(declare-fun t!158160 () Bool)

(declare-fun tb!100883 () Bool)

(assert (=> (and b!1709228 (= (toChars!4650 (transformation!3292 (h!24047 (t!158143 rules!3447)))) (toChars!4650 (transformation!3292 (rule!5226 token!523)))) t!158160) tb!100883))

(declare-fun result!121204 () Bool)

(assert (= result!121204 result!121182))

(assert (=> b!1709035 t!158160))

(assert (=> d!524471 t!158160))

(declare-fun b_and!123681 () Bool)

(declare-fun tp!488382 () Bool)

(assert (=> b!1709228 (= tp!488382 (and (=> t!158160 result!121204) b_and!123681))))

(declare-fun e!1093210 () Bool)

(assert (=> b!1709228 (= e!1093210 (and tp!488381 tp!488382))))

(declare-fun e!1093211 () Bool)

(declare-fun tp!488379 () Bool)

(declare-fun b!1709227 () Bool)

(assert (=> b!1709227 (= e!1093211 (and tp!488379 (inv!24053 (tag!3588 (h!24047 (t!158143 rules!3447)))) (inv!24056 (transformation!3292 (h!24047 (t!158143 rules!3447)))) e!1093210))))

(declare-fun b!1709226 () Bool)

(declare-fun e!1093212 () Bool)

(declare-fun tp!488380 () Bool)

(assert (=> b!1709226 (= e!1093212 (and e!1093211 tp!488380))))

(assert (=> b!1708832 (= tp!488303 e!1093212)))

(assert (= b!1709227 b!1709228))

(assert (= b!1709226 b!1709227))

(assert (= (and b!1708832 (is-Cons!18646 (t!158143 rules!3447))) b!1709226))

(declare-fun m!2112311 () Bool)

(assert (=> b!1709227 m!2112311))

(declare-fun m!2112313 () Bool)

(assert (=> b!1709227 m!2112313))

(declare-fun b!1709232 () Bool)

(declare-fun e!1093214 () Bool)

(declare-fun tp!488383 () Bool)

(declare-fun tp!488387 () Bool)

(assert (=> b!1709232 (= e!1093214 (and tp!488383 tp!488387))))

(assert (=> b!1708827 (= tp!488293 e!1093214)))

(declare-fun b!1709230 () Bool)

(declare-fun tp!488385 () Bool)

(declare-fun tp!488386 () Bool)

(assert (=> b!1709230 (= e!1093214 (and tp!488385 tp!488386))))

(declare-fun b!1709231 () Bool)

(declare-fun tp!488384 () Bool)

(assert (=> b!1709231 (= e!1093214 tp!488384)))

(declare-fun b!1709229 () Bool)

(assert (=> b!1709229 (= e!1093214 tp_is_empty!7483)))

(assert (= (and b!1708827 (is-ElementMatch!4620 (regex!3292 rule!422))) b!1709229))

(assert (= (and b!1708827 (is-Concat!8003 (regex!3292 rule!422))) b!1709230))

(assert (= (and b!1708827 (is-Star!4620 (regex!3292 rule!422))) b!1709231))

(assert (= (and b!1708827 (is-Union!4620 (regex!3292 rule!422))) b!1709232))

(declare-fun b_lambda!53939 () Bool)

(assert (= b_lambda!53937 (or (and b!1708831 b_free!46273 (= (toChars!4650 (transformation!3292 rule!422)) (toChars!4650 (transformation!3292 (rule!5226 token!523))))) (and b!1708836 b_free!46277) (and b!1708842 b_free!46281 (= (toChars!4650 (transformation!3292 (h!24047 rules!3447))) (toChars!4650 (transformation!3292 (rule!5226 token!523))))) (and b!1709228 b_free!46297 (= (toChars!4650 (transformation!3292 (h!24047 (t!158143 rules!3447)))) (toChars!4650 (transformation!3292 (rule!5226 token!523))))) b_lambda!53939)))

(declare-fun b_lambda!53941 () Bool)

(assert (= b_lambda!53933 (or (and b!1708831 b_free!46273 (= (toChars!4650 (transformation!3292 rule!422)) (toChars!4650 (transformation!3292 (rule!5226 token!523))))) (and b!1708836 b_free!46277) (and b!1708842 b_free!46281 (= (toChars!4650 (transformation!3292 (h!24047 rules!3447))) (toChars!4650 (transformation!3292 (rule!5226 token!523))))) (and b!1709228 b_free!46297 (= (toChars!4650 (transformation!3292 (h!24047 (t!158143 rules!3447)))) (toChars!4650 (transformation!3292 (rule!5226 token!523))))) b_lambda!53941)))

(push 1)

(assert (not b!1709140))

(assert (not d!524395))

(assert (not b!1709176))

(assert (not d!524465))

(assert (not b!1709046))

(assert (not b_next!46975))

(assert b_and!123679)

(assert (not b!1709230))

(assert b_and!123677)

(assert (not tb!100871))

(assert (not d!524459))

(assert (not b!1709153))

(assert (not b!1709227))

(assert (not b_next!46981))

(assert b_and!123673)

(assert (not d!524469))

(assert (not b!1709226))

(assert (not b!1709181))

(assert (not b!1709036))

(assert (not b!1709057))

(assert (not d!524479))

(assert tp_is_empty!7483)

(assert (not b_lambda!53941))

(assert (not b_next!46999))

(assert (not b!1709179))

(assert (not d!524411))

(assert (not d!524481))

(assert (not d!524477))

(assert (not d!524403))

(assert (not b!1709231))

(assert (not b_next!46985))

(assert (not b_next!47001))

(assert (not b!1709059))

(assert (not b!1709198))

(assert b_and!123681)

(assert (not b!1709215))

(assert (not b!1709210))

(assert (not b!1709211))

(assert (not b!1709152))

(assert (not d!524383))

(assert (not b!1709189))

(assert (not b!1709141))

(assert (not d!524457))

(assert (not b!1709043))

(assert (not b!1709006))

(assert (not d!524421))

(assert (not d!524391))

(assert (not b!1709217))

(assert (not b!1709180))

(assert (not d!524399))

(assert (not b!1709128))

(assert b_and!123645)

(assert (not b!1709174))

(assert (not b_lambda!53939))

(assert (not b!1708936))

(assert (not d!524397))

(assert (not b!1709035))

(assert (not b_next!46977))

(assert (not d!524467))

(assert (not b!1709192))

(assert (not b!1708993))

(assert (not b_next!46979))

(assert (not d!524475))

(assert (not b!1709025))

(assert (not b!1709191))

(assert (not b!1709177))

(assert (not bm!109379))

(assert (not b!1709155))

(assert (not b!1709216))

(assert b_and!123637)

(assert (not b!1709178))

(assert (not bm!109372))

(assert (not b!1709183))

(assert (not b!1708998))

(assert (not b_next!46983))

(assert (not b!1709214))

(assert b_and!123675)

(assert (not b!1709212))

(assert (not b!1708995))

(assert (not d!524463))

(assert (not d!524471))

(assert (not b!1709188))

(assert (not b!1708996))

(assert (not b!1709127))

(assert (not b!1708999))

(assert b_and!123641)

(assert (not b!1709232))

(assert (not b!1709182))

(assert (not b!1709142))

(assert (not b!1709061))

(assert (not b!1708925))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!46999))

(assert (not b_next!46985))

(assert (not b_next!47001))

(assert b_and!123681)

(assert b_and!123645)

(assert (not b_next!46977))

(assert (not b_next!46979))

(assert b_and!123637)

(assert (not b_next!46983))

(assert b_and!123675)

(assert b_and!123641)

(assert (not b_next!46975))

(assert b_and!123679)

(assert b_and!123677)

(assert (not b_next!46981))

(assert b_and!123673)

(check-sat)

(pop 1)

