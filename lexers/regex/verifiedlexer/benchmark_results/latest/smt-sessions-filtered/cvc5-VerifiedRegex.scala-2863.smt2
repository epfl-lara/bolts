; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!166660 () Bool)

(assert start!166660)

(declare-fun b!1707113 () Bool)

(declare-fun b_free!46175 () Bool)

(declare-fun b_next!46879 () Bool)

(assert (=> b!1707113 (= b_free!46175 (not b_next!46879))))

(declare-fun tp!487714 () Bool)

(declare-fun b_and!123461 () Bool)

(assert (=> b!1707113 (= tp!487714 b_and!123461)))

(declare-fun b_free!46177 () Bool)

(declare-fun b_next!46881 () Bool)

(assert (=> b!1707113 (= b_free!46177 (not b_next!46881))))

(declare-fun tp!487720 () Bool)

(declare-fun b_and!123463 () Bool)

(assert (=> b!1707113 (= tp!487720 b_and!123463)))

(declare-fun b!1707101 () Bool)

(declare-fun b_free!46179 () Bool)

(declare-fun b_next!46883 () Bool)

(assert (=> b!1707101 (= b_free!46179 (not b_next!46883))))

(declare-fun tp!487713 () Bool)

(declare-fun b_and!123465 () Bool)

(assert (=> b!1707101 (= tp!487713 b_and!123465)))

(declare-fun b_free!46181 () Bool)

(declare-fun b_next!46885 () Bool)

(assert (=> b!1707101 (= b_free!46181 (not b_next!46885))))

(declare-fun tp!487709 () Bool)

(declare-fun b_and!123467 () Bool)

(assert (=> b!1707101 (= tp!487709 b_and!123467)))

(declare-fun b!1707112 () Bool)

(declare-fun b_free!46183 () Bool)

(declare-fun b_next!46887 () Bool)

(assert (=> b!1707112 (= b_free!46183 (not b_next!46887))))

(declare-fun tp!487715 () Bool)

(declare-fun b_and!123469 () Bool)

(assert (=> b!1707112 (= tp!487715 b_and!123469)))

(declare-fun b_free!46185 () Bool)

(declare-fun b_next!46889 () Bool)

(assert (=> b!1707112 (= b_free!46185 (not b_next!46889))))

(declare-fun tp!487710 () Bool)

(declare-fun b_and!123471 () Bool)

(assert (=> b!1707112 (= tp!487710 b_and!123471)))

(declare-fun b!1707095 () Bool)

(declare-fun e!1091921 () Bool)

(declare-fun e!1091919 () Bool)

(declare-fun tp!487716 () Bool)

(assert (=> b!1707095 (= e!1091921 (and e!1091919 tp!487716))))

(declare-fun e!1091922 () Bool)

(declare-fun tp!487719 () Bool)

(declare-fun b!1707096 () Bool)

(declare-datatypes ((List!18688 0))(
  ( (Nil!18618) (Cons!18618 (h!24019 (_ BitVec 16)) (t!158037 List!18688)) )
))
(declare-datatypes ((TokenValue!3376 0))(
  ( (FloatLiteralValue!6752 (text!24077 List!18688)) (TokenValueExt!3375 (__x!12054 Int)) (Broken!16880 (value!103299 List!18688)) (Object!3445) (End!3376) (Def!3376) (Underscore!3376) (Match!3376) (Else!3376) (Error!3376) (Case!3376) (If!3376) (Extends!3376) (Abstract!3376) (Class!3376) (Val!3376) (DelimiterValue!6752 (del!3436 List!18688)) (KeywordValue!3382 (value!103300 List!18688)) (CommentValue!6752 (value!103301 List!18688)) (WhitespaceValue!6752 (value!103302 List!18688)) (IndentationValue!3376 (value!103303 List!18688)) (String!21213) (Int32!3376) (Broken!16881 (value!103304 List!18688)) (Boolean!3377) (Unit!32455) (OperatorValue!3379 (op!3436 List!18688)) (IdentifierValue!6752 (value!103305 List!18688)) (IdentifierValue!6753 (value!103306 List!18688)) (WhitespaceValue!6753 (value!103307 List!18688)) (True!6752) (False!6752) (Broken!16882 (value!103308 List!18688)) (Broken!16883 (value!103309 List!18688)) (True!6753) (RightBrace!3376) (RightBracket!3376) (Colon!3376) (Null!3376) (Comma!3376) (LeftBracket!3376) (False!6753) (LeftBrace!3376) (ImaginaryLiteralValue!3376 (text!24078 List!18688)) (StringLiteralValue!10128 (value!103310 List!18688)) (EOFValue!3376 (value!103311 List!18688)) (IdentValue!3376 (value!103312 List!18688)) (DelimiterValue!6753 (value!103313 List!18688)) (DedentValue!3376 (value!103314 List!18688)) (NewLineValue!3376 (value!103315 List!18688)) (IntegerValue!10128 (value!103316 (_ BitVec 32)) (text!24079 List!18688)) (IntegerValue!10129 (value!103317 Int) (text!24080 List!18688)) (Times!3376) (Or!3376) (Equal!3376) (Minus!3376) (Broken!16884 (value!103318 List!18688)) (And!3376) (Div!3376) (LessEqual!3376) (Mod!3376) (Concat!7990) (Not!3376) (Plus!3376) (SpaceValue!3376 (value!103319 List!18688)) (IntegerValue!10130 (value!103320 Int) (text!24081 List!18688)) (StringLiteralValue!10129 (text!24082 List!18688)) (FloatLiteralValue!6753 (text!24083 List!18688)) (BytesLiteralValue!3376 (value!103321 List!18688)) (CommentValue!6753 (value!103322 List!18688)) (StringLiteralValue!10130 (value!103323 List!18688)) (ErrorTokenValue!3376 (msg!3437 List!18688)) )
))
(declare-datatypes ((String!21214 0))(
  ( (String!21215 (value!103324 String)) )
))
(declare-datatypes ((C!9402 0))(
  ( (C!9403 (val!5297 Int)) )
))
(declare-datatypes ((List!18689 0))(
  ( (Nil!18619) (Cons!18619 (h!24020 C!9402) (t!158038 List!18689)) )
))
(declare-datatypes ((Regex!4614 0))(
  ( (ElementMatch!4614 (c!279765 C!9402)) (Concat!7991 (regOne!9740 Regex!4614) (regTwo!9740 Regex!4614)) (EmptyExpr!4614) (Star!4614 (reg!4943 Regex!4614)) (EmptyLang!4614) (Union!4614 (regOne!9741 Regex!4614) (regTwo!9741 Regex!4614)) )
))
(declare-datatypes ((IArray!12397 0))(
  ( (IArray!12398 (innerList!6256 List!18689)) )
))
(declare-datatypes ((Conc!6196 0))(
  ( (Node!6196 (left!14861 Conc!6196) (right!15191 Conc!6196) (csize!12622 Int) (cheight!6407 Int)) (Leaf!9060 (xs!9072 IArray!12397) (csize!12623 Int)) (Empty!6196) )
))
(declare-datatypes ((BalanceConc!12336 0))(
  ( (BalanceConc!12337 (c!279766 Conc!6196)) )
))
(declare-datatypes ((TokenValueInjection!6412 0))(
  ( (TokenValueInjection!6413 (toValue!4781 Int) (toChars!4640 Int)) )
))
(declare-datatypes ((Rule!6372 0))(
  ( (Rule!6373 (regex!3286 Regex!4614) (tag!3582 String!21214) (isSeparator!3286 Bool) (transformation!3286 TokenValueInjection!6412)) )
))
(declare-fun rule!422 () Rule!6372)

(declare-fun e!1091929 () Bool)

(declare-fun inv!24021 (String!21214) Bool)

(declare-fun inv!24024 (TokenValueInjection!6412) Bool)

(assert (=> b!1707096 (= e!1091929 (and tp!487719 (inv!24021 (tag!3582 rule!422)) (inv!24024 (transformation!3286 rule!422)) e!1091922))))

(declare-fun b!1707097 () Bool)

(declare-fun res!765237 () Bool)

(declare-fun e!1091927 () Bool)

(assert (=> b!1707097 (=> (not res!765237) (not e!1091927))))

(declare-datatypes ((LexerInterface!2915 0))(
  ( (LexerInterfaceExt!2912 (__x!12055 Int)) (Lexer!2913) )
))
(declare-fun thiss!24550 () LexerInterface!2915)

(declare-datatypes ((List!18690 0))(
  ( (Nil!18620) (Cons!18620 (h!24021 Rule!6372) (t!158039 List!18690)) )
))
(declare-fun rules!3447 () List!18690)

(declare-fun rulesInvariant!2584 (LexerInterface!2915 List!18690) Bool)

(assert (=> b!1707097 (= res!765237 (rulesInvariant!2584 thiss!24550 rules!3447))))

(declare-fun b!1707098 () Bool)

(declare-fun tp!487718 () Bool)

(declare-datatypes ((Token!6138 0))(
  ( (Token!6139 (value!103325 TokenValue!3376) (rule!5218 Rule!6372) (size!14817 Int) (originalCharacters!4100 List!18689)) )
))
(declare-fun token!523 () Token!6138)

(declare-fun e!1091918 () Bool)

(declare-fun e!1091923 () Bool)

(declare-fun inv!21 (TokenValue!3376) Bool)

(assert (=> b!1707098 (= e!1091918 (and (inv!21 (value!103325 token!523)) e!1091923 tp!487718))))

(declare-fun b!1707099 () Bool)

(declare-fun e!1091930 () Bool)

(declare-fun e!1091915 () Bool)

(assert (=> b!1707099 (= e!1091930 e!1091915)))

(declare-fun res!765243 () Bool)

(assert (=> b!1707099 (=> (not res!765243) (not e!1091915))))

(declare-datatypes ((tuple2!18352 0))(
  ( (tuple2!18353 (_1!10578 Token!6138) (_2!10578 List!18689)) )
))
(declare-fun lt!652581 () tuple2!18352)

(assert (=> b!1707099 (= res!765243 (= (_1!10578 lt!652581) token!523))))

(declare-datatypes ((Option!3610 0))(
  ( (None!3609) (Some!3609 (v!24988 tuple2!18352)) )
))
(declare-fun lt!652582 () Option!3610)

(declare-fun get!5473 (Option!3610) tuple2!18352)

(assert (=> b!1707099 (= lt!652581 (get!5473 lt!652582))))

(declare-fun b!1707100 () Bool)

(declare-fun res!765235 () Bool)

(assert (=> b!1707100 (=> (not res!765235) (not e!1091927))))

(declare-fun contains!3302 (List!18690 Rule!6372) Bool)

(assert (=> b!1707100 (= res!765235 (contains!3302 rules!3447 rule!422))))

(assert (=> b!1707101 (= e!1091922 (and tp!487713 tp!487709))))

(declare-fun b!1707102 () Bool)

(declare-fun res!765238 () Bool)

(assert (=> b!1707102 (=> (not res!765238) (not e!1091927))))

(declare-fun isEmpty!11689 (List!18690) Bool)

(assert (=> b!1707102 (= res!765238 (not (isEmpty!11689 rules!3447)))))

(declare-fun b!1707103 () Bool)

(declare-fun res!765241 () Bool)

(assert (=> b!1707103 (=> (not res!765241) (not e!1091915))))

(declare-fun isEmpty!11690 (List!18689) Bool)

(assert (=> b!1707103 (= res!765241 (isEmpty!11690 (_2!10578 lt!652581)))))

(declare-fun b!1707104 () Bool)

(declare-fun res!765239 () Bool)

(assert (=> b!1707104 (=> (not res!765239) (not e!1091915))))

(assert (=> b!1707104 (= res!765239 (= (rule!5218 token!523) rule!422))))

(declare-fun b!1707105 () Bool)

(declare-fun e!1091931 () Bool)

(declare-fun suffix!1421 () List!18689)

(assert (=> b!1707105 (= e!1091931 (not (= suffix!1421 Nil!18619)))))

(declare-fun lt!652583 () Regex!4614)

(declare-fun rulesRegex!644 (LexerInterface!2915 List!18690) Regex!4614)

(assert (=> b!1707105 (= lt!652583 (rulesRegex!644 thiss!24550 rules!3447))))

(declare-fun e!1091926 () Bool)

(declare-fun tp!487711 () Bool)

(declare-fun b!1707106 () Bool)

(assert (=> b!1707106 (= e!1091919 (and tp!487711 (inv!24021 (tag!3582 (h!24021 rules!3447))) (inv!24024 (transformation!3286 (h!24021 rules!3447))) e!1091926))))

(declare-fun b!1707107 () Bool)

(assert (=> b!1707107 (= e!1091915 (not e!1091931))))

(declare-fun res!765236 () Bool)

(assert (=> b!1707107 (=> res!765236 e!1091931)))

(declare-fun lt!652585 () List!18689)

(declare-fun matchR!2088 (Regex!4614 List!18689) Bool)

(assert (=> b!1707107 (= res!765236 (not (matchR!2088 (regex!3286 rule!422) lt!652585)))))

(declare-fun ruleValid!785 (LexerInterface!2915 Rule!6372) Bool)

(assert (=> b!1707107 (ruleValid!785 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32456 0))(
  ( (Unit!32457) )
))
(declare-fun lt!652584 () Unit!32456)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!309 (LexerInterface!2915 Rule!6372 List!18690) Unit!32456)

(assert (=> b!1707107 (= lt!652584 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!309 thiss!24550 rule!422 rules!3447))))

(declare-fun res!765242 () Bool)

(assert (=> start!166660 (=> (not res!765242) (not e!1091927))))

(assert (=> start!166660 (= res!765242 (is-Lexer!2913 thiss!24550))))

(assert (=> start!166660 e!1091927))

(declare-fun e!1091925 () Bool)

(assert (=> start!166660 e!1091925))

(assert (=> start!166660 e!1091929))

(assert (=> start!166660 true))

(declare-fun inv!24025 (Token!6138) Bool)

(assert (=> start!166660 (and (inv!24025 token!523) e!1091918)))

(assert (=> start!166660 e!1091921))

(declare-fun tp!487712 () Bool)

(declare-fun e!1091920 () Bool)

(declare-fun b!1707108 () Bool)

(assert (=> b!1707108 (= e!1091923 (and tp!487712 (inv!24021 (tag!3582 (rule!5218 token!523))) (inv!24024 (transformation!3286 (rule!5218 token!523))) e!1091920))))

(declare-fun b!1707109 () Bool)

(declare-fun tp_is_empty!7471 () Bool)

(declare-fun tp!487717 () Bool)

(assert (=> b!1707109 (= e!1091925 (and tp_is_empty!7471 tp!487717))))

(declare-fun b!1707110 () Bool)

(assert (=> b!1707110 (= e!1091927 e!1091930)))

(declare-fun res!765240 () Bool)

(assert (=> b!1707110 (=> (not res!765240) (not e!1091930))))

(declare-fun isDefined!2955 (Option!3610) Bool)

(assert (=> b!1707110 (= res!765240 (isDefined!2955 lt!652582))))

(declare-fun maxPrefix!1469 (LexerInterface!2915 List!18690 List!18689) Option!3610)

(assert (=> b!1707110 (= lt!652582 (maxPrefix!1469 thiss!24550 rules!3447 lt!652585))))

(declare-fun list!7507 (BalanceConc!12336) List!18689)

(declare-fun charsOf!1935 (Token!6138) BalanceConc!12336)

(assert (=> b!1707110 (= lt!652585 (list!7507 (charsOf!1935 token!523)))))

(declare-fun b!1707111 () Bool)

(declare-fun res!765234 () Bool)

(assert (=> b!1707111 (=> res!765234 e!1091931)))

(assert (=> b!1707111 (= res!765234 (isEmpty!11690 suffix!1421))))

(assert (=> b!1707112 (= e!1091920 (and tp!487715 tp!487710))))

(assert (=> b!1707113 (= e!1091926 (and tp!487714 tp!487720))))

(assert (= (and start!166660 res!765242) b!1707102))

(assert (= (and b!1707102 res!765238) b!1707097))

(assert (= (and b!1707097 res!765237) b!1707100))

(assert (= (and b!1707100 res!765235) b!1707110))

(assert (= (and b!1707110 res!765240) b!1707099))

(assert (= (and b!1707099 res!765243) b!1707103))

(assert (= (and b!1707103 res!765241) b!1707104))

(assert (= (and b!1707104 res!765239) b!1707107))

(assert (= (and b!1707107 (not res!765236)) b!1707111))

(assert (= (and b!1707111 (not res!765234)) b!1707105))

(assert (= (and start!166660 (is-Cons!18619 suffix!1421)) b!1707109))

(assert (= b!1707096 b!1707101))

(assert (= start!166660 b!1707096))

(assert (= b!1707108 b!1707112))

(assert (= b!1707098 b!1707108))

(assert (= start!166660 b!1707098))

(assert (= b!1707106 b!1707113))

(assert (= b!1707095 b!1707106))

(assert (= (and start!166660 (is-Cons!18620 rules!3447)) b!1707095))

(declare-fun m!2110561 () Bool)

(assert (=> b!1707099 m!2110561))

(declare-fun m!2110563 () Bool)

(assert (=> b!1707105 m!2110563))

(declare-fun m!2110565 () Bool)

(assert (=> start!166660 m!2110565))

(declare-fun m!2110567 () Bool)

(assert (=> b!1707097 m!2110567))

(declare-fun m!2110569 () Bool)

(assert (=> b!1707111 m!2110569))

(declare-fun m!2110571 () Bool)

(assert (=> b!1707098 m!2110571))

(declare-fun m!2110573 () Bool)

(assert (=> b!1707096 m!2110573))

(declare-fun m!2110575 () Bool)

(assert (=> b!1707096 m!2110575))

(declare-fun m!2110577 () Bool)

(assert (=> b!1707108 m!2110577))

(declare-fun m!2110579 () Bool)

(assert (=> b!1707108 m!2110579))

(declare-fun m!2110581 () Bool)

(assert (=> b!1707103 m!2110581))

(declare-fun m!2110583 () Bool)

(assert (=> b!1707106 m!2110583))

(declare-fun m!2110585 () Bool)

(assert (=> b!1707106 m!2110585))

(declare-fun m!2110587 () Bool)

(assert (=> b!1707102 m!2110587))

(declare-fun m!2110589 () Bool)

(assert (=> b!1707107 m!2110589))

(declare-fun m!2110591 () Bool)

(assert (=> b!1707107 m!2110591))

(declare-fun m!2110593 () Bool)

(assert (=> b!1707107 m!2110593))

(declare-fun m!2110595 () Bool)

(assert (=> b!1707100 m!2110595))

(declare-fun m!2110597 () Bool)

(assert (=> b!1707110 m!2110597))

(declare-fun m!2110599 () Bool)

(assert (=> b!1707110 m!2110599))

(declare-fun m!2110601 () Bool)

(assert (=> b!1707110 m!2110601))

(assert (=> b!1707110 m!2110601))

(declare-fun m!2110603 () Bool)

(assert (=> b!1707110 m!2110603))

(push 1)

(assert (not b_next!46889))

(assert (not b_next!46881))

(assert (not b!1707095))

(assert b_and!123465)

(assert (not start!166660))

(assert (not b!1707110))

(assert (not b!1707106))

(assert (not b!1707108))

(assert (not b_next!46885))

(assert (not b!1707100))

(assert (not b!1707097))

(assert b_and!123467)

(assert (not b!1707111))

(assert (not b!1707098))

(assert b_and!123469)

(assert b_and!123471)

(assert (not b_next!46887))

(assert b_and!123461)

(assert (not b!1707109))

(assert (not b_next!46879))

(assert (not b!1707102))

(assert (not b!1707099))

(assert (not b_next!46883))

(assert (not b!1707105))

(assert b_and!123463)

(assert (not b!1707096))

(assert (not b!1707103))

(assert tp_is_empty!7471)

(assert (not b!1707107))

(check-sat)

(pop 1)

(push 1)

(assert b_and!123467)

(assert (not b_next!46889))

(assert (not b_next!46881))

(assert (not b_next!46879))

(assert b_and!123465)

(assert (not b_next!46883))

(assert b_and!123463)

(assert (not b_next!46885))

(assert b_and!123469)

(assert b_and!123471)

(assert (not b_next!46887))

(assert b_and!123461)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!523942 () Bool)

(declare-fun res!765280 () Bool)

(declare-fun e!1091985 () Bool)

(assert (=> d!523942 (=> (not res!765280) (not e!1091985))))

(declare-fun rulesValid!1222 (LexerInterface!2915 List!18690) Bool)

(assert (=> d!523942 (= res!765280 (rulesValid!1222 thiss!24550 rules!3447))))

(assert (=> d!523942 (= (rulesInvariant!2584 thiss!24550 rules!3447) e!1091985)))

(declare-fun b!1707173 () Bool)

(declare-datatypes ((List!18694 0))(
  ( (Nil!18624) (Cons!18624 (h!24025 String!21214) (t!158057 List!18694)) )
))
(declare-fun noDuplicateTag!1222 (LexerInterface!2915 List!18690 List!18694) Bool)

(assert (=> b!1707173 (= e!1091985 (noDuplicateTag!1222 thiss!24550 rules!3447 Nil!18624))))

(assert (= (and d!523942 res!765280) b!1707173))

(declare-fun m!2110649 () Bool)

(assert (=> d!523942 m!2110649))

(declare-fun m!2110651 () Bool)

(assert (=> b!1707173 m!2110651))

(assert (=> b!1707097 d!523942))

(declare-fun d!523946 () Bool)

(assert (=> d!523946 (= (inv!24021 (tag!3582 (rule!5218 token!523))) (= (mod (str.len (value!103324 (tag!3582 (rule!5218 token!523)))) 2) 0))))

(assert (=> b!1707108 d!523946))

(declare-fun d!523948 () Bool)

(declare-fun res!765283 () Bool)

(declare-fun e!1091988 () Bool)

(assert (=> d!523948 (=> (not res!765283) (not e!1091988))))

(declare-fun semiInverseModEq!1294 (Int Int) Bool)

(assert (=> d!523948 (= res!765283 (semiInverseModEq!1294 (toChars!4640 (transformation!3286 (rule!5218 token!523))) (toValue!4781 (transformation!3286 (rule!5218 token!523)))))))

(assert (=> d!523948 (= (inv!24024 (transformation!3286 (rule!5218 token!523))) e!1091988)))

(declare-fun b!1707176 () Bool)

(declare-fun equivClasses!1235 (Int Int) Bool)

(assert (=> b!1707176 (= e!1091988 (equivClasses!1235 (toChars!4640 (transformation!3286 (rule!5218 token!523))) (toValue!4781 (transformation!3286 (rule!5218 token!523)))))))

(assert (= (and d!523948 res!765283) b!1707176))

(declare-fun m!2110653 () Bool)

(assert (=> d!523948 m!2110653))

(declare-fun m!2110655 () Bool)

(assert (=> b!1707176 m!2110655))

(assert (=> b!1707108 d!523948))

(declare-fun d!523950 () Bool)

(assert (=> d!523950 (= (inv!24021 (tag!3582 (h!24021 rules!3447))) (= (mod (str.len (value!103324 (tag!3582 (h!24021 rules!3447)))) 2) 0))))

(assert (=> b!1707106 d!523950))

(declare-fun d!523952 () Bool)

(declare-fun res!765284 () Bool)

(declare-fun e!1091989 () Bool)

(assert (=> d!523952 (=> (not res!765284) (not e!1091989))))

(assert (=> d!523952 (= res!765284 (semiInverseModEq!1294 (toChars!4640 (transformation!3286 (h!24021 rules!3447))) (toValue!4781 (transformation!3286 (h!24021 rules!3447)))))))

(assert (=> d!523952 (= (inv!24024 (transformation!3286 (h!24021 rules!3447))) e!1091989)))

(declare-fun b!1707177 () Bool)

(assert (=> b!1707177 (= e!1091989 (equivClasses!1235 (toChars!4640 (transformation!3286 (h!24021 rules!3447))) (toValue!4781 (transformation!3286 (h!24021 rules!3447)))))))

(assert (= (and d!523952 res!765284) b!1707177))

(declare-fun m!2110657 () Bool)

(assert (=> d!523952 m!2110657))

(declare-fun m!2110659 () Bool)

(assert (=> b!1707177 m!2110659))

(assert (=> b!1707106 d!523952))

(declare-fun b!1707248 () Bool)

(declare-fun e!1092031 () Bool)

(declare-fun nullable!1381 (Regex!4614) Bool)

(assert (=> b!1707248 (= e!1092031 (nullable!1381 (regex!3286 rule!422)))))

(declare-fun b!1707249 () Bool)

(declare-fun e!1092026 () Bool)

(declare-fun e!1092028 () Bool)

(assert (=> b!1707249 (= e!1092026 e!1092028)))

(declare-fun res!765326 () Bool)

(assert (=> b!1707249 (=> res!765326 e!1092028)))

(declare-fun call!109288 () Bool)

(assert (=> b!1707249 (= res!765326 call!109288)))

(declare-fun b!1707250 () Bool)

(declare-fun e!1092027 () Bool)

(declare-fun head!3817 (List!18689) C!9402)

(assert (=> b!1707250 (= e!1092027 (= (head!3817 lt!652585) (c!279765 (regex!3286 rule!422))))))

(declare-fun b!1707251 () Bool)

(assert (=> b!1707251 (= e!1092028 (not (= (head!3817 lt!652585) (c!279765 (regex!3286 rule!422)))))))

(declare-fun b!1707252 () Bool)

(declare-fun e!1092030 () Bool)

(declare-fun lt!652606 () Bool)

(assert (=> b!1707252 (= e!1092030 (= lt!652606 call!109288))))

(declare-fun b!1707253 () Bool)

(declare-fun e!1092025 () Bool)

(assert (=> b!1707253 (= e!1092025 e!1092026)))

(declare-fun res!765329 () Bool)

(assert (=> b!1707253 (=> (not res!765329) (not e!1092026))))

(assert (=> b!1707253 (= res!765329 (not lt!652606))))

(declare-fun d!523954 () Bool)

(assert (=> d!523954 e!1092030))

(declare-fun c!279785 () Bool)

(assert (=> d!523954 (= c!279785 (is-EmptyExpr!4614 (regex!3286 rule!422)))))

(assert (=> d!523954 (= lt!652606 e!1092031)))

(declare-fun c!279787 () Bool)

(assert (=> d!523954 (= c!279787 (isEmpty!11690 lt!652585))))

(declare-fun validRegex!1855 (Regex!4614) Bool)

(assert (=> d!523954 (validRegex!1855 (regex!3286 rule!422))))

(assert (=> d!523954 (= (matchR!2088 (regex!3286 rule!422) lt!652585) lt!652606)))

(declare-fun b!1707254 () Bool)

(declare-fun res!765332 () Bool)

(assert (=> b!1707254 (=> res!765332 e!1092025)))

(assert (=> b!1707254 (= res!765332 (not (is-ElementMatch!4614 (regex!3286 rule!422))))))

(declare-fun e!1092029 () Bool)

(assert (=> b!1707254 (= e!1092029 e!1092025)))

(declare-fun bm!109283 () Bool)

(assert (=> bm!109283 (= call!109288 (isEmpty!11690 lt!652585))))

(declare-fun b!1707255 () Bool)

(declare-fun res!765325 () Bool)

(assert (=> b!1707255 (=> (not res!765325) (not e!1092027))))

(declare-fun tail!2540 (List!18689) List!18689)

(assert (=> b!1707255 (= res!765325 (isEmpty!11690 (tail!2540 lt!652585)))))

(declare-fun b!1707256 () Bool)

(declare-fun res!765331 () Bool)

(assert (=> b!1707256 (=> res!765331 e!1092025)))

(assert (=> b!1707256 (= res!765331 e!1092027)))

(declare-fun res!765328 () Bool)

(assert (=> b!1707256 (=> (not res!765328) (not e!1092027))))

(assert (=> b!1707256 (= res!765328 lt!652606)))

(declare-fun b!1707257 () Bool)

(assert (=> b!1707257 (= e!1092029 (not lt!652606))))

(declare-fun b!1707258 () Bool)

(declare-fun res!765327 () Bool)

(assert (=> b!1707258 (=> res!765327 e!1092028)))

(assert (=> b!1707258 (= res!765327 (not (isEmpty!11690 (tail!2540 lt!652585))))))

(declare-fun b!1707259 () Bool)

(declare-fun derivativeStep!1149 (Regex!4614 C!9402) Regex!4614)

(assert (=> b!1707259 (= e!1092031 (matchR!2088 (derivativeStep!1149 (regex!3286 rule!422) (head!3817 lt!652585)) (tail!2540 lt!652585)))))

(declare-fun b!1707260 () Bool)

(assert (=> b!1707260 (= e!1092030 e!1092029)))

(declare-fun c!279786 () Bool)

(assert (=> b!1707260 (= c!279786 (is-EmptyLang!4614 (regex!3286 rule!422)))))

(declare-fun b!1707261 () Bool)

(declare-fun res!765330 () Bool)

(assert (=> b!1707261 (=> (not res!765330) (not e!1092027))))

(assert (=> b!1707261 (= res!765330 (not call!109288))))

(assert (= (and d!523954 c!279787) b!1707248))

(assert (= (and d!523954 (not c!279787)) b!1707259))

(assert (= (and d!523954 c!279785) b!1707252))

(assert (= (and d!523954 (not c!279785)) b!1707260))

(assert (= (and b!1707260 c!279786) b!1707257))

(assert (= (and b!1707260 (not c!279786)) b!1707254))

(assert (= (and b!1707254 (not res!765332)) b!1707256))

(assert (= (and b!1707256 res!765328) b!1707261))

(assert (= (and b!1707261 res!765330) b!1707255))

(assert (= (and b!1707255 res!765325) b!1707250))

(assert (= (and b!1707256 (not res!765331)) b!1707253))

(assert (= (and b!1707253 res!765329) b!1707249))

(assert (= (and b!1707249 (not res!765326)) b!1707258))

(assert (= (and b!1707258 (not res!765327)) b!1707251))

(assert (= (or b!1707252 b!1707249 b!1707261) bm!109283))

(declare-fun m!2110677 () Bool)

(assert (=> b!1707255 m!2110677))

(assert (=> b!1707255 m!2110677))

(declare-fun m!2110679 () Bool)

(assert (=> b!1707255 m!2110679))

(assert (=> b!1707258 m!2110677))

(assert (=> b!1707258 m!2110677))

(assert (=> b!1707258 m!2110679))

(declare-fun m!2110681 () Bool)

(assert (=> b!1707250 m!2110681))

(declare-fun m!2110683 () Bool)

(assert (=> d!523954 m!2110683))

(declare-fun m!2110685 () Bool)

(assert (=> d!523954 m!2110685))

(assert (=> b!1707259 m!2110681))

(assert (=> b!1707259 m!2110681))

(declare-fun m!2110687 () Bool)

(assert (=> b!1707259 m!2110687))

(assert (=> b!1707259 m!2110677))

(assert (=> b!1707259 m!2110687))

(assert (=> b!1707259 m!2110677))

(declare-fun m!2110689 () Bool)

(assert (=> b!1707259 m!2110689))

(assert (=> bm!109283 m!2110683))

(declare-fun m!2110691 () Bool)

(assert (=> b!1707248 m!2110691))

(assert (=> b!1707251 m!2110681))

(assert (=> b!1707107 d!523954))

(declare-fun d!523958 () Bool)

(declare-fun res!765341 () Bool)

(declare-fun e!1092036 () Bool)

(assert (=> d!523958 (=> (not res!765341) (not e!1092036))))

(assert (=> d!523958 (= res!765341 (validRegex!1855 (regex!3286 rule!422)))))

(assert (=> d!523958 (= (ruleValid!785 thiss!24550 rule!422) e!1092036)))

(declare-fun b!1707270 () Bool)

(declare-fun res!765342 () Bool)

(assert (=> b!1707270 (=> (not res!765342) (not e!1092036))))

(assert (=> b!1707270 (= res!765342 (not (nullable!1381 (regex!3286 rule!422))))))

(declare-fun b!1707271 () Bool)

(assert (=> b!1707271 (= e!1092036 (not (= (tag!3582 rule!422) (String!21215 ""))))))

(assert (= (and d!523958 res!765341) b!1707270))

(assert (= (and b!1707270 res!765342) b!1707271))

(assert (=> d!523958 m!2110685))

(assert (=> b!1707270 m!2110691))

(assert (=> b!1707107 d!523958))

(declare-fun d!523960 () Bool)

(assert (=> d!523960 (ruleValid!785 thiss!24550 rule!422)))

(declare-fun lt!652609 () Unit!32456)

(declare-fun choose!10365 (LexerInterface!2915 Rule!6372 List!18690) Unit!32456)

(assert (=> d!523960 (= lt!652609 (choose!10365 thiss!24550 rule!422 rules!3447))))

(assert (=> d!523960 (contains!3302 rules!3447 rule!422)))

(assert (=> d!523960 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!309 thiss!24550 rule!422 rules!3447) lt!652609)))

(declare-fun bs!401580 () Bool)

(assert (= bs!401580 d!523960))

(assert (=> bs!401580 m!2110591))

(declare-fun m!2110693 () Bool)

(assert (=> bs!401580 m!2110693))

(assert (=> bs!401580 m!2110595))

(assert (=> b!1707107 d!523960))

(declare-fun d!523962 () Bool)

(assert (=> d!523962 (= (inv!24021 (tag!3582 rule!422)) (= (mod (str.len (value!103324 (tag!3582 rule!422))) 2) 0))))

(assert (=> b!1707096 d!523962))

(declare-fun d!523966 () Bool)

(declare-fun res!765345 () Bool)

(declare-fun e!1092038 () Bool)

(assert (=> d!523966 (=> (not res!765345) (not e!1092038))))

(assert (=> d!523966 (= res!765345 (semiInverseModEq!1294 (toChars!4640 (transformation!3286 rule!422)) (toValue!4781 (transformation!3286 rule!422))))))

(assert (=> d!523966 (= (inv!24024 (transformation!3286 rule!422)) e!1092038)))

(declare-fun b!1707274 () Bool)

(assert (=> b!1707274 (= e!1092038 (equivClasses!1235 (toChars!4640 (transformation!3286 rule!422)) (toValue!4781 (transformation!3286 rule!422))))))

(assert (= (and d!523966 res!765345) b!1707274))

(declare-fun m!2110695 () Bool)

(assert (=> d!523966 m!2110695))

(declare-fun m!2110697 () Bool)

(assert (=> b!1707274 m!2110697))

(assert (=> b!1707096 d!523966))

(declare-fun d!523968 () Bool)

(declare-fun isEmpty!11693 (Option!3610) Bool)

(assert (=> d!523968 (= (isDefined!2955 lt!652582) (not (isEmpty!11693 lt!652582)))))

(declare-fun bs!401581 () Bool)

(assert (= bs!401581 d!523968))

(declare-fun m!2110699 () Bool)

(assert (=> bs!401581 m!2110699))

(assert (=> b!1707110 d!523968))

(declare-fun b!1707301 () Bool)

(declare-fun res!765370 () Bool)

(declare-fun e!1092053 () Bool)

(assert (=> b!1707301 (=> (not res!765370) (not e!1092053))))

(declare-fun lt!652627 () Option!3610)

(declare-fun size!14819 (List!18689) Int)

(assert (=> b!1707301 (= res!765370 (< (size!14819 (_2!10578 (get!5473 lt!652627))) (size!14819 lt!652585)))))

(declare-fun b!1707302 () Bool)

(declare-fun res!765372 () Bool)

(assert (=> b!1707302 (=> (not res!765372) (not e!1092053))))

(assert (=> b!1707302 (= res!765372 (= (list!7507 (charsOf!1935 (_1!10578 (get!5473 lt!652627)))) (originalCharacters!4100 (_1!10578 (get!5473 lt!652627)))))))

(declare-fun b!1707303 () Bool)

(declare-fun e!1092051 () Option!3610)

(declare-fun call!109291 () Option!3610)

(assert (=> b!1707303 (= e!1092051 call!109291)))

(declare-fun d!523970 () Bool)

(declare-fun e!1092052 () Bool)

(assert (=> d!523970 e!1092052))

(declare-fun res!765368 () Bool)

(assert (=> d!523970 (=> res!765368 e!1092052)))

(assert (=> d!523970 (= res!765368 (isEmpty!11693 lt!652627))))

(assert (=> d!523970 (= lt!652627 e!1092051)))

(declare-fun c!279790 () Bool)

(assert (=> d!523970 (= c!279790 (and (is-Cons!18620 rules!3447) (is-Nil!18620 (t!158039 rules!3447))))))

(declare-fun lt!652628 () Unit!32456)

(declare-fun lt!652630 () Unit!32456)

(assert (=> d!523970 (= lt!652628 lt!652630)))

(declare-fun isPrefix!1527 (List!18689 List!18689) Bool)

(assert (=> d!523970 (isPrefix!1527 lt!652585 lt!652585)))

(declare-fun lemmaIsPrefixRefl!1044 (List!18689 List!18689) Unit!32456)

(assert (=> d!523970 (= lt!652630 (lemmaIsPrefixRefl!1044 lt!652585 lt!652585))))

(declare-fun rulesValidInductive!1077 (LexerInterface!2915 List!18690) Bool)

(assert (=> d!523970 (rulesValidInductive!1077 thiss!24550 rules!3447)))

(assert (=> d!523970 (= (maxPrefix!1469 thiss!24550 rules!3447 lt!652585) lt!652627)))

(declare-fun b!1707304 () Bool)

(assert (=> b!1707304 (= e!1092053 (contains!3302 rules!3447 (rule!5218 (_1!10578 (get!5473 lt!652627)))))))

(declare-fun b!1707305 () Bool)

(declare-fun lt!652629 () Option!3610)

(declare-fun lt!652626 () Option!3610)

(assert (=> b!1707305 (= e!1092051 (ite (and (is-None!3609 lt!652629) (is-None!3609 lt!652626)) None!3609 (ite (is-None!3609 lt!652626) lt!652629 (ite (is-None!3609 lt!652629) lt!652626 (ite (>= (size!14817 (_1!10578 (v!24988 lt!652629))) (size!14817 (_1!10578 (v!24988 lt!652626)))) lt!652629 lt!652626)))))))

(assert (=> b!1707305 (= lt!652629 call!109291)))

(assert (=> b!1707305 (= lt!652626 (maxPrefix!1469 thiss!24550 (t!158039 rules!3447) lt!652585))))

(declare-fun b!1707306 () Bool)

(declare-fun res!765374 () Bool)

(assert (=> b!1707306 (=> (not res!765374) (not e!1092053))))

(declare-fun apply!5103 (TokenValueInjection!6412 BalanceConc!12336) TokenValue!3376)

(declare-fun seqFromList!2268 (List!18689) BalanceConc!12336)

(assert (=> b!1707306 (= res!765374 (= (value!103325 (_1!10578 (get!5473 lt!652627))) (apply!5103 (transformation!3286 (rule!5218 (_1!10578 (get!5473 lt!652627)))) (seqFromList!2268 (originalCharacters!4100 (_1!10578 (get!5473 lt!652627)))))))))

(declare-fun b!1707307 () Bool)

(assert (=> b!1707307 (= e!1092052 e!1092053)))

(declare-fun res!765369 () Bool)

(assert (=> b!1707307 (=> (not res!765369) (not e!1092053))))

(assert (=> b!1707307 (= res!765369 (isDefined!2955 lt!652627))))

(declare-fun b!1707308 () Bool)

(declare-fun res!765373 () Bool)

(assert (=> b!1707308 (=> (not res!765373) (not e!1092053))))

(assert (=> b!1707308 (= res!765373 (matchR!2088 (regex!3286 (rule!5218 (_1!10578 (get!5473 lt!652627)))) (list!7507 (charsOf!1935 (_1!10578 (get!5473 lt!652627))))))))

(declare-fun b!1707309 () Bool)

(declare-fun res!765371 () Bool)

(assert (=> b!1707309 (=> (not res!765371) (not e!1092053))))

(declare-fun ++!5107 (List!18689 List!18689) List!18689)

(assert (=> b!1707309 (= res!765371 (= (++!5107 (list!7507 (charsOf!1935 (_1!10578 (get!5473 lt!652627)))) (_2!10578 (get!5473 lt!652627))) lt!652585))))

(declare-fun bm!109286 () Bool)

(declare-fun maxPrefixOneRule!859 (LexerInterface!2915 Rule!6372 List!18689) Option!3610)

(assert (=> bm!109286 (= call!109291 (maxPrefixOneRule!859 thiss!24550 (h!24021 rules!3447) lt!652585))))

(assert (= (and d!523970 c!279790) b!1707303))

(assert (= (and d!523970 (not c!279790)) b!1707305))

(assert (= (or b!1707303 b!1707305) bm!109286))

(assert (= (and d!523970 (not res!765368)) b!1707307))

(assert (= (and b!1707307 res!765369) b!1707302))

(assert (= (and b!1707302 res!765372) b!1707301))

(assert (= (and b!1707301 res!765370) b!1707309))

(assert (= (and b!1707309 res!765371) b!1707306))

(assert (= (and b!1707306 res!765374) b!1707308))

(assert (= (and b!1707308 res!765373) b!1707304))

(declare-fun m!2110717 () Bool)

(assert (=> d!523970 m!2110717))

(declare-fun m!2110719 () Bool)

(assert (=> d!523970 m!2110719))

(declare-fun m!2110721 () Bool)

(assert (=> d!523970 m!2110721))

(declare-fun m!2110723 () Bool)

(assert (=> d!523970 m!2110723))

(declare-fun m!2110725 () Bool)

(assert (=> b!1707308 m!2110725))

(declare-fun m!2110727 () Bool)

(assert (=> b!1707308 m!2110727))

(assert (=> b!1707308 m!2110727))

(declare-fun m!2110729 () Bool)

(assert (=> b!1707308 m!2110729))

(assert (=> b!1707308 m!2110729))

(declare-fun m!2110731 () Bool)

(assert (=> b!1707308 m!2110731))

(assert (=> b!1707302 m!2110725))

(assert (=> b!1707302 m!2110727))

(assert (=> b!1707302 m!2110727))

(assert (=> b!1707302 m!2110729))

(declare-fun m!2110733 () Bool)

(assert (=> bm!109286 m!2110733))

(assert (=> b!1707301 m!2110725))

(declare-fun m!2110735 () Bool)

(assert (=> b!1707301 m!2110735))

(declare-fun m!2110737 () Bool)

(assert (=> b!1707301 m!2110737))

(declare-fun m!2110739 () Bool)

(assert (=> b!1707305 m!2110739))

(declare-fun m!2110741 () Bool)

(assert (=> b!1707307 m!2110741))

(assert (=> b!1707309 m!2110725))

(assert (=> b!1707309 m!2110727))

(assert (=> b!1707309 m!2110727))

(assert (=> b!1707309 m!2110729))

(assert (=> b!1707309 m!2110729))

(declare-fun m!2110743 () Bool)

(assert (=> b!1707309 m!2110743))

(assert (=> b!1707304 m!2110725))

(declare-fun m!2110745 () Bool)

(assert (=> b!1707304 m!2110745))

(assert (=> b!1707306 m!2110725))

(declare-fun m!2110747 () Bool)

(assert (=> b!1707306 m!2110747))

(assert (=> b!1707306 m!2110747))

(declare-fun m!2110749 () Bool)

(assert (=> b!1707306 m!2110749))

(assert (=> b!1707110 d!523970))

(declare-fun d!523988 () Bool)

(declare-fun list!7509 (Conc!6196) List!18689)

(assert (=> d!523988 (= (list!7507 (charsOf!1935 token!523)) (list!7509 (c!279766 (charsOf!1935 token!523))))))

(declare-fun bs!401584 () Bool)

(assert (= bs!401584 d!523988))

(declare-fun m!2110751 () Bool)

(assert (=> bs!401584 m!2110751))

(assert (=> b!1707110 d!523988))

(declare-fun d!523990 () Bool)

(declare-fun lt!652633 () BalanceConc!12336)

(assert (=> d!523990 (= (list!7507 lt!652633) (originalCharacters!4100 token!523))))

(declare-fun dynLambda!8466 (Int TokenValue!3376) BalanceConc!12336)

(assert (=> d!523990 (= lt!652633 (dynLambda!8466 (toChars!4640 (transformation!3286 (rule!5218 token!523))) (value!103325 token!523)))))

(assert (=> d!523990 (= (charsOf!1935 token!523) lt!652633)))

(declare-fun b_lambda!53887 () Bool)

(assert (=> (not b_lambda!53887) (not d!523990)))

(declare-fun tb!100801 () Bool)

(declare-fun t!158050 () Bool)

(assert (=> (and b!1707113 (= (toChars!4640 (transformation!3286 (h!24021 rules!3447))) (toChars!4640 (transformation!3286 (rule!5218 token!523)))) t!158050) tb!100801))

(declare-fun b!1707321 () Bool)

(declare-fun e!1092060 () Bool)

(declare-fun tp!487762 () Bool)

(declare-fun inv!24028 (Conc!6196) Bool)

(assert (=> b!1707321 (= e!1092060 (and (inv!24028 (c!279766 (dynLambda!8466 (toChars!4640 (transformation!3286 (rule!5218 token!523))) (value!103325 token!523)))) tp!487762))))

(declare-fun result!121074 () Bool)

(declare-fun inv!24029 (BalanceConc!12336) Bool)

(assert (=> tb!100801 (= result!121074 (and (inv!24029 (dynLambda!8466 (toChars!4640 (transformation!3286 (rule!5218 token!523))) (value!103325 token!523))) e!1092060))))

(assert (= tb!100801 b!1707321))

(declare-fun m!2110765 () Bool)

(assert (=> b!1707321 m!2110765))

(declare-fun m!2110767 () Bool)

(assert (=> tb!100801 m!2110767))

(assert (=> d!523990 t!158050))

(declare-fun b_and!123491 () Bool)

(assert (= b_and!123463 (and (=> t!158050 result!121074) b_and!123491)))

(declare-fun t!158052 () Bool)

(declare-fun tb!100803 () Bool)

(assert (=> (and b!1707101 (= (toChars!4640 (transformation!3286 rule!422)) (toChars!4640 (transformation!3286 (rule!5218 token!523)))) t!158052) tb!100803))

(declare-fun result!121078 () Bool)

(assert (= result!121078 result!121074))

(assert (=> d!523990 t!158052))

(declare-fun b_and!123493 () Bool)

(assert (= b_and!123467 (and (=> t!158052 result!121078) b_and!123493)))

(declare-fun t!158054 () Bool)

(declare-fun tb!100805 () Bool)

(assert (=> (and b!1707112 (= (toChars!4640 (transformation!3286 (rule!5218 token!523))) (toChars!4640 (transformation!3286 (rule!5218 token!523)))) t!158054) tb!100805))

(declare-fun result!121080 () Bool)

(assert (= result!121080 result!121074))

(assert (=> d!523990 t!158054))

(declare-fun b_and!123495 () Bool)

(assert (= b_and!123471 (and (=> t!158054 result!121080) b_and!123495)))

(declare-fun m!2110769 () Bool)

(assert (=> d!523990 m!2110769))

(declare-fun m!2110771 () Bool)

(assert (=> d!523990 m!2110771))

(assert (=> b!1707110 d!523990))

(declare-fun d!523994 () Bool)

(assert (=> d!523994 (= (isEmpty!11690 suffix!1421) (is-Nil!18619 suffix!1421))))

(assert (=> b!1707111 d!523994))

(declare-fun d!523996 () Bool)

(declare-fun lt!652636 () Bool)

(declare-fun content!2641 (List!18690) (Set Rule!6372))

(assert (=> d!523996 (= lt!652636 (set.member rule!422 (content!2641 rules!3447)))))

(declare-fun e!1092071 () Bool)

(assert (=> d!523996 (= lt!652636 e!1092071)))

(declare-fun res!765383 () Bool)

(assert (=> d!523996 (=> (not res!765383) (not e!1092071))))

(assert (=> d!523996 (= res!765383 (is-Cons!18620 rules!3447))))

(assert (=> d!523996 (= (contains!3302 rules!3447 rule!422) lt!652636)))

(declare-fun b!1707336 () Bool)

(declare-fun e!1092072 () Bool)

(assert (=> b!1707336 (= e!1092071 e!1092072)))

(declare-fun res!765384 () Bool)

(assert (=> b!1707336 (=> res!765384 e!1092072)))

(assert (=> b!1707336 (= res!765384 (= (h!24021 rules!3447) rule!422))))

(declare-fun b!1707337 () Bool)

(assert (=> b!1707337 (= e!1092072 (contains!3302 (t!158039 rules!3447) rule!422))))

(assert (= (and d!523996 res!765383) b!1707336))

(assert (= (and b!1707336 (not res!765384)) b!1707337))

(declare-fun m!2110773 () Bool)

(assert (=> d!523996 m!2110773))

(declare-fun m!2110775 () Bool)

(assert (=> d!523996 m!2110775))

(declare-fun m!2110777 () Bool)

(assert (=> b!1707337 m!2110777))

(assert (=> b!1707100 d!523996))

(declare-fun d!523998 () Bool)

(declare-fun c!279801 () Bool)

(assert (=> d!523998 (= c!279801 (is-IntegerValue!10128 (value!103325 token!523)))))

(declare-fun e!1092082 () Bool)

(assert (=> d!523998 (= (inv!21 (value!103325 token!523)) e!1092082)))

(declare-fun b!1707353 () Bool)

(declare-fun e!1092083 () Bool)

(declare-fun inv!15 (TokenValue!3376) Bool)

(assert (=> b!1707353 (= e!1092083 (inv!15 (value!103325 token!523)))))

(declare-fun b!1707354 () Bool)

(declare-fun res!765388 () Bool)

(assert (=> b!1707354 (=> res!765388 e!1092083)))

(assert (=> b!1707354 (= res!765388 (not (is-IntegerValue!10130 (value!103325 token!523))))))

(declare-fun e!1092084 () Bool)

(assert (=> b!1707354 (= e!1092084 e!1092083)))

(declare-fun b!1707355 () Bool)

(declare-fun inv!16 (TokenValue!3376) Bool)

(assert (=> b!1707355 (= e!1092082 (inv!16 (value!103325 token!523)))))

(declare-fun b!1707356 () Bool)

(declare-fun inv!17 (TokenValue!3376) Bool)

(assert (=> b!1707356 (= e!1092084 (inv!17 (value!103325 token!523)))))

(declare-fun b!1707357 () Bool)

(assert (=> b!1707357 (= e!1092082 e!1092084)))

(declare-fun c!279802 () Bool)

(assert (=> b!1707357 (= c!279802 (is-IntegerValue!10129 (value!103325 token!523)))))

(assert (= (and d!523998 c!279801) b!1707355))

(assert (= (and d!523998 (not c!279801)) b!1707357))

(assert (= (and b!1707357 c!279802) b!1707356))

(assert (= (and b!1707357 (not c!279802)) b!1707354))

(assert (= (and b!1707354 (not res!765388)) b!1707353))

(declare-fun m!2110779 () Bool)

(assert (=> b!1707353 m!2110779))

(declare-fun m!2110781 () Bool)

(assert (=> b!1707355 m!2110781))

(declare-fun m!2110783 () Bool)

(assert (=> b!1707356 m!2110783))

(assert (=> b!1707098 d!523998))

(declare-fun d!524000 () Bool)

(assert (=> d!524000 (= (get!5473 lt!652582) (v!24988 lt!652582))))

(assert (=> b!1707099 d!524000))

(declare-fun d!524004 () Bool)

(declare-fun res!765393 () Bool)

(declare-fun e!1092087 () Bool)

(assert (=> d!524004 (=> (not res!765393) (not e!1092087))))

(assert (=> d!524004 (= res!765393 (not (isEmpty!11690 (originalCharacters!4100 token!523))))))

(assert (=> d!524004 (= (inv!24025 token!523) e!1092087)))

(declare-fun b!1707362 () Bool)

(declare-fun res!765394 () Bool)

(assert (=> b!1707362 (=> (not res!765394) (not e!1092087))))

(assert (=> b!1707362 (= res!765394 (= (originalCharacters!4100 token!523) (list!7507 (dynLambda!8466 (toChars!4640 (transformation!3286 (rule!5218 token!523))) (value!103325 token!523)))))))

(declare-fun b!1707363 () Bool)

(assert (=> b!1707363 (= e!1092087 (= (size!14817 token!523) (size!14819 (originalCharacters!4100 token!523))))))

(assert (= (and d!524004 res!765393) b!1707362))

(assert (= (and b!1707362 res!765394) b!1707363))

(declare-fun b_lambda!53889 () Bool)

(assert (=> (not b_lambda!53889) (not b!1707362)))

(assert (=> b!1707362 t!158050))

(declare-fun b_and!123497 () Bool)

(assert (= b_and!123491 (and (=> t!158050 result!121074) b_and!123497)))

(assert (=> b!1707362 t!158052))

(declare-fun b_and!123499 () Bool)

(assert (= b_and!123493 (and (=> t!158052 result!121078) b_and!123499)))

(assert (=> b!1707362 t!158054))

(declare-fun b_and!123501 () Bool)

(assert (= b_and!123495 (and (=> t!158054 result!121080) b_and!123501)))

(declare-fun m!2110791 () Bool)

(assert (=> d!524004 m!2110791))

(assert (=> b!1707362 m!2110771))

(assert (=> b!1707362 m!2110771))

(declare-fun m!2110793 () Bool)

(assert (=> b!1707362 m!2110793))

(declare-fun m!2110795 () Bool)

(assert (=> b!1707363 m!2110795))

(assert (=> start!166660 d!524004))

(declare-fun d!524008 () Bool)

(assert (=> d!524008 (= (isEmpty!11689 rules!3447) (is-Nil!18620 rules!3447))))

(assert (=> b!1707102 d!524008))

(declare-fun d!524010 () Bool)

(assert (=> d!524010 (= (isEmpty!11690 (_2!10578 lt!652581)) (is-Nil!18619 (_2!10578 lt!652581)))))

(assert (=> b!1707103 d!524010))

(declare-fun d!524012 () Bool)

(declare-fun lt!652639 () Unit!32456)

(declare-fun lemma!305 (List!18690 LexerInterface!2915 List!18690) Unit!32456)

(assert (=> d!524012 (= lt!652639 (lemma!305 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!68722 () Int)

(declare-datatypes ((List!18695 0))(
  ( (Nil!18625) (Cons!18625 (h!24026 Regex!4614) (t!158058 List!18695)) )
))
(declare-fun generalisedUnion!313 (List!18695) Regex!4614)

(declare-fun map!3828 (List!18690 Int) List!18695)

(assert (=> d!524012 (= (rulesRegex!644 thiss!24550 rules!3447) (generalisedUnion!313 (map!3828 rules!3447 lambda!68722)))))

(declare-fun bs!401585 () Bool)

(assert (= bs!401585 d!524012))

(declare-fun m!2110803 () Bool)

(assert (=> bs!401585 m!2110803))

(declare-fun m!2110807 () Bool)

(assert (=> bs!401585 m!2110807))

(assert (=> bs!401585 m!2110807))

(declare-fun m!2110809 () Bool)

(assert (=> bs!401585 m!2110809))

(assert (=> b!1707105 d!524012))

(declare-fun b!1707378 () Bool)

(declare-fun e!1092094 () Bool)

(assert (=> b!1707378 (= e!1092094 tp_is_empty!7471)))

(assert (=> b!1707108 (= tp!487712 e!1092094)))

(declare-fun b!1707381 () Bool)

(declare-fun tp!487776 () Bool)

(declare-fun tp!487774 () Bool)

(assert (=> b!1707381 (= e!1092094 (and tp!487776 tp!487774))))

(declare-fun b!1707379 () Bool)

(declare-fun tp!487775 () Bool)

(declare-fun tp!487773 () Bool)

(assert (=> b!1707379 (= e!1092094 (and tp!487775 tp!487773))))

(declare-fun b!1707380 () Bool)

(declare-fun tp!487777 () Bool)

(assert (=> b!1707380 (= e!1092094 tp!487777)))

(assert (= (and b!1707108 (is-ElementMatch!4614 (regex!3286 (rule!5218 token!523)))) b!1707378))

(assert (= (and b!1707108 (is-Concat!7991 (regex!3286 (rule!5218 token!523)))) b!1707379))

(assert (= (and b!1707108 (is-Star!4614 (regex!3286 (rule!5218 token!523)))) b!1707380))

(assert (= (and b!1707108 (is-Union!4614 (regex!3286 (rule!5218 token!523)))) b!1707381))

(declare-fun b!1707382 () Bool)

(declare-fun e!1092095 () Bool)

(assert (=> b!1707382 (= e!1092095 tp_is_empty!7471)))

(assert (=> b!1707106 (= tp!487711 e!1092095)))

(declare-fun b!1707385 () Bool)

(declare-fun tp!487781 () Bool)

(declare-fun tp!487779 () Bool)

(assert (=> b!1707385 (= e!1092095 (and tp!487781 tp!487779))))

(declare-fun b!1707383 () Bool)

(declare-fun tp!487780 () Bool)

(declare-fun tp!487778 () Bool)

(assert (=> b!1707383 (= e!1092095 (and tp!487780 tp!487778))))

(declare-fun b!1707384 () Bool)

(declare-fun tp!487782 () Bool)

(assert (=> b!1707384 (= e!1092095 tp!487782)))

(assert (= (and b!1707106 (is-ElementMatch!4614 (regex!3286 (h!24021 rules!3447)))) b!1707382))

(assert (= (and b!1707106 (is-Concat!7991 (regex!3286 (h!24021 rules!3447)))) b!1707383))

(assert (= (and b!1707106 (is-Star!4614 (regex!3286 (h!24021 rules!3447)))) b!1707384))

(assert (= (and b!1707106 (is-Union!4614 (regex!3286 (h!24021 rules!3447)))) b!1707385))

(declare-fun b!1707386 () Bool)

(declare-fun e!1092096 () Bool)

(assert (=> b!1707386 (= e!1092096 tp_is_empty!7471)))

(assert (=> b!1707096 (= tp!487719 e!1092096)))

(declare-fun b!1707389 () Bool)

(declare-fun tp!487786 () Bool)

(declare-fun tp!487784 () Bool)

(assert (=> b!1707389 (= e!1092096 (and tp!487786 tp!487784))))

(declare-fun b!1707387 () Bool)

(declare-fun tp!487785 () Bool)

(declare-fun tp!487783 () Bool)

(assert (=> b!1707387 (= e!1092096 (and tp!487785 tp!487783))))

(declare-fun b!1707388 () Bool)

(declare-fun tp!487787 () Bool)

(assert (=> b!1707388 (= e!1092096 tp!487787)))

(assert (= (and b!1707096 (is-ElementMatch!4614 (regex!3286 rule!422))) b!1707386))

(assert (= (and b!1707096 (is-Concat!7991 (regex!3286 rule!422))) b!1707387))

(assert (= (and b!1707096 (is-Star!4614 (regex!3286 rule!422))) b!1707388))

(assert (= (and b!1707096 (is-Union!4614 (regex!3286 rule!422))) b!1707389))

(declare-fun b!1707400 () Bool)

(declare-fun b_free!46199 () Bool)

(declare-fun b_next!46903 () Bool)

(assert (=> b!1707400 (= b_free!46199 (not b_next!46903))))

(declare-fun tp!487797 () Bool)

(declare-fun b_and!123503 () Bool)

(assert (=> b!1707400 (= tp!487797 b_and!123503)))

(declare-fun b_free!46201 () Bool)

(declare-fun b_next!46905 () Bool)

(assert (=> b!1707400 (= b_free!46201 (not b_next!46905))))

(declare-fun tb!100807 () Bool)

(declare-fun t!158056 () Bool)

(assert (=> (and b!1707400 (= (toChars!4640 (transformation!3286 (h!24021 (t!158039 rules!3447)))) (toChars!4640 (transformation!3286 (rule!5218 token!523)))) t!158056) tb!100807))

(declare-fun result!121086 () Bool)

(assert (= result!121086 result!121074))

(assert (=> d!523990 t!158056))

(assert (=> b!1707362 t!158056))

(declare-fun b_and!123505 () Bool)

(declare-fun tp!487798 () Bool)

(assert (=> b!1707400 (= tp!487798 (and (=> t!158056 result!121086) b_and!123505))))

(declare-fun e!1092108 () Bool)

(assert (=> b!1707400 (= e!1092108 (and tp!487797 tp!487798))))

(declare-fun b!1707399 () Bool)

(declare-fun tp!487796 () Bool)

(declare-fun e!1092105 () Bool)

(assert (=> b!1707399 (= e!1092105 (and tp!487796 (inv!24021 (tag!3582 (h!24021 (t!158039 rules!3447)))) (inv!24024 (transformation!3286 (h!24021 (t!158039 rules!3447)))) e!1092108))))

(declare-fun b!1707398 () Bool)

(declare-fun e!1092106 () Bool)

(declare-fun tp!487799 () Bool)

(assert (=> b!1707398 (= e!1092106 (and e!1092105 tp!487799))))

(assert (=> b!1707095 (= tp!487716 e!1092106)))

(assert (= b!1707399 b!1707400))

(assert (= b!1707398 b!1707399))

(assert (= (and b!1707095 (is-Cons!18620 (t!158039 rules!3447))) b!1707398))

(declare-fun m!2110813 () Bool)

(assert (=> b!1707399 m!2110813))

(declare-fun m!2110815 () Bool)

(assert (=> b!1707399 m!2110815))

(declare-fun b!1707405 () Bool)

(declare-fun e!1092111 () Bool)

(declare-fun tp!487802 () Bool)

(assert (=> b!1707405 (= e!1092111 (and tp_is_empty!7471 tp!487802))))

(assert (=> b!1707109 (= tp!487717 e!1092111)))

(assert (= (and b!1707109 (is-Cons!18619 (t!158038 suffix!1421))) b!1707405))

(declare-fun b!1707406 () Bool)

(declare-fun e!1092112 () Bool)

(declare-fun tp!487803 () Bool)

(assert (=> b!1707406 (= e!1092112 (and tp_is_empty!7471 tp!487803))))

(assert (=> b!1707098 (= tp!487718 e!1092112)))

(assert (= (and b!1707098 (is-Cons!18619 (originalCharacters!4100 token!523))) b!1707406))

(declare-fun b_lambda!53891 () Bool)

(assert (= b_lambda!53889 (or (and b!1707113 b_free!46177 (= (toChars!4640 (transformation!3286 (h!24021 rules!3447))) (toChars!4640 (transformation!3286 (rule!5218 token!523))))) (and b!1707101 b_free!46181 (= (toChars!4640 (transformation!3286 rule!422)) (toChars!4640 (transformation!3286 (rule!5218 token!523))))) (and b!1707112 b_free!46185) (and b!1707400 b_free!46201 (= (toChars!4640 (transformation!3286 (h!24021 (t!158039 rules!3447)))) (toChars!4640 (transformation!3286 (rule!5218 token!523))))) b_lambda!53891)))

(declare-fun b_lambda!53893 () Bool)

(assert (= b_lambda!53887 (or (and b!1707113 b_free!46177 (= (toChars!4640 (transformation!3286 (h!24021 rules!3447))) (toChars!4640 (transformation!3286 (rule!5218 token!523))))) (and b!1707101 b_free!46181 (= (toChars!4640 (transformation!3286 rule!422)) (toChars!4640 (transformation!3286 (rule!5218 token!523))))) (and b!1707112 b_free!46185) (and b!1707400 b_free!46201 (= (toChars!4640 (transformation!3286 (h!24021 (t!158039 rules!3447)))) (toChars!4640 (transformation!3286 (rule!5218 token!523))))) b_lambda!53893)))

(push 1)

(assert (not b!1707258))

(assert (not b!1707309))

(assert (not b!1707389))

(assert (not b!1707270))

(assert (not bm!109286))

(assert (not b!1707383))

(assert (not d!524012))

(assert (not b_next!46885))

(assert (not b!1707385))

(assert (not d!523988))

(assert (not b!1707399))

(assert (not d!523960))

(assert (not d!524004))

(assert b_and!123505)

(assert (not d!523966))

(assert b_and!123497)

(assert b_and!123469)

(assert (not b!1707302))

(assert (not b_next!46889))

(assert (not b!1707307))

(assert (not d!523942))

(assert (not b!1707337))

(assert (not b!1707177))

(assert (not d!523990))

(assert (not b!1707176))

(assert (not b!1707355))

(assert b_and!123503)

(assert (not b_next!46881))

(assert (not b_next!46887))

(assert b_and!123461)

(assert (not b!1707353))

(assert (not b!1707255))

(assert (not b!1707380))

(assert (not b!1707363))

(assert (not b_lambda!53893))

(assert (not b!1707379))

(assert (not b!1707321))

(assert (not b!1707362))

(assert (not d!523970))

(assert (not b_next!46879))

(assert (not d!523952))

(assert (not b!1707301))

(assert b_and!123465)

(assert (not b!1707387))

(assert (not d!523948))

(assert (not b_next!46883))

(assert (not b!1707305))

(assert (not b_next!46903))

(assert (not b!1707406))

(assert (not b!1707250))

(assert (not b!1707384))

(assert (not b!1707405))

(assert (not b!1707248))

(assert (not b!1707356))

(assert (not b!1707304))

(assert (not b!1707306))

(assert (not d!523958))

(assert (not b!1707259))

(assert (not b!1707274))

(assert (not b!1707381))

(assert (not tb!100801))

(assert (not b!1707308))

(assert (not b!1707173))

(assert (not b_next!46905))

(assert (not d!523954))

(assert (not bm!109283))

(assert tp_is_empty!7471)

(assert (not b!1707388))

(assert (not b!1707251))

(assert (not b_lambda!53891))

(assert (not d!523968))

(assert (not d!523996))

(assert b_and!123499)

(assert b_and!123501)

(assert (not b!1707398))

(check-sat)

(pop 1)

(push 1)

(assert b_and!123505)

(assert (not b_next!46889))

(assert (not b_next!46879))

(assert b_and!123465)

(assert (not b_next!46883))

(assert (not b_next!46903))

(assert (not b_next!46905))

(assert (not b_next!46885))

(assert b_and!123497)

(assert b_and!123469)

(assert b_and!123503)

(assert (not b_next!46881))

(assert (not b_next!46887))

(assert b_and!123461)

(assert b_and!123499)

(assert b_and!123501)

(check-sat)

(pop 1)

