; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394994 () Bool)

(assert start!394994)

(declare-fun b!4150513 () Bool)

(declare-fun b_free!118603 () Bool)

(declare-fun b_next!119307 () Bool)

(assert (=> b!4150513 (= b_free!118603 (not b_next!119307))))

(declare-fun tp!1265138 () Bool)

(declare-fun b_and!322821 () Bool)

(assert (=> b!4150513 (= tp!1265138 b_and!322821)))

(declare-fun b_free!118605 () Bool)

(declare-fun b_next!119309 () Bool)

(assert (=> b!4150513 (= b_free!118605 (not b_next!119309))))

(declare-fun tp!1265137 () Bool)

(declare-fun b_and!322823 () Bool)

(assert (=> b!4150513 (= tp!1265137 b_and!322823)))

(declare-fun b!4150528 () Bool)

(declare-fun b_free!118607 () Bool)

(declare-fun b_next!119311 () Bool)

(assert (=> b!4150528 (= b_free!118607 (not b_next!119311))))

(declare-fun tp!1265132 () Bool)

(declare-fun b_and!322825 () Bool)

(assert (=> b!4150528 (= tp!1265132 b_and!322825)))

(declare-fun b_free!118609 () Bool)

(declare-fun b_next!119313 () Bool)

(assert (=> b!4150528 (= b_free!118609 (not b_next!119313))))

(declare-fun tp!1265127 () Bool)

(declare-fun b_and!322827 () Bool)

(assert (=> b!4150528 (= tp!1265127 b_and!322827)))

(declare-fun b!4150527 () Bool)

(declare-fun b_free!118611 () Bool)

(declare-fun b_next!119315 () Bool)

(assert (=> b!4150527 (= b_free!118611 (not b_next!119315))))

(declare-fun tp!1265129 () Bool)

(declare-fun b_and!322829 () Bool)

(assert (=> b!4150527 (= tp!1265129 b_and!322829)))

(declare-fun b_free!118613 () Bool)

(declare-fun b_next!119317 () Bool)

(assert (=> b!4150527 (= b_free!118613 (not b_next!119317))))

(declare-fun tp!1265130 () Bool)

(declare-fun b_and!322831 () Bool)

(assert (=> b!4150527 (= tp!1265130 b_and!322831)))

(declare-fun e!2575197 () Bool)

(assert (=> b!4150513 (= e!2575197 (and tp!1265138 tp!1265137))))

(declare-fun b!4150514 () Bool)

(declare-fun e!2575198 () Bool)

(declare-fun e!2575187 () Bool)

(assert (=> b!4150514 (= e!2575198 (not e!2575187))))

(declare-fun res!1699501 () Bool)

(assert (=> b!4150514 (=> res!1699501 e!2575187)))

(declare-datatypes ((List!45203 0))(
  ( (Nil!45079) (Cons!45079 (h!50499 (_ BitVec 16)) (t!343106 List!45203)) )
))
(declare-datatypes ((TokenValue!7654 0))(
  ( (FloatLiteralValue!15308 (text!54023 List!45203)) (TokenValueExt!7653 (__x!27525 Int)) (Broken!38270 (value!232112 List!45203)) (Object!7777) (End!7654) (Def!7654) (Underscore!7654) (Match!7654) (Else!7654) (Error!7654) (Case!7654) (If!7654) (Extends!7654) (Abstract!7654) (Class!7654) (Val!7654) (DelimiterValue!15308 (del!7714 List!45203)) (KeywordValue!7660 (value!232113 List!45203)) (CommentValue!15308 (value!232114 List!45203)) (WhitespaceValue!15308 (value!232115 List!45203)) (IndentationValue!7654 (value!232116 List!45203)) (String!52019) (Int32!7654) (Broken!38271 (value!232117 List!45203)) (Boolean!7655) (Unit!64354) (OperatorValue!7657 (op!7714 List!45203)) (IdentifierValue!15308 (value!232118 List!45203)) (IdentifierValue!15309 (value!232119 List!45203)) (WhitespaceValue!15309 (value!232120 List!45203)) (True!15308) (False!15308) (Broken!38272 (value!232121 List!45203)) (Broken!38273 (value!232122 List!45203)) (True!15309) (RightBrace!7654) (RightBracket!7654) (Colon!7654) (Null!7654) (Comma!7654) (LeftBracket!7654) (False!15309) (LeftBrace!7654) (ImaginaryLiteralValue!7654 (text!54024 List!45203)) (StringLiteralValue!22962 (value!232123 List!45203)) (EOFValue!7654 (value!232124 List!45203)) (IdentValue!7654 (value!232125 List!45203)) (DelimiterValue!15309 (value!232126 List!45203)) (DedentValue!7654 (value!232127 List!45203)) (NewLineValue!7654 (value!232128 List!45203)) (IntegerValue!22962 (value!232129 (_ BitVec 32)) (text!54025 List!45203)) (IntegerValue!22963 (value!232130 Int) (text!54026 List!45203)) (Times!7654) (Or!7654) (Equal!7654) (Minus!7654) (Broken!38274 (value!232131 List!45203)) (And!7654) (Div!7654) (LessEqual!7654) (Mod!7654) (Concat!19983) (Not!7654) (Plus!7654) (SpaceValue!7654 (value!232132 List!45203)) (IntegerValue!22964 (value!232133 Int) (text!54027 List!45203)) (StringLiteralValue!22963 (text!54028 List!45203)) (FloatLiteralValue!15309 (text!54029 List!45203)) (BytesLiteralValue!7654 (value!232134 List!45203)) (CommentValue!15309 (value!232135 List!45203)) (StringLiteralValue!22964 (value!232136 List!45203)) (ErrorTokenValue!7654 (msg!7715 List!45203)) )
))
(declare-datatypes ((C!24844 0))(
  ( (C!24845 (val!14532 Int)) )
))
(declare-datatypes ((List!45204 0))(
  ( (Nil!45080) (Cons!45080 (h!50500 C!24844) (t!343107 List!45204)) )
))
(declare-datatypes ((IArray!27275 0))(
  ( (IArray!27276 (innerList!13695 List!45204)) )
))
(declare-datatypes ((Conc!13635 0))(
  ( (Node!13635 (left!33753 Conc!13635) (right!34083 Conc!13635) (csize!27500 Int) (cheight!13846 Int)) (Leaf!21062 (xs!16941 IArray!27275) (csize!27501 Int)) (Empty!13635) )
))
(declare-datatypes ((BalanceConc!26864 0))(
  ( (BalanceConc!26865 (c!710870 Conc!13635)) )
))
(declare-datatypes ((TokenValueInjection!14736 0))(
  ( (TokenValueInjection!14737 (toValue!10088 Int) (toChars!9947 Int)) )
))
(declare-datatypes ((Regex!12329 0))(
  ( (ElementMatch!12329 (c!710871 C!24844)) (Concat!19984 (regOne!25170 Regex!12329) (regTwo!25170 Regex!12329)) (EmptyExpr!12329) (Star!12329 (reg!12658 Regex!12329)) (EmptyLang!12329) (Union!12329 (regOne!25171 Regex!12329) (regTwo!25171 Regex!12329)) )
))
(declare-datatypes ((String!52020 0))(
  ( (String!52021 (value!232137 String)) )
))
(declare-datatypes ((Rule!14648 0))(
  ( (Rule!14649 (regex!7424 Regex!12329) (tag!8284 String!52020) (isSeparator!7424 Bool) (transformation!7424 TokenValueInjection!14736)) )
))
(declare-datatypes ((List!45205 0))(
  ( (Nil!45081) (Cons!45081 (h!50501 Rule!14648) (t!343108 List!45205)) )
))
(declare-fun rules!3756 () List!45205)

(declare-fun rBis!149 () Rule!14648)

(get-info :version)

(assert (=> b!4150514 (= res!1699501 (or (and ((_ is Cons!45081) rules!3756) (= (h!50501 rules!3756) rBis!149)) (not ((_ is Cons!45081) rules!3756)) (= (h!50501 rules!3756) rBis!149)))))

(declare-datatypes ((Unit!64355 0))(
  ( (Unit!64356) )
))
(declare-fun lt!1480279 () Unit!64355)

(declare-datatypes ((LexerInterface!7013 0))(
  ( (LexerInterfaceExt!7010 (__x!27526 Int)) (Lexer!7011) )
))
(declare-fun thiss!25645 () LexerInterface!7013)

(declare-fun r!4008 () Rule!14648)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2270 (LexerInterface!7013 Rule!14648 List!45205) Unit!64355)

(assert (=> b!4150514 (= lt!1480279 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2270 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3230 (LexerInterface!7013 Rule!14648) Bool)

(assert (=> b!4150514 (ruleValid!3230 thiss!25645 rBis!149)))

(declare-fun lt!1480281 () Unit!64355)

(assert (=> b!4150514 (= lt!1480281 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2270 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4150515 () Bool)

(declare-fun e!2575200 () Bool)

(declare-fun tp_is_empty!21581 () Bool)

(declare-fun tp!1265131 () Bool)

(assert (=> b!4150515 (= e!2575200 (and tp_is_empty!21581 tp!1265131))))

(declare-fun b!4150516 () Bool)

(declare-fun res!1699502 () Bool)

(declare-fun e!2575194 () Bool)

(assert (=> b!4150516 (=> (not res!1699502) (not e!2575194))))

(declare-fun p!2912 () List!45204)

(declare-fun isEmpty!26914 (List!45204) Bool)

(assert (=> b!4150516 (= res!1699502 (not (isEmpty!26914 p!2912)))))

(declare-fun b!4150517 () Bool)

(declare-fun res!1699506 () Bool)

(assert (=> b!4150517 (=> (not res!1699506) (not e!2575198))))

(declare-fun getIndex!770 (List!45205 Rule!14648) Int)

(assert (=> b!4150517 (= res!1699506 (< (getIndex!770 rules!3756 rBis!149) (getIndex!770 rules!3756 r!4008)))))

(declare-fun b!4150518 () Bool)

(declare-fun res!1699499 () Bool)

(assert (=> b!4150518 (=> (not res!1699499) (not e!2575194))))

(declare-fun input!3238 () List!45204)

(declare-fun isPrefix!4359 (List!45204 List!45204) Bool)

(assert (=> b!4150518 (= res!1699499 (isPrefix!4359 p!2912 input!3238))))

(declare-fun b!4150519 () Bool)

(declare-fun res!1699505 () Bool)

(assert (=> b!4150519 (=> (not res!1699505) (not e!2575194))))

(declare-fun isEmpty!26915 (List!45205) Bool)

(assert (=> b!4150519 (= res!1699505 (not (isEmpty!26915 rules!3756)))))

(declare-fun b!4150520 () Bool)

(declare-fun res!1699503 () Bool)

(assert (=> b!4150520 (=> (not res!1699503) (not e!2575198))))

(declare-fun matchR!6158 (Regex!12329 List!45204) Bool)

(assert (=> b!4150520 (= res!1699503 (matchR!6158 (regex!7424 r!4008) p!2912))))

(declare-fun b!4150521 () Bool)

(declare-fun res!1699500 () Bool)

(assert (=> b!4150521 (=> (not res!1699500) (not e!2575194))))

(declare-fun rulesInvariant!6310 (LexerInterface!7013 List!45205) Bool)

(assert (=> b!4150521 (= res!1699500 (rulesInvariant!6310 thiss!25645 rules!3756))))

(declare-fun b!4150522 () Bool)

(declare-fun e!2575193 () Bool)

(declare-datatypes ((Token!13778 0))(
  ( (Token!13779 (value!232138 TokenValue!7654) (rule!10560 Rule!14648) (size!33419 Int) (originalCharacters!7920 List!45204)) )
))
(declare-datatypes ((tuple2!43442 0))(
  ( (tuple2!43443 (_1!24855 Token!13778) (_2!24855 List!45204)) )
))
(declare-datatypes ((Option!9730 0))(
  ( (None!9729) (Some!9729 (v!40393 tuple2!43442)) )
))
(declare-fun lt!1480284 () Option!9730)

(declare-fun lt!1480285 () Option!9730)

(assert (=> b!4150522 (= e!2575193 (= lt!1480284 lt!1480285))))

(declare-fun res!1699498 () Bool)

(assert (=> start!394994 (=> (not res!1699498) (not e!2575194))))

(assert (=> start!394994 (= res!1699498 ((_ is Lexer!7011) thiss!25645))))

(assert (=> start!394994 e!2575194))

(declare-fun e!2575191 () Bool)

(assert (=> start!394994 e!2575191))

(declare-fun e!2575195 () Bool)

(assert (=> start!394994 e!2575195))

(assert (=> start!394994 true))

(declare-fun e!2575189 () Bool)

(assert (=> start!394994 e!2575189))

(assert (=> start!394994 e!2575200))

(declare-fun e!2575196 () Bool)

(assert (=> start!394994 e!2575196))

(declare-fun b!4150523 () Bool)

(declare-fun tp!1265133 () Bool)

(declare-fun inv!59689 (String!52020) Bool)

(declare-fun inv!59691 (TokenValueInjection!14736) Bool)

(assert (=> b!4150523 (= e!2575196 (and tp!1265133 (inv!59689 (tag!8284 rBis!149)) (inv!59691 (transformation!7424 rBis!149)) e!2575197))))

(declare-fun b!4150524 () Bool)

(declare-fun tp!1265135 () Bool)

(assert (=> b!4150524 (= e!2575195 (and tp_is_empty!21581 tp!1265135))))

(declare-fun e!2575190 () Bool)

(declare-fun tp!1265136 () Bool)

(declare-fun e!2575188 () Bool)

(declare-fun b!4150525 () Bool)

(assert (=> b!4150525 (= e!2575188 (and tp!1265136 (inv!59689 (tag!8284 (h!50501 rules!3756))) (inv!59691 (transformation!7424 (h!50501 rules!3756))) e!2575190))))

(declare-fun b!4150526 () Bool)

(assert (=> b!4150526 (= e!2575194 e!2575198)))

(declare-fun res!1699507 () Bool)

(assert (=> b!4150526 (=> (not res!1699507) (not e!2575198))))

(declare-fun maxPrefix!4203 (LexerInterface!7013 List!45205 List!45204) Option!9730)

(assert (=> b!4150526 (= res!1699507 (= (maxPrefix!4203 thiss!25645 rules!3756 input!3238) lt!1480285))))

(declare-fun lt!1480282 () BalanceConc!26864)

(declare-fun apply!10497 (TokenValueInjection!14736 BalanceConc!26864) TokenValue!7654)

(declare-fun size!33420 (List!45204) Int)

(declare-fun getSuffix!2686 (List!45204 List!45204) List!45204)

(assert (=> b!4150526 (= lt!1480285 (Some!9729 (tuple2!43443 (Token!13779 (apply!10497 (transformation!7424 r!4008) lt!1480282) r!4008 (size!33420 p!2912) p!2912) (getSuffix!2686 input!3238 p!2912))))))

(declare-fun lt!1480286 () Unit!64355)

(declare-fun lemmaSemiInverse!2282 (TokenValueInjection!14736 BalanceConc!26864) Unit!64355)

(assert (=> b!4150526 (= lt!1480286 (lemmaSemiInverse!2282 (transformation!7424 r!4008) lt!1480282))))

(declare-fun seqFromList!5541 (List!45204) BalanceConc!26864)

(assert (=> b!4150526 (= lt!1480282 (seqFromList!5541 p!2912))))

(declare-fun e!2575199 () Bool)

(assert (=> b!4150527 (= e!2575199 (and tp!1265129 tp!1265130))))

(assert (=> b!4150528 (= e!2575190 (and tp!1265132 tp!1265127))))

(declare-fun b!4150529 () Bool)

(assert (=> b!4150529 (= e!2575187 e!2575193)))

(declare-fun res!1699508 () Bool)

(assert (=> b!4150529 (=> res!1699508 e!2575193)))

(assert (=> b!4150529 (= res!1699508 (isEmpty!26915 (t!343108 rules!3756)))))

(assert (=> b!4150529 (not (= (tag!8284 (h!50501 rules!3756)) (tag!8284 r!4008)))))

(declare-fun lt!1480280 () Unit!64355)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!72 (LexerInterface!7013 List!45205 Rule!14648 Rule!14648) Unit!64355)

(assert (=> b!4150529 (= lt!1480280 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!72 thiss!25645 rules!3756 (h!50501 rules!3756) r!4008))))

(assert (=> b!4150529 (rulesInvariant!6310 thiss!25645 (t!343108 rules!3756))))

(declare-fun lt!1480278 () Unit!64355)

(declare-fun lemmaInvariantOnRulesThenOnTail!836 (LexerInterface!7013 Rule!14648 List!45205) Unit!64355)

(assert (=> b!4150529 (= lt!1480278 (lemmaInvariantOnRulesThenOnTail!836 thiss!25645 (h!50501 rules!3756) (t!343108 rules!3756)))))

(assert (=> b!4150529 (= lt!1480284 (maxPrefix!4203 thiss!25645 (t!343108 rules!3756) input!3238))))

(declare-fun lt!1480283 () Option!9730)

(declare-fun maxPrefixOneRule!3142 (LexerInterface!7013 Rule!14648 List!45204) Option!9730)

(assert (=> b!4150529 (= lt!1480283 (maxPrefixOneRule!3142 thiss!25645 (h!50501 rules!3756) input!3238))))

(declare-fun b!4150530 () Bool)

(declare-fun res!1699504 () Bool)

(assert (=> b!4150530 (=> (not res!1699504) (not e!2575194))))

(declare-fun contains!9110 (List!45205 Rule!14648) Bool)

(assert (=> b!4150530 (= res!1699504 (contains!9110 rules!3756 r!4008))))

(declare-fun b!4150531 () Bool)

(declare-fun tp!1265134 () Bool)

(assert (=> b!4150531 (= e!2575191 (and e!2575188 tp!1265134))))

(declare-fun b!4150532 () Bool)

(declare-fun res!1699509 () Bool)

(assert (=> b!4150532 (=> (not res!1699509) (not e!2575198))))

(assert (=> b!4150532 (= res!1699509 (ruleValid!3230 thiss!25645 r!4008))))

(declare-fun b!4150533 () Bool)

(declare-fun res!1699496 () Bool)

(assert (=> b!4150533 (=> res!1699496 e!2575187)))

(assert (=> b!4150533 (= res!1699496 (not (contains!9110 (t!343108 rules!3756) rBis!149)))))

(declare-fun tp!1265128 () Bool)

(declare-fun b!4150534 () Bool)

(assert (=> b!4150534 (= e!2575189 (and tp!1265128 (inv!59689 (tag!8284 r!4008)) (inv!59691 (transformation!7424 r!4008)) e!2575199))))

(declare-fun b!4150535 () Bool)

(declare-fun res!1699497 () Bool)

(assert (=> b!4150535 (=> res!1699497 e!2575187)))

(assert (=> b!4150535 (= res!1699497 (not (contains!9110 (t!343108 rules!3756) r!4008)))))

(declare-fun b!4150536 () Bool)

(declare-fun res!1699510 () Bool)

(assert (=> b!4150536 (=> (not res!1699510) (not e!2575194))))

(assert (=> b!4150536 (= res!1699510 (contains!9110 rules!3756 rBis!149))))

(assert (= (and start!394994 res!1699498) b!4150518))

(assert (= (and b!4150518 res!1699499) b!4150519))

(assert (= (and b!4150519 res!1699505) b!4150521))

(assert (= (and b!4150521 res!1699500) b!4150530))

(assert (= (and b!4150530 res!1699504) b!4150536))

(assert (= (and b!4150536 res!1699510) b!4150516))

(assert (= (and b!4150516 res!1699502) b!4150526))

(assert (= (and b!4150526 res!1699507) b!4150520))

(assert (= (and b!4150520 res!1699503) b!4150517))

(assert (= (and b!4150517 res!1699506) b!4150532))

(assert (= (and b!4150532 res!1699509) b!4150514))

(assert (= (and b!4150514 (not res!1699501)) b!4150535))

(assert (= (and b!4150535 (not res!1699497)) b!4150533))

(assert (= (and b!4150533 (not res!1699496)) b!4150529))

(assert (= (and b!4150529 (not res!1699508)) b!4150522))

(assert (= b!4150525 b!4150528))

(assert (= b!4150531 b!4150525))

(assert (= (and start!394994 ((_ is Cons!45081) rules!3756)) b!4150531))

(assert (= (and start!394994 ((_ is Cons!45080) p!2912)) b!4150524))

(assert (= b!4150534 b!4150527))

(assert (= start!394994 b!4150534))

(assert (= (and start!394994 ((_ is Cons!45080) input!3238)) b!4150515))

(assert (= b!4150523 b!4150513))

(assert (= start!394994 b!4150523))

(declare-fun m!4746127 () Bool)

(assert (=> b!4150534 m!4746127))

(declare-fun m!4746129 () Bool)

(assert (=> b!4150534 m!4746129))

(declare-fun m!4746131 () Bool)

(assert (=> b!4150525 m!4746131))

(declare-fun m!4746133 () Bool)

(assert (=> b!4150525 m!4746133))

(declare-fun m!4746135 () Bool)

(assert (=> b!4150514 m!4746135))

(declare-fun m!4746137 () Bool)

(assert (=> b!4150514 m!4746137))

(declare-fun m!4746139 () Bool)

(assert (=> b!4150514 m!4746139))

(declare-fun m!4746141 () Bool)

(assert (=> b!4150519 m!4746141))

(declare-fun m!4746143 () Bool)

(assert (=> b!4150518 m!4746143))

(declare-fun m!4746145 () Bool)

(assert (=> b!4150532 m!4746145))

(declare-fun m!4746147 () Bool)

(assert (=> b!4150530 m!4746147))

(declare-fun m!4746149 () Bool)

(assert (=> b!4150517 m!4746149))

(declare-fun m!4746151 () Bool)

(assert (=> b!4150517 m!4746151))

(declare-fun m!4746153 () Bool)

(assert (=> b!4150535 m!4746153))

(declare-fun m!4746155 () Bool)

(assert (=> b!4150536 m!4746155))

(declare-fun m!4746157 () Bool)

(assert (=> b!4150521 m!4746157))

(declare-fun m!4746159 () Bool)

(assert (=> b!4150516 m!4746159))

(declare-fun m!4746161 () Bool)

(assert (=> b!4150533 m!4746161))

(declare-fun m!4746163 () Bool)

(assert (=> b!4150526 m!4746163))

(declare-fun m!4746165 () Bool)

(assert (=> b!4150526 m!4746165))

(declare-fun m!4746167 () Bool)

(assert (=> b!4150526 m!4746167))

(declare-fun m!4746169 () Bool)

(assert (=> b!4150526 m!4746169))

(declare-fun m!4746171 () Bool)

(assert (=> b!4150526 m!4746171))

(declare-fun m!4746173 () Bool)

(assert (=> b!4150526 m!4746173))

(declare-fun m!4746175 () Bool)

(assert (=> b!4150523 m!4746175))

(declare-fun m!4746177 () Bool)

(assert (=> b!4150523 m!4746177))

(declare-fun m!4746179 () Bool)

(assert (=> b!4150529 m!4746179))

(declare-fun m!4746181 () Bool)

(assert (=> b!4150529 m!4746181))

(declare-fun m!4746183 () Bool)

(assert (=> b!4150529 m!4746183))

(declare-fun m!4746185 () Bool)

(assert (=> b!4150529 m!4746185))

(declare-fun m!4746187 () Bool)

(assert (=> b!4150529 m!4746187))

(declare-fun m!4746189 () Bool)

(assert (=> b!4150529 m!4746189))

(declare-fun m!4746191 () Bool)

(assert (=> b!4150520 m!4746191))

(check-sat b_and!322823 (not b!4150525) (not b!4150514) (not b!4150520) (not b!4150526) (not b!4150524) tp_is_empty!21581 (not b_next!119313) (not b!4150531) (not b_next!119307) (not b!4150533) b_and!322827 (not b!4150523) (not b_next!119311) b_and!322829 (not b!4150515) (not b!4150535) (not b_next!119317) b_and!322831 (not b!4150521) (not b!4150519) (not b!4150534) b_and!322821 (not b_next!119315) (not b!4150530) (not b_next!119309) (not b!4150517) (not b!4150536) b_and!322825 (not b!4150532) (not b!4150518) (not b!4150516) (not b!4150529))
(check-sat (not b_next!119307) b_and!322827 b_and!322823 b_and!322821 (not b_next!119315) (not b_next!119309) b_and!322825 (not b_next!119313) (not b_next!119311) b_and!322829 (not b_next!119317) b_and!322831)
(get-model)

(declare-fun b!4150566 () Bool)

(declare-fun e!2575219 () Bool)

(declare-fun derivativeStep!3742 (Regex!12329 C!24844) Regex!12329)

(declare-fun head!8761 (List!45204) C!24844)

(declare-fun tail!6602 (List!45204) List!45204)

(assert (=> b!4150566 (= e!2575219 (matchR!6158 (derivativeStep!3742 (regex!7424 r!4008) (head!8761 p!2912)) (tail!6602 p!2912)))))

(declare-fun b!4150567 () Bool)

(declare-fun e!2575216 () Bool)

(assert (=> b!4150567 (= e!2575216 (not (= (head!8761 p!2912) (c!710871 (regex!7424 r!4008)))))))

(declare-fun b!4150568 () Bool)

(declare-fun e!2575218 () Bool)

(assert (=> b!4150568 (= e!2575218 e!2575216)))

(declare-fun res!1699539 () Bool)

(assert (=> b!4150568 (=> res!1699539 e!2575216)))

(declare-fun call!290727 () Bool)

(assert (=> b!4150568 (= res!1699539 call!290727)))

(declare-fun b!4150569 () Bool)

(declare-fun res!1699544 () Bool)

(declare-fun e!2575217 () Bool)

(assert (=> b!4150569 (=> res!1699544 e!2575217)))

(declare-fun e!2575221 () Bool)

(assert (=> b!4150569 (= res!1699544 e!2575221)))

(declare-fun res!1699537 () Bool)

(assert (=> b!4150569 (=> (not res!1699537) (not e!2575221))))

(declare-fun lt!1480289 () Bool)

(assert (=> b!4150569 (= res!1699537 lt!1480289)))

(declare-fun bm!290722 () Bool)

(assert (=> bm!290722 (= call!290727 (isEmpty!26914 p!2912))))

(declare-fun b!4150570 () Bool)

(declare-fun res!1699543 () Bool)

(assert (=> b!4150570 (=> res!1699543 e!2575216)))

(assert (=> b!4150570 (= res!1699543 (not (isEmpty!26914 (tail!6602 p!2912))))))

(declare-fun b!4150571 () Bool)

(declare-fun e!2575220 () Bool)

(assert (=> b!4150571 (= e!2575220 (not lt!1480289))))

(declare-fun b!4150572 () Bool)

(assert (=> b!4150572 (= e!2575221 (= (head!8761 p!2912) (c!710871 (regex!7424 r!4008))))))

(declare-fun b!4150573 () Bool)

(declare-fun nullable!4348 (Regex!12329) Bool)

(assert (=> b!4150573 (= e!2575219 (nullable!4348 (regex!7424 r!4008)))))

(declare-fun b!4150574 () Bool)

(declare-fun e!2575215 () Bool)

(assert (=> b!4150574 (= e!2575215 (= lt!1480289 call!290727))))

(declare-fun b!4150575 () Bool)

(declare-fun res!1699541 () Bool)

(assert (=> b!4150575 (=> (not res!1699541) (not e!2575221))))

(assert (=> b!4150575 (= res!1699541 (not call!290727))))

(declare-fun b!4150576 () Bool)

(declare-fun res!1699540 () Bool)

(assert (=> b!4150576 (=> res!1699540 e!2575217)))

(assert (=> b!4150576 (= res!1699540 (not ((_ is ElementMatch!12329) (regex!7424 r!4008))))))

(assert (=> b!4150576 (= e!2575220 e!2575217)))

(declare-fun d!1227827 () Bool)

(assert (=> d!1227827 e!2575215))

(declare-fun c!710878 () Bool)

(assert (=> d!1227827 (= c!710878 ((_ is EmptyExpr!12329) (regex!7424 r!4008)))))

(assert (=> d!1227827 (= lt!1480289 e!2575219)))

(declare-fun c!710879 () Bool)

(assert (=> d!1227827 (= c!710879 (isEmpty!26914 p!2912))))

(declare-fun validRegex!5558 (Regex!12329) Bool)

(assert (=> d!1227827 (validRegex!5558 (regex!7424 r!4008))))

(assert (=> d!1227827 (= (matchR!6158 (regex!7424 r!4008) p!2912) lt!1480289)))

(declare-fun b!4150565 () Bool)

(declare-fun res!1699542 () Bool)

(assert (=> b!4150565 (=> (not res!1699542) (not e!2575221))))

(assert (=> b!4150565 (= res!1699542 (isEmpty!26914 (tail!6602 p!2912)))))

(declare-fun b!4150577 () Bool)

(assert (=> b!4150577 (= e!2575215 e!2575220)))

(declare-fun c!710880 () Bool)

(assert (=> b!4150577 (= c!710880 ((_ is EmptyLang!12329) (regex!7424 r!4008)))))

(declare-fun b!4150578 () Bool)

(assert (=> b!4150578 (= e!2575217 e!2575218)))

(declare-fun res!1699538 () Bool)

(assert (=> b!4150578 (=> (not res!1699538) (not e!2575218))))

(assert (=> b!4150578 (= res!1699538 (not lt!1480289))))

(assert (= (and d!1227827 c!710879) b!4150573))

(assert (= (and d!1227827 (not c!710879)) b!4150566))

(assert (= (and d!1227827 c!710878) b!4150574))

(assert (= (and d!1227827 (not c!710878)) b!4150577))

(assert (= (and b!4150577 c!710880) b!4150571))

(assert (= (and b!4150577 (not c!710880)) b!4150576))

(assert (= (and b!4150576 (not res!1699540)) b!4150569))

(assert (= (and b!4150569 res!1699537) b!4150575))

(assert (= (and b!4150575 res!1699541) b!4150565))

(assert (= (and b!4150565 res!1699542) b!4150572))

(assert (= (and b!4150569 (not res!1699544)) b!4150578))

(assert (= (and b!4150578 res!1699538) b!4150568))

(assert (= (and b!4150568 (not res!1699539)) b!4150570))

(assert (= (and b!4150570 (not res!1699543)) b!4150567))

(assert (= (or b!4150574 b!4150568 b!4150575) bm!290722))

(declare-fun m!4746193 () Bool)

(assert (=> b!4150565 m!4746193))

(assert (=> b!4150565 m!4746193))

(declare-fun m!4746195 () Bool)

(assert (=> b!4150565 m!4746195))

(declare-fun m!4746197 () Bool)

(assert (=> b!4150573 m!4746197))

(assert (=> d!1227827 m!4746159))

(declare-fun m!4746199 () Bool)

(assert (=> d!1227827 m!4746199))

(declare-fun m!4746201 () Bool)

(assert (=> b!4150567 m!4746201))

(assert (=> bm!290722 m!4746159))

(assert (=> b!4150572 m!4746201))

(assert (=> b!4150570 m!4746193))

(assert (=> b!4150570 m!4746193))

(assert (=> b!4150570 m!4746195))

(assert (=> b!4150566 m!4746201))

(assert (=> b!4150566 m!4746201))

(declare-fun m!4746203 () Bool)

(assert (=> b!4150566 m!4746203))

(assert (=> b!4150566 m!4746193))

(assert (=> b!4150566 m!4746203))

(assert (=> b!4150566 m!4746193))

(declare-fun m!4746205 () Bool)

(assert (=> b!4150566 m!4746205))

(assert (=> b!4150520 d!1227827))

(declare-fun d!1227829 () Bool)

(declare-fun res!1699547 () Bool)

(declare-fun e!2575224 () Bool)

(assert (=> d!1227829 (=> (not res!1699547) (not e!2575224))))

(declare-fun rulesValid!2925 (LexerInterface!7013 List!45205) Bool)

(assert (=> d!1227829 (= res!1699547 (rulesValid!2925 thiss!25645 rules!3756))))

(assert (=> d!1227829 (= (rulesInvariant!6310 thiss!25645 rules!3756) e!2575224)))

(declare-fun b!4150581 () Bool)

(declare-datatypes ((List!45206 0))(
  ( (Nil!45082) (Cons!45082 (h!50502 String!52020) (t!343141 List!45206)) )
))
(declare-fun noDuplicateTag!3008 (LexerInterface!7013 List!45205 List!45206) Bool)

(assert (=> b!4150581 (= e!2575224 (noDuplicateTag!3008 thiss!25645 rules!3756 Nil!45082))))

(assert (= (and d!1227829 res!1699547) b!4150581))

(declare-fun m!4746207 () Bool)

(assert (=> d!1227829 m!4746207))

(declare-fun m!4746209 () Bool)

(assert (=> b!4150581 m!4746209))

(assert (=> b!4150521 d!1227829))

(declare-fun d!1227831 () Bool)

(assert (=> d!1227831 (= (isEmpty!26915 rules!3756) ((_ is Nil!45081) rules!3756))))

(assert (=> b!4150519 d!1227831))

(declare-fun d!1227835 () Bool)

(declare-fun lt!1480292 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6974 (List!45205) (InoxSet Rule!14648))

(assert (=> d!1227835 (= lt!1480292 (select (content!6974 rules!3756) r!4008))))

(declare-fun e!2575229 () Bool)

(assert (=> d!1227835 (= lt!1480292 e!2575229)))

(declare-fun res!1699552 () Bool)

(assert (=> d!1227835 (=> (not res!1699552) (not e!2575229))))

(assert (=> d!1227835 (= res!1699552 ((_ is Cons!45081) rules!3756))))

(assert (=> d!1227835 (= (contains!9110 rules!3756 r!4008) lt!1480292)))

(declare-fun b!4150586 () Bool)

(declare-fun e!2575230 () Bool)

(assert (=> b!4150586 (= e!2575229 e!2575230)))

(declare-fun res!1699553 () Bool)

(assert (=> b!4150586 (=> res!1699553 e!2575230)))

(assert (=> b!4150586 (= res!1699553 (= (h!50501 rules!3756) r!4008))))

(declare-fun b!4150587 () Bool)

(assert (=> b!4150587 (= e!2575230 (contains!9110 (t!343108 rules!3756) r!4008))))

(assert (= (and d!1227835 res!1699552) b!4150586))

(assert (= (and b!4150586 (not res!1699553)) b!4150587))

(declare-fun m!4746211 () Bool)

(assert (=> d!1227835 m!4746211))

(declare-fun m!4746213 () Bool)

(assert (=> d!1227835 m!4746213))

(assert (=> b!4150587 m!4746153))

(assert (=> b!4150530 d!1227835))

(declare-fun d!1227839 () Bool)

(assert (=> d!1227839 (= (inv!59689 (tag!8284 rBis!149)) (= (mod (str.len (value!232137 (tag!8284 rBis!149))) 2) 0))))

(assert (=> b!4150523 d!1227839))

(declare-fun d!1227841 () Bool)

(declare-fun res!1699559 () Bool)

(declare-fun e!2575236 () Bool)

(assert (=> d!1227841 (=> (not res!1699559) (not e!2575236))))

(declare-fun semiInverseModEq!3213 (Int Int) Bool)

(assert (=> d!1227841 (= res!1699559 (semiInverseModEq!3213 (toChars!9947 (transformation!7424 rBis!149)) (toValue!10088 (transformation!7424 rBis!149))))))

(assert (=> d!1227841 (= (inv!59691 (transformation!7424 rBis!149)) e!2575236)))

(declare-fun b!4150593 () Bool)

(declare-fun equivClasses!3112 (Int Int) Bool)

(assert (=> b!4150593 (= e!2575236 (equivClasses!3112 (toChars!9947 (transformation!7424 rBis!149)) (toValue!10088 (transformation!7424 rBis!149))))))

(assert (= (and d!1227841 res!1699559) b!4150593))

(declare-fun m!4746219 () Bool)

(assert (=> d!1227841 m!4746219))

(declare-fun m!4746221 () Bool)

(assert (=> b!4150593 m!4746221))

(assert (=> b!4150523 d!1227841))

(declare-fun d!1227845 () Bool)

(assert (=> d!1227845 (= (inv!59689 (tag!8284 r!4008)) (= (mod (str.len (value!232137 (tag!8284 r!4008))) 2) 0))))

(assert (=> b!4150534 d!1227845))

(declare-fun d!1227847 () Bool)

(declare-fun res!1699560 () Bool)

(declare-fun e!2575237 () Bool)

(assert (=> d!1227847 (=> (not res!1699560) (not e!2575237))))

(assert (=> d!1227847 (= res!1699560 (semiInverseModEq!3213 (toChars!9947 (transformation!7424 r!4008)) (toValue!10088 (transformation!7424 r!4008))))))

(assert (=> d!1227847 (= (inv!59691 (transformation!7424 r!4008)) e!2575237)))

(declare-fun b!4150594 () Bool)

(assert (=> b!4150594 (= e!2575237 (equivClasses!3112 (toChars!9947 (transformation!7424 r!4008)) (toValue!10088 (transformation!7424 r!4008))))))

(assert (= (and d!1227847 res!1699560) b!4150594))

(declare-fun m!4746223 () Bool)

(assert (=> d!1227847 m!4746223))

(declare-fun m!4746225 () Bool)

(assert (=> b!4150594 m!4746225))

(assert (=> b!4150534 d!1227847))

(declare-fun d!1227849 () Bool)

(declare-fun res!1699565 () Bool)

(declare-fun e!2575245 () Bool)

(assert (=> d!1227849 (=> (not res!1699565) (not e!2575245))))

(assert (=> d!1227849 (= res!1699565 (validRegex!5558 (regex!7424 r!4008)))))

(assert (=> d!1227849 (= (ruleValid!3230 thiss!25645 r!4008) e!2575245)))

(declare-fun b!4150607 () Bool)

(declare-fun res!1699566 () Bool)

(assert (=> b!4150607 (=> (not res!1699566) (not e!2575245))))

(assert (=> b!4150607 (= res!1699566 (not (nullable!4348 (regex!7424 r!4008))))))

(declare-fun b!4150608 () Bool)

(assert (=> b!4150608 (= e!2575245 (not (= (tag!8284 r!4008) (String!52021 ""))))))

(assert (= (and d!1227849 res!1699565) b!4150607))

(assert (= (and b!4150607 res!1699566) b!4150608))

(assert (=> d!1227849 m!4746199))

(assert (=> b!4150607 m!4746197))

(assert (=> b!4150532 d!1227849))

(declare-fun d!1227851 () Bool)

(declare-fun lt!1480295 () Bool)

(assert (=> d!1227851 (= lt!1480295 (select (content!6974 (t!343108 rules!3756)) rBis!149))))

(declare-fun e!2575246 () Bool)

(assert (=> d!1227851 (= lt!1480295 e!2575246)))

(declare-fun res!1699567 () Bool)

(assert (=> d!1227851 (=> (not res!1699567) (not e!2575246))))

(assert (=> d!1227851 (= res!1699567 ((_ is Cons!45081) (t!343108 rules!3756)))))

(assert (=> d!1227851 (= (contains!9110 (t!343108 rules!3756) rBis!149) lt!1480295)))

(declare-fun b!4150609 () Bool)

(declare-fun e!2575247 () Bool)

(assert (=> b!4150609 (= e!2575246 e!2575247)))

(declare-fun res!1699568 () Bool)

(assert (=> b!4150609 (=> res!1699568 e!2575247)))

(assert (=> b!4150609 (= res!1699568 (= (h!50501 (t!343108 rules!3756)) rBis!149))))

(declare-fun b!4150610 () Bool)

(assert (=> b!4150610 (= e!2575247 (contains!9110 (t!343108 (t!343108 rules!3756)) rBis!149))))

(assert (= (and d!1227851 res!1699567) b!4150609))

(assert (= (and b!4150609 (not res!1699568)) b!4150610))

(declare-fun m!4746227 () Bool)

(assert (=> d!1227851 m!4746227))

(declare-fun m!4746229 () Bool)

(assert (=> d!1227851 m!4746229))

(declare-fun m!4746231 () Bool)

(assert (=> b!4150610 m!4746231))

(assert (=> b!4150533 d!1227851))

(declare-fun d!1227853 () Bool)

(declare-fun lt!1480296 () Bool)

(assert (=> d!1227853 (= lt!1480296 (select (content!6974 rules!3756) rBis!149))))

(declare-fun e!2575248 () Bool)

(assert (=> d!1227853 (= lt!1480296 e!2575248)))

(declare-fun res!1699569 () Bool)

(assert (=> d!1227853 (=> (not res!1699569) (not e!2575248))))

(assert (=> d!1227853 (= res!1699569 ((_ is Cons!45081) rules!3756))))

(assert (=> d!1227853 (= (contains!9110 rules!3756 rBis!149) lt!1480296)))

(declare-fun b!4150611 () Bool)

(declare-fun e!2575249 () Bool)

(assert (=> b!4150611 (= e!2575248 e!2575249)))

(declare-fun res!1699570 () Bool)

(assert (=> b!4150611 (=> res!1699570 e!2575249)))

(assert (=> b!4150611 (= res!1699570 (= (h!50501 rules!3756) rBis!149))))

(declare-fun b!4150612 () Bool)

(assert (=> b!4150612 (= e!2575249 (contains!9110 (t!343108 rules!3756) rBis!149))))

(assert (= (and d!1227853 res!1699569) b!4150611))

(assert (= (and b!4150611 (not res!1699570)) b!4150612))

(assert (=> d!1227853 m!4746211))

(declare-fun m!4746233 () Bool)

(assert (=> d!1227853 m!4746233))

(assert (=> b!4150612 m!4746161))

(assert (=> b!4150536 d!1227853))

(declare-fun d!1227855 () Bool)

(declare-fun dynLambda!19438 (Int BalanceConc!26864) TokenValue!7654)

(assert (=> d!1227855 (= (apply!10497 (transformation!7424 r!4008) lt!1480282) (dynLambda!19438 (toValue!10088 (transformation!7424 r!4008)) lt!1480282))))

(declare-fun b_lambda!122063 () Bool)

(assert (=> (not b_lambda!122063) (not d!1227855)))

(declare-fun tb!249123 () Bool)

(declare-fun t!343110 () Bool)

(assert (=> (and b!4150513 (= (toValue!10088 (transformation!7424 rBis!149)) (toValue!10088 (transformation!7424 r!4008))) t!343110) tb!249123))

(declare-fun result!303060 () Bool)

(declare-fun inv!21 (TokenValue!7654) Bool)

(assert (=> tb!249123 (= result!303060 (inv!21 (dynLambda!19438 (toValue!10088 (transformation!7424 r!4008)) lt!1480282)))))

(declare-fun m!4746235 () Bool)

(assert (=> tb!249123 m!4746235))

(assert (=> d!1227855 t!343110))

(declare-fun b_and!322833 () Bool)

(assert (= b_and!322821 (and (=> t!343110 result!303060) b_and!322833)))

(declare-fun t!343112 () Bool)

(declare-fun tb!249125 () Bool)

(assert (=> (and b!4150528 (= (toValue!10088 (transformation!7424 (h!50501 rules!3756))) (toValue!10088 (transformation!7424 r!4008))) t!343112) tb!249125))

(declare-fun result!303064 () Bool)

(assert (= result!303064 result!303060))

(assert (=> d!1227855 t!343112))

(declare-fun b_and!322835 () Bool)

(assert (= b_and!322825 (and (=> t!343112 result!303064) b_and!322835)))

(declare-fun t!343114 () Bool)

(declare-fun tb!249127 () Bool)

(assert (=> (and b!4150527 (= (toValue!10088 (transformation!7424 r!4008)) (toValue!10088 (transformation!7424 r!4008))) t!343114) tb!249127))

(declare-fun result!303066 () Bool)

(assert (= result!303066 result!303060))

(assert (=> d!1227855 t!343114))

(declare-fun b_and!322837 () Bool)

(assert (= b_and!322829 (and (=> t!343114 result!303066) b_and!322837)))

(declare-fun m!4746239 () Bool)

(assert (=> d!1227855 m!4746239))

(assert (=> b!4150526 d!1227855))

(declare-fun b!4150694 () Bool)

(declare-fun res!1699624 () Bool)

(declare-fun e!2575296 () Bool)

(assert (=> b!4150694 (=> (not res!1699624) (not e!2575296))))

(declare-fun lt!1480322 () Option!9730)

(declare-fun get!14720 (Option!9730) tuple2!43442)

(declare-fun list!16492 (BalanceConc!26864) List!45204)

(declare-fun charsOf!5012 (Token!13778) BalanceConc!26864)

(assert (=> b!4150694 (= res!1699624 (matchR!6158 (regex!7424 (rule!10560 (_1!24855 (get!14720 lt!1480322)))) (list!16492 (charsOf!5012 (_1!24855 (get!14720 lt!1480322))))))))

(declare-fun b!4150695 () Bool)

(declare-fun e!2575297 () Option!9730)

(declare-fun lt!1480319 () Option!9730)

(declare-fun lt!1480318 () Option!9730)

(assert (=> b!4150695 (= e!2575297 (ite (and ((_ is None!9729) lt!1480319) ((_ is None!9729) lt!1480318)) None!9729 (ite ((_ is None!9729) lt!1480318) lt!1480319 (ite ((_ is None!9729) lt!1480319) lt!1480318 (ite (>= (size!33419 (_1!24855 (v!40393 lt!1480319))) (size!33419 (_1!24855 (v!40393 lt!1480318)))) lt!1480319 lt!1480318)))))))

(declare-fun call!290733 () Option!9730)

(assert (=> b!4150695 (= lt!1480319 call!290733)))

(assert (=> b!4150695 (= lt!1480318 (maxPrefix!4203 thiss!25645 (t!343108 rules!3756) input!3238))))

(declare-fun bm!290728 () Bool)

(assert (=> bm!290728 (= call!290733 (maxPrefixOneRule!3142 thiss!25645 (h!50501 rules!3756) input!3238))))

(declare-fun b!4150696 () Bool)

(assert (=> b!4150696 (= e!2575296 (contains!9110 rules!3756 (rule!10560 (_1!24855 (get!14720 lt!1480322)))))))

(declare-fun b!4150697 () Bool)

(assert (=> b!4150697 (= e!2575297 call!290733)))

(declare-fun b!4150698 () Bool)

(declare-fun res!1699626 () Bool)

(assert (=> b!4150698 (=> (not res!1699626) (not e!2575296))))

(assert (=> b!4150698 (= res!1699626 (= (list!16492 (charsOf!5012 (_1!24855 (get!14720 lt!1480322)))) (originalCharacters!7920 (_1!24855 (get!14720 lt!1480322)))))))

(declare-fun b!4150699 () Bool)

(declare-fun res!1699620 () Bool)

(assert (=> b!4150699 (=> (not res!1699620) (not e!2575296))))

(declare-fun ++!11649 (List!45204 List!45204) List!45204)

(assert (=> b!4150699 (= res!1699620 (= (++!11649 (list!16492 (charsOf!5012 (_1!24855 (get!14720 lt!1480322)))) (_2!24855 (get!14720 lt!1480322))) input!3238))))

(declare-fun b!4150700 () Bool)

(declare-fun res!1699623 () Bool)

(assert (=> b!4150700 (=> (not res!1699623) (not e!2575296))))

(assert (=> b!4150700 (= res!1699623 (= (value!232138 (_1!24855 (get!14720 lt!1480322))) (apply!10497 (transformation!7424 (rule!10560 (_1!24855 (get!14720 lt!1480322)))) (seqFromList!5541 (originalCharacters!7920 (_1!24855 (get!14720 lt!1480322)))))))))

(declare-fun d!1227859 () Bool)

(declare-fun e!2575295 () Bool)

(assert (=> d!1227859 e!2575295))

(declare-fun res!1699621 () Bool)

(assert (=> d!1227859 (=> res!1699621 e!2575295)))

(declare-fun isEmpty!26916 (Option!9730) Bool)

(assert (=> d!1227859 (= res!1699621 (isEmpty!26916 lt!1480322))))

(assert (=> d!1227859 (= lt!1480322 e!2575297)))

(declare-fun c!710900 () Bool)

(assert (=> d!1227859 (= c!710900 (and ((_ is Cons!45081) rules!3756) ((_ is Nil!45081) (t!343108 rules!3756))))))

(declare-fun lt!1480321 () Unit!64355)

(declare-fun lt!1480320 () Unit!64355)

(assert (=> d!1227859 (= lt!1480321 lt!1480320)))

(assert (=> d!1227859 (isPrefix!4359 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2811 (List!45204 List!45204) Unit!64355)

(assert (=> d!1227859 (= lt!1480320 (lemmaIsPrefixRefl!2811 input!3238 input!3238))))

(declare-fun rulesValidInductive!2763 (LexerInterface!7013 List!45205) Bool)

(assert (=> d!1227859 (rulesValidInductive!2763 thiss!25645 rules!3756)))

(assert (=> d!1227859 (= (maxPrefix!4203 thiss!25645 rules!3756 input!3238) lt!1480322)))

(declare-fun b!4150701 () Bool)

(declare-fun res!1699622 () Bool)

(assert (=> b!4150701 (=> (not res!1699622) (not e!2575296))))

(assert (=> b!4150701 (= res!1699622 (< (size!33420 (_2!24855 (get!14720 lt!1480322))) (size!33420 input!3238)))))

(declare-fun b!4150702 () Bool)

(assert (=> b!4150702 (= e!2575295 e!2575296)))

(declare-fun res!1699625 () Bool)

(assert (=> b!4150702 (=> (not res!1699625) (not e!2575296))))

(declare-fun isDefined!7303 (Option!9730) Bool)

(assert (=> b!4150702 (= res!1699625 (isDefined!7303 lt!1480322))))

(assert (= (and d!1227859 c!710900) b!4150697))

(assert (= (and d!1227859 (not c!710900)) b!4150695))

(assert (= (or b!4150697 b!4150695) bm!290728))

(assert (= (and d!1227859 (not res!1699621)) b!4150702))

(assert (= (and b!4150702 res!1699625) b!4150698))

(assert (= (and b!4150698 res!1699626) b!4150701))

(assert (= (and b!4150701 res!1699622) b!4150699))

(assert (= (and b!4150699 res!1699620) b!4150700))

(assert (= (and b!4150700 res!1699623) b!4150694))

(assert (= (and b!4150694 res!1699624) b!4150696))

(declare-fun m!4746279 () Bool)

(assert (=> d!1227859 m!4746279))

(declare-fun m!4746281 () Bool)

(assert (=> d!1227859 m!4746281))

(declare-fun m!4746283 () Bool)

(assert (=> d!1227859 m!4746283))

(declare-fun m!4746285 () Bool)

(assert (=> d!1227859 m!4746285))

(declare-fun m!4746287 () Bool)

(assert (=> b!4150702 m!4746287))

(declare-fun m!4746289 () Bool)

(assert (=> b!4150700 m!4746289))

(declare-fun m!4746291 () Bool)

(assert (=> b!4150700 m!4746291))

(assert (=> b!4150700 m!4746291))

(declare-fun m!4746293 () Bool)

(assert (=> b!4150700 m!4746293))

(assert (=> b!4150698 m!4746289))

(declare-fun m!4746295 () Bool)

(assert (=> b!4150698 m!4746295))

(assert (=> b!4150698 m!4746295))

(declare-fun m!4746297 () Bool)

(assert (=> b!4150698 m!4746297))

(assert (=> bm!290728 m!4746181))

(assert (=> b!4150701 m!4746289))

(declare-fun m!4746299 () Bool)

(assert (=> b!4150701 m!4746299))

(declare-fun m!4746301 () Bool)

(assert (=> b!4150701 m!4746301))

(assert (=> b!4150695 m!4746185))

(assert (=> b!4150699 m!4746289))

(assert (=> b!4150699 m!4746295))

(assert (=> b!4150699 m!4746295))

(assert (=> b!4150699 m!4746297))

(assert (=> b!4150699 m!4746297))

(declare-fun m!4746303 () Bool)

(assert (=> b!4150699 m!4746303))

(assert (=> b!4150696 m!4746289))

(declare-fun m!4746305 () Bool)

(assert (=> b!4150696 m!4746305))

(assert (=> b!4150694 m!4746289))

(assert (=> b!4150694 m!4746295))

(assert (=> b!4150694 m!4746295))

(assert (=> b!4150694 m!4746297))

(assert (=> b!4150694 m!4746297))

(declare-fun m!4746307 () Bool)

(assert (=> b!4150694 m!4746307))

(assert (=> b!4150526 d!1227859))

(declare-fun d!1227879 () Bool)

(declare-fun fromListB!2544 (List!45204) BalanceConc!26864)

(assert (=> d!1227879 (= (seqFromList!5541 p!2912) (fromListB!2544 p!2912))))

(declare-fun bs!595433 () Bool)

(assert (= bs!595433 d!1227879))

(declare-fun m!4746309 () Bool)

(assert (=> bs!595433 m!4746309))

(assert (=> b!4150526 d!1227879))

(declare-fun d!1227881 () Bool)

(declare-fun lt!1480325 () Int)

(assert (=> d!1227881 (>= lt!1480325 0)))

(declare-fun e!2575300 () Int)

(assert (=> d!1227881 (= lt!1480325 e!2575300)))

(declare-fun c!710903 () Bool)

(assert (=> d!1227881 (= c!710903 ((_ is Nil!45080) p!2912))))

(assert (=> d!1227881 (= (size!33420 p!2912) lt!1480325)))

(declare-fun b!4150707 () Bool)

(assert (=> b!4150707 (= e!2575300 0)))

(declare-fun b!4150708 () Bool)

(assert (=> b!4150708 (= e!2575300 (+ 1 (size!33420 (t!343107 p!2912))))))

(assert (= (and d!1227881 c!710903) b!4150707))

(assert (= (and d!1227881 (not c!710903)) b!4150708))

(declare-fun m!4746311 () Bool)

(assert (=> b!4150708 m!4746311))

(assert (=> b!4150526 d!1227881))

(declare-fun d!1227883 () Bool)

(declare-fun lt!1480328 () List!45204)

(assert (=> d!1227883 (= (++!11649 p!2912 lt!1480328) input!3238)))

(declare-fun e!2575303 () List!45204)

(assert (=> d!1227883 (= lt!1480328 e!2575303)))

(declare-fun c!710906 () Bool)

(assert (=> d!1227883 (= c!710906 ((_ is Cons!45080) p!2912))))

(assert (=> d!1227883 (>= (size!33420 input!3238) (size!33420 p!2912))))

(assert (=> d!1227883 (= (getSuffix!2686 input!3238 p!2912) lt!1480328)))

(declare-fun b!4150713 () Bool)

(assert (=> b!4150713 (= e!2575303 (getSuffix!2686 (tail!6602 input!3238) (t!343107 p!2912)))))

(declare-fun b!4150714 () Bool)

(assert (=> b!4150714 (= e!2575303 input!3238)))

(assert (= (and d!1227883 c!710906) b!4150713))

(assert (= (and d!1227883 (not c!710906)) b!4150714))

(declare-fun m!4746313 () Bool)

(assert (=> d!1227883 m!4746313))

(assert (=> d!1227883 m!4746301))

(assert (=> d!1227883 m!4746163))

(declare-fun m!4746315 () Bool)

(assert (=> b!4150713 m!4746315))

(assert (=> b!4150713 m!4746315))

(declare-fun m!4746317 () Bool)

(assert (=> b!4150713 m!4746317))

(assert (=> b!4150526 d!1227883))

(declare-fun b!4150788 () Bool)

(declare-fun e!2575340 () Bool)

(assert (=> b!4150788 (= e!2575340 true)))

(declare-fun d!1227885 () Bool)

(assert (=> d!1227885 e!2575340))

(assert (= d!1227885 b!4150788))

(declare-fun order!23915 () Int)

(declare-fun order!23917 () Int)

(declare-fun lambda!129024 () Int)

(declare-fun dynLambda!19439 (Int Int) Int)

(declare-fun dynLambda!19440 (Int Int) Int)

(assert (=> b!4150788 (< (dynLambda!19439 order!23915 (toValue!10088 (transformation!7424 r!4008))) (dynLambda!19440 order!23917 lambda!129024))))

(declare-fun order!23919 () Int)

(declare-fun dynLambda!19441 (Int Int) Int)

(assert (=> b!4150788 (< (dynLambda!19441 order!23919 (toChars!9947 (transformation!7424 r!4008))) (dynLambda!19440 order!23917 lambda!129024))))

(declare-fun dynLambda!19442 (Int TokenValue!7654) BalanceConc!26864)

(assert (=> d!1227885 (= (list!16492 (dynLambda!19442 (toChars!9947 (transformation!7424 r!4008)) (dynLambda!19438 (toValue!10088 (transformation!7424 r!4008)) lt!1480282))) (list!16492 lt!1480282))))

(declare-fun lt!1480369 () Unit!64355)

(declare-fun ForallOf!995 (Int BalanceConc!26864) Unit!64355)

(assert (=> d!1227885 (= lt!1480369 (ForallOf!995 lambda!129024 lt!1480282))))

(assert (=> d!1227885 (= (lemmaSemiInverse!2282 (transformation!7424 r!4008) lt!1480282) lt!1480369)))

(declare-fun b_lambda!122067 () Bool)

(assert (=> (not b_lambda!122067) (not d!1227885)))

(declare-fun tb!249135 () Bool)

(declare-fun t!343122 () Bool)

(assert (=> (and b!4150513 (= (toChars!9947 (transformation!7424 rBis!149)) (toChars!9947 (transformation!7424 r!4008))) t!343122) tb!249135))

(declare-fun tp!1265141 () Bool)

(declare-fun b!4150793 () Bool)

(declare-fun e!2575343 () Bool)

(declare-fun inv!59692 (Conc!13635) Bool)

(assert (=> b!4150793 (= e!2575343 (and (inv!59692 (c!710870 (dynLambda!19442 (toChars!9947 (transformation!7424 r!4008)) (dynLambda!19438 (toValue!10088 (transformation!7424 r!4008)) lt!1480282)))) tp!1265141))))

(declare-fun result!303076 () Bool)

(declare-fun inv!59693 (BalanceConc!26864) Bool)

(assert (=> tb!249135 (= result!303076 (and (inv!59693 (dynLambda!19442 (toChars!9947 (transformation!7424 r!4008)) (dynLambda!19438 (toValue!10088 (transformation!7424 r!4008)) lt!1480282))) e!2575343))))

(assert (= tb!249135 b!4150793))

(declare-fun m!4746419 () Bool)

(assert (=> b!4150793 m!4746419))

(declare-fun m!4746421 () Bool)

(assert (=> tb!249135 m!4746421))

(assert (=> d!1227885 t!343122))

(declare-fun b_and!322845 () Bool)

(assert (= b_and!322823 (and (=> t!343122 result!303076) b_and!322845)))

(declare-fun t!343124 () Bool)

(declare-fun tb!249137 () Bool)

(assert (=> (and b!4150528 (= (toChars!9947 (transformation!7424 (h!50501 rules!3756))) (toChars!9947 (transformation!7424 r!4008))) t!343124) tb!249137))

(declare-fun result!303080 () Bool)

(assert (= result!303080 result!303076))

(assert (=> d!1227885 t!343124))

(declare-fun b_and!322847 () Bool)

(assert (= b_and!322827 (and (=> t!343124 result!303080) b_and!322847)))

(declare-fun t!343126 () Bool)

(declare-fun tb!249139 () Bool)

(assert (=> (and b!4150527 (= (toChars!9947 (transformation!7424 r!4008)) (toChars!9947 (transformation!7424 r!4008))) t!343126) tb!249139))

(declare-fun result!303082 () Bool)

(assert (= result!303082 result!303076))

(assert (=> d!1227885 t!343126))

(declare-fun b_and!322849 () Bool)

(assert (= b_and!322831 (and (=> t!343126 result!303082) b_and!322849)))

(declare-fun b_lambda!122069 () Bool)

(assert (=> (not b_lambda!122069) (not d!1227885)))

(assert (=> d!1227885 t!343110))

(declare-fun b_and!322851 () Bool)

(assert (= b_and!322833 (and (=> t!343110 result!303060) b_and!322851)))

(assert (=> d!1227885 t!343112))

(declare-fun b_and!322853 () Bool)

(assert (= b_and!322835 (and (=> t!343112 result!303064) b_and!322853)))

(assert (=> d!1227885 t!343114))

(declare-fun b_and!322855 () Bool)

(assert (= b_and!322837 (and (=> t!343114 result!303066) b_and!322855)))

(assert (=> d!1227885 m!4746239))

(declare-fun m!4746423 () Bool)

(assert (=> d!1227885 m!4746423))

(declare-fun m!4746425 () Bool)

(assert (=> d!1227885 m!4746425))

(declare-fun m!4746427 () Bool)

(assert (=> d!1227885 m!4746427))

(assert (=> d!1227885 m!4746239))

(assert (=> d!1227885 m!4746425))

(declare-fun m!4746429 () Bool)

(assert (=> d!1227885 m!4746429))

(assert (=> b!4150526 d!1227885))

(declare-fun d!1227911 () Bool)

(declare-fun lt!1480370 () Bool)

(assert (=> d!1227911 (= lt!1480370 (select (content!6974 (t!343108 rules!3756)) r!4008))))

(declare-fun e!2575344 () Bool)

(assert (=> d!1227911 (= lt!1480370 e!2575344)))

(declare-fun res!1699682 () Bool)

(assert (=> d!1227911 (=> (not res!1699682) (not e!2575344))))

(assert (=> d!1227911 (= res!1699682 ((_ is Cons!45081) (t!343108 rules!3756)))))

(assert (=> d!1227911 (= (contains!9110 (t!343108 rules!3756) r!4008) lt!1480370)))

(declare-fun b!4150794 () Bool)

(declare-fun e!2575345 () Bool)

(assert (=> b!4150794 (= e!2575344 e!2575345)))

(declare-fun res!1699683 () Bool)

(assert (=> b!4150794 (=> res!1699683 e!2575345)))

(assert (=> b!4150794 (= res!1699683 (= (h!50501 (t!343108 rules!3756)) r!4008))))

(declare-fun b!4150795 () Bool)

(assert (=> b!4150795 (= e!2575345 (contains!9110 (t!343108 (t!343108 rules!3756)) r!4008))))

(assert (= (and d!1227911 res!1699682) b!4150794))

(assert (= (and b!4150794 (not res!1699683)) b!4150795))

(assert (=> d!1227911 m!4746227))

(declare-fun m!4746431 () Bool)

(assert (=> d!1227911 m!4746431))

(declare-fun m!4746433 () Bool)

(assert (=> b!4150795 m!4746433))

(assert (=> b!4150535 d!1227911))

(declare-fun d!1227913 () Bool)

(assert (=> d!1227913 (ruleValid!3230 thiss!25645 r!4008)))

(declare-fun lt!1480373 () Unit!64355)

(declare-fun choose!25416 (LexerInterface!7013 Rule!14648 List!45205) Unit!64355)

(assert (=> d!1227913 (= lt!1480373 (choose!25416 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1227913 (contains!9110 rules!3756 r!4008)))

(assert (=> d!1227913 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2270 thiss!25645 r!4008 rules!3756) lt!1480373)))

(declare-fun bs!595435 () Bool)

(assert (= bs!595435 d!1227913))

(assert (=> bs!595435 m!4746145))

(declare-fun m!4746435 () Bool)

(assert (=> bs!595435 m!4746435))

(assert (=> bs!595435 m!4746147))

(assert (=> b!4150514 d!1227913))

(declare-fun d!1227915 () Bool)

(declare-fun res!1699684 () Bool)

(declare-fun e!2575346 () Bool)

(assert (=> d!1227915 (=> (not res!1699684) (not e!2575346))))

(assert (=> d!1227915 (= res!1699684 (validRegex!5558 (regex!7424 rBis!149)))))

(assert (=> d!1227915 (= (ruleValid!3230 thiss!25645 rBis!149) e!2575346)))

(declare-fun b!4150796 () Bool)

(declare-fun res!1699685 () Bool)

(assert (=> b!4150796 (=> (not res!1699685) (not e!2575346))))

(assert (=> b!4150796 (= res!1699685 (not (nullable!4348 (regex!7424 rBis!149))))))

(declare-fun b!4150797 () Bool)

(assert (=> b!4150797 (= e!2575346 (not (= (tag!8284 rBis!149) (String!52021 ""))))))

(assert (= (and d!1227915 res!1699684) b!4150796))

(assert (= (and b!4150796 res!1699685) b!4150797))

(declare-fun m!4746437 () Bool)

(assert (=> d!1227915 m!4746437))

(declare-fun m!4746439 () Bool)

(assert (=> b!4150796 m!4746439))

(assert (=> b!4150514 d!1227915))

(declare-fun d!1227917 () Bool)

(assert (=> d!1227917 (ruleValid!3230 thiss!25645 rBis!149)))

(declare-fun lt!1480374 () Unit!64355)

(assert (=> d!1227917 (= lt!1480374 (choose!25416 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1227917 (contains!9110 rules!3756 rBis!149)))

(assert (=> d!1227917 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2270 thiss!25645 rBis!149 rules!3756) lt!1480374)))

(declare-fun bs!595436 () Bool)

(assert (= bs!595436 d!1227917))

(assert (=> bs!595436 m!4746137))

(declare-fun m!4746441 () Bool)

(assert (=> bs!595436 m!4746441))

(assert (=> bs!595436 m!4746155))

(assert (=> b!4150514 d!1227917))

(declare-fun d!1227919 () Bool)

(assert (=> d!1227919 (= (inv!59689 (tag!8284 (h!50501 rules!3756))) (= (mod (str.len (value!232137 (tag!8284 (h!50501 rules!3756)))) 2) 0))))

(assert (=> b!4150525 d!1227919))

(declare-fun d!1227921 () Bool)

(declare-fun res!1699686 () Bool)

(declare-fun e!2575347 () Bool)

(assert (=> d!1227921 (=> (not res!1699686) (not e!2575347))))

(assert (=> d!1227921 (= res!1699686 (semiInverseModEq!3213 (toChars!9947 (transformation!7424 (h!50501 rules!3756))) (toValue!10088 (transformation!7424 (h!50501 rules!3756)))))))

(assert (=> d!1227921 (= (inv!59691 (transformation!7424 (h!50501 rules!3756))) e!2575347)))

(declare-fun b!4150798 () Bool)

(assert (=> b!4150798 (= e!2575347 (equivClasses!3112 (toChars!9947 (transformation!7424 (h!50501 rules!3756))) (toValue!10088 (transformation!7424 (h!50501 rules!3756)))))))

(assert (= (and d!1227921 res!1699686) b!4150798))

(declare-fun m!4746443 () Bool)

(assert (=> d!1227921 m!4746443))

(declare-fun m!4746445 () Bool)

(assert (=> b!4150798 m!4746445))

(assert (=> b!4150525 d!1227921))

(declare-fun b!4150809 () Bool)

(declare-fun e!2575355 () Bool)

(assert (=> b!4150809 (= e!2575355 (isPrefix!4359 (tail!6602 p!2912) (tail!6602 input!3238)))))

(declare-fun d!1227923 () Bool)

(declare-fun e!2575354 () Bool)

(assert (=> d!1227923 e!2575354))

(declare-fun res!1699696 () Bool)

(assert (=> d!1227923 (=> res!1699696 e!2575354)))

(declare-fun lt!1480377 () Bool)

(assert (=> d!1227923 (= res!1699696 (not lt!1480377))))

(declare-fun e!2575356 () Bool)

(assert (=> d!1227923 (= lt!1480377 e!2575356)))

(declare-fun res!1699695 () Bool)

(assert (=> d!1227923 (=> res!1699695 e!2575356)))

(assert (=> d!1227923 (= res!1699695 ((_ is Nil!45080) p!2912))))

(assert (=> d!1227923 (= (isPrefix!4359 p!2912 input!3238) lt!1480377)))

(declare-fun b!4150810 () Bool)

(assert (=> b!4150810 (= e!2575354 (>= (size!33420 input!3238) (size!33420 p!2912)))))

(declare-fun b!4150807 () Bool)

(assert (=> b!4150807 (= e!2575356 e!2575355)))

(declare-fun res!1699697 () Bool)

(assert (=> b!4150807 (=> (not res!1699697) (not e!2575355))))

(assert (=> b!4150807 (= res!1699697 (not ((_ is Nil!45080) input!3238)))))

(declare-fun b!4150808 () Bool)

(declare-fun res!1699698 () Bool)

(assert (=> b!4150808 (=> (not res!1699698) (not e!2575355))))

(assert (=> b!4150808 (= res!1699698 (= (head!8761 p!2912) (head!8761 input!3238)))))

(assert (= (and d!1227923 (not res!1699695)) b!4150807))

(assert (= (and b!4150807 res!1699697) b!4150808))

(assert (= (and b!4150808 res!1699698) b!4150809))

(assert (= (and d!1227923 (not res!1699696)) b!4150810))

(assert (=> b!4150809 m!4746193))

(assert (=> b!4150809 m!4746315))

(assert (=> b!4150809 m!4746193))

(assert (=> b!4150809 m!4746315))

(declare-fun m!4746447 () Bool)

(assert (=> b!4150809 m!4746447))

(assert (=> b!4150810 m!4746301))

(assert (=> b!4150810 m!4746163))

(assert (=> b!4150808 m!4746201))

(declare-fun m!4746449 () Bool)

(assert (=> b!4150808 m!4746449))

(assert (=> b!4150518 d!1227923))

(declare-fun d!1227925 () Bool)

(declare-fun res!1699699 () Bool)

(declare-fun e!2575357 () Bool)

(assert (=> d!1227925 (=> (not res!1699699) (not e!2575357))))

(assert (=> d!1227925 (= res!1699699 (rulesValid!2925 thiss!25645 (t!343108 rules!3756)))))

(assert (=> d!1227925 (= (rulesInvariant!6310 thiss!25645 (t!343108 rules!3756)) e!2575357)))

(declare-fun b!4150811 () Bool)

(assert (=> b!4150811 (= e!2575357 (noDuplicateTag!3008 thiss!25645 (t!343108 rules!3756) Nil!45082))))

(assert (= (and d!1227925 res!1699699) b!4150811))

(declare-fun m!4746451 () Bool)

(assert (=> d!1227925 m!4746451))

(declare-fun m!4746453 () Bool)

(assert (=> b!4150811 m!4746453))

(assert (=> b!4150529 d!1227925))

(declare-fun d!1227927 () Bool)

(assert (=> d!1227927 (not (= (tag!8284 (h!50501 rules!3756)) (tag!8284 r!4008)))))

(declare-fun lt!1480380 () Unit!64355)

(declare-fun choose!25418 (LexerInterface!7013 List!45205 Rule!14648 Rule!14648) Unit!64355)

(assert (=> d!1227927 (= lt!1480380 (choose!25418 thiss!25645 rules!3756 (h!50501 rules!3756) r!4008))))

(assert (=> d!1227927 (contains!9110 rules!3756 (h!50501 rules!3756))))

(assert (=> d!1227927 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!72 thiss!25645 rules!3756 (h!50501 rules!3756) r!4008) lt!1480380)))

(declare-fun bs!595437 () Bool)

(assert (= bs!595437 d!1227927))

(declare-fun m!4746455 () Bool)

(assert (=> bs!595437 m!4746455))

(declare-fun m!4746457 () Bool)

(assert (=> bs!595437 m!4746457))

(assert (=> b!4150529 d!1227927))

(declare-fun b!4150830 () Bool)

(declare-fun res!1699718 () Bool)

(declare-fun e!2575369 () Bool)

(assert (=> b!4150830 (=> (not res!1699718) (not e!2575369))))

(declare-fun lt!1480393 () Option!9730)

(assert (=> b!4150830 (= res!1699718 (= (++!11649 (list!16492 (charsOf!5012 (_1!24855 (get!14720 lt!1480393)))) (_2!24855 (get!14720 lt!1480393))) input!3238))))

(declare-fun b!4150831 () Bool)

(declare-fun res!1699720 () Bool)

(assert (=> b!4150831 (=> (not res!1699720) (not e!2575369))))

(assert (=> b!4150831 (= res!1699720 (= (rule!10560 (_1!24855 (get!14720 lt!1480393))) (h!50501 rules!3756)))))

(declare-fun b!4150832 () Bool)

(declare-fun res!1699714 () Bool)

(assert (=> b!4150832 (=> (not res!1699714) (not e!2575369))))

(assert (=> b!4150832 (= res!1699714 (< (size!33420 (_2!24855 (get!14720 lt!1480393))) (size!33420 input!3238)))))

(declare-fun b!4150833 () Bool)

(declare-fun e!2575366 () Option!9730)

(assert (=> b!4150833 (= e!2575366 None!9729)))

(declare-fun d!1227929 () Bool)

(declare-fun e!2575367 () Bool)

(assert (=> d!1227929 e!2575367))

(declare-fun res!1699717 () Bool)

(assert (=> d!1227929 (=> res!1699717 e!2575367)))

(assert (=> d!1227929 (= res!1699717 (isEmpty!26916 lt!1480393))))

(assert (=> d!1227929 (= lt!1480393 e!2575366)))

(declare-fun c!710917 () Bool)

(declare-datatypes ((tuple2!43446 0))(
  ( (tuple2!43447 (_1!24857 List!45204) (_2!24857 List!45204)) )
))
(declare-fun lt!1480394 () tuple2!43446)

(assert (=> d!1227929 (= c!710917 (isEmpty!26914 (_1!24857 lt!1480394)))))

(declare-fun findLongestMatch!1466 (Regex!12329 List!45204) tuple2!43446)

(assert (=> d!1227929 (= lt!1480394 (findLongestMatch!1466 (regex!7424 (h!50501 rules!3756)) input!3238))))

(assert (=> d!1227929 (ruleValid!3230 thiss!25645 (h!50501 rules!3756))))

(assert (=> d!1227929 (= (maxPrefixOneRule!3142 thiss!25645 (h!50501 rules!3756) input!3238) lt!1480393)))

(declare-fun b!4150834 () Bool)

(declare-fun e!2575368 () Bool)

(declare-fun findLongestMatchInner!1553 (Regex!12329 List!45204 Int List!45204 List!45204 Int) tuple2!43446)

(assert (=> b!4150834 (= e!2575368 (matchR!6158 (regex!7424 (h!50501 rules!3756)) (_1!24857 (findLongestMatchInner!1553 (regex!7424 (h!50501 rules!3756)) Nil!45080 (size!33420 Nil!45080) input!3238 input!3238 (size!33420 input!3238)))))))

(declare-fun b!4150835 () Bool)

(declare-fun res!1699716 () Bool)

(assert (=> b!4150835 (=> (not res!1699716) (not e!2575369))))

(assert (=> b!4150835 (= res!1699716 (= (value!232138 (_1!24855 (get!14720 lt!1480393))) (apply!10497 (transformation!7424 (rule!10560 (_1!24855 (get!14720 lt!1480393)))) (seqFromList!5541 (originalCharacters!7920 (_1!24855 (get!14720 lt!1480393)))))))))

(declare-fun b!4150836 () Bool)

(assert (=> b!4150836 (= e!2575367 e!2575369)))

(declare-fun res!1699715 () Bool)

(assert (=> b!4150836 (=> (not res!1699715) (not e!2575369))))

(assert (=> b!4150836 (= res!1699715 (matchR!6158 (regex!7424 (h!50501 rules!3756)) (list!16492 (charsOf!5012 (_1!24855 (get!14720 lt!1480393))))))))

(declare-fun b!4150837 () Bool)

(declare-fun size!33422 (BalanceConc!26864) Int)

(assert (=> b!4150837 (= e!2575366 (Some!9729 (tuple2!43443 (Token!13779 (apply!10497 (transformation!7424 (h!50501 rules!3756)) (seqFromList!5541 (_1!24857 lt!1480394))) (h!50501 rules!3756) (size!33422 (seqFromList!5541 (_1!24857 lt!1480394))) (_1!24857 lt!1480394)) (_2!24857 lt!1480394))))))

(declare-fun lt!1480392 () Unit!64355)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1526 (Regex!12329 List!45204) Unit!64355)

(assert (=> b!4150837 (= lt!1480392 (longestMatchIsAcceptedByMatchOrIsEmpty!1526 (regex!7424 (h!50501 rules!3756)) input!3238))))

(declare-fun res!1699719 () Bool)

(assert (=> b!4150837 (= res!1699719 (isEmpty!26914 (_1!24857 (findLongestMatchInner!1553 (regex!7424 (h!50501 rules!3756)) Nil!45080 (size!33420 Nil!45080) input!3238 input!3238 (size!33420 input!3238)))))))

(assert (=> b!4150837 (=> res!1699719 e!2575368)))

(assert (=> b!4150837 e!2575368))

(declare-fun lt!1480391 () Unit!64355)

(assert (=> b!4150837 (= lt!1480391 lt!1480392)))

(declare-fun lt!1480395 () Unit!64355)

(assert (=> b!4150837 (= lt!1480395 (lemmaSemiInverse!2282 (transformation!7424 (h!50501 rules!3756)) (seqFromList!5541 (_1!24857 lt!1480394))))))

(declare-fun b!4150838 () Bool)

(assert (=> b!4150838 (= e!2575369 (= (size!33419 (_1!24855 (get!14720 lt!1480393))) (size!33420 (originalCharacters!7920 (_1!24855 (get!14720 lt!1480393))))))))

(assert (= (and d!1227929 c!710917) b!4150833))

(assert (= (and d!1227929 (not c!710917)) b!4150837))

(assert (= (and b!4150837 (not res!1699719)) b!4150834))

(assert (= (and d!1227929 (not res!1699717)) b!4150836))

(assert (= (and b!4150836 res!1699715) b!4150830))

(assert (= (and b!4150830 res!1699718) b!4150832))

(assert (= (and b!4150832 res!1699714) b!4150831))

(assert (= (and b!4150831 res!1699720) b!4150835))

(assert (= (and b!4150835 res!1699716) b!4150838))

(declare-fun m!4746459 () Bool)

(assert (=> b!4150836 m!4746459))

(declare-fun m!4746461 () Bool)

(assert (=> b!4150836 m!4746461))

(assert (=> b!4150836 m!4746461))

(declare-fun m!4746463 () Bool)

(assert (=> b!4150836 m!4746463))

(assert (=> b!4150836 m!4746463))

(declare-fun m!4746465 () Bool)

(assert (=> b!4150836 m!4746465))

(assert (=> b!4150832 m!4746459))

(declare-fun m!4746467 () Bool)

(assert (=> b!4150832 m!4746467))

(assert (=> b!4150832 m!4746301))

(declare-fun m!4746469 () Bool)

(assert (=> b!4150834 m!4746469))

(assert (=> b!4150834 m!4746301))

(assert (=> b!4150834 m!4746469))

(assert (=> b!4150834 m!4746301))

(declare-fun m!4746471 () Bool)

(assert (=> b!4150834 m!4746471))

(declare-fun m!4746473 () Bool)

(assert (=> b!4150834 m!4746473))

(assert (=> b!4150831 m!4746459))

(assert (=> b!4150838 m!4746459))

(declare-fun m!4746475 () Bool)

(assert (=> b!4150838 m!4746475))

(declare-fun m!4746477 () Bool)

(assert (=> b!4150837 m!4746477))

(declare-fun m!4746479 () Bool)

(assert (=> b!4150837 m!4746479))

(assert (=> b!4150837 m!4746469))

(assert (=> b!4150837 m!4746477))

(assert (=> b!4150837 m!4746477))

(declare-fun m!4746481 () Bool)

(assert (=> b!4150837 m!4746481))

(declare-fun m!4746483 () Bool)

(assert (=> b!4150837 m!4746483))

(declare-fun m!4746485 () Bool)

(assert (=> b!4150837 m!4746485))

(assert (=> b!4150837 m!4746301))

(assert (=> b!4150837 m!4746477))

(declare-fun m!4746487 () Bool)

(assert (=> b!4150837 m!4746487))

(assert (=> b!4150837 m!4746469))

(assert (=> b!4150837 m!4746301))

(assert (=> b!4150837 m!4746471))

(assert (=> b!4150830 m!4746459))

(assert (=> b!4150830 m!4746461))

(assert (=> b!4150830 m!4746461))

(assert (=> b!4150830 m!4746463))

(assert (=> b!4150830 m!4746463))

(declare-fun m!4746489 () Bool)

(assert (=> b!4150830 m!4746489))

(declare-fun m!4746491 () Bool)

(assert (=> d!1227929 m!4746491))

(declare-fun m!4746493 () Bool)

(assert (=> d!1227929 m!4746493))

(declare-fun m!4746495 () Bool)

(assert (=> d!1227929 m!4746495))

(declare-fun m!4746497 () Bool)

(assert (=> d!1227929 m!4746497))

(assert (=> b!4150835 m!4746459))

(declare-fun m!4746499 () Bool)

(assert (=> b!4150835 m!4746499))

(assert (=> b!4150835 m!4746499))

(declare-fun m!4746501 () Bool)

(assert (=> b!4150835 m!4746501))

(assert (=> b!4150529 d!1227929))

(declare-fun d!1227931 () Bool)

(assert (=> d!1227931 (rulesInvariant!6310 thiss!25645 (t!343108 rules!3756))))

(declare-fun lt!1480398 () Unit!64355)

(declare-fun choose!25419 (LexerInterface!7013 Rule!14648 List!45205) Unit!64355)

(assert (=> d!1227931 (= lt!1480398 (choose!25419 thiss!25645 (h!50501 rules!3756) (t!343108 rules!3756)))))

(assert (=> d!1227931 (rulesInvariant!6310 thiss!25645 (Cons!45081 (h!50501 rules!3756) (t!343108 rules!3756)))))

(assert (=> d!1227931 (= (lemmaInvariantOnRulesThenOnTail!836 thiss!25645 (h!50501 rules!3756) (t!343108 rules!3756)) lt!1480398)))

(declare-fun bs!595438 () Bool)

(assert (= bs!595438 d!1227931))

(assert (=> bs!595438 m!4746189))

(declare-fun m!4746503 () Bool)

(assert (=> bs!595438 m!4746503))

(declare-fun m!4746505 () Bool)

(assert (=> bs!595438 m!4746505))

(assert (=> b!4150529 d!1227931))

(declare-fun b!4150839 () Bool)

(declare-fun res!1699725 () Bool)

(declare-fun e!2575371 () Bool)

(assert (=> b!4150839 (=> (not res!1699725) (not e!2575371))))

(declare-fun lt!1480403 () Option!9730)

(assert (=> b!4150839 (= res!1699725 (matchR!6158 (regex!7424 (rule!10560 (_1!24855 (get!14720 lt!1480403)))) (list!16492 (charsOf!5012 (_1!24855 (get!14720 lt!1480403))))))))

(declare-fun b!4150840 () Bool)

(declare-fun e!2575372 () Option!9730)

(declare-fun lt!1480400 () Option!9730)

(declare-fun lt!1480399 () Option!9730)

(assert (=> b!4150840 (= e!2575372 (ite (and ((_ is None!9729) lt!1480400) ((_ is None!9729) lt!1480399)) None!9729 (ite ((_ is None!9729) lt!1480399) lt!1480400 (ite ((_ is None!9729) lt!1480400) lt!1480399 (ite (>= (size!33419 (_1!24855 (v!40393 lt!1480400))) (size!33419 (_1!24855 (v!40393 lt!1480399)))) lt!1480400 lt!1480399)))))))

(declare-fun call!290737 () Option!9730)

(assert (=> b!4150840 (= lt!1480400 call!290737)))

(assert (=> b!4150840 (= lt!1480399 (maxPrefix!4203 thiss!25645 (t!343108 (t!343108 rules!3756)) input!3238))))

(declare-fun bm!290732 () Bool)

(assert (=> bm!290732 (= call!290737 (maxPrefixOneRule!3142 thiss!25645 (h!50501 (t!343108 rules!3756)) input!3238))))

(declare-fun b!4150841 () Bool)

(assert (=> b!4150841 (= e!2575371 (contains!9110 (t!343108 rules!3756) (rule!10560 (_1!24855 (get!14720 lt!1480403)))))))

(declare-fun b!4150842 () Bool)

(assert (=> b!4150842 (= e!2575372 call!290737)))

(declare-fun b!4150843 () Bool)

(declare-fun res!1699727 () Bool)

(assert (=> b!4150843 (=> (not res!1699727) (not e!2575371))))

(assert (=> b!4150843 (= res!1699727 (= (list!16492 (charsOf!5012 (_1!24855 (get!14720 lt!1480403)))) (originalCharacters!7920 (_1!24855 (get!14720 lt!1480403)))))))

(declare-fun b!4150844 () Bool)

(declare-fun res!1699721 () Bool)

(assert (=> b!4150844 (=> (not res!1699721) (not e!2575371))))

(assert (=> b!4150844 (= res!1699721 (= (++!11649 (list!16492 (charsOf!5012 (_1!24855 (get!14720 lt!1480403)))) (_2!24855 (get!14720 lt!1480403))) input!3238))))

(declare-fun b!4150845 () Bool)

(declare-fun res!1699724 () Bool)

(assert (=> b!4150845 (=> (not res!1699724) (not e!2575371))))

(assert (=> b!4150845 (= res!1699724 (= (value!232138 (_1!24855 (get!14720 lt!1480403))) (apply!10497 (transformation!7424 (rule!10560 (_1!24855 (get!14720 lt!1480403)))) (seqFromList!5541 (originalCharacters!7920 (_1!24855 (get!14720 lt!1480403)))))))))

(declare-fun d!1227933 () Bool)

(declare-fun e!2575370 () Bool)

(assert (=> d!1227933 e!2575370))

(declare-fun res!1699722 () Bool)

(assert (=> d!1227933 (=> res!1699722 e!2575370)))

(assert (=> d!1227933 (= res!1699722 (isEmpty!26916 lt!1480403))))

(assert (=> d!1227933 (= lt!1480403 e!2575372)))

(declare-fun c!710918 () Bool)

(assert (=> d!1227933 (= c!710918 (and ((_ is Cons!45081) (t!343108 rules!3756)) ((_ is Nil!45081) (t!343108 (t!343108 rules!3756)))))))

(declare-fun lt!1480402 () Unit!64355)

(declare-fun lt!1480401 () Unit!64355)

(assert (=> d!1227933 (= lt!1480402 lt!1480401)))

(assert (=> d!1227933 (isPrefix!4359 input!3238 input!3238)))

(assert (=> d!1227933 (= lt!1480401 (lemmaIsPrefixRefl!2811 input!3238 input!3238))))

(assert (=> d!1227933 (rulesValidInductive!2763 thiss!25645 (t!343108 rules!3756))))

(assert (=> d!1227933 (= (maxPrefix!4203 thiss!25645 (t!343108 rules!3756) input!3238) lt!1480403)))

(declare-fun b!4150846 () Bool)

(declare-fun res!1699723 () Bool)

(assert (=> b!4150846 (=> (not res!1699723) (not e!2575371))))

(assert (=> b!4150846 (= res!1699723 (< (size!33420 (_2!24855 (get!14720 lt!1480403))) (size!33420 input!3238)))))

(declare-fun b!4150847 () Bool)

(assert (=> b!4150847 (= e!2575370 e!2575371)))

(declare-fun res!1699726 () Bool)

(assert (=> b!4150847 (=> (not res!1699726) (not e!2575371))))

(assert (=> b!4150847 (= res!1699726 (isDefined!7303 lt!1480403))))

(assert (= (and d!1227933 c!710918) b!4150842))

(assert (= (and d!1227933 (not c!710918)) b!4150840))

(assert (= (or b!4150842 b!4150840) bm!290732))

(assert (= (and d!1227933 (not res!1699722)) b!4150847))

(assert (= (and b!4150847 res!1699726) b!4150843))

(assert (= (and b!4150843 res!1699727) b!4150846))

(assert (= (and b!4150846 res!1699723) b!4150844))

(assert (= (and b!4150844 res!1699721) b!4150845))

(assert (= (and b!4150845 res!1699724) b!4150839))

(assert (= (and b!4150839 res!1699725) b!4150841))

(declare-fun m!4746507 () Bool)

(assert (=> d!1227933 m!4746507))

(assert (=> d!1227933 m!4746281))

(assert (=> d!1227933 m!4746283))

(declare-fun m!4746509 () Bool)

(assert (=> d!1227933 m!4746509))

(declare-fun m!4746511 () Bool)

(assert (=> b!4150847 m!4746511))

(declare-fun m!4746513 () Bool)

(assert (=> b!4150845 m!4746513))

(declare-fun m!4746515 () Bool)

(assert (=> b!4150845 m!4746515))

(assert (=> b!4150845 m!4746515))

(declare-fun m!4746517 () Bool)

(assert (=> b!4150845 m!4746517))

(assert (=> b!4150843 m!4746513))

(declare-fun m!4746519 () Bool)

(assert (=> b!4150843 m!4746519))

(assert (=> b!4150843 m!4746519))

(declare-fun m!4746521 () Bool)

(assert (=> b!4150843 m!4746521))

(declare-fun m!4746523 () Bool)

(assert (=> bm!290732 m!4746523))

(assert (=> b!4150846 m!4746513))

(declare-fun m!4746525 () Bool)

(assert (=> b!4150846 m!4746525))

(assert (=> b!4150846 m!4746301))

(declare-fun m!4746527 () Bool)

(assert (=> b!4150840 m!4746527))

(assert (=> b!4150844 m!4746513))

(assert (=> b!4150844 m!4746519))

(assert (=> b!4150844 m!4746519))

(assert (=> b!4150844 m!4746521))

(assert (=> b!4150844 m!4746521))

(declare-fun m!4746529 () Bool)

(assert (=> b!4150844 m!4746529))

(assert (=> b!4150841 m!4746513))

(declare-fun m!4746531 () Bool)

(assert (=> b!4150841 m!4746531))

(assert (=> b!4150839 m!4746513))

(assert (=> b!4150839 m!4746519))

(assert (=> b!4150839 m!4746519))

(assert (=> b!4150839 m!4746521))

(assert (=> b!4150839 m!4746521))

(declare-fun m!4746533 () Bool)

(assert (=> b!4150839 m!4746533))

(assert (=> b!4150529 d!1227933))

(declare-fun d!1227935 () Bool)

(assert (=> d!1227935 (= (isEmpty!26915 (t!343108 rules!3756)) ((_ is Nil!45081) (t!343108 rules!3756)))))

(assert (=> b!4150529 d!1227935))

(declare-fun d!1227937 () Bool)

(assert (=> d!1227937 (= (isEmpty!26914 p!2912) ((_ is Nil!45080) p!2912))))

(assert (=> b!4150516 d!1227937))

(declare-fun b!4150866 () Bool)

(declare-fun e!2575384 () Int)

(assert (=> b!4150866 (= e!2575384 0)))

(declare-fun d!1227939 () Bool)

(declare-fun lt!1480407 () Int)

(assert (=> d!1227939 (>= lt!1480407 0)))

(assert (=> d!1227939 (= lt!1480407 e!2575384)))

(declare-fun c!710924 () Bool)

(assert (=> d!1227939 (= c!710924 (and ((_ is Cons!45081) rules!3756) (= (h!50501 rules!3756) rBis!149)))))

(assert (=> d!1227939 (contains!9110 rules!3756 rBis!149)))

(assert (=> d!1227939 (= (getIndex!770 rules!3756 rBis!149) lt!1480407)))

(declare-fun b!4150869 () Bool)

(declare-fun e!2575385 () Int)

(assert (=> b!4150869 (= e!2575385 (- 1))))

(declare-fun b!4150867 () Bool)

(assert (=> b!4150867 (= e!2575384 e!2575385)))

(declare-fun c!710923 () Bool)

(assert (=> b!4150867 (= c!710923 (and ((_ is Cons!45081) rules!3756) (not (= (h!50501 rules!3756) rBis!149))))))

(declare-fun b!4150868 () Bool)

(assert (=> b!4150868 (= e!2575385 (+ 1 (getIndex!770 (t!343108 rules!3756) rBis!149)))))

(assert (= (and d!1227939 c!710924) b!4150866))

(assert (= (and d!1227939 (not c!710924)) b!4150867))

(assert (= (and b!4150867 c!710923) b!4150868))

(assert (= (and b!4150867 (not c!710923)) b!4150869))

(assert (=> d!1227939 m!4746155))

(declare-fun m!4746547 () Bool)

(assert (=> b!4150868 m!4746547))

(assert (=> b!4150517 d!1227939))

(declare-fun b!4150874 () Bool)

(declare-fun e!2575388 () Int)

(assert (=> b!4150874 (= e!2575388 0)))

(declare-fun d!1227943 () Bool)

(declare-fun lt!1480410 () Int)

(assert (=> d!1227943 (>= lt!1480410 0)))

(assert (=> d!1227943 (= lt!1480410 e!2575388)))

(declare-fun c!710928 () Bool)

(assert (=> d!1227943 (= c!710928 (and ((_ is Cons!45081) rules!3756) (= (h!50501 rules!3756) r!4008)))))

(assert (=> d!1227943 (contains!9110 rules!3756 r!4008)))

(assert (=> d!1227943 (= (getIndex!770 rules!3756 r!4008) lt!1480410)))

(declare-fun b!4150877 () Bool)

(declare-fun e!2575389 () Int)

(assert (=> b!4150877 (= e!2575389 (- 1))))

(declare-fun b!4150875 () Bool)

(assert (=> b!4150875 (= e!2575388 e!2575389)))

(declare-fun c!710927 () Bool)

(assert (=> b!4150875 (= c!710927 (and ((_ is Cons!45081) rules!3756) (not (= (h!50501 rules!3756) r!4008))))))

(declare-fun b!4150876 () Bool)

(assert (=> b!4150876 (= e!2575389 (+ 1 (getIndex!770 (t!343108 rules!3756) r!4008)))))

(assert (= (and d!1227943 c!710928) b!4150874))

(assert (= (and d!1227943 (not c!710928)) b!4150875))

(assert (= (and b!4150875 c!710927) b!4150876))

(assert (= (and b!4150875 (not c!710927)) b!4150877))

(assert (=> d!1227943 m!4746147))

(declare-fun m!4746549 () Bool)

(assert (=> b!4150876 m!4746549))

(assert (=> b!4150517 d!1227943))

(declare-fun b!4150882 () Bool)

(declare-fun e!2575392 () Bool)

(declare-fun tp!1265147 () Bool)

(assert (=> b!4150882 (= e!2575392 (and tp_is_empty!21581 tp!1265147))))

(assert (=> b!4150515 (= tp!1265131 e!2575392)))

(assert (= (and b!4150515 ((_ is Cons!45080) (t!343107 input!3238))) b!4150882))

(declare-fun b!4150904 () Bool)

(declare-fun b_free!118615 () Bool)

(declare-fun b_next!119319 () Bool)

(assert (=> b!4150904 (= b_free!118615 (not b_next!119319))))

(declare-fun t!343134 () Bool)

(declare-fun tb!249147 () Bool)

(assert (=> (and b!4150904 (= (toValue!10088 (transformation!7424 (h!50501 (t!343108 rules!3756)))) (toValue!10088 (transformation!7424 r!4008))) t!343134) tb!249147))

(declare-fun result!303096 () Bool)

(assert (= result!303096 result!303060))

(assert (=> d!1227855 t!343134))

(assert (=> d!1227885 t!343134))

(declare-fun tp!1265159 () Bool)

(declare-fun b_and!322869 () Bool)

(assert (=> b!4150904 (= tp!1265159 (and (=> t!343134 result!303096) b_and!322869))))

(declare-fun b_free!118617 () Bool)

(declare-fun b_next!119321 () Bool)

(assert (=> b!4150904 (= b_free!118617 (not b_next!119321))))

(declare-fun t!343136 () Bool)

(declare-fun tb!249149 () Bool)

(assert (=> (and b!4150904 (= (toChars!9947 (transformation!7424 (h!50501 (t!343108 rules!3756)))) (toChars!9947 (transformation!7424 r!4008))) t!343136) tb!249149))

(declare-fun result!303098 () Bool)

(assert (= result!303098 result!303076))

(assert (=> d!1227885 t!343136))

(declare-fun b_and!322871 () Bool)

(declare-fun tp!1265158 () Bool)

(assert (=> b!4150904 (= tp!1265158 (and (=> t!343136 result!303098) b_and!322871))))

(declare-fun e!2575407 () Bool)

(assert (=> b!4150904 (= e!2575407 (and tp!1265159 tp!1265158))))

(declare-fun b!4150903 () Bool)

(declare-fun e!2575405 () Bool)

(declare-fun tp!1265156 () Bool)

(assert (=> b!4150903 (= e!2575405 (and tp!1265156 (inv!59689 (tag!8284 (h!50501 (t!343108 rules!3756)))) (inv!59691 (transformation!7424 (h!50501 (t!343108 rules!3756)))) e!2575407))))

(declare-fun b!4150902 () Bool)

(declare-fun e!2575408 () Bool)

(declare-fun tp!1265157 () Bool)

(assert (=> b!4150902 (= e!2575408 (and e!2575405 tp!1265157))))

(assert (=> b!4150531 (= tp!1265134 e!2575408)))

(assert (= b!4150903 b!4150904))

(assert (= b!4150902 b!4150903))

(assert (= (and b!4150531 ((_ is Cons!45081) (t!343108 rules!3756))) b!4150902))

(declare-fun m!4746559 () Bool)

(assert (=> b!4150903 m!4746559))

(declare-fun m!4746563 () Bool)

(assert (=> b!4150903 m!4746563))

(declare-fun b!4150905 () Bool)

(declare-fun e!2575409 () Bool)

(declare-fun tp!1265160 () Bool)

(assert (=> b!4150905 (= e!2575409 (and tp_is_empty!21581 tp!1265160))))

(assert (=> b!4150524 (= tp!1265135 e!2575409)))

(assert (= (and b!4150524 ((_ is Cons!45080) (t!343107 p!2912))) b!4150905))

(declare-fun b!4150919 () Bool)

(declare-fun e!2575412 () Bool)

(declare-fun tp!1265174 () Bool)

(declare-fun tp!1265171 () Bool)

(assert (=> b!4150919 (= e!2575412 (and tp!1265174 tp!1265171))))

(declare-fun b!4150917 () Bool)

(declare-fun tp!1265173 () Bool)

(declare-fun tp!1265175 () Bool)

(assert (=> b!4150917 (= e!2575412 (and tp!1265173 tp!1265175))))

(declare-fun b!4150918 () Bool)

(declare-fun tp!1265172 () Bool)

(assert (=> b!4150918 (= e!2575412 tp!1265172)))

(assert (=> b!4150525 (= tp!1265136 e!2575412)))

(declare-fun b!4150916 () Bool)

(assert (=> b!4150916 (= e!2575412 tp_is_empty!21581)))

(assert (= (and b!4150525 ((_ is ElementMatch!12329) (regex!7424 (h!50501 rules!3756)))) b!4150916))

(assert (= (and b!4150525 ((_ is Concat!19984) (regex!7424 (h!50501 rules!3756)))) b!4150917))

(assert (= (and b!4150525 ((_ is Star!12329) (regex!7424 (h!50501 rules!3756)))) b!4150918))

(assert (= (and b!4150525 ((_ is Union!12329) (regex!7424 (h!50501 rules!3756)))) b!4150919))

(declare-fun b!4150923 () Bool)

(declare-fun e!2575413 () Bool)

(declare-fun tp!1265179 () Bool)

(declare-fun tp!1265176 () Bool)

(assert (=> b!4150923 (= e!2575413 (and tp!1265179 tp!1265176))))

(declare-fun b!4150921 () Bool)

(declare-fun tp!1265178 () Bool)

(declare-fun tp!1265180 () Bool)

(assert (=> b!4150921 (= e!2575413 (and tp!1265178 tp!1265180))))

(declare-fun b!4150922 () Bool)

(declare-fun tp!1265177 () Bool)

(assert (=> b!4150922 (= e!2575413 tp!1265177)))

(assert (=> b!4150523 (= tp!1265133 e!2575413)))

(declare-fun b!4150920 () Bool)

(assert (=> b!4150920 (= e!2575413 tp_is_empty!21581)))

(assert (= (and b!4150523 ((_ is ElementMatch!12329) (regex!7424 rBis!149))) b!4150920))

(assert (= (and b!4150523 ((_ is Concat!19984) (regex!7424 rBis!149))) b!4150921))

(assert (= (and b!4150523 ((_ is Star!12329) (regex!7424 rBis!149))) b!4150922))

(assert (= (and b!4150523 ((_ is Union!12329) (regex!7424 rBis!149))) b!4150923))

(declare-fun b!4150927 () Bool)

(declare-fun e!2575414 () Bool)

(declare-fun tp!1265184 () Bool)

(declare-fun tp!1265181 () Bool)

(assert (=> b!4150927 (= e!2575414 (and tp!1265184 tp!1265181))))

(declare-fun b!4150925 () Bool)

(declare-fun tp!1265183 () Bool)

(declare-fun tp!1265185 () Bool)

(assert (=> b!4150925 (= e!2575414 (and tp!1265183 tp!1265185))))

(declare-fun b!4150926 () Bool)

(declare-fun tp!1265182 () Bool)

(assert (=> b!4150926 (= e!2575414 tp!1265182)))

(assert (=> b!4150534 (= tp!1265128 e!2575414)))

(declare-fun b!4150924 () Bool)

(assert (=> b!4150924 (= e!2575414 tp_is_empty!21581)))

(assert (= (and b!4150534 ((_ is ElementMatch!12329) (regex!7424 r!4008))) b!4150924))

(assert (= (and b!4150534 ((_ is Concat!19984) (regex!7424 r!4008))) b!4150925))

(assert (= (and b!4150534 ((_ is Star!12329) (regex!7424 r!4008))) b!4150926))

(assert (= (and b!4150534 ((_ is Union!12329) (regex!7424 r!4008))) b!4150927))

(declare-fun b_lambda!122075 () Bool)

(assert (= b_lambda!122069 (or (and b!4150513 b_free!118603 (= (toValue!10088 (transformation!7424 rBis!149)) (toValue!10088 (transformation!7424 r!4008)))) (and b!4150528 b_free!118607 (= (toValue!10088 (transformation!7424 (h!50501 rules!3756))) (toValue!10088 (transformation!7424 r!4008)))) (and b!4150527 b_free!118611) (and b!4150904 b_free!118615 (= (toValue!10088 (transformation!7424 (h!50501 (t!343108 rules!3756)))) (toValue!10088 (transformation!7424 r!4008)))) b_lambda!122075)))

(declare-fun b_lambda!122077 () Bool)

(assert (= b_lambda!122063 (or (and b!4150513 b_free!118603 (= (toValue!10088 (transformation!7424 rBis!149)) (toValue!10088 (transformation!7424 r!4008)))) (and b!4150528 b_free!118607 (= (toValue!10088 (transformation!7424 (h!50501 rules!3756))) (toValue!10088 (transformation!7424 r!4008)))) (and b!4150527 b_free!118611) (and b!4150904 b_free!118615 (= (toValue!10088 (transformation!7424 (h!50501 (t!343108 rules!3756)))) (toValue!10088 (transformation!7424 r!4008)))) b_lambda!122077)))

(declare-fun b_lambda!122079 () Bool)

(assert (= b_lambda!122067 (or (and b!4150513 b_free!118605 (= (toChars!9947 (transformation!7424 rBis!149)) (toChars!9947 (transformation!7424 r!4008)))) (and b!4150528 b_free!118609 (= (toChars!9947 (transformation!7424 (h!50501 rules!3756))) (toChars!9947 (transformation!7424 r!4008)))) (and b!4150527 b_free!118613) (and b!4150904 b_free!118617 (= (toChars!9947 (transformation!7424 (h!50501 (t!343108 rules!3756)))) (toChars!9947 (transformation!7424 r!4008)))) b_lambda!122079)))

(check-sat (not d!1227943) (not d!1227911) (not b!4150903) (not b_next!119307) (not b!4150845) (not d!1227921) (not d!1227883) b_and!322871 (not d!1227913) (not b_next!119311) (not d!1227829) (not b!4150925) (not d!1227917) (not tb!249135) (not b!4150810) (not bm!290732) (not bm!290728) (not b!4150808) (not b!4150796) b_and!322851 (not b!4150832) (not b!4150844) (not b!4150587) (not b!4150847) (not d!1227841) (not b!4150905) b_and!322847 (not b!4150565) (not b_next!119317) (not b!4150798) (not d!1227847) (not tb!249123) (not d!1227827) (not b!4150570) (not b!4150841) (not b_next!119315) (not b!4150902) (not d!1227933) (not b!4150918) (not b!4150838) (not d!1227939) (not b!4150708) (not b!4150702) (not b_lambda!122079) (not b!4150793) b_and!322855 (not d!1227927) (not b!4150834) (not b!4150581) (not bm!290722) (not d!1227929) (not b!4150876) (not b!4150882) (not d!1227853) (not d!1227879) (not b_next!119321) (not b!4150701) (not b!4150695) (not b!4150699) (not b!4150694) (not b!4150566) (not b!4150607) (not b!4150927) (not b!4150921) (not d!1227885) (not d!1227851) (not b!4150843) (not b!4150572) (not b_next!119309) (not d!1227849) (not b!4150917) (not b!4150700) (not d!1227931) (not b!4150795) (not b!4150840) (not b!4150830) (not d!1227835) (not b_next!119319) (not d!1227925) b_and!322849 (not b!4150594) (not b!4150696) b_and!322853 (not b!4150612) (not b!4150573) (not b!4150593) (not b_lambda!122077) (not b_lambda!122075) (not b!4150713) (not b!4150922) (not b!4150923) (not b!4150846) (not b!4150837) (not b!4150809) b_and!322845 (not b!4150811) (not d!1227915) (not b!4150919) (not d!1227859) (not b!4150835) tp_is_empty!21581 (not b!4150610) (not b!4150831) b_and!322869 (not b!4150567) (not b_next!119313) (not b!4150926) (not b!4150836) (not b!4150839) (not b!4150868) (not b!4150698))
(check-sat (not b_next!119307) b_and!322871 (not b_next!119311) b_and!322851 b_and!322847 (not b_next!119317) (not b_next!119315) b_and!322855 (not b_next!119321) (not b_next!119309) b_and!322853 b_and!322845 b_and!322869 (not b_next!119313) (not b_next!119319) b_and!322849)
