; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59392 () Bool)

(assert start!59392)

(declare-fun b!618808 () Bool)

(declare-fun b_free!17905 () Bool)

(declare-fun b_next!17921 () Bool)

(assert (=> b!618808 (= b_free!17905 (not b_next!17921))))

(declare-fun tp!191655 () Bool)

(declare-fun b_and!61419 () Bool)

(assert (=> b!618808 (= tp!191655 b_and!61419)))

(declare-fun b_free!17907 () Bool)

(declare-fun b_next!17923 () Bool)

(assert (=> b!618808 (= b_free!17907 (not b_next!17923))))

(declare-fun tp!191658 () Bool)

(declare-fun b_and!61421 () Bool)

(assert (=> b!618808 (= tp!191658 b_and!61421)))

(declare-fun b!618805 () Bool)

(declare-fun b_free!17909 () Bool)

(declare-fun b_next!17925 () Bool)

(assert (=> b!618805 (= b_free!17909 (not b_next!17925))))

(declare-fun tp!191662 () Bool)

(declare-fun b_and!61423 () Bool)

(assert (=> b!618805 (= tp!191662 b_and!61423)))

(declare-fun b_free!17911 () Bool)

(declare-fun b_next!17927 () Bool)

(assert (=> b!618805 (= b_free!17911 (not b_next!17927))))

(declare-fun tp!191657 () Bool)

(declare-fun b_and!61425 () Bool)

(assert (=> b!618805 (= tp!191657 b_and!61425)))

(declare-fun e!375371 () Bool)

(declare-fun b!618798 () Bool)

(declare-fun tp!191661 () Bool)

(declare-datatypes ((C!4140 0))(
  ( (C!4141 (val!2296 Int)) )
))
(declare-datatypes ((Regex!1607 0))(
  ( (ElementMatch!1607 (c!113888 C!4140)) (Concat!2904 (regOne!3726 Regex!1607) (regTwo!3726 Regex!1607)) (EmptyExpr!1607) (Star!1607 (reg!1936 Regex!1607)) (EmptyLang!1607) (Union!1607 (regOne!3727 Regex!1607) (regTwo!3727 Regex!1607)) )
))
(declare-datatypes ((String!8232 0))(
  ( (String!8233 (value!41118 String)) )
))
(declare-datatypes ((List!6290 0))(
  ( (Nil!6280) (Cons!6280 (h!11681 (_ BitVec 16)) (t!81529 List!6290)) )
))
(declare-datatypes ((TokenValue!1297 0))(
  ( (FloatLiteralValue!2594 (text!9524 List!6290)) (TokenValueExt!1296 (__x!4494 Int)) (Broken!6485 (value!41119 List!6290)) (Object!1306) (End!1297) (Def!1297) (Underscore!1297) (Match!1297) (Else!1297) (Error!1297) (Case!1297) (If!1297) (Extends!1297) (Abstract!1297) (Class!1297) (Val!1297) (DelimiterValue!2594 (del!1357 List!6290)) (KeywordValue!1303 (value!41120 List!6290)) (CommentValue!2594 (value!41121 List!6290)) (WhitespaceValue!2594 (value!41122 List!6290)) (IndentationValue!1297 (value!41123 List!6290)) (String!8234) (Int32!1297) (Broken!6486 (value!41124 List!6290)) (Boolean!1298) (Unit!11415) (OperatorValue!1300 (op!1357 List!6290)) (IdentifierValue!2594 (value!41125 List!6290)) (IdentifierValue!2595 (value!41126 List!6290)) (WhitespaceValue!2595 (value!41127 List!6290)) (True!2594) (False!2594) (Broken!6487 (value!41128 List!6290)) (Broken!6488 (value!41129 List!6290)) (True!2595) (RightBrace!1297) (RightBracket!1297) (Colon!1297) (Null!1297) (Comma!1297) (LeftBracket!1297) (False!2595) (LeftBrace!1297) (ImaginaryLiteralValue!1297 (text!9525 List!6290)) (StringLiteralValue!3891 (value!41130 List!6290)) (EOFValue!1297 (value!41131 List!6290)) (IdentValue!1297 (value!41132 List!6290)) (DelimiterValue!2595 (value!41133 List!6290)) (DedentValue!1297 (value!41134 List!6290)) (NewLineValue!1297 (value!41135 List!6290)) (IntegerValue!3891 (value!41136 (_ BitVec 32)) (text!9526 List!6290)) (IntegerValue!3892 (value!41137 Int) (text!9527 List!6290)) (Times!1297) (Or!1297) (Equal!1297) (Minus!1297) (Broken!6489 (value!41138 List!6290)) (And!1297) (Div!1297) (LessEqual!1297) (Mod!1297) (Concat!2905) (Not!1297) (Plus!1297) (SpaceValue!1297 (value!41139 List!6290)) (IntegerValue!3893 (value!41140 Int) (text!9528 List!6290)) (StringLiteralValue!3892 (text!9529 List!6290)) (FloatLiteralValue!2595 (text!9530 List!6290)) (BytesLiteralValue!1297 (value!41141 List!6290)) (CommentValue!2595 (value!41142 List!6290)) (StringLiteralValue!3893 (value!41143 List!6290)) (ErrorTokenValue!1297 (msg!1358 List!6290)) )
))
(declare-datatypes ((List!6291 0))(
  ( (Nil!6281) (Cons!6281 (h!11682 C!4140) (t!81530 List!6291)) )
))
(declare-datatypes ((IArray!3981 0))(
  ( (IArray!3982 (innerList!2048 List!6291)) )
))
(declare-datatypes ((Conc!1990 0))(
  ( (Node!1990 (left!4988 Conc!1990) (right!5318 Conc!1990) (csize!4210 Int) (cheight!2201 Int)) (Leaf!3135 (xs!4627 IArray!3981) (csize!4211 Int)) (Empty!1990) )
))
(declare-datatypes ((BalanceConc!3988 0))(
  ( (BalanceConc!3989 (c!113889 Conc!1990)) )
))
(declare-datatypes ((TokenValueInjection!2362 0))(
  ( (TokenValueInjection!2363 (toValue!2186 Int) (toChars!2045 Int)) )
))
(declare-datatypes ((Rule!2346 0))(
  ( (Rule!2347 (regex!1273 Regex!1607) (tag!1535 String!8232) (isSeparator!1273 Bool) (transformation!1273 TokenValueInjection!2362)) )
))
(declare-datatypes ((List!6292 0))(
  ( (Nil!6282) (Cons!6282 (h!11683 Rule!2346) (t!81531 List!6292)) )
))
(declare-fun rules!3744 () List!6292)

(declare-fun e!375373 () Bool)

(declare-fun inv!7952 (String!8232) Bool)

(declare-fun inv!7954 (TokenValueInjection!2362) Bool)

(assert (=> b!618798 (= e!375373 (and tp!191661 (inv!7952 (tag!1535 (h!11683 rules!3744))) (inv!7954 (transformation!1273 (h!11683 rules!3744))) e!375371))))

(declare-fun b!618799 () Bool)

(declare-fun e!375367 () Bool)

(assert (=> b!618799 (= e!375367 true)))

(declare-fun r!3983 () Rule!2346)

(declare-fun p!2908 () List!6291)

(declare-fun matchR!691 (Regex!1607 List!6291) Bool)

(assert (=> b!618799 (not (matchR!691 (regex!1273 r!3983) p!2908))))

(declare-datatypes ((LexerInterface!1161 0))(
  ( (LexerInterfaceExt!1158 (__x!4495 Int)) (Lexer!1159) )
))
(declare-fun thiss!25598 () LexerInterface!1161)

(declare-datatypes ((Unit!11416 0))(
  ( (Unit!11417) )
))
(declare-fun lt!264855 () Unit!11416)

(declare-fun input!3215 () List!6291)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!104 (LexerInterface!1161 Rule!2346 List!6291 List!6291) Unit!11416)

(assert (=> b!618799 (= lt!264855 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!104 thiss!25598 r!3983 p!2908 input!3215))))

(declare-fun b!618800 () Bool)

(declare-fun e!375366 () Bool)

(assert (=> b!618800 (= e!375366 (not e!375367))))

(declare-fun res!269581 () Bool)

(assert (=> b!618800 (=> res!269581 e!375367)))

(declare-datatypes ((Token!2270 0))(
  ( (Token!2271 (value!41144 TokenValue!1297) (rule!2065 Rule!2346) (size!4889 Int) (originalCharacters!1306 List!6291)) )
))
(declare-datatypes ((tuple2!7082 0))(
  ( (tuple2!7083 (_1!3805 Token!2270) (_2!3805 List!6291)) )
))
(declare-datatypes ((Option!1618 0))(
  ( (None!1617) (Some!1617 (v!16544 tuple2!7082)) )
))
(declare-fun lt!264858 () Option!1618)

(assert (=> b!618800 (= res!269581 (not (= lt!264858 None!1617)))))

(declare-fun isEmpty!4517 (Option!1618) Bool)

(assert (=> b!618800 (isEmpty!4517 lt!264858)))

(declare-fun maxPrefixOneRule!503 (LexerInterface!1161 Rule!2346 List!6291) Option!1618)

(assert (=> b!618800 (= lt!264858 (maxPrefixOneRule!503 thiss!25598 r!3983 input!3215))))

(declare-fun lt!264856 () Unit!11416)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!108 (LexerInterface!1161 Rule!2346 List!6292 List!6291) Unit!11416)

(assert (=> b!618800 (= lt!264856 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!108 thiss!25598 r!3983 rules!3744 input!3215))))

(declare-fun ruleValid!452 (LexerInterface!1161 Rule!2346) Bool)

(assert (=> b!618800 (ruleValid!452 thiss!25598 r!3983)))

(declare-fun lt!264857 () Unit!11416)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!296 (LexerInterface!1161 Rule!2346 List!6292) Unit!11416)

(assert (=> b!618800 (= lt!264857 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!296 thiss!25598 r!3983 rules!3744))))

(declare-fun b!618801 () Bool)

(declare-fun e!375374 () Bool)

(declare-fun tp_is_empty!3573 () Bool)

(declare-fun tp!191663 () Bool)

(assert (=> b!618801 (= e!375374 (and tp_is_empty!3573 tp!191663))))

(declare-fun b!618802 () Bool)

(declare-fun res!269579 () Bool)

(assert (=> b!618802 (=> (not res!269579) (not e!375366))))

(declare-fun rulesInvariant!1122 (LexerInterface!1161 List!6292) Bool)

(assert (=> b!618802 (= res!269579 (rulesInvariant!1122 thiss!25598 rules!3744))))

(declare-fun res!269578 () Bool)

(assert (=> start!59392 (=> (not res!269578) (not e!375366))))

(get-info :version)

(assert (=> start!59392 (= res!269578 ((_ is Lexer!1159) thiss!25598))))

(assert (=> start!59392 e!375366))

(declare-fun e!375375 () Bool)

(assert (=> start!59392 e!375375))

(assert (=> start!59392 e!375374))

(declare-fun e!375369 () Bool)

(assert (=> start!59392 e!375369))

(assert (=> start!59392 true))

(declare-fun e!375370 () Bool)

(assert (=> start!59392 e!375370))

(declare-fun b!618803 () Bool)

(declare-fun res!269582 () Bool)

(assert (=> b!618803 (=> (not res!269582) (not e!375366))))

(declare-fun contains!1490 (List!6292 Rule!2346) Bool)

(assert (=> b!618803 (= res!269582 (contains!1490 rules!3744 r!3983))))

(declare-fun b!618804 () Bool)

(declare-fun res!269577 () Bool)

(assert (=> b!618804 (=> (not res!269577) (not e!375366))))

(declare-fun maxPrefix!851 (LexerInterface!1161 List!6292 List!6291) Option!1618)

(assert (=> b!618804 (= res!269577 (isEmpty!4517 (maxPrefix!851 thiss!25598 rules!3744 input!3215)))))

(declare-fun e!375368 () Bool)

(assert (=> b!618805 (= e!375368 (and tp!191662 tp!191657))))

(declare-fun b!618806 () Bool)

(declare-fun res!269580 () Bool)

(assert (=> b!618806 (=> (not res!269580) (not e!375366))))

(declare-fun isPrefix!903 (List!6291 List!6291) Bool)

(assert (=> b!618806 (= res!269580 (isPrefix!903 p!2908 input!3215))))

(declare-fun b!618807 () Bool)

(declare-fun tp!191656 () Bool)

(assert (=> b!618807 (= e!375369 (and e!375373 tp!191656))))

(assert (=> b!618808 (= e!375371 (and tp!191655 tp!191658))))

(declare-fun b!618809 () Bool)

(declare-fun tp!191659 () Bool)

(assert (=> b!618809 (= e!375370 (and tp_is_empty!3573 tp!191659))))

(declare-fun b!618810 () Bool)

(declare-fun res!269576 () Bool)

(assert (=> b!618810 (=> (not res!269576) (not e!375366))))

(declare-fun isEmpty!4518 (List!6292) Bool)

(assert (=> b!618810 (= res!269576 (not (isEmpty!4518 rules!3744)))))

(declare-fun tp!191660 () Bool)

(declare-fun b!618811 () Bool)

(assert (=> b!618811 (= e!375375 (and tp!191660 (inv!7952 (tag!1535 r!3983)) (inv!7954 (transformation!1273 r!3983)) e!375368))))

(assert (= (and start!59392 res!269578) b!618806))

(assert (= (and b!618806 res!269580) b!618810))

(assert (= (and b!618810 res!269576) b!618802))

(assert (= (and b!618802 res!269579) b!618803))

(assert (= (and b!618803 res!269582) b!618804))

(assert (= (and b!618804 res!269577) b!618800))

(assert (= (and b!618800 (not res!269581)) b!618799))

(assert (= b!618811 b!618805))

(assert (= start!59392 b!618811))

(assert (= (and start!59392 ((_ is Cons!6281) p!2908)) b!618801))

(assert (= b!618798 b!618808))

(assert (= b!618807 b!618798))

(assert (= (and start!59392 ((_ is Cons!6282) rules!3744)) b!618807))

(assert (= (and start!59392 ((_ is Cons!6281) input!3215)) b!618809))

(declare-fun m!886785 () Bool)

(assert (=> b!618811 m!886785))

(declare-fun m!886787 () Bool)

(assert (=> b!618811 m!886787))

(declare-fun m!886789 () Bool)

(assert (=> b!618806 m!886789))

(declare-fun m!886791 () Bool)

(assert (=> b!618802 m!886791))

(declare-fun m!886793 () Bool)

(assert (=> b!618803 m!886793))

(declare-fun m!886795 () Bool)

(assert (=> b!618800 m!886795))

(declare-fun m!886797 () Bool)

(assert (=> b!618800 m!886797))

(declare-fun m!886799 () Bool)

(assert (=> b!618800 m!886799))

(declare-fun m!886801 () Bool)

(assert (=> b!618800 m!886801))

(declare-fun m!886803 () Bool)

(assert (=> b!618800 m!886803))

(declare-fun m!886805 () Bool)

(assert (=> b!618810 m!886805))

(declare-fun m!886807 () Bool)

(assert (=> b!618799 m!886807))

(declare-fun m!886809 () Bool)

(assert (=> b!618799 m!886809))

(declare-fun m!886811 () Bool)

(assert (=> b!618798 m!886811))

(declare-fun m!886813 () Bool)

(assert (=> b!618798 m!886813))

(declare-fun m!886815 () Bool)

(assert (=> b!618804 m!886815))

(assert (=> b!618804 m!886815))

(declare-fun m!886817 () Bool)

(assert (=> b!618804 m!886817))

(check-sat b_and!61425 (not b!618810) (not b!618809) (not b_next!17921) (not b!618803) (not b!618804) (not b!618806) (not b!618801) b_and!61421 (not b!618802) (not b!618799) (not b!618807) (not b!618798) (not b!618811) (not b_next!17925) (not b_next!17923) b_and!61423 b_and!61419 tp_is_empty!3573 (not b!618800) (not b_next!17927))
(check-sat b_and!61425 (not b_next!17921) (not b_next!17925) b_and!61419 (not b_next!17927) b_and!61421 (not b_next!17923) b_and!61423)
