; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757192 () Bool)

(assert start!757192)

(declare-fun b!8042398 () Bool)

(declare-fun b_free!135831 () Bool)

(declare-fun b_next!136621 () Bool)

(assert (=> b!8042398 (= b_free!135831 (not b_next!136621))))

(declare-fun tp!2409735 () Bool)

(declare-fun b_and!354267 () Bool)

(assert (=> b!8042398 (= tp!2409735 b_and!354267)))

(declare-fun b_free!135833 () Bool)

(declare-fun b_next!136623 () Bool)

(assert (=> b!8042398 (= b_free!135833 (not b_next!136623))))

(declare-fun tp!2409733 () Bool)

(declare-fun b_and!354269 () Bool)

(assert (=> b!8042398 (= tp!2409733 b_and!354269)))

(declare-fun b!8042388 () Bool)

(declare-fun b_free!135835 () Bool)

(declare-fun b_next!136625 () Bool)

(assert (=> b!8042388 (= b_free!135835 (not b_next!136625))))

(declare-fun tp!2409727 () Bool)

(declare-fun b_and!354271 () Bool)

(assert (=> b!8042388 (= tp!2409727 b_and!354271)))

(declare-fun b_free!135837 () Bool)

(declare-fun b_next!136627 () Bool)

(assert (=> b!8042388 (= b_free!135837 (not b_next!136627))))

(declare-fun tp!2409732 () Bool)

(declare-fun b_and!354273 () Bool)

(assert (=> b!8042388 (= tp!2409732 b_and!354273)))

(declare-fun b!8042400 () Bool)

(declare-fun b_free!135839 () Bool)

(declare-fun b_next!136629 () Bool)

(assert (=> b!8042400 (= b_free!135839 (not b_next!136629))))

(declare-fun tp!2409726 () Bool)

(declare-fun b_and!354275 () Bool)

(assert (=> b!8042400 (= tp!2409726 b_and!354275)))

(declare-fun b_free!135841 () Bool)

(declare-fun b_next!136631 () Bool)

(assert (=> b!8042400 (= b_free!135841 (not b_next!136631))))

(declare-fun tp!2409728 () Bool)

(declare-fun b_and!354277 () Bool)

(assert (=> b!8042400 (= tp!2409728 b_and!354277)))

(declare-fun e!4737401 () Bool)

(assert (=> b!8042388 (= e!4737401 (and tp!2409727 tp!2409732))))

(declare-fun b!8042389 () Bool)

(declare-fun res!3179069 () Bool)

(declare-fun e!4737402 () Bool)

(assert (=> b!8042389 (=> (not res!3179069) (not e!4737402))))

(declare-datatypes ((C!43900 0))(
  ( (C!43901 (val!32726 Int)) )
))
(declare-datatypes ((List!75272 0))(
  ( (Nil!75146) (Cons!75146 (h!81594 C!43900) (t!391042 List!75272)) )
))
(declare-datatypes ((IArray!32017 0))(
  ( (IArray!32018 (innerList!16066 List!75272)) )
))
(declare-datatypes ((Conc!15978 0))(
  ( (Node!15978 (left!57286 Conc!15978) (right!57616 Conc!15978) (csize!32186 Int) (cheight!16189 Int)) (Leaf!30643 (xs!19376 IArray!32017) (csize!32187 Int)) (Empty!15978) )
))
(declare-datatypes ((List!75273 0))(
  ( (Nil!75147) (Cons!75147 (h!81595 (_ BitVec 16)) (t!391043 List!75273)) )
))
(declare-datatypes ((Regex!21781 0))(
  ( (ElementMatch!21781 (c!1475119 C!43900)) (Concat!30811 (regOne!44074 Regex!21781) (regTwo!44074 Regex!21781)) (EmptyExpr!21781) (Star!21781 (reg!22110 Regex!21781)) (EmptyLang!21781) (Union!21781 (regOne!44075 Regex!21781) (regTwo!44075 Regex!21781)) )
))
(declare-datatypes ((String!84923 0))(
  ( (String!84924 (value!291291 String)) )
))
(declare-datatypes ((TokenValue!9030 0))(
  ( (FloatLiteralValue!18060 (text!63655 List!75273)) (TokenValueExt!9029 (__x!35341 Int)) (Broken!45150 (value!291292 List!75273)) (Object!9155) (End!9030) (Def!9030) (Underscore!9030) (Match!9030) (Else!9030) (Error!9030) (Case!9030) (If!9030) (Extends!9030) (Abstract!9030) (Class!9030) (Val!9030) (DelimiterValue!18060 (del!9090 List!75273)) (KeywordValue!9036 (value!291293 List!75273)) (CommentValue!18060 (value!291294 List!75273)) (WhitespaceValue!18060 (value!291295 List!75273)) (IndentationValue!9030 (value!291296 List!75273)) (String!84925) (Int32!9030) (Broken!45151 (value!291297 List!75273)) (Boolean!9031) (Unit!171041) (OperatorValue!9033 (op!9090 List!75273)) (IdentifierValue!18060 (value!291298 List!75273)) (IdentifierValue!18061 (value!291299 List!75273)) (WhitespaceValue!18061 (value!291300 List!75273)) (True!18060) (False!18060) (Broken!45152 (value!291301 List!75273)) (Broken!45153 (value!291302 List!75273)) (True!18061) (RightBrace!9030) (RightBracket!9030) (Colon!9030) (Null!9030) (Comma!9030) (LeftBracket!9030) (False!18061) (LeftBrace!9030) (ImaginaryLiteralValue!9030 (text!63656 List!75273)) (StringLiteralValue!27090 (value!291303 List!75273)) (EOFValue!9030 (value!291304 List!75273)) (IdentValue!9030 (value!291305 List!75273)) (DelimiterValue!18061 (value!291306 List!75273)) (DedentValue!9030 (value!291307 List!75273)) (NewLineValue!9030 (value!291308 List!75273)) (IntegerValue!27090 (value!291309 (_ BitVec 32)) (text!63657 List!75273)) (IntegerValue!27091 (value!291310 Int) (text!63658 List!75273)) (Times!9030) (Or!9030) (Equal!9030) (Minus!9030) (Broken!45154 (value!291311 List!75273)) (And!9030) (Div!9030) (LessEqual!9030) (Mod!9030) (Concat!30812) (Not!9030) (Plus!9030) (SpaceValue!9030 (value!291312 List!75273)) (IntegerValue!27092 (value!291313 Int) (text!63659 List!75273)) (StringLiteralValue!27091 (text!63660 List!75273)) (FloatLiteralValue!18061 (text!63661 List!75273)) (BytesLiteralValue!9030 (value!291314 List!75273)) (CommentValue!18061 (value!291315 List!75273)) (StringLiteralValue!27092 (value!291316 List!75273)) (ErrorTokenValue!9030 (msg!9091 List!75273)) )
))
(declare-datatypes ((BalanceConc!30912 0))(
  ( (BalanceConc!30913 (c!1475120 Conc!15978)) )
))
(declare-datatypes ((TokenValueInjection!17368 0))(
  ( (TokenValueInjection!17369 (toValue!11785 Int) (toChars!11644 Int)) )
))
(declare-datatypes ((Rule!17220 0))(
  ( (Rule!17221 (regex!8710 Regex!21781) (tag!9574 String!84923) (isSeparator!8710 Bool) (transformation!8710 TokenValueInjection!17368)) )
))
(declare-datatypes ((List!75274 0))(
  ( (Nil!75148) (Cons!75148 (h!81596 Rule!17220) (t!391044 List!75274)) )
))
(declare-fun rules!4166 () List!75274)

(declare-fun rSep!153 () Rule!17220)

(get-info :version)

(assert (=> b!8042389 (= res!3179069 (and (or (not ((_ is Cons!75148) rules!4166)) (not (= (h!81596 rules!4166) rSep!153))) ((_ is Cons!75148) rules!4166)))))

(declare-fun b!8042390 () Bool)

(assert (=> b!8042390 (= e!4737402 false)))

(declare-fun lt!2722366 () Bool)

(declare-datatypes ((LexerInterface!8300 0))(
  ( (LexerInterfaceExt!8297 (__x!35342 Int)) (Lexer!8298) )
))
(declare-fun thiss!27104 () LexerInterface!8300)

(declare-fun rulesInvariant!6768 (LexerInterface!8300 List!75274) Bool)

(assert (=> b!8042390 (= lt!2722366 (rulesInvariant!6768 thiss!27104 rules!4166))))

(declare-fun b!8042391 () Bool)

(declare-fun res!3179063 () Bool)

(assert (=> b!8042391 (=> (not res!3179063) (not e!4737402))))

(declare-fun rNSep!153 () Rule!17220)

(assert (=> b!8042391 (= res!3179063 (and (not (isSeparator!8710 rNSep!153)) (isSeparator!8710 rSep!153)))))

(declare-fun b!8042392 () Bool)

(declare-fun res!3179065 () Bool)

(assert (=> b!8042392 (=> (not res!3179065) (not e!4737402))))

(declare-fun contains!21005 (List!75274 Rule!17220) Bool)

(assert (=> b!8042392 (= res!3179065 (contains!21005 rules!4166 rSep!153))))

(declare-fun tp!2409731 () Bool)

(declare-fun e!4737405 () Bool)

(declare-fun b!8042393 () Bool)

(declare-fun e!4737396 () Bool)

(declare-fun inv!96942 (String!84923) Bool)

(declare-fun inv!96944 (TokenValueInjection!17368) Bool)

(assert (=> b!8042393 (= e!4737405 (and tp!2409731 (inv!96942 (tag!9574 (h!81596 rules!4166))) (inv!96944 (transformation!8710 (h!81596 rules!4166))) e!4737396))))

(declare-fun b!8042394 () Bool)

(declare-fun e!4737397 () Bool)

(declare-fun tp!2409730 () Bool)

(assert (=> b!8042394 (= e!4737397 (and e!4737405 tp!2409730))))

(declare-fun e!4737395 () Bool)

(declare-fun tp!2409729 () Bool)

(declare-fun b!8042395 () Bool)

(assert (=> b!8042395 (= e!4737395 (and tp!2409729 (inv!96942 (tag!9574 rNSep!153)) (inv!96944 (transformation!8710 rNSep!153)) e!4737401))))

(declare-fun b!8042396 () Bool)

(declare-fun res!3179067 () Bool)

(assert (=> b!8042396 (=> (not res!3179067) (not e!4737402))))

(assert (=> b!8042396 (= res!3179067 (rulesInvariant!6768 thiss!27104 rules!4166))))

(declare-fun b!8042397 () Bool)

(declare-fun res!3179064 () Bool)

(assert (=> b!8042397 (=> (not res!3179064) (not e!4737402))))

(declare-fun c!6885 () C!43900)

(declare-fun contains!21006 (List!75272 C!43900) Bool)

(declare-fun usedCharacters!1288 (Regex!21781) List!75272)

(assert (=> b!8042397 (= res!3179064 (contains!21006 (usedCharacters!1288 (regex!8710 rSep!153)) c!6885))))

(declare-fun b!8042399 () Bool)

(declare-fun e!4737403 () Bool)

(declare-fun e!4737398 () Bool)

(declare-fun tp!2409734 () Bool)

(assert (=> b!8042399 (= e!4737403 (and tp!2409734 (inv!96942 (tag!9574 rSep!153)) (inv!96944 (transformation!8710 rSep!153)) e!4737398))))

(assert (=> b!8042400 (= e!4737396 (and tp!2409726 tp!2409728))))

(declare-fun b!8042401 () Bool)

(declare-fun res!3179066 () Bool)

(assert (=> b!8042401 (=> (not res!3179066) (not e!4737402))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!984 (Rule!17220 List!75274) Bool)

(assert (=> b!8042401 (= res!3179066 (ruleDisjointCharsFromAllFromOtherType!984 rNSep!153 rules!4166))))

(assert (=> b!8042398 (= e!4737398 (and tp!2409735 tp!2409733))))

(declare-fun res!3179068 () Bool)

(assert (=> start!757192 (=> (not res!3179068) (not e!4737402))))

(assert (=> start!757192 (= res!3179068 ((_ is Lexer!8298) thiss!27104))))

(assert (=> start!757192 e!4737402))

(assert (=> start!757192 e!4737397))

(declare-fun tp_is_empty!54557 () Bool)

(assert (=> start!757192 tp_is_empty!54557))

(assert (=> start!757192 true))

(assert (=> start!757192 e!4737395))

(assert (=> start!757192 e!4737403))

(assert (= (and start!757192 res!3179068) b!8042396))

(assert (= (and b!8042396 res!3179067) b!8042392))

(assert (= (and b!8042392 res!3179065) b!8042397))

(assert (= (and b!8042397 res!3179064) b!8042391))

(assert (= (and b!8042391 res!3179063) b!8042401))

(assert (= (and b!8042401 res!3179066) b!8042389))

(assert (= (and b!8042389 res!3179069) b!8042390))

(assert (= b!8042393 b!8042400))

(assert (= b!8042394 b!8042393))

(assert (= (and start!757192 ((_ is Cons!75148) rules!4166)) b!8042394))

(assert (= b!8042395 b!8042388))

(assert (= start!757192 b!8042395))

(assert (= b!8042399 b!8042398))

(assert (= start!757192 b!8042399))

(declare-fun m!8396180 () Bool)

(assert (=> b!8042401 m!8396180))

(declare-fun m!8396182 () Bool)

(assert (=> b!8042396 m!8396182))

(declare-fun m!8396184 () Bool)

(assert (=> b!8042392 m!8396184))

(declare-fun m!8396186 () Bool)

(assert (=> b!8042393 m!8396186))

(declare-fun m!8396188 () Bool)

(assert (=> b!8042393 m!8396188))

(declare-fun m!8396190 () Bool)

(assert (=> b!8042395 m!8396190))

(declare-fun m!8396192 () Bool)

(assert (=> b!8042395 m!8396192))

(declare-fun m!8396194 () Bool)

(assert (=> b!8042399 m!8396194))

(declare-fun m!8396196 () Bool)

(assert (=> b!8042399 m!8396196))

(assert (=> b!8042390 m!8396182))

(declare-fun m!8396198 () Bool)

(assert (=> b!8042397 m!8396198))

(assert (=> b!8042397 m!8396198))

(declare-fun m!8396200 () Bool)

(assert (=> b!8042397 m!8396200))

(check-sat (not b_next!136631) (not b!8042390) (not b!8042399) (not b!8042395) (not b!8042397) (not b_next!136627) (not b!8042392) b_and!354269 b_and!354267 (not b_next!136629) tp_is_empty!54557 b_and!354273 (not b!8042394) (not b!8042393) b_and!354277 (not b!8042396) b_and!354275 (not b_next!136621) (not b_next!136625) b_and!354271 (not b!8042401) (not b_next!136623))
(check-sat (not b_next!136631) b_and!354273 b_and!354277 b_and!354275 (not b_next!136627) b_and!354269 b_and!354267 (not b_next!136629) (not b_next!136623) (not b_next!136621) (not b_next!136625) b_and!354271)
