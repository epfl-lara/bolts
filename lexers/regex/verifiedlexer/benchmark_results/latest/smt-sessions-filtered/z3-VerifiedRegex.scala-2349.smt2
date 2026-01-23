; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116226 () Bool)

(assert start!116226)

(declare-fun b!1314097 () Bool)

(declare-fun b_free!31683 () Bool)

(declare-fun b_next!32387 () Bool)

(assert (=> b!1314097 (= b_free!31683 (not b_next!32387))))

(declare-fun tp!382642 () Bool)

(declare-fun b_and!87791 () Bool)

(assert (=> b!1314097 (= tp!382642 b_and!87791)))

(declare-fun b_free!31685 () Bool)

(declare-fun b_next!32389 () Bool)

(assert (=> b!1314097 (= b_free!31685 (not b_next!32389))))

(declare-fun tp!382632 () Bool)

(declare-fun b_and!87793 () Bool)

(assert (=> b!1314097 (= tp!382632 b_and!87793)))

(declare-fun b!1314094 () Bool)

(declare-fun b_free!31687 () Bool)

(declare-fun b_next!32391 () Bool)

(assert (=> b!1314094 (= b_free!31687 (not b_next!32391))))

(declare-fun tp!382637 () Bool)

(declare-fun b_and!87795 () Bool)

(assert (=> b!1314094 (= tp!382637 b_and!87795)))

(declare-fun b_free!31689 () Bool)

(declare-fun b_next!32393 () Bool)

(assert (=> b!1314094 (= b_free!31689 (not b_next!32393))))

(declare-fun tp!382638 () Bool)

(declare-fun b_and!87797 () Bool)

(assert (=> b!1314094 (= tp!382638 b_and!87797)))

(declare-fun b!1314088 () Bool)

(declare-fun b_free!31691 () Bool)

(declare-fun b_next!32395 () Bool)

(assert (=> b!1314088 (= b_free!31691 (not b_next!32395))))

(declare-fun tp!382633 () Bool)

(declare-fun b_and!87799 () Bool)

(assert (=> b!1314088 (= tp!382633 b_and!87799)))

(declare-fun b_free!31693 () Bool)

(declare-fun b_next!32397 () Bool)

(assert (=> b!1314088 (= b_free!31693 (not b_next!32397))))

(declare-fun tp!382639 () Bool)

(declare-fun b_and!87801 () Bool)

(assert (=> b!1314088 (= tp!382639 b_and!87801)))

(declare-fun b!1314084 () Bool)

(assert (=> b!1314084 true))

(assert (=> b!1314084 true))

(declare-fun b!1314089 () Bool)

(assert (=> b!1314089 true))

(declare-fun b!1314113 () Bool)

(assert (=> b!1314113 true))

(declare-fun bs!330188 () Bool)

(declare-fun b!1314080 () Bool)

(assert (= bs!330188 (and b!1314080 b!1314113)))

(declare-fun lambda!53407 () Int)

(declare-fun lambda!53406 () Int)

(assert (=> bs!330188 (not (= lambda!53407 lambda!53406))))

(assert (=> b!1314080 true))

(declare-fun b!1314078 () Bool)

(declare-fun res!590276 () Bool)

(declare-fun e!842483 () Bool)

(assert (=> b!1314078 (=> (not res!590276) (not e!842483))))

(declare-datatypes ((List!13394 0))(
  ( (Nil!13328) (Cons!13328 (h!18729 (_ BitVec 16)) (t!118231 List!13394)) )
))
(declare-datatypes ((TokenValue!2397 0))(
  ( (FloatLiteralValue!4794 (text!17224 List!13394)) (TokenValueExt!2396 (__x!8623 Int)) (Broken!11985 (value!75356 List!13394)) (Object!2462) (End!2397) (Def!2397) (Underscore!2397) (Match!2397) (Else!2397) (Error!2397) (Case!2397) (If!2397) (Extends!2397) (Abstract!2397) (Class!2397) (Val!2397) (DelimiterValue!4794 (del!2457 List!13394)) (KeywordValue!2403 (value!75357 List!13394)) (CommentValue!4794 (value!75358 List!13394)) (WhitespaceValue!4794 (value!75359 List!13394)) (IndentationValue!2397 (value!75360 List!13394)) (String!16220) (Int32!2397) (Broken!11986 (value!75361 List!13394)) (Boolean!2398) (Unit!19385) (OperatorValue!2400 (op!2457 List!13394)) (IdentifierValue!4794 (value!75362 List!13394)) (IdentifierValue!4795 (value!75363 List!13394)) (WhitespaceValue!4795 (value!75364 List!13394)) (True!4794) (False!4794) (Broken!11987 (value!75365 List!13394)) (Broken!11988 (value!75366 List!13394)) (True!4795) (RightBrace!2397) (RightBracket!2397) (Colon!2397) (Null!2397) (Comma!2397) (LeftBracket!2397) (False!4795) (LeftBrace!2397) (ImaginaryLiteralValue!2397 (text!17225 List!13394)) (StringLiteralValue!7191 (value!75367 List!13394)) (EOFValue!2397 (value!75368 List!13394)) (IdentValue!2397 (value!75369 List!13394)) (DelimiterValue!4795 (value!75370 List!13394)) (DedentValue!2397 (value!75371 List!13394)) (NewLineValue!2397 (value!75372 List!13394)) (IntegerValue!7191 (value!75373 (_ BitVec 32)) (text!17226 List!13394)) (IntegerValue!7192 (value!75374 Int) (text!17227 List!13394)) (Times!2397) (Or!2397) (Equal!2397) (Minus!2397) (Broken!11989 (value!75375 List!13394)) (And!2397) (Div!2397) (LessEqual!2397) (Mod!2397) (Concat!6018) (Not!2397) (Plus!2397) (SpaceValue!2397 (value!75376 List!13394)) (IntegerValue!7193 (value!75377 Int) (text!17228 List!13394)) (StringLiteralValue!7192 (text!17229 List!13394)) (FloatLiteralValue!4795 (text!17230 List!13394)) (BytesLiteralValue!2397 (value!75378 List!13394)) (CommentValue!4795 (value!75379 List!13394)) (StringLiteralValue!7193 (value!75380 List!13394)) (ErrorTokenValue!2397 (msg!2458 List!13394)) )
))
(declare-datatypes ((C!7532 0))(
  ( (C!7533 (val!4326 Int)) )
))
(declare-datatypes ((List!13395 0))(
  ( (Nil!13329) (Cons!13329 (h!18730 C!7532) (t!118232 List!13395)) )
))
(declare-datatypes ((IArray!8773 0))(
  ( (IArray!8774 (innerList!4444 List!13395)) )
))
(declare-datatypes ((Conc!4384 0))(
  ( (Node!4384 (left!11459 Conc!4384) (right!11789 Conc!4384) (csize!8998 Int) (cheight!4595 Int)) (Leaf!6734 (xs!7099 IArray!8773) (csize!8999 Int)) (Empty!4384) )
))
(declare-datatypes ((BalanceConc!8708 0))(
  ( (BalanceConc!8709 (c!215596 Conc!4384)) )
))
(declare-datatypes ((Regex!3621 0))(
  ( (ElementMatch!3621 (c!215597 C!7532)) (Concat!6019 (regOne!7754 Regex!3621) (regTwo!7754 Regex!3621)) (EmptyExpr!3621) (Star!3621 (reg!3950 Regex!3621)) (EmptyLang!3621) (Union!3621 (regOne!7755 Regex!3621) (regTwo!7755 Regex!3621)) )
))
(declare-datatypes ((String!16221 0))(
  ( (String!16222 (value!75381 String)) )
))
(declare-datatypes ((TokenValueInjection!4454 0))(
  ( (TokenValueInjection!4455 (toValue!3530 Int) (toChars!3389 Int)) )
))
(declare-datatypes ((Rule!4414 0))(
  ( (Rule!4415 (regex!2307 Regex!3621) (tag!2569 String!16221) (isSeparator!2307 Bool) (transformation!2307 TokenValueInjection!4454)) )
))
(declare-datatypes ((Token!4276 0))(
  ( (Token!4277 (value!75382 TokenValue!2397) (rule!4048 Rule!4414) (size!10832 Int) (originalCharacters!3169 List!13395)) )
))
(declare-fun t1!34 () Token!4276)

(declare-fun t2!34 () Token!4276)

(assert (=> b!1314078 (= res!590276 (not (= (isSeparator!2307 (rule!4048 t1!34)) (isSeparator!2307 (rule!4048 t2!34)))))))

(declare-fun b!1314079 () Bool)

(declare-fun res!590269 () Bool)

(assert (=> b!1314079 (=> (not res!590269) (not e!842483))))

(declare-datatypes ((List!13396 0))(
  ( (Nil!13330) (Cons!13330 (h!18731 Rule!4414) (t!118233 List!13396)) )
))
(declare-fun rules!2550 () List!13396)

(declare-fun isEmpty!7892 (List!13396) Bool)

(assert (=> b!1314079 (= res!590269 (not (isEmpty!7892 rules!2550)))))

(declare-fun e!842496 () Bool)

(declare-fun forall!3288 (List!13396 Int) Bool)

(assert (=> b!1314080 (= e!842496 (forall!3288 rules!2550 lambda!53407))))

(declare-datatypes ((Unit!19386 0))(
  ( (Unit!19387) )
))
(declare-fun lt!433186 () Unit!19386)

(declare-fun forallContained!558 (List!13396 Int Rule!4414) Unit!19386)

(assert (=> b!1314080 (= lt!433186 (forallContained!558 rules!2550 lambda!53407 (rule!4048 t1!34)))))

(declare-fun lt!433179 () Rule!4414)

(declare-fun lt!433185 () Unit!19386)

(assert (=> b!1314080 (= lt!433185 (forallContained!558 rules!2550 lambda!53407 lt!433179))))

(declare-fun b!1314081 () Bool)

(declare-fun e!842497 () Bool)

(assert (=> b!1314081 (= e!842497 e!842496)))

(declare-fun res!590295 () Bool)

(assert (=> b!1314081 (=> res!590295 e!842496)))

(declare-datatypes ((List!13397 0))(
  ( (Nil!13331) (Cons!13331 (h!18732 Token!4276) (t!118234 List!13397)) )
))
(declare-datatypes ((IArray!8775 0))(
  ( (IArray!8776 (innerList!4445 List!13397)) )
))
(declare-datatypes ((Conc!4385 0))(
  ( (Node!4385 (left!11460 Conc!4385) (right!11790 Conc!4385) (csize!9000 Int) (cheight!4596 Int)) (Leaf!6735 (xs!7100 IArray!8775) (csize!9001 Int)) (Empty!4385) )
))
(declare-datatypes ((BalanceConc!8710 0))(
  ( (BalanceConc!8711 (c!215598 Conc!4385)) )
))
(declare-datatypes ((tuple2!12946 0))(
  ( (tuple2!12947 (_1!7359 BalanceConc!8710) (_2!7359 BalanceConc!8708)) )
))
(declare-fun lt!433190 () tuple2!12946)

(declare-fun lt!433174 () List!13397)

(declare-fun list!5014 (BalanceConc!8710) List!13397)

(assert (=> b!1314081 (= res!590295 (not (= (list!5014 (_1!7359 lt!433190)) lt!433174)))))

(assert (=> b!1314081 (= lt!433174 (Cons!13331 t2!34 Nil!13331))))

(declare-fun lt!433178 () BalanceConc!8708)

(declare-datatypes ((LexerInterface!2002 0))(
  ( (LexerInterfaceExt!1999 (__x!8624 Int)) (Lexer!2000) )
))
(declare-fun thiss!19762 () LexerInterface!2002)

(declare-fun lex!837 (LexerInterface!2002 List!13396 BalanceConc!8708) tuple2!12946)

(assert (=> b!1314081 (= lt!433190 (lex!837 thiss!19762 rules!2550 lt!433178))))

(declare-fun print!776 (LexerInterface!2002 BalanceConc!8710) BalanceConc!8708)

(declare-fun singletonSeq!884 (Token!4276) BalanceConc!8710)

(assert (=> b!1314081 (= lt!433178 (print!776 thiss!19762 (singletonSeq!884 t2!34)))))

(declare-fun e!842505 () Bool)

(declare-fun e!842501 () Bool)

(declare-fun tp!382635 () Bool)

(declare-fun b!1314082 () Bool)

(declare-fun inv!21 (TokenValue!2397) Bool)

(assert (=> b!1314082 (= e!842505 (and (inv!21 (value!75382 t1!34)) e!842501 tp!382635))))

(declare-fun b!1314083 () Bool)

(declare-fun e!842492 () Bool)

(declare-fun e!842485 () Bool)

(assert (=> b!1314083 (= e!842492 e!842485)))

(declare-fun res!590281 () Bool)

(assert (=> b!1314083 (=> res!590281 e!842485)))

(declare-fun lt!433191 () List!13395)

(declare-fun lt!433171 () List!13395)

(declare-fun ++!3394 (List!13395 List!13395) List!13395)

(declare-fun getSuffix!477 (List!13395 List!13395) List!13395)

(assert (=> b!1314083 (= res!590281 (not (= lt!433191 (++!3394 lt!433171 (getSuffix!477 lt!433191 lt!433171)))))))

(declare-fun lambda!53403 () Int)

(declare-fun pickWitness!84 (Int) List!13395)

(assert (=> b!1314083 (= lt!433191 (pickWitness!84 lambda!53403))))

(declare-fun e!842491 () Bool)

(assert (=> b!1314084 (= e!842491 (not e!842492))))

(declare-fun res!590272 () Bool)

(assert (=> b!1314084 (=> res!590272 e!842492)))

(declare-fun Exists!779 (Int) Bool)

(assert (=> b!1314084 (= res!590272 (not (Exists!779 lambda!53403)))))

(assert (=> b!1314084 (Exists!779 lambda!53403)))

(declare-fun lt!433177 () Unit!19386)

(declare-fun lt!433175 () Regex!3621)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!97 (Regex!3621 List!13395) Unit!19386)

(assert (=> b!1314084 (= lt!433177 (lemmaPrefixMatchThenExistsStringThatMatches!97 lt!433175 lt!433171))))

(declare-fun b!1314085 () Bool)

(declare-fun res!590284 () Bool)

(declare-fun e!842500 () Bool)

(assert (=> b!1314085 (=> res!590284 e!842500)))

(declare-fun lt!433173 () C!7532)

(declare-fun contains!2333 (List!13395 C!7532) Bool)

(assert (=> b!1314085 (= res!590284 (not (contains!2333 lt!433191 lt!433173)))))

(declare-fun b!1314086 () Bool)

(declare-fun res!590275 () Bool)

(assert (=> b!1314086 (=> res!590275 e!842496)))

(declare-fun isEmpty!7893 (BalanceConc!8708) Bool)

(assert (=> b!1314086 (= res!590275 (not (isEmpty!7893 (_2!7359 lt!433190))))))

(declare-fun b!1314087 () Bool)

(declare-fun res!590274 () Bool)

(assert (=> b!1314087 (=> res!590274 e!842496)))

(declare-fun contains!2334 (List!13396 Rule!4414) Bool)

(assert (=> b!1314087 (= res!590274 (not (contains!2334 rules!2550 (rule!4048 t2!34))))))

(declare-fun e!842506 () Bool)

(assert (=> b!1314088 (= e!842506 (and tp!382633 tp!382639))))

(declare-fun e!842495 () Bool)

(assert (=> b!1314089 (= e!842500 e!842495)))

(declare-fun res!590298 () Bool)

(assert (=> b!1314089 (=> res!590298 e!842495)))

(declare-fun lambda!53405 () Int)

(declare-fun lambda!53404 () Int)

(declare-datatypes ((List!13398 0))(
  ( (Nil!13332) (Cons!13332 (h!18733 Regex!3621) (t!118235 List!13398)) )
))
(declare-fun exists!316 (List!13398 Int) Bool)

(declare-fun map!2927 (List!13396 Int) List!13398)

(assert (=> b!1314089 (= res!590298 (not (exists!316 (map!2927 rules!2550 lambda!53404) lambda!53405)))))

(declare-fun lt!433192 () List!13398)

(assert (=> b!1314089 (exists!316 lt!433192 lambda!53405)))

(declare-fun lt!433176 () Unit!19386)

(declare-fun matchRGenUnionSpec!58 (Regex!3621 List!13398 List!13395) Unit!19386)

(assert (=> b!1314089 (= lt!433176 (matchRGenUnionSpec!58 lt!433175 lt!433192 lt!433191))))

(assert (=> b!1314089 (= lt!433192 (map!2927 rules!2550 lambda!53404))))

(declare-fun b!1314090 () Bool)

(declare-fun res!590273 () Bool)

(assert (=> b!1314090 (=> res!590273 e!842497)))

(declare-fun lt!433183 () List!13395)

(declare-datatypes ((tuple2!12948 0))(
  ( (tuple2!12949 (_1!7360 Token!4276) (_2!7360 List!13395)) )
))
(declare-datatypes ((Option!2574 0))(
  ( (None!2573) (Some!2573 (v!21108 tuple2!12948)) )
))
(declare-fun maxPrefix!1012 (LexerInterface!2002 List!13396 List!13395) Option!2574)

(assert (=> b!1314090 (= res!590273 (not (= (maxPrefix!1012 thiss!19762 rules!2550 lt!433183) (Some!2573 (tuple2!12949 t1!34 Nil!13329)))))))

(declare-fun b!1314091 () Bool)

(declare-fun res!590286 () Bool)

(assert (=> b!1314091 (=> res!590286 e!842497)))

(assert (=> b!1314091 (= res!590286 (not (contains!2334 rules!2550 (rule!4048 t1!34))))))

(declare-fun b!1314093 () Bool)

(declare-fun res!590287 () Bool)

(assert (=> b!1314093 (=> res!590287 e!842500)))

(declare-fun lt!433181 () C!7532)

(assert (=> b!1314093 (= res!590287 (not (contains!2333 lt!433191 lt!433181)))))

(declare-fun e!842486 () Bool)

(assert (=> b!1314094 (= e!842486 (and tp!382637 tp!382638))))

(declare-fun b!1314095 () Bool)

(declare-fun e!842498 () Bool)

(assert (=> b!1314095 (= e!842495 e!842498)))

(declare-fun res!590289 () Bool)

(assert (=> b!1314095 (=> res!590289 e!842498)))

(declare-fun lt!433187 () Regex!3621)

(declare-fun contains!2335 (List!13398 Regex!3621) Bool)

(assert (=> b!1314095 (= res!590289 (not (contains!2335 (map!2927 rules!2550 lambda!53404) lt!433187)))))

(declare-fun getWitness!208 (List!13398 Int) Regex!3621)

(assert (=> b!1314095 (= lt!433187 (getWitness!208 (map!2927 rules!2550 lambda!53404) lambda!53405))))

(declare-fun b!1314096 () Bool)

(declare-fun res!590291 () Bool)

(assert (=> b!1314096 (=> (not res!590291) (not e!842483))))

(declare-fun rulesProduceIndividualToken!971 (LexerInterface!2002 List!13396 Token!4276) Bool)

(assert (=> b!1314096 (= res!590291 (rulesProduceIndividualToken!971 thiss!19762 rules!2550 t1!34))))

(declare-fun e!842502 () Bool)

(assert (=> b!1314097 (= e!842502 (and tp!382642 tp!382632))))

(declare-fun tp!382636 () Bool)

(declare-fun b!1314098 () Bool)

(declare-fun e!842484 () Bool)

(declare-fun e!842499 () Bool)

(assert (=> b!1314098 (= e!842484 (and (inv!21 (value!75382 t2!34)) e!842499 tp!382636))))

(declare-fun b!1314099 () Bool)

(assert (=> b!1314099 (= e!842485 e!842500)))

(declare-fun res!590283 () Bool)

(assert (=> b!1314099 (=> res!590283 e!842500)))

(assert (=> b!1314099 (= res!590283 (not (contains!2333 lt!433171 lt!433181)))))

(declare-fun lt!433188 () BalanceConc!8708)

(declare-fun apply!3017 (BalanceConc!8708 Int) C!7532)

(assert (=> b!1314099 (= lt!433181 (apply!3017 lt!433188 0))))

(declare-fun b!1314100 () Bool)

(declare-fun res!590293 () Bool)

(assert (=> b!1314100 (=> (not res!590293) (not e!842483))))

(declare-fun rulesInvariant!1872 (LexerInterface!2002 List!13396) Bool)

(assert (=> b!1314100 (= res!590293 (rulesInvariant!1872 thiss!19762 rules!2550))))

(declare-fun b!1314101 () Bool)

(declare-fun res!590299 () Bool)

(assert (=> b!1314101 (=> res!590299 e!842497)))

(declare-fun lt!433182 () tuple2!12946)

(assert (=> b!1314101 (= res!590299 (not (isEmpty!7893 (_2!7359 lt!433182))))))

(declare-fun b!1314102 () Bool)

(declare-fun res!590271 () Bool)

(assert (=> b!1314102 (=> res!590271 e!842500)))

(assert (=> b!1314102 (= res!590271 (not (contains!2333 lt!433171 lt!433173)))))

(declare-fun b!1314103 () Bool)

(declare-fun res!590296 () Bool)

(assert (=> b!1314103 (=> (not res!590296) (not e!842483))))

(assert (=> b!1314103 (= res!590296 (rulesProduceIndividualToken!971 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1314104 () Bool)

(declare-fun res!590290 () Bool)

(assert (=> b!1314104 (=> res!590290 e!842496)))

(declare-datatypes ((tuple2!12950 0))(
  ( (tuple2!12951 (_1!7361 List!13397) (_2!7361 List!13395)) )
))
(declare-fun lexList!540 (LexerInterface!2002 List!13396 List!13395) tuple2!12950)

(declare-fun list!5015 (BalanceConc!8708) List!13395)

(assert (=> b!1314104 (= res!590290 (not (= (lexList!540 thiss!19762 rules!2550 (list!5015 lt!433178)) (tuple2!12951 lt!433174 Nil!13329))))))

(declare-fun b!1314105 () Bool)

(declare-fun e!842494 () Bool)

(assert (=> b!1314105 (= e!842494 e!842491)))

(declare-fun res!590280 () Bool)

(assert (=> b!1314105 (=> (not res!590280) (not e!842491))))

(declare-fun prefixMatch!134 (Regex!3621 List!13395) Bool)

(assert (=> b!1314105 (= res!590280 (prefixMatch!134 lt!433175 lt!433171))))

(declare-fun rulesRegex!192 (LexerInterface!2002 List!13396) Regex!3621)

(assert (=> b!1314105 (= lt!433175 (rulesRegex!192 thiss!19762 rules!2550))))

(assert (=> b!1314105 (= lt!433171 (++!3394 lt!433183 (Cons!13329 lt!433173 Nil!13329)))))

(declare-fun lt!433180 () BalanceConc!8708)

(assert (=> b!1314105 (= lt!433173 (apply!3017 lt!433180 0))))

(assert (=> b!1314105 (= lt!433183 (list!5015 lt!433188))))

(declare-fun charsOf!1279 (Token!4276) BalanceConc!8708)

(assert (=> b!1314105 (= lt!433188 (charsOf!1279 t1!34))))

(declare-fun b!1314106 () Bool)

(declare-fun tp!382631 () Bool)

(declare-fun inv!17700 (String!16221) Bool)

(declare-fun inv!17703 (TokenValueInjection!4454) Bool)

(assert (=> b!1314106 (= e!842499 (and tp!382631 (inv!17700 (tag!2569 (rule!4048 t2!34))) (inv!17703 (transformation!2307 (rule!4048 t2!34))) e!842506))))

(declare-fun b!1314107 () Bool)

(assert (=> b!1314107 (= e!842483 e!842494)))

(declare-fun res!590270 () Bool)

(assert (=> b!1314107 (=> (not res!590270) (not e!842494))))

(declare-fun size!10833 (BalanceConc!8708) Int)

(assert (=> b!1314107 (= res!590270 (> (size!10833 lt!433180) 0))))

(assert (=> b!1314107 (= lt!433180 (charsOf!1279 t2!34))))

(declare-fun b!1314108 () Bool)

(declare-fun res!590279 () Bool)

(assert (=> b!1314108 (=> res!590279 e!842497)))

(declare-fun lt!433172 () List!13397)

(declare-fun lt!433184 () BalanceConc!8708)

(assert (=> b!1314108 (= res!590279 (not (= (lexList!540 thiss!19762 rules!2550 (list!5015 lt!433184)) (tuple2!12951 lt!433172 Nil!13329))))))

(declare-fun b!1314109 () Bool)

(declare-fun res!590277 () Bool)

(assert (=> b!1314109 (=> res!590277 e!842496)))

(assert (=> b!1314109 (= res!590277 (not (contains!2334 rules!2550 lt!433179)))))

(declare-fun b!1314092 () Bool)

(declare-fun e!842503 () Bool)

(assert (=> b!1314092 (= e!842503 e!842497)))

(declare-fun res!590282 () Bool)

(assert (=> b!1314092 (=> res!590282 e!842497)))

(assert (=> b!1314092 (= res!590282 (not (= (list!5014 (_1!7359 lt!433182)) lt!433172)))))

(assert (=> b!1314092 (= lt!433172 (Cons!13331 t1!34 Nil!13331))))

(assert (=> b!1314092 (= lt!433182 (lex!837 thiss!19762 rules!2550 lt!433184))))

(assert (=> b!1314092 (= lt!433184 (print!776 thiss!19762 (singletonSeq!884 t1!34)))))

(declare-fun getWitness!209 (List!13396 Int) Rule!4414)

(assert (=> b!1314092 (= lt!433179 (getWitness!209 rules!2550 lambda!53406))))

(declare-fun res!590294 () Bool)

(assert (=> start!116226 (=> (not res!590294) (not e!842483))))

(get-info :version)

(assert (=> start!116226 (= res!590294 ((_ is Lexer!2000) thiss!19762))))

(assert (=> start!116226 e!842483))

(assert (=> start!116226 true))

(declare-fun e!842489 () Bool)

(assert (=> start!116226 e!842489))

(declare-fun inv!17704 (Token!4276) Bool)

(assert (=> start!116226 (and (inv!17704 t1!34) e!842505)))

(assert (=> start!116226 (and (inv!17704 t2!34) e!842484)))

(declare-fun b!1314110 () Bool)

(declare-fun res!590292 () Bool)

(assert (=> b!1314110 (=> res!590292 e!842500)))

(declare-fun matchR!1623 (Regex!3621 List!13395) Bool)

(assert (=> b!1314110 (= res!590292 (not (matchR!1623 lt!433175 lt!433191)))))

(declare-fun b!1314111 () Bool)

(declare-fun res!590278 () Bool)

(assert (=> b!1314111 (=> res!590278 e!842496)))

(assert (=> b!1314111 (= res!590278 (not (= (maxPrefix!1012 thiss!19762 rules!2550 (list!5015 lt!433180)) (Some!2573 (tuple2!12949 t2!34 Nil!13329)))))))

(declare-fun tp!382634 () Bool)

(declare-fun b!1314112 () Bool)

(assert (=> b!1314112 (= e!842501 (and tp!382634 (inv!17700 (tag!2569 (rule!4048 t1!34))) (inv!17703 (transformation!2307 (rule!4048 t1!34))) e!842486))))

(assert (=> b!1314113 (= e!842498 e!842503)))

(declare-fun res!590297 () Bool)

(assert (=> b!1314113 (=> res!590297 e!842503)))

(declare-fun exists!317 (List!13396 Int) Bool)

(assert (=> b!1314113 (= res!590297 (not (exists!317 rules!2550 lambda!53406)))))

(assert (=> b!1314113 (exists!317 rules!2550 lambda!53406)))

(declare-fun lt!433189 () Unit!19386)

(declare-fun lemmaMapContains!50 (List!13396 Int Regex!3621) Unit!19386)

(assert (=> b!1314113 (= lt!433189 (lemmaMapContains!50 rules!2550 lambda!53404 lt!433187))))

(declare-fun b!1314114 () Bool)

(declare-fun res!590288 () Bool)

(assert (=> b!1314114 (=> (not res!590288) (not e!842494))))

(declare-fun sepAndNonSepRulesDisjointChars!680 (List!13396 List!13396) Bool)

(assert (=> b!1314114 (= res!590288 (sepAndNonSepRulesDisjointChars!680 rules!2550 rules!2550))))

(declare-fun b!1314115 () Bool)

(declare-fun res!590285 () Bool)

(assert (=> b!1314115 (=> (not res!590285) (not e!842494))))

(declare-fun separableTokensPredicate!285 (LexerInterface!2002 Token!4276 Token!4276 List!13396) Bool)

(assert (=> b!1314115 (= res!590285 (not (separableTokensPredicate!285 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1314116 () Bool)

(declare-fun e!842482 () Bool)

(declare-fun tp!382641 () Bool)

(assert (=> b!1314116 (= e!842489 (and e!842482 tp!382641))))

(declare-fun b!1314117 () Bool)

(declare-fun tp!382640 () Bool)

(assert (=> b!1314117 (= e!842482 (and tp!382640 (inv!17700 (tag!2569 (h!18731 rules!2550))) (inv!17703 (transformation!2307 (h!18731 rules!2550))) e!842502))))

(assert (= (and start!116226 res!590294) b!1314079))

(assert (= (and b!1314079 res!590269) b!1314100))

(assert (= (and b!1314100 res!590293) b!1314096))

(assert (= (and b!1314096 res!590291) b!1314103))

(assert (= (and b!1314103 res!590296) b!1314078))

(assert (= (and b!1314078 res!590276) b!1314107))

(assert (= (and b!1314107 res!590270) b!1314114))

(assert (= (and b!1314114 res!590288) b!1314115))

(assert (= (and b!1314115 res!590285) b!1314105))

(assert (= (and b!1314105 res!590280) b!1314084))

(assert (= (and b!1314084 (not res!590272)) b!1314083))

(assert (= (and b!1314083 (not res!590281)) b!1314099))

(assert (= (and b!1314099 (not res!590283)) b!1314093))

(assert (= (and b!1314093 (not res!590287)) b!1314102))

(assert (= (and b!1314102 (not res!590271)) b!1314085))

(assert (= (and b!1314085 (not res!590284)) b!1314110))

(assert (= (and b!1314110 (not res!590292)) b!1314089))

(assert (= (and b!1314089 (not res!590298)) b!1314095))

(assert (= (and b!1314095 (not res!590289)) b!1314113))

(assert (= (and b!1314113 (not res!590297)) b!1314092))

(assert (= (and b!1314092 (not res!590282)) b!1314101))

(assert (= (and b!1314101 (not res!590299)) b!1314108))

(assert (= (and b!1314108 (not res!590279)) b!1314090))

(assert (= (and b!1314090 (not res!590273)) b!1314091))

(assert (= (and b!1314091 (not res!590286)) b!1314081))

(assert (= (and b!1314081 (not res!590295)) b!1314086))

(assert (= (and b!1314086 (not res!590275)) b!1314104))

(assert (= (and b!1314104 (not res!590290)) b!1314111))

(assert (= (and b!1314111 (not res!590278)) b!1314087))

(assert (= (and b!1314087 (not res!590274)) b!1314109))

(assert (= (and b!1314109 (not res!590277)) b!1314080))

(assert (= b!1314117 b!1314097))

(assert (= b!1314116 b!1314117))

(assert (= (and start!116226 ((_ is Cons!13330) rules!2550)) b!1314116))

(assert (= b!1314112 b!1314094))

(assert (= b!1314082 b!1314112))

(assert (= start!116226 b!1314082))

(assert (= b!1314106 b!1314088))

(assert (= b!1314098 b!1314106))

(assert (= start!116226 b!1314098))

(declare-fun m!1467093 () Bool)

(assert (=> b!1314092 m!1467093))

(declare-fun m!1467095 () Bool)

(assert (=> b!1314092 m!1467095))

(declare-fun m!1467097 () Bool)

(assert (=> b!1314092 m!1467097))

(declare-fun m!1467099 () Bool)

(assert (=> b!1314092 m!1467099))

(assert (=> b!1314092 m!1467097))

(declare-fun m!1467101 () Bool)

(assert (=> b!1314092 m!1467101))

(declare-fun m!1467103 () Bool)

(assert (=> b!1314085 m!1467103))

(declare-fun m!1467105 () Bool)

(assert (=> b!1314080 m!1467105))

(declare-fun m!1467107 () Bool)

(assert (=> b!1314080 m!1467107))

(declare-fun m!1467109 () Bool)

(assert (=> b!1314080 m!1467109))

(declare-fun m!1467111 () Bool)

(assert (=> start!116226 m!1467111))

(declare-fun m!1467113 () Bool)

(assert (=> start!116226 m!1467113))

(declare-fun m!1467115 () Bool)

(assert (=> b!1314111 m!1467115))

(assert (=> b!1314111 m!1467115))

(declare-fun m!1467117 () Bool)

(assert (=> b!1314111 m!1467117))

(declare-fun m!1467119 () Bool)

(assert (=> b!1314102 m!1467119))

(declare-fun m!1467121 () Bool)

(assert (=> b!1314106 m!1467121))

(declare-fun m!1467123 () Bool)

(assert (=> b!1314106 m!1467123))

(declare-fun m!1467125 () Bool)

(assert (=> b!1314089 m!1467125))

(declare-fun m!1467127 () Bool)

(assert (=> b!1314089 m!1467127))

(declare-fun m!1467129 () Bool)

(assert (=> b!1314089 m!1467129))

(assert (=> b!1314089 m!1467125))

(assert (=> b!1314089 m!1467125))

(declare-fun m!1467131 () Bool)

(assert (=> b!1314089 m!1467131))

(declare-fun m!1467133 () Bool)

(assert (=> b!1314090 m!1467133))

(declare-fun m!1467135 () Bool)

(assert (=> b!1314117 m!1467135))

(declare-fun m!1467137 () Bool)

(assert (=> b!1314117 m!1467137))

(declare-fun m!1467139 () Bool)

(assert (=> b!1314109 m!1467139))

(declare-fun m!1467141 () Bool)

(assert (=> b!1314103 m!1467141))

(declare-fun m!1467143 () Bool)

(assert (=> b!1314107 m!1467143))

(declare-fun m!1467145 () Bool)

(assert (=> b!1314107 m!1467145))

(declare-fun m!1467147 () Bool)

(assert (=> b!1314086 m!1467147))

(declare-fun m!1467149 () Bool)

(assert (=> b!1314098 m!1467149))

(declare-fun m!1467151 () Bool)

(assert (=> b!1314104 m!1467151))

(assert (=> b!1314104 m!1467151))

(declare-fun m!1467153 () Bool)

(assert (=> b!1314104 m!1467153))

(declare-fun m!1467155 () Bool)

(assert (=> b!1314100 m!1467155))

(declare-fun m!1467157 () Bool)

(assert (=> b!1314082 m!1467157))

(declare-fun m!1467159 () Bool)

(assert (=> b!1314087 m!1467159))

(declare-fun m!1467161 () Bool)

(assert (=> b!1314115 m!1467161))

(declare-fun m!1467163 () Bool)

(assert (=> b!1314105 m!1467163))

(declare-fun m!1467165 () Bool)

(assert (=> b!1314105 m!1467165))

(declare-fun m!1467167 () Bool)

(assert (=> b!1314105 m!1467167))

(declare-fun m!1467169 () Bool)

(assert (=> b!1314105 m!1467169))

(declare-fun m!1467171 () Bool)

(assert (=> b!1314105 m!1467171))

(declare-fun m!1467173 () Bool)

(assert (=> b!1314105 m!1467173))

(assert (=> b!1314095 m!1467125))

(assert (=> b!1314095 m!1467125))

(declare-fun m!1467175 () Bool)

(assert (=> b!1314095 m!1467175))

(assert (=> b!1314095 m!1467125))

(assert (=> b!1314095 m!1467125))

(declare-fun m!1467177 () Bool)

(assert (=> b!1314095 m!1467177))

(declare-fun m!1467179 () Bool)

(assert (=> b!1314101 m!1467179))

(declare-fun m!1467181 () Bool)

(assert (=> b!1314110 m!1467181))

(declare-fun m!1467183 () Bool)

(assert (=> b!1314112 m!1467183))

(declare-fun m!1467185 () Bool)

(assert (=> b!1314112 m!1467185))

(declare-fun m!1467187 () Bool)

(assert (=> b!1314083 m!1467187))

(assert (=> b!1314083 m!1467187))

(declare-fun m!1467189 () Bool)

(assert (=> b!1314083 m!1467189))

(declare-fun m!1467191 () Bool)

(assert (=> b!1314083 m!1467191))

(declare-fun m!1467193 () Bool)

(assert (=> b!1314099 m!1467193))

(declare-fun m!1467195 () Bool)

(assert (=> b!1314099 m!1467195))

(declare-fun m!1467197 () Bool)

(assert (=> b!1314093 m!1467197))

(declare-fun m!1467199 () Bool)

(assert (=> b!1314081 m!1467199))

(declare-fun m!1467201 () Bool)

(assert (=> b!1314081 m!1467201))

(declare-fun m!1467203 () Bool)

(assert (=> b!1314081 m!1467203))

(assert (=> b!1314081 m!1467203))

(declare-fun m!1467205 () Bool)

(assert (=> b!1314081 m!1467205))

(declare-fun m!1467207 () Bool)

(assert (=> b!1314113 m!1467207))

(assert (=> b!1314113 m!1467207))

(declare-fun m!1467209 () Bool)

(assert (=> b!1314113 m!1467209))

(declare-fun m!1467211 () Bool)

(assert (=> b!1314079 m!1467211))

(declare-fun m!1467213 () Bool)

(assert (=> b!1314084 m!1467213))

(assert (=> b!1314084 m!1467213))

(declare-fun m!1467215 () Bool)

(assert (=> b!1314084 m!1467215))

(declare-fun m!1467217 () Bool)

(assert (=> b!1314114 m!1467217))

(declare-fun m!1467219 () Bool)

(assert (=> b!1314091 m!1467219))

(declare-fun m!1467221 () Bool)

(assert (=> b!1314108 m!1467221))

(assert (=> b!1314108 m!1467221))

(declare-fun m!1467223 () Bool)

(assert (=> b!1314108 m!1467223))

(declare-fun m!1467225 () Bool)

(assert (=> b!1314096 m!1467225))

(check-sat (not b!1314113) (not b_next!32393) b_and!87791 (not b!1314089) (not b!1314085) b_and!87799 (not b!1314081) (not b!1314090) (not b!1314103) (not b!1314096) (not b!1314080) (not b!1314117) b_and!87797 (not b!1314095) (not start!116226) (not b!1314107) b_and!87801 (not b!1314087) (not b!1314098) b_and!87795 (not b!1314111) (not b!1314116) (not b_next!32391) (not b!1314101) (not b!1314110) (not b!1314104) (not b!1314115) (not b!1314079) (not b!1314092) (not b!1314112) (not b!1314083) (not b!1314084) (not b_next!32389) (not b!1314099) (not b!1314108) (not b_next!32395) (not b!1314082) (not b!1314114) (not b!1314086) (not b!1314093) (not b!1314105) (not b!1314106) (not b!1314109) (not b_next!32387) (not b!1314102) b_and!87793 (not b!1314091) (not b!1314100) (not b_next!32397))
(check-sat b_and!87797 (not b_next!32393) b_and!87791 b_and!87801 b_and!87795 (not b_next!32391) b_and!87799 (not b_next!32387) b_and!87793 (not b_next!32397) (not b_next!32389) (not b_next!32395))
(get-model)

(declare-fun d!370228 () Bool)

(assert (=> d!370228 (= (inv!17700 (tag!2569 (rule!4048 t2!34))) (= (mod (str.len (value!75381 (tag!2569 (rule!4048 t2!34)))) 2) 0))))

(assert (=> b!1314106 d!370228))

(declare-fun d!370230 () Bool)

(declare-fun res!590324 () Bool)

(declare-fun e!842523 () Bool)

(assert (=> d!370230 (=> (not res!590324) (not e!842523))))

(declare-fun semiInverseModEq!865 (Int Int) Bool)

(assert (=> d!370230 (= res!590324 (semiInverseModEq!865 (toChars!3389 (transformation!2307 (rule!4048 t2!34))) (toValue!3530 (transformation!2307 (rule!4048 t2!34)))))))

(assert (=> d!370230 (= (inv!17703 (transformation!2307 (rule!4048 t2!34))) e!842523)))

(declare-fun b!1314150 () Bool)

(declare-fun equivClasses!824 (Int Int) Bool)

(assert (=> b!1314150 (= e!842523 (equivClasses!824 (toChars!3389 (transformation!2307 (rule!4048 t2!34))) (toValue!3530 (transformation!2307 (rule!4048 t2!34)))))))

(assert (= (and d!370230 res!590324) b!1314150))

(declare-fun m!1467269 () Bool)

(assert (=> d!370230 m!1467269))

(declare-fun m!1467271 () Bool)

(assert (=> b!1314150 m!1467271))

(assert (=> b!1314106 d!370230))

(declare-fun d!370232 () Bool)

(declare-fun lt!433207 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1869 (List!13395) (InoxSet C!7532))

(assert (=> d!370232 (= lt!433207 (select (content!1869 lt!433191) lt!433173))))

(declare-fun e!842528 () Bool)

(assert (=> d!370232 (= lt!433207 e!842528)))

(declare-fun res!590329 () Bool)

(assert (=> d!370232 (=> (not res!590329) (not e!842528))))

(assert (=> d!370232 (= res!590329 ((_ is Cons!13329) lt!433191))))

(assert (=> d!370232 (= (contains!2333 lt!433191 lt!433173) lt!433207)))

(declare-fun b!1314155 () Bool)

(declare-fun e!842529 () Bool)

(assert (=> b!1314155 (= e!842528 e!842529)))

(declare-fun res!590330 () Bool)

(assert (=> b!1314155 (=> res!590330 e!842529)))

(assert (=> b!1314155 (= res!590330 (= (h!18730 lt!433191) lt!433173))))

(declare-fun b!1314156 () Bool)

(assert (=> b!1314156 (= e!842529 (contains!2333 (t!118232 lt!433191) lt!433173))))

(assert (= (and d!370232 res!590329) b!1314155))

(assert (= (and b!1314155 (not res!590330)) b!1314156))

(declare-fun m!1467273 () Bool)

(assert (=> d!370232 m!1467273))

(declare-fun m!1467275 () Bool)

(assert (=> d!370232 m!1467275))

(declare-fun m!1467277 () Bool)

(assert (=> b!1314156 m!1467277))

(assert (=> b!1314085 d!370232))

(declare-fun d!370234 () Bool)

(declare-fun lt!433210 () Int)

(declare-fun size!10839 (List!13395) Int)

(assert (=> d!370234 (= lt!433210 (size!10839 (list!5015 lt!433180)))))

(declare-fun size!10840 (Conc!4384) Int)

(assert (=> d!370234 (= lt!433210 (size!10840 (c!215596 lt!433180)))))

(assert (=> d!370234 (= (size!10833 lt!433180) lt!433210)))

(declare-fun bs!330191 () Bool)

(assert (= bs!330191 d!370234))

(assert (=> bs!330191 m!1467115))

(assert (=> bs!330191 m!1467115))

(declare-fun m!1467279 () Bool)

(assert (=> bs!330191 m!1467279))

(declare-fun m!1467281 () Bool)

(assert (=> bs!330191 m!1467281))

(assert (=> b!1314107 d!370234))

(declare-fun d!370236 () Bool)

(declare-fun lt!433213 () BalanceConc!8708)

(assert (=> d!370236 (= (list!5015 lt!433213) (originalCharacters!3169 t2!34))))

(declare-fun dynLambda!5800 (Int TokenValue!2397) BalanceConc!8708)

(assert (=> d!370236 (= lt!433213 (dynLambda!5800 (toChars!3389 (transformation!2307 (rule!4048 t2!34))) (value!75382 t2!34)))))

(assert (=> d!370236 (= (charsOf!1279 t2!34) lt!433213)))

(declare-fun b_lambda!37893 () Bool)

(assert (=> (not b_lambda!37893) (not d!370236)))

(declare-fun t!118249 () Bool)

(declare-fun tb!69853 () Bool)

(assert (=> (and b!1314097 (= (toChars!3389 (transformation!2307 (h!18731 rules!2550))) (toChars!3389 (transformation!2307 (rule!4048 t2!34)))) t!118249) tb!69853))

(declare-fun b!1314161 () Bool)

(declare-fun e!842532 () Bool)

(declare-fun tp!382649 () Bool)

(declare-fun inv!17707 (Conc!4384) Bool)

(assert (=> b!1314161 (= e!842532 (and (inv!17707 (c!215596 (dynLambda!5800 (toChars!3389 (transformation!2307 (rule!4048 t2!34))) (value!75382 t2!34)))) tp!382649))))

(declare-fun result!84756 () Bool)

(declare-fun inv!17708 (BalanceConc!8708) Bool)

(assert (=> tb!69853 (= result!84756 (and (inv!17708 (dynLambda!5800 (toChars!3389 (transformation!2307 (rule!4048 t2!34))) (value!75382 t2!34))) e!842532))))

(assert (= tb!69853 b!1314161))

(declare-fun m!1467283 () Bool)

(assert (=> b!1314161 m!1467283))

(declare-fun m!1467285 () Bool)

(assert (=> tb!69853 m!1467285))

(assert (=> d!370236 t!118249))

(declare-fun b_and!87821 () Bool)

(assert (= b_and!87793 (and (=> t!118249 result!84756) b_and!87821)))

(declare-fun tb!69855 () Bool)

(declare-fun t!118251 () Bool)

(assert (=> (and b!1314094 (= (toChars!3389 (transformation!2307 (rule!4048 t1!34))) (toChars!3389 (transformation!2307 (rule!4048 t2!34)))) t!118251) tb!69855))

(declare-fun result!84760 () Bool)

(assert (= result!84760 result!84756))

(assert (=> d!370236 t!118251))

(declare-fun b_and!87823 () Bool)

(assert (= b_and!87797 (and (=> t!118251 result!84760) b_and!87823)))

(declare-fun t!118253 () Bool)

(declare-fun tb!69857 () Bool)

(assert (=> (and b!1314088 (= (toChars!3389 (transformation!2307 (rule!4048 t2!34))) (toChars!3389 (transformation!2307 (rule!4048 t2!34)))) t!118253) tb!69857))

(declare-fun result!84762 () Bool)

(assert (= result!84762 result!84756))

(assert (=> d!370236 t!118253))

(declare-fun b_and!87825 () Bool)

(assert (= b_and!87801 (and (=> t!118253 result!84762) b_and!87825)))

(declare-fun m!1467287 () Bool)

(assert (=> d!370236 m!1467287))

(declare-fun m!1467289 () Bool)

(assert (=> d!370236 m!1467289))

(assert (=> b!1314107 d!370236))

(declare-fun d!370238 () Bool)

(declare-fun lt!433216 () Bool)

(declare-fun isEmpty!7898 (List!13395) Bool)

(assert (=> d!370238 (= lt!433216 (isEmpty!7898 (list!5015 (_2!7359 lt!433190))))))

(declare-fun isEmpty!7899 (Conc!4384) Bool)

(assert (=> d!370238 (= lt!433216 (isEmpty!7899 (c!215596 (_2!7359 lt!433190))))))

(assert (=> d!370238 (= (isEmpty!7893 (_2!7359 lt!433190)) lt!433216)))

(declare-fun bs!330192 () Bool)

(assert (= bs!330192 d!370238))

(declare-fun m!1467291 () Bool)

(assert (=> bs!330192 m!1467291))

(assert (=> bs!330192 m!1467291))

(declare-fun m!1467293 () Bool)

(assert (=> bs!330192 m!1467293))

(declare-fun m!1467295 () Bool)

(assert (=> bs!330192 m!1467295))

(assert (=> b!1314086 d!370238))

(declare-fun b!1314217 () Bool)

(declare-fun e!842573 () Bool)

(declare-fun lt!433246 () tuple2!12950)

(declare-fun isEmpty!7900 (List!13397) Bool)

(assert (=> b!1314217 (= e!842573 (not (isEmpty!7900 (_1!7361 lt!433246))))))

(declare-fun d!370240 () Bool)

(declare-fun e!842572 () Bool)

(assert (=> d!370240 e!842572))

(declare-fun c!215612 () Bool)

(declare-fun size!10841 (List!13397) Int)

(assert (=> d!370240 (= c!215612 (> (size!10841 (_1!7361 lt!433246)) 0))))

(declare-fun e!842574 () tuple2!12950)

(assert (=> d!370240 (= lt!433246 e!842574)))

(declare-fun c!215613 () Bool)

(declare-fun lt!433244 () Option!2574)

(assert (=> d!370240 (= c!215613 ((_ is Some!2573) lt!433244))))

(assert (=> d!370240 (= lt!433244 (maxPrefix!1012 thiss!19762 rules!2550 (list!5015 lt!433184)))))

(assert (=> d!370240 (= (lexList!540 thiss!19762 rules!2550 (list!5015 lt!433184)) lt!433246)))

(declare-fun b!1314218 () Bool)

(assert (=> b!1314218 (= e!842572 e!842573)))

(declare-fun res!590360 () Bool)

(assert (=> b!1314218 (= res!590360 (< (size!10839 (_2!7361 lt!433246)) (size!10839 (list!5015 lt!433184))))))

(assert (=> b!1314218 (=> (not res!590360) (not e!842573))))

(declare-fun b!1314219 () Bool)

(assert (=> b!1314219 (= e!842574 (tuple2!12951 Nil!13331 (list!5015 lt!433184)))))

(declare-fun b!1314220 () Bool)

(assert (=> b!1314220 (= e!842572 (= (_2!7361 lt!433246) (list!5015 lt!433184)))))

(declare-fun b!1314221 () Bool)

(declare-fun lt!433245 () tuple2!12950)

(assert (=> b!1314221 (= e!842574 (tuple2!12951 (Cons!13331 (_1!7360 (v!21108 lt!433244)) (_1!7361 lt!433245)) (_2!7361 lt!433245)))))

(assert (=> b!1314221 (= lt!433245 (lexList!540 thiss!19762 rules!2550 (_2!7360 (v!21108 lt!433244))))))

(assert (= (and d!370240 c!215613) b!1314221))

(assert (= (and d!370240 (not c!215613)) b!1314219))

(assert (= (and d!370240 c!215612) b!1314218))

(assert (= (and d!370240 (not c!215612)) b!1314220))

(assert (= (and b!1314218 res!590360) b!1314217))

(declare-fun m!1467343 () Bool)

(assert (=> b!1314217 m!1467343))

(declare-fun m!1467345 () Bool)

(assert (=> d!370240 m!1467345))

(assert (=> d!370240 m!1467221))

(declare-fun m!1467347 () Bool)

(assert (=> d!370240 m!1467347))

(declare-fun m!1467349 () Bool)

(assert (=> b!1314218 m!1467349))

(assert (=> b!1314218 m!1467221))

(declare-fun m!1467351 () Bool)

(assert (=> b!1314218 m!1467351))

(declare-fun m!1467353 () Bool)

(assert (=> b!1314221 m!1467353))

(assert (=> b!1314108 d!370240))

(declare-fun d!370252 () Bool)

(declare-fun list!5017 (Conc!4384) List!13395)

(assert (=> d!370252 (= (list!5015 lt!433184) (list!5017 (c!215596 lt!433184)))))

(declare-fun bs!330196 () Bool)

(assert (= bs!330196 d!370252))

(declare-fun m!1467357 () Bool)

(assert (=> bs!330196 m!1467357))

(assert (=> b!1314108 d!370252))

(declare-fun d!370256 () Bool)

(declare-fun res!590365 () Bool)

(declare-fun e!842577 () Bool)

(assert (=> d!370256 (=> (not res!590365) (not e!842577))))

(assert (=> d!370256 (= res!590365 (not (isEmpty!7898 (originalCharacters!3169 t1!34))))))

(assert (=> d!370256 (= (inv!17704 t1!34) e!842577)))

(declare-fun b!1314232 () Bool)

(declare-fun res!590366 () Bool)

(assert (=> b!1314232 (=> (not res!590366) (not e!842577))))

(assert (=> b!1314232 (= res!590366 (= (originalCharacters!3169 t1!34) (list!5015 (dynLambda!5800 (toChars!3389 (transformation!2307 (rule!4048 t1!34))) (value!75382 t1!34)))))))

(declare-fun b!1314233 () Bool)

(assert (=> b!1314233 (= e!842577 (= (size!10832 t1!34) (size!10839 (originalCharacters!3169 t1!34))))))

(assert (= (and d!370256 res!590365) b!1314232))

(assert (= (and b!1314232 res!590366) b!1314233))

(declare-fun b_lambda!37901 () Bool)

(assert (=> (not b_lambda!37901) (not b!1314232)))

(declare-fun t!118256 () Bool)

(declare-fun tb!69859 () Bool)

(assert (=> (and b!1314097 (= (toChars!3389 (transformation!2307 (h!18731 rules!2550))) (toChars!3389 (transformation!2307 (rule!4048 t1!34)))) t!118256) tb!69859))

(declare-fun b!1314244 () Bool)

(declare-fun e!842584 () Bool)

(declare-fun tp!382650 () Bool)

(assert (=> b!1314244 (= e!842584 (and (inv!17707 (c!215596 (dynLambda!5800 (toChars!3389 (transformation!2307 (rule!4048 t1!34))) (value!75382 t1!34)))) tp!382650))))

(declare-fun result!84764 () Bool)

(assert (=> tb!69859 (= result!84764 (and (inv!17708 (dynLambda!5800 (toChars!3389 (transformation!2307 (rule!4048 t1!34))) (value!75382 t1!34))) e!842584))))

(assert (= tb!69859 b!1314244))

(declare-fun m!1467363 () Bool)

(assert (=> b!1314244 m!1467363))

(declare-fun m!1467365 () Bool)

(assert (=> tb!69859 m!1467365))

(assert (=> b!1314232 t!118256))

(declare-fun b_and!87827 () Bool)

(assert (= b_and!87821 (and (=> t!118256 result!84764) b_and!87827)))

(declare-fun t!118258 () Bool)

(declare-fun tb!69861 () Bool)

(assert (=> (and b!1314094 (= (toChars!3389 (transformation!2307 (rule!4048 t1!34))) (toChars!3389 (transformation!2307 (rule!4048 t1!34)))) t!118258) tb!69861))

(declare-fun result!84766 () Bool)

(assert (= result!84766 result!84764))

(assert (=> b!1314232 t!118258))

(declare-fun b_and!87829 () Bool)

(assert (= b_and!87823 (and (=> t!118258 result!84766) b_and!87829)))

(declare-fun t!118260 () Bool)

(declare-fun tb!69863 () Bool)

(assert (=> (and b!1314088 (= (toChars!3389 (transformation!2307 (rule!4048 t2!34))) (toChars!3389 (transformation!2307 (rule!4048 t1!34)))) t!118260) tb!69863))

(declare-fun result!84768 () Bool)

(assert (= result!84768 result!84764))

(assert (=> b!1314232 t!118260))

(declare-fun b_and!87831 () Bool)

(assert (= b_and!87825 (and (=> t!118260 result!84768) b_and!87831)))

(declare-fun m!1467367 () Bool)

(assert (=> d!370256 m!1467367))

(declare-fun m!1467369 () Bool)

(assert (=> b!1314232 m!1467369))

(assert (=> b!1314232 m!1467369))

(declare-fun m!1467371 () Bool)

(assert (=> b!1314232 m!1467371))

(declare-fun m!1467373 () Bool)

(assert (=> b!1314233 m!1467373))

(assert (=> start!116226 d!370256))

(declare-fun d!370260 () Bool)

(declare-fun res!590369 () Bool)

(declare-fun e!842586 () Bool)

(assert (=> d!370260 (=> (not res!590369) (not e!842586))))

(assert (=> d!370260 (= res!590369 (not (isEmpty!7898 (originalCharacters!3169 t2!34))))))

(assert (=> d!370260 (= (inv!17704 t2!34) e!842586)))

(declare-fun b!1314245 () Bool)

(declare-fun res!590370 () Bool)

(assert (=> b!1314245 (=> (not res!590370) (not e!842586))))

(assert (=> b!1314245 (= res!590370 (= (originalCharacters!3169 t2!34) (list!5015 (dynLambda!5800 (toChars!3389 (transformation!2307 (rule!4048 t2!34))) (value!75382 t2!34)))))))

(declare-fun b!1314246 () Bool)

(assert (=> b!1314246 (= e!842586 (= (size!10832 t2!34) (size!10839 (originalCharacters!3169 t2!34))))))

(assert (= (and d!370260 res!590369) b!1314245))

(assert (= (and b!1314245 res!590370) b!1314246))

(declare-fun b_lambda!37903 () Bool)

(assert (=> (not b_lambda!37903) (not b!1314245)))

(assert (=> b!1314245 t!118249))

(declare-fun b_and!87833 () Bool)

(assert (= b_and!87827 (and (=> t!118249 result!84756) b_and!87833)))

(assert (=> b!1314245 t!118251))

(declare-fun b_and!87835 () Bool)

(assert (= b_and!87829 (and (=> t!118251 result!84760) b_and!87835)))

(assert (=> b!1314245 t!118253))

(declare-fun b_and!87837 () Bool)

(assert (= b_and!87831 (and (=> t!118253 result!84762) b_and!87837)))

(declare-fun m!1467381 () Bool)

(assert (=> d!370260 m!1467381))

(assert (=> b!1314245 m!1467289))

(assert (=> b!1314245 m!1467289))

(declare-fun m!1467383 () Bool)

(assert (=> b!1314245 m!1467383))

(declare-fun m!1467385 () Bool)

(assert (=> b!1314246 m!1467385))

(assert (=> start!116226 d!370260))

(declare-fun d!370264 () Bool)

(declare-fun lt!433273 () Bool)

(declare-fun e!842609 () Bool)

(assert (=> d!370264 (= lt!433273 e!842609)))

(declare-fun res!590408 () Bool)

(assert (=> d!370264 (=> (not res!590408) (not e!842609))))

(assert (=> d!370264 (= res!590408 (= (list!5014 (_1!7359 (lex!837 thiss!19762 rules!2550 (print!776 thiss!19762 (singletonSeq!884 t2!34))))) (list!5014 (singletonSeq!884 t2!34))))))

(declare-fun e!842610 () Bool)

(assert (=> d!370264 (= lt!433273 e!842610)))

(declare-fun res!590409 () Bool)

(assert (=> d!370264 (=> (not res!590409) (not e!842610))))

(declare-fun lt!433274 () tuple2!12946)

(declare-fun size!10842 (BalanceConc!8710) Int)

(assert (=> d!370264 (= res!590409 (= (size!10842 (_1!7359 lt!433274)) 1))))

(assert (=> d!370264 (= lt!433274 (lex!837 thiss!19762 rules!2550 (print!776 thiss!19762 (singletonSeq!884 t2!34))))))

(assert (=> d!370264 (not (isEmpty!7892 rules!2550))))

(assert (=> d!370264 (= (rulesProduceIndividualToken!971 thiss!19762 rules!2550 t2!34) lt!433273)))

(declare-fun b!1314293 () Bool)

(declare-fun res!590407 () Bool)

(assert (=> b!1314293 (=> (not res!590407) (not e!842610))))

(declare-fun apply!3020 (BalanceConc!8710 Int) Token!4276)

(assert (=> b!1314293 (= res!590407 (= (apply!3020 (_1!7359 lt!433274) 0) t2!34))))

(declare-fun b!1314294 () Bool)

(assert (=> b!1314294 (= e!842610 (isEmpty!7893 (_2!7359 lt!433274)))))

(declare-fun b!1314295 () Bool)

(assert (=> b!1314295 (= e!842609 (isEmpty!7893 (_2!7359 (lex!837 thiss!19762 rules!2550 (print!776 thiss!19762 (singletonSeq!884 t2!34))))))))

(assert (= (and d!370264 res!590409) b!1314293))

(assert (= (and b!1314293 res!590407) b!1314294))

(assert (= (and d!370264 res!590408) b!1314295))

(declare-fun m!1467451 () Bool)

(assert (=> d!370264 m!1467451))

(assert (=> d!370264 m!1467203))

(assert (=> d!370264 m!1467205))

(assert (=> d!370264 m!1467211))

(declare-fun m!1467453 () Bool)

(assert (=> d!370264 m!1467453))

(assert (=> d!370264 m!1467203))

(declare-fun m!1467455 () Bool)

(assert (=> d!370264 m!1467455))

(assert (=> d!370264 m!1467203))

(assert (=> d!370264 m!1467205))

(declare-fun m!1467457 () Bool)

(assert (=> d!370264 m!1467457))

(declare-fun m!1467459 () Bool)

(assert (=> b!1314293 m!1467459))

(declare-fun m!1467461 () Bool)

(assert (=> b!1314294 m!1467461))

(assert (=> b!1314295 m!1467203))

(assert (=> b!1314295 m!1467203))

(assert (=> b!1314295 m!1467205))

(assert (=> b!1314295 m!1467205))

(assert (=> b!1314295 m!1467457))

(declare-fun m!1467463 () Bool)

(assert (=> b!1314295 m!1467463))

(assert (=> b!1314103 d!370264))

(declare-fun b!1314316 () Bool)

(declare-fun e!842624 () Bool)

(declare-fun inv!17 (TokenValue!2397) Bool)

(assert (=> b!1314316 (= e!842624 (inv!17 (value!75382 t1!34)))))

(declare-fun b!1314317 () Bool)

(declare-fun res!590418 () Bool)

(declare-fun e!842623 () Bool)

(assert (=> b!1314317 (=> res!590418 e!842623)))

(assert (=> b!1314317 (= res!590418 (not ((_ is IntegerValue!7193) (value!75382 t1!34))))))

(assert (=> b!1314317 (= e!842624 e!842623)))

(declare-fun b!1314318 () Bool)

(declare-fun e!842625 () Bool)

(assert (=> b!1314318 (= e!842625 e!842624)))

(declare-fun c!215630 () Bool)

(assert (=> b!1314318 (= c!215630 ((_ is IntegerValue!7192) (value!75382 t1!34)))))

(declare-fun d!370280 () Bool)

(declare-fun c!215629 () Bool)

(assert (=> d!370280 (= c!215629 ((_ is IntegerValue!7191) (value!75382 t1!34)))))

(assert (=> d!370280 (= (inv!21 (value!75382 t1!34)) e!842625)))

(declare-fun b!1314319 () Bool)

(declare-fun inv!15 (TokenValue!2397) Bool)

(assert (=> b!1314319 (= e!842623 (inv!15 (value!75382 t1!34)))))

(declare-fun b!1314320 () Bool)

(declare-fun inv!16 (TokenValue!2397) Bool)

(assert (=> b!1314320 (= e!842625 (inv!16 (value!75382 t1!34)))))

(assert (= (and d!370280 c!215629) b!1314320))

(assert (= (and d!370280 (not c!215629)) b!1314318))

(assert (= (and b!1314318 c!215630) b!1314316))

(assert (= (and b!1314318 (not c!215630)) b!1314317))

(assert (= (and b!1314317 (not res!590418)) b!1314319))

(declare-fun m!1467465 () Bool)

(assert (=> b!1314316 m!1467465))

(declare-fun m!1467467 () Bool)

(assert (=> b!1314319 m!1467467))

(declare-fun m!1467469 () Bool)

(assert (=> b!1314320 m!1467469))

(assert (=> b!1314082 d!370280))

(declare-fun b!1314321 () Bool)

(declare-fun e!842627 () Bool)

(declare-fun lt!433279 () tuple2!12950)

(assert (=> b!1314321 (= e!842627 (not (isEmpty!7900 (_1!7361 lt!433279))))))

(declare-fun d!370282 () Bool)

(declare-fun e!842626 () Bool)

(assert (=> d!370282 e!842626))

(declare-fun c!215631 () Bool)

(assert (=> d!370282 (= c!215631 (> (size!10841 (_1!7361 lt!433279)) 0))))

(declare-fun e!842628 () tuple2!12950)

(assert (=> d!370282 (= lt!433279 e!842628)))

(declare-fun c!215632 () Bool)

(declare-fun lt!433277 () Option!2574)

(assert (=> d!370282 (= c!215632 ((_ is Some!2573) lt!433277))))

(assert (=> d!370282 (= lt!433277 (maxPrefix!1012 thiss!19762 rules!2550 (list!5015 lt!433178)))))

(assert (=> d!370282 (= (lexList!540 thiss!19762 rules!2550 (list!5015 lt!433178)) lt!433279)))

(declare-fun b!1314322 () Bool)

(assert (=> b!1314322 (= e!842626 e!842627)))

(declare-fun res!590419 () Bool)

(assert (=> b!1314322 (= res!590419 (< (size!10839 (_2!7361 lt!433279)) (size!10839 (list!5015 lt!433178))))))

(assert (=> b!1314322 (=> (not res!590419) (not e!842627))))

(declare-fun b!1314323 () Bool)

(assert (=> b!1314323 (= e!842628 (tuple2!12951 Nil!13331 (list!5015 lt!433178)))))

(declare-fun b!1314324 () Bool)

(assert (=> b!1314324 (= e!842626 (= (_2!7361 lt!433279) (list!5015 lt!433178)))))

(declare-fun b!1314325 () Bool)

(declare-fun lt!433278 () tuple2!12950)

(assert (=> b!1314325 (= e!842628 (tuple2!12951 (Cons!13331 (_1!7360 (v!21108 lt!433277)) (_1!7361 lt!433278)) (_2!7361 lt!433278)))))

(assert (=> b!1314325 (= lt!433278 (lexList!540 thiss!19762 rules!2550 (_2!7360 (v!21108 lt!433277))))))

(assert (= (and d!370282 c!215632) b!1314325))

(assert (= (and d!370282 (not c!215632)) b!1314323))

(assert (= (and d!370282 c!215631) b!1314322))

(assert (= (and d!370282 (not c!215631)) b!1314324))

(assert (= (and b!1314322 res!590419) b!1314321))

(declare-fun m!1467471 () Bool)

(assert (=> b!1314321 m!1467471))

(declare-fun m!1467473 () Bool)

(assert (=> d!370282 m!1467473))

(assert (=> d!370282 m!1467151))

(declare-fun m!1467475 () Bool)

(assert (=> d!370282 m!1467475))

(declare-fun m!1467477 () Bool)

(assert (=> b!1314322 m!1467477))

(assert (=> b!1314322 m!1467151))

(declare-fun m!1467479 () Bool)

(assert (=> b!1314322 m!1467479))

(declare-fun m!1467481 () Bool)

(assert (=> b!1314325 m!1467481))

(assert (=> b!1314104 d!370282))

(declare-fun d!370284 () Bool)

(assert (=> d!370284 (= (list!5015 lt!433178) (list!5017 (c!215596 lt!433178)))))

(declare-fun bs!330203 () Bool)

(assert (= bs!330203 d!370284))

(declare-fun m!1467483 () Bool)

(assert (=> bs!330203 m!1467483))

(assert (=> b!1314104 d!370284))

(declare-fun b!1314340 () Bool)

(declare-fun e!842636 () List!13395)

(assert (=> b!1314340 (= e!842636 (Cons!13329 (h!18730 lt!433171) (++!3394 (t!118232 lt!433171) (getSuffix!477 lt!433191 lt!433171))))))

(declare-fun b!1314341 () Bool)

(declare-fun res!590428 () Bool)

(declare-fun e!842637 () Bool)

(assert (=> b!1314341 (=> (not res!590428) (not e!842637))))

(declare-fun lt!433283 () List!13395)

(assert (=> b!1314341 (= res!590428 (= (size!10839 lt!433283) (+ (size!10839 lt!433171) (size!10839 (getSuffix!477 lt!433191 lt!433171)))))))

(declare-fun d!370286 () Bool)

(assert (=> d!370286 e!842637))

(declare-fun res!590427 () Bool)

(assert (=> d!370286 (=> (not res!590427) (not e!842637))))

(assert (=> d!370286 (= res!590427 (= (content!1869 lt!433283) ((_ map or) (content!1869 lt!433171) (content!1869 (getSuffix!477 lt!433191 lt!433171)))))))

(assert (=> d!370286 (= lt!433283 e!842636)))

(declare-fun c!215636 () Bool)

(assert (=> d!370286 (= c!215636 ((_ is Nil!13329) lt!433171))))

(assert (=> d!370286 (= (++!3394 lt!433171 (getSuffix!477 lt!433191 lt!433171)) lt!433283)))

(declare-fun b!1314339 () Bool)

(assert (=> b!1314339 (= e!842636 (getSuffix!477 lt!433191 lt!433171))))

(declare-fun b!1314342 () Bool)

(assert (=> b!1314342 (= e!842637 (or (not (= (getSuffix!477 lt!433191 lt!433171) Nil!13329)) (= lt!433283 lt!433171)))))

(assert (= (and d!370286 c!215636) b!1314339))

(assert (= (and d!370286 (not c!215636)) b!1314340))

(assert (= (and d!370286 res!590427) b!1314341))

(assert (= (and b!1314341 res!590428) b!1314342))

(assert (=> b!1314340 m!1467187))

(declare-fun m!1467499 () Bool)

(assert (=> b!1314340 m!1467499))

(declare-fun m!1467501 () Bool)

(assert (=> b!1314341 m!1467501))

(declare-fun m!1467503 () Bool)

(assert (=> b!1314341 m!1467503))

(assert (=> b!1314341 m!1467187))

(declare-fun m!1467505 () Bool)

(assert (=> b!1314341 m!1467505))

(declare-fun m!1467507 () Bool)

(assert (=> d!370286 m!1467507))

(declare-fun m!1467509 () Bool)

(assert (=> d!370286 m!1467509))

(assert (=> d!370286 m!1467187))

(declare-fun m!1467511 () Bool)

(assert (=> d!370286 m!1467511))

(assert (=> b!1314083 d!370286))

(declare-fun d!370290 () Bool)

(declare-fun lt!433286 () List!13395)

(assert (=> d!370290 (= (++!3394 lt!433171 lt!433286) lt!433191)))

(declare-fun e!842640 () List!13395)

(assert (=> d!370290 (= lt!433286 e!842640)))

(declare-fun c!215639 () Bool)

(assert (=> d!370290 (= c!215639 ((_ is Cons!13329) lt!433171))))

(assert (=> d!370290 (>= (size!10839 lt!433191) (size!10839 lt!433171))))

(assert (=> d!370290 (= (getSuffix!477 lt!433191 lt!433171) lt!433286)))

(declare-fun b!1314347 () Bool)

(declare-fun tail!1881 (List!13395) List!13395)

(assert (=> b!1314347 (= e!842640 (getSuffix!477 (tail!1881 lt!433191) (t!118232 lt!433171)))))

(declare-fun b!1314348 () Bool)

(assert (=> b!1314348 (= e!842640 lt!433191)))

(assert (= (and d!370290 c!215639) b!1314347))

(assert (= (and d!370290 (not c!215639)) b!1314348))

(declare-fun m!1467513 () Bool)

(assert (=> d!370290 m!1467513))

(declare-fun m!1467515 () Bool)

(assert (=> d!370290 m!1467515))

(assert (=> d!370290 m!1467503))

(declare-fun m!1467517 () Bool)

(assert (=> b!1314347 m!1467517))

(assert (=> b!1314347 m!1467517))

(declare-fun m!1467519 () Bool)

(assert (=> b!1314347 m!1467519))

(assert (=> b!1314083 d!370290))

(declare-fun d!370292 () Bool)

(declare-fun lt!433289 () List!13395)

(declare-fun dynLambda!5802 (Int List!13395) Bool)

(assert (=> d!370292 (dynLambda!5802 lambda!53403 lt!433289)))

(declare-fun choose!8033 (Int) List!13395)

(assert (=> d!370292 (= lt!433289 (choose!8033 lambda!53403))))

(assert (=> d!370292 (Exists!779 lambda!53403)))

(assert (=> d!370292 (= (pickWitness!84 lambda!53403) lt!433289)))

(declare-fun b_lambda!37905 () Bool)

(assert (=> (not b_lambda!37905) (not d!370292)))

(declare-fun bs!330204 () Bool)

(assert (= bs!330204 d!370292))

(declare-fun m!1467521 () Bool)

(assert (=> bs!330204 m!1467521))

(declare-fun m!1467523 () Bool)

(assert (=> bs!330204 m!1467523))

(assert (=> bs!330204 m!1467213))

(assert (=> b!1314083 d!370292))

(declare-fun d!370294 () Bool)

(declare-fun c!215642 () Bool)

(assert (=> d!370294 (= c!215642 (isEmpty!7898 lt!433171))))

(declare-fun e!842643 () Bool)

(assert (=> d!370294 (= (prefixMatch!134 lt!433175 lt!433171) e!842643)))

(declare-fun b!1314353 () Bool)

(declare-fun lostCause!272 (Regex!3621) Bool)

(assert (=> b!1314353 (= e!842643 (not (lostCause!272 lt!433175)))))

(declare-fun b!1314354 () Bool)

(declare-fun derivativeStep!896 (Regex!3621 C!7532) Regex!3621)

(declare-fun head!2267 (List!13395) C!7532)

(assert (=> b!1314354 (= e!842643 (prefixMatch!134 (derivativeStep!896 lt!433175 (head!2267 lt!433171)) (tail!1881 lt!433171)))))

(assert (= (and d!370294 c!215642) b!1314353))

(assert (= (and d!370294 (not c!215642)) b!1314354))

(declare-fun m!1467531 () Bool)

(assert (=> d!370294 m!1467531))

(declare-fun m!1467533 () Bool)

(assert (=> b!1314353 m!1467533))

(declare-fun m!1467535 () Bool)

(assert (=> b!1314354 m!1467535))

(assert (=> b!1314354 m!1467535))

(declare-fun m!1467537 () Bool)

(assert (=> b!1314354 m!1467537))

(declare-fun m!1467539 () Bool)

(assert (=> b!1314354 m!1467539))

(assert (=> b!1314354 m!1467537))

(assert (=> b!1314354 m!1467539))

(declare-fun m!1467541 () Bool)

(assert (=> b!1314354 m!1467541))

(assert (=> b!1314105 d!370294))

(declare-fun d!370298 () Bool)

(declare-fun lt!433299 () C!7532)

(declare-fun apply!3021 (List!13395 Int) C!7532)

(assert (=> d!370298 (= lt!433299 (apply!3021 (list!5015 lt!433180) 0))))

(declare-fun apply!3022 (Conc!4384 Int) C!7532)

(assert (=> d!370298 (= lt!433299 (apply!3022 (c!215596 lt!433180) 0))))

(declare-fun e!842653 () Bool)

(assert (=> d!370298 e!842653))

(declare-fun res!590438 () Bool)

(assert (=> d!370298 (=> (not res!590438) (not e!842653))))

(assert (=> d!370298 (= res!590438 (<= 0 0))))

(assert (=> d!370298 (= (apply!3017 lt!433180 0) lt!433299)))

(declare-fun b!1314364 () Bool)

(assert (=> b!1314364 (= e!842653 (< 0 (size!10833 lt!433180)))))

(assert (= (and d!370298 res!590438) b!1314364))

(assert (=> d!370298 m!1467115))

(assert (=> d!370298 m!1467115))

(declare-fun m!1467553 () Bool)

(assert (=> d!370298 m!1467553))

(declare-fun m!1467555 () Bool)

(assert (=> d!370298 m!1467555))

(assert (=> b!1314364 m!1467143))

(assert (=> b!1314105 d!370298))

(declare-fun d!370306 () Bool)

(declare-fun lt!433300 () BalanceConc!8708)

(assert (=> d!370306 (= (list!5015 lt!433300) (originalCharacters!3169 t1!34))))

(assert (=> d!370306 (= lt!433300 (dynLambda!5800 (toChars!3389 (transformation!2307 (rule!4048 t1!34))) (value!75382 t1!34)))))

(assert (=> d!370306 (= (charsOf!1279 t1!34) lt!433300)))

(declare-fun b_lambda!37907 () Bool)

(assert (=> (not b_lambda!37907) (not d!370306)))

(assert (=> d!370306 t!118256))

(declare-fun b_and!87839 () Bool)

(assert (= b_and!87833 (and (=> t!118256 result!84764) b_and!87839)))

(assert (=> d!370306 t!118258))

(declare-fun b_and!87841 () Bool)

(assert (= b_and!87835 (and (=> t!118258 result!84766) b_and!87841)))

(assert (=> d!370306 t!118260))

(declare-fun b_and!87843 () Bool)

(assert (= b_and!87837 (and (=> t!118260 result!84768) b_and!87843)))

(declare-fun m!1467557 () Bool)

(assert (=> d!370306 m!1467557))

(assert (=> d!370306 m!1467369))

(assert (=> b!1314105 d!370306))

(declare-fun d!370308 () Bool)

(assert (=> d!370308 (= (list!5015 lt!433188) (list!5017 (c!215596 lt!433188)))))

(declare-fun bs!330206 () Bool)

(assert (= bs!330206 d!370308))

(declare-fun m!1467563 () Bool)

(assert (=> bs!330206 m!1467563))

(assert (=> b!1314105 d!370308))

(declare-fun bs!330208 () Bool)

(declare-fun d!370312 () Bool)

(assert (= bs!330208 (and d!370312 b!1314089)))

(declare-fun lambda!53416 () Int)

(assert (=> bs!330208 (= lambda!53416 lambda!53404)))

(declare-fun lt!433303 () Unit!19386)

(declare-fun lemma!66 (List!13396 LexerInterface!2002 List!13396) Unit!19386)

(assert (=> d!370312 (= lt!433303 (lemma!66 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!74 (List!13398) Regex!3621)

(assert (=> d!370312 (= (rulesRegex!192 thiss!19762 rules!2550) (generalisedUnion!74 (map!2927 rules!2550 lambda!53416)))))

(declare-fun bs!330209 () Bool)

(assert (= bs!330209 d!370312))

(declare-fun m!1467567 () Bool)

(assert (=> bs!330209 m!1467567))

(declare-fun m!1467569 () Bool)

(assert (=> bs!330209 m!1467569))

(assert (=> bs!330209 m!1467569))

(declare-fun m!1467571 () Bool)

(assert (=> bs!330209 m!1467571))

(assert (=> b!1314105 d!370312))

(declare-fun b!1314367 () Bool)

(declare-fun e!842655 () List!13395)

(assert (=> b!1314367 (= e!842655 (Cons!13329 (h!18730 lt!433183) (++!3394 (t!118232 lt!433183) (Cons!13329 lt!433173 Nil!13329))))))

(declare-fun b!1314368 () Bool)

(declare-fun res!590441 () Bool)

(declare-fun e!842656 () Bool)

(assert (=> b!1314368 (=> (not res!590441) (not e!842656))))

(declare-fun lt!433306 () List!13395)

(assert (=> b!1314368 (= res!590441 (= (size!10839 lt!433306) (+ (size!10839 lt!433183) (size!10839 (Cons!13329 lt!433173 Nil!13329)))))))

(declare-fun d!370316 () Bool)

(assert (=> d!370316 e!842656))

(declare-fun res!590440 () Bool)

(assert (=> d!370316 (=> (not res!590440) (not e!842656))))

(assert (=> d!370316 (= res!590440 (= (content!1869 lt!433306) ((_ map or) (content!1869 lt!433183) (content!1869 (Cons!13329 lt!433173 Nil!13329)))))))

(assert (=> d!370316 (= lt!433306 e!842655)))

(declare-fun c!215643 () Bool)

(assert (=> d!370316 (= c!215643 ((_ is Nil!13329) lt!433183))))

(assert (=> d!370316 (= (++!3394 lt!433183 (Cons!13329 lt!433173 Nil!13329)) lt!433306)))

(declare-fun b!1314366 () Bool)

(assert (=> b!1314366 (= e!842655 (Cons!13329 lt!433173 Nil!13329))))

(declare-fun b!1314369 () Bool)

(assert (=> b!1314369 (= e!842656 (or (not (= (Cons!13329 lt!433173 Nil!13329) Nil!13329)) (= lt!433306 lt!433183)))))

(assert (= (and d!370316 c!215643) b!1314366))

(assert (= (and d!370316 (not c!215643)) b!1314367))

(assert (= (and d!370316 res!590440) b!1314368))

(assert (= (and b!1314368 res!590441) b!1314369))

(declare-fun m!1467573 () Bool)

(assert (=> b!1314367 m!1467573))

(declare-fun m!1467575 () Bool)

(assert (=> b!1314368 m!1467575))

(declare-fun m!1467577 () Bool)

(assert (=> b!1314368 m!1467577))

(declare-fun m!1467579 () Bool)

(assert (=> b!1314368 m!1467579))

(declare-fun m!1467581 () Bool)

(assert (=> d!370316 m!1467581))

(declare-fun m!1467583 () Bool)

(assert (=> d!370316 m!1467583))

(declare-fun m!1467585 () Bool)

(assert (=> d!370316 m!1467585))

(assert (=> b!1314105 d!370316))

(declare-fun d!370318 () Bool)

(declare-fun choose!8034 (Int) Bool)

(assert (=> d!370318 (= (Exists!779 lambda!53403) (choose!8034 lambda!53403))))

(declare-fun bs!330210 () Bool)

(assert (= bs!330210 d!370318))

(declare-fun m!1467587 () Bool)

(assert (=> bs!330210 m!1467587))

(assert (=> b!1314084 d!370318))

(declare-fun bs!330214 () Bool)

(declare-fun d!370320 () Bool)

(assert (= bs!330214 (and d!370320 b!1314084)))

(declare-fun lambda!53422 () Int)

(assert (=> bs!330214 (= lambda!53422 lambda!53403)))

(assert (=> d!370320 true))

(assert (=> d!370320 true))

(assert (=> d!370320 (Exists!779 lambda!53422)))

(declare-fun lt!433311 () Unit!19386)

(declare-fun choose!8035 (Regex!3621 List!13395) Unit!19386)

(assert (=> d!370320 (= lt!433311 (choose!8035 lt!433175 lt!433171))))

(declare-fun validRegex!1547 (Regex!3621) Bool)

(assert (=> d!370320 (validRegex!1547 lt!433175)))

(assert (=> d!370320 (= (lemmaPrefixMatchThenExistsStringThatMatches!97 lt!433175 lt!433171) lt!433311)))

(declare-fun bs!330215 () Bool)

(assert (= bs!330215 d!370320))

(declare-fun m!1467601 () Bool)

(assert (=> bs!330215 m!1467601))

(declare-fun m!1467603 () Bool)

(assert (=> bs!330215 m!1467603))

(declare-fun m!1467605 () Bool)

(assert (=> bs!330215 m!1467605))

(assert (=> b!1314084 d!370320))

(declare-fun b!1314432 () Bool)

(declare-fun res!590491 () Bool)

(declare-fun e!842701 () Bool)

(assert (=> b!1314432 (=> (not res!590491) (not e!842701))))

(declare-fun lt!433338 () Option!2574)

(declare-fun get!4254 (Option!2574) tuple2!12948)

(assert (=> b!1314432 (= res!590491 (= (++!3394 (list!5015 (charsOf!1279 (_1!7360 (get!4254 lt!433338)))) (_2!7360 (get!4254 lt!433338))) (list!5015 lt!433180)))))

(declare-fun b!1314433 () Bool)

(declare-fun res!590490 () Bool)

(assert (=> b!1314433 (=> (not res!590490) (not e!842701))))

(declare-fun apply!3023 (TokenValueInjection!4454 BalanceConc!8708) TokenValue!2397)

(declare-fun seqFromList!1595 (List!13395) BalanceConc!8708)

(assert (=> b!1314433 (= res!590490 (= (value!75382 (_1!7360 (get!4254 lt!433338))) (apply!3023 (transformation!2307 (rule!4048 (_1!7360 (get!4254 lt!433338)))) (seqFromList!1595 (originalCharacters!3169 (_1!7360 (get!4254 lt!433338)))))))))

(declare-fun b!1314434 () Bool)

(declare-fun res!590487 () Bool)

(assert (=> b!1314434 (=> (not res!590487) (not e!842701))))

(assert (=> b!1314434 (= res!590487 (matchR!1623 (regex!2307 (rule!4048 (_1!7360 (get!4254 lt!433338)))) (list!5015 (charsOf!1279 (_1!7360 (get!4254 lt!433338))))))))

(declare-fun d!370326 () Bool)

(declare-fun e!842700 () Bool)

(assert (=> d!370326 e!842700))

(declare-fun res!590486 () Bool)

(assert (=> d!370326 (=> res!590486 e!842700)))

(declare-fun isEmpty!7902 (Option!2574) Bool)

(assert (=> d!370326 (= res!590486 (isEmpty!7902 lt!433338))))

(declare-fun e!842699 () Option!2574)

(assert (=> d!370326 (= lt!433338 e!842699)))

(declare-fun c!215653 () Bool)

(assert (=> d!370326 (= c!215653 (and ((_ is Cons!13330) rules!2550) ((_ is Nil!13330) (t!118233 rules!2550))))))

(declare-fun lt!433337 () Unit!19386)

(declare-fun lt!433335 () Unit!19386)

(assert (=> d!370326 (= lt!433337 lt!433335)))

(declare-fun isPrefix!1072 (List!13395 List!13395) Bool)

(assert (=> d!370326 (isPrefix!1072 (list!5015 lt!433180) (list!5015 lt!433180))))

(declare-fun lemmaIsPrefixRefl!751 (List!13395 List!13395) Unit!19386)

(assert (=> d!370326 (= lt!433335 (lemmaIsPrefixRefl!751 (list!5015 lt!433180) (list!5015 lt!433180)))))

(declare-fun rulesValidInductive!724 (LexerInterface!2002 List!13396) Bool)

(assert (=> d!370326 (rulesValidInductive!724 thiss!19762 rules!2550)))

(assert (=> d!370326 (= (maxPrefix!1012 thiss!19762 rules!2550 (list!5015 lt!433180)) lt!433338)))

(declare-fun b!1314435 () Bool)

(assert (=> b!1314435 (= e!842700 e!842701)))

(declare-fun res!590488 () Bool)

(assert (=> b!1314435 (=> (not res!590488) (not e!842701))))

(declare-fun isDefined!2175 (Option!2574) Bool)

(assert (=> b!1314435 (= res!590488 (isDefined!2175 lt!433338))))

(declare-fun b!1314436 () Bool)

(assert (=> b!1314436 (= e!842701 (contains!2334 rules!2550 (rule!4048 (_1!7360 (get!4254 lt!433338)))))))

(declare-fun call!89375 () Option!2574)

(declare-fun bm!89370 () Bool)

(declare-fun maxPrefixOneRule!577 (LexerInterface!2002 Rule!4414 List!13395) Option!2574)

(assert (=> bm!89370 (= call!89375 (maxPrefixOneRule!577 thiss!19762 (h!18731 rules!2550) (list!5015 lt!433180)))))

(declare-fun b!1314437 () Bool)

(declare-fun res!590492 () Bool)

(assert (=> b!1314437 (=> (not res!590492) (not e!842701))))

(assert (=> b!1314437 (= res!590492 (< (size!10839 (_2!7360 (get!4254 lt!433338))) (size!10839 (list!5015 lt!433180))))))

(declare-fun b!1314438 () Bool)

(declare-fun lt!433336 () Option!2574)

(declare-fun lt!433334 () Option!2574)

(assert (=> b!1314438 (= e!842699 (ite (and ((_ is None!2573) lt!433336) ((_ is None!2573) lt!433334)) None!2573 (ite ((_ is None!2573) lt!433334) lt!433336 (ite ((_ is None!2573) lt!433336) lt!433334 (ite (>= (size!10832 (_1!7360 (v!21108 lt!433336))) (size!10832 (_1!7360 (v!21108 lt!433334)))) lt!433336 lt!433334)))))))

(assert (=> b!1314438 (= lt!433336 call!89375)))

(assert (=> b!1314438 (= lt!433334 (maxPrefix!1012 thiss!19762 (t!118233 rules!2550) (list!5015 lt!433180)))))

(declare-fun b!1314439 () Bool)

(declare-fun res!590489 () Bool)

(assert (=> b!1314439 (=> (not res!590489) (not e!842701))))

(assert (=> b!1314439 (= res!590489 (= (list!5015 (charsOf!1279 (_1!7360 (get!4254 lt!433338)))) (originalCharacters!3169 (_1!7360 (get!4254 lt!433338)))))))

(declare-fun b!1314440 () Bool)

(assert (=> b!1314440 (= e!842699 call!89375)))

(assert (= (and d!370326 c!215653) b!1314440))

(assert (= (and d!370326 (not c!215653)) b!1314438))

(assert (= (or b!1314440 b!1314438) bm!89370))

(assert (= (and d!370326 (not res!590486)) b!1314435))

(assert (= (and b!1314435 res!590488) b!1314439))

(assert (= (and b!1314439 res!590489) b!1314437))

(assert (= (and b!1314437 res!590492) b!1314432))

(assert (= (and b!1314432 res!590491) b!1314433))

(assert (= (and b!1314433 res!590490) b!1314434))

(assert (= (and b!1314434 res!590487) b!1314436))

(declare-fun m!1467663 () Bool)

(assert (=> b!1314436 m!1467663))

(declare-fun m!1467665 () Bool)

(assert (=> b!1314436 m!1467665))

(assert (=> b!1314437 m!1467663))

(declare-fun m!1467667 () Bool)

(assert (=> b!1314437 m!1467667))

(assert (=> b!1314437 m!1467115))

(assert (=> b!1314437 m!1467279))

(declare-fun m!1467669 () Bool)

(assert (=> d!370326 m!1467669))

(assert (=> d!370326 m!1467115))

(assert (=> d!370326 m!1467115))

(declare-fun m!1467671 () Bool)

(assert (=> d!370326 m!1467671))

(assert (=> d!370326 m!1467115))

(assert (=> d!370326 m!1467115))

(declare-fun m!1467673 () Bool)

(assert (=> d!370326 m!1467673))

(declare-fun m!1467675 () Bool)

(assert (=> d!370326 m!1467675))

(assert (=> bm!89370 m!1467115))

(declare-fun m!1467677 () Bool)

(assert (=> bm!89370 m!1467677))

(assert (=> b!1314439 m!1467663))

(declare-fun m!1467679 () Bool)

(assert (=> b!1314439 m!1467679))

(assert (=> b!1314439 m!1467679))

(declare-fun m!1467681 () Bool)

(assert (=> b!1314439 m!1467681))

(assert (=> b!1314432 m!1467663))

(assert (=> b!1314432 m!1467679))

(assert (=> b!1314432 m!1467679))

(assert (=> b!1314432 m!1467681))

(assert (=> b!1314432 m!1467681))

(declare-fun m!1467683 () Bool)

(assert (=> b!1314432 m!1467683))

(assert (=> b!1314438 m!1467115))

(declare-fun m!1467685 () Bool)

(assert (=> b!1314438 m!1467685))

(declare-fun m!1467687 () Bool)

(assert (=> b!1314435 m!1467687))

(assert (=> b!1314434 m!1467663))

(assert (=> b!1314434 m!1467679))

(assert (=> b!1314434 m!1467679))

(assert (=> b!1314434 m!1467681))

(assert (=> b!1314434 m!1467681))

(declare-fun m!1467689 () Bool)

(assert (=> b!1314434 m!1467689))

(assert (=> b!1314433 m!1467663))

(declare-fun m!1467691 () Bool)

(assert (=> b!1314433 m!1467691))

(assert (=> b!1314433 m!1467691))

(declare-fun m!1467693 () Bool)

(assert (=> b!1314433 m!1467693))

(assert (=> b!1314111 d!370326))

(declare-fun d!370346 () Bool)

(assert (=> d!370346 (= (list!5015 lt!433180) (list!5017 (c!215596 lt!433180)))))

(declare-fun bs!330218 () Bool)

(assert (= bs!330218 d!370346))

(declare-fun m!1467695 () Bool)

(assert (=> bs!330218 m!1467695))

(assert (=> b!1314111 d!370346))

(declare-fun b!1314441 () Bool)

(declare-fun res!590498 () Bool)

(declare-fun e!842704 () Bool)

(assert (=> b!1314441 (=> (not res!590498) (not e!842704))))

(declare-fun lt!433343 () Option!2574)

(assert (=> b!1314441 (= res!590498 (= (++!3394 (list!5015 (charsOf!1279 (_1!7360 (get!4254 lt!433343)))) (_2!7360 (get!4254 lt!433343))) lt!433183))))

(declare-fun b!1314442 () Bool)

(declare-fun res!590497 () Bool)

(assert (=> b!1314442 (=> (not res!590497) (not e!842704))))

(assert (=> b!1314442 (= res!590497 (= (value!75382 (_1!7360 (get!4254 lt!433343))) (apply!3023 (transformation!2307 (rule!4048 (_1!7360 (get!4254 lt!433343)))) (seqFromList!1595 (originalCharacters!3169 (_1!7360 (get!4254 lt!433343)))))))))

(declare-fun b!1314443 () Bool)

(declare-fun res!590494 () Bool)

(assert (=> b!1314443 (=> (not res!590494) (not e!842704))))

(assert (=> b!1314443 (= res!590494 (matchR!1623 (regex!2307 (rule!4048 (_1!7360 (get!4254 lt!433343)))) (list!5015 (charsOf!1279 (_1!7360 (get!4254 lt!433343))))))))

(declare-fun d!370348 () Bool)

(declare-fun e!842703 () Bool)

(assert (=> d!370348 e!842703))

(declare-fun res!590493 () Bool)

(assert (=> d!370348 (=> res!590493 e!842703)))

(assert (=> d!370348 (= res!590493 (isEmpty!7902 lt!433343))))

(declare-fun e!842702 () Option!2574)

(assert (=> d!370348 (= lt!433343 e!842702)))

(declare-fun c!215654 () Bool)

(assert (=> d!370348 (= c!215654 (and ((_ is Cons!13330) rules!2550) ((_ is Nil!13330) (t!118233 rules!2550))))))

(declare-fun lt!433342 () Unit!19386)

(declare-fun lt!433340 () Unit!19386)

(assert (=> d!370348 (= lt!433342 lt!433340)))

(assert (=> d!370348 (isPrefix!1072 lt!433183 lt!433183)))

(assert (=> d!370348 (= lt!433340 (lemmaIsPrefixRefl!751 lt!433183 lt!433183))))

(assert (=> d!370348 (rulesValidInductive!724 thiss!19762 rules!2550)))

(assert (=> d!370348 (= (maxPrefix!1012 thiss!19762 rules!2550 lt!433183) lt!433343)))

(declare-fun b!1314444 () Bool)

(assert (=> b!1314444 (= e!842703 e!842704)))

(declare-fun res!590495 () Bool)

(assert (=> b!1314444 (=> (not res!590495) (not e!842704))))

(assert (=> b!1314444 (= res!590495 (isDefined!2175 lt!433343))))

(declare-fun b!1314445 () Bool)

(assert (=> b!1314445 (= e!842704 (contains!2334 rules!2550 (rule!4048 (_1!7360 (get!4254 lt!433343)))))))

(declare-fun bm!89371 () Bool)

(declare-fun call!89376 () Option!2574)

(assert (=> bm!89371 (= call!89376 (maxPrefixOneRule!577 thiss!19762 (h!18731 rules!2550) lt!433183))))

(declare-fun b!1314446 () Bool)

(declare-fun res!590499 () Bool)

(assert (=> b!1314446 (=> (not res!590499) (not e!842704))))

(assert (=> b!1314446 (= res!590499 (< (size!10839 (_2!7360 (get!4254 lt!433343))) (size!10839 lt!433183)))))

(declare-fun b!1314447 () Bool)

(declare-fun lt!433341 () Option!2574)

(declare-fun lt!433339 () Option!2574)

(assert (=> b!1314447 (= e!842702 (ite (and ((_ is None!2573) lt!433341) ((_ is None!2573) lt!433339)) None!2573 (ite ((_ is None!2573) lt!433339) lt!433341 (ite ((_ is None!2573) lt!433341) lt!433339 (ite (>= (size!10832 (_1!7360 (v!21108 lt!433341))) (size!10832 (_1!7360 (v!21108 lt!433339)))) lt!433341 lt!433339)))))))

(assert (=> b!1314447 (= lt!433341 call!89376)))

(assert (=> b!1314447 (= lt!433339 (maxPrefix!1012 thiss!19762 (t!118233 rules!2550) lt!433183))))

(declare-fun b!1314448 () Bool)

(declare-fun res!590496 () Bool)

(assert (=> b!1314448 (=> (not res!590496) (not e!842704))))

(assert (=> b!1314448 (= res!590496 (= (list!5015 (charsOf!1279 (_1!7360 (get!4254 lt!433343)))) (originalCharacters!3169 (_1!7360 (get!4254 lt!433343)))))))

(declare-fun b!1314449 () Bool)

(assert (=> b!1314449 (= e!842702 call!89376)))

(assert (= (and d!370348 c!215654) b!1314449))

(assert (= (and d!370348 (not c!215654)) b!1314447))

(assert (= (or b!1314449 b!1314447) bm!89371))

(assert (= (and d!370348 (not res!590493)) b!1314444))

(assert (= (and b!1314444 res!590495) b!1314448))

(assert (= (and b!1314448 res!590496) b!1314446))

(assert (= (and b!1314446 res!590499) b!1314441))

(assert (= (and b!1314441 res!590498) b!1314442))

(assert (= (and b!1314442 res!590497) b!1314443))

(assert (= (and b!1314443 res!590494) b!1314445))

(declare-fun m!1467697 () Bool)

(assert (=> b!1314445 m!1467697))

(declare-fun m!1467699 () Bool)

(assert (=> b!1314445 m!1467699))

(assert (=> b!1314446 m!1467697))

(declare-fun m!1467701 () Bool)

(assert (=> b!1314446 m!1467701))

(assert (=> b!1314446 m!1467577))

(declare-fun m!1467703 () Bool)

(assert (=> d!370348 m!1467703))

(declare-fun m!1467705 () Bool)

(assert (=> d!370348 m!1467705))

(declare-fun m!1467707 () Bool)

(assert (=> d!370348 m!1467707))

(assert (=> d!370348 m!1467675))

(declare-fun m!1467709 () Bool)

(assert (=> bm!89371 m!1467709))

(assert (=> b!1314448 m!1467697))

(declare-fun m!1467711 () Bool)

(assert (=> b!1314448 m!1467711))

(assert (=> b!1314448 m!1467711))

(declare-fun m!1467713 () Bool)

(assert (=> b!1314448 m!1467713))

(assert (=> b!1314441 m!1467697))

(assert (=> b!1314441 m!1467711))

(assert (=> b!1314441 m!1467711))

(assert (=> b!1314441 m!1467713))

(assert (=> b!1314441 m!1467713))

(declare-fun m!1467715 () Bool)

(assert (=> b!1314441 m!1467715))

(declare-fun m!1467717 () Bool)

(assert (=> b!1314447 m!1467717))

(declare-fun m!1467719 () Bool)

(assert (=> b!1314444 m!1467719))

(assert (=> b!1314443 m!1467697))

(assert (=> b!1314443 m!1467711))

(assert (=> b!1314443 m!1467711))

(assert (=> b!1314443 m!1467713))

(assert (=> b!1314443 m!1467713))

(declare-fun m!1467721 () Bool)

(assert (=> b!1314443 m!1467721))

(assert (=> b!1314442 m!1467697))

(declare-fun m!1467723 () Bool)

(assert (=> b!1314442 m!1467723))

(assert (=> b!1314442 m!1467723))

(declare-fun m!1467725 () Bool)

(assert (=> b!1314442 m!1467725))

(assert (=> b!1314090 d!370348))

(declare-fun d!370350 () Bool)

(assert (=> d!370350 (= (inv!17700 (tag!2569 (rule!4048 t1!34))) (= (mod (str.len (value!75381 (tag!2569 (rule!4048 t1!34)))) 2) 0))))

(assert (=> b!1314112 d!370350))

(declare-fun d!370352 () Bool)

(declare-fun res!590500 () Bool)

(declare-fun e!842705 () Bool)

(assert (=> d!370352 (=> (not res!590500) (not e!842705))))

(assert (=> d!370352 (= res!590500 (semiInverseModEq!865 (toChars!3389 (transformation!2307 (rule!4048 t1!34))) (toValue!3530 (transformation!2307 (rule!4048 t1!34)))))))

(assert (=> d!370352 (= (inv!17703 (transformation!2307 (rule!4048 t1!34))) e!842705)))

(declare-fun b!1314450 () Bool)

(assert (=> b!1314450 (= e!842705 (equivClasses!824 (toChars!3389 (transformation!2307 (rule!4048 t1!34))) (toValue!3530 (transformation!2307 (rule!4048 t1!34)))))))

(assert (= (and d!370352 res!590500) b!1314450))

(declare-fun m!1467727 () Bool)

(assert (=> d!370352 m!1467727))

(declare-fun m!1467729 () Bool)

(assert (=> b!1314450 m!1467729))

(assert (=> b!1314112 d!370352))

(declare-fun d!370354 () Bool)

(declare-fun lt!433346 () Bool)

(declare-fun content!1870 (List!13396) (InoxSet Rule!4414))

(assert (=> d!370354 (= lt!433346 (select (content!1870 rules!2550) (rule!4048 t1!34)))))

(declare-fun e!842710 () Bool)

(assert (=> d!370354 (= lt!433346 e!842710)))

(declare-fun res!590506 () Bool)

(assert (=> d!370354 (=> (not res!590506) (not e!842710))))

(assert (=> d!370354 (= res!590506 ((_ is Cons!13330) rules!2550))))

(assert (=> d!370354 (= (contains!2334 rules!2550 (rule!4048 t1!34)) lt!433346)))

(declare-fun b!1314455 () Bool)

(declare-fun e!842711 () Bool)

(assert (=> b!1314455 (= e!842710 e!842711)))

(declare-fun res!590505 () Bool)

(assert (=> b!1314455 (=> res!590505 e!842711)))

(assert (=> b!1314455 (= res!590505 (= (h!18731 rules!2550) (rule!4048 t1!34)))))

(declare-fun b!1314456 () Bool)

(assert (=> b!1314456 (= e!842711 (contains!2334 (t!118233 rules!2550) (rule!4048 t1!34)))))

(assert (= (and d!370354 res!590506) b!1314455))

(assert (= (and b!1314455 (not res!590505)) b!1314456))

(declare-fun m!1467731 () Bool)

(assert (=> d!370354 m!1467731))

(declare-fun m!1467733 () Bool)

(assert (=> d!370354 m!1467733))

(declare-fun m!1467735 () Bool)

(assert (=> b!1314456 m!1467735))

(assert (=> b!1314091 d!370354))

(declare-fun bs!330219 () Bool)

(declare-fun d!370356 () Bool)

(assert (= bs!330219 (and d!370356 b!1314113)))

(declare-fun lambda!53425 () Int)

(assert (=> bs!330219 (not (= lambda!53425 lambda!53406))))

(declare-fun bs!330220 () Bool)

(assert (= bs!330220 (and d!370356 b!1314080)))

(assert (=> bs!330220 (not (= lambda!53425 lambda!53407))))

(assert (=> d!370356 true))

(declare-fun order!8011 () Int)

(declare-fun dynLambda!5805 (Int Int) Int)

(assert (=> d!370356 (< (dynLambda!5805 order!8011 lambda!53406) (dynLambda!5805 order!8011 lambda!53425))))

(assert (=> d!370356 (= (exists!317 rules!2550 lambda!53406) (not (forall!3288 rules!2550 lambda!53425)))))

(declare-fun bs!330221 () Bool)

(assert (= bs!330221 d!370356))

(declare-fun m!1467737 () Bool)

(assert (=> bs!330221 m!1467737))

(assert (=> b!1314113 d!370356))

(declare-fun bs!330222 () Bool)

(declare-fun d!370358 () Bool)

(assert (= bs!330222 (and d!370358 b!1314113)))

(declare-fun lambda!53428 () Int)

(assert (=> bs!330222 (not (= lambda!53428 lambda!53406))))

(declare-fun bs!330223 () Bool)

(assert (= bs!330223 (and d!370358 b!1314080)))

(assert (=> bs!330223 (not (= lambda!53428 lambda!53407))))

(declare-fun bs!330224 () Bool)

(assert (= bs!330224 (and d!370358 d!370356)))

(assert (=> bs!330224 (not (= lambda!53428 lambda!53425))))

(assert (=> d!370358 true))

(assert (=> d!370358 true))

(declare-fun order!8013 () Int)

(declare-fun dynLambda!5806 (Int Int) Int)

(assert (=> d!370358 (< (dynLambda!5806 order!8013 lambda!53404) (dynLambda!5805 order!8011 lambda!53428))))

(assert (=> d!370358 (exists!317 rules!2550 lambda!53428)))

(declare-fun lt!433355 () Unit!19386)

(declare-fun choose!8038 (List!13396 Int Regex!3621) Unit!19386)

(assert (=> d!370358 (= lt!433355 (choose!8038 rules!2550 lambda!53404 lt!433187))))

(assert (=> d!370358 (contains!2335 (map!2927 rules!2550 lambda!53404) lt!433187)))

(assert (=> d!370358 (= (lemmaMapContains!50 rules!2550 lambda!53404 lt!433187) lt!433355)))

(declare-fun bs!330225 () Bool)

(assert (= bs!330225 d!370358))

(declare-fun m!1467739 () Bool)

(assert (=> bs!330225 m!1467739))

(declare-fun m!1467741 () Bool)

(assert (=> bs!330225 m!1467741))

(assert (=> bs!330225 m!1467125))

(assert (=> bs!330225 m!1467125))

(assert (=> bs!330225 m!1467175))

(assert (=> b!1314113 d!370358))

(declare-fun d!370360 () Bool)

(declare-fun e!842734 () Bool)

(assert (=> d!370360 e!842734))

(declare-fun res!590516 () Bool)

(assert (=> d!370360 (=> (not res!590516) (not e!842734))))

(declare-fun lt!433366 () Rule!4414)

(declare-fun dynLambda!5807 (Int Rule!4414) Bool)

(assert (=> d!370360 (= res!590516 (dynLambda!5807 lambda!53406 lt!433366))))

(declare-fun e!842732 () Rule!4414)

(assert (=> d!370360 (= lt!433366 e!842732)))

(declare-fun c!215668 () Bool)

(declare-fun e!842735 () Bool)

(assert (=> d!370360 (= c!215668 e!842735)))

(declare-fun res!590515 () Bool)

(assert (=> d!370360 (=> (not res!590515) (not e!842735))))

(assert (=> d!370360 (= res!590515 ((_ is Cons!13330) rules!2550))))

(assert (=> d!370360 (exists!317 rules!2550 lambda!53406)))

(assert (=> d!370360 (= (getWitness!209 rules!2550 lambda!53406) lt!433366)))

(declare-fun b!1314495 () Bool)

(declare-fun lt!433365 () Unit!19386)

(declare-fun Unit!19390 () Unit!19386)

(assert (=> b!1314495 (= lt!433365 Unit!19390)))

(assert (=> b!1314495 false))

(declare-fun e!842733 () Rule!4414)

(declare-fun head!2268 (List!13396) Rule!4414)

(assert (=> b!1314495 (= e!842733 (head!2268 rules!2550))))

(declare-fun b!1314496 () Bool)

(assert (=> b!1314496 (= e!842733 (getWitness!209 (t!118233 rules!2550) lambda!53406))))

(declare-fun b!1314497 () Bool)

(assert (=> b!1314497 (= e!842735 (dynLambda!5807 lambda!53406 (h!18731 rules!2550)))))

(declare-fun b!1314498 () Bool)

(assert (=> b!1314498 (= e!842732 (h!18731 rules!2550))))

(declare-fun b!1314499 () Bool)

(assert (=> b!1314499 (= e!842732 e!842733)))

(declare-fun c!215667 () Bool)

(assert (=> b!1314499 (= c!215667 ((_ is Cons!13330) rules!2550))))

(declare-fun b!1314500 () Bool)

(assert (=> b!1314500 (= e!842734 (contains!2334 rules!2550 lt!433366))))

(assert (= (and d!370360 res!590515) b!1314497))

(assert (= (and d!370360 c!215668) b!1314498))

(assert (= (and d!370360 (not c!215668)) b!1314499))

(assert (= (and b!1314499 c!215667) b!1314496))

(assert (= (and b!1314499 (not c!215667)) b!1314495))

(assert (= (and d!370360 res!590516) b!1314500))

(declare-fun b_lambda!37919 () Bool)

(assert (=> (not b_lambda!37919) (not d!370360)))

(declare-fun b_lambda!37921 () Bool)

(assert (=> (not b_lambda!37921) (not b!1314497)))

(declare-fun m!1467761 () Bool)

(assert (=> b!1314500 m!1467761))

(declare-fun m!1467763 () Bool)

(assert (=> d!370360 m!1467763))

(assert (=> d!370360 m!1467207))

(declare-fun m!1467765 () Bool)

(assert (=> b!1314496 m!1467765))

(declare-fun m!1467767 () Bool)

(assert (=> b!1314495 m!1467767))

(declare-fun m!1467769 () Bool)

(assert (=> b!1314497 m!1467769))

(assert (=> b!1314092 d!370360))

(declare-fun d!370370 () Bool)

(declare-fun lt!433380 () BalanceConc!8708)

(declare-fun printList!558 (LexerInterface!2002 List!13397) List!13395)

(assert (=> d!370370 (= (list!5015 lt!433380) (printList!558 thiss!19762 (list!5014 (singletonSeq!884 t1!34))))))

(declare-fun printTailRec!540 (LexerInterface!2002 BalanceConc!8710 Int BalanceConc!8708) BalanceConc!8708)

(assert (=> d!370370 (= lt!433380 (printTailRec!540 thiss!19762 (singletonSeq!884 t1!34) 0 (BalanceConc!8709 Empty!4384)))))

(assert (=> d!370370 (= (print!776 thiss!19762 (singletonSeq!884 t1!34)) lt!433380)))

(declare-fun bs!330229 () Bool)

(assert (= bs!330229 d!370370))

(declare-fun m!1467821 () Bool)

(assert (=> bs!330229 m!1467821))

(assert (=> bs!330229 m!1467097))

(declare-fun m!1467823 () Bool)

(assert (=> bs!330229 m!1467823))

(assert (=> bs!330229 m!1467823))

(declare-fun m!1467825 () Bool)

(assert (=> bs!330229 m!1467825))

(assert (=> bs!330229 m!1467097))

(declare-fun m!1467827 () Bool)

(assert (=> bs!330229 m!1467827))

(assert (=> b!1314092 d!370370))

(declare-fun d!370386 () Bool)

(declare-fun list!5019 (Conc!4385) List!13397)

(assert (=> d!370386 (= (list!5014 (_1!7359 lt!433182)) (list!5019 (c!215598 (_1!7359 lt!433182))))))

(declare-fun bs!330230 () Bool)

(assert (= bs!330230 d!370386))

(declare-fun m!1467829 () Bool)

(assert (=> bs!330230 m!1467829))

(assert (=> b!1314092 d!370386))

(declare-fun d!370388 () Bool)

(declare-fun e!842823 () Bool)

(assert (=> d!370388 e!842823))

(declare-fun res!590580 () Bool)

(assert (=> d!370388 (=> (not res!590580) (not e!842823))))

(declare-fun e!842821 () Bool)

(assert (=> d!370388 (= res!590580 e!842821)))

(declare-fun c!215693 () Bool)

(declare-fun lt!433405 () tuple2!12946)

(assert (=> d!370388 (= c!215693 (> (size!10842 (_1!7359 lt!433405)) 0))))

(declare-fun lexTailRecV2!363 (LexerInterface!2002 List!13396 BalanceConc!8708 BalanceConc!8708 BalanceConc!8708 BalanceConc!8710) tuple2!12946)

(assert (=> d!370388 (= lt!433405 (lexTailRecV2!363 thiss!19762 rules!2550 lt!433184 (BalanceConc!8709 Empty!4384) lt!433184 (BalanceConc!8711 Empty!4385)))))

(assert (=> d!370388 (= (lex!837 thiss!19762 rules!2550 lt!433184) lt!433405)))

(declare-fun b!1314653 () Bool)

(assert (=> b!1314653 (= e!842823 (= (list!5015 (_2!7359 lt!433405)) (_2!7361 (lexList!540 thiss!19762 rules!2550 (list!5015 lt!433184)))))))

(declare-fun b!1314654 () Bool)

(declare-fun res!590582 () Bool)

(assert (=> b!1314654 (=> (not res!590582) (not e!842823))))

(assert (=> b!1314654 (= res!590582 (= (list!5014 (_1!7359 lt!433405)) (_1!7361 (lexList!540 thiss!19762 rules!2550 (list!5015 lt!433184)))))))

(declare-fun b!1314655 () Bool)

(declare-fun e!842822 () Bool)

(declare-fun isEmpty!7903 (BalanceConc!8710) Bool)

(assert (=> b!1314655 (= e!842822 (not (isEmpty!7903 (_1!7359 lt!433405))))))

(declare-fun b!1314656 () Bool)

(assert (=> b!1314656 (= e!842821 (= (_2!7359 lt!433405) lt!433184))))

(declare-fun b!1314657 () Bool)

(assert (=> b!1314657 (= e!842821 e!842822)))

(declare-fun res!590581 () Bool)

(assert (=> b!1314657 (= res!590581 (< (size!10833 (_2!7359 lt!433405)) (size!10833 lt!433184)))))

(assert (=> b!1314657 (=> (not res!590581) (not e!842822))))

(assert (= (and d!370388 c!215693) b!1314657))

(assert (= (and d!370388 (not c!215693)) b!1314656))

(assert (= (and b!1314657 res!590581) b!1314655))

(assert (= (and d!370388 res!590580) b!1314654))

(assert (= (and b!1314654 res!590582) b!1314653))

(declare-fun m!1467963 () Bool)

(assert (=> d!370388 m!1467963))

(declare-fun m!1467965 () Bool)

(assert (=> d!370388 m!1467965))

(declare-fun m!1467967 () Bool)

(assert (=> b!1314653 m!1467967))

(assert (=> b!1314653 m!1467221))

(assert (=> b!1314653 m!1467221))

(assert (=> b!1314653 m!1467223))

(declare-fun m!1467969 () Bool)

(assert (=> b!1314657 m!1467969))

(declare-fun m!1467971 () Bool)

(assert (=> b!1314657 m!1467971))

(declare-fun m!1467973 () Bool)

(assert (=> b!1314655 m!1467973))

(declare-fun m!1467975 () Bool)

(assert (=> b!1314654 m!1467975))

(assert (=> b!1314654 m!1467221))

(assert (=> b!1314654 m!1467221))

(assert (=> b!1314654 m!1467223))

(assert (=> b!1314092 d!370388))

(declare-fun d!370440 () Bool)

(declare-fun e!842826 () Bool)

(assert (=> d!370440 e!842826))

(declare-fun res!590585 () Bool)

(assert (=> d!370440 (=> (not res!590585) (not e!842826))))

(declare-fun lt!433408 () BalanceConc!8710)

(assert (=> d!370440 (= res!590585 (= (list!5014 lt!433408) (Cons!13331 t1!34 Nil!13331)))))

(declare-fun singleton!380 (Token!4276) BalanceConc!8710)

(assert (=> d!370440 (= lt!433408 (singleton!380 t1!34))))

(assert (=> d!370440 (= (singletonSeq!884 t1!34) lt!433408)))

(declare-fun b!1314660 () Bool)

(declare-fun isBalanced!1274 (Conc!4385) Bool)

(assert (=> b!1314660 (= e!842826 (isBalanced!1274 (c!215598 lt!433408)))))

(assert (= (and d!370440 res!590585) b!1314660))

(declare-fun m!1467977 () Bool)

(assert (=> d!370440 m!1467977))

(declare-fun m!1467979 () Bool)

(assert (=> d!370440 m!1467979))

(declare-fun m!1467981 () Bool)

(assert (=> b!1314660 m!1467981))

(assert (=> b!1314092 d!370440))

(declare-fun d!370442 () Bool)

(declare-fun lt!433409 () Bool)

(assert (=> d!370442 (= lt!433409 (select (content!1870 rules!2550) (rule!4048 t2!34)))))

(declare-fun e!842827 () Bool)

(assert (=> d!370442 (= lt!433409 e!842827)))

(declare-fun res!590587 () Bool)

(assert (=> d!370442 (=> (not res!590587) (not e!842827))))

(assert (=> d!370442 (= res!590587 ((_ is Cons!13330) rules!2550))))

(assert (=> d!370442 (= (contains!2334 rules!2550 (rule!4048 t2!34)) lt!433409)))

(declare-fun b!1314661 () Bool)

(declare-fun e!842828 () Bool)

(assert (=> b!1314661 (= e!842827 e!842828)))

(declare-fun res!590586 () Bool)

(assert (=> b!1314661 (=> res!590586 e!842828)))

(assert (=> b!1314661 (= res!590586 (= (h!18731 rules!2550) (rule!4048 t2!34)))))

(declare-fun b!1314662 () Bool)

(assert (=> b!1314662 (= e!842828 (contains!2334 (t!118233 rules!2550) (rule!4048 t2!34)))))

(assert (= (and d!370442 res!590587) b!1314661))

(assert (= (and b!1314661 (not res!590586)) b!1314662))

(assert (=> d!370442 m!1467731))

(declare-fun m!1467983 () Bool)

(assert (=> d!370442 m!1467983))

(declare-fun m!1467985 () Bool)

(assert (=> b!1314662 m!1467985))

(assert (=> b!1314087 d!370442))

(declare-fun d!370444 () Bool)

(declare-fun lt!433410 () Bool)

(assert (=> d!370444 (= lt!433410 (select (content!1870 rules!2550) lt!433179))))

(declare-fun e!842829 () Bool)

(assert (=> d!370444 (= lt!433410 e!842829)))

(declare-fun res!590589 () Bool)

(assert (=> d!370444 (=> (not res!590589) (not e!842829))))

(assert (=> d!370444 (= res!590589 ((_ is Cons!13330) rules!2550))))

(assert (=> d!370444 (= (contains!2334 rules!2550 lt!433179) lt!433410)))

(declare-fun b!1314663 () Bool)

(declare-fun e!842830 () Bool)

(assert (=> b!1314663 (= e!842829 e!842830)))

(declare-fun res!590588 () Bool)

(assert (=> b!1314663 (=> res!590588 e!842830)))

(assert (=> b!1314663 (= res!590588 (= (h!18731 rules!2550) lt!433179))))

(declare-fun b!1314664 () Bool)

(assert (=> b!1314664 (= e!842830 (contains!2334 (t!118233 rules!2550) lt!433179))))

(assert (= (and d!370444 res!590589) b!1314663))

(assert (= (and b!1314663 (not res!590588)) b!1314664))

(assert (=> d!370444 m!1467731))

(declare-fun m!1467987 () Bool)

(assert (=> d!370444 m!1467987))

(declare-fun m!1467989 () Bool)

(assert (=> b!1314664 m!1467989))

(assert (=> b!1314109 d!370444))

(declare-fun bm!89378 () Bool)

(declare-fun call!89383 () Bool)

(assert (=> bm!89378 (= call!89383 (isEmpty!7898 lt!433191))))

(declare-fun b!1314693 () Bool)

(declare-fun e!842848 () Bool)

(declare-fun e!842847 () Bool)

(assert (=> b!1314693 (= e!842848 e!842847)))

(declare-fun c!215702 () Bool)

(assert (=> b!1314693 (= c!215702 ((_ is EmptyLang!3621) lt!433175))))

(declare-fun b!1314694 () Bool)

(declare-fun res!590613 () Bool)

(declare-fun e!842849 () Bool)

(assert (=> b!1314694 (=> (not res!590613) (not e!842849))))

(assert (=> b!1314694 (= res!590613 (isEmpty!7898 (tail!1881 lt!433191)))))

(declare-fun b!1314695 () Bool)

(assert (=> b!1314695 (= e!842849 (= (head!2267 lt!433191) (c!215597 lt!433175)))))

(declare-fun b!1314696 () Bool)

(declare-fun e!842850 () Bool)

(declare-fun nullable!1145 (Regex!3621) Bool)

(assert (=> b!1314696 (= e!842850 (nullable!1145 lt!433175))))

(declare-fun b!1314697 () Bool)

(declare-fun e!842851 () Bool)

(declare-fun e!842845 () Bool)

(assert (=> b!1314697 (= e!842851 e!842845)))

(declare-fun res!590607 () Bool)

(assert (=> b!1314697 (=> (not res!590607) (not e!842845))))

(declare-fun lt!433413 () Bool)

(assert (=> b!1314697 (= res!590607 (not lt!433413))))

(declare-fun b!1314698 () Bool)

(assert (=> b!1314698 (= e!842848 (= lt!433413 call!89383))))

(declare-fun b!1314699 () Bool)

(declare-fun e!842846 () Bool)

(assert (=> b!1314699 (= e!842845 e!842846)))

(declare-fun res!590608 () Bool)

(assert (=> b!1314699 (=> res!590608 e!842846)))

(assert (=> b!1314699 (= res!590608 call!89383)))

(declare-fun b!1314700 () Bool)

(assert (=> b!1314700 (= e!842847 (not lt!433413))))

(declare-fun b!1314701 () Bool)

(assert (=> b!1314701 (= e!842850 (matchR!1623 (derivativeStep!896 lt!433175 (head!2267 lt!433191)) (tail!1881 lt!433191)))))

(declare-fun b!1314702 () Bool)

(declare-fun res!590611 () Bool)

(assert (=> b!1314702 (=> (not res!590611) (not e!842849))))

(assert (=> b!1314702 (= res!590611 (not call!89383))))

(declare-fun b!1314703 () Bool)

(declare-fun res!590610 () Bool)

(assert (=> b!1314703 (=> res!590610 e!842846)))

(assert (=> b!1314703 (= res!590610 (not (isEmpty!7898 (tail!1881 lt!433191))))))

(declare-fun d!370446 () Bool)

(assert (=> d!370446 e!842848))

(declare-fun c!215700 () Bool)

(assert (=> d!370446 (= c!215700 ((_ is EmptyExpr!3621) lt!433175))))

(assert (=> d!370446 (= lt!433413 e!842850)))

(declare-fun c!215701 () Bool)

(assert (=> d!370446 (= c!215701 (isEmpty!7898 lt!433191))))

(assert (=> d!370446 (validRegex!1547 lt!433175)))

(assert (=> d!370446 (= (matchR!1623 lt!433175 lt!433191) lt!433413)))

(declare-fun b!1314704 () Bool)

(declare-fun res!590609 () Bool)

(assert (=> b!1314704 (=> res!590609 e!842851)))

(assert (=> b!1314704 (= res!590609 (not ((_ is ElementMatch!3621) lt!433175)))))

(assert (=> b!1314704 (= e!842847 e!842851)))

(declare-fun b!1314705 () Bool)

(declare-fun res!590612 () Bool)

(assert (=> b!1314705 (=> res!590612 e!842851)))

(assert (=> b!1314705 (= res!590612 e!842849)))

(declare-fun res!590606 () Bool)

(assert (=> b!1314705 (=> (not res!590606) (not e!842849))))

(assert (=> b!1314705 (= res!590606 lt!433413)))

(declare-fun b!1314706 () Bool)

(assert (=> b!1314706 (= e!842846 (not (= (head!2267 lt!433191) (c!215597 lt!433175))))))

(assert (= (and d!370446 c!215701) b!1314696))

(assert (= (and d!370446 (not c!215701)) b!1314701))

(assert (= (and d!370446 c!215700) b!1314698))

(assert (= (and d!370446 (not c!215700)) b!1314693))

(assert (= (and b!1314693 c!215702) b!1314700))

(assert (= (and b!1314693 (not c!215702)) b!1314704))

(assert (= (and b!1314704 (not res!590609)) b!1314705))

(assert (= (and b!1314705 res!590606) b!1314702))

(assert (= (and b!1314702 res!590611) b!1314694))

(assert (= (and b!1314694 res!590613) b!1314695))

(assert (= (and b!1314705 (not res!590612)) b!1314697))

(assert (= (and b!1314697 res!590607) b!1314699))

(assert (= (and b!1314699 (not res!590608)) b!1314703))

(assert (= (and b!1314703 (not res!590610)) b!1314706))

(assert (= (or b!1314698 b!1314699 b!1314702) bm!89378))

(declare-fun m!1467991 () Bool)

(assert (=> bm!89378 m!1467991))

(declare-fun m!1467993 () Bool)

(assert (=> b!1314696 m!1467993))

(declare-fun m!1467995 () Bool)

(assert (=> b!1314695 m!1467995))

(assert (=> b!1314701 m!1467995))

(assert (=> b!1314701 m!1467995))

(declare-fun m!1467997 () Bool)

(assert (=> b!1314701 m!1467997))

(assert (=> b!1314701 m!1467517))

(assert (=> b!1314701 m!1467997))

(assert (=> b!1314701 m!1467517))

(declare-fun m!1467999 () Bool)

(assert (=> b!1314701 m!1467999))

(assert (=> b!1314694 m!1467517))

(assert (=> b!1314694 m!1467517))

(declare-fun m!1468001 () Bool)

(assert (=> b!1314694 m!1468001))

(assert (=> b!1314706 m!1467995))

(assert (=> d!370446 m!1467991))

(assert (=> d!370446 m!1467605))

(assert (=> b!1314703 m!1467517))

(assert (=> b!1314703 m!1467517))

(assert (=> b!1314703 m!1468001))

(assert (=> b!1314110 d!370446))

(declare-fun bs!330253 () Bool)

(declare-fun d!370448 () Bool)

(assert (= bs!330253 (and d!370448 b!1314089)))

(declare-fun lambda!53444 () Int)

(assert (=> bs!330253 (not (= lambda!53444 lambda!53405))))

(assert (=> d!370448 true))

(declare-fun order!8017 () Int)

(declare-fun dynLambda!5808 (Int Int) Int)

(assert (=> d!370448 (< (dynLambda!5808 order!8017 lambda!53405) (dynLambda!5808 order!8017 lambda!53444))))

(declare-fun forall!3290 (List!13398 Int) Bool)

(assert (=> d!370448 (= (exists!316 (map!2927 rules!2550 lambda!53404) lambda!53405) (not (forall!3290 (map!2927 rules!2550 lambda!53404) lambda!53444)))))

(declare-fun bs!330254 () Bool)

(assert (= bs!330254 d!370448))

(assert (=> bs!330254 m!1467125))

(declare-fun m!1468003 () Bool)

(assert (=> bs!330254 m!1468003))

(assert (=> b!1314089 d!370448))

(declare-fun bs!330255 () Bool)

(declare-fun d!370450 () Bool)

(assert (= bs!330255 (and d!370450 b!1314089)))

(declare-fun lambda!53445 () Int)

(assert (=> bs!330255 (not (= lambda!53445 lambda!53405))))

(declare-fun bs!330256 () Bool)

(assert (= bs!330256 (and d!370450 d!370448)))

(assert (=> bs!330256 (= lambda!53445 lambda!53444)))

(assert (=> d!370450 true))

(assert (=> d!370450 (< (dynLambda!5808 order!8017 lambda!53405) (dynLambda!5808 order!8017 lambda!53445))))

(assert (=> d!370450 (= (exists!316 lt!433192 lambda!53405) (not (forall!3290 lt!433192 lambda!53445)))))

(declare-fun bs!330257 () Bool)

(assert (= bs!330257 d!370450))

(declare-fun m!1468005 () Bool)

(assert (=> bs!330257 m!1468005))

(assert (=> b!1314089 d!370450))

(declare-fun bs!330258 () Bool)

(declare-fun d!370452 () Bool)

(assert (= bs!330258 (and d!370452 b!1314089)))

(declare-fun lambda!53450 () Int)

(assert (=> bs!330258 (not (= lambda!53450 lambda!53405))))

(declare-fun bs!330259 () Bool)

(assert (= bs!330259 (and d!370452 d!370448)))

(assert (=> bs!330259 (not (= lambda!53450 lambda!53444))))

(declare-fun bs!330260 () Bool)

(assert (= bs!330260 (and d!370452 d!370450)))

(assert (=> bs!330260 (not (= lambda!53450 lambda!53445))))

(declare-fun lambda!53451 () Int)

(assert (=> bs!330258 (= lambda!53451 lambda!53405)))

(assert (=> bs!330259 (not (= lambda!53451 lambda!53444))))

(assert (=> bs!330260 (not (= lambda!53451 lambda!53445))))

(declare-fun bs!330261 () Bool)

(assert (= bs!330261 d!370452))

(assert (=> bs!330261 (not (= lambda!53451 lambda!53450))))

(assert (=> d!370452 true))

(assert (=> d!370452 (= (matchR!1623 lt!433175 lt!433191) (exists!316 lt!433192 lambda!53451))))

(declare-fun lt!433416 () Unit!19386)

(declare-fun choose!8039 (Regex!3621 List!13398 List!13395) Unit!19386)

(assert (=> d!370452 (= lt!433416 (choose!8039 lt!433175 lt!433192 lt!433191))))

(assert (=> d!370452 (forall!3290 lt!433192 lambda!53450)))

(assert (=> d!370452 (= (matchRGenUnionSpec!58 lt!433175 lt!433192 lt!433191) lt!433416)))

(assert (=> bs!330261 m!1467181))

(declare-fun m!1468007 () Bool)

(assert (=> bs!330261 m!1468007))

(declare-fun m!1468009 () Bool)

(assert (=> bs!330261 m!1468009))

(declare-fun m!1468011 () Bool)

(assert (=> bs!330261 m!1468011))

(assert (=> b!1314089 d!370452))

(declare-fun d!370454 () Bool)

(declare-fun lt!433419 () List!13398)

(declare-fun size!10844 (List!13398) Int)

(declare-fun size!10845 (List!13396) Int)

(assert (=> d!370454 (= (size!10844 lt!433419) (size!10845 rules!2550))))

(declare-fun e!842856 () List!13398)

(assert (=> d!370454 (= lt!433419 e!842856)))

(declare-fun c!215705 () Bool)

(assert (=> d!370454 (= c!215705 ((_ is Nil!13330) rules!2550))))

(assert (=> d!370454 (= (map!2927 rules!2550 lambda!53404) lt!433419)))

(declare-fun b!1314715 () Bool)

(assert (=> b!1314715 (= e!842856 Nil!13332)))

(declare-fun b!1314716 () Bool)

(declare-fun $colon$colon!149 (List!13398 Regex!3621) List!13398)

(declare-fun dynLambda!5809 (Int Rule!4414) Regex!3621)

(assert (=> b!1314716 (= e!842856 ($colon$colon!149 (map!2927 (t!118233 rules!2550) lambda!53404) (dynLambda!5809 lambda!53404 (h!18731 rules!2550))))))

(assert (= (and d!370454 c!215705) b!1314715))

(assert (= (and d!370454 (not c!215705)) b!1314716))

(declare-fun b_lambda!37953 () Bool)

(assert (=> (not b_lambda!37953) (not b!1314716)))

(declare-fun m!1468013 () Bool)

(assert (=> d!370454 m!1468013))

(declare-fun m!1468015 () Bool)

(assert (=> d!370454 m!1468015))

(declare-fun m!1468017 () Bool)

(assert (=> b!1314716 m!1468017))

(declare-fun m!1468019 () Bool)

(assert (=> b!1314716 m!1468019))

(assert (=> b!1314716 m!1468017))

(assert (=> b!1314716 m!1468019))

(declare-fun m!1468021 () Bool)

(assert (=> b!1314716 m!1468021))

(assert (=> b!1314089 d!370454))

(declare-fun lt!433422 () Bool)

(declare-fun d!370456 () Bool)

(declare-fun content!1871 (List!13398) (InoxSet Regex!3621))

(assert (=> d!370456 (= lt!433422 (select (content!1871 (map!2927 rules!2550 lambda!53404)) lt!433187))))

(declare-fun e!842862 () Bool)

(assert (=> d!370456 (= lt!433422 e!842862)))

(declare-fun res!590621 () Bool)

(assert (=> d!370456 (=> (not res!590621) (not e!842862))))

(assert (=> d!370456 (= res!590621 ((_ is Cons!13332) (map!2927 rules!2550 lambda!53404)))))

(assert (=> d!370456 (= (contains!2335 (map!2927 rules!2550 lambda!53404) lt!433187) lt!433422)))

(declare-fun b!1314721 () Bool)

(declare-fun e!842861 () Bool)

(assert (=> b!1314721 (= e!842862 e!842861)))

(declare-fun res!590620 () Bool)

(assert (=> b!1314721 (=> res!590620 e!842861)))

(assert (=> b!1314721 (= res!590620 (= (h!18733 (map!2927 rules!2550 lambda!53404)) lt!433187))))

(declare-fun b!1314722 () Bool)

(assert (=> b!1314722 (= e!842861 (contains!2335 (t!118235 (map!2927 rules!2550 lambda!53404)) lt!433187))))

(assert (= (and d!370456 res!590621) b!1314721))

(assert (= (and b!1314721 (not res!590620)) b!1314722))

(assert (=> d!370456 m!1467125))

(declare-fun m!1468023 () Bool)

(assert (=> d!370456 m!1468023))

(declare-fun m!1468025 () Bool)

(assert (=> d!370456 m!1468025))

(declare-fun m!1468027 () Bool)

(assert (=> b!1314722 m!1468027))

(assert (=> b!1314095 d!370456))

(assert (=> b!1314095 d!370454))

(declare-fun b!1314735 () Bool)

(declare-fun e!842873 () Regex!3621)

(declare-fun e!842872 () Regex!3621)

(assert (=> b!1314735 (= e!842873 e!842872)))

(declare-fun c!215711 () Bool)

(assert (=> b!1314735 (= c!215711 ((_ is Cons!13332) (map!2927 rules!2550 lambda!53404)))))

(declare-fun b!1314736 () Bool)

(assert (=> b!1314736 (= e!842872 (getWitness!208 (t!118235 (map!2927 rules!2550 lambda!53404)) lambda!53405))))

(declare-fun b!1314737 () Bool)

(assert (=> b!1314737 (= e!842873 (h!18733 (map!2927 rules!2550 lambda!53404)))))

(declare-fun b!1314738 () Bool)

(declare-fun e!842871 () Bool)

(declare-fun dynLambda!5810 (Int Regex!3621) Bool)

(assert (=> b!1314738 (= e!842871 (dynLambda!5810 lambda!53405 (h!18733 (map!2927 rules!2550 lambda!53404))))))

(declare-fun d!370458 () Bool)

(declare-fun e!842874 () Bool)

(assert (=> d!370458 e!842874))

(declare-fun res!590626 () Bool)

(assert (=> d!370458 (=> (not res!590626) (not e!842874))))

(declare-fun lt!433427 () Regex!3621)

(assert (=> d!370458 (= res!590626 (dynLambda!5810 lambda!53405 lt!433427))))

(assert (=> d!370458 (= lt!433427 e!842873)))

(declare-fun c!215710 () Bool)

(assert (=> d!370458 (= c!215710 e!842871)))

(declare-fun res!590627 () Bool)

(assert (=> d!370458 (=> (not res!590627) (not e!842871))))

(assert (=> d!370458 (= res!590627 ((_ is Cons!13332) (map!2927 rules!2550 lambda!53404)))))

(assert (=> d!370458 (exists!316 (map!2927 rules!2550 lambda!53404) lambda!53405)))

(assert (=> d!370458 (= (getWitness!208 (map!2927 rules!2550 lambda!53404) lambda!53405) lt!433427)))

(declare-fun b!1314739 () Bool)

(declare-fun lt!433428 () Unit!19386)

(declare-fun Unit!19391 () Unit!19386)

(assert (=> b!1314739 (= lt!433428 Unit!19391)))

(assert (=> b!1314739 false))

(declare-fun head!2270 (List!13398) Regex!3621)

(assert (=> b!1314739 (= e!842872 (head!2270 (map!2927 rules!2550 lambda!53404)))))

(declare-fun b!1314740 () Bool)

(assert (=> b!1314740 (= e!842874 (contains!2335 (map!2927 rules!2550 lambda!53404) lt!433427))))

(assert (= (and d!370458 res!590627) b!1314738))

(assert (= (and d!370458 c!215710) b!1314737))

(assert (= (and d!370458 (not c!215710)) b!1314735))

(assert (= (and b!1314735 c!215711) b!1314736))

(assert (= (and b!1314735 (not c!215711)) b!1314739))

(assert (= (and d!370458 res!590626) b!1314740))

(declare-fun b_lambda!37955 () Bool)

(assert (=> (not b_lambda!37955) (not b!1314738)))

(declare-fun b_lambda!37957 () Bool)

(assert (=> (not b_lambda!37957) (not d!370458)))

(declare-fun m!1468029 () Bool)

(assert (=> b!1314736 m!1468029))

(declare-fun m!1468031 () Bool)

(assert (=> d!370458 m!1468031))

(assert (=> d!370458 m!1467125))

(assert (=> d!370458 m!1467131))

(declare-fun m!1468033 () Bool)

(assert (=> b!1314738 m!1468033))

(assert (=> b!1314740 m!1467125))

(declare-fun m!1468035 () Bool)

(assert (=> b!1314740 m!1468035))

(assert (=> b!1314739 m!1467125))

(declare-fun m!1468037 () Bool)

(assert (=> b!1314739 m!1468037))

(assert (=> b!1314095 d!370458))

(declare-fun d!370460 () Bool)

(assert (=> d!370460 (= (inv!17700 (tag!2569 (h!18731 rules!2550))) (= (mod (str.len (value!75381 (tag!2569 (h!18731 rules!2550)))) 2) 0))))

(assert (=> b!1314117 d!370460))

(declare-fun d!370462 () Bool)

(declare-fun res!590628 () Bool)

(declare-fun e!842875 () Bool)

(assert (=> d!370462 (=> (not res!590628) (not e!842875))))

(assert (=> d!370462 (= res!590628 (semiInverseModEq!865 (toChars!3389 (transformation!2307 (h!18731 rules!2550))) (toValue!3530 (transformation!2307 (h!18731 rules!2550)))))))

(assert (=> d!370462 (= (inv!17703 (transformation!2307 (h!18731 rules!2550))) e!842875)))

(declare-fun b!1314741 () Bool)

(assert (=> b!1314741 (= e!842875 (equivClasses!824 (toChars!3389 (transformation!2307 (h!18731 rules!2550))) (toValue!3530 (transformation!2307 (h!18731 rules!2550)))))))

(assert (= (and d!370462 res!590628) b!1314741))

(declare-fun m!1468039 () Bool)

(assert (=> d!370462 m!1468039))

(declare-fun m!1468041 () Bool)

(assert (=> b!1314741 m!1468041))

(assert (=> b!1314117 d!370462))

(declare-fun d!370464 () Bool)

(declare-fun lt!433429 () Bool)

(declare-fun e!842876 () Bool)

(assert (=> d!370464 (= lt!433429 e!842876)))

(declare-fun res!590630 () Bool)

(assert (=> d!370464 (=> (not res!590630) (not e!842876))))

(assert (=> d!370464 (= res!590630 (= (list!5014 (_1!7359 (lex!837 thiss!19762 rules!2550 (print!776 thiss!19762 (singletonSeq!884 t1!34))))) (list!5014 (singletonSeq!884 t1!34))))))

(declare-fun e!842877 () Bool)

(assert (=> d!370464 (= lt!433429 e!842877)))

(declare-fun res!590631 () Bool)

(assert (=> d!370464 (=> (not res!590631) (not e!842877))))

(declare-fun lt!433430 () tuple2!12946)

(assert (=> d!370464 (= res!590631 (= (size!10842 (_1!7359 lt!433430)) 1))))

(assert (=> d!370464 (= lt!433430 (lex!837 thiss!19762 rules!2550 (print!776 thiss!19762 (singletonSeq!884 t1!34))))))

(assert (=> d!370464 (not (isEmpty!7892 rules!2550))))

(assert (=> d!370464 (= (rulesProduceIndividualToken!971 thiss!19762 rules!2550 t1!34) lt!433429)))

(declare-fun b!1314742 () Bool)

(declare-fun res!590629 () Bool)

(assert (=> b!1314742 (=> (not res!590629) (not e!842877))))

(assert (=> b!1314742 (= res!590629 (= (apply!3020 (_1!7359 lt!433430) 0) t1!34))))

(declare-fun b!1314743 () Bool)

(assert (=> b!1314743 (= e!842877 (isEmpty!7893 (_2!7359 lt!433430)))))

(declare-fun b!1314744 () Bool)

(assert (=> b!1314744 (= e!842876 (isEmpty!7893 (_2!7359 (lex!837 thiss!19762 rules!2550 (print!776 thiss!19762 (singletonSeq!884 t1!34))))))))

(assert (= (and d!370464 res!590631) b!1314742))

(assert (= (and b!1314742 res!590629) b!1314743))

(assert (= (and d!370464 res!590630) b!1314744))

(declare-fun m!1468043 () Bool)

(assert (=> d!370464 m!1468043))

(assert (=> d!370464 m!1467097))

(assert (=> d!370464 m!1467099))

(assert (=> d!370464 m!1467211))

(declare-fun m!1468045 () Bool)

(assert (=> d!370464 m!1468045))

(assert (=> d!370464 m!1467097))

(assert (=> d!370464 m!1467823))

(assert (=> d!370464 m!1467097))

(assert (=> d!370464 m!1467099))

(declare-fun m!1468047 () Bool)

(assert (=> d!370464 m!1468047))

(declare-fun m!1468049 () Bool)

(assert (=> b!1314742 m!1468049))

(declare-fun m!1468051 () Bool)

(assert (=> b!1314743 m!1468051))

(assert (=> b!1314744 m!1467097))

(assert (=> b!1314744 m!1467097))

(assert (=> b!1314744 m!1467099))

(assert (=> b!1314744 m!1467099))

(assert (=> b!1314744 m!1468047))

(declare-fun m!1468053 () Bool)

(assert (=> b!1314744 m!1468053))

(assert (=> b!1314096 d!370464))

(declare-fun d!370466 () Bool)

(declare-fun res!590636 () Bool)

(declare-fun e!842882 () Bool)

(assert (=> d!370466 (=> res!590636 e!842882)))

(assert (=> d!370466 (= res!590636 (not ((_ is Cons!13330) rules!2550)))))

(assert (=> d!370466 (= (sepAndNonSepRulesDisjointChars!680 rules!2550 rules!2550) e!842882)))

(declare-fun b!1314749 () Bool)

(declare-fun e!842883 () Bool)

(assert (=> b!1314749 (= e!842882 e!842883)))

(declare-fun res!590637 () Bool)

(assert (=> b!1314749 (=> (not res!590637) (not e!842883))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!310 (Rule!4414 List!13396) Bool)

(assert (=> b!1314749 (= res!590637 (ruleDisjointCharsFromAllFromOtherType!310 (h!18731 rules!2550) rules!2550))))

(declare-fun b!1314750 () Bool)

(assert (=> b!1314750 (= e!842883 (sepAndNonSepRulesDisjointChars!680 rules!2550 (t!118233 rules!2550)))))

(assert (= (and d!370466 (not res!590636)) b!1314749))

(assert (= (and b!1314749 res!590637) b!1314750))

(declare-fun m!1468055 () Bool)

(assert (=> b!1314749 m!1468055))

(declare-fun m!1468057 () Bool)

(assert (=> b!1314750 m!1468057))

(assert (=> b!1314114 d!370466))

(declare-fun d!370468 () Bool)

(declare-fun lt!433431 () Bool)

(assert (=> d!370468 (= lt!433431 (select (content!1869 lt!433191) lt!433181))))

(declare-fun e!842884 () Bool)

(assert (=> d!370468 (= lt!433431 e!842884)))

(declare-fun res!590638 () Bool)

(assert (=> d!370468 (=> (not res!590638) (not e!842884))))

(assert (=> d!370468 (= res!590638 ((_ is Cons!13329) lt!433191))))

(assert (=> d!370468 (= (contains!2333 lt!433191 lt!433181) lt!433431)))

(declare-fun b!1314751 () Bool)

(declare-fun e!842885 () Bool)

(assert (=> b!1314751 (= e!842884 e!842885)))

(declare-fun res!590639 () Bool)

(assert (=> b!1314751 (=> res!590639 e!842885)))

(assert (=> b!1314751 (= res!590639 (= (h!18730 lt!433191) lt!433181))))

(declare-fun b!1314752 () Bool)

(assert (=> b!1314752 (= e!842885 (contains!2333 (t!118232 lt!433191) lt!433181))))

(assert (= (and d!370468 res!590638) b!1314751))

(assert (= (and b!1314751 (not res!590639)) b!1314752))

(assert (=> d!370468 m!1467273))

(declare-fun m!1468059 () Bool)

(assert (=> d!370468 m!1468059))

(declare-fun m!1468061 () Bool)

(assert (=> b!1314752 m!1468061))

(assert (=> b!1314093 d!370468))

(declare-fun d!370470 () Bool)

(declare-fun prefixMatchZipperSequence!174 (Regex!3621 BalanceConc!8708) Bool)

(declare-fun ++!3396 (BalanceConc!8708 BalanceConc!8708) BalanceConc!8708)

(declare-fun singletonSeq!886 (C!7532) BalanceConc!8708)

(assert (=> d!370470 (= (separableTokensPredicate!285 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!174 (rulesRegex!192 thiss!19762 rules!2550) (++!3396 (charsOf!1279 t1!34) (singletonSeq!886 (apply!3017 (charsOf!1279 t2!34) 0))))))))

(declare-fun bs!330262 () Bool)

(assert (= bs!330262 d!370470))

(assert (=> bs!330262 m!1467169))

(declare-fun m!1468063 () Bool)

(assert (=> bs!330262 m!1468063))

(declare-fun m!1468065 () Bool)

(assert (=> bs!330262 m!1468065))

(assert (=> bs!330262 m!1467145))

(declare-fun m!1468067 () Bool)

(assert (=> bs!330262 m!1468067))

(assert (=> bs!330262 m!1467169))

(assert (=> bs!330262 m!1467165))

(assert (=> bs!330262 m!1467145))

(assert (=> bs!330262 m!1468067))

(declare-fun m!1468069 () Bool)

(assert (=> bs!330262 m!1468069))

(assert (=> bs!330262 m!1467165))

(assert (=> bs!330262 m!1468069))

(assert (=> bs!330262 m!1468063))

(assert (=> b!1314115 d!370470))

(declare-fun d!370472 () Bool)

(assert (=> d!370472 (= (isEmpty!7892 rules!2550) ((_ is Nil!13330) rules!2550))))

(assert (=> b!1314079 d!370472))

(declare-fun d!370474 () Bool)

(declare-fun lt!433432 () Bool)

(assert (=> d!370474 (= lt!433432 (isEmpty!7898 (list!5015 (_2!7359 lt!433182))))))

(assert (=> d!370474 (= lt!433432 (isEmpty!7899 (c!215596 (_2!7359 lt!433182))))))

(assert (=> d!370474 (= (isEmpty!7893 (_2!7359 lt!433182)) lt!433432)))

(declare-fun bs!330263 () Bool)

(assert (= bs!330263 d!370474))

(declare-fun m!1468071 () Bool)

(assert (=> bs!330263 m!1468071))

(assert (=> bs!330263 m!1468071))

(declare-fun m!1468073 () Bool)

(assert (=> bs!330263 m!1468073))

(declare-fun m!1468075 () Bool)

(assert (=> bs!330263 m!1468075))

(assert (=> b!1314101 d!370474))

(declare-fun d!370476 () Bool)

(declare-fun res!590644 () Bool)

(declare-fun e!842890 () Bool)

(assert (=> d!370476 (=> res!590644 e!842890)))

(assert (=> d!370476 (= res!590644 ((_ is Nil!13330) rules!2550))))

(assert (=> d!370476 (= (forall!3288 rules!2550 lambda!53407) e!842890)))

(declare-fun b!1314757 () Bool)

(declare-fun e!842891 () Bool)

(assert (=> b!1314757 (= e!842890 e!842891)))

(declare-fun res!590645 () Bool)

(assert (=> b!1314757 (=> (not res!590645) (not e!842891))))

(assert (=> b!1314757 (= res!590645 (dynLambda!5807 lambda!53407 (h!18731 rules!2550)))))

(declare-fun b!1314758 () Bool)

(assert (=> b!1314758 (= e!842891 (forall!3288 (t!118233 rules!2550) lambda!53407))))

(assert (= (and d!370476 (not res!590644)) b!1314757))

(assert (= (and b!1314757 res!590645) b!1314758))

(declare-fun b_lambda!37959 () Bool)

(assert (=> (not b_lambda!37959) (not b!1314757)))

(declare-fun m!1468077 () Bool)

(assert (=> b!1314757 m!1468077))

(declare-fun m!1468079 () Bool)

(assert (=> b!1314758 m!1468079))

(assert (=> b!1314080 d!370476))

(declare-fun d!370478 () Bool)

(assert (=> d!370478 (dynLambda!5807 lambda!53407 (rule!4048 t1!34))))

(declare-fun lt!433435 () Unit!19386)

(declare-fun choose!8040 (List!13396 Int Rule!4414) Unit!19386)

(assert (=> d!370478 (= lt!433435 (choose!8040 rules!2550 lambda!53407 (rule!4048 t1!34)))))

(declare-fun e!842894 () Bool)

(assert (=> d!370478 e!842894))

(declare-fun res!590648 () Bool)

(assert (=> d!370478 (=> (not res!590648) (not e!842894))))

(assert (=> d!370478 (= res!590648 (forall!3288 rules!2550 lambda!53407))))

(assert (=> d!370478 (= (forallContained!558 rules!2550 lambda!53407 (rule!4048 t1!34)) lt!433435)))

(declare-fun b!1314761 () Bool)

(assert (=> b!1314761 (= e!842894 (contains!2334 rules!2550 (rule!4048 t1!34)))))

(assert (= (and d!370478 res!590648) b!1314761))

(declare-fun b_lambda!37961 () Bool)

(assert (=> (not b_lambda!37961) (not d!370478)))

(declare-fun m!1468081 () Bool)

(assert (=> d!370478 m!1468081))

(declare-fun m!1468083 () Bool)

(assert (=> d!370478 m!1468083))

(assert (=> d!370478 m!1467105))

(assert (=> b!1314761 m!1467219))

(assert (=> b!1314080 d!370478))

(declare-fun d!370480 () Bool)

(assert (=> d!370480 (dynLambda!5807 lambda!53407 lt!433179)))

(declare-fun lt!433436 () Unit!19386)

(assert (=> d!370480 (= lt!433436 (choose!8040 rules!2550 lambda!53407 lt!433179))))

(declare-fun e!842895 () Bool)

(assert (=> d!370480 e!842895))

(declare-fun res!590649 () Bool)

(assert (=> d!370480 (=> (not res!590649) (not e!842895))))

(assert (=> d!370480 (= res!590649 (forall!3288 rules!2550 lambda!53407))))

(assert (=> d!370480 (= (forallContained!558 rules!2550 lambda!53407 lt!433179) lt!433436)))

(declare-fun b!1314762 () Bool)

(assert (=> b!1314762 (= e!842895 (contains!2334 rules!2550 lt!433179))))

(assert (= (and d!370480 res!590649) b!1314762))

(declare-fun b_lambda!37963 () Bool)

(assert (=> (not b_lambda!37963) (not d!370480)))

(declare-fun m!1468085 () Bool)

(assert (=> d!370480 m!1468085))

(declare-fun m!1468087 () Bool)

(assert (=> d!370480 m!1468087))

(assert (=> d!370480 m!1467105))

(assert (=> b!1314762 m!1467139))

(assert (=> b!1314080 d!370480))

(declare-fun d!370482 () Bool)

(declare-fun lt!433437 () Bool)

(assert (=> d!370482 (= lt!433437 (select (content!1869 lt!433171) lt!433173))))

(declare-fun e!842896 () Bool)

(assert (=> d!370482 (= lt!433437 e!842896)))

(declare-fun res!590650 () Bool)

(assert (=> d!370482 (=> (not res!590650) (not e!842896))))

(assert (=> d!370482 (= res!590650 ((_ is Cons!13329) lt!433171))))

(assert (=> d!370482 (= (contains!2333 lt!433171 lt!433173) lt!433437)))

(declare-fun b!1314763 () Bool)

(declare-fun e!842897 () Bool)

(assert (=> b!1314763 (= e!842896 e!842897)))

(declare-fun res!590651 () Bool)

(assert (=> b!1314763 (=> res!590651 e!842897)))

(assert (=> b!1314763 (= res!590651 (= (h!18730 lt!433171) lt!433173))))

(declare-fun b!1314764 () Bool)

(assert (=> b!1314764 (= e!842897 (contains!2333 (t!118232 lt!433171) lt!433173))))

(assert (= (and d!370482 res!590650) b!1314763))

(assert (= (and b!1314763 (not res!590651)) b!1314764))

(assert (=> d!370482 m!1467509))

(declare-fun m!1468089 () Bool)

(assert (=> d!370482 m!1468089))

(declare-fun m!1468091 () Bool)

(assert (=> b!1314764 m!1468091))

(assert (=> b!1314102 d!370482))

(declare-fun d!370484 () Bool)

(assert (=> d!370484 (= (list!5014 (_1!7359 lt!433190)) (list!5019 (c!215598 (_1!7359 lt!433190))))))

(declare-fun bs!330264 () Bool)

(assert (= bs!330264 d!370484))

(declare-fun m!1468093 () Bool)

(assert (=> bs!330264 m!1468093))

(assert (=> b!1314081 d!370484))

(declare-fun d!370486 () Bool)

(declare-fun e!842900 () Bool)

(assert (=> d!370486 e!842900))

(declare-fun res!590652 () Bool)

(assert (=> d!370486 (=> (not res!590652) (not e!842900))))

(declare-fun e!842898 () Bool)

(assert (=> d!370486 (= res!590652 e!842898)))

(declare-fun c!215712 () Bool)

(declare-fun lt!433438 () tuple2!12946)

(assert (=> d!370486 (= c!215712 (> (size!10842 (_1!7359 lt!433438)) 0))))

(assert (=> d!370486 (= lt!433438 (lexTailRecV2!363 thiss!19762 rules!2550 lt!433178 (BalanceConc!8709 Empty!4384) lt!433178 (BalanceConc!8711 Empty!4385)))))

(assert (=> d!370486 (= (lex!837 thiss!19762 rules!2550 lt!433178) lt!433438)))

(declare-fun b!1314765 () Bool)

(assert (=> b!1314765 (= e!842900 (= (list!5015 (_2!7359 lt!433438)) (_2!7361 (lexList!540 thiss!19762 rules!2550 (list!5015 lt!433178)))))))

(declare-fun b!1314766 () Bool)

(declare-fun res!590654 () Bool)

(assert (=> b!1314766 (=> (not res!590654) (not e!842900))))

(assert (=> b!1314766 (= res!590654 (= (list!5014 (_1!7359 lt!433438)) (_1!7361 (lexList!540 thiss!19762 rules!2550 (list!5015 lt!433178)))))))

(declare-fun b!1314767 () Bool)

(declare-fun e!842899 () Bool)

(assert (=> b!1314767 (= e!842899 (not (isEmpty!7903 (_1!7359 lt!433438))))))

(declare-fun b!1314768 () Bool)

(assert (=> b!1314768 (= e!842898 (= (_2!7359 lt!433438) lt!433178))))

(declare-fun b!1314769 () Bool)

(assert (=> b!1314769 (= e!842898 e!842899)))

(declare-fun res!590653 () Bool)

(assert (=> b!1314769 (= res!590653 (< (size!10833 (_2!7359 lt!433438)) (size!10833 lt!433178)))))

(assert (=> b!1314769 (=> (not res!590653) (not e!842899))))

(assert (= (and d!370486 c!215712) b!1314769))

(assert (= (and d!370486 (not c!215712)) b!1314768))

(assert (= (and b!1314769 res!590653) b!1314767))

(assert (= (and d!370486 res!590652) b!1314766))

(assert (= (and b!1314766 res!590654) b!1314765))

(declare-fun m!1468095 () Bool)

(assert (=> d!370486 m!1468095))

(declare-fun m!1468097 () Bool)

(assert (=> d!370486 m!1468097))

(declare-fun m!1468099 () Bool)

(assert (=> b!1314765 m!1468099))

(assert (=> b!1314765 m!1467151))

(assert (=> b!1314765 m!1467151))

(assert (=> b!1314765 m!1467153))

(declare-fun m!1468101 () Bool)

(assert (=> b!1314769 m!1468101))

(declare-fun m!1468103 () Bool)

(assert (=> b!1314769 m!1468103))

(declare-fun m!1468105 () Bool)

(assert (=> b!1314767 m!1468105))

(declare-fun m!1468107 () Bool)

(assert (=> b!1314766 m!1468107))

(assert (=> b!1314766 m!1467151))

(assert (=> b!1314766 m!1467151))

(assert (=> b!1314766 m!1467153))

(assert (=> b!1314081 d!370486))

(declare-fun d!370488 () Bool)

(declare-fun lt!433439 () BalanceConc!8708)

(assert (=> d!370488 (= (list!5015 lt!433439) (printList!558 thiss!19762 (list!5014 (singletonSeq!884 t2!34))))))

(assert (=> d!370488 (= lt!433439 (printTailRec!540 thiss!19762 (singletonSeq!884 t2!34) 0 (BalanceConc!8709 Empty!4384)))))

(assert (=> d!370488 (= (print!776 thiss!19762 (singletonSeq!884 t2!34)) lt!433439)))

(declare-fun bs!330265 () Bool)

(assert (= bs!330265 d!370488))

(declare-fun m!1468109 () Bool)

(assert (=> bs!330265 m!1468109))

(assert (=> bs!330265 m!1467203))

(assert (=> bs!330265 m!1467455))

(assert (=> bs!330265 m!1467455))

(declare-fun m!1468111 () Bool)

(assert (=> bs!330265 m!1468111))

(assert (=> bs!330265 m!1467203))

(declare-fun m!1468113 () Bool)

(assert (=> bs!330265 m!1468113))

(assert (=> b!1314081 d!370488))

(declare-fun d!370490 () Bool)

(declare-fun e!842901 () Bool)

(assert (=> d!370490 e!842901))

(declare-fun res!590655 () Bool)

(assert (=> d!370490 (=> (not res!590655) (not e!842901))))

(declare-fun lt!433440 () BalanceConc!8710)

(assert (=> d!370490 (= res!590655 (= (list!5014 lt!433440) (Cons!13331 t2!34 Nil!13331)))))

(assert (=> d!370490 (= lt!433440 (singleton!380 t2!34))))

(assert (=> d!370490 (= (singletonSeq!884 t2!34) lt!433440)))

(declare-fun b!1314770 () Bool)

(assert (=> b!1314770 (= e!842901 (isBalanced!1274 (c!215598 lt!433440)))))

(assert (= (and d!370490 res!590655) b!1314770))

(declare-fun m!1468115 () Bool)

(assert (=> d!370490 m!1468115))

(declare-fun m!1468117 () Bool)

(assert (=> d!370490 m!1468117))

(declare-fun m!1468119 () Bool)

(assert (=> b!1314770 m!1468119))

(assert (=> b!1314081 d!370490))

(declare-fun b!1314771 () Bool)

(declare-fun e!842903 () Bool)

(assert (=> b!1314771 (= e!842903 (inv!17 (value!75382 t2!34)))))

(declare-fun b!1314772 () Bool)

(declare-fun res!590656 () Bool)

(declare-fun e!842902 () Bool)

(assert (=> b!1314772 (=> res!590656 e!842902)))

(assert (=> b!1314772 (= res!590656 (not ((_ is IntegerValue!7193) (value!75382 t2!34))))))

(assert (=> b!1314772 (= e!842903 e!842902)))

(declare-fun b!1314773 () Bool)

(declare-fun e!842904 () Bool)

(assert (=> b!1314773 (= e!842904 e!842903)))

(declare-fun c!215714 () Bool)

(assert (=> b!1314773 (= c!215714 ((_ is IntegerValue!7192) (value!75382 t2!34)))))

(declare-fun d!370492 () Bool)

(declare-fun c!215713 () Bool)

(assert (=> d!370492 (= c!215713 ((_ is IntegerValue!7191) (value!75382 t2!34)))))

(assert (=> d!370492 (= (inv!21 (value!75382 t2!34)) e!842904)))

(declare-fun b!1314774 () Bool)

(assert (=> b!1314774 (= e!842902 (inv!15 (value!75382 t2!34)))))

(declare-fun b!1314775 () Bool)

(assert (=> b!1314775 (= e!842904 (inv!16 (value!75382 t2!34)))))

(assert (= (and d!370492 c!215713) b!1314775))

(assert (= (and d!370492 (not c!215713)) b!1314773))

(assert (= (and b!1314773 c!215714) b!1314771))

(assert (= (and b!1314773 (not c!215714)) b!1314772))

(assert (= (and b!1314772 (not res!590656)) b!1314774))

(declare-fun m!1468121 () Bool)

(assert (=> b!1314771 m!1468121))

(declare-fun m!1468123 () Bool)

(assert (=> b!1314774 m!1468123))

(declare-fun m!1468125 () Bool)

(assert (=> b!1314775 m!1468125))

(assert (=> b!1314098 d!370492))

(declare-fun d!370494 () Bool)

(declare-fun lt!433441 () Bool)

(assert (=> d!370494 (= lt!433441 (select (content!1869 lt!433171) lt!433181))))

(declare-fun e!842905 () Bool)

(assert (=> d!370494 (= lt!433441 e!842905)))

(declare-fun res!590657 () Bool)

(assert (=> d!370494 (=> (not res!590657) (not e!842905))))

(assert (=> d!370494 (= res!590657 ((_ is Cons!13329) lt!433171))))

(assert (=> d!370494 (= (contains!2333 lt!433171 lt!433181) lt!433441)))

(declare-fun b!1314776 () Bool)

(declare-fun e!842906 () Bool)

(assert (=> b!1314776 (= e!842905 e!842906)))

(declare-fun res!590658 () Bool)

(assert (=> b!1314776 (=> res!590658 e!842906)))

(assert (=> b!1314776 (= res!590658 (= (h!18730 lt!433171) lt!433181))))

(declare-fun b!1314777 () Bool)

(assert (=> b!1314777 (= e!842906 (contains!2333 (t!118232 lt!433171) lt!433181))))

(assert (= (and d!370494 res!590657) b!1314776))

(assert (= (and b!1314776 (not res!590658)) b!1314777))

(assert (=> d!370494 m!1467509))

(declare-fun m!1468127 () Bool)

(assert (=> d!370494 m!1468127))

(declare-fun m!1468129 () Bool)

(assert (=> b!1314777 m!1468129))

(assert (=> b!1314099 d!370494))

(declare-fun d!370496 () Bool)

(declare-fun lt!433442 () C!7532)

(assert (=> d!370496 (= lt!433442 (apply!3021 (list!5015 lt!433188) 0))))

(assert (=> d!370496 (= lt!433442 (apply!3022 (c!215596 lt!433188) 0))))

(declare-fun e!842907 () Bool)

(assert (=> d!370496 e!842907))

(declare-fun res!590659 () Bool)

(assert (=> d!370496 (=> (not res!590659) (not e!842907))))

(assert (=> d!370496 (= res!590659 (<= 0 0))))

(assert (=> d!370496 (= (apply!3017 lt!433188 0) lt!433442)))

(declare-fun b!1314778 () Bool)

(assert (=> b!1314778 (= e!842907 (< 0 (size!10833 lt!433188)))))

(assert (= (and d!370496 res!590659) b!1314778))

(assert (=> d!370496 m!1467171))

(assert (=> d!370496 m!1467171))

(declare-fun m!1468131 () Bool)

(assert (=> d!370496 m!1468131))

(declare-fun m!1468133 () Bool)

(assert (=> d!370496 m!1468133))

(declare-fun m!1468135 () Bool)

(assert (=> b!1314778 m!1468135))

(assert (=> b!1314099 d!370496))

(declare-fun d!370498 () Bool)

(declare-fun res!590662 () Bool)

(declare-fun e!842910 () Bool)

(assert (=> d!370498 (=> (not res!590662) (not e!842910))))

(declare-fun rulesValid!835 (LexerInterface!2002 List!13396) Bool)

(assert (=> d!370498 (= res!590662 (rulesValid!835 thiss!19762 rules!2550))))

(assert (=> d!370498 (= (rulesInvariant!1872 thiss!19762 rules!2550) e!842910)))

(declare-fun b!1314781 () Bool)

(declare-datatypes ((List!13400 0))(
  ( (Nil!13334) (Cons!13334 (h!18735 String!16221) (t!118273 List!13400)) )
))
(declare-fun noDuplicateTag!835 (LexerInterface!2002 List!13396 List!13400) Bool)

(assert (=> b!1314781 (= e!842910 (noDuplicateTag!835 thiss!19762 rules!2550 Nil!13334))))

(assert (= (and d!370498 res!590662) b!1314781))

(declare-fun m!1468137 () Bool)

(assert (=> d!370498 m!1468137))

(declare-fun m!1468139 () Bool)

(assert (=> b!1314781 m!1468139))

(assert (=> b!1314100 d!370498))

(declare-fun b!1314793 () Bool)

(declare-fun e!842913 () Bool)

(declare-fun tp!382704 () Bool)

(declare-fun tp!382706 () Bool)

(assert (=> b!1314793 (= e!842913 (and tp!382704 tp!382706))))

(declare-fun b!1314794 () Bool)

(declare-fun tp!382703 () Bool)

(assert (=> b!1314794 (= e!842913 tp!382703)))

(declare-fun b!1314795 () Bool)

(declare-fun tp!382705 () Bool)

(declare-fun tp!382702 () Bool)

(assert (=> b!1314795 (= e!842913 (and tp!382705 tp!382702))))

(declare-fun b!1314792 () Bool)

(declare-fun tp_is_empty!6623 () Bool)

(assert (=> b!1314792 (= e!842913 tp_is_empty!6623)))

(assert (=> b!1314106 (= tp!382631 e!842913)))

(assert (= (and b!1314106 ((_ is ElementMatch!3621) (regex!2307 (rule!4048 t2!34)))) b!1314792))

(assert (= (and b!1314106 ((_ is Concat!6019) (regex!2307 (rule!4048 t2!34)))) b!1314793))

(assert (= (and b!1314106 ((_ is Star!3621) (regex!2307 (rule!4048 t2!34)))) b!1314794))

(assert (= (and b!1314106 ((_ is Union!3621) (regex!2307 (rule!4048 t2!34)))) b!1314795))

(declare-fun b!1314797 () Bool)

(declare-fun e!842914 () Bool)

(declare-fun tp!382709 () Bool)

(declare-fun tp!382711 () Bool)

(assert (=> b!1314797 (= e!842914 (and tp!382709 tp!382711))))

(declare-fun b!1314798 () Bool)

(declare-fun tp!382708 () Bool)

(assert (=> b!1314798 (= e!842914 tp!382708)))

(declare-fun b!1314799 () Bool)

(declare-fun tp!382710 () Bool)

(declare-fun tp!382707 () Bool)

(assert (=> b!1314799 (= e!842914 (and tp!382710 tp!382707))))

(declare-fun b!1314796 () Bool)

(assert (=> b!1314796 (= e!842914 tp_is_empty!6623)))

(assert (=> b!1314117 (= tp!382640 e!842914)))

(assert (= (and b!1314117 ((_ is ElementMatch!3621) (regex!2307 (h!18731 rules!2550)))) b!1314796))

(assert (= (and b!1314117 ((_ is Concat!6019) (regex!2307 (h!18731 rules!2550)))) b!1314797))

(assert (= (and b!1314117 ((_ is Star!3621) (regex!2307 (h!18731 rules!2550)))) b!1314798))

(assert (= (and b!1314117 ((_ is Union!3621) (regex!2307 (h!18731 rules!2550)))) b!1314799))

(declare-fun b!1314801 () Bool)

(declare-fun e!842915 () Bool)

(declare-fun tp!382714 () Bool)

(declare-fun tp!382716 () Bool)

(assert (=> b!1314801 (= e!842915 (and tp!382714 tp!382716))))

(declare-fun b!1314802 () Bool)

(declare-fun tp!382713 () Bool)

(assert (=> b!1314802 (= e!842915 tp!382713)))

(declare-fun b!1314803 () Bool)

(declare-fun tp!382715 () Bool)

(declare-fun tp!382712 () Bool)

(assert (=> b!1314803 (= e!842915 (and tp!382715 tp!382712))))

(declare-fun b!1314800 () Bool)

(assert (=> b!1314800 (= e!842915 tp_is_empty!6623)))

(assert (=> b!1314112 (= tp!382634 e!842915)))

(assert (= (and b!1314112 ((_ is ElementMatch!3621) (regex!2307 (rule!4048 t1!34)))) b!1314800))

(assert (= (and b!1314112 ((_ is Concat!6019) (regex!2307 (rule!4048 t1!34)))) b!1314801))

(assert (= (and b!1314112 ((_ is Star!3621) (regex!2307 (rule!4048 t1!34)))) b!1314802))

(assert (= (and b!1314112 ((_ is Union!3621) (regex!2307 (rule!4048 t1!34)))) b!1314803))

(declare-fun b!1314808 () Bool)

(declare-fun e!842918 () Bool)

(declare-fun tp!382719 () Bool)

(assert (=> b!1314808 (= e!842918 (and tp_is_empty!6623 tp!382719))))

(assert (=> b!1314082 (= tp!382635 e!842918)))

(assert (= (and b!1314082 ((_ is Cons!13329) (originalCharacters!3169 t1!34))) b!1314808))

(declare-fun b!1314809 () Bool)

(declare-fun e!842919 () Bool)

(declare-fun tp!382720 () Bool)

(assert (=> b!1314809 (= e!842919 (and tp_is_empty!6623 tp!382720))))

(assert (=> b!1314098 (= tp!382636 e!842919)))

(assert (= (and b!1314098 ((_ is Cons!13329) (originalCharacters!3169 t2!34))) b!1314809))

(declare-fun b!1314820 () Bool)

(declare-fun b_free!31699 () Bool)

(declare-fun b_next!32403 () Bool)

(assert (=> b!1314820 (= b_free!31699 (not b_next!32403))))

(declare-fun tp!382731 () Bool)

(declare-fun b_and!87855 () Bool)

(assert (=> b!1314820 (= tp!382731 b_and!87855)))

(declare-fun b_free!31701 () Bool)

(declare-fun b_next!32405 () Bool)

(assert (=> b!1314820 (= b_free!31701 (not b_next!32405))))

(declare-fun tb!69869 () Bool)

(declare-fun t!118269 () Bool)

(assert (=> (and b!1314820 (= (toChars!3389 (transformation!2307 (h!18731 (t!118233 rules!2550)))) (toChars!3389 (transformation!2307 (rule!4048 t2!34)))) t!118269) tb!69869))

(declare-fun result!84786 () Bool)

(assert (= result!84786 result!84756))

(assert (=> d!370236 t!118269))

(declare-fun tb!69871 () Bool)

(declare-fun t!118271 () Bool)

(assert (=> (and b!1314820 (= (toChars!3389 (transformation!2307 (h!18731 (t!118233 rules!2550)))) (toChars!3389 (transformation!2307 (rule!4048 t1!34)))) t!118271) tb!69871))

(declare-fun result!84788 () Bool)

(assert (= result!84788 result!84764))

(assert (=> b!1314232 t!118271))

(assert (=> b!1314245 t!118269))

(assert (=> d!370306 t!118271))

(declare-fun tp!382732 () Bool)

(declare-fun b_and!87857 () Bool)

(assert (=> b!1314820 (= tp!382732 (and (=> t!118269 result!84786) (=> t!118271 result!84788) b_and!87857))))

(declare-fun e!842931 () Bool)

(assert (=> b!1314820 (= e!842931 (and tp!382731 tp!382732))))

(declare-fun e!842929 () Bool)

(declare-fun b!1314819 () Bool)

(declare-fun tp!382729 () Bool)

(assert (=> b!1314819 (= e!842929 (and tp!382729 (inv!17700 (tag!2569 (h!18731 (t!118233 rules!2550)))) (inv!17703 (transformation!2307 (h!18731 (t!118233 rules!2550)))) e!842931))))

(declare-fun b!1314818 () Bool)

(declare-fun e!842928 () Bool)

(declare-fun tp!382730 () Bool)

(assert (=> b!1314818 (= e!842928 (and e!842929 tp!382730))))

(assert (=> b!1314116 (= tp!382641 e!842928)))

(assert (= b!1314819 b!1314820))

(assert (= b!1314818 b!1314819))

(assert (= (and b!1314116 ((_ is Cons!13330) (t!118233 rules!2550))) b!1314818))

(declare-fun m!1468141 () Bool)

(assert (=> b!1314819 m!1468141))

(declare-fun m!1468143 () Bool)

(assert (=> b!1314819 m!1468143))

(declare-fun b_lambda!37965 () Bool)

(assert (= b_lambda!37961 (or b!1314080 b_lambda!37965)))

(declare-fun bs!330266 () Bool)

(declare-fun d!370500 () Bool)

(assert (= bs!330266 (and d!370500 b!1314080)))

(declare-fun ruleValid!560 (LexerInterface!2002 Rule!4414) Bool)

(assert (=> bs!330266 (= (dynLambda!5807 lambda!53407 (rule!4048 t1!34)) (ruleValid!560 thiss!19762 (rule!4048 t1!34)))))

(declare-fun m!1468145 () Bool)

(assert (=> bs!330266 m!1468145))

(assert (=> d!370478 d!370500))

(declare-fun b_lambda!37967 () Bool)

(assert (= b_lambda!37903 (or (and b!1314097 b_free!31685 (= (toChars!3389 (transformation!2307 (h!18731 rules!2550))) (toChars!3389 (transformation!2307 (rule!4048 t2!34))))) (and b!1314094 b_free!31689 (= (toChars!3389 (transformation!2307 (rule!4048 t1!34))) (toChars!3389 (transformation!2307 (rule!4048 t2!34))))) (and b!1314088 b_free!31693) (and b!1314820 b_free!31701 (= (toChars!3389 (transformation!2307 (h!18731 (t!118233 rules!2550)))) (toChars!3389 (transformation!2307 (rule!4048 t2!34))))) b_lambda!37967)))

(declare-fun b_lambda!37969 () Bool)

(assert (= b_lambda!37959 (or b!1314080 b_lambda!37969)))

(declare-fun bs!330267 () Bool)

(declare-fun d!370502 () Bool)

(assert (= bs!330267 (and d!370502 b!1314080)))

(assert (=> bs!330267 (= (dynLambda!5807 lambda!53407 (h!18731 rules!2550)) (ruleValid!560 thiss!19762 (h!18731 rules!2550)))))

(declare-fun m!1468147 () Bool)

(assert (=> bs!330267 m!1468147))

(assert (=> b!1314757 d!370502))

(declare-fun b_lambda!37971 () Bool)

(assert (= b_lambda!37905 (or b!1314084 b_lambda!37971)))

(declare-fun bs!330268 () Bool)

(declare-fun d!370504 () Bool)

(assert (= bs!330268 (and d!370504 b!1314084)))

(declare-fun res!590663 () Bool)

(declare-fun e!842932 () Bool)

(assert (=> bs!330268 (=> (not res!590663) (not e!842932))))

(assert (=> bs!330268 (= res!590663 (matchR!1623 lt!433175 lt!433289))))

(assert (=> bs!330268 (= (dynLambda!5802 lambda!53403 lt!433289) e!842932)))

(declare-fun b!1314821 () Bool)

(assert (=> b!1314821 (= e!842932 (isPrefix!1072 lt!433171 lt!433289))))

(assert (= (and bs!330268 res!590663) b!1314821))

(declare-fun m!1468149 () Bool)

(assert (=> bs!330268 m!1468149))

(declare-fun m!1468151 () Bool)

(assert (=> b!1314821 m!1468151))

(assert (=> d!370292 d!370504))

(declare-fun b_lambda!37973 () Bool)

(assert (= b_lambda!37893 (or (and b!1314097 b_free!31685 (= (toChars!3389 (transformation!2307 (h!18731 rules!2550))) (toChars!3389 (transformation!2307 (rule!4048 t2!34))))) (and b!1314094 b_free!31689 (= (toChars!3389 (transformation!2307 (rule!4048 t1!34))) (toChars!3389 (transformation!2307 (rule!4048 t2!34))))) (and b!1314088 b_free!31693) (and b!1314820 b_free!31701 (= (toChars!3389 (transformation!2307 (h!18731 (t!118233 rules!2550)))) (toChars!3389 (transformation!2307 (rule!4048 t2!34))))) b_lambda!37973)))

(declare-fun b_lambda!37975 () Bool)

(assert (= b_lambda!37921 (or b!1314113 b_lambda!37975)))

(declare-fun bs!330269 () Bool)

(declare-fun d!370506 () Bool)

(assert (= bs!330269 (and d!370506 b!1314113)))

(assert (=> bs!330269 (= (dynLambda!5807 lambda!53406 (h!18731 rules!2550)) (= (regex!2307 (h!18731 rules!2550)) lt!433187))))

(assert (=> b!1314497 d!370506))

(declare-fun b_lambda!37977 () Bool)

(assert (= b_lambda!37957 (or b!1314089 b_lambda!37977)))

(declare-fun bs!330270 () Bool)

(declare-fun d!370508 () Bool)

(assert (= bs!330270 (and d!370508 b!1314089)))

(declare-fun res!590664 () Bool)

(declare-fun e!842933 () Bool)

(assert (=> bs!330270 (=> (not res!590664) (not e!842933))))

(assert (=> bs!330270 (= res!590664 (validRegex!1547 lt!433427))))

(assert (=> bs!330270 (= (dynLambda!5810 lambda!53405 lt!433427) e!842933)))

(declare-fun b!1314822 () Bool)

(assert (=> b!1314822 (= e!842933 (matchR!1623 lt!433427 lt!433191))))

(assert (= (and bs!330270 res!590664) b!1314822))

(declare-fun m!1468153 () Bool)

(assert (=> bs!330270 m!1468153))

(declare-fun m!1468155 () Bool)

(assert (=> b!1314822 m!1468155))

(assert (=> d!370458 d!370508))

(declare-fun b_lambda!37979 () Bool)

(assert (= b_lambda!37953 (or b!1314089 b_lambda!37979)))

(declare-fun bs!330271 () Bool)

(declare-fun d!370510 () Bool)

(assert (= bs!330271 (and d!370510 b!1314089)))

(assert (=> bs!330271 (= (dynLambda!5809 lambda!53404 (h!18731 rules!2550)) (regex!2307 (h!18731 rules!2550)))))

(assert (=> b!1314716 d!370510))

(declare-fun b_lambda!37981 () Bool)

(assert (= b_lambda!37955 (or b!1314089 b_lambda!37981)))

(declare-fun bs!330272 () Bool)

(declare-fun d!370512 () Bool)

(assert (= bs!330272 (and d!370512 b!1314089)))

(declare-fun res!590665 () Bool)

(declare-fun e!842934 () Bool)

(assert (=> bs!330272 (=> (not res!590665) (not e!842934))))

(assert (=> bs!330272 (= res!590665 (validRegex!1547 (h!18733 (map!2927 rules!2550 lambda!53404))))))

(assert (=> bs!330272 (= (dynLambda!5810 lambda!53405 (h!18733 (map!2927 rules!2550 lambda!53404))) e!842934)))

(declare-fun b!1314823 () Bool)

(assert (=> b!1314823 (= e!842934 (matchR!1623 (h!18733 (map!2927 rules!2550 lambda!53404)) lt!433191))))

(assert (= (and bs!330272 res!590665) b!1314823))

(declare-fun m!1468157 () Bool)

(assert (=> bs!330272 m!1468157))

(declare-fun m!1468159 () Bool)

(assert (=> b!1314823 m!1468159))

(assert (=> b!1314738 d!370512))

(declare-fun b_lambda!37983 () Bool)

(assert (= b_lambda!37919 (or b!1314113 b_lambda!37983)))

(declare-fun bs!330273 () Bool)

(declare-fun d!370514 () Bool)

(assert (= bs!330273 (and d!370514 b!1314113)))

(assert (=> bs!330273 (= (dynLambda!5807 lambda!53406 lt!433366) (= (regex!2307 lt!433366) lt!433187))))

(assert (=> d!370360 d!370514))

(declare-fun b_lambda!37985 () Bool)

(assert (= b_lambda!37901 (or (and b!1314097 b_free!31685 (= (toChars!3389 (transformation!2307 (h!18731 rules!2550))) (toChars!3389 (transformation!2307 (rule!4048 t1!34))))) (and b!1314094 b_free!31689) (and b!1314088 b_free!31693 (= (toChars!3389 (transformation!2307 (rule!4048 t2!34))) (toChars!3389 (transformation!2307 (rule!4048 t1!34))))) (and b!1314820 b_free!31701 (= (toChars!3389 (transformation!2307 (h!18731 (t!118233 rules!2550)))) (toChars!3389 (transformation!2307 (rule!4048 t1!34))))) b_lambda!37985)))

(declare-fun b_lambda!37987 () Bool)

(assert (= b_lambda!37963 (or b!1314080 b_lambda!37987)))

(declare-fun bs!330274 () Bool)

(declare-fun d!370516 () Bool)

(assert (= bs!330274 (and d!370516 b!1314080)))

(assert (=> bs!330274 (= (dynLambda!5807 lambda!53407 lt!433179) (ruleValid!560 thiss!19762 lt!433179))))

(declare-fun m!1468161 () Bool)

(assert (=> bs!330274 m!1468161))

(assert (=> d!370480 d!370516))

(declare-fun b_lambda!37989 () Bool)

(assert (= b_lambda!37907 (or (and b!1314097 b_free!31685 (= (toChars!3389 (transformation!2307 (h!18731 rules!2550))) (toChars!3389 (transformation!2307 (rule!4048 t1!34))))) (and b!1314094 b_free!31689) (and b!1314088 b_free!31693 (= (toChars!3389 (transformation!2307 (rule!4048 t2!34))) (toChars!3389 (transformation!2307 (rule!4048 t1!34))))) (and b!1314820 b_free!31701 (= (toChars!3389 (transformation!2307 (h!18731 (t!118233 rules!2550)))) (toChars!3389 (transformation!2307 (rule!4048 t1!34))))) b_lambda!37989)))

(check-sat (not b!1314495) (not b!1314801) (not d!370446) (not b!1314435) (not d!370388) (not d!370308) (not b!1314221) (not b!1314364) (not d!370238) (not d!370356) (not b!1314743) (not b!1314322) (not b!1314762) (not b!1314295) (not b!1314437) (not b!1314752) (not b!1314740) (not d!370232) (not b!1314150) (not b_next!32393) (not b_next!32405) (not d!370306) b_and!87839 (not d!370294) (not b!1314496) (not b!1314742) (not d!370358) (not b_lambda!37971) (not bs!330268) (not b!1314765) (not d!370256) (not b!1314443) (not b!1314446) (not b!1314433) (not d!370240) (not b!1314217) (not b!1314316) (not d!370494) b_and!87843 (not b!1314703) b_and!87791 (not b_lambda!37979) (not b!1314750) (not b!1314156) (not bm!89370) (not b!1314660) (not b!1314347) (not b!1314781) (not d!370496) (not d!370348) (not b!1314654) (not b_lambda!37967) (not b!1314701) (not b!1314797) (not b!1314821) (not b_lambda!37989) (not b!1314500) (not b!1314758) b_and!87795 (not bs!330270) (not b!1314368) (not b_lambda!37965) (not d!370346) (not bm!89371) (not b!1314439) (not b!1314444) (not b_next!32391) (not d!370444) (not d!370464) (not d!370264) (not b!1314798) (not b!1314736) (not b!1314795) tp_is_empty!6623 (not b!1314696) (not b!1314809) (not b!1314432) (not b!1314456) (not b!1314799) (not d!370370) (not bs!330267) (not d!370320) (not b!1314436) (not d!370386) (not b!1314232) (not b!1314794) (not b!1314293) (not d!370260) (not d!370498) (not b!1314778) (not d!370292) (not b!1314662) (not b!1314434) (not b!1314244) (not b!1314766) (not b!1314655) (not d!370236) (not d!370470) (not d!370234) (not b!1314325) (not d!370456) (not d!370354) (not b!1314803) (not d!370316) b_and!87799 (not d!370318) (not b!1314442) (not d!370442) (not b!1314319) (not b!1314441) (not d!370298) (not b!1314367) (not d!370484) (not b!1314294) (not b!1314775) (not b!1314664) (not d!370252) (not b!1314774) (not d!370478) (not b!1314695) (not d!370284) (not b!1314448) (not b!1314245) (not b!1314802) (not b!1314767) (not b!1314161) (not bs!330272) (not b!1314818) (not b!1314447) (not b!1314819) (not b!1314793) (not d!370326) (not b_lambda!37981) (not b_next!32389) (not b!1314741) (not b_next!32395) (not b!1314706) (not bm!89378) (not d!370286) (not b!1314246) (not d!370452) (not b!1314716) (not b!1314777) (not b_lambda!37973) (not b!1314764) (not d!370448) (not bs!330266) (not b_lambda!37985) (not tb!69853) b_and!87857 (not b!1314771) (not d!370486) (not b!1314657) (not d!370474) (not b_next!32387) (not d!370462) (not b!1314445) (not b!1314218) (not b!1314438) (not d!370282) (not b_lambda!37987) (not d!370480) (not b_lambda!37975) (not b!1314694) (not b!1314321) b_and!87855 (not b!1314320) (not d!370490) (not d!370454) (not b!1314769) b_and!87841 (not tb!69859) (not d!370458) (not d!370312) (not d!370488) (not d!370360) (not b!1314761) (not b!1314353) (not d!370482) (not b_next!32403) (not b!1314749) (not b!1314450) (not b!1314233) (not b!1314744) (not d!370230) (not d!370290) (not b_lambda!37969) (not b!1314822) (not d!370468) (not b!1314739) (not b!1314722) (not b!1314653) (not b!1314341) (not b_lambda!37983) (not b!1314770) (not b_lambda!37977) (not d!370450) (not b!1314354) (not b_next!32397) (not b!1314823) (not d!370440) (not bs!330274) (not b!1314340) (not d!370352) (not b!1314808))
(check-sat (not b_next!32393) b_and!87795 (not b_next!32391) b_and!87799 b_and!87857 (not b_next!32387) b_and!87855 b_and!87841 (not b_next!32403) (not b_next!32397) (not b_next!32405) b_and!87839 b_and!87791 b_and!87843 (not b_next!32389) (not b_next!32395))
