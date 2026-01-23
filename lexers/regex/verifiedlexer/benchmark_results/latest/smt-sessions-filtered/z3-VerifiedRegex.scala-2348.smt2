; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116222 () Bool)

(assert start!116222)

(declare-fun b!1313802 () Bool)

(declare-fun b_free!31659 () Bool)

(declare-fun b_next!32363 () Bool)

(assert (=> b!1313802 (= b_free!31659 (not b_next!32363))))

(declare-fun tp!382569 () Bool)

(declare-fun b_and!87767 () Bool)

(assert (=> b!1313802 (= tp!382569 b_and!87767)))

(declare-fun b_free!31661 () Bool)

(declare-fun b_next!32365 () Bool)

(assert (=> b!1313802 (= b_free!31661 (not b_next!32365))))

(declare-fun tp!382560 () Bool)

(declare-fun b_and!87769 () Bool)

(assert (=> b!1313802 (= tp!382560 b_and!87769)))

(declare-fun b!1313804 () Bool)

(declare-fun b_free!31663 () Bool)

(declare-fun b_next!32367 () Bool)

(assert (=> b!1313804 (= b_free!31663 (not b_next!32367))))

(declare-fun tp!382566 () Bool)

(declare-fun b_and!87771 () Bool)

(assert (=> b!1313804 (= tp!382566 b_and!87771)))

(declare-fun b_free!31665 () Bool)

(declare-fun b_next!32369 () Bool)

(assert (=> b!1313804 (= b_free!31665 (not b_next!32369))))

(declare-fun tp!382570 () Bool)

(declare-fun b_and!87773 () Bool)

(assert (=> b!1313804 (= tp!382570 b_and!87773)))

(declare-fun b!1313790 () Bool)

(declare-fun b_free!31667 () Bool)

(declare-fun b_next!32371 () Bool)

(assert (=> b!1313790 (= b_free!31667 (not b_next!32371))))

(declare-fun tp!382565 () Bool)

(declare-fun b_and!87775 () Bool)

(assert (=> b!1313790 (= tp!382565 b_and!87775)))

(declare-fun b_free!31669 () Bool)

(declare-fun b_next!32373 () Bool)

(assert (=> b!1313790 (= b_free!31669 (not b_next!32373))))

(declare-fun tp!382568 () Bool)

(declare-fun b_and!87777 () Bool)

(assert (=> b!1313790 (= tp!382568 b_and!87777)))

(declare-fun b!1313794 () Bool)

(assert (=> b!1313794 true))

(assert (=> b!1313794 true))

(declare-fun b!1313801 () Bool)

(assert (=> b!1313801 true))

(declare-fun b!1313803 () Bool)

(assert (=> b!1313803 true))

(declare-fun bs!330184 () Bool)

(declare-fun b!1313797 () Bool)

(assert (= bs!330184 (and b!1313797 b!1313803)))

(declare-fun lambda!53329 () Int)

(declare-fun lambda!53328 () Int)

(assert (=> bs!330184 (not (= lambda!53329 lambda!53328))))

(assert (=> b!1313797 true))

(declare-fun e!842323 () Bool)

(assert (=> b!1313790 (= e!842323 (and tp!382565 tp!382568))))

(declare-fun e!842332 () Bool)

(declare-fun tp!382559 () Bool)

(declare-fun b!1313791 () Bool)

(declare-datatypes ((List!13384 0))(
  ( (Nil!13318) (Cons!13318 (h!18719 (_ BitVec 16)) (t!118221 List!13384)) )
))
(declare-datatypes ((TokenValue!2395 0))(
  ( (FloatLiteralValue!4790 (text!17210 List!13384)) (TokenValueExt!2394 (__x!8619 Int)) (Broken!11975 (value!75299 List!13384)) (Object!2460) (End!2395) (Def!2395) (Underscore!2395) (Match!2395) (Else!2395) (Error!2395) (Case!2395) (If!2395) (Extends!2395) (Abstract!2395) (Class!2395) (Val!2395) (DelimiterValue!4790 (del!2455 List!13384)) (KeywordValue!2401 (value!75300 List!13384)) (CommentValue!4790 (value!75301 List!13384)) (WhitespaceValue!4790 (value!75302 List!13384)) (IndentationValue!2395 (value!75303 List!13384)) (String!16210) (Int32!2395) (Broken!11976 (value!75304 List!13384)) (Boolean!2396) (Unit!19379) (OperatorValue!2398 (op!2455 List!13384)) (IdentifierValue!4790 (value!75305 List!13384)) (IdentifierValue!4791 (value!75306 List!13384)) (WhitespaceValue!4791 (value!75307 List!13384)) (True!4790) (False!4790) (Broken!11977 (value!75308 List!13384)) (Broken!11978 (value!75309 List!13384)) (True!4791) (RightBrace!2395) (RightBracket!2395) (Colon!2395) (Null!2395) (Comma!2395) (LeftBracket!2395) (False!4791) (LeftBrace!2395) (ImaginaryLiteralValue!2395 (text!17211 List!13384)) (StringLiteralValue!7185 (value!75310 List!13384)) (EOFValue!2395 (value!75311 List!13384)) (IdentValue!2395 (value!75312 List!13384)) (DelimiterValue!4791 (value!75313 List!13384)) (DedentValue!2395 (value!75314 List!13384)) (NewLineValue!2395 (value!75315 List!13384)) (IntegerValue!7185 (value!75316 (_ BitVec 32)) (text!17212 List!13384)) (IntegerValue!7186 (value!75317 Int) (text!17213 List!13384)) (Times!2395) (Or!2395) (Equal!2395) (Minus!2395) (Broken!11979 (value!75318 List!13384)) (And!2395) (Div!2395) (LessEqual!2395) (Mod!2395) (Concat!6014) (Not!2395) (Plus!2395) (SpaceValue!2395 (value!75319 List!13384)) (IntegerValue!7187 (value!75320 Int) (text!17214 List!13384)) (StringLiteralValue!7186 (text!17215 List!13384)) (FloatLiteralValue!4791 (text!17216 List!13384)) (BytesLiteralValue!2395 (value!75321 List!13384)) (CommentValue!4791 (value!75322 List!13384)) (StringLiteralValue!7187 (value!75323 List!13384)) (ErrorTokenValue!2395 (msg!2456 List!13384)) )
))
(declare-datatypes ((C!7528 0))(
  ( (C!7529 (val!4324 Int)) )
))
(declare-datatypes ((List!13385 0))(
  ( (Nil!13319) (Cons!13319 (h!18720 C!7528) (t!118222 List!13385)) )
))
(declare-datatypes ((IArray!8765 0))(
  ( (IArray!8766 (innerList!4440 List!13385)) )
))
(declare-datatypes ((Conc!4380 0))(
  ( (Node!4380 (left!11450 Conc!4380) (right!11780 Conc!4380) (csize!8990 Int) (cheight!4591 Int)) (Leaf!6729 (xs!7095 IArray!8765) (csize!8991 Int)) (Empty!4380) )
))
(declare-datatypes ((BalanceConc!8700 0))(
  ( (BalanceConc!8701 (c!215588 Conc!4380)) )
))
(declare-datatypes ((Regex!3619 0))(
  ( (ElementMatch!3619 (c!215589 C!7528)) (Concat!6015 (regOne!7750 Regex!3619) (regTwo!7750 Regex!3619)) (EmptyExpr!3619) (Star!3619 (reg!3948 Regex!3619)) (EmptyLang!3619) (Union!3619 (regOne!7751 Regex!3619) (regTwo!7751 Regex!3619)) )
))
(declare-datatypes ((String!16211 0))(
  ( (String!16212 (value!75324 String)) )
))
(declare-datatypes ((TokenValueInjection!4450 0))(
  ( (TokenValueInjection!4451 (toValue!3528 Int) (toChars!3387 Int)) )
))
(declare-datatypes ((Rule!4410 0))(
  ( (Rule!4411 (regex!2305 Regex!3619) (tag!2567 String!16211) (isSeparator!2305 Bool) (transformation!2305 TokenValueInjection!4450)) )
))
(declare-datatypes ((List!13386 0))(
  ( (Nil!13320) (Cons!13320 (h!18721 Rule!4410) (t!118223 List!13386)) )
))
(declare-fun rules!2550 () List!13386)

(declare-fun e!842319 () Bool)

(declare-fun inv!17693 (String!16211) Bool)

(declare-fun inv!17696 (TokenValueInjection!4450) Bool)

(assert (=> b!1313791 (= e!842319 (and tp!382559 (inv!17693 (tag!2567 (h!18721 rules!2550))) (inv!17696 (transformation!2305 (h!18721 rules!2550))) e!842332))))

(declare-fun res!590071 () Bool)

(declare-fun e!842316 () Bool)

(assert (=> start!116222 (=> (not res!590071) (not e!842316))))

(declare-datatypes ((LexerInterface!2000 0))(
  ( (LexerInterfaceExt!1997 (__x!8620 Int)) (Lexer!1998) )
))
(declare-fun thiss!19762 () LexerInterface!2000)

(get-info :version)

(assert (=> start!116222 (= res!590071 ((_ is Lexer!1998) thiss!19762))))

(assert (=> start!116222 e!842316))

(assert (=> start!116222 true))

(declare-fun e!842325 () Bool)

(assert (=> start!116222 e!842325))

(declare-datatypes ((Token!4272 0))(
  ( (Token!4273 (value!75325 TokenValue!2395) (rule!4046 Rule!4410) (size!10828 Int) (originalCharacters!3167 List!13385)) )
))
(declare-fun t1!34 () Token!4272)

(declare-fun e!842321 () Bool)

(declare-fun inv!17697 (Token!4272) Bool)

(assert (=> start!116222 (and (inv!17697 t1!34) e!842321)))

(declare-fun t2!34 () Token!4272)

(declare-fun e!842313 () Bool)

(assert (=> start!116222 (and (inv!17697 t2!34) e!842313)))

(declare-fun b!1313792 () Bool)

(declare-fun res!590076 () Bool)

(assert (=> b!1313792 (=> (not res!590076) (not e!842316))))

(declare-fun rulesProduceIndividualToken!969 (LexerInterface!2000 List!13386 Token!4272) Bool)

(assert (=> b!1313792 (= res!590076 (rulesProduceIndividualToken!969 thiss!19762 rules!2550 t1!34))))

(declare-fun e!842317 () Bool)

(declare-fun tp!382561 () Bool)

(declare-fun b!1313793 () Bool)

(declare-fun inv!21 (TokenValue!2395) Bool)

(assert (=> b!1313793 (= e!842321 (and (inv!21 (value!75325 t1!34)) e!842317 tp!382561))))

(declare-fun e!842314 () Bool)

(declare-fun e!842322 () Bool)

(assert (=> b!1313794 (= e!842314 (not e!842322))))

(declare-fun res!590083 () Bool)

(assert (=> b!1313794 (=> res!590083 e!842322)))

(declare-fun lambda!53325 () Int)

(declare-fun Exists!777 (Int) Bool)

(assert (=> b!1313794 (= res!590083 (not (Exists!777 lambda!53325)))))

(assert (=> b!1313794 (Exists!777 lambda!53325)))

(declare-datatypes ((Unit!19380 0))(
  ( (Unit!19381) )
))
(declare-fun lt!433050 () Unit!19380)

(declare-fun lt!433041 () Regex!3619)

(declare-fun lt!433042 () List!13385)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!95 (Regex!3619 List!13385) Unit!19380)

(assert (=> b!1313794 (= lt!433050 (lemmaPrefixMatchThenExistsStringThatMatches!95 lt!433041 lt!433042))))

(declare-fun b!1313795 () Bool)

(declare-fun e!842318 () Bool)

(assert (=> b!1313795 (= e!842316 e!842318)))

(declare-fun res!590082 () Bool)

(assert (=> b!1313795 (=> (not res!590082) (not e!842318))))

(declare-fun lt!433049 () BalanceConc!8700)

(declare-fun size!10829 (BalanceConc!8700) Int)

(assert (=> b!1313795 (= res!590082 (> (size!10829 lt!433049) 0))))

(declare-fun charsOf!1277 (Token!4272) BalanceConc!8700)

(assert (=> b!1313795 (= lt!433049 (charsOf!1277 t2!34))))

(declare-fun b!1313796 () Bool)

(declare-fun res!590067 () Bool)

(declare-fun e!842308 () Bool)

(assert (=> b!1313796 (=> res!590067 e!842308)))

(declare-fun lt!433047 () BalanceConc!8700)

(declare-datatypes ((List!13387 0))(
  ( (Nil!13321) (Cons!13321 (h!18722 Token!4272) (t!118224 List!13387)) )
))
(declare-fun lt!433057 () List!13387)

(declare-datatypes ((tuple2!12934 0))(
  ( (tuple2!12935 (_1!7353 List!13387) (_2!7353 List!13385)) )
))
(declare-fun lexList!538 (LexerInterface!2000 List!13386 List!13385) tuple2!12934)

(declare-fun list!5010 (BalanceConc!8700) List!13385)

(assert (=> b!1313796 (= res!590067 (not (= (lexList!538 thiss!19762 rules!2550 (list!5010 lt!433047)) (tuple2!12935 lt!433057 Nil!13319))))))

(declare-fun e!842315 () Bool)

(assert (=> b!1313797 (= e!842315 true)))

(declare-fun lt!433056 () Unit!19380)

(declare-fun forallContained!556 (List!13386 Int Rule!4410) Unit!19380)

(assert (=> b!1313797 (= lt!433056 (forallContained!556 rules!2550 lambda!53329 (rule!4046 t1!34)))))

(declare-fun lt!433058 () Rule!4410)

(declare-fun lt!433060 () Unit!19380)

(assert (=> b!1313797 (= lt!433060 (forallContained!556 rules!2550 lambda!53329 lt!433058))))

(declare-fun b!1313798 () Bool)

(declare-fun res!590066 () Bool)

(assert (=> b!1313798 (=> (not res!590066) (not e!842318))))

(declare-fun separableTokensPredicate!283 (LexerInterface!2000 Token!4272 Token!4272 List!13386) Bool)

(assert (=> b!1313798 (= res!590066 (not (separableTokensPredicate!283 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1313799 () Bool)

(declare-fun res!590084 () Bool)

(assert (=> b!1313799 (=> (not res!590084) (not e!842316))))

(declare-fun rulesInvariant!1870 (LexerInterface!2000 List!13386) Bool)

(assert (=> b!1313799 (= res!590084 (rulesInvariant!1870 thiss!19762 rules!2550))))

(declare-fun b!1313800 () Bool)

(declare-fun e!842311 () Bool)

(declare-fun e!842326 () Bool)

(assert (=> b!1313800 (= e!842311 e!842326)))

(declare-fun res!590063 () Bool)

(assert (=> b!1313800 (=> res!590063 e!842326)))

(declare-fun lt!433039 () C!7528)

(declare-fun contains!2327 (List!13385 C!7528) Bool)

(assert (=> b!1313800 (= res!590063 (not (contains!2327 lt!433042 lt!433039)))))

(declare-fun lt!433054 () BalanceConc!8700)

(declare-fun apply!3015 (BalanceConc!8700 Int) C!7528)

(assert (=> b!1313800 (= lt!433039 (apply!3015 lt!433054 0))))

(declare-fun e!842327 () Bool)

(assert (=> b!1313801 (= e!842326 e!842327)))

(declare-fun res!590073 () Bool)

(assert (=> b!1313801 (=> res!590073 e!842327)))

(declare-fun lambda!53327 () Int)

(declare-fun lambda!53326 () Int)

(declare-datatypes ((List!13388 0))(
  ( (Nil!13322) (Cons!13322 (h!18723 Regex!3619) (t!118225 List!13388)) )
))
(declare-fun exists!312 (List!13388 Int) Bool)

(declare-fun map!2924 (List!13386 Int) List!13388)

(assert (=> b!1313801 (= res!590073 (not (exists!312 (map!2924 rules!2550 lambda!53326) lambda!53327)))))

(declare-fun lt!433040 () List!13388)

(assert (=> b!1313801 (exists!312 lt!433040 lambda!53327)))

(declare-fun lt!433053 () List!13385)

(declare-fun lt!433046 () Unit!19380)

(declare-fun matchRGenUnionSpec!56 (Regex!3619 List!13388 List!13385) Unit!19380)

(assert (=> b!1313801 (= lt!433046 (matchRGenUnionSpec!56 lt!433041 lt!433040 lt!433053))))

(assert (=> b!1313801 (= lt!433040 (map!2924 rules!2550 lambda!53326))))

(assert (=> b!1313802 (= e!842332 (and tp!382569 tp!382560))))

(declare-fun e!842312 () Bool)

(declare-fun e!842329 () Bool)

(assert (=> b!1313803 (= e!842312 e!842329)))

(declare-fun res!590079 () Bool)

(assert (=> b!1313803 (=> res!590079 e!842329)))

(declare-fun exists!313 (List!13386 Int) Bool)

(assert (=> b!1313803 (= res!590079 (not (exists!313 rules!2550 lambda!53328)))))

(assert (=> b!1313803 (exists!313 rules!2550 lambda!53328)))

(declare-fun lt!433043 () Regex!3619)

(declare-fun lt!433048 () Unit!19380)

(declare-fun lemmaMapContains!48 (List!13386 Int Regex!3619) Unit!19380)

(assert (=> b!1313803 (= lt!433048 (lemmaMapContains!48 rules!2550 lambda!53326 lt!433043))))

(declare-fun e!842324 () Bool)

(assert (=> b!1313804 (= e!842324 (and tp!382566 tp!382570))))

(declare-fun b!1313805 () Bool)

(declare-fun res!590068 () Bool)

(assert (=> b!1313805 (=> res!590068 e!842326)))

(declare-fun lt!433055 () C!7528)

(assert (=> b!1313805 (= res!590068 (not (contains!2327 lt!433042 lt!433055)))))

(declare-fun b!1313806 () Bool)

(declare-fun res!590085 () Bool)

(assert (=> b!1313806 (=> (not res!590085) (not e!842318))))

(declare-fun sepAndNonSepRulesDisjointChars!678 (List!13386 List!13386) Bool)

(assert (=> b!1313806 (= res!590085 (sepAndNonSepRulesDisjointChars!678 rules!2550 rules!2550))))

(declare-fun b!1313807 () Bool)

(assert (=> b!1313807 (= e!842329 e!842308)))

(declare-fun res!590065 () Bool)

(assert (=> b!1313807 (=> res!590065 e!842308)))

(declare-datatypes ((IArray!8767 0))(
  ( (IArray!8768 (innerList!4441 List!13387)) )
))
(declare-datatypes ((Conc!4381 0))(
  ( (Node!4381 (left!11451 Conc!4381) (right!11781 Conc!4381) (csize!8992 Int) (cheight!4592 Int)) (Leaf!6730 (xs!7096 IArray!8767) (csize!8993 Int)) (Empty!4381) )
))
(declare-datatypes ((BalanceConc!8702 0))(
  ( (BalanceConc!8703 (c!215590 Conc!4381)) )
))
(declare-datatypes ((tuple2!12936 0))(
  ( (tuple2!12937 (_1!7354 BalanceConc!8702) (_2!7354 BalanceConc!8700)) )
))
(declare-fun lt!433051 () tuple2!12936)

(declare-fun list!5011 (BalanceConc!8702) List!13387)

(assert (=> b!1313807 (= res!590065 (not (= (list!5011 (_1!7354 lt!433051)) lt!433057)))))

(assert (=> b!1313807 (= lt!433057 (Cons!13321 t1!34 Nil!13321))))

(declare-fun lex!835 (LexerInterface!2000 List!13386 BalanceConc!8700) tuple2!12936)

(assert (=> b!1313807 (= lt!433051 (lex!835 thiss!19762 rules!2550 lt!433047))))

(declare-fun print!774 (LexerInterface!2000 BalanceConc!8702) BalanceConc!8700)

(declare-fun singletonSeq!882 (Token!4272) BalanceConc!8702)

(assert (=> b!1313807 (= lt!433047 (print!774 thiss!19762 (singletonSeq!882 t1!34)))))

(declare-fun getWitness!204 (List!13386 Int) Rule!4410)

(assert (=> b!1313807 (= lt!433058 (getWitness!204 rules!2550 lambda!53328))))

(declare-fun b!1313808 () Bool)

(declare-fun res!590059 () Bool)

(assert (=> b!1313808 (=> res!590059 e!842326)))

(assert (=> b!1313808 (= res!590059 (not (contains!2327 lt!433053 lt!433055)))))

(declare-fun b!1313809 () Bool)

(declare-fun res!590061 () Bool)

(assert (=> b!1313809 (=> res!590061 e!842315)))

(declare-datatypes ((tuple2!12938 0))(
  ( (tuple2!12939 (_1!7355 Token!4272) (_2!7355 List!13385)) )
))
(declare-datatypes ((Option!2572 0))(
  ( (None!2571) (Some!2571 (v!21106 tuple2!12938)) )
))
(declare-fun maxPrefix!1010 (LexerInterface!2000 List!13386 List!13385) Option!2572)

(assert (=> b!1313809 (= res!590061 (not (= (maxPrefix!1010 thiss!19762 rules!2550 (list!5010 lt!433049)) (Some!2571 (tuple2!12939 t2!34 Nil!13319)))))))

(declare-fun b!1313810 () Bool)

(declare-fun res!590060 () Bool)

(assert (=> b!1313810 (=> res!590060 e!842315)))

(declare-fun contains!2328 (List!13386 Rule!4410) Bool)

(assert (=> b!1313810 (= res!590060 (not (contains!2328 rules!2550 lt!433058)))))

(declare-fun b!1313811 () Bool)

(declare-fun res!590070 () Bool)

(assert (=> b!1313811 (=> res!590070 e!842308)))

(assert (=> b!1313811 (= res!590070 (not (contains!2328 rules!2550 (rule!4046 t1!34))))))

(declare-fun b!1313812 () Bool)

(declare-fun res!590069 () Bool)

(assert (=> b!1313812 (=> res!590069 e!842326)))

(assert (=> b!1313812 (= res!590069 (not (contains!2327 lt!433053 lt!433039)))))

(declare-fun b!1313813 () Bool)

(declare-fun res!590064 () Bool)

(assert (=> b!1313813 (=> res!590064 e!842315)))

(declare-fun lt!433044 () List!13387)

(declare-fun lt!433059 () BalanceConc!8700)

(assert (=> b!1313813 (= res!590064 (not (= (lexList!538 thiss!19762 rules!2550 (list!5010 lt!433059)) (tuple2!12935 lt!433044 Nil!13319))))))

(declare-fun b!1313814 () Bool)

(assert (=> b!1313814 (= e!842308 e!842315)))

(declare-fun res!590075 () Bool)

(assert (=> b!1313814 (=> res!590075 e!842315)))

(declare-fun lt!433045 () tuple2!12936)

(assert (=> b!1313814 (= res!590075 (not (= (list!5011 (_1!7354 lt!433045)) lt!433044)))))

(assert (=> b!1313814 (= lt!433044 (Cons!13321 t2!34 Nil!13321))))

(assert (=> b!1313814 (= lt!433045 (lex!835 thiss!19762 rules!2550 lt!433059))))

(assert (=> b!1313814 (= lt!433059 (print!774 thiss!19762 (singletonSeq!882 t2!34)))))

(declare-fun b!1313815 () Bool)

(declare-fun res!590086 () Bool)

(assert (=> b!1313815 (=> (not res!590086) (not e!842316))))

(assert (=> b!1313815 (= res!590086 (rulesProduceIndividualToken!969 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1313816 () Bool)

(declare-fun res!590072 () Bool)

(assert (=> b!1313816 (=> res!590072 e!842315)))

(declare-fun isEmpty!7888 (BalanceConc!8700) Bool)

(assert (=> b!1313816 (= res!590072 (not (isEmpty!7888 (_2!7354 lt!433045))))))

(declare-fun b!1313817 () Bool)

(declare-fun tp!382567 () Bool)

(declare-fun e!842330 () Bool)

(assert (=> b!1313817 (= e!842330 (and tp!382567 (inv!17693 (tag!2567 (rule!4046 t2!34))) (inv!17696 (transformation!2305 (rule!4046 t2!34))) e!842324))))

(declare-fun b!1313818 () Bool)

(assert (=> b!1313818 (= e!842318 e!842314)))

(declare-fun res!590062 () Bool)

(assert (=> b!1313818 (=> (not res!590062) (not e!842314))))

(declare-fun prefixMatch!132 (Regex!3619 List!13385) Bool)

(assert (=> b!1313818 (= res!590062 (prefixMatch!132 lt!433041 lt!433042))))

(declare-fun rulesRegex!190 (LexerInterface!2000 List!13386) Regex!3619)

(assert (=> b!1313818 (= lt!433041 (rulesRegex!190 thiss!19762 rules!2550))))

(declare-fun lt!433052 () List!13385)

(declare-fun ++!3392 (List!13385 List!13385) List!13385)

(assert (=> b!1313818 (= lt!433042 (++!3392 lt!433052 (Cons!13319 lt!433055 Nil!13319)))))

(assert (=> b!1313818 (= lt!433055 (apply!3015 lt!433049 0))))

(assert (=> b!1313818 (= lt!433052 (list!5010 lt!433054))))

(assert (=> b!1313818 (= lt!433054 (charsOf!1277 t1!34))))

(declare-fun b!1313819 () Bool)

(declare-fun res!590087 () Bool)

(assert (=> b!1313819 (=> (not res!590087) (not e!842316))))

(assert (=> b!1313819 (= res!590087 (not (= (isSeparator!2305 (rule!4046 t1!34)) (isSeparator!2305 (rule!4046 t2!34)))))))

(declare-fun b!1313820 () Bool)

(assert (=> b!1313820 (= e!842322 e!842311)))

(declare-fun res!590088 () Bool)

(assert (=> b!1313820 (=> res!590088 e!842311)))

(declare-fun getSuffix!475 (List!13385 List!13385) List!13385)

(assert (=> b!1313820 (= res!590088 (not (= lt!433053 (++!3392 lt!433042 (getSuffix!475 lt!433053 lt!433042)))))))

(declare-fun pickWitness!82 (Int) List!13385)

(assert (=> b!1313820 (= lt!433053 (pickWitness!82 lambda!53325))))

(declare-fun b!1313821 () Bool)

(declare-fun res!590081 () Bool)

(assert (=> b!1313821 (=> res!590081 e!842315)))

(assert (=> b!1313821 (= res!590081 (not (contains!2328 rules!2550 (rule!4046 t2!34))))))

(declare-fun b!1313822 () Bool)

(declare-fun res!590078 () Bool)

(assert (=> b!1313822 (=> res!590078 e!842308)))

(assert (=> b!1313822 (= res!590078 (not (= (maxPrefix!1010 thiss!19762 rules!2550 lt!433052) (Some!2571 (tuple2!12939 t1!34 Nil!13319)))))))

(declare-fun b!1313823 () Bool)

(assert (=> b!1313823 (= e!842327 e!842312)))

(declare-fun res!590080 () Bool)

(assert (=> b!1313823 (=> res!590080 e!842312)))

(declare-fun contains!2329 (List!13388 Regex!3619) Bool)

(assert (=> b!1313823 (= res!590080 (not (contains!2329 (map!2924 rules!2550 lambda!53326) lt!433043)))))

(declare-fun getWitness!205 (List!13388 Int) Regex!3619)

(assert (=> b!1313823 (= lt!433043 (getWitness!205 (map!2924 rules!2550 lambda!53326) lambda!53327))))

(declare-fun b!1313824 () Bool)

(declare-fun tp!382564 () Bool)

(assert (=> b!1313824 (= e!842325 (and e!842319 tp!382564))))

(declare-fun b!1313825 () Bool)

(declare-fun res!590074 () Bool)

(assert (=> b!1313825 (=> res!590074 e!842326)))

(declare-fun matchR!1621 (Regex!3619 List!13385) Bool)

(assert (=> b!1313825 (= res!590074 (not (matchR!1621 lt!433041 lt!433053)))))

(declare-fun b!1313826 () Bool)

(declare-fun tp!382563 () Bool)

(assert (=> b!1313826 (= e!842313 (and (inv!21 (value!75325 t2!34)) e!842330 tp!382563))))

(declare-fun b!1313827 () Bool)

(declare-fun res!590077 () Bool)

(assert (=> b!1313827 (=> (not res!590077) (not e!842316))))

(declare-fun isEmpty!7889 (List!13386) Bool)

(assert (=> b!1313827 (= res!590077 (not (isEmpty!7889 rules!2550)))))

(declare-fun b!1313828 () Bool)

(declare-fun res!590089 () Bool)

(assert (=> b!1313828 (=> res!590089 e!842308)))

(assert (=> b!1313828 (= res!590089 (not (isEmpty!7888 (_2!7354 lt!433051))))))

(declare-fun tp!382562 () Bool)

(declare-fun b!1313829 () Bool)

(assert (=> b!1313829 (= e!842317 (and tp!382562 (inv!17693 (tag!2567 (rule!4046 t1!34))) (inv!17696 (transformation!2305 (rule!4046 t1!34))) e!842323))))

(assert (= (and start!116222 res!590071) b!1313827))

(assert (= (and b!1313827 res!590077) b!1313799))

(assert (= (and b!1313799 res!590084) b!1313792))

(assert (= (and b!1313792 res!590076) b!1313815))

(assert (= (and b!1313815 res!590086) b!1313819))

(assert (= (and b!1313819 res!590087) b!1313795))

(assert (= (and b!1313795 res!590082) b!1313806))

(assert (= (and b!1313806 res!590085) b!1313798))

(assert (= (and b!1313798 res!590066) b!1313818))

(assert (= (and b!1313818 res!590062) b!1313794))

(assert (= (and b!1313794 (not res!590083)) b!1313820))

(assert (= (and b!1313820 (not res!590088)) b!1313800))

(assert (= (and b!1313800 (not res!590063)) b!1313812))

(assert (= (and b!1313812 (not res!590069)) b!1313805))

(assert (= (and b!1313805 (not res!590068)) b!1313808))

(assert (= (and b!1313808 (not res!590059)) b!1313825))

(assert (= (and b!1313825 (not res!590074)) b!1313801))

(assert (= (and b!1313801 (not res!590073)) b!1313823))

(assert (= (and b!1313823 (not res!590080)) b!1313803))

(assert (= (and b!1313803 (not res!590079)) b!1313807))

(assert (= (and b!1313807 (not res!590065)) b!1313828))

(assert (= (and b!1313828 (not res!590089)) b!1313796))

(assert (= (and b!1313796 (not res!590067)) b!1313822))

(assert (= (and b!1313822 (not res!590078)) b!1313811))

(assert (= (and b!1313811 (not res!590070)) b!1313814))

(assert (= (and b!1313814 (not res!590075)) b!1313816))

(assert (= (and b!1313816 (not res!590072)) b!1313813))

(assert (= (and b!1313813 (not res!590064)) b!1313809))

(assert (= (and b!1313809 (not res!590061)) b!1313821))

(assert (= (and b!1313821 (not res!590081)) b!1313810))

(assert (= (and b!1313810 (not res!590060)) b!1313797))

(assert (= b!1313791 b!1313802))

(assert (= b!1313824 b!1313791))

(assert (= (and start!116222 ((_ is Cons!13320) rules!2550)) b!1313824))

(assert (= b!1313829 b!1313790))

(assert (= b!1313793 b!1313829))

(assert (= start!116222 b!1313793))

(assert (= b!1313817 b!1313804))

(assert (= b!1313826 b!1313817))

(assert (= start!116222 b!1313826))

(declare-fun m!1466827 () Bool)

(assert (=> b!1313823 m!1466827))

(assert (=> b!1313823 m!1466827))

(declare-fun m!1466829 () Bool)

(assert (=> b!1313823 m!1466829))

(assert (=> b!1313823 m!1466827))

(assert (=> b!1313823 m!1466827))

(declare-fun m!1466831 () Bool)

(assert (=> b!1313823 m!1466831))

(declare-fun m!1466833 () Bool)

(assert (=> b!1313797 m!1466833))

(declare-fun m!1466835 () Bool)

(assert (=> b!1313797 m!1466835))

(declare-fun m!1466837 () Bool)

(assert (=> b!1313825 m!1466837))

(declare-fun m!1466839 () Bool)

(assert (=> b!1313829 m!1466839))

(declare-fun m!1466841 () Bool)

(assert (=> b!1313829 m!1466841))

(declare-fun m!1466843 () Bool)

(assert (=> b!1313817 m!1466843))

(declare-fun m!1466845 () Bool)

(assert (=> b!1313817 m!1466845))

(declare-fun m!1466847 () Bool)

(assert (=> b!1313813 m!1466847))

(assert (=> b!1313813 m!1466847))

(declare-fun m!1466849 () Bool)

(assert (=> b!1313813 m!1466849))

(declare-fun m!1466851 () Bool)

(assert (=> b!1313828 m!1466851))

(declare-fun m!1466853 () Bool)

(assert (=> b!1313818 m!1466853))

(declare-fun m!1466855 () Bool)

(assert (=> b!1313818 m!1466855))

(declare-fun m!1466857 () Bool)

(assert (=> b!1313818 m!1466857))

(declare-fun m!1466859 () Bool)

(assert (=> b!1313818 m!1466859))

(declare-fun m!1466861 () Bool)

(assert (=> b!1313818 m!1466861))

(declare-fun m!1466863 () Bool)

(assert (=> b!1313818 m!1466863))

(declare-fun m!1466865 () Bool)

(assert (=> b!1313792 m!1466865))

(declare-fun m!1466867 () Bool)

(assert (=> b!1313798 m!1466867))

(declare-fun m!1466869 () Bool)

(assert (=> b!1313827 m!1466869))

(declare-fun m!1466871 () Bool)

(assert (=> b!1313822 m!1466871))

(declare-fun m!1466873 () Bool)

(assert (=> b!1313800 m!1466873))

(declare-fun m!1466875 () Bool)

(assert (=> b!1313800 m!1466875))

(declare-fun m!1466877 () Bool)

(assert (=> b!1313805 m!1466877))

(declare-fun m!1466879 () Bool)

(assert (=> b!1313812 m!1466879))

(declare-fun m!1466881 () Bool)

(assert (=> b!1313803 m!1466881))

(assert (=> b!1313803 m!1466881))

(declare-fun m!1466883 () Bool)

(assert (=> b!1313803 m!1466883))

(declare-fun m!1466885 () Bool)

(assert (=> b!1313811 m!1466885))

(declare-fun m!1466887 () Bool)

(assert (=> b!1313810 m!1466887))

(declare-fun m!1466889 () Bool)

(assert (=> b!1313794 m!1466889))

(assert (=> b!1313794 m!1466889))

(declare-fun m!1466891 () Bool)

(assert (=> b!1313794 m!1466891))

(declare-fun m!1466893 () Bool)

(assert (=> b!1313806 m!1466893))

(declare-fun m!1466895 () Bool)

(assert (=> b!1313821 m!1466895))

(declare-fun m!1466897 () Bool)

(assert (=> b!1313791 m!1466897))

(declare-fun m!1466899 () Bool)

(assert (=> b!1313791 m!1466899))

(declare-fun m!1466901 () Bool)

(assert (=> b!1313808 m!1466901))

(declare-fun m!1466903 () Bool)

(assert (=> b!1313815 m!1466903))

(declare-fun m!1466905 () Bool)

(assert (=> b!1313809 m!1466905))

(assert (=> b!1313809 m!1466905))

(declare-fun m!1466907 () Bool)

(assert (=> b!1313809 m!1466907))

(declare-fun m!1466909 () Bool)

(assert (=> b!1313795 m!1466909))

(declare-fun m!1466911 () Bool)

(assert (=> b!1313795 m!1466911))

(declare-fun m!1466913 () Bool)

(assert (=> b!1313826 m!1466913))

(declare-fun m!1466915 () Bool)

(assert (=> b!1313799 m!1466915))

(declare-fun m!1466917 () Bool)

(assert (=> b!1313801 m!1466917))

(assert (=> b!1313801 m!1466827))

(declare-fun m!1466919 () Bool)

(assert (=> b!1313801 m!1466919))

(assert (=> b!1313801 m!1466827))

(declare-fun m!1466921 () Bool)

(assert (=> b!1313801 m!1466921))

(assert (=> b!1313801 m!1466827))

(declare-fun m!1466923 () Bool)

(assert (=> b!1313796 m!1466923))

(assert (=> b!1313796 m!1466923))

(declare-fun m!1466925 () Bool)

(assert (=> b!1313796 m!1466925))

(declare-fun m!1466927 () Bool)

(assert (=> b!1313816 m!1466927))

(declare-fun m!1466929 () Bool)

(assert (=> b!1313820 m!1466929))

(assert (=> b!1313820 m!1466929))

(declare-fun m!1466931 () Bool)

(assert (=> b!1313820 m!1466931))

(declare-fun m!1466933 () Bool)

(assert (=> b!1313820 m!1466933))

(declare-fun m!1466935 () Bool)

(assert (=> b!1313807 m!1466935))

(declare-fun m!1466937 () Bool)

(assert (=> b!1313807 m!1466937))

(declare-fun m!1466939 () Bool)

(assert (=> b!1313807 m!1466939))

(assert (=> b!1313807 m!1466937))

(declare-fun m!1466941 () Bool)

(assert (=> b!1313807 m!1466941))

(declare-fun m!1466943 () Bool)

(assert (=> b!1313807 m!1466943))

(declare-fun m!1466945 () Bool)

(assert (=> b!1313793 m!1466945))

(declare-fun m!1466947 () Bool)

(assert (=> b!1313814 m!1466947))

(declare-fun m!1466949 () Bool)

(assert (=> b!1313814 m!1466949))

(declare-fun m!1466951 () Bool)

(assert (=> b!1313814 m!1466951))

(assert (=> b!1313814 m!1466951))

(declare-fun m!1466953 () Bool)

(assert (=> b!1313814 m!1466953))

(declare-fun m!1466955 () Bool)

(assert (=> start!116222 m!1466955))

(declare-fun m!1466957 () Bool)

(assert (=> start!116222 m!1466957))

(check-sat (not b!1313812) (not b!1313829) (not b!1313824) (not b!1313805) (not b!1313797) (not b!1313791) (not b!1313806) (not b!1313826) (not b!1313808) b_and!87769 (not b!1313801) (not b!1313793) (not b!1313794) (not b!1313799) b_and!87773 (not b_next!32373) b_and!87777 (not b!1313796) (not b!1313814) (not b_next!32371) (not b!1313810) (not b_next!32365) (not b!1313825) (not b!1313815) (not b_next!32369) (not b!1313803) (not b_next!32363) (not b!1313813) (not b!1313809) (not b!1313798) (not b!1313822) (not b!1313795) (not b!1313807) (not b!1313827) (not b!1313820) (not b!1313823) (not b!1313828) (not b_next!32367) (not b!1313800) b_and!87767 (not b!1313821) (not b!1313818) (not start!116222) (not b!1313816) (not b!1313817) (not b!1313811) (not b!1313792) b_and!87775 b_and!87771)
(check-sat b_and!87777 (not b_next!32369) (not b_next!32363) (not b_next!32367) b_and!87767 b_and!87769 b_and!87773 (not b_next!32373) (not b_next!32371) (not b_next!32365) b_and!87775 b_and!87771)
