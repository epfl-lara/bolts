; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112446 () Bool)

(assert start!112446)

(declare-fun b!1286033 () Bool)

(declare-fun b_free!30235 () Bool)

(declare-fun b_next!30939 () Bool)

(assert (=> b!1286033 (= b_free!30235 (not b_next!30939))))

(declare-fun tp!374521 () Bool)

(declare-fun b_and!85463 () Bool)

(assert (=> b!1286033 (= tp!374521 b_and!85463)))

(declare-fun b_free!30237 () Bool)

(declare-fun b_next!30941 () Bool)

(assert (=> b!1286033 (= b_free!30237 (not b_next!30941))))

(declare-fun tp!374517 () Bool)

(declare-fun b_and!85465 () Bool)

(assert (=> b!1286033 (= tp!374517 b_and!85465)))

(declare-fun b!1286041 () Bool)

(declare-fun b_free!30239 () Bool)

(declare-fun b_next!30943 () Bool)

(assert (=> b!1286041 (= b_free!30239 (not b_next!30943))))

(declare-fun tp!374519 () Bool)

(declare-fun b_and!85467 () Bool)

(assert (=> b!1286041 (= tp!374519 b_and!85467)))

(declare-fun b_free!30241 () Bool)

(declare-fun b_next!30945 () Bool)

(assert (=> b!1286041 (= b_free!30241 (not b_next!30945))))

(declare-fun tp!374525 () Bool)

(declare-fun b_and!85469 () Bool)

(assert (=> b!1286041 (= tp!374525 b_and!85469)))

(declare-fun b!1286042 () Bool)

(declare-fun b_free!30243 () Bool)

(declare-fun b_next!30947 () Bool)

(assert (=> b!1286042 (= b_free!30243 (not b_next!30947))))

(declare-fun tp!374528 () Bool)

(declare-fun b_and!85471 () Bool)

(assert (=> b!1286042 (= tp!374528 b_and!85471)))

(declare-fun b_free!30245 () Bool)

(declare-fun b_next!30949 () Bool)

(assert (=> b!1286042 (= b_free!30245 (not b_next!30949))))

(declare-fun tp!374526 () Bool)

(declare-fun b_and!85473 () Bool)

(assert (=> b!1286042 (= tp!374526 b_and!85473)))

(declare-fun b!1286030 () Bool)

(declare-datatypes ((List!12877 0))(
  ( (Nil!12811) (Cons!12811 (h!18212 (_ BitVec 16)) (t!116824 List!12877)) )
))
(declare-datatypes ((TokenValue!2295 0))(
  ( (FloatLiteralValue!4590 (text!16510 List!12877)) (TokenValueExt!2294 (__x!8419 Int)) (Broken!11475 (value!72449 List!12877)) (Object!2360) (End!2295) (Def!2295) (Underscore!2295) (Match!2295) (Else!2295) (Error!2295) (Case!2295) (If!2295) (Extends!2295) (Abstract!2295) (Class!2295) (Val!2295) (DelimiterValue!4590 (del!2355 List!12877)) (KeywordValue!2301 (value!72450 List!12877)) (CommentValue!4590 (value!72451 List!12877)) (WhitespaceValue!4590 (value!72452 List!12877)) (IndentationValue!2295 (value!72453 List!12877)) (String!15710) (Int32!2295) (Broken!11476 (value!72454 List!12877)) (Boolean!2296) (Unit!18999) (OperatorValue!2298 (op!2355 List!12877)) (IdentifierValue!4590 (value!72455 List!12877)) (IdentifierValue!4591 (value!72456 List!12877)) (WhitespaceValue!4591 (value!72457 List!12877)) (True!4590) (False!4590) (Broken!11477 (value!72458 List!12877)) (Broken!11478 (value!72459 List!12877)) (True!4591) (RightBrace!2295) (RightBracket!2295) (Colon!2295) (Null!2295) (Comma!2295) (LeftBracket!2295) (False!4591) (LeftBrace!2295) (ImaginaryLiteralValue!2295 (text!16511 List!12877)) (StringLiteralValue!6885 (value!72460 List!12877)) (EOFValue!2295 (value!72461 List!12877)) (IdentValue!2295 (value!72462 List!12877)) (DelimiterValue!4591 (value!72463 List!12877)) (DedentValue!2295 (value!72464 List!12877)) (NewLineValue!2295 (value!72465 List!12877)) (IntegerValue!6885 (value!72466 (_ BitVec 32)) (text!16512 List!12877)) (IntegerValue!6886 (value!72467 Int) (text!16513 List!12877)) (Times!2295) (Or!2295) (Equal!2295) (Minus!2295) (Broken!11479 (value!72468 List!12877)) (And!2295) (Div!2295) (LessEqual!2295) (Mod!2295) (Concat!5814) (Not!2295) (Plus!2295) (SpaceValue!2295 (value!72469 List!12877)) (IntegerValue!6887 (value!72470 Int) (text!16514 List!12877)) (StringLiteralValue!6886 (text!16515 List!12877)) (FloatLiteralValue!4591 (text!16516 List!12877)) (BytesLiteralValue!2295 (value!72471 List!12877)) (CommentValue!4591 (value!72472 List!12877)) (StringLiteralValue!6887 (value!72473 List!12877)) (ErrorTokenValue!2295 (msg!2356 List!12877)) )
))
(declare-datatypes ((C!7328 0))(
  ( (C!7329 (val!4224 Int)) )
))
(declare-datatypes ((List!12878 0))(
  ( (Nil!12812) (Cons!12812 (h!18213 C!7328) (t!116825 List!12878)) )
))
(declare-datatypes ((IArray!8427 0))(
  ( (IArray!8428 (innerList!4271 List!12878)) )
))
(declare-datatypes ((Conc!4211 0))(
  ( (Node!4211 (left!11035 Conc!4211) (right!11365 Conc!4211) (csize!8652 Int) (cheight!4422 Int)) (Leaf!6510 (xs!6922 IArray!8427) (csize!8653 Int)) (Empty!4211) )
))
(declare-datatypes ((BalanceConc!8362 0))(
  ( (BalanceConc!8363 (c!211671 Conc!4211)) )
))
(declare-datatypes ((TokenValueInjection!4250 0))(
  ( (TokenValueInjection!4251 (toValue!3388 Int) (toChars!3247 Int)) )
))
(declare-datatypes ((Regex!3519 0))(
  ( (ElementMatch!3519 (c!211672 C!7328)) (Concat!5815 (regOne!7550 Regex!3519) (regTwo!7550 Regex!3519)) (EmptyExpr!3519) (Star!3519 (reg!3848 Regex!3519)) (EmptyLang!3519) (Union!3519 (regOne!7551 Regex!3519) (regTwo!7551 Regex!3519)) )
))
(declare-datatypes ((String!15711 0))(
  ( (String!15712 (value!72474 String)) )
))
(declare-datatypes ((Rule!4210 0))(
  ( (Rule!4211 (regex!2205 Regex!3519) (tag!2467 String!15711) (isSeparator!2205 Bool) (transformation!2205 TokenValueInjection!4250)) )
))
(declare-datatypes ((Token!4072 0))(
  ( (Token!4073 (value!72475 TokenValue!2295) (rule!3944 Rule!4210) (size!10435 Int) (originalCharacters!3067 List!12878)) )
))
(declare-fun t1!34 () Token!4072)

(declare-fun e!824792 () Bool)

(declare-fun e!824778 () Bool)

(declare-fun tp!374518 () Bool)

(declare-fun inv!21 (TokenValue!2295) Bool)

(assert (=> b!1286030 (= e!824792 (and (inv!21 (value!72475 t1!34)) e!824778 tp!374518))))

(declare-fun b!1286031 () Bool)

(declare-fun res!576679 () Bool)

(declare-fun e!824790 () Bool)

(assert (=> b!1286031 (=> (not res!576679) (not e!824790))))

(declare-fun t2!34 () Token!4072)

(assert (=> b!1286031 (= res!576679 (not (= (isSeparator!2205 (rule!3944 t1!34)) (isSeparator!2205 (rule!3944 t2!34)))))))

(declare-fun b!1286032 () Bool)

(declare-fun e!824780 () Bool)

(declare-fun tp!374522 () Bool)

(declare-fun e!824791 () Bool)

(declare-fun inv!17218 (String!15711) Bool)

(declare-fun inv!17221 (TokenValueInjection!4250) Bool)

(assert (=> b!1286032 (= e!824780 (and tp!374522 (inv!17218 (tag!2467 (rule!3944 t2!34))) (inv!17221 (transformation!2205 (rule!3944 t2!34))) e!824791))))

(declare-fun res!576681 () Bool)

(assert (=> start!112446 (=> (not res!576681) (not e!824790))))

(declare-datatypes ((LexerInterface!1900 0))(
  ( (LexerInterfaceExt!1897 (__x!8420 Int)) (Lexer!1898) )
))
(declare-fun thiss!19762 () LexerInterface!1900)

(get-info :version)

(assert (=> start!112446 (= res!576681 ((_ is Lexer!1898) thiss!19762))))

(assert (=> start!112446 e!824790))

(assert (=> start!112446 true))

(declare-fun e!824781 () Bool)

(assert (=> start!112446 e!824781))

(declare-fun inv!17222 (Token!4072) Bool)

(assert (=> start!112446 (and (inv!17222 t1!34) e!824792)))

(declare-fun e!824785 () Bool)

(assert (=> start!112446 (and (inv!17222 t2!34) e!824785)))

(assert (=> b!1286033 (= e!824791 (and tp!374521 tp!374517))))

(declare-fun b!1286034 () Bool)

(declare-fun res!576682 () Bool)

(assert (=> b!1286034 (=> (not res!576682) (not e!824790))))

(declare-datatypes ((List!12879 0))(
  ( (Nil!12813) (Cons!12813 (h!18214 Rule!4210) (t!116826 List!12879)) )
))
(declare-fun rules!2550 () List!12879)

(declare-fun isEmpty!7598 (List!12879) Bool)

(assert (=> b!1286034 (= res!576682 (not (isEmpty!7598 rules!2550)))))

(declare-fun b!1286035 () Bool)

(declare-fun res!576677 () Bool)

(assert (=> b!1286035 (=> (not res!576677) (not e!824790))))

(declare-fun rulesProduceIndividualToken!869 (LexerInterface!1900 List!12879 Token!4072) Bool)

(assert (=> b!1286035 (= res!576677 (rulesProduceIndividualToken!869 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1286036 () Bool)

(declare-fun tp!374527 () Bool)

(assert (=> b!1286036 (= e!824785 (and (inv!21 (value!72475 t2!34)) e!824780 tp!374527))))

(declare-fun b!1286037 () Bool)

(declare-fun e!824786 () Bool)

(declare-fun tp!374523 () Bool)

(assert (=> b!1286037 (= e!824781 (and e!824786 tp!374523))))

(declare-fun b!1286038 () Bool)

(declare-fun res!576675 () Bool)

(assert (=> b!1286038 (=> (not res!576675) (not e!824790))))

(declare-fun rulesInvariant!1770 (LexerInterface!1900 List!12879) Bool)

(assert (=> b!1286038 (= res!576675 (rulesInvariant!1770 thiss!19762 rules!2550))))

(declare-fun b!1286039 () Bool)

(declare-fun e!824788 () Bool)

(assert (=> b!1286039 (= e!824790 e!824788)))

(declare-fun res!576680 () Bool)

(assert (=> b!1286039 (=> (not res!576680) (not e!824788))))

(declare-fun lt!423830 () BalanceConc!8362)

(declare-fun size!10436 (BalanceConc!8362) Int)

(assert (=> b!1286039 (= res!576680 (> (size!10436 lt!423830) 0))))

(declare-fun charsOf!1177 (Token!4072) BalanceConc!8362)

(assert (=> b!1286039 (= lt!423830 (charsOf!1177 t2!34))))

(declare-fun b!1286040 () Bool)

(declare-fun res!576674 () Bool)

(assert (=> b!1286040 (=> (not res!576674) (not e!824788))))

(declare-fun separableTokensPredicate!183 (LexerInterface!1900 Token!4072 Token!4072 List!12879) Bool)

(assert (=> b!1286040 (= res!576674 (not (separableTokensPredicate!183 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun e!824783 () Bool)

(assert (=> b!1286041 (= e!824783 (and tp!374519 tp!374525))))

(declare-fun e!824777 () Bool)

(assert (=> b!1286042 (= e!824777 (and tp!374528 tp!374526))))

(declare-fun tp!374520 () Bool)

(declare-fun b!1286043 () Bool)

(assert (=> b!1286043 (= e!824778 (and tp!374520 (inv!17218 (tag!2467 (rule!3944 t1!34))) (inv!17221 (transformation!2205 (rule!3944 t1!34))) e!824783))))

(declare-fun b!1286044 () Bool)

(declare-fun tp!374524 () Bool)

(assert (=> b!1286044 (= e!824786 (and tp!374524 (inv!17218 (tag!2467 (h!18214 rules!2550))) (inv!17221 (transformation!2205 (h!18214 rules!2550))) e!824777))))

(declare-fun b!1286045 () Bool)

(declare-fun res!576676 () Bool)

(assert (=> b!1286045 (=> (not res!576676) (not e!824790))))

(assert (=> b!1286045 (= res!576676 (rulesProduceIndividualToken!869 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1286046 () Bool)

(declare-fun validRegex!1513 (Regex!3519) Bool)

(declare-fun rulesRegex!90 (LexerInterface!1900 List!12879) Regex!3519)

(assert (=> b!1286046 (= e!824788 (not (validRegex!1513 (rulesRegex!90 thiss!19762 rules!2550))))))

(declare-fun lt!423829 () List!12878)

(declare-fun ++!3233 (List!12878 List!12878) List!12878)

(declare-fun list!4761 (BalanceConc!8362) List!12878)

(declare-fun apply!2743 (BalanceConc!8362 Int) C!7328)

(assert (=> b!1286046 (= lt!423829 (++!3233 (list!4761 (charsOf!1177 t1!34)) (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)))))

(declare-fun b!1286047 () Bool)

(declare-fun res!576678 () Bool)

(assert (=> b!1286047 (=> (not res!576678) (not e!824788))))

(declare-fun sepAndNonSepRulesDisjointChars!578 (List!12879 List!12879) Bool)

(assert (=> b!1286047 (= res!576678 (sepAndNonSepRulesDisjointChars!578 rules!2550 rules!2550))))

(assert (= (and start!112446 res!576681) b!1286034))

(assert (= (and b!1286034 res!576682) b!1286038))

(assert (= (and b!1286038 res!576675) b!1286045))

(assert (= (and b!1286045 res!576676) b!1286035))

(assert (= (and b!1286035 res!576677) b!1286031))

(assert (= (and b!1286031 res!576679) b!1286039))

(assert (= (and b!1286039 res!576680) b!1286047))

(assert (= (and b!1286047 res!576678) b!1286040))

(assert (= (and b!1286040 res!576674) b!1286046))

(assert (= b!1286044 b!1286042))

(assert (= b!1286037 b!1286044))

(assert (= (and start!112446 ((_ is Cons!12813) rules!2550)) b!1286037))

(assert (= b!1286043 b!1286041))

(assert (= b!1286030 b!1286043))

(assert (= start!112446 b!1286030))

(assert (= b!1286032 b!1286033))

(assert (= b!1286036 b!1286032))

(assert (= start!112446 b!1286036))

(declare-fun m!1436299 () Bool)

(assert (=> b!1286046 m!1436299))

(assert (=> b!1286046 m!1436299))

(declare-fun m!1436301 () Bool)

(assert (=> b!1286046 m!1436301))

(declare-fun m!1436303 () Bool)

(assert (=> b!1286046 m!1436303))

(assert (=> b!1286046 m!1436301))

(declare-fun m!1436305 () Bool)

(assert (=> b!1286046 m!1436305))

(declare-fun m!1436307 () Bool)

(assert (=> b!1286046 m!1436307))

(declare-fun m!1436309 () Bool)

(assert (=> b!1286046 m!1436309))

(assert (=> b!1286046 m!1436307))

(declare-fun m!1436311 () Bool)

(assert (=> b!1286038 m!1436311))

(declare-fun m!1436313 () Bool)

(assert (=> b!1286039 m!1436313))

(declare-fun m!1436315 () Bool)

(assert (=> b!1286039 m!1436315))

(declare-fun m!1436317 () Bool)

(assert (=> b!1286030 m!1436317))

(declare-fun m!1436319 () Bool)

(assert (=> b!1286047 m!1436319))

(declare-fun m!1436321 () Bool)

(assert (=> b!1286045 m!1436321))

(declare-fun m!1436323 () Bool)

(assert (=> b!1286036 m!1436323))

(declare-fun m!1436325 () Bool)

(assert (=> b!1286044 m!1436325))

(declare-fun m!1436327 () Bool)

(assert (=> b!1286044 m!1436327))

(declare-fun m!1436329 () Bool)

(assert (=> b!1286035 m!1436329))

(declare-fun m!1436331 () Bool)

(assert (=> b!1286043 m!1436331))

(declare-fun m!1436333 () Bool)

(assert (=> b!1286043 m!1436333))

(declare-fun m!1436335 () Bool)

(assert (=> b!1286040 m!1436335))

(declare-fun m!1436337 () Bool)

(assert (=> start!112446 m!1436337))

(declare-fun m!1436339 () Bool)

(assert (=> start!112446 m!1436339))

(declare-fun m!1436341 () Bool)

(assert (=> b!1286032 m!1436341))

(declare-fun m!1436343 () Bool)

(assert (=> b!1286032 m!1436343))

(declare-fun m!1436345 () Bool)

(assert (=> b!1286034 m!1436345))

(check-sat b_and!85463 b_and!85467 (not start!112446) (not b!1286037) (not b!1286036) (not b_next!30947) (not b!1286044) (not b_next!30945) (not b!1286039) (not b!1286035) (not b!1286040) (not b!1286030) (not b_next!30943) (not b!1286038) (not b!1286045) (not b!1286046) (not b!1286032) b_and!85471 (not b!1286047) (not b_next!30939) (not b!1286034) (not b!1286043) b_and!85469 b_and!85473 (not b_next!30949) b_and!85465 (not b_next!30941))
(check-sat b_and!85463 b_and!85467 b_and!85469 (not b_next!30947) (not b_next!30945) (not b_next!30943) b_and!85471 (not b_next!30939) b_and!85473 (not b_next!30949) b_and!85465 (not b_next!30941))
(get-model)

(declare-fun d!362201 () Bool)

(assert (=> d!362201 (= (isEmpty!7598 rules!2550) ((_ is Nil!12813) rules!2550))))

(assert (=> b!1286034 d!362201))

(declare-fun d!362205 () Bool)

(declare-fun lt!423860 () Bool)

(declare-fun e!824891 () Bool)

(assert (=> d!362205 (= lt!423860 e!824891)))

(declare-fun res!576759 () Bool)

(assert (=> d!362205 (=> (not res!576759) (not e!824891))))

(declare-datatypes ((List!12883 0))(
  ( (Nil!12817) (Cons!12817 (h!18218 Token!4072) (t!116864 List!12883)) )
))
(declare-datatypes ((IArray!8431 0))(
  ( (IArray!8432 (innerList!4273 List!12883)) )
))
(declare-datatypes ((Conc!4213 0))(
  ( (Node!4213 (left!11037 Conc!4213) (right!11367 Conc!4213) (csize!8656 Int) (cheight!4424 Int)) (Leaf!6512 (xs!6924 IArray!8431) (csize!8657 Int)) (Empty!4213) )
))
(declare-datatypes ((BalanceConc!8366 0))(
  ( (BalanceConc!8367 (c!211708 Conc!4213)) )
))
(declare-fun list!4764 (BalanceConc!8366) List!12883)

(declare-datatypes ((tuple2!12630 0))(
  ( (tuple2!12631 (_1!7201 BalanceConc!8366) (_2!7201 BalanceConc!8362)) )
))
(declare-fun lex!771 (LexerInterface!1900 List!12879 BalanceConc!8362) tuple2!12630)

(declare-fun print!708 (LexerInterface!1900 BalanceConc!8366) BalanceConc!8362)

(declare-fun singletonSeq!782 (Token!4072) BalanceConc!8366)

(assert (=> d!362205 (= res!576759 (= (list!4764 (_1!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t1!34))))) (list!4764 (singletonSeq!782 t1!34))))))

(declare-fun e!824890 () Bool)

(assert (=> d!362205 (= lt!423860 e!824890)))

(declare-fun res!576760 () Bool)

(assert (=> d!362205 (=> (not res!576760) (not e!824890))))

(declare-fun lt!423859 () tuple2!12630)

(declare-fun size!10440 (BalanceConc!8366) Int)

(assert (=> d!362205 (= res!576760 (= (size!10440 (_1!7201 lt!423859)) 1))))

(assert (=> d!362205 (= lt!423859 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t1!34))))))

(assert (=> d!362205 (not (isEmpty!7598 rules!2550))))

(assert (=> d!362205 (= (rulesProduceIndividualToken!869 thiss!19762 rules!2550 t1!34) lt!423860)))

(declare-fun b!1286195 () Bool)

(declare-fun res!576761 () Bool)

(assert (=> b!1286195 (=> (not res!576761) (not e!824890))))

(declare-fun apply!2747 (BalanceConc!8366 Int) Token!4072)

(assert (=> b!1286195 (= res!576761 (= (apply!2747 (_1!7201 lt!423859) 0) t1!34))))

(declare-fun b!1286196 () Bool)

(declare-fun isEmpty!7601 (BalanceConc!8362) Bool)

(assert (=> b!1286196 (= e!824890 (isEmpty!7601 (_2!7201 lt!423859)))))

(declare-fun b!1286197 () Bool)

(assert (=> b!1286197 (= e!824891 (isEmpty!7601 (_2!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t1!34))))))))

(assert (= (and d!362205 res!576760) b!1286195))

(assert (= (and b!1286195 res!576761) b!1286196))

(assert (= (and d!362205 res!576759) b!1286197))

(declare-fun m!1436493 () Bool)

(assert (=> d!362205 m!1436493))

(declare-fun m!1436495 () Bool)

(assert (=> d!362205 m!1436495))

(assert (=> d!362205 m!1436493))

(assert (=> d!362205 m!1436345))

(declare-fun m!1436497 () Bool)

(assert (=> d!362205 m!1436497))

(assert (=> d!362205 m!1436493))

(declare-fun m!1436499 () Bool)

(assert (=> d!362205 m!1436499))

(assert (=> d!362205 m!1436499))

(declare-fun m!1436501 () Bool)

(assert (=> d!362205 m!1436501))

(declare-fun m!1436503 () Bool)

(assert (=> d!362205 m!1436503))

(declare-fun m!1436505 () Bool)

(assert (=> b!1286195 m!1436505))

(declare-fun m!1436507 () Bool)

(assert (=> b!1286196 m!1436507))

(assert (=> b!1286197 m!1436493))

(assert (=> b!1286197 m!1436493))

(assert (=> b!1286197 m!1436499))

(assert (=> b!1286197 m!1436499))

(assert (=> b!1286197 m!1436501))

(declare-fun m!1436509 () Bool)

(assert (=> b!1286197 m!1436509))

(assert (=> b!1286045 d!362205))

(declare-fun d!362243 () Bool)

(assert (=> d!362243 (= (inv!17218 (tag!2467 (rule!3944 t1!34))) (= (mod (str.len (value!72474 (tag!2467 (rule!3944 t1!34)))) 2) 0))))

(assert (=> b!1286043 d!362243))

(declare-fun d!362245 () Bool)

(declare-fun res!576764 () Bool)

(declare-fun e!824894 () Bool)

(assert (=> d!362245 (=> (not res!576764) (not e!824894))))

(declare-fun semiInverseModEq!832 (Int Int) Bool)

(assert (=> d!362245 (= res!576764 (semiInverseModEq!832 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (toValue!3388 (transformation!2205 (rule!3944 t1!34)))))))

(assert (=> d!362245 (= (inv!17221 (transformation!2205 (rule!3944 t1!34))) e!824894)))

(declare-fun b!1286200 () Bool)

(declare-fun equivClasses!791 (Int Int) Bool)

(assert (=> b!1286200 (= e!824894 (equivClasses!791 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (toValue!3388 (transformation!2205 (rule!3944 t1!34)))))))

(assert (= (and d!362245 res!576764) b!1286200))

(declare-fun m!1436511 () Bool)

(assert (=> d!362245 m!1436511))

(declare-fun m!1436513 () Bool)

(assert (=> b!1286200 m!1436513))

(assert (=> b!1286043 d!362245))

(declare-fun d!362247 () Bool)

(assert (=> d!362247 (= (inv!17218 (tag!2467 (h!18214 rules!2550))) (= (mod (str.len (value!72474 (tag!2467 (h!18214 rules!2550)))) 2) 0))))

(assert (=> b!1286044 d!362247))

(declare-fun d!362249 () Bool)

(declare-fun res!576765 () Bool)

(declare-fun e!824895 () Bool)

(assert (=> d!362249 (=> (not res!576765) (not e!824895))))

(assert (=> d!362249 (= res!576765 (semiInverseModEq!832 (toChars!3247 (transformation!2205 (h!18214 rules!2550))) (toValue!3388 (transformation!2205 (h!18214 rules!2550)))))))

(assert (=> d!362249 (= (inv!17221 (transformation!2205 (h!18214 rules!2550))) e!824895)))

(declare-fun b!1286201 () Bool)

(assert (=> b!1286201 (= e!824895 (equivClasses!791 (toChars!3247 (transformation!2205 (h!18214 rules!2550))) (toValue!3388 (transformation!2205 (h!18214 rules!2550)))))))

(assert (= (and d!362249 res!576765) b!1286201))

(declare-fun m!1436515 () Bool)

(assert (=> d!362249 m!1436515))

(declare-fun m!1436517 () Bool)

(assert (=> b!1286201 m!1436517))

(assert (=> b!1286044 d!362249))

(declare-fun d!362251 () Bool)

(declare-fun res!576770 () Bool)

(declare-fun e!824900 () Bool)

(assert (=> d!362251 (=> res!576770 e!824900)))

(assert (=> d!362251 (= res!576770 (not ((_ is Cons!12813) rules!2550)))))

(assert (=> d!362251 (= (sepAndNonSepRulesDisjointChars!578 rules!2550 rules!2550) e!824900)))

(declare-fun b!1286206 () Bool)

(declare-fun e!824901 () Bool)

(assert (=> b!1286206 (= e!824900 e!824901)))

(declare-fun res!576771 () Bool)

(assert (=> b!1286206 (=> (not res!576771) (not e!824901))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!276 (Rule!4210 List!12879) Bool)

(assert (=> b!1286206 (= res!576771 (ruleDisjointCharsFromAllFromOtherType!276 (h!18214 rules!2550) rules!2550))))

(declare-fun b!1286207 () Bool)

(assert (=> b!1286207 (= e!824901 (sepAndNonSepRulesDisjointChars!578 rules!2550 (t!116826 rules!2550)))))

(assert (= (and d!362251 (not res!576770)) b!1286206))

(assert (= (and b!1286206 res!576771) b!1286207))

(declare-fun m!1436519 () Bool)

(assert (=> b!1286206 m!1436519))

(declare-fun m!1436521 () Bool)

(assert (=> b!1286207 m!1436521))

(assert (=> b!1286047 d!362251))

(declare-fun d!362253 () Bool)

(declare-fun lt!423862 () Bool)

(declare-fun e!824903 () Bool)

(assert (=> d!362253 (= lt!423862 e!824903)))

(declare-fun res!576772 () Bool)

(assert (=> d!362253 (=> (not res!576772) (not e!824903))))

(assert (=> d!362253 (= res!576772 (= (list!4764 (_1!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t2!34))))) (list!4764 (singletonSeq!782 t2!34))))))

(declare-fun e!824902 () Bool)

(assert (=> d!362253 (= lt!423862 e!824902)))

(declare-fun res!576773 () Bool)

(assert (=> d!362253 (=> (not res!576773) (not e!824902))))

(declare-fun lt!423861 () tuple2!12630)

(assert (=> d!362253 (= res!576773 (= (size!10440 (_1!7201 lt!423861)) 1))))

(assert (=> d!362253 (= lt!423861 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t2!34))))))

(assert (=> d!362253 (not (isEmpty!7598 rules!2550))))

(assert (=> d!362253 (= (rulesProduceIndividualToken!869 thiss!19762 rules!2550 t2!34) lt!423862)))

(declare-fun b!1286208 () Bool)

(declare-fun res!576774 () Bool)

(assert (=> b!1286208 (=> (not res!576774) (not e!824902))))

(assert (=> b!1286208 (= res!576774 (= (apply!2747 (_1!7201 lt!423861) 0) t2!34))))

(declare-fun b!1286209 () Bool)

(assert (=> b!1286209 (= e!824902 (isEmpty!7601 (_2!7201 lt!423861)))))

(declare-fun b!1286210 () Bool)

(assert (=> b!1286210 (= e!824903 (isEmpty!7601 (_2!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t2!34))))))))

(assert (= (and d!362253 res!576773) b!1286208))

(assert (= (and b!1286208 res!576774) b!1286209))

(assert (= (and d!362253 res!576772) b!1286210))

(declare-fun m!1436523 () Bool)

(assert (=> d!362253 m!1436523))

(declare-fun m!1436525 () Bool)

(assert (=> d!362253 m!1436525))

(assert (=> d!362253 m!1436523))

(assert (=> d!362253 m!1436345))

(declare-fun m!1436527 () Bool)

(assert (=> d!362253 m!1436527))

(assert (=> d!362253 m!1436523))

(declare-fun m!1436529 () Bool)

(assert (=> d!362253 m!1436529))

(assert (=> d!362253 m!1436529))

(declare-fun m!1436531 () Bool)

(assert (=> d!362253 m!1436531))

(declare-fun m!1436533 () Bool)

(assert (=> d!362253 m!1436533))

(declare-fun m!1436535 () Bool)

(assert (=> b!1286208 m!1436535))

(declare-fun m!1436537 () Bool)

(assert (=> b!1286209 m!1436537))

(assert (=> b!1286210 m!1436523))

(assert (=> b!1286210 m!1436523))

(assert (=> b!1286210 m!1436529))

(assert (=> b!1286210 m!1436529))

(assert (=> b!1286210 m!1436531))

(declare-fun m!1436539 () Bool)

(assert (=> b!1286210 m!1436539))

(assert (=> b!1286035 d!362253))

(declare-fun d!362255 () Bool)

(declare-fun list!4765 (Conc!4211) List!12878)

(assert (=> d!362255 (= (list!4761 (charsOf!1177 t1!34)) (list!4765 (c!211671 (charsOf!1177 t1!34))))))

(declare-fun bs!328097 () Bool)

(assert (= bs!328097 d!362255))

(declare-fun m!1436541 () Bool)

(assert (=> bs!328097 m!1436541))

(assert (=> b!1286046 d!362255))

(declare-fun b!1286221 () Bool)

(declare-fun res!576779 () Bool)

(declare-fun e!824909 () Bool)

(assert (=> b!1286221 (=> (not res!576779) (not e!824909))))

(declare-fun lt!423865 () List!12878)

(declare-fun size!10441 (List!12878) Int)

(assert (=> b!1286221 (= res!576779 (= (size!10441 lt!423865) (+ (size!10441 (list!4761 (charsOf!1177 t1!34))) (size!10441 (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)))))))

(declare-fun d!362257 () Bool)

(assert (=> d!362257 e!824909))

(declare-fun res!576780 () Bool)

(assert (=> d!362257 (=> (not res!576780) (not e!824909))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1813 (List!12878) (InoxSet C!7328))

(assert (=> d!362257 (= res!576780 (= (content!1813 lt!423865) ((_ map or) (content!1813 (list!4761 (charsOf!1177 t1!34))) (content!1813 (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)))))))

(declare-fun e!824908 () List!12878)

(assert (=> d!362257 (= lt!423865 e!824908)))

(declare-fun c!211693 () Bool)

(assert (=> d!362257 (= c!211693 ((_ is Nil!12812) (list!4761 (charsOf!1177 t1!34))))))

(assert (=> d!362257 (= (++!3233 (list!4761 (charsOf!1177 t1!34)) (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)) lt!423865)))

(declare-fun b!1286219 () Bool)

(assert (=> b!1286219 (= e!824908 (Cons!12812 (apply!2743 lt!423830 0) Nil!12812))))

(declare-fun b!1286222 () Bool)

(assert (=> b!1286222 (= e!824909 (or (not (= (Cons!12812 (apply!2743 lt!423830 0) Nil!12812) Nil!12812)) (= lt!423865 (list!4761 (charsOf!1177 t1!34)))))))

(declare-fun b!1286220 () Bool)

(assert (=> b!1286220 (= e!824908 (Cons!12812 (h!18213 (list!4761 (charsOf!1177 t1!34))) (++!3233 (t!116825 (list!4761 (charsOf!1177 t1!34))) (Cons!12812 (apply!2743 lt!423830 0) Nil!12812))))))

(assert (= (and d!362257 c!211693) b!1286219))

(assert (= (and d!362257 (not c!211693)) b!1286220))

(assert (= (and d!362257 res!576780) b!1286221))

(assert (= (and b!1286221 res!576779) b!1286222))

(declare-fun m!1436543 () Bool)

(assert (=> b!1286221 m!1436543))

(assert (=> b!1286221 m!1436301))

(declare-fun m!1436545 () Bool)

(assert (=> b!1286221 m!1436545))

(declare-fun m!1436547 () Bool)

(assert (=> b!1286221 m!1436547))

(declare-fun m!1436549 () Bool)

(assert (=> d!362257 m!1436549))

(assert (=> d!362257 m!1436301))

(declare-fun m!1436551 () Bool)

(assert (=> d!362257 m!1436551))

(declare-fun m!1436553 () Bool)

(assert (=> d!362257 m!1436553))

(declare-fun m!1436555 () Bool)

(assert (=> b!1286220 m!1436555))

(assert (=> b!1286046 d!362257))

(declare-fun d!362259 () Bool)

(declare-fun lt!423868 () C!7328)

(declare-fun apply!2748 (List!12878 Int) C!7328)

(assert (=> d!362259 (= lt!423868 (apply!2748 (list!4761 lt!423830) 0))))

(declare-fun apply!2749 (Conc!4211 Int) C!7328)

(assert (=> d!362259 (= lt!423868 (apply!2749 (c!211671 lt!423830) 0))))

(declare-fun e!824912 () Bool)

(assert (=> d!362259 e!824912))

(declare-fun res!576783 () Bool)

(assert (=> d!362259 (=> (not res!576783) (not e!824912))))

(assert (=> d!362259 (= res!576783 (<= 0 0))))

(assert (=> d!362259 (= (apply!2743 lt!423830 0) lt!423868)))

(declare-fun b!1286225 () Bool)

(assert (=> b!1286225 (= e!824912 (< 0 (size!10436 lt!423830)))))

(assert (= (and d!362259 res!576783) b!1286225))

(declare-fun m!1436557 () Bool)

(assert (=> d!362259 m!1436557))

(assert (=> d!362259 m!1436557))

(declare-fun m!1436559 () Bool)

(assert (=> d!362259 m!1436559))

(declare-fun m!1436561 () Bool)

(assert (=> d!362259 m!1436561))

(assert (=> b!1286225 m!1436313))

(assert (=> b!1286046 d!362259))

(declare-fun b!1286244 () Bool)

(declare-fun e!824930 () Bool)

(declare-fun call!88463 () Bool)

(assert (=> b!1286244 (= e!824930 call!88463)))

(declare-fun b!1286245 () Bool)

(declare-fun e!824929 () Bool)

(declare-fun call!88462 () Bool)

(assert (=> b!1286245 (= e!824929 call!88462)))

(declare-fun b!1286246 () Bool)

(declare-fun res!576798 () Bool)

(declare-fun e!824927 () Bool)

(assert (=> b!1286246 (=> res!576798 e!824927)))

(assert (=> b!1286246 (= res!576798 (not ((_ is Concat!5815) (rulesRegex!90 thiss!19762 rules!2550))))))

(declare-fun e!824928 () Bool)

(assert (=> b!1286246 (= e!824928 e!824927)))

(declare-fun b!1286247 () Bool)

(declare-fun e!824933 () Bool)

(assert (=> b!1286247 (= e!824933 e!824928)))

(declare-fun c!211699 () Bool)

(assert (=> b!1286247 (= c!211699 ((_ is Union!3519) (rulesRegex!90 thiss!19762 rules!2550)))))

(declare-fun b!1286248 () Bool)

(declare-fun res!576794 () Bool)

(assert (=> b!1286248 (=> (not res!576794) (not e!824929))))

(declare-fun call!88461 () Bool)

(assert (=> b!1286248 (= res!576794 call!88461)))

(assert (=> b!1286248 (= e!824928 e!824929)))

(declare-fun bm!88456 () Bool)

(assert (=> bm!88456 (= call!88462 call!88463)))

(declare-fun bm!88457 () Bool)

(declare-fun c!211698 () Bool)

(assert (=> bm!88457 (= call!88463 (validRegex!1513 (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550))))))))

(declare-fun b!1286249 () Bool)

(declare-fun e!824932 () Bool)

(assert (=> b!1286249 (= e!824932 e!824933)))

(assert (=> b!1286249 (= c!211698 ((_ is Star!3519) (rulesRegex!90 thiss!19762 rules!2550)))))

(declare-fun b!1286250 () Bool)

(declare-fun e!824931 () Bool)

(assert (=> b!1286250 (= e!824931 call!88462)))

(declare-fun d!362261 () Bool)

(declare-fun res!576797 () Bool)

(assert (=> d!362261 (=> res!576797 e!824932)))

(assert (=> d!362261 (= res!576797 ((_ is ElementMatch!3519) (rulesRegex!90 thiss!19762 rules!2550)))))

(assert (=> d!362261 (= (validRegex!1513 (rulesRegex!90 thiss!19762 rules!2550)) e!824932)))

(declare-fun b!1286251 () Bool)

(assert (=> b!1286251 (= e!824927 e!824931)))

(declare-fun res!576796 () Bool)

(assert (=> b!1286251 (=> (not res!576796) (not e!824931))))

(assert (=> b!1286251 (= res!576796 call!88461)))

(declare-fun bm!88458 () Bool)

(assert (=> bm!88458 (= call!88461 (validRegex!1513 (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550)))))))

(declare-fun b!1286252 () Bool)

(assert (=> b!1286252 (= e!824933 e!824930)))

(declare-fun res!576795 () Bool)

(declare-fun nullable!1115 (Regex!3519) Bool)

(assert (=> b!1286252 (= res!576795 (not (nullable!1115 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)))))))

(assert (=> b!1286252 (=> (not res!576795) (not e!824930))))

(assert (= (and d!362261 (not res!576797)) b!1286249))

(assert (= (and b!1286249 c!211698) b!1286252))

(assert (= (and b!1286249 (not c!211698)) b!1286247))

(assert (= (and b!1286252 res!576795) b!1286244))

(assert (= (and b!1286247 c!211699) b!1286248))

(assert (= (and b!1286247 (not c!211699)) b!1286246))

(assert (= (and b!1286248 res!576794) b!1286245))

(assert (= (and b!1286246 (not res!576798)) b!1286251))

(assert (= (and b!1286251 res!576796) b!1286250))

(assert (= (or b!1286248 b!1286251) bm!88458))

(assert (= (or b!1286245 b!1286250) bm!88456))

(assert (= (or b!1286244 bm!88456) bm!88457))

(declare-fun m!1436563 () Bool)

(assert (=> bm!88457 m!1436563))

(declare-fun m!1436565 () Bool)

(assert (=> bm!88458 m!1436565))

(declare-fun m!1436567 () Bool)

(assert (=> b!1286252 m!1436567))

(assert (=> b!1286046 d!362261))

(declare-fun d!362263 () Bool)

(declare-fun lt!423871 () BalanceConc!8362)

(assert (=> d!362263 (= (list!4761 lt!423871) (originalCharacters!3067 t1!34))))

(declare-fun dynLambda!5580 (Int TokenValue!2295) BalanceConc!8362)

(assert (=> d!362263 (= lt!423871 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34)))))

(assert (=> d!362263 (= (charsOf!1177 t1!34) lt!423871)))

(declare-fun b_lambda!36663 () Bool)

(assert (=> (not b_lambda!36663) (not d!362263)))

(declare-fun t!116849 () Bool)

(declare-fun tb!69145 () Bool)

(assert (=> (and b!1286033 (= (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (toChars!3247 (transformation!2205 (rule!3944 t1!34)))) t!116849) tb!69145))

(declare-fun b!1286257 () Bool)

(declare-fun e!824936 () Bool)

(declare-fun tp!374576 () Bool)

(declare-fun inv!17225 (Conc!4211) Bool)

(assert (=> b!1286257 (= e!824936 (and (inv!17225 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34)))) tp!374576))))

(declare-fun result!83738 () Bool)

(declare-fun inv!17226 (BalanceConc!8362) Bool)

(assert (=> tb!69145 (= result!83738 (and (inv!17226 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34))) e!824936))))

(assert (= tb!69145 b!1286257))

(declare-fun m!1436569 () Bool)

(assert (=> b!1286257 m!1436569))

(declare-fun m!1436571 () Bool)

(assert (=> tb!69145 m!1436571))

(assert (=> d!362263 t!116849))

(declare-fun b_and!85503 () Bool)

(assert (= b_and!85465 (and (=> t!116849 result!83738) b_and!85503)))

(declare-fun t!116851 () Bool)

(declare-fun tb!69147 () Bool)

(assert (=> (and b!1286041 (= (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (toChars!3247 (transformation!2205 (rule!3944 t1!34)))) t!116851) tb!69147))

(declare-fun result!83742 () Bool)

(assert (= result!83742 result!83738))

(assert (=> d!362263 t!116851))

(declare-fun b_and!85505 () Bool)

(assert (= b_and!85469 (and (=> t!116851 result!83742) b_and!85505)))

(declare-fun t!116853 () Bool)

(declare-fun tb!69149 () Bool)

(assert (=> (and b!1286042 (= (toChars!3247 (transformation!2205 (h!18214 rules!2550))) (toChars!3247 (transformation!2205 (rule!3944 t1!34)))) t!116853) tb!69149))

(declare-fun result!83744 () Bool)

(assert (= result!83744 result!83738))

(assert (=> d!362263 t!116853))

(declare-fun b_and!85507 () Bool)

(assert (= b_and!85473 (and (=> t!116853 result!83744) b_and!85507)))

(declare-fun m!1436573 () Bool)

(assert (=> d!362263 m!1436573))

(declare-fun m!1436575 () Bool)

(assert (=> d!362263 m!1436575))

(assert (=> b!1286046 d!362263))

(declare-fun d!362265 () Bool)

(declare-datatypes ((Unit!19002 0))(
  ( (Unit!19003) )
))
(declare-fun lt!423874 () Unit!19002)

(declare-fun lemma!34 (List!12879 LexerInterface!1900 List!12879) Unit!19002)

(assert (=> d!362265 (= lt!423874 (lemma!34 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!50419 () Int)

(declare-datatypes ((List!12884 0))(
  ( (Nil!12818) (Cons!12818 (h!18219 Regex!3519) (t!116865 List!12884)) )
))
(declare-fun generalisedUnion!38 (List!12884) Regex!3519)

(declare-fun map!2790 (List!12879 Int) List!12884)

(assert (=> d!362265 (= (rulesRegex!90 thiss!19762 rules!2550) (generalisedUnion!38 (map!2790 rules!2550 lambda!50419)))))

(declare-fun bs!328098 () Bool)

(assert (= bs!328098 d!362265))

(declare-fun m!1436577 () Bool)

(assert (=> bs!328098 m!1436577))

(declare-fun m!1436579 () Bool)

(assert (=> bs!328098 m!1436579))

(assert (=> bs!328098 m!1436579))

(declare-fun m!1436581 () Bool)

(assert (=> bs!328098 m!1436581))

(assert (=> b!1286046 d!362265))

(declare-fun d!362267 () Bool)

(declare-fun res!576803 () Bool)

(declare-fun e!824939 () Bool)

(assert (=> d!362267 (=> (not res!576803) (not e!824939))))

(declare-fun isEmpty!7602 (List!12878) Bool)

(assert (=> d!362267 (= res!576803 (not (isEmpty!7602 (originalCharacters!3067 t1!34))))))

(assert (=> d!362267 (= (inv!17222 t1!34) e!824939)))

(declare-fun b!1286262 () Bool)

(declare-fun res!576804 () Bool)

(assert (=> b!1286262 (=> (not res!576804) (not e!824939))))

(assert (=> b!1286262 (= res!576804 (= (originalCharacters!3067 t1!34) (list!4761 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34)))))))

(declare-fun b!1286263 () Bool)

(assert (=> b!1286263 (= e!824939 (= (size!10435 t1!34) (size!10441 (originalCharacters!3067 t1!34))))))

(assert (= (and d!362267 res!576803) b!1286262))

(assert (= (and b!1286262 res!576804) b!1286263))

(declare-fun b_lambda!36665 () Bool)

(assert (=> (not b_lambda!36665) (not b!1286262)))

(assert (=> b!1286262 t!116849))

(declare-fun b_and!85509 () Bool)

(assert (= b_and!85503 (and (=> t!116849 result!83738) b_and!85509)))

(assert (=> b!1286262 t!116851))

(declare-fun b_and!85511 () Bool)

(assert (= b_and!85505 (and (=> t!116851 result!83742) b_and!85511)))

(assert (=> b!1286262 t!116853))

(declare-fun b_and!85513 () Bool)

(assert (= b_and!85507 (and (=> t!116853 result!83744) b_and!85513)))

(declare-fun m!1436583 () Bool)

(assert (=> d!362267 m!1436583))

(assert (=> b!1286262 m!1436575))

(assert (=> b!1286262 m!1436575))

(declare-fun m!1436585 () Bool)

(assert (=> b!1286262 m!1436585))

(declare-fun m!1436587 () Bool)

(assert (=> b!1286263 m!1436587))

(assert (=> start!112446 d!362267))

(declare-fun d!362269 () Bool)

(declare-fun res!576805 () Bool)

(declare-fun e!824940 () Bool)

(assert (=> d!362269 (=> (not res!576805) (not e!824940))))

(assert (=> d!362269 (= res!576805 (not (isEmpty!7602 (originalCharacters!3067 t2!34))))))

(assert (=> d!362269 (= (inv!17222 t2!34) e!824940)))

(declare-fun b!1286264 () Bool)

(declare-fun res!576806 () Bool)

(assert (=> b!1286264 (=> (not res!576806) (not e!824940))))

(assert (=> b!1286264 (= res!576806 (= (originalCharacters!3067 t2!34) (list!4761 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34)))))))

(declare-fun b!1286265 () Bool)

(assert (=> b!1286265 (= e!824940 (= (size!10435 t2!34) (size!10441 (originalCharacters!3067 t2!34))))))

(assert (= (and d!362269 res!576805) b!1286264))

(assert (= (and b!1286264 res!576806) b!1286265))

(declare-fun b_lambda!36667 () Bool)

(assert (=> (not b_lambda!36667) (not b!1286264)))

(declare-fun t!116855 () Bool)

(declare-fun tb!69151 () Bool)

(assert (=> (and b!1286033 (= (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (toChars!3247 (transformation!2205 (rule!3944 t2!34)))) t!116855) tb!69151))

(declare-fun b!1286266 () Bool)

(declare-fun e!824941 () Bool)

(declare-fun tp!374577 () Bool)

(assert (=> b!1286266 (= e!824941 (and (inv!17225 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34)))) tp!374577))))

(declare-fun result!83746 () Bool)

(assert (=> tb!69151 (= result!83746 (and (inv!17226 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34))) e!824941))))

(assert (= tb!69151 b!1286266))

(declare-fun m!1436589 () Bool)

(assert (=> b!1286266 m!1436589))

(declare-fun m!1436591 () Bool)

(assert (=> tb!69151 m!1436591))

(assert (=> b!1286264 t!116855))

(declare-fun b_and!85515 () Bool)

(assert (= b_and!85509 (and (=> t!116855 result!83746) b_and!85515)))

(declare-fun t!116857 () Bool)

(declare-fun tb!69153 () Bool)

(assert (=> (and b!1286041 (= (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (toChars!3247 (transformation!2205 (rule!3944 t2!34)))) t!116857) tb!69153))

(declare-fun result!83748 () Bool)

(assert (= result!83748 result!83746))

(assert (=> b!1286264 t!116857))

(declare-fun b_and!85517 () Bool)

(assert (= b_and!85511 (and (=> t!116857 result!83748) b_and!85517)))

(declare-fun t!116859 () Bool)

(declare-fun tb!69155 () Bool)

(assert (=> (and b!1286042 (= (toChars!3247 (transformation!2205 (h!18214 rules!2550))) (toChars!3247 (transformation!2205 (rule!3944 t2!34)))) t!116859) tb!69155))

(declare-fun result!83750 () Bool)

(assert (= result!83750 result!83746))

(assert (=> b!1286264 t!116859))

(declare-fun b_and!85519 () Bool)

(assert (= b_and!85513 (and (=> t!116859 result!83750) b_and!85519)))

(declare-fun m!1436593 () Bool)

(assert (=> d!362269 m!1436593))

(declare-fun m!1436595 () Bool)

(assert (=> b!1286264 m!1436595))

(assert (=> b!1286264 m!1436595))

(declare-fun m!1436597 () Bool)

(assert (=> b!1286264 m!1436597))

(declare-fun m!1436599 () Bool)

(assert (=> b!1286265 m!1436599))

(assert (=> start!112446 d!362269))

(declare-fun b!1286277 () Bool)

(declare-fun e!824949 () Bool)

(declare-fun inv!15 (TokenValue!2295) Bool)

(assert (=> b!1286277 (= e!824949 (inv!15 (value!72475 t2!34)))))

(declare-fun b!1286278 () Bool)

(declare-fun e!824950 () Bool)

(declare-fun inv!17 (TokenValue!2295) Bool)

(assert (=> b!1286278 (= e!824950 (inv!17 (value!72475 t2!34)))))

(declare-fun d!362271 () Bool)

(declare-fun c!211705 () Bool)

(assert (=> d!362271 (= c!211705 ((_ is IntegerValue!6885) (value!72475 t2!34)))))

(declare-fun e!824948 () Bool)

(assert (=> d!362271 (= (inv!21 (value!72475 t2!34)) e!824948)))

(declare-fun b!1286279 () Bool)

(declare-fun inv!16 (TokenValue!2295) Bool)

(assert (=> b!1286279 (= e!824948 (inv!16 (value!72475 t2!34)))))

(declare-fun b!1286280 () Bool)

(declare-fun res!576809 () Bool)

(assert (=> b!1286280 (=> res!576809 e!824949)))

(assert (=> b!1286280 (= res!576809 (not ((_ is IntegerValue!6887) (value!72475 t2!34))))))

(assert (=> b!1286280 (= e!824950 e!824949)))

(declare-fun b!1286281 () Bool)

(assert (=> b!1286281 (= e!824948 e!824950)))

(declare-fun c!211704 () Bool)

(assert (=> b!1286281 (= c!211704 ((_ is IntegerValue!6886) (value!72475 t2!34)))))

(assert (= (and d!362271 c!211705) b!1286279))

(assert (= (and d!362271 (not c!211705)) b!1286281))

(assert (= (and b!1286281 c!211704) b!1286278))

(assert (= (and b!1286281 (not c!211704)) b!1286280))

(assert (= (and b!1286280 (not res!576809)) b!1286277))

(declare-fun m!1436601 () Bool)

(assert (=> b!1286277 m!1436601))

(declare-fun m!1436603 () Bool)

(assert (=> b!1286278 m!1436603))

(declare-fun m!1436605 () Bool)

(assert (=> b!1286279 m!1436605))

(assert (=> b!1286036 d!362271))

(declare-fun d!362273 () Bool)

(declare-fun lt!423877 () Int)

(assert (=> d!362273 (= lt!423877 (size!10441 (list!4761 lt!423830)))))

(declare-fun size!10442 (Conc!4211) Int)

(assert (=> d!362273 (= lt!423877 (size!10442 (c!211671 lt!423830)))))

(assert (=> d!362273 (= (size!10436 lt!423830) lt!423877)))

(declare-fun bs!328099 () Bool)

(assert (= bs!328099 d!362273))

(assert (=> bs!328099 m!1436557))

(assert (=> bs!328099 m!1436557))

(declare-fun m!1436607 () Bool)

(assert (=> bs!328099 m!1436607))

(declare-fun m!1436609 () Bool)

(assert (=> bs!328099 m!1436609))

(assert (=> b!1286039 d!362273))

(declare-fun d!362275 () Bool)

(declare-fun lt!423878 () BalanceConc!8362)

(assert (=> d!362275 (= (list!4761 lt!423878) (originalCharacters!3067 t2!34))))

(assert (=> d!362275 (= lt!423878 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34)))))

(assert (=> d!362275 (= (charsOf!1177 t2!34) lt!423878)))

(declare-fun b_lambda!36669 () Bool)

(assert (=> (not b_lambda!36669) (not d!362275)))

(assert (=> d!362275 t!116855))

(declare-fun b_and!85521 () Bool)

(assert (= b_and!85515 (and (=> t!116855 result!83746) b_and!85521)))

(assert (=> d!362275 t!116857))

(declare-fun b_and!85523 () Bool)

(assert (= b_and!85517 (and (=> t!116857 result!83748) b_and!85523)))

(assert (=> d!362275 t!116859))

(declare-fun b_and!85525 () Bool)

(assert (= b_and!85519 (and (=> t!116859 result!83750) b_and!85525)))

(declare-fun m!1436611 () Bool)

(assert (=> d!362275 m!1436611))

(assert (=> d!362275 m!1436595))

(assert (=> b!1286039 d!362275))

(declare-fun d!362277 () Bool)

(declare-fun prefixMatchZipperSequence!121 (Regex!3519 BalanceConc!8362) Bool)

(declare-fun ++!3235 (BalanceConc!8362 BalanceConc!8362) BalanceConc!8362)

(declare-fun singletonSeq!783 (C!7328) BalanceConc!8362)

(assert (=> d!362277 (= (separableTokensPredicate!183 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!121 (rulesRegex!90 thiss!19762 rules!2550) (++!3235 (charsOf!1177 t1!34) (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))))))))

(declare-fun bs!328100 () Bool)

(assert (= bs!328100 d!362277))

(assert (=> bs!328100 m!1436307))

(declare-fun m!1436613 () Bool)

(assert (=> bs!328100 m!1436613))

(declare-fun m!1436615 () Bool)

(assert (=> bs!328100 m!1436615))

(assert (=> bs!328100 m!1436315))

(declare-fun m!1436617 () Bool)

(assert (=> bs!328100 m!1436617))

(assert (=> bs!328100 m!1436299))

(declare-fun m!1436619 () Bool)

(assert (=> bs!328100 m!1436619))

(assert (=> bs!328100 m!1436613))

(assert (=> bs!328100 m!1436315))

(assert (=> bs!328100 m!1436299))

(assert (=> bs!328100 m!1436617))

(assert (=> bs!328100 m!1436619))

(assert (=> bs!328100 m!1436307))

(assert (=> b!1286040 d!362277))

(declare-fun d!362279 () Bool)

(declare-fun res!576812 () Bool)

(declare-fun e!824953 () Bool)

(assert (=> d!362279 (=> (not res!576812) (not e!824953))))

(declare-fun rulesValid!802 (LexerInterface!1900 List!12879) Bool)

(assert (=> d!362279 (= res!576812 (rulesValid!802 thiss!19762 rules!2550))))

(assert (=> d!362279 (= (rulesInvariant!1770 thiss!19762 rules!2550) e!824953)))

(declare-fun b!1286284 () Bool)

(declare-datatypes ((List!12885 0))(
  ( (Nil!12819) (Cons!12819 (h!18220 String!15711) (t!116866 List!12885)) )
))
(declare-fun noDuplicateTag!802 (LexerInterface!1900 List!12879 List!12885) Bool)

(assert (=> b!1286284 (= e!824953 (noDuplicateTag!802 thiss!19762 rules!2550 Nil!12819))))

(assert (= (and d!362279 res!576812) b!1286284))

(declare-fun m!1436621 () Bool)

(assert (=> d!362279 m!1436621))

(declare-fun m!1436623 () Bool)

(assert (=> b!1286284 m!1436623))

(assert (=> b!1286038 d!362279))

(declare-fun d!362281 () Bool)

(assert (=> d!362281 (= (inv!17218 (tag!2467 (rule!3944 t2!34))) (= (mod (str.len (value!72474 (tag!2467 (rule!3944 t2!34)))) 2) 0))))

(assert (=> b!1286032 d!362281))

(declare-fun d!362283 () Bool)

(declare-fun res!576813 () Bool)

(declare-fun e!824954 () Bool)

(assert (=> d!362283 (=> (not res!576813) (not e!824954))))

(assert (=> d!362283 (= res!576813 (semiInverseModEq!832 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (toValue!3388 (transformation!2205 (rule!3944 t2!34)))))))

(assert (=> d!362283 (= (inv!17221 (transformation!2205 (rule!3944 t2!34))) e!824954)))

(declare-fun b!1286285 () Bool)

(assert (=> b!1286285 (= e!824954 (equivClasses!791 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (toValue!3388 (transformation!2205 (rule!3944 t2!34)))))))

(assert (= (and d!362283 res!576813) b!1286285))

(declare-fun m!1436625 () Bool)

(assert (=> d!362283 m!1436625))

(declare-fun m!1436627 () Bool)

(assert (=> b!1286285 m!1436627))

(assert (=> b!1286032 d!362283))

(declare-fun b!1286286 () Bool)

(declare-fun e!824956 () Bool)

(assert (=> b!1286286 (= e!824956 (inv!15 (value!72475 t1!34)))))

(declare-fun b!1286287 () Bool)

(declare-fun e!824957 () Bool)

(assert (=> b!1286287 (= e!824957 (inv!17 (value!72475 t1!34)))))

(declare-fun d!362285 () Bool)

(declare-fun c!211707 () Bool)

(assert (=> d!362285 (= c!211707 ((_ is IntegerValue!6885) (value!72475 t1!34)))))

(declare-fun e!824955 () Bool)

(assert (=> d!362285 (= (inv!21 (value!72475 t1!34)) e!824955)))

(declare-fun b!1286288 () Bool)

(assert (=> b!1286288 (= e!824955 (inv!16 (value!72475 t1!34)))))

(declare-fun b!1286289 () Bool)

(declare-fun res!576814 () Bool)

(assert (=> b!1286289 (=> res!576814 e!824956)))

(assert (=> b!1286289 (= res!576814 (not ((_ is IntegerValue!6887) (value!72475 t1!34))))))

(assert (=> b!1286289 (= e!824957 e!824956)))

(declare-fun b!1286290 () Bool)

(assert (=> b!1286290 (= e!824955 e!824957)))

(declare-fun c!211706 () Bool)

(assert (=> b!1286290 (= c!211706 ((_ is IntegerValue!6886) (value!72475 t1!34)))))

(assert (= (and d!362285 c!211707) b!1286288))

(assert (= (and d!362285 (not c!211707)) b!1286290))

(assert (= (and b!1286290 c!211706) b!1286287))

(assert (= (and b!1286290 (not c!211706)) b!1286289))

(assert (= (and b!1286289 (not res!576814)) b!1286286))

(declare-fun m!1436629 () Bool)

(assert (=> b!1286286 m!1436629))

(declare-fun m!1436631 () Bool)

(assert (=> b!1286287 m!1436631))

(declare-fun m!1436633 () Bool)

(assert (=> b!1286288 m!1436633))

(assert (=> b!1286030 d!362285))

(declare-fun e!824960 () Bool)

(assert (=> b!1286043 (= tp!374520 e!824960)))

(declare-fun b!1286304 () Bool)

(declare-fun tp!374592 () Bool)

(declare-fun tp!374591 () Bool)

(assert (=> b!1286304 (= e!824960 (and tp!374592 tp!374591))))

(declare-fun b!1286302 () Bool)

(declare-fun tp!374588 () Bool)

(declare-fun tp!374590 () Bool)

(assert (=> b!1286302 (= e!824960 (and tp!374588 tp!374590))))

(declare-fun b!1286303 () Bool)

(declare-fun tp!374589 () Bool)

(assert (=> b!1286303 (= e!824960 tp!374589)))

(declare-fun b!1286301 () Bool)

(declare-fun tp_is_empty!6547 () Bool)

(assert (=> b!1286301 (= e!824960 tp_is_empty!6547)))

(assert (= (and b!1286043 ((_ is ElementMatch!3519) (regex!2205 (rule!3944 t1!34)))) b!1286301))

(assert (= (and b!1286043 ((_ is Concat!5815) (regex!2205 (rule!3944 t1!34)))) b!1286302))

(assert (= (and b!1286043 ((_ is Star!3519) (regex!2205 (rule!3944 t1!34)))) b!1286303))

(assert (= (and b!1286043 ((_ is Union!3519) (regex!2205 (rule!3944 t1!34)))) b!1286304))

(declare-fun e!824961 () Bool)

(assert (=> b!1286044 (= tp!374524 e!824961)))

(declare-fun b!1286308 () Bool)

(declare-fun tp!374597 () Bool)

(declare-fun tp!374596 () Bool)

(assert (=> b!1286308 (= e!824961 (and tp!374597 tp!374596))))

(declare-fun b!1286306 () Bool)

(declare-fun tp!374593 () Bool)

(declare-fun tp!374595 () Bool)

(assert (=> b!1286306 (= e!824961 (and tp!374593 tp!374595))))

(declare-fun b!1286307 () Bool)

(declare-fun tp!374594 () Bool)

(assert (=> b!1286307 (= e!824961 tp!374594)))

(declare-fun b!1286305 () Bool)

(assert (=> b!1286305 (= e!824961 tp_is_empty!6547)))

(assert (= (and b!1286044 ((_ is ElementMatch!3519) (regex!2205 (h!18214 rules!2550)))) b!1286305))

(assert (= (and b!1286044 ((_ is Concat!5815) (regex!2205 (h!18214 rules!2550)))) b!1286306))

(assert (= (and b!1286044 ((_ is Star!3519) (regex!2205 (h!18214 rules!2550)))) b!1286307))

(assert (= (and b!1286044 ((_ is Union!3519) (regex!2205 (h!18214 rules!2550)))) b!1286308))

(declare-fun b!1286319 () Bool)

(declare-fun b_free!30251 () Bool)

(declare-fun b_next!30955 () Bool)

(assert (=> b!1286319 (= b_free!30251 (not b_next!30955))))

(declare-fun tp!374609 () Bool)

(declare-fun b_and!85527 () Bool)

(assert (=> b!1286319 (= tp!374609 b_and!85527)))

(declare-fun b_free!30253 () Bool)

(declare-fun b_next!30957 () Bool)

(assert (=> b!1286319 (= b_free!30253 (not b_next!30957))))

(declare-fun t!116861 () Bool)

(declare-fun tb!69157 () Bool)

(assert (=> (and b!1286319 (= (toChars!3247 (transformation!2205 (h!18214 (t!116826 rules!2550)))) (toChars!3247 (transformation!2205 (rule!3944 t1!34)))) t!116861) tb!69157))

(declare-fun result!83756 () Bool)

(assert (= result!83756 result!83738))

(assert (=> d!362263 t!116861))

(assert (=> b!1286262 t!116861))

(declare-fun tb!69159 () Bool)

(declare-fun t!116863 () Bool)

(assert (=> (and b!1286319 (= (toChars!3247 (transformation!2205 (h!18214 (t!116826 rules!2550)))) (toChars!3247 (transformation!2205 (rule!3944 t2!34)))) t!116863) tb!69159))

(declare-fun result!83758 () Bool)

(assert (= result!83758 result!83746))

(assert (=> b!1286264 t!116863))

(assert (=> d!362275 t!116863))

(declare-fun tp!374607 () Bool)

(declare-fun b_and!85529 () Bool)

(assert (=> b!1286319 (= tp!374607 (and (=> t!116861 result!83756) (=> t!116863 result!83758) b_and!85529))))

(declare-fun e!824973 () Bool)

(assert (=> b!1286319 (= e!824973 (and tp!374609 tp!374607))))

(declare-fun b!1286318 () Bool)

(declare-fun e!824972 () Bool)

(declare-fun tp!374608 () Bool)

(assert (=> b!1286318 (= e!824972 (and tp!374608 (inv!17218 (tag!2467 (h!18214 (t!116826 rules!2550)))) (inv!17221 (transformation!2205 (h!18214 (t!116826 rules!2550)))) e!824973))))

(declare-fun b!1286317 () Bool)

(declare-fun e!824970 () Bool)

(declare-fun tp!374606 () Bool)

(assert (=> b!1286317 (= e!824970 (and e!824972 tp!374606))))

(assert (=> b!1286037 (= tp!374523 e!824970)))

(assert (= b!1286318 b!1286319))

(assert (= b!1286317 b!1286318))

(assert (= (and b!1286037 ((_ is Cons!12813) (t!116826 rules!2550))) b!1286317))

(declare-fun m!1436635 () Bool)

(assert (=> b!1286318 m!1436635))

(declare-fun m!1436637 () Bool)

(assert (=> b!1286318 m!1436637))

(declare-fun e!824974 () Bool)

(assert (=> b!1286032 (= tp!374522 e!824974)))

(declare-fun b!1286323 () Bool)

(declare-fun tp!374614 () Bool)

(declare-fun tp!374613 () Bool)

(assert (=> b!1286323 (= e!824974 (and tp!374614 tp!374613))))

(declare-fun b!1286321 () Bool)

(declare-fun tp!374610 () Bool)

(declare-fun tp!374612 () Bool)

(assert (=> b!1286321 (= e!824974 (and tp!374610 tp!374612))))

(declare-fun b!1286322 () Bool)

(declare-fun tp!374611 () Bool)

(assert (=> b!1286322 (= e!824974 tp!374611)))

(declare-fun b!1286320 () Bool)

(assert (=> b!1286320 (= e!824974 tp_is_empty!6547)))

(assert (= (and b!1286032 ((_ is ElementMatch!3519) (regex!2205 (rule!3944 t2!34)))) b!1286320))

(assert (= (and b!1286032 ((_ is Concat!5815) (regex!2205 (rule!3944 t2!34)))) b!1286321))

(assert (= (and b!1286032 ((_ is Star!3519) (regex!2205 (rule!3944 t2!34)))) b!1286322))

(assert (= (and b!1286032 ((_ is Union!3519) (regex!2205 (rule!3944 t2!34)))) b!1286323))

(declare-fun b!1286328 () Bool)

(declare-fun e!824977 () Bool)

(declare-fun tp!374617 () Bool)

(assert (=> b!1286328 (= e!824977 (and tp_is_empty!6547 tp!374617))))

(assert (=> b!1286030 (= tp!374518 e!824977)))

(assert (= (and b!1286030 ((_ is Cons!12812) (originalCharacters!3067 t1!34))) b!1286328))

(declare-fun b!1286329 () Bool)

(declare-fun e!824978 () Bool)

(declare-fun tp!374618 () Bool)

(assert (=> b!1286329 (= e!824978 (and tp_is_empty!6547 tp!374618))))

(assert (=> b!1286036 (= tp!374527 e!824978)))

(assert (= (and b!1286036 ((_ is Cons!12812) (originalCharacters!3067 t2!34))) b!1286329))

(declare-fun b_lambda!36671 () Bool)

(assert (= b_lambda!36669 (or (and b!1286033 b_free!30237) (and b!1286041 b_free!30241 (= (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (toChars!3247 (transformation!2205 (rule!3944 t2!34))))) (and b!1286042 b_free!30245 (= (toChars!3247 (transformation!2205 (h!18214 rules!2550))) (toChars!3247 (transformation!2205 (rule!3944 t2!34))))) (and b!1286319 b_free!30253 (= (toChars!3247 (transformation!2205 (h!18214 (t!116826 rules!2550)))) (toChars!3247 (transformation!2205 (rule!3944 t2!34))))) b_lambda!36671)))

(declare-fun b_lambda!36673 () Bool)

(assert (= b_lambda!36667 (or (and b!1286033 b_free!30237) (and b!1286041 b_free!30241 (= (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (toChars!3247 (transformation!2205 (rule!3944 t2!34))))) (and b!1286042 b_free!30245 (= (toChars!3247 (transformation!2205 (h!18214 rules!2550))) (toChars!3247 (transformation!2205 (rule!3944 t2!34))))) (and b!1286319 b_free!30253 (= (toChars!3247 (transformation!2205 (h!18214 (t!116826 rules!2550)))) (toChars!3247 (transformation!2205 (rule!3944 t2!34))))) b_lambda!36673)))

(declare-fun b_lambda!36675 () Bool)

(assert (= b_lambda!36665 (or (and b!1286033 b_free!30237 (= (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (toChars!3247 (transformation!2205 (rule!3944 t1!34))))) (and b!1286041 b_free!30241) (and b!1286042 b_free!30245 (= (toChars!3247 (transformation!2205 (h!18214 rules!2550))) (toChars!3247 (transformation!2205 (rule!3944 t1!34))))) (and b!1286319 b_free!30253 (= (toChars!3247 (transformation!2205 (h!18214 (t!116826 rules!2550)))) (toChars!3247 (transformation!2205 (rule!3944 t1!34))))) b_lambda!36675)))

(declare-fun b_lambda!36677 () Bool)

(assert (= b_lambda!36663 (or (and b!1286033 b_free!30237 (= (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (toChars!3247 (transformation!2205 (rule!3944 t1!34))))) (and b!1286041 b_free!30241) (and b!1286042 b_free!30245 (= (toChars!3247 (transformation!2205 (h!18214 rules!2550))) (toChars!3247 (transformation!2205 (rule!3944 t1!34))))) (and b!1286319 b_free!30253 (= (toChars!3247 (transformation!2205 (h!18214 (t!116826 rules!2550)))) (toChars!3247 (transformation!2205 (rule!3944 t1!34))))) b_lambda!36677)))

(check-sat (not b!1286207) (not d!362267) (not d!362259) (not b!1286278) (not b!1286322) (not b!1286303) tp_is_empty!6547 b_and!85463 (not d!362255) b_and!85467 (not b!1286306) (not b!1286195) (not b_lambda!36675) (not d!362279) (not bm!88457) (not d!362249) (not d!362269) b_and!85471 (not b!1286252) (not b!1286196) (not b!1286307) (not b_next!30939) (not d!362205) (not b!1286264) (not b!1286329) b_and!85525 (not d!362273) b_and!85527 (not b_lambda!36677) (not tb!69151) (not b_next!30947) (not d!362265) b_and!85529 (not d!362257) (not b!1286302) (not b!1286209) (not d!362253) (not b!1286323) (not b!1286284) (not b!1286317) (not b!1286266) (not b_next!30955) b_and!85523 (not b_next!30945) (not b!1286197) (not b!1286200) (not d!362275) b_and!85521 (not b!1286287) (not b!1286220) (not b_next!30949) (not b!1286262) (not b!1286208) (not b!1286221) (not b!1286265) (not d!362263) (not b!1286206) (not b!1286257) (not bm!88458) (not b_lambda!36671) (not b!1286277) (not b!1286328) (not b!1286279) (not b!1286308) (not d!362277) (not b!1286286) (not b_next!30943) (not b!1286321) (not b_next!30941) (not d!362245) (not b!1286225) (not d!362283) (not b!1286263) (not b!1286285) (not b_lambda!36673) (not b!1286304) (not tb!69145) (not b!1286210) (not b!1286318) (not b!1286201) (not b_next!30957) (not b!1286288))
(check-sat b_and!85463 b_and!85467 b_and!85525 b_and!85527 (not b_next!30947) b_and!85529 b_and!85521 (not b_next!30949) (not b_next!30943) (not b_next!30941) (not b_next!30957) b_and!85471 (not b_next!30939) (not b_next!30955) b_and!85523 (not b_next!30945))
(get-model)

(declare-fun d!362295 () Bool)

(declare-fun lt!423889 () Token!4072)

(declare-fun apply!2751 (List!12883 Int) Token!4072)

(assert (=> d!362295 (= lt!423889 (apply!2751 (list!4764 (_1!7201 lt!423859)) 0))))

(declare-fun apply!2752 (Conc!4213 Int) Token!4072)

(assert (=> d!362295 (= lt!423889 (apply!2752 (c!211708 (_1!7201 lt!423859)) 0))))

(declare-fun e!824984 () Bool)

(assert (=> d!362295 e!824984))

(declare-fun res!576822 () Bool)

(assert (=> d!362295 (=> (not res!576822) (not e!824984))))

(assert (=> d!362295 (= res!576822 (<= 0 0))))

(assert (=> d!362295 (= (apply!2747 (_1!7201 lt!423859) 0) lt!423889)))

(declare-fun b!1286338 () Bool)

(assert (=> b!1286338 (= e!824984 (< 0 (size!10440 (_1!7201 lt!423859))))))

(assert (= (and d!362295 res!576822) b!1286338))

(declare-fun m!1436649 () Bool)

(assert (=> d!362295 m!1436649))

(assert (=> d!362295 m!1436649))

(declare-fun m!1436651 () Bool)

(assert (=> d!362295 m!1436651))

(declare-fun m!1436653 () Bool)

(assert (=> d!362295 m!1436653))

(assert (=> b!1286338 m!1436497))

(assert (=> b!1286195 d!362295))

(declare-fun d!362297 () Bool)

(assert (=> d!362297 (= (isEmpty!7602 (originalCharacters!3067 t2!34)) ((_ is Nil!12812) (originalCharacters!3067 t2!34)))))

(assert (=> d!362269 d!362297))

(declare-fun b!1286339 () Bool)

(declare-fun e!824988 () Bool)

(declare-fun call!88466 () Bool)

(assert (=> b!1286339 (= e!824988 call!88466)))

(declare-fun b!1286340 () Bool)

(declare-fun e!824987 () Bool)

(declare-fun call!88465 () Bool)

(assert (=> b!1286340 (= e!824987 call!88465)))

(declare-fun b!1286341 () Bool)

(declare-fun res!576827 () Bool)

(declare-fun e!824985 () Bool)

(assert (=> b!1286341 (=> res!576827 e!824985)))

(assert (=> b!1286341 (= res!576827 (not ((_ is Concat!5815) (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550))))))))

(declare-fun e!824986 () Bool)

(assert (=> b!1286341 (= e!824986 e!824985)))

(declare-fun b!1286342 () Bool)

(declare-fun e!824991 () Bool)

(assert (=> b!1286342 (= e!824991 e!824986)))

(declare-fun c!211713 () Bool)

(assert (=> b!1286342 (= c!211713 ((_ is Union!3519) (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550)))))))

(declare-fun b!1286343 () Bool)

(declare-fun res!576823 () Bool)

(assert (=> b!1286343 (=> (not res!576823) (not e!824987))))

(declare-fun call!88464 () Bool)

(assert (=> b!1286343 (= res!576823 call!88464)))

(assert (=> b!1286343 (= e!824986 e!824987)))

(declare-fun bm!88459 () Bool)

(assert (=> bm!88459 (= call!88465 call!88466)))

(declare-fun c!211712 () Bool)

(declare-fun bm!88460 () Bool)

(assert (=> bm!88460 (= call!88466 (validRegex!1513 (ite c!211712 (reg!3848 (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550)))) (ite c!211713 (regTwo!7551 (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550)))) (regTwo!7550 (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550))))))))))

(declare-fun b!1286344 () Bool)

(declare-fun e!824990 () Bool)

(assert (=> b!1286344 (= e!824990 e!824991)))

(assert (=> b!1286344 (= c!211712 ((_ is Star!3519) (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550)))))))

(declare-fun b!1286345 () Bool)

(declare-fun e!824989 () Bool)

(assert (=> b!1286345 (= e!824989 call!88465)))

(declare-fun d!362299 () Bool)

(declare-fun res!576826 () Bool)

(assert (=> d!362299 (=> res!576826 e!824990)))

(assert (=> d!362299 (= res!576826 ((_ is ElementMatch!3519) (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550)))))))

(assert (=> d!362299 (= (validRegex!1513 (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550)))) e!824990)))

(declare-fun b!1286346 () Bool)

(assert (=> b!1286346 (= e!824985 e!824989)))

(declare-fun res!576825 () Bool)

(assert (=> b!1286346 (=> (not res!576825) (not e!824989))))

(assert (=> b!1286346 (= res!576825 call!88464)))

(declare-fun bm!88461 () Bool)

(assert (=> bm!88461 (= call!88464 (validRegex!1513 (ite c!211713 (regOne!7551 (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550)))) (regOne!7550 (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550)))))))))

(declare-fun b!1286347 () Bool)

(assert (=> b!1286347 (= e!824991 e!824988)))

(declare-fun res!576824 () Bool)

(assert (=> b!1286347 (= res!576824 (not (nullable!1115 (reg!3848 (ite c!211699 (regOne!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regOne!7550 (rulesRegex!90 thiss!19762 rules!2550)))))))))

(assert (=> b!1286347 (=> (not res!576824) (not e!824988))))

(assert (= (and d!362299 (not res!576826)) b!1286344))

(assert (= (and b!1286344 c!211712) b!1286347))

(assert (= (and b!1286344 (not c!211712)) b!1286342))

(assert (= (and b!1286347 res!576824) b!1286339))

(assert (= (and b!1286342 c!211713) b!1286343))

(assert (= (and b!1286342 (not c!211713)) b!1286341))

(assert (= (and b!1286343 res!576823) b!1286340))

(assert (= (and b!1286341 (not res!576827)) b!1286346))

(assert (= (and b!1286346 res!576825) b!1286345))

(assert (= (or b!1286343 b!1286346) bm!88461))

(assert (= (or b!1286340 b!1286345) bm!88459))

(assert (= (or b!1286339 bm!88459) bm!88460))

(declare-fun m!1436655 () Bool)

(assert (=> bm!88460 m!1436655))

(declare-fun m!1436657 () Bool)

(assert (=> bm!88461 m!1436657))

(declare-fun m!1436659 () Bool)

(assert (=> b!1286347 m!1436659))

(assert (=> bm!88458 d!362299))

(declare-fun d!362301 () Bool)

(declare-fun charsToBigInt!0 (List!12877 Int) Int)

(assert (=> d!362301 (= (inv!15 (value!72475 t1!34)) (= (charsToBigInt!0 (text!16514 (value!72475 t1!34)) 0) (value!72470 (value!72475 t1!34))))))

(declare-fun bs!328103 () Bool)

(assert (= bs!328103 d!362301))

(declare-fun m!1436661 () Bool)

(assert (=> bs!328103 m!1436661))

(assert (=> b!1286286 d!362301))

(declare-fun d!362303 () Bool)

(declare-fun charsToInt!0 (List!12877) (_ BitVec 32))

(assert (=> d!362303 (= (inv!16 (value!72475 t1!34)) (= (charsToInt!0 (text!16512 (value!72475 t1!34))) (value!72466 (value!72475 t1!34))))))

(declare-fun bs!328104 () Bool)

(assert (= bs!328104 d!362303))

(declare-fun m!1436663 () Bool)

(assert (=> bs!328104 m!1436663))

(assert (=> b!1286288 d!362303))

(declare-fun e!825032 () Bool)

(declare-fun b!1286412 () Bool)

(declare-fun lt!423900 () tuple2!12630)

(assert (=> b!1286412 (= e!825032 (= (_2!7201 lt!423900) (print!708 thiss!19762 (singletonSeq!782 t1!34))))))

(declare-fun b!1286414 () Bool)

(declare-fun e!825033 () Bool)

(declare-datatypes ((tuple2!12634 0))(
  ( (tuple2!12635 (_1!7203 List!12883) (_2!7203 List!12878)) )
))
(declare-fun lexList!490 (LexerInterface!1900 List!12879 List!12878) tuple2!12634)

(assert (=> b!1286414 (= e!825033 (= (list!4761 (_2!7201 lt!423900)) (_2!7203 (lexList!490 thiss!19762 rules!2550 (list!4761 (print!708 thiss!19762 (singletonSeq!782 t1!34)))))))))

(declare-fun b!1286415 () Bool)

(declare-fun e!825034 () Bool)

(declare-fun isEmpty!7605 (BalanceConc!8366) Bool)

(assert (=> b!1286415 (= e!825034 (not (isEmpty!7605 (_1!7201 lt!423900))))))

(declare-fun b!1286416 () Bool)

(declare-fun res!576858 () Bool)

(assert (=> b!1286416 (=> (not res!576858) (not e!825033))))

(assert (=> b!1286416 (= res!576858 (= (list!4764 (_1!7201 lt!423900)) (_1!7203 (lexList!490 thiss!19762 rules!2550 (list!4761 (print!708 thiss!19762 (singletonSeq!782 t1!34)))))))))

(declare-fun d!362305 () Bool)

(assert (=> d!362305 e!825033))

(declare-fun res!576856 () Bool)

(assert (=> d!362305 (=> (not res!576856) (not e!825033))))

(assert (=> d!362305 (= res!576856 e!825032)))

(declare-fun c!211729 () Bool)

(assert (=> d!362305 (= c!211729 (> (size!10440 (_1!7201 lt!423900)) 0))))

(declare-fun lexTailRecV2!339 (LexerInterface!1900 List!12879 BalanceConc!8362 BalanceConc!8362 BalanceConc!8362 BalanceConc!8366) tuple2!12630)

(assert (=> d!362305 (= lt!423900 (lexTailRecV2!339 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t1!34)) (BalanceConc!8363 Empty!4211) (print!708 thiss!19762 (singletonSeq!782 t1!34)) (BalanceConc!8367 Empty!4213)))))

(assert (=> d!362305 (= (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t1!34))) lt!423900)))

(declare-fun b!1286413 () Bool)

(assert (=> b!1286413 (= e!825032 e!825034)))

(declare-fun res!576857 () Bool)

(assert (=> b!1286413 (= res!576857 (< (size!10436 (_2!7201 lt!423900)) (size!10436 (print!708 thiss!19762 (singletonSeq!782 t1!34)))))))

(assert (=> b!1286413 (=> (not res!576857) (not e!825034))))

(assert (= (and d!362305 c!211729) b!1286413))

(assert (= (and d!362305 (not c!211729)) b!1286412))

(assert (= (and b!1286413 res!576857) b!1286415))

(assert (= (and d!362305 res!576856) b!1286416))

(assert (= (and b!1286416 res!576858) b!1286414))

(declare-fun m!1436709 () Bool)

(assert (=> d!362305 m!1436709))

(assert (=> d!362305 m!1436499))

(assert (=> d!362305 m!1436499))

(declare-fun m!1436711 () Bool)

(assert (=> d!362305 m!1436711))

(declare-fun m!1436713 () Bool)

(assert (=> b!1286414 m!1436713))

(assert (=> b!1286414 m!1436499))

(declare-fun m!1436715 () Bool)

(assert (=> b!1286414 m!1436715))

(assert (=> b!1286414 m!1436715))

(declare-fun m!1436717 () Bool)

(assert (=> b!1286414 m!1436717))

(declare-fun m!1436719 () Bool)

(assert (=> b!1286416 m!1436719))

(assert (=> b!1286416 m!1436499))

(assert (=> b!1286416 m!1436715))

(assert (=> b!1286416 m!1436715))

(assert (=> b!1286416 m!1436717))

(declare-fun m!1436721 () Bool)

(assert (=> b!1286415 m!1436721))

(declare-fun m!1436723 () Bool)

(assert (=> b!1286413 m!1436723))

(assert (=> b!1286413 m!1436499))

(declare-fun m!1436725 () Bool)

(assert (=> b!1286413 m!1436725))

(assert (=> d!362205 d!362305))

(declare-fun d!362339 () Bool)

(declare-fun lt!423903 () BalanceConc!8362)

(declare-fun printList!534 (LexerInterface!1900 List!12883) List!12878)

(assert (=> d!362339 (= (list!4761 lt!423903) (printList!534 thiss!19762 (list!4764 (singletonSeq!782 t1!34))))))

(declare-fun printTailRec!516 (LexerInterface!1900 BalanceConc!8366 Int BalanceConc!8362) BalanceConc!8362)

(assert (=> d!362339 (= lt!423903 (printTailRec!516 thiss!19762 (singletonSeq!782 t1!34) 0 (BalanceConc!8363 Empty!4211)))))

(assert (=> d!362339 (= (print!708 thiss!19762 (singletonSeq!782 t1!34)) lt!423903)))

(declare-fun bs!328113 () Bool)

(assert (= bs!328113 d!362339))

(declare-fun m!1436727 () Bool)

(assert (=> bs!328113 m!1436727))

(assert (=> bs!328113 m!1436493))

(assert (=> bs!328113 m!1436495))

(assert (=> bs!328113 m!1436495))

(declare-fun m!1436729 () Bool)

(assert (=> bs!328113 m!1436729))

(assert (=> bs!328113 m!1436493))

(declare-fun m!1436731 () Bool)

(assert (=> bs!328113 m!1436731))

(assert (=> d!362205 d!362339))

(declare-fun d!362341 () Bool)

(declare-fun e!825037 () Bool)

(assert (=> d!362341 e!825037))

(declare-fun res!576861 () Bool)

(assert (=> d!362341 (=> (not res!576861) (not e!825037))))

(declare-fun lt!423906 () BalanceConc!8366)

(assert (=> d!362341 (= res!576861 (= (list!4764 lt!423906) (Cons!12817 t1!34 Nil!12817)))))

(declare-fun singleton!337 (Token!4072) BalanceConc!8366)

(assert (=> d!362341 (= lt!423906 (singleton!337 t1!34))))

(assert (=> d!362341 (= (singletonSeq!782 t1!34) lt!423906)))

(declare-fun b!1286419 () Bool)

(declare-fun isBalanced!1231 (Conc!4213) Bool)

(assert (=> b!1286419 (= e!825037 (isBalanced!1231 (c!211708 lt!423906)))))

(assert (= (and d!362341 res!576861) b!1286419))

(declare-fun m!1436733 () Bool)

(assert (=> d!362341 m!1436733))

(declare-fun m!1436735 () Bool)

(assert (=> d!362341 m!1436735))

(declare-fun m!1436737 () Bool)

(assert (=> b!1286419 m!1436737))

(assert (=> d!362205 d!362341))

(declare-fun d!362343 () Bool)

(declare-fun list!4767 (Conc!4213) List!12883)

(assert (=> d!362343 (= (list!4764 (_1!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t1!34))))) (list!4767 (c!211708 (_1!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t1!34)))))))))

(declare-fun bs!328114 () Bool)

(assert (= bs!328114 d!362343))

(declare-fun m!1436739 () Bool)

(assert (=> bs!328114 m!1436739))

(assert (=> d!362205 d!362343))

(declare-fun d!362345 () Bool)

(declare-fun lt!423909 () Int)

(declare-fun size!10445 (List!12883) Int)

(assert (=> d!362345 (= lt!423909 (size!10445 (list!4764 (_1!7201 lt!423859))))))

(declare-fun size!10446 (Conc!4213) Int)

(assert (=> d!362345 (= lt!423909 (size!10446 (c!211708 (_1!7201 lt!423859))))))

(assert (=> d!362345 (= (size!10440 (_1!7201 lt!423859)) lt!423909)))

(declare-fun bs!328115 () Bool)

(assert (= bs!328115 d!362345))

(assert (=> bs!328115 m!1436649))

(assert (=> bs!328115 m!1436649))

(declare-fun m!1436741 () Bool)

(assert (=> bs!328115 m!1436741))

(declare-fun m!1436743 () Bool)

(assert (=> bs!328115 m!1436743))

(assert (=> d!362205 d!362345))

(declare-fun d!362347 () Bool)

(assert (=> d!362347 (= (list!4764 (singletonSeq!782 t1!34)) (list!4767 (c!211708 (singletonSeq!782 t1!34))))))

(declare-fun bs!328116 () Bool)

(assert (= bs!328116 d!362347))

(declare-fun m!1436745 () Bool)

(assert (=> bs!328116 m!1436745))

(assert (=> d!362205 d!362347))

(assert (=> d!362205 d!362201))

(declare-fun bm!88470 () Bool)

(declare-fun call!88475 () Bool)

(assert (=> bm!88470 (= call!88475 (ruleDisjointCharsFromAllFromOtherType!276 (h!18214 rules!2550) (t!116826 rules!2550)))))

(declare-fun b!1286428 () Bool)

(declare-fun e!825045 () Bool)

(declare-fun e!825044 () Bool)

(assert (=> b!1286428 (= e!825045 e!825044)))

(declare-fun res!576866 () Bool)

(assert (=> b!1286428 (= res!576866 (not ((_ is Cons!12813) rules!2550)))))

(assert (=> b!1286428 (=> res!576866 e!825044)))

(declare-fun d!362349 () Bool)

(declare-fun c!211732 () Bool)

(assert (=> d!362349 (= c!211732 (and ((_ is Cons!12813) rules!2550) (not (= (isSeparator!2205 (h!18214 rules!2550)) (isSeparator!2205 (h!18214 rules!2550))))))))

(assert (=> d!362349 (= (ruleDisjointCharsFromAllFromOtherType!276 (h!18214 rules!2550) rules!2550) e!825045)))

(declare-fun b!1286429 () Bool)

(declare-fun e!825046 () Bool)

(assert (=> b!1286429 (= e!825046 call!88475)))

(declare-fun b!1286430 () Bool)

(assert (=> b!1286430 (= e!825045 e!825046)))

(declare-fun res!576867 () Bool)

(declare-fun rulesUseDisjointChars!140 (Rule!4210 Rule!4210) Bool)

(assert (=> b!1286430 (= res!576867 (rulesUseDisjointChars!140 (h!18214 rules!2550) (h!18214 rules!2550)))))

(assert (=> b!1286430 (=> (not res!576867) (not e!825046))))

(declare-fun b!1286431 () Bool)

(assert (=> b!1286431 (= e!825044 call!88475)))

(assert (= (and d!362349 c!211732) b!1286430))

(assert (= (and d!362349 (not c!211732)) b!1286428))

(assert (= (and b!1286430 res!576867) b!1286429))

(assert (= (and b!1286428 (not res!576866)) b!1286431))

(assert (= (or b!1286429 b!1286431) bm!88470))

(declare-fun m!1436747 () Bool)

(assert (=> bm!88470 m!1436747))

(declare-fun m!1436749 () Bool)

(assert (=> b!1286430 m!1436749))

(assert (=> b!1286206 d!362349))

(declare-fun d!362351 () Bool)

(assert (=> d!362351 (= (inv!15 (value!72475 t2!34)) (= (charsToBigInt!0 (text!16514 (value!72475 t2!34)) 0) (value!72470 (value!72475 t2!34))))))

(declare-fun bs!328117 () Bool)

(assert (= bs!328117 d!362351))

(declare-fun m!1436751 () Bool)

(assert (=> bs!328117 m!1436751))

(assert (=> b!1286277 d!362351))

(declare-fun d!362353 () Bool)

(assert (=> d!362353 (= (inv!16 (value!72475 t2!34)) (= (charsToInt!0 (text!16512 (value!72475 t2!34))) (value!72466 (value!72475 t2!34))))))

(declare-fun bs!328118 () Bool)

(assert (= bs!328118 d!362353))

(declare-fun m!1436753 () Bool)

(assert (=> bs!328118 m!1436753))

(assert (=> b!1286279 d!362353))

(declare-fun b!1286434 () Bool)

(declare-fun res!576868 () Bool)

(declare-fun e!825048 () Bool)

(assert (=> b!1286434 (=> (not res!576868) (not e!825048))))

(declare-fun lt!423910 () List!12878)

(assert (=> b!1286434 (= res!576868 (= (size!10441 lt!423910) (+ (size!10441 (t!116825 (list!4761 (charsOf!1177 t1!34)))) (size!10441 (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)))))))

(declare-fun d!362355 () Bool)

(assert (=> d!362355 e!825048))

(declare-fun res!576869 () Bool)

(assert (=> d!362355 (=> (not res!576869) (not e!825048))))

(assert (=> d!362355 (= res!576869 (= (content!1813 lt!423910) ((_ map or) (content!1813 (t!116825 (list!4761 (charsOf!1177 t1!34)))) (content!1813 (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)))))))

(declare-fun e!825047 () List!12878)

(assert (=> d!362355 (= lt!423910 e!825047)))

(declare-fun c!211733 () Bool)

(assert (=> d!362355 (= c!211733 ((_ is Nil!12812) (t!116825 (list!4761 (charsOf!1177 t1!34)))))))

(assert (=> d!362355 (= (++!3233 (t!116825 (list!4761 (charsOf!1177 t1!34))) (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)) lt!423910)))

(declare-fun b!1286432 () Bool)

(assert (=> b!1286432 (= e!825047 (Cons!12812 (apply!2743 lt!423830 0) Nil!12812))))

(declare-fun b!1286435 () Bool)

(assert (=> b!1286435 (= e!825048 (or (not (= (Cons!12812 (apply!2743 lt!423830 0) Nil!12812) Nil!12812)) (= lt!423910 (t!116825 (list!4761 (charsOf!1177 t1!34))))))))

(declare-fun b!1286433 () Bool)

(assert (=> b!1286433 (= e!825047 (Cons!12812 (h!18213 (t!116825 (list!4761 (charsOf!1177 t1!34)))) (++!3233 (t!116825 (t!116825 (list!4761 (charsOf!1177 t1!34)))) (Cons!12812 (apply!2743 lt!423830 0) Nil!12812))))))

(assert (= (and d!362355 c!211733) b!1286432))

(assert (= (and d!362355 (not c!211733)) b!1286433))

(assert (= (and d!362355 res!576869) b!1286434))

(assert (= (and b!1286434 res!576868) b!1286435))

(declare-fun m!1436755 () Bool)

(assert (=> b!1286434 m!1436755))

(declare-fun m!1436757 () Bool)

(assert (=> b!1286434 m!1436757))

(assert (=> b!1286434 m!1436547))

(declare-fun m!1436759 () Bool)

(assert (=> d!362355 m!1436759))

(declare-fun m!1436761 () Bool)

(assert (=> d!362355 m!1436761))

(assert (=> d!362355 m!1436553))

(declare-fun m!1436763 () Bool)

(assert (=> b!1286433 m!1436763))

(assert (=> b!1286220 d!362355))

(declare-fun b!1286436 () Bool)

(declare-fun e!825052 () Bool)

(declare-fun call!88478 () Bool)

(assert (=> b!1286436 (= e!825052 call!88478)))

(declare-fun b!1286437 () Bool)

(declare-fun e!825051 () Bool)

(declare-fun call!88477 () Bool)

(assert (=> b!1286437 (= e!825051 call!88477)))

(declare-fun b!1286438 () Bool)

(declare-fun res!576874 () Bool)

(declare-fun e!825049 () Bool)

(assert (=> b!1286438 (=> res!576874 e!825049)))

(assert (=> b!1286438 (= res!576874 (not ((_ is Concat!5815) (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550)))))))))

(declare-fun e!825050 () Bool)

(assert (=> b!1286438 (= e!825050 e!825049)))

(declare-fun b!1286439 () Bool)

(declare-fun e!825055 () Bool)

(assert (=> b!1286439 (= e!825055 e!825050)))

(declare-fun c!211735 () Bool)

(assert (=> b!1286439 (= c!211735 ((_ is Union!3519) (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550))))))))

(declare-fun b!1286440 () Bool)

(declare-fun res!576870 () Bool)

(assert (=> b!1286440 (=> (not res!576870) (not e!825051))))

(declare-fun call!88476 () Bool)

(assert (=> b!1286440 (= res!576870 call!88476)))

(assert (=> b!1286440 (= e!825050 e!825051)))

(declare-fun bm!88471 () Bool)

(assert (=> bm!88471 (= call!88477 call!88478)))

(declare-fun c!211734 () Bool)

(declare-fun bm!88472 () Bool)

(assert (=> bm!88472 (= call!88478 (validRegex!1513 (ite c!211734 (reg!3848 (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550))))) (ite c!211735 (regTwo!7551 (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550))))) (regTwo!7550 (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550)))))))))))

(declare-fun b!1286441 () Bool)

(declare-fun e!825054 () Bool)

(assert (=> b!1286441 (= e!825054 e!825055)))

(assert (=> b!1286441 (= c!211734 ((_ is Star!3519) (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550))))))))

(declare-fun b!1286442 () Bool)

(declare-fun e!825053 () Bool)

(assert (=> b!1286442 (= e!825053 call!88477)))

(declare-fun d!362357 () Bool)

(declare-fun res!576873 () Bool)

(assert (=> d!362357 (=> res!576873 e!825054)))

(assert (=> d!362357 (= res!576873 ((_ is ElementMatch!3519) (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550))))))))

(assert (=> d!362357 (= (validRegex!1513 (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550))))) e!825054)))

(declare-fun b!1286443 () Bool)

(assert (=> b!1286443 (= e!825049 e!825053)))

(declare-fun res!576872 () Bool)

(assert (=> b!1286443 (=> (not res!576872) (not e!825053))))

(assert (=> b!1286443 (= res!576872 call!88476)))

(declare-fun bm!88473 () Bool)

(assert (=> bm!88473 (= call!88476 (validRegex!1513 (ite c!211735 (regOne!7551 (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550))))) (regOne!7550 (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550))))))))))

(declare-fun b!1286444 () Bool)

(assert (=> b!1286444 (= e!825055 e!825052)))

(declare-fun res!576871 () Bool)

(assert (=> b!1286444 (= res!576871 (not (nullable!1115 (reg!3848 (ite c!211698 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550)) (ite c!211699 (regTwo!7551 (rulesRegex!90 thiss!19762 rules!2550)) (regTwo!7550 (rulesRegex!90 thiss!19762 rules!2550))))))))))

(assert (=> b!1286444 (=> (not res!576871) (not e!825052))))

(assert (= (and d!362357 (not res!576873)) b!1286441))

(assert (= (and b!1286441 c!211734) b!1286444))

(assert (= (and b!1286441 (not c!211734)) b!1286439))

(assert (= (and b!1286444 res!576871) b!1286436))

(assert (= (and b!1286439 c!211735) b!1286440))

(assert (= (and b!1286439 (not c!211735)) b!1286438))

(assert (= (and b!1286440 res!576870) b!1286437))

(assert (= (and b!1286438 (not res!576874)) b!1286443))

(assert (= (and b!1286443 res!576872) b!1286442))

(assert (= (or b!1286440 b!1286443) bm!88473))

(assert (= (or b!1286437 b!1286442) bm!88471))

(assert (= (or b!1286436 bm!88471) bm!88472))

(declare-fun m!1436765 () Bool)

(assert (=> bm!88472 m!1436765))

(declare-fun m!1436767 () Bool)

(assert (=> bm!88473 m!1436767))

(declare-fun m!1436769 () Bool)

(assert (=> b!1286444 m!1436769))

(assert (=> bm!88457 d!362357))

(declare-fun d!362359 () Bool)

(assert (=> d!362359 (= (list!4761 lt!423878) (list!4765 (c!211671 lt!423878)))))

(declare-fun bs!328119 () Bool)

(assert (= bs!328119 d!362359))

(declare-fun m!1436771 () Bool)

(assert (=> bs!328119 m!1436771))

(assert (=> d!362275 d!362359))

(declare-fun d!362361 () Bool)

(assert (=> d!362361 true))

(declare-fun order!7805 () Int)

(declare-fun order!7803 () Int)

(declare-fun lambda!50444 () Int)

(declare-fun dynLambda!5585 (Int Int) Int)

(declare-fun dynLambda!5586 (Int Int) Int)

(assert (=> d!362361 (< (dynLambda!5585 order!7803 (toValue!3388 (transformation!2205 (h!18214 rules!2550)))) (dynLambda!5586 order!7805 lambda!50444))))

(declare-fun Forall2!399 (Int) Bool)

(assert (=> d!362361 (= (equivClasses!791 (toChars!3247 (transformation!2205 (h!18214 rules!2550))) (toValue!3388 (transformation!2205 (h!18214 rules!2550)))) (Forall2!399 lambda!50444))))

(declare-fun bs!328154 () Bool)

(assert (= bs!328154 d!362361))

(declare-fun m!1437083 () Bool)

(assert (=> bs!328154 m!1437083))

(assert (=> b!1286201 d!362361))

(declare-fun bs!328155 () Bool)

(declare-fun d!362467 () Bool)

(assert (= bs!328155 (and d!362467 d!362361)))

(declare-fun lambda!50445 () Int)

(assert (=> bs!328155 (= (= (toValue!3388 (transformation!2205 (rule!3944 t2!34))) (toValue!3388 (transformation!2205 (h!18214 rules!2550)))) (= lambda!50445 lambda!50444))))

(assert (=> d!362467 true))

(assert (=> d!362467 (< (dynLambda!5585 order!7803 (toValue!3388 (transformation!2205 (rule!3944 t2!34)))) (dynLambda!5586 order!7805 lambda!50445))))

(assert (=> d!362467 (= (equivClasses!791 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (toValue!3388 (transformation!2205 (rule!3944 t2!34)))) (Forall2!399 lambda!50445))))

(declare-fun bs!328156 () Bool)

(assert (= bs!328156 d!362467))

(declare-fun m!1437085 () Bool)

(assert (=> bs!328156 m!1437085))

(assert (=> b!1286285 d!362467))

(assert (=> b!1286225 d!362273))

(declare-fun d!362469 () Bool)

(declare-fun lt!423996 () Bool)

(assert (=> d!362469 (= lt!423996 (isEmpty!7602 (list!4761 (_2!7201 lt!423861))))))

(declare-fun isEmpty!7606 (Conc!4211) Bool)

(assert (=> d!362469 (= lt!423996 (isEmpty!7606 (c!211671 (_2!7201 lt!423861))))))

(assert (=> d!362469 (= (isEmpty!7601 (_2!7201 lt!423861)) lt!423996)))

(declare-fun bs!328157 () Bool)

(assert (= bs!328157 d!362469))

(declare-fun m!1437087 () Bool)

(assert (=> bs!328157 m!1437087))

(assert (=> bs!328157 m!1437087))

(declare-fun m!1437089 () Bool)

(assert (=> bs!328157 m!1437089))

(declare-fun m!1437091 () Bool)

(assert (=> bs!328157 m!1437091))

(assert (=> b!1286209 d!362469))

(declare-fun b!1286700 () Bool)

(declare-fun e!825187 () List!12878)

(declare-fun e!825188 () List!12878)

(assert (=> b!1286700 (= e!825187 e!825188)))

(declare-fun c!211795 () Bool)

(assert (=> b!1286700 (= c!211795 ((_ is Leaf!6510) (c!211671 (charsOf!1177 t1!34))))))

(declare-fun b!1286702 () Bool)

(assert (=> b!1286702 (= e!825188 (++!3233 (list!4765 (left!11035 (c!211671 (charsOf!1177 t1!34)))) (list!4765 (right!11365 (c!211671 (charsOf!1177 t1!34))))))))

(declare-fun d!362471 () Bool)

(declare-fun c!211794 () Bool)

(assert (=> d!362471 (= c!211794 ((_ is Empty!4211) (c!211671 (charsOf!1177 t1!34))))))

(assert (=> d!362471 (= (list!4765 (c!211671 (charsOf!1177 t1!34))) e!825187)))

(declare-fun b!1286699 () Bool)

(assert (=> b!1286699 (= e!825187 Nil!12812)))

(declare-fun b!1286701 () Bool)

(declare-fun list!4769 (IArray!8427) List!12878)

(assert (=> b!1286701 (= e!825188 (list!4769 (xs!6922 (c!211671 (charsOf!1177 t1!34)))))))

(assert (= (and d!362471 c!211794) b!1286699))

(assert (= (and d!362471 (not c!211794)) b!1286700))

(assert (= (and b!1286700 c!211795) b!1286701))

(assert (= (and b!1286700 (not c!211795)) b!1286702))

(declare-fun m!1437093 () Bool)

(assert (=> b!1286702 m!1437093))

(declare-fun m!1437095 () Bool)

(assert (=> b!1286702 m!1437095))

(assert (=> b!1286702 m!1437093))

(assert (=> b!1286702 m!1437095))

(declare-fun m!1437097 () Bool)

(assert (=> b!1286702 m!1437097))

(declare-fun m!1437099 () Bool)

(assert (=> b!1286701 m!1437099))

(assert (=> d!362255 d!362471))

(declare-fun d!362473 () Bool)

(assert (=> d!362473 (= (inv!17218 (tag!2467 (h!18214 (t!116826 rules!2550)))) (= (mod (str.len (value!72474 (tag!2467 (h!18214 (t!116826 rules!2550))))) 2) 0))))

(assert (=> b!1286318 d!362473))

(declare-fun d!362475 () Bool)

(declare-fun res!576936 () Bool)

(declare-fun e!825189 () Bool)

(assert (=> d!362475 (=> (not res!576936) (not e!825189))))

(assert (=> d!362475 (= res!576936 (semiInverseModEq!832 (toChars!3247 (transformation!2205 (h!18214 (t!116826 rules!2550)))) (toValue!3388 (transformation!2205 (h!18214 (t!116826 rules!2550))))))))

(assert (=> d!362475 (= (inv!17221 (transformation!2205 (h!18214 (t!116826 rules!2550)))) e!825189)))

(declare-fun b!1286703 () Bool)

(assert (=> b!1286703 (= e!825189 (equivClasses!791 (toChars!3247 (transformation!2205 (h!18214 (t!116826 rules!2550)))) (toValue!3388 (transformation!2205 (h!18214 (t!116826 rules!2550))))))))

(assert (= (and d!362475 res!576936) b!1286703))

(declare-fun m!1437101 () Bool)

(assert (=> d!362475 m!1437101))

(declare-fun m!1437103 () Bool)

(assert (=> b!1286703 m!1437103))

(assert (=> b!1286318 d!362475))

(declare-fun bs!328158 () Bool)

(declare-fun d!362477 () Bool)

(assert (= bs!328158 (and d!362477 d!362265)))

(declare-fun lambda!50450 () Int)

(assert (=> bs!328158 (= lambda!50450 lambda!50419)))

(declare-fun lambda!50451 () Int)

(declare-fun forall!3236 (List!12884 Int) Bool)

(assert (=> d!362477 (forall!3236 (map!2790 rules!2550 lambda!50450) lambda!50451)))

(declare-fun lt!424001 () Unit!19002)

(declare-fun e!825192 () Unit!19002)

(assert (=> d!362477 (= lt!424001 e!825192)))

(declare-fun c!211798 () Bool)

(assert (=> d!362477 (= c!211798 ((_ is Nil!12813) rules!2550))))

(declare-fun rulesValidInductive!696 (LexerInterface!1900 List!12879) Bool)

(assert (=> d!362477 (rulesValidInductive!696 thiss!19762 rules!2550)))

(assert (=> d!362477 (= (lemma!34 rules!2550 thiss!19762 rules!2550) lt!424001)))

(declare-fun b!1286708 () Bool)

(declare-fun Unit!19005 () Unit!19002)

(assert (=> b!1286708 (= e!825192 Unit!19005)))

(declare-fun b!1286709 () Bool)

(declare-fun Unit!19007 () Unit!19002)

(assert (=> b!1286709 (= e!825192 Unit!19007)))

(declare-fun lt!424002 () Unit!19002)

(assert (=> b!1286709 (= lt!424002 (lemma!34 rules!2550 thiss!19762 (t!116826 rules!2550)))))

(assert (= (and d!362477 c!211798) b!1286708))

(assert (= (and d!362477 (not c!211798)) b!1286709))

(declare-fun m!1437105 () Bool)

(assert (=> d!362477 m!1437105))

(assert (=> d!362477 m!1437105))

(declare-fun m!1437107 () Bool)

(assert (=> d!362477 m!1437107))

(declare-fun m!1437109 () Bool)

(assert (=> d!362477 m!1437109))

(declare-fun m!1437111 () Bool)

(assert (=> b!1286709 m!1437111))

(assert (=> d!362265 d!362477))

(declare-fun bs!328159 () Bool)

(declare-fun d!362479 () Bool)

(assert (= bs!328159 (and d!362479 d!362477)))

(declare-fun lambda!50454 () Int)

(assert (=> bs!328159 (= lambda!50454 lambda!50451)))

(declare-fun b!1286730 () Bool)

(declare-fun e!825207 () Regex!3519)

(assert (=> b!1286730 (= e!825207 EmptyLang!3519)))

(declare-fun b!1286731 () Bool)

(declare-fun e!825210 () Regex!3519)

(assert (=> b!1286731 (= e!825210 (h!18219 (map!2790 rules!2550 lambda!50419)))))

(declare-fun e!825208 () Bool)

(declare-fun lt!424005 () Regex!3519)

(declare-fun b!1286732 () Bool)

(declare-fun head!2196 (List!12884) Regex!3519)

(assert (=> b!1286732 (= e!825208 (= lt!424005 (head!2196 (map!2790 rules!2550 lambda!50419))))))

(declare-fun b!1286734 () Bool)

(assert (=> b!1286734 (= e!825210 e!825207)))

(declare-fun c!211809 () Bool)

(assert (=> b!1286734 (= c!211809 ((_ is Cons!12818) (map!2790 rules!2550 lambda!50419)))))

(declare-fun b!1286735 () Bool)

(declare-fun e!825209 () Bool)

(declare-fun e!825206 () Bool)

(assert (=> b!1286735 (= e!825209 e!825206)))

(declare-fun c!211810 () Bool)

(declare-fun isEmpty!7608 (List!12884) Bool)

(assert (=> b!1286735 (= c!211810 (isEmpty!7608 (map!2790 rules!2550 lambda!50419)))))

(declare-fun b!1286736 () Bool)

(assert (=> b!1286736 (= e!825207 (Union!3519 (h!18219 (map!2790 rules!2550 lambda!50419)) (generalisedUnion!38 (t!116865 (map!2790 rules!2550 lambda!50419)))))))

(declare-fun b!1286737 () Bool)

(assert (=> b!1286737 (= e!825206 e!825208)))

(declare-fun c!211808 () Bool)

(declare-fun tail!1824 (List!12884) List!12884)

(assert (=> b!1286737 (= c!211808 (isEmpty!7608 (tail!1824 (map!2790 rules!2550 lambda!50419))))))

(declare-fun b!1286733 () Bool)

(declare-fun e!825205 () Bool)

(assert (=> b!1286733 (= e!825205 (isEmpty!7608 (t!116865 (map!2790 rules!2550 lambda!50419))))))

(assert (=> d!362479 e!825209))

(declare-fun res!576941 () Bool)

(assert (=> d!362479 (=> (not res!576941) (not e!825209))))

(assert (=> d!362479 (= res!576941 (validRegex!1513 lt!424005))))

(assert (=> d!362479 (= lt!424005 e!825210)))

(declare-fun c!211807 () Bool)

(assert (=> d!362479 (= c!211807 e!825205)))

(declare-fun res!576942 () Bool)

(assert (=> d!362479 (=> (not res!576942) (not e!825205))))

(assert (=> d!362479 (= res!576942 ((_ is Cons!12818) (map!2790 rules!2550 lambda!50419)))))

(assert (=> d!362479 (forall!3236 (map!2790 rules!2550 lambda!50419) lambda!50454)))

(assert (=> d!362479 (= (generalisedUnion!38 (map!2790 rules!2550 lambda!50419)) lt!424005)))

(declare-fun b!1286738 () Bool)

(declare-fun isUnion!3 (Regex!3519) Bool)

(assert (=> b!1286738 (= e!825208 (isUnion!3 lt!424005))))

(declare-fun b!1286739 () Bool)

(declare-fun isEmptyLang!4 (Regex!3519) Bool)

(assert (=> b!1286739 (= e!825206 (isEmptyLang!4 lt!424005))))

(assert (= (and d!362479 res!576942) b!1286733))

(assert (= (and d!362479 c!211807) b!1286731))

(assert (= (and d!362479 (not c!211807)) b!1286734))

(assert (= (and b!1286734 c!211809) b!1286736))

(assert (= (and b!1286734 (not c!211809)) b!1286730))

(assert (= (and d!362479 res!576941) b!1286735))

(assert (= (and b!1286735 c!211810) b!1286739))

(assert (= (and b!1286735 (not c!211810)) b!1286737))

(assert (= (and b!1286737 c!211808) b!1286732))

(assert (= (and b!1286737 (not c!211808)) b!1286738))

(declare-fun m!1437113 () Bool)

(assert (=> b!1286733 m!1437113))

(assert (=> b!1286737 m!1436579))

(declare-fun m!1437115 () Bool)

(assert (=> b!1286737 m!1437115))

(assert (=> b!1286737 m!1437115))

(declare-fun m!1437117 () Bool)

(assert (=> b!1286737 m!1437117))

(declare-fun m!1437119 () Bool)

(assert (=> b!1286738 m!1437119))

(assert (=> b!1286735 m!1436579))

(declare-fun m!1437121 () Bool)

(assert (=> b!1286735 m!1437121))

(declare-fun m!1437123 () Bool)

(assert (=> d!362479 m!1437123))

(assert (=> d!362479 m!1436579))

(declare-fun m!1437125 () Bool)

(assert (=> d!362479 m!1437125))

(declare-fun m!1437127 () Bool)

(assert (=> b!1286736 m!1437127))

(declare-fun m!1437129 () Bool)

(assert (=> b!1286739 m!1437129))

(assert (=> b!1286732 m!1436579))

(declare-fun m!1437131 () Bool)

(assert (=> b!1286732 m!1437131))

(assert (=> d!362265 d!362479))

(declare-fun d!362481 () Bool)

(declare-fun lt!424008 () List!12884)

(declare-fun size!10447 (List!12884) Int)

(declare-fun size!10448 (List!12879) Int)

(assert (=> d!362481 (= (size!10447 lt!424008) (size!10448 rules!2550))))

(declare-fun e!825213 () List!12884)

(assert (=> d!362481 (= lt!424008 e!825213)))

(declare-fun c!211813 () Bool)

(assert (=> d!362481 (= c!211813 ((_ is Nil!12813) rules!2550))))

(assert (=> d!362481 (= (map!2790 rules!2550 lambda!50419) lt!424008)))

(declare-fun b!1286744 () Bool)

(assert (=> b!1286744 (= e!825213 Nil!12818)))

(declare-fun b!1286745 () Bool)

(declare-fun $colon$colon!125 (List!12884 Regex!3519) List!12884)

(declare-fun dynLambda!5587 (Int Rule!4210) Regex!3519)

(assert (=> b!1286745 (= e!825213 ($colon$colon!125 (map!2790 (t!116826 rules!2550) lambda!50419) (dynLambda!5587 lambda!50419 (h!18214 rules!2550))))))

(assert (= (and d!362481 c!211813) b!1286744))

(assert (= (and d!362481 (not c!211813)) b!1286745))

(declare-fun b_lambda!36683 () Bool)

(assert (=> (not b_lambda!36683) (not b!1286745)))

(declare-fun m!1437133 () Bool)

(assert (=> d!362481 m!1437133))

(declare-fun m!1437135 () Bool)

(assert (=> d!362481 m!1437135))

(declare-fun m!1437137 () Bool)

(assert (=> b!1286745 m!1437137))

(declare-fun m!1437139 () Bool)

(assert (=> b!1286745 m!1437139))

(assert (=> b!1286745 m!1437137))

(assert (=> b!1286745 m!1437139))

(declare-fun m!1437141 () Bool)

(assert (=> b!1286745 m!1437141))

(assert (=> d!362265 d!362481))

(declare-fun d!362483 () Bool)

(assert (=> d!362483 (= (list!4761 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34))) (list!4765 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34)))))))

(declare-fun bs!328160 () Bool)

(assert (= bs!328160 d!362483))

(declare-fun m!1437143 () Bool)

(assert (=> bs!328160 m!1437143))

(assert (=> b!1286264 d!362483))

(declare-fun d!362485 () Bool)

(assert (=> d!362485 (= (list!4761 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34))) (list!4765 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34)))))))

(declare-fun bs!328161 () Bool)

(assert (= bs!328161 d!362485))

(declare-fun m!1437145 () Bool)

(assert (=> bs!328161 m!1437145))

(assert (=> b!1286262 d!362485))

(declare-fun d!362487 () Bool)

(declare-fun lt!424011 () Int)

(assert (=> d!362487 (>= lt!424011 0)))

(declare-fun e!825216 () Int)

(assert (=> d!362487 (= lt!424011 e!825216)))

(declare-fun c!211816 () Bool)

(assert (=> d!362487 (= c!211816 ((_ is Nil!12812) (list!4761 lt!423830)))))

(assert (=> d!362487 (= (size!10441 (list!4761 lt!423830)) lt!424011)))

(declare-fun b!1286750 () Bool)

(assert (=> b!1286750 (= e!825216 0)))

(declare-fun b!1286751 () Bool)

(assert (=> b!1286751 (= e!825216 (+ 1 (size!10441 (t!116825 (list!4761 lt!423830)))))))

(assert (= (and d!362487 c!211816) b!1286750))

(assert (= (and d!362487 (not c!211816)) b!1286751))

(declare-fun m!1437147 () Bool)

(assert (=> b!1286751 m!1437147))

(assert (=> d!362273 d!362487))

(declare-fun d!362489 () Bool)

(assert (=> d!362489 (= (list!4761 lt!423830) (list!4765 (c!211671 lt!423830)))))

(declare-fun bs!328162 () Bool)

(assert (= bs!328162 d!362489))

(declare-fun m!1437149 () Bool)

(assert (=> bs!328162 m!1437149))

(assert (=> d!362273 d!362489))

(declare-fun d!362491 () Bool)

(declare-fun lt!424014 () Int)

(assert (=> d!362491 (= lt!424014 (size!10441 (list!4765 (c!211671 lt!423830))))))

(assert (=> d!362491 (= lt!424014 (ite ((_ is Empty!4211) (c!211671 lt!423830)) 0 (ite ((_ is Leaf!6510) (c!211671 lt!423830)) (csize!8653 (c!211671 lt!423830)) (csize!8652 (c!211671 lt!423830)))))))

(assert (=> d!362491 (= (size!10442 (c!211671 lt!423830)) lt!424014)))

(declare-fun bs!328163 () Bool)

(assert (= bs!328163 d!362491))

(assert (=> bs!328163 m!1437149))

(assert (=> bs!328163 m!1437149))

(declare-fun m!1437151 () Bool)

(assert (=> bs!328163 m!1437151))

(assert (=> d!362273 d!362491))

(declare-fun d!362493 () Bool)

(assert (=> d!362493 (= (isEmpty!7602 (originalCharacters!3067 t1!34)) ((_ is Nil!12812) (originalCharacters!3067 t1!34)))))

(assert (=> d!362267 d!362493))

(declare-fun d!362495 () Bool)

(assert (=> d!362495 true))

(declare-fun lambda!50457 () Int)

(declare-fun order!7807 () Int)

(declare-fun order!7809 () Int)

(declare-fun dynLambda!5589 (Int Int) Int)

(declare-fun dynLambda!5590 (Int Int) Int)

(assert (=> d!362495 (< (dynLambda!5589 order!7807 (toChars!3247 (transformation!2205 (rule!3944 t1!34)))) (dynLambda!5590 order!7809 lambda!50457))))

(assert (=> d!362495 true))

(assert (=> d!362495 (< (dynLambda!5585 order!7803 (toValue!3388 (transformation!2205 (rule!3944 t1!34)))) (dynLambda!5590 order!7809 lambda!50457))))

(declare-fun Forall!497 (Int) Bool)

(assert (=> d!362495 (= (semiInverseModEq!832 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (toValue!3388 (transformation!2205 (rule!3944 t1!34)))) (Forall!497 lambda!50457))))

(declare-fun bs!328164 () Bool)

(assert (= bs!328164 d!362495))

(declare-fun m!1437153 () Bool)

(assert (=> bs!328164 m!1437153))

(assert (=> d!362245 d!362495))

(declare-fun bs!328165 () Bool)

(declare-fun d!362497 () Bool)

(assert (= bs!328165 (and d!362497 d!362361)))

(declare-fun lambda!50458 () Int)

(assert (=> bs!328165 (= (= (toValue!3388 (transformation!2205 (rule!3944 t1!34))) (toValue!3388 (transformation!2205 (h!18214 rules!2550)))) (= lambda!50458 lambda!50444))))

(declare-fun bs!328166 () Bool)

(assert (= bs!328166 (and d!362497 d!362467)))

(assert (=> bs!328166 (= (= (toValue!3388 (transformation!2205 (rule!3944 t1!34))) (toValue!3388 (transformation!2205 (rule!3944 t2!34)))) (= lambda!50458 lambda!50445))))

(assert (=> d!362497 true))

(assert (=> d!362497 (< (dynLambda!5585 order!7803 (toValue!3388 (transformation!2205 (rule!3944 t1!34)))) (dynLambda!5586 order!7805 lambda!50458))))

(assert (=> d!362497 (= (equivClasses!791 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (toValue!3388 (transformation!2205 (rule!3944 t1!34)))) (Forall2!399 lambda!50458))))

(declare-fun bs!328167 () Bool)

(assert (= bs!328167 d!362497))

(declare-fun m!1437155 () Bool)

(assert (=> bs!328167 m!1437155))

(assert (=> b!1286200 d!362497))

(declare-fun d!362499 () Bool)

(declare-fun lt!424015 () Int)

(assert (=> d!362499 (>= lt!424015 0)))

(declare-fun e!825217 () Int)

(assert (=> d!362499 (= lt!424015 e!825217)))

(declare-fun c!211817 () Bool)

(assert (=> d!362499 (= c!211817 ((_ is Nil!12812) lt!423865))))

(assert (=> d!362499 (= (size!10441 lt!423865) lt!424015)))

(declare-fun b!1286756 () Bool)

(assert (=> b!1286756 (= e!825217 0)))

(declare-fun b!1286757 () Bool)

(assert (=> b!1286757 (= e!825217 (+ 1 (size!10441 (t!116825 lt!423865))))))

(assert (= (and d!362499 c!211817) b!1286756))

(assert (= (and d!362499 (not c!211817)) b!1286757))

(declare-fun m!1437157 () Bool)

(assert (=> b!1286757 m!1437157))

(assert (=> b!1286221 d!362499))

(declare-fun d!362501 () Bool)

(declare-fun lt!424016 () Int)

(assert (=> d!362501 (>= lt!424016 0)))

(declare-fun e!825218 () Int)

(assert (=> d!362501 (= lt!424016 e!825218)))

(declare-fun c!211818 () Bool)

(assert (=> d!362501 (= c!211818 ((_ is Nil!12812) (list!4761 (charsOf!1177 t1!34))))))

(assert (=> d!362501 (= (size!10441 (list!4761 (charsOf!1177 t1!34))) lt!424016)))

(declare-fun b!1286758 () Bool)

(assert (=> b!1286758 (= e!825218 0)))

(declare-fun b!1286759 () Bool)

(assert (=> b!1286759 (= e!825218 (+ 1 (size!10441 (t!116825 (list!4761 (charsOf!1177 t1!34))))))))

(assert (= (and d!362501 c!211818) b!1286758))

(assert (= (and d!362501 (not c!211818)) b!1286759))

(assert (=> b!1286759 m!1436757))

(assert (=> b!1286221 d!362501))

(declare-fun d!362503 () Bool)

(declare-fun lt!424017 () Int)

(assert (=> d!362503 (>= lt!424017 0)))

(declare-fun e!825219 () Int)

(assert (=> d!362503 (= lt!424017 e!825219)))

(declare-fun c!211819 () Bool)

(assert (=> d!362503 (= c!211819 ((_ is Nil!12812) (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)))))

(assert (=> d!362503 (= (size!10441 (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)) lt!424017)))

(declare-fun b!1286760 () Bool)

(assert (=> b!1286760 (= e!825219 0)))

(declare-fun b!1286761 () Bool)

(assert (=> b!1286761 (= e!825219 (+ 1 (size!10441 (t!116825 (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)))))))

(assert (= (and d!362503 c!211819) b!1286760))

(assert (= (and d!362503 (not c!211819)) b!1286761))

(declare-fun m!1437159 () Bool)

(assert (=> b!1286761 m!1437159))

(assert (=> b!1286221 d!362503))

(declare-fun d!362505 () Bool)

(declare-fun res!576947 () Bool)

(declare-fun e!825224 () Bool)

(assert (=> d!362505 (=> res!576947 e!825224)))

(assert (=> d!362505 (= res!576947 ((_ is Nil!12813) rules!2550))))

(assert (=> d!362505 (= (noDuplicateTag!802 thiss!19762 rules!2550 Nil!12819) e!825224)))

(declare-fun b!1286766 () Bool)

(declare-fun e!825225 () Bool)

(assert (=> b!1286766 (= e!825224 e!825225)))

(declare-fun res!576948 () Bool)

(assert (=> b!1286766 (=> (not res!576948) (not e!825225))))

(declare-fun contains!2142 (List!12885 String!15711) Bool)

(assert (=> b!1286766 (= res!576948 (not (contains!2142 Nil!12819 (tag!2467 (h!18214 rules!2550)))))))

(declare-fun b!1286767 () Bool)

(assert (=> b!1286767 (= e!825225 (noDuplicateTag!802 thiss!19762 (t!116826 rules!2550) (Cons!12819 (tag!2467 (h!18214 rules!2550)) Nil!12819)))))

(assert (= (and d!362505 (not res!576947)) b!1286766))

(assert (= (and b!1286766 res!576948) b!1286767))

(declare-fun m!1437161 () Bool)

(assert (=> b!1286766 m!1437161))

(declare-fun m!1437163 () Bool)

(assert (=> b!1286767 m!1437163))

(assert (=> b!1286284 d!362505))

(declare-fun d!362507 () Bool)

(declare-fun lt!424018 () Int)

(assert (=> d!362507 (= lt!424018 (size!10445 (list!4764 (_1!7201 lt!423861))))))

(assert (=> d!362507 (= lt!424018 (size!10446 (c!211708 (_1!7201 lt!423861))))))

(assert (=> d!362507 (= (size!10440 (_1!7201 lt!423861)) lt!424018)))

(declare-fun bs!328168 () Bool)

(assert (= bs!328168 d!362507))

(declare-fun m!1437165 () Bool)

(assert (=> bs!328168 m!1437165))

(assert (=> bs!328168 m!1437165))

(declare-fun m!1437167 () Bool)

(assert (=> bs!328168 m!1437167))

(declare-fun m!1437169 () Bool)

(assert (=> bs!328168 m!1437169))

(assert (=> d!362253 d!362507))

(declare-fun d!362509 () Bool)

(assert (=> d!362509 (= (list!4764 (_1!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t2!34))))) (list!4767 (c!211708 (_1!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t2!34)))))))))

(declare-fun bs!328169 () Bool)

(assert (= bs!328169 d!362509))

(declare-fun m!1437171 () Bool)

(assert (=> bs!328169 m!1437171))

(assert (=> d!362253 d!362509))

(declare-fun d!362511 () Bool)

(declare-fun lt!424019 () BalanceConc!8362)

(assert (=> d!362511 (= (list!4761 lt!424019) (printList!534 thiss!19762 (list!4764 (singletonSeq!782 t2!34))))))

(assert (=> d!362511 (= lt!424019 (printTailRec!516 thiss!19762 (singletonSeq!782 t2!34) 0 (BalanceConc!8363 Empty!4211)))))

(assert (=> d!362511 (= (print!708 thiss!19762 (singletonSeq!782 t2!34)) lt!424019)))

(declare-fun bs!328170 () Bool)

(assert (= bs!328170 d!362511))

(declare-fun m!1437173 () Bool)

(assert (=> bs!328170 m!1437173))

(assert (=> bs!328170 m!1436523))

(assert (=> bs!328170 m!1436525))

(assert (=> bs!328170 m!1436525))

(declare-fun m!1437175 () Bool)

(assert (=> bs!328170 m!1437175))

(assert (=> bs!328170 m!1436523))

(declare-fun m!1437177 () Bool)

(assert (=> bs!328170 m!1437177))

(assert (=> d!362253 d!362511))

(declare-fun d!362513 () Bool)

(declare-fun e!825226 () Bool)

(assert (=> d!362513 e!825226))

(declare-fun res!576949 () Bool)

(assert (=> d!362513 (=> (not res!576949) (not e!825226))))

(declare-fun lt!424020 () BalanceConc!8366)

(assert (=> d!362513 (= res!576949 (= (list!4764 lt!424020) (Cons!12817 t2!34 Nil!12817)))))

(assert (=> d!362513 (= lt!424020 (singleton!337 t2!34))))

(assert (=> d!362513 (= (singletonSeq!782 t2!34) lt!424020)))

(declare-fun b!1286768 () Bool)

(assert (=> b!1286768 (= e!825226 (isBalanced!1231 (c!211708 lt!424020)))))

(assert (= (and d!362513 res!576949) b!1286768))

(declare-fun m!1437179 () Bool)

(assert (=> d!362513 m!1437179))

(declare-fun m!1437181 () Bool)

(assert (=> d!362513 m!1437181))

(declare-fun m!1437183 () Bool)

(assert (=> b!1286768 m!1437183))

(assert (=> d!362253 d!362513))

(assert (=> d!362253 d!362201))

(declare-fun e!825227 () Bool)

(declare-fun b!1286769 () Bool)

(declare-fun lt!424021 () tuple2!12630)

(assert (=> b!1286769 (= e!825227 (= (_2!7201 lt!424021) (print!708 thiss!19762 (singletonSeq!782 t2!34))))))

(declare-fun e!825228 () Bool)

(declare-fun b!1286771 () Bool)

(assert (=> b!1286771 (= e!825228 (= (list!4761 (_2!7201 lt!424021)) (_2!7203 (lexList!490 thiss!19762 rules!2550 (list!4761 (print!708 thiss!19762 (singletonSeq!782 t2!34)))))))))

(declare-fun b!1286772 () Bool)

(declare-fun e!825229 () Bool)

(assert (=> b!1286772 (= e!825229 (not (isEmpty!7605 (_1!7201 lt!424021))))))

(declare-fun b!1286773 () Bool)

(declare-fun res!576952 () Bool)

(assert (=> b!1286773 (=> (not res!576952) (not e!825228))))

(assert (=> b!1286773 (= res!576952 (= (list!4764 (_1!7201 lt!424021)) (_1!7203 (lexList!490 thiss!19762 rules!2550 (list!4761 (print!708 thiss!19762 (singletonSeq!782 t2!34)))))))))

(declare-fun d!362515 () Bool)

(assert (=> d!362515 e!825228))

(declare-fun res!576950 () Bool)

(assert (=> d!362515 (=> (not res!576950) (not e!825228))))

(assert (=> d!362515 (= res!576950 e!825227)))

(declare-fun c!211820 () Bool)

(assert (=> d!362515 (= c!211820 (> (size!10440 (_1!7201 lt!424021)) 0))))

(assert (=> d!362515 (= lt!424021 (lexTailRecV2!339 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t2!34)) (BalanceConc!8363 Empty!4211) (print!708 thiss!19762 (singletonSeq!782 t2!34)) (BalanceConc!8367 Empty!4213)))))

(assert (=> d!362515 (= (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t2!34))) lt!424021)))

(declare-fun b!1286770 () Bool)

(assert (=> b!1286770 (= e!825227 e!825229)))

(declare-fun res!576951 () Bool)

(assert (=> b!1286770 (= res!576951 (< (size!10436 (_2!7201 lt!424021)) (size!10436 (print!708 thiss!19762 (singletonSeq!782 t2!34)))))))

(assert (=> b!1286770 (=> (not res!576951) (not e!825229))))

(assert (= (and d!362515 c!211820) b!1286770))

(assert (= (and d!362515 (not c!211820)) b!1286769))

(assert (= (and b!1286770 res!576951) b!1286772))

(assert (= (and d!362515 res!576950) b!1286773))

(assert (= (and b!1286773 res!576952) b!1286771))

(declare-fun m!1437185 () Bool)

(assert (=> d!362515 m!1437185))

(assert (=> d!362515 m!1436529))

(assert (=> d!362515 m!1436529))

(declare-fun m!1437187 () Bool)

(assert (=> d!362515 m!1437187))

(declare-fun m!1437189 () Bool)

(assert (=> b!1286771 m!1437189))

(assert (=> b!1286771 m!1436529))

(declare-fun m!1437191 () Bool)

(assert (=> b!1286771 m!1437191))

(assert (=> b!1286771 m!1437191))

(declare-fun m!1437193 () Bool)

(assert (=> b!1286771 m!1437193))

(declare-fun m!1437195 () Bool)

(assert (=> b!1286773 m!1437195))

(assert (=> b!1286773 m!1436529))

(assert (=> b!1286773 m!1437191))

(assert (=> b!1286773 m!1437191))

(assert (=> b!1286773 m!1437193))

(declare-fun m!1437197 () Bool)

(assert (=> b!1286772 m!1437197))

(declare-fun m!1437199 () Bool)

(assert (=> b!1286770 m!1437199))

(assert (=> b!1286770 m!1436529))

(declare-fun m!1437201 () Bool)

(assert (=> b!1286770 m!1437201))

(assert (=> d!362253 d!362515))

(declare-fun d!362517 () Bool)

(assert (=> d!362517 (= (list!4764 (singletonSeq!782 t2!34)) (list!4767 (c!211708 (singletonSeq!782 t2!34))))))

(declare-fun bs!328171 () Bool)

(assert (= bs!328171 d!362517))

(declare-fun m!1437203 () Bool)

(assert (=> bs!328171 m!1437203))

(assert (=> d!362253 d!362517))

(declare-fun d!362519 () Bool)

(declare-fun charsToBigInt!1 (List!12877) Int)

(assert (=> d!362519 (= (inv!17 (value!72475 t1!34)) (= (charsToBigInt!1 (text!16513 (value!72475 t1!34))) (value!72467 (value!72475 t1!34))))))

(declare-fun bs!328172 () Bool)

(assert (= bs!328172 d!362519))

(declare-fun m!1437205 () Bool)

(assert (=> bs!328172 m!1437205))

(assert (=> b!1286287 d!362519))

(declare-fun d!362521 () Bool)

(declare-fun lt!424022 () Bool)

(assert (=> d!362521 (= lt!424022 (isEmpty!7602 (list!4761 (_2!7201 lt!423859))))))

(assert (=> d!362521 (= lt!424022 (isEmpty!7606 (c!211671 (_2!7201 lt!423859))))))

(assert (=> d!362521 (= (isEmpty!7601 (_2!7201 lt!423859)) lt!424022)))

(declare-fun bs!328173 () Bool)

(assert (= bs!328173 d!362521))

(declare-fun m!1437207 () Bool)

(assert (=> bs!328173 m!1437207))

(assert (=> bs!328173 m!1437207))

(declare-fun m!1437209 () Bool)

(assert (=> bs!328173 m!1437209))

(declare-fun m!1437211 () Bool)

(assert (=> bs!328173 m!1437211))

(assert (=> b!1286196 d!362521))

(declare-fun lt!424023 () Bool)

(declare-fun d!362523 () Bool)

(assert (=> d!362523 (= lt!424023 (isEmpty!7602 (list!4761 (_2!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t1!34)))))))))

(assert (=> d!362523 (= lt!424023 (isEmpty!7606 (c!211671 (_2!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t1!34)))))))))

(assert (=> d!362523 (= (isEmpty!7601 (_2!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t1!34))))) lt!424023)))

(declare-fun bs!328174 () Bool)

(assert (= bs!328174 d!362523))

(declare-fun m!1437213 () Bool)

(assert (=> bs!328174 m!1437213))

(assert (=> bs!328174 m!1437213))

(declare-fun m!1437215 () Bool)

(assert (=> bs!328174 m!1437215))

(declare-fun m!1437217 () Bool)

(assert (=> bs!328174 m!1437217))

(assert (=> b!1286197 d!362523))

(assert (=> b!1286197 d!362305))

(assert (=> b!1286197 d!362339))

(assert (=> b!1286197 d!362341))

(declare-fun d!362525 () Bool)

(declare-fun nullableFct!253 (Regex!3519) Bool)

(assert (=> d!362525 (= (nullable!1115 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550))) (nullableFct!253 (reg!3848 (rulesRegex!90 thiss!19762 rules!2550))))))

(declare-fun bs!328175 () Bool)

(assert (= bs!328175 d!362525))

(declare-fun m!1437219 () Bool)

(assert (=> bs!328175 m!1437219))

(assert (=> b!1286252 d!362525))

(declare-fun d!362527 () Bool)

(declare-fun isBalanced!1232 (Conc!4211) Bool)

(assert (=> d!362527 (= (inv!17226 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34))) (isBalanced!1232 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34)))))))

(declare-fun bs!328176 () Bool)

(assert (= bs!328176 d!362527))

(declare-fun m!1437221 () Bool)

(assert (=> bs!328176 m!1437221))

(assert (=> tb!69145 d!362527))

(declare-fun d!362529 () Bool)

(assert (=> d!362529 (= (inv!17 (value!72475 t2!34)) (= (charsToBigInt!1 (text!16513 (value!72475 t2!34))) (value!72467 (value!72475 t2!34))))))

(declare-fun bs!328177 () Bool)

(assert (= bs!328177 d!362529))

(declare-fun m!1437223 () Bool)

(assert (=> bs!328177 m!1437223))

(assert (=> b!1286278 d!362529))

(declare-fun d!362531 () Bool)

(declare-fun c!211823 () Bool)

(assert (=> d!362531 (= c!211823 ((_ is Node!4211) (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34)))))))

(declare-fun e!825234 () Bool)

(assert (=> d!362531 (= (inv!17225 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34)))) e!825234)))

(declare-fun b!1286780 () Bool)

(declare-fun inv!17230 (Conc!4211) Bool)

(assert (=> b!1286780 (= e!825234 (inv!17230 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34)))))))

(declare-fun b!1286781 () Bool)

(declare-fun e!825235 () Bool)

(assert (=> b!1286781 (= e!825234 e!825235)))

(declare-fun res!576955 () Bool)

(assert (=> b!1286781 (= res!576955 (not ((_ is Leaf!6510) (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34))))))))

(assert (=> b!1286781 (=> res!576955 e!825235)))

(declare-fun b!1286782 () Bool)

(declare-fun inv!17231 (Conc!4211) Bool)

(assert (=> b!1286782 (= e!825235 (inv!17231 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34)))))))

(assert (= (and d!362531 c!211823) b!1286780))

(assert (= (and d!362531 (not c!211823)) b!1286781))

(assert (= (and b!1286781 (not res!576955)) b!1286782))

(declare-fun m!1437225 () Bool)

(assert (=> b!1286780 m!1437225))

(declare-fun m!1437227 () Bool)

(assert (=> b!1286782 m!1437227))

(assert (=> b!1286266 d!362531))

(declare-fun d!362533 () Bool)

(declare-fun lt!424026 () C!7328)

(declare-fun contains!2143 (List!12878 C!7328) Bool)

(assert (=> d!362533 (contains!2143 (list!4761 lt!423830) lt!424026)))

(declare-fun e!825241 () C!7328)

(assert (=> d!362533 (= lt!424026 e!825241)))

(declare-fun c!211826 () Bool)

(assert (=> d!362533 (= c!211826 (= 0 0))))

(declare-fun e!825240 () Bool)

(assert (=> d!362533 e!825240))

(declare-fun res!576958 () Bool)

(assert (=> d!362533 (=> (not res!576958) (not e!825240))))

(assert (=> d!362533 (= res!576958 (<= 0 0))))

(assert (=> d!362533 (= (apply!2748 (list!4761 lt!423830) 0) lt!424026)))

(declare-fun b!1286789 () Bool)

(assert (=> b!1286789 (= e!825240 (< 0 (size!10441 (list!4761 lt!423830))))))

(declare-fun b!1286790 () Bool)

(declare-fun head!2197 (List!12878) C!7328)

(assert (=> b!1286790 (= e!825241 (head!2197 (list!4761 lt!423830)))))

(declare-fun b!1286791 () Bool)

(declare-fun tail!1825 (List!12878) List!12878)

(assert (=> b!1286791 (= e!825241 (apply!2748 (tail!1825 (list!4761 lt!423830)) (- 0 1)))))

(assert (= (and d!362533 res!576958) b!1286789))

(assert (= (and d!362533 c!211826) b!1286790))

(assert (= (and d!362533 (not c!211826)) b!1286791))

(assert (=> d!362533 m!1436557))

(declare-fun m!1437229 () Bool)

(assert (=> d!362533 m!1437229))

(assert (=> b!1286789 m!1436557))

(assert (=> b!1286789 m!1436607))

(assert (=> b!1286790 m!1436557))

(declare-fun m!1437231 () Bool)

(assert (=> b!1286790 m!1437231))

(assert (=> b!1286791 m!1436557))

(declare-fun m!1437233 () Bool)

(assert (=> b!1286791 m!1437233))

(assert (=> b!1286791 m!1437233))

(declare-fun m!1437235 () Bool)

(assert (=> b!1286791 m!1437235))

(assert (=> d!362259 d!362533))

(assert (=> d!362259 d!362489))

(declare-fun b!1286806 () Bool)

(declare-fun e!825251 () Bool)

(assert (=> b!1286806 (= e!825251 (< 0 (size!10442 (c!211671 lt!423830))))))

(declare-fun d!362535 () Bool)

(declare-fun lt!424032 () C!7328)

(assert (=> d!362535 (= lt!424032 (apply!2748 (list!4765 (c!211671 lt!423830)) 0))))

(declare-fun e!825253 () C!7328)

(assert (=> d!362535 (= lt!424032 e!825253)))

(declare-fun c!211833 () Bool)

(assert (=> d!362535 (= c!211833 ((_ is Leaf!6510) (c!211671 lt!423830)))))

(assert (=> d!362535 e!825251))

(declare-fun res!576961 () Bool)

(assert (=> d!362535 (=> (not res!576961) (not e!825251))))

(assert (=> d!362535 (= res!576961 (<= 0 0))))

(assert (=> d!362535 (= (apply!2749 (c!211671 lt!423830) 0) lt!424032)))

(declare-fun b!1286807 () Bool)

(declare-fun e!825250 () C!7328)

(declare-fun call!88487 () C!7328)

(assert (=> b!1286807 (= e!825250 call!88487)))

(declare-fun b!1286808 () Bool)

(declare-fun e!825252 () Int)

(assert (=> b!1286808 (= e!825252 0)))

(declare-fun b!1286809 () Bool)

(assert (=> b!1286809 (= e!825252 (- 0 (size!10442 (left!11035 (c!211671 lt!423830)))))))

(declare-fun b!1286810 () Bool)

(assert (=> b!1286810 (= e!825253 e!825250)))

(declare-fun lt!424031 () Bool)

(declare-fun appendIndex!119 (List!12878 List!12878 Int) Bool)

(assert (=> b!1286810 (= lt!424031 (appendIndex!119 (list!4765 (left!11035 (c!211671 lt!423830))) (list!4765 (right!11365 (c!211671 lt!423830))) 0))))

(declare-fun c!211835 () Bool)

(assert (=> b!1286810 (= c!211835 (< 0 (size!10442 (left!11035 (c!211671 lt!423830)))))))

(declare-fun b!1286811 () Bool)

(assert (=> b!1286811 (= e!825250 call!88487)))

(declare-fun bm!88482 () Bool)

(declare-fun c!211834 () Bool)

(assert (=> bm!88482 (= c!211834 c!211835)))

(assert (=> bm!88482 (= call!88487 (apply!2749 (ite c!211835 (left!11035 (c!211671 lt!423830)) (right!11365 (c!211671 lt!423830))) e!825252))))

(declare-fun b!1286812 () Bool)

(declare-fun apply!2755 (IArray!8427 Int) C!7328)

(assert (=> b!1286812 (= e!825253 (apply!2755 (xs!6922 (c!211671 lt!423830)) 0))))

(assert (= (and d!362535 res!576961) b!1286806))

(assert (= (and d!362535 c!211833) b!1286812))

(assert (= (and d!362535 (not c!211833)) b!1286810))

(assert (= (and b!1286810 c!211835) b!1286807))

(assert (= (and b!1286810 (not c!211835)) b!1286811))

(assert (= (or b!1286807 b!1286811) bm!88482))

(assert (= (and bm!88482 c!211834) b!1286808))

(assert (= (and bm!88482 (not c!211834)) b!1286809))

(assert (=> b!1286806 m!1436609))

(assert (=> d!362535 m!1437149))

(assert (=> d!362535 m!1437149))

(declare-fun m!1437237 () Bool)

(assert (=> d!362535 m!1437237))

(declare-fun m!1437239 () Bool)

(assert (=> bm!88482 m!1437239))

(declare-fun m!1437241 () Bool)

(assert (=> b!1286812 m!1437241))

(declare-fun m!1437243 () Bool)

(assert (=> b!1286809 m!1437243))

(declare-fun m!1437245 () Bool)

(assert (=> b!1286810 m!1437245))

(declare-fun m!1437247 () Bool)

(assert (=> b!1286810 m!1437247))

(assert (=> b!1286810 m!1437245))

(assert (=> b!1286810 m!1437247))

(declare-fun m!1437249 () Bool)

(assert (=> b!1286810 m!1437249))

(assert (=> b!1286810 m!1437243))

(assert (=> d!362259 d!362535))

(declare-fun d!362537 () Bool)

(declare-fun res!576962 () Bool)

(declare-fun e!825254 () Bool)

(assert (=> d!362537 (=> res!576962 e!825254)))

(assert (=> d!362537 (= res!576962 (not ((_ is Cons!12813) (t!116826 rules!2550))))))

(assert (=> d!362537 (= (sepAndNonSepRulesDisjointChars!578 rules!2550 (t!116826 rules!2550)) e!825254)))

(declare-fun b!1286813 () Bool)

(declare-fun e!825255 () Bool)

(assert (=> b!1286813 (= e!825254 e!825255)))

(declare-fun res!576963 () Bool)

(assert (=> b!1286813 (=> (not res!576963) (not e!825255))))

(assert (=> b!1286813 (= res!576963 (ruleDisjointCharsFromAllFromOtherType!276 (h!18214 (t!116826 rules!2550)) rules!2550))))

(declare-fun b!1286814 () Bool)

(assert (=> b!1286814 (= e!825255 (sepAndNonSepRulesDisjointChars!578 rules!2550 (t!116826 (t!116826 rules!2550))))))

(assert (= (and d!362537 (not res!576962)) b!1286813))

(assert (= (and b!1286813 res!576963) b!1286814))

(declare-fun m!1437251 () Bool)

(assert (=> b!1286813 m!1437251))

(declare-fun m!1437253 () Bool)

(assert (=> b!1286814 m!1437253))

(assert (=> b!1286207 d!362537))

(declare-fun d!362539 () Bool)

(declare-fun c!211836 () Bool)

(assert (=> d!362539 (= c!211836 ((_ is Node!4211) (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34)))))))

(declare-fun e!825256 () Bool)

(assert (=> d!362539 (= (inv!17225 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34)))) e!825256)))

(declare-fun b!1286815 () Bool)

(assert (=> b!1286815 (= e!825256 (inv!17230 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34)))))))

(declare-fun b!1286816 () Bool)

(declare-fun e!825257 () Bool)

(assert (=> b!1286816 (= e!825256 e!825257)))

(declare-fun res!576964 () Bool)

(assert (=> b!1286816 (= res!576964 (not ((_ is Leaf!6510) (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34))))))))

(assert (=> b!1286816 (=> res!576964 e!825257)))

(declare-fun b!1286817 () Bool)

(assert (=> b!1286817 (= e!825257 (inv!17231 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34)))))))

(assert (= (and d!362539 c!211836) b!1286815))

(assert (= (and d!362539 (not c!211836)) b!1286816))

(assert (= (and b!1286816 (not res!576964)) b!1286817))

(declare-fun m!1437255 () Bool)

(assert (=> b!1286815 m!1437255))

(declare-fun m!1437257 () Bool)

(assert (=> b!1286817 m!1437257))

(assert (=> b!1286257 d!362539))

(declare-fun d!362541 () Bool)

(declare-fun c!211839 () Bool)

(assert (=> d!362541 (= c!211839 ((_ is Nil!12812) lt!423865))))

(declare-fun e!825260 () (InoxSet C!7328))

(assert (=> d!362541 (= (content!1813 lt!423865) e!825260)))

(declare-fun b!1286822 () Bool)

(assert (=> b!1286822 (= e!825260 ((as const (Array C!7328 Bool)) false))))

(declare-fun b!1286823 () Bool)

(assert (=> b!1286823 (= e!825260 ((_ map or) (store ((as const (Array C!7328 Bool)) false) (h!18213 lt!423865) true) (content!1813 (t!116825 lt!423865))))))

(assert (= (and d!362541 c!211839) b!1286822))

(assert (= (and d!362541 (not c!211839)) b!1286823))

(declare-fun m!1437259 () Bool)

(assert (=> b!1286823 m!1437259))

(declare-fun m!1437261 () Bool)

(assert (=> b!1286823 m!1437261))

(assert (=> d!362257 d!362541))

(declare-fun d!362543 () Bool)

(declare-fun c!211840 () Bool)

(assert (=> d!362543 (= c!211840 ((_ is Nil!12812) (list!4761 (charsOf!1177 t1!34))))))

(declare-fun e!825261 () (InoxSet C!7328))

(assert (=> d!362543 (= (content!1813 (list!4761 (charsOf!1177 t1!34))) e!825261)))

(declare-fun b!1286824 () Bool)

(assert (=> b!1286824 (= e!825261 ((as const (Array C!7328 Bool)) false))))

(declare-fun b!1286825 () Bool)

(assert (=> b!1286825 (= e!825261 ((_ map or) (store ((as const (Array C!7328 Bool)) false) (h!18213 (list!4761 (charsOf!1177 t1!34))) true) (content!1813 (t!116825 (list!4761 (charsOf!1177 t1!34))))))))

(assert (= (and d!362543 c!211840) b!1286824))

(assert (= (and d!362543 (not c!211840)) b!1286825))

(declare-fun m!1437263 () Bool)

(assert (=> b!1286825 m!1437263))

(assert (=> b!1286825 m!1436761))

(assert (=> d!362257 d!362543))

(declare-fun d!362545 () Bool)

(declare-fun c!211841 () Bool)

(assert (=> d!362545 (= c!211841 ((_ is Nil!12812) (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)))))

(declare-fun e!825262 () (InoxSet C!7328))

(assert (=> d!362545 (= (content!1813 (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)) e!825262)))

(declare-fun b!1286826 () Bool)

(assert (=> b!1286826 (= e!825262 ((as const (Array C!7328 Bool)) false))))

(declare-fun b!1286827 () Bool)

(assert (=> b!1286827 (= e!825262 ((_ map or) (store ((as const (Array C!7328 Bool)) false) (h!18213 (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)) true) (content!1813 (t!116825 (Cons!12812 (apply!2743 lt!423830 0) Nil!12812)))))))

(assert (= (and d!362545 c!211841) b!1286826))

(assert (= (and d!362545 (not c!211841)) b!1286827))

(declare-fun m!1437265 () Bool)

(assert (=> b!1286827 m!1437265))

(declare-fun m!1437267 () Bool)

(assert (=> b!1286827 m!1437267))

(assert (=> d!362257 d!362545))

(declare-fun d!362547 () Bool)

(declare-fun lt!424033 () Token!4072)

(assert (=> d!362547 (= lt!424033 (apply!2751 (list!4764 (_1!7201 lt!423861)) 0))))

(assert (=> d!362547 (= lt!424033 (apply!2752 (c!211708 (_1!7201 lt!423861)) 0))))

(declare-fun e!825263 () Bool)

(assert (=> d!362547 e!825263))

(declare-fun res!576965 () Bool)

(assert (=> d!362547 (=> (not res!576965) (not e!825263))))

(assert (=> d!362547 (= res!576965 (<= 0 0))))

(assert (=> d!362547 (= (apply!2747 (_1!7201 lt!423861) 0) lt!424033)))

(declare-fun b!1286828 () Bool)

(assert (=> b!1286828 (= e!825263 (< 0 (size!10440 (_1!7201 lt!423861))))))

(assert (= (and d!362547 res!576965) b!1286828))

(assert (=> d!362547 m!1437165))

(assert (=> d!362547 m!1437165))

(declare-fun m!1437269 () Bool)

(assert (=> d!362547 m!1437269))

(declare-fun m!1437271 () Bool)

(assert (=> d!362547 m!1437271))

(assert (=> b!1286828 m!1436527))

(assert (=> b!1286208 d!362547))

(declare-fun b!1286839 () Bool)

(declare-fun res!576974 () Bool)

(declare-fun e!825266 () Bool)

(assert (=> b!1286839 (=> (not res!576974) (not e!825266))))

(declare-fun height!599 (Conc!4211) Int)

(declare-fun ++!3237 (Conc!4211 Conc!4211) Conc!4211)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1286839 (= res!576974 (>= (height!599 (++!3237 (c!211671 (charsOf!1177 t1!34)) (c!211671 (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))))) (max!0 (height!599 (c!211671 (charsOf!1177 t1!34))) (height!599 (c!211671 (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0)))))))))

(declare-fun b!1286838 () Bool)

(declare-fun res!576975 () Bool)

(assert (=> b!1286838 (=> (not res!576975) (not e!825266))))

(assert (=> b!1286838 (= res!576975 (<= (height!599 (++!3237 (c!211671 (charsOf!1177 t1!34)) (c!211671 (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))))) (+ (max!0 (height!599 (c!211671 (charsOf!1177 t1!34))) (height!599 (c!211671 (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))))) 1)))))

(declare-fun b!1286837 () Bool)

(declare-fun res!576976 () Bool)

(assert (=> b!1286837 (=> (not res!576976) (not e!825266))))

(assert (=> b!1286837 (= res!576976 (isBalanced!1232 (++!3237 (c!211671 (charsOf!1177 t1!34)) (c!211671 (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))))))))

(declare-fun d!362549 () Bool)

(assert (=> d!362549 e!825266))

(declare-fun res!576977 () Bool)

(assert (=> d!362549 (=> (not res!576977) (not e!825266))))

(declare-fun appendAssocInst!239 (Conc!4211 Conc!4211) Bool)

(assert (=> d!362549 (= res!576977 (appendAssocInst!239 (c!211671 (charsOf!1177 t1!34)) (c!211671 (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0)))))))

(declare-fun lt!424036 () BalanceConc!8362)

(assert (=> d!362549 (= lt!424036 (BalanceConc!8363 (++!3237 (c!211671 (charsOf!1177 t1!34)) (c!211671 (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))))))))

(assert (=> d!362549 (= (++!3235 (charsOf!1177 t1!34) (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))) lt!424036)))

(declare-fun b!1286840 () Bool)

(assert (=> b!1286840 (= e!825266 (= (list!4761 lt!424036) (++!3233 (list!4761 (charsOf!1177 t1!34)) (list!4761 (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))))))))

(assert (= (and d!362549 res!576977) b!1286837))

(assert (= (and b!1286837 res!576976) b!1286838))

(assert (= (and b!1286838 res!576975) b!1286839))

(assert (= (and b!1286839 res!576974) b!1286840))

(declare-fun m!1437273 () Bool)

(assert (=> b!1286840 m!1437273))

(assert (=> b!1286840 m!1436299))

(assert (=> b!1286840 m!1436301))

(assert (=> b!1286840 m!1436619))

(declare-fun m!1437275 () Bool)

(assert (=> b!1286840 m!1437275))

(assert (=> b!1286840 m!1436301))

(assert (=> b!1286840 m!1437275))

(declare-fun m!1437277 () Bool)

(assert (=> b!1286840 m!1437277))

(declare-fun m!1437279 () Bool)

(assert (=> b!1286838 m!1437279))

(declare-fun m!1437281 () Bool)

(assert (=> b!1286838 m!1437281))

(declare-fun m!1437283 () Bool)

(assert (=> b!1286838 m!1437283))

(declare-fun m!1437285 () Bool)

(assert (=> b!1286838 m!1437285))

(declare-fun m!1437287 () Bool)

(assert (=> b!1286838 m!1437287))

(assert (=> b!1286838 m!1437279))

(assert (=> b!1286838 m!1437285))

(assert (=> b!1286838 m!1437283))

(assert (=> b!1286837 m!1437279))

(assert (=> b!1286837 m!1437279))

(declare-fun m!1437289 () Bool)

(assert (=> b!1286837 m!1437289))

(assert (=> b!1286839 m!1437279))

(assert (=> b!1286839 m!1437281))

(assert (=> b!1286839 m!1437283))

(assert (=> b!1286839 m!1437285))

(assert (=> b!1286839 m!1437287))

(assert (=> b!1286839 m!1437279))

(assert (=> b!1286839 m!1437285))

(assert (=> b!1286839 m!1437283))

(declare-fun m!1437291 () Bool)

(assert (=> d!362549 m!1437291))

(assert (=> d!362549 m!1437279))

(assert (=> d!362277 d!362549))

(declare-fun lt!424063 () Bool)

(declare-fun d!362551 () Bool)

(declare-fun prefixMatch!32 (Regex!3519 List!12878) Bool)

(assert (=> d!362551 (= lt!424063 (prefixMatch!32 (rulesRegex!90 thiss!19762 rules!2550) (list!4761 (++!3235 (charsOf!1177 t1!34) (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))))))))

(declare-datatypes ((Context!1122 0))(
  ( (Context!1123 (exprs!1061 List!12884)) )
))
(declare-fun prefixMatchZipperSequence!123 ((InoxSet Context!1122) BalanceConc!8362 Int) Bool)

(declare-fun focus!52 (Regex!3519) (InoxSet Context!1122))

(assert (=> d!362551 (= lt!424063 (prefixMatchZipperSequence!123 (focus!52 (rulesRegex!90 thiss!19762 rules!2550)) (++!3235 (charsOf!1177 t1!34) (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))) 0))))

(declare-fun lt!424060 () Unit!19002)

(declare-fun lt!424064 () Unit!19002)

(assert (=> d!362551 (= lt!424060 lt!424064)))

(declare-fun lt!424065 () (InoxSet Context!1122))

(declare-fun lt!424059 () List!12878)

(declare-fun prefixMatchZipper!32 ((InoxSet Context!1122) List!12878) Bool)

(assert (=> d!362551 (= (prefixMatch!32 (rulesRegex!90 thiss!19762 rules!2550) lt!424059) (prefixMatchZipper!32 lt!424065 lt!424059))))

(declare-datatypes ((List!12887 0))(
  ( (Nil!12821) (Cons!12821 (h!18222 Context!1122) (t!116886 List!12887)) )
))
(declare-fun lt!424057 () List!12887)

(declare-fun prefixMatchZipperRegexEquiv!32 ((InoxSet Context!1122) List!12887 Regex!3519 List!12878) Unit!19002)

(assert (=> d!362551 (= lt!424064 (prefixMatchZipperRegexEquiv!32 lt!424065 lt!424057 (rulesRegex!90 thiss!19762 rules!2550) lt!424059))))

(assert (=> d!362551 (= lt!424059 (list!4761 (++!3235 (charsOf!1177 t1!34) (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0)))))))

(declare-fun toList!716 ((InoxSet Context!1122)) List!12887)

(assert (=> d!362551 (= lt!424057 (toList!716 (focus!52 (rulesRegex!90 thiss!19762 rules!2550))))))

(assert (=> d!362551 (= lt!424065 (focus!52 (rulesRegex!90 thiss!19762 rules!2550)))))

(declare-fun lt!424062 () Unit!19002)

(declare-fun lt!424066 () Unit!19002)

(assert (=> d!362551 (= lt!424062 lt!424066)))

(declare-fun lt!424058 () Int)

(declare-fun lt!424061 () (InoxSet Context!1122))

(declare-fun dropList!342 (BalanceConc!8362 Int) List!12878)

(assert (=> d!362551 (= (prefixMatchZipper!32 lt!424061 (dropList!342 (++!3235 (charsOf!1177 t1!34) (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))) lt!424058)) (prefixMatchZipperSequence!123 lt!424061 (++!3235 (charsOf!1177 t1!34) (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))) lt!424058))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!32 ((InoxSet Context!1122) BalanceConc!8362 Int) Unit!19002)

(assert (=> d!362551 (= lt!424066 (lemmaprefixMatchZipperSequenceEquivalent!32 lt!424061 (++!3235 (charsOf!1177 t1!34) (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0))) lt!424058))))

(assert (=> d!362551 (= lt!424058 0)))

(assert (=> d!362551 (= lt!424061 (focus!52 (rulesRegex!90 thiss!19762 rules!2550)))))

(assert (=> d!362551 (validRegex!1513 (rulesRegex!90 thiss!19762 rules!2550))))

(assert (=> d!362551 (= (prefixMatchZipperSequence!121 (rulesRegex!90 thiss!19762 rules!2550) (++!3235 (charsOf!1177 t1!34) (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0)))) lt!424063)))

(declare-fun bs!328178 () Bool)

(assert (= bs!328178 d!362551))

(declare-fun m!1437293 () Bool)

(assert (=> bs!328178 m!1437293))

(declare-fun m!1437295 () Bool)

(assert (=> bs!328178 m!1437295))

(assert (=> bs!328178 m!1436613))

(declare-fun m!1437297 () Bool)

(assert (=> bs!328178 m!1437297))

(assert (=> bs!328178 m!1436307))

(declare-fun m!1437299 () Bool)

(assert (=> bs!328178 m!1437299))

(declare-fun m!1437301 () Bool)

(assert (=> bs!328178 m!1437301))

(declare-fun m!1437303 () Bool)

(assert (=> bs!328178 m!1437303))

(assert (=> bs!328178 m!1436613))

(declare-fun m!1437305 () Bool)

(assert (=> bs!328178 m!1437305))

(assert (=> bs!328178 m!1437293))

(assert (=> bs!328178 m!1436613))

(declare-fun m!1437307 () Bool)

(assert (=> bs!328178 m!1437307))

(assert (=> bs!328178 m!1436307))

(declare-fun m!1437309 () Bool)

(assert (=> bs!328178 m!1437309))

(declare-fun m!1437311 () Bool)

(assert (=> bs!328178 m!1437311))

(assert (=> bs!328178 m!1436613))

(assert (=> bs!328178 m!1437309))

(assert (=> bs!328178 m!1436307))

(declare-fun m!1437313 () Bool)

(assert (=> bs!328178 m!1437313))

(assert (=> bs!328178 m!1436307))

(assert (=> bs!328178 m!1436309))

(assert (=> bs!328178 m!1436307))

(assert (=> bs!328178 m!1437293))

(declare-fun m!1437315 () Bool)

(assert (=> bs!328178 m!1437315))

(assert (=> bs!328178 m!1436613))

(assert (=> bs!328178 m!1437301))

(assert (=> d!362277 d!362551))

(declare-fun d!362553 () Bool)

(declare-fun e!825269 () Bool)

(assert (=> d!362553 e!825269))

(declare-fun res!576980 () Bool)

(assert (=> d!362553 (=> (not res!576980) (not e!825269))))

(declare-fun lt!424069 () BalanceConc!8362)

(assert (=> d!362553 (= res!576980 (= (list!4761 lt!424069) (Cons!12812 (apply!2743 (charsOf!1177 t2!34) 0) Nil!12812)))))

(declare-fun singleton!338 (C!7328) BalanceConc!8362)

(assert (=> d!362553 (= lt!424069 (singleton!338 (apply!2743 (charsOf!1177 t2!34) 0)))))

(assert (=> d!362553 (= (singletonSeq!783 (apply!2743 (charsOf!1177 t2!34) 0)) lt!424069)))

(declare-fun b!1286843 () Bool)

(assert (=> b!1286843 (= e!825269 (isBalanced!1232 (c!211671 lt!424069)))))

(assert (= (and d!362553 res!576980) b!1286843))

(declare-fun m!1437317 () Bool)

(assert (=> d!362553 m!1437317))

(assert (=> d!362553 m!1436617))

(declare-fun m!1437319 () Bool)

(assert (=> d!362553 m!1437319))

(declare-fun m!1437321 () Bool)

(assert (=> b!1286843 m!1437321))

(assert (=> d!362277 d!362553))

(assert (=> d!362277 d!362265))

(declare-fun d!362555 () Bool)

(declare-fun lt!424070 () C!7328)

(assert (=> d!362555 (= lt!424070 (apply!2748 (list!4761 (charsOf!1177 t2!34)) 0))))

(assert (=> d!362555 (= lt!424070 (apply!2749 (c!211671 (charsOf!1177 t2!34)) 0))))

(declare-fun e!825270 () Bool)

(assert (=> d!362555 e!825270))

(declare-fun res!576981 () Bool)

(assert (=> d!362555 (=> (not res!576981) (not e!825270))))

(assert (=> d!362555 (= res!576981 (<= 0 0))))

(assert (=> d!362555 (= (apply!2743 (charsOf!1177 t2!34) 0) lt!424070)))

(declare-fun b!1286844 () Bool)

(assert (=> b!1286844 (= e!825270 (< 0 (size!10436 (charsOf!1177 t2!34))))))

(assert (= (and d!362555 res!576981) b!1286844))

(assert (=> d!362555 m!1436315))

(declare-fun m!1437323 () Bool)

(assert (=> d!362555 m!1437323))

(assert (=> d!362555 m!1437323))

(declare-fun m!1437325 () Bool)

(assert (=> d!362555 m!1437325))

(declare-fun m!1437327 () Bool)

(assert (=> d!362555 m!1437327))

(assert (=> b!1286844 m!1436315))

(declare-fun m!1437329 () Bool)

(assert (=> b!1286844 m!1437329))

(assert (=> d!362277 d!362555))

(assert (=> d!362277 d!362263))

(assert (=> d!362277 d!362275))

(declare-fun d!362557 () Bool)

(assert (=> d!362557 (= (list!4761 lt!423871) (list!4765 (c!211671 lt!423871)))))

(declare-fun bs!328179 () Bool)

(assert (= bs!328179 d!362557))

(declare-fun m!1437331 () Bool)

(assert (=> bs!328179 m!1437331))

(assert (=> d!362263 d!362557))

(declare-fun d!362559 () Bool)

(assert (=> d!362559 (= (inv!17226 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34))) (isBalanced!1232 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34)))))))

(declare-fun bs!328180 () Bool)

(assert (= bs!328180 d!362559))

(declare-fun m!1437333 () Bool)

(assert (=> bs!328180 m!1437333))

(assert (=> tb!69151 d!362559))

(declare-fun d!362561 () Bool)

(declare-fun lt!424071 () Bool)

(assert (=> d!362561 (= lt!424071 (isEmpty!7602 (list!4761 (_2!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t2!34)))))))))

(assert (=> d!362561 (= lt!424071 (isEmpty!7606 (c!211671 (_2!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t2!34)))))))))

(assert (=> d!362561 (= (isEmpty!7601 (_2!7201 (lex!771 thiss!19762 rules!2550 (print!708 thiss!19762 (singletonSeq!782 t2!34))))) lt!424071)))

(declare-fun bs!328181 () Bool)

(assert (= bs!328181 d!362561))

(declare-fun m!1437335 () Bool)

(assert (=> bs!328181 m!1437335))

(assert (=> bs!328181 m!1437335))

(declare-fun m!1437337 () Bool)

(assert (=> bs!328181 m!1437337))

(declare-fun m!1437339 () Bool)

(assert (=> bs!328181 m!1437339))

(assert (=> b!1286210 d!362561))

(assert (=> b!1286210 d!362515))

(assert (=> b!1286210 d!362511))

(assert (=> b!1286210 d!362513))

(declare-fun d!362563 () Bool)

(declare-fun lt!424072 () Int)

(assert (=> d!362563 (>= lt!424072 0)))

(declare-fun e!825271 () Int)

(assert (=> d!362563 (= lt!424072 e!825271)))

(declare-fun c!211845 () Bool)

(assert (=> d!362563 (= c!211845 ((_ is Nil!12812) (originalCharacters!3067 t2!34)))))

(assert (=> d!362563 (= (size!10441 (originalCharacters!3067 t2!34)) lt!424072)))

(declare-fun b!1286845 () Bool)

(assert (=> b!1286845 (= e!825271 0)))

(declare-fun b!1286846 () Bool)

(assert (=> b!1286846 (= e!825271 (+ 1 (size!10441 (t!116825 (originalCharacters!3067 t2!34)))))))

(assert (= (and d!362563 c!211845) b!1286845))

(assert (= (and d!362563 (not c!211845)) b!1286846))

(declare-fun m!1437341 () Bool)

(assert (=> b!1286846 m!1437341))

(assert (=> b!1286265 d!362563))

(declare-fun d!362565 () Bool)

(declare-fun lt!424073 () Int)

(assert (=> d!362565 (>= lt!424073 0)))

(declare-fun e!825272 () Int)

(assert (=> d!362565 (= lt!424073 e!825272)))

(declare-fun c!211846 () Bool)

(assert (=> d!362565 (= c!211846 ((_ is Nil!12812) (originalCharacters!3067 t1!34)))))

(assert (=> d!362565 (= (size!10441 (originalCharacters!3067 t1!34)) lt!424073)))

(declare-fun b!1286847 () Bool)

(assert (=> b!1286847 (= e!825272 0)))

(declare-fun b!1286848 () Bool)

(assert (=> b!1286848 (= e!825272 (+ 1 (size!10441 (t!116825 (originalCharacters!3067 t1!34)))))))

(assert (= (and d!362565 c!211846) b!1286847))

(assert (= (and d!362565 (not c!211846)) b!1286848))

(declare-fun m!1437343 () Bool)

(assert (=> b!1286848 m!1437343))

(assert (=> b!1286263 d!362565))

(declare-fun bs!328182 () Bool)

(declare-fun d!362567 () Bool)

(assert (= bs!328182 (and d!362567 d!362495)))

(declare-fun lambda!50459 () Int)

(assert (=> bs!328182 (= (and (= (toChars!3247 (transformation!2205 (h!18214 rules!2550))) (toChars!3247 (transformation!2205 (rule!3944 t1!34)))) (= (toValue!3388 (transformation!2205 (h!18214 rules!2550))) (toValue!3388 (transformation!2205 (rule!3944 t1!34))))) (= lambda!50459 lambda!50457))))

(assert (=> d!362567 true))

(assert (=> d!362567 (< (dynLambda!5589 order!7807 (toChars!3247 (transformation!2205 (h!18214 rules!2550)))) (dynLambda!5590 order!7809 lambda!50459))))

(assert (=> d!362567 true))

(assert (=> d!362567 (< (dynLambda!5585 order!7803 (toValue!3388 (transformation!2205 (h!18214 rules!2550)))) (dynLambda!5590 order!7809 lambda!50459))))

(assert (=> d!362567 (= (semiInverseModEq!832 (toChars!3247 (transformation!2205 (h!18214 rules!2550))) (toValue!3388 (transformation!2205 (h!18214 rules!2550)))) (Forall!497 lambda!50459))))

(declare-fun bs!328183 () Bool)

(assert (= bs!328183 d!362567))

(declare-fun m!1437345 () Bool)

(assert (=> bs!328183 m!1437345))

(assert (=> d!362249 d!362567))

(declare-fun bs!328184 () Bool)

(declare-fun d!362569 () Bool)

(assert (= bs!328184 (and d!362569 d!362495)))

(declare-fun lambda!50460 () Int)

(assert (=> bs!328184 (= (and (= (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (toChars!3247 (transformation!2205 (rule!3944 t1!34)))) (= (toValue!3388 (transformation!2205 (rule!3944 t2!34))) (toValue!3388 (transformation!2205 (rule!3944 t1!34))))) (= lambda!50460 lambda!50457))))

(declare-fun bs!328185 () Bool)

(assert (= bs!328185 (and d!362569 d!362567)))

(assert (=> bs!328185 (= (and (= (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (toChars!3247 (transformation!2205 (h!18214 rules!2550)))) (= (toValue!3388 (transformation!2205 (rule!3944 t2!34))) (toValue!3388 (transformation!2205 (h!18214 rules!2550))))) (= lambda!50460 lambda!50459))))

(assert (=> d!362569 true))

(assert (=> d!362569 (< (dynLambda!5589 order!7807 (toChars!3247 (transformation!2205 (rule!3944 t2!34)))) (dynLambda!5590 order!7809 lambda!50460))))

(assert (=> d!362569 true))

(assert (=> d!362569 (< (dynLambda!5585 order!7803 (toValue!3388 (transformation!2205 (rule!3944 t2!34)))) (dynLambda!5590 order!7809 lambda!50460))))

(assert (=> d!362569 (= (semiInverseModEq!832 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (toValue!3388 (transformation!2205 (rule!3944 t2!34)))) (Forall!497 lambda!50460))))

(declare-fun bs!328186 () Bool)

(assert (= bs!328186 d!362569))

(declare-fun m!1437347 () Bool)

(assert (=> bs!328186 m!1437347))

(assert (=> d!362283 d!362569))

(declare-fun d!362571 () Bool)

(assert (=> d!362571 true))

(declare-fun lt!424076 () Bool)

(assert (=> d!362571 (= lt!424076 (rulesValidInductive!696 thiss!19762 rules!2550))))

(declare-fun lambda!50463 () Int)

(declare-fun forall!3237 (List!12879 Int) Bool)

(assert (=> d!362571 (= lt!424076 (forall!3237 rules!2550 lambda!50463))))

(assert (=> d!362571 (= (rulesValid!802 thiss!19762 rules!2550) lt!424076)))

(declare-fun bs!328187 () Bool)

(assert (= bs!328187 d!362571))

(assert (=> bs!328187 m!1437109))

(declare-fun m!1437349 () Bool)

(assert (=> bs!328187 m!1437349))

(assert (=> d!362279 d!362571))

(declare-fun b!1286853 () Bool)

(declare-fun b_free!30259 () Bool)

(declare-fun b_next!30963 () Bool)

(assert (=> b!1286853 (= b_free!30259 (not b_next!30963))))

(declare-fun tp!374720 () Bool)

(declare-fun b_and!85535 () Bool)

(assert (=> b!1286853 (= tp!374720 b_and!85535)))

(declare-fun b_free!30261 () Bool)

(declare-fun b_next!30965 () Bool)

(assert (=> b!1286853 (= b_free!30261 (not b_next!30965))))

(declare-fun tb!69165 () Bool)

(declare-fun t!116883 () Bool)

(assert (=> (and b!1286853 (= (toChars!3247 (transformation!2205 (h!18214 (t!116826 (t!116826 rules!2550))))) (toChars!3247 (transformation!2205 (rule!3944 t1!34)))) t!116883) tb!69165))

(declare-fun result!83768 () Bool)

(assert (= result!83768 result!83738))

(assert (=> d!362263 t!116883))

(assert (=> b!1286262 t!116883))

(declare-fun t!116885 () Bool)

(declare-fun tb!69167 () Bool)

(assert (=> (and b!1286853 (= (toChars!3247 (transformation!2205 (h!18214 (t!116826 (t!116826 rules!2550))))) (toChars!3247 (transformation!2205 (rule!3944 t2!34)))) t!116885) tb!69167))

(declare-fun result!83770 () Bool)

(assert (= result!83770 result!83746))

(assert (=> b!1286264 t!116885))

(assert (=> d!362275 t!116885))

(declare-fun b_and!85537 () Bool)

(declare-fun tp!374718 () Bool)

(assert (=> b!1286853 (= tp!374718 (and (=> t!116883 result!83768) (=> t!116885 result!83770) b_and!85537))))

(declare-fun e!825276 () Bool)

(assert (=> b!1286853 (= e!825276 (and tp!374720 tp!374718))))

(declare-fun b!1286852 () Bool)

(declare-fun tp!374719 () Bool)

(declare-fun e!825275 () Bool)

(assert (=> b!1286852 (= e!825275 (and tp!374719 (inv!17218 (tag!2467 (h!18214 (t!116826 (t!116826 rules!2550))))) (inv!17221 (transformation!2205 (h!18214 (t!116826 (t!116826 rules!2550))))) e!825276))))

(declare-fun b!1286851 () Bool)

(declare-fun e!825273 () Bool)

(declare-fun tp!374717 () Bool)

(assert (=> b!1286851 (= e!825273 (and e!825275 tp!374717))))

(assert (=> b!1286317 (= tp!374606 e!825273)))

(assert (= b!1286852 b!1286853))

(assert (= b!1286851 b!1286852))

(assert (= (and b!1286317 ((_ is Cons!12813) (t!116826 (t!116826 rules!2550)))) b!1286851))

(declare-fun m!1437351 () Bool)

(assert (=> b!1286852 m!1437351))

(declare-fun m!1437353 () Bool)

(assert (=> b!1286852 m!1437353))

(declare-fun b!1286854 () Bool)

(declare-fun e!825277 () Bool)

(declare-fun tp!374721 () Bool)

(assert (=> b!1286854 (= e!825277 (and tp_is_empty!6547 tp!374721))))

(assert (=> b!1286328 (= tp!374617 e!825277)))

(assert (= (and b!1286328 ((_ is Cons!12812) (t!116825 (originalCharacters!3067 t1!34)))) b!1286854))

(declare-fun e!825278 () Bool)

(assert (=> b!1286318 (= tp!374608 e!825278)))

(declare-fun b!1286858 () Bool)

(declare-fun tp!374726 () Bool)

(declare-fun tp!374725 () Bool)

(assert (=> b!1286858 (= e!825278 (and tp!374726 tp!374725))))

(declare-fun b!1286856 () Bool)

(declare-fun tp!374722 () Bool)

(declare-fun tp!374724 () Bool)

(assert (=> b!1286856 (= e!825278 (and tp!374722 tp!374724))))

(declare-fun b!1286857 () Bool)

(declare-fun tp!374723 () Bool)

(assert (=> b!1286857 (= e!825278 tp!374723)))

(declare-fun b!1286855 () Bool)

(assert (=> b!1286855 (= e!825278 tp_is_empty!6547)))

(assert (= (and b!1286318 ((_ is ElementMatch!3519) (regex!2205 (h!18214 (t!116826 rules!2550))))) b!1286855))

(assert (= (and b!1286318 ((_ is Concat!5815) (regex!2205 (h!18214 (t!116826 rules!2550))))) b!1286856))

(assert (= (and b!1286318 ((_ is Star!3519) (regex!2205 (h!18214 (t!116826 rules!2550))))) b!1286857))

(assert (= (and b!1286318 ((_ is Union!3519) (regex!2205 (h!18214 (t!116826 rules!2550))))) b!1286858))

(declare-fun e!825279 () Bool)

(assert (=> b!1286302 (= tp!374588 e!825279)))

(declare-fun b!1286862 () Bool)

(declare-fun tp!374731 () Bool)

(declare-fun tp!374730 () Bool)

(assert (=> b!1286862 (= e!825279 (and tp!374731 tp!374730))))

(declare-fun b!1286860 () Bool)

(declare-fun tp!374727 () Bool)

(declare-fun tp!374729 () Bool)

(assert (=> b!1286860 (= e!825279 (and tp!374727 tp!374729))))

(declare-fun b!1286861 () Bool)

(declare-fun tp!374728 () Bool)

(assert (=> b!1286861 (= e!825279 tp!374728)))

(declare-fun b!1286859 () Bool)

(assert (=> b!1286859 (= e!825279 tp_is_empty!6547)))

(assert (= (and b!1286302 ((_ is ElementMatch!3519) (regOne!7550 (regex!2205 (rule!3944 t1!34))))) b!1286859))

(assert (= (and b!1286302 ((_ is Concat!5815) (regOne!7550 (regex!2205 (rule!3944 t1!34))))) b!1286860))

(assert (= (and b!1286302 ((_ is Star!3519) (regOne!7550 (regex!2205 (rule!3944 t1!34))))) b!1286861))

(assert (= (and b!1286302 ((_ is Union!3519) (regOne!7550 (regex!2205 (rule!3944 t1!34))))) b!1286862))

(declare-fun e!825280 () Bool)

(assert (=> b!1286302 (= tp!374590 e!825280)))

(declare-fun b!1286866 () Bool)

(declare-fun tp!374736 () Bool)

(declare-fun tp!374735 () Bool)

(assert (=> b!1286866 (= e!825280 (and tp!374736 tp!374735))))

(declare-fun b!1286864 () Bool)

(declare-fun tp!374732 () Bool)

(declare-fun tp!374734 () Bool)

(assert (=> b!1286864 (= e!825280 (and tp!374732 tp!374734))))

(declare-fun b!1286865 () Bool)

(declare-fun tp!374733 () Bool)

(assert (=> b!1286865 (= e!825280 tp!374733)))

(declare-fun b!1286863 () Bool)

(assert (=> b!1286863 (= e!825280 tp_is_empty!6547)))

(assert (= (and b!1286302 ((_ is ElementMatch!3519) (regTwo!7550 (regex!2205 (rule!3944 t1!34))))) b!1286863))

(assert (= (and b!1286302 ((_ is Concat!5815) (regTwo!7550 (regex!2205 (rule!3944 t1!34))))) b!1286864))

(assert (= (and b!1286302 ((_ is Star!3519) (regTwo!7550 (regex!2205 (rule!3944 t1!34))))) b!1286865))

(assert (= (and b!1286302 ((_ is Union!3519) (regTwo!7550 (regex!2205 (rule!3944 t1!34))))) b!1286866))

(declare-fun e!825281 () Bool)

(assert (=> b!1286307 (= tp!374594 e!825281)))

(declare-fun b!1286870 () Bool)

(declare-fun tp!374741 () Bool)

(declare-fun tp!374740 () Bool)

(assert (=> b!1286870 (= e!825281 (and tp!374741 tp!374740))))

(declare-fun b!1286868 () Bool)

(declare-fun tp!374737 () Bool)

(declare-fun tp!374739 () Bool)

(assert (=> b!1286868 (= e!825281 (and tp!374737 tp!374739))))

(declare-fun b!1286869 () Bool)

(declare-fun tp!374738 () Bool)

(assert (=> b!1286869 (= e!825281 tp!374738)))

(declare-fun b!1286867 () Bool)

(assert (=> b!1286867 (= e!825281 tp_is_empty!6547)))

(assert (= (and b!1286307 ((_ is ElementMatch!3519) (reg!3848 (regex!2205 (h!18214 rules!2550))))) b!1286867))

(assert (= (and b!1286307 ((_ is Concat!5815) (reg!3848 (regex!2205 (h!18214 rules!2550))))) b!1286868))

(assert (= (and b!1286307 ((_ is Star!3519) (reg!3848 (regex!2205 (h!18214 rules!2550))))) b!1286869))

(assert (= (and b!1286307 ((_ is Union!3519) (reg!3848 (regex!2205 (h!18214 rules!2550))))) b!1286870))

(declare-fun b!1286871 () Bool)

(declare-fun e!825282 () Bool)

(declare-fun tp!374742 () Bool)

(assert (=> b!1286871 (= e!825282 (and tp_is_empty!6547 tp!374742))))

(assert (=> b!1286329 (= tp!374618 e!825282)))

(assert (= (and b!1286329 ((_ is Cons!12812) (t!116825 (originalCharacters!3067 t2!34)))) b!1286871))

(declare-fun e!825283 () Bool)

(assert (=> b!1286306 (= tp!374593 e!825283)))

(declare-fun b!1286875 () Bool)

(declare-fun tp!374747 () Bool)

(declare-fun tp!374746 () Bool)

(assert (=> b!1286875 (= e!825283 (and tp!374747 tp!374746))))

(declare-fun b!1286873 () Bool)

(declare-fun tp!374743 () Bool)

(declare-fun tp!374745 () Bool)

(assert (=> b!1286873 (= e!825283 (and tp!374743 tp!374745))))

(declare-fun b!1286874 () Bool)

(declare-fun tp!374744 () Bool)

(assert (=> b!1286874 (= e!825283 tp!374744)))

(declare-fun b!1286872 () Bool)

(assert (=> b!1286872 (= e!825283 tp_is_empty!6547)))

(assert (= (and b!1286306 ((_ is ElementMatch!3519) (regOne!7550 (regex!2205 (h!18214 rules!2550))))) b!1286872))

(assert (= (and b!1286306 ((_ is Concat!5815) (regOne!7550 (regex!2205 (h!18214 rules!2550))))) b!1286873))

(assert (= (and b!1286306 ((_ is Star!3519) (regOne!7550 (regex!2205 (h!18214 rules!2550))))) b!1286874))

(assert (= (and b!1286306 ((_ is Union!3519) (regOne!7550 (regex!2205 (h!18214 rules!2550))))) b!1286875))

(declare-fun e!825284 () Bool)

(assert (=> b!1286306 (= tp!374595 e!825284)))

(declare-fun b!1286879 () Bool)

(declare-fun tp!374752 () Bool)

(declare-fun tp!374751 () Bool)

(assert (=> b!1286879 (= e!825284 (and tp!374752 tp!374751))))

(declare-fun b!1286877 () Bool)

(declare-fun tp!374748 () Bool)

(declare-fun tp!374750 () Bool)

(assert (=> b!1286877 (= e!825284 (and tp!374748 tp!374750))))

(declare-fun b!1286878 () Bool)

(declare-fun tp!374749 () Bool)

(assert (=> b!1286878 (= e!825284 tp!374749)))

(declare-fun b!1286876 () Bool)

(assert (=> b!1286876 (= e!825284 tp_is_empty!6547)))

(assert (= (and b!1286306 ((_ is ElementMatch!3519) (regTwo!7550 (regex!2205 (h!18214 rules!2550))))) b!1286876))

(assert (= (and b!1286306 ((_ is Concat!5815) (regTwo!7550 (regex!2205 (h!18214 rules!2550))))) b!1286877))

(assert (= (and b!1286306 ((_ is Star!3519) (regTwo!7550 (regex!2205 (h!18214 rules!2550))))) b!1286878))

(assert (= (and b!1286306 ((_ is Union!3519) (regTwo!7550 (regex!2205 (h!18214 rules!2550))))) b!1286879))

(declare-fun e!825285 () Bool)

(assert (=> b!1286308 (= tp!374597 e!825285)))

(declare-fun b!1286883 () Bool)

(declare-fun tp!374757 () Bool)

(declare-fun tp!374756 () Bool)

(assert (=> b!1286883 (= e!825285 (and tp!374757 tp!374756))))

(declare-fun b!1286881 () Bool)

(declare-fun tp!374753 () Bool)

(declare-fun tp!374755 () Bool)

(assert (=> b!1286881 (= e!825285 (and tp!374753 tp!374755))))

(declare-fun b!1286882 () Bool)

(declare-fun tp!374754 () Bool)

(assert (=> b!1286882 (= e!825285 tp!374754)))

(declare-fun b!1286880 () Bool)

(assert (=> b!1286880 (= e!825285 tp_is_empty!6547)))

(assert (= (and b!1286308 ((_ is ElementMatch!3519) (regOne!7551 (regex!2205 (h!18214 rules!2550))))) b!1286880))

(assert (= (and b!1286308 ((_ is Concat!5815) (regOne!7551 (regex!2205 (h!18214 rules!2550))))) b!1286881))

(assert (= (and b!1286308 ((_ is Star!3519) (regOne!7551 (regex!2205 (h!18214 rules!2550))))) b!1286882))

(assert (= (and b!1286308 ((_ is Union!3519) (regOne!7551 (regex!2205 (h!18214 rules!2550))))) b!1286883))

(declare-fun e!825286 () Bool)

(assert (=> b!1286308 (= tp!374596 e!825286)))

(declare-fun b!1286887 () Bool)

(declare-fun tp!374762 () Bool)

(declare-fun tp!374761 () Bool)

(assert (=> b!1286887 (= e!825286 (and tp!374762 tp!374761))))

(declare-fun b!1286885 () Bool)

(declare-fun tp!374758 () Bool)

(declare-fun tp!374760 () Bool)

(assert (=> b!1286885 (= e!825286 (and tp!374758 tp!374760))))

(declare-fun b!1286886 () Bool)

(declare-fun tp!374759 () Bool)

(assert (=> b!1286886 (= e!825286 tp!374759)))

(declare-fun b!1286884 () Bool)

(assert (=> b!1286884 (= e!825286 tp_is_empty!6547)))

(assert (= (and b!1286308 ((_ is ElementMatch!3519) (regTwo!7551 (regex!2205 (h!18214 rules!2550))))) b!1286884))

(assert (= (and b!1286308 ((_ is Concat!5815) (regTwo!7551 (regex!2205 (h!18214 rules!2550))))) b!1286885))

(assert (= (and b!1286308 ((_ is Star!3519) (regTwo!7551 (regex!2205 (h!18214 rules!2550))))) b!1286886))

(assert (= (and b!1286308 ((_ is Union!3519) (regTwo!7551 (regex!2205 (h!18214 rules!2550))))) b!1286887))

(declare-fun e!825287 () Bool)

(assert (=> b!1286321 (= tp!374610 e!825287)))

(declare-fun b!1286891 () Bool)

(declare-fun tp!374767 () Bool)

(declare-fun tp!374766 () Bool)

(assert (=> b!1286891 (= e!825287 (and tp!374767 tp!374766))))

(declare-fun b!1286889 () Bool)

(declare-fun tp!374763 () Bool)

(declare-fun tp!374765 () Bool)

(assert (=> b!1286889 (= e!825287 (and tp!374763 tp!374765))))

(declare-fun b!1286890 () Bool)

(declare-fun tp!374764 () Bool)

(assert (=> b!1286890 (= e!825287 tp!374764)))

(declare-fun b!1286888 () Bool)

(assert (=> b!1286888 (= e!825287 tp_is_empty!6547)))

(assert (= (and b!1286321 ((_ is ElementMatch!3519) (regOne!7550 (regex!2205 (rule!3944 t2!34))))) b!1286888))

(assert (= (and b!1286321 ((_ is Concat!5815) (regOne!7550 (regex!2205 (rule!3944 t2!34))))) b!1286889))

(assert (= (and b!1286321 ((_ is Star!3519) (regOne!7550 (regex!2205 (rule!3944 t2!34))))) b!1286890))

(assert (= (and b!1286321 ((_ is Union!3519) (regOne!7550 (regex!2205 (rule!3944 t2!34))))) b!1286891))

(declare-fun e!825288 () Bool)

(assert (=> b!1286321 (= tp!374612 e!825288)))

(declare-fun b!1286895 () Bool)

(declare-fun tp!374772 () Bool)

(declare-fun tp!374771 () Bool)

(assert (=> b!1286895 (= e!825288 (and tp!374772 tp!374771))))

(declare-fun b!1286893 () Bool)

(declare-fun tp!374768 () Bool)

(declare-fun tp!374770 () Bool)

(assert (=> b!1286893 (= e!825288 (and tp!374768 tp!374770))))

(declare-fun b!1286894 () Bool)

(declare-fun tp!374769 () Bool)

(assert (=> b!1286894 (= e!825288 tp!374769)))

(declare-fun b!1286892 () Bool)

(assert (=> b!1286892 (= e!825288 tp_is_empty!6547)))

(assert (= (and b!1286321 ((_ is ElementMatch!3519) (regTwo!7550 (regex!2205 (rule!3944 t2!34))))) b!1286892))

(assert (= (and b!1286321 ((_ is Concat!5815) (regTwo!7550 (regex!2205 (rule!3944 t2!34))))) b!1286893))

(assert (= (and b!1286321 ((_ is Star!3519) (regTwo!7550 (regex!2205 (rule!3944 t2!34))))) b!1286894))

(assert (= (and b!1286321 ((_ is Union!3519) (regTwo!7550 (regex!2205 (rule!3944 t2!34))))) b!1286895))

(declare-fun e!825293 () Bool)

(declare-fun b!1286904 () Bool)

(declare-fun tp!374780 () Bool)

(declare-fun tp!374779 () Bool)

(assert (=> b!1286904 (= e!825293 (and (inv!17225 (left!11035 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34))))) tp!374779 (inv!17225 (right!11365 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34))))) tp!374780))))

(declare-fun b!1286906 () Bool)

(declare-fun e!825294 () Bool)

(declare-fun tp!374781 () Bool)

(assert (=> b!1286906 (= e!825294 tp!374781)))

(declare-fun b!1286905 () Bool)

(declare-fun inv!17232 (IArray!8427) Bool)

(assert (=> b!1286905 (= e!825293 (and (inv!17232 (xs!6922 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34))))) e!825294))))

(assert (=> b!1286266 (= tp!374577 (and (inv!17225 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34)))) e!825293))))

(assert (= (and b!1286266 ((_ is Node!4211) (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34))))) b!1286904))

(assert (= b!1286905 b!1286906))

(assert (= (and b!1286266 ((_ is Leaf!6510) (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t2!34))) (value!72475 t2!34))))) b!1286905))

(declare-fun m!1437355 () Bool)

(assert (=> b!1286904 m!1437355))

(declare-fun m!1437357 () Bool)

(assert (=> b!1286904 m!1437357))

(declare-fun m!1437359 () Bool)

(assert (=> b!1286905 m!1437359))

(assert (=> b!1286266 m!1436589))

(declare-fun e!825295 () Bool)

(assert (=> b!1286303 (= tp!374589 e!825295)))

(declare-fun b!1286910 () Bool)

(declare-fun tp!374786 () Bool)

(declare-fun tp!374785 () Bool)

(assert (=> b!1286910 (= e!825295 (and tp!374786 tp!374785))))

(declare-fun b!1286908 () Bool)

(declare-fun tp!374782 () Bool)

(declare-fun tp!374784 () Bool)

(assert (=> b!1286908 (= e!825295 (and tp!374782 tp!374784))))

(declare-fun b!1286909 () Bool)

(declare-fun tp!374783 () Bool)

(assert (=> b!1286909 (= e!825295 tp!374783)))

(declare-fun b!1286907 () Bool)

(assert (=> b!1286907 (= e!825295 tp_is_empty!6547)))

(assert (= (and b!1286303 ((_ is ElementMatch!3519) (reg!3848 (regex!2205 (rule!3944 t1!34))))) b!1286907))

(assert (= (and b!1286303 ((_ is Concat!5815) (reg!3848 (regex!2205 (rule!3944 t1!34))))) b!1286908))

(assert (= (and b!1286303 ((_ is Star!3519) (reg!3848 (regex!2205 (rule!3944 t1!34))))) b!1286909))

(assert (= (and b!1286303 ((_ is Union!3519) (reg!3848 (regex!2205 (rule!3944 t1!34))))) b!1286910))

(declare-fun e!825296 () Bool)

(assert (=> b!1286322 (= tp!374611 e!825296)))

(declare-fun b!1286914 () Bool)

(declare-fun tp!374791 () Bool)

(declare-fun tp!374790 () Bool)

(assert (=> b!1286914 (= e!825296 (and tp!374791 tp!374790))))

(declare-fun b!1286912 () Bool)

(declare-fun tp!374787 () Bool)

(declare-fun tp!374789 () Bool)

(assert (=> b!1286912 (= e!825296 (and tp!374787 tp!374789))))

(declare-fun b!1286913 () Bool)

(declare-fun tp!374788 () Bool)

(assert (=> b!1286913 (= e!825296 tp!374788)))

(declare-fun b!1286911 () Bool)

(assert (=> b!1286911 (= e!825296 tp_is_empty!6547)))

(assert (= (and b!1286322 ((_ is ElementMatch!3519) (reg!3848 (regex!2205 (rule!3944 t2!34))))) b!1286911))

(assert (= (and b!1286322 ((_ is Concat!5815) (reg!3848 (regex!2205 (rule!3944 t2!34))))) b!1286912))

(assert (= (and b!1286322 ((_ is Star!3519) (reg!3848 (regex!2205 (rule!3944 t2!34))))) b!1286913))

(assert (= (and b!1286322 ((_ is Union!3519) (reg!3848 (regex!2205 (rule!3944 t2!34))))) b!1286914))

(declare-fun e!825297 () Bool)

(assert (=> b!1286304 (= tp!374592 e!825297)))

(declare-fun b!1286918 () Bool)

(declare-fun tp!374796 () Bool)

(declare-fun tp!374795 () Bool)

(assert (=> b!1286918 (= e!825297 (and tp!374796 tp!374795))))

(declare-fun b!1286916 () Bool)

(declare-fun tp!374792 () Bool)

(declare-fun tp!374794 () Bool)

(assert (=> b!1286916 (= e!825297 (and tp!374792 tp!374794))))

(declare-fun b!1286917 () Bool)

(declare-fun tp!374793 () Bool)

(assert (=> b!1286917 (= e!825297 tp!374793)))

(declare-fun b!1286915 () Bool)

(assert (=> b!1286915 (= e!825297 tp_is_empty!6547)))

(assert (= (and b!1286304 ((_ is ElementMatch!3519) (regOne!7551 (regex!2205 (rule!3944 t1!34))))) b!1286915))

(assert (= (and b!1286304 ((_ is Concat!5815) (regOne!7551 (regex!2205 (rule!3944 t1!34))))) b!1286916))

(assert (= (and b!1286304 ((_ is Star!3519) (regOne!7551 (regex!2205 (rule!3944 t1!34))))) b!1286917))

(assert (= (and b!1286304 ((_ is Union!3519) (regOne!7551 (regex!2205 (rule!3944 t1!34))))) b!1286918))

(declare-fun e!825298 () Bool)

(assert (=> b!1286304 (= tp!374591 e!825298)))

(declare-fun b!1286922 () Bool)

(declare-fun tp!374801 () Bool)

(declare-fun tp!374800 () Bool)

(assert (=> b!1286922 (= e!825298 (and tp!374801 tp!374800))))

(declare-fun b!1286920 () Bool)

(declare-fun tp!374797 () Bool)

(declare-fun tp!374799 () Bool)

(assert (=> b!1286920 (= e!825298 (and tp!374797 tp!374799))))

(declare-fun b!1286921 () Bool)

(declare-fun tp!374798 () Bool)

(assert (=> b!1286921 (= e!825298 tp!374798)))

(declare-fun b!1286919 () Bool)

(assert (=> b!1286919 (= e!825298 tp_is_empty!6547)))

(assert (= (and b!1286304 ((_ is ElementMatch!3519) (regTwo!7551 (regex!2205 (rule!3944 t1!34))))) b!1286919))

(assert (= (and b!1286304 ((_ is Concat!5815) (regTwo!7551 (regex!2205 (rule!3944 t1!34))))) b!1286920))

(assert (= (and b!1286304 ((_ is Star!3519) (regTwo!7551 (regex!2205 (rule!3944 t1!34))))) b!1286921))

(assert (= (and b!1286304 ((_ is Union!3519) (regTwo!7551 (regex!2205 (rule!3944 t1!34))))) b!1286922))

(declare-fun e!825299 () Bool)

(declare-fun tp!374802 () Bool)

(declare-fun b!1286923 () Bool)

(declare-fun tp!374803 () Bool)

(assert (=> b!1286923 (= e!825299 (and (inv!17225 (left!11035 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34))))) tp!374802 (inv!17225 (right!11365 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34))))) tp!374803))))

(declare-fun b!1286925 () Bool)

(declare-fun e!825300 () Bool)

(declare-fun tp!374804 () Bool)

(assert (=> b!1286925 (= e!825300 tp!374804)))

(declare-fun b!1286924 () Bool)

(assert (=> b!1286924 (= e!825299 (and (inv!17232 (xs!6922 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34))))) e!825300))))

(assert (=> b!1286257 (= tp!374576 (and (inv!17225 (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34)))) e!825299))))

(assert (= (and b!1286257 ((_ is Node!4211) (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34))))) b!1286923))

(assert (= b!1286924 b!1286925))

(assert (= (and b!1286257 ((_ is Leaf!6510) (c!211671 (dynLambda!5580 (toChars!3247 (transformation!2205 (rule!3944 t1!34))) (value!72475 t1!34))))) b!1286924))

(declare-fun m!1437361 () Bool)

(assert (=> b!1286923 m!1437361))

(declare-fun m!1437363 () Bool)

(assert (=> b!1286923 m!1437363))

(declare-fun m!1437365 () Bool)

(assert (=> b!1286924 m!1437365))

(assert (=> b!1286257 m!1436569))

(declare-fun e!825301 () Bool)

(assert (=> b!1286323 (= tp!374614 e!825301)))

(declare-fun b!1286929 () Bool)

(declare-fun tp!374809 () Bool)

(declare-fun tp!374808 () Bool)

(assert (=> b!1286929 (= e!825301 (and tp!374809 tp!374808))))

(declare-fun b!1286927 () Bool)

(declare-fun tp!374805 () Bool)

(declare-fun tp!374807 () Bool)

(assert (=> b!1286927 (= e!825301 (and tp!374805 tp!374807))))

(declare-fun b!1286928 () Bool)

(declare-fun tp!374806 () Bool)

(assert (=> b!1286928 (= e!825301 tp!374806)))

(declare-fun b!1286926 () Bool)

(assert (=> b!1286926 (= e!825301 tp_is_empty!6547)))

(assert (= (and b!1286323 ((_ is ElementMatch!3519) (regOne!7551 (regex!2205 (rule!3944 t2!34))))) b!1286926))

(assert (= (and b!1286323 ((_ is Concat!5815) (regOne!7551 (regex!2205 (rule!3944 t2!34))))) b!1286927))

(assert (= (and b!1286323 ((_ is Star!3519) (regOne!7551 (regex!2205 (rule!3944 t2!34))))) b!1286928))

(assert (= (and b!1286323 ((_ is Union!3519) (regOne!7551 (regex!2205 (rule!3944 t2!34))))) b!1286929))

(declare-fun e!825302 () Bool)

(assert (=> b!1286323 (= tp!374613 e!825302)))

(declare-fun b!1286933 () Bool)

(declare-fun tp!374814 () Bool)

(declare-fun tp!374813 () Bool)

(assert (=> b!1286933 (= e!825302 (and tp!374814 tp!374813))))

(declare-fun b!1286931 () Bool)

(declare-fun tp!374810 () Bool)

(declare-fun tp!374812 () Bool)

(assert (=> b!1286931 (= e!825302 (and tp!374810 tp!374812))))

(declare-fun b!1286932 () Bool)

(declare-fun tp!374811 () Bool)

(assert (=> b!1286932 (= e!825302 tp!374811)))

(declare-fun b!1286930 () Bool)

(assert (=> b!1286930 (= e!825302 tp_is_empty!6547)))

(assert (= (and b!1286323 ((_ is ElementMatch!3519) (regTwo!7551 (regex!2205 (rule!3944 t2!34))))) b!1286930))

(assert (= (and b!1286323 ((_ is Concat!5815) (regTwo!7551 (regex!2205 (rule!3944 t2!34))))) b!1286931))

(assert (= (and b!1286323 ((_ is Star!3519) (regTwo!7551 (regex!2205 (rule!3944 t2!34))))) b!1286932))

(assert (= (and b!1286323 ((_ is Union!3519) (regTwo!7551 (regex!2205 (rule!3944 t2!34))))) b!1286933))

(declare-fun b_lambda!36685 () Bool)

(assert (= b_lambda!36683 (or d!362265 b_lambda!36685)))

(declare-fun bs!328188 () Bool)

(declare-fun d!362573 () Bool)

(assert (= bs!328188 (and d!362573 d!362265)))

(assert (=> bs!328188 (= (dynLambda!5587 lambda!50419 (h!18214 rules!2550)) (regex!2205 (h!18214 rules!2550)))))

(assert (=> b!1286745 d!362573))

(check-sat tp_is_empty!6547 (not b!1286885) b_and!85463 (not d!362553) (not d!362529) (not b!1286864) (not b!1286827) (not d!362569) (not b!1286881) (not b!1286923) (not b!1286771) (not b!1286868) (not b!1286927) (not d!362513) (not bm!88461) (not bm!88460) b_and!85467 (not b!1286861) (not d!362351) (not b!1286862) (not d!362301) (not b!1286854) (not d!362345) (not d!362303) (not b!1286877) (not b!1286702) (not d!362353) (not b!1286924) (not b!1286852) (not b_lambda!36675) (not b!1286772) (not d!362469) (not d!362341) (not d!362485) (not b!1286916) (not b!1286736) b_and!85535 (not b!1286761) (not d!362523) (not b!1286709) (not b!1286770) b_and!85471 (not bm!88482) (not d!362361) (not d!362525) (not d!362479) (not b!1286837) (not b!1286790) (not b_next!30939) (not d!362571) (not b!1286904) (not b!1286703) (not b!1286419) (not b!1286913) (not b!1286895) (not b!1286733) b_and!85525 (not b!1286925) (not d!362517) (not b!1286879) (not b!1286757) b_and!85527 (not b!1286908) (not b!1286848) (not b!1286812) (not b!1286857) (not b!1286768) (not b_lambda!36677) (not d!362555) (not b!1286875) (not b_next!30947) (not b!1286905) (not b!1286789) b_and!85529 (not b!1286921) (not b!1286782) (not b!1286751) (not d!362551) (not b!1286886) (not b!1286433) (not d!362549) (not d!362475) (not b!1286894) (not b!1286266) (not b!1286891) (not b!1286920) (not b_next!30955) b_and!85523 (not b_next!30945) (not b!1286759) (not b!1286844) (not b!1286732) (not b!1286430) (not bm!88470) (not b!1286914) (not d!362481) b_and!85521 (not b!1286444) (not d!362295) (not b!1286878) (not b!1286773) (not b!1286860) (not d!362305) (not d!362339) (not b!1286873) (not b_next!30949) (not d!362511) (not bm!88472) (not b!1286817) (not b!1286347) (not d!362477) (not b_lambda!36685) (not b!1286701) (not d!362509) (not b_next!30963) (not b!1286338) (not b!1286889) (not b!1286813) b_and!85537 (not b!1286810) (not d!362467) (not d!362559) (not b!1286828) (not b!1286806) (not b!1286257) (not b!1286922) (not d!362561) (not b!1286413) (not d!362489) (not d!362491) (not b_lambda!36671) (not d!362343) (not b!1286870) (not d!362507) (not d!362495) (not b!1286928) (not b_next!30943) (not b!1286883) (not d!362557) (not b!1286735) (not b!1286858) (not b!1286846) (not d!362567) (not b!1286843) (not b!1286815) (not b!1286910) (not b!1286809) (not b_next!30965) (not b!1286838) (not b!1286933) (not b!1286745) (not b!1286737) (not b!1286909) (not b!1286851) (not b_next!30941) (not b!1286929) (not b!1286932) (not d!362547) (not b!1286416) (not bm!88473) (not b!1286906) (not d!362515) (not d!362535) (not b!1286869) (not b!1286912) (not b!1286791) (not b!1286434) (not d!362359) (not b!1286780) (not b!1286839) (not b!1286814) (not d!362497) (not b!1286414) (not b!1286890) (not b!1286866) (not b!1286738) (not b!1286766) (not b!1286415) (not d!362483) (not d!362347) (not b_lambda!36673) (not b!1286840) (not d!362527) (not b!1286856) (not b!1286825) (not b!1286893) (not b!1286767) (not d!362519) (not b!1286918) (not d!362355) (not d!362533) (not b!1286874) (not d!362521) (not b!1286823) (not b!1286871) (not b!1286865) (not b!1286931) (not b!1286739) (not b!1286887) (not b!1286917) (not b_next!30957) (not b!1286882))
(check-sat b_and!85463 b_and!85467 b_and!85535 b_and!85525 b_and!85527 (not b_next!30947) b_and!85529 b_and!85521 b_and!85537 (not b_next!30943) (not b_next!30965) (not b_next!30941) (not b_next!30957) b_and!85471 (not b_next!30939) (not b_next!30955) b_and!85523 (not b_next!30945) (not b_next!30949) (not b_next!30963))
