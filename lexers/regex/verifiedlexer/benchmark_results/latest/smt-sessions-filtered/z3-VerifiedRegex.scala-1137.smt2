; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59176 () Bool)

(assert start!59176)

(declare-fun b!617245 () Bool)

(declare-fun b_free!17761 () Bool)

(declare-fun b_next!17777 () Bool)

(assert (=> b!617245 (= b_free!17761 (not b_next!17777))))

(declare-fun tp!190992 () Bool)

(declare-fun b_and!61275 () Bool)

(assert (=> b!617245 (= tp!190992 b_and!61275)))

(declare-fun b_free!17763 () Bool)

(declare-fun b_next!17779 () Bool)

(assert (=> b!617245 (= b_free!17763 (not b_next!17779))))

(declare-fun tp!190989 () Bool)

(declare-fun b_and!61277 () Bool)

(assert (=> b!617245 (= tp!190989 b_and!61277)))

(declare-fun b!617240 () Bool)

(declare-fun b_free!17765 () Bool)

(declare-fun b_next!17781 () Bool)

(assert (=> b!617240 (= b_free!17765 (not b_next!17781))))

(declare-fun tp!190997 () Bool)

(declare-fun b_and!61279 () Bool)

(assert (=> b!617240 (= tp!190997 b_and!61279)))

(declare-fun b_free!17767 () Bool)

(declare-fun b_next!17783 () Bool)

(assert (=> b!617240 (= b_free!17767 (not b_next!17783))))

(declare-fun tp!190994 () Bool)

(declare-fun b_and!61281 () Bool)

(assert (=> b!617240 (= tp!190994 b_and!61281)))

(declare-fun b!617237 () Bool)

(declare-fun res!268715 () Bool)

(declare-fun e!374355 () Bool)

(assert (=> b!617237 (=> (not res!268715) (not e!374355))))

(declare-datatypes ((LexerInterface!1147 0))(
  ( (LexerInterfaceExt!1144 (__x!4466 Int)) (Lexer!1145) )
))
(declare-fun thiss!25598 () LexerInterface!1147)

(declare-datatypes ((List!6241 0))(
  ( (Nil!6231) (Cons!6231 (h!11632 (_ BitVec 16)) (t!81480 List!6241)) )
))
(declare-datatypes ((TokenValue!1283 0))(
  ( (FloatLiteralValue!2566 (text!9426 List!6241)) (TokenValueExt!1282 (__x!4467 Int)) (Broken!6415 (value!40719 List!6241)) (Object!1292) (End!1283) (Def!1283) (Underscore!1283) (Match!1283) (Else!1283) (Error!1283) (Case!1283) (If!1283) (Extends!1283) (Abstract!1283) (Class!1283) (Val!1283) (DelimiterValue!2566 (del!1343 List!6241)) (KeywordValue!1289 (value!40720 List!6241)) (CommentValue!2566 (value!40721 List!6241)) (WhitespaceValue!2566 (value!40722 List!6241)) (IndentationValue!1283 (value!40723 List!6241)) (String!8162) (Int32!1283) (Broken!6416 (value!40724 List!6241)) (Boolean!1284) (Unit!11379) (OperatorValue!1286 (op!1343 List!6241)) (IdentifierValue!2566 (value!40725 List!6241)) (IdentifierValue!2567 (value!40726 List!6241)) (WhitespaceValue!2567 (value!40727 List!6241)) (True!2566) (False!2566) (Broken!6417 (value!40728 List!6241)) (Broken!6418 (value!40729 List!6241)) (True!2567) (RightBrace!1283) (RightBracket!1283) (Colon!1283) (Null!1283) (Comma!1283) (LeftBracket!1283) (False!2567) (LeftBrace!1283) (ImaginaryLiteralValue!1283 (text!9427 List!6241)) (StringLiteralValue!3849 (value!40730 List!6241)) (EOFValue!1283 (value!40731 List!6241)) (IdentValue!1283 (value!40732 List!6241)) (DelimiterValue!2567 (value!40733 List!6241)) (DedentValue!1283 (value!40734 List!6241)) (NewLineValue!1283 (value!40735 List!6241)) (IntegerValue!3849 (value!40736 (_ BitVec 32)) (text!9428 List!6241)) (IntegerValue!3850 (value!40737 Int) (text!9429 List!6241)) (Times!1283) (Or!1283) (Equal!1283) (Minus!1283) (Broken!6419 (value!40738 List!6241)) (And!1283) (Div!1283) (LessEqual!1283) (Mod!1283) (Concat!2876) (Not!1283) (Plus!1283) (SpaceValue!1283 (value!40739 List!6241)) (IntegerValue!3851 (value!40740 Int) (text!9430 List!6241)) (StringLiteralValue!3850 (text!9431 List!6241)) (FloatLiteralValue!2567 (text!9432 List!6241)) (BytesLiteralValue!1283 (value!40741 List!6241)) (CommentValue!2567 (value!40742 List!6241)) (StringLiteralValue!3851 (value!40743 List!6241)) (ErrorTokenValue!1283 (msg!1344 List!6241)) )
))
(declare-datatypes ((C!4112 0))(
  ( (C!4113 (val!2282 Int)) )
))
(declare-datatypes ((Regex!1593 0))(
  ( (ElementMatch!1593 (c!113780 C!4112)) (Concat!2877 (regOne!3698 Regex!1593) (regTwo!3698 Regex!1593)) (EmptyExpr!1593) (Star!1593 (reg!1922 Regex!1593)) (EmptyLang!1593) (Union!1593 (regOne!3699 Regex!1593) (regTwo!3699 Regex!1593)) )
))
(declare-datatypes ((String!8163 0))(
  ( (String!8164 (value!40744 String)) )
))
(declare-datatypes ((List!6242 0))(
  ( (Nil!6232) (Cons!6232 (h!11633 C!4112) (t!81481 List!6242)) )
))
(declare-datatypes ((IArray!3953 0))(
  ( (IArray!3954 (innerList!2034 List!6242)) )
))
(declare-datatypes ((Conc!1976 0))(
  ( (Node!1976 (left!4959 Conc!1976) (right!5289 Conc!1976) (csize!4182 Int) (cheight!2187 Int)) (Leaf!3114 (xs!4613 IArray!3953) (csize!4183 Int)) (Empty!1976) )
))
(declare-datatypes ((BalanceConc!3960 0))(
  ( (BalanceConc!3961 (c!113781 Conc!1976)) )
))
(declare-datatypes ((TokenValueInjection!2334 0))(
  ( (TokenValueInjection!2335 (toValue!2172 Int) (toChars!2031 Int)) )
))
(declare-datatypes ((Rule!2318 0))(
  ( (Rule!2319 (regex!1259 Regex!1593) (tag!1521 String!8163) (isSeparator!1259 Bool) (transformation!1259 TokenValueInjection!2334)) )
))
(declare-datatypes ((List!6243 0))(
  ( (Nil!6233) (Cons!6233 (h!11634 Rule!2318) (t!81482 List!6243)) )
))
(declare-fun rules!3744 () List!6243)

(declare-fun rulesInvariant!1108 (LexerInterface!1147 List!6243) Bool)

(assert (=> b!617237 (= res!268715 (rulesInvariant!1108 thiss!25598 rules!3744))))

(declare-fun b!617238 () Bool)

(declare-fun res!268713 () Bool)

(assert (=> b!617238 (=> (not res!268713) (not e!374355))))

(declare-fun p!2908 () List!6242)

(declare-fun input!3215 () List!6242)

(declare-fun isPrefix!889 (List!6242 List!6242) Bool)

(assert (=> b!617238 (= res!268713 (isPrefix!889 p!2908 input!3215))))

(declare-fun b!617239 () Bool)

(declare-fun res!268711 () Bool)

(assert (=> b!617239 (=> (not res!268711) (not e!374355))))

(declare-fun isEmpty!4487 (List!6243) Bool)

(assert (=> b!617239 (= res!268711 (not (isEmpty!4487 rules!3744)))))

(declare-fun e!374353 () Bool)

(assert (=> b!617240 (= e!374353 (and tp!190997 tp!190994))))

(declare-fun b!617241 () Bool)

(declare-fun e!374359 () Bool)

(declare-fun e!374356 () Bool)

(declare-fun tp!190991 () Bool)

(assert (=> b!617241 (= e!374359 (and e!374356 tp!190991))))

(declare-fun b!617242 () Bool)

(declare-fun e!374362 () Bool)

(declare-fun tp_is_empty!3545 () Bool)

(declare-fun tp!190995 () Bool)

(assert (=> b!617242 (= e!374362 (and tp_is_empty!3545 tp!190995))))

(declare-fun b!617243 () Bool)

(declare-fun res!268710 () Bool)

(assert (=> b!617243 (=> (not res!268710) (not e!374355))))

(declare-fun r!3983 () Rule!2318)

(declare-fun contains!1476 (List!6243 Rule!2318) Bool)

(assert (=> b!617243 (= res!268710 (contains!1476 rules!3744 r!3983))))

(declare-fun res!268714 () Bool)

(assert (=> start!59176 (=> (not res!268714) (not e!374355))))

(get-info :version)

(assert (=> start!59176 (= res!268714 ((_ is Lexer!1145) thiss!25598))))

(assert (=> start!59176 e!374355))

(declare-fun e!374360 () Bool)

(assert (=> start!59176 e!374360))

(assert (=> start!59176 e!374362))

(assert (=> start!59176 e!374359))

(assert (=> start!59176 true))

(declare-fun e!374361 () Bool)

(assert (=> start!59176 e!374361))

(declare-fun b!617244 () Bool)

(declare-fun tp!190990 () Bool)

(declare-fun inv!7917 (String!8163) Bool)

(declare-fun inv!7919 (TokenValueInjection!2334) Bool)

(assert (=> b!617244 (= e!374360 (and tp!190990 (inv!7917 (tag!1521 r!3983)) (inv!7919 (transformation!1259 r!3983)) e!374353))))

(declare-fun e!374358 () Bool)

(assert (=> b!617245 (= e!374358 (and tp!190992 tp!190989))))

(declare-fun b!617246 () Bool)

(assert (=> b!617246 (= e!374355 (not true))))

(declare-datatypes ((Token!2242 0))(
  ( (Token!2243 (value!40745 TokenValue!1283) (rule!2047 Rule!2318) (size!4864 Int) (originalCharacters!1292 List!6242)) )
))
(declare-datatypes ((tuple2!7046 0))(
  ( (tuple2!7047 (_1!3787 Token!2242) (_2!3787 List!6242)) )
))
(declare-datatypes ((Option!1604 0))(
  ( (None!1603) (Some!1603 (v!16522 tuple2!7046)) )
))
(declare-fun isEmpty!4488 (Option!1604) Bool)

(declare-fun maxPrefixOneRule!494 (LexerInterface!1147 Rule!2318 List!6242) Option!1604)

(assert (=> b!617246 (isEmpty!4488 (maxPrefixOneRule!494 thiss!25598 r!3983 input!3215))))

(declare-datatypes ((Unit!11380 0))(
  ( (Unit!11381) )
))
(declare-fun lt!264492 () Unit!11380)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!102 (LexerInterface!1147 Rule!2318 List!6243 List!6242) Unit!11380)

(assert (=> b!617246 (= lt!264492 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!102 thiss!25598 r!3983 rules!3744 input!3215))))

(declare-fun ruleValid!441 (LexerInterface!1147 Rule!2318) Bool)

(assert (=> b!617246 (ruleValid!441 thiss!25598 r!3983)))

(declare-fun lt!264491 () Unit!11380)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!286 (LexerInterface!1147 Rule!2318 List!6243) Unit!11380)

(assert (=> b!617246 (= lt!264491 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!286 thiss!25598 r!3983 rules!3744))))

(declare-fun b!617247 () Bool)

(declare-fun tp!190996 () Bool)

(assert (=> b!617247 (= e!374361 (and tp_is_empty!3545 tp!190996))))

(declare-fun tp!190993 () Bool)

(declare-fun b!617248 () Bool)

(assert (=> b!617248 (= e!374356 (and tp!190993 (inv!7917 (tag!1521 (h!11634 rules!3744))) (inv!7919 (transformation!1259 (h!11634 rules!3744))) e!374358))))

(declare-fun b!617249 () Bool)

(declare-fun res!268712 () Bool)

(assert (=> b!617249 (=> (not res!268712) (not e!374355))))

(declare-fun maxPrefix!837 (LexerInterface!1147 List!6243 List!6242) Option!1604)

(assert (=> b!617249 (= res!268712 (isEmpty!4488 (maxPrefix!837 thiss!25598 rules!3744 input!3215)))))

(assert (= (and start!59176 res!268714) b!617238))

(assert (= (and b!617238 res!268713) b!617239))

(assert (= (and b!617239 res!268711) b!617237))

(assert (= (and b!617237 res!268715) b!617243))

(assert (= (and b!617243 res!268710) b!617249))

(assert (= (and b!617249 res!268712) b!617246))

(assert (= b!617244 b!617240))

(assert (= start!59176 b!617244))

(assert (= (and start!59176 ((_ is Cons!6232) p!2908)) b!617242))

(assert (= b!617248 b!617245))

(assert (= b!617241 b!617248))

(assert (= (and start!59176 ((_ is Cons!6233) rules!3744)) b!617241))

(assert (= (and start!59176 ((_ is Cons!6232) input!3215)) b!617247))

(declare-fun m!885601 () Bool)

(assert (=> b!617237 m!885601))

(declare-fun m!885603 () Bool)

(assert (=> b!617239 m!885603))

(declare-fun m!885605 () Bool)

(assert (=> b!617244 m!885605))

(declare-fun m!885607 () Bool)

(assert (=> b!617244 m!885607))

(declare-fun m!885609 () Bool)

(assert (=> b!617249 m!885609))

(assert (=> b!617249 m!885609))

(declare-fun m!885611 () Bool)

(assert (=> b!617249 m!885611))

(declare-fun m!885613 () Bool)

(assert (=> b!617243 m!885613))

(declare-fun m!885615 () Bool)

(assert (=> b!617238 m!885615))

(declare-fun m!885617 () Bool)

(assert (=> b!617248 m!885617))

(declare-fun m!885619 () Bool)

(assert (=> b!617248 m!885619))

(declare-fun m!885621 () Bool)

(assert (=> b!617246 m!885621))

(declare-fun m!885623 () Bool)

(assert (=> b!617246 m!885623))

(declare-fun m!885625 () Bool)

(assert (=> b!617246 m!885625))

(assert (=> b!617246 m!885621))

(declare-fun m!885627 () Bool)

(assert (=> b!617246 m!885627))

(declare-fun m!885629 () Bool)

(assert (=> b!617246 m!885629))

(check-sat (not b_next!17783) b_and!61279 (not b_next!17777) b_and!61277 (not b!617238) (not b!617241) (not b!617243) (not b!617242) b_and!61281 (not b!617239) (not b!617246) (not b_next!17779) tp_is_empty!3545 (not b!617249) (not b_next!17781) (not b!617237) (not b!617247) b_and!61275 (not b!617244) (not b!617248))
(check-sat (not b_next!17783) b_and!61279 (not b_next!17777) b_and!61277 (not b_next!17781) b_and!61281 b_and!61275 (not b_next!17779))
