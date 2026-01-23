; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302930 () Bool)

(assert start!302930)

(declare-fun b!3225293 () Bool)

(declare-fun b_free!85977 () Bool)

(declare-fun b_next!86681 () Bool)

(assert (=> b!3225293 (= b_free!85977 (not b_next!86681))))

(declare-fun tp!1016206 () Bool)

(declare-fun b_and!215799 () Bool)

(assert (=> b!3225293 (= tp!1016206 b_and!215799)))

(declare-fun b_free!85979 () Bool)

(declare-fun b_next!86683 () Bool)

(assert (=> b!3225293 (= b_free!85979 (not b_next!86683))))

(declare-fun tp!1016211 () Bool)

(declare-fun b_and!215801 () Bool)

(assert (=> b!3225293 (= tp!1016211 b_and!215801)))

(declare-fun b!3225304 () Bool)

(declare-fun b_free!85981 () Bool)

(declare-fun b_next!86685 () Bool)

(assert (=> b!3225304 (= b_free!85981 (not b_next!86685))))

(declare-fun tp!1016214 () Bool)

(declare-fun b_and!215803 () Bool)

(assert (=> b!3225304 (= tp!1016214 b_and!215803)))

(declare-fun b_free!85983 () Bool)

(declare-fun b_next!86687 () Bool)

(assert (=> b!3225304 (= b_free!85983 (not b_next!86687))))

(declare-fun tp!1016218 () Bool)

(declare-fun b_and!215805 () Bool)

(assert (=> b!3225304 (= tp!1016218 b_and!215805)))

(declare-fun b!3225288 () Bool)

(declare-fun b_free!85985 () Bool)

(declare-fun b_next!86689 () Bool)

(assert (=> b!3225288 (= b_free!85985 (not b_next!86689))))

(declare-fun tp!1016215 () Bool)

(declare-fun b_and!215807 () Bool)

(assert (=> b!3225288 (= tp!1016215 b_and!215807)))

(declare-fun b_free!85987 () Bool)

(declare-fun b_next!86691 () Bool)

(assert (=> b!3225288 (= b_free!85987 (not b_next!86691))))

(declare-fun tp!1016208 () Bool)

(declare-fun b_and!215809 () Bool)

(assert (=> b!3225288 (= tp!1016208 b_and!215809)))

(declare-fun b!3225286 () Bool)

(declare-fun res!1313570 () Bool)

(declare-fun e!2011571 () Bool)

(assert (=> b!3225286 (=> (not res!1313570) (not e!2011571))))

(declare-datatypes ((String!40783 0))(
  ( (String!40784 (value!170344 String)) )
))
(declare-datatypes ((C!20224 0))(
  ( (C!20225 (val!12160 Int)) )
))
(declare-datatypes ((Regex!10019 0))(
  ( (ElementMatch!10019 (c!542040 C!20224)) (Concat!15509 (regOne!20550 Regex!10019) (regTwo!20550 Regex!10019)) (EmptyExpr!10019) (Star!10019 (reg!10348 Regex!10019)) (EmptyLang!10019) (Union!10019 (regOne!20551 Regex!10019) (regTwo!20551 Regex!10019)) )
))
(declare-datatypes ((List!36454 0))(
  ( (Nil!36330) (Cons!36330 (h!41750 (_ BitVec 16)) (t!240913 List!36454)) )
))
(declare-datatypes ((TokenValue!5490 0))(
  ( (FloatLiteralValue!10980 (text!38875 List!36454)) (TokenValueExt!5489 (__x!23197 Int)) (Broken!27450 (value!170345 List!36454)) (Object!5613) (End!5490) (Def!5490) (Underscore!5490) (Match!5490) (Else!5490) (Error!5490) (Case!5490) (If!5490) (Extends!5490) (Abstract!5490) (Class!5490) (Val!5490) (DelimiterValue!10980 (del!5550 List!36454)) (KeywordValue!5496 (value!170346 List!36454)) (CommentValue!10980 (value!170347 List!36454)) (WhitespaceValue!10980 (value!170348 List!36454)) (IndentationValue!5490 (value!170349 List!36454)) (String!40785) (Int32!5490) (Broken!27451 (value!170350 List!36454)) (Boolean!5491) (Unit!50921) (OperatorValue!5493 (op!5550 List!36454)) (IdentifierValue!10980 (value!170351 List!36454)) (IdentifierValue!10981 (value!170352 List!36454)) (WhitespaceValue!10981 (value!170353 List!36454)) (True!10980) (False!10980) (Broken!27452 (value!170354 List!36454)) (Broken!27453 (value!170355 List!36454)) (True!10981) (RightBrace!5490) (RightBracket!5490) (Colon!5490) (Null!5490) (Comma!5490) (LeftBracket!5490) (False!10981) (LeftBrace!5490) (ImaginaryLiteralValue!5490 (text!38876 List!36454)) (StringLiteralValue!16470 (value!170356 List!36454)) (EOFValue!5490 (value!170357 List!36454)) (IdentValue!5490 (value!170358 List!36454)) (DelimiterValue!10981 (value!170359 List!36454)) (DedentValue!5490 (value!170360 List!36454)) (NewLineValue!5490 (value!170361 List!36454)) (IntegerValue!16470 (value!170362 (_ BitVec 32)) (text!38877 List!36454)) (IntegerValue!16471 (value!170363 Int) (text!38878 List!36454)) (Times!5490) (Or!5490) (Equal!5490) (Minus!5490) (Broken!27454 (value!170364 List!36454)) (And!5490) (Div!5490) (LessEqual!5490) (Mod!5490) (Concat!15510) (Not!5490) (Plus!5490) (SpaceValue!5490 (value!170365 List!36454)) (IntegerValue!16472 (value!170366 Int) (text!38879 List!36454)) (StringLiteralValue!16471 (text!38880 List!36454)) (FloatLiteralValue!10981 (text!38881 List!36454)) (BytesLiteralValue!5490 (value!170367 List!36454)) (CommentValue!10981 (value!170368 List!36454)) (StringLiteralValue!16472 (value!170369 List!36454)) (ErrorTokenValue!5490 (msg!5551 List!36454)) )
))
(declare-datatypes ((List!36455 0))(
  ( (Nil!36331) (Cons!36331 (h!41751 C!20224) (t!240914 List!36455)) )
))
(declare-datatypes ((IArray!21795 0))(
  ( (IArray!21796 (innerList!10955 List!36455)) )
))
(declare-datatypes ((Conc!10895 0))(
  ( (Node!10895 (left!28287 Conc!10895) (right!28617 Conc!10895) (csize!22020 Int) (cheight!11106 Int)) (Leaf!17136 (xs!14013 IArray!21795) (csize!22021 Int)) (Empty!10895) )
))
(declare-datatypes ((BalanceConc!21404 0))(
  ( (BalanceConc!21405 (c!542041 Conc!10895)) )
))
(declare-datatypes ((TokenValueInjection!10408 0))(
  ( (TokenValueInjection!10409 (toValue!7360 Int) (toChars!7219 Int)) )
))
(declare-datatypes ((Rule!10320 0))(
  ( (Rule!10321 (regex!5260 Regex!10019) (tag!5792 String!40783) (isSeparator!5260 Bool) (transformation!5260 TokenValueInjection!10408)) )
))
(declare-datatypes ((Token!9886 0))(
  ( (Token!9887 (value!170370 TokenValue!5490) (rule!7718 Rule!10320) (size!27391 Int) (originalCharacters!5974 List!36455)) )
))
(declare-fun separatorToken!241 () Token!9886)

(assert (=> b!3225286 (= res!1313570 (isSeparator!5260 (rule!7718 separatorToken!241)))))

(declare-fun b!3225287 () Bool)

(declare-fun res!1313571 () Bool)

(assert (=> b!3225287 (=> (not res!1313571) (not e!2011571))))

(declare-datatypes ((List!36456 0))(
  ( (Nil!36332) (Cons!36332 (h!41752 Rule!10320) (t!240915 List!36456)) )
))
(declare-fun rules!2135 () List!36456)

(declare-fun sepAndNonSepRulesDisjointChars!1454 (List!36456 List!36456) Bool)

(assert (=> b!3225287 (= res!1313571 (sepAndNonSepRulesDisjointChars!1454 rules!2135 rules!2135))))

(declare-fun e!2011565 () Bool)

(assert (=> b!3225288 (= e!2011565 (and tp!1016215 tp!1016208))))

(declare-datatypes ((List!36457 0))(
  ( (Nil!36333) (Cons!36333 (h!41753 Token!9886) (t!240916 List!36457)) )
))
(declare-fun tokens!494 () List!36457)

(declare-fun b!3225289 () Bool)

(declare-fun e!2011566 () Bool)

(declare-fun tp!1016207 () Bool)

(declare-fun inv!49201 (String!40783) Bool)

(declare-fun inv!49204 (TokenValueInjection!10408) Bool)

(assert (=> b!3225289 (= e!2011566 (and tp!1016207 (inv!49201 (tag!5792 (rule!7718 (h!41753 tokens!494)))) (inv!49204 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) e!2011565))))

(declare-fun b!3225290 () Bool)

(declare-fun e!2011568 () Bool)

(declare-fun e!2011569 () Bool)

(declare-fun tp!1016209 () Bool)

(assert (=> b!3225290 (= e!2011568 (and tp!1016209 (inv!49201 (tag!5792 (rule!7718 separatorToken!241))) (inv!49204 (transformation!5260 (rule!7718 separatorToken!241))) e!2011569))))

(declare-fun b!3225291 () Bool)

(declare-fun res!1313567 () Bool)

(assert (=> b!3225291 (=> (not res!1313567) (not e!2011571))))

(declare-fun isEmpty!20407 (List!36456) Bool)

(assert (=> b!3225291 (= res!1313567 (not (isEmpty!20407 rules!2135)))))

(declare-fun e!2011570 () Bool)

(declare-fun b!3225292 () Bool)

(declare-fun e!2011576 () Bool)

(declare-fun tp!1016212 () Bool)

(assert (=> b!3225292 (= e!2011576 (and tp!1016212 (inv!49201 (tag!5792 (h!41752 rules!2135))) (inv!49204 (transformation!5260 (h!41752 rules!2135))) e!2011570))))

(assert (=> b!3225293 (= e!2011569 (and tp!1016206 tp!1016211))))

(declare-fun b!3225294 () Bool)

(declare-fun e!2011580 () Bool)

(declare-fun tp!1016217 () Bool)

(assert (=> b!3225294 (= e!2011580 (and e!2011576 tp!1016217))))

(declare-fun b!3225295 () Bool)

(declare-fun res!1313569 () Bool)

(assert (=> b!3225295 (=> (not res!1313569) (not e!2011571))))

(declare-datatypes ((LexerInterface!4849 0))(
  ( (LexerInterfaceExt!4846 (__x!23198 Int)) (Lexer!4847) )
))
(declare-fun thiss!18206 () LexerInterface!4849)

(declare-datatypes ((IArray!21797 0))(
  ( (IArray!21798 (innerList!10956 List!36457)) )
))
(declare-datatypes ((Conc!10896 0))(
  ( (Node!10896 (left!28288 Conc!10896) (right!28618 Conc!10896) (csize!22022 Int) (cheight!11107 Int)) (Leaf!17137 (xs!14014 IArray!21797) (csize!22023 Int)) (Empty!10896) )
))
(declare-datatypes ((BalanceConc!21406 0))(
  ( (BalanceConc!21407 (c!542042 Conc!10896)) )
))
(declare-fun rulesProduceEachTokenIndividually!1300 (LexerInterface!4849 List!36456 BalanceConc!21406) Bool)

(declare-fun seqFromList!3584 (List!36457) BalanceConc!21406)

(assert (=> b!3225295 (= res!1313569 (rulesProduceEachTokenIndividually!1300 thiss!18206 rules!2135 (seqFromList!3584 tokens!494)))))

(declare-fun b!3225297 () Bool)

(declare-fun e!2011563 () Bool)

(declare-fun e!2011574 () Bool)

(assert (=> b!3225297 (= e!2011563 e!2011574)))

(declare-fun res!1313566 () Bool)

(assert (=> b!3225297 (=> res!1313566 e!2011574)))

(declare-fun lt!1094103 () List!36455)

(declare-fun lt!1094101 () List!36455)

(declare-fun lt!1094100 () List!36455)

(assert (=> b!3225297 (= res!1313566 (or (not (= lt!1094101 lt!1094100)) (not (= lt!1094103 lt!1094100))))))

(declare-fun list!12949 (BalanceConc!21404) List!36455)

(declare-fun charsOf!3276 (Token!9886) BalanceConc!21404)

(assert (=> b!3225297 (= lt!1094100 (list!12949 (charsOf!3276 (h!41753 tokens!494))))))

(declare-fun b!3225298 () Bool)

(declare-fun res!1313573 () Bool)

(assert (=> b!3225298 (=> (not res!1313573) (not e!2011571))))

(declare-fun rulesProduceIndividualToken!2341 (LexerInterface!4849 List!36456 Token!9886) Bool)

(assert (=> b!3225298 (= res!1313573 (rulesProduceIndividualToken!2341 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3225299 () Bool)

(assert (=> b!3225299 (= e!2011571 (not e!2011563))))

(declare-fun res!1313565 () Bool)

(assert (=> b!3225299 (=> res!1313565 e!2011563)))

(assert (=> b!3225299 (= res!1313565 (not (= lt!1094103 lt!1094101)))))

(declare-fun printList!1399 (LexerInterface!4849 List!36457) List!36455)

(assert (=> b!3225299 (= lt!1094101 (printList!1399 thiss!18206 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))

(declare-fun lt!1094102 () BalanceConc!21404)

(assert (=> b!3225299 (= lt!1094103 (list!12949 lt!1094102))))

(declare-fun lt!1094104 () BalanceConc!21406)

(declare-fun printTailRec!1346 (LexerInterface!4849 BalanceConc!21406 Int BalanceConc!21404) BalanceConc!21404)

(assert (=> b!3225299 (= lt!1094102 (printTailRec!1346 thiss!18206 lt!1094104 0 (BalanceConc!21405 Empty!10895)))))

(declare-fun print!1914 (LexerInterface!4849 BalanceConc!21406) BalanceConc!21404)

(assert (=> b!3225299 (= lt!1094102 (print!1914 thiss!18206 lt!1094104))))

(declare-fun singletonSeq!2356 (Token!9886) BalanceConc!21406)

(assert (=> b!3225299 (= lt!1094104 (singletonSeq!2356 (h!41753 tokens!494)))))

(declare-fun b!3225300 () Bool)

(declare-fun e!2011567 () Bool)

(declare-fun e!2011577 () Bool)

(declare-fun tp!1016210 () Bool)

(declare-fun inv!49205 (Token!9886) Bool)

(assert (=> b!3225300 (= e!2011577 (and (inv!49205 (h!41753 tokens!494)) e!2011567 tp!1016210))))

(declare-fun b!3225301 () Bool)

(assert (=> b!3225301 (= e!2011574 (rulesProduceIndividualToken!2341 thiss!18206 rules!2135 (h!41753 tokens!494)))))

(declare-fun b!3225296 () Bool)

(declare-fun res!1313575 () Bool)

(assert (=> b!3225296 (=> (not res!1313575) (not e!2011571))))

(declare-fun lambda!118087 () Int)

(declare-fun forall!7450 (List!36457 Int) Bool)

(assert (=> b!3225296 (= res!1313575 (forall!7450 tokens!494 lambda!118087))))

(declare-fun res!1313568 () Bool)

(assert (=> start!302930 (=> (not res!1313568) (not e!2011571))))

(get-info :version)

(assert (=> start!302930 (= res!1313568 ((_ is Lexer!4847) thiss!18206))))

(assert (=> start!302930 e!2011571))

(assert (=> start!302930 true))

(assert (=> start!302930 e!2011580))

(assert (=> start!302930 e!2011577))

(declare-fun e!2011573 () Bool)

(assert (=> start!302930 (and (inv!49205 separatorToken!241) e!2011573)))

(declare-fun b!3225302 () Bool)

(declare-fun res!1313572 () Bool)

(assert (=> b!3225302 (=> (not res!1313572) (not e!2011571))))

(assert (=> b!3225302 (= res!1313572 (and (not ((_ is Nil!36333) tokens!494)) ((_ is Nil!36333) (t!240916 tokens!494))))))

(declare-fun b!3225303 () Bool)

(declare-fun res!1313574 () Bool)

(assert (=> b!3225303 (=> (not res!1313574) (not e!2011571))))

(declare-fun rulesInvariant!4246 (LexerInterface!4849 List!36456) Bool)

(assert (=> b!3225303 (= res!1313574 (rulesInvariant!4246 thiss!18206 rules!2135))))

(assert (=> b!3225304 (= e!2011570 (and tp!1016214 tp!1016218))))

(declare-fun b!3225305 () Bool)

(declare-fun tp!1016216 () Bool)

(declare-fun inv!21 (TokenValue!5490) Bool)

(assert (=> b!3225305 (= e!2011567 (and (inv!21 (value!170370 (h!41753 tokens!494))) e!2011566 tp!1016216))))

(declare-fun tp!1016213 () Bool)

(declare-fun b!3225306 () Bool)

(assert (=> b!3225306 (= e!2011573 (and (inv!21 (value!170370 separatorToken!241)) e!2011568 tp!1016213))))

(assert (= (and start!302930 res!1313568) b!3225291))

(assert (= (and b!3225291 res!1313567) b!3225303))

(assert (= (and b!3225303 res!1313574) b!3225295))

(assert (= (and b!3225295 res!1313569) b!3225298))

(assert (= (and b!3225298 res!1313573) b!3225286))

(assert (= (and b!3225286 res!1313570) b!3225296))

(assert (= (and b!3225296 res!1313575) b!3225287))

(assert (= (and b!3225287 res!1313571) b!3225302))

(assert (= (and b!3225302 res!1313572) b!3225299))

(assert (= (and b!3225299 (not res!1313565)) b!3225297))

(assert (= (and b!3225297 (not res!1313566)) b!3225301))

(assert (= b!3225292 b!3225304))

(assert (= b!3225294 b!3225292))

(assert (= (and start!302930 ((_ is Cons!36332) rules!2135)) b!3225294))

(assert (= b!3225289 b!3225288))

(assert (= b!3225305 b!3225289))

(assert (= b!3225300 b!3225305))

(assert (= (and start!302930 ((_ is Cons!36333) tokens!494)) b!3225300))

(assert (= b!3225290 b!3225293))

(assert (= b!3225306 b!3225290))

(assert (= start!302930 b!3225306))

(declare-fun m!3503497 () Bool)

(assert (=> b!3225297 m!3503497))

(assert (=> b!3225297 m!3503497))

(declare-fun m!3503499 () Bool)

(assert (=> b!3225297 m!3503499))

(declare-fun m!3503501 () Bool)

(assert (=> b!3225301 m!3503501))

(declare-fun m!3503503 () Bool)

(assert (=> b!3225305 m!3503503))

(declare-fun m!3503505 () Bool)

(assert (=> b!3225300 m!3503505))

(declare-fun m!3503507 () Bool)

(assert (=> b!3225306 m!3503507))

(declare-fun m!3503509 () Bool)

(assert (=> start!302930 m!3503509))

(declare-fun m!3503511 () Bool)

(assert (=> b!3225296 m!3503511))

(declare-fun m!3503513 () Bool)

(assert (=> b!3225295 m!3503513))

(assert (=> b!3225295 m!3503513))

(declare-fun m!3503515 () Bool)

(assert (=> b!3225295 m!3503515))

(declare-fun m!3503517 () Bool)

(assert (=> b!3225287 m!3503517))

(declare-fun m!3503519 () Bool)

(assert (=> b!3225298 m!3503519))

(declare-fun m!3503521 () Bool)

(assert (=> b!3225299 m!3503521))

(declare-fun m!3503523 () Bool)

(assert (=> b!3225299 m!3503523))

(declare-fun m!3503525 () Bool)

(assert (=> b!3225299 m!3503525))

(declare-fun m!3503527 () Bool)

(assert (=> b!3225299 m!3503527))

(declare-fun m!3503529 () Bool)

(assert (=> b!3225299 m!3503529))

(declare-fun m!3503531 () Bool)

(assert (=> b!3225289 m!3503531))

(declare-fun m!3503533 () Bool)

(assert (=> b!3225289 m!3503533))

(declare-fun m!3503535 () Bool)

(assert (=> b!3225290 m!3503535))

(declare-fun m!3503537 () Bool)

(assert (=> b!3225290 m!3503537))

(declare-fun m!3503539 () Bool)

(assert (=> b!3225291 m!3503539))

(declare-fun m!3503541 () Bool)

(assert (=> b!3225303 m!3503541))

(declare-fun m!3503543 () Bool)

(assert (=> b!3225292 m!3503543))

(declare-fun m!3503545 () Bool)

(assert (=> b!3225292 m!3503545))

(check-sat b_and!215803 (not b!3225300) (not b!3225301) (not b!3225295) (not start!302930) (not b_next!86689) b_and!215799 (not b!3225298) (not b!3225305) (not b!3225294) b_and!215805 (not b!3225303) (not b_next!86687) (not b!3225292) (not b!3225296) (not b!3225290) (not b!3225306) (not b!3225287) b_and!215807 b_and!215809 b_and!215801 (not b!3225291) (not b_next!86681) (not b_next!86685) (not b!3225289) (not b_next!86691) (not b!3225297) (not b!3225299) (not b_next!86683))
(check-sat (not b_next!86687) b_and!215803 (not b_next!86689) b_and!215799 b_and!215801 (not b_next!86691) (not b_next!86683) b_and!215805 b_and!215807 b_and!215809 (not b_next!86681) (not b_next!86685))
(get-model)

(declare-fun d!885301 () Bool)

(declare-fun res!1313588 () Bool)

(declare-fun e!2011586 () Bool)

(assert (=> d!885301 (=> (not res!1313588) (not e!2011586))))

(declare-fun isEmpty!20410 (List!36455) Bool)

(assert (=> d!885301 (= res!1313588 (not (isEmpty!20410 (originalCharacters!5974 (h!41753 tokens!494)))))))

(assert (=> d!885301 (= (inv!49205 (h!41753 tokens!494)) e!2011586)))

(declare-fun b!3225316 () Bool)

(declare-fun res!1313589 () Bool)

(assert (=> b!3225316 (=> (not res!1313589) (not e!2011586))))

(declare-fun dynLambda!14753 (Int TokenValue!5490) BalanceConc!21404)

(assert (=> b!3225316 (= res!1313589 (= (originalCharacters!5974 (h!41753 tokens!494)) (list!12949 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494))))))))

(declare-fun b!3225317 () Bool)

(declare-fun size!27394 (List!36455) Int)

(assert (=> b!3225317 (= e!2011586 (= (size!27391 (h!41753 tokens!494)) (size!27394 (originalCharacters!5974 (h!41753 tokens!494)))))))

(assert (= (and d!885301 res!1313588) b!3225316))

(assert (= (and b!3225316 res!1313589) b!3225317))

(declare-fun b_lambda!88709 () Bool)

(assert (=> (not b_lambda!88709) (not b!3225316)))

(declare-fun tb!159521 () Bool)

(declare-fun t!240924 () Bool)

(assert (=> (and b!3225293 (= (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) t!240924) tb!159521))

(declare-fun b!3225322 () Bool)

(declare-fun e!2011589 () Bool)

(declare-fun tp!1016224 () Bool)

(declare-fun inv!49208 (Conc!10895) Bool)

(assert (=> b!3225322 (= e!2011589 (and (inv!49208 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494))))) tp!1016224))))

(declare-fun result!201992 () Bool)

(declare-fun inv!49209 (BalanceConc!21404) Bool)

(assert (=> tb!159521 (= result!201992 (and (inv!49209 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494)))) e!2011589))))

(assert (= tb!159521 b!3225322))

(declare-fun m!3503557 () Bool)

(assert (=> b!3225322 m!3503557))

(declare-fun m!3503559 () Bool)

(assert (=> tb!159521 m!3503559))

(assert (=> b!3225316 t!240924))

(declare-fun b_and!215817 () Bool)

(assert (= b_and!215801 (and (=> t!240924 result!201992) b_and!215817)))

(declare-fun t!240926 () Bool)

(declare-fun tb!159523 () Bool)

(assert (=> (and b!3225304 (= (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) t!240926) tb!159523))

(declare-fun result!201996 () Bool)

(assert (= result!201996 result!201992))

(assert (=> b!3225316 t!240926))

(declare-fun b_and!215819 () Bool)

(assert (= b_and!215805 (and (=> t!240926 result!201996) b_and!215819)))

(declare-fun t!240928 () Bool)

(declare-fun tb!159525 () Bool)

(assert (=> (and b!3225288 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) t!240928) tb!159525))

(declare-fun result!201998 () Bool)

(assert (= result!201998 result!201992))

(assert (=> b!3225316 t!240928))

(declare-fun b_and!215821 () Bool)

(assert (= b_and!215809 (and (=> t!240928 result!201998) b_and!215821)))

(declare-fun m!3503561 () Bool)

(assert (=> d!885301 m!3503561))

(declare-fun m!3503563 () Bool)

(assert (=> b!3225316 m!3503563))

(assert (=> b!3225316 m!3503563))

(declare-fun m!3503565 () Bool)

(assert (=> b!3225316 m!3503565))

(declare-fun m!3503567 () Bool)

(assert (=> b!3225317 m!3503567))

(assert (=> b!3225300 d!885301))

(declare-fun d!885307 () Bool)

(assert (=> d!885307 (= (inv!49201 (tag!5792 (rule!7718 separatorToken!241))) (= (mod (str.len (value!170344 (tag!5792 (rule!7718 separatorToken!241)))) 2) 0))))

(assert (=> b!3225290 d!885307))

(declare-fun d!885309 () Bool)

(declare-fun res!1313592 () Bool)

(declare-fun e!2011592 () Bool)

(assert (=> d!885309 (=> (not res!1313592) (not e!2011592))))

(declare-fun semiInverseModEq!2165 (Int Int) Bool)

(assert (=> d!885309 (= res!1313592 (semiInverseModEq!2165 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toValue!7360 (transformation!5260 (rule!7718 separatorToken!241)))))))

(assert (=> d!885309 (= (inv!49204 (transformation!5260 (rule!7718 separatorToken!241))) e!2011592)))

(declare-fun b!3225325 () Bool)

(declare-fun equivClasses!2064 (Int Int) Bool)

(assert (=> b!3225325 (= e!2011592 (equivClasses!2064 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toValue!7360 (transformation!5260 (rule!7718 separatorToken!241)))))))

(assert (= (and d!885309 res!1313592) b!3225325))

(declare-fun m!3503569 () Bool)

(assert (=> d!885309 m!3503569))

(declare-fun m!3503571 () Bool)

(assert (=> b!3225325 m!3503571))

(assert (=> b!3225290 d!885309))

(declare-fun d!885311 () Bool)

(declare-fun lt!1094121 () Bool)

(declare-fun e!2011621 () Bool)

(assert (=> d!885311 (= lt!1094121 e!2011621)))

(declare-fun res!1313628 () Bool)

(assert (=> d!885311 (=> (not res!1313628) (not e!2011621))))

(declare-fun list!12952 (BalanceConc!21406) List!36457)

(declare-datatypes ((tuple2!35756 0))(
  ( (tuple2!35757 (_1!21012 BalanceConc!21406) (_2!21012 BalanceConc!21404)) )
))
(declare-fun lex!2177 (LexerInterface!4849 List!36456 BalanceConc!21404) tuple2!35756)

(assert (=> d!885311 (= res!1313628 (= (list!12952 (_1!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494)))))) (list!12952 (singletonSeq!2356 (h!41753 tokens!494)))))))

(declare-fun e!2011620 () Bool)

(assert (=> d!885311 (= lt!1094121 e!2011620)))

(declare-fun res!1313630 () Bool)

(assert (=> d!885311 (=> (not res!1313630) (not e!2011620))))

(declare-fun lt!1094120 () tuple2!35756)

(declare-fun size!27395 (BalanceConc!21406) Int)

(assert (=> d!885311 (= res!1313630 (= (size!27395 (_1!21012 lt!1094120)) 1))))

(assert (=> d!885311 (= lt!1094120 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494)))))))

(assert (=> d!885311 (not (isEmpty!20407 rules!2135))))

(assert (=> d!885311 (= (rulesProduceIndividualToken!2341 thiss!18206 rules!2135 (h!41753 tokens!494)) lt!1094121)))

(declare-fun b!3225362 () Bool)

(declare-fun res!1313629 () Bool)

(assert (=> b!3225362 (=> (not res!1313629) (not e!2011620))))

(declare-fun apply!8285 (BalanceConc!21406 Int) Token!9886)

(assert (=> b!3225362 (= res!1313629 (= (apply!8285 (_1!21012 lt!1094120) 0) (h!41753 tokens!494)))))

(declare-fun b!3225363 () Bool)

(declare-fun isEmpty!20411 (BalanceConc!21404) Bool)

(assert (=> b!3225363 (= e!2011620 (isEmpty!20411 (_2!21012 lt!1094120)))))

(declare-fun b!3225364 () Bool)

(assert (=> b!3225364 (= e!2011621 (isEmpty!20411 (_2!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494)))))))))

(assert (= (and d!885311 res!1313630) b!3225362))

(assert (= (and b!3225362 res!1313629) b!3225363))

(assert (= (and d!885311 res!1313628) b!3225364))

(declare-fun m!3503621 () Bool)

(assert (=> d!885311 m!3503621))

(assert (=> d!885311 m!3503539))

(assert (=> d!885311 m!3503527))

(declare-fun m!3503623 () Bool)

(assert (=> d!885311 m!3503623))

(declare-fun m!3503625 () Bool)

(assert (=> d!885311 m!3503625))

(assert (=> d!885311 m!3503527))

(declare-fun m!3503627 () Bool)

(assert (=> d!885311 m!3503627))

(declare-fun m!3503629 () Bool)

(assert (=> d!885311 m!3503629))

(assert (=> d!885311 m!3503527))

(assert (=> d!885311 m!3503623))

(declare-fun m!3503631 () Bool)

(assert (=> b!3225362 m!3503631))

(declare-fun m!3503633 () Bool)

(assert (=> b!3225363 m!3503633))

(assert (=> b!3225364 m!3503527))

(assert (=> b!3225364 m!3503527))

(assert (=> b!3225364 m!3503623))

(assert (=> b!3225364 m!3503623))

(assert (=> b!3225364 m!3503625))

(declare-fun m!3503635 () Bool)

(assert (=> b!3225364 m!3503635))

(assert (=> b!3225301 d!885311))

(declare-fun d!885327 () Bool)

(declare-fun list!12953 (Conc!10895) List!36455)

(assert (=> d!885327 (= (list!12949 lt!1094102) (list!12953 (c!542041 lt!1094102)))))

(declare-fun bs!542759 () Bool)

(assert (= bs!542759 d!885327))

(declare-fun m!3503637 () Bool)

(assert (=> bs!542759 m!3503637))

(assert (=> b!3225299 d!885327))

(declare-fun d!885329 () Bool)

(declare-fun lt!1094124 () BalanceConc!21404)

(assert (=> d!885329 (= (list!12949 lt!1094124) (printList!1399 thiss!18206 (list!12952 lt!1094104)))))

(assert (=> d!885329 (= lt!1094124 (printTailRec!1346 thiss!18206 lt!1094104 0 (BalanceConc!21405 Empty!10895)))))

(assert (=> d!885329 (= (print!1914 thiss!18206 lt!1094104) lt!1094124)))

(declare-fun bs!542760 () Bool)

(assert (= bs!542760 d!885329))

(declare-fun m!3503639 () Bool)

(assert (=> bs!542760 m!3503639))

(declare-fun m!3503641 () Bool)

(assert (=> bs!542760 m!3503641))

(assert (=> bs!542760 m!3503641))

(declare-fun m!3503643 () Bool)

(assert (=> bs!542760 m!3503643))

(assert (=> bs!542760 m!3503529))

(assert (=> b!3225299 d!885329))

(declare-fun d!885331 () Bool)

(declare-fun lt!1094140 () BalanceConc!21404)

(declare-fun printListTailRec!571 (LexerInterface!4849 List!36457 List!36455) List!36455)

(declare-fun dropList!1088 (BalanceConc!21406 Int) List!36457)

(assert (=> d!885331 (= (list!12949 lt!1094140) (printListTailRec!571 thiss!18206 (dropList!1088 lt!1094104 0) (list!12949 (BalanceConc!21405 Empty!10895))))))

(declare-fun e!2011627 () BalanceConc!21404)

(assert (=> d!885331 (= lt!1094140 e!2011627)))

(declare-fun c!542045 () Bool)

(assert (=> d!885331 (= c!542045 (>= 0 (size!27395 lt!1094104)))))

(declare-fun e!2011626 () Bool)

(assert (=> d!885331 e!2011626))

(declare-fun res!1313633 () Bool)

(assert (=> d!885331 (=> (not res!1313633) (not e!2011626))))

(assert (=> d!885331 (= res!1313633 (>= 0 0))))

(assert (=> d!885331 (= (printTailRec!1346 thiss!18206 lt!1094104 0 (BalanceConc!21405 Empty!10895)) lt!1094140)))

(declare-fun b!3225371 () Bool)

(assert (=> b!3225371 (= e!2011626 (<= 0 (size!27395 lt!1094104)))))

(declare-fun b!3225372 () Bool)

(assert (=> b!3225372 (= e!2011627 (BalanceConc!21405 Empty!10895))))

(declare-fun b!3225373 () Bool)

(declare-fun ++!8739 (BalanceConc!21404 BalanceConc!21404) BalanceConc!21404)

(assert (=> b!3225373 (= e!2011627 (printTailRec!1346 thiss!18206 lt!1094104 (+ 0 1) (++!8739 (BalanceConc!21405 Empty!10895) (charsOf!3276 (apply!8285 lt!1094104 0)))))))

(declare-fun lt!1094142 () List!36457)

(assert (=> b!3225373 (= lt!1094142 (list!12952 lt!1094104))))

(declare-datatypes ((Unit!50924 0))(
  ( (Unit!50925) )
))
(declare-fun lt!1094139 () Unit!50924)

(declare-fun lemmaDropApply!1047 (List!36457 Int) Unit!50924)

(assert (=> b!3225373 (= lt!1094139 (lemmaDropApply!1047 lt!1094142 0))))

(declare-fun head!7083 (List!36457) Token!9886)

(declare-fun drop!1871 (List!36457 Int) List!36457)

(declare-fun apply!8286 (List!36457 Int) Token!9886)

(assert (=> b!3225373 (= (head!7083 (drop!1871 lt!1094142 0)) (apply!8286 lt!1094142 0))))

(declare-fun lt!1094145 () Unit!50924)

(assert (=> b!3225373 (= lt!1094145 lt!1094139)))

(declare-fun lt!1094141 () List!36457)

(assert (=> b!3225373 (= lt!1094141 (list!12952 lt!1094104))))

(declare-fun lt!1094144 () Unit!50924)

(declare-fun lemmaDropTail!931 (List!36457 Int) Unit!50924)

(assert (=> b!3225373 (= lt!1094144 (lemmaDropTail!931 lt!1094141 0))))

(declare-fun tail!5227 (List!36457) List!36457)

(assert (=> b!3225373 (= (tail!5227 (drop!1871 lt!1094141 0)) (drop!1871 lt!1094141 (+ 0 1)))))

(declare-fun lt!1094143 () Unit!50924)

(assert (=> b!3225373 (= lt!1094143 lt!1094144)))

(assert (= (and d!885331 res!1313633) b!3225371))

(assert (= (and d!885331 c!542045) b!3225372))

(assert (= (and d!885331 (not c!542045)) b!3225373))

(declare-fun m!3503645 () Bool)

(assert (=> d!885331 m!3503645))

(declare-fun m!3503647 () Bool)

(assert (=> d!885331 m!3503647))

(declare-fun m!3503649 () Bool)

(assert (=> d!885331 m!3503649))

(declare-fun m!3503651 () Bool)

(assert (=> d!885331 m!3503651))

(assert (=> d!885331 m!3503645))

(assert (=> d!885331 m!3503651))

(declare-fun m!3503653 () Bool)

(assert (=> d!885331 m!3503653))

(assert (=> b!3225371 m!3503649))

(declare-fun m!3503655 () Bool)

(assert (=> b!3225373 m!3503655))

(declare-fun m!3503657 () Bool)

(assert (=> b!3225373 m!3503657))

(declare-fun m!3503659 () Bool)

(assert (=> b!3225373 m!3503659))

(declare-fun m!3503661 () Bool)

(assert (=> b!3225373 m!3503661))

(assert (=> b!3225373 m!3503655))

(declare-fun m!3503663 () Bool)

(assert (=> b!3225373 m!3503663))

(declare-fun m!3503665 () Bool)

(assert (=> b!3225373 m!3503665))

(declare-fun m!3503667 () Bool)

(assert (=> b!3225373 m!3503667))

(declare-fun m!3503669 () Bool)

(assert (=> b!3225373 m!3503669))

(assert (=> b!3225373 m!3503665))

(declare-fun m!3503671 () Bool)

(assert (=> b!3225373 m!3503671))

(declare-fun m!3503673 () Bool)

(assert (=> b!3225373 m!3503673))

(declare-fun m!3503675 () Bool)

(assert (=> b!3225373 m!3503675))

(assert (=> b!3225373 m!3503663))

(assert (=> b!3225373 m!3503657))

(assert (=> b!3225373 m!3503641))

(assert (=> b!3225373 m!3503673))

(declare-fun m!3503677 () Bool)

(assert (=> b!3225373 m!3503677))

(assert (=> b!3225299 d!885331))

(declare-fun d!885333 () Bool)

(declare-fun e!2011630 () Bool)

(assert (=> d!885333 e!2011630))

(declare-fun res!1313636 () Bool)

(assert (=> d!885333 (=> (not res!1313636) (not e!2011630))))

(declare-fun lt!1094148 () BalanceConc!21406)

(assert (=> d!885333 (= res!1313636 (= (list!12952 lt!1094148) (Cons!36333 (h!41753 tokens!494) Nil!36333)))))

(declare-fun singleton!1004 (Token!9886) BalanceConc!21406)

(assert (=> d!885333 (= lt!1094148 (singleton!1004 (h!41753 tokens!494)))))

(assert (=> d!885333 (= (singletonSeq!2356 (h!41753 tokens!494)) lt!1094148)))

(declare-fun b!3225376 () Bool)

(declare-fun isBalanced!3235 (Conc!10896) Bool)

(assert (=> b!3225376 (= e!2011630 (isBalanced!3235 (c!542042 lt!1094148)))))

(assert (= (and d!885333 res!1313636) b!3225376))

(declare-fun m!3503679 () Bool)

(assert (=> d!885333 m!3503679))

(declare-fun m!3503681 () Bool)

(assert (=> d!885333 m!3503681))

(declare-fun m!3503683 () Bool)

(assert (=> b!3225376 m!3503683))

(assert (=> b!3225299 d!885333))

(declare-fun d!885335 () Bool)

(declare-fun c!542048 () Bool)

(assert (=> d!885335 (= c!542048 ((_ is Cons!36333) (Cons!36333 (h!41753 tokens!494) Nil!36333)))))

(declare-fun e!2011633 () List!36455)

(assert (=> d!885335 (= (printList!1399 thiss!18206 (Cons!36333 (h!41753 tokens!494) Nil!36333)) e!2011633)))

(declare-fun b!3225381 () Bool)

(declare-fun ++!8740 (List!36455 List!36455) List!36455)

(assert (=> b!3225381 (= e!2011633 (++!8740 (list!12949 (charsOf!3276 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))) (printList!1399 thiss!18206 (t!240916 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))))

(declare-fun b!3225382 () Bool)

(assert (=> b!3225382 (= e!2011633 Nil!36331)))

(assert (= (and d!885335 c!542048) b!3225381))

(assert (= (and d!885335 (not c!542048)) b!3225382))

(declare-fun m!3503685 () Bool)

(assert (=> b!3225381 m!3503685))

(assert (=> b!3225381 m!3503685))

(declare-fun m!3503687 () Bool)

(assert (=> b!3225381 m!3503687))

(declare-fun m!3503689 () Bool)

(assert (=> b!3225381 m!3503689))

(assert (=> b!3225381 m!3503687))

(assert (=> b!3225381 m!3503689))

(declare-fun m!3503691 () Bool)

(assert (=> b!3225381 m!3503691))

(assert (=> b!3225299 d!885335))

(declare-fun d!885337 () Bool)

(assert (=> d!885337 (= (inv!49201 (tag!5792 (rule!7718 (h!41753 tokens!494)))) (= (mod (str.len (value!170344 (tag!5792 (rule!7718 (h!41753 tokens!494))))) 2) 0))))

(assert (=> b!3225289 d!885337))

(declare-fun d!885339 () Bool)

(declare-fun res!1313637 () Bool)

(declare-fun e!2011634 () Bool)

(assert (=> d!885339 (=> (not res!1313637) (not e!2011634))))

(assert (=> d!885339 (= res!1313637 (semiInverseModEq!2165 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toValue!7360 (transformation!5260 (rule!7718 (h!41753 tokens!494))))))))

(assert (=> d!885339 (= (inv!49204 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) e!2011634)))

(declare-fun b!3225383 () Bool)

(assert (=> b!3225383 (= e!2011634 (equivClasses!2064 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toValue!7360 (transformation!5260 (rule!7718 (h!41753 tokens!494))))))))

(assert (= (and d!885339 res!1313637) b!3225383))

(declare-fun m!3503693 () Bool)

(assert (=> d!885339 m!3503693))

(declare-fun m!3503695 () Bool)

(assert (=> b!3225383 m!3503695))

(assert (=> b!3225289 d!885339))

(declare-fun d!885341 () Bool)

(declare-fun res!1313642 () Bool)

(declare-fun e!2011639 () Bool)

(assert (=> d!885341 (=> res!1313642 e!2011639)))

(assert (=> d!885341 (= res!1313642 (not ((_ is Cons!36332) rules!2135)))))

(assert (=> d!885341 (= (sepAndNonSepRulesDisjointChars!1454 rules!2135 rules!2135) e!2011639)))

(declare-fun b!3225388 () Bool)

(declare-fun e!2011640 () Bool)

(assert (=> b!3225388 (= e!2011639 e!2011640)))

(declare-fun res!1313643 () Bool)

(assert (=> b!3225388 (=> (not res!1313643) (not e!2011640))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!601 (Rule!10320 List!36456) Bool)

(assert (=> b!3225388 (= res!1313643 (ruleDisjointCharsFromAllFromOtherType!601 (h!41752 rules!2135) rules!2135))))

(declare-fun b!3225389 () Bool)

(assert (=> b!3225389 (= e!2011640 (sepAndNonSepRulesDisjointChars!1454 rules!2135 (t!240915 rules!2135)))))

(assert (= (and d!885341 (not res!1313642)) b!3225388))

(assert (= (and b!3225388 res!1313643) b!3225389))

(declare-fun m!3503697 () Bool)

(assert (=> b!3225388 m!3503697))

(declare-fun m!3503699 () Bool)

(assert (=> b!3225389 m!3503699))

(assert (=> b!3225287 d!885341))

(declare-fun d!885343 () Bool)

(declare-fun lt!1094150 () Bool)

(declare-fun e!2011642 () Bool)

(assert (=> d!885343 (= lt!1094150 e!2011642)))

(declare-fun res!1313644 () Bool)

(assert (=> d!885343 (=> (not res!1313644) (not e!2011642))))

(assert (=> d!885343 (= res!1313644 (= (list!12952 (_1!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241))))) (list!12952 (singletonSeq!2356 separatorToken!241))))))

(declare-fun e!2011641 () Bool)

(assert (=> d!885343 (= lt!1094150 e!2011641)))

(declare-fun res!1313646 () Bool)

(assert (=> d!885343 (=> (not res!1313646) (not e!2011641))))

(declare-fun lt!1094149 () tuple2!35756)

(assert (=> d!885343 (= res!1313646 (= (size!27395 (_1!21012 lt!1094149)) 1))))

(assert (=> d!885343 (= lt!1094149 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241))))))

(assert (=> d!885343 (not (isEmpty!20407 rules!2135))))

(assert (=> d!885343 (= (rulesProduceIndividualToken!2341 thiss!18206 rules!2135 separatorToken!241) lt!1094150)))

(declare-fun b!3225390 () Bool)

(declare-fun res!1313645 () Bool)

(assert (=> b!3225390 (=> (not res!1313645) (not e!2011641))))

(assert (=> b!3225390 (= res!1313645 (= (apply!8285 (_1!21012 lt!1094149) 0) separatorToken!241))))

(declare-fun b!3225391 () Bool)

(assert (=> b!3225391 (= e!2011641 (isEmpty!20411 (_2!21012 lt!1094149)))))

(declare-fun b!3225392 () Bool)

(assert (=> b!3225392 (= e!2011642 (isEmpty!20411 (_2!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241))))))))

(assert (= (and d!885343 res!1313646) b!3225390))

(assert (= (and b!3225390 res!1313645) b!3225391))

(assert (= (and d!885343 res!1313644) b!3225392))

(declare-fun m!3503701 () Bool)

(assert (=> d!885343 m!3503701))

(assert (=> d!885343 m!3503539))

(declare-fun m!3503703 () Bool)

(assert (=> d!885343 m!3503703))

(declare-fun m!3503705 () Bool)

(assert (=> d!885343 m!3503705))

(declare-fun m!3503707 () Bool)

(assert (=> d!885343 m!3503707))

(assert (=> d!885343 m!3503703))

(declare-fun m!3503709 () Bool)

(assert (=> d!885343 m!3503709))

(declare-fun m!3503711 () Bool)

(assert (=> d!885343 m!3503711))

(assert (=> d!885343 m!3503703))

(assert (=> d!885343 m!3503705))

(declare-fun m!3503713 () Bool)

(assert (=> b!3225390 m!3503713))

(declare-fun m!3503715 () Bool)

(assert (=> b!3225391 m!3503715))

(assert (=> b!3225392 m!3503703))

(assert (=> b!3225392 m!3503703))

(assert (=> b!3225392 m!3503705))

(assert (=> b!3225392 m!3503705))

(assert (=> b!3225392 m!3503707))

(declare-fun m!3503717 () Bool)

(assert (=> b!3225392 m!3503717))

(assert (=> b!3225298 d!885343))

(declare-fun d!885345 () Bool)

(declare-fun res!1313651 () Bool)

(declare-fun e!2011647 () Bool)

(assert (=> d!885345 (=> res!1313651 e!2011647)))

(assert (=> d!885345 (= res!1313651 ((_ is Nil!36333) tokens!494))))

(assert (=> d!885345 (= (forall!7450 tokens!494 lambda!118087) e!2011647)))

(declare-fun b!3225397 () Bool)

(declare-fun e!2011648 () Bool)

(assert (=> b!3225397 (= e!2011647 e!2011648)))

(declare-fun res!1313652 () Bool)

(assert (=> b!3225397 (=> (not res!1313652) (not e!2011648))))

(declare-fun dynLambda!14754 (Int Token!9886) Bool)

(assert (=> b!3225397 (= res!1313652 (dynLambda!14754 lambda!118087 (h!41753 tokens!494)))))

(declare-fun b!3225398 () Bool)

(assert (=> b!3225398 (= e!2011648 (forall!7450 (t!240916 tokens!494) lambda!118087))))

(assert (= (and d!885345 (not res!1313651)) b!3225397))

(assert (= (and b!3225397 res!1313652) b!3225398))

(declare-fun b_lambda!88715 () Bool)

(assert (=> (not b_lambda!88715) (not b!3225397)))

(declare-fun m!3503719 () Bool)

(assert (=> b!3225397 m!3503719))

(declare-fun m!3503721 () Bool)

(assert (=> b!3225398 m!3503721))

(assert (=> b!3225296 d!885345))

(declare-fun d!885347 () Bool)

(assert (=> d!885347 (= (list!12949 (charsOf!3276 (h!41753 tokens!494))) (list!12953 (c!542041 (charsOf!3276 (h!41753 tokens!494)))))))

(declare-fun bs!542761 () Bool)

(assert (= bs!542761 d!885347))

(declare-fun m!3503723 () Bool)

(assert (=> bs!542761 m!3503723))

(assert (=> b!3225297 d!885347))

(declare-fun d!885349 () Bool)

(declare-fun lt!1094153 () BalanceConc!21404)

(assert (=> d!885349 (= (list!12949 lt!1094153) (originalCharacters!5974 (h!41753 tokens!494)))))

(assert (=> d!885349 (= lt!1094153 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494))))))

(assert (=> d!885349 (= (charsOf!3276 (h!41753 tokens!494)) lt!1094153)))

(declare-fun b_lambda!88717 () Bool)

(assert (=> (not b_lambda!88717) (not d!885349)))

(assert (=> d!885349 t!240924))

(declare-fun b_and!215835 () Bool)

(assert (= b_and!215817 (and (=> t!240924 result!201992) b_and!215835)))

(assert (=> d!885349 t!240926))

(declare-fun b_and!215837 () Bool)

(assert (= b_and!215819 (and (=> t!240926 result!201996) b_and!215837)))

(assert (=> d!885349 t!240928))

(declare-fun b_and!215839 () Bool)

(assert (= b_and!215821 (and (=> t!240928 result!201998) b_and!215839)))

(declare-fun m!3503725 () Bool)

(assert (=> d!885349 m!3503725))

(assert (=> d!885349 m!3503563))

(assert (=> b!3225297 d!885349))

(declare-fun bs!542767 () Bool)

(declare-fun d!885351 () Bool)

(assert (= bs!542767 (and d!885351 b!3225296)))

(declare-fun lambda!118097 () Int)

(assert (=> bs!542767 (not (= lambda!118097 lambda!118087))))

(declare-fun b!3225530 () Bool)

(declare-fun e!2011745 () Bool)

(assert (=> b!3225530 (= e!2011745 true)))

(declare-fun b!3225529 () Bool)

(declare-fun e!2011744 () Bool)

(assert (=> b!3225529 (= e!2011744 e!2011745)))

(declare-fun b!3225528 () Bool)

(declare-fun e!2011743 () Bool)

(assert (=> b!3225528 (= e!2011743 e!2011744)))

(assert (=> d!885351 e!2011743))

(assert (= b!3225529 b!3225530))

(assert (= b!3225528 b!3225529))

(assert (= (and d!885351 ((_ is Cons!36332) rules!2135)) b!3225528))

(declare-fun order!18711 () Int)

(declare-fun order!18709 () Int)

(declare-fun dynLambda!14755 (Int Int) Int)

(declare-fun dynLambda!14756 (Int Int) Int)

(assert (=> b!3225530 (< (dynLambda!14755 order!18709 (toValue!7360 (transformation!5260 (h!41752 rules!2135)))) (dynLambda!14756 order!18711 lambda!118097))))

(declare-fun order!18713 () Int)

(declare-fun dynLambda!14757 (Int Int) Int)

(assert (=> b!3225530 (< (dynLambda!14757 order!18713 (toChars!7219 (transformation!5260 (h!41752 rules!2135)))) (dynLambda!14756 order!18711 lambda!118097))))

(assert (=> d!885351 true))

(declare-fun e!2011736 () Bool)

(assert (=> d!885351 e!2011736))

(declare-fun res!1313679 () Bool)

(assert (=> d!885351 (=> (not res!1313679) (not e!2011736))))

(declare-fun lt!1094186 () Bool)

(assert (=> d!885351 (= res!1313679 (= lt!1094186 (forall!7450 (list!12952 (seqFromList!3584 tokens!494)) lambda!118097)))))

(declare-fun forall!7452 (BalanceConc!21406 Int) Bool)

(assert (=> d!885351 (= lt!1094186 (forall!7452 (seqFromList!3584 tokens!494) lambda!118097))))

(assert (=> d!885351 (not (isEmpty!20407 rules!2135))))

(assert (=> d!885351 (= (rulesProduceEachTokenIndividually!1300 thiss!18206 rules!2135 (seqFromList!3584 tokens!494)) lt!1094186)))

(declare-fun b!3225519 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1737 (LexerInterface!4849 List!36456 List!36457) Bool)

(assert (=> b!3225519 (= e!2011736 (= lt!1094186 (rulesProduceEachTokenIndividuallyList!1737 thiss!18206 rules!2135 (list!12952 (seqFromList!3584 tokens!494)))))))

(assert (= (and d!885351 res!1313679) b!3225519))

(assert (=> d!885351 m!3503513))

(declare-fun m!3503845 () Bool)

(assert (=> d!885351 m!3503845))

(assert (=> d!885351 m!3503845))

(declare-fun m!3503847 () Bool)

(assert (=> d!885351 m!3503847))

(assert (=> d!885351 m!3503513))

(declare-fun m!3503849 () Bool)

(assert (=> d!885351 m!3503849))

(assert (=> d!885351 m!3503539))

(assert (=> b!3225519 m!3503513))

(assert (=> b!3225519 m!3503845))

(assert (=> b!3225519 m!3503845))

(declare-fun m!3503851 () Bool)

(assert (=> b!3225519 m!3503851))

(assert (=> b!3225295 d!885351))

(declare-fun d!885385 () Bool)

(declare-fun fromListB!1556 (List!36457) BalanceConc!21406)

(assert (=> d!885385 (= (seqFromList!3584 tokens!494) (fromListB!1556 tokens!494))))

(declare-fun bs!542768 () Bool)

(assert (= bs!542768 d!885385))

(declare-fun m!3503853 () Bool)

(assert (=> bs!542768 m!3503853))

(assert (=> b!3225295 d!885385))

(declare-fun b!3225543 () Bool)

(declare-fun e!2011753 () Bool)

(declare-fun inv!15 (TokenValue!5490) Bool)

(assert (=> b!3225543 (= e!2011753 (inv!15 (value!170370 separatorToken!241)))))

(declare-fun b!3225544 () Bool)

(declare-fun res!1313682 () Bool)

(assert (=> b!3225544 (=> res!1313682 e!2011753)))

(assert (=> b!3225544 (= res!1313682 (not ((_ is IntegerValue!16472) (value!170370 separatorToken!241))))))

(declare-fun e!2011754 () Bool)

(assert (=> b!3225544 (= e!2011754 e!2011753)))

(declare-fun d!885387 () Bool)

(declare-fun c!542067 () Bool)

(assert (=> d!885387 (= c!542067 ((_ is IntegerValue!16470) (value!170370 separatorToken!241)))))

(declare-fun e!2011752 () Bool)

(assert (=> d!885387 (= (inv!21 (value!170370 separatorToken!241)) e!2011752)))

(declare-fun b!3225545 () Bool)

(declare-fun inv!17 (TokenValue!5490) Bool)

(assert (=> b!3225545 (= e!2011754 (inv!17 (value!170370 separatorToken!241)))))

(declare-fun b!3225546 () Bool)

(declare-fun inv!16 (TokenValue!5490) Bool)

(assert (=> b!3225546 (= e!2011752 (inv!16 (value!170370 separatorToken!241)))))

(declare-fun b!3225547 () Bool)

(assert (=> b!3225547 (= e!2011752 e!2011754)))

(declare-fun c!542068 () Bool)

(assert (=> b!3225547 (= c!542068 ((_ is IntegerValue!16471) (value!170370 separatorToken!241)))))

(assert (= (and d!885387 c!542067) b!3225546))

(assert (= (and d!885387 (not c!542067)) b!3225547))

(assert (= (and b!3225547 c!542068) b!3225545))

(assert (= (and b!3225547 (not c!542068)) b!3225544))

(assert (= (and b!3225544 (not res!1313682)) b!3225543))

(declare-fun m!3503855 () Bool)

(assert (=> b!3225543 m!3503855))

(declare-fun m!3503857 () Bool)

(assert (=> b!3225545 m!3503857))

(declare-fun m!3503859 () Bool)

(assert (=> b!3225546 m!3503859))

(assert (=> b!3225306 d!885387))

(declare-fun d!885389 () Bool)

(declare-fun res!1313683 () Bool)

(declare-fun e!2011755 () Bool)

(assert (=> d!885389 (=> (not res!1313683) (not e!2011755))))

(assert (=> d!885389 (= res!1313683 (not (isEmpty!20410 (originalCharacters!5974 separatorToken!241))))))

(assert (=> d!885389 (= (inv!49205 separatorToken!241) e!2011755)))

(declare-fun b!3225548 () Bool)

(declare-fun res!1313684 () Bool)

(assert (=> b!3225548 (=> (not res!1313684) (not e!2011755))))

(assert (=> b!3225548 (= res!1313684 (= (originalCharacters!5974 separatorToken!241) (list!12949 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241)))))))

(declare-fun b!3225549 () Bool)

(assert (=> b!3225549 (= e!2011755 (= (size!27391 separatorToken!241) (size!27394 (originalCharacters!5974 separatorToken!241))))))

(assert (= (and d!885389 res!1313683) b!3225548))

(assert (= (and b!3225548 res!1313684) b!3225549))

(declare-fun b_lambda!88729 () Bool)

(assert (=> (not b_lambda!88729) (not b!3225548)))

(declare-fun t!240957 () Bool)

(declare-fun tb!159541 () Bool)

(assert (=> (and b!3225293 (= (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241)))) t!240957) tb!159541))

(declare-fun b!3225550 () Bool)

(declare-fun e!2011756 () Bool)

(declare-fun tp!1016282 () Bool)

(assert (=> b!3225550 (= e!2011756 (and (inv!49208 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241)))) tp!1016282))))

(declare-fun result!202022 () Bool)

(assert (=> tb!159541 (= result!202022 (and (inv!49209 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241))) e!2011756))))

(assert (= tb!159541 b!3225550))

(declare-fun m!3503861 () Bool)

(assert (=> b!3225550 m!3503861))

(declare-fun m!3503863 () Bool)

(assert (=> tb!159541 m!3503863))

(assert (=> b!3225548 t!240957))

(declare-fun b_and!215849 () Bool)

(assert (= b_and!215835 (and (=> t!240957 result!202022) b_and!215849)))

(declare-fun t!240959 () Bool)

(declare-fun tb!159543 () Bool)

(assert (=> (and b!3225304 (= (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241)))) t!240959) tb!159543))

(declare-fun result!202024 () Bool)

(assert (= result!202024 result!202022))

(assert (=> b!3225548 t!240959))

(declare-fun b_and!215851 () Bool)

(assert (= b_and!215837 (and (=> t!240959 result!202024) b_and!215851)))

(declare-fun t!240961 () Bool)

(declare-fun tb!159545 () Bool)

(assert (=> (and b!3225288 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241)))) t!240961) tb!159545))

(declare-fun result!202026 () Bool)

(assert (= result!202026 result!202022))

(assert (=> b!3225548 t!240961))

(declare-fun b_and!215853 () Bool)

(assert (= b_and!215839 (and (=> t!240961 result!202026) b_and!215853)))

(declare-fun m!3503865 () Bool)

(assert (=> d!885389 m!3503865))

(declare-fun m!3503867 () Bool)

(assert (=> b!3225548 m!3503867))

(assert (=> b!3225548 m!3503867))

(declare-fun m!3503869 () Bool)

(assert (=> b!3225548 m!3503869))

(declare-fun m!3503871 () Bool)

(assert (=> b!3225549 m!3503871))

(assert (=> start!302930 d!885389))

(declare-fun b!3225551 () Bool)

(declare-fun e!2011758 () Bool)

(assert (=> b!3225551 (= e!2011758 (inv!15 (value!170370 (h!41753 tokens!494))))))

(declare-fun b!3225552 () Bool)

(declare-fun res!1313685 () Bool)

(assert (=> b!3225552 (=> res!1313685 e!2011758)))

(assert (=> b!3225552 (= res!1313685 (not ((_ is IntegerValue!16472) (value!170370 (h!41753 tokens!494)))))))

(declare-fun e!2011759 () Bool)

(assert (=> b!3225552 (= e!2011759 e!2011758)))

(declare-fun d!885391 () Bool)

(declare-fun c!542069 () Bool)

(assert (=> d!885391 (= c!542069 ((_ is IntegerValue!16470) (value!170370 (h!41753 tokens!494))))))

(declare-fun e!2011757 () Bool)

(assert (=> d!885391 (= (inv!21 (value!170370 (h!41753 tokens!494))) e!2011757)))

(declare-fun b!3225553 () Bool)

(assert (=> b!3225553 (= e!2011759 (inv!17 (value!170370 (h!41753 tokens!494))))))

(declare-fun b!3225554 () Bool)

(assert (=> b!3225554 (= e!2011757 (inv!16 (value!170370 (h!41753 tokens!494))))))

(declare-fun b!3225555 () Bool)

(assert (=> b!3225555 (= e!2011757 e!2011759)))

(declare-fun c!542070 () Bool)

(assert (=> b!3225555 (= c!542070 ((_ is IntegerValue!16471) (value!170370 (h!41753 tokens!494))))))

(assert (= (and d!885391 c!542069) b!3225554))

(assert (= (and d!885391 (not c!542069)) b!3225555))

(assert (= (and b!3225555 c!542070) b!3225553))

(assert (= (and b!3225555 (not c!542070)) b!3225552))

(assert (= (and b!3225552 (not res!1313685)) b!3225551))

(declare-fun m!3503873 () Bool)

(assert (=> b!3225551 m!3503873))

(declare-fun m!3503875 () Bool)

(assert (=> b!3225553 m!3503875))

(declare-fun m!3503877 () Bool)

(assert (=> b!3225554 m!3503877))

(assert (=> b!3225305 d!885391))

(declare-fun d!885393 () Bool)

(assert (=> d!885393 (= (inv!49201 (tag!5792 (h!41752 rules!2135))) (= (mod (str.len (value!170344 (tag!5792 (h!41752 rules!2135)))) 2) 0))))

(assert (=> b!3225292 d!885393))

(declare-fun d!885395 () Bool)

(declare-fun res!1313686 () Bool)

(declare-fun e!2011760 () Bool)

(assert (=> d!885395 (=> (not res!1313686) (not e!2011760))))

(assert (=> d!885395 (= res!1313686 (semiInverseModEq!2165 (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toValue!7360 (transformation!5260 (h!41752 rules!2135)))))))

(assert (=> d!885395 (= (inv!49204 (transformation!5260 (h!41752 rules!2135))) e!2011760)))

(declare-fun b!3225556 () Bool)

(assert (=> b!3225556 (= e!2011760 (equivClasses!2064 (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toValue!7360 (transformation!5260 (h!41752 rules!2135)))))))

(assert (= (and d!885395 res!1313686) b!3225556))

(declare-fun m!3503879 () Bool)

(assert (=> d!885395 m!3503879))

(declare-fun m!3503881 () Bool)

(assert (=> b!3225556 m!3503881))

(assert (=> b!3225292 d!885395))

(declare-fun d!885397 () Bool)

(declare-fun res!1313689 () Bool)

(declare-fun e!2011763 () Bool)

(assert (=> d!885397 (=> (not res!1313689) (not e!2011763))))

(declare-fun rulesValid!1925 (LexerInterface!4849 List!36456) Bool)

(assert (=> d!885397 (= res!1313689 (rulesValid!1925 thiss!18206 rules!2135))))

(assert (=> d!885397 (= (rulesInvariant!4246 thiss!18206 rules!2135) e!2011763)))

(declare-fun b!3225559 () Bool)

(declare-datatypes ((List!36459 0))(
  ( (Nil!36335) (Cons!36335 (h!41755 String!40783) (t!240970 List!36459)) )
))
(declare-fun noDuplicateTag!1921 (LexerInterface!4849 List!36456 List!36459) Bool)

(assert (=> b!3225559 (= e!2011763 (noDuplicateTag!1921 thiss!18206 rules!2135 Nil!36335))))

(assert (= (and d!885397 res!1313689) b!3225559))

(declare-fun m!3503883 () Bool)

(assert (=> d!885397 m!3503883))

(declare-fun m!3503885 () Bool)

(assert (=> b!3225559 m!3503885))

(assert (=> b!3225303 d!885397))

(declare-fun d!885399 () Bool)

(assert (=> d!885399 (= (isEmpty!20407 rules!2135) ((_ is Nil!36332) rules!2135))))

(assert (=> b!3225291 d!885399))

(declare-fun b!3225573 () Bool)

(declare-fun b_free!85997 () Bool)

(declare-fun b_next!86701 () Bool)

(assert (=> b!3225573 (= b_free!85997 (not b_next!86701))))

(declare-fun tp!1016297 () Bool)

(declare-fun b_and!215855 () Bool)

(assert (=> b!3225573 (= tp!1016297 b_and!215855)))

(declare-fun b_free!85999 () Bool)

(declare-fun b_next!86703 () Bool)

(assert (=> b!3225573 (= b_free!85999 (not b_next!86703))))

(declare-fun t!240963 () Bool)

(declare-fun tb!159547 () Bool)

(assert (=> (and b!3225573 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) t!240963) tb!159547))

(declare-fun result!202030 () Bool)

(assert (= result!202030 result!201992))

(assert (=> b!3225316 t!240963))

(assert (=> d!885349 t!240963))

(declare-fun t!240965 () Bool)

(declare-fun tb!159549 () Bool)

(assert (=> (and b!3225573 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241)))) t!240965) tb!159549))

(declare-fun result!202032 () Bool)

(assert (= result!202032 result!202022))

(assert (=> b!3225548 t!240965))

(declare-fun b_and!215857 () Bool)

(declare-fun tp!1016293 () Bool)

(assert (=> b!3225573 (= tp!1016293 (and (=> t!240963 result!202030) (=> t!240965 result!202032) b_and!215857))))

(declare-fun tp!1016296 () Bool)

(declare-fun e!2011779 () Bool)

(declare-fun b!3225570 () Bool)

(declare-fun e!2011777 () Bool)

(assert (=> b!3225570 (= e!2011777 (and (inv!49205 (h!41753 (t!240916 tokens!494))) e!2011779 tp!1016296))))

(declare-fun e!2011776 () Bool)

(assert (=> b!3225573 (= e!2011776 (and tp!1016297 tp!1016293))))

(assert (=> b!3225300 (= tp!1016210 e!2011777)))

(declare-fun b!3225572 () Bool)

(declare-fun e!2011781 () Bool)

(declare-fun tp!1016295 () Bool)

(assert (=> b!3225572 (= e!2011781 (and tp!1016295 (inv!49201 (tag!5792 (rule!7718 (h!41753 (t!240916 tokens!494))))) (inv!49204 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) e!2011776))))

(declare-fun b!3225571 () Bool)

(declare-fun tp!1016294 () Bool)

(assert (=> b!3225571 (= e!2011779 (and (inv!21 (value!170370 (h!41753 (t!240916 tokens!494)))) e!2011781 tp!1016294))))

(assert (= b!3225572 b!3225573))

(assert (= b!3225571 b!3225572))

(assert (= b!3225570 b!3225571))

(assert (= (and b!3225300 ((_ is Cons!36333) (t!240916 tokens!494))) b!3225570))

(declare-fun m!3503887 () Bool)

(assert (=> b!3225570 m!3503887))

(declare-fun m!3503889 () Bool)

(assert (=> b!3225572 m!3503889))

(declare-fun m!3503891 () Bool)

(assert (=> b!3225572 m!3503891))

(declare-fun m!3503893 () Bool)

(assert (=> b!3225571 m!3503893))

(declare-fun b!3225578 () Bool)

(declare-fun e!2011784 () Bool)

(declare-fun tp_is_empty!17317 () Bool)

(declare-fun tp!1016300 () Bool)

(assert (=> b!3225578 (= e!2011784 (and tp_is_empty!17317 tp!1016300))))

(assert (=> b!3225306 (= tp!1016213 e!2011784)))

(assert (= (and b!3225306 ((_ is Cons!36331) (originalCharacters!5974 separatorToken!241))) b!3225578))

(declare-fun b!3225589 () Bool)

(declare-fun e!2011787 () Bool)

(assert (=> b!3225589 (= e!2011787 tp_is_empty!17317)))

(declare-fun b!3225592 () Bool)

(declare-fun tp!1016311 () Bool)

(declare-fun tp!1016312 () Bool)

(assert (=> b!3225592 (= e!2011787 (and tp!1016311 tp!1016312))))

(assert (=> b!3225290 (= tp!1016209 e!2011787)))

(declare-fun b!3225590 () Bool)

(declare-fun tp!1016314 () Bool)

(declare-fun tp!1016313 () Bool)

(assert (=> b!3225590 (= e!2011787 (and tp!1016314 tp!1016313))))

(declare-fun b!3225591 () Bool)

(declare-fun tp!1016315 () Bool)

(assert (=> b!3225591 (= e!2011787 tp!1016315)))

(assert (= (and b!3225290 ((_ is ElementMatch!10019) (regex!5260 (rule!7718 separatorToken!241)))) b!3225589))

(assert (= (and b!3225290 ((_ is Concat!15509) (regex!5260 (rule!7718 separatorToken!241)))) b!3225590))

(assert (= (and b!3225290 ((_ is Star!10019) (regex!5260 (rule!7718 separatorToken!241)))) b!3225591))

(assert (= (and b!3225290 ((_ is Union!10019) (regex!5260 (rule!7718 separatorToken!241)))) b!3225592))

(declare-fun b!3225603 () Bool)

(declare-fun b_free!86001 () Bool)

(declare-fun b_next!86705 () Bool)

(assert (=> b!3225603 (= b_free!86001 (not b_next!86705))))

(declare-fun tp!1016324 () Bool)

(declare-fun b_and!215859 () Bool)

(assert (=> b!3225603 (= tp!1016324 b_and!215859)))

(declare-fun b_free!86003 () Bool)

(declare-fun b_next!86707 () Bool)

(assert (=> b!3225603 (= b_free!86003 (not b_next!86707))))

(declare-fun t!240967 () Bool)

(declare-fun tb!159551 () Bool)

(assert (=> (and b!3225603 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135)))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) t!240967) tb!159551))

(declare-fun result!202040 () Bool)

(assert (= result!202040 result!201992))

(assert (=> b!3225316 t!240967))

(assert (=> d!885349 t!240967))

(declare-fun tb!159553 () Bool)

(declare-fun t!240969 () Bool)

(assert (=> (and b!3225603 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135)))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241)))) t!240969) tb!159553))

(declare-fun result!202042 () Bool)

(assert (= result!202042 result!202022))

(assert (=> b!3225548 t!240969))

(declare-fun tp!1016325 () Bool)

(declare-fun b_and!215861 () Bool)

(assert (=> b!3225603 (= tp!1016325 (and (=> t!240967 result!202040) (=> t!240969 result!202042) b_and!215861))))

(declare-fun e!2011799 () Bool)

(assert (=> b!3225603 (= e!2011799 (and tp!1016324 tp!1016325))))

(declare-fun tp!1016326 () Bool)

(declare-fun e!2011797 () Bool)

(declare-fun b!3225602 () Bool)

(assert (=> b!3225602 (= e!2011797 (and tp!1016326 (inv!49201 (tag!5792 (h!41752 (t!240915 rules!2135)))) (inv!49204 (transformation!5260 (h!41752 (t!240915 rules!2135)))) e!2011799))))

(declare-fun b!3225601 () Bool)

(declare-fun e!2011796 () Bool)

(declare-fun tp!1016327 () Bool)

(assert (=> b!3225601 (= e!2011796 (and e!2011797 tp!1016327))))

(assert (=> b!3225294 (= tp!1016217 e!2011796)))

(assert (= b!3225602 b!3225603))

(assert (= b!3225601 b!3225602))

(assert (= (and b!3225294 ((_ is Cons!36332) (t!240915 rules!2135))) b!3225601))

(declare-fun m!3503895 () Bool)

(assert (=> b!3225602 m!3503895))

(declare-fun m!3503897 () Bool)

(assert (=> b!3225602 m!3503897))

(declare-fun b!3225604 () Bool)

(declare-fun e!2011800 () Bool)

(declare-fun tp!1016328 () Bool)

(assert (=> b!3225604 (= e!2011800 (and tp_is_empty!17317 tp!1016328))))

(assert (=> b!3225305 (= tp!1016216 e!2011800)))

(assert (= (and b!3225305 ((_ is Cons!36331) (originalCharacters!5974 (h!41753 tokens!494)))) b!3225604))

(declare-fun b!3225605 () Bool)

(declare-fun e!2011801 () Bool)

(assert (=> b!3225605 (= e!2011801 tp_is_empty!17317)))

(declare-fun b!3225608 () Bool)

(declare-fun tp!1016329 () Bool)

(declare-fun tp!1016330 () Bool)

(assert (=> b!3225608 (= e!2011801 (and tp!1016329 tp!1016330))))

(assert (=> b!3225289 (= tp!1016207 e!2011801)))

(declare-fun b!3225606 () Bool)

(declare-fun tp!1016332 () Bool)

(declare-fun tp!1016331 () Bool)

(assert (=> b!3225606 (= e!2011801 (and tp!1016332 tp!1016331))))

(declare-fun b!3225607 () Bool)

(declare-fun tp!1016333 () Bool)

(assert (=> b!3225607 (= e!2011801 tp!1016333)))

(assert (= (and b!3225289 ((_ is ElementMatch!10019) (regex!5260 (rule!7718 (h!41753 tokens!494))))) b!3225605))

(assert (= (and b!3225289 ((_ is Concat!15509) (regex!5260 (rule!7718 (h!41753 tokens!494))))) b!3225606))

(assert (= (and b!3225289 ((_ is Star!10019) (regex!5260 (rule!7718 (h!41753 tokens!494))))) b!3225607))

(assert (= (and b!3225289 ((_ is Union!10019) (regex!5260 (rule!7718 (h!41753 tokens!494))))) b!3225608))

(declare-fun b!3225609 () Bool)

(declare-fun e!2011802 () Bool)

(assert (=> b!3225609 (= e!2011802 tp_is_empty!17317)))

(declare-fun b!3225612 () Bool)

(declare-fun tp!1016334 () Bool)

(declare-fun tp!1016335 () Bool)

(assert (=> b!3225612 (= e!2011802 (and tp!1016334 tp!1016335))))

(assert (=> b!3225292 (= tp!1016212 e!2011802)))

(declare-fun b!3225610 () Bool)

(declare-fun tp!1016337 () Bool)

(declare-fun tp!1016336 () Bool)

(assert (=> b!3225610 (= e!2011802 (and tp!1016337 tp!1016336))))

(declare-fun b!3225611 () Bool)

(declare-fun tp!1016338 () Bool)

(assert (=> b!3225611 (= e!2011802 tp!1016338)))

(assert (= (and b!3225292 ((_ is ElementMatch!10019) (regex!5260 (h!41752 rules!2135)))) b!3225609))

(assert (= (and b!3225292 ((_ is Concat!15509) (regex!5260 (h!41752 rules!2135)))) b!3225610))

(assert (= (and b!3225292 ((_ is Star!10019) (regex!5260 (h!41752 rules!2135)))) b!3225611))

(assert (= (and b!3225292 ((_ is Union!10019) (regex!5260 (h!41752 rules!2135)))) b!3225612))

(declare-fun b_lambda!88731 () Bool)

(assert (= b_lambda!88709 (or (and b!3225603 b_free!86003 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135)))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))))) (and b!3225288 b_free!85987) (and b!3225573 b_free!85999 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))))) (and b!3225304 b_free!85983 (= (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))))) (and b!3225293 b_free!85979 (= (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))))) b_lambda!88731)))

(declare-fun b_lambda!88733 () Bool)

(assert (= b_lambda!88715 (or b!3225296 b_lambda!88733)))

(declare-fun bs!542769 () Bool)

(declare-fun d!885401 () Bool)

(assert (= bs!542769 (and d!885401 b!3225296)))

(assert (=> bs!542769 (= (dynLambda!14754 lambda!118087 (h!41753 tokens!494)) (not (isSeparator!5260 (rule!7718 (h!41753 tokens!494)))))))

(assert (=> b!3225397 d!885401))

(declare-fun b_lambda!88735 () Bool)

(assert (= b_lambda!88729 (or (and b!3225288 b_free!85987 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))))) (and b!3225293 b_free!85979) (and b!3225603 b_free!86003 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135)))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))))) (and b!3225573 b_free!85999 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))))) (and b!3225304 b_free!85983 (= (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))))) b_lambda!88735)))

(declare-fun b_lambda!88737 () Bool)

(assert (= b_lambda!88717 (or (and b!3225603 b_free!86003 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135)))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))))) (and b!3225288 b_free!85987) (and b!3225573 b_free!85999 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))))) (and b!3225304 b_free!85983 (= (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))))) (and b!3225293 b_free!85979 (= (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))))) b_lambda!88737)))

(check-sat (not b!3225322) (not b!3225373) (not b!3225591) (not b!3225554) (not b!3225362) (not b!3225371) (not b!3225390) (not b!3225610) (not b!3225551) (not b!3225592) (not d!885389) (not b!3225606) (not b_next!86687) (not d!885333) b_and!215861 b_and!215803 (not d!885327) (not tb!159521) (not b!3225519) (not b_lambda!88733) (not b!3225548) (not b!3225549) (not b_lambda!88731) (not d!885309) (not b!3225553) (not b_lambda!88737) (not b!3225543) (not b!3225612) (not b!3225546) b_and!215859 (not b_next!86689) (not d!885397) b_and!215849 (not b!3225572) (not b!3225611) (not b!3225608) (not b!3225578) (not d!885395) (not d!885301) (not d!885349) b_and!215799 (not b!3225381) (not b!3225389) b_and!215807 b_and!215855 (not d!885311) (not d!885343) b_and!215851 (not b!3225570) (not tb!159541) (not b_next!86705) (not b!3225364) (not b!3225601) (not b_lambda!88735) (not b!3225556) (not b!3225571) (not b_next!86707) (not b!3225559) (not b_next!86681) (not b!3225602) (not b_next!86685) (not b!3225528) b_and!215857 (not b!3225604) (not b!3225590) (not b!3225607) (not b!3225316) (not b!3225376) (not d!885329) (not b!3225383) (not d!885347) (not d!885339) (not d!885331) (not d!885351) (not b!3225392) (not b!3225545) (not b!3225317) (not b!3225388) (not d!885385) (not b_next!86701) (not b_next!86691) b_and!215853 (not b_next!86703) tp_is_empty!17317 (not b!3225550) (not b_next!86683) (not b!3225398) (not b!3225363) (not b!3225325) (not b!3225391))
(check-sat b_and!215803 b_and!215799 b_and!215851 (not b_next!86705) b_and!215857 (not b_next!86683) (not b_next!86687) b_and!215861 b_and!215859 (not b_next!86689) b_and!215849 b_and!215807 b_and!215855 (not b_next!86707) (not b_next!86681) (not b_next!86685) (not b_next!86701) (not b_next!86691) b_and!215853 (not b_next!86703))
(get-model)

(declare-fun d!885411 () Bool)

(declare-fun lt!1094192 () Bool)

(assert (=> d!885411 (= lt!1094192 (isEmpty!20410 (list!12949 (_2!21012 lt!1094120))))))

(declare-fun isEmpty!20412 (Conc!10895) Bool)

(assert (=> d!885411 (= lt!1094192 (isEmpty!20412 (c!542041 (_2!21012 lt!1094120))))))

(assert (=> d!885411 (= (isEmpty!20411 (_2!21012 lt!1094120)) lt!1094192)))

(declare-fun bs!542773 () Bool)

(assert (= bs!542773 d!885411))

(declare-fun m!3503921 () Bool)

(assert (=> bs!542773 m!3503921))

(assert (=> bs!542773 m!3503921))

(declare-fun m!3503923 () Bool)

(assert (=> bs!542773 m!3503923))

(declare-fun m!3503925 () Bool)

(assert (=> bs!542773 m!3503925))

(assert (=> b!3225363 d!885411))

(declare-fun d!885415 () Bool)

(assert (=> d!885415 true))

(declare-fun order!18717 () Int)

(declare-fun lambda!118106 () Int)

(declare-fun dynLambda!14759 (Int Int) Int)

(assert (=> d!885415 (< (dynLambda!14755 order!18709 (toValue!7360 (transformation!5260 (rule!7718 separatorToken!241)))) (dynLambda!14759 order!18717 lambda!118106))))

(declare-fun Forall2!871 (Int) Bool)

(assert (=> d!885415 (= (equivClasses!2064 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toValue!7360 (transformation!5260 (rule!7718 separatorToken!241)))) (Forall2!871 lambda!118106))))

(declare-fun bs!542777 () Bool)

(assert (= bs!542777 d!885415))

(declare-fun m!3503947 () Bool)

(assert (=> bs!542777 m!3503947))

(assert (=> b!3225325 d!885415))

(declare-fun b!3225645 () Bool)

(declare-fun e!2011817 () List!36455)

(declare-fun list!12954 (IArray!21795) List!36455)

(assert (=> b!3225645 (= e!2011817 (list!12954 (xs!14013 (c!542041 (charsOf!3276 (h!41753 tokens!494))))))))

(declare-fun b!3225643 () Bool)

(declare-fun e!2011816 () List!36455)

(assert (=> b!3225643 (= e!2011816 Nil!36331)))

(declare-fun b!3225646 () Bool)

(assert (=> b!3225646 (= e!2011817 (++!8740 (list!12953 (left!28287 (c!542041 (charsOf!3276 (h!41753 tokens!494))))) (list!12953 (right!28617 (c!542041 (charsOf!3276 (h!41753 tokens!494)))))))))

(declare-fun d!885425 () Bool)

(declare-fun c!542079 () Bool)

(assert (=> d!885425 (= c!542079 ((_ is Empty!10895) (c!542041 (charsOf!3276 (h!41753 tokens!494)))))))

(assert (=> d!885425 (= (list!12953 (c!542041 (charsOf!3276 (h!41753 tokens!494)))) e!2011816)))

(declare-fun b!3225644 () Bool)

(assert (=> b!3225644 (= e!2011816 e!2011817)))

(declare-fun c!542080 () Bool)

(assert (=> b!3225644 (= c!542080 ((_ is Leaf!17136) (c!542041 (charsOf!3276 (h!41753 tokens!494)))))))

(assert (= (and d!885425 c!542079) b!3225643))

(assert (= (and d!885425 (not c!542079)) b!3225644))

(assert (= (and b!3225644 c!542080) b!3225645))

(assert (= (and b!3225644 (not c!542080)) b!3225646))

(declare-fun m!3503959 () Bool)

(assert (=> b!3225645 m!3503959))

(declare-fun m!3503961 () Bool)

(assert (=> b!3225646 m!3503961))

(declare-fun m!3503963 () Bool)

(assert (=> b!3225646 m!3503963))

(assert (=> b!3225646 m!3503961))

(assert (=> b!3225646 m!3503963))

(declare-fun m!3503965 () Bool)

(assert (=> b!3225646 m!3503965))

(assert (=> d!885347 d!885425))

(declare-fun d!885439 () Bool)

(declare-fun charsToBigInt!1 (List!36454) Int)

(assert (=> d!885439 (= (inv!17 (value!170370 (h!41753 tokens!494))) (= (charsToBigInt!1 (text!38878 (value!170370 (h!41753 tokens!494)))) (value!170363 (value!170370 (h!41753 tokens!494)))))))

(declare-fun bs!542781 () Bool)

(assert (= bs!542781 d!885439))

(declare-fun m!3503967 () Bool)

(assert (=> bs!542781 m!3503967))

(assert (=> b!3225553 d!885439))

(declare-fun b!3225657 () Bool)

(declare-fun e!2011823 () List!36455)

(assert (=> b!3225657 (= e!2011823 (list!12954 (xs!14013 (c!542041 lt!1094102))))))

(declare-fun b!3225655 () Bool)

(declare-fun e!2011822 () List!36455)

(assert (=> b!3225655 (= e!2011822 Nil!36331)))

(declare-fun b!3225658 () Bool)

(assert (=> b!3225658 (= e!2011823 (++!8740 (list!12953 (left!28287 (c!542041 lt!1094102))) (list!12953 (right!28617 (c!542041 lt!1094102)))))))

(declare-fun d!885441 () Bool)

(declare-fun c!542085 () Bool)

(assert (=> d!885441 (= c!542085 ((_ is Empty!10895) (c!542041 lt!1094102)))))

(assert (=> d!885441 (= (list!12953 (c!542041 lt!1094102)) e!2011822)))

(declare-fun b!3225656 () Bool)

(assert (=> b!3225656 (= e!2011822 e!2011823)))

(declare-fun c!542086 () Bool)

(assert (=> b!3225656 (= c!542086 ((_ is Leaf!17136) (c!542041 lt!1094102)))))

(assert (= (and d!885441 c!542085) b!3225655))

(assert (= (and d!885441 (not c!542085)) b!3225656))

(assert (= (and b!3225656 c!542086) b!3225657))

(assert (= (and b!3225656 (not c!542086)) b!3225658))

(declare-fun m!3503969 () Bool)

(assert (=> b!3225657 m!3503969))

(declare-fun m!3503971 () Bool)

(assert (=> b!3225658 m!3503971))

(declare-fun m!3503973 () Bool)

(assert (=> b!3225658 m!3503973))

(assert (=> b!3225658 m!3503971))

(assert (=> b!3225658 m!3503973))

(declare-fun m!3503975 () Bool)

(assert (=> b!3225658 m!3503975))

(assert (=> d!885327 d!885441))

(declare-fun d!885443 () Bool)

(assert (=> d!885443 true))

(declare-fun lt!1094202 () Bool)

(declare-fun rulesValidInductive!1785 (LexerInterface!4849 List!36456) Bool)

(assert (=> d!885443 (= lt!1094202 (rulesValidInductive!1785 thiss!18206 rules!2135))))

(declare-fun lambda!118110 () Int)

(declare-fun forall!7454 (List!36456 Int) Bool)

(assert (=> d!885443 (= lt!1094202 (forall!7454 rules!2135 lambda!118110))))

(assert (=> d!885443 (= (rulesValid!1925 thiss!18206 rules!2135) lt!1094202)))

(declare-fun bs!542783 () Bool)

(assert (= bs!542783 d!885443))

(declare-fun m!3503987 () Bool)

(assert (=> bs!542783 m!3503987))

(declare-fun m!3503989 () Bool)

(assert (=> bs!542783 m!3503989))

(assert (=> d!885397 d!885443))

(declare-fun d!885449 () Bool)

(declare-fun c!542091 () Bool)

(assert (=> d!885449 (= c!542091 (and ((_ is Cons!36332) rules!2135) (not (= (isSeparator!5260 (h!41752 rules!2135)) (isSeparator!5260 (h!41752 rules!2135))))))))

(declare-fun e!2011840 () Bool)

(assert (=> d!885449 (= (ruleDisjointCharsFromAllFromOtherType!601 (h!41752 rules!2135) rules!2135) e!2011840)))

(declare-fun b!3225680 () Bool)

(declare-fun e!2011841 () Bool)

(declare-fun call!233173 () Bool)

(assert (=> b!3225680 (= e!2011841 call!233173)))

(declare-fun b!3225681 () Bool)

(assert (=> b!3225681 (= e!2011840 e!2011841)))

(declare-fun res!1313711 () Bool)

(assert (=> b!3225681 (= res!1313711 (not ((_ is Cons!36332) rules!2135)))))

(assert (=> b!3225681 (=> res!1313711 e!2011841)))

(declare-fun b!3225682 () Bool)

(declare-fun e!2011839 () Bool)

(assert (=> b!3225682 (= e!2011839 call!233173)))

(declare-fun bm!233168 () Bool)

(assert (=> bm!233168 (= call!233173 (ruleDisjointCharsFromAllFromOtherType!601 (h!41752 rules!2135) (t!240915 rules!2135)))))

(declare-fun b!3225683 () Bool)

(assert (=> b!3225683 (= e!2011840 e!2011839)))

(declare-fun res!1313712 () Bool)

(declare-fun rulesUseDisjointChars!278 (Rule!10320 Rule!10320) Bool)

(assert (=> b!3225683 (= res!1313712 (rulesUseDisjointChars!278 (h!41752 rules!2135) (h!41752 rules!2135)))))

(assert (=> b!3225683 (=> (not res!1313712) (not e!2011839))))

(assert (= (and d!885449 c!542091) b!3225683))

(assert (= (and d!885449 (not c!542091)) b!3225681))

(assert (= (and b!3225683 res!1313712) b!3225682))

(assert (= (and b!3225681 (not res!1313711)) b!3225680))

(assert (= (or b!3225682 b!3225680) bm!233168))

(declare-fun m!3504017 () Bool)

(assert (=> bm!233168 m!3504017))

(declare-fun m!3504019 () Bool)

(assert (=> b!3225683 m!3504019))

(assert (=> b!3225388 d!885449))

(declare-fun bs!542788 () Bool)

(declare-fun d!885463 () Bool)

(assert (= bs!542788 (and d!885463 b!3225296)))

(declare-fun lambda!118113 () Int)

(assert (=> bs!542788 (not (= lambda!118113 lambda!118087))))

(declare-fun bs!542789 () Bool)

(assert (= bs!542789 (and d!885463 d!885351)))

(assert (=> bs!542789 (= lambda!118113 lambda!118097)))

(declare-fun b!3225707 () Bool)

(declare-fun e!2011859 () Bool)

(assert (=> b!3225707 (= e!2011859 true)))

(declare-fun b!3225706 () Bool)

(declare-fun e!2011858 () Bool)

(assert (=> b!3225706 (= e!2011858 e!2011859)))

(declare-fun b!3225705 () Bool)

(declare-fun e!2011857 () Bool)

(assert (=> b!3225705 (= e!2011857 e!2011858)))

(assert (=> d!885463 e!2011857))

(assert (= b!3225706 b!3225707))

(assert (= b!3225705 b!3225706))

(assert (= (and d!885463 ((_ is Cons!36332) rules!2135)) b!3225705))

(assert (=> b!3225707 (< (dynLambda!14755 order!18709 (toValue!7360 (transformation!5260 (h!41752 rules!2135)))) (dynLambda!14756 order!18711 lambda!118113))))

(assert (=> b!3225707 (< (dynLambda!14757 order!18713 (toChars!7219 (transformation!5260 (h!41752 rules!2135)))) (dynLambda!14756 order!18711 lambda!118113))))

(assert (=> d!885463 true))

(declare-fun lt!1094213 () Bool)

(assert (=> d!885463 (= lt!1094213 (forall!7450 (list!12952 (seqFromList!3584 tokens!494)) lambda!118113))))

(declare-fun e!2011856 () Bool)

(assert (=> d!885463 (= lt!1094213 e!2011856)))

(declare-fun res!1313727 () Bool)

(assert (=> d!885463 (=> res!1313727 e!2011856)))

(assert (=> d!885463 (= res!1313727 (not ((_ is Cons!36333) (list!12952 (seqFromList!3584 tokens!494)))))))

(assert (=> d!885463 (not (isEmpty!20407 rules!2135))))

(assert (=> d!885463 (= (rulesProduceEachTokenIndividuallyList!1737 thiss!18206 rules!2135 (list!12952 (seqFromList!3584 tokens!494))) lt!1094213)))

(declare-fun b!3225703 () Bool)

(declare-fun e!2011855 () Bool)

(assert (=> b!3225703 (= e!2011856 e!2011855)))

(declare-fun res!1313726 () Bool)

(assert (=> b!3225703 (=> (not res!1313726) (not e!2011855))))

(assert (=> b!3225703 (= res!1313726 (rulesProduceIndividualToken!2341 thiss!18206 rules!2135 (h!41753 (list!12952 (seqFromList!3584 tokens!494)))))))

(declare-fun b!3225704 () Bool)

(assert (=> b!3225704 (= e!2011855 (rulesProduceEachTokenIndividuallyList!1737 thiss!18206 rules!2135 (t!240916 (list!12952 (seqFromList!3584 tokens!494)))))))

(assert (= (and d!885463 (not res!1313727)) b!3225703))

(assert (= (and b!3225703 res!1313726) b!3225704))

(assert (=> d!885463 m!3503845))

(declare-fun m!3504039 () Bool)

(assert (=> d!885463 m!3504039))

(assert (=> d!885463 m!3503539))

(declare-fun m!3504041 () Bool)

(assert (=> b!3225703 m!3504041))

(declare-fun m!3504043 () Bool)

(assert (=> b!3225704 m!3504043))

(assert (=> b!3225519 d!885463))

(declare-fun d!885467 () Bool)

(declare-fun list!12956 (Conc!10896) List!36457)

(assert (=> d!885467 (= (list!12952 (seqFromList!3584 tokens!494)) (list!12956 (c!542042 (seqFromList!3584 tokens!494))))))

(declare-fun bs!542790 () Bool)

(assert (= bs!542790 d!885467))

(declare-fun m!3504045 () Bool)

(assert (=> bs!542790 m!3504045))

(assert (=> b!3225519 d!885467))

(declare-fun d!885469 () Bool)

(declare-fun isBalanced!3236 (Conc!10895) Bool)

(assert (=> d!885469 (= (inv!49209 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241))) (isBalanced!3236 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241)))))))

(declare-fun bs!542791 () Bool)

(assert (= bs!542791 d!885469))

(declare-fun m!3504047 () Bool)

(assert (=> bs!542791 m!3504047))

(assert (=> tb!159541 d!885469))

(declare-fun lt!1094214 () Bool)

(declare-fun d!885471 () Bool)

(assert (=> d!885471 (= lt!1094214 (isEmpty!20410 (list!12949 (_2!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241)))))))))

(assert (=> d!885471 (= lt!1094214 (isEmpty!20412 (c!542041 (_2!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241)))))))))

(assert (=> d!885471 (= (isEmpty!20411 (_2!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241))))) lt!1094214)))

(declare-fun bs!542792 () Bool)

(assert (= bs!542792 d!885471))

(declare-fun m!3504049 () Bool)

(assert (=> bs!542792 m!3504049))

(assert (=> bs!542792 m!3504049))

(declare-fun m!3504051 () Bool)

(assert (=> bs!542792 m!3504051))

(declare-fun m!3504053 () Bool)

(assert (=> bs!542792 m!3504053))

(assert (=> b!3225392 d!885471))

(declare-fun b!3225848 () Bool)

(declare-fun e!2011950 () Bool)

(declare-fun e!2011949 () Bool)

(assert (=> b!3225848 (= e!2011950 e!2011949)))

(declare-fun res!1313790 () Bool)

(declare-fun lt!1094277 () tuple2!35756)

(declare-fun size!27396 (BalanceConc!21404) Int)

(assert (=> b!3225848 (= res!1313790 (< (size!27396 (_2!21012 lt!1094277)) (size!27396 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241)))))))

(assert (=> b!3225848 (=> (not res!1313790) (not e!2011949))))

(declare-fun d!885473 () Bool)

(declare-fun e!2011948 () Bool)

(assert (=> d!885473 e!2011948))

(declare-fun res!1313789 () Bool)

(assert (=> d!885473 (=> (not res!1313789) (not e!2011948))))

(assert (=> d!885473 (= res!1313789 e!2011950)))

(declare-fun c!542137 () Bool)

(assert (=> d!885473 (= c!542137 (> (size!27395 (_1!21012 lt!1094277)) 0))))

(declare-fun lexTailRecV2!940 (LexerInterface!4849 List!36456 BalanceConc!21404 BalanceConc!21404 BalanceConc!21404 BalanceConc!21406) tuple2!35756)

(assert (=> d!885473 (= lt!1094277 (lexTailRecV2!940 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241)) (BalanceConc!21405 Empty!10895) (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241)) (BalanceConc!21407 Empty!10896)))))

(assert (=> d!885473 (= (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241))) lt!1094277)))

(declare-fun b!3225849 () Bool)

(declare-fun isEmpty!20414 (BalanceConc!21406) Bool)

(assert (=> b!3225849 (= e!2011949 (not (isEmpty!20414 (_1!21012 lt!1094277))))))

(declare-fun b!3225850 () Bool)

(declare-datatypes ((tuple2!35758 0))(
  ( (tuple2!35759 (_1!21013 List!36457) (_2!21013 List!36455)) )
))
(declare-fun lexList!1328 (LexerInterface!4849 List!36456 List!36455) tuple2!35758)

(assert (=> b!3225850 (= e!2011948 (= (list!12949 (_2!21012 lt!1094277)) (_2!21013 (lexList!1328 thiss!18206 rules!2135 (list!12949 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241)))))))))

(declare-fun b!3225851 () Bool)

(declare-fun res!1313791 () Bool)

(assert (=> b!3225851 (=> (not res!1313791) (not e!2011948))))

(assert (=> b!3225851 (= res!1313791 (= (list!12952 (_1!21012 lt!1094277)) (_1!21013 (lexList!1328 thiss!18206 rules!2135 (list!12949 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241)))))))))

(declare-fun b!3225852 () Bool)

(assert (=> b!3225852 (= e!2011950 (= (_2!21012 lt!1094277) (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241))))))

(assert (= (and d!885473 c!542137) b!3225848))

(assert (= (and d!885473 (not c!542137)) b!3225852))

(assert (= (and b!3225848 res!1313790) b!3225849))

(assert (= (and d!885473 res!1313789) b!3225851))

(assert (= (and b!3225851 res!1313791) b!3225850))

(declare-fun m!3504289 () Bool)

(assert (=> b!3225851 m!3504289))

(assert (=> b!3225851 m!3503705))

(declare-fun m!3504291 () Bool)

(assert (=> b!3225851 m!3504291))

(assert (=> b!3225851 m!3504291))

(declare-fun m!3504293 () Bool)

(assert (=> b!3225851 m!3504293))

(declare-fun m!3504295 () Bool)

(assert (=> b!3225848 m!3504295))

(assert (=> b!3225848 m!3503705))

(declare-fun m!3504297 () Bool)

(assert (=> b!3225848 m!3504297))

(declare-fun m!3504299 () Bool)

(assert (=> b!3225850 m!3504299))

(assert (=> b!3225850 m!3503705))

(assert (=> b!3225850 m!3504291))

(assert (=> b!3225850 m!3504291))

(assert (=> b!3225850 m!3504293))

(declare-fun m!3504301 () Bool)

(assert (=> b!3225849 m!3504301))

(declare-fun m!3504303 () Bool)

(assert (=> d!885473 m!3504303))

(assert (=> d!885473 m!3503705))

(assert (=> d!885473 m!3503705))

(declare-fun m!3504305 () Bool)

(assert (=> d!885473 m!3504305))

(assert (=> b!3225392 d!885473))

(declare-fun d!885553 () Bool)

(declare-fun lt!1094278 () BalanceConc!21404)

(assert (=> d!885553 (= (list!12949 lt!1094278) (printList!1399 thiss!18206 (list!12952 (singletonSeq!2356 separatorToken!241))))))

(assert (=> d!885553 (= lt!1094278 (printTailRec!1346 thiss!18206 (singletonSeq!2356 separatorToken!241) 0 (BalanceConc!21405 Empty!10895)))))

(assert (=> d!885553 (= (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241)) lt!1094278)))

(declare-fun bs!542811 () Bool)

(assert (= bs!542811 d!885553))

(declare-fun m!3504307 () Bool)

(assert (=> bs!542811 m!3504307))

(assert (=> bs!542811 m!3503703))

(assert (=> bs!542811 m!3503709))

(assert (=> bs!542811 m!3503709))

(declare-fun m!3504309 () Bool)

(assert (=> bs!542811 m!3504309))

(assert (=> bs!542811 m!3503703))

(declare-fun m!3504311 () Bool)

(assert (=> bs!542811 m!3504311))

(assert (=> b!3225392 d!885553))

(declare-fun d!885555 () Bool)

(declare-fun e!2011951 () Bool)

(assert (=> d!885555 e!2011951))

(declare-fun res!1313792 () Bool)

(assert (=> d!885555 (=> (not res!1313792) (not e!2011951))))

(declare-fun lt!1094279 () BalanceConc!21406)

(assert (=> d!885555 (= res!1313792 (= (list!12952 lt!1094279) (Cons!36333 separatorToken!241 Nil!36333)))))

(assert (=> d!885555 (= lt!1094279 (singleton!1004 separatorToken!241))))

(assert (=> d!885555 (= (singletonSeq!2356 separatorToken!241) lt!1094279)))

(declare-fun b!3225853 () Bool)

(assert (=> b!3225853 (= e!2011951 (isBalanced!3235 (c!542042 lt!1094279)))))

(assert (= (and d!885555 res!1313792) b!3225853))

(declare-fun m!3504313 () Bool)

(assert (=> d!885555 m!3504313))

(declare-fun m!3504315 () Bool)

(assert (=> d!885555 m!3504315))

(declare-fun m!3504317 () Bool)

(assert (=> b!3225853 m!3504317))

(assert (=> b!3225392 d!885555))

(declare-fun d!885557 () Bool)

(assert (=> d!885557 (= (inv!17 (value!170370 separatorToken!241)) (= (charsToBigInt!1 (text!38878 (value!170370 separatorToken!241))) (value!170363 (value!170370 separatorToken!241))))))

(declare-fun bs!542813 () Bool)

(assert (= bs!542813 d!885557))

(declare-fun m!3504319 () Bool)

(assert (=> bs!542813 m!3504319))

(assert (=> b!3225545 d!885557))

(declare-fun d!885560 () Bool)

(assert (=> d!885560 (= (isEmpty!20410 (originalCharacters!5974 (h!41753 tokens!494))) ((_ is Nil!36331) (originalCharacters!5974 (h!41753 tokens!494))))))

(assert (=> d!885301 d!885560))

(declare-fun d!885565 () Bool)

(declare-fun charsToBigInt!0 (List!36454 Int) Int)

(assert (=> d!885565 (= (inv!15 (value!170370 (h!41753 tokens!494))) (= (charsToBigInt!0 (text!38879 (value!170370 (h!41753 tokens!494))) 0) (value!170366 (value!170370 (h!41753 tokens!494)))))))

(declare-fun bs!542818 () Bool)

(assert (= bs!542818 d!885565))

(declare-fun m!3504335 () Bool)

(assert (=> bs!542818 m!3504335))

(assert (=> b!3225551 d!885565))

(declare-fun d!885573 () Bool)

(declare-fun lt!1094282 () Token!9886)

(assert (=> d!885573 (= lt!1094282 (apply!8286 (list!12952 (_1!21012 lt!1094149)) 0))))

(declare-fun apply!8287 (Conc!10896 Int) Token!9886)

(assert (=> d!885573 (= lt!1094282 (apply!8287 (c!542042 (_1!21012 lt!1094149)) 0))))

(declare-fun e!2011956 () Bool)

(assert (=> d!885573 e!2011956))

(declare-fun res!1313795 () Bool)

(assert (=> d!885573 (=> (not res!1313795) (not e!2011956))))

(assert (=> d!885573 (= res!1313795 (<= 0 0))))

(assert (=> d!885573 (= (apply!8285 (_1!21012 lt!1094149) 0) lt!1094282)))

(declare-fun b!3225860 () Bool)

(assert (=> b!3225860 (= e!2011956 (< 0 (size!27395 (_1!21012 lt!1094149))))))

(assert (= (and d!885573 res!1313795) b!3225860))

(declare-fun m!3504337 () Bool)

(assert (=> d!885573 m!3504337))

(assert (=> d!885573 m!3504337))

(declare-fun m!3504339 () Bool)

(assert (=> d!885573 m!3504339))

(declare-fun m!3504341 () Bool)

(assert (=> d!885573 m!3504341))

(assert (=> b!3225860 m!3503711))

(assert (=> b!3225390 d!885573))

(declare-fun d!885575 () Bool)

(assert (=> d!885575 (= (inv!15 (value!170370 separatorToken!241)) (= (charsToBigInt!0 (text!38879 (value!170370 separatorToken!241)) 0) (value!170366 (value!170370 separatorToken!241))))))

(declare-fun bs!542819 () Bool)

(assert (= bs!542819 d!885575))

(declare-fun m!3504343 () Bool)

(assert (=> bs!542819 m!3504343))

(assert (=> b!3225543 d!885575))

(declare-fun d!885577 () Bool)

(declare-fun res!1313796 () Bool)

(declare-fun e!2011957 () Bool)

(assert (=> d!885577 (=> res!1313796 e!2011957)))

(assert (=> d!885577 (= res!1313796 ((_ is Nil!36333) (t!240916 tokens!494)))))

(assert (=> d!885577 (= (forall!7450 (t!240916 tokens!494) lambda!118087) e!2011957)))

(declare-fun b!3225861 () Bool)

(declare-fun e!2011958 () Bool)

(assert (=> b!3225861 (= e!2011957 e!2011958)))

(declare-fun res!1313797 () Bool)

(assert (=> b!3225861 (=> (not res!1313797) (not e!2011958))))

(assert (=> b!3225861 (= res!1313797 (dynLambda!14754 lambda!118087 (h!41753 (t!240916 tokens!494))))))

(declare-fun b!3225862 () Bool)

(assert (=> b!3225862 (= e!2011958 (forall!7450 (t!240916 (t!240916 tokens!494)) lambda!118087))))

(assert (= (and d!885577 (not res!1313796)) b!3225861))

(assert (= (and b!3225861 res!1313797) b!3225862))

(declare-fun b_lambda!88745 () Bool)

(assert (=> (not b_lambda!88745) (not b!3225861)))

(declare-fun m!3504345 () Bool)

(assert (=> b!3225861 m!3504345))

(declare-fun m!3504347 () Bool)

(assert (=> b!3225862 m!3504347))

(assert (=> b!3225398 d!885577))

(declare-fun bs!542820 () Bool)

(declare-fun d!885579 () Bool)

(assert (= bs!542820 (and d!885579 d!885415)))

(declare-fun lambda!118119 () Int)

(assert (=> bs!542820 (= (= (toValue!7360 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toValue!7360 (transformation!5260 (rule!7718 separatorToken!241)))) (= lambda!118119 lambda!118106))))

(assert (=> d!885579 true))

(assert (=> d!885579 (< (dynLambda!14755 order!18709 (toValue!7360 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) (dynLambda!14759 order!18717 lambda!118119))))

(assert (=> d!885579 (= (equivClasses!2064 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toValue!7360 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) (Forall2!871 lambda!118119))))

(declare-fun bs!542821 () Bool)

(assert (= bs!542821 d!885579))

(declare-fun m!3504349 () Bool)

(assert (=> bs!542821 m!3504349))

(assert (=> b!3225383 d!885579))

(declare-fun d!885581 () Bool)

(declare-fun e!2011961 () Bool)

(assert (=> d!885581 e!2011961))

(declare-fun res!1313800 () Bool)

(assert (=> d!885581 (=> (not res!1313800) (not e!2011961))))

(declare-fun lt!1094285 () BalanceConc!21406)

(assert (=> d!885581 (= res!1313800 (= (list!12952 lt!1094285) tokens!494))))

(declare-fun fromList!626 (List!36457) Conc!10896)

(assert (=> d!885581 (= lt!1094285 (BalanceConc!21407 (fromList!626 tokens!494)))))

(assert (=> d!885581 (= (fromListB!1556 tokens!494) lt!1094285)))

(declare-fun b!3225865 () Bool)

(assert (=> b!3225865 (= e!2011961 (isBalanced!3235 (fromList!626 tokens!494)))))

(assert (= (and d!885581 res!1313800) b!3225865))

(declare-fun m!3504351 () Bool)

(assert (=> d!885581 m!3504351))

(declare-fun m!3504353 () Bool)

(assert (=> d!885581 m!3504353))

(assert (=> b!3225865 m!3504353))

(assert (=> b!3225865 m!3504353))

(declare-fun m!3504355 () Bool)

(assert (=> b!3225865 m!3504355))

(assert (=> d!885385 d!885581))

(declare-fun d!885583 () Bool)

(assert (=> d!885583 (= (list!12949 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494)))) (list!12953 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494))))))))

(declare-fun bs!542822 () Bool)

(assert (= bs!542822 d!885583))

(declare-fun m!3504357 () Bool)

(assert (=> bs!542822 m!3504357))

(assert (=> b!3225316 d!885583))

(declare-fun d!885585 () Bool)

(declare-fun res!1313805 () Bool)

(declare-fun e!2011966 () Bool)

(assert (=> d!885585 (=> res!1313805 e!2011966)))

(assert (=> d!885585 (= res!1313805 ((_ is Nil!36332) rules!2135))))

(assert (=> d!885585 (= (noDuplicateTag!1921 thiss!18206 rules!2135 Nil!36335) e!2011966)))

(declare-fun b!3225870 () Bool)

(declare-fun e!2011967 () Bool)

(assert (=> b!3225870 (= e!2011966 e!2011967)))

(declare-fun res!1313806 () Bool)

(assert (=> b!3225870 (=> (not res!1313806) (not e!2011967))))

(declare-fun contains!6517 (List!36459 String!40783) Bool)

(assert (=> b!3225870 (= res!1313806 (not (contains!6517 Nil!36335 (tag!5792 (h!41752 rules!2135)))))))

(declare-fun b!3225871 () Bool)

(assert (=> b!3225871 (= e!2011967 (noDuplicateTag!1921 thiss!18206 (t!240915 rules!2135) (Cons!36335 (tag!5792 (h!41752 rules!2135)) Nil!36335)))))

(assert (= (and d!885585 (not res!1313805)) b!3225870))

(assert (= (and b!3225870 res!1313806) b!3225871))

(declare-fun m!3504359 () Bool)

(assert (=> b!3225870 m!3504359))

(declare-fun m!3504361 () Bool)

(assert (=> b!3225871 m!3504361))

(assert (=> b!3225559 d!885585))

(declare-fun bs!542823 () Bool)

(declare-fun d!885587 () Bool)

(assert (= bs!542823 (and d!885587 d!885415)))

(declare-fun lambda!118120 () Int)

(assert (=> bs!542823 (= (= (toValue!7360 (transformation!5260 (h!41752 rules!2135))) (toValue!7360 (transformation!5260 (rule!7718 separatorToken!241)))) (= lambda!118120 lambda!118106))))

(declare-fun bs!542824 () Bool)

(assert (= bs!542824 (and d!885587 d!885579)))

(assert (=> bs!542824 (= (= (toValue!7360 (transformation!5260 (h!41752 rules!2135))) (toValue!7360 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) (= lambda!118120 lambda!118119))))

(assert (=> d!885587 true))

(assert (=> d!885587 (< (dynLambda!14755 order!18709 (toValue!7360 (transformation!5260 (h!41752 rules!2135)))) (dynLambda!14759 order!18717 lambda!118120))))

(assert (=> d!885587 (= (equivClasses!2064 (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toValue!7360 (transformation!5260 (h!41752 rules!2135)))) (Forall2!871 lambda!118120))))

(declare-fun bs!542825 () Bool)

(assert (= bs!542825 d!885587))

(declare-fun m!3504363 () Bool)

(assert (=> bs!542825 m!3504363))

(assert (=> b!3225556 d!885587))

(declare-fun d!885589 () Bool)

(assert (=> d!885589 true))

(declare-fun order!18721 () Int)

(declare-fun lambda!118123 () Int)

(declare-fun dynLambda!14760 (Int Int) Int)

(assert (=> d!885589 (< (dynLambda!14757 order!18713 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241)))) (dynLambda!14760 order!18721 lambda!118123))))

(assert (=> d!885589 true))

(assert (=> d!885589 (< (dynLambda!14755 order!18709 (toValue!7360 (transformation!5260 (rule!7718 separatorToken!241)))) (dynLambda!14760 order!18721 lambda!118123))))

(declare-fun Forall!1275 (Int) Bool)

(assert (=> d!885589 (= (semiInverseModEq!2165 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toValue!7360 (transformation!5260 (rule!7718 separatorToken!241)))) (Forall!1275 lambda!118123))))

(declare-fun bs!542826 () Bool)

(assert (= bs!542826 d!885589))

(declare-fun m!3504365 () Bool)

(assert (=> bs!542826 m!3504365))

(assert (=> d!885309 d!885589))

(declare-fun d!885591 () Bool)

(declare-fun lt!1094288 () Int)

(declare-fun size!27400 (List!36457) Int)

(assert (=> d!885591 (= lt!1094288 (size!27400 (list!12952 lt!1094104)))))

(declare-fun size!27401 (Conc!10896) Int)

(assert (=> d!885591 (= lt!1094288 (size!27401 (c!542042 lt!1094104)))))

(assert (=> d!885591 (= (size!27395 lt!1094104) lt!1094288)))

(declare-fun bs!542827 () Bool)

(assert (= bs!542827 d!885591))

(assert (=> bs!542827 m!3503641))

(assert (=> bs!542827 m!3503641))

(declare-fun m!3504367 () Bool)

(assert (=> bs!542827 m!3504367))

(declare-fun m!3504369 () Bool)

(assert (=> bs!542827 m!3504369))

(assert (=> b!3225371 d!885591))

(declare-fun d!885593 () Bool)

(declare-fun lt!1094291 () Int)

(assert (=> d!885593 (>= lt!1094291 0)))

(declare-fun e!2011970 () Int)

(assert (=> d!885593 (= lt!1094291 e!2011970)))

(declare-fun c!542143 () Bool)

(assert (=> d!885593 (= c!542143 ((_ is Nil!36331) (originalCharacters!5974 separatorToken!241)))))

(assert (=> d!885593 (= (size!27394 (originalCharacters!5974 separatorToken!241)) lt!1094291)))

(declare-fun b!3225880 () Bool)

(assert (=> b!3225880 (= e!2011970 0)))

(declare-fun b!3225881 () Bool)

(assert (=> b!3225881 (= e!2011970 (+ 1 (size!27394 (t!240914 (originalCharacters!5974 separatorToken!241)))))))

(assert (= (and d!885593 c!542143) b!3225880))

(assert (= (and d!885593 (not c!542143)) b!3225881))

(declare-fun m!3504371 () Bool)

(assert (=> b!3225881 m!3504371))

(assert (=> b!3225549 d!885593))

(declare-fun b!3225900 () Bool)

(declare-fun e!2011981 () Int)

(declare-fun call!233184 () Int)

(assert (=> b!3225900 (= e!2011981 call!233184)))

(declare-fun bm!233179 () Bool)

(assert (=> bm!233179 (= call!233184 (size!27400 lt!1094142))))

(declare-fun b!3225901 () Bool)

(declare-fun e!2011982 () Int)

(assert (=> b!3225901 (= e!2011981 e!2011982)))

(declare-fun c!542154 () Bool)

(assert (=> b!3225901 (= c!542154 (>= 0 call!233184))))

(declare-fun b!3225902 () Bool)

(assert (=> b!3225902 (= e!2011982 0)))

(declare-fun b!3225903 () Bool)

(declare-fun e!2011985 () List!36457)

(assert (=> b!3225903 (= e!2011985 (drop!1871 (t!240916 lt!1094142) (- 0 1)))))

(declare-fun b!3225904 () Bool)

(assert (=> b!3225904 (= e!2011982 (- call!233184 0))))

(declare-fun b!3225905 () Bool)

(declare-fun e!2011984 () Bool)

(declare-fun lt!1094294 () List!36457)

(assert (=> b!3225905 (= e!2011984 (= (size!27400 lt!1094294) e!2011981))))

(declare-fun c!542152 () Bool)

(assert (=> b!3225905 (= c!542152 (<= 0 0))))

(declare-fun d!885595 () Bool)

(assert (=> d!885595 e!2011984))

(declare-fun res!1313809 () Bool)

(assert (=> d!885595 (=> (not res!1313809) (not e!2011984))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4909 (List!36457) (InoxSet Token!9886))

(assert (=> d!885595 (= res!1313809 (= ((_ map implies) (content!4909 lt!1094294) (content!4909 lt!1094142)) ((as const (InoxSet Token!9886)) true)))))

(declare-fun e!2011983 () List!36457)

(assert (=> d!885595 (= lt!1094294 e!2011983)))

(declare-fun c!542155 () Bool)

(assert (=> d!885595 (= c!542155 ((_ is Nil!36333) lt!1094142))))

(assert (=> d!885595 (= (drop!1871 lt!1094142 0) lt!1094294)))

(declare-fun b!3225906 () Bool)

(assert (=> b!3225906 (= e!2011985 lt!1094142)))

(declare-fun b!3225907 () Bool)

(assert (=> b!3225907 (= e!2011983 e!2011985)))

(declare-fun c!542153 () Bool)

(assert (=> b!3225907 (= c!542153 (<= 0 0))))

(declare-fun b!3225908 () Bool)

(assert (=> b!3225908 (= e!2011983 Nil!36333)))

(assert (= (and d!885595 c!542155) b!3225908))

(assert (= (and d!885595 (not c!542155)) b!3225907))

(assert (= (and b!3225907 c!542153) b!3225906))

(assert (= (and b!3225907 (not c!542153)) b!3225903))

(assert (= (and d!885595 res!1313809) b!3225905))

(assert (= (and b!3225905 c!542152) b!3225900))

(assert (= (and b!3225905 (not c!542152)) b!3225901))

(assert (= (and b!3225901 c!542154) b!3225902))

(assert (= (and b!3225901 (not c!542154)) b!3225904))

(assert (= (or b!3225900 b!3225901 b!3225904) bm!233179))

(declare-fun m!3504373 () Bool)

(assert (=> bm!233179 m!3504373))

(declare-fun m!3504375 () Bool)

(assert (=> b!3225903 m!3504375))

(declare-fun m!3504377 () Bool)

(assert (=> b!3225905 m!3504377))

(declare-fun m!3504379 () Bool)

(assert (=> d!885595 m!3504379))

(declare-fun m!3504381 () Bool)

(assert (=> d!885595 m!3504381))

(assert (=> b!3225373 d!885595))

(declare-fun d!885597 () Bool)

(assert (=> d!885597 (= (tail!5227 (drop!1871 lt!1094141 0)) (drop!1871 lt!1094141 (+ 0 1)))))

(declare-fun lt!1094297 () Unit!50924)

(declare-fun choose!18813 (List!36457 Int) Unit!50924)

(assert (=> d!885597 (= lt!1094297 (choose!18813 lt!1094141 0))))

(declare-fun e!2011988 () Bool)

(assert (=> d!885597 e!2011988))

(declare-fun res!1313812 () Bool)

(assert (=> d!885597 (=> (not res!1313812) (not e!2011988))))

(assert (=> d!885597 (= res!1313812 (>= 0 0))))

(assert (=> d!885597 (= (lemmaDropTail!931 lt!1094141 0) lt!1094297)))

(declare-fun b!3225911 () Bool)

(assert (=> b!3225911 (= e!2011988 (< 0 (size!27400 lt!1094141)))))

(assert (= (and d!885597 res!1313812) b!3225911))

(assert (=> d!885597 m!3503673))

(assert (=> d!885597 m!3503673))

(assert (=> d!885597 m!3503675))

(assert (=> d!885597 m!3503661))

(declare-fun m!3504383 () Bool)

(assert (=> d!885597 m!3504383))

(declare-fun m!3504385 () Bool)

(assert (=> b!3225911 m!3504385))

(assert (=> b!3225373 d!885597))

(declare-fun d!885599 () Bool)

(declare-fun lt!1094299 () BalanceConc!21404)

(assert (=> d!885599 (= (list!12949 lt!1094299) (printListTailRec!571 thiss!18206 (dropList!1088 lt!1094104 (+ 0 1)) (list!12949 (++!8739 (BalanceConc!21405 Empty!10895) (charsOf!3276 (apply!8285 lt!1094104 0))))))))

(declare-fun e!2011990 () BalanceConc!21404)

(assert (=> d!885599 (= lt!1094299 e!2011990)))

(declare-fun c!542156 () Bool)

(assert (=> d!885599 (= c!542156 (>= (+ 0 1) (size!27395 lt!1094104)))))

(declare-fun e!2011989 () Bool)

(assert (=> d!885599 e!2011989))

(declare-fun res!1313813 () Bool)

(assert (=> d!885599 (=> (not res!1313813) (not e!2011989))))

(assert (=> d!885599 (= res!1313813 (>= (+ 0 1) 0))))

(assert (=> d!885599 (= (printTailRec!1346 thiss!18206 lt!1094104 (+ 0 1) (++!8739 (BalanceConc!21405 Empty!10895) (charsOf!3276 (apply!8285 lt!1094104 0)))) lt!1094299)))

(declare-fun b!3225912 () Bool)

(assert (=> b!3225912 (= e!2011989 (<= (+ 0 1) (size!27395 lt!1094104)))))

(declare-fun b!3225913 () Bool)

(assert (=> b!3225913 (= e!2011990 (++!8739 (BalanceConc!21405 Empty!10895) (charsOf!3276 (apply!8285 lt!1094104 0))))))

(declare-fun b!3225914 () Bool)

(assert (=> b!3225914 (= e!2011990 (printTailRec!1346 thiss!18206 lt!1094104 (+ 0 1 1) (++!8739 (++!8739 (BalanceConc!21405 Empty!10895) (charsOf!3276 (apply!8285 lt!1094104 0))) (charsOf!3276 (apply!8285 lt!1094104 (+ 0 1))))))))

(declare-fun lt!1094301 () List!36457)

(assert (=> b!3225914 (= lt!1094301 (list!12952 lt!1094104))))

(declare-fun lt!1094298 () Unit!50924)

(assert (=> b!3225914 (= lt!1094298 (lemmaDropApply!1047 lt!1094301 (+ 0 1)))))

(assert (=> b!3225914 (= (head!7083 (drop!1871 lt!1094301 (+ 0 1))) (apply!8286 lt!1094301 (+ 0 1)))))

(declare-fun lt!1094304 () Unit!50924)

(assert (=> b!3225914 (= lt!1094304 lt!1094298)))

(declare-fun lt!1094300 () List!36457)

(assert (=> b!3225914 (= lt!1094300 (list!12952 lt!1094104))))

(declare-fun lt!1094303 () Unit!50924)

(assert (=> b!3225914 (= lt!1094303 (lemmaDropTail!931 lt!1094300 (+ 0 1)))))

(assert (=> b!3225914 (= (tail!5227 (drop!1871 lt!1094300 (+ 0 1))) (drop!1871 lt!1094300 (+ 0 1 1)))))

(declare-fun lt!1094302 () Unit!50924)

(assert (=> b!3225914 (= lt!1094302 lt!1094303)))

(assert (= (and d!885599 res!1313813) b!3225912))

(assert (= (and d!885599 c!542156) b!3225913))

(assert (= (and d!885599 (not c!542156)) b!3225914))

(declare-fun m!3504387 () Bool)

(assert (=> d!885599 m!3504387))

(declare-fun m!3504389 () Bool)

(assert (=> d!885599 m!3504389))

(assert (=> d!885599 m!3503649))

(assert (=> d!885599 m!3503657))

(declare-fun m!3504391 () Bool)

(assert (=> d!885599 m!3504391))

(assert (=> d!885599 m!3504387))

(assert (=> d!885599 m!3504391))

(declare-fun m!3504393 () Bool)

(assert (=> d!885599 m!3504393))

(assert (=> b!3225912 m!3503649))

(declare-fun m!3504395 () Bool)

(assert (=> b!3225914 m!3504395))

(declare-fun m!3504397 () Bool)

(assert (=> b!3225914 m!3504397))

(declare-fun m!3504399 () Bool)

(assert (=> b!3225914 m!3504399))

(declare-fun m!3504401 () Bool)

(assert (=> b!3225914 m!3504401))

(assert (=> b!3225914 m!3504395))

(declare-fun m!3504403 () Bool)

(assert (=> b!3225914 m!3504403))

(declare-fun m!3504405 () Bool)

(assert (=> b!3225914 m!3504405))

(declare-fun m!3504407 () Bool)

(assert (=> b!3225914 m!3504407))

(declare-fun m!3504409 () Bool)

(assert (=> b!3225914 m!3504409))

(assert (=> b!3225914 m!3504405))

(declare-fun m!3504411 () Bool)

(assert (=> b!3225914 m!3504411))

(declare-fun m!3504413 () Bool)

(assert (=> b!3225914 m!3504413))

(declare-fun m!3504415 () Bool)

(assert (=> b!3225914 m!3504415))

(assert (=> b!3225914 m!3503657))

(assert (=> b!3225914 m!3504403))

(assert (=> b!3225914 m!3504397))

(assert (=> b!3225914 m!3503641))

(assert (=> b!3225914 m!3504413))

(declare-fun m!3504417 () Bool)

(assert (=> b!3225914 m!3504417))

(assert (=> b!3225373 d!885599))

(declare-fun b!3225915 () Bool)

(declare-fun e!2011991 () Int)

(declare-fun call!233185 () Int)

(assert (=> b!3225915 (= e!2011991 call!233185)))

(declare-fun bm!233180 () Bool)

(assert (=> bm!233180 (= call!233185 (size!27400 lt!1094141))))

(declare-fun b!3225916 () Bool)

(declare-fun e!2011992 () Int)

(assert (=> b!3225916 (= e!2011991 e!2011992)))

(declare-fun c!542159 () Bool)

(assert (=> b!3225916 (= c!542159 (>= 0 call!233185))))

(declare-fun b!3225917 () Bool)

(assert (=> b!3225917 (= e!2011992 0)))

(declare-fun b!3225918 () Bool)

(declare-fun e!2011995 () List!36457)

(assert (=> b!3225918 (= e!2011995 (drop!1871 (t!240916 lt!1094141) (- 0 1)))))

(declare-fun b!3225919 () Bool)

(assert (=> b!3225919 (= e!2011992 (- call!233185 0))))

(declare-fun b!3225920 () Bool)

(declare-fun e!2011994 () Bool)

(declare-fun lt!1094305 () List!36457)

(assert (=> b!3225920 (= e!2011994 (= (size!27400 lt!1094305) e!2011991))))

(declare-fun c!542157 () Bool)

(assert (=> b!3225920 (= c!542157 (<= 0 0))))

(declare-fun d!885601 () Bool)

(assert (=> d!885601 e!2011994))

(declare-fun res!1313814 () Bool)

(assert (=> d!885601 (=> (not res!1313814) (not e!2011994))))

(assert (=> d!885601 (= res!1313814 (= ((_ map implies) (content!4909 lt!1094305) (content!4909 lt!1094141)) ((as const (InoxSet Token!9886)) true)))))

(declare-fun e!2011993 () List!36457)

(assert (=> d!885601 (= lt!1094305 e!2011993)))

(declare-fun c!542160 () Bool)

(assert (=> d!885601 (= c!542160 ((_ is Nil!36333) lt!1094141))))

(assert (=> d!885601 (= (drop!1871 lt!1094141 0) lt!1094305)))

(declare-fun b!3225921 () Bool)

(assert (=> b!3225921 (= e!2011995 lt!1094141)))

(declare-fun b!3225922 () Bool)

(assert (=> b!3225922 (= e!2011993 e!2011995)))

(declare-fun c!542158 () Bool)

(assert (=> b!3225922 (= c!542158 (<= 0 0))))

(declare-fun b!3225923 () Bool)

(assert (=> b!3225923 (= e!2011993 Nil!36333)))

(assert (= (and d!885601 c!542160) b!3225923))

(assert (= (and d!885601 (not c!542160)) b!3225922))

(assert (= (and b!3225922 c!542158) b!3225921))

(assert (= (and b!3225922 (not c!542158)) b!3225918))

(assert (= (and d!885601 res!1313814) b!3225920))

(assert (= (and b!3225920 c!542157) b!3225915))

(assert (= (and b!3225920 (not c!542157)) b!3225916))

(assert (= (and b!3225916 c!542159) b!3225917))

(assert (= (and b!3225916 (not c!542159)) b!3225919))

(assert (= (or b!3225915 b!3225916 b!3225919) bm!233180))

(assert (=> bm!233180 m!3504385))

(declare-fun m!3504419 () Bool)

(assert (=> b!3225918 m!3504419))

(declare-fun m!3504421 () Bool)

(assert (=> b!3225920 m!3504421))

(declare-fun m!3504423 () Bool)

(assert (=> d!885601 m!3504423))

(declare-fun m!3504425 () Bool)

(assert (=> d!885601 m!3504425))

(assert (=> b!3225373 d!885601))

(declare-fun d!885603 () Bool)

(assert (=> d!885603 (= (head!7083 (drop!1871 lt!1094142 0)) (apply!8286 lt!1094142 0))))

(declare-fun lt!1094308 () Unit!50924)

(declare-fun choose!18814 (List!36457 Int) Unit!50924)

(assert (=> d!885603 (= lt!1094308 (choose!18814 lt!1094142 0))))

(declare-fun e!2011998 () Bool)

(assert (=> d!885603 e!2011998))

(declare-fun res!1313817 () Bool)

(assert (=> d!885603 (=> (not res!1313817) (not e!2011998))))

(assert (=> d!885603 (= res!1313817 (>= 0 0))))

(assert (=> d!885603 (= (lemmaDropApply!1047 lt!1094142 0) lt!1094308)))

(declare-fun b!3225926 () Bool)

(assert (=> b!3225926 (= e!2011998 (< 0 (size!27400 lt!1094142)))))

(assert (= (and d!885603 res!1313817) b!3225926))

(assert (=> d!885603 m!3503665))

(assert (=> d!885603 m!3503665))

(assert (=> d!885603 m!3503671))

(assert (=> d!885603 m!3503667))

(declare-fun m!3504427 () Bool)

(assert (=> d!885603 m!3504427))

(assert (=> b!3225926 m!3504373))

(assert (=> b!3225373 d!885603))

(declare-fun d!885605 () Bool)

(assert (=> d!885605 (= (tail!5227 (drop!1871 lt!1094141 0)) (t!240916 (drop!1871 lt!1094141 0)))))

(assert (=> b!3225373 d!885605))

(declare-fun d!885607 () Bool)

(declare-fun lt!1094311 () Token!9886)

(declare-fun contains!6518 (List!36457 Token!9886) Bool)

(assert (=> d!885607 (contains!6518 lt!1094142 lt!1094311)))

(declare-fun e!2012003 () Token!9886)

(assert (=> d!885607 (= lt!1094311 e!2012003)))

(declare-fun c!542163 () Bool)

(assert (=> d!885607 (= c!542163 (= 0 0))))

(declare-fun e!2012004 () Bool)

(assert (=> d!885607 e!2012004))

(declare-fun res!1313820 () Bool)

(assert (=> d!885607 (=> (not res!1313820) (not e!2012004))))

(assert (=> d!885607 (= res!1313820 (<= 0 0))))

(assert (=> d!885607 (= (apply!8286 lt!1094142 0) lt!1094311)))

(declare-fun b!3225933 () Bool)

(assert (=> b!3225933 (= e!2012004 (< 0 (size!27400 lt!1094142)))))

(declare-fun b!3225934 () Bool)

(assert (=> b!3225934 (= e!2012003 (head!7083 lt!1094142))))

(declare-fun b!3225935 () Bool)

(assert (=> b!3225935 (= e!2012003 (apply!8286 (tail!5227 lt!1094142) (- 0 1)))))

(assert (= (and d!885607 res!1313820) b!3225933))

(assert (= (and d!885607 c!542163) b!3225934))

(assert (= (and d!885607 (not c!542163)) b!3225935))

(declare-fun m!3504429 () Bool)

(assert (=> d!885607 m!3504429))

(assert (=> b!3225933 m!3504373))

(declare-fun m!3504431 () Bool)

(assert (=> b!3225934 m!3504431))

(declare-fun m!3504433 () Bool)

(assert (=> b!3225935 m!3504433))

(assert (=> b!3225935 m!3504433))

(declare-fun m!3504435 () Bool)

(assert (=> b!3225935 m!3504435))

(assert (=> b!3225373 d!885607))

(declare-fun d!885609 () Bool)

(assert (=> d!885609 (= (list!12952 lt!1094104) (list!12956 (c!542042 lt!1094104)))))

(declare-fun bs!542828 () Bool)

(assert (= bs!542828 d!885609))

(declare-fun m!3504437 () Bool)

(assert (=> bs!542828 m!3504437))

(assert (=> b!3225373 d!885609))

(declare-fun d!885611 () Bool)

(assert (=> d!885611 (= (head!7083 (drop!1871 lt!1094142 0)) (h!41753 (drop!1871 lt!1094142 0)))))

(assert (=> b!3225373 d!885611))

(declare-fun b!3225936 () Bool)

(declare-fun e!2012005 () Int)

(declare-fun call!233186 () Int)

(assert (=> b!3225936 (= e!2012005 call!233186)))

(declare-fun bm!233181 () Bool)

(assert (=> bm!233181 (= call!233186 (size!27400 lt!1094141))))

(declare-fun b!3225937 () Bool)

(declare-fun e!2012006 () Int)

(assert (=> b!3225937 (= e!2012005 e!2012006)))

(declare-fun c!542166 () Bool)

(assert (=> b!3225937 (= c!542166 (>= (+ 0 1) call!233186))))

(declare-fun b!3225938 () Bool)

(assert (=> b!3225938 (= e!2012006 0)))

(declare-fun b!3225939 () Bool)

(declare-fun e!2012009 () List!36457)

(assert (=> b!3225939 (= e!2012009 (drop!1871 (t!240916 lt!1094141) (- (+ 0 1) 1)))))

(declare-fun b!3225940 () Bool)

(assert (=> b!3225940 (= e!2012006 (- call!233186 (+ 0 1)))))

(declare-fun b!3225941 () Bool)

(declare-fun e!2012008 () Bool)

(declare-fun lt!1094312 () List!36457)

(assert (=> b!3225941 (= e!2012008 (= (size!27400 lt!1094312) e!2012005))))

(declare-fun c!542164 () Bool)

(assert (=> b!3225941 (= c!542164 (<= (+ 0 1) 0))))

(declare-fun d!885613 () Bool)

(assert (=> d!885613 e!2012008))

(declare-fun res!1313821 () Bool)

(assert (=> d!885613 (=> (not res!1313821) (not e!2012008))))

(assert (=> d!885613 (= res!1313821 (= ((_ map implies) (content!4909 lt!1094312) (content!4909 lt!1094141)) ((as const (InoxSet Token!9886)) true)))))

(declare-fun e!2012007 () List!36457)

(assert (=> d!885613 (= lt!1094312 e!2012007)))

(declare-fun c!542167 () Bool)

(assert (=> d!885613 (= c!542167 ((_ is Nil!36333) lt!1094141))))

(assert (=> d!885613 (= (drop!1871 lt!1094141 (+ 0 1)) lt!1094312)))

(declare-fun b!3225942 () Bool)

(assert (=> b!3225942 (= e!2012009 lt!1094141)))

(declare-fun b!3225943 () Bool)

(assert (=> b!3225943 (= e!2012007 e!2012009)))

(declare-fun c!542165 () Bool)

(assert (=> b!3225943 (= c!542165 (<= (+ 0 1) 0))))

(declare-fun b!3225944 () Bool)

(assert (=> b!3225944 (= e!2012007 Nil!36333)))

(assert (= (and d!885613 c!542167) b!3225944))

(assert (= (and d!885613 (not c!542167)) b!3225943))

(assert (= (and b!3225943 c!542165) b!3225942))

(assert (= (and b!3225943 (not c!542165)) b!3225939))

(assert (= (and d!885613 res!1313821) b!3225941))

(assert (= (and b!3225941 c!542164) b!3225936))

(assert (= (and b!3225941 (not c!542164)) b!3225937))

(assert (= (and b!3225937 c!542166) b!3225938))

(assert (= (and b!3225937 (not c!542166)) b!3225940))

(assert (= (or b!3225936 b!3225937 b!3225940) bm!233181))

(assert (=> bm!233181 m!3504385))

(declare-fun m!3504439 () Bool)

(assert (=> b!3225939 m!3504439))

(declare-fun m!3504441 () Bool)

(assert (=> b!3225941 m!3504441))

(declare-fun m!3504443 () Bool)

(assert (=> d!885613 m!3504443))

(assert (=> d!885613 m!3504425))

(assert (=> b!3225373 d!885613))

(declare-fun d!885615 () Bool)

(declare-fun lt!1094313 () BalanceConc!21404)

(assert (=> d!885615 (= (list!12949 lt!1094313) (originalCharacters!5974 (apply!8285 lt!1094104 0)))))

(assert (=> d!885615 (= lt!1094313 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (apply!8285 lt!1094104 0)))) (value!170370 (apply!8285 lt!1094104 0))))))

(assert (=> d!885615 (= (charsOf!3276 (apply!8285 lt!1094104 0)) lt!1094313)))

(declare-fun b_lambda!88747 () Bool)

(assert (=> (not b_lambda!88747) (not d!885615)))

(declare-fun tb!159575 () Bool)

(declare-fun t!240997 () Bool)

(assert (=> (and b!3225603 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135)))) (toChars!7219 (transformation!5260 (rule!7718 (apply!8285 lt!1094104 0))))) t!240997) tb!159575))

(declare-fun b!3225945 () Bool)

(declare-fun e!2012010 () Bool)

(declare-fun tp!1016341 () Bool)

(assert (=> b!3225945 (= e!2012010 (and (inv!49208 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (apply!8285 lt!1094104 0)))) (value!170370 (apply!8285 lt!1094104 0))))) tp!1016341))))

(declare-fun result!202064 () Bool)

(assert (=> tb!159575 (= result!202064 (and (inv!49209 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (apply!8285 lt!1094104 0)))) (value!170370 (apply!8285 lt!1094104 0)))) e!2012010))))

(assert (= tb!159575 b!3225945))

(declare-fun m!3504445 () Bool)

(assert (=> b!3225945 m!3504445))

(declare-fun m!3504447 () Bool)

(assert (=> tb!159575 m!3504447))

(assert (=> d!885615 t!240997))

(declare-fun b_and!215883 () Bool)

(assert (= b_and!215861 (and (=> t!240997 result!202064) b_and!215883)))

(declare-fun tb!159577 () Bool)

(declare-fun t!240999 () Bool)

(assert (=> (and b!3225573 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (toChars!7219 (transformation!5260 (rule!7718 (apply!8285 lt!1094104 0))))) t!240999) tb!159577))

(declare-fun result!202066 () Bool)

(assert (= result!202066 result!202064))

(assert (=> d!885615 t!240999))

(declare-fun b_and!215885 () Bool)

(assert (= b_and!215857 (and (=> t!240999 result!202066) b_and!215885)))

(declare-fun t!241001 () Bool)

(declare-fun tb!159579 () Bool)

(assert (=> (and b!3225304 (= (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toChars!7219 (transformation!5260 (rule!7718 (apply!8285 lt!1094104 0))))) t!241001) tb!159579))

(declare-fun result!202068 () Bool)

(assert (= result!202068 result!202064))

(assert (=> d!885615 t!241001))

(declare-fun b_and!215887 () Bool)

(assert (= b_and!215851 (and (=> t!241001 result!202068) b_and!215887)))

(declare-fun tb!159581 () Bool)

(declare-fun t!241003 () Bool)

(assert (=> (and b!3225288 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toChars!7219 (transformation!5260 (rule!7718 (apply!8285 lt!1094104 0))))) t!241003) tb!159581))

(declare-fun result!202070 () Bool)

(assert (= result!202070 result!202064))

(assert (=> d!885615 t!241003))

(declare-fun b_and!215889 () Bool)

(assert (= b_and!215853 (and (=> t!241003 result!202070) b_and!215889)))

(declare-fun t!241005 () Bool)

(declare-fun tb!159583 () Bool)

(assert (=> (and b!3225293 (= (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toChars!7219 (transformation!5260 (rule!7718 (apply!8285 lt!1094104 0))))) t!241005) tb!159583))

(declare-fun result!202072 () Bool)

(assert (= result!202072 result!202064))

(assert (=> d!885615 t!241005))

(declare-fun b_and!215891 () Bool)

(assert (= b_and!215849 (and (=> t!241005 result!202072) b_and!215891)))

(declare-fun m!3504449 () Bool)

(assert (=> d!885615 m!3504449))

(declare-fun m!3504451 () Bool)

(assert (=> d!885615 m!3504451))

(assert (=> b!3225373 d!885615))

(declare-fun b!3225955 () Bool)

(declare-fun res!1313832 () Bool)

(declare-fun e!2012013 () Bool)

(assert (=> b!3225955 (=> (not res!1313832) (not e!2012013))))

(declare-fun height!1570 (Conc!10895) Int)

(declare-fun ++!8742 (Conc!10895 Conc!10895) Conc!10895)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3225955 (= res!1313832 (<= (height!1570 (++!8742 (c!542041 (BalanceConc!21405 Empty!10895)) (c!542041 (charsOf!3276 (apply!8285 lt!1094104 0))))) (+ (max!0 (height!1570 (c!542041 (BalanceConc!21405 Empty!10895))) (height!1570 (c!542041 (charsOf!3276 (apply!8285 lt!1094104 0))))) 1)))))

(declare-fun b!3225956 () Bool)

(declare-fun res!1313831 () Bool)

(assert (=> b!3225956 (=> (not res!1313831) (not e!2012013))))

(assert (=> b!3225956 (= res!1313831 (>= (height!1570 (++!8742 (c!542041 (BalanceConc!21405 Empty!10895)) (c!542041 (charsOf!3276 (apply!8285 lt!1094104 0))))) (max!0 (height!1570 (c!542041 (BalanceConc!21405 Empty!10895))) (height!1570 (c!542041 (charsOf!3276 (apply!8285 lt!1094104 0)))))))))

(declare-fun d!885617 () Bool)

(assert (=> d!885617 e!2012013))

(declare-fun res!1313833 () Bool)

(assert (=> d!885617 (=> (not res!1313833) (not e!2012013))))

(declare-fun appendAssocInst!741 (Conc!10895 Conc!10895) Bool)

(assert (=> d!885617 (= res!1313833 (appendAssocInst!741 (c!542041 (BalanceConc!21405 Empty!10895)) (c!542041 (charsOf!3276 (apply!8285 lt!1094104 0)))))))

(declare-fun lt!1094316 () BalanceConc!21404)

(assert (=> d!885617 (= lt!1094316 (BalanceConc!21405 (++!8742 (c!542041 (BalanceConc!21405 Empty!10895)) (c!542041 (charsOf!3276 (apply!8285 lt!1094104 0))))))))

(assert (=> d!885617 (= (++!8739 (BalanceConc!21405 Empty!10895) (charsOf!3276 (apply!8285 lt!1094104 0))) lt!1094316)))

(declare-fun b!3225954 () Bool)

(declare-fun res!1313830 () Bool)

(assert (=> b!3225954 (=> (not res!1313830) (not e!2012013))))

(assert (=> b!3225954 (= res!1313830 (isBalanced!3236 (++!8742 (c!542041 (BalanceConc!21405 Empty!10895)) (c!542041 (charsOf!3276 (apply!8285 lt!1094104 0))))))))

(declare-fun b!3225957 () Bool)

(assert (=> b!3225957 (= e!2012013 (= (list!12949 lt!1094316) (++!8740 (list!12949 (BalanceConc!21405 Empty!10895)) (list!12949 (charsOf!3276 (apply!8285 lt!1094104 0))))))))

(assert (= (and d!885617 res!1313833) b!3225954))

(assert (= (and b!3225954 res!1313830) b!3225955))

(assert (= (and b!3225955 res!1313832) b!3225956))

(assert (= (and b!3225956 res!1313831) b!3225957))

(declare-fun m!3504453 () Bool)

(assert (=> d!885617 m!3504453))

(declare-fun m!3504455 () Bool)

(assert (=> d!885617 m!3504455))

(declare-fun m!3504457 () Bool)

(assert (=> b!3225956 m!3504457))

(declare-fun m!3504459 () Bool)

(assert (=> b!3225956 m!3504459))

(declare-fun m!3504461 () Bool)

(assert (=> b!3225956 m!3504461))

(assert (=> b!3225956 m!3504455))

(assert (=> b!3225956 m!3504459))

(assert (=> b!3225956 m!3504455))

(declare-fun m!3504463 () Bool)

(assert (=> b!3225956 m!3504463))

(assert (=> b!3225956 m!3504457))

(assert (=> b!3225954 m!3504455))

(assert (=> b!3225954 m!3504455))

(declare-fun m!3504465 () Bool)

(assert (=> b!3225954 m!3504465))

(assert (=> b!3225955 m!3504457))

(assert (=> b!3225955 m!3504459))

(assert (=> b!3225955 m!3504461))

(assert (=> b!3225955 m!3504455))

(assert (=> b!3225955 m!3504459))

(assert (=> b!3225955 m!3504455))

(assert (=> b!3225955 m!3504463))

(assert (=> b!3225955 m!3504457))

(declare-fun m!3504467 () Bool)

(assert (=> b!3225957 m!3504467))

(assert (=> b!3225957 m!3503651))

(assert (=> b!3225957 m!3503663))

(declare-fun m!3504469 () Bool)

(assert (=> b!3225957 m!3504469))

(assert (=> b!3225957 m!3503651))

(assert (=> b!3225957 m!3504469))

(declare-fun m!3504471 () Bool)

(assert (=> b!3225957 m!3504471))

(assert (=> b!3225373 d!885617))

(declare-fun d!885619 () Bool)

(declare-fun lt!1094317 () Token!9886)

(assert (=> d!885619 (= lt!1094317 (apply!8286 (list!12952 lt!1094104) 0))))

(assert (=> d!885619 (= lt!1094317 (apply!8287 (c!542042 lt!1094104) 0))))

(declare-fun e!2012014 () Bool)

(assert (=> d!885619 e!2012014))

(declare-fun res!1313834 () Bool)

(assert (=> d!885619 (=> (not res!1313834) (not e!2012014))))

(assert (=> d!885619 (= res!1313834 (<= 0 0))))

(assert (=> d!885619 (= (apply!8285 lt!1094104 0) lt!1094317)))

(declare-fun b!3225958 () Bool)

(assert (=> b!3225958 (= e!2012014 (< 0 (size!27395 lt!1094104)))))

(assert (= (and d!885619 res!1313834) b!3225958))

(assert (=> d!885619 m!3503641))

(assert (=> d!885619 m!3503641))

(declare-fun m!3504473 () Bool)

(assert (=> d!885619 m!3504473))

(declare-fun m!3504475 () Bool)

(assert (=> d!885619 m!3504475))

(assert (=> b!3225958 m!3503649))

(assert (=> b!3225373 d!885619))

(declare-fun d!885621 () Bool)

(assert (=> d!885621 (= (list!12952 (singletonSeq!2356 separatorToken!241)) (list!12956 (c!542042 (singletonSeq!2356 separatorToken!241))))))

(declare-fun bs!542829 () Bool)

(assert (= bs!542829 d!885621))

(declare-fun m!3504477 () Bool)

(assert (=> bs!542829 m!3504477))

(assert (=> d!885343 d!885621))

(declare-fun d!885623 () Bool)

(assert (=> d!885623 (= (list!12952 (_1!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241))))) (list!12956 (c!542042 (_1!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 separatorToken!241)))))))))

(declare-fun bs!542830 () Bool)

(assert (= bs!542830 d!885623))

(declare-fun m!3504479 () Bool)

(assert (=> bs!542830 m!3504479))

(assert (=> d!885343 d!885623))

(assert (=> d!885343 d!885555))

(declare-fun d!885625 () Bool)

(declare-fun lt!1094318 () Int)

(assert (=> d!885625 (= lt!1094318 (size!27400 (list!12952 (_1!21012 lt!1094149))))))

(assert (=> d!885625 (= lt!1094318 (size!27401 (c!542042 (_1!21012 lt!1094149))))))

(assert (=> d!885625 (= (size!27395 (_1!21012 lt!1094149)) lt!1094318)))

(declare-fun bs!542831 () Bool)

(assert (= bs!542831 d!885625))

(assert (=> bs!542831 m!3504337))

(assert (=> bs!542831 m!3504337))

(declare-fun m!3504481 () Bool)

(assert (=> bs!542831 m!3504481))

(declare-fun m!3504483 () Bool)

(assert (=> bs!542831 m!3504483))

(assert (=> d!885343 d!885625))

(assert (=> d!885343 d!885553))

(assert (=> d!885343 d!885399))

(assert (=> d!885343 d!885473))

(declare-fun d!885627 () Bool)

(assert (=> d!885627 (= (inv!49201 (tag!5792 (rule!7718 (h!41753 (t!240916 tokens!494))))) (= (mod (str.len (value!170344 (tag!5792 (rule!7718 (h!41753 (t!240916 tokens!494)))))) 2) 0))))

(assert (=> b!3225572 d!885627))

(declare-fun d!885629 () Bool)

(declare-fun res!1313835 () Bool)

(declare-fun e!2012015 () Bool)

(assert (=> d!885629 (=> (not res!1313835) (not e!2012015))))

(assert (=> d!885629 (= res!1313835 (semiInverseModEq!2165 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (toValue!7360 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))))))

(assert (=> d!885629 (= (inv!49204 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) e!2012015)))

(declare-fun b!3225959 () Bool)

(assert (=> b!3225959 (= e!2012015 (equivClasses!2064 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (toValue!7360 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))))))

(assert (= (and d!885629 res!1313835) b!3225959))

(declare-fun m!3504485 () Bool)

(assert (=> d!885629 m!3504485))

(declare-fun m!3504487 () Bool)

(assert (=> b!3225959 m!3504487))

(assert (=> b!3225572 d!885629))

(declare-fun d!885631 () Bool)

(assert (=> d!885631 (= (list!12949 lt!1094153) (list!12953 (c!542041 lt!1094153)))))

(declare-fun bs!542832 () Bool)

(assert (= bs!542832 d!885631))

(declare-fun m!3504489 () Bool)

(assert (=> bs!542832 m!3504489))

(assert (=> d!885349 d!885631))

(declare-fun d!885633 () Bool)

(assert (=> d!885633 (= (list!12952 lt!1094148) (list!12956 (c!542042 lt!1094148)))))

(declare-fun bs!542833 () Bool)

(assert (= bs!542833 d!885633))

(declare-fun m!3504491 () Bool)

(assert (=> bs!542833 m!3504491))

(assert (=> d!885333 d!885633))

(declare-fun d!885635 () Bool)

(declare-fun e!2012018 () Bool)

(assert (=> d!885635 e!2012018))

(declare-fun res!1313838 () Bool)

(assert (=> d!885635 (=> (not res!1313838) (not e!2012018))))

(declare-fun lt!1094321 () BalanceConc!21406)

(assert (=> d!885635 (= res!1313838 (= (list!12952 lt!1094321) (Cons!36333 (h!41753 tokens!494) Nil!36333)))))

(declare-fun choose!18816 (Token!9886) BalanceConc!21406)

(assert (=> d!885635 (= lt!1094321 (choose!18816 (h!41753 tokens!494)))))

(assert (=> d!885635 (= (singleton!1004 (h!41753 tokens!494)) lt!1094321)))

(declare-fun b!3225962 () Bool)

(assert (=> b!3225962 (= e!2012018 (isBalanced!3235 (c!542042 lt!1094321)))))

(assert (= (and d!885635 res!1313838) b!3225962))

(declare-fun m!3504493 () Bool)

(assert (=> d!885635 m!3504493))

(declare-fun m!3504495 () Bool)

(assert (=> d!885635 m!3504495))

(declare-fun m!3504497 () Bool)

(assert (=> b!3225962 m!3504497))

(assert (=> d!885333 d!885635))

(declare-fun d!885637 () Bool)

(declare-fun res!1313839 () Bool)

(declare-fun e!2012019 () Bool)

(assert (=> d!885637 (=> (not res!1313839) (not e!2012019))))

(assert (=> d!885637 (= res!1313839 (not (isEmpty!20410 (originalCharacters!5974 (h!41753 (t!240916 tokens!494))))))))

(assert (=> d!885637 (= (inv!49205 (h!41753 (t!240916 tokens!494))) e!2012019)))

(declare-fun b!3225963 () Bool)

(declare-fun res!1313840 () Bool)

(assert (=> b!3225963 (=> (not res!1313840) (not e!2012019))))

(assert (=> b!3225963 (= res!1313840 (= (originalCharacters!5974 (h!41753 (t!240916 tokens!494))) (list!12949 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (value!170370 (h!41753 (t!240916 tokens!494)))))))))

(declare-fun b!3225964 () Bool)

(assert (=> b!3225964 (= e!2012019 (= (size!27391 (h!41753 (t!240916 tokens!494))) (size!27394 (originalCharacters!5974 (h!41753 (t!240916 tokens!494))))))))

(assert (= (and d!885637 res!1313839) b!3225963))

(assert (= (and b!3225963 res!1313840) b!3225964))

(declare-fun b_lambda!88749 () Bool)

(assert (=> (not b_lambda!88749) (not b!3225963)))

(declare-fun t!241008 () Bool)

(declare-fun tb!159585 () Bool)

(assert (=> (and b!3225293 (= (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))) t!241008) tb!159585))

(declare-fun b!3225965 () Bool)

(declare-fun e!2012020 () Bool)

(declare-fun tp!1016342 () Bool)

(assert (=> b!3225965 (= e!2012020 (and (inv!49208 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (value!170370 (h!41753 (t!240916 tokens!494)))))) tp!1016342))))

(declare-fun result!202074 () Bool)

(assert (=> tb!159585 (= result!202074 (and (inv!49209 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (value!170370 (h!41753 (t!240916 tokens!494))))) e!2012020))))

(assert (= tb!159585 b!3225965))

(declare-fun m!3504499 () Bool)

(assert (=> b!3225965 m!3504499))

(declare-fun m!3504501 () Bool)

(assert (=> tb!159585 m!3504501))

(assert (=> b!3225963 t!241008))

(declare-fun b_and!215893 () Bool)

(assert (= b_and!215891 (and (=> t!241008 result!202074) b_and!215893)))

(declare-fun t!241010 () Bool)

(declare-fun tb!159587 () Bool)

(assert (=> (and b!3225288 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))) t!241010) tb!159587))

(declare-fun result!202076 () Bool)

(assert (= result!202076 result!202074))

(assert (=> b!3225963 t!241010))

(declare-fun b_and!215895 () Bool)

(assert (= b_and!215889 (and (=> t!241010 result!202076) b_and!215895)))

(declare-fun tb!159589 () Bool)

(declare-fun t!241012 () Bool)

(assert (=> (and b!3225304 (= (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))) t!241012) tb!159589))

(declare-fun result!202078 () Bool)

(assert (= result!202078 result!202074))

(assert (=> b!3225963 t!241012))

(declare-fun b_and!215897 () Bool)

(assert (= b_and!215887 (and (=> t!241012 result!202078) b_and!215897)))

(declare-fun t!241014 () Bool)

(declare-fun tb!159591 () Bool)

(assert (=> (and b!3225573 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))) t!241014) tb!159591))

(declare-fun result!202080 () Bool)

(assert (= result!202080 result!202074))

(assert (=> b!3225963 t!241014))

(declare-fun b_and!215899 () Bool)

(assert (= b_and!215885 (and (=> t!241014 result!202080) b_and!215899)))

(declare-fun tb!159593 () Bool)

(declare-fun t!241016 () Bool)

(assert (=> (and b!3225603 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135)))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))) t!241016) tb!159593))

(declare-fun result!202082 () Bool)

(assert (= result!202082 result!202074))

(assert (=> b!3225963 t!241016))

(declare-fun b_and!215901 () Bool)

(assert (= b_and!215883 (and (=> t!241016 result!202082) b_and!215901)))

(declare-fun m!3504503 () Bool)

(assert (=> d!885637 m!3504503))

(declare-fun m!3504505 () Bool)

(assert (=> b!3225963 m!3504505))

(assert (=> b!3225963 m!3504505))

(declare-fun m!3504507 () Bool)

(assert (=> b!3225963 m!3504507))

(declare-fun m!3504509 () Bool)

(assert (=> b!3225964 m!3504509))

(assert (=> b!3225570 d!885637))

(declare-fun d!885639 () Bool)

(declare-fun lt!1094332 () List!36455)

(assert (=> d!885639 (= lt!1094332 (++!8740 (list!12949 (BalanceConc!21405 Empty!10895)) (printList!1399 thiss!18206 (dropList!1088 lt!1094104 0))))))

(declare-fun e!2012023 () List!36455)

(assert (=> d!885639 (= lt!1094332 e!2012023)))

(declare-fun c!542173 () Bool)

(assert (=> d!885639 (= c!542173 ((_ is Cons!36333) (dropList!1088 lt!1094104 0)))))

(assert (=> d!885639 (= (printListTailRec!571 thiss!18206 (dropList!1088 lt!1094104 0) (list!12949 (BalanceConc!21405 Empty!10895))) lt!1094332)))

(declare-fun b!3225970 () Bool)

(assert (=> b!3225970 (= e!2012023 (printListTailRec!571 thiss!18206 (t!240916 (dropList!1088 lt!1094104 0)) (++!8740 (list!12949 (BalanceConc!21405 Empty!10895)) (list!12949 (charsOf!3276 (h!41753 (dropList!1088 lt!1094104 0)))))))))

(declare-fun lt!1094334 () List!36455)

(assert (=> b!3225970 (= lt!1094334 (list!12949 (charsOf!3276 (h!41753 (dropList!1088 lt!1094104 0)))))))

(declare-fun lt!1094333 () List!36455)

(assert (=> b!3225970 (= lt!1094333 (printList!1399 thiss!18206 (t!240916 (dropList!1088 lt!1094104 0))))))

(declare-fun lt!1094335 () Unit!50924)

(declare-fun lemmaConcatAssociativity!1783 (List!36455 List!36455 List!36455) Unit!50924)

(assert (=> b!3225970 (= lt!1094335 (lemmaConcatAssociativity!1783 (list!12949 (BalanceConc!21405 Empty!10895)) lt!1094334 lt!1094333))))

(assert (=> b!3225970 (= (++!8740 (++!8740 (list!12949 (BalanceConc!21405 Empty!10895)) lt!1094334) lt!1094333) (++!8740 (list!12949 (BalanceConc!21405 Empty!10895)) (++!8740 lt!1094334 lt!1094333)))))

(declare-fun lt!1094336 () Unit!50924)

(assert (=> b!3225970 (= lt!1094336 lt!1094335)))

(declare-fun b!3225971 () Bool)

(assert (=> b!3225971 (= e!2012023 (list!12949 (BalanceConc!21405 Empty!10895)))))

(assert (= (and d!885639 c!542173) b!3225970))

(assert (= (and d!885639 (not c!542173)) b!3225971))

(assert (=> d!885639 m!3503645))

(declare-fun m!3504511 () Bool)

(assert (=> d!885639 m!3504511))

(assert (=> d!885639 m!3503651))

(assert (=> d!885639 m!3504511))

(declare-fun m!3504513 () Bool)

(assert (=> d!885639 m!3504513))

(declare-fun m!3504515 () Bool)

(assert (=> b!3225970 m!3504515))

(declare-fun m!3504517 () Bool)

(assert (=> b!3225970 m!3504517))

(declare-fun m!3504519 () Bool)

(assert (=> b!3225970 m!3504519))

(declare-fun m!3504521 () Bool)

(assert (=> b!3225970 m!3504521))

(assert (=> b!3225970 m!3504517))

(declare-fun m!3504523 () Bool)

(assert (=> b!3225970 m!3504523))

(assert (=> b!3225970 m!3503651))

(declare-fun m!3504525 () Bool)

(assert (=> b!3225970 m!3504525))

(assert (=> b!3225970 m!3503651))

(assert (=> b!3225970 m!3504523))

(assert (=> b!3225970 m!3504519))

(declare-fun m!3504527 () Bool)

(assert (=> b!3225970 m!3504527))

(assert (=> b!3225970 m!3503651))

(assert (=> b!3225970 m!3504515))

(declare-fun m!3504529 () Bool)

(assert (=> b!3225970 m!3504529))

(assert (=> b!3225970 m!3503651))

(declare-fun m!3504531 () Bool)

(assert (=> b!3225970 m!3504531))

(assert (=> b!3225970 m!3504525))

(declare-fun m!3504533 () Bool)

(assert (=> b!3225970 m!3504533))

(assert (=> d!885331 d!885639))

(declare-fun d!885641 () Bool)

(assert (=> d!885641 (= (dropList!1088 lt!1094104 0) (drop!1871 (list!12956 (c!542042 lt!1094104)) 0))))

(declare-fun bs!542834 () Bool)

(assert (= bs!542834 d!885641))

(assert (=> bs!542834 m!3504437))

(assert (=> bs!542834 m!3504437))

(declare-fun m!3504535 () Bool)

(assert (=> bs!542834 m!3504535))

(assert (=> d!885331 d!885641))

(declare-fun d!885643 () Bool)

(assert (=> d!885643 (= (list!12949 (BalanceConc!21405 Empty!10895)) (list!12953 (c!542041 (BalanceConc!21405 Empty!10895))))))

(declare-fun bs!542835 () Bool)

(assert (= bs!542835 d!885643))

(declare-fun m!3504537 () Bool)

(assert (=> bs!542835 m!3504537))

(assert (=> d!885331 d!885643))

(declare-fun d!885645 () Bool)

(assert (=> d!885645 (= (list!12949 lt!1094140) (list!12953 (c!542041 lt!1094140)))))

(declare-fun bs!542836 () Bool)

(assert (= bs!542836 d!885645))

(declare-fun m!3504539 () Bool)

(assert (=> bs!542836 m!3504539))

(assert (=> d!885331 d!885645))

(assert (=> d!885331 d!885591))

(declare-fun d!885647 () Bool)

(declare-fun res!1313845 () Bool)

(declare-fun e!2012028 () Bool)

(assert (=> d!885647 (=> res!1313845 e!2012028)))

(assert (=> d!885647 (= res!1313845 (not ((_ is Cons!36332) (t!240915 rules!2135))))))

(assert (=> d!885647 (= (sepAndNonSepRulesDisjointChars!1454 rules!2135 (t!240915 rules!2135)) e!2012028)))

(declare-fun b!3225976 () Bool)

(declare-fun e!2012029 () Bool)

(assert (=> b!3225976 (= e!2012028 e!2012029)))

(declare-fun res!1313846 () Bool)

(assert (=> b!3225976 (=> (not res!1313846) (not e!2012029))))

(assert (=> b!3225976 (= res!1313846 (ruleDisjointCharsFromAllFromOtherType!601 (h!41752 (t!240915 rules!2135)) rules!2135))))

(declare-fun b!3225977 () Bool)

(assert (=> b!3225977 (= e!2012029 (sepAndNonSepRulesDisjointChars!1454 rules!2135 (t!240915 (t!240915 rules!2135))))))

(assert (= (and d!885647 (not res!1313845)) b!3225976))

(assert (= (and b!3225976 res!1313846) b!3225977))

(declare-fun m!3504541 () Bool)

(assert (=> b!3225976 m!3504541))

(declare-fun m!3504543 () Bool)

(assert (=> b!3225977 m!3504543))

(assert (=> b!3225389 d!885647))

(declare-fun d!885649 () Bool)

(declare-fun lt!1094339 () Bool)

(assert (=> d!885649 (= lt!1094339 (isEmpty!20410 (list!12949 (_2!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494))))))))))

(assert (=> d!885649 (= lt!1094339 (isEmpty!20412 (c!542041 (_2!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494))))))))))

(assert (=> d!885649 (= (isEmpty!20411 (_2!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494)))))) lt!1094339)))

(declare-fun bs!542837 () Bool)

(assert (= bs!542837 d!885649))

(declare-fun m!3504545 () Bool)

(assert (=> bs!542837 m!3504545))

(assert (=> bs!542837 m!3504545))

(declare-fun m!3504547 () Bool)

(assert (=> bs!542837 m!3504547))

(declare-fun m!3504549 () Bool)

(assert (=> bs!542837 m!3504549))

(assert (=> b!3225364 d!885649))

(declare-fun b!3225978 () Bool)

(declare-fun e!2012032 () Bool)

(declare-fun e!2012031 () Bool)

(assert (=> b!3225978 (= e!2012032 e!2012031)))

(declare-fun res!1313848 () Bool)

(declare-fun lt!1094340 () tuple2!35756)

(assert (=> b!3225978 (= res!1313848 (< (size!27396 (_2!21012 lt!1094340)) (size!27396 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494))))))))

(assert (=> b!3225978 (=> (not res!1313848) (not e!2012031))))

(declare-fun d!885651 () Bool)

(declare-fun e!2012030 () Bool)

(assert (=> d!885651 e!2012030))

(declare-fun res!1313847 () Bool)

(assert (=> d!885651 (=> (not res!1313847) (not e!2012030))))

(assert (=> d!885651 (= res!1313847 e!2012032)))

(declare-fun c!542174 () Bool)

(assert (=> d!885651 (= c!542174 (> (size!27395 (_1!21012 lt!1094340)) 0))))

(assert (=> d!885651 (= lt!1094340 (lexTailRecV2!940 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494))) (BalanceConc!21405 Empty!10895) (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494))) (BalanceConc!21407 Empty!10896)))))

(assert (=> d!885651 (= (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494)))) lt!1094340)))

(declare-fun b!3225979 () Bool)

(assert (=> b!3225979 (= e!2012031 (not (isEmpty!20414 (_1!21012 lt!1094340))))))

(declare-fun b!3225980 () Bool)

(assert (=> b!3225980 (= e!2012030 (= (list!12949 (_2!21012 lt!1094340)) (_2!21013 (lexList!1328 thiss!18206 rules!2135 (list!12949 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494))))))))))

(declare-fun b!3225981 () Bool)

(declare-fun res!1313849 () Bool)

(assert (=> b!3225981 (=> (not res!1313849) (not e!2012030))))

(assert (=> b!3225981 (= res!1313849 (= (list!12952 (_1!21012 lt!1094340)) (_1!21013 (lexList!1328 thiss!18206 rules!2135 (list!12949 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494))))))))))

(declare-fun b!3225982 () Bool)

(assert (=> b!3225982 (= e!2012032 (= (_2!21012 lt!1094340) (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494)))))))

(assert (= (and d!885651 c!542174) b!3225978))

(assert (= (and d!885651 (not c!542174)) b!3225982))

(assert (= (and b!3225978 res!1313848) b!3225979))

(assert (= (and d!885651 res!1313847) b!3225981))

(assert (= (and b!3225981 res!1313849) b!3225980))

(declare-fun m!3504551 () Bool)

(assert (=> b!3225981 m!3504551))

(assert (=> b!3225981 m!3503623))

(declare-fun m!3504553 () Bool)

(assert (=> b!3225981 m!3504553))

(assert (=> b!3225981 m!3504553))

(declare-fun m!3504555 () Bool)

(assert (=> b!3225981 m!3504555))

(declare-fun m!3504557 () Bool)

(assert (=> b!3225978 m!3504557))

(assert (=> b!3225978 m!3503623))

(declare-fun m!3504559 () Bool)

(assert (=> b!3225978 m!3504559))

(declare-fun m!3504561 () Bool)

(assert (=> b!3225980 m!3504561))

(assert (=> b!3225980 m!3503623))

(assert (=> b!3225980 m!3504553))

(assert (=> b!3225980 m!3504553))

(assert (=> b!3225980 m!3504555))

(declare-fun m!3504563 () Bool)

(assert (=> b!3225979 m!3504563))

(declare-fun m!3504565 () Bool)

(assert (=> d!885651 m!3504565))

(assert (=> d!885651 m!3503623))

(assert (=> d!885651 m!3503623))

(declare-fun m!3504567 () Bool)

(assert (=> d!885651 m!3504567))

(assert (=> b!3225364 d!885651))

(declare-fun d!885653 () Bool)

(declare-fun lt!1094342 () BalanceConc!21404)

(assert (=> d!885653 (= (list!12949 lt!1094342) (printList!1399 thiss!18206 (list!12952 (singletonSeq!2356 (h!41753 tokens!494)))))))

(assert (=> d!885653 (= lt!1094342 (printTailRec!1346 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494)) 0 (BalanceConc!21405 Empty!10895)))))

(assert (=> d!885653 (= (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494))) lt!1094342)))

(declare-fun bs!542838 () Bool)

(assert (= bs!542838 d!885653))

(declare-fun m!3504569 () Bool)

(assert (=> bs!542838 m!3504569))

(assert (=> bs!542838 m!3503527))

(assert (=> bs!542838 m!3503627))

(assert (=> bs!542838 m!3503627))

(declare-fun m!3504571 () Bool)

(assert (=> bs!542838 m!3504571))

(assert (=> bs!542838 m!3503527))

(declare-fun m!3504573 () Bool)

(assert (=> bs!542838 m!3504573))

(assert (=> b!3225364 d!885653))

(assert (=> b!3225364 d!885333))

(declare-fun d!885655 () Bool)

(assert (=> d!885655 (= (inv!49201 (tag!5792 (h!41752 (t!240915 rules!2135)))) (= (mod (str.len (value!170344 (tag!5792 (h!41752 (t!240915 rules!2135))))) 2) 0))))

(assert (=> b!3225602 d!885655))

(declare-fun d!885657 () Bool)

(declare-fun res!1313852 () Bool)

(declare-fun e!2012038 () Bool)

(assert (=> d!885657 (=> (not res!1313852) (not e!2012038))))

(assert (=> d!885657 (= res!1313852 (semiInverseModEq!2165 (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135)))) (toValue!7360 (transformation!5260 (h!41752 (t!240915 rules!2135))))))))

(assert (=> d!885657 (= (inv!49204 (transformation!5260 (h!41752 (t!240915 rules!2135)))) e!2012038)))

(declare-fun b!3225988 () Bool)

(assert (=> b!3225988 (= e!2012038 (equivClasses!2064 (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135)))) (toValue!7360 (transformation!5260 (h!41752 (t!240915 rules!2135))))))))

(assert (= (and d!885657 res!1313852) b!3225988))

(declare-fun m!3504575 () Bool)

(assert (=> d!885657 m!3504575))

(declare-fun m!3504577 () Bool)

(assert (=> b!3225988 m!3504577))

(assert (=> b!3225602 d!885657))

(declare-fun d!885659 () Bool)

(declare-fun lt!1094343 () Token!9886)

(assert (=> d!885659 (= lt!1094343 (apply!8286 (list!12952 (_1!21012 lt!1094120)) 0))))

(assert (=> d!885659 (= lt!1094343 (apply!8287 (c!542042 (_1!21012 lt!1094120)) 0))))

(declare-fun e!2012039 () Bool)

(assert (=> d!885659 e!2012039))

(declare-fun res!1313853 () Bool)

(assert (=> d!885659 (=> (not res!1313853) (not e!2012039))))

(assert (=> d!885659 (= res!1313853 (<= 0 0))))

(assert (=> d!885659 (= (apply!8285 (_1!21012 lt!1094120) 0) lt!1094343)))

(declare-fun b!3225989 () Bool)

(assert (=> b!3225989 (= e!2012039 (< 0 (size!27395 (_1!21012 lt!1094120))))))

(assert (= (and d!885659 res!1313853) b!3225989))

(declare-fun m!3504581 () Bool)

(assert (=> d!885659 m!3504581))

(assert (=> d!885659 m!3504581))

(declare-fun m!3504583 () Bool)

(assert (=> d!885659 m!3504583))

(declare-fun m!3504585 () Bool)

(assert (=> d!885659 m!3504585))

(assert (=> b!3225989 m!3503629))

(assert (=> b!3225362 d!885659))

(declare-fun d!885661 () Bool)

(declare-fun c!542179 () Bool)

(assert (=> d!885661 (= c!542179 ((_ is Node!10895) (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241)))))))

(declare-fun e!2012049 () Bool)

(assert (=> d!885661 (= (inv!49208 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241)))) e!2012049)))

(declare-fun b!3226003 () Bool)

(declare-fun inv!49212 (Conc!10895) Bool)

(assert (=> b!3226003 (= e!2012049 (inv!49212 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241)))))))

(declare-fun b!3226004 () Bool)

(declare-fun e!2012050 () Bool)

(assert (=> b!3226004 (= e!2012049 e!2012050)))

(declare-fun res!1313859 () Bool)

(assert (=> b!3226004 (= res!1313859 (not ((_ is Leaf!17136) (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241))))))))

(assert (=> b!3226004 (=> res!1313859 e!2012050)))

(declare-fun b!3226005 () Bool)

(declare-fun inv!49213 (Conc!10895) Bool)

(assert (=> b!3226005 (= e!2012050 (inv!49213 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241)))))))

(assert (= (and d!885661 c!542179) b!3226003))

(assert (= (and d!885661 (not c!542179)) b!3226004))

(assert (= (and b!3226004 (not res!1313859)) b!3226005))

(declare-fun m!3504601 () Bool)

(assert (=> b!3226003 m!3504601))

(declare-fun m!3504603 () Bool)

(assert (=> b!3226005 m!3504603))

(assert (=> b!3225550 d!885661))

(declare-fun d!885671 () Bool)

(assert (=> d!885671 (= (inv!49209 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494)))) (isBalanced!3236 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494))))))))

(declare-fun bs!542841 () Bool)

(assert (= bs!542841 d!885671))

(declare-fun m!3504605 () Bool)

(assert (=> bs!542841 m!3504605))

(assert (=> tb!159521 d!885671))

(declare-fun b!3226029 () Bool)

(declare-fun e!2012063 () List!36455)

(assert (=> b!3226029 (= e!2012063 (printList!1399 thiss!18206 (t!240916 (Cons!36333 (h!41753 tokens!494) Nil!36333))))))

(declare-fun b!3226030 () Bool)

(assert (=> b!3226030 (= e!2012063 (Cons!36331 (h!41751 (list!12949 (charsOf!3276 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))))) (++!8740 (t!240914 (list!12949 (charsOf!3276 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))))) (printList!1399 thiss!18206 (t!240916 (Cons!36333 (h!41753 tokens!494) Nil!36333))))))))

(declare-fun b!3226031 () Bool)

(declare-fun res!1313871 () Bool)

(declare-fun e!2012064 () Bool)

(assert (=> b!3226031 (=> (not res!1313871) (not e!2012064))))

(declare-fun lt!1094351 () List!36455)

(assert (=> b!3226031 (= res!1313871 (= (size!27394 lt!1094351) (+ (size!27394 (list!12949 (charsOf!3276 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))))) (size!27394 (printList!1399 thiss!18206 (t!240916 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))))))

(declare-fun d!885673 () Bool)

(assert (=> d!885673 e!2012064))

(declare-fun res!1313870 () Bool)

(assert (=> d!885673 (=> (not res!1313870) (not e!2012064))))

(declare-fun content!4911 (List!36455) (InoxSet C!20224))

(assert (=> d!885673 (= res!1313870 (= (content!4911 lt!1094351) ((_ map or) (content!4911 (list!12949 (charsOf!3276 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))))) (content!4911 (printList!1399 thiss!18206 (t!240916 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))))))

(assert (=> d!885673 (= lt!1094351 e!2012063)))

(declare-fun c!542186 () Bool)

(assert (=> d!885673 (= c!542186 ((_ is Nil!36331) (list!12949 (charsOf!3276 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))))))))

(assert (=> d!885673 (= (++!8740 (list!12949 (charsOf!3276 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))) (printList!1399 thiss!18206 (t!240916 (Cons!36333 (h!41753 tokens!494) Nil!36333)))) lt!1094351)))

(declare-fun b!3226032 () Bool)

(assert (=> b!3226032 (= e!2012064 (or (not (= (printList!1399 thiss!18206 (t!240916 (Cons!36333 (h!41753 tokens!494) Nil!36333))) Nil!36331)) (= lt!1094351 (list!12949 (charsOf!3276 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))))))

(assert (= (and d!885673 c!542186) b!3226029))

(assert (= (and d!885673 (not c!542186)) b!3226030))

(assert (= (and d!885673 res!1313870) b!3226031))

(assert (= (and b!3226031 res!1313871) b!3226032))

(assert (=> b!3226030 m!3503689))

(declare-fun m!3504639 () Bool)

(assert (=> b!3226030 m!3504639))

(declare-fun m!3504641 () Bool)

(assert (=> b!3226031 m!3504641))

(assert (=> b!3226031 m!3503687))

(declare-fun m!3504643 () Bool)

(assert (=> b!3226031 m!3504643))

(assert (=> b!3226031 m!3503689))

(declare-fun m!3504645 () Bool)

(assert (=> b!3226031 m!3504645))

(declare-fun m!3504647 () Bool)

(assert (=> d!885673 m!3504647))

(assert (=> d!885673 m!3503687))

(declare-fun m!3504649 () Bool)

(assert (=> d!885673 m!3504649))

(assert (=> d!885673 m!3503689))

(declare-fun m!3504651 () Bool)

(assert (=> d!885673 m!3504651))

(assert (=> b!3225381 d!885673))

(declare-fun d!885683 () Bool)

(assert (=> d!885683 (= (list!12949 (charsOf!3276 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))) (list!12953 (c!542041 (charsOf!3276 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))))))))

(declare-fun bs!542843 () Bool)

(assert (= bs!542843 d!885683))

(declare-fun m!3504653 () Bool)

(assert (=> bs!542843 m!3504653))

(assert (=> b!3225381 d!885683))

(declare-fun d!885685 () Bool)

(declare-fun lt!1094352 () BalanceConc!21404)

(assert (=> d!885685 (= (list!12949 lt!1094352) (originalCharacters!5974 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))))))

(assert (=> d!885685 (= lt!1094352 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))))) (value!170370 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))))

(assert (=> d!885685 (= (charsOf!3276 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))) lt!1094352)))

(declare-fun b_lambda!88753 () Bool)

(assert (=> (not b_lambda!88753) (not d!885685)))

(declare-fun t!241030 () Bool)

(declare-fun tb!159605 () Bool)

(assert (=> (and b!3225573 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))) t!241030) tb!159605))

(declare-fun b!3226033 () Bool)

(declare-fun e!2012065 () Bool)

(declare-fun tp!1016344 () Bool)

(assert (=> b!3226033 (= e!2012065 (and (inv!49208 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))))) (value!170370 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))) tp!1016344))))

(declare-fun result!202094 () Bool)

(assert (=> tb!159605 (= result!202094 (and (inv!49209 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))))) (value!170370 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333))))) e!2012065))))

(assert (= tb!159605 b!3226033))

(declare-fun m!3504655 () Bool)

(assert (=> b!3226033 m!3504655))

(declare-fun m!3504657 () Bool)

(assert (=> tb!159605 m!3504657))

(assert (=> d!885685 t!241030))

(declare-fun b_and!215913 () Bool)

(assert (= b_and!215899 (and (=> t!241030 result!202094) b_and!215913)))

(declare-fun t!241032 () Bool)

(declare-fun tb!159607 () Bool)

(assert (=> (and b!3225603 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135)))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))) t!241032) tb!159607))

(declare-fun result!202096 () Bool)

(assert (= result!202096 result!202094))

(assert (=> d!885685 t!241032))

(declare-fun b_and!215915 () Bool)

(assert (= b_and!215901 (and (=> t!241032 result!202096) b_and!215915)))

(declare-fun t!241034 () Bool)

(declare-fun tb!159609 () Bool)

(assert (=> (and b!3225304 (= (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))) t!241034) tb!159609))

(declare-fun result!202098 () Bool)

(assert (= result!202098 result!202094))

(assert (=> d!885685 t!241034))

(declare-fun b_and!215917 () Bool)

(assert (= b_and!215897 (and (=> t!241034 result!202098) b_and!215917)))

(declare-fun t!241036 () Bool)

(declare-fun tb!159611 () Bool)

(assert (=> (and b!3225293 (= (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))) t!241036) tb!159611))

(declare-fun result!202100 () Bool)

(assert (= result!202100 result!202094))

(assert (=> d!885685 t!241036))

(declare-fun b_and!215919 () Bool)

(assert (= b_and!215893 (and (=> t!241036 result!202100) b_and!215919)))

(declare-fun t!241038 () Bool)

(declare-fun tb!159613 () Bool)

(assert (=> (and b!3225288 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))) t!241038) tb!159613))

(declare-fun result!202102 () Bool)

(assert (= result!202102 result!202094))

(assert (=> d!885685 t!241038))

(declare-fun b_and!215921 () Bool)

(assert (= b_and!215895 (and (=> t!241038 result!202102) b_and!215921)))

(declare-fun m!3504659 () Bool)

(assert (=> d!885685 m!3504659))

(declare-fun m!3504661 () Bool)

(assert (=> d!885685 m!3504661))

(assert (=> b!3225381 d!885685))

(declare-fun d!885687 () Bool)

(declare-fun c!542187 () Bool)

(assert (=> d!885687 (= c!542187 ((_ is Cons!36333) (t!240916 (Cons!36333 (h!41753 tokens!494) Nil!36333))))))

(declare-fun e!2012066 () List!36455)

(assert (=> d!885687 (= (printList!1399 thiss!18206 (t!240916 (Cons!36333 (h!41753 tokens!494) Nil!36333))) e!2012066)))

(declare-fun b!3226034 () Bool)

(assert (=> b!3226034 (= e!2012066 (++!8740 (list!12949 (charsOf!3276 (h!41753 (t!240916 (Cons!36333 (h!41753 tokens!494) Nil!36333))))) (printList!1399 thiss!18206 (t!240916 (t!240916 (Cons!36333 (h!41753 tokens!494) Nil!36333))))))))

(declare-fun b!3226035 () Bool)

(assert (=> b!3226035 (= e!2012066 Nil!36331)))

(assert (= (and d!885687 c!542187) b!3226034))

(assert (= (and d!885687 (not c!542187)) b!3226035))

(declare-fun m!3504665 () Bool)

(assert (=> b!3226034 m!3504665))

(assert (=> b!3226034 m!3504665))

(declare-fun m!3504667 () Bool)

(assert (=> b!3226034 m!3504667))

(declare-fun m!3504669 () Bool)

(assert (=> b!3226034 m!3504669))

(assert (=> b!3226034 m!3504667))

(assert (=> b!3226034 m!3504669))

(declare-fun m!3504671 () Bool)

(assert (=> b!3226034 m!3504671))

(assert (=> b!3225381 d!885687))

(declare-fun d!885691 () Bool)

(declare-fun charsToInt!0 (List!36454) (_ BitVec 32))

(assert (=> d!885691 (= (inv!16 (value!170370 (h!41753 tokens!494))) (= (charsToInt!0 (text!38877 (value!170370 (h!41753 tokens!494)))) (value!170362 (value!170370 (h!41753 tokens!494)))))))

(declare-fun bs!542845 () Bool)

(assert (= bs!542845 d!885691))

(declare-fun m!3504673 () Bool)

(assert (=> bs!542845 m!3504673))

(assert (=> b!3225554 d!885691))

(declare-fun b!3226068 () Bool)

(declare-fun res!1313906 () Bool)

(declare-fun e!2012080 () Bool)

(assert (=> b!3226068 (=> (not res!1313906) (not e!2012080))))

(assert (=> b!3226068 (= res!1313906 (isBalanced!3235 (right!28618 (c!542042 lt!1094148))))))

(declare-fun b!3226069 () Bool)

(declare-fun res!1313909 () Bool)

(assert (=> b!3226069 (=> (not res!1313909) (not e!2012080))))

(declare-fun isEmpty!20416 (Conc!10896) Bool)

(assert (=> b!3226069 (= res!1313909 (not (isEmpty!20416 (left!28288 (c!542042 lt!1094148)))))))

(declare-fun b!3226070 () Bool)

(assert (=> b!3226070 (= e!2012080 (not (isEmpty!20416 (right!28618 (c!542042 lt!1094148)))))))

(declare-fun d!885693 () Bool)

(declare-fun res!1313907 () Bool)

(declare-fun e!2012079 () Bool)

(assert (=> d!885693 (=> res!1313907 e!2012079)))

(assert (=> d!885693 (= res!1313907 (not ((_ is Node!10896) (c!542042 lt!1094148))))))

(assert (=> d!885693 (= (isBalanced!3235 (c!542042 lt!1094148)) e!2012079)))

(declare-fun b!3226071 () Bool)

(declare-fun res!1313908 () Bool)

(assert (=> b!3226071 (=> (not res!1313908) (not e!2012080))))

(declare-fun height!1571 (Conc!10896) Int)

(assert (=> b!3226071 (= res!1313908 (<= (- (height!1571 (left!28288 (c!542042 lt!1094148))) (height!1571 (right!28618 (c!542042 lt!1094148)))) 1))))

(declare-fun b!3226072 () Bool)

(declare-fun res!1313904 () Bool)

(assert (=> b!3226072 (=> (not res!1313904) (not e!2012080))))

(assert (=> b!3226072 (= res!1313904 (isBalanced!3235 (left!28288 (c!542042 lt!1094148))))))

(declare-fun b!3226073 () Bool)

(assert (=> b!3226073 (= e!2012079 e!2012080)))

(declare-fun res!1313905 () Bool)

(assert (=> b!3226073 (=> (not res!1313905) (not e!2012080))))

(assert (=> b!3226073 (= res!1313905 (<= (- 1) (- (height!1571 (left!28288 (c!542042 lt!1094148))) (height!1571 (right!28618 (c!542042 lt!1094148))))))))

(assert (= (and d!885693 (not res!1313907)) b!3226073))

(assert (= (and b!3226073 res!1313905) b!3226071))

(assert (= (and b!3226071 res!1313908) b!3226072))

(assert (= (and b!3226072 res!1313904) b!3226068))

(assert (= (and b!3226068 res!1313906) b!3226069))

(assert (= (and b!3226069 res!1313909) b!3226070))

(declare-fun m!3504693 () Bool)

(assert (=> b!3226072 m!3504693))

(declare-fun m!3504695 () Bool)

(assert (=> b!3226073 m!3504695))

(declare-fun m!3504697 () Bool)

(assert (=> b!3226073 m!3504697))

(declare-fun m!3504699 () Bool)

(assert (=> b!3226068 m!3504699))

(declare-fun m!3504701 () Bool)

(assert (=> b!3226070 m!3504701))

(declare-fun m!3504703 () Bool)

(assert (=> b!3226069 m!3504703))

(assert (=> b!3226071 m!3504695))

(assert (=> b!3226071 m!3504697))

(assert (=> b!3225376 d!885693))

(declare-fun d!885701 () Bool)

(assert (=> d!885701 (= (inv!16 (value!170370 separatorToken!241)) (= (charsToInt!0 (text!38877 (value!170370 separatorToken!241))) (value!170362 (value!170370 separatorToken!241))))))

(declare-fun bs!542849 () Bool)

(assert (= bs!542849 d!885701))

(declare-fun m!3504705 () Bool)

(assert (=> bs!542849 m!3504705))

(assert (=> b!3225546 d!885701))

(declare-fun d!885703 () Bool)

(declare-fun c!542188 () Bool)

(assert (=> d!885703 (= c!542188 ((_ is Node!10895) (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494))))))))

(declare-fun e!2012081 () Bool)

(assert (=> d!885703 (= (inv!49208 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494))))) e!2012081)))

(declare-fun b!3226074 () Bool)

(assert (=> b!3226074 (= e!2012081 (inv!49212 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494))))))))

(declare-fun b!3226075 () Bool)

(declare-fun e!2012082 () Bool)

(assert (=> b!3226075 (= e!2012081 e!2012082)))

(declare-fun res!1313910 () Bool)

(assert (=> b!3226075 (= res!1313910 (not ((_ is Leaf!17136) (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494)))))))))

(assert (=> b!3226075 (=> res!1313910 e!2012082)))

(declare-fun b!3226076 () Bool)

(assert (=> b!3226076 (= e!2012082 (inv!49213 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494))))))))

(assert (= (and d!885703 c!542188) b!3226074))

(assert (= (and d!885703 (not c!542188)) b!3226075))

(assert (= (and b!3226075 (not res!1313910)) b!3226076))

(declare-fun m!3504709 () Bool)

(assert (=> b!3226074 m!3504709))

(declare-fun m!3504711 () Bool)

(assert (=> b!3226076 m!3504711))

(assert (=> b!3225322 d!885703))

(declare-fun d!885709 () Bool)

(declare-fun lt!1094353 () Int)

(assert (=> d!885709 (>= lt!1094353 0)))

(declare-fun e!2012084 () Int)

(assert (=> d!885709 (= lt!1094353 e!2012084)))

(declare-fun c!542189 () Bool)

(assert (=> d!885709 (= c!542189 ((_ is Nil!36331) (originalCharacters!5974 (h!41753 tokens!494))))))

(assert (=> d!885709 (= (size!27394 (originalCharacters!5974 (h!41753 tokens!494))) lt!1094353)))

(declare-fun b!3226078 () Bool)

(assert (=> b!3226078 (= e!2012084 0)))

(declare-fun b!3226079 () Bool)

(assert (=> b!3226079 (= e!2012084 (+ 1 (size!27394 (t!240914 (originalCharacters!5974 (h!41753 tokens!494))))))))

(assert (= (and d!885709 c!542189) b!3226078))

(assert (= (and d!885709 (not c!542189)) b!3226079))

(declare-fun m!3504717 () Bool)

(assert (=> b!3226079 m!3504717))

(assert (=> b!3225317 d!885709))

(declare-fun d!885713 () Bool)

(declare-fun lt!1094354 () Bool)

(assert (=> d!885713 (= lt!1094354 (isEmpty!20410 (list!12949 (_2!21012 lt!1094149))))))

(assert (=> d!885713 (= lt!1094354 (isEmpty!20412 (c!542041 (_2!21012 lt!1094149))))))

(assert (=> d!885713 (= (isEmpty!20411 (_2!21012 lt!1094149)) lt!1094354)))

(declare-fun bs!542853 () Bool)

(assert (= bs!542853 d!885713))

(declare-fun m!3504723 () Bool)

(assert (=> bs!542853 m!3504723))

(assert (=> bs!542853 m!3504723))

(declare-fun m!3504725 () Bool)

(assert (=> bs!542853 m!3504725))

(declare-fun m!3504727 () Bool)

(assert (=> bs!542853 m!3504727))

(assert (=> b!3225391 d!885713))

(declare-fun bs!542855 () Bool)

(declare-fun d!885719 () Bool)

(assert (= bs!542855 (and d!885719 d!885589)))

(declare-fun lambda!118128 () Int)

(assert (=> bs!542855 (= (and (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241)))) (= (toValue!7360 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toValue!7360 (transformation!5260 (rule!7718 separatorToken!241))))) (= lambda!118128 lambda!118123))))

(assert (=> d!885719 true))

(assert (=> d!885719 (< (dynLambda!14757 order!18713 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) (dynLambda!14760 order!18721 lambda!118128))))

(assert (=> d!885719 true))

(assert (=> d!885719 (< (dynLambda!14755 order!18709 (toValue!7360 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) (dynLambda!14760 order!18721 lambda!118128))))

(assert (=> d!885719 (= (semiInverseModEq!2165 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toValue!7360 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) (Forall!1275 lambda!118128))))

(declare-fun bs!542856 () Bool)

(assert (= bs!542856 d!885719))

(declare-fun m!3504731 () Bool)

(assert (=> bs!542856 m!3504731))

(assert (=> d!885339 d!885719))

(declare-fun d!885721 () Bool)

(assert (=> d!885721 (= (list!12949 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241))) (list!12953 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241)))))))

(declare-fun bs!542857 () Bool)

(assert (= bs!542857 d!885721))

(declare-fun m!3504733 () Bool)

(assert (=> bs!542857 m!3504733))

(assert (=> b!3225548 d!885721))

(declare-fun bs!542858 () Bool)

(declare-fun d!885723 () Bool)

(assert (= bs!542858 (and d!885723 d!885589)))

(declare-fun lambda!118129 () Int)

(assert (=> bs!542858 (= (and (= (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241)))) (= (toValue!7360 (transformation!5260 (h!41752 rules!2135))) (toValue!7360 (transformation!5260 (rule!7718 separatorToken!241))))) (= lambda!118129 lambda!118123))))

(declare-fun bs!542859 () Bool)

(assert (= bs!542859 (and d!885723 d!885719)))

(assert (=> bs!542859 (= (and (= (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) (= (toValue!7360 (transformation!5260 (h!41752 rules!2135))) (toValue!7360 (transformation!5260 (rule!7718 (h!41753 tokens!494)))))) (= lambda!118129 lambda!118128))))

(assert (=> d!885723 true))

(assert (=> d!885723 (< (dynLambda!14757 order!18713 (toChars!7219 (transformation!5260 (h!41752 rules!2135)))) (dynLambda!14760 order!18721 lambda!118129))))

(assert (=> d!885723 true))

(assert (=> d!885723 (< (dynLambda!14755 order!18709 (toValue!7360 (transformation!5260 (h!41752 rules!2135)))) (dynLambda!14760 order!18721 lambda!118129))))

(assert (=> d!885723 (= (semiInverseModEq!2165 (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toValue!7360 (transformation!5260 (h!41752 rules!2135)))) (Forall!1275 lambda!118129))))

(declare-fun bs!542860 () Bool)

(assert (= bs!542860 d!885723))

(declare-fun m!3504743 () Bool)

(assert (=> bs!542860 m!3504743))

(assert (=> d!885395 d!885723))

(declare-fun d!885725 () Bool)

(assert (=> d!885725 (= (list!12949 lt!1094124) (list!12953 (c!542041 lt!1094124)))))

(declare-fun bs!542861 () Bool)

(assert (= bs!542861 d!885725))

(declare-fun m!3504745 () Bool)

(assert (=> bs!542861 m!3504745))

(assert (=> d!885329 d!885725))

(declare-fun d!885727 () Bool)

(declare-fun c!542190 () Bool)

(assert (=> d!885727 (= c!542190 ((_ is Cons!36333) (list!12952 lt!1094104)))))

(declare-fun e!2012097 () List!36455)

(assert (=> d!885727 (= (printList!1399 thiss!18206 (list!12952 lt!1094104)) e!2012097)))

(declare-fun b!3226092 () Bool)

(assert (=> b!3226092 (= e!2012097 (++!8740 (list!12949 (charsOf!3276 (h!41753 (list!12952 lt!1094104)))) (printList!1399 thiss!18206 (t!240916 (list!12952 lt!1094104)))))))

(declare-fun b!3226093 () Bool)

(assert (=> b!3226093 (= e!2012097 Nil!36331)))

(assert (= (and d!885727 c!542190) b!3226092))

(assert (= (and d!885727 (not c!542190)) b!3226093))

(declare-fun m!3504747 () Bool)

(assert (=> b!3226092 m!3504747))

(assert (=> b!3226092 m!3504747))

(declare-fun m!3504749 () Bool)

(assert (=> b!3226092 m!3504749))

(declare-fun m!3504751 () Bool)

(assert (=> b!3226092 m!3504751))

(assert (=> b!3226092 m!3504749))

(assert (=> b!3226092 m!3504751))

(declare-fun m!3504753 () Bool)

(assert (=> b!3226092 m!3504753))

(assert (=> d!885329 d!885727))

(assert (=> d!885329 d!885609))

(assert (=> d!885329 d!885331))

(declare-fun d!885729 () Bool)

(assert (=> d!885729 (= (list!12952 (_1!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494)))))) (list!12956 (c!542042 (_1!21012 (lex!2177 thiss!18206 rules!2135 (print!1914 thiss!18206 (singletonSeq!2356 (h!41753 tokens!494))))))))))

(declare-fun bs!542862 () Bool)

(assert (= bs!542862 d!885729))

(declare-fun m!3504759 () Bool)

(assert (=> bs!542862 m!3504759))

(assert (=> d!885311 d!885729))

(assert (=> d!885311 d!885651))

(assert (=> d!885311 d!885653))

(declare-fun d!885731 () Bool)

(declare-fun lt!1094355 () Int)

(assert (=> d!885731 (= lt!1094355 (size!27400 (list!12952 (_1!21012 lt!1094120))))))

(assert (=> d!885731 (= lt!1094355 (size!27401 (c!542042 (_1!21012 lt!1094120))))))

(assert (=> d!885731 (= (size!27395 (_1!21012 lt!1094120)) lt!1094355)))

(declare-fun bs!542863 () Bool)

(assert (= bs!542863 d!885731))

(assert (=> bs!542863 m!3504581))

(assert (=> bs!542863 m!3504581))

(declare-fun m!3504761 () Bool)

(assert (=> bs!542863 m!3504761))

(declare-fun m!3504763 () Bool)

(assert (=> bs!542863 m!3504763))

(assert (=> d!885311 d!885731))

(declare-fun d!885733 () Bool)

(assert (=> d!885733 (= (list!12952 (singletonSeq!2356 (h!41753 tokens!494))) (list!12956 (c!542042 (singletonSeq!2356 (h!41753 tokens!494)))))))

(declare-fun bs!542864 () Bool)

(assert (= bs!542864 d!885733))

(declare-fun m!3504765 () Bool)

(assert (=> bs!542864 m!3504765))

(assert (=> d!885311 d!885733))

(assert (=> d!885311 d!885333))

(assert (=> d!885311 d!885399))

(declare-fun d!885735 () Bool)

(declare-fun res!1313912 () Bool)

(declare-fun e!2012102 () Bool)

(assert (=> d!885735 (=> res!1313912 e!2012102)))

(assert (=> d!885735 (= res!1313912 ((_ is Nil!36333) (list!12952 (seqFromList!3584 tokens!494))))))

(assert (=> d!885735 (= (forall!7450 (list!12952 (seqFromList!3584 tokens!494)) lambda!118097) e!2012102)))

(declare-fun b!3226107 () Bool)

(declare-fun e!2012103 () Bool)

(assert (=> b!3226107 (= e!2012102 e!2012103)))

(declare-fun res!1313913 () Bool)

(assert (=> b!3226107 (=> (not res!1313913) (not e!2012103))))

(assert (=> b!3226107 (= res!1313913 (dynLambda!14754 lambda!118097 (h!41753 (list!12952 (seqFromList!3584 tokens!494)))))))

(declare-fun b!3226108 () Bool)

(assert (=> b!3226108 (= e!2012103 (forall!7450 (t!240916 (list!12952 (seqFromList!3584 tokens!494))) lambda!118097))))

(assert (= (and d!885735 (not res!1313912)) b!3226107))

(assert (= (and b!3226107 res!1313913) b!3226108))

(declare-fun b_lambda!88757 () Bool)

(assert (=> (not b_lambda!88757) (not b!3226107)))

(declare-fun m!3504767 () Bool)

(assert (=> b!3226107 m!3504767))

(declare-fun m!3504769 () Bool)

(assert (=> b!3226108 m!3504769))

(assert (=> d!885351 d!885735))

(assert (=> d!885351 d!885467))

(declare-fun d!885737 () Bool)

(declare-fun lt!1094358 () Bool)

(assert (=> d!885737 (= lt!1094358 (forall!7450 (list!12952 (seqFromList!3584 tokens!494)) lambda!118097))))

(declare-fun forall!7456 (Conc!10896 Int) Bool)

(assert (=> d!885737 (= lt!1094358 (forall!7456 (c!542042 (seqFromList!3584 tokens!494)) lambda!118097))))

(assert (=> d!885737 (= (forall!7452 (seqFromList!3584 tokens!494) lambda!118097) lt!1094358)))

(declare-fun bs!542865 () Bool)

(assert (= bs!542865 d!885737))

(assert (=> bs!542865 m!3503513))

(assert (=> bs!542865 m!3503845))

(assert (=> bs!542865 m!3503845))

(assert (=> bs!542865 m!3503847))

(declare-fun m!3504783 () Bool)

(assert (=> bs!542865 m!3504783))

(assert (=> d!885351 d!885737))

(assert (=> d!885351 d!885399))

(declare-fun b!3226147 () Bool)

(declare-fun e!2012119 () Bool)

(assert (=> b!3226147 (= e!2012119 (inv!15 (value!170370 (h!41753 (t!240916 tokens!494)))))))

(declare-fun b!3226148 () Bool)

(declare-fun res!1313914 () Bool)

(assert (=> b!3226148 (=> res!1313914 e!2012119)))

(assert (=> b!3226148 (= res!1313914 (not ((_ is IntegerValue!16472) (value!170370 (h!41753 (t!240916 tokens!494))))))))

(declare-fun e!2012120 () Bool)

(assert (=> b!3226148 (= e!2012120 e!2012119)))

(declare-fun d!885739 () Bool)

(declare-fun c!542191 () Bool)

(assert (=> d!885739 (= c!542191 ((_ is IntegerValue!16470) (value!170370 (h!41753 (t!240916 tokens!494)))))))

(declare-fun e!2012118 () Bool)

(assert (=> d!885739 (= (inv!21 (value!170370 (h!41753 (t!240916 tokens!494)))) e!2012118)))

(declare-fun b!3226149 () Bool)

(assert (=> b!3226149 (= e!2012120 (inv!17 (value!170370 (h!41753 (t!240916 tokens!494)))))))

(declare-fun b!3226150 () Bool)

(assert (=> b!3226150 (= e!2012118 (inv!16 (value!170370 (h!41753 (t!240916 tokens!494)))))))

(declare-fun b!3226151 () Bool)

(assert (=> b!3226151 (= e!2012118 e!2012120)))

(declare-fun c!542192 () Bool)

(assert (=> b!3226151 (= c!542192 ((_ is IntegerValue!16471) (value!170370 (h!41753 (t!240916 tokens!494)))))))

(assert (= (and d!885739 c!542191) b!3226150))

(assert (= (and d!885739 (not c!542191)) b!3226151))

(assert (= (and b!3226151 c!542192) b!3226149))

(assert (= (and b!3226151 (not c!542192)) b!3226148))

(assert (= (and b!3226148 (not res!1313914)) b!3226147))

(declare-fun m!3504785 () Bool)

(assert (=> b!3226147 m!3504785))

(declare-fun m!3504787 () Bool)

(assert (=> b!3226149 m!3504787))

(declare-fun m!3504789 () Bool)

(assert (=> b!3226150 m!3504789))

(assert (=> b!3225571 d!885739))

(declare-fun d!885741 () Bool)

(assert (=> d!885741 (= (isEmpty!20410 (originalCharacters!5974 separatorToken!241)) ((_ is Nil!36331) (originalCharacters!5974 separatorToken!241)))))

(assert (=> d!885389 d!885741))

(declare-fun b!3226165 () Bool)

(declare-fun b_free!86013 () Bool)

(declare-fun b_next!86717 () Bool)

(assert (=> b!3226165 (= b_free!86013 (not b_next!86717))))

(declare-fun tp!1016424 () Bool)

(declare-fun b_and!215931 () Bool)

(assert (=> b!3226165 (= tp!1016424 b_and!215931)))

(declare-fun b_free!86015 () Bool)

(declare-fun b_next!86719 () Bool)

(assert (=> b!3226165 (= b_free!86015 (not b_next!86719))))

(declare-fun t!241062 () Bool)

(declare-fun tb!159635 () Bool)

(assert (=> (and b!3226165 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 (t!240915 rules!2135))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))) t!241062) tb!159635))

(declare-fun result!202126 () Bool)

(assert (= result!202126 result!202094))

(assert (=> d!885685 t!241062))

(declare-fun tb!159637 () Bool)

(declare-fun t!241064 () Bool)

(assert (=> (and b!3226165 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 (t!240915 rules!2135))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) t!241064) tb!159637))

(declare-fun result!202128 () Bool)

(assert (= result!202128 result!201992))

(assert (=> b!3225316 t!241064))

(assert (=> d!885349 t!241064))

(declare-fun t!241066 () Bool)

(declare-fun tb!159639 () Bool)

(assert (=> (and b!3226165 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 (t!240915 rules!2135))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))) t!241066) tb!159639))

(declare-fun result!202130 () Bool)

(assert (= result!202130 result!202074))

(assert (=> b!3225963 t!241066))

(declare-fun tb!159641 () Bool)

(declare-fun t!241068 () Bool)

(assert (=> (and b!3226165 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 (t!240915 rules!2135))))) (toChars!7219 (transformation!5260 (rule!7718 (apply!8285 lt!1094104 0))))) t!241068) tb!159641))

(declare-fun result!202132 () Bool)

(assert (= result!202132 result!202064))

(assert (=> d!885615 t!241068))

(declare-fun tb!159643 () Bool)

(declare-fun t!241070 () Bool)

(assert (=> (and b!3226165 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 (t!240915 rules!2135))))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241)))) t!241070) tb!159643))

(declare-fun result!202134 () Bool)

(assert (= result!202134 result!202022))

(assert (=> b!3225548 t!241070))

(declare-fun b_and!215933 () Bool)

(declare-fun tp!1016425 () Bool)

(assert (=> b!3226165 (= tp!1016425 (and (=> t!241064 result!202128) (=> t!241068 result!202132) (=> t!241070 result!202134) (=> t!241062 result!202126) (=> t!241066 result!202130) b_and!215933))))

(declare-fun e!2012130 () Bool)

(assert (=> b!3226165 (= e!2012130 (and tp!1016424 tp!1016425))))

(declare-fun b!3226163 () Bool)

(declare-fun e!2012128 () Bool)

(declare-fun tp!1016428 () Bool)

(assert (=> b!3226163 (= e!2012128 (and tp!1016428 (inv!49201 (tag!5792 (h!41752 (t!240915 (t!240915 rules!2135))))) (inv!49204 (transformation!5260 (h!41752 (t!240915 (t!240915 rules!2135))))) e!2012130))))

(declare-fun b!3226161 () Bool)

(declare-fun e!2012126 () Bool)

(declare-fun tp!1016432 () Bool)

(assert (=> b!3226161 (= e!2012126 (and e!2012128 tp!1016432))))

(assert (=> b!3225601 (= tp!1016327 e!2012126)))

(assert (= b!3226163 b!3226165))

(assert (= b!3226161 b!3226163))

(assert (= (and b!3225601 ((_ is Cons!36332) (t!240915 (t!240915 rules!2135)))) b!3226161))

(declare-fun m!3504791 () Bool)

(assert (=> b!3226163 m!3504791))

(declare-fun m!3504793 () Bool)

(assert (=> b!3226163 m!3504793))

(declare-fun b!3226187 () Bool)

(declare-fun e!2012136 () Bool)

(assert (=> b!3226187 (= e!2012136 tp_is_empty!17317)))

(declare-fun b!3226190 () Bool)

(declare-fun tp!1016457 () Bool)

(declare-fun tp!1016459 () Bool)

(assert (=> b!3226190 (= e!2012136 (and tp!1016457 tp!1016459))))

(assert (=> b!3225608 (= tp!1016329 e!2012136)))

(declare-fun b!3226188 () Bool)

(declare-fun tp!1016461 () Bool)

(declare-fun tp!1016460 () Bool)

(assert (=> b!3226188 (= e!2012136 (and tp!1016461 tp!1016460))))

(declare-fun b!3226189 () Bool)

(declare-fun tp!1016462 () Bool)

(assert (=> b!3226189 (= e!2012136 tp!1016462)))

(assert (= (and b!3225608 ((_ is ElementMatch!10019) (regOne!20551 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226187))

(assert (= (and b!3225608 ((_ is Concat!15509) (regOne!20551 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226188))

(assert (= (and b!3225608 ((_ is Star!10019) (regOne!20551 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226189))

(assert (= (and b!3225608 ((_ is Union!10019) (regOne!20551 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226190))

(declare-fun b!3226191 () Bool)

(declare-fun e!2012137 () Bool)

(assert (=> b!3226191 (= e!2012137 tp_is_empty!17317)))

(declare-fun b!3226194 () Bool)

(declare-fun tp!1016463 () Bool)

(declare-fun tp!1016464 () Bool)

(assert (=> b!3226194 (= e!2012137 (and tp!1016463 tp!1016464))))

(assert (=> b!3225608 (= tp!1016330 e!2012137)))

(declare-fun b!3226192 () Bool)

(declare-fun tp!1016466 () Bool)

(declare-fun tp!1016465 () Bool)

(assert (=> b!3226192 (= e!2012137 (and tp!1016466 tp!1016465))))

(declare-fun b!3226193 () Bool)

(declare-fun tp!1016467 () Bool)

(assert (=> b!3226193 (= e!2012137 tp!1016467)))

(assert (= (and b!3225608 ((_ is ElementMatch!10019) (regTwo!20551 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226191))

(assert (= (and b!3225608 ((_ is Concat!15509) (regTwo!20551 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226192))

(assert (= (and b!3225608 ((_ is Star!10019) (regTwo!20551 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226193))

(assert (= (and b!3225608 ((_ is Union!10019) (regTwo!20551 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226194))

(declare-fun b!3226195 () Bool)

(declare-fun e!2012138 () Bool)

(assert (=> b!3226195 (= e!2012138 tp_is_empty!17317)))

(declare-fun b!3226198 () Bool)

(declare-fun tp!1016468 () Bool)

(declare-fun tp!1016469 () Bool)

(assert (=> b!3226198 (= e!2012138 (and tp!1016468 tp!1016469))))

(assert (=> b!3225607 (= tp!1016333 e!2012138)))

(declare-fun b!3226196 () Bool)

(declare-fun tp!1016471 () Bool)

(declare-fun tp!1016470 () Bool)

(assert (=> b!3226196 (= e!2012138 (and tp!1016471 tp!1016470))))

(declare-fun b!3226197 () Bool)

(declare-fun tp!1016472 () Bool)

(assert (=> b!3226197 (= e!2012138 tp!1016472)))

(assert (= (and b!3225607 ((_ is ElementMatch!10019) (reg!10348 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226195))

(assert (= (and b!3225607 ((_ is Concat!15509) (reg!10348 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226196))

(assert (= (and b!3225607 ((_ is Star!10019) (reg!10348 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226197))

(assert (= (and b!3225607 ((_ is Union!10019) (reg!10348 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226198))

(declare-fun b!3226199 () Bool)

(declare-fun e!2012139 () Bool)

(assert (=> b!3226199 (= e!2012139 tp_is_empty!17317)))

(declare-fun b!3226202 () Bool)

(declare-fun tp!1016473 () Bool)

(declare-fun tp!1016474 () Bool)

(assert (=> b!3226202 (= e!2012139 (and tp!1016473 tp!1016474))))

(assert (=> b!3225612 (= tp!1016334 e!2012139)))

(declare-fun b!3226200 () Bool)

(declare-fun tp!1016476 () Bool)

(declare-fun tp!1016475 () Bool)

(assert (=> b!3226200 (= e!2012139 (and tp!1016476 tp!1016475))))

(declare-fun b!3226201 () Bool)

(declare-fun tp!1016477 () Bool)

(assert (=> b!3226201 (= e!2012139 tp!1016477)))

(assert (= (and b!3225612 ((_ is ElementMatch!10019) (regOne!20551 (regex!5260 (h!41752 rules!2135))))) b!3226199))

(assert (= (and b!3225612 ((_ is Concat!15509) (regOne!20551 (regex!5260 (h!41752 rules!2135))))) b!3226200))

(assert (= (and b!3225612 ((_ is Star!10019) (regOne!20551 (regex!5260 (h!41752 rules!2135))))) b!3226201))

(assert (= (and b!3225612 ((_ is Union!10019) (regOne!20551 (regex!5260 (h!41752 rules!2135))))) b!3226202))

(declare-fun b!3226203 () Bool)

(declare-fun e!2012140 () Bool)

(assert (=> b!3226203 (= e!2012140 tp_is_empty!17317)))

(declare-fun b!3226206 () Bool)

(declare-fun tp!1016478 () Bool)

(declare-fun tp!1016479 () Bool)

(assert (=> b!3226206 (= e!2012140 (and tp!1016478 tp!1016479))))

(assert (=> b!3225612 (= tp!1016335 e!2012140)))

(declare-fun b!3226204 () Bool)

(declare-fun tp!1016481 () Bool)

(declare-fun tp!1016480 () Bool)

(assert (=> b!3226204 (= e!2012140 (and tp!1016481 tp!1016480))))

(declare-fun b!3226205 () Bool)

(declare-fun tp!1016482 () Bool)

(assert (=> b!3226205 (= e!2012140 tp!1016482)))

(assert (= (and b!3225612 ((_ is ElementMatch!10019) (regTwo!20551 (regex!5260 (h!41752 rules!2135))))) b!3226203))

(assert (= (and b!3225612 ((_ is Concat!15509) (regTwo!20551 (regex!5260 (h!41752 rules!2135))))) b!3226204))

(assert (= (and b!3225612 ((_ is Star!10019) (regTwo!20551 (regex!5260 (h!41752 rules!2135))))) b!3226205))

(assert (= (and b!3225612 ((_ is Union!10019) (regTwo!20551 (regex!5260 (h!41752 rules!2135))))) b!3226206))

(declare-fun b!3226207 () Bool)

(declare-fun e!2012141 () Bool)

(declare-fun tp!1016483 () Bool)

(assert (=> b!3226207 (= e!2012141 (and tp_is_empty!17317 tp!1016483))))

(assert (=> b!3225578 (= tp!1016300 e!2012141)))

(assert (= (and b!3225578 ((_ is Cons!36331) (t!240914 (originalCharacters!5974 separatorToken!241)))) b!3226207))

(declare-fun b!3226208 () Bool)

(declare-fun e!2012142 () Bool)

(declare-fun tp!1016484 () Bool)

(assert (=> b!3226208 (= e!2012142 (and tp_is_empty!17317 tp!1016484))))

(assert (=> b!3225604 (= tp!1016328 e!2012142)))

(assert (= (and b!3225604 ((_ is Cons!36331) (t!240914 (originalCharacters!5974 (h!41753 tokens!494))))) b!3226208))

(declare-fun b!3226209 () Bool)

(declare-fun e!2012143 () Bool)

(assert (=> b!3226209 (= e!2012143 tp_is_empty!17317)))

(declare-fun b!3226212 () Bool)

(declare-fun tp!1016485 () Bool)

(declare-fun tp!1016486 () Bool)

(assert (=> b!3226212 (= e!2012143 (and tp!1016485 tp!1016486))))

(assert (=> b!3225602 (= tp!1016326 e!2012143)))

(declare-fun b!3226210 () Bool)

(declare-fun tp!1016488 () Bool)

(declare-fun tp!1016487 () Bool)

(assert (=> b!3226210 (= e!2012143 (and tp!1016488 tp!1016487))))

(declare-fun b!3226211 () Bool)

(declare-fun tp!1016489 () Bool)

(assert (=> b!3226211 (= e!2012143 tp!1016489)))

(assert (= (and b!3225602 ((_ is ElementMatch!10019) (regex!5260 (h!41752 (t!240915 rules!2135))))) b!3226209))

(assert (= (and b!3225602 ((_ is Concat!15509) (regex!5260 (h!41752 (t!240915 rules!2135))))) b!3226210))

(assert (= (and b!3225602 ((_ is Star!10019) (regex!5260 (h!41752 (t!240915 rules!2135))))) b!3226211))

(assert (= (and b!3225602 ((_ is Union!10019) (regex!5260 (h!41752 (t!240915 rules!2135))))) b!3226212))

(declare-fun b!3226213 () Bool)

(declare-fun e!2012144 () Bool)

(assert (=> b!3226213 (= e!2012144 tp_is_empty!17317)))

(declare-fun b!3226216 () Bool)

(declare-fun tp!1016490 () Bool)

(declare-fun tp!1016491 () Bool)

(assert (=> b!3226216 (= e!2012144 (and tp!1016490 tp!1016491))))

(assert (=> b!3225610 (= tp!1016337 e!2012144)))

(declare-fun b!3226214 () Bool)

(declare-fun tp!1016493 () Bool)

(declare-fun tp!1016492 () Bool)

(assert (=> b!3226214 (= e!2012144 (and tp!1016493 tp!1016492))))

(declare-fun b!3226215 () Bool)

(declare-fun tp!1016494 () Bool)

(assert (=> b!3226215 (= e!2012144 tp!1016494)))

(assert (= (and b!3225610 ((_ is ElementMatch!10019) (regOne!20550 (regex!5260 (h!41752 rules!2135))))) b!3226213))

(assert (= (and b!3225610 ((_ is Concat!15509) (regOne!20550 (regex!5260 (h!41752 rules!2135))))) b!3226214))

(assert (= (and b!3225610 ((_ is Star!10019) (regOne!20550 (regex!5260 (h!41752 rules!2135))))) b!3226215))

(assert (= (and b!3225610 ((_ is Union!10019) (regOne!20550 (regex!5260 (h!41752 rules!2135))))) b!3226216))

(declare-fun b!3226217 () Bool)

(declare-fun e!2012145 () Bool)

(assert (=> b!3226217 (= e!2012145 tp_is_empty!17317)))

(declare-fun b!3226220 () Bool)

(declare-fun tp!1016495 () Bool)

(declare-fun tp!1016496 () Bool)

(assert (=> b!3226220 (= e!2012145 (and tp!1016495 tp!1016496))))

(assert (=> b!3225610 (= tp!1016336 e!2012145)))

(declare-fun b!3226218 () Bool)

(declare-fun tp!1016498 () Bool)

(declare-fun tp!1016497 () Bool)

(assert (=> b!3226218 (= e!2012145 (and tp!1016498 tp!1016497))))

(declare-fun b!3226219 () Bool)

(declare-fun tp!1016499 () Bool)

(assert (=> b!3226219 (= e!2012145 tp!1016499)))

(assert (= (and b!3225610 ((_ is ElementMatch!10019) (regTwo!20550 (regex!5260 (h!41752 rules!2135))))) b!3226217))

(assert (= (and b!3225610 ((_ is Concat!15509) (regTwo!20550 (regex!5260 (h!41752 rules!2135))))) b!3226218))

(assert (= (and b!3225610 ((_ is Star!10019) (regTwo!20550 (regex!5260 (h!41752 rules!2135))))) b!3226219))

(assert (= (and b!3225610 ((_ is Union!10019) (regTwo!20550 (regex!5260 (h!41752 rules!2135))))) b!3226220))

(declare-fun b!3226221 () Bool)

(declare-fun e!2012146 () Bool)

(assert (=> b!3226221 (= e!2012146 tp_is_empty!17317)))

(declare-fun b!3226224 () Bool)

(declare-fun tp!1016500 () Bool)

(declare-fun tp!1016501 () Bool)

(assert (=> b!3226224 (= e!2012146 (and tp!1016500 tp!1016501))))

(assert (=> b!3225611 (= tp!1016338 e!2012146)))

(declare-fun b!3226222 () Bool)

(declare-fun tp!1016503 () Bool)

(declare-fun tp!1016502 () Bool)

(assert (=> b!3226222 (= e!2012146 (and tp!1016503 tp!1016502))))

(declare-fun b!3226223 () Bool)

(declare-fun tp!1016504 () Bool)

(assert (=> b!3226223 (= e!2012146 tp!1016504)))

(assert (= (and b!3225611 ((_ is ElementMatch!10019) (reg!10348 (regex!5260 (h!41752 rules!2135))))) b!3226221))

(assert (= (and b!3225611 ((_ is Concat!15509) (reg!10348 (regex!5260 (h!41752 rules!2135))))) b!3226222))

(assert (= (and b!3225611 ((_ is Star!10019) (reg!10348 (regex!5260 (h!41752 rules!2135))))) b!3226223))

(assert (= (and b!3225611 ((_ is Union!10019) (reg!10348 (regex!5260 (h!41752 rules!2135))))) b!3226224))

(declare-fun tp!1016511 () Bool)

(declare-fun e!2012152 () Bool)

(declare-fun b!3226233 () Bool)

(declare-fun tp!1016512 () Bool)

(assert (=> b!3226233 (= e!2012152 (and (inv!49208 (left!28287 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241))))) tp!1016511 (inv!49208 (right!28617 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241))))) tp!1016512))))

(declare-fun b!3226235 () Bool)

(declare-fun e!2012151 () Bool)

(declare-fun tp!1016513 () Bool)

(assert (=> b!3226235 (= e!2012151 tp!1016513)))

(declare-fun b!3226234 () Bool)

(declare-fun inv!49214 (IArray!21795) Bool)

(assert (=> b!3226234 (= e!2012152 (and (inv!49214 (xs!14013 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241))))) e!2012151))))

(assert (=> b!3225550 (= tp!1016282 (and (inv!49208 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241)))) e!2012152))))

(assert (= (and b!3225550 ((_ is Node!10895) (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241))))) b!3226233))

(assert (= b!3226234 b!3226235))

(assert (= (and b!3225550 ((_ is Leaf!17136) (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (value!170370 separatorToken!241))))) b!3226234))

(declare-fun m!3504795 () Bool)

(assert (=> b!3226233 m!3504795))

(declare-fun m!3504797 () Bool)

(assert (=> b!3226233 m!3504797))

(declare-fun m!3504799 () Bool)

(assert (=> b!3226234 m!3504799))

(assert (=> b!3225550 m!3503861))

(declare-fun b!3226236 () Bool)

(declare-fun e!2012153 () Bool)

(assert (=> b!3226236 (= e!2012153 tp_is_empty!17317)))

(declare-fun b!3226239 () Bool)

(declare-fun tp!1016514 () Bool)

(declare-fun tp!1016515 () Bool)

(assert (=> b!3226239 (= e!2012153 (and tp!1016514 tp!1016515))))

(assert (=> b!3225606 (= tp!1016332 e!2012153)))

(declare-fun b!3226237 () Bool)

(declare-fun tp!1016517 () Bool)

(declare-fun tp!1016516 () Bool)

(assert (=> b!3226237 (= e!2012153 (and tp!1016517 tp!1016516))))

(declare-fun b!3226238 () Bool)

(declare-fun tp!1016518 () Bool)

(assert (=> b!3226238 (= e!2012153 tp!1016518)))

(assert (= (and b!3225606 ((_ is ElementMatch!10019) (regOne!20550 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226236))

(assert (= (and b!3225606 ((_ is Concat!15509) (regOne!20550 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226237))

(assert (= (and b!3225606 ((_ is Star!10019) (regOne!20550 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226238))

(assert (= (and b!3225606 ((_ is Union!10019) (regOne!20550 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226239))

(declare-fun b!3226240 () Bool)

(declare-fun e!2012154 () Bool)

(assert (=> b!3226240 (= e!2012154 tp_is_empty!17317)))

(declare-fun b!3226243 () Bool)

(declare-fun tp!1016519 () Bool)

(declare-fun tp!1016520 () Bool)

(assert (=> b!3226243 (= e!2012154 (and tp!1016519 tp!1016520))))

(assert (=> b!3225606 (= tp!1016331 e!2012154)))

(declare-fun b!3226241 () Bool)

(declare-fun tp!1016522 () Bool)

(declare-fun tp!1016521 () Bool)

(assert (=> b!3226241 (= e!2012154 (and tp!1016522 tp!1016521))))

(declare-fun b!3226242 () Bool)

(declare-fun tp!1016523 () Bool)

(assert (=> b!3226242 (= e!2012154 tp!1016523)))

(assert (= (and b!3225606 ((_ is ElementMatch!10019) (regTwo!20550 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226240))

(assert (= (and b!3225606 ((_ is Concat!15509) (regTwo!20550 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226241))

(assert (= (and b!3225606 ((_ is Star!10019) (regTwo!20550 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226242))

(assert (= (and b!3225606 ((_ is Union!10019) (regTwo!20550 (regex!5260 (rule!7718 (h!41753 tokens!494)))))) b!3226243))

(declare-fun b!3226244 () Bool)

(declare-fun e!2012155 () Bool)

(assert (=> b!3226244 (= e!2012155 tp_is_empty!17317)))

(declare-fun b!3226247 () Bool)

(declare-fun tp!1016524 () Bool)

(declare-fun tp!1016525 () Bool)

(assert (=> b!3226247 (= e!2012155 (and tp!1016524 tp!1016525))))

(assert (=> b!3225592 (= tp!1016311 e!2012155)))

(declare-fun b!3226245 () Bool)

(declare-fun tp!1016527 () Bool)

(declare-fun tp!1016526 () Bool)

(assert (=> b!3226245 (= e!2012155 (and tp!1016527 tp!1016526))))

(declare-fun b!3226246 () Bool)

(declare-fun tp!1016528 () Bool)

(assert (=> b!3226246 (= e!2012155 tp!1016528)))

(assert (= (and b!3225592 ((_ is ElementMatch!10019) (regOne!20551 (regex!5260 (rule!7718 separatorToken!241))))) b!3226244))

(assert (= (and b!3225592 ((_ is Concat!15509) (regOne!20551 (regex!5260 (rule!7718 separatorToken!241))))) b!3226245))

(assert (= (and b!3225592 ((_ is Star!10019) (regOne!20551 (regex!5260 (rule!7718 separatorToken!241))))) b!3226246))

(assert (= (and b!3225592 ((_ is Union!10019) (regOne!20551 (regex!5260 (rule!7718 separatorToken!241))))) b!3226247))

(declare-fun b!3226248 () Bool)

(declare-fun e!2012156 () Bool)

(assert (=> b!3226248 (= e!2012156 tp_is_empty!17317)))

(declare-fun b!3226251 () Bool)

(declare-fun tp!1016529 () Bool)

(declare-fun tp!1016530 () Bool)

(assert (=> b!3226251 (= e!2012156 (and tp!1016529 tp!1016530))))

(assert (=> b!3225592 (= tp!1016312 e!2012156)))

(declare-fun b!3226249 () Bool)

(declare-fun tp!1016532 () Bool)

(declare-fun tp!1016531 () Bool)

(assert (=> b!3226249 (= e!2012156 (and tp!1016532 tp!1016531))))

(declare-fun b!3226250 () Bool)

(declare-fun tp!1016533 () Bool)

(assert (=> b!3226250 (= e!2012156 tp!1016533)))

(assert (= (and b!3225592 ((_ is ElementMatch!10019) (regTwo!20551 (regex!5260 (rule!7718 separatorToken!241))))) b!3226248))

(assert (= (and b!3225592 ((_ is Concat!15509) (regTwo!20551 (regex!5260 (rule!7718 separatorToken!241))))) b!3226249))

(assert (= (and b!3225592 ((_ is Star!10019) (regTwo!20551 (regex!5260 (rule!7718 separatorToken!241))))) b!3226250))

(assert (= (and b!3225592 ((_ is Union!10019) (regTwo!20551 (regex!5260 (rule!7718 separatorToken!241))))) b!3226251))

(declare-fun b!3226252 () Bool)

(declare-fun e!2012157 () Bool)

(assert (=> b!3226252 (= e!2012157 tp_is_empty!17317)))

(declare-fun b!3226255 () Bool)

(declare-fun tp!1016534 () Bool)

(declare-fun tp!1016535 () Bool)

(assert (=> b!3226255 (= e!2012157 (and tp!1016534 tp!1016535))))

(assert (=> b!3225591 (= tp!1016315 e!2012157)))

(declare-fun b!3226253 () Bool)

(declare-fun tp!1016537 () Bool)

(declare-fun tp!1016536 () Bool)

(assert (=> b!3226253 (= e!2012157 (and tp!1016537 tp!1016536))))

(declare-fun b!3226254 () Bool)

(declare-fun tp!1016538 () Bool)

(assert (=> b!3226254 (= e!2012157 tp!1016538)))

(assert (= (and b!3225591 ((_ is ElementMatch!10019) (reg!10348 (regex!5260 (rule!7718 separatorToken!241))))) b!3226252))

(assert (= (and b!3225591 ((_ is Concat!15509) (reg!10348 (regex!5260 (rule!7718 separatorToken!241))))) b!3226253))

(assert (= (and b!3225591 ((_ is Star!10019) (reg!10348 (regex!5260 (rule!7718 separatorToken!241))))) b!3226254))

(assert (= (and b!3225591 ((_ is Union!10019) (reg!10348 (regex!5260 (rule!7718 separatorToken!241))))) b!3226255))

(declare-fun b!3226256 () Bool)

(declare-fun e!2012158 () Bool)

(assert (=> b!3226256 (= e!2012158 tp_is_empty!17317)))

(declare-fun b!3226259 () Bool)

(declare-fun tp!1016539 () Bool)

(declare-fun tp!1016540 () Bool)

(assert (=> b!3226259 (= e!2012158 (and tp!1016539 tp!1016540))))

(assert (=> b!3225572 (= tp!1016295 e!2012158)))

(declare-fun b!3226257 () Bool)

(declare-fun tp!1016542 () Bool)

(declare-fun tp!1016541 () Bool)

(assert (=> b!3226257 (= e!2012158 (and tp!1016542 tp!1016541))))

(declare-fun b!3226258 () Bool)

(declare-fun tp!1016543 () Bool)

(assert (=> b!3226258 (= e!2012158 tp!1016543)))

(assert (= (and b!3225572 ((_ is ElementMatch!10019) (regex!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))) b!3226256))

(assert (= (and b!3225572 ((_ is Concat!15509) (regex!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))) b!3226257))

(assert (= (and b!3225572 ((_ is Star!10019) (regex!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))) b!3226258))

(assert (= (and b!3225572 ((_ is Union!10019) (regex!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))) b!3226259))

(declare-fun b!3226262 () Bool)

(declare-fun e!2012161 () Bool)

(assert (=> b!3226262 (= e!2012161 true)))

(declare-fun b!3226261 () Bool)

(declare-fun e!2012160 () Bool)

(assert (=> b!3226261 (= e!2012160 e!2012161)))

(declare-fun b!3226260 () Bool)

(declare-fun e!2012159 () Bool)

(assert (=> b!3226260 (= e!2012159 e!2012160)))

(assert (=> b!3225528 e!2012159))

(assert (= b!3226261 b!3226262))

(assert (= b!3226260 b!3226261))

(assert (= (and b!3225528 ((_ is Cons!36332) (t!240915 rules!2135))) b!3226260))

(assert (=> b!3226262 (< (dynLambda!14755 order!18709 (toValue!7360 (transformation!5260 (h!41752 (t!240915 rules!2135))))) (dynLambda!14756 order!18711 lambda!118097))))

(assert (=> b!3226262 (< (dynLambda!14757 order!18713 (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135))))) (dynLambda!14756 order!18711 lambda!118097))))

(declare-fun b!3226266 () Bool)

(declare-fun b_free!86017 () Bool)

(declare-fun b_next!86721 () Bool)

(assert (=> b!3226266 (= b_free!86017 (not b_next!86721))))

(declare-fun tp!1016548 () Bool)

(declare-fun b_and!215935 () Bool)

(assert (=> b!3226266 (= tp!1016548 b_and!215935)))

(declare-fun b_free!86019 () Bool)

(declare-fun b_next!86723 () Bool)

(assert (=> b!3226266 (= b_free!86019 (not b_next!86723))))

(declare-fun t!241072 () Bool)

(declare-fun tb!159645 () Bool)

(assert (=> (and b!3226266 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 (t!240916 tokens!494)))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (Cons!36333 (h!41753 tokens!494) Nil!36333)))))) t!241072) tb!159645))

(declare-fun result!202138 () Bool)

(assert (= result!202138 result!202094))

(assert (=> d!885685 t!241072))

(declare-fun t!241074 () Bool)

(declare-fun tb!159647 () Bool)

(assert (=> (and b!3226266 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 (t!240916 tokens!494)))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494))))) t!241074) tb!159647))

(declare-fun result!202140 () Bool)

(assert (= result!202140 result!201992))

(assert (=> b!3225316 t!241074))

(assert (=> d!885349 t!241074))

(declare-fun t!241076 () Bool)

(declare-fun tb!159649 () Bool)

(assert (=> (and b!3226266 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 (t!240916 tokens!494)))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494)))))) t!241076) tb!159649))

(declare-fun result!202142 () Bool)

(assert (= result!202142 result!202074))

(assert (=> b!3225963 t!241076))

(declare-fun tb!159651 () Bool)

(declare-fun t!241078 () Bool)

(assert (=> (and b!3226266 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 (t!240916 tokens!494)))))) (toChars!7219 (transformation!5260 (rule!7718 (apply!8285 lt!1094104 0))))) t!241078) tb!159651))

(declare-fun result!202144 () Bool)

(assert (= result!202144 result!202064))

(assert (=> d!885615 t!241078))

(declare-fun t!241080 () Bool)

(declare-fun tb!159653 () Bool)

(assert (=> (and b!3226266 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 (t!240916 tokens!494)))))) (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241)))) t!241080) tb!159653))

(declare-fun result!202146 () Bool)

(assert (= result!202146 result!202022))

(assert (=> b!3225548 t!241080))

(declare-fun tp!1016544 () Bool)

(declare-fun b_and!215937 () Bool)

(assert (=> b!3226266 (= tp!1016544 (and (=> t!241076 result!202142) (=> t!241080 result!202146) (=> t!241074 result!202140) (=> t!241078 result!202144) (=> t!241072 result!202138) b_and!215937))))

(declare-fun e!2012165 () Bool)

(declare-fun tp!1016547 () Bool)

(declare-fun b!3226263 () Bool)

(declare-fun e!2012163 () Bool)

(assert (=> b!3226263 (= e!2012163 (and (inv!49205 (h!41753 (t!240916 (t!240916 tokens!494)))) e!2012165 tp!1016547))))

(declare-fun e!2012162 () Bool)

(assert (=> b!3226266 (= e!2012162 (and tp!1016548 tp!1016544))))

(assert (=> b!3225570 (= tp!1016296 e!2012163)))

(declare-fun tp!1016546 () Bool)

(declare-fun b!3226265 () Bool)

(declare-fun e!2012167 () Bool)

(assert (=> b!3226265 (= e!2012167 (and tp!1016546 (inv!49201 (tag!5792 (rule!7718 (h!41753 (t!240916 (t!240916 tokens!494)))))) (inv!49204 (transformation!5260 (rule!7718 (h!41753 (t!240916 (t!240916 tokens!494)))))) e!2012162))))

(declare-fun tp!1016545 () Bool)

(declare-fun b!3226264 () Bool)

(assert (=> b!3226264 (= e!2012165 (and (inv!21 (value!170370 (h!41753 (t!240916 (t!240916 tokens!494))))) e!2012167 tp!1016545))))

(assert (= b!3226265 b!3226266))

(assert (= b!3226264 b!3226265))

(assert (= b!3226263 b!3226264))

(assert (= (and b!3225570 ((_ is Cons!36333) (t!240916 (t!240916 tokens!494)))) b!3226263))

(declare-fun m!3504801 () Bool)

(assert (=> b!3226263 m!3504801))

(declare-fun m!3504803 () Bool)

(assert (=> b!3226265 m!3504803))

(declare-fun m!3504805 () Bool)

(assert (=> b!3226265 m!3504805))

(declare-fun m!3504807 () Bool)

(assert (=> b!3226264 m!3504807))

(declare-fun e!2012169 () Bool)

(declare-fun b!3226267 () Bool)

(declare-fun tp!1016550 () Bool)

(declare-fun tp!1016549 () Bool)

(assert (=> b!3226267 (= e!2012169 (and (inv!49208 (left!28287 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494)))))) tp!1016549 (inv!49208 (right!28617 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494)))))) tp!1016550))))

(declare-fun b!3226269 () Bool)

(declare-fun e!2012168 () Bool)

(declare-fun tp!1016551 () Bool)

(assert (=> b!3226269 (= e!2012168 tp!1016551)))

(declare-fun b!3226268 () Bool)

(assert (=> b!3226268 (= e!2012169 (and (inv!49214 (xs!14013 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494)))))) e!2012168))))

(assert (=> b!3225322 (= tp!1016224 (and (inv!49208 (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494))))) e!2012169))))

(assert (= (and b!3225322 ((_ is Node!10895) (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494)))))) b!3226267))

(assert (= b!3226268 b!3226269))

(assert (= (and b!3225322 ((_ is Leaf!17136) (c!542041 (dynLambda!14753 (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (value!170370 (h!41753 tokens!494)))))) b!3226268))

(declare-fun m!3504809 () Bool)

(assert (=> b!3226267 m!3504809))

(declare-fun m!3504811 () Bool)

(assert (=> b!3226267 m!3504811))

(declare-fun m!3504813 () Bool)

(assert (=> b!3226268 m!3504813))

(assert (=> b!3225322 m!3503557))

(declare-fun b!3226270 () Bool)

(declare-fun e!2012170 () Bool)

(declare-fun tp!1016552 () Bool)

(assert (=> b!3226270 (= e!2012170 (and tp_is_empty!17317 tp!1016552))))

(assert (=> b!3225571 (= tp!1016294 e!2012170)))

(assert (= (and b!3225571 ((_ is Cons!36331) (originalCharacters!5974 (h!41753 (t!240916 tokens!494))))) b!3226270))

(declare-fun b!3226271 () Bool)

(declare-fun e!2012171 () Bool)

(assert (=> b!3226271 (= e!2012171 tp_is_empty!17317)))

(declare-fun b!3226274 () Bool)

(declare-fun tp!1016553 () Bool)

(declare-fun tp!1016554 () Bool)

(assert (=> b!3226274 (= e!2012171 (and tp!1016553 tp!1016554))))

(assert (=> b!3225590 (= tp!1016314 e!2012171)))

(declare-fun b!3226272 () Bool)

(declare-fun tp!1016556 () Bool)

(declare-fun tp!1016555 () Bool)

(assert (=> b!3226272 (= e!2012171 (and tp!1016556 tp!1016555))))

(declare-fun b!3226273 () Bool)

(declare-fun tp!1016557 () Bool)

(assert (=> b!3226273 (= e!2012171 tp!1016557)))

(assert (= (and b!3225590 ((_ is ElementMatch!10019) (regOne!20550 (regex!5260 (rule!7718 separatorToken!241))))) b!3226271))

(assert (= (and b!3225590 ((_ is Concat!15509) (regOne!20550 (regex!5260 (rule!7718 separatorToken!241))))) b!3226272))

(assert (= (and b!3225590 ((_ is Star!10019) (regOne!20550 (regex!5260 (rule!7718 separatorToken!241))))) b!3226273))

(assert (= (and b!3225590 ((_ is Union!10019) (regOne!20550 (regex!5260 (rule!7718 separatorToken!241))))) b!3226274))

(declare-fun b!3226275 () Bool)

(declare-fun e!2012172 () Bool)

(assert (=> b!3226275 (= e!2012172 tp_is_empty!17317)))

(declare-fun b!3226278 () Bool)

(declare-fun tp!1016558 () Bool)

(declare-fun tp!1016559 () Bool)

(assert (=> b!3226278 (= e!2012172 (and tp!1016558 tp!1016559))))

(assert (=> b!3225590 (= tp!1016313 e!2012172)))

(declare-fun b!3226276 () Bool)

(declare-fun tp!1016561 () Bool)

(declare-fun tp!1016560 () Bool)

(assert (=> b!3226276 (= e!2012172 (and tp!1016561 tp!1016560))))

(declare-fun b!3226277 () Bool)

(declare-fun tp!1016562 () Bool)

(assert (=> b!3226277 (= e!2012172 tp!1016562)))

(assert (= (and b!3225590 ((_ is ElementMatch!10019) (regTwo!20550 (regex!5260 (rule!7718 separatorToken!241))))) b!3226275))

(assert (= (and b!3225590 ((_ is Concat!15509) (regTwo!20550 (regex!5260 (rule!7718 separatorToken!241))))) b!3226276))

(assert (= (and b!3225590 ((_ is Star!10019) (regTwo!20550 (regex!5260 (rule!7718 separatorToken!241))))) b!3226277))

(assert (= (and b!3225590 ((_ is Union!10019) (regTwo!20550 (regex!5260 (rule!7718 separatorToken!241))))) b!3226278))

(declare-fun b_lambda!88765 () Bool)

(assert (= b_lambda!88745 (or b!3225296 b_lambda!88765)))

(declare-fun bs!542868 () Bool)

(declare-fun d!885747 () Bool)

(assert (= bs!542868 (and d!885747 b!3225296)))

(assert (=> bs!542868 (= (dynLambda!14754 lambda!118087 (h!41753 (t!240916 tokens!494))) (not (isSeparator!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))))))

(assert (=> b!3225861 d!885747))

(declare-fun b_lambda!88767 () Bool)

(assert (= b_lambda!88749 (or (and b!3225603 b_free!86003 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 rules!2135)))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))))) (and b!3225573 b_free!85999) (and b!3226165 b_free!86015 (= (toChars!7219 (transformation!5260 (h!41752 (t!240915 (t!240915 rules!2135))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))))) (and b!3225293 b_free!85979 (= (toChars!7219 (transformation!5260 (rule!7718 separatorToken!241))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))))) (and b!3226266 b_free!86019 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 (t!240916 tokens!494)))))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))))) (and b!3225304 b_free!85983 (= (toChars!7219 (transformation!5260 (h!41752 rules!2135))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))))) (and b!3225288 b_free!85987 (= (toChars!7219 (transformation!5260 (rule!7718 (h!41753 tokens!494)))) (toChars!7219 (transformation!5260 (rule!7718 (h!41753 (t!240916 tokens!494))))))) b_lambda!88767)))

(declare-fun b_lambda!88769 () Bool)

(assert (= b_lambda!88757 (or d!885351 b_lambda!88769)))

(declare-fun bs!542869 () Bool)

(declare-fun d!885749 () Bool)

(assert (= bs!542869 (and d!885749 d!885351)))

(assert (=> bs!542869 (= (dynLambda!14754 lambda!118097 (h!41753 (list!12952 (seqFromList!3584 tokens!494)))) (rulesProduceIndividualToken!2341 thiss!18206 rules!2135 (h!41753 (list!12952 (seqFromList!3584 tokens!494)))))))

(assert (=> bs!542869 m!3504041))

(assert (=> b!3226107 d!885749))

(check-sat (not b!3225978) (not b!3226194) (not d!885553) (not d!885471) (not b!3226268) (not d!885713) b_and!215933 (not b!3225962) (not b!3226250) (not d!885599) (not d!885469) (not tb!159575) (not b_next!86687) (not d!885645) (not b!3225914) (not b!3226264) (not b!3225322) (not b!3226204) (not b!3226220) (not d!885591) (not b!3226207) (not b!3225903) (not d!885621) b_and!215803 (not d!885631) (not b_lambda!88733) (not b!3225981) (not b!3225704) (not bm!233168) (not b!3226034) (not b!3225963) (not b!3226150) (not b!3225926) (not b!3226092) (not b!3226241) (not b!3226005) (not d!885657) (not b!3225964) (not d!885683) (not b!3226274) (not b!3225705) (not b_lambda!88731) (not b!3226235) b_and!215915 (not b!3226031) (not b!3226224) (not b!3226242) (not b_lambda!88769) (not b!3225957) (not b_lambda!88753) (not d!885731) (not b!3226072) (not b!3225850) (not b!3225959) (not b!3225862) (not b_lambda!88737) (not b!3226033) (not bm!233180) b_and!215917 (not b!3226260) (not b!3226201) (not b!3226245) (not d!885601) (not b!3225989) (not d!885635) (not d!885595) (not b!3225933) (not d!885639) (not d!885725) (not b!3225979) (not d!885671) (not d!885473) (not d!885729) (not d!885579) b_and!215913 (not b!3225853) b_and!215859 (not b!3226214) (not b_next!86689) (not b!3225657) (not b_next!86723) (not b!3226079) (not b!3226233) (not b!3226068) (not d!885641) (not d!885619) (not b!3226223) (not d!885613) (not d!885555) (not b!3225870) (not d!885653) (not b!3226249) (not d!885603) (not b!3226273) (not tb!159585) (not b!3226277) (not d!885439) (not b!3226212) (not b!3226211) (not b!3225658) b_and!215799 (not b!3226218) (not tb!159605) (not b_next!86721) (not b!3226234) b_and!215855 (not d!885637) (not b!3226192) (not d!885723) (not b!3226197) b_and!215807 (not b!3226258) (not b!3226267) (not b!3226074) (not b!3225703) (not b!3226237) (not b!3225851) (not b!3226188) (not b!3226222) (not d!885643) (not d!885625) (not b!3225848) (not d!885597) (not d!885691) (not bs!542869) (not b!3225945) (not d!885719) (not b!3226253) (not b!3225683) (not b!3226149) (not b!3226198) (not b!3226108) (not b_next!86705) (not b!3226239) (not b!3226070) (not d!885467) (not b!3225977) (not b!3226071) (not b!3225881) (not b!3226202) (not b!3226161) (not b!3225860) (not d!885443) (not b_lambda!88735) (not b!3225645) (not b!3225955) (not b!3226278) (not b!3226254) (not b!3225956) (not b!3225849) (not b!3226269) (not bm!233181) (not b_next!86707) (not b!3226210) (not b_next!86719) (not d!885737) (not b_next!86681) (not d!885633) (not b!3225871) (not b_next!86685) (not d!885581) (not b!3225988) (not d!885615) (not b!3225954) (not b!3225912) b_and!215937 (not d!885651) b_and!215931 (not b!3226208) (not b!3225965) (not b!3226259) (not b_lambda!88765) (not d!885609) (not d!885557) (not d!885415) (not b!3226190) (not d!885589) (not b_next!86717) (not b!3226200) (not d!885583) (not b!3226272) (not b!3226255) (not b!3226163) (not b_lambda!88747) (not b!3226073) (not b!3225976) (not d!885607) (not b!3226263) (not b!3226147) (not d!885411) b_and!215935 (not b!3225939) (not b_lambda!88767) (not b!3225646) (not d!885573) (not b!3225905) (not b!3226247) (not b!3225920) (not d!885617) (not b!3226219) (not b!3226206) (not b!3225958) (not b!3226205) (not b!3226257) (not d!885587) (not b!3226265) (not b!3226003) b_and!215919 (not b!3225934) b_and!215921 (not b!3225918) (not b!3226069) (not b!3225935) (not d!885701) (not d!885575) (not b!3226196) (not b!3226251) (not b!3226215) (not b!3226246) (not d!885565) (not d!885463) (not b_next!86701) (not b!3226189) (not d!885685) (not b!3226076) (not b_next!86691) (not b!3226243) (not d!885733) (not b!3225911) (not b!3225865) (not b_next!86703) tp_is_empty!17317 (not d!885673) (not b!3226030) (not b!3225550) (not b_next!86683) (not b!3225941) (not bm!233179) (not d!885623) (not d!885721) (not b!3225970) (not d!885659) (not b!3225980) (not b!3226216) (not b!3226276) (not d!885649) (not b!3226193) (not b!3226238) (not b!3226270) (not d!885629))
(check-sat b_and!215933 (not b_next!86687) b_and!215803 b_and!215915 b_and!215917 b_and!215913 b_and!215799 (not b_next!86705) (not b_next!86717) b_and!215935 (not b_next!86683) b_and!215859 (not b_next!86689) (not b_next!86723) b_and!215807 (not b_next!86721) b_and!215855 (not b_next!86707) (not b_next!86719) (not b_next!86681) (not b_next!86685) b_and!215937 b_and!215931 b_and!215919 b_and!215921 (not b_next!86701) (not b_next!86691) (not b_next!86703))
