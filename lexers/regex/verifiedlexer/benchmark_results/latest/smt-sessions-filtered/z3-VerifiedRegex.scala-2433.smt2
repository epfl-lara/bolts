; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128050 () Bool)

(assert start!128050)

(declare-fun b!1404341 () Bool)

(declare-fun b_free!34251 () Bool)

(declare-fun b_next!34955 () Bool)

(assert (=> b!1404341 (= b_free!34251 (not b_next!34955))))

(declare-fun tp!399181 () Bool)

(declare-fun b_and!94027 () Bool)

(assert (=> b!1404341 (= tp!399181 b_and!94027)))

(declare-fun b_free!34253 () Bool)

(declare-fun b_next!34957 () Bool)

(assert (=> b!1404341 (= b_free!34253 (not b_next!34957))))

(declare-fun tp!399185 () Bool)

(declare-fun b_and!94029 () Bool)

(assert (=> b!1404341 (= tp!399185 b_and!94029)))

(declare-fun b!1404326 () Bool)

(declare-fun b_free!34255 () Bool)

(declare-fun b_next!34959 () Bool)

(assert (=> b!1404326 (= b_free!34255 (not b_next!34959))))

(declare-fun tp!399186 () Bool)

(declare-fun b_and!94031 () Bool)

(assert (=> b!1404326 (= tp!399186 b_and!94031)))

(declare-fun b_free!34257 () Bool)

(declare-fun b_next!34961 () Bool)

(assert (=> b!1404326 (= b_free!34257 (not b_next!34961))))

(declare-fun tp!399187 () Bool)

(declare-fun b_and!94033 () Bool)

(assert (=> b!1404326 (= tp!399187 b_and!94033)))

(declare-fun b!1404304 () Bool)

(declare-fun b_free!34259 () Bool)

(declare-fun b_next!34963 () Bool)

(assert (=> b!1404304 (= b_free!34259 (not b_next!34963))))

(declare-fun tp!399180 () Bool)

(declare-fun b_and!94035 () Bool)

(assert (=> b!1404304 (= tp!399180 b_and!94035)))

(declare-fun b_free!34261 () Bool)

(declare-fun b_next!34965 () Bool)

(assert (=> b!1404304 (= b_free!34261 (not b_next!34965))))

(declare-fun tp!399184 () Bool)

(declare-fun b_and!94037 () Bool)

(assert (=> b!1404304 (= tp!399184 b_and!94037)))

(declare-fun b!1404321 () Bool)

(assert (=> b!1404321 true))

(assert (=> b!1404321 true))

(declare-fun b!1404305 () Bool)

(assert (=> b!1404305 true))

(declare-fun b!1404317 () Bool)

(assert (=> b!1404317 true))

(declare-fun bs!338430 () Bool)

(declare-fun b!1404311 () Bool)

(assert (= bs!338430 (and b!1404311 b!1404317)))

(declare-fun lambda!61785 () Int)

(declare-fun lambda!61784 () Int)

(assert (=> bs!338430 (not (= lambda!61785 lambda!61784))))

(assert (=> b!1404311 true))

(declare-fun b!1404300 () Bool)

(declare-fun res!635505 () Bool)

(declare-fun e!896535 () Bool)

(assert (=> b!1404300 (=> res!635505 e!896535)))

(declare-datatypes ((C!7868 0))(
  ( (C!7869 (val!4494 Int)) )
))
(declare-datatypes ((List!14350 0))(
  ( (Nil!14284) (Cons!14284 (h!19685 C!7868) (t!122983 List!14350)) )
))
(declare-fun lt!468480 () List!14350)

(declare-fun lt!468482 () C!7868)

(declare-fun contains!2807 (List!14350 C!7868) Bool)

(assert (=> b!1404300 (= res!635505 (not (contains!2807 lt!468480 lt!468482)))))

(declare-fun b!1404301 () Bool)

(declare-fun res!635487 () Bool)

(declare-fun e!896564 () Bool)

(assert (=> b!1404301 (=> res!635487 e!896564)))

(declare-datatypes ((LexerInterface!2170 0))(
  ( (LexerInterfaceExt!2167 (__x!8959 Int)) (Lexer!2168) )
))
(declare-fun thiss!19762 () LexerInterface!2170)

(declare-fun lt!468463 () List!14350)

(declare-datatypes ((List!14351 0))(
  ( (Nil!14285) (Cons!14285 (h!19686 (_ BitVec 16)) (t!122984 List!14351)) )
))
(declare-datatypes ((TokenValue!2565 0))(
  ( (FloatLiteralValue!5130 (text!18400 List!14351)) (TokenValueExt!2564 (__x!8960 Int)) (Broken!12825 (value!80144 List!14351)) (Object!2630) (End!2565) (Def!2565) (Underscore!2565) (Match!2565) (Else!2565) (Error!2565) (Case!2565) (If!2565) (Extends!2565) (Abstract!2565) (Class!2565) (Val!2565) (DelimiterValue!5130 (del!2625 List!14351)) (KeywordValue!2571 (value!80145 List!14351)) (CommentValue!5130 (value!80146 List!14351)) (WhitespaceValue!5130 (value!80147 List!14351)) (IndentationValue!2565 (value!80148 List!14351)) (String!17060) (Int32!2565) (Broken!12826 (value!80149 List!14351)) (Boolean!2566) (Unit!20632) (OperatorValue!2568 (op!2625 List!14351)) (IdentifierValue!5130 (value!80150 List!14351)) (IdentifierValue!5131 (value!80151 List!14351)) (WhitespaceValue!5131 (value!80152 List!14351)) (True!5130) (False!5130) (Broken!12827 (value!80153 List!14351)) (Broken!12828 (value!80154 List!14351)) (True!5131) (RightBrace!2565) (RightBracket!2565) (Colon!2565) (Null!2565) (Comma!2565) (LeftBracket!2565) (False!5131) (LeftBrace!2565) (ImaginaryLiteralValue!2565 (text!18401 List!14351)) (StringLiteralValue!7695 (value!80155 List!14351)) (EOFValue!2565 (value!80156 List!14351)) (IdentValue!2565 (value!80157 List!14351)) (DelimiterValue!5131 (value!80158 List!14351)) (DedentValue!2565 (value!80159 List!14351)) (NewLineValue!2565 (value!80160 List!14351)) (IntegerValue!7695 (value!80161 (_ BitVec 32)) (text!18402 List!14351)) (IntegerValue!7696 (value!80162 Int) (text!18403 List!14351)) (Times!2565) (Or!2565) (Equal!2565) (Minus!2565) (Broken!12829 (value!80163 List!14351)) (And!2565) (Div!2565) (LessEqual!2565) (Mod!2565) (Concat!6354) (Not!2565) (Plus!2565) (SpaceValue!2565 (value!80164 List!14351)) (IntegerValue!7697 (value!80165 Int) (text!18404 List!14351)) (StringLiteralValue!7696 (text!18405 List!14351)) (FloatLiteralValue!5131 (text!18406 List!14351)) (BytesLiteralValue!2565 (value!80166 List!14351)) (CommentValue!5131 (value!80167 List!14351)) (StringLiteralValue!7697 (value!80168 List!14351)) (ErrorTokenValue!2565 (msg!2626 List!14351)) )
))
(declare-datatypes ((IArray!9425 0))(
  ( (IArray!9426 (innerList!4770 List!14350)) )
))
(declare-datatypes ((Conc!4710 0))(
  ( (Node!4710 (left!12197 Conc!4710) (right!12527 Conc!4710) (csize!9650 Int) (cheight!4921 Int)) (Leaf!7144 (xs!7437 IArray!9425) (csize!9651 Int)) (Empty!4710) )
))
(declare-datatypes ((BalanceConc!9360 0))(
  ( (BalanceConc!9361 (c!230964 Conc!4710)) )
))
(declare-datatypes ((Regex!3789 0))(
  ( (ElementMatch!3789 (c!230965 C!7868)) (Concat!6355 (regOne!8090 Regex!3789) (regTwo!8090 Regex!3789)) (EmptyExpr!3789) (Star!3789 (reg!4118 Regex!3789)) (EmptyLang!3789) (Union!3789 (regOne!8091 Regex!3789) (regTwo!8091 Regex!3789)) )
))
(declare-datatypes ((String!17061 0))(
  ( (String!17062 (value!80169 String)) )
))
(declare-datatypes ((TokenValueInjection!4790 0))(
  ( (TokenValueInjection!4791 (toValue!3766 Int) (toChars!3625 Int)) )
))
(declare-datatypes ((Rule!4750 0))(
  ( (Rule!4751 (regex!2475 Regex!3789) (tag!2737 String!17061) (isSeparator!2475 Bool) (transformation!2475 TokenValueInjection!4790)) )
))
(declare-datatypes ((List!14352 0))(
  ( (Nil!14286) (Cons!14286 (h!19687 Rule!4750) (t!122985 List!14352)) )
))
(declare-fun rules!2550 () List!14352)

(declare-datatypes ((Token!4612 0))(
  ( (Token!4613 (value!80170 TokenValue!2565) (rule!4238 Rule!4750) (size!11757 Int) (originalCharacters!3337 List!14350)) )
))
(declare-fun t1!34 () Token!4612)

(declare-datatypes ((tuple2!13910 0))(
  ( (tuple2!13911 (_1!7841 Token!4612) (_2!7841 List!14350)) )
))
(declare-datatypes ((Option!2738 0))(
  ( (None!2737) (Some!2737 (v!21689 tuple2!13910)) )
))
(declare-fun maxPrefix!1144 (LexerInterface!2170 List!14352 List!14350) Option!2738)

(assert (=> b!1404301 (= res!635487 (not (= (maxPrefix!1144 thiss!19762 rules!2550 lt!468463) (Some!2737 (tuple2!13911 t1!34 Nil!14284)))))))

(declare-fun b!1404302 () Bool)

(declare-fun res!635479 () Bool)

(declare-fun e!896541 () Bool)

(assert (=> b!1404302 (=> (not res!635479) (not e!896541))))

(declare-fun t2!34 () Token!4612)

(declare-fun rulesProduceIndividualToken!1139 (LexerInterface!2170 List!14352 Token!4612) Bool)

(assert (=> b!1404302 (= res!635479 (rulesProduceIndividualToken!1139 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1404303 () Bool)

(declare-fun res!635499 () Bool)

(assert (=> b!1404303 (=> res!635499 e!896535)))

(declare-fun lt!468473 () Regex!3789)

(declare-fun matchR!1780 (Regex!3789 List!14350) Bool)

(assert (=> b!1404303 (= res!635499 (not (matchR!1780 lt!468473 lt!468480)))))

(declare-fun e!896559 () Bool)

(assert (=> b!1404304 (= e!896559 (and tp!399180 tp!399184))))

(declare-fun res!635489 () Bool)

(assert (=> start!128050 (=> (not res!635489) (not e!896541))))

(get-info :version)

(assert (=> start!128050 (= res!635489 ((_ is Lexer!2168) thiss!19762))))

(assert (=> start!128050 e!896541))

(assert (=> start!128050 true))

(declare-fun e!896539 () Bool)

(assert (=> start!128050 e!896539))

(declare-fun e!896534 () Bool)

(declare-fun inv!18593 (Token!4612) Bool)

(assert (=> start!128050 (and (inv!18593 t1!34) e!896534)))

(declare-fun e!896538 () Bool)

(assert (=> start!128050 (and (inv!18593 t2!34) e!896538)))

(declare-fun e!896537 () Bool)

(assert (=> b!1404305 (= e!896535 e!896537)))

(declare-fun res!635486 () Bool)

(assert (=> b!1404305 (=> res!635486 e!896537)))

(declare-fun lambda!61783 () Int)

(declare-fun lambda!61782 () Int)

(declare-datatypes ((List!14353 0))(
  ( (Nil!14287) (Cons!14287 (h!19688 Regex!3789) (t!122986 List!14353)) )
))
(declare-fun exists!594 (List!14353 Int) Bool)

(declare-fun map!3173 (List!14352 Int) List!14353)

(assert (=> b!1404305 (= res!635486 (not (exists!594 (map!3173 rules!2550 lambda!61782) lambda!61783)))))

(declare-fun lt!468478 () List!14353)

(assert (=> b!1404305 (exists!594 lt!468478 lambda!61783)))

(declare-datatypes ((Unit!20633 0))(
  ( (Unit!20634) )
))
(declare-fun lt!468469 () Unit!20633)

(declare-fun matchRGenUnionSpec!200 (Regex!3789 List!14353 List!14350) Unit!20633)

(assert (=> b!1404305 (= lt!468469 (matchRGenUnionSpec!200 lt!468473 lt!468478 lt!468480))))

(assert (=> b!1404305 (= lt!468478 (map!3173 rules!2550 lambda!61782))))

(declare-fun b!1404306 () Bool)

(declare-fun res!635500 () Bool)

(declare-fun e!896540 () Bool)

(assert (=> b!1404306 (=> res!635500 e!896540)))

(declare-fun lt!468487 () List!14350)

(assert (=> b!1404306 (= res!635500 (not (matchR!1780 (regex!2475 (rule!4238 t2!34)) lt!468487)))))

(declare-fun b!1404307 () Bool)

(declare-fun e!896542 () Bool)

(assert (=> b!1404307 (= e!896542 e!896535)))

(declare-fun res!635495 () Bool)

(assert (=> b!1404307 (=> res!635495 e!896535)))

(declare-fun lt!468464 () List!14350)

(declare-fun lt!468490 () C!7868)

(assert (=> b!1404307 (= res!635495 (not (contains!2807 lt!468464 lt!468490)))))

(declare-fun lt!468462 () BalanceConc!9360)

(declare-fun apply!3651 (BalanceConc!9360 Int) C!7868)

(assert (=> b!1404307 (= lt!468490 (apply!3651 lt!468462 0))))

(declare-fun b!1404308 () Bool)

(declare-fun e!896548 () Bool)

(assert (=> b!1404308 (= e!896564 e!896548)))

(declare-fun res!635483 () Bool)

(assert (=> b!1404308 (=> res!635483 e!896548)))

(declare-datatypes ((List!14354 0))(
  ( (Nil!14288) (Cons!14288 (h!19689 Token!4612) (t!122987 List!14354)) )
))
(declare-datatypes ((IArray!9427 0))(
  ( (IArray!9428 (innerList!4771 List!14354)) )
))
(declare-datatypes ((Conc!4711 0))(
  ( (Node!4711 (left!12198 Conc!4711) (right!12528 Conc!4711) (csize!9652 Int) (cheight!4922 Int)) (Leaf!7145 (xs!7438 IArray!9427) (csize!9653 Int)) (Empty!4711) )
))
(declare-datatypes ((BalanceConc!9362 0))(
  ( (BalanceConc!9363 (c!230966 Conc!4711)) )
))
(declare-datatypes ((tuple2!13912 0))(
  ( (tuple2!13913 (_1!7842 BalanceConc!9362) (_2!7842 BalanceConc!9360)) )
))
(declare-fun lt!468467 () tuple2!13912)

(declare-fun lt!468489 () List!14354)

(declare-fun list!5577 (BalanceConc!9362) List!14354)

(assert (=> b!1404308 (= res!635483 (not (= (list!5577 (_1!7842 lt!468467)) lt!468489)))))

(assert (=> b!1404308 (= lt!468489 (Cons!14288 t2!34 Nil!14288))))

(declare-fun lt!468471 () BalanceConc!9360)

(declare-fun lex!995 (LexerInterface!2170 List!14352 BalanceConc!9360) tuple2!13912)

(assert (=> b!1404308 (= lt!468467 (lex!995 thiss!19762 rules!2550 lt!468471))))

(declare-fun print!934 (LexerInterface!2170 BalanceConc!9362) BalanceConc!9360)

(declare-fun singletonSeq!1140 (Token!4612) BalanceConc!9362)

(assert (=> b!1404308 (= lt!468471 (print!934 thiss!19762 (singletonSeq!1140 t2!34)))))

(declare-fun b!1404309 () Bool)

(declare-fun e!896563 () Bool)

(assert (=> b!1404309 (= e!896563 e!896542)))

(declare-fun res!635507 () Bool)

(assert (=> b!1404309 (=> res!635507 e!896542)))

(declare-fun ++!3716 (List!14350 List!14350) List!14350)

(declare-fun getSuffix!635 (List!14350 List!14350) List!14350)

(assert (=> b!1404309 (= res!635507 (not (= lt!468480 (++!3716 lt!468464 (getSuffix!635 lt!468480 lt!468464)))))))

(declare-fun lambda!61781 () Int)

(declare-fun pickWitness!242 (Int) List!14350)

(assert (=> b!1404309 (= lt!468480 (pickWitness!242 lambda!61781))))

(declare-fun b!1404310 () Bool)

(declare-fun e!896549 () Unit!20633)

(declare-fun Unit!20635 () Unit!20633)

(assert (=> b!1404310 (= e!896549 Unit!20635)))

(declare-fun e!896536 () Bool)

(assert (=> b!1404311 (= e!896536 e!896540)))

(declare-fun res!635485 () Bool)

(assert (=> b!1404311 (=> res!635485 e!896540)))

(assert (=> b!1404311 (= res!635485 (not (matchR!1780 (regex!2475 (rule!4238 t1!34)) lt!468463)))))

(declare-fun lt!468466 () Unit!20633)

(declare-fun forallContained!670 (List!14352 Int Rule!4750) Unit!20633)

(assert (=> b!1404311 (= lt!468466 (forallContained!670 rules!2550 lambda!61785 (rule!4238 t2!34)))))

(declare-fun lt!468468 () Unit!20633)

(assert (=> b!1404311 (= lt!468468 (forallContained!670 rules!2550 lambda!61785 (rule!4238 t1!34)))))

(declare-fun lt!468479 () Unit!20633)

(declare-fun lt!468483 () Rule!4750)

(assert (=> b!1404311 (= lt!468479 (forallContained!670 rules!2550 lambda!61785 lt!468483))))

(declare-fun b!1404312 () Bool)

(declare-fun res!635508 () Bool)

(assert (=> b!1404312 (=> res!635508 e!896535)))

(assert (=> b!1404312 (= res!635508 (not (contains!2807 lt!468480 lt!468490)))))

(declare-fun b!1404313 () Bool)

(declare-fun e!896552 () Unit!20633)

(declare-fun Unit!20636 () Unit!20633)

(assert (=> b!1404313 (= e!896552 Unit!20636)))

(declare-fun b!1404314 () Bool)

(declare-fun res!635496 () Bool)

(assert (=> b!1404314 (=> (not res!635496) (not e!896541))))

(declare-fun isEmpty!8694 (List!14352) Bool)

(assert (=> b!1404314 (= res!635496 (not (isEmpty!8694 rules!2550)))))

(declare-fun b!1404315 () Bool)

(declare-fun e!896553 () Bool)

(assert (=> b!1404315 (= e!896537 e!896553)))

(declare-fun res!635504 () Bool)

(assert (=> b!1404315 (=> res!635504 e!896553)))

(declare-fun lt!468474 () Regex!3789)

(declare-fun contains!2808 (List!14353 Regex!3789) Bool)

(assert (=> b!1404315 (= res!635504 (not (contains!2808 (map!3173 rules!2550 lambda!61782) lt!468474)))))

(declare-fun getWitness!482 (List!14353 Int) Regex!3789)

(assert (=> b!1404315 (= lt!468474 (getWitness!482 (map!3173 rules!2550 lambda!61782) lambda!61783))))

(declare-fun e!896556 () Bool)

(declare-fun b!1404316 () Bool)

(assert (=> b!1404316 (= e!896556 (or (isSeparator!2475 lt!468483) (isSeparator!2475 (rule!4238 t1!34)) (isSeparator!2475 (rule!4238 t2!34))))))

(assert (=> b!1404316 (= (regex!2475 lt!468483) lt!468474)))

(declare-fun e!896550 () Bool)

(assert (=> b!1404317 (= e!896553 e!896550)))

(declare-fun res!635501 () Bool)

(assert (=> b!1404317 (=> res!635501 e!896550)))

(declare-fun exists!595 (List!14352 Int) Bool)

(assert (=> b!1404317 (= res!635501 (not (exists!595 rules!2550 lambda!61784)))))

(assert (=> b!1404317 (exists!595 rules!2550 lambda!61784)))

(declare-fun lt!468470 () Unit!20633)

(declare-fun lemmaMapContains!186 (List!14352 Int Regex!3789) Unit!20633)

(assert (=> b!1404317 (= lt!468470 (lemmaMapContains!186 rules!2550 lambda!61782 lt!468474))))

(declare-fun b!1404318 () Bool)

(declare-fun e!896562 () Bool)

(assert (=> b!1404318 (= e!896562 e!896556)))

(declare-fun res!635480 () Bool)

(assert (=> b!1404318 (=> res!635480 e!896556)))

(declare-fun lt!468484 () Bool)

(assert (=> b!1404318 (= res!635480 lt!468484)))

(declare-fun lt!468472 () Unit!20633)

(assert (=> b!1404318 (= lt!468472 e!896552)))

(declare-fun c!230963 () Bool)

(assert (=> b!1404318 (= c!230963 lt!468484)))

(declare-fun usedCharacters!286 (Regex!3789) List!14350)

(assert (=> b!1404318 (= lt!468484 (not (contains!2807 (usedCharacters!286 (regex!2475 (rule!4238 t2!34))) lt!468482)))))

(declare-fun b!1404319 () Bool)

(declare-fun res!635494 () Bool)

(assert (=> b!1404319 (=> res!635494 e!896536)))

(declare-fun contains!2809 (List!14352 Rule!4750) Bool)

(assert (=> b!1404319 (= res!635494 (not (contains!2809 rules!2550 lt!468483)))))

(declare-fun b!1404320 () Bool)

(declare-fun res!635477 () Bool)

(assert (=> b!1404320 (=> res!635477 e!896564)))

(assert (=> b!1404320 (= res!635477 (not (contains!2809 rules!2550 (rule!4238 t1!34))))))

(declare-fun e!896558 () Bool)

(assert (=> b!1404321 (= e!896558 (not e!896563))))

(declare-fun res!635493 () Bool)

(assert (=> b!1404321 (=> res!635493 e!896563)))

(declare-fun Exists!939 (Int) Bool)

(assert (=> b!1404321 (= res!635493 (not (Exists!939 lambda!61781)))))

(assert (=> b!1404321 (Exists!939 lambda!61781)))

(declare-fun lt!468486 () Unit!20633)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!257 (Regex!3789 List!14350) Unit!20633)

(assert (=> b!1404321 (= lt!468486 (lemmaPrefixMatchThenExistsStringThatMatches!257 lt!468473 lt!468464))))

(declare-fun e!896554 () Bool)

(declare-fun tp!399179 () Bool)

(declare-fun b!1404322 () Bool)

(declare-fun e!896543 () Bool)

(declare-fun inv!18590 (String!17061) Bool)

(declare-fun inv!18594 (TokenValueInjection!4790) Bool)

(assert (=> b!1404322 (= e!896543 (and tp!399179 (inv!18590 (tag!2737 (rule!4238 t1!34))) (inv!18594 (transformation!2475 (rule!4238 t1!34))) e!896554))))

(declare-fun b!1404323 () Bool)

(declare-fun e!896545 () Bool)

(declare-fun tp!399188 () Bool)

(declare-fun inv!21 (TokenValue!2565) Bool)

(assert (=> b!1404323 (= e!896538 (and (inv!21 (value!80170 t2!34)) e!896545 tp!399188))))

(declare-fun e!896557 () Bool)

(declare-fun tp!399183 () Bool)

(declare-fun b!1404324 () Bool)

(assert (=> b!1404324 (= e!896557 (and tp!399183 (inv!18590 (tag!2737 (h!19687 rules!2550))) (inv!18594 (transformation!2475 (h!19687 rules!2550))) e!896559))))

(declare-fun b!1404325 () Bool)

(declare-fun res!635488 () Bool)

(assert (=> b!1404325 (=> res!635488 e!896564)))

(declare-fun lt!468488 () List!14354)

(declare-fun lt!468475 () BalanceConc!9360)

(declare-datatypes ((tuple2!13914 0))(
  ( (tuple2!13915 (_1!7843 List!14354) (_2!7843 List!14350)) )
))
(declare-fun lexList!684 (LexerInterface!2170 List!14352 List!14350) tuple2!13914)

(declare-fun list!5578 (BalanceConc!9360) List!14350)

(assert (=> b!1404325 (= res!635488 (not (= (lexList!684 thiss!19762 rules!2550 (list!5578 lt!468475)) (tuple2!13915 lt!468488 Nil!14284))))))

(assert (=> b!1404326 (= e!896554 (and tp!399186 tp!399187))))

(declare-fun b!1404327 () Bool)

(assert (=> b!1404327 (= e!896548 e!896536)))

(declare-fun res!635482 () Bool)

(assert (=> b!1404327 (=> res!635482 e!896536)))

(assert (=> b!1404327 (= res!635482 (not (= (maxPrefix!1144 thiss!19762 rules!2550 lt!468487) (Some!2737 (tuple2!13911 t2!34 Nil!14284)))))))

(declare-fun lt!468476 () BalanceConc!9360)

(assert (=> b!1404327 (= lt!468487 (list!5578 lt!468476))))

(declare-fun b!1404328 () Bool)

(declare-fun e!896560 () Bool)

(assert (=> b!1404328 (= e!896541 e!896560)))

(declare-fun res!635491 () Bool)

(assert (=> b!1404328 (=> (not res!635491) (not e!896560))))

(declare-fun size!11758 (BalanceConc!9360) Int)

(assert (=> b!1404328 (= res!635491 (> (size!11758 lt!468476) 0))))

(declare-fun charsOf!1447 (Token!4612) BalanceConc!9360)

(assert (=> b!1404328 (= lt!468476 (charsOf!1447 t2!34))))

(declare-fun b!1404329 () Bool)

(assert (=> b!1404329 (= e!896560 e!896558)))

(declare-fun res!635509 () Bool)

(assert (=> b!1404329 (=> (not res!635509) (not e!896558))))

(declare-fun prefixMatch!298 (Regex!3789 List!14350) Bool)

(assert (=> b!1404329 (= res!635509 (prefixMatch!298 lt!468473 lt!468464))))

(declare-fun rulesRegex!358 (LexerInterface!2170 List!14352) Regex!3789)

(assert (=> b!1404329 (= lt!468473 (rulesRegex!358 thiss!19762 rules!2550))))

(assert (=> b!1404329 (= lt!468464 (++!3716 lt!468463 (Cons!14284 lt!468482 Nil!14284)))))

(assert (=> b!1404329 (= lt!468482 (apply!3651 lt!468476 0))))

(assert (=> b!1404329 (= lt!468463 (list!5578 lt!468462))))

(assert (=> b!1404329 (= lt!468462 (charsOf!1447 t1!34))))

(declare-fun b!1404330 () Bool)

(declare-fun res!635492 () Bool)

(assert (=> b!1404330 (=> (not res!635492) (not e!896541))))

(declare-fun rulesInvariant!2040 (LexerInterface!2170 List!14352) Bool)

(assert (=> b!1404330 (= res!635492 (rulesInvariant!2040 thiss!19762 rules!2550))))

(declare-fun b!1404331 () Bool)

(declare-fun res!635498 () Bool)

(assert (=> b!1404331 (=> res!635498 e!896548)))

(assert (=> b!1404331 (= res!635498 (not (= (lexList!684 thiss!19762 rules!2550 (list!5578 lt!468471)) (tuple2!13915 lt!468489 Nil!14284))))))

(declare-fun b!1404332 () Bool)

(declare-fun res!635475 () Bool)

(assert (=> b!1404332 (=> (not res!635475) (not e!896541))))

(assert (=> b!1404332 (= res!635475 (rulesProduceIndividualToken!1139 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1404333 () Bool)

(assert (=> b!1404333 (= e!896550 e!896564)))

(declare-fun res!635503 () Bool)

(assert (=> b!1404333 (=> res!635503 e!896564)))

(declare-fun lt!468481 () tuple2!13912)

(assert (=> b!1404333 (= res!635503 (not (= (list!5577 (_1!7842 lt!468481)) lt!468488)))))

(assert (=> b!1404333 (= lt!468488 (Cons!14288 t1!34 Nil!14288))))

(assert (=> b!1404333 (= lt!468481 (lex!995 thiss!19762 rules!2550 lt!468475))))

(assert (=> b!1404333 (= lt!468475 (print!934 thiss!19762 (singletonSeq!1140 t1!34)))))

(declare-fun getWitness!483 (List!14352 Int) Rule!4750)

(assert (=> b!1404333 (= lt!468483 (getWitness!483 rules!2550 lambda!61784))))

(declare-fun e!896547 () Bool)

(declare-fun b!1404334 () Bool)

(declare-fun tp!399182 () Bool)

(assert (=> b!1404334 (= e!896545 (and tp!399182 (inv!18590 (tag!2737 (rule!4238 t2!34))) (inv!18594 (transformation!2475 (rule!4238 t2!34))) e!896547))))

(declare-fun b!1404335 () Bool)

(declare-fun res!635478 () Bool)

(assert (=> b!1404335 (=> res!635478 e!896564)))

(declare-fun isEmpty!8695 (BalanceConc!9360) Bool)

(assert (=> b!1404335 (= res!635478 (not (isEmpty!8695 (_2!7842 lt!468481))))))

(declare-fun b!1404336 () Bool)

(declare-fun tp!399189 () Bool)

(assert (=> b!1404336 (= e!896539 (and e!896557 tp!399189))))

(declare-fun b!1404337 () Bool)

(declare-fun res!635497 () Bool)

(assert (=> b!1404337 (=> res!635497 e!896535)))

(assert (=> b!1404337 (= res!635497 (not (contains!2807 lt!468464 lt!468482)))))

(declare-fun b!1404338 () Bool)

(declare-fun Unit!20637 () Unit!20633)

(assert (=> b!1404338 (= e!896549 Unit!20637)))

(declare-fun lt!468485 () Unit!20633)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!220 (Regex!3789 List!14350 C!7868) Unit!20633)

(declare-fun head!2609 (List!14350) C!7868)

(assert (=> b!1404338 (= lt!468485 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!220 (regex!2475 (rule!4238 t1!34)) lt!468463 (head!2609 lt!468463)))))

(assert (=> b!1404338 false))

(declare-fun b!1404339 () Bool)

(declare-fun res!635481 () Bool)

(assert (=> b!1404339 (=> res!635481 e!896536)))

(assert (=> b!1404339 (= res!635481 (not (contains!2809 rules!2550 (rule!4238 t2!34))))))

(declare-fun b!1404340 () Bool)

(assert (=> b!1404340 (= e!896540 e!896562)))

(declare-fun res!635476 () Bool)

(assert (=> b!1404340 (=> res!635476 e!896562)))

(declare-fun lt!468461 () Bool)

(assert (=> b!1404340 (= res!635476 lt!468461)))

(declare-fun lt!468465 () Unit!20633)

(assert (=> b!1404340 (= lt!468465 e!896549)))

(declare-fun c!230962 () Bool)

(assert (=> b!1404340 (= c!230962 lt!468461)))

(assert (=> b!1404340 (= lt!468461 (not (contains!2807 (usedCharacters!286 (regex!2475 (rule!4238 t1!34))) lt!468490)))))

(assert (=> b!1404341 (= e!896547 (and tp!399181 tp!399185))))

(declare-fun b!1404342 () Bool)

(declare-fun res!635506 () Bool)

(assert (=> b!1404342 (=> (not res!635506) (not e!896541))))

(assert (=> b!1404342 (= res!635506 (not (= (isSeparator!2475 (rule!4238 t1!34)) (isSeparator!2475 (rule!4238 t2!34)))))))

(declare-fun b!1404343 () Bool)

(declare-fun res!635484 () Bool)

(assert (=> b!1404343 (=> (not res!635484) (not e!896560))))

(declare-fun separableTokensPredicate!453 (LexerInterface!2170 Token!4612 Token!4612 List!14352) Bool)

(assert (=> b!1404343 (= res!635484 (not (separableTokensPredicate!453 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1404344 () Bool)

(declare-fun Unit!20638 () Unit!20633)

(assert (=> b!1404344 (= e!896552 Unit!20638)))

(declare-fun lt!468477 () Unit!20633)

(assert (=> b!1404344 (= lt!468477 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!220 (regex!2475 (rule!4238 t2!34)) lt!468487 (head!2609 lt!468487)))))

(assert (=> b!1404344 false))

(declare-fun tp!399190 () Bool)

(declare-fun b!1404345 () Bool)

(assert (=> b!1404345 (= e!896534 (and (inv!21 (value!80170 t1!34)) e!896543 tp!399190))))

(declare-fun b!1404346 () Bool)

(declare-fun res!635490 () Bool)

(assert (=> b!1404346 (=> res!635490 e!896548)))

(assert (=> b!1404346 (= res!635490 (not (isEmpty!8695 (_2!7842 lt!468467))))))

(declare-fun b!1404347 () Bool)

(declare-fun res!635502 () Bool)

(assert (=> b!1404347 (=> (not res!635502) (not e!896560))))

(declare-fun sepAndNonSepRulesDisjointChars!848 (List!14352 List!14352) Bool)

(assert (=> b!1404347 (= res!635502 (sepAndNonSepRulesDisjointChars!848 rules!2550 rules!2550))))

(assert (= (and start!128050 res!635489) b!1404314))

(assert (= (and b!1404314 res!635496) b!1404330))

(assert (= (and b!1404330 res!635492) b!1404332))

(assert (= (and b!1404332 res!635475) b!1404302))

(assert (= (and b!1404302 res!635479) b!1404342))

(assert (= (and b!1404342 res!635506) b!1404328))

(assert (= (and b!1404328 res!635491) b!1404347))

(assert (= (and b!1404347 res!635502) b!1404343))

(assert (= (and b!1404343 res!635484) b!1404329))

(assert (= (and b!1404329 res!635509) b!1404321))

(assert (= (and b!1404321 (not res!635493)) b!1404309))

(assert (= (and b!1404309 (not res!635507)) b!1404307))

(assert (= (and b!1404307 (not res!635495)) b!1404312))

(assert (= (and b!1404312 (not res!635508)) b!1404337))

(assert (= (and b!1404337 (not res!635497)) b!1404300))

(assert (= (and b!1404300 (not res!635505)) b!1404303))

(assert (= (and b!1404303 (not res!635499)) b!1404305))

(assert (= (and b!1404305 (not res!635486)) b!1404315))

(assert (= (and b!1404315 (not res!635504)) b!1404317))

(assert (= (and b!1404317 (not res!635501)) b!1404333))

(assert (= (and b!1404333 (not res!635503)) b!1404335))

(assert (= (and b!1404335 (not res!635478)) b!1404325))

(assert (= (and b!1404325 (not res!635488)) b!1404301))

(assert (= (and b!1404301 (not res!635487)) b!1404320))

(assert (= (and b!1404320 (not res!635477)) b!1404308))

(assert (= (and b!1404308 (not res!635483)) b!1404346))

(assert (= (and b!1404346 (not res!635490)) b!1404331))

(assert (= (and b!1404331 (not res!635498)) b!1404327))

(assert (= (and b!1404327 (not res!635482)) b!1404339))

(assert (= (and b!1404339 (not res!635481)) b!1404319))

(assert (= (and b!1404319 (not res!635494)) b!1404311))

(assert (= (and b!1404311 (not res!635485)) b!1404306))

(assert (= (and b!1404306 (not res!635500)) b!1404340))

(assert (= (and b!1404340 c!230962) b!1404338))

(assert (= (and b!1404340 (not c!230962)) b!1404310))

(assert (= (and b!1404340 (not res!635476)) b!1404318))

(assert (= (and b!1404318 c!230963) b!1404344))

(assert (= (and b!1404318 (not c!230963)) b!1404313))

(assert (= (and b!1404318 (not res!635480)) b!1404316))

(assert (= b!1404324 b!1404304))

(assert (= b!1404336 b!1404324))

(assert (= (and start!128050 ((_ is Cons!14286) rules!2550)) b!1404336))

(assert (= b!1404322 b!1404326))

(assert (= b!1404345 b!1404322))

(assert (= start!128050 b!1404345))

(assert (= b!1404334 b!1404341))

(assert (= b!1404323 b!1404334))

(assert (= start!128050 b!1404323))

(declare-fun m!1581693 () Bool)

(assert (=> b!1404302 m!1581693))

(declare-fun m!1581695 () Bool)

(assert (=> b!1404317 m!1581695))

(assert (=> b!1404317 m!1581695))

(declare-fun m!1581697 () Bool)

(assert (=> b!1404317 m!1581697))

(declare-fun m!1581699 () Bool)

(assert (=> b!1404339 m!1581699))

(declare-fun m!1581701 () Bool)

(assert (=> b!1404314 m!1581701))

(declare-fun m!1581703 () Bool)

(assert (=> b!1404318 m!1581703))

(assert (=> b!1404318 m!1581703))

(declare-fun m!1581705 () Bool)

(assert (=> b!1404318 m!1581705))

(declare-fun m!1581707 () Bool)

(assert (=> b!1404306 m!1581707))

(declare-fun m!1581709 () Bool)

(assert (=> b!1404344 m!1581709))

(assert (=> b!1404344 m!1581709))

(declare-fun m!1581711 () Bool)

(assert (=> b!1404344 m!1581711))

(declare-fun m!1581713 () Bool)

(assert (=> b!1404330 m!1581713))

(declare-fun m!1581715 () Bool)

(assert (=> b!1404307 m!1581715))

(declare-fun m!1581717 () Bool)

(assert (=> b!1404307 m!1581717))

(declare-fun m!1581719 () Bool)

(assert (=> b!1404329 m!1581719))

(declare-fun m!1581721 () Bool)

(assert (=> b!1404329 m!1581721))

(declare-fun m!1581723 () Bool)

(assert (=> b!1404329 m!1581723))

(declare-fun m!1581725 () Bool)

(assert (=> b!1404329 m!1581725))

(declare-fun m!1581727 () Bool)

(assert (=> b!1404329 m!1581727))

(declare-fun m!1581729 () Bool)

(assert (=> b!1404329 m!1581729))

(declare-fun m!1581731 () Bool)

(assert (=> b!1404303 m!1581731))

(declare-fun m!1581733 () Bool)

(assert (=> b!1404335 m!1581733))

(declare-fun m!1581735 () Bool)

(assert (=> b!1404337 m!1581735))

(declare-fun m!1581737 () Bool)

(assert (=> b!1404324 m!1581737))

(declare-fun m!1581739 () Bool)

(assert (=> b!1404324 m!1581739))

(declare-fun m!1581741 () Bool)

(assert (=> b!1404301 m!1581741))

(declare-fun m!1581743 () Bool)

(assert (=> b!1404311 m!1581743))

(declare-fun m!1581745 () Bool)

(assert (=> b!1404311 m!1581745))

(declare-fun m!1581747 () Bool)

(assert (=> b!1404311 m!1581747))

(declare-fun m!1581749 () Bool)

(assert (=> b!1404311 m!1581749))

(declare-fun m!1581751 () Bool)

(assert (=> b!1404333 m!1581751))

(declare-fun m!1581753 () Bool)

(assert (=> b!1404333 m!1581753))

(declare-fun m!1581755 () Bool)

(assert (=> b!1404333 m!1581755))

(assert (=> b!1404333 m!1581753))

(declare-fun m!1581757 () Bool)

(assert (=> b!1404333 m!1581757))

(declare-fun m!1581759 () Bool)

(assert (=> b!1404333 m!1581759))

(declare-fun m!1581761 () Bool)

(assert (=> b!1404332 m!1581761))

(declare-fun m!1581763 () Bool)

(assert (=> b!1404345 m!1581763))

(declare-fun m!1581765 () Bool)

(assert (=> start!128050 m!1581765))

(declare-fun m!1581767 () Bool)

(assert (=> start!128050 m!1581767))

(declare-fun m!1581769 () Bool)

(assert (=> b!1404334 m!1581769))

(declare-fun m!1581771 () Bool)

(assert (=> b!1404334 m!1581771))

(declare-fun m!1581773 () Bool)

(assert (=> b!1404300 m!1581773))

(declare-fun m!1581775 () Bool)

(assert (=> b!1404338 m!1581775))

(assert (=> b!1404338 m!1581775))

(declare-fun m!1581777 () Bool)

(assert (=> b!1404338 m!1581777))

(declare-fun m!1581779 () Bool)

(assert (=> b!1404325 m!1581779))

(assert (=> b!1404325 m!1581779))

(declare-fun m!1581781 () Bool)

(assert (=> b!1404325 m!1581781))

(declare-fun m!1581783 () Bool)

(assert (=> b!1404315 m!1581783))

(assert (=> b!1404315 m!1581783))

(declare-fun m!1581785 () Bool)

(assert (=> b!1404315 m!1581785))

(assert (=> b!1404315 m!1581783))

(assert (=> b!1404315 m!1581783))

(declare-fun m!1581787 () Bool)

(assert (=> b!1404315 m!1581787))

(declare-fun m!1581789 () Bool)

(assert (=> b!1404331 m!1581789))

(assert (=> b!1404331 m!1581789))

(declare-fun m!1581791 () Bool)

(assert (=> b!1404331 m!1581791))

(declare-fun m!1581793 () Bool)

(assert (=> b!1404321 m!1581793))

(assert (=> b!1404321 m!1581793))

(declare-fun m!1581795 () Bool)

(assert (=> b!1404321 m!1581795))

(declare-fun m!1581797 () Bool)

(assert (=> b!1404309 m!1581797))

(assert (=> b!1404309 m!1581797))

(declare-fun m!1581799 () Bool)

(assert (=> b!1404309 m!1581799))

(declare-fun m!1581801 () Bool)

(assert (=> b!1404309 m!1581801))

(declare-fun m!1581803 () Bool)

(assert (=> b!1404308 m!1581803))

(declare-fun m!1581805 () Bool)

(assert (=> b!1404308 m!1581805))

(declare-fun m!1581807 () Bool)

(assert (=> b!1404308 m!1581807))

(assert (=> b!1404308 m!1581807))

(declare-fun m!1581809 () Bool)

(assert (=> b!1404308 m!1581809))

(declare-fun m!1581811 () Bool)

(assert (=> b!1404328 m!1581811))

(declare-fun m!1581813 () Bool)

(assert (=> b!1404328 m!1581813))

(declare-fun m!1581815 () Bool)

(assert (=> b!1404312 m!1581815))

(declare-fun m!1581817 () Bool)

(assert (=> b!1404347 m!1581817))

(declare-fun m!1581819 () Bool)

(assert (=> b!1404346 m!1581819))

(declare-fun m!1581821 () Bool)

(assert (=> b!1404327 m!1581821))

(declare-fun m!1581823 () Bool)

(assert (=> b!1404327 m!1581823))

(declare-fun m!1581825 () Bool)

(assert (=> b!1404343 m!1581825))

(declare-fun m!1581827 () Bool)

(assert (=> b!1404319 m!1581827))

(assert (=> b!1404305 m!1581783))

(declare-fun m!1581829 () Bool)

(assert (=> b!1404305 m!1581829))

(assert (=> b!1404305 m!1581783))

(declare-fun m!1581831 () Bool)

(assert (=> b!1404305 m!1581831))

(assert (=> b!1404305 m!1581783))

(declare-fun m!1581833 () Bool)

(assert (=> b!1404305 m!1581833))

(declare-fun m!1581835 () Bool)

(assert (=> b!1404322 m!1581835))

(declare-fun m!1581837 () Bool)

(assert (=> b!1404322 m!1581837))

(declare-fun m!1581839 () Bool)

(assert (=> b!1404340 m!1581839))

(assert (=> b!1404340 m!1581839))

(declare-fun m!1581841 () Bool)

(assert (=> b!1404340 m!1581841))

(declare-fun m!1581843 () Bool)

(assert (=> b!1404323 m!1581843))

(declare-fun m!1581845 () Bool)

(assert (=> b!1404320 m!1581845))

(check-sat b_and!94027 (not b_next!34965) (not b!1404338) b_and!94037 (not b!1404307) b_and!94029 (not b_next!34961) (not b!1404343) (not b!1404340) (not b!1404309) b_and!94035 (not b!1404329) b_and!94033 (not b!1404333) (not b!1404337) (not b!1404346) (not b!1404301) (not b!1404325) (not b!1404311) (not b!1404327) (not b!1404303) (not b!1404330) (not start!128050) (not b!1404339) (not b!1404305) (not b!1404308) (not b_next!34959) (not b!1404331) (not b!1404302) (not b!1404318) (not b!1404335) (not b_next!34955) (not b!1404332) (not b!1404345) (not b!1404300) (not b!1404344) (not b!1404322) (not b!1404320) (not b!1404328) (not b!1404314) (not b!1404319) (not b_next!34957) (not b!1404347) (not b!1404321) (not b!1404323) b_and!94031 (not b!1404336) (not b_next!34963) (not b!1404334) (not b!1404324) (not b!1404312) (not b!1404306) (not b!1404315) (not b!1404317))
(check-sat b_and!94027 (not b_next!34965) b_and!94037 b_and!94035 b_and!94033 (not b_next!34959) (not b_next!34955) b_and!94029 (not b_next!34957) b_and!94031 (not b_next!34961) (not b_next!34963))
