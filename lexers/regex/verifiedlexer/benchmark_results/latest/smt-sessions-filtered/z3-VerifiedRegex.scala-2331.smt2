; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115054 () Bool)

(assert start!115054)

(declare-fun b!1303837 () Bool)

(declare-fun b_free!31203 () Bool)

(declare-fun b_next!31907 () Bool)

(assert (=> b!1303837 (= b_free!31203 (not b_next!31907))))

(declare-fun tp!380578 () Bool)

(declare-fun b_and!87055 () Bool)

(assert (=> b!1303837 (= tp!380578 b_and!87055)))

(declare-fun b_free!31205 () Bool)

(declare-fun b_next!31909 () Bool)

(assert (=> b!1303837 (= b_free!31205 (not b_next!31909))))

(declare-fun tp!380575 () Bool)

(declare-fun b_and!87057 () Bool)

(assert (=> b!1303837 (= tp!380575 b_and!87057)))

(declare-fun b!1303813 () Bool)

(declare-fun b_free!31207 () Bool)

(declare-fun b_next!31911 () Bool)

(assert (=> b!1303813 (= b_free!31207 (not b_next!31911))))

(declare-fun tp!380577 () Bool)

(declare-fun b_and!87059 () Bool)

(assert (=> b!1303813 (= tp!380577 b_and!87059)))

(declare-fun b_free!31209 () Bool)

(declare-fun b_next!31913 () Bool)

(assert (=> b!1303813 (= b_free!31209 (not b_next!31913))))

(declare-fun tp!380574 () Bool)

(declare-fun b_and!87061 () Bool)

(assert (=> b!1303813 (= tp!380574 b_and!87061)))

(declare-fun b!1303830 () Bool)

(declare-fun b_free!31211 () Bool)

(declare-fun b_next!31915 () Bool)

(assert (=> b!1303830 (= b_free!31211 (not b_next!31915))))

(declare-fun tp!380572 () Bool)

(declare-fun b_and!87063 () Bool)

(assert (=> b!1303830 (= tp!380572 b_and!87063)))

(declare-fun b_free!31213 () Bool)

(declare-fun b_next!31917 () Bool)

(assert (=> b!1303830 (= b_free!31213 (not b_next!31917))))

(declare-fun tp!380571 () Bool)

(declare-fun b_and!87065 () Bool)

(assert (=> b!1303830 (= tp!380571 b_and!87065)))

(declare-fun b!1303834 () Bool)

(assert (=> b!1303834 true))

(assert (=> b!1303834 true))

(declare-fun b!1303828 () Bool)

(assert (=> b!1303828 true))

(declare-fun b!1303825 () Bool)

(assert (=> b!1303825 true))

(declare-fun b!1303809 () Bool)

(declare-fun res!584422 () Bool)

(declare-fun e!836148 () Bool)

(assert (=> b!1303809 (=> res!584422 e!836148)))

(declare-datatypes ((List!13202 0))(
  ( (Nil!13136) (Cons!13136 (h!18537 (_ BitVec 16)) (t!117763 List!13202)) )
))
(declare-datatypes ((TokenValue!2361 0))(
  ( (FloatLiteralValue!4722 (text!16972 List!13202)) (TokenValueExt!2360 (__x!8551 Int)) (Broken!11805 (value!74330 List!13202)) (Object!2426) (End!2361) (Def!2361) (Underscore!2361) (Match!2361) (Else!2361) (Error!2361) (Case!2361) (If!2361) (Extends!2361) (Abstract!2361) (Class!2361) (Val!2361) (DelimiterValue!4722 (del!2421 List!13202)) (KeywordValue!2367 (value!74331 List!13202)) (CommentValue!4722 (value!74332 List!13202)) (WhitespaceValue!4722 (value!74333 List!13202)) (IndentationValue!2361 (value!74334 List!13202)) (String!16040) (Int32!2361) (Broken!11806 (value!74335 List!13202)) (Boolean!2362) (Unit!19233) (OperatorValue!2364 (op!2421 List!13202)) (IdentifierValue!4722 (value!74336 List!13202)) (IdentifierValue!4723 (value!74337 List!13202)) (WhitespaceValue!4723 (value!74338 List!13202)) (True!4722) (False!4722) (Broken!11807 (value!74339 List!13202)) (Broken!11808 (value!74340 List!13202)) (True!4723) (RightBrace!2361) (RightBracket!2361) (Colon!2361) (Null!2361) (Comma!2361) (LeftBracket!2361) (False!4723) (LeftBrace!2361) (ImaginaryLiteralValue!2361 (text!16973 List!13202)) (StringLiteralValue!7083 (value!74341 List!13202)) (EOFValue!2361 (value!74342 List!13202)) (IdentValue!2361 (value!74343 List!13202)) (DelimiterValue!4723 (value!74344 List!13202)) (DedentValue!2361 (value!74345 List!13202)) (NewLineValue!2361 (value!74346 List!13202)) (IntegerValue!7083 (value!74347 (_ BitVec 32)) (text!16974 List!13202)) (IntegerValue!7084 (value!74348 Int) (text!16975 List!13202)) (Times!2361) (Or!2361) (Equal!2361) (Minus!2361) (Broken!11809 (value!74349 List!13202)) (And!2361) (Div!2361) (LessEqual!2361) (Mod!2361) (Concat!5946) (Not!2361) (Plus!2361) (SpaceValue!2361 (value!74350 List!13202)) (IntegerValue!7085 (value!74351 Int) (text!16976 List!13202)) (StringLiteralValue!7084 (text!16977 List!13202)) (FloatLiteralValue!4723 (text!16978 List!13202)) (BytesLiteralValue!2361 (value!74352 List!13202)) (CommentValue!4723 (value!74353 List!13202)) (StringLiteralValue!7085 (value!74354 List!13202)) (ErrorTokenValue!2361 (msg!2422 List!13202)) )
))
(declare-datatypes ((C!7460 0))(
  ( (C!7461 (val!4290 Int)) )
))
(declare-datatypes ((List!13203 0))(
  ( (Nil!13137) (Cons!13137 (h!18538 C!7460) (t!117764 List!13203)) )
))
(declare-datatypes ((IArray!8629 0))(
  ( (IArray!8630 (innerList!4372 List!13203)) )
))
(declare-datatypes ((Conc!4312 0))(
  ( (Node!4312 (left!11297 Conc!4312) (right!11627 Conc!4312) (csize!8854 Int) (cheight!4523 Int)) (Leaf!6644 (xs!7027 IArray!8629) (csize!8855 Int)) (Empty!4312) )
))
(declare-datatypes ((BalanceConc!8564 0))(
  ( (BalanceConc!8565 (c!214276 Conc!4312)) )
))
(declare-datatypes ((Regex!3585 0))(
  ( (ElementMatch!3585 (c!214277 C!7460)) (Concat!5947 (regOne!7682 Regex!3585) (regTwo!7682 Regex!3585)) (EmptyExpr!3585) (Star!3585 (reg!3914 Regex!3585)) (EmptyLang!3585) (Union!3585 (regOne!7683 Regex!3585) (regTwo!7683 Regex!3585)) )
))
(declare-datatypes ((String!16041 0))(
  ( (String!16042 (value!74355 String)) )
))
(declare-datatypes ((TokenValueInjection!4382 0))(
  ( (TokenValueInjection!4383 (toValue!3486 Int) (toChars!3345 Int)) )
))
(declare-datatypes ((Rule!4342 0))(
  ( (Rule!4343 (regex!2271 Regex!3585) (tag!2533 String!16041) (isSeparator!2271 Bool) (transformation!2271 TokenValueInjection!4382)) )
))
(declare-datatypes ((Token!4204 0))(
  ( (Token!4205 (value!74356 TokenValue!2361) (rule!4010 Rule!4342) (size!10708 Int) (originalCharacters!3133 List!13203)) )
))
(declare-datatypes ((List!13204 0))(
  ( (Nil!13138) (Cons!13138 (h!18539 Token!4204) (t!117765 List!13204)) )
))
(declare-datatypes ((IArray!8631 0))(
  ( (IArray!8632 (innerList!4373 List!13204)) )
))
(declare-datatypes ((Conc!4313 0))(
  ( (Node!4313 (left!11298 Conc!4313) (right!11628 Conc!4313) (csize!8856 Int) (cheight!4524 Int)) (Leaf!6645 (xs!7028 IArray!8631) (csize!8857 Int)) (Empty!4313) )
))
(declare-datatypes ((BalanceConc!8566 0))(
  ( (BalanceConc!8567 (c!214278 Conc!4313)) )
))
(declare-datatypes ((tuple2!12730 0))(
  ( (tuple2!12731 (_1!7251 BalanceConc!8566) (_2!7251 BalanceConc!8564)) )
))
(declare-fun lt!428802 () tuple2!12730)

(declare-fun isEmpty!7772 (BalanceConc!8564) Bool)

(assert (=> b!1303809 (= res!584422 (not (isEmpty!7772 (_2!7251 lt!428802))))))

(declare-fun b!1303810 () Bool)

(declare-fun e!836138 () Bool)

(declare-fun e!836137 () Bool)

(assert (=> b!1303810 (= e!836138 e!836137)))

(declare-fun res!584423 () Bool)

(assert (=> b!1303810 (=> res!584423 e!836137)))

(declare-fun lt!428809 () List!13203)

(declare-fun lt!428804 () List!13203)

(declare-fun ++!3342 (List!13203 List!13203) List!13203)

(declare-fun getSuffix!441 (List!13203 List!13203) List!13203)

(assert (=> b!1303810 (= res!584423 (not (= lt!428809 (++!3342 lt!428804 (getSuffix!441 lt!428809 lt!428804)))))))

(declare-fun lambda!51878 () Int)

(declare-fun pickWitness!48 (Int) List!13203)

(assert (=> b!1303810 (= lt!428809 (pickWitness!48 lambda!51878))))

(declare-fun b!1303811 () Bool)

(assert (=> b!1303811 (= e!836148 true)))

(declare-fun lt!428806 () List!13203)

(declare-fun lt!428816 () BalanceConc!8564)

(declare-fun list!4918 (BalanceConc!8564) List!13203)

(assert (=> b!1303811 (= lt!428806 (list!4918 lt!428816))))

(declare-fun b!1303812 () Bool)

(declare-fun res!584427 () Bool)

(declare-fun e!836145 () Bool)

(assert (=> b!1303812 (=> (not res!584427) (not e!836145))))

(declare-datatypes ((LexerInterface!1966 0))(
  ( (LexerInterfaceExt!1963 (__x!8552 Int)) (Lexer!1964) )
))
(declare-fun thiss!19762 () LexerInterface!1966)

(declare-datatypes ((List!13205 0))(
  ( (Nil!13139) (Cons!13139 (h!18540 Rule!4342) (t!117766 List!13205)) )
))
(declare-fun rules!2550 () List!13205)

(declare-fun t2!34 () Token!4204)

(declare-fun rulesProduceIndividualToken!935 (LexerInterface!1966 List!13205 Token!4204) Bool)

(assert (=> b!1303812 (= res!584427 (rulesProduceIndividualToken!935 thiss!19762 rules!2550 t2!34))))

(declare-fun e!836147 () Bool)

(assert (=> b!1303813 (= e!836147 (and tp!380577 tp!380574))))

(declare-fun t1!34 () Token!4204)

(declare-fun tp!380570 () Bool)

(declare-fun e!836144 () Bool)

(declare-fun b!1303814 () Bool)

(declare-fun e!836132 () Bool)

(declare-fun inv!17546 (String!16041) Bool)

(declare-fun inv!17549 (TokenValueInjection!4382) Bool)

(assert (=> b!1303814 (= e!836132 (and tp!380570 (inv!17546 (tag!2533 (rule!4010 t1!34))) (inv!17549 (transformation!2271 (rule!4010 t1!34))) e!836144))))

(declare-fun b!1303815 () Bool)

(declare-fun e!836127 () Bool)

(declare-fun e!836142 () Bool)

(assert (=> b!1303815 (= e!836127 e!836142)))

(declare-fun res!584433 () Bool)

(assert (=> b!1303815 (=> res!584433 e!836142)))

(declare-fun lambda!51879 () Int)

(declare-fun lt!428810 () Regex!3585)

(declare-datatypes ((List!13206 0))(
  ( (Nil!13140) (Cons!13140 (h!18541 Regex!3585) (t!117767 List!13206)) )
))
(declare-fun contains!2226 (List!13206 Regex!3585) Bool)

(declare-fun map!2873 (List!13205 Int) List!13206)

(assert (=> b!1303815 (= res!584433 (not (contains!2226 (map!2873 rules!2550 lambda!51879) lt!428810)))))

(declare-fun lambda!51880 () Int)

(declare-fun getWitness!136 (List!13206 Int) Regex!3585)

(assert (=> b!1303815 (= lt!428810 (getWitness!136 (map!2873 rules!2550 lambda!51879) lambda!51880))))

(declare-fun b!1303817 () Bool)

(declare-fun res!584419 () Bool)

(declare-fun e!836143 () Bool)

(assert (=> b!1303817 (=> res!584419 e!836143)))

(declare-fun lt!428812 () C!7460)

(declare-fun contains!2227 (List!13203 C!7460) Bool)

(assert (=> b!1303817 (= res!584419 (not (contains!2227 lt!428809 lt!428812)))))

(declare-fun b!1303818 () Bool)

(declare-fun e!836133 () Bool)

(declare-fun tp!380573 () Bool)

(declare-fun e!836139 () Bool)

(assert (=> b!1303818 (= e!836133 (and tp!380573 (inv!17546 (tag!2533 (h!18540 rules!2550))) (inv!17549 (transformation!2271 (h!18540 rules!2550))) e!836139))))

(declare-fun b!1303819 () Bool)

(declare-fun res!584424 () Bool)

(assert (=> b!1303819 (=> (not res!584424) (not e!836145))))

(declare-fun rulesInvariant!1836 (LexerInterface!1966 List!13205) Bool)

(assert (=> b!1303819 (= res!584424 (rulesInvariant!1836 thiss!19762 rules!2550))))

(declare-fun b!1303820 () Bool)

(assert (=> b!1303820 (= e!836137 e!836143)))

(declare-fun res!584425 () Bool)

(assert (=> b!1303820 (=> res!584425 e!836143)))

(declare-fun lt!428807 () C!7460)

(assert (=> b!1303820 (= res!584425 (not (contains!2227 lt!428804 lt!428807)))))

(declare-fun lt!428815 () BalanceConc!8564)

(declare-fun apply!2937 (BalanceConc!8564 Int) C!7460)

(assert (=> b!1303820 (= lt!428807 (apply!2937 lt!428815 0))))

(declare-fun b!1303821 () Bool)

(declare-fun e!836141 () Bool)

(declare-fun e!836131 () Bool)

(assert (=> b!1303821 (= e!836141 e!836131)))

(declare-fun res!584421 () Bool)

(assert (=> b!1303821 (=> (not res!584421) (not e!836131))))

(declare-fun lt!428817 () Regex!3585)

(declare-fun prefixMatch!98 (Regex!3585 List!13203) Bool)

(assert (=> b!1303821 (= res!584421 (prefixMatch!98 lt!428817 lt!428804))))

(declare-fun rulesRegex!156 (LexerInterface!1966 List!13205) Regex!3585)

(assert (=> b!1303821 (= lt!428817 (rulesRegex!156 thiss!19762 rules!2550))))

(declare-fun lt!428813 () List!13203)

(assert (=> b!1303821 (= lt!428804 (++!3342 lt!428813 (Cons!13137 lt!428812 Nil!13137)))))

(declare-fun lt!428808 () BalanceConc!8564)

(assert (=> b!1303821 (= lt!428812 (apply!2937 lt!428808 0))))

(assert (=> b!1303821 (= lt!428813 (list!4918 lt!428815))))

(declare-fun charsOf!1243 (Token!4204) BalanceConc!8564)

(assert (=> b!1303821 (= lt!428815 (charsOf!1243 t1!34))))

(declare-fun b!1303822 () Bool)

(declare-fun res!584437 () Bool)

(assert (=> b!1303822 (=> (not res!584437) (not e!836141))))

(declare-fun sepAndNonSepRulesDisjointChars!644 (List!13205 List!13205) Bool)

(assert (=> b!1303822 (= res!584437 (sepAndNonSepRulesDisjointChars!644 rules!2550 rules!2550))))

(declare-fun e!836135 () Bool)

(declare-fun e!836125 () Bool)

(declare-fun tp!380568 () Bool)

(declare-fun b!1303823 () Bool)

(declare-fun inv!21 (TokenValue!2361) Bool)

(assert (=> b!1303823 (= e!836135 (and (inv!21 (value!74356 t2!34)) e!836125 tp!380568))))

(declare-fun b!1303824 () Bool)

(declare-fun e!836129 () Bool)

(assert (=> b!1303824 (= e!836129 e!836148)))

(declare-fun res!584438 () Bool)

(assert (=> b!1303824 (=> res!584438 e!836148)))

(declare-fun list!4919 (BalanceConc!8566) List!13204)

(assert (=> b!1303824 (= res!584438 (not (= (list!4919 (_1!7251 lt!428802)) (Cons!13138 t1!34 Nil!13138))))))

(declare-fun lex!801 (LexerInterface!1966 List!13205 BalanceConc!8564) tuple2!12730)

(assert (=> b!1303824 (= lt!428802 (lex!801 thiss!19762 rules!2550 lt!428816))))

(declare-fun print!740 (LexerInterface!1966 BalanceConc!8566) BalanceConc!8564)

(declare-fun singletonSeq!840 (Token!4204) BalanceConc!8566)

(assert (=> b!1303824 (= lt!428816 (print!740 thiss!19762 (singletonSeq!840 t1!34)))))

(declare-fun lt!428818 () Rule!4342)

(declare-fun lambda!51881 () Int)

(declare-fun getWitness!137 (List!13205 Int) Rule!4342)

(assert (=> b!1303824 (= lt!428818 (getWitness!137 rules!2550 lambda!51881))))

(assert (=> b!1303825 (= e!836142 e!836129)))

(declare-fun res!584435 () Bool)

(assert (=> b!1303825 (=> res!584435 e!836129)))

(declare-fun exists!244 (List!13205 Int) Bool)

(assert (=> b!1303825 (= res!584435 (not (exists!244 rules!2550 lambda!51881)))))

(assert (=> b!1303825 (exists!244 rules!2550 lambda!51881)))

(declare-datatypes ((Unit!19234 0))(
  ( (Unit!19235) )
))
(declare-fun lt!428811 () Unit!19234)

(declare-fun lemmaMapContains!14 (List!13205 Int Regex!3585) Unit!19234)

(assert (=> b!1303825 (= lt!428811 (lemmaMapContains!14 rules!2550 lambda!51879 lt!428810))))

(declare-fun b!1303826 () Bool)

(declare-fun res!584417 () Bool)

(assert (=> b!1303826 (=> res!584417 e!836143)))

(assert (=> b!1303826 (= res!584417 (not (contains!2227 lt!428804 lt!428812)))))

(declare-fun b!1303827 () Bool)

(declare-fun res!584430 () Bool)

(assert (=> b!1303827 (=> (not res!584430) (not e!836141))))

(declare-fun separableTokensPredicate!249 (LexerInterface!1966 Token!4204 Token!4204 List!13205) Bool)

(assert (=> b!1303827 (= res!584430 (not (separableTokensPredicate!249 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1303828 (= e!836143 e!836127)))

(declare-fun res!584431 () Bool)

(assert (=> b!1303828 (=> res!584431 e!836127)))

(declare-fun exists!245 (List!13206 Int) Bool)

(assert (=> b!1303828 (= res!584431 (not (exists!245 (map!2873 rules!2550 lambda!51879) lambda!51880)))))

(declare-fun lt!428803 () List!13206)

(assert (=> b!1303828 (exists!245 lt!428803 lambda!51880)))

(declare-fun lt!428805 () Unit!19234)

(declare-fun matchRGenUnionSpec!22 (Regex!3585 List!13206 List!13203) Unit!19234)

(assert (=> b!1303828 (= lt!428805 (matchRGenUnionSpec!22 lt!428817 lt!428803 lt!428809))))

(assert (=> b!1303828 (= lt!428803 (map!2873 rules!2550 lambda!51879))))

(declare-fun b!1303829 () Bool)

(declare-fun res!584420 () Bool)

(assert (=> b!1303829 (=> (not res!584420) (not e!836145))))

(assert (=> b!1303829 (= res!584420 (not (= (isSeparator!2271 (rule!4010 t1!34)) (isSeparator!2271 (rule!4010 t2!34)))))))

(assert (=> b!1303830 (= e!836144 (and tp!380572 tp!380571))))

(declare-fun b!1303831 () Bool)

(declare-fun res!584428 () Bool)

(assert (=> b!1303831 (=> (not res!584428) (not e!836145))))

(declare-fun isEmpty!7773 (List!13205) Bool)

(assert (=> b!1303831 (= res!584428 (not (isEmpty!7773 rules!2550)))))

(declare-fun e!836130 () Bool)

(declare-fun tp!380567 () Bool)

(declare-fun b!1303832 () Bool)

(assert (=> b!1303832 (= e!836130 (and (inv!21 (value!74356 t1!34)) e!836132 tp!380567))))

(declare-fun tp!380576 () Bool)

(declare-fun b!1303833 () Bool)

(assert (=> b!1303833 (= e!836125 (and tp!380576 (inv!17546 (tag!2533 (rule!4010 t2!34))) (inv!17549 (transformation!2271 (rule!4010 t2!34))) e!836147))))

(assert (=> b!1303834 (= e!836131 (not e!836138))))

(declare-fun res!584418 () Bool)

(assert (=> b!1303834 (=> res!584418 e!836138)))

(declare-fun Exists!743 (Int) Bool)

(assert (=> b!1303834 (= res!584418 (not (Exists!743 lambda!51878)))))

(assert (=> b!1303834 (Exists!743 lambda!51878)))

(declare-fun lt!428814 () Unit!19234)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!61 (Regex!3585 List!13203) Unit!19234)

(assert (=> b!1303834 (= lt!428814 (lemmaPrefixMatchThenExistsStringThatMatches!61 lt!428817 lt!428804))))

(declare-fun b!1303835 () Bool)

(declare-fun e!836128 () Bool)

(declare-fun tp!380569 () Bool)

(assert (=> b!1303835 (= e!836128 (and e!836133 tp!380569))))

(declare-fun b!1303836 () Bool)

(assert (=> b!1303836 (= e!836145 e!836141)))

(declare-fun res!584436 () Bool)

(assert (=> b!1303836 (=> (not res!584436) (not e!836141))))

(declare-fun size!10709 (BalanceConc!8564) Int)

(assert (=> b!1303836 (= res!584436 (> (size!10709 lt!428808) 0))))

(assert (=> b!1303836 (= lt!428808 (charsOf!1243 t2!34))))

(assert (=> b!1303837 (= e!836139 (and tp!380578 tp!380575))))

(declare-fun b!1303816 () Bool)

(declare-fun res!584426 () Bool)

(assert (=> b!1303816 (=> res!584426 e!836143)))

(assert (=> b!1303816 (= res!584426 (not (contains!2227 lt!428809 lt!428807)))))

(declare-fun res!584429 () Bool)

(assert (=> start!115054 (=> (not res!584429) (not e!836145))))

(get-info :version)

(assert (=> start!115054 (= res!584429 ((_ is Lexer!1964) thiss!19762))))

(assert (=> start!115054 e!836145))

(assert (=> start!115054 true))

(assert (=> start!115054 e!836128))

(declare-fun inv!17550 (Token!4204) Bool)

(assert (=> start!115054 (and (inv!17550 t1!34) e!836130)))

(assert (=> start!115054 (and (inv!17550 t2!34) e!836135)))

(declare-fun b!1303838 () Bool)

(declare-fun res!584434 () Bool)

(assert (=> b!1303838 (=> (not res!584434) (not e!836145))))

(assert (=> b!1303838 (= res!584434 (rulesProduceIndividualToken!935 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1303839 () Bool)

(declare-fun res!584432 () Bool)

(assert (=> b!1303839 (=> res!584432 e!836143)))

(declare-fun matchR!1587 (Regex!3585 List!13203) Bool)

(assert (=> b!1303839 (= res!584432 (not (matchR!1587 lt!428817 lt!428809)))))

(assert (= (and start!115054 res!584429) b!1303831))

(assert (= (and b!1303831 res!584428) b!1303819))

(assert (= (and b!1303819 res!584424) b!1303838))

(assert (= (and b!1303838 res!584434) b!1303812))

(assert (= (and b!1303812 res!584427) b!1303829))

(assert (= (and b!1303829 res!584420) b!1303836))

(assert (= (and b!1303836 res!584436) b!1303822))

(assert (= (and b!1303822 res!584437) b!1303827))

(assert (= (and b!1303827 res!584430) b!1303821))

(assert (= (and b!1303821 res!584421) b!1303834))

(assert (= (and b!1303834 (not res!584418)) b!1303810))

(assert (= (and b!1303810 (not res!584423)) b!1303820))

(assert (= (and b!1303820 (not res!584425)) b!1303816))

(assert (= (and b!1303816 (not res!584426)) b!1303826))

(assert (= (and b!1303826 (not res!584417)) b!1303817))

(assert (= (and b!1303817 (not res!584419)) b!1303839))

(assert (= (and b!1303839 (not res!584432)) b!1303828))

(assert (= (and b!1303828 (not res!584431)) b!1303815))

(assert (= (and b!1303815 (not res!584433)) b!1303825))

(assert (= (and b!1303825 (not res!584435)) b!1303824))

(assert (= (and b!1303824 (not res!584438)) b!1303809))

(assert (= (and b!1303809 (not res!584422)) b!1303811))

(assert (= b!1303818 b!1303837))

(assert (= b!1303835 b!1303818))

(assert (= (and start!115054 ((_ is Cons!13139) rules!2550)) b!1303835))

(assert (= b!1303814 b!1303830))

(assert (= b!1303832 b!1303814))

(assert (= start!115054 b!1303832))

(assert (= b!1303833 b!1303813))

(assert (= b!1303823 b!1303833))

(assert (= start!115054 b!1303823))

(declare-fun m!1455075 () Bool)

(assert (=> b!1303834 m!1455075))

(assert (=> b!1303834 m!1455075))

(declare-fun m!1455077 () Bool)

(assert (=> b!1303834 m!1455077))

(declare-fun m!1455079 () Bool)

(assert (=> b!1303812 m!1455079))

(declare-fun m!1455081 () Bool)

(assert (=> b!1303809 m!1455081))

(declare-fun m!1455083 () Bool)

(assert (=> b!1303819 m!1455083))

(declare-fun m!1455085 () Bool)

(assert (=> b!1303821 m!1455085))

(declare-fun m!1455087 () Bool)

(assert (=> b!1303821 m!1455087))

(declare-fun m!1455089 () Bool)

(assert (=> b!1303821 m!1455089))

(declare-fun m!1455091 () Bool)

(assert (=> b!1303821 m!1455091))

(declare-fun m!1455093 () Bool)

(assert (=> b!1303821 m!1455093))

(declare-fun m!1455095 () Bool)

(assert (=> b!1303821 m!1455095))

(declare-fun m!1455097 () Bool)

(assert (=> b!1303833 m!1455097))

(declare-fun m!1455099 () Bool)

(assert (=> b!1303833 m!1455099))

(declare-fun m!1455101 () Bool)

(assert (=> b!1303811 m!1455101))

(declare-fun m!1455103 () Bool)

(assert (=> b!1303838 m!1455103))

(declare-fun m!1455105 () Bool)

(assert (=> b!1303824 m!1455105))

(declare-fun m!1455107 () Bool)

(assert (=> b!1303824 m!1455107))

(declare-fun m!1455109 () Bool)

(assert (=> b!1303824 m!1455109))

(declare-fun m!1455111 () Bool)

(assert (=> b!1303824 m!1455111))

(assert (=> b!1303824 m!1455109))

(declare-fun m!1455113 () Bool)

(assert (=> b!1303824 m!1455113))

(declare-fun m!1455115 () Bool)

(assert (=> b!1303817 m!1455115))

(declare-fun m!1455117 () Bool)

(assert (=> b!1303820 m!1455117))

(declare-fun m!1455119 () Bool)

(assert (=> b!1303820 m!1455119))

(declare-fun m!1455121 () Bool)

(assert (=> b!1303832 m!1455121))

(declare-fun m!1455123 () Bool)

(assert (=> b!1303828 m!1455123))

(assert (=> b!1303828 m!1455123))

(declare-fun m!1455125 () Bool)

(assert (=> b!1303828 m!1455125))

(declare-fun m!1455127 () Bool)

(assert (=> b!1303828 m!1455127))

(assert (=> b!1303828 m!1455123))

(declare-fun m!1455129 () Bool)

(assert (=> b!1303828 m!1455129))

(declare-fun m!1455131 () Bool)

(assert (=> b!1303825 m!1455131))

(assert (=> b!1303825 m!1455131))

(declare-fun m!1455133 () Bool)

(assert (=> b!1303825 m!1455133))

(assert (=> b!1303815 m!1455123))

(assert (=> b!1303815 m!1455123))

(declare-fun m!1455135 () Bool)

(assert (=> b!1303815 m!1455135))

(assert (=> b!1303815 m!1455123))

(assert (=> b!1303815 m!1455123))

(declare-fun m!1455137 () Bool)

(assert (=> b!1303815 m!1455137))

(declare-fun m!1455139 () Bool)

(assert (=> b!1303826 m!1455139))

(declare-fun m!1455141 () Bool)

(assert (=> b!1303836 m!1455141))

(declare-fun m!1455143 () Bool)

(assert (=> b!1303836 m!1455143))

(declare-fun m!1455145 () Bool)

(assert (=> b!1303823 m!1455145))

(declare-fun m!1455147 () Bool)

(assert (=> b!1303810 m!1455147))

(assert (=> b!1303810 m!1455147))

(declare-fun m!1455149 () Bool)

(assert (=> b!1303810 m!1455149))

(declare-fun m!1455151 () Bool)

(assert (=> b!1303810 m!1455151))

(declare-fun m!1455153 () Bool)

(assert (=> b!1303839 m!1455153))

(declare-fun m!1455155 () Bool)

(assert (=> b!1303827 m!1455155))

(declare-fun m!1455157 () Bool)

(assert (=> b!1303816 m!1455157))

(declare-fun m!1455159 () Bool)

(assert (=> b!1303831 m!1455159))

(declare-fun m!1455161 () Bool)

(assert (=> b!1303822 m!1455161))

(declare-fun m!1455163 () Bool)

(assert (=> b!1303818 m!1455163))

(declare-fun m!1455165 () Bool)

(assert (=> b!1303818 m!1455165))

(declare-fun m!1455167 () Bool)

(assert (=> b!1303814 m!1455167))

(declare-fun m!1455169 () Bool)

(assert (=> b!1303814 m!1455169))

(declare-fun m!1455171 () Bool)

(assert (=> start!115054 m!1455171))

(declare-fun m!1455173 () Bool)

(assert (=> start!115054 m!1455173))

(check-sat b_and!87063 (not b!1303817) (not b!1303822) b_and!87065 (not b!1303839) (not b!1303815) (not b!1303820) (not b!1303814) (not b!1303811) (not b_next!31917) (not b_next!31911) (not b!1303824) (not b!1303812) (not start!115054) (not b!1303828) (not b!1303823) (not b!1303834) (not b!1303816) (not b!1303818) (not b!1303832) (not b_next!31907) (not b!1303825) (not b!1303810) (not b!1303836) (not b!1303833) (not b!1303826) b_and!87057 (not b!1303819) b_and!87055 (not b!1303838) (not b!1303831) (not b!1303835) (not b!1303821) b_and!87061 (not b!1303827) (not b_next!31909) (not b!1303809) (not b_next!31915) (not b_next!31913) b_and!87059)
(check-sat b_and!87063 (not b_next!31917) (not b_next!31911) b_and!87065 (not b_next!31907) b_and!87057 b_and!87055 b_and!87061 (not b_next!31909) (not b_next!31915) (not b_next!31913) b_and!87059)
