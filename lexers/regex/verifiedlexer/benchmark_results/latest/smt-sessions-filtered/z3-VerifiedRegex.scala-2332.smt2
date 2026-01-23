; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115058 () Bool)

(assert start!115058)

(declare-fun b!1304069 () Bool)

(declare-fun b_free!31227 () Bool)

(declare-fun b_next!31931 () Bool)

(assert (=> b!1304069 (= b_free!31227 (not b_next!31931))))

(declare-fun tp!380640 () Bool)

(declare-fun b_and!87079 () Bool)

(assert (=> b!1304069 (= tp!380640 b_and!87079)))

(declare-fun b_free!31229 () Bool)

(declare-fun b_next!31933 () Bool)

(assert (=> b!1304069 (= b_free!31229 (not b_next!31933))))

(declare-fun tp!380650 () Bool)

(declare-fun b_and!87081 () Bool)

(assert (=> b!1304069 (= tp!380650 b_and!87081)))

(declare-fun b!1304065 () Bool)

(declare-fun b_free!31231 () Bool)

(declare-fun b_next!31935 () Bool)

(assert (=> b!1304065 (= b_free!31231 (not b_next!31935))))

(declare-fun tp!380642 () Bool)

(declare-fun b_and!87083 () Bool)

(assert (=> b!1304065 (= tp!380642 b_and!87083)))

(declare-fun b_free!31233 () Bool)

(declare-fun b_next!31937 () Bool)

(assert (=> b!1304065 (= b_free!31233 (not b_next!31937))))

(declare-fun tp!380646 () Bool)

(declare-fun b_and!87085 () Bool)

(assert (=> b!1304065 (= tp!380646 b_and!87085)))

(declare-fun b!1304060 () Bool)

(declare-fun b_free!31235 () Bool)

(declare-fun b_next!31939 () Bool)

(assert (=> b!1304060 (= b_free!31235 (not b_next!31939))))

(declare-fun tp!380641 () Bool)

(declare-fun b_and!87087 () Bool)

(assert (=> b!1304060 (= tp!380641 b_and!87087)))

(declare-fun b_free!31237 () Bool)

(declare-fun b_next!31941 () Bool)

(assert (=> b!1304060 (= b_free!31237 (not b_next!31941))))

(declare-fun tp!380648 () Bool)

(declare-fun b_and!87089 () Bool)

(assert (=> b!1304060 (= tp!380648 b_and!87089)))

(declare-fun b!1304048 () Bool)

(assert (=> b!1304048 true))

(assert (=> b!1304048 true))

(declare-fun b!1304063 () Bool)

(assert (=> b!1304063 true))

(declare-fun b!1304059 () Bool)

(assert (=> b!1304059 true))

(declare-fun b!1304039 () Bool)

(declare-fun res!584586 () Bool)

(declare-fun e!836299 () Bool)

(assert (=> b!1304039 (=> (not res!584586) (not e!836299))))

(declare-datatypes ((List!13212 0))(
  ( (Nil!13146) (Cons!13146 (h!18547 (_ BitVec 16)) (t!117773 List!13212)) )
))
(declare-datatypes ((TokenValue!2363 0))(
  ( (FloatLiteralValue!4726 (text!16986 List!13212)) (TokenValueExt!2362 (__x!8555 Int)) (Broken!11815 (value!74387 List!13212)) (Object!2428) (End!2363) (Def!2363) (Underscore!2363) (Match!2363) (Else!2363) (Error!2363) (Case!2363) (If!2363) (Extends!2363) (Abstract!2363) (Class!2363) (Val!2363) (DelimiterValue!4726 (del!2423 List!13212)) (KeywordValue!2369 (value!74388 List!13212)) (CommentValue!4726 (value!74389 List!13212)) (WhitespaceValue!4726 (value!74390 List!13212)) (IndentationValue!2363 (value!74391 List!13212)) (String!16050) (Int32!2363) (Broken!11816 (value!74392 List!13212)) (Boolean!2364) (Unit!19239) (OperatorValue!2366 (op!2423 List!13212)) (IdentifierValue!4726 (value!74393 List!13212)) (IdentifierValue!4727 (value!74394 List!13212)) (WhitespaceValue!4727 (value!74395 List!13212)) (True!4726) (False!4726) (Broken!11817 (value!74396 List!13212)) (Broken!11818 (value!74397 List!13212)) (True!4727) (RightBrace!2363) (RightBracket!2363) (Colon!2363) (Null!2363) (Comma!2363) (LeftBracket!2363) (False!4727) (LeftBrace!2363) (ImaginaryLiteralValue!2363 (text!16987 List!13212)) (StringLiteralValue!7089 (value!74398 List!13212)) (EOFValue!2363 (value!74399 List!13212)) (IdentValue!2363 (value!74400 List!13212)) (DelimiterValue!4727 (value!74401 List!13212)) (DedentValue!2363 (value!74402 List!13212)) (NewLineValue!2363 (value!74403 List!13212)) (IntegerValue!7089 (value!74404 (_ BitVec 32)) (text!16988 List!13212)) (IntegerValue!7090 (value!74405 Int) (text!16989 List!13212)) (Times!2363) (Or!2363) (Equal!2363) (Minus!2363) (Broken!11819 (value!74406 List!13212)) (And!2363) (Div!2363) (LessEqual!2363) (Mod!2363) (Concat!5950) (Not!2363) (Plus!2363) (SpaceValue!2363 (value!74407 List!13212)) (IntegerValue!7091 (value!74408 Int) (text!16990 List!13212)) (StringLiteralValue!7090 (text!16991 List!13212)) (FloatLiteralValue!4727 (text!16992 List!13212)) (BytesLiteralValue!2363 (value!74409 List!13212)) (CommentValue!4727 (value!74410 List!13212)) (StringLiteralValue!7091 (value!74411 List!13212)) (ErrorTokenValue!2363 (msg!2424 List!13212)) )
))
(declare-datatypes ((C!7464 0))(
  ( (C!7465 (val!4292 Int)) )
))
(declare-datatypes ((List!13213 0))(
  ( (Nil!13147) (Cons!13147 (h!18548 C!7464) (t!117774 List!13213)) )
))
(declare-datatypes ((IArray!8637 0))(
  ( (IArray!8638 (innerList!4376 List!13213)) )
))
(declare-datatypes ((Conc!4316 0))(
  ( (Node!4316 (left!11306 Conc!4316) (right!11636 Conc!4316) (csize!8862 Int) (cheight!4527 Int)) (Leaf!6649 (xs!7031 IArray!8637) (csize!8863 Int)) (Empty!4316) )
))
(declare-datatypes ((BalanceConc!8572 0))(
  ( (BalanceConc!8573 (c!214284 Conc!4316)) )
))
(declare-datatypes ((Regex!3587 0))(
  ( (ElementMatch!3587 (c!214285 C!7464)) (Concat!5951 (regOne!7686 Regex!3587) (regTwo!7686 Regex!3587)) (EmptyExpr!3587) (Star!3587 (reg!3916 Regex!3587)) (EmptyLang!3587) (Union!3587 (regOne!7687 Regex!3587) (regTwo!7687 Regex!3587)) )
))
(declare-datatypes ((String!16051 0))(
  ( (String!16052 (value!74412 String)) )
))
(declare-datatypes ((TokenValueInjection!4386 0))(
  ( (TokenValueInjection!4387 (toValue!3488 Int) (toChars!3347 Int)) )
))
(declare-datatypes ((Rule!4346 0))(
  ( (Rule!4347 (regex!2273 Regex!3587) (tag!2535 String!16051) (isSeparator!2273 Bool) (transformation!2273 TokenValueInjection!4386)) )
))
(declare-datatypes ((List!13214 0))(
  ( (Nil!13148) (Cons!13148 (h!18549 Rule!4346) (t!117775 List!13214)) )
))
(declare-fun rules!2550 () List!13214)

(declare-fun sepAndNonSepRulesDisjointChars!646 (List!13214 List!13214) Bool)

(assert (=> b!1304039 (= res!584586 (sepAndNonSepRulesDisjointChars!646 rules!2550 rules!2550))))

(declare-fun b!1304040 () Bool)

(declare-fun e!836311 () Bool)

(assert (=> b!1304040 (= e!836311 e!836299)))

(declare-fun res!584589 () Bool)

(assert (=> b!1304040 (=> (not res!584589) (not e!836299))))

(declare-fun lt!428911 () BalanceConc!8572)

(declare-fun size!10712 (BalanceConc!8572) Int)

(assert (=> b!1304040 (= res!584589 (> (size!10712 lt!428911) 0))))

(declare-datatypes ((Token!4208 0))(
  ( (Token!4209 (value!74413 TokenValue!2363) (rule!4012 Rule!4346) (size!10713 Int) (originalCharacters!3135 List!13213)) )
))
(declare-fun t2!34 () Token!4208)

(declare-fun charsOf!1245 (Token!4208) BalanceConc!8572)

(assert (=> b!1304040 (= lt!428911 (charsOf!1245 t2!34))))

(declare-fun b!1304041 () Bool)

(declare-fun e!836305 () Bool)

(declare-fun tp!380639 () Bool)

(declare-fun e!836308 () Bool)

(declare-fun t1!34 () Token!4208)

(declare-fun inv!17553 (String!16051) Bool)

(declare-fun inv!17556 (TokenValueInjection!4386) Bool)

(assert (=> b!1304041 (= e!836305 (and tp!380639 (inv!17553 (tag!2535 (rule!4012 t1!34))) (inv!17556 (transformation!2273 (rule!4012 t1!34))) e!836308))))

(declare-fun b!1304042 () Bool)

(declare-fun e!836294 () Bool)

(assert (=> b!1304042 (= e!836299 e!836294)))

(declare-fun res!584590 () Bool)

(assert (=> b!1304042 (=> (not res!584590) (not e!836294))))

(declare-fun lt!428908 () Regex!3587)

(declare-fun lt!428909 () List!13213)

(declare-fun prefixMatch!100 (Regex!3587 List!13213) Bool)

(assert (=> b!1304042 (= res!584590 (prefixMatch!100 lt!428908 lt!428909))))

(declare-datatypes ((LexerInterface!1968 0))(
  ( (LexerInterfaceExt!1965 (__x!8556 Int)) (Lexer!1966) )
))
(declare-fun thiss!19762 () LexerInterface!1968)

(declare-fun rulesRegex!158 (LexerInterface!1968 List!13214) Regex!3587)

(assert (=> b!1304042 (= lt!428908 (rulesRegex!158 thiss!19762 rules!2550))))

(declare-fun lt!428914 () List!13213)

(declare-fun lt!428920 () C!7464)

(declare-fun ++!3344 (List!13213 List!13213) List!13213)

(assert (=> b!1304042 (= lt!428909 (++!3344 lt!428914 (Cons!13147 lt!428920 Nil!13147)))))

(declare-fun apply!2939 (BalanceConc!8572 Int) C!7464)

(assert (=> b!1304042 (= lt!428920 (apply!2939 lt!428911 0))))

(declare-fun lt!428912 () BalanceConc!8572)

(declare-fun list!4922 (BalanceConc!8572) List!13213)

(assert (=> b!1304042 (= lt!428914 (list!4922 lt!428912))))

(assert (=> b!1304042 (= lt!428912 (charsOf!1245 t1!34))))

(declare-fun b!1304043 () Bool)

(declare-fun res!584581 () Bool)

(assert (=> b!1304043 (=> (not res!584581) (not e!836311))))

(declare-fun rulesProduceIndividualToken!937 (LexerInterface!1968 List!13214 Token!4208) Bool)

(assert (=> b!1304043 (= res!584581 (rulesProduceIndividualToken!937 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1304044 () Bool)

(declare-fun e!836301 () Bool)

(declare-fun e!836295 () Bool)

(declare-fun tp!380649 () Bool)

(assert (=> b!1304044 (= e!836301 (and e!836295 tp!380649))))

(declare-fun b!1304045 () Bool)

(declare-fun res!584579 () Bool)

(declare-fun e!836298 () Bool)

(assert (=> b!1304045 (=> res!584579 e!836298)))

(declare-fun contains!2230 (List!13213 C!7464) Bool)

(assert (=> b!1304045 (= res!584579 (not (contains!2230 lt!428909 lt!428920)))))

(declare-fun res!584585 () Bool)

(assert (=> start!115058 (=> (not res!584585) (not e!836311))))

(get-info :version)

(assert (=> start!115058 (= res!584585 ((_ is Lexer!1966) thiss!19762))))

(assert (=> start!115058 e!836311))

(assert (=> start!115058 true))

(assert (=> start!115058 e!836301))

(declare-fun e!836313 () Bool)

(declare-fun inv!17557 (Token!4208) Bool)

(assert (=> start!115058 (and (inv!17557 t1!34) e!836313)))

(declare-fun e!836310 () Bool)

(assert (=> start!115058 (and (inv!17557 t2!34) e!836310)))

(declare-fun b!1304046 () Bool)

(declare-fun res!584588 () Bool)

(assert (=> b!1304046 (=> res!584588 e!836298)))

(declare-fun lt!428915 () List!13213)

(assert (=> b!1304046 (= res!584588 (not (contains!2230 lt!428915 lt!428920)))))

(declare-fun b!1304047 () Bool)

(declare-fun e!836306 () Bool)

(declare-fun e!836296 () Bool)

(assert (=> b!1304047 (= e!836306 e!836296)))

(declare-fun res!584578 () Bool)

(assert (=> b!1304047 (=> res!584578 e!836296)))

(declare-fun getSuffix!443 (List!13213 List!13213) List!13213)

(assert (=> b!1304047 (= res!584578 (not (= lt!428915 (++!3344 lt!428909 (getSuffix!443 lt!428915 lt!428909)))))))

(declare-fun lambda!51942 () Int)

(declare-fun pickWitness!50 (Int) List!13213)

(assert (=> b!1304047 (= lt!428915 (pickWitness!50 lambda!51942))))

(assert (=> b!1304048 (= e!836294 (not e!836306))))

(declare-fun res!584593 () Bool)

(assert (=> b!1304048 (=> res!584593 e!836306)))

(declare-fun Exists!745 (Int) Bool)

(assert (=> b!1304048 (= res!584593 (not (Exists!745 lambda!51942)))))

(assert (=> b!1304048 (Exists!745 lambda!51942)))

(declare-datatypes ((Unit!19240 0))(
  ( (Unit!19241) )
))
(declare-fun lt!428907 () Unit!19240)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!63 (Regex!3587 List!13213) Unit!19240)

(assert (=> b!1304048 (= lt!428907 (lemmaPrefixMatchThenExistsStringThatMatches!63 lt!428908 lt!428909))))

(declare-fun b!1304049 () Bool)

(declare-fun e!836304 () Bool)

(declare-fun e!836316 () Bool)

(assert (=> b!1304049 (= e!836304 e!836316)))

(declare-fun res!584577 () Bool)

(assert (=> b!1304049 (=> res!584577 e!836316)))

(declare-fun lt!428906 () Regex!3587)

(declare-fun lambda!51943 () Int)

(declare-datatypes ((List!13215 0))(
  ( (Nil!13149) (Cons!13149 (h!18550 Regex!3587) (t!117776 List!13215)) )
))
(declare-fun contains!2231 (List!13215 Regex!3587) Bool)

(declare-fun map!2876 (List!13214 Int) List!13215)

(assert (=> b!1304049 (= res!584577 (not (contains!2231 (map!2876 rules!2550 lambda!51943) lt!428906)))))

(declare-fun lambda!51944 () Int)

(declare-fun getWitness!140 (List!13215 Int) Regex!3587)

(assert (=> b!1304049 (= lt!428906 (getWitness!140 (map!2876 rules!2550 lambda!51943) lambda!51944))))

(declare-fun b!1304050 () Bool)

(declare-fun res!584573 () Bool)

(assert (=> b!1304050 (=> res!584573 e!836298)))

(declare-fun lt!428918 () C!7464)

(assert (=> b!1304050 (= res!584573 (not (contains!2230 lt!428915 lt!428918)))))

(declare-fun tp!380643 () Bool)

(declare-fun b!1304051 () Bool)

(declare-fun inv!21 (TokenValue!2363) Bool)

(assert (=> b!1304051 (= e!836313 (and (inv!21 (value!74413 t1!34)) e!836305 tp!380643))))

(declare-fun b!1304052 () Bool)

(declare-fun res!584594 () Bool)

(assert (=> b!1304052 (=> (not res!584594) (not e!836311))))

(assert (=> b!1304052 (= res!584594 (not (= (isSeparator!2273 (rule!4012 t1!34)) (isSeparator!2273 (rule!4012 t2!34)))))))

(declare-fun b!1304053 () Bool)

(declare-fun res!584575 () Bool)

(assert (=> b!1304053 (=> res!584575 e!836298)))

(declare-fun matchR!1589 (Regex!3587 List!13213) Bool)

(assert (=> b!1304053 (= res!584575 (not (matchR!1589 lt!428908 lt!428915)))))

(declare-fun b!1304054 () Bool)

(declare-fun e!836300 () Bool)

(assert (=> b!1304054 (= e!836300 true)))

(declare-fun lt!428910 () BalanceConc!8572)

(declare-datatypes ((List!13216 0))(
  ( (Nil!13150) (Cons!13150 (h!18551 Token!4208) (t!117777 List!13216)) )
))
(declare-datatypes ((tuple2!12736 0))(
  ( (tuple2!12737 (_1!7254 List!13216) (_2!7254 List!13213)) )
))
(declare-fun lt!428913 () tuple2!12736)

(declare-fun lexList!506 (LexerInterface!1968 List!13214 List!13213) tuple2!12736)

(assert (=> b!1304054 (= lt!428913 (lexList!506 thiss!19762 rules!2550 (list!4922 lt!428910)))))

(declare-fun b!1304055 () Bool)

(declare-fun res!584582 () Bool)

(assert (=> b!1304055 (=> (not res!584582) (not e!836311))))

(declare-fun rulesInvariant!1838 (LexerInterface!1968 List!13214) Bool)

(assert (=> b!1304055 (= res!584582 (rulesInvariant!1838 thiss!19762 rules!2550))))

(declare-fun b!1304056 () Bool)

(declare-fun res!584592 () Bool)

(assert (=> b!1304056 (=> (not res!584592) (not e!836299))))

(declare-fun separableTokensPredicate!251 (LexerInterface!1968 Token!4208 Token!4208 List!13214) Bool)

(assert (=> b!1304056 (= res!584592 (not (separableTokensPredicate!251 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1304057 () Bool)

(assert (=> b!1304057 (= e!836296 e!836298)))

(declare-fun res!584591 () Bool)

(assert (=> b!1304057 (=> res!584591 e!836298)))

(assert (=> b!1304057 (= res!584591 (not (contains!2230 lt!428909 lt!428918)))))

(assert (=> b!1304057 (= lt!428918 (apply!2939 lt!428912 0))))

(declare-fun b!1304058 () Bool)

(declare-fun e!836307 () Bool)

(assert (=> b!1304058 (= e!836307 e!836300)))

(declare-fun res!584574 () Bool)

(assert (=> b!1304058 (=> res!584574 e!836300)))

(declare-datatypes ((IArray!8639 0))(
  ( (IArray!8640 (innerList!4377 List!13216)) )
))
(declare-datatypes ((Conc!4317 0))(
  ( (Node!4317 (left!11307 Conc!4317) (right!11637 Conc!4317) (csize!8864 Int) (cheight!4528 Int)) (Leaf!6650 (xs!7032 IArray!8639) (csize!8865 Int)) (Empty!4317) )
))
(declare-datatypes ((BalanceConc!8574 0))(
  ( (BalanceConc!8575 (c!214286 Conc!4317)) )
))
(declare-datatypes ((tuple2!12738 0))(
  ( (tuple2!12739 (_1!7255 BalanceConc!8574) (_2!7255 BalanceConc!8572)) )
))
(declare-fun lt!428904 () tuple2!12738)

(declare-fun list!4923 (BalanceConc!8574) List!13216)

(assert (=> b!1304058 (= res!584574 (not (= (list!4923 (_1!7255 lt!428904)) (Cons!13150 t1!34 Nil!13150))))))

(declare-fun lex!803 (LexerInterface!1968 List!13214 BalanceConc!8572) tuple2!12738)

(assert (=> b!1304058 (= lt!428904 (lex!803 thiss!19762 rules!2550 lt!428910))))

(declare-fun print!742 (LexerInterface!1968 BalanceConc!8574) BalanceConc!8572)

(declare-fun singletonSeq!842 (Token!4208) BalanceConc!8574)

(assert (=> b!1304058 (= lt!428910 (print!742 thiss!19762 (singletonSeq!842 t1!34)))))

(declare-fun lt!428917 () Rule!4346)

(declare-fun lambda!51945 () Int)

(declare-fun getWitness!141 (List!13214 Int) Rule!4346)

(assert (=> b!1304058 (= lt!428917 (getWitness!141 rules!2550 lambda!51945))))

(assert (=> b!1304059 (= e!836316 e!836307)))

(declare-fun res!584576 () Bool)

(assert (=> b!1304059 (=> res!584576 e!836307)))

(declare-fun exists!248 (List!13214 Int) Bool)

(assert (=> b!1304059 (= res!584576 (not (exists!248 rules!2550 lambda!51945)))))

(assert (=> b!1304059 (exists!248 rules!2550 lambda!51945)))

(declare-fun lt!428919 () Unit!19240)

(declare-fun lemmaMapContains!16 (List!13214 Int Regex!3587) Unit!19240)

(assert (=> b!1304059 (= lt!428919 (lemmaMapContains!16 rules!2550 lambda!51943 lt!428906))))

(assert (=> b!1304060 (= e!836308 (and tp!380641 tp!380648))))

(declare-fun b!1304061 () Bool)

(declare-fun tp!380647 () Bool)

(declare-fun e!836314 () Bool)

(assert (=> b!1304061 (= e!836310 (and (inv!21 (value!74413 t2!34)) e!836314 tp!380647))))

(declare-fun b!1304062 () Bool)

(declare-fun res!584584 () Bool)

(assert (=> b!1304062 (=> (not res!584584) (not e!836311))))

(assert (=> b!1304062 (= res!584584 (rulesProduceIndividualToken!937 thiss!19762 rules!2550 t1!34))))

(assert (=> b!1304063 (= e!836298 e!836304)))

(declare-fun res!584580 () Bool)

(assert (=> b!1304063 (=> res!584580 e!836304)))

(declare-fun exists!249 (List!13215 Int) Bool)

(assert (=> b!1304063 (= res!584580 (not (exists!249 (map!2876 rules!2550 lambda!51943) lambda!51944)))))

(declare-fun lt!428916 () List!13215)

(assert (=> b!1304063 (exists!249 lt!428916 lambda!51944)))

(declare-fun lt!428905 () Unit!19240)

(declare-fun matchRGenUnionSpec!24 (Regex!3587 List!13215 List!13213) Unit!19240)

(assert (=> b!1304063 (= lt!428905 (matchRGenUnionSpec!24 lt!428908 lt!428916 lt!428915))))

(assert (=> b!1304063 (= lt!428916 (map!2876 rules!2550 lambda!51943))))

(declare-fun b!1304064 () Bool)

(declare-fun tp!380645 () Bool)

(declare-fun e!836293 () Bool)

(assert (=> b!1304064 (= e!836295 (and tp!380645 (inv!17553 (tag!2535 (h!18549 rules!2550))) (inv!17556 (transformation!2273 (h!18549 rules!2550))) e!836293))))

(declare-fun e!836312 () Bool)

(assert (=> b!1304065 (= e!836312 (and tp!380642 tp!380646))))

(declare-fun tp!380644 () Bool)

(declare-fun b!1304066 () Bool)

(assert (=> b!1304066 (= e!836314 (and tp!380644 (inv!17553 (tag!2535 (rule!4012 t2!34))) (inv!17556 (transformation!2273 (rule!4012 t2!34))) e!836312))))

(declare-fun b!1304067 () Bool)

(declare-fun res!584583 () Bool)

(assert (=> b!1304067 (=> res!584583 e!836300)))

(declare-fun isEmpty!7776 (BalanceConc!8572) Bool)

(assert (=> b!1304067 (= res!584583 (not (isEmpty!7776 (_2!7255 lt!428904))))))

(declare-fun b!1304068 () Bool)

(declare-fun res!584587 () Bool)

(assert (=> b!1304068 (=> (not res!584587) (not e!836311))))

(declare-fun isEmpty!7777 (List!13214) Bool)

(assert (=> b!1304068 (= res!584587 (not (isEmpty!7777 rules!2550)))))

(assert (=> b!1304069 (= e!836293 (and tp!380640 tp!380650))))

(assert (= (and start!115058 res!584585) b!1304068))

(assert (= (and b!1304068 res!584587) b!1304055))

(assert (= (and b!1304055 res!584582) b!1304062))

(assert (= (and b!1304062 res!584584) b!1304043))

(assert (= (and b!1304043 res!584581) b!1304052))

(assert (= (and b!1304052 res!584594) b!1304040))

(assert (= (and b!1304040 res!584589) b!1304039))

(assert (= (and b!1304039 res!584586) b!1304056))

(assert (= (and b!1304056 res!584592) b!1304042))

(assert (= (and b!1304042 res!584590) b!1304048))

(assert (= (and b!1304048 (not res!584593)) b!1304047))

(assert (= (and b!1304047 (not res!584578)) b!1304057))

(assert (= (and b!1304057 (not res!584591)) b!1304050))

(assert (= (and b!1304050 (not res!584573)) b!1304045))

(assert (= (and b!1304045 (not res!584579)) b!1304046))

(assert (= (and b!1304046 (not res!584588)) b!1304053))

(assert (= (and b!1304053 (not res!584575)) b!1304063))

(assert (= (and b!1304063 (not res!584580)) b!1304049))

(assert (= (and b!1304049 (not res!584577)) b!1304059))

(assert (= (and b!1304059 (not res!584576)) b!1304058))

(assert (= (and b!1304058 (not res!584574)) b!1304067))

(assert (= (and b!1304067 (not res!584583)) b!1304054))

(assert (= b!1304064 b!1304069))

(assert (= b!1304044 b!1304064))

(assert (= (and start!115058 ((_ is Cons!13148) rules!2550)) b!1304044))

(assert (= b!1304041 b!1304060))

(assert (= b!1304051 b!1304041))

(assert (= start!115058 b!1304051))

(assert (= b!1304066 b!1304065))

(assert (= b!1304061 b!1304066))

(assert (= start!115058 b!1304061))

(declare-fun m!1455277 () Bool)

(assert (=> b!1304064 m!1455277))

(declare-fun m!1455279 () Bool)

(assert (=> b!1304064 m!1455279))

(declare-fun m!1455281 () Bool)

(assert (=> b!1304055 m!1455281))

(declare-fun m!1455283 () Bool)

(assert (=> b!1304047 m!1455283))

(assert (=> b!1304047 m!1455283))

(declare-fun m!1455285 () Bool)

(assert (=> b!1304047 m!1455285))

(declare-fun m!1455287 () Bool)

(assert (=> b!1304047 m!1455287))

(declare-fun m!1455289 () Bool)

(assert (=> b!1304061 m!1455289))

(declare-fun m!1455291 () Bool)

(assert (=> b!1304058 m!1455291))

(declare-fun m!1455293 () Bool)

(assert (=> b!1304058 m!1455293))

(declare-fun m!1455295 () Bool)

(assert (=> b!1304058 m!1455295))

(declare-fun m!1455297 () Bool)

(assert (=> b!1304058 m!1455297))

(assert (=> b!1304058 m!1455295))

(declare-fun m!1455299 () Bool)

(assert (=> b!1304058 m!1455299))

(declare-fun m!1455301 () Bool)

(assert (=> b!1304067 m!1455301))

(declare-fun m!1455303 () Bool)

(assert (=> b!1304048 m!1455303))

(assert (=> b!1304048 m!1455303))

(declare-fun m!1455305 () Bool)

(assert (=> b!1304048 m!1455305))

(declare-fun m!1455307 () Bool)

(assert (=> start!115058 m!1455307))

(declare-fun m!1455309 () Bool)

(assert (=> start!115058 m!1455309))

(declare-fun m!1455311 () Bool)

(assert (=> b!1304051 m!1455311))

(declare-fun m!1455313 () Bool)

(assert (=> b!1304041 m!1455313))

(declare-fun m!1455315 () Bool)

(assert (=> b!1304041 m!1455315))

(declare-fun m!1455317 () Bool)

(assert (=> b!1304042 m!1455317))

(declare-fun m!1455319 () Bool)

(assert (=> b!1304042 m!1455319))

(declare-fun m!1455321 () Bool)

(assert (=> b!1304042 m!1455321))

(declare-fun m!1455323 () Bool)

(assert (=> b!1304042 m!1455323))

(declare-fun m!1455325 () Bool)

(assert (=> b!1304042 m!1455325))

(declare-fun m!1455327 () Bool)

(assert (=> b!1304042 m!1455327))

(declare-fun m!1455329 () Bool)

(assert (=> b!1304040 m!1455329))

(declare-fun m!1455331 () Bool)

(assert (=> b!1304040 m!1455331))

(declare-fun m!1455333 () Bool)

(assert (=> b!1304068 m!1455333))

(declare-fun m!1455335 () Bool)

(assert (=> b!1304056 m!1455335))

(declare-fun m!1455337 () Bool)

(assert (=> b!1304063 m!1455337))

(declare-fun m!1455339 () Bool)

(assert (=> b!1304063 m!1455339))

(declare-fun m!1455341 () Bool)

(assert (=> b!1304063 m!1455341))

(declare-fun m!1455343 () Bool)

(assert (=> b!1304063 m!1455343))

(assert (=> b!1304063 m!1455339))

(assert (=> b!1304063 m!1455339))

(declare-fun m!1455345 () Bool)

(assert (=> b!1304046 m!1455345))

(declare-fun m!1455347 () Bool)

(assert (=> b!1304045 m!1455347))

(declare-fun m!1455349 () Bool)

(assert (=> b!1304039 m!1455349))

(assert (=> b!1304049 m!1455339))

(assert (=> b!1304049 m!1455339))

(declare-fun m!1455351 () Bool)

(assert (=> b!1304049 m!1455351))

(assert (=> b!1304049 m!1455339))

(assert (=> b!1304049 m!1455339))

(declare-fun m!1455353 () Bool)

(assert (=> b!1304049 m!1455353))

(declare-fun m!1455355 () Bool)

(assert (=> b!1304053 m!1455355))

(declare-fun m!1455357 () Bool)

(assert (=> b!1304059 m!1455357))

(assert (=> b!1304059 m!1455357))

(declare-fun m!1455359 () Bool)

(assert (=> b!1304059 m!1455359))

(declare-fun m!1455361 () Bool)

(assert (=> b!1304057 m!1455361))

(declare-fun m!1455363 () Bool)

(assert (=> b!1304057 m!1455363))

(declare-fun m!1455365 () Bool)

(assert (=> b!1304054 m!1455365))

(assert (=> b!1304054 m!1455365))

(declare-fun m!1455367 () Bool)

(assert (=> b!1304054 m!1455367))

(declare-fun m!1455369 () Bool)

(assert (=> b!1304062 m!1455369))

(declare-fun m!1455371 () Bool)

(assert (=> b!1304066 m!1455371))

(declare-fun m!1455373 () Bool)

(assert (=> b!1304066 m!1455373))

(declare-fun m!1455375 () Bool)

(assert (=> b!1304043 m!1455375))

(declare-fun m!1455377 () Bool)

(assert (=> b!1304050 m!1455377))

(check-sat (not b!1304055) (not b!1304047) (not b!1304067) (not b_next!31941) (not b!1304062) (not b!1304044) b_and!87083 (not b!1304040) (not b_next!31935) (not b!1304056) (not b!1304046) (not b!1304068) (not b!1304054) (not b!1304051) (not b_next!31931) b_and!87085 (not b!1304064) (not b!1304059) (not b!1304061) (not b_next!31933) (not b!1304041) b_and!87087 (not b_next!31939) b_and!87079 (not b!1304050) b_and!87089 (not b!1304058) b_and!87081 (not b!1304057) (not b!1304043) (not b!1304066) (not b!1304053) (not b!1304063) (not start!115058) (not b!1304039) (not b!1304049) (not b_next!31937) (not b!1304045) (not b!1304048) (not b!1304042))
(check-sat b_and!87083 (not b_next!31935) (not b_next!31933) (not b_next!31941) b_and!87087 b_and!87089 b_and!87081 (not b_next!31937) (not b_next!31931) b_and!87085 (not b_next!31939) b_and!87079)
