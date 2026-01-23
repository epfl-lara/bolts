; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117394 () Bool)

(assert start!117394)

(declare-fun b!1321622 () Bool)

(declare-fun b_free!31827 () Bool)

(declare-fun b_next!32531 () Bool)

(assert (=> b!1321622 (= b_free!31827 (not b_next!32531))))

(declare-fun tp!383696 () Bool)

(declare-fun b_and!88255 () Bool)

(assert (=> b!1321622 (= tp!383696 b_and!88255)))

(declare-fun b_free!31829 () Bool)

(declare-fun b_next!32533 () Bool)

(assert (=> b!1321622 (= b_free!31829 (not b_next!32533))))

(declare-fun tp!383700 () Bool)

(declare-fun b_and!88257 () Bool)

(assert (=> b!1321622 (= tp!383700 b_and!88257)))

(declare-fun b!1321630 () Bool)

(declare-fun b_free!31831 () Bool)

(declare-fun b_next!32535 () Bool)

(assert (=> b!1321630 (= b_free!31831 (not b_next!32535))))

(declare-fun tp!383694 () Bool)

(declare-fun b_and!88259 () Bool)

(assert (=> b!1321630 (= tp!383694 b_and!88259)))

(declare-fun b_free!31833 () Bool)

(declare-fun b_next!32537 () Bool)

(assert (=> b!1321630 (= b_free!31833 (not b_next!32537))))

(declare-fun tp!383691 () Bool)

(declare-fun b_and!88261 () Bool)

(assert (=> b!1321630 (= tp!383691 b_and!88261)))

(declare-fun b!1321598 () Bool)

(declare-fun b_free!31835 () Bool)

(declare-fun b_next!32539 () Bool)

(assert (=> b!1321598 (= b_free!31835 (not b_next!32539))))

(declare-fun tp!383693 () Bool)

(declare-fun b_and!88263 () Bool)

(assert (=> b!1321598 (= tp!383693 b_and!88263)))

(declare-fun b_free!31837 () Bool)

(declare-fun b_next!32541 () Bool)

(assert (=> b!1321598 (= b_free!31837 (not b_next!32541))))

(declare-fun tp!383692 () Bool)

(declare-fun b_and!88265 () Bool)

(assert (=> b!1321598 (= tp!383692 b_and!88265)))

(declare-fun b!1321628 () Bool)

(assert (=> b!1321628 true))

(assert (=> b!1321628 true))

(declare-fun b!1321599 () Bool)

(assert (=> b!1321599 true))

(declare-fun b!1321623 () Bool)

(assert (=> b!1321623 true))

(declare-fun bs!331100 () Bool)

(declare-fun b!1321609 () Bool)

(assert (= bs!331100 (and b!1321609 b!1321623)))

(declare-fun lambda!54039 () Int)

(declare-fun lambda!54038 () Int)

(assert (=> bs!331100 (not (= lambda!54039 lambda!54038))))

(assert (=> b!1321609 true))

(declare-datatypes ((C!7548 0))(
  ( (C!7549 (val!4334 Int)) )
))
(declare-datatypes ((List!13446 0))(
  ( (Nil!13380) (Cons!13380 (h!18781 C!7548) (t!118639 List!13446)) )
))
(declare-datatypes ((IArray!8805 0))(
  ( (IArray!8806 (innerList!4460 List!13446)) )
))
(declare-datatypes ((List!13447 0))(
  ( (Nil!13381) (Cons!13381 (h!18782 (_ BitVec 16)) (t!118640 List!13447)) )
))
(declare-datatypes ((Conc!4400 0))(
  ( (Node!4400 (left!11495 Conc!4400) (right!11825 Conc!4400) (csize!9030 Int) (cheight!4611 Int)) (Leaf!6754 (xs!7115 IArray!8805) (csize!9031 Int)) (Empty!4400) )
))
(declare-datatypes ((BalanceConc!8740 0))(
  ( (BalanceConc!8741 (c!216974 Conc!4400)) )
))
(declare-datatypes ((TokenValue!2405 0))(
  ( (FloatLiteralValue!4810 (text!17280 List!13447)) (TokenValueExt!2404 (__x!8639 Int)) (Broken!12025 (value!75584 List!13447)) (Object!2470) (End!2405) (Def!2405) (Underscore!2405) (Match!2405) (Else!2405) (Error!2405) (Case!2405) (If!2405) (Extends!2405) (Abstract!2405) (Class!2405) (Val!2405) (DelimiterValue!4810 (del!2465 List!13447)) (KeywordValue!2411 (value!75585 List!13447)) (CommentValue!4810 (value!75586 List!13447)) (WhitespaceValue!4810 (value!75587 List!13447)) (IndentationValue!2405 (value!75588 List!13447)) (String!16260) (Int32!2405) (Broken!12026 (value!75589 List!13447)) (Boolean!2406) (Unit!19457) (OperatorValue!2408 (op!2465 List!13447)) (IdentifierValue!4810 (value!75590 List!13447)) (IdentifierValue!4811 (value!75591 List!13447)) (WhitespaceValue!4811 (value!75592 List!13447)) (True!4810) (False!4810) (Broken!12027 (value!75593 List!13447)) (Broken!12028 (value!75594 List!13447)) (True!4811) (RightBrace!2405) (RightBracket!2405) (Colon!2405) (Null!2405) (Comma!2405) (LeftBracket!2405) (False!4811) (LeftBrace!2405) (ImaginaryLiteralValue!2405 (text!17281 List!13447)) (StringLiteralValue!7215 (value!75595 List!13447)) (EOFValue!2405 (value!75596 List!13447)) (IdentValue!2405 (value!75597 List!13447)) (DelimiterValue!4811 (value!75598 List!13447)) (DedentValue!2405 (value!75599 List!13447)) (NewLineValue!2405 (value!75600 List!13447)) (IntegerValue!7215 (value!75601 (_ BitVec 32)) (text!17282 List!13447)) (IntegerValue!7216 (value!75602 Int) (text!17283 List!13447)) (Times!2405) (Or!2405) (Equal!2405) (Minus!2405) (Broken!12029 (value!75603 List!13447)) (And!2405) (Div!2405) (LessEqual!2405) (Mod!2405) (Concat!6034) (Not!2405) (Plus!2405) (SpaceValue!2405 (value!75604 List!13447)) (IntegerValue!7217 (value!75605 Int) (text!17284 List!13447)) (StringLiteralValue!7216 (text!17285 List!13447)) (FloatLiteralValue!4811 (text!17286 List!13447)) (BytesLiteralValue!2405 (value!75606 List!13447)) (CommentValue!4811 (value!75607 List!13447)) (StringLiteralValue!7217 (value!75608 List!13447)) (ErrorTokenValue!2405 (msg!2466 List!13447)) )
))
(declare-datatypes ((Regex!3629 0))(
  ( (ElementMatch!3629 (c!216975 C!7548)) (Concat!6035 (regOne!7770 Regex!3629) (regTwo!7770 Regex!3629)) (EmptyExpr!3629) (Star!3629 (reg!3958 Regex!3629)) (EmptyLang!3629) (Union!3629 (regOne!7771 Regex!3629) (regTwo!7771 Regex!3629)) )
))
(declare-datatypes ((String!16261 0))(
  ( (String!16262 (value!75609 String)) )
))
(declare-datatypes ((TokenValueInjection!4470 0))(
  ( (TokenValueInjection!4471 (toValue!3546 Int) (toChars!3405 Int)) )
))
(declare-datatypes ((Rule!4430 0))(
  ( (Rule!4431 (regex!2315 Regex!3629) (tag!2577 String!16261) (isSeparator!2315 Bool) (transformation!2315 TokenValueInjection!4470)) )
))
(declare-datatypes ((Token!4292 0))(
  ( (Token!4293 (value!75610 TokenValue!2405) (rule!4060 Rule!4430) (size!10900 Int) (originalCharacters!3177 List!13446)) )
))
(declare-fun t1!34 () Token!4292)

(declare-fun b!1321591 () Bool)

(declare-fun e!846938 () Bool)

(declare-fun e!846931 () Bool)

(declare-fun tp!383697 () Bool)

(declare-fun inv!17756 (String!16261) Bool)

(declare-fun inv!17759 (TokenValueInjection!4470) Bool)

(assert (=> b!1321591 (= e!846931 (and tp!383697 (inv!17756 (tag!2577 (rule!4060 t1!34))) (inv!17759 (transformation!2315 (rule!4060 t1!34))) e!846938))))

(declare-fun b!1321592 () Bool)

(declare-fun res!594066 () Bool)

(declare-fun e!846940 () Bool)

(assert (=> b!1321592 (=> res!594066 e!846940)))

(declare-datatypes ((List!13448 0))(
  ( (Nil!13382) (Cons!13382 (h!18783 Rule!4430) (t!118641 List!13448)) )
))
(declare-fun rules!2550 () List!13448)

(declare-fun t2!34 () Token!4292)

(declare-fun contains!2361 (List!13448 Rule!4430) Bool)

(assert (=> b!1321592 (= res!594066 (not (contains!2361 rules!2550 (rule!4060 t2!34))))))

(declare-fun b!1321593 () Bool)

(declare-fun res!594084 () Bool)

(declare-fun e!846928 () Bool)

(assert (=> b!1321593 (=> res!594084 e!846928)))

(assert (=> b!1321593 (= res!594084 (not (contains!2361 rules!2550 (rule!4060 t1!34))))))

(declare-fun b!1321594 () Bool)

(declare-fun e!846933 () Bool)

(declare-fun e!846941 () Bool)

(declare-fun tp!383701 () Bool)

(assert (=> b!1321594 (= e!846933 (and e!846941 tp!383701))))

(declare-fun b!1321595 () Bool)

(declare-fun e!846930 () Bool)

(assert (=> b!1321595 (= e!846930 e!846940)))

(declare-fun res!594090 () Bool)

(assert (=> b!1321595 (=> res!594090 e!846940)))

(declare-datatypes ((LexerInterface!2010 0))(
  ( (LexerInterfaceExt!2007 (__x!8640 Int)) (Lexer!2008) )
))
(declare-fun thiss!19762 () LexerInterface!2010)

(declare-fun lt!436297 () List!13446)

(declare-datatypes ((tuple2!13010 0))(
  ( (tuple2!13011 (_1!7391 Token!4292) (_2!7391 List!13446)) )
))
(declare-datatypes ((Option!2586 0))(
  ( (None!2585) (Some!2585 (v!21166 tuple2!13010)) )
))
(declare-fun maxPrefix!1020 (LexerInterface!2010 List!13448 List!13446) Option!2586)

(assert (=> b!1321595 (= res!594090 (not (= (maxPrefix!1020 thiss!19762 rules!2550 lt!436297) (Some!2585 (tuple2!13011 t2!34 Nil!13380)))))))

(declare-fun lt!436304 () BalanceConc!8740)

(declare-fun list!5054 (BalanceConc!8740) List!13446)

(assert (=> b!1321595 (= lt!436297 (list!5054 lt!436304))))

(declare-fun b!1321596 () Bool)

(declare-fun res!594096 () Bool)

(assert (=> b!1321596 (=> res!594096 e!846928)))

(declare-datatypes ((List!13449 0))(
  ( (Nil!13383) (Cons!13383 (h!18784 Token!4292) (t!118642 List!13449)) )
))
(declare-datatypes ((IArray!8807 0))(
  ( (IArray!8808 (innerList!4461 List!13449)) )
))
(declare-datatypes ((Conc!4401 0))(
  ( (Node!4401 (left!11496 Conc!4401) (right!11826 Conc!4401) (csize!9032 Int) (cheight!4612 Int)) (Leaf!6755 (xs!7116 IArray!8807) (csize!9033 Int)) (Empty!4401) )
))
(declare-datatypes ((BalanceConc!8742 0))(
  ( (BalanceConc!8743 (c!216976 Conc!4401)) )
))
(declare-datatypes ((tuple2!13012 0))(
  ( (tuple2!13013 (_1!7392 BalanceConc!8742) (_2!7392 BalanceConc!8740)) )
))
(declare-fun lt!436300 () tuple2!13012)

(declare-fun isEmpty!7956 (BalanceConc!8740) Bool)

(assert (=> b!1321596 (= res!594096 (not (isEmpty!7956 (_2!7392 lt!436300))))))

(declare-fun b!1321597 () Bool)

(declare-fun e!846923 () Bool)

(assert (=> b!1321597 (= e!846923 e!846928)))

(declare-fun res!594069 () Bool)

(assert (=> b!1321597 (=> res!594069 e!846928)))

(declare-fun lt!436308 () List!13449)

(declare-fun list!5055 (BalanceConc!8742) List!13449)

(assert (=> b!1321597 (= res!594069 (not (= (list!5055 (_1!7392 lt!436300)) lt!436308)))))

(assert (=> b!1321597 (= lt!436308 (Cons!13383 t1!34 Nil!13383))))

(declare-fun lt!436310 () BalanceConc!8740)

(declare-fun lex!845 (LexerInterface!2010 List!13448 BalanceConc!8740) tuple2!13012)

(assert (=> b!1321597 (= lt!436300 (lex!845 thiss!19762 rules!2550 lt!436310))))

(declare-fun print!784 (LexerInterface!2010 BalanceConc!8742) BalanceConc!8740)

(declare-fun singletonSeq!900 (Token!4292) BalanceConc!8742)

(assert (=> b!1321597 (= lt!436310 (print!784 thiss!19762 (singletonSeq!900 t1!34)))))

(declare-fun lt!436296 () Rule!4430)

(declare-fun getWitness!224 (List!13448 Int) Rule!4430)

(assert (=> b!1321597 (= lt!436296 (getWitness!224 rules!2550 lambda!54038))))

(declare-fun e!846937 () Bool)

(assert (=> b!1321598 (= e!846937 (and tp!383693 tp!383692))))

(declare-fun res!594088 () Bool)

(declare-fun e!846942 () Bool)

(assert (=> start!117394 (=> (not res!594088) (not e!846942))))

(get-info :version)

(assert (=> start!117394 (= res!594088 ((_ is Lexer!2008) thiss!19762))))

(assert (=> start!117394 e!846942))

(assert (=> start!117394 true))

(assert (=> start!117394 e!846933))

(declare-fun e!846939 () Bool)

(declare-fun inv!17760 (Token!4292) Bool)

(assert (=> start!117394 (and (inv!17760 t1!34) e!846939)))

(declare-fun e!846924 () Bool)

(assert (=> start!117394 (and (inv!17760 t2!34) e!846924)))

(declare-fun e!846932 () Bool)

(declare-fun e!846929 () Bool)

(assert (=> b!1321599 (= e!846932 e!846929)))

(declare-fun res!594070 () Bool)

(assert (=> b!1321599 (=> res!594070 e!846929)))

(declare-fun lambda!54036 () Int)

(declare-fun lambda!54037 () Int)

(declare-datatypes ((List!13450 0))(
  ( (Nil!13384) (Cons!13384 (h!18785 Regex!3629) (t!118643 List!13450)) )
))
(declare-fun exists!332 (List!13450 Int) Bool)

(declare-fun map!2939 (List!13448 Int) List!13450)

(assert (=> b!1321599 (= res!594070 (not (exists!332 (map!2939 rules!2550 lambda!54036) lambda!54037)))))

(declare-fun lt!436303 () List!13450)

(assert (=> b!1321599 (exists!332 lt!436303 lambda!54037)))

(declare-fun lt!436302 () List!13446)

(declare-fun lt!436295 () Regex!3629)

(declare-datatypes ((Unit!19458 0))(
  ( (Unit!19459) )
))
(declare-fun lt!436294 () Unit!19458)

(declare-fun matchRGenUnionSpec!66 (Regex!3629 List!13450 List!13446) Unit!19458)

(assert (=> b!1321599 (= lt!436294 (matchRGenUnionSpec!66 lt!436295 lt!436303 lt!436302))))

(assert (=> b!1321599 (= lt!436303 (map!2939 rules!2550 lambda!54036))))

(declare-fun b!1321600 () Bool)

(declare-fun res!594085 () Bool)

(assert (=> b!1321600 (=> (not res!594085) (not e!846942))))

(declare-fun isEmpty!7957 (List!13448) Bool)

(assert (=> b!1321600 (= res!594085 (not (isEmpty!7957 rules!2550)))))

(declare-fun b!1321601 () Bool)

(declare-fun res!594076 () Bool)

(assert (=> b!1321601 (=> res!594076 e!846940)))

(assert (=> b!1321601 (= res!594076 (not (contains!2361 rules!2550 lt!436296)))))

(declare-fun b!1321602 () Bool)

(declare-fun res!594071 () Bool)

(assert (=> b!1321602 (=> res!594071 e!846928)))

(declare-fun lt!436307 () List!13446)

(assert (=> b!1321602 (= res!594071 (not (= (maxPrefix!1020 thiss!19762 rules!2550 lt!436307) (Some!2585 (tuple2!13011 t1!34 Nil!13380)))))))

(declare-fun b!1321603 () Bool)

(declare-fun e!846918 () Bool)

(declare-fun e!846921 () Bool)

(assert (=> b!1321603 (= e!846918 e!846921)))

(declare-fun res!594087 () Bool)

(assert (=> b!1321603 (=> (not res!594087) (not e!846921))))

(declare-fun lt!436301 () List!13446)

(declare-fun prefixMatch!142 (Regex!3629 List!13446) Bool)

(assert (=> b!1321603 (= res!594087 (prefixMatch!142 lt!436295 lt!436301))))

(declare-fun rulesRegex!200 (LexerInterface!2010 List!13448) Regex!3629)

(assert (=> b!1321603 (= lt!436295 (rulesRegex!200 thiss!19762 rules!2550))))

(declare-fun lt!436291 () C!7548)

(declare-fun ++!3418 (List!13446 List!13446) List!13446)

(assert (=> b!1321603 (= lt!436301 (++!3418 lt!436307 (Cons!13380 lt!436291 Nil!13380)))))

(declare-fun apply!3069 (BalanceConc!8740 Int) C!7548)

(assert (=> b!1321603 (= lt!436291 (apply!3069 lt!436304 0))))

(declare-fun lt!436312 () BalanceConc!8740)

(assert (=> b!1321603 (= lt!436307 (list!5054 lt!436312))))

(declare-fun charsOf!1287 (Token!4292) BalanceConc!8740)

(assert (=> b!1321603 (= lt!436312 (charsOf!1287 t1!34))))

(declare-fun b!1321604 () Bool)

(declare-fun res!594098 () Bool)

(assert (=> b!1321604 (=> res!594098 e!846932)))

(declare-fun lt!436298 () C!7548)

(declare-fun contains!2362 (List!13446 C!7548) Bool)

(assert (=> b!1321604 (= res!594098 (not (contains!2362 lt!436302 lt!436298)))))

(declare-fun b!1321605 () Bool)

(declare-fun res!594093 () Bool)

(assert (=> b!1321605 (=> (not res!594093) (not e!846942))))

(declare-fun rulesProduceIndividualToken!979 (LexerInterface!2010 List!13448 Token!4292) Bool)

(assert (=> b!1321605 (= res!594093 (rulesProduceIndividualToken!979 thiss!19762 rules!2550 t1!34))))

(declare-fun tp!383698 () Bool)

(declare-fun e!846935 () Bool)

(declare-fun b!1321606 () Bool)

(declare-fun e!846920 () Bool)

(assert (=> b!1321606 (= e!846920 (and tp!383698 (inv!17756 (tag!2577 (rule!4060 t2!34))) (inv!17759 (transformation!2315 (rule!4060 t2!34))) e!846935))))

(declare-fun b!1321607 () Bool)

(declare-fun res!594081 () Bool)

(assert (=> b!1321607 (=> (not res!594081) (not e!846942))))

(assert (=> b!1321607 (= res!594081 (not (= (isSeparator!2315 (rule!4060 t1!34)) (isSeparator!2315 (rule!4060 t2!34)))))))

(declare-fun b!1321608 () Bool)

(declare-fun res!594078 () Bool)

(assert (=> b!1321608 (=> res!594078 e!846932)))

(assert (=> b!1321608 (= res!594078 (not (contains!2362 lt!436302 lt!436291)))))

(declare-fun e!846936 () Bool)

(assert (=> b!1321609 (= e!846940 e!846936)))

(declare-fun res!594092 () Bool)

(assert (=> b!1321609 (=> res!594092 e!846936)))

(declare-fun matchR!1631 (Regex!3629 List!13446) Bool)

(assert (=> b!1321609 (= res!594092 (not (matchR!1631 (regex!2315 (rule!4060 t1!34)) lt!436307)))))

(declare-fun lt!436305 () Unit!19458)

(declare-fun forallContained!566 (List!13448 Int Rule!4430) Unit!19458)

(assert (=> b!1321609 (= lt!436305 (forallContained!566 rules!2550 lambda!54039 (rule!4060 t2!34)))))

(declare-fun lt!436306 () Unit!19458)

(assert (=> b!1321609 (= lt!436306 (forallContained!566 rules!2550 lambda!54039 (rule!4060 t1!34)))))

(declare-fun lt!436293 () Unit!19458)

(assert (=> b!1321609 (= lt!436293 (forallContained!566 rules!2550 lambda!54039 lt!436296))))

(declare-fun b!1321610 () Bool)

(declare-fun res!594097 () Bool)

(assert (=> b!1321610 (=> res!594097 e!846936)))

(declare-fun usedCharacters!180 (Regex!3629) List!13446)

(assert (=> b!1321610 (= res!594097 (contains!2362 (usedCharacters!180 (regex!2315 (rule!4060 t1!34))) lt!436298))))

(declare-fun b!1321611 () Bool)

(declare-fun res!594099 () Bool)

(assert (=> b!1321611 (=> res!594099 e!846936)))

(assert (=> b!1321611 (= res!594099 (not (matchR!1631 (regex!2315 (rule!4060 t2!34)) lt!436297)))))

(declare-fun b!1321612 () Bool)

(assert (=> b!1321612 (= e!846936 (not (= lt!436307 Nil!13380)))))

(declare-fun b!1321613 () Bool)

(declare-fun res!594089 () Bool)

(assert (=> b!1321613 (=> res!594089 e!846932)))

(assert (=> b!1321613 (= res!594089 (not (matchR!1631 lt!436295 lt!436302)))))

(declare-fun b!1321614 () Bool)

(declare-fun e!846917 () Bool)

(assert (=> b!1321614 (= e!846917 e!846932)))

(declare-fun res!594095 () Bool)

(assert (=> b!1321614 (=> res!594095 e!846932)))

(assert (=> b!1321614 (= res!594095 (not (contains!2362 lt!436301 lt!436298)))))

(assert (=> b!1321614 (= lt!436298 (apply!3069 lt!436312 0))))

(declare-fun b!1321615 () Bool)

(declare-fun res!594068 () Bool)

(assert (=> b!1321615 (=> res!594068 e!846932)))

(assert (=> b!1321615 (= res!594068 (not (contains!2362 lt!436301 lt!436291)))))

(declare-fun b!1321616 () Bool)

(declare-fun res!594077 () Bool)

(assert (=> b!1321616 (=> (not res!594077) (not e!846918))))

(declare-fun sepAndNonSepRulesDisjointChars!688 (List!13448 List!13448) Bool)

(assert (=> b!1321616 (= res!594077 (sepAndNonSepRulesDisjointChars!688 rules!2550 rules!2550))))

(declare-fun b!1321617 () Bool)

(assert (=> b!1321617 (= e!846928 e!846930)))

(declare-fun res!594080 () Bool)

(assert (=> b!1321617 (=> res!594080 e!846930)))

(declare-fun lt!436289 () tuple2!13012)

(declare-fun lt!436299 () List!13449)

(assert (=> b!1321617 (= res!594080 (not (= (list!5055 (_1!7392 lt!436289)) lt!436299)))))

(assert (=> b!1321617 (= lt!436299 (Cons!13383 t2!34 Nil!13383))))

(declare-fun lt!436311 () BalanceConc!8740)

(assert (=> b!1321617 (= lt!436289 (lex!845 thiss!19762 rules!2550 lt!436311))))

(assert (=> b!1321617 (= lt!436311 (print!784 thiss!19762 (singletonSeq!900 t2!34)))))

(declare-fun b!1321618 () Bool)

(declare-fun e!846922 () Bool)

(assert (=> b!1321618 (= e!846929 e!846922)))

(declare-fun res!594075 () Bool)

(assert (=> b!1321618 (=> res!594075 e!846922)))

(declare-fun lt!436290 () Regex!3629)

(declare-fun contains!2363 (List!13450 Regex!3629) Bool)

(assert (=> b!1321618 (= res!594075 (not (contains!2363 (map!2939 rules!2550 lambda!54036) lt!436290)))))

(declare-fun getWitness!225 (List!13450 Int) Regex!3629)

(assert (=> b!1321618 (= lt!436290 (getWitness!225 (map!2939 rules!2550 lambda!54036) lambda!54037))))

(declare-fun b!1321619 () Bool)

(declare-fun e!846927 () Bool)

(assert (=> b!1321619 (= e!846927 e!846917)))

(declare-fun res!594086 () Bool)

(assert (=> b!1321619 (=> res!594086 e!846917)))

(declare-fun getSuffix!485 (List!13446 List!13446) List!13446)

(assert (=> b!1321619 (= res!594086 (not (= lt!436302 (++!3418 lt!436301 (getSuffix!485 lt!436302 lt!436301)))))))

(declare-fun lambda!54035 () Int)

(declare-fun pickWitness!92 (Int) List!13446)

(assert (=> b!1321619 (= lt!436302 (pickWitness!92 lambda!54035))))

(declare-fun b!1321620 () Bool)

(assert (=> b!1321620 (= e!846942 e!846918)))

(declare-fun res!594083 () Bool)

(assert (=> b!1321620 (=> (not res!594083) (not e!846918))))

(declare-fun size!10901 (BalanceConc!8740) Int)

(assert (=> b!1321620 (= res!594083 (> (size!10901 lt!436304) 0))))

(assert (=> b!1321620 (= lt!436304 (charsOf!1287 t2!34))))

(declare-fun b!1321621 () Bool)

(declare-fun res!594082 () Bool)

(assert (=> b!1321621 (=> res!594082 e!846928)))

(declare-datatypes ((tuple2!13014 0))(
  ( (tuple2!13015 (_1!7393 List!13449) (_2!7393 List!13446)) )
))
(declare-fun lexList!548 (LexerInterface!2010 List!13448 List!13446) tuple2!13014)

(assert (=> b!1321621 (= res!594082 (not (= (lexList!548 thiss!19762 rules!2550 (list!5054 lt!436310)) (tuple2!13015 lt!436308 Nil!13380))))))

(assert (=> b!1321622 (= e!846935 (and tp!383696 tp!383700))))

(assert (=> b!1321623 (= e!846922 e!846923)))

(declare-fun res!594073 () Bool)

(assert (=> b!1321623 (=> res!594073 e!846923)))

(declare-fun exists!333 (List!13448 Int) Bool)

(assert (=> b!1321623 (= res!594073 (not (exists!333 rules!2550 lambda!54038)))))

(assert (=> b!1321623 (exists!333 rules!2550 lambda!54038)))

(declare-fun lt!436309 () Unit!19458)

(declare-fun lemmaMapContains!58 (List!13448 Int Regex!3629) Unit!19458)

(assert (=> b!1321623 (= lt!436309 (lemmaMapContains!58 rules!2550 lambda!54036 lt!436290))))

(declare-fun b!1321624 () Bool)

(declare-fun res!594067 () Bool)

(assert (=> b!1321624 (=> res!594067 e!846930)))

(assert (=> b!1321624 (= res!594067 (not (= (lexList!548 thiss!19762 rules!2550 (list!5054 lt!436311)) (tuple2!13015 lt!436299 Nil!13380))))))

(declare-fun b!1321625 () Bool)

(declare-fun res!594079 () Bool)

(assert (=> b!1321625 (=> (not res!594079) (not e!846942))))

(declare-fun rulesInvariant!1880 (LexerInterface!2010 List!13448) Bool)

(assert (=> b!1321625 (= res!594079 (rulesInvariant!1880 thiss!19762 rules!2550))))

(declare-fun b!1321626 () Bool)

(declare-fun res!594094 () Bool)

(assert (=> b!1321626 (=> (not res!594094) (not e!846942))))

(assert (=> b!1321626 (= res!594094 (rulesProduceIndividualToken!979 thiss!19762 rules!2550 t2!34))))

(declare-fun tp!383702 () Bool)

(declare-fun b!1321627 () Bool)

(declare-fun inv!21 (TokenValue!2405) Bool)

(assert (=> b!1321627 (= e!846924 (and (inv!21 (value!75610 t2!34)) e!846920 tp!383702))))

(assert (=> b!1321628 (= e!846921 (not e!846927))))

(declare-fun res!594091 () Bool)

(assert (=> b!1321628 (=> res!594091 e!846927)))

(declare-fun Exists!787 (Int) Bool)

(assert (=> b!1321628 (= res!594091 (not (Exists!787 lambda!54035)))))

(assert (=> b!1321628 (Exists!787 lambda!54035)))

(declare-fun lt!436292 () Unit!19458)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!105 (Regex!3629 List!13446) Unit!19458)

(assert (=> b!1321628 (= lt!436292 (lemmaPrefixMatchThenExistsStringThatMatches!105 lt!436295 lt!436301))))

(declare-fun b!1321629 () Bool)

(declare-fun tp!383695 () Bool)

(assert (=> b!1321629 (= e!846939 (and (inv!21 (value!75610 t1!34)) e!846931 tp!383695))))

(assert (=> b!1321630 (= e!846938 (and tp!383694 tp!383691))))

(declare-fun b!1321631 () Bool)

(declare-fun res!594072 () Bool)

(assert (=> b!1321631 (=> res!594072 e!846930)))

(assert (=> b!1321631 (= res!594072 (not (isEmpty!7956 (_2!7392 lt!436289))))))

(declare-fun b!1321632 () Bool)

(declare-fun res!594074 () Bool)

(assert (=> b!1321632 (=> (not res!594074) (not e!846918))))

(declare-fun separableTokensPredicate!293 (LexerInterface!2010 Token!4292 Token!4292 List!13448) Bool)

(assert (=> b!1321632 (= res!594074 (not (separableTokensPredicate!293 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1321633 () Bool)

(declare-fun tp!383699 () Bool)

(assert (=> b!1321633 (= e!846941 (and tp!383699 (inv!17756 (tag!2577 (h!18783 rules!2550))) (inv!17759 (transformation!2315 (h!18783 rules!2550))) e!846937))))

(assert (= (and start!117394 res!594088) b!1321600))

(assert (= (and b!1321600 res!594085) b!1321625))

(assert (= (and b!1321625 res!594079) b!1321605))

(assert (= (and b!1321605 res!594093) b!1321626))

(assert (= (and b!1321626 res!594094) b!1321607))

(assert (= (and b!1321607 res!594081) b!1321620))

(assert (= (and b!1321620 res!594083) b!1321616))

(assert (= (and b!1321616 res!594077) b!1321632))

(assert (= (and b!1321632 res!594074) b!1321603))

(assert (= (and b!1321603 res!594087) b!1321628))

(assert (= (and b!1321628 (not res!594091)) b!1321619))

(assert (= (and b!1321619 (not res!594086)) b!1321614))

(assert (= (and b!1321614 (not res!594095)) b!1321604))

(assert (= (and b!1321604 (not res!594098)) b!1321615))

(assert (= (and b!1321615 (not res!594068)) b!1321608))

(assert (= (and b!1321608 (not res!594078)) b!1321613))

(assert (= (and b!1321613 (not res!594089)) b!1321599))

(assert (= (and b!1321599 (not res!594070)) b!1321618))

(assert (= (and b!1321618 (not res!594075)) b!1321623))

(assert (= (and b!1321623 (not res!594073)) b!1321597))

(assert (= (and b!1321597 (not res!594069)) b!1321596))

(assert (= (and b!1321596 (not res!594096)) b!1321621))

(assert (= (and b!1321621 (not res!594082)) b!1321602))

(assert (= (and b!1321602 (not res!594071)) b!1321593))

(assert (= (and b!1321593 (not res!594084)) b!1321617))

(assert (= (and b!1321617 (not res!594080)) b!1321631))

(assert (= (and b!1321631 (not res!594072)) b!1321624))

(assert (= (and b!1321624 (not res!594067)) b!1321595))

(assert (= (and b!1321595 (not res!594090)) b!1321592))

(assert (= (and b!1321592 (not res!594066)) b!1321601))

(assert (= (and b!1321601 (not res!594076)) b!1321609))

(assert (= (and b!1321609 (not res!594092)) b!1321611))

(assert (= (and b!1321611 (not res!594099)) b!1321610))

(assert (= (and b!1321610 (not res!594097)) b!1321612))

(assert (= b!1321633 b!1321598))

(assert (= b!1321594 b!1321633))

(assert (= (and start!117394 ((_ is Cons!13382) rules!2550)) b!1321594))

(assert (= b!1321591 b!1321630))

(assert (= b!1321629 b!1321591))

(assert (= start!117394 b!1321629))

(assert (= b!1321606 b!1321622))

(assert (= b!1321627 b!1321606))

(assert (= start!117394 b!1321627))

(declare-fun m!1477629 () Bool)

(assert (=> b!1321632 m!1477629))

(declare-fun m!1477631 () Bool)

(assert (=> b!1321608 m!1477631))

(declare-fun m!1477633 () Bool)

(assert (=> b!1321596 m!1477633))

(declare-fun m!1477635 () Bool)

(assert (=> b!1321616 m!1477635))

(declare-fun m!1477637 () Bool)

(assert (=> b!1321623 m!1477637))

(assert (=> b!1321623 m!1477637))

(declare-fun m!1477639 () Bool)

(assert (=> b!1321623 m!1477639))

(declare-fun m!1477641 () Bool)

(assert (=> b!1321617 m!1477641))

(declare-fun m!1477643 () Bool)

(assert (=> b!1321617 m!1477643))

(declare-fun m!1477645 () Bool)

(assert (=> b!1321617 m!1477645))

(assert (=> b!1321617 m!1477645))

(declare-fun m!1477647 () Bool)

(assert (=> b!1321617 m!1477647))

(declare-fun m!1477649 () Bool)

(assert (=> b!1321605 m!1477649))

(declare-fun m!1477651 () Bool)

(assert (=> b!1321603 m!1477651))

(declare-fun m!1477653 () Bool)

(assert (=> b!1321603 m!1477653))

(declare-fun m!1477655 () Bool)

(assert (=> b!1321603 m!1477655))

(declare-fun m!1477657 () Bool)

(assert (=> b!1321603 m!1477657))

(declare-fun m!1477659 () Bool)

(assert (=> b!1321603 m!1477659))

(declare-fun m!1477661 () Bool)

(assert (=> b!1321603 m!1477661))

(declare-fun m!1477663 () Bool)

(assert (=> b!1321595 m!1477663))

(declare-fun m!1477665 () Bool)

(assert (=> b!1321595 m!1477665))

(declare-fun m!1477667 () Bool)

(assert (=> b!1321593 m!1477667))

(declare-fun m!1477669 () Bool)

(assert (=> b!1321600 m!1477669))

(declare-fun m!1477671 () Bool)

(assert (=> b!1321633 m!1477671))

(declare-fun m!1477673 () Bool)

(assert (=> b!1321633 m!1477673))

(declare-fun m!1477675 () Bool)

(assert (=> b!1321609 m!1477675))

(declare-fun m!1477677 () Bool)

(assert (=> b!1321609 m!1477677))

(declare-fun m!1477679 () Bool)

(assert (=> b!1321609 m!1477679))

(declare-fun m!1477681 () Bool)

(assert (=> b!1321609 m!1477681))

(declare-fun m!1477683 () Bool)

(assert (=> b!1321627 m!1477683))

(declare-fun m!1477685 () Bool)

(assert (=> b!1321597 m!1477685))

(declare-fun m!1477687 () Bool)

(assert (=> b!1321597 m!1477687))

(declare-fun m!1477689 () Bool)

(assert (=> b!1321597 m!1477689))

(assert (=> b!1321597 m!1477687))

(declare-fun m!1477691 () Bool)

(assert (=> b!1321597 m!1477691))

(declare-fun m!1477693 () Bool)

(assert (=> b!1321597 m!1477693))

(declare-fun m!1477695 () Bool)

(assert (=> b!1321626 m!1477695))

(declare-fun m!1477697 () Bool)

(assert (=> b!1321592 m!1477697))

(declare-fun m!1477699 () Bool)

(assert (=> b!1321606 m!1477699))

(declare-fun m!1477701 () Bool)

(assert (=> b!1321606 m!1477701))

(declare-fun m!1477703 () Bool)

(assert (=> b!1321599 m!1477703))

(declare-fun m!1477705 () Bool)

(assert (=> b!1321599 m!1477705))

(declare-fun m!1477707 () Bool)

(assert (=> b!1321599 m!1477707))

(assert (=> b!1321599 m!1477705))

(assert (=> b!1321599 m!1477705))

(declare-fun m!1477709 () Bool)

(assert (=> b!1321599 m!1477709))

(declare-fun m!1477711 () Bool)

(assert (=> b!1321615 m!1477711))

(declare-fun m!1477713 () Bool)

(assert (=> b!1321619 m!1477713))

(assert (=> b!1321619 m!1477713))

(declare-fun m!1477715 () Bool)

(assert (=> b!1321619 m!1477715))

(declare-fun m!1477717 () Bool)

(assert (=> b!1321619 m!1477717))

(declare-fun m!1477719 () Bool)

(assert (=> b!1321591 m!1477719))

(declare-fun m!1477721 () Bool)

(assert (=> b!1321591 m!1477721))

(declare-fun m!1477723 () Bool)

(assert (=> b!1321614 m!1477723))

(declare-fun m!1477725 () Bool)

(assert (=> b!1321614 m!1477725))

(declare-fun m!1477727 () Bool)

(assert (=> b!1321624 m!1477727))

(assert (=> b!1321624 m!1477727))

(declare-fun m!1477729 () Bool)

(assert (=> b!1321624 m!1477729))

(declare-fun m!1477731 () Bool)

(assert (=> b!1321631 m!1477731))

(declare-fun m!1477733 () Bool)

(assert (=> b!1321628 m!1477733))

(assert (=> b!1321628 m!1477733))

(declare-fun m!1477735 () Bool)

(assert (=> b!1321628 m!1477735))

(declare-fun m!1477737 () Bool)

(assert (=> b!1321625 m!1477737))

(declare-fun m!1477739 () Bool)

(assert (=> b!1321621 m!1477739))

(assert (=> b!1321621 m!1477739))

(declare-fun m!1477741 () Bool)

(assert (=> b!1321621 m!1477741))

(declare-fun m!1477743 () Bool)

(assert (=> b!1321620 m!1477743))

(declare-fun m!1477745 () Bool)

(assert (=> b!1321620 m!1477745))

(declare-fun m!1477747 () Bool)

(assert (=> b!1321610 m!1477747))

(assert (=> b!1321610 m!1477747))

(declare-fun m!1477749 () Bool)

(assert (=> b!1321610 m!1477749))

(declare-fun m!1477751 () Bool)

(assert (=> b!1321613 m!1477751))

(declare-fun m!1477753 () Bool)

(assert (=> b!1321611 m!1477753))

(declare-fun m!1477755 () Bool)

(assert (=> b!1321629 m!1477755))

(declare-fun m!1477757 () Bool)

(assert (=> start!117394 m!1477757))

(declare-fun m!1477759 () Bool)

(assert (=> start!117394 m!1477759))

(declare-fun m!1477761 () Bool)

(assert (=> b!1321604 m!1477761))

(assert (=> b!1321618 m!1477705))

(assert (=> b!1321618 m!1477705))

(declare-fun m!1477763 () Bool)

(assert (=> b!1321618 m!1477763))

(assert (=> b!1321618 m!1477705))

(assert (=> b!1321618 m!1477705))

(declare-fun m!1477765 () Bool)

(assert (=> b!1321618 m!1477765))

(declare-fun m!1477767 () Bool)

(assert (=> b!1321602 m!1477767))

(declare-fun m!1477769 () Bool)

(assert (=> b!1321601 m!1477769))

(check-sat (not b!1321614) (not b!1321620) (not b!1321595) (not b!1321617) (not b!1321606) (not b!1321627) (not b!1321596) (not b!1321632) (not b!1321613) (not b!1321633) (not b!1321631) b_and!88261 (not b_next!32533) (not b!1321616) (not b!1321591) (not b!1321625) b_and!88265 (not b!1321593) (not b_next!32535) (not b!1321604) b_and!88257 (not b!1321624) (not b!1321623) (not b_next!32537) (not b!1321629) b_and!88255 (not b!1321605) (not b_next!32541) (not b!1321594) (not start!117394) (not b!1321592) (not b!1321619) (not b_next!32531) (not b!1321602) (not b!1321615) (not b!1321600) (not b!1321609) (not b!1321618) (not b!1321626) (not b!1321628) b_and!88259 (not b!1321608) (not b!1321610) (not b!1321599) b_and!88263 (not b!1321611) (not b_next!32539) (not b!1321601) (not b!1321621) (not b!1321603) (not b!1321597))
(check-sat b_and!88261 (not b_next!32533) b_and!88265 (not b_next!32541) (not b_next!32531) b_and!88259 b_and!88263 (not b_next!32539) (not b_next!32535) b_and!88257 (not b_next!32537) b_and!88255)
(get-model)

(declare-fun d!373354 () Bool)

(declare-fun lt!436323 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1893 (List!13448) (InoxSet Rule!4430))

(assert (=> d!373354 (= lt!436323 (select (content!1893 rules!2550) lt!436296))))

(declare-fun e!846974 () Bool)

(assert (=> d!373354 (= lt!436323 e!846974)))

(declare-fun res!594141 () Bool)

(assert (=> d!373354 (=> (not res!594141) (not e!846974))))

(assert (=> d!373354 (= res!594141 ((_ is Cons!13382) rules!2550))))

(assert (=> d!373354 (= (contains!2361 rules!2550 lt!436296) lt!436323)))

(declare-fun b!1321695 () Bool)

(declare-fun e!846973 () Bool)

(assert (=> b!1321695 (= e!846974 e!846973)))

(declare-fun res!594142 () Bool)

(assert (=> b!1321695 (=> res!594142 e!846973)))

(assert (=> b!1321695 (= res!594142 (= (h!18783 rules!2550) lt!436296))))

(declare-fun b!1321696 () Bool)

(assert (=> b!1321696 (= e!846973 (contains!2361 (t!118641 rules!2550) lt!436296))))

(assert (= (and d!373354 res!594141) b!1321695))

(assert (= (and b!1321695 (not res!594142)) b!1321696))

(declare-fun m!1477803 () Bool)

(assert (=> d!373354 m!1477803))

(declare-fun m!1477805 () Bool)

(assert (=> d!373354 m!1477805))

(declare-fun m!1477807 () Bool)

(assert (=> b!1321696 m!1477807))

(assert (=> b!1321601 d!373354))

(declare-fun b!1321707 () Bool)

(declare-fun e!846982 () Bool)

(declare-fun lt!436332 () tuple2!13014)

(declare-fun isEmpty!7962 (List!13449) Bool)

(assert (=> b!1321707 (= e!846982 (not (isEmpty!7962 (_1!7393 lt!436332))))))

(declare-fun b!1321708 () Bool)

(declare-fun e!846981 () tuple2!13014)

(declare-fun lt!436330 () Option!2586)

(declare-fun lt!436331 () tuple2!13014)

(assert (=> b!1321708 (= e!846981 (tuple2!13015 (Cons!13383 (_1!7391 (v!21166 lt!436330)) (_1!7393 lt!436331)) (_2!7393 lt!436331)))))

(assert (=> b!1321708 (= lt!436331 (lexList!548 thiss!19762 rules!2550 (_2!7391 (v!21166 lt!436330))))))

(declare-fun b!1321709 () Bool)

(declare-fun e!846983 () Bool)

(assert (=> b!1321709 (= e!846983 e!846982)))

(declare-fun res!594145 () Bool)

(declare-fun size!10907 (List!13446) Int)

(assert (=> b!1321709 (= res!594145 (< (size!10907 (_2!7393 lt!436332)) (size!10907 (list!5054 lt!436311))))))

(assert (=> b!1321709 (=> (not res!594145) (not e!846982))))

(declare-fun d!373356 () Bool)

(assert (=> d!373356 e!846983))

(declare-fun c!216990 () Bool)

(declare-fun size!10908 (List!13449) Int)

(assert (=> d!373356 (= c!216990 (> (size!10908 (_1!7393 lt!436332)) 0))))

(assert (=> d!373356 (= lt!436332 e!846981)))

(declare-fun c!216991 () Bool)

(assert (=> d!373356 (= c!216991 ((_ is Some!2585) lt!436330))))

(assert (=> d!373356 (= lt!436330 (maxPrefix!1020 thiss!19762 rules!2550 (list!5054 lt!436311)))))

(assert (=> d!373356 (= (lexList!548 thiss!19762 rules!2550 (list!5054 lt!436311)) lt!436332)))

(declare-fun b!1321710 () Bool)

(assert (=> b!1321710 (= e!846983 (= (_2!7393 lt!436332) (list!5054 lt!436311)))))

(declare-fun b!1321711 () Bool)

(assert (=> b!1321711 (= e!846981 (tuple2!13015 Nil!13383 (list!5054 lt!436311)))))

(assert (= (and d!373356 c!216991) b!1321708))

(assert (= (and d!373356 (not c!216991)) b!1321711))

(assert (= (and d!373356 c!216990) b!1321709))

(assert (= (and d!373356 (not c!216990)) b!1321710))

(assert (= (and b!1321709 res!594145) b!1321707))

(declare-fun m!1477809 () Bool)

(assert (=> b!1321707 m!1477809))

(declare-fun m!1477811 () Bool)

(assert (=> b!1321708 m!1477811))

(declare-fun m!1477813 () Bool)

(assert (=> b!1321709 m!1477813))

(assert (=> b!1321709 m!1477727))

(declare-fun m!1477815 () Bool)

(assert (=> b!1321709 m!1477815))

(declare-fun m!1477817 () Bool)

(assert (=> d!373356 m!1477817))

(assert (=> d!373356 m!1477727))

(declare-fun m!1477819 () Bool)

(assert (=> d!373356 m!1477819))

(assert (=> b!1321624 d!373356))

(declare-fun d!373358 () Bool)

(declare-fun list!5058 (Conc!4400) List!13446)

(assert (=> d!373358 (= (list!5054 lt!436311) (list!5058 (c!216974 lt!436311)))))

(declare-fun bs!331102 () Bool)

(assert (= bs!331102 d!373358))

(declare-fun m!1477821 () Bool)

(assert (=> bs!331102 m!1477821))

(assert (=> b!1321624 d!373358))

(declare-fun b!1321816 () Bool)

(declare-fun res!594212 () Bool)

(declare-fun e!847050 () Bool)

(assert (=> b!1321816 (=> (not res!594212) (not e!847050))))

(declare-fun lt!436381 () Option!2586)

(declare-fun get!4265 (Option!2586) tuple2!13010)

(assert (=> b!1321816 (= res!594212 (= (++!3418 (list!5054 (charsOf!1287 (_1!7391 (get!4265 lt!436381)))) (_2!7391 (get!4265 lt!436381))) lt!436307))))

(declare-fun b!1321817 () Bool)

(declare-fun e!847051 () Option!2586)

(declare-fun call!89706 () Option!2586)

(assert (=> b!1321817 (= e!847051 call!89706)))

(declare-fun b!1321818 () Bool)

(assert (=> b!1321818 (= e!847050 (contains!2361 rules!2550 (rule!4060 (_1!7391 (get!4265 lt!436381)))))))

(declare-fun bm!89701 () Bool)

(declare-fun maxPrefixOneRule!584 (LexerInterface!2010 Rule!4430 List!13446) Option!2586)

(assert (=> bm!89701 (= call!89706 (maxPrefixOneRule!584 thiss!19762 (h!18783 rules!2550) lt!436307))))

(declare-fun b!1321819 () Bool)

(declare-fun res!594214 () Bool)

(assert (=> b!1321819 (=> (not res!594214) (not e!847050))))

(assert (=> b!1321819 (= res!594214 (matchR!1631 (regex!2315 (rule!4060 (_1!7391 (get!4265 lt!436381)))) (list!5054 (charsOf!1287 (_1!7391 (get!4265 lt!436381))))))))

(declare-fun b!1321820 () Bool)

(declare-fun res!594210 () Bool)

(assert (=> b!1321820 (=> (not res!594210) (not e!847050))))

(assert (=> b!1321820 (= res!594210 (< (size!10907 (_2!7391 (get!4265 lt!436381))) (size!10907 lt!436307)))))

(declare-fun b!1321821 () Bool)

(declare-fun res!594208 () Bool)

(assert (=> b!1321821 (=> (not res!594208) (not e!847050))))

(assert (=> b!1321821 (= res!594208 (= (list!5054 (charsOf!1287 (_1!7391 (get!4265 lt!436381)))) (originalCharacters!3177 (_1!7391 (get!4265 lt!436381)))))))

(declare-fun b!1321822 () Bool)

(declare-fun res!594213 () Bool)

(assert (=> b!1321822 (=> (not res!594213) (not e!847050))))

(declare-fun apply!3070 (TokenValueInjection!4470 BalanceConc!8740) TokenValue!2405)

(declare-fun seqFromList!1602 (List!13446) BalanceConc!8740)

(assert (=> b!1321822 (= res!594213 (= (value!75610 (_1!7391 (get!4265 lt!436381))) (apply!3070 (transformation!2315 (rule!4060 (_1!7391 (get!4265 lt!436381)))) (seqFromList!1602 (originalCharacters!3177 (_1!7391 (get!4265 lt!436381)))))))))

(declare-fun b!1321823 () Bool)

(declare-fun lt!436384 () Option!2586)

(declare-fun lt!436380 () Option!2586)

(assert (=> b!1321823 (= e!847051 (ite (and ((_ is None!2585) lt!436384) ((_ is None!2585) lt!436380)) None!2585 (ite ((_ is None!2585) lt!436380) lt!436384 (ite ((_ is None!2585) lt!436384) lt!436380 (ite (>= (size!10900 (_1!7391 (v!21166 lt!436384))) (size!10900 (_1!7391 (v!21166 lt!436380)))) lt!436384 lt!436380)))))))

(assert (=> b!1321823 (= lt!436384 call!89706)))

(assert (=> b!1321823 (= lt!436380 (maxPrefix!1020 thiss!19762 (t!118641 rules!2550) lt!436307))))

(declare-fun d!373360 () Bool)

(declare-fun e!847049 () Bool)

(assert (=> d!373360 e!847049))

(declare-fun res!594209 () Bool)

(assert (=> d!373360 (=> res!594209 e!847049)))

(declare-fun isEmpty!7963 (Option!2586) Bool)

(assert (=> d!373360 (= res!594209 (isEmpty!7963 lt!436381))))

(assert (=> d!373360 (= lt!436381 e!847051)))

(declare-fun c!217013 () Bool)

(assert (=> d!373360 (= c!217013 (and ((_ is Cons!13382) rules!2550) ((_ is Nil!13382) (t!118641 rules!2550))))))

(declare-fun lt!436383 () Unit!19458)

(declare-fun lt!436382 () Unit!19458)

(assert (=> d!373360 (= lt!436383 lt!436382)))

(declare-fun isPrefix!1079 (List!13446 List!13446) Bool)

(assert (=> d!373360 (isPrefix!1079 lt!436307 lt!436307)))

(declare-fun lemmaIsPrefixRefl!758 (List!13446 List!13446) Unit!19458)

(assert (=> d!373360 (= lt!436382 (lemmaIsPrefixRefl!758 lt!436307 lt!436307))))

(declare-fun rulesValidInductive!731 (LexerInterface!2010 List!13448) Bool)

(assert (=> d!373360 (rulesValidInductive!731 thiss!19762 rules!2550)))

(assert (=> d!373360 (= (maxPrefix!1020 thiss!19762 rules!2550 lt!436307) lt!436381)))

(declare-fun b!1321824 () Bool)

(assert (=> b!1321824 (= e!847049 e!847050)))

(declare-fun res!594211 () Bool)

(assert (=> b!1321824 (=> (not res!594211) (not e!847050))))

(declare-fun isDefined!2182 (Option!2586) Bool)

(assert (=> b!1321824 (= res!594211 (isDefined!2182 lt!436381))))

(assert (= (and d!373360 c!217013) b!1321817))

(assert (= (and d!373360 (not c!217013)) b!1321823))

(assert (= (or b!1321817 b!1321823) bm!89701))

(assert (= (and d!373360 (not res!594209)) b!1321824))

(assert (= (and b!1321824 res!594211) b!1321821))

(assert (= (and b!1321821 res!594208) b!1321820))

(assert (= (and b!1321820 res!594210) b!1321816))

(assert (= (and b!1321816 res!594212) b!1321822))

(assert (= (and b!1321822 res!594213) b!1321819))

(assert (= (and b!1321819 res!594214) b!1321818))

(declare-fun m!1477949 () Bool)

(assert (=> b!1321824 m!1477949))

(declare-fun m!1477951 () Bool)

(assert (=> b!1321816 m!1477951))

(declare-fun m!1477953 () Bool)

(assert (=> b!1321816 m!1477953))

(assert (=> b!1321816 m!1477953))

(declare-fun m!1477955 () Bool)

(assert (=> b!1321816 m!1477955))

(assert (=> b!1321816 m!1477955))

(declare-fun m!1477957 () Bool)

(assert (=> b!1321816 m!1477957))

(assert (=> b!1321820 m!1477951))

(declare-fun m!1477959 () Bool)

(assert (=> b!1321820 m!1477959))

(declare-fun m!1477961 () Bool)

(assert (=> b!1321820 m!1477961))

(declare-fun m!1477963 () Bool)

(assert (=> bm!89701 m!1477963))

(assert (=> b!1321822 m!1477951))

(declare-fun m!1477965 () Bool)

(assert (=> b!1321822 m!1477965))

(assert (=> b!1321822 m!1477965))

(declare-fun m!1477967 () Bool)

(assert (=> b!1321822 m!1477967))

(declare-fun m!1477969 () Bool)

(assert (=> b!1321823 m!1477969))

(assert (=> b!1321819 m!1477951))

(assert (=> b!1321819 m!1477953))

(assert (=> b!1321819 m!1477953))

(assert (=> b!1321819 m!1477955))

(assert (=> b!1321819 m!1477955))

(declare-fun m!1477971 () Bool)

(assert (=> b!1321819 m!1477971))

(assert (=> b!1321821 m!1477951))

(assert (=> b!1321821 m!1477953))

(assert (=> b!1321821 m!1477953))

(assert (=> b!1321821 m!1477955))

(declare-fun m!1477973 () Bool)

(assert (=> d!373360 m!1477973))

(declare-fun m!1477975 () Bool)

(assert (=> d!373360 m!1477975))

(declare-fun m!1477977 () Bool)

(assert (=> d!373360 m!1477977))

(declare-fun m!1477979 () Bool)

(assert (=> d!373360 m!1477979))

(assert (=> b!1321818 m!1477951))

(declare-fun m!1477981 () Bool)

(assert (=> b!1321818 m!1477981))

(assert (=> b!1321602 d!373360))

(declare-fun bs!331108 () Bool)

(declare-fun d!373394 () Bool)

(assert (= bs!331108 (and d!373394 b!1321623)))

(declare-fun lambda!54042 () Int)

(assert (=> bs!331108 (not (= lambda!54042 lambda!54038))))

(declare-fun bs!331109 () Bool)

(assert (= bs!331109 (and d!373394 b!1321609)))

(assert (=> bs!331109 (not (= lambda!54042 lambda!54039))))

(assert (=> d!373394 true))

(declare-fun order!8087 () Int)

(declare-fun dynLambda!5883 (Int Int) Int)

(assert (=> d!373394 (< (dynLambda!5883 order!8087 lambda!54038) (dynLambda!5883 order!8087 lambda!54042))))

(declare-fun forall!3304 (List!13448 Int) Bool)

(assert (=> d!373394 (= (exists!333 rules!2550 lambda!54038) (not (forall!3304 rules!2550 lambda!54042)))))

(declare-fun bs!331110 () Bool)

(assert (= bs!331110 d!373394))

(declare-fun m!1477993 () Bool)

(assert (=> bs!331110 m!1477993))

(assert (=> b!1321623 d!373394))

(declare-fun bs!331111 () Bool)

(declare-fun d!373398 () Bool)

(assert (= bs!331111 (and d!373398 b!1321623)))

(declare-fun lambda!54045 () Int)

(assert (=> bs!331111 (not (= lambda!54045 lambda!54038))))

(declare-fun bs!331112 () Bool)

(assert (= bs!331112 (and d!373398 b!1321609)))

(assert (=> bs!331112 (not (= lambda!54045 lambda!54039))))

(declare-fun bs!331113 () Bool)

(assert (= bs!331113 (and d!373398 d!373394)))

(assert (=> bs!331113 (not (= lambda!54045 lambda!54042))))

(assert (=> d!373398 true))

(assert (=> d!373398 true))

(declare-fun order!8089 () Int)

(declare-fun dynLambda!5884 (Int Int) Int)

(assert (=> d!373398 (< (dynLambda!5884 order!8089 lambda!54036) (dynLambda!5883 order!8087 lambda!54045))))

(assert (=> d!373398 (exists!333 rules!2550 lambda!54045)))

(declare-fun lt!436399 () Unit!19458)

(declare-fun choose!8086 (List!13448 Int Regex!3629) Unit!19458)

(assert (=> d!373398 (= lt!436399 (choose!8086 rules!2550 lambda!54036 lt!436290))))

(assert (=> d!373398 (contains!2363 (map!2939 rules!2550 lambda!54036) lt!436290)))

(assert (=> d!373398 (= (lemmaMapContains!58 rules!2550 lambda!54036 lt!436290) lt!436399)))

(declare-fun bs!331114 () Bool)

(assert (= bs!331114 d!373398))

(declare-fun m!1478015 () Bool)

(assert (=> bs!331114 m!1478015))

(declare-fun m!1478017 () Bool)

(assert (=> bs!331114 m!1478017))

(assert (=> bs!331114 m!1477705))

(assert (=> bs!331114 m!1477705))

(assert (=> bs!331114 m!1477763))

(assert (=> b!1321623 d!373398))

(declare-fun d!373408 () Bool)

(declare-fun lt!436403 () Int)

(assert (=> d!373408 (= lt!436403 (size!10907 (list!5054 lt!436304)))))

(declare-fun size!10909 (Conc!4400) Int)

(assert (=> d!373408 (= lt!436403 (size!10909 (c!216974 lt!436304)))))

(assert (=> d!373408 (= (size!10901 lt!436304) lt!436403)))

(declare-fun bs!331115 () Bool)

(assert (= bs!331115 d!373408))

(assert (=> bs!331115 m!1477665))

(assert (=> bs!331115 m!1477665))

(declare-fun m!1478019 () Bool)

(assert (=> bs!331115 m!1478019))

(declare-fun m!1478021 () Bool)

(assert (=> bs!331115 m!1478021))

(assert (=> b!1321620 d!373408))

(declare-fun d!373410 () Bool)

(declare-fun lt!436406 () BalanceConc!8740)

(assert (=> d!373410 (= (list!5054 lt!436406) (originalCharacters!3177 t2!34))))

(declare-fun dynLambda!5885 (Int TokenValue!2405) BalanceConc!8740)

(assert (=> d!373410 (= lt!436406 (dynLambda!5885 (toChars!3405 (transformation!2315 (rule!4060 t2!34))) (value!75610 t2!34)))))

(assert (=> d!373410 (= (charsOf!1287 t2!34) lt!436406)))

(declare-fun b_lambda!38615 () Bool)

(assert (=> (not b_lambda!38615) (not d!373410)))

(declare-fun t!118646 () Bool)

(declare-fun tb!70145 () Bool)

(assert (=> (and b!1321622 (= (toChars!3405 (transformation!2315 (rule!4060 t2!34))) (toChars!3405 (transformation!2315 (rule!4060 t2!34)))) t!118646) tb!70145))

(declare-fun b!1321898 () Bool)

(declare-fun e!847094 () Bool)

(declare-fun tp!383705 () Bool)

(declare-fun inv!17763 (Conc!4400) Bool)

(assert (=> b!1321898 (= e!847094 (and (inv!17763 (c!216974 (dynLambda!5885 (toChars!3405 (transformation!2315 (rule!4060 t2!34))) (value!75610 t2!34)))) tp!383705))))

(declare-fun result!85126 () Bool)

(declare-fun inv!17764 (BalanceConc!8740) Bool)

(assert (=> tb!70145 (= result!85126 (and (inv!17764 (dynLambda!5885 (toChars!3405 (transformation!2315 (rule!4060 t2!34))) (value!75610 t2!34))) e!847094))))

(assert (= tb!70145 b!1321898))

(declare-fun m!1478029 () Bool)

(assert (=> b!1321898 m!1478029))

(declare-fun m!1478031 () Bool)

(assert (=> tb!70145 m!1478031))

(assert (=> d!373410 t!118646))

(declare-fun b_and!88267 () Bool)

(assert (= b_and!88257 (and (=> t!118646 result!85126) b_and!88267)))

(declare-fun tb!70147 () Bool)

(declare-fun t!118648 () Bool)

(assert (=> (and b!1321630 (= (toChars!3405 (transformation!2315 (rule!4060 t1!34))) (toChars!3405 (transformation!2315 (rule!4060 t2!34)))) t!118648) tb!70147))

(declare-fun result!85130 () Bool)

(assert (= result!85130 result!85126))

(assert (=> d!373410 t!118648))

(declare-fun b_and!88269 () Bool)

(assert (= b_and!88261 (and (=> t!118648 result!85130) b_and!88269)))

(declare-fun t!118650 () Bool)

(declare-fun tb!70149 () Bool)

(assert (=> (and b!1321598 (= (toChars!3405 (transformation!2315 (h!18783 rules!2550))) (toChars!3405 (transformation!2315 (rule!4060 t2!34)))) t!118650) tb!70149))

(declare-fun result!85132 () Bool)

(assert (= result!85132 result!85126))

(assert (=> d!373410 t!118650))

(declare-fun b_and!88271 () Bool)

(assert (= b_and!88265 (and (=> t!118650 result!85132) b_and!88271)))

(declare-fun m!1478033 () Bool)

(assert (=> d!373410 m!1478033))

(declare-fun m!1478035 () Bool)

(assert (=> d!373410 m!1478035))

(assert (=> b!1321620 d!373410))

(declare-fun b!1321922 () Bool)

(declare-fun e!847109 () List!13446)

(assert (=> b!1321922 (= e!847109 (Cons!13380 (h!18781 lt!436301) (++!3418 (t!118639 lt!436301) (getSuffix!485 lt!436302 lt!436301))))))

(declare-fun b!1321921 () Bool)

(assert (=> b!1321921 (= e!847109 (getSuffix!485 lt!436302 lt!436301))))

(declare-fun b!1321923 () Bool)

(declare-fun res!594248 () Bool)

(declare-fun e!847110 () Bool)

(assert (=> b!1321923 (=> (not res!594248) (not e!847110))))

(declare-fun lt!436414 () List!13446)

(assert (=> b!1321923 (= res!594248 (= (size!10907 lt!436414) (+ (size!10907 lt!436301) (size!10907 (getSuffix!485 lt!436302 lt!436301)))))))

(declare-fun d!373414 () Bool)

(assert (=> d!373414 e!847110))

(declare-fun res!594249 () Bool)

(assert (=> d!373414 (=> (not res!594249) (not e!847110))))

(declare-fun content!1894 (List!13446) (InoxSet C!7548))

(assert (=> d!373414 (= res!594249 (= (content!1894 lt!436414) ((_ map or) (content!1894 lt!436301) (content!1894 (getSuffix!485 lt!436302 lt!436301)))))))

(assert (=> d!373414 (= lt!436414 e!847109)))

(declare-fun c!217037 () Bool)

(assert (=> d!373414 (= c!217037 ((_ is Nil!13380) lt!436301))))

(assert (=> d!373414 (= (++!3418 lt!436301 (getSuffix!485 lt!436302 lt!436301)) lt!436414)))

(declare-fun b!1321924 () Bool)

(assert (=> b!1321924 (= e!847110 (or (not (= (getSuffix!485 lt!436302 lt!436301) Nil!13380)) (= lt!436414 lt!436301)))))

(assert (= (and d!373414 c!217037) b!1321921))

(assert (= (and d!373414 (not c!217037)) b!1321922))

(assert (= (and d!373414 res!594249) b!1321923))

(assert (= (and b!1321923 res!594248) b!1321924))

(assert (=> b!1321922 m!1477713))

(declare-fun m!1478071 () Bool)

(assert (=> b!1321922 m!1478071))

(declare-fun m!1478073 () Bool)

(assert (=> b!1321923 m!1478073))

(declare-fun m!1478075 () Bool)

(assert (=> b!1321923 m!1478075))

(assert (=> b!1321923 m!1477713))

(declare-fun m!1478077 () Bool)

(assert (=> b!1321923 m!1478077))

(declare-fun m!1478079 () Bool)

(assert (=> d!373414 m!1478079))

(declare-fun m!1478081 () Bool)

(assert (=> d!373414 m!1478081))

(assert (=> d!373414 m!1477713))

(declare-fun m!1478083 () Bool)

(assert (=> d!373414 m!1478083))

(assert (=> b!1321619 d!373414))

(declare-fun d!373428 () Bool)

(declare-fun lt!436420 () List!13446)

(assert (=> d!373428 (= (++!3418 lt!436301 lt!436420) lt!436302)))

(declare-fun e!847119 () List!13446)

(assert (=> d!373428 (= lt!436420 e!847119)))

(declare-fun c!217043 () Bool)

(assert (=> d!373428 (= c!217043 ((_ is Cons!13380) lt!436301))))

(assert (=> d!373428 (>= (size!10907 lt!436302) (size!10907 lt!436301))))

(assert (=> d!373428 (= (getSuffix!485 lt!436302 lt!436301) lt!436420)))

(declare-fun b!1321941 () Bool)

(declare-fun tail!1898 (List!13446) List!13446)

(assert (=> b!1321941 (= e!847119 (getSuffix!485 (tail!1898 lt!436302) (t!118639 lt!436301)))))

(declare-fun b!1321942 () Bool)

(assert (=> b!1321942 (= e!847119 lt!436302)))

(assert (= (and d!373428 c!217043) b!1321941))

(assert (= (and d!373428 (not c!217043)) b!1321942))

(declare-fun m!1478099 () Bool)

(assert (=> d!373428 m!1478099))

(declare-fun m!1478101 () Bool)

(assert (=> d!373428 m!1478101))

(assert (=> d!373428 m!1478075))

(declare-fun m!1478103 () Bool)

(assert (=> b!1321941 m!1478103))

(assert (=> b!1321941 m!1478103))

(declare-fun m!1478105 () Bool)

(assert (=> b!1321941 m!1478105))

(assert (=> b!1321619 d!373428))

(declare-fun d!373432 () Bool)

(declare-fun lt!436426 () List!13446)

(declare-fun dynLambda!5886 (Int List!13446) Bool)

(assert (=> d!373432 (dynLambda!5886 lambda!54035 lt!436426)))

(declare-fun choose!8087 (Int) List!13446)

(assert (=> d!373432 (= lt!436426 (choose!8087 lambda!54035))))

(assert (=> d!373432 (Exists!787 lambda!54035)))

(assert (=> d!373432 (= (pickWitness!92 lambda!54035) lt!436426)))

(declare-fun b_lambda!38623 () Bool)

(assert (=> (not b_lambda!38623) (not d!373432)))

(declare-fun bs!331116 () Bool)

(assert (= bs!331116 d!373432))

(declare-fun m!1478111 () Bool)

(assert (=> bs!331116 m!1478111))

(declare-fun m!1478113 () Bool)

(assert (=> bs!331116 m!1478113))

(assert (=> bs!331116 m!1477733))

(assert (=> b!1321619 d!373432))

(declare-fun d!373436 () Bool)

(assert (=> d!373436 (= (isEmpty!7957 rules!2550) ((_ is Nil!13382) rules!2550))))

(assert (=> b!1321600 d!373436))

(declare-fun b!1321950 () Bool)

(declare-fun e!847125 () Bool)

(declare-fun lt!436429 () tuple2!13014)

(assert (=> b!1321950 (= e!847125 (not (isEmpty!7962 (_1!7393 lt!436429))))))

(declare-fun b!1321951 () Bool)

(declare-fun e!847123 () tuple2!13014)

(declare-fun lt!436427 () Option!2586)

(declare-fun lt!436428 () tuple2!13014)

(assert (=> b!1321951 (= e!847123 (tuple2!13015 (Cons!13383 (_1!7391 (v!21166 lt!436427)) (_1!7393 lt!436428)) (_2!7393 lt!436428)))))

(assert (=> b!1321951 (= lt!436428 (lexList!548 thiss!19762 rules!2550 (_2!7391 (v!21166 lt!436427))))))

(declare-fun b!1321952 () Bool)

(declare-fun e!847127 () Bool)

(assert (=> b!1321952 (= e!847127 e!847125)))

(declare-fun res!594259 () Bool)

(assert (=> b!1321952 (= res!594259 (< (size!10907 (_2!7393 lt!436429)) (size!10907 (list!5054 lt!436310))))))

(assert (=> b!1321952 (=> (not res!594259) (not e!847125))))

(declare-fun d!373438 () Bool)

(assert (=> d!373438 e!847127))

(declare-fun c!217044 () Bool)

(assert (=> d!373438 (= c!217044 (> (size!10908 (_1!7393 lt!436429)) 0))))

(assert (=> d!373438 (= lt!436429 e!847123)))

(declare-fun c!217047 () Bool)

(assert (=> d!373438 (= c!217047 ((_ is Some!2585) lt!436427))))

(assert (=> d!373438 (= lt!436427 (maxPrefix!1020 thiss!19762 rules!2550 (list!5054 lt!436310)))))

(assert (=> d!373438 (= (lexList!548 thiss!19762 rules!2550 (list!5054 lt!436310)) lt!436429)))

(declare-fun b!1321953 () Bool)

(assert (=> b!1321953 (= e!847127 (= (_2!7393 lt!436429) (list!5054 lt!436310)))))

(declare-fun b!1321954 () Bool)

(assert (=> b!1321954 (= e!847123 (tuple2!13015 Nil!13383 (list!5054 lt!436310)))))

(assert (= (and d!373438 c!217047) b!1321951))

(assert (= (and d!373438 (not c!217047)) b!1321954))

(assert (= (and d!373438 c!217044) b!1321952))

(assert (= (and d!373438 (not c!217044)) b!1321953))

(assert (= (and b!1321952 res!594259) b!1321950))

(declare-fun m!1478115 () Bool)

(assert (=> b!1321950 m!1478115))

(declare-fun m!1478117 () Bool)

(assert (=> b!1321951 m!1478117))

(declare-fun m!1478119 () Bool)

(assert (=> b!1321952 m!1478119))

(assert (=> b!1321952 m!1477739))

(declare-fun m!1478121 () Bool)

(assert (=> b!1321952 m!1478121))

(declare-fun m!1478125 () Bool)

(assert (=> d!373438 m!1478125))

(assert (=> d!373438 m!1477739))

(declare-fun m!1478131 () Bool)

(assert (=> d!373438 m!1478131))

(assert (=> b!1321621 d!373438))

(declare-fun d!373440 () Bool)

(assert (=> d!373440 (= (list!5054 lt!436310) (list!5058 (c!216974 lt!436310)))))

(declare-fun bs!331117 () Bool)

(assert (= bs!331117 d!373440))

(declare-fun m!1478139 () Bool)

(assert (=> bs!331117 m!1478139))

(assert (=> b!1321621 d!373440))

(declare-fun d!373444 () Bool)

(declare-fun lt!436436 () List!13450)

(declare-fun size!10910 (List!13450) Int)

(declare-fun size!10911 (List!13448) Int)

(assert (=> d!373444 (= (size!10910 lt!436436) (size!10911 rules!2550))))

(declare-fun e!847131 () List!13450)

(assert (=> d!373444 (= lt!436436 e!847131)))

(declare-fun c!217051 () Bool)

(assert (=> d!373444 (= c!217051 ((_ is Nil!13382) rules!2550))))

(assert (=> d!373444 (= (map!2939 rules!2550 lambda!54036) lt!436436)))

(declare-fun b!1321961 () Bool)

(assert (=> b!1321961 (= e!847131 Nil!13384)))

(declare-fun b!1321962 () Bool)

(declare-fun $colon$colon!157 (List!13450 Regex!3629) List!13450)

(declare-fun dynLambda!5887 (Int Rule!4430) Regex!3629)

(assert (=> b!1321962 (= e!847131 ($colon$colon!157 (map!2939 (t!118641 rules!2550) lambda!54036) (dynLambda!5887 lambda!54036 (h!18783 rules!2550))))))

(assert (= (and d!373444 c!217051) b!1321961))

(assert (= (and d!373444 (not c!217051)) b!1321962))

(declare-fun b_lambda!38625 () Bool)

(assert (=> (not b_lambda!38625) (not b!1321962)))

(declare-fun m!1478155 () Bool)

(assert (=> d!373444 m!1478155))

(declare-fun m!1478157 () Bool)

(assert (=> d!373444 m!1478157))

(declare-fun m!1478159 () Bool)

(assert (=> b!1321962 m!1478159))

(declare-fun m!1478161 () Bool)

(assert (=> b!1321962 m!1478161))

(assert (=> b!1321962 m!1478159))

(assert (=> b!1321962 m!1478161))

(declare-fun m!1478163 () Bool)

(assert (=> b!1321962 m!1478163))

(assert (=> b!1321599 d!373444))

(declare-fun bs!331122 () Bool)

(declare-fun d!373452 () Bool)

(assert (= bs!331122 (and d!373452 b!1321599)))

(declare-fun lambda!54053 () Int)

(assert (=> bs!331122 (not (= lambda!54053 lambda!54037))))

(declare-fun lambda!54054 () Int)

(assert (=> bs!331122 (= lambda!54054 lambda!54037)))

(declare-fun bs!331123 () Bool)

(assert (= bs!331123 d!373452))

(assert (=> bs!331123 (not (= lambda!54054 lambda!54053))))

(assert (=> d!373452 true))

(assert (=> d!373452 (= (matchR!1631 lt!436295 lt!436302) (exists!332 lt!436303 lambda!54054))))

(declare-fun lt!436440 () Unit!19458)

(declare-fun choose!8088 (Regex!3629 List!13450 List!13446) Unit!19458)

(assert (=> d!373452 (= lt!436440 (choose!8088 lt!436295 lt!436303 lt!436302))))

(declare-fun forall!3305 (List!13450 Int) Bool)

(assert (=> d!373452 (forall!3305 lt!436303 lambda!54053)))

(assert (=> d!373452 (= (matchRGenUnionSpec!66 lt!436295 lt!436303 lt!436302) lt!436440)))

(assert (=> bs!331123 m!1477751))

(declare-fun m!1478191 () Bool)

(assert (=> bs!331123 m!1478191))

(declare-fun m!1478193 () Bool)

(assert (=> bs!331123 m!1478193))

(declare-fun m!1478195 () Bool)

(assert (=> bs!331123 m!1478195))

(assert (=> b!1321599 d!373452))

(declare-fun bs!331124 () Bool)

(declare-fun d!373462 () Bool)

(assert (= bs!331124 (and d!373462 b!1321599)))

(declare-fun lambda!54057 () Int)

(assert (=> bs!331124 (not (= lambda!54057 lambda!54037))))

(declare-fun bs!331125 () Bool)

(assert (= bs!331125 (and d!373462 d!373452)))

(assert (=> bs!331125 (not (= lambda!54057 lambda!54053))))

(assert (=> bs!331125 (not (= lambda!54057 lambda!54054))))

(assert (=> d!373462 true))

(declare-fun order!8091 () Int)

(declare-fun dynLambda!5888 (Int Int) Int)

(assert (=> d!373462 (< (dynLambda!5888 order!8091 lambda!54037) (dynLambda!5888 order!8091 lambda!54057))))

(assert (=> d!373462 (= (exists!332 (map!2939 rules!2550 lambda!54036) lambda!54037) (not (forall!3305 (map!2939 rules!2550 lambda!54036) lambda!54057)))))

(declare-fun bs!331126 () Bool)

(assert (= bs!331126 d!373462))

(assert (=> bs!331126 m!1477705))

(declare-fun m!1478197 () Bool)

(assert (=> bs!331126 m!1478197))

(assert (=> b!1321599 d!373462))

(declare-fun bs!331127 () Bool)

(declare-fun d!373464 () Bool)

(assert (= bs!331127 (and d!373464 b!1321599)))

(declare-fun lambda!54058 () Int)

(assert (=> bs!331127 (not (= lambda!54058 lambda!54037))))

(declare-fun bs!331128 () Bool)

(assert (= bs!331128 (and d!373464 d!373452)))

(assert (=> bs!331128 (not (= lambda!54058 lambda!54053))))

(assert (=> bs!331128 (not (= lambda!54058 lambda!54054))))

(declare-fun bs!331129 () Bool)

(assert (= bs!331129 (and d!373464 d!373462)))

(assert (=> bs!331129 (= lambda!54058 lambda!54057)))

(assert (=> d!373464 true))

(assert (=> d!373464 (< (dynLambda!5888 order!8091 lambda!54037) (dynLambda!5888 order!8091 lambda!54058))))

(assert (=> d!373464 (= (exists!332 lt!436303 lambda!54037) (not (forall!3305 lt!436303 lambda!54058)))))

(declare-fun bs!331130 () Bool)

(assert (= bs!331130 d!373464))

(declare-fun m!1478199 () Bool)

(assert (=> bs!331130 m!1478199))

(assert (=> b!1321599 d!373464))

(declare-fun d!373466 () Bool)

(declare-fun lt!436443 () Bool)

(declare-fun isEmpty!7964 (List!13446) Bool)

(assert (=> d!373466 (= lt!436443 (isEmpty!7964 (list!5054 (_2!7392 lt!436300))))))

(declare-fun isEmpty!7965 (Conc!4400) Bool)

(assert (=> d!373466 (= lt!436443 (isEmpty!7965 (c!216974 (_2!7392 lt!436300))))))

(assert (=> d!373466 (= (isEmpty!7956 (_2!7392 lt!436300)) lt!436443)))

(declare-fun bs!331131 () Bool)

(assert (= bs!331131 d!373466))

(declare-fun m!1478201 () Bool)

(assert (=> bs!331131 m!1478201))

(assert (=> bs!331131 m!1478201))

(declare-fun m!1478203 () Bool)

(assert (=> bs!331131 m!1478203))

(declare-fun m!1478205 () Bool)

(assert (=> bs!331131 m!1478205))

(assert (=> b!1321596 d!373466))

(declare-fun d!373468 () Bool)

(declare-fun list!5059 (Conc!4401) List!13449)

(assert (=> d!373468 (= (list!5055 (_1!7392 lt!436289)) (list!5059 (c!216976 (_1!7392 lt!436289))))))

(declare-fun bs!331132 () Bool)

(assert (= bs!331132 d!373468))

(declare-fun m!1478207 () Bool)

(assert (=> bs!331132 m!1478207))

(assert (=> b!1321617 d!373468))

(declare-fun b!1322016 () Bool)

(declare-fun res!594289 () Bool)

(declare-fun e!847164 () Bool)

(assert (=> b!1322016 (=> (not res!594289) (not e!847164))))

(declare-fun lt!436452 () tuple2!13012)

(assert (=> b!1322016 (= res!594289 (= (list!5055 (_1!7392 lt!436452)) (_1!7393 (lexList!548 thiss!19762 rules!2550 (list!5054 lt!436311)))))))

(declare-fun b!1322017 () Bool)

(declare-fun e!847163 () Bool)

(declare-fun e!847165 () Bool)

(assert (=> b!1322017 (= e!847163 e!847165)))

(declare-fun res!594291 () Bool)

(assert (=> b!1322017 (= res!594291 (< (size!10901 (_2!7392 lt!436452)) (size!10901 lt!436311)))))

(assert (=> b!1322017 (=> (not res!594291) (not e!847165))))

(declare-fun b!1322018 () Bool)

(assert (=> b!1322018 (= e!847164 (= (list!5054 (_2!7392 lt!436452)) (_2!7393 (lexList!548 thiss!19762 rules!2550 (list!5054 lt!436311)))))))

(declare-fun b!1322019 () Bool)

(declare-fun isEmpty!7966 (BalanceConc!8742) Bool)

(assert (=> b!1322019 (= e!847165 (not (isEmpty!7966 (_1!7392 lt!436452))))))

(declare-fun d!373470 () Bool)

(assert (=> d!373470 e!847164))

(declare-fun res!594290 () Bool)

(assert (=> d!373470 (=> (not res!594290) (not e!847164))))

(assert (=> d!373470 (= res!594290 e!847163)))

(declare-fun c!217063 () Bool)

(declare-fun size!10912 (BalanceConc!8742) Int)

(assert (=> d!373470 (= c!217063 (> (size!10912 (_1!7392 lt!436452)) 0))))

(declare-fun lexTailRecV2!371 (LexerInterface!2010 List!13448 BalanceConc!8740 BalanceConc!8740 BalanceConc!8740 BalanceConc!8742) tuple2!13012)

(assert (=> d!373470 (= lt!436452 (lexTailRecV2!371 thiss!19762 rules!2550 lt!436311 (BalanceConc!8741 Empty!4400) lt!436311 (BalanceConc!8743 Empty!4401)))))

(assert (=> d!373470 (= (lex!845 thiss!19762 rules!2550 lt!436311) lt!436452)))

(declare-fun b!1322020 () Bool)

(assert (=> b!1322020 (= e!847163 (= (_2!7392 lt!436452) lt!436311))))

(assert (= (and d!373470 c!217063) b!1322017))

(assert (= (and d!373470 (not c!217063)) b!1322020))

(assert (= (and b!1322017 res!594291) b!1322019))

(assert (= (and d!373470 res!594290) b!1322016))

(assert (= (and b!1322016 res!594289) b!1322018))

(declare-fun m!1478221 () Bool)

(assert (=> b!1322019 m!1478221))

(declare-fun m!1478223 () Bool)

(assert (=> b!1322017 m!1478223))

(declare-fun m!1478225 () Bool)

(assert (=> b!1322017 m!1478225))

(declare-fun m!1478227 () Bool)

(assert (=> b!1322016 m!1478227))

(assert (=> b!1322016 m!1477727))

(assert (=> b!1322016 m!1477727))

(assert (=> b!1322016 m!1477729))

(declare-fun m!1478229 () Bool)

(assert (=> d!373470 m!1478229))

(declare-fun m!1478231 () Bool)

(assert (=> d!373470 m!1478231))

(declare-fun m!1478233 () Bool)

(assert (=> b!1322018 m!1478233))

(assert (=> b!1322018 m!1477727))

(assert (=> b!1322018 m!1477727))

(assert (=> b!1322018 m!1477729))

(assert (=> b!1321617 d!373470))

(declare-fun d!373474 () Bool)

(declare-fun lt!436464 () BalanceConc!8740)

(declare-fun printList!566 (LexerInterface!2010 List!13449) List!13446)

(assert (=> d!373474 (= (list!5054 lt!436464) (printList!566 thiss!19762 (list!5055 (singletonSeq!900 t2!34))))))

(declare-fun printTailRec!548 (LexerInterface!2010 BalanceConc!8742 Int BalanceConc!8740) BalanceConc!8740)

(assert (=> d!373474 (= lt!436464 (printTailRec!548 thiss!19762 (singletonSeq!900 t2!34) 0 (BalanceConc!8741 Empty!4400)))))

(assert (=> d!373474 (= (print!784 thiss!19762 (singletonSeq!900 t2!34)) lt!436464)))

(declare-fun bs!331141 () Bool)

(assert (= bs!331141 d!373474))

(declare-fun m!1478259 () Bool)

(assert (=> bs!331141 m!1478259))

(assert (=> bs!331141 m!1477645))

(declare-fun m!1478261 () Bool)

(assert (=> bs!331141 m!1478261))

(assert (=> bs!331141 m!1478261))

(declare-fun m!1478263 () Bool)

(assert (=> bs!331141 m!1478263))

(assert (=> bs!331141 m!1477645))

(declare-fun m!1478265 () Bool)

(assert (=> bs!331141 m!1478265))

(assert (=> b!1321617 d!373474))

(declare-fun d!373486 () Bool)

(declare-fun e!847170 () Bool)

(assert (=> d!373486 e!847170))

(declare-fun res!594297 () Bool)

(assert (=> d!373486 (=> (not res!594297) (not e!847170))))

(declare-fun lt!436467 () BalanceConc!8742)

(assert (=> d!373486 (= res!594297 (= (list!5055 lt!436467) (Cons!13383 t2!34 Nil!13383)))))

(declare-fun singleton!392 (Token!4292) BalanceConc!8742)

(assert (=> d!373486 (= lt!436467 (singleton!392 t2!34))))

(assert (=> d!373486 (= (singletonSeq!900 t2!34) lt!436467)))

(declare-fun b!1322034 () Bool)

(declare-fun isBalanced!1286 (Conc!4401) Bool)

(assert (=> b!1322034 (= e!847170 (isBalanced!1286 (c!216976 lt!436467)))))

(assert (= (and d!373486 res!594297) b!1322034))

(declare-fun m!1478271 () Bool)

(assert (=> d!373486 m!1478271))

(declare-fun m!1478273 () Bool)

(assert (=> d!373486 m!1478273))

(declare-fun m!1478275 () Bool)

(assert (=> b!1322034 m!1478275))

(assert (=> b!1321617 d!373486))

(declare-fun b!1322035 () Bool)

(declare-fun res!594302 () Bool)

(declare-fun e!847172 () Bool)

(assert (=> b!1322035 (=> (not res!594302) (not e!847172))))

(declare-fun lt!436469 () Option!2586)

(assert (=> b!1322035 (= res!594302 (= (++!3418 (list!5054 (charsOf!1287 (_1!7391 (get!4265 lt!436469)))) (_2!7391 (get!4265 lt!436469))) lt!436297))))

(declare-fun b!1322036 () Bool)

(declare-fun e!847173 () Option!2586)

(declare-fun call!89720 () Option!2586)

(assert (=> b!1322036 (= e!847173 call!89720)))

(declare-fun b!1322037 () Bool)

(assert (=> b!1322037 (= e!847172 (contains!2361 rules!2550 (rule!4060 (_1!7391 (get!4265 lt!436469)))))))

(declare-fun bm!89715 () Bool)

(assert (=> bm!89715 (= call!89720 (maxPrefixOneRule!584 thiss!19762 (h!18783 rules!2550) lt!436297))))

(declare-fun b!1322038 () Bool)

(declare-fun res!594304 () Bool)

(assert (=> b!1322038 (=> (not res!594304) (not e!847172))))

(assert (=> b!1322038 (= res!594304 (matchR!1631 (regex!2315 (rule!4060 (_1!7391 (get!4265 lt!436469)))) (list!5054 (charsOf!1287 (_1!7391 (get!4265 lt!436469))))))))

(declare-fun b!1322039 () Bool)

(declare-fun res!594300 () Bool)

(assert (=> b!1322039 (=> (not res!594300) (not e!847172))))

(assert (=> b!1322039 (= res!594300 (< (size!10907 (_2!7391 (get!4265 lt!436469))) (size!10907 lt!436297)))))

(declare-fun b!1322040 () Bool)

(declare-fun res!594298 () Bool)

(assert (=> b!1322040 (=> (not res!594298) (not e!847172))))

(assert (=> b!1322040 (= res!594298 (= (list!5054 (charsOf!1287 (_1!7391 (get!4265 lt!436469)))) (originalCharacters!3177 (_1!7391 (get!4265 lt!436469)))))))

(declare-fun b!1322041 () Bool)

(declare-fun res!594303 () Bool)

(assert (=> b!1322041 (=> (not res!594303) (not e!847172))))

(assert (=> b!1322041 (= res!594303 (= (value!75610 (_1!7391 (get!4265 lt!436469))) (apply!3070 (transformation!2315 (rule!4060 (_1!7391 (get!4265 lt!436469)))) (seqFromList!1602 (originalCharacters!3177 (_1!7391 (get!4265 lt!436469)))))))))

(declare-fun b!1322042 () Bool)

(declare-fun lt!436472 () Option!2586)

(declare-fun lt!436468 () Option!2586)

(assert (=> b!1322042 (= e!847173 (ite (and ((_ is None!2585) lt!436472) ((_ is None!2585) lt!436468)) None!2585 (ite ((_ is None!2585) lt!436468) lt!436472 (ite ((_ is None!2585) lt!436472) lt!436468 (ite (>= (size!10900 (_1!7391 (v!21166 lt!436472))) (size!10900 (_1!7391 (v!21166 lt!436468)))) lt!436472 lt!436468)))))))

(assert (=> b!1322042 (= lt!436472 call!89720)))

(assert (=> b!1322042 (= lt!436468 (maxPrefix!1020 thiss!19762 (t!118641 rules!2550) lt!436297))))

(declare-fun d!373492 () Bool)

(declare-fun e!847171 () Bool)

(assert (=> d!373492 e!847171))

(declare-fun res!594299 () Bool)

(assert (=> d!373492 (=> res!594299 e!847171)))

(assert (=> d!373492 (= res!594299 (isEmpty!7963 lt!436469))))

(assert (=> d!373492 (= lt!436469 e!847173)))

(declare-fun c!217064 () Bool)

(assert (=> d!373492 (= c!217064 (and ((_ is Cons!13382) rules!2550) ((_ is Nil!13382) (t!118641 rules!2550))))))

(declare-fun lt!436471 () Unit!19458)

(declare-fun lt!436470 () Unit!19458)

(assert (=> d!373492 (= lt!436471 lt!436470)))

(assert (=> d!373492 (isPrefix!1079 lt!436297 lt!436297)))

(assert (=> d!373492 (= lt!436470 (lemmaIsPrefixRefl!758 lt!436297 lt!436297))))

(assert (=> d!373492 (rulesValidInductive!731 thiss!19762 rules!2550)))

(assert (=> d!373492 (= (maxPrefix!1020 thiss!19762 rules!2550 lt!436297) lt!436469)))

(declare-fun b!1322043 () Bool)

(assert (=> b!1322043 (= e!847171 e!847172)))

(declare-fun res!594301 () Bool)

(assert (=> b!1322043 (=> (not res!594301) (not e!847172))))

(assert (=> b!1322043 (= res!594301 (isDefined!2182 lt!436469))))

(assert (= (and d!373492 c!217064) b!1322036))

(assert (= (and d!373492 (not c!217064)) b!1322042))

(assert (= (or b!1322036 b!1322042) bm!89715))

(assert (= (and d!373492 (not res!594299)) b!1322043))

(assert (= (and b!1322043 res!594301) b!1322040))

(assert (= (and b!1322040 res!594298) b!1322039))

(assert (= (and b!1322039 res!594300) b!1322035))

(assert (= (and b!1322035 res!594302) b!1322041))

(assert (= (and b!1322041 res!594303) b!1322038))

(assert (= (and b!1322038 res!594304) b!1322037))

(declare-fun m!1478277 () Bool)

(assert (=> b!1322043 m!1478277))

(declare-fun m!1478279 () Bool)

(assert (=> b!1322035 m!1478279))

(declare-fun m!1478281 () Bool)

(assert (=> b!1322035 m!1478281))

(assert (=> b!1322035 m!1478281))

(declare-fun m!1478283 () Bool)

(assert (=> b!1322035 m!1478283))

(assert (=> b!1322035 m!1478283))

(declare-fun m!1478285 () Bool)

(assert (=> b!1322035 m!1478285))

(assert (=> b!1322039 m!1478279))

(declare-fun m!1478287 () Bool)

(assert (=> b!1322039 m!1478287))

(declare-fun m!1478289 () Bool)

(assert (=> b!1322039 m!1478289))

(declare-fun m!1478291 () Bool)

(assert (=> bm!89715 m!1478291))

(assert (=> b!1322041 m!1478279))

(declare-fun m!1478293 () Bool)

(assert (=> b!1322041 m!1478293))

(assert (=> b!1322041 m!1478293))

(declare-fun m!1478295 () Bool)

(assert (=> b!1322041 m!1478295))

(declare-fun m!1478297 () Bool)

(assert (=> b!1322042 m!1478297))

(assert (=> b!1322038 m!1478279))

(assert (=> b!1322038 m!1478281))

(assert (=> b!1322038 m!1478281))

(assert (=> b!1322038 m!1478283))

(assert (=> b!1322038 m!1478283))

(declare-fun m!1478299 () Bool)

(assert (=> b!1322038 m!1478299))

(assert (=> b!1322040 m!1478279))

(assert (=> b!1322040 m!1478281))

(assert (=> b!1322040 m!1478281))

(assert (=> b!1322040 m!1478283))

(declare-fun m!1478301 () Bool)

(assert (=> d!373492 m!1478301))

(declare-fun m!1478303 () Bool)

(assert (=> d!373492 m!1478303))

(declare-fun m!1478305 () Bool)

(assert (=> d!373492 m!1478305))

(assert (=> d!373492 m!1477979))

(assert (=> b!1322037 m!1478279))

(declare-fun m!1478307 () Bool)

(assert (=> b!1322037 m!1478307))

(assert (=> b!1321595 d!373492))

(declare-fun d!373494 () Bool)

(assert (=> d!373494 (= (list!5054 lt!436304) (list!5058 (c!216974 lt!436304)))))

(declare-fun bs!331147 () Bool)

(assert (= bs!331147 d!373494))

(declare-fun m!1478309 () Bool)

(assert (=> bs!331147 m!1478309))

(assert (=> b!1321595 d!373494))

(declare-fun d!373496 () Bool)

(assert (=> d!373496 (= (list!5055 (_1!7392 lt!436300)) (list!5059 (c!216976 (_1!7392 lt!436300))))))

(declare-fun bs!331148 () Bool)

(assert (= bs!331148 d!373496))

(declare-fun m!1478311 () Bool)

(assert (=> bs!331148 m!1478311))

(assert (=> b!1321597 d!373496))

(declare-fun d!373498 () Bool)

(declare-fun lt!436475 () BalanceConc!8740)

(assert (=> d!373498 (= (list!5054 lt!436475) (printList!566 thiss!19762 (list!5055 (singletonSeq!900 t1!34))))))

(assert (=> d!373498 (= lt!436475 (printTailRec!548 thiss!19762 (singletonSeq!900 t1!34) 0 (BalanceConc!8741 Empty!4400)))))

(assert (=> d!373498 (= (print!784 thiss!19762 (singletonSeq!900 t1!34)) lt!436475)))

(declare-fun bs!331149 () Bool)

(assert (= bs!331149 d!373498))

(declare-fun m!1478313 () Bool)

(assert (=> bs!331149 m!1478313))

(assert (=> bs!331149 m!1477687))

(declare-fun m!1478315 () Bool)

(assert (=> bs!331149 m!1478315))

(assert (=> bs!331149 m!1478315))

(declare-fun m!1478317 () Bool)

(assert (=> bs!331149 m!1478317))

(assert (=> bs!331149 m!1477687))

(declare-fun m!1478319 () Bool)

(assert (=> bs!331149 m!1478319))

(assert (=> b!1321597 d!373498))

(declare-fun b!1322046 () Bool)

(declare-fun res!594307 () Bool)

(declare-fun e!847177 () Bool)

(assert (=> b!1322046 (=> (not res!594307) (not e!847177))))

(declare-fun lt!436476 () tuple2!13012)

(assert (=> b!1322046 (= res!594307 (= (list!5055 (_1!7392 lt!436476)) (_1!7393 (lexList!548 thiss!19762 rules!2550 (list!5054 lt!436310)))))))

(declare-fun b!1322047 () Bool)

(declare-fun e!847176 () Bool)

(declare-fun e!847178 () Bool)

(assert (=> b!1322047 (= e!847176 e!847178)))

(declare-fun res!594309 () Bool)

(assert (=> b!1322047 (= res!594309 (< (size!10901 (_2!7392 lt!436476)) (size!10901 lt!436310)))))

(assert (=> b!1322047 (=> (not res!594309) (not e!847178))))

(declare-fun b!1322048 () Bool)

(assert (=> b!1322048 (= e!847177 (= (list!5054 (_2!7392 lt!436476)) (_2!7393 (lexList!548 thiss!19762 rules!2550 (list!5054 lt!436310)))))))

(declare-fun b!1322049 () Bool)

(assert (=> b!1322049 (= e!847178 (not (isEmpty!7966 (_1!7392 lt!436476))))))

(declare-fun d!373500 () Bool)

(assert (=> d!373500 e!847177))

(declare-fun res!594308 () Bool)

(assert (=> d!373500 (=> (not res!594308) (not e!847177))))

(assert (=> d!373500 (= res!594308 e!847176)))

(declare-fun c!217065 () Bool)

(assert (=> d!373500 (= c!217065 (> (size!10912 (_1!7392 lt!436476)) 0))))

(assert (=> d!373500 (= lt!436476 (lexTailRecV2!371 thiss!19762 rules!2550 lt!436310 (BalanceConc!8741 Empty!4400) lt!436310 (BalanceConc!8743 Empty!4401)))))

(assert (=> d!373500 (= (lex!845 thiss!19762 rules!2550 lt!436310) lt!436476)))

(declare-fun b!1322050 () Bool)

(assert (=> b!1322050 (= e!847176 (= (_2!7392 lt!436476) lt!436310))))

(assert (= (and d!373500 c!217065) b!1322047))

(assert (= (and d!373500 (not c!217065)) b!1322050))

(assert (= (and b!1322047 res!594309) b!1322049))

(assert (= (and d!373500 res!594308) b!1322046))

(assert (= (and b!1322046 res!594307) b!1322048))

(declare-fun m!1478321 () Bool)

(assert (=> b!1322049 m!1478321))

(declare-fun m!1478323 () Bool)

(assert (=> b!1322047 m!1478323))

(declare-fun m!1478325 () Bool)

(assert (=> b!1322047 m!1478325))

(declare-fun m!1478327 () Bool)

(assert (=> b!1322046 m!1478327))

(assert (=> b!1322046 m!1477739))

(assert (=> b!1322046 m!1477739))

(assert (=> b!1322046 m!1477741))

(declare-fun m!1478329 () Bool)

(assert (=> d!373500 m!1478329))

(declare-fun m!1478331 () Bool)

(assert (=> d!373500 m!1478331))

(declare-fun m!1478333 () Bool)

(assert (=> b!1322048 m!1478333))

(assert (=> b!1322048 m!1477739))

(assert (=> b!1322048 m!1477739))

(assert (=> b!1322048 m!1477741))

(assert (=> b!1321597 d!373500))

(declare-fun d!373502 () Bool)

(declare-fun e!847179 () Bool)

(assert (=> d!373502 e!847179))

(declare-fun res!594310 () Bool)

(assert (=> d!373502 (=> (not res!594310) (not e!847179))))

(declare-fun lt!436478 () BalanceConc!8742)

(assert (=> d!373502 (= res!594310 (= (list!5055 lt!436478) (Cons!13383 t1!34 Nil!13383)))))

(assert (=> d!373502 (= lt!436478 (singleton!392 t1!34))))

(assert (=> d!373502 (= (singletonSeq!900 t1!34) lt!436478)))

(declare-fun b!1322051 () Bool)

(assert (=> b!1322051 (= e!847179 (isBalanced!1286 (c!216976 lt!436478)))))

(assert (= (and d!373502 res!594310) b!1322051))

(declare-fun m!1478335 () Bool)

(assert (=> d!373502 m!1478335))

(declare-fun m!1478337 () Bool)

(assert (=> d!373502 m!1478337))

(declare-fun m!1478339 () Bool)

(assert (=> b!1322051 m!1478339))

(assert (=> b!1321597 d!373502))

(declare-fun b!1322074 () Bool)

(declare-fun e!847198 () Bool)

(declare-fun lt!436490 () Rule!4430)

(assert (=> b!1322074 (= e!847198 (contains!2361 rules!2550 lt!436490))))

(declare-fun b!1322075 () Bool)

(declare-fun e!847199 () Bool)

(declare-fun dynLambda!5891 (Int Rule!4430) Bool)

(assert (=> b!1322075 (= e!847199 (dynLambda!5891 lambda!54038 (h!18783 rules!2550)))))

(declare-fun b!1322076 () Bool)

(declare-fun lt!436489 () Unit!19458)

(declare-fun Unit!19462 () Unit!19458)

(assert (=> b!1322076 (= lt!436489 Unit!19462)))

(assert (=> b!1322076 false))

(declare-fun e!847196 () Rule!4430)

(declare-fun head!2296 (List!13448) Rule!4430)

(assert (=> b!1322076 (= e!847196 (head!2296 rules!2550))))

(declare-fun b!1322077 () Bool)

(declare-fun e!847197 () Rule!4430)

(assert (=> b!1322077 (= e!847197 (h!18783 rules!2550))))

(declare-fun d!373504 () Bool)

(assert (=> d!373504 e!847198))

(declare-fun res!594322 () Bool)

(assert (=> d!373504 (=> (not res!594322) (not e!847198))))

(assert (=> d!373504 (= res!594322 (dynLambda!5891 lambda!54038 lt!436490))))

(assert (=> d!373504 (= lt!436490 e!847197)))

(declare-fun c!217073 () Bool)

(assert (=> d!373504 (= c!217073 e!847199)))

(declare-fun res!594321 () Bool)

(assert (=> d!373504 (=> (not res!594321) (not e!847199))))

(assert (=> d!373504 (= res!594321 ((_ is Cons!13382) rules!2550))))

(assert (=> d!373504 (exists!333 rules!2550 lambda!54038)))

(assert (=> d!373504 (= (getWitness!224 rules!2550 lambda!54038) lt!436490)))

(declare-fun b!1322078 () Bool)

(assert (=> b!1322078 (= e!847196 (getWitness!224 (t!118641 rules!2550) lambda!54038))))

(declare-fun b!1322079 () Bool)

(assert (=> b!1322079 (= e!847197 e!847196)))

(declare-fun c!217072 () Bool)

(assert (=> b!1322079 (= c!217072 ((_ is Cons!13382) rules!2550))))

(assert (= (and d!373504 res!594321) b!1322075))

(assert (= (and d!373504 c!217073) b!1322077))

(assert (= (and d!373504 (not c!217073)) b!1322079))

(assert (= (and b!1322079 c!217072) b!1322078))

(assert (= (and b!1322079 (not c!217072)) b!1322076))

(assert (= (and d!373504 res!594322) b!1322074))

(declare-fun b_lambda!38629 () Bool)

(assert (=> (not b_lambda!38629) (not b!1322075)))

(declare-fun b_lambda!38631 () Bool)

(assert (=> (not b_lambda!38631) (not d!373504)))

(declare-fun m!1478377 () Bool)

(assert (=> d!373504 m!1478377))

(assert (=> d!373504 m!1477637))

(declare-fun m!1478379 () Bool)

(assert (=> b!1322078 m!1478379))

(declare-fun m!1478381 () Bool)

(assert (=> b!1322076 m!1478381))

(declare-fun m!1478383 () Bool)

(assert (=> b!1322075 m!1478383))

(declare-fun m!1478385 () Bool)

(assert (=> b!1322074 m!1478385))

(assert (=> b!1321597 d!373504))

(declare-fun d!373518 () Bool)

(declare-fun lt!436493 () Bool)

(declare-fun content!1895 (List!13450) (InoxSet Regex!3629))

(assert (=> d!373518 (= lt!436493 (select (content!1895 (map!2939 rules!2550 lambda!54036)) lt!436290))))

(declare-fun e!847204 () Bool)

(assert (=> d!373518 (= lt!436493 e!847204)))

(declare-fun res!594327 () Bool)

(assert (=> d!373518 (=> (not res!594327) (not e!847204))))

(assert (=> d!373518 (= res!594327 ((_ is Cons!13384) (map!2939 rules!2550 lambda!54036)))))

(assert (=> d!373518 (= (contains!2363 (map!2939 rules!2550 lambda!54036) lt!436290) lt!436493)))

(declare-fun b!1322084 () Bool)

(declare-fun e!847205 () Bool)

(assert (=> b!1322084 (= e!847204 e!847205)))

(declare-fun res!594328 () Bool)

(assert (=> b!1322084 (=> res!594328 e!847205)))

(assert (=> b!1322084 (= res!594328 (= (h!18785 (map!2939 rules!2550 lambda!54036)) lt!436290))))

(declare-fun b!1322085 () Bool)

(assert (=> b!1322085 (= e!847205 (contains!2363 (t!118643 (map!2939 rules!2550 lambda!54036)) lt!436290))))

(assert (= (and d!373518 res!594327) b!1322084))

(assert (= (and b!1322084 (not res!594328)) b!1322085))

(assert (=> d!373518 m!1477705))

(declare-fun m!1478387 () Bool)

(assert (=> d!373518 m!1478387))

(declare-fun m!1478389 () Bool)

(assert (=> d!373518 m!1478389))

(declare-fun m!1478391 () Bool)

(assert (=> b!1322085 m!1478391))

(assert (=> b!1321618 d!373518))

(assert (=> b!1321618 d!373444))

(declare-fun b!1322098 () Bool)

(declare-fun lt!436498 () Unit!19458)

(declare-fun Unit!19463 () Unit!19458)

(assert (=> b!1322098 (= lt!436498 Unit!19463)))

(assert (=> b!1322098 false))

(declare-fun e!847216 () Regex!3629)

(declare-fun head!2297 (List!13450) Regex!3629)

(assert (=> b!1322098 (= e!847216 (head!2297 (map!2939 rules!2550 lambda!54036)))))

(declare-fun b!1322099 () Bool)

(declare-fun e!847215 () Regex!3629)

(assert (=> b!1322099 (= e!847215 e!847216)))

(declare-fun c!217078 () Bool)

(assert (=> b!1322099 (= c!217078 ((_ is Cons!13384) (map!2939 rules!2550 lambda!54036)))))

(declare-fun b!1322100 () Bool)

(assert (=> b!1322100 (= e!847215 (h!18785 (map!2939 rules!2550 lambda!54036)))))

(declare-fun b!1322101 () Bool)

(assert (=> b!1322101 (= e!847216 (getWitness!225 (t!118643 (map!2939 rules!2550 lambda!54036)) lambda!54037))))

(declare-fun lt!436499 () Regex!3629)

(declare-fun b!1322102 () Bool)

(declare-fun e!847214 () Bool)

(assert (=> b!1322102 (= e!847214 (contains!2363 (map!2939 rules!2550 lambda!54036) lt!436499))))

(declare-fun d!373520 () Bool)

(assert (=> d!373520 e!847214))

(declare-fun res!594334 () Bool)

(assert (=> d!373520 (=> (not res!594334) (not e!847214))))

(declare-fun dynLambda!5893 (Int Regex!3629) Bool)

(assert (=> d!373520 (= res!594334 (dynLambda!5893 lambda!54037 lt!436499))))

(assert (=> d!373520 (= lt!436499 e!847215)))

(declare-fun c!217079 () Bool)

(declare-fun e!847217 () Bool)

(assert (=> d!373520 (= c!217079 e!847217)))

(declare-fun res!594333 () Bool)

(assert (=> d!373520 (=> (not res!594333) (not e!847217))))

(assert (=> d!373520 (= res!594333 ((_ is Cons!13384) (map!2939 rules!2550 lambda!54036)))))

(assert (=> d!373520 (exists!332 (map!2939 rules!2550 lambda!54036) lambda!54037)))

(assert (=> d!373520 (= (getWitness!225 (map!2939 rules!2550 lambda!54036) lambda!54037) lt!436499)))

(declare-fun b!1322103 () Bool)

(assert (=> b!1322103 (= e!847217 (dynLambda!5893 lambda!54037 (h!18785 (map!2939 rules!2550 lambda!54036))))))

(assert (= (and d!373520 res!594333) b!1322103))

(assert (= (and d!373520 c!217079) b!1322100))

(assert (= (and d!373520 (not c!217079)) b!1322099))

(assert (= (and b!1322099 c!217078) b!1322101))

(assert (= (and b!1322099 (not c!217078)) b!1322098))

(assert (= (and d!373520 res!594334) b!1322102))

(declare-fun b_lambda!38633 () Bool)

(assert (=> (not b_lambda!38633) (not d!373520)))

(declare-fun b_lambda!38635 () Bool)

(assert (=> (not b_lambda!38635) (not b!1322103)))

(declare-fun m!1478393 () Bool)

(assert (=> b!1322103 m!1478393))

(declare-fun m!1478395 () Bool)

(assert (=> d!373520 m!1478395))

(assert (=> d!373520 m!1477705))

(assert (=> d!373520 m!1477707))

(assert (=> b!1322102 m!1477705))

(declare-fun m!1478397 () Bool)

(assert (=> b!1322102 m!1478397))

(assert (=> b!1322098 m!1477705))

(declare-fun m!1478399 () Bool)

(assert (=> b!1322098 m!1478399))

(declare-fun m!1478401 () Bool)

(assert (=> b!1322101 m!1478401))

(assert (=> b!1321618 d!373520))

(declare-fun d!373522 () Bool)

(declare-fun lt!436500 () Bool)

(assert (=> d!373522 (= lt!436500 (select (content!1893 rules!2550) (rule!4060 t1!34)))))

(declare-fun e!847219 () Bool)

(assert (=> d!373522 (= lt!436500 e!847219)))

(declare-fun res!594335 () Bool)

(assert (=> d!373522 (=> (not res!594335) (not e!847219))))

(assert (=> d!373522 (= res!594335 ((_ is Cons!13382) rules!2550))))

(assert (=> d!373522 (= (contains!2361 rules!2550 (rule!4060 t1!34)) lt!436500)))

(declare-fun b!1322104 () Bool)

(declare-fun e!847218 () Bool)

(assert (=> b!1322104 (= e!847219 e!847218)))

(declare-fun res!594336 () Bool)

(assert (=> b!1322104 (=> res!594336 e!847218)))

(assert (=> b!1322104 (= res!594336 (= (h!18783 rules!2550) (rule!4060 t1!34)))))

(declare-fun b!1322105 () Bool)

(assert (=> b!1322105 (= e!847218 (contains!2361 (t!118641 rules!2550) (rule!4060 t1!34)))))

(assert (= (and d!373522 res!594335) b!1322104))

(assert (= (and b!1322104 (not res!594336)) b!1322105))

(assert (=> d!373522 m!1477803))

(declare-fun m!1478403 () Bool)

(assert (=> d!373522 m!1478403))

(declare-fun m!1478405 () Bool)

(assert (=> b!1322105 m!1478405))

(assert (=> b!1321593 d!373522))

(declare-fun d!373524 () Bool)

(declare-fun lt!436503 () Bool)

(assert (=> d!373524 (= lt!436503 (select (content!1894 lt!436301) lt!436298))))

(declare-fun e!847225 () Bool)

(assert (=> d!373524 (= lt!436503 e!847225)))

(declare-fun res!594342 () Bool)

(assert (=> d!373524 (=> (not res!594342) (not e!847225))))

(assert (=> d!373524 (= res!594342 ((_ is Cons!13380) lt!436301))))

(assert (=> d!373524 (= (contains!2362 lt!436301 lt!436298) lt!436503)))

(declare-fun b!1322110 () Bool)

(declare-fun e!847224 () Bool)

(assert (=> b!1322110 (= e!847225 e!847224)))

(declare-fun res!594341 () Bool)

(assert (=> b!1322110 (=> res!594341 e!847224)))

(assert (=> b!1322110 (= res!594341 (= (h!18781 lt!436301) lt!436298))))

(declare-fun b!1322111 () Bool)

(assert (=> b!1322111 (= e!847224 (contains!2362 (t!118639 lt!436301) lt!436298))))

(assert (= (and d!373524 res!594342) b!1322110))

(assert (= (and b!1322110 (not res!594341)) b!1322111))

(assert (=> d!373524 m!1478081))

(declare-fun m!1478407 () Bool)

(assert (=> d!373524 m!1478407))

(declare-fun m!1478409 () Bool)

(assert (=> b!1322111 m!1478409))

(assert (=> b!1321614 d!373524))

(declare-fun d!373526 () Bool)

(declare-fun lt!436516 () C!7548)

(declare-fun apply!3074 (List!13446 Int) C!7548)

(assert (=> d!373526 (= lt!436516 (apply!3074 (list!5054 lt!436312) 0))))

(declare-fun apply!3075 (Conc!4400 Int) C!7548)

(assert (=> d!373526 (= lt!436516 (apply!3075 (c!216974 lt!436312) 0))))

(declare-fun e!847230 () Bool)

(assert (=> d!373526 e!847230))

(declare-fun res!594345 () Bool)

(assert (=> d!373526 (=> (not res!594345) (not e!847230))))

(assert (=> d!373526 (= res!594345 (<= 0 0))))

(assert (=> d!373526 (= (apply!3069 lt!436312 0) lt!436516)))

(declare-fun b!1322118 () Bool)

(assert (=> b!1322118 (= e!847230 (< 0 (size!10901 lt!436312)))))

(assert (= (and d!373526 res!594345) b!1322118))

(assert (=> d!373526 m!1477655))

(assert (=> d!373526 m!1477655))

(declare-fun m!1478411 () Bool)

(assert (=> d!373526 m!1478411))

(declare-fun m!1478413 () Bool)

(assert (=> d!373526 m!1478413))

(declare-fun m!1478415 () Bool)

(assert (=> b!1322118 m!1478415))

(assert (=> b!1321614 d!373526))

(declare-fun d!373528 () Bool)

(declare-fun res!594364 () Bool)

(declare-fun e!847239 () Bool)

(assert (=> d!373528 (=> res!594364 e!847239)))

(assert (=> d!373528 (= res!594364 (not ((_ is Cons!13382) rules!2550)))))

(assert (=> d!373528 (= (sepAndNonSepRulesDisjointChars!688 rules!2550 rules!2550) e!847239)))

(declare-fun b!1322137 () Bool)

(declare-fun e!847240 () Bool)

(assert (=> b!1322137 (= e!847239 e!847240)))

(declare-fun res!594365 () Bool)

(assert (=> b!1322137 (=> (not res!594365) (not e!847240))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!317 (Rule!4430 List!13448) Bool)

(assert (=> b!1322137 (= res!594365 (ruleDisjointCharsFromAllFromOtherType!317 (h!18783 rules!2550) rules!2550))))

(declare-fun b!1322138 () Bool)

(assert (=> b!1322138 (= e!847240 (sepAndNonSepRulesDisjointChars!688 rules!2550 (t!118641 rules!2550)))))

(assert (= (and d!373528 (not res!594364)) b!1322137))

(assert (= (and b!1322137 res!594365) b!1322138))

(declare-fun m!1478417 () Bool)

(assert (=> b!1322137 m!1478417))

(declare-fun m!1478419 () Bool)

(assert (=> b!1322138 m!1478419))

(assert (=> b!1321616 d!373528))

(declare-fun d!373530 () Bool)

(declare-fun lt!436517 () Bool)

(assert (=> d!373530 (= lt!436517 (select (content!1894 lt!436301) lt!436291))))

(declare-fun e!847242 () Bool)

(assert (=> d!373530 (= lt!436517 e!847242)))

(declare-fun res!594367 () Bool)

(assert (=> d!373530 (=> (not res!594367) (not e!847242))))

(assert (=> d!373530 (= res!594367 ((_ is Cons!13380) lt!436301))))

(assert (=> d!373530 (= (contains!2362 lt!436301 lt!436291) lt!436517)))

(declare-fun b!1322139 () Bool)

(declare-fun e!847241 () Bool)

(assert (=> b!1322139 (= e!847242 e!847241)))

(declare-fun res!594366 () Bool)

(assert (=> b!1322139 (=> res!594366 e!847241)))

(assert (=> b!1322139 (= res!594366 (= (h!18781 lt!436301) lt!436291))))

(declare-fun b!1322140 () Bool)

(assert (=> b!1322140 (= e!847241 (contains!2362 (t!118639 lt!436301) lt!436291))))

(assert (= (and d!373530 res!594367) b!1322139))

(assert (= (and b!1322139 (not res!594366)) b!1322140))

(assert (=> d!373530 m!1478081))

(declare-fun m!1478421 () Bool)

(assert (=> d!373530 m!1478421))

(declare-fun m!1478423 () Bool)

(assert (=> b!1322140 m!1478423))

(assert (=> b!1321615 d!373530))

(declare-fun d!373532 () Bool)

(assert (=> d!373532 (= (inv!17756 (tag!2577 (h!18783 rules!2550))) (= (mod (str.len (value!75609 (tag!2577 (h!18783 rules!2550)))) 2) 0))))

(assert (=> b!1321633 d!373532))

(declare-fun d!373534 () Bool)

(declare-fun res!594377 () Bool)

(declare-fun e!847248 () Bool)

(assert (=> d!373534 (=> (not res!594377) (not e!847248))))

(declare-fun semiInverseModEq!874 (Int Int) Bool)

(assert (=> d!373534 (= res!594377 (semiInverseModEq!874 (toChars!3405 (transformation!2315 (h!18783 rules!2550))) (toValue!3546 (transformation!2315 (h!18783 rules!2550)))))))

(assert (=> d!373534 (= (inv!17759 (transformation!2315 (h!18783 rules!2550))) e!847248)))

(declare-fun b!1322152 () Bool)

(declare-fun equivClasses!833 (Int Int) Bool)

(assert (=> b!1322152 (= e!847248 (equivClasses!833 (toChars!3405 (transformation!2315 (h!18783 rules!2550))) (toValue!3546 (transformation!2315 (h!18783 rules!2550)))))))

(assert (= (and d!373534 res!594377) b!1322152))

(declare-fun m!1478449 () Bool)

(assert (=> d!373534 m!1478449))

(declare-fun m!1478451 () Bool)

(assert (=> b!1322152 m!1478451))

(assert (=> b!1321633 d!373534))

(declare-fun b!1322205 () Bool)

(declare-fun e!847280 () Bool)

(declare-fun head!2298 (List!13446) C!7548)

(assert (=> b!1322205 (= e!847280 (not (= (head!2298 lt!436297) (c!216975 (regex!2315 (rule!4060 t2!34))))))))

(declare-fun b!1322206 () Bool)

(declare-fun res!594407 () Bool)

(declare-fun e!847278 () Bool)

(assert (=> b!1322206 (=> res!594407 e!847278)))

(declare-fun e!847277 () Bool)

(assert (=> b!1322206 (= res!594407 e!847277)))

(declare-fun res!594404 () Bool)

(assert (=> b!1322206 (=> (not res!594404) (not e!847277))))

(declare-fun lt!436537 () Bool)

(assert (=> b!1322206 (= res!594404 lt!436537)))

(declare-fun b!1322207 () Bool)

(declare-fun res!594411 () Bool)

(assert (=> b!1322207 (=> res!594411 e!847280)))

(assert (=> b!1322207 (= res!594411 (not (isEmpty!7964 (tail!1898 lt!436297))))))

(declare-fun b!1322208 () Bool)

(declare-fun e!847279 () Bool)

(assert (=> b!1322208 (= e!847279 (not lt!436537))))

(declare-fun b!1322209 () Bool)

(declare-fun e!847274 () Bool)

(declare-fun derivativeStep!905 (Regex!3629 C!7548) Regex!3629)

(assert (=> b!1322209 (= e!847274 (matchR!1631 (derivativeStep!905 (regex!2315 (rule!4060 t2!34)) (head!2298 lt!436297)) (tail!1898 lt!436297)))))

(declare-fun b!1322210 () Bool)

(declare-fun e!847275 () Bool)

(declare-fun call!89727 () Bool)

(assert (=> b!1322210 (= e!847275 (= lt!436537 call!89727))))

(declare-fun b!1322211 () Bool)

(assert (=> b!1322211 (= e!847277 (= (head!2298 lt!436297) (c!216975 (regex!2315 (rule!4060 t2!34)))))))

(declare-fun b!1322212 () Bool)

(declare-fun nullable!1153 (Regex!3629) Bool)

(assert (=> b!1322212 (= e!847274 (nullable!1153 (regex!2315 (rule!4060 t2!34))))))

(declare-fun b!1322213 () Bool)

(declare-fun res!594405 () Bool)

(assert (=> b!1322213 (=> (not res!594405) (not e!847277))))

(assert (=> b!1322213 (= res!594405 (not call!89727))))

(declare-fun b!1322214 () Bool)

(declare-fun e!847276 () Bool)

(assert (=> b!1322214 (= e!847276 e!847280)))

(declare-fun res!594410 () Bool)

(assert (=> b!1322214 (=> res!594410 e!847280)))

(assert (=> b!1322214 (= res!594410 call!89727)))

(declare-fun bm!89722 () Bool)

(assert (=> bm!89722 (= call!89727 (isEmpty!7964 lt!436297))))

(declare-fun b!1322215 () Bool)

(declare-fun res!594408 () Bool)

(assert (=> b!1322215 (=> res!594408 e!847278)))

(assert (=> b!1322215 (= res!594408 (not ((_ is ElementMatch!3629) (regex!2315 (rule!4060 t2!34)))))))

(assert (=> b!1322215 (= e!847279 e!847278)))

(declare-fun b!1322217 () Bool)

(declare-fun res!594406 () Bool)

(assert (=> b!1322217 (=> (not res!594406) (not e!847277))))

(assert (=> b!1322217 (= res!594406 (isEmpty!7964 (tail!1898 lt!436297)))))

(declare-fun b!1322218 () Bool)

(assert (=> b!1322218 (= e!847278 e!847276)))

(declare-fun res!594409 () Bool)

(assert (=> b!1322218 (=> (not res!594409) (not e!847276))))

(assert (=> b!1322218 (= res!594409 (not lt!436537))))

(declare-fun d!373536 () Bool)

(assert (=> d!373536 e!847275))

(declare-fun c!217097 () Bool)

(assert (=> d!373536 (= c!217097 ((_ is EmptyExpr!3629) (regex!2315 (rule!4060 t2!34))))))

(assert (=> d!373536 (= lt!436537 e!847274)))

(declare-fun c!217096 () Bool)

(assert (=> d!373536 (= c!217096 (isEmpty!7964 lt!436297))))

(declare-fun validRegex!1555 (Regex!3629) Bool)

(assert (=> d!373536 (validRegex!1555 (regex!2315 (rule!4060 t2!34)))))

(assert (=> d!373536 (= (matchR!1631 (regex!2315 (rule!4060 t2!34)) lt!436297) lt!436537)))

(declare-fun b!1322216 () Bool)

(assert (=> b!1322216 (= e!847275 e!847279)))

(declare-fun c!217098 () Bool)

(assert (=> b!1322216 (= c!217098 ((_ is EmptyLang!3629) (regex!2315 (rule!4060 t2!34))))))

(assert (= (and d!373536 c!217096) b!1322212))

(assert (= (and d!373536 (not c!217096)) b!1322209))

(assert (= (and d!373536 c!217097) b!1322210))

(assert (= (and d!373536 (not c!217097)) b!1322216))

(assert (= (and b!1322216 c!217098) b!1322208))

(assert (= (and b!1322216 (not c!217098)) b!1322215))

(assert (= (and b!1322215 (not res!594408)) b!1322206))

(assert (= (and b!1322206 res!594404) b!1322213))

(assert (= (and b!1322213 res!594405) b!1322217))

(assert (= (and b!1322217 res!594406) b!1322211))

(assert (= (and b!1322206 (not res!594407)) b!1322218))

(assert (= (and b!1322218 res!594409) b!1322214))

(assert (= (and b!1322214 (not res!594410)) b!1322207))

(assert (= (and b!1322207 (not res!594411)) b!1322205))

(assert (= (or b!1322210 b!1322213 b!1322214) bm!89722))

(declare-fun m!1478523 () Bool)

(assert (=> b!1322207 m!1478523))

(assert (=> b!1322207 m!1478523))

(declare-fun m!1478525 () Bool)

(assert (=> b!1322207 m!1478525))

(declare-fun m!1478527 () Bool)

(assert (=> d!373536 m!1478527))

(declare-fun m!1478529 () Bool)

(assert (=> d!373536 m!1478529))

(declare-fun m!1478531 () Bool)

(assert (=> b!1322212 m!1478531))

(declare-fun m!1478533 () Bool)

(assert (=> b!1322209 m!1478533))

(assert (=> b!1322209 m!1478533))

(declare-fun m!1478535 () Bool)

(assert (=> b!1322209 m!1478535))

(assert (=> b!1322209 m!1478523))

(assert (=> b!1322209 m!1478535))

(assert (=> b!1322209 m!1478523))

(declare-fun m!1478537 () Bool)

(assert (=> b!1322209 m!1478537))

(assert (=> bm!89722 m!1478527))

(assert (=> b!1322211 m!1478533))

(assert (=> b!1322217 m!1478523))

(assert (=> b!1322217 m!1478523))

(assert (=> b!1322217 m!1478525))

(assert (=> b!1322205 m!1478533))

(assert (=> b!1321611 d!373536))

(declare-fun d!373552 () Bool)

(declare-fun lt!436538 () Bool)

(assert (=> d!373552 (= lt!436538 (select (content!1893 rules!2550) (rule!4060 t2!34)))))

(declare-fun e!847282 () Bool)

(assert (=> d!373552 (= lt!436538 e!847282)))

(declare-fun res!594412 () Bool)

(assert (=> d!373552 (=> (not res!594412) (not e!847282))))

(assert (=> d!373552 (= res!594412 ((_ is Cons!13382) rules!2550))))

(assert (=> d!373552 (= (contains!2361 rules!2550 (rule!4060 t2!34)) lt!436538)))

(declare-fun b!1322219 () Bool)

(declare-fun e!847281 () Bool)

(assert (=> b!1322219 (= e!847282 e!847281)))

(declare-fun res!594413 () Bool)

(assert (=> b!1322219 (=> res!594413 e!847281)))

(assert (=> b!1322219 (= res!594413 (= (h!18783 rules!2550) (rule!4060 t2!34)))))

(declare-fun b!1322220 () Bool)

(assert (=> b!1322220 (= e!847281 (contains!2361 (t!118641 rules!2550) (rule!4060 t2!34)))))

(assert (= (and d!373552 res!594412) b!1322219))

(assert (= (and b!1322219 (not res!594413)) b!1322220))

(assert (=> d!373552 m!1477803))

(declare-fun m!1478539 () Bool)

(assert (=> d!373552 m!1478539))

(declare-fun m!1478541 () Bool)

(assert (=> b!1322220 m!1478541))

(assert (=> b!1321592 d!373552))

(declare-fun b!1322225 () Bool)

(declare-fun e!847293 () Bool)

(assert (=> b!1322225 (= e!847293 (not (= (head!2298 lt!436302) (c!216975 lt!436295))))))

(declare-fun b!1322226 () Bool)

(declare-fun res!594421 () Bool)

(declare-fun e!847291 () Bool)

(assert (=> b!1322226 (=> res!594421 e!847291)))

(declare-fun e!847290 () Bool)

(assert (=> b!1322226 (= res!594421 e!847290)))

(declare-fun res!594418 () Bool)

(assert (=> b!1322226 (=> (not res!594418) (not e!847290))))

(declare-fun lt!436539 () Bool)

(assert (=> b!1322226 (= res!594418 lt!436539)))

(declare-fun b!1322227 () Bool)

(declare-fun res!594425 () Bool)

(assert (=> b!1322227 (=> res!594425 e!847293)))

(assert (=> b!1322227 (= res!594425 (not (isEmpty!7964 (tail!1898 lt!436302))))))

(declare-fun b!1322228 () Bool)

(declare-fun e!847292 () Bool)

(assert (=> b!1322228 (= e!847292 (not lt!436539))))

(declare-fun b!1322229 () Bool)

(declare-fun e!847287 () Bool)

(assert (=> b!1322229 (= e!847287 (matchR!1631 (derivativeStep!905 lt!436295 (head!2298 lt!436302)) (tail!1898 lt!436302)))))

(declare-fun b!1322230 () Bool)

(declare-fun e!847288 () Bool)

(declare-fun call!89728 () Bool)

(assert (=> b!1322230 (= e!847288 (= lt!436539 call!89728))))

(declare-fun b!1322231 () Bool)

(assert (=> b!1322231 (= e!847290 (= (head!2298 lt!436302) (c!216975 lt!436295)))))

(declare-fun b!1322232 () Bool)

(assert (=> b!1322232 (= e!847287 (nullable!1153 lt!436295))))

(declare-fun b!1322233 () Bool)

(declare-fun res!594419 () Bool)

(assert (=> b!1322233 (=> (not res!594419) (not e!847290))))

(assert (=> b!1322233 (= res!594419 (not call!89728))))

(declare-fun b!1322234 () Bool)

(declare-fun e!847289 () Bool)

(assert (=> b!1322234 (= e!847289 e!847293)))

(declare-fun res!594424 () Bool)

(assert (=> b!1322234 (=> res!594424 e!847293)))

(assert (=> b!1322234 (= res!594424 call!89728)))

(declare-fun bm!89723 () Bool)

(assert (=> bm!89723 (= call!89728 (isEmpty!7964 lt!436302))))

(declare-fun b!1322235 () Bool)

(declare-fun res!594422 () Bool)

(assert (=> b!1322235 (=> res!594422 e!847291)))

(assert (=> b!1322235 (= res!594422 (not ((_ is ElementMatch!3629) lt!436295)))))

(assert (=> b!1322235 (= e!847292 e!847291)))

(declare-fun b!1322237 () Bool)

(declare-fun res!594420 () Bool)

(assert (=> b!1322237 (=> (not res!594420) (not e!847290))))

(assert (=> b!1322237 (= res!594420 (isEmpty!7964 (tail!1898 lt!436302)))))

(declare-fun b!1322238 () Bool)

(assert (=> b!1322238 (= e!847291 e!847289)))

(declare-fun res!594423 () Bool)

(assert (=> b!1322238 (=> (not res!594423) (not e!847289))))

(assert (=> b!1322238 (= res!594423 (not lt!436539))))

(declare-fun d!373554 () Bool)

(assert (=> d!373554 e!847288))

(declare-fun c!217100 () Bool)

(assert (=> d!373554 (= c!217100 ((_ is EmptyExpr!3629) lt!436295))))

(assert (=> d!373554 (= lt!436539 e!847287)))

(declare-fun c!217099 () Bool)

(assert (=> d!373554 (= c!217099 (isEmpty!7964 lt!436302))))

(assert (=> d!373554 (validRegex!1555 lt!436295)))

(assert (=> d!373554 (= (matchR!1631 lt!436295 lt!436302) lt!436539)))

(declare-fun b!1322236 () Bool)

(assert (=> b!1322236 (= e!847288 e!847292)))

(declare-fun c!217101 () Bool)

(assert (=> b!1322236 (= c!217101 ((_ is EmptyLang!3629) lt!436295))))

(assert (= (and d!373554 c!217099) b!1322232))

(assert (= (and d!373554 (not c!217099)) b!1322229))

(assert (= (and d!373554 c!217100) b!1322230))

(assert (= (and d!373554 (not c!217100)) b!1322236))

(assert (= (and b!1322236 c!217101) b!1322228))

(assert (= (and b!1322236 (not c!217101)) b!1322235))

(assert (= (and b!1322235 (not res!594422)) b!1322226))

(assert (= (and b!1322226 res!594418) b!1322233))

(assert (= (and b!1322233 res!594419) b!1322237))

(assert (= (and b!1322237 res!594420) b!1322231))

(assert (= (and b!1322226 (not res!594421)) b!1322238))

(assert (= (and b!1322238 res!594423) b!1322234))

(assert (= (and b!1322234 (not res!594424)) b!1322227))

(assert (= (and b!1322227 (not res!594425)) b!1322225))

(assert (= (or b!1322230 b!1322233 b!1322234) bm!89723))

(assert (=> b!1322227 m!1478103))

(assert (=> b!1322227 m!1478103))

(declare-fun m!1478543 () Bool)

(assert (=> b!1322227 m!1478543))

(declare-fun m!1478545 () Bool)

(assert (=> d!373554 m!1478545))

(declare-fun m!1478547 () Bool)

(assert (=> d!373554 m!1478547))

(declare-fun m!1478549 () Bool)

(assert (=> b!1322232 m!1478549))

(declare-fun m!1478551 () Bool)

(assert (=> b!1322229 m!1478551))

(assert (=> b!1322229 m!1478551))

(declare-fun m!1478553 () Bool)

(assert (=> b!1322229 m!1478553))

(assert (=> b!1322229 m!1478103))

(assert (=> b!1322229 m!1478553))

(assert (=> b!1322229 m!1478103))

(declare-fun m!1478555 () Bool)

(assert (=> b!1322229 m!1478555))

(assert (=> bm!89723 m!1478545))

(assert (=> b!1322231 m!1478551))

(assert (=> b!1322237 m!1478103))

(assert (=> b!1322237 m!1478103))

(assert (=> b!1322237 m!1478543))

(assert (=> b!1322225 m!1478551))

(assert (=> b!1321613 d!373554))

(declare-fun d!373556 () Bool)

(assert (=> d!373556 (= (inv!17756 (tag!2577 (rule!4060 t1!34))) (= (mod (str.len (value!75609 (tag!2577 (rule!4060 t1!34)))) 2) 0))))

(assert (=> b!1321591 d!373556))

(declare-fun d!373558 () Bool)

(declare-fun res!594427 () Bool)

(declare-fun e!847295 () Bool)

(assert (=> d!373558 (=> (not res!594427) (not e!847295))))

(assert (=> d!373558 (= res!594427 (semiInverseModEq!874 (toChars!3405 (transformation!2315 (rule!4060 t1!34))) (toValue!3546 (transformation!2315 (rule!4060 t1!34)))))))

(assert (=> d!373558 (= (inv!17759 (transformation!2315 (rule!4060 t1!34))) e!847295)))

(declare-fun b!1322239 () Bool)

(assert (=> b!1322239 (= e!847295 (equivClasses!833 (toChars!3405 (transformation!2315 (rule!4060 t1!34))) (toValue!3546 (transformation!2315 (rule!4060 t1!34)))))))

(assert (= (and d!373558 res!594427) b!1322239))

(declare-fun m!1478557 () Bool)

(assert (=> d!373558 m!1478557))

(declare-fun m!1478559 () Bool)

(assert (=> b!1322239 m!1478559))

(assert (=> b!1321591 d!373558))

(declare-fun b!1322242 () Bool)

(declare-fun e!847303 () Bool)

(assert (=> b!1322242 (= e!847303 (not (= (head!2298 lt!436307) (c!216975 (regex!2315 (rule!4060 t1!34))))))))

(declare-fun b!1322243 () Bool)

(declare-fun res!594432 () Bool)

(declare-fun e!847301 () Bool)

(assert (=> b!1322243 (=> res!594432 e!847301)))

(declare-fun e!847300 () Bool)

(assert (=> b!1322243 (= res!594432 e!847300)))

(declare-fun res!594429 () Bool)

(assert (=> b!1322243 (=> (not res!594429) (not e!847300))))

(declare-fun lt!436540 () Bool)

(assert (=> b!1322243 (= res!594429 lt!436540)))

(declare-fun b!1322244 () Bool)

(declare-fun res!594436 () Bool)

(assert (=> b!1322244 (=> res!594436 e!847303)))

(assert (=> b!1322244 (= res!594436 (not (isEmpty!7964 (tail!1898 lt!436307))))))

(declare-fun b!1322245 () Bool)

(declare-fun e!847302 () Bool)

(assert (=> b!1322245 (= e!847302 (not lt!436540))))

(declare-fun b!1322246 () Bool)

(declare-fun e!847297 () Bool)

(assert (=> b!1322246 (= e!847297 (matchR!1631 (derivativeStep!905 (regex!2315 (rule!4060 t1!34)) (head!2298 lt!436307)) (tail!1898 lt!436307)))))

(declare-fun b!1322247 () Bool)

(declare-fun e!847298 () Bool)

(declare-fun call!89729 () Bool)

(assert (=> b!1322247 (= e!847298 (= lt!436540 call!89729))))

(declare-fun b!1322248 () Bool)

(assert (=> b!1322248 (= e!847300 (= (head!2298 lt!436307) (c!216975 (regex!2315 (rule!4060 t1!34)))))))

(declare-fun b!1322249 () Bool)

(assert (=> b!1322249 (= e!847297 (nullable!1153 (regex!2315 (rule!4060 t1!34))))))

(declare-fun b!1322250 () Bool)

(declare-fun res!594430 () Bool)

(assert (=> b!1322250 (=> (not res!594430) (not e!847300))))

(assert (=> b!1322250 (= res!594430 (not call!89729))))

(declare-fun b!1322251 () Bool)

(declare-fun e!847299 () Bool)

(assert (=> b!1322251 (= e!847299 e!847303)))

(declare-fun res!594435 () Bool)

(assert (=> b!1322251 (=> res!594435 e!847303)))

(assert (=> b!1322251 (= res!594435 call!89729)))

(declare-fun bm!89724 () Bool)

(assert (=> bm!89724 (= call!89729 (isEmpty!7964 lt!436307))))

(declare-fun b!1322252 () Bool)

(declare-fun res!594433 () Bool)

(assert (=> b!1322252 (=> res!594433 e!847301)))

(assert (=> b!1322252 (= res!594433 (not ((_ is ElementMatch!3629) (regex!2315 (rule!4060 t1!34)))))))

(assert (=> b!1322252 (= e!847302 e!847301)))

(declare-fun b!1322254 () Bool)

(declare-fun res!594431 () Bool)

(assert (=> b!1322254 (=> (not res!594431) (not e!847300))))

(assert (=> b!1322254 (= res!594431 (isEmpty!7964 (tail!1898 lt!436307)))))

(declare-fun b!1322255 () Bool)

(assert (=> b!1322255 (= e!847301 e!847299)))

(declare-fun res!594434 () Bool)

(assert (=> b!1322255 (=> (not res!594434) (not e!847299))))

(assert (=> b!1322255 (= res!594434 (not lt!436540))))

(declare-fun d!373560 () Bool)

(assert (=> d!373560 e!847298))

(declare-fun c!217103 () Bool)

(assert (=> d!373560 (= c!217103 ((_ is EmptyExpr!3629) (regex!2315 (rule!4060 t1!34))))))

(assert (=> d!373560 (= lt!436540 e!847297)))

(declare-fun c!217102 () Bool)

(assert (=> d!373560 (= c!217102 (isEmpty!7964 lt!436307))))

(assert (=> d!373560 (validRegex!1555 (regex!2315 (rule!4060 t1!34)))))

(assert (=> d!373560 (= (matchR!1631 (regex!2315 (rule!4060 t1!34)) lt!436307) lt!436540)))

(declare-fun b!1322253 () Bool)

(assert (=> b!1322253 (= e!847298 e!847302)))

(declare-fun c!217104 () Bool)

(assert (=> b!1322253 (= c!217104 ((_ is EmptyLang!3629) (regex!2315 (rule!4060 t1!34))))))

(assert (= (and d!373560 c!217102) b!1322249))

(assert (= (and d!373560 (not c!217102)) b!1322246))

(assert (= (and d!373560 c!217103) b!1322247))

(assert (= (and d!373560 (not c!217103)) b!1322253))

(assert (= (and b!1322253 c!217104) b!1322245))

(assert (= (and b!1322253 (not c!217104)) b!1322252))

(assert (= (and b!1322252 (not res!594433)) b!1322243))

(assert (= (and b!1322243 res!594429) b!1322250))

(assert (= (and b!1322250 res!594430) b!1322254))

(assert (= (and b!1322254 res!594431) b!1322248))

(assert (= (and b!1322243 (not res!594432)) b!1322255))

(assert (= (and b!1322255 res!594434) b!1322251))

(assert (= (and b!1322251 (not res!594435)) b!1322244))

(assert (= (and b!1322244 (not res!594436)) b!1322242))

(assert (= (or b!1322247 b!1322250 b!1322251) bm!89724))

(declare-fun m!1478565 () Bool)

(assert (=> b!1322244 m!1478565))

(assert (=> b!1322244 m!1478565))

(declare-fun m!1478567 () Bool)

(assert (=> b!1322244 m!1478567))

(declare-fun m!1478569 () Bool)

(assert (=> d!373560 m!1478569))

(declare-fun m!1478571 () Bool)

(assert (=> d!373560 m!1478571))

(declare-fun m!1478573 () Bool)

(assert (=> b!1322249 m!1478573))

(declare-fun m!1478575 () Bool)

(assert (=> b!1322246 m!1478575))

(assert (=> b!1322246 m!1478575))

(declare-fun m!1478577 () Bool)

(assert (=> b!1322246 m!1478577))

(assert (=> b!1322246 m!1478565))

(assert (=> b!1322246 m!1478577))

(assert (=> b!1322246 m!1478565))

(declare-fun m!1478579 () Bool)

(assert (=> b!1322246 m!1478579))

(assert (=> bm!89724 m!1478569))

(assert (=> b!1322248 m!1478575))

(assert (=> b!1322254 m!1478565))

(assert (=> b!1322254 m!1478565))

(assert (=> b!1322254 m!1478567))

(assert (=> b!1322242 m!1478575))

(assert (=> b!1321609 d!373560))

(declare-fun d!373564 () Bool)

(assert (=> d!373564 (dynLambda!5891 lambda!54039 (rule!4060 t2!34))))

(declare-fun lt!436543 () Unit!19458)

(declare-fun choose!8092 (List!13448 Int Rule!4430) Unit!19458)

(assert (=> d!373564 (= lt!436543 (choose!8092 rules!2550 lambda!54039 (rule!4060 t2!34)))))

(declare-fun e!847306 () Bool)

(assert (=> d!373564 e!847306))

(declare-fun res!594439 () Bool)

(assert (=> d!373564 (=> (not res!594439) (not e!847306))))

(assert (=> d!373564 (= res!594439 (forall!3304 rules!2550 lambda!54039))))

(assert (=> d!373564 (= (forallContained!566 rules!2550 lambda!54039 (rule!4060 t2!34)) lt!436543)))

(declare-fun b!1322258 () Bool)

(assert (=> b!1322258 (= e!847306 (contains!2361 rules!2550 (rule!4060 t2!34)))))

(assert (= (and d!373564 res!594439) b!1322258))

(declare-fun b_lambda!38639 () Bool)

(assert (=> (not b_lambda!38639) (not d!373564)))

(declare-fun m!1478581 () Bool)

(assert (=> d!373564 m!1478581))

(declare-fun m!1478583 () Bool)

(assert (=> d!373564 m!1478583))

(declare-fun m!1478585 () Bool)

(assert (=> d!373564 m!1478585))

(assert (=> b!1322258 m!1477697))

(assert (=> b!1321609 d!373564))

(declare-fun d!373566 () Bool)

(assert (=> d!373566 (dynLambda!5891 lambda!54039 (rule!4060 t1!34))))

(declare-fun lt!436544 () Unit!19458)

(assert (=> d!373566 (= lt!436544 (choose!8092 rules!2550 lambda!54039 (rule!4060 t1!34)))))

(declare-fun e!847307 () Bool)

(assert (=> d!373566 e!847307))

(declare-fun res!594440 () Bool)

(assert (=> d!373566 (=> (not res!594440) (not e!847307))))

(assert (=> d!373566 (= res!594440 (forall!3304 rules!2550 lambda!54039))))

(assert (=> d!373566 (= (forallContained!566 rules!2550 lambda!54039 (rule!4060 t1!34)) lt!436544)))

(declare-fun b!1322259 () Bool)

(assert (=> b!1322259 (= e!847307 (contains!2361 rules!2550 (rule!4060 t1!34)))))

(assert (= (and d!373566 res!594440) b!1322259))

(declare-fun b_lambda!38641 () Bool)

(assert (=> (not b_lambda!38641) (not d!373566)))

(declare-fun m!1478587 () Bool)

(assert (=> d!373566 m!1478587))

(declare-fun m!1478589 () Bool)

(assert (=> d!373566 m!1478589))

(assert (=> d!373566 m!1478585))

(assert (=> b!1322259 m!1477667))

(assert (=> b!1321609 d!373566))

(declare-fun d!373568 () Bool)

(assert (=> d!373568 (dynLambda!5891 lambda!54039 lt!436296)))

(declare-fun lt!436545 () Unit!19458)

(assert (=> d!373568 (= lt!436545 (choose!8092 rules!2550 lambda!54039 lt!436296))))

(declare-fun e!847308 () Bool)

(assert (=> d!373568 e!847308))

(declare-fun res!594441 () Bool)

(assert (=> d!373568 (=> (not res!594441) (not e!847308))))

(assert (=> d!373568 (= res!594441 (forall!3304 rules!2550 lambda!54039))))

(assert (=> d!373568 (= (forallContained!566 rules!2550 lambda!54039 lt!436296) lt!436545)))

(declare-fun b!1322260 () Bool)

(assert (=> b!1322260 (= e!847308 (contains!2361 rules!2550 lt!436296))))

(assert (= (and d!373568 res!594441) b!1322260))

(declare-fun b_lambda!38643 () Bool)

(assert (=> (not b_lambda!38643) (not d!373568)))

(declare-fun m!1478591 () Bool)

(assert (=> d!373568 m!1478591))

(declare-fun m!1478593 () Bool)

(assert (=> d!373568 m!1478593))

(assert (=> d!373568 m!1478585))

(assert (=> b!1322260 m!1477769))

(assert (=> b!1321609 d!373568))

(declare-fun d!373570 () Bool)

(declare-fun prefixMatchZipperSequence!186 (Regex!3629 BalanceConc!8740) Bool)

(declare-fun ++!3420 (BalanceConc!8740 BalanceConc!8740) BalanceConc!8740)

(declare-fun singletonSeq!902 (C!7548) BalanceConc!8740)

(assert (=> d!373570 (= (separableTokensPredicate!293 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!186 (rulesRegex!200 thiss!19762 rules!2550) (++!3420 (charsOf!1287 t1!34) (singletonSeq!902 (apply!3069 (charsOf!1287 t2!34) 0))))))))

(declare-fun bs!331159 () Bool)

(assert (= bs!331159 d!373570))

(assert (=> bs!331159 m!1477657))

(declare-fun m!1478609 () Bool)

(assert (=> bs!331159 m!1478609))

(declare-fun m!1478611 () Bool)

(assert (=> bs!331159 m!1478611))

(declare-fun m!1478613 () Bool)

(assert (=> bs!331159 m!1478613))

(declare-fun m!1478615 () Bool)

(assert (=> bs!331159 m!1478615))

(assert (=> bs!331159 m!1477745))

(assert (=> bs!331159 m!1477745))

(assert (=> bs!331159 m!1478613))

(assert (=> bs!331159 m!1477659))

(assert (=> bs!331159 m!1477659))

(assert (=> bs!331159 m!1478615))

(assert (=> bs!331159 m!1478609))

(assert (=> bs!331159 m!1477657))

(assert (=> b!1321632 d!373570))

(declare-fun d!373578 () Bool)

(declare-fun res!594451 () Bool)

(declare-fun e!847316 () Bool)

(assert (=> d!373578 (=> (not res!594451) (not e!847316))))

(assert (=> d!373578 (= res!594451 (not (isEmpty!7964 (originalCharacters!3177 t1!34))))))

(assert (=> d!373578 (= (inv!17760 t1!34) e!847316)))

(declare-fun b!1322270 () Bool)

(declare-fun res!594452 () Bool)

(assert (=> b!1322270 (=> (not res!594452) (not e!847316))))

(assert (=> b!1322270 (= res!594452 (= (originalCharacters!3177 t1!34) (list!5054 (dynLambda!5885 (toChars!3405 (transformation!2315 (rule!4060 t1!34))) (value!75610 t1!34)))))))

(declare-fun b!1322271 () Bool)

(assert (=> b!1322271 (= e!847316 (= (size!10900 t1!34) (size!10907 (originalCharacters!3177 t1!34))))))

(assert (= (and d!373578 res!594451) b!1322270))

(assert (= (and b!1322270 res!594452) b!1322271))

(declare-fun b_lambda!38645 () Bool)

(assert (=> (not b_lambda!38645) (not b!1322270)))

(declare-fun t!118666 () Bool)

(declare-fun tb!70163 () Bool)

(assert (=> (and b!1321622 (= (toChars!3405 (transformation!2315 (rule!4060 t2!34))) (toChars!3405 (transformation!2315 (rule!4060 t1!34)))) t!118666) tb!70163))

(declare-fun b!1322278 () Bool)

(declare-fun e!847319 () Bool)

(declare-fun tp!383710 () Bool)

(assert (=> b!1322278 (= e!847319 (and (inv!17763 (c!216974 (dynLambda!5885 (toChars!3405 (transformation!2315 (rule!4060 t1!34))) (value!75610 t1!34)))) tp!383710))))

(declare-fun result!85150 () Bool)

(assert (=> tb!70163 (= result!85150 (and (inv!17764 (dynLambda!5885 (toChars!3405 (transformation!2315 (rule!4060 t1!34))) (value!75610 t1!34))) e!847319))))

(assert (= tb!70163 b!1322278))

(declare-fun m!1478625 () Bool)

(assert (=> b!1322278 m!1478625))

(declare-fun m!1478627 () Bool)

(assert (=> tb!70163 m!1478627))

(assert (=> b!1322270 t!118666))

(declare-fun b_and!88297 () Bool)

(assert (= b_and!88267 (and (=> t!118666 result!85150) b_and!88297)))

(declare-fun t!118668 () Bool)

(declare-fun tb!70165 () Bool)

(assert (=> (and b!1321630 (= (toChars!3405 (transformation!2315 (rule!4060 t1!34))) (toChars!3405 (transformation!2315 (rule!4060 t1!34)))) t!118668) tb!70165))

(declare-fun result!85152 () Bool)

(assert (= result!85152 result!85150))

(assert (=> b!1322270 t!118668))

(declare-fun b_and!88299 () Bool)

(assert (= b_and!88269 (and (=> t!118668 result!85152) b_and!88299)))

(declare-fun tb!70167 () Bool)

(declare-fun t!118670 () Bool)

(assert (=> (and b!1321598 (= (toChars!3405 (transformation!2315 (h!18783 rules!2550))) (toChars!3405 (transformation!2315 (rule!4060 t1!34)))) t!118670) tb!70167))

(declare-fun result!85154 () Bool)

(assert (= result!85154 result!85150))

(assert (=> b!1322270 t!118670))

(declare-fun b_and!88301 () Bool)

(assert (= b_and!88271 (and (=> t!118670 result!85154) b_and!88301)))

(declare-fun m!1478629 () Bool)

(assert (=> d!373578 m!1478629))

(declare-fun m!1478631 () Bool)

(assert (=> b!1322270 m!1478631))

(assert (=> b!1322270 m!1478631))

(declare-fun m!1478633 () Bool)

(assert (=> b!1322270 m!1478633))

(declare-fun m!1478635 () Bool)

(assert (=> b!1322271 m!1478635))

(assert (=> start!117394 d!373578))

(declare-fun d!373584 () Bool)

(declare-fun res!594453 () Bool)

(declare-fun e!847320 () Bool)

(assert (=> d!373584 (=> (not res!594453) (not e!847320))))

(assert (=> d!373584 (= res!594453 (not (isEmpty!7964 (originalCharacters!3177 t2!34))))))

(assert (=> d!373584 (= (inv!17760 t2!34) e!847320)))

(declare-fun b!1322283 () Bool)

(declare-fun res!594454 () Bool)

(assert (=> b!1322283 (=> (not res!594454) (not e!847320))))

(assert (=> b!1322283 (= res!594454 (= (originalCharacters!3177 t2!34) (list!5054 (dynLambda!5885 (toChars!3405 (transformation!2315 (rule!4060 t2!34))) (value!75610 t2!34)))))))

(declare-fun b!1322284 () Bool)

(assert (=> b!1322284 (= e!847320 (= (size!10900 t2!34) (size!10907 (originalCharacters!3177 t2!34))))))

(assert (= (and d!373584 res!594453) b!1322283))

(assert (= (and b!1322283 res!594454) b!1322284))

(declare-fun b_lambda!38647 () Bool)

(assert (=> (not b_lambda!38647) (not b!1322283)))

(assert (=> b!1322283 t!118646))

(declare-fun b_and!88303 () Bool)

(assert (= b_and!88297 (and (=> t!118646 result!85126) b_and!88303)))

(assert (=> b!1322283 t!118648))

(declare-fun b_and!88305 () Bool)

(assert (= b_and!88299 (and (=> t!118648 result!85130) b_and!88305)))

(assert (=> b!1322283 t!118650))

(declare-fun b_and!88307 () Bool)

(assert (= b_and!88301 (and (=> t!118650 result!85132) b_and!88307)))

(declare-fun m!1478637 () Bool)

(assert (=> d!373584 m!1478637))

(assert (=> b!1322283 m!1478035))

(assert (=> b!1322283 m!1478035))

(declare-fun m!1478639 () Bool)

(assert (=> b!1322283 m!1478639))

(declare-fun m!1478641 () Bool)

(assert (=> b!1322284 m!1478641))

(assert (=> start!117394 d!373584))

(declare-fun d!373586 () Bool)

(declare-fun lt!436550 () Bool)

(assert (=> d!373586 (= lt!436550 (select (content!1894 (usedCharacters!180 (regex!2315 (rule!4060 t1!34)))) lt!436298))))

(declare-fun e!847322 () Bool)

(assert (=> d!373586 (= lt!436550 e!847322)))

(declare-fun res!594456 () Bool)

(assert (=> d!373586 (=> (not res!594456) (not e!847322))))

(assert (=> d!373586 (= res!594456 ((_ is Cons!13380) (usedCharacters!180 (regex!2315 (rule!4060 t1!34)))))))

(assert (=> d!373586 (= (contains!2362 (usedCharacters!180 (regex!2315 (rule!4060 t1!34))) lt!436298) lt!436550)))

(declare-fun b!1322285 () Bool)

(declare-fun e!847321 () Bool)

(assert (=> b!1322285 (= e!847322 e!847321)))

(declare-fun res!594455 () Bool)

(assert (=> b!1322285 (=> res!594455 e!847321)))

(assert (=> b!1322285 (= res!594455 (= (h!18781 (usedCharacters!180 (regex!2315 (rule!4060 t1!34)))) lt!436298))))

(declare-fun b!1322286 () Bool)

(assert (=> b!1322286 (= e!847321 (contains!2362 (t!118639 (usedCharacters!180 (regex!2315 (rule!4060 t1!34)))) lt!436298))))

(assert (= (and d!373586 res!594456) b!1322285))

(assert (= (and b!1322285 (not res!594455)) b!1322286))

(assert (=> d!373586 m!1477747))

(declare-fun m!1478643 () Bool)

(assert (=> d!373586 m!1478643))

(declare-fun m!1478645 () Bool)

(assert (=> d!373586 m!1478645))

(declare-fun m!1478647 () Bool)

(assert (=> b!1322286 m!1478647))

(assert (=> b!1321610 d!373586))

(declare-fun c!217113 () Bool)

(declare-fun bm!89733 () Bool)

(declare-fun c!217115 () Bool)

(declare-fun call!89740 () List!13446)

(assert (=> bm!89733 (= call!89740 (usedCharacters!180 (ite c!217115 (reg!3958 (regex!2315 (rule!4060 t1!34))) (ite c!217113 (regTwo!7771 (regex!2315 (rule!4060 t1!34))) (regOne!7770 (regex!2315 (rule!4060 t1!34)))))))))

(declare-fun b!1322336 () Bool)

(declare-fun e!847354 () List!13446)

(declare-fun call!89739 () List!13446)

(assert (=> b!1322336 (= e!847354 call!89739)))

(declare-fun bm!89734 () Bool)

(declare-fun call!89741 () List!13446)

(assert (=> bm!89734 (= call!89741 call!89740)))

(declare-fun b!1322337 () Bool)

(assert (=> b!1322337 (= c!217115 ((_ is Star!3629) (regex!2315 (rule!4060 t1!34))))))

(declare-fun e!847355 () List!13446)

(declare-fun e!847356 () List!13446)

(assert (=> b!1322337 (= e!847355 e!847356)))

(declare-fun b!1322338 () Bool)

(assert (=> b!1322338 (= e!847356 e!847354)))

(assert (=> b!1322338 (= c!217113 ((_ is Union!3629) (regex!2315 (rule!4060 t1!34))))))

(declare-fun b!1322339 () Bool)

(assert (=> b!1322339 (= e!847354 call!89739)))

(declare-fun b!1322340 () Bool)

(declare-fun e!847353 () List!13446)

(assert (=> b!1322340 (= e!847353 Nil!13380)))

(declare-fun b!1322341 () Bool)

(assert (=> b!1322341 (= e!847355 (Cons!13380 (c!216975 (regex!2315 (rule!4060 t1!34))) Nil!13380))))

(declare-fun bm!89735 () Bool)

(declare-fun call!89738 () List!13446)

(assert (=> bm!89735 (= call!89738 (usedCharacters!180 (ite c!217113 (regOne!7771 (regex!2315 (rule!4060 t1!34))) (regTwo!7770 (regex!2315 (rule!4060 t1!34))))))))

(declare-fun b!1322335 () Bool)

(assert (=> b!1322335 (= e!847356 call!89740)))

(declare-fun d!373588 () Bool)

(declare-fun c!217114 () Bool)

(assert (=> d!373588 (= c!217114 (or ((_ is EmptyExpr!3629) (regex!2315 (rule!4060 t1!34))) ((_ is EmptyLang!3629) (regex!2315 (rule!4060 t1!34)))))))

(assert (=> d!373588 (= (usedCharacters!180 (regex!2315 (rule!4060 t1!34))) e!847353)))

(declare-fun bm!89736 () Bool)

(assert (=> bm!89736 (= call!89739 (++!3418 (ite c!217113 call!89738 call!89741) (ite c!217113 call!89741 call!89738)))))

(declare-fun b!1322342 () Bool)

(assert (=> b!1322342 (= e!847353 e!847355)))

(declare-fun c!217116 () Bool)

(assert (=> b!1322342 (= c!217116 ((_ is ElementMatch!3629) (regex!2315 (rule!4060 t1!34))))))

(assert (= (and d!373588 c!217114) b!1322340))

(assert (= (and d!373588 (not c!217114)) b!1322342))

(assert (= (and b!1322342 c!217116) b!1322341))

(assert (= (and b!1322342 (not c!217116)) b!1322337))

(assert (= (and b!1322337 c!217115) b!1322335))

(assert (= (and b!1322337 (not c!217115)) b!1322338))

(assert (= (and b!1322338 c!217113) b!1322336))

(assert (= (and b!1322338 (not c!217113)) b!1322339))

(assert (= (or b!1322336 b!1322339) bm!89735))

(assert (= (or b!1322336 b!1322339) bm!89734))

(assert (= (or b!1322336 b!1322339) bm!89736))

(assert (= (or b!1322335 bm!89734) bm!89733))

(declare-fun m!1478671 () Bool)

(assert (=> bm!89733 m!1478671))

(declare-fun m!1478673 () Bool)

(assert (=> bm!89735 m!1478673))

(declare-fun m!1478675 () Bool)

(assert (=> bm!89736 m!1478675))

(assert (=> b!1321610 d!373588))

(declare-fun d!373608 () Bool)

(declare-fun lt!436551 () Bool)

(assert (=> d!373608 (= lt!436551 (isEmpty!7964 (list!5054 (_2!7392 lt!436289))))))

(assert (=> d!373608 (= lt!436551 (isEmpty!7965 (c!216974 (_2!7392 lt!436289))))))

(assert (=> d!373608 (= (isEmpty!7956 (_2!7392 lt!436289)) lt!436551)))

(declare-fun bs!331171 () Bool)

(assert (= bs!331171 d!373608))

(declare-fun m!1478677 () Bool)

(assert (=> bs!331171 m!1478677))

(assert (=> bs!331171 m!1478677))

(declare-fun m!1478679 () Bool)

(assert (=> bs!331171 m!1478679))

(declare-fun m!1478681 () Bool)

(assert (=> bs!331171 m!1478681))

(assert (=> b!1321631 d!373608))

(declare-fun d!373610 () Bool)

(declare-fun choose!8095 (Int) Bool)

(assert (=> d!373610 (= (Exists!787 lambda!54035) (choose!8095 lambda!54035))))

(declare-fun bs!331172 () Bool)

(assert (= bs!331172 d!373610))

(declare-fun m!1478683 () Bool)

(assert (=> bs!331172 m!1478683))

(assert (=> b!1321628 d!373610))

(declare-fun bs!331173 () Bool)

(declare-fun d!373612 () Bool)

(assert (= bs!331173 (and d!373612 b!1321628)))

(declare-fun lambda!54080 () Int)

(assert (=> bs!331173 (= lambda!54080 lambda!54035)))

(assert (=> d!373612 true))

(assert (=> d!373612 true))

(assert (=> d!373612 (Exists!787 lambda!54080)))

(declare-fun lt!436554 () Unit!19458)

(declare-fun choose!8096 (Regex!3629 List!13446) Unit!19458)

(assert (=> d!373612 (= lt!436554 (choose!8096 lt!436295 lt!436301))))

(assert (=> d!373612 (validRegex!1555 lt!436295)))

(assert (=> d!373612 (= (lemmaPrefixMatchThenExistsStringThatMatches!105 lt!436295 lt!436301) lt!436554)))

(declare-fun bs!331174 () Bool)

(assert (= bs!331174 d!373612))

(declare-fun m!1478685 () Bool)

(assert (=> bs!331174 m!1478685))

(declare-fun m!1478687 () Bool)

(assert (=> bs!331174 m!1478687))

(assert (=> bs!331174 m!1478547))

(assert (=> b!1321628 d!373612))

(declare-fun d!373614 () Bool)

(assert (=> d!373614 (= (inv!17756 (tag!2577 (rule!4060 t2!34))) (= (mod (str.len (value!75609 (tag!2577 (rule!4060 t2!34)))) 2) 0))))

(assert (=> b!1321606 d!373614))

(declare-fun d!373616 () Bool)

(declare-fun res!594462 () Bool)

(declare-fun e!847359 () Bool)

(assert (=> d!373616 (=> (not res!594462) (not e!847359))))

(assert (=> d!373616 (= res!594462 (semiInverseModEq!874 (toChars!3405 (transformation!2315 (rule!4060 t2!34))) (toValue!3546 (transformation!2315 (rule!4060 t2!34)))))))

(assert (=> d!373616 (= (inv!17759 (transformation!2315 (rule!4060 t2!34))) e!847359)))

(declare-fun b!1322345 () Bool)

(assert (=> b!1322345 (= e!847359 (equivClasses!833 (toChars!3405 (transformation!2315 (rule!4060 t2!34))) (toValue!3546 (transformation!2315 (rule!4060 t2!34)))))))

(assert (= (and d!373616 res!594462) b!1322345))

(declare-fun m!1478689 () Bool)

(assert (=> d!373616 m!1478689))

(declare-fun m!1478691 () Bool)

(assert (=> b!1322345 m!1478691))

(assert (=> b!1321606 d!373616))

(declare-fun b!1322356 () Bool)

(declare-fun e!847366 () Bool)

(declare-fun e!847368 () Bool)

(assert (=> b!1322356 (= e!847366 e!847368)))

(declare-fun c!217122 () Bool)

(assert (=> b!1322356 (= c!217122 ((_ is IntegerValue!7216) (value!75610 t2!34)))))

(declare-fun b!1322357 () Bool)

(declare-fun inv!17 (TokenValue!2405) Bool)

(assert (=> b!1322357 (= e!847368 (inv!17 (value!75610 t2!34)))))

(declare-fun b!1322358 () Bool)

(declare-fun res!594465 () Bool)

(declare-fun e!847367 () Bool)

(assert (=> b!1322358 (=> res!594465 e!847367)))

(assert (=> b!1322358 (= res!594465 (not ((_ is IntegerValue!7217) (value!75610 t2!34))))))

(assert (=> b!1322358 (= e!847368 e!847367)))

(declare-fun d!373618 () Bool)

(declare-fun c!217121 () Bool)

(assert (=> d!373618 (= c!217121 ((_ is IntegerValue!7215) (value!75610 t2!34)))))

(assert (=> d!373618 (= (inv!21 (value!75610 t2!34)) e!847366)))

(declare-fun b!1322359 () Bool)

(declare-fun inv!16 (TokenValue!2405) Bool)

(assert (=> b!1322359 (= e!847366 (inv!16 (value!75610 t2!34)))))

(declare-fun b!1322360 () Bool)

(declare-fun inv!15 (TokenValue!2405) Bool)

(assert (=> b!1322360 (= e!847367 (inv!15 (value!75610 t2!34)))))

(assert (= (and d!373618 c!217121) b!1322359))

(assert (= (and d!373618 (not c!217121)) b!1322356))

(assert (= (and b!1322356 c!217122) b!1322357))

(assert (= (and b!1322356 (not c!217122)) b!1322358))

(assert (= (and b!1322358 (not res!594465)) b!1322360))

(declare-fun m!1478693 () Bool)

(assert (=> b!1322357 m!1478693))

(declare-fun m!1478695 () Bool)

(assert (=> b!1322359 m!1478695))

(declare-fun m!1478697 () Bool)

(assert (=> b!1322360 m!1478697))

(assert (=> b!1321627 d!373618))

(declare-fun d!373620 () Bool)

(declare-fun lt!436555 () Bool)

(assert (=> d!373620 (= lt!436555 (select (content!1894 lt!436302) lt!436291))))

(declare-fun e!847370 () Bool)

(assert (=> d!373620 (= lt!436555 e!847370)))

(declare-fun res!594467 () Bool)

(assert (=> d!373620 (=> (not res!594467) (not e!847370))))

(assert (=> d!373620 (= res!594467 ((_ is Cons!13380) lt!436302))))

(assert (=> d!373620 (= (contains!2362 lt!436302 lt!436291) lt!436555)))

(declare-fun b!1322361 () Bool)

(declare-fun e!847369 () Bool)

(assert (=> b!1322361 (= e!847370 e!847369)))

(declare-fun res!594466 () Bool)

(assert (=> b!1322361 (=> res!594466 e!847369)))

(assert (=> b!1322361 (= res!594466 (= (h!18781 lt!436302) lt!436291))))

(declare-fun b!1322362 () Bool)

(assert (=> b!1322362 (= e!847369 (contains!2362 (t!118639 lt!436302) lt!436291))))

(assert (= (and d!373620 res!594467) b!1322361))

(assert (= (and b!1322361 (not res!594466)) b!1322362))

(declare-fun m!1478699 () Bool)

(assert (=> d!373620 m!1478699))

(declare-fun m!1478701 () Bool)

(assert (=> d!373620 m!1478701))

(declare-fun m!1478703 () Bool)

(assert (=> b!1322362 m!1478703))

(assert (=> b!1321608 d!373620))

(declare-fun b!1322363 () Bool)

(declare-fun e!847371 () Bool)

(declare-fun e!847373 () Bool)

(assert (=> b!1322363 (= e!847371 e!847373)))

(declare-fun c!217124 () Bool)

(assert (=> b!1322363 (= c!217124 ((_ is IntegerValue!7216) (value!75610 t1!34)))))

(declare-fun b!1322364 () Bool)

(assert (=> b!1322364 (= e!847373 (inv!17 (value!75610 t1!34)))))

(declare-fun b!1322365 () Bool)

(declare-fun res!594468 () Bool)

(declare-fun e!847372 () Bool)

(assert (=> b!1322365 (=> res!594468 e!847372)))

(assert (=> b!1322365 (= res!594468 (not ((_ is IntegerValue!7217) (value!75610 t1!34))))))

(assert (=> b!1322365 (= e!847373 e!847372)))

(declare-fun d!373622 () Bool)

(declare-fun c!217123 () Bool)

(assert (=> d!373622 (= c!217123 ((_ is IntegerValue!7215) (value!75610 t1!34)))))

(assert (=> d!373622 (= (inv!21 (value!75610 t1!34)) e!847371)))

(declare-fun b!1322366 () Bool)

(assert (=> b!1322366 (= e!847371 (inv!16 (value!75610 t1!34)))))

(declare-fun b!1322367 () Bool)

(assert (=> b!1322367 (= e!847372 (inv!15 (value!75610 t1!34)))))

(assert (= (and d!373622 c!217123) b!1322366))

(assert (= (and d!373622 (not c!217123)) b!1322363))

(assert (= (and b!1322363 c!217124) b!1322364))

(assert (= (and b!1322363 (not c!217124)) b!1322365))

(assert (= (and b!1322365 (not res!594468)) b!1322367))

(declare-fun m!1478705 () Bool)

(assert (=> b!1322364 m!1478705))

(declare-fun m!1478707 () Bool)

(assert (=> b!1322366 m!1478707))

(declare-fun m!1478709 () Bool)

(assert (=> b!1322367 m!1478709))

(assert (=> b!1321629 d!373622))

(declare-fun d!373624 () Bool)

(declare-fun lt!436556 () Bool)

(assert (=> d!373624 (= lt!436556 (select (content!1894 lt!436302) lt!436298))))

(declare-fun e!847375 () Bool)

(assert (=> d!373624 (= lt!436556 e!847375)))

(declare-fun res!594470 () Bool)

(assert (=> d!373624 (=> (not res!594470) (not e!847375))))

(assert (=> d!373624 (= res!594470 ((_ is Cons!13380) lt!436302))))

(assert (=> d!373624 (= (contains!2362 lt!436302 lt!436298) lt!436556)))

(declare-fun b!1322368 () Bool)

(declare-fun e!847374 () Bool)

(assert (=> b!1322368 (= e!847375 e!847374)))

(declare-fun res!594469 () Bool)

(assert (=> b!1322368 (=> res!594469 e!847374)))

(assert (=> b!1322368 (= res!594469 (= (h!18781 lt!436302) lt!436298))))

(declare-fun b!1322369 () Bool)

(assert (=> b!1322369 (= e!847374 (contains!2362 (t!118639 lt!436302) lt!436298))))

(assert (= (and d!373624 res!594470) b!1322368))

(assert (= (and b!1322368 (not res!594469)) b!1322369))

(assert (=> d!373624 m!1478699))

(declare-fun m!1478711 () Bool)

(assert (=> d!373624 m!1478711))

(declare-fun m!1478713 () Bool)

(assert (=> b!1322369 m!1478713))

(assert (=> b!1321604 d!373624))

(declare-fun d!373626 () Bool)

(declare-fun res!594473 () Bool)

(declare-fun e!847378 () Bool)

(assert (=> d!373626 (=> (not res!594473) (not e!847378))))

(declare-fun rulesValid!843 (LexerInterface!2010 List!13448) Bool)

(assert (=> d!373626 (= res!594473 (rulesValid!843 thiss!19762 rules!2550))))

(assert (=> d!373626 (= (rulesInvariant!1880 thiss!19762 rules!2550) e!847378)))

(declare-fun b!1322372 () Bool)

(declare-datatypes ((List!13452 0))(
  ( (Nil!13386) (Cons!13386 (h!18787 String!16261) (t!118681 List!13452)) )
))
(declare-fun noDuplicateTag!843 (LexerInterface!2010 List!13448 List!13452) Bool)

(assert (=> b!1322372 (= e!847378 (noDuplicateTag!843 thiss!19762 rules!2550 Nil!13386))))

(assert (= (and d!373626 res!594473) b!1322372))

(declare-fun m!1478715 () Bool)

(assert (=> d!373626 m!1478715))

(declare-fun m!1478717 () Bool)

(assert (=> b!1322372 m!1478717))

(assert (=> b!1321625 d!373626))

(declare-fun d!373628 () Bool)

(declare-fun c!217127 () Bool)

(assert (=> d!373628 (= c!217127 (isEmpty!7964 lt!436301))))

(declare-fun e!847381 () Bool)

(assert (=> d!373628 (= (prefixMatch!142 lt!436295 lt!436301) e!847381)))

(declare-fun b!1322377 () Bool)

(declare-fun lostCause!281 (Regex!3629) Bool)

(assert (=> b!1322377 (= e!847381 (not (lostCause!281 lt!436295)))))

(declare-fun b!1322378 () Bool)

(assert (=> b!1322378 (= e!847381 (prefixMatch!142 (derivativeStep!905 lt!436295 (head!2298 lt!436301)) (tail!1898 lt!436301)))))

(assert (= (and d!373628 c!217127) b!1322377))

(assert (= (and d!373628 (not c!217127)) b!1322378))

(declare-fun m!1478719 () Bool)

(assert (=> d!373628 m!1478719))

(declare-fun m!1478721 () Bool)

(assert (=> b!1322377 m!1478721))

(declare-fun m!1478723 () Bool)

(assert (=> b!1322378 m!1478723))

(assert (=> b!1322378 m!1478723))

(declare-fun m!1478725 () Bool)

(assert (=> b!1322378 m!1478725))

(declare-fun m!1478727 () Bool)

(assert (=> b!1322378 m!1478727))

(assert (=> b!1322378 m!1478725))

(assert (=> b!1322378 m!1478727))

(declare-fun m!1478729 () Bool)

(assert (=> b!1322378 m!1478729))

(assert (=> b!1321603 d!373628))

(declare-fun b!1322380 () Bool)

(declare-fun e!847382 () List!13446)

(assert (=> b!1322380 (= e!847382 (Cons!13380 (h!18781 lt!436307) (++!3418 (t!118639 lt!436307) (Cons!13380 lt!436291 Nil!13380))))))

(declare-fun b!1322379 () Bool)

(assert (=> b!1322379 (= e!847382 (Cons!13380 lt!436291 Nil!13380))))

(declare-fun b!1322381 () Bool)

(declare-fun res!594474 () Bool)

(declare-fun e!847383 () Bool)

(assert (=> b!1322381 (=> (not res!594474) (not e!847383))))

(declare-fun lt!436557 () List!13446)

(assert (=> b!1322381 (= res!594474 (= (size!10907 lt!436557) (+ (size!10907 lt!436307) (size!10907 (Cons!13380 lt!436291 Nil!13380)))))))

(declare-fun d!373630 () Bool)

(assert (=> d!373630 e!847383))

(declare-fun res!594475 () Bool)

(assert (=> d!373630 (=> (not res!594475) (not e!847383))))

(assert (=> d!373630 (= res!594475 (= (content!1894 lt!436557) ((_ map or) (content!1894 lt!436307) (content!1894 (Cons!13380 lt!436291 Nil!13380)))))))

(assert (=> d!373630 (= lt!436557 e!847382)))

(declare-fun c!217128 () Bool)

(assert (=> d!373630 (= c!217128 ((_ is Nil!13380) lt!436307))))

(assert (=> d!373630 (= (++!3418 lt!436307 (Cons!13380 lt!436291 Nil!13380)) lt!436557)))

(declare-fun b!1322382 () Bool)

(assert (=> b!1322382 (= e!847383 (or (not (= (Cons!13380 lt!436291 Nil!13380) Nil!13380)) (= lt!436557 lt!436307)))))

(assert (= (and d!373630 c!217128) b!1322379))

(assert (= (and d!373630 (not c!217128)) b!1322380))

(assert (= (and d!373630 res!594475) b!1322381))

(assert (= (and b!1322381 res!594474) b!1322382))

(declare-fun m!1478731 () Bool)

(assert (=> b!1322380 m!1478731))

(declare-fun m!1478733 () Bool)

(assert (=> b!1322381 m!1478733))

(assert (=> b!1322381 m!1477961))

(declare-fun m!1478735 () Bool)

(assert (=> b!1322381 m!1478735))

(declare-fun m!1478737 () Bool)

(assert (=> d!373630 m!1478737))

(declare-fun m!1478739 () Bool)

(assert (=> d!373630 m!1478739))

(declare-fun m!1478741 () Bool)

(assert (=> d!373630 m!1478741))

(assert (=> b!1321603 d!373630))

(declare-fun d!373632 () Bool)

(assert (=> d!373632 (= (list!5054 lt!436312) (list!5058 (c!216974 lt!436312)))))

(declare-fun bs!331175 () Bool)

(assert (= bs!331175 d!373632))

(declare-fun m!1478743 () Bool)

(assert (=> bs!331175 m!1478743))

(assert (=> b!1321603 d!373632))

(declare-fun d!373634 () Bool)

(declare-fun lt!436558 () BalanceConc!8740)

(assert (=> d!373634 (= (list!5054 lt!436558) (originalCharacters!3177 t1!34))))

(assert (=> d!373634 (= lt!436558 (dynLambda!5885 (toChars!3405 (transformation!2315 (rule!4060 t1!34))) (value!75610 t1!34)))))

(assert (=> d!373634 (= (charsOf!1287 t1!34) lt!436558)))

(declare-fun b_lambda!38675 () Bool)

(assert (=> (not b_lambda!38675) (not d!373634)))

(assert (=> d!373634 t!118666))

(declare-fun b_and!88313 () Bool)

(assert (= b_and!88303 (and (=> t!118666 result!85150) b_and!88313)))

(assert (=> d!373634 t!118668))

(declare-fun b_and!88315 () Bool)

(assert (= b_and!88305 (and (=> t!118668 result!85152) b_and!88315)))

(assert (=> d!373634 t!118670))

(declare-fun b_and!88317 () Bool)

(assert (= b_and!88307 (and (=> t!118670 result!85154) b_and!88317)))

(declare-fun m!1478745 () Bool)

(assert (=> d!373634 m!1478745))

(assert (=> d!373634 m!1478631))

(assert (=> b!1321603 d!373634))

(declare-fun d!373636 () Bool)

(declare-fun lt!436559 () C!7548)

(assert (=> d!373636 (= lt!436559 (apply!3074 (list!5054 lt!436304) 0))))

(assert (=> d!373636 (= lt!436559 (apply!3075 (c!216974 lt!436304) 0))))

(declare-fun e!847384 () Bool)

(assert (=> d!373636 e!847384))

(declare-fun res!594476 () Bool)

(assert (=> d!373636 (=> (not res!594476) (not e!847384))))

(assert (=> d!373636 (= res!594476 (<= 0 0))))

(assert (=> d!373636 (= (apply!3069 lt!436304 0) lt!436559)))

(declare-fun b!1322383 () Bool)

(assert (=> b!1322383 (= e!847384 (< 0 (size!10901 lt!436304)))))

(assert (= (and d!373636 res!594476) b!1322383))

(assert (=> d!373636 m!1477665))

(assert (=> d!373636 m!1477665))

(declare-fun m!1478747 () Bool)

(assert (=> d!373636 m!1478747))

(declare-fun m!1478749 () Bool)

(assert (=> d!373636 m!1478749))

(assert (=> b!1322383 m!1477743))

(assert (=> b!1321603 d!373636))

(declare-fun bs!331176 () Bool)

(declare-fun d!373638 () Bool)

(assert (= bs!331176 (and d!373638 b!1321599)))

(declare-fun lambda!54083 () Int)

(assert (=> bs!331176 (= lambda!54083 lambda!54036)))

(declare-fun lt!436562 () Unit!19458)

(declare-fun lemma!75 (List!13448 LexerInterface!2010 List!13448) Unit!19458)

(assert (=> d!373638 (= lt!436562 (lemma!75 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!83 (List!13450) Regex!3629)

(assert (=> d!373638 (= (rulesRegex!200 thiss!19762 rules!2550) (generalisedUnion!83 (map!2939 rules!2550 lambda!54083)))))

(declare-fun bs!331177 () Bool)

(assert (= bs!331177 d!373638))

(declare-fun m!1478751 () Bool)

(assert (=> bs!331177 m!1478751))

(declare-fun m!1478753 () Bool)

(assert (=> bs!331177 m!1478753))

(assert (=> bs!331177 m!1478753))

(declare-fun m!1478755 () Bool)

(assert (=> bs!331177 m!1478755))

(assert (=> b!1321603 d!373638))

(declare-fun d!373640 () Bool)

(declare-fun lt!436568 () Bool)

(declare-fun e!847390 () Bool)

(assert (=> d!373640 (= lt!436568 e!847390)))

(declare-fun res!594483 () Bool)

(assert (=> d!373640 (=> (not res!594483) (not e!847390))))

(assert (=> d!373640 (= res!594483 (= (list!5055 (_1!7392 (lex!845 thiss!19762 rules!2550 (print!784 thiss!19762 (singletonSeq!900 t1!34))))) (list!5055 (singletonSeq!900 t1!34))))))

(declare-fun e!847389 () Bool)

(assert (=> d!373640 (= lt!436568 e!847389)))

(declare-fun res!594485 () Bool)

(assert (=> d!373640 (=> (not res!594485) (not e!847389))))

(declare-fun lt!436567 () tuple2!13012)

(assert (=> d!373640 (= res!594485 (= (size!10912 (_1!7392 lt!436567)) 1))))

(assert (=> d!373640 (= lt!436567 (lex!845 thiss!19762 rules!2550 (print!784 thiss!19762 (singletonSeq!900 t1!34))))))

(assert (=> d!373640 (not (isEmpty!7957 rules!2550))))

(assert (=> d!373640 (= (rulesProduceIndividualToken!979 thiss!19762 rules!2550 t1!34) lt!436568)))

(declare-fun b!1322390 () Bool)

(declare-fun res!594484 () Bool)

(assert (=> b!1322390 (=> (not res!594484) (not e!847389))))

(declare-fun apply!3077 (BalanceConc!8742 Int) Token!4292)

(assert (=> b!1322390 (= res!594484 (= (apply!3077 (_1!7392 lt!436567) 0) t1!34))))

(declare-fun b!1322391 () Bool)

(assert (=> b!1322391 (= e!847389 (isEmpty!7956 (_2!7392 lt!436567)))))

(declare-fun b!1322392 () Bool)

(assert (=> b!1322392 (= e!847390 (isEmpty!7956 (_2!7392 (lex!845 thiss!19762 rules!2550 (print!784 thiss!19762 (singletonSeq!900 t1!34))))))))

(assert (= (and d!373640 res!594485) b!1322390))

(assert (= (and b!1322390 res!594484) b!1322391))

(assert (= (and d!373640 res!594483) b!1322392))

(assert (=> d!373640 m!1477669))

(assert (=> d!373640 m!1477689))

(declare-fun m!1478757 () Bool)

(assert (=> d!373640 m!1478757))

(declare-fun m!1478759 () Bool)

(assert (=> d!373640 m!1478759))

(assert (=> d!373640 m!1477687))

(assert (=> d!373640 m!1478315))

(declare-fun m!1478761 () Bool)

(assert (=> d!373640 m!1478761))

(assert (=> d!373640 m!1477687))

(assert (=> d!373640 m!1477689))

(assert (=> d!373640 m!1477687))

(declare-fun m!1478763 () Bool)

(assert (=> b!1322390 m!1478763))

(declare-fun m!1478765 () Bool)

(assert (=> b!1322391 m!1478765))

(assert (=> b!1322392 m!1477687))

(assert (=> b!1322392 m!1477687))

(assert (=> b!1322392 m!1477689))

(assert (=> b!1322392 m!1477689))

(assert (=> b!1322392 m!1478757))

(declare-fun m!1478767 () Bool)

(assert (=> b!1322392 m!1478767))

(assert (=> b!1321605 d!373640))

(declare-fun d!373642 () Bool)

(declare-fun lt!436570 () Bool)

(declare-fun e!847392 () Bool)

(assert (=> d!373642 (= lt!436570 e!847392)))

(declare-fun res!594486 () Bool)

(assert (=> d!373642 (=> (not res!594486) (not e!847392))))

(assert (=> d!373642 (= res!594486 (= (list!5055 (_1!7392 (lex!845 thiss!19762 rules!2550 (print!784 thiss!19762 (singletonSeq!900 t2!34))))) (list!5055 (singletonSeq!900 t2!34))))))

(declare-fun e!847391 () Bool)

(assert (=> d!373642 (= lt!436570 e!847391)))

(declare-fun res!594488 () Bool)

(assert (=> d!373642 (=> (not res!594488) (not e!847391))))

(declare-fun lt!436569 () tuple2!13012)

(assert (=> d!373642 (= res!594488 (= (size!10912 (_1!7392 lt!436569)) 1))))

(assert (=> d!373642 (= lt!436569 (lex!845 thiss!19762 rules!2550 (print!784 thiss!19762 (singletonSeq!900 t2!34))))))

(assert (=> d!373642 (not (isEmpty!7957 rules!2550))))

(assert (=> d!373642 (= (rulesProduceIndividualToken!979 thiss!19762 rules!2550 t2!34) lt!436570)))

(declare-fun b!1322393 () Bool)

(declare-fun res!594487 () Bool)

(assert (=> b!1322393 (=> (not res!594487) (not e!847391))))

(assert (=> b!1322393 (= res!594487 (= (apply!3077 (_1!7392 lt!436569) 0) t2!34))))

(declare-fun b!1322394 () Bool)

(assert (=> b!1322394 (= e!847391 (isEmpty!7956 (_2!7392 lt!436569)))))

(declare-fun b!1322395 () Bool)

(assert (=> b!1322395 (= e!847392 (isEmpty!7956 (_2!7392 (lex!845 thiss!19762 rules!2550 (print!784 thiss!19762 (singletonSeq!900 t2!34))))))))

(assert (= (and d!373642 res!594488) b!1322393))

(assert (= (and b!1322393 res!594487) b!1322394))

(assert (= (and d!373642 res!594486) b!1322395))

(assert (=> d!373642 m!1477669))

(assert (=> d!373642 m!1477647))

(declare-fun m!1478769 () Bool)

(assert (=> d!373642 m!1478769))

(declare-fun m!1478771 () Bool)

(assert (=> d!373642 m!1478771))

(assert (=> d!373642 m!1477645))

(assert (=> d!373642 m!1478261))

(declare-fun m!1478773 () Bool)

(assert (=> d!373642 m!1478773))

(assert (=> d!373642 m!1477645))

(assert (=> d!373642 m!1477647))

(assert (=> d!373642 m!1477645))

(declare-fun m!1478775 () Bool)

(assert (=> b!1322393 m!1478775))

(declare-fun m!1478777 () Bool)

(assert (=> b!1322394 m!1478777))

(assert (=> b!1322395 m!1477645))

(assert (=> b!1322395 m!1477645))

(assert (=> b!1322395 m!1477647))

(assert (=> b!1322395 m!1477647))

(assert (=> b!1322395 m!1478769))

(declare-fun m!1478779 () Bool)

(assert (=> b!1322395 m!1478779))

(assert (=> b!1321626 d!373642))

(declare-fun b!1322406 () Bool)

(declare-fun e!847395 () Bool)

(declare-fun tp_is_empty!6639 () Bool)

(assert (=> b!1322406 (= e!847395 tp_is_empty!6639)))

(declare-fun b!1322407 () Bool)

(declare-fun tp!383766 () Bool)

(declare-fun tp!383764 () Bool)

(assert (=> b!1322407 (= e!847395 (and tp!383766 tp!383764))))

(declare-fun b!1322409 () Bool)

(declare-fun tp!383762 () Bool)

(declare-fun tp!383763 () Bool)

(assert (=> b!1322409 (= e!847395 (and tp!383762 tp!383763))))

(declare-fun b!1322408 () Bool)

(declare-fun tp!383765 () Bool)

(assert (=> b!1322408 (= e!847395 tp!383765)))

(assert (=> b!1321633 (= tp!383699 e!847395)))

(assert (= (and b!1321633 ((_ is ElementMatch!3629) (regex!2315 (h!18783 rules!2550)))) b!1322406))

(assert (= (and b!1321633 ((_ is Concat!6035) (regex!2315 (h!18783 rules!2550)))) b!1322407))

(assert (= (and b!1321633 ((_ is Star!3629) (regex!2315 (h!18783 rules!2550)))) b!1322408))

(assert (= (and b!1321633 ((_ is Union!3629) (regex!2315 (h!18783 rules!2550)))) b!1322409))

(declare-fun b!1322410 () Bool)

(declare-fun e!847396 () Bool)

(assert (=> b!1322410 (= e!847396 tp_is_empty!6639)))

(declare-fun b!1322411 () Bool)

(declare-fun tp!383771 () Bool)

(declare-fun tp!383769 () Bool)

(assert (=> b!1322411 (= e!847396 (and tp!383771 tp!383769))))

(declare-fun b!1322413 () Bool)

(declare-fun tp!383767 () Bool)

(declare-fun tp!383768 () Bool)

(assert (=> b!1322413 (= e!847396 (and tp!383767 tp!383768))))

(declare-fun b!1322412 () Bool)

(declare-fun tp!383770 () Bool)

(assert (=> b!1322412 (= e!847396 tp!383770)))

(assert (=> b!1321606 (= tp!383698 e!847396)))

(assert (= (and b!1321606 ((_ is ElementMatch!3629) (regex!2315 (rule!4060 t2!34)))) b!1322410))

(assert (= (and b!1321606 ((_ is Concat!6035) (regex!2315 (rule!4060 t2!34)))) b!1322411))

(assert (= (and b!1321606 ((_ is Star!3629) (regex!2315 (rule!4060 t2!34)))) b!1322412))

(assert (= (and b!1321606 ((_ is Union!3629) (regex!2315 (rule!4060 t2!34)))) b!1322413))

(declare-fun b!1322418 () Bool)

(declare-fun e!847399 () Bool)

(declare-fun tp!383774 () Bool)

(assert (=> b!1322418 (= e!847399 (and tp_is_empty!6639 tp!383774))))

(assert (=> b!1321627 (= tp!383702 e!847399)))

(assert (= (and b!1321627 ((_ is Cons!13380) (originalCharacters!3177 t2!34))) b!1322418))

(declare-fun b!1322419 () Bool)

(declare-fun e!847400 () Bool)

(declare-fun tp!383775 () Bool)

(assert (=> b!1322419 (= e!847400 (and tp_is_empty!6639 tp!383775))))

(assert (=> b!1321629 (= tp!383695 e!847400)))

(assert (= (and b!1321629 ((_ is Cons!13380) (originalCharacters!3177 t1!34))) b!1322419))

(declare-fun b!1322420 () Bool)

(declare-fun e!847401 () Bool)

(assert (=> b!1322420 (= e!847401 tp_is_empty!6639)))

(declare-fun b!1322421 () Bool)

(declare-fun tp!383780 () Bool)

(declare-fun tp!383778 () Bool)

(assert (=> b!1322421 (= e!847401 (and tp!383780 tp!383778))))

(declare-fun b!1322423 () Bool)

(declare-fun tp!383776 () Bool)

(declare-fun tp!383777 () Bool)

(assert (=> b!1322423 (= e!847401 (and tp!383776 tp!383777))))

(declare-fun b!1322422 () Bool)

(declare-fun tp!383779 () Bool)

(assert (=> b!1322422 (= e!847401 tp!383779)))

(assert (=> b!1321591 (= tp!383697 e!847401)))

(assert (= (and b!1321591 ((_ is ElementMatch!3629) (regex!2315 (rule!4060 t1!34)))) b!1322420))

(assert (= (and b!1321591 ((_ is Concat!6035) (regex!2315 (rule!4060 t1!34)))) b!1322421))

(assert (= (and b!1321591 ((_ is Star!3629) (regex!2315 (rule!4060 t1!34)))) b!1322422))

(assert (= (and b!1321591 ((_ is Union!3629) (regex!2315 (rule!4060 t1!34)))) b!1322423))

(declare-fun b!1322434 () Bool)

(declare-fun b_free!31843 () Bool)

(declare-fun b_next!32547 () Bool)

(assert (=> b!1322434 (= b_free!31843 (not b_next!32547))))

(declare-fun tp!383790 () Bool)

(declare-fun b_and!88319 () Bool)

(assert (=> b!1322434 (= tp!383790 b_and!88319)))

(declare-fun b_free!31845 () Bool)

(declare-fun b_next!32549 () Bool)

(assert (=> b!1322434 (= b_free!31845 (not b_next!32549))))

(declare-fun t!118678 () Bool)

(declare-fun tb!70173 () Bool)

(assert (=> (and b!1322434 (= (toChars!3405 (transformation!2315 (h!18783 (t!118641 rules!2550)))) (toChars!3405 (transformation!2315 (rule!4060 t2!34)))) t!118678) tb!70173))

(declare-fun result!85170 () Bool)

(assert (= result!85170 result!85126))

(assert (=> d!373410 t!118678))

(declare-fun t!118680 () Bool)

(declare-fun tb!70175 () Bool)

(assert (=> (and b!1322434 (= (toChars!3405 (transformation!2315 (h!18783 (t!118641 rules!2550)))) (toChars!3405 (transformation!2315 (rule!4060 t1!34)))) t!118680) tb!70175))

(declare-fun result!85172 () Bool)

(assert (= result!85172 result!85150))

(assert (=> b!1322270 t!118680))

(assert (=> b!1322283 t!118678))

(assert (=> d!373634 t!118680))

(declare-fun tp!383791 () Bool)

(declare-fun b_and!88321 () Bool)

(assert (=> b!1322434 (= tp!383791 (and (=> t!118678 result!85170) (=> t!118680 result!85172) b_and!88321))))

(declare-fun e!847412 () Bool)

(assert (=> b!1322434 (= e!847412 (and tp!383790 tp!383791))))

(declare-fun b!1322433 () Bool)

(declare-fun e!847411 () Bool)

(declare-fun tp!383792 () Bool)

(assert (=> b!1322433 (= e!847411 (and tp!383792 (inv!17756 (tag!2577 (h!18783 (t!118641 rules!2550)))) (inv!17759 (transformation!2315 (h!18783 (t!118641 rules!2550)))) e!847412))))

(declare-fun b!1322432 () Bool)

(declare-fun e!847413 () Bool)

(declare-fun tp!383789 () Bool)

(assert (=> b!1322432 (= e!847413 (and e!847411 tp!383789))))

(assert (=> b!1321594 (= tp!383701 e!847413)))

(assert (= b!1322433 b!1322434))

(assert (= b!1322432 b!1322433))

(assert (= (and b!1321594 ((_ is Cons!13382) (t!118641 rules!2550))) b!1322432))

(declare-fun m!1478781 () Bool)

(assert (=> b!1322433 m!1478781))

(declare-fun m!1478783 () Bool)

(assert (=> b!1322433 m!1478783))

(declare-fun b_lambda!38677 () Bool)

(assert (= b_lambda!38633 (or b!1321599 b_lambda!38677)))

(declare-fun bs!331178 () Bool)

(declare-fun d!373644 () Bool)

(assert (= bs!331178 (and d!373644 b!1321599)))

(declare-fun res!594489 () Bool)

(declare-fun e!847414 () Bool)

(assert (=> bs!331178 (=> (not res!594489) (not e!847414))))

(assert (=> bs!331178 (= res!594489 (validRegex!1555 lt!436499))))

(assert (=> bs!331178 (= (dynLambda!5893 lambda!54037 lt!436499) e!847414)))

(declare-fun b!1322435 () Bool)

(assert (=> b!1322435 (= e!847414 (matchR!1631 lt!436499 lt!436302))))

(assert (= (and bs!331178 res!594489) b!1322435))

(declare-fun m!1478785 () Bool)

(assert (=> bs!331178 m!1478785))

(declare-fun m!1478787 () Bool)

(assert (=> b!1322435 m!1478787))

(assert (=> d!373520 d!373644))

(declare-fun b_lambda!38679 () Bool)

(assert (= b_lambda!38645 (or (and b!1321622 b_free!31829 (= (toChars!3405 (transformation!2315 (rule!4060 t2!34))) (toChars!3405 (transformation!2315 (rule!4060 t1!34))))) (and b!1321630 b_free!31833) (and b!1321598 b_free!31837 (= (toChars!3405 (transformation!2315 (h!18783 rules!2550))) (toChars!3405 (transformation!2315 (rule!4060 t1!34))))) (and b!1322434 b_free!31845 (= (toChars!3405 (transformation!2315 (h!18783 (t!118641 rules!2550)))) (toChars!3405 (transformation!2315 (rule!4060 t1!34))))) b_lambda!38679)))

(declare-fun b_lambda!38681 () Bool)

(assert (= b_lambda!38615 (or (and b!1321622 b_free!31829) (and b!1321630 b_free!31833 (= (toChars!3405 (transformation!2315 (rule!4060 t1!34))) (toChars!3405 (transformation!2315 (rule!4060 t2!34))))) (and b!1321598 b_free!31837 (= (toChars!3405 (transformation!2315 (h!18783 rules!2550))) (toChars!3405 (transformation!2315 (rule!4060 t2!34))))) (and b!1322434 b_free!31845 (= (toChars!3405 (transformation!2315 (h!18783 (t!118641 rules!2550)))) (toChars!3405 (transformation!2315 (rule!4060 t2!34))))) b_lambda!38681)))

(declare-fun b_lambda!38683 () Bool)

(assert (= b_lambda!38631 (or b!1321623 b_lambda!38683)))

(declare-fun bs!331179 () Bool)

(declare-fun d!373646 () Bool)

(assert (= bs!331179 (and d!373646 b!1321623)))

(assert (=> bs!331179 (= (dynLambda!5891 lambda!54038 lt!436490) (= (regex!2315 lt!436490) lt!436290))))

(assert (=> d!373504 d!373646))

(declare-fun b_lambda!38685 () Bool)

(assert (= b_lambda!38643 (or b!1321609 b_lambda!38685)))

(declare-fun bs!331180 () Bool)

(declare-fun d!373648 () Bool)

(assert (= bs!331180 (and d!373648 b!1321609)))

(declare-fun ruleValid!568 (LexerInterface!2010 Rule!4430) Bool)

(assert (=> bs!331180 (= (dynLambda!5891 lambda!54039 lt!436296) (ruleValid!568 thiss!19762 lt!436296))))

(declare-fun m!1478789 () Bool)

(assert (=> bs!331180 m!1478789))

(assert (=> d!373568 d!373648))

(declare-fun b_lambda!38687 () Bool)

(assert (= b_lambda!38639 (or b!1321609 b_lambda!38687)))

(declare-fun bs!331181 () Bool)

(declare-fun d!373650 () Bool)

(assert (= bs!331181 (and d!373650 b!1321609)))

(assert (=> bs!331181 (= (dynLambda!5891 lambda!54039 (rule!4060 t2!34)) (ruleValid!568 thiss!19762 (rule!4060 t2!34)))))

(declare-fun m!1478791 () Bool)

(assert (=> bs!331181 m!1478791))

(assert (=> d!373564 d!373650))

(declare-fun b_lambda!38689 () Bool)

(assert (= b_lambda!38623 (or b!1321628 b_lambda!38689)))

(declare-fun bs!331182 () Bool)

(declare-fun d!373652 () Bool)

(assert (= bs!331182 (and d!373652 b!1321628)))

(declare-fun res!594490 () Bool)

(declare-fun e!847415 () Bool)

(assert (=> bs!331182 (=> (not res!594490) (not e!847415))))

(assert (=> bs!331182 (= res!594490 (matchR!1631 lt!436295 lt!436426))))

(assert (=> bs!331182 (= (dynLambda!5886 lambda!54035 lt!436426) e!847415)))

(declare-fun b!1322436 () Bool)

(assert (=> b!1322436 (= e!847415 (isPrefix!1079 lt!436301 lt!436426))))

(assert (= (and bs!331182 res!594490) b!1322436))

(declare-fun m!1478793 () Bool)

(assert (=> bs!331182 m!1478793))

(declare-fun m!1478795 () Bool)

(assert (=> b!1322436 m!1478795))

(assert (=> d!373432 d!373652))

(declare-fun b_lambda!38691 () Bool)

(assert (= b_lambda!38629 (or b!1321623 b_lambda!38691)))

(declare-fun bs!331183 () Bool)

(declare-fun d!373654 () Bool)

(assert (= bs!331183 (and d!373654 b!1321623)))

(assert (=> bs!331183 (= (dynLambda!5891 lambda!54038 (h!18783 rules!2550)) (= (regex!2315 (h!18783 rules!2550)) lt!436290))))

(assert (=> b!1322075 d!373654))

(declare-fun b_lambda!38693 () Bool)

(assert (= b_lambda!38647 (or (and b!1321622 b_free!31829) (and b!1321630 b_free!31833 (= (toChars!3405 (transformation!2315 (rule!4060 t1!34))) (toChars!3405 (transformation!2315 (rule!4060 t2!34))))) (and b!1321598 b_free!31837 (= (toChars!3405 (transformation!2315 (h!18783 rules!2550))) (toChars!3405 (transformation!2315 (rule!4060 t2!34))))) (and b!1322434 b_free!31845 (= (toChars!3405 (transformation!2315 (h!18783 (t!118641 rules!2550)))) (toChars!3405 (transformation!2315 (rule!4060 t2!34))))) b_lambda!38693)))

(declare-fun b_lambda!38695 () Bool)

(assert (= b_lambda!38641 (or b!1321609 b_lambda!38695)))

(declare-fun bs!331184 () Bool)

(declare-fun d!373656 () Bool)

(assert (= bs!331184 (and d!373656 b!1321609)))

(assert (=> bs!331184 (= (dynLambda!5891 lambda!54039 (rule!4060 t1!34)) (ruleValid!568 thiss!19762 (rule!4060 t1!34)))))

(declare-fun m!1478797 () Bool)

(assert (=> bs!331184 m!1478797))

(assert (=> d!373566 d!373656))

(declare-fun b_lambda!38697 () Bool)

(assert (= b_lambda!38675 (or (and b!1321622 b_free!31829 (= (toChars!3405 (transformation!2315 (rule!4060 t2!34))) (toChars!3405 (transformation!2315 (rule!4060 t1!34))))) (and b!1321630 b_free!31833) (and b!1321598 b_free!31837 (= (toChars!3405 (transformation!2315 (h!18783 rules!2550))) (toChars!3405 (transformation!2315 (rule!4060 t1!34))))) (and b!1322434 b_free!31845 (= (toChars!3405 (transformation!2315 (h!18783 (t!118641 rules!2550)))) (toChars!3405 (transformation!2315 (rule!4060 t1!34))))) b_lambda!38697)))

(declare-fun b_lambda!38699 () Bool)

(assert (= b_lambda!38625 (or b!1321599 b_lambda!38699)))

(declare-fun bs!331185 () Bool)

(declare-fun d!373658 () Bool)

(assert (= bs!331185 (and d!373658 b!1321599)))

(assert (=> bs!331185 (= (dynLambda!5887 lambda!54036 (h!18783 rules!2550)) (regex!2315 (h!18783 rules!2550)))))

(assert (=> b!1321962 d!373658))

(declare-fun b_lambda!38701 () Bool)

(assert (= b_lambda!38635 (or b!1321599 b_lambda!38701)))

(declare-fun bs!331186 () Bool)

(declare-fun d!373660 () Bool)

(assert (= bs!331186 (and d!373660 b!1321599)))

(declare-fun res!594491 () Bool)

(declare-fun e!847416 () Bool)

(assert (=> bs!331186 (=> (not res!594491) (not e!847416))))

(assert (=> bs!331186 (= res!594491 (validRegex!1555 (h!18785 (map!2939 rules!2550 lambda!54036))))))

(assert (=> bs!331186 (= (dynLambda!5893 lambda!54037 (h!18785 (map!2939 rules!2550 lambda!54036))) e!847416)))

(declare-fun b!1322437 () Bool)

(assert (=> b!1322437 (= e!847416 (matchR!1631 (h!18785 (map!2939 rules!2550 lambda!54036)) lt!436302))))

(assert (= (and bs!331186 res!594491) b!1322437))

(declare-fun m!1478799 () Bool)

(assert (=> bs!331186 m!1478799))

(declare-fun m!1478801 () Bool)

(assert (=> b!1322437 m!1478801))

(assert (=> b!1322103 d!373660))

(check-sat (not d!373462) (not b!1322423) (not b!1322260) (not b!1322046) (not d!373560) tp_is_empty!6639 (not b_lambda!38695) (not b!1322286) (not b!1322366) (not b!1322284) (not b!1322246) (not b!1322436) (not b!1322407) (not d!373624) (not bm!89724) (not d!373452) (not d!373608) (not b_lambda!38681) (not d!373398) (not d!373570) (not b!1322209) (not b!1322076) (not b!1321822) (not d!373634) (not b!1322392) (not b!1322237) (not bs!331182) (not b!1322283) (not d!373410) (not d!373610) (not b!1322231) (not b!1322043) (not d!373356) (not bs!331186) (not d!373636) (not b_lambda!38683) (not d!373534) (not b!1321952) b_and!88317 (not d!373468) (not d!373632) (not b_lambda!38679) (not b_lambda!38689) (not d!373432) (not bs!331178) b_and!88315 (not b!1322041) (not b!1322391) (not b!1321708) (not b!1322394) (not bm!89736) (not b!1322140) (not b_next!32533) (not b!1322418) (not d!373612) b_and!88321 (not tb!70145) (not bm!89715) (not b!1322047) (not b!1322437) (not b!1322039) (not b!1322380) (not b!1322111) (not b!1322205) (not b_lambda!38697) (not b!1322035) (not b!1322034) (not b!1322137) (not d!373496) (not b!1321824) (not bm!89723) (not b!1322412) (not b_lambda!38701) (not bm!89722) (not d!373552) (not b!1322016) (not b!1322345) (not b!1322390) (not b!1322413) (not b!1322359) (not b!1322217) (not d!373414) (not d!373620) (not b!1322049) (not b!1322101) (not b_next!32535) (not b!1322040) (not b!1322378) (not b!1322098) (not b!1322105) (not b!1322271) (not b!1322207) (not b_lambda!38693) (not b!1322017) (not d!373630) (not d!373558) (not b!1322225) (not bs!331184) (not d!373530) (not b!1321898) (not b!1322018) (not b_next!32537) (not tb!70163) (not d!373354) (not b!1322270) (not b!1322254) (not b!1322421) b_and!88255 (not d!373498) (not d!373564) (not b!1322051) (not b!1322118) (not d!373408) (not b_next!32541) (not d!373518) (not b!1322074) (not b!1322019) (not b_next!32549) (not b_lambda!38691) (not b!1322377) (not d!373566) (not b!1322211) (not d!373584) (not b!1322229) (not b!1322248) (not b_lambda!38687) (not d!373640) (not b!1322227) (not d!373504) (not b!1321950) (not b!1321707) (not d!373494) (not d!373394) (not b_lambda!38685) (not d!373428) b_and!88319 (not d!373470) (not b!1322220) (not b!1322048) (not b_next!32531) (not b!1322422) (not b!1322078) (not b!1322409) (not b!1321818) (not d!373474) (not b!1322383) (not b!1322085) (not b!1322369) (not b!1322102) (not d!373360) (not d!373586) (not d!373524) (not d!373638) (not d!373520) (not b!1321709) (not d!373554) (not d!373502) (not b!1322433) (not b!1322360) (not b!1322393) b_and!88259 (not d!373626) (not d!373492) (not d!373500) (not b!1322152) (not b!1322038) (not b!1321819) (not b!1321962) (not d!373628) (not b!1322278) (not b!1321823) (not b_next!32547) b_and!88263 (not b!1322242) (not b!1321816) (not d!373522) (not bm!89733) (not b!1322419) (not b!1322042) (not b!1322239) (not b!1321821) (not bs!331180) (not d!373440) (not d!373642) (not b!1322037) (not d!373486) (not b_next!32539) (not b!1322435) (not b!1321951) (not d!373438) (not b!1321923) (not b!1322432) (not b!1322364) (not b!1322249) (not b!1321820) (not b!1321922) (not b!1322138) (not d!373358) (not b!1322259) (not d!373464) (not bm!89735) (not b_lambda!38699) (not b!1322232) (not b!1322372) (not b!1322408) (not b!1322395) (not b!1322212) (not b!1321696) (not bm!89701) (not b!1322357) (not d!373568) (not b!1322381) (not b!1322244) (not b!1322411) (not b_lambda!38677) (not b!1322258) (not b!1322362) (not d!373616) (not d!373578) (not d!373536) (not d!373526) (not d!373466) (not b!1322367) (not d!373444) (not bs!331181) (not b!1321941) b_and!88313)
(check-sat (not b_next!32535) b_and!88319 (not b_next!32531) b_and!88259 (not b_next!32539) b_and!88313 b_and!88317 b_and!88315 (not b_next!32533) b_and!88321 (not b_next!32537) b_and!88255 (not b_next!32541) (not b_next!32549) (not b_next!32547) b_and!88263)
