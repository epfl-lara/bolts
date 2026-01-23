; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757278 () Bool)

(assert start!757278)

(declare-fun b!8043254 () Bool)

(declare-fun b_free!135979 () Bool)

(declare-fun b_next!136769 () Bool)

(assert (=> b!8043254 (= b_free!135979 (not b_next!136769))))

(declare-fun tp!2410208 () Bool)

(declare-fun b_and!354415 () Bool)

(assert (=> b!8043254 (= tp!2410208 b_and!354415)))

(declare-fun b_free!135981 () Bool)

(declare-fun b_next!136771 () Bool)

(assert (=> b!8043254 (= b_free!135981 (not b_next!136771))))

(declare-fun tp!2410210 () Bool)

(declare-fun b_and!354417 () Bool)

(assert (=> b!8043254 (= tp!2410210 b_and!354417)))

(declare-fun b!8043258 () Bool)

(declare-fun b_free!135983 () Bool)

(declare-fun b_next!136773 () Bool)

(assert (=> b!8043258 (= b_free!135983 (not b_next!136773))))

(declare-fun tp!2410211 () Bool)

(declare-fun b_and!354419 () Bool)

(assert (=> b!8043258 (= tp!2410211 b_and!354419)))

(declare-fun b_free!135985 () Bool)

(declare-fun b_next!136775 () Bool)

(assert (=> b!8043258 (= b_free!135985 (not b_next!136775))))

(declare-fun tp!2410212 () Bool)

(declare-fun b_and!354421 () Bool)

(assert (=> b!8043258 (= tp!2410212 b_and!354421)))

(declare-fun b!8043255 () Bool)

(declare-fun b_free!135987 () Bool)

(declare-fun b_next!136777 () Bool)

(assert (=> b!8043255 (= b_free!135987 (not b_next!136777))))

(declare-fun tp!2410206 () Bool)

(declare-fun b_and!354423 () Bool)

(assert (=> b!8043255 (= tp!2410206 b_and!354423)))

(declare-fun b_free!135989 () Bool)

(declare-fun b_next!136779 () Bool)

(assert (=> b!8043255 (= b_free!135989 (not b_next!136779))))

(declare-fun tp!2410213 () Bool)

(declare-fun b_and!354425 () Bool)

(assert (=> b!8043255 (= tp!2410213 b_and!354425)))

(declare-fun b!8043248 () Bool)

(declare-fun e!4738045 () Bool)

(declare-fun tp!2410207 () Bool)

(declare-fun e!4738048 () Bool)

(declare-datatypes ((C!43922 0))(
  ( (C!43923 (val!32737 Int)) )
))
(declare-datatypes ((List!75309 0))(
  ( (Nil!75183) (Cons!75183 (h!81631 C!43922) (t!391079 List!75309)) )
))
(declare-datatypes ((IArray!32039 0))(
  ( (IArray!32040 (innerList!16077 List!75309)) )
))
(declare-datatypes ((Conc!15989 0))(
  ( (Node!15989 (left!57307 Conc!15989) (right!57637 Conc!15989) (csize!32208 Int) (cheight!16200 Int)) (Leaf!30660 (xs!19387 IArray!32039) (csize!32209 Int)) (Empty!15989) )
))
(declare-datatypes ((List!75310 0))(
  ( (Nil!75184) (Cons!75184 (h!81632 (_ BitVec 16)) (t!391080 List!75310)) )
))
(declare-datatypes ((Regex!21792 0))(
  ( (ElementMatch!21792 (c!1475215 C!43922)) (Concat!30833 (regOne!44096 Regex!21792) (regTwo!44096 Regex!21792)) (EmptyExpr!21792) (Star!21792 (reg!22121 Regex!21792)) (EmptyLang!21792) (Union!21792 (regOne!44097 Regex!21792) (regTwo!44097 Regex!21792)) )
))
(declare-datatypes ((String!84980 0))(
  ( (String!84981 (value!291595 String)) )
))
(declare-datatypes ((TokenValue!9041 0))(
  ( (FloatLiteralValue!18082 (text!63732 List!75310)) (TokenValueExt!9040 (__x!35363 Int)) (Broken!45205 (value!291596 List!75310)) (Object!9166) (End!9041) (Def!9041) (Underscore!9041) (Match!9041) (Else!9041) (Error!9041) (Case!9041) (If!9041) (Extends!9041) (Abstract!9041) (Class!9041) (Val!9041) (DelimiterValue!18082 (del!9101 List!75310)) (KeywordValue!9047 (value!291597 List!75310)) (CommentValue!18082 (value!291598 List!75310)) (WhitespaceValue!18082 (value!291599 List!75310)) (IndentationValue!9041 (value!291600 List!75310)) (String!84982) (Int32!9041) (Broken!45206 (value!291601 List!75310)) (Boolean!9042) (Unit!171060) (OperatorValue!9044 (op!9101 List!75310)) (IdentifierValue!18082 (value!291602 List!75310)) (IdentifierValue!18083 (value!291603 List!75310)) (WhitespaceValue!18083 (value!291604 List!75310)) (True!18082) (False!18082) (Broken!45207 (value!291605 List!75310)) (Broken!45208 (value!291606 List!75310)) (True!18083) (RightBrace!9041) (RightBracket!9041) (Colon!9041) (Null!9041) (Comma!9041) (LeftBracket!9041) (False!18083) (LeftBrace!9041) (ImaginaryLiteralValue!9041 (text!63733 List!75310)) (StringLiteralValue!27123 (value!291607 List!75310)) (EOFValue!9041 (value!291608 List!75310)) (IdentValue!9041 (value!291609 List!75310)) (DelimiterValue!18083 (value!291610 List!75310)) (DedentValue!9041 (value!291611 List!75310)) (NewLineValue!9041 (value!291612 List!75310)) (IntegerValue!27123 (value!291613 (_ BitVec 32)) (text!63734 List!75310)) (IntegerValue!27124 (value!291614 Int) (text!63735 List!75310)) (Times!9041) (Or!9041) (Equal!9041) (Minus!9041) (Broken!45209 (value!291615 List!75310)) (And!9041) (Div!9041) (LessEqual!9041) (Mod!9041) (Concat!30834) (Not!9041) (Plus!9041) (SpaceValue!9041 (value!291616 List!75310)) (IntegerValue!27125 (value!291617 Int) (text!63736 List!75310)) (StringLiteralValue!27124 (text!63737 List!75310)) (FloatLiteralValue!18083 (text!63738 List!75310)) (BytesLiteralValue!9041 (value!291618 List!75310)) (CommentValue!18083 (value!291619 List!75310)) (StringLiteralValue!27125 (value!291620 List!75310)) (ErrorTokenValue!9041 (msg!9102 List!75310)) )
))
(declare-datatypes ((BalanceConc!30934 0))(
  ( (BalanceConc!30935 (c!1475216 Conc!15989)) )
))
(declare-datatypes ((TokenValueInjection!17390 0))(
  ( (TokenValueInjection!17391 (toValue!11796 Int) (toChars!11655 Int)) )
))
(declare-datatypes ((Rule!17242 0))(
  ( (Rule!17243 (regex!8721 Regex!21792) (tag!9585 String!84980) (isSeparator!8721 Bool) (transformation!8721 TokenValueInjection!17390)) )
))
(declare-fun rSep!153 () Rule!17242)

(declare-fun inv!96970 (String!84980) Bool)

(declare-fun inv!96973 (TokenValueInjection!17390) Bool)

(assert (=> b!8043248 (= e!4738045 (and tp!2410207 (inv!96970 (tag!9585 rSep!153)) (inv!96973 (transformation!8721 rSep!153)) e!4738048))))

(declare-datatypes ((List!75311 0))(
  ( (Nil!75185) (Cons!75185 (h!81633 Rule!17242) (t!391081 List!75311)) )
))
(declare-fun rules!4166 () List!75311)

(declare-fun e!4738040 () Bool)

(declare-fun b!8043249 () Bool)

(declare-fun tp!2410205 () Bool)

(declare-fun e!4738042 () Bool)

(assert (=> b!8043249 (= e!4738040 (and tp!2410205 (inv!96970 (tag!9585 (h!81633 rules!4166))) (inv!96973 (transformation!8721 (h!81633 rules!4166))) e!4738042))))

(declare-fun b!8043250 () Bool)

(declare-fun e!4738041 () Bool)

(declare-fun tp!2410204 () Bool)

(assert (=> b!8043250 (= e!4738041 (and e!4738040 tp!2410204))))

(declare-fun b!8043251 () Bool)

(declare-fun e!4738046 () Bool)

(assert (=> b!8043251 (= e!4738046 (not true))))

(declare-datatypes ((LexerInterface!8311 0))(
  ( (LexerInterfaceExt!8308 (__x!35364 Int)) (Lexer!8309) )
))
(declare-fun thiss!27104 () LexerInterface!8311)

(declare-fun rulesInvariant!6779 (LexerInterface!8311 List!75311) Bool)

(assert (=> b!8043251 (rulesInvariant!6779 thiss!27104 (t!391081 rules!4166))))

(declare-datatypes ((Unit!171061 0))(
  ( (Unit!171062) )
))
(declare-fun lt!2722437 () Unit!171061)

(declare-fun lemmaInvariantOnRulesThenOnTail!887 (LexerInterface!8311 Rule!17242 List!75311) Unit!171061)

(assert (=> b!8043251 (= lt!2722437 (lemmaInvariantOnRulesThenOnTail!887 thiss!27104 (h!81633 rules!4166) (t!391081 rules!4166)))))

(declare-fun b!8043252 () Bool)

(declare-fun tp!2410209 () Bool)

(declare-fun e!4738038 () Bool)

(declare-fun e!4738043 () Bool)

(declare-fun rNSep!153 () Rule!17242)

(assert (=> b!8043252 (= e!4738038 (and tp!2410209 (inv!96970 (tag!9585 rNSep!153)) (inv!96973 (transformation!8721 rNSep!153)) e!4738043))))

(declare-fun b!8043253 () Bool)

(declare-fun res!3179412 () Bool)

(assert (=> b!8043253 (=> (not res!3179412) (not e!4738046))))

(assert (=> b!8043253 (= res!3179412 (and (not (isSeparator!8721 rNSep!153)) (isSeparator!8721 rSep!153)))))

(declare-fun res!3179416 () Bool)

(assert (=> start!757278 (=> (not res!3179416) (not e!4738046))))

(assert (=> start!757278 (= res!3179416 (is-Lexer!8309 thiss!27104))))

(assert (=> start!757278 e!4738046))

(assert (=> start!757278 e!4738041))

(declare-fun tp_is_empty!54579 () Bool)

(assert (=> start!757278 tp_is_empty!54579))

(assert (=> start!757278 true))

(assert (=> start!757278 e!4738038))

(assert (=> start!757278 e!4738045))

(assert (=> b!8043254 (= e!4738043 (and tp!2410208 tp!2410210))))

(assert (=> b!8043255 (= e!4738042 (and tp!2410206 tp!2410213))))

(declare-fun b!8043256 () Bool)

(declare-fun res!3179414 () Bool)

(assert (=> b!8043256 (=> (not res!3179414) (not e!4738046))))

(assert (=> b!8043256 (= res!3179414 (and (or (not (is-Cons!75185 rules!4166)) (not (= (h!81633 rules!4166) rSep!153))) (is-Cons!75185 rules!4166)))))

(declare-fun b!8043257 () Bool)

(declare-fun res!3179417 () Bool)

(assert (=> b!8043257 (=> (not res!3179417) (not e!4738046))))

(declare-fun contains!21027 (List!75311 Rule!17242) Bool)

(assert (=> b!8043257 (= res!3179417 (contains!21027 rules!4166 rSep!153))))

(assert (=> b!8043258 (= e!4738048 (and tp!2410211 tp!2410212))))

(declare-fun b!8043259 () Bool)

(declare-fun res!3179411 () Bool)

(assert (=> b!8043259 (=> (not res!3179411) (not e!4738046))))

(assert (=> b!8043259 (= res!3179411 (rulesInvariant!6779 thiss!27104 rules!4166))))

(declare-fun b!8043260 () Bool)

(declare-fun res!3179415 () Bool)

(assert (=> b!8043260 (=> (not res!3179415) (not e!4738046))))

(declare-fun c!6885 () C!43922)

(declare-fun contains!21028 (List!75309 C!43922) Bool)

(declare-fun usedCharacters!1299 (Regex!21792) List!75309)

(assert (=> b!8043260 (= res!3179415 (contains!21028 (usedCharacters!1299 (regex!8721 rSep!153)) c!6885))))

(declare-fun b!8043261 () Bool)

(declare-fun res!3179413 () Bool)

(assert (=> b!8043261 (=> (not res!3179413) (not e!4738046))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!995 (Rule!17242 List!75311) Bool)

(assert (=> b!8043261 (= res!3179413 (ruleDisjointCharsFromAllFromOtherType!995 rNSep!153 rules!4166))))

(assert (= (and start!757278 res!3179416) b!8043259))

(assert (= (and b!8043259 res!3179411) b!8043257))

(assert (= (and b!8043257 res!3179417) b!8043260))

(assert (= (and b!8043260 res!3179415) b!8043253))

(assert (= (and b!8043253 res!3179412) b!8043261))

(assert (= (and b!8043261 res!3179413) b!8043256))

(assert (= (and b!8043256 res!3179414) b!8043251))

(assert (= b!8043249 b!8043255))

(assert (= b!8043250 b!8043249))

(assert (= (and start!757278 (is-Cons!75185 rules!4166)) b!8043250))

(assert (= b!8043252 b!8043254))

(assert (= start!757278 b!8043252))

(assert (= b!8043248 b!8043258))

(assert (= start!757278 b!8043248))

(declare-fun m!8396662 () Bool)

(assert (=> b!8043248 m!8396662))

(declare-fun m!8396664 () Bool)

(assert (=> b!8043248 m!8396664))

(declare-fun m!8396666 () Bool)

(assert (=> b!8043259 m!8396666))

(declare-fun m!8396668 () Bool)

(assert (=> b!8043252 m!8396668))

(declare-fun m!8396670 () Bool)

(assert (=> b!8043252 m!8396670))

(declare-fun m!8396672 () Bool)

(assert (=> b!8043260 m!8396672))

(assert (=> b!8043260 m!8396672))

(declare-fun m!8396674 () Bool)

(assert (=> b!8043260 m!8396674))

(declare-fun m!8396676 () Bool)

(assert (=> b!8043251 m!8396676))

(declare-fun m!8396678 () Bool)

(assert (=> b!8043251 m!8396678))

(declare-fun m!8396680 () Bool)

(assert (=> b!8043257 m!8396680))

(declare-fun m!8396682 () Bool)

(assert (=> b!8043261 m!8396682))

(declare-fun m!8396684 () Bool)

(assert (=> b!8043249 m!8396684))

(declare-fun m!8396686 () Bool)

(assert (=> b!8043249 m!8396686))

(push 1)

(assert (not b!8043261))

(assert b_and!354425)

(assert (not b!8043259))

(assert b_and!354415)

(assert b_and!354417)

(assert (not b_next!136773))

(assert b_and!354423)

(assert (not b_next!136771))

(assert b_and!354421)

(assert (not b!8043260))

(assert (not b!8043252))

(assert (not b!8043248))

(assert (not b_next!136777))

(assert (not b!8043250))

(assert tp_is_empty!54579)

(assert (not b_next!136775))

(assert (not b_next!136769))

(assert (not b_next!136779))

(assert (not b!8043251))

(assert b_and!354419)

(assert (not b!8043257))

(assert (not b!8043249))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354419)

(assert b_and!354425)

(assert b_and!354415)

(assert b_and!354417)

(assert (not b_next!136773))

(assert b_and!354423)

(assert (not b_next!136771))

(assert b_and!354421)

(assert (not b_next!136777))

(assert (not b_next!136775))

(assert (not b_next!136769))

(assert (not b_next!136779))

(check-sat)

(pop 1)

