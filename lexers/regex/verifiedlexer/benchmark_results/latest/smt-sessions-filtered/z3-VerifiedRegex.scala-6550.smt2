; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346234 () Bool)

(assert start!346234)

(declare-fun b!3685574 () Bool)

(declare-fun b_free!97757 () Bool)

(declare-fun b_next!98461 () Bool)

(assert (=> b!3685574 (= b_free!97757 (not b_next!98461))))

(declare-fun tp!1120273 () Bool)

(declare-fun b_and!275439 () Bool)

(assert (=> b!3685574 (= tp!1120273 b_and!275439)))

(declare-fun b_free!97759 () Bool)

(declare-fun b_next!98463 () Bool)

(assert (=> b!3685574 (= b_free!97759 (not b_next!98463))))

(declare-fun tp!1120271 () Bool)

(declare-fun b_and!275441 () Bool)

(assert (=> b!3685574 (= tp!1120271 b_and!275441)))

(declare-fun b!3685570 () Bool)

(declare-fun e!2282299 () Bool)

(assert (=> b!3685570 (= e!2282299 true)))

(assert (=> b!3685570 false))

(declare-datatypes ((C!21464 0))(
  ( (C!21465 (val!12780 Int)) )
))
(declare-datatypes ((List!39090 0))(
  ( (Nil!38966) (Cons!38966 (h!44386 C!21464) (t!301065 List!39090)) )
))
(declare-fun lt!1289726 () List!39090)

(declare-datatypes ((List!39091 0))(
  ( (Nil!38967) (Cons!38967 (h!44387 (_ BitVec 16)) (t!301066 List!39091)) )
))
(declare-datatypes ((TokenValue!6110 0))(
  ( (FloatLiteralValue!12220 (text!43215 List!39091)) (TokenValueExt!6109 (__x!24437 Int)) (Broken!30550 (value!188014 List!39091)) (Object!6233) (End!6110) (Def!6110) (Underscore!6110) (Match!6110) (Else!6110) (Error!6110) (Case!6110) (If!6110) (Extends!6110) (Abstract!6110) (Class!6110) (Val!6110) (DelimiterValue!12220 (del!6170 List!39091)) (KeywordValue!6116 (value!188015 List!39091)) (CommentValue!12220 (value!188016 List!39091)) (WhitespaceValue!12220 (value!188017 List!39091)) (IndentationValue!6110 (value!188018 List!39091)) (String!43883) (Int32!6110) (Broken!30551 (value!188019 List!39091)) (Boolean!6111) (Unit!57035) (OperatorValue!6113 (op!6170 List!39091)) (IdentifierValue!12220 (value!188020 List!39091)) (IdentifierValue!12221 (value!188021 List!39091)) (WhitespaceValue!12221 (value!188022 List!39091)) (True!12220) (False!12220) (Broken!30552 (value!188023 List!39091)) (Broken!30553 (value!188024 List!39091)) (True!12221) (RightBrace!6110) (RightBracket!6110) (Colon!6110) (Null!6110) (Comma!6110) (LeftBracket!6110) (False!12221) (LeftBrace!6110) (ImaginaryLiteralValue!6110 (text!43216 List!39091)) (StringLiteralValue!18330 (value!188025 List!39091)) (EOFValue!6110 (value!188026 List!39091)) (IdentValue!6110 (value!188027 List!39091)) (DelimiterValue!12221 (value!188028 List!39091)) (DedentValue!6110 (value!188029 List!39091)) (NewLineValue!6110 (value!188030 List!39091)) (IntegerValue!18330 (value!188031 (_ BitVec 32)) (text!43217 List!39091)) (IntegerValue!18331 (value!188032 Int) (text!43218 List!39091)) (Times!6110) (Or!6110) (Equal!6110) (Minus!6110) (Broken!30554 (value!188033 List!39091)) (And!6110) (Div!6110) (LessEqual!6110) (Mod!6110) (Concat!16749) (Not!6110) (Plus!6110) (SpaceValue!6110 (value!188034 List!39091)) (IntegerValue!18332 (value!188035 Int) (text!43219 List!39091)) (StringLiteralValue!18331 (text!43220 List!39091)) (FloatLiteralValue!12221 (text!43221 List!39091)) (BytesLiteralValue!6110 (value!188036 List!39091)) (CommentValue!12221 (value!188037 List!39091)) (StringLiteralValue!18332 (value!188038 List!39091)) (ErrorTokenValue!6110 (msg!6171 List!39091)) )
))
(declare-datatypes ((IArray!23905 0))(
  ( (IArray!23906 (innerList!12010 List!39090)) )
))
(declare-datatypes ((Regex!10639 0))(
  ( (ElementMatch!10639 (c!637497 C!21464)) (Concat!16750 (regOne!21790 Regex!10639) (regTwo!21790 Regex!10639)) (EmptyExpr!10639) (Star!10639 (reg!10968 Regex!10639)) (EmptyLang!10639) (Union!10639 (regOne!21791 Regex!10639) (regTwo!21791 Regex!10639)) )
))
(declare-datatypes ((Conc!11950 0))(
  ( (Node!11950 (left!30396 Conc!11950) (right!30726 Conc!11950) (csize!24130 Int) (cheight!12161 Int)) (Leaf!18501 (xs!15152 IArray!23905) (csize!24131 Int)) (Empty!11950) )
))
(declare-datatypes ((BalanceConc!23514 0))(
  ( (BalanceConc!23515 (c!637498 Conc!11950)) )
))
(declare-datatypes ((String!43884 0))(
  ( (String!43885 (value!188039 String)) )
))
(declare-datatypes ((TokenValueInjection!11648 0))(
  ( (TokenValueInjection!11649 (toValue!8188 Int) (toChars!8047 Int)) )
))
(declare-datatypes ((Rule!11560 0))(
  ( (Rule!11561 (regex!5880 Regex!10639) (tag!6690 String!43884) (isSeparator!5880 Bool) (transformation!5880 TokenValueInjection!11648)) )
))
(declare-datatypes ((Token!11126 0))(
  ( (Token!11127 (value!188040 TokenValue!6110) (rule!8722 Rule!11560) (size!29776 Int) (originalCharacters!6594 List!39090)) )
))
(declare-fun lt!1289731 () Token!11126)

(declare-datatypes ((LexerInterface!5469 0))(
  ( (LexerInterfaceExt!5466 (__x!24438 Int)) (Lexer!5467) )
))
(declare-fun thiss!25197 () LexerInterface!5469)

(declare-fun lt!1289728 () List!39090)

(declare-datatypes ((Unit!57036 0))(
  ( (Unit!57037) )
))
(declare-fun lt!1289725 () Unit!57036)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!574 (LexerInterface!5469 Rule!11560 List!39090 List!39090) Unit!57036)

(assert (=> b!3685570 (= lt!1289725 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!574 thiss!25197 (rule!8722 lt!1289731) lt!1289728 lt!1289726))))

(declare-datatypes ((tuple2!38848 0))(
  ( (tuple2!38849 (_1!22558 Token!11126) (_2!22558 List!39090)) )
))
(declare-datatypes ((Option!8371 0))(
  ( (None!8370) (Some!8370 (v!38316 tuple2!38848)) )
))
(declare-fun isEmpty!23170 (Option!8371) Bool)

(declare-fun maxPrefixOneRule!2121 (LexerInterface!5469 Rule!11560 List!39090) Option!8371)

(assert (=> b!3685570 (isEmpty!23170 (maxPrefixOneRule!2121 thiss!25197 (rule!8722 lt!1289731) lt!1289726))))

(declare-fun lt!1289732 () Unit!57036)

(declare-datatypes ((List!39092 0))(
  ( (Nil!38968) (Cons!38968 (h!44388 Rule!11560) (t!301067 List!39092)) )
))
(declare-fun rules!3568 () List!39092)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!588 (LexerInterface!5469 Rule!11560 List!39092 List!39090) Unit!57036)

(assert (=> b!3685570 (= lt!1289732 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!588 thiss!25197 (rule!8722 lt!1289731) rules!3568 lt!1289726))))

(declare-fun b!3685571 () Bool)

(declare-fun res!1497613 () Bool)

(assert (=> b!3685571 (=> res!1497613 e!2282299)))

(declare-fun maxPrefix!2997 (LexerInterface!5469 List!39092 List!39090) Option!8371)

(assert (=> b!3685571 (= res!1497613 (not (isEmpty!23170 (maxPrefix!2997 thiss!25197 rules!3568 lt!1289726))))))

(declare-fun b!3685572 () Bool)

(declare-fun e!2282292 () Bool)

(declare-fun lt!1289727 () Rule!11560)

(assert (=> b!3685572 (= e!2282292 (= (rule!8722 lt!1289731) lt!1289727))))

(declare-fun b!3685573 () Bool)

(declare-fun e!2282298 () Bool)

(declare-fun tp_is_empty!18361 () Bool)

(declare-fun tp!1120275 () Bool)

(assert (=> b!3685573 (= e!2282298 (and tp_is_empty!18361 tp!1120275))))

(declare-fun e!2282294 () Bool)

(assert (=> b!3685574 (= e!2282294 (and tp!1120273 tp!1120271))))

(declare-fun b!3685575 () Bool)

(declare-fun e!2282293 () Bool)

(assert (=> b!3685575 (= e!2282293 (not e!2282299))))

(declare-fun res!1497614 () Bool)

(assert (=> b!3685575 (=> res!1497614 e!2282299)))

(declare-fun matchR!5194 (Regex!10639 List!39090) Bool)

(assert (=> b!3685575 (= res!1497614 (not (matchR!5194 (regex!5880 (rule!8722 lt!1289731)) lt!1289728)))))

(declare-fun e!2282290 () Bool)

(assert (=> b!3685575 e!2282290))

(declare-fun res!1497615 () Bool)

(assert (=> b!3685575 (=> (not res!1497615) (not e!2282290))))

(declare-datatypes ((Option!8372 0))(
  ( (None!8371) (Some!8371 (v!38317 Rule!11560)) )
))
(declare-fun lt!1289724 () Option!8372)

(declare-fun isDefined!6581 (Option!8372) Bool)

(assert (=> b!3685575 (= res!1497615 (isDefined!6581 lt!1289724))))

(declare-fun getRuleFromTag!1468 (LexerInterface!5469 List!39092 String!43884) Option!8372)

(assert (=> b!3685575 (= lt!1289724 (getRuleFromTag!1468 thiss!25197 rules!3568 (tag!6690 (rule!8722 lt!1289731))))))

(declare-fun input!3129 () List!39090)

(declare-fun lt!1289733 () Unit!57036)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1468 (LexerInterface!5469 List!39092 List!39090 Token!11126) Unit!57036)

(assert (=> b!3685575 (= lt!1289733 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1468 thiss!25197 rules!3568 input!3129 lt!1289731))))

(declare-fun isPrefix!3233 (List!39090 List!39090) Bool)

(assert (=> b!3685575 (isPrefix!3233 lt!1289728 lt!1289726)))

(declare-fun suffix!1448 () List!39090)

(declare-fun ++!9699 (List!39090 List!39090) List!39090)

(assert (=> b!3685575 (= lt!1289726 (++!9699 input!3129 suffix!1448))))

(declare-fun lt!1289729 () Unit!57036)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!564 (List!39090 List!39090 List!39090) Unit!57036)

(assert (=> b!3685575 (= lt!1289729 (lemmaPrefixStaysPrefixWhenAddingToSuffix!564 lt!1289728 input!3129 suffix!1448))))

(declare-fun lt!1289730 () tuple2!38848)

(assert (=> b!3685575 (isPrefix!3233 lt!1289728 (++!9699 lt!1289728 (_2!22558 lt!1289730)))))

(declare-fun lt!1289734 () Unit!57036)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2150 (List!39090 List!39090) Unit!57036)

(assert (=> b!3685575 (= lt!1289734 (lemmaConcatTwoListThenFirstIsPrefix!2150 lt!1289728 (_2!22558 lt!1289730)))))

(declare-fun get!12912 (Option!8371) tuple2!38848)

(assert (=> b!3685575 (= lt!1289730 (get!12912 (maxPrefix!2997 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14524 (BalanceConc!23514) List!39090)

(declare-fun charsOf!3891 (Token!11126) BalanceConc!23514)

(assert (=> b!3685575 (= lt!1289728 (list!14524 (charsOf!3891 lt!1289731)))))

(declare-datatypes ((List!39093 0))(
  ( (Nil!38969) (Cons!38969 (h!44389 Token!11126) (t!301068 List!39093)) )
))
(declare-datatypes ((IArray!23907 0))(
  ( (IArray!23908 (innerList!12011 List!39093)) )
))
(declare-datatypes ((Conc!11951 0))(
  ( (Node!11951 (left!30397 Conc!11951) (right!30727 Conc!11951) (csize!24132 Int) (cheight!12162 Int)) (Leaf!18502 (xs!15153 IArray!23907) (csize!24133 Int)) (Empty!11951) )
))
(declare-datatypes ((BalanceConc!23516 0))(
  ( (BalanceConc!23517 (c!637499 Conc!11951)) )
))
(declare-datatypes ((tuple2!38850 0))(
  ( (tuple2!38851 (_1!22559 BalanceConc!23516) (_2!22559 BalanceConc!23514)) )
))
(declare-fun lt!1289723 () tuple2!38850)

(declare-fun head!7938 (List!39093) Token!11126)

(declare-fun list!14525 (BalanceConc!23516) List!39093)

(assert (=> b!3685575 (= lt!1289731 (head!7938 (list!14525 (_1!22559 lt!1289723))))))

(declare-fun b!3685576 () Bool)

(declare-fun e!2282295 () Bool)

(declare-fun e!2282300 () Bool)

(declare-fun tp!1120276 () Bool)

(assert (=> b!3685576 (= e!2282295 (and e!2282300 tp!1120276))))

(declare-fun b!3685577 () Bool)

(assert (=> b!3685577 (= e!2282290 e!2282292)))

(declare-fun res!1497616 () Bool)

(assert (=> b!3685577 (=> (not res!1497616) (not e!2282292))))

(assert (=> b!3685577 (= res!1497616 (matchR!5194 (regex!5880 lt!1289727) lt!1289728))))

(declare-fun get!12913 (Option!8372) Rule!11560)

(assert (=> b!3685577 (= lt!1289727 (get!12913 lt!1289724))))

(declare-fun b!3685579 () Bool)

(declare-fun e!2282297 () Bool)

(declare-fun tp!1120272 () Bool)

(assert (=> b!3685579 (= e!2282297 (and tp_is_empty!18361 tp!1120272))))

(declare-fun tp!1120274 () Bool)

(declare-fun b!3685580 () Bool)

(declare-fun inv!52438 (String!43884) Bool)

(declare-fun inv!52440 (TokenValueInjection!11648) Bool)

(assert (=> b!3685580 (= e!2282300 (and tp!1120274 (inv!52438 (tag!6690 (h!44388 rules!3568))) (inv!52440 (transformation!5880 (h!44388 rules!3568))) e!2282294))))

(declare-fun b!3685581 () Bool)

(declare-fun e!2282296 () Bool)

(assert (=> b!3685581 (= e!2282296 e!2282293)))

(declare-fun res!1497617 () Bool)

(assert (=> b!3685581 (=> (not res!1497617) (not e!2282293))))

(declare-fun isEmpty!23171 (BalanceConc!23516) Bool)

(assert (=> b!3685581 (= res!1497617 (not (isEmpty!23171 (_1!22559 lt!1289723))))))

(declare-fun lex!2610 (LexerInterface!5469 List!39092 BalanceConc!23514) tuple2!38850)

(declare-fun seqFromList!4429 (List!39090) BalanceConc!23514)

(assert (=> b!3685581 (= lt!1289723 (lex!2610 thiss!25197 rules!3568 (seqFromList!4429 input!3129)))))

(declare-fun b!3685582 () Bool)

(declare-fun res!1497611 () Bool)

(assert (=> b!3685582 (=> (not res!1497611) (not e!2282296))))

(declare-fun rulesInvariant!4866 (LexerInterface!5469 List!39092) Bool)

(assert (=> b!3685582 (= res!1497611 (rulesInvariant!4866 thiss!25197 rules!3568))))

(declare-fun b!3685578 () Bool)

(declare-fun res!1497612 () Bool)

(assert (=> b!3685578 (=> (not res!1497612) (not e!2282296))))

(declare-fun isEmpty!23172 (List!39092) Bool)

(assert (=> b!3685578 (= res!1497612 (not (isEmpty!23172 rules!3568)))))

(declare-fun res!1497618 () Bool)

(assert (=> start!346234 (=> (not res!1497618) (not e!2282296))))

(get-info :version)

(assert (=> start!346234 (= res!1497618 ((_ is Lexer!5467) thiss!25197))))

(assert (=> start!346234 e!2282296))

(assert (=> start!346234 true))

(assert (=> start!346234 e!2282295))

(assert (=> start!346234 e!2282298))

(assert (=> start!346234 e!2282297))

(assert (= (and start!346234 res!1497618) b!3685578))

(assert (= (and b!3685578 res!1497612) b!3685582))

(assert (= (and b!3685582 res!1497611) b!3685581))

(assert (= (and b!3685581 res!1497617) b!3685575))

(assert (= (and b!3685575 res!1497615) b!3685577))

(assert (= (and b!3685577 res!1497616) b!3685572))

(assert (= (and b!3685575 (not res!1497614)) b!3685571))

(assert (= (and b!3685571 (not res!1497613)) b!3685570))

(assert (= b!3685580 b!3685574))

(assert (= b!3685576 b!3685580))

(assert (= (and start!346234 ((_ is Cons!38968) rules!3568)) b!3685576))

(assert (= (and start!346234 ((_ is Cons!38966) suffix!1448)) b!3685573))

(assert (= (and start!346234 ((_ is Cons!38966) input!3129)) b!3685579))

(declare-fun m!4197039 () Bool)

(assert (=> b!3685582 m!4197039))

(declare-fun m!4197041 () Bool)

(assert (=> b!3685581 m!4197041))

(declare-fun m!4197043 () Bool)

(assert (=> b!3685581 m!4197043))

(assert (=> b!3685581 m!4197043))

(declare-fun m!4197045 () Bool)

(assert (=> b!3685581 m!4197045))

(declare-fun m!4197047 () Bool)

(assert (=> b!3685575 m!4197047))

(declare-fun m!4197049 () Bool)

(assert (=> b!3685575 m!4197049))

(declare-fun m!4197051 () Bool)

(assert (=> b!3685575 m!4197051))

(declare-fun m!4197053 () Bool)

(assert (=> b!3685575 m!4197053))

(declare-fun m!4197055 () Bool)

(assert (=> b!3685575 m!4197055))

(declare-fun m!4197057 () Bool)

(assert (=> b!3685575 m!4197057))

(declare-fun m!4197059 () Bool)

(assert (=> b!3685575 m!4197059))

(declare-fun m!4197061 () Bool)

(assert (=> b!3685575 m!4197061))

(declare-fun m!4197063 () Bool)

(assert (=> b!3685575 m!4197063))

(assert (=> b!3685575 m!4197061))

(declare-fun m!4197065 () Bool)

(assert (=> b!3685575 m!4197065))

(declare-fun m!4197067 () Bool)

(assert (=> b!3685575 m!4197067))

(declare-fun m!4197069 () Bool)

(assert (=> b!3685575 m!4197069))

(declare-fun m!4197071 () Bool)

(assert (=> b!3685575 m!4197071))

(declare-fun m!4197073 () Bool)

(assert (=> b!3685575 m!4197073))

(assert (=> b!3685575 m!4197057))

(assert (=> b!3685575 m!4197051))

(declare-fun m!4197075 () Bool)

(assert (=> b!3685575 m!4197075))

(assert (=> b!3685575 m!4197067))

(declare-fun m!4197077 () Bool)

(assert (=> b!3685575 m!4197077))

(declare-fun m!4197079 () Bool)

(assert (=> b!3685578 m!4197079))

(declare-fun m!4197081 () Bool)

(assert (=> b!3685577 m!4197081))

(declare-fun m!4197083 () Bool)

(assert (=> b!3685577 m!4197083))

(declare-fun m!4197085 () Bool)

(assert (=> b!3685570 m!4197085))

(declare-fun m!4197087 () Bool)

(assert (=> b!3685570 m!4197087))

(assert (=> b!3685570 m!4197087))

(declare-fun m!4197089 () Bool)

(assert (=> b!3685570 m!4197089))

(declare-fun m!4197091 () Bool)

(assert (=> b!3685570 m!4197091))

(declare-fun m!4197093 () Bool)

(assert (=> b!3685580 m!4197093))

(declare-fun m!4197095 () Bool)

(assert (=> b!3685580 m!4197095))

(declare-fun m!4197097 () Bool)

(assert (=> b!3685571 m!4197097))

(assert (=> b!3685571 m!4197097))

(declare-fun m!4197099 () Bool)

(assert (=> b!3685571 m!4197099))

(check-sat (not b!3685571) b_and!275439 (not b!3685577) (not b_next!98463) (not b!3685581) (not b_next!98461) tp_is_empty!18361 (not b!3685570) (not b!3685582) b_and!275441 (not b!3685573) (not b!3685580) (not b!3685575) (not b!3685578) (not b!3685576) (not b!3685579))
(check-sat b_and!275439 b_and!275441 (not b_next!98463) (not b_next!98461))
