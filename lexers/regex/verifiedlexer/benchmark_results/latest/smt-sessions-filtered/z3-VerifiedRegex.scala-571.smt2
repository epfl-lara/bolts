; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16390 () Bool)

(assert start!16390)

(declare-fun b!153322 () Bool)

(declare-fun b_free!5657 () Bool)

(declare-fun b_next!5657 () Bool)

(assert (=> b!153322 (= b_free!5657 (not b_next!5657))))

(declare-fun tp!79528 () Bool)

(declare-fun b_and!9001 () Bool)

(assert (=> b!153322 (= tp!79528 b_and!9001)))

(declare-fun b_free!5659 () Bool)

(declare-fun b_next!5659 () Bool)

(assert (=> b!153322 (= b_free!5659 (not b_next!5659))))

(declare-fun tp!79529 () Bool)

(declare-fun b_and!9003 () Bool)

(assert (=> b!153322 (= tp!79529 b_and!9003)))

(declare-fun b!153328 () Bool)

(declare-fun b_free!5661 () Bool)

(declare-fun b_next!5661 () Bool)

(assert (=> b!153328 (= b_free!5661 (not b_next!5661))))

(declare-fun tp!79523 () Bool)

(declare-fun b_and!9005 () Bool)

(assert (=> b!153328 (= tp!79523 b_and!9005)))

(declare-fun b_free!5663 () Bool)

(declare-fun b_next!5663 () Bool)

(assert (=> b!153328 (= b_free!5663 (not b_next!5663))))

(declare-fun tp!79533 () Bool)

(declare-fun b_and!9007 () Bool)

(assert (=> b!153328 (= tp!79533 b_and!9007)))

(declare-fun b!153316 () Bool)

(declare-fun b_free!5665 () Bool)

(declare-fun b_next!5665 () Bool)

(assert (=> b!153316 (= b_free!5665 (not b_next!5665))))

(declare-fun tp!79531 () Bool)

(declare-fun b_and!9009 () Bool)

(assert (=> b!153316 (= tp!79531 b_and!9009)))

(declare-fun b_free!5667 () Bool)

(declare-fun b_next!5667 () Bool)

(assert (=> b!153316 (= b_free!5667 (not b_next!5667))))

(declare-fun tp!79524 () Bool)

(declare-fun b_and!9011 () Bool)

(assert (=> b!153316 (= tp!79524 b_and!9011)))

(declare-fun e!91803 () Bool)

(assert (=> b!153316 (= e!91803 (and tp!79531 tp!79524))))

(declare-fun e!91809 () Bool)

(declare-datatypes ((List!2675 0))(
  ( (Nil!2665) (Cons!2665 (h!8062 (_ BitVec 16)) (t!25075 List!2675)) )
))
(declare-datatypes ((TokenValue!487 0))(
  ( (FloatLiteralValue!974 (text!3854 List!2675)) (TokenValueExt!486 (__x!2461 Int)) (Broken!2435 (value!17542 List!2675)) (Object!496) (End!487) (Def!487) (Underscore!487) (Match!487) (Else!487) (Error!487) (Case!487) (If!487) (Extends!487) (Abstract!487) (Class!487) (Val!487) (DelimiterValue!974 (del!547 List!2675)) (KeywordValue!493 (value!17543 List!2675)) (CommentValue!974 (value!17544 List!2675)) (WhitespaceValue!974 (value!17545 List!2675)) (IndentationValue!487 (value!17546 List!2675)) (String!3514) (Int32!487) (Broken!2436 (value!17547 List!2675)) (Boolean!488) (Unit!2057) (OperatorValue!490 (op!547 List!2675)) (IdentifierValue!974 (value!17548 List!2675)) (IdentifierValue!975 (value!17549 List!2675)) (WhitespaceValue!975 (value!17550 List!2675)) (True!974) (False!974) (Broken!2437 (value!17551 List!2675)) (Broken!2438 (value!17552 List!2675)) (True!975) (RightBrace!487) (RightBracket!487) (Colon!487) (Null!487) (Comma!487) (LeftBracket!487) (False!975) (LeftBrace!487) (ImaginaryLiteralValue!487 (text!3855 List!2675)) (StringLiteralValue!1461 (value!17553 List!2675)) (EOFValue!487 (value!17554 List!2675)) (IdentValue!487 (value!17555 List!2675)) (DelimiterValue!975 (value!17556 List!2675)) (DedentValue!487 (value!17557 List!2675)) (NewLineValue!487 (value!17558 List!2675)) (IntegerValue!1461 (value!17559 (_ BitVec 32)) (text!3856 List!2675)) (IntegerValue!1462 (value!17560 Int) (text!3857 List!2675)) (Times!487) (Or!487) (Equal!487) (Minus!487) (Broken!2439 (value!17561 List!2675)) (And!487) (Div!487) (LessEqual!487) (Mod!487) (Concat!1176) (Not!487) (Plus!487) (SpaceValue!487 (value!17562 List!2675)) (IntegerValue!1463 (value!17563 Int) (text!3858 List!2675)) (StringLiteralValue!1462 (text!3859 List!2675)) (FloatLiteralValue!975 (text!3860 List!2675)) (BytesLiteralValue!487 (value!17564 List!2675)) (CommentValue!975 (value!17565 List!2675)) (StringLiteralValue!1463 (value!17566 List!2675)) (ErrorTokenValue!487 (msg!548 List!2675)) )
))
(declare-datatypes ((C!2300 0))(
  ( (C!2301 (val!1036 Int)) )
))
(declare-datatypes ((List!2676 0))(
  ( (Nil!2666) (Cons!2666 (h!8063 C!2300) (t!25076 List!2676)) )
))
(declare-datatypes ((IArray!1505 0))(
  ( (IArray!1506 (innerList!810 List!2676)) )
))
(declare-datatypes ((Conc!752 0))(
  ( (Node!752 (left!2011 Conc!752) (right!2341 Conc!752) (csize!1734 Int) (cheight!963 Int)) (Leaf!1324 (xs!3347 IArray!1505) (csize!1735 Int)) (Empty!752) )
))
(declare-datatypes ((BalanceConc!1512 0))(
  ( (BalanceConc!1513 (c!30889 Conc!752)) )
))
(declare-datatypes ((TokenValueInjection!746 0))(
  ( (TokenValueInjection!747 (toValue!1104 Int) (toChars!963 Int)) )
))
(declare-datatypes ((String!3515 0))(
  ( (String!3516 (value!17567 String)) )
))
(declare-datatypes ((Regex!689 0))(
  ( (ElementMatch!689 (c!30890 C!2300)) (Concat!1177 (regOne!1890 Regex!689) (regTwo!1890 Regex!689)) (EmptyExpr!689) (Star!689 (reg!1018 Regex!689)) (EmptyLang!689) (Union!689 (regOne!1891 Regex!689) (regTwo!1891 Regex!689)) )
))
(declare-datatypes ((Rule!730 0))(
  ( (Rule!731 (regex!465 Regex!689) (tag!643 String!3515) (isSeparator!465 Bool) (transformation!465 TokenValueInjection!746)) )
))
(declare-datatypes ((Token!674 0))(
  ( (Token!675 (value!17568 TokenValue!487) (rule!972 Rule!730) (size!2261 Int) (originalCharacters!508 List!2676)) )
))
(declare-fun separatorToken!170 () Token!674)

(declare-fun b!153317 () Bool)

(declare-fun tp!79532 () Bool)

(declare-fun inv!3461 (String!3515) Bool)

(declare-fun inv!3464 (TokenValueInjection!746) Bool)

(assert (=> b!153317 (= e!91809 (and tp!79532 (inv!3461 (tag!643 (rule!972 separatorToken!170))) (inv!3464 (transformation!465 (rule!972 separatorToken!170))) e!91803))))

(declare-fun b!153318 () Bool)

(declare-fun res!70130 () Bool)

(declare-fun e!91808 () Bool)

(assert (=> b!153318 (=> (not res!70130) (not e!91808))))

(declare-datatypes ((LexerInterface!351 0))(
  ( (LexerInterfaceExt!348 (__x!2462 Int)) (Lexer!349) )
))
(declare-fun thiss!17480 () LexerInterface!351)

(declare-datatypes ((List!2677 0))(
  ( (Nil!2667) (Cons!2667 (h!8064 Rule!730) (t!25077 List!2677)) )
))
(declare-fun rules!1920 () List!2677)

(declare-fun rulesInvariant!317 (LexerInterface!351 List!2677) Bool)

(assert (=> b!153318 (= res!70130 (rulesInvariant!317 thiss!17480 rules!1920))))

(declare-datatypes ((List!2678 0))(
  ( (Nil!2668) (Cons!2668 (h!8065 Token!674) (t!25078 List!2678)) )
))
(declare-fun tokens!465 () List!2678)

(declare-fun tp!79526 () Bool)

(declare-fun e!91802 () Bool)

(declare-fun b!153319 () Bool)

(declare-fun e!91799 () Bool)

(declare-fun inv!21 (TokenValue!487) Bool)

(assert (=> b!153319 (= e!91799 (and (inv!21 (value!17568 (h!8065 tokens!465))) e!91802 tp!79526))))

(declare-fun e!91811 () Bool)

(declare-fun b!153320 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!89 (LexerInterface!351 List!2677 List!2678) Bool)

(assert (=> b!153320 (= e!91811 (not (rulesProduceEachTokenIndividuallyList!89 thiss!17480 rules!1920 (t!25078 tokens!465))))))

(declare-fun lt!45001 () List!2676)

(declare-fun lt!44998 () List!2676)

(declare-fun lt!45002 () List!2676)

(declare-fun lt!44997 () List!2676)

(declare-fun ++!576 (List!2676 List!2676) List!2676)

(assert (=> b!153320 (= (++!576 (++!576 lt!45002 lt!45001) lt!44998) (++!576 lt!45002 lt!44997))))

(declare-datatypes ((Unit!2058 0))(
  ( (Unit!2059) )
))
(declare-fun lt!44999 () Unit!2058)

(declare-fun lemmaConcatAssociativity!146 (List!2676 List!2676 List!2676) Unit!2058)

(assert (=> b!153320 (= lt!44999 (lemmaConcatAssociativity!146 lt!45002 lt!45001 lt!44998))))

(declare-fun list!939 (BalanceConc!1512) List!2676)

(declare-fun charsOf!120 (Token!674) BalanceConc!1512)

(assert (=> b!153320 (= lt!45002 (list!939 (charsOf!120 (h!8065 tokens!465))))))

(assert (=> b!153320 (= lt!44997 (++!576 lt!45001 lt!44998))))

(declare-fun printWithSeparatorTokenWhenNeededList!44 (LexerInterface!351 List!2677 List!2678 Token!674) List!2676)

(assert (=> b!153320 (= lt!44998 (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 (t!25078 tokens!465) separatorToken!170))))

(assert (=> b!153320 (= lt!45001 (list!939 (charsOf!120 separatorToken!170)))))

(declare-fun b!153321 () Bool)

(declare-fun e!91806 () Bool)

(declare-fun tp!79534 () Bool)

(assert (=> b!153321 (= e!91806 (and (inv!21 (value!17568 separatorToken!170)) e!91809 tp!79534))))

(declare-fun res!70135 () Bool)

(assert (=> start!16390 (=> (not res!70135) (not e!91808))))

(get-info :version)

(assert (=> start!16390 (= res!70135 ((_ is Lexer!349) thiss!17480))))

(assert (=> start!16390 e!91808))

(assert (=> start!16390 true))

(declare-fun e!91810 () Bool)

(assert (=> start!16390 e!91810))

(declare-fun inv!3465 (Token!674) Bool)

(assert (=> start!16390 (and (inv!3465 separatorToken!170) e!91806)))

(declare-fun e!91796 () Bool)

(assert (=> start!16390 e!91796))

(declare-fun e!91812 () Bool)

(assert (=> b!153322 (= e!91812 (and tp!79528 tp!79529))))

(declare-fun b!153323 () Bool)

(declare-fun res!70138 () Bool)

(assert (=> b!153323 (=> (not res!70138) (not e!91811))))

(declare-fun lt!45000 () List!2676)

(declare-fun lt!45004 () List!2676)

(declare-fun seqFromList!307 (List!2676) BalanceConc!1512)

(assert (=> b!153323 (= res!70138 (= (list!939 (seqFromList!307 lt!45000)) lt!45004))))

(declare-fun b!153324 () Bool)

(declare-fun res!70134 () Bool)

(declare-fun e!91801 () Bool)

(assert (=> b!153324 (=> (not res!70134) (not e!91801))))

(assert (=> b!153324 (= res!70134 (isSeparator!465 (rule!972 separatorToken!170)))))

(declare-fun b!153325 () Bool)

(declare-fun res!70132 () Bool)

(assert (=> b!153325 (=> (not res!70132) (not e!91801))))

(declare-fun sepAndNonSepRulesDisjointChars!54 (List!2677 List!2677) Bool)

(assert (=> b!153325 (= res!70132 (sepAndNonSepRulesDisjointChars!54 rules!1920 rules!1920))))

(declare-fun b!153326 () Bool)

(declare-fun res!70139 () Bool)

(assert (=> b!153326 (=> (not res!70139) (not e!91801))))

(assert (=> b!153326 (= res!70139 ((_ is Cons!2668) tokens!465))))

(declare-fun b!153327 () Bool)

(declare-fun res!70136 () Bool)

(assert (=> b!153327 (=> (not res!70136) (not e!91801))))

(declare-fun rulesProduceIndividualToken!100 (LexerInterface!351 List!2677 Token!674) Bool)

(assert (=> b!153327 (= res!70136 (rulesProduceIndividualToken!100 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!91805 () Bool)

(assert (=> b!153328 (= e!91805 (and tp!79523 tp!79533))))

(declare-fun tp!79535 () Bool)

(declare-fun b!153329 () Bool)

(assert (=> b!153329 (= e!91796 (and (inv!3465 (h!8065 tokens!465)) e!91799 tp!79535))))

(declare-fun b!153330 () Bool)

(declare-fun res!70129 () Bool)

(assert (=> b!153330 (=> (not res!70129) (not e!91808))))

(declare-fun isEmpty!1056 (List!2677) Bool)

(assert (=> b!153330 (= res!70129 (not (isEmpty!1056 rules!1920)))))

(declare-fun b!153331 () Bool)

(assert (=> b!153331 (= e!91808 e!91801)))

(declare-fun res!70131 () Bool)

(assert (=> b!153331 (=> (not res!70131) (not e!91801))))

(declare-datatypes ((IArray!1507 0))(
  ( (IArray!1508 (innerList!811 List!2678)) )
))
(declare-datatypes ((Conc!753 0))(
  ( (Node!753 (left!2012 Conc!753) (right!2342 Conc!753) (csize!1736 Int) (cheight!964 Int)) (Leaf!1325 (xs!3348 IArray!1507) (csize!1737 Int)) (Empty!753) )
))
(declare-datatypes ((BalanceConc!1514 0))(
  ( (BalanceConc!1515 (c!30891 Conc!753)) )
))
(declare-fun lt!45003 () BalanceConc!1514)

(declare-fun rulesProduceEachTokenIndividually!143 (LexerInterface!351 List!2677 BalanceConc!1514) Bool)

(assert (=> b!153331 (= res!70131 (rulesProduceEachTokenIndividually!143 thiss!17480 rules!1920 lt!45003))))

(declare-fun seqFromList!308 (List!2678) BalanceConc!1514)

(assert (=> b!153331 (= lt!45003 (seqFromList!308 tokens!465))))

(declare-fun b!153332 () Bool)

(declare-fun e!91800 () Bool)

(declare-fun tp!79525 () Bool)

(assert (=> b!153332 (= e!91810 (and e!91800 tp!79525))))

(declare-fun tp!79530 () Bool)

(declare-fun b!153333 () Bool)

(assert (=> b!153333 (= e!91802 (and tp!79530 (inv!3461 (tag!643 (rule!972 (h!8065 tokens!465)))) (inv!3464 (transformation!465 (rule!972 (h!8065 tokens!465)))) e!91805))))

(declare-fun b!153334 () Bool)

(declare-fun tp!79527 () Bool)

(assert (=> b!153334 (= e!91800 (and tp!79527 (inv!3461 (tag!643 (h!8064 rules!1920))) (inv!3464 (transformation!465 (h!8064 rules!1920))) e!91812))))

(declare-fun b!153335 () Bool)

(assert (=> b!153335 (= e!91801 e!91811)))

(declare-fun res!70133 () Bool)

(assert (=> b!153335 (=> (not res!70133) (not e!91811))))

(assert (=> b!153335 (= res!70133 (= lt!45000 lt!45004))))

(declare-fun printWithSeparatorTokenWhenNeededRec!34 (LexerInterface!351 List!2677 BalanceConc!1514 Token!674 Int) BalanceConc!1512)

(assert (=> b!153335 (= lt!45004 (list!939 (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 0)))))

(assert (=> b!153335 (= lt!45000 (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!153336 () Bool)

(declare-fun res!70137 () Bool)

(assert (=> b!153336 (=> (not res!70137) (not e!91801))))

(declare-fun lambda!4006 () Int)

(declare-fun forall!461 (List!2678 Int) Bool)

(assert (=> b!153336 (= res!70137 (forall!461 tokens!465 lambda!4006))))

(assert (= (and start!16390 res!70135) b!153330))

(assert (= (and b!153330 res!70129) b!153318))

(assert (= (and b!153318 res!70130) b!153331))

(assert (= (and b!153331 res!70131) b!153327))

(assert (= (and b!153327 res!70136) b!153324))

(assert (= (and b!153324 res!70134) b!153336))

(assert (= (and b!153336 res!70137) b!153325))

(assert (= (and b!153325 res!70132) b!153326))

(assert (= (and b!153326 res!70139) b!153335))

(assert (= (and b!153335 res!70133) b!153323))

(assert (= (and b!153323 res!70138) b!153320))

(assert (= b!153334 b!153322))

(assert (= b!153332 b!153334))

(assert (= (and start!16390 ((_ is Cons!2667) rules!1920)) b!153332))

(assert (= b!153317 b!153316))

(assert (= b!153321 b!153317))

(assert (= start!16390 b!153321))

(assert (= b!153333 b!153328))

(assert (= b!153319 b!153333))

(assert (= b!153329 b!153319))

(assert (= (and start!16390 ((_ is Cons!2668) tokens!465)) b!153329))

(declare-fun m!138253 () Bool)

(assert (=> b!153317 m!138253))

(declare-fun m!138255 () Bool)

(assert (=> b!153317 m!138255))

(declare-fun m!138257 () Bool)

(assert (=> b!153335 m!138257))

(assert (=> b!153335 m!138257))

(declare-fun m!138259 () Bool)

(assert (=> b!153335 m!138259))

(declare-fun m!138261 () Bool)

(assert (=> b!153335 m!138261))

(declare-fun m!138263 () Bool)

(assert (=> b!153327 m!138263))

(declare-fun m!138265 () Bool)

(assert (=> start!16390 m!138265))

(declare-fun m!138267 () Bool)

(assert (=> b!153331 m!138267))

(declare-fun m!138269 () Bool)

(assert (=> b!153331 m!138269))

(declare-fun m!138271 () Bool)

(assert (=> b!153336 m!138271))

(declare-fun m!138273 () Bool)

(assert (=> b!153333 m!138273))

(declare-fun m!138275 () Bool)

(assert (=> b!153333 m!138275))

(declare-fun m!138277 () Bool)

(assert (=> b!153325 m!138277))

(declare-fun m!138279 () Bool)

(assert (=> b!153334 m!138279))

(declare-fun m!138281 () Bool)

(assert (=> b!153334 m!138281))

(declare-fun m!138283 () Bool)

(assert (=> b!153318 m!138283))

(declare-fun m!138285 () Bool)

(assert (=> b!153320 m!138285))

(declare-fun m!138287 () Bool)

(assert (=> b!153320 m!138287))

(declare-fun m!138289 () Bool)

(assert (=> b!153320 m!138289))

(declare-fun m!138291 () Bool)

(assert (=> b!153320 m!138291))

(assert (=> b!153320 m!138285))

(declare-fun m!138293 () Bool)

(assert (=> b!153320 m!138293))

(declare-fun m!138295 () Bool)

(assert (=> b!153320 m!138295))

(declare-fun m!138297 () Bool)

(assert (=> b!153320 m!138297))

(assert (=> b!153320 m!138295))

(declare-fun m!138299 () Bool)

(assert (=> b!153320 m!138299))

(declare-fun m!138301 () Bool)

(assert (=> b!153320 m!138301))

(declare-fun m!138303 () Bool)

(assert (=> b!153320 m!138303))

(declare-fun m!138305 () Bool)

(assert (=> b!153320 m!138305))

(assert (=> b!153320 m!138301))

(declare-fun m!138307 () Bool)

(assert (=> b!153321 m!138307))

(declare-fun m!138309 () Bool)

(assert (=> b!153329 m!138309))

(declare-fun m!138311 () Bool)

(assert (=> b!153323 m!138311))

(assert (=> b!153323 m!138311))

(declare-fun m!138313 () Bool)

(assert (=> b!153323 m!138313))

(declare-fun m!138315 () Bool)

(assert (=> b!153319 m!138315))

(declare-fun m!138317 () Bool)

(assert (=> b!153330 m!138317))

(check-sat (not b!153317) (not b!153334) b_and!9007 (not b!153330) b_and!9001 (not b!153321) (not b!153335) (not b_next!5667) (not start!16390) (not b_next!5663) (not b_next!5665) (not b!153318) b_and!9009 b_and!9003 (not b!153336) (not b!153323) (not b!153329) (not b!153333) (not b_next!5657) (not b!153327) b_and!9011 (not b!153319) (not b!153325) (not b_next!5661) b_and!9005 (not b!153320) (not b!153331) (not b_next!5659) (not b!153332))
(check-sat b_and!9007 b_and!9001 (not b_next!5667) (not b_next!5657) (not b_next!5663) b_and!9011 (not b_next!5665) (not b_next!5659) b_and!9009 b_and!9003 (not b_next!5661) b_and!9005)
(get-model)

(declare-fun d!36802 () Bool)

(assert (=> d!36802 (= (inv!3461 (tag!643 (h!8064 rules!1920))) (= (mod (str.len (value!17567 (tag!643 (h!8064 rules!1920)))) 2) 0))))

(assert (=> b!153334 d!36802))

(declare-fun d!36804 () Bool)

(declare-fun res!70163 () Bool)

(declare-fun e!91837 () Bool)

(assert (=> d!36804 (=> (not res!70163) (not e!91837))))

(declare-fun semiInverseModEq!160 (Int Int) Bool)

(assert (=> d!36804 (= res!70163 (semiInverseModEq!160 (toChars!963 (transformation!465 (h!8064 rules!1920))) (toValue!1104 (transformation!465 (h!8064 rules!1920)))))))

(assert (=> d!36804 (= (inv!3464 (transformation!465 (h!8064 rules!1920))) e!91837)))

(declare-fun b!153368 () Bool)

(declare-fun equivClasses!143 (Int Int) Bool)

(assert (=> b!153368 (= e!91837 (equivClasses!143 (toChars!963 (transformation!465 (h!8064 rules!1920))) (toValue!1104 (transformation!465 (h!8064 rules!1920)))))))

(assert (= (and d!36804 res!70163) b!153368))

(declare-fun m!138345 () Bool)

(assert (=> d!36804 m!138345))

(declare-fun m!138347 () Bool)

(assert (=> b!153368 m!138347))

(assert (=> b!153334 d!36804))

(declare-fun d!36810 () Bool)

(declare-fun list!940 (Conc!752) List!2676)

(assert (=> d!36810 (= (list!939 (seqFromList!307 lt!45000)) (list!940 (c!30889 (seqFromList!307 lt!45000))))))

(declare-fun bs!14085 () Bool)

(assert (= bs!14085 d!36810))

(declare-fun m!138353 () Bool)

(assert (=> bs!14085 m!138353))

(assert (=> b!153323 d!36810))

(declare-fun d!36814 () Bool)

(declare-fun fromListB!126 (List!2676) BalanceConc!1512)

(assert (=> d!36814 (= (seqFromList!307 lt!45000) (fromListB!126 lt!45000))))

(declare-fun bs!14086 () Bool)

(assert (= bs!14086 d!36814))

(declare-fun m!138355 () Bool)

(assert (=> bs!14086 m!138355))

(assert (=> b!153323 d!36814))

(declare-fun d!36816 () Bool)

(assert (=> d!36816 (= (inv!3461 (tag!643 (rule!972 (h!8065 tokens!465)))) (= (mod (str.len (value!17567 (tag!643 (rule!972 (h!8065 tokens!465))))) 2) 0))))

(assert (=> b!153333 d!36816))

(declare-fun d!36818 () Bool)

(declare-fun res!70164 () Bool)

(declare-fun e!91838 () Bool)

(assert (=> d!36818 (=> (not res!70164) (not e!91838))))

(assert (=> d!36818 (= res!70164 (semiInverseModEq!160 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toValue!1104 (transformation!465 (rule!972 (h!8065 tokens!465))))))))

(assert (=> d!36818 (= (inv!3464 (transformation!465 (rule!972 (h!8065 tokens!465)))) e!91838)))

(declare-fun b!153371 () Bool)

(assert (=> b!153371 (= e!91838 (equivClasses!143 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toValue!1104 (transformation!465 (rule!972 (h!8065 tokens!465))))))))

(assert (= (and d!36818 res!70164) b!153371))

(declare-fun m!138357 () Bool)

(assert (=> d!36818 m!138357))

(declare-fun m!138359 () Bool)

(assert (=> b!153371 m!138359))

(assert (=> b!153333 d!36818))

(declare-fun bs!14088 () Bool)

(declare-fun d!36820 () Bool)

(assert (= bs!14088 (and d!36820 b!153336)))

(declare-fun lambda!4014 () Int)

(assert (=> bs!14088 (not (= lambda!4014 lambda!4006))))

(declare-fun b!153414 () Bool)

(declare-fun e!91871 () Bool)

(assert (=> b!153414 (= e!91871 true)))

(declare-fun b!153413 () Bool)

(declare-fun e!91870 () Bool)

(assert (=> b!153413 (= e!91870 e!91871)))

(declare-fun b!153412 () Bool)

(declare-fun e!91869 () Bool)

(assert (=> b!153412 (= e!91869 e!91870)))

(assert (=> d!36820 e!91869))

(assert (= b!153413 b!153414))

(assert (= b!153412 b!153413))

(assert (= (and d!36820 ((_ is Cons!2667) rules!1920)) b!153412))

(declare-fun order!1333 () Int)

(declare-fun order!1335 () Int)

(declare-fun dynLambda!930 (Int Int) Int)

(declare-fun dynLambda!931 (Int Int) Int)

(assert (=> b!153414 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4014))))

(declare-fun order!1337 () Int)

(declare-fun dynLambda!932 (Int Int) Int)

(assert (=> b!153414 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4014))))

(assert (=> d!36820 true))

(declare-fun e!91855 () Bool)

(assert (=> d!36820 e!91855))

(declare-fun res!70179 () Bool)

(assert (=> d!36820 (=> (not res!70179) (not e!91855))))

(declare-fun lt!45016 () Bool)

(declare-fun list!942 (BalanceConc!1514) List!2678)

(assert (=> d!36820 (= res!70179 (= lt!45016 (forall!461 (list!942 lt!45003) lambda!4014)))))

(declare-fun forall!462 (BalanceConc!1514 Int) Bool)

(assert (=> d!36820 (= lt!45016 (forall!462 lt!45003 lambda!4014))))

(assert (=> d!36820 (not (isEmpty!1056 rules!1920))))

(assert (=> d!36820 (= (rulesProduceEachTokenIndividually!143 thiss!17480 rules!1920 lt!45003) lt!45016)))

(declare-fun b!153394 () Bool)

(assert (=> b!153394 (= e!91855 (= lt!45016 (rulesProduceEachTokenIndividuallyList!89 thiss!17480 rules!1920 (list!942 lt!45003))))))

(assert (= (and d!36820 res!70179) b!153394))

(declare-fun m!138381 () Bool)

(assert (=> d!36820 m!138381))

(assert (=> d!36820 m!138381))

(declare-fun m!138383 () Bool)

(assert (=> d!36820 m!138383))

(declare-fun m!138385 () Bool)

(assert (=> d!36820 m!138385))

(assert (=> d!36820 m!138317))

(assert (=> b!153394 m!138381))

(assert (=> b!153394 m!138381))

(declare-fun m!138387 () Bool)

(assert (=> b!153394 m!138387))

(assert (=> b!153331 d!36820))

(declare-fun d!36826 () Bool)

(declare-fun fromListB!128 (List!2678) BalanceConc!1514)

(assert (=> d!36826 (= (seqFromList!308 tokens!465) (fromListB!128 tokens!465))))

(declare-fun bs!14089 () Bool)

(assert (= bs!14089 d!36826))

(declare-fun m!138389 () Bool)

(assert (=> bs!14089 m!138389))

(assert (=> b!153331 d!36826))

(declare-fun b!153427 () Bool)

(declare-fun e!91879 () Bool)

(declare-fun e!91878 () Bool)

(assert (=> b!153427 (= e!91879 e!91878)))

(declare-fun c!30907 () Bool)

(assert (=> b!153427 (= c!30907 ((_ is IntegerValue!1462) (value!17568 separatorToken!170)))))

(declare-fun b!153428 () Bool)

(declare-fun res!70182 () Bool)

(declare-fun e!91880 () Bool)

(assert (=> b!153428 (=> res!70182 e!91880)))

(assert (=> b!153428 (= res!70182 (not ((_ is IntegerValue!1463) (value!17568 separatorToken!170))))))

(assert (=> b!153428 (= e!91878 e!91880)))

(declare-fun b!153429 () Bool)

(declare-fun inv!17 (TokenValue!487) Bool)

(assert (=> b!153429 (= e!91878 (inv!17 (value!17568 separatorToken!170)))))

(declare-fun d!36828 () Bool)

(declare-fun c!30908 () Bool)

(assert (=> d!36828 (= c!30908 ((_ is IntegerValue!1461) (value!17568 separatorToken!170)))))

(assert (=> d!36828 (= (inv!21 (value!17568 separatorToken!170)) e!91879)))

(declare-fun b!153430 () Bool)

(declare-fun inv!16 (TokenValue!487) Bool)

(assert (=> b!153430 (= e!91879 (inv!16 (value!17568 separatorToken!170)))))

(declare-fun b!153431 () Bool)

(declare-fun inv!15 (TokenValue!487) Bool)

(assert (=> b!153431 (= e!91880 (inv!15 (value!17568 separatorToken!170)))))

(assert (= (and d!36828 c!30908) b!153430))

(assert (= (and d!36828 (not c!30908)) b!153427))

(assert (= (and b!153427 c!30907) b!153429))

(assert (= (and b!153427 (not c!30907)) b!153428))

(assert (= (and b!153428 (not res!70182)) b!153431))

(declare-fun m!138391 () Bool)

(assert (=> b!153429 m!138391))

(declare-fun m!138393 () Bool)

(assert (=> b!153430 m!138393))

(declare-fun m!138395 () Bool)

(assert (=> b!153431 m!138395))

(assert (=> b!153321 d!36828))

(declare-fun d!36830 () Bool)

(assert (=> d!36830 (= (isEmpty!1056 rules!1920) ((_ is Nil!2667) rules!1920))))

(assert (=> b!153330 d!36830))

(declare-fun b!153432 () Bool)

(declare-fun e!91882 () Bool)

(declare-fun e!91881 () Bool)

(assert (=> b!153432 (= e!91882 e!91881)))

(declare-fun c!30909 () Bool)

(assert (=> b!153432 (= c!30909 ((_ is IntegerValue!1462) (value!17568 (h!8065 tokens!465))))))

(declare-fun b!153433 () Bool)

(declare-fun res!70183 () Bool)

(declare-fun e!91883 () Bool)

(assert (=> b!153433 (=> res!70183 e!91883)))

(assert (=> b!153433 (= res!70183 (not ((_ is IntegerValue!1463) (value!17568 (h!8065 tokens!465)))))))

(assert (=> b!153433 (= e!91881 e!91883)))

(declare-fun b!153434 () Bool)

(assert (=> b!153434 (= e!91881 (inv!17 (value!17568 (h!8065 tokens!465))))))

(declare-fun d!36832 () Bool)

(declare-fun c!30910 () Bool)

(assert (=> d!36832 (= c!30910 ((_ is IntegerValue!1461) (value!17568 (h!8065 tokens!465))))))

(assert (=> d!36832 (= (inv!21 (value!17568 (h!8065 tokens!465))) e!91882)))

(declare-fun b!153435 () Bool)

(assert (=> b!153435 (= e!91882 (inv!16 (value!17568 (h!8065 tokens!465))))))

(declare-fun b!153436 () Bool)

(assert (=> b!153436 (= e!91883 (inv!15 (value!17568 (h!8065 tokens!465))))))

(assert (= (and d!36832 c!30910) b!153435))

(assert (= (and d!36832 (not c!30910)) b!153432))

(assert (= (and b!153432 c!30909) b!153434))

(assert (= (and b!153432 (not c!30909)) b!153433))

(assert (= (and b!153433 (not res!70183)) b!153436))

(declare-fun m!138397 () Bool)

(assert (=> b!153434 m!138397))

(declare-fun m!138399 () Bool)

(assert (=> b!153435 m!138399))

(declare-fun m!138401 () Bool)

(assert (=> b!153436 m!138401))

(assert (=> b!153319 d!36832))

(declare-fun e!91889 () List!2676)

(declare-fun b!153446 () Bool)

(assert (=> b!153446 (= e!91889 (Cons!2666 (h!8063 (++!576 lt!45002 lt!45001)) (++!576 (t!25076 (++!576 lt!45002 lt!45001)) lt!44998)))))

(declare-fun d!36834 () Bool)

(declare-fun e!91888 () Bool)

(assert (=> d!36834 e!91888))

(declare-fun res!70188 () Bool)

(assert (=> d!36834 (=> (not res!70188) (not e!91888))))

(declare-fun lt!45019 () List!2676)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!369 (List!2676) (InoxSet C!2300))

(assert (=> d!36834 (= res!70188 (= (content!369 lt!45019) ((_ map or) (content!369 (++!576 lt!45002 lt!45001)) (content!369 lt!44998))))))

(assert (=> d!36834 (= lt!45019 e!91889)))

(declare-fun c!30913 () Bool)

(assert (=> d!36834 (= c!30913 ((_ is Nil!2666) (++!576 lt!45002 lt!45001)))))

(assert (=> d!36834 (= (++!576 (++!576 lt!45002 lt!45001) lt!44998) lt!45019)))

(declare-fun b!153448 () Bool)

(assert (=> b!153448 (= e!91888 (or (not (= lt!44998 Nil!2666)) (= lt!45019 (++!576 lt!45002 lt!45001))))))

(declare-fun b!153445 () Bool)

(assert (=> b!153445 (= e!91889 lt!44998)))

(declare-fun b!153447 () Bool)

(declare-fun res!70189 () Bool)

(assert (=> b!153447 (=> (not res!70189) (not e!91888))))

(declare-fun size!2263 (List!2676) Int)

(assert (=> b!153447 (= res!70189 (= (size!2263 lt!45019) (+ (size!2263 (++!576 lt!45002 lt!45001)) (size!2263 lt!44998))))))

(assert (= (and d!36834 c!30913) b!153445))

(assert (= (and d!36834 (not c!30913)) b!153446))

(assert (= (and d!36834 res!70188) b!153447))

(assert (= (and b!153447 res!70189) b!153448))

(declare-fun m!138403 () Bool)

(assert (=> b!153446 m!138403))

(declare-fun m!138405 () Bool)

(assert (=> d!36834 m!138405))

(assert (=> d!36834 m!138285))

(declare-fun m!138407 () Bool)

(assert (=> d!36834 m!138407))

(declare-fun m!138409 () Bool)

(assert (=> d!36834 m!138409))

(declare-fun m!138411 () Bool)

(assert (=> b!153447 m!138411))

(assert (=> b!153447 m!138285))

(declare-fun m!138413 () Bool)

(assert (=> b!153447 m!138413))

(declare-fun m!138415 () Bool)

(assert (=> b!153447 m!138415))

(assert (=> b!153320 d!36834))

(declare-fun d!36836 () Bool)

(assert (=> d!36836 (= (++!576 (++!576 lt!45002 lt!45001) lt!44998) (++!576 lt!45002 (++!576 lt!45001 lt!44998)))))

(declare-fun lt!45022 () Unit!2058)

(declare-fun choose!1754 (List!2676 List!2676 List!2676) Unit!2058)

(assert (=> d!36836 (= lt!45022 (choose!1754 lt!45002 lt!45001 lt!44998))))

(assert (=> d!36836 (= (lemmaConcatAssociativity!146 lt!45002 lt!45001 lt!44998) lt!45022)))

(declare-fun bs!14090 () Bool)

(assert (= bs!14090 d!36836))

(declare-fun m!138417 () Bool)

(assert (=> bs!14090 m!138417))

(assert (=> bs!14090 m!138285))

(assert (=> bs!14090 m!138293))

(assert (=> bs!14090 m!138305))

(declare-fun m!138419 () Bool)

(assert (=> bs!14090 m!138419))

(assert (=> bs!14090 m!138305))

(assert (=> bs!14090 m!138285))

(assert (=> b!153320 d!36836))

(declare-fun d!36838 () Bool)

(assert (=> d!36838 (= (list!939 (charsOf!120 separatorToken!170)) (list!940 (c!30889 (charsOf!120 separatorToken!170))))))

(declare-fun bs!14091 () Bool)

(assert (= bs!14091 d!36838))

(declare-fun m!138421 () Bool)

(assert (=> bs!14091 m!138421))

(assert (=> b!153320 d!36838))

(declare-fun b!153450 () Bool)

(declare-fun e!91891 () List!2676)

(assert (=> b!153450 (= e!91891 (Cons!2666 (h!8063 lt!45002) (++!576 (t!25076 lt!45002) lt!45001)))))

(declare-fun d!36840 () Bool)

(declare-fun e!91890 () Bool)

(assert (=> d!36840 e!91890))

(declare-fun res!70190 () Bool)

(assert (=> d!36840 (=> (not res!70190) (not e!91890))))

(declare-fun lt!45023 () List!2676)

(assert (=> d!36840 (= res!70190 (= (content!369 lt!45023) ((_ map or) (content!369 lt!45002) (content!369 lt!45001))))))

(assert (=> d!36840 (= lt!45023 e!91891)))

(declare-fun c!30914 () Bool)

(assert (=> d!36840 (= c!30914 ((_ is Nil!2666) lt!45002))))

(assert (=> d!36840 (= (++!576 lt!45002 lt!45001) lt!45023)))

(declare-fun b!153452 () Bool)

(assert (=> b!153452 (= e!91890 (or (not (= lt!45001 Nil!2666)) (= lt!45023 lt!45002)))))

(declare-fun b!153449 () Bool)

(assert (=> b!153449 (= e!91891 lt!45001)))

(declare-fun b!153451 () Bool)

(declare-fun res!70191 () Bool)

(assert (=> b!153451 (=> (not res!70191) (not e!91890))))

(assert (=> b!153451 (= res!70191 (= (size!2263 lt!45023) (+ (size!2263 lt!45002) (size!2263 lt!45001))))))

(assert (= (and d!36840 c!30914) b!153449))

(assert (= (and d!36840 (not c!30914)) b!153450))

(assert (= (and d!36840 res!70190) b!153451))

(assert (= (and b!153451 res!70191) b!153452))

(declare-fun m!138423 () Bool)

(assert (=> b!153450 m!138423))

(declare-fun m!138425 () Bool)

(assert (=> d!36840 m!138425))

(declare-fun m!138427 () Bool)

(assert (=> d!36840 m!138427))

(declare-fun m!138429 () Bool)

(assert (=> d!36840 m!138429))

(declare-fun m!138431 () Bool)

(assert (=> b!153451 m!138431))

(declare-fun m!138433 () Bool)

(assert (=> b!153451 m!138433))

(declare-fun m!138435 () Bool)

(assert (=> b!153451 m!138435))

(assert (=> b!153320 d!36840))

(declare-fun bs!14095 () Bool)

(declare-fun b!153528 () Bool)

(assert (= bs!14095 (and b!153528 b!153336)))

(declare-fun lambda!4020 () Int)

(assert (=> bs!14095 (not (= lambda!4020 lambda!4006))))

(declare-fun bs!14096 () Bool)

(assert (= bs!14096 (and b!153528 d!36820)))

(assert (=> bs!14096 (= lambda!4020 lambda!4014)))

(declare-fun b!153537 () Bool)

(declare-fun e!91938 () Bool)

(assert (=> b!153537 (= e!91938 true)))

(declare-fun b!153536 () Bool)

(declare-fun e!91937 () Bool)

(assert (=> b!153536 (= e!91937 e!91938)))

(declare-fun b!153535 () Bool)

(declare-fun e!91936 () Bool)

(assert (=> b!153535 (= e!91936 e!91937)))

(assert (=> b!153528 e!91936))

(assert (= b!153536 b!153537))

(assert (= b!153535 b!153536))

(assert (= (and b!153528 ((_ is Cons!2667) rules!1920)) b!153535))

(assert (=> b!153537 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4020))))

(assert (=> b!153537 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4020))))

(assert (=> b!153528 true))

(declare-fun bm!6267 () Bool)

(declare-fun c!30943 () Bool)

(declare-fun c!30940 () Bool)

(assert (=> bm!6267 (= c!30943 c!30940)))

(declare-fun lt!45061 () List!2676)

(declare-fun call!6272 () List!2676)

(declare-fun call!6273 () List!2676)

(declare-fun e!91931 () List!2676)

(assert (=> bm!6267 (= call!6273 (++!576 e!91931 (ite c!30940 lt!45061 call!6272)))))

(declare-fun bm!6268 () Bool)

(declare-fun call!6274 () BalanceConc!1512)

(assert (=> bm!6268 (= call!6274 (charsOf!120 (h!8065 (t!25078 tokens!465))))))

(declare-fun b!153525 () Bool)

(declare-fun e!91932 () List!2676)

(assert (=> b!153525 (= e!91932 (++!576 call!6273 lt!45061))))

(declare-fun b!153526 () Bool)

(declare-fun c!30942 () Bool)

(declare-datatypes ((tuple2!2590 0))(
  ( (tuple2!2591 (_1!1511 Token!674) (_2!1511 List!2676)) )
))
(declare-datatypes ((Option!247 0))(
  ( (None!246) (Some!246 (v!13631 tuple2!2590)) )
))
(declare-fun lt!45065 () Option!247)

(assert (=> b!153526 (= c!30942 (and ((_ is Some!246) lt!45065) (not (= (_1!1511 (v!13631 lt!45065)) (h!8065 (t!25078 tokens!465))))))))

(declare-fun e!91933 () List!2676)

(assert (=> b!153526 (= e!91933 e!91932)))

(declare-fun b!153527 () Bool)

(declare-fun e!91935 () BalanceConc!1512)

(declare-fun call!6276 () BalanceConc!1512)

(assert (=> b!153527 (= e!91935 call!6276)))

(declare-fun bm!6269 () Bool)

(declare-fun call!6275 () List!2676)

(assert (=> bm!6269 (= call!6272 call!6275)))

(declare-fun c!30941 () Bool)

(assert (=> bm!6269 (= c!30941 c!30942)))

(declare-fun e!91934 () List!2676)

(assert (=> b!153528 (= e!91934 e!91933)))

(declare-fun lt!45063 () Unit!2058)

(declare-fun forallContained!54 (List!2678 Int Token!674) Unit!2058)

(assert (=> b!153528 (= lt!45063 (forallContained!54 (t!25078 tokens!465) lambda!4020 (h!8065 (t!25078 tokens!465))))))

(assert (=> b!153528 (= lt!45061 (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 (t!25078 (t!25078 tokens!465)) separatorToken!170))))

(declare-fun maxPrefix!111 (LexerInterface!351 List!2677 List!2676) Option!247)

(assert (=> b!153528 (= lt!45065 (maxPrefix!111 thiss!17480 rules!1920 (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) lt!45061)))))

(assert (=> b!153528 (= c!30940 (and ((_ is Some!246) lt!45065) (= (_1!1511 (v!13631 lt!45065)) (h!8065 (t!25078 tokens!465)))))))

(declare-fun b!153529 () Bool)

(assert (=> b!153529 (= e!91932 Nil!2666)))

(declare-fun print!96 (LexerInterface!351 BalanceConc!1514) BalanceConc!1512)

(declare-fun singletonSeq!29 (Token!674) BalanceConc!1514)

(declare-fun printTailRec!59 (LexerInterface!351 BalanceConc!1514 Int BalanceConc!1512) BalanceConc!1512)

(assert (=> b!153529 (= (print!96 thiss!17480 (singletonSeq!29 (h!8065 (t!25078 tokens!465)))) (printTailRec!59 thiss!17480 (singletonSeq!29 (h!8065 (t!25078 tokens!465))) 0 (BalanceConc!1513 Empty!752)))))

(declare-fun lt!45062 () Unit!2058)

(declare-fun Unit!2062 () Unit!2058)

(assert (=> b!153529 (= lt!45062 Unit!2062)))

(declare-fun lt!45066 () Unit!2058)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!18 (LexerInterface!351 List!2677 List!2676 List!2676) Unit!2058)

(assert (=> b!153529 (= lt!45066 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!18 thiss!17480 rules!1920 call!6272 lt!45061))))

(assert (=> b!153529 false))

(declare-fun lt!45064 () Unit!2058)

(declare-fun Unit!2063 () Unit!2058)

(assert (=> b!153529 (= lt!45064 Unit!2063)))

(declare-fun b!153530 () Bool)

(assert (=> b!153530 (= e!91931 call!6275)))

(declare-fun b!153531 () Bool)

(assert (=> b!153531 (= e!91933 call!6273)))

(declare-fun b!153532 () Bool)

(assert (=> b!153532 (= e!91935 (charsOf!120 separatorToken!170))))

(declare-fun b!153533 () Bool)

(assert (=> b!153533 (= e!91934 Nil!2666)))

(declare-fun d!36842 () Bool)

(declare-fun c!30944 () Bool)

(assert (=> d!36842 (= c!30944 ((_ is Cons!2668) (t!25078 tokens!465)))))

(assert (=> d!36842 (= (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 (t!25078 tokens!465) separatorToken!170) e!91934)))

(declare-fun bm!6270 () Bool)

(assert (=> bm!6270 (= call!6275 (list!939 (ite c!30940 call!6274 e!91935)))))

(declare-fun b!153534 () Bool)

(assert (=> b!153534 (= e!91931 (list!939 call!6276))))

(declare-fun bm!6271 () Bool)

(assert (=> bm!6271 (= call!6276 call!6274)))

(assert (= (and d!36842 c!30944) b!153528))

(assert (= (and d!36842 (not c!30944)) b!153533))

(assert (= (and b!153528 c!30940) b!153531))

(assert (= (and b!153528 (not c!30940)) b!153526))

(assert (= (and b!153526 c!30942) b!153525))

(assert (= (and b!153526 (not c!30942)) b!153529))

(assert (= (or b!153525 b!153529) bm!6271))

(assert (= (or b!153525 b!153529) bm!6269))

(assert (= (and bm!6269 c!30941) b!153532))

(assert (= (and bm!6269 (not c!30941)) b!153527))

(assert (= (or b!153531 bm!6271) bm!6268))

(assert (= (or b!153531 bm!6269) bm!6270))

(assert (= (or b!153531 b!153525) bm!6267))

(assert (= (and bm!6267 c!30943) b!153530))

(assert (= (and bm!6267 (not c!30943)) b!153534))

(declare-fun m!138523 () Bool)

(assert (=> bm!6270 m!138523))

(declare-fun m!138525 () Bool)

(assert (=> b!153534 m!138525))

(declare-fun m!138527 () Bool)

(assert (=> b!153525 m!138527))

(declare-fun m!138529 () Bool)

(assert (=> bm!6267 m!138529))

(declare-fun m!138531 () Bool)

(assert (=> bm!6268 m!138531))

(assert (=> b!153532 m!138295))

(assert (=> b!153528 m!138531))

(declare-fun m!138533 () Bool)

(assert (=> b!153528 m!138533))

(declare-fun m!138535 () Bool)

(assert (=> b!153528 m!138535))

(assert (=> b!153528 m!138533))

(declare-fun m!138537 () Bool)

(assert (=> b!153528 m!138537))

(assert (=> b!153528 m!138531))

(declare-fun m!138539 () Bool)

(assert (=> b!153528 m!138539))

(assert (=> b!153528 m!138537))

(declare-fun m!138541 () Bool)

(assert (=> b!153528 m!138541))

(declare-fun m!138543 () Bool)

(assert (=> b!153529 m!138543))

(assert (=> b!153529 m!138543))

(declare-fun m!138545 () Bool)

(assert (=> b!153529 m!138545))

(assert (=> b!153529 m!138543))

(declare-fun m!138547 () Bool)

(assert (=> b!153529 m!138547))

(declare-fun m!138549 () Bool)

(assert (=> b!153529 m!138549))

(assert (=> b!153320 d!36842))

(declare-fun d!36864 () Bool)

(declare-fun lt!45069 () BalanceConc!1512)

(assert (=> d!36864 (= (list!939 lt!45069) (originalCharacters!508 separatorToken!170))))

(declare-fun dynLambda!938 (Int TokenValue!487) BalanceConc!1512)

(assert (=> d!36864 (= lt!45069 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170)))))

(assert (=> d!36864 (= (charsOf!120 separatorToken!170) lt!45069)))

(declare-fun b_lambda!2891 () Bool)

(assert (=> (not b_lambda!2891) (not d!36864)))

(declare-fun tb!5265 () Bool)

(declare-fun t!25102 () Bool)

(assert (=> (and b!153322 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 separatorToken!170)))) t!25102) tb!5265))

(declare-fun b!153542 () Bool)

(declare-fun e!91941 () Bool)

(declare-fun tp!79542 () Bool)

(declare-fun inv!3468 (Conc!752) Bool)

(assert (=> b!153542 (= e!91941 (and (inv!3468 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170)))) tp!79542))))

(declare-fun result!7746 () Bool)

(declare-fun inv!3469 (BalanceConc!1512) Bool)

(assert (=> tb!5265 (= result!7746 (and (inv!3469 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170))) e!91941))))

(assert (= tb!5265 b!153542))

(declare-fun m!138551 () Bool)

(assert (=> b!153542 m!138551))

(declare-fun m!138553 () Bool)

(assert (=> tb!5265 m!138553))

(assert (=> d!36864 t!25102))

(declare-fun b_and!9031 () Bool)

(assert (= b_and!9003 (and (=> t!25102 result!7746) b_and!9031)))

(declare-fun tb!5267 () Bool)

(declare-fun t!25104 () Bool)

(assert (=> (and b!153328 (= (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toChars!963 (transformation!465 (rule!972 separatorToken!170)))) t!25104) tb!5267))

(declare-fun result!7750 () Bool)

(assert (= result!7750 result!7746))

(assert (=> d!36864 t!25104))

(declare-fun b_and!9033 () Bool)

(assert (= b_and!9007 (and (=> t!25104 result!7750) b_and!9033)))

(declare-fun t!25106 () Bool)

(declare-fun tb!5269 () Bool)

(assert (=> (and b!153316 (= (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toChars!963 (transformation!465 (rule!972 separatorToken!170)))) t!25106) tb!5269))

(declare-fun result!7752 () Bool)

(assert (= result!7752 result!7746))

(assert (=> d!36864 t!25106))

(declare-fun b_and!9035 () Bool)

(assert (= b_and!9011 (and (=> t!25106 result!7752) b_and!9035)))

(declare-fun m!138555 () Bool)

(assert (=> d!36864 m!138555))

(declare-fun m!138557 () Bool)

(assert (=> d!36864 m!138557))

(assert (=> b!153320 d!36864))

(declare-fun d!36866 () Bool)

(assert (=> d!36866 (= (list!939 (charsOf!120 (h!8065 tokens!465))) (list!940 (c!30889 (charsOf!120 (h!8065 tokens!465)))))))

(declare-fun bs!14097 () Bool)

(assert (= bs!14097 d!36866))

(declare-fun m!138559 () Bool)

(assert (=> bs!14097 m!138559))

(assert (=> b!153320 d!36866))

(declare-fun d!36868 () Bool)

(declare-fun lt!45070 () BalanceConc!1512)

(assert (=> d!36868 (= (list!939 lt!45070) (originalCharacters!508 (h!8065 tokens!465)))))

(assert (=> d!36868 (= lt!45070 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465))))))

(assert (=> d!36868 (= (charsOf!120 (h!8065 tokens!465)) lt!45070)))

(declare-fun b_lambda!2893 () Bool)

(assert (=> (not b_lambda!2893) (not d!36868)))

(declare-fun tb!5271 () Bool)

(declare-fun t!25108 () Bool)

(assert (=> (and b!153322 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465))))) t!25108) tb!5271))

(declare-fun b!153543 () Bool)

(declare-fun e!91942 () Bool)

(declare-fun tp!79543 () Bool)

(assert (=> b!153543 (= e!91942 (and (inv!3468 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465))))) tp!79543))))

(declare-fun result!7754 () Bool)

(assert (=> tb!5271 (= result!7754 (and (inv!3469 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465)))) e!91942))))

(assert (= tb!5271 b!153543))

(declare-fun m!138561 () Bool)

(assert (=> b!153543 m!138561))

(declare-fun m!138563 () Bool)

(assert (=> tb!5271 m!138563))

(assert (=> d!36868 t!25108))

(declare-fun b_and!9037 () Bool)

(assert (= b_and!9031 (and (=> t!25108 result!7754) b_and!9037)))

(declare-fun t!25110 () Bool)

(declare-fun tb!5273 () Bool)

(assert (=> (and b!153328 (= (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465))))) t!25110) tb!5273))

(declare-fun result!7756 () Bool)

(assert (= result!7756 result!7754))

(assert (=> d!36868 t!25110))

(declare-fun b_and!9039 () Bool)

(assert (= b_and!9033 (and (=> t!25110 result!7756) b_and!9039)))

(declare-fun t!25112 () Bool)

(declare-fun tb!5275 () Bool)

(assert (=> (and b!153316 (= (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465))))) t!25112) tb!5275))

(declare-fun result!7758 () Bool)

(assert (= result!7758 result!7754))

(assert (=> d!36868 t!25112))

(declare-fun b_and!9041 () Bool)

(assert (= b_and!9035 (and (=> t!25112 result!7758) b_and!9041)))

(declare-fun m!138565 () Bool)

(assert (=> d!36868 m!138565))

(declare-fun m!138567 () Bool)

(assert (=> d!36868 m!138567))

(assert (=> b!153320 d!36868))

(declare-fun bs!14099 () Bool)

(declare-fun d!36870 () Bool)

(assert (= bs!14099 (and d!36870 b!153336)))

(declare-fun lambda!4023 () Int)

(assert (=> bs!14099 (not (= lambda!4023 lambda!4006))))

(declare-fun bs!14100 () Bool)

(assert (= bs!14100 (and d!36870 d!36820)))

(assert (=> bs!14100 (= lambda!4023 lambda!4014)))

(declare-fun bs!14101 () Bool)

(assert (= bs!14101 (and d!36870 b!153528)))

(assert (=> bs!14101 (= lambda!4023 lambda!4020)))

(declare-fun b!153564 () Bool)

(declare-fun e!91960 () Bool)

(assert (=> b!153564 (= e!91960 true)))

(declare-fun b!153563 () Bool)

(declare-fun e!91959 () Bool)

(assert (=> b!153563 (= e!91959 e!91960)))

(declare-fun b!153562 () Bool)

(declare-fun e!91958 () Bool)

(assert (=> b!153562 (= e!91958 e!91959)))

(assert (=> d!36870 e!91958))

(assert (= b!153563 b!153564))

(assert (= b!153562 b!153563))

(assert (= (and d!36870 ((_ is Cons!2667) rules!1920)) b!153562))

(assert (=> b!153564 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4023))))

(assert (=> b!153564 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4023))))

(assert (=> d!36870 true))

(declare-fun lt!45079 () Bool)

(assert (=> d!36870 (= lt!45079 (forall!461 (t!25078 tokens!465) lambda!4023))))

(declare-fun e!91957 () Bool)

(assert (=> d!36870 (= lt!45079 e!91957)))

(declare-fun res!70221 () Bool)

(assert (=> d!36870 (=> res!70221 e!91957)))

(assert (=> d!36870 (= res!70221 (not ((_ is Cons!2668) (t!25078 tokens!465))))))

(assert (=> d!36870 (not (isEmpty!1056 rules!1920))))

(assert (=> d!36870 (= (rulesProduceEachTokenIndividuallyList!89 thiss!17480 rules!1920 (t!25078 tokens!465)) lt!45079)))

(declare-fun b!153560 () Bool)

(declare-fun e!91956 () Bool)

(assert (=> b!153560 (= e!91957 e!91956)))

(declare-fun res!70222 () Bool)

(assert (=> b!153560 (=> (not res!70222) (not e!91956))))

(assert (=> b!153560 (= res!70222 (rulesProduceIndividualToken!100 thiss!17480 rules!1920 (h!8065 (t!25078 tokens!465))))))

(declare-fun b!153561 () Bool)

(assert (=> b!153561 (= e!91956 (rulesProduceEachTokenIndividuallyList!89 thiss!17480 rules!1920 (t!25078 (t!25078 tokens!465))))))

(assert (= (and d!36870 (not res!70221)) b!153560))

(assert (= (and b!153560 res!70222) b!153561))

(declare-fun m!138593 () Bool)

(assert (=> d!36870 m!138593))

(assert (=> d!36870 m!138317))

(declare-fun m!138595 () Bool)

(assert (=> b!153560 m!138595))

(declare-fun m!138597 () Bool)

(assert (=> b!153561 m!138597))

(assert (=> b!153320 d!36870))

(declare-fun b!153566 () Bool)

(declare-fun e!91962 () List!2676)

(assert (=> b!153566 (= e!91962 (Cons!2666 (h!8063 lt!45002) (++!576 (t!25076 lt!45002) lt!44997)))))

(declare-fun d!36878 () Bool)

(declare-fun e!91961 () Bool)

(assert (=> d!36878 e!91961))

(declare-fun res!70223 () Bool)

(assert (=> d!36878 (=> (not res!70223) (not e!91961))))

(declare-fun lt!45080 () List!2676)

(assert (=> d!36878 (= res!70223 (= (content!369 lt!45080) ((_ map or) (content!369 lt!45002) (content!369 lt!44997))))))

(assert (=> d!36878 (= lt!45080 e!91962)))

(declare-fun c!30945 () Bool)

(assert (=> d!36878 (= c!30945 ((_ is Nil!2666) lt!45002))))

(assert (=> d!36878 (= (++!576 lt!45002 lt!44997) lt!45080)))

(declare-fun b!153568 () Bool)

(assert (=> b!153568 (= e!91961 (or (not (= lt!44997 Nil!2666)) (= lt!45080 lt!45002)))))

(declare-fun b!153565 () Bool)

(assert (=> b!153565 (= e!91962 lt!44997)))

(declare-fun b!153567 () Bool)

(declare-fun res!70224 () Bool)

(assert (=> b!153567 (=> (not res!70224) (not e!91961))))

(assert (=> b!153567 (= res!70224 (= (size!2263 lt!45080) (+ (size!2263 lt!45002) (size!2263 lt!44997))))))

(assert (= (and d!36878 c!30945) b!153565))

(assert (= (and d!36878 (not c!30945)) b!153566))

(assert (= (and d!36878 res!70223) b!153567))

(assert (= (and b!153567 res!70224) b!153568))

(declare-fun m!138599 () Bool)

(assert (=> b!153566 m!138599))

(declare-fun m!138601 () Bool)

(assert (=> d!36878 m!138601))

(assert (=> d!36878 m!138427))

(declare-fun m!138603 () Bool)

(assert (=> d!36878 m!138603))

(declare-fun m!138605 () Bool)

(assert (=> b!153567 m!138605))

(assert (=> b!153567 m!138433))

(declare-fun m!138607 () Bool)

(assert (=> b!153567 m!138607))

(assert (=> b!153320 d!36878))

(declare-fun b!153570 () Bool)

(declare-fun e!91964 () List!2676)

(assert (=> b!153570 (= e!91964 (Cons!2666 (h!8063 lt!45001) (++!576 (t!25076 lt!45001) lt!44998)))))

(declare-fun d!36880 () Bool)

(declare-fun e!91963 () Bool)

(assert (=> d!36880 e!91963))

(declare-fun res!70225 () Bool)

(assert (=> d!36880 (=> (not res!70225) (not e!91963))))

(declare-fun lt!45081 () List!2676)

(assert (=> d!36880 (= res!70225 (= (content!369 lt!45081) ((_ map or) (content!369 lt!45001) (content!369 lt!44998))))))

(assert (=> d!36880 (= lt!45081 e!91964)))

(declare-fun c!30946 () Bool)

(assert (=> d!36880 (= c!30946 ((_ is Nil!2666) lt!45001))))

(assert (=> d!36880 (= (++!576 lt!45001 lt!44998) lt!45081)))

(declare-fun b!153572 () Bool)

(assert (=> b!153572 (= e!91963 (or (not (= lt!44998 Nil!2666)) (= lt!45081 lt!45001)))))

(declare-fun b!153569 () Bool)

(assert (=> b!153569 (= e!91964 lt!44998)))

(declare-fun b!153571 () Bool)

(declare-fun res!70226 () Bool)

(assert (=> b!153571 (=> (not res!70226) (not e!91963))))

(assert (=> b!153571 (= res!70226 (= (size!2263 lt!45081) (+ (size!2263 lt!45001) (size!2263 lt!44998))))))

(assert (= (and d!36880 c!30946) b!153569))

(assert (= (and d!36880 (not c!30946)) b!153570))

(assert (= (and d!36880 res!70225) b!153571))

(assert (= (and b!153571 res!70226) b!153572))

(declare-fun m!138609 () Bool)

(assert (=> b!153570 m!138609))

(declare-fun m!138611 () Bool)

(assert (=> d!36880 m!138611))

(assert (=> d!36880 m!138429))

(assert (=> d!36880 m!138409))

(declare-fun m!138613 () Bool)

(assert (=> b!153571 m!138613))

(assert (=> b!153571 m!138435))

(assert (=> b!153571 m!138415))

(assert (=> b!153320 d!36880))

(declare-fun d!36882 () Bool)

(declare-fun res!70229 () Bool)

(declare-fun e!91967 () Bool)

(assert (=> d!36882 (=> (not res!70229) (not e!91967))))

(declare-fun rulesValid!126 (LexerInterface!351 List!2677) Bool)

(assert (=> d!36882 (= res!70229 (rulesValid!126 thiss!17480 rules!1920))))

(assert (=> d!36882 (= (rulesInvariant!317 thiss!17480 rules!1920) e!91967)))

(declare-fun b!153575 () Bool)

(declare-datatypes ((List!2679 0))(
  ( (Nil!2669) (Cons!2669 (h!8066 String!3515) (t!25145 List!2679)) )
))
(declare-fun noDuplicateTag!126 (LexerInterface!351 List!2677 List!2679) Bool)

(assert (=> b!153575 (= e!91967 (noDuplicateTag!126 thiss!17480 rules!1920 Nil!2669))))

(assert (= (and d!36882 res!70229) b!153575))

(declare-fun m!138615 () Bool)

(assert (=> d!36882 m!138615))

(declare-fun m!138617 () Bool)

(assert (=> b!153575 m!138617))

(assert (=> b!153318 d!36882))

(declare-fun d!36884 () Bool)

(declare-fun res!70234 () Bool)

(declare-fun e!91970 () Bool)

(assert (=> d!36884 (=> (not res!70234) (not e!91970))))

(declare-fun isEmpty!1058 (List!2676) Bool)

(assert (=> d!36884 (= res!70234 (not (isEmpty!1058 (originalCharacters!508 (h!8065 tokens!465)))))))

(assert (=> d!36884 (= (inv!3465 (h!8065 tokens!465)) e!91970)))

(declare-fun b!153580 () Bool)

(declare-fun res!70235 () Bool)

(assert (=> b!153580 (=> (not res!70235) (not e!91970))))

(assert (=> b!153580 (= res!70235 (= (originalCharacters!508 (h!8065 tokens!465)) (list!939 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465))))))))

(declare-fun b!153581 () Bool)

(assert (=> b!153581 (= e!91970 (= (size!2261 (h!8065 tokens!465)) (size!2263 (originalCharacters!508 (h!8065 tokens!465)))))))

(assert (= (and d!36884 res!70234) b!153580))

(assert (= (and b!153580 res!70235) b!153581))

(declare-fun b_lambda!2895 () Bool)

(assert (=> (not b_lambda!2895) (not b!153580)))

(assert (=> b!153580 t!25108))

(declare-fun b_and!9043 () Bool)

(assert (= b_and!9037 (and (=> t!25108 result!7754) b_and!9043)))

(assert (=> b!153580 t!25110))

(declare-fun b_and!9045 () Bool)

(assert (= b_and!9039 (and (=> t!25110 result!7756) b_and!9045)))

(assert (=> b!153580 t!25112))

(declare-fun b_and!9047 () Bool)

(assert (= b_and!9041 (and (=> t!25112 result!7758) b_and!9047)))

(declare-fun m!138619 () Bool)

(assert (=> d!36884 m!138619))

(assert (=> b!153580 m!138567))

(assert (=> b!153580 m!138567))

(declare-fun m!138621 () Bool)

(assert (=> b!153580 m!138621))

(declare-fun m!138623 () Bool)

(assert (=> b!153581 m!138623))

(assert (=> b!153329 d!36884))

(declare-fun d!36886 () Bool)

(declare-fun res!70236 () Bool)

(declare-fun e!91971 () Bool)

(assert (=> d!36886 (=> (not res!70236) (not e!91971))))

(assert (=> d!36886 (= res!70236 (not (isEmpty!1058 (originalCharacters!508 separatorToken!170))))))

(assert (=> d!36886 (= (inv!3465 separatorToken!170) e!91971)))

(declare-fun b!153582 () Bool)

(declare-fun res!70237 () Bool)

(assert (=> b!153582 (=> (not res!70237) (not e!91971))))

(assert (=> b!153582 (= res!70237 (= (originalCharacters!508 separatorToken!170) (list!939 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170)))))))

(declare-fun b!153583 () Bool)

(assert (=> b!153583 (= e!91971 (= (size!2261 separatorToken!170) (size!2263 (originalCharacters!508 separatorToken!170))))))

(assert (= (and d!36886 res!70236) b!153582))

(assert (= (and b!153582 res!70237) b!153583))

(declare-fun b_lambda!2897 () Bool)

(assert (=> (not b_lambda!2897) (not b!153582)))

(assert (=> b!153582 t!25102))

(declare-fun b_and!9049 () Bool)

(assert (= b_and!9043 (and (=> t!25102 result!7746) b_and!9049)))

(assert (=> b!153582 t!25104))

(declare-fun b_and!9051 () Bool)

(assert (= b_and!9045 (and (=> t!25104 result!7750) b_and!9051)))

(assert (=> b!153582 t!25106))

(declare-fun b_and!9053 () Bool)

(assert (= b_and!9047 (and (=> t!25106 result!7752) b_and!9053)))

(declare-fun m!138625 () Bool)

(assert (=> d!36886 m!138625))

(assert (=> b!153582 m!138557))

(assert (=> b!153582 m!138557))

(declare-fun m!138627 () Bool)

(assert (=> b!153582 m!138627))

(declare-fun m!138629 () Bool)

(assert (=> b!153583 m!138629))

(assert (=> start!16390 d!36886))

(declare-fun d!36888 () Bool)

(declare-fun lt!45087 () Bool)

(declare-fun e!91976 () Bool)

(assert (=> d!36888 (= lt!45087 e!91976)))

(declare-fun res!70245 () Bool)

(assert (=> d!36888 (=> (not res!70245) (not e!91976))))

(declare-datatypes ((tuple2!2594 0))(
  ( (tuple2!2595 (_1!1513 BalanceConc!1514) (_2!1513 BalanceConc!1512)) )
))
(declare-fun lex!171 (LexerInterface!351 List!2677 BalanceConc!1512) tuple2!2594)

(assert (=> d!36888 (= res!70245 (= (list!942 (_1!1513 (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170))))) (list!942 (singletonSeq!29 separatorToken!170))))))

(declare-fun e!91977 () Bool)

(assert (=> d!36888 (= lt!45087 e!91977)))

(declare-fun res!70246 () Bool)

(assert (=> d!36888 (=> (not res!70246) (not e!91977))))

(declare-fun lt!45086 () tuple2!2594)

(declare-fun size!2265 (BalanceConc!1514) Int)

(assert (=> d!36888 (= res!70246 (= (size!2265 (_1!1513 lt!45086)) 1))))

(assert (=> d!36888 (= lt!45086 (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170))))))

(assert (=> d!36888 (not (isEmpty!1056 rules!1920))))

(assert (=> d!36888 (= (rulesProduceIndividualToken!100 thiss!17480 rules!1920 separatorToken!170) lt!45087)))

(declare-fun b!153590 () Bool)

(declare-fun res!70244 () Bool)

(assert (=> b!153590 (=> (not res!70244) (not e!91977))))

(declare-fun apply!352 (BalanceConc!1514 Int) Token!674)

(assert (=> b!153590 (= res!70244 (= (apply!352 (_1!1513 lt!45086) 0) separatorToken!170))))

(declare-fun b!153591 () Bool)

(declare-fun isEmpty!1060 (BalanceConc!1512) Bool)

(assert (=> b!153591 (= e!91977 (isEmpty!1060 (_2!1513 lt!45086)))))

(declare-fun b!153592 () Bool)

(assert (=> b!153592 (= e!91976 (isEmpty!1060 (_2!1513 (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170))))))))

(assert (= (and d!36888 res!70246) b!153590))

(assert (= (and b!153590 res!70244) b!153591))

(assert (= (and d!36888 res!70245) b!153592))

(declare-fun m!138631 () Bool)

(assert (=> d!36888 m!138631))

(assert (=> d!36888 m!138631))

(declare-fun m!138633 () Bool)

(assert (=> d!36888 m!138633))

(assert (=> d!36888 m!138317))

(declare-fun m!138635 () Bool)

(assert (=> d!36888 m!138635))

(assert (=> d!36888 m!138633))

(declare-fun m!138637 () Bool)

(assert (=> d!36888 m!138637))

(declare-fun m!138639 () Bool)

(assert (=> d!36888 m!138639))

(assert (=> d!36888 m!138631))

(declare-fun m!138641 () Bool)

(assert (=> d!36888 m!138641))

(declare-fun m!138643 () Bool)

(assert (=> b!153590 m!138643))

(declare-fun m!138645 () Bool)

(assert (=> b!153591 m!138645))

(assert (=> b!153592 m!138631))

(assert (=> b!153592 m!138631))

(assert (=> b!153592 m!138633))

(assert (=> b!153592 m!138633))

(assert (=> b!153592 m!138637))

(declare-fun m!138647 () Bool)

(assert (=> b!153592 m!138647))

(assert (=> b!153327 d!36888))

(declare-fun d!36890 () Bool)

(assert (=> d!36890 (= (inv!3461 (tag!643 (rule!972 separatorToken!170))) (= (mod (str.len (value!17567 (tag!643 (rule!972 separatorToken!170)))) 2) 0))))

(assert (=> b!153317 d!36890))

(declare-fun d!36892 () Bool)

(declare-fun res!70247 () Bool)

(declare-fun e!91978 () Bool)

(assert (=> d!36892 (=> (not res!70247) (not e!91978))))

(assert (=> d!36892 (= res!70247 (semiInverseModEq!160 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toValue!1104 (transformation!465 (rule!972 separatorToken!170)))))))

(assert (=> d!36892 (= (inv!3464 (transformation!465 (rule!972 separatorToken!170))) e!91978)))

(declare-fun b!153593 () Bool)

(assert (=> b!153593 (= e!91978 (equivClasses!143 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toValue!1104 (transformation!465 (rule!972 separatorToken!170)))))))

(assert (= (and d!36892 res!70247) b!153593))

(declare-fun m!138649 () Bool)

(assert (=> d!36892 m!138649))

(declare-fun m!138651 () Bool)

(assert (=> b!153593 m!138651))

(assert (=> b!153317 d!36892))

(declare-fun d!36894 () Bool)

(assert (=> d!36894 (= (list!939 (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 0)) (list!940 (c!30889 (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 0))))))

(declare-fun bs!14102 () Bool)

(assert (= bs!14102 d!36894))

(declare-fun m!138653 () Bool)

(assert (=> bs!14102 m!138653))

(assert (=> b!153335 d!36894))

(declare-fun bs!14115 () Bool)

(declare-fun d!36896 () Bool)

(assert (= bs!14115 (and d!36896 b!153336)))

(declare-fun lambda!4037 () Int)

(assert (=> bs!14115 (= lambda!4037 lambda!4006)))

(declare-fun bs!14116 () Bool)

(assert (= bs!14116 (and d!36896 d!36820)))

(assert (=> bs!14116 (not (= lambda!4037 lambda!4014))))

(declare-fun bs!14117 () Bool)

(assert (= bs!14117 (and d!36896 b!153528)))

(assert (=> bs!14117 (not (= lambda!4037 lambda!4020))))

(declare-fun bs!14118 () Bool)

(assert (= bs!14118 (and d!36896 d!36870)))

(assert (=> bs!14118 (not (= lambda!4037 lambda!4023))))

(declare-fun bs!14119 () Bool)

(declare-fun b!153666 () Bool)

(assert (= bs!14119 (and b!153666 d!36870)))

(declare-fun lambda!4038 () Int)

(assert (=> bs!14119 (= lambda!4038 lambda!4023)))

(declare-fun bs!14120 () Bool)

(assert (= bs!14120 (and b!153666 d!36896)))

(assert (=> bs!14120 (not (= lambda!4038 lambda!4037))))

(declare-fun bs!14121 () Bool)

(assert (= bs!14121 (and b!153666 b!153336)))

(assert (=> bs!14121 (not (= lambda!4038 lambda!4006))))

(declare-fun bs!14122 () Bool)

(assert (= bs!14122 (and b!153666 b!153528)))

(assert (=> bs!14122 (= lambda!4038 lambda!4020)))

(declare-fun bs!14123 () Bool)

(assert (= bs!14123 (and b!153666 d!36820)))

(assert (=> bs!14123 (= lambda!4038 lambda!4014)))

(declare-fun b!153671 () Bool)

(declare-fun e!92033 () Bool)

(assert (=> b!153671 (= e!92033 true)))

(declare-fun b!153670 () Bool)

(declare-fun e!92032 () Bool)

(assert (=> b!153670 (= e!92032 e!92033)))

(declare-fun b!153669 () Bool)

(declare-fun e!92031 () Bool)

(assert (=> b!153669 (= e!92031 e!92032)))

(assert (=> b!153666 e!92031))

(assert (= b!153670 b!153671))

(assert (= b!153669 b!153670))

(assert (= (and b!153666 ((_ is Cons!2667) rules!1920)) b!153669))

(assert (=> b!153671 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4038))))

(assert (=> b!153671 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4038))))

(assert (=> b!153666 true))

(declare-fun b!153660 () Bool)

(declare-fun e!92026 () BalanceConc!1512)

(declare-fun call!6308 () BalanceConc!1512)

(declare-fun lt!45166 () BalanceConc!1512)

(declare-fun ++!578 (BalanceConc!1512 BalanceConc!1512) BalanceConc!1512)

(assert (=> b!153660 (= e!92026 (++!578 call!6308 lt!45166))))

(declare-fun b!153661 () Bool)

(declare-fun e!92029 () Bool)

(assert (=> b!153661 (= e!92029 (<= 0 (size!2265 lt!45003)))))

(declare-fun bm!6302 () Bool)

(declare-fun c!30969 () Bool)

(declare-fun call!6309 () BalanceConc!1512)

(declare-fun call!6310 () BalanceConc!1512)

(assert (=> bm!6302 (= call!6308 (++!578 call!6309 (ite c!30969 lt!45166 call!6310)))))

(declare-fun call!6311 () Token!674)

(declare-fun bm!6303 () Bool)

(declare-fun call!6307 () Token!674)

(assert (=> bm!6303 (= call!6309 (charsOf!120 (ite c!30969 call!6307 call!6311)))))

(declare-fun b!153662 () Bool)

(declare-fun e!92025 () BalanceConc!1512)

(assert (=> b!153662 (= e!92025 (BalanceConc!1513 Empty!752))))

(declare-fun b!153663 () Bool)

(assert (=> b!153663 (= e!92026 (BalanceConc!1513 Empty!752))))

(assert (=> b!153663 (= (print!96 thiss!17480 (singletonSeq!29 call!6311)) (printTailRec!59 thiss!17480 (singletonSeq!29 call!6311) 0 (BalanceConc!1513 Empty!752)))))

(declare-fun lt!45176 () Unit!2058)

(declare-fun Unit!2064 () Unit!2058)

(assert (=> b!153663 (= lt!45176 Unit!2064)))

(declare-fun lt!45175 () Unit!2058)

(assert (=> b!153663 (= lt!45175 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!18 thiss!17480 rules!1920 (list!939 call!6310) (list!939 lt!45166)))))

(assert (=> b!153663 false))

(declare-fun lt!45167 () Unit!2058)

(declare-fun Unit!2065 () Unit!2058)

(assert (=> b!153663 (= lt!45167 Unit!2065)))

(declare-fun b!153664 () Bool)

(declare-fun e!92028 () Bool)

(declare-datatypes ((tuple2!2598 0))(
  ( (tuple2!2599 (_1!1515 Token!674) (_2!1515 BalanceConc!1512)) )
))
(declare-datatypes ((Option!249 0))(
  ( (None!248) (Some!248 (v!13633 tuple2!2598)) )
))
(declare-fun lt!45169 () Option!249)

(assert (=> b!153664 (= e!92028 (not (= (_1!1515 (v!13633 lt!45169)) call!6307)))))

(declare-fun bm!6304 () Bool)

(declare-fun c!30970 () Bool)

(assert (=> bm!6304 (= call!6310 (charsOf!120 (ite c!30970 separatorToken!170 call!6311)))))

(declare-fun b!153665 () Bool)

(declare-fun e!92030 () Bool)

(assert (=> b!153665 (= e!92030 (= (_1!1515 (v!13633 lt!45169)) (apply!352 lt!45003 0)))))

(declare-fun bm!6305 () Bool)

(assert (=> bm!6305 (= call!6307 (apply!352 lt!45003 0))))

(declare-fun lt!45173 () BalanceConc!1512)

(declare-fun dropList!70 (BalanceConc!1514 Int) List!2678)

(assert (=> d!36896 (= (list!939 lt!45173) (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 (dropList!70 lt!45003 0) separatorToken!170))))

(assert (=> d!36896 (= lt!45173 e!92025)))

(declare-fun c!30971 () Bool)

(assert (=> d!36896 (= c!30971 (>= 0 (size!2265 lt!45003)))))

(declare-fun lt!45170 () Unit!2058)

(declare-fun lemmaContentSubsetPreservesForall!14 (List!2678 List!2678 Int) Unit!2058)

(assert (=> d!36896 (= lt!45170 (lemmaContentSubsetPreservesForall!14 (list!942 lt!45003) (dropList!70 lt!45003 0) lambda!4037))))

(assert (=> d!36896 e!92029))

(declare-fun res!70266 () Bool)

(assert (=> d!36896 (=> (not res!70266) (not e!92029))))

(assert (=> d!36896 (= res!70266 (>= 0 0))))

(assert (=> d!36896 (= (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 0) lt!45173)))

(declare-fun e!92027 () BalanceConc!1512)

(assert (=> b!153666 (= e!92025 e!92027)))

(declare-fun lt!45179 () List!2678)

(assert (=> b!153666 (= lt!45179 (list!942 lt!45003))))

(declare-fun lt!45171 () Unit!2058)

(declare-fun lemmaDropApply!110 (List!2678 Int) Unit!2058)

(assert (=> b!153666 (= lt!45171 (lemmaDropApply!110 lt!45179 0))))

(declare-fun head!584 (List!2678) Token!674)

(declare-fun drop!123 (List!2678 Int) List!2678)

(declare-fun apply!354 (List!2678 Int) Token!674)

(assert (=> b!153666 (= (head!584 (drop!123 lt!45179 0)) (apply!354 lt!45179 0))))

(declare-fun lt!45168 () Unit!2058)

(assert (=> b!153666 (= lt!45168 lt!45171)))

(declare-fun lt!45178 () List!2678)

(assert (=> b!153666 (= lt!45178 (list!942 lt!45003))))

(declare-fun lt!45177 () Unit!2058)

(declare-fun lemmaDropTail!102 (List!2678 Int) Unit!2058)

(assert (=> b!153666 (= lt!45177 (lemmaDropTail!102 lt!45178 0))))

(declare-fun tail!324 (List!2678) List!2678)

(assert (=> b!153666 (= (tail!324 (drop!123 lt!45178 0)) (drop!123 lt!45178 (+ 0 1)))))

(declare-fun lt!45172 () Unit!2058)

(assert (=> b!153666 (= lt!45172 lt!45177)))

(declare-fun lt!45174 () Unit!2058)

(assert (=> b!153666 (= lt!45174 (forallContained!54 (list!942 lt!45003) lambda!4038 (apply!352 lt!45003 0)))))

(assert (=> b!153666 (= lt!45166 (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!70 (LexerInterface!351 List!2677 BalanceConc!1512) Option!249)

(assert (=> b!153666 (= lt!45169 (maxPrefixZipperSequence!70 thiss!17480 rules!1920 (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166)))))

(declare-fun res!70267 () Bool)

(assert (=> b!153666 (= res!70267 ((_ is Some!248) lt!45169))))

(assert (=> b!153666 (=> (not res!70267) (not e!92030))))

(assert (=> b!153666 (= c!30969 e!92030)))

(declare-fun b!153667 () Bool)

(assert (=> b!153667 (= c!30970 e!92028)))

(declare-fun res!70268 () Bool)

(assert (=> b!153667 (=> (not res!70268) (not e!92028))))

(assert (=> b!153667 (= res!70268 ((_ is Some!248) lt!45169))))

(assert (=> b!153667 (= e!92027 e!92026)))

(declare-fun b!153668 () Bool)

(assert (=> b!153668 (= e!92027 call!6308)))

(declare-fun bm!6306 () Bool)

(assert (=> bm!6306 (= call!6311 call!6307)))

(assert (= (and d!36896 res!70266) b!153661))

(assert (= (and d!36896 c!30971) b!153662))

(assert (= (and d!36896 (not c!30971)) b!153666))

(assert (= (and b!153666 res!70267) b!153665))

(assert (= (and b!153666 c!30969) b!153668))

(assert (= (and b!153666 (not c!30969)) b!153667))

(assert (= (and b!153667 res!70268) b!153664))

(assert (= (and b!153667 c!30970) b!153660))

(assert (= (and b!153667 (not c!30970)) b!153663))

(assert (= (or b!153660 b!153663) bm!6306))

(assert (= (or b!153660 b!153663) bm!6304))

(assert (= (or b!153668 b!153664 bm!6306) bm!6305))

(assert (= (or b!153668 b!153660) bm!6303))

(assert (= (or b!153668 b!153660) bm!6302))

(declare-fun m!138741 () Bool)

(assert (=> bm!6303 m!138741))

(declare-fun m!138743 () Bool)

(assert (=> bm!6302 m!138743))

(declare-fun m!138745 () Bool)

(assert (=> b!153665 m!138745))

(declare-fun m!138747 () Bool)

(assert (=> b!153660 m!138747))

(assert (=> bm!6305 m!138745))

(declare-fun m!138749 () Bool)

(assert (=> b!153661 m!138749))

(declare-fun m!138751 () Bool)

(assert (=> b!153663 m!138751))

(declare-fun m!138753 () Bool)

(assert (=> b!153663 m!138753))

(assert (=> b!153663 m!138753))

(declare-fun m!138755 () Bool)

(assert (=> b!153663 m!138755))

(declare-fun m!138757 () Bool)

(assert (=> b!153663 m!138757))

(assert (=> b!153663 m!138753))

(declare-fun m!138759 () Bool)

(assert (=> b!153663 m!138759))

(assert (=> b!153663 m!138757))

(assert (=> b!153663 m!138751))

(declare-fun m!138761 () Bool)

(assert (=> b!153663 m!138761))

(declare-fun m!138763 () Bool)

(assert (=> b!153666 m!138763))

(declare-fun m!138765 () Bool)

(assert (=> b!153666 m!138765))

(declare-fun m!138767 () Bool)

(assert (=> b!153666 m!138767))

(assert (=> b!153666 m!138767))

(declare-fun m!138769 () Bool)

(assert (=> b!153666 m!138769))

(declare-fun m!138771 () Bool)

(assert (=> b!153666 m!138771))

(declare-fun m!138773 () Bool)

(assert (=> b!153666 m!138773))

(declare-fun m!138775 () Bool)

(assert (=> b!153666 m!138775))

(declare-fun m!138777 () Bool)

(assert (=> b!153666 m!138777))

(assert (=> b!153666 m!138765))

(declare-fun m!138779 () Bool)

(assert (=> b!153666 m!138779))

(assert (=> b!153666 m!138745))

(declare-fun m!138781 () Bool)

(assert (=> b!153666 m!138781))

(declare-fun m!138783 () Bool)

(assert (=> b!153666 m!138783))

(assert (=> b!153666 m!138745))

(assert (=> b!153666 m!138763))

(assert (=> b!153666 m!138381))

(assert (=> b!153666 m!138781))

(assert (=> b!153666 m!138381))

(assert (=> b!153666 m!138745))

(declare-fun m!138785 () Bool)

(assert (=> b!153666 m!138785))

(declare-fun m!138787 () Bool)

(assert (=> b!153666 m!138787))

(declare-fun m!138789 () Bool)

(assert (=> d!36896 m!138789))

(declare-fun m!138791 () Bool)

(assert (=> d!36896 m!138791))

(assert (=> d!36896 m!138381))

(assert (=> d!36896 m!138789))

(declare-fun m!138793 () Bool)

(assert (=> d!36896 m!138793))

(assert (=> d!36896 m!138789))

(declare-fun m!138795 () Bool)

(assert (=> d!36896 m!138795))

(assert (=> d!36896 m!138381))

(assert (=> d!36896 m!138749))

(declare-fun m!138797 () Bool)

(assert (=> bm!6304 m!138797))

(assert (=> b!153335 d!36896))

(declare-fun bs!14130 () Bool)

(declare-fun b!153681 () Bool)

(assert (= bs!14130 (and b!153681 d!36870)))

(declare-fun lambda!4042 () Int)

(assert (=> bs!14130 (= lambda!4042 lambda!4023)))

(declare-fun bs!14131 () Bool)

(assert (= bs!14131 (and b!153681 d!36896)))

(assert (=> bs!14131 (not (= lambda!4042 lambda!4037))))

(declare-fun bs!14132 () Bool)

(assert (= bs!14132 (and b!153681 b!153336)))

(assert (=> bs!14132 (not (= lambda!4042 lambda!4006))))

(declare-fun bs!14133 () Bool)

(assert (= bs!14133 (and b!153681 b!153528)))

(assert (=> bs!14133 (= lambda!4042 lambda!4020)))

(declare-fun bs!14134 () Bool)

(assert (= bs!14134 (and b!153681 d!36820)))

(assert (=> bs!14134 (= lambda!4042 lambda!4014)))

(declare-fun bs!14135 () Bool)

(assert (= bs!14135 (and b!153681 b!153666)))

(assert (=> bs!14135 (= lambda!4042 lambda!4038)))

(declare-fun b!153690 () Bool)

(declare-fun e!92045 () Bool)

(assert (=> b!153690 (= e!92045 true)))

(declare-fun b!153689 () Bool)

(declare-fun e!92044 () Bool)

(assert (=> b!153689 (= e!92044 e!92045)))

(declare-fun b!153688 () Bool)

(declare-fun e!92043 () Bool)

(assert (=> b!153688 (= e!92043 e!92044)))

(assert (=> b!153681 e!92043))

(assert (= b!153689 b!153690))

(assert (= b!153688 b!153689))

(assert (= (and b!153681 ((_ is Cons!2667) rules!1920)) b!153688))

(assert (=> b!153690 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4042))))

(assert (=> b!153690 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4042))))

(assert (=> b!153681 true))

(declare-fun bm!6307 () Bool)

(declare-fun c!30975 () Bool)

(declare-fun c!30972 () Bool)

(assert (=> bm!6307 (= c!30975 c!30972)))

(declare-fun e!92038 () List!2676)

(declare-fun lt!45181 () List!2676)

(declare-fun call!6312 () List!2676)

(declare-fun call!6313 () List!2676)

(assert (=> bm!6307 (= call!6313 (++!576 e!92038 (ite c!30972 lt!45181 call!6312)))))

(declare-fun bm!6308 () Bool)

(declare-fun call!6314 () BalanceConc!1512)

(assert (=> bm!6308 (= call!6314 (charsOf!120 (h!8065 tokens!465)))))

(declare-fun b!153678 () Bool)

(declare-fun e!92039 () List!2676)

(assert (=> b!153678 (= e!92039 (++!576 call!6313 lt!45181))))

(declare-fun b!153679 () Bool)

(declare-fun c!30974 () Bool)

(declare-fun lt!45185 () Option!247)

(assert (=> b!153679 (= c!30974 (and ((_ is Some!246) lt!45185) (not (= (_1!1511 (v!13631 lt!45185)) (h!8065 tokens!465)))))))

(declare-fun e!92040 () List!2676)

(assert (=> b!153679 (= e!92040 e!92039)))

(declare-fun b!153680 () Bool)

(declare-fun e!92042 () BalanceConc!1512)

(declare-fun call!6316 () BalanceConc!1512)

(assert (=> b!153680 (= e!92042 call!6316)))

(declare-fun bm!6309 () Bool)

(declare-fun call!6315 () List!2676)

(assert (=> bm!6309 (= call!6312 call!6315)))

(declare-fun c!30973 () Bool)

(assert (=> bm!6309 (= c!30973 c!30974)))

(declare-fun e!92041 () List!2676)

(assert (=> b!153681 (= e!92041 e!92040)))

(declare-fun lt!45183 () Unit!2058)

(assert (=> b!153681 (= lt!45183 (forallContained!54 tokens!465 lambda!4042 (h!8065 tokens!465)))))

(assert (=> b!153681 (= lt!45181 (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 (t!25078 tokens!465) separatorToken!170))))

(assert (=> b!153681 (= lt!45185 (maxPrefix!111 thiss!17480 rules!1920 (++!576 (list!939 (charsOf!120 (h!8065 tokens!465))) lt!45181)))))

(assert (=> b!153681 (= c!30972 (and ((_ is Some!246) lt!45185) (= (_1!1511 (v!13631 lt!45185)) (h!8065 tokens!465))))))

(declare-fun b!153682 () Bool)

(assert (=> b!153682 (= e!92039 Nil!2666)))

(assert (=> b!153682 (= (print!96 thiss!17480 (singletonSeq!29 (h!8065 tokens!465))) (printTailRec!59 thiss!17480 (singletonSeq!29 (h!8065 tokens!465)) 0 (BalanceConc!1513 Empty!752)))))

(declare-fun lt!45182 () Unit!2058)

(declare-fun Unit!2070 () Unit!2058)

(assert (=> b!153682 (= lt!45182 Unit!2070)))

(declare-fun lt!45186 () Unit!2058)

(assert (=> b!153682 (= lt!45186 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!18 thiss!17480 rules!1920 call!6312 lt!45181))))

(assert (=> b!153682 false))

(declare-fun lt!45184 () Unit!2058)

(declare-fun Unit!2071 () Unit!2058)

(assert (=> b!153682 (= lt!45184 Unit!2071)))

(declare-fun b!153683 () Bool)

(assert (=> b!153683 (= e!92038 call!6315)))

(declare-fun b!153684 () Bool)

(assert (=> b!153684 (= e!92040 call!6313)))

(declare-fun b!153685 () Bool)

(assert (=> b!153685 (= e!92042 (charsOf!120 separatorToken!170))))

(declare-fun b!153686 () Bool)

(assert (=> b!153686 (= e!92041 Nil!2666)))

(declare-fun d!36908 () Bool)

(declare-fun c!30976 () Bool)

(assert (=> d!36908 (= c!30976 ((_ is Cons!2668) tokens!465))))

(assert (=> d!36908 (= (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!92041)))

(declare-fun bm!6310 () Bool)

(assert (=> bm!6310 (= call!6315 (list!939 (ite c!30972 call!6314 e!92042)))))

(declare-fun b!153687 () Bool)

(assert (=> b!153687 (= e!92038 (list!939 call!6316))))

(declare-fun bm!6311 () Bool)

(assert (=> bm!6311 (= call!6316 call!6314)))

(assert (= (and d!36908 c!30976) b!153681))

(assert (= (and d!36908 (not c!30976)) b!153686))

(assert (= (and b!153681 c!30972) b!153684))

(assert (= (and b!153681 (not c!30972)) b!153679))

(assert (= (and b!153679 c!30974) b!153678))

(assert (= (and b!153679 (not c!30974)) b!153682))

(assert (= (or b!153678 b!153682) bm!6311))

(assert (= (or b!153678 b!153682) bm!6309))

(assert (= (and bm!6309 c!30973) b!153685))

(assert (= (and bm!6309 (not c!30973)) b!153680))

(assert (= (or b!153684 bm!6311) bm!6308))

(assert (= (or b!153684 bm!6309) bm!6310))

(assert (= (or b!153684 b!153678) bm!6307))

(assert (= (and bm!6307 c!30975) b!153683))

(assert (= (and bm!6307 (not c!30975)) b!153687))

(declare-fun m!138805 () Bool)

(assert (=> bm!6310 m!138805))

(declare-fun m!138807 () Bool)

(assert (=> b!153687 m!138807))

(declare-fun m!138809 () Bool)

(assert (=> b!153678 m!138809))

(declare-fun m!138811 () Bool)

(assert (=> bm!6307 m!138811))

(assert (=> bm!6308 m!138301))

(assert (=> b!153685 m!138295))

(assert (=> b!153681 m!138301))

(assert (=> b!153681 m!138303))

(assert (=> b!153681 m!138289))

(assert (=> b!153681 m!138303))

(declare-fun m!138813 () Bool)

(assert (=> b!153681 m!138813))

(assert (=> b!153681 m!138301))

(declare-fun m!138815 () Bool)

(assert (=> b!153681 m!138815))

(assert (=> b!153681 m!138813))

(declare-fun m!138817 () Bool)

(assert (=> b!153681 m!138817))

(declare-fun m!138819 () Bool)

(assert (=> b!153682 m!138819))

(assert (=> b!153682 m!138819))

(declare-fun m!138821 () Bool)

(assert (=> b!153682 m!138821))

(assert (=> b!153682 m!138819))

(declare-fun m!138823 () Bool)

(assert (=> b!153682 m!138823))

(declare-fun m!138825 () Bool)

(assert (=> b!153682 m!138825))

(assert (=> b!153335 d!36908))

(declare-fun d!36912 () Bool)

(declare-fun res!70274 () Bool)

(declare-fun e!92050 () Bool)

(assert (=> d!36912 (=> res!70274 e!92050)))

(assert (=> d!36912 (= res!70274 ((_ is Nil!2668) tokens!465))))

(assert (=> d!36912 (= (forall!461 tokens!465 lambda!4006) e!92050)))

(declare-fun b!153695 () Bool)

(declare-fun e!92051 () Bool)

(assert (=> b!153695 (= e!92050 e!92051)))

(declare-fun res!70275 () Bool)

(assert (=> b!153695 (=> (not res!70275) (not e!92051))))

(declare-fun dynLambda!939 (Int Token!674) Bool)

(assert (=> b!153695 (= res!70275 (dynLambda!939 lambda!4006 (h!8065 tokens!465)))))

(declare-fun b!153696 () Bool)

(assert (=> b!153696 (= e!92051 (forall!461 (t!25078 tokens!465) lambda!4006))))

(assert (= (and d!36912 (not res!70274)) b!153695))

(assert (= (and b!153695 res!70275) b!153696))

(declare-fun b_lambda!2899 () Bool)

(assert (=> (not b_lambda!2899) (not b!153695)))

(declare-fun m!138829 () Bool)

(assert (=> b!153695 m!138829))

(declare-fun m!138831 () Bool)

(assert (=> b!153696 m!138831))

(assert (=> b!153336 d!36912))

(declare-fun d!36916 () Bool)

(declare-fun res!70288 () Bool)

(declare-fun e!92066 () Bool)

(assert (=> d!36916 (=> res!70288 e!92066)))

(assert (=> d!36916 (= res!70288 (not ((_ is Cons!2667) rules!1920)))))

(assert (=> d!36916 (= (sepAndNonSepRulesDisjointChars!54 rules!1920 rules!1920) e!92066)))

(declare-fun b!153714 () Bool)

(declare-fun e!92067 () Bool)

(assert (=> b!153714 (= e!92066 e!92067)))

(declare-fun res!70289 () Bool)

(assert (=> b!153714 (=> (not res!70289) (not e!92067))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!19 (Rule!730 List!2677) Bool)

(assert (=> b!153714 (= res!70289 (ruleDisjointCharsFromAllFromOtherType!19 (h!8064 rules!1920) rules!1920))))

(declare-fun b!153715 () Bool)

(assert (=> b!153715 (= e!92067 (sepAndNonSepRulesDisjointChars!54 rules!1920 (t!25077 rules!1920)))))

(assert (= (and d!36916 (not res!70288)) b!153714))

(assert (= (and b!153714 res!70289) b!153715))

(declare-fun m!138843 () Bool)

(assert (=> b!153714 m!138843))

(declare-fun m!138845 () Bool)

(assert (=> b!153715 m!138845))

(assert (=> b!153325 d!36916))

(declare-fun b!153746 () Bool)

(declare-fun e!92076 () Bool)

(declare-fun tp!79574 () Bool)

(declare-fun tp!79576 () Bool)

(assert (=> b!153746 (= e!92076 (and tp!79574 tp!79576))))

(assert (=> b!153334 (= tp!79527 e!92076)))

(declare-fun b!153747 () Bool)

(declare-fun tp!79575 () Bool)

(assert (=> b!153747 (= e!92076 tp!79575)))

(declare-fun b!153748 () Bool)

(declare-fun tp!79573 () Bool)

(declare-fun tp!79577 () Bool)

(assert (=> b!153748 (= e!92076 (and tp!79573 tp!79577))))

(declare-fun b!153745 () Bool)

(declare-fun tp_is_empty!1619 () Bool)

(assert (=> b!153745 (= e!92076 tp_is_empty!1619)))

(assert (= (and b!153334 ((_ is ElementMatch!689) (regex!465 (h!8064 rules!1920)))) b!153745))

(assert (= (and b!153334 ((_ is Concat!1177) (regex!465 (h!8064 rules!1920)))) b!153746))

(assert (= (and b!153334 ((_ is Star!689) (regex!465 (h!8064 rules!1920)))) b!153747))

(assert (= (and b!153334 ((_ is Union!689) (regex!465 (h!8064 rules!1920)))) b!153748))

(declare-fun b!153752 () Bool)

(declare-fun e!92081 () Bool)

(declare-fun tp!79579 () Bool)

(declare-fun tp!79581 () Bool)

(assert (=> b!153752 (= e!92081 (and tp!79579 tp!79581))))

(assert (=> b!153333 (= tp!79530 e!92081)))

(declare-fun b!153753 () Bool)

(declare-fun tp!79580 () Bool)

(assert (=> b!153753 (= e!92081 tp!79580)))

(declare-fun b!153754 () Bool)

(declare-fun tp!79578 () Bool)

(declare-fun tp!79582 () Bool)

(assert (=> b!153754 (= e!92081 (and tp!79578 tp!79582))))

(declare-fun b!153751 () Bool)

(assert (=> b!153751 (= e!92081 tp_is_empty!1619)))

(assert (= (and b!153333 ((_ is ElementMatch!689) (regex!465 (rule!972 (h!8065 tokens!465))))) b!153751))

(assert (= (and b!153333 ((_ is Concat!1177) (regex!465 (rule!972 (h!8065 tokens!465))))) b!153752))

(assert (= (and b!153333 ((_ is Star!689) (regex!465 (rule!972 (h!8065 tokens!465))))) b!153753))

(assert (= (and b!153333 ((_ is Union!689) (regex!465 (rule!972 (h!8065 tokens!465))))) b!153754))

(declare-fun b!153769 () Bool)

(declare-fun b_free!5669 () Bool)

(declare-fun b_next!5669 () Bool)

(assert (=> b!153769 (= b_free!5669 (not b_next!5669))))

(declare-fun tp!79601 () Bool)

(declare-fun b_and!9061 () Bool)

(assert (=> b!153769 (= tp!79601 b_and!9061)))

(declare-fun b_free!5671 () Bool)

(declare-fun b_next!5671 () Bool)

(assert (=> b!153769 (= b_free!5671 (not b_next!5671))))

(declare-fun tb!5277 () Bool)

(declare-fun t!25130 () Bool)

(assert (=> (and b!153769 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 separatorToken!170)))) t!25130) tb!5277))

(declare-fun result!7770 () Bool)

(assert (= result!7770 result!7746))

(assert (=> d!36864 t!25130))

(declare-fun tb!5279 () Bool)

(declare-fun t!25132 () Bool)

(assert (=> (and b!153769 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465))))) t!25132) tb!5279))

(declare-fun result!7772 () Bool)

(assert (= result!7772 result!7754))

(assert (=> d!36868 t!25132))

(assert (=> b!153580 t!25132))

(assert (=> b!153582 t!25130))

(declare-fun tp!79604 () Bool)

(declare-fun b_and!9063 () Bool)

(assert (=> b!153769 (= tp!79604 (and (=> t!25130 result!7770) (=> t!25132 result!7772) b_and!9063))))

(declare-fun e!92096 () Bool)

(assert (=> b!153769 (= e!92096 (and tp!79601 tp!79604))))

(declare-fun b!153768 () Bool)

(declare-fun e!92098 () Bool)

(declare-fun tp!79602 () Bool)

(assert (=> b!153768 (= e!92098 (and tp!79602 (inv!3461 (tag!643 (h!8064 (t!25077 rules!1920)))) (inv!3464 (transformation!465 (h!8064 (t!25077 rules!1920)))) e!92096))))

(declare-fun b!153767 () Bool)

(declare-fun e!92099 () Bool)

(declare-fun tp!79603 () Bool)

(assert (=> b!153767 (= e!92099 (and e!92098 tp!79603))))

(assert (=> b!153332 (= tp!79525 e!92099)))

(assert (= b!153768 b!153769))

(assert (= b!153767 b!153768))

(assert (= (and b!153332 ((_ is Cons!2667) (t!25077 rules!1920))) b!153767))

(declare-fun m!138847 () Bool)

(assert (=> b!153768 m!138847))

(declare-fun m!138849 () Bool)

(assert (=> b!153768 m!138849))

(declare-fun b!153778 () Bool)

(declare-fun e!92108 () Bool)

(declare-fun tp!79612 () Bool)

(assert (=> b!153778 (= e!92108 (and tp_is_empty!1619 tp!79612))))

(assert (=> b!153321 (= tp!79534 e!92108)))

(assert (= (and b!153321 ((_ is Cons!2666) (originalCharacters!508 separatorToken!170))) b!153778))

(declare-fun b!153783 () Bool)

(declare-fun e!92110 () Bool)

(declare-fun tp!79618 () Bool)

(assert (=> b!153783 (= e!92110 (and tp_is_empty!1619 tp!79618))))

(assert (=> b!153319 (= tp!79526 e!92110)))

(assert (= (and b!153319 ((_ is Cons!2666) (originalCharacters!508 (h!8065 tokens!465)))) b!153783))

(declare-fun b!153812 () Bool)

(declare-fun b_free!5681 () Bool)

(declare-fun b_next!5681 () Bool)

(assert (=> b!153812 (= b_free!5681 (not b_next!5681))))

(declare-fun tp!79647 () Bool)

(declare-fun b_and!9073 () Bool)

(assert (=> b!153812 (= tp!79647 b_and!9073)))

(declare-fun b_free!5683 () Bool)

(declare-fun b_next!5683 () Bool)

(assert (=> b!153812 (= b_free!5683 (not b_next!5683))))

(declare-fun tb!5289 () Bool)

(declare-fun t!25142 () Bool)

(assert (=> (and b!153812 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toChars!963 (transformation!465 (rule!972 separatorToken!170)))) t!25142) tb!5289))

(declare-fun result!7788 () Bool)

(assert (= result!7788 result!7746))

(assert (=> d!36864 t!25142))

(declare-fun t!25144 () Bool)

(declare-fun tb!5291 () Bool)

(assert (=> (and b!153812 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465))))) t!25144) tb!5291))

(declare-fun result!7790 () Bool)

(assert (= result!7790 result!7754))

(assert (=> d!36868 t!25144))

(assert (=> b!153580 t!25144))

(assert (=> b!153582 t!25142))

(declare-fun b_and!9075 () Bool)

(declare-fun tp!79648 () Bool)

(assert (=> b!153812 (= tp!79648 (and (=> t!25142 result!7788) (=> t!25144 result!7790) b_and!9075))))

(declare-fun tp!79649 () Bool)

(declare-fun b!153811 () Bool)

(declare-fun e!92141 () Bool)

(declare-fun e!92138 () Bool)

(assert (=> b!153811 (= e!92141 (and tp!79649 (inv!3461 (tag!643 (rule!972 (h!8065 (t!25078 tokens!465))))) (inv!3464 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) e!92138))))

(declare-fun tp!79646 () Bool)

(declare-fun e!92140 () Bool)

(declare-fun b!153810 () Bool)

(assert (=> b!153810 (= e!92140 (and (inv!21 (value!17568 (h!8065 (t!25078 tokens!465)))) e!92141 tp!79646))))

(declare-fun tp!79650 () Bool)

(declare-fun e!92137 () Bool)

(declare-fun b!153809 () Bool)

(assert (=> b!153809 (= e!92137 (and (inv!3465 (h!8065 (t!25078 tokens!465))) e!92140 tp!79650))))

(assert (=> b!153812 (= e!92138 (and tp!79647 tp!79648))))

(assert (=> b!153329 (= tp!79535 e!92137)))

(assert (= b!153811 b!153812))

(assert (= b!153810 b!153811))

(assert (= b!153809 b!153810))

(assert (= (and b!153329 ((_ is Cons!2668) (t!25078 tokens!465))) b!153809))

(declare-fun m!138863 () Bool)

(assert (=> b!153811 m!138863))

(declare-fun m!138865 () Bool)

(assert (=> b!153811 m!138865))

(declare-fun m!138867 () Bool)

(assert (=> b!153810 m!138867))

(declare-fun m!138869 () Bool)

(assert (=> b!153809 m!138869))

(declare-fun b!153814 () Bool)

(declare-fun e!92142 () Bool)

(declare-fun tp!79652 () Bool)

(declare-fun tp!79654 () Bool)

(assert (=> b!153814 (= e!92142 (and tp!79652 tp!79654))))

(assert (=> b!153317 (= tp!79532 e!92142)))

(declare-fun b!153815 () Bool)

(declare-fun tp!79653 () Bool)

(assert (=> b!153815 (= e!92142 tp!79653)))

(declare-fun b!153816 () Bool)

(declare-fun tp!79651 () Bool)

(declare-fun tp!79655 () Bool)

(assert (=> b!153816 (= e!92142 (and tp!79651 tp!79655))))

(declare-fun b!153813 () Bool)

(assert (=> b!153813 (= e!92142 tp_is_empty!1619)))

(assert (= (and b!153317 ((_ is ElementMatch!689) (regex!465 (rule!972 separatorToken!170)))) b!153813))

(assert (= (and b!153317 ((_ is Concat!1177) (regex!465 (rule!972 separatorToken!170)))) b!153814))

(assert (= (and b!153317 ((_ is Star!689) (regex!465 (rule!972 separatorToken!170)))) b!153815))

(assert (= (and b!153317 ((_ is Union!689) (regex!465 (rule!972 separatorToken!170)))) b!153816))

(declare-fun b_lambda!2913 () Bool)

(assert (= b_lambda!2895 (or (and b!153316 b_free!5667 (= (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))))) (and b!153769 b_free!5671 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))))) (and b!153328 b_free!5663) (and b!153322 b_free!5659 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))))) (and b!153812 b_free!5683 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))))) b_lambda!2913)))

(declare-fun b_lambda!2915 () Bool)

(assert (= b_lambda!2891 (or (and b!153328 b_free!5663 (= (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toChars!963 (transformation!465 (rule!972 separatorToken!170))))) (and b!153769 b_free!5671 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 separatorToken!170))))) (and b!153316 b_free!5667) (and b!153812 b_free!5683 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toChars!963 (transformation!465 (rule!972 separatorToken!170))))) (and b!153322 b_free!5659 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 separatorToken!170))))) b_lambda!2915)))

(declare-fun b_lambda!2917 () Bool)

(assert (= b_lambda!2897 (or (and b!153328 b_free!5663 (= (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toChars!963 (transformation!465 (rule!972 separatorToken!170))))) (and b!153769 b_free!5671 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 separatorToken!170))))) (and b!153316 b_free!5667) (and b!153812 b_free!5683 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toChars!963 (transformation!465 (rule!972 separatorToken!170))))) (and b!153322 b_free!5659 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 separatorToken!170))))) b_lambda!2917)))

(declare-fun b_lambda!2919 () Bool)

(assert (= b_lambda!2899 (or b!153336 b_lambda!2919)))

(declare-fun bs!14138 () Bool)

(declare-fun d!36922 () Bool)

(assert (= bs!14138 (and d!36922 b!153336)))

(assert (=> bs!14138 (= (dynLambda!939 lambda!4006 (h!8065 tokens!465)) (not (isSeparator!465 (rule!972 (h!8065 tokens!465)))))))

(assert (=> b!153695 d!36922))

(declare-fun b_lambda!2921 () Bool)

(assert (= b_lambda!2893 (or (and b!153316 b_free!5667 (= (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))))) (and b!153769 b_free!5671 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))))) (and b!153328 b_free!5663) (and b!153322 b_free!5659 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))))) (and b!153812 b_free!5683 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))))) b_lambda!2921)))

(check-sat (not b!153429) (not b_next!5659) (not bm!6305) (not b!153746) b_and!9061 (not b!153542) (not b_lambda!2919) (not b!153767) (not b!153529) (not b!153412) tp_is_empty!1619 (not b!153688) (not b!153581) (not d!36818) (not b!153811) (not b_next!5681) (not bm!6267) (not bm!6304) (not d!36888) (not bm!6307) (not bm!6270) (not b!153714) (not bm!6310) (not b!153446) (not d!36868) (not b!153562) b_and!9009 (not b!153663) (not d!36826) (not b!153571) (not b!153451) (not b!153685) (not b!153696) (not b!153816) (not b!153669) (not b_lambda!2915) (not b!153583) (not b!153815) (not b!153593) (not b!153591) (not b!153678) b_and!9051 (not d!36836) (not b!153570) (not b!153752) (not b!153535) (not d!36878) (not b!153436) (not d!36886) b_and!9001 (not b!153748) b_and!9049 (not b!153580) (not b!153783) (not b_lambda!2921) b_and!9075 (not b!153687) (not b!153435) (not d!36838) (not b!153534) (not b!153809) (not b!153753) (not b!153450) (not b!153543) (not tb!5265) (not b!153661) (not b!153371) (not d!36870) (not b_next!5667) (not d!36866) (not b!153754) (not d!36884) (not b_next!5657) (not b!153778) (not b!153431) (not b!153528) (not b!153561) (not b!153582) (not b!153590) (not d!36882) (not b!153575) (not b_lambda!2917) (not b!153665) (not d!36820) (not b!153567) (not d!36804) (not b!153560) (not b_next!5671) (not b!153810) (not b!153768) (not b!153447) (not bm!6302) (not b!153430) (not d!36810) (not d!36896) (not b!153666) (not d!36834) (not b_next!5683) (not b_next!5663) (not b!153747) (not b!153525) (not d!36880) (not b!153394) (not d!36840) (not b!153592) (not b_next!5661) (not d!36864) b_and!9005 (not b!153434) (not bm!6308) (not b_lambda!2913) (not d!36814) (not bm!6303) (not bm!6268) (not tb!5271) (not d!36894) (not b!153681) (not b_next!5669) (not b!153368) (not b_next!5665) (not b!153660) (not b!153814) b_and!9073 (not b!153682) b_and!9063 b_and!9053 (not b!153715) (not d!36892) (not b!153532) (not b!153566))
(check-sat b_and!9061 (not b_next!5681) b_and!9009 b_and!9051 b_and!9075 (not b_next!5667) (not b_next!5657) (not b_next!5671) (not b_next!5669) (not b_next!5659) b_and!9001 b_and!9049 (not b_next!5683) (not b_next!5663) (not b_next!5661) b_and!9005 (not b_next!5665) b_and!9073 b_and!9063 b_and!9053)
(get-model)

(declare-fun d!36924 () Bool)

(declare-fun lt!45188 () Bool)

(declare-fun e!92143 () Bool)

(assert (=> d!36924 (= lt!45188 e!92143)))

(declare-fun res!70296 () Bool)

(assert (=> d!36924 (=> (not res!70296) (not e!92143))))

(assert (=> d!36924 (= res!70296 (= (list!942 (_1!1513 (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 (h!8065 (t!25078 tokens!465))))))) (list!942 (singletonSeq!29 (h!8065 (t!25078 tokens!465))))))))

(declare-fun e!92144 () Bool)

(assert (=> d!36924 (= lt!45188 e!92144)))

(declare-fun res!70297 () Bool)

(assert (=> d!36924 (=> (not res!70297) (not e!92144))))

(declare-fun lt!45187 () tuple2!2594)

(assert (=> d!36924 (= res!70297 (= (size!2265 (_1!1513 lt!45187)) 1))))

(assert (=> d!36924 (= lt!45187 (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 (h!8065 (t!25078 tokens!465))))))))

(assert (=> d!36924 (not (isEmpty!1056 rules!1920))))

(assert (=> d!36924 (= (rulesProduceIndividualToken!100 thiss!17480 rules!1920 (h!8065 (t!25078 tokens!465))) lt!45188)))

(declare-fun b!153817 () Bool)

(declare-fun res!70295 () Bool)

(assert (=> b!153817 (=> (not res!70295) (not e!92144))))

(assert (=> b!153817 (= res!70295 (= (apply!352 (_1!1513 lt!45187) 0) (h!8065 (t!25078 tokens!465))))))

(declare-fun b!153818 () Bool)

(assert (=> b!153818 (= e!92144 (isEmpty!1060 (_2!1513 lt!45187)))))

(declare-fun b!153819 () Bool)

(assert (=> b!153819 (= e!92143 (isEmpty!1060 (_2!1513 (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 (h!8065 (t!25078 tokens!465))))))))))

(assert (= (and d!36924 res!70297) b!153817))

(assert (= (and b!153817 res!70295) b!153818))

(assert (= (and d!36924 res!70296) b!153819))

(assert (=> d!36924 m!138543))

(assert (=> d!36924 m!138543))

(assert (=> d!36924 m!138545))

(assert (=> d!36924 m!138317))

(declare-fun m!138871 () Bool)

(assert (=> d!36924 m!138871))

(assert (=> d!36924 m!138545))

(declare-fun m!138873 () Bool)

(assert (=> d!36924 m!138873))

(declare-fun m!138875 () Bool)

(assert (=> d!36924 m!138875))

(assert (=> d!36924 m!138543))

(declare-fun m!138877 () Bool)

(assert (=> d!36924 m!138877))

(declare-fun m!138879 () Bool)

(assert (=> b!153817 m!138879))

(declare-fun m!138881 () Bool)

(assert (=> b!153818 m!138881))

(assert (=> b!153819 m!138543))

(assert (=> b!153819 m!138543))

(assert (=> b!153819 m!138545))

(assert (=> b!153819 m!138545))

(assert (=> b!153819 m!138873))

(declare-fun m!138883 () Bool)

(assert (=> b!153819 m!138883))

(assert (=> b!153560 d!36924))

(declare-fun d!36926 () Bool)

(assert (=> d!36926 true))

(declare-fun lambda!4045 () Int)

(declare-fun order!1339 () Int)

(declare-fun dynLambda!940 (Int Int) Int)

(assert (=> d!36926 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!940 order!1339 lambda!4045))))

(declare-fun Forall2!99 (Int) Bool)

(assert (=> d!36926 (= (equivClasses!143 (toChars!963 (transformation!465 (h!8064 rules!1920))) (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (Forall2!99 lambda!4045))))

(declare-fun bs!14139 () Bool)

(assert (= bs!14139 d!36926))

(declare-fun m!138885 () Bool)

(assert (=> bs!14139 m!138885))

(assert (=> b!153368 d!36926))

(declare-fun d!36928 () Bool)

(declare-fun c!30979 () Bool)

(assert (=> d!36928 (= c!30979 ((_ is Nil!2666) lt!45019))))

(declare-fun e!92149 () (InoxSet C!2300))

(assert (=> d!36928 (= (content!369 lt!45019) e!92149)))

(declare-fun b!153828 () Bool)

(assert (=> b!153828 (= e!92149 ((as const (Array C!2300 Bool)) false))))

(declare-fun b!153829 () Bool)

(assert (=> b!153829 (= e!92149 ((_ map or) (store ((as const (Array C!2300 Bool)) false) (h!8063 lt!45019) true) (content!369 (t!25076 lt!45019))))))

(assert (= (and d!36928 c!30979) b!153828))

(assert (= (and d!36928 (not c!30979)) b!153829))

(declare-fun m!138887 () Bool)

(assert (=> b!153829 m!138887))

(declare-fun m!138889 () Bool)

(assert (=> b!153829 m!138889))

(assert (=> d!36834 d!36928))

(declare-fun d!36930 () Bool)

(declare-fun c!30980 () Bool)

(assert (=> d!36930 (= c!30980 ((_ is Nil!2666) (++!576 lt!45002 lt!45001)))))

(declare-fun e!92150 () (InoxSet C!2300))

(assert (=> d!36930 (= (content!369 (++!576 lt!45002 lt!45001)) e!92150)))

(declare-fun b!153830 () Bool)

(assert (=> b!153830 (= e!92150 ((as const (Array C!2300 Bool)) false))))

(declare-fun b!153831 () Bool)

(assert (=> b!153831 (= e!92150 ((_ map or) (store ((as const (Array C!2300 Bool)) false) (h!8063 (++!576 lt!45002 lt!45001)) true) (content!369 (t!25076 (++!576 lt!45002 lt!45001)))))))

(assert (= (and d!36930 c!30980) b!153830))

(assert (= (and d!36930 (not c!30980)) b!153831))

(declare-fun m!138891 () Bool)

(assert (=> b!153831 m!138891))

(declare-fun m!138893 () Bool)

(assert (=> b!153831 m!138893))

(assert (=> d!36834 d!36930))

(declare-fun d!36932 () Bool)

(declare-fun c!30981 () Bool)

(assert (=> d!36932 (= c!30981 ((_ is Nil!2666) lt!44998))))

(declare-fun e!92151 () (InoxSet C!2300))

(assert (=> d!36932 (= (content!369 lt!44998) e!92151)))

(declare-fun b!153832 () Bool)

(assert (=> b!153832 (= e!92151 ((as const (Array C!2300 Bool)) false))))

(declare-fun b!153833 () Bool)

(assert (=> b!153833 (= e!92151 ((_ map or) (store ((as const (Array C!2300 Bool)) false) (h!8063 lt!44998) true) (content!369 (t!25076 lt!44998))))))

(assert (= (and d!36932 c!30981) b!153832))

(assert (= (and d!36932 (not c!30981)) b!153833))

(declare-fun m!138895 () Bool)

(assert (=> b!153833 m!138895))

(declare-fun m!138897 () Bool)

(assert (=> b!153833 m!138897))

(assert (=> d!36834 d!36932))

(declare-fun d!36934 () Bool)

(assert (=> d!36934 (= (list!939 lt!45069) (list!940 (c!30889 lt!45069)))))

(declare-fun bs!14140 () Bool)

(assert (= bs!14140 d!36934))

(declare-fun m!138899 () Bool)

(assert (=> bs!14140 m!138899))

(assert (=> d!36864 d!36934))

(declare-fun bs!14141 () Bool)

(declare-fun d!36936 () Bool)

(assert (= bs!14141 (and d!36936 d!36926)))

(declare-fun lambda!4046 () Int)

(assert (=> bs!14141 (= (= (toValue!1104 (transformation!465 (rule!972 separatorToken!170))) (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (= lambda!4046 lambda!4045))))

(assert (=> d!36936 true))

(assert (=> d!36936 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (rule!972 separatorToken!170)))) (dynLambda!940 order!1339 lambda!4046))))

(assert (=> d!36936 (= (equivClasses!143 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toValue!1104 (transformation!465 (rule!972 separatorToken!170)))) (Forall2!99 lambda!4046))))

(declare-fun bs!14142 () Bool)

(assert (= bs!14142 d!36936))

(declare-fun m!138901 () Bool)

(assert (=> bs!14142 m!138901))

(assert (=> b!153593 d!36936))

(declare-fun d!36938 () Bool)

(declare-fun lt!45191 () Bool)

(assert (=> d!36938 (= lt!45191 (isEmpty!1058 (list!939 (_2!1513 (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170)))))))))

(declare-fun isEmpty!1061 (Conc!752) Bool)

(assert (=> d!36938 (= lt!45191 (isEmpty!1061 (c!30889 (_2!1513 (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170)))))))))

(assert (=> d!36938 (= (isEmpty!1060 (_2!1513 (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170))))) lt!45191)))

(declare-fun bs!14143 () Bool)

(assert (= bs!14143 d!36938))

(declare-fun m!138903 () Bool)

(assert (=> bs!14143 m!138903))

(assert (=> bs!14143 m!138903))

(declare-fun m!138905 () Bool)

(assert (=> bs!14143 m!138905))

(declare-fun m!138907 () Bool)

(assert (=> bs!14143 m!138907))

(assert (=> b!153592 d!36938))

(declare-fun e!92158 () Bool)

(declare-fun lt!45194 () tuple2!2594)

(declare-fun b!153844 () Bool)

(assert (=> b!153844 (= e!92158 (= (_2!1513 lt!45194) (print!96 thiss!17480 (singletonSeq!29 separatorToken!170))))))

(declare-fun e!92160 () Bool)

(declare-fun b!153845 () Bool)

(declare-datatypes ((tuple2!2600 0))(
  ( (tuple2!2601 (_1!1516 List!2678) (_2!1516 List!2676)) )
))
(declare-fun lexList!96 (LexerInterface!351 List!2677 List!2676) tuple2!2600)

(assert (=> b!153845 (= e!92160 (= (list!939 (_2!1513 lt!45194)) (_2!1516 (lexList!96 thiss!17480 rules!1920 (list!939 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170)))))))))

(declare-fun b!153846 () Bool)

(declare-fun e!92159 () Bool)

(assert (=> b!153846 (= e!92158 e!92159)))

(declare-fun res!70308 () Bool)

(declare-fun size!2266 (BalanceConc!1512) Int)

(assert (=> b!153846 (= res!70308 (< (size!2266 (_2!1513 lt!45194)) (size!2266 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170)))))))

(assert (=> b!153846 (=> (not res!70308) (not e!92159))))

(declare-fun b!153848 () Bool)

(declare-fun res!70307 () Bool)

(assert (=> b!153848 (=> (not res!70307) (not e!92160))))

(assert (=> b!153848 (= res!70307 (= (list!942 (_1!1513 lt!45194)) (_1!1516 (lexList!96 thiss!17480 rules!1920 (list!939 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170)))))))))

(declare-fun b!153847 () Bool)

(declare-fun isEmpty!1062 (BalanceConc!1514) Bool)

(assert (=> b!153847 (= e!92159 (not (isEmpty!1062 (_1!1513 lt!45194))))))

(declare-fun d!36940 () Bool)

(assert (=> d!36940 e!92160))

(declare-fun res!70306 () Bool)

(assert (=> d!36940 (=> (not res!70306) (not e!92160))))

(assert (=> d!36940 (= res!70306 e!92158)))

(declare-fun c!30984 () Bool)

(assert (=> d!36940 (= c!30984 (> (size!2265 (_1!1513 lt!45194)) 0))))

(declare-fun lexTailRecV2!83 (LexerInterface!351 List!2677 BalanceConc!1512 BalanceConc!1512 BalanceConc!1512 BalanceConc!1514) tuple2!2594)

(assert (=> d!36940 (= lt!45194 (lexTailRecV2!83 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170)) (BalanceConc!1513 Empty!752) (print!96 thiss!17480 (singletonSeq!29 separatorToken!170)) (BalanceConc!1515 Empty!753)))))

(assert (=> d!36940 (= (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170))) lt!45194)))

(assert (= (and d!36940 c!30984) b!153846))

(assert (= (and d!36940 (not c!30984)) b!153844))

(assert (= (and b!153846 res!70308) b!153847))

(assert (= (and d!36940 res!70306) b!153848))

(assert (= (and b!153848 res!70307) b!153845))

(declare-fun m!138909 () Bool)

(assert (=> b!153847 m!138909))

(declare-fun m!138911 () Bool)

(assert (=> d!36940 m!138911))

(assert (=> d!36940 m!138633))

(assert (=> d!36940 m!138633))

(declare-fun m!138913 () Bool)

(assert (=> d!36940 m!138913))

(declare-fun m!138915 () Bool)

(assert (=> b!153846 m!138915))

(assert (=> b!153846 m!138633))

(declare-fun m!138917 () Bool)

(assert (=> b!153846 m!138917))

(declare-fun m!138919 () Bool)

(assert (=> b!153848 m!138919))

(assert (=> b!153848 m!138633))

(declare-fun m!138921 () Bool)

(assert (=> b!153848 m!138921))

(assert (=> b!153848 m!138921))

(declare-fun m!138923 () Bool)

(assert (=> b!153848 m!138923))

(declare-fun m!138925 () Bool)

(assert (=> b!153845 m!138925))

(assert (=> b!153845 m!138633))

(assert (=> b!153845 m!138921))

(assert (=> b!153845 m!138921))

(assert (=> b!153845 m!138923))

(assert (=> b!153592 d!36940))

(declare-fun d!36942 () Bool)

(declare-fun lt!45197 () BalanceConc!1512)

(declare-fun printList!52 (LexerInterface!351 List!2678) List!2676)

(assert (=> d!36942 (= (list!939 lt!45197) (printList!52 thiss!17480 (list!942 (singletonSeq!29 separatorToken!170))))))

(assert (=> d!36942 (= lt!45197 (printTailRec!59 thiss!17480 (singletonSeq!29 separatorToken!170) 0 (BalanceConc!1513 Empty!752)))))

(assert (=> d!36942 (= (print!96 thiss!17480 (singletonSeq!29 separatorToken!170)) lt!45197)))

(declare-fun bs!14144 () Bool)

(assert (= bs!14144 d!36942))

(declare-fun m!138927 () Bool)

(assert (=> bs!14144 m!138927))

(assert (=> bs!14144 m!138631))

(assert (=> bs!14144 m!138641))

(assert (=> bs!14144 m!138641))

(declare-fun m!138929 () Bool)

(assert (=> bs!14144 m!138929))

(assert (=> bs!14144 m!138631))

(declare-fun m!138931 () Bool)

(assert (=> bs!14144 m!138931))

(assert (=> b!153592 d!36942))

(declare-fun d!36944 () Bool)

(declare-fun e!92163 () Bool)

(assert (=> d!36944 e!92163))

(declare-fun res!70311 () Bool)

(assert (=> d!36944 (=> (not res!70311) (not e!92163))))

(declare-fun lt!45200 () BalanceConc!1514)

(assert (=> d!36944 (= res!70311 (= (list!942 lt!45200) (Cons!2668 separatorToken!170 Nil!2668)))))

(declare-fun singleton!20 (Token!674) BalanceConc!1514)

(assert (=> d!36944 (= lt!45200 (singleton!20 separatorToken!170))))

(assert (=> d!36944 (= (singletonSeq!29 separatorToken!170) lt!45200)))

(declare-fun b!153851 () Bool)

(declare-fun isBalanced!209 (Conc!753) Bool)

(assert (=> b!153851 (= e!92163 (isBalanced!209 (c!30891 lt!45200)))))

(assert (= (and d!36944 res!70311) b!153851))

(declare-fun m!138933 () Bool)

(assert (=> d!36944 m!138933))

(declare-fun m!138935 () Bool)

(assert (=> d!36944 m!138935))

(declare-fun m!138937 () Bool)

(assert (=> b!153851 m!138937))

(assert (=> b!153592 d!36944))

(declare-fun b!153853 () Bool)

(declare-fun e!92165 () List!2676)

(assert (=> b!153853 (= e!92165 (Cons!2666 (h!8063 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465))))) (++!576 (t!25076 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465))))) lt!45061)))))

(declare-fun d!36946 () Bool)

(declare-fun e!92164 () Bool)

(assert (=> d!36946 e!92164))

(declare-fun res!70312 () Bool)

(assert (=> d!36946 (=> (not res!70312) (not e!92164))))

(declare-fun lt!45201 () List!2676)

(assert (=> d!36946 (= res!70312 (= (content!369 lt!45201) ((_ map or) (content!369 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465))))) (content!369 lt!45061))))))

(assert (=> d!36946 (= lt!45201 e!92165)))

(declare-fun c!30985 () Bool)

(assert (=> d!36946 (= c!30985 ((_ is Nil!2666) (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465))))))))

(assert (=> d!36946 (= (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) lt!45061) lt!45201)))

(declare-fun b!153855 () Bool)

(assert (=> b!153855 (= e!92164 (or (not (= lt!45061 Nil!2666)) (= lt!45201 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))))))))

(declare-fun b!153852 () Bool)

(assert (=> b!153852 (= e!92165 lt!45061)))

(declare-fun b!153854 () Bool)

(declare-fun res!70313 () Bool)

(assert (=> b!153854 (=> (not res!70313) (not e!92164))))

(assert (=> b!153854 (= res!70313 (= (size!2263 lt!45201) (+ (size!2263 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465))))) (size!2263 lt!45061))))))

(assert (= (and d!36946 c!30985) b!153852))

(assert (= (and d!36946 (not c!30985)) b!153853))

(assert (= (and d!36946 res!70312) b!153854))

(assert (= (and b!153854 res!70313) b!153855))

(declare-fun m!138939 () Bool)

(assert (=> b!153853 m!138939))

(declare-fun m!138941 () Bool)

(assert (=> d!36946 m!138941))

(assert (=> d!36946 m!138533))

(declare-fun m!138943 () Bool)

(assert (=> d!36946 m!138943))

(declare-fun m!138945 () Bool)

(assert (=> d!36946 m!138945))

(declare-fun m!138947 () Bool)

(assert (=> b!153854 m!138947))

(assert (=> b!153854 m!138533))

(declare-fun m!138949 () Bool)

(assert (=> b!153854 m!138949))

(declare-fun m!138951 () Bool)

(assert (=> b!153854 m!138951))

(assert (=> b!153528 d!36946))

(declare-fun d!36948 () Bool)

(declare-fun e!92174 () Bool)

(assert (=> d!36948 e!92174))

(declare-fun res!70337 () Bool)

(assert (=> d!36948 (=> res!70337 e!92174)))

(declare-fun lt!45215 () Option!247)

(declare-fun isEmpty!1063 (Option!247) Bool)

(assert (=> d!36948 (= res!70337 (isEmpty!1063 lt!45215))))

(declare-fun e!92172 () Option!247)

(assert (=> d!36948 (= lt!45215 e!92172)))

(declare-fun c!30988 () Bool)

(assert (=> d!36948 (= c!30988 (and ((_ is Cons!2667) rules!1920) ((_ is Nil!2667) (t!25077 rules!1920))))))

(declare-fun lt!45212 () Unit!2058)

(declare-fun lt!45213 () Unit!2058)

(assert (=> d!36948 (= lt!45212 lt!45213)))

(declare-fun isPrefix!212 (List!2676 List!2676) Bool)

(assert (=> d!36948 (isPrefix!212 (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) lt!45061) (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) lt!45061))))

(declare-fun lemmaIsPrefixRefl!120 (List!2676 List!2676) Unit!2058)

(assert (=> d!36948 (= lt!45213 (lemmaIsPrefixRefl!120 (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) lt!45061) (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) lt!45061)))))

(declare-fun rulesValidInductive!97 (LexerInterface!351 List!2677) Bool)

(assert (=> d!36948 (rulesValidInductive!97 thiss!17480 rules!1920)))

(assert (=> d!36948 (= (maxPrefix!111 thiss!17480 rules!1920 (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) lt!45061)) lt!45215)))

(declare-fun b!153874 () Bool)

(declare-fun res!70332 () Bool)

(declare-fun e!92173 () Bool)

(assert (=> b!153874 (=> (not res!70332) (not e!92173))))

(declare-fun matchR!68 (Regex!689 List!2676) Bool)

(declare-fun get!719 (Option!247) tuple2!2590)

(assert (=> b!153874 (= res!70332 (matchR!68 (regex!465 (rule!972 (_1!1511 (get!719 lt!45215)))) (list!939 (charsOf!120 (_1!1511 (get!719 lt!45215))))))))

(declare-fun b!153875 () Bool)

(declare-fun contains!421 (List!2677 Rule!730) Bool)

(assert (=> b!153875 (= e!92173 (contains!421 rules!1920 (rule!972 (_1!1511 (get!719 lt!45215)))))))

(declare-fun call!6319 () Option!247)

(declare-fun bm!6314 () Bool)

(declare-fun maxPrefixOneRule!56 (LexerInterface!351 Rule!730 List!2676) Option!247)

(assert (=> bm!6314 (= call!6319 (maxPrefixOneRule!56 thiss!17480 (h!8064 rules!1920) (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) lt!45061)))))

(declare-fun b!153876 () Bool)

(declare-fun res!70334 () Bool)

(assert (=> b!153876 (=> (not res!70334) (not e!92173))))

(assert (=> b!153876 (= res!70334 (< (size!2263 (_2!1511 (get!719 lt!45215))) (size!2263 (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) lt!45061))))))

(declare-fun b!153877 () Bool)

(declare-fun res!70331 () Bool)

(assert (=> b!153877 (=> (not res!70331) (not e!92173))))

(declare-fun apply!355 (TokenValueInjection!746 BalanceConc!1512) TokenValue!487)

(assert (=> b!153877 (= res!70331 (= (value!17568 (_1!1511 (get!719 lt!45215))) (apply!355 (transformation!465 (rule!972 (_1!1511 (get!719 lt!45215)))) (seqFromList!307 (originalCharacters!508 (_1!1511 (get!719 lt!45215)))))))))

(declare-fun b!153878 () Bool)

(declare-fun res!70333 () Bool)

(assert (=> b!153878 (=> (not res!70333) (not e!92173))))

(assert (=> b!153878 (= res!70333 (= (++!576 (list!939 (charsOf!120 (_1!1511 (get!719 lt!45215)))) (_2!1511 (get!719 lt!45215))) (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) lt!45061)))))

(declare-fun b!153879 () Bool)

(assert (=> b!153879 (= e!92172 call!6319)))

(declare-fun b!153880 () Bool)

(declare-fun lt!45216 () Option!247)

(declare-fun lt!45214 () Option!247)

(assert (=> b!153880 (= e!92172 (ite (and ((_ is None!246) lt!45216) ((_ is None!246) lt!45214)) None!246 (ite ((_ is None!246) lt!45214) lt!45216 (ite ((_ is None!246) lt!45216) lt!45214 (ite (>= (size!2261 (_1!1511 (v!13631 lt!45216))) (size!2261 (_1!1511 (v!13631 lt!45214)))) lt!45216 lt!45214)))))))

(assert (=> b!153880 (= lt!45216 call!6319)))

(assert (=> b!153880 (= lt!45214 (maxPrefix!111 thiss!17480 (t!25077 rules!1920) (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) lt!45061)))))

(declare-fun b!153881 () Bool)

(assert (=> b!153881 (= e!92174 e!92173)))

(declare-fun res!70336 () Bool)

(assert (=> b!153881 (=> (not res!70336) (not e!92173))))

(declare-fun isDefined!103 (Option!247) Bool)

(assert (=> b!153881 (= res!70336 (isDefined!103 lt!45215))))

(declare-fun b!153882 () Bool)

(declare-fun res!70335 () Bool)

(assert (=> b!153882 (=> (not res!70335) (not e!92173))))

(assert (=> b!153882 (= res!70335 (= (list!939 (charsOf!120 (_1!1511 (get!719 lt!45215)))) (originalCharacters!508 (_1!1511 (get!719 lt!45215)))))))

(assert (= (and d!36948 c!30988) b!153879))

(assert (= (and d!36948 (not c!30988)) b!153880))

(assert (= (or b!153879 b!153880) bm!6314))

(assert (= (and d!36948 (not res!70337)) b!153881))

(assert (= (and b!153881 res!70336) b!153882))

(assert (= (and b!153882 res!70335) b!153876))

(assert (= (and b!153876 res!70334) b!153878))

(assert (= (and b!153878 res!70333) b!153877))

(assert (= (and b!153877 res!70331) b!153874))

(assert (= (and b!153874 res!70332) b!153875))

(declare-fun m!138953 () Bool)

(assert (=> b!153875 m!138953))

(declare-fun m!138955 () Bool)

(assert (=> b!153875 m!138955))

(assert (=> b!153876 m!138953))

(declare-fun m!138957 () Bool)

(assert (=> b!153876 m!138957))

(assert (=> b!153876 m!138537))

(declare-fun m!138959 () Bool)

(assert (=> b!153876 m!138959))

(assert (=> bm!6314 m!138537))

(declare-fun m!138961 () Bool)

(assert (=> bm!6314 m!138961))

(assert (=> b!153878 m!138953))

(declare-fun m!138963 () Bool)

(assert (=> b!153878 m!138963))

(assert (=> b!153878 m!138963))

(declare-fun m!138965 () Bool)

(assert (=> b!153878 m!138965))

(assert (=> b!153878 m!138965))

(declare-fun m!138967 () Bool)

(assert (=> b!153878 m!138967))

(assert (=> b!153877 m!138953))

(declare-fun m!138969 () Bool)

(assert (=> b!153877 m!138969))

(assert (=> b!153877 m!138969))

(declare-fun m!138971 () Bool)

(assert (=> b!153877 m!138971))

(assert (=> b!153880 m!138537))

(declare-fun m!138973 () Bool)

(assert (=> b!153880 m!138973))

(assert (=> b!153882 m!138953))

(assert (=> b!153882 m!138963))

(assert (=> b!153882 m!138963))

(assert (=> b!153882 m!138965))

(declare-fun m!138975 () Bool)

(assert (=> d!36948 m!138975))

(assert (=> d!36948 m!138537))

(assert (=> d!36948 m!138537))

(declare-fun m!138977 () Bool)

(assert (=> d!36948 m!138977))

(assert (=> d!36948 m!138537))

(assert (=> d!36948 m!138537))

(declare-fun m!138979 () Bool)

(assert (=> d!36948 m!138979))

(declare-fun m!138981 () Bool)

(assert (=> d!36948 m!138981))

(declare-fun m!138983 () Bool)

(assert (=> b!153881 m!138983))

(assert (=> b!153874 m!138953))

(assert (=> b!153874 m!138963))

(assert (=> b!153874 m!138963))

(assert (=> b!153874 m!138965))

(assert (=> b!153874 m!138965))

(declare-fun m!138985 () Bool)

(assert (=> b!153874 m!138985))

(assert (=> b!153528 d!36948))

(declare-fun d!36950 () Bool)

(assert (=> d!36950 (= (list!939 (charsOf!120 (h!8065 (t!25078 tokens!465)))) (list!940 (c!30889 (charsOf!120 (h!8065 (t!25078 tokens!465))))))))

(declare-fun bs!14145 () Bool)

(assert (= bs!14145 d!36950))

(declare-fun m!138987 () Bool)

(assert (=> bs!14145 m!138987))

(assert (=> b!153528 d!36950))

(declare-fun d!36952 () Bool)

(declare-fun lt!45217 () BalanceConc!1512)

(assert (=> d!36952 (= (list!939 lt!45217) (originalCharacters!508 (h!8065 (t!25078 tokens!465))))))

(assert (=> d!36952 (= lt!45217 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (value!17568 (h!8065 (t!25078 tokens!465)))))))

(assert (=> d!36952 (= (charsOf!120 (h!8065 (t!25078 tokens!465))) lt!45217)))

(declare-fun b_lambda!2923 () Bool)

(assert (=> (not b_lambda!2923) (not d!36952)))

(declare-fun t!25149 () Bool)

(declare-fun tb!5293 () Bool)

(assert (=> (and b!153769 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465)))))) t!25149) tb!5293))

(declare-fun b!153883 () Bool)

(declare-fun e!92175 () Bool)

(declare-fun tp!79656 () Bool)

(assert (=> b!153883 (= e!92175 (and (inv!3468 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (value!17568 (h!8065 (t!25078 tokens!465)))))) tp!79656))))

(declare-fun result!7792 () Bool)

(assert (=> tb!5293 (= result!7792 (and (inv!3469 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (value!17568 (h!8065 (t!25078 tokens!465))))) e!92175))))

(assert (= tb!5293 b!153883))

(declare-fun m!138989 () Bool)

(assert (=> b!153883 m!138989))

(declare-fun m!138991 () Bool)

(assert (=> tb!5293 m!138991))

(assert (=> d!36952 t!25149))

(declare-fun b_and!9077 () Bool)

(assert (= b_and!9063 (and (=> t!25149 result!7792) b_and!9077)))

(declare-fun t!25151 () Bool)

(declare-fun tb!5295 () Bool)

(assert (=> (and b!153322 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465)))))) t!25151) tb!5295))

(declare-fun result!7794 () Bool)

(assert (= result!7794 result!7792))

(assert (=> d!36952 t!25151))

(declare-fun b_and!9079 () Bool)

(assert (= b_and!9049 (and (=> t!25151 result!7794) b_and!9079)))

(declare-fun t!25153 () Bool)

(declare-fun tb!5297 () Bool)

(assert (=> (and b!153328 (= (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465)))))) t!25153) tb!5297))

(declare-fun result!7796 () Bool)

(assert (= result!7796 result!7792))

(assert (=> d!36952 t!25153))

(declare-fun b_and!9081 () Bool)

(assert (= b_and!9051 (and (=> t!25153 result!7796) b_and!9081)))

(declare-fun tb!5299 () Bool)

(declare-fun t!25155 () Bool)

(assert (=> (and b!153316 (= (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465)))))) t!25155) tb!5299))

(declare-fun result!7798 () Bool)

(assert (= result!7798 result!7792))

(assert (=> d!36952 t!25155))

(declare-fun b_and!9083 () Bool)

(assert (= b_and!9053 (and (=> t!25155 result!7798) b_and!9083)))

(declare-fun t!25157 () Bool)

(declare-fun tb!5301 () Bool)

(assert (=> (and b!153812 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465)))))) t!25157) tb!5301))

(declare-fun result!7800 () Bool)

(assert (= result!7800 result!7792))

(assert (=> d!36952 t!25157))

(declare-fun b_and!9085 () Bool)

(assert (= b_and!9075 (and (=> t!25157 result!7800) b_and!9085)))

(declare-fun m!138993 () Bool)

(assert (=> d!36952 m!138993))

(declare-fun m!138995 () Bool)

(assert (=> d!36952 m!138995))

(assert (=> b!153528 d!36952))

(declare-fun bs!14146 () Bool)

(declare-fun b!153887 () Bool)

(assert (= bs!14146 (and b!153887 d!36870)))

(declare-fun lambda!4047 () Int)

(assert (=> bs!14146 (= lambda!4047 lambda!4023)))

(declare-fun bs!14147 () Bool)

(assert (= bs!14147 (and b!153887 d!36896)))

(assert (=> bs!14147 (not (= lambda!4047 lambda!4037))))

(declare-fun bs!14148 () Bool)

(assert (= bs!14148 (and b!153887 b!153336)))

(assert (=> bs!14148 (not (= lambda!4047 lambda!4006))))

(declare-fun bs!14149 () Bool)

(assert (= bs!14149 (and b!153887 b!153528)))

(assert (=> bs!14149 (= lambda!4047 lambda!4020)))

(declare-fun bs!14150 () Bool)

(assert (= bs!14150 (and b!153887 d!36820)))

(assert (=> bs!14150 (= lambda!4047 lambda!4014)))

(declare-fun bs!14151 () Bool)

(assert (= bs!14151 (and b!153887 b!153681)))

(assert (=> bs!14151 (= lambda!4047 lambda!4042)))

(declare-fun bs!14152 () Bool)

(assert (= bs!14152 (and b!153887 b!153666)))

(assert (=> bs!14152 (= lambda!4047 lambda!4038)))

(declare-fun b!153896 () Bool)

(declare-fun e!92183 () Bool)

(assert (=> b!153896 (= e!92183 true)))

(declare-fun b!153895 () Bool)

(declare-fun e!92182 () Bool)

(assert (=> b!153895 (= e!92182 e!92183)))

(declare-fun b!153894 () Bool)

(declare-fun e!92181 () Bool)

(assert (=> b!153894 (= e!92181 e!92182)))

(assert (=> b!153887 e!92181))

(assert (= b!153895 b!153896))

(assert (= b!153894 b!153895))

(assert (= (and b!153887 ((_ is Cons!2667) rules!1920)) b!153894))

(assert (=> b!153896 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4047))))

(assert (=> b!153896 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4047))))

(assert (=> b!153887 true))

(declare-fun bm!6315 () Bool)

(declare-fun c!30992 () Bool)

(declare-fun c!30989 () Bool)

(assert (=> bm!6315 (= c!30992 c!30989)))

(declare-fun lt!45218 () List!2676)

(declare-fun e!92176 () List!2676)

(declare-fun call!6320 () List!2676)

(declare-fun call!6321 () List!2676)

(assert (=> bm!6315 (= call!6321 (++!576 e!92176 (ite c!30989 lt!45218 call!6320)))))

(declare-fun bm!6316 () Bool)

(declare-fun call!6322 () BalanceConc!1512)

(assert (=> bm!6316 (= call!6322 (charsOf!120 (h!8065 (t!25078 (t!25078 tokens!465)))))))

(declare-fun b!153884 () Bool)

(declare-fun e!92177 () List!2676)

(assert (=> b!153884 (= e!92177 (++!576 call!6321 lt!45218))))

(declare-fun b!153885 () Bool)

(declare-fun c!30991 () Bool)

(declare-fun lt!45222 () Option!247)

(assert (=> b!153885 (= c!30991 (and ((_ is Some!246) lt!45222) (not (= (_1!1511 (v!13631 lt!45222)) (h!8065 (t!25078 (t!25078 tokens!465)))))))))

(declare-fun e!92178 () List!2676)

(assert (=> b!153885 (= e!92178 e!92177)))

(declare-fun b!153886 () Bool)

(declare-fun e!92180 () BalanceConc!1512)

(declare-fun call!6324 () BalanceConc!1512)

(assert (=> b!153886 (= e!92180 call!6324)))

(declare-fun bm!6317 () Bool)

(declare-fun call!6323 () List!2676)

(assert (=> bm!6317 (= call!6320 call!6323)))

(declare-fun c!30990 () Bool)

(assert (=> bm!6317 (= c!30990 c!30991)))

(declare-fun e!92179 () List!2676)

(assert (=> b!153887 (= e!92179 e!92178)))

(declare-fun lt!45220 () Unit!2058)

(assert (=> b!153887 (= lt!45220 (forallContained!54 (t!25078 (t!25078 tokens!465)) lambda!4047 (h!8065 (t!25078 (t!25078 tokens!465)))))))

(assert (=> b!153887 (= lt!45218 (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 (t!25078 (t!25078 (t!25078 tokens!465))) separatorToken!170))))

(assert (=> b!153887 (= lt!45222 (maxPrefix!111 thiss!17480 rules!1920 (++!576 (list!939 (charsOf!120 (h!8065 (t!25078 (t!25078 tokens!465))))) lt!45218)))))

(assert (=> b!153887 (= c!30989 (and ((_ is Some!246) lt!45222) (= (_1!1511 (v!13631 lt!45222)) (h!8065 (t!25078 (t!25078 tokens!465))))))))

(declare-fun b!153888 () Bool)

(assert (=> b!153888 (= e!92177 Nil!2666)))

(assert (=> b!153888 (= (print!96 thiss!17480 (singletonSeq!29 (h!8065 (t!25078 (t!25078 tokens!465))))) (printTailRec!59 thiss!17480 (singletonSeq!29 (h!8065 (t!25078 (t!25078 tokens!465)))) 0 (BalanceConc!1513 Empty!752)))))

(declare-fun lt!45219 () Unit!2058)

(declare-fun Unit!2072 () Unit!2058)

(assert (=> b!153888 (= lt!45219 Unit!2072)))

(declare-fun lt!45223 () Unit!2058)

(assert (=> b!153888 (= lt!45223 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!18 thiss!17480 rules!1920 call!6320 lt!45218))))

(assert (=> b!153888 false))

(declare-fun lt!45221 () Unit!2058)

(declare-fun Unit!2073 () Unit!2058)

(assert (=> b!153888 (= lt!45221 Unit!2073)))

(declare-fun b!153889 () Bool)

(assert (=> b!153889 (= e!92176 call!6323)))

(declare-fun b!153890 () Bool)

(assert (=> b!153890 (= e!92178 call!6321)))

(declare-fun b!153891 () Bool)

(assert (=> b!153891 (= e!92180 (charsOf!120 separatorToken!170))))

(declare-fun b!153892 () Bool)

(assert (=> b!153892 (= e!92179 Nil!2666)))

(declare-fun d!36954 () Bool)

(declare-fun c!30993 () Bool)

(assert (=> d!36954 (= c!30993 ((_ is Cons!2668) (t!25078 (t!25078 tokens!465))))))

(assert (=> d!36954 (= (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 (t!25078 (t!25078 tokens!465)) separatorToken!170) e!92179)))

(declare-fun bm!6318 () Bool)

(assert (=> bm!6318 (= call!6323 (list!939 (ite c!30989 call!6322 e!92180)))))

(declare-fun b!153893 () Bool)

(assert (=> b!153893 (= e!92176 (list!939 call!6324))))

(declare-fun bm!6319 () Bool)

(assert (=> bm!6319 (= call!6324 call!6322)))

(assert (= (and d!36954 c!30993) b!153887))

(assert (= (and d!36954 (not c!30993)) b!153892))

(assert (= (and b!153887 c!30989) b!153890))

(assert (= (and b!153887 (not c!30989)) b!153885))

(assert (= (and b!153885 c!30991) b!153884))

(assert (= (and b!153885 (not c!30991)) b!153888))

(assert (= (or b!153884 b!153888) bm!6319))

(assert (= (or b!153884 b!153888) bm!6317))

(assert (= (and bm!6317 c!30990) b!153891))

(assert (= (and bm!6317 (not c!30990)) b!153886))

(assert (= (or b!153890 bm!6319) bm!6316))

(assert (= (or b!153890 bm!6317) bm!6318))

(assert (= (or b!153890 b!153884) bm!6315))

(assert (= (and bm!6315 c!30992) b!153889))

(assert (= (and bm!6315 (not c!30992)) b!153893))

(declare-fun m!138997 () Bool)

(assert (=> bm!6318 m!138997))

(declare-fun m!138999 () Bool)

(assert (=> b!153893 m!138999))

(declare-fun m!139001 () Bool)

(assert (=> b!153884 m!139001))

(declare-fun m!139003 () Bool)

(assert (=> bm!6315 m!139003))

(declare-fun m!139005 () Bool)

(assert (=> bm!6316 m!139005))

(assert (=> b!153891 m!138295))

(assert (=> b!153887 m!139005))

(declare-fun m!139007 () Bool)

(assert (=> b!153887 m!139007))

(declare-fun m!139009 () Bool)

(assert (=> b!153887 m!139009))

(assert (=> b!153887 m!139007))

(declare-fun m!139011 () Bool)

(assert (=> b!153887 m!139011))

(assert (=> b!153887 m!139005))

(declare-fun m!139013 () Bool)

(assert (=> b!153887 m!139013))

(assert (=> b!153887 m!139011))

(declare-fun m!139015 () Bool)

(assert (=> b!153887 m!139015))

(declare-fun m!139017 () Bool)

(assert (=> b!153888 m!139017))

(assert (=> b!153888 m!139017))

(declare-fun m!139019 () Bool)

(assert (=> b!153888 m!139019))

(assert (=> b!153888 m!139017))

(declare-fun m!139021 () Bool)

(assert (=> b!153888 m!139021))

(declare-fun m!139023 () Bool)

(assert (=> b!153888 m!139023))

(assert (=> b!153528 d!36954))

(declare-fun d!36956 () Bool)

(assert (=> d!36956 (dynLambda!939 lambda!4020 (h!8065 (t!25078 tokens!465)))))

(declare-fun lt!45226 () Unit!2058)

(declare-fun choose!1755 (List!2678 Int Token!674) Unit!2058)

(assert (=> d!36956 (= lt!45226 (choose!1755 (t!25078 tokens!465) lambda!4020 (h!8065 (t!25078 tokens!465))))))

(declare-fun e!92186 () Bool)

(assert (=> d!36956 e!92186))

(declare-fun res!70340 () Bool)

(assert (=> d!36956 (=> (not res!70340) (not e!92186))))

(assert (=> d!36956 (= res!70340 (forall!461 (t!25078 tokens!465) lambda!4020))))

(assert (=> d!36956 (= (forallContained!54 (t!25078 tokens!465) lambda!4020 (h!8065 (t!25078 tokens!465))) lt!45226)))

(declare-fun b!153899 () Bool)

(declare-fun contains!422 (List!2678 Token!674) Bool)

(assert (=> b!153899 (= e!92186 (contains!422 (t!25078 tokens!465) (h!8065 (t!25078 tokens!465))))))

(assert (= (and d!36956 res!70340) b!153899))

(declare-fun b_lambda!2925 () Bool)

(assert (=> (not b_lambda!2925) (not d!36956)))

(declare-fun m!139025 () Bool)

(assert (=> d!36956 m!139025))

(declare-fun m!139027 () Bool)

(assert (=> d!36956 m!139027))

(declare-fun m!139029 () Bool)

(assert (=> d!36956 m!139029))

(declare-fun m!139031 () Bool)

(assert (=> b!153899 m!139031))

(assert (=> b!153528 d!36956))

(declare-fun d!36958 () Bool)

(declare-fun e!92189 () Bool)

(assert (=> d!36958 e!92189))

(declare-fun res!70350 () Bool)

(assert (=> d!36958 (=> (not res!70350) (not e!92189))))

(declare-fun appendAssocInst!18 (Conc!752 Conc!752) Bool)

(assert (=> d!36958 (= res!70350 (appendAssocInst!18 (c!30889 call!6309) (c!30889 (ite c!30969 lt!45166 call!6310))))))

(declare-fun lt!45229 () BalanceConc!1512)

(declare-fun ++!579 (Conc!752 Conc!752) Conc!752)

(assert (=> d!36958 (= lt!45229 (BalanceConc!1513 (++!579 (c!30889 call!6309) (c!30889 (ite c!30969 lt!45166 call!6310)))))))

(assert (=> d!36958 (= (++!578 call!6309 (ite c!30969 lt!45166 call!6310)) lt!45229)))

(declare-fun b!153911 () Bool)

(assert (=> b!153911 (= e!92189 (= (list!939 lt!45229) (++!576 (list!939 call!6309) (list!939 (ite c!30969 lt!45166 call!6310)))))))

(declare-fun b!153909 () Bool)

(declare-fun res!70352 () Bool)

(assert (=> b!153909 (=> (not res!70352) (not e!92189))))

(declare-fun height!77 (Conc!752) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!153909 (= res!70352 (<= (height!77 (++!579 (c!30889 call!6309) (c!30889 (ite c!30969 lt!45166 call!6310)))) (+ (max!0 (height!77 (c!30889 call!6309)) (height!77 (c!30889 (ite c!30969 lt!45166 call!6310)))) 1)))))

(declare-fun b!153910 () Bool)

(declare-fun res!70351 () Bool)

(assert (=> b!153910 (=> (not res!70351) (not e!92189))))

(assert (=> b!153910 (= res!70351 (>= (height!77 (++!579 (c!30889 call!6309) (c!30889 (ite c!30969 lt!45166 call!6310)))) (max!0 (height!77 (c!30889 call!6309)) (height!77 (c!30889 (ite c!30969 lt!45166 call!6310))))))))

(declare-fun b!153908 () Bool)

(declare-fun res!70349 () Bool)

(assert (=> b!153908 (=> (not res!70349) (not e!92189))))

(declare-fun isBalanced!210 (Conc!752) Bool)

(assert (=> b!153908 (= res!70349 (isBalanced!210 (++!579 (c!30889 call!6309) (c!30889 (ite c!30969 lt!45166 call!6310)))))))

(assert (= (and d!36958 res!70350) b!153908))

(assert (= (and b!153908 res!70349) b!153909))

(assert (= (and b!153909 res!70352) b!153910))

(assert (= (and b!153910 res!70351) b!153911))

(declare-fun m!139035 () Bool)

(assert (=> b!153910 m!139035))

(declare-fun m!139037 () Bool)

(assert (=> b!153910 m!139037))

(declare-fun m!139039 () Bool)

(assert (=> b!153910 m!139039))

(assert (=> b!153910 m!139035))

(declare-fun m!139041 () Bool)

(assert (=> b!153910 m!139041))

(declare-fun m!139043 () Bool)

(assert (=> b!153910 m!139043))

(assert (=> b!153910 m!139041))

(assert (=> b!153910 m!139037))

(declare-fun m!139045 () Bool)

(assert (=> d!36958 m!139045))

(assert (=> d!36958 m!139037))

(assert (=> b!153908 m!139037))

(assert (=> b!153908 m!139037))

(declare-fun m!139047 () Bool)

(assert (=> b!153908 m!139047))

(assert (=> b!153909 m!139035))

(assert (=> b!153909 m!139037))

(assert (=> b!153909 m!139039))

(assert (=> b!153909 m!139035))

(assert (=> b!153909 m!139041))

(assert (=> b!153909 m!139043))

(assert (=> b!153909 m!139041))

(assert (=> b!153909 m!139037))

(declare-fun m!139051 () Bool)

(assert (=> b!153911 m!139051))

(declare-fun m!139053 () Bool)

(assert (=> b!153911 m!139053))

(declare-fun m!139055 () Bool)

(assert (=> b!153911 m!139055))

(assert (=> b!153911 m!139053))

(assert (=> b!153911 m!139055))

(declare-fun m!139057 () Bool)

(assert (=> b!153911 m!139057))

(assert (=> bm!6302 d!36958))

(declare-fun d!36966 () Bool)

(declare-fun c!30997 () Bool)

(assert (=> d!36966 (= c!30997 ((_ is Nil!2666) lt!45080))))

(declare-fun e!92190 () (InoxSet C!2300))

(assert (=> d!36966 (= (content!369 lt!45080) e!92190)))

(declare-fun b!153912 () Bool)

(assert (=> b!153912 (= e!92190 ((as const (Array C!2300 Bool)) false))))

(declare-fun b!153913 () Bool)

(assert (=> b!153913 (= e!92190 ((_ map or) (store ((as const (Array C!2300 Bool)) false) (h!8063 lt!45080) true) (content!369 (t!25076 lt!45080))))))

(assert (= (and d!36966 c!30997) b!153912))

(assert (= (and d!36966 (not c!30997)) b!153913))

(declare-fun m!139059 () Bool)

(assert (=> b!153913 m!139059))

(declare-fun m!139061 () Bool)

(assert (=> b!153913 m!139061))

(assert (=> d!36878 d!36966))

(declare-fun d!36968 () Bool)

(declare-fun c!30998 () Bool)

(assert (=> d!36968 (= c!30998 ((_ is Nil!2666) lt!45002))))

(declare-fun e!92191 () (InoxSet C!2300))

(assert (=> d!36968 (= (content!369 lt!45002) e!92191)))

(declare-fun b!153914 () Bool)

(assert (=> b!153914 (= e!92191 ((as const (Array C!2300 Bool)) false))))

(declare-fun b!153915 () Bool)

(assert (=> b!153915 (= e!92191 ((_ map or) (store ((as const (Array C!2300 Bool)) false) (h!8063 lt!45002) true) (content!369 (t!25076 lt!45002))))))

(assert (= (and d!36968 c!30998) b!153914))

(assert (= (and d!36968 (not c!30998)) b!153915))

(declare-fun m!139063 () Bool)

(assert (=> b!153915 m!139063))

(declare-fun m!139065 () Bool)

(assert (=> b!153915 m!139065))

(assert (=> d!36878 d!36968))

(declare-fun d!36970 () Bool)

(declare-fun c!30999 () Bool)

(assert (=> d!36970 (= c!30999 ((_ is Nil!2666) lt!44997))))

(declare-fun e!92192 () (InoxSet C!2300))

(assert (=> d!36970 (= (content!369 lt!44997) e!92192)))

(declare-fun b!153916 () Bool)

(assert (=> b!153916 (= e!92192 ((as const (Array C!2300 Bool)) false))))

(declare-fun b!153917 () Bool)

(assert (=> b!153917 (= e!92192 ((_ map or) (store ((as const (Array C!2300 Bool)) false) (h!8063 lt!44997) true) (content!369 (t!25076 lt!44997))))))

(assert (= (and d!36970 c!30999) b!153916))

(assert (= (and d!36970 (not c!30999)) b!153917))

(declare-fun m!139067 () Bool)

(assert (=> b!153917 m!139067))

(declare-fun m!139069 () Bool)

(assert (=> b!153917 m!139069))

(assert (=> d!36878 d!36970))

(declare-fun b!153919 () Bool)

(declare-fun e!92194 () List!2676)

(assert (=> b!153919 (= e!92194 (Cons!2666 (h!8063 (t!25076 lt!45002)) (++!576 (t!25076 (t!25076 lt!45002)) lt!45001)))))

(declare-fun d!36972 () Bool)

(declare-fun e!92193 () Bool)

(assert (=> d!36972 e!92193))

(declare-fun res!70353 () Bool)

(assert (=> d!36972 (=> (not res!70353) (not e!92193))))

(declare-fun lt!45230 () List!2676)

(assert (=> d!36972 (= res!70353 (= (content!369 lt!45230) ((_ map or) (content!369 (t!25076 lt!45002)) (content!369 lt!45001))))))

(assert (=> d!36972 (= lt!45230 e!92194)))

(declare-fun c!31000 () Bool)

(assert (=> d!36972 (= c!31000 ((_ is Nil!2666) (t!25076 lt!45002)))))

(assert (=> d!36972 (= (++!576 (t!25076 lt!45002) lt!45001) lt!45230)))

(declare-fun b!153921 () Bool)

(assert (=> b!153921 (= e!92193 (or (not (= lt!45001 Nil!2666)) (= lt!45230 (t!25076 lt!45002))))))

(declare-fun b!153918 () Bool)

(assert (=> b!153918 (= e!92194 lt!45001)))

(declare-fun b!153920 () Bool)

(declare-fun res!70354 () Bool)

(assert (=> b!153920 (=> (not res!70354) (not e!92193))))

(assert (=> b!153920 (= res!70354 (= (size!2263 lt!45230) (+ (size!2263 (t!25076 lt!45002)) (size!2263 lt!45001))))))

(assert (= (and d!36972 c!31000) b!153918))

(assert (= (and d!36972 (not c!31000)) b!153919))

(assert (= (and d!36972 res!70353) b!153920))

(assert (= (and b!153920 res!70354) b!153921))

(declare-fun m!139071 () Bool)

(assert (=> b!153919 m!139071))

(declare-fun m!139073 () Bool)

(assert (=> d!36972 m!139073))

(assert (=> d!36972 m!139065))

(assert (=> d!36972 m!138429))

(declare-fun m!139075 () Bool)

(assert (=> b!153920 m!139075))

(declare-fun m!139077 () Bool)

(assert (=> b!153920 m!139077))

(assert (=> b!153920 m!138435))

(assert (=> b!153450 d!36972))

(declare-fun d!36976 () Bool)

(assert (=> d!36976 true))

(declare-fun order!1341 () Int)

(declare-fun lambda!4050 () Int)

(declare-fun dynLambda!941 (Int Int) Int)

(assert (=> d!36976 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465))))) (dynLambda!941 order!1341 lambda!4050))))

(assert (=> d!36976 true))

(assert (=> d!36976 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (rule!972 (h!8065 tokens!465))))) (dynLambda!941 order!1341 lambda!4050))))

(declare-fun Forall!123 (Int) Bool)

(assert (=> d!36976 (= (semiInverseModEq!160 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toValue!1104 (transformation!465 (rule!972 (h!8065 tokens!465))))) (Forall!123 lambda!4050))))

(declare-fun bs!14155 () Bool)

(assert (= bs!14155 d!36976))

(declare-fun m!139081 () Bool)

(assert (=> bs!14155 m!139081))

(assert (=> d!36818 d!36976))

(declare-fun d!36980 () Bool)

(declare-fun c!31010 () Bool)

(assert (=> d!36980 (= c!31010 ((_ is Empty!752) (c!30889 (charsOf!120 (h!8065 tokens!465)))))))

(declare-fun e!92204 () List!2676)

(assert (=> d!36980 (= (list!940 (c!30889 (charsOf!120 (h!8065 tokens!465)))) e!92204)))

(declare-fun b!153947 () Bool)

(declare-fun e!92205 () List!2676)

(assert (=> b!153947 (= e!92205 (++!576 (list!940 (left!2011 (c!30889 (charsOf!120 (h!8065 tokens!465))))) (list!940 (right!2341 (c!30889 (charsOf!120 (h!8065 tokens!465)))))))))

(declare-fun b!153946 () Bool)

(declare-fun list!944 (IArray!1505) List!2676)

(assert (=> b!153946 (= e!92205 (list!944 (xs!3347 (c!30889 (charsOf!120 (h!8065 tokens!465))))))))

(declare-fun b!153944 () Bool)

(assert (=> b!153944 (= e!92204 Nil!2666)))

(declare-fun b!153945 () Bool)

(assert (=> b!153945 (= e!92204 e!92205)))

(declare-fun c!31011 () Bool)

(assert (=> b!153945 (= c!31011 ((_ is Leaf!1324) (c!30889 (charsOf!120 (h!8065 tokens!465)))))))

(assert (= (and d!36980 c!31010) b!153944))

(assert (= (and d!36980 (not c!31010)) b!153945))

(assert (= (and b!153945 c!31011) b!153946))

(assert (= (and b!153945 (not c!31011)) b!153947))

(declare-fun m!139087 () Bool)

(assert (=> b!153947 m!139087))

(declare-fun m!139089 () Bool)

(assert (=> b!153947 m!139089))

(assert (=> b!153947 m!139087))

(assert (=> b!153947 m!139089))

(declare-fun m!139091 () Bool)

(assert (=> b!153947 m!139091))

(declare-fun m!139093 () Bool)

(assert (=> b!153946 m!139093))

(assert (=> d!36866 d!36980))

(declare-fun d!36986 () Bool)

(declare-fun lt!45239 () Token!674)

(assert (=> d!36986 (= lt!45239 (apply!354 (list!942 (_1!1513 lt!45086)) 0))))

(declare-fun apply!356 (Conc!753 Int) Token!674)

(assert (=> d!36986 (= lt!45239 (apply!356 (c!30891 (_1!1513 lt!45086)) 0))))

(declare-fun e!92215 () Bool)

(assert (=> d!36986 e!92215))

(declare-fun res!70363 () Bool)

(assert (=> d!36986 (=> (not res!70363) (not e!92215))))

(assert (=> d!36986 (= res!70363 (<= 0 0))))

(assert (=> d!36986 (= (apply!352 (_1!1513 lt!45086) 0) lt!45239)))

(declare-fun b!153957 () Bool)

(assert (=> b!153957 (= e!92215 (< 0 (size!2265 (_1!1513 lt!45086))))))

(assert (= (and d!36986 res!70363) b!153957))

(declare-fun m!139103 () Bool)

(assert (=> d!36986 m!139103))

(assert (=> d!36986 m!139103))

(declare-fun m!139105 () Bool)

(assert (=> d!36986 m!139105))

(declare-fun m!139107 () Bool)

(assert (=> d!36986 m!139107))

(assert (=> b!153957 m!138639))

(assert (=> b!153590 d!36986))

(declare-fun d!36990 () Bool)

(declare-fun e!92216 () Bool)

(assert (=> d!36990 e!92216))

(declare-fun res!70365 () Bool)

(assert (=> d!36990 (=> (not res!70365) (not e!92216))))

(assert (=> d!36990 (= res!70365 (appendAssocInst!18 (c!30889 call!6308) (c!30889 lt!45166)))))

(declare-fun lt!45240 () BalanceConc!1512)

(assert (=> d!36990 (= lt!45240 (BalanceConc!1513 (++!579 (c!30889 call!6308) (c!30889 lt!45166))))))

(assert (=> d!36990 (= (++!578 call!6308 lt!45166) lt!45240)))

(declare-fun b!153961 () Bool)

(assert (=> b!153961 (= e!92216 (= (list!939 lt!45240) (++!576 (list!939 call!6308) (list!939 lt!45166))))))

(declare-fun b!153959 () Bool)

(declare-fun res!70367 () Bool)

(assert (=> b!153959 (=> (not res!70367) (not e!92216))))

(assert (=> b!153959 (= res!70367 (<= (height!77 (++!579 (c!30889 call!6308) (c!30889 lt!45166))) (+ (max!0 (height!77 (c!30889 call!6308)) (height!77 (c!30889 lt!45166))) 1)))))

(declare-fun b!153960 () Bool)

(declare-fun res!70366 () Bool)

(assert (=> b!153960 (=> (not res!70366) (not e!92216))))

(assert (=> b!153960 (= res!70366 (>= (height!77 (++!579 (c!30889 call!6308) (c!30889 lt!45166))) (max!0 (height!77 (c!30889 call!6308)) (height!77 (c!30889 lt!45166)))))))

(declare-fun b!153958 () Bool)

(declare-fun res!70364 () Bool)

(assert (=> b!153958 (=> (not res!70364) (not e!92216))))

(assert (=> b!153958 (= res!70364 (isBalanced!210 (++!579 (c!30889 call!6308) (c!30889 lt!45166))))))

(assert (= (and d!36990 res!70365) b!153958))

(assert (= (and b!153958 res!70364) b!153959))

(assert (= (and b!153959 res!70367) b!153960))

(assert (= (and b!153960 res!70366) b!153961))

(declare-fun m!139113 () Bool)

(assert (=> b!153960 m!139113))

(declare-fun m!139115 () Bool)

(assert (=> b!153960 m!139115))

(declare-fun m!139117 () Bool)

(assert (=> b!153960 m!139117))

(assert (=> b!153960 m!139113))

(declare-fun m!139119 () Bool)

(assert (=> b!153960 m!139119))

(declare-fun m!139121 () Bool)

(assert (=> b!153960 m!139121))

(assert (=> b!153960 m!139119))

(assert (=> b!153960 m!139115))

(declare-fun m!139123 () Bool)

(assert (=> d!36990 m!139123))

(assert (=> d!36990 m!139115))

(assert (=> b!153958 m!139115))

(assert (=> b!153958 m!139115))

(declare-fun m!139125 () Bool)

(assert (=> b!153958 m!139125))

(assert (=> b!153959 m!139113))

(assert (=> b!153959 m!139115))

(assert (=> b!153959 m!139117))

(assert (=> b!153959 m!139113))

(assert (=> b!153959 m!139119))

(assert (=> b!153959 m!139121))

(assert (=> b!153959 m!139119))

(assert (=> b!153959 m!139115))

(declare-fun m!139127 () Bool)

(assert (=> b!153961 m!139127))

(declare-fun m!139129 () Bool)

(assert (=> b!153961 m!139129))

(assert (=> b!153961 m!138751))

(assert (=> b!153961 m!139129))

(assert (=> b!153961 m!138751))

(declare-fun m!139131 () Bool)

(assert (=> b!153961 m!139131))

(assert (=> b!153660 d!36990))

(declare-fun d!36994 () Bool)

(assert (=> d!36994 true))

(declare-fun lt!45246 () Bool)

(assert (=> d!36994 (= lt!45246 (rulesValidInductive!97 thiss!17480 rules!1920))))

(declare-fun lambda!4053 () Int)

(declare-fun forall!464 (List!2677 Int) Bool)

(assert (=> d!36994 (= lt!45246 (forall!464 rules!1920 lambda!4053))))

(assert (=> d!36994 (= (rulesValid!126 thiss!17480 rules!1920) lt!45246)))

(declare-fun bs!14156 () Bool)

(assert (= bs!14156 d!36994))

(assert (=> bs!14156 m!138981))

(declare-fun m!139157 () Bool)

(assert (=> bs!14156 m!139157))

(assert (=> d!36882 d!36994))

(declare-fun b!153979 () Bool)

(declare-fun e!92227 () Bool)

(declare-fun call!6327 () Bool)

(assert (=> b!153979 (= e!92227 call!6327)))

(declare-fun b!153980 () Bool)

(declare-fun e!92229 () Bool)

(declare-fun e!92228 () Bool)

(assert (=> b!153980 (= e!92229 e!92228)))

(declare-fun res!70377 () Bool)

(declare-fun rulesUseDisjointChars!13 (Rule!730 Rule!730) Bool)

(assert (=> b!153980 (= res!70377 (rulesUseDisjointChars!13 (h!8064 rules!1920) (h!8064 rules!1920)))))

(assert (=> b!153980 (=> (not res!70377) (not e!92228))))

(declare-fun d!37000 () Bool)

(declare-fun c!31015 () Bool)

(assert (=> d!37000 (= c!31015 (and ((_ is Cons!2667) rules!1920) (not (= (isSeparator!465 (h!8064 rules!1920)) (isSeparator!465 (h!8064 rules!1920))))))))

(assert (=> d!37000 (= (ruleDisjointCharsFromAllFromOtherType!19 (h!8064 rules!1920) rules!1920) e!92229)))

(declare-fun bm!6322 () Bool)

(assert (=> bm!6322 (= call!6327 (ruleDisjointCharsFromAllFromOtherType!19 (h!8064 rules!1920) (t!25077 rules!1920)))))

(declare-fun b!153981 () Bool)

(assert (=> b!153981 (= e!92228 call!6327)))

(declare-fun b!153982 () Bool)

(assert (=> b!153982 (= e!92229 e!92227)))

(declare-fun res!70378 () Bool)

(assert (=> b!153982 (= res!70378 (not ((_ is Cons!2667) rules!1920)))))

(assert (=> b!153982 (=> res!70378 e!92227)))

(assert (= (and d!37000 c!31015) b!153980))

(assert (= (and d!37000 (not c!31015)) b!153982))

(assert (= (and b!153980 res!70377) b!153981))

(assert (= (and b!153982 (not res!70378)) b!153979))

(assert (= (or b!153981 b!153979) bm!6322))

(declare-fun m!139161 () Bool)

(assert (=> b!153980 m!139161))

(declare-fun m!139163 () Bool)

(assert (=> bm!6322 m!139163))

(assert (=> b!153714 d!37000))

(declare-fun d!37004 () Bool)

(declare-fun charsToBigInt!0 (List!2675 Int) Int)

(assert (=> d!37004 (= (inv!15 (value!17568 (h!8065 tokens!465))) (= (charsToBigInt!0 (text!3858 (value!17568 (h!8065 tokens!465))) 0) (value!17563 (value!17568 (h!8065 tokens!465)))))))

(declare-fun bs!14158 () Bool)

(assert (= bs!14158 d!37004))

(declare-fun m!139165 () Bool)

(assert (=> bs!14158 m!139165))

(assert (=> b!153436 d!37004))

(declare-fun d!37006 () Bool)

(declare-fun charsToBigInt!1 (List!2675) Int)

(assert (=> d!37006 (= (inv!17 (value!17568 (h!8065 tokens!465))) (= (charsToBigInt!1 (text!3857 (value!17568 (h!8065 tokens!465)))) (value!17560 (value!17568 (h!8065 tokens!465)))))))

(declare-fun bs!14159 () Bool)

(assert (= bs!14159 d!37006))

(declare-fun m!139171 () Bool)

(assert (=> bs!14159 m!139171))

(assert (=> b!153434 d!37006))

(declare-fun d!37010 () Bool)

(declare-fun res!70382 () Bool)

(declare-fun e!92236 () Bool)

(assert (=> d!37010 (=> res!70382 e!92236)))

(assert (=> d!37010 (= res!70382 ((_ is Nil!2668) (list!942 lt!45003)))))

(assert (=> d!37010 (= (forall!461 (list!942 lt!45003) lambda!4014) e!92236)))

(declare-fun b!153992 () Bool)

(declare-fun e!92237 () Bool)

(assert (=> b!153992 (= e!92236 e!92237)))

(declare-fun res!70383 () Bool)

(assert (=> b!153992 (=> (not res!70383) (not e!92237))))

(assert (=> b!153992 (= res!70383 (dynLambda!939 lambda!4014 (h!8065 (list!942 lt!45003))))))

(declare-fun b!153993 () Bool)

(assert (=> b!153993 (= e!92237 (forall!461 (t!25078 (list!942 lt!45003)) lambda!4014))))

(assert (= (and d!37010 (not res!70382)) b!153992))

(assert (= (and b!153992 res!70383) b!153993))

(declare-fun b_lambda!2929 () Bool)

(assert (=> (not b_lambda!2929) (not b!153992)))

(declare-fun m!139173 () Bool)

(assert (=> b!153992 m!139173))

(declare-fun m!139175 () Bool)

(assert (=> b!153993 m!139175))

(assert (=> d!36820 d!37010))

(declare-fun d!37012 () Bool)

(declare-fun list!945 (Conc!753) List!2678)

(assert (=> d!37012 (= (list!942 lt!45003) (list!945 (c!30891 lt!45003)))))

(declare-fun bs!14160 () Bool)

(assert (= bs!14160 d!37012))

(declare-fun m!139177 () Bool)

(assert (=> bs!14160 m!139177))

(assert (=> d!36820 d!37012))

(declare-fun d!37014 () Bool)

(declare-fun lt!45249 () Bool)

(assert (=> d!37014 (= lt!45249 (forall!461 (list!942 lt!45003) lambda!4014))))

(declare-fun forall!465 (Conc!753 Int) Bool)

(assert (=> d!37014 (= lt!45249 (forall!465 (c!30891 lt!45003) lambda!4014))))

(assert (=> d!37014 (= (forall!462 lt!45003 lambda!4014) lt!45249)))

(declare-fun bs!14161 () Bool)

(assert (= bs!14161 d!37014))

(assert (=> bs!14161 m!138381))

(assert (=> bs!14161 m!138381))

(assert (=> bs!14161 m!138383))

(declare-fun m!139179 () Bool)

(assert (=> bs!14161 m!139179))

(assert (=> d!36820 d!37014))

(assert (=> d!36820 d!36830))

(declare-fun d!37016 () Bool)

(assert (=> d!37016 (= (isEmpty!1058 (originalCharacters!508 (h!8065 tokens!465))) ((_ is Nil!2666) (originalCharacters!508 (h!8065 tokens!465))))))

(assert (=> d!36884 d!37016))

(assert (=> bm!6268 d!36952))

(declare-fun d!37018 () Bool)

(declare-fun c!31021 () Bool)

(assert (=> d!37018 (= c!31021 ((_ is Node!752) (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465))))))))

(declare-fun e!92244 () Bool)

(assert (=> d!37018 (= (inv!3468 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465))))) e!92244)))

(declare-fun b!154002 () Bool)

(declare-fun inv!3470 (Conc!752) Bool)

(assert (=> b!154002 (= e!92244 (inv!3470 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465))))))))

(declare-fun b!154003 () Bool)

(declare-fun e!92245 () Bool)

(assert (=> b!154003 (= e!92244 e!92245)))

(declare-fun res!70388 () Bool)

(assert (=> b!154003 (= res!70388 (not ((_ is Leaf!1324) (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465)))))))))

(assert (=> b!154003 (=> res!70388 e!92245)))

(declare-fun b!154004 () Bool)

(declare-fun inv!3471 (Conc!752) Bool)

(assert (=> b!154004 (= e!92245 (inv!3471 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465))))))))

(assert (= (and d!37018 c!31021) b!154002))

(assert (= (and d!37018 (not c!31021)) b!154003))

(assert (= (and b!154003 (not res!70388)) b!154004))

(declare-fun m!139181 () Bool)

(assert (=> b!154002 m!139181))

(declare-fun m!139183 () Bool)

(assert (=> b!154004 m!139183))

(assert (=> b!153543 d!37018))

(declare-fun b!154007 () Bool)

(declare-fun e!92248 () List!2676)

(assert (=> b!154007 (= e!92248 (Cons!2666 (h!8063 (t!25076 (++!576 lt!45002 lt!45001))) (++!576 (t!25076 (t!25076 (++!576 lt!45002 lt!45001))) lt!44998)))))

(declare-fun d!37020 () Bool)

(declare-fun e!92247 () Bool)

(assert (=> d!37020 e!92247))

(declare-fun res!70390 () Bool)

(assert (=> d!37020 (=> (not res!70390) (not e!92247))))

(declare-fun lt!45253 () List!2676)

(assert (=> d!37020 (= res!70390 (= (content!369 lt!45253) ((_ map or) (content!369 (t!25076 (++!576 lt!45002 lt!45001))) (content!369 lt!44998))))))

(assert (=> d!37020 (= lt!45253 e!92248)))

(declare-fun c!31022 () Bool)

(assert (=> d!37020 (= c!31022 ((_ is Nil!2666) (t!25076 (++!576 lt!45002 lt!45001))))))

(assert (=> d!37020 (= (++!576 (t!25076 (++!576 lt!45002 lt!45001)) lt!44998) lt!45253)))

(declare-fun b!154009 () Bool)

(assert (=> b!154009 (= e!92247 (or (not (= lt!44998 Nil!2666)) (= lt!45253 (t!25076 (++!576 lt!45002 lt!45001)))))))

(declare-fun b!154006 () Bool)

(assert (=> b!154006 (= e!92248 lt!44998)))

(declare-fun b!154008 () Bool)

(declare-fun res!70391 () Bool)

(assert (=> b!154008 (=> (not res!70391) (not e!92247))))

(assert (=> b!154008 (= res!70391 (= (size!2263 lt!45253) (+ (size!2263 (t!25076 (++!576 lt!45002 lt!45001))) (size!2263 lt!44998))))))

(assert (= (and d!37020 c!31022) b!154006))

(assert (= (and d!37020 (not c!31022)) b!154007))

(assert (= (and d!37020 res!70390) b!154008))

(assert (= (and b!154008 res!70391) b!154009))

(declare-fun m!139189 () Bool)

(assert (=> b!154007 m!139189))

(declare-fun m!139191 () Bool)

(assert (=> d!37020 m!139191))

(assert (=> d!37020 m!138893))

(assert (=> d!37020 m!138409))

(declare-fun m!139193 () Bool)

(assert (=> b!154008 m!139193))

(declare-fun m!139195 () Bool)

(assert (=> b!154008 m!139195))

(assert (=> b!154008 m!138415))

(assert (=> b!153446 d!37020))

(declare-fun d!37024 () Bool)

(declare-fun lt!45254 () BalanceConc!1512)

(assert (=> d!37024 (= (list!939 lt!45254) (printList!52 thiss!17480 (list!942 (singletonSeq!29 (h!8065 tokens!465)))))))

(assert (=> d!37024 (= lt!45254 (printTailRec!59 thiss!17480 (singletonSeq!29 (h!8065 tokens!465)) 0 (BalanceConc!1513 Empty!752)))))

(assert (=> d!37024 (= (print!96 thiss!17480 (singletonSeq!29 (h!8065 tokens!465))) lt!45254)))

(declare-fun bs!14162 () Bool)

(assert (= bs!14162 d!37024))

(declare-fun m!139197 () Bool)

(assert (=> bs!14162 m!139197))

(assert (=> bs!14162 m!138819))

(declare-fun m!139199 () Bool)

(assert (=> bs!14162 m!139199))

(assert (=> bs!14162 m!139199))

(declare-fun m!139201 () Bool)

(assert (=> bs!14162 m!139201))

(assert (=> bs!14162 m!138819))

(assert (=> bs!14162 m!138823))

(assert (=> b!153682 d!37024))

(declare-fun d!37028 () Bool)

(declare-fun e!92251 () Bool)

(assert (=> d!37028 e!92251))

(declare-fun res!70394 () Bool)

(assert (=> d!37028 (=> (not res!70394) (not e!92251))))

(declare-fun lt!45256 () BalanceConc!1514)

(assert (=> d!37028 (= res!70394 (= (list!942 lt!45256) (Cons!2668 (h!8065 tokens!465) Nil!2668)))))

(assert (=> d!37028 (= lt!45256 (singleton!20 (h!8065 tokens!465)))))

(assert (=> d!37028 (= (singletonSeq!29 (h!8065 tokens!465)) lt!45256)))

(declare-fun b!154014 () Bool)

(assert (=> b!154014 (= e!92251 (isBalanced!209 (c!30891 lt!45256)))))

(assert (= (and d!37028 res!70394) b!154014))

(declare-fun m!139203 () Bool)

(assert (=> d!37028 m!139203))

(declare-fun m!139205 () Bool)

(assert (=> d!37028 m!139205))

(declare-fun m!139207 () Bool)

(assert (=> b!154014 m!139207))

(assert (=> b!153682 d!37028))

(declare-fun d!37030 () Bool)

(declare-fun lt!45277 () BalanceConc!1512)

(declare-fun printListTailRec!39 (LexerInterface!351 List!2678 List!2676) List!2676)

(assert (=> d!37030 (= (list!939 lt!45277) (printListTailRec!39 thiss!17480 (dropList!70 (singletonSeq!29 (h!8065 tokens!465)) 0) (list!939 (BalanceConc!1513 Empty!752))))))

(declare-fun e!92261 () BalanceConc!1512)

(assert (=> d!37030 (= lt!45277 e!92261)))

(declare-fun c!31027 () Bool)

(assert (=> d!37030 (= c!31027 (>= 0 (size!2265 (singletonSeq!29 (h!8065 tokens!465)))))))

(declare-fun e!92262 () Bool)

(assert (=> d!37030 e!92262))

(declare-fun res!70402 () Bool)

(assert (=> d!37030 (=> (not res!70402) (not e!92262))))

(assert (=> d!37030 (= res!70402 (>= 0 0))))

(assert (=> d!37030 (= (printTailRec!59 thiss!17480 (singletonSeq!29 (h!8065 tokens!465)) 0 (BalanceConc!1513 Empty!752)) lt!45277)))

(declare-fun b!154028 () Bool)

(assert (=> b!154028 (= e!92262 (<= 0 (size!2265 (singletonSeq!29 (h!8065 tokens!465)))))))

(declare-fun b!154029 () Bool)

(assert (=> b!154029 (= e!92261 (BalanceConc!1513 Empty!752))))

(declare-fun b!154030 () Bool)

(assert (=> b!154030 (= e!92261 (printTailRec!59 thiss!17480 (singletonSeq!29 (h!8065 tokens!465)) (+ 0 1) (++!578 (BalanceConc!1513 Empty!752) (charsOf!120 (apply!352 (singletonSeq!29 (h!8065 tokens!465)) 0)))))))

(declare-fun lt!45278 () List!2678)

(assert (=> b!154030 (= lt!45278 (list!942 (singletonSeq!29 (h!8065 tokens!465))))))

(declare-fun lt!45274 () Unit!2058)

(assert (=> b!154030 (= lt!45274 (lemmaDropApply!110 lt!45278 0))))

(assert (=> b!154030 (= (head!584 (drop!123 lt!45278 0)) (apply!354 lt!45278 0))))

(declare-fun lt!45276 () Unit!2058)

(assert (=> b!154030 (= lt!45276 lt!45274)))

(declare-fun lt!45275 () List!2678)

(assert (=> b!154030 (= lt!45275 (list!942 (singletonSeq!29 (h!8065 tokens!465))))))

(declare-fun lt!45279 () Unit!2058)

(assert (=> b!154030 (= lt!45279 (lemmaDropTail!102 lt!45275 0))))

(assert (=> b!154030 (= (tail!324 (drop!123 lt!45275 0)) (drop!123 lt!45275 (+ 0 1)))))

(declare-fun lt!45280 () Unit!2058)

(assert (=> b!154030 (= lt!45280 lt!45279)))

(assert (= (and d!37030 res!70402) b!154028))

(assert (= (and d!37030 c!31027) b!154029))

(assert (= (and d!37030 (not c!31027)) b!154030))

(declare-fun m!139227 () Bool)

(assert (=> d!37030 m!139227))

(declare-fun m!139229 () Bool)

(assert (=> d!37030 m!139229))

(declare-fun m!139231 () Bool)

(assert (=> d!37030 m!139231))

(assert (=> d!37030 m!138819))

(assert (=> d!37030 m!139227))

(assert (=> d!37030 m!138819))

(declare-fun m!139233 () Bool)

(assert (=> d!37030 m!139233))

(assert (=> d!37030 m!139229))

(declare-fun m!139235 () Bool)

(assert (=> d!37030 m!139235))

(assert (=> b!154028 m!138819))

(assert (=> b!154028 m!139233))

(declare-fun m!139237 () Bool)

(assert (=> b!154030 m!139237))

(declare-fun m!139239 () Bool)

(assert (=> b!154030 m!139239))

(declare-fun m!139241 () Bool)

(assert (=> b!154030 m!139241))

(declare-fun m!139243 () Bool)

(assert (=> b!154030 m!139243))

(declare-fun m!139245 () Bool)

(assert (=> b!154030 m!139245))

(assert (=> b!154030 m!139245))

(declare-fun m!139247 () Bool)

(assert (=> b!154030 m!139247))

(declare-fun m!139249 () Bool)

(assert (=> b!154030 m!139249))

(assert (=> b!154030 m!138819))

(assert (=> b!154030 m!139243))

(assert (=> b!154030 m!138819))

(assert (=> b!154030 m!139247))

(declare-fun m!139251 () Bool)

(assert (=> b!154030 m!139251))

(assert (=> b!154030 m!139237))

(assert (=> b!154030 m!138819))

(assert (=> b!154030 m!139199))

(declare-fun m!139253 () Bool)

(assert (=> b!154030 m!139253))

(declare-fun m!139255 () Bool)

(assert (=> b!154030 m!139255))

(declare-fun m!139257 () Bool)

(assert (=> b!154030 m!139257))

(declare-fun m!139259 () Bool)

(assert (=> b!154030 m!139259))

(assert (=> b!154030 m!139255))

(assert (=> b!153682 d!37030))

(declare-fun d!37040 () Bool)

(assert (=> d!37040 (isDefined!103 (maxPrefix!111 thiss!17480 rules!1920 (++!576 call!6312 lt!45181)))))

(declare-fun lt!45333 () Unit!2058)

(declare-fun e!92295 () Unit!2058)

(assert (=> d!37040 (= lt!45333 e!92295)))

(declare-fun c!31040 () Bool)

(assert (=> d!37040 (= c!31040 (isEmpty!1063 (maxPrefix!111 thiss!17480 rules!1920 (++!576 call!6312 lt!45181))))))

(declare-fun lt!45330 () Unit!2058)

(declare-fun lt!45335 () Unit!2058)

(assert (=> d!37040 (= lt!45330 lt!45335)))

(declare-fun e!92294 () Bool)

(assert (=> d!37040 e!92294))

(declare-fun res!70425 () Bool)

(assert (=> d!37040 (=> (not res!70425) (not e!92294))))

(declare-fun lt!45342 () Token!674)

(declare-datatypes ((Option!250 0))(
  ( (None!249) (Some!249 (v!13638 Rule!730)) )
))
(declare-fun isDefined!104 (Option!250) Bool)

(declare-fun getRuleFromTag!11 (LexerInterface!351 List!2677 String!3515) Option!250)

(assert (=> d!37040 (= res!70425 (isDefined!104 (getRuleFromTag!11 thiss!17480 rules!1920 (tag!643 (rule!972 lt!45342)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!11 (LexerInterface!351 List!2677 List!2676 Token!674) Unit!2058)

(assert (=> d!37040 (= lt!45335 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!11 thiss!17480 rules!1920 call!6312 lt!45342))))

(declare-fun lt!45340 () Unit!2058)

(declare-fun lt!45345 () Unit!2058)

(assert (=> d!37040 (= lt!45340 lt!45345)))

(declare-fun lt!45331 () List!2676)

(assert (=> d!37040 (isPrefix!212 lt!45331 (++!576 call!6312 lt!45181))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!11 (List!2676 List!2676 List!2676) Unit!2058)

(assert (=> d!37040 (= lt!45345 (lemmaPrefixStaysPrefixWhenAddingToSuffix!11 lt!45331 call!6312 lt!45181))))

(assert (=> d!37040 (= lt!45331 (list!939 (charsOf!120 lt!45342)))))

(declare-fun lt!45334 () Unit!2058)

(declare-fun lt!45332 () Unit!2058)

(assert (=> d!37040 (= lt!45334 lt!45332)))

(declare-fun lt!45339 () List!2676)

(declare-fun lt!45337 () List!2676)

(assert (=> d!37040 (isPrefix!212 lt!45339 (++!576 lt!45339 lt!45337))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!115 (List!2676 List!2676) Unit!2058)

(assert (=> d!37040 (= lt!45332 (lemmaConcatTwoListThenFirstIsPrefix!115 lt!45339 lt!45337))))

(assert (=> d!37040 (= lt!45337 (_2!1511 (get!719 (maxPrefix!111 thiss!17480 rules!1920 call!6312))))))

(assert (=> d!37040 (= lt!45339 (list!939 (charsOf!120 lt!45342)))))

(assert (=> d!37040 (= lt!45342 (head!584 (list!942 (_1!1513 (lex!171 thiss!17480 rules!1920 (seqFromList!307 call!6312))))))))

(assert (=> d!37040 (not (isEmpty!1056 rules!1920))))

(assert (=> d!37040 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!18 thiss!17480 rules!1920 call!6312 lt!45181) lt!45333)))

(declare-fun b!154085 () Bool)

(declare-fun Unit!2074 () Unit!2058)

(assert (=> b!154085 (= e!92295 Unit!2074)))

(declare-fun lt!45336 () List!2676)

(assert (=> b!154085 (= lt!45336 (++!576 call!6312 lt!45181))))

(declare-fun lt!45344 () Unit!2058)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!11 (LexerInterface!351 Rule!730 List!2677 List!2676) Unit!2058)

(assert (=> b!154085 (= lt!45344 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!11 thiss!17480 (rule!972 lt!45342) rules!1920 lt!45336))))

(assert (=> b!154085 (isEmpty!1063 (maxPrefixOneRule!56 thiss!17480 (rule!972 lt!45342) lt!45336))))

(declare-fun lt!45338 () Unit!2058)

(assert (=> b!154085 (= lt!45338 lt!45344)))

(declare-fun lt!45343 () List!2676)

(assert (=> b!154085 (= lt!45343 (list!939 (charsOf!120 lt!45342)))))

(declare-fun lt!45346 () Unit!2058)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!11 (LexerInterface!351 Rule!730 List!2676 List!2676) Unit!2058)

(assert (=> b!154085 (= lt!45346 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!11 thiss!17480 (rule!972 lt!45342) lt!45343 (++!576 call!6312 lt!45181)))))

(assert (=> b!154085 (not (matchR!68 (regex!465 (rule!972 lt!45342)) lt!45343))))

(declare-fun lt!45341 () Unit!2058)

(assert (=> b!154085 (= lt!45341 lt!45346)))

(assert (=> b!154085 false))

(declare-fun b!154083 () Bool)

(declare-fun res!70424 () Bool)

(assert (=> b!154083 (=> (not res!70424) (not e!92294))))

(declare-fun get!720 (Option!250) Rule!730)

(assert (=> b!154083 (= res!70424 (matchR!68 (regex!465 (get!720 (getRuleFromTag!11 thiss!17480 rules!1920 (tag!643 (rule!972 lt!45342))))) (list!939 (charsOf!120 lt!45342))))))

(declare-fun b!154084 () Bool)

(assert (=> b!154084 (= e!92294 (= (rule!972 lt!45342) (get!720 (getRuleFromTag!11 thiss!17480 rules!1920 (tag!643 (rule!972 lt!45342))))))))

(declare-fun b!154086 () Bool)

(declare-fun Unit!2075 () Unit!2058)

(assert (=> b!154086 (= e!92295 Unit!2075)))

(assert (= (and d!37040 res!70425) b!154083))

(assert (= (and b!154083 res!70424) b!154084))

(assert (= (and d!37040 c!31040) b!154085))

(assert (= (and d!37040 (not c!31040)) b!154086))

(declare-fun m!139345 () Bool)

(assert (=> d!37040 m!139345))

(declare-fun m!139347 () Bool)

(assert (=> d!37040 m!139347))

(declare-fun m!139349 () Bool)

(assert (=> d!37040 m!139349))

(declare-fun m!139351 () Bool)

(assert (=> d!37040 m!139351))

(declare-fun m!139353 () Bool)

(assert (=> d!37040 m!139353))

(declare-fun m!139355 () Bool)

(assert (=> d!37040 m!139355))

(assert (=> d!37040 m!139345))

(declare-fun m!139357 () Bool)

(assert (=> d!37040 m!139357))

(declare-fun m!139359 () Bool)

(assert (=> d!37040 m!139359))

(assert (=> d!37040 m!139351))

(declare-fun m!139361 () Bool)

(assert (=> d!37040 m!139361))

(declare-fun m!139363 () Bool)

(assert (=> d!37040 m!139363))

(declare-fun m!139365 () Bool)

(assert (=> d!37040 m!139365))

(assert (=> d!37040 m!138317))

(assert (=> d!37040 m!139363))

(declare-fun m!139367 () Bool)

(assert (=> d!37040 m!139367))

(declare-fun m!139369 () Bool)

(assert (=> d!37040 m!139369))

(declare-fun m!139371 () Bool)

(assert (=> d!37040 m!139371))

(declare-fun m!139373 () Bool)

(assert (=> d!37040 m!139373))

(assert (=> d!37040 m!139369))

(assert (=> d!37040 m!139353))

(declare-fun m!139377 () Bool)

(assert (=> d!37040 m!139377))

(declare-fun m!139379 () Bool)

(assert (=> d!37040 m!139379))

(assert (=> d!37040 m!139353))

(assert (=> d!37040 m!139349))

(declare-fun m!139381 () Bool)

(assert (=> d!37040 m!139381))

(assert (=> d!37040 m!139379))

(assert (=> d!37040 m!139359))

(declare-fun m!139385 () Bool)

(assert (=> d!37040 m!139385))

(assert (=> d!37040 m!139379))

(declare-fun m!139389 () Bool)

(assert (=> d!37040 m!139389))

(declare-fun m!139391 () Bool)

(assert (=> b!154085 m!139391))

(assert (=> b!154085 m!139345))

(assert (=> b!154085 m!139347))

(declare-fun m!139393 () Bool)

(assert (=> b!154085 m!139393))

(declare-fun m!139395 () Bool)

(assert (=> b!154085 m!139395))

(declare-fun m!139397 () Bool)

(assert (=> b!154085 m!139397))

(assert (=> b!154085 m!139379))

(assert (=> b!154085 m!139345))

(assert (=> b!154085 m!139395))

(assert (=> b!154085 m!139379))

(declare-fun m!139399 () Bool)

(assert (=> b!154085 m!139399))

(assert (=> b!154083 m!139345))

(assert (=> b!154083 m!139347))

(assert (=> b!154083 m!139347))

(declare-fun m!139401 () Bool)

(assert (=> b!154083 m!139401))

(assert (=> b!154083 m!139369))

(assert (=> b!154083 m!139369))

(declare-fun m!139403 () Bool)

(assert (=> b!154083 m!139403))

(assert (=> b!154083 m!139345))

(assert (=> b!154084 m!139369))

(assert (=> b!154084 m!139369))

(assert (=> b!154084 m!139403))

(assert (=> b!153682 d!37040))

(declare-fun d!37084 () Bool)

(assert (=> d!37084 (= (list!939 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465)))) (list!940 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465))))))))

(declare-fun bs!14187 () Bool)

(assert (= bs!14187 d!37084))

(declare-fun m!139405 () Bool)

(assert (=> bs!14187 m!139405))

(assert (=> b!153580 d!37084))

(declare-fun bs!14196 () Bool)

(declare-fun b!154101 () Bool)

(assert (= bs!14196 (and b!154101 d!36870)))

(declare-fun lambda!4062 () Int)

(assert (=> bs!14196 (= lambda!4062 lambda!4023)))

(declare-fun bs!14197 () Bool)

(assert (= bs!14197 (and b!154101 d!36896)))

(assert (=> bs!14197 (not (= lambda!4062 lambda!4037))))

(declare-fun bs!14198 () Bool)

(assert (= bs!14198 (and b!154101 b!153336)))

(assert (=> bs!14198 (not (= lambda!4062 lambda!4006))))

(declare-fun bs!14199 () Bool)

(assert (= bs!14199 (and b!154101 b!153528)))

(assert (=> bs!14199 (= lambda!4062 lambda!4020)))

(declare-fun bs!14200 () Bool)

(assert (= bs!14200 (and b!154101 d!36820)))

(assert (=> bs!14200 (= lambda!4062 lambda!4014)))

(declare-fun bs!14201 () Bool)

(assert (= bs!14201 (and b!154101 b!153681)))

(assert (=> bs!14201 (= lambda!4062 lambda!4042)))

(declare-fun bs!14202 () Bool)

(assert (= bs!14202 (and b!154101 b!153666)))

(assert (=> bs!14202 (= lambda!4062 lambda!4038)))

(declare-fun bs!14203 () Bool)

(assert (= bs!14203 (and b!154101 b!153887)))

(assert (=> bs!14203 (= lambda!4062 lambda!4047)))

(declare-fun b!154110 () Bool)

(declare-fun e!92310 () Bool)

(assert (=> b!154110 (= e!92310 true)))

(declare-fun b!154109 () Bool)

(declare-fun e!92309 () Bool)

(assert (=> b!154109 (= e!92309 e!92310)))

(declare-fun b!154108 () Bool)

(declare-fun e!92308 () Bool)

(assert (=> b!154108 (= e!92308 e!92309)))

(assert (=> b!154101 e!92308))

(assert (= b!154109 b!154110))

(assert (= b!154108 b!154109))

(assert (= (and b!154101 ((_ is Cons!2667) rules!1920)) b!154108))

(assert (=> b!154110 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4062))))

(assert (=> b!154110 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4062))))

(assert (=> b!154101 true))

(declare-fun bm!6328 () Bool)

(declare-fun c!31048 () Bool)

(declare-fun c!31045 () Bool)

(assert (=> bm!6328 (= c!31048 c!31045)))

(declare-fun e!92303 () List!2676)

(declare-fun lt!45355 () List!2676)

(declare-fun call!6334 () List!2676)

(declare-fun call!6333 () List!2676)

(assert (=> bm!6328 (= call!6334 (++!576 e!92303 (ite c!31045 lt!45355 call!6333)))))

(declare-fun bm!6329 () Bool)

(declare-fun call!6335 () BalanceConc!1512)

(assert (=> bm!6329 (= call!6335 (charsOf!120 (h!8065 (dropList!70 lt!45003 0))))))

(declare-fun b!154098 () Bool)

(declare-fun e!92304 () List!2676)

(assert (=> b!154098 (= e!92304 (++!576 call!6334 lt!45355))))

(declare-fun b!154099 () Bool)

(declare-fun c!31047 () Bool)

(declare-fun lt!45359 () Option!247)

(assert (=> b!154099 (= c!31047 (and ((_ is Some!246) lt!45359) (not (= (_1!1511 (v!13631 lt!45359)) (h!8065 (dropList!70 lt!45003 0))))))))

(declare-fun e!92305 () List!2676)

(assert (=> b!154099 (= e!92305 e!92304)))

(declare-fun b!154100 () Bool)

(declare-fun e!92307 () BalanceConc!1512)

(declare-fun call!6337 () BalanceConc!1512)

(assert (=> b!154100 (= e!92307 call!6337)))

(declare-fun bm!6330 () Bool)

(declare-fun call!6336 () List!2676)

(assert (=> bm!6330 (= call!6333 call!6336)))

(declare-fun c!31046 () Bool)

(assert (=> bm!6330 (= c!31046 c!31047)))

(declare-fun e!92306 () List!2676)

(assert (=> b!154101 (= e!92306 e!92305)))

(declare-fun lt!45357 () Unit!2058)

(assert (=> b!154101 (= lt!45357 (forallContained!54 (dropList!70 lt!45003 0) lambda!4062 (h!8065 (dropList!70 lt!45003 0))))))

(assert (=> b!154101 (= lt!45355 (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 (t!25078 (dropList!70 lt!45003 0)) separatorToken!170))))

(assert (=> b!154101 (= lt!45359 (maxPrefix!111 thiss!17480 rules!1920 (++!576 (list!939 (charsOf!120 (h!8065 (dropList!70 lt!45003 0)))) lt!45355)))))

(assert (=> b!154101 (= c!31045 (and ((_ is Some!246) lt!45359) (= (_1!1511 (v!13631 lt!45359)) (h!8065 (dropList!70 lt!45003 0)))))))

(declare-fun b!154102 () Bool)

(assert (=> b!154102 (= e!92304 Nil!2666)))

(assert (=> b!154102 (= (print!96 thiss!17480 (singletonSeq!29 (h!8065 (dropList!70 lt!45003 0)))) (printTailRec!59 thiss!17480 (singletonSeq!29 (h!8065 (dropList!70 lt!45003 0))) 0 (BalanceConc!1513 Empty!752)))))

(declare-fun lt!45356 () Unit!2058)

(declare-fun Unit!2076 () Unit!2058)

(assert (=> b!154102 (= lt!45356 Unit!2076)))

(declare-fun lt!45360 () Unit!2058)

(assert (=> b!154102 (= lt!45360 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!18 thiss!17480 rules!1920 call!6333 lt!45355))))

(assert (=> b!154102 false))

(declare-fun lt!45358 () Unit!2058)

(declare-fun Unit!2077 () Unit!2058)

(assert (=> b!154102 (= lt!45358 Unit!2077)))

(declare-fun b!154103 () Bool)

(assert (=> b!154103 (= e!92303 call!6336)))

(declare-fun b!154104 () Bool)

(assert (=> b!154104 (= e!92305 call!6334)))

(declare-fun b!154105 () Bool)

(assert (=> b!154105 (= e!92307 (charsOf!120 separatorToken!170))))

(declare-fun b!154106 () Bool)

(assert (=> b!154106 (= e!92306 Nil!2666)))

(declare-fun d!37086 () Bool)

(declare-fun c!31049 () Bool)

(assert (=> d!37086 (= c!31049 ((_ is Cons!2668) (dropList!70 lt!45003 0)))))

(assert (=> d!37086 (= (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 (dropList!70 lt!45003 0) separatorToken!170) e!92306)))

(declare-fun bm!6331 () Bool)

(assert (=> bm!6331 (= call!6336 (list!939 (ite c!31045 call!6335 e!92307)))))

(declare-fun b!154107 () Bool)

(assert (=> b!154107 (= e!92303 (list!939 call!6337))))

(declare-fun bm!6332 () Bool)

(assert (=> bm!6332 (= call!6337 call!6335)))

(assert (= (and d!37086 c!31049) b!154101))

(assert (= (and d!37086 (not c!31049)) b!154106))

(assert (= (and b!154101 c!31045) b!154104))

(assert (= (and b!154101 (not c!31045)) b!154099))

(assert (= (and b!154099 c!31047) b!154098))

(assert (= (and b!154099 (not c!31047)) b!154102))

(assert (= (or b!154098 b!154102) bm!6332))

(assert (= (or b!154098 b!154102) bm!6330))

(assert (= (and bm!6330 c!31046) b!154105))

(assert (= (and bm!6330 (not c!31046)) b!154100))

(assert (= (or b!154104 bm!6332) bm!6329))

(assert (= (or b!154104 bm!6330) bm!6331))

(assert (= (or b!154104 b!154098) bm!6328))

(assert (= (and bm!6328 c!31048) b!154103))

(assert (= (and bm!6328 (not c!31048)) b!154107))

(declare-fun m!139435 () Bool)

(assert (=> bm!6331 m!139435))

(declare-fun m!139437 () Bool)

(assert (=> b!154107 m!139437))

(declare-fun m!139439 () Bool)

(assert (=> b!154098 m!139439))

(declare-fun m!139441 () Bool)

(assert (=> bm!6328 m!139441))

(declare-fun m!139443 () Bool)

(assert (=> bm!6329 m!139443))

(assert (=> b!154105 m!138295))

(assert (=> b!154101 m!139443))

(declare-fun m!139445 () Bool)

(assert (=> b!154101 m!139445))

(declare-fun m!139447 () Bool)

(assert (=> b!154101 m!139447))

(assert (=> b!154101 m!139445))

(declare-fun m!139449 () Bool)

(assert (=> b!154101 m!139449))

(assert (=> b!154101 m!139443))

(assert (=> b!154101 m!138789))

(declare-fun m!139451 () Bool)

(assert (=> b!154101 m!139451))

(assert (=> b!154101 m!139449))

(declare-fun m!139453 () Bool)

(assert (=> b!154101 m!139453))

(declare-fun m!139455 () Bool)

(assert (=> b!154102 m!139455))

(assert (=> b!154102 m!139455))

(declare-fun m!139457 () Bool)

(assert (=> b!154102 m!139457))

(assert (=> b!154102 m!139455))

(declare-fun m!139459 () Bool)

(assert (=> b!154102 m!139459))

(declare-fun m!139461 () Bool)

(assert (=> b!154102 m!139461))

(assert (=> d!36896 d!37086))

(declare-fun d!37090 () Bool)

(assert (=> d!37090 (= (dropList!70 lt!45003 0) (drop!123 (list!945 (c!30891 lt!45003)) 0))))

(declare-fun bs!14205 () Bool)

(assert (= bs!14205 d!37090))

(assert (=> bs!14205 m!139177))

(assert (=> bs!14205 m!139177))

(declare-fun m!139473 () Bool)

(assert (=> bs!14205 m!139473))

(assert (=> d!36896 d!37090))

(declare-fun d!37098 () Bool)

(declare-fun lt!45369 () Int)

(declare-fun size!2267 (List!2678) Int)

(assert (=> d!37098 (= lt!45369 (size!2267 (list!942 lt!45003)))))

(declare-fun size!2268 (Conc!753) Int)

(assert (=> d!37098 (= lt!45369 (size!2268 (c!30891 lt!45003)))))

(assert (=> d!37098 (= (size!2265 lt!45003) lt!45369)))

(declare-fun bs!14206 () Bool)

(assert (= bs!14206 d!37098))

(assert (=> bs!14206 m!138381))

(assert (=> bs!14206 m!138381))

(declare-fun m!139477 () Bool)

(assert (=> bs!14206 m!139477))

(declare-fun m!139479 () Bool)

(assert (=> bs!14206 m!139479))

(assert (=> d!36896 d!37098))

(declare-fun d!37102 () Bool)

(assert (=> d!37102 (forall!461 (dropList!70 lt!45003 0) lambda!4037)))

(declare-fun lt!45372 () Unit!2058)

(declare-fun choose!1756 (List!2678 List!2678 Int) Unit!2058)

(assert (=> d!37102 (= lt!45372 (choose!1756 (list!942 lt!45003) (dropList!70 lt!45003 0) lambda!4037))))

(assert (=> d!37102 (forall!461 (list!942 lt!45003) lambda!4037)))

(assert (=> d!37102 (= (lemmaContentSubsetPreservesForall!14 (list!942 lt!45003) (dropList!70 lt!45003 0) lambda!4037) lt!45372)))

(declare-fun bs!14207 () Bool)

(assert (= bs!14207 d!37102))

(assert (=> bs!14207 m!138789))

(declare-fun m!139481 () Bool)

(assert (=> bs!14207 m!139481))

(assert (=> bs!14207 m!138381))

(assert (=> bs!14207 m!138789))

(declare-fun m!139483 () Bool)

(assert (=> bs!14207 m!139483))

(assert (=> bs!14207 m!138381))

(declare-fun m!139485 () Bool)

(assert (=> bs!14207 m!139485))

(assert (=> d!36896 d!37102))

(assert (=> d!36896 d!37012))

(declare-fun d!37104 () Bool)

(assert (=> d!37104 (= (list!939 lt!45173) (list!940 (c!30889 lt!45173)))))

(declare-fun bs!14208 () Bool)

(assert (= bs!14208 d!37104))

(declare-fun m!139487 () Bool)

(assert (=> bs!14208 m!139487))

(assert (=> d!36896 d!37104))

(declare-fun d!37106 () Bool)

(declare-fun charsToInt!0 (List!2675) (_ BitVec 32))

(assert (=> d!37106 (= (inv!16 (value!17568 separatorToken!170)) (= (charsToInt!0 (text!3856 (value!17568 separatorToken!170))) (value!17559 (value!17568 separatorToken!170))))))

(declare-fun bs!14209 () Bool)

(assert (= bs!14209 d!37106))

(declare-fun m!139489 () Bool)

(assert (=> bs!14209 m!139489))

(assert (=> b!153430 d!37106))

(declare-fun d!37108 () Bool)

(assert (=> d!37108 (= (list!939 (ite c!30972 call!6314 e!92042)) (list!940 (c!30889 (ite c!30972 call!6314 e!92042))))))

(declare-fun bs!14210 () Bool)

(assert (= bs!14210 d!37108))

(declare-fun m!139491 () Bool)

(assert (=> bs!14210 m!139491))

(assert (=> bm!6310 d!37108))

(declare-fun d!37110 () Bool)

(declare-fun res!70438 () Bool)

(declare-fun e!92320 () Bool)

(assert (=> d!37110 (=> res!70438 e!92320)))

(assert (=> d!37110 (= res!70438 ((_ is Nil!2667) rules!1920))))

(assert (=> d!37110 (= (noDuplicateTag!126 thiss!17480 rules!1920 Nil!2669) e!92320)))

(declare-fun b!154129 () Bool)

(declare-fun e!92321 () Bool)

(assert (=> b!154129 (= e!92320 e!92321)))

(declare-fun res!70439 () Bool)

(assert (=> b!154129 (=> (not res!70439) (not e!92321))))

(declare-fun contains!424 (List!2679 String!3515) Bool)

(assert (=> b!154129 (= res!70439 (not (contains!424 Nil!2669 (tag!643 (h!8064 rules!1920)))))))

(declare-fun b!154130 () Bool)

(assert (=> b!154130 (= e!92321 (noDuplicateTag!126 thiss!17480 (t!25077 rules!1920) (Cons!2669 (tag!643 (h!8064 rules!1920)) Nil!2669)))))

(assert (= (and d!37110 (not res!70438)) b!154129))

(assert (= (and b!154129 res!70439) b!154130))

(declare-fun m!139493 () Bool)

(assert (=> b!154129 m!139493))

(declare-fun m!139495 () Bool)

(assert (=> b!154130 m!139495))

(assert (=> b!153575 d!37110))

(declare-fun d!37112 () Bool)

(declare-fun c!31056 () Bool)

(assert (=> d!37112 (= c!31056 ((_ is Nil!2666) lt!45023))))

(declare-fun e!92322 () (InoxSet C!2300))

(assert (=> d!37112 (= (content!369 lt!45023) e!92322)))

(declare-fun b!154131 () Bool)

(assert (=> b!154131 (= e!92322 ((as const (Array C!2300 Bool)) false))))

(declare-fun b!154132 () Bool)

(assert (=> b!154132 (= e!92322 ((_ map or) (store ((as const (Array C!2300 Bool)) false) (h!8063 lt!45023) true) (content!369 (t!25076 lt!45023))))))

(assert (= (and d!37112 c!31056) b!154131))

(assert (= (and d!37112 (not c!31056)) b!154132))

(declare-fun m!139497 () Bool)

(assert (=> b!154132 m!139497))

(declare-fun m!139499 () Bool)

(assert (=> b!154132 m!139499))

(assert (=> d!36840 d!37112))

(assert (=> d!36840 d!36968))

(declare-fun d!37114 () Bool)

(declare-fun c!31057 () Bool)

(assert (=> d!37114 (= c!31057 ((_ is Nil!2666) lt!45001))))

(declare-fun e!92323 () (InoxSet C!2300))

(assert (=> d!37114 (= (content!369 lt!45001) e!92323)))

(declare-fun b!154133 () Bool)

(assert (=> b!154133 (= e!92323 ((as const (Array C!2300 Bool)) false))))

(declare-fun b!154134 () Bool)

(assert (=> b!154134 (= e!92323 ((_ map or) (store ((as const (Array C!2300 Bool)) false) (h!8063 lt!45001) true) (content!369 (t!25076 lt!45001))))))

(assert (= (and d!37114 c!31057) b!154133))

(assert (= (and d!37114 (not c!31057)) b!154134))

(declare-fun m!139501 () Bool)

(assert (=> b!154134 m!139501))

(declare-fun m!139503 () Bool)

(assert (=> b!154134 m!139503))

(assert (=> d!36840 d!37114))

(declare-fun d!37116 () Bool)

(assert (=> d!37116 (= (list!939 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170))) (list!940 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170)))))))

(declare-fun bs!14211 () Bool)

(assert (= bs!14211 d!37116))

(declare-fun m!139505 () Bool)

(assert (=> bs!14211 m!139505))

(assert (=> b!153582 d!37116))

(declare-fun d!37118 () Bool)

(assert (=> d!37118 (= (inv!3461 (tag!643 (h!8064 (t!25077 rules!1920)))) (= (mod (str.len (value!17567 (tag!643 (h!8064 (t!25077 rules!1920))))) 2) 0))))

(assert (=> b!153768 d!37118))

(declare-fun d!37120 () Bool)

(declare-fun res!70440 () Bool)

(declare-fun e!92324 () Bool)

(assert (=> d!37120 (=> (not res!70440) (not e!92324))))

(assert (=> d!37120 (= res!70440 (semiInverseModEq!160 (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toValue!1104 (transformation!465 (h!8064 (t!25077 rules!1920))))))))

(assert (=> d!37120 (= (inv!3464 (transformation!465 (h!8064 (t!25077 rules!1920)))) e!92324)))

(declare-fun b!154135 () Bool)

(assert (=> b!154135 (= e!92324 (equivClasses!143 (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toValue!1104 (transformation!465 (h!8064 (t!25077 rules!1920))))))))

(assert (= (and d!37120 res!70440) b!154135))

(declare-fun m!139507 () Bool)

(assert (=> d!37120 m!139507))

(declare-fun m!139509 () Bool)

(assert (=> b!154135 m!139509))

(assert (=> b!153768 d!37120))

(declare-fun d!37122 () Bool)

(assert (=> d!37122 (= (isEmpty!1058 (originalCharacters!508 separatorToken!170)) ((_ is Nil!2666) (originalCharacters!508 separatorToken!170)))))

(assert (=> d!36886 d!37122))

(declare-fun d!37124 () Bool)

(assert (=> d!37124 (= (inv!3461 (tag!643 (rule!972 (h!8065 (t!25078 tokens!465))))) (= (mod (str.len (value!17567 (tag!643 (rule!972 (h!8065 (t!25078 tokens!465)))))) 2) 0))))

(assert (=> b!153811 d!37124))

(declare-fun d!37126 () Bool)

(declare-fun res!70441 () Bool)

(declare-fun e!92325 () Bool)

(assert (=> d!37126 (=> (not res!70441) (not e!92325))))

(assert (=> d!37126 (= res!70441 (semiInverseModEq!160 (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toValue!1104 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465)))))))))

(assert (=> d!37126 (= (inv!3464 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) e!92325)))

(declare-fun b!154136 () Bool)

(assert (=> b!154136 (= e!92325 (equivClasses!143 (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toValue!1104 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465)))))))))

(assert (= (and d!37126 res!70441) b!154136))

(declare-fun m!139511 () Bool)

(assert (=> d!37126 m!139511))

(declare-fun m!139513 () Bool)

(assert (=> b!154136 m!139513))

(assert (=> b!153811 d!37126))

(assert (=> d!36888 d!36944))

(declare-fun d!37128 () Bool)

(assert (=> d!37128 (= (list!942 (_1!1513 (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170))))) (list!945 (c!30891 (_1!1513 (lex!171 thiss!17480 rules!1920 (print!96 thiss!17480 (singletonSeq!29 separatorToken!170)))))))))

(declare-fun bs!14212 () Bool)

(assert (= bs!14212 d!37128))

(declare-fun m!139515 () Bool)

(assert (=> bs!14212 m!139515))

(assert (=> d!36888 d!37128))

(assert (=> d!36888 d!36940))

(declare-fun d!37130 () Bool)

(assert (=> d!37130 (= (list!942 (singletonSeq!29 separatorToken!170)) (list!945 (c!30891 (singletonSeq!29 separatorToken!170))))))

(declare-fun bs!14213 () Bool)

(assert (= bs!14213 d!37130))

(declare-fun m!139517 () Bool)

(assert (=> bs!14213 m!139517))

(assert (=> d!36888 d!37130))

(assert (=> d!36888 d!36942))

(assert (=> d!36888 d!36830))

(declare-fun d!37132 () Bool)

(declare-fun lt!45376 () Int)

(assert (=> d!37132 (= lt!45376 (size!2267 (list!942 (_1!1513 lt!45086))))))

(assert (=> d!37132 (= lt!45376 (size!2268 (c!30891 (_1!1513 lt!45086))))))

(assert (=> d!37132 (= (size!2265 (_1!1513 lt!45086)) lt!45376)))

(declare-fun bs!14214 () Bool)

(assert (= bs!14214 d!37132))

(assert (=> bs!14214 m!139103))

(assert (=> bs!14214 m!139103))

(declare-fun m!139519 () Bool)

(assert (=> bs!14214 m!139519))

(declare-fun m!139521 () Bool)

(assert (=> bs!14214 m!139521))

(assert (=> d!36888 d!37132))

(declare-fun d!37134 () Bool)

(declare-fun lt!45381 () Int)

(assert (=> d!37134 (>= lt!45381 0)))

(declare-fun e!92332 () Int)

(assert (=> d!37134 (= lt!45381 e!92332)))

(declare-fun c!31061 () Bool)

(assert (=> d!37134 (= c!31061 ((_ is Nil!2666) lt!45080))))

(assert (=> d!37134 (= (size!2263 lt!45080) lt!45381)))

(declare-fun b!154150 () Bool)

(assert (=> b!154150 (= e!92332 0)))

(declare-fun b!154151 () Bool)

(assert (=> b!154151 (= e!92332 (+ 1 (size!2263 (t!25076 lt!45080))))))

(assert (= (and d!37134 c!31061) b!154150))

(assert (= (and d!37134 (not c!31061)) b!154151))

(declare-fun m!139547 () Bool)

(assert (=> b!154151 m!139547))

(assert (=> b!153567 d!37134))

(declare-fun d!37140 () Bool)

(declare-fun lt!45382 () Int)

(assert (=> d!37140 (>= lt!45382 0)))

(declare-fun e!92333 () Int)

(assert (=> d!37140 (= lt!45382 e!92333)))

(declare-fun c!31062 () Bool)

(assert (=> d!37140 (= c!31062 ((_ is Nil!2666) lt!45002))))

(assert (=> d!37140 (= (size!2263 lt!45002) lt!45382)))

(declare-fun b!154152 () Bool)

(assert (=> b!154152 (= e!92333 0)))

(declare-fun b!154153 () Bool)

(assert (=> b!154153 (= e!92333 (+ 1 (size!2263 (t!25076 lt!45002))))))

(assert (= (and d!37140 c!31062) b!154152))

(assert (= (and d!37140 (not c!31062)) b!154153))

(assert (=> b!154153 m!139077))

(assert (=> b!153567 d!37140))

(declare-fun d!37144 () Bool)

(declare-fun lt!45383 () Int)

(assert (=> d!37144 (>= lt!45383 0)))

(declare-fun e!92334 () Int)

(assert (=> d!37144 (= lt!45383 e!92334)))

(declare-fun c!31063 () Bool)

(assert (=> d!37144 (= c!31063 ((_ is Nil!2666) lt!44997))))

(assert (=> d!37144 (= (size!2263 lt!44997) lt!45383)))

(declare-fun b!154154 () Bool)

(assert (=> b!154154 (= e!92334 0)))

(declare-fun b!154155 () Bool)

(assert (=> b!154155 (= e!92334 (+ 1 (size!2263 (t!25076 lt!44997))))))

(assert (= (and d!37144 c!31063) b!154154))

(assert (= (and d!37144 (not c!31063)) b!154155))

(declare-fun m!139563 () Bool)

(assert (=> b!154155 m!139563))

(assert (=> b!153567 d!37144))

(declare-fun b!154157 () Bool)

(declare-fun e!92336 () List!2676)

(assert (=> b!154157 (= e!92336 (Cons!2666 (h!8063 (t!25076 lt!45001)) (++!576 (t!25076 (t!25076 lt!45001)) lt!44998)))))

(declare-fun d!37146 () Bool)

(declare-fun e!92335 () Bool)

(assert (=> d!37146 e!92335))

(declare-fun res!70449 () Bool)

(assert (=> d!37146 (=> (not res!70449) (not e!92335))))

(declare-fun lt!45384 () List!2676)

(assert (=> d!37146 (= res!70449 (= (content!369 lt!45384) ((_ map or) (content!369 (t!25076 lt!45001)) (content!369 lt!44998))))))

(assert (=> d!37146 (= lt!45384 e!92336)))

(declare-fun c!31064 () Bool)

(assert (=> d!37146 (= c!31064 ((_ is Nil!2666) (t!25076 lt!45001)))))

(assert (=> d!37146 (= (++!576 (t!25076 lt!45001) lt!44998) lt!45384)))

(declare-fun b!154159 () Bool)

(assert (=> b!154159 (= e!92335 (or (not (= lt!44998 Nil!2666)) (= lt!45384 (t!25076 lt!45001))))))

(declare-fun b!154156 () Bool)

(assert (=> b!154156 (= e!92336 lt!44998)))

(declare-fun b!154158 () Bool)

(declare-fun res!70450 () Bool)

(assert (=> b!154158 (=> (not res!70450) (not e!92335))))

(assert (=> b!154158 (= res!70450 (= (size!2263 lt!45384) (+ (size!2263 (t!25076 lt!45001)) (size!2263 lt!44998))))))

(assert (= (and d!37146 c!31064) b!154156))

(assert (= (and d!37146 (not c!31064)) b!154157))

(assert (= (and d!37146 res!70449) b!154158))

(assert (= (and b!154158 res!70450) b!154159))

(declare-fun m!139565 () Bool)

(assert (=> b!154157 m!139565))

(declare-fun m!139567 () Bool)

(assert (=> d!37146 m!139567))

(assert (=> d!37146 m!139503))

(assert (=> d!37146 m!138409))

(declare-fun m!139569 () Bool)

(assert (=> b!154158 m!139569))

(declare-fun m!139571 () Bool)

(assert (=> b!154158 m!139571))

(assert (=> b!154158 m!138415))

(assert (=> b!153570 d!37146))

(declare-fun b!154165 () Bool)

(declare-fun e!92340 () List!2676)

(assert (=> b!154165 (= e!92340 (Cons!2666 (h!8063 e!92038) (++!576 (t!25076 e!92038) (ite c!30972 lt!45181 call!6312))))))

(declare-fun d!37148 () Bool)

(declare-fun e!92339 () Bool)

(assert (=> d!37148 e!92339))

(declare-fun res!70451 () Bool)

(assert (=> d!37148 (=> (not res!70451) (not e!92339))))

(declare-fun lt!45385 () List!2676)

(assert (=> d!37148 (= res!70451 (= (content!369 lt!45385) ((_ map or) (content!369 e!92038) (content!369 (ite c!30972 lt!45181 call!6312)))))))

(assert (=> d!37148 (= lt!45385 e!92340)))

(declare-fun c!31067 () Bool)

(assert (=> d!37148 (= c!31067 ((_ is Nil!2666) e!92038))))

(assert (=> d!37148 (= (++!576 e!92038 (ite c!30972 lt!45181 call!6312)) lt!45385)))

(declare-fun b!154167 () Bool)

(assert (=> b!154167 (= e!92339 (or (not (= (ite c!30972 lt!45181 call!6312) Nil!2666)) (= lt!45385 e!92038)))))

(declare-fun b!154164 () Bool)

(assert (=> b!154164 (= e!92340 (ite c!30972 lt!45181 call!6312))))

(declare-fun b!154166 () Bool)

(declare-fun res!70452 () Bool)

(assert (=> b!154166 (=> (not res!70452) (not e!92339))))

(assert (=> b!154166 (= res!70452 (= (size!2263 lt!45385) (+ (size!2263 e!92038) (size!2263 (ite c!30972 lt!45181 call!6312)))))))

(assert (= (and d!37148 c!31067) b!154164))

(assert (= (and d!37148 (not c!31067)) b!154165))

(assert (= (and d!37148 res!70451) b!154166))

(assert (= (and b!154166 res!70452) b!154167))

(declare-fun m!139573 () Bool)

(assert (=> b!154165 m!139573))

(declare-fun m!139575 () Bool)

(assert (=> d!37148 m!139575))

(declare-fun m!139577 () Bool)

(assert (=> d!37148 m!139577))

(declare-fun m!139579 () Bool)

(assert (=> d!37148 m!139579))

(declare-fun m!139581 () Bool)

(assert (=> b!154166 m!139581))

(declare-fun m!139583 () Bool)

(assert (=> b!154166 m!139583))

(declare-fun m!139585 () Bool)

(assert (=> b!154166 m!139585))

(assert (=> bm!6307 d!37148))

(declare-fun d!37150 () Bool)

(declare-fun lt!45386 () BalanceConc!1512)

(assert (=> d!37150 (= (list!939 lt!45386) (originalCharacters!508 (ite c!30970 separatorToken!170 call!6311)))))

(assert (=> d!37150 (= lt!45386 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (ite c!30970 separatorToken!170 call!6311)))) (value!17568 (ite c!30970 separatorToken!170 call!6311))))))

(assert (=> d!37150 (= (charsOf!120 (ite c!30970 separatorToken!170 call!6311)) lt!45386)))

(declare-fun b_lambda!2931 () Bool)

(assert (=> (not b_lambda!2931) (not d!37150)))

(declare-fun tb!5313 () Bool)

(declare-fun t!25172 () Bool)

(assert (=> (and b!153812 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toChars!963 (transformation!465 (rule!972 (ite c!30970 separatorToken!170 call!6311))))) t!25172) tb!5313))

(declare-fun tp!79658 () Bool)

(declare-fun b!154170 () Bool)

(declare-fun e!92342 () Bool)

(assert (=> b!154170 (= e!92342 (and (inv!3468 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (ite c!30970 separatorToken!170 call!6311)))) (value!17568 (ite c!30970 separatorToken!170 call!6311))))) tp!79658))))

(declare-fun result!7812 () Bool)

(assert (=> tb!5313 (= result!7812 (and (inv!3469 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (ite c!30970 separatorToken!170 call!6311)))) (value!17568 (ite c!30970 separatorToken!170 call!6311)))) e!92342))))

(assert (= tb!5313 b!154170))

(declare-fun m!139591 () Bool)

(assert (=> b!154170 m!139591))

(declare-fun m!139593 () Bool)

(assert (=> tb!5313 m!139593))

(assert (=> d!37150 t!25172))

(declare-fun b_and!9097 () Bool)

(assert (= b_and!9085 (and (=> t!25172 result!7812) b_and!9097)))

(declare-fun tb!5315 () Bool)

(declare-fun t!25174 () Bool)

(assert (=> (and b!153769 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 (ite c!30970 separatorToken!170 call!6311))))) t!25174) tb!5315))

(declare-fun result!7814 () Bool)

(assert (= result!7814 result!7812))

(assert (=> d!37150 t!25174))

(declare-fun b_and!9099 () Bool)

(assert (= b_and!9077 (and (=> t!25174 result!7814) b_and!9099)))

(declare-fun t!25176 () Bool)

(declare-fun tb!5317 () Bool)

(assert (=> (and b!153328 (= (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toChars!963 (transformation!465 (rule!972 (ite c!30970 separatorToken!170 call!6311))))) t!25176) tb!5317))

(declare-fun result!7816 () Bool)

(assert (= result!7816 result!7812))

(assert (=> d!37150 t!25176))

(declare-fun b_and!9101 () Bool)

(assert (= b_and!9081 (and (=> t!25176 result!7816) b_and!9101)))

(declare-fun tb!5319 () Bool)

(declare-fun t!25178 () Bool)

(assert (=> (and b!153316 (= (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toChars!963 (transformation!465 (rule!972 (ite c!30970 separatorToken!170 call!6311))))) t!25178) tb!5319))

(declare-fun result!7818 () Bool)

(assert (= result!7818 result!7812))

(assert (=> d!37150 t!25178))

(declare-fun b_and!9103 () Bool)

(assert (= b_and!9083 (and (=> t!25178 result!7818) b_and!9103)))

(declare-fun tb!5321 () Bool)

(declare-fun t!25180 () Bool)

(assert (=> (and b!153322 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 (ite c!30970 separatorToken!170 call!6311))))) t!25180) tb!5321))

(declare-fun result!7820 () Bool)

(assert (= result!7820 result!7812))

(assert (=> d!37150 t!25180))

(declare-fun b_and!9105 () Bool)

(assert (= b_and!9079 (and (=> t!25180 result!7820) b_and!9105)))

(declare-fun m!139601 () Bool)

(assert (=> d!37150 m!139601))

(declare-fun m!139603 () Bool)

(assert (=> d!37150 m!139603))

(assert (=> bm!6304 d!37150))

(declare-fun b!154180 () Bool)

(declare-fun e!92348 () List!2676)

(assert (=> b!154180 (= e!92348 (Cons!2666 (h!8063 call!6313) (++!576 (t!25076 call!6313) lt!45181)))))

(declare-fun d!37158 () Bool)

(declare-fun e!92347 () Bool)

(assert (=> d!37158 e!92347))

(declare-fun res!70455 () Bool)

(assert (=> d!37158 (=> (not res!70455) (not e!92347))))

(declare-fun lt!45388 () List!2676)

(assert (=> d!37158 (= res!70455 (= (content!369 lt!45388) ((_ map or) (content!369 call!6313) (content!369 lt!45181))))))

(assert (=> d!37158 (= lt!45388 e!92348)))

(declare-fun c!31072 () Bool)

(assert (=> d!37158 (= c!31072 ((_ is Nil!2666) call!6313))))

(assert (=> d!37158 (= (++!576 call!6313 lt!45181) lt!45388)))

(declare-fun b!154182 () Bool)

(assert (=> b!154182 (= e!92347 (or (not (= lt!45181 Nil!2666)) (= lt!45388 call!6313)))))

(declare-fun b!154179 () Bool)

(assert (=> b!154179 (= e!92348 lt!45181)))

(declare-fun b!154181 () Bool)

(declare-fun res!70456 () Bool)

(assert (=> b!154181 (=> (not res!70456) (not e!92347))))

(assert (=> b!154181 (= res!70456 (= (size!2263 lt!45388) (+ (size!2263 call!6313) (size!2263 lt!45181))))))

(assert (= (and d!37158 c!31072) b!154179))

(assert (= (and d!37158 (not c!31072)) b!154180))

(assert (= (and d!37158 res!70455) b!154181))

(assert (= (and b!154181 res!70456) b!154182))

(declare-fun m!139619 () Bool)

(assert (=> b!154180 m!139619))

(declare-fun m!139621 () Bool)

(assert (=> d!37158 m!139621))

(declare-fun m!139623 () Bool)

(assert (=> d!37158 m!139623))

(declare-fun m!139625 () Bool)

(assert (=> d!37158 m!139625))

(declare-fun m!139627 () Bool)

(assert (=> b!154181 m!139627))

(declare-fun m!139629 () Bool)

(assert (=> b!154181 m!139629))

(declare-fun m!139631 () Bool)

(assert (=> b!154181 m!139631))

(assert (=> b!153678 d!37158))

(declare-fun d!37162 () Bool)

(declare-fun lt!45390 () Token!674)

(assert (=> d!37162 (= lt!45390 (apply!354 (list!942 lt!45003) 0))))

(assert (=> d!37162 (= lt!45390 (apply!356 (c!30891 lt!45003) 0))))

(declare-fun e!92349 () Bool)

(assert (=> d!37162 e!92349))

(declare-fun res!70457 () Bool)

(assert (=> d!37162 (=> (not res!70457) (not e!92349))))

(assert (=> d!37162 (= res!70457 (<= 0 0))))

(assert (=> d!37162 (= (apply!352 lt!45003 0) lt!45390)))

(declare-fun b!154183 () Bool)

(assert (=> b!154183 (= e!92349 (< 0 (size!2265 lt!45003)))))

(assert (= (and d!37162 res!70457) b!154183))

(assert (=> d!37162 m!138381))

(assert (=> d!37162 m!138381))

(declare-fun m!139633 () Bool)

(assert (=> d!37162 m!139633))

(declare-fun m!139635 () Bool)

(assert (=> d!37162 m!139635))

(assert (=> b!154183 m!138749))

(assert (=> bm!6305 d!37162))

(declare-fun d!37164 () Bool)

(declare-fun res!70458 () Bool)

(declare-fun e!92351 () Bool)

(assert (=> d!37164 (=> (not res!70458) (not e!92351))))

(assert (=> d!37164 (= res!70458 (not (isEmpty!1058 (originalCharacters!508 (h!8065 (t!25078 tokens!465))))))))

(assert (=> d!37164 (= (inv!3465 (h!8065 (t!25078 tokens!465))) e!92351)))

(declare-fun b!154185 () Bool)

(declare-fun res!70459 () Bool)

(assert (=> b!154185 (=> (not res!70459) (not e!92351))))

(assert (=> b!154185 (= res!70459 (= (originalCharacters!508 (h!8065 (t!25078 tokens!465))) (list!939 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (value!17568 (h!8065 (t!25078 tokens!465)))))))))

(declare-fun b!154186 () Bool)

(assert (=> b!154186 (= e!92351 (= (size!2261 (h!8065 (t!25078 tokens!465))) (size!2263 (originalCharacters!508 (h!8065 (t!25078 tokens!465))))))))

(assert (= (and d!37164 res!70458) b!154185))

(assert (= (and b!154185 res!70459) b!154186))

(declare-fun b_lambda!2935 () Bool)

(assert (=> (not b_lambda!2935) (not b!154185)))

(assert (=> b!154185 t!25153))

(declare-fun b_and!9117 () Bool)

(assert (= b_and!9101 (and (=> t!25153 result!7796) b_and!9117)))

(assert (=> b!154185 t!25155))

(declare-fun b_and!9119 () Bool)

(assert (= b_and!9103 (and (=> t!25155 result!7798) b_and!9119)))

(assert (=> b!154185 t!25149))

(declare-fun b_and!9121 () Bool)

(assert (= b_and!9099 (and (=> t!25149 result!7792) b_and!9121)))

(assert (=> b!154185 t!25157))

(declare-fun b_and!9123 () Bool)

(assert (= b_and!9097 (and (=> t!25157 result!7800) b_and!9123)))

(assert (=> b!154185 t!25151))

(declare-fun b_and!9125 () Bool)

(assert (= b_and!9105 (and (=> t!25151 result!7794) b_and!9125)))

(declare-fun m!139645 () Bool)

(assert (=> d!37164 m!139645))

(assert (=> b!154185 m!138995))

(assert (=> b!154185 m!138995))

(declare-fun m!139651 () Bool)

(assert (=> b!154185 m!139651))

(declare-fun m!139653 () Bool)

(assert (=> b!154186 m!139653))

(assert (=> b!153809 d!37164))

(declare-fun bs!14215 () Bool)

(declare-fun d!37170 () Bool)

(assert (= bs!14215 (and d!37170 d!36926)))

(declare-fun lambda!4063 () Int)

(assert (=> bs!14215 (= (= (toValue!1104 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (= lambda!4063 lambda!4045))))

(declare-fun bs!14216 () Bool)

(assert (= bs!14216 (and d!37170 d!36936)))

(assert (=> bs!14216 (= (= (toValue!1104 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toValue!1104 (transformation!465 (rule!972 separatorToken!170)))) (= lambda!4063 lambda!4046))))

(assert (=> d!37170 true))

(assert (=> d!37170 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (rule!972 (h!8065 tokens!465))))) (dynLambda!940 order!1339 lambda!4063))))

(assert (=> d!37170 (= (equivClasses!143 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toValue!1104 (transformation!465 (rule!972 (h!8065 tokens!465))))) (Forall2!99 lambda!4063))))

(declare-fun bs!14217 () Bool)

(assert (= bs!14217 d!37170))

(declare-fun m!139657 () Bool)

(assert (=> bs!14217 m!139657))

(assert (=> b!153371 d!37170))

(declare-fun d!37174 () Bool)

(assert (=> d!37174 (= (list!939 call!6310) (list!940 (c!30889 call!6310)))))

(declare-fun bs!14218 () Bool)

(assert (= bs!14218 d!37174))

(declare-fun m!139659 () Bool)

(assert (=> bs!14218 m!139659))

(assert (=> b!153663 d!37174))

(declare-fun d!37176 () Bool)

(declare-fun lt!45391 () BalanceConc!1512)

(assert (=> d!37176 (= (list!939 lt!45391) (printList!52 thiss!17480 (list!942 (singletonSeq!29 call!6311))))))

(assert (=> d!37176 (= lt!45391 (printTailRec!59 thiss!17480 (singletonSeq!29 call!6311) 0 (BalanceConc!1513 Empty!752)))))

(assert (=> d!37176 (= (print!96 thiss!17480 (singletonSeq!29 call!6311)) lt!45391)))

(declare-fun bs!14219 () Bool)

(assert (= bs!14219 d!37176))

(declare-fun m!139661 () Bool)

(assert (=> bs!14219 m!139661))

(assert (=> bs!14219 m!138753))

(declare-fun m!139663 () Bool)

(assert (=> bs!14219 m!139663))

(assert (=> bs!14219 m!139663))

(declare-fun m!139665 () Bool)

(assert (=> bs!14219 m!139665))

(assert (=> bs!14219 m!138753))

(assert (=> bs!14219 m!138759))

(assert (=> b!153663 d!37176))

(declare-fun d!37178 () Bool)

(assert (=> d!37178 (isDefined!103 (maxPrefix!111 thiss!17480 rules!1920 (++!576 (list!939 call!6310) (list!939 lt!45166))))))

(declare-fun lt!45395 () Unit!2058)

(declare-fun e!92355 () Unit!2058)

(assert (=> d!37178 (= lt!45395 e!92355)))

(declare-fun c!31075 () Bool)

(assert (=> d!37178 (= c!31075 (isEmpty!1063 (maxPrefix!111 thiss!17480 rules!1920 (++!576 (list!939 call!6310) (list!939 lt!45166)))))))

(declare-fun lt!45392 () Unit!2058)

(declare-fun lt!45397 () Unit!2058)

(assert (=> d!37178 (= lt!45392 lt!45397)))

(declare-fun e!92354 () Bool)

(assert (=> d!37178 e!92354))

(declare-fun res!70461 () Bool)

(assert (=> d!37178 (=> (not res!70461) (not e!92354))))

(declare-fun lt!45404 () Token!674)

(assert (=> d!37178 (= res!70461 (isDefined!104 (getRuleFromTag!11 thiss!17480 rules!1920 (tag!643 (rule!972 lt!45404)))))))

(assert (=> d!37178 (= lt!45397 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!11 thiss!17480 rules!1920 (list!939 call!6310) lt!45404))))

(declare-fun lt!45402 () Unit!2058)

(declare-fun lt!45407 () Unit!2058)

(assert (=> d!37178 (= lt!45402 lt!45407)))

(declare-fun lt!45393 () List!2676)

(assert (=> d!37178 (isPrefix!212 lt!45393 (++!576 (list!939 call!6310) (list!939 lt!45166)))))

(assert (=> d!37178 (= lt!45407 (lemmaPrefixStaysPrefixWhenAddingToSuffix!11 lt!45393 (list!939 call!6310) (list!939 lt!45166)))))

(assert (=> d!37178 (= lt!45393 (list!939 (charsOf!120 lt!45404)))))

(declare-fun lt!45396 () Unit!2058)

(declare-fun lt!45394 () Unit!2058)

(assert (=> d!37178 (= lt!45396 lt!45394)))

(declare-fun lt!45401 () List!2676)

(declare-fun lt!45399 () List!2676)

(assert (=> d!37178 (isPrefix!212 lt!45401 (++!576 lt!45401 lt!45399))))

(assert (=> d!37178 (= lt!45394 (lemmaConcatTwoListThenFirstIsPrefix!115 lt!45401 lt!45399))))

(assert (=> d!37178 (= lt!45399 (_2!1511 (get!719 (maxPrefix!111 thiss!17480 rules!1920 (list!939 call!6310)))))))

(assert (=> d!37178 (= lt!45401 (list!939 (charsOf!120 lt!45404)))))

(assert (=> d!37178 (= lt!45404 (head!584 (list!942 (_1!1513 (lex!171 thiss!17480 rules!1920 (seqFromList!307 (list!939 call!6310)))))))))

(assert (=> d!37178 (not (isEmpty!1056 rules!1920))))

(assert (=> d!37178 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!18 thiss!17480 rules!1920 (list!939 call!6310) (list!939 lt!45166)) lt!45395)))

(declare-fun b!154193 () Bool)

(declare-fun Unit!2080 () Unit!2058)

(assert (=> b!154193 (= e!92355 Unit!2080)))

(declare-fun lt!45398 () List!2676)

(assert (=> b!154193 (= lt!45398 (++!576 (list!939 call!6310) (list!939 lt!45166)))))

(declare-fun lt!45406 () Unit!2058)

(assert (=> b!154193 (= lt!45406 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!11 thiss!17480 (rule!972 lt!45404) rules!1920 lt!45398))))

(assert (=> b!154193 (isEmpty!1063 (maxPrefixOneRule!56 thiss!17480 (rule!972 lt!45404) lt!45398))))

(declare-fun lt!45400 () Unit!2058)

(assert (=> b!154193 (= lt!45400 lt!45406)))

(declare-fun lt!45405 () List!2676)

(assert (=> b!154193 (= lt!45405 (list!939 (charsOf!120 lt!45404)))))

(declare-fun lt!45408 () Unit!2058)

(assert (=> b!154193 (= lt!45408 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!11 thiss!17480 (rule!972 lt!45404) lt!45405 (++!576 (list!939 call!6310) (list!939 lt!45166))))))

(assert (=> b!154193 (not (matchR!68 (regex!465 (rule!972 lt!45404)) lt!45405))))

(declare-fun lt!45403 () Unit!2058)

(assert (=> b!154193 (= lt!45403 lt!45408)))

(assert (=> b!154193 false))

(declare-fun b!154191 () Bool)

(declare-fun res!70460 () Bool)

(assert (=> b!154191 (=> (not res!70460) (not e!92354))))

(assert (=> b!154191 (= res!70460 (matchR!68 (regex!465 (get!720 (getRuleFromTag!11 thiss!17480 rules!1920 (tag!643 (rule!972 lt!45404))))) (list!939 (charsOf!120 lt!45404))))))

(declare-fun b!154192 () Bool)

(assert (=> b!154192 (= e!92354 (= (rule!972 lt!45404) (get!720 (getRuleFromTag!11 thiss!17480 rules!1920 (tag!643 (rule!972 lt!45404))))))))

(declare-fun b!154194 () Bool)

(declare-fun Unit!2081 () Unit!2058)

(assert (=> b!154194 (= e!92355 Unit!2081)))

(assert (= (and d!37178 res!70461) b!154191))

(assert (= (and b!154191 res!70460) b!154192))

(assert (= (and d!37178 c!31075) b!154193))

(assert (= (and d!37178 (not c!31075)) b!154194))

(declare-fun m!139667 () Bool)

(assert (=> d!37178 m!139667))

(declare-fun m!139669 () Bool)

(assert (=> d!37178 m!139669))

(declare-fun m!139671 () Bool)

(assert (=> d!37178 m!139671))

(assert (=> d!37178 m!138757))

(declare-fun m!139673 () Bool)

(assert (=> d!37178 m!139673))

(declare-fun m!139677 () Bool)

(assert (=> d!37178 m!139677))

(declare-fun m!139679 () Bool)

(assert (=> d!37178 m!139679))

(assert (=> d!37178 m!139667))

(declare-fun m!139685 () Bool)

(assert (=> d!37178 m!139685))

(assert (=> d!37178 m!138757))

(declare-fun m!139689 () Bool)

(assert (=> d!37178 m!139689))

(assert (=> d!37178 m!139673))

(declare-fun m!139691 () Bool)

(assert (=> d!37178 m!139691))

(declare-fun m!139693 () Bool)

(assert (=> d!37178 m!139693))

(declare-fun m!139695 () Bool)

(assert (=> d!37178 m!139695))

(assert (=> d!37178 m!138317))

(assert (=> d!37178 m!139693))

(assert (=> d!37178 m!138757))

(declare-fun m!139697 () Bool)

(assert (=> d!37178 m!139697))

(declare-fun m!139699 () Bool)

(assert (=> d!37178 m!139699))

(declare-fun m!139701 () Bool)

(assert (=> d!37178 m!139701))

(assert (=> d!37178 m!138757))

(assert (=> d!37178 m!138751))

(declare-fun m!139703 () Bool)

(assert (=> d!37178 m!139703))

(assert (=> d!37178 m!139699))

(assert (=> d!37178 m!139677))

(declare-fun m!139705 () Bool)

(assert (=> d!37178 m!139705))

(declare-fun m!139707 () Bool)

(assert (=> d!37178 m!139707))

(assert (=> d!37178 m!139677))

(assert (=> d!37178 m!139671))

(declare-fun m!139709 () Bool)

(assert (=> d!37178 m!139709))

(assert (=> d!37178 m!138757))

(assert (=> d!37178 m!138751))

(assert (=> d!37178 m!139707))

(assert (=> d!37178 m!139689))

(declare-fun m!139711 () Bool)

(assert (=> d!37178 m!139711))

(assert (=> d!37178 m!139707))

(declare-fun m!139713 () Bool)

(assert (=> d!37178 m!139713))

(declare-fun m!139715 () Bool)

(assert (=> b!154193 m!139715))

(assert (=> b!154193 m!139667))

(assert (=> b!154193 m!139669))

(declare-fun m!139717 () Bool)

(assert (=> b!154193 m!139717))

(declare-fun m!139719 () Bool)

(assert (=> b!154193 m!139719))

(declare-fun m!139721 () Bool)

(assert (=> b!154193 m!139721))

(assert (=> b!154193 m!138757))

(assert (=> b!154193 m!138751))

(assert (=> b!154193 m!139707))

(assert (=> b!154193 m!139667))

(assert (=> b!154193 m!139719))

(assert (=> b!154193 m!139707))

(declare-fun m!139723 () Bool)

(assert (=> b!154193 m!139723))

(assert (=> b!154191 m!139667))

(assert (=> b!154191 m!139669))

(assert (=> b!154191 m!139669))

(declare-fun m!139725 () Bool)

(assert (=> b!154191 m!139725))

(assert (=> b!154191 m!139699))

(assert (=> b!154191 m!139699))

(declare-fun m!139727 () Bool)

(assert (=> b!154191 m!139727))

(assert (=> b!154191 m!139667))

(assert (=> b!154192 m!139699))

(assert (=> b!154192 m!139699))

(assert (=> b!154192 m!139727))

(assert (=> b!153663 d!37178))

(declare-fun d!37182 () Bool)

(declare-fun lt!45421 () BalanceConc!1512)

(assert (=> d!37182 (= (list!939 lt!45421) (printListTailRec!39 thiss!17480 (dropList!70 (singletonSeq!29 call!6311) 0) (list!939 (BalanceConc!1513 Empty!752))))))

(declare-fun e!92366 () BalanceConc!1512)

(assert (=> d!37182 (= lt!45421 e!92366)))

(declare-fun c!31080 () Bool)

(assert (=> d!37182 (= c!31080 (>= 0 (size!2265 (singletonSeq!29 call!6311))))))

(declare-fun e!92367 () Bool)

(assert (=> d!37182 e!92367))

(declare-fun res!70465 () Bool)

(assert (=> d!37182 (=> (not res!70465) (not e!92367))))

(assert (=> d!37182 (= res!70465 (>= 0 0))))

(assert (=> d!37182 (= (printTailRec!59 thiss!17480 (singletonSeq!29 call!6311) 0 (BalanceConc!1513 Empty!752)) lt!45421)))

(declare-fun b!154209 () Bool)

(assert (=> b!154209 (= e!92367 (<= 0 (size!2265 (singletonSeq!29 call!6311))))))

(declare-fun b!154210 () Bool)

(assert (=> b!154210 (= e!92366 (BalanceConc!1513 Empty!752))))

(declare-fun b!154211 () Bool)

(assert (=> b!154211 (= e!92366 (printTailRec!59 thiss!17480 (singletonSeq!29 call!6311) (+ 0 1) (++!578 (BalanceConc!1513 Empty!752) (charsOf!120 (apply!352 (singletonSeq!29 call!6311) 0)))))))

(declare-fun lt!45422 () List!2678)

(assert (=> b!154211 (= lt!45422 (list!942 (singletonSeq!29 call!6311)))))

(declare-fun lt!45418 () Unit!2058)

(assert (=> b!154211 (= lt!45418 (lemmaDropApply!110 lt!45422 0))))

(assert (=> b!154211 (= (head!584 (drop!123 lt!45422 0)) (apply!354 lt!45422 0))))

(declare-fun lt!45420 () Unit!2058)

(assert (=> b!154211 (= lt!45420 lt!45418)))

(declare-fun lt!45419 () List!2678)

(assert (=> b!154211 (= lt!45419 (list!942 (singletonSeq!29 call!6311)))))

(declare-fun lt!45423 () Unit!2058)

(assert (=> b!154211 (= lt!45423 (lemmaDropTail!102 lt!45419 0))))

(assert (=> b!154211 (= (tail!324 (drop!123 lt!45419 0)) (drop!123 lt!45419 (+ 0 1)))))

(declare-fun lt!45424 () Unit!2058)

(assert (=> b!154211 (= lt!45424 lt!45423)))

(assert (= (and d!37182 res!70465) b!154209))

(assert (= (and d!37182 c!31080) b!154210))

(assert (= (and d!37182 (not c!31080)) b!154211))

(declare-fun m!139729 () Bool)

(assert (=> d!37182 m!139729))

(assert (=> d!37182 m!139229))

(declare-fun m!139731 () Bool)

(assert (=> d!37182 m!139731))

(assert (=> d!37182 m!138753))

(assert (=> d!37182 m!139729))

(assert (=> d!37182 m!138753))

(declare-fun m!139733 () Bool)

(assert (=> d!37182 m!139733))

(assert (=> d!37182 m!139229))

(declare-fun m!139735 () Bool)

(assert (=> d!37182 m!139735))

(assert (=> b!154209 m!138753))

(assert (=> b!154209 m!139733))

(declare-fun m!139737 () Bool)

(assert (=> b!154211 m!139737))

(declare-fun m!139739 () Bool)

(assert (=> b!154211 m!139739))

(declare-fun m!139741 () Bool)

(assert (=> b!154211 m!139741))

(declare-fun m!139743 () Bool)

(assert (=> b!154211 m!139743))

(declare-fun m!139745 () Bool)

(assert (=> b!154211 m!139745))

(assert (=> b!154211 m!139745))

(declare-fun m!139749 () Bool)

(assert (=> b!154211 m!139749))

(declare-fun m!139755 () Bool)

(assert (=> b!154211 m!139755))

(assert (=> b!154211 m!138753))

(assert (=> b!154211 m!139743))

(assert (=> b!154211 m!138753))

(assert (=> b!154211 m!139749))

(declare-fun m!139763 () Bool)

(assert (=> b!154211 m!139763))

(assert (=> b!154211 m!139737))

(assert (=> b!154211 m!138753))

(assert (=> b!154211 m!139663))

(declare-fun m!139771 () Bool)

(assert (=> b!154211 m!139771))

(declare-fun m!139773 () Bool)

(assert (=> b!154211 m!139773))

(declare-fun m!139775 () Bool)

(assert (=> b!154211 m!139775))

(declare-fun m!139779 () Bool)

(assert (=> b!154211 m!139779))

(assert (=> b!154211 m!139773))

(assert (=> b!153663 d!37182))

(declare-fun d!37184 () Bool)

(declare-fun e!92368 () Bool)

(assert (=> d!37184 e!92368))

(declare-fun res!70466 () Bool)

(assert (=> d!37184 (=> (not res!70466) (not e!92368))))

(declare-fun lt!45425 () BalanceConc!1514)

(assert (=> d!37184 (= res!70466 (= (list!942 lt!45425) (Cons!2668 call!6311 Nil!2668)))))

(assert (=> d!37184 (= lt!45425 (singleton!20 call!6311))))

(assert (=> d!37184 (= (singletonSeq!29 call!6311) lt!45425)))

(declare-fun b!154212 () Bool)

(assert (=> b!154212 (= e!92368 (isBalanced!209 (c!30891 lt!45425)))))

(assert (= (and d!37184 res!70466) b!154212))

(declare-fun m!139789 () Bool)

(assert (=> d!37184 m!139789))

(declare-fun m!139791 () Bool)

(assert (=> d!37184 m!139791))

(declare-fun m!139793 () Bool)

(assert (=> b!154212 m!139793))

(assert (=> b!153663 d!37184))

(declare-fun d!37188 () Bool)

(assert (=> d!37188 (= (list!939 lt!45166) (list!940 (c!30889 lt!45166)))))

(declare-fun bs!14230 () Bool)

(assert (= bs!14230 d!37188))

(declare-fun m!139797 () Bool)

(assert (=> bs!14230 m!139797))

(assert (=> b!153663 d!37188))

(declare-fun d!37192 () Bool)

(declare-fun e!92374 () Bool)

(assert (=> d!37192 e!92374))

(declare-fun res!70471 () Bool)

(assert (=> d!37192 (=> (not res!70471) (not e!92374))))

(declare-fun lt!45430 () BalanceConc!1512)

(assert (=> d!37192 (= res!70471 (= (list!939 lt!45430) lt!45000))))

(declare-fun fromList!85 (List!2676) Conc!752)

(assert (=> d!37192 (= lt!45430 (BalanceConc!1513 (fromList!85 lt!45000)))))

(assert (=> d!37192 (= (fromListB!126 lt!45000) lt!45430)))

(declare-fun b!154220 () Bool)

(assert (=> b!154220 (= e!92374 (isBalanced!210 (fromList!85 lt!45000)))))

(assert (= (and d!37192 res!70471) b!154220))

(declare-fun m!139817 () Bool)

(assert (=> d!37192 m!139817))

(declare-fun m!139819 () Bool)

(assert (=> d!37192 m!139819))

(assert (=> b!154220 m!139819))

(assert (=> b!154220 m!139819))

(declare-fun m!139821 () Bool)

(assert (=> b!154220 m!139821))

(assert (=> d!36814 d!37192))

(declare-fun d!37198 () Bool)

(declare-fun lt!45431 () BalanceConc!1512)

(assert (=> d!37198 (= (list!939 lt!45431) (printList!52 thiss!17480 (list!942 (singletonSeq!29 (h!8065 (t!25078 tokens!465))))))))

(assert (=> d!37198 (= lt!45431 (printTailRec!59 thiss!17480 (singletonSeq!29 (h!8065 (t!25078 tokens!465))) 0 (BalanceConc!1513 Empty!752)))))

(assert (=> d!37198 (= (print!96 thiss!17480 (singletonSeq!29 (h!8065 (t!25078 tokens!465)))) lt!45431)))

(declare-fun bs!14231 () Bool)

(assert (= bs!14231 d!37198))

(declare-fun m!139823 () Bool)

(assert (=> bs!14231 m!139823))

(assert (=> bs!14231 m!138543))

(assert (=> bs!14231 m!138877))

(assert (=> bs!14231 m!138877))

(declare-fun m!139825 () Bool)

(assert (=> bs!14231 m!139825))

(assert (=> bs!14231 m!138543))

(assert (=> bs!14231 m!138547))

(assert (=> b!153529 d!37198))

(declare-fun d!37200 () Bool)

(declare-fun e!92375 () Bool)

(assert (=> d!37200 e!92375))

(declare-fun res!70472 () Bool)

(assert (=> d!37200 (=> (not res!70472) (not e!92375))))

(declare-fun lt!45432 () BalanceConc!1514)

(assert (=> d!37200 (= res!70472 (= (list!942 lt!45432) (Cons!2668 (h!8065 (t!25078 tokens!465)) Nil!2668)))))

(assert (=> d!37200 (= lt!45432 (singleton!20 (h!8065 (t!25078 tokens!465))))))

(assert (=> d!37200 (= (singletonSeq!29 (h!8065 (t!25078 tokens!465))) lt!45432)))

(declare-fun b!154221 () Bool)

(assert (=> b!154221 (= e!92375 (isBalanced!209 (c!30891 lt!45432)))))

(assert (= (and d!37200 res!70472) b!154221))

(declare-fun m!139827 () Bool)

(assert (=> d!37200 m!139827))

(declare-fun m!139829 () Bool)

(assert (=> d!37200 m!139829))

(declare-fun m!139831 () Bool)

(assert (=> b!154221 m!139831))

(assert (=> b!153529 d!37200))

(declare-fun d!37202 () Bool)

(declare-fun lt!45436 () BalanceConc!1512)

(assert (=> d!37202 (= (list!939 lt!45436) (printListTailRec!39 thiss!17480 (dropList!70 (singletonSeq!29 (h!8065 (t!25078 tokens!465))) 0) (list!939 (BalanceConc!1513 Empty!752))))))

(declare-fun e!92376 () BalanceConc!1512)

(assert (=> d!37202 (= lt!45436 e!92376)))

(declare-fun c!31083 () Bool)

(assert (=> d!37202 (= c!31083 (>= 0 (size!2265 (singletonSeq!29 (h!8065 (t!25078 tokens!465))))))))

(declare-fun e!92377 () Bool)

(assert (=> d!37202 e!92377))

(declare-fun res!70473 () Bool)

(assert (=> d!37202 (=> (not res!70473) (not e!92377))))

(assert (=> d!37202 (= res!70473 (>= 0 0))))

(assert (=> d!37202 (= (printTailRec!59 thiss!17480 (singletonSeq!29 (h!8065 (t!25078 tokens!465))) 0 (BalanceConc!1513 Empty!752)) lt!45436)))

(declare-fun b!154222 () Bool)

(assert (=> b!154222 (= e!92377 (<= 0 (size!2265 (singletonSeq!29 (h!8065 (t!25078 tokens!465))))))))

(declare-fun b!154223 () Bool)

(assert (=> b!154223 (= e!92376 (BalanceConc!1513 Empty!752))))

(declare-fun b!154224 () Bool)

(assert (=> b!154224 (= e!92376 (printTailRec!59 thiss!17480 (singletonSeq!29 (h!8065 (t!25078 tokens!465))) (+ 0 1) (++!578 (BalanceConc!1513 Empty!752) (charsOf!120 (apply!352 (singletonSeq!29 (h!8065 (t!25078 tokens!465))) 0)))))))

(declare-fun lt!45437 () List!2678)

(assert (=> b!154224 (= lt!45437 (list!942 (singletonSeq!29 (h!8065 (t!25078 tokens!465)))))))

(declare-fun lt!45433 () Unit!2058)

(assert (=> b!154224 (= lt!45433 (lemmaDropApply!110 lt!45437 0))))

(assert (=> b!154224 (= (head!584 (drop!123 lt!45437 0)) (apply!354 lt!45437 0))))

(declare-fun lt!45435 () Unit!2058)

(assert (=> b!154224 (= lt!45435 lt!45433)))

(declare-fun lt!45434 () List!2678)

(assert (=> b!154224 (= lt!45434 (list!942 (singletonSeq!29 (h!8065 (t!25078 tokens!465)))))))

(declare-fun lt!45438 () Unit!2058)

(assert (=> b!154224 (= lt!45438 (lemmaDropTail!102 lt!45434 0))))

(assert (=> b!154224 (= (tail!324 (drop!123 lt!45434 0)) (drop!123 lt!45434 (+ 0 1)))))

(declare-fun lt!45439 () Unit!2058)

(assert (=> b!154224 (= lt!45439 lt!45438)))

(assert (= (and d!37202 res!70473) b!154222))

(assert (= (and d!37202 c!31083) b!154223))

(assert (= (and d!37202 (not c!31083)) b!154224))

(declare-fun m!139833 () Bool)

(assert (=> d!37202 m!139833))

(assert (=> d!37202 m!139229))

(declare-fun m!139835 () Bool)

(assert (=> d!37202 m!139835))

(assert (=> d!37202 m!138543))

(assert (=> d!37202 m!139833))

(assert (=> d!37202 m!138543))

(declare-fun m!139837 () Bool)

(assert (=> d!37202 m!139837))

(assert (=> d!37202 m!139229))

(declare-fun m!139839 () Bool)

(assert (=> d!37202 m!139839))

(assert (=> b!154222 m!138543))

(assert (=> b!154222 m!139837))

(declare-fun m!139841 () Bool)

(assert (=> b!154224 m!139841))

(declare-fun m!139843 () Bool)

(assert (=> b!154224 m!139843))

(declare-fun m!139845 () Bool)

(assert (=> b!154224 m!139845))

(declare-fun m!139847 () Bool)

(assert (=> b!154224 m!139847))

(declare-fun m!139849 () Bool)

(assert (=> b!154224 m!139849))

(assert (=> b!154224 m!139849))

(declare-fun m!139851 () Bool)

(assert (=> b!154224 m!139851))

(declare-fun m!139853 () Bool)

(assert (=> b!154224 m!139853))

(assert (=> b!154224 m!138543))

(assert (=> b!154224 m!139847))

(assert (=> b!154224 m!138543))

(assert (=> b!154224 m!139851))

(declare-fun m!139855 () Bool)

(assert (=> b!154224 m!139855))

(assert (=> b!154224 m!139841))

(assert (=> b!154224 m!138543))

(assert (=> b!154224 m!138877))

(declare-fun m!139857 () Bool)

(assert (=> b!154224 m!139857))

(declare-fun m!139859 () Bool)

(assert (=> b!154224 m!139859))

(declare-fun m!139861 () Bool)

(assert (=> b!154224 m!139861))

(declare-fun m!139863 () Bool)

(assert (=> b!154224 m!139863))

(assert (=> b!154224 m!139859))

(assert (=> b!153529 d!37202))

(declare-fun d!37204 () Bool)

(assert (=> d!37204 (isDefined!103 (maxPrefix!111 thiss!17480 rules!1920 (++!576 call!6272 lt!45061)))))

(declare-fun lt!45443 () Unit!2058)

(declare-fun e!92379 () Unit!2058)

(assert (=> d!37204 (= lt!45443 e!92379)))

(declare-fun c!31084 () Bool)

(assert (=> d!37204 (= c!31084 (isEmpty!1063 (maxPrefix!111 thiss!17480 rules!1920 (++!576 call!6272 lt!45061))))))

(declare-fun lt!45440 () Unit!2058)

(declare-fun lt!45445 () Unit!2058)

(assert (=> d!37204 (= lt!45440 lt!45445)))

(declare-fun e!92378 () Bool)

(assert (=> d!37204 e!92378))

(declare-fun res!70475 () Bool)

(assert (=> d!37204 (=> (not res!70475) (not e!92378))))

(declare-fun lt!45452 () Token!674)

(assert (=> d!37204 (= res!70475 (isDefined!104 (getRuleFromTag!11 thiss!17480 rules!1920 (tag!643 (rule!972 lt!45452)))))))

(assert (=> d!37204 (= lt!45445 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!11 thiss!17480 rules!1920 call!6272 lt!45452))))

(declare-fun lt!45450 () Unit!2058)

(declare-fun lt!45455 () Unit!2058)

(assert (=> d!37204 (= lt!45450 lt!45455)))

(declare-fun lt!45441 () List!2676)

(assert (=> d!37204 (isPrefix!212 lt!45441 (++!576 call!6272 lt!45061))))

(assert (=> d!37204 (= lt!45455 (lemmaPrefixStaysPrefixWhenAddingToSuffix!11 lt!45441 call!6272 lt!45061))))

(assert (=> d!37204 (= lt!45441 (list!939 (charsOf!120 lt!45452)))))

(declare-fun lt!45444 () Unit!2058)

(declare-fun lt!45442 () Unit!2058)

(assert (=> d!37204 (= lt!45444 lt!45442)))

(declare-fun lt!45449 () List!2676)

(declare-fun lt!45447 () List!2676)

(assert (=> d!37204 (isPrefix!212 lt!45449 (++!576 lt!45449 lt!45447))))

(assert (=> d!37204 (= lt!45442 (lemmaConcatTwoListThenFirstIsPrefix!115 lt!45449 lt!45447))))

(assert (=> d!37204 (= lt!45447 (_2!1511 (get!719 (maxPrefix!111 thiss!17480 rules!1920 call!6272))))))

(assert (=> d!37204 (= lt!45449 (list!939 (charsOf!120 lt!45452)))))

(assert (=> d!37204 (= lt!45452 (head!584 (list!942 (_1!1513 (lex!171 thiss!17480 rules!1920 (seqFromList!307 call!6272))))))))

(assert (=> d!37204 (not (isEmpty!1056 rules!1920))))

(assert (=> d!37204 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!18 thiss!17480 rules!1920 call!6272 lt!45061) lt!45443)))

(declare-fun b!154227 () Bool)

(declare-fun Unit!2082 () Unit!2058)

(assert (=> b!154227 (= e!92379 Unit!2082)))

(declare-fun lt!45446 () List!2676)

(assert (=> b!154227 (= lt!45446 (++!576 call!6272 lt!45061))))

(declare-fun lt!45454 () Unit!2058)

(assert (=> b!154227 (= lt!45454 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!11 thiss!17480 (rule!972 lt!45452) rules!1920 lt!45446))))

(assert (=> b!154227 (isEmpty!1063 (maxPrefixOneRule!56 thiss!17480 (rule!972 lt!45452) lt!45446))))

(declare-fun lt!45448 () Unit!2058)

(assert (=> b!154227 (= lt!45448 lt!45454)))

(declare-fun lt!45453 () List!2676)

(assert (=> b!154227 (= lt!45453 (list!939 (charsOf!120 lt!45452)))))

(declare-fun lt!45456 () Unit!2058)

(assert (=> b!154227 (= lt!45456 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!11 thiss!17480 (rule!972 lt!45452) lt!45453 (++!576 call!6272 lt!45061)))))

(assert (=> b!154227 (not (matchR!68 (regex!465 (rule!972 lt!45452)) lt!45453))))

(declare-fun lt!45451 () Unit!2058)

(assert (=> b!154227 (= lt!45451 lt!45456)))

(assert (=> b!154227 false))

(declare-fun b!154225 () Bool)

(declare-fun res!70474 () Bool)

(assert (=> b!154225 (=> (not res!70474) (not e!92378))))

(assert (=> b!154225 (= res!70474 (matchR!68 (regex!465 (get!720 (getRuleFromTag!11 thiss!17480 rules!1920 (tag!643 (rule!972 lt!45452))))) (list!939 (charsOf!120 lt!45452))))))

(declare-fun b!154226 () Bool)

(assert (=> b!154226 (= e!92378 (= (rule!972 lt!45452) (get!720 (getRuleFromTag!11 thiss!17480 rules!1920 (tag!643 (rule!972 lt!45452))))))))

(declare-fun b!154228 () Bool)

(declare-fun Unit!2085 () Unit!2058)

(assert (=> b!154228 (= e!92379 Unit!2085)))

(assert (= (and d!37204 res!70475) b!154225))

(assert (= (and b!154225 res!70474) b!154226))

(assert (= (and d!37204 c!31084) b!154227))

(assert (= (and d!37204 (not c!31084)) b!154228))

(declare-fun m!139865 () Bool)

(assert (=> d!37204 m!139865))

(declare-fun m!139867 () Bool)

(assert (=> d!37204 m!139867))

(declare-fun m!139869 () Bool)

(assert (=> d!37204 m!139869))

(declare-fun m!139871 () Bool)

(assert (=> d!37204 m!139871))

(declare-fun m!139873 () Bool)

(assert (=> d!37204 m!139873))

(declare-fun m!139875 () Bool)

(assert (=> d!37204 m!139875))

(assert (=> d!37204 m!139865))

(declare-fun m!139877 () Bool)

(assert (=> d!37204 m!139877))

(declare-fun m!139879 () Bool)

(assert (=> d!37204 m!139879))

(assert (=> d!37204 m!139871))

(declare-fun m!139881 () Bool)

(assert (=> d!37204 m!139881))

(declare-fun m!139883 () Bool)

(assert (=> d!37204 m!139883))

(declare-fun m!139885 () Bool)

(assert (=> d!37204 m!139885))

(assert (=> d!37204 m!138317))

(assert (=> d!37204 m!139883))

(declare-fun m!139887 () Bool)

(assert (=> d!37204 m!139887))

(declare-fun m!139889 () Bool)

(assert (=> d!37204 m!139889))

(declare-fun m!139891 () Bool)

(assert (=> d!37204 m!139891))

(declare-fun m!139893 () Bool)

(assert (=> d!37204 m!139893))

(assert (=> d!37204 m!139889))

(assert (=> d!37204 m!139873))

(declare-fun m!139895 () Bool)

(assert (=> d!37204 m!139895))

(declare-fun m!139897 () Bool)

(assert (=> d!37204 m!139897))

(assert (=> d!37204 m!139873))

(assert (=> d!37204 m!139869))

(declare-fun m!139899 () Bool)

(assert (=> d!37204 m!139899))

(assert (=> d!37204 m!139897))

(assert (=> d!37204 m!139879))

(declare-fun m!139901 () Bool)

(assert (=> d!37204 m!139901))

(assert (=> d!37204 m!139897))

(declare-fun m!139903 () Bool)

(assert (=> d!37204 m!139903))

(declare-fun m!139905 () Bool)

(assert (=> b!154227 m!139905))

(assert (=> b!154227 m!139865))

(assert (=> b!154227 m!139867))

(declare-fun m!139907 () Bool)

(assert (=> b!154227 m!139907))

(declare-fun m!139909 () Bool)

(assert (=> b!154227 m!139909))

(declare-fun m!139911 () Bool)

(assert (=> b!154227 m!139911))

(assert (=> b!154227 m!139897))

(assert (=> b!154227 m!139865))

(assert (=> b!154227 m!139909))

(assert (=> b!154227 m!139897))

(declare-fun m!139913 () Bool)

(assert (=> b!154227 m!139913))

(assert (=> b!154225 m!139865))

(assert (=> b!154225 m!139867))

(assert (=> b!154225 m!139867))

(declare-fun m!139915 () Bool)

(assert (=> b!154225 m!139915))

(assert (=> b!154225 m!139889))

(assert (=> b!154225 m!139889))

(declare-fun m!139917 () Bool)

(assert (=> b!154225 m!139917))

(assert (=> b!154225 m!139865))

(assert (=> b!154226 m!139889))

(assert (=> b!154226 m!139889))

(assert (=> b!154226 m!139917))

(assert (=> b!153529 d!37204))

(declare-fun d!37206 () Bool)

(assert (=> d!37206 (= (list!939 lt!45070) (list!940 (c!30889 lt!45070)))))

(declare-fun bs!14232 () Bool)

(assert (= bs!14232 d!37206))

(declare-fun m!139919 () Bool)

(assert (=> bs!14232 m!139919))

(assert (=> d!36868 d!37206))

(declare-fun bs!14233 () Bool)

(declare-fun d!37208 () Bool)

(assert (= bs!14233 (and d!37208 d!36870)))

(declare-fun lambda!4065 () Int)

(assert (=> bs!14233 (= lambda!4065 lambda!4023)))

(declare-fun bs!14234 () Bool)

(assert (= bs!14234 (and d!37208 d!36896)))

(assert (=> bs!14234 (not (= lambda!4065 lambda!4037))))

(declare-fun bs!14235 () Bool)

(assert (= bs!14235 (and d!37208 b!153336)))

(assert (=> bs!14235 (not (= lambda!4065 lambda!4006))))

(declare-fun bs!14236 () Bool)

(assert (= bs!14236 (and d!37208 b!153528)))

(assert (=> bs!14236 (= lambda!4065 lambda!4020)))

(declare-fun bs!14237 () Bool)

(assert (= bs!14237 (and d!37208 d!36820)))

(assert (=> bs!14237 (= lambda!4065 lambda!4014)))

(declare-fun bs!14238 () Bool)

(assert (= bs!14238 (and d!37208 b!153681)))

(assert (=> bs!14238 (= lambda!4065 lambda!4042)))

(declare-fun bs!14239 () Bool)

(assert (= bs!14239 (and d!37208 b!154101)))

(assert (=> bs!14239 (= lambda!4065 lambda!4062)))

(declare-fun bs!14240 () Bool)

(assert (= bs!14240 (and d!37208 b!153666)))

(assert (=> bs!14240 (= lambda!4065 lambda!4038)))

(declare-fun bs!14241 () Bool)

(assert (= bs!14241 (and d!37208 b!153887)))

(assert (=> bs!14241 (= lambda!4065 lambda!4047)))

(declare-fun b!154233 () Bool)

(declare-fun e!92384 () Bool)

(assert (=> b!154233 (= e!92384 true)))

(declare-fun b!154232 () Bool)

(declare-fun e!92383 () Bool)

(assert (=> b!154232 (= e!92383 e!92384)))

(declare-fun b!154231 () Bool)

(declare-fun e!92382 () Bool)

(assert (=> b!154231 (= e!92382 e!92383)))

(assert (=> d!37208 e!92382))

(assert (= b!154232 b!154233))

(assert (= b!154231 b!154232))

(assert (= (and d!37208 ((_ is Cons!2667) rules!1920)) b!154231))

(assert (=> b!154233 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4065))))

(assert (=> b!154233 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4065))))

(assert (=> d!37208 true))

(declare-fun lt!45457 () Bool)

(assert (=> d!37208 (= lt!45457 (forall!461 (t!25078 (t!25078 tokens!465)) lambda!4065))))

(declare-fun e!92381 () Bool)

(assert (=> d!37208 (= lt!45457 e!92381)))

(declare-fun res!70476 () Bool)

(assert (=> d!37208 (=> res!70476 e!92381)))

(assert (=> d!37208 (= res!70476 (not ((_ is Cons!2668) (t!25078 (t!25078 tokens!465)))))))

(assert (=> d!37208 (not (isEmpty!1056 rules!1920))))

(assert (=> d!37208 (= (rulesProduceEachTokenIndividuallyList!89 thiss!17480 rules!1920 (t!25078 (t!25078 tokens!465))) lt!45457)))

(declare-fun b!154229 () Bool)

(declare-fun e!92380 () Bool)

(assert (=> b!154229 (= e!92381 e!92380)))

(declare-fun res!70477 () Bool)

(assert (=> b!154229 (=> (not res!70477) (not e!92380))))

(assert (=> b!154229 (= res!70477 (rulesProduceIndividualToken!100 thiss!17480 rules!1920 (h!8065 (t!25078 (t!25078 tokens!465)))))))

(declare-fun b!154230 () Bool)

(assert (=> b!154230 (= e!92380 (rulesProduceEachTokenIndividuallyList!89 thiss!17480 rules!1920 (t!25078 (t!25078 (t!25078 tokens!465)))))))

(assert (= (and d!37208 (not res!70476)) b!154229))

(assert (= (and b!154229 res!70477) b!154230))

(declare-fun m!139921 () Bool)

(assert (=> d!37208 m!139921))

(assert (=> d!37208 m!138317))

(declare-fun m!139923 () Bool)

(assert (=> b!154229 m!139923))

(declare-fun m!139925 () Bool)

(assert (=> b!154230 m!139925))

(assert (=> b!153561 d!37208))

(declare-fun d!37210 () Bool)

(declare-fun lt!45458 () Bool)

(assert (=> d!37210 (= lt!45458 (isEmpty!1058 (list!939 (_2!1513 lt!45086))))))

(assert (=> d!37210 (= lt!45458 (isEmpty!1061 (c!30889 (_2!1513 lt!45086))))))

(assert (=> d!37210 (= (isEmpty!1060 (_2!1513 lt!45086)) lt!45458)))

(declare-fun bs!14242 () Bool)

(assert (= bs!14242 d!37210))

(declare-fun m!139927 () Bool)

(assert (=> bs!14242 m!139927))

(assert (=> bs!14242 m!139927))

(declare-fun m!139929 () Bool)

(assert (=> bs!14242 m!139929))

(declare-fun m!139931 () Bool)

(assert (=> bs!14242 m!139931))

(assert (=> b!153591 d!37210))

(declare-fun d!37212 () Bool)

(declare-fun res!70478 () Bool)

(declare-fun e!92385 () Bool)

(assert (=> d!37212 (=> res!70478 e!92385)))

(assert (=> d!37212 (= res!70478 ((_ is Nil!2668) (t!25078 tokens!465)))))

(assert (=> d!37212 (= (forall!461 (t!25078 tokens!465) lambda!4023) e!92385)))

(declare-fun b!154234 () Bool)

(declare-fun e!92386 () Bool)

(assert (=> b!154234 (= e!92385 e!92386)))

(declare-fun res!70479 () Bool)

(assert (=> b!154234 (=> (not res!70479) (not e!92386))))

(assert (=> b!154234 (= res!70479 (dynLambda!939 lambda!4023 (h!8065 (t!25078 tokens!465))))))

(declare-fun b!154235 () Bool)

(assert (=> b!154235 (= e!92386 (forall!461 (t!25078 (t!25078 tokens!465)) lambda!4023))))

(assert (= (and d!37212 (not res!70478)) b!154234))

(assert (= (and b!154234 res!70479) b!154235))

(declare-fun b_lambda!2941 () Bool)

(assert (=> (not b_lambda!2941) (not b!154234)))

(declare-fun m!139933 () Bool)

(assert (=> b!154234 m!139933))

(declare-fun m!139935 () Bool)

(assert (=> b!154235 m!139935))

(assert (=> d!36870 d!37212))

(assert (=> d!36870 d!36830))

(declare-fun bs!14243 () Bool)

(declare-fun d!37214 () Bool)

(assert (= bs!14243 (and d!37214 d!36870)))

(declare-fun lambda!4066 () Int)

(assert (=> bs!14243 (= lambda!4066 lambda!4023)))

(declare-fun bs!14244 () Bool)

(assert (= bs!14244 (and d!37214 d!36896)))

(assert (=> bs!14244 (not (= lambda!4066 lambda!4037))))

(declare-fun bs!14245 () Bool)

(assert (= bs!14245 (and d!37214 b!153336)))

(assert (=> bs!14245 (not (= lambda!4066 lambda!4006))))

(declare-fun bs!14246 () Bool)

(assert (= bs!14246 (and d!37214 d!37208)))

(assert (=> bs!14246 (= lambda!4066 lambda!4065)))

(declare-fun bs!14247 () Bool)

(assert (= bs!14247 (and d!37214 b!153528)))

(assert (=> bs!14247 (= lambda!4066 lambda!4020)))

(declare-fun bs!14248 () Bool)

(assert (= bs!14248 (and d!37214 d!36820)))

(assert (=> bs!14248 (= lambda!4066 lambda!4014)))

(declare-fun bs!14249 () Bool)

(assert (= bs!14249 (and d!37214 b!153681)))

(assert (=> bs!14249 (= lambda!4066 lambda!4042)))

(declare-fun bs!14250 () Bool)

(assert (= bs!14250 (and d!37214 b!154101)))

(assert (=> bs!14250 (= lambda!4066 lambda!4062)))

(declare-fun bs!14251 () Bool)

(assert (= bs!14251 (and d!37214 b!153666)))

(assert (=> bs!14251 (= lambda!4066 lambda!4038)))

(declare-fun bs!14252 () Bool)

(assert (= bs!14252 (and d!37214 b!153887)))

(assert (=> bs!14252 (= lambda!4066 lambda!4047)))

(declare-fun b!154240 () Bool)

(declare-fun e!92391 () Bool)

(assert (=> b!154240 (= e!92391 true)))

(declare-fun b!154239 () Bool)

(declare-fun e!92390 () Bool)

(assert (=> b!154239 (= e!92390 e!92391)))

(declare-fun b!154238 () Bool)

(declare-fun e!92389 () Bool)

(assert (=> b!154238 (= e!92389 e!92390)))

(assert (=> d!37214 e!92389))

(assert (= b!154239 b!154240))

(assert (= b!154238 b!154239))

(assert (= (and d!37214 ((_ is Cons!2667) rules!1920)) b!154238))

(assert (=> b!154240 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4066))))

(assert (=> b!154240 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4066))))

(assert (=> d!37214 true))

(declare-fun lt!45459 () Bool)

(assert (=> d!37214 (= lt!45459 (forall!461 (list!942 lt!45003) lambda!4066))))

(declare-fun e!92388 () Bool)

(assert (=> d!37214 (= lt!45459 e!92388)))

(declare-fun res!70480 () Bool)

(assert (=> d!37214 (=> res!70480 e!92388)))

(assert (=> d!37214 (= res!70480 (not ((_ is Cons!2668) (list!942 lt!45003))))))

(assert (=> d!37214 (not (isEmpty!1056 rules!1920))))

(assert (=> d!37214 (= (rulesProduceEachTokenIndividuallyList!89 thiss!17480 rules!1920 (list!942 lt!45003)) lt!45459)))

(declare-fun b!154236 () Bool)

(declare-fun e!92387 () Bool)

(assert (=> b!154236 (= e!92388 e!92387)))

(declare-fun res!70481 () Bool)

(assert (=> b!154236 (=> (not res!70481) (not e!92387))))

(assert (=> b!154236 (= res!70481 (rulesProduceIndividualToken!100 thiss!17480 rules!1920 (h!8065 (list!942 lt!45003))))))

(declare-fun b!154237 () Bool)

(assert (=> b!154237 (= e!92387 (rulesProduceEachTokenIndividuallyList!89 thiss!17480 rules!1920 (t!25078 (list!942 lt!45003))))))

(assert (= (and d!37214 (not res!70480)) b!154236))

(assert (= (and b!154236 res!70481) b!154237))

(assert (=> d!37214 m!138381))

(declare-fun m!139937 () Bool)

(assert (=> d!37214 m!139937))

(assert (=> d!37214 m!138317))

(declare-fun m!139939 () Bool)

(assert (=> b!154236 m!139939))

(declare-fun m!139941 () Bool)

(assert (=> b!154237 m!139941))

(assert (=> b!153394 d!37214))

(assert (=> b!153394 d!37012))

(declare-fun d!37216 () Bool)

(declare-fun c!31085 () Bool)

(assert (=> d!37216 (= c!31085 ((_ is Nil!2666) lt!45081))))

(declare-fun e!92392 () (InoxSet C!2300))

(assert (=> d!37216 (= (content!369 lt!45081) e!92392)))

(declare-fun b!154241 () Bool)

(assert (=> b!154241 (= e!92392 ((as const (Array C!2300 Bool)) false))))

(declare-fun b!154242 () Bool)

(assert (=> b!154242 (= e!92392 ((_ map or) (store ((as const (Array C!2300 Bool)) false) (h!8063 lt!45081) true) (content!369 (t!25076 lt!45081))))))

(assert (= (and d!37216 c!31085) b!154241))

(assert (= (and d!37216 (not c!31085)) b!154242))

(declare-fun m!139943 () Bool)

(assert (=> b!154242 m!139943))

(declare-fun m!139945 () Bool)

(assert (=> b!154242 m!139945))

(assert (=> d!36880 d!37216))

(assert (=> d!36880 d!37114))

(assert (=> d!36880 d!36932))

(declare-fun d!37218 () Bool)

(assert (=> d!37218 (= (list!939 (ite c!30940 call!6274 e!91935)) (list!940 (c!30889 (ite c!30940 call!6274 e!91935))))))

(declare-fun bs!14253 () Bool)

(assert (= bs!14253 d!37218))

(declare-fun m!139947 () Bool)

(assert (=> bs!14253 m!139947))

(assert (=> bm!6270 d!37218))

(declare-fun d!37220 () Bool)

(declare-fun lt!45460 () BalanceConc!1512)

(assert (=> d!37220 (= (list!939 lt!45460) (originalCharacters!508 (ite c!30969 call!6307 call!6311)))))

(assert (=> d!37220 (= lt!45460 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (ite c!30969 call!6307 call!6311)))) (value!17568 (ite c!30969 call!6307 call!6311))))))

(assert (=> d!37220 (= (charsOf!120 (ite c!30969 call!6307 call!6311)) lt!45460)))

(declare-fun b_lambda!2943 () Bool)

(assert (=> (not b_lambda!2943) (not d!37220)))

(declare-fun t!25202 () Bool)

(declare-fun tb!5343 () Bool)

(assert (=> (and b!153322 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 (ite c!30969 call!6307 call!6311))))) t!25202) tb!5343))

(declare-fun tp!79661 () Bool)

(declare-fun b!154243 () Bool)

(declare-fun e!92393 () Bool)

(assert (=> b!154243 (= e!92393 (and (inv!3468 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (ite c!30969 call!6307 call!6311)))) (value!17568 (ite c!30969 call!6307 call!6311))))) tp!79661))))

(declare-fun result!7842 () Bool)

(assert (=> tb!5343 (= result!7842 (and (inv!3469 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (ite c!30969 call!6307 call!6311)))) (value!17568 (ite c!30969 call!6307 call!6311)))) e!92393))))

(assert (= tb!5343 b!154243))

(declare-fun m!139949 () Bool)

(assert (=> b!154243 m!139949))

(declare-fun m!139951 () Bool)

(assert (=> tb!5343 m!139951))

(assert (=> d!37220 t!25202))

(declare-fun b_and!9137 () Bool)

(assert (= b_and!9125 (and (=> t!25202 result!7842) b_and!9137)))

(declare-fun tb!5345 () Bool)

(declare-fun t!25204 () Bool)

(assert (=> (and b!153328 (= (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toChars!963 (transformation!465 (rule!972 (ite c!30969 call!6307 call!6311))))) t!25204) tb!5345))

(declare-fun result!7844 () Bool)

(assert (= result!7844 result!7842))

(assert (=> d!37220 t!25204))

(declare-fun b_and!9139 () Bool)

(assert (= b_and!9117 (and (=> t!25204 result!7844) b_and!9139)))

(declare-fun t!25206 () Bool)

(declare-fun tb!5347 () Bool)

(assert (=> (and b!153812 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toChars!963 (transformation!465 (rule!972 (ite c!30969 call!6307 call!6311))))) t!25206) tb!5347))

(declare-fun result!7846 () Bool)

(assert (= result!7846 result!7842))

(assert (=> d!37220 t!25206))

(declare-fun b_and!9141 () Bool)

(assert (= b_and!9123 (and (=> t!25206 result!7846) b_and!9141)))

(declare-fun t!25208 () Bool)

(declare-fun tb!5349 () Bool)

(assert (=> (and b!153316 (= (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toChars!963 (transformation!465 (rule!972 (ite c!30969 call!6307 call!6311))))) t!25208) tb!5349))

(declare-fun result!7848 () Bool)

(assert (= result!7848 result!7842))

(assert (=> d!37220 t!25208))

(declare-fun b_and!9143 () Bool)

(assert (= b_and!9119 (and (=> t!25208 result!7848) b_and!9143)))

(declare-fun tb!5351 () Bool)

(declare-fun t!25210 () Bool)

(assert (=> (and b!153769 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 (ite c!30969 call!6307 call!6311))))) t!25210) tb!5351))

(declare-fun result!7850 () Bool)

(assert (= result!7850 result!7842))

(assert (=> d!37220 t!25210))

(declare-fun b_and!9145 () Bool)

(assert (= b_and!9121 (and (=> t!25210 result!7850) b_and!9145)))

(declare-fun m!139953 () Bool)

(assert (=> d!37220 m!139953))

(declare-fun m!139955 () Bool)

(assert (=> d!37220 m!139955))

(assert (=> bm!6303 d!37220))

(declare-fun bs!14254 () Bool)

(declare-fun d!37222 () Bool)

(assert (= bs!14254 (and d!37222 d!36976)))

(declare-fun lambda!4067 () Int)

(assert (=> bs!14254 (= (and (= (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465))))) (= (toValue!1104 (transformation!465 (rule!972 separatorToken!170))) (toValue!1104 (transformation!465 (rule!972 (h!8065 tokens!465)))))) (= lambda!4067 lambda!4050))))

(assert (=> d!37222 true))

(assert (=> d!37222 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (rule!972 separatorToken!170)))) (dynLambda!941 order!1341 lambda!4067))))

(assert (=> d!37222 true))

(assert (=> d!37222 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (rule!972 separatorToken!170)))) (dynLambda!941 order!1341 lambda!4067))))

(assert (=> d!37222 (= (semiInverseModEq!160 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toValue!1104 (transformation!465 (rule!972 separatorToken!170)))) (Forall!123 lambda!4067))))

(declare-fun bs!14255 () Bool)

(assert (= bs!14255 d!37222))

(declare-fun m!139957 () Bool)

(assert (=> bs!14255 m!139957))

(assert (=> d!36892 d!37222))

(declare-fun d!37224 () Bool)

(assert (=> d!37224 (= (list!939 call!6316) (list!940 (c!30889 call!6316)))))

(declare-fun bs!14256 () Bool)

(assert (= bs!14256 d!37224))

(declare-fun m!139959 () Bool)

(assert (=> bs!14256 m!139959))

(assert (=> b!153687 d!37224))

(assert (=> b!153661 d!37098))

(declare-fun d!37226 () Bool)

(declare-fun lt!45461 () Int)

(assert (=> d!37226 (>= lt!45461 0)))

(declare-fun e!92394 () Int)

(assert (=> d!37226 (= lt!45461 e!92394)))

(declare-fun c!31086 () Bool)

(assert (=> d!37226 (= c!31086 ((_ is Nil!2666) lt!45023))))

(assert (=> d!37226 (= (size!2263 lt!45023) lt!45461)))

(declare-fun b!154244 () Bool)

(assert (=> b!154244 (= e!92394 0)))

(declare-fun b!154245 () Bool)

(assert (=> b!154245 (= e!92394 (+ 1 (size!2263 (t!25076 lt!45023))))))

(assert (= (and d!37226 c!31086) b!154244))

(assert (= (and d!37226 (not c!31086)) b!154245))

(declare-fun m!139961 () Bool)

(assert (=> b!154245 m!139961))

(assert (=> b!153451 d!37226))

(assert (=> b!153451 d!37140))

(declare-fun d!37228 () Bool)

(declare-fun lt!45462 () Int)

(assert (=> d!37228 (>= lt!45462 0)))

(declare-fun e!92395 () Int)

(assert (=> d!37228 (= lt!45462 e!92395)))

(declare-fun c!31087 () Bool)

(assert (=> d!37228 (= c!31087 ((_ is Nil!2666) lt!45001))))

(assert (=> d!37228 (= (size!2263 lt!45001) lt!45462)))

(declare-fun b!154246 () Bool)

(assert (=> b!154246 (= e!92395 0)))

(declare-fun b!154247 () Bool)

(assert (=> b!154247 (= e!92395 (+ 1 (size!2263 (t!25076 lt!45001))))))

(assert (= (and d!37228 c!31087) b!154246))

(assert (= (and d!37228 (not c!31087)) b!154247))

(assert (=> b!154247 m!139571))

(assert (=> b!153451 d!37228))

(assert (=> b!153685 d!36864))

(declare-fun b!154249 () Bool)

(declare-fun e!92397 () List!2676)

(assert (=> b!154249 (= e!92397 (Cons!2666 (h!8063 call!6273) (++!576 (t!25076 call!6273) lt!45061)))))

(declare-fun d!37230 () Bool)

(declare-fun e!92396 () Bool)

(assert (=> d!37230 e!92396))

(declare-fun res!70482 () Bool)

(assert (=> d!37230 (=> (not res!70482) (not e!92396))))

(declare-fun lt!45463 () List!2676)

(assert (=> d!37230 (= res!70482 (= (content!369 lt!45463) ((_ map or) (content!369 call!6273) (content!369 lt!45061))))))

(assert (=> d!37230 (= lt!45463 e!92397)))

(declare-fun c!31088 () Bool)

(assert (=> d!37230 (= c!31088 ((_ is Nil!2666) call!6273))))

(assert (=> d!37230 (= (++!576 call!6273 lt!45061) lt!45463)))

(declare-fun b!154251 () Bool)

(assert (=> b!154251 (= e!92396 (or (not (= lt!45061 Nil!2666)) (= lt!45463 call!6273)))))

(declare-fun b!154248 () Bool)

(assert (=> b!154248 (= e!92397 lt!45061)))

(declare-fun b!154250 () Bool)

(declare-fun res!70483 () Bool)

(assert (=> b!154250 (=> (not res!70483) (not e!92396))))

(assert (=> b!154250 (= res!70483 (= (size!2263 lt!45463) (+ (size!2263 call!6273) (size!2263 lt!45061))))))

(assert (= (and d!37230 c!31088) b!154248))

(assert (= (and d!37230 (not c!31088)) b!154249))

(assert (= (and d!37230 res!70482) b!154250))

(assert (= (and b!154250 res!70483) b!154251))

(declare-fun m!139963 () Bool)

(assert (=> b!154249 m!139963))

(declare-fun m!139965 () Bool)

(assert (=> d!37230 m!139965))

(declare-fun m!139967 () Bool)

(assert (=> d!37230 m!139967))

(assert (=> d!37230 m!138945))

(declare-fun m!139969 () Bool)

(assert (=> b!154250 m!139969))

(declare-fun m!139971 () Bool)

(assert (=> b!154250 m!139971))

(assert (=> b!154250 m!138951))

(assert (=> b!153525 d!37230))

(declare-fun e!92399 () List!2676)

(declare-fun b!154253 () Bool)

(assert (=> b!154253 (= e!92399 (Cons!2666 (h!8063 e!91931) (++!576 (t!25076 e!91931) (ite c!30940 lt!45061 call!6272))))))

(declare-fun d!37232 () Bool)

(declare-fun e!92398 () Bool)

(assert (=> d!37232 e!92398))

(declare-fun res!70484 () Bool)

(assert (=> d!37232 (=> (not res!70484) (not e!92398))))

(declare-fun lt!45464 () List!2676)

(assert (=> d!37232 (= res!70484 (= (content!369 lt!45464) ((_ map or) (content!369 e!91931) (content!369 (ite c!30940 lt!45061 call!6272)))))))

(assert (=> d!37232 (= lt!45464 e!92399)))

(declare-fun c!31089 () Bool)

(assert (=> d!37232 (= c!31089 ((_ is Nil!2666) e!91931))))

(assert (=> d!37232 (= (++!576 e!91931 (ite c!30940 lt!45061 call!6272)) lt!45464)))

(declare-fun b!154255 () Bool)

(assert (=> b!154255 (= e!92398 (or (not (= (ite c!30940 lt!45061 call!6272) Nil!2666)) (= lt!45464 e!91931)))))

(declare-fun b!154252 () Bool)

(assert (=> b!154252 (= e!92399 (ite c!30940 lt!45061 call!6272))))

(declare-fun b!154254 () Bool)

(declare-fun res!70485 () Bool)

(assert (=> b!154254 (=> (not res!70485) (not e!92398))))

(assert (=> b!154254 (= res!70485 (= (size!2263 lt!45464) (+ (size!2263 e!91931) (size!2263 (ite c!30940 lt!45061 call!6272)))))))

(assert (= (and d!37232 c!31089) b!154252))

(assert (= (and d!37232 (not c!31089)) b!154253))

(assert (= (and d!37232 res!70484) b!154254))

(assert (= (and b!154254 res!70485) b!154255))

(declare-fun m!139973 () Bool)

(assert (=> b!154253 m!139973))

(declare-fun m!139975 () Bool)

(assert (=> d!37232 m!139975))

(declare-fun m!139977 () Bool)

(assert (=> d!37232 m!139977))

(declare-fun m!139979 () Bool)

(assert (=> d!37232 m!139979))

(declare-fun m!139981 () Bool)

(assert (=> b!154254 m!139981))

(declare-fun m!139983 () Bool)

(assert (=> b!154254 m!139983))

(declare-fun m!139985 () Bool)

(assert (=> b!154254 m!139985))

(assert (=> bm!6267 d!37232))

(declare-fun d!37234 () Bool)

(declare-fun lt!45465 () Int)

(assert (=> d!37234 (>= lt!45465 0)))

(declare-fun e!92400 () Int)

(assert (=> d!37234 (= lt!45465 e!92400)))

(declare-fun c!31090 () Bool)

(assert (=> d!37234 (= c!31090 ((_ is Nil!2666) lt!45019))))

(assert (=> d!37234 (= (size!2263 lt!45019) lt!45465)))

(declare-fun b!154256 () Bool)

(assert (=> b!154256 (= e!92400 0)))

(declare-fun b!154257 () Bool)

(assert (=> b!154257 (= e!92400 (+ 1 (size!2263 (t!25076 lt!45019))))))

(assert (= (and d!37234 c!31090) b!154256))

(assert (= (and d!37234 (not c!31090)) b!154257))

(declare-fun m!139987 () Bool)

(assert (=> b!154257 m!139987))

(assert (=> b!153447 d!37234))

(declare-fun d!37236 () Bool)

(declare-fun lt!45466 () Int)

(assert (=> d!37236 (>= lt!45466 0)))

(declare-fun e!92401 () Int)

(assert (=> d!37236 (= lt!45466 e!92401)))

(declare-fun c!31091 () Bool)

(assert (=> d!37236 (= c!31091 ((_ is Nil!2666) (++!576 lt!45002 lt!45001)))))

(assert (=> d!37236 (= (size!2263 (++!576 lt!45002 lt!45001)) lt!45466)))

(declare-fun b!154258 () Bool)

(assert (=> b!154258 (= e!92401 0)))

(declare-fun b!154259 () Bool)

(assert (=> b!154259 (= e!92401 (+ 1 (size!2263 (t!25076 (++!576 lt!45002 lt!45001)))))))

(assert (= (and d!37236 c!31091) b!154258))

(assert (= (and d!37236 (not c!31091)) b!154259))

(assert (=> b!154259 m!139195))

(assert (=> b!153447 d!37236))

(declare-fun d!37238 () Bool)

(declare-fun lt!45467 () Int)

(assert (=> d!37238 (>= lt!45467 0)))

(declare-fun e!92402 () Int)

(assert (=> d!37238 (= lt!45467 e!92402)))

(declare-fun c!31092 () Bool)

(assert (=> d!37238 (= c!31092 ((_ is Nil!2666) lt!44998))))

(assert (=> d!37238 (= (size!2263 lt!44998) lt!45467)))

(declare-fun b!154260 () Bool)

(assert (=> b!154260 (= e!92402 0)))

(declare-fun b!154261 () Bool)

(assert (=> b!154261 (= e!92402 (+ 1 (size!2263 (t!25076 lt!44998))))))

(assert (= (and d!37238 c!31092) b!154260))

(assert (= (and d!37238 (not c!31092)) b!154261))

(declare-fun m!139989 () Bool)

(assert (=> b!154261 m!139989))

(assert (=> b!153447 d!37238))

(declare-fun d!37240 () Bool)

(declare-fun res!70486 () Bool)

(declare-fun e!92403 () Bool)

(assert (=> d!37240 (=> res!70486 e!92403)))

(assert (=> d!37240 (= res!70486 (not ((_ is Cons!2667) (t!25077 rules!1920))))))

(assert (=> d!37240 (= (sepAndNonSepRulesDisjointChars!54 rules!1920 (t!25077 rules!1920)) e!92403)))

(declare-fun b!154262 () Bool)

(declare-fun e!92404 () Bool)

(assert (=> b!154262 (= e!92403 e!92404)))

(declare-fun res!70487 () Bool)

(assert (=> b!154262 (=> (not res!70487) (not e!92404))))

(assert (=> b!154262 (= res!70487 (ruleDisjointCharsFromAllFromOtherType!19 (h!8064 (t!25077 rules!1920)) rules!1920))))

(declare-fun b!154263 () Bool)

(assert (=> b!154263 (= e!92404 (sepAndNonSepRulesDisjointChars!54 rules!1920 (t!25077 (t!25077 rules!1920))))))

(assert (= (and d!37240 (not res!70486)) b!154262))

(assert (= (and b!154262 res!70487) b!154263))

(declare-fun m!139991 () Bool)

(assert (=> b!154262 m!139991))

(declare-fun m!139993 () Bool)

(assert (=> b!154263 m!139993))

(assert (=> b!153715 d!37240))

(declare-fun d!37242 () Bool)

(assert (=> d!37242 (= (inv!3469 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170))) (isBalanced!210 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170)))))))

(declare-fun bs!14257 () Bool)

(assert (= bs!14257 d!37242))

(declare-fun m!139995 () Bool)

(assert (=> bs!14257 m!139995))

(assert (=> tb!5265 d!37242))

(declare-fun d!37244 () Bool)

(assert (=> d!37244 (= (inv!16 (value!17568 (h!8065 tokens!465))) (= (charsToInt!0 (text!3856 (value!17568 (h!8065 tokens!465)))) (value!17559 (value!17568 (h!8065 tokens!465)))))))

(declare-fun bs!14258 () Bool)

(assert (= bs!14258 d!37244))

(declare-fun m!139997 () Bool)

(assert (=> bs!14258 m!139997))

(assert (=> b!153435 d!37244))

(declare-fun d!37246 () Bool)

(declare-fun lt!45468 () Int)

(assert (=> d!37246 (>= lt!45468 0)))

(declare-fun e!92405 () Int)

(assert (=> d!37246 (= lt!45468 e!92405)))

(declare-fun c!31093 () Bool)

(assert (=> d!37246 (= c!31093 ((_ is Nil!2666) (originalCharacters!508 (h!8065 tokens!465))))))

(assert (=> d!37246 (= (size!2263 (originalCharacters!508 (h!8065 tokens!465))) lt!45468)))

(declare-fun b!154264 () Bool)

(assert (=> b!154264 (= e!92405 0)))

(declare-fun b!154265 () Bool)

(assert (=> b!154265 (= e!92405 (+ 1 (size!2263 (t!25076 (originalCharacters!508 (h!8065 tokens!465))))))))

(assert (= (and d!37246 c!31093) b!154264))

(assert (= (and d!37246 (not c!31093)) b!154265))

(declare-fun m!139999 () Bool)

(assert (=> b!154265 m!139999))

(assert (=> b!153581 d!37246))

(declare-fun d!37248 () Bool)

(declare-fun lt!45469 () Int)

(assert (=> d!37248 (>= lt!45469 0)))

(declare-fun e!92406 () Int)

(assert (=> d!37248 (= lt!45469 e!92406)))

(declare-fun c!31094 () Bool)

(assert (=> d!37248 (= c!31094 ((_ is Nil!2666) (originalCharacters!508 separatorToken!170)))))

(assert (=> d!37248 (= (size!2263 (originalCharacters!508 separatorToken!170)) lt!45469)))

(declare-fun b!154266 () Bool)

(assert (=> b!154266 (= e!92406 0)))

(declare-fun b!154267 () Bool)

(assert (=> b!154267 (= e!92406 (+ 1 (size!2263 (t!25076 (originalCharacters!508 separatorToken!170)))))))

(assert (= (and d!37248 c!31094) b!154266))

(assert (= (and d!37248 (not c!31094)) b!154267))

(declare-fun m!140001 () Bool)

(assert (=> b!154267 m!140001))

(assert (=> b!153583 d!37248))

(declare-fun d!37250 () Bool)

(assert (=> d!37250 (= (inv!15 (value!17568 separatorToken!170)) (= (charsToBigInt!0 (text!3858 (value!17568 separatorToken!170)) 0) (value!17563 (value!17568 separatorToken!170))))))

(declare-fun bs!14259 () Bool)

(assert (= bs!14259 d!37250))

(declare-fun m!140003 () Bool)

(assert (=> bs!14259 m!140003))

(assert (=> b!153431 d!37250))

(declare-fun d!37252 () Bool)

(declare-fun res!70488 () Bool)

(declare-fun e!92407 () Bool)

(assert (=> d!37252 (=> res!70488 e!92407)))

(assert (=> d!37252 (= res!70488 ((_ is Nil!2668) (t!25078 tokens!465)))))

(assert (=> d!37252 (= (forall!461 (t!25078 tokens!465) lambda!4006) e!92407)))

(declare-fun b!154268 () Bool)

(declare-fun e!92408 () Bool)

(assert (=> b!154268 (= e!92407 e!92408)))

(declare-fun res!70489 () Bool)

(assert (=> b!154268 (=> (not res!70489) (not e!92408))))

(assert (=> b!154268 (= res!70489 (dynLambda!939 lambda!4006 (h!8065 (t!25078 tokens!465))))))

(declare-fun b!154269 () Bool)

(assert (=> b!154269 (= e!92408 (forall!461 (t!25078 (t!25078 tokens!465)) lambda!4006))))

(assert (= (and d!37252 (not res!70488)) b!154268))

(assert (= (and b!154268 res!70489) b!154269))

(declare-fun b_lambda!2945 () Bool)

(assert (=> (not b_lambda!2945) (not b!154268)))

(declare-fun m!140005 () Bool)

(assert (=> b!154268 m!140005))

(declare-fun m!140007 () Bool)

(assert (=> b!154269 m!140007))

(assert (=> b!153696 d!37252))

(declare-fun d!37254 () Bool)

(assert (=> d!37254 (= (inv!17 (value!17568 separatorToken!170)) (= (charsToBigInt!1 (text!3857 (value!17568 separatorToken!170))) (value!17560 (value!17568 separatorToken!170))))))

(declare-fun bs!14260 () Bool)

(assert (= bs!14260 d!37254))

(declare-fun m!140009 () Bool)

(assert (=> bs!14260 m!140009))

(assert (=> b!153429 d!37254))

(declare-fun d!37256 () Bool)

(declare-fun e!92411 () Bool)

(assert (=> d!37256 e!92411))

(declare-fun res!70492 () Bool)

(assert (=> d!37256 (=> (not res!70492) (not e!92411))))

(declare-fun lt!45472 () BalanceConc!1514)

(assert (=> d!37256 (= res!70492 (= (list!942 lt!45472) tokens!465))))

(declare-fun fromList!86 (List!2678) Conc!753)

(assert (=> d!37256 (= lt!45472 (BalanceConc!1515 (fromList!86 tokens!465)))))

(assert (=> d!37256 (= (fromListB!128 tokens!465) lt!45472)))

(declare-fun b!154272 () Bool)

(assert (=> b!154272 (= e!92411 (isBalanced!209 (fromList!86 tokens!465)))))

(assert (= (and d!37256 res!70492) b!154272))

(declare-fun m!140011 () Bool)

(assert (=> d!37256 m!140011))

(declare-fun m!140013 () Bool)

(assert (=> d!37256 m!140013))

(assert (=> b!154272 m!140013))

(assert (=> b!154272 m!140013))

(declare-fun m!140015 () Bool)

(assert (=> b!154272 m!140015))

(assert (=> d!36826 d!37256))

(assert (=> d!36836 d!36834))

(assert (=> d!36836 d!36840))

(assert (=> d!36836 d!36880))

(declare-fun b!154274 () Bool)

(declare-fun e!92413 () List!2676)

(assert (=> b!154274 (= e!92413 (Cons!2666 (h!8063 lt!45002) (++!576 (t!25076 lt!45002) (++!576 lt!45001 lt!44998))))))

(declare-fun d!37258 () Bool)

(declare-fun e!92412 () Bool)

(assert (=> d!37258 e!92412))

(declare-fun res!70493 () Bool)

(assert (=> d!37258 (=> (not res!70493) (not e!92412))))

(declare-fun lt!45473 () List!2676)

(assert (=> d!37258 (= res!70493 (= (content!369 lt!45473) ((_ map or) (content!369 lt!45002) (content!369 (++!576 lt!45001 lt!44998)))))))

(assert (=> d!37258 (= lt!45473 e!92413)))

(declare-fun c!31096 () Bool)

(assert (=> d!37258 (= c!31096 ((_ is Nil!2666) lt!45002))))

(assert (=> d!37258 (= (++!576 lt!45002 (++!576 lt!45001 lt!44998)) lt!45473)))

(declare-fun b!154276 () Bool)

(assert (=> b!154276 (= e!92412 (or (not (= (++!576 lt!45001 lt!44998) Nil!2666)) (= lt!45473 lt!45002)))))

(declare-fun b!154273 () Bool)

(assert (=> b!154273 (= e!92413 (++!576 lt!45001 lt!44998))))

(declare-fun b!154275 () Bool)

(declare-fun res!70494 () Bool)

(assert (=> b!154275 (=> (not res!70494) (not e!92412))))

(assert (=> b!154275 (= res!70494 (= (size!2263 lt!45473) (+ (size!2263 lt!45002) (size!2263 (++!576 lt!45001 lt!44998)))))))

(assert (= (and d!37258 c!31096) b!154273))

(assert (= (and d!37258 (not c!31096)) b!154274))

(assert (= (and d!37258 res!70493) b!154275))

(assert (= (and b!154275 res!70494) b!154276))

(assert (=> b!154274 m!138305))

(declare-fun m!140017 () Bool)

(assert (=> b!154274 m!140017))

(declare-fun m!140019 () Bool)

(assert (=> d!37258 m!140019))

(assert (=> d!37258 m!138427))

(assert (=> d!37258 m!138305))

(declare-fun m!140021 () Bool)

(assert (=> d!37258 m!140021))

(declare-fun m!140023 () Bool)

(assert (=> b!154275 m!140023))

(assert (=> b!154275 m!138433))

(assert (=> b!154275 m!138305))

(declare-fun m!140025 () Bool)

(assert (=> b!154275 m!140025))

(assert (=> d!36836 d!37258))

(declare-fun d!37260 () Bool)

(assert (=> d!37260 (= (++!576 (++!576 lt!45002 lt!45001) lt!44998) (++!576 lt!45002 (++!576 lt!45001 lt!44998)))))

(assert (=> d!37260 true))

(declare-fun _$52!561 () Unit!2058)

(assert (=> d!37260 (= (choose!1754 lt!45002 lt!45001 lt!44998) _$52!561)))

(declare-fun bs!14261 () Bool)

(assert (= bs!14261 d!37260))

(assert (=> bs!14261 m!138285))

(assert (=> bs!14261 m!138285))

(assert (=> bs!14261 m!138293))

(assert (=> bs!14261 m!138305))

(assert (=> bs!14261 m!138305))

(assert (=> bs!14261 m!138419))

(assert (=> d!36836 d!37260))

(declare-fun d!37262 () Bool)

(declare-fun c!31099 () Bool)

(assert (=> d!37262 (= c!31099 ((_ is Node!752) (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170)))))))

(declare-fun e!92420 () Bool)

(assert (=> d!37262 (= (inv!3468 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170)))) e!92420)))

(declare-fun b!154295 () Bool)

(assert (=> b!154295 (= e!92420 (inv!3470 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170)))))))

(declare-fun b!154296 () Bool)

(declare-fun e!92421 () Bool)

(assert (=> b!154296 (= e!92420 e!92421)))

(declare-fun res!70509 () Bool)

(assert (=> b!154296 (= res!70509 (not ((_ is Leaf!1324) (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170))))))))

(assert (=> b!154296 (=> res!70509 e!92421)))

(declare-fun b!154297 () Bool)

(assert (=> b!154297 (= e!92421 (inv!3471 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170)))))))

(assert (= (and d!37262 c!31099) b!154295))

(assert (= (and d!37262 (not c!31099)) b!154296))

(assert (= (and b!154296 (not res!70509)) b!154297))

(declare-fun m!140027 () Bool)

(assert (=> b!154295 m!140027))

(declare-fun m!140029 () Bool)

(assert (=> b!154297 m!140029))

(assert (=> b!153542 d!37262))

(declare-fun d!37264 () Bool)

(declare-fun lt!45484 () Int)

(assert (=> d!37264 (>= lt!45484 0)))

(declare-fun e!92422 () Int)

(assert (=> d!37264 (= lt!45484 e!92422)))

(declare-fun c!31100 () Bool)

(assert (=> d!37264 (= c!31100 ((_ is Nil!2666) lt!45081))))

(assert (=> d!37264 (= (size!2263 lt!45081) lt!45484)))

(declare-fun b!154298 () Bool)

(assert (=> b!154298 (= e!92422 0)))

(declare-fun b!154299 () Bool)

(assert (=> b!154299 (= e!92422 (+ 1 (size!2263 (t!25076 lt!45081))))))

(assert (= (and d!37264 c!31100) b!154298))

(assert (= (and d!37264 (not c!31100)) b!154299))

(declare-fun m!140031 () Bool)

(assert (=> b!154299 m!140031))

(assert (=> b!153571 d!37264))

(assert (=> b!153571 d!37228))

(assert (=> b!153571 d!37238))

(declare-fun d!37266 () Bool)

(declare-fun c!31101 () Bool)

(assert (=> d!37266 (= c!31101 ((_ is Empty!752) (c!30889 (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 0))))))

(declare-fun e!92423 () List!2676)

(assert (=> d!37266 (= (list!940 (c!30889 (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 0))) e!92423)))

(declare-fun b!154303 () Bool)

(declare-fun e!92424 () List!2676)

(assert (=> b!154303 (= e!92424 (++!576 (list!940 (left!2011 (c!30889 (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 0)))) (list!940 (right!2341 (c!30889 (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 0))))))))

(declare-fun b!154302 () Bool)

(assert (=> b!154302 (= e!92424 (list!944 (xs!3347 (c!30889 (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 0)))))))

(declare-fun b!154300 () Bool)

(assert (=> b!154300 (= e!92423 Nil!2666)))

(declare-fun b!154301 () Bool)

(assert (=> b!154301 (= e!92423 e!92424)))

(declare-fun c!31102 () Bool)

(assert (=> b!154301 (= c!31102 ((_ is Leaf!1324) (c!30889 (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 0))))))

(assert (= (and d!37266 c!31101) b!154300))

(assert (= (and d!37266 (not c!31101)) b!154301))

(assert (= (and b!154301 c!31102) b!154302))

(assert (= (and b!154301 (not c!31102)) b!154303))

(declare-fun m!140033 () Bool)

(assert (=> b!154303 m!140033))

(declare-fun m!140035 () Bool)

(assert (=> b!154303 m!140035))

(assert (=> b!154303 m!140033))

(assert (=> b!154303 m!140035))

(declare-fun m!140037 () Bool)

(assert (=> b!154303 m!140037))

(declare-fun m!140039 () Bool)

(assert (=> b!154302 m!140039))

(assert (=> d!36894 d!37266))

(declare-fun b!154305 () Bool)

(declare-fun e!92426 () List!2676)

(assert (=> b!154305 (= e!92426 (Cons!2666 (h!8063 (list!939 (charsOf!120 (h!8065 tokens!465)))) (++!576 (t!25076 (list!939 (charsOf!120 (h!8065 tokens!465)))) lt!45181)))))

(declare-fun d!37268 () Bool)

(declare-fun e!92425 () Bool)

(assert (=> d!37268 e!92425))

(declare-fun res!70510 () Bool)

(assert (=> d!37268 (=> (not res!70510) (not e!92425))))

(declare-fun lt!45485 () List!2676)

(assert (=> d!37268 (= res!70510 (= (content!369 lt!45485) ((_ map or) (content!369 (list!939 (charsOf!120 (h!8065 tokens!465)))) (content!369 lt!45181))))))

(assert (=> d!37268 (= lt!45485 e!92426)))

(declare-fun c!31103 () Bool)

(assert (=> d!37268 (= c!31103 ((_ is Nil!2666) (list!939 (charsOf!120 (h!8065 tokens!465)))))))

(assert (=> d!37268 (= (++!576 (list!939 (charsOf!120 (h!8065 tokens!465))) lt!45181) lt!45485)))

(declare-fun b!154307 () Bool)

(assert (=> b!154307 (= e!92425 (or (not (= lt!45181 Nil!2666)) (= lt!45485 (list!939 (charsOf!120 (h!8065 tokens!465))))))))

(declare-fun b!154304 () Bool)

(assert (=> b!154304 (= e!92426 lt!45181)))

(declare-fun b!154306 () Bool)

(declare-fun res!70511 () Bool)

(assert (=> b!154306 (=> (not res!70511) (not e!92425))))

(assert (=> b!154306 (= res!70511 (= (size!2263 lt!45485) (+ (size!2263 (list!939 (charsOf!120 (h!8065 tokens!465)))) (size!2263 lt!45181))))))

(assert (= (and d!37268 c!31103) b!154304))

(assert (= (and d!37268 (not c!31103)) b!154305))

(assert (= (and d!37268 res!70510) b!154306))

(assert (= (and b!154306 res!70511) b!154307))

(declare-fun m!140041 () Bool)

(assert (=> b!154305 m!140041))

(declare-fun m!140043 () Bool)

(assert (=> d!37268 m!140043))

(assert (=> d!37268 m!138303))

(declare-fun m!140045 () Bool)

(assert (=> d!37268 m!140045))

(assert (=> d!37268 m!139625))

(declare-fun m!140047 () Bool)

(assert (=> b!154306 m!140047))

(assert (=> b!154306 m!138303))

(declare-fun m!140049 () Bool)

(assert (=> b!154306 m!140049))

(assert (=> b!154306 m!139631))

(assert (=> b!153681 d!37268))

(declare-fun d!37270 () Bool)

(declare-fun e!92429 () Bool)

(assert (=> d!37270 e!92429))

(declare-fun res!70518 () Bool)

(assert (=> d!37270 (=> res!70518 e!92429)))

(declare-fun lt!45489 () Option!247)

(assert (=> d!37270 (= res!70518 (isEmpty!1063 lt!45489))))

(declare-fun e!92427 () Option!247)

(assert (=> d!37270 (= lt!45489 e!92427)))

(declare-fun c!31104 () Bool)

(assert (=> d!37270 (= c!31104 (and ((_ is Cons!2667) rules!1920) ((_ is Nil!2667) (t!25077 rules!1920))))))

(declare-fun lt!45486 () Unit!2058)

(declare-fun lt!45487 () Unit!2058)

(assert (=> d!37270 (= lt!45486 lt!45487)))

(assert (=> d!37270 (isPrefix!212 (++!576 (list!939 (charsOf!120 (h!8065 tokens!465))) lt!45181) (++!576 (list!939 (charsOf!120 (h!8065 tokens!465))) lt!45181))))

(assert (=> d!37270 (= lt!45487 (lemmaIsPrefixRefl!120 (++!576 (list!939 (charsOf!120 (h!8065 tokens!465))) lt!45181) (++!576 (list!939 (charsOf!120 (h!8065 tokens!465))) lt!45181)))))

(assert (=> d!37270 (rulesValidInductive!97 thiss!17480 rules!1920)))

(assert (=> d!37270 (= (maxPrefix!111 thiss!17480 rules!1920 (++!576 (list!939 (charsOf!120 (h!8065 tokens!465))) lt!45181)) lt!45489)))

(declare-fun b!154308 () Bool)

(declare-fun res!70513 () Bool)

(declare-fun e!92428 () Bool)

(assert (=> b!154308 (=> (not res!70513) (not e!92428))))

(assert (=> b!154308 (= res!70513 (matchR!68 (regex!465 (rule!972 (_1!1511 (get!719 lt!45489)))) (list!939 (charsOf!120 (_1!1511 (get!719 lt!45489))))))))

(declare-fun b!154309 () Bool)

(assert (=> b!154309 (= e!92428 (contains!421 rules!1920 (rule!972 (_1!1511 (get!719 lt!45489)))))))

(declare-fun bm!6340 () Bool)

(declare-fun call!6345 () Option!247)

(assert (=> bm!6340 (= call!6345 (maxPrefixOneRule!56 thiss!17480 (h!8064 rules!1920) (++!576 (list!939 (charsOf!120 (h!8065 tokens!465))) lt!45181)))))

(declare-fun b!154310 () Bool)

(declare-fun res!70515 () Bool)

(assert (=> b!154310 (=> (not res!70515) (not e!92428))))

(assert (=> b!154310 (= res!70515 (< (size!2263 (_2!1511 (get!719 lt!45489))) (size!2263 (++!576 (list!939 (charsOf!120 (h!8065 tokens!465))) lt!45181))))))

(declare-fun b!154311 () Bool)

(declare-fun res!70512 () Bool)

(assert (=> b!154311 (=> (not res!70512) (not e!92428))))

(assert (=> b!154311 (= res!70512 (= (value!17568 (_1!1511 (get!719 lt!45489))) (apply!355 (transformation!465 (rule!972 (_1!1511 (get!719 lt!45489)))) (seqFromList!307 (originalCharacters!508 (_1!1511 (get!719 lt!45489)))))))))

(declare-fun b!154312 () Bool)

(declare-fun res!70514 () Bool)

(assert (=> b!154312 (=> (not res!70514) (not e!92428))))

(assert (=> b!154312 (= res!70514 (= (++!576 (list!939 (charsOf!120 (_1!1511 (get!719 lt!45489)))) (_2!1511 (get!719 lt!45489))) (++!576 (list!939 (charsOf!120 (h!8065 tokens!465))) lt!45181)))))

(declare-fun b!154313 () Bool)

(assert (=> b!154313 (= e!92427 call!6345)))

(declare-fun b!154314 () Bool)

(declare-fun lt!45490 () Option!247)

(declare-fun lt!45488 () Option!247)

(assert (=> b!154314 (= e!92427 (ite (and ((_ is None!246) lt!45490) ((_ is None!246) lt!45488)) None!246 (ite ((_ is None!246) lt!45488) lt!45490 (ite ((_ is None!246) lt!45490) lt!45488 (ite (>= (size!2261 (_1!1511 (v!13631 lt!45490))) (size!2261 (_1!1511 (v!13631 lt!45488)))) lt!45490 lt!45488)))))))

(assert (=> b!154314 (= lt!45490 call!6345)))

(assert (=> b!154314 (= lt!45488 (maxPrefix!111 thiss!17480 (t!25077 rules!1920) (++!576 (list!939 (charsOf!120 (h!8065 tokens!465))) lt!45181)))))

(declare-fun b!154315 () Bool)

(assert (=> b!154315 (= e!92429 e!92428)))

(declare-fun res!70517 () Bool)

(assert (=> b!154315 (=> (not res!70517) (not e!92428))))

(assert (=> b!154315 (= res!70517 (isDefined!103 lt!45489))))

(declare-fun b!154316 () Bool)

(declare-fun res!70516 () Bool)

(assert (=> b!154316 (=> (not res!70516) (not e!92428))))

(assert (=> b!154316 (= res!70516 (= (list!939 (charsOf!120 (_1!1511 (get!719 lt!45489)))) (originalCharacters!508 (_1!1511 (get!719 lt!45489)))))))

(assert (= (and d!37270 c!31104) b!154313))

(assert (= (and d!37270 (not c!31104)) b!154314))

(assert (= (or b!154313 b!154314) bm!6340))

(assert (= (and d!37270 (not res!70518)) b!154315))

(assert (= (and b!154315 res!70517) b!154316))

(assert (= (and b!154316 res!70516) b!154310))

(assert (= (and b!154310 res!70515) b!154312))

(assert (= (and b!154312 res!70514) b!154311))

(assert (= (and b!154311 res!70512) b!154308))

(assert (= (and b!154308 res!70513) b!154309))

(declare-fun m!140051 () Bool)

(assert (=> b!154309 m!140051))

(declare-fun m!140053 () Bool)

(assert (=> b!154309 m!140053))

(assert (=> b!154310 m!140051))

(declare-fun m!140055 () Bool)

(assert (=> b!154310 m!140055))

(assert (=> b!154310 m!138813))

(declare-fun m!140057 () Bool)

(assert (=> b!154310 m!140057))

(assert (=> bm!6340 m!138813))

(declare-fun m!140059 () Bool)

(assert (=> bm!6340 m!140059))

(assert (=> b!154312 m!140051))

(declare-fun m!140061 () Bool)

(assert (=> b!154312 m!140061))

(assert (=> b!154312 m!140061))

(declare-fun m!140063 () Bool)

(assert (=> b!154312 m!140063))

(assert (=> b!154312 m!140063))

(declare-fun m!140065 () Bool)

(assert (=> b!154312 m!140065))

(assert (=> b!154311 m!140051))

(declare-fun m!140067 () Bool)

(assert (=> b!154311 m!140067))

(assert (=> b!154311 m!140067))

(declare-fun m!140069 () Bool)

(assert (=> b!154311 m!140069))

(assert (=> b!154314 m!138813))

(declare-fun m!140071 () Bool)

(assert (=> b!154314 m!140071))

(assert (=> b!154316 m!140051))

(assert (=> b!154316 m!140061))

(assert (=> b!154316 m!140061))

(assert (=> b!154316 m!140063))

(declare-fun m!140073 () Bool)

(assert (=> d!37270 m!140073))

(assert (=> d!37270 m!138813))

(assert (=> d!37270 m!138813))

(declare-fun m!140075 () Bool)

(assert (=> d!37270 m!140075))

(assert (=> d!37270 m!138813))

(assert (=> d!37270 m!138813))

(declare-fun m!140077 () Bool)

(assert (=> d!37270 m!140077))

(assert (=> d!37270 m!138981))

(declare-fun m!140079 () Bool)

(assert (=> b!154315 m!140079))

(assert (=> b!154308 m!140051))

(assert (=> b!154308 m!140061))

(assert (=> b!154308 m!140061))

(assert (=> b!154308 m!140063))

(assert (=> b!154308 m!140063))

(declare-fun m!140081 () Bool)

(assert (=> b!154308 m!140081))

(assert (=> b!153681 d!37270))

(declare-fun d!37272 () Bool)

(assert (=> d!37272 (dynLambda!939 lambda!4042 (h!8065 tokens!465))))

(declare-fun lt!45491 () Unit!2058)

(assert (=> d!37272 (= lt!45491 (choose!1755 tokens!465 lambda!4042 (h!8065 tokens!465)))))

(declare-fun e!92430 () Bool)

(assert (=> d!37272 e!92430))

(declare-fun res!70519 () Bool)

(assert (=> d!37272 (=> (not res!70519) (not e!92430))))

(assert (=> d!37272 (= res!70519 (forall!461 tokens!465 lambda!4042))))

(assert (=> d!37272 (= (forallContained!54 tokens!465 lambda!4042 (h!8065 tokens!465)) lt!45491)))

(declare-fun b!154317 () Bool)

(assert (=> b!154317 (= e!92430 (contains!422 tokens!465 (h!8065 tokens!465)))))

(assert (= (and d!37272 res!70519) b!154317))

(declare-fun b_lambda!2947 () Bool)

(assert (=> (not b_lambda!2947) (not d!37272)))

(declare-fun m!140083 () Bool)

(assert (=> d!37272 m!140083))

(declare-fun m!140085 () Bool)

(assert (=> d!37272 m!140085))

(declare-fun m!140087 () Bool)

(assert (=> d!37272 m!140087))

(declare-fun m!140089 () Bool)

(assert (=> b!154317 m!140089))

(assert (=> b!153681 d!37272))

(assert (=> b!153681 d!36842))

(assert (=> b!153681 d!36866))

(assert (=> b!153681 d!36868))

(assert (=> b!153666 d!37162))

(declare-fun d!37274 () Bool)

(assert (=> d!37274 (= (head!584 (drop!123 lt!45179 0)) (apply!354 lt!45179 0))))

(declare-fun lt!45499 () Unit!2058)

(declare-fun choose!1759 (List!2678 Int) Unit!2058)

(assert (=> d!37274 (= lt!45499 (choose!1759 lt!45179 0))))

(declare-fun e!92437 () Bool)

(assert (=> d!37274 e!92437))

(declare-fun res!70530 () Bool)

(assert (=> d!37274 (=> (not res!70530) (not e!92437))))

(assert (=> d!37274 (= res!70530 (>= 0 0))))

(assert (=> d!37274 (= (lemmaDropApply!110 lt!45179 0) lt!45499)))

(declare-fun b!154330 () Bool)

(assert (=> b!154330 (= e!92437 (< 0 (size!2267 lt!45179)))))

(assert (= (and d!37274 res!70530) b!154330))

(assert (=> d!37274 m!138781))

(assert (=> d!37274 m!138781))

(assert (=> d!37274 m!138783))

(assert (=> d!37274 m!138775))

(declare-fun m!140129 () Bool)

(assert (=> d!37274 m!140129))

(declare-fun m!140131 () Bool)

(assert (=> b!154330 m!140131))

(assert (=> b!153666 d!37274))

(declare-fun d!37282 () Bool)

(assert (=> d!37282 (= (tail!324 (drop!123 lt!45178 0)) (drop!123 lt!45178 (+ 0 1)))))

(declare-fun lt!45509 () Unit!2058)

(declare-fun choose!1760 (List!2678 Int) Unit!2058)

(assert (=> d!37282 (= lt!45509 (choose!1760 lt!45178 0))))

(declare-fun e!92447 () Bool)

(assert (=> d!37282 e!92447))

(declare-fun res!70543 () Bool)

(assert (=> d!37282 (=> (not res!70543) (not e!92447))))

(assert (=> d!37282 (= res!70543 (>= 0 0))))

(assert (=> d!37282 (= (lemmaDropTail!102 lt!45178 0) lt!45509)))

(declare-fun b!154347 () Bool)

(assert (=> b!154347 (= e!92447 (< 0 (size!2267 lt!45178)))))

(assert (= (and d!37282 res!70543) b!154347))

(assert (=> d!37282 m!138767))

(assert (=> d!37282 m!138767))

(assert (=> d!37282 m!138769))

(assert (=> d!37282 m!138773))

(declare-fun m!140149 () Bool)

(assert (=> d!37282 m!140149))

(declare-fun m!140151 () Bool)

(assert (=> b!154347 m!140151))

(assert (=> b!153666 d!37282))

(declare-fun d!37292 () Bool)

(declare-fun lt!45510 () BalanceConc!1512)

(assert (=> d!37292 (= (list!939 lt!45510) (originalCharacters!508 (apply!352 lt!45003 0)))))

(assert (=> d!37292 (= lt!45510 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (apply!352 lt!45003 0)))) (value!17568 (apply!352 lt!45003 0))))))

(assert (=> d!37292 (= (charsOf!120 (apply!352 lt!45003 0)) lt!45510)))

(declare-fun b_lambda!2953 () Bool)

(assert (=> (not b_lambda!2953) (not d!37292)))

(declare-fun t!25212 () Bool)

(declare-fun tb!5353 () Bool)

(assert (=> (and b!153328 (= (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toChars!963 (transformation!465 (rule!972 (apply!352 lt!45003 0))))) t!25212) tb!5353))

(declare-fun b!154348 () Bool)

(declare-fun e!92448 () Bool)

(declare-fun tp!79662 () Bool)

(assert (=> b!154348 (= e!92448 (and (inv!3468 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (apply!352 lt!45003 0)))) (value!17568 (apply!352 lt!45003 0))))) tp!79662))))

(declare-fun result!7852 () Bool)

(assert (=> tb!5353 (= result!7852 (and (inv!3469 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (apply!352 lt!45003 0)))) (value!17568 (apply!352 lt!45003 0)))) e!92448))))

(assert (= tb!5353 b!154348))

(declare-fun m!140171 () Bool)

(assert (=> b!154348 m!140171))

(declare-fun m!140175 () Bool)

(assert (=> tb!5353 m!140175))

(assert (=> d!37292 t!25212))

(declare-fun b_and!9147 () Bool)

(assert (= b_and!9139 (and (=> t!25212 result!7852) b_and!9147)))

(declare-fun tb!5355 () Bool)

(declare-fun t!25214 () Bool)

(assert (=> (and b!153769 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 (apply!352 lt!45003 0))))) t!25214) tb!5355))

(declare-fun result!7854 () Bool)

(assert (= result!7854 result!7852))

(assert (=> d!37292 t!25214))

(declare-fun b_and!9149 () Bool)

(assert (= b_and!9145 (and (=> t!25214 result!7854) b_and!9149)))

(declare-fun t!25216 () Bool)

(declare-fun tb!5357 () Bool)

(assert (=> (and b!153812 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))) (toChars!963 (transformation!465 (rule!972 (apply!352 lt!45003 0))))) t!25216) tb!5357))

(declare-fun result!7856 () Bool)

(assert (= result!7856 result!7852))

(assert (=> d!37292 t!25216))

(declare-fun b_and!9151 () Bool)

(assert (= b_and!9141 (and (=> t!25216 result!7856) b_and!9151)))

(declare-fun t!25218 () Bool)

(declare-fun tb!5359 () Bool)

(assert (=> (and b!153322 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 (apply!352 lt!45003 0))))) t!25218) tb!5359))

(declare-fun result!7858 () Bool)

(assert (= result!7858 result!7852))

(assert (=> d!37292 t!25218))

(declare-fun b_and!9153 () Bool)

(assert (= b_and!9137 (and (=> t!25218 result!7858) b_and!9153)))

(declare-fun t!25220 () Bool)

(declare-fun tb!5361 () Bool)

(assert (=> (and b!153316 (= (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toChars!963 (transformation!465 (rule!972 (apply!352 lt!45003 0))))) t!25220) tb!5361))

(declare-fun result!7860 () Bool)

(assert (= result!7860 result!7852))

(assert (=> d!37292 t!25220))

(declare-fun b_and!9155 () Bool)

(assert (= b_and!9143 (and (=> t!25220 result!7860) b_and!9155)))

(declare-fun m!140183 () Bool)

(assert (=> d!37292 m!140183))

(declare-fun m!140187 () Bool)

(assert (=> d!37292 m!140187))

(assert (=> b!153666 d!37292))

(declare-fun bs!14264 () Bool)

(declare-fun d!37294 () Bool)

(assert (= bs!14264 (and d!37294 d!36870)))

(declare-fun lambda!4069 () Int)

(assert (=> bs!14264 (not (= lambda!4069 lambda!4023))))

(declare-fun bs!14265 () Bool)

(assert (= bs!14265 (and d!37294 d!36896)))

(assert (=> bs!14265 (= lambda!4069 lambda!4037)))

(declare-fun bs!14266 () Bool)

(assert (= bs!14266 (and d!37294 d!37214)))

(assert (=> bs!14266 (not (= lambda!4069 lambda!4066))))

(declare-fun bs!14267 () Bool)

(assert (= bs!14267 (and d!37294 b!153336)))

(assert (=> bs!14267 (= lambda!4069 lambda!4006)))

(declare-fun bs!14268 () Bool)

(assert (= bs!14268 (and d!37294 d!37208)))

(assert (=> bs!14268 (not (= lambda!4069 lambda!4065))))

(declare-fun bs!14269 () Bool)

(assert (= bs!14269 (and d!37294 b!153528)))

(assert (=> bs!14269 (not (= lambda!4069 lambda!4020))))

(declare-fun bs!14270 () Bool)

(assert (= bs!14270 (and d!37294 d!36820)))

(assert (=> bs!14270 (not (= lambda!4069 lambda!4014))))

(declare-fun bs!14271 () Bool)

(assert (= bs!14271 (and d!37294 b!153681)))

(assert (=> bs!14271 (not (= lambda!4069 lambda!4042))))

(declare-fun bs!14272 () Bool)

(assert (= bs!14272 (and d!37294 b!154101)))

(assert (=> bs!14272 (not (= lambda!4069 lambda!4062))))

(declare-fun bs!14273 () Bool)

(assert (= bs!14273 (and d!37294 b!153666)))

(assert (=> bs!14273 (not (= lambda!4069 lambda!4038))))

(declare-fun bs!14274 () Bool)

(assert (= bs!14274 (and d!37294 b!153887)))

(assert (=> bs!14274 (not (= lambda!4069 lambda!4047))))

(declare-fun bs!14276 () Bool)

(declare-fun b!154359 () Bool)

(assert (= bs!14276 (and b!154359 d!36870)))

(declare-fun lambda!4070 () Int)

(assert (=> bs!14276 (= lambda!4070 lambda!4023)))

(declare-fun bs!14277 () Bool)

(assert (= bs!14277 (and b!154359 d!36896)))

(assert (=> bs!14277 (not (= lambda!4070 lambda!4037))))

(declare-fun bs!14278 () Bool)

(assert (= bs!14278 (and b!154359 d!37214)))

(assert (=> bs!14278 (= lambda!4070 lambda!4066)))

(declare-fun bs!14279 () Bool)

(assert (= bs!14279 (and b!154359 b!153336)))

(assert (=> bs!14279 (not (= lambda!4070 lambda!4006))))

(declare-fun bs!14280 () Bool)

(assert (= bs!14280 (and b!154359 d!37208)))

(assert (=> bs!14280 (= lambda!4070 lambda!4065)))

(declare-fun bs!14281 () Bool)

(assert (= bs!14281 (and b!154359 b!153528)))

(assert (=> bs!14281 (= lambda!4070 lambda!4020)))

(declare-fun bs!14282 () Bool)

(assert (= bs!14282 (and b!154359 d!37294)))

(assert (=> bs!14282 (not (= lambda!4070 lambda!4069))))

(declare-fun bs!14283 () Bool)

(assert (= bs!14283 (and b!154359 d!36820)))

(assert (=> bs!14283 (= lambda!4070 lambda!4014)))

(declare-fun bs!14284 () Bool)

(assert (= bs!14284 (and b!154359 b!153681)))

(assert (=> bs!14284 (= lambda!4070 lambda!4042)))

(declare-fun bs!14285 () Bool)

(assert (= bs!14285 (and b!154359 b!154101)))

(assert (=> bs!14285 (= lambda!4070 lambda!4062)))

(declare-fun bs!14286 () Bool)

(assert (= bs!14286 (and b!154359 b!153666)))

(assert (=> bs!14286 (= lambda!4070 lambda!4038)))

(declare-fun bs!14287 () Bool)

(assert (= bs!14287 (and b!154359 b!153887)))

(assert (=> bs!14287 (= lambda!4070 lambda!4047)))

(declare-fun b!154366 () Bool)

(declare-fun e!92460 () Bool)

(assert (=> b!154366 (= e!92460 true)))

(declare-fun b!154365 () Bool)

(declare-fun e!92459 () Bool)

(assert (=> b!154365 (= e!92459 e!92460)))

(declare-fun b!154364 () Bool)

(declare-fun e!92458 () Bool)

(assert (=> b!154364 (= e!92458 e!92459)))

(assert (=> b!154359 e!92458))

(assert (= b!154365 b!154366))

(assert (= b!154364 b!154365))

(assert (= (and b!154359 ((_ is Cons!2667) rules!1920)) b!154364))

(assert (=> b!154366 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4070))))

(assert (=> b!154366 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 rules!1920)))) (dynLambda!931 order!1335 lambda!4070))))

(assert (=> b!154359 true))

(declare-fun b!154353 () Bool)

(declare-fun e!92450 () BalanceConc!1512)

(declare-fun call!6349 () BalanceConc!1512)

(declare-fun lt!45511 () BalanceConc!1512)

(assert (=> b!154353 (= e!92450 (++!578 call!6349 lt!45511))))

(declare-fun b!154354 () Bool)

(declare-fun e!92455 () Bool)

(assert (=> b!154354 (= e!92455 (<= (+ 0 1) (size!2265 lt!45003)))))

(declare-fun c!31109 () Bool)

(declare-fun bm!6343 () Bool)

(declare-fun call!6351 () BalanceConc!1512)

(declare-fun call!6350 () BalanceConc!1512)

(assert (=> bm!6343 (= call!6349 (++!578 call!6350 (ite c!31109 lt!45511 call!6351)))))

(declare-fun call!6352 () Token!674)

(declare-fun call!6348 () Token!674)

(declare-fun bm!6344 () Bool)

(assert (=> bm!6344 (= call!6350 (charsOf!120 (ite c!31109 call!6348 call!6352)))))

(declare-fun b!154355 () Bool)

(declare-fun e!92449 () BalanceConc!1512)

(assert (=> b!154355 (= e!92449 (BalanceConc!1513 Empty!752))))

(declare-fun b!154356 () Bool)

(assert (=> b!154356 (= e!92450 (BalanceConc!1513 Empty!752))))

(assert (=> b!154356 (= (print!96 thiss!17480 (singletonSeq!29 call!6352)) (printTailRec!59 thiss!17480 (singletonSeq!29 call!6352) 0 (BalanceConc!1513 Empty!752)))))

(declare-fun lt!45522 () Unit!2058)

(declare-fun Unit!2086 () Unit!2058)

(assert (=> b!154356 (= lt!45522 Unit!2086)))

(declare-fun lt!45521 () Unit!2058)

(assert (=> b!154356 (= lt!45521 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!18 thiss!17480 rules!1920 (list!939 call!6351) (list!939 lt!45511)))))

(assert (=> b!154356 false))

(declare-fun lt!45512 () Unit!2058)

(declare-fun Unit!2087 () Unit!2058)

(assert (=> b!154356 (= lt!45512 Unit!2087)))

(declare-fun b!154357 () Bool)

(declare-fun e!92454 () Bool)

(declare-fun lt!45514 () Option!249)

(assert (=> b!154357 (= e!92454 (not (= (_1!1515 (v!13633 lt!45514)) call!6348)))))

(declare-fun c!31110 () Bool)

(declare-fun bm!6345 () Bool)

(assert (=> bm!6345 (= call!6351 (charsOf!120 (ite c!31110 separatorToken!170 call!6352)))))

(declare-fun b!154358 () Bool)

(declare-fun e!92456 () Bool)

(assert (=> b!154358 (= e!92456 (= (_1!1515 (v!13633 lt!45514)) (apply!352 lt!45003 (+ 0 1))))))

(declare-fun bm!6346 () Bool)

(assert (=> bm!6346 (= call!6348 (apply!352 lt!45003 (+ 0 1)))))

(declare-fun lt!45519 () BalanceConc!1512)

(assert (=> d!37294 (= (list!939 lt!45519) (printWithSeparatorTokenWhenNeededList!44 thiss!17480 rules!1920 (dropList!70 lt!45003 (+ 0 1)) separatorToken!170))))

(assert (=> d!37294 (= lt!45519 e!92449)))

(declare-fun c!31111 () Bool)

(assert (=> d!37294 (= c!31111 (>= (+ 0 1) (size!2265 lt!45003)))))

(declare-fun lt!45515 () Unit!2058)

(assert (=> d!37294 (= lt!45515 (lemmaContentSubsetPreservesForall!14 (list!942 lt!45003) (dropList!70 lt!45003 (+ 0 1)) lambda!4069))))

(assert (=> d!37294 e!92455))

(declare-fun res!70545 () Bool)

(assert (=> d!37294 (=> (not res!70545) (not e!92455))))

(assert (=> d!37294 (= res!70545 (>= (+ 0 1) 0))))

(assert (=> d!37294 (= (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 (+ 0 1)) lt!45519)))

(declare-fun e!92453 () BalanceConc!1512)

(assert (=> b!154359 (= e!92449 e!92453)))

(declare-fun lt!45525 () List!2678)

(assert (=> b!154359 (= lt!45525 (list!942 lt!45003))))

(declare-fun lt!45517 () Unit!2058)

(assert (=> b!154359 (= lt!45517 (lemmaDropApply!110 lt!45525 (+ 0 1)))))

(assert (=> b!154359 (= (head!584 (drop!123 lt!45525 (+ 0 1))) (apply!354 lt!45525 (+ 0 1)))))

(declare-fun lt!45513 () Unit!2058)

(assert (=> b!154359 (= lt!45513 lt!45517)))

(declare-fun lt!45524 () List!2678)

(assert (=> b!154359 (= lt!45524 (list!942 lt!45003))))

(declare-fun lt!45523 () Unit!2058)

(assert (=> b!154359 (= lt!45523 (lemmaDropTail!102 lt!45524 (+ 0 1)))))

(assert (=> b!154359 (= (tail!324 (drop!123 lt!45524 (+ 0 1))) (drop!123 lt!45524 (+ 0 1 1)))))

(declare-fun lt!45518 () Unit!2058)

(assert (=> b!154359 (= lt!45518 lt!45523)))

(declare-fun lt!45520 () Unit!2058)

(assert (=> b!154359 (= lt!45520 (forallContained!54 (list!942 lt!45003) lambda!4070 (apply!352 lt!45003 (+ 0 1))))))

(assert (=> b!154359 (= lt!45511 (printWithSeparatorTokenWhenNeededRec!34 thiss!17480 rules!1920 lt!45003 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!154359 (= lt!45514 (maxPrefixZipperSequence!70 thiss!17480 rules!1920 (++!578 (charsOf!120 (apply!352 lt!45003 (+ 0 1))) lt!45511)))))

(declare-fun res!70547 () Bool)

(assert (=> b!154359 (= res!70547 ((_ is Some!248) lt!45514))))

(assert (=> b!154359 (=> (not res!70547) (not e!92456))))

(assert (=> b!154359 (= c!31109 e!92456)))

(declare-fun b!154360 () Bool)

(assert (=> b!154360 (= c!31110 e!92454)))

(declare-fun res!70548 () Bool)

(assert (=> b!154360 (=> (not res!70548) (not e!92454))))

(assert (=> b!154360 (= res!70548 ((_ is Some!248) lt!45514))))

(assert (=> b!154360 (= e!92453 e!92450)))

(declare-fun b!154361 () Bool)

(assert (=> b!154361 (= e!92453 call!6349)))

(declare-fun bm!6347 () Bool)

(assert (=> bm!6347 (= call!6352 call!6348)))

(assert (= (and d!37294 res!70545) b!154354))

(assert (= (and d!37294 c!31111) b!154355))

(assert (= (and d!37294 (not c!31111)) b!154359))

(assert (= (and b!154359 res!70547) b!154358))

(assert (= (and b!154359 c!31109) b!154361))

(assert (= (and b!154359 (not c!31109)) b!154360))

(assert (= (and b!154360 res!70548) b!154357))

(assert (= (and b!154360 c!31110) b!154353))

(assert (= (and b!154360 (not c!31110)) b!154356))

(assert (= (or b!154353 b!154356) bm!6347))

(assert (= (or b!154353 b!154356) bm!6345))

(assert (= (or b!154361 b!154357 bm!6347) bm!6346))

(assert (= (or b!154361 b!154353) bm!6344))

(assert (= (or b!154361 b!154353) bm!6343))

(declare-fun m!140229 () Bool)

(assert (=> bm!6344 m!140229))

(declare-fun m!140231 () Bool)

(assert (=> bm!6343 m!140231))

(declare-fun m!140233 () Bool)

(assert (=> b!154358 m!140233))

(declare-fun m!140235 () Bool)

(assert (=> b!154353 m!140235))

(assert (=> bm!6346 m!140233))

(assert (=> b!154354 m!138749))

(declare-fun m!140237 () Bool)

(assert (=> b!154356 m!140237))

(declare-fun m!140239 () Bool)

(assert (=> b!154356 m!140239))

(assert (=> b!154356 m!140239))

(declare-fun m!140241 () Bool)

(assert (=> b!154356 m!140241))

(declare-fun m!140243 () Bool)

(assert (=> b!154356 m!140243))

(assert (=> b!154356 m!140239))

(declare-fun m!140245 () Bool)

(assert (=> b!154356 m!140245))

(assert (=> b!154356 m!140243))

(assert (=> b!154356 m!140237))

(declare-fun m!140247 () Bool)

(assert (=> b!154356 m!140247))

(declare-fun m!140249 () Bool)

(assert (=> b!154359 m!140249))

(declare-fun m!140251 () Bool)

(assert (=> b!154359 m!140251))

(declare-fun m!140253 () Bool)

(assert (=> b!154359 m!140253))

(assert (=> b!154359 m!140253))

(declare-fun m!140255 () Bool)

(assert (=> b!154359 m!140255))

(declare-fun m!140257 () Bool)

(assert (=> b!154359 m!140257))

(declare-fun m!140259 () Bool)

(assert (=> b!154359 m!140259))

(declare-fun m!140261 () Bool)

(assert (=> b!154359 m!140261))

(declare-fun m!140263 () Bool)

(assert (=> b!154359 m!140263))

(assert (=> b!154359 m!140251))

(declare-fun m!140269 () Bool)

(assert (=> b!154359 m!140269))

(assert (=> b!154359 m!140233))

(declare-fun m!140273 () Bool)

(assert (=> b!154359 m!140273))

(declare-fun m!140275 () Bool)

(assert (=> b!154359 m!140275))

(assert (=> b!154359 m!140233))

(assert (=> b!154359 m!140249))

(assert (=> b!154359 m!138381))

(assert (=> b!154359 m!140273))

(assert (=> b!154359 m!138381))

(assert (=> b!154359 m!140233))

(declare-fun m!140277 () Bool)

(assert (=> b!154359 m!140277))

(declare-fun m!140279 () Bool)

(assert (=> b!154359 m!140279))

(declare-fun m!140281 () Bool)

(assert (=> d!37294 m!140281))

(declare-fun m!140283 () Bool)

(assert (=> d!37294 m!140283))

(assert (=> d!37294 m!138381))

(assert (=> d!37294 m!140281))

(declare-fun m!140285 () Bool)

(assert (=> d!37294 m!140285))

(assert (=> d!37294 m!140281))

(declare-fun m!140287 () Bool)

(assert (=> d!37294 m!140287))

(assert (=> d!37294 m!138381))

(assert (=> d!37294 m!138749))

(declare-fun m!140291 () Bool)

(assert (=> bm!6345 m!140291))

(assert (=> b!153666 d!37294))

(declare-fun b!154420 () Bool)

(declare-fun e!92494 () Int)

(declare-fun call!6358 () Int)

(assert (=> b!154420 (= e!92494 (- call!6358 0))))

(declare-fun b!154421 () Bool)

(declare-fun e!92496 () Int)

(assert (=> b!154421 (= e!92496 e!92494)))

(declare-fun c!31133 () Bool)

(assert (=> b!154421 (= c!31133 (>= 0 call!6358))))

(declare-fun bm!6353 () Bool)

(assert (=> bm!6353 (= call!6358 (size!2267 lt!45178))))

(declare-fun b!154422 () Bool)

(declare-fun e!92497 () Bool)

(declare-fun lt!45535 () List!2678)

(assert (=> b!154422 (= e!92497 (= (size!2267 lt!45535) e!92496))))

(declare-fun c!31130 () Bool)

(assert (=> b!154422 (= c!31130 (<= 0 0))))

(declare-fun b!154423 () Bool)

(assert (=> b!154423 (= e!92496 call!6358)))

(declare-fun d!37310 () Bool)

(assert (=> d!37310 e!92497))

(declare-fun res!70565 () Bool)

(assert (=> d!37310 (=> (not res!70565) (not e!92497))))

(declare-fun content!370 (List!2678) (InoxSet Token!674))

(assert (=> d!37310 (= res!70565 (= ((_ map implies) (content!370 lt!45535) (content!370 lt!45178)) ((as const (InoxSet Token!674)) true)))))

(declare-fun e!92495 () List!2678)

(assert (=> d!37310 (= lt!45535 e!92495)))

(declare-fun c!31131 () Bool)

(assert (=> d!37310 (= c!31131 ((_ is Nil!2668) lt!45178))))

(assert (=> d!37310 (= (drop!123 lt!45178 0) lt!45535)))

(declare-fun b!154424 () Bool)

(declare-fun e!92493 () List!2678)

(assert (=> b!154424 (= e!92495 e!92493)))

(declare-fun c!31132 () Bool)

(assert (=> b!154424 (= c!31132 (<= 0 0))))

(declare-fun b!154425 () Bool)

(assert (=> b!154425 (= e!92493 lt!45178)))

(declare-fun b!154426 () Bool)

(assert (=> b!154426 (= e!92494 0)))

(declare-fun b!154427 () Bool)

(assert (=> b!154427 (= e!92495 Nil!2668)))

(declare-fun b!154428 () Bool)

(assert (=> b!154428 (= e!92493 (drop!123 (t!25078 lt!45178) (- 0 1)))))

(assert (= (and d!37310 c!31131) b!154427))

(assert (= (and d!37310 (not c!31131)) b!154424))

(assert (= (and b!154424 c!31132) b!154425))

(assert (= (and b!154424 (not c!31132)) b!154428))

(assert (= (and d!37310 res!70565) b!154422))

(assert (= (and b!154422 c!31130) b!154423))

(assert (= (and b!154422 (not c!31130)) b!154421))

(assert (= (and b!154421 c!31133) b!154426))

(assert (= (and b!154421 (not c!31133)) b!154420))

(assert (= (or b!154423 b!154421 b!154420) bm!6353))

(assert (=> bm!6353 m!140151))

(declare-fun m!140323 () Bool)

(assert (=> b!154422 m!140323))

(declare-fun m!140325 () Bool)

(assert (=> d!37310 m!140325))

(declare-fun m!140327 () Bool)

(assert (=> d!37310 m!140327))

(declare-fun m!140333 () Bool)

(assert (=> b!154428 m!140333))

(assert (=> b!153666 d!37310))

(declare-fun d!37332 () Bool)

(assert (=> d!37332 (= (head!584 (drop!123 lt!45179 0)) (h!8065 (drop!123 lt!45179 0)))))

(assert (=> b!153666 d!37332))

(assert (=> b!153666 d!37012))

(declare-fun b!154433 () Bool)

(declare-fun e!92501 () Int)

(declare-fun call!6359 () Int)

(assert (=> b!154433 (= e!92501 (- call!6359 0))))

(declare-fun b!154434 () Bool)

(declare-fun e!92503 () Int)

(assert (=> b!154434 (= e!92503 e!92501)))

(declare-fun c!31139 () Bool)

(assert (=> b!154434 (= c!31139 (>= 0 call!6359))))

(declare-fun bm!6354 () Bool)

(assert (=> bm!6354 (= call!6359 (size!2267 lt!45179))))

(declare-fun b!154435 () Bool)

(declare-fun e!92504 () Bool)

(declare-fun lt!45536 () List!2678)

(assert (=> b!154435 (= e!92504 (= (size!2267 lt!45536) e!92503))))

(declare-fun c!31136 () Bool)

(assert (=> b!154435 (= c!31136 (<= 0 0))))

(declare-fun b!154436 () Bool)

(assert (=> b!154436 (= e!92503 call!6359)))

(declare-fun d!37334 () Bool)

(assert (=> d!37334 e!92504))

(declare-fun res!70566 () Bool)

(assert (=> d!37334 (=> (not res!70566) (not e!92504))))

(assert (=> d!37334 (= res!70566 (= ((_ map implies) (content!370 lt!45536) (content!370 lt!45179)) ((as const (InoxSet Token!674)) true)))))

(declare-fun e!92502 () List!2678)

(assert (=> d!37334 (= lt!45536 e!92502)))

(declare-fun c!31137 () Bool)

(assert (=> d!37334 (= c!31137 ((_ is Nil!2668) lt!45179))))

(assert (=> d!37334 (= (drop!123 lt!45179 0) lt!45536)))

(declare-fun b!154437 () Bool)

(declare-fun e!92500 () List!2678)

(assert (=> b!154437 (= e!92502 e!92500)))

(declare-fun c!31138 () Bool)

(assert (=> b!154437 (= c!31138 (<= 0 0))))

(declare-fun b!154438 () Bool)

(assert (=> b!154438 (= e!92500 lt!45179)))

(declare-fun b!154439 () Bool)

(assert (=> b!154439 (= e!92501 0)))

(declare-fun b!154440 () Bool)

(assert (=> b!154440 (= e!92502 Nil!2668)))

(declare-fun b!154441 () Bool)

(assert (=> b!154441 (= e!92500 (drop!123 (t!25078 lt!45179) (- 0 1)))))

(assert (= (and d!37334 c!31137) b!154440))

(assert (= (and d!37334 (not c!31137)) b!154437))

(assert (= (and b!154437 c!31138) b!154438))

(assert (= (and b!154437 (not c!31138)) b!154441))

(assert (= (and d!37334 res!70566) b!154435))

(assert (= (and b!154435 c!31136) b!154436))

(assert (= (and b!154435 (not c!31136)) b!154434))

(assert (= (and b!154434 c!31139) b!154439))

(assert (= (and b!154434 (not c!31139)) b!154433))

(assert (= (or b!154436 b!154434 b!154433) bm!6354))

(assert (=> bm!6354 m!140131))

(declare-fun m!140337 () Bool)

(assert (=> b!154435 m!140337))

(declare-fun m!140339 () Bool)

(assert (=> d!37334 m!140339))

(declare-fun m!140341 () Bool)

(assert (=> d!37334 m!140341))

(declare-fun m!140343 () Bool)

(assert (=> b!154441 m!140343))

(assert (=> b!153666 d!37334))

(declare-fun b!154496 () Bool)

(declare-fun res!70598 () Bool)

(declare-fun e!92540 () Bool)

(assert (=> b!154496 (=> (not res!70598) (not e!92540))))

(declare-fun e!92542 () Bool)

(assert (=> b!154496 (= res!70598 e!92542)))

(declare-fun res!70597 () Bool)

(assert (=> b!154496 (=> res!70597 e!92542)))

(declare-fun lt!45586 () Option!249)

(declare-fun isDefined!107 (Option!249) Bool)

(assert (=> b!154496 (= res!70597 (not (isDefined!107 lt!45586)))))

(declare-fun b!154497 () Bool)

(declare-fun e!92545 () Bool)

(declare-fun e!92541 () Bool)

(assert (=> b!154497 (= e!92545 e!92541)))

(declare-fun res!70596 () Bool)

(assert (=> b!154497 (=> (not res!70596) (not e!92541))))

(declare-fun get!723 (Option!249) tuple2!2598)

(assert (=> b!154497 (= res!70596 (= (_1!1515 (get!723 lt!45586)) (_1!1511 (get!719 (maxPrefix!111 thiss!17480 rules!1920 (list!939 (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166)))))))))

(declare-fun b!154498 () Bool)

(declare-fun e!92544 () Option!249)

(declare-fun lt!45587 () Option!249)

(declare-fun lt!45584 () Option!249)

(assert (=> b!154498 (= e!92544 (ite (and ((_ is None!248) lt!45587) ((_ is None!248) lt!45584)) None!248 (ite ((_ is None!248) lt!45584) lt!45587 (ite ((_ is None!248) lt!45587) lt!45584 (ite (>= (size!2261 (_1!1515 (v!13633 lt!45587))) (size!2261 (_1!1515 (v!13633 lt!45584)))) lt!45587 lt!45584)))))))

(declare-fun call!6362 () Option!249)

(assert (=> b!154498 (= lt!45587 call!6362)))

(assert (=> b!154498 (= lt!45584 (maxPrefixZipperSequence!70 thiss!17480 (t!25077 rules!1920) (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166)))))

(declare-fun e!92543 () Bool)

(declare-fun b!154499 () Bool)

(declare-fun maxPrefixZipper!24 (LexerInterface!351 List!2677 List!2676) Option!247)

(assert (=> b!154499 (= e!92543 (= (list!939 (_2!1515 (get!723 lt!45586))) (_2!1511 (get!719 (maxPrefixZipper!24 thiss!17480 rules!1920 (list!939 (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166)))))))))

(declare-fun d!37338 () Bool)

(assert (=> d!37338 e!92540))

(declare-fun res!70595 () Bool)

(assert (=> d!37338 (=> (not res!70595) (not e!92540))))

(assert (=> d!37338 (= res!70595 (= (isDefined!107 lt!45586) (isDefined!103 (maxPrefixZipper!24 thiss!17480 rules!1920 (list!939 (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166))))))))

(assert (=> d!37338 (= lt!45586 e!92544)))

(declare-fun c!31153 () Bool)

(assert (=> d!37338 (= c!31153 (and ((_ is Cons!2667) rules!1920) ((_ is Nil!2667) (t!25077 rules!1920))))))

(declare-fun lt!45585 () Unit!2058)

(declare-fun lt!45589 () Unit!2058)

(assert (=> d!37338 (= lt!45585 lt!45589)))

(declare-fun lt!45588 () List!2676)

(declare-fun lt!45590 () List!2676)

(assert (=> d!37338 (isPrefix!212 lt!45588 lt!45590)))

(assert (=> d!37338 (= lt!45589 (lemmaIsPrefixRefl!120 lt!45588 lt!45590))))

(assert (=> d!37338 (= lt!45590 (list!939 (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166)))))

(assert (=> d!37338 (= lt!45588 (list!939 (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166)))))

(assert (=> d!37338 (rulesValidInductive!97 thiss!17480 rules!1920)))

(assert (=> d!37338 (= (maxPrefixZipperSequence!70 thiss!17480 rules!1920 (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166)) lt!45586)))

(declare-fun bm!6357 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!25 (LexerInterface!351 Rule!730 BalanceConc!1512) Option!249)

(assert (=> bm!6357 (= call!6362 (maxPrefixOneRuleZipperSequence!25 thiss!17480 (h!8064 rules!1920) (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166)))))

(declare-fun b!154500 () Bool)

(assert (=> b!154500 (= e!92540 e!92545)))

(declare-fun res!70599 () Bool)

(assert (=> b!154500 (=> res!70599 e!92545)))

(assert (=> b!154500 (= res!70599 (not (isDefined!107 lt!45586)))))

(declare-fun b!154501 () Bool)

(assert (=> b!154501 (= e!92541 (= (list!939 (_2!1515 (get!723 lt!45586))) (_2!1511 (get!719 (maxPrefix!111 thiss!17480 rules!1920 (list!939 (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166)))))))))

(declare-fun b!154502 () Bool)

(assert (=> b!154502 (= e!92544 call!6362)))

(declare-fun b!154503 () Bool)

(assert (=> b!154503 (= e!92542 e!92543)))

(declare-fun res!70600 () Bool)

(assert (=> b!154503 (=> (not res!70600) (not e!92543))))

(assert (=> b!154503 (= res!70600 (= (_1!1515 (get!723 lt!45586)) (_1!1511 (get!719 (maxPrefixZipper!24 thiss!17480 rules!1920 (list!939 (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166)))))))))

(assert (= (and d!37338 c!31153) b!154502))

(assert (= (and d!37338 (not c!31153)) b!154498))

(assert (= (or b!154502 b!154498) bm!6357))

(assert (= (and d!37338 res!70595) b!154496))

(assert (= (and b!154496 (not res!70597)) b!154503))

(assert (= (and b!154503 res!70600) b!154499))

(assert (= (and b!154496 res!70598) b!154500))

(assert (= (and b!154500 (not res!70599)) b!154497))

(assert (= (and b!154497 res!70596) b!154501))

(declare-fun m!140459 () Bool)

(assert (=> b!154500 m!140459))

(declare-fun m!140461 () Bool)

(assert (=> b!154499 m!140461))

(declare-fun m!140463 () Bool)

(assert (=> b!154499 m!140463))

(declare-fun m!140465 () Bool)

(assert (=> b!154499 m!140465))

(declare-fun m!140467 () Bool)

(assert (=> b!154499 m!140467))

(assert (=> b!154499 m!138765))

(assert (=> b!154499 m!140461))

(assert (=> b!154499 m!140463))

(declare-fun m!140469 () Bool)

(assert (=> b!154499 m!140469))

(assert (=> b!154501 m!140465))

(assert (=> b!154501 m!140467))

(assert (=> b!154501 m!138765))

(assert (=> b!154501 m!140461))

(assert (=> b!154501 m!140461))

(declare-fun m!140471 () Bool)

(assert (=> b!154501 m!140471))

(assert (=> b!154501 m!140471))

(declare-fun m!140473 () Bool)

(assert (=> b!154501 m!140473))

(assert (=> bm!6357 m!138765))

(declare-fun m!140475 () Bool)

(assert (=> bm!6357 m!140475))

(assert (=> b!154497 m!140467))

(assert (=> b!154497 m!138765))

(assert (=> b!154497 m!140461))

(assert (=> b!154497 m!140461))

(assert (=> b!154497 m!140471))

(assert (=> b!154497 m!140471))

(assert (=> b!154497 m!140473))

(assert (=> b!154498 m!138765))

(declare-fun m!140477 () Bool)

(assert (=> b!154498 m!140477))

(assert (=> b!154496 m!140459))

(assert (=> b!154503 m!140467))

(assert (=> b!154503 m!138765))

(assert (=> b!154503 m!140461))

(assert (=> b!154503 m!140461))

(assert (=> b!154503 m!140463))

(assert (=> b!154503 m!140463))

(assert (=> b!154503 m!140469))

(assert (=> d!37338 m!140461))

(assert (=> d!37338 m!140463))

(assert (=> d!37338 m!140459))

(assert (=> d!37338 m!138765))

(assert (=> d!37338 m!140461))

(declare-fun m!140479 () Bool)

(assert (=> d!37338 m!140479))

(declare-fun m!140481 () Bool)

(assert (=> d!37338 m!140481))

(assert (=> d!37338 m!140463))

(declare-fun m!140483 () Bool)

(assert (=> d!37338 m!140483))

(assert (=> d!37338 m!138981))

(assert (=> b!153666 d!37338))

(declare-fun b!154504 () Bool)

(declare-fun e!92547 () Int)

(declare-fun call!6363 () Int)

(assert (=> b!154504 (= e!92547 (- call!6363 (+ 0 1)))))

(declare-fun b!154505 () Bool)

(declare-fun e!92549 () Int)

(assert (=> b!154505 (= e!92549 e!92547)))

(declare-fun c!31157 () Bool)

(assert (=> b!154505 (= c!31157 (>= (+ 0 1) call!6363))))

(declare-fun bm!6358 () Bool)

(assert (=> bm!6358 (= call!6363 (size!2267 lt!45178))))

(declare-fun b!154506 () Bool)

(declare-fun e!92550 () Bool)

(declare-fun lt!45591 () List!2678)

(assert (=> b!154506 (= e!92550 (= (size!2267 lt!45591) e!92549))))

(declare-fun c!31154 () Bool)

(assert (=> b!154506 (= c!31154 (<= (+ 0 1) 0))))

(declare-fun b!154507 () Bool)

(assert (=> b!154507 (= e!92549 call!6363)))

(declare-fun d!37370 () Bool)

(assert (=> d!37370 e!92550))

(declare-fun res!70601 () Bool)

(assert (=> d!37370 (=> (not res!70601) (not e!92550))))

(assert (=> d!37370 (= res!70601 (= ((_ map implies) (content!370 lt!45591) (content!370 lt!45178)) ((as const (InoxSet Token!674)) true)))))

(declare-fun e!92548 () List!2678)

(assert (=> d!37370 (= lt!45591 e!92548)))

(declare-fun c!31155 () Bool)

(assert (=> d!37370 (= c!31155 ((_ is Nil!2668) lt!45178))))

(assert (=> d!37370 (= (drop!123 lt!45178 (+ 0 1)) lt!45591)))

(declare-fun b!154508 () Bool)

(declare-fun e!92546 () List!2678)

(assert (=> b!154508 (= e!92548 e!92546)))

(declare-fun c!31156 () Bool)

(assert (=> b!154508 (= c!31156 (<= (+ 0 1) 0))))

(declare-fun b!154509 () Bool)

(assert (=> b!154509 (= e!92546 lt!45178)))

(declare-fun b!154510 () Bool)

(assert (=> b!154510 (= e!92547 0)))

(declare-fun b!154511 () Bool)

(assert (=> b!154511 (= e!92548 Nil!2668)))

(declare-fun b!154512 () Bool)

(assert (=> b!154512 (= e!92546 (drop!123 (t!25078 lt!45178) (- (+ 0 1) 1)))))

(assert (= (and d!37370 c!31155) b!154511))

(assert (= (and d!37370 (not c!31155)) b!154508))

(assert (= (and b!154508 c!31156) b!154509))

(assert (= (and b!154508 (not c!31156)) b!154512))

(assert (= (and d!37370 res!70601) b!154506))

(assert (= (and b!154506 c!31154) b!154507))

(assert (= (and b!154506 (not c!31154)) b!154505))

(assert (= (and b!154505 c!31157) b!154510))

(assert (= (and b!154505 (not c!31157)) b!154504))

(assert (= (or b!154507 b!154505 b!154504) bm!6358))

(assert (=> bm!6358 m!140151))

(declare-fun m!140485 () Bool)

(assert (=> b!154506 m!140485))

(declare-fun m!140487 () Bool)

(assert (=> d!37370 m!140487))

(assert (=> d!37370 m!140327))

(declare-fun m!140489 () Bool)

(assert (=> b!154512 m!140489))

(assert (=> b!153666 d!37370))

(declare-fun d!37372 () Bool)

(assert (=> d!37372 (= (tail!324 (drop!123 lt!45178 0)) (t!25078 (drop!123 lt!45178 0)))))

(assert (=> b!153666 d!37372))

(declare-fun d!37374 () Bool)

(assert (=> d!37374 (dynLambda!939 lambda!4038 (apply!352 lt!45003 0))))

(declare-fun lt!45592 () Unit!2058)

(assert (=> d!37374 (= lt!45592 (choose!1755 (list!942 lt!45003) lambda!4038 (apply!352 lt!45003 0)))))

(declare-fun e!92551 () Bool)

(assert (=> d!37374 e!92551))

(declare-fun res!70602 () Bool)

(assert (=> d!37374 (=> (not res!70602) (not e!92551))))

(assert (=> d!37374 (= res!70602 (forall!461 (list!942 lt!45003) lambda!4038))))

(assert (=> d!37374 (= (forallContained!54 (list!942 lt!45003) lambda!4038 (apply!352 lt!45003 0)) lt!45592)))

(declare-fun b!154513 () Bool)

(assert (=> b!154513 (= e!92551 (contains!422 (list!942 lt!45003) (apply!352 lt!45003 0)))))

(assert (= (and d!37374 res!70602) b!154513))

(declare-fun b_lambda!2957 () Bool)

(assert (=> (not b_lambda!2957) (not d!37374)))

(assert (=> d!37374 m!138745))

(declare-fun m!140491 () Bool)

(assert (=> d!37374 m!140491))

(assert (=> d!37374 m!138381))

(assert (=> d!37374 m!138745))

(declare-fun m!140493 () Bool)

(assert (=> d!37374 m!140493))

(assert (=> d!37374 m!138381))

(declare-fun m!140495 () Bool)

(assert (=> d!37374 m!140495))

(assert (=> b!154513 m!138381))

(assert (=> b!154513 m!138745))

(declare-fun m!140497 () Bool)

(assert (=> b!154513 m!140497))

(assert (=> b!153666 d!37374))

(declare-fun d!37376 () Bool)

(declare-fun e!92552 () Bool)

(assert (=> d!37376 e!92552))

(declare-fun res!70604 () Bool)

(assert (=> d!37376 (=> (not res!70604) (not e!92552))))

(assert (=> d!37376 (= res!70604 (appendAssocInst!18 (c!30889 (charsOf!120 (apply!352 lt!45003 0))) (c!30889 lt!45166)))))

(declare-fun lt!45593 () BalanceConc!1512)

(assert (=> d!37376 (= lt!45593 (BalanceConc!1513 (++!579 (c!30889 (charsOf!120 (apply!352 lt!45003 0))) (c!30889 lt!45166))))))

(assert (=> d!37376 (= (++!578 (charsOf!120 (apply!352 lt!45003 0)) lt!45166) lt!45593)))

(declare-fun b!154517 () Bool)

(assert (=> b!154517 (= e!92552 (= (list!939 lt!45593) (++!576 (list!939 (charsOf!120 (apply!352 lt!45003 0))) (list!939 lt!45166))))))

(declare-fun b!154515 () Bool)

(declare-fun res!70606 () Bool)

(assert (=> b!154515 (=> (not res!70606) (not e!92552))))

(assert (=> b!154515 (= res!70606 (<= (height!77 (++!579 (c!30889 (charsOf!120 (apply!352 lt!45003 0))) (c!30889 lt!45166))) (+ (max!0 (height!77 (c!30889 (charsOf!120 (apply!352 lt!45003 0)))) (height!77 (c!30889 lt!45166))) 1)))))

(declare-fun b!154516 () Bool)

(declare-fun res!70605 () Bool)

(assert (=> b!154516 (=> (not res!70605) (not e!92552))))

(assert (=> b!154516 (= res!70605 (>= (height!77 (++!579 (c!30889 (charsOf!120 (apply!352 lt!45003 0))) (c!30889 lt!45166))) (max!0 (height!77 (c!30889 (charsOf!120 (apply!352 lt!45003 0)))) (height!77 (c!30889 lt!45166)))))))

(declare-fun b!154514 () Bool)

(declare-fun res!70603 () Bool)

(assert (=> b!154514 (=> (not res!70603) (not e!92552))))

(assert (=> b!154514 (= res!70603 (isBalanced!210 (++!579 (c!30889 (charsOf!120 (apply!352 lt!45003 0))) (c!30889 lt!45166))))))

(assert (= (and d!37376 res!70604) b!154514))

(assert (= (and b!154514 res!70603) b!154515))

(assert (= (and b!154515 res!70606) b!154516))

(assert (= (and b!154516 res!70605) b!154517))

(declare-fun m!140499 () Bool)

(assert (=> b!154516 m!140499))

(declare-fun m!140501 () Bool)

(assert (=> b!154516 m!140501))

(declare-fun m!140503 () Bool)

(assert (=> b!154516 m!140503))

(assert (=> b!154516 m!140499))

(assert (=> b!154516 m!139119))

(declare-fun m!140505 () Bool)

(assert (=> b!154516 m!140505))

(assert (=> b!154516 m!139119))

(assert (=> b!154516 m!140501))

(declare-fun m!140507 () Bool)

(assert (=> d!37376 m!140507))

(assert (=> d!37376 m!140501))

(assert (=> b!154514 m!140501))

(assert (=> b!154514 m!140501))

(declare-fun m!140509 () Bool)

(assert (=> b!154514 m!140509))

(assert (=> b!154515 m!140499))

(assert (=> b!154515 m!140501))

(assert (=> b!154515 m!140503))

(assert (=> b!154515 m!140499))

(assert (=> b!154515 m!139119))

(assert (=> b!154515 m!140505))

(assert (=> b!154515 m!139119))

(assert (=> b!154515 m!140501))

(declare-fun m!140511 () Bool)

(assert (=> b!154517 m!140511))

(assert (=> b!154517 m!138763))

(declare-fun m!140513 () Bool)

(assert (=> b!154517 m!140513))

(assert (=> b!154517 m!138751))

(assert (=> b!154517 m!140513))

(assert (=> b!154517 m!138751))

(declare-fun m!140515 () Bool)

(assert (=> b!154517 m!140515))

(assert (=> b!153666 d!37376))

(declare-fun d!37378 () Bool)

(declare-fun lt!45596 () Token!674)

(assert (=> d!37378 (contains!422 lt!45179 lt!45596)))

(declare-fun e!92558 () Token!674)

(assert (=> d!37378 (= lt!45596 e!92558)))

(declare-fun c!31160 () Bool)

(assert (=> d!37378 (= c!31160 (= 0 0))))

(declare-fun e!92557 () Bool)

(assert (=> d!37378 e!92557))

(declare-fun res!70609 () Bool)

(assert (=> d!37378 (=> (not res!70609) (not e!92557))))

(assert (=> d!37378 (= res!70609 (<= 0 0))))

(assert (=> d!37378 (= (apply!354 lt!45179 0) lt!45596)))

(declare-fun b!154524 () Bool)

(assert (=> b!154524 (= e!92557 (< 0 (size!2267 lt!45179)))))

(declare-fun b!154525 () Bool)

(assert (=> b!154525 (= e!92558 (head!584 lt!45179))))

(declare-fun b!154526 () Bool)

(assert (=> b!154526 (= e!92558 (apply!354 (tail!324 lt!45179) (- 0 1)))))

(assert (= (and d!37378 res!70609) b!154524))

(assert (= (and d!37378 c!31160) b!154525))

(assert (= (and d!37378 (not c!31160)) b!154526))

(declare-fun m!140517 () Bool)

(assert (=> d!37378 m!140517))

(assert (=> b!154524 m!140131))

(declare-fun m!140519 () Bool)

(assert (=> b!154525 m!140519))

(declare-fun m!140521 () Bool)

(assert (=> b!154526 m!140521))

(assert (=> b!154526 m!140521))

(declare-fun m!140523 () Bool)

(assert (=> b!154526 m!140523))

(assert (=> b!153666 d!37378))

(declare-fun d!37380 () Bool)

(assert (=> d!37380 (= (inv!3469 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465)))) (isBalanced!210 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465))))))))

(declare-fun bs!14310 () Bool)

(assert (= bs!14310 d!37380))

(declare-fun m!140525 () Bool)

(assert (=> bs!14310 m!140525))

(assert (=> tb!5271 d!37380))

(declare-fun d!37382 () Bool)

(declare-fun c!31161 () Bool)

(assert (=> d!37382 (= c!31161 ((_ is Empty!752) (c!30889 (seqFromList!307 lt!45000))))))

(declare-fun e!92559 () List!2676)

(assert (=> d!37382 (= (list!940 (c!30889 (seqFromList!307 lt!45000))) e!92559)))

(declare-fun b!154530 () Bool)

(declare-fun e!92560 () List!2676)

(assert (=> b!154530 (= e!92560 (++!576 (list!940 (left!2011 (c!30889 (seqFromList!307 lt!45000)))) (list!940 (right!2341 (c!30889 (seqFromList!307 lt!45000))))))))

(declare-fun b!154529 () Bool)

(assert (=> b!154529 (= e!92560 (list!944 (xs!3347 (c!30889 (seqFromList!307 lt!45000)))))))

(declare-fun b!154527 () Bool)

(assert (=> b!154527 (= e!92559 Nil!2666)))

(declare-fun b!154528 () Bool)

(assert (=> b!154528 (= e!92559 e!92560)))

(declare-fun c!31162 () Bool)

(assert (=> b!154528 (= c!31162 ((_ is Leaf!1324) (c!30889 (seqFromList!307 lt!45000))))))

(assert (= (and d!37382 c!31161) b!154527))

(assert (= (and d!37382 (not c!31161)) b!154528))

(assert (= (and b!154528 c!31162) b!154529))

(assert (= (and b!154528 (not c!31162)) b!154530))

(declare-fun m!140527 () Bool)

(assert (=> b!154530 m!140527))

(declare-fun m!140529 () Bool)

(assert (=> b!154530 m!140529))

(assert (=> b!154530 m!140527))

(assert (=> b!154530 m!140529))

(declare-fun m!140531 () Bool)

(assert (=> b!154530 m!140531))

(declare-fun m!140533 () Bool)

(assert (=> b!154529 m!140533))

(assert (=> d!36810 d!37382))

(declare-fun bs!14311 () Bool)

(declare-fun d!37384 () Bool)

(assert (= bs!14311 (and d!37384 d!36976)))

(declare-fun lambda!4077 () Int)

(assert (=> bs!14311 (= (and (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465))))) (= (toValue!1104 (transformation!465 (h!8064 rules!1920))) (toValue!1104 (transformation!465 (rule!972 (h!8065 tokens!465)))))) (= lambda!4077 lambda!4050))))

(declare-fun bs!14312 () Bool)

(assert (= bs!14312 (and d!37384 d!37222)))

(assert (=> bs!14312 (= (and (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 separatorToken!170)))) (= (toValue!1104 (transformation!465 (h!8064 rules!1920))) (toValue!1104 (transformation!465 (rule!972 separatorToken!170))))) (= lambda!4077 lambda!4067))))

(assert (=> d!37384 true))

(assert (=> d!37384 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 rules!1920)))) (dynLambda!941 order!1341 lambda!4077))))

(assert (=> d!37384 true))

(assert (=> d!37384 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (dynLambda!941 order!1341 lambda!4077))))

(assert (=> d!37384 (= (semiInverseModEq!160 (toChars!963 (transformation!465 (h!8064 rules!1920))) (toValue!1104 (transformation!465 (h!8064 rules!1920)))) (Forall!123 lambda!4077))))

(declare-fun bs!14313 () Bool)

(assert (= bs!14313 d!37384))

(declare-fun m!140535 () Bool)

(assert (=> bs!14313 m!140535))

(assert (=> d!36804 d!37384))

(declare-fun b!154532 () Bool)

(declare-fun e!92562 () List!2676)

(assert (=> b!154532 (= e!92562 (Cons!2666 (h!8063 (t!25076 lt!45002)) (++!576 (t!25076 (t!25076 lt!45002)) lt!44997)))))

(declare-fun d!37386 () Bool)

(declare-fun e!92561 () Bool)

(assert (=> d!37386 e!92561))

(declare-fun res!70610 () Bool)

(assert (=> d!37386 (=> (not res!70610) (not e!92561))))

(declare-fun lt!45597 () List!2676)

(assert (=> d!37386 (= res!70610 (= (content!369 lt!45597) ((_ map or) (content!369 (t!25076 lt!45002)) (content!369 lt!44997))))))

(assert (=> d!37386 (= lt!45597 e!92562)))

(declare-fun c!31163 () Bool)

(assert (=> d!37386 (= c!31163 ((_ is Nil!2666) (t!25076 lt!45002)))))

(assert (=> d!37386 (= (++!576 (t!25076 lt!45002) lt!44997) lt!45597)))

(declare-fun b!154534 () Bool)

(assert (=> b!154534 (= e!92561 (or (not (= lt!44997 Nil!2666)) (= lt!45597 (t!25076 lt!45002))))))

(declare-fun b!154531 () Bool)

(assert (=> b!154531 (= e!92562 lt!44997)))

(declare-fun b!154533 () Bool)

(declare-fun res!70611 () Bool)

(assert (=> b!154533 (=> (not res!70611) (not e!92561))))

(assert (=> b!154533 (= res!70611 (= (size!2263 lt!45597) (+ (size!2263 (t!25076 lt!45002)) (size!2263 lt!44997))))))

(assert (= (and d!37386 c!31163) b!154531))

(assert (= (and d!37386 (not c!31163)) b!154532))

(assert (= (and d!37386 res!70610) b!154533))

(assert (= (and b!154533 res!70611) b!154534))

(declare-fun m!140537 () Bool)

(assert (=> b!154532 m!140537))

(declare-fun m!140539 () Bool)

(assert (=> d!37386 m!140539))

(assert (=> d!37386 m!139065))

(assert (=> d!37386 m!138603))

(declare-fun m!140541 () Bool)

(assert (=> b!154533 m!140541))

(assert (=> b!154533 m!139077))

(assert (=> b!154533 m!138607))

(assert (=> b!153566 d!37386))

(declare-fun d!37388 () Bool)

(assert (=> d!37388 (= (list!939 call!6276) (list!940 (c!30889 call!6276)))))

(declare-fun bs!14314 () Bool)

(assert (= bs!14314 d!37388))

(declare-fun m!140543 () Bool)

(assert (=> bs!14314 m!140543))

(assert (=> b!153534 d!37388))

(assert (=> b!153532 d!36864))

(declare-fun d!37390 () Bool)

(declare-fun c!31164 () Bool)

(assert (=> d!37390 (= c!31164 ((_ is Empty!752) (c!30889 (charsOf!120 separatorToken!170))))))

(declare-fun e!92563 () List!2676)

(assert (=> d!37390 (= (list!940 (c!30889 (charsOf!120 separatorToken!170))) e!92563)))

(declare-fun b!154538 () Bool)

(declare-fun e!92564 () List!2676)

(assert (=> b!154538 (= e!92564 (++!576 (list!940 (left!2011 (c!30889 (charsOf!120 separatorToken!170)))) (list!940 (right!2341 (c!30889 (charsOf!120 separatorToken!170))))))))

(declare-fun b!154537 () Bool)

(assert (=> b!154537 (= e!92564 (list!944 (xs!3347 (c!30889 (charsOf!120 separatorToken!170)))))))

(declare-fun b!154535 () Bool)

(assert (=> b!154535 (= e!92563 Nil!2666)))

(declare-fun b!154536 () Bool)

(assert (=> b!154536 (= e!92563 e!92564)))

(declare-fun c!31165 () Bool)

(assert (=> b!154536 (= c!31165 ((_ is Leaf!1324) (c!30889 (charsOf!120 separatorToken!170))))))

(assert (= (and d!37390 c!31164) b!154535))

(assert (= (and d!37390 (not c!31164)) b!154536))

(assert (= (and b!154536 c!31165) b!154537))

(assert (= (and b!154536 (not c!31165)) b!154538))

(declare-fun m!140545 () Bool)

(assert (=> b!154538 m!140545))

(declare-fun m!140547 () Bool)

(assert (=> b!154538 m!140547))

(assert (=> b!154538 m!140545))

(assert (=> b!154538 m!140547))

(declare-fun m!140549 () Bool)

(assert (=> b!154538 m!140549))

(declare-fun m!140551 () Bool)

(assert (=> b!154537 m!140551))

(assert (=> d!36838 d!37390))

(declare-fun b!154539 () Bool)

(declare-fun e!92566 () Bool)

(declare-fun e!92565 () Bool)

(assert (=> b!154539 (= e!92566 e!92565)))

(declare-fun c!31166 () Bool)

(assert (=> b!154539 (= c!31166 ((_ is IntegerValue!1462) (value!17568 (h!8065 (t!25078 tokens!465)))))))

(declare-fun b!154540 () Bool)

(declare-fun res!70612 () Bool)

(declare-fun e!92567 () Bool)

(assert (=> b!154540 (=> res!70612 e!92567)))

(assert (=> b!154540 (= res!70612 (not ((_ is IntegerValue!1463) (value!17568 (h!8065 (t!25078 tokens!465))))))))

(assert (=> b!154540 (= e!92565 e!92567)))

(declare-fun b!154541 () Bool)

(assert (=> b!154541 (= e!92565 (inv!17 (value!17568 (h!8065 (t!25078 tokens!465)))))))

(declare-fun d!37392 () Bool)

(declare-fun c!31167 () Bool)

(assert (=> d!37392 (= c!31167 ((_ is IntegerValue!1461) (value!17568 (h!8065 (t!25078 tokens!465)))))))

(assert (=> d!37392 (= (inv!21 (value!17568 (h!8065 (t!25078 tokens!465)))) e!92566)))

(declare-fun b!154542 () Bool)

(assert (=> b!154542 (= e!92566 (inv!16 (value!17568 (h!8065 (t!25078 tokens!465)))))))

(declare-fun b!154543 () Bool)

(assert (=> b!154543 (= e!92567 (inv!15 (value!17568 (h!8065 (t!25078 tokens!465)))))))

(assert (= (and d!37392 c!31167) b!154542))

(assert (= (and d!37392 (not c!31167)) b!154539))

(assert (= (and b!154539 c!31166) b!154541))

(assert (= (and b!154539 (not c!31166)) b!154540))

(assert (= (and b!154540 (not res!70612)) b!154543))

(declare-fun m!140553 () Bool)

(assert (=> b!154541 m!140553))

(declare-fun m!140555 () Bool)

(assert (=> b!154542 m!140555))

(declare-fun m!140557 () Bool)

(assert (=> b!154543 m!140557))

(assert (=> b!153810 d!37392))

(assert (=> bm!6308 d!36868))

(assert (=> b!153665 d!37162))

(declare-fun b!154546 () Bool)

(declare-fun e!92570 () Bool)

(assert (=> b!154546 (= e!92570 true)))

(declare-fun b!154545 () Bool)

(declare-fun e!92569 () Bool)

(assert (=> b!154545 (= e!92569 e!92570)))

(declare-fun b!154544 () Bool)

(declare-fun e!92568 () Bool)

(assert (=> b!154544 (= e!92568 e!92569)))

(assert (=> b!153688 e!92568))

(assert (= b!154545 b!154546))

(assert (= b!154544 b!154545))

(assert (= (and b!153688 ((_ is Cons!2667) (t!25077 rules!1920))) b!154544))

(assert (=> b!154546 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 (t!25077 rules!1920))))) (dynLambda!931 order!1335 lambda!4042))))

(assert (=> b!154546 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920))))) (dynLambda!931 order!1335 lambda!4042))))

(declare-fun b!154548 () Bool)

(declare-fun e!92571 () Bool)

(declare-fun tp!79664 () Bool)

(declare-fun tp!79666 () Bool)

(assert (=> b!154548 (= e!92571 (and tp!79664 tp!79666))))

(assert (=> b!153816 (= tp!79651 e!92571)))

(declare-fun b!154549 () Bool)

(declare-fun tp!79665 () Bool)

(assert (=> b!154549 (= e!92571 tp!79665)))

(declare-fun b!154550 () Bool)

(declare-fun tp!79663 () Bool)

(declare-fun tp!79667 () Bool)

(assert (=> b!154550 (= e!92571 (and tp!79663 tp!79667))))

(declare-fun b!154547 () Bool)

(assert (=> b!154547 (= e!92571 tp_is_empty!1619)))

(assert (= (and b!153816 ((_ is ElementMatch!689) (regOne!1891 (regex!465 (rule!972 separatorToken!170))))) b!154547))

(assert (= (and b!153816 ((_ is Concat!1177) (regOne!1891 (regex!465 (rule!972 separatorToken!170))))) b!154548))

(assert (= (and b!153816 ((_ is Star!689) (regOne!1891 (regex!465 (rule!972 separatorToken!170))))) b!154549))

(assert (= (and b!153816 ((_ is Union!689) (regOne!1891 (regex!465 (rule!972 separatorToken!170))))) b!154550))

(declare-fun b!154552 () Bool)

(declare-fun e!92572 () Bool)

(declare-fun tp!79669 () Bool)

(declare-fun tp!79671 () Bool)

(assert (=> b!154552 (= e!92572 (and tp!79669 tp!79671))))

(assert (=> b!153816 (= tp!79655 e!92572)))

(declare-fun b!154553 () Bool)

(declare-fun tp!79670 () Bool)

(assert (=> b!154553 (= e!92572 tp!79670)))

(declare-fun b!154554 () Bool)

(declare-fun tp!79668 () Bool)

(declare-fun tp!79672 () Bool)

(assert (=> b!154554 (= e!92572 (and tp!79668 tp!79672))))

(declare-fun b!154551 () Bool)

(assert (=> b!154551 (= e!92572 tp_is_empty!1619)))

(assert (= (and b!153816 ((_ is ElementMatch!689) (regTwo!1891 (regex!465 (rule!972 separatorToken!170))))) b!154551))

(assert (= (and b!153816 ((_ is Concat!1177) (regTwo!1891 (regex!465 (rule!972 separatorToken!170))))) b!154552))

(assert (= (and b!153816 ((_ is Star!689) (regTwo!1891 (regex!465 (rule!972 separatorToken!170))))) b!154553))

(assert (= (and b!153816 ((_ is Union!689) (regTwo!1891 (regex!465 (rule!972 separatorToken!170))))) b!154554))

(declare-fun b!154557 () Bool)

(declare-fun e!92575 () Bool)

(assert (=> b!154557 (= e!92575 true)))

(declare-fun b!154556 () Bool)

(declare-fun e!92574 () Bool)

(assert (=> b!154556 (= e!92574 e!92575)))

(declare-fun b!154555 () Bool)

(declare-fun e!92573 () Bool)

(assert (=> b!154555 (= e!92573 e!92574)))

(assert (=> b!153669 e!92573))

(assert (= b!154556 b!154557))

(assert (= b!154555 b!154556))

(assert (= (and b!153669 ((_ is Cons!2667) (t!25077 rules!1920))) b!154555))

(assert (=> b!154557 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 (t!25077 rules!1920))))) (dynLambda!931 order!1335 lambda!4038))))

(assert (=> b!154557 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920))))) (dynLambda!931 order!1335 lambda!4038))))

(declare-fun b!154559 () Bool)

(declare-fun e!92576 () Bool)

(declare-fun tp!79674 () Bool)

(declare-fun tp!79676 () Bool)

(assert (=> b!154559 (= e!92576 (and tp!79674 tp!79676))))

(assert (=> b!153746 (= tp!79574 e!92576)))

(declare-fun b!154560 () Bool)

(declare-fun tp!79675 () Bool)

(assert (=> b!154560 (= e!92576 tp!79675)))

(declare-fun b!154561 () Bool)

(declare-fun tp!79673 () Bool)

(declare-fun tp!79677 () Bool)

(assert (=> b!154561 (= e!92576 (and tp!79673 tp!79677))))

(declare-fun b!154558 () Bool)

(assert (=> b!154558 (= e!92576 tp_is_empty!1619)))

(assert (= (and b!153746 ((_ is ElementMatch!689) (regOne!1890 (regex!465 (h!8064 rules!1920))))) b!154558))

(assert (= (and b!153746 ((_ is Concat!1177) (regOne!1890 (regex!465 (h!8064 rules!1920))))) b!154559))

(assert (= (and b!153746 ((_ is Star!689) (regOne!1890 (regex!465 (h!8064 rules!1920))))) b!154560))

(assert (= (and b!153746 ((_ is Union!689) (regOne!1890 (regex!465 (h!8064 rules!1920))))) b!154561))

(declare-fun b!154563 () Bool)

(declare-fun e!92577 () Bool)

(declare-fun tp!79679 () Bool)

(declare-fun tp!79681 () Bool)

(assert (=> b!154563 (= e!92577 (and tp!79679 tp!79681))))

(assert (=> b!153746 (= tp!79576 e!92577)))

(declare-fun b!154564 () Bool)

(declare-fun tp!79680 () Bool)

(assert (=> b!154564 (= e!92577 tp!79680)))

(declare-fun b!154565 () Bool)

(declare-fun tp!79678 () Bool)

(declare-fun tp!79682 () Bool)

(assert (=> b!154565 (= e!92577 (and tp!79678 tp!79682))))

(declare-fun b!154562 () Bool)

(assert (=> b!154562 (= e!92577 tp_is_empty!1619)))

(assert (= (and b!153746 ((_ is ElementMatch!689) (regTwo!1890 (regex!465 (h!8064 rules!1920))))) b!154562))

(assert (= (and b!153746 ((_ is Concat!1177) (regTwo!1890 (regex!465 (h!8064 rules!1920))))) b!154563))

(assert (= (and b!153746 ((_ is Star!689) (regTwo!1890 (regex!465 (h!8064 rules!1920))))) b!154564))

(assert (= (and b!153746 ((_ is Union!689) (regTwo!1890 (regex!465 (h!8064 rules!1920))))) b!154565))

(declare-fun b!154567 () Bool)

(declare-fun e!92578 () Bool)

(declare-fun tp!79684 () Bool)

(declare-fun tp!79686 () Bool)

(assert (=> b!154567 (= e!92578 (and tp!79684 tp!79686))))

(assert (=> b!153748 (= tp!79573 e!92578)))

(declare-fun b!154568 () Bool)

(declare-fun tp!79685 () Bool)

(assert (=> b!154568 (= e!92578 tp!79685)))

(declare-fun b!154569 () Bool)

(declare-fun tp!79683 () Bool)

(declare-fun tp!79687 () Bool)

(assert (=> b!154569 (= e!92578 (and tp!79683 tp!79687))))

(declare-fun b!154566 () Bool)

(assert (=> b!154566 (= e!92578 tp_is_empty!1619)))

(assert (= (and b!153748 ((_ is ElementMatch!689) (regOne!1891 (regex!465 (h!8064 rules!1920))))) b!154566))

(assert (= (and b!153748 ((_ is Concat!1177) (regOne!1891 (regex!465 (h!8064 rules!1920))))) b!154567))

(assert (= (and b!153748 ((_ is Star!689) (regOne!1891 (regex!465 (h!8064 rules!1920))))) b!154568))

(assert (= (and b!153748 ((_ is Union!689) (regOne!1891 (regex!465 (h!8064 rules!1920))))) b!154569))

(declare-fun b!154571 () Bool)

(declare-fun e!92579 () Bool)

(declare-fun tp!79689 () Bool)

(declare-fun tp!79691 () Bool)

(assert (=> b!154571 (= e!92579 (and tp!79689 tp!79691))))

(assert (=> b!153748 (= tp!79577 e!92579)))

(declare-fun b!154572 () Bool)

(declare-fun tp!79690 () Bool)

(assert (=> b!154572 (= e!92579 tp!79690)))

(declare-fun b!154573 () Bool)

(declare-fun tp!79688 () Bool)

(declare-fun tp!79692 () Bool)

(assert (=> b!154573 (= e!92579 (and tp!79688 tp!79692))))

(declare-fun b!154570 () Bool)

(assert (=> b!154570 (= e!92579 tp_is_empty!1619)))

(assert (= (and b!153748 ((_ is ElementMatch!689) (regTwo!1891 (regex!465 (h!8064 rules!1920))))) b!154570))

(assert (= (and b!153748 ((_ is Concat!1177) (regTwo!1891 (regex!465 (h!8064 rules!1920))))) b!154571))

(assert (= (and b!153748 ((_ is Star!689) (regTwo!1891 (regex!465 (h!8064 rules!1920))))) b!154572))

(assert (= (and b!153748 ((_ is Union!689) (regTwo!1891 (regex!465 (h!8064 rules!1920))))) b!154573))

(declare-fun b!154575 () Bool)

(declare-fun e!92580 () Bool)

(declare-fun tp!79694 () Bool)

(declare-fun tp!79696 () Bool)

(assert (=> b!154575 (= e!92580 (and tp!79694 tp!79696))))

(assert (=> b!153747 (= tp!79575 e!92580)))

(declare-fun b!154576 () Bool)

(declare-fun tp!79695 () Bool)

(assert (=> b!154576 (= e!92580 tp!79695)))

(declare-fun b!154577 () Bool)

(declare-fun tp!79693 () Bool)

(declare-fun tp!79697 () Bool)

(assert (=> b!154577 (= e!92580 (and tp!79693 tp!79697))))

(declare-fun b!154574 () Bool)

(assert (=> b!154574 (= e!92580 tp_is_empty!1619)))

(assert (= (and b!153747 ((_ is ElementMatch!689) (reg!1018 (regex!465 (h!8064 rules!1920))))) b!154574))

(assert (= (and b!153747 ((_ is Concat!1177) (reg!1018 (regex!465 (h!8064 rules!1920))))) b!154575))

(assert (= (and b!153747 ((_ is Star!689) (reg!1018 (regex!465 (h!8064 rules!1920))))) b!154576))

(assert (= (and b!153747 ((_ is Union!689) (reg!1018 (regex!465 (h!8064 rules!1920))))) b!154577))

(declare-fun b!154579 () Bool)

(declare-fun e!92581 () Bool)

(declare-fun tp!79699 () Bool)

(declare-fun tp!79701 () Bool)

(assert (=> b!154579 (= e!92581 (and tp!79699 tp!79701))))

(assert (=> b!153815 (= tp!79653 e!92581)))

(declare-fun b!154580 () Bool)

(declare-fun tp!79700 () Bool)

(assert (=> b!154580 (= e!92581 tp!79700)))

(declare-fun b!154581 () Bool)

(declare-fun tp!79698 () Bool)

(declare-fun tp!79702 () Bool)

(assert (=> b!154581 (= e!92581 (and tp!79698 tp!79702))))

(declare-fun b!154578 () Bool)

(assert (=> b!154578 (= e!92581 tp_is_empty!1619)))

(assert (= (and b!153815 ((_ is ElementMatch!689) (reg!1018 (regex!465 (rule!972 separatorToken!170))))) b!154578))

(assert (= (and b!153815 ((_ is Concat!1177) (reg!1018 (regex!465 (rule!972 separatorToken!170))))) b!154579))

(assert (= (and b!153815 ((_ is Star!689) (reg!1018 (regex!465 (rule!972 separatorToken!170))))) b!154580))

(assert (= (and b!153815 ((_ is Union!689) (reg!1018 (regex!465 (rule!972 separatorToken!170))))) b!154581))

(declare-fun b!154583 () Bool)

(declare-fun e!92582 () Bool)

(declare-fun tp!79704 () Bool)

(declare-fun tp!79706 () Bool)

(assert (=> b!154583 (= e!92582 (and tp!79704 tp!79706))))

(assert (=> b!153814 (= tp!79652 e!92582)))

(declare-fun b!154584 () Bool)

(declare-fun tp!79705 () Bool)

(assert (=> b!154584 (= e!92582 tp!79705)))

(declare-fun b!154585 () Bool)

(declare-fun tp!79703 () Bool)

(declare-fun tp!79707 () Bool)

(assert (=> b!154585 (= e!92582 (and tp!79703 tp!79707))))

(declare-fun b!154582 () Bool)

(assert (=> b!154582 (= e!92582 tp_is_empty!1619)))

(assert (= (and b!153814 ((_ is ElementMatch!689) (regOne!1890 (regex!465 (rule!972 separatorToken!170))))) b!154582))

(assert (= (and b!153814 ((_ is Concat!1177) (regOne!1890 (regex!465 (rule!972 separatorToken!170))))) b!154583))

(assert (= (and b!153814 ((_ is Star!689) (regOne!1890 (regex!465 (rule!972 separatorToken!170))))) b!154584))

(assert (= (and b!153814 ((_ is Union!689) (regOne!1890 (regex!465 (rule!972 separatorToken!170))))) b!154585))

(declare-fun b!154587 () Bool)

(declare-fun e!92583 () Bool)

(declare-fun tp!79709 () Bool)

(declare-fun tp!79711 () Bool)

(assert (=> b!154587 (= e!92583 (and tp!79709 tp!79711))))

(assert (=> b!153814 (= tp!79654 e!92583)))

(declare-fun b!154588 () Bool)

(declare-fun tp!79710 () Bool)

(assert (=> b!154588 (= e!92583 tp!79710)))

(declare-fun b!154589 () Bool)

(declare-fun tp!79708 () Bool)

(declare-fun tp!79712 () Bool)

(assert (=> b!154589 (= e!92583 (and tp!79708 tp!79712))))

(declare-fun b!154586 () Bool)

(assert (=> b!154586 (= e!92583 tp_is_empty!1619)))

(assert (= (and b!153814 ((_ is ElementMatch!689) (regTwo!1890 (regex!465 (rule!972 separatorToken!170))))) b!154586))

(assert (= (and b!153814 ((_ is Concat!1177) (regTwo!1890 (regex!465 (rule!972 separatorToken!170))))) b!154587))

(assert (= (and b!153814 ((_ is Star!689) (regTwo!1890 (regex!465 (rule!972 separatorToken!170))))) b!154588))

(assert (= (and b!153814 ((_ is Union!689) (regTwo!1890 (regex!465 (rule!972 separatorToken!170))))) b!154589))

(declare-fun b!154591 () Bool)

(declare-fun e!92584 () Bool)

(declare-fun tp!79714 () Bool)

(declare-fun tp!79716 () Bool)

(assert (=> b!154591 (= e!92584 (and tp!79714 tp!79716))))

(assert (=> b!153752 (= tp!79579 e!92584)))

(declare-fun b!154592 () Bool)

(declare-fun tp!79715 () Bool)

(assert (=> b!154592 (= e!92584 tp!79715)))

(declare-fun b!154593 () Bool)

(declare-fun tp!79713 () Bool)

(declare-fun tp!79717 () Bool)

(assert (=> b!154593 (= e!92584 (and tp!79713 tp!79717))))

(declare-fun b!154590 () Bool)

(assert (=> b!154590 (= e!92584 tp_is_empty!1619)))

(assert (= (and b!153752 ((_ is ElementMatch!689) (regOne!1890 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154590))

(assert (= (and b!153752 ((_ is Concat!1177) (regOne!1890 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154591))

(assert (= (and b!153752 ((_ is Star!689) (regOne!1890 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154592))

(assert (= (and b!153752 ((_ is Union!689) (regOne!1890 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154593))

(declare-fun b!154595 () Bool)

(declare-fun e!92585 () Bool)

(declare-fun tp!79719 () Bool)

(declare-fun tp!79721 () Bool)

(assert (=> b!154595 (= e!92585 (and tp!79719 tp!79721))))

(assert (=> b!153752 (= tp!79581 e!92585)))

(declare-fun b!154596 () Bool)

(declare-fun tp!79720 () Bool)

(assert (=> b!154596 (= e!92585 tp!79720)))

(declare-fun b!154597 () Bool)

(declare-fun tp!79718 () Bool)

(declare-fun tp!79722 () Bool)

(assert (=> b!154597 (= e!92585 (and tp!79718 tp!79722))))

(declare-fun b!154594 () Bool)

(assert (=> b!154594 (= e!92585 tp_is_empty!1619)))

(assert (= (and b!153752 ((_ is ElementMatch!689) (regTwo!1890 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154594))

(assert (= (and b!153752 ((_ is Concat!1177) (regTwo!1890 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154595))

(assert (= (and b!153752 ((_ is Star!689) (regTwo!1890 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154596))

(assert (= (and b!153752 ((_ is Union!689) (regTwo!1890 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154597))

(declare-fun b!154598 () Bool)

(declare-fun e!92586 () Bool)

(declare-fun tp!79723 () Bool)

(assert (=> b!154598 (= e!92586 (and tp_is_empty!1619 tp!79723))))

(assert (=> b!153778 (= tp!79612 e!92586)))

(assert (= (and b!153778 ((_ is Cons!2666) (t!25076 (originalCharacters!508 separatorToken!170)))) b!154598))

(declare-fun b!154600 () Bool)

(declare-fun e!92587 () Bool)

(declare-fun tp!79725 () Bool)

(declare-fun tp!79727 () Bool)

(assert (=> b!154600 (= e!92587 (and tp!79725 tp!79727))))

(assert (=> b!153754 (= tp!79578 e!92587)))

(declare-fun b!154601 () Bool)

(declare-fun tp!79726 () Bool)

(assert (=> b!154601 (= e!92587 tp!79726)))

(declare-fun b!154602 () Bool)

(declare-fun tp!79724 () Bool)

(declare-fun tp!79728 () Bool)

(assert (=> b!154602 (= e!92587 (and tp!79724 tp!79728))))

(declare-fun b!154599 () Bool)

(assert (=> b!154599 (= e!92587 tp_is_empty!1619)))

(assert (= (and b!153754 ((_ is ElementMatch!689) (regOne!1891 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154599))

(assert (= (and b!153754 ((_ is Concat!1177) (regOne!1891 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154600))

(assert (= (and b!153754 ((_ is Star!689) (regOne!1891 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154601))

(assert (= (and b!153754 ((_ is Union!689) (regOne!1891 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154602))

(declare-fun b!154604 () Bool)

(declare-fun e!92588 () Bool)

(declare-fun tp!79730 () Bool)

(declare-fun tp!79732 () Bool)

(assert (=> b!154604 (= e!92588 (and tp!79730 tp!79732))))

(assert (=> b!153754 (= tp!79582 e!92588)))

(declare-fun b!154605 () Bool)

(declare-fun tp!79731 () Bool)

(assert (=> b!154605 (= e!92588 tp!79731)))

(declare-fun b!154606 () Bool)

(declare-fun tp!79729 () Bool)

(declare-fun tp!79733 () Bool)

(assert (=> b!154606 (= e!92588 (and tp!79729 tp!79733))))

(declare-fun b!154603 () Bool)

(assert (=> b!154603 (= e!92588 tp_is_empty!1619)))

(assert (= (and b!153754 ((_ is ElementMatch!689) (regTwo!1891 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154603))

(assert (= (and b!153754 ((_ is Concat!1177) (regTwo!1891 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154604))

(assert (= (and b!153754 ((_ is Star!689) (regTwo!1891 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154605))

(assert (= (and b!153754 ((_ is Union!689) (regTwo!1891 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154606))

(declare-fun b!154608 () Bool)

(declare-fun e!92589 () Bool)

(declare-fun tp!79735 () Bool)

(declare-fun tp!79737 () Bool)

(assert (=> b!154608 (= e!92589 (and tp!79735 tp!79737))))

(assert (=> b!153753 (= tp!79580 e!92589)))

(declare-fun b!154609 () Bool)

(declare-fun tp!79736 () Bool)

(assert (=> b!154609 (= e!92589 tp!79736)))

(declare-fun b!154610 () Bool)

(declare-fun tp!79734 () Bool)

(declare-fun tp!79738 () Bool)

(assert (=> b!154610 (= e!92589 (and tp!79734 tp!79738))))

(declare-fun b!154607 () Bool)

(assert (=> b!154607 (= e!92589 tp_is_empty!1619)))

(assert (= (and b!153753 ((_ is ElementMatch!689) (reg!1018 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154607))

(assert (= (and b!153753 ((_ is Concat!1177) (reg!1018 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154608))

(assert (= (and b!153753 ((_ is Star!689) (reg!1018 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154609))

(assert (= (and b!153753 ((_ is Union!689) (reg!1018 (regex!465 (rule!972 (h!8065 tokens!465)))))) b!154610))

(declare-fun tp!79745 () Bool)

(declare-fun e!92595 () Bool)

(declare-fun b!154619 () Bool)

(declare-fun tp!79747 () Bool)

(assert (=> b!154619 (= e!92595 (and (inv!3468 (left!2011 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465)))))) tp!79747 (inv!3468 (right!2341 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465)))))) tp!79745))))

(declare-fun b!154621 () Bool)

(declare-fun e!92594 () Bool)

(declare-fun tp!79746 () Bool)

(assert (=> b!154621 (= e!92594 tp!79746)))

(declare-fun b!154620 () Bool)

(declare-fun inv!3474 (IArray!1505) Bool)

(assert (=> b!154620 (= e!92595 (and (inv!3474 (xs!3347 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465)))))) e!92594))))

(assert (=> b!153543 (= tp!79543 (and (inv!3468 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465))))) e!92595))))

(assert (= (and b!153543 ((_ is Node!752) (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465)))))) b!154619))

(assert (= b!154620 b!154621))

(assert (= (and b!153543 ((_ is Leaf!1324) (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (value!17568 (h!8065 tokens!465)))))) b!154620))

(declare-fun m!140559 () Bool)

(assert (=> b!154619 m!140559))

(declare-fun m!140561 () Bool)

(assert (=> b!154619 m!140561))

(declare-fun m!140563 () Bool)

(assert (=> b!154620 m!140563))

(assert (=> b!153543 m!138561))

(declare-fun b!154624 () Bool)

(declare-fun e!92598 () Bool)

(assert (=> b!154624 (= e!92598 true)))

(declare-fun b!154623 () Bool)

(declare-fun e!92597 () Bool)

(assert (=> b!154623 (= e!92597 e!92598)))

(declare-fun b!154622 () Bool)

(declare-fun e!92596 () Bool)

(assert (=> b!154622 (= e!92596 e!92597)))

(assert (=> b!153535 e!92596))

(assert (= b!154623 b!154624))

(assert (= b!154622 b!154623))

(assert (= (and b!153535 ((_ is Cons!2667) (t!25077 rules!1920))) b!154622))

(assert (=> b!154624 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 (t!25077 rules!1920))))) (dynLambda!931 order!1335 lambda!4020))))

(assert (=> b!154624 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920))))) (dynLambda!931 order!1335 lambda!4020))))

(declare-fun b!154627 () Bool)

(declare-fun b_free!5685 () Bool)

(declare-fun b_next!5685 () Bool)

(assert (=> b!154627 (= b_free!5685 (not b_next!5685))))

(declare-fun tp!79748 () Bool)

(declare-fun b_and!9157 () Bool)

(assert (=> b!154627 (= tp!79748 b_and!9157)))

(declare-fun b_free!5687 () Bool)

(declare-fun b_next!5687 () Bool)

(assert (=> b!154627 (= b_free!5687 (not b_next!5687))))

(declare-fun tb!5363 () Bool)

(declare-fun t!25222 () Bool)

(assert (=> (and b!154627 (= (toChars!963 (transformation!465 (h!8064 (t!25077 (t!25077 rules!1920))))) (toChars!963 (transformation!465 (rule!972 separatorToken!170)))) t!25222) tb!5363))

(declare-fun result!7864 () Bool)

(assert (= result!7864 result!7746))

(assert (=> d!36864 t!25222))

(declare-fun tb!5365 () Bool)

(declare-fun t!25224 () Bool)

(assert (=> (and b!154627 (= (toChars!963 (transformation!465 (h!8064 (t!25077 (t!25077 rules!1920))))) (toChars!963 (transformation!465 (rule!972 (ite c!30970 separatorToken!170 call!6311))))) t!25224) tb!5365))

(declare-fun result!7866 () Bool)

(assert (= result!7866 result!7812))

(assert (=> d!37150 t!25224))

(declare-fun tb!5367 () Bool)

(declare-fun t!25226 () Bool)

(assert (=> (and b!154627 (= (toChars!963 (transformation!465 (h!8064 (t!25077 (t!25077 rules!1920))))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465)))))) t!25226) tb!5367))

(declare-fun result!7868 () Bool)

(assert (= result!7868 result!7792))

(assert (=> b!154185 t!25226))

(declare-fun tb!5369 () Bool)

(declare-fun t!25228 () Bool)

(assert (=> (and b!154627 (= (toChars!963 (transformation!465 (h!8064 (t!25077 (t!25077 rules!1920))))) (toChars!963 (transformation!465 (rule!972 (apply!352 lt!45003 0))))) t!25228) tb!5369))

(declare-fun result!7870 () Bool)

(assert (= result!7870 result!7852))

(assert (=> d!37292 t!25228))

(declare-fun t!25230 () Bool)

(declare-fun tb!5371 () Bool)

(assert (=> (and b!154627 (= (toChars!963 (transformation!465 (h!8064 (t!25077 (t!25077 rules!1920))))) (toChars!963 (transformation!465 (rule!972 (ite c!30969 call!6307 call!6311))))) t!25230) tb!5371))

(declare-fun result!7872 () Bool)

(assert (= result!7872 result!7842))

(assert (=> d!37220 t!25230))

(declare-fun t!25232 () Bool)

(declare-fun tb!5373 () Bool)

(assert (=> (and b!154627 (= (toChars!963 (transformation!465 (h!8064 (t!25077 (t!25077 rules!1920))))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465))))) t!25232) tb!5373))

(declare-fun result!7874 () Bool)

(assert (= result!7874 result!7754))

(assert (=> b!153580 t!25232))

(assert (=> d!36952 t!25226))

(assert (=> d!36868 t!25232))

(assert (=> b!153582 t!25222))

(declare-fun b_and!9159 () Bool)

(declare-fun tp!79751 () Bool)

(assert (=> b!154627 (= tp!79751 (and (=> t!25230 result!7872) (=> t!25226 result!7868) (=> t!25222 result!7864) (=> t!25228 result!7870) (=> t!25232 result!7874) (=> t!25224 result!7866) b_and!9159))))

(declare-fun e!92599 () Bool)

(assert (=> b!154627 (= e!92599 (and tp!79748 tp!79751))))

(declare-fun e!92601 () Bool)

(declare-fun tp!79749 () Bool)

(declare-fun b!154626 () Bool)

(assert (=> b!154626 (= e!92601 (and tp!79749 (inv!3461 (tag!643 (h!8064 (t!25077 (t!25077 rules!1920))))) (inv!3464 (transformation!465 (h!8064 (t!25077 (t!25077 rules!1920))))) e!92599))))

(declare-fun b!154625 () Bool)

(declare-fun e!92602 () Bool)

(declare-fun tp!79750 () Bool)

(assert (=> b!154625 (= e!92602 (and e!92601 tp!79750))))

(assert (=> b!153767 (= tp!79603 e!92602)))

(assert (= b!154626 b!154627))

(assert (= b!154625 b!154626))

(assert (= (and b!153767 ((_ is Cons!2667) (t!25077 (t!25077 rules!1920)))) b!154625))

(declare-fun m!140565 () Bool)

(assert (=> b!154626 m!140565))

(declare-fun m!140567 () Bool)

(assert (=> b!154626 m!140567))

(declare-fun tp!79752 () Bool)

(declare-fun b!154628 () Bool)

(declare-fun tp!79754 () Bool)

(declare-fun e!92604 () Bool)

(assert (=> b!154628 (= e!92604 (and (inv!3468 (left!2011 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170))))) tp!79754 (inv!3468 (right!2341 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170))))) tp!79752))))

(declare-fun b!154630 () Bool)

(declare-fun e!92603 () Bool)

(declare-fun tp!79753 () Bool)

(assert (=> b!154630 (= e!92603 tp!79753)))

(declare-fun b!154629 () Bool)

(assert (=> b!154629 (= e!92604 (and (inv!3474 (xs!3347 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170))))) e!92603))))

(assert (=> b!153542 (= tp!79542 (and (inv!3468 (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170)))) e!92604))))

(assert (= (and b!153542 ((_ is Node!752) (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170))))) b!154628))

(assert (= b!154629 b!154630))

(assert (= (and b!153542 ((_ is Leaf!1324) (c!30889 (dynLambda!938 (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (value!17568 separatorToken!170))))) b!154629))

(declare-fun m!140569 () Bool)

(assert (=> b!154628 m!140569))

(declare-fun m!140571 () Bool)

(assert (=> b!154628 m!140571))

(declare-fun m!140573 () Bool)

(assert (=> b!154629 m!140573))

(assert (=> b!153542 m!138551))

(declare-fun b!154632 () Bool)

(declare-fun e!92605 () Bool)

(declare-fun tp!79756 () Bool)

(declare-fun tp!79758 () Bool)

(assert (=> b!154632 (= e!92605 (and tp!79756 tp!79758))))

(assert (=> b!153768 (= tp!79602 e!92605)))

(declare-fun b!154633 () Bool)

(declare-fun tp!79757 () Bool)

(assert (=> b!154633 (= e!92605 tp!79757)))

(declare-fun b!154634 () Bool)

(declare-fun tp!79755 () Bool)

(declare-fun tp!79759 () Bool)

(assert (=> b!154634 (= e!92605 (and tp!79755 tp!79759))))

(declare-fun b!154631 () Bool)

(assert (=> b!154631 (= e!92605 tp_is_empty!1619)))

(assert (= (and b!153768 ((_ is ElementMatch!689) (regex!465 (h!8064 (t!25077 rules!1920))))) b!154631))

(assert (= (and b!153768 ((_ is Concat!1177) (regex!465 (h!8064 (t!25077 rules!1920))))) b!154632))

(assert (= (and b!153768 ((_ is Star!689) (regex!465 (h!8064 (t!25077 rules!1920))))) b!154633))

(assert (= (and b!153768 ((_ is Union!689) (regex!465 (h!8064 (t!25077 rules!1920))))) b!154634))

(declare-fun b!154636 () Bool)

(declare-fun e!92606 () Bool)

(declare-fun tp!79761 () Bool)

(declare-fun tp!79763 () Bool)

(assert (=> b!154636 (= e!92606 (and tp!79761 tp!79763))))

(assert (=> b!153811 (= tp!79649 e!92606)))

(declare-fun b!154637 () Bool)

(declare-fun tp!79762 () Bool)

(assert (=> b!154637 (= e!92606 tp!79762)))

(declare-fun b!154638 () Bool)

(declare-fun tp!79760 () Bool)

(declare-fun tp!79764 () Bool)

(assert (=> b!154638 (= e!92606 (and tp!79760 tp!79764))))

(declare-fun b!154635 () Bool)

(assert (=> b!154635 (= e!92606 tp_is_empty!1619)))

(assert (= (and b!153811 ((_ is ElementMatch!689) (regex!465 (rule!972 (h!8065 (t!25078 tokens!465)))))) b!154635))

(assert (= (and b!153811 ((_ is Concat!1177) (regex!465 (rule!972 (h!8065 (t!25078 tokens!465)))))) b!154636))

(assert (= (and b!153811 ((_ is Star!689) (regex!465 (rule!972 (h!8065 (t!25078 tokens!465)))))) b!154637))

(assert (= (and b!153811 ((_ is Union!689) (regex!465 (rule!972 (h!8065 (t!25078 tokens!465)))))) b!154638))

(declare-fun b!154641 () Bool)

(declare-fun e!92609 () Bool)

(assert (=> b!154641 (= e!92609 true)))

(declare-fun b!154640 () Bool)

(declare-fun e!92608 () Bool)

(assert (=> b!154640 (= e!92608 e!92609)))

(declare-fun b!154639 () Bool)

(declare-fun e!92607 () Bool)

(assert (=> b!154639 (= e!92607 e!92608)))

(assert (=> b!153562 e!92607))

(assert (= b!154640 b!154641))

(assert (= b!154639 b!154640))

(assert (= (and b!153562 ((_ is Cons!2667) (t!25077 rules!1920))) b!154639))

(assert (=> b!154641 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 (t!25077 rules!1920))))) (dynLambda!931 order!1335 lambda!4023))))

(assert (=> b!154641 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920))))) (dynLambda!931 order!1335 lambda!4023))))

(declare-fun b!154642 () Bool)

(declare-fun e!92610 () Bool)

(declare-fun tp!79765 () Bool)

(assert (=> b!154642 (= e!92610 (and tp_is_empty!1619 tp!79765))))

(assert (=> b!153783 (= tp!79618 e!92610)))

(assert (= (and b!153783 ((_ is Cons!2666) (t!25076 (originalCharacters!508 (h!8065 tokens!465))))) b!154642))

(declare-fun b!154645 () Bool)

(declare-fun e!92613 () Bool)

(assert (=> b!154645 (= e!92613 true)))

(declare-fun b!154644 () Bool)

(declare-fun e!92612 () Bool)

(assert (=> b!154644 (= e!92612 e!92613)))

(declare-fun b!154643 () Bool)

(declare-fun e!92611 () Bool)

(assert (=> b!154643 (= e!92611 e!92612)))

(assert (=> b!153412 e!92611))

(assert (= b!154644 b!154645))

(assert (= b!154643 b!154644))

(assert (= (and b!153412 ((_ is Cons!2667) (t!25077 rules!1920))) b!154643))

(assert (=> b!154645 (< (dynLambda!930 order!1333 (toValue!1104 (transformation!465 (h!8064 (t!25077 rules!1920))))) (dynLambda!931 order!1335 lambda!4014))))

(assert (=> b!154645 (< (dynLambda!932 order!1337 (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920))))) (dynLambda!931 order!1335 lambda!4014))))

(declare-fun b!154646 () Bool)

(declare-fun e!92614 () Bool)

(declare-fun tp!79766 () Bool)

(assert (=> b!154646 (= e!92614 (and tp_is_empty!1619 tp!79766))))

(assert (=> b!153810 (= tp!79646 e!92614)))

(assert (= (and b!153810 ((_ is Cons!2666) (originalCharacters!508 (h!8065 (t!25078 tokens!465))))) b!154646))

(declare-fun b!154650 () Bool)

(declare-fun b_free!5689 () Bool)

(declare-fun b_next!5689 () Bool)

(assert (=> b!154650 (= b_free!5689 (not b_next!5689))))

(declare-fun tp!79768 () Bool)

(declare-fun b_and!9161 () Bool)

(assert (=> b!154650 (= tp!79768 b_and!9161)))

(declare-fun b_free!5691 () Bool)

(declare-fun b_next!5691 () Bool)

(assert (=> b!154650 (= b_free!5691 (not b_next!5691))))

(declare-fun t!25234 () Bool)

(declare-fun tb!5375 () Bool)

(assert (=> (and b!154650 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 (t!25078 tokens!465)))))) (toChars!963 (transformation!465 (rule!972 separatorToken!170)))) t!25234) tb!5375))

(declare-fun result!7876 () Bool)

(assert (= result!7876 result!7746))

(assert (=> d!36864 t!25234))

(declare-fun t!25236 () Bool)

(declare-fun tb!5377 () Bool)

(assert (=> (and b!154650 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 (t!25078 tokens!465)))))) (toChars!963 (transformation!465 (rule!972 (ite c!30970 separatorToken!170 call!6311))))) t!25236) tb!5377))

(declare-fun result!7878 () Bool)

(assert (= result!7878 result!7812))

(assert (=> d!37150 t!25236))

(declare-fun t!25238 () Bool)

(declare-fun tb!5379 () Bool)

(assert (=> (and b!154650 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 (t!25078 tokens!465)))))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465)))))) t!25238) tb!5379))

(declare-fun result!7880 () Bool)

(assert (= result!7880 result!7792))

(assert (=> b!154185 t!25238))

(declare-fun t!25240 () Bool)

(declare-fun tb!5381 () Bool)

(assert (=> (and b!154650 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 (t!25078 tokens!465)))))) (toChars!963 (transformation!465 (rule!972 (apply!352 lt!45003 0))))) t!25240) tb!5381))

(declare-fun result!7882 () Bool)

(assert (= result!7882 result!7852))

(assert (=> d!37292 t!25240))

(declare-fun t!25242 () Bool)

(declare-fun tb!5383 () Bool)

(assert (=> (and b!154650 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 (t!25078 tokens!465)))))) (toChars!963 (transformation!465 (rule!972 (ite c!30969 call!6307 call!6311))))) t!25242) tb!5383))

(declare-fun result!7884 () Bool)

(assert (= result!7884 result!7842))

(assert (=> d!37220 t!25242))

(declare-fun t!25244 () Bool)

(declare-fun tb!5385 () Bool)

(assert (=> (and b!154650 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 (t!25078 tokens!465)))))) (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465))))) t!25244) tb!5385))

(declare-fun result!7886 () Bool)

(assert (= result!7886 result!7754))

(assert (=> b!153580 t!25244))

(assert (=> d!36952 t!25238))

(assert (=> d!36868 t!25244))

(assert (=> b!153582 t!25234))

(declare-fun b_and!9163 () Bool)

(declare-fun tp!79769 () Bool)

(assert (=> b!154650 (= tp!79769 (and (=> t!25244 result!7886) (=> t!25234 result!7876) (=> t!25242 result!7884) (=> t!25240 result!7882) (=> t!25236 result!7878) (=> t!25238 result!7880) b_and!9163))))

(declare-fun tp!79770 () Bool)

(declare-fun b!154649 () Bool)

(declare-fun e!92620 () Bool)

(declare-fun e!92617 () Bool)

(assert (=> b!154649 (= e!92620 (and tp!79770 (inv!3461 (tag!643 (rule!972 (h!8065 (t!25078 (t!25078 tokens!465)))))) (inv!3464 (transformation!465 (rule!972 (h!8065 (t!25078 (t!25078 tokens!465)))))) e!92617))))

(declare-fun tp!79767 () Bool)

(declare-fun e!92619 () Bool)

(declare-fun b!154648 () Bool)

(assert (=> b!154648 (= e!92619 (and (inv!21 (value!17568 (h!8065 (t!25078 (t!25078 tokens!465))))) e!92620 tp!79767))))

(declare-fun tp!79771 () Bool)

(declare-fun b!154647 () Bool)

(declare-fun e!92616 () Bool)

(assert (=> b!154647 (= e!92616 (and (inv!3465 (h!8065 (t!25078 (t!25078 tokens!465)))) e!92619 tp!79771))))

(assert (=> b!154650 (= e!92617 (and tp!79768 tp!79769))))

(assert (=> b!153809 (= tp!79650 e!92616)))

(assert (= b!154649 b!154650))

(assert (= b!154648 b!154649))

(assert (= b!154647 b!154648))

(assert (= (and b!153809 ((_ is Cons!2668) (t!25078 (t!25078 tokens!465)))) b!154647))

(declare-fun m!140575 () Bool)

(assert (=> b!154649 m!140575))

(declare-fun m!140577 () Bool)

(assert (=> b!154649 m!140577))

(declare-fun m!140579 () Bool)

(assert (=> b!154648 m!140579))

(declare-fun m!140581 () Bool)

(assert (=> b!154647 m!140581))

(declare-fun b_lambda!2959 () Bool)

(assert (= b_lambda!2941 (or d!36870 b_lambda!2959)))

(declare-fun bs!14315 () Bool)

(declare-fun d!37394 () Bool)

(assert (= bs!14315 (and d!37394 d!36870)))

(assert (=> bs!14315 (= (dynLambda!939 lambda!4023 (h!8065 (t!25078 tokens!465))) (rulesProduceIndividualToken!100 thiss!17480 rules!1920 (h!8065 (t!25078 tokens!465))))))

(assert (=> bs!14315 m!138595))

(assert (=> b!154234 d!37394))

(declare-fun b_lambda!2961 () Bool)

(assert (= b_lambda!2957 (or b!153666 b_lambda!2961)))

(declare-fun bs!14316 () Bool)

(declare-fun d!37396 () Bool)

(assert (= bs!14316 (and d!37396 b!153666)))

(assert (=> bs!14316 (= (dynLambda!939 lambda!4038 (apply!352 lt!45003 0)) (rulesProduceIndividualToken!100 thiss!17480 rules!1920 (apply!352 lt!45003 0)))))

(assert (=> bs!14316 m!138745))

(declare-fun m!140583 () Bool)

(assert (=> bs!14316 m!140583))

(assert (=> d!37374 d!37396))

(declare-fun b_lambda!2963 () Bool)

(assert (= b_lambda!2947 (or b!153681 b_lambda!2963)))

(declare-fun bs!14317 () Bool)

(declare-fun d!37398 () Bool)

(assert (= bs!14317 (and d!37398 b!153681)))

(assert (=> bs!14317 (= (dynLambda!939 lambda!4042 (h!8065 tokens!465)) (rulesProduceIndividualToken!100 thiss!17480 rules!1920 (h!8065 tokens!465)))))

(declare-fun m!140585 () Bool)

(assert (=> bs!14317 m!140585))

(assert (=> d!37272 d!37398))

(declare-fun b_lambda!2965 () Bool)

(assert (= b_lambda!2945 (or b!153336 b_lambda!2965)))

(declare-fun bs!14318 () Bool)

(declare-fun d!37400 () Bool)

(assert (= bs!14318 (and d!37400 b!153336)))

(assert (=> bs!14318 (= (dynLambda!939 lambda!4006 (h!8065 (t!25078 tokens!465))) (not (isSeparator!465 (rule!972 (h!8065 (t!25078 tokens!465))))))))

(assert (=> b!154268 d!37400))

(declare-fun b_lambda!2967 () Bool)

(assert (= b_lambda!2923 (or (and b!153769 b_free!5671 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) (and b!153812 b_free!5683) (and b!154627 b_free!5687 (= (toChars!963 (transformation!465 (h!8064 (t!25077 (t!25077 rules!1920))))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) (and b!153316 b_free!5667 (= (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) (and b!153328 b_free!5663 (= (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) (and b!154650 b_free!5691 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 (t!25078 tokens!465)))))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) (and b!153322 b_free!5659 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) b_lambda!2967)))

(declare-fun b_lambda!2969 () Bool)

(assert (= b_lambda!2929 (or d!36820 b_lambda!2969)))

(declare-fun bs!14319 () Bool)

(declare-fun d!37402 () Bool)

(assert (= bs!14319 (and d!37402 d!36820)))

(assert (=> bs!14319 (= (dynLambda!939 lambda!4014 (h!8065 (list!942 lt!45003))) (rulesProduceIndividualToken!100 thiss!17480 rules!1920 (h!8065 (list!942 lt!45003))))))

(assert (=> bs!14319 m!139939))

(assert (=> b!153992 d!37402))

(declare-fun b_lambda!2971 () Bool)

(assert (= b_lambda!2935 (or (and b!153769 b_free!5671 (= (toChars!963 (transformation!465 (h!8064 (t!25077 rules!1920)))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) (and b!153812 b_free!5683) (and b!154627 b_free!5687 (= (toChars!963 (transformation!465 (h!8064 (t!25077 (t!25077 rules!1920))))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) (and b!153316 b_free!5667 (= (toChars!963 (transformation!465 (rule!972 separatorToken!170))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) (and b!153328 b_free!5663 (= (toChars!963 (transformation!465 (rule!972 (h!8065 tokens!465)))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) (and b!154650 b_free!5691 (= (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 (t!25078 tokens!465)))))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) (and b!153322 b_free!5659 (= (toChars!963 (transformation!465 (h!8064 rules!1920))) (toChars!963 (transformation!465 (rule!972 (h!8065 (t!25078 tokens!465))))))) b_lambda!2971)))

(declare-fun b_lambda!2973 () Bool)

(assert (= b_lambda!2925 (or b!153528 b_lambda!2973)))

(declare-fun bs!14320 () Bool)

(declare-fun d!37404 () Bool)

(assert (= bs!14320 (and d!37404 b!153528)))

(assert (=> bs!14320 (= (dynLambda!939 lambda!4020 (h!8065 (t!25078 tokens!465))) (rulesProduceIndividualToken!100 thiss!17480 rules!1920 (h!8065 (t!25078 tokens!465))))))

(assert (=> bs!14320 m!138595))

(assert (=> d!36956 d!37404))

(check-sat (not b!154224) b_and!9161 (not b!154249) (not d!37108) (not bm!6354) (not b!154625) (not b!153947) (not b!153915) (not tb!5343) (not d!36944) (not d!36934) (not d!37282) b_and!9061 (not b!154235) (not b!154231) (not b!154532) (not b!154542) (not b!154157) (not tb!5293) (not b!154560) (not b!153877) (not b!153957) (not b!154180) (not b!154634) (not b!154621) (not b!153888) (not d!36936) (not b!154515) (not d!36948) (not d!37272) (not b!154595) (not b!153881) (not b!154238) (not b!153542) (not b!154609) (not d!37220) (not b_lambda!2919) (not b!154305) (not b_next!5691) (not b!154633) tp_is_empty!1619 (not d!36990) (not d!37104) (not d!37250) (not b_next!5681) (not b!154572) (not d!36958) (not b!154269) (not d!37388) (not d!37232) (not d!37084) (not d!36942) (not b!154316) (not b!154581) (not d!37164) (not b!154587) (not b_lambda!2943) (not b!154132) (not b!154308) (not d!37256) (not d!37230) (not b!154548) (not b!154153) (not b!154529) (not d!37210) (not b!154620) (not b!154315) (not b!154571) (not b!154221) (not b!153818) (not b!153876) (not b!154310) (not b!153893) (not b_next!5689) (not b!154584) (not b!154642) (not b!154247) (not b!154275) (not d!37004) (not b!154007) (not b!154084) (not b!154243) (not b!154151) (not b!154330) (not d!37014) (not b!153946) (not b!154230) b_and!9009 (not b!154364) (not b!154181) (not b!153853) (not bs!14320) (not b!153959) (not bm!6344) (not b!154083) (not b!154422) (not b!154135) (not d!37148) (not b_lambda!2915) (not b!154211) (not d!37176) (not b!153910) (not b!154261) (not b!154598) (not b!154628) (not b!154619) (not b_next!5685) (not b!154563) (not b!154358) (not b!154576) (not d!37184) (not bm!6358) (not b!153882) (not b!154602) (not b!154191) (not b!154302) (not b!154513) (not b_lambda!2965) (not d!37244) (not bm!6318) (not b!154579) (not b!154262) (not b!154222) b_and!9153 (not b!154130) b_and!9159 (not b!153846) (not d!37020) (not b!154227) (not d!37006) (not d!37158) (not b!154608) (not b!153920) (not b!154564) (not d!37204) (not bm!6314) (not b!154600) (not b!153899) (not b!154030) (not d!37162) (not b!153878) (not d!37126) (not d!37130) (not b!154272) b_and!9001 (not d!37260) (not b!154008) (not b_lambda!2967) (not b!154565) (not b!153833) (not d!37376) (not b!154605) (not b!154193) (not bs!14319) (not b!154512) (not b!154237) (not d!37208) (not b!153884) (not b!154555) (not b!154632) (not d!37270) (not b!154647) (not b!154250) (not d!37120) (not d!37174) (not b_lambda!2921) (not b!154629) (not b!154643) (not bm!6353) (not d!37040) (not b!154004) (not bm!6331) (not d!37378) (not b!154610) (not b!154303) (not d!36946) (not b!154575) (not b!154554) (not b!154646) (not b!154601) (not b!154593) (not b!154348) (not b!153993) (not b!154186) (not d!37106) (not b!154236) (not d!37132) (not d!37102) (not b!154567) (not d!37128) (not b!154538) (not b!154212) (not d!37294) (not d!36976) (not d!37310) (not b!154636) (not b!154597) (not d!36950) (not b!154630) (not b!153543) (not bm!6315) (not d!37334) (not b_next!5687) (not bm!6343) (not d!37090) (not b!154170) (not b!154254) (not b!153911) (not d!37202) (not b!154155) (not bs!14316) (not b_next!5667) (not b!154311) (not b!154503) (not b!154085) (not b!153917) (not b!154573) (not b_next!5657) (not b!153847) (not b!153960) (not bm!6345) (not b!154107) (not b!154552) (not b!154435) (not tb!5353) (not b!153883) (not d!37030) (not b!154496) (not d!36926) (not b!154185) (not d!37182) (not b_lambda!2973) (not b!154516) (not b!154544) (not b!154257) b_and!9155 (not b!153887) (not b_lambda!2917) (not b!154596) (not d!36952) (not b!154637) (not b!154577) (not b!154245) (not b!154441) (not b!154501) (not b!154428) (not b!154517) (not b!154359) (not b!154263) (not b!154108) (not b!154165) (not b!154639) (not b!154550) (not b!154253) (not b!154101) (not d!37370) (not d!37012) (not b_next!5671) (not d!37192) (not d!36972) (not b!154649) (not b!154606) (not b!154638) (not d!36994) (not b!153851) (not b!154497) (not b!154356) b_and!9147 (not b!154265) (not d!37374) (not d!37170) (not b!154242) (not b!154533) (not b!154134) (not b!154583) (not b!153875) (not d!37224) (not b!154622) (not b!154559) (not b!154648) (not d!37274) (not b_lambda!2953) (not bm!6340) (not b!154166) (not b_next!5683) (not b_next!5663) (not b!154347) (not b!154604) (not b!154506) (not b!154226) (not d!36924) (not b!154299) (not b!154549) (not b!153891) (not d!37188) (not b_lambda!2959) (not b!153848) (not d!37242) (not b!154514) (not d!37218) (not b_lambda!2971) (not b!154158) (not b!153958) (not d!37146) (not b!154002) (not b!153854) (not b!154588) (not b!154543) (not b!154498) (not d!37384) (not d!37028) (not b_lambda!2961) (not b!154353) (not b!153817) (not b!154561) (not b!153908) (not d!37380) (not b!154220) (not d!37292) (not b!153819) (not b!154309) (not b!154229) (not d!36940) (not b!154274) (not d!37254) (not b!154585) (not b!153829) (not bm!6322) (not b!154225) (not d!37258) (not d!36956) (not b!154591) (not bs!14317) (not b_lambda!2963) (not b_next!5661) (not b!153913) b_and!9005 (not b!154028) (not b!154354) (not b!154317) (not b!154525) (not d!37386) (not b!153980) (not b!153909) (not d!37116) (not bs!14315) (not b_lambda!2913) (not b!153919) (not b!153874) (not b!154297) (not d!37214) (not d!37098) (not b!154295) (not b!154102) (not b!154589) (not b!153961) (not b!154537) (not b!154580) (not b!153845) b_and!9157 (not b!154098) (not b!154312) (not b!154105) b_and!9149 (not b_next!5669) (not tb!5313) (not b!153880) (not b!154626) (not d!37268) (not bm!6316) (not b_lambda!2969) (not b!154569) (not b!154541) (not b!154314) (not b!154136) b_and!9073 (not b!154129) (not b!154500) (not bm!6328) (not b_next!5665) (not d!36986) (not b!154568) (not d!36938) (not d!37150) (not d!37200) (not d!37178) (not b_lambda!2931) (not d!37338) (not b!154499) (not b!154306) (not d!37206) (not b!154183) (not b!154524) (not bm!6346) (not b_next!5659) (not d!37198) (not d!37024) (not d!37222) (not b!154592) (not bm!6357) b_and!9163 (not bm!6329) (not b!154192) (not b!154259) b_and!9151 (not b!154014) (not b!153831) (not b!153894) (not b!154209) (not b!154530) (not b!154553) (not b!154526) (not b!154267))
(check-sat (not b_next!5689) b_and!9009 (not b_next!5685) b_and!9001 (not b_next!5657) b_and!9155 b_and!9161 b_and!9061 (not b_next!5691) (not b_next!5681) b_and!9153 b_and!9159 (not b_next!5687) (not b_next!5667) b_and!9147 (not b_next!5671) (not b_next!5683) (not b_next!5663) (not b_next!5661) b_and!9005 b_and!9157 b_and!9149 (not b_next!5669) (not b_next!5665) b_and!9073 (not b_next!5659) b_and!9151 b_and!9163)
