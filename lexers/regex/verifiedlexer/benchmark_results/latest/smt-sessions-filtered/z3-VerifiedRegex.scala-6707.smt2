; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351422 () Bool)

(assert start!351422)

(declare-fun b!3743361 () Bool)

(declare-fun b_free!99285 () Bool)

(declare-fun b_next!99989 () Bool)

(assert (=> b!3743361 (= b_free!99285 (not b_next!99989))))

(declare-fun tp!1141130 () Bool)

(declare-fun b_and!277519 () Bool)

(assert (=> b!3743361 (= tp!1141130 b_and!277519)))

(declare-fun b_free!99287 () Bool)

(declare-fun b_next!99991 () Bool)

(assert (=> b!3743361 (= b_free!99287 (not b_next!99991))))

(declare-fun tp!1141124 () Bool)

(declare-fun b_and!277521 () Bool)

(assert (=> b!3743361 (= tp!1141124 b_and!277521)))

(declare-fun b!3743363 () Bool)

(declare-fun b_free!99289 () Bool)

(declare-fun b_next!99993 () Bool)

(assert (=> b!3743363 (= b_free!99289 (not b_next!99993))))

(declare-fun tp!1141126 () Bool)

(declare-fun b_and!277523 () Bool)

(assert (=> b!3743363 (= tp!1141126 b_and!277523)))

(declare-fun b_free!99291 () Bool)

(declare-fun b_next!99995 () Bool)

(assert (=> b!3743363 (= b_free!99291 (not b_next!99995))))

(declare-fun tp!1141123 () Bool)

(declare-fun b_and!277525 () Bool)

(assert (=> b!3743363 (= tp!1141123 b_and!277525)))

(declare-fun b!3743371 () Bool)

(declare-fun b_free!99293 () Bool)

(declare-fun b_next!99997 () Bool)

(assert (=> b!3743371 (= b_free!99293 (not b_next!99997))))

(declare-fun tp!1141119 () Bool)

(declare-fun b_and!277527 () Bool)

(assert (=> b!3743371 (= tp!1141119 b_and!277527)))

(declare-fun b_free!99295 () Bool)

(declare-fun b_next!99999 () Bool)

(assert (=> b!3743371 (= b_free!99295 (not b_next!99999))))

(declare-fun tp!1141120 () Bool)

(declare-fun b_and!277529 () Bool)

(assert (=> b!3743371 (= tp!1141120 b_and!277529)))

(declare-fun b!3743362 () Bool)

(declare-fun b_free!99297 () Bool)

(declare-fun b_next!100001 () Bool)

(assert (=> b!3743362 (= b_free!99297 (not b_next!100001))))

(declare-fun tp!1141121 () Bool)

(declare-fun b_and!277531 () Bool)

(assert (=> b!3743362 (= tp!1141121 b_and!277531)))

(declare-fun b_free!99299 () Bool)

(declare-fun b_next!100003 () Bool)

(assert (=> b!3743362 (= b_free!99299 (not b_next!100003))))

(declare-fun tp!1141125 () Bool)

(declare-fun b_and!277533 () Bool)

(assert (=> b!3743362 (= tp!1141125 b_and!277533)))

(declare-fun b!3743358 () Bool)

(declare-fun e!2314466 () Bool)

(declare-fun e!2314464 () Bool)

(declare-datatypes ((List!39850 0))(
  ( (Nil!39726) (Cons!39726 (h!45146 (_ BitVec 16)) (t!302533 List!39850)) )
))
(declare-datatypes ((TokenValue!6278 0))(
  ( (FloatLiteralValue!12556 (text!44391 List!39850)) (TokenValueExt!6277 (__x!24773 Int)) (Broken!31390 (value!192952 List!39850)) (Object!6401) (End!6278) (Def!6278) (Underscore!6278) (Match!6278) (Else!6278) (Error!6278) (Case!6278) (If!6278) (Extends!6278) (Abstract!6278) (Class!6278) (Val!6278) (DelimiterValue!12556 (del!6338 List!39850)) (KeywordValue!6284 (value!192953 List!39850)) (CommentValue!12556 (value!192954 List!39850)) (WhitespaceValue!12556 (value!192955 List!39850)) (IndentationValue!6278 (value!192956 List!39850)) (String!45015) (Int32!6278) (Broken!31391 (value!192957 List!39850)) (Boolean!6279) (Unit!57613) (OperatorValue!6281 (op!6338 List!39850)) (IdentifierValue!12556 (value!192958 List!39850)) (IdentifierValue!12557 (value!192959 List!39850)) (WhitespaceValue!12557 (value!192960 List!39850)) (True!12556) (False!12556) (Broken!31392 (value!192961 List!39850)) (Broken!31393 (value!192962 List!39850)) (True!12557) (RightBrace!6278) (RightBracket!6278) (Colon!6278) (Null!6278) (Comma!6278) (LeftBracket!6278) (False!12557) (LeftBrace!6278) (ImaginaryLiteralValue!6278 (text!44392 List!39850)) (StringLiteralValue!18834 (value!192963 List!39850)) (EOFValue!6278 (value!192964 List!39850)) (IdentValue!6278 (value!192965 List!39850)) (DelimiterValue!12557 (value!192966 List!39850)) (DedentValue!6278 (value!192967 List!39850)) (NewLineValue!6278 (value!192968 List!39850)) (IntegerValue!18834 (value!192969 (_ BitVec 32)) (text!44393 List!39850)) (IntegerValue!18835 (value!192970 Int) (text!44394 List!39850)) (Times!6278) (Or!6278) (Equal!6278) (Minus!6278) (Broken!31394 (value!192971 List!39850)) (And!6278) (Div!6278) (LessEqual!6278) (Mod!6278) (Concat!17231) (Not!6278) (Plus!6278) (SpaceValue!6278 (value!192972 List!39850)) (IntegerValue!18836 (value!192973 Int) (text!44395 List!39850)) (StringLiteralValue!18835 (text!44396 List!39850)) (FloatLiteralValue!12557 (text!44397 List!39850)) (BytesLiteralValue!6278 (value!192974 List!39850)) (CommentValue!12557 (value!192975 List!39850)) (StringLiteralValue!18836 (value!192976 List!39850)) (ErrorTokenValue!6278 (msg!6339 List!39850)) )
))
(declare-datatypes ((C!22092 0))(
  ( (C!22093 (val!13094 Int)) )
))
(declare-datatypes ((List!39851 0))(
  ( (Nil!39727) (Cons!39727 (h!45147 C!22092) (t!302534 List!39851)) )
))
(declare-datatypes ((IArray!24295 0))(
  ( (IArray!24296 (innerList!12205 List!39851)) )
))
(declare-datatypes ((Conc!12145 0))(
  ( (Node!12145 (left!30800 Conc!12145) (right!31130 Conc!12145) (csize!24520 Int) (cheight!12356 Int)) (Leaf!18853 (xs!15347 IArray!24295) (csize!24521 Int)) (Empty!12145) )
))
(declare-datatypes ((Regex!10953 0))(
  ( (ElementMatch!10953 (c!648516 C!22092)) (Concat!17232 (regOne!22418 Regex!10953) (regTwo!22418 Regex!10953)) (EmptyExpr!10953) (Star!10953 (reg!11282 Regex!10953)) (EmptyLang!10953) (Union!10953 (regOne!22419 Regex!10953) (regTwo!22419 Regex!10953)) )
))
(declare-datatypes ((String!45016 0))(
  ( (String!45017 (value!192977 String)) )
))
(declare-datatypes ((BalanceConc!23904 0))(
  ( (BalanceConc!23905 (c!648517 Conc!12145)) )
))
(declare-datatypes ((TokenValueInjection!11984 0))(
  ( (TokenValueInjection!11985 (toValue!8392 Int) (toChars!8251 Int)) )
))
(declare-datatypes ((Rule!11896 0))(
  ( (Rule!11897 (regex!6048 Regex!10953) (tag!6908 String!45016) (isSeparator!6048 Bool) (transformation!6048 TokenValueInjection!11984)) )
))
(declare-datatypes ((List!39852 0))(
  ( (Nil!39728) (Cons!39728 (h!45148 Rule!11896) (t!302535 List!39852)) )
))
(declare-fun rulesRec!198 () List!39852)

(declare-fun tp!1141131 () Bool)

(declare-fun inv!53277 (String!45016) Bool)

(declare-fun inv!53279 (TokenValueInjection!11984) Bool)

(assert (=> b!3743358 (= e!2314466 (and tp!1141131 (inv!53277 (tag!6908 (h!45148 rulesRec!198))) (inv!53279 (transformation!6048 (h!45148 rulesRec!198))) e!2314464))))

(declare-fun tp!1141127 () Bool)

(declare-fun rules!4189 () List!39852)

(declare-fun b!3743359 () Bool)

(declare-fun e!2314472 () Bool)

(declare-fun e!2314469 () Bool)

(assert (=> b!3743359 (= e!2314469 (and tp!1141127 (inv!53277 (tag!6908 (h!45148 rules!4189))) (inv!53279 (transformation!6048 (h!45148 rules!4189))) e!2314472))))

(declare-fun b!3743360 () Bool)

(declare-fun res!1517319 () Bool)

(declare-fun e!2314465 () Bool)

(assert (=> b!3743360 (=> (not res!1517319) (not e!2314465))))

(declare-fun rSep!159 () Rule!11896)

(declare-fun contains!8053 (List!39852 Rule!11896) Bool)

(assert (=> b!3743360 (= res!1517319 (contains!8053 rules!4189 rSep!159))))

(declare-fun e!2314467 () Bool)

(assert (=> b!3743361 (= e!2314467 (and tp!1141130 tp!1141124))))

(declare-fun e!2314460 () Bool)

(assert (=> b!3743362 (= e!2314460 (and tp!1141121 tp!1141125))))

(assert (=> b!3743363 (= e!2314472 (and tp!1141126 tp!1141123))))

(declare-fun e!2314468 () Bool)

(declare-fun b!3743364 () Bool)

(declare-fun tp!1141132 () Bool)

(declare-fun rNSep!159 () Rule!11896)

(assert (=> b!3743364 (= e!2314468 (and tp!1141132 (inv!53277 (tag!6908 rNSep!159)) (inv!53279 (transformation!6048 rNSep!159)) e!2314467))))

(declare-fun b!3743365 () Bool)

(declare-fun res!1517315 () Bool)

(assert (=> b!3743365 (=> (not res!1517315) (not e!2314465))))

(assert (=> b!3743365 (= res!1517315 (and (not (isSeparator!6048 rNSep!159)) (isSeparator!6048 rSep!159)))))

(declare-fun b!3743366 () Bool)

(declare-fun e!2314473 () Bool)

(declare-fun tp!1141128 () Bool)

(assert (=> b!3743366 (= e!2314473 (and e!2314469 tp!1141128))))

(declare-fun b!3743367 () Bool)

(declare-fun e!2314474 () Bool)

(declare-fun tp!1141122 () Bool)

(assert (=> b!3743367 (= e!2314474 (and e!2314466 tp!1141122))))

(declare-fun b!3743368 () Bool)

(declare-fun res!1517316 () Bool)

(assert (=> b!3743368 (=> (not res!1517316) (not e!2314465))))

(assert (=> b!3743368 (= res!1517316 (contains!8053 rules!4189 rNSep!159))))

(declare-fun res!1517314 () Bool)

(assert (=> start!351422 (=> (not res!1517314) (not e!2314465))))

(declare-datatypes ((LexerInterface!5637 0))(
  ( (LexerInterfaceExt!5634 (__x!24774 Int)) (Lexer!5635) )
))
(declare-fun thiss!27143 () LexerInterface!5637)

(get-info :version)

(assert (=> start!351422 (= res!1517314 ((_ is Lexer!5635) thiss!27143))))

(assert (=> start!351422 e!2314465))

(assert (=> start!351422 true))

(assert (=> start!351422 e!2314473))

(declare-fun e!2314462 () Bool)

(assert (=> start!351422 e!2314462))

(assert (=> start!351422 e!2314474))

(declare-fun tp_is_empty!18921 () Bool)

(assert (=> start!351422 tp_is_empty!18921))

(assert (=> start!351422 e!2314468))

(declare-fun b!3743369 () Bool)

(declare-fun res!1517318 () Bool)

(assert (=> b!3743369 (=> (not res!1517318) (not e!2314465))))

(assert (=> b!3743369 (= res!1517318 (contains!8053 rulesRec!198 rNSep!159))))

(declare-fun b!3743370 () Bool)

(declare-fun res!1517320 () Bool)

(assert (=> b!3743370 (=> (not res!1517320) (not e!2314465))))

(declare-fun c!6900 () C!22092)

(declare-fun contains!8054 (List!39851 C!22092) Bool)

(declare-fun usedCharacters!1216 (Regex!10953) List!39851)

(assert (=> b!3743370 (= res!1517320 (contains!8054 (usedCharacters!1216 (regex!6048 rNSep!159)) c!6900))))

(assert (=> b!3743371 (= e!2314464 (and tp!1141119 tp!1141120))))

(declare-fun tp!1141129 () Bool)

(declare-fun b!3743372 () Bool)

(assert (=> b!3743372 (= e!2314462 (and tp!1141129 (inv!53277 (tag!6908 rSep!159)) (inv!53279 (transformation!6048 rSep!159)) e!2314460))))

(declare-fun b!3743373 () Bool)

(assert (=> b!3743373 (= e!2314465 false)))

(declare-fun lt!1299310 () Bool)

(declare-fun sepAndNonSepRulesDisjointChars!2026 (List!39852 List!39852) Bool)

(assert (=> b!3743373 (= lt!1299310 (sepAndNonSepRulesDisjointChars!2026 rules!4189 rulesRec!198))))

(declare-fun b!3743374 () Bool)

(declare-fun res!1517317 () Bool)

(assert (=> b!3743374 (=> (not res!1517317) (not e!2314465))))

(declare-fun rulesInvariant!5034 (LexerInterface!5637 List!39852) Bool)

(assert (=> b!3743374 (= res!1517317 (rulesInvariant!5034 thiss!27143 rules!4189))))

(assert (= (and start!351422 res!1517314) b!3743374))

(assert (= (and b!3743374 res!1517317) b!3743360))

(assert (= (and b!3743360 res!1517319) b!3743369))

(assert (= (and b!3743369 res!1517318) b!3743368))

(assert (= (and b!3743368 res!1517316) b!3743365))

(assert (= (and b!3743365 res!1517315) b!3743370))

(assert (= (and b!3743370 res!1517320) b!3743373))

(assert (= b!3743359 b!3743363))

(assert (= b!3743366 b!3743359))

(assert (= (and start!351422 ((_ is Cons!39728) rules!4189)) b!3743366))

(assert (= b!3743372 b!3743362))

(assert (= start!351422 b!3743372))

(assert (= b!3743358 b!3743371))

(assert (= b!3743367 b!3743358))

(assert (= (and start!351422 ((_ is Cons!39728) rulesRec!198)) b!3743367))

(assert (= b!3743364 b!3743361))

(assert (= start!351422 b!3743364))

(declare-fun m!4237131 () Bool)

(assert (=> b!3743368 m!4237131))

(declare-fun m!4237133 () Bool)

(assert (=> b!3743370 m!4237133))

(assert (=> b!3743370 m!4237133))

(declare-fun m!4237135 () Bool)

(assert (=> b!3743370 m!4237135))

(declare-fun m!4237137 () Bool)

(assert (=> b!3743364 m!4237137))

(declare-fun m!4237139 () Bool)

(assert (=> b!3743364 m!4237139))

(declare-fun m!4237141 () Bool)

(assert (=> b!3743360 m!4237141))

(declare-fun m!4237143 () Bool)

(assert (=> b!3743369 m!4237143))

(declare-fun m!4237145 () Bool)

(assert (=> b!3743372 m!4237145))

(declare-fun m!4237147 () Bool)

(assert (=> b!3743372 m!4237147))

(declare-fun m!4237149 () Bool)

(assert (=> b!3743374 m!4237149))

(declare-fun m!4237151 () Bool)

(assert (=> b!3743373 m!4237151))

(declare-fun m!4237153 () Bool)

(assert (=> b!3743359 m!4237153))

(declare-fun m!4237155 () Bool)

(assert (=> b!3743359 m!4237155))

(declare-fun m!4237157 () Bool)

(assert (=> b!3743358 m!4237157))

(declare-fun m!4237159 () Bool)

(assert (=> b!3743358 m!4237159))

(check-sat b_and!277531 b_and!277529 (not b!3743373) (not b!3743367) b_and!277523 (not b!3743370) (not b!3743369) (not b!3743358) (not b_next!100001) b_and!277521 (not b_next!99997) (not b_next!100003) (not b!3743374) tp_is_empty!18921 (not b!3743360) (not b!3743359) (not b!3743364) b_and!277519 b_and!277527 (not b!3743368) (not b_next!99991) (not b_next!99999) (not b_next!99993) (not b_next!99989) (not b!3743372) b_and!277525 b_and!277533 (not b_next!99995) (not b!3743366))
(check-sat b_and!277531 b_and!277529 b_and!277523 (not b_next!100001) b_and!277521 (not b_next!99995) (not b_next!99997) (not b_next!100003) b_and!277519 b_and!277527 (not b_next!99991) (not b_next!99999) (not b_next!99993) (not b_next!99989) b_and!277525 b_and!277533)
