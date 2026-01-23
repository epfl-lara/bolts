; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384492 () Bool)

(assert start!384492)

(declare-fun b!4073296 () Bool)

(declare-fun b_free!113409 () Bool)

(declare-fun b_next!114113 () Bool)

(assert (=> b!4073296 (= b_free!113409 (not b_next!114113))))

(declare-fun tp!1232876 () Bool)

(declare-fun b_and!313059 () Bool)

(assert (=> b!4073296 (= tp!1232876 b_and!313059)))

(declare-fun b_free!113411 () Bool)

(declare-fun b_next!114115 () Bool)

(assert (=> b!4073296 (= b_free!113411 (not b_next!114115))))

(declare-fun tp!1232878 () Bool)

(declare-fun b_and!313061 () Bool)

(assert (=> b!4073296 (= tp!1232878 b_and!313061)))

(declare-fun b!4073300 () Bool)

(declare-fun b_free!113413 () Bool)

(declare-fun b_next!114117 () Bool)

(assert (=> b!4073300 (= b_free!113413 (not b_next!114117))))

(declare-fun tp!1232879 () Bool)

(declare-fun b_and!313063 () Bool)

(assert (=> b!4073300 (= tp!1232879 b_and!313063)))

(declare-fun b_free!113415 () Bool)

(declare-fun b_next!114119 () Bool)

(assert (=> b!4073300 (= b_free!113415 (not b_next!114119))))

(declare-fun tp!1232874 () Bool)

(declare-fun b_and!313065 () Bool)

(assert (=> b!4073300 (= tp!1232874 b_and!313065)))

(declare-fun b!4073283 () Bool)

(declare-fun res!1663346 () Bool)

(declare-fun e!2528088 () Bool)

(assert (=> b!4073283 (=> (not res!1663346) (not e!2528088))))

(declare-datatypes ((C!24008 0))(
  ( (C!24009 (val!14114 Int)) )
))
(declare-datatypes ((List!43675 0))(
  ( (Nil!43551) (Cons!43551 (h!48971 C!24008) (t!337178 List!43675)) )
))
(declare-fun suffix!1518 () List!43675)

(declare-fun p!2988 () List!43675)

(declare-fun input!3411 () List!43675)

(declare-fun ++!11412 (List!43675 List!43675) List!43675)

(assert (=> b!4073283 (= res!1663346 (= input!3411 (++!11412 p!2988 suffix!1518)))))

(declare-fun b!4073284 () Bool)

(declare-fun res!1663344 () Bool)

(declare-fun e!2528089 () Bool)

(assert (=> b!4073284 (=> res!1663344 e!2528089)))

(declare-datatypes ((List!43676 0))(
  ( (Nil!43552) (Cons!43552 (h!48972 (_ BitVec 16)) (t!337179 List!43676)) )
))
(declare-datatypes ((TokenValue!7236 0))(
  ( (FloatLiteralValue!14472 (text!51097 List!43676)) (TokenValueExt!7235 (__x!26689 Int)) (Broken!36180 (value!220297 List!43676)) (Object!7359) (End!7236) (Def!7236) (Underscore!7236) (Match!7236) (Else!7236) (Error!7236) (Case!7236) (If!7236) (Extends!7236) (Abstract!7236) (Class!7236) (Val!7236) (DelimiterValue!14472 (del!7296 List!43676)) (KeywordValue!7242 (value!220298 List!43676)) (CommentValue!14472 (value!220299 List!43676)) (WhitespaceValue!14472 (value!220300 List!43676)) (IndentationValue!7236 (value!220301 List!43676)) (String!49929) (Int32!7236) (Broken!36181 (value!220302 List!43676)) (Boolean!7237) (Unit!63102) (OperatorValue!7239 (op!7296 List!43676)) (IdentifierValue!14472 (value!220303 List!43676)) (IdentifierValue!14473 (value!220304 List!43676)) (WhitespaceValue!14473 (value!220305 List!43676)) (True!14472) (False!14472) (Broken!36182 (value!220306 List!43676)) (Broken!36183 (value!220307 List!43676)) (True!14473) (RightBrace!7236) (RightBracket!7236) (Colon!7236) (Null!7236) (Comma!7236) (LeftBracket!7236) (False!14473) (LeftBrace!7236) (ImaginaryLiteralValue!7236 (text!51098 List!43676)) (StringLiteralValue!21708 (value!220308 List!43676)) (EOFValue!7236 (value!220309 List!43676)) (IdentValue!7236 (value!220310 List!43676)) (DelimiterValue!14473 (value!220311 List!43676)) (DedentValue!7236 (value!220312 List!43676)) (NewLineValue!7236 (value!220313 List!43676)) (IntegerValue!21708 (value!220314 (_ BitVec 32)) (text!51099 List!43676)) (IntegerValue!21709 (value!220315 Int) (text!51100 List!43676)) (Times!7236) (Or!7236) (Equal!7236) (Minus!7236) (Broken!36184 (value!220316 List!43676)) (And!7236) (Div!7236) (LessEqual!7236) (Mod!7236) (Concat!19147) (Not!7236) (Plus!7236) (SpaceValue!7236 (value!220317 List!43676)) (IntegerValue!21710 (value!220318 Int) (text!51101 List!43676)) (StringLiteralValue!21709 (text!51102 List!43676)) (FloatLiteralValue!14473 (text!51103 List!43676)) (BytesLiteralValue!7236 (value!220319 List!43676)) (CommentValue!14473 (value!220320 List!43676)) (StringLiteralValue!21710 (value!220321 List!43676)) (ErrorTokenValue!7236 (msg!7297 List!43676)) )
))
(declare-datatypes ((Regex!11911 0))(
  ( (ElementMatch!11911 (c!702910 C!24008)) (Concat!19148 (regOne!24334 Regex!11911) (regTwo!24334 Regex!11911)) (EmptyExpr!11911) (Star!11911 (reg!12240 Regex!11911)) (EmptyLang!11911) (Union!11911 (regOne!24335 Regex!11911) (regTwo!24335 Regex!11911)) )
))
(declare-datatypes ((String!49930 0))(
  ( (String!49931 (value!220322 String)) )
))
(declare-datatypes ((IArray!26439 0))(
  ( (IArray!26440 (innerList!13277 List!43675)) )
))
(declare-datatypes ((Conc!13217 0))(
  ( (Node!13217 (left!32742 Conc!13217) (right!33072 Conc!13217) (csize!26664 Int) (cheight!13428 Int)) (Leaf!20435 (xs!16523 IArray!26439) (csize!26665 Int)) (Empty!13217) )
))
(declare-datatypes ((BalanceConc!26028 0))(
  ( (BalanceConc!26029 (c!702911 Conc!13217)) )
))
(declare-datatypes ((TokenValueInjection!13900 0))(
  ( (TokenValueInjection!13901 (toValue!9570 Int) (toChars!9429 Int)) )
))
(declare-datatypes ((Rule!13812 0))(
  ( (Rule!13813 (regex!7006 Regex!11911) (tag!7866 String!49930) (isSeparator!7006 Bool) (transformation!7006 TokenValueInjection!13900)) )
))
(declare-datatypes ((List!43677 0))(
  ( (Nil!43553) (Cons!43553 (h!48973 Rule!13812) (t!337180 List!43677)) )
))
(declare-fun rules!3870 () List!43677)

(declare-fun r!4213 () Rule!13812)

(get-info :version)

(assert (=> b!4073284 (= res!1663344 (or (not ((_ is Cons!43553) rules!3870)) (not (= (h!48973 rules!3870) r!4213))))))

(declare-fun b!4073285 () Bool)

(declare-fun res!1663341 () Bool)

(assert (=> b!4073285 (=> (not res!1663341) (not e!2528088))))

(declare-fun isEmpty!25990 (List!43677) Bool)

(assert (=> b!4073285 (= res!1663341 (not (isEmpty!25990 rules!3870)))))

(declare-fun res!1663338 () Bool)

(assert (=> start!384492 (=> (not res!1663338) (not e!2528088))))

(declare-datatypes ((LexerInterface!6595 0))(
  ( (LexerInterfaceExt!6592 (__x!26690 Int)) (Lexer!6593) )
))
(declare-fun thiss!26199 () LexerInterface!6595)

(assert (=> start!384492 (= res!1663338 ((_ is Lexer!6593) thiss!26199))))

(assert (=> start!384492 e!2528088))

(assert (=> start!384492 true))

(declare-fun e!2528093 () Bool)

(assert (=> start!384492 e!2528093))

(declare-fun e!2528086 () Bool)

(assert (=> start!384492 e!2528086))

(declare-fun e!2528092 () Bool)

(assert (=> start!384492 e!2528092))

(declare-fun e!2528094 () Bool)

(assert (=> start!384492 e!2528094))

(declare-fun e!2528087 () Bool)

(assert (=> start!384492 e!2528087))

(declare-fun b!4073286 () Bool)

(declare-fun tp_is_empty!20825 () Bool)

(declare-fun tp!1232877 () Bool)

(assert (=> b!4073286 (= e!2528092 (and tp_is_empty!20825 tp!1232877))))

(declare-fun tp!1232881 () Bool)

(declare-fun e!2528097 () Bool)

(declare-fun b!4073287 () Bool)

(declare-fun inv!58203 (String!49930) Bool)

(declare-fun inv!58205 (TokenValueInjection!13900) Bool)

(assert (=> b!4073287 (= e!2528087 (and tp!1232881 (inv!58203 (tag!7866 r!4213)) (inv!58205 (transformation!7006 r!4213)) e!2528097))))

(declare-fun b!4073288 () Bool)

(declare-fun res!1663340 () Bool)

(assert (=> b!4073288 (=> (not res!1663340) (not e!2528088))))

(declare-fun rulesInvariant!5938 (LexerInterface!6595 List!43677) Bool)

(assert (=> b!4073288 (= res!1663340 (rulesInvariant!5938 thiss!26199 rules!3870))))

(declare-fun e!2528096 () Bool)

(declare-fun tp!1232875 () Bool)

(declare-fun e!2528095 () Bool)

(declare-fun b!4073289 () Bool)

(assert (=> b!4073289 (= e!2528095 (and tp!1232875 (inv!58203 (tag!7866 (h!48973 rules!3870))) (inv!58205 (transformation!7006 (h!48973 rules!3870))) e!2528096))))

(declare-fun b!4073290 () Bool)

(declare-fun res!1663339 () Bool)

(assert (=> b!4073290 (=> (not res!1663339) (not e!2528088))))

(declare-fun isEmpty!25991 (List!43675) Bool)

(assert (=> b!4073290 (= res!1663339 (not (isEmpty!25991 p!2988)))))

(declare-fun b!4073291 () Bool)

(declare-fun e!2528091 () Bool)

(assert (=> b!4073291 (= e!2528089 e!2528091)))

(declare-fun res!1663345 () Bool)

(assert (=> b!4073291 (=> res!1663345 e!2528091)))

(assert (=> b!4073291 (= res!1663345 (isEmpty!25990 (t!337180 rules!3870)))))

(assert (=> b!4073291 (rulesInvariant!5938 thiss!26199 (t!337180 rules!3870))))

(declare-datatypes ((Unit!63103 0))(
  ( (Unit!63104) )
))
(declare-fun lt!1457847 () Unit!63103)

(declare-fun lemmaInvariantOnRulesThenOnTail!726 (LexerInterface!6595 Rule!13812 List!43677) Unit!63103)

(assert (=> b!4073291 (= lt!1457847 (lemmaInvariantOnRulesThenOnTail!726 thiss!26199 (h!48973 rules!3870) (t!337180 rules!3870)))))

(declare-fun b!4073292 () Bool)

(declare-fun tp!1232873 () Bool)

(assert (=> b!4073292 (= e!2528094 (and tp_is_empty!20825 tp!1232873))))

(declare-fun b!4073293 () Bool)

(declare-fun res!1663343 () Bool)

(assert (=> b!4073293 (=> (not res!1663343) (not e!2528088))))

(declare-fun contains!8673 (List!43677 Rule!13812) Bool)

(assert (=> b!4073293 (= res!1663343 (contains!8673 rules!3870 r!4213))))

(declare-fun b!4073294 () Bool)

(declare-fun e!2528090 () Bool)

(assert (=> b!4073294 (= e!2528088 e!2528090)))

(declare-fun res!1663342 () Bool)

(assert (=> b!4073294 (=> (not res!1663342) (not e!2528090))))

(declare-fun lt!1457849 () BalanceConc!26028)

(declare-datatypes ((Token!13138 0))(
  ( (Token!13139 (value!220323 TokenValue!7236) (rule!10110 Rule!13812) (size!32543 Int) (originalCharacters!7600 List!43675)) )
))
(declare-datatypes ((tuple2!42554 0))(
  ( (tuple2!42555 (_1!24411 Token!13138) (_2!24411 List!43675)) )
))
(declare-datatypes ((Option!9414 0))(
  ( (None!9413) (Some!9413 (v!39851 tuple2!42554)) )
))
(declare-fun maxPrefix!3887 (LexerInterface!6595 List!43677 List!43675) Option!9414)

(declare-fun apply!10189 (TokenValueInjection!13900 BalanceConc!26028) TokenValue!7236)

(declare-fun size!32544 (List!43675) Int)

(assert (=> b!4073294 (= res!1663342 (= (maxPrefix!3887 thiss!26199 rules!3870 input!3411) (Some!9413 (tuple2!42555 (Token!13139 (apply!10189 (transformation!7006 r!4213) lt!1457849) r!4213 (size!32544 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1457851 () Unit!63103)

(declare-fun lemmaSemiInverse!1973 (TokenValueInjection!13900 BalanceConc!26028) Unit!63103)

(assert (=> b!4073294 (= lt!1457851 (lemmaSemiInverse!1973 (transformation!7006 r!4213) lt!1457849))))

(declare-fun seqFromList!5223 (List!43675) BalanceConc!26028)

(assert (=> b!4073294 (= lt!1457849 (seqFromList!5223 p!2988))))

(declare-fun b!4073295 () Bool)

(declare-fun tp!1232880 () Bool)

(assert (=> b!4073295 (= e!2528086 (and e!2528095 tp!1232880))))

(assert (=> b!4073296 (= e!2528096 (and tp!1232876 tp!1232878))))

(declare-fun b!4073297 () Bool)

(assert (=> b!4073297 (= e!2528091 true)))

(declare-fun lt!1457848 () Bool)

(assert (=> b!4073297 (= lt!1457848 (rulesInvariant!5938 thiss!26199 (Cons!43553 (h!48973 rules!3870) (t!337180 rules!3870))))))

(declare-fun b!4073298 () Bool)

(declare-fun tp!1232882 () Bool)

(assert (=> b!4073298 (= e!2528093 (and tp_is_empty!20825 tp!1232882))))

(declare-fun b!4073299 () Bool)

(assert (=> b!4073299 (= e!2528090 (not e!2528089))))

(declare-fun res!1663337 () Bool)

(assert (=> b!4073299 (=> res!1663337 e!2528089)))

(declare-fun matchR!5856 (Regex!11911 List!43675) Bool)

(assert (=> b!4073299 (= res!1663337 (not (matchR!5856 (regex!7006 r!4213) p!2988)))))

(declare-fun ruleValid!2930 (LexerInterface!6595 Rule!13812) Bool)

(assert (=> b!4073299 (ruleValid!2930 thiss!26199 r!4213)))

(declare-fun lt!1457850 () Unit!63103)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1998 (LexerInterface!6595 Rule!13812 List!43677) Unit!63103)

(assert (=> b!4073299 (= lt!1457850 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1998 thiss!26199 r!4213 rules!3870))))

(assert (=> b!4073300 (= e!2528097 (and tp!1232879 tp!1232874))))

(assert (= (and start!384492 res!1663338) b!4073285))

(assert (= (and b!4073285 res!1663341) b!4073288))

(assert (= (and b!4073288 res!1663340) b!4073293))

(assert (= (and b!4073293 res!1663343) b!4073283))

(assert (= (and b!4073283 res!1663346) b!4073290))

(assert (= (and b!4073290 res!1663339) b!4073294))

(assert (= (and b!4073294 res!1663342) b!4073299))

(assert (= (and b!4073299 (not res!1663337)) b!4073284))

(assert (= (and b!4073284 (not res!1663344)) b!4073291))

(assert (= (and b!4073291 (not res!1663345)) b!4073297))

(assert (= (and start!384492 ((_ is Cons!43551) suffix!1518)) b!4073298))

(assert (= b!4073289 b!4073296))

(assert (= b!4073295 b!4073289))

(assert (= (and start!384492 ((_ is Cons!43553) rules!3870)) b!4073295))

(assert (= (and start!384492 ((_ is Cons!43551) p!2988)) b!4073286))

(assert (= (and start!384492 ((_ is Cons!43551) input!3411)) b!4073292))

(assert (= b!4073287 b!4073300))

(assert (= start!384492 b!4073287))

(declare-fun m!4682087 () Bool)

(assert (=> b!4073283 m!4682087))

(declare-fun m!4682089 () Bool)

(assert (=> b!4073289 m!4682089))

(declare-fun m!4682091 () Bool)

(assert (=> b!4073289 m!4682091))

(declare-fun m!4682093 () Bool)

(assert (=> b!4073285 m!4682093))

(declare-fun m!4682095 () Bool)

(assert (=> b!4073291 m!4682095))

(declare-fun m!4682097 () Bool)

(assert (=> b!4073291 m!4682097))

(declare-fun m!4682099 () Bool)

(assert (=> b!4073291 m!4682099))

(declare-fun m!4682101 () Bool)

(assert (=> b!4073297 m!4682101))

(declare-fun m!4682103 () Bool)

(assert (=> b!4073287 m!4682103))

(declare-fun m!4682105 () Bool)

(assert (=> b!4073287 m!4682105))

(declare-fun m!4682107 () Bool)

(assert (=> b!4073288 m!4682107))

(declare-fun m!4682109 () Bool)

(assert (=> b!4073294 m!4682109))

(declare-fun m!4682111 () Bool)

(assert (=> b!4073294 m!4682111))

(declare-fun m!4682113 () Bool)

(assert (=> b!4073294 m!4682113))

(declare-fun m!4682115 () Bool)

(assert (=> b!4073294 m!4682115))

(declare-fun m!4682117 () Bool)

(assert (=> b!4073294 m!4682117))

(declare-fun m!4682119 () Bool)

(assert (=> b!4073299 m!4682119))

(declare-fun m!4682121 () Bool)

(assert (=> b!4073299 m!4682121))

(declare-fun m!4682123 () Bool)

(assert (=> b!4073299 m!4682123))

(declare-fun m!4682125 () Bool)

(assert (=> b!4073290 m!4682125))

(declare-fun m!4682127 () Bool)

(assert (=> b!4073293 m!4682127))

(check-sat (not b!4073293) (not b!4073291) b_and!313065 (not b!4073283) tp_is_empty!20825 (not b_next!114119) b_and!313059 b_and!313063 (not b_next!114117) (not b!4073285) (not b!4073299) (not b!4073288) (not b!4073292) (not b!4073294) (not b_next!114115) (not b!4073295) (not b!4073290) (not b!4073298) (not b!4073287) (not b!4073297) (not b!4073286) (not b!4073289) (not b_next!114113) b_and!313061)
(check-sat (not b_next!114115) b_and!313065 (not b_next!114119) b_and!313059 b_and!313063 (not b_next!114117) (not b_next!114113) b_and!313061)
