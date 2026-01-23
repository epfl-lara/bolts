; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112862 () Bool)

(assert start!112862)

(declare-fun b!1288288 () Bool)

(declare-fun b_free!30363 () Bool)

(declare-fun b_next!31067 () Bool)

(assert (=> b!1288288 (= b_free!30363 (not b_next!31067))))

(declare-fun tp!375378 () Bool)

(declare-fun b_and!85687 () Bool)

(assert (=> b!1288288 (= tp!375378 b_and!85687)))

(declare-fun b_free!30365 () Bool)

(declare-fun b_next!31069 () Bool)

(assert (=> b!1288288 (= b_free!30365 (not b_next!31069))))

(declare-fun tp!375387 () Bool)

(declare-fun b_and!85689 () Bool)

(assert (=> b!1288288 (= tp!375387 b_and!85689)))

(declare-fun b!1288302 () Bool)

(declare-fun b_free!30367 () Bool)

(declare-fun b_next!31071 () Bool)

(assert (=> b!1288302 (= b_free!30367 (not b_next!31071))))

(declare-fun tp!375384 () Bool)

(declare-fun b_and!85691 () Bool)

(assert (=> b!1288302 (= tp!375384 b_and!85691)))

(declare-fun b_free!30369 () Bool)

(declare-fun b_next!31073 () Bool)

(assert (=> b!1288302 (= b_free!30369 (not b_next!31073))))

(declare-fun tp!375379 () Bool)

(declare-fun b_and!85693 () Bool)

(assert (=> b!1288302 (= tp!375379 b_and!85693)))

(declare-fun b!1288289 () Bool)

(declare-fun b_free!30371 () Bool)

(declare-fun b_next!31075 () Bool)

(assert (=> b!1288289 (= b_free!30371 (not b_next!31075))))

(declare-fun tp!375381 () Bool)

(declare-fun b_and!85695 () Bool)

(assert (=> b!1288289 (= tp!375381 b_and!85695)))

(declare-fun b_free!30373 () Bool)

(declare-fun b_next!31077 () Bool)

(assert (=> b!1288289 (= b_free!30373 (not b_next!31077))))

(declare-fun tp!375383 () Bool)

(declare-fun b_and!85697 () Bool)

(assert (=> b!1288289 (= tp!375383 b_and!85697)))

(declare-fun b!1288298 () Bool)

(assert (=> b!1288298 true))

(assert (=> b!1288298 true))

(declare-fun b!1288286 () Bool)

(declare-fun res!577500 () Bool)

(declare-fun e!826193 () Bool)

(assert (=> b!1288286 (=> (not res!577500) (not e!826193))))

(declare-datatypes ((LexerInterface!1908 0))(
  ( (LexerInterfaceExt!1905 (__x!8435 Int)) (Lexer!1906) )
))
(declare-fun thiss!19762 () LexerInterface!1908)

(declare-datatypes ((List!12917 0))(
  ( (Nil!12851) (Cons!12851 (h!18252 (_ BitVec 16)) (t!116968 List!12917)) )
))
(declare-datatypes ((TokenValue!2303 0))(
  ( (FloatLiteralValue!4606 (text!16566 List!12917)) (TokenValueExt!2302 (__x!8436 Int)) (Broken!11515 (value!72677 List!12917)) (Object!2368) (End!2303) (Def!2303) (Underscore!2303) (Match!2303) (Else!2303) (Error!2303) (Case!2303) (If!2303) (Extends!2303) (Abstract!2303) (Class!2303) (Val!2303) (DelimiterValue!4606 (del!2363 List!12917)) (KeywordValue!2309 (value!72678 List!12917)) (CommentValue!4606 (value!72679 List!12917)) (WhitespaceValue!4606 (value!72680 List!12917)) (IndentationValue!2303 (value!72681 List!12917)) (String!15750) (Int32!2303) (Broken!11516 (value!72682 List!12917)) (Boolean!2304) (Unit!19025) (OperatorValue!2306 (op!2363 List!12917)) (IdentifierValue!4606 (value!72683 List!12917)) (IdentifierValue!4607 (value!72684 List!12917)) (WhitespaceValue!4607 (value!72685 List!12917)) (True!4606) (False!4606) (Broken!11517 (value!72686 List!12917)) (Broken!11518 (value!72687 List!12917)) (True!4607) (RightBrace!2303) (RightBracket!2303) (Colon!2303) (Null!2303) (Comma!2303) (LeftBracket!2303) (False!4607) (LeftBrace!2303) (ImaginaryLiteralValue!2303 (text!16567 List!12917)) (StringLiteralValue!6909 (value!72688 List!12917)) (EOFValue!2303 (value!72689 List!12917)) (IdentValue!2303 (value!72690 List!12917)) (DelimiterValue!4607 (value!72691 List!12917)) (DedentValue!2303 (value!72692 List!12917)) (NewLineValue!2303 (value!72693 List!12917)) (IntegerValue!6909 (value!72694 (_ BitVec 32)) (text!16568 List!12917)) (IntegerValue!6910 (value!72695 Int) (text!16569 List!12917)) (Times!2303) (Or!2303) (Equal!2303) (Minus!2303) (Broken!11519 (value!72696 List!12917)) (And!2303) (Div!2303) (LessEqual!2303) (Mod!2303) (Concat!5830) (Not!2303) (Plus!2303) (SpaceValue!2303 (value!72697 List!12917)) (IntegerValue!6911 (value!72698 Int) (text!16570 List!12917)) (StringLiteralValue!6910 (text!16571 List!12917)) (FloatLiteralValue!4607 (text!16572 List!12917)) (BytesLiteralValue!2303 (value!72699 List!12917)) (CommentValue!4607 (value!72700 List!12917)) (StringLiteralValue!6911 (value!72701 List!12917)) (ErrorTokenValue!2303 (msg!2364 List!12917)) )
))
(declare-datatypes ((C!7344 0))(
  ( (C!7345 (val!4232 Int)) )
))
(declare-datatypes ((List!12918 0))(
  ( (Nil!12852) (Cons!12852 (h!18253 C!7344) (t!116969 List!12918)) )
))
(declare-datatypes ((IArray!8451 0))(
  ( (IArray!8452 (innerList!4283 List!12918)) )
))
(declare-datatypes ((Conc!4223 0))(
  ( (Node!4223 (left!11063 Conc!4223) (right!11393 Conc!4223) (csize!8676 Int) (cheight!4434 Int)) (Leaf!6526 (xs!6934 IArray!8451) (csize!8677 Int)) (Empty!4223) )
))
(declare-datatypes ((BalanceConc!8386 0))(
  ( (BalanceConc!8387 (c!212053 Conc!4223)) )
))
(declare-datatypes ((Regex!3527 0))(
  ( (ElementMatch!3527 (c!212054 C!7344)) (Concat!5831 (regOne!7566 Regex!3527) (regTwo!7566 Regex!3527)) (EmptyExpr!3527) (Star!3527 (reg!3856 Regex!3527)) (EmptyLang!3527) (Union!3527 (regOne!7567 Regex!3527) (regTwo!7567 Regex!3527)) )
))
(declare-datatypes ((String!15751 0))(
  ( (String!15752 (value!72702 String)) )
))
(declare-datatypes ((TokenValueInjection!4266 0))(
  ( (TokenValueInjection!4267 (toValue!3404 Int) (toChars!3263 Int)) )
))
(declare-datatypes ((Rule!4226 0))(
  ( (Rule!4227 (regex!2213 Regex!3527) (tag!2475 String!15751) (isSeparator!2213 Bool) (transformation!2213 TokenValueInjection!4266)) )
))
(declare-datatypes ((List!12919 0))(
  ( (Nil!12853) (Cons!12853 (h!18254 Rule!4226) (t!116970 List!12919)) )
))
(declare-fun rules!2550 () List!12919)

(declare-datatypes ((Token!4088 0))(
  ( (Token!4089 (value!72703 TokenValue!2303) (rule!3952 Rule!4226) (size!10479 Int) (originalCharacters!3075 List!12918)) )
))
(declare-fun t2!34 () Token!4088)

(declare-fun rulesProduceIndividualToken!877 (LexerInterface!1908 List!12919 Token!4088) Bool)

(assert (=> b!1288286 (= res!577500 (rulesProduceIndividualToken!877 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1288287 () Bool)

(declare-fun res!577503 () Bool)

(assert (=> b!1288287 (=> (not res!577503) (not e!826193))))

(declare-fun rulesInvariant!1778 (LexerInterface!1908 List!12919) Bool)

(assert (=> b!1288287 (= res!577503 (rulesInvariant!1778 thiss!19762 rules!2550))))

(declare-fun e!826206 () Bool)

(assert (=> b!1288288 (= e!826206 (and tp!375378 tp!375387))))

(declare-fun e!826199 () Bool)

(assert (=> b!1288289 (= e!826199 (and tp!375381 tp!375383))))

(declare-fun tp!375382 () Bool)

(declare-fun t1!34 () Token!4088)

(declare-fun b!1288290 () Bool)

(declare-fun e!826204 () Bool)

(declare-fun e!826198 () Bool)

(declare-fun inv!21 (TokenValue!2303) Bool)

(assert (=> b!1288290 (= e!826204 (and (inv!21 (value!72703 t1!34)) e!826198 tp!375382))))

(declare-fun b!1288291 () Bool)

(declare-fun e!826195 () Bool)

(assert (=> b!1288291 (= e!826193 e!826195)))

(declare-fun res!577501 () Bool)

(assert (=> b!1288291 (=> (not res!577501) (not e!826195))))

(declare-fun lt!424382 () BalanceConc!8386)

(declare-fun size!10480 (BalanceConc!8386) Int)

(assert (=> b!1288291 (= res!577501 (> (size!10480 lt!424382) 0))))

(declare-fun charsOf!1185 (Token!4088) BalanceConc!8386)

(assert (=> b!1288291 (= lt!424382 (charsOf!1185 t2!34))))

(declare-fun b!1288292 () Bool)

(declare-fun res!577508 () Bool)

(assert (=> b!1288292 (=> (not res!577508) (not e!826195))))

(declare-fun separableTokensPredicate!191 (LexerInterface!1908 Token!4088 Token!4088 List!12919) Bool)

(assert (=> b!1288292 (= res!577508 (not (separableTokensPredicate!191 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1288293 () Bool)

(declare-fun res!577507 () Bool)

(assert (=> b!1288293 (=> (not res!577507) (not e!826195))))

(declare-fun sepAndNonSepRulesDisjointChars!586 (List!12919 List!12919) Bool)

(assert (=> b!1288293 (= res!577507 (sepAndNonSepRulesDisjointChars!586 rules!2550 rules!2550))))

(declare-fun b!1288294 () Bool)

(declare-fun tp!375385 () Bool)

(declare-fun e!826201 () Bool)

(declare-fun inv!17266 (String!15751) Bool)

(declare-fun inv!17269 (TokenValueInjection!4266) Bool)

(assert (=> b!1288294 (= e!826201 (and tp!375385 (inv!17266 (tag!2475 (rule!3952 t2!34))) (inv!17269 (transformation!2213 (rule!3952 t2!34))) e!826206))))

(declare-fun tp!375377 () Bool)

(declare-fun e!826194 () Bool)

(declare-fun e!826197 () Bool)

(declare-fun b!1288295 () Bool)

(assert (=> b!1288295 (= e!826197 (and tp!375377 (inv!17266 (tag!2475 (h!18254 rules!2550))) (inv!17269 (transformation!2213 (h!18254 rules!2550))) e!826194))))

(declare-fun b!1288296 () Bool)

(declare-fun tp!375386 () Bool)

(assert (=> b!1288296 (= e!826198 (and tp!375386 (inv!17266 (tag!2475 (rule!3952 t1!34))) (inv!17269 (transformation!2213 (rule!3952 t1!34))) e!826199))))

(declare-fun b!1288297 () Bool)

(declare-fun res!577502 () Bool)

(assert (=> b!1288297 (=> (not res!577502) (not e!826193))))

(declare-fun isEmpty!7626 (List!12919) Bool)

(assert (=> b!1288297 (= res!577502 (not (isEmpty!7626 rules!2550)))))

(declare-fun e!826200 () Bool)

(declare-fun tp!375388 () Bool)

(declare-fun b!1288285 () Bool)

(assert (=> b!1288285 (= e!826200 (and (inv!21 (value!72703 t2!34)) e!826201 tp!375388))))

(declare-fun res!577505 () Bool)

(assert (=> start!112862 (=> (not res!577505) (not e!826193))))

(get-info :version)

(assert (=> start!112862 (= res!577505 ((_ is Lexer!1906) thiss!19762))))

(assert (=> start!112862 e!826193))

(assert (=> start!112862 true))

(declare-fun e!826205 () Bool)

(assert (=> start!112862 e!826205))

(declare-fun inv!17270 (Token!4088) Bool)

(assert (=> start!112862 (and (inv!17270 t1!34) e!826204)))

(assert (=> start!112862 (and (inv!17270 t2!34) e!826200)))

(declare-fun e!826196 () Bool)

(assert (=> b!1288298 (= e!826196 (not true))))

(declare-fun lambda!50527 () Int)

(declare-fun Exists!685 (Int) Bool)

(assert (=> b!1288298 (Exists!685 lambda!50527)))

(declare-datatypes ((Unit!19026 0))(
  ( (Unit!19027) )
))
(declare-fun lt!424381 () Unit!19026)

(declare-fun lt!424384 () Regex!3527)

(declare-fun lt!424383 () List!12918)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!3 (Regex!3527 List!12918) Unit!19026)

(assert (=> b!1288298 (= lt!424381 (lemmaPrefixMatchThenExistsStringThatMatches!3 lt!424384 lt!424383))))

(declare-fun b!1288299 () Bool)

(declare-fun res!577506 () Bool)

(assert (=> b!1288299 (=> (not res!577506) (not e!826193))))

(assert (=> b!1288299 (= res!577506 (rulesProduceIndividualToken!877 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1288300 () Bool)

(declare-fun tp!375380 () Bool)

(assert (=> b!1288300 (= e!826205 (and e!826197 tp!375380))))

(declare-fun b!1288301 () Bool)

(declare-fun res!577504 () Bool)

(assert (=> b!1288301 (=> (not res!577504) (not e!826193))))

(assert (=> b!1288301 (= res!577504 (not (= (isSeparator!2213 (rule!3952 t1!34)) (isSeparator!2213 (rule!3952 t2!34)))))))

(assert (=> b!1288302 (= e!826194 (and tp!375384 tp!375379))))

(declare-fun b!1288303 () Bool)

(assert (=> b!1288303 (= e!826195 e!826196)))

(declare-fun res!577499 () Bool)

(assert (=> b!1288303 (=> (not res!577499) (not e!826196))))

(declare-fun prefixMatch!40 (Regex!3527 List!12918) Bool)

(assert (=> b!1288303 (= res!577499 (prefixMatch!40 lt!424384 lt!424383))))

(declare-fun rulesRegex!98 (LexerInterface!1908 List!12919) Regex!3527)

(assert (=> b!1288303 (= lt!424384 (rulesRegex!98 thiss!19762 rules!2550))))

(declare-fun ++!3249 (List!12918 List!12918) List!12918)

(declare-fun list!4785 (BalanceConc!8386) List!12918)

(declare-fun apply!2775 (BalanceConc!8386 Int) C!7344)

(assert (=> b!1288303 (= lt!424383 (++!3249 (list!4785 (charsOf!1185 t1!34)) (Cons!12852 (apply!2775 lt!424382 0) Nil!12852)))))

(assert (= (and start!112862 res!577505) b!1288297))

(assert (= (and b!1288297 res!577502) b!1288287))

(assert (= (and b!1288287 res!577503) b!1288299))

(assert (= (and b!1288299 res!577506) b!1288286))

(assert (= (and b!1288286 res!577500) b!1288301))

(assert (= (and b!1288301 res!577504) b!1288291))

(assert (= (and b!1288291 res!577501) b!1288293))

(assert (= (and b!1288293 res!577507) b!1288292))

(assert (= (and b!1288292 res!577508) b!1288303))

(assert (= (and b!1288303 res!577499) b!1288298))

(assert (= b!1288295 b!1288302))

(assert (= b!1288300 b!1288295))

(assert (= (and start!112862 ((_ is Cons!12853) rules!2550)) b!1288300))

(assert (= b!1288296 b!1288289))

(assert (= b!1288290 b!1288296))

(assert (= start!112862 b!1288290))

(assert (= b!1288294 b!1288288))

(assert (= b!1288285 b!1288294))

(assert (= start!112862 b!1288285))

(declare-fun m!1438799 () Bool)

(assert (=> start!112862 m!1438799))

(declare-fun m!1438801 () Bool)

(assert (=> start!112862 m!1438801))

(declare-fun m!1438803 () Bool)

(assert (=> b!1288298 m!1438803))

(declare-fun m!1438805 () Bool)

(assert (=> b!1288298 m!1438805))

(declare-fun m!1438807 () Bool)

(assert (=> b!1288286 m!1438807))

(declare-fun m!1438809 () Bool)

(assert (=> b!1288299 m!1438809))

(declare-fun m!1438811 () Bool)

(assert (=> b!1288290 m!1438811))

(declare-fun m!1438813 () Bool)

(assert (=> b!1288303 m!1438813))

(declare-fun m!1438815 () Bool)

(assert (=> b!1288303 m!1438815))

(declare-fun m!1438817 () Bool)

(assert (=> b!1288303 m!1438817))

(declare-fun m!1438819 () Bool)

(assert (=> b!1288303 m!1438819))

(declare-fun m!1438821 () Bool)

(assert (=> b!1288303 m!1438821))

(assert (=> b!1288303 m!1438815))

(declare-fun m!1438823 () Bool)

(assert (=> b!1288303 m!1438823))

(assert (=> b!1288303 m!1438813))

(declare-fun m!1438825 () Bool)

(assert (=> b!1288297 m!1438825))

(declare-fun m!1438827 () Bool)

(assert (=> b!1288287 m!1438827))

(declare-fun m!1438829 () Bool)

(assert (=> b!1288285 m!1438829))

(declare-fun m!1438831 () Bool)

(assert (=> b!1288295 m!1438831))

(declare-fun m!1438833 () Bool)

(assert (=> b!1288295 m!1438833))

(declare-fun m!1438835 () Bool)

(assert (=> b!1288293 m!1438835))

(declare-fun m!1438837 () Bool)

(assert (=> b!1288291 m!1438837))

(declare-fun m!1438839 () Bool)

(assert (=> b!1288291 m!1438839))

(declare-fun m!1438841 () Bool)

(assert (=> b!1288296 m!1438841))

(declare-fun m!1438843 () Bool)

(assert (=> b!1288296 m!1438843))

(declare-fun m!1438845 () Bool)

(assert (=> b!1288292 m!1438845))

(declare-fun m!1438847 () Bool)

(assert (=> b!1288294 m!1438847))

(declare-fun m!1438849 () Bool)

(assert (=> b!1288294 m!1438849))

(check-sat (not b!1288293) b_and!85691 (not b_next!31077) b_and!85687 (not b_next!31075) b_and!85693 (not b!1288299) (not b!1288285) (not b!1288298) b_and!85697 (not b!1288286) (not b_next!31067) (not b!1288295) (not b!1288291) (not b!1288303) (not b!1288297) (not start!112862) (not b!1288287) b_and!85695 (not b!1288294) (not b!1288296) (not b!1288290) (not b!1288292) (not b!1288300) (not b_next!31071) (not b_next!31073) b_and!85689 (not b_next!31069))
(check-sat b_and!85691 (not b_next!31077) b_and!85687 (not b_next!31075) b_and!85693 b_and!85697 b_and!85695 (not b_next!31071) (not b_next!31067) (not b_next!31073) b_and!85689 (not b_next!31069))
