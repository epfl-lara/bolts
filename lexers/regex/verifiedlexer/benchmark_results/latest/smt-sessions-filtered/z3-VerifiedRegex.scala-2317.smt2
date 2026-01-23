; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114738 () Bool)

(assert start!114738)

(declare-fun b!1299603 () Bool)

(declare-fun b_free!30851 () Bool)

(declare-fun b_next!31555 () Bool)

(assert (=> b!1299603 (= b_free!30851 (not b_next!31555))))

(declare-fun tp!379218 () Bool)

(declare-fun b_and!86655 () Bool)

(assert (=> b!1299603 (= tp!379218 b_and!86655)))

(declare-fun b_free!30853 () Bool)

(declare-fun b_next!31557 () Bool)

(assert (=> b!1299603 (= b_free!30853 (not b_next!31557))))

(declare-fun tp!379215 () Bool)

(declare-fun b_and!86657 () Bool)

(assert (=> b!1299603 (= tp!379215 b_and!86657)))

(declare-fun b!1299612 () Bool)

(declare-fun b_free!30855 () Bool)

(declare-fun b_next!31559 () Bool)

(assert (=> b!1299612 (= b_free!30855 (not b_next!31559))))

(declare-fun tp!379208 () Bool)

(declare-fun b_and!86659 () Bool)

(assert (=> b!1299612 (= tp!379208 b_and!86659)))

(declare-fun b_free!30857 () Bool)

(declare-fun b_next!31561 () Bool)

(assert (=> b!1299612 (= b_free!30857 (not b_next!31561))))

(declare-fun tp!379207 () Bool)

(declare-fun b_and!86661 () Bool)

(assert (=> b!1299612 (= tp!379207 b_and!86661)))

(declare-fun b!1299616 () Bool)

(declare-fun b_free!30859 () Bool)

(declare-fun b_next!31563 () Bool)

(assert (=> b!1299616 (= b_free!30859 (not b_next!31563))))

(declare-fun tp!379216 () Bool)

(declare-fun b_and!86663 () Bool)

(assert (=> b!1299616 (= tp!379216 b_and!86663)))

(declare-fun b_free!30861 () Bool)

(declare-fun b_next!31565 () Bool)

(assert (=> b!1299616 (= b_free!30861 (not b_next!31565))))

(declare-fun tp!379217 () Bool)

(declare-fun b_and!86665 () Bool)

(assert (=> b!1299616 (= tp!379217 b_and!86665)))

(declare-fun b!1299614 () Bool)

(assert (=> b!1299614 true))

(assert (=> b!1299614 true))

(declare-fun b!1299593 () Bool)

(declare-fun res!582010 () Bool)

(declare-fun e!833225 () Bool)

(assert (=> b!1299593 (=> (not res!582010) (not e!833225))))

(declare-datatypes ((List!13076 0))(
  ( (Nil!13010) (Cons!13010 (h!18411 (_ BitVec 16)) (t!117585 List!13076)) )
))
(declare-datatypes ((TokenValue!2333 0))(
  ( (FloatLiteralValue!4666 (text!16776 List!13076)) (TokenValueExt!2332 (__x!8495 Int)) (Broken!11665 (value!73532 List!13076)) (Object!2398) (End!2333) (Def!2333) (Underscore!2333) (Match!2333) (Else!2333) (Error!2333) (Case!2333) (If!2333) (Extends!2333) (Abstract!2333) (Class!2333) (Val!2333) (DelimiterValue!4666 (del!2393 List!13076)) (KeywordValue!2339 (value!73533 List!13076)) (CommentValue!4666 (value!73534 List!13076)) (WhitespaceValue!4666 (value!73535 List!13076)) (IndentationValue!2333 (value!73536 List!13076)) (String!15900) (Int32!2333) (Broken!11666 (value!73537 List!13076)) (Boolean!2334) (Unit!19145) (OperatorValue!2336 (op!2393 List!13076)) (IdentifierValue!4666 (value!73538 List!13076)) (IdentifierValue!4667 (value!73539 List!13076)) (WhitespaceValue!4667 (value!73540 List!13076)) (True!4666) (False!4666) (Broken!11667 (value!73541 List!13076)) (Broken!11668 (value!73542 List!13076)) (True!4667) (RightBrace!2333) (RightBracket!2333) (Colon!2333) (Null!2333) (Comma!2333) (LeftBracket!2333) (False!4667) (LeftBrace!2333) (ImaginaryLiteralValue!2333 (text!16777 List!13076)) (StringLiteralValue!6999 (value!73543 List!13076)) (EOFValue!2333 (value!73544 List!13076)) (IdentValue!2333 (value!73545 List!13076)) (DelimiterValue!4667 (value!73546 List!13076)) (DedentValue!2333 (value!73547 List!13076)) (NewLineValue!2333 (value!73548 List!13076)) (IntegerValue!6999 (value!73549 (_ BitVec 32)) (text!16778 List!13076)) (IntegerValue!7000 (value!73550 Int) (text!16779 List!13076)) (Times!2333) (Or!2333) (Equal!2333) (Minus!2333) (Broken!11669 (value!73551 List!13076)) (And!2333) (Div!2333) (LessEqual!2333) (Mod!2333) (Concat!5890) (Not!2333) (Plus!2333) (SpaceValue!2333 (value!73552 List!13076)) (IntegerValue!7001 (value!73553 Int) (text!16780 List!13076)) (StringLiteralValue!7000 (text!16781 List!13076)) (FloatLiteralValue!4667 (text!16782 List!13076)) (BytesLiteralValue!2333 (value!73554 List!13076)) (CommentValue!4667 (value!73555 List!13076)) (StringLiteralValue!7001 (value!73556 List!13076)) (ErrorTokenValue!2333 (msg!2394 List!13076)) )
))
(declare-datatypes ((C!7404 0))(
  ( (C!7405 (val!4262 Int)) )
))
(declare-datatypes ((List!13077 0))(
  ( (Nil!13011) (Cons!13011 (h!18412 C!7404) (t!117586 List!13077)) )
))
(declare-datatypes ((IArray!8551 0))(
  ( (IArray!8552 (innerList!4333 List!13077)) )
))
(declare-datatypes ((Conc!4273 0))(
  ( (Node!4273 (left!11188 Conc!4273) (right!11518 Conc!4273) (csize!8776 Int) (cheight!4484 Int)) (Leaf!6591 (xs!6988 IArray!8551) (csize!8777 Int)) (Empty!4273) )
))
(declare-datatypes ((BalanceConc!8486 0))(
  ( (BalanceConc!8487 (c!213929 Conc!4273)) )
))
(declare-datatypes ((String!15901 0))(
  ( (String!15902 (value!73557 String)) )
))
(declare-datatypes ((Regex!3557 0))(
  ( (ElementMatch!3557 (c!213930 C!7404)) (Concat!5891 (regOne!7626 Regex!3557) (regTwo!7626 Regex!3557)) (EmptyExpr!3557) (Star!3557 (reg!3886 Regex!3557)) (EmptyLang!3557) (Union!3557 (regOne!7627 Regex!3557) (regTwo!7627 Regex!3557)) )
))
(declare-datatypes ((TokenValueInjection!4326 0))(
  ( (TokenValueInjection!4327 (toValue!3454 Int) (toChars!3313 Int)) )
))
(declare-datatypes ((Rule!4286 0))(
  ( (Rule!4287 (regex!2243 Regex!3557) (tag!2505 String!15901) (isSeparator!2243 Bool) (transformation!2243 TokenValueInjection!4326)) )
))
(declare-datatypes ((Token!4148 0))(
  ( (Token!4149 (value!73558 TokenValue!2333) (rule!3982 Rule!4286) (size!10638 Int) (originalCharacters!3105 List!13077)) )
))
(declare-fun t2!34 () Token!4148)

(declare-datatypes ((LexerInterface!1938 0))(
  ( (LexerInterfaceExt!1935 (__x!8496 Int)) (Lexer!1936) )
))
(declare-fun thiss!19762 () LexerInterface!1938)

(declare-datatypes ((List!13078 0))(
  ( (Nil!13012) (Cons!13012 (h!18413 Rule!4286) (t!117587 List!13078)) )
))
(declare-fun rules!2550 () List!13078)

(declare-fun rulesProduceIndividualToken!907 (LexerInterface!1938 List!13078 Token!4148) Bool)

(assert (=> b!1299593 (= res!582010 (rulesProduceIndividualToken!907 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1299594 () Bool)

(declare-fun e!833228 () Bool)

(declare-fun e!833218 () Bool)

(declare-fun tp!379212 () Bool)

(declare-fun t1!34 () Token!4148)

(declare-fun inv!21 (TokenValue!2333) Bool)

(assert (=> b!1299594 (= e!833228 (and (inv!21 (value!73558 t1!34)) e!833218 tp!379212))))

(declare-fun b!1299595 () Bool)

(declare-fun res!582020 () Bool)

(declare-fun e!833226 () Bool)

(assert (=> b!1299595 (=> res!582020 e!833226)))

(declare-fun lt!427382 () List!13077)

(declare-fun lt!427379 () C!7404)

(declare-fun contains!2181 (List!13077 C!7404) Bool)

(assert (=> b!1299595 (= res!582020 (not (contains!2181 lt!427382 lt!427379)))))

(declare-fun b!1299596 () Bool)

(declare-fun res!582025 () Bool)

(assert (=> b!1299596 (=> (not res!582025) (not e!833225))))

(declare-fun rulesInvariant!1808 (LexerInterface!1938 List!13078) Bool)

(assert (=> b!1299596 (= res!582025 (rulesInvariant!1808 thiss!19762 rules!2550))))

(declare-fun b!1299597 () Bool)

(declare-fun res!582023 () Bool)

(assert (=> b!1299597 (=> (not res!582023) (not e!833225))))

(assert (=> b!1299597 (= res!582023 (rulesProduceIndividualToken!907 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1299598 () Bool)

(declare-fun e!833221 () Bool)

(declare-fun e!833222 () Bool)

(declare-fun tp!379209 () Bool)

(assert (=> b!1299598 (= e!833221 (and e!833222 tp!379209))))

(declare-fun b!1299599 () Bool)

(declare-fun res!582017 () Bool)

(assert (=> b!1299599 (=> (not res!582017) (not e!833225))))

(declare-fun isEmpty!7731 (List!13078) Bool)

(assert (=> b!1299599 (= res!582017 (not (isEmpty!7731 rules!2550)))))

(declare-fun b!1299600 () Bool)

(declare-fun e!833231 () Bool)

(declare-fun e!833217 () Bool)

(assert (=> b!1299600 (= e!833231 e!833217)))

(declare-fun res!582022 () Bool)

(assert (=> b!1299600 (=> res!582022 e!833217)))

(declare-fun lt!427376 () List!13077)

(declare-fun ++!3310 (List!13077 List!13077) List!13077)

(declare-fun getSuffix!413 (List!13077 List!13077) List!13077)

(assert (=> b!1299600 (= res!582022 (not (= lt!427376 (++!3310 lt!427382 (getSuffix!413 lt!427376 lt!427382)))))))

(declare-fun lambda!51133 () Int)

(declare-fun pickWitness!20 (Int) List!13077)

(assert (=> b!1299600 (= lt!427376 (pickWitness!20 lambda!51133))))

(declare-fun b!1299601 () Bool)

(declare-fun e!833232 () Bool)

(declare-fun tp!379213 () Bool)

(declare-fun e!833215 () Bool)

(assert (=> b!1299601 (= e!833215 (and (inv!21 (value!73558 t2!34)) e!833232 tp!379213))))

(declare-fun b!1299602 () Bool)

(assert (=> b!1299602 (= e!833217 e!833226)))

(declare-fun res!582024 () Bool)

(assert (=> b!1299602 (=> res!582024 e!833226)))

(declare-fun lt!427380 () C!7404)

(assert (=> b!1299602 (= res!582024 (not (contains!2181 lt!427382 lt!427380)))))

(declare-fun lt!427381 () BalanceConc!8486)

(declare-fun apply!2897 (BalanceConc!8486 Int) C!7404)

(assert (=> b!1299602 (= lt!427380 (apply!2897 lt!427381 0))))

(declare-fun e!833233 () Bool)

(assert (=> b!1299603 (= e!833233 (and tp!379218 tp!379215))))

(declare-fun b!1299604 () Bool)

(declare-fun tp!379210 () Bool)

(declare-fun inv!17438 (String!15901) Bool)

(declare-fun inv!17441 (TokenValueInjection!4326) Bool)

(assert (=> b!1299604 (= e!833218 (and tp!379210 (inv!17438 (tag!2505 (rule!3982 t1!34))) (inv!17441 (transformation!2243 (rule!3982 t1!34))) e!833233))))

(declare-fun b!1299605 () Bool)

(declare-fun e!833227 () Bool)

(declare-fun tp!379211 () Bool)

(assert (=> b!1299605 (= e!833232 (and tp!379211 (inv!17438 (tag!2505 (rule!3982 t2!34))) (inv!17441 (transformation!2243 (rule!3982 t2!34))) e!833227))))

(declare-fun b!1299606 () Bool)

(declare-fun res!582015 () Bool)

(declare-fun e!833219 () Bool)

(assert (=> b!1299606 (=> (not res!582015) (not e!833219))))

(declare-fun sepAndNonSepRulesDisjointChars!616 (List!13078 List!13078) Bool)

(assert (=> b!1299606 (= res!582015 (sepAndNonSepRulesDisjointChars!616 rules!2550 rules!2550))))

(declare-fun e!833216 () Bool)

(declare-fun tp!379214 () Bool)

(declare-fun b!1299607 () Bool)

(assert (=> b!1299607 (= e!833222 (and tp!379214 (inv!17438 (tag!2505 (h!18413 rules!2550))) (inv!17441 (transformation!2243 (h!18413 rules!2550))) e!833216))))

(declare-fun b!1299608 () Bool)

(declare-fun e!833229 () Bool)

(assert (=> b!1299608 (= e!833219 e!833229)))

(declare-fun res!582014 () Bool)

(assert (=> b!1299608 (=> (not res!582014) (not e!833229))))

(declare-fun lt!427384 () Regex!3557)

(declare-fun prefixMatch!70 (Regex!3557 List!13077) Bool)

(assert (=> b!1299608 (= res!582014 (prefixMatch!70 lt!427384 lt!427382))))

(declare-fun rulesRegex!128 (LexerInterface!1938 List!13078) Regex!3557)

(assert (=> b!1299608 (= lt!427384 (rulesRegex!128 thiss!19762 rules!2550))))

(declare-fun lt!427377 () List!13077)

(assert (=> b!1299608 (= lt!427382 (++!3310 lt!427377 (Cons!13011 lt!427379 Nil!13011)))))

(declare-fun lt!427375 () BalanceConc!8486)

(assert (=> b!1299608 (= lt!427379 (apply!2897 lt!427375 0))))

(declare-fun list!4877 (BalanceConc!8486) List!13077)

(assert (=> b!1299608 (= lt!427377 (list!4877 lt!427381))))

(declare-fun charsOf!1215 (Token!4148) BalanceConc!8486)

(assert (=> b!1299608 (= lt!427381 (charsOf!1215 t1!34))))

(declare-fun b!1299609 () Bool)

(declare-fun res!582013 () Bool)

(assert (=> b!1299609 (=> (not res!582013) (not e!833225))))

(assert (=> b!1299609 (= res!582013 (not (= (isSeparator!2243 (rule!3982 t1!34)) (isSeparator!2243 (rule!3982 t2!34)))))))

(declare-fun b!1299610 () Bool)

(declare-fun res!582011 () Bool)

(assert (=> b!1299610 (=> res!582011 e!833226)))

(assert (=> b!1299610 (= res!582011 (not (contains!2181 lt!427376 lt!427380)))))

(declare-fun b!1299611 () Bool)

(assert (=> b!1299611 (= e!833226 true)))

(declare-fun lt!427383 () Bool)

(declare-fun matchR!1559 (Regex!3557 List!13077) Bool)

(assert (=> b!1299611 (= lt!427383 (matchR!1559 lt!427384 lt!427376))))

(assert (=> b!1299612 (= e!833216 (and tp!379208 tp!379207))))

(declare-fun res!582019 () Bool)

(assert (=> start!114738 (=> (not res!582019) (not e!833225))))

(get-info :version)

(assert (=> start!114738 (= res!582019 ((_ is Lexer!1936) thiss!19762))))

(assert (=> start!114738 e!833225))

(assert (=> start!114738 true))

(assert (=> start!114738 e!833221))

(declare-fun inv!17442 (Token!4148) Bool)

(assert (=> start!114738 (and (inv!17442 t1!34) e!833228)))

(assert (=> start!114738 (and (inv!17442 t2!34) e!833215)))

(declare-fun b!1299613 () Bool)

(assert (=> b!1299613 (= e!833225 e!833219)))

(declare-fun res!582012 () Bool)

(assert (=> b!1299613 (=> (not res!582012) (not e!833219))))

(declare-fun size!10639 (BalanceConc!8486) Int)

(assert (=> b!1299613 (= res!582012 (> (size!10639 lt!427375) 0))))

(assert (=> b!1299613 (= lt!427375 (charsOf!1215 t2!34))))

(assert (=> b!1299614 (= e!833229 (not e!833231))))

(declare-fun res!582021 () Bool)

(assert (=> b!1299614 (=> res!582021 e!833231)))

(declare-fun Exists!715 (Int) Bool)

(assert (=> b!1299614 (= res!582021 (not (Exists!715 lambda!51133)))))

(assert (=> b!1299614 (Exists!715 lambda!51133)))

(declare-datatypes ((Unit!19146 0))(
  ( (Unit!19147) )
))
(declare-fun lt!427378 () Unit!19146)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!33 (Regex!3557 List!13077) Unit!19146)

(assert (=> b!1299614 (= lt!427378 (lemmaPrefixMatchThenExistsStringThatMatches!33 lt!427384 lt!427382))))

(declare-fun b!1299615 () Bool)

(declare-fun res!582016 () Bool)

(assert (=> b!1299615 (=> (not res!582016) (not e!833219))))

(declare-fun separableTokensPredicate!221 (LexerInterface!1938 Token!4148 Token!4148 List!13078) Bool)

(assert (=> b!1299615 (= res!582016 (not (separableTokensPredicate!221 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1299616 (= e!833227 (and tp!379216 tp!379217))))

(declare-fun b!1299617 () Bool)

(declare-fun res!582018 () Bool)

(assert (=> b!1299617 (=> res!582018 e!833226)))

(assert (=> b!1299617 (= res!582018 (not (contains!2181 lt!427376 lt!427379)))))

(assert (= (and start!114738 res!582019) b!1299599))

(assert (= (and b!1299599 res!582017) b!1299596))

(assert (= (and b!1299596 res!582025) b!1299597))

(assert (= (and b!1299597 res!582023) b!1299593))

(assert (= (and b!1299593 res!582010) b!1299609))

(assert (= (and b!1299609 res!582013) b!1299613))

(assert (= (and b!1299613 res!582012) b!1299606))

(assert (= (and b!1299606 res!582015) b!1299615))

(assert (= (and b!1299615 res!582016) b!1299608))

(assert (= (and b!1299608 res!582014) b!1299614))

(assert (= (and b!1299614 (not res!582021)) b!1299600))

(assert (= (and b!1299600 (not res!582022)) b!1299602))

(assert (= (and b!1299602 (not res!582024)) b!1299610))

(assert (= (and b!1299610 (not res!582011)) b!1299595))

(assert (= (and b!1299595 (not res!582020)) b!1299617))

(assert (= (and b!1299617 (not res!582018)) b!1299611))

(assert (= b!1299607 b!1299612))

(assert (= b!1299598 b!1299607))

(assert (= (and start!114738 ((_ is Cons!13012) rules!2550)) b!1299598))

(assert (= b!1299604 b!1299603))

(assert (= b!1299594 b!1299604))

(assert (= start!114738 b!1299594))

(assert (= b!1299605 b!1299616))

(assert (= b!1299601 b!1299605))

(assert (= start!114738 b!1299601))

(declare-fun m!1451213 () Bool)

(assert (=> b!1299600 m!1451213))

(assert (=> b!1299600 m!1451213))

(declare-fun m!1451215 () Bool)

(assert (=> b!1299600 m!1451215))

(declare-fun m!1451217 () Bool)

(assert (=> b!1299600 m!1451217))

(declare-fun m!1451219 () Bool)

(assert (=> b!1299614 m!1451219))

(assert (=> b!1299614 m!1451219))

(declare-fun m!1451221 () Bool)

(assert (=> b!1299614 m!1451221))

(declare-fun m!1451223 () Bool)

(assert (=> b!1299608 m!1451223))

(declare-fun m!1451225 () Bool)

(assert (=> b!1299608 m!1451225))

(declare-fun m!1451227 () Bool)

(assert (=> b!1299608 m!1451227))

(declare-fun m!1451229 () Bool)

(assert (=> b!1299608 m!1451229))

(declare-fun m!1451231 () Bool)

(assert (=> b!1299608 m!1451231))

(declare-fun m!1451233 () Bool)

(assert (=> b!1299608 m!1451233))

(declare-fun m!1451235 () Bool)

(assert (=> b!1299594 m!1451235))

(declare-fun m!1451237 () Bool)

(assert (=> b!1299593 m!1451237))

(declare-fun m!1451239 () Bool)

(assert (=> b!1299606 m!1451239))

(declare-fun m!1451241 () Bool)

(assert (=> b!1299596 m!1451241))

(declare-fun m!1451243 () Bool)

(assert (=> b!1299607 m!1451243))

(declare-fun m!1451245 () Bool)

(assert (=> b!1299607 m!1451245))

(declare-fun m!1451247 () Bool)

(assert (=> b!1299597 m!1451247))

(declare-fun m!1451249 () Bool)

(assert (=> b!1299605 m!1451249))

(declare-fun m!1451251 () Bool)

(assert (=> b!1299605 m!1451251))

(declare-fun m!1451253 () Bool)

(assert (=> b!1299602 m!1451253))

(declare-fun m!1451255 () Bool)

(assert (=> b!1299602 m!1451255))

(declare-fun m!1451257 () Bool)

(assert (=> b!1299599 m!1451257))

(declare-fun m!1451259 () Bool)

(assert (=> start!114738 m!1451259))

(declare-fun m!1451261 () Bool)

(assert (=> start!114738 m!1451261))

(declare-fun m!1451263 () Bool)

(assert (=> b!1299613 m!1451263))

(declare-fun m!1451265 () Bool)

(assert (=> b!1299613 m!1451265))

(declare-fun m!1451267 () Bool)

(assert (=> b!1299601 m!1451267))

(declare-fun m!1451269 () Bool)

(assert (=> b!1299615 m!1451269))

(declare-fun m!1451271 () Bool)

(assert (=> b!1299595 m!1451271))

(declare-fun m!1451273 () Bool)

(assert (=> b!1299610 m!1451273))

(declare-fun m!1451275 () Bool)

(assert (=> b!1299604 m!1451275))

(declare-fun m!1451277 () Bool)

(assert (=> b!1299604 m!1451277))

(declare-fun m!1451279 () Bool)

(assert (=> b!1299611 m!1451279))

(declare-fun m!1451281 () Bool)

(assert (=> b!1299617 m!1451281))

(check-sat (not b_next!31565) b_and!86657 (not b!1299617) b_and!86661 b_and!86659 (not b!1299605) (not b!1299599) (not b!1299596) (not b!1299602) (not b!1299597) b_and!86665 (not b!1299600) (not b!1299614) (not b!1299606) (not b!1299608) (not b_next!31557) (not b!1299594) (not b!1299611) (not b!1299593) (not b_next!31555) (not b!1299601) (not b!1299595) (not start!114738) (not b_next!31561) (not b_next!31563) (not b_next!31559) (not b!1299610) (not b!1299604) (not b!1299607) (not b!1299613) (not b!1299598) b_and!86663 (not b!1299615) b_and!86655)
(check-sat (not b_next!31565) b_and!86657 (not b_next!31557) b_and!86661 b_and!86659 (not b_next!31555) (not b_next!31559) b_and!86663 b_and!86655 b_and!86665 (not b_next!31561) (not b_next!31563))
