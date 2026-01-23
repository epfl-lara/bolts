; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114378 () Bool)

(assert start!114378)

(declare-fun b!1297369 () Bool)

(declare-fun b_free!30731 () Bool)

(declare-fun b_next!31435 () Bool)

(assert (=> b!1297369 (= b_free!30731 (not b_next!31435))))

(declare-fun tp!378543 () Bool)

(declare-fun b_and!86439 () Bool)

(assert (=> b!1297369 (= tp!378543 b_and!86439)))

(declare-fun b_free!30733 () Bool)

(declare-fun b_next!31437 () Bool)

(assert (=> b!1297369 (= b_free!30733 (not b_next!31437))))

(declare-fun tp!378541 () Bool)

(declare-fun b_and!86441 () Bool)

(assert (=> b!1297369 (= tp!378541 b_and!86441)))

(declare-fun b!1297371 () Bool)

(declare-fun b_free!30735 () Bool)

(declare-fun b_next!31439 () Bool)

(assert (=> b!1297371 (= b_free!30735 (not b_next!31439))))

(declare-fun tp!378542 () Bool)

(declare-fun b_and!86443 () Bool)

(assert (=> b!1297371 (= tp!378542 b_and!86443)))

(declare-fun b_free!30737 () Bool)

(declare-fun b_next!31441 () Bool)

(assert (=> b!1297371 (= b_free!30737 (not b_next!31441))))

(declare-fun tp!378544 () Bool)

(declare-fun b_and!86445 () Bool)

(assert (=> b!1297371 (= tp!378544 b_and!86445)))

(declare-fun b!1297361 () Bool)

(declare-fun b_free!30739 () Bool)

(declare-fun b_next!31443 () Bool)

(assert (=> b!1297361 (= b_free!30739 (not b_next!31443))))

(declare-fun tp!378539 () Bool)

(declare-fun b_and!86447 () Bool)

(assert (=> b!1297361 (= tp!378539 b_and!86447)))

(declare-fun b_free!30741 () Bool)

(declare-fun b_next!31445 () Bool)

(assert (=> b!1297361 (= b_free!30741 (not b_next!31445))))

(declare-fun tp!378546 () Bool)

(declare-fun b_and!86449 () Bool)

(assert (=> b!1297361 (= tp!378546 b_and!86449)))

(declare-fun b!1297349 () Bool)

(assert (=> b!1297349 true))

(assert (=> b!1297349 true))

(declare-fun res!580953 () Bool)

(declare-fun e!831745 () Bool)

(assert (=> start!114378 (=> (not res!580953) (not e!831745))))

(declare-datatypes ((LexerInterface!1930 0))(
  ( (LexerInterfaceExt!1927 (__x!8479 Int)) (Lexer!1928) )
))
(declare-fun thiss!19762 () LexerInterface!1930)

(get-info :version)

(assert (=> start!114378 (= res!580953 ((_ is Lexer!1928) thiss!19762))))

(assert (=> start!114378 e!831745))

(assert (=> start!114378 true))

(declare-fun e!831740 () Bool)

(assert (=> start!114378 e!831740))

(declare-datatypes ((List!13038 0))(
  ( (Nil!12972) (Cons!12972 (h!18373 (_ BitVec 16)) (t!117461 List!13038)) )
))
(declare-datatypes ((TokenValue!2325 0))(
  ( (FloatLiteralValue!4650 (text!16720 List!13038)) (TokenValueExt!2324 (__x!8480 Int)) (Broken!11625 (value!73304 List!13038)) (Object!2390) (End!2325) (Def!2325) (Underscore!2325) (Match!2325) (Else!2325) (Error!2325) (Case!2325) (If!2325) (Extends!2325) (Abstract!2325) (Class!2325) (Val!2325) (DelimiterValue!4650 (del!2385 List!13038)) (KeywordValue!2331 (value!73305 List!13038)) (CommentValue!4650 (value!73306 List!13038)) (WhitespaceValue!4650 (value!73307 List!13038)) (IndentationValue!2325 (value!73308 List!13038)) (String!15860) (Int32!2325) (Broken!11626 (value!73309 List!13038)) (Boolean!2326) (Unit!19117) (OperatorValue!2328 (op!2385 List!13038)) (IdentifierValue!4650 (value!73310 List!13038)) (IdentifierValue!4651 (value!73311 List!13038)) (WhitespaceValue!4651 (value!73312 List!13038)) (True!4650) (False!4650) (Broken!11627 (value!73313 List!13038)) (Broken!11628 (value!73314 List!13038)) (True!4651) (RightBrace!2325) (RightBracket!2325) (Colon!2325) (Null!2325) (Comma!2325) (LeftBracket!2325) (False!4651) (LeftBrace!2325) (ImaginaryLiteralValue!2325 (text!16721 List!13038)) (StringLiteralValue!6975 (value!73315 List!13038)) (EOFValue!2325 (value!73316 List!13038)) (IdentValue!2325 (value!73317 List!13038)) (DelimiterValue!4651 (value!73318 List!13038)) (DedentValue!2325 (value!73319 List!13038)) (NewLineValue!2325 (value!73320 List!13038)) (IntegerValue!6975 (value!73321 (_ BitVec 32)) (text!16722 List!13038)) (IntegerValue!6976 (value!73322 Int) (text!16723 List!13038)) (Times!2325) (Or!2325) (Equal!2325) (Minus!2325) (Broken!11629 (value!73323 List!13038)) (And!2325) (Div!2325) (LessEqual!2325) (Mod!2325) (Concat!5874) (Not!2325) (Plus!2325) (SpaceValue!2325 (value!73324 List!13038)) (IntegerValue!6977 (value!73325 Int) (text!16724 List!13038)) (StringLiteralValue!6976 (text!16725 List!13038)) (FloatLiteralValue!4651 (text!16726 List!13038)) (BytesLiteralValue!2325 (value!73326 List!13038)) (CommentValue!4651 (value!73327 List!13038)) (StringLiteralValue!6977 (value!73328 List!13038)) (ErrorTokenValue!2325 (msg!2386 List!13038)) )
))
(declare-datatypes ((C!7388 0))(
  ( (C!7389 (val!4254 Int)) )
))
(declare-datatypes ((List!13039 0))(
  ( (Nil!12973) (Cons!12973 (h!18374 C!7388) (t!117462 List!13039)) )
))
(declare-datatypes ((IArray!8527 0))(
  ( (IArray!8528 (innerList!4321 List!13039)) )
))
(declare-datatypes ((String!15861 0))(
  ( (String!15862 (value!73329 String)) )
))
(declare-datatypes ((Conc!4261 0))(
  ( (Node!4261 (left!11156 Conc!4261) (right!11486 Conc!4261) (csize!8752 Int) (cheight!4472 Int)) (Leaf!6575 (xs!6976 IArray!8527) (csize!8753 Int)) (Empty!4261) )
))
(declare-datatypes ((BalanceConc!8462 0))(
  ( (BalanceConc!8463 (c!213603 Conc!4261)) )
))
(declare-datatypes ((Regex!3549 0))(
  ( (ElementMatch!3549 (c!213604 C!7388)) (Concat!5875 (regOne!7610 Regex!3549) (regTwo!7610 Regex!3549)) (EmptyExpr!3549) (Star!3549 (reg!3878 Regex!3549)) (EmptyLang!3549) (Union!3549 (regOne!7611 Regex!3549) (regTwo!7611 Regex!3549)) )
))
(declare-datatypes ((TokenValueInjection!4310 0))(
  ( (TokenValueInjection!4311 (toValue!3442 Int) (toChars!3301 Int)) )
))
(declare-datatypes ((Rule!4270 0))(
  ( (Rule!4271 (regex!2235 Regex!3549) (tag!2497 String!15861) (isSeparator!2235 Bool) (transformation!2235 TokenValueInjection!4310)) )
))
(declare-datatypes ((Token!4132 0))(
  ( (Token!4133 (value!73330 TokenValue!2325) (rule!3974 Rule!4270) (size!10602 Int) (originalCharacters!3097 List!13039)) )
))
(declare-fun t1!34 () Token!4132)

(declare-fun e!831736 () Bool)

(declare-fun inv!17399 (Token!4132) Bool)

(assert (=> start!114378 (and (inv!17399 t1!34) e!831736)))

(declare-fun t2!34 () Token!4132)

(declare-fun e!831739 () Bool)

(assert (=> start!114378 (and (inv!17399 t2!34) e!831739)))

(declare-fun b!1297348 () Bool)

(declare-fun e!831733 () Bool)

(declare-fun tp!378540 () Bool)

(declare-fun inv!21 (TokenValue!2325) Bool)

(assert (=> b!1297348 (= e!831736 (and (inv!21 (value!73330 t1!34)) e!831733 tp!378540))))

(declare-fun e!831748 () Bool)

(declare-fun e!831738 () Bool)

(assert (=> b!1297349 (= e!831748 (not e!831738))))

(declare-fun res!580951 () Bool)

(assert (=> b!1297349 (=> res!580951 e!831738)))

(declare-fun lambda!50995 () Int)

(declare-fun Exists!707 (Int) Bool)

(assert (=> b!1297349 (= res!580951 (not (Exists!707 lambda!50995)))))

(assert (=> b!1297349 (Exists!707 lambda!50995)))

(declare-datatypes ((Unit!19118 0))(
  ( (Unit!19119) )
))
(declare-fun lt!426734 () Unit!19118)

(declare-fun lt!426733 () Regex!3549)

(declare-fun lt!426735 () List!13039)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!25 (Regex!3549 List!13039) Unit!19118)

(assert (=> b!1297349 (= lt!426734 (lemmaPrefixMatchThenExistsStringThatMatches!25 lt!426733 lt!426735))))

(declare-fun b!1297350 () Bool)

(declare-fun e!831747 () Bool)

(declare-fun tp!378537 () Bool)

(assert (=> b!1297350 (= e!831740 (and e!831747 tp!378537))))

(declare-fun b!1297351 () Bool)

(declare-fun res!580949 () Bool)

(assert (=> b!1297351 (=> (not res!580949) (not e!831745))))

(declare-datatypes ((List!13040 0))(
  ( (Nil!12974) (Cons!12974 (h!18375 Rule!4270) (t!117463 List!13040)) )
))
(declare-fun rules!2550 () List!13040)

(declare-fun rulesInvariant!1800 (LexerInterface!1930 List!13040) Bool)

(assert (=> b!1297351 (= res!580949 (rulesInvariant!1800 thiss!19762 rules!2550))))

(declare-fun b!1297352 () Bool)

(declare-fun e!831731 () Bool)

(assert (=> b!1297352 (= e!831731 e!831748)))

(declare-fun res!580948 () Bool)

(assert (=> b!1297352 (=> (not res!580948) (not e!831748))))

(declare-fun prefixMatch!62 (Regex!3549 List!13039) Bool)

(assert (=> b!1297352 (= res!580948 (prefixMatch!62 lt!426733 lt!426735))))

(declare-fun rulesRegex!120 (LexerInterface!1930 List!13040) Regex!3549)

(assert (=> b!1297352 (= lt!426733 (rulesRegex!120 thiss!19762 rules!2550))))

(declare-fun lt!426731 () List!13039)

(declare-fun lt!426730 () C!7388)

(declare-fun ++!3296 (List!13039 List!13039) List!13039)

(assert (=> b!1297352 (= lt!426735 (++!3296 lt!426731 (Cons!12973 lt!426730 Nil!12973)))))

(declare-fun lt!426732 () BalanceConc!8462)

(declare-fun apply!2871 (BalanceConc!8462 Int) C!7388)

(assert (=> b!1297352 (= lt!426730 (apply!2871 lt!426732 0))))

(declare-fun lt!426736 () BalanceConc!8462)

(declare-fun list!4857 (BalanceConc!8462) List!13039)

(assert (=> b!1297352 (= lt!426731 (list!4857 lt!426736))))

(declare-fun charsOf!1207 (Token!4132) BalanceConc!8462)

(assert (=> b!1297352 (= lt!426736 (charsOf!1207 t1!34))))

(declare-fun tp!378538 () Bool)

(declare-fun e!831750 () Bool)

(declare-fun b!1297353 () Bool)

(declare-fun inv!17396 (String!15861) Bool)

(declare-fun inv!17400 (TokenValueInjection!4310) Bool)

(assert (=> b!1297353 (= e!831733 (and tp!378538 (inv!17396 (tag!2497 (rule!3974 t1!34))) (inv!17400 (transformation!2235 (rule!3974 t1!34))) e!831750))))

(declare-fun b!1297354 () Bool)

(declare-fun res!580946 () Bool)

(assert (=> b!1297354 (=> (not res!580946) (not e!831731))))

(declare-fun sepAndNonSepRulesDisjointChars!608 (List!13040 List!13040) Bool)

(assert (=> b!1297354 (= res!580946 (sepAndNonSepRulesDisjointChars!608 rules!2550 rules!2550))))

(declare-fun b!1297355 () Bool)

(declare-fun res!580958 () Bool)

(assert (=> b!1297355 (=> (not res!580958) (not e!831745))))

(declare-fun rulesProduceIndividualToken!899 (LexerInterface!1930 List!13040 Token!4132) Bool)

(assert (=> b!1297355 (= res!580958 (rulesProduceIndividualToken!899 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1297356 () Bool)

(declare-fun e!831734 () Bool)

(assert (=> b!1297356 (= e!831738 e!831734)))

(declare-fun res!580945 () Bool)

(assert (=> b!1297356 (=> res!580945 e!831734)))

(declare-fun lt!426737 () List!13039)

(declare-fun getSuffix!405 (List!13039 List!13039) List!13039)

(assert (=> b!1297356 (= res!580945 (not (= lt!426737 (++!3296 lt!426735 (getSuffix!405 lt!426737 lt!426735)))))))

(declare-fun pickWitness!12 (Int) List!13039)

(assert (=> b!1297356 (= lt!426737 (pickWitness!12 lambda!50995))))

(declare-fun b!1297357 () Bool)

(assert (=> b!1297357 (= e!831745 e!831731)))

(declare-fun res!580944 () Bool)

(assert (=> b!1297357 (=> (not res!580944) (not e!831731))))

(declare-fun lt!426729 () Int)

(assert (=> b!1297357 (= res!580944 (> lt!426729 0))))

(declare-fun size!10603 (BalanceConc!8462) Int)

(assert (=> b!1297357 (= lt!426729 (size!10603 lt!426732))))

(assert (=> b!1297357 (= lt!426732 (charsOf!1207 t2!34))))

(declare-fun b!1297358 () Bool)

(declare-fun res!580952 () Bool)

(declare-fun e!831749 () Bool)

(assert (=> b!1297358 (=> res!580952 e!831749)))

(declare-fun contains!2171 (List!13039 C!7388) Bool)

(assert (=> b!1297358 (= res!580952 (not (contains!2171 lt!426735 lt!426730)))))

(declare-fun b!1297359 () Bool)

(declare-fun res!580954 () Bool)

(assert (=> b!1297359 (=> (not res!580954) (not e!831745))))

(assert (=> b!1297359 (= res!580954 (not (= (isSeparator!2235 (rule!3974 t1!34)) (isSeparator!2235 (rule!3974 t2!34)))))))

(declare-fun b!1297360 () Bool)

(declare-fun res!580955 () Bool)

(assert (=> b!1297360 (=> (not res!580955) (not e!831731))))

(declare-fun separableTokensPredicate!213 (LexerInterface!1930 Token!4132 Token!4132 List!13040) Bool)

(assert (=> b!1297360 (= res!580955 (not (separableTokensPredicate!213 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun e!831746 () Bool)

(assert (=> b!1297361 (= e!831746 (and tp!378539 tp!378546))))

(declare-fun b!1297362 () Bool)

(declare-fun res!580957 () Bool)

(assert (=> b!1297362 (=> res!580957 e!831749)))

(declare-fun lt!426738 () C!7388)

(assert (=> b!1297362 (= res!580957 (not (contains!2171 lt!426737 lt!426738)))))

(declare-fun tp!378545 () Bool)

(declare-fun b!1297363 () Bool)

(declare-fun e!831735 () Bool)

(assert (=> b!1297363 (= e!831739 (and (inv!21 (value!73330 t2!34)) e!831735 tp!378545))))

(declare-fun b!1297364 () Bool)

(assert (=> b!1297364 (= e!831749 (< 0 lt!426729))))

(declare-fun b!1297365 () Bool)

(declare-fun res!580950 () Bool)

(assert (=> b!1297365 (=> (not res!580950) (not e!831745))))

(assert (=> b!1297365 (= res!580950 (rulesProduceIndividualToken!899 thiss!19762 rules!2550 t1!34))))

(declare-fun e!831743 () Bool)

(declare-fun tp!378548 () Bool)

(declare-fun b!1297366 () Bool)

(assert (=> b!1297366 (= e!831735 (and tp!378548 (inv!17396 (tag!2497 (rule!3974 t2!34))) (inv!17400 (transformation!2235 (rule!3974 t2!34))) e!831743))))

(declare-fun b!1297367 () Bool)

(declare-fun res!580947 () Bool)

(assert (=> b!1297367 (=> (not res!580947) (not e!831745))))

(declare-fun isEmpty!7709 (List!13040) Bool)

(assert (=> b!1297367 (= res!580947 (not (isEmpty!7709 rules!2550)))))

(declare-fun b!1297368 () Bool)

(declare-fun tp!378547 () Bool)

(assert (=> b!1297368 (= e!831747 (and tp!378547 (inv!17396 (tag!2497 (h!18375 rules!2550))) (inv!17400 (transformation!2235 (h!18375 rules!2550))) e!831746))))

(assert (=> b!1297369 (= e!831743 (and tp!378543 tp!378541))))

(declare-fun b!1297370 () Bool)

(assert (=> b!1297370 (= e!831734 e!831749)))

(declare-fun res!580956 () Bool)

(assert (=> b!1297370 (=> res!580956 e!831749)))

(assert (=> b!1297370 (= res!580956 (not (contains!2171 lt!426735 lt!426738)))))

(assert (=> b!1297370 (= lt!426738 (apply!2871 lt!426736 0))))

(assert (=> b!1297371 (= e!831750 (and tp!378542 tp!378544))))

(assert (= (and start!114378 res!580953) b!1297367))

(assert (= (and b!1297367 res!580947) b!1297351))

(assert (= (and b!1297351 res!580949) b!1297365))

(assert (= (and b!1297365 res!580950) b!1297355))

(assert (= (and b!1297355 res!580958) b!1297359))

(assert (= (and b!1297359 res!580954) b!1297357))

(assert (= (and b!1297357 res!580944) b!1297354))

(assert (= (and b!1297354 res!580946) b!1297360))

(assert (= (and b!1297360 res!580955) b!1297352))

(assert (= (and b!1297352 res!580948) b!1297349))

(assert (= (and b!1297349 (not res!580951)) b!1297356))

(assert (= (and b!1297356 (not res!580945)) b!1297370))

(assert (= (and b!1297370 (not res!580956)) b!1297362))

(assert (= (and b!1297362 (not res!580957)) b!1297358))

(assert (= (and b!1297358 (not res!580952)) b!1297364))

(assert (= b!1297368 b!1297361))

(assert (= b!1297350 b!1297368))

(assert (= (and start!114378 ((_ is Cons!12974) rules!2550)) b!1297350))

(assert (= b!1297353 b!1297371))

(assert (= b!1297348 b!1297353))

(assert (= start!114378 b!1297348))

(assert (= b!1297366 b!1297369))

(assert (= b!1297363 b!1297366))

(assert (= start!114378 b!1297363))

(declare-fun m!1448769 () Bool)

(assert (=> b!1297370 m!1448769))

(declare-fun m!1448771 () Bool)

(assert (=> b!1297370 m!1448771))

(declare-fun m!1448773 () Bool)

(assert (=> b!1297354 m!1448773))

(declare-fun m!1448775 () Bool)

(assert (=> b!1297368 m!1448775))

(declare-fun m!1448777 () Bool)

(assert (=> b!1297368 m!1448777))

(declare-fun m!1448779 () Bool)

(assert (=> b!1297355 m!1448779))

(declare-fun m!1448781 () Bool)

(assert (=> start!114378 m!1448781))

(declare-fun m!1448783 () Bool)

(assert (=> start!114378 m!1448783))

(declare-fun m!1448785 () Bool)

(assert (=> b!1297353 m!1448785))

(declare-fun m!1448787 () Bool)

(assert (=> b!1297353 m!1448787))

(declare-fun m!1448789 () Bool)

(assert (=> b!1297367 m!1448789))

(declare-fun m!1448791 () Bool)

(assert (=> b!1297366 m!1448791))

(declare-fun m!1448793 () Bool)

(assert (=> b!1297366 m!1448793))

(declare-fun m!1448795 () Bool)

(assert (=> b!1297352 m!1448795))

(declare-fun m!1448797 () Bool)

(assert (=> b!1297352 m!1448797))

(declare-fun m!1448799 () Bool)

(assert (=> b!1297352 m!1448799))

(declare-fun m!1448801 () Bool)

(assert (=> b!1297352 m!1448801))

(declare-fun m!1448803 () Bool)

(assert (=> b!1297352 m!1448803))

(declare-fun m!1448805 () Bool)

(assert (=> b!1297352 m!1448805))

(declare-fun m!1448807 () Bool)

(assert (=> b!1297357 m!1448807))

(declare-fun m!1448809 () Bool)

(assert (=> b!1297357 m!1448809))

(declare-fun m!1448811 () Bool)

(assert (=> b!1297358 m!1448811))

(declare-fun m!1448813 () Bool)

(assert (=> b!1297363 m!1448813))

(declare-fun m!1448815 () Bool)

(assert (=> b!1297362 m!1448815))

(declare-fun m!1448817 () Bool)

(assert (=> b!1297351 m!1448817))

(declare-fun m!1448819 () Bool)

(assert (=> b!1297348 m!1448819))

(declare-fun m!1448821 () Bool)

(assert (=> b!1297360 m!1448821))

(declare-fun m!1448823 () Bool)

(assert (=> b!1297349 m!1448823))

(assert (=> b!1297349 m!1448823))

(declare-fun m!1448825 () Bool)

(assert (=> b!1297349 m!1448825))

(declare-fun m!1448827 () Bool)

(assert (=> b!1297356 m!1448827))

(assert (=> b!1297356 m!1448827))

(declare-fun m!1448829 () Bool)

(assert (=> b!1297356 m!1448829))

(declare-fun m!1448831 () Bool)

(assert (=> b!1297356 m!1448831))

(declare-fun m!1448833 () Bool)

(assert (=> b!1297365 m!1448833))

(check-sat (not b!1297366) (not b!1297349) (not b!1297368) b_and!86439 (not b_next!31443) (not b!1297350) (not b!1297357) (not b!1297353) b_and!86447 (not b_next!31435) (not b_next!31437) b_and!86441 (not b!1297355) (not start!114378) b_and!86445 b_and!86443 (not b!1297358) (not b_next!31439) (not b!1297352) (not b!1297356) b_and!86449 (not b!1297348) (not b!1297354) (not b_next!31445) (not b_next!31441) (not b!1297370) (not b!1297363) (not b!1297360) (not b!1297351) (not b!1297365) (not b!1297367) (not b!1297362))
(check-sat b_and!86439 b_and!86445 (not b_next!31443) b_and!86449 (not b_next!31445) (not b_next!31441) b_and!86447 (not b_next!31435) (not b_next!31437) b_and!86441 b_and!86443 (not b_next!31439))
