; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757270 () Bool)

(assert start!757270)

(declare-fun b!8043095 () Bool)

(declare-fun b_free!135931 () Bool)

(declare-fun b_next!136721 () Bool)

(assert (=> b!8043095 (= b_free!135931 (not b_next!136721))))

(declare-fun tp!2410088 () Bool)

(declare-fun b_and!354367 () Bool)

(assert (=> b!8043095 (= tp!2410088 b_and!354367)))

(declare-fun b_free!135933 () Bool)

(declare-fun b_next!136723 () Bool)

(assert (=> b!8043095 (= b_free!135933 (not b_next!136723))))

(declare-fun tp!2410085 () Bool)

(declare-fun b_and!354369 () Bool)

(assert (=> b!8043095 (= tp!2410085 b_and!354369)))

(declare-fun b!8043097 () Bool)

(declare-fun b_free!135935 () Bool)

(declare-fun b_next!136725 () Bool)

(assert (=> b!8043097 (= b_free!135935 (not b_next!136725))))

(declare-fun tp!2410084 () Bool)

(declare-fun b_and!354371 () Bool)

(assert (=> b!8043097 (= tp!2410084 b_and!354371)))

(declare-fun b_free!135937 () Bool)

(declare-fun b_next!136727 () Bool)

(assert (=> b!8043097 (= b_free!135937 (not b_next!136727))))

(declare-fun tp!2410093 () Bool)

(declare-fun b_and!354373 () Bool)

(assert (=> b!8043097 (= tp!2410093 b_and!354373)))

(declare-fun b!8043092 () Bool)

(declare-fun b_free!135939 () Bool)

(declare-fun b_next!136729 () Bool)

(assert (=> b!8043092 (= b_free!135939 (not b_next!136729))))

(declare-fun tp!2410086 () Bool)

(declare-fun b_and!354375 () Bool)

(assert (=> b!8043092 (= tp!2410086 b_and!354375)))

(declare-fun b_free!135941 () Bool)

(declare-fun b_next!136731 () Bool)

(assert (=> b!8043092 (= b_free!135941 (not b_next!136731))))

(declare-fun tp!2410089 () Bool)

(declare-fun b_and!354377 () Bool)

(assert (=> b!8043092 (= tp!2410089 b_and!354377)))

(declare-fun b!8043088 () Bool)

(declare-fun res!3179339 () Bool)

(declare-fun e!4737907 () Bool)

(assert (=> b!8043088 (=> (not res!3179339) (not e!4737907))))

(declare-datatypes ((C!43914 0))(
  ( (C!43915 (val!32733 Int)) )
))
(declare-datatypes ((List!75297 0))(
  ( (Nil!75171) (Cons!75171 (h!81619 C!43914) (t!391067 List!75297)) )
))
(declare-datatypes ((IArray!32031 0))(
  ( (IArray!32032 (innerList!16073 List!75297)) )
))
(declare-datatypes ((Conc!15985 0))(
  ( (Node!15985 (left!57301 Conc!15985) (right!57631 Conc!15985) (csize!32200 Int) (cheight!16196 Int)) (Leaf!30654 (xs!19383 IArray!32031) (csize!32201 Int)) (Empty!15985) )
))
(declare-datatypes ((List!75298 0))(
  ( (Nil!75172) (Cons!75172 (h!81620 (_ BitVec 16)) (t!391068 List!75298)) )
))
(declare-datatypes ((Regex!21788 0))(
  ( (ElementMatch!21788 (c!1475207 C!43914)) (Concat!30825 (regOne!44088 Regex!21788) (regTwo!44088 Regex!21788)) (EmptyExpr!21788) (Star!21788 (reg!22117 Regex!21788)) (EmptyLang!21788) (Union!21788 (regOne!44089 Regex!21788) (regTwo!44089 Regex!21788)) )
))
(declare-datatypes ((String!84960 0))(
  ( (String!84961 (value!291485 String)) )
))
(declare-datatypes ((TokenValue!9037 0))(
  ( (FloatLiteralValue!18074 (text!63704 List!75298)) (TokenValueExt!9036 (__x!35355 Int)) (Broken!45185 (value!291486 List!75298)) (Object!9162) (End!9037) (Def!9037) (Underscore!9037) (Match!9037) (Else!9037) (Error!9037) (Case!9037) (If!9037) (Extends!9037) (Abstract!9037) (Class!9037) (Val!9037) (DelimiterValue!18074 (del!9097 List!75298)) (KeywordValue!9043 (value!291487 List!75298)) (CommentValue!18074 (value!291488 List!75298)) (WhitespaceValue!18074 (value!291489 List!75298)) (IndentationValue!9037 (value!291490 List!75298)) (String!84962) (Int32!9037) (Broken!45186 (value!291491 List!75298)) (Boolean!9038) (Unit!171056) (OperatorValue!9040 (op!9097 List!75298)) (IdentifierValue!18074 (value!291492 List!75298)) (IdentifierValue!18075 (value!291493 List!75298)) (WhitespaceValue!18075 (value!291494 List!75298)) (True!18074) (False!18074) (Broken!45187 (value!291495 List!75298)) (Broken!45188 (value!291496 List!75298)) (True!18075) (RightBrace!9037) (RightBracket!9037) (Colon!9037) (Null!9037) (Comma!9037) (LeftBracket!9037) (False!18075) (LeftBrace!9037) (ImaginaryLiteralValue!9037 (text!63705 List!75298)) (StringLiteralValue!27111 (value!291497 List!75298)) (EOFValue!9037 (value!291498 List!75298)) (IdentValue!9037 (value!291499 List!75298)) (DelimiterValue!18075 (value!291500 List!75298)) (DedentValue!9037 (value!291501 List!75298)) (NewLineValue!9037 (value!291502 List!75298)) (IntegerValue!27111 (value!291503 (_ BitVec 32)) (text!63706 List!75298)) (IntegerValue!27112 (value!291504 Int) (text!63707 List!75298)) (Times!9037) (Or!9037) (Equal!9037) (Minus!9037) (Broken!45189 (value!291505 List!75298)) (And!9037) (Div!9037) (LessEqual!9037) (Mod!9037) (Concat!30826) (Not!9037) (Plus!9037) (SpaceValue!9037 (value!291506 List!75298)) (IntegerValue!27113 (value!291507 Int) (text!63708 List!75298)) (StringLiteralValue!27112 (text!63709 List!75298)) (FloatLiteralValue!18075 (text!63710 List!75298)) (BytesLiteralValue!9037 (value!291508 List!75298)) (CommentValue!18075 (value!291509 List!75298)) (StringLiteralValue!27113 (value!291510 List!75298)) (ErrorTokenValue!9037 (msg!9098 List!75298)) )
))
(declare-datatypes ((BalanceConc!30926 0))(
  ( (BalanceConc!30927 (c!1475208 Conc!15985)) )
))
(declare-datatypes ((TokenValueInjection!17382 0))(
  ( (TokenValueInjection!17383 (toValue!11792 Int) (toChars!11651 Int)) )
))
(declare-datatypes ((Rule!17234 0))(
  ( (Rule!17235 (regex!8717 Regex!21788) (tag!9581 String!84960) (isSeparator!8717 Bool) (transformation!8717 TokenValueInjection!17382)) )
))
(declare-fun rNSep!153 () Rule!17234)

(declare-fun rSep!153 () Rule!17234)

(assert (=> b!8043088 (= res!3179339 (and (not (isSeparator!8717 rNSep!153)) (isSeparator!8717 rSep!153)))))

(declare-datatypes ((List!75299 0))(
  ( (Nil!75173) (Cons!75173 (h!81621 Rule!17234) (t!391069 List!75299)) )
))
(declare-fun rules!4166 () List!75299)

(declare-fun b!8043089 () Bool)

(declare-fun e!4737912 () Bool)

(declare-fun tp!2410090 () Bool)

(declare-fun e!4737909 () Bool)

(declare-fun inv!96960 (String!84960) Bool)

(declare-fun inv!96963 (TokenValueInjection!17382) Bool)

(assert (=> b!8043089 (= e!4737912 (and tp!2410090 (inv!96960 (tag!9581 (h!81621 rules!4166))) (inv!96963 (transformation!8717 (h!81621 rules!4166))) e!4737909))))

(declare-fun b!8043090 () Bool)

(assert (=> b!8043090 (= e!4737907 false)))

(declare-fun lt!2722431 () Bool)

(declare-fun ruleDisjointCharsFromAllFromOtherType!991 (Rule!17234 List!75299) Bool)

(assert (=> b!8043090 (= lt!2722431 (ruleDisjointCharsFromAllFromOtherType!991 rNSep!153 rules!4166))))

(declare-fun res!3179338 () Bool)

(assert (=> start!757270 (=> (not res!3179338) (not e!4737907))))

(declare-datatypes ((LexerInterface!8307 0))(
  ( (LexerInterfaceExt!8304 (__x!35356 Int)) (Lexer!8305) )
))
(declare-fun thiss!27104 () LexerInterface!8307)

(assert (=> start!757270 (= res!3179338 (is-Lexer!8305 thiss!27104))))

(assert (=> start!757270 e!4737907))

(declare-fun e!4737915 () Bool)

(assert (=> start!757270 e!4737915))

(declare-fun tp_is_empty!54571 () Bool)

(assert (=> start!757270 tp_is_empty!54571))

(assert (=> start!757270 true))

(declare-fun e!4737914 () Bool)

(assert (=> start!757270 e!4737914))

(declare-fun e!4737913 () Bool)

(assert (=> start!757270 e!4737913))

(declare-fun tp!2410091 () Bool)

(declare-fun e!4737908 () Bool)

(declare-fun b!8043091 () Bool)

(assert (=> b!8043091 (= e!4737914 (and tp!2410091 (inv!96960 (tag!9581 rNSep!153)) (inv!96963 (transformation!8717 rNSep!153)) e!4737908))))

(declare-fun e!4737916 () Bool)

(assert (=> b!8043092 (= e!4737916 (and tp!2410086 tp!2410089))))

(declare-fun b!8043093 () Bool)

(declare-fun res!3179336 () Bool)

(assert (=> b!8043093 (=> (not res!3179336) (not e!4737907))))

(declare-fun c!6885 () C!43914)

(declare-fun contains!21019 (List!75297 C!43914) Bool)

(declare-fun usedCharacters!1295 (Regex!21788) List!75297)

(assert (=> b!8043093 (= res!3179336 (contains!21019 (usedCharacters!1295 (regex!8717 rSep!153)) c!6885))))

(declare-fun tp!2410087 () Bool)

(declare-fun b!8043094 () Bool)

(assert (=> b!8043094 (= e!4737913 (and tp!2410087 (inv!96960 (tag!9581 rSep!153)) (inv!96963 (transformation!8717 rSep!153)) e!4737916))))

(assert (=> b!8043095 (= e!4737908 (and tp!2410088 tp!2410085))))

(declare-fun b!8043096 () Bool)

(declare-fun res!3179337 () Bool)

(assert (=> b!8043096 (=> (not res!3179337) (not e!4737907))))

(declare-fun rulesInvariant!6775 (LexerInterface!8307 List!75299) Bool)

(assert (=> b!8043096 (= res!3179337 (rulesInvariant!6775 thiss!27104 rules!4166))))

(assert (=> b!8043097 (= e!4737909 (and tp!2410084 tp!2410093))))

(declare-fun b!8043098 () Bool)

(declare-fun tp!2410092 () Bool)

(assert (=> b!8043098 (= e!4737915 (and e!4737912 tp!2410092))))

(declare-fun b!8043099 () Bool)

(declare-fun res!3179335 () Bool)

(assert (=> b!8043099 (=> (not res!3179335) (not e!4737907))))

(declare-fun contains!21020 (List!75299 Rule!17234) Bool)

(assert (=> b!8043099 (= res!3179335 (contains!21020 rules!4166 rSep!153))))

(assert (= (and start!757270 res!3179338) b!8043096))

(assert (= (and b!8043096 res!3179337) b!8043099))

(assert (= (and b!8043099 res!3179335) b!8043093))

(assert (= (and b!8043093 res!3179336) b!8043088))

(assert (= (and b!8043088 res!3179339) b!8043090))

(assert (= b!8043089 b!8043097))

(assert (= b!8043098 b!8043089))

(assert (= (and start!757270 (is-Cons!75173 rules!4166)) b!8043098))

(assert (= b!8043091 b!8043095))

(assert (= start!757270 b!8043091))

(assert (= b!8043094 b!8043092))

(assert (= start!757270 b!8043094))

(declare-fun m!8396574 () Bool)

(assert (=> b!8043094 m!8396574))

(declare-fun m!8396576 () Bool)

(assert (=> b!8043094 m!8396576))

(declare-fun m!8396578 () Bool)

(assert (=> b!8043091 m!8396578))

(declare-fun m!8396580 () Bool)

(assert (=> b!8043091 m!8396580))

(declare-fun m!8396582 () Bool)

(assert (=> b!8043096 m!8396582))

(declare-fun m!8396584 () Bool)

(assert (=> b!8043093 m!8396584))

(assert (=> b!8043093 m!8396584))

(declare-fun m!8396586 () Bool)

(assert (=> b!8043093 m!8396586))

(declare-fun m!8396588 () Bool)

(assert (=> b!8043090 m!8396588))

(declare-fun m!8396590 () Bool)

(assert (=> b!8043099 m!8396590))

(declare-fun m!8396592 () Bool)

(assert (=> b!8043089 m!8396592))

(declare-fun m!8396594 () Bool)

(assert (=> b!8043089 m!8396594))

(push 1)

(assert b_and!354375)

(assert (not b!8043094))

(assert tp_is_empty!54571)

(assert (not b_next!136731))

(assert b_and!354373)

(assert (not b!8043090))

(assert (not b_next!136725))

(assert (not b!8043093))

(assert (not b_next!136727))

(assert (not b!8043098))

(assert (not b_next!136721))

(assert b_and!354369)

(assert (not b!8043099))

(assert (not b!8043089))

(assert (not b!8043096))

(assert b_and!354377)

(assert (not b!8043091))

(assert b_and!354371)

(assert b_and!354367)

(assert (not b_next!136729))

(assert (not b_next!136723))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354375)

(assert (not b_next!136721))

(assert b_and!354369)

(assert b_and!354377)

(assert (not b_next!136731))

(assert b_and!354373)

(assert (not b_next!136725))

(assert (not b_next!136727))

(assert b_and!354371)

(assert b_and!354367)

(assert (not b_next!136729))

(assert (not b_next!136723))

(check-sat)

(pop 1)

