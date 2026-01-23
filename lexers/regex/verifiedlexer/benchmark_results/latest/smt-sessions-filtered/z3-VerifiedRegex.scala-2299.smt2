; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112638 () Bool)

(assert start!112638)

(declare-fun b!1287036 () Bool)

(declare-fun b_free!30275 () Bool)

(declare-fun b_next!30979 () Bool)

(assert (=> b!1287036 (= b_free!30275 (not b_next!30979))))

(declare-fun tp!374879 () Bool)

(declare-fun b_and!85551 () Bool)

(assert (=> b!1287036 (= tp!374879 b_and!85551)))

(declare-fun b_free!30277 () Bool)

(declare-fun b_next!30981 () Bool)

(assert (=> b!1287036 (= b_free!30277 (not b_next!30981))))

(declare-fun tp!374883 () Bool)

(declare-fun b_and!85553 () Bool)

(assert (=> b!1287036 (= tp!374883 b_and!85553)))

(declare-fun b!1287026 () Bool)

(declare-fun b_free!30279 () Bool)

(declare-fun b_next!30983 () Bool)

(assert (=> b!1287026 (= b_free!30279 (not b_next!30983))))

(declare-fun tp!374877 () Bool)

(declare-fun b_and!85555 () Bool)

(assert (=> b!1287026 (= tp!374877 b_and!85555)))

(declare-fun b_free!30281 () Bool)

(declare-fun b_next!30985 () Bool)

(assert (=> b!1287026 (= b_free!30281 (not b_next!30985))))

(declare-fun tp!374878 () Bool)

(declare-fun b_and!85557 () Bool)

(assert (=> b!1287026 (= tp!374878 b_and!85557)))

(declare-fun b!1287035 () Bool)

(declare-fun b_free!30283 () Bool)

(declare-fun b_next!30987 () Bool)

(assert (=> b!1287035 (= b_free!30283 (not b_next!30987))))

(declare-fun tp!374875 () Bool)

(declare-fun b_and!85559 () Bool)

(assert (=> b!1287035 (= tp!374875 b_and!85559)))

(declare-fun b_free!30285 () Bool)

(declare-fun b_next!30989 () Bool)

(assert (=> b!1287035 (= b_free!30285 (not b_next!30989))))

(declare-fun tp!374884 () Bool)

(declare-fun b_and!85561 () Bool)

(assert (=> b!1287035 (= tp!374884 b_and!85561)))

(declare-fun res!577027 () Bool)

(declare-fun e!825392 () Bool)

(assert (=> start!112638 (=> (not res!577027) (not e!825392))))

(declare-datatypes ((LexerInterface!1902 0))(
  ( (LexerInterfaceExt!1899 (__x!8423 Int)) (Lexer!1900) )
))
(declare-fun thiss!19762 () LexerInterface!1902)

(get-info :version)

(assert (=> start!112638 (= res!577027 ((_ is Lexer!1900) thiss!19762))))

(assert (=> start!112638 e!825392))

(assert (=> start!112638 true))

(declare-fun e!825389 () Bool)

(assert (=> start!112638 e!825389))

(declare-datatypes ((List!12891 0))(
  ( (Nil!12825) (Cons!12825 (h!18226 (_ BitVec 16)) (t!116890 List!12891)) )
))
(declare-datatypes ((TokenValue!2297 0))(
  ( (FloatLiteralValue!4594 (text!16524 List!12891)) (TokenValueExt!2296 (__x!8424 Int)) (Broken!11485 (value!72506 List!12891)) (Object!2362) (End!2297) (Def!2297) (Underscore!2297) (Match!2297) (Else!2297) (Error!2297) (Case!2297) (If!2297) (Extends!2297) (Abstract!2297) (Class!2297) (Val!2297) (DelimiterValue!4594 (del!2357 List!12891)) (KeywordValue!2303 (value!72507 List!12891)) (CommentValue!4594 (value!72508 List!12891)) (WhitespaceValue!4594 (value!72509 List!12891)) (IndentationValue!2297 (value!72510 List!12891)) (String!15720) (Int32!2297) (Broken!11486 (value!72511 List!12891)) (Boolean!2298) (Unit!19009) (OperatorValue!2300 (op!2357 List!12891)) (IdentifierValue!4594 (value!72512 List!12891)) (IdentifierValue!4595 (value!72513 List!12891)) (WhitespaceValue!4595 (value!72514 List!12891)) (True!4594) (False!4594) (Broken!11487 (value!72515 List!12891)) (Broken!11488 (value!72516 List!12891)) (True!4595) (RightBrace!2297) (RightBracket!2297) (Colon!2297) (Null!2297) (Comma!2297) (LeftBracket!2297) (False!4595) (LeftBrace!2297) (ImaginaryLiteralValue!2297 (text!16525 List!12891)) (StringLiteralValue!6891 (value!72517 List!12891)) (EOFValue!2297 (value!72518 List!12891)) (IdentValue!2297 (value!72519 List!12891)) (DelimiterValue!4595 (value!72520 List!12891)) (DedentValue!2297 (value!72521 List!12891)) (NewLineValue!2297 (value!72522 List!12891)) (IntegerValue!6891 (value!72523 (_ BitVec 32)) (text!16526 List!12891)) (IntegerValue!6892 (value!72524 Int) (text!16527 List!12891)) (Times!2297) (Or!2297) (Equal!2297) (Minus!2297) (Broken!11489 (value!72525 List!12891)) (And!2297) (Div!2297) (LessEqual!2297) (Mod!2297) (Concat!5818) (Not!2297) (Plus!2297) (SpaceValue!2297 (value!72526 List!12891)) (IntegerValue!6893 (value!72527 Int) (text!16528 List!12891)) (StringLiteralValue!6892 (text!16529 List!12891)) (FloatLiteralValue!4595 (text!16530 List!12891)) (BytesLiteralValue!2297 (value!72528 List!12891)) (CommentValue!4595 (value!72529 List!12891)) (StringLiteralValue!6893 (value!72530 List!12891)) (ErrorTokenValue!2297 (msg!2358 List!12891)) )
))
(declare-datatypes ((C!7332 0))(
  ( (C!7333 (val!4226 Int)) )
))
(declare-datatypes ((List!12892 0))(
  ( (Nil!12826) (Cons!12826 (h!18227 C!7332) (t!116891 List!12892)) )
))
(declare-datatypes ((IArray!8435 0))(
  ( (IArray!8436 (innerList!4275 List!12892)) )
))
(declare-datatypes ((Conc!4215 0))(
  ( (Node!4215 (left!11044 Conc!4215) (right!11374 Conc!4215) (csize!8660 Int) (cheight!4426 Int)) (Leaf!6515 (xs!6926 IArray!8435) (csize!8661 Int)) (Empty!4215) )
))
(declare-datatypes ((BalanceConc!8370 0))(
  ( (BalanceConc!8371 (c!211849 Conc!4215)) )
))
(declare-datatypes ((Regex!3521 0))(
  ( (ElementMatch!3521 (c!211850 C!7332)) (Concat!5819 (regOne!7554 Regex!3521) (regTwo!7554 Regex!3521)) (EmptyExpr!3521) (Star!3521 (reg!3850 Regex!3521)) (EmptyLang!3521) (Union!3521 (regOne!7555 Regex!3521) (regTwo!7555 Regex!3521)) )
))
(declare-datatypes ((String!15721 0))(
  ( (String!15722 (value!72531 String)) )
))
(declare-datatypes ((TokenValueInjection!4254 0))(
  ( (TokenValueInjection!4255 (toValue!3394 Int) (toChars!3253 Int)) )
))
(declare-datatypes ((Rule!4214 0))(
  ( (Rule!4215 (regex!2207 Regex!3521) (tag!2469 String!15721) (isSeparator!2207 Bool) (transformation!2207 TokenValueInjection!4254)) )
))
(declare-datatypes ((Token!4076 0))(
  ( (Token!4077 (value!72532 TokenValue!2297) (rule!3946 Rule!4214) (size!10453 Int) (originalCharacters!3069 List!12892)) )
))
(declare-fun t1!34 () Token!4076)

(declare-fun e!825397 () Bool)

(declare-fun inv!17238 (Token!4076) Bool)

(assert (=> start!112638 (and (inv!17238 t1!34) e!825397)))

(declare-fun t2!34 () Token!4076)

(declare-fun e!825396 () Bool)

(assert (=> start!112638 (and (inv!17238 t2!34) e!825396)))

(declare-fun b!1287024 () Bool)

(declare-fun res!577035 () Bool)

(assert (=> b!1287024 (=> (not res!577035) (not e!825392))))

(declare-datatypes ((List!12893 0))(
  ( (Nil!12827) (Cons!12827 (h!18228 Rule!4214) (t!116892 List!12893)) )
))
(declare-fun rules!2550 () List!12893)

(declare-fun rulesInvariant!1772 (LexerInterface!1902 List!12893) Bool)

(assert (=> b!1287024 (= res!577035 (rulesInvariant!1772 thiss!19762 rules!2550))))

(declare-fun b!1287025 () Bool)

(declare-fun e!825387 () Bool)

(assert (=> b!1287025 (= e!825392 e!825387)))

(declare-fun res!577030 () Bool)

(assert (=> b!1287025 (=> (not res!577030) (not e!825387))))

(declare-fun lt!424088 () BalanceConc!8370)

(declare-fun size!10454 (BalanceConc!8370) Int)

(assert (=> b!1287025 (= res!577030 (> (size!10454 lt!424088) 0))))

(declare-fun charsOf!1179 (Token!4076) BalanceConc!8370)

(assert (=> b!1287025 (= lt!424088 (charsOf!1179 t2!34))))

(declare-fun e!825390 () Bool)

(assert (=> b!1287026 (= e!825390 (and tp!374877 tp!374878))))

(declare-fun b!1287027 () Bool)

(declare-fun tp!374881 () Bool)

(declare-fun e!825388 () Bool)

(declare-fun inv!21 (TokenValue!2297) Bool)

(assert (=> b!1287027 (= e!825397 (and (inv!21 (value!72532 t1!34)) e!825388 tp!374881))))

(declare-fun b!1287028 () Bool)

(declare-fun res!577032 () Bool)

(assert (=> b!1287028 (=> (not res!577032) (not e!825387))))

(declare-fun sepAndNonSepRulesDisjointChars!580 (List!12893 List!12893) Bool)

(assert (=> b!1287028 (= res!577032 (sepAndNonSepRulesDisjointChars!580 rules!2550 rules!2550))))

(declare-fun b!1287029 () Bool)

(declare-fun res!577028 () Bool)

(assert (=> b!1287029 (=> (not res!577028) (not e!825392))))

(declare-fun isEmpty!7610 (List!12893) Bool)

(assert (=> b!1287029 (= res!577028 (not (isEmpty!7610 rules!2550)))))

(declare-fun b!1287030 () Bool)

(declare-fun e!825384 () Bool)

(declare-fun tp!374876 () Bool)

(assert (=> b!1287030 (= e!825389 (and e!825384 tp!374876))))

(declare-fun b!1287031 () Bool)

(declare-fun res!577031 () Bool)

(assert (=> b!1287031 (=> (not res!577031) (not e!825392))))

(declare-fun rulesProduceIndividualToken!871 (LexerInterface!1902 List!12893 Token!4076) Bool)

(assert (=> b!1287031 (= res!577031 (rulesProduceIndividualToken!871 thiss!19762 rules!2550 t2!34))))

(declare-fun e!825398 () Bool)

(declare-fun tp!374880 () Bool)

(declare-fun b!1287032 () Bool)

(declare-fun inv!17235 (String!15721) Bool)

(declare-fun inv!17239 (TokenValueInjection!4254) Bool)

(assert (=> b!1287032 (= e!825384 (and tp!374880 (inv!17235 (tag!2469 (h!18228 rules!2550))) (inv!17239 (transformation!2207 (h!18228 rules!2550))) e!825398))))

(declare-fun b!1287033 () Bool)

(declare-fun tp!374886 () Bool)

(declare-fun e!825394 () Bool)

(assert (=> b!1287033 (= e!825394 (and tp!374886 (inv!17235 (tag!2469 (rule!3946 t2!34))) (inv!17239 (transformation!2207 (rule!3946 t2!34))) e!825390))))

(declare-fun b!1287034 () Bool)

(declare-fun tp!374885 () Bool)

(declare-fun e!825385 () Bool)

(assert (=> b!1287034 (= e!825388 (and tp!374885 (inv!17235 (tag!2469 (rule!3946 t1!34))) (inv!17239 (transformation!2207 (rule!3946 t1!34))) e!825385))))

(assert (=> b!1287035 (= e!825398 (and tp!374875 tp!374884))))

(assert (=> b!1287036 (= e!825385 (and tp!374879 tp!374883))))

(declare-fun b!1287037 () Bool)

(declare-fun tp!374882 () Bool)

(assert (=> b!1287037 (= e!825396 (and (inv!21 (value!72532 t2!34)) e!825394 tp!374882))))

(declare-fun b!1287038 () Bool)

(declare-fun res!577033 () Bool)

(assert (=> b!1287038 (=> (not res!577033) (not e!825392))))

(assert (=> b!1287038 (= res!577033 (rulesProduceIndividualToken!871 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1287039 () Bool)

(declare-fun res!577034 () Bool)

(assert (=> b!1287039 (=> (not res!577034) (not e!825392))))

(assert (=> b!1287039 (= res!577034 (not (= (isSeparator!2207 (rule!3946 t1!34)) (isSeparator!2207 (rule!3946 t2!34)))))))

(declare-fun b!1287040 () Bool)

(declare-fun res!577029 () Bool)

(assert (=> b!1287040 (=> (not res!577029) (not e!825387))))

(declare-fun separableTokensPredicate!185 (LexerInterface!1902 Token!4076 Token!4076 List!12893) Bool)

(assert (=> b!1287040 (= res!577029 (not (separableTokensPredicate!185 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1287041 () Bool)

(assert (=> b!1287041 (= e!825387 false)))

(declare-fun lt!424087 () Bool)

(declare-fun prefixMatch!34 (Regex!3521 List!12892) Bool)

(declare-fun rulesRegex!92 (LexerInterface!1902 List!12893) Regex!3521)

(declare-fun ++!3239 (List!12892 List!12892) List!12892)

(declare-fun list!4771 (BalanceConc!8370) List!12892)

(declare-fun apply!2757 (BalanceConc!8370 Int) C!7332)

(assert (=> b!1287041 (= lt!424087 (prefixMatch!34 (rulesRegex!92 thiss!19762 rules!2550) (++!3239 (list!4771 (charsOf!1179 t1!34)) (Cons!12826 (apply!2757 lt!424088 0) Nil!12826))))))

(assert (= (and start!112638 res!577027) b!1287029))

(assert (= (and b!1287029 res!577028) b!1287024))

(assert (= (and b!1287024 res!577035) b!1287038))

(assert (= (and b!1287038 res!577033) b!1287031))

(assert (= (and b!1287031 res!577031) b!1287039))

(assert (= (and b!1287039 res!577034) b!1287025))

(assert (= (and b!1287025 res!577030) b!1287028))

(assert (= (and b!1287028 res!577032) b!1287040))

(assert (= (and b!1287040 res!577029) b!1287041))

(assert (= b!1287032 b!1287035))

(assert (= b!1287030 b!1287032))

(assert (= (and start!112638 ((_ is Cons!12827) rules!2550)) b!1287030))

(assert (= b!1287034 b!1287036))

(assert (= b!1287027 b!1287034))

(assert (= start!112638 b!1287027))

(assert (= b!1287033 b!1287026))

(assert (= b!1287037 b!1287033))

(assert (= start!112638 b!1287037))

(declare-fun m!1437415 () Bool)

(assert (=> b!1287034 m!1437415))

(declare-fun m!1437417 () Bool)

(assert (=> b!1287034 m!1437417))

(declare-fun m!1437419 () Bool)

(assert (=> b!1287027 m!1437419))

(declare-fun m!1437421 () Bool)

(assert (=> b!1287025 m!1437421))

(declare-fun m!1437423 () Bool)

(assert (=> b!1287025 m!1437423))

(declare-fun m!1437425 () Bool)

(assert (=> b!1287028 m!1437425))

(declare-fun m!1437427 () Bool)

(assert (=> b!1287037 m!1437427))

(declare-fun m!1437429 () Bool)

(assert (=> b!1287033 m!1437429))

(declare-fun m!1437431 () Bool)

(assert (=> b!1287033 m!1437431))

(declare-fun m!1437433 () Bool)

(assert (=> b!1287024 m!1437433))

(declare-fun m!1437435 () Bool)

(assert (=> b!1287041 m!1437435))

(declare-fun m!1437437 () Bool)

(assert (=> b!1287041 m!1437437))

(declare-fun m!1437439 () Bool)

(assert (=> b!1287041 m!1437439))

(declare-fun m!1437441 () Bool)

(assert (=> b!1287041 m!1437441))

(assert (=> b!1287041 m!1437437))

(declare-fun m!1437443 () Bool)

(assert (=> b!1287041 m!1437443))

(assert (=> b!1287041 m!1437441))

(assert (=> b!1287041 m!1437439))

(assert (=> b!1287041 m!1437435))

(declare-fun m!1437445 () Bool)

(assert (=> b!1287041 m!1437445))

(declare-fun m!1437447 () Bool)

(assert (=> b!1287031 m!1437447))

(declare-fun m!1437449 () Bool)

(assert (=> b!1287038 m!1437449))

(declare-fun m!1437451 () Bool)

(assert (=> b!1287040 m!1437451))

(declare-fun m!1437453 () Bool)

(assert (=> start!112638 m!1437453))

(declare-fun m!1437455 () Bool)

(assert (=> start!112638 m!1437455))

(declare-fun m!1437457 () Bool)

(assert (=> b!1287029 m!1437457))

(declare-fun m!1437459 () Bool)

(assert (=> b!1287032 m!1437459))

(declare-fun m!1437461 () Bool)

(assert (=> b!1287032 m!1437461))

(check-sat (not b!1287037) (not b!1287033) (not start!112638) b_and!85559 (not b!1287027) (not b!1287030) (not b!1287024) b_and!85555 (not b!1287029) (not b_next!30981) b_and!85553 (not b_next!30979) (not b_next!30989) b_and!85561 (not b!1287034) (not b!1287032) b_and!85557 b_and!85551 (not b!1287041) (not b_next!30983) (not b!1287040) (not b_next!30985) (not b!1287025) (not b_next!30987) (not b!1287031) (not b!1287028) (not b!1287038))
(check-sat b_and!85557 b_and!85559 b_and!85551 (not b_next!30983) (not b_next!30985) (not b_next!30987) b_and!85555 (not b_next!30981) b_and!85553 (not b_next!30979) (not b_next!30989) b_and!85561)
