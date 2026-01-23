; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!149540 () Bool)

(assert start!149540)

(declare-fun b!1588488 () Bool)

(declare-fun b_free!42991 () Bool)

(declare-fun b_next!43695 () Bool)

(assert (=> b!1588488 (= b_free!42991 (not b_next!43695))))

(declare-fun tp!466900 () Bool)

(declare-fun b_and!111405 () Bool)

(assert (=> b!1588488 (= tp!466900 b_and!111405)))

(declare-fun b_free!42993 () Bool)

(declare-fun b_next!43697 () Bool)

(assert (=> b!1588488 (= b_free!42993 (not b_next!43697))))

(declare-fun tp!466901 () Bool)

(declare-fun b_and!111407 () Bool)

(assert (=> b!1588488 (= tp!466901 b_and!111407)))

(declare-fun b!1588496 () Bool)

(declare-fun b_free!42995 () Bool)

(declare-fun b_next!43699 () Bool)

(assert (=> b!1588496 (= b_free!42995 (not b_next!43699))))

(declare-fun tp!466905 () Bool)

(declare-fun b_and!111409 () Bool)

(assert (=> b!1588496 (= tp!466905 b_and!111409)))

(declare-fun b_free!42997 () Bool)

(declare-fun b_next!43701 () Bool)

(assert (=> b!1588496 (= b_free!42997 (not b_next!43701))))

(declare-fun tp!466907 () Bool)

(declare-fun b_and!111411 () Bool)

(assert (=> b!1588496 (= tp!466907 b_and!111411)))

(declare-fun b!1588479 () Bool)

(declare-fun res!708645 () Bool)

(declare-fun e!1020338 () Bool)

(assert (=> b!1588479 (=> (not res!708645) (not e!1020338))))

(declare-datatypes ((List!17547 0))(
  ( (Nil!17477) (Cons!17477 (h!22878 (_ BitVec 16)) (t!144426 List!17547)) )
))
(declare-datatypes ((TokenValue!3168 0))(
  ( (FloatLiteralValue!6336 (text!22621 List!17547)) (TokenValueExt!3167 (__x!11638 Int)) (Broken!15840 (value!97371 List!17547)) (Object!3237) (End!3168) (Def!3168) (Underscore!3168) (Match!3168) (Else!3168) (Error!3168) (Case!3168) (If!3168) (Extends!3168) (Abstract!3168) (Class!3168) (Val!3168) (DelimiterValue!6336 (del!3228 List!17547)) (KeywordValue!3174 (value!97372 List!17547)) (CommentValue!6336 (value!97373 List!17547)) (WhitespaceValue!6336 (value!97374 List!17547)) (IndentationValue!3168 (value!97375 List!17547)) (String!20173) (Int32!3168) (Broken!15841 (value!97376 List!17547)) (Boolean!3169) (Unit!27501) (OperatorValue!3171 (op!3228 List!17547)) (IdentifierValue!6336 (value!97377 List!17547)) (IdentifierValue!6337 (value!97378 List!17547)) (WhitespaceValue!6337 (value!97379 List!17547)) (True!6336) (False!6336) (Broken!15842 (value!97380 List!17547)) (Broken!15843 (value!97381 List!17547)) (True!6337) (RightBrace!3168) (RightBracket!3168) (Colon!3168) (Null!3168) (Comma!3168) (LeftBracket!3168) (False!6337) (LeftBrace!3168) (ImaginaryLiteralValue!3168 (text!22622 List!17547)) (StringLiteralValue!9504 (value!97382 List!17547)) (EOFValue!3168 (value!97383 List!17547)) (IdentValue!3168 (value!97384 List!17547)) (DelimiterValue!6337 (value!97385 List!17547)) (DedentValue!3168 (value!97386 List!17547)) (NewLineValue!3168 (value!97387 List!17547)) (IntegerValue!9504 (value!97388 (_ BitVec 32)) (text!22623 List!17547)) (IntegerValue!9505 (value!97389 Int) (text!22624 List!17547)) (Times!3168) (Or!3168) (Equal!3168) (Minus!3168) (Broken!15844 (value!97390 List!17547)) (And!3168) (Div!3168) (LessEqual!3168) (Mod!3168) (Concat!7574) (Not!3168) (Plus!3168) (SpaceValue!3168 (value!97391 List!17547)) (IntegerValue!9506 (value!97392 Int) (text!22625 List!17547)) (StringLiteralValue!9505 (text!22626 List!17547)) (FloatLiteralValue!6337 (text!22627 List!17547)) (BytesLiteralValue!3168 (value!97393 List!17547)) (CommentValue!6337 (value!97394 List!17547)) (StringLiteralValue!9506 (value!97395 List!17547)) (ErrorTokenValue!3168 (msg!3229 List!17547)) )
))
(declare-datatypes ((C!8986 0))(
  ( (C!8987 (val!5089 Int)) )
))
(declare-datatypes ((List!17548 0))(
  ( (Nil!17478) (Cons!17478 (h!22879 C!8986) (t!144427 List!17548)) )
))
(declare-datatypes ((IArray!11613 0))(
  ( (IArray!11614 (innerList!5864 List!17548)) )
))
(declare-datatypes ((Conc!5804 0))(
  ( (Node!5804 (left!14109 Conc!5804) (right!14439 Conc!5804) (csize!11838 Int) (cheight!6015 Int)) (Leaf!8564 (xs!8612 IArray!11613) (csize!11839 Int)) (Empty!5804) )
))
(declare-datatypes ((BalanceConc!11552 0))(
  ( (BalanceConc!11553 (c!257383 Conc!5804)) )
))
(declare-datatypes ((Regex!4406 0))(
  ( (ElementMatch!4406 (c!257384 C!8986)) (Concat!7575 (regOne!9324 Regex!4406) (regTwo!9324 Regex!4406)) (EmptyExpr!4406) (Star!4406 (reg!4735 Regex!4406)) (EmptyLang!4406) (Union!4406 (regOne!9325 Regex!4406) (regTwo!9325 Regex!4406)) )
))
(declare-datatypes ((String!20174 0))(
  ( (String!20175 (value!97396 String)) )
))
(declare-datatypes ((TokenValueInjection!5996 0))(
  ( (TokenValueInjection!5997 (toValue!4489 Int) (toChars!4348 Int)) )
))
(declare-datatypes ((Rule!5956 0))(
  ( (Rule!5957 (regex!3078 Regex!4406) (tag!3348 String!20174) (isSeparator!3078 Bool) (transformation!3078 TokenValueInjection!5996)) )
))
(declare-datatypes ((List!17549 0))(
  ( (Nil!17479) (Cons!17479 (h!22880 Rule!5956) (t!144428 List!17549)) )
))
(declare-fun rules!1846 () List!17549)

(declare-fun isEmpty!10500 (List!17549) Bool)

(assert (=> b!1588479 (= res!708645 (not (isEmpty!10500 rules!1846)))))

(declare-fun b!1588480 () Bool)

(declare-fun e!1020350 () Bool)

(declare-fun e!1020335 () Bool)

(assert (=> b!1588480 (= e!1020350 e!1020335)))

(declare-fun res!708644 () Bool)

(assert (=> b!1588480 (=> res!708644 e!1020335)))

(declare-datatypes ((Token!5722 0))(
  ( (Token!5723 (value!97397 TokenValue!3168) (rule!4882 Rule!5956) (size!14055 Int) (originalCharacters!3892 List!17548)) )
))
(declare-datatypes ((tuple2!16956 0))(
  ( (tuple2!16957 (_1!9880 Token!5722) (_2!9880 List!17548)) )
))
(declare-datatypes ((Option!3151 0))(
  ( (None!3150) (Some!3150 (v!24043 tuple2!16956)) )
))
(declare-fun lt!560824 () Option!3151)

(declare-fun isDefined!2526 (Option!3151) Bool)

(assert (=> b!1588480 (= res!708644 (not (isDefined!2526 lt!560824)))))

(declare-fun lt!560815 () List!17548)

(declare-datatypes ((LexerInterface!2707 0))(
  ( (LexerInterfaceExt!2704 (__x!11639 Int)) (Lexer!2705) )
))
(declare-fun thiss!17113 () LexerInterface!2707)

(declare-datatypes ((Unit!27502 0))(
  ( (Unit!27503) )
))
(declare-fun lt!560825 () Unit!27502)

(declare-fun lt!560831 () List!17548)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!281 (LexerInterface!2707 List!17549 List!17548 List!17548) Unit!27502)

(assert (=> b!1588480 (= lt!560825 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!281 thiss!17113 rules!1846 lt!560815 lt!560831))))

(declare-fun res!708650 () Bool)

(assert (=> start!149540 (=> (not res!708650) (not e!1020338))))

(assert (=> start!149540 (= res!708650 (is-Lexer!2705 thiss!17113))))

(assert (=> start!149540 e!1020338))

(assert (=> start!149540 true))

(declare-fun e!1020351 () Bool)

(assert (=> start!149540 e!1020351))

(declare-fun e!1020337 () Bool)

(assert (=> start!149540 e!1020337))

(declare-fun b!1588481 () Bool)

(declare-fun res!708649 () Bool)

(assert (=> b!1588481 (=> (not res!708649) (not e!1020338))))

(declare-datatypes ((List!17550 0))(
  ( (Nil!17480) (Cons!17480 (h!22881 Token!5722) (t!144429 List!17550)) )
))
(declare-fun tokens!457 () List!17550)

(assert (=> b!1588481 (= res!708649 (and (not (is-Nil!17480 tokens!457)) (not (is-Nil!17480 (t!144429 tokens!457)))))))

(declare-fun b!1588482 () Bool)

(declare-fun res!708648 () Bool)

(declare-fun e!1020347 () Bool)

(assert (=> b!1588482 (=> res!708648 e!1020347)))

(declare-fun separableTokensPredicate!649 (LexerInterface!2707 Token!5722 Token!5722 List!17549) Bool)

(assert (=> b!1588482 (= res!708648 (not (separableTokensPredicate!649 thiss!17113 (h!22881 tokens!457) (h!22881 (t!144429 tokens!457)) rules!1846)))))

(declare-fun b!1588483 () Bool)

(declare-fun res!708656 () Bool)

(declare-fun e!1020341 () Bool)

(assert (=> b!1588483 (=> res!708656 e!1020341)))

(declare-fun lt!560821 () Regex!4406)

(declare-fun lt!560818 () BalanceConc!11552)

(declare-fun prefixMatch!341 (Regex!4406 List!17548) Bool)

(declare-fun ++!4565 (List!17548 List!17548) List!17548)

(declare-fun list!6789 (BalanceConc!11552) List!17548)

(assert (=> b!1588483 (= res!708656 (prefixMatch!341 lt!560821 (++!4565 lt!560815 (list!6789 lt!560818))))))

(declare-fun b!1588484 () Bool)

(declare-fun res!708655 () Bool)

(assert (=> b!1588484 (=> res!708655 e!1020350)))

(declare-datatypes ((IArray!11615 0))(
  ( (IArray!11616 (innerList!5865 List!17550)) )
))
(declare-datatypes ((Conc!5805 0))(
  ( (Node!5805 (left!14110 Conc!5805) (right!14440 Conc!5805) (csize!11840 Int) (cheight!6016 Int)) (Leaf!8565 (xs!8613 IArray!11615) (csize!11841 Int)) (Empty!5805) )
))
(declare-datatypes ((BalanceConc!11554 0))(
  ( (BalanceConc!11555 (c!257385 Conc!5805)) )
))
(declare-fun isEmpty!10501 (BalanceConc!11554) Bool)

(declare-datatypes ((tuple2!16958 0))(
  ( (tuple2!16959 (_1!9881 BalanceConc!11554) (_2!9881 BalanceConc!11552)) )
))
(declare-fun lex!1191 (LexerInterface!2707 List!17549 BalanceConc!11552) tuple2!16958)

(declare-fun seqFromList!1905 (List!17548) BalanceConc!11552)

(assert (=> b!1588484 (= res!708655 (isEmpty!10501 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815)))))))

(declare-fun b!1588485 () Bool)

(assert (=> b!1588485 (= e!1020335 e!1020341)))

(declare-fun res!708647 () Bool)

(assert (=> b!1588485 (=> res!708647 e!1020341)))

(declare-fun lt!560830 () BalanceConc!11552)

(declare-fun prefixMatchZipperSequence!432 (Regex!4406 BalanceConc!11552) Bool)

(declare-fun ++!4566 (BalanceConc!11552 BalanceConc!11552) BalanceConc!11552)

(assert (=> b!1588485 (= res!708647 (prefixMatchZipperSequence!432 lt!560821 (++!4566 lt!560830 lt!560818)))))

(declare-fun singletonSeq!1434 (C!8986) BalanceConc!11552)

(declare-fun apply!4301 (BalanceConc!11552 Int) C!8986)

(declare-fun charsOf!1727 (Token!5722) BalanceConc!11552)

(assert (=> b!1588485 (= lt!560818 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0)))))

(declare-fun rulesRegex!468 (LexerInterface!2707 List!17549) Regex!4406)

(assert (=> b!1588485 (= lt!560821 (rulesRegex!468 thiss!17113 rules!1846))))

(declare-fun b!1588486 () Bool)

(declare-fun e!1020343 () Bool)

(declare-fun tp!466903 () Bool)

(declare-fun e!1020342 () Bool)

(declare-fun inv!22884 (String!20174) Bool)

(declare-fun inv!22887 (TokenValueInjection!5996) Bool)

(assert (=> b!1588486 (= e!1020342 (and tp!466903 (inv!22884 (tag!3348 (h!22880 rules!1846))) (inv!22887 (transformation!3078 (h!22880 rules!1846))) e!1020343))))

(declare-fun b!1588487 () Bool)

(declare-fun res!708657 () Bool)

(assert (=> b!1588487 (=> res!708657 e!1020350)))

(declare-fun rulesProduceIndividualToken!1359 (LexerInterface!2707 List!17549 Token!5722) Bool)

(assert (=> b!1588487 (= res!708657 (not (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 tokens!457))))))

(assert (=> b!1588488 (= e!1020343 (and tp!466900 tp!466901))))

(declare-fun b!1588489 () Bool)

(declare-fun res!708652 () Bool)

(assert (=> b!1588489 (=> (not res!708652) (not e!1020338))))

(declare-fun rulesInvariant!2376 (LexerInterface!2707 List!17549) Bool)

(assert (=> b!1588489 (= res!708652 (rulesInvariant!2376 thiss!17113 rules!1846))))

(declare-fun b!1588490 () Bool)

(declare-fun e!1020340 () Bool)

(assert (=> b!1588490 (= e!1020338 e!1020340)))

(declare-fun res!708658 () Bool)

(assert (=> b!1588490 (=> (not res!708658) (not e!1020340))))

(declare-fun lt!560816 () List!17548)

(declare-fun lt!560832 () List!17548)

(assert (=> b!1588490 (= res!708658 (= lt!560816 lt!560832))))

(assert (=> b!1588490 (= lt!560832 (++!4565 lt!560815 lt!560831))))

(declare-fun lt!560826 () BalanceConc!11552)

(assert (=> b!1588490 (= lt!560816 (list!6789 lt!560826))))

(declare-fun lt!560814 () BalanceConc!11552)

(assert (=> b!1588490 (= lt!560831 (list!6789 lt!560814))))

(assert (=> b!1588490 (= lt!560815 (list!6789 lt!560830))))

(assert (=> b!1588490 (= lt!560830 (charsOf!1727 (h!22881 tokens!457)))))

(declare-fun lt!560833 () tuple2!16958)

(assert (=> b!1588490 (= lt!560833 (lex!1191 thiss!17113 rules!1846 lt!560814))))

(declare-fun lt!560829 () BalanceConc!11554)

(declare-fun print!1238 (LexerInterface!2707 BalanceConc!11554) BalanceConc!11552)

(assert (=> b!1588490 (= lt!560814 (print!1238 thiss!17113 lt!560829))))

(declare-fun seqFromList!1906 (List!17550) BalanceConc!11554)

(assert (=> b!1588490 (= lt!560829 (seqFromList!1906 (t!144429 tokens!457)))))

(assert (=> b!1588490 (= lt!560826 (print!1238 thiss!17113 (seqFromList!1906 tokens!457)))))

(declare-fun b!1588491 () Bool)

(declare-fun res!708654 () Bool)

(assert (=> b!1588491 (=> (not res!708654) (not e!1020338))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!400 (LexerInterface!2707 List!17550 List!17549) Bool)

(assert (=> b!1588491 (= res!708654 (tokensListTwoByTwoPredicateSeparableList!400 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1020336 () Bool)

(declare-fun e!1020349 () Bool)

(declare-fun b!1588492 () Bool)

(declare-fun tp!466906 () Bool)

(assert (=> b!1588492 (= e!1020349 (and tp!466906 (inv!22884 (tag!3348 (rule!4882 (h!22881 tokens!457)))) (inv!22887 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) e!1020336))))

(declare-fun b!1588493 () Bool)

(assert (=> b!1588493 (= e!1020347 e!1020350)))

(declare-fun res!708653 () Bool)

(assert (=> b!1588493 (=> res!708653 e!1020350)))

(declare-fun lt!560817 () List!17548)

(declare-fun lt!560819 () List!17548)

(assert (=> b!1588493 (= res!708653 (or (not (= lt!560819 lt!560817)) (not (= lt!560817 lt!560815)) (not (= lt!560819 lt!560815))))))

(declare-fun printList!822 (LexerInterface!2707 List!17550) List!17548)

(assert (=> b!1588493 (= lt!560817 (printList!822 thiss!17113 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))

(declare-fun lt!560834 () BalanceConc!11552)

(assert (=> b!1588493 (= lt!560819 (list!6789 lt!560834))))

(declare-fun lt!560813 () BalanceConc!11554)

(declare-fun printTailRec!760 (LexerInterface!2707 BalanceConc!11554 Int BalanceConc!11552) BalanceConc!11552)

(assert (=> b!1588493 (= lt!560834 (printTailRec!760 thiss!17113 lt!560813 0 (BalanceConc!11553 Empty!5804)))))

(assert (=> b!1588493 (= lt!560834 (print!1238 thiss!17113 lt!560813))))

(declare-fun singletonSeq!1435 (Token!5722) BalanceConc!11554)

(assert (=> b!1588493 (= lt!560813 (singletonSeq!1435 (h!22881 tokens!457)))))

(declare-fun maxPrefix!1271 (LexerInterface!2707 List!17549 List!17548) Option!3151)

(assert (=> b!1588493 (= lt!560824 (maxPrefix!1271 thiss!17113 rules!1846 lt!560816))))

(declare-fun b!1588494 () Bool)

(declare-fun res!708651 () Bool)

(assert (=> b!1588494 (=> (not res!708651) (not e!1020338))))

(declare-fun rulesProduceEachTokenIndividuallyList!909 (LexerInterface!2707 List!17549 List!17550) Bool)

(assert (=> b!1588494 (= res!708651 (rulesProduceEachTokenIndividuallyList!909 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1588495 () Bool)

(declare-fun tp!466904 () Bool)

(assert (=> b!1588495 (= e!1020351 (and e!1020342 tp!466904))))

(assert (=> b!1588496 (= e!1020336 (and tp!466905 tp!466907))))

(declare-fun b!1588497 () Bool)

(declare-fun e!1020348 () Bool)

(assert (=> b!1588497 (= e!1020340 (not e!1020348))))

(declare-fun res!708646 () Bool)

(assert (=> b!1588497 (=> res!708646 e!1020348)))

(declare-fun lt!560827 () List!17550)

(assert (=> b!1588497 (= res!708646 (not (= lt!560827 (t!144429 tokens!457))))))

(declare-fun list!6790 (BalanceConc!11554) List!17550)

(assert (=> b!1588497 (= lt!560827 (list!6790 (_1!9881 lt!560833)))))

(declare-fun lt!560822 () Unit!27502)

(declare-fun theoremInvertabilityWhenTokenListSeparable!152 (LexerInterface!2707 List!17549 List!17550) Unit!27502)

(assert (=> b!1588497 (= lt!560822 (theoremInvertabilityWhenTokenListSeparable!152 thiss!17113 rules!1846 (t!144429 tokens!457)))))

(declare-fun isPrefix!1338 (List!17548 List!17548) Bool)

(assert (=> b!1588497 (isPrefix!1338 lt!560815 lt!560832)))

(declare-fun lt!560828 () Unit!27502)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!863 (List!17548 List!17548) Unit!27502)

(assert (=> b!1588497 (= lt!560828 (lemmaConcatTwoListThenFirstIsPrefix!863 lt!560815 lt!560831))))

(declare-fun tp!466899 () Bool)

(declare-fun b!1588498 () Bool)

(declare-fun e!1020346 () Bool)

(declare-fun inv!22888 (Token!5722) Bool)

(assert (=> b!1588498 (= e!1020337 (and (inv!22888 (h!22881 tokens!457)) e!1020346 tp!466899))))

(declare-fun b!1588499 () Bool)

(assert (=> b!1588499 (= e!1020341 (not (= (originalCharacters!3892 (h!22881 (t!144429 tokens!457))) Nil!17478)))))

(assert (=> b!1588499 (= lt!560815 (originalCharacters!3892 (h!22881 tokens!457)))))

(declare-fun b!1588500 () Bool)

(assert (=> b!1588500 (= e!1020348 e!1020347)))

(declare-fun res!708643 () Bool)

(assert (=> b!1588500 (=> res!708643 e!1020347)))

(declare-fun lt!560835 () List!17550)

(declare-fun lt!560823 () List!17550)

(assert (=> b!1588500 (= res!708643 (or (not (= lt!560827 lt!560835)) (not (= lt!560835 lt!560823))))))

(assert (=> b!1588500 (= lt!560835 (list!6790 lt!560829))))

(assert (=> b!1588500 (= lt!560827 lt!560823)))

(declare-fun prepend!570 (BalanceConc!11554 Token!5722) BalanceConc!11554)

(assert (=> b!1588500 (= lt!560823 (list!6790 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!560820 () Unit!27502)

(declare-fun seqFromListBHdTlConstructive!155 (Token!5722 List!17550 BalanceConc!11554) Unit!27502)

(assert (=> b!1588500 (= lt!560820 (seqFromListBHdTlConstructive!155 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457)) (_1!9881 lt!560833)))))

(declare-fun tp!466902 () Bool)

(declare-fun b!1588501 () Bool)

(declare-fun inv!21 (TokenValue!3168) Bool)

(assert (=> b!1588501 (= e!1020346 (and (inv!21 (value!97397 (h!22881 tokens!457))) e!1020349 tp!466902))))

(assert (= (and start!149540 res!708650) b!1588479))

(assert (= (and b!1588479 res!708645) b!1588489))

(assert (= (and b!1588489 res!708652) b!1588494))

(assert (= (and b!1588494 res!708651) b!1588491))

(assert (= (and b!1588491 res!708654) b!1588481))

(assert (= (and b!1588481 res!708649) b!1588490))

(assert (= (and b!1588490 res!708658) b!1588497))

(assert (= (and b!1588497 (not res!708646)) b!1588500))

(assert (= (and b!1588500 (not res!708643)) b!1588482))

(assert (= (and b!1588482 (not res!708648)) b!1588493))

(assert (= (and b!1588493 (not res!708653)) b!1588487))

(assert (= (and b!1588487 (not res!708657)) b!1588484))

(assert (= (and b!1588484 (not res!708655)) b!1588480))

(assert (= (and b!1588480 (not res!708644)) b!1588485))

(assert (= (and b!1588485 (not res!708647)) b!1588483))

(assert (= (and b!1588483 (not res!708656)) b!1588499))

(assert (= b!1588486 b!1588488))

(assert (= b!1588495 b!1588486))

(assert (= (and start!149540 (is-Cons!17479 rules!1846)) b!1588495))

(assert (= b!1588492 b!1588496))

(assert (= b!1588501 b!1588492))

(assert (= b!1588498 b!1588501))

(assert (= (and start!149540 (is-Cons!17480 tokens!457)) b!1588498))

(declare-fun m!1879749 () Bool)

(assert (=> b!1588485 m!1879749))

(declare-fun m!1879751 () Bool)

(assert (=> b!1588485 m!1879751))

(declare-fun m!1879753 () Bool)

(assert (=> b!1588485 m!1879753))

(declare-fun m!1879755 () Bool)

(assert (=> b!1588485 m!1879755))

(assert (=> b!1588485 m!1879751))

(declare-fun m!1879757 () Bool)

(assert (=> b!1588485 m!1879757))

(declare-fun m!1879759 () Bool)

(assert (=> b!1588485 m!1879759))

(assert (=> b!1588485 m!1879753))

(assert (=> b!1588485 m!1879759))

(declare-fun m!1879761 () Bool)

(assert (=> b!1588491 m!1879761))

(declare-fun m!1879763 () Bool)

(assert (=> b!1588497 m!1879763))

(declare-fun m!1879765 () Bool)

(assert (=> b!1588497 m!1879765))

(declare-fun m!1879767 () Bool)

(assert (=> b!1588497 m!1879767))

(declare-fun m!1879769 () Bool)

(assert (=> b!1588497 m!1879769))

(declare-fun m!1879771 () Bool)

(assert (=> b!1588498 m!1879771))

(declare-fun m!1879773 () Bool)

(assert (=> b!1588489 m!1879773))

(declare-fun m!1879775 () Bool)

(assert (=> b!1588490 m!1879775))

(declare-fun m!1879777 () Bool)

(assert (=> b!1588490 m!1879777))

(declare-fun m!1879779 () Bool)

(assert (=> b!1588490 m!1879779))

(declare-fun m!1879781 () Bool)

(assert (=> b!1588490 m!1879781))

(declare-fun m!1879783 () Bool)

(assert (=> b!1588490 m!1879783))

(declare-fun m!1879785 () Bool)

(assert (=> b!1588490 m!1879785))

(declare-fun m!1879787 () Bool)

(assert (=> b!1588490 m!1879787))

(declare-fun m!1879789 () Bool)

(assert (=> b!1588490 m!1879789))

(assert (=> b!1588490 m!1879781))

(declare-fun m!1879791 () Bool)

(assert (=> b!1588490 m!1879791))

(declare-fun m!1879793 () Bool)

(assert (=> b!1588490 m!1879793))

(declare-fun m!1879795 () Bool)

(assert (=> b!1588501 m!1879795))

(declare-fun m!1879797 () Bool)

(assert (=> b!1588482 m!1879797))

(declare-fun m!1879799 () Bool)

(assert (=> b!1588487 m!1879799))

(declare-fun m!1879801 () Bool)

(assert (=> b!1588483 m!1879801))

(assert (=> b!1588483 m!1879801))

(declare-fun m!1879803 () Bool)

(assert (=> b!1588483 m!1879803))

(assert (=> b!1588483 m!1879803))

(declare-fun m!1879805 () Bool)

(assert (=> b!1588483 m!1879805))

(declare-fun m!1879807 () Bool)

(assert (=> b!1588500 m!1879807))

(declare-fun m!1879809 () Bool)

(assert (=> b!1588500 m!1879809))

(declare-fun m!1879811 () Bool)

(assert (=> b!1588500 m!1879811))

(declare-fun m!1879813 () Bool)

(assert (=> b!1588500 m!1879813))

(declare-fun m!1879815 () Bool)

(assert (=> b!1588500 m!1879815))

(assert (=> b!1588500 m!1879811))

(assert (=> b!1588500 m!1879813))

(declare-fun m!1879817 () Bool)

(assert (=> b!1588494 m!1879817))

(declare-fun m!1879819 () Bool)

(assert (=> b!1588493 m!1879819))

(declare-fun m!1879821 () Bool)

(assert (=> b!1588493 m!1879821))

(declare-fun m!1879823 () Bool)

(assert (=> b!1588493 m!1879823))

(declare-fun m!1879825 () Bool)

(assert (=> b!1588493 m!1879825))

(declare-fun m!1879827 () Bool)

(assert (=> b!1588493 m!1879827))

(declare-fun m!1879829 () Bool)

(assert (=> b!1588493 m!1879829))

(declare-fun m!1879831 () Bool)

(assert (=> b!1588480 m!1879831))

(declare-fun m!1879833 () Bool)

(assert (=> b!1588480 m!1879833))

(declare-fun m!1879835 () Bool)

(assert (=> b!1588492 m!1879835))

(declare-fun m!1879837 () Bool)

(assert (=> b!1588492 m!1879837))

(declare-fun m!1879839 () Bool)

(assert (=> b!1588479 m!1879839))

(declare-fun m!1879841 () Bool)

(assert (=> b!1588484 m!1879841))

(assert (=> b!1588484 m!1879841))

(declare-fun m!1879843 () Bool)

(assert (=> b!1588484 m!1879843))

(declare-fun m!1879845 () Bool)

(assert (=> b!1588484 m!1879845))

(declare-fun m!1879847 () Bool)

(assert (=> b!1588486 m!1879847))

(declare-fun m!1879849 () Bool)

(assert (=> b!1588486 m!1879849))

(push 1)

(assert (not b!1588479))

(assert b_and!111409)

(assert (not b!1588485))

(assert (not b!1588480))

(assert (not b!1588497))

(assert b_and!111411)

(assert (not b!1588492))

(assert (not b!1588486))

(assert b_and!111407)

(assert (not b!1588493))

(assert (not b!1588489))

(assert (not b!1588494))

(assert (not b_next!43701))

(assert (not b!1588495))

(assert (not b!1588500))

(assert (not b_next!43699))

(assert (not b!1588483))

(assert (not b!1588484))

(assert b_and!111405)

(assert (not b!1588487))

(assert (not b_next!43695))

(assert (not b!1588501))

(assert (not b!1588482))

(assert (not b!1588498))

(assert (not b!1588491))

(assert (not b_next!43697))

(assert (not b!1588490))

(check-sat)

(pop 1)

(push 1)

(assert b_and!111409)

(assert (not b_next!43701))

(assert (not b_next!43699))

(assert b_and!111411)

(assert b_and!111407)

(assert (not b_next!43697))

(assert b_and!111405)

(assert (not b_next!43695))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!472670 () Bool)

(assert (=> d!472670 (= (isEmpty!10500 rules!1846) (is-Nil!17479 rules!1846))))

(assert (=> b!1588479 d!472670))

(declare-fun d!472672 () Bool)

(declare-fun lt!560907 () BalanceConc!11552)

(assert (=> d!472672 (= (list!6789 lt!560907) (printList!822 thiss!17113 (list!6790 (seqFromList!1906 tokens!457))))))

(assert (=> d!472672 (= lt!560907 (printTailRec!760 thiss!17113 (seqFromList!1906 tokens!457) 0 (BalanceConc!11553 Empty!5804)))))

(assert (=> d!472672 (= (print!1238 thiss!17113 (seqFromList!1906 tokens!457)) lt!560907)))

(declare-fun bs!391580 () Bool)

(assert (= bs!391580 d!472672))

(declare-fun m!1879953 () Bool)

(assert (=> bs!391580 m!1879953))

(assert (=> bs!391580 m!1879781))

(declare-fun m!1879955 () Bool)

(assert (=> bs!391580 m!1879955))

(assert (=> bs!391580 m!1879955))

(declare-fun m!1879957 () Bool)

(assert (=> bs!391580 m!1879957))

(assert (=> bs!391580 m!1879781))

(declare-fun m!1879959 () Bool)

(assert (=> bs!391580 m!1879959))

(assert (=> b!1588490 d!472672))

(declare-fun d!472674 () Bool)

(declare-fun list!6793 (Conc!5804) List!17548)

(assert (=> d!472674 (= (list!6789 lt!560830) (list!6793 (c!257383 lt!560830)))))

(declare-fun bs!391581 () Bool)

(assert (= bs!391581 d!472674))

(declare-fun m!1879961 () Bool)

(assert (=> bs!391581 m!1879961))

(assert (=> b!1588490 d!472674))

(declare-fun b!1588580 () Bool)

(declare-fun e!1020408 () List!17548)

(assert (=> b!1588580 (= e!1020408 (Cons!17478 (h!22879 lt!560815) (++!4565 (t!144427 lt!560815) lt!560831)))))

(declare-fun b!1588581 () Bool)

(declare-fun res!708719 () Bool)

(declare-fun e!1020407 () Bool)

(assert (=> b!1588581 (=> (not res!708719) (not e!1020407))))

(declare-fun lt!560910 () List!17548)

(declare-fun size!14057 (List!17548) Int)

(assert (=> b!1588581 (= res!708719 (= (size!14057 lt!560910) (+ (size!14057 lt!560815) (size!14057 lt!560831))))))

(declare-fun b!1588582 () Bool)

(assert (=> b!1588582 (= e!1020407 (or (not (= lt!560831 Nil!17478)) (= lt!560910 lt!560815)))))

(declare-fun d!472676 () Bool)

(assert (=> d!472676 e!1020407))

(declare-fun res!708718 () Bool)

(assert (=> d!472676 (=> (not res!708718) (not e!1020407))))

(declare-fun content!2408 (List!17548) (Set C!8986))

(assert (=> d!472676 (= res!708718 (= (content!2408 lt!560910) (set.union (content!2408 lt!560815) (content!2408 lt!560831))))))

(assert (=> d!472676 (= lt!560910 e!1020408)))

(declare-fun c!257392 () Bool)

(assert (=> d!472676 (= c!257392 (is-Nil!17478 lt!560815))))

(assert (=> d!472676 (= (++!4565 lt!560815 lt!560831) lt!560910)))

(declare-fun b!1588579 () Bool)

(assert (=> b!1588579 (= e!1020408 lt!560831)))

(assert (= (and d!472676 c!257392) b!1588579))

(assert (= (and d!472676 (not c!257392)) b!1588580))

(assert (= (and d!472676 res!708718) b!1588581))

(assert (= (and b!1588581 res!708719) b!1588582))

(declare-fun m!1879963 () Bool)

(assert (=> b!1588580 m!1879963))

(declare-fun m!1879965 () Bool)

(assert (=> b!1588581 m!1879965))

(declare-fun m!1879967 () Bool)

(assert (=> b!1588581 m!1879967))

(declare-fun m!1879969 () Bool)

(assert (=> b!1588581 m!1879969))

(declare-fun m!1879971 () Bool)

(assert (=> d!472676 m!1879971))

(declare-fun m!1879973 () Bool)

(assert (=> d!472676 m!1879973))

(declare-fun m!1879975 () Bool)

(assert (=> d!472676 m!1879975))

(assert (=> b!1588490 d!472676))

(declare-fun d!472678 () Bool)

(assert (=> d!472678 (= (list!6789 lt!560814) (list!6793 (c!257383 lt!560814)))))

(declare-fun bs!391582 () Bool)

(assert (= bs!391582 d!472678))

(declare-fun m!1879977 () Bool)

(assert (=> bs!391582 m!1879977))

(assert (=> b!1588490 d!472678))

(declare-fun b!1588596 () Bool)

(declare-fun e!1020419 () Bool)

(declare-fun lt!560913 () tuple2!16958)

(assert (=> b!1588596 (= e!1020419 (= (_2!9881 lt!560913) lt!560814))))

(declare-fun e!1020420 () Bool)

(declare-fun b!1588597 () Bool)

(declare-datatypes ((tuple2!16964 0))(
  ( (tuple2!16965 (_1!9884 List!17550) (_2!9884 List!17548)) )
))
(declare-fun lexList!794 (LexerInterface!2707 List!17549 List!17548) tuple2!16964)

(assert (=> b!1588597 (= e!1020420 (= (list!6789 (_2!9881 lt!560913)) (_2!9884 (lexList!794 thiss!17113 rules!1846 (list!6789 lt!560814)))))))

(declare-fun b!1588598 () Bool)

(declare-fun e!1020418 () Bool)

(assert (=> b!1588598 (= e!1020419 e!1020418)))

(declare-fun res!708731 () Bool)

(declare-fun size!14058 (BalanceConc!11552) Int)

(assert (=> b!1588598 (= res!708731 (< (size!14058 (_2!9881 lt!560913)) (size!14058 lt!560814)))))

(assert (=> b!1588598 (=> (not res!708731) (not e!1020418))))

(declare-fun b!1588599 () Bool)

(assert (=> b!1588599 (= e!1020418 (not (isEmpty!10501 (_1!9881 lt!560913))))))

(declare-fun b!1588600 () Bool)

(declare-fun res!708729 () Bool)

(assert (=> b!1588600 (=> (not res!708729) (not e!1020420))))

(assert (=> b!1588600 (= res!708729 (= (list!6790 (_1!9881 lt!560913)) (_1!9884 (lexList!794 thiss!17113 rules!1846 (list!6789 lt!560814)))))))

(declare-fun d!472680 () Bool)

(assert (=> d!472680 e!1020420))

(declare-fun res!708730 () Bool)

(assert (=> d!472680 (=> (not res!708730) (not e!1020420))))

(assert (=> d!472680 (= res!708730 e!1020419)))

(declare-fun c!257395 () Bool)

(declare-fun size!14059 (BalanceConc!11554) Int)

(assert (=> d!472680 (= c!257395 (> (size!14059 (_1!9881 lt!560913)) 0))))

(declare-fun lexTailRecV2!517 (LexerInterface!2707 List!17549 BalanceConc!11552 BalanceConc!11552 BalanceConc!11552 BalanceConc!11554) tuple2!16958)

(assert (=> d!472680 (= lt!560913 (lexTailRecV2!517 thiss!17113 rules!1846 lt!560814 (BalanceConc!11553 Empty!5804) lt!560814 (BalanceConc!11555 Empty!5805)))))

(assert (=> d!472680 (= (lex!1191 thiss!17113 rules!1846 lt!560814) lt!560913)))

(assert (= (and d!472680 c!257395) b!1588598))

(assert (= (and d!472680 (not c!257395)) b!1588596))

(assert (= (and b!1588598 res!708731) b!1588599))

(assert (= (and d!472680 res!708730) b!1588600))

(assert (= (and b!1588600 res!708729) b!1588597))

(declare-fun m!1879983 () Bool)

(assert (=> d!472680 m!1879983))

(declare-fun m!1879985 () Bool)

(assert (=> d!472680 m!1879985))

(declare-fun m!1879987 () Bool)

(assert (=> b!1588599 m!1879987))

(declare-fun m!1879989 () Bool)

(assert (=> b!1588597 m!1879989))

(assert (=> b!1588597 m!1879775))

(assert (=> b!1588597 m!1879775))

(declare-fun m!1879991 () Bool)

(assert (=> b!1588597 m!1879991))

(declare-fun m!1879993 () Bool)

(assert (=> b!1588600 m!1879993))

(assert (=> b!1588600 m!1879775))

(assert (=> b!1588600 m!1879775))

(assert (=> b!1588600 m!1879991))

(declare-fun m!1879995 () Bool)

(assert (=> b!1588598 m!1879995))

(declare-fun m!1879997 () Bool)

(assert (=> b!1588598 m!1879997))

(assert (=> b!1588490 d!472680))

(declare-fun d!472686 () Bool)

(declare-fun lt!560914 () BalanceConc!11552)

(assert (=> d!472686 (= (list!6789 lt!560914) (printList!822 thiss!17113 (list!6790 lt!560829)))))

(assert (=> d!472686 (= lt!560914 (printTailRec!760 thiss!17113 lt!560829 0 (BalanceConc!11553 Empty!5804)))))

(assert (=> d!472686 (= (print!1238 thiss!17113 lt!560829) lt!560914)))

(declare-fun bs!391583 () Bool)

(assert (= bs!391583 d!472686))

(declare-fun m!1879999 () Bool)

(assert (=> bs!391583 m!1879999))

(assert (=> bs!391583 m!1879807))

(assert (=> bs!391583 m!1879807))

(declare-fun m!1880001 () Bool)

(assert (=> bs!391583 m!1880001))

(declare-fun m!1880003 () Bool)

(assert (=> bs!391583 m!1880003))

(assert (=> b!1588490 d!472686))

(declare-fun d!472688 () Bool)

(declare-fun lt!560917 () BalanceConc!11552)

(assert (=> d!472688 (= (list!6789 lt!560917) (originalCharacters!3892 (h!22881 tokens!457)))))

(declare-fun dynLambda!7768 (Int TokenValue!3168) BalanceConc!11552)

(assert (=> d!472688 (= lt!560917 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457))))))

(assert (=> d!472688 (= (charsOf!1727 (h!22881 tokens!457)) lt!560917)))

(declare-fun b_lambda!49993 () Bool)

(assert (=> (not b_lambda!49993) (not d!472688)))

(declare-fun t!144435 () Bool)

(declare-fun tb!89399 () Bool)

(assert (=> (and b!1588488 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457))))) t!144435) tb!89399))

(declare-fun b!1588605 () Bool)

(declare-fun e!1020423 () Bool)

(declare-fun tp!466937 () Bool)

(declare-fun inv!22891 (Conc!5804) Bool)

(assert (=> b!1588605 (= e!1020423 (and (inv!22891 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457))))) tp!466937))))

(declare-fun result!108246 () Bool)

(declare-fun inv!22892 (BalanceConc!11552) Bool)

(assert (=> tb!89399 (= result!108246 (and (inv!22892 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457)))) e!1020423))))

(assert (= tb!89399 b!1588605))

(declare-fun m!1880005 () Bool)

(assert (=> b!1588605 m!1880005))

(declare-fun m!1880007 () Bool)

(assert (=> tb!89399 m!1880007))

(assert (=> d!472688 t!144435))

(declare-fun b_and!111421 () Bool)

(assert (= b_and!111407 (and (=> t!144435 result!108246) b_and!111421)))

(declare-fun t!144437 () Bool)

(declare-fun tb!89401 () Bool)

(assert (=> (and b!1588496 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457))))) t!144437) tb!89401))

(declare-fun result!108250 () Bool)

(assert (= result!108250 result!108246))

(assert (=> d!472688 t!144437))

(declare-fun b_and!111423 () Bool)

(assert (= b_and!111411 (and (=> t!144437 result!108250) b_and!111423)))

(declare-fun m!1880009 () Bool)

(assert (=> d!472688 m!1880009))

(declare-fun m!1880011 () Bool)

(assert (=> d!472688 m!1880011))

(assert (=> b!1588490 d!472688))

(declare-fun d!472690 () Bool)

(declare-fun fromListB!824 (List!17550) BalanceConc!11554)

(assert (=> d!472690 (= (seqFromList!1906 (t!144429 tokens!457)) (fromListB!824 (t!144429 tokens!457)))))

(declare-fun bs!391584 () Bool)

(assert (= bs!391584 d!472690))

(declare-fun m!1880013 () Bool)

(assert (=> bs!391584 m!1880013))

(assert (=> b!1588490 d!472690))

(declare-fun d!472692 () Bool)

(assert (=> d!472692 (= (seqFromList!1906 tokens!457) (fromListB!824 tokens!457))))

(declare-fun bs!391585 () Bool)

(assert (= bs!391585 d!472692))

(declare-fun m!1880015 () Bool)

(assert (=> bs!391585 m!1880015))

(assert (=> b!1588490 d!472692))

(declare-fun d!472694 () Bool)

(assert (=> d!472694 (= (list!6789 lt!560826) (list!6793 (c!257383 lt!560826)))))

(declare-fun bs!391586 () Bool)

(assert (= bs!391586 d!472694))

(declare-fun m!1880017 () Bool)

(assert (=> bs!391586 m!1880017))

(assert (=> b!1588490 d!472694))

(declare-fun d!472696 () Bool)

(declare-fun res!708734 () Bool)

(declare-fun e!1020426 () Bool)

(assert (=> d!472696 (=> (not res!708734) (not e!1020426))))

(declare-fun rulesValid!1093 (LexerInterface!2707 List!17549) Bool)

(assert (=> d!472696 (= res!708734 (rulesValid!1093 thiss!17113 rules!1846))))

(assert (=> d!472696 (= (rulesInvariant!2376 thiss!17113 rules!1846) e!1020426)))

(declare-fun b!1588608 () Bool)

(declare-datatypes ((List!17555 0))(
  ( (Nil!17485) (Cons!17485 (h!22886 String!20174) (t!144468 List!17555)) )
))
(declare-fun noDuplicateTag!1093 (LexerInterface!2707 List!17549 List!17555) Bool)

(assert (=> b!1588608 (= e!1020426 (noDuplicateTag!1093 thiss!17113 rules!1846 Nil!17485))))

(assert (= (and d!472696 res!708734) b!1588608))

(declare-fun m!1880019 () Bool)

(assert (=> d!472696 m!1880019))

(declare-fun m!1880021 () Bool)

(assert (=> b!1588608 m!1880021))

(assert (=> b!1588489 d!472696))

(declare-fun d!472698 () Bool)

(declare-fun e!1020429 () Bool)

(assert (=> d!472698 e!1020429))

(declare-fun res!708737 () Bool)

(assert (=> d!472698 (=> (not res!708737) (not e!1020429))))

(declare-fun isBalanced!1719 (Conc!5805) Bool)

(declare-fun prepend!572 (Conc!5805 Token!5722) Conc!5805)

(assert (=> d!472698 (= res!708737 (isBalanced!1719 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!560920 () BalanceConc!11554)

(assert (=> d!472698 (= lt!560920 (BalanceConc!11555 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457)))))))

(assert (=> d!472698 (= (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457))) lt!560920)))

(declare-fun b!1588611 () Bool)

(assert (=> b!1588611 (= e!1020429 (= (list!6790 lt!560920) (Cons!17480 (h!22881 (t!144429 tokens!457)) (list!6790 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))))))))

(assert (= (and d!472698 res!708737) b!1588611))

(declare-fun m!1880023 () Bool)

(assert (=> d!472698 m!1880023))

(assert (=> d!472698 m!1880023))

(declare-fun m!1880025 () Bool)

(assert (=> d!472698 m!1880025))

(declare-fun m!1880027 () Bool)

(assert (=> b!1588611 m!1880027))

(assert (=> b!1588611 m!1879811))

(declare-fun m!1880029 () Bool)

(assert (=> b!1588611 m!1880029))

(assert (=> b!1588500 d!472698))

(declare-fun d!472700 () Bool)

(declare-fun list!6794 (Conc!5805) List!17550)

(assert (=> d!472700 (= (list!6790 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457)))) (list!6794 (c!257385 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457))))))))

(declare-fun bs!391587 () Bool)

(assert (= bs!391587 d!472700))

(declare-fun m!1880031 () Bool)

(assert (=> bs!391587 m!1880031))

(assert (=> b!1588500 d!472700))

(declare-fun d!472702 () Bool)

(assert (=> d!472702 (= (list!6790 lt!560829) (list!6794 (c!257385 lt!560829)))))

(declare-fun bs!391588 () Bool)

(assert (= bs!391588 d!472702))

(declare-fun m!1880033 () Bool)

(assert (=> bs!391588 m!1880033))

(assert (=> b!1588500 d!472702))

(declare-fun d!472704 () Bool)

(assert (=> d!472704 (= (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (fromListB!824 (t!144429 (t!144429 tokens!457))))))

(declare-fun bs!391589 () Bool)

(assert (= bs!391589 d!472704))

(declare-fun m!1880035 () Bool)

(assert (=> bs!391589 m!1880035))

(assert (=> b!1588500 d!472704))

(declare-fun d!472706 () Bool)

(assert (=> d!472706 (= (list!6790 (_1!9881 lt!560833)) (list!6790 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!560923 () Unit!27502)

(declare-fun choose!9513 (Token!5722 List!17550 BalanceConc!11554) Unit!27502)

(assert (=> d!472706 (= lt!560923 (choose!9513 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457)) (_1!9881 lt!560833)))))

(declare-fun $colon$colon!286 (List!17550 Token!5722) List!17550)

(assert (=> d!472706 (= (list!6790 (_1!9881 lt!560833)) (list!6790 (seqFromList!1906 ($colon$colon!286 (t!144429 (t!144429 tokens!457)) (h!22881 (t!144429 tokens!457))))))))

(assert (=> d!472706 (= (seqFromListBHdTlConstructive!155 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457)) (_1!9881 lt!560833)) lt!560923)))

(declare-fun bs!391590 () Bool)

(assert (= bs!391590 d!472706))

(assert (=> bs!391590 m!1879813))

(assert (=> bs!391590 m!1879815))

(declare-fun m!1880037 () Bool)

(assert (=> bs!391590 m!1880037))

(declare-fun m!1880039 () Bool)

(assert (=> bs!391590 m!1880039))

(declare-fun m!1880041 () Bool)

(assert (=> bs!391590 m!1880041))

(assert (=> bs!391590 m!1880037))

(assert (=> bs!391590 m!1880039))

(declare-fun m!1880043 () Bool)

(assert (=> bs!391590 m!1880043))

(assert (=> bs!391590 m!1879811))

(assert (=> bs!391590 m!1879813))

(assert (=> bs!391590 m!1879811))

(assert (=> bs!391590 m!1879763))

(assert (=> b!1588500 d!472706))

(declare-fun d!472708 () Bool)

(assert (=> d!472708 (= (separableTokensPredicate!649 thiss!17113 (h!22881 tokens!457) (h!22881 (t!144429 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!432 (rulesRegex!468 thiss!17113 rules!1846) (++!4566 (charsOf!1727 (h!22881 tokens!457)) (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))))))))

(declare-fun bs!391591 () Bool)

(assert (= bs!391591 d!472708))

(assert (=> bs!391591 m!1879759))

(assert (=> bs!391591 m!1879749))

(assert (=> bs!391591 m!1879779))

(assert (=> bs!391591 m!1879755))

(declare-fun m!1880045 () Bool)

(assert (=> bs!391591 m!1880045))

(assert (=> bs!391591 m!1879749))

(assert (=> bs!391591 m!1880045))

(declare-fun m!1880047 () Bool)

(assert (=> bs!391591 m!1880047))

(assert (=> bs!391591 m!1879759))

(assert (=> bs!391591 m!1879753))

(assert (=> bs!391591 m!1879779))

(assert (=> bs!391591 m!1879753))

(assert (=> bs!391591 m!1879755))

(assert (=> b!1588482 d!472708))

(declare-fun d!472710 () Bool)

(assert (=> d!472710 (= (inv!22884 (tag!3348 (rule!4882 (h!22881 tokens!457)))) (= (mod (str.len (value!97396 (tag!3348 (rule!4882 (h!22881 tokens!457))))) 2) 0))))

(assert (=> b!1588492 d!472710))

(declare-fun d!472712 () Bool)

(declare-fun res!708740 () Bool)

(declare-fun e!1020432 () Bool)

(assert (=> d!472712 (=> (not res!708740) (not e!1020432))))

(declare-fun semiInverseModEq!1165 (Int Int) Bool)

(assert (=> d!472712 (= res!708740 (semiInverseModEq!1165 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toValue!4489 (transformation!3078 (rule!4882 (h!22881 tokens!457))))))))

(assert (=> d!472712 (= (inv!22887 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) e!1020432)))

(declare-fun b!1588614 () Bool)

(declare-fun equivClasses!1106 (Int Int) Bool)

(assert (=> b!1588614 (= e!1020432 (equivClasses!1106 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toValue!4489 (transformation!3078 (rule!4882 (h!22881 tokens!457))))))))

(assert (= (and d!472712 res!708740) b!1588614))

(declare-fun m!1880049 () Bool)

(assert (=> d!472712 m!1880049))

(declare-fun m!1880051 () Bool)

(assert (=> b!1588614 m!1880051))

(assert (=> b!1588492 d!472712))

(declare-fun d!472714 () Bool)

(declare-fun res!708749 () Bool)

(declare-fun e!1020441 () Bool)

(assert (=> d!472714 (=> res!708749 e!1020441)))

(assert (=> d!472714 (= res!708749 (or (not (is-Cons!17480 tokens!457)) (not (is-Cons!17480 (t!144429 tokens!457)))))))

(assert (=> d!472714 (= (tokensListTwoByTwoPredicateSeparableList!400 thiss!17113 tokens!457 rules!1846) e!1020441)))

(declare-fun b!1588623 () Bool)

(declare-fun e!1020442 () Bool)

(assert (=> b!1588623 (= e!1020441 e!1020442)))

(declare-fun res!708750 () Bool)

(assert (=> b!1588623 (=> (not res!708750) (not e!1020442))))

(assert (=> b!1588623 (= res!708750 (separableTokensPredicate!649 thiss!17113 (h!22881 tokens!457) (h!22881 (t!144429 tokens!457)) rules!1846))))

(declare-fun lt!560943 () Unit!27502)

(declare-fun Unit!27507 () Unit!27502)

(assert (=> b!1588623 (= lt!560943 Unit!27507)))

(assert (=> b!1588623 (> (size!14058 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) 0)))

(declare-fun lt!560945 () Unit!27502)

(declare-fun Unit!27508 () Unit!27502)

(assert (=> b!1588623 (= lt!560945 Unit!27508)))

(assert (=> b!1588623 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 (t!144429 tokens!457)))))

(declare-fun lt!560941 () Unit!27502)

(declare-fun Unit!27509 () Unit!27502)

(assert (=> b!1588623 (= lt!560941 Unit!27509)))

(assert (=> b!1588623 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 tokens!457))))

(declare-fun lt!560942 () Unit!27502)

(declare-fun lt!560946 () Unit!27502)

(assert (=> b!1588623 (= lt!560942 lt!560946)))

(assert (=> b!1588623 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 (t!144429 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!530 (LexerInterface!2707 List!17549 List!17550 Token!5722) Unit!27502)

(assert (=> b!1588623 (= lt!560946 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!530 thiss!17113 rules!1846 tokens!457 (h!22881 (t!144429 tokens!457))))))

(declare-fun lt!560944 () Unit!27502)

(declare-fun lt!560940 () Unit!27502)

(assert (=> b!1588623 (= lt!560944 lt!560940)))

(assert (=> b!1588623 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 tokens!457))))

(assert (=> b!1588623 (= lt!560940 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!530 thiss!17113 rules!1846 tokens!457 (h!22881 tokens!457)))))

(declare-fun b!1588624 () Bool)

(assert (=> b!1588624 (= e!1020442 (tokensListTwoByTwoPredicateSeparableList!400 thiss!17113 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))) rules!1846))))

(assert (= (and d!472714 (not res!708749)) b!1588623))

(assert (= (and b!1588623 res!708750) b!1588624))

(declare-fun m!1880053 () Bool)

(assert (=> b!1588623 m!1880053))

(declare-fun m!1880055 () Bool)

(assert (=> b!1588623 m!1880055))

(assert (=> b!1588623 m!1879799))

(assert (=> b!1588623 m!1879797))

(declare-fun m!1880057 () Bool)

(assert (=> b!1588623 m!1880057))

(assert (=> b!1588623 m!1879759))

(declare-fun m!1880059 () Bool)

(assert (=> b!1588623 m!1880059))

(assert (=> b!1588623 m!1879759))

(declare-fun m!1880061 () Bool)

(assert (=> b!1588624 m!1880061))

(assert (=> b!1588491 d!472714))

(declare-fun b!1588635 () Bool)

(declare-fun e!1020451 () Bool)

(declare-fun inv!15 (TokenValue!3168) Bool)

(assert (=> b!1588635 (= e!1020451 (inv!15 (value!97397 (h!22881 tokens!457))))))

(declare-fun b!1588636 () Bool)

(declare-fun e!1020449 () Bool)

(declare-fun inv!16 (TokenValue!3168) Bool)

(assert (=> b!1588636 (= e!1020449 (inv!16 (value!97397 (h!22881 tokens!457))))))

(declare-fun b!1588637 () Bool)

(declare-fun e!1020450 () Bool)

(assert (=> b!1588637 (= e!1020449 e!1020450)))

(declare-fun c!257402 () Bool)

(assert (=> b!1588637 (= c!257402 (is-IntegerValue!9505 (value!97397 (h!22881 tokens!457))))))

(declare-fun b!1588638 () Bool)

(declare-fun inv!17 (TokenValue!3168) Bool)

(assert (=> b!1588638 (= e!1020450 (inv!17 (value!97397 (h!22881 tokens!457))))))

(declare-fun d!472716 () Bool)

(declare-fun c!257401 () Bool)

(assert (=> d!472716 (= c!257401 (is-IntegerValue!9504 (value!97397 (h!22881 tokens!457))))))

(assert (=> d!472716 (= (inv!21 (value!97397 (h!22881 tokens!457))) e!1020449)))

(declare-fun b!1588639 () Bool)

(declare-fun res!708753 () Bool)

(assert (=> b!1588639 (=> res!708753 e!1020451)))

(assert (=> b!1588639 (= res!708753 (not (is-IntegerValue!9506 (value!97397 (h!22881 tokens!457)))))))

(assert (=> b!1588639 (= e!1020450 e!1020451)))

(assert (= (and d!472716 c!257401) b!1588636))

(assert (= (and d!472716 (not c!257401)) b!1588637))

(assert (= (and b!1588637 c!257402) b!1588638))

(assert (= (and b!1588637 (not c!257402)) b!1588639))

(assert (= (and b!1588639 (not res!708753)) b!1588635))

(declare-fun m!1880063 () Bool)

(assert (=> b!1588635 m!1880063))

(declare-fun m!1880065 () Bool)

(assert (=> b!1588636 m!1880065))

(declare-fun m!1880067 () Bool)

(assert (=> b!1588638 m!1880067))

(assert (=> b!1588501 d!472716))

(declare-fun d!472718 () Bool)

(declare-fun isEmpty!10504 (Option!3151) Bool)

(assert (=> d!472718 (= (isDefined!2526 lt!560824) (not (isEmpty!10504 lt!560824)))))

(declare-fun bs!391592 () Bool)

(assert (= bs!391592 d!472718))

(declare-fun m!1880069 () Bool)

(assert (=> bs!391592 m!1880069))

(assert (=> b!1588480 d!472718))

(declare-fun d!472720 () Bool)

(assert (=> d!472720 (isDefined!2526 (maxPrefix!1271 thiss!17113 rules!1846 (++!4565 lt!560815 lt!560831)))))

(declare-fun lt!560993 () Unit!27502)

(declare-fun e!1020457 () Unit!27502)

(assert (=> d!472720 (= lt!560993 e!1020457)))

(declare-fun c!257405 () Bool)

(assert (=> d!472720 (= c!257405 (isEmpty!10504 (maxPrefix!1271 thiss!17113 rules!1846 (++!4565 lt!560815 lt!560831))))))

(declare-fun lt!560982 () Unit!27502)

(declare-fun lt!560989 () Unit!27502)

(assert (=> d!472720 (= lt!560982 lt!560989)))

(declare-fun e!1020456 () Bool)

(assert (=> d!472720 e!1020456))

(declare-fun res!708758 () Bool)

(assert (=> d!472720 (=> (not res!708758) (not e!1020456))))

(declare-fun lt!560995 () Token!5722)

(declare-datatypes ((Option!3153 0))(
  ( (None!3152) (Some!3152 (v!24051 Rule!5956)) )
))
(declare-fun isDefined!2528 (Option!3153) Bool)

(declare-fun getRuleFromTag!249 (LexerInterface!2707 List!17549 String!20174) Option!3153)

(assert (=> d!472720 (= res!708758 (isDefined!2528 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!249 (LexerInterface!2707 List!17549 List!17548 Token!5722) Unit!27502)

(assert (=> d!472720 (= lt!560989 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!249 thiss!17113 rules!1846 lt!560815 lt!560995))))

(declare-fun lt!560996 () Unit!27502)

(declare-fun lt!560988 () Unit!27502)

(assert (=> d!472720 (= lt!560996 lt!560988)))

(declare-fun lt!560990 () List!17548)

(assert (=> d!472720 (isPrefix!1338 lt!560990 (++!4565 lt!560815 lt!560831))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!135 (List!17548 List!17548 List!17548) Unit!27502)

(assert (=> d!472720 (= lt!560988 (lemmaPrefixStaysPrefixWhenAddingToSuffix!135 lt!560990 lt!560815 lt!560831))))

(assert (=> d!472720 (= lt!560990 (list!6789 (charsOf!1727 lt!560995)))))

(declare-fun lt!560983 () Unit!27502)

(declare-fun lt!560985 () Unit!27502)

(assert (=> d!472720 (= lt!560983 lt!560985)))

(declare-fun lt!560992 () List!17548)

(declare-fun lt!560991 () List!17548)

(assert (=> d!472720 (isPrefix!1338 lt!560992 (++!4565 lt!560992 lt!560991))))

(assert (=> d!472720 (= lt!560985 (lemmaConcatTwoListThenFirstIsPrefix!863 lt!560992 lt!560991))))

(declare-fun get!5002 (Option!3151) tuple2!16956)

(assert (=> d!472720 (= lt!560991 (_2!9880 (get!5002 (maxPrefix!1271 thiss!17113 rules!1846 lt!560815))))))

(assert (=> d!472720 (= lt!560992 (list!6789 (charsOf!1727 lt!560995)))))

(declare-fun head!3238 (List!17550) Token!5722)

(assert (=> d!472720 (= lt!560995 (head!3238 (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))))))

(assert (=> d!472720 (not (isEmpty!10500 rules!1846))))

(assert (=> d!472720 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!281 thiss!17113 rules!1846 lt!560815 lt!560831) lt!560993)))

(declare-fun b!1588649 () Bool)

(declare-fun get!5003 (Option!3153) Rule!5956)

(assert (=> b!1588649 (= e!1020456 (= (rule!4882 lt!560995) (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995))))))))

(declare-fun b!1588648 () Bool)

(declare-fun res!708759 () Bool)

(assert (=> b!1588648 (=> (not res!708759) (not e!1020456))))

(declare-fun matchR!1925 (Regex!4406 List!17548) Bool)

(assert (=> b!1588648 (= res!708759 (matchR!1925 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995))))) (list!6789 (charsOf!1727 lt!560995))))))

(declare-fun b!1588650 () Bool)

(declare-fun Unit!27510 () Unit!27502)

(assert (=> b!1588650 (= e!1020457 Unit!27510)))

(declare-fun lt!560984 () List!17548)

(assert (=> b!1588650 (= lt!560984 (++!4565 lt!560815 lt!560831))))

(declare-fun lt!560987 () Unit!27502)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!143 (LexerInterface!2707 Rule!5956 List!17549 List!17548) Unit!27502)

(assert (=> b!1588650 (= lt!560987 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!143 thiss!17113 (rule!4882 lt!560995) rules!1846 lt!560984))))

(declare-fun maxPrefixOneRule!740 (LexerInterface!2707 Rule!5956 List!17548) Option!3151)

(assert (=> b!1588650 (isEmpty!10504 (maxPrefixOneRule!740 thiss!17113 (rule!4882 lt!560995) lt!560984))))

(declare-fun lt!560986 () Unit!27502)

(assert (=> b!1588650 (= lt!560986 lt!560987)))

(declare-fun lt!560994 () List!17548)

(assert (=> b!1588650 (= lt!560994 (list!6789 (charsOf!1727 lt!560995)))))

(declare-fun lt!560981 () Unit!27502)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!139 (LexerInterface!2707 Rule!5956 List!17548 List!17548) Unit!27502)

(assert (=> b!1588650 (= lt!560981 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!139 thiss!17113 (rule!4882 lt!560995) lt!560994 (++!4565 lt!560815 lt!560831)))))

(assert (=> b!1588650 (not (matchR!1925 (regex!3078 (rule!4882 lt!560995)) lt!560994))))

(declare-fun lt!560997 () Unit!27502)

(assert (=> b!1588650 (= lt!560997 lt!560981)))

(assert (=> b!1588650 false))

(declare-fun b!1588651 () Bool)

(declare-fun Unit!27511 () Unit!27502)

(assert (=> b!1588651 (= e!1020457 Unit!27511)))

(assert (= (and d!472720 res!708758) b!1588648))

(assert (= (and b!1588648 res!708759) b!1588649))

(assert (= (and d!472720 c!257405) b!1588650))

(assert (= (and d!472720 (not c!257405)) b!1588651))

(declare-fun m!1880071 () Bool)

(assert (=> d!472720 m!1880071))

(declare-fun m!1880073 () Bool)

(assert (=> d!472720 m!1880073))

(assert (=> d!472720 m!1879785))

(declare-fun m!1880075 () Bool)

(assert (=> d!472720 m!1880075))

(declare-fun m!1880077 () Bool)

(assert (=> d!472720 m!1880077))

(declare-fun m!1880079 () Bool)

(assert (=> d!472720 m!1880079))

(declare-fun m!1880081 () Bool)

(assert (=> d!472720 m!1880081))

(declare-fun m!1880083 () Bool)

(assert (=> d!472720 m!1880083))

(declare-fun m!1880085 () Bool)

(assert (=> d!472720 m!1880085))

(declare-fun m!1880087 () Bool)

(assert (=> d!472720 m!1880087))

(assert (=> d!472720 m!1880077))

(declare-fun m!1880089 () Bool)

(assert (=> d!472720 m!1880089))

(declare-fun m!1880091 () Bool)

(assert (=> d!472720 m!1880091))

(declare-fun m!1880093 () Bool)

(assert (=> d!472720 m!1880093))

(declare-fun m!1880095 () Bool)

(assert (=> d!472720 m!1880095))

(assert (=> d!472720 m!1879841))

(assert (=> d!472720 m!1879843))

(declare-fun m!1880097 () Bool)

(assert (=> d!472720 m!1880097))

(assert (=> d!472720 m!1879785))

(assert (=> d!472720 m!1880091))

(assert (=> d!472720 m!1880085))

(assert (=> d!472720 m!1880097))

(declare-fun m!1880099 () Bool)

(assert (=> d!472720 m!1880099))

(assert (=> d!472720 m!1880091))

(declare-fun m!1880101 () Bool)

(assert (=> d!472720 m!1880101))

(assert (=> d!472720 m!1879785))

(assert (=> d!472720 m!1880071))

(assert (=> d!472720 m!1880081))

(assert (=> d!472720 m!1879841))

(declare-fun m!1880103 () Bool)

(assert (=> d!472720 m!1880103))

(assert (=> d!472720 m!1879839))

(assert (=> b!1588649 m!1880081))

(assert (=> b!1588649 m!1880081))

(declare-fun m!1880105 () Bool)

(assert (=> b!1588649 m!1880105))

(assert (=> b!1588648 m!1880081))

(assert (=> b!1588648 m!1880105))

(assert (=> b!1588648 m!1880077))

(assert (=> b!1588648 m!1880079))

(assert (=> b!1588648 m!1880079))

(declare-fun m!1880107 () Bool)

(assert (=> b!1588648 m!1880107))

(assert (=> b!1588648 m!1880081))

(assert (=> b!1588648 m!1880077))

(declare-fun m!1880109 () Bool)

(assert (=> b!1588650 m!1880109))

(declare-fun m!1880111 () Bool)

(assert (=> b!1588650 m!1880111))

(declare-fun m!1880113 () Bool)

(assert (=> b!1588650 m!1880113))

(assert (=> b!1588650 m!1879785))

(declare-fun m!1880115 () Bool)

(assert (=> b!1588650 m!1880115))

(assert (=> b!1588650 m!1880077))

(assert (=> b!1588650 m!1880079))

(assert (=> b!1588650 m!1879785))

(assert (=> b!1588650 m!1880077))

(assert (=> b!1588650 m!1880111))

(declare-fun m!1880117 () Bool)

(assert (=> b!1588650 m!1880117))

(assert (=> b!1588480 d!472720))

(declare-fun lt!561000 () Bool)

(declare-fun d!472722 () Bool)

(declare-fun isEmpty!10505 (List!17550) Bool)

(assert (=> d!472722 (= lt!561000 (isEmpty!10505 (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))))))

(declare-fun isEmpty!10506 (Conc!5805) Bool)

(assert (=> d!472722 (= lt!561000 (isEmpty!10506 (c!257385 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))))))

(assert (=> d!472722 (= (isEmpty!10501 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815)))) lt!561000)))

(declare-fun bs!391593 () Bool)

(assert (= bs!391593 d!472722))

(assert (=> bs!391593 m!1880085))

(assert (=> bs!391593 m!1880085))

(declare-fun m!1880119 () Bool)

(assert (=> bs!391593 m!1880119))

(declare-fun m!1880121 () Bool)

(assert (=> bs!391593 m!1880121))

(assert (=> b!1588484 d!472722))

(declare-fun b!1588652 () Bool)

(declare-fun e!1020459 () Bool)

(declare-fun lt!561001 () tuple2!16958)

(assert (=> b!1588652 (= e!1020459 (= (_2!9881 lt!561001) (seqFromList!1905 lt!560815)))))

(declare-fun b!1588653 () Bool)

(declare-fun e!1020460 () Bool)

(assert (=> b!1588653 (= e!1020460 (= (list!6789 (_2!9881 lt!561001)) (_2!9884 (lexList!794 thiss!17113 rules!1846 (list!6789 (seqFromList!1905 lt!560815))))))))

(declare-fun b!1588654 () Bool)

(declare-fun e!1020458 () Bool)

(assert (=> b!1588654 (= e!1020459 e!1020458)))

(declare-fun res!708762 () Bool)

(assert (=> b!1588654 (= res!708762 (< (size!14058 (_2!9881 lt!561001)) (size!14058 (seqFromList!1905 lt!560815))))))

(assert (=> b!1588654 (=> (not res!708762) (not e!1020458))))

(declare-fun b!1588655 () Bool)

(assert (=> b!1588655 (= e!1020458 (not (isEmpty!10501 (_1!9881 lt!561001))))))

(declare-fun b!1588656 () Bool)

(declare-fun res!708760 () Bool)

(assert (=> b!1588656 (=> (not res!708760) (not e!1020460))))

(assert (=> b!1588656 (= res!708760 (= (list!6790 (_1!9881 lt!561001)) (_1!9884 (lexList!794 thiss!17113 rules!1846 (list!6789 (seqFromList!1905 lt!560815))))))))

(declare-fun d!472724 () Bool)

(assert (=> d!472724 e!1020460))

(declare-fun res!708761 () Bool)

(assert (=> d!472724 (=> (not res!708761) (not e!1020460))))

(assert (=> d!472724 (= res!708761 e!1020459)))

(declare-fun c!257406 () Bool)

(assert (=> d!472724 (= c!257406 (> (size!14059 (_1!9881 lt!561001)) 0))))

(assert (=> d!472724 (= lt!561001 (lexTailRecV2!517 thiss!17113 rules!1846 (seqFromList!1905 lt!560815) (BalanceConc!11553 Empty!5804) (seqFromList!1905 lt!560815) (BalanceConc!11555 Empty!5805)))))

(assert (=> d!472724 (= (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815)) lt!561001)))

(assert (= (and d!472724 c!257406) b!1588654))

(assert (= (and d!472724 (not c!257406)) b!1588652))

(assert (= (and b!1588654 res!708762) b!1588655))

(assert (= (and d!472724 res!708761) b!1588656))

(assert (= (and b!1588656 res!708760) b!1588653))

(declare-fun m!1880123 () Bool)

(assert (=> d!472724 m!1880123))

(assert (=> d!472724 m!1879841))

(assert (=> d!472724 m!1879841))

(declare-fun m!1880125 () Bool)

(assert (=> d!472724 m!1880125))

(declare-fun m!1880127 () Bool)

(assert (=> b!1588655 m!1880127))

(declare-fun m!1880129 () Bool)

(assert (=> b!1588653 m!1880129))

(assert (=> b!1588653 m!1879841))

(declare-fun m!1880131 () Bool)

(assert (=> b!1588653 m!1880131))

(assert (=> b!1588653 m!1880131))

(declare-fun m!1880133 () Bool)

(assert (=> b!1588653 m!1880133))

(declare-fun m!1880135 () Bool)

(assert (=> b!1588656 m!1880135))

(assert (=> b!1588656 m!1879841))

(assert (=> b!1588656 m!1880131))

(assert (=> b!1588656 m!1880131))

(assert (=> b!1588656 m!1880133))

(declare-fun m!1880137 () Bool)

(assert (=> b!1588654 m!1880137))

(assert (=> b!1588654 m!1879841))

(declare-fun m!1880139 () Bool)

(assert (=> b!1588654 m!1880139))

(assert (=> b!1588484 d!472724))

(declare-fun d!472726 () Bool)

(declare-fun fromListB!825 (List!17548) BalanceConc!11552)

(assert (=> d!472726 (= (seqFromList!1905 lt!560815) (fromListB!825 lt!560815))))

(declare-fun bs!391594 () Bool)

(assert (= bs!391594 d!472726))

(declare-fun m!1880141 () Bool)

(assert (=> bs!391594 m!1880141))

(assert (=> b!1588484 d!472726))

(declare-fun d!472728 () Bool)

(declare-fun c!257409 () Bool)

(declare-fun isEmpty!10507 (List!17548) Bool)

(assert (=> d!472728 (= c!257409 (isEmpty!10507 (++!4565 lt!560815 (list!6789 lt!560818))))))

(declare-fun e!1020463 () Bool)

(assert (=> d!472728 (= (prefixMatch!341 lt!560821 (++!4565 lt!560815 (list!6789 lt!560818))) e!1020463)))

(declare-fun b!1588661 () Bool)

(declare-fun lostCause!403 (Regex!4406) Bool)

(assert (=> b!1588661 (= e!1020463 (not (lostCause!403 lt!560821)))))

(declare-fun b!1588662 () Bool)

(declare-fun derivativeStep!1047 (Regex!4406 C!8986) Regex!4406)

(declare-fun head!3239 (List!17548) C!8986)

(declare-fun tail!2285 (List!17548) List!17548)

(assert (=> b!1588662 (= e!1020463 (prefixMatch!341 (derivativeStep!1047 lt!560821 (head!3239 (++!4565 lt!560815 (list!6789 lt!560818)))) (tail!2285 (++!4565 lt!560815 (list!6789 lt!560818)))))))

(assert (= (and d!472728 c!257409) b!1588661))

(assert (= (and d!472728 (not c!257409)) b!1588662))

(assert (=> d!472728 m!1879803))

(declare-fun m!1880143 () Bool)

(assert (=> d!472728 m!1880143))

(declare-fun m!1880145 () Bool)

(assert (=> b!1588661 m!1880145))

(assert (=> b!1588662 m!1879803))

(declare-fun m!1880147 () Bool)

(assert (=> b!1588662 m!1880147))

(assert (=> b!1588662 m!1880147))

(declare-fun m!1880149 () Bool)

(assert (=> b!1588662 m!1880149))

(assert (=> b!1588662 m!1879803))

(declare-fun m!1880151 () Bool)

(assert (=> b!1588662 m!1880151))

(assert (=> b!1588662 m!1880149))

(assert (=> b!1588662 m!1880151))

(declare-fun m!1880153 () Bool)

(assert (=> b!1588662 m!1880153))

(assert (=> b!1588483 d!472728))

(declare-fun b!1588664 () Bool)

(declare-fun e!1020465 () List!17548)

(assert (=> b!1588664 (= e!1020465 (Cons!17478 (h!22879 lt!560815) (++!4565 (t!144427 lt!560815) (list!6789 lt!560818))))))

(declare-fun b!1588665 () Bool)

(declare-fun res!708764 () Bool)

(declare-fun e!1020464 () Bool)

(assert (=> b!1588665 (=> (not res!708764) (not e!1020464))))

(declare-fun lt!561002 () List!17548)

(assert (=> b!1588665 (= res!708764 (= (size!14057 lt!561002) (+ (size!14057 lt!560815) (size!14057 (list!6789 lt!560818)))))))

(declare-fun b!1588666 () Bool)

(assert (=> b!1588666 (= e!1020464 (or (not (= (list!6789 lt!560818) Nil!17478)) (= lt!561002 lt!560815)))))

(declare-fun d!472730 () Bool)

(assert (=> d!472730 e!1020464))

(declare-fun res!708763 () Bool)

(assert (=> d!472730 (=> (not res!708763) (not e!1020464))))

(assert (=> d!472730 (= res!708763 (= (content!2408 lt!561002) (set.union (content!2408 lt!560815) (content!2408 (list!6789 lt!560818)))))))

(assert (=> d!472730 (= lt!561002 e!1020465)))

(declare-fun c!257410 () Bool)

(assert (=> d!472730 (= c!257410 (is-Nil!17478 lt!560815))))

(assert (=> d!472730 (= (++!4565 lt!560815 (list!6789 lt!560818)) lt!561002)))

(declare-fun b!1588663 () Bool)

(assert (=> b!1588663 (= e!1020465 (list!6789 lt!560818))))

(assert (= (and d!472730 c!257410) b!1588663))

(assert (= (and d!472730 (not c!257410)) b!1588664))

(assert (= (and d!472730 res!708763) b!1588665))

(assert (= (and b!1588665 res!708764) b!1588666))

(assert (=> b!1588664 m!1879801))

(declare-fun m!1880155 () Bool)

(assert (=> b!1588664 m!1880155))

(declare-fun m!1880157 () Bool)

(assert (=> b!1588665 m!1880157))

(assert (=> b!1588665 m!1879967))

(assert (=> b!1588665 m!1879801))

(declare-fun m!1880159 () Bool)

(assert (=> b!1588665 m!1880159))

(declare-fun m!1880161 () Bool)

(assert (=> d!472730 m!1880161))

(assert (=> d!472730 m!1879973))

(assert (=> d!472730 m!1879801))

(declare-fun m!1880163 () Bool)

(assert (=> d!472730 m!1880163))

(assert (=> b!1588483 d!472730))

(declare-fun d!472732 () Bool)

(assert (=> d!472732 (= (list!6789 lt!560818) (list!6793 (c!257383 lt!560818)))))

(declare-fun bs!391595 () Bool)

(assert (= bs!391595 d!472732))

(declare-fun m!1880165 () Bool)

(assert (=> bs!391595 m!1880165))

(assert (=> b!1588483 d!472732))

(declare-fun b!1588719 () Bool)

(declare-fun e!1020506 () Bool)

(assert (=> b!1588719 (= e!1020506 true)))

(declare-fun b!1588718 () Bool)

(declare-fun e!1020505 () Bool)

(assert (=> b!1588718 (= e!1020505 e!1020506)))

(declare-fun b!1588717 () Bool)

(declare-fun e!1020504 () Bool)

(assert (=> b!1588717 (= e!1020504 e!1020505)))

(declare-fun d!472734 () Bool)

(assert (=> d!472734 e!1020504))

(assert (= b!1588718 b!1588719))

(assert (= b!1588717 b!1588718))

(assert (= (and d!472734 (is-Cons!17479 rules!1846)) b!1588717))

(declare-fun lambda!66634 () Int)

(declare-fun order!10343 () Int)

(declare-fun order!10345 () Int)

(declare-fun dynLambda!7769 (Int Int) Int)

(declare-fun dynLambda!7770 (Int Int) Int)

(assert (=> b!1588719 (< (dynLambda!7769 order!10343 (toValue!4489 (transformation!3078 (h!22880 rules!1846)))) (dynLambda!7770 order!10345 lambda!66634))))

(declare-fun order!10347 () Int)

(declare-fun dynLambda!7771 (Int Int) Int)

(assert (=> b!1588719 (< (dynLambda!7771 order!10347 (toChars!4348 (transformation!3078 (h!22880 rules!1846)))) (dynLambda!7770 order!10345 lambda!66634))))

(assert (=> d!472734 true))

(declare-fun lt!561027 () Bool)

(declare-fun forall!4015 (List!17550 Int) Bool)

(assert (=> d!472734 (= lt!561027 (forall!4015 tokens!457 lambda!66634))))

(declare-fun e!1020497 () Bool)

(assert (=> d!472734 (= lt!561027 e!1020497)))

(declare-fun res!708780 () Bool)

(assert (=> d!472734 (=> res!708780 e!1020497)))

(assert (=> d!472734 (= res!708780 (not (is-Cons!17480 tokens!457)))))

(assert (=> d!472734 (not (isEmpty!10500 rules!1846))))

(assert (=> d!472734 (= (rulesProduceEachTokenIndividuallyList!909 thiss!17113 rules!1846 tokens!457) lt!561027)))

(declare-fun b!1588707 () Bool)

(declare-fun e!1020496 () Bool)

(assert (=> b!1588707 (= e!1020497 e!1020496)))

(declare-fun res!708781 () Bool)

(assert (=> b!1588707 (=> (not res!708781) (not e!1020496))))

(assert (=> b!1588707 (= res!708781 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 tokens!457)))))

(declare-fun b!1588708 () Bool)

(assert (=> b!1588708 (= e!1020496 (rulesProduceEachTokenIndividuallyList!909 thiss!17113 rules!1846 (t!144429 tokens!457)))))

(assert (= (and d!472734 (not res!708780)) b!1588707))

(assert (= (and b!1588707 res!708781) b!1588708))

(declare-fun m!1880189 () Bool)

(assert (=> d!472734 m!1880189))

(assert (=> d!472734 m!1879839))

(assert (=> b!1588707 m!1879799))

(declare-fun m!1880191 () Bool)

(assert (=> b!1588708 m!1880191))

(assert (=> b!1588494 d!472734))

(declare-fun d!472744 () Bool)

(assert (=> d!472744 (= (list!6789 lt!560834) (list!6793 (c!257383 lt!560834)))))

(declare-fun bs!391597 () Bool)

(assert (= bs!391597 d!472744))

(declare-fun m!1880193 () Bool)

(assert (=> bs!391597 m!1880193))

(assert (=> b!1588493 d!472744))

(declare-fun d!472746 () Bool)

(declare-fun lt!561028 () BalanceConc!11552)

(assert (=> d!472746 (= (list!6789 lt!561028) (printList!822 thiss!17113 (list!6790 lt!560813)))))

(assert (=> d!472746 (= lt!561028 (printTailRec!760 thiss!17113 lt!560813 0 (BalanceConc!11553 Empty!5804)))))

(assert (=> d!472746 (= (print!1238 thiss!17113 lt!560813) lt!561028)))

(declare-fun bs!391598 () Bool)

(assert (= bs!391598 d!472746))

(declare-fun m!1880195 () Bool)

(assert (=> bs!391598 m!1880195))

(declare-fun m!1880197 () Bool)

(assert (=> bs!391598 m!1880197))

(assert (=> bs!391598 m!1880197))

(declare-fun m!1880199 () Bool)

(assert (=> bs!391598 m!1880199))

(assert (=> bs!391598 m!1879823))

(assert (=> b!1588493 d!472746))

(declare-fun d!472748 () Bool)

(declare-fun lt!561043 () BalanceConc!11552)

(declare-fun printListTailRec!320 (LexerInterface!2707 List!17550 List!17548) List!17548)

(declare-fun dropList!537 (BalanceConc!11554 Int) List!17550)

(assert (=> d!472748 (= (list!6789 lt!561043) (printListTailRec!320 thiss!17113 (dropList!537 lt!560813 0) (list!6789 (BalanceConc!11553 Empty!5804))))))

(declare-fun e!1020511 () BalanceConc!11552)

(assert (=> d!472748 (= lt!561043 e!1020511)))

(declare-fun c!257419 () Bool)

(assert (=> d!472748 (= c!257419 (>= 0 (size!14059 lt!560813)))))

(declare-fun e!1020512 () Bool)

(assert (=> d!472748 e!1020512))

(declare-fun res!708784 () Bool)

(assert (=> d!472748 (=> (not res!708784) (not e!1020512))))

(assert (=> d!472748 (= res!708784 (>= 0 0))))

(assert (=> d!472748 (= (printTailRec!760 thiss!17113 lt!560813 0 (BalanceConc!11553 Empty!5804)) lt!561043)))

(declare-fun b!1588728 () Bool)

(assert (=> b!1588728 (= e!1020512 (<= 0 (size!14059 lt!560813)))))

(declare-fun b!1588729 () Bool)

(assert (=> b!1588729 (= e!1020511 (BalanceConc!11553 Empty!5804))))

(declare-fun b!1588730 () Bool)

(declare-fun apply!4303 (BalanceConc!11554 Int) Token!5722)

(assert (=> b!1588730 (= e!1020511 (printTailRec!760 thiss!17113 lt!560813 (+ 0 1) (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (apply!4303 lt!560813 0)))))))

(declare-fun lt!561049 () List!17550)

(assert (=> b!1588730 (= lt!561049 (list!6790 lt!560813))))

(declare-fun lt!561047 () Unit!27502)

(declare-fun lemmaDropApply!527 (List!17550 Int) Unit!27502)

(assert (=> b!1588730 (= lt!561047 (lemmaDropApply!527 lt!561049 0))))

(declare-fun drop!829 (List!17550 Int) List!17550)

(declare-fun apply!4304 (List!17550 Int) Token!5722)

(assert (=> b!1588730 (= (head!3238 (drop!829 lt!561049 0)) (apply!4304 lt!561049 0))))

(declare-fun lt!561048 () Unit!27502)

(assert (=> b!1588730 (= lt!561048 lt!561047)))

(declare-fun lt!561044 () List!17550)

(assert (=> b!1588730 (= lt!561044 (list!6790 lt!560813))))

(declare-fun lt!561045 () Unit!27502)

(declare-fun lemmaDropTail!507 (List!17550 Int) Unit!27502)

(assert (=> b!1588730 (= lt!561045 (lemmaDropTail!507 lt!561044 0))))

(declare-fun tail!2286 (List!17550) List!17550)

(assert (=> b!1588730 (= (tail!2286 (drop!829 lt!561044 0)) (drop!829 lt!561044 (+ 0 1)))))

(declare-fun lt!561046 () Unit!27502)

(assert (=> b!1588730 (= lt!561046 lt!561045)))

(assert (= (and d!472748 res!708784) b!1588728))

(assert (= (and d!472748 c!257419) b!1588729))

(assert (= (and d!472748 (not c!257419)) b!1588730))

(declare-fun m!1880201 () Bool)

(assert (=> d!472748 m!1880201))

(declare-fun m!1880203 () Bool)

(assert (=> d!472748 m!1880203))

(assert (=> d!472748 m!1880203))

(declare-fun m!1880205 () Bool)

(assert (=> d!472748 m!1880205))

(declare-fun m!1880207 () Bool)

(assert (=> d!472748 m!1880207))

(assert (=> d!472748 m!1880205))

(declare-fun m!1880209 () Bool)

(assert (=> d!472748 m!1880209))

(assert (=> b!1588728 m!1880201))

(declare-fun m!1880211 () Bool)

(assert (=> b!1588730 m!1880211))

(declare-fun m!1880213 () Bool)

(assert (=> b!1588730 m!1880213))

(assert (=> b!1588730 m!1880197))

(declare-fun m!1880215 () Bool)

(assert (=> b!1588730 m!1880215))

(declare-fun m!1880217 () Bool)

(assert (=> b!1588730 m!1880217))

(declare-fun m!1880219 () Bool)

(assert (=> b!1588730 m!1880219))

(declare-fun m!1880221 () Bool)

(assert (=> b!1588730 m!1880221))

(declare-fun m!1880223 () Bool)

(assert (=> b!1588730 m!1880223))

(assert (=> b!1588730 m!1880219))

(declare-fun m!1880225 () Bool)

(assert (=> b!1588730 m!1880225))

(declare-fun m!1880227 () Bool)

(assert (=> b!1588730 m!1880227))

(assert (=> b!1588730 m!1880223))

(declare-fun m!1880229 () Bool)

(assert (=> b!1588730 m!1880229))

(assert (=> b!1588730 m!1880217))

(assert (=> b!1588730 m!1880211))

(declare-fun m!1880231 () Bool)

(assert (=> b!1588730 m!1880231))

(assert (=> b!1588730 m!1880215))

(declare-fun m!1880233 () Bool)

(assert (=> b!1588730 m!1880233))

(assert (=> b!1588493 d!472748))

(declare-fun d!472750 () Bool)

(declare-fun c!257422 () Bool)

(assert (=> d!472750 (= c!257422 (is-Cons!17480 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))

(declare-fun e!1020515 () List!17548)

(assert (=> d!472750 (= (printList!822 thiss!17113 (Cons!17480 (h!22881 tokens!457) Nil!17480)) e!1020515)))

(declare-fun b!1588735 () Bool)

(assert (=> b!1588735 (= e!1020515 (++!4565 (list!6789 (charsOf!1727 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))) (printList!822 thiss!17113 (t!144429 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))))

(declare-fun b!1588736 () Bool)

(assert (=> b!1588736 (= e!1020515 Nil!17478)))

(assert (= (and d!472750 c!257422) b!1588735))

(assert (= (and d!472750 (not c!257422)) b!1588736))

(declare-fun m!1880235 () Bool)

(assert (=> b!1588735 m!1880235))

(assert (=> b!1588735 m!1880235))

(declare-fun m!1880237 () Bool)

(assert (=> b!1588735 m!1880237))

(declare-fun m!1880239 () Bool)

(assert (=> b!1588735 m!1880239))

(assert (=> b!1588735 m!1880237))

(assert (=> b!1588735 m!1880239))

(declare-fun m!1880241 () Bool)

(assert (=> b!1588735 m!1880241))

(assert (=> b!1588493 d!472750))

(declare-fun b!1588755 () Bool)

(declare-fun e!1020522 () Option!3151)

(declare-fun lt!561061 () Option!3151)

(declare-fun lt!561064 () Option!3151)

(assert (=> b!1588755 (= e!1020522 (ite (and (is-None!3150 lt!561061) (is-None!3150 lt!561064)) None!3150 (ite (is-None!3150 lt!561064) lt!561061 (ite (is-None!3150 lt!561061) lt!561064 (ite (>= (size!14055 (_1!9880 (v!24043 lt!561061))) (size!14055 (_1!9880 (v!24043 lt!561064)))) lt!561061 lt!561064)))))))

(declare-fun call!102955 () Option!3151)

(assert (=> b!1588755 (= lt!561061 call!102955)))

(assert (=> b!1588755 (= lt!561064 (maxPrefix!1271 thiss!17113 (t!144428 rules!1846) lt!560816))))

(declare-fun b!1588756 () Bool)

(declare-fun e!1020523 () Bool)

(declare-fun lt!561060 () Option!3151)

(declare-fun contains!3051 (List!17549 Rule!5956) Bool)

(assert (=> b!1588756 (= e!1020523 (contains!3051 rules!1846 (rule!4882 (_1!9880 (get!5002 lt!561060)))))))

(declare-fun b!1588757 () Bool)

(declare-fun e!1020524 () Bool)

(assert (=> b!1588757 (= e!1020524 e!1020523)))

(declare-fun res!708803 () Bool)

(assert (=> b!1588757 (=> (not res!708803) (not e!1020523))))

(assert (=> b!1588757 (= res!708803 (isDefined!2526 lt!561060))))

(declare-fun b!1588758 () Bool)

(declare-fun res!708804 () Bool)

(assert (=> b!1588758 (=> (not res!708804) (not e!1020523))))

(assert (=> b!1588758 (= res!708804 (= (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060)))) (originalCharacters!3892 (_1!9880 (get!5002 lt!561060)))))))

(declare-fun b!1588759 () Bool)

(declare-fun res!708800 () Bool)

(assert (=> b!1588759 (=> (not res!708800) (not e!1020523))))

(assert (=> b!1588759 (= res!708800 (= (++!4565 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060)))) (_2!9880 (get!5002 lt!561060))) lt!560816))))

(declare-fun b!1588760 () Bool)

(declare-fun res!708801 () Bool)

(assert (=> b!1588760 (=> (not res!708801) (not e!1020523))))

(assert (=> b!1588760 (= res!708801 (< (size!14057 (_2!9880 (get!5002 lt!561060))) (size!14057 lt!560816)))))

(declare-fun d!472752 () Bool)

(assert (=> d!472752 e!1020524))

(declare-fun res!708805 () Bool)

(assert (=> d!472752 (=> res!708805 e!1020524)))

(assert (=> d!472752 (= res!708805 (isEmpty!10504 lt!561060))))

(assert (=> d!472752 (= lt!561060 e!1020522)))

(declare-fun c!257425 () Bool)

(assert (=> d!472752 (= c!257425 (and (is-Cons!17479 rules!1846) (is-Nil!17479 (t!144428 rules!1846))))))

(declare-fun lt!561063 () Unit!27502)

(declare-fun lt!561062 () Unit!27502)

(assert (=> d!472752 (= lt!561063 lt!561062)))

(assert (=> d!472752 (isPrefix!1338 lt!560816 lt!560816)))

(declare-fun lemmaIsPrefixRefl!925 (List!17548 List!17548) Unit!27502)

(assert (=> d!472752 (= lt!561062 (lemmaIsPrefixRefl!925 lt!560816 lt!560816))))

(declare-fun rulesValidInductive!927 (LexerInterface!2707 List!17549) Bool)

(assert (=> d!472752 (rulesValidInductive!927 thiss!17113 rules!1846)))

(assert (=> d!472752 (= (maxPrefix!1271 thiss!17113 rules!1846 lt!560816) lt!561060)))

(declare-fun bm!102950 () Bool)

(assert (=> bm!102950 (= call!102955 (maxPrefixOneRule!740 thiss!17113 (h!22880 rules!1846) lt!560816))))

(declare-fun b!1588761 () Bool)

(declare-fun res!708802 () Bool)

(assert (=> b!1588761 (=> (not res!708802) (not e!1020523))))

(assert (=> b!1588761 (= res!708802 (matchR!1925 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))) (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))))))

(declare-fun b!1588762 () Bool)

(assert (=> b!1588762 (= e!1020522 call!102955)))

(declare-fun b!1588763 () Bool)

(declare-fun res!708799 () Bool)

(assert (=> b!1588763 (=> (not res!708799) (not e!1020523))))

(declare-fun apply!4305 (TokenValueInjection!5996 BalanceConc!11552) TokenValue!3168)

(assert (=> b!1588763 (= res!708799 (= (value!97397 (_1!9880 (get!5002 lt!561060))) (apply!4305 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!561060)))))))))

(assert (= (and d!472752 c!257425) b!1588762))

(assert (= (and d!472752 (not c!257425)) b!1588755))

(assert (= (or b!1588762 b!1588755) bm!102950))

(assert (= (and d!472752 (not res!708805)) b!1588757))

(assert (= (and b!1588757 res!708803) b!1588758))

(assert (= (and b!1588758 res!708804) b!1588760))

(assert (= (and b!1588760 res!708801) b!1588759))

(assert (= (and b!1588759 res!708800) b!1588763))

(assert (= (and b!1588763 res!708799) b!1588761))

(assert (= (and b!1588761 res!708802) b!1588756))

(declare-fun m!1880243 () Bool)

(assert (=> b!1588756 m!1880243))

(declare-fun m!1880245 () Bool)

(assert (=> b!1588756 m!1880245))

(assert (=> b!1588758 m!1880243))

(declare-fun m!1880247 () Bool)

(assert (=> b!1588758 m!1880247))

(assert (=> b!1588758 m!1880247))

(declare-fun m!1880249 () Bool)

(assert (=> b!1588758 m!1880249))

(declare-fun m!1880251 () Bool)

(assert (=> bm!102950 m!1880251))

(assert (=> b!1588760 m!1880243))

(declare-fun m!1880253 () Bool)

(assert (=> b!1588760 m!1880253))

(declare-fun m!1880255 () Bool)

(assert (=> b!1588760 m!1880255))

(declare-fun m!1880257 () Bool)

(assert (=> b!1588755 m!1880257))

(assert (=> b!1588761 m!1880243))

(assert (=> b!1588761 m!1880247))

(assert (=> b!1588761 m!1880247))

(assert (=> b!1588761 m!1880249))

(assert (=> b!1588761 m!1880249))

(declare-fun m!1880259 () Bool)

(assert (=> b!1588761 m!1880259))

(assert (=> b!1588763 m!1880243))

(declare-fun m!1880261 () Bool)

(assert (=> b!1588763 m!1880261))

(assert (=> b!1588763 m!1880261))

(declare-fun m!1880263 () Bool)

(assert (=> b!1588763 m!1880263))

(declare-fun m!1880265 () Bool)

(assert (=> b!1588757 m!1880265))

(assert (=> b!1588759 m!1880243))

(assert (=> b!1588759 m!1880247))

(assert (=> b!1588759 m!1880247))

(assert (=> b!1588759 m!1880249))

(assert (=> b!1588759 m!1880249))

(declare-fun m!1880267 () Bool)

(assert (=> b!1588759 m!1880267))

(declare-fun m!1880269 () Bool)

(assert (=> d!472752 m!1880269))

(declare-fun m!1880271 () Bool)

(assert (=> d!472752 m!1880271))

(declare-fun m!1880273 () Bool)

(assert (=> d!472752 m!1880273))

(declare-fun m!1880275 () Bool)

(assert (=> d!472752 m!1880275))

(assert (=> b!1588493 d!472752))

(declare-fun d!472754 () Bool)

(declare-fun e!1020527 () Bool)

(assert (=> d!472754 e!1020527))

(declare-fun res!708808 () Bool)

(assert (=> d!472754 (=> (not res!708808) (not e!1020527))))

(declare-fun lt!561067 () BalanceConc!11554)

(assert (=> d!472754 (= res!708808 (= (list!6790 lt!561067) (Cons!17480 (h!22881 tokens!457) Nil!17480)))))

(declare-fun singleton!599 (Token!5722) BalanceConc!11554)

(assert (=> d!472754 (= lt!561067 (singleton!599 (h!22881 tokens!457)))))

(assert (=> d!472754 (= (singletonSeq!1435 (h!22881 tokens!457)) lt!561067)))

(declare-fun b!1588766 () Bool)

(assert (=> b!1588766 (= e!1020527 (isBalanced!1719 (c!257385 lt!561067)))))

(assert (= (and d!472754 res!708808) b!1588766))

(declare-fun m!1880277 () Bool)

(assert (=> d!472754 m!1880277))

(declare-fun m!1880279 () Bool)

(assert (=> d!472754 m!1880279))

(declare-fun m!1880281 () Bool)

(assert (=> b!1588766 m!1880281))

(assert (=> b!1588493 d!472754))

(declare-fun d!472756 () Bool)

(declare-fun lt!561156 () Bool)

(declare-fun e!1020548 () Bool)

(assert (=> d!472756 (= lt!561156 e!1020548)))

(declare-fun res!708832 () Bool)

(assert (=> d!472756 (=> (not res!708832) (not e!1020548))))

(assert (=> d!472756 (= res!708832 (= (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457)))))) (list!6790 (singletonSeq!1435 (h!22881 tokens!457)))))))

(declare-fun e!1020547 () Bool)

(assert (=> d!472756 (= lt!561156 e!1020547)))

(declare-fun res!708830 () Bool)

(assert (=> d!472756 (=> (not res!708830) (not e!1020547))))

(declare-fun lt!561157 () tuple2!16958)

(assert (=> d!472756 (= res!708830 (= (size!14059 (_1!9881 lt!561157)) 1))))

(assert (=> d!472756 (= lt!561157 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457)))))))

(assert (=> d!472756 (not (isEmpty!10500 rules!1846))))

(assert (=> d!472756 (= (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 tokens!457)) lt!561156)))

(declare-fun b!1588794 () Bool)

(declare-fun res!708831 () Bool)

(assert (=> b!1588794 (=> (not res!708831) (not e!1020547))))

(assert (=> b!1588794 (= res!708831 (= (apply!4303 (_1!9881 lt!561157) 0) (h!22881 tokens!457)))))

(declare-fun b!1588795 () Bool)

(declare-fun isEmpty!10510 (BalanceConc!11552) Bool)

(assert (=> b!1588795 (= e!1020547 (isEmpty!10510 (_2!9881 lt!561157)))))

(declare-fun b!1588796 () Bool)

(assert (=> b!1588796 (= e!1020548 (isEmpty!10510 (_2!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457)))))))))

(assert (= (and d!472756 res!708830) b!1588794))

(assert (= (and b!1588794 res!708831) b!1588795))

(assert (= (and d!472756 res!708832) b!1588796))

(declare-fun m!1880383 () Bool)

(assert (=> d!472756 m!1880383))

(declare-fun m!1880385 () Bool)

(assert (=> d!472756 m!1880385))

(declare-fun m!1880387 () Bool)

(assert (=> d!472756 m!1880387))

(assert (=> d!472756 m!1879839))

(assert (=> d!472756 m!1879827))

(declare-fun m!1880389 () Bool)

(assert (=> d!472756 m!1880389))

(declare-fun m!1880391 () Bool)

(assert (=> d!472756 m!1880391))

(assert (=> d!472756 m!1879827))

(assert (=> d!472756 m!1880385))

(assert (=> d!472756 m!1879827))

(declare-fun m!1880393 () Bool)

(assert (=> b!1588794 m!1880393))

(declare-fun m!1880395 () Bool)

(assert (=> b!1588795 m!1880395))

(assert (=> b!1588796 m!1879827))

(assert (=> b!1588796 m!1879827))

(assert (=> b!1588796 m!1880385))

(assert (=> b!1588796 m!1880385))

(assert (=> b!1588796 m!1880387))

(declare-fun m!1880397 () Bool)

(assert (=> b!1588796 m!1880397))

(assert (=> b!1588487 d!472756))

(declare-fun d!472768 () Bool)

(declare-fun res!708837 () Bool)

(declare-fun e!1020551 () Bool)

(assert (=> d!472768 (=> (not res!708837) (not e!1020551))))

(assert (=> d!472768 (= res!708837 (not (isEmpty!10507 (originalCharacters!3892 (h!22881 tokens!457)))))))

(assert (=> d!472768 (= (inv!22888 (h!22881 tokens!457)) e!1020551)))

(declare-fun b!1588801 () Bool)

(declare-fun res!708838 () Bool)

(assert (=> b!1588801 (=> (not res!708838) (not e!1020551))))

(assert (=> b!1588801 (= res!708838 (= (originalCharacters!3892 (h!22881 tokens!457)) (list!6789 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457))))))))

(declare-fun b!1588802 () Bool)

(assert (=> b!1588802 (= e!1020551 (= (size!14055 (h!22881 tokens!457)) (size!14057 (originalCharacters!3892 (h!22881 tokens!457)))))))

(assert (= (and d!472768 res!708837) b!1588801))

(assert (= (and b!1588801 res!708838) b!1588802))

(declare-fun b_lambda!49995 () Bool)

(assert (=> (not b_lambda!49995) (not b!1588801)))

(assert (=> b!1588801 t!144435))

(declare-fun b_and!111425 () Bool)

(assert (= b_and!111421 (and (=> t!144435 result!108246) b_and!111425)))

(assert (=> b!1588801 t!144437))

(declare-fun b_and!111427 () Bool)

(assert (= b_and!111423 (and (=> t!144437 result!108250) b_and!111427)))

(declare-fun m!1880399 () Bool)

(assert (=> d!472768 m!1880399))

(assert (=> b!1588801 m!1880011))

(assert (=> b!1588801 m!1880011))

(declare-fun m!1880401 () Bool)

(assert (=> b!1588801 m!1880401))

(declare-fun m!1880403 () Bool)

(assert (=> b!1588802 m!1880403))

(assert (=> b!1588498 d!472768))

(declare-fun d!472770 () Bool)

(assert (=> d!472770 (= (list!6790 (_1!9881 lt!560833)) (list!6794 (c!257385 (_1!9881 lt!560833))))))

(declare-fun bs!391602 () Bool)

(assert (= bs!391602 d!472770))

(declare-fun m!1880405 () Bool)

(assert (=> bs!391602 m!1880405))

(assert (=> b!1588497 d!472770))

(declare-fun d!472772 () Bool)

(declare-fun e!1020602 () Bool)

(assert (=> d!472772 e!1020602))

(declare-fun res!708898 () Bool)

(assert (=> d!472772 (=> (not res!708898) (not e!1020602))))

(assert (=> d!472772 (= res!708898 (= (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457)))))) (t!144429 tokens!457)))))

(declare-fun lt!561316 () Unit!27502)

(declare-fun e!1020601 () Unit!27502)

(assert (=> d!472772 (= lt!561316 e!1020601)))

(declare-fun c!257446 () Bool)

(assert (=> d!472772 (= c!257446 (or (is-Nil!17480 (t!144429 tokens!457)) (is-Nil!17480 (t!144429 (t!144429 tokens!457)))))))

(assert (=> d!472772 (not (isEmpty!10500 rules!1846))))

(assert (=> d!472772 (= (theoremInvertabilityWhenTokenListSeparable!152 thiss!17113 rules!1846 (t!144429 tokens!457)) lt!561316)))

(declare-fun b!1588895 () Bool)

(declare-fun Unit!27529 () Unit!27502)

(assert (=> b!1588895 (= e!1020601 Unit!27529)))

(declare-fun b!1588896 () Bool)

(declare-fun Unit!27530 () Unit!27502)

(assert (=> b!1588896 (= e!1020601 Unit!27530)))

(declare-fun lt!561314 () BalanceConc!11552)

(assert (=> b!1588896 (= lt!561314 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457))))))

(declare-fun lt!561312 () BalanceConc!11552)

(assert (=> b!1588896 (= lt!561312 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))))))

(declare-fun lt!561324 () tuple2!16958)

(assert (=> b!1588896 (= lt!561324 (lex!1191 thiss!17113 rules!1846 lt!561312))))

(declare-fun lt!561306 () List!17548)

(assert (=> b!1588896 (= lt!561306 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!561317 () List!17548)

(assert (=> b!1588896 (= lt!561317 (list!6789 lt!561312))))

(declare-fun lt!561311 () Unit!27502)

(assert (=> b!1588896 (= lt!561311 (lemmaConcatTwoListThenFirstIsPrefix!863 lt!561306 lt!561317))))

(assert (=> b!1588896 (isPrefix!1338 lt!561306 (++!4565 lt!561306 lt!561317))))

(declare-fun lt!561313 () Unit!27502)

(assert (=> b!1588896 (= lt!561313 lt!561311)))

(declare-fun lt!561321 () Unit!27502)

(assert (=> b!1588896 (= lt!561321 (theoremInvertabilityWhenTokenListSeparable!152 thiss!17113 rules!1846 (t!144429 (t!144429 tokens!457))))))

(declare-fun lt!561326 () Unit!27502)

(assert (=> b!1588896 (= lt!561326 (seqFromListBHdTlConstructive!155 (h!22881 (t!144429 (t!144429 tokens!457))) (t!144429 (t!144429 (t!144429 tokens!457))) (_1!9881 lt!561324)))))

(assert (=> b!1588896 (= (list!6790 (_1!9881 lt!561324)) (list!6790 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 (t!144429 tokens!457))))))))

(declare-fun lt!561307 () Unit!27502)

(assert (=> b!1588896 (= lt!561307 lt!561326)))

(declare-fun lt!561322 () Option!3151)

(assert (=> b!1588896 (= lt!561322 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 lt!561314)))))

(assert (=> b!1588896 (= (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 (t!144429 tokens!457)))) (printTailRec!760 thiss!17113 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))) 0 (BalanceConc!11553 Empty!5804)))))

(declare-fun lt!561319 () Unit!27502)

(declare-fun Unit!27531 () Unit!27502)

(assert (=> b!1588896 (= lt!561319 Unit!27531)))

(declare-fun lt!561305 () Unit!27502)

(assert (=> b!1588896 (= lt!561305 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!281 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312)))))

(assert (=> b!1588896 (= (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (originalCharacters!3892 (h!22881 (t!144429 tokens!457))))))

(declare-fun lt!561320 () Unit!27502)

(declare-fun Unit!27532 () Unit!27502)

(assert (=> b!1588896 (= lt!561320 Unit!27532)))

(assert (=> b!1588896 (= (list!6789 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))) 0))) (Cons!17478 (head!3239 (originalCharacters!3892 (h!22881 (t!144429 (t!144429 tokens!457))))) Nil!17478))))

(declare-fun lt!561325 () Unit!27502)

(declare-fun Unit!27533 () Unit!27502)

(assert (=> b!1588896 (= lt!561325 Unit!27533)))

(assert (=> b!1588896 (= (list!6789 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))) 0))) (Cons!17478 (head!3239 (list!6789 lt!561312)) Nil!17478))))

(declare-fun lt!561310 () Unit!27502)

(declare-fun Unit!27534 () Unit!27502)

(assert (=> b!1588896 (= lt!561310 Unit!27534)))

(declare-fun head!3243 (BalanceConc!11552) C!8986)

(assert (=> b!1588896 (= (list!6789 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))) 0))) (Cons!17478 (head!3243 lt!561312) Nil!17478))))

(declare-fun lt!561323 () Unit!27502)

(declare-fun Unit!27535 () Unit!27502)

(assert (=> b!1588896 (= lt!561323 Unit!27535)))

(assert (=> b!1588896 (isDefined!2526 (maxPrefix!1271 thiss!17113 rules!1846 (originalCharacters!3892 (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!561327 () Unit!27502)

(declare-fun Unit!27536 () Unit!27502)

(assert (=> b!1588896 (= lt!561327 Unit!27536)))

(assert (=> b!1588896 (isDefined!2526 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(declare-fun lt!561304 () Unit!27502)

(declare-fun Unit!27537 () Unit!27502)

(assert (=> b!1588896 (= lt!561304 Unit!27537)))

(declare-fun lt!561303 () Unit!27502)

(declare-fun Unit!27538 () Unit!27502)

(assert (=> b!1588896 (= lt!561303 Unit!27538)))

(assert (=> b!1588896 (= (_1!9880 (get!5002 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))) (h!22881 (t!144429 tokens!457)))))

(declare-fun lt!561308 () Unit!27502)

(declare-fun Unit!27539 () Unit!27502)

(assert (=> b!1588896 (= lt!561308 Unit!27539)))

(assert (=> b!1588896 (isEmpty!10507 (_2!9880 (get!5002 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))))

(declare-fun lt!561318 () Unit!27502)

(declare-fun Unit!27540 () Unit!27502)

(assert (=> b!1588896 (= lt!561318 Unit!27540)))

(assert (=> b!1588896 (matchR!1925 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))) (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!561328 () Unit!27502)

(declare-fun Unit!27541 () Unit!27502)

(assert (=> b!1588896 (= lt!561328 Unit!27541)))

(assert (=> b!1588896 (= (rule!4882 (h!22881 (t!144429 tokens!457))) (rule!4882 (h!22881 (t!144429 tokens!457))))))

(declare-fun lt!561315 () Unit!27502)

(declare-fun Unit!27542 () Unit!27502)

(assert (=> b!1588896 (= lt!561315 Unit!27542)))

(declare-fun lt!561309 () Unit!27502)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!76 (LexerInterface!2707 List!17549 Token!5722 Rule!5956 List!17548) Unit!27502)

(assert (=> b!1588896 (= lt!561309 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!76 thiss!17113 rules!1846 (h!22881 (t!144429 tokens!457)) (rule!4882 (h!22881 (t!144429 tokens!457))) (list!6789 lt!561312)))))

(declare-fun b!1588897 () Bool)

(assert (=> b!1588897 (= e!1020602 (isEmpty!10510 (_2!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457)))))))))

(assert (= (and d!472772 c!257446) b!1588895))

(assert (= (and d!472772 (not c!257446)) b!1588896))

(assert (= (and d!472772 res!708898) b!1588897))

(declare-fun m!1880593 () Bool)

(assert (=> d!472772 m!1880593))

(assert (=> d!472772 m!1879839))

(assert (=> d!472772 m!1879793))

(declare-fun m!1880595 () Bool)

(assert (=> d!472772 m!1880595))

(assert (=> d!472772 m!1879793))

(assert (=> d!472772 m!1880595))

(declare-fun m!1880597 () Bool)

(assert (=> d!472772 m!1880597))

(declare-fun m!1880599 () Bool)

(assert (=> b!1588896 m!1880599))

(declare-fun m!1880601 () Bool)

(assert (=> b!1588896 m!1880601))

(declare-fun m!1880603 () Bool)

(assert (=> b!1588896 m!1880603))

(assert (=> b!1588896 m!1879811))

(declare-fun m!1880605 () Bool)

(assert (=> b!1588896 m!1880605))

(declare-fun m!1880607 () Bool)

(assert (=> b!1588896 m!1880607))

(declare-fun m!1880609 () Bool)

(assert (=> b!1588896 m!1880609))

(declare-fun m!1880611 () Bool)

(assert (=> b!1588896 m!1880611))

(assert (=> b!1588896 m!1880605))

(declare-fun m!1880613 () Bool)

(assert (=> b!1588896 m!1880613))

(declare-fun m!1880615 () Bool)

(assert (=> b!1588896 m!1880615))

(assert (=> b!1588896 m!1880609))

(declare-fun m!1880617 () Bool)

(assert (=> b!1588896 m!1880617))

(declare-fun m!1880619 () Bool)

(assert (=> b!1588896 m!1880619))

(declare-fun m!1880621 () Bool)

(assert (=> b!1588896 m!1880621))

(assert (=> b!1588896 m!1879793))

(declare-fun m!1880623 () Bool)

(assert (=> b!1588896 m!1880623))

(declare-fun m!1880625 () Bool)

(assert (=> b!1588896 m!1880625))

(declare-fun m!1880627 () Bool)

(assert (=> b!1588896 m!1880627))

(declare-fun m!1880629 () Bool)

(assert (=> b!1588896 m!1880629))

(assert (=> b!1588896 m!1879811))

(declare-fun m!1880631 () Bool)

(assert (=> b!1588896 m!1880631))

(assert (=> b!1588896 m!1880609))

(declare-fun m!1880633 () Bool)

(assert (=> b!1588896 m!1880633))

(declare-fun m!1880635 () Bool)

(assert (=> b!1588896 m!1880635))

(declare-fun m!1880637 () Bool)

(assert (=> b!1588896 m!1880637))

(assert (=> b!1588896 m!1880619))

(declare-fun m!1880639 () Bool)

(assert (=> b!1588896 m!1880639))

(assert (=> b!1588896 m!1880599))

(assert (=> b!1588896 m!1880609))

(declare-fun m!1880641 () Bool)

(assert (=> b!1588896 m!1880641))

(assert (=> b!1588896 m!1880627))

(declare-fun m!1880643 () Bool)

(assert (=> b!1588896 m!1880643))

(declare-fun m!1880645 () Bool)

(assert (=> b!1588896 m!1880645))

(declare-fun m!1880647 () Bool)

(assert (=> b!1588896 m!1880647))

(assert (=> b!1588896 m!1879793))

(assert (=> b!1588896 m!1880595))

(declare-fun m!1880649 () Bool)

(assert (=> b!1588896 m!1880649))

(declare-fun m!1880651 () Bool)

(assert (=> b!1588896 m!1880651))

(assert (=> b!1588896 m!1880633))

(assert (=> b!1588896 m!1880601))

(declare-fun m!1880653 () Bool)

(assert (=> b!1588896 m!1880653))

(assert (=> b!1588896 m!1880635))

(declare-fun m!1880655 () Bool)

(assert (=> b!1588896 m!1880655))

(declare-fun m!1880657 () Bool)

(assert (=> b!1588896 m!1880657))

(assert (=> b!1588896 m!1880601))

(declare-fun m!1880659 () Bool)

(assert (=> b!1588896 m!1880659))

(assert (=> b!1588896 m!1880627))

(assert (=> b!1588896 m!1879759))

(assert (=> b!1588896 m!1880599))

(assert (=> b!1588896 m!1879759))

(assert (=> b!1588896 m!1880639))

(declare-fun m!1880661 () Bool)

(assert (=> b!1588896 m!1880661))

(assert (=> b!1588896 m!1880607))

(declare-fun m!1880663 () Bool)

(assert (=> b!1588896 m!1880663))

(assert (=> b!1588896 m!1880621))

(assert (=> b!1588896 m!1880645))

(assert (=> b!1588896 m!1880599))

(declare-fun m!1880665 () Bool)

(assert (=> b!1588896 m!1880665))

(assert (=> b!1588897 m!1879793))

(assert (=> b!1588897 m!1879793))

(assert (=> b!1588897 m!1880595))

(assert (=> b!1588897 m!1880595))

(assert (=> b!1588897 m!1880597))

(declare-fun m!1880667 () Bool)

(assert (=> b!1588897 m!1880667))

(assert (=> b!1588497 d!472772))

(declare-fun b!1588909 () Bool)

(declare-fun e!1020610 () Bool)

(assert (=> b!1588909 (= e!1020610 (>= (size!14057 lt!560832) (size!14057 lt!560815)))))

(declare-fun d!472808 () Bool)

(assert (=> d!472808 e!1020610))

(declare-fun res!708910 () Bool)

(assert (=> d!472808 (=> res!708910 e!1020610)))

(declare-fun lt!561331 () Bool)

(assert (=> d!472808 (= res!708910 (not lt!561331))))

(declare-fun e!1020609 () Bool)

(assert (=> d!472808 (= lt!561331 e!1020609)))

(declare-fun res!708909 () Bool)

(assert (=> d!472808 (=> res!708909 e!1020609)))

(assert (=> d!472808 (= res!708909 (is-Nil!17478 lt!560815))))

(assert (=> d!472808 (= (isPrefix!1338 lt!560815 lt!560832) lt!561331)))

(declare-fun b!1588906 () Bool)

(declare-fun e!1020611 () Bool)

(assert (=> b!1588906 (= e!1020609 e!1020611)))

(declare-fun res!708908 () Bool)

(assert (=> b!1588906 (=> (not res!708908) (not e!1020611))))

(assert (=> b!1588906 (= res!708908 (not (is-Nil!17478 lt!560832)))))

(declare-fun b!1588908 () Bool)

(assert (=> b!1588908 (= e!1020611 (isPrefix!1338 (tail!2285 lt!560815) (tail!2285 lt!560832)))))

(declare-fun b!1588907 () Bool)

(declare-fun res!708907 () Bool)

(assert (=> b!1588907 (=> (not res!708907) (not e!1020611))))

(assert (=> b!1588907 (= res!708907 (= (head!3239 lt!560815) (head!3239 lt!560832)))))

(assert (= (and d!472808 (not res!708909)) b!1588906))

(assert (= (and b!1588906 res!708908) b!1588907))

(assert (= (and b!1588907 res!708907) b!1588908))

(assert (= (and d!472808 (not res!708910)) b!1588909))

(declare-fun m!1880669 () Bool)

(assert (=> b!1588909 m!1880669))

(assert (=> b!1588909 m!1879967))

(declare-fun m!1880671 () Bool)

(assert (=> b!1588908 m!1880671))

(declare-fun m!1880673 () Bool)

(assert (=> b!1588908 m!1880673))

(assert (=> b!1588908 m!1880671))

(assert (=> b!1588908 m!1880673))

(declare-fun m!1880675 () Bool)

(assert (=> b!1588908 m!1880675))

(declare-fun m!1880677 () Bool)

(assert (=> b!1588907 m!1880677))

(declare-fun m!1880679 () Bool)

(assert (=> b!1588907 m!1880679))

(assert (=> b!1588497 d!472808))

(declare-fun d!472810 () Bool)

(assert (=> d!472810 (isPrefix!1338 lt!560815 (++!4565 lt!560815 lt!560831))))

(declare-fun lt!561334 () Unit!27502)

(declare-fun choose!9515 (List!17548 List!17548) Unit!27502)

(assert (=> d!472810 (= lt!561334 (choose!9515 lt!560815 lt!560831))))

(assert (=> d!472810 (= (lemmaConcatTwoListThenFirstIsPrefix!863 lt!560815 lt!560831) lt!561334)))

(declare-fun bs!391608 () Bool)

(assert (= bs!391608 d!472810))

(assert (=> bs!391608 m!1879785))

(assert (=> bs!391608 m!1879785))

(declare-fun m!1880681 () Bool)

(assert (=> bs!391608 m!1880681))

(declare-fun m!1880683 () Bool)

(assert (=> bs!391608 m!1880683))

(assert (=> b!1588497 d!472810))

(declare-fun d!472812 () Bool)

(assert (=> d!472812 (= (inv!22884 (tag!3348 (h!22880 rules!1846))) (= (mod (str.len (value!97396 (tag!3348 (h!22880 rules!1846)))) 2) 0))))

(assert (=> b!1588486 d!472812))

(declare-fun d!472814 () Bool)

(declare-fun res!708911 () Bool)

(declare-fun e!1020612 () Bool)

(assert (=> d!472814 (=> (not res!708911) (not e!1020612))))

(assert (=> d!472814 (= res!708911 (semiInverseModEq!1165 (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toValue!4489 (transformation!3078 (h!22880 rules!1846)))))))

(assert (=> d!472814 (= (inv!22887 (transformation!3078 (h!22880 rules!1846))) e!1020612)))

(declare-fun b!1588910 () Bool)

(assert (=> b!1588910 (= e!1020612 (equivClasses!1106 (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toValue!4489 (transformation!3078 (h!22880 rules!1846)))))))

(assert (= (and d!472814 res!708911) b!1588910))

(declare-fun m!1880685 () Bool)

(assert (=> d!472814 m!1880685))

(declare-fun m!1880687 () Bool)

(assert (=> b!1588910 m!1880687))

(assert (=> b!1588486 d!472814))

(declare-fun d!472816 () Bool)

(declare-fun e!1020615 () Bool)

(assert (=> d!472816 e!1020615))

(declare-fun res!708914 () Bool)

(assert (=> d!472816 (=> (not res!708914) (not e!1020615))))

(declare-fun lt!561337 () BalanceConc!11552)

(assert (=> d!472816 (= res!708914 (= (list!6789 lt!561337) (Cons!17478 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0) Nil!17478)))))

(declare-fun singleton!601 (C!8986) BalanceConc!11552)

(assert (=> d!472816 (= lt!561337 (singleton!601 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0)))))

(assert (=> d!472816 (= (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0)) lt!561337)))

(declare-fun b!1588913 () Bool)

(declare-fun isBalanced!1721 (Conc!5804) Bool)

(assert (=> b!1588913 (= e!1020615 (isBalanced!1721 (c!257383 lt!561337)))))

(assert (= (and d!472816 res!708914) b!1588913))

(declare-fun m!1880689 () Bool)

(assert (=> d!472816 m!1880689))

(assert (=> d!472816 m!1879753))

(declare-fun m!1880691 () Bool)

(assert (=> d!472816 m!1880691))

(declare-fun m!1880693 () Bool)

(assert (=> b!1588913 m!1880693))

(assert (=> b!1588485 d!472816))

(declare-fun d!472818 () Bool)

(declare-fun e!1020618 () Bool)

(assert (=> d!472818 e!1020618))

(declare-fun res!708926 () Bool)

(assert (=> d!472818 (=> (not res!708926) (not e!1020618))))

(declare-fun appendAssocInst!396 (Conc!5804 Conc!5804) Bool)

(assert (=> d!472818 (= res!708926 (appendAssocInst!396 (c!257383 lt!560830) (c!257383 lt!560818)))))

(declare-fun lt!561340 () BalanceConc!11552)

(declare-fun ++!4569 (Conc!5804 Conc!5804) Conc!5804)

(assert (=> d!472818 (= lt!561340 (BalanceConc!11553 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))))))

(assert (=> d!472818 (= (++!4566 lt!560830 lt!560818) lt!561340)))

(declare-fun b!1588923 () Bool)

(declare-fun res!708925 () Bool)

(assert (=> b!1588923 (=> (not res!708925) (not e!1020618))))

(declare-fun height!862 (Conc!5804) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1588923 (= res!708925 (<= (height!862 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))) (+ (max!0 (height!862 (c!257383 lt!560830)) (height!862 (c!257383 lt!560818))) 1)))))

(declare-fun b!1588922 () Bool)

(declare-fun res!708924 () Bool)

(assert (=> b!1588922 (=> (not res!708924) (not e!1020618))))

(assert (=> b!1588922 (= res!708924 (isBalanced!1721 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))))))

(declare-fun b!1588924 () Bool)

(declare-fun res!708923 () Bool)

(assert (=> b!1588924 (=> (not res!708923) (not e!1020618))))

(assert (=> b!1588924 (= res!708923 (>= (height!862 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))) (max!0 (height!862 (c!257383 lt!560830)) (height!862 (c!257383 lt!560818)))))))

(declare-fun b!1588925 () Bool)

(assert (=> b!1588925 (= e!1020618 (= (list!6789 lt!561340) (++!4565 (list!6789 lt!560830) (list!6789 lt!560818))))))

(assert (= (and d!472818 res!708926) b!1588922))

(assert (= (and b!1588922 res!708924) b!1588923))

(assert (= (and b!1588923 res!708925) b!1588924))

(assert (= (and b!1588924 res!708923) b!1588925))

(declare-fun m!1880695 () Bool)

(assert (=> b!1588925 m!1880695))

(assert (=> b!1588925 m!1879787))

(assert (=> b!1588925 m!1879801))

(assert (=> b!1588925 m!1879787))

(assert (=> b!1588925 m!1879801))

(declare-fun m!1880697 () Bool)

(assert (=> b!1588925 m!1880697))

(declare-fun m!1880699 () Bool)

(assert (=> d!472818 m!1880699))

(declare-fun m!1880701 () Bool)

(assert (=> d!472818 m!1880701))

(declare-fun m!1880703 () Bool)

(assert (=> b!1588924 m!1880703))

(declare-fun m!1880705 () Bool)

(assert (=> b!1588924 m!1880705))

(assert (=> b!1588924 m!1880703))

(assert (=> b!1588924 m!1880705))

(declare-fun m!1880707 () Bool)

(assert (=> b!1588924 m!1880707))

(assert (=> b!1588924 m!1880701))

(assert (=> b!1588924 m!1880701))

(declare-fun m!1880709 () Bool)

(assert (=> b!1588924 m!1880709))

(assert (=> b!1588922 m!1880701))

(assert (=> b!1588922 m!1880701))

(declare-fun m!1880711 () Bool)

(assert (=> b!1588922 m!1880711))

(assert (=> b!1588923 m!1880703))

(assert (=> b!1588923 m!1880705))

(assert (=> b!1588923 m!1880703))

(assert (=> b!1588923 m!1880705))

(assert (=> b!1588923 m!1880707))

(assert (=> b!1588923 m!1880701))

(assert (=> b!1588923 m!1880701))

(assert (=> b!1588923 m!1880709))

(assert (=> b!1588485 d!472818))

(declare-fun lt!561371 () Bool)

(declare-fun d!472820 () Bool)

(assert (=> d!472820 (= lt!561371 (prefixMatch!341 lt!560821 (list!6789 (++!4566 lt!560830 lt!560818))))))

(declare-datatypes ((List!17557 0))(
  ( (Nil!17487) (Cons!17487 (h!22888 Regex!4406) (t!144478 List!17557)) )
))
(declare-datatypes ((Context!1664 0))(
  ( (Context!1665 (exprs!1332 List!17557)) )
))
(declare-fun prefixMatchZipperSequence!434 ((Set Context!1664) BalanceConc!11552 Int) Bool)

(declare-fun focus!138 (Regex!4406) (Set Context!1664))

(assert (=> d!472820 (= lt!561371 (prefixMatchZipperSequence!434 (focus!138 lt!560821) (++!4566 lt!560830 lt!560818) 0))))

(declare-fun lt!561373 () Unit!27502)

(declare-fun lt!561370 () Unit!27502)

(assert (=> d!472820 (= lt!561373 lt!561370)))

(declare-fun lt!561375 () List!17548)

(declare-fun lt!561374 () (Set Context!1664))

(declare-fun prefixMatchZipper!117 ((Set Context!1664) List!17548) Bool)

(assert (=> d!472820 (= (prefixMatch!341 lt!560821 lt!561375) (prefixMatchZipper!117 lt!561374 lt!561375))))

(declare-datatypes ((List!17559 0))(
  ( (Nil!17489) (Cons!17489 (h!22890 Context!1664) (t!144480 List!17559)) )
))
(declare-fun lt!561369 () List!17559)

(declare-fun prefixMatchZipperRegexEquiv!117 ((Set Context!1664) List!17559 Regex!4406 List!17548) Unit!27502)

(assert (=> d!472820 (= lt!561370 (prefixMatchZipperRegexEquiv!117 lt!561374 lt!561369 lt!560821 lt!561375))))

(assert (=> d!472820 (= lt!561375 (list!6789 (++!4566 lt!560830 lt!560818)))))

(declare-fun toList!878 ((Set Context!1664)) List!17559)

(assert (=> d!472820 (= lt!561369 (toList!878 (focus!138 lt!560821)))))

(assert (=> d!472820 (= lt!561374 (focus!138 lt!560821))))

(declare-fun lt!561376 () Unit!27502)

(declare-fun lt!561368 () Unit!27502)

(assert (=> d!472820 (= lt!561376 lt!561368)))

(declare-fun lt!561377 () (Set Context!1664))

(declare-fun lt!561372 () Int)

(declare-fun dropList!539 (BalanceConc!11552 Int) List!17548)

(assert (=> d!472820 (= (prefixMatchZipper!117 lt!561377 (dropList!539 (++!4566 lt!560830 lt!560818) lt!561372)) (prefixMatchZipperSequence!434 lt!561377 (++!4566 lt!560830 lt!560818) lt!561372))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!117 ((Set Context!1664) BalanceConc!11552 Int) Unit!27502)

(assert (=> d!472820 (= lt!561368 (lemmaprefixMatchZipperSequenceEquivalent!117 lt!561377 (++!4566 lt!560830 lt!560818) lt!561372))))

(assert (=> d!472820 (= lt!561372 0)))

(assert (=> d!472820 (= lt!561377 (focus!138 lt!560821))))

(declare-fun validRegex!1743 (Regex!4406) Bool)

(assert (=> d!472820 (validRegex!1743 lt!560821)))

(assert (=> d!472820 (= (prefixMatchZipperSequence!432 lt!560821 (++!4566 lt!560830 lt!560818)) lt!561371)))

(declare-fun bs!391611 () Bool)

(assert (= bs!391611 d!472820))

(declare-fun m!1880739 () Bool)

(assert (=> bs!391611 m!1880739))

(declare-fun m!1880741 () Bool)

(assert (=> bs!391611 m!1880741))

(declare-fun m!1880743 () Bool)

(assert (=> bs!391611 m!1880743))

(declare-fun m!1880745 () Bool)

(assert (=> bs!391611 m!1880745))

(assert (=> bs!391611 m!1879751))

(assert (=> bs!391611 m!1880743))

(declare-fun m!1880747 () Bool)

(assert (=> bs!391611 m!1880747))

(assert (=> bs!391611 m!1879751))

(declare-fun m!1880749 () Bool)

(assert (=> bs!391611 m!1880749))

(assert (=> bs!391611 m!1879751))

(declare-fun m!1880751 () Bool)

(assert (=> bs!391611 m!1880751))

(declare-fun m!1880753 () Bool)

(assert (=> bs!391611 m!1880753))

(assert (=> bs!391611 m!1880739))

(assert (=> bs!391611 m!1880739))

(assert (=> bs!391611 m!1879751))

(declare-fun m!1880755 () Bool)

(assert (=> bs!391611 m!1880755))

(declare-fun m!1880757 () Bool)

(assert (=> bs!391611 m!1880757))

(assert (=> bs!391611 m!1880749))

(declare-fun m!1880759 () Bool)

(assert (=> bs!391611 m!1880759))

(assert (=> bs!391611 m!1879751))

(declare-fun m!1880761 () Bool)

(assert (=> bs!391611 m!1880761))

(declare-fun m!1880763 () Bool)

(assert (=> bs!391611 m!1880763))

(assert (=> b!1588485 d!472820))

(declare-fun d!472828 () Bool)

(declare-fun lt!561383 () C!8986)

(declare-fun apply!4309 (List!17548 Int) C!8986)

(assert (=> d!472828 (= lt!561383 (apply!4309 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) 0))))

(declare-fun apply!4310 (Conc!5804 Int) C!8986)

(assert (=> d!472828 (= lt!561383 (apply!4310 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) 0))))

(declare-fun e!1020633 () Bool)

(assert (=> d!472828 e!1020633))

(declare-fun res!708944 () Bool)

(assert (=> d!472828 (=> (not res!708944) (not e!1020633))))

(assert (=> d!472828 (= res!708944 (<= 0 0))))

(assert (=> d!472828 (= (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0) lt!561383)))

(declare-fun b!1588949 () Bool)

(assert (=> b!1588949 (= e!1020633 (< 0 (size!14058 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(assert (= (and d!472828 res!708944) b!1588949))

(assert (=> d!472828 m!1879759))

(assert (=> d!472828 m!1880599))

(assert (=> d!472828 m!1880599))

(declare-fun m!1880777 () Bool)

(assert (=> d!472828 m!1880777))

(declare-fun m!1880779 () Bool)

(assert (=> d!472828 m!1880779))

(assert (=> b!1588949 m!1879759))

(assert (=> b!1588949 m!1880059))

(assert (=> b!1588485 d!472828))

(declare-fun d!472832 () Bool)

(declare-fun lt!561389 () Unit!27502)

(declare-fun lemma!204 (List!17549 LexerInterface!2707 List!17549) Unit!27502)

(assert (=> d!472832 (= lt!561389 (lemma!204 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!66640 () Int)

(declare-fun generalisedUnion!212 (List!17557) Regex!4406)

(declare-fun map!3623 (List!17549 Int) List!17557)

(assert (=> d!472832 (= (rulesRegex!468 thiss!17113 rules!1846) (generalisedUnion!212 (map!3623 rules!1846 lambda!66640)))))

(declare-fun bs!391617 () Bool)

(assert (= bs!391617 d!472832))

(declare-fun m!1880819 () Bool)

(assert (=> bs!391617 m!1880819))

(declare-fun m!1880821 () Bool)

(assert (=> bs!391617 m!1880821))

(assert (=> bs!391617 m!1880821))

(declare-fun m!1880823 () Bool)

(assert (=> bs!391617 m!1880823))

(assert (=> b!1588485 d!472832))

(declare-fun d!472848 () Bool)

(declare-fun lt!561390 () BalanceConc!11552)

(assert (=> d!472848 (= (list!6789 lt!561390) (originalCharacters!3892 (h!22881 (t!144429 tokens!457))))))

(assert (=> d!472848 (= lt!561390 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457)))))))

(assert (=> d!472848 (= (charsOf!1727 (h!22881 (t!144429 tokens!457))) lt!561390)))

(declare-fun b_lambda!50001 () Bool)

(assert (=> (not b_lambda!50001) (not d!472848)))

(declare-fun t!144457 () Bool)

(declare-fun tb!89411 () Bool)

(assert (=> (and b!1588488 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))) t!144457) tb!89411))

(declare-fun b!1588956 () Bool)

(declare-fun e!1020638 () Bool)

(declare-fun tp!466942 () Bool)

(assert (=> b!1588956 (= e!1020638 (and (inv!22891 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457)))))) tp!466942))))

(declare-fun result!108262 () Bool)

(assert (=> tb!89411 (= result!108262 (and (inv!22892 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457))))) e!1020638))))

(assert (= tb!89411 b!1588956))

(declare-fun m!1880825 () Bool)

(assert (=> b!1588956 m!1880825))

(declare-fun m!1880827 () Bool)

(assert (=> tb!89411 m!1880827))

(assert (=> d!472848 t!144457))

(declare-fun b_and!111437 () Bool)

(assert (= b_and!111425 (and (=> t!144457 result!108262) b_and!111437)))

(declare-fun t!144459 () Bool)

(declare-fun tb!89413 () Bool)

(assert (=> (and b!1588496 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))) t!144459) tb!89413))

(declare-fun result!108264 () Bool)

(assert (= result!108264 result!108262))

(assert (=> d!472848 t!144459))

(declare-fun b_and!111439 () Bool)

(assert (= b_and!111427 (and (=> t!144459 result!108264) b_and!111439)))

(declare-fun m!1880829 () Bool)

(assert (=> d!472848 m!1880829))

(declare-fun m!1880831 () Bool)

(assert (=> d!472848 m!1880831))

(assert (=> b!1588485 d!472848))

(declare-fun b!1588974 () Bool)

(declare-fun b_free!43007 () Bool)

(declare-fun b_next!43711 () Bool)

(assert (=> b!1588974 (= b_free!43007 (not b_next!43711))))

(declare-fun tp!466953 () Bool)

(declare-fun b_and!111445 () Bool)

(assert (=> b!1588974 (= tp!466953 b_and!111445)))

(declare-fun b_free!43009 () Bool)

(declare-fun b_next!43713 () Bool)

(assert (=> b!1588974 (= b_free!43009 (not b_next!43713))))

(declare-fun tb!89415 () Bool)

(declare-fun t!144461 () Bool)

(assert (=> (and b!1588974 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457))))) t!144461) tb!89415))

(declare-fun result!108268 () Bool)

(assert (= result!108268 result!108246))

(assert (=> d!472688 t!144461))

(assert (=> b!1588801 t!144461))

(declare-fun tb!89417 () Bool)

(declare-fun t!144463 () Bool)

(assert (=> (and b!1588974 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))) t!144463) tb!89417))

(declare-fun result!108270 () Bool)

(assert (= result!108270 result!108262))

(assert (=> d!472848 t!144463))

(declare-fun tp!466951 () Bool)

(declare-fun b_and!111447 () Bool)

(assert (=> b!1588974 (= tp!466951 (and (=> t!144461 result!108268) (=> t!144463 result!108270) b_and!111447))))

(declare-fun e!1020654 () Bool)

(assert (=> b!1588974 (= e!1020654 (and tp!466953 tp!466951))))

(declare-fun b!1588973 () Bool)

(declare-fun e!1020653 () Bool)

(declare-fun tp!466954 () Bool)

(assert (=> b!1588973 (= e!1020653 (and tp!466954 (inv!22884 (tag!3348 (h!22880 (t!144428 rules!1846)))) (inv!22887 (transformation!3078 (h!22880 (t!144428 rules!1846)))) e!1020654))))

(declare-fun b!1588972 () Bool)

(declare-fun e!1020652 () Bool)

(declare-fun tp!466952 () Bool)

(assert (=> b!1588972 (= e!1020652 (and e!1020653 tp!466952))))

(assert (=> b!1588495 (= tp!466904 e!1020652)))

(assert (= b!1588973 b!1588974))

(assert (= b!1588972 b!1588973))

(assert (= (and b!1588495 (is-Cons!17479 (t!144428 rules!1846))) b!1588972))

(declare-fun m!1880843 () Bool)

(assert (=> b!1588973 m!1880843))

(declare-fun m!1880845 () Bool)

(assert (=> b!1588973 m!1880845))

(declare-fun b!1588988 () Bool)

(declare-fun b_free!43011 () Bool)

(declare-fun b_next!43715 () Bool)

(assert (=> b!1588988 (= b_free!43011 (not b_next!43715))))

(declare-fun tp!466966 () Bool)

(declare-fun b_and!111449 () Bool)

(assert (=> b!1588988 (= tp!466966 b_and!111449)))

(declare-fun b_free!43013 () Bool)

(declare-fun b_next!43717 () Bool)

(assert (=> b!1588988 (= b_free!43013 (not b_next!43717))))

(declare-fun t!144465 () Bool)

(declare-fun tb!89419 () Bool)

(assert (=> (and b!1588988 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457))))) t!144465) tb!89419))

(declare-fun result!108274 () Bool)

(assert (= result!108274 result!108246))

(assert (=> d!472688 t!144465))

(assert (=> b!1588801 t!144465))

(declare-fun t!144467 () Bool)

(declare-fun tb!89421 () Bool)

(assert (=> (and b!1588988 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))) t!144467) tb!89421))

(declare-fun result!108276 () Bool)

(assert (= result!108276 result!108262))

(assert (=> d!472848 t!144467))

(declare-fun tp!466968 () Bool)

(declare-fun b_and!111451 () Bool)

(assert (=> b!1588988 (= tp!466968 (and (=> t!144465 result!108274) (=> t!144467 result!108276) b_and!111451))))

(declare-fun e!1020669 () Bool)

(assert (=> b!1588988 (= e!1020669 (and tp!466966 tp!466968))))

(declare-fun e!1020668 () Bool)

(declare-fun tp!466969 () Bool)

(declare-fun e!1020667 () Bool)

(declare-fun b!1588985 () Bool)

(assert (=> b!1588985 (= e!1020668 (and (inv!22888 (h!22881 (t!144429 tokens!457))) e!1020667 tp!466969))))

(assert (=> b!1588498 (= tp!466899 e!1020668)))

(declare-fun tp!466967 () Bool)

(declare-fun e!1020670 () Bool)

(declare-fun b!1588986 () Bool)

(assert (=> b!1588986 (= e!1020667 (and (inv!21 (value!97397 (h!22881 (t!144429 tokens!457)))) e!1020670 tp!466967))))

(declare-fun tp!466965 () Bool)

(declare-fun b!1588987 () Bool)

(assert (=> b!1588987 (= e!1020670 (and tp!466965 (inv!22884 (tag!3348 (rule!4882 (h!22881 (t!144429 tokens!457))))) (inv!22887 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) e!1020669))))

(assert (= b!1588987 b!1588988))

(assert (= b!1588986 b!1588987))

(assert (= b!1588985 b!1588986))

(assert (= (and b!1588498 (is-Cons!17480 (t!144429 tokens!457))) b!1588985))

(declare-fun m!1880847 () Bool)

(assert (=> b!1588985 m!1880847))

(declare-fun m!1880849 () Bool)

(assert (=> b!1588986 m!1880849))

(declare-fun m!1880851 () Bool)

(assert (=> b!1588987 m!1880851))

(declare-fun m!1880853 () Bool)

(assert (=> b!1588987 m!1880853))

(declare-fun b!1589001 () Bool)

(declare-fun e!1020677 () Bool)

(declare-fun tp_is_empty!7211 () Bool)

(assert (=> b!1589001 (= e!1020677 tp_is_empty!7211)))

(assert (=> b!1588492 (= tp!466906 e!1020677)))

(declare-fun b!1589004 () Bool)

(declare-fun tp!466984 () Bool)

(declare-fun tp!466981 () Bool)

(assert (=> b!1589004 (= e!1020677 (and tp!466984 tp!466981))))

(declare-fun b!1589003 () Bool)

(declare-fun tp!466983 () Bool)

(assert (=> b!1589003 (= e!1020677 tp!466983)))

(declare-fun b!1589002 () Bool)

(declare-fun tp!466982 () Bool)

(declare-fun tp!466980 () Bool)

(assert (=> b!1589002 (= e!1020677 (and tp!466982 tp!466980))))

(assert (= (and b!1588492 (is-ElementMatch!4406 (regex!3078 (rule!4882 (h!22881 tokens!457))))) b!1589001))

(assert (= (and b!1588492 (is-Concat!7575 (regex!3078 (rule!4882 (h!22881 tokens!457))))) b!1589002))

(assert (= (and b!1588492 (is-Star!4406 (regex!3078 (rule!4882 (h!22881 tokens!457))))) b!1589003))

(assert (= (and b!1588492 (is-Union!4406 (regex!3078 (rule!4882 (h!22881 tokens!457))))) b!1589004))

(declare-fun b!1589006 () Bool)

(declare-fun e!1020679 () Bool)

(assert (=> b!1589006 (= e!1020679 tp_is_empty!7211)))

(assert (=> b!1588486 (= tp!466903 e!1020679)))

(declare-fun b!1589009 () Bool)

(declare-fun tp!466989 () Bool)

(declare-fun tp!466986 () Bool)

(assert (=> b!1589009 (= e!1020679 (and tp!466989 tp!466986))))

(declare-fun b!1589008 () Bool)

(declare-fun tp!466988 () Bool)

(assert (=> b!1589008 (= e!1020679 tp!466988)))

(declare-fun b!1589007 () Bool)

(declare-fun tp!466987 () Bool)

(declare-fun tp!466985 () Bool)

(assert (=> b!1589007 (= e!1020679 (and tp!466987 tp!466985))))

(assert (= (and b!1588486 (is-ElementMatch!4406 (regex!3078 (h!22880 rules!1846)))) b!1589006))

(assert (= (and b!1588486 (is-Concat!7575 (regex!3078 (h!22880 rules!1846)))) b!1589007))

(assert (= (and b!1588486 (is-Star!4406 (regex!3078 (h!22880 rules!1846)))) b!1589008))

(assert (= (and b!1588486 (is-Union!4406 (regex!3078 (h!22880 rules!1846)))) b!1589009))

(declare-fun b!1589014 () Bool)

(declare-fun e!1020682 () Bool)

(declare-fun tp!466992 () Bool)

(assert (=> b!1589014 (= e!1020682 (and tp_is_empty!7211 tp!466992))))

(assert (=> b!1588501 (= tp!466902 e!1020682)))

(assert (= (and b!1588501 (is-Cons!17478 (originalCharacters!3892 (h!22881 tokens!457)))) b!1589014))

(declare-fun b_lambda!50005 () Bool)

(assert (= b_lambda!50001 (or (and b!1588488 b_free!42993 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))) (and b!1588496 b_free!42997 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))) (and b!1588974 b_free!43009 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))) (and b!1588988 b_free!43013) b_lambda!50005)))

(declare-fun b_lambda!50007 () Bool)

(assert (= b_lambda!49993 (or (and b!1588488 b_free!42993 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))))) (and b!1588496 b_free!42997) (and b!1588974 b_free!43009 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))))) (and b!1588988 b_free!43013 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))))) b_lambda!50007)))

(declare-fun b_lambda!50009 () Bool)

(assert (= b_lambda!49995 (or (and b!1588488 b_free!42993 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))))) (and b!1588496 b_free!42997) (and b!1588974 b_free!43009 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))))) (and b!1588988 b_free!43013 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))))) b_lambda!50009)))

(push 1)

(assert b_and!111409)

(assert (not b!1588922))

(assert (not b!1588907))

(assert b_and!111449)

(assert (not b!1588794))

(assert (not b!1588605))

(assert (not d!472720))

(assert (not d!472726))

(assert (not b!1588949))

(assert (not b!1588766))

(assert (not b!1588758))

(assert (not b!1588956))

(assert (not b!1588923))

(assert (not d!472690))

(assert (not d!472848))

(assert (not d!472770))

(assert (not d!472734))

(assert (not d!472828))

(assert (not b!1588924))

(assert (not b!1588623))

(assert (not d!472772))

(assert (not b!1588728))

(assert (not b!1588986))

(assert (not b!1588597))

(assert (not tb!89399))

(assert (not d!472756))

(assert (not d!472730))

(assert (not d!472708))

(assert (not d!472700))

(assert tp_is_empty!7211)

(assert (not b!1588581))

(assert (not b_next!43713))

(assert (not b!1588655))

(assert (not b!1588635))

(assert (not b_next!43701))

(assert (not b_next!43717))

(assert (not d!472672))

(assert (not b!1588756))

(assert (not b_next!43711))

(assert (not b!1589007))

(assert (not b_lambda!50007))

(assert (not b!1588638))

(assert (not b!1588608))

(assert (not d!472754))

(assert (not b!1588730))

(assert (not b_next!43699))

(assert (not b!1588987))

(assert (not b!1589008))

(assert b_and!111439)

(assert (not b!1589004))

(assert (not b!1588661))

(assert (not b!1588580))

(assert (not b!1588656))

(assert (not b!1588600))

(assert (not b!1588708))

(assert (not b!1588665))

(assert (not b!1588735))

(assert (not d!472694))

(assert (not b!1588650))

(assert (not b!1588909))

(assert (not b_lambda!50009))

(assert (not d!472820))

(assert b_and!111405)

(assert (not b_next!43695))

(assert (not d!472728))

(assert (not d!472814))

(assert (not b!1588611))

(assert b_and!111451)

(assert (not b!1588985))

(assert (not b!1588707))

(assert (not b!1588755))

(assert (not d!472752))

(assert (not b!1588925))

(assert (not b!1588624))

(assert (not b!1588913))

(assert (not d!472692))

(assert (not d!472706))

(assert (not b!1588801))

(assert (not d!472678))

(assert (not b!1589003))

(assert (not d!472696))

(assert (not d!472712))

(assert (not d!472722))

(assert (not b!1588759))

(assert (not d!472816))

(assert (not d!472810))

(assert (not d!472688))

(assert (not b!1588972))

(assert (not b!1588664))

(assert (not b!1589002))

(assert (not b!1588910))

(assert (not d!472698))

(assert (not b!1588896))

(assert (not b!1588795))

(assert (not d!472748))

(assert (not b!1588614))

(assert (not b!1589009))

(assert (not d!472832))

(assert (not b!1588973))

(assert (not b!1588757))

(assert b_and!111437)

(assert (not d!472674))

(assert (not b!1588802))

(assert (not b_next!43697))

(assert (not d!472818))

(assert (not b!1588599))

(assert (not b_lambda!50005))

(assert (not b!1588760))

(assert (not d!472680))

(assert (not d!472724))

(assert (not b!1588654))

(assert (not d!472732))

(assert (not d!472746))

(assert (not b_next!43715))

(assert (not b!1588653))

(assert (not b!1588761))

(assert b_and!111447)

(assert (not d!472744))

(assert (not b!1588796))

(assert (not d!472768))

(assert (not b!1588908))

(assert (not b!1588717))

(assert (not b!1588648))

(assert (not d!472676))

(assert (not d!472718))

(assert (not d!472702))

(assert (not b!1588897))

(assert (not d!472686))

(assert (not tb!89411))

(assert (not bm!102950))

(assert (not b!1588649))

(assert (not d!472704))

(assert (not b!1588636))

(assert b_and!111445)

(assert (not b!1588598))

(assert (not b!1588763))

(assert (not b!1589014))

(assert (not b!1588662))

(check-sat)

(pop 1)

(push 1)

(assert b_and!111449)

(assert (not b_next!43713))

(assert b_and!111409)

(assert (not b_next!43699))

(assert b_and!111439)

(assert b_and!111451)

(assert b_and!111445)

(assert (not b_next!43701))

(assert (not b_next!43717))

(assert (not b_next!43711))

(assert b_and!111405)

(assert (not b_next!43695))

(assert b_and!111437)

(assert (not b_next!43697))

(assert (not b_next!43715))

(assert b_and!111447)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!472874 () Bool)

(declare-fun lt!561451 () Int)

(declare-fun size!14063 (List!17550) Int)

(assert (=> d!472874 (= lt!561451 (size!14063 (list!6790 (_1!9881 lt!561001))))))

(declare-fun size!14064 (Conc!5805) Int)

(assert (=> d!472874 (= lt!561451 (size!14064 (c!257385 (_1!9881 lt!561001))))))

(assert (=> d!472874 (= (size!14059 (_1!9881 lt!561001)) lt!561451)))

(declare-fun bs!391624 () Bool)

(assert (= bs!391624 d!472874))

(assert (=> bs!391624 m!1880135))

(assert (=> bs!391624 m!1880135))

(declare-fun m!1880961 () Bool)

(assert (=> bs!391624 m!1880961))

(declare-fun m!1880963 () Bool)

(assert (=> bs!391624 m!1880963))

(assert (=> d!472724 d!472874))

(declare-fun b!1589099 () Bool)

(declare-datatypes ((tuple2!16968 0))(
  ( (tuple2!16969 (_1!9886 Token!5722) (_2!9886 BalanceConc!11552)) )
))
(declare-datatypes ((Option!3155 0))(
  ( (None!3154) (Some!3154 (v!24056 tuple2!16968)) )
))
(declare-fun lt!561547 () Option!3155)

(declare-fun lt!561522 () tuple2!16958)

(declare-fun lexRec!356 (LexerInterface!2707 List!17549 BalanceConc!11552) tuple2!16958)

(assert (=> b!1589099 (= lt!561522 (lexRec!356 thiss!17113 rules!1846 (_2!9886 (v!24056 lt!561547))))))

(declare-fun e!1020742 () tuple2!16958)

(assert (=> b!1589099 (= e!1020742 (tuple2!16959 (prepend!570 (_1!9881 lt!561522) (_1!9886 (v!24056 lt!561547))) (_2!9881 lt!561522)))))

(declare-fun b!1589100 () Bool)

(declare-fun e!1020739 () tuple2!16958)

(declare-fun lt!561529 () BalanceConc!11552)

(assert (=> b!1589100 (= e!1020739 (tuple2!16959 (BalanceConc!11555 Empty!5805) lt!561529))))

(declare-fun lt!561539 () BalanceConc!11552)

(declare-fun lt!561535 () Option!3155)

(declare-fun e!1020741 () tuple2!16958)

(declare-fun b!1589101 () Bool)

(declare-fun append!535 (BalanceConc!11554 Token!5722) BalanceConc!11554)

(assert (=> b!1589101 (= e!1020741 (lexTailRecV2!517 thiss!17113 rules!1846 (seqFromList!1905 lt!560815) lt!561539 (_2!9886 (v!24056 lt!561535)) (append!535 (BalanceConc!11555 Empty!5805) (_1!9886 (v!24056 lt!561535)))))))

(declare-fun lt!561545 () tuple2!16958)

(assert (=> b!1589101 (= lt!561545 (lexRec!356 thiss!17113 rules!1846 (_2!9886 (v!24056 lt!561535))))))

(declare-fun lt!561527 () List!17548)

(assert (=> b!1589101 (= lt!561527 (list!6789 (BalanceConc!11553 Empty!5804)))))

(declare-fun lt!561534 () List!17548)

(assert (=> b!1589101 (= lt!561534 (list!6789 (charsOf!1727 (_1!9886 (v!24056 lt!561535)))))))

(declare-fun lt!561550 () List!17548)

(assert (=> b!1589101 (= lt!561550 (list!6789 (_2!9886 (v!24056 lt!561535))))))

(declare-fun lt!561531 () Unit!27502)

(declare-fun lemmaConcatAssociativity!988 (List!17548 List!17548 List!17548) Unit!27502)

(assert (=> b!1589101 (= lt!561531 (lemmaConcatAssociativity!988 lt!561527 lt!561534 lt!561550))))

(assert (=> b!1589101 (= (++!4565 (++!4565 lt!561527 lt!561534) lt!561550) (++!4565 lt!561527 (++!4565 lt!561534 lt!561550)))))

(declare-fun lt!561536 () Unit!27502)

(assert (=> b!1589101 (= lt!561536 lt!561531)))

(declare-fun maxPrefixZipperSequence!612 (LexerInterface!2707 List!17549 BalanceConc!11552) Option!3155)

(assert (=> b!1589101 (= lt!561547 (maxPrefixZipperSequence!612 thiss!17113 rules!1846 (seqFromList!1905 lt!560815)))))

(declare-fun c!257469 () Bool)

(assert (=> b!1589101 (= c!257469 (is-Some!3154 lt!561547))))

(assert (=> b!1589101 (= (lexRec!356 thiss!17113 rules!1846 (seqFromList!1905 lt!560815)) e!1020742)))

(declare-fun lt!561533 () Unit!27502)

(declare-fun Unit!27545 () Unit!27502)

(assert (=> b!1589101 (= lt!561533 Unit!27545)))

(declare-fun lt!561523 () List!17550)

(assert (=> b!1589101 (= lt!561523 (list!6790 (BalanceConc!11555 Empty!5805)))))

(declare-fun lt!561532 () List!17550)

(assert (=> b!1589101 (= lt!561532 (Cons!17480 (_1!9886 (v!24056 lt!561535)) Nil!17480))))

(declare-fun lt!561528 () List!17550)

(assert (=> b!1589101 (= lt!561528 (list!6790 (_1!9881 lt!561545)))))

(declare-fun lt!561548 () Unit!27502)

(declare-fun lemmaConcatAssociativity!989 (List!17550 List!17550 List!17550) Unit!27502)

(assert (=> b!1589101 (= lt!561548 (lemmaConcatAssociativity!989 lt!561523 lt!561532 lt!561528))))

(declare-fun ++!4571 (List!17550 List!17550) List!17550)

(assert (=> b!1589101 (= (++!4571 (++!4571 lt!561523 lt!561532) lt!561528) (++!4571 lt!561523 (++!4571 lt!561532 lt!561528)))))

(declare-fun lt!561540 () Unit!27502)

(assert (=> b!1589101 (= lt!561540 lt!561548)))

(declare-fun lt!561541 () List!17548)

(assert (=> b!1589101 (= lt!561541 (++!4565 (list!6789 (BalanceConc!11553 Empty!5804)) (list!6789 (charsOf!1727 (_1!9886 (v!24056 lt!561535))))))))

(declare-fun lt!561542 () List!17548)

(assert (=> b!1589101 (= lt!561542 (list!6789 (_2!9886 (v!24056 lt!561535))))))

(declare-fun lt!561521 () List!17550)

(assert (=> b!1589101 (= lt!561521 (list!6790 (append!535 (BalanceConc!11555 Empty!5805) (_1!9886 (v!24056 lt!561535)))))))

(declare-fun lt!561537 () Unit!27502)

(declare-fun lemmaLexThenLexPrefix!244 (LexerInterface!2707 List!17549 List!17548 List!17548 List!17550 List!17550 List!17548) Unit!27502)

(assert (=> b!1589101 (= lt!561537 (lemmaLexThenLexPrefix!244 thiss!17113 rules!1846 lt!561541 lt!561542 lt!561521 (list!6790 (_1!9881 lt!561545)) (list!6789 (_2!9881 lt!561545))))))

(assert (=> b!1589101 (= (lexList!794 thiss!17113 rules!1846 lt!561541) (tuple2!16965 lt!561521 Nil!17478))))

(declare-fun lt!561538 () Unit!27502)

(assert (=> b!1589101 (= lt!561538 lt!561537)))

(assert (=> b!1589101 (= lt!561529 (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (_1!9886 (v!24056 lt!561535)))))))

(declare-fun lt!561530 () Option!3155)

(assert (=> b!1589101 (= lt!561530 (maxPrefixZipperSequence!612 thiss!17113 rules!1846 lt!561529))))

(declare-fun c!257470 () Bool)

(assert (=> b!1589101 (= c!257470 (is-Some!3154 lt!561530))))

(assert (=> b!1589101 (= (lexRec!356 thiss!17113 rules!1846 (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (_1!9886 (v!24056 lt!561535))))) e!1020739)))

(declare-fun lt!561526 () Unit!27502)

(declare-fun Unit!27546 () Unit!27502)

(assert (=> b!1589101 (= lt!561526 Unit!27546)))

(assert (=> b!1589101 (= lt!561539 (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (_1!9886 (v!24056 lt!561535)))))))

(declare-fun lt!561525 () List!17548)

(assert (=> b!1589101 (= lt!561525 (list!6789 lt!561539))))

(declare-fun lt!561524 () List!17548)

(assert (=> b!1589101 (= lt!561524 (list!6789 (_2!9886 (v!24056 lt!561535))))))

(declare-fun lt!561544 () Unit!27502)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!303 (List!17548 List!17548) Unit!27502)

(assert (=> b!1589101 (= lt!561544 (lemmaConcatTwoListThenFSndIsSuffix!303 lt!561525 lt!561524))))

(declare-fun isSuffix!402 (List!17548 List!17548) Bool)

(assert (=> b!1589101 (isSuffix!402 lt!561524 (++!4565 lt!561525 lt!561524))))

(declare-fun lt!561552 () Unit!27502)

(assert (=> b!1589101 (= lt!561552 lt!561544)))

(declare-fun b!1589102 () Bool)

(assert (=> b!1589102 (= e!1020741 (tuple2!16959 (BalanceConc!11555 Empty!5805) (seqFromList!1905 lt!560815)))))

(declare-fun d!472876 () Bool)

(declare-fun e!1020740 () Bool)

(assert (=> d!472876 e!1020740))

(declare-fun res!708977 () Bool)

(assert (=> d!472876 (=> (not res!708977) (not e!1020740))))

(declare-fun lt!561551 () tuple2!16958)

(assert (=> d!472876 (= res!708977 (= (list!6790 (_1!9881 lt!561551)) (list!6790 (_1!9881 (lexRec!356 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))))))

(assert (=> d!472876 (= lt!561551 e!1020741)))

(declare-fun c!257468 () Bool)

(assert (=> d!472876 (= c!257468 (is-Some!3154 lt!561535))))

(declare-fun maxPrefixZipperSequenceV2!251 (LexerInterface!2707 List!17549 BalanceConc!11552 BalanceConc!11552) Option!3155)

(assert (=> d!472876 (= lt!561535 (maxPrefixZipperSequenceV2!251 thiss!17113 rules!1846 (seqFromList!1905 lt!560815) (seqFromList!1905 lt!560815)))))

(declare-fun lt!561543 () Unit!27502)

(declare-fun lt!561553 () Unit!27502)

(assert (=> d!472876 (= lt!561543 lt!561553)))

(declare-fun lt!561520 () List!17548)

(declare-fun lt!561549 () List!17548)

(assert (=> d!472876 (isSuffix!402 lt!561520 (++!4565 lt!561549 lt!561520))))

(assert (=> d!472876 (= lt!561553 (lemmaConcatTwoListThenFSndIsSuffix!303 lt!561549 lt!561520))))

(assert (=> d!472876 (= lt!561520 (list!6789 (seqFromList!1905 lt!560815)))))

(assert (=> d!472876 (= lt!561549 (list!6789 (BalanceConc!11553 Empty!5804)))))

(assert (=> d!472876 (= (lexTailRecV2!517 thiss!17113 rules!1846 (seqFromList!1905 lt!560815) (BalanceConc!11553 Empty!5804) (seqFromList!1905 lt!560815) (BalanceConc!11555 Empty!5805)) lt!561551)))

(declare-fun b!1589103 () Bool)

(assert (=> b!1589103 (= e!1020742 (tuple2!16959 (BalanceConc!11555 Empty!5805) (seqFromList!1905 lt!560815)))))

(declare-fun b!1589104 () Bool)

(declare-fun lt!561546 () tuple2!16958)

(assert (=> b!1589104 (= lt!561546 (lexRec!356 thiss!17113 rules!1846 (_2!9886 (v!24056 lt!561530))))))

(assert (=> b!1589104 (= e!1020739 (tuple2!16959 (prepend!570 (_1!9881 lt!561546) (_1!9886 (v!24056 lt!561530))) (_2!9881 lt!561546)))))

(declare-fun b!1589105 () Bool)

(assert (=> b!1589105 (= e!1020740 (= (list!6789 (_2!9881 lt!561551)) (list!6789 (_2!9881 (lexRec!356 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))))))

(assert (= (and d!472876 c!257468) b!1589101))

(assert (= (and d!472876 (not c!257468)) b!1589102))

(assert (= (and b!1589101 c!257469) b!1589099))

(assert (= (and b!1589101 (not c!257469)) b!1589103))

(assert (= (and b!1589101 c!257470) b!1589104))

(assert (= (and b!1589101 (not c!257470)) b!1589100))

(assert (= (and d!472876 res!708977) b!1589105))

(declare-fun m!1880965 () Bool)

(assert (=> b!1589099 m!1880965))

(declare-fun m!1880967 () Bool)

(assert (=> b!1589099 m!1880967))

(declare-fun m!1880969 () Bool)

(assert (=> b!1589105 m!1880969))

(assert (=> b!1589105 m!1879841))

(declare-fun m!1880971 () Bool)

(assert (=> b!1589105 m!1880971))

(declare-fun m!1880973 () Bool)

(assert (=> b!1589105 m!1880973))

(assert (=> b!1589101 m!1880205))

(declare-fun m!1880975 () Bool)

(assert (=> b!1589101 m!1880975))

(declare-fun m!1880977 () Bool)

(assert (=> b!1589101 m!1880977))

(declare-fun m!1880979 () Bool)

(assert (=> b!1589101 m!1880979))

(declare-fun m!1880981 () Bool)

(assert (=> b!1589101 m!1880981))

(declare-fun m!1880983 () Bool)

(assert (=> b!1589101 m!1880983))

(assert (=> b!1589101 m!1879841))

(declare-fun m!1880985 () Bool)

(assert (=> b!1589101 m!1880985))

(declare-fun m!1880987 () Bool)

(assert (=> b!1589101 m!1880987))

(assert (=> b!1589101 m!1880205))

(declare-fun m!1880989 () Bool)

(assert (=> b!1589101 m!1880989))

(declare-fun m!1880991 () Bool)

(assert (=> b!1589101 m!1880991))

(assert (=> b!1589101 m!1879841))

(declare-fun m!1880993 () Bool)

(assert (=> b!1589101 m!1880993))

(assert (=> b!1589101 m!1880985))

(assert (=> b!1589101 m!1880979))

(assert (=> b!1589101 m!1880985))

(declare-fun m!1880995 () Bool)

(assert (=> b!1589101 m!1880995))

(declare-fun m!1880997 () Bool)

(assert (=> b!1589101 m!1880997))

(declare-fun m!1880999 () Bool)

(assert (=> b!1589101 m!1880999))

(declare-fun m!1881001 () Bool)

(assert (=> b!1589101 m!1881001))

(declare-fun m!1881003 () Bool)

(assert (=> b!1589101 m!1881003))

(declare-fun m!1881005 () Bool)

(assert (=> b!1589101 m!1881005))

(declare-fun m!1881007 () Bool)

(assert (=> b!1589101 m!1881007))

(declare-fun m!1881009 () Bool)

(assert (=> b!1589101 m!1881009))

(declare-fun m!1881011 () Bool)

(assert (=> b!1589101 m!1881011))

(declare-fun m!1881013 () Bool)

(assert (=> b!1589101 m!1881013))

(declare-fun m!1881015 () Bool)

(assert (=> b!1589101 m!1881015))

(assert (=> b!1589101 m!1880989))

(assert (=> b!1589101 m!1881015))

(assert (=> b!1589101 m!1880975))

(declare-fun m!1881017 () Bool)

(assert (=> b!1589101 m!1881017))

(declare-fun m!1881019 () Bool)

(assert (=> b!1589101 m!1881019))

(assert (=> b!1589101 m!1881015))

(assert (=> b!1589101 m!1880997))

(assert (=> b!1589101 m!1880983))

(declare-fun m!1881021 () Bool)

(assert (=> b!1589101 m!1881021))

(declare-fun m!1881023 () Bool)

(assert (=> b!1589101 m!1881023))

(declare-fun m!1881025 () Bool)

(assert (=> b!1589101 m!1881025))

(declare-fun m!1881027 () Bool)

(assert (=> b!1589101 m!1881027))

(assert (=> b!1589101 m!1881007))

(declare-fun m!1881029 () Bool)

(assert (=> b!1589101 m!1881029))

(declare-fun m!1881031 () Bool)

(assert (=> b!1589101 m!1881031))

(assert (=> b!1589101 m!1881017))

(assert (=> b!1589101 m!1881003))

(declare-fun m!1881033 () Bool)

(assert (=> b!1589101 m!1881033))

(assert (=> b!1589101 m!1879841))

(assert (=> b!1589101 m!1880971))

(assert (=> b!1589101 m!1881025))

(declare-fun m!1881035 () Bool)

(assert (=> b!1589101 m!1881035))

(declare-fun m!1881037 () Bool)

(assert (=> b!1589104 m!1881037))

(declare-fun m!1881039 () Bool)

(assert (=> b!1589104 m!1881039))

(assert (=> d!472876 m!1879841))

(assert (=> d!472876 m!1879841))

(declare-fun m!1881041 () Bool)

(assert (=> d!472876 m!1881041))

(assert (=> d!472876 m!1880205))

(assert (=> d!472876 m!1879841))

(assert (=> d!472876 m!1880131))

(declare-fun m!1881043 () Bool)

(assert (=> d!472876 m!1881043))

(declare-fun m!1881045 () Bool)

(assert (=> d!472876 m!1881045))

(declare-fun m!1881047 () Bool)

(assert (=> d!472876 m!1881047))

(declare-fun m!1881049 () Bool)

(assert (=> d!472876 m!1881049))

(assert (=> d!472876 m!1881045))

(declare-fun m!1881051 () Bool)

(assert (=> d!472876 m!1881051))

(assert (=> d!472876 m!1879841))

(assert (=> d!472876 m!1880971))

(assert (=> d!472724 d!472876))

(declare-fun d!472878 () Bool)

(assert (=> d!472878 (= (head!3239 lt!560815) (h!22879 lt!560815))))

(assert (=> b!1588907 d!472878))

(declare-fun d!472880 () Bool)

(assert (=> d!472880 (= (head!3239 lt!560832) (h!22879 lt!560832))))

(assert (=> b!1588907 d!472880))

(declare-fun d!472882 () Bool)

(assert (=> d!472882 (= (list!6789 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457)))) (list!6793 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457))))))))

(declare-fun bs!391625 () Bool)

(assert (= bs!391625 d!472882))

(declare-fun m!1881053 () Bool)

(assert (=> bs!391625 m!1881053))

(assert (=> b!1588801 d!472882))

(declare-fun d!472884 () Bool)

(declare-fun lt!561554 () Bool)

(assert (=> d!472884 (= lt!561554 (isEmpty!10505 (list!6790 (_1!9881 lt!560913))))))

(assert (=> d!472884 (= lt!561554 (isEmpty!10506 (c!257385 (_1!9881 lt!560913))))))

(assert (=> d!472884 (= (isEmpty!10501 (_1!9881 lt!560913)) lt!561554)))

(declare-fun bs!391626 () Bool)

(assert (= bs!391626 d!472884))

(assert (=> bs!391626 m!1879993))

(assert (=> bs!391626 m!1879993))

(declare-fun m!1881055 () Bool)

(assert (=> bs!391626 m!1881055))

(declare-fun m!1881057 () Bool)

(assert (=> bs!391626 m!1881057))

(assert (=> b!1588599 d!472884))

(declare-fun d!472886 () Bool)

(assert (=> d!472886 (= (head!3238 (drop!829 lt!561049 0)) (h!22881 (drop!829 lt!561049 0)))))

(assert (=> b!1588730 d!472886))

(declare-fun d!472888 () Bool)

(assert (=> d!472888 (= (list!6790 lt!560813) (list!6794 (c!257385 lt!560813)))))

(declare-fun bs!391627 () Bool)

(assert (= bs!391627 d!472888))

(declare-fun m!1881059 () Bool)

(assert (=> bs!391627 m!1881059))

(assert (=> b!1588730 d!472888))

(declare-fun b!1589124 () Bool)

(declare-fun e!1020754 () List!17550)

(assert (=> b!1589124 (= e!1020754 Nil!17480)))

(declare-fun b!1589126 () Bool)

(declare-fun e!1020756 () List!17550)

(assert (=> b!1589126 (= e!1020756 (drop!829 (t!144429 lt!561044) (- 0 1)))))

(declare-fun b!1589127 () Bool)

(assert (=> b!1589127 (= e!1020756 lt!561044)))

(declare-fun b!1589128 () Bool)

(declare-fun e!1020753 () Int)

(declare-fun call!102961 () Int)

(assert (=> b!1589128 (= e!1020753 (- call!102961 0))))

(declare-fun bm!102956 () Bool)

(assert (=> bm!102956 (= call!102961 (size!14063 lt!561044))))

(declare-fun b!1589129 () Bool)

(declare-fun e!1020757 () Int)

(assert (=> b!1589129 (= e!1020757 call!102961)))

(declare-fun b!1589130 () Bool)

(assert (=> b!1589130 (= e!1020753 0)))

(declare-fun b!1589131 () Bool)

(assert (=> b!1589131 (= e!1020754 e!1020756)))

(declare-fun c!257481 () Bool)

(assert (=> b!1589131 (= c!257481 (<= 0 0))))

(declare-fun b!1589132 () Bool)

(assert (=> b!1589132 (= e!1020757 e!1020753)))

(declare-fun c!257479 () Bool)

(assert (=> b!1589132 (= c!257479 (>= 0 call!102961))))

(declare-fun d!472890 () Bool)

(declare-fun e!1020755 () Bool)

(assert (=> d!472890 e!1020755))

(declare-fun res!708980 () Bool)

(assert (=> d!472890 (=> (not res!708980) (not e!1020755))))

(declare-fun lt!561557 () List!17550)

(declare-fun content!2410 (List!17550) (Set Token!5722))

(assert (=> d!472890 (= res!708980 (set.subset (content!2410 lt!561557) (content!2410 lt!561044)))))

(assert (=> d!472890 (= lt!561557 e!1020754)))

(declare-fun c!257480 () Bool)

(assert (=> d!472890 (= c!257480 (is-Nil!17480 lt!561044))))

(assert (=> d!472890 (= (drop!829 lt!561044 0) lt!561557)))

(declare-fun b!1589125 () Bool)

(assert (=> b!1589125 (= e!1020755 (= (size!14063 lt!561557) e!1020757))))

(declare-fun c!257482 () Bool)

(assert (=> b!1589125 (= c!257482 (<= 0 0))))

(assert (= (and d!472890 c!257480) b!1589124))

(assert (= (and d!472890 (not c!257480)) b!1589131))

(assert (= (and b!1589131 c!257481) b!1589127))

(assert (= (and b!1589131 (not c!257481)) b!1589126))

(assert (= (and d!472890 res!708980) b!1589125))

(assert (= (and b!1589125 c!257482) b!1589129))

(assert (= (and b!1589125 (not c!257482)) b!1589132))

(assert (= (and b!1589132 c!257479) b!1589130))

(assert (= (and b!1589132 (not c!257479)) b!1589128))

(assert (= (or b!1589129 b!1589132 b!1589128) bm!102956))

(declare-fun m!1881061 () Bool)

(assert (=> b!1589126 m!1881061))

(declare-fun m!1881063 () Bool)

(assert (=> bm!102956 m!1881063))

(declare-fun m!1881065 () Bool)

(assert (=> d!472890 m!1881065))

(declare-fun m!1881067 () Bool)

(assert (=> d!472890 m!1881067))

(declare-fun m!1881069 () Bool)

(assert (=> b!1589125 m!1881069))

(assert (=> b!1588730 d!472890))

(declare-fun d!472892 () Bool)

(assert (=> d!472892 (= (tail!2286 (drop!829 lt!561044 0)) (drop!829 lt!561044 (+ 0 1)))))

(declare-fun lt!561560 () Unit!27502)

(declare-fun choose!9517 (List!17550 Int) Unit!27502)

(assert (=> d!472892 (= lt!561560 (choose!9517 lt!561044 0))))

(declare-fun e!1020760 () Bool)

(assert (=> d!472892 e!1020760))

(declare-fun res!708983 () Bool)

(assert (=> d!472892 (=> (not res!708983) (not e!1020760))))

(assert (=> d!472892 (= res!708983 (>= 0 0))))

(assert (=> d!472892 (= (lemmaDropTail!507 lt!561044 0) lt!561560)))

(declare-fun b!1589135 () Bool)

(assert (=> b!1589135 (= e!1020760 (< 0 (size!14063 lt!561044)))))

(assert (= (and d!472892 res!708983) b!1589135))

(assert (=> d!472892 m!1880223))

(assert (=> d!472892 m!1880223))

(assert (=> d!472892 m!1880229))

(assert (=> d!472892 m!1880233))

(declare-fun m!1881071 () Bool)

(assert (=> d!472892 m!1881071))

(assert (=> b!1589135 m!1881063))

(assert (=> b!1588730 d!472892))

(declare-fun d!472894 () Bool)

(assert (=> d!472894 (= (head!3238 (drop!829 lt!561049 0)) (apply!4304 lt!561049 0))))

(declare-fun lt!561563 () Unit!27502)

(declare-fun choose!9518 (List!17550 Int) Unit!27502)

(assert (=> d!472894 (= lt!561563 (choose!9518 lt!561049 0))))

(declare-fun e!1020763 () Bool)

(assert (=> d!472894 e!1020763))

(declare-fun res!708986 () Bool)

(assert (=> d!472894 (=> (not res!708986) (not e!1020763))))

(assert (=> d!472894 (= res!708986 (>= 0 0))))

(assert (=> d!472894 (= (lemmaDropApply!527 lt!561049 0) lt!561563)))

(declare-fun b!1589138 () Bool)

(assert (=> b!1589138 (= e!1020763 (< 0 (size!14063 lt!561049)))))

(assert (= (and d!472894 res!708986) b!1589138))

(assert (=> d!472894 m!1880219))

(assert (=> d!472894 m!1880219))

(assert (=> d!472894 m!1880225))

(assert (=> d!472894 m!1880231))

(declare-fun m!1881073 () Bool)

(assert (=> d!472894 m!1881073))

(declare-fun m!1881075 () Bool)

(assert (=> b!1589138 m!1881075))

(assert (=> b!1588730 d!472894))

(declare-fun d!472896 () Bool)

(declare-fun lt!561564 () BalanceConc!11552)

(assert (=> d!472896 (= (list!6789 lt!561564) (originalCharacters!3892 (apply!4303 lt!560813 0)))))

(assert (=> d!472896 (= lt!561564 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (apply!4303 lt!560813 0)))) (value!97397 (apply!4303 lt!560813 0))))))

(assert (=> d!472896 (= (charsOf!1727 (apply!4303 lt!560813 0)) lt!561564)))

(declare-fun b_lambda!50017 () Bool)

(assert (=> (not b_lambda!50017) (not d!472896)))

(declare-fun t!144483 () Bool)

(declare-fun tb!89431 () Bool)

(assert (=> (and b!1588488 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 (apply!4303 lt!560813 0))))) t!144483) tb!89431))

(declare-fun b!1589139 () Bool)

(declare-fun e!1020764 () Bool)

(declare-fun tp!467043 () Bool)

(assert (=> b!1589139 (= e!1020764 (and (inv!22891 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (apply!4303 lt!560813 0)))) (value!97397 (apply!4303 lt!560813 0))))) tp!467043))))

(declare-fun result!108298 () Bool)

(assert (=> tb!89431 (= result!108298 (and (inv!22892 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (apply!4303 lt!560813 0)))) (value!97397 (apply!4303 lt!560813 0)))) e!1020764))))

(assert (= tb!89431 b!1589139))

(declare-fun m!1881077 () Bool)

(assert (=> b!1589139 m!1881077))

(declare-fun m!1881079 () Bool)

(assert (=> tb!89431 m!1881079))

(assert (=> d!472896 t!144483))

(declare-fun b_and!111461 () Bool)

(assert (= b_and!111437 (and (=> t!144483 result!108298) b_and!111461)))

(declare-fun t!144485 () Bool)

(declare-fun tb!89433 () Bool)

(assert (=> (and b!1588496 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toChars!4348 (transformation!3078 (rule!4882 (apply!4303 lt!560813 0))))) t!144485) tb!89433))

(declare-fun result!108300 () Bool)

(assert (= result!108300 result!108298))

(assert (=> d!472896 t!144485))

(declare-fun b_and!111463 () Bool)

(assert (= b_and!111439 (and (=> t!144485 result!108300) b_and!111463)))

(declare-fun t!144487 () Bool)

(declare-fun tb!89435 () Bool)

(assert (=> (and b!1588974 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 (apply!4303 lt!560813 0))))) t!144487) tb!89435))

(declare-fun result!108302 () Bool)

(assert (= result!108302 result!108298))

(assert (=> d!472896 t!144487))

(declare-fun b_and!111465 () Bool)

(assert (= b_and!111447 (and (=> t!144487 result!108302) b_and!111465)))

(declare-fun t!144489 () Bool)

(declare-fun tb!89437 () Bool)

(assert (=> (and b!1588988 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toChars!4348 (transformation!3078 (rule!4882 (apply!4303 lt!560813 0))))) t!144489) tb!89437))

(declare-fun result!108304 () Bool)

(assert (= result!108304 result!108298))

(assert (=> d!472896 t!144489))

(declare-fun b_and!111467 () Bool)

(assert (= b_and!111451 (and (=> t!144489 result!108304) b_and!111467)))

(declare-fun m!1881081 () Bool)

(assert (=> d!472896 m!1881081))

(declare-fun m!1881083 () Bool)

(assert (=> d!472896 m!1881083))

(assert (=> b!1588730 d!472896))

(declare-fun d!472898 () Bool)

(assert (=> d!472898 (= (tail!2286 (drop!829 lt!561044 0)) (t!144429 (drop!829 lt!561044 0)))))

(assert (=> b!1588730 d!472898))

(declare-fun b!1589140 () Bool)

(declare-fun e!1020766 () List!17550)

(assert (=> b!1589140 (= e!1020766 Nil!17480)))

(declare-fun b!1589142 () Bool)

(declare-fun e!1020768 () List!17550)

(assert (=> b!1589142 (= e!1020768 (drop!829 (t!144429 lt!561044) (- (+ 0 1) 1)))))

(declare-fun b!1589143 () Bool)

(assert (=> b!1589143 (= e!1020768 lt!561044)))

(declare-fun b!1589144 () Bool)

(declare-fun e!1020765 () Int)

(declare-fun call!102962 () Int)

(assert (=> b!1589144 (= e!1020765 (- call!102962 (+ 0 1)))))

(declare-fun bm!102957 () Bool)

(assert (=> bm!102957 (= call!102962 (size!14063 lt!561044))))

(declare-fun b!1589145 () Bool)

(declare-fun e!1020769 () Int)

(assert (=> b!1589145 (= e!1020769 call!102962)))

(declare-fun b!1589146 () Bool)

(assert (=> b!1589146 (= e!1020765 0)))

(declare-fun b!1589147 () Bool)

(assert (=> b!1589147 (= e!1020766 e!1020768)))

(declare-fun c!257485 () Bool)

(assert (=> b!1589147 (= c!257485 (<= (+ 0 1) 0))))

(declare-fun b!1589148 () Bool)

(assert (=> b!1589148 (= e!1020769 e!1020765)))

(declare-fun c!257483 () Bool)

(assert (=> b!1589148 (= c!257483 (>= (+ 0 1) call!102962))))

(declare-fun d!472900 () Bool)

(declare-fun e!1020767 () Bool)

(assert (=> d!472900 e!1020767))

(declare-fun res!708987 () Bool)

(assert (=> d!472900 (=> (not res!708987) (not e!1020767))))

(declare-fun lt!561565 () List!17550)

(assert (=> d!472900 (= res!708987 (set.subset (content!2410 lt!561565) (content!2410 lt!561044)))))

(assert (=> d!472900 (= lt!561565 e!1020766)))

(declare-fun c!257484 () Bool)

(assert (=> d!472900 (= c!257484 (is-Nil!17480 lt!561044))))

(assert (=> d!472900 (= (drop!829 lt!561044 (+ 0 1)) lt!561565)))

(declare-fun b!1589141 () Bool)

(assert (=> b!1589141 (= e!1020767 (= (size!14063 lt!561565) e!1020769))))

(declare-fun c!257486 () Bool)

(assert (=> b!1589141 (= c!257486 (<= (+ 0 1) 0))))

(assert (= (and d!472900 c!257484) b!1589140))

(assert (= (and d!472900 (not c!257484)) b!1589147))

(assert (= (and b!1589147 c!257485) b!1589143))

(assert (= (and b!1589147 (not c!257485)) b!1589142))

(assert (= (and d!472900 res!708987) b!1589141))

(assert (= (and b!1589141 c!257486) b!1589145))

(assert (= (and b!1589141 (not c!257486)) b!1589148))

(assert (= (and b!1589148 c!257483) b!1589146))

(assert (= (and b!1589148 (not c!257483)) b!1589144))

(assert (= (or b!1589145 b!1589148 b!1589144) bm!102957))

(declare-fun m!1881085 () Bool)

(assert (=> b!1589142 m!1881085))

(assert (=> bm!102957 m!1881063))

(declare-fun m!1881087 () Bool)

(assert (=> d!472900 m!1881087))

(assert (=> d!472900 m!1881067))

(declare-fun m!1881089 () Bool)

(assert (=> b!1589141 m!1881089))

(assert (=> b!1588730 d!472900))

(declare-fun d!472902 () Bool)

(declare-fun lt!561566 () BalanceConc!11552)

(assert (=> d!472902 (= (list!6789 lt!561566) (printListTailRec!320 thiss!17113 (dropList!537 lt!560813 (+ 0 1)) (list!6789 (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (apply!4303 lt!560813 0))))))))

(declare-fun e!1020770 () BalanceConc!11552)

(assert (=> d!472902 (= lt!561566 e!1020770)))

(declare-fun c!257487 () Bool)

(assert (=> d!472902 (= c!257487 (>= (+ 0 1) (size!14059 lt!560813)))))

(declare-fun e!1020771 () Bool)

(assert (=> d!472902 e!1020771))

(declare-fun res!708988 () Bool)

(assert (=> d!472902 (=> (not res!708988) (not e!1020771))))

(assert (=> d!472902 (= res!708988 (>= (+ 0 1) 0))))

(assert (=> d!472902 (= (printTailRec!760 thiss!17113 lt!560813 (+ 0 1) (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (apply!4303 lt!560813 0)))) lt!561566)))

(declare-fun b!1589149 () Bool)

(assert (=> b!1589149 (= e!1020771 (<= (+ 0 1) (size!14059 lt!560813)))))

(declare-fun b!1589150 () Bool)

(assert (=> b!1589150 (= e!1020770 (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (apply!4303 lt!560813 0))))))

(declare-fun b!1589151 () Bool)

(assert (=> b!1589151 (= e!1020770 (printTailRec!760 thiss!17113 lt!560813 (+ 0 1 1) (++!4566 (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (apply!4303 lt!560813 0))) (charsOf!1727 (apply!4303 lt!560813 (+ 0 1))))))))

(declare-fun lt!561572 () List!17550)

(assert (=> b!1589151 (= lt!561572 (list!6790 lt!560813))))

(declare-fun lt!561570 () Unit!27502)

(assert (=> b!1589151 (= lt!561570 (lemmaDropApply!527 lt!561572 (+ 0 1)))))

(assert (=> b!1589151 (= (head!3238 (drop!829 lt!561572 (+ 0 1))) (apply!4304 lt!561572 (+ 0 1)))))

(declare-fun lt!561571 () Unit!27502)

(assert (=> b!1589151 (= lt!561571 lt!561570)))

(declare-fun lt!561567 () List!17550)

(assert (=> b!1589151 (= lt!561567 (list!6790 lt!560813))))

(declare-fun lt!561568 () Unit!27502)

(assert (=> b!1589151 (= lt!561568 (lemmaDropTail!507 lt!561567 (+ 0 1)))))

(assert (=> b!1589151 (= (tail!2286 (drop!829 lt!561567 (+ 0 1))) (drop!829 lt!561567 (+ 0 1 1)))))

(declare-fun lt!561569 () Unit!27502)

(assert (=> b!1589151 (= lt!561569 lt!561568)))

(assert (= (and d!472902 res!708988) b!1589149))

(assert (= (and d!472902 c!257487) b!1589150))

(assert (= (and d!472902 (not c!257487)) b!1589151))

(assert (=> d!472902 m!1880201))

(declare-fun m!1881091 () Bool)

(assert (=> d!472902 m!1881091))

(assert (=> d!472902 m!1881091))

(declare-fun m!1881093 () Bool)

(assert (=> d!472902 m!1881093))

(declare-fun m!1881095 () Bool)

(assert (=> d!472902 m!1881095))

(assert (=> d!472902 m!1880211))

(assert (=> d!472902 m!1881093))

(declare-fun m!1881097 () Bool)

(assert (=> d!472902 m!1881097))

(assert (=> b!1589149 m!1880201))

(declare-fun m!1881099 () Bool)

(assert (=> b!1589151 m!1881099))

(declare-fun m!1881101 () Bool)

(assert (=> b!1589151 m!1881101))

(assert (=> b!1589151 m!1880197))

(declare-fun m!1881103 () Bool)

(assert (=> b!1589151 m!1881103))

(declare-fun m!1881105 () Bool)

(assert (=> b!1589151 m!1881105))

(declare-fun m!1881107 () Bool)

(assert (=> b!1589151 m!1881107))

(declare-fun m!1881109 () Bool)

(assert (=> b!1589151 m!1881109))

(declare-fun m!1881111 () Bool)

(assert (=> b!1589151 m!1881111))

(assert (=> b!1589151 m!1881107))

(declare-fun m!1881113 () Bool)

(assert (=> b!1589151 m!1881113))

(declare-fun m!1881115 () Bool)

(assert (=> b!1589151 m!1881115))

(assert (=> b!1589151 m!1881111))

(declare-fun m!1881117 () Bool)

(assert (=> b!1589151 m!1881117))

(assert (=> b!1589151 m!1880211))

(assert (=> b!1589151 m!1881105))

(assert (=> b!1589151 m!1881099))

(declare-fun m!1881119 () Bool)

(assert (=> b!1589151 m!1881119))

(assert (=> b!1589151 m!1881103))

(declare-fun m!1881121 () Bool)

(assert (=> b!1589151 m!1881121))

(assert (=> b!1588730 d!472902))

(declare-fun d!472904 () Bool)

(declare-fun lt!561575 () Token!5722)

(declare-fun contains!3053 (List!17550 Token!5722) Bool)

(assert (=> d!472904 (contains!3053 lt!561049 lt!561575)))

(declare-fun e!1020776 () Token!5722)

(assert (=> d!472904 (= lt!561575 e!1020776)))

(declare-fun c!257490 () Bool)

(assert (=> d!472904 (= c!257490 (= 0 0))))

(declare-fun e!1020777 () Bool)

(assert (=> d!472904 e!1020777))

(declare-fun res!708991 () Bool)

(assert (=> d!472904 (=> (not res!708991) (not e!1020777))))

(assert (=> d!472904 (= res!708991 (<= 0 0))))

(assert (=> d!472904 (= (apply!4304 lt!561049 0) lt!561575)))

(declare-fun b!1589158 () Bool)

(assert (=> b!1589158 (= e!1020777 (< 0 (size!14063 lt!561049)))))

(declare-fun b!1589159 () Bool)

(assert (=> b!1589159 (= e!1020776 (head!3238 lt!561049))))

(declare-fun b!1589160 () Bool)

(assert (=> b!1589160 (= e!1020776 (apply!4304 (tail!2286 lt!561049) (- 0 1)))))

(assert (= (and d!472904 res!708991) b!1589158))

(assert (= (and d!472904 c!257490) b!1589159))

(assert (= (and d!472904 (not c!257490)) b!1589160))

(declare-fun m!1881123 () Bool)

(assert (=> d!472904 m!1881123))

(assert (=> b!1589158 m!1881075))

(declare-fun m!1881125 () Bool)

(assert (=> b!1589159 m!1881125))

(declare-fun m!1881127 () Bool)

(assert (=> b!1589160 m!1881127))

(assert (=> b!1589160 m!1881127))

(declare-fun m!1881129 () Bool)

(assert (=> b!1589160 m!1881129))

(assert (=> b!1588730 d!472904))

(declare-fun d!472906 () Bool)

(declare-fun e!1020778 () Bool)

(assert (=> d!472906 e!1020778))

(declare-fun res!708995 () Bool)

(assert (=> d!472906 (=> (not res!708995) (not e!1020778))))

(assert (=> d!472906 (= res!708995 (appendAssocInst!396 (c!257383 (BalanceConc!11553 Empty!5804)) (c!257383 (charsOf!1727 (apply!4303 lt!560813 0)))))))

(declare-fun lt!561576 () BalanceConc!11552)

(assert (=> d!472906 (= lt!561576 (BalanceConc!11553 (++!4569 (c!257383 (BalanceConc!11553 Empty!5804)) (c!257383 (charsOf!1727 (apply!4303 lt!560813 0))))))))

(assert (=> d!472906 (= (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (apply!4303 lt!560813 0))) lt!561576)))

(declare-fun b!1589162 () Bool)

(declare-fun res!708994 () Bool)

(assert (=> b!1589162 (=> (not res!708994) (not e!1020778))))

(assert (=> b!1589162 (= res!708994 (<= (height!862 (++!4569 (c!257383 (BalanceConc!11553 Empty!5804)) (c!257383 (charsOf!1727 (apply!4303 lt!560813 0))))) (+ (max!0 (height!862 (c!257383 (BalanceConc!11553 Empty!5804))) (height!862 (c!257383 (charsOf!1727 (apply!4303 lt!560813 0))))) 1)))))

(declare-fun b!1589161 () Bool)

(declare-fun res!708993 () Bool)

(assert (=> b!1589161 (=> (not res!708993) (not e!1020778))))

(assert (=> b!1589161 (= res!708993 (isBalanced!1721 (++!4569 (c!257383 (BalanceConc!11553 Empty!5804)) (c!257383 (charsOf!1727 (apply!4303 lt!560813 0))))))))

(declare-fun b!1589163 () Bool)

(declare-fun res!708992 () Bool)

(assert (=> b!1589163 (=> (not res!708992) (not e!1020778))))

(assert (=> b!1589163 (= res!708992 (>= (height!862 (++!4569 (c!257383 (BalanceConc!11553 Empty!5804)) (c!257383 (charsOf!1727 (apply!4303 lt!560813 0))))) (max!0 (height!862 (c!257383 (BalanceConc!11553 Empty!5804))) (height!862 (c!257383 (charsOf!1727 (apply!4303 lt!560813 0)))))))))

(declare-fun b!1589164 () Bool)

(assert (=> b!1589164 (= e!1020778 (= (list!6789 lt!561576) (++!4565 (list!6789 (BalanceConc!11553 Empty!5804)) (list!6789 (charsOf!1727 (apply!4303 lt!560813 0))))))))

(assert (= (and d!472906 res!708995) b!1589161))

(assert (= (and b!1589161 res!708993) b!1589162))

(assert (= (and b!1589162 res!708994) b!1589163))

(assert (= (and b!1589163 res!708992) b!1589164))

(declare-fun m!1881131 () Bool)

(assert (=> b!1589164 m!1881131))

(assert (=> b!1589164 m!1880205))

(assert (=> b!1589164 m!1880217))

(declare-fun m!1881133 () Bool)

(assert (=> b!1589164 m!1881133))

(assert (=> b!1589164 m!1880205))

(assert (=> b!1589164 m!1881133))

(declare-fun m!1881135 () Bool)

(assert (=> b!1589164 m!1881135))

(declare-fun m!1881137 () Bool)

(assert (=> d!472906 m!1881137))

(declare-fun m!1881139 () Bool)

(assert (=> d!472906 m!1881139))

(declare-fun m!1881141 () Bool)

(assert (=> b!1589163 m!1881141))

(declare-fun m!1881143 () Bool)

(assert (=> b!1589163 m!1881143))

(assert (=> b!1589163 m!1881141))

(assert (=> b!1589163 m!1881143))

(declare-fun m!1881145 () Bool)

(assert (=> b!1589163 m!1881145))

(assert (=> b!1589163 m!1881139))

(assert (=> b!1589163 m!1881139))

(declare-fun m!1881147 () Bool)

(assert (=> b!1589163 m!1881147))

(assert (=> b!1589161 m!1881139))

(assert (=> b!1589161 m!1881139))

(declare-fun m!1881149 () Bool)

(assert (=> b!1589161 m!1881149))

(assert (=> b!1589162 m!1881141))

(assert (=> b!1589162 m!1881143))

(assert (=> b!1589162 m!1881141))

(assert (=> b!1589162 m!1881143))

(assert (=> b!1589162 m!1881145))

(assert (=> b!1589162 m!1881139))

(assert (=> b!1589162 m!1881139))

(assert (=> b!1589162 m!1881147))

(assert (=> b!1588730 d!472906))

(declare-fun b!1589165 () Bool)

(declare-fun e!1020780 () List!17550)

(assert (=> b!1589165 (= e!1020780 Nil!17480)))

(declare-fun b!1589167 () Bool)

(declare-fun e!1020782 () List!17550)

(assert (=> b!1589167 (= e!1020782 (drop!829 (t!144429 lt!561049) (- 0 1)))))

(declare-fun b!1589168 () Bool)

(assert (=> b!1589168 (= e!1020782 lt!561049)))

(declare-fun b!1589169 () Bool)

(declare-fun e!1020779 () Int)

(declare-fun call!102963 () Int)

(assert (=> b!1589169 (= e!1020779 (- call!102963 0))))

(declare-fun bm!102958 () Bool)

(assert (=> bm!102958 (= call!102963 (size!14063 lt!561049))))

(declare-fun b!1589170 () Bool)

(declare-fun e!1020783 () Int)

(assert (=> b!1589170 (= e!1020783 call!102963)))

(declare-fun b!1589171 () Bool)

(assert (=> b!1589171 (= e!1020779 0)))

(declare-fun b!1589172 () Bool)

(assert (=> b!1589172 (= e!1020780 e!1020782)))

(declare-fun c!257493 () Bool)

(assert (=> b!1589172 (= c!257493 (<= 0 0))))

(declare-fun b!1589173 () Bool)

(assert (=> b!1589173 (= e!1020783 e!1020779)))

(declare-fun c!257491 () Bool)

(assert (=> b!1589173 (= c!257491 (>= 0 call!102963))))

(declare-fun d!472908 () Bool)

(declare-fun e!1020781 () Bool)

(assert (=> d!472908 e!1020781))

(declare-fun res!708996 () Bool)

(assert (=> d!472908 (=> (not res!708996) (not e!1020781))))

(declare-fun lt!561577 () List!17550)

(assert (=> d!472908 (= res!708996 (set.subset (content!2410 lt!561577) (content!2410 lt!561049)))))

(assert (=> d!472908 (= lt!561577 e!1020780)))

(declare-fun c!257492 () Bool)

(assert (=> d!472908 (= c!257492 (is-Nil!17480 lt!561049))))

(assert (=> d!472908 (= (drop!829 lt!561049 0) lt!561577)))

(declare-fun b!1589166 () Bool)

(assert (=> b!1589166 (= e!1020781 (= (size!14063 lt!561577) e!1020783))))

(declare-fun c!257494 () Bool)

(assert (=> b!1589166 (= c!257494 (<= 0 0))))

(assert (= (and d!472908 c!257492) b!1589165))

(assert (= (and d!472908 (not c!257492)) b!1589172))

(assert (= (and b!1589172 c!257493) b!1589168))

(assert (= (and b!1589172 (not c!257493)) b!1589167))

(assert (= (and d!472908 res!708996) b!1589166))

(assert (= (and b!1589166 c!257494) b!1589170))

(assert (= (and b!1589166 (not c!257494)) b!1589173))

(assert (= (and b!1589173 c!257491) b!1589171))

(assert (= (and b!1589173 (not c!257491)) b!1589169))

(assert (= (or b!1589170 b!1589173 b!1589169) bm!102958))

(declare-fun m!1881151 () Bool)

(assert (=> b!1589167 m!1881151))

(assert (=> bm!102958 m!1881075))

(declare-fun m!1881153 () Bool)

(assert (=> d!472908 m!1881153))

(declare-fun m!1881155 () Bool)

(assert (=> d!472908 m!1881155))

(declare-fun m!1881157 () Bool)

(assert (=> b!1589166 m!1881157))

(assert (=> b!1588730 d!472908))

(declare-fun d!472910 () Bool)

(declare-fun lt!561580 () Token!5722)

(assert (=> d!472910 (= lt!561580 (apply!4304 (list!6790 lt!560813) 0))))

(declare-fun apply!4313 (Conc!5805 Int) Token!5722)

(assert (=> d!472910 (= lt!561580 (apply!4313 (c!257385 lt!560813) 0))))

(declare-fun e!1020786 () Bool)

(assert (=> d!472910 e!1020786))

(declare-fun res!708999 () Bool)

(assert (=> d!472910 (=> (not res!708999) (not e!1020786))))

(assert (=> d!472910 (= res!708999 (<= 0 0))))

(assert (=> d!472910 (= (apply!4303 lt!560813 0) lt!561580)))

(declare-fun b!1589176 () Bool)

(assert (=> b!1589176 (= e!1020786 (< 0 (size!14059 lt!560813)))))

(assert (= (and d!472910 res!708999) b!1589176))

(assert (=> d!472910 m!1880197))

(assert (=> d!472910 m!1880197))

(declare-fun m!1881159 () Bool)

(assert (=> d!472910 m!1881159))

(declare-fun m!1881161 () Bool)

(assert (=> d!472910 m!1881161))

(assert (=> b!1589176 m!1880201))

(assert (=> b!1588730 d!472910))

(declare-fun d!472912 () Bool)

(declare-fun res!709004 () Bool)

(declare-fun e!1020791 () Bool)

(assert (=> d!472912 (=> res!709004 e!1020791)))

(assert (=> d!472912 (= res!709004 (is-Nil!17479 rules!1846))))

(assert (=> d!472912 (= (noDuplicateTag!1093 thiss!17113 rules!1846 Nil!17485) e!1020791)))

(declare-fun b!1589181 () Bool)

(declare-fun e!1020792 () Bool)

(assert (=> b!1589181 (= e!1020791 e!1020792)))

(declare-fun res!709005 () Bool)

(assert (=> b!1589181 (=> (not res!709005) (not e!1020792))))

(declare-fun contains!3054 (List!17555 String!20174) Bool)

(assert (=> b!1589181 (= res!709005 (not (contains!3054 Nil!17485 (tag!3348 (h!22880 rules!1846)))))))

(declare-fun b!1589182 () Bool)

(assert (=> b!1589182 (= e!1020792 (noDuplicateTag!1093 thiss!17113 (t!144428 rules!1846) (Cons!17485 (tag!3348 (h!22880 rules!1846)) Nil!17485)))))

(assert (= (and d!472912 (not res!709004)) b!1589181))

(assert (= (and b!1589181 res!709005) b!1589182))

(declare-fun m!1881163 () Bool)

(assert (=> b!1589181 m!1881163))

(declare-fun m!1881165 () Bool)

(assert (=> b!1589182 m!1881165))

(assert (=> b!1588608 d!472912))

(declare-fun e!1020794 () Bool)

(declare-fun b!1589186 () Bool)

(assert (=> b!1589186 (= e!1020794 (>= (size!14057 (++!4565 lt!560815 lt!560831)) (size!14057 lt!560990)))))

(declare-fun d!472914 () Bool)

(assert (=> d!472914 e!1020794))

(declare-fun res!709009 () Bool)

(assert (=> d!472914 (=> res!709009 e!1020794)))

(declare-fun lt!561581 () Bool)

(assert (=> d!472914 (= res!709009 (not lt!561581))))

(declare-fun e!1020793 () Bool)

(assert (=> d!472914 (= lt!561581 e!1020793)))

(declare-fun res!709008 () Bool)

(assert (=> d!472914 (=> res!709008 e!1020793)))

(assert (=> d!472914 (= res!709008 (is-Nil!17478 lt!560990))))

(assert (=> d!472914 (= (isPrefix!1338 lt!560990 (++!4565 lt!560815 lt!560831)) lt!561581)))

(declare-fun b!1589183 () Bool)

(declare-fun e!1020795 () Bool)

(assert (=> b!1589183 (= e!1020793 e!1020795)))

(declare-fun res!709007 () Bool)

(assert (=> b!1589183 (=> (not res!709007) (not e!1020795))))

(assert (=> b!1589183 (= res!709007 (not (is-Nil!17478 (++!4565 lt!560815 lt!560831))))))

(declare-fun b!1589185 () Bool)

(assert (=> b!1589185 (= e!1020795 (isPrefix!1338 (tail!2285 lt!560990) (tail!2285 (++!4565 lt!560815 lt!560831))))))

(declare-fun b!1589184 () Bool)

(declare-fun res!709006 () Bool)

(assert (=> b!1589184 (=> (not res!709006) (not e!1020795))))

(assert (=> b!1589184 (= res!709006 (= (head!3239 lt!560990) (head!3239 (++!4565 lt!560815 lt!560831))))))

(assert (= (and d!472914 (not res!709008)) b!1589183))

(assert (= (and b!1589183 res!709007) b!1589184))

(assert (= (and b!1589184 res!709006) b!1589185))

(assert (= (and d!472914 (not res!709009)) b!1589186))

(assert (=> b!1589186 m!1879785))

(declare-fun m!1881167 () Bool)

(assert (=> b!1589186 m!1881167))

(declare-fun m!1881169 () Bool)

(assert (=> b!1589186 m!1881169))

(declare-fun m!1881171 () Bool)

(assert (=> b!1589185 m!1881171))

(assert (=> b!1589185 m!1879785))

(declare-fun m!1881173 () Bool)

(assert (=> b!1589185 m!1881173))

(assert (=> b!1589185 m!1881171))

(assert (=> b!1589185 m!1881173))

(declare-fun m!1881175 () Bool)

(assert (=> b!1589185 m!1881175))

(declare-fun m!1881177 () Bool)

(assert (=> b!1589184 m!1881177))

(assert (=> b!1589184 m!1879785))

(declare-fun m!1881179 () Bool)

(assert (=> b!1589184 m!1881179))

(assert (=> d!472720 d!472914))

(declare-fun b!1589188 () Bool)

(declare-fun e!1020797 () List!17548)

(assert (=> b!1589188 (= e!1020797 (Cons!17478 (h!22879 lt!560992) (++!4565 (t!144427 lt!560992) lt!560991)))))

(declare-fun b!1589189 () Bool)

(declare-fun res!709011 () Bool)

(declare-fun e!1020796 () Bool)

(assert (=> b!1589189 (=> (not res!709011) (not e!1020796))))

(declare-fun lt!561582 () List!17548)

(assert (=> b!1589189 (= res!709011 (= (size!14057 lt!561582) (+ (size!14057 lt!560992) (size!14057 lt!560991))))))

(declare-fun b!1589190 () Bool)

(assert (=> b!1589190 (= e!1020796 (or (not (= lt!560991 Nil!17478)) (= lt!561582 lt!560992)))))

(declare-fun d!472916 () Bool)

(assert (=> d!472916 e!1020796))

(declare-fun res!709010 () Bool)

(assert (=> d!472916 (=> (not res!709010) (not e!1020796))))

(assert (=> d!472916 (= res!709010 (= (content!2408 lt!561582) (set.union (content!2408 lt!560992) (content!2408 lt!560991))))))

(assert (=> d!472916 (= lt!561582 e!1020797)))

(declare-fun c!257495 () Bool)

(assert (=> d!472916 (= c!257495 (is-Nil!17478 lt!560992))))

(assert (=> d!472916 (= (++!4565 lt!560992 lt!560991) lt!561582)))

(declare-fun b!1589187 () Bool)

(assert (=> b!1589187 (= e!1020797 lt!560991)))

(assert (= (and d!472916 c!257495) b!1589187))

(assert (= (and d!472916 (not c!257495)) b!1589188))

(assert (= (and d!472916 res!709010) b!1589189))

(assert (= (and b!1589189 res!709011) b!1589190))

(declare-fun m!1881181 () Bool)

(assert (=> b!1589188 m!1881181))

(declare-fun m!1881183 () Bool)

(assert (=> b!1589189 m!1881183))

(declare-fun m!1881185 () Bool)

(assert (=> b!1589189 m!1881185))

(declare-fun m!1881187 () Bool)

(assert (=> b!1589189 m!1881187))

(declare-fun m!1881189 () Bool)

(assert (=> d!472916 m!1881189))

(declare-fun m!1881191 () Bool)

(assert (=> d!472916 m!1881191))

(declare-fun m!1881193 () Bool)

(assert (=> d!472916 m!1881193))

(assert (=> d!472720 d!472916))

(declare-fun d!472918 () Bool)

(assert (=> d!472918 (= (isEmpty!10504 (maxPrefix!1271 thiss!17113 rules!1846 (++!4565 lt!560815 lt!560831))) (not (is-Some!3150 (maxPrefix!1271 thiss!17113 rules!1846 (++!4565 lt!560815 lt!560831)))))))

(assert (=> d!472720 d!472918))

(declare-fun d!472920 () Bool)

(assert (=> d!472920 (= (isDefined!2526 (maxPrefix!1271 thiss!17113 rules!1846 (++!4565 lt!560815 lt!560831))) (not (isEmpty!10504 (maxPrefix!1271 thiss!17113 rules!1846 (++!4565 lt!560815 lt!560831)))))))

(declare-fun bs!391628 () Bool)

(assert (= bs!391628 d!472920))

(assert (=> bs!391628 m!1880091))

(assert (=> bs!391628 m!1880101))

(assert (=> d!472720 d!472920))

(declare-fun d!472922 () Bool)

(declare-fun e!1020800 () Bool)

(assert (=> d!472922 e!1020800))

(declare-fun res!709016 () Bool)

(assert (=> d!472922 (=> (not res!709016) (not e!1020800))))

(assert (=> d!472922 (= res!709016 (isDefined!2528 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995)))))))

(declare-fun lt!561585 () Unit!27502)

(declare-fun choose!9519 (LexerInterface!2707 List!17549 List!17548 Token!5722) Unit!27502)

(assert (=> d!472922 (= lt!561585 (choose!9519 thiss!17113 rules!1846 lt!560815 lt!560995))))

(assert (=> d!472922 (rulesInvariant!2376 thiss!17113 rules!1846)))

(assert (=> d!472922 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!249 thiss!17113 rules!1846 lt!560815 lt!560995) lt!561585)))

(declare-fun b!1589195 () Bool)

(declare-fun res!709017 () Bool)

(assert (=> b!1589195 (=> (not res!709017) (not e!1020800))))

(assert (=> b!1589195 (= res!709017 (matchR!1925 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995))))) (list!6789 (charsOf!1727 lt!560995))))))

(declare-fun b!1589196 () Bool)

(assert (=> b!1589196 (= e!1020800 (= (rule!4882 lt!560995) (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995))))))))

(assert (= (and d!472922 res!709016) b!1589195))

(assert (= (and b!1589195 res!709017) b!1589196))

(assert (=> d!472922 m!1880081))

(assert (=> d!472922 m!1880081))

(assert (=> d!472922 m!1880083))

(declare-fun m!1881195 () Bool)

(assert (=> d!472922 m!1881195))

(assert (=> d!472922 m!1879773))

(assert (=> b!1589195 m!1880081))

(assert (=> b!1589195 m!1880105))

(assert (=> b!1589195 m!1880081))

(assert (=> b!1589195 m!1880079))

(assert (=> b!1589195 m!1880107))

(assert (=> b!1589195 m!1880077))

(assert (=> b!1589195 m!1880077))

(assert (=> b!1589195 m!1880079))

(assert (=> b!1589196 m!1880081))

(assert (=> b!1589196 m!1880081))

(assert (=> b!1589196 m!1880105))

(assert (=> d!472720 d!472922))

(declare-fun d!472924 () Bool)

(assert (=> d!472924 (isPrefix!1338 lt!560992 (++!4565 lt!560992 lt!560991))))

(declare-fun lt!561586 () Unit!27502)

(assert (=> d!472924 (= lt!561586 (choose!9515 lt!560992 lt!560991))))

(assert (=> d!472924 (= (lemmaConcatTwoListThenFirstIsPrefix!863 lt!560992 lt!560991) lt!561586)))

(declare-fun bs!391629 () Bool)

(assert (= bs!391629 d!472924))

(assert (=> bs!391629 m!1880071))

(assert (=> bs!391629 m!1880071))

(assert (=> bs!391629 m!1880073))

(declare-fun m!1881197 () Bool)

(assert (=> bs!391629 m!1881197))

(assert (=> d!472720 d!472924))

(declare-fun b!1589210 () Bool)

(declare-fun lt!561594 () Unit!27502)

(declare-fun lt!561595 () Unit!27502)

(assert (=> b!1589210 (= lt!561594 lt!561595)))

(assert (=> b!1589210 (rulesInvariant!2376 thiss!17113 (t!144428 rules!1846))))

(declare-fun lemmaInvariantOnRulesThenOnTail!93 (LexerInterface!2707 Rule!5956 List!17549) Unit!27502)

(assert (=> b!1589210 (= lt!561595 (lemmaInvariantOnRulesThenOnTail!93 thiss!17113 (h!22880 rules!1846) (t!144428 rules!1846)))))

(declare-fun e!1020812 () Option!3153)

(assert (=> b!1589210 (= e!1020812 (getRuleFromTag!249 thiss!17113 (t!144428 rules!1846) (tag!3348 (rule!4882 lt!560995))))))

(declare-fun b!1589211 () Bool)

(declare-fun e!1020811 () Bool)

(declare-fun e!1020810 () Bool)

(assert (=> b!1589211 (= e!1020811 e!1020810)))

(declare-fun res!709022 () Bool)

(assert (=> b!1589211 (=> (not res!709022) (not e!1020810))))

(declare-fun lt!561593 () Option!3153)

(assert (=> b!1589211 (= res!709022 (contains!3051 rules!1846 (get!5003 lt!561593)))))

(declare-fun b!1589212 () Bool)

(assert (=> b!1589212 (= e!1020810 (= (tag!3348 (get!5003 lt!561593)) (tag!3348 (rule!4882 lt!560995))))))

(declare-fun b!1589213 () Bool)

(declare-fun e!1020809 () Option!3153)

(assert (=> b!1589213 (= e!1020809 (Some!3152 (h!22880 rules!1846)))))

(declare-fun b!1589214 () Bool)

(assert (=> b!1589214 (= e!1020809 e!1020812)))

(declare-fun c!257501 () Bool)

(assert (=> b!1589214 (= c!257501 (and (is-Cons!17479 rules!1846) (not (= (tag!3348 (h!22880 rules!1846)) (tag!3348 (rule!4882 lt!560995))))))))

(declare-fun b!1589209 () Bool)

(assert (=> b!1589209 (= e!1020812 None!3152)))

(declare-fun d!472926 () Bool)

(assert (=> d!472926 e!1020811))

(declare-fun res!709023 () Bool)

(assert (=> d!472926 (=> res!709023 e!1020811)))

(declare-fun isEmpty!10514 (Option!3153) Bool)

(assert (=> d!472926 (= res!709023 (isEmpty!10514 lt!561593))))

(assert (=> d!472926 (= lt!561593 e!1020809)))

(declare-fun c!257500 () Bool)

(assert (=> d!472926 (= c!257500 (and (is-Cons!17479 rules!1846) (= (tag!3348 (h!22880 rules!1846)) (tag!3348 (rule!4882 lt!560995)))))))

(assert (=> d!472926 (rulesInvariant!2376 thiss!17113 rules!1846)))

(assert (=> d!472926 (= (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995))) lt!561593)))

(assert (= (and d!472926 c!257500) b!1589213))

(assert (= (and d!472926 (not c!257500)) b!1589214))

(assert (= (and b!1589214 c!257501) b!1589210))

(assert (= (and b!1589214 (not c!257501)) b!1589209))

(assert (= (and d!472926 (not res!709023)) b!1589211))

(assert (= (and b!1589211 res!709022) b!1589212))

(declare-fun m!1881199 () Bool)

(assert (=> b!1589210 m!1881199))

(declare-fun m!1881201 () Bool)

(assert (=> b!1589210 m!1881201))

(declare-fun m!1881203 () Bool)

(assert (=> b!1589210 m!1881203))

(declare-fun m!1881205 () Bool)

(assert (=> b!1589211 m!1881205))

(assert (=> b!1589211 m!1881205))

(declare-fun m!1881207 () Bool)

(assert (=> b!1589211 m!1881207))

(assert (=> b!1589212 m!1881205))

(declare-fun m!1881209 () Bool)

(assert (=> d!472926 m!1881209))

(assert (=> d!472926 m!1879773))

(assert (=> d!472720 d!472926))

(declare-fun d!472928 () Bool)

(assert (=> d!472928 (= (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815)))) (list!6794 (c!257385 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))))))

(declare-fun bs!391630 () Bool)

(assert (= bs!391630 d!472928))

(declare-fun m!1881211 () Bool)

(assert (=> bs!391630 m!1881211))

(assert (=> d!472720 d!472928))

(declare-fun d!472930 () Bool)

(declare-fun lt!561596 () BalanceConc!11552)

(assert (=> d!472930 (= (list!6789 lt!561596) (originalCharacters!3892 lt!560995))))

(assert (=> d!472930 (= lt!561596 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 lt!560995))) (value!97397 lt!560995)))))

(assert (=> d!472930 (= (charsOf!1727 lt!560995) lt!561596)))

(declare-fun b_lambda!50019 () Bool)

(assert (=> (not b_lambda!50019) (not d!472930)))

(declare-fun t!144491 () Bool)

(declare-fun tb!89439 () Bool)

(assert (=> (and b!1588488 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 lt!560995)))) t!144491) tb!89439))

(declare-fun b!1589215 () Bool)

(declare-fun e!1020813 () Bool)

(declare-fun tp!467044 () Bool)

(assert (=> b!1589215 (= e!1020813 (and (inv!22891 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 lt!560995))) (value!97397 lt!560995)))) tp!467044))))

(declare-fun result!108306 () Bool)

(assert (=> tb!89439 (= result!108306 (and (inv!22892 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 lt!560995))) (value!97397 lt!560995))) e!1020813))))

(assert (= tb!89439 b!1589215))

(declare-fun m!1881213 () Bool)

(assert (=> b!1589215 m!1881213))

(declare-fun m!1881215 () Bool)

(assert (=> tb!89439 m!1881215))

(assert (=> d!472930 t!144491))

(declare-fun b_and!111469 () Bool)

(assert (= b_and!111461 (and (=> t!144491 result!108306) b_and!111469)))

(declare-fun t!144493 () Bool)

(declare-fun tb!89441 () Bool)

(assert (=> (and b!1588496 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toChars!4348 (transformation!3078 (rule!4882 lt!560995)))) t!144493) tb!89441))

(declare-fun result!108308 () Bool)

(assert (= result!108308 result!108306))

(assert (=> d!472930 t!144493))

(declare-fun b_and!111471 () Bool)

(assert (= b_and!111463 (and (=> t!144493 result!108308) b_and!111471)))

(declare-fun t!144495 () Bool)

(declare-fun tb!89443 () Bool)

(assert (=> (and b!1588974 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 lt!560995)))) t!144495) tb!89443))

(declare-fun result!108310 () Bool)

(assert (= result!108310 result!108306))

(assert (=> d!472930 t!144495))

(declare-fun b_and!111473 () Bool)

(assert (= b_and!111465 (and (=> t!144495 result!108310) b_and!111473)))

(declare-fun tb!89445 () Bool)

(declare-fun t!144497 () Bool)

(assert (=> (and b!1588988 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toChars!4348 (transformation!3078 (rule!4882 lt!560995)))) t!144497) tb!89445))

(declare-fun result!108312 () Bool)

(assert (= result!108312 result!108306))

(assert (=> d!472930 t!144497))

(declare-fun b_and!111475 () Bool)

(assert (= b_and!111467 (and (=> t!144497 result!108312) b_and!111475)))

(declare-fun m!1881217 () Bool)

(assert (=> d!472930 m!1881217))

(declare-fun m!1881219 () Bool)

(assert (=> d!472930 m!1881219))

(assert (=> d!472720 d!472930))

(declare-fun b!1589216 () Bool)

(declare-fun e!1020814 () Option!3151)

(declare-fun lt!561598 () Option!3151)

(declare-fun lt!561601 () Option!3151)

(assert (=> b!1589216 (= e!1020814 (ite (and (is-None!3150 lt!561598) (is-None!3150 lt!561601)) None!3150 (ite (is-None!3150 lt!561601) lt!561598 (ite (is-None!3150 lt!561598) lt!561601 (ite (>= (size!14055 (_1!9880 (v!24043 lt!561598))) (size!14055 (_1!9880 (v!24043 lt!561601)))) lt!561598 lt!561601)))))))

(declare-fun call!102964 () Option!3151)

(assert (=> b!1589216 (= lt!561598 call!102964)))

(assert (=> b!1589216 (= lt!561601 (maxPrefix!1271 thiss!17113 (t!144428 rules!1846) lt!560815))))

(declare-fun b!1589217 () Bool)

(declare-fun e!1020815 () Bool)

(declare-fun lt!561597 () Option!3151)

(assert (=> b!1589217 (= e!1020815 (contains!3051 rules!1846 (rule!4882 (_1!9880 (get!5002 lt!561597)))))))

(declare-fun b!1589218 () Bool)

(declare-fun e!1020816 () Bool)

(assert (=> b!1589218 (= e!1020816 e!1020815)))

(declare-fun res!709028 () Bool)

(assert (=> b!1589218 (=> (not res!709028) (not e!1020815))))

(assert (=> b!1589218 (= res!709028 (isDefined!2526 lt!561597))))

(declare-fun b!1589219 () Bool)

(declare-fun res!709029 () Bool)

(assert (=> b!1589219 (=> (not res!709029) (not e!1020815))))

(assert (=> b!1589219 (= res!709029 (= (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561597)))) (originalCharacters!3892 (_1!9880 (get!5002 lt!561597)))))))

(declare-fun b!1589220 () Bool)

(declare-fun res!709025 () Bool)

(assert (=> b!1589220 (=> (not res!709025) (not e!1020815))))

(assert (=> b!1589220 (= res!709025 (= (++!4565 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561597)))) (_2!9880 (get!5002 lt!561597))) lt!560815))))

(declare-fun b!1589221 () Bool)

(declare-fun res!709026 () Bool)

(assert (=> b!1589221 (=> (not res!709026) (not e!1020815))))

(assert (=> b!1589221 (= res!709026 (< (size!14057 (_2!9880 (get!5002 lt!561597))) (size!14057 lt!560815)))))

(declare-fun d!472932 () Bool)

(assert (=> d!472932 e!1020816))

(declare-fun res!709030 () Bool)

(assert (=> d!472932 (=> res!709030 e!1020816)))

(assert (=> d!472932 (= res!709030 (isEmpty!10504 lt!561597))))

(assert (=> d!472932 (= lt!561597 e!1020814)))

(declare-fun c!257502 () Bool)

(assert (=> d!472932 (= c!257502 (and (is-Cons!17479 rules!1846) (is-Nil!17479 (t!144428 rules!1846))))))

(declare-fun lt!561600 () Unit!27502)

(declare-fun lt!561599 () Unit!27502)

(assert (=> d!472932 (= lt!561600 lt!561599)))

(assert (=> d!472932 (isPrefix!1338 lt!560815 lt!560815)))

(assert (=> d!472932 (= lt!561599 (lemmaIsPrefixRefl!925 lt!560815 lt!560815))))

(assert (=> d!472932 (rulesValidInductive!927 thiss!17113 rules!1846)))

(assert (=> d!472932 (= (maxPrefix!1271 thiss!17113 rules!1846 lt!560815) lt!561597)))

(declare-fun bm!102959 () Bool)

(assert (=> bm!102959 (= call!102964 (maxPrefixOneRule!740 thiss!17113 (h!22880 rules!1846) lt!560815))))

(declare-fun b!1589222 () Bool)

(declare-fun res!709027 () Bool)

(assert (=> b!1589222 (=> (not res!709027) (not e!1020815))))

(assert (=> b!1589222 (= res!709027 (matchR!1925 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561597)))) (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561597))))))))

(declare-fun b!1589223 () Bool)

(assert (=> b!1589223 (= e!1020814 call!102964)))

(declare-fun b!1589224 () Bool)

(declare-fun res!709024 () Bool)

(assert (=> b!1589224 (=> (not res!709024) (not e!1020815))))

(assert (=> b!1589224 (= res!709024 (= (value!97397 (_1!9880 (get!5002 lt!561597))) (apply!4305 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561597)))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!561597)))))))))

(assert (= (and d!472932 c!257502) b!1589223))

(assert (= (and d!472932 (not c!257502)) b!1589216))

(assert (= (or b!1589223 b!1589216) bm!102959))

(assert (= (and d!472932 (not res!709030)) b!1589218))

(assert (= (and b!1589218 res!709028) b!1589219))

(assert (= (and b!1589219 res!709029) b!1589221))

(assert (= (and b!1589221 res!709026) b!1589220))

(assert (= (and b!1589220 res!709025) b!1589224))

(assert (= (and b!1589224 res!709024) b!1589222))

(assert (= (and b!1589222 res!709027) b!1589217))

(declare-fun m!1881221 () Bool)

(assert (=> b!1589217 m!1881221))

(declare-fun m!1881223 () Bool)

(assert (=> b!1589217 m!1881223))

(assert (=> b!1589219 m!1881221))

(declare-fun m!1881225 () Bool)

(assert (=> b!1589219 m!1881225))

(assert (=> b!1589219 m!1881225))

(declare-fun m!1881227 () Bool)

(assert (=> b!1589219 m!1881227))

(declare-fun m!1881229 () Bool)

(assert (=> bm!102959 m!1881229))

(assert (=> b!1589221 m!1881221))

(declare-fun m!1881231 () Bool)

(assert (=> b!1589221 m!1881231))

(assert (=> b!1589221 m!1879967))

(declare-fun m!1881233 () Bool)

(assert (=> b!1589216 m!1881233))

(assert (=> b!1589222 m!1881221))

(assert (=> b!1589222 m!1881225))

(assert (=> b!1589222 m!1881225))

(assert (=> b!1589222 m!1881227))

(assert (=> b!1589222 m!1881227))

(declare-fun m!1881235 () Bool)

(assert (=> b!1589222 m!1881235))

(assert (=> b!1589224 m!1881221))

(declare-fun m!1881237 () Bool)

(assert (=> b!1589224 m!1881237))

(assert (=> b!1589224 m!1881237))

(declare-fun m!1881239 () Bool)

(assert (=> b!1589224 m!1881239))

(declare-fun m!1881241 () Bool)

(assert (=> b!1589218 m!1881241))

(assert (=> b!1589220 m!1881221))

(assert (=> b!1589220 m!1881225))

(assert (=> b!1589220 m!1881225))

(assert (=> b!1589220 m!1881227))

(assert (=> b!1589220 m!1881227))

(declare-fun m!1881243 () Bool)

(assert (=> b!1589220 m!1881243))

(declare-fun m!1881245 () Bool)

(assert (=> d!472932 m!1881245))

(declare-fun m!1881247 () Bool)

(assert (=> d!472932 m!1881247))

(declare-fun m!1881249 () Bool)

(assert (=> d!472932 m!1881249))

(assert (=> d!472932 m!1880275))

(assert (=> d!472720 d!472932))

(assert (=> d!472720 d!472676))

(declare-fun d!472934 () Bool)

(assert (=> d!472934 (= (head!3238 (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))) (h!22881 (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))))))

(assert (=> d!472720 d!472934))

(assert (=> d!472720 d!472670))

(declare-fun b!1589228 () Bool)

(declare-fun e!1020818 () Bool)

(assert (=> b!1589228 (= e!1020818 (>= (size!14057 (++!4565 lt!560992 lt!560991)) (size!14057 lt!560992)))))

(declare-fun d!472936 () Bool)

(assert (=> d!472936 e!1020818))

(declare-fun res!709034 () Bool)

(assert (=> d!472936 (=> res!709034 e!1020818)))

(declare-fun lt!561602 () Bool)

(assert (=> d!472936 (= res!709034 (not lt!561602))))

(declare-fun e!1020817 () Bool)

(assert (=> d!472936 (= lt!561602 e!1020817)))

(declare-fun res!709033 () Bool)

(assert (=> d!472936 (=> res!709033 e!1020817)))

(assert (=> d!472936 (= res!709033 (is-Nil!17478 lt!560992))))

(assert (=> d!472936 (= (isPrefix!1338 lt!560992 (++!4565 lt!560992 lt!560991)) lt!561602)))

(declare-fun b!1589225 () Bool)

(declare-fun e!1020819 () Bool)

(assert (=> b!1589225 (= e!1020817 e!1020819)))

(declare-fun res!709032 () Bool)

(assert (=> b!1589225 (=> (not res!709032) (not e!1020819))))

(assert (=> b!1589225 (= res!709032 (not (is-Nil!17478 (++!4565 lt!560992 lt!560991))))))

(declare-fun b!1589227 () Bool)

(assert (=> b!1589227 (= e!1020819 (isPrefix!1338 (tail!2285 lt!560992) (tail!2285 (++!4565 lt!560992 lt!560991))))))

(declare-fun b!1589226 () Bool)

(declare-fun res!709031 () Bool)

(assert (=> b!1589226 (=> (not res!709031) (not e!1020819))))

(assert (=> b!1589226 (= res!709031 (= (head!3239 lt!560992) (head!3239 (++!4565 lt!560992 lt!560991))))))

(assert (= (and d!472936 (not res!709033)) b!1589225))

(assert (= (and b!1589225 res!709032) b!1589226))

(assert (= (and b!1589226 res!709031) b!1589227))

(assert (= (and d!472936 (not res!709034)) b!1589228))

(assert (=> b!1589228 m!1880071))

(declare-fun m!1881251 () Bool)

(assert (=> b!1589228 m!1881251))

(assert (=> b!1589228 m!1881185))

(declare-fun m!1881253 () Bool)

(assert (=> b!1589227 m!1881253))

(assert (=> b!1589227 m!1880071))

(declare-fun m!1881255 () Bool)

(assert (=> b!1589227 m!1881255))

(assert (=> b!1589227 m!1881253))

(assert (=> b!1589227 m!1881255))

(declare-fun m!1881257 () Bool)

(assert (=> b!1589227 m!1881257))

(declare-fun m!1881259 () Bool)

(assert (=> b!1589226 m!1881259))

(assert (=> b!1589226 m!1880071))

(declare-fun m!1881261 () Bool)

(assert (=> b!1589226 m!1881261))

(assert (=> d!472720 d!472936))

(declare-fun b!1589229 () Bool)

(declare-fun e!1020820 () Option!3151)

(declare-fun lt!561604 () Option!3151)

(declare-fun lt!561607 () Option!3151)

(assert (=> b!1589229 (= e!1020820 (ite (and (is-None!3150 lt!561604) (is-None!3150 lt!561607)) None!3150 (ite (is-None!3150 lt!561607) lt!561604 (ite (is-None!3150 lt!561604) lt!561607 (ite (>= (size!14055 (_1!9880 (v!24043 lt!561604))) (size!14055 (_1!9880 (v!24043 lt!561607)))) lt!561604 lt!561607)))))))

(declare-fun call!102965 () Option!3151)

(assert (=> b!1589229 (= lt!561604 call!102965)))

(assert (=> b!1589229 (= lt!561607 (maxPrefix!1271 thiss!17113 (t!144428 rules!1846) (++!4565 lt!560815 lt!560831)))))

(declare-fun b!1589230 () Bool)

(declare-fun e!1020821 () Bool)

(declare-fun lt!561603 () Option!3151)

(assert (=> b!1589230 (= e!1020821 (contains!3051 rules!1846 (rule!4882 (_1!9880 (get!5002 lt!561603)))))))

(declare-fun b!1589231 () Bool)

(declare-fun e!1020822 () Bool)

(assert (=> b!1589231 (= e!1020822 e!1020821)))

(declare-fun res!709039 () Bool)

(assert (=> b!1589231 (=> (not res!709039) (not e!1020821))))

(assert (=> b!1589231 (= res!709039 (isDefined!2526 lt!561603))))

(declare-fun b!1589232 () Bool)

(declare-fun res!709040 () Bool)

(assert (=> b!1589232 (=> (not res!709040) (not e!1020821))))

(assert (=> b!1589232 (= res!709040 (= (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561603)))) (originalCharacters!3892 (_1!9880 (get!5002 lt!561603)))))))

(declare-fun b!1589233 () Bool)

(declare-fun res!709036 () Bool)

(assert (=> b!1589233 (=> (not res!709036) (not e!1020821))))

(assert (=> b!1589233 (= res!709036 (= (++!4565 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561603)))) (_2!9880 (get!5002 lt!561603))) (++!4565 lt!560815 lt!560831)))))

(declare-fun b!1589234 () Bool)

(declare-fun res!709037 () Bool)

(assert (=> b!1589234 (=> (not res!709037) (not e!1020821))))

(assert (=> b!1589234 (= res!709037 (< (size!14057 (_2!9880 (get!5002 lt!561603))) (size!14057 (++!4565 lt!560815 lt!560831))))))

(declare-fun d!472938 () Bool)

(assert (=> d!472938 e!1020822))

(declare-fun res!709041 () Bool)

(assert (=> d!472938 (=> res!709041 e!1020822)))

(assert (=> d!472938 (= res!709041 (isEmpty!10504 lt!561603))))

(assert (=> d!472938 (= lt!561603 e!1020820)))

(declare-fun c!257503 () Bool)

(assert (=> d!472938 (= c!257503 (and (is-Cons!17479 rules!1846) (is-Nil!17479 (t!144428 rules!1846))))))

(declare-fun lt!561606 () Unit!27502)

(declare-fun lt!561605 () Unit!27502)

(assert (=> d!472938 (= lt!561606 lt!561605)))

(assert (=> d!472938 (isPrefix!1338 (++!4565 lt!560815 lt!560831) (++!4565 lt!560815 lt!560831))))

(assert (=> d!472938 (= lt!561605 (lemmaIsPrefixRefl!925 (++!4565 lt!560815 lt!560831) (++!4565 lt!560815 lt!560831)))))

(assert (=> d!472938 (rulesValidInductive!927 thiss!17113 rules!1846)))

(assert (=> d!472938 (= (maxPrefix!1271 thiss!17113 rules!1846 (++!4565 lt!560815 lt!560831)) lt!561603)))

(declare-fun bm!102960 () Bool)

(assert (=> bm!102960 (= call!102965 (maxPrefixOneRule!740 thiss!17113 (h!22880 rules!1846) (++!4565 lt!560815 lt!560831)))))

(declare-fun b!1589235 () Bool)

(declare-fun res!709038 () Bool)

(assert (=> b!1589235 (=> (not res!709038) (not e!1020821))))

(assert (=> b!1589235 (= res!709038 (matchR!1925 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561603)))) (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561603))))))))

(declare-fun b!1589236 () Bool)

(assert (=> b!1589236 (= e!1020820 call!102965)))

(declare-fun b!1589237 () Bool)

(declare-fun res!709035 () Bool)

(assert (=> b!1589237 (=> (not res!709035) (not e!1020821))))

(assert (=> b!1589237 (= res!709035 (= (value!97397 (_1!9880 (get!5002 lt!561603))) (apply!4305 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561603)))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!561603)))))))))

(assert (= (and d!472938 c!257503) b!1589236))

(assert (= (and d!472938 (not c!257503)) b!1589229))

(assert (= (or b!1589236 b!1589229) bm!102960))

(assert (= (and d!472938 (not res!709041)) b!1589231))

(assert (= (and b!1589231 res!709039) b!1589232))

(assert (= (and b!1589232 res!709040) b!1589234))

(assert (= (and b!1589234 res!709037) b!1589233))

(assert (= (and b!1589233 res!709036) b!1589237))

(assert (= (and b!1589237 res!709035) b!1589235))

(assert (= (and b!1589235 res!709038) b!1589230))

(declare-fun m!1881263 () Bool)

(assert (=> b!1589230 m!1881263))

(declare-fun m!1881265 () Bool)

(assert (=> b!1589230 m!1881265))

(assert (=> b!1589232 m!1881263))

(declare-fun m!1881267 () Bool)

(assert (=> b!1589232 m!1881267))

(assert (=> b!1589232 m!1881267))

(declare-fun m!1881269 () Bool)

(assert (=> b!1589232 m!1881269))

(assert (=> bm!102960 m!1879785))

(declare-fun m!1881271 () Bool)

(assert (=> bm!102960 m!1881271))

(assert (=> b!1589234 m!1881263))

(declare-fun m!1881273 () Bool)

(assert (=> b!1589234 m!1881273))

(assert (=> b!1589234 m!1879785))

(assert (=> b!1589234 m!1881167))

(assert (=> b!1589229 m!1879785))

(declare-fun m!1881275 () Bool)

(assert (=> b!1589229 m!1881275))

(assert (=> b!1589235 m!1881263))

(assert (=> b!1589235 m!1881267))

(assert (=> b!1589235 m!1881267))

(assert (=> b!1589235 m!1881269))

(assert (=> b!1589235 m!1881269))

(declare-fun m!1881277 () Bool)

(assert (=> b!1589235 m!1881277))

(assert (=> b!1589237 m!1881263))

(declare-fun m!1881279 () Bool)

(assert (=> b!1589237 m!1881279))

(assert (=> b!1589237 m!1881279))

(declare-fun m!1881281 () Bool)

(assert (=> b!1589237 m!1881281))

(declare-fun m!1881283 () Bool)

(assert (=> b!1589231 m!1881283))

(assert (=> b!1589233 m!1881263))

(assert (=> b!1589233 m!1881267))

(assert (=> b!1589233 m!1881267))

(assert (=> b!1589233 m!1881269))

(assert (=> b!1589233 m!1881269))

(declare-fun m!1881285 () Bool)

(assert (=> b!1589233 m!1881285))

(declare-fun m!1881287 () Bool)

(assert (=> d!472938 m!1881287))

(assert (=> d!472938 m!1879785))

(assert (=> d!472938 m!1879785))

(declare-fun m!1881289 () Bool)

(assert (=> d!472938 m!1881289))

(assert (=> d!472938 m!1879785))

(assert (=> d!472938 m!1879785))

(declare-fun m!1881291 () Bool)

(assert (=> d!472938 m!1881291))

(assert (=> d!472938 m!1880275))

(assert (=> d!472720 d!472938))

(assert (=> d!472720 d!472726))

(declare-fun d!472942 () Bool)

(assert (=> d!472942 (= (isDefined!2528 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995)))) (not (isEmpty!10514 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995))))))))

(declare-fun bs!391631 () Bool)

(assert (= bs!391631 d!472942))

(assert (=> bs!391631 m!1880081))

(declare-fun m!1881293 () Bool)

(assert (=> bs!391631 m!1881293))

(assert (=> d!472720 d!472942))

(declare-fun d!472944 () Bool)

(assert (=> d!472944 (isPrefix!1338 lt!560990 (++!4565 lt!560815 lt!560831))))

(declare-fun lt!561613 () Unit!27502)

(declare-fun choose!9520 (List!17548 List!17548 List!17548) Unit!27502)

(assert (=> d!472944 (= lt!561613 (choose!9520 lt!560990 lt!560815 lt!560831))))

(assert (=> d!472944 (isPrefix!1338 lt!560990 lt!560815)))

(assert (=> d!472944 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!135 lt!560990 lt!560815 lt!560831) lt!561613)))

(declare-fun bs!391632 () Bool)

(assert (= bs!391632 d!472944))

(assert (=> bs!391632 m!1879785))

(assert (=> bs!391632 m!1879785))

(assert (=> bs!391632 m!1880075))

(declare-fun m!1881301 () Bool)

(assert (=> bs!391632 m!1881301))

(declare-fun m!1881303 () Bool)

(assert (=> bs!391632 m!1881303))

(assert (=> d!472720 d!472944))

(assert (=> d!472720 d!472724))

(declare-fun d!472948 () Bool)

(assert (=> d!472948 (= (list!6789 (charsOf!1727 lt!560995)) (list!6793 (c!257383 (charsOf!1727 lt!560995))))))

(declare-fun bs!391633 () Bool)

(assert (= bs!391633 d!472948))

(declare-fun m!1881305 () Bool)

(assert (=> bs!391633 m!1881305))

(assert (=> d!472720 d!472948))

(declare-fun d!472950 () Bool)

(assert (=> d!472950 (= (get!5002 (maxPrefix!1271 thiss!17113 rules!1846 lt!560815)) (v!24043 (maxPrefix!1271 thiss!17113 rules!1846 lt!560815)))))

(assert (=> d!472720 d!472950))

(declare-fun d!472952 () Bool)

(declare-fun lt!561619 () Int)

(assert (=> d!472952 (>= lt!561619 0)))

(declare-fun e!1020828 () Int)

(assert (=> d!472952 (= lt!561619 e!1020828)))

(declare-fun c!257507 () Bool)

(assert (=> d!472952 (= c!257507 (is-Nil!17478 lt!561002))))

(assert (=> d!472952 (= (size!14057 lt!561002) lt!561619)))

(declare-fun b!1589245 () Bool)

(assert (=> b!1589245 (= e!1020828 0)))

(declare-fun b!1589246 () Bool)

(assert (=> b!1589246 (= e!1020828 (+ 1 (size!14057 (t!144427 lt!561002))))))

(assert (= (and d!472952 c!257507) b!1589245))

(assert (= (and d!472952 (not c!257507)) b!1589246))

(declare-fun m!1881311 () Bool)

(assert (=> b!1589246 m!1881311))

(assert (=> b!1588665 d!472952))

(declare-fun d!472956 () Bool)

(declare-fun lt!561620 () Int)

(assert (=> d!472956 (>= lt!561620 0)))

(declare-fun e!1020829 () Int)

(assert (=> d!472956 (= lt!561620 e!1020829)))

(declare-fun c!257508 () Bool)

(assert (=> d!472956 (= c!257508 (is-Nil!17478 lt!560815))))

(assert (=> d!472956 (= (size!14057 lt!560815) lt!561620)))

(declare-fun b!1589247 () Bool)

(assert (=> b!1589247 (= e!1020829 0)))

(declare-fun b!1589248 () Bool)

(assert (=> b!1589248 (= e!1020829 (+ 1 (size!14057 (t!144427 lt!560815))))))

(assert (= (and d!472956 c!257508) b!1589247))

(assert (= (and d!472956 (not c!257508)) b!1589248))

(declare-fun m!1881313 () Bool)

(assert (=> b!1589248 m!1881313))

(assert (=> b!1588665 d!472956))

(declare-fun d!472958 () Bool)

(declare-fun lt!561621 () Int)

(assert (=> d!472958 (>= lt!561621 0)))

(declare-fun e!1020830 () Int)

(assert (=> d!472958 (= lt!561621 e!1020830)))

(declare-fun c!257509 () Bool)

(assert (=> d!472958 (= c!257509 (is-Nil!17478 (list!6789 lt!560818)))))

(assert (=> d!472958 (= (size!14057 (list!6789 lt!560818)) lt!561621)))

(declare-fun b!1589249 () Bool)

(assert (=> b!1589249 (= e!1020830 0)))

(declare-fun b!1589250 () Bool)

(assert (=> b!1589250 (= e!1020830 (+ 1 (size!14057 (t!144427 (list!6789 lt!560818)))))))

(assert (= (and d!472958 c!257509) b!1589249))

(assert (= (and d!472958 (not c!257509)) b!1589250))

(declare-fun m!1881315 () Bool)

(assert (=> b!1589250 m!1881315))

(assert (=> b!1588665 d!472958))

(declare-fun d!472960 () Bool)

(assert (=> d!472960 (= (inv!22884 (tag!3348 (h!22880 (t!144428 rules!1846)))) (= (mod (str.len (value!97396 (tag!3348 (h!22880 (t!144428 rules!1846))))) 2) 0))))

(assert (=> b!1588973 d!472960))

(declare-fun d!472962 () Bool)

(declare-fun res!709045 () Bool)

(declare-fun e!1020831 () Bool)

(assert (=> d!472962 (=> (not res!709045) (not e!1020831))))

(assert (=> d!472962 (= res!709045 (semiInverseModEq!1165 (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toValue!4489 (transformation!3078 (h!22880 (t!144428 rules!1846))))))))

(assert (=> d!472962 (= (inv!22887 (transformation!3078 (h!22880 (t!144428 rules!1846)))) e!1020831)))

(declare-fun b!1589251 () Bool)

(assert (=> b!1589251 (= e!1020831 (equivClasses!1106 (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toValue!4489 (transformation!3078 (h!22880 (t!144428 rules!1846))))))))

(assert (= (and d!472962 res!709045) b!1589251))

(declare-fun m!1881317 () Bool)

(assert (=> d!472962 m!1881317))

(declare-fun m!1881319 () Bool)

(assert (=> b!1589251 m!1881319))

(assert (=> b!1588973 d!472962))

(declare-fun d!472964 () Bool)

(assert (=> d!472964 (= (list!6789 lt!561340) (list!6793 (c!257383 lt!561340)))))

(declare-fun bs!391635 () Bool)

(assert (= bs!391635 d!472964))

(declare-fun m!1881321 () Bool)

(assert (=> bs!391635 m!1881321))

(assert (=> b!1588925 d!472964))

(declare-fun b!1589253 () Bool)

(declare-fun e!1020833 () List!17548)

(assert (=> b!1589253 (= e!1020833 (Cons!17478 (h!22879 (list!6789 lt!560830)) (++!4565 (t!144427 (list!6789 lt!560830)) (list!6789 lt!560818))))))

(declare-fun b!1589254 () Bool)

(declare-fun res!709047 () Bool)

(declare-fun e!1020832 () Bool)

(assert (=> b!1589254 (=> (not res!709047) (not e!1020832))))

(declare-fun lt!561622 () List!17548)

(assert (=> b!1589254 (= res!709047 (= (size!14057 lt!561622) (+ (size!14057 (list!6789 lt!560830)) (size!14057 (list!6789 lt!560818)))))))

(declare-fun b!1589255 () Bool)

(assert (=> b!1589255 (= e!1020832 (or (not (= (list!6789 lt!560818) Nil!17478)) (= lt!561622 (list!6789 lt!560830))))))

(declare-fun d!472966 () Bool)

(assert (=> d!472966 e!1020832))

(declare-fun res!709046 () Bool)

(assert (=> d!472966 (=> (not res!709046) (not e!1020832))))

(assert (=> d!472966 (= res!709046 (= (content!2408 lt!561622) (set.union (content!2408 (list!6789 lt!560830)) (content!2408 (list!6789 lt!560818)))))))

(assert (=> d!472966 (= lt!561622 e!1020833)))

(declare-fun c!257510 () Bool)

(assert (=> d!472966 (= c!257510 (is-Nil!17478 (list!6789 lt!560830)))))

(assert (=> d!472966 (= (++!4565 (list!6789 lt!560830) (list!6789 lt!560818)) lt!561622)))

(declare-fun b!1589252 () Bool)

(assert (=> b!1589252 (= e!1020833 (list!6789 lt!560818))))

(assert (= (and d!472966 c!257510) b!1589252))

(assert (= (and d!472966 (not c!257510)) b!1589253))

(assert (= (and d!472966 res!709046) b!1589254))

(assert (= (and b!1589254 res!709047) b!1589255))

(assert (=> b!1589253 m!1879801))

(declare-fun m!1881323 () Bool)

(assert (=> b!1589253 m!1881323))

(declare-fun m!1881325 () Bool)

(assert (=> b!1589254 m!1881325))

(assert (=> b!1589254 m!1879787))

(declare-fun m!1881327 () Bool)

(assert (=> b!1589254 m!1881327))

(assert (=> b!1589254 m!1879801))

(assert (=> b!1589254 m!1880159))

(declare-fun m!1881329 () Bool)

(assert (=> d!472966 m!1881329))

(assert (=> d!472966 m!1879787))

(declare-fun m!1881331 () Bool)

(assert (=> d!472966 m!1881331))

(assert (=> d!472966 m!1879801))

(assert (=> d!472966 m!1880163))

(assert (=> b!1588925 d!472966))

(assert (=> b!1588925 d!472674))

(assert (=> b!1588925 d!472732))

(declare-fun d!472968 () Bool)

(assert (=> d!472968 (= (dropList!537 lt!560813 0) (drop!829 (list!6794 (c!257385 lt!560813)) 0))))

(declare-fun bs!391636 () Bool)

(assert (= bs!391636 d!472968))

(assert (=> bs!391636 m!1881059))

(assert (=> bs!391636 m!1881059))

(declare-fun m!1881333 () Bool)

(assert (=> bs!391636 m!1881333))

(assert (=> d!472748 d!472968))

(declare-fun d!472970 () Bool)

(declare-fun lt!561637 () List!17548)

(assert (=> d!472970 (= lt!561637 (++!4565 (list!6789 (BalanceConc!11553 Empty!5804)) (printList!822 thiss!17113 (dropList!537 lt!560813 0))))))

(declare-fun e!1020836 () List!17548)

(assert (=> d!472970 (= lt!561637 e!1020836)))

(declare-fun c!257513 () Bool)

(assert (=> d!472970 (= c!257513 (is-Cons!17480 (dropList!537 lt!560813 0)))))

(assert (=> d!472970 (= (printListTailRec!320 thiss!17113 (dropList!537 lt!560813 0) (list!6789 (BalanceConc!11553 Empty!5804))) lt!561637)))

(declare-fun b!1589260 () Bool)

(assert (=> b!1589260 (= e!1020836 (printListTailRec!320 thiss!17113 (t!144429 (dropList!537 lt!560813 0)) (++!4565 (list!6789 (BalanceConc!11553 Empty!5804)) (list!6789 (charsOf!1727 (h!22881 (dropList!537 lt!560813 0)))))))))

(declare-fun lt!561634 () List!17548)

(assert (=> b!1589260 (= lt!561634 (list!6789 (charsOf!1727 (h!22881 (dropList!537 lt!560813 0)))))))

(declare-fun lt!561636 () List!17548)

(assert (=> b!1589260 (= lt!561636 (printList!822 thiss!17113 (t!144429 (dropList!537 lt!560813 0))))))

(declare-fun lt!561633 () Unit!27502)

(assert (=> b!1589260 (= lt!561633 (lemmaConcatAssociativity!988 (list!6789 (BalanceConc!11553 Empty!5804)) lt!561634 lt!561636))))

(assert (=> b!1589260 (= (++!4565 (++!4565 (list!6789 (BalanceConc!11553 Empty!5804)) lt!561634) lt!561636) (++!4565 (list!6789 (BalanceConc!11553 Empty!5804)) (++!4565 lt!561634 lt!561636)))))

(declare-fun lt!561635 () Unit!27502)

(assert (=> b!1589260 (= lt!561635 lt!561633)))

(declare-fun b!1589261 () Bool)

(assert (=> b!1589261 (= e!1020836 (list!6789 (BalanceConc!11553 Empty!5804)))))

(assert (= (and d!472970 c!257513) b!1589260))

(assert (= (and d!472970 (not c!257513)) b!1589261))

(assert (=> d!472970 m!1880203))

(declare-fun m!1881335 () Bool)

(assert (=> d!472970 m!1881335))

(assert (=> d!472970 m!1880205))

(assert (=> d!472970 m!1881335))

(declare-fun m!1881337 () Bool)

(assert (=> d!472970 m!1881337))

(assert (=> b!1589260 m!1880205))

(declare-fun m!1881339 () Bool)

(assert (=> b!1589260 m!1881339))

(assert (=> b!1589260 m!1881339))

(declare-fun m!1881341 () Bool)

(assert (=> b!1589260 m!1881341))

(assert (=> b!1589260 m!1880205))

(declare-fun m!1881343 () Bool)

(assert (=> b!1589260 m!1881343))

(declare-fun m!1881345 () Bool)

(assert (=> b!1589260 m!1881345))

(assert (=> b!1589260 m!1880205))

(declare-fun m!1881347 () Bool)

(assert (=> b!1589260 m!1881347))

(declare-fun m!1881349 () Bool)

(assert (=> b!1589260 m!1881349))

(assert (=> b!1589260 m!1880205))

(declare-fun m!1881351 () Bool)

(assert (=> b!1589260 m!1881351))

(declare-fun m!1881353 () Bool)

(assert (=> b!1589260 m!1881353))

(assert (=> b!1589260 m!1881345))

(assert (=> b!1589260 m!1881351))

(assert (=> b!1589260 m!1881353))

(declare-fun m!1881355 () Bool)

(assert (=> b!1589260 m!1881355))

(assert (=> b!1589260 m!1881347))

(declare-fun m!1881357 () Bool)

(assert (=> b!1589260 m!1881357))

(assert (=> d!472748 d!472970))

(declare-fun d!472972 () Bool)

(assert (=> d!472972 (= (list!6789 lt!561043) (list!6793 (c!257383 lt!561043)))))

(declare-fun bs!391637 () Bool)

(assert (= bs!391637 d!472972))

(declare-fun m!1881359 () Bool)

(assert (=> bs!391637 m!1881359))

(assert (=> d!472748 d!472972))

(declare-fun d!472974 () Bool)

(assert (=> d!472974 (= (list!6789 (BalanceConc!11553 Empty!5804)) (list!6793 (c!257383 (BalanceConc!11553 Empty!5804))))))

(declare-fun bs!391638 () Bool)

(assert (= bs!391638 d!472974))

(declare-fun m!1881361 () Bool)

(assert (=> bs!391638 m!1881361))

(assert (=> d!472748 d!472974))

(declare-fun d!472976 () Bool)

(declare-fun lt!561638 () Int)

(assert (=> d!472976 (= lt!561638 (size!14063 (list!6790 lt!560813)))))

(assert (=> d!472976 (= lt!561638 (size!14064 (c!257385 lt!560813)))))

(assert (=> d!472976 (= (size!14059 lt!560813) lt!561638)))

(declare-fun bs!391639 () Bool)

(assert (= bs!391639 d!472976))

(assert (=> bs!391639 m!1880197))

(assert (=> bs!391639 m!1880197))

(declare-fun m!1881363 () Bool)

(assert (=> bs!391639 m!1881363))

(declare-fun m!1881365 () Bool)

(assert (=> bs!391639 m!1881365))

(assert (=> d!472748 d!472976))

(declare-fun b!1589263 () Bool)

(declare-fun e!1020838 () List!17548)

(assert (=> b!1589263 (= e!1020838 (Cons!17478 (h!22879 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))) (++!4565 (t!144427 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))) (_2!9880 (get!5002 lt!561060)))))))

(declare-fun b!1589264 () Bool)

(declare-fun res!709049 () Bool)

(declare-fun e!1020837 () Bool)

(assert (=> b!1589264 (=> (not res!709049) (not e!1020837))))

(declare-fun lt!561639 () List!17548)

(assert (=> b!1589264 (= res!709049 (= (size!14057 lt!561639) (+ (size!14057 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))) (size!14057 (_2!9880 (get!5002 lt!561060))))))))

(declare-fun b!1589265 () Bool)

(assert (=> b!1589265 (= e!1020837 (or (not (= (_2!9880 (get!5002 lt!561060)) Nil!17478)) (= lt!561639 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060)))))))))

(declare-fun d!472978 () Bool)

(assert (=> d!472978 e!1020837))

(declare-fun res!709048 () Bool)

(assert (=> d!472978 (=> (not res!709048) (not e!1020837))))

(assert (=> d!472978 (= res!709048 (= (content!2408 lt!561639) (set.union (content!2408 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))) (content!2408 (_2!9880 (get!5002 lt!561060))))))))

(assert (=> d!472978 (= lt!561639 e!1020838)))

(declare-fun c!257514 () Bool)

(assert (=> d!472978 (= c!257514 (is-Nil!17478 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))))))

(assert (=> d!472978 (= (++!4565 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060)))) (_2!9880 (get!5002 lt!561060))) lt!561639)))

(declare-fun b!1589262 () Bool)

(assert (=> b!1589262 (= e!1020838 (_2!9880 (get!5002 lt!561060)))))

(assert (= (and d!472978 c!257514) b!1589262))

(assert (= (and d!472978 (not c!257514)) b!1589263))

(assert (= (and d!472978 res!709048) b!1589264))

(assert (= (and b!1589264 res!709049) b!1589265))

(declare-fun m!1881367 () Bool)

(assert (=> b!1589263 m!1881367))

(declare-fun m!1881369 () Bool)

(assert (=> b!1589264 m!1881369))

(assert (=> b!1589264 m!1880249))

(declare-fun m!1881371 () Bool)

(assert (=> b!1589264 m!1881371))

(assert (=> b!1589264 m!1880253))

(declare-fun m!1881373 () Bool)

(assert (=> d!472978 m!1881373))

(assert (=> d!472978 m!1880249))

(declare-fun m!1881375 () Bool)

(assert (=> d!472978 m!1881375))

(declare-fun m!1881377 () Bool)

(assert (=> d!472978 m!1881377))

(assert (=> b!1588759 d!472978))

(declare-fun d!472980 () Bool)

(assert (=> d!472980 (= (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060)))) (list!6793 (c!257383 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))))))

(declare-fun bs!391640 () Bool)

(assert (= bs!391640 d!472980))

(declare-fun m!1881379 () Bool)

(assert (=> bs!391640 m!1881379))

(assert (=> b!1588759 d!472980))

(declare-fun d!472982 () Bool)

(declare-fun lt!561640 () BalanceConc!11552)

(assert (=> d!472982 (= (list!6789 lt!561640) (originalCharacters!3892 (_1!9880 (get!5002 lt!561060))))))

(assert (=> d!472982 (= lt!561640 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060))))) (value!97397 (_1!9880 (get!5002 lt!561060)))))))

(assert (=> d!472982 (= (charsOf!1727 (_1!9880 (get!5002 lt!561060))) lt!561640)))

(declare-fun b_lambda!50021 () Bool)

(assert (=> (not b_lambda!50021) (not d!472982)))

(declare-fun tb!89447 () Bool)

(declare-fun t!144499 () Bool)

(assert (=> (and b!1588488 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144499) tb!89447))

(declare-fun b!1589266 () Bool)

(declare-fun e!1020839 () Bool)

(declare-fun tp!467045 () Bool)

(assert (=> b!1589266 (= e!1020839 (and (inv!22891 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060))))) (value!97397 (_1!9880 (get!5002 lt!561060)))))) tp!467045))))

(declare-fun result!108314 () Bool)

(assert (=> tb!89447 (= result!108314 (and (inv!22892 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060))))) (value!97397 (_1!9880 (get!5002 lt!561060))))) e!1020839))))

(assert (= tb!89447 b!1589266))

(declare-fun m!1881381 () Bool)

(assert (=> b!1589266 m!1881381))

(declare-fun m!1881383 () Bool)

(assert (=> tb!89447 m!1881383))

(assert (=> d!472982 t!144499))

(declare-fun b_and!111477 () Bool)

(assert (= b_and!111469 (and (=> t!144499 result!108314) b_and!111477)))

(declare-fun tb!89449 () Bool)

(declare-fun t!144501 () Bool)

(assert (=> (and b!1588496 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toChars!4348 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144501) tb!89449))

(declare-fun result!108316 () Bool)

(assert (= result!108316 result!108314))

(assert (=> d!472982 t!144501))

(declare-fun b_and!111479 () Bool)

(assert (= b_and!111471 (and (=> t!144501 result!108316) b_and!111479)))

(declare-fun t!144503 () Bool)

(declare-fun tb!89451 () Bool)

(assert (=> (and b!1588974 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144503) tb!89451))

(declare-fun result!108318 () Bool)

(assert (= result!108318 result!108314))

(assert (=> d!472982 t!144503))

(declare-fun b_and!111481 () Bool)

(assert (= b_and!111473 (and (=> t!144503 result!108318) b_and!111481)))

(declare-fun t!144505 () Bool)

(declare-fun tb!89453 () Bool)

(assert (=> (and b!1588988 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toChars!4348 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144505) tb!89453))

(declare-fun result!108320 () Bool)

(assert (= result!108320 result!108314))

(assert (=> d!472982 t!144505))

(declare-fun b_and!111483 () Bool)

(assert (= b_and!111475 (and (=> t!144505 result!108320) b_and!111483)))

(declare-fun m!1881385 () Bool)

(assert (=> d!472982 m!1881385))

(declare-fun m!1881387 () Bool)

(assert (=> d!472982 m!1881387))

(assert (=> b!1588759 d!472982))

(declare-fun d!472984 () Bool)

(assert (=> d!472984 (= (get!5002 lt!561060) (v!24043 lt!561060))))

(assert (=> b!1588759 d!472984))

(declare-fun d!472986 () Bool)

(declare-fun c!257517 () Bool)

(assert (=> d!472986 (= c!257517 (is-Nil!17478 lt!560910))))

(declare-fun e!1020842 () (Set C!8986))

(assert (=> d!472986 (= (content!2408 lt!560910) e!1020842)))

(declare-fun b!1589271 () Bool)

(assert (=> b!1589271 (= e!1020842 (as set.empty (Set C!8986)))))

(declare-fun b!1589272 () Bool)

(assert (=> b!1589272 (= e!1020842 (set.union (set.insert (h!22879 lt!560910) (as set.empty (Set C!8986))) (content!2408 (t!144427 lt!560910))))))

(assert (= (and d!472986 c!257517) b!1589271))

(assert (= (and d!472986 (not c!257517)) b!1589272))

(declare-fun m!1881389 () Bool)

(assert (=> b!1589272 m!1881389))

(declare-fun m!1881391 () Bool)

(assert (=> b!1589272 m!1881391))

(assert (=> d!472676 d!472986))

(declare-fun d!472988 () Bool)

(declare-fun c!257518 () Bool)

(assert (=> d!472988 (= c!257518 (is-Nil!17478 lt!560815))))

(declare-fun e!1020843 () (Set C!8986))

(assert (=> d!472988 (= (content!2408 lt!560815) e!1020843)))

(declare-fun b!1589273 () Bool)

(assert (=> b!1589273 (= e!1020843 (as set.empty (Set C!8986)))))

(declare-fun b!1589274 () Bool)

(assert (=> b!1589274 (= e!1020843 (set.union (set.insert (h!22879 lt!560815) (as set.empty (Set C!8986))) (content!2408 (t!144427 lt!560815))))))

(assert (= (and d!472988 c!257518) b!1589273))

(assert (= (and d!472988 (not c!257518)) b!1589274))

(declare-fun m!1881393 () Bool)

(assert (=> b!1589274 m!1881393))

(declare-fun m!1881395 () Bool)

(assert (=> b!1589274 m!1881395))

(assert (=> d!472676 d!472988))

(declare-fun d!472990 () Bool)

(declare-fun c!257519 () Bool)

(assert (=> d!472990 (= c!257519 (is-Nil!17478 lt!560831))))

(declare-fun e!1020844 () (Set C!8986))

(assert (=> d!472990 (= (content!2408 lt!560831) e!1020844)))

(declare-fun b!1589275 () Bool)

(assert (=> b!1589275 (= e!1020844 (as set.empty (Set C!8986)))))

(declare-fun b!1589276 () Bool)

(assert (=> b!1589276 (= e!1020844 (set.union (set.insert (h!22879 lt!560831) (as set.empty (Set C!8986))) (content!2408 (t!144427 lt!560831))))))

(assert (= (and d!472990 c!257519) b!1589275))

(assert (= (and d!472990 (not c!257519)) b!1589276))

(declare-fun m!1881397 () Bool)

(assert (=> b!1589276 m!1881397))

(declare-fun m!1881399 () Bool)

(assert (=> b!1589276 m!1881399))

(assert (=> d!472676 d!472990))

(declare-fun d!472992 () Bool)

(assert (=> d!472992 (= (isEmpty!10504 lt!560824) (not (is-Some!3150 lt!560824)))))

(assert (=> d!472718 d!472992))

(declare-fun d!472994 () Bool)

(assert (=> d!472994 (= (list!6789 lt!561390) (list!6793 (c!257383 lt!561390)))))

(declare-fun bs!391641 () Bool)

(assert (= bs!391641 d!472994))

(declare-fun m!1881401 () Bool)

(assert (=> bs!391641 m!1881401))

(assert (=> d!472848 d!472994))

(declare-fun d!472996 () Bool)

(declare-fun lt!561643 () C!8986)

(assert (=> d!472996 (= lt!561643 (head!3239 (list!6789 lt!561312)))))

(declare-fun head!3244 (Conc!5804) C!8986)

(assert (=> d!472996 (= lt!561643 (head!3244 (c!257383 lt!561312)))))

(assert (=> d!472996 (not (isEmpty!10510 lt!561312))))

(assert (=> d!472996 (= (head!3243 lt!561312) lt!561643)))

(declare-fun bs!391642 () Bool)

(assert (= bs!391642 d!472996))

(assert (=> bs!391642 m!1880609))

(assert (=> bs!391642 m!1880609))

(assert (=> bs!391642 m!1880611))

(declare-fun m!1881403 () Bool)

(assert (=> bs!391642 m!1881403))

(declare-fun m!1881405 () Bool)

(assert (=> bs!391642 m!1881405))

(assert (=> b!1588896 d!472996))

(declare-fun d!472998 () Bool)

(assert (=> d!472998 (= (head!3239 (originalCharacters!3892 (h!22881 (t!144429 (t!144429 tokens!457))))) (h!22879 (originalCharacters!3892 (h!22881 (t!144429 (t!144429 tokens!457))))))))

(assert (=> b!1588896 d!472998))

(declare-fun d!473000 () Bool)

(declare-fun e!1020845 () Bool)

(assert (=> d!473000 e!1020845))

(declare-fun res!709050 () Bool)

(assert (=> d!473000 (=> (not res!709050) (not e!1020845))))

(assert (=> d!473000 (= res!709050 (isBalanced!1719 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 (t!144429 tokens!457))))) (h!22881 (t!144429 (t!144429 tokens!457))))))))

(declare-fun lt!561644 () BalanceConc!11554)

(assert (=> d!473000 (= lt!561644 (BalanceConc!11555 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 (t!144429 tokens!457))))) (h!22881 (t!144429 (t!144429 tokens!457))))))))

(assert (=> d!473000 (= (prepend!570 (seqFromList!1906 (t!144429 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 (t!144429 tokens!457)))) lt!561644)))

(declare-fun b!1589277 () Bool)

(assert (=> b!1589277 (= e!1020845 (= (list!6790 lt!561644) (Cons!17480 (h!22881 (t!144429 (t!144429 tokens!457))) (list!6790 (seqFromList!1906 (t!144429 (t!144429 (t!144429 tokens!457))))))))))

(assert (= (and d!473000 res!709050) b!1589277))

(declare-fun m!1881407 () Bool)

(assert (=> d!473000 m!1881407))

(assert (=> d!473000 m!1881407))

(declare-fun m!1881409 () Bool)

(assert (=> d!473000 m!1881409))

(declare-fun m!1881411 () Bool)

(assert (=> b!1589277 m!1881411))

(assert (=> b!1589277 m!1880633))

(declare-fun m!1881413 () Bool)

(assert (=> b!1589277 m!1881413))

(assert (=> b!1588896 d!473000))

(declare-fun d!473002 () Bool)

(declare-fun lt!561645 () C!8986)

(assert (=> d!473002 (= lt!561645 (apply!4309 (list!6789 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457))))) 0))))

(assert (=> d!473002 (= lt!561645 (apply!4310 (c!257383 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457))))) 0))))

(declare-fun e!1020846 () Bool)

(assert (=> d!473002 e!1020846))

(declare-fun res!709051 () Bool)

(assert (=> d!473002 (=> (not res!709051) (not e!1020846))))

(assert (=> d!473002 (= res!709051 (<= 0 0))))

(assert (=> d!473002 (= (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))) 0) lt!561645)))

(declare-fun b!1589278 () Bool)

(assert (=> b!1589278 (= e!1020846 (< 0 (size!14058 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))))))))

(assert (= (and d!473002 res!709051) b!1589278))

(assert (=> d!473002 m!1880619))

(declare-fun m!1881415 () Bool)

(assert (=> d!473002 m!1881415))

(assert (=> d!473002 m!1881415))

(declare-fun m!1881417 () Bool)

(assert (=> d!473002 m!1881417))

(declare-fun m!1881419 () Bool)

(assert (=> d!473002 m!1881419))

(assert (=> b!1589278 m!1880619))

(declare-fun m!1881421 () Bool)

(assert (=> b!1589278 m!1881421))

(assert (=> b!1588896 d!473002))

(assert (=> b!1588896 d!472848))

(declare-fun d!473004 () Bool)

(assert (=> d!473004 (= (head!3239 (list!6789 lt!561312)) (h!22879 (list!6789 lt!561312)))))

(assert (=> b!1588896 d!473004))

(declare-fun d!473006 () Bool)

(assert (=> d!473006 (= (get!5002 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))) (v!24043 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))))

(assert (=> b!1588896 d!473006))

(declare-fun d!473008 () Bool)

(assert (=> d!473008 (= (list!6789 lt!561312) (list!6793 (c!257383 lt!561312)))))

(declare-fun bs!391643 () Bool)

(assert (= bs!391643 d!473008))

(declare-fun m!1881423 () Bool)

(assert (=> bs!391643 m!1881423))

(assert (=> b!1588896 d!473008))

(assert (=> b!1588896 d!472690))

(declare-fun d!473010 () Bool)

(assert (=> d!473010 (= (list!6790 (_1!9881 lt!561324)) (list!6790 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 (t!144429 tokens!457))))))))

(declare-fun lt!561646 () Unit!27502)

(assert (=> d!473010 (= lt!561646 (choose!9513 (h!22881 (t!144429 (t!144429 tokens!457))) (t!144429 (t!144429 (t!144429 tokens!457))) (_1!9881 lt!561324)))))

(assert (=> d!473010 (= (list!6790 (_1!9881 lt!561324)) (list!6790 (seqFromList!1906 ($colon$colon!286 (t!144429 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 (t!144429 tokens!457)))))))))

(assert (=> d!473010 (= (seqFromListBHdTlConstructive!155 (h!22881 (t!144429 (t!144429 tokens!457))) (t!144429 (t!144429 (t!144429 tokens!457))) (_1!9881 lt!561324)) lt!561646)))

(declare-fun bs!391644 () Bool)

(assert (= bs!391644 d!473010))

(assert (=> bs!391644 m!1880635))

(assert (=> bs!391644 m!1880655))

(declare-fun m!1881425 () Bool)

(assert (=> bs!391644 m!1881425))

(declare-fun m!1881427 () Bool)

(assert (=> bs!391644 m!1881427))

(declare-fun m!1881429 () Bool)

(assert (=> bs!391644 m!1881429))

(assert (=> bs!391644 m!1881425))

(assert (=> bs!391644 m!1881427))

(declare-fun m!1881431 () Bool)

(assert (=> bs!391644 m!1881431))

(assert (=> bs!391644 m!1880633))

(assert (=> bs!391644 m!1880635))

(assert (=> bs!391644 m!1880633))

(assert (=> bs!391644 m!1880615))

(assert (=> b!1588896 d!473010))

(declare-fun d!473012 () Bool)

(assert (=> d!473012 (= (isDefined!2526 (maxPrefix!1271 thiss!17113 rules!1846 (originalCharacters!3892 (h!22881 (t!144429 tokens!457))))) (not (isEmpty!10504 (maxPrefix!1271 thiss!17113 rules!1846 (originalCharacters!3892 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun bs!391645 () Bool)

(assert (= bs!391645 d!473012))

(assert (=> bs!391645 m!1880639))

(declare-fun m!1881433 () Bool)

(assert (=> bs!391645 m!1881433))

(assert (=> b!1588896 d!473012))

(declare-fun bm!102963 () Bool)

(declare-fun call!102968 () Bool)

(assert (=> bm!102963 (= call!102968 (isEmpty!10507 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(declare-fun b!1589307 () Bool)

(declare-fun e!1020863 () Bool)

(declare-fun lt!561649 () Bool)

(assert (=> b!1589307 (= e!1020863 (= lt!561649 call!102968))))

(declare-fun b!1589309 () Bool)

(declare-fun res!709074 () Bool)

(declare-fun e!1020867 () Bool)

(assert (=> b!1589309 (=> res!709074 e!1020867)))

(declare-fun e!1020866 () Bool)

(assert (=> b!1589309 (= res!709074 e!1020866)))

(declare-fun res!709068 () Bool)

(assert (=> b!1589309 (=> (not res!709068) (not e!1020866))))

(assert (=> b!1589309 (= res!709068 lt!561649)))

(declare-fun b!1589310 () Bool)

(declare-fun e!1020864 () Bool)

(assert (=> b!1589310 (= e!1020864 (matchR!1925 (derivativeStep!1047 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))) (head!3239 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))) (tail!2285 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun b!1589311 () Bool)

(declare-fun res!709075 () Bool)

(assert (=> b!1589311 (=> res!709075 e!1020867)))

(assert (=> b!1589311 (= res!709075 (not (is-ElementMatch!4406 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun e!1020865 () Bool)

(assert (=> b!1589311 (= e!1020865 e!1020867)))

(declare-fun b!1589312 () Bool)

(declare-fun res!709071 () Bool)

(assert (=> b!1589312 (=> (not res!709071) (not e!1020866))))

(assert (=> b!1589312 (= res!709071 (isEmpty!10507 (tail!2285 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun b!1589313 () Bool)

(assert (=> b!1589313 (= e!1020865 (not lt!561649))))

(declare-fun b!1589314 () Bool)

(assert (=> b!1589314 (= e!1020863 e!1020865)))

(declare-fun c!257526 () Bool)

(assert (=> b!1589314 (= c!257526 (is-EmptyLang!4406 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))))

(declare-fun b!1589315 () Bool)

(declare-fun e!1020861 () Bool)

(assert (=> b!1589315 (= e!1020867 e!1020861)))

(declare-fun res!709072 () Bool)

(assert (=> b!1589315 (=> (not res!709072) (not e!1020861))))

(assert (=> b!1589315 (= res!709072 (not lt!561649))))

(declare-fun b!1589316 () Bool)

(declare-fun nullable!1296 (Regex!4406) Bool)

(assert (=> b!1589316 (= e!1020864 (nullable!1296 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))))

(declare-fun b!1589317 () Bool)

(declare-fun e!1020862 () Bool)

(assert (=> b!1589317 (= e!1020862 (not (= (head!3239 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))) (c!257384 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))))))

(declare-fun b!1589318 () Bool)

(declare-fun res!709070 () Bool)

(assert (=> b!1589318 (=> res!709070 e!1020862)))

(assert (=> b!1589318 (= res!709070 (not (isEmpty!10507 (tail!2285 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))))

(declare-fun b!1589319 () Bool)

(assert (=> b!1589319 (= e!1020861 e!1020862)))

(declare-fun res!709069 () Bool)

(assert (=> b!1589319 (=> res!709069 e!1020862)))

(assert (=> b!1589319 (= res!709069 call!102968)))

(declare-fun b!1589320 () Bool)

(declare-fun res!709073 () Bool)

(assert (=> b!1589320 (=> (not res!709073) (not e!1020866))))

(assert (=> b!1589320 (= res!709073 (not call!102968))))

(declare-fun b!1589308 () Bool)

(assert (=> b!1589308 (= e!1020866 (= (head!3239 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))) (c!257384 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun d!473014 () Bool)

(assert (=> d!473014 e!1020863))

(declare-fun c!257527 () Bool)

(assert (=> d!473014 (= c!257527 (is-EmptyExpr!4406 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))))

(assert (=> d!473014 (= lt!561649 e!1020864)))

(declare-fun c!257528 () Bool)

(assert (=> d!473014 (= c!257528 (isEmpty!10507 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(assert (=> d!473014 (validRegex!1743 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))))

(assert (=> d!473014 (= (matchR!1925 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))) (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))) lt!561649)))

(assert (= (and d!473014 c!257528) b!1589316))

(assert (= (and d!473014 (not c!257528)) b!1589310))

(assert (= (and d!473014 c!257527) b!1589307))

(assert (= (and d!473014 (not c!257527)) b!1589314))

(assert (= (and b!1589314 c!257526) b!1589313))

(assert (= (and b!1589314 (not c!257526)) b!1589311))

(assert (= (and b!1589311 (not res!709075)) b!1589309))

(assert (= (and b!1589309 res!709068) b!1589320))

(assert (= (and b!1589320 res!709073) b!1589312))

(assert (= (and b!1589312 res!709071) b!1589308))

(assert (= (and b!1589309 (not res!709074)) b!1589315))

(assert (= (and b!1589315 res!709072) b!1589319))

(assert (= (and b!1589319 (not res!709069)) b!1589318))

(assert (= (and b!1589318 (not res!709070)) b!1589317))

(assert (= (or b!1589307 b!1589319 b!1589320) bm!102963))

(assert (=> b!1589308 m!1880599))

(declare-fun m!1881435 () Bool)

(assert (=> b!1589308 m!1881435))

(assert (=> b!1589317 m!1880599))

(assert (=> b!1589317 m!1881435))

(assert (=> d!473014 m!1880599))

(declare-fun m!1881437 () Bool)

(assert (=> d!473014 m!1881437))

(declare-fun m!1881439 () Bool)

(assert (=> d!473014 m!1881439))

(assert (=> b!1589318 m!1880599))

(declare-fun m!1881441 () Bool)

(assert (=> b!1589318 m!1881441))

(assert (=> b!1589318 m!1881441))

(declare-fun m!1881443 () Bool)

(assert (=> b!1589318 m!1881443))

(assert (=> b!1589310 m!1880599))

(assert (=> b!1589310 m!1881435))

(assert (=> b!1589310 m!1881435))

(declare-fun m!1881445 () Bool)

(assert (=> b!1589310 m!1881445))

(assert (=> b!1589310 m!1880599))

(assert (=> b!1589310 m!1881441))

(assert (=> b!1589310 m!1881445))

(assert (=> b!1589310 m!1881441))

(declare-fun m!1881447 () Bool)

(assert (=> b!1589310 m!1881447))

(assert (=> bm!102963 m!1880599))

(assert (=> bm!102963 m!1881437))

(assert (=> b!1589312 m!1880599))

(assert (=> b!1589312 m!1881441))

(assert (=> b!1589312 m!1881441))

(assert (=> b!1589312 m!1881443))

(declare-fun m!1881449 () Bool)

(assert (=> b!1589316 m!1881449))

(assert (=> b!1588896 d!473014))

(declare-fun d!473016 () Bool)

(assert (=> d!473016 (isPrefix!1338 lt!561306 (++!4565 lt!561306 lt!561317))))

(declare-fun lt!561650 () Unit!27502)

(assert (=> d!473016 (= lt!561650 (choose!9515 lt!561306 lt!561317))))

(assert (=> d!473016 (= (lemmaConcatTwoListThenFirstIsPrefix!863 lt!561306 lt!561317) lt!561650)))

(declare-fun bs!391646 () Bool)

(assert (= bs!391646 d!473016))

(assert (=> bs!391646 m!1880605))

(assert (=> bs!391646 m!1880605))

(assert (=> bs!391646 m!1880613))

(declare-fun m!1881451 () Bool)

(assert (=> bs!391646 m!1881451))

(assert (=> b!1588896 d!473016))

(declare-fun d!473018 () Bool)

(assert (=> d!473018 (= (isEmpty!10507 (_2!9880 (get!5002 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))) (is-Nil!17478 (_2!9880 (get!5002 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))))))

(assert (=> b!1588896 d!473018))

(declare-fun d!473020 () Bool)

(assert (=> d!473020 (= (list!6789 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))) 0))) (list!6793 (c!257383 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))) 0)))))))

(declare-fun bs!391647 () Bool)

(assert (= bs!391647 d!473020))

(declare-fun m!1881453 () Bool)

(assert (=> bs!391647 m!1881453))

(assert (=> b!1588896 d!473020))

(declare-fun d!473022 () Bool)

(declare-fun lt!561651 () BalanceConc!11552)

(assert (=> d!473022 (= (list!6789 lt!561651) (printList!822 thiss!17113 (list!6790 (seqFromList!1906 (t!144429 (t!144429 tokens!457))))))))

(assert (=> d!473022 (= lt!561651 (printTailRec!760 thiss!17113 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) 0 (BalanceConc!11553 Empty!5804)))))

(assert (=> d!473022 (= (print!1238 thiss!17113 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) lt!561651)))

(declare-fun bs!391648 () Bool)

(assert (= bs!391648 d!473022))

(declare-fun m!1881455 () Bool)

(assert (=> bs!391648 m!1881455))

(assert (=> bs!391648 m!1879811))

(assert (=> bs!391648 m!1880029))

(assert (=> bs!391648 m!1880029))

(declare-fun m!1881457 () Bool)

(assert (=> bs!391648 m!1881457))

(assert (=> bs!391648 m!1879811))

(declare-fun m!1881459 () Bool)

(assert (=> bs!391648 m!1881459))

(assert (=> b!1588896 d!473022))

(declare-fun d!473024 () Bool)

(declare-fun e!1020868 () Bool)

(assert (=> d!473024 e!1020868))

(declare-fun res!709076 () Bool)

(assert (=> d!473024 (=> (not res!709076) (not e!1020868))))

(declare-fun lt!561652 () BalanceConc!11554)

(assert (=> d!473024 (= res!709076 (= (list!6790 lt!561652) (Cons!17480 (h!22881 (t!144429 tokens!457)) Nil!17480)))))

(assert (=> d!473024 (= lt!561652 (singleton!599 (h!22881 (t!144429 tokens!457))))))

(assert (=> d!473024 (= (singletonSeq!1435 (h!22881 (t!144429 tokens!457))) lt!561652)))

(declare-fun b!1589321 () Bool)

(assert (=> b!1589321 (= e!1020868 (isBalanced!1719 (c!257385 lt!561652)))))

(assert (= (and d!473024 res!709076) b!1589321))

(declare-fun m!1881461 () Bool)

(assert (=> d!473024 m!1881461))

(declare-fun m!1881463 () Bool)

(assert (=> d!473024 m!1881463))

(declare-fun m!1881465 () Bool)

(assert (=> b!1589321 m!1881465))

(assert (=> b!1588896 d!473024))

(declare-fun b!1589322 () Bool)

(declare-fun e!1020870 () Bool)

(declare-fun lt!561653 () tuple2!16958)

(assert (=> b!1589322 (= e!1020870 (= (_2!9881 lt!561653) lt!561312))))

(declare-fun e!1020871 () Bool)

(declare-fun b!1589323 () Bool)

(assert (=> b!1589323 (= e!1020871 (= (list!6789 (_2!9881 lt!561653)) (_2!9884 (lexList!794 thiss!17113 rules!1846 (list!6789 lt!561312)))))))

(declare-fun b!1589324 () Bool)

(declare-fun e!1020869 () Bool)

(assert (=> b!1589324 (= e!1020870 e!1020869)))

(declare-fun res!709079 () Bool)

(assert (=> b!1589324 (= res!709079 (< (size!14058 (_2!9881 lt!561653)) (size!14058 lt!561312)))))

(assert (=> b!1589324 (=> (not res!709079) (not e!1020869))))

(declare-fun b!1589325 () Bool)

(assert (=> b!1589325 (= e!1020869 (not (isEmpty!10501 (_1!9881 lt!561653))))))

(declare-fun b!1589326 () Bool)

(declare-fun res!709077 () Bool)

(assert (=> b!1589326 (=> (not res!709077) (not e!1020871))))

(assert (=> b!1589326 (= res!709077 (= (list!6790 (_1!9881 lt!561653)) (_1!9884 (lexList!794 thiss!17113 rules!1846 (list!6789 lt!561312)))))))

(declare-fun d!473026 () Bool)

(assert (=> d!473026 e!1020871))

(declare-fun res!709078 () Bool)

(assert (=> d!473026 (=> (not res!709078) (not e!1020871))))

(assert (=> d!473026 (= res!709078 e!1020870)))

(declare-fun c!257529 () Bool)

(assert (=> d!473026 (= c!257529 (> (size!14059 (_1!9881 lt!561653)) 0))))

(assert (=> d!473026 (= lt!561653 (lexTailRecV2!517 thiss!17113 rules!1846 lt!561312 (BalanceConc!11553 Empty!5804) lt!561312 (BalanceConc!11555 Empty!5805)))))

(assert (=> d!473026 (= (lex!1191 thiss!17113 rules!1846 lt!561312) lt!561653)))

(assert (= (and d!473026 c!257529) b!1589324))

(assert (= (and d!473026 (not c!257529)) b!1589322))

(assert (= (and b!1589324 res!709079) b!1589325))

(assert (= (and d!473026 res!709078) b!1589326))

(assert (= (and b!1589326 res!709077) b!1589323))

(declare-fun m!1881467 () Bool)

(assert (=> d!473026 m!1881467))

(declare-fun m!1881469 () Bool)

(assert (=> d!473026 m!1881469))

(declare-fun m!1881471 () Bool)

(assert (=> b!1589325 m!1881471))

(declare-fun m!1881473 () Bool)

(assert (=> b!1589323 m!1881473))

(assert (=> b!1589323 m!1880609))

(assert (=> b!1589323 m!1880609))

(declare-fun m!1881475 () Bool)

(assert (=> b!1589323 m!1881475))

(declare-fun m!1881477 () Bool)

(assert (=> b!1589326 m!1881477))

(assert (=> b!1589326 m!1880609))

(assert (=> b!1589326 m!1880609))

(assert (=> b!1589326 m!1881475))

(declare-fun m!1881479 () Bool)

(assert (=> b!1589324 m!1881479))

(declare-fun m!1881481 () Bool)

(assert (=> b!1589324 m!1881481))

(assert (=> b!1588896 d!473026))

(declare-fun b!1589828 () Bool)

(declare-fun e!1021151 () Bool)

(declare-fun lt!562167 () Token!5722)

(assert (=> b!1589828 (= e!1021151 (= (rule!4882 lt!562167) (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!562167))))))))

(declare-fun b!1589829 () Bool)

(declare-fun res!709291 () Bool)

(assert (=> b!1589829 (=> (not res!709291) (not e!1021151))))

(assert (=> b!1589829 (= res!709291 (matchR!1925 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!562167))))) (list!6789 (charsOf!1727 lt!562167))))))

(declare-fun b!1589830 () Bool)

(assert (=> b!1589830 false))

(declare-fun lt!562132 () Unit!27502)

(declare-fun lt!562129 () Unit!27502)

(assert (=> b!1589830 (= lt!562132 lt!562129)))

(declare-fun lt!562146 () List!17548)

(assert (=> b!1589830 (not (matchR!1925 (regex!3078 (rule!4882 lt!562167)) lt!562146))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!61 (LexerInterface!2707 List!17549 Rule!5956 List!17548 List!17548 Rule!5956) Unit!27502)

(assert (=> b!1589830 (= lt!562129 (lemmaMaxPrefNoSmallerRuleMatches!61 thiss!17113 rules!1846 (rule!4882 (h!22881 (t!144429 tokens!457))) lt!562146 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (rule!4882 lt!562167)))))

(assert (=> b!1589830 (= lt!562146 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))

(declare-fun e!1021155 () Unit!27502)

(declare-fun Unit!27549 () Unit!27502)

(assert (=> b!1589830 (= e!1021155 Unit!27549)))

(declare-fun b!1589831 () Bool)

(declare-fun e!1021152 () Unit!27502)

(declare-fun Unit!27550 () Unit!27502)

(assert (=> b!1589831 (= e!1021152 Unit!27550)))

(declare-fun b!1589832 () Bool)

(declare-fun Unit!27551 () Unit!27502)

(assert (=> b!1589832 (= e!1021152 Unit!27551)))

(declare-fun lt!562137 () Unit!27502)

(declare-fun lt!562163 () List!17548)

(declare-fun lt!562116 () List!17548)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!21 (LexerInterface!2707 List!17549 List!17548 Token!5722 Rule!5956 List!17548) Unit!27502)

(assert (=> b!1589832 (= lt!562137 (lemmaMaxPrefixThenMatchesRulesRegex!21 thiss!17113 rules!1846 lt!562116 lt!562167 (rule!4882 lt!562167) lt!562163))))

(assert (=> b!1589832 (matchR!1925 (rulesRegex!468 thiss!17113 rules!1846) (list!6789 (charsOf!1727 lt!562167)))))

(declare-fun lt!562153 () Unit!27502)

(assert (=> b!1589832 (= lt!562153 lt!562137)))

(declare-fun lt!562174 () List!17548)

(assert (=> b!1589832 (= lt!562174 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!562121 () List!17548)

(assert (=> b!1589832 (= lt!562121 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!562166 () List!17548)

(declare-fun getSuffix!691 (List!17548 List!17548) List!17548)

(assert (=> b!1589832 (= lt!562166 (getSuffix!691 lt!562116 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(declare-fun lt!562151 () Unit!27502)

(declare-fun lemmaSamePrefixThenSameSuffix!643 (List!17548 List!17548 List!17548 List!17548 List!17548) Unit!27502)

(assert (=> b!1589832 (= lt!562151 (lemmaSamePrefixThenSameSuffix!643 lt!562174 (list!6789 lt!561312) lt!562121 lt!562166 lt!562116))))

(assert (=> b!1589832 (= (list!6789 lt!561312) lt!562166)))

(declare-fun lt!562130 () Unit!27502)

(assert (=> b!1589832 (= lt!562130 lt!562151)))

(declare-fun lt!562114 () List!17548)

(assert (=> b!1589832 (= lt!562114 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!562126 () Unit!27502)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!134 (List!17548 List!17548) Unit!27502)

(assert (=> b!1589832 (= lt!562126 (lemmaAddHeadSuffixToPrefixStillPrefix!134 lt!562114 lt!562116))))

(assert (=> b!1589832 (isPrefix!1338 (++!4565 lt!562114 (Cons!17478 (head!3239 (getSuffix!691 lt!562116 lt!562114)) Nil!17478)) lt!562116)))

(declare-fun lt!562138 () Unit!27502)

(assert (=> b!1589832 (= lt!562138 lt!562126)))

(declare-fun lt!562133 () List!17548)

(assert (=> b!1589832 (= lt!562133 (list!6789 (charsOf!1727 lt!562167)))))

(declare-fun lt!562171 () List!17548)

(assert (=> b!1589832 (= lt!562171 (++!4565 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (Cons!17478 (head!3239 (list!6789 lt!561312)) Nil!17478)))))

(declare-fun lt!562141 () Unit!27502)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!21 (List!17548 List!17548 List!17548) Unit!27502)

(assert (=> b!1589832 (= lt!562141 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!21 lt!562133 lt!562171 lt!562116))))

(assert (=> b!1589832 (isPrefix!1338 lt!562171 lt!562133)))

(declare-fun lt!562143 () Unit!27502)

(assert (=> b!1589832 (= lt!562143 lt!562141)))

(declare-fun lt!562120 () Regex!4406)

(assert (=> b!1589832 (= lt!562120 (rulesRegex!468 thiss!17113 rules!1846))))

(declare-fun lt!562170 () List!17548)

(assert (=> b!1589832 (= lt!562170 (++!4565 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (Cons!17478 (head!3239 (list!6789 lt!561312)) Nil!17478)))))

(declare-fun lt!562122 () List!17548)

(assert (=> b!1589832 (= lt!562122 (list!6789 (charsOf!1727 lt!562167)))))

(declare-fun lt!562128 () Unit!27502)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!22 (Regex!4406 List!17548 List!17548) Unit!27502)

(assert (=> b!1589832 (= lt!562128 (lemmaNotPrefixMatchThenCannotMatchLonger!22 lt!562120 lt!562170 lt!562122))))

(assert (=> b!1589832 (not (matchR!1925 lt!562120 lt!562122))))

(declare-fun lt!562123 () Unit!27502)

(assert (=> b!1589832 (= lt!562123 lt!562128)))

(assert (=> b!1589832 false))

(declare-fun b!1589833 () Bool)

(declare-fun e!1021156 () Unit!27502)

(declare-fun Unit!27552 () Unit!27502)

(assert (=> b!1589833 (= e!1021156 Unit!27552)))

(declare-fun b!1589834 () Bool)

(assert (=> b!1589834 false))

(declare-fun lt!562148 () Unit!27502)

(declare-fun lt!562179 () Unit!27502)

(assert (=> b!1589834 (= lt!562148 lt!562179)))

(assert (=> b!1589834 (= (rule!4882 lt!562167) (rule!4882 (h!22881 (t!144429 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!37 (List!17549 Rule!5956 Rule!5956) Unit!27502)

(assert (=> b!1589834 (= lt!562179 (lemmaSameIndexThenSameElement!37 rules!1846 (rule!4882 lt!562167) (rule!4882 (h!22881 (t!144429 tokens!457)))))))

(declare-fun e!1021154 () Unit!27502)

(declare-fun Unit!27553 () Unit!27502)

(assert (=> b!1589834 (= e!1021154 Unit!27553)))

(declare-fun b!1589835 () Bool)

(declare-fun Unit!27554 () Unit!27502)

(assert (=> b!1589835 (= e!1021156 Unit!27554)))

(declare-fun c!257675 () Bool)

(declare-fun getIndex!89 (List!17549 Rule!5956) Int)

(assert (=> b!1589835 (= c!257675 (< (getIndex!89 rules!1846 (rule!4882 (h!22881 (t!144429 tokens!457)))) (getIndex!89 rules!1846 (rule!4882 lt!562167))))))

(declare-fun lt!562135 () Unit!27502)

(declare-fun e!1021153 () Unit!27502)

(assert (=> b!1589835 (= lt!562135 e!1021153)))

(declare-fun c!257673 () Bool)

(assert (=> b!1589835 (= c!257673 (< (getIndex!89 rules!1846 (rule!4882 lt!562167)) (getIndex!89 rules!1846 (rule!4882 (h!22881 (t!144429 tokens!457))))))))

(declare-fun lt!562180 () Unit!27502)

(assert (=> b!1589835 (= lt!562180 e!1021155)))

(declare-fun c!257676 () Bool)

(assert (=> b!1589835 (= c!257676 (= (getIndex!89 rules!1846 (rule!4882 lt!562167)) (getIndex!89 rules!1846 (rule!4882 (h!22881 (t!144429 tokens!457))))))))

(declare-fun lt!562125 () Unit!27502)

(assert (=> b!1589835 (= lt!562125 e!1021154)))

(assert (=> b!1589835 false))

(declare-fun d!473028 () Bool)

(assert (=> d!473028 (= (maxPrefix!1271 thiss!17113 rules!1846 (++!4565 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312))) (Some!3150 (tuple2!16957 (h!22881 (t!144429 tokens!457)) (list!6789 lt!561312))))))

(declare-fun lt!562118 () Unit!27502)

(declare-fun Unit!27555 () Unit!27502)

(assert (=> d!473028 (= lt!562118 Unit!27555)))

(declare-fun lt!562159 () Unit!27502)

(assert (=> d!473028 (= lt!562159 e!1021156)))

(declare-fun c!257672 () Bool)

(assert (=> d!473028 (= c!257672 (not (= (rule!4882 lt!562167) (rule!4882 (h!22881 (t!144429 tokens!457))))))))

(declare-fun lt!562169 () Unit!27502)

(declare-fun lt!562161 () Unit!27502)

(assert (=> d!473028 (= lt!562169 lt!562161)))

(assert (=> d!473028 (= (list!6789 lt!561312) lt!562163)))

(assert (=> d!473028 (= lt!562161 (lemmaSamePrefixThenSameSuffix!643 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312) (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) lt!562163 lt!562116))))

(declare-fun lt!562152 () Unit!27502)

(declare-fun lt!562124 () Unit!27502)

(assert (=> d!473028 (= lt!562152 lt!562124)))

(declare-fun lt!562147 () List!17548)

(declare-fun lt!562154 () List!17548)

(assert (=> d!473028 (= lt!562147 lt!562154)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!145 (List!17548 List!17548 List!17548) Unit!27502)

(assert (=> d!473028 (= lt!562124 (lemmaIsPrefixSameLengthThenSameList!145 lt!562147 lt!562154 lt!562116))))

(assert (=> d!473028 (= lt!562154 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))

(assert (=> d!473028 (= lt!562147 (list!6789 (charsOf!1727 lt!562167)))))

(declare-fun lt!562127 () Unit!27502)

(declare-fun e!1021157 () Unit!27502)

(assert (=> d!473028 (= lt!562127 e!1021157)))

(declare-fun c!257674 () Bool)

(assert (=> d!473028 (= c!257674 (< (size!14058 (charsOf!1727 lt!562167)) (size!14058 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(declare-fun lt!562162 () Unit!27502)

(assert (=> d!473028 (= lt!562162 e!1021152)))

(declare-fun c!257671 () Bool)

(assert (=> d!473028 (= c!257671 (> (size!14058 (charsOf!1727 lt!562167)) (size!14058 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(declare-fun lt!562183 () Unit!27502)

(declare-fun lt!562178 () Unit!27502)

(assert (=> d!473028 (= lt!562183 lt!562178)))

(assert (=> d!473028 (matchR!1925 (rulesRegex!468 thiss!17113 rules!1846) (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))

(assert (=> d!473028 (= lt!562178 (lemmaMaxPrefixThenMatchesRulesRegex!21 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457)) (rule!4882 (h!22881 (t!144429 tokens!457))) Nil!17478))))

(declare-fun lt!562113 () Unit!27502)

(declare-fun lt!562172 () Unit!27502)

(assert (=> d!473028 (= lt!562113 lt!562172)))

(declare-fun lt!562145 () List!17548)

(assert (=> d!473028 (= lt!562163 lt!562145)))

(declare-fun lt!562176 () List!17548)

(declare-fun lt!562140 () List!17548)

(assert (=> d!473028 (= lt!562172 (lemmaSamePrefixThenSameSuffix!643 lt!562176 lt!562163 lt!562140 lt!562145 lt!562116))))

(assert (=> d!473028 (= lt!562145 (getSuffix!691 lt!562116 (list!6789 (charsOf!1727 lt!562167))))))

(assert (=> d!473028 (= lt!562140 (list!6789 (charsOf!1727 lt!562167)))))

(assert (=> d!473028 (= lt!562176 (list!6789 (charsOf!1727 lt!562167)))))

(declare-fun lt!562173 () Unit!27502)

(declare-fun lt!562150 () Unit!27502)

(assert (=> d!473028 (= lt!562173 lt!562150)))

(declare-fun lt!562177 () List!17548)

(assert (=> d!473028 (= (maxPrefixOneRule!740 thiss!17113 (rule!4882 lt!562167) lt!562116) (Some!3150 (tuple2!16957 (Token!5723 (apply!4305 (transformation!3078 (rule!4882 lt!562167)) (seqFromList!1905 lt!562177)) (rule!4882 lt!562167) (size!14057 lt!562177) lt!562177) lt!562163)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!211 (LexerInterface!2707 List!17549 List!17548 List!17548 List!17548 Rule!5956) Unit!27502)

(assert (=> d!473028 (= lt!562150 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!211 thiss!17113 rules!1846 lt!562177 lt!562116 lt!562163 (rule!4882 lt!562167)))))

(assert (=> d!473028 (= lt!562177 (list!6789 (charsOf!1727 lt!562167)))))

(declare-fun lt!562156 () Unit!27502)

(declare-fun lemmaCharactersSize!317 (Token!5722) Unit!27502)

(assert (=> d!473028 (= lt!562156 (lemmaCharactersSize!317 lt!562167))))

(declare-fun lt!562149 () Unit!27502)

(declare-fun lemmaEqSameImage!170 (TokenValueInjection!5996 BalanceConc!11552 BalanceConc!11552) Unit!27502)

(assert (=> d!473028 (= lt!562149 (lemmaEqSameImage!170 (transformation!3078 (rule!4882 lt!562167)) (charsOf!1727 lt!562167) (seqFromList!1905 (originalCharacters!3892 lt!562167))))))

(declare-fun lt!562181 () Unit!27502)

(declare-fun lemmaSemiInverse!385 (TokenValueInjection!5996 BalanceConc!11552) Unit!27502)

(assert (=> d!473028 (= lt!562181 (lemmaSemiInverse!385 (transformation!3078 (rule!4882 lt!562167)) (charsOf!1727 lt!562167)))))

(declare-fun lt!562175 () Unit!27502)

(declare-fun lemmaInv!450 (TokenValueInjection!5996) Unit!27502)

(assert (=> d!473028 (= lt!562175 (lemmaInv!450 (transformation!3078 (rule!4882 lt!562167))))))

(declare-fun lt!562117 () Unit!27502)

(declare-fun lt!562115 () Unit!27502)

(assert (=> d!473028 (= lt!562117 lt!562115)))

(declare-fun lt!562142 () List!17548)

(assert (=> d!473028 (isPrefix!1338 lt!562142 (++!4565 lt!562142 lt!562163))))

(assert (=> d!473028 (= lt!562115 (lemmaConcatTwoListThenFirstIsPrefix!863 lt!562142 lt!562163))))

(assert (=> d!473028 (= lt!562142 (list!6789 (charsOf!1727 lt!562167)))))

(declare-fun lt!562157 () Unit!27502)

(declare-fun lt!562136 () Unit!27502)

(assert (=> d!473028 (= lt!562157 lt!562136)))

(assert (=> d!473028 e!1021151))

(declare-fun res!709290 () Bool)

(assert (=> d!473028 (=> (not res!709290) (not e!1021151))))

(assert (=> d!473028 (= res!709290 (isDefined!2528 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!562167)))))))

(assert (=> d!473028 (= lt!562136 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!249 thiss!17113 rules!1846 lt!562116 lt!562167))))

(declare-fun lt!562155 () Option!3151)

(assert (=> d!473028 (= lt!562163 (_2!9880 (get!5002 lt!562155)))))

(assert (=> d!473028 (= lt!562167 (_1!9880 (get!5002 lt!562155)))))

(declare-fun lt!562158 () Unit!27502)

(assert (=> d!473028 (= lt!562158 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!281 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312)))))

(assert (=> d!473028 (= lt!562155 (maxPrefix!1271 thiss!17113 rules!1846 lt!562116))))

(declare-fun lt!562131 () Unit!27502)

(declare-fun lt!562165 () Unit!27502)

(assert (=> d!473028 (= lt!562131 lt!562165)))

(declare-fun lt!562139 () List!17548)

(assert (=> d!473028 (isPrefix!1338 lt!562139 (++!4565 lt!562139 (list!6789 lt!561312)))))

(assert (=> d!473028 (= lt!562165 (lemmaConcatTwoListThenFirstIsPrefix!863 lt!562139 (list!6789 lt!561312)))))

(assert (=> d!473028 (= lt!562139 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))

(assert (=> d!473028 (= lt!562116 (++!4565 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312)))))

(assert (=> d!473028 (not (isEmpty!10500 rules!1846))))

(assert (=> d!473028 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!76 thiss!17113 rules!1846 (h!22881 (t!144429 tokens!457)) (rule!4882 (h!22881 (t!144429 tokens!457))) (list!6789 lt!561312)) lt!562118)))

(declare-fun b!1589836 () Bool)

(declare-fun Unit!27556 () Unit!27502)

(assert (=> b!1589836 (= e!1021157 Unit!27556)))

(declare-fun b!1589837 () Bool)

(declare-fun Unit!27557 () Unit!27502)

(assert (=> b!1589837 (= e!1021155 Unit!27557)))

(declare-fun b!1589838 () Bool)

(declare-fun Unit!27558 () Unit!27502)

(assert (=> b!1589838 (= e!1021157 Unit!27558)))

(declare-fun lt!562119 () List!17548)

(assert (=> b!1589838 (= lt!562119 (list!6789 (charsOf!1727 lt!562167)))))

(declare-fun lt!562134 () List!17548)

(assert (=> b!1589838 (= lt!562134 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!562164 () Unit!27502)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!111 (LexerInterface!2707 List!17549 Rule!5956 List!17548 List!17548 List!17548 Rule!5956) Unit!27502)

(assert (=> b!1589838 (= lt!562164 (lemmaMaxPrefixOutputsMaxPrefix!111 thiss!17113 rules!1846 (rule!4882 lt!562167) lt!562119 lt!562116 lt!562134 (rule!4882 (h!22881 (t!144429 tokens!457)))))))

(assert (=> b!1589838 (not (matchR!1925 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))) lt!562134))))

(declare-fun lt!562182 () Unit!27502)

(assert (=> b!1589838 (= lt!562182 lt!562164)))

(assert (=> b!1589838 false))

(declare-fun b!1589839 () Bool)

(declare-fun Unit!27559 () Unit!27502)

(assert (=> b!1589839 (= e!1021153 Unit!27559)))

(declare-fun b!1589840 () Bool)

(assert (=> b!1589840 false))

(declare-fun lt!562168 () Unit!27502)

(declare-fun lt!562144 () Unit!27502)

(assert (=> b!1589840 (= lt!562168 lt!562144)))

(declare-fun lt!562160 () List!17548)

(assert (=> b!1589840 (not (matchR!1925 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))) lt!562160))))

(assert (=> b!1589840 (= lt!562144 (lemmaMaxPrefNoSmallerRuleMatches!61 thiss!17113 rules!1846 (rule!4882 lt!562167) lt!562160 lt!562116 (rule!4882 (h!22881 (t!144429 tokens!457)))))))

(assert (=> b!1589840 (= lt!562160 (list!6789 (charsOf!1727 lt!562167)))))

(declare-fun Unit!27560 () Unit!27502)

(assert (=> b!1589840 (= e!1021153 Unit!27560)))

(declare-fun b!1589841 () Bool)

(declare-fun Unit!27561 () Unit!27502)

(assert (=> b!1589841 (= e!1021154 Unit!27561)))

(assert (= (and d!473028 res!709290) b!1589829))

(assert (= (and b!1589829 res!709291) b!1589828))

(assert (= (and d!473028 c!257671) b!1589832))

(assert (= (and d!473028 (not c!257671)) b!1589831))

(assert (= (and d!473028 c!257674) b!1589838))

(assert (= (and d!473028 (not c!257674)) b!1589836))

(assert (= (and d!473028 c!257672) b!1589835))

(assert (= (and d!473028 (not c!257672)) b!1589833))

(assert (= (and b!1589835 c!257675) b!1589840))

(assert (= (and b!1589835 (not c!257675)) b!1589839))

(assert (= (and b!1589835 c!257673) b!1589830))

(assert (= (and b!1589835 (not c!257673)) b!1589837))

(assert (= (and b!1589835 c!257676) b!1589834))

(assert (= (and b!1589835 (not c!257676)) b!1589841))

(declare-fun m!1882529 () Bool)

(assert (=> d!473028 m!1882529))

(declare-fun m!1882531 () Bool)

(assert (=> d!473028 m!1882531))

(assert (=> d!473028 m!1879749))

(assert (=> d!473028 m!1880599))

(declare-fun m!1882533 () Bool)

(assert (=> d!473028 m!1882533))

(assert (=> d!473028 m!1880599))

(declare-fun m!1882535 () Bool)

(assert (=> d!473028 m!1882535))

(declare-fun m!1882537 () Bool)

(assert (=> d!473028 m!1882537))

(assert (=> d!473028 m!1879759))

(assert (=> d!473028 m!1880059))

(declare-fun m!1882539 () Bool)

(assert (=> d!473028 m!1882539))

(declare-fun m!1882541 () Bool)

(assert (=> d!473028 m!1882541))

(declare-fun m!1882543 () Bool)

(assert (=> d!473028 m!1882543))

(assert (=> d!473028 m!1882539))

(declare-fun m!1882545 () Bool)

(assert (=> d!473028 m!1882545))

(declare-fun m!1882547 () Bool)

(assert (=> d!473028 m!1882547))

(assert (=> d!473028 m!1882539))

(declare-fun m!1882549 () Bool)

(assert (=> d!473028 m!1882549))

(declare-fun m!1882551 () Bool)

(assert (=> d!473028 m!1882551))

(assert (=> d!473028 m!1880599))

(assert (=> d!473028 m!1880609))

(declare-fun m!1882553 () Bool)

(assert (=> d!473028 m!1882553))

(declare-fun m!1882555 () Bool)

(assert (=> d!473028 m!1882555))

(declare-fun m!1882557 () Bool)

(assert (=> d!473028 m!1882557))

(declare-fun m!1882559 () Bool)

(assert (=> d!473028 m!1882559))

(declare-fun m!1882561 () Bool)

(assert (=> d!473028 m!1882561))

(assert (=> d!473028 m!1879759))

(assert (=> d!473028 m!1880599))

(assert (=> d!473028 m!1880609))

(assert (=> d!473028 m!1880641))

(assert (=> d!473028 m!1880599))

(assert (=> d!473028 m!1880609))

(assert (=> d!473028 m!1880599))

(declare-fun m!1882563 () Bool)

(assert (=> d!473028 m!1882563))

(declare-fun m!1882565 () Bool)

(assert (=> d!473028 m!1882565))

(declare-fun m!1882567 () Bool)

(assert (=> d!473028 m!1882567))

(assert (=> d!473028 m!1879749))

(assert (=> d!473028 m!1882555))

(declare-fun m!1882569 () Bool)

(assert (=> d!473028 m!1882569))

(assert (=> d!473028 m!1879759))

(assert (=> d!473028 m!1880599))

(assert (=> d!473028 m!1882561))

(declare-fun m!1882571 () Bool)

(assert (=> d!473028 m!1882571))

(assert (=> d!473028 m!1880609))

(assert (=> d!473028 m!1882565))

(assert (=> d!473028 m!1882553))

(declare-fun m!1882573 () Bool)

(assert (=> d!473028 m!1882573))

(assert (=> d!473028 m!1882537))

(declare-fun m!1882575 () Bool)

(assert (=> d!473028 m!1882575))

(assert (=> d!473028 m!1882545))

(declare-fun m!1882577 () Bool)

(assert (=> d!473028 m!1882577))

(assert (=> d!473028 m!1882539))

(declare-fun m!1882579 () Bool)

(assert (=> d!473028 m!1882579))

(declare-fun m!1882581 () Bool)

(assert (=> d!473028 m!1882581))

(declare-fun m!1882583 () Bool)

(assert (=> d!473028 m!1882583))

(assert (=> d!473028 m!1879839))

(declare-fun m!1882585 () Bool)

(assert (=> d!473028 m!1882585))

(assert (=> d!473028 m!1880609))

(declare-fun m!1882587 () Bool)

(assert (=> d!473028 m!1882587))

(declare-fun m!1882589 () Bool)

(assert (=> d!473028 m!1882589))

(declare-fun m!1882591 () Bool)

(assert (=> d!473028 m!1882591))

(assert (=> d!473028 m!1882539))

(assert (=> d!473028 m!1882541))

(declare-fun m!1882593 () Bool)

(assert (=> b!1589838 m!1882593))

(assert (=> b!1589838 m!1879759))

(assert (=> b!1589838 m!1879759))

(assert (=> b!1589838 m!1880599))

(assert (=> b!1589838 m!1882539))

(assert (=> b!1589838 m!1882545))

(declare-fun m!1882595 () Bool)

(assert (=> b!1589838 m!1882595))

(assert (=> b!1589838 m!1882539))

(declare-fun m!1882597 () Bool)

(assert (=> b!1589840 m!1882597))

(declare-fun m!1882599 () Bool)

(assert (=> b!1589840 m!1882599))

(assert (=> b!1589840 m!1882539))

(assert (=> b!1589840 m!1882539))

(assert (=> b!1589840 m!1882545))

(declare-fun m!1882601 () Bool)

(assert (=> b!1589832 m!1882601))

(declare-fun m!1882603 () Bool)

(assert (=> b!1589832 m!1882603))

(declare-fun m!1882605 () Bool)

(assert (=> b!1589832 m!1882605))

(assert (=> b!1589832 m!1879749))

(declare-fun m!1882607 () Bool)

(assert (=> b!1589832 m!1882607))

(declare-fun m!1882609 () Bool)

(assert (=> b!1589832 m!1882609))

(assert (=> b!1589832 m!1882539))

(assert (=> b!1589832 m!1882545))

(declare-fun m!1882611 () Bool)

(assert (=> b!1589832 m!1882611))

(assert (=> b!1589832 m!1880609))

(assert (=> b!1589832 m!1880611))

(assert (=> b!1589832 m!1882607))

(assert (=> b!1589832 m!1882539))

(assert (=> b!1589832 m!1880609))

(declare-fun m!1882613 () Bool)

(assert (=> b!1589832 m!1882613))

(assert (=> b!1589832 m!1879759))

(declare-fun m!1882615 () Bool)

(assert (=> b!1589832 m!1882615))

(declare-fun m!1882617 () Bool)

(assert (=> b!1589832 m!1882617))

(assert (=> b!1589832 m!1880599))

(declare-fun m!1882619 () Bool)

(assert (=> b!1589832 m!1882619))

(assert (=> b!1589832 m!1879759))

(assert (=> b!1589832 m!1880599))

(assert (=> b!1589832 m!1879749))

(assert (=> b!1589832 m!1882545))

(declare-fun m!1882621 () Bool)

(assert (=> b!1589832 m!1882621))

(declare-fun m!1882623 () Bool)

(assert (=> b!1589832 m!1882623))

(assert (=> b!1589832 m!1882617))

(declare-fun m!1882625 () Bool)

(assert (=> b!1589832 m!1882625))

(assert (=> b!1589832 m!1880599))

(declare-fun m!1882627 () Bool)

(assert (=> b!1589832 m!1882627))

(assert (=> b!1589828 m!1882561))

(assert (=> b!1589828 m!1882561))

(declare-fun m!1882629 () Bool)

(assert (=> b!1589828 m!1882629))

(declare-fun m!1882631 () Bool)

(assert (=> b!1589830 m!1882631))

(assert (=> b!1589830 m!1879759))

(assert (=> b!1589830 m!1879759))

(assert (=> b!1589830 m!1880599))

(assert (=> b!1589830 m!1880599))

(declare-fun m!1882633 () Bool)

(assert (=> b!1589830 m!1882633))

(declare-fun m!1882635 () Bool)

(assert (=> b!1589835 m!1882635))

(declare-fun m!1882637 () Bool)

(assert (=> b!1589835 m!1882637))

(declare-fun m!1882639 () Bool)

(assert (=> b!1589834 m!1882639))

(assert (=> b!1589829 m!1882561))

(assert (=> b!1589829 m!1882545))

(declare-fun m!1882641 () Bool)

(assert (=> b!1589829 m!1882641))

(assert (=> b!1589829 m!1882539))

(assert (=> b!1589829 m!1882545))

(assert (=> b!1589829 m!1882561))

(assert (=> b!1589829 m!1882629))

(assert (=> b!1589829 m!1882539))

(assert (=> b!1588896 d!473028))

(declare-fun d!473254 () Bool)

(declare-fun lt!562184 () BalanceConc!11552)

(assert (=> d!473254 (= (list!6789 lt!562184) (printList!822 thiss!17113 (list!6790 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))))))))

(assert (=> d!473254 (= lt!562184 (printTailRec!760 thiss!17113 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))) 0 (BalanceConc!11553 Empty!5804)))))

(assert (=> d!473254 (= (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 (t!144429 tokens!457)))) lt!562184)))

(declare-fun bs!391692 () Bool)

(assert (= bs!391692 d!473254))

(declare-fun m!1882643 () Bool)

(assert (=> bs!391692 m!1882643))

(assert (=> bs!391692 m!1880627))

(declare-fun m!1882645 () Bool)

(assert (=> bs!391692 m!1882645))

(assert (=> bs!391692 m!1882645))

(declare-fun m!1882647 () Bool)

(assert (=> bs!391692 m!1882647))

(assert (=> bs!391692 m!1880627))

(assert (=> bs!391692 m!1880629))

(assert (=> b!1588896 d!473254))

(declare-fun d!473256 () Bool)

(assert (=> d!473256 (= (list!6789 lt!561314) (list!6793 (c!257383 lt!561314)))))

(declare-fun bs!391693 () Bool)

(assert (= bs!391693 d!473256))

(declare-fun m!1882649 () Bool)

(assert (=> bs!391693 m!1882649))

(assert (=> b!1588896 d!473256))

(declare-fun d!473258 () Bool)

(declare-fun lt!562185 () BalanceConc!11552)

(assert (=> d!473258 (= (list!6789 lt!562185) (originalCharacters!3892 (h!22881 (t!144429 (t!144429 tokens!457)))))))

(assert (=> d!473258 (= lt!562185 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (value!97397 (h!22881 (t!144429 (t!144429 tokens!457))))))))

(assert (=> d!473258 (= (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))) lt!562185)))

(declare-fun b_lambda!50031 () Bool)

(assert (=> (not b_lambda!50031) (not d!473258)))

(declare-fun t!144535 () Bool)

(declare-fun tb!89479 () Bool)

(assert (=> (and b!1588488 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457))))))) t!144535) tb!89479))

(declare-fun b!1589842 () Bool)

(declare-fun e!1021158 () Bool)

(declare-fun tp!467049 () Bool)

(assert (=> b!1589842 (= e!1021158 (and (inv!22891 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (value!97397 (h!22881 (t!144429 (t!144429 tokens!457))))))) tp!467049))))

(declare-fun result!108346 () Bool)

(assert (=> tb!89479 (= result!108346 (and (inv!22892 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (value!97397 (h!22881 (t!144429 (t!144429 tokens!457)))))) e!1021158))))

(assert (= tb!89479 b!1589842))

(declare-fun m!1882651 () Bool)

(assert (=> b!1589842 m!1882651))

(declare-fun m!1882653 () Bool)

(assert (=> tb!89479 m!1882653))

(assert (=> d!473258 t!144535))

(declare-fun b_and!111517 () Bool)

(assert (= b_and!111477 (and (=> t!144535 result!108346) b_and!111517)))

(declare-fun t!144537 () Bool)

(declare-fun tb!89481 () Bool)

(assert (=> (and b!1588496 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457))))))) t!144537) tb!89481))

(declare-fun result!108348 () Bool)

(assert (= result!108348 result!108346))

(assert (=> d!473258 t!144537))

(declare-fun b_and!111519 () Bool)

(assert (= b_and!111479 (and (=> t!144537 result!108348) b_and!111519)))

(declare-fun tb!89483 () Bool)

(declare-fun t!144539 () Bool)

(assert (=> (and b!1588974 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457))))))) t!144539) tb!89483))

(declare-fun result!108350 () Bool)

(assert (= result!108350 result!108346))

(assert (=> d!473258 t!144539))

(declare-fun b_and!111521 () Bool)

(assert (= b_and!111481 (and (=> t!144539 result!108350) b_and!111521)))

(declare-fun t!144541 () Bool)

(declare-fun tb!89485 () Bool)

(assert (=> (and b!1588988 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457))))))) t!144541) tb!89485))

(declare-fun result!108352 () Bool)

(assert (= result!108352 result!108346))

(assert (=> d!473258 t!144541))

(declare-fun b_and!111523 () Bool)

(assert (= b_and!111483 (and (=> t!144541 result!108352) b_and!111523)))

(declare-fun m!1882655 () Bool)

(assert (=> d!473258 m!1882655))

(declare-fun m!1882657 () Bool)

(assert (=> d!473258 m!1882657))

(assert (=> b!1588896 d!473258))

(declare-fun b!1589846 () Bool)

(declare-fun e!1021160 () Bool)

(assert (=> b!1589846 (= e!1021160 (>= (size!14057 (++!4565 lt!561306 lt!561317)) (size!14057 lt!561306)))))

(declare-fun d!473260 () Bool)

(assert (=> d!473260 e!1021160))

(declare-fun res!709295 () Bool)

(assert (=> d!473260 (=> res!709295 e!1021160)))

(declare-fun lt!562186 () Bool)

(assert (=> d!473260 (= res!709295 (not lt!562186))))

(declare-fun e!1021159 () Bool)

(assert (=> d!473260 (= lt!562186 e!1021159)))

(declare-fun res!709294 () Bool)

(assert (=> d!473260 (=> res!709294 e!1021159)))

(assert (=> d!473260 (= res!709294 (is-Nil!17478 lt!561306))))

(assert (=> d!473260 (= (isPrefix!1338 lt!561306 (++!4565 lt!561306 lt!561317)) lt!562186)))

(declare-fun b!1589843 () Bool)

(declare-fun e!1021161 () Bool)

(assert (=> b!1589843 (= e!1021159 e!1021161)))

(declare-fun res!709293 () Bool)

(assert (=> b!1589843 (=> (not res!709293) (not e!1021161))))

(assert (=> b!1589843 (= res!709293 (not (is-Nil!17478 (++!4565 lt!561306 lt!561317))))))

(declare-fun b!1589845 () Bool)

(assert (=> b!1589845 (= e!1021161 (isPrefix!1338 (tail!2285 lt!561306) (tail!2285 (++!4565 lt!561306 lt!561317))))))

(declare-fun b!1589844 () Bool)

(declare-fun res!709292 () Bool)

(assert (=> b!1589844 (=> (not res!709292) (not e!1021161))))

(assert (=> b!1589844 (= res!709292 (= (head!3239 lt!561306) (head!3239 (++!4565 lt!561306 lt!561317))))))

(assert (= (and d!473260 (not res!709294)) b!1589843))

(assert (= (and b!1589843 res!709293) b!1589844))

(assert (= (and b!1589844 res!709292) b!1589845))

(assert (= (and d!473260 (not res!709295)) b!1589846))

(assert (=> b!1589846 m!1880605))

(declare-fun m!1882659 () Bool)

(assert (=> b!1589846 m!1882659))

(declare-fun m!1882661 () Bool)

(assert (=> b!1589846 m!1882661))

(declare-fun m!1882663 () Bool)

(assert (=> b!1589845 m!1882663))

(assert (=> b!1589845 m!1880605))

(declare-fun m!1882665 () Bool)

(assert (=> b!1589845 m!1882665))

(assert (=> b!1589845 m!1882663))

(assert (=> b!1589845 m!1882665))

(declare-fun m!1882667 () Bool)

(assert (=> b!1589845 m!1882667))

(declare-fun m!1882669 () Bool)

(assert (=> b!1589844 m!1882669))

(assert (=> b!1589844 m!1880605))

(declare-fun m!1882671 () Bool)

(assert (=> b!1589844 m!1882671))

(assert (=> b!1588896 d!473260))

(assert (=> b!1588896 d!472704))

(declare-fun d!473262 () Bool)

(assert (=> d!473262 (= (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6793 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(declare-fun bs!391694 () Bool)

(assert (= bs!391694 d!473262))

(declare-fun m!1882673 () Bool)

(assert (=> bs!391694 m!1882673))

(assert (=> b!1588896 d!473262))

(declare-fun d!473264 () Bool)

(assert (=> d!473264 (= (list!6790 (_1!9881 lt!561324)) (list!6794 (c!257385 (_1!9881 lt!561324))))))

(declare-fun bs!391695 () Bool)

(assert (= bs!391695 d!473264))

(declare-fun m!1882675 () Bool)

(assert (=> bs!391695 m!1882675))

(assert (=> b!1588896 d!473264))

(declare-fun b!1589847 () Bool)

(declare-fun e!1021162 () Option!3151)

(declare-fun lt!562188 () Option!3151)

(declare-fun lt!562191 () Option!3151)

(assert (=> b!1589847 (= e!1021162 (ite (and (is-None!3150 lt!562188) (is-None!3150 lt!562191)) None!3150 (ite (is-None!3150 lt!562191) lt!562188 (ite (is-None!3150 lt!562188) lt!562191 (ite (>= (size!14055 (_1!9880 (v!24043 lt!562188))) (size!14055 (_1!9880 (v!24043 lt!562191)))) lt!562188 lt!562191)))))))

(declare-fun call!103030 () Option!3151)

(assert (=> b!1589847 (= lt!562188 call!103030)))

(assert (=> b!1589847 (= lt!562191 (maxPrefix!1271 thiss!17113 (t!144428 rules!1846) (list!6789 lt!561314)))))

(declare-fun b!1589848 () Bool)

(declare-fun e!1021163 () Bool)

(declare-fun lt!562187 () Option!3151)

(assert (=> b!1589848 (= e!1021163 (contains!3051 rules!1846 (rule!4882 (_1!9880 (get!5002 lt!562187)))))))

(declare-fun b!1589849 () Bool)

(declare-fun e!1021164 () Bool)

(assert (=> b!1589849 (= e!1021164 e!1021163)))

(declare-fun res!709300 () Bool)

(assert (=> b!1589849 (=> (not res!709300) (not e!1021163))))

(assert (=> b!1589849 (= res!709300 (isDefined!2526 lt!562187))))

(declare-fun b!1589850 () Bool)

(declare-fun res!709301 () Bool)

(assert (=> b!1589850 (=> (not res!709301) (not e!1021163))))

(assert (=> b!1589850 (= res!709301 (= (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562187)))) (originalCharacters!3892 (_1!9880 (get!5002 lt!562187)))))))

(declare-fun b!1589851 () Bool)

(declare-fun res!709297 () Bool)

(assert (=> b!1589851 (=> (not res!709297) (not e!1021163))))

(assert (=> b!1589851 (= res!709297 (= (++!4565 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562187)))) (_2!9880 (get!5002 lt!562187))) (list!6789 lt!561314)))))

(declare-fun b!1589852 () Bool)

(declare-fun res!709298 () Bool)

(assert (=> b!1589852 (=> (not res!709298) (not e!1021163))))

(assert (=> b!1589852 (= res!709298 (< (size!14057 (_2!9880 (get!5002 lt!562187))) (size!14057 (list!6789 lt!561314))))))

(declare-fun d!473266 () Bool)

(assert (=> d!473266 e!1021164))

(declare-fun res!709302 () Bool)

(assert (=> d!473266 (=> res!709302 e!1021164)))

(assert (=> d!473266 (= res!709302 (isEmpty!10504 lt!562187))))

(assert (=> d!473266 (= lt!562187 e!1021162)))

(declare-fun c!257677 () Bool)

(assert (=> d!473266 (= c!257677 (and (is-Cons!17479 rules!1846) (is-Nil!17479 (t!144428 rules!1846))))))

(declare-fun lt!562190 () Unit!27502)

(declare-fun lt!562189 () Unit!27502)

(assert (=> d!473266 (= lt!562190 lt!562189)))

(assert (=> d!473266 (isPrefix!1338 (list!6789 lt!561314) (list!6789 lt!561314))))

(assert (=> d!473266 (= lt!562189 (lemmaIsPrefixRefl!925 (list!6789 lt!561314) (list!6789 lt!561314)))))

(assert (=> d!473266 (rulesValidInductive!927 thiss!17113 rules!1846)))

(assert (=> d!473266 (= (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 lt!561314)) lt!562187)))

(declare-fun bm!103025 () Bool)

(assert (=> bm!103025 (= call!103030 (maxPrefixOneRule!740 thiss!17113 (h!22880 rules!1846) (list!6789 lt!561314)))))

(declare-fun b!1589853 () Bool)

(declare-fun res!709299 () Bool)

(assert (=> b!1589853 (=> (not res!709299) (not e!1021163))))

(assert (=> b!1589853 (= res!709299 (matchR!1925 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!562187)))) (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562187))))))))

(declare-fun b!1589854 () Bool)

(assert (=> b!1589854 (= e!1021162 call!103030)))

(declare-fun b!1589855 () Bool)

(declare-fun res!709296 () Bool)

(assert (=> b!1589855 (=> (not res!709296) (not e!1021163))))

(assert (=> b!1589855 (= res!709296 (= (value!97397 (_1!9880 (get!5002 lt!562187))) (apply!4305 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!562187)))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!562187)))))))))

(assert (= (and d!473266 c!257677) b!1589854))

(assert (= (and d!473266 (not c!257677)) b!1589847))

(assert (= (or b!1589854 b!1589847) bm!103025))

(assert (= (and d!473266 (not res!709302)) b!1589849))

(assert (= (and b!1589849 res!709300) b!1589850))

(assert (= (and b!1589850 res!709301) b!1589852))

(assert (= (and b!1589852 res!709298) b!1589851))

(assert (= (and b!1589851 res!709297) b!1589855))

(assert (= (and b!1589855 res!709296) b!1589853))

(assert (= (and b!1589853 res!709299) b!1589848))

(declare-fun m!1882677 () Bool)

(assert (=> b!1589848 m!1882677))

(declare-fun m!1882679 () Bool)

(assert (=> b!1589848 m!1882679))

(assert (=> b!1589850 m!1882677))

(declare-fun m!1882681 () Bool)

(assert (=> b!1589850 m!1882681))

(assert (=> b!1589850 m!1882681))

(declare-fun m!1882683 () Bool)

(assert (=> b!1589850 m!1882683))

(assert (=> bm!103025 m!1880607))

(declare-fun m!1882685 () Bool)

(assert (=> bm!103025 m!1882685))

(assert (=> b!1589852 m!1882677))

(declare-fun m!1882687 () Bool)

(assert (=> b!1589852 m!1882687))

(assert (=> b!1589852 m!1880607))

(declare-fun m!1882689 () Bool)

(assert (=> b!1589852 m!1882689))

(assert (=> b!1589847 m!1880607))

(declare-fun m!1882691 () Bool)

(assert (=> b!1589847 m!1882691))

(assert (=> b!1589853 m!1882677))

(assert (=> b!1589853 m!1882681))

(assert (=> b!1589853 m!1882681))

(assert (=> b!1589853 m!1882683))

(assert (=> b!1589853 m!1882683))

(declare-fun m!1882693 () Bool)

(assert (=> b!1589853 m!1882693))

(assert (=> b!1589855 m!1882677))

(declare-fun m!1882695 () Bool)

(assert (=> b!1589855 m!1882695))

(assert (=> b!1589855 m!1882695))

(declare-fun m!1882697 () Bool)

(assert (=> b!1589855 m!1882697))

(declare-fun m!1882699 () Bool)

(assert (=> b!1589849 m!1882699))

(assert (=> b!1589851 m!1882677))

(assert (=> b!1589851 m!1882681))

(assert (=> b!1589851 m!1882681))

(assert (=> b!1589851 m!1882683))

(assert (=> b!1589851 m!1882683))

(declare-fun m!1882701 () Bool)

(assert (=> b!1589851 m!1882701))

(declare-fun m!1882703 () Bool)

(assert (=> d!473266 m!1882703))

(assert (=> d!473266 m!1880607))

(assert (=> d!473266 m!1880607))

(declare-fun m!1882705 () Bool)

(assert (=> d!473266 m!1882705))

(assert (=> d!473266 m!1880607))

(assert (=> d!473266 m!1880607))

(declare-fun m!1882707 () Bool)

(assert (=> d!473266 m!1882707))

(assert (=> d!473266 m!1880275))

(assert (=> b!1588896 d!473266))

(declare-fun d!473268 () Bool)

(assert (=> d!473268 (= (seqFromList!1906 (t!144429 (t!144429 (t!144429 tokens!457)))) (fromListB!824 (t!144429 (t!144429 (t!144429 tokens!457)))))))

(declare-fun bs!391696 () Bool)

(assert (= bs!391696 d!473268))

(declare-fun m!1882709 () Bool)

(assert (=> bs!391696 m!1882709))

(assert (=> b!1588896 d!473268))

(declare-fun b!1589857 () Bool)

(declare-fun e!1021166 () List!17548)

(assert (=> b!1589857 (= e!1021166 (Cons!17478 (h!22879 lt!561306) (++!4565 (t!144427 lt!561306) lt!561317)))))

(declare-fun b!1589858 () Bool)

(declare-fun res!709304 () Bool)

(declare-fun e!1021165 () Bool)

(assert (=> b!1589858 (=> (not res!709304) (not e!1021165))))

(declare-fun lt!562192 () List!17548)

(assert (=> b!1589858 (= res!709304 (= (size!14057 lt!562192) (+ (size!14057 lt!561306) (size!14057 lt!561317))))))

(declare-fun b!1589859 () Bool)

(assert (=> b!1589859 (= e!1021165 (or (not (= lt!561317 Nil!17478)) (= lt!562192 lt!561306)))))

(declare-fun d!473270 () Bool)

(assert (=> d!473270 e!1021165))

(declare-fun res!709303 () Bool)

(assert (=> d!473270 (=> (not res!709303) (not e!1021165))))

(assert (=> d!473270 (= res!709303 (= (content!2408 lt!562192) (set.union (content!2408 lt!561306) (content!2408 lt!561317))))))

(assert (=> d!473270 (= lt!562192 e!1021166)))

(declare-fun c!257678 () Bool)

(assert (=> d!473270 (= c!257678 (is-Nil!17478 lt!561306))))

(assert (=> d!473270 (= (++!4565 lt!561306 lt!561317) lt!562192)))

(declare-fun b!1589856 () Bool)

(assert (=> b!1589856 (= e!1021166 lt!561317)))

(assert (= (and d!473270 c!257678) b!1589856))

(assert (= (and d!473270 (not c!257678)) b!1589857))

(assert (= (and d!473270 res!709303) b!1589858))

(assert (= (and b!1589858 res!709304) b!1589859))

(declare-fun m!1882711 () Bool)

(assert (=> b!1589857 m!1882711))

(declare-fun m!1882713 () Bool)

(assert (=> b!1589858 m!1882713))

(assert (=> b!1589858 m!1882661))

(declare-fun m!1882715 () Bool)

(assert (=> b!1589858 m!1882715))

(declare-fun m!1882717 () Bool)

(assert (=> d!473270 m!1882717))

(declare-fun m!1882719 () Bool)

(assert (=> d!473270 m!1882719))

(declare-fun m!1882721 () Bool)

(assert (=> d!473270 m!1882721))

(assert (=> b!1588896 d!473270))

(declare-fun b!1589860 () Bool)

(declare-fun e!1021167 () Option!3151)

(declare-fun lt!562194 () Option!3151)

(declare-fun lt!562197 () Option!3151)

(assert (=> b!1589860 (= e!1021167 (ite (and (is-None!3150 lt!562194) (is-None!3150 lt!562197)) None!3150 (ite (is-None!3150 lt!562197) lt!562194 (ite (is-None!3150 lt!562194) lt!562197 (ite (>= (size!14055 (_1!9880 (v!24043 lt!562194))) (size!14055 (_1!9880 (v!24043 lt!562197)))) lt!562194 lt!562197)))))))

(declare-fun call!103031 () Option!3151)

(assert (=> b!1589860 (= lt!562194 call!103031)))

(assert (=> b!1589860 (= lt!562197 (maxPrefix!1271 thiss!17113 (t!144428 rules!1846) (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(declare-fun b!1589861 () Bool)

(declare-fun e!1021168 () Bool)

(declare-fun lt!562193 () Option!3151)

(assert (=> b!1589861 (= e!1021168 (contains!3051 rules!1846 (rule!4882 (_1!9880 (get!5002 lt!562193)))))))

(declare-fun b!1589862 () Bool)

(declare-fun e!1021169 () Bool)

(assert (=> b!1589862 (= e!1021169 e!1021168)))

(declare-fun res!709309 () Bool)

(assert (=> b!1589862 (=> (not res!709309) (not e!1021168))))

(assert (=> b!1589862 (= res!709309 (isDefined!2526 lt!562193))))

(declare-fun b!1589863 () Bool)

(declare-fun res!709310 () Bool)

(assert (=> b!1589863 (=> (not res!709310) (not e!1021168))))

(assert (=> b!1589863 (= res!709310 (= (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562193)))) (originalCharacters!3892 (_1!9880 (get!5002 lt!562193)))))))

(declare-fun b!1589864 () Bool)

(declare-fun res!709306 () Bool)

(assert (=> b!1589864 (=> (not res!709306) (not e!1021168))))

(assert (=> b!1589864 (= res!709306 (= (++!4565 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562193)))) (_2!9880 (get!5002 lt!562193))) (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(declare-fun b!1589865 () Bool)

(declare-fun res!709307 () Bool)

(assert (=> b!1589865 (=> (not res!709307) (not e!1021168))))

(assert (=> b!1589865 (= res!709307 (< (size!14057 (_2!9880 (get!5002 lt!562193))) (size!14057 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun d!473272 () Bool)

(assert (=> d!473272 e!1021169))

(declare-fun res!709311 () Bool)

(assert (=> d!473272 (=> res!709311 e!1021169)))

(assert (=> d!473272 (= res!709311 (isEmpty!10504 lt!562193))))

(assert (=> d!473272 (= lt!562193 e!1021167)))

(declare-fun c!257679 () Bool)

(assert (=> d!473272 (= c!257679 (and (is-Cons!17479 rules!1846) (is-Nil!17479 (t!144428 rules!1846))))))

(declare-fun lt!562196 () Unit!27502)

(declare-fun lt!562195 () Unit!27502)

(assert (=> d!473272 (= lt!562196 lt!562195)))

(assert (=> d!473272 (isPrefix!1338 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))

(assert (=> d!473272 (= lt!562195 (lemmaIsPrefixRefl!925 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(assert (=> d!473272 (rulesValidInductive!927 thiss!17113 rules!1846)))

(assert (=> d!473272 (= (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))) lt!562193)))

(declare-fun bm!103026 () Bool)

(assert (=> bm!103026 (= call!103031 (maxPrefixOneRule!740 thiss!17113 (h!22880 rules!1846) (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(declare-fun b!1589866 () Bool)

(declare-fun res!709308 () Bool)

(assert (=> b!1589866 (=> (not res!709308) (not e!1021168))))

(assert (=> b!1589866 (= res!709308 (matchR!1925 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!562193)))) (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562193))))))))

(declare-fun b!1589867 () Bool)

(assert (=> b!1589867 (= e!1021167 call!103031)))

(declare-fun b!1589868 () Bool)

(declare-fun res!709305 () Bool)

(assert (=> b!1589868 (=> (not res!709305) (not e!1021168))))

(assert (=> b!1589868 (= res!709305 (= (value!97397 (_1!9880 (get!5002 lt!562193))) (apply!4305 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!562193)))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!562193)))))))))

(assert (= (and d!473272 c!257679) b!1589867))

(assert (= (and d!473272 (not c!257679)) b!1589860))

(assert (= (or b!1589867 b!1589860) bm!103026))

(assert (= (and d!473272 (not res!709311)) b!1589862))

(assert (= (and b!1589862 res!709309) b!1589863))

(assert (= (and b!1589863 res!709310) b!1589865))

(assert (= (and b!1589865 res!709307) b!1589864))

(assert (= (and b!1589864 res!709306) b!1589868))

(assert (= (and b!1589868 res!709305) b!1589866))

(assert (= (and b!1589866 res!709308) b!1589861))

(declare-fun m!1882723 () Bool)

(assert (=> b!1589861 m!1882723))

(declare-fun m!1882725 () Bool)

(assert (=> b!1589861 m!1882725))

(assert (=> b!1589863 m!1882723))

(declare-fun m!1882727 () Bool)

(assert (=> b!1589863 m!1882727))

(assert (=> b!1589863 m!1882727))

(declare-fun m!1882729 () Bool)

(assert (=> b!1589863 m!1882729))

(assert (=> bm!103026 m!1880599))

(declare-fun m!1882731 () Bool)

(assert (=> bm!103026 m!1882731))

(assert (=> b!1589865 m!1882723))

(declare-fun m!1882733 () Bool)

(assert (=> b!1589865 m!1882733))

(assert (=> b!1589865 m!1880599))

(declare-fun m!1882735 () Bool)

(assert (=> b!1589865 m!1882735))

(assert (=> b!1589860 m!1880599))

(declare-fun m!1882737 () Bool)

(assert (=> b!1589860 m!1882737))

(assert (=> b!1589866 m!1882723))

(assert (=> b!1589866 m!1882727))

(assert (=> b!1589866 m!1882727))

(assert (=> b!1589866 m!1882729))

(assert (=> b!1589866 m!1882729))

(declare-fun m!1882739 () Bool)

(assert (=> b!1589866 m!1882739))

(assert (=> b!1589868 m!1882723))

(declare-fun m!1882741 () Bool)

(assert (=> b!1589868 m!1882741))

(assert (=> b!1589868 m!1882741))

(declare-fun m!1882743 () Bool)

(assert (=> b!1589868 m!1882743))

(declare-fun m!1882745 () Bool)

(assert (=> b!1589862 m!1882745))

(assert (=> b!1589864 m!1882723))

(assert (=> b!1589864 m!1882727))

(assert (=> b!1589864 m!1882727))

(assert (=> b!1589864 m!1882729))

(assert (=> b!1589864 m!1882729))

(declare-fun m!1882747 () Bool)

(assert (=> b!1589864 m!1882747))

(declare-fun m!1882749 () Bool)

(assert (=> d!473272 m!1882749))

(assert (=> d!473272 m!1880599))

(assert (=> d!473272 m!1880599))

(declare-fun m!1882751 () Bool)

(assert (=> d!473272 m!1882751))

(assert (=> d!473272 m!1880599))

(assert (=> d!473272 m!1880599))

(declare-fun m!1882753 () Bool)

(assert (=> d!473272 m!1882753))

(assert (=> d!473272 m!1880275))

(assert (=> b!1588896 d!473272))

(declare-fun d!473274 () Bool)

(assert (=> d!473274 (= (isDefined!2526 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))) (not (isEmpty!10504 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))))

(declare-fun bs!391697 () Bool)

(assert (= bs!391697 d!473274))

(assert (=> bs!391697 m!1880601))

(declare-fun m!1882755 () Bool)

(assert (=> bs!391697 m!1882755))

(assert (=> b!1588896 d!473274))

(declare-fun d!473276 () Bool)

(declare-fun e!1021171 () Bool)

(assert (=> d!473276 e!1021171))

(declare-fun res!709312 () Bool)

(assert (=> d!473276 (=> (not res!709312) (not e!1021171))))

(assert (=> d!473276 (= res!709312 (= (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 (t!144429 tokens!457))))))) (t!144429 (t!144429 tokens!457))))))

(declare-fun lt!562211 () Unit!27502)

(declare-fun e!1021170 () Unit!27502)

(assert (=> d!473276 (= lt!562211 e!1021170)))

(declare-fun c!257680 () Bool)

(assert (=> d!473276 (= c!257680 (or (is-Nil!17480 (t!144429 (t!144429 tokens!457))) (is-Nil!17480 (t!144429 (t!144429 (t!144429 tokens!457))))))))

(assert (=> d!473276 (not (isEmpty!10500 rules!1846))))

(assert (=> d!473276 (= (theoremInvertabilityWhenTokenListSeparable!152 thiss!17113 rules!1846 (t!144429 (t!144429 tokens!457))) lt!562211)))

(declare-fun b!1589869 () Bool)

(declare-fun Unit!27562 () Unit!27502)

(assert (=> b!1589869 (= e!1021170 Unit!27562)))

(declare-fun b!1589870 () Bool)

(declare-fun Unit!27563 () Unit!27502)

(assert (=> b!1589870 (= e!1021170 Unit!27563)))

(declare-fun lt!562209 () BalanceConc!11552)

(assert (=> b!1589870 (= lt!562209 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))))))

(declare-fun lt!562207 () BalanceConc!11552)

(assert (=> b!1589870 (= lt!562207 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 (t!144429 (t!144429 tokens!457))))))))

(declare-fun lt!562219 () tuple2!16958)

(assert (=> b!1589870 (= lt!562219 (lex!1191 thiss!17113 rules!1846 lt!562207))))

(declare-fun lt!562201 () List!17548)

(assert (=> b!1589870 (= lt!562201 (list!6789 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457))))))))

(declare-fun lt!562212 () List!17548)

(assert (=> b!1589870 (= lt!562212 (list!6789 lt!562207))))

(declare-fun lt!562206 () Unit!27502)

(assert (=> b!1589870 (= lt!562206 (lemmaConcatTwoListThenFirstIsPrefix!863 lt!562201 lt!562212))))

(assert (=> b!1589870 (isPrefix!1338 lt!562201 (++!4565 lt!562201 lt!562212))))

(declare-fun lt!562208 () Unit!27502)

(assert (=> b!1589870 (= lt!562208 lt!562206)))

(declare-fun lt!562216 () Unit!27502)

(assert (=> b!1589870 (= lt!562216 (theoremInvertabilityWhenTokenListSeparable!152 thiss!17113 rules!1846 (t!144429 (t!144429 (t!144429 tokens!457)))))))

(declare-fun lt!562221 () Unit!27502)

(assert (=> b!1589870 (= lt!562221 (seqFromListBHdTlConstructive!155 (h!22881 (t!144429 (t!144429 (t!144429 tokens!457)))) (t!144429 (t!144429 (t!144429 (t!144429 tokens!457)))) (_1!9881 lt!562219)))))

(assert (=> b!1589870 (= (list!6790 (_1!9881 lt!562219)) (list!6790 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 (t!144429 (t!144429 tokens!457))))) (h!22881 (t!144429 (t!144429 (t!144429 tokens!457)))))))))

(declare-fun lt!562202 () Unit!27502)

(assert (=> b!1589870 (= lt!562202 lt!562221)))

(declare-fun lt!562217 () Option!3151)

(assert (=> b!1589870 (= lt!562217 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 lt!562209)))))

(assert (=> b!1589870 (= (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 (t!144429 (t!144429 tokens!457))))) (printTailRec!760 thiss!17113 (singletonSeq!1435 (h!22881 (t!144429 (t!144429 tokens!457)))) 0 (BalanceConc!11553 Empty!5804)))))

(declare-fun lt!562214 () Unit!27502)

(declare-fun Unit!27564 () Unit!27502)

(assert (=> b!1589870 (= lt!562214 Unit!27564)))

(declare-fun lt!562200 () Unit!27502)

(assert (=> b!1589870 (= lt!562200 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!281 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457))))) (list!6789 lt!562207)))))

(assert (=> b!1589870 (= (list!6789 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457))))) (originalCharacters!3892 (h!22881 (t!144429 (t!144429 tokens!457)))))))

(declare-fun lt!562215 () Unit!27502)

(declare-fun Unit!27565 () Unit!27502)

(assert (=> b!1589870 (= lt!562215 Unit!27565)))

(assert (=> b!1589870 (= (list!6789 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 (t!144429 tokens!457))))) 0))) (Cons!17478 (head!3239 (originalCharacters!3892 (h!22881 (t!144429 (t!144429 (t!144429 tokens!457)))))) Nil!17478))))

(declare-fun lt!562220 () Unit!27502)

(declare-fun Unit!27566 () Unit!27502)

(assert (=> b!1589870 (= lt!562220 Unit!27566)))

(assert (=> b!1589870 (= (list!6789 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 (t!144429 tokens!457))))) 0))) (Cons!17478 (head!3239 (list!6789 lt!562207)) Nil!17478))))

(declare-fun lt!562205 () Unit!27502)

(declare-fun Unit!27567 () Unit!27502)

(assert (=> b!1589870 (= lt!562205 Unit!27567)))

(assert (=> b!1589870 (= (list!6789 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 (t!144429 tokens!457))))) 0))) (Cons!17478 (head!3243 lt!562207) Nil!17478))))

(declare-fun lt!562218 () Unit!27502)

(declare-fun Unit!27568 () Unit!27502)

(assert (=> b!1589870 (= lt!562218 Unit!27568)))

(assert (=> b!1589870 (isDefined!2526 (maxPrefix!1271 thiss!17113 rules!1846 (originalCharacters!3892 (h!22881 (t!144429 (t!144429 tokens!457))))))))

(declare-fun lt!562222 () Unit!27502)

(declare-fun Unit!27569 () Unit!27502)

(assert (=> b!1589870 (= lt!562222 Unit!27569)))

(assert (=> b!1589870 (isDefined!2526 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))))))))

(declare-fun lt!562199 () Unit!27502)

(declare-fun Unit!27570 () Unit!27502)

(assert (=> b!1589870 (= lt!562199 Unit!27570)))

(declare-fun lt!562198 () Unit!27502)

(declare-fun Unit!27571 () Unit!27502)

(assert (=> b!1589870 (= lt!562198 Unit!27571)))

(assert (=> b!1589870 (= (_1!9880 (get!5002 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))))))) (h!22881 (t!144429 (t!144429 tokens!457))))))

(declare-fun lt!562203 () Unit!27502)

(declare-fun Unit!27572 () Unit!27502)

(assert (=> b!1589870 (= lt!562203 Unit!27572)))

(assert (=> b!1589870 (isEmpty!10507 (_2!9880 (get!5002 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))))))))))

(declare-fun lt!562213 () Unit!27502)

(declare-fun Unit!27573 () Unit!27502)

(assert (=> b!1589870 (= lt!562213 Unit!27573)))

(assert (=> b!1589870 (matchR!1925 (regex!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457))))) (list!6789 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457))))))))

(declare-fun lt!562223 () Unit!27502)

(declare-fun Unit!27574 () Unit!27502)

(assert (=> b!1589870 (= lt!562223 Unit!27574)))

(assert (=> b!1589870 (= (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))) (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))))

(declare-fun lt!562210 () Unit!27502)

(declare-fun Unit!27575 () Unit!27502)

(assert (=> b!1589870 (= lt!562210 Unit!27575)))

(declare-fun lt!562204 () Unit!27502)

(assert (=> b!1589870 (= lt!562204 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!76 thiss!17113 rules!1846 (h!22881 (t!144429 (t!144429 tokens!457))) (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))) (list!6789 lt!562207)))))

(declare-fun b!1589871 () Bool)

(assert (=> b!1589871 (= e!1021171 (isEmpty!10510 (_2!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 (t!144429 tokens!457))))))))))

(assert (= (and d!473276 c!257680) b!1589869))

(assert (= (and d!473276 (not c!257680)) b!1589870))

(assert (= (and d!473276 res!709312) b!1589871))

(declare-fun m!1882757 () Bool)

(assert (=> d!473276 m!1882757))

(assert (=> d!473276 m!1879839))

(assert (=> d!473276 m!1879811))

(assert (=> d!473276 m!1880631))

(assert (=> d!473276 m!1879811))

(assert (=> d!473276 m!1880631))

(declare-fun m!1882759 () Bool)

(assert (=> d!473276 m!1882759))

(assert (=> b!1589870 m!1881415))

(declare-fun m!1882761 () Bool)

(assert (=> b!1589870 m!1882761))

(declare-fun m!1882763 () Bool)

(assert (=> b!1589870 m!1882763))

(assert (=> b!1589870 m!1880633))

(declare-fun m!1882765 () Bool)

(assert (=> b!1589870 m!1882765))

(declare-fun m!1882767 () Bool)

(assert (=> b!1589870 m!1882767))

(declare-fun m!1882769 () Bool)

(assert (=> b!1589870 m!1882769))

(declare-fun m!1882771 () Bool)

(assert (=> b!1589870 m!1882771))

(assert (=> b!1589870 m!1882765))

(declare-fun m!1882773 () Bool)

(assert (=> b!1589870 m!1882773))

(declare-fun m!1882775 () Bool)

(assert (=> b!1589870 m!1882775))

(assert (=> b!1589870 m!1882769))

(declare-fun m!1882777 () Bool)

(assert (=> b!1589870 m!1882777))

(declare-fun m!1882779 () Bool)

(assert (=> b!1589870 m!1882779))

(declare-fun m!1882781 () Bool)

(assert (=> b!1589870 m!1882781))

(assert (=> b!1589870 m!1879811))

(declare-fun m!1882783 () Bool)

(assert (=> b!1589870 m!1882783))

(declare-fun m!1882785 () Bool)

(assert (=> b!1589870 m!1882785))

(declare-fun m!1882787 () Bool)

(assert (=> b!1589870 m!1882787))

(declare-fun m!1882789 () Bool)

(assert (=> b!1589870 m!1882789))

(assert (=> b!1589870 m!1880633))

(declare-fun m!1882791 () Bool)

(assert (=> b!1589870 m!1882791))

(assert (=> b!1589870 m!1882769))

(declare-fun m!1882793 () Bool)

(assert (=> b!1589870 m!1882793))

(declare-fun m!1882795 () Bool)

(assert (=> b!1589870 m!1882795))

(declare-fun m!1882797 () Bool)

(assert (=> b!1589870 m!1882797))

(assert (=> b!1589870 m!1882779))

(declare-fun m!1882799 () Bool)

(assert (=> b!1589870 m!1882799))

(assert (=> b!1589870 m!1881415))

(assert (=> b!1589870 m!1882769))

(declare-fun m!1882801 () Bool)

(assert (=> b!1589870 m!1882801))

(assert (=> b!1589870 m!1882787))

(declare-fun m!1882803 () Bool)

(assert (=> b!1589870 m!1882803))

(declare-fun m!1882805 () Bool)

(assert (=> b!1589870 m!1882805))

(declare-fun m!1882807 () Bool)

(assert (=> b!1589870 m!1882807))

(assert (=> b!1589870 m!1879811))

(assert (=> b!1589870 m!1880631))

(declare-fun m!1882809 () Bool)

(assert (=> b!1589870 m!1882809))

(declare-fun m!1882811 () Bool)

(assert (=> b!1589870 m!1882811))

(assert (=> b!1589870 m!1882793))

(assert (=> b!1589870 m!1882761))

(declare-fun m!1882813 () Bool)

(assert (=> b!1589870 m!1882813))

(assert (=> b!1589870 m!1882795))

(declare-fun m!1882815 () Bool)

(assert (=> b!1589870 m!1882815))

(declare-fun m!1882817 () Bool)

(assert (=> b!1589870 m!1882817))

(assert (=> b!1589870 m!1882761))

(declare-fun m!1882819 () Bool)

(assert (=> b!1589870 m!1882819))

(assert (=> b!1589870 m!1882787))

(assert (=> b!1589870 m!1880619))

(assert (=> b!1589870 m!1881415))

(assert (=> b!1589870 m!1880619))

(assert (=> b!1589870 m!1882799))

(declare-fun m!1882821 () Bool)

(assert (=> b!1589870 m!1882821))

(assert (=> b!1589870 m!1882767))

(declare-fun m!1882823 () Bool)

(assert (=> b!1589870 m!1882823))

(assert (=> b!1589870 m!1882781))

(assert (=> b!1589870 m!1882805))

(assert (=> b!1589870 m!1881415))

(declare-fun m!1882825 () Bool)

(assert (=> b!1589870 m!1882825))

(assert (=> b!1589871 m!1879811))

(assert (=> b!1589871 m!1879811))

(assert (=> b!1589871 m!1880631))

(assert (=> b!1589871 m!1880631))

(assert (=> b!1589871 m!1882759))

(declare-fun m!1882827 () Bool)

(assert (=> b!1589871 m!1882827))

(assert (=> b!1588896 d!473276))

(declare-fun d!473278 () Bool)

(declare-fun lt!562224 () BalanceConc!11552)

(assert (=> d!473278 (= (list!6789 lt!562224) (printListTailRec!320 thiss!17113 (dropList!537 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))) 0) (list!6789 (BalanceConc!11553 Empty!5804))))))

(declare-fun e!1021172 () BalanceConc!11552)

(assert (=> d!473278 (= lt!562224 e!1021172)))

(declare-fun c!257681 () Bool)

(assert (=> d!473278 (= c!257681 (>= 0 (size!14059 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))))))))

(declare-fun e!1021173 () Bool)

(assert (=> d!473278 e!1021173))

(declare-fun res!709313 () Bool)

(assert (=> d!473278 (=> (not res!709313) (not e!1021173))))

(assert (=> d!473278 (= res!709313 (>= 0 0))))

(assert (=> d!473278 (= (printTailRec!760 thiss!17113 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))) 0 (BalanceConc!11553 Empty!5804)) lt!562224)))

(declare-fun b!1589872 () Bool)

(assert (=> b!1589872 (= e!1021173 (<= 0 (size!14059 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))))))))

(declare-fun b!1589873 () Bool)

(assert (=> b!1589873 (= e!1021172 (BalanceConc!11553 Empty!5804))))

(declare-fun b!1589874 () Bool)

(assert (=> b!1589874 (= e!1021172 (printTailRec!760 thiss!17113 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))) (+ 0 1) (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (apply!4303 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))) 0)))))))

(declare-fun lt!562230 () List!17550)

(assert (=> b!1589874 (= lt!562230 (list!6790 (singletonSeq!1435 (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!562228 () Unit!27502)

(assert (=> b!1589874 (= lt!562228 (lemmaDropApply!527 lt!562230 0))))

(assert (=> b!1589874 (= (head!3238 (drop!829 lt!562230 0)) (apply!4304 lt!562230 0))))

(declare-fun lt!562229 () Unit!27502)

(assert (=> b!1589874 (= lt!562229 lt!562228)))

(declare-fun lt!562225 () List!17550)

(assert (=> b!1589874 (= lt!562225 (list!6790 (singletonSeq!1435 (h!22881 (t!144429 tokens!457)))))))

(declare-fun lt!562226 () Unit!27502)

(assert (=> b!1589874 (= lt!562226 (lemmaDropTail!507 lt!562225 0))))

(assert (=> b!1589874 (= (tail!2286 (drop!829 lt!562225 0)) (drop!829 lt!562225 (+ 0 1)))))

(declare-fun lt!562227 () Unit!27502)

(assert (=> b!1589874 (= lt!562227 lt!562226)))

(assert (= (and d!473278 res!709313) b!1589872))

(assert (= (and d!473278 c!257681) b!1589873))

(assert (= (and d!473278 (not c!257681)) b!1589874))

(assert (=> d!473278 m!1880627))

(declare-fun m!1882829 () Bool)

(assert (=> d!473278 m!1882829))

(assert (=> d!473278 m!1880627))

(declare-fun m!1882831 () Bool)

(assert (=> d!473278 m!1882831))

(assert (=> d!473278 m!1882831))

(assert (=> d!473278 m!1880205))

(declare-fun m!1882833 () Bool)

(assert (=> d!473278 m!1882833))

(assert (=> d!473278 m!1880205))

(declare-fun m!1882835 () Bool)

(assert (=> d!473278 m!1882835))

(assert (=> b!1589872 m!1880627))

(assert (=> b!1589872 m!1882829))

(assert (=> b!1589874 m!1880627))

(declare-fun m!1882837 () Bool)

(assert (=> b!1589874 m!1882837))

(declare-fun m!1882839 () Bool)

(assert (=> b!1589874 m!1882839))

(assert (=> b!1589874 m!1880627))

(assert (=> b!1589874 m!1882645))

(declare-fun m!1882841 () Bool)

(assert (=> b!1589874 m!1882841))

(declare-fun m!1882843 () Bool)

(assert (=> b!1589874 m!1882843))

(declare-fun m!1882845 () Bool)

(assert (=> b!1589874 m!1882845))

(declare-fun m!1882847 () Bool)

(assert (=> b!1589874 m!1882847))

(declare-fun m!1882849 () Bool)

(assert (=> b!1589874 m!1882849))

(assert (=> b!1589874 m!1882845))

(declare-fun m!1882851 () Bool)

(assert (=> b!1589874 m!1882851))

(declare-fun m!1882853 () Bool)

(assert (=> b!1589874 m!1882853))

(assert (=> b!1589874 m!1882849))

(declare-fun m!1882855 () Bool)

(assert (=> b!1589874 m!1882855))

(assert (=> b!1589874 m!1882843))

(assert (=> b!1589874 m!1882837))

(declare-fun m!1882857 () Bool)

(assert (=> b!1589874 m!1882857))

(assert (=> b!1589874 m!1880627))

(assert (=> b!1589874 m!1882841))

(declare-fun m!1882859 () Bool)

(assert (=> b!1589874 m!1882859))

(assert (=> b!1588896 d!473278))

(declare-fun d!473280 () Bool)

(declare-fun lt!562231 () BalanceConc!11552)

(assert (=> d!473280 (= (list!6789 lt!562231) (printList!822 thiss!17113 (list!6790 (seqFromList!1906 (t!144429 tokens!457)))))))

(assert (=> d!473280 (= lt!562231 (printTailRec!760 thiss!17113 (seqFromList!1906 (t!144429 tokens!457)) 0 (BalanceConc!11553 Empty!5804)))))

(assert (=> d!473280 (= (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457))) lt!562231)))

(declare-fun bs!391698 () Bool)

(assert (= bs!391698 d!473280))

(declare-fun m!1882861 () Bool)

(assert (=> bs!391698 m!1882861))

(assert (=> bs!391698 m!1879793))

(declare-fun m!1882863 () Bool)

(assert (=> bs!391698 m!1882863))

(assert (=> bs!391698 m!1882863))

(declare-fun m!1882865 () Bool)

(assert (=> bs!391698 m!1882865))

(assert (=> bs!391698 m!1879793))

(declare-fun m!1882867 () Bool)

(assert (=> bs!391698 m!1882867))

(assert (=> b!1588896 d!473280))

(declare-fun b!1589875 () Bool)

(declare-fun e!1021174 () Option!3151)

(declare-fun lt!562233 () Option!3151)

(declare-fun lt!562236 () Option!3151)

(assert (=> b!1589875 (= e!1021174 (ite (and (is-None!3150 lt!562233) (is-None!3150 lt!562236)) None!3150 (ite (is-None!3150 lt!562236) lt!562233 (ite (is-None!3150 lt!562233) lt!562236 (ite (>= (size!14055 (_1!9880 (v!24043 lt!562233))) (size!14055 (_1!9880 (v!24043 lt!562236)))) lt!562233 lt!562236)))))))

(declare-fun call!103032 () Option!3151)

(assert (=> b!1589875 (= lt!562233 call!103032)))

(assert (=> b!1589875 (= lt!562236 (maxPrefix!1271 thiss!17113 (t!144428 rules!1846) (originalCharacters!3892 (h!22881 (t!144429 tokens!457)))))))

(declare-fun b!1589876 () Bool)

(declare-fun e!1021175 () Bool)

(declare-fun lt!562232 () Option!3151)

(assert (=> b!1589876 (= e!1021175 (contains!3051 rules!1846 (rule!4882 (_1!9880 (get!5002 lt!562232)))))))

(declare-fun b!1589877 () Bool)

(declare-fun e!1021176 () Bool)

(assert (=> b!1589877 (= e!1021176 e!1021175)))

(declare-fun res!709318 () Bool)

(assert (=> b!1589877 (=> (not res!709318) (not e!1021175))))

(assert (=> b!1589877 (= res!709318 (isDefined!2526 lt!562232))))

(declare-fun b!1589878 () Bool)

(declare-fun res!709319 () Bool)

(assert (=> b!1589878 (=> (not res!709319) (not e!1021175))))

(assert (=> b!1589878 (= res!709319 (= (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562232)))) (originalCharacters!3892 (_1!9880 (get!5002 lt!562232)))))))

(declare-fun b!1589879 () Bool)

(declare-fun res!709315 () Bool)

(assert (=> b!1589879 (=> (not res!709315) (not e!1021175))))

(assert (=> b!1589879 (= res!709315 (= (++!4565 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562232)))) (_2!9880 (get!5002 lt!562232))) (originalCharacters!3892 (h!22881 (t!144429 tokens!457)))))))

(declare-fun b!1589880 () Bool)

(declare-fun res!709316 () Bool)

(assert (=> b!1589880 (=> (not res!709316) (not e!1021175))))

(assert (=> b!1589880 (= res!709316 (< (size!14057 (_2!9880 (get!5002 lt!562232))) (size!14057 (originalCharacters!3892 (h!22881 (t!144429 tokens!457))))))))

(declare-fun d!473282 () Bool)

(assert (=> d!473282 e!1021176))

(declare-fun res!709320 () Bool)

(assert (=> d!473282 (=> res!709320 e!1021176)))

(assert (=> d!473282 (= res!709320 (isEmpty!10504 lt!562232))))

(assert (=> d!473282 (= lt!562232 e!1021174)))

(declare-fun c!257682 () Bool)

(assert (=> d!473282 (= c!257682 (and (is-Cons!17479 rules!1846) (is-Nil!17479 (t!144428 rules!1846))))))

(declare-fun lt!562235 () Unit!27502)

(declare-fun lt!562234 () Unit!27502)

(assert (=> d!473282 (= lt!562235 lt!562234)))

(assert (=> d!473282 (isPrefix!1338 (originalCharacters!3892 (h!22881 (t!144429 tokens!457))) (originalCharacters!3892 (h!22881 (t!144429 tokens!457))))))

(assert (=> d!473282 (= lt!562234 (lemmaIsPrefixRefl!925 (originalCharacters!3892 (h!22881 (t!144429 tokens!457))) (originalCharacters!3892 (h!22881 (t!144429 tokens!457)))))))

(assert (=> d!473282 (rulesValidInductive!927 thiss!17113 rules!1846)))

(assert (=> d!473282 (= (maxPrefix!1271 thiss!17113 rules!1846 (originalCharacters!3892 (h!22881 (t!144429 tokens!457)))) lt!562232)))

(declare-fun bm!103027 () Bool)

(assert (=> bm!103027 (= call!103032 (maxPrefixOneRule!740 thiss!17113 (h!22880 rules!1846) (originalCharacters!3892 (h!22881 (t!144429 tokens!457)))))))

(declare-fun b!1589881 () Bool)

(declare-fun res!709317 () Bool)

(assert (=> b!1589881 (=> (not res!709317) (not e!1021175))))

(assert (=> b!1589881 (= res!709317 (matchR!1925 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!562232)))) (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562232))))))))

(declare-fun b!1589882 () Bool)

(assert (=> b!1589882 (= e!1021174 call!103032)))

(declare-fun b!1589883 () Bool)

(declare-fun res!709314 () Bool)

(assert (=> b!1589883 (=> (not res!709314) (not e!1021175))))

(assert (=> b!1589883 (= res!709314 (= (value!97397 (_1!9880 (get!5002 lt!562232))) (apply!4305 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!562232)))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!562232)))))))))

(assert (= (and d!473282 c!257682) b!1589882))

(assert (= (and d!473282 (not c!257682)) b!1589875))

(assert (= (or b!1589882 b!1589875) bm!103027))

(assert (= (and d!473282 (not res!709320)) b!1589877))

(assert (= (and b!1589877 res!709318) b!1589878))

(assert (= (and b!1589878 res!709319) b!1589880))

(assert (= (and b!1589880 res!709316) b!1589879))

(assert (= (and b!1589879 res!709315) b!1589883))

(assert (= (and b!1589883 res!709314) b!1589881))

(assert (= (and b!1589881 res!709317) b!1589876))

(declare-fun m!1882869 () Bool)

(assert (=> b!1589876 m!1882869))

(declare-fun m!1882871 () Bool)

(assert (=> b!1589876 m!1882871))

(assert (=> b!1589878 m!1882869))

(declare-fun m!1882873 () Bool)

(assert (=> b!1589878 m!1882873))

(assert (=> b!1589878 m!1882873))

(declare-fun m!1882875 () Bool)

(assert (=> b!1589878 m!1882875))

(declare-fun m!1882877 () Bool)

(assert (=> bm!103027 m!1882877))

(assert (=> b!1589880 m!1882869))

(declare-fun m!1882879 () Bool)

(assert (=> b!1589880 m!1882879))

(declare-fun m!1882881 () Bool)

(assert (=> b!1589880 m!1882881))

(declare-fun m!1882883 () Bool)

(assert (=> b!1589875 m!1882883))

(assert (=> b!1589881 m!1882869))

(assert (=> b!1589881 m!1882873))

(assert (=> b!1589881 m!1882873))

(assert (=> b!1589881 m!1882875))

(assert (=> b!1589881 m!1882875))

(declare-fun m!1882885 () Bool)

(assert (=> b!1589881 m!1882885))

(assert (=> b!1589883 m!1882869))

(declare-fun m!1882887 () Bool)

(assert (=> b!1589883 m!1882887))

(assert (=> b!1589883 m!1882887))

(declare-fun m!1882889 () Bool)

(assert (=> b!1589883 m!1882889))

(declare-fun m!1882891 () Bool)

(assert (=> b!1589877 m!1882891))

(assert (=> b!1589879 m!1882869))

(assert (=> b!1589879 m!1882873))

(assert (=> b!1589879 m!1882873))

(assert (=> b!1589879 m!1882875))

(assert (=> b!1589879 m!1882875))

(declare-fun m!1882893 () Bool)

(assert (=> b!1589879 m!1882893))

(declare-fun m!1882895 () Bool)

(assert (=> d!473282 m!1882895))

(declare-fun m!1882897 () Bool)

(assert (=> d!473282 m!1882897))

(declare-fun m!1882899 () Bool)

(assert (=> d!473282 m!1882899))

(assert (=> d!473282 m!1880275))

(assert (=> b!1588896 d!473282))

(declare-fun d!473284 () Bool)

(assert (=> d!473284 (isDefined!2526 (maxPrefix!1271 thiss!17113 rules!1846 (++!4565 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312))))))

(declare-fun lt!562249 () Unit!27502)

(declare-fun e!1021178 () Unit!27502)

(assert (=> d!473284 (= lt!562249 e!1021178)))

(declare-fun c!257683 () Bool)

(assert (=> d!473284 (= c!257683 (isEmpty!10504 (maxPrefix!1271 thiss!17113 rules!1846 (++!4565 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312)))))))

(declare-fun lt!562238 () Unit!27502)

(declare-fun lt!562245 () Unit!27502)

(assert (=> d!473284 (= lt!562238 lt!562245)))

(declare-fun e!1021177 () Bool)

(assert (=> d!473284 e!1021177))

(declare-fun res!709321 () Bool)

(assert (=> d!473284 (=> (not res!709321) (not e!1021177))))

(declare-fun lt!562251 () Token!5722)

(assert (=> d!473284 (= res!709321 (isDefined!2528 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!562251)))))))

(assert (=> d!473284 (= lt!562245 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!249 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) lt!562251))))

(declare-fun lt!562252 () Unit!27502)

(declare-fun lt!562244 () Unit!27502)

(assert (=> d!473284 (= lt!562252 lt!562244)))

(declare-fun lt!562246 () List!17548)

(assert (=> d!473284 (isPrefix!1338 lt!562246 (++!4565 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312)))))

(assert (=> d!473284 (= lt!562244 (lemmaPrefixStaysPrefixWhenAddingToSuffix!135 lt!562246 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312)))))

(assert (=> d!473284 (= lt!562246 (list!6789 (charsOf!1727 lt!562251)))))

(declare-fun lt!562239 () Unit!27502)

(declare-fun lt!562241 () Unit!27502)

(assert (=> d!473284 (= lt!562239 lt!562241)))

(declare-fun lt!562248 () List!17548)

(declare-fun lt!562247 () List!17548)

(assert (=> d!473284 (isPrefix!1338 lt!562248 (++!4565 lt!562248 lt!562247))))

(assert (=> d!473284 (= lt!562241 (lemmaConcatTwoListThenFirstIsPrefix!863 lt!562248 lt!562247))))

(assert (=> d!473284 (= lt!562247 (_2!9880 (get!5002 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))))

(assert (=> d!473284 (= lt!562248 (list!6789 (charsOf!1727 lt!562251)))))

(assert (=> d!473284 (= lt!562251 (head!3238 (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))))))

(assert (=> d!473284 (not (isEmpty!10500 rules!1846))))

(assert (=> d!473284 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!281 thiss!17113 rules!1846 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312)) lt!562249)))

(declare-fun b!1589885 () Bool)

(assert (=> b!1589885 (= e!1021177 (= (rule!4882 lt!562251) (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!562251))))))))

(declare-fun b!1589884 () Bool)

(declare-fun res!709322 () Bool)

(assert (=> b!1589884 (=> (not res!709322) (not e!1021177))))

(assert (=> b!1589884 (= res!709322 (matchR!1925 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!562251))))) (list!6789 (charsOf!1727 lt!562251))))))

(declare-fun b!1589886 () Bool)

(declare-fun Unit!27576 () Unit!27502)

(assert (=> b!1589886 (= e!1021178 Unit!27576)))

(declare-fun lt!562240 () List!17548)

(assert (=> b!1589886 (= lt!562240 (++!4565 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312)))))

(declare-fun lt!562243 () Unit!27502)

(assert (=> b!1589886 (= lt!562243 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!143 thiss!17113 (rule!4882 lt!562251) rules!1846 lt!562240))))

(assert (=> b!1589886 (isEmpty!10504 (maxPrefixOneRule!740 thiss!17113 (rule!4882 lt!562251) lt!562240))))

(declare-fun lt!562242 () Unit!27502)

(assert (=> b!1589886 (= lt!562242 lt!562243)))

(declare-fun lt!562250 () List!17548)

(assert (=> b!1589886 (= lt!562250 (list!6789 (charsOf!1727 lt!562251)))))

(declare-fun lt!562237 () Unit!27502)

(assert (=> b!1589886 (= lt!562237 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!139 thiss!17113 (rule!4882 lt!562251) lt!562250 (++!4565 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) (list!6789 lt!561312))))))

(assert (=> b!1589886 (not (matchR!1925 (regex!3078 (rule!4882 lt!562251)) lt!562250))))

(declare-fun lt!562253 () Unit!27502)

(assert (=> b!1589886 (= lt!562253 lt!562237)))

(assert (=> b!1589886 false))

(declare-fun b!1589887 () Bool)

(declare-fun Unit!27577 () Unit!27502)

(assert (=> b!1589887 (= e!1021178 Unit!27577)))

(assert (= (and d!473284 res!709321) b!1589884))

(assert (= (and b!1589884 res!709322) b!1589885))

(assert (= (and d!473284 c!257683) b!1589886))

(assert (= (and d!473284 (not c!257683)) b!1589887))

(declare-fun m!1882901 () Bool)

(assert (=> d!473284 m!1882901))

(declare-fun m!1882903 () Bool)

(assert (=> d!473284 m!1882903))

(assert (=> d!473284 m!1882553))

(declare-fun m!1882905 () Bool)

(assert (=> d!473284 m!1882905))

(declare-fun m!1882907 () Bool)

(assert (=> d!473284 m!1882907))

(declare-fun m!1882909 () Bool)

(assert (=> d!473284 m!1882909))

(declare-fun m!1882911 () Bool)

(assert (=> d!473284 m!1882911))

(declare-fun m!1882913 () Bool)

(assert (=> d!473284 m!1882913))

(declare-fun m!1882915 () Bool)

(assert (=> d!473284 m!1882915))

(declare-fun m!1882917 () Bool)

(assert (=> d!473284 m!1882917))

(assert (=> d!473284 m!1882907))

(declare-fun m!1882919 () Bool)

(assert (=> d!473284 m!1882919))

(assert (=> d!473284 m!1882573))

(declare-fun m!1882921 () Bool)

(assert (=> d!473284 m!1882921))

(assert (=> d!473284 m!1880599))

(assert (=> d!473284 m!1880609))

(declare-fun m!1882923 () Bool)

(assert (=> d!473284 m!1882923))

(declare-fun m!1882925 () Bool)

(assert (=> d!473284 m!1882925))

(declare-fun m!1882927 () Bool)

(assert (=> d!473284 m!1882927))

(assert (=> d!473284 m!1880599))

(assert (=> d!473284 m!1880601))

(assert (=> d!473284 m!1882553))

(assert (=> d!473284 m!1882573))

(assert (=> d!473284 m!1882915))

(assert (=> d!473284 m!1880601))

(assert (=> d!473284 m!1880659))

(assert (=> d!473284 m!1882573))

(declare-fun m!1882929 () Bool)

(assert (=> d!473284 m!1882929))

(assert (=> d!473284 m!1880599))

(assert (=> d!473284 m!1880609))

(assert (=> d!473284 m!1882553))

(assert (=> d!473284 m!1882901))

(assert (=> d!473284 m!1882911))

(assert (=> d!473284 m!1880599))

(assert (=> d!473284 m!1882925))

(assert (=> d!473284 m!1880599))

(declare-fun m!1882931 () Bool)

(assert (=> d!473284 m!1882931))

(assert (=> d!473284 m!1879839))

(assert (=> b!1589885 m!1882911))

(assert (=> b!1589885 m!1882911))

(declare-fun m!1882933 () Bool)

(assert (=> b!1589885 m!1882933))

(assert (=> b!1589884 m!1882911))

(assert (=> b!1589884 m!1882933))

(assert (=> b!1589884 m!1882907))

(assert (=> b!1589884 m!1882909))

(assert (=> b!1589884 m!1882909))

(declare-fun m!1882935 () Bool)

(assert (=> b!1589884 m!1882935))

(assert (=> b!1589884 m!1882911))

(assert (=> b!1589884 m!1882907))

(declare-fun m!1882937 () Bool)

(assert (=> b!1589886 m!1882937))

(declare-fun m!1882939 () Bool)

(assert (=> b!1589886 m!1882939))

(declare-fun m!1882941 () Bool)

(assert (=> b!1589886 m!1882941))

(assert (=> b!1589886 m!1882553))

(declare-fun m!1882943 () Bool)

(assert (=> b!1589886 m!1882943))

(assert (=> b!1589886 m!1882907))

(assert (=> b!1589886 m!1882909))

(assert (=> b!1589886 m!1880599))

(assert (=> b!1589886 m!1880609))

(assert (=> b!1589886 m!1882553))

(assert (=> b!1589886 m!1882907))

(assert (=> b!1589886 m!1882939))

(declare-fun m!1882945 () Bool)

(assert (=> b!1589886 m!1882945))

(assert (=> b!1588896 d!473284))

(declare-fun d!473286 () Bool)

(assert (=> d!473286 (= (list!6790 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 (t!144429 tokens!457))))) (list!6794 (c!257385 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 (t!144429 tokens!457)))))))))

(declare-fun bs!391699 () Bool)

(assert (= bs!391699 d!473286))

(declare-fun m!1882947 () Bool)

(assert (=> bs!391699 m!1882947))

(assert (=> b!1588896 d!473286))

(declare-fun d!473288 () Bool)

(declare-fun e!1021179 () Bool)

(assert (=> d!473288 e!1021179))

(declare-fun res!709323 () Bool)

(assert (=> d!473288 (=> (not res!709323) (not e!1021179))))

(declare-fun lt!562254 () BalanceConc!11552)

(assert (=> d!473288 (= res!709323 (= (list!6789 lt!562254) (Cons!17478 (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))) 0) Nil!17478)))))

(assert (=> d!473288 (= lt!562254 (singleton!601 (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))) 0)))))

(assert (=> d!473288 (= (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 (t!144429 tokens!457)))) 0)) lt!562254)))

(declare-fun b!1589888 () Bool)

(assert (=> b!1589888 (= e!1021179 (isBalanced!1721 (c!257383 lt!562254)))))

(assert (= (and d!473288 res!709323) b!1589888))

(declare-fun m!1882949 () Bool)

(assert (=> d!473288 m!1882949))

(assert (=> d!473288 m!1880621))

(declare-fun m!1882951 () Bool)

(assert (=> d!473288 m!1882951))

(declare-fun m!1882953 () Bool)

(assert (=> b!1589888 m!1882953))

(assert (=> b!1588896 d!473288))

(declare-fun b!1589890 () Bool)

(declare-fun e!1021181 () List!17548)

(assert (=> b!1589890 (= e!1021181 (Cons!17478 (h!22879 (list!6789 (charsOf!1727 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))))) (++!4565 (t!144427 (list!6789 (charsOf!1727 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))))) (printList!822 thiss!17113 (t!144429 (Cons!17480 (h!22881 tokens!457) Nil!17480))))))))

(declare-fun b!1589891 () Bool)

(declare-fun res!709325 () Bool)

(declare-fun e!1021180 () Bool)

(assert (=> b!1589891 (=> (not res!709325) (not e!1021180))))

(declare-fun lt!562255 () List!17548)

(assert (=> b!1589891 (= res!709325 (= (size!14057 lt!562255) (+ (size!14057 (list!6789 (charsOf!1727 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))))) (size!14057 (printList!822 thiss!17113 (t!144429 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))))))

(declare-fun b!1589892 () Bool)

(assert (=> b!1589892 (= e!1021180 (or (not (= (printList!822 thiss!17113 (t!144429 (Cons!17480 (h!22881 tokens!457) Nil!17480))) Nil!17478)) (= lt!562255 (list!6789 (charsOf!1727 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))))))

(declare-fun d!473290 () Bool)

(assert (=> d!473290 e!1021180))

(declare-fun res!709324 () Bool)

(assert (=> d!473290 (=> (not res!709324) (not e!1021180))))

(assert (=> d!473290 (= res!709324 (= (content!2408 lt!562255) (set.union (content!2408 (list!6789 (charsOf!1727 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))))) (content!2408 (printList!822 thiss!17113 (t!144429 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))))))

(assert (=> d!473290 (= lt!562255 e!1021181)))

(declare-fun c!257684 () Bool)

(assert (=> d!473290 (= c!257684 (is-Nil!17478 (list!6789 (charsOf!1727 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))))))))

(assert (=> d!473290 (= (++!4565 (list!6789 (charsOf!1727 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))) (printList!822 thiss!17113 (t!144429 (Cons!17480 (h!22881 tokens!457) Nil!17480)))) lt!562255)))

(declare-fun b!1589889 () Bool)

(assert (=> b!1589889 (= e!1021181 (printList!822 thiss!17113 (t!144429 (Cons!17480 (h!22881 tokens!457) Nil!17480))))))

(assert (= (and d!473290 c!257684) b!1589889))

(assert (= (and d!473290 (not c!257684)) b!1589890))

(assert (= (and d!473290 res!709324) b!1589891))

(assert (= (and b!1589891 res!709325) b!1589892))

(assert (=> b!1589890 m!1880239))

(declare-fun m!1882955 () Bool)

(assert (=> b!1589890 m!1882955))

(declare-fun m!1882957 () Bool)

(assert (=> b!1589891 m!1882957))

(assert (=> b!1589891 m!1880237))

(declare-fun m!1882959 () Bool)

(assert (=> b!1589891 m!1882959))

(assert (=> b!1589891 m!1880239))

(declare-fun m!1882961 () Bool)

(assert (=> b!1589891 m!1882961))

(declare-fun m!1882963 () Bool)

(assert (=> d!473290 m!1882963))

(assert (=> d!473290 m!1880237))

(declare-fun m!1882965 () Bool)

(assert (=> d!473290 m!1882965))

(assert (=> d!473290 m!1880239))

(declare-fun m!1882967 () Bool)

(assert (=> d!473290 m!1882967))

(assert (=> b!1588735 d!473290))

(declare-fun d!473292 () Bool)

(assert (=> d!473292 (= (list!6789 (charsOf!1727 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))) (list!6793 (c!257383 (charsOf!1727 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))))))))

(declare-fun bs!391700 () Bool)

(assert (= bs!391700 d!473292))

(declare-fun m!1882969 () Bool)

(assert (=> bs!391700 m!1882969))

(assert (=> b!1588735 d!473292))

(declare-fun d!473294 () Bool)

(declare-fun lt!562256 () BalanceConc!11552)

(assert (=> d!473294 (= (list!6789 lt!562256) (originalCharacters!3892 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))))))

(assert (=> d!473294 (= lt!562256 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))))) (value!97397 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))))

(assert (=> d!473294 (= (charsOf!1727 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))) lt!562256)))

(declare-fun b_lambda!50033 () Bool)

(assert (=> (not b_lambda!50033) (not d!473294)))

(declare-fun t!144543 () Bool)

(declare-fun tb!89487 () Bool)

(assert (=> (and b!1588488 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))) t!144543) tb!89487))

(declare-fun b!1589893 () Bool)

(declare-fun e!1021182 () Bool)

(declare-fun tp!467050 () Bool)

(assert (=> b!1589893 (= e!1021182 (and (inv!22891 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))))) (value!97397 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))) tp!467050))))

(declare-fun result!108354 () Bool)

(assert (=> tb!89487 (= result!108354 (and (inv!22892 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))))) (value!97397 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480))))) e!1021182))))

(assert (= tb!89487 b!1589893))

(declare-fun m!1882971 () Bool)

(assert (=> b!1589893 m!1882971))

(declare-fun m!1882973 () Bool)

(assert (=> tb!89487 m!1882973))

(assert (=> d!473294 t!144543))

(declare-fun b_and!111525 () Bool)

(assert (= b_and!111517 (and (=> t!144543 result!108354) b_and!111525)))

(declare-fun t!144545 () Bool)

(declare-fun tb!89489 () Bool)

(assert (=> (and b!1588496 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))) t!144545) tb!89489))

(declare-fun result!108356 () Bool)

(assert (= result!108356 result!108354))

(assert (=> d!473294 t!144545))

(declare-fun b_and!111527 () Bool)

(assert (= b_and!111519 (and (=> t!144545 result!108356) b_and!111527)))

(declare-fun t!144547 () Bool)

(declare-fun tb!89491 () Bool)

(assert (=> (and b!1588974 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))) t!144547) tb!89491))

(declare-fun result!108358 () Bool)

(assert (= result!108358 result!108354))

(assert (=> d!473294 t!144547))

(declare-fun b_and!111529 () Bool)

(assert (= b_and!111521 (and (=> t!144547 result!108358) b_and!111529)))

(declare-fun t!144549 () Bool)

(declare-fun tb!89493 () Bool)

(assert (=> (and b!1588988 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))) t!144549) tb!89493))

(declare-fun result!108360 () Bool)

(assert (= result!108360 result!108354))

(assert (=> d!473294 t!144549))

(declare-fun b_and!111531 () Bool)

(assert (= b_and!111523 (and (=> t!144549 result!108360) b_and!111531)))

(declare-fun m!1882975 () Bool)

(assert (=> d!473294 m!1882975))

(declare-fun m!1882977 () Bool)

(assert (=> d!473294 m!1882977))

(assert (=> b!1588735 d!473294))

(declare-fun d!473296 () Bool)

(declare-fun c!257685 () Bool)

(assert (=> d!473296 (= c!257685 (is-Cons!17480 (t!144429 (Cons!17480 (h!22881 tokens!457) Nil!17480))))))

(declare-fun e!1021183 () List!17548)

(assert (=> d!473296 (= (printList!822 thiss!17113 (t!144429 (Cons!17480 (h!22881 tokens!457) Nil!17480))) e!1021183)))

(declare-fun b!1589894 () Bool)

(assert (=> b!1589894 (= e!1021183 (++!4565 (list!6789 (charsOf!1727 (h!22881 (t!144429 (Cons!17480 (h!22881 tokens!457) Nil!17480))))) (printList!822 thiss!17113 (t!144429 (t!144429 (Cons!17480 (h!22881 tokens!457) Nil!17480))))))))

(declare-fun b!1589895 () Bool)

(assert (=> b!1589895 (= e!1021183 Nil!17478)))

(assert (= (and d!473296 c!257685) b!1589894))

(assert (= (and d!473296 (not c!257685)) b!1589895))

(declare-fun m!1882979 () Bool)

(assert (=> b!1589894 m!1882979))

(assert (=> b!1589894 m!1882979))

(declare-fun m!1882981 () Bool)

(assert (=> b!1589894 m!1882981))

(declare-fun m!1882983 () Bool)

(assert (=> b!1589894 m!1882983))

(assert (=> b!1589894 m!1882981))

(assert (=> b!1589894 m!1882983))

(declare-fun m!1882985 () Bool)

(assert (=> b!1589894 m!1882985))

(assert (=> b!1588735 d!473296))

(declare-fun d!473298 () Bool)

(declare-fun lt!562257 () Int)

(assert (=> d!473298 (= lt!562257 (size!14063 (list!6790 (_1!9881 lt!560913))))))

(assert (=> d!473298 (= lt!562257 (size!14064 (c!257385 (_1!9881 lt!560913))))))

(assert (=> d!473298 (= (size!14059 (_1!9881 lt!560913)) lt!562257)))

(declare-fun bs!391701 () Bool)

(assert (= bs!391701 d!473298))

(assert (=> bs!391701 m!1879993))

(assert (=> bs!391701 m!1879993))

(declare-fun m!1882987 () Bool)

(assert (=> bs!391701 m!1882987))

(declare-fun m!1882989 () Bool)

(assert (=> bs!391701 m!1882989))

(assert (=> d!472680 d!473298))

(declare-fun b!1589896 () Bool)

(declare-fun lt!562260 () tuple2!16958)

(declare-fun lt!562285 () Option!3155)

(assert (=> b!1589896 (= lt!562260 (lexRec!356 thiss!17113 rules!1846 (_2!9886 (v!24056 lt!562285))))))

(declare-fun e!1021187 () tuple2!16958)

(assert (=> b!1589896 (= e!1021187 (tuple2!16959 (prepend!570 (_1!9881 lt!562260) (_1!9886 (v!24056 lt!562285))) (_2!9881 lt!562260)))))

(declare-fun b!1589897 () Bool)

(declare-fun e!1021184 () tuple2!16958)

(declare-fun lt!562267 () BalanceConc!11552)

(assert (=> b!1589897 (= e!1021184 (tuple2!16959 (BalanceConc!11555 Empty!5805) lt!562267))))

(declare-fun lt!562277 () BalanceConc!11552)

(declare-fun b!1589898 () Bool)

(declare-fun lt!562273 () Option!3155)

(declare-fun e!1021186 () tuple2!16958)

(assert (=> b!1589898 (= e!1021186 (lexTailRecV2!517 thiss!17113 rules!1846 lt!560814 lt!562277 (_2!9886 (v!24056 lt!562273)) (append!535 (BalanceConc!11555 Empty!5805) (_1!9886 (v!24056 lt!562273)))))))

(declare-fun lt!562283 () tuple2!16958)

(assert (=> b!1589898 (= lt!562283 (lexRec!356 thiss!17113 rules!1846 (_2!9886 (v!24056 lt!562273))))))

(declare-fun lt!562265 () List!17548)

(assert (=> b!1589898 (= lt!562265 (list!6789 (BalanceConc!11553 Empty!5804)))))

(declare-fun lt!562272 () List!17548)

(assert (=> b!1589898 (= lt!562272 (list!6789 (charsOf!1727 (_1!9886 (v!24056 lt!562273)))))))

(declare-fun lt!562288 () List!17548)

(assert (=> b!1589898 (= lt!562288 (list!6789 (_2!9886 (v!24056 lt!562273))))))

(declare-fun lt!562269 () Unit!27502)

(assert (=> b!1589898 (= lt!562269 (lemmaConcatAssociativity!988 lt!562265 lt!562272 lt!562288))))

(assert (=> b!1589898 (= (++!4565 (++!4565 lt!562265 lt!562272) lt!562288) (++!4565 lt!562265 (++!4565 lt!562272 lt!562288)))))

(declare-fun lt!562274 () Unit!27502)

(assert (=> b!1589898 (= lt!562274 lt!562269)))

(assert (=> b!1589898 (= lt!562285 (maxPrefixZipperSequence!612 thiss!17113 rules!1846 lt!560814))))

(declare-fun c!257687 () Bool)

(assert (=> b!1589898 (= c!257687 (is-Some!3154 lt!562285))))

(assert (=> b!1589898 (= (lexRec!356 thiss!17113 rules!1846 lt!560814) e!1021187)))

(declare-fun lt!562271 () Unit!27502)

(declare-fun Unit!27580 () Unit!27502)

(assert (=> b!1589898 (= lt!562271 Unit!27580)))

(declare-fun lt!562261 () List!17550)

(assert (=> b!1589898 (= lt!562261 (list!6790 (BalanceConc!11555 Empty!5805)))))

(declare-fun lt!562270 () List!17550)

(assert (=> b!1589898 (= lt!562270 (Cons!17480 (_1!9886 (v!24056 lt!562273)) Nil!17480))))

(declare-fun lt!562266 () List!17550)

(assert (=> b!1589898 (= lt!562266 (list!6790 (_1!9881 lt!562283)))))

(declare-fun lt!562286 () Unit!27502)

(assert (=> b!1589898 (= lt!562286 (lemmaConcatAssociativity!989 lt!562261 lt!562270 lt!562266))))

(assert (=> b!1589898 (= (++!4571 (++!4571 lt!562261 lt!562270) lt!562266) (++!4571 lt!562261 (++!4571 lt!562270 lt!562266)))))

(declare-fun lt!562278 () Unit!27502)

(assert (=> b!1589898 (= lt!562278 lt!562286)))

(declare-fun lt!562279 () List!17548)

(assert (=> b!1589898 (= lt!562279 (++!4565 (list!6789 (BalanceConc!11553 Empty!5804)) (list!6789 (charsOf!1727 (_1!9886 (v!24056 lt!562273))))))))

(declare-fun lt!562280 () List!17548)

(assert (=> b!1589898 (= lt!562280 (list!6789 (_2!9886 (v!24056 lt!562273))))))

(declare-fun lt!562259 () List!17550)

(assert (=> b!1589898 (= lt!562259 (list!6790 (append!535 (BalanceConc!11555 Empty!5805) (_1!9886 (v!24056 lt!562273)))))))

(declare-fun lt!562275 () Unit!27502)

(assert (=> b!1589898 (= lt!562275 (lemmaLexThenLexPrefix!244 thiss!17113 rules!1846 lt!562279 lt!562280 lt!562259 (list!6790 (_1!9881 lt!562283)) (list!6789 (_2!9881 lt!562283))))))

(assert (=> b!1589898 (= (lexList!794 thiss!17113 rules!1846 lt!562279) (tuple2!16965 lt!562259 Nil!17478))))

(declare-fun lt!562276 () Unit!27502)

(assert (=> b!1589898 (= lt!562276 lt!562275)))

(assert (=> b!1589898 (= lt!562267 (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (_1!9886 (v!24056 lt!562273)))))))

(declare-fun lt!562268 () Option!3155)

(assert (=> b!1589898 (= lt!562268 (maxPrefixZipperSequence!612 thiss!17113 rules!1846 lt!562267))))

(declare-fun c!257688 () Bool)

(assert (=> b!1589898 (= c!257688 (is-Some!3154 lt!562268))))

(assert (=> b!1589898 (= (lexRec!356 thiss!17113 rules!1846 (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (_1!9886 (v!24056 lt!562273))))) e!1021184)))

(declare-fun lt!562264 () Unit!27502)

(declare-fun Unit!27581 () Unit!27502)

(assert (=> b!1589898 (= lt!562264 Unit!27581)))

(assert (=> b!1589898 (= lt!562277 (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (_1!9886 (v!24056 lt!562273)))))))

(declare-fun lt!562263 () List!17548)

(assert (=> b!1589898 (= lt!562263 (list!6789 lt!562277))))

(declare-fun lt!562262 () List!17548)

(assert (=> b!1589898 (= lt!562262 (list!6789 (_2!9886 (v!24056 lt!562273))))))

(declare-fun lt!562282 () Unit!27502)

(assert (=> b!1589898 (= lt!562282 (lemmaConcatTwoListThenFSndIsSuffix!303 lt!562263 lt!562262))))

(assert (=> b!1589898 (isSuffix!402 lt!562262 (++!4565 lt!562263 lt!562262))))

(declare-fun lt!562290 () Unit!27502)

(assert (=> b!1589898 (= lt!562290 lt!562282)))

(declare-fun b!1589899 () Bool)

(assert (=> b!1589899 (= e!1021186 (tuple2!16959 (BalanceConc!11555 Empty!5805) lt!560814))))

(declare-fun d!473300 () Bool)

(declare-fun e!1021185 () Bool)

(assert (=> d!473300 e!1021185))

(declare-fun res!709326 () Bool)

(assert (=> d!473300 (=> (not res!709326) (not e!1021185))))

(declare-fun lt!562289 () tuple2!16958)

(assert (=> d!473300 (= res!709326 (= (list!6790 (_1!9881 lt!562289)) (list!6790 (_1!9881 (lexRec!356 thiss!17113 rules!1846 lt!560814)))))))

(assert (=> d!473300 (= lt!562289 e!1021186)))

(declare-fun c!257686 () Bool)

(assert (=> d!473300 (= c!257686 (is-Some!3154 lt!562273))))

(assert (=> d!473300 (= lt!562273 (maxPrefixZipperSequenceV2!251 thiss!17113 rules!1846 lt!560814 lt!560814))))

(declare-fun lt!562281 () Unit!27502)

(declare-fun lt!562291 () Unit!27502)

(assert (=> d!473300 (= lt!562281 lt!562291)))

(declare-fun lt!562258 () List!17548)

(declare-fun lt!562287 () List!17548)

(assert (=> d!473300 (isSuffix!402 lt!562258 (++!4565 lt!562287 lt!562258))))

(assert (=> d!473300 (= lt!562291 (lemmaConcatTwoListThenFSndIsSuffix!303 lt!562287 lt!562258))))

(assert (=> d!473300 (= lt!562258 (list!6789 lt!560814))))

(assert (=> d!473300 (= lt!562287 (list!6789 (BalanceConc!11553 Empty!5804)))))

(assert (=> d!473300 (= (lexTailRecV2!517 thiss!17113 rules!1846 lt!560814 (BalanceConc!11553 Empty!5804) lt!560814 (BalanceConc!11555 Empty!5805)) lt!562289)))

(declare-fun b!1589900 () Bool)

(assert (=> b!1589900 (= e!1021187 (tuple2!16959 (BalanceConc!11555 Empty!5805) lt!560814))))

(declare-fun b!1589901 () Bool)

(declare-fun lt!562284 () tuple2!16958)

(assert (=> b!1589901 (= lt!562284 (lexRec!356 thiss!17113 rules!1846 (_2!9886 (v!24056 lt!562268))))))

(assert (=> b!1589901 (= e!1021184 (tuple2!16959 (prepend!570 (_1!9881 lt!562284) (_1!9886 (v!24056 lt!562268))) (_2!9881 lt!562284)))))

(declare-fun b!1589902 () Bool)

(assert (=> b!1589902 (= e!1021185 (= (list!6789 (_2!9881 lt!562289)) (list!6789 (_2!9881 (lexRec!356 thiss!17113 rules!1846 lt!560814)))))))

(assert (= (and d!473300 c!257686) b!1589898))

(assert (= (and d!473300 (not c!257686)) b!1589899))

(assert (= (and b!1589898 c!257687) b!1589896))

(assert (= (and b!1589898 (not c!257687)) b!1589900))

(assert (= (and b!1589898 c!257688) b!1589901))

(assert (= (and b!1589898 (not c!257688)) b!1589897))

(assert (= (and d!473300 res!709326) b!1589902))

(declare-fun m!1882991 () Bool)

(assert (=> b!1589896 m!1882991))

(declare-fun m!1882993 () Bool)

(assert (=> b!1589896 m!1882993))

(declare-fun m!1882995 () Bool)

(assert (=> b!1589902 m!1882995))

(declare-fun m!1882997 () Bool)

(assert (=> b!1589902 m!1882997))

(declare-fun m!1882999 () Bool)

(assert (=> b!1589902 m!1882999))

(assert (=> b!1589898 m!1880205))

(declare-fun m!1883001 () Bool)

(assert (=> b!1589898 m!1883001))

(declare-fun m!1883003 () Bool)

(assert (=> b!1589898 m!1883003))

(declare-fun m!1883005 () Bool)

(assert (=> b!1589898 m!1883005))

(declare-fun m!1883007 () Bool)

(assert (=> b!1589898 m!1883007))

(declare-fun m!1883009 () Bool)

(assert (=> b!1589898 m!1883009))

(declare-fun m!1883011 () Bool)

(assert (=> b!1589898 m!1883011))

(declare-fun m!1883013 () Bool)

(assert (=> b!1589898 m!1883013))

(assert (=> b!1589898 m!1880205))

(declare-fun m!1883015 () Bool)

(assert (=> b!1589898 m!1883015))

(declare-fun m!1883017 () Bool)

(assert (=> b!1589898 m!1883017))

(declare-fun m!1883019 () Bool)

(assert (=> b!1589898 m!1883019))

(assert (=> b!1589898 m!1883011))

(assert (=> b!1589898 m!1883005))

(assert (=> b!1589898 m!1883011))

(declare-fun m!1883021 () Bool)

(assert (=> b!1589898 m!1883021))

(declare-fun m!1883023 () Bool)

(assert (=> b!1589898 m!1883023))

(declare-fun m!1883025 () Bool)

(assert (=> b!1589898 m!1883025))

(declare-fun m!1883027 () Bool)

(assert (=> b!1589898 m!1883027))

(declare-fun m!1883029 () Bool)

(assert (=> b!1589898 m!1883029))

(declare-fun m!1883031 () Bool)

(assert (=> b!1589898 m!1883031))

(declare-fun m!1883033 () Bool)

(assert (=> b!1589898 m!1883033))

(declare-fun m!1883035 () Bool)

(assert (=> b!1589898 m!1883035))

(assert (=> b!1589898 m!1881011))

(declare-fun m!1883037 () Bool)

(assert (=> b!1589898 m!1883037))

(declare-fun m!1883039 () Bool)

(assert (=> b!1589898 m!1883039))

(assert (=> b!1589898 m!1883015))

(assert (=> b!1589898 m!1883039))

(assert (=> b!1589898 m!1883001))

(declare-fun m!1883041 () Bool)

(assert (=> b!1589898 m!1883041))

(declare-fun m!1883043 () Bool)

(assert (=> b!1589898 m!1883043))

(assert (=> b!1589898 m!1883039))

(assert (=> b!1589898 m!1883023))

(assert (=> b!1589898 m!1883009))

(declare-fun m!1883045 () Bool)

(assert (=> b!1589898 m!1883045))

(declare-fun m!1883047 () Bool)

(assert (=> b!1589898 m!1883047))

(declare-fun m!1883049 () Bool)

(assert (=> b!1589898 m!1883049))

(declare-fun m!1883051 () Bool)

(assert (=> b!1589898 m!1883051))

(assert (=> b!1589898 m!1883033))

(declare-fun m!1883053 () Bool)

(assert (=> b!1589898 m!1883053))

(declare-fun m!1883055 () Bool)

(assert (=> b!1589898 m!1883055))

(assert (=> b!1589898 m!1883041))

(assert (=> b!1589898 m!1883029))

(declare-fun m!1883057 () Bool)

(assert (=> b!1589898 m!1883057))

(assert (=> b!1589898 m!1882997))

(assert (=> b!1589898 m!1883049))

(declare-fun m!1883059 () Bool)

(assert (=> b!1589898 m!1883059))

(declare-fun m!1883061 () Bool)

(assert (=> b!1589901 m!1883061))

(declare-fun m!1883063 () Bool)

(assert (=> b!1589901 m!1883063))

(declare-fun m!1883065 () Bool)

(assert (=> d!473300 m!1883065))

(assert (=> d!473300 m!1880205))

(assert (=> d!473300 m!1879775))

(declare-fun m!1883067 () Bool)

(assert (=> d!473300 m!1883067))

(declare-fun m!1883069 () Bool)

(assert (=> d!473300 m!1883069))

(declare-fun m!1883071 () Bool)

(assert (=> d!473300 m!1883071))

(declare-fun m!1883073 () Bool)

(assert (=> d!473300 m!1883073))

(assert (=> d!473300 m!1883069))

(declare-fun m!1883075 () Bool)

(assert (=> d!473300 m!1883075))

(assert (=> d!473300 m!1882997))

(assert (=> d!472680 d!473300))

(assert (=> d!472706 d!472700))

(declare-fun d!473302 () Bool)

(assert (=> d!473302 (= (list!6790 (seqFromList!1906 ($colon$colon!286 (t!144429 (t!144429 tokens!457)) (h!22881 (t!144429 tokens!457))))) (list!6794 (c!257385 (seqFromList!1906 ($colon$colon!286 (t!144429 (t!144429 tokens!457)) (h!22881 (t!144429 tokens!457)))))))))

(declare-fun bs!391702 () Bool)

(assert (= bs!391702 d!473302))

(declare-fun m!1883077 () Bool)

(assert (=> bs!391702 m!1883077))

(assert (=> d!472706 d!473302))

(assert (=> d!472706 d!472704))

(declare-fun d!473304 () Bool)

(assert (=> d!473304 (= ($colon$colon!286 (t!144429 (t!144429 tokens!457)) (h!22881 (t!144429 tokens!457))) (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))))))

(assert (=> d!472706 d!473304))

(declare-fun d!473306 () Bool)

(assert (=> d!473306 (= (seqFromList!1906 ($colon$colon!286 (t!144429 (t!144429 tokens!457)) (h!22881 (t!144429 tokens!457)))) (fromListB!824 ($colon$colon!286 (t!144429 (t!144429 tokens!457)) (h!22881 (t!144429 tokens!457)))))))

(declare-fun bs!391703 () Bool)

(assert (= bs!391703 d!473306))

(assert (=> bs!391703 m!1880037))

(declare-fun m!1883079 () Bool)

(assert (=> bs!391703 m!1883079))

(assert (=> d!472706 d!473306))

(assert (=> d!472706 d!472770))

(assert (=> d!472706 d!472698))

(declare-fun d!473308 () Bool)

(assert (=> d!473308 (= (list!6790 (_1!9881 lt!560833)) (list!6790 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457)))))))

(assert (=> d!473308 true))

(declare-fun _$1!10000 () Unit!27502)

(assert (=> d!473308 (= (choose!9513 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457)) (_1!9881 lt!560833)) _$1!10000)))

(declare-fun bs!391704 () Bool)

(assert (= bs!391704 d!473308))

(assert (=> bs!391704 m!1879763))

(assert (=> bs!391704 m!1879811))

(assert (=> bs!391704 m!1879811))

(assert (=> bs!391704 m!1879813))

(assert (=> bs!391704 m!1879813))

(assert (=> bs!391704 m!1879815))

(assert (=> d!472706 d!473308))

(declare-fun b!1589903 () Bool)

(declare-fun e!1021188 () Option!3151)

(declare-fun lt!562293 () Option!3151)

(declare-fun lt!562296 () Option!3151)

(assert (=> b!1589903 (= e!1021188 (ite (and (is-None!3150 lt!562293) (is-None!3150 lt!562296)) None!3150 (ite (is-None!3150 lt!562296) lt!562293 (ite (is-None!3150 lt!562293) lt!562296 (ite (>= (size!14055 (_1!9880 (v!24043 lt!562293))) (size!14055 (_1!9880 (v!24043 lt!562296)))) lt!562293 lt!562296)))))))

(declare-fun call!103033 () Option!3151)

(assert (=> b!1589903 (= lt!562293 call!103033)))

(assert (=> b!1589903 (= lt!562296 (maxPrefix!1271 thiss!17113 (t!144428 (t!144428 rules!1846)) lt!560816))))

(declare-fun b!1589904 () Bool)

(declare-fun e!1021189 () Bool)

(declare-fun lt!562292 () Option!3151)

(assert (=> b!1589904 (= e!1021189 (contains!3051 (t!144428 rules!1846) (rule!4882 (_1!9880 (get!5002 lt!562292)))))))

(declare-fun b!1589905 () Bool)

(declare-fun e!1021190 () Bool)

(assert (=> b!1589905 (= e!1021190 e!1021189)))

(declare-fun res!709331 () Bool)

(assert (=> b!1589905 (=> (not res!709331) (not e!1021189))))

(assert (=> b!1589905 (= res!709331 (isDefined!2526 lt!562292))))

(declare-fun b!1589906 () Bool)

(declare-fun res!709332 () Bool)

(assert (=> b!1589906 (=> (not res!709332) (not e!1021189))))

(assert (=> b!1589906 (= res!709332 (= (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562292)))) (originalCharacters!3892 (_1!9880 (get!5002 lt!562292)))))))

(declare-fun b!1589907 () Bool)

(declare-fun res!709328 () Bool)

(assert (=> b!1589907 (=> (not res!709328) (not e!1021189))))

(assert (=> b!1589907 (= res!709328 (= (++!4565 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562292)))) (_2!9880 (get!5002 lt!562292))) lt!560816))))

(declare-fun b!1589908 () Bool)

(declare-fun res!709329 () Bool)

(assert (=> b!1589908 (=> (not res!709329) (not e!1021189))))

(assert (=> b!1589908 (= res!709329 (< (size!14057 (_2!9880 (get!5002 lt!562292))) (size!14057 lt!560816)))))

(declare-fun d!473310 () Bool)

(assert (=> d!473310 e!1021190))

(declare-fun res!709333 () Bool)

(assert (=> d!473310 (=> res!709333 e!1021190)))

(assert (=> d!473310 (= res!709333 (isEmpty!10504 lt!562292))))

(assert (=> d!473310 (= lt!562292 e!1021188)))

(declare-fun c!257689 () Bool)

(assert (=> d!473310 (= c!257689 (and (is-Cons!17479 (t!144428 rules!1846)) (is-Nil!17479 (t!144428 (t!144428 rules!1846)))))))

(declare-fun lt!562295 () Unit!27502)

(declare-fun lt!562294 () Unit!27502)

(assert (=> d!473310 (= lt!562295 lt!562294)))

(assert (=> d!473310 (isPrefix!1338 lt!560816 lt!560816)))

(assert (=> d!473310 (= lt!562294 (lemmaIsPrefixRefl!925 lt!560816 lt!560816))))

(assert (=> d!473310 (rulesValidInductive!927 thiss!17113 (t!144428 rules!1846))))

(assert (=> d!473310 (= (maxPrefix!1271 thiss!17113 (t!144428 rules!1846) lt!560816) lt!562292)))

(declare-fun bm!103028 () Bool)

(assert (=> bm!103028 (= call!103033 (maxPrefixOneRule!740 thiss!17113 (h!22880 (t!144428 rules!1846)) lt!560816))))

(declare-fun b!1589909 () Bool)

(declare-fun res!709330 () Bool)

(assert (=> b!1589909 (=> (not res!709330) (not e!1021189))))

(assert (=> b!1589909 (= res!709330 (matchR!1925 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!562292)))) (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562292))))))))

(declare-fun b!1589910 () Bool)

(assert (=> b!1589910 (= e!1021188 call!103033)))

(declare-fun b!1589911 () Bool)

(declare-fun res!709327 () Bool)

(assert (=> b!1589911 (=> (not res!709327) (not e!1021189))))

(assert (=> b!1589911 (= res!709327 (= (value!97397 (_1!9880 (get!5002 lt!562292))) (apply!4305 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!562292)))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!562292)))))))))

(assert (= (and d!473310 c!257689) b!1589910))

(assert (= (and d!473310 (not c!257689)) b!1589903))

(assert (= (or b!1589910 b!1589903) bm!103028))

(assert (= (and d!473310 (not res!709333)) b!1589905))

(assert (= (and b!1589905 res!709331) b!1589906))

(assert (= (and b!1589906 res!709332) b!1589908))

(assert (= (and b!1589908 res!709329) b!1589907))

(assert (= (and b!1589907 res!709328) b!1589911))

(assert (= (and b!1589911 res!709327) b!1589909))

(assert (= (and b!1589909 res!709330) b!1589904))

(declare-fun m!1883081 () Bool)

(assert (=> b!1589904 m!1883081))

(declare-fun m!1883083 () Bool)

(assert (=> b!1589904 m!1883083))

(assert (=> b!1589906 m!1883081))

(declare-fun m!1883085 () Bool)

(assert (=> b!1589906 m!1883085))

(assert (=> b!1589906 m!1883085))

(declare-fun m!1883087 () Bool)

(assert (=> b!1589906 m!1883087))

(declare-fun m!1883089 () Bool)

(assert (=> bm!103028 m!1883089))

(assert (=> b!1589908 m!1883081))

(declare-fun m!1883091 () Bool)

(assert (=> b!1589908 m!1883091))

(assert (=> b!1589908 m!1880255))

(declare-fun m!1883093 () Bool)

(assert (=> b!1589903 m!1883093))

(assert (=> b!1589909 m!1883081))

(assert (=> b!1589909 m!1883085))

(assert (=> b!1589909 m!1883085))

(assert (=> b!1589909 m!1883087))

(assert (=> b!1589909 m!1883087))

(declare-fun m!1883095 () Bool)

(assert (=> b!1589909 m!1883095))

(assert (=> b!1589911 m!1883081))

(declare-fun m!1883097 () Bool)

(assert (=> b!1589911 m!1883097))

(assert (=> b!1589911 m!1883097))

(declare-fun m!1883099 () Bool)

(assert (=> b!1589911 m!1883099))

(declare-fun m!1883101 () Bool)

(assert (=> b!1589905 m!1883101))

(assert (=> b!1589907 m!1883081))

(assert (=> b!1589907 m!1883085))

(assert (=> b!1589907 m!1883085))

(assert (=> b!1589907 m!1883087))

(assert (=> b!1589907 m!1883087))

(declare-fun m!1883103 () Bool)

(assert (=> b!1589907 m!1883103))

(declare-fun m!1883105 () Bool)

(assert (=> d!473310 m!1883105))

(assert (=> d!473310 m!1880271))

(assert (=> d!473310 m!1880273))

(declare-fun m!1883107 () Bool)

(assert (=> d!473310 m!1883107))

(assert (=> b!1588755 d!473310))

(declare-fun b!1589912 () Bool)

(declare-fun e!1021193 () Bool)

(assert (=> b!1589912 (= e!1021193 (inv!15 (value!97397 (h!22881 (t!144429 tokens!457)))))))

(declare-fun b!1589913 () Bool)

(declare-fun e!1021191 () Bool)

(assert (=> b!1589913 (= e!1021191 (inv!16 (value!97397 (h!22881 (t!144429 tokens!457)))))))

(declare-fun b!1589914 () Bool)

(declare-fun e!1021192 () Bool)

(assert (=> b!1589914 (= e!1021191 e!1021192)))

(declare-fun c!257691 () Bool)

(assert (=> b!1589914 (= c!257691 (is-IntegerValue!9505 (value!97397 (h!22881 (t!144429 tokens!457)))))))

(declare-fun b!1589915 () Bool)

(assert (=> b!1589915 (= e!1021192 (inv!17 (value!97397 (h!22881 (t!144429 tokens!457)))))))

(declare-fun d!473312 () Bool)

(declare-fun c!257690 () Bool)

(assert (=> d!473312 (= c!257690 (is-IntegerValue!9504 (value!97397 (h!22881 (t!144429 tokens!457)))))))

(assert (=> d!473312 (= (inv!21 (value!97397 (h!22881 (t!144429 tokens!457)))) e!1021191)))

(declare-fun b!1589916 () Bool)

(declare-fun res!709334 () Bool)

(assert (=> b!1589916 (=> res!709334 e!1021193)))

(assert (=> b!1589916 (= res!709334 (not (is-IntegerValue!9506 (value!97397 (h!22881 (t!144429 tokens!457))))))))

(assert (=> b!1589916 (= e!1021192 e!1021193)))

(assert (= (and d!473312 c!257690) b!1589913))

(assert (= (and d!473312 (not c!257690)) b!1589914))

(assert (= (and b!1589914 c!257691) b!1589915))

(assert (= (and b!1589914 (not c!257691)) b!1589916))

(assert (= (and b!1589916 (not res!709334)) b!1589912))

(declare-fun m!1883109 () Bool)

(assert (=> b!1589912 m!1883109))

(declare-fun m!1883111 () Bool)

(assert (=> b!1589913 m!1883111))

(declare-fun m!1883113 () Bool)

(assert (=> b!1589915 m!1883113))

(assert (=> b!1588986 d!473312))

(declare-fun d!473314 () Bool)

(assert (=> d!473314 (= (list!6790 (_1!9881 lt!561001)) (list!6794 (c!257385 (_1!9881 lt!561001))))))

(declare-fun bs!391705 () Bool)

(assert (= bs!391705 d!473314))

(declare-fun m!1883115 () Bool)

(assert (=> bs!391705 m!1883115))

(assert (=> b!1588656 d!473314))

(declare-fun b!1589927 () Bool)

(declare-fun e!1021202 () Bool)

(declare-fun lt!562304 () tuple2!16964)

(assert (=> b!1589927 (= e!1021202 (not (isEmpty!10505 (_1!9884 lt!562304))))))

(declare-fun b!1589928 () Bool)

(declare-fun e!1021201 () Bool)

(assert (=> b!1589928 (= e!1021201 (= (_2!9884 lt!562304) (list!6789 (seqFromList!1905 lt!560815))))))

(declare-fun b!1589929 () Bool)

(declare-fun e!1021200 () tuple2!16964)

(assert (=> b!1589929 (= e!1021200 (tuple2!16965 Nil!17480 (list!6789 (seqFromList!1905 lt!560815))))))

(declare-fun b!1589930 () Bool)

(assert (=> b!1589930 (= e!1021201 e!1021202)))

(declare-fun res!709337 () Bool)

(assert (=> b!1589930 (= res!709337 (< (size!14057 (_2!9884 lt!562304)) (size!14057 (list!6789 (seqFromList!1905 lt!560815)))))))

(assert (=> b!1589930 (=> (not res!709337) (not e!1021202))))

(declare-fun b!1589931 () Bool)

(declare-fun lt!562303 () Option!3151)

(declare-fun lt!562305 () tuple2!16964)

(assert (=> b!1589931 (= e!1021200 (tuple2!16965 (Cons!17480 (_1!9880 (v!24043 lt!562303)) (_1!9884 lt!562305)) (_2!9884 lt!562305)))))

(assert (=> b!1589931 (= lt!562305 (lexList!794 thiss!17113 rules!1846 (_2!9880 (v!24043 lt!562303))))))

(declare-fun d!473316 () Bool)

(assert (=> d!473316 e!1021201))

(declare-fun c!257696 () Bool)

(assert (=> d!473316 (= c!257696 (> (size!14063 (_1!9884 lt!562304)) 0))))

(assert (=> d!473316 (= lt!562304 e!1021200)))

(declare-fun c!257697 () Bool)

(assert (=> d!473316 (= c!257697 (is-Some!3150 lt!562303))))

(assert (=> d!473316 (= lt!562303 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 (seqFromList!1905 lt!560815))))))

(assert (=> d!473316 (= (lexList!794 thiss!17113 rules!1846 (list!6789 (seqFromList!1905 lt!560815))) lt!562304)))

(assert (= (and d!473316 c!257697) b!1589931))

(assert (= (and d!473316 (not c!257697)) b!1589929))

(assert (= (and d!473316 c!257696) b!1589930))

(assert (= (and d!473316 (not c!257696)) b!1589928))

(assert (= (and b!1589930 res!709337) b!1589927))

(declare-fun m!1883117 () Bool)

(assert (=> b!1589927 m!1883117))

(declare-fun m!1883119 () Bool)

(assert (=> b!1589930 m!1883119))

(assert (=> b!1589930 m!1880131))

(declare-fun m!1883121 () Bool)

(assert (=> b!1589930 m!1883121))

(declare-fun m!1883123 () Bool)

(assert (=> b!1589931 m!1883123))

(declare-fun m!1883125 () Bool)

(assert (=> d!473316 m!1883125))

(assert (=> d!473316 m!1880131))

(declare-fun m!1883127 () Bool)

(assert (=> d!473316 m!1883127))

(assert (=> b!1588656 d!473316))

(declare-fun d!473318 () Bool)

(assert (=> d!473318 (= (list!6789 (seqFromList!1905 lt!560815)) (list!6793 (c!257383 (seqFromList!1905 lt!560815))))))

(declare-fun bs!391706 () Bool)

(assert (= bs!391706 d!473318))

(declare-fun m!1883129 () Bool)

(assert (=> bs!391706 m!1883129))

(assert (=> b!1588656 d!473318))

(declare-fun d!473320 () Bool)

(declare-fun lt!562306 () Token!5722)

(assert (=> d!473320 (= lt!562306 (apply!4304 (list!6790 (_1!9881 lt!561157)) 0))))

(assert (=> d!473320 (= lt!562306 (apply!4313 (c!257385 (_1!9881 lt!561157)) 0))))

(declare-fun e!1021203 () Bool)

(assert (=> d!473320 e!1021203))

(declare-fun res!709338 () Bool)

(assert (=> d!473320 (=> (not res!709338) (not e!1021203))))

(assert (=> d!473320 (= res!709338 (<= 0 0))))

(assert (=> d!473320 (= (apply!4303 (_1!9881 lt!561157) 0) lt!562306)))

(declare-fun b!1589932 () Bool)

(assert (=> b!1589932 (= e!1021203 (< 0 (size!14059 (_1!9881 lt!561157))))))

(assert (= (and d!473320 res!709338) b!1589932))

(declare-fun m!1883131 () Bool)

(assert (=> d!473320 m!1883131))

(assert (=> d!473320 m!1883131))

(declare-fun m!1883133 () Bool)

(assert (=> d!473320 m!1883133))

(declare-fun m!1883135 () Bool)

(assert (=> d!473320 m!1883135))

(assert (=> b!1589932 m!1880383))

(assert (=> b!1588794 d!473320))

(declare-fun b!1589943 () Bool)

(declare-fun e!1021209 () List!17548)

(declare-fun list!6799 (IArray!11613) List!17548)

(assert (=> b!1589943 (= e!1021209 (list!6799 (xs!8612 (c!257383 lt!560830))))))

(declare-fun b!1589944 () Bool)

(assert (=> b!1589944 (= e!1021209 (++!4565 (list!6793 (left!14109 (c!257383 lt!560830))) (list!6793 (right!14439 (c!257383 lt!560830)))))))

(declare-fun b!1589941 () Bool)

(declare-fun e!1021208 () List!17548)

(assert (=> b!1589941 (= e!1021208 Nil!17478)))

(declare-fun b!1589942 () Bool)

(assert (=> b!1589942 (= e!1021208 e!1021209)))

(declare-fun c!257703 () Bool)

(assert (=> b!1589942 (= c!257703 (is-Leaf!8564 (c!257383 lt!560830)))))

(declare-fun d!473322 () Bool)

(declare-fun c!257702 () Bool)

(assert (=> d!473322 (= c!257702 (is-Empty!5804 (c!257383 lt!560830)))))

(assert (=> d!473322 (= (list!6793 (c!257383 lt!560830)) e!1021208)))

(assert (= (and d!473322 c!257702) b!1589941))

(assert (= (and d!473322 (not c!257702)) b!1589942))

(assert (= (and b!1589942 c!257703) b!1589943))

(assert (= (and b!1589942 (not c!257703)) b!1589944))

(declare-fun m!1883137 () Bool)

(assert (=> b!1589943 m!1883137))

(declare-fun m!1883139 () Bool)

(assert (=> b!1589944 m!1883139))

(declare-fun m!1883141 () Bool)

(assert (=> b!1589944 m!1883141))

(assert (=> b!1589944 m!1883139))

(assert (=> b!1589944 m!1883141))

(declare-fun m!1883143 () Bool)

(assert (=> b!1589944 m!1883143))

(assert (=> d!472674 d!473322))

(declare-fun b!1589947 () Bool)

(declare-fun e!1021211 () List!17548)

(assert (=> b!1589947 (= e!1021211 (list!6799 (xs!8612 (c!257383 lt!560818))))))

(declare-fun b!1589948 () Bool)

(assert (=> b!1589948 (= e!1021211 (++!4565 (list!6793 (left!14109 (c!257383 lt!560818))) (list!6793 (right!14439 (c!257383 lt!560818)))))))

(declare-fun b!1589945 () Bool)

(declare-fun e!1021210 () List!17548)

(assert (=> b!1589945 (= e!1021210 Nil!17478)))

(declare-fun b!1589946 () Bool)

(assert (=> b!1589946 (= e!1021210 e!1021211)))

(declare-fun c!257705 () Bool)

(assert (=> b!1589946 (= c!257705 (is-Leaf!8564 (c!257383 lt!560818)))))

(declare-fun d!473324 () Bool)

(declare-fun c!257704 () Bool)

(assert (=> d!473324 (= c!257704 (is-Empty!5804 (c!257383 lt!560818)))))

(assert (=> d!473324 (= (list!6793 (c!257383 lt!560818)) e!1021210)))

(assert (= (and d!473324 c!257704) b!1589945))

(assert (= (and d!473324 (not c!257704)) b!1589946))

(assert (= (and b!1589946 c!257705) b!1589947))

(assert (= (and b!1589946 (not c!257705)) b!1589948))

(declare-fun m!1883145 () Bool)

(assert (=> b!1589947 m!1883145))

(declare-fun m!1883147 () Bool)

(assert (=> b!1589948 m!1883147))

(declare-fun m!1883149 () Bool)

(assert (=> b!1589948 m!1883149))

(assert (=> b!1589948 m!1883147))

(assert (=> b!1589948 m!1883149))

(declare-fun m!1883151 () Bool)

(assert (=> b!1589948 m!1883151))

(assert (=> d!472732 d!473324))

(declare-fun d!473326 () Bool)

(assert (=> d!473326 (= (list!6790 (_1!9881 lt!560913)) (list!6794 (c!257385 (_1!9881 lt!560913))))))

(declare-fun bs!391707 () Bool)

(assert (= bs!391707 d!473326))

(declare-fun m!1883153 () Bool)

(assert (=> bs!391707 m!1883153))

(assert (=> b!1588600 d!473326))

(declare-fun b!1589949 () Bool)

(declare-fun e!1021214 () Bool)

(declare-fun lt!562308 () tuple2!16964)

(assert (=> b!1589949 (= e!1021214 (not (isEmpty!10505 (_1!9884 lt!562308))))))

(declare-fun b!1589950 () Bool)

(declare-fun e!1021213 () Bool)

(assert (=> b!1589950 (= e!1021213 (= (_2!9884 lt!562308) (list!6789 lt!560814)))))

(declare-fun b!1589951 () Bool)

(declare-fun e!1021212 () tuple2!16964)

(assert (=> b!1589951 (= e!1021212 (tuple2!16965 Nil!17480 (list!6789 lt!560814)))))

(declare-fun b!1589952 () Bool)

(assert (=> b!1589952 (= e!1021213 e!1021214)))

(declare-fun res!709339 () Bool)

(assert (=> b!1589952 (= res!709339 (< (size!14057 (_2!9884 lt!562308)) (size!14057 (list!6789 lt!560814))))))

(assert (=> b!1589952 (=> (not res!709339) (not e!1021214))))

(declare-fun b!1589953 () Bool)

(declare-fun lt!562307 () Option!3151)

(declare-fun lt!562309 () tuple2!16964)

(assert (=> b!1589953 (= e!1021212 (tuple2!16965 (Cons!17480 (_1!9880 (v!24043 lt!562307)) (_1!9884 lt!562309)) (_2!9884 lt!562309)))))

(assert (=> b!1589953 (= lt!562309 (lexList!794 thiss!17113 rules!1846 (_2!9880 (v!24043 lt!562307))))))

(declare-fun d!473328 () Bool)

(assert (=> d!473328 e!1021213))

(declare-fun c!257706 () Bool)

(assert (=> d!473328 (= c!257706 (> (size!14063 (_1!9884 lt!562308)) 0))))

(assert (=> d!473328 (= lt!562308 e!1021212)))

(declare-fun c!257707 () Bool)

(assert (=> d!473328 (= c!257707 (is-Some!3150 lt!562307))))

(assert (=> d!473328 (= lt!562307 (maxPrefix!1271 thiss!17113 rules!1846 (list!6789 lt!560814)))))

(assert (=> d!473328 (= (lexList!794 thiss!17113 rules!1846 (list!6789 lt!560814)) lt!562308)))

(assert (= (and d!473328 c!257707) b!1589953))

(assert (= (and d!473328 (not c!257707)) b!1589951))

(assert (= (and d!473328 c!257706) b!1589952))

(assert (= (and d!473328 (not c!257706)) b!1589950))

(assert (= (and b!1589952 res!709339) b!1589949))

(declare-fun m!1883155 () Bool)

(assert (=> b!1589949 m!1883155))

(declare-fun m!1883157 () Bool)

(assert (=> b!1589952 m!1883157))

(assert (=> b!1589952 m!1879775))

(declare-fun m!1883159 () Bool)

(assert (=> b!1589952 m!1883159))

(declare-fun m!1883161 () Bool)

(assert (=> b!1589953 m!1883161))

(declare-fun m!1883163 () Bool)

(assert (=> d!473328 m!1883163))

(assert (=> d!473328 m!1879775))

(declare-fun m!1883165 () Bool)

(assert (=> d!473328 m!1883165))

(assert (=> b!1588600 d!473328))

(assert (=> b!1588600 d!472678))

(declare-fun b!1589972 () Bool)

(declare-fun e!1021234 () Bool)

(declare-fun e!1021233 () Bool)

(assert (=> b!1589972 (= e!1021234 e!1021233)))

(declare-fun res!709364 () Bool)

(assert (=> b!1589972 (=> (not res!709364) (not e!1021233))))

(declare-fun appendAssoc!100 (List!17548 List!17548 List!17548) Bool)

(assert (=> b!1589972 (= res!709364 (appendAssoc!100 (list!6793 (left!14109 (right!14439 (c!257383 lt!560830)))) (list!6793 (right!14439 (right!14439 (c!257383 lt!560830)))) (list!6793 (c!257383 lt!560818))))))

(declare-fun b!1589973 () Bool)

(assert (=> b!1589973 (= e!1021233 (appendAssoc!100 (list!6793 (left!14109 (c!257383 lt!560830))) (list!6793 (left!14109 (right!14439 (c!257383 lt!560830)))) (++!4565 (list!6793 (right!14439 (right!14439 (c!257383 lt!560830)))) (list!6793 (c!257383 lt!560818)))))))

(declare-fun b!1589974 () Bool)

(declare-fun e!1021235 () Bool)

(assert (=> b!1589974 (= e!1021235 e!1021234)))

(declare-fun res!709359 () Bool)

(assert (=> b!1589974 (=> res!709359 e!1021234)))

(assert (=> b!1589974 (= res!709359 (not (is-Node!5804 (right!14439 (c!257383 lt!560830)))))))

(declare-fun b!1589975 () Bool)

(declare-fun e!1021241 () Bool)

(assert (=> b!1589975 (= e!1021241 e!1021235)))

(declare-fun res!709358 () Bool)

(assert (=> b!1589975 (=> (not res!709358) (not e!1021235))))

(assert (=> b!1589975 (= res!709358 (appendAssoc!100 (list!6793 (left!14109 (c!257383 lt!560830))) (list!6793 (right!14439 (c!257383 lt!560830))) (list!6793 (c!257383 lt!560818))))))

(declare-fun b!1589976 () Bool)

(declare-fun e!1021236 () Bool)

(assert (=> b!1589976 (= e!1021236 (appendAssoc!100 (++!4565 (list!6793 (c!257383 lt!560830)) (list!6793 (left!14109 (left!14109 (c!257383 lt!560818))))) (list!6793 (right!14439 (left!14109 (c!257383 lt!560818)))) (list!6793 (right!14439 (c!257383 lt!560818)))))))

(declare-fun b!1589977 () Bool)

(declare-fun e!1021237 () Bool)

(declare-fun e!1021238 () Bool)

(assert (=> b!1589977 (= e!1021237 e!1021238)))

(declare-fun res!709366 () Bool)

(assert (=> b!1589977 (=> res!709366 e!1021238)))

(assert (=> b!1589977 (= res!709366 (not (is-Node!5804 (c!257383 lt!560818))))))

(declare-fun d!473330 () Bool)

(assert (=> d!473330 e!1021237))

(declare-fun res!709360 () Bool)

(assert (=> d!473330 (=> (not res!709360) (not e!1021237))))

(assert (=> d!473330 (= res!709360 e!1021241)))

(declare-fun res!709361 () Bool)

(assert (=> d!473330 (=> res!709361 e!1021241)))

(assert (=> d!473330 (= res!709361 (not (is-Node!5804 (c!257383 lt!560830))))))

(assert (=> d!473330 (= (appendAssocInst!396 (c!257383 lt!560830) (c!257383 lt!560818)) true)))

(declare-fun b!1589978 () Bool)

(declare-fun e!1021240 () Bool)

(assert (=> b!1589978 (= e!1021238 e!1021240)))

(declare-fun res!709365 () Bool)

(assert (=> b!1589978 (=> (not res!709365) (not e!1021240))))

(assert (=> b!1589978 (= res!709365 (appendAssoc!100 (list!6793 (c!257383 lt!560830)) (list!6793 (left!14109 (c!257383 lt!560818))) (list!6793 (right!14439 (c!257383 lt!560818)))))))

(declare-fun b!1589979 () Bool)

(declare-fun e!1021239 () Bool)

(assert (=> b!1589979 (= e!1021239 e!1021236)))

(declare-fun res!709363 () Bool)

(assert (=> b!1589979 (=> (not res!709363) (not e!1021236))))

(assert (=> b!1589979 (= res!709363 (appendAssoc!100 (list!6793 (c!257383 lt!560830)) (list!6793 (left!14109 (left!14109 (c!257383 lt!560818)))) (list!6793 (right!14439 (left!14109 (c!257383 lt!560818))))))))

(declare-fun b!1589980 () Bool)

(assert (=> b!1589980 (= e!1021240 e!1021239)))

(declare-fun res!709362 () Bool)

(assert (=> b!1589980 (=> res!709362 e!1021239)))

(assert (=> b!1589980 (= res!709362 (not (is-Node!5804 (left!14109 (c!257383 lt!560818)))))))

(assert (= (and d!473330 (not res!709361)) b!1589975))

(assert (= (and b!1589975 res!709358) b!1589974))

(assert (= (and b!1589974 (not res!709359)) b!1589972))

(assert (= (and b!1589972 res!709364) b!1589973))

(assert (= (and d!473330 res!709360) b!1589977))

(assert (= (and b!1589977 (not res!709366)) b!1589978))

(assert (= (and b!1589978 res!709365) b!1589980))

(assert (= (and b!1589980 (not res!709362)) b!1589979))

(assert (= (and b!1589979 res!709363) b!1589976))

(declare-fun m!1883167 () Bool)

(assert (=> b!1589972 m!1883167))

(declare-fun m!1883169 () Bool)

(assert (=> b!1589972 m!1883169))

(assert (=> b!1589972 m!1880165))

(assert (=> b!1589972 m!1883167))

(assert (=> b!1589972 m!1883169))

(assert (=> b!1589972 m!1880165))

(declare-fun m!1883171 () Bool)

(assert (=> b!1589972 m!1883171))

(assert (=> b!1589975 m!1883139))

(assert (=> b!1589975 m!1883141))

(assert (=> b!1589975 m!1880165))

(assert (=> b!1589975 m!1883139))

(assert (=> b!1589975 m!1883141))

(assert (=> b!1589975 m!1880165))

(declare-fun m!1883173 () Bool)

(assert (=> b!1589975 m!1883173))

(assert (=> b!1589978 m!1879961))

(assert (=> b!1589978 m!1883147))

(assert (=> b!1589978 m!1883149))

(assert (=> b!1589978 m!1879961))

(assert (=> b!1589978 m!1883147))

(assert (=> b!1589978 m!1883149))

(declare-fun m!1883175 () Bool)

(assert (=> b!1589978 m!1883175))

(assert (=> b!1589979 m!1879961))

(declare-fun m!1883177 () Bool)

(assert (=> b!1589979 m!1883177))

(declare-fun m!1883179 () Bool)

(assert (=> b!1589979 m!1883179))

(assert (=> b!1589979 m!1879961))

(assert (=> b!1589979 m!1883177))

(assert (=> b!1589979 m!1883179))

(declare-fun m!1883181 () Bool)

(assert (=> b!1589979 m!1883181))

(assert (=> b!1589973 m!1883167))

(assert (=> b!1589973 m!1883139))

(assert (=> b!1589973 m!1883139))

(assert (=> b!1589973 m!1883167))

(declare-fun m!1883183 () Bool)

(assert (=> b!1589973 m!1883183))

(declare-fun m!1883185 () Bool)

(assert (=> b!1589973 m!1883185))

(assert (=> b!1589973 m!1880165))

(assert (=> b!1589973 m!1883169))

(assert (=> b!1589973 m!1883169))

(assert (=> b!1589973 m!1880165))

(assert (=> b!1589973 m!1883183))

(assert (=> b!1589976 m!1879961))

(assert (=> b!1589976 m!1883177))

(declare-fun m!1883187 () Bool)

(assert (=> b!1589976 m!1883187))

(assert (=> b!1589976 m!1879961))

(assert (=> b!1589976 m!1883149))

(assert (=> b!1589976 m!1883187))

(assert (=> b!1589976 m!1883179))

(assert (=> b!1589976 m!1883149))

(declare-fun m!1883189 () Bool)

(assert (=> b!1589976 m!1883189))

(assert (=> b!1589976 m!1883179))

(assert (=> b!1589976 m!1883177))

(assert (=> d!472818 d!473330))

(declare-fun c!257731 () Bool)

(declare-fun c!257726 () Bool)

(declare-fun call!103073 () Conc!5804)

(declare-fun call!103067 () Conc!5804)

(declare-fun lt!562319 () Conc!5804)

(declare-fun call!103070 () Conc!5804)

(declare-fun lt!562321 () Conc!5804)

(declare-fun c!257728 () Bool)

(declare-fun bm!103061 () Bool)

(declare-fun c!257725 () Bool)

(declare-fun c!257727 () Bool)

(declare-fun call!103081 () Conc!5804)

(declare-fun <>!128 (Conc!5804 Conc!5804) Conc!5804)

(assert (=> bm!103061 (= call!103073 (<>!128 (ite c!257726 (ite (or c!257728 c!257727) (left!14109 (c!257383 lt!560830)) call!103070) (ite c!257731 call!103067 (ite c!257725 lt!562319 (right!14439 (left!14109 (c!257383 lt!560818)))))) (ite c!257726 (ite c!257728 call!103081 (ite c!257727 call!103070 lt!562321)) (ite c!257731 (right!14439 (c!257383 lt!560818)) (ite c!257725 (right!14439 (left!14109 (c!257383 lt!560818))) (right!14439 (c!257383 lt!560818)))))))))

(declare-fun b!1590024 () Bool)

(declare-fun e!1021262 () Conc!5804)

(declare-fun call!103079 () Conc!5804)

(assert (=> b!1590024 (= e!1021262 call!103079)))

(declare-fun b!1590025 () Bool)

(declare-fun e!1021267 () Conc!5804)

(declare-fun call!103066 () Conc!5804)

(assert (=> b!1590025 (= e!1021267 call!103066)))

(declare-fun b!1590026 () Bool)

(declare-fun e!1021271 () Bool)

(assert (=> b!1590026 (= e!1021271 (isBalanced!1721 (c!257383 lt!560818)))))

(declare-fun b!1590027 () Bool)

(declare-fun res!709377 () Bool)

(declare-fun e!1021268 () Bool)

(assert (=> b!1590027 (=> (not res!709377) (not e!1021268))))

(declare-fun lt!562318 () Conc!5804)

(assert (=> b!1590027 (= res!709377 (<= (height!862 lt!562318) (+ (max!0 (height!862 (c!257383 lt!560830)) (height!862 (c!257383 lt!560818))) 1)))))

(declare-fun bm!103062 () Bool)

(declare-fun call!103068 () Conc!5804)

(declare-fun call!103072 () Conc!5804)

(assert (=> bm!103062 (= call!103068 call!103072)))

(declare-fun bm!103063 () Bool)

(assert (=> bm!103063 (= call!103066 call!103073)))

(declare-fun b!1590028 () Bool)

(declare-fun call!103076 () Int)

(declare-fun call!103071 () Int)

(assert (=> b!1590028 (= c!257731 (>= call!103076 call!103071))))

(declare-fun e!1021266 () Conc!5804)

(assert (=> b!1590028 (= e!1021266 e!1021267)))

(declare-fun bm!103064 () Bool)

(assert (=> bm!103064 (= call!103070 call!103068)))

(declare-fun bm!103065 () Bool)

(declare-fun call!103077 () Conc!5804)

(assert (=> bm!103065 (= call!103077 call!103073)))

(declare-fun bm!103066 () Bool)

(declare-fun call!103069 () Conc!5804)

(assert (=> bm!103066 (= call!103069 call!103077)))

(declare-fun bm!103067 () Bool)

(assert (=> bm!103067 (= call!103076 (height!862 (ite c!257726 (left!14109 (c!257383 lt!560830)) (right!14439 (c!257383 lt!560818)))))))

(declare-fun b!1590029 () Bool)

(assert (=> b!1590029 (= e!1021268 (= (list!6793 lt!562318) (++!4565 (list!6793 (c!257383 lt!560830)) (list!6793 (c!257383 lt!560818)))))))

(declare-fun b!1590030 () Bool)

(declare-fun e!1021263 () Conc!5804)

(assert (=> b!1590030 (= e!1021263 (c!257383 lt!560818))))

(declare-fun call!103080 () Conc!5804)

(declare-fun bm!103068 () Bool)

(assert (=> bm!103068 (= call!103080 (++!4569 (ite c!257726 (ite c!257728 (right!14439 (c!257383 lt!560830)) (right!14439 (right!14439 (c!257383 lt!560830)))) (c!257383 lt!560830)) (ite c!257726 (c!257383 lt!560818) (ite c!257731 (left!14109 (c!257383 lt!560818)) (left!14109 (left!14109 (c!257383 lt!560818)))))))))

(declare-fun b!1590031 () Bool)

(declare-fun c!257729 () Bool)

(declare-fun lt!562320 () Int)

(assert (=> b!1590031 (= c!257729 (and (<= (- 1) lt!562320) (<= lt!562320 1)))))

(assert (=> b!1590031 (= lt!562320 (- (height!862 (c!257383 lt!560818)) (height!862 (c!257383 lt!560830))))))

(declare-fun e!1021269 () Conc!5804)

(declare-fun e!1021265 () Conc!5804)

(assert (=> b!1590031 (= e!1021269 e!1021265)))

(declare-fun b!1590032 () Bool)

(assert (=> b!1590032 (= e!1021265 call!103072)))

(declare-fun b!1590033 () Bool)

(assert (=> b!1590033 (= e!1021269 (c!257383 lt!560830))))

(declare-fun b!1590034 () Bool)

(declare-fun res!709378 () Bool)

(assert (=> b!1590034 (=> (not res!709378) (not e!1021268))))

(assert (=> b!1590034 (= res!709378 (isBalanced!1721 lt!562318))))

(declare-fun b!1590023 () Bool)

(assert (=> b!1590023 (= e!1021263 e!1021269)))

(declare-fun c!257730 () Bool)

(assert (=> b!1590023 (= c!257730 (= (c!257383 lt!560818) Empty!5804))))

(declare-fun d!473332 () Bool)

(assert (=> d!473332 e!1021268))

(declare-fun res!709379 () Bool)

(assert (=> d!473332 (=> (not res!709379) (not e!1021268))))

(assert (=> d!473332 (= res!709379 (appendAssocInst!396 (c!257383 lt!560830) (c!257383 lt!560818)))))

(assert (=> d!473332 (= lt!562318 e!1021263)))

(declare-fun c!257724 () Bool)

(assert (=> d!473332 (= c!257724 (= (c!257383 lt!560830) Empty!5804))))

(assert (=> d!473332 e!1021271))

(declare-fun res!709380 () Bool)

(assert (=> d!473332 (=> (not res!709380) (not e!1021271))))

(assert (=> d!473332 (= res!709380 (isBalanced!1721 (c!257383 lt!560830)))))

(assert (=> d!473332 (= (++!4569 (c!257383 lt!560830) (c!257383 lt!560818)) lt!562318)))

(declare-fun bm!103069 () Bool)

(declare-fun call!103074 () Int)

(assert (=> bm!103069 (= call!103074 (height!862 (ite c!257726 (c!257383 lt!560830) lt!562319)))))

(declare-fun b!1590035 () Bool)

(declare-fun e!1021264 () Conc!5804)

(assert (=> b!1590035 (= e!1021264 call!103069)))

(declare-fun b!1590036 () Bool)

(declare-fun e!1021270 () Conc!5804)

(assert (=> b!1590036 (= e!1021270 call!103077)))

(declare-fun bm!103070 () Bool)

(assert (=> bm!103070 (= call!103079 call!103068)))

(declare-fun b!1590037 () Bool)

(assert (=> b!1590037 (= e!1021270 e!1021264)))

(assert (=> b!1590037 (= lt!562321 call!103081)))

(assert (=> b!1590037 (= c!257727 (= call!103071 (- call!103074 3)))))

(declare-fun bm!103071 () Bool)

(assert (=> bm!103071 (= call!103071 (height!862 (ite c!257726 lt!562321 (left!14109 (c!257383 lt!560818)))))))

(declare-fun b!1590038 () Bool)

(declare-fun res!709381 () Bool)

(assert (=> b!1590038 (=> (not res!709381) (not e!1021268))))

(assert (=> b!1590038 (= res!709381 (>= (height!862 lt!562318) (max!0 (height!862 (c!257383 lt!560830)) (height!862 (c!257383 lt!560818)))))))

(declare-fun b!1590039 () Bool)

(assert (=> b!1590039 (= e!1021267 e!1021262)))

(assert (=> b!1590039 (= lt!562319 call!103067)))

(declare-fun call!103075 () Int)

(assert (=> b!1590039 (= c!257725 (= call!103074 (- call!103075 3)))))

(declare-fun bm!103072 () Bool)

(declare-fun call!103078 () Conc!5804)

(assert (=> bm!103072 (= call!103072 (<>!128 (ite c!257729 (c!257383 lt!560830) (ite c!257726 (ite c!257727 (left!14109 (right!14439 (c!257383 lt!560830))) (left!14109 (c!257383 lt!560830))) (ite c!257725 call!103078 lt!562319))) (ite c!257729 (c!257383 lt!560818) (ite c!257726 (ite c!257727 lt!562321 (left!14109 (right!14439 (c!257383 lt!560830)))) (ite c!257725 (right!14439 (c!257383 lt!560818)) call!103078)))))))

(declare-fun b!1590040 () Bool)

(assert (=> b!1590040 (= c!257728 (>= call!103076 call!103075))))

(assert (=> b!1590040 (= e!1021266 e!1021270)))

(declare-fun bm!103073 () Bool)

(assert (=> bm!103073 (= call!103075 (height!862 (ite c!257726 (right!14439 (c!257383 lt!560830)) (c!257383 lt!560818))))))

(declare-fun bm!103074 () Bool)

(assert (=> bm!103074 (= call!103081 call!103080)))

(declare-fun b!1590041 () Bool)

(assert (=> b!1590041 (= e!1021265 e!1021266)))

(assert (=> b!1590041 (= c!257726 (< lt!562320 (- 1)))))

(declare-fun b!1590042 () Bool)

(assert (=> b!1590042 (= e!1021262 call!103079)))

(declare-fun bm!103075 () Bool)

(assert (=> bm!103075 (= call!103078 call!103066)))

(declare-fun b!1590043 () Bool)

(assert (=> b!1590043 (= e!1021264 call!103069)))

(declare-fun bm!103076 () Bool)

(assert (=> bm!103076 (= call!103067 call!103080)))

(assert (= (and d!473332 res!709380) b!1590026))

(assert (= (and d!473332 c!257724) b!1590030))

(assert (= (and d!473332 (not c!257724)) b!1590023))

(assert (= (and b!1590023 c!257730) b!1590033))

(assert (= (and b!1590023 (not c!257730)) b!1590031))

(assert (= (and b!1590031 c!257729) b!1590032))

(assert (= (and b!1590031 (not c!257729)) b!1590041))

(assert (= (and b!1590041 c!257726) b!1590040))

(assert (= (and b!1590041 (not c!257726)) b!1590028))

(assert (= (and b!1590040 c!257728) b!1590036))

(assert (= (and b!1590040 (not c!257728)) b!1590037))

(assert (= (and b!1590037 c!257727) b!1590035))

(assert (= (and b!1590037 (not c!257727)) b!1590043))

(assert (= (or b!1590035 b!1590043) bm!103064))

(assert (= (or b!1590035 b!1590043) bm!103066))

(assert (= (or b!1590036 b!1590037) bm!103074))

(assert (= (or b!1590036 bm!103066) bm!103065))

(assert (= (and b!1590028 c!257731) b!1590025))

(assert (= (and b!1590028 (not c!257731)) b!1590039))

(assert (= (and b!1590039 c!257725) b!1590042))

(assert (= (and b!1590039 (not c!257725)) b!1590024))

(assert (= (or b!1590042 b!1590024) bm!103075))

(assert (= (or b!1590042 b!1590024) bm!103070))

(assert (= (or b!1590025 b!1590039) bm!103076))

(assert (= (or b!1590025 bm!103075) bm!103063))

(assert (= (or b!1590037 b!1590039) bm!103069))

(assert (= (or bm!103065 bm!103063) bm!103061))

(assert (= (or b!1590040 b!1590039) bm!103073))

(assert (= (or bm!103064 bm!103070) bm!103062))

(assert (= (or b!1590040 b!1590028) bm!103067))

(assert (= (or bm!103074 bm!103076) bm!103068))

(assert (= (or b!1590037 b!1590028) bm!103071))

(assert (= (or b!1590032 bm!103062) bm!103072))

(assert (= (and d!473332 res!709379) b!1590034))

(assert (= (and b!1590034 res!709378) b!1590027))

(assert (= (and b!1590027 res!709377) b!1590038))

(assert (= (and b!1590038 res!709381) b!1590029))

(assert (=> b!1590031 m!1880705))

(assert (=> b!1590031 m!1880703))

(declare-fun m!1883191 () Bool)

(assert (=> bm!103068 m!1883191))

(declare-fun m!1883193 () Bool)

(assert (=> b!1590038 m!1883193))

(assert (=> b!1590038 m!1880703))

(assert (=> b!1590038 m!1880705))

(assert (=> b!1590038 m!1880703))

(assert (=> b!1590038 m!1880705))

(assert (=> b!1590038 m!1880707))

(declare-fun m!1883195 () Bool)

(assert (=> bm!103071 m!1883195))

(declare-fun m!1883197 () Bool)

(assert (=> b!1590029 m!1883197))

(assert (=> b!1590029 m!1879961))

(assert (=> b!1590029 m!1880165))

(assert (=> b!1590029 m!1879961))

(assert (=> b!1590029 m!1880165))

(declare-fun m!1883199 () Bool)

(assert (=> b!1590029 m!1883199))

(assert (=> d!473332 m!1880699))

(declare-fun m!1883201 () Bool)

(assert (=> d!473332 m!1883201))

(declare-fun m!1883203 () Bool)

(assert (=> b!1590034 m!1883203))

(declare-fun m!1883205 () Bool)

(assert (=> b!1590026 m!1883205))

(declare-fun m!1883207 () Bool)

(assert (=> bm!103067 m!1883207))

(declare-fun m!1883209 () Bool)

(assert (=> bm!103072 m!1883209))

(declare-fun m!1883211 () Bool)

(assert (=> bm!103061 m!1883211))

(declare-fun m!1883213 () Bool)

(assert (=> bm!103073 m!1883213))

(declare-fun m!1883215 () Bool)

(assert (=> bm!103069 m!1883215))

(assert (=> b!1590027 m!1883193))

(assert (=> b!1590027 m!1880703))

(assert (=> b!1590027 m!1880705))

(assert (=> b!1590027 m!1880703))

(assert (=> b!1590027 m!1880705))

(assert (=> b!1590027 m!1880707))

(assert (=> d!472818 d!473332))

(declare-fun b!1590047 () Bool)

(declare-fun e!1021273 () Bool)

(assert (=> b!1590047 (= e!1021273 (>= (size!14057 (tail!2285 lt!560832)) (size!14057 (tail!2285 lt!560815))))))

(declare-fun d!473334 () Bool)

(assert (=> d!473334 e!1021273))

(declare-fun res!709385 () Bool)

(assert (=> d!473334 (=> res!709385 e!1021273)))

(declare-fun lt!562322 () Bool)

(assert (=> d!473334 (= res!709385 (not lt!562322))))

(declare-fun e!1021272 () Bool)

(assert (=> d!473334 (= lt!562322 e!1021272)))

(declare-fun res!709384 () Bool)

(assert (=> d!473334 (=> res!709384 e!1021272)))

(assert (=> d!473334 (= res!709384 (is-Nil!17478 (tail!2285 lt!560815)))))

(assert (=> d!473334 (= (isPrefix!1338 (tail!2285 lt!560815) (tail!2285 lt!560832)) lt!562322)))

(declare-fun b!1590044 () Bool)

(declare-fun e!1021274 () Bool)

(assert (=> b!1590044 (= e!1021272 e!1021274)))

(declare-fun res!709383 () Bool)

(assert (=> b!1590044 (=> (not res!709383) (not e!1021274))))

(assert (=> b!1590044 (= res!709383 (not (is-Nil!17478 (tail!2285 lt!560832))))))

(declare-fun b!1590046 () Bool)

(assert (=> b!1590046 (= e!1021274 (isPrefix!1338 (tail!2285 (tail!2285 lt!560815)) (tail!2285 (tail!2285 lt!560832))))))

(declare-fun b!1590045 () Bool)

(declare-fun res!709382 () Bool)

(assert (=> b!1590045 (=> (not res!709382) (not e!1021274))))

(assert (=> b!1590045 (= res!709382 (= (head!3239 (tail!2285 lt!560815)) (head!3239 (tail!2285 lt!560832))))))

(assert (= (and d!473334 (not res!709384)) b!1590044))

(assert (= (and b!1590044 res!709383) b!1590045))

(assert (= (and b!1590045 res!709382) b!1590046))

(assert (= (and d!473334 (not res!709385)) b!1590047))

(assert (=> b!1590047 m!1880673))

(declare-fun m!1883217 () Bool)

(assert (=> b!1590047 m!1883217))

(assert (=> b!1590047 m!1880671))

(declare-fun m!1883219 () Bool)

(assert (=> b!1590047 m!1883219))

(assert (=> b!1590046 m!1880671))

(declare-fun m!1883221 () Bool)

(assert (=> b!1590046 m!1883221))

(assert (=> b!1590046 m!1880673))

(declare-fun m!1883223 () Bool)

(assert (=> b!1590046 m!1883223))

(assert (=> b!1590046 m!1883221))

(assert (=> b!1590046 m!1883223))

(declare-fun m!1883225 () Bool)

(assert (=> b!1590046 m!1883225))

(assert (=> b!1590045 m!1880671))

(declare-fun m!1883227 () Bool)

(assert (=> b!1590045 m!1883227))

(assert (=> b!1590045 m!1880673))

(declare-fun m!1883229 () Bool)

(assert (=> b!1590045 m!1883229))

(assert (=> b!1588908 d!473334))

(declare-fun d!473336 () Bool)

(assert (=> d!473336 (= (tail!2285 lt!560815) (t!144427 lt!560815))))

(assert (=> b!1588908 d!473336))

(declare-fun d!473338 () Bool)

(assert (=> d!473338 (= (tail!2285 lt!560832) (t!144427 lt!560832))))

(assert (=> b!1588908 d!473338))

(assert (=> b!1588763 d!472984))

(declare-fun d!473340 () Bool)

(declare-fun dynLambda!7778 (Int BalanceConc!11552) TokenValue!3168)

(assert (=> d!473340 (= (apply!4305 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!561060))))) (dynLambda!7778 (toValue!4489 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060))))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!561060))))))))

(declare-fun b_lambda!50035 () Bool)

(assert (=> (not b_lambda!50035) (not d!473340)))

(declare-fun t!144553 () Bool)

(declare-fun tb!89495 () Bool)

(assert (=> (and b!1588488 (= (toValue!4489 (transformation!3078 (h!22880 rules!1846))) (toValue!4489 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144553) tb!89495))

(declare-fun result!108362 () Bool)

(assert (=> tb!89495 (= result!108362 (inv!21 (dynLambda!7778 (toValue!4489 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060))))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!561060)))))))))

(declare-fun m!1883231 () Bool)

(assert (=> tb!89495 m!1883231))

(assert (=> d!473340 t!144553))

(declare-fun b_and!111533 () Bool)

(assert (= b_and!111405 (and (=> t!144553 result!108362) b_and!111533)))

(declare-fun tb!89497 () Bool)

(declare-fun t!144555 () Bool)

(assert (=> (and b!1588496 (= (toValue!4489 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toValue!4489 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144555) tb!89497))

(declare-fun result!108366 () Bool)

(assert (= result!108366 result!108362))

(assert (=> d!473340 t!144555))

(declare-fun b_and!111535 () Bool)

(assert (= b_and!111409 (and (=> t!144555 result!108366) b_and!111535)))

(declare-fun t!144557 () Bool)

(declare-fun tb!89499 () Bool)

(assert (=> (and b!1588974 (= (toValue!4489 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toValue!4489 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144557) tb!89499))

(declare-fun result!108368 () Bool)

(assert (= result!108368 result!108362))

(assert (=> d!473340 t!144557))

(declare-fun b_and!111537 () Bool)

(assert (= b_and!111445 (and (=> t!144557 result!108368) b_and!111537)))

(declare-fun t!144559 () Bool)

(declare-fun tb!89501 () Bool)

(assert (=> (and b!1588988 (= (toValue!4489 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toValue!4489 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144559) tb!89501))

(declare-fun result!108370 () Bool)

(assert (= result!108370 result!108362))

(assert (=> d!473340 t!144559))

(declare-fun b_and!111539 () Bool)

(assert (= b_and!111449 (and (=> t!144559 result!108370) b_and!111539)))

(assert (=> d!473340 m!1880261))

(declare-fun m!1883233 () Bool)

(assert (=> d!473340 m!1883233))

(assert (=> b!1588763 d!473340))

(declare-fun d!473342 () Bool)

(assert (=> d!473342 (= (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!561060)))) (fromListB!825 (originalCharacters!3892 (_1!9880 (get!5002 lt!561060)))))))

(declare-fun bs!391708 () Bool)

(assert (= bs!391708 d!473342))

(declare-fun m!1883235 () Bool)

(assert (=> bs!391708 m!1883235))

(assert (=> b!1588763 d!473342))

(declare-fun d!473344 () Bool)

(declare-fun lt!562323 () Int)

(assert (=> d!473344 (>= lt!562323 0)))

(declare-fun e!1021278 () Int)

(assert (=> d!473344 (= lt!562323 e!1021278)))

(declare-fun c!257732 () Bool)

(assert (=> d!473344 (= c!257732 (is-Nil!17478 (originalCharacters!3892 (h!22881 tokens!457))))))

(assert (=> d!473344 (= (size!14057 (originalCharacters!3892 (h!22881 tokens!457))) lt!562323)))

(declare-fun b!1590050 () Bool)

(assert (=> b!1590050 (= e!1021278 0)))

(declare-fun b!1590051 () Bool)

(assert (=> b!1590051 (= e!1021278 (+ 1 (size!14057 (t!144427 (originalCharacters!3892 (h!22881 tokens!457))))))))

(assert (= (and d!473344 c!257732) b!1590050))

(assert (= (and d!473344 (not c!257732)) b!1590051))

(declare-fun m!1883237 () Bool)

(assert (=> b!1590051 m!1883237))

(assert (=> b!1588802 d!473344))

(declare-fun d!473346 () Bool)

(declare-fun charsToBigInt!0 (List!17547 Int) Int)

(assert (=> d!473346 (= (inv!15 (value!97397 (h!22881 tokens!457))) (= (charsToBigInt!0 (text!22625 (value!97397 (h!22881 tokens!457))) 0) (value!97392 (value!97397 (h!22881 tokens!457)))))))

(declare-fun bs!391709 () Bool)

(assert (= bs!391709 d!473346))

(declare-fun m!1883239 () Bool)

(assert (=> bs!391709 m!1883239))

(assert (=> b!1588635 d!473346))

(declare-fun bs!391710 () Bool)

(declare-fun d!473348 () Bool)

(assert (= bs!391710 (and d!473348 d!472832)))

(declare-fun lambda!66655 () Int)

(assert (=> bs!391710 (= lambda!66655 lambda!66640)))

(declare-fun lambda!66656 () Int)

(declare-fun forall!4017 (List!17557 Int) Bool)

(assert (=> d!473348 (forall!4017 (map!3623 rules!1846 lambda!66655) lambda!66656)))

(declare-fun lt!562328 () Unit!27502)

(declare-fun e!1021281 () Unit!27502)

(assert (=> d!473348 (= lt!562328 e!1021281)))

(declare-fun c!257735 () Bool)

(assert (=> d!473348 (= c!257735 (is-Nil!17479 rules!1846))))

(assert (=> d!473348 (rulesValidInductive!927 thiss!17113 rules!1846)))

(assert (=> d!473348 (= (lemma!204 rules!1846 thiss!17113 rules!1846) lt!562328)))

(declare-fun b!1590056 () Bool)

(declare-fun Unit!27582 () Unit!27502)

(assert (=> b!1590056 (= e!1021281 Unit!27582)))

(declare-fun b!1590057 () Bool)

(declare-fun Unit!27583 () Unit!27502)

(assert (=> b!1590057 (= e!1021281 Unit!27583)))

(declare-fun lt!562329 () Unit!27502)

(assert (=> b!1590057 (= lt!562329 (lemma!204 rules!1846 thiss!17113 (t!144428 rules!1846)))))

(assert (= (and d!473348 c!257735) b!1590056))

(assert (= (and d!473348 (not c!257735)) b!1590057))

(declare-fun m!1883241 () Bool)

(assert (=> d!473348 m!1883241))

(assert (=> d!473348 m!1883241))

(declare-fun m!1883243 () Bool)

(assert (=> d!473348 m!1883243))

(assert (=> d!473348 m!1880275))

(declare-fun m!1883245 () Bool)

(assert (=> b!1590057 m!1883245))

(assert (=> d!472832 d!473348))

(declare-fun bs!391711 () Bool)

(declare-fun d!473350 () Bool)

(assert (= bs!391711 (and d!473350 d!473348)))

(declare-fun lambda!66659 () Int)

(assert (=> bs!391711 (= lambda!66659 lambda!66656)))

(declare-fun b!1590078 () Bool)

(declare-fun e!1021298 () Regex!4406)

(declare-fun e!1021295 () Regex!4406)

(assert (=> b!1590078 (= e!1021298 e!1021295)))

(declare-fun c!257747 () Bool)

(assert (=> b!1590078 (= c!257747 (is-Cons!17487 (map!3623 rules!1846 lambda!66640)))))

(declare-fun b!1590079 () Bool)

(declare-fun e!1021297 () Bool)

(declare-fun e!1021294 () Bool)

(assert (=> b!1590079 (= e!1021297 e!1021294)))

(declare-fun c!257746 () Bool)

(declare-fun isEmpty!10517 (List!17557) Bool)

(declare-fun tail!2289 (List!17557) List!17557)

(assert (=> b!1590079 (= c!257746 (isEmpty!10517 (tail!2289 (map!3623 rules!1846 lambda!66640))))))

(declare-fun b!1590080 () Bool)

(assert (=> b!1590080 (= e!1021295 (Union!4406 (h!22888 (map!3623 rules!1846 lambda!66640)) (generalisedUnion!212 (t!144478 (map!3623 rules!1846 lambda!66640)))))))

(declare-fun b!1590081 () Bool)

(declare-fun e!1021296 () Bool)

(assert (=> b!1590081 (= e!1021296 e!1021297)))

(declare-fun c!257744 () Bool)

(assert (=> b!1590081 (= c!257744 (isEmpty!10517 (map!3623 rules!1846 lambda!66640)))))

(assert (=> d!473350 e!1021296))

(declare-fun res!709390 () Bool)

(assert (=> d!473350 (=> (not res!709390) (not e!1021296))))

(declare-fun lt!562332 () Regex!4406)

(assert (=> d!473350 (= res!709390 (validRegex!1743 lt!562332))))

(assert (=> d!473350 (= lt!562332 e!1021298)))

(declare-fun c!257745 () Bool)

(declare-fun e!1021299 () Bool)

(assert (=> d!473350 (= c!257745 e!1021299)))

(declare-fun res!709391 () Bool)

(assert (=> d!473350 (=> (not res!709391) (not e!1021299))))

(assert (=> d!473350 (= res!709391 (is-Cons!17487 (map!3623 rules!1846 lambda!66640)))))

(assert (=> d!473350 (forall!4017 (map!3623 rules!1846 lambda!66640) lambda!66659)))

(assert (=> d!473350 (= (generalisedUnion!212 (map!3623 rules!1846 lambda!66640)) lt!562332)))

(declare-fun b!1590082 () Bool)

(assert (=> b!1590082 (= e!1021298 (h!22888 (map!3623 rules!1846 lambda!66640)))))

(declare-fun b!1590083 () Bool)

(declare-fun head!3245 (List!17557) Regex!4406)

(assert (=> b!1590083 (= e!1021294 (= lt!562332 (head!3245 (map!3623 rules!1846 lambda!66640))))))

(declare-fun b!1590084 () Bool)

(assert (=> b!1590084 (= e!1021295 EmptyLang!4406)))

(declare-fun b!1590085 () Bool)

(assert (=> b!1590085 (= e!1021299 (isEmpty!10517 (t!144478 (map!3623 rules!1846 lambda!66640))))))

(declare-fun b!1590086 () Bool)

(declare-fun isEmptyLang!64 (Regex!4406) Bool)

(assert (=> b!1590086 (= e!1021297 (isEmptyLang!64 lt!562332))))

(declare-fun b!1590087 () Bool)

(declare-fun isUnion!64 (Regex!4406) Bool)

(assert (=> b!1590087 (= e!1021294 (isUnion!64 lt!562332))))

(assert (= (and d!473350 res!709391) b!1590085))

(assert (= (and d!473350 c!257745) b!1590082))

(assert (= (and d!473350 (not c!257745)) b!1590078))

(assert (= (and b!1590078 c!257747) b!1590080))

(assert (= (and b!1590078 (not c!257747)) b!1590084))

(assert (= (and d!473350 res!709390) b!1590081))

(assert (= (and b!1590081 c!257744) b!1590086))

(assert (= (and b!1590081 (not c!257744)) b!1590079))

(assert (= (and b!1590079 c!257746) b!1590083))

(assert (= (and b!1590079 (not c!257746)) b!1590087))

(declare-fun m!1883247 () Bool)

(assert (=> b!1590080 m!1883247))

(declare-fun m!1883249 () Bool)

(assert (=> b!1590087 m!1883249))

(declare-fun m!1883251 () Bool)

(assert (=> b!1590085 m!1883251))

(assert (=> b!1590079 m!1880821))

(declare-fun m!1883253 () Bool)

(assert (=> b!1590079 m!1883253))

(assert (=> b!1590079 m!1883253))

(declare-fun m!1883255 () Bool)

(assert (=> b!1590079 m!1883255))

(assert (=> b!1590083 m!1880821))

(declare-fun m!1883257 () Bool)

(assert (=> b!1590083 m!1883257))

(declare-fun m!1883259 () Bool)

(assert (=> b!1590086 m!1883259))

(declare-fun m!1883261 () Bool)

(assert (=> d!473350 m!1883261))

(assert (=> d!473350 m!1880821))

(declare-fun m!1883263 () Bool)

(assert (=> d!473350 m!1883263))

(assert (=> b!1590081 m!1880821))

(declare-fun m!1883265 () Bool)

(assert (=> b!1590081 m!1883265))

(assert (=> d!472832 d!473350))

(declare-fun d!473352 () Bool)

(declare-fun lt!562335 () List!17557)

(declare-fun size!14067 (List!17557) Int)

(declare-fun size!14068 (List!17549) Int)

(assert (=> d!473352 (= (size!14067 lt!562335) (size!14068 rules!1846))))

(declare-fun e!1021302 () List!17557)

(assert (=> d!473352 (= lt!562335 e!1021302)))

(declare-fun c!257750 () Bool)

(assert (=> d!473352 (= c!257750 (is-Nil!17479 rules!1846))))

(assert (=> d!473352 (= (map!3623 rules!1846 lambda!66640) lt!562335)))

(declare-fun b!1590092 () Bool)

(assert (=> b!1590092 (= e!1021302 Nil!17487)))

(declare-fun b!1590093 () Bool)

(declare-fun $colon$colon!288 (List!17557 Regex!4406) List!17557)

(declare-fun dynLambda!7779 (Int Rule!5956) Regex!4406)

(assert (=> b!1590093 (= e!1021302 ($colon$colon!288 (map!3623 (t!144428 rules!1846) lambda!66640) (dynLambda!7779 lambda!66640 (h!22880 rules!1846))))))

(assert (= (and d!473352 c!257750) b!1590092))

(assert (= (and d!473352 (not c!257750)) b!1590093))

(declare-fun b_lambda!50037 () Bool)

(assert (=> (not b_lambda!50037) (not b!1590093)))

(declare-fun m!1883267 () Bool)

(assert (=> d!473352 m!1883267))

(declare-fun m!1883269 () Bool)

(assert (=> d!473352 m!1883269))

(declare-fun m!1883271 () Bool)

(assert (=> b!1590093 m!1883271))

(declare-fun m!1883273 () Bool)

(assert (=> b!1590093 m!1883273))

(assert (=> b!1590093 m!1883271))

(assert (=> b!1590093 m!1883273))

(declare-fun m!1883275 () Bool)

(assert (=> b!1590093 m!1883275))

(assert (=> d!472832 d!473352))

(declare-fun d!473354 () Bool)

(assert (=> d!473354 (= (inv!22884 (tag!3348 (rule!4882 (h!22881 (t!144429 tokens!457))))) (= (mod (str.len (value!97396 (tag!3348 (rule!4882 (h!22881 (t!144429 tokens!457)))))) 2) 0))))

(assert (=> b!1588987 d!473354))

(declare-fun d!473356 () Bool)

(declare-fun res!709392 () Bool)

(declare-fun e!1021303 () Bool)

(assert (=> d!473356 (=> (not res!709392) (not e!1021303))))

(assert (=> d!473356 (= res!709392 (semiInverseModEq!1165 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toValue!4489 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))))))

(assert (=> d!473356 (= (inv!22887 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) e!1021303)))

(declare-fun b!1590094 () Bool)

(assert (=> b!1590094 (= e!1021303 (equivClasses!1106 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toValue!4489 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))))))

(assert (= (and d!473356 res!709392) b!1590094))

(declare-fun m!1883277 () Bool)

(assert (=> d!473356 m!1883277))

(declare-fun m!1883279 () Bool)

(assert (=> b!1590094 m!1883279))

(assert (=> b!1588987 d!473356))

(declare-fun d!473358 () Bool)

(declare-fun lt!562336 () BalanceConc!11552)

(assert (=> d!473358 (= (list!6789 lt!562336) (printList!822 thiss!17113 (list!6790 (singletonSeq!1435 (h!22881 tokens!457)))))))

(assert (=> d!473358 (= lt!562336 (printTailRec!760 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457)) 0 (BalanceConc!11553 Empty!5804)))))

(assert (=> d!473358 (= (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457))) lt!562336)))

(declare-fun bs!391712 () Bool)

(assert (= bs!391712 d!473358))

(declare-fun m!1883281 () Bool)

(assert (=> bs!391712 m!1883281))

(assert (=> bs!391712 m!1879827))

(assert (=> bs!391712 m!1880389))

(assert (=> bs!391712 m!1880389))

(declare-fun m!1883283 () Bool)

(assert (=> bs!391712 m!1883283))

(assert (=> bs!391712 m!1879827))

(declare-fun m!1883285 () Bool)

(assert (=> bs!391712 m!1883285))

(assert (=> d!472756 d!473358))

(assert (=> d!472756 d!472670))

(declare-fun d!473360 () Bool)

(assert (=> d!473360 (= (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457)))))) (list!6794 (c!257385 (_1!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457))))))))))

(declare-fun bs!391713 () Bool)

(assert (= bs!391713 d!473360))

(declare-fun m!1883287 () Bool)

(assert (=> bs!391713 m!1883287))

(assert (=> d!472756 d!473360))

(declare-fun d!473362 () Bool)

(assert (=> d!473362 (= (list!6790 (singletonSeq!1435 (h!22881 tokens!457))) (list!6794 (c!257385 (singletonSeq!1435 (h!22881 tokens!457)))))))

(declare-fun bs!391714 () Bool)

(assert (= bs!391714 d!473362))

(declare-fun m!1883289 () Bool)

(assert (=> bs!391714 m!1883289))

(assert (=> d!472756 d!473362))

(assert (=> d!472756 d!472754))

(declare-fun e!1021305 () Bool)

(declare-fun lt!562337 () tuple2!16958)

(declare-fun b!1590095 () Bool)

(assert (=> b!1590095 (= e!1021305 (= (_2!9881 lt!562337) (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457)))))))

(declare-fun b!1590096 () Bool)

(declare-fun e!1021306 () Bool)

(assert (=> b!1590096 (= e!1021306 (= (list!6789 (_2!9881 lt!562337)) (_2!9884 (lexList!794 thiss!17113 rules!1846 (list!6789 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457))))))))))

(declare-fun b!1590097 () Bool)

(declare-fun e!1021304 () Bool)

(assert (=> b!1590097 (= e!1021305 e!1021304)))

(declare-fun res!709395 () Bool)

(assert (=> b!1590097 (= res!709395 (< (size!14058 (_2!9881 lt!562337)) (size!14058 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457))))))))

(assert (=> b!1590097 (=> (not res!709395) (not e!1021304))))

(declare-fun b!1590098 () Bool)

(assert (=> b!1590098 (= e!1021304 (not (isEmpty!10501 (_1!9881 lt!562337))))))

(declare-fun b!1590099 () Bool)

(declare-fun res!709393 () Bool)

(assert (=> b!1590099 (=> (not res!709393) (not e!1021306))))

(assert (=> b!1590099 (= res!709393 (= (list!6790 (_1!9881 lt!562337)) (_1!9884 (lexList!794 thiss!17113 rules!1846 (list!6789 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457))))))))))

(declare-fun d!473364 () Bool)

(assert (=> d!473364 e!1021306))

(declare-fun res!709394 () Bool)

(assert (=> d!473364 (=> (not res!709394) (not e!1021306))))

(assert (=> d!473364 (= res!709394 e!1021305)))

(declare-fun c!257751 () Bool)

(assert (=> d!473364 (= c!257751 (> (size!14059 (_1!9881 lt!562337)) 0))))

(assert (=> d!473364 (= lt!562337 (lexTailRecV2!517 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457))) (BalanceConc!11553 Empty!5804) (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457))) (BalanceConc!11555 Empty!5805)))))

(assert (=> d!473364 (= (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457)))) lt!562337)))

(assert (= (and d!473364 c!257751) b!1590097))

(assert (= (and d!473364 (not c!257751)) b!1590095))

(assert (= (and b!1590097 res!709395) b!1590098))

(assert (= (and d!473364 res!709394) b!1590099))

(assert (= (and b!1590099 res!709393) b!1590096))

(declare-fun m!1883291 () Bool)

(assert (=> d!473364 m!1883291))

(assert (=> d!473364 m!1880385))

(assert (=> d!473364 m!1880385))

(declare-fun m!1883293 () Bool)

(assert (=> d!473364 m!1883293))

(declare-fun m!1883295 () Bool)

(assert (=> b!1590098 m!1883295))

(declare-fun m!1883297 () Bool)

(assert (=> b!1590096 m!1883297))

(assert (=> b!1590096 m!1880385))

(declare-fun m!1883299 () Bool)

(assert (=> b!1590096 m!1883299))

(assert (=> b!1590096 m!1883299))

(declare-fun m!1883301 () Bool)

(assert (=> b!1590096 m!1883301))

(declare-fun m!1883303 () Bool)

(assert (=> b!1590099 m!1883303))

(assert (=> b!1590099 m!1880385))

(assert (=> b!1590099 m!1883299))

(assert (=> b!1590099 m!1883299))

(assert (=> b!1590099 m!1883301))

(declare-fun m!1883305 () Bool)

(assert (=> b!1590097 m!1883305))

(assert (=> b!1590097 m!1880385))

(declare-fun m!1883307 () Bool)

(assert (=> b!1590097 m!1883307))

(assert (=> d!472756 d!473364))

(declare-fun d!473366 () Bool)

(declare-fun lt!562338 () Int)

(assert (=> d!473366 (= lt!562338 (size!14063 (list!6790 (_1!9881 lt!561157))))))

(assert (=> d!473366 (= lt!562338 (size!14064 (c!257385 (_1!9881 lt!561157))))))

(assert (=> d!473366 (= (size!14059 (_1!9881 lt!561157)) lt!562338)))

(declare-fun bs!391715 () Bool)

(assert (= bs!391715 d!473366))

(assert (=> bs!391715 m!1883131))

(assert (=> bs!391715 m!1883131))

(declare-fun m!1883309 () Bool)

(assert (=> bs!391715 m!1883309))

(declare-fun m!1883311 () Bool)

(assert (=> bs!391715 m!1883311))

(assert (=> d!472756 d!473366))

(declare-fun d!473368 () Bool)

(assert (=> d!473368 (= (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995)))) (v!24051 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995)))))))

(assert (=> b!1588648 d!473368))

(declare-fun bm!103077 () Bool)

(declare-fun call!103082 () Bool)

(assert (=> bm!103077 (= call!103082 (isEmpty!10507 (list!6789 (charsOf!1727 lt!560995))))))

(declare-fun b!1590100 () Bool)

(declare-fun e!1021309 () Bool)

(declare-fun lt!562339 () Bool)

(assert (=> b!1590100 (= e!1021309 (= lt!562339 call!103082))))

(declare-fun b!1590102 () Bool)

(declare-fun res!709402 () Bool)

(declare-fun e!1021313 () Bool)

(assert (=> b!1590102 (=> res!709402 e!1021313)))

(declare-fun e!1021312 () Bool)

(assert (=> b!1590102 (= res!709402 e!1021312)))

(declare-fun res!709396 () Bool)

(assert (=> b!1590102 (=> (not res!709396) (not e!1021312))))

(assert (=> b!1590102 (= res!709396 lt!562339)))

(declare-fun e!1021310 () Bool)

(declare-fun b!1590103 () Bool)

(assert (=> b!1590103 (= e!1021310 (matchR!1925 (derivativeStep!1047 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995))))) (head!3239 (list!6789 (charsOf!1727 lt!560995)))) (tail!2285 (list!6789 (charsOf!1727 lt!560995)))))))

(declare-fun b!1590104 () Bool)

(declare-fun res!709403 () Bool)

(assert (=> b!1590104 (=> res!709403 e!1021313)))

(assert (=> b!1590104 (= res!709403 (not (is-ElementMatch!4406 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995))))))))))

(declare-fun e!1021311 () Bool)

(assert (=> b!1590104 (= e!1021311 e!1021313)))

(declare-fun b!1590105 () Bool)

(declare-fun res!709399 () Bool)

(assert (=> b!1590105 (=> (not res!709399) (not e!1021312))))

(assert (=> b!1590105 (= res!709399 (isEmpty!10507 (tail!2285 (list!6789 (charsOf!1727 lt!560995)))))))

(declare-fun b!1590106 () Bool)

(assert (=> b!1590106 (= e!1021311 (not lt!562339))))

(declare-fun b!1590107 () Bool)

(assert (=> b!1590107 (= e!1021309 e!1021311)))

(declare-fun c!257752 () Bool)

(assert (=> b!1590107 (= c!257752 (is-EmptyLang!4406 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995)))))))))

(declare-fun b!1590108 () Bool)

(declare-fun e!1021307 () Bool)

(assert (=> b!1590108 (= e!1021313 e!1021307)))

(declare-fun res!709400 () Bool)

(assert (=> b!1590108 (=> (not res!709400) (not e!1021307))))

(assert (=> b!1590108 (= res!709400 (not lt!562339))))

(declare-fun b!1590109 () Bool)

(assert (=> b!1590109 (= e!1021310 (nullable!1296 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995)))))))))

(declare-fun e!1021308 () Bool)

(declare-fun b!1590110 () Bool)

(assert (=> b!1590110 (= e!1021308 (not (= (head!3239 (list!6789 (charsOf!1727 lt!560995))) (c!257384 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995)))))))))))

(declare-fun b!1590111 () Bool)

(declare-fun res!709398 () Bool)

(assert (=> b!1590111 (=> res!709398 e!1021308)))

(assert (=> b!1590111 (= res!709398 (not (isEmpty!10507 (tail!2285 (list!6789 (charsOf!1727 lt!560995))))))))

(declare-fun b!1590112 () Bool)

(assert (=> b!1590112 (= e!1021307 e!1021308)))

(declare-fun res!709397 () Bool)

(assert (=> b!1590112 (=> res!709397 e!1021308)))

(assert (=> b!1590112 (= res!709397 call!103082)))

(declare-fun b!1590113 () Bool)

(declare-fun res!709401 () Bool)

(assert (=> b!1590113 (=> (not res!709401) (not e!1021312))))

(assert (=> b!1590113 (= res!709401 (not call!103082))))

(declare-fun b!1590101 () Bool)

(assert (=> b!1590101 (= e!1021312 (= (head!3239 (list!6789 (charsOf!1727 lt!560995))) (c!257384 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995))))))))))

(declare-fun d!473370 () Bool)

(assert (=> d!473370 e!1021309))

(declare-fun c!257753 () Bool)

(assert (=> d!473370 (= c!257753 (is-EmptyExpr!4406 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995)))))))))

(assert (=> d!473370 (= lt!562339 e!1021310)))

(declare-fun c!257754 () Bool)

(assert (=> d!473370 (= c!257754 (isEmpty!10507 (list!6789 (charsOf!1727 lt!560995))))))

(assert (=> d!473370 (validRegex!1743 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995))))))))

(assert (=> d!473370 (= (matchR!1925 (regex!3078 (get!5003 (getRuleFromTag!249 thiss!17113 rules!1846 (tag!3348 (rule!4882 lt!560995))))) (list!6789 (charsOf!1727 lt!560995))) lt!562339)))

(assert (= (and d!473370 c!257754) b!1590109))

(assert (= (and d!473370 (not c!257754)) b!1590103))

(assert (= (and d!473370 c!257753) b!1590100))

(assert (= (and d!473370 (not c!257753)) b!1590107))

(assert (= (and b!1590107 c!257752) b!1590106))

(assert (= (and b!1590107 (not c!257752)) b!1590104))

(assert (= (and b!1590104 (not res!709403)) b!1590102))

(assert (= (and b!1590102 res!709396) b!1590113))

(assert (= (and b!1590113 res!709401) b!1590105))

(assert (= (and b!1590105 res!709399) b!1590101))

(assert (= (and b!1590102 (not res!709402)) b!1590108))

(assert (= (and b!1590108 res!709400) b!1590112))

(assert (= (and b!1590112 (not res!709397)) b!1590111))

(assert (= (and b!1590111 (not res!709398)) b!1590110))

(assert (= (or b!1590100 b!1590112 b!1590113) bm!103077))

(assert (=> b!1590101 m!1880079))

(declare-fun m!1883313 () Bool)

(assert (=> b!1590101 m!1883313))

(assert (=> b!1590110 m!1880079))

(assert (=> b!1590110 m!1883313))

(assert (=> d!473370 m!1880079))

(declare-fun m!1883315 () Bool)

(assert (=> d!473370 m!1883315))

(declare-fun m!1883317 () Bool)

(assert (=> d!473370 m!1883317))

(assert (=> b!1590111 m!1880079))

(declare-fun m!1883319 () Bool)

(assert (=> b!1590111 m!1883319))

(assert (=> b!1590111 m!1883319))

(declare-fun m!1883321 () Bool)

(assert (=> b!1590111 m!1883321))

(assert (=> b!1590103 m!1880079))

(assert (=> b!1590103 m!1883313))

(assert (=> b!1590103 m!1883313))

(declare-fun m!1883323 () Bool)

(assert (=> b!1590103 m!1883323))

(assert (=> b!1590103 m!1880079))

(assert (=> b!1590103 m!1883319))

(assert (=> b!1590103 m!1883323))

(assert (=> b!1590103 m!1883319))

(declare-fun m!1883325 () Bool)

(assert (=> b!1590103 m!1883325))

(assert (=> bm!103077 m!1880079))

(assert (=> bm!103077 m!1883315))

(assert (=> b!1590105 m!1880079))

(assert (=> b!1590105 m!1883319))

(assert (=> b!1590105 m!1883319))

(assert (=> b!1590105 m!1883321))

(declare-fun m!1883327 () Bool)

(assert (=> b!1590109 m!1883327))

(assert (=> b!1588648 d!473370))

(assert (=> b!1588648 d!472926))

(assert (=> b!1588648 d!472930))

(assert (=> b!1588648 d!472948))

(declare-fun d!473372 () Bool)

(declare-fun lt!562340 () Int)

(assert (=> d!473372 (>= lt!562340 0)))

(declare-fun e!1021314 () Int)

(assert (=> d!473372 (= lt!562340 e!1021314)))

(declare-fun c!257755 () Bool)

(assert (=> d!473372 (= c!257755 (is-Nil!17478 (_2!9880 (get!5002 lt!561060))))))

(assert (=> d!473372 (= (size!14057 (_2!9880 (get!5002 lt!561060))) lt!562340)))

(declare-fun b!1590114 () Bool)

(assert (=> b!1590114 (= e!1021314 0)))

(declare-fun b!1590115 () Bool)

(assert (=> b!1590115 (= e!1021314 (+ 1 (size!14057 (t!144427 (_2!9880 (get!5002 lt!561060))))))))

(assert (= (and d!473372 c!257755) b!1590114))

(assert (= (and d!473372 (not c!257755)) b!1590115))

(declare-fun m!1883329 () Bool)

(assert (=> b!1590115 m!1883329))

(assert (=> b!1588760 d!473372))

(assert (=> b!1588760 d!472984))

(declare-fun d!473374 () Bool)

(declare-fun lt!562341 () Int)

(assert (=> d!473374 (>= lt!562341 0)))

(declare-fun e!1021315 () Int)

(assert (=> d!473374 (= lt!562341 e!1021315)))

(declare-fun c!257756 () Bool)

(assert (=> d!473374 (= c!257756 (is-Nil!17478 lt!560816))))

(assert (=> d!473374 (= (size!14057 lt!560816) lt!562341)))

(declare-fun b!1590116 () Bool)

(assert (=> b!1590116 (= e!1021315 0)))

(declare-fun b!1590117 () Bool)

(assert (=> b!1590117 (= e!1021315 (+ 1 (size!14057 (t!144427 lt!560816))))))

(assert (= (and d!473374 c!257756) b!1590116))

(assert (= (and d!473374 (not c!257756)) b!1590117))

(declare-fun m!1883331 () Bool)

(assert (=> b!1590117 m!1883331))

(assert (=> b!1588760 d!473374))

(declare-fun b!1590130 () Bool)

(declare-fun e!1021321 () Bool)

(declare-fun e!1021320 () Bool)

(assert (=> b!1590130 (= e!1021321 e!1021320)))

(declare-fun res!709417 () Bool)

(assert (=> b!1590130 (=> (not res!709417) (not e!1021320))))

(assert (=> b!1590130 (= res!709417 (<= (- 1) (- (height!862 (left!14109 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818)))) (height!862 (right!14439 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818)))))))))

(declare-fun b!1590131 () Bool)

(declare-fun res!709420 () Bool)

(assert (=> b!1590131 (=> (not res!709420) (not e!1021320))))

(declare-fun isEmpty!10518 (Conc!5804) Bool)

(assert (=> b!1590131 (= res!709420 (not (isEmpty!10518 (left!14109 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))))))))

(declare-fun b!1590132 () Bool)

(declare-fun res!709419 () Bool)

(assert (=> b!1590132 (=> (not res!709419) (not e!1021320))))

(assert (=> b!1590132 (= res!709419 (<= (- (height!862 (left!14109 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818)))) (height!862 (right!14439 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))))) 1))))

(declare-fun b!1590133 () Bool)

(declare-fun res!709421 () Bool)

(assert (=> b!1590133 (=> (not res!709421) (not e!1021320))))

(assert (=> b!1590133 (= res!709421 (isBalanced!1721 (left!14109 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818)))))))

(declare-fun b!1590134 () Bool)

(declare-fun res!709418 () Bool)

(assert (=> b!1590134 (=> (not res!709418) (not e!1021320))))

(assert (=> b!1590134 (= res!709418 (isBalanced!1721 (right!14439 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818)))))))

(declare-fun b!1590135 () Bool)

(assert (=> b!1590135 (= e!1021320 (not (isEmpty!10518 (right!14439 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))))))))

(declare-fun d!473376 () Bool)

(declare-fun res!709416 () Bool)

(assert (=> d!473376 (=> res!709416 e!1021321)))

(assert (=> d!473376 (= res!709416 (not (is-Node!5804 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818)))))))

(assert (=> d!473376 (= (isBalanced!1721 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))) e!1021321)))

(assert (= (and d!473376 (not res!709416)) b!1590130))

(assert (= (and b!1590130 res!709417) b!1590132))

(assert (= (and b!1590132 res!709419) b!1590133))

(assert (= (and b!1590133 res!709421) b!1590134))

(assert (= (and b!1590134 res!709418) b!1590131))

(assert (= (and b!1590131 res!709420) b!1590135))

(declare-fun m!1883333 () Bool)

(assert (=> b!1590134 m!1883333))

(declare-fun m!1883335 () Bool)

(assert (=> b!1590133 m!1883335))

(declare-fun m!1883337 () Bool)

(assert (=> b!1590132 m!1883337))

(declare-fun m!1883339 () Bool)

(assert (=> b!1590132 m!1883339))

(assert (=> b!1590130 m!1883337))

(assert (=> b!1590130 m!1883339))

(declare-fun m!1883341 () Bool)

(assert (=> b!1590135 m!1883341))

(declare-fun m!1883343 () Bool)

(assert (=> b!1590131 m!1883343))

(assert (=> b!1588922 d!473376))

(assert (=> b!1588922 d!473332))

(declare-fun d!473378 () Bool)

(assert (=> d!473378 (= (list!6789 (_2!9881 lt!561001)) (list!6793 (c!257383 (_2!9881 lt!561001))))))

(declare-fun bs!391716 () Bool)

(assert (= bs!391716 d!473378))

(declare-fun m!1883345 () Bool)

(assert (=> bs!391716 m!1883345))

(assert (=> b!1588653 d!473378))

(assert (=> b!1588653 d!473316))

(assert (=> b!1588653 d!473318))

(declare-fun d!473380 () Bool)

(declare-fun lt!562344 () Bool)

(assert (=> d!473380 (= lt!562344 (isEmpty!10507 (list!6789 (_2!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457))))))))))

(assert (=> d!473380 (= lt!562344 (isEmpty!10518 (c!257383 (_2!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457))))))))))

(assert (=> d!473380 (= (isEmpty!10510 (_2!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457)))))) lt!562344)))

(declare-fun bs!391717 () Bool)

(assert (= bs!391717 d!473380))

(declare-fun m!1883347 () Bool)

(assert (=> bs!391717 m!1883347))

(assert (=> bs!391717 m!1883347))

(declare-fun m!1883349 () Bool)

(assert (=> bs!391717 m!1883349))

(declare-fun m!1883351 () Bool)

(assert (=> bs!391717 m!1883351))

(assert (=> b!1588897 d!473380))

(declare-fun b!1590136 () Bool)

(declare-fun lt!562345 () tuple2!16958)

(declare-fun e!1021323 () Bool)

(assert (=> b!1590136 (= e!1021323 (= (_2!9881 lt!562345) (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457)))))))

(declare-fun e!1021324 () Bool)

(declare-fun b!1590137 () Bool)

(assert (=> b!1590137 (= e!1021324 (= (list!6789 (_2!9881 lt!562345)) (_2!9884 (lexList!794 thiss!17113 rules!1846 (list!6789 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457))))))))))

(declare-fun b!1590138 () Bool)

(declare-fun e!1021322 () Bool)

(assert (=> b!1590138 (= e!1021323 e!1021322)))

(declare-fun res!709424 () Bool)

(assert (=> b!1590138 (= res!709424 (< (size!14058 (_2!9881 lt!562345)) (size!14058 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457))))))))

(assert (=> b!1590138 (=> (not res!709424) (not e!1021322))))

(declare-fun b!1590139 () Bool)

(assert (=> b!1590139 (= e!1021322 (not (isEmpty!10501 (_1!9881 lt!562345))))))

(declare-fun b!1590140 () Bool)

(declare-fun res!709422 () Bool)

(assert (=> b!1590140 (=> (not res!709422) (not e!1021324))))

(assert (=> b!1590140 (= res!709422 (= (list!6790 (_1!9881 lt!562345)) (_1!9884 (lexList!794 thiss!17113 rules!1846 (list!6789 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457))))))))))

(declare-fun d!473382 () Bool)

(assert (=> d!473382 e!1021324))

(declare-fun res!709423 () Bool)

(assert (=> d!473382 (=> (not res!709423) (not e!1021324))))

(assert (=> d!473382 (= res!709423 e!1021323)))

(declare-fun c!257757 () Bool)

(assert (=> d!473382 (= c!257757 (> (size!14059 (_1!9881 lt!562345)) 0))))

(assert (=> d!473382 (= lt!562345 (lexTailRecV2!517 thiss!17113 rules!1846 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457))) (BalanceConc!11553 Empty!5804) (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457))) (BalanceConc!11555 Empty!5805)))))

(assert (=> d!473382 (= (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457)))) lt!562345)))

(assert (= (and d!473382 c!257757) b!1590138))

(assert (= (and d!473382 (not c!257757)) b!1590136))

(assert (= (and b!1590138 res!709424) b!1590139))

(assert (= (and d!473382 res!709423) b!1590140))

(assert (= (and b!1590140 res!709422) b!1590137))

(declare-fun m!1883353 () Bool)

(assert (=> d!473382 m!1883353))

(assert (=> d!473382 m!1880595))

(assert (=> d!473382 m!1880595))

(declare-fun m!1883355 () Bool)

(assert (=> d!473382 m!1883355))

(declare-fun m!1883357 () Bool)

(assert (=> b!1590139 m!1883357))

(declare-fun m!1883359 () Bool)

(assert (=> b!1590137 m!1883359))

(assert (=> b!1590137 m!1880595))

(declare-fun m!1883361 () Bool)

(assert (=> b!1590137 m!1883361))

(assert (=> b!1590137 m!1883361))

(declare-fun m!1883363 () Bool)

(assert (=> b!1590137 m!1883363))

(declare-fun m!1883365 () Bool)

(assert (=> b!1590140 m!1883365))

(assert (=> b!1590140 m!1880595))

(assert (=> b!1590140 m!1883361))

(assert (=> b!1590140 m!1883361))

(assert (=> b!1590140 m!1883363))

(declare-fun m!1883367 () Bool)

(assert (=> b!1590138 m!1883367))

(assert (=> b!1590138 m!1880595))

(declare-fun m!1883369 () Bool)

(assert (=> b!1590138 m!1883369))

(assert (=> b!1588897 d!473382))

(assert (=> b!1588897 d!473280))

(assert (=> b!1588897 d!472690))

(declare-fun d!473384 () Bool)

(declare-fun lostCauseFct!153 (Regex!4406) Bool)

(assert (=> d!473384 (= (lostCause!403 lt!560821) (lostCauseFct!153 lt!560821))))

(declare-fun bs!391718 () Bool)

(assert (= bs!391718 d!473384))

(declare-fun m!1883371 () Bool)

(assert (=> bs!391718 m!1883371))

(assert (=> b!1588661 d!473384))

(declare-fun d!473386 () Bool)

(assert (=> d!473386 true))

(declare-fun order!10353 () Int)

(declare-fun lambda!66662 () Int)

(declare-fun dynLambda!7780 (Int Int) Int)

(assert (=> d!473386 (< (dynLambda!7769 order!10343 (toValue!4489 (transformation!3078 (h!22880 rules!1846)))) (dynLambda!7780 order!10353 lambda!66662))))

(declare-fun Forall2!507 (Int) Bool)

(assert (=> d!473386 (= (equivClasses!1106 (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toValue!4489 (transformation!3078 (h!22880 rules!1846)))) (Forall2!507 lambda!66662))))

(declare-fun bs!391719 () Bool)

(assert (= bs!391719 d!473386))

(declare-fun m!1883373 () Bool)

(assert (=> bs!391719 m!1883373))

(assert (=> b!1588910 d!473386))

(declare-fun b!1590145 () Bool)

(declare-fun e!1021328 () Bool)

(declare-fun e!1021327 () Bool)

(assert (=> b!1590145 (= e!1021328 e!1021327)))

(declare-fun res!709428 () Bool)

(assert (=> b!1590145 (=> (not res!709428) (not e!1021327))))

(assert (=> b!1590145 (= res!709428 (<= (- 1) (- (height!862 (left!14109 (c!257383 lt!561337))) (height!862 (right!14439 (c!257383 lt!561337))))))))

(declare-fun b!1590146 () Bool)

(declare-fun res!709431 () Bool)

(assert (=> b!1590146 (=> (not res!709431) (not e!1021327))))

(assert (=> b!1590146 (= res!709431 (not (isEmpty!10518 (left!14109 (c!257383 lt!561337)))))))

(declare-fun b!1590147 () Bool)

(declare-fun res!709430 () Bool)

(assert (=> b!1590147 (=> (not res!709430) (not e!1021327))))

(assert (=> b!1590147 (= res!709430 (<= (- (height!862 (left!14109 (c!257383 lt!561337))) (height!862 (right!14439 (c!257383 lt!561337)))) 1))))

(declare-fun b!1590148 () Bool)

(declare-fun res!709432 () Bool)

(assert (=> b!1590148 (=> (not res!709432) (not e!1021327))))

(assert (=> b!1590148 (= res!709432 (isBalanced!1721 (left!14109 (c!257383 lt!561337))))))

(declare-fun b!1590149 () Bool)

(declare-fun res!709429 () Bool)

(assert (=> b!1590149 (=> (not res!709429) (not e!1021327))))

(assert (=> b!1590149 (= res!709429 (isBalanced!1721 (right!14439 (c!257383 lt!561337))))))

(declare-fun b!1590150 () Bool)

(assert (=> b!1590150 (= e!1021327 (not (isEmpty!10518 (right!14439 (c!257383 lt!561337)))))))

(declare-fun d!473388 () Bool)

(declare-fun res!709427 () Bool)

(assert (=> d!473388 (=> res!709427 e!1021328)))

(assert (=> d!473388 (= res!709427 (not (is-Node!5804 (c!257383 lt!561337))))))

(assert (=> d!473388 (= (isBalanced!1721 (c!257383 lt!561337)) e!1021328)))

(assert (= (and d!473388 (not res!709427)) b!1590145))

(assert (= (and b!1590145 res!709428) b!1590147))

(assert (= (and b!1590147 res!709430) b!1590148))

(assert (= (and b!1590148 res!709432) b!1590149))

(assert (= (and b!1590149 res!709429) b!1590146))

(assert (= (and b!1590146 res!709431) b!1590150))

(declare-fun m!1883375 () Bool)

(assert (=> b!1590149 m!1883375))

(declare-fun m!1883377 () Bool)

(assert (=> b!1590148 m!1883377))

(declare-fun m!1883379 () Bool)

(assert (=> b!1590147 m!1883379))

(declare-fun m!1883381 () Bool)

(assert (=> b!1590147 m!1883381))

(assert (=> b!1590145 m!1883379))

(assert (=> b!1590145 m!1883381))

(declare-fun m!1883383 () Bool)

(assert (=> b!1590150 m!1883383))

(declare-fun m!1883385 () Bool)

(assert (=> b!1590146 m!1883385))

(assert (=> b!1588913 d!473388))

(declare-fun d!473390 () Bool)

(declare-fun res!709437 () Bool)

(declare-fun e!1021333 () Bool)

(assert (=> d!473390 (=> res!709437 e!1021333)))

(assert (=> d!473390 (= res!709437 (is-Nil!17480 tokens!457))))

(assert (=> d!473390 (= (forall!4015 tokens!457 lambda!66634) e!1021333)))

(declare-fun b!1590155 () Bool)

(declare-fun e!1021334 () Bool)

(assert (=> b!1590155 (= e!1021333 e!1021334)))

(declare-fun res!709438 () Bool)

(assert (=> b!1590155 (=> (not res!709438) (not e!1021334))))

(declare-fun dynLambda!7781 (Int Token!5722) Bool)

(assert (=> b!1590155 (= res!709438 (dynLambda!7781 lambda!66634 (h!22881 tokens!457)))))

(declare-fun b!1590156 () Bool)

(assert (=> b!1590156 (= e!1021334 (forall!4015 (t!144429 tokens!457) lambda!66634))))

(assert (= (and d!473390 (not res!709437)) b!1590155))

(assert (= (and b!1590155 res!709438) b!1590156))

(declare-fun b_lambda!50039 () Bool)

(assert (=> (not b_lambda!50039) (not b!1590155)))

(declare-fun m!1883387 () Bool)

(assert (=> b!1590155 m!1883387))

(declare-fun m!1883389 () Bool)

(assert (=> b!1590156 m!1883389))

(assert (=> d!472734 d!473390))

(assert (=> d!472734 d!472670))

(declare-fun d!473392 () Bool)

(declare-fun lt!562348 () Bool)

(declare-fun content!2412 (List!17549) (Set Rule!5956))

(assert (=> d!473392 (= lt!562348 (set.member (rule!4882 (_1!9880 (get!5002 lt!561060))) (content!2412 rules!1846)))))

(declare-fun e!1021340 () Bool)

(assert (=> d!473392 (= lt!562348 e!1021340)))

(declare-fun res!709443 () Bool)

(assert (=> d!473392 (=> (not res!709443) (not e!1021340))))

(assert (=> d!473392 (= res!709443 (is-Cons!17479 rules!1846))))

(assert (=> d!473392 (= (contains!3051 rules!1846 (rule!4882 (_1!9880 (get!5002 lt!561060)))) lt!562348)))

(declare-fun b!1590161 () Bool)

(declare-fun e!1021339 () Bool)

(assert (=> b!1590161 (= e!1021340 e!1021339)))

(declare-fun res!709444 () Bool)

(assert (=> b!1590161 (=> res!709444 e!1021339)))

(assert (=> b!1590161 (= res!709444 (= (h!22880 rules!1846) (rule!4882 (_1!9880 (get!5002 lt!561060)))))))

(declare-fun b!1590162 () Bool)

(assert (=> b!1590162 (= e!1021339 (contains!3051 (t!144428 rules!1846) (rule!4882 (_1!9880 (get!5002 lt!561060)))))))

(assert (= (and d!473392 res!709443) b!1590161))

(assert (= (and b!1590161 (not res!709444)) b!1590162))

(declare-fun m!1883391 () Bool)

(assert (=> d!473392 m!1883391))

(declare-fun m!1883393 () Bool)

(assert (=> d!473392 m!1883393))

(declare-fun m!1883395 () Bool)

(assert (=> b!1590162 m!1883395))

(assert (=> b!1588756 d!473392))

(assert (=> b!1588756 d!472984))

(declare-fun d!473394 () Bool)

(declare-fun charsToInt!0 (List!17547) (_ BitVec 32))

(assert (=> d!473394 (= (inv!16 (value!97397 (h!22881 tokens!457))) (= (charsToInt!0 (text!22623 (value!97397 (h!22881 tokens!457)))) (value!97388 (value!97397 (h!22881 tokens!457)))))))

(declare-fun bs!391720 () Bool)

(assert (= bs!391720 d!473394))

(declare-fun m!1883397 () Bool)

(assert (=> bs!391720 m!1883397))

(assert (=> b!1588636 d!473394))

(declare-fun b!1590175 () Bool)

(declare-fun e!1021345 () Bool)

(assert (=> b!1590175 (= e!1021345 (not (isEmpty!10506 (right!14440 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457)))))))))

(declare-fun b!1590176 () Bool)

(declare-fun e!1021346 () Bool)

(assert (=> b!1590176 (= e!1021346 e!1021345)))

(declare-fun res!709462 () Bool)

(assert (=> b!1590176 (=> (not res!709462) (not e!1021345))))

(declare-fun height!864 (Conc!5805) Int)

(assert (=> b!1590176 (= res!709462 (<= (- 1) (- (height!864 (left!14110 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457))))) (height!864 (right!14440 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457))))))))))

(declare-fun b!1590177 () Bool)

(declare-fun res!709460 () Bool)

(assert (=> b!1590177 (=> (not res!709460) (not e!1021345))))

(assert (=> b!1590177 (= res!709460 (<= (- (height!864 (left!14110 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457))))) (height!864 (right!14440 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457)))))) 1))))

(declare-fun b!1590178 () Bool)

(declare-fun res!709459 () Bool)

(assert (=> b!1590178 (=> (not res!709459) (not e!1021345))))

(assert (=> b!1590178 (= res!709459 (not (isEmpty!10506 (left!14110 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457)))))))))

(declare-fun b!1590179 () Bool)

(declare-fun res!709457 () Bool)

(assert (=> b!1590179 (=> (not res!709457) (not e!1021345))))

(assert (=> b!1590179 (= res!709457 (isBalanced!1719 (left!14110 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457))))))))

(declare-fun b!1590180 () Bool)

(declare-fun res!709458 () Bool)

(assert (=> b!1590180 (=> (not res!709458) (not e!1021345))))

(assert (=> b!1590180 (= res!709458 (isBalanced!1719 (right!14440 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457))))))))

(declare-fun d!473396 () Bool)

(declare-fun res!709461 () Bool)

(assert (=> d!473396 (=> res!709461 e!1021346)))

(assert (=> d!473396 (= res!709461 (not (is-Node!5805 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457))))))))

(assert (=> d!473396 (= (isBalanced!1719 (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457)))) e!1021346)))

(assert (= (and d!473396 (not res!709461)) b!1590176))

(assert (= (and b!1590176 res!709462) b!1590177))

(assert (= (and b!1590177 res!709460) b!1590179))

(assert (= (and b!1590179 res!709457) b!1590180))

(assert (= (and b!1590180 res!709458) b!1590178))

(assert (= (and b!1590178 res!709459) b!1590175))

(declare-fun m!1883399 () Bool)

(assert (=> b!1590179 m!1883399))

(declare-fun m!1883401 () Bool)

(assert (=> b!1590176 m!1883401))

(declare-fun m!1883403 () Bool)

(assert (=> b!1590176 m!1883403))

(declare-fun m!1883405 () Bool)

(assert (=> b!1590178 m!1883405))

(declare-fun m!1883407 () Bool)

(assert (=> b!1590175 m!1883407))

(assert (=> b!1590177 m!1883401))

(assert (=> b!1590177 m!1883403))

(declare-fun m!1883409 () Bool)

(assert (=> b!1590180 m!1883409))

(assert (=> d!472698 d!473396))

(declare-fun d!473398 () Bool)

(declare-fun e!1021349 () Bool)

(assert (=> d!473398 e!1021349))

(declare-fun res!709465 () Bool)

(assert (=> d!473398 (=> (not res!709465) (not e!1021349))))

(declare-fun lt!562351 () Conc!5805)

(assert (=> d!473398 (= res!709465 (isBalanced!1719 lt!562351))))

(declare-fun ++!4573 (Conc!5805 Conc!5805) Conc!5805)

(declare-fun fill!85 (Int Token!5722) IArray!11615)

(assert (=> d!473398 (= lt!562351 (++!4573 (Leaf!8565 (fill!85 1 (h!22881 (t!144429 tokens!457))) 1) (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457))))))))

(assert (=> d!473398 (isBalanced!1719 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))))))

(assert (=> d!473398 (= (prepend!572 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 tokens!457))) lt!562351)))

(declare-fun b!1590183 () Bool)

(assert (=> b!1590183 (= e!1021349 (= (list!6794 lt!562351) (Cons!17480 (h!22881 (t!144429 tokens!457)) (list!6794 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457))))))))))

(assert (= (and d!473398 res!709465) b!1590183))

(declare-fun m!1883411 () Bool)

(assert (=> d!473398 m!1883411))

(declare-fun m!1883413 () Bool)

(assert (=> d!473398 m!1883413))

(declare-fun m!1883415 () Bool)

(assert (=> d!473398 m!1883415))

(declare-fun m!1883417 () Bool)

(assert (=> d!473398 m!1883417))

(declare-fun m!1883419 () Bool)

(assert (=> b!1590183 m!1883419))

(declare-fun m!1883421 () Bool)

(assert (=> b!1590183 m!1883421))

(assert (=> d!472698 d!473398))

(declare-fun d!473400 () Bool)

(declare-fun lt!562352 () Bool)

(assert (=> d!473400 (= lt!562352 (isEmpty!10507 (list!6789 (_2!9881 lt!561157))))))

(assert (=> d!473400 (= lt!562352 (isEmpty!10518 (c!257383 (_2!9881 lt!561157))))))

(assert (=> d!473400 (= (isEmpty!10510 (_2!9881 lt!561157)) lt!562352)))

(declare-fun bs!391721 () Bool)

(assert (= bs!391721 d!473400))

(declare-fun m!1883423 () Bool)

(assert (=> bs!391721 m!1883423))

(assert (=> bs!391721 m!1883423))

(declare-fun m!1883425 () Bool)

(assert (=> bs!391721 m!1883425))

(declare-fun m!1883427 () Bool)

(assert (=> bs!391721 m!1883427))

(assert (=> b!1588795 d!473400))

(declare-fun b!1590184 () Bool)

(declare-fun e!1021350 () Bool)

(assert (=> b!1590184 (= e!1021350 (not (isEmpty!10506 (right!14440 (c!257385 lt!561067)))))))

(declare-fun b!1590185 () Bool)

(declare-fun e!1021351 () Bool)

(assert (=> b!1590185 (= e!1021351 e!1021350)))

(declare-fun res!709471 () Bool)

(assert (=> b!1590185 (=> (not res!709471) (not e!1021350))))

(assert (=> b!1590185 (= res!709471 (<= (- 1) (- (height!864 (left!14110 (c!257385 lt!561067))) (height!864 (right!14440 (c!257385 lt!561067))))))))

(declare-fun b!1590186 () Bool)

(declare-fun res!709469 () Bool)

(assert (=> b!1590186 (=> (not res!709469) (not e!1021350))))

(assert (=> b!1590186 (= res!709469 (<= (- (height!864 (left!14110 (c!257385 lt!561067))) (height!864 (right!14440 (c!257385 lt!561067)))) 1))))

(declare-fun b!1590187 () Bool)

(declare-fun res!709468 () Bool)

(assert (=> b!1590187 (=> (not res!709468) (not e!1021350))))

(assert (=> b!1590187 (= res!709468 (not (isEmpty!10506 (left!14110 (c!257385 lt!561067)))))))

(declare-fun b!1590188 () Bool)

(declare-fun res!709466 () Bool)

(assert (=> b!1590188 (=> (not res!709466) (not e!1021350))))

(assert (=> b!1590188 (= res!709466 (isBalanced!1719 (left!14110 (c!257385 lt!561067))))))

(declare-fun b!1590189 () Bool)

(declare-fun res!709467 () Bool)

(assert (=> b!1590189 (=> (not res!709467) (not e!1021350))))

(assert (=> b!1590189 (= res!709467 (isBalanced!1719 (right!14440 (c!257385 lt!561067))))))

(declare-fun d!473402 () Bool)

(declare-fun res!709470 () Bool)

(assert (=> d!473402 (=> res!709470 e!1021351)))

(assert (=> d!473402 (= res!709470 (not (is-Node!5805 (c!257385 lt!561067))))))

(assert (=> d!473402 (= (isBalanced!1719 (c!257385 lt!561067)) e!1021351)))

(assert (= (and d!473402 (not res!709470)) b!1590185))

(assert (= (and b!1590185 res!709471) b!1590186))

(assert (= (and b!1590186 res!709469) b!1590188))

(assert (= (and b!1590188 res!709466) b!1590189))

(assert (= (and b!1590189 res!709467) b!1590187))

(assert (= (and b!1590187 res!709468) b!1590184))

(declare-fun m!1883429 () Bool)

(assert (=> b!1590188 m!1883429))

(declare-fun m!1883431 () Bool)

(assert (=> b!1590185 m!1883431))

(declare-fun m!1883433 () Bool)

(assert (=> b!1590185 m!1883433))

(declare-fun m!1883435 () Bool)

(assert (=> b!1590187 m!1883435))

(declare-fun m!1883437 () Bool)

(assert (=> b!1590184 m!1883437))

(assert (=> b!1590186 m!1883431))

(assert (=> b!1590186 m!1883433))

(declare-fun m!1883439 () Bool)

(assert (=> b!1590189 m!1883439))

(assert (=> b!1588766 d!473402))

(declare-fun d!473404 () Bool)

(declare-fun e!1021354 () Bool)

(assert (=> d!473404 e!1021354))

(declare-fun res!709474 () Bool)

(assert (=> d!473404 (=> (not res!709474) (not e!1021354))))

(declare-fun lt!562355 () BalanceConc!11554)

(assert (=> d!473404 (= res!709474 (= (list!6790 lt!562355) tokens!457))))

(declare-fun fromList!369 (List!17550) Conc!5805)

(assert (=> d!473404 (= lt!562355 (BalanceConc!11555 (fromList!369 tokens!457)))))

(assert (=> d!473404 (= (fromListB!824 tokens!457) lt!562355)))

(declare-fun b!1590192 () Bool)

(assert (=> b!1590192 (= e!1021354 (isBalanced!1719 (fromList!369 tokens!457)))))

(assert (= (and d!473404 res!709474) b!1590192))

(declare-fun m!1883441 () Bool)

(assert (=> d!473404 m!1883441))

(declare-fun m!1883443 () Bool)

(assert (=> d!473404 m!1883443))

(assert (=> b!1590192 m!1883443))

(assert (=> b!1590192 m!1883443))

(declare-fun m!1883445 () Bool)

(assert (=> b!1590192 m!1883445))

(assert (=> d!472692 d!473404))

(declare-fun b!1590195 () Bool)

(declare-fun e!1021356 () List!17548)

(assert (=> b!1590195 (= e!1021356 (list!6799 (xs!8612 (c!257383 lt!560834))))))

(declare-fun b!1590196 () Bool)

(assert (=> b!1590196 (= e!1021356 (++!4565 (list!6793 (left!14109 (c!257383 lt!560834))) (list!6793 (right!14439 (c!257383 lt!560834)))))))

(declare-fun b!1590193 () Bool)

(declare-fun e!1021355 () List!17548)

(assert (=> b!1590193 (= e!1021355 Nil!17478)))

(declare-fun b!1590194 () Bool)

(assert (=> b!1590194 (= e!1021355 e!1021356)))

(declare-fun c!257760 () Bool)

(assert (=> b!1590194 (= c!257760 (is-Leaf!8564 (c!257383 lt!560834)))))

(declare-fun d!473406 () Bool)

(declare-fun c!257759 () Bool)

(assert (=> d!473406 (= c!257759 (is-Empty!5804 (c!257383 lt!560834)))))

(assert (=> d!473406 (= (list!6793 (c!257383 lt!560834)) e!1021355)))

(assert (= (and d!473406 c!257759) b!1590193))

(assert (= (and d!473406 (not c!257759)) b!1590194))

(assert (= (and b!1590194 c!257760) b!1590195))

(assert (= (and b!1590194 (not c!257760)) b!1590196))

(declare-fun m!1883447 () Bool)

(assert (=> b!1590195 m!1883447))

(declare-fun m!1883449 () Bool)

(assert (=> b!1590196 m!1883449))

(declare-fun m!1883451 () Bool)

(assert (=> b!1590196 m!1883451))

(assert (=> b!1590196 m!1883449))

(assert (=> b!1590196 m!1883451))

(declare-fun m!1883453 () Bool)

(assert (=> b!1590196 m!1883453))

(assert (=> d!472744 d!473406))

(declare-fun d!473408 () Bool)

(assert (=> d!473408 (= (list!6789 lt!560907) (list!6793 (c!257383 lt!560907)))))

(declare-fun bs!391722 () Bool)

(assert (= bs!391722 d!473408))

(declare-fun m!1883455 () Bool)

(assert (=> bs!391722 m!1883455))

(assert (=> d!472672 d!473408))

(declare-fun d!473410 () Bool)

(declare-fun c!257761 () Bool)

(assert (=> d!473410 (= c!257761 (is-Cons!17480 (list!6790 (seqFromList!1906 tokens!457))))))

(declare-fun e!1021357 () List!17548)

(assert (=> d!473410 (= (printList!822 thiss!17113 (list!6790 (seqFromList!1906 tokens!457))) e!1021357)))

(declare-fun b!1590197 () Bool)

(assert (=> b!1590197 (= e!1021357 (++!4565 (list!6789 (charsOf!1727 (h!22881 (list!6790 (seqFromList!1906 tokens!457))))) (printList!822 thiss!17113 (t!144429 (list!6790 (seqFromList!1906 tokens!457))))))))

(declare-fun b!1590198 () Bool)

(assert (=> b!1590198 (= e!1021357 Nil!17478)))

(assert (= (and d!473410 c!257761) b!1590197))

(assert (= (and d!473410 (not c!257761)) b!1590198))

(declare-fun m!1883457 () Bool)

(assert (=> b!1590197 m!1883457))

(assert (=> b!1590197 m!1883457))

(declare-fun m!1883459 () Bool)

(assert (=> b!1590197 m!1883459))

(declare-fun m!1883461 () Bool)

(assert (=> b!1590197 m!1883461))

(assert (=> b!1590197 m!1883459))

(assert (=> b!1590197 m!1883461))

(declare-fun m!1883463 () Bool)

(assert (=> b!1590197 m!1883463))

(assert (=> d!472672 d!473410))

(declare-fun d!473412 () Bool)

(assert (=> d!473412 (= (list!6790 (seqFromList!1906 tokens!457)) (list!6794 (c!257385 (seqFromList!1906 tokens!457))))))

(declare-fun bs!391723 () Bool)

(assert (= bs!391723 d!473412))

(declare-fun m!1883465 () Bool)

(assert (=> bs!391723 m!1883465))

(assert (=> d!472672 d!473412))

(declare-fun d!473414 () Bool)

(declare-fun lt!562356 () BalanceConc!11552)

(assert (=> d!473414 (= (list!6789 lt!562356) (printListTailRec!320 thiss!17113 (dropList!537 (seqFromList!1906 tokens!457) 0) (list!6789 (BalanceConc!11553 Empty!5804))))))

(declare-fun e!1021358 () BalanceConc!11552)

(assert (=> d!473414 (= lt!562356 e!1021358)))

(declare-fun c!257762 () Bool)

(assert (=> d!473414 (= c!257762 (>= 0 (size!14059 (seqFromList!1906 tokens!457))))))

(declare-fun e!1021359 () Bool)

(assert (=> d!473414 e!1021359))

(declare-fun res!709475 () Bool)

(assert (=> d!473414 (=> (not res!709475) (not e!1021359))))

(assert (=> d!473414 (= res!709475 (>= 0 0))))

(assert (=> d!473414 (= (printTailRec!760 thiss!17113 (seqFromList!1906 tokens!457) 0 (BalanceConc!11553 Empty!5804)) lt!562356)))

(declare-fun b!1590199 () Bool)

(assert (=> b!1590199 (= e!1021359 (<= 0 (size!14059 (seqFromList!1906 tokens!457))))))

(declare-fun b!1590200 () Bool)

(assert (=> b!1590200 (= e!1021358 (BalanceConc!11553 Empty!5804))))

(declare-fun b!1590201 () Bool)

(assert (=> b!1590201 (= e!1021358 (printTailRec!760 thiss!17113 (seqFromList!1906 tokens!457) (+ 0 1) (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (apply!4303 (seqFromList!1906 tokens!457) 0)))))))

(declare-fun lt!562362 () List!17550)

(assert (=> b!1590201 (= lt!562362 (list!6790 (seqFromList!1906 tokens!457)))))

(declare-fun lt!562360 () Unit!27502)

(assert (=> b!1590201 (= lt!562360 (lemmaDropApply!527 lt!562362 0))))

(assert (=> b!1590201 (= (head!3238 (drop!829 lt!562362 0)) (apply!4304 lt!562362 0))))

(declare-fun lt!562361 () Unit!27502)

(assert (=> b!1590201 (= lt!562361 lt!562360)))

(declare-fun lt!562357 () List!17550)

(assert (=> b!1590201 (= lt!562357 (list!6790 (seqFromList!1906 tokens!457)))))

(declare-fun lt!562358 () Unit!27502)

(assert (=> b!1590201 (= lt!562358 (lemmaDropTail!507 lt!562357 0))))

(assert (=> b!1590201 (= (tail!2286 (drop!829 lt!562357 0)) (drop!829 lt!562357 (+ 0 1)))))

(declare-fun lt!562359 () Unit!27502)

(assert (=> b!1590201 (= lt!562359 lt!562358)))

(assert (= (and d!473414 res!709475) b!1590199))

(assert (= (and d!473414 c!257762) b!1590200))

(assert (= (and d!473414 (not c!257762)) b!1590201))

(assert (=> d!473414 m!1879781))

(declare-fun m!1883467 () Bool)

(assert (=> d!473414 m!1883467))

(assert (=> d!473414 m!1879781))

(declare-fun m!1883469 () Bool)

(assert (=> d!473414 m!1883469))

(assert (=> d!473414 m!1883469))

(assert (=> d!473414 m!1880205))

(declare-fun m!1883471 () Bool)

(assert (=> d!473414 m!1883471))

(assert (=> d!473414 m!1880205))

(declare-fun m!1883473 () Bool)

(assert (=> d!473414 m!1883473))

(assert (=> b!1590199 m!1879781))

(assert (=> b!1590199 m!1883467))

(assert (=> b!1590201 m!1879781))

(declare-fun m!1883475 () Bool)

(assert (=> b!1590201 m!1883475))

(declare-fun m!1883477 () Bool)

(assert (=> b!1590201 m!1883477))

(assert (=> b!1590201 m!1879781))

(assert (=> b!1590201 m!1879955))

(declare-fun m!1883479 () Bool)

(assert (=> b!1590201 m!1883479))

(declare-fun m!1883481 () Bool)

(assert (=> b!1590201 m!1883481))

(declare-fun m!1883483 () Bool)

(assert (=> b!1590201 m!1883483))

(declare-fun m!1883485 () Bool)

(assert (=> b!1590201 m!1883485))

(declare-fun m!1883487 () Bool)

(assert (=> b!1590201 m!1883487))

(assert (=> b!1590201 m!1883483))

(declare-fun m!1883489 () Bool)

(assert (=> b!1590201 m!1883489))

(declare-fun m!1883491 () Bool)

(assert (=> b!1590201 m!1883491))

(assert (=> b!1590201 m!1883487))

(declare-fun m!1883493 () Bool)

(assert (=> b!1590201 m!1883493))

(assert (=> b!1590201 m!1883481))

(assert (=> b!1590201 m!1883475))

(declare-fun m!1883495 () Bool)

(assert (=> b!1590201 m!1883495))

(assert (=> b!1590201 m!1879781))

(assert (=> b!1590201 m!1883479))

(declare-fun m!1883497 () Bool)

(assert (=> b!1590201 m!1883497))

(assert (=> d!472672 d!473414))

(assert (=> b!1588649 d!473368))

(assert (=> b!1588649 d!472926))

(declare-fun d!473416 () Bool)

(declare-fun lt!562363 () Int)

(assert (=> d!473416 (>= lt!562363 0)))

(declare-fun e!1021360 () Int)

(assert (=> d!473416 (= lt!562363 e!1021360)))

(declare-fun c!257763 () Bool)

(assert (=> d!473416 (= c!257763 (is-Nil!17478 lt!560832))))

(assert (=> d!473416 (= (size!14057 lt!560832) lt!562363)))

(declare-fun b!1590202 () Bool)

(assert (=> b!1590202 (= e!1021360 0)))

(declare-fun b!1590203 () Bool)

(assert (=> b!1590203 (= e!1021360 (+ 1 (size!14057 (t!144427 lt!560832))))))

(assert (= (and d!473416 c!257763) b!1590202))

(assert (= (and d!473416 (not c!257763)) b!1590203))

(declare-fun m!1883499 () Bool)

(assert (=> b!1590203 m!1883499))

(assert (=> b!1588909 d!473416))

(assert (=> b!1588909 d!472956))

(assert (=> b!1588728 d!472976))

(declare-fun d!473418 () Bool)

(assert (=> d!473418 (= (list!6790 lt!560920) (list!6794 (c!257385 lt!560920)))))

(declare-fun bs!391724 () Bool)

(assert (= bs!391724 d!473418))

(declare-fun m!1883501 () Bool)

(assert (=> bs!391724 m!1883501))

(assert (=> b!1588611 d!473418))

(declare-fun d!473420 () Bool)

(assert (=> d!473420 (= (list!6790 (seqFromList!1906 (t!144429 (t!144429 tokens!457)))) (list!6794 (c!257385 (seqFromList!1906 (t!144429 (t!144429 tokens!457))))))))

(declare-fun bs!391725 () Bool)

(assert (= bs!391725 d!473420))

(assert (=> bs!391725 m!1883421))

(assert (=> b!1588611 d!473420))

(assert (=> b!1588623 d!472756))

(assert (=> b!1588623 d!472708))

(declare-fun d!473422 () Bool)

(declare-fun lt!562366 () Int)

(assert (=> d!473422 (= lt!562366 (size!14057 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(declare-fun size!14070 (Conc!5804) Int)

(assert (=> d!473422 (= lt!562366 (size!14070 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(assert (=> d!473422 (= (size!14058 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) lt!562366)))

(declare-fun bs!391726 () Bool)

(assert (= bs!391726 d!473422))

(assert (=> bs!391726 m!1879759))

(assert (=> bs!391726 m!1880599))

(assert (=> bs!391726 m!1880599))

(assert (=> bs!391726 m!1882735))

(declare-fun m!1883503 () Bool)

(assert (=> bs!391726 m!1883503))

(assert (=> b!1588623 d!473422))

(declare-fun d!473424 () Bool)

(assert (=> d!473424 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 tokens!457))))

(declare-fun lt!562369 () Unit!27502)

(declare-fun choose!9524 (LexerInterface!2707 List!17549 List!17550 Token!5722) Unit!27502)

(assert (=> d!473424 (= lt!562369 (choose!9524 thiss!17113 rules!1846 tokens!457 (h!22881 tokens!457)))))

(assert (=> d!473424 (not (isEmpty!10500 rules!1846))))

(assert (=> d!473424 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!530 thiss!17113 rules!1846 tokens!457 (h!22881 tokens!457)) lt!562369)))

(declare-fun bs!391727 () Bool)

(assert (= bs!391727 d!473424))

(assert (=> bs!391727 m!1879799))

(declare-fun m!1883505 () Bool)

(assert (=> bs!391727 m!1883505))

(assert (=> bs!391727 m!1879839))

(assert (=> b!1588623 d!473424))

(assert (=> b!1588623 d!472848))

(declare-fun d!473426 () Bool)

(declare-fun lt!562370 () Bool)

(declare-fun e!1021362 () Bool)

(assert (=> d!473426 (= lt!562370 e!1021362)))

(declare-fun res!709478 () Bool)

(assert (=> d!473426 (=> (not res!709478) (not e!1021362))))

(assert (=> d!473426 (= res!709478 (= (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))))))) (list!6790 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))))))))

(declare-fun e!1021361 () Bool)

(assert (=> d!473426 (= lt!562370 e!1021361)))

(declare-fun res!709476 () Bool)

(assert (=> d!473426 (=> (not res!709476) (not e!1021361))))

(declare-fun lt!562371 () tuple2!16958)

(assert (=> d!473426 (= res!709476 (= (size!14059 (_1!9881 lt!562371)) 1))))

(assert (=> d!473426 (= lt!562371 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))))))))

(assert (=> d!473426 (not (isEmpty!10500 rules!1846))))

(assert (=> d!473426 (= (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 (t!144429 tokens!457))) lt!562370)))

(declare-fun b!1590204 () Bool)

(declare-fun res!709477 () Bool)

(assert (=> b!1590204 (=> (not res!709477) (not e!1021361))))

(assert (=> b!1590204 (= res!709477 (= (apply!4303 (_1!9881 lt!562371) 0) (h!22881 (t!144429 tokens!457))))))

(declare-fun b!1590205 () Bool)

(assert (=> b!1590205 (= e!1021361 (isEmpty!10510 (_2!9881 lt!562371)))))

(declare-fun b!1590206 () Bool)

(assert (=> b!1590206 (= e!1021362 (isEmpty!10510 (_2!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 (t!144429 tokens!457))))))))))

(assert (= (and d!473426 res!709476) b!1590204))

(assert (= (and b!1590204 res!709477) b!1590205))

(assert (= (and d!473426 res!709478) b!1590206))

(declare-fun m!1883507 () Bool)

(assert (=> d!473426 m!1883507))

(assert (=> d!473426 m!1880643))

(declare-fun m!1883509 () Bool)

(assert (=> d!473426 m!1883509))

(assert (=> d!473426 m!1879839))

(assert (=> d!473426 m!1880627))

(assert (=> d!473426 m!1882645))

(declare-fun m!1883511 () Bool)

(assert (=> d!473426 m!1883511))

(assert (=> d!473426 m!1880627))

(assert (=> d!473426 m!1880643))

(assert (=> d!473426 m!1880627))

(declare-fun m!1883513 () Bool)

(assert (=> b!1590204 m!1883513))

(declare-fun m!1883515 () Bool)

(assert (=> b!1590205 m!1883515))

(assert (=> b!1590206 m!1880627))

(assert (=> b!1590206 m!1880627))

(assert (=> b!1590206 m!1880643))

(assert (=> b!1590206 m!1880643))

(assert (=> b!1590206 m!1883509))

(declare-fun m!1883517 () Bool)

(assert (=> b!1590206 m!1883517))

(assert (=> b!1588623 d!473426))

(declare-fun d!473428 () Bool)

(assert (=> d!473428 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 (t!144429 tokens!457)))))

(declare-fun lt!562372 () Unit!27502)

(assert (=> d!473428 (= lt!562372 (choose!9524 thiss!17113 rules!1846 tokens!457 (h!22881 (t!144429 tokens!457))))))

(assert (=> d!473428 (not (isEmpty!10500 rules!1846))))

(assert (=> d!473428 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!530 thiss!17113 rules!1846 tokens!457 (h!22881 (t!144429 tokens!457))) lt!562372)))

(declare-fun bs!391728 () Bool)

(assert (= bs!391728 d!473428))

(assert (=> bs!391728 m!1880053))

(declare-fun m!1883519 () Bool)

(assert (=> bs!391728 m!1883519))

(assert (=> bs!391728 m!1879839))

(assert (=> b!1588623 d!473428))

(declare-fun b!1590217 () Bool)

(declare-fun e!1021368 () List!17550)

(declare-fun list!6800 (IArray!11615) List!17550)

(assert (=> b!1590217 (= e!1021368 (list!6800 (xs!8613 (c!257385 (_1!9881 lt!560833)))))))

(declare-fun b!1590218 () Bool)

(assert (=> b!1590218 (= e!1021368 (++!4571 (list!6794 (left!14110 (c!257385 (_1!9881 lt!560833)))) (list!6794 (right!14440 (c!257385 (_1!9881 lt!560833))))))))

(declare-fun d!473430 () Bool)

(declare-fun c!257768 () Bool)

(assert (=> d!473430 (= c!257768 (is-Empty!5805 (c!257385 (_1!9881 lt!560833))))))

(declare-fun e!1021367 () List!17550)

(assert (=> d!473430 (= (list!6794 (c!257385 (_1!9881 lt!560833))) e!1021367)))

(declare-fun b!1590216 () Bool)

(assert (=> b!1590216 (= e!1021367 e!1021368)))

(declare-fun c!257769 () Bool)

(assert (=> b!1590216 (= c!257769 (is-Leaf!8565 (c!257385 (_1!9881 lt!560833))))))

(declare-fun b!1590215 () Bool)

(assert (=> b!1590215 (= e!1021367 Nil!17480)))

(assert (= (and d!473430 c!257768) b!1590215))

(assert (= (and d!473430 (not c!257768)) b!1590216))

(assert (= (and b!1590216 c!257769) b!1590217))

(assert (= (and b!1590216 (not c!257769)) b!1590218))

(declare-fun m!1883521 () Bool)

(assert (=> b!1590217 m!1883521))

(declare-fun m!1883523 () Bool)

(assert (=> b!1590218 m!1883523))

(declare-fun m!1883525 () Bool)

(assert (=> b!1590218 m!1883525))

(assert (=> b!1590218 m!1883523))

(assert (=> b!1590218 m!1883525))

(declare-fun m!1883527 () Bool)

(assert (=> b!1590218 m!1883527))

(assert (=> d!472770 d!473430))

(declare-fun d!473432 () Bool)

(assert (=> d!473432 (= (list!6789 lt!560914) (list!6793 (c!257383 lt!560914)))))

(declare-fun bs!391729 () Bool)

(assert (= bs!391729 d!473432))

(declare-fun m!1883529 () Bool)

(assert (=> bs!391729 m!1883529))

(assert (=> d!472686 d!473432))

(declare-fun d!473434 () Bool)

(declare-fun c!257770 () Bool)

(assert (=> d!473434 (= c!257770 (is-Cons!17480 (list!6790 lt!560829)))))

(declare-fun e!1021369 () List!17548)

(assert (=> d!473434 (= (printList!822 thiss!17113 (list!6790 lt!560829)) e!1021369)))

(declare-fun b!1590219 () Bool)

(assert (=> b!1590219 (= e!1021369 (++!4565 (list!6789 (charsOf!1727 (h!22881 (list!6790 lt!560829)))) (printList!822 thiss!17113 (t!144429 (list!6790 lt!560829)))))))

(declare-fun b!1590220 () Bool)

(assert (=> b!1590220 (= e!1021369 Nil!17478)))

(assert (= (and d!473434 c!257770) b!1590219))

(assert (= (and d!473434 (not c!257770)) b!1590220))

(declare-fun m!1883531 () Bool)

(assert (=> b!1590219 m!1883531))

(assert (=> b!1590219 m!1883531))

(declare-fun m!1883533 () Bool)

(assert (=> b!1590219 m!1883533))

(declare-fun m!1883535 () Bool)

(assert (=> b!1590219 m!1883535))

(assert (=> b!1590219 m!1883533))

(assert (=> b!1590219 m!1883535))

(declare-fun m!1883537 () Bool)

(assert (=> b!1590219 m!1883537))

(assert (=> d!472686 d!473434))

(assert (=> d!472686 d!472702))

(declare-fun d!473436 () Bool)

(declare-fun lt!562383 () BalanceConc!11552)

(assert (=> d!473436 (= (list!6789 lt!562383) (printListTailRec!320 thiss!17113 (dropList!537 lt!560829 0) (list!6789 (BalanceConc!11553 Empty!5804))))))

(declare-fun e!1021370 () BalanceConc!11552)

(assert (=> d!473436 (= lt!562383 e!1021370)))

(declare-fun c!257771 () Bool)

(assert (=> d!473436 (= c!257771 (>= 0 (size!14059 lt!560829)))))

(declare-fun e!1021371 () Bool)

(assert (=> d!473436 e!1021371))

(declare-fun res!709479 () Bool)

(assert (=> d!473436 (=> (not res!709479) (not e!1021371))))

(assert (=> d!473436 (= res!709479 (>= 0 0))))

(assert (=> d!473436 (= (printTailRec!760 thiss!17113 lt!560829 0 (BalanceConc!11553 Empty!5804)) lt!562383)))

(declare-fun b!1590221 () Bool)

(assert (=> b!1590221 (= e!1021371 (<= 0 (size!14059 lt!560829)))))

(declare-fun b!1590222 () Bool)

(assert (=> b!1590222 (= e!1021370 (BalanceConc!11553 Empty!5804))))

(declare-fun b!1590223 () Bool)

(assert (=> b!1590223 (= e!1021370 (printTailRec!760 thiss!17113 lt!560829 (+ 0 1) (++!4566 (BalanceConc!11553 Empty!5804) (charsOf!1727 (apply!4303 lt!560829 0)))))))

(declare-fun lt!562389 () List!17550)

(assert (=> b!1590223 (= lt!562389 (list!6790 lt!560829))))

(declare-fun lt!562387 () Unit!27502)

(assert (=> b!1590223 (= lt!562387 (lemmaDropApply!527 lt!562389 0))))

(assert (=> b!1590223 (= (head!3238 (drop!829 lt!562389 0)) (apply!4304 lt!562389 0))))

(declare-fun lt!562388 () Unit!27502)

(assert (=> b!1590223 (= lt!562388 lt!562387)))

(declare-fun lt!562384 () List!17550)

(assert (=> b!1590223 (= lt!562384 (list!6790 lt!560829))))

(declare-fun lt!562385 () Unit!27502)

(assert (=> b!1590223 (= lt!562385 (lemmaDropTail!507 lt!562384 0))))

(assert (=> b!1590223 (= (tail!2286 (drop!829 lt!562384 0)) (drop!829 lt!562384 (+ 0 1)))))

(declare-fun lt!562386 () Unit!27502)

(assert (=> b!1590223 (= lt!562386 lt!562385)))

(assert (= (and d!473436 res!709479) b!1590221))

(assert (= (and d!473436 c!257771) b!1590222))

(assert (= (and d!473436 (not c!257771)) b!1590223))

(declare-fun m!1883539 () Bool)

(assert (=> d!473436 m!1883539))

(declare-fun m!1883541 () Bool)

(assert (=> d!473436 m!1883541))

(assert (=> d!473436 m!1883541))

(assert (=> d!473436 m!1880205))

(declare-fun m!1883543 () Bool)

(assert (=> d!473436 m!1883543))

(assert (=> d!473436 m!1880205))

(declare-fun m!1883545 () Bool)

(assert (=> d!473436 m!1883545))

(assert (=> b!1590221 m!1883539))

(declare-fun m!1883547 () Bool)

(assert (=> b!1590223 m!1883547))

(declare-fun m!1883549 () Bool)

(assert (=> b!1590223 m!1883549))

(assert (=> b!1590223 m!1879807))

(declare-fun m!1883551 () Bool)

(assert (=> b!1590223 m!1883551))

(declare-fun m!1883553 () Bool)

(assert (=> b!1590223 m!1883553))

(declare-fun m!1883555 () Bool)

(assert (=> b!1590223 m!1883555))

(declare-fun m!1883557 () Bool)

(assert (=> b!1590223 m!1883557))

(declare-fun m!1883559 () Bool)

(assert (=> b!1590223 m!1883559))

(assert (=> b!1590223 m!1883555))

(declare-fun m!1883561 () Bool)

(assert (=> b!1590223 m!1883561))

(declare-fun m!1883563 () Bool)

(assert (=> b!1590223 m!1883563))

(assert (=> b!1590223 m!1883559))

(declare-fun m!1883565 () Bool)

(assert (=> b!1590223 m!1883565))

(assert (=> b!1590223 m!1883553))

(assert (=> b!1590223 m!1883547))

(declare-fun m!1883567 () Bool)

(assert (=> b!1590223 m!1883567))

(assert (=> b!1590223 m!1883551))

(declare-fun m!1883569 () Bool)

(assert (=> b!1590223 m!1883569))

(assert (=> d!472686 d!473436))

(declare-fun b!1590294 () Bool)

(declare-fun res!709511 () Bool)

(declare-fun e!1021414 () Bool)

(assert (=> b!1590294 (=> (not res!709511) (not e!1021414))))

(declare-fun lt!562610 () Option!3151)

(assert (=> b!1590294 (= res!709511 (= (++!4565 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562610)))) (_2!9880 (get!5002 lt!562610))) lt!560816))))

(declare-fun b!1590295 () Bool)

(declare-fun e!1021411 () Option!3151)

(declare-datatypes ((tuple2!16972 0))(
  ( (tuple2!16973 (_1!9888 List!17548) (_2!9888 List!17548)) )
))
(declare-fun lt!562614 () tuple2!16972)

(assert (=> b!1590295 (= e!1021411 (Some!3150 (tuple2!16957 (Token!5723 (apply!4305 (transformation!3078 (h!22880 rules!1846)) (seqFromList!1905 (_1!9888 lt!562614))) (h!22880 rules!1846) (size!14058 (seqFromList!1905 (_1!9888 lt!562614))) (_1!9888 lt!562614)) (_2!9888 lt!562614))))))

(declare-fun lt!562612 () Unit!27502)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!336 (Regex!4406 List!17548) Unit!27502)

(assert (=> b!1590295 (= lt!562612 (longestMatchIsAcceptedByMatchOrIsEmpty!336 (regex!3078 (h!22880 rules!1846)) lt!560816))))

(declare-fun res!709514 () Bool)

(declare-fun findLongestMatchInner!352 (Regex!4406 List!17548 Int List!17548 List!17548 Int) tuple2!16972)

(assert (=> b!1590295 (= res!709514 (isEmpty!10507 (_1!9888 (findLongestMatchInner!352 (regex!3078 (h!22880 rules!1846)) Nil!17478 (size!14057 Nil!17478) lt!560816 lt!560816 (size!14057 lt!560816)))))))

(declare-fun e!1021412 () Bool)

(assert (=> b!1590295 (=> res!709514 e!1021412)))

(assert (=> b!1590295 e!1021412))

(declare-fun lt!562613 () Unit!27502)

(assert (=> b!1590295 (= lt!562613 lt!562612)))

(declare-fun lt!562611 () Unit!27502)

(assert (=> b!1590295 (= lt!562611 (lemmaSemiInverse!385 (transformation!3078 (h!22880 rules!1846)) (seqFromList!1905 (_1!9888 lt!562614))))))

(declare-fun b!1590296 () Bool)

(declare-fun res!709516 () Bool)

(assert (=> b!1590296 (=> (not res!709516) (not e!1021414))))

(assert (=> b!1590296 (= res!709516 (= (value!97397 (_1!9880 (get!5002 lt!562610))) (apply!4305 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!562610)))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!562610)))))))))

(declare-fun d!473438 () Bool)

(declare-fun e!1021413 () Bool)

(assert (=> d!473438 e!1021413))

(declare-fun res!709512 () Bool)

(assert (=> d!473438 (=> res!709512 e!1021413)))

(assert (=> d!473438 (= res!709512 (isEmpty!10504 lt!562610))))

(assert (=> d!473438 (= lt!562610 e!1021411)))

(declare-fun c!257792 () Bool)

(assert (=> d!473438 (= c!257792 (isEmpty!10507 (_1!9888 lt!562614)))))

(declare-fun findLongestMatch!279 (Regex!4406 List!17548) tuple2!16972)

(assert (=> d!473438 (= lt!562614 (findLongestMatch!279 (regex!3078 (h!22880 rules!1846)) lt!560816))))

(declare-fun ruleValid!715 (LexerInterface!2707 Rule!5956) Bool)

(assert (=> d!473438 (ruleValid!715 thiss!17113 (h!22880 rules!1846))))

(assert (=> d!473438 (= (maxPrefixOneRule!740 thiss!17113 (h!22880 rules!1846) lt!560816) lt!562610)))

(declare-fun b!1590297 () Bool)

(assert (=> b!1590297 (= e!1021412 (matchR!1925 (regex!3078 (h!22880 rules!1846)) (_1!9888 (findLongestMatchInner!352 (regex!3078 (h!22880 rules!1846)) Nil!17478 (size!14057 Nil!17478) lt!560816 lt!560816 (size!14057 lt!560816)))))))

(declare-fun b!1590298 () Bool)

(assert (=> b!1590298 (= e!1021414 (= (size!14055 (_1!9880 (get!5002 lt!562610))) (size!14057 (originalCharacters!3892 (_1!9880 (get!5002 lt!562610))))))))

(declare-fun b!1590299 () Bool)

(declare-fun res!709510 () Bool)

(assert (=> b!1590299 (=> (not res!709510) (not e!1021414))))

(assert (=> b!1590299 (= res!709510 (= (rule!4882 (_1!9880 (get!5002 lt!562610))) (h!22880 rules!1846)))))

(declare-fun b!1590300 () Bool)

(assert (=> b!1590300 (= e!1021411 None!3150)))

(declare-fun b!1590301 () Bool)

(declare-fun res!709513 () Bool)

(assert (=> b!1590301 (=> (not res!709513) (not e!1021414))))

(assert (=> b!1590301 (= res!709513 (< (size!14057 (_2!9880 (get!5002 lt!562610))) (size!14057 lt!560816)))))

(declare-fun b!1590302 () Bool)

(assert (=> b!1590302 (= e!1021413 e!1021414)))

(declare-fun res!709515 () Bool)

(assert (=> b!1590302 (=> (not res!709515) (not e!1021414))))

(assert (=> b!1590302 (= res!709515 (matchR!1925 (regex!3078 (h!22880 rules!1846)) (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562610))))))))

(assert (= (and d!473438 c!257792) b!1590300))

(assert (= (and d!473438 (not c!257792)) b!1590295))

(assert (= (and b!1590295 (not res!709514)) b!1590297))

(assert (= (and d!473438 (not res!709512)) b!1590302))

(assert (= (and b!1590302 res!709515) b!1590294))

(assert (= (and b!1590294 res!709511) b!1590301))

(assert (= (and b!1590301 res!709513) b!1590299))

(assert (= (and b!1590299 res!709510) b!1590296))

(assert (= (and b!1590296 res!709516) b!1590298))

(declare-fun m!1883707 () Bool)

(assert (=> b!1590301 m!1883707))

(declare-fun m!1883709 () Bool)

(assert (=> b!1590301 m!1883709))

(assert (=> b!1590301 m!1880255))

(assert (=> b!1590298 m!1883707))

(declare-fun m!1883711 () Bool)

(assert (=> b!1590298 m!1883711))

(assert (=> b!1590294 m!1883707))

(declare-fun m!1883713 () Bool)

(assert (=> b!1590294 m!1883713))

(assert (=> b!1590294 m!1883713))

(declare-fun m!1883715 () Bool)

(assert (=> b!1590294 m!1883715))

(assert (=> b!1590294 m!1883715))

(declare-fun m!1883717 () Bool)

(assert (=> b!1590294 m!1883717))

(assert (=> b!1590299 m!1883707))

(declare-fun m!1883719 () Bool)

(assert (=> b!1590297 m!1883719))

(assert (=> b!1590297 m!1880255))

(assert (=> b!1590297 m!1883719))

(assert (=> b!1590297 m!1880255))

(declare-fun m!1883721 () Bool)

(assert (=> b!1590297 m!1883721))

(declare-fun m!1883723 () Bool)

(assert (=> b!1590297 m!1883723))

(declare-fun m!1883725 () Bool)

(assert (=> b!1590295 m!1883725))

(declare-fun m!1883727 () Bool)

(assert (=> b!1590295 m!1883727))

(assert (=> b!1590295 m!1883727))

(declare-fun m!1883729 () Bool)

(assert (=> b!1590295 m!1883729))

(assert (=> b!1590295 m!1883719))

(assert (=> b!1590295 m!1880255))

(assert (=> b!1590295 m!1883721))

(assert (=> b!1590295 m!1880255))

(declare-fun m!1883731 () Bool)

(assert (=> b!1590295 m!1883731))

(assert (=> b!1590295 m!1883727))

(declare-fun m!1883733 () Bool)

(assert (=> b!1590295 m!1883733))

(assert (=> b!1590295 m!1883719))

(assert (=> b!1590295 m!1883727))

(declare-fun m!1883735 () Bool)

(assert (=> b!1590295 m!1883735))

(assert (=> b!1590296 m!1883707))

(declare-fun m!1883737 () Bool)

(assert (=> b!1590296 m!1883737))

(assert (=> b!1590296 m!1883737))

(declare-fun m!1883741 () Bool)

(assert (=> b!1590296 m!1883741))

(assert (=> b!1590302 m!1883707))

(assert (=> b!1590302 m!1883713))

(assert (=> b!1590302 m!1883713))

(assert (=> b!1590302 m!1883715))

(assert (=> b!1590302 m!1883715))

(declare-fun m!1883743 () Bool)

(assert (=> b!1590302 m!1883743))

(declare-fun m!1883745 () Bool)

(assert (=> d!473438 m!1883745))

(declare-fun m!1883747 () Bool)

(assert (=> d!473438 m!1883747))

(declare-fun m!1883749 () Bool)

(assert (=> d!473438 m!1883749))

(declare-fun m!1883751 () Bool)

(assert (=> d!473438 m!1883751))

(assert (=> bm!102950 d!473438))

(declare-fun d!473466 () Bool)

(assert (=> d!473466 (= (list!6789 (_2!9881 lt!560913)) (list!6793 (c!257383 (_2!9881 lt!560913))))))

(declare-fun bs!391736 () Bool)

(assert (= bs!391736 d!473466))

(declare-fun m!1883753 () Bool)

(assert (=> bs!391736 m!1883753))

(assert (=> b!1588597 d!473466))

(assert (=> b!1588597 d!473328))

(assert (=> b!1588597 d!472678))

(declare-fun d!473468 () Bool)

(declare-fun lt!562622 () C!8986)

(declare-fun contains!3056 (List!17548 C!8986) Bool)

(assert (=> d!473468 (contains!3056 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) lt!562622)))

(declare-fun e!1021422 () C!8986)

(assert (=> d!473468 (= lt!562622 e!1021422)))

(declare-fun c!257796 () Bool)

(assert (=> d!473468 (= c!257796 (= 0 0))))

(declare-fun e!1021423 () Bool)

(assert (=> d!473468 e!1021423))

(declare-fun res!709522 () Bool)

(assert (=> d!473468 (=> (not res!709522) (not e!1021423))))

(assert (=> d!473468 (= res!709522 (<= 0 0))))

(assert (=> d!473468 (= (apply!4309 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) 0) lt!562622)))

(declare-fun b!1590314 () Bool)

(assert (=> b!1590314 (= e!1021423 (< 0 (size!14057 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun b!1590315 () Bool)

(assert (=> b!1590315 (= e!1021422 (head!3239 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(declare-fun b!1590316 () Bool)

(assert (=> b!1590316 (= e!1021422 (apply!4309 (tail!2285 (list!6789 (charsOf!1727 (h!22881 (t!144429 tokens!457))))) (- 0 1)))))

(assert (= (and d!473468 res!709522) b!1590314))

(assert (= (and d!473468 c!257796) b!1590315))

(assert (= (and d!473468 (not c!257796)) b!1590316))

(assert (=> d!473468 m!1880599))

(declare-fun m!1883777 () Bool)

(assert (=> d!473468 m!1883777))

(assert (=> b!1590314 m!1880599))

(assert (=> b!1590314 m!1882735))

(assert (=> b!1590315 m!1880599))

(assert (=> b!1590315 m!1881435))

(assert (=> b!1590316 m!1880599))

(assert (=> b!1590316 m!1881441))

(assert (=> b!1590316 m!1881441))

(declare-fun m!1883779 () Bool)

(assert (=> b!1590316 m!1883779))

(assert (=> d!472828 d!473468))

(assert (=> d!472828 d!473262))

(declare-fun b!1590331 () Bool)

(declare-fun e!1021433 () C!8986)

(declare-fun call!103085 () C!8986)

(assert (=> b!1590331 (= e!1021433 call!103085)))

(declare-fun bm!103080 () Bool)

(declare-fun c!257803 () Bool)

(declare-fun c!257805 () Bool)

(assert (=> bm!103080 (= c!257803 c!257805)))

(declare-fun e!1021434 () Int)

(assert (=> bm!103080 (= call!103085 (apply!4310 (ite c!257805 (left!14109 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457))))) (right!14439 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))) e!1021434))))

(declare-fun b!1590332 () Bool)

(assert (=> b!1590332 (= e!1021433 call!103085)))

(declare-fun b!1590333 () Bool)

(declare-fun e!1021432 () Bool)

(assert (=> b!1590333 (= e!1021432 (< 0 (size!14070 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun b!1590334 () Bool)

(assert (=> b!1590334 (= e!1021434 0)))

(declare-fun b!1590335 () Bool)

(declare-fun e!1021435 () C!8986)

(assert (=> b!1590335 (= e!1021435 e!1021433)))

(declare-fun lt!562628 () Bool)

(declare-fun appendIndex!198 (List!17548 List!17548 Int) Bool)

(assert (=> b!1590335 (= lt!562628 (appendIndex!198 (list!6793 (left!14109 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))) (list!6793 (right!14439 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457)))))) 0))))

(assert (=> b!1590335 (= c!257805 (< 0 (size!14070 (left!14109 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))))

(declare-fun b!1590336 () Bool)

(assert (=> b!1590336 (= e!1021434 (- 0 (size!14070 (left!14109 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))))

(declare-fun b!1590337 () Bool)

(declare-fun apply!4315 (IArray!11613 Int) C!8986)

(assert (=> b!1590337 (= e!1021435 (apply!4315 (xs!8612 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457))))) 0))))

(declare-fun d!473476 () Bool)

(declare-fun lt!562627 () C!8986)

(assert (=> d!473476 (= lt!562627 (apply!4309 (list!6793 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457))))) 0))))

(assert (=> d!473476 (= lt!562627 e!1021435)))

(declare-fun c!257804 () Bool)

(assert (=> d!473476 (= c!257804 (is-Leaf!8564 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457))))))))

(assert (=> d!473476 e!1021432))

(declare-fun res!709525 () Bool)

(assert (=> d!473476 (=> (not res!709525) (not e!1021432))))

(assert (=> d!473476 (= res!709525 (<= 0 0))))

(assert (=> d!473476 (= (apply!4310 (c!257383 (charsOf!1727 (h!22881 (t!144429 tokens!457)))) 0) lt!562627)))

(assert (= (and d!473476 res!709525) b!1590333))

(assert (= (and d!473476 c!257804) b!1590337))

(assert (= (and d!473476 (not c!257804)) b!1590335))

(assert (= (and b!1590335 c!257805) b!1590331))

(assert (= (and b!1590335 (not c!257805)) b!1590332))

(assert (= (or b!1590331 b!1590332) bm!103080))

(assert (= (and bm!103080 c!257803) b!1590334))

(assert (= (and bm!103080 (not c!257803)) b!1590336))

(declare-fun m!1883781 () Bool)

(assert (=> bm!103080 m!1883781))

(declare-fun m!1883783 () Bool)

(assert (=> b!1590337 m!1883783))

(assert (=> d!473476 m!1882673))

(assert (=> d!473476 m!1882673))

(declare-fun m!1883785 () Bool)

(assert (=> d!473476 m!1883785))

(declare-fun m!1883787 () Bool)

(assert (=> b!1590335 m!1883787))

(declare-fun m!1883789 () Bool)

(assert (=> b!1590335 m!1883789))

(assert (=> b!1590335 m!1883787))

(assert (=> b!1590335 m!1883789))

(declare-fun m!1883791 () Bool)

(assert (=> b!1590335 m!1883791))

(declare-fun m!1883793 () Bool)

(assert (=> b!1590335 m!1883793))

(assert (=> b!1590333 m!1883503))

(assert (=> b!1590336 m!1883793))

(assert (=> d!472828 d!473476))

(declare-fun d!473478 () Bool)

(declare-fun lt!562629 () Int)

(assert (=> d!473478 (= lt!562629 (size!14057 (list!6789 (_2!9881 lt!561001))))))

(assert (=> d!473478 (= lt!562629 (size!14070 (c!257383 (_2!9881 lt!561001))))))

(assert (=> d!473478 (= (size!14058 (_2!9881 lt!561001)) lt!562629)))

(declare-fun bs!391739 () Bool)

(assert (= bs!391739 d!473478))

(assert (=> bs!391739 m!1880129))

(assert (=> bs!391739 m!1880129))

(declare-fun m!1883795 () Bool)

(assert (=> bs!391739 m!1883795))

(declare-fun m!1883797 () Bool)

(assert (=> bs!391739 m!1883797))

(assert (=> b!1588654 d!473478))

(declare-fun d!473480 () Bool)

(declare-fun lt!562630 () Int)

(assert (=> d!473480 (= lt!562630 (size!14057 (list!6789 (seqFromList!1905 lt!560815))))))

(assert (=> d!473480 (= lt!562630 (size!14070 (c!257383 (seqFromList!1905 lt!560815))))))

(assert (=> d!473480 (= (size!14058 (seqFromList!1905 lt!560815)) lt!562630)))

(declare-fun bs!391740 () Bool)

(assert (= bs!391740 d!473480))

(assert (=> bs!391740 m!1879841))

(assert (=> bs!391740 m!1880131))

(assert (=> bs!391740 m!1880131))

(assert (=> bs!391740 m!1883121))

(declare-fun m!1883799 () Bool)

(assert (=> bs!391740 m!1883799))

(assert (=> b!1588654 d!473480))

(declare-fun d!473482 () Bool)

(assert (=> d!473482 true))

(declare-fun lambda!66668 () Int)

(declare-fun order!10355 () Int)

(declare-fun dynLambda!7782 (Int Int) Int)

(assert (=> d!473482 (< (dynLambda!7771 order!10347 (toChars!4348 (transformation!3078 (h!22880 rules!1846)))) (dynLambda!7782 order!10355 lambda!66668))))

(assert (=> d!473482 true))

(assert (=> d!473482 (< (dynLambda!7769 order!10343 (toValue!4489 (transformation!3078 (h!22880 rules!1846)))) (dynLambda!7782 order!10355 lambda!66668))))

(declare-fun Forall!636 (Int) Bool)

(assert (=> d!473482 (= (semiInverseModEq!1165 (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toValue!4489 (transformation!3078 (h!22880 rules!1846)))) (Forall!636 lambda!66668))))

(declare-fun bs!391741 () Bool)

(assert (= bs!391741 d!473482))

(declare-fun m!1883801 () Bool)

(assert (=> bs!391741 m!1883801))

(assert (=> d!472814 d!473482))

(assert (=> b!1588707 d!472756))

(declare-fun d!473484 () Bool)

(assert (=> d!473484 (= (height!862 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))) (ite (is-Empty!5804 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))) 0 (ite (is-Leaf!8564 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))) 1 (cheight!6015 (++!4569 (c!257383 lt!560830) (c!257383 lt!560818))))))))

(assert (=> b!1588923 d!473484))

(declare-fun d!473486 () Bool)

(assert (=> d!473486 (= (max!0 (height!862 (c!257383 lt!560830)) (height!862 (c!257383 lt!560818))) (ite (< (height!862 (c!257383 lt!560830)) (height!862 (c!257383 lt!560818))) (height!862 (c!257383 lt!560818)) (height!862 (c!257383 lt!560830))))))

(assert (=> b!1588923 d!473486))

(assert (=> b!1588923 d!473332))

(declare-fun d!473488 () Bool)

(assert (=> d!473488 (= (height!862 (c!257383 lt!560818)) (ite (is-Empty!5804 (c!257383 lt!560818)) 0 (ite (is-Leaf!8564 (c!257383 lt!560818)) 1 (cheight!6015 (c!257383 lt!560818)))))))

(assert (=> b!1588923 d!473488))

(declare-fun d!473490 () Bool)

(assert (=> d!473490 (= (height!862 (c!257383 lt!560830)) (ite (is-Empty!5804 (c!257383 lt!560830)) 0 (ite (is-Leaf!8564 (c!257383 lt!560830)) 1 (cheight!6015 (c!257383 lt!560830)))))))

(assert (=> b!1588923 d!473490))

(declare-fun d!473492 () Bool)

(declare-fun e!1021436 () Bool)

(assert (=> d!473492 e!1021436))

(declare-fun res!709526 () Bool)

(assert (=> d!473492 (=> (not res!709526) (not e!1021436))))

(declare-fun lt!562631 () BalanceConc!11554)

(assert (=> d!473492 (= res!709526 (= (list!6790 lt!562631) (t!144429 tokens!457)))))

(assert (=> d!473492 (= lt!562631 (BalanceConc!11555 (fromList!369 (t!144429 tokens!457))))))

(assert (=> d!473492 (= (fromListB!824 (t!144429 tokens!457)) lt!562631)))

(declare-fun b!1590342 () Bool)

(assert (=> b!1590342 (= e!1021436 (isBalanced!1719 (fromList!369 (t!144429 tokens!457))))))

(assert (= (and d!473492 res!709526) b!1590342))

(declare-fun m!1883803 () Bool)

(assert (=> d!473492 m!1883803))

(declare-fun m!1883805 () Bool)

(assert (=> d!473492 m!1883805))

(assert (=> b!1590342 m!1883805))

(assert (=> b!1590342 m!1883805))

(declare-fun m!1883807 () Bool)

(assert (=> b!1590342 m!1883807))

(assert (=> d!472690 d!473492))

(declare-fun d!473494 () Bool)

(declare-fun c!257806 () Bool)

(assert (=> d!473494 (= c!257806 (isEmpty!10507 (tail!2285 (++!4565 lt!560815 (list!6789 lt!560818)))))))

(declare-fun e!1021437 () Bool)

(assert (=> d!473494 (= (prefixMatch!341 (derivativeStep!1047 lt!560821 (head!3239 (++!4565 lt!560815 (list!6789 lt!560818)))) (tail!2285 (++!4565 lt!560815 (list!6789 lt!560818)))) e!1021437)))

(declare-fun b!1590343 () Bool)

(assert (=> b!1590343 (= e!1021437 (not (lostCause!403 (derivativeStep!1047 lt!560821 (head!3239 (++!4565 lt!560815 (list!6789 lt!560818)))))))))

(declare-fun b!1590344 () Bool)

(assert (=> b!1590344 (= e!1021437 (prefixMatch!341 (derivativeStep!1047 (derivativeStep!1047 lt!560821 (head!3239 (++!4565 lt!560815 (list!6789 lt!560818)))) (head!3239 (tail!2285 (++!4565 lt!560815 (list!6789 lt!560818))))) (tail!2285 (tail!2285 (++!4565 lt!560815 (list!6789 lt!560818))))))))

(assert (= (and d!473494 c!257806) b!1590343))

(assert (= (and d!473494 (not c!257806)) b!1590344))

(assert (=> d!473494 m!1880151))

(declare-fun m!1883809 () Bool)

(assert (=> d!473494 m!1883809))

(assert (=> b!1590343 m!1880149))

(declare-fun m!1883811 () Bool)

(assert (=> b!1590343 m!1883811))

(assert (=> b!1590344 m!1880151))

(declare-fun m!1883813 () Bool)

(assert (=> b!1590344 m!1883813))

(assert (=> b!1590344 m!1880149))

(assert (=> b!1590344 m!1883813))

(declare-fun m!1883815 () Bool)

(assert (=> b!1590344 m!1883815))

(assert (=> b!1590344 m!1880151))

(declare-fun m!1883817 () Bool)

(assert (=> b!1590344 m!1883817))

(assert (=> b!1590344 m!1883815))

(assert (=> b!1590344 m!1883817))

(declare-fun m!1883819 () Bool)

(assert (=> b!1590344 m!1883819))

(assert (=> b!1588662 d!473494))

(declare-fun bm!103089 () Bool)

(declare-fun call!103094 () Regex!4406)

(declare-fun call!103097 () Regex!4406)

(assert (=> bm!103089 (= call!103094 call!103097)))

(declare-fun bm!103090 () Bool)

(declare-fun call!103095 () Regex!4406)

(assert (=> bm!103090 (= call!103097 call!103095)))

(declare-fun b!1590365 () Bool)

(declare-fun e!1021448 () Regex!4406)

(assert (=> b!1590365 (= e!1021448 (Union!4406 (Concat!7575 call!103094 (regTwo!9324 lt!560821)) EmptyLang!4406))))

(declare-fun b!1590366 () Bool)

(declare-fun e!1021450 () Regex!4406)

(declare-fun call!103096 () Regex!4406)

(assert (=> b!1590366 (= e!1021450 (Union!4406 call!103095 call!103096))))

(declare-fun c!257821 () Bool)

(declare-fun c!257817 () Bool)

(declare-fun bm!103091 () Bool)

(declare-fun c!257819 () Bool)

(assert (=> bm!103091 (= call!103095 (derivativeStep!1047 (ite c!257819 (regOne!9325 lt!560821) (ite c!257817 (reg!4735 lt!560821) (ite c!257821 (regTwo!9324 lt!560821) (regOne!9324 lt!560821)))) (head!3239 (++!4565 lt!560815 (list!6789 lt!560818)))))))

(declare-fun b!1590367 () Bool)

(declare-fun e!1021449 () Regex!4406)

(assert (=> b!1590367 (= e!1021449 (Concat!7575 call!103097 lt!560821))))

(declare-fun b!1590368 () Bool)

(assert (=> b!1590368 (= e!1021448 (Union!4406 (Concat!7575 call!103096 (regTwo!9324 lt!560821)) call!103094))))

(declare-fun b!1590369 () Bool)

(declare-fun e!1021452 () Regex!4406)

(assert (=> b!1590369 (= e!1021452 (ite (= (head!3239 (++!4565 lt!560815 (list!6789 lt!560818))) (c!257384 lt!560821)) EmptyExpr!4406 EmptyLang!4406))))

(declare-fun b!1590370 () Bool)

(assert (=> b!1590370 (= c!257821 (nullable!1296 (regOne!9324 lt!560821)))))

(assert (=> b!1590370 (= e!1021449 e!1021448)))

(declare-fun b!1590371 () Bool)

(declare-fun e!1021451 () Regex!4406)

(assert (=> b!1590371 (= e!1021451 EmptyLang!4406)))

(declare-fun b!1590372 () Bool)

(assert (=> b!1590372 (= e!1021451 e!1021452)))

(declare-fun c!257818 () Bool)

(assert (=> b!1590372 (= c!257818 (is-ElementMatch!4406 lt!560821))))

(declare-fun d!473496 () Bool)

(declare-fun lt!562634 () Regex!4406)

(assert (=> d!473496 (validRegex!1743 lt!562634)))

(assert (=> d!473496 (= lt!562634 e!1021451)))

(declare-fun c!257820 () Bool)

(assert (=> d!473496 (= c!257820 (or (is-EmptyExpr!4406 lt!560821) (is-EmptyLang!4406 lt!560821)))))

(assert (=> d!473496 (validRegex!1743 lt!560821)))

(assert (=> d!473496 (= (derivativeStep!1047 lt!560821 (head!3239 (++!4565 lt!560815 (list!6789 lt!560818)))) lt!562634)))

(declare-fun bm!103092 () Bool)

(assert (=> bm!103092 (= call!103096 (derivativeStep!1047 (ite c!257819 (regTwo!9325 lt!560821) (regOne!9324 lt!560821)) (head!3239 (++!4565 lt!560815 (list!6789 lt!560818)))))))

(declare-fun b!1590373 () Bool)

(assert (=> b!1590373 (= e!1021450 e!1021449)))

(assert (=> b!1590373 (= c!257817 (is-Star!4406 lt!560821))))

(declare-fun b!1590374 () Bool)

(assert (=> b!1590374 (= c!257819 (is-Union!4406 lt!560821))))

(assert (=> b!1590374 (= e!1021452 e!1021450)))

(assert (= (and d!473496 c!257820) b!1590371))

(assert (= (and d!473496 (not c!257820)) b!1590372))

(assert (= (and b!1590372 c!257818) b!1590369))

(assert (= (and b!1590372 (not c!257818)) b!1590374))

(assert (= (and b!1590374 c!257819) b!1590366))

(assert (= (and b!1590374 (not c!257819)) b!1590373))

(assert (= (and b!1590373 c!257817) b!1590367))

(assert (= (and b!1590373 (not c!257817)) b!1590370))

(assert (= (and b!1590370 c!257821) b!1590368))

(assert (= (and b!1590370 (not c!257821)) b!1590365))

(assert (= (or b!1590368 b!1590365) bm!103089))

(assert (= (or b!1590367 bm!103089) bm!103090))

(assert (= (or b!1590366 bm!103090) bm!103091))

(assert (= (or b!1590366 b!1590368) bm!103092))

(assert (=> bm!103091 m!1880147))

(declare-fun m!1883821 () Bool)

(assert (=> bm!103091 m!1883821))

(declare-fun m!1883823 () Bool)

(assert (=> b!1590370 m!1883823))

(declare-fun m!1883825 () Bool)

(assert (=> d!473496 m!1883825))

(assert (=> d!473496 m!1880757))

(assert (=> bm!103092 m!1880147))

(declare-fun m!1883827 () Bool)

(assert (=> bm!103092 m!1883827))

(assert (=> b!1588662 d!473496))

(declare-fun d!473498 () Bool)

(assert (=> d!473498 (= (head!3239 (++!4565 lt!560815 (list!6789 lt!560818))) (h!22879 (++!4565 lt!560815 (list!6789 lt!560818))))))

(assert (=> b!1588662 d!473498))

(declare-fun d!473500 () Bool)

(assert (=> d!473500 (= (tail!2285 (++!4565 lt!560815 (list!6789 lt!560818))) (t!144427 (++!4565 lt!560815 (list!6789 lt!560818))))))

(assert (=> b!1588662 d!473500))

(declare-fun d!473502 () Bool)

(assert (=> d!473502 (= (isDefined!2526 lt!561060) (not (isEmpty!10504 lt!561060)))))

(declare-fun bs!391742 () Bool)

(assert (= bs!391742 d!473502))

(assert (=> bs!391742 m!1880269))

(assert (=> b!1588757 d!473502))

(declare-fun b!1590377 () Bool)

(declare-fun e!1021454 () List!17548)

(assert (=> b!1590377 (= e!1021454 (list!6799 (xs!8612 (c!257383 lt!560826))))))

(declare-fun b!1590378 () Bool)

(assert (=> b!1590378 (= e!1021454 (++!4565 (list!6793 (left!14109 (c!257383 lt!560826))) (list!6793 (right!14439 (c!257383 lt!560826)))))))

(declare-fun b!1590375 () Bool)

(declare-fun e!1021453 () List!17548)

(assert (=> b!1590375 (= e!1021453 Nil!17478)))

(declare-fun b!1590376 () Bool)

(assert (=> b!1590376 (= e!1021453 e!1021454)))

(declare-fun c!257823 () Bool)

(assert (=> b!1590376 (= c!257823 (is-Leaf!8564 (c!257383 lt!560826)))))

(declare-fun d!473504 () Bool)

(declare-fun c!257822 () Bool)

(assert (=> d!473504 (= c!257822 (is-Empty!5804 (c!257383 lt!560826)))))

(assert (=> d!473504 (= (list!6793 (c!257383 lt!560826)) e!1021453)))

(assert (= (and d!473504 c!257822) b!1590375))

(assert (= (and d!473504 (not c!257822)) b!1590376))

(assert (= (and b!1590376 c!257823) b!1590377))

(assert (= (and b!1590376 (not c!257823)) b!1590378))

(declare-fun m!1883829 () Bool)

(assert (=> b!1590377 m!1883829))

(declare-fun m!1883831 () Bool)

(assert (=> b!1590378 m!1883831))

(declare-fun m!1883833 () Bool)

(assert (=> b!1590378 m!1883833))

(assert (=> b!1590378 m!1883831))

(assert (=> b!1590378 m!1883833))

(declare-fun m!1883835 () Bool)

(assert (=> b!1590378 m!1883835))

(assert (=> d!472694 d!473504))

(declare-fun d!473506 () Bool)

(assert (=> d!473506 (= (list!6789 lt!561028) (list!6793 (c!257383 lt!561028)))))

(declare-fun bs!391743 () Bool)

(assert (= bs!391743 d!473506))

(declare-fun m!1883837 () Bool)

(assert (=> bs!391743 m!1883837))

(assert (=> d!472746 d!473506))

(declare-fun d!473508 () Bool)

(declare-fun c!257824 () Bool)

(assert (=> d!473508 (= c!257824 (is-Cons!17480 (list!6790 lt!560813)))))

(declare-fun e!1021455 () List!17548)

(assert (=> d!473508 (= (printList!822 thiss!17113 (list!6790 lt!560813)) e!1021455)))

(declare-fun b!1590379 () Bool)

(assert (=> b!1590379 (= e!1021455 (++!4565 (list!6789 (charsOf!1727 (h!22881 (list!6790 lt!560813)))) (printList!822 thiss!17113 (t!144429 (list!6790 lt!560813)))))))

(declare-fun b!1590380 () Bool)

(assert (=> b!1590380 (= e!1021455 Nil!17478)))

(assert (= (and d!473508 c!257824) b!1590379))

(assert (= (and d!473508 (not c!257824)) b!1590380))

(declare-fun m!1883839 () Bool)

(assert (=> b!1590379 m!1883839))

(assert (=> b!1590379 m!1883839))

(declare-fun m!1883841 () Bool)

(assert (=> b!1590379 m!1883841))

(declare-fun m!1883843 () Bool)

(assert (=> b!1590379 m!1883843))

(assert (=> b!1590379 m!1883841))

(assert (=> b!1590379 m!1883843))

(declare-fun m!1883845 () Bool)

(assert (=> b!1590379 m!1883845))

(assert (=> d!472746 d!473508))

(assert (=> d!472746 d!472888))

(assert (=> d!472746 d!472748))

(assert (=> d!472708 d!472816))

(declare-fun lt!562638 () Bool)

(declare-fun d!473510 () Bool)

(assert (=> d!473510 (= lt!562638 (prefixMatch!341 (rulesRegex!468 thiss!17113 rules!1846) (list!6789 (++!4566 (charsOf!1727 (h!22881 tokens!457)) (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))))))))

(assert (=> d!473510 (= lt!562638 (prefixMatchZipperSequence!434 (focus!138 (rulesRegex!468 thiss!17113 rules!1846)) (++!4566 (charsOf!1727 (h!22881 tokens!457)) (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))) 0))))

(declare-fun lt!562640 () Unit!27502)

(declare-fun lt!562637 () Unit!27502)

(assert (=> d!473510 (= lt!562640 lt!562637)))

(declare-fun lt!562641 () (Set Context!1664))

(declare-fun lt!562642 () List!17548)

(assert (=> d!473510 (= (prefixMatch!341 (rulesRegex!468 thiss!17113 rules!1846) lt!562642) (prefixMatchZipper!117 lt!562641 lt!562642))))

(declare-fun lt!562636 () List!17559)

(assert (=> d!473510 (= lt!562637 (prefixMatchZipperRegexEquiv!117 lt!562641 lt!562636 (rulesRegex!468 thiss!17113 rules!1846) lt!562642))))

(assert (=> d!473510 (= lt!562642 (list!6789 (++!4566 (charsOf!1727 (h!22881 tokens!457)) (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0)))))))

(assert (=> d!473510 (= lt!562636 (toList!878 (focus!138 (rulesRegex!468 thiss!17113 rules!1846))))))

(assert (=> d!473510 (= lt!562641 (focus!138 (rulesRegex!468 thiss!17113 rules!1846)))))

(declare-fun lt!562643 () Unit!27502)

(declare-fun lt!562635 () Unit!27502)

(assert (=> d!473510 (= lt!562643 lt!562635)))

(declare-fun lt!562644 () (Set Context!1664))

(declare-fun lt!562639 () Int)

(assert (=> d!473510 (= (prefixMatchZipper!117 lt!562644 (dropList!539 (++!4566 (charsOf!1727 (h!22881 tokens!457)) (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))) lt!562639)) (prefixMatchZipperSequence!434 lt!562644 (++!4566 (charsOf!1727 (h!22881 tokens!457)) (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))) lt!562639))))

(assert (=> d!473510 (= lt!562635 (lemmaprefixMatchZipperSequenceEquivalent!117 lt!562644 (++!4566 (charsOf!1727 (h!22881 tokens!457)) (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))) lt!562639))))

(assert (=> d!473510 (= lt!562639 0)))

(assert (=> d!473510 (= lt!562644 (focus!138 (rulesRegex!468 thiss!17113 rules!1846)))))

(assert (=> d!473510 (validRegex!1743 (rulesRegex!468 thiss!17113 rules!1846))))

(assert (=> d!473510 (= (prefixMatchZipperSequence!432 (rulesRegex!468 thiss!17113 rules!1846) (++!4566 (charsOf!1727 (h!22881 tokens!457)) (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0)))) lt!562638)))

(declare-fun bs!391744 () Bool)

(assert (= bs!391744 d!473510))

(declare-fun m!1883847 () Bool)

(assert (=> bs!391744 m!1883847))

(declare-fun m!1883849 () Bool)

(assert (=> bs!391744 m!1883849))

(assert (=> bs!391744 m!1879749))

(declare-fun m!1883851 () Bool)

(assert (=> bs!391744 m!1883851))

(declare-fun m!1883853 () Bool)

(assert (=> bs!391744 m!1883853))

(assert (=> bs!391744 m!1880045))

(assert (=> bs!391744 m!1883851))

(assert (=> bs!391744 m!1879749))

(declare-fun m!1883855 () Bool)

(assert (=> bs!391744 m!1883855))

(assert (=> bs!391744 m!1880045))

(declare-fun m!1883857 () Bool)

(assert (=> bs!391744 m!1883857))

(assert (=> bs!391744 m!1880045))

(declare-fun m!1883859 () Bool)

(assert (=> bs!391744 m!1883859))

(assert (=> bs!391744 m!1879749))

(declare-fun m!1883861 () Bool)

(assert (=> bs!391744 m!1883861))

(assert (=> bs!391744 m!1879749))

(assert (=> bs!391744 m!1883847))

(assert (=> bs!391744 m!1883847))

(assert (=> bs!391744 m!1880045))

(declare-fun m!1883863 () Bool)

(assert (=> bs!391744 m!1883863))

(assert (=> bs!391744 m!1879749))

(declare-fun m!1883865 () Bool)

(assert (=> bs!391744 m!1883865))

(assert (=> bs!391744 m!1883857))

(declare-fun m!1883867 () Bool)

(assert (=> bs!391744 m!1883867))

(assert (=> bs!391744 m!1880045))

(declare-fun m!1883869 () Bool)

(assert (=> bs!391744 m!1883869))

(declare-fun m!1883871 () Bool)

(assert (=> bs!391744 m!1883871))

(assert (=> d!472708 d!473510))

(declare-fun d!473512 () Bool)

(declare-fun e!1021456 () Bool)

(assert (=> d!473512 e!1021456))

(declare-fun res!709530 () Bool)

(assert (=> d!473512 (=> (not res!709530) (not e!1021456))))

(assert (=> d!473512 (= res!709530 (appendAssocInst!396 (c!257383 (charsOf!1727 (h!22881 tokens!457))) (c!257383 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0)))))))

(declare-fun lt!562645 () BalanceConc!11552)

(assert (=> d!473512 (= lt!562645 (BalanceConc!11553 (++!4569 (c!257383 (charsOf!1727 (h!22881 tokens!457))) (c!257383 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))))))))

(assert (=> d!473512 (= (++!4566 (charsOf!1727 (h!22881 tokens!457)) (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))) lt!562645)))

(declare-fun b!1590382 () Bool)

(declare-fun res!709529 () Bool)

(assert (=> b!1590382 (=> (not res!709529) (not e!1021456))))

(assert (=> b!1590382 (= res!709529 (<= (height!862 (++!4569 (c!257383 (charsOf!1727 (h!22881 tokens!457))) (c!257383 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))))) (+ (max!0 (height!862 (c!257383 (charsOf!1727 (h!22881 tokens!457)))) (height!862 (c!257383 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))))) 1)))))

(declare-fun b!1590381 () Bool)

(declare-fun res!709528 () Bool)

(assert (=> b!1590381 (=> (not res!709528) (not e!1021456))))

(assert (=> b!1590381 (= res!709528 (isBalanced!1721 (++!4569 (c!257383 (charsOf!1727 (h!22881 tokens!457))) (c!257383 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))))))))

(declare-fun b!1590383 () Bool)

(declare-fun res!709527 () Bool)

(assert (=> b!1590383 (=> (not res!709527) (not e!1021456))))

(assert (=> b!1590383 (= res!709527 (>= (height!862 (++!4569 (c!257383 (charsOf!1727 (h!22881 tokens!457))) (c!257383 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))))) (max!0 (height!862 (c!257383 (charsOf!1727 (h!22881 tokens!457)))) (height!862 (c!257383 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0)))))))))

(declare-fun b!1590384 () Bool)

(assert (=> b!1590384 (= e!1021456 (= (list!6789 lt!562645) (++!4565 (list!6789 (charsOf!1727 (h!22881 tokens!457))) (list!6789 (singletonSeq!1434 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0))))))))

(assert (= (and d!473512 res!709530) b!1590381))

(assert (= (and b!1590381 res!709528) b!1590382))

(assert (= (and b!1590382 res!709529) b!1590383))

(assert (= (and b!1590383 res!709527) b!1590384))

(declare-fun m!1883873 () Bool)

(assert (=> b!1590384 m!1883873))

(assert (=> b!1590384 m!1879779))

(declare-fun m!1883875 () Bool)

(assert (=> b!1590384 m!1883875))

(assert (=> b!1590384 m!1879755))

(declare-fun m!1883877 () Bool)

(assert (=> b!1590384 m!1883877))

(assert (=> b!1590384 m!1883875))

(assert (=> b!1590384 m!1883877))

(declare-fun m!1883879 () Bool)

(assert (=> b!1590384 m!1883879))

(declare-fun m!1883881 () Bool)

(assert (=> d!473512 m!1883881))

(declare-fun m!1883883 () Bool)

(assert (=> d!473512 m!1883883))

(declare-fun m!1883885 () Bool)

(assert (=> b!1590383 m!1883885))

(declare-fun m!1883887 () Bool)

(assert (=> b!1590383 m!1883887))

(assert (=> b!1590383 m!1883885))

(assert (=> b!1590383 m!1883887))

(declare-fun m!1883889 () Bool)

(assert (=> b!1590383 m!1883889))

(assert (=> b!1590383 m!1883883))

(assert (=> b!1590383 m!1883883))

(declare-fun m!1883891 () Bool)

(assert (=> b!1590383 m!1883891))

(assert (=> b!1590381 m!1883883))

(assert (=> b!1590381 m!1883883))

(declare-fun m!1883893 () Bool)

(assert (=> b!1590381 m!1883893))

(assert (=> b!1590382 m!1883885))

(assert (=> b!1590382 m!1883887))

(assert (=> b!1590382 m!1883885))

(assert (=> b!1590382 m!1883887))

(assert (=> b!1590382 m!1883889))

(assert (=> b!1590382 m!1883883))

(assert (=> b!1590382 m!1883883))

(assert (=> b!1590382 m!1883891))

(assert (=> d!472708 d!473512))

(assert (=> d!472708 d!472688))

(assert (=> d!472708 d!472828))

(assert (=> d!472708 d!472832))

(assert (=> d!472708 d!472848))

(declare-fun b!1590386 () Bool)

(declare-fun e!1021458 () List!17548)

(assert (=> b!1590386 (= e!1021458 (Cons!17478 (h!22879 (t!144427 lt!560815)) (++!4565 (t!144427 (t!144427 lt!560815)) lt!560831)))))

(declare-fun b!1590387 () Bool)

(declare-fun res!709532 () Bool)

(declare-fun e!1021457 () Bool)

(assert (=> b!1590387 (=> (not res!709532) (not e!1021457))))

(declare-fun lt!562646 () List!17548)

(assert (=> b!1590387 (= res!709532 (= (size!14057 lt!562646) (+ (size!14057 (t!144427 lt!560815)) (size!14057 lt!560831))))))

(declare-fun b!1590388 () Bool)

(assert (=> b!1590388 (= e!1021457 (or (not (= lt!560831 Nil!17478)) (= lt!562646 (t!144427 lt!560815))))))

(declare-fun d!473514 () Bool)

(assert (=> d!473514 e!1021457))

(declare-fun res!709531 () Bool)

(assert (=> d!473514 (=> (not res!709531) (not e!1021457))))

(assert (=> d!473514 (= res!709531 (= (content!2408 lt!562646) (set.union (content!2408 (t!144427 lt!560815)) (content!2408 lt!560831))))))

(assert (=> d!473514 (= lt!562646 e!1021458)))

(declare-fun c!257825 () Bool)

(assert (=> d!473514 (= c!257825 (is-Nil!17478 (t!144427 lt!560815)))))

(assert (=> d!473514 (= (++!4565 (t!144427 lt!560815) lt!560831) lt!562646)))

(declare-fun b!1590385 () Bool)

(assert (=> b!1590385 (= e!1021458 lt!560831)))

(assert (= (and d!473514 c!257825) b!1590385))

(assert (= (and d!473514 (not c!257825)) b!1590386))

(assert (= (and d!473514 res!709531) b!1590387))

(assert (= (and b!1590387 res!709532) b!1590388))

(declare-fun m!1883895 () Bool)

(assert (=> b!1590386 m!1883895))

(declare-fun m!1883897 () Bool)

(assert (=> b!1590387 m!1883897))

(assert (=> b!1590387 m!1881313))

(assert (=> b!1590387 m!1879969))

(declare-fun m!1883899 () Bool)

(assert (=> d!473514 m!1883899))

(assert (=> d!473514 m!1881395))

(assert (=> d!473514 m!1879975))

(assert (=> b!1588580 d!473514))

(declare-fun d!473516 () Bool)

(declare-fun lt!562647 () Bool)

(assert (=> d!473516 (= lt!562647 (isEmpty!10507 (list!6789 (_2!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457))))))))))

(assert (=> d!473516 (= lt!562647 (isEmpty!10518 (c!257383 (_2!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457))))))))))

(assert (=> d!473516 (= (isEmpty!10510 (_2!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (singletonSeq!1435 (h!22881 tokens!457)))))) lt!562647)))

(declare-fun bs!391745 () Bool)

(assert (= bs!391745 d!473516))

(declare-fun m!1883901 () Bool)

(assert (=> bs!391745 m!1883901))

(assert (=> bs!391745 m!1883901))

(declare-fun m!1883903 () Bool)

(assert (=> bs!391745 m!1883903))

(declare-fun m!1883905 () Bool)

(assert (=> bs!391745 m!1883905))

(assert (=> b!1588796 d!473516))

(assert (=> b!1588796 d!473364))

(assert (=> b!1588796 d!473358))

(assert (=> b!1588796 d!472754))

(declare-fun b!1590389 () Bool)

(declare-fun res!709534 () Bool)

(declare-fun e!1021462 () Bool)

(assert (=> b!1590389 (=> (not res!709534) (not e!1021462))))

(declare-fun lt!562648 () Option!3151)

(assert (=> b!1590389 (= res!709534 (= (++!4565 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562648)))) (_2!9880 (get!5002 lt!562648))) lt!560984))))

(declare-fun b!1590390 () Bool)

(declare-fun e!1021459 () Option!3151)

(declare-fun lt!562652 () tuple2!16972)

(assert (=> b!1590390 (= e!1021459 (Some!3150 (tuple2!16957 (Token!5723 (apply!4305 (transformation!3078 (rule!4882 lt!560995)) (seqFromList!1905 (_1!9888 lt!562652))) (rule!4882 lt!560995) (size!14058 (seqFromList!1905 (_1!9888 lt!562652))) (_1!9888 lt!562652)) (_2!9888 lt!562652))))))

(declare-fun lt!562650 () Unit!27502)

(assert (=> b!1590390 (= lt!562650 (longestMatchIsAcceptedByMatchOrIsEmpty!336 (regex!3078 (rule!4882 lt!560995)) lt!560984))))

(declare-fun res!709537 () Bool)

(assert (=> b!1590390 (= res!709537 (isEmpty!10507 (_1!9888 (findLongestMatchInner!352 (regex!3078 (rule!4882 lt!560995)) Nil!17478 (size!14057 Nil!17478) lt!560984 lt!560984 (size!14057 lt!560984)))))))

(declare-fun e!1021460 () Bool)

(assert (=> b!1590390 (=> res!709537 e!1021460)))

(assert (=> b!1590390 e!1021460))

(declare-fun lt!562651 () Unit!27502)

(assert (=> b!1590390 (= lt!562651 lt!562650)))

(declare-fun lt!562649 () Unit!27502)

(assert (=> b!1590390 (= lt!562649 (lemmaSemiInverse!385 (transformation!3078 (rule!4882 lt!560995)) (seqFromList!1905 (_1!9888 lt!562652))))))

(declare-fun b!1590391 () Bool)

(declare-fun res!709539 () Bool)

(assert (=> b!1590391 (=> (not res!709539) (not e!1021462))))

(assert (=> b!1590391 (= res!709539 (= (value!97397 (_1!9880 (get!5002 lt!562648))) (apply!4305 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!562648)))) (seqFromList!1905 (originalCharacters!3892 (_1!9880 (get!5002 lt!562648)))))))))

(declare-fun d!473518 () Bool)

(declare-fun e!1021461 () Bool)

(assert (=> d!473518 e!1021461))

(declare-fun res!709535 () Bool)

(assert (=> d!473518 (=> res!709535 e!1021461)))

(assert (=> d!473518 (= res!709535 (isEmpty!10504 lt!562648))))

(assert (=> d!473518 (= lt!562648 e!1021459)))

(declare-fun c!257826 () Bool)

(assert (=> d!473518 (= c!257826 (isEmpty!10507 (_1!9888 lt!562652)))))

(assert (=> d!473518 (= lt!562652 (findLongestMatch!279 (regex!3078 (rule!4882 lt!560995)) lt!560984))))

(assert (=> d!473518 (ruleValid!715 thiss!17113 (rule!4882 lt!560995))))

(assert (=> d!473518 (= (maxPrefixOneRule!740 thiss!17113 (rule!4882 lt!560995) lt!560984) lt!562648)))

(declare-fun b!1590392 () Bool)

(assert (=> b!1590392 (= e!1021460 (matchR!1925 (regex!3078 (rule!4882 lt!560995)) (_1!9888 (findLongestMatchInner!352 (regex!3078 (rule!4882 lt!560995)) Nil!17478 (size!14057 Nil!17478) lt!560984 lt!560984 (size!14057 lt!560984)))))))

(declare-fun b!1590393 () Bool)

(assert (=> b!1590393 (= e!1021462 (= (size!14055 (_1!9880 (get!5002 lt!562648))) (size!14057 (originalCharacters!3892 (_1!9880 (get!5002 lt!562648))))))))

(declare-fun b!1590394 () Bool)

(declare-fun res!709533 () Bool)

(assert (=> b!1590394 (=> (not res!709533) (not e!1021462))))

(assert (=> b!1590394 (= res!709533 (= (rule!4882 (_1!9880 (get!5002 lt!562648))) (rule!4882 lt!560995)))))

(declare-fun b!1590395 () Bool)

(assert (=> b!1590395 (= e!1021459 None!3150)))

(declare-fun b!1590396 () Bool)

(declare-fun res!709536 () Bool)

(assert (=> b!1590396 (=> (not res!709536) (not e!1021462))))

(assert (=> b!1590396 (= res!709536 (< (size!14057 (_2!9880 (get!5002 lt!562648))) (size!14057 lt!560984)))))

(declare-fun b!1590397 () Bool)

(assert (=> b!1590397 (= e!1021461 e!1021462)))

(declare-fun res!709538 () Bool)

(assert (=> b!1590397 (=> (not res!709538) (not e!1021462))))

(assert (=> b!1590397 (= res!709538 (matchR!1925 (regex!3078 (rule!4882 lt!560995)) (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!562648))))))))

(assert (= (and d!473518 c!257826) b!1590395))

(assert (= (and d!473518 (not c!257826)) b!1590390))

(assert (= (and b!1590390 (not res!709537)) b!1590392))

(assert (= (and d!473518 (not res!709535)) b!1590397))

(assert (= (and b!1590397 res!709538) b!1590389))

(assert (= (and b!1590389 res!709534) b!1590396))

(assert (= (and b!1590396 res!709536) b!1590394))

(assert (= (and b!1590394 res!709533) b!1590391))

(assert (= (and b!1590391 res!709539) b!1590393))

(declare-fun m!1883907 () Bool)

(assert (=> b!1590396 m!1883907))

(declare-fun m!1883909 () Bool)

(assert (=> b!1590396 m!1883909))

(declare-fun m!1883911 () Bool)

(assert (=> b!1590396 m!1883911))

(assert (=> b!1590393 m!1883907))

(declare-fun m!1883913 () Bool)

(assert (=> b!1590393 m!1883913))

(assert (=> b!1590389 m!1883907))

(declare-fun m!1883915 () Bool)

(assert (=> b!1590389 m!1883915))

(assert (=> b!1590389 m!1883915))

(declare-fun m!1883917 () Bool)

(assert (=> b!1590389 m!1883917))

(assert (=> b!1590389 m!1883917))

(declare-fun m!1883919 () Bool)

(assert (=> b!1590389 m!1883919))

(assert (=> b!1590394 m!1883907))

(assert (=> b!1590392 m!1883719))

(assert (=> b!1590392 m!1883911))

(assert (=> b!1590392 m!1883719))

(assert (=> b!1590392 m!1883911))

(declare-fun m!1883921 () Bool)

(assert (=> b!1590392 m!1883921))

(declare-fun m!1883923 () Bool)

(assert (=> b!1590392 m!1883923))

(declare-fun m!1883925 () Bool)

(assert (=> b!1590390 m!1883925))

(declare-fun m!1883927 () Bool)

(assert (=> b!1590390 m!1883927))

(assert (=> b!1590390 m!1883927))

(declare-fun m!1883929 () Bool)

(assert (=> b!1590390 m!1883929))

(assert (=> b!1590390 m!1883719))

(assert (=> b!1590390 m!1883911))

(assert (=> b!1590390 m!1883921))

(assert (=> b!1590390 m!1883911))

(declare-fun m!1883931 () Bool)

(assert (=> b!1590390 m!1883931))

(assert (=> b!1590390 m!1883927))

(declare-fun m!1883933 () Bool)

(assert (=> b!1590390 m!1883933))

(assert (=> b!1590390 m!1883719))

(assert (=> b!1590390 m!1883927))

(declare-fun m!1883935 () Bool)

(assert (=> b!1590390 m!1883935))

(assert (=> b!1590391 m!1883907))

(declare-fun m!1883937 () Bool)

(assert (=> b!1590391 m!1883937))

(assert (=> b!1590391 m!1883937))

(declare-fun m!1883939 () Bool)

(assert (=> b!1590391 m!1883939))

(assert (=> b!1590397 m!1883907))

(assert (=> b!1590397 m!1883915))

(assert (=> b!1590397 m!1883915))

(assert (=> b!1590397 m!1883917))

(assert (=> b!1590397 m!1883917))

(declare-fun m!1883941 () Bool)

(assert (=> b!1590397 m!1883941))

(declare-fun m!1883943 () Bool)

(assert (=> d!473518 m!1883943))

(declare-fun m!1883945 () Bool)

(assert (=> d!473518 m!1883945))

(declare-fun m!1883947 () Bool)

(assert (=> d!473518 m!1883947))

(declare-fun m!1883949 () Bool)

(assert (=> d!473518 m!1883949))

(assert (=> b!1588650 d!473518))

(declare-fun d!473520 () Bool)

(assert (=> d!473520 (isEmpty!10504 (maxPrefixOneRule!740 thiss!17113 (rule!4882 lt!560995) lt!560984))))

(declare-fun lt!562655 () Unit!27502)

(declare-fun choose!9525 (LexerInterface!2707 Rule!5956 List!17549 List!17548) Unit!27502)

(assert (=> d!473520 (= lt!562655 (choose!9525 thiss!17113 (rule!4882 lt!560995) rules!1846 lt!560984))))

(assert (=> d!473520 (not (isEmpty!10500 rules!1846))))

(assert (=> d!473520 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!143 thiss!17113 (rule!4882 lt!560995) rules!1846 lt!560984) lt!562655)))

(declare-fun bs!391746 () Bool)

(assert (= bs!391746 d!473520))

(assert (=> bs!391746 m!1880111))

(assert (=> bs!391746 m!1880111))

(assert (=> bs!391746 m!1880113))

(declare-fun m!1883951 () Bool)

(assert (=> bs!391746 m!1883951))

(assert (=> bs!391746 m!1879839))

(assert (=> b!1588650 d!473520))

(assert (=> b!1588650 d!472676))

(declare-fun d!473522 () Bool)

(assert (=> d!473522 (not (matchR!1925 (regex!3078 (rule!4882 lt!560995)) lt!560994))))

(declare-fun lt!562658 () Unit!27502)

(declare-fun choose!9526 (LexerInterface!2707 Rule!5956 List!17548 List!17548) Unit!27502)

(assert (=> d!473522 (= lt!562658 (choose!9526 thiss!17113 (rule!4882 lt!560995) lt!560994 (++!4565 lt!560815 lt!560831)))))

(assert (=> d!473522 (isPrefix!1338 lt!560994 (++!4565 lt!560815 lt!560831))))

(assert (=> d!473522 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!139 thiss!17113 (rule!4882 lt!560995) lt!560994 (++!4565 lt!560815 lt!560831)) lt!562658)))

(declare-fun bs!391747 () Bool)

(assert (= bs!391747 d!473522))

(assert (=> bs!391747 m!1880109))

(assert (=> bs!391747 m!1879785))

(declare-fun m!1883953 () Bool)

(assert (=> bs!391747 m!1883953))

(assert (=> bs!391747 m!1879785))

(declare-fun m!1883955 () Bool)

(assert (=> bs!391747 m!1883955))

(assert (=> b!1588650 d!473522))

(assert (=> b!1588650 d!472930))

(declare-fun d!473524 () Bool)

(assert (=> d!473524 (= (isEmpty!10504 (maxPrefixOneRule!740 thiss!17113 (rule!4882 lt!560995) lt!560984)) (not (is-Some!3150 (maxPrefixOneRule!740 thiss!17113 (rule!4882 lt!560995) lt!560984))))))

(assert (=> b!1588650 d!473524))

(declare-fun bm!103093 () Bool)

(declare-fun call!103098 () Bool)

(assert (=> bm!103093 (= call!103098 (isEmpty!10507 lt!560994))))

(declare-fun b!1590398 () Bool)

(declare-fun e!1021465 () Bool)

(declare-fun lt!562659 () Bool)

(assert (=> b!1590398 (= e!1021465 (= lt!562659 call!103098))))

(declare-fun b!1590400 () Bool)

(declare-fun res!709546 () Bool)

(declare-fun e!1021469 () Bool)

(assert (=> b!1590400 (=> res!709546 e!1021469)))

(declare-fun e!1021468 () Bool)

(assert (=> b!1590400 (= res!709546 e!1021468)))

(declare-fun res!709540 () Bool)

(assert (=> b!1590400 (=> (not res!709540) (not e!1021468))))

(assert (=> b!1590400 (= res!709540 lt!562659)))

(declare-fun b!1590401 () Bool)

(declare-fun e!1021466 () Bool)

(assert (=> b!1590401 (= e!1021466 (matchR!1925 (derivativeStep!1047 (regex!3078 (rule!4882 lt!560995)) (head!3239 lt!560994)) (tail!2285 lt!560994)))))

(declare-fun b!1590402 () Bool)

(declare-fun res!709547 () Bool)

(assert (=> b!1590402 (=> res!709547 e!1021469)))

(assert (=> b!1590402 (= res!709547 (not (is-ElementMatch!4406 (regex!3078 (rule!4882 lt!560995)))))))

(declare-fun e!1021467 () Bool)

(assert (=> b!1590402 (= e!1021467 e!1021469)))

(declare-fun b!1590403 () Bool)

(declare-fun res!709543 () Bool)

(assert (=> b!1590403 (=> (not res!709543) (not e!1021468))))

(assert (=> b!1590403 (= res!709543 (isEmpty!10507 (tail!2285 lt!560994)))))

(declare-fun b!1590404 () Bool)

(assert (=> b!1590404 (= e!1021467 (not lt!562659))))

(declare-fun b!1590405 () Bool)

(assert (=> b!1590405 (= e!1021465 e!1021467)))

(declare-fun c!257827 () Bool)

(assert (=> b!1590405 (= c!257827 (is-EmptyLang!4406 (regex!3078 (rule!4882 lt!560995))))))

(declare-fun b!1590406 () Bool)

(declare-fun e!1021463 () Bool)

(assert (=> b!1590406 (= e!1021469 e!1021463)))

(declare-fun res!709544 () Bool)

(assert (=> b!1590406 (=> (not res!709544) (not e!1021463))))

(assert (=> b!1590406 (= res!709544 (not lt!562659))))

(declare-fun b!1590407 () Bool)

(assert (=> b!1590407 (= e!1021466 (nullable!1296 (regex!3078 (rule!4882 lt!560995))))))

(declare-fun b!1590408 () Bool)

(declare-fun e!1021464 () Bool)

(assert (=> b!1590408 (= e!1021464 (not (= (head!3239 lt!560994) (c!257384 (regex!3078 (rule!4882 lt!560995))))))))

(declare-fun b!1590409 () Bool)

(declare-fun res!709542 () Bool)

(assert (=> b!1590409 (=> res!709542 e!1021464)))

(assert (=> b!1590409 (= res!709542 (not (isEmpty!10507 (tail!2285 lt!560994))))))

(declare-fun b!1590410 () Bool)

(assert (=> b!1590410 (= e!1021463 e!1021464)))

(declare-fun res!709541 () Bool)

(assert (=> b!1590410 (=> res!709541 e!1021464)))

(assert (=> b!1590410 (= res!709541 call!103098)))

(declare-fun b!1590411 () Bool)

(declare-fun res!709545 () Bool)

(assert (=> b!1590411 (=> (not res!709545) (not e!1021468))))

(assert (=> b!1590411 (= res!709545 (not call!103098))))

(declare-fun b!1590399 () Bool)

(assert (=> b!1590399 (= e!1021468 (= (head!3239 lt!560994) (c!257384 (regex!3078 (rule!4882 lt!560995)))))))

(declare-fun d!473526 () Bool)

(assert (=> d!473526 e!1021465))

(declare-fun c!257828 () Bool)

(assert (=> d!473526 (= c!257828 (is-EmptyExpr!4406 (regex!3078 (rule!4882 lt!560995))))))

(assert (=> d!473526 (= lt!562659 e!1021466)))

(declare-fun c!257829 () Bool)

(assert (=> d!473526 (= c!257829 (isEmpty!10507 lt!560994))))

(assert (=> d!473526 (validRegex!1743 (regex!3078 (rule!4882 lt!560995)))))

(assert (=> d!473526 (= (matchR!1925 (regex!3078 (rule!4882 lt!560995)) lt!560994) lt!562659)))

(assert (= (and d!473526 c!257829) b!1590407))

(assert (= (and d!473526 (not c!257829)) b!1590401))

(assert (= (and d!473526 c!257828) b!1590398))

(assert (= (and d!473526 (not c!257828)) b!1590405))

(assert (= (and b!1590405 c!257827) b!1590404))

(assert (= (and b!1590405 (not c!257827)) b!1590402))

(assert (= (and b!1590402 (not res!709547)) b!1590400))

(assert (= (and b!1590400 res!709540) b!1590411))

(assert (= (and b!1590411 res!709545) b!1590403))

(assert (= (and b!1590403 res!709543) b!1590399))

(assert (= (and b!1590400 (not res!709546)) b!1590406))

(assert (= (and b!1590406 res!709544) b!1590410))

(assert (= (and b!1590410 (not res!709541)) b!1590409))

(assert (= (and b!1590409 (not res!709542)) b!1590408))

(assert (= (or b!1590398 b!1590410 b!1590411) bm!103093))

(declare-fun m!1883957 () Bool)

(assert (=> b!1590399 m!1883957))

(assert (=> b!1590408 m!1883957))

(declare-fun m!1883959 () Bool)

(assert (=> d!473526 m!1883959))

(declare-fun m!1883961 () Bool)

(assert (=> d!473526 m!1883961))

(declare-fun m!1883963 () Bool)

(assert (=> b!1590409 m!1883963))

(assert (=> b!1590409 m!1883963))

(declare-fun m!1883965 () Bool)

(assert (=> b!1590409 m!1883965))

(assert (=> b!1590401 m!1883957))

(assert (=> b!1590401 m!1883957))

(declare-fun m!1883967 () Bool)

(assert (=> b!1590401 m!1883967))

(assert (=> b!1590401 m!1883963))

(assert (=> b!1590401 m!1883967))

(assert (=> b!1590401 m!1883963))

(declare-fun m!1883969 () Bool)

(assert (=> b!1590401 m!1883969))

(assert (=> bm!103093 m!1883959))

(assert (=> b!1590403 m!1883963))

(assert (=> b!1590403 m!1883963))

(assert (=> b!1590403 m!1883965))

(declare-fun m!1883971 () Bool)

(assert (=> b!1590407 m!1883971))

(assert (=> b!1588650 d!473526))

(assert (=> b!1588650 d!472948))

(declare-fun b!1590414 () Bool)

(declare-fun e!1021471 () List!17550)

(assert (=> b!1590414 (= e!1021471 (list!6800 (xs!8613 (c!257385 lt!560829))))))

(declare-fun b!1590415 () Bool)

(assert (=> b!1590415 (= e!1021471 (++!4571 (list!6794 (left!14110 (c!257385 lt!560829))) (list!6794 (right!14440 (c!257385 lt!560829)))))))

(declare-fun d!473528 () Bool)

(declare-fun c!257830 () Bool)

(assert (=> d!473528 (= c!257830 (is-Empty!5805 (c!257385 lt!560829)))))

(declare-fun e!1021470 () List!17550)

(assert (=> d!473528 (= (list!6794 (c!257385 lt!560829)) e!1021470)))

(declare-fun b!1590413 () Bool)

(assert (=> b!1590413 (= e!1021470 e!1021471)))

(declare-fun c!257831 () Bool)

(assert (=> b!1590413 (= c!257831 (is-Leaf!8565 (c!257385 lt!560829)))))

(declare-fun b!1590412 () Bool)

(assert (=> b!1590412 (= e!1021470 Nil!17480)))

(assert (= (and d!473528 c!257830) b!1590412))

(assert (= (and d!473528 (not c!257830)) b!1590413))

(assert (= (and b!1590413 c!257831) b!1590414))

(assert (= (and b!1590413 (not c!257831)) b!1590415))

(declare-fun m!1883973 () Bool)

(assert (=> b!1590414 m!1883973))

(declare-fun m!1883975 () Bool)

(assert (=> b!1590415 m!1883975))

(declare-fun m!1883977 () Bool)

(assert (=> b!1590415 m!1883977))

(assert (=> b!1590415 m!1883975))

(assert (=> b!1590415 m!1883977))

(declare-fun m!1883979 () Bool)

(assert (=> b!1590415 m!1883979))

(assert (=> d!472702 d!473528))

(declare-fun d!473530 () Bool)

(assert (=> d!473530 (= (isEmpty!10504 lt!561060) (not (is-Some!3150 lt!561060)))))

(assert (=> d!472752 d!473530))

(declare-fun b!1590419 () Bool)

(declare-fun e!1021473 () Bool)

(assert (=> b!1590419 (= e!1021473 (>= (size!14057 lt!560816) (size!14057 lt!560816)))))

(declare-fun d!473532 () Bool)

(assert (=> d!473532 e!1021473))

(declare-fun res!709551 () Bool)

(assert (=> d!473532 (=> res!709551 e!1021473)))

(declare-fun lt!562660 () Bool)

(assert (=> d!473532 (= res!709551 (not lt!562660))))

(declare-fun e!1021472 () Bool)

(assert (=> d!473532 (= lt!562660 e!1021472)))

(declare-fun res!709550 () Bool)

(assert (=> d!473532 (=> res!709550 e!1021472)))

(assert (=> d!473532 (= res!709550 (is-Nil!17478 lt!560816))))

(assert (=> d!473532 (= (isPrefix!1338 lt!560816 lt!560816) lt!562660)))

(declare-fun b!1590416 () Bool)

(declare-fun e!1021474 () Bool)

(assert (=> b!1590416 (= e!1021472 e!1021474)))

(declare-fun res!709549 () Bool)

(assert (=> b!1590416 (=> (not res!709549) (not e!1021474))))

(assert (=> b!1590416 (= res!709549 (not (is-Nil!17478 lt!560816)))))

(declare-fun b!1590418 () Bool)

(assert (=> b!1590418 (= e!1021474 (isPrefix!1338 (tail!2285 lt!560816) (tail!2285 lt!560816)))))

(declare-fun b!1590417 () Bool)

(declare-fun res!709548 () Bool)

(assert (=> b!1590417 (=> (not res!709548) (not e!1021474))))

(assert (=> b!1590417 (= res!709548 (= (head!3239 lt!560816) (head!3239 lt!560816)))))

(assert (= (and d!473532 (not res!709550)) b!1590416))

(assert (= (and b!1590416 res!709549) b!1590417))

(assert (= (and b!1590417 res!709548) b!1590418))

(assert (= (and d!473532 (not res!709551)) b!1590419))

(assert (=> b!1590419 m!1880255))

(assert (=> b!1590419 m!1880255))

(declare-fun m!1883981 () Bool)

(assert (=> b!1590418 m!1883981))

(assert (=> b!1590418 m!1883981))

(assert (=> b!1590418 m!1883981))

(assert (=> b!1590418 m!1883981))

(declare-fun m!1883983 () Bool)

(assert (=> b!1590418 m!1883983))

(declare-fun m!1883985 () Bool)

(assert (=> b!1590417 m!1883985))

(assert (=> b!1590417 m!1883985))

(assert (=> d!472752 d!473532))

(declare-fun d!473534 () Bool)

(assert (=> d!473534 (isPrefix!1338 lt!560816 lt!560816)))

(declare-fun lt!562663 () Unit!27502)

(declare-fun choose!9527 (List!17548 List!17548) Unit!27502)

(assert (=> d!473534 (= lt!562663 (choose!9527 lt!560816 lt!560816))))

(assert (=> d!473534 (= (lemmaIsPrefixRefl!925 lt!560816 lt!560816) lt!562663)))

(declare-fun bs!391748 () Bool)

(assert (= bs!391748 d!473534))

(assert (=> bs!391748 m!1880271))

(declare-fun m!1883987 () Bool)

(assert (=> bs!391748 m!1883987))

(assert (=> d!472752 d!473534))

(declare-fun d!473536 () Bool)

(assert (=> d!473536 true))

(declare-fun lt!562666 () Bool)

(declare-fun lambda!66671 () Int)

(declare-fun forall!4019 (List!17549 Int) Bool)

(assert (=> d!473536 (= lt!562666 (forall!4019 rules!1846 lambda!66671))))

(declare-fun e!1021479 () Bool)

(assert (=> d!473536 (= lt!562666 e!1021479)))

(declare-fun res!709557 () Bool)

(assert (=> d!473536 (=> res!709557 e!1021479)))

(assert (=> d!473536 (= res!709557 (not (is-Cons!17479 rules!1846)))))

(assert (=> d!473536 (= (rulesValidInductive!927 thiss!17113 rules!1846) lt!562666)))

(declare-fun b!1590424 () Bool)

(declare-fun e!1021480 () Bool)

(assert (=> b!1590424 (= e!1021479 e!1021480)))

(declare-fun res!709556 () Bool)

(assert (=> b!1590424 (=> (not res!709556) (not e!1021480))))

(assert (=> b!1590424 (= res!709556 (ruleValid!715 thiss!17113 (h!22880 rules!1846)))))

(declare-fun b!1590425 () Bool)

(assert (=> b!1590425 (= e!1021480 (rulesValidInductive!927 thiss!17113 (t!144428 rules!1846)))))

(assert (= (and d!473536 (not res!709557)) b!1590424))

(assert (= (and b!1590424 res!709556) b!1590425))

(declare-fun m!1883989 () Bool)

(assert (=> d!473536 m!1883989))

(assert (=> b!1590424 m!1883751))

(assert (=> b!1590425 m!1883107))

(assert (=> d!472752 d!473536))

(assert (=> d!472772 d!472670))

(assert (=> d!472772 d!473382))

(assert (=> d!472772 d!473280))

(assert (=> d!472772 d!472690))

(declare-fun d!473538 () Bool)

(assert (=> d!473538 (= (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457)))))) (list!6794 (c!257385 (_1!9881 (lex!1191 thiss!17113 rules!1846 (print!1238 thiss!17113 (seqFromList!1906 (t!144429 tokens!457))))))))))

(declare-fun bs!391749 () Bool)

(assert (= bs!391749 d!473538))

(declare-fun m!1883991 () Bool)

(assert (=> bs!391749 m!1883991))

(assert (=> d!472772 d!473538))

(declare-fun d!473540 () Bool)

(declare-fun lt!562667 () Int)

(assert (=> d!473540 (= lt!562667 (size!14057 (list!6789 (_2!9881 lt!560913))))))

(assert (=> d!473540 (= lt!562667 (size!14070 (c!257383 (_2!9881 lt!560913))))))

(assert (=> d!473540 (= (size!14058 (_2!9881 lt!560913)) lt!562667)))

(declare-fun bs!391750 () Bool)

(assert (= bs!391750 d!473540))

(assert (=> bs!391750 m!1879989))

(assert (=> bs!391750 m!1879989))

(declare-fun m!1883993 () Bool)

(assert (=> bs!391750 m!1883993))

(declare-fun m!1883995 () Bool)

(assert (=> bs!391750 m!1883995))

(assert (=> b!1588598 d!473540))

(declare-fun d!473542 () Bool)

(declare-fun lt!562668 () Int)

(assert (=> d!473542 (= lt!562668 (size!14057 (list!6789 lt!560814)))))

(assert (=> d!473542 (= lt!562668 (size!14070 (c!257383 lt!560814)))))

(assert (=> d!473542 (= (size!14058 lt!560814) lt!562668)))

(declare-fun bs!391751 () Bool)

(assert (= bs!391751 d!473542))

(assert (=> bs!391751 m!1879775))

(assert (=> bs!391751 m!1879775))

(assert (=> bs!391751 m!1883159))

(declare-fun m!1883997 () Bool)

(assert (=> bs!391751 m!1883997))

(assert (=> b!1588598 d!473542))

(declare-fun d!473544 () Bool)

(declare-fun res!709558 () Bool)

(declare-fun e!1021481 () Bool)

(assert (=> d!473544 (=> res!709558 e!1021481)))

(assert (=> d!473544 (= res!709558 (or (not (is-Cons!17480 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))))) (not (is-Cons!17480 (t!144429 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))))))))))

(assert (=> d!473544 (= (tokensListTwoByTwoPredicateSeparableList!400 thiss!17113 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))) rules!1846) e!1021481)))

(declare-fun b!1590428 () Bool)

(declare-fun e!1021482 () Bool)

(assert (=> b!1590428 (= e!1021481 e!1021482)))

(declare-fun res!709559 () Bool)

(assert (=> b!1590428 (=> (not res!709559) (not e!1021482))))

(assert (=> b!1590428 (= res!709559 (separableTokensPredicate!649 thiss!17113 (h!22881 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457)))) (h!22881 (t!144429 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))))) rules!1846))))

(declare-fun lt!562672 () Unit!27502)

(declare-fun Unit!27608 () Unit!27502)

(assert (=> b!1590428 (= lt!562672 Unit!27608)))

(assert (=> b!1590428 (> (size!14058 (charsOf!1727 (h!22881 (t!144429 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))))))) 0)))

(declare-fun lt!562674 () Unit!27502)

(declare-fun Unit!27609 () Unit!27502)

(assert (=> b!1590428 (= lt!562674 Unit!27609)))

(assert (=> b!1590428 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 (t!144429 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))))))))

(declare-fun lt!562670 () Unit!27502)

(declare-fun Unit!27610 () Unit!27502)

(assert (=> b!1590428 (= lt!562670 Unit!27610)))

(assert (=> b!1590428 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457)))))))

(declare-fun lt!562671 () Unit!27502)

(declare-fun lt!562675 () Unit!27502)

(assert (=> b!1590428 (= lt!562671 lt!562675)))

(assert (=> b!1590428 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 (t!144429 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))))))))

(assert (=> b!1590428 (= lt!562675 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!530 thiss!17113 rules!1846 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457)))))))))

(declare-fun lt!562673 () Unit!27502)

(declare-fun lt!562669 () Unit!27502)

(assert (=> b!1590428 (= lt!562673 lt!562669)))

(assert (=> b!1590428 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457)))))))

(assert (=> b!1590428 (= lt!562669 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!530 thiss!17113 rules!1846 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))) (h!22881 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))))))))

(declare-fun b!1590429 () Bool)

(assert (=> b!1590429 (= e!1021482 (tokensListTwoByTwoPredicateSeparableList!400 thiss!17113 (Cons!17480 (h!22881 (t!144429 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457))))) (t!144429 (t!144429 (Cons!17480 (h!22881 (t!144429 tokens!457)) (t!144429 (t!144429 tokens!457)))))) rules!1846))))

(assert (= (and d!473544 (not res!709558)) b!1590428))

(assert (= (and b!1590428 res!709559) b!1590429))

(declare-fun m!1883999 () Bool)

(assert (=> b!1590428 m!1883999))

(declare-fun m!1884001 () Bool)

(assert (=> b!1590428 m!1884001))

(declare-fun m!1884003 () Bool)

(assert (=> b!1590428 m!1884003))

(declare-fun m!1884005 () Bool)

(assert (=> b!1590428 m!1884005))

(declare-fun m!1884007 () Bool)

(assert (=> b!1590428 m!1884007))

(declare-fun m!1884009 () Bool)

(assert (=> b!1590428 m!1884009))

(declare-fun m!1884011 () Bool)

(assert (=> b!1590428 m!1884011))

(assert (=> b!1590428 m!1884009))

(declare-fun m!1884013 () Bool)

(assert (=> b!1590429 m!1884013))

(assert (=> b!1588624 d!473544))

(declare-fun d!473546 () Bool)

(assert (=> d!473546 (= (inv!22892 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457))))) (isBalanced!1721 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun bs!391752 () Bool)

(assert (= bs!391752 d!473546))

(declare-fun m!1884015 () Bool)

(assert (=> bs!391752 m!1884015))

(assert (=> tb!89411 d!473546))

(assert (=> b!1588758 d!472980))

(assert (=> b!1588758 d!472982))

(assert (=> b!1588758 d!472984))

(declare-fun bs!391753 () Bool)

(declare-fun d!473548 () Bool)

(assert (= bs!391753 (and d!473548 d!473386)))

(declare-fun lambda!66672 () Int)

(assert (=> bs!391753 (= (= (toValue!4489 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toValue!4489 (transformation!3078 (h!22880 rules!1846)))) (= lambda!66672 lambda!66662))))

(assert (=> d!473548 true))

(assert (=> d!473548 (< (dynLambda!7769 order!10343 (toValue!4489 (transformation!3078 (rule!4882 (h!22881 tokens!457))))) (dynLambda!7780 order!10353 lambda!66672))))

(assert (=> d!473548 (= (equivClasses!1106 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toValue!4489 (transformation!3078 (rule!4882 (h!22881 tokens!457))))) (Forall2!507 lambda!66672))))

(declare-fun bs!391754 () Bool)

(assert (= bs!391754 d!473548))

(declare-fun m!1884017 () Bool)

(assert (=> bs!391754 m!1884017))

(assert (=> b!1588614 d!473548))

(declare-fun d!473550 () Bool)

(assert (=> d!473550 (= (list!6790 lt!561067) (list!6794 (c!257385 lt!561067)))))

(declare-fun bs!391755 () Bool)

(assert (= bs!391755 d!473550))

(declare-fun m!1884019 () Bool)

(assert (=> bs!391755 m!1884019))

(assert (=> d!472754 d!473550))

(declare-fun d!473552 () Bool)

(declare-fun e!1021487 () Bool)

(assert (=> d!473552 e!1021487))

(declare-fun res!709565 () Bool)

(assert (=> d!473552 (=> (not res!709565) (not e!1021487))))

(declare-fun lt!562684 () BalanceConc!11554)

(assert (=> d!473552 (= res!709565 (= (list!6790 lt!562684) (Cons!17480 (h!22881 tokens!457) Nil!17480)))))

(declare-fun choose!9528 (Token!5722) BalanceConc!11554)

(assert (=> d!473552 (= lt!562684 (choose!9528 (h!22881 tokens!457)))))

(assert (=> d!473552 (= (singleton!599 (h!22881 tokens!457)) lt!562684)))

(declare-fun b!1590435 () Bool)

(assert (=> b!1590435 (= e!1021487 (isBalanced!1719 (c!257385 lt!562684)))))

(assert (= (and d!473552 res!709565) b!1590435))

(declare-fun m!1884037 () Bool)

(assert (=> d!473552 m!1884037))

(declare-fun m!1884039 () Bool)

(assert (=> d!473552 m!1884039))

(declare-fun m!1884041 () Bool)

(assert (=> b!1590435 m!1884041))

(assert (=> d!472754 d!473552))

(declare-fun b!1590439 () Bool)

(declare-fun e!1021489 () Bool)

(assert (=> b!1590439 (= e!1021489 (>= (size!14057 (++!4565 lt!560815 lt!560831)) (size!14057 lt!560815)))))

(declare-fun d!473560 () Bool)

(assert (=> d!473560 e!1021489))

(declare-fun res!709569 () Bool)

(assert (=> d!473560 (=> res!709569 e!1021489)))

(declare-fun lt!562685 () Bool)

(assert (=> d!473560 (= res!709569 (not lt!562685))))

(declare-fun e!1021488 () Bool)

(assert (=> d!473560 (= lt!562685 e!1021488)))

(declare-fun res!709568 () Bool)

(assert (=> d!473560 (=> res!709568 e!1021488)))

(assert (=> d!473560 (= res!709568 (is-Nil!17478 lt!560815))))

(assert (=> d!473560 (= (isPrefix!1338 lt!560815 (++!4565 lt!560815 lt!560831)) lt!562685)))

(declare-fun b!1590436 () Bool)

(declare-fun e!1021490 () Bool)

(assert (=> b!1590436 (= e!1021488 e!1021490)))

(declare-fun res!709567 () Bool)

(assert (=> b!1590436 (=> (not res!709567) (not e!1021490))))

(assert (=> b!1590436 (= res!709567 (not (is-Nil!17478 (++!4565 lt!560815 lt!560831))))))

(declare-fun b!1590438 () Bool)

(assert (=> b!1590438 (= e!1021490 (isPrefix!1338 (tail!2285 lt!560815) (tail!2285 (++!4565 lt!560815 lt!560831))))))

(declare-fun b!1590437 () Bool)

(declare-fun res!709566 () Bool)

(assert (=> b!1590437 (=> (not res!709566) (not e!1021490))))

(assert (=> b!1590437 (= res!709566 (= (head!3239 lt!560815) (head!3239 (++!4565 lt!560815 lt!560831))))))

(assert (= (and d!473560 (not res!709568)) b!1590436))

(assert (= (and b!1590436 res!709567) b!1590437))

(assert (= (and b!1590437 res!709566) b!1590438))

(assert (= (and d!473560 (not res!709569)) b!1590439))

(assert (=> b!1590439 m!1879785))

(assert (=> b!1590439 m!1881167))

(assert (=> b!1590439 m!1879967))

(assert (=> b!1590438 m!1880671))

(assert (=> b!1590438 m!1879785))

(assert (=> b!1590438 m!1881173))

(assert (=> b!1590438 m!1880671))

(assert (=> b!1590438 m!1881173))

(declare-fun m!1884043 () Bool)

(assert (=> b!1590438 m!1884043))

(assert (=> b!1590437 m!1880677))

(assert (=> b!1590437 m!1879785))

(assert (=> b!1590437 m!1881179))

(assert (=> d!472810 d!473560))

(assert (=> d!472810 d!472676))

(declare-fun d!473562 () Bool)

(assert (=> d!473562 (isPrefix!1338 lt!560815 (++!4565 lt!560815 lt!560831))))

(assert (=> d!473562 true))

(declare-fun _$46!1056 () Unit!27502)

(assert (=> d!473562 (= (choose!9515 lt!560815 lt!560831) _$46!1056)))

(declare-fun bs!391759 () Bool)

(assert (= bs!391759 d!473562))

(assert (=> bs!391759 m!1879785))

(assert (=> bs!391759 m!1879785))

(assert (=> bs!391759 m!1880681))

(assert (=> d!472810 d!473562))

(declare-fun d!473566 () Bool)

(declare-fun c!257836 () Bool)

(assert (=> d!473566 (= c!257836 (is-Node!5804 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457))))))))

(declare-fun e!1021503 () Bool)

(assert (=> d!473566 (= (inv!22891 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457))))) e!1021503)))

(declare-fun b!1590456 () Bool)

(declare-fun inv!22897 (Conc!5804) Bool)

(assert (=> b!1590456 (= e!1021503 (inv!22897 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457))))))))

(declare-fun b!1590457 () Bool)

(declare-fun e!1021504 () Bool)

(assert (=> b!1590457 (= e!1021503 e!1021504)))

(declare-fun res!709578 () Bool)

(assert (=> b!1590457 (= res!709578 (not (is-Leaf!8564 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457)))))))))

(assert (=> b!1590457 (=> res!709578 e!1021504)))

(declare-fun b!1590458 () Bool)

(declare-fun inv!22898 (Conc!5804) Bool)

(assert (=> b!1590458 (= e!1021504 (inv!22898 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457))))))))

(assert (= (and d!473566 c!257836) b!1590456))

(assert (= (and d!473566 (not c!257836)) b!1590457))

(assert (= (and b!1590457 (not res!709578)) b!1590458))

(declare-fun m!1884063 () Bool)

(assert (=> b!1590456 m!1884063))

(declare-fun m!1884065 () Bool)

(assert (=> b!1590458 m!1884065))

(assert (=> b!1588605 d!473566))

(declare-fun b!1590460 () Bool)

(declare-fun e!1021506 () List!17548)

(assert (=> b!1590460 (= e!1021506 (Cons!17478 (h!22879 (t!144427 lt!560815)) (++!4565 (t!144427 (t!144427 lt!560815)) (list!6789 lt!560818))))))

(declare-fun b!1590461 () Bool)

(declare-fun res!709580 () Bool)

(declare-fun e!1021505 () Bool)

(assert (=> b!1590461 (=> (not res!709580) (not e!1021505))))

(declare-fun lt!562689 () List!17548)

(assert (=> b!1590461 (= res!709580 (= (size!14057 lt!562689) (+ (size!14057 (t!144427 lt!560815)) (size!14057 (list!6789 lt!560818)))))))

(declare-fun b!1590462 () Bool)

(assert (=> b!1590462 (= e!1021505 (or (not (= (list!6789 lt!560818) Nil!17478)) (= lt!562689 (t!144427 lt!560815))))))

(declare-fun d!473572 () Bool)

(assert (=> d!473572 e!1021505))

(declare-fun res!709579 () Bool)

(assert (=> d!473572 (=> (not res!709579) (not e!1021505))))

(assert (=> d!473572 (= res!709579 (= (content!2408 lt!562689) (set.union (content!2408 (t!144427 lt!560815)) (content!2408 (list!6789 lt!560818)))))))

(assert (=> d!473572 (= lt!562689 e!1021506)))

(declare-fun c!257837 () Bool)

(assert (=> d!473572 (= c!257837 (is-Nil!17478 (t!144427 lt!560815)))))

(assert (=> d!473572 (= (++!4565 (t!144427 lt!560815) (list!6789 lt!560818)) lt!562689)))

(declare-fun b!1590459 () Bool)

(assert (=> b!1590459 (= e!1021506 (list!6789 lt!560818))))

(assert (= (and d!473572 c!257837) b!1590459))

(assert (= (and d!473572 (not c!257837)) b!1590460))

(assert (= (and d!473572 res!709579) b!1590461))

(assert (= (and b!1590461 res!709580) b!1590462))

(assert (=> b!1590460 m!1879801))

(declare-fun m!1884067 () Bool)

(assert (=> b!1590460 m!1884067))

(declare-fun m!1884069 () Bool)

(assert (=> b!1590461 m!1884069))

(assert (=> b!1590461 m!1881313))

(assert (=> b!1590461 m!1879801))

(assert (=> b!1590461 m!1880159))

(declare-fun m!1884071 () Bool)

(assert (=> d!473572 m!1884071))

(assert (=> d!473572 m!1881395))

(assert (=> d!473572 m!1879801))

(assert (=> d!473572 m!1880163))

(assert (=> b!1588664 d!473572))

(assert (=> b!1588949 d!473422))

(declare-fun d!473574 () Bool)

(assert (=> d!473574 (= (inv!22892 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457)))) (isBalanced!1721 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457))))))))

(declare-fun bs!391760 () Bool)

(assert (= bs!391760 d!473574))

(declare-fun m!1884073 () Bool)

(assert (=> bs!391760 m!1884073))

(assert (=> tb!89399 d!473574))

(declare-fun d!473576 () Bool)

(assert (=> d!473576 (= (isEmpty!10507 (++!4565 lt!560815 (list!6789 lt!560818))) (is-Nil!17478 (++!4565 lt!560815 (list!6789 lt!560818))))))

(assert (=> d!472728 d!473576))

(declare-fun bm!103094 () Bool)

(declare-fun call!103099 () Bool)

(assert (=> bm!103094 (= call!103099 (isEmpty!10507 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))))))

(declare-fun b!1590463 () Bool)

(declare-fun e!1021509 () Bool)

(declare-fun lt!562690 () Bool)

(assert (=> b!1590463 (= e!1021509 (= lt!562690 call!103099))))

(declare-fun b!1590465 () Bool)

(declare-fun res!709587 () Bool)

(declare-fun e!1021513 () Bool)

(assert (=> b!1590465 (=> res!709587 e!1021513)))

(declare-fun e!1021512 () Bool)

(assert (=> b!1590465 (= res!709587 e!1021512)))

(declare-fun res!709581 () Bool)

(assert (=> b!1590465 (=> (not res!709581) (not e!1021512))))

(assert (=> b!1590465 (= res!709581 lt!562690)))

(declare-fun b!1590466 () Bool)

(declare-fun e!1021510 () Bool)

(assert (=> b!1590466 (= e!1021510 (matchR!1925 (derivativeStep!1047 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))) (head!3239 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060)))))) (tail!2285 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060)))))))))

(declare-fun b!1590467 () Bool)

(declare-fun res!709588 () Bool)

(assert (=> b!1590467 (=> res!709588 e!1021513)))

(assert (=> b!1590467 (= res!709588 (not (is-ElementMatch!4406 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))))))

(declare-fun e!1021511 () Bool)

(assert (=> b!1590467 (= e!1021511 e!1021513)))

(declare-fun b!1590468 () Bool)

(declare-fun res!709584 () Bool)

(assert (=> b!1590468 (=> (not res!709584) (not e!1021512))))

(assert (=> b!1590468 (= res!709584 (isEmpty!10507 (tail!2285 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060)))))))))

(declare-fun b!1590469 () Bool)

(assert (=> b!1590469 (= e!1021511 (not lt!562690))))

(declare-fun b!1590470 () Bool)

(assert (=> b!1590470 (= e!1021509 e!1021511)))

(declare-fun c!257838 () Bool)

(assert (=> b!1590470 (= c!257838 (is-EmptyLang!4406 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561060))))))))

(declare-fun b!1590471 () Bool)

(declare-fun e!1021507 () Bool)

(assert (=> b!1590471 (= e!1021513 e!1021507)))

(declare-fun res!709585 () Bool)

(assert (=> b!1590471 (=> (not res!709585) (not e!1021507))))

(assert (=> b!1590471 (= res!709585 (not lt!562690))))

(declare-fun b!1590472 () Bool)

(assert (=> b!1590472 (= e!1021510 (nullable!1296 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561060))))))))

(declare-fun b!1590473 () Bool)

(declare-fun e!1021508 () Bool)

(assert (=> b!1590473 (= e!1021508 (not (= (head!3239 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))) (c!257384 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561060))))))))))

(declare-fun b!1590474 () Bool)

(declare-fun res!709583 () Bool)

(assert (=> b!1590474 (=> res!709583 e!1021508)))

(assert (=> b!1590474 (= res!709583 (not (isEmpty!10507 (tail!2285 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))))))))

(declare-fun b!1590475 () Bool)

(assert (=> b!1590475 (= e!1021507 e!1021508)))

(declare-fun res!709582 () Bool)

(assert (=> b!1590475 (=> res!709582 e!1021508)))

(assert (=> b!1590475 (= res!709582 call!103099)))

(declare-fun b!1590476 () Bool)

(declare-fun res!709586 () Bool)

(assert (=> b!1590476 (=> (not res!709586) (not e!1021512))))

(assert (=> b!1590476 (= res!709586 (not call!103099))))

(declare-fun b!1590464 () Bool)

(assert (=> b!1590464 (= e!1021512 (= (head!3239 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))) (c!257384 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))))))

(declare-fun d!473578 () Bool)

(assert (=> d!473578 e!1021509))

(declare-fun c!257839 () Bool)

(assert (=> d!473578 (= c!257839 (is-EmptyExpr!4406 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561060))))))))

(assert (=> d!473578 (= lt!562690 e!1021510)))

(declare-fun c!257840 () Bool)

(assert (=> d!473578 (= c!257840 (isEmpty!10507 (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))))))

(assert (=> d!473578 (validRegex!1743 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))))

(assert (=> d!473578 (= (matchR!1925 (regex!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))) (list!6789 (charsOf!1727 (_1!9880 (get!5002 lt!561060))))) lt!562690)))

(assert (= (and d!473578 c!257840) b!1590472))

(assert (= (and d!473578 (not c!257840)) b!1590466))

(assert (= (and d!473578 c!257839) b!1590463))

(assert (= (and d!473578 (not c!257839)) b!1590470))

(assert (= (and b!1590470 c!257838) b!1590469))

(assert (= (and b!1590470 (not c!257838)) b!1590467))

(assert (= (and b!1590467 (not res!709588)) b!1590465))

(assert (= (and b!1590465 res!709581) b!1590476))

(assert (= (and b!1590476 res!709586) b!1590468))

(assert (= (and b!1590468 res!709584) b!1590464))

(assert (= (and b!1590465 (not res!709587)) b!1590471))

(assert (= (and b!1590471 res!709585) b!1590475))

(assert (= (and b!1590475 (not res!709582)) b!1590474))

(assert (= (and b!1590474 (not res!709583)) b!1590473))

(assert (= (or b!1590463 b!1590475 b!1590476) bm!103094))

(assert (=> b!1590464 m!1880249))

(declare-fun m!1884075 () Bool)

(assert (=> b!1590464 m!1884075))

(assert (=> b!1590473 m!1880249))

(assert (=> b!1590473 m!1884075))

(assert (=> d!473578 m!1880249))

(declare-fun m!1884077 () Bool)

(assert (=> d!473578 m!1884077))

(declare-fun m!1884079 () Bool)

(assert (=> d!473578 m!1884079))

(assert (=> b!1590474 m!1880249))

(declare-fun m!1884081 () Bool)

(assert (=> b!1590474 m!1884081))

(assert (=> b!1590474 m!1884081))

(declare-fun m!1884083 () Bool)

(assert (=> b!1590474 m!1884083))

(assert (=> b!1590466 m!1880249))

(assert (=> b!1590466 m!1884075))

(assert (=> b!1590466 m!1884075))

(declare-fun m!1884085 () Bool)

(assert (=> b!1590466 m!1884085))

(assert (=> b!1590466 m!1880249))

(assert (=> b!1590466 m!1884081))

(assert (=> b!1590466 m!1884085))

(assert (=> b!1590466 m!1884081))

(declare-fun m!1884087 () Bool)

(assert (=> b!1590466 m!1884087))

(assert (=> bm!103094 m!1880249))

(assert (=> bm!103094 m!1884077))

(assert (=> b!1590468 m!1880249))

(assert (=> b!1590468 m!1884081))

(assert (=> b!1590468 m!1884081))

(assert (=> b!1590468 m!1884083))

(declare-fun m!1884089 () Bool)

(assert (=> b!1590472 m!1884089))

(assert (=> b!1588761 d!473578))

(assert (=> b!1588761 d!472984))

(assert (=> b!1588761 d!472980))

(assert (=> b!1588761 d!472982))

(declare-fun d!473580 () Bool)

(assert (=> d!473580 (= (list!6789 lt!561337) (list!6793 (c!257383 lt!561337)))))

(declare-fun bs!391761 () Bool)

(assert (= bs!391761 d!473580))

(declare-fun m!1884091 () Bool)

(assert (=> bs!391761 m!1884091))

(assert (=> d!472816 d!473580))

(declare-fun d!473582 () Bool)

(declare-fun e!1021518 () Bool)

(assert (=> d!473582 e!1021518))

(declare-fun res!709595 () Bool)

(assert (=> d!473582 (=> (not res!709595) (not e!1021518))))

(declare-fun lt!562695 () BalanceConc!11552)

(assert (=> d!473582 (= res!709595 (= (list!6789 lt!562695) (Cons!17478 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0) Nil!17478)))))

(declare-fun choose!9529 (C!8986) BalanceConc!11552)

(assert (=> d!473582 (= lt!562695 (choose!9529 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0)))))

(assert (=> d!473582 (= (singleton!601 (apply!4301 (charsOf!1727 (h!22881 (t!144429 tokens!457))) 0)) lt!562695)))

(declare-fun b!1590483 () Bool)

(assert (=> b!1590483 (= e!1021518 (isBalanced!1721 (c!257383 lt!562695)))))

(assert (= (and d!473582 res!709595) b!1590483))

(declare-fun m!1884093 () Bool)

(assert (=> d!473582 m!1884093))

(assert (=> d!473582 m!1879753))

(declare-fun m!1884095 () Bool)

(assert (=> d!473582 m!1884095))

(declare-fun m!1884097 () Bool)

(assert (=> b!1590483 m!1884097))

(assert (=> d!472816 d!473582))

(declare-fun bs!391762 () Bool)

(declare-fun d!473584 () Bool)

(assert (= bs!391762 (and d!473584 d!472734)))

(declare-fun lambda!66673 () Int)

(assert (=> bs!391762 (= lambda!66673 lambda!66634)))

(declare-fun b!1590488 () Bool)

(declare-fun e!1021523 () Bool)

(assert (=> b!1590488 (= e!1021523 true)))

(declare-fun b!1590487 () Bool)

(declare-fun e!1021522 () Bool)

(assert (=> b!1590487 (= e!1021522 e!1021523)))

(declare-fun b!1590486 () Bool)

(declare-fun e!1021521 () Bool)

(assert (=> b!1590486 (= e!1021521 e!1021522)))

(assert (=> d!473584 e!1021521))

(assert (= b!1590487 b!1590488))

(assert (= b!1590486 b!1590487))

(assert (= (and d!473584 (is-Cons!17479 rules!1846)) b!1590486))

(assert (=> b!1590488 (< (dynLambda!7769 order!10343 (toValue!4489 (transformation!3078 (h!22880 rules!1846)))) (dynLambda!7770 order!10345 lambda!66673))))

(assert (=> b!1590488 (< (dynLambda!7771 order!10347 (toChars!4348 (transformation!3078 (h!22880 rules!1846)))) (dynLambda!7770 order!10345 lambda!66673))))

(assert (=> d!473584 true))

(declare-fun lt!562696 () Bool)

(assert (=> d!473584 (= lt!562696 (forall!4015 (t!144429 tokens!457) lambda!66673))))

(declare-fun e!1021520 () Bool)

(assert (=> d!473584 (= lt!562696 e!1021520)))

(declare-fun res!709596 () Bool)

(assert (=> d!473584 (=> res!709596 e!1021520)))

(assert (=> d!473584 (= res!709596 (not (is-Cons!17480 (t!144429 tokens!457))))))

(assert (=> d!473584 (not (isEmpty!10500 rules!1846))))

(assert (=> d!473584 (= (rulesProduceEachTokenIndividuallyList!909 thiss!17113 rules!1846 (t!144429 tokens!457)) lt!562696)))

(declare-fun b!1590484 () Bool)

(declare-fun e!1021519 () Bool)

(assert (=> b!1590484 (= e!1021520 e!1021519)))

(declare-fun res!709597 () Bool)

(assert (=> b!1590484 (=> (not res!709597) (not e!1021519))))

(assert (=> b!1590484 (= res!709597 (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 (t!144429 tokens!457))))))

(declare-fun b!1590485 () Bool)

(assert (=> b!1590485 (= e!1021519 (rulesProduceEachTokenIndividuallyList!909 thiss!17113 rules!1846 (t!144429 (t!144429 tokens!457))))))

(assert (= (and d!473584 (not res!709596)) b!1590484))

(assert (= (and b!1590484 res!709597) b!1590485))

(declare-fun m!1884099 () Bool)

(assert (=> d!473584 m!1884099))

(assert (=> d!473584 m!1879839))

(assert (=> b!1590484 m!1880053))

(declare-fun m!1884101 () Bool)

(assert (=> b!1590485 m!1884101))

(assert (=> b!1588708 d!473584))

(declare-fun d!473586 () Bool)

(declare-fun e!1021532 () Bool)

(assert (=> d!473586 e!1021532))

(declare-fun res!709608 () Bool)

(assert (=> d!473586 (=> (not res!709608) (not e!1021532))))

(declare-fun lt!562702 () BalanceConc!11552)

(assert (=> d!473586 (= res!709608 (= (list!6789 lt!562702) lt!560815))))

(declare-fun fromList!370 (List!17548) Conc!5804)

(assert (=> d!473586 (= lt!562702 (BalanceConc!11553 (fromList!370 lt!560815)))))

(assert (=> d!473586 (= (fromListB!825 lt!560815) lt!562702)))

(declare-fun b!1590501 () Bool)

(assert (=> b!1590501 (= e!1021532 (isBalanced!1721 (fromList!370 lt!560815)))))

(assert (= (and d!473586 res!709608) b!1590501))

(declare-fun m!1884133 () Bool)

(assert (=> d!473586 m!1884133))

(declare-fun m!1884135 () Bool)

(assert (=> d!473586 m!1884135))

(assert (=> b!1590501 m!1884135))

(assert (=> b!1590501 m!1884135))

(declare-fun m!1884137 () Bool)

(assert (=> b!1590501 m!1884137))

(assert (=> d!472726 d!473586))

(declare-fun d!473596 () Bool)

(declare-fun lt!562703 () Int)

(assert (=> d!473596 (>= lt!562703 0)))

(declare-fun e!1021533 () Int)

(assert (=> d!473596 (= lt!562703 e!1021533)))

(declare-fun c!257843 () Bool)

(assert (=> d!473596 (= c!257843 (is-Nil!17478 lt!560910))))

(assert (=> d!473596 (= (size!14057 lt!560910) lt!562703)))

(declare-fun b!1590502 () Bool)

(assert (=> b!1590502 (= e!1021533 0)))

(declare-fun b!1590503 () Bool)

(assert (=> b!1590503 (= e!1021533 (+ 1 (size!14057 (t!144427 lt!560910))))))

(assert (= (and d!473596 c!257843) b!1590502))

(assert (= (and d!473596 (not c!257843)) b!1590503))

(declare-fun m!1884139 () Bool)

(assert (=> b!1590503 m!1884139))

(assert (=> b!1588581 d!473596))

(assert (=> b!1588581 d!472956))

(declare-fun d!473598 () Bool)

(declare-fun lt!562704 () Int)

(assert (=> d!473598 (>= lt!562704 0)))

(declare-fun e!1021534 () Int)

(assert (=> d!473598 (= lt!562704 e!1021534)))

(declare-fun c!257844 () Bool)

(assert (=> d!473598 (= c!257844 (is-Nil!17478 lt!560831))))

(assert (=> d!473598 (= (size!14057 lt!560831) lt!562704)))

(declare-fun b!1590504 () Bool)

(assert (=> b!1590504 (= e!1021534 0)))

(declare-fun b!1590505 () Bool)

(assert (=> b!1590505 (= e!1021534 (+ 1 (size!14057 (t!144427 lt!560831))))))

(assert (= (and d!473598 c!257844) b!1590504))

(assert (= (and d!473598 (not c!257844)) b!1590505))

(declare-fun m!1884141 () Bool)

(assert (=> b!1590505 m!1884141))

(assert (=> b!1588581 d!473598))

(declare-fun bs!391764 () Bool)

(declare-fun d!473600 () Bool)

(assert (= bs!391764 (and d!473600 d!473536)))

(declare-fun lambda!66676 () Int)

(assert (=> bs!391764 (= lambda!66676 lambda!66671)))

(assert (=> d!473600 true))

(declare-fun lt!562715 () Bool)

(assert (=> d!473600 (= lt!562715 (rulesValidInductive!927 thiss!17113 rules!1846))))

(assert (=> d!473600 (= lt!562715 (forall!4019 rules!1846 lambda!66676))))

(assert (=> d!473600 (= (rulesValid!1093 thiss!17113 rules!1846) lt!562715)))

(declare-fun bs!391765 () Bool)

(assert (= bs!391765 d!473600))

(assert (=> bs!391765 m!1880275))

(declare-fun m!1884147 () Bool)

(assert (=> bs!391765 m!1884147))

(assert (=> d!472696 d!473600))

(declare-fun b!1590517 () Bool)

(declare-fun e!1021539 () List!17550)

(assert (=> b!1590517 (= e!1021539 (list!6800 (xs!8613 (c!257385 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457)))))))))

(declare-fun b!1590518 () Bool)

(assert (=> b!1590518 (= e!1021539 (++!4571 (list!6794 (left!14110 (c!257385 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457)))))) (list!6794 (right!14440 (c!257385 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457))))))))))

(declare-fun d!473604 () Bool)

(declare-fun c!257846 () Bool)

(assert (=> d!473604 (= c!257846 (is-Empty!5805 (c!257385 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457))))))))

(declare-fun e!1021538 () List!17550)

(assert (=> d!473604 (= (list!6794 (c!257385 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457))))) e!1021538)))

(declare-fun b!1590516 () Bool)

(assert (=> b!1590516 (= e!1021538 e!1021539)))

(declare-fun c!257847 () Bool)

(assert (=> b!1590516 (= c!257847 (is-Leaf!8565 (c!257385 (prepend!570 (seqFromList!1906 (t!144429 (t!144429 tokens!457))) (h!22881 (t!144429 tokens!457))))))))

(declare-fun b!1590515 () Bool)

(assert (=> b!1590515 (= e!1021538 Nil!17480)))

(assert (= (and d!473604 c!257846) b!1590515))

(assert (= (and d!473604 (not c!257846)) b!1590516))

(assert (= (and b!1590516 c!257847) b!1590517))

(assert (= (and b!1590516 (not c!257847)) b!1590518))

(declare-fun m!1884161 () Bool)

(assert (=> b!1590517 m!1884161))

(declare-fun m!1884165 () Bool)

(assert (=> b!1590518 m!1884165))

(declare-fun m!1884167 () Bool)

(assert (=> b!1590518 m!1884167))

(assert (=> b!1590518 m!1884165))

(assert (=> b!1590518 m!1884167))

(declare-fun m!1884169 () Bool)

(assert (=> b!1590518 m!1884169))

(assert (=> d!472700 d!473604))

(declare-fun d!473606 () Bool)

(declare-fun lt!562716 () Bool)

(assert (=> d!473606 (= lt!562716 (isEmpty!10505 (list!6790 (_1!9881 lt!561001))))))

(assert (=> d!473606 (= lt!562716 (isEmpty!10506 (c!257385 (_1!9881 lt!561001))))))

(assert (=> d!473606 (= (isEmpty!10501 (_1!9881 lt!561001)) lt!562716)))

(declare-fun bs!391766 () Bool)

(assert (= bs!391766 d!473606))

(assert (=> bs!391766 m!1880135))

(assert (=> bs!391766 m!1880135))

(declare-fun m!1884181 () Bool)

(assert (=> bs!391766 m!1884181))

(declare-fun m!1884183 () Bool)

(assert (=> bs!391766 m!1884183))

(assert (=> b!1588655 d!473606))

(declare-fun b!1590552 () Bool)

(declare-fun e!1021563 () Bool)

(declare-fun call!103109 () Bool)

(assert (=> b!1590552 (= e!1021563 call!103109)))

(declare-fun b!1590553 () Bool)

(declare-fun e!1021566 () Bool)

(assert (=> b!1590553 (= e!1021566 e!1021563)))

(declare-fun res!709637 () Bool)

(assert (=> b!1590553 (=> (not res!709637) (not e!1021563))))

(declare-fun call!103110 () Bool)

(assert (=> b!1590553 (= res!709637 call!103110)))

(declare-fun b!1590554 () Bool)

(declare-fun e!1021567 () Bool)

(declare-fun call!103108 () Bool)

(assert (=> b!1590554 (= e!1021567 call!103108)))

(declare-fun d!473608 () Bool)

(declare-fun res!709639 () Bool)

(declare-fun e!1021565 () Bool)

(assert (=> d!473608 (=> res!709639 e!1021565)))

(assert (=> d!473608 (= res!709639 (is-ElementMatch!4406 lt!560821))))

(assert (=> d!473608 (= (validRegex!1743 lt!560821) e!1021565)))

(declare-fun b!1590555 () Bool)

(declare-fun e!1021564 () Bool)

(assert (=> b!1590555 (= e!1021564 call!103110)))

(declare-fun bm!103103 () Bool)

(assert (=> bm!103103 (= call!103110 call!103108)))

(declare-fun bm!103104 () Bool)

(declare-fun c!257855 () Bool)

(assert (=> bm!103104 (= call!103109 (validRegex!1743 (ite c!257855 (regOne!9325 lt!560821) (regTwo!9324 lt!560821))))))

(declare-fun b!1590556 () Bool)

(declare-fun e!1021561 () Bool)

(declare-fun e!1021562 () Bool)

(assert (=> b!1590556 (= e!1021561 e!1021562)))

(assert (=> b!1590556 (= c!257855 (is-Union!4406 lt!560821))))

(declare-fun b!1590557 () Bool)

(declare-fun res!709641 () Bool)

(assert (=> b!1590557 (=> (not res!709641) (not e!1021564))))

(assert (=> b!1590557 (= res!709641 call!103109)))

(assert (=> b!1590557 (= e!1021562 e!1021564)))

(declare-fun b!1590558 () Bool)

(assert (=> b!1590558 (= e!1021561 e!1021567)))

(declare-fun res!709640 () Bool)

(assert (=> b!1590558 (= res!709640 (not (nullable!1296 (reg!4735 lt!560821))))))

(assert (=> b!1590558 (=> (not res!709640) (not e!1021567))))

(declare-fun bm!103105 () Bool)

(declare-fun c!257854 () Bool)

(assert (=> bm!103105 (= call!103108 (validRegex!1743 (ite c!257854 (reg!4735 lt!560821) (ite c!257855 (regTwo!9325 lt!560821) (regOne!9324 lt!560821)))))))

(declare-fun b!1590559 () Bool)

(assert (=> b!1590559 (= e!1021565 e!1021561)))

(assert (=> b!1590559 (= c!257854 (is-Star!4406 lt!560821))))

(declare-fun b!1590560 () Bool)

(declare-fun res!709638 () Bool)

(assert (=> b!1590560 (=> res!709638 e!1021566)))

(assert (=> b!1590560 (= res!709638 (not (is-Concat!7575 lt!560821)))))

(assert (=> b!1590560 (= e!1021562 e!1021566)))

(assert (= (and d!473608 (not res!709639)) b!1590559))

(assert (= (and b!1590559 c!257854) b!1590558))

(assert (= (and b!1590559 (not c!257854)) b!1590556))

(assert (= (and b!1590558 res!709640) b!1590554))

(assert (= (and b!1590556 c!257855) b!1590557))

(assert (= (and b!1590556 (not c!257855)) b!1590560))

(assert (= (and b!1590557 res!709641) b!1590555))

(assert (= (and b!1590560 (not res!709638)) b!1590553))

(assert (= (and b!1590553 res!709637) b!1590552))

(assert (= (or b!1590555 b!1590553) bm!103103))

(assert (= (or b!1590557 b!1590552) bm!103104))

(assert (= (or b!1590554 bm!103103) bm!103105))

(declare-fun m!1884251 () Bool)

(assert (=> bm!103104 m!1884251))

(declare-fun m!1884253 () Bool)

(assert (=> b!1590558 m!1884253))

(declare-fun m!1884255 () Bool)

(assert (=> bm!103105 m!1884255))

(assert (=> d!472820 d!473608))

(declare-fun d!473630 () Bool)

(declare-fun c!257856 () Bool)

(assert (=> d!473630 (= c!257856 (isEmpty!10507 (list!6789 (++!4566 lt!560830 lt!560818))))))

(declare-fun e!1021568 () Bool)

(assert (=> d!473630 (= (prefixMatch!341 lt!560821 (list!6789 (++!4566 lt!560830 lt!560818))) e!1021568)))

(declare-fun b!1590561 () Bool)

(assert (=> b!1590561 (= e!1021568 (not (lostCause!403 lt!560821)))))

(declare-fun b!1590562 () Bool)

(assert (=> b!1590562 (= e!1021568 (prefixMatch!341 (derivativeStep!1047 lt!560821 (head!3239 (list!6789 (++!4566 lt!560830 lt!560818)))) (tail!2285 (list!6789 (++!4566 lt!560830 lt!560818)))))))

(assert (= (and d!473630 c!257856) b!1590561))

(assert (= (and d!473630 (not c!257856)) b!1590562))

(assert (=> d!473630 m!1880743))

(declare-fun m!1884257 () Bool)

(assert (=> d!473630 m!1884257))

(assert (=> b!1590561 m!1880145))

(assert (=> b!1590562 m!1880743))

(declare-fun m!1884259 () Bool)

(assert (=> b!1590562 m!1884259))

(assert (=> b!1590562 m!1884259))

(declare-fun m!1884261 () Bool)

(assert (=> b!1590562 m!1884261))

(assert (=> b!1590562 m!1880743))

(declare-fun m!1884263 () Bool)

(assert (=> b!1590562 m!1884263))

(assert (=> b!1590562 m!1884261))

(assert (=> b!1590562 m!1884263))

(declare-fun m!1884265 () Bool)

(assert (=> b!1590562 m!1884265))

(assert (=> d!472820 d!473630))

(declare-fun d!473632 () Bool)

(assert (=> d!473632 (= (prefixMatchZipper!117 lt!561377 (dropList!539 (++!4566 lt!560830 lt!560818) lt!561372)) (prefixMatchZipperSequence!434 lt!561377 (++!4566 lt!560830 lt!560818) lt!561372))))

(declare-fun lt!562729 () Unit!27502)

(declare-fun choose!9531 ((Set Context!1664) BalanceConc!11552 Int) Unit!27502)

(assert (=> d!473632 (= lt!562729 (choose!9531 lt!561377 (++!4566 lt!560830 lt!560818) lt!561372))))

(declare-fun e!1021586 () Bool)

(assert (=> d!473632 e!1021586))

(declare-fun res!709644 () Bool)

(assert (=> d!473632 (=> (not res!709644) (not e!1021586))))

(assert (=> d!473632 (= res!709644 (>= lt!561372 0))))

(assert (=> d!473632 (= (lemmaprefixMatchZipperSequenceEquivalent!117 lt!561377 (++!4566 lt!560830 lt!560818) lt!561372) lt!562729)))

(declare-fun b!1590595 () Bool)

(assert (=> b!1590595 (= e!1021586 (<= lt!561372 (size!14058 (++!4566 lt!560830 lt!560818))))))

(assert (= (and d!473632 res!709644) b!1590595))

(assert (=> d!473632 m!1879751))

(assert (=> d!473632 m!1880749))

(assert (=> d!473632 m!1880749))

(assert (=> d!473632 m!1880759))

(assert (=> d!473632 m!1879751))

(assert (=> d!473632 m!1880751))

(assert (=> d!473632 m!1879751))

(declare-fun m!1884275 () Bool)

(assert (=> d!473632 m!1884275))

(assert (=> b!1590595 m!1879751))

(declare-fun m!1884277 () Bool)

(assert (=> b!1590595 m!1884277))

(assert (=> d!472820 d!473632))

(declare-fun d!473638 () Bool)

(assert (=> d!473638 (= (prefixMatch!341 lt!560821 lt!561375) (prefixMatchZipper!117 lt!561374 lt!561375))))

(declare-fun lt!562739 () Unit!27502)

(declare-fun choose!9532 ((Set Context!1664) List!17559 Regex!4406 List!17548) Unit!27502)

(assert (=> d!473638 (= lt!562739 (choose!9532 lt!561374 lt!561369 lt!560821 lt!561375))))

(assert (=> d!473638 (validRegex!1743 lt!560821)))

(assert (=> d!473638 (= (prefixMatchZipperRegexEquiv!117 lt!561374 lt!561369 lt!560821 lt!561375) lt!562739)))

(declare-fun bs!391773 () Bool)

(assert (= bs!391773 d!473638))

(assert (=> bs!391773 m!1880753))

(assert (=> bs!391773 m!1880763))

(declare-fun m!1884309 () Bool)

(assert (=> bs!391773 m!1884309))

(assert (=> bs!391773 m!1880757))

(assert (=> d!472820 d!473638))

(declare-fun d!473664 () Bool)

(declare-fun c!257879 () Bool)

(assert (=> d!473664 (= c!257879 (isEmpty!10507 lt!561375))))

(declare-fun e!1021598 () Bool)

(assert (=> d!473664 (= (prefixMatchZipper!117 lt!561374 lt!561375) e!1021598)))

(declare-fun b!1590615 () Bool)

(declare-fun lostCauseZipper!24 ((Set Context!1664)) Bool)

(assert (=> b!1590615 (= e!1021598 (not (lostCauseZipper!24 lt!561374)))))

(declare-fun b!1590616 () Bool)

(declare-fun derivationStepZipper!48 ((Set Context!1664) C!8986) (Set Context!1664))

(assert (=> b!1590616 (= e!1021598 (prefixMatchZipper!117 (derivationStepZipper!48 lt!561374 (head!3239 lt!561375)) (tail!2285 lt!561375)))))

(assert (= (and d!473664 c!257879) b!1590615))

(assert (= (and d!473664 (not c!257879)) b!1590616))

(declare-fun m!1884311 () Bool)

(assert (=> d!473664 m!1884311))

(declare-fun m!1884313 () Bool)

(assert (=> b!1590615 m!1884313))

(declare-fun m!1884315 () Bool)

(assert (=> b!1590616 m!1884315))

(assert (=> b!1590616 m!1884315))

(declare-fun m!1884317 () Bool)

(assert (=> b!1590616 m!1884317))

(declare-fun m!1884319 () Bool)

(assert (=> b!1590616 m!1884319))

(assert (=> b!1590616 m!1884317))

(assert (=> b!1590616 m!1884319))

(declare-fun m!1884321 () Bool)

(assert (=> b!1590616 m!1884321))

(assert (=> d!472820 d!473664))

(declare-fun d!473666 () Bool)

(declare-fun c!257880 () Bool)

(assert (=> d!473666 (= c!257880 (isEmpty!10507 (dropList!539 (++!4566 lt!560830 lt!560818) lt!561372)))))

(declare-fun e!1021599 () Bool)

(assert (=> d!473666 (= (prefixMatchZipper!117 lt!561377 (dropList!539 (++!4566 lt!560830 lt!560818) lt!561372)) e!1021599)))

(declare-fun b!1590617 () Bool)

(assert (=> b!1590617 (= e!1021599 (not (lostCauseZipper!24 lt!561377)))))

(declare-fun b!1590618 () Bool)

(assert (=> b!1590618 (= e!1021599 (prefixMatchZipper!117 (derivationStepZipper!48 lt!561377 (head!3239 (dropList!539 (++!4566 lt!560830 lt!560818) lt!561372))) (tail!2285 (dropList!539 (++!4566 lt!560830 lt!560818) lt!561372))))))

(assert (= (and d!473666 c!257880) b!1590617))

(assert (= (and d!473666 (not c!257880)) b!1590618))

(assert (=> d!473666 m!1880749))

(declare-fun m!1884323 () Bool)

(assert (=> d!473666 m!1884323))

(declare-fun m!1884325 () Bool)

(assert (=> b!1590617 m!1884325))

(assert (=> b!1590618 m!1880749))

(declare-fun m!1884327 () Bool)

(assert (=> b!1590618 m!1884327))

(assert (=> b!1590618 m!1884327))

(declare-fun m!1884329 () Bool)

(assert (=> b!1590618 m!1884329))

(assert (=> b!1590618 m!1880749))

(declare-fun m!1884331 () Bool)

(assert (=> b!1590618 m!1884331))

(assert (=> b!1590618 m!1884329))

(assert (=> b!1590618 m!1884331))

(declare-fun m!1884333 () Bool)

(assert (=> b!1590618 m!1884333))

(assert (=> d!472820 d!473666))

(declare-fun d!473668 () Bool)

(declare-fun c!257883 () Bool)

(assert (=> d!473668 (= c!257883 (= 0 (size!14058 (++!4566 lt!560830 lt!560818))))))

(declare-fun e!1021602 () Bool)

(assert (=> d!473668 (= (prefixMatchZipperSequence!434 (focus!138 lt!560821) (++!4566 lt!560830 lt!560818) 0) e!1021602)))

(declare-fun b!1590623 () Bool)

(assert (=> b!1590623 (= e!1021602 (not (lostCauseZipper!24 (focus!138 lt!560821))))))

(declare-fun b!1590624 () Bool)

(assert (=> b!1590624 (= e!1021602 (prefixMatchZipperSequence!434 (derivationStepZipper!48 (focus!138 lt!560821) (apply!4301 (++!4566 lt!560830 lt!560818) 0)) (++!4566 lt!560830 lt!560818) (+ 0 1)))))

(assert (= (and d!473668 c!257883) b!1590623))

(assert (= (and d!473668 (not c!257883)) b!1590624))

(assert (=> d!473668 m!1879751))

(assert (=> d!473668 m!1884277))

(assert (=> b!1590623 m!1880739))

(declare-fun m!1884335 () Bool)

(assert (=> b!1590623 m!1884335))

(assert (=> b!1590624 m!1879751))

(declare-fun m!1884337 () Bool)

(assert (=> b!1590624 m!1884337))

(assert (=> b!1590624 m!1880739))

(assert (=> b!1590624 m!1884337))

(declare-fun m!1884339 () Bool)

(assert (=> b!1590624 m!1884339))

(assert (=> b!1590624 m!1884339))

(assert (=> b!1590624 m!1879751))

(declare-fun m!1884341 () Bool)

(assert (=> b!1590624 m!1884341))

(assert (=> d!472820 d!473668))

(declare-fun d!473670 () Bool)

(declare-fun c!257884 () Bool)

(assert (=> d!473670 (= c!257884 (isEmpty!10507 lt!561375))))

(declare-fun e!1021603 () Bool)

(assert (=> d!473670 (= (prefixMatch!341 lt!560821 lt!561375) e!1021603)))

(declare-fun b!1590625 () Bool)

(assert (=> b!1590625 (= e!1021603 (not (lostCause!403 lt!560821)))))

(declare-fun b!1590626 () Bool)

(assert (=> b!1590626 (= e!1021603 (prefixMatch!341 (derivativeStep!1047 lt!560821 (head!3239 lt!561375)) (tail!2285 lt!561375)))))

(assert (= (and d!473670 c!257884) b!1590625))

(assert (= (and d!473670 (not c!257884)) b!1590626))

(assert (=> d!473670 m!1884311))

(assert (=> b!1590625 m!1880145))

(assert (=> b!1590626 m!1884315))

(assert (=> b!1590626 m!1884315))

(declare-fun m!1884343 () Bool)

(assert (=> b!1590626 m!1884343))

(assert (=> b!1590626 m!1884319))

(assert (=> b!1590626 m!1884343))

(assert (=> b!1590626 m!1884319))

(declare-fun m!1884345 () Bool)

(assert (=> b!1590626 m!1884345))

(assert (=> d!472820 d!473670))

(declare-fun d!473672 () Bool)

(declare-fun e!1021606 () Bool)

(assert (=> d!473672 e!1021606))

(declare-fun res!709652 () Bool)

(assert (=> d!473672 (=> (not res!709652) (not e!1021606))))

(declare-fun lt!562742 () List!17559)

(declare-fun noDuplicate!243 (List!17559) Bool)

(assert (=> d!473672 (= res!709652 (noDuplicate!243 lt!562742))))

(declare-fun choose!9534 ((Set Context!1664)) List!17559)

(assert (=> d!473672 (= lt!562742 (choose!9534 (focus!138 lt!560821)))))

(assert (=> d!473672 (= (toList!878 (focus!138 lt!560821)) lt!562742)))

(declare-fun b!1590629 () Bool)

(declare-fun content!2414 (List!17559) (Set Context!1664))

(assert (=> b!1590629 (= e!1021606 (= (content!2414 lt!562742) (focus!138 lt!560821)))))

(assert (= (and d!473672 res!709652) b!1590629))

(declare-fun m!1884347 () Bool)

(assert (=> d!473672 m!1884347))

(assert (=> d!473672 m!1880739))

(declare-fun m!1884349 () Bool)

(assert (=> d!473672 m!1884349))

(declare-fun m!1884351 () Bool)

(assert (=> b!1590629 m!1884351))

(assert (=> d!472820 d!473672))

(declare-fun d!473674 () Bool)

(assert (=> d!473674 (= (list!6789 (++!4566 lt!560830 lt!560818)) (list!6793 (c!257383 (++!4566 lt!560830 lt!560818))))))

(declare-fun bs!391774 () Bool)

(assert (= bs!391774 d!473674))

(declare-fun m!1884353 () Bool)

(assert (=> bs!391774 m!1884353))

(assert (=> d!472820 d!473674))

(declare-fun c!257885 () Bool)

(declare-fun d!473676 () Bool)

(assert (=> d!473676 (= c!257885 (= lt!561372 (size!14058 (++!4566 lt!560830 lt!560818))))))

(declare-fun e!1021607 () Bool)

(assert (=> d!473676 (= (prefixMatchZipperSequence!434 lt!561377 (++!4566 lt!560830 lt!560818) lt!561372) e!1021607)))

(declare-fun b!1590630 () Bool)

(assert (=> b!1590630 (= e!1021607 (not (lostCauseZipper!24 lt!561377)))))

(declare-fun b!1590631 () Bool)

(assert (=> b!1590631 (= e!1021607 (prefixMatchZipperSequence!434 (derivationStepZipper!48 lt!561377 (apply!4301 (++!4566 lt!560830 lt!560818) lt!561372)) (++!4566 lt!560830 lt!560818) (+ lt!561372 1)))))

(assert (= (and d!473676 c!257885) b!1590630))

(assert (= (and d!473676 (not c!257885)) b!1590631))

(assert (=> d!473676 m!1879751))

(assert (=> d!473676 m!1884277))

(assert (=> b!1590630 m!1884325))

(assert (=> b!1590631 m!1879751))

(declare-fun m!1884355 () Bool)

(assert (=> b!1590631 m!1884355))

(assert (=> b!1590631 m!1884355))

(declare-fun m!1884357 () Bool)

(assert (=> b!1590631 m!1884357))

(assert (=> b!1590631 m!1884357))

(assert (=> b!1590631 m!1879751))

(declare-fun m!1884359 () Bool)

(assert (=> b!1590631 m!1884359))

(assert (=> d!472820 d!473676))

(declare-fun d!473678 () Bool)

(declare-fun drop!831 (List!17548 Int) List!17548)

(assert (=> d!473678 (= (dropList!539 (++!4566 lt!560830 lt!560818) lt!561372) (drop!831 (list!6793 (c!257383 (++!4566 lt!560830 lt!560818))) lt!561372))))

(declare-fun bs!391775 () Bool)

(assert (= bs!391775 d!473678))

(assert (=> bs!391775 m!1884353))

(assert (=> bs!391775 m!1884353))

(declare-fun m!1884361 () Bool)

(assert (=> bs!391775 m!1884361))

(assert (=> d!472820 d!473678))

(declare-fun d!473680 () Bool)

(declare-fun e!1021610 () Bool)

(assert (=> d!473680 e!1021610))

(declare-fun res!709656 () Bool)

(assert (=> d!473680 (=> (not res!709656) (not e!1021610))))

(assert (=> d!473680 (= res!709656 (validRegex!1743 lt!560821))))

(assert (=> d!473680 (= (focus!138 lt!560821) (set.insert (Context!1665 (Cons!17487 lt!560821 Nil!17487)) (as set.empty (Set Context!1664))))))

(declare-fun b!1590634 () Bool)

(declare-fun unfocusZipper!24 (List!17559) Regex!4406)

(assert (=> b!1590634 (= e!1021610 (= (unfocusZipper!24 (toList!878 (set.insert (Context!1665 (Cons!17487 lt!560821 Nil!17487)) (as set.empty (Set Context!1664))))) lt!560821))))

(assert (= (and d!473680 res!709656) b!1590634))

(assert (=> d!473680 m!1880757))

(declare-fun m!1884363 () Bool)

(assert (=> d!473680 m!1884363))

(assert (=> b!1590634 m!1884363))

(assert (=> b!1590634 m!1884363))

(declare-fun m!1884365 () Bool)

(assert (=> b!1590634 m!1884365))

(assert (=> b!1590634 m!1884365))

(declare-fun m!1884367 () Bool)

(assert (=> b!1590634 m!1884367))

(assert (=> d!472820 d!473680))

(declare-fun d!473682 () Bool)

(declare-fun res!709657 () Bool)

(declare-fun e!1021611 () Bool)

(assert (=> d!473682 (=> (not res!709657) (not e!1021611))))

(assert (=> d!473682 (= res!709657 (not (isEmpty!10507 (originalCharacters!3892 (h!22881 (t!144429 tokens!457))))))))

(assert (=> d!473682 (= (inv!22888 (h!22881 (t!144429 tokens!457))) e!1021611)))

(declare-fun b!1590635 () Bool)

(declare-fun res!709658 () Bool)

(assert (=> b!1590635 (=> (not res!709658) (not e!1021611))))

(assert (=> b!1590635 (= res!709658 (= (originalCharacters!3892 (h!22881 (t!144429 tokens!457))) (list!6789 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun b!1590636 () Bool)

(assert (=> b!1590636 (= e!1021611 (= (size!14055 (h!22881 (t!144429 tokens!457))) (size!14057 (originalCharacters!3892 (h!22881 (t!144429 tokens!457))))))))

(assert (= (and d!473682 res!709657) b!1590635))

(assert (= (and b!1590635 res!709658) b!1590636))

(declare-fun b_lambda!50041 () Bool)

(assert (=> (not b_lambda!50041) (not b!1590635)))

(assert (=> b!1590635 t!144457))

(declare-fun b_and!111541 () Bool)

(assert (= b_and!111525 (and (=> t!144457 result!108262) b_and!111541)))

(assert (=> b!1590635 t!144459))

(declare-fun b_and!111543 () Bool)

(assert (= b_and!111527 (and (=> t!144459 result!108264) b_and!111543)))

(assert (=> b!1590635 t!144463))

(declare-fun b_and!111545 () Bool)

(assert (= b_and!111529 (and (=> t!144463 result!108270) b_and!111545)))

(assert (=> b!1590635 t!144467))

(declare-fun b_and!111547 () Bool)

(assert (= b_and!111531 (and (=> t!144467 result!108276) b_and!111547)))

(declare-fun m!1884369 () Bool)

(assert (=> d!473682 m!1884369))

(assert (=> b!1590635 m!1880831))

(assert (=> b!1590635 m!1880831))

(declare-fun m!1884371 () Bool)

(assert (=> b!1590635 m!1884371))

(assert (=> b!1590636 m!1882881))

(assert (=> b!1588985 d!473682))

(assert (=> b!1588924 d!473484))

(assert (=> b!1588924 d!473486))

(assert (=> b!1588924 d!473332))

(assert (=> b!1588924 d!473488))

(assert (=> b!1588924 d!473490))

(declare-fun b!1590639 () Bool)

(declare-fun e!1021613 () List!17548)

(assert (=> b!1590639 (= e!1021613 (list!6799 (xs!8612 (c!257383 lt!560814))))))

(declare-fun b!1590640 () Bool)

(assert (=> b!1590640 (= e!1021613 (++!4565 (list!6793 (left!14109 (c!257383 lt!560814))) (list!6793 (right!14439 (c!257383 lt!560814)))))))

(declare-fun b!1590637 () Bool)

(declare-fun e!1021612 () List!17548)

(assert (=> b!1590637 (= e!1021612 Nil!17478)))

(declare-fun b!1590638 () Bool)

(assert (=> b!1590638 (= e!1021612 e!1021613)))

(declare-fun c!257887 () Bool)

(assert (=> b!1590638 (= c!257887 (is-Leaf!8564 (c!257383 lt!560814)))))

(declare-fun d!473684 () Bool)

(declare-fun c!257886 () Bool)

(assert (=> d!473684 (= c!257886 (is-Empty!5804 (c!257383 lt!560814)))))

(assert (=> d!473684 (= (list!6793 (c!257383 lt!560814)) e!1021612)))

(assert (= (and d!473684 c!257886) b!1590637))

(assert (= (and d!473684 (not c!257886)) b!1590638))

(assert (= (and b!1590638 c!257887) b!1590639))

(assert (= (and b!1590638 (not c!257887)) b!1590640))

(declare-fun m!1884373 () Bool)

(assert (=> b!1590639 m!1884373))

(declare-fun m!1884375 () Bool)

(assert (=> b!1590640 m!1884375))

(declare-fun m!1884377 () Bool)

(assert (=> b!1590640 m!1884377))

(assert (=> b!1590640 m!1884375))

(assert (=> b!1590640 m!1884377))

(declare-fun m!1884379 () Bool)

(assert (=> b!1590640 m!1884379))

(assert (=> d!472678 d!473684))

(declare-fun d!473686 () Bool)

(declare-fun e!1021614 () Bool)

(assert (=> d!473686 e!1021614))

(declare-fun res!709659 () Bool)

(assert (=> d!473686 (=> (not res!709659) (not e!1021614))))

(declare-fun lt!562743 () BalanceConc!11554)

(assert (=> d!473686 (= res!709659 (= (list!6790 lt!562743) (t!144429 (t!144429 tokens!457))))))

(assert (=> d!473686 (= lt!562743 (BalanceConc!11555 (fromList!369 (t!144429 (t!144429 tokens!457)))))))

(assert (=> d!473686 (= (fromListB!824 (t!144429 (t!144429 tokens!457))) lt!562743)))

(declare-fun b!1590641 () Bool)

(assert (=> b!1590641 (= e!1021614 (isBalanced!1719 (fromList!369 (t!144429 (t!144429 tokens!457)))))))

(assert (= (and d!473686 res!709659) b!1590641))

(declare-fun m!1884381 () Bool)

(assert (=> d!473686 m!1884381))

(declare-fun m!1884383 () Bool)

(assert (=> d!473686 m!1884383))

(assert (=> b!1590641 m!1884383))

(assert (=> b!1590641 m!1884383))

(declare-fun m!1884385 () Bool)

(assert (=> b!1590641 m!1884385))

(assert (=> d!472704 d!473686))

(declare-fun d!473688 () Bool)

(assert (=> d!473688 (= (isEmpty!10507 (originalCharacters!3892 (h!22881 tokens!457))) (is-Nil!17478 (originalCharacters!3892 (h!22881 tokens!457))))))

(assert (=> d!472768 d!473688))

(declare-fun bs!391776 () Bool)

(declare-fun d!473690 () Bool)

(assert (= bs!391776 (and d!473690 d!473482)))

(declare-fun lambda!66677 () Int)

(assert (=> bs!391776 (= (and (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toChars!4348 (transformation!3078 (h!22880 rules!1846)))) (= (toValue!4489 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toValue!4489 (transformation!3078 (h!22880 rules!1846))))) (= lambda!66677 lambda!66668))))

(assert (=> d!473690 true))

(assert (=> d!473690 (< (dynLambda!7771 order!10347 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457))))) (dynLambda!7782 order!10355 lambda!66677))))

(assert (=> d!473690 true))

(assert (=> d!473690 (< (dynLambda!7769 order!10343 (toValue!4489 (transformation!3078 (rule!4882 (h!22881 tokens!457))))) (dynLambda!7782 order!10355 lambda!66677))))

(assert (=> d!473690 (= (semiInverseModEq!1165 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toValue!4489 (transformation!3078 (rule!4882 (h!22881 tokens!457))))) (Forall!636 lambda!66677))))

(declare-fun bs!391777 () Bool)

(assert (= bs!391777 d!473690))

(declare-fun m!1884387 () Bool)

(assert (=> bs!391777 m!1884387))

(assert (=> d!472712 d!473690))

(declare-fun d!473692 () Bool)

(assert (=> d!473692 (= (isEmpty!10505 (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))) (is-Nil!17480 (list!6790 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))))))

(assert (=> d!472722 d!473692))

(assert (=> d!472722 d!472928))

(declare-fun lt!562746 () Bool)

(declare-fun d!473694 () Bool)

(assert (=> d!473694 (= lt!562746 (isEmpty!10505 (list!6794 (c!257385 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815)))))))))

(assert (=> d!473694 (= lt!562746 (= (size!14064 (c!257385 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))) 0))))

(assert (=> d!473694 (= (isEmpty!10506 (c!257385 (_1!9881 (lex!1191 thiss!17113 rules!1846 (seqFromList!1905 lt!560815))))) lt!562746)))

(declare-fun bs!391778 () Bool)

(assert (= bs!391778 d!473694))

(assert (=> bs!391778 m!1881211))

(assert (=> bs!391778 m!1881211))

(declare-fun m!1884389 () Bool)

(assert (=> bs!391778 m!1884389))

(declare-fun m!1884391 () Bool)

(assert (=> bs!391778 m!1884391))

(assert (=> d!472722 d!473694))

(declare-fun d!473696 () Bool)

(declare-fun charsToBigInt!1 (List!17547) Int)

(assert (=> d!473696 (= (inv!17 (value!97397 (h!22881 tokens!457))) (= (charsToBigInt!1 (text!22624 (value!97397 (h!22881 tokens!457)))) (value!97389 (value!97397 (h!22881 tokens!457)))))))

(declare-fun bs!391779 () Bool)

(assert (= bs!391779 d!473696))

(declare-fun m!1884393 () Bool)

(assert (=> bs!391779 m!1884393))

(assert (=> b!1588638 d!473696))

(declare-fun d!473698 () Bool)

(declare-fun c!257888 () Bool)

(assert (=> d!473698 (= c!257888 (is-Nil!17478 lt!561002))))

(declare-fun e!1021615 () (Set C!8986))

(assert (=> d!473698 (= (content!2408 lt!561002) e!1021615)))

(declare-fun b!1590642 () Bool)

(assert (=> b!1590642 (= e!1021615 (as set.empty (Set C!8986)))))

(declare-fun b!1590643 () Bool)

(assert (=> b!1590643 (= e!1021615 (set.union (set.insert (h!22879 lt!561002) (as set.empty (Set C!8986))) (content!2408 (t!144427 lt!561002))))))

(assert (= (and d!473698 c!257888) b!1590642))

(assert (= (and d!473698 (not c!257888)) b!1590643))

(declare-fun m!1884395 () Bool)

(assert (=> b!1590643 m!1884395))

(declare-fun m!1884397 () Bool)

(assert (=> b!1590643 m!1884397))

(assert (=> d!472730 d!473698))

(assert (=> d!472730 d!472988))

(declare-fun d!473700 () Bool)

(declare-fun c!257889 () Bool)

(assert (=> d!473700 (= c!257889 (is-Nil!17478 (list!6789 lt!560818)))))

(declare-fun e!1021616 () (Set C!8986))

(assert (=> d!473700 (= (content!2408 (list!6789 lt!560818)) e!1021616)))

(declare-fun b!1590644 () Bool)

(assert (=> b!1590644 (= e!1021616 (as set.empty (Set C!8986)))))

(declare-fun b!1590645 () Bool)

(assert (=> b!1590645 (= e!1021616 (set.union (set.insert (h!22879 (list!6789 lt!560818)) (as set.empty (Set C!8986))) (content!2408 (t!144427 (list!6789 lt!560818)))))))

(assert (= (and d!473700 c!257889) b!1590644))

(assert (= (and d!473700 (not c!257889)) b!1590645))

(declare-fun m!1884399 () Bool)

(assert (=> b!1590645 m!1884399))

(declare-fun m!1884401 () Bool)

(assert (=> b!1590645 m!1884401))

(assert (=> d!472730 d!473700))

(declare-fun d!473702 () Bool)

(assert (=> d!473702 (= (list!6789 lt!560917) (list!6793 (c!257383 lt!560917)))))

(declare-fun bs!391780 () Bool)

(assert (= bs!391780 d!473702))

(declare-fun m!1884403 () Bool)

(assert (=> bs!391780 m!1884403))

(assert (=> d!472688 d!473702))

(declare-fun d!473704 () Bool)

(declare-fun c!257890 () Bool)

(assert (=> d!473704 (= c!257890 (is-Node!5804 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun e!1021617 () Bool)

(assert (=> d!473704 (= (inv!22891 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457)))))) e!1021617)))

(declare-fun b!1590646 () Bool)

(assert (=> b!1590646 (= e!1021617 (inv!22897 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457)))))))))

(declare-fun b!1590647 () Bool)

(declare-fun e!1021618 () Bool)

(assert (=> b!1590647 (= e!1021617 e!1021618)))

(declare-fun res!709660 () Bool)

(assert (=> b!1590647 (= res!709660 (not (is-Leaf!8564 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457))))))))))

(assert (=> b!1590647 (=> res!709660 e!1021618)))

(declare-fun b!1590648 () Bool)

(assert (=> b!1590648 (= e!1021618 (inv!22898 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457)))))))))

(assert (= (and d!473704 c!257890) b!1590646))

(assert (= (and d!473704 (not c!257890)) b!1590647))

(assert (= (and b!1590647 (not res!709660)) b!1590648))

(declare-fun m!1884405 () Bool)

(assert (=> b!1590646 m!1884405))

(declare-fun m!1884407 () Bool)

(assert (=> b!1590648 m!1884407))

(assert (=> b!1588956 d!473704))

(declare-fun b!1590649 () Bool)

(declare-fun e!1021619 () Bool)

(assert (=> b!1590649 (= e!1021619 tp_is_empty!7211)))

(assert (=> b!1589003 (= tp!466983 e!1021619)))

(declare-fun b!1590652 () Bool)

(declare-fun tp!467055 () Bool)

(declare-fun tp!467052 () Bool)

(assert (=> b!1590652 (= e!1021619 (and tp!467055 tp!467052))))

(declare-fun b!1590651 () Bool)

(declare-fun tp!467054 () Bool)

(assert (=> b!1590651 (= e!1021619 tp!467054)))

(declare-fun b!1590650 () Bool)

(declare-fun tp!467053 () Bool)

(declare-fun tp!467051 () Bool)

(assert (=> b!1590650 (= e!1021619 (and tp!467053 tp!467051))))

(assert (= (and b!1589003 (is-ElementMatch!4406 (reg!4735 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590649))

(assert (= (and b!1589003 (is-Concat!7575 (reg!4735 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590650))

(assert (= (and b!1589003 (is-Star!4406 (reg!4735 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590651))

(assert (= (and b!1589003 (is-Union!4406 (reg!4735 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590652))

(declare-fun b!1590653 () Bool)

(declare-fun e!1021620 () Bool)

(assert (=> b!1590653 (= e!1021620 tp_is_empty!7211)))

(assert (=> b!1589002 (= tp!466982 e!1021620)))

(declare-fun b!1590656 () Bool)

(declare-fun tp!467060 () Bool)

(declare-fun tp!467057 () Bool)

(assert (=> b!1590656 (= e!1021620 (and tp!467060 tp!467057))))

(declare-fun b!1590655 () Bool)

(declare-fun tp!467059 () Bool)

(assert (=> b!1590655 (= e!1021620 tp!467059)))

(declare-fun b!1590654 () Bool)

(declare-fun tp!467058 () Bool)

(declare-fun tp!467056 () Bool)

(assert (=> b!1590654 (= e!1021620 (and tp!467058 tp!467056))))

(assert (= (and b!1589002 (is-ElementMatch!4406 (regOne!9324 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590653))

(assert (= (and b!1589002 (is-Concat!7575 (regOne!9324 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590654))

(assert (= (and b!1589002 (is-Star!4406 (regOne!9324 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590655))

(assert (= (and b!1589002 (is-Union!4406 (regOne!9324 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590656))

(declare-fun b!1590657 () Bool)

(declare-fun e!1021621 () Bool)

(assert (=> b!1590657 (= e!1021621 tp_is_empty!7211)))

(assert (=> b!1589002 (= tp!466980 e!1021621)))

(declare-fun b!1590660 () Bool)

(declare-fun tp!467065 () Bool)

(declare-fun tp!467062 () Bool)

(assert (=> b!1590660 (= e!1021621 (and tp!467065 tp!467062))))

(declare-fun b!1590659 () Bool)

(declare-fun tp!467064 () Bool)

(assert (=> b!1590659 (= e!1021621 tp!467064)))

(declare-fun b!1590658 () Bool)

(declare-fun tp!467063 () Bool)

(declare-fun tp!467061 () Bool)

(assert (=> b!1590658 (= e!1021621 (and tp!467063 tp!467061))))

(assert (= (and b!1589002 (is-ElementMatch!4406 (regTwo!9324 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590657))

(assert (= (and b!1589002 (is-Concat!7575 (regTwo!9324 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590658))

(assert (= (and b!1589002 (is-Star!4406 (regTwo!9324 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590659))

(assert (= (and b!1589002 (is-Union!4406 (regTwo!9324 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590660))

(declare-fun b!1590661 () Bool)

(declare-fun e!1021622 () Bool)

(assert (=> b!1590661 (= e!1021622 tp_is_empty!7211)))

(assert (=> b!1589004 (= tp!466984 e!1021622)))

(declare-fun b!1590664 () Bool)

(declare-fun tp!467070 () Bool)

(declare-fun tp!467067 () Bool)

(assert (=> b!1590664 (= e!1021622 (and tp!467070 tp!467067))))

(declare-fun b!1590663 () Bool)

(declare-fun tp!467069 () Bool)

(assert (=> b!1590663 (= e!1021622 tp!467069)))

(declare-fun b!1590662 () Bool)

(declare-fun tp!467068 () Bool)

(declare-fun tp!467066 () Bool)

(assert (=> b!1590662 (= e!1021622 (and tp!467068 tp!467066))))

(assert (= (and b!1589004 (is-ElementMatch!4406 (regOne!9325 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590661))

(assert (= (and b!1589004 (is-Concat!7575 (regOne!9325 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590662))

(assert (= (and b!1589004 (is-Star!4406 (regOne!9325 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590663))

(assert (= (and b!1589004 (is-Union!4406 (regOne!9325 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590664))

(declare-fun b!1590665 () Bool)

(declare-fun e!1021623 () Bool)

(assert (=> b!1590665 (= e!1021623 tp_is_empty!7211)))

(assert (=> b!1589004 (= tp!466981 e!1021623)))

(declare-fun b!1590668 () Bool)

(declare-fun tp!467075 () Bool)

(declare-fun tp!467072 () Bool)

(assert (=> b!1590668 (= e!1021623 (and tp!467075 tp!467072))))

(declare-fun b!1590667 () Bool)

(declare-fun tp!467074 () Bool)

(assert (=> b!1590667 (= e!1021623 tp!467074)))

(declare-fun b!1590666 () Bool)

(declare-fun tp!467073 () Bool)

(declare-fun tp!467071 () Bool)

(assert (=> b!1590666 (= e!1021623 (and tp!467073 tp!467071))))

(assert (= (and b!1589004 (is-ElementMatch!4406 (regTwo!9325 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590665))

(assert (= (and b!1589004 (is-Concat!7575 (regTwo!9325 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590666))

(assert (= (and b!1589004 (is-Star!4406 (regTwo!9325 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590667))

(assert (= (and b!1589004 (is-Union!4406 (regTwo!9325 (regex!3078 (rule!4882 (h!22881 tokens!457)))))) b!1590668))

(declare-fun b!1590669 () Bool)

(declare-fun e!1021624 () Bool)

(declare-fun tp!467076 () Bool)

(assert (=> b!1590669 (= e!1021624 (and tp_is_empty!7211 tp!467076))))

(assert (=> b!1588986 (= tp!466967 e!1021624)))

(assert (= (and b!1588986 (is-Cons!17478 (originalCharacters!3892 (h!22881 (t!144429 tokens!457))))) b!1590669))

(declare-fun b!1590673 () Bool)

(declare-fun b_free!43023 () Bool)

(declare-fun b_next!43727 () Bool)

(assert (=> b!1590673 (= b_free!43023 (not b_next!43727))))

(declare-fun t!144575 () Bool)

(declare-fun tb!89503 () Bool)

(assert (=> (and b!1590673 (= (toValue!4489 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (toValue!4489 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144575) tb!89503))

(declare-fun result!108372 () Bool)

(assert (= result!108372 result!108362))

(assert (=> d!473340 t!144575))

(declare-fun b_and!111549 () Bool)

(declare-fun tp!467078 () Bool)

(assert (=> b!1590673 (= tp!467078 (and (=> t!144575 result!108372) b_and!111549))))

(declare-fun b_free!43025 () Bool)

(declare-fun b_next!43729 () Bool)

(assert (=> b!1590673 (= b_free!43025 (not b_next!43729))))

(declare-fun t!144577 () Bool)

(declare-fun tb!89505 () Bool)

(assert (=> (and b!1590673 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457))))) t!144577) tb!89505))

(declare-fun result!108374 () Bool)

(assert (= result!108374 result!108246))

(assert (=> d!472688 t!144577))

(declare-fun t!144579 () Bool)

(declare-fun tb!89507 () Bool)

(assert (=> (and b!1590673 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))) t!144579) tb!89507))

(declare-fun result!108376 () Bool)

(assert (= result!108376 result!108354))

(assert (=> d!473294 t!144579))

(declare-fun tb!89509 () Bool)

(declare-fun t!144581 () Bool)

(assert (=> (and b!1590673 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (toChars!4348 (transformation!3078 (rule!4882 lt!560995)))) t!144581) tb!89509))

(declare-fun result!108378 () Bool)

(assert (= result!108378 result!108306))

(assert (=> d!472930 t!144581))

(assert (=> b!1588801 t!144577))

(declare-fun t!144583 () Bool)

(declare-fun tb!89511 () Bool)

(assert (=> (and b!1590673 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (toChars!4348 (transformation!3078 (rule!4882 (apply!4303 lt!560813 0))))) t!144583) tb!89511))

(declare-fun result!108380 () Bool)

(assert (= result!108380 result!108298))

(assert (=> d!472896 t!144583))

(declare-fun t!144585 () Bool)

(declare-fun tb!89513 () Bool)

(assert (=> (and b!1590673 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))) t!144585) tb!89513))

(declare-fun result!108382 () Bool)

(assert (= result!108382 result!108262))

(assert (=> b!1590635 t!144585))

(declare-fun t!144587 () Bool)

(declare-fun tb!89515 () Bool)

(assert (=> (and b!1590673 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (toChars!4348 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144587) tb!89515))

(declare-fun result!108384 () Bool)

(assert (= result!108384 result!108314))

(assert (=> d!472982 t!144587))

(assert (=> d!472848 t!144585))

(declare-fun t!144589 () Bool)

(declare-fun tb!89517 () Bool)

(assert (=> (and b!1590673 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457))))))) t!144589) tb!89517))

(declare-fun result!108386 () Bool)

(assert (= result!108386 result!108346))

(assert (=> d!473258 t!144589))

(declare-fun tp!467080 () Bool)

(declare-fun b_and!111551 () Bool)

(assert (=> b!1590673 (= tp!467080 (and (=> t!144577 result!108374) (=> t!144583 result!108380) (=> t!144581 result!108378) (=> t!144585 result!108382) (=> t!144589 result!108386) (=> t!144587 result!108384) (=> t!144579 result!108376) b_and!111551))))

(declare-fun e!1021627 () Bool)

(assert (=> b!1590673 (= e!1021627 (and tp!467078 tp!467080))))

(declare-fun tp!467081 () Bool)

(declare-fun b!1590670 () Bool)

(declare-fun e!1021626 () Bool)

(declare-fun e!1021625 () Bool)

(assert (=> b!1590670 (= e!1021626 (and (inv!22888 (h!22881 (t!144429 (t!144429 tokens!457)))) e!1021625 tp!467081))))

(assert (=> b!1588985 (= tp!466969 e!1021626)))

(declare-fun tp!467079 () Bool)

(declare-fun b!1590671 () Bool)

(declare-fun e!1021628 () Bool)

(assert (=> b!1590671 (= e!1021625 (and (inv!21 (value!97397 (h!22881 (t!144429 (t!144429 tokens!457))))) e!1021628 tp!467079))))

(declare-fun b!1590672 () Bool)

(declare-fun tp!467077 () Bool)

(assert (=> b!1590672 (= e!1021628 (and tp!467077 (inv!22884 (tag!3348 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (inv!22887 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) e!1021627))))

(assert (= b!1590672 b!1590673))

(assert (= b!1590671 b!1590672))

(assert (= b!1590670 b!1590671))

(assert (= (and b!1588985 (is-Cons!17480 (t!144429 (t!144429 tokens!457)))) b!1590670))

(declare-fun m!1884409 () Bool)

(assert (=> b!1590670 m!1884409))

(declare-fun m!1884411 () Bool)

(assert (=> b!1590671 m!1884411))

(declare-fun m!1884413 () Bool)

(assert (=> b!1590672 m!1884413))

(declare-fun m!1884415 () Bool)

(assert (=> b!1590672 m!1884415))

(declare-fun b!1590680 () Bool)

(declare-fun e!1021635 () Bool)

(assert (=> b!1590680 (= e!1021635 tp_is_empty!7211)))

(assert (=> b!1589007 (= tp!466987 e!1021635)))

(declare-fun b!1590683 () Bool)

(declare-fun tp!467086 () Bool)

(declare-fun tp!467083 () Bool)

(assert (=> b!1590683 (= e!1021635 (and tp!467086 tp!467083))))

(declare-fun b!1590682 () Bool)

(declare-fun tp!467085 () Bool)

(assert (=> b!1590682 (= e!1021635 tp!467085)))

(declare-fun b!1590681 () Bool)

(declare-fun tp!467084 () Bool)

(declare-fun tp!467082 () Bool)

(assert (=> b!1590681 (= e!1021635 (and tp!467084 tp!467082))))

(assert (= (and b!1589007 (is-ElementMatch!4406 (regOne!9324 (regex!3078 (h!22880 rules!1846))))) b!1590680))

(assert (= (and b!1589007 (is-Concat!7575 (regOne!9324 (regex!3078 (h!22880 rules!1846))))) b!1590681))

(assert (= (and b!1589007 (is-Star!4406 (regOne!9324 (regex!3078 (h!22880 rules!1846))))) b!1590682))

(assert (= (and b!1589007 (is-Union!4406 (regOne!9324 (regex!3078 (h!22880 rules!1846))))) b!1590683))

(declare-fun b!1590686 () Bool)

(declare-fun e!1021638 () Bool)

(assert (=> b!1590686 (= e!1021638 tp_is_empty!7211)))

(assert (=> b!1589007 (= tp!466985 e!1021638)))

(declare-fun b!1590689 () Bool)

(declare-fun tp!467091 () Bool)

(declare-fun tp!467088 () Bool)

(assert (=> b!1590689 (= e!1021638 (and tp!467091 tp!467088))))

(declare-fun b!1590688 () Bool)

(declare-fun tp!467090 () Bool)

(assert (=> b!1590688 (= e!1021638 tp!467090)))

(declare-fun b!1590687 () Bool)

(declare-fun tp!467089 () Bool)

(declare-fun tp!467087 () Bool)

(assert (=> b!1590687 (= e!1021638 (and tp!467089 tp!467087))))

(assert (= (and b!1589007 (is-ElementMatch!4406 (regTwo!9324 (regex!3078 (h!22880 rules!1846))))) b!1590686))

(assert (= (and b!1589007 (is-Concat!7575 (regTwo!9324 (regex!3078 (h!22880 rules!1846))))) b!1590687))

(assert (= (and b!1589007 (is-Star!4406 (regTwo!9324 (regex!3078 (h!22880 rules!1846))))) b!1590688))

(assert (= (and b!1589007 (is-Union!4406 (regTwo!9324 (regex!3078 (h!22880 rules!1846))))) b!1590689))

(declare-fun b!1590694 () Bool)

(declare-fun e!1021641 () Bool)

(assert (=> b!1590694 (= e!1021641 tp_is_empty!7211)))

(assert (=> b!1588987 (= tp!466965 e!1021641)))

(declare-fun b!1590697 () Bool)

(declare-fun tp!467096 () Bool)

(declare-fun tp!467093 () Bool)

(assert (=> b!1590697 (= e!1021641 (and tp!467096 tp!467093))))

(declare-fun b!1590696 () Bool)

(declare-fun tp!467095 () Bool)

(assert (=> b!1590696 (= e!1021641 tp!467095)))

(declare-fun b!1590695 () Bool)

(declare-fun tp!467094 () Bool)

(declare-fun tp!467092 () Bool)

(assert (=> b!1590695 (= e!1021641 (and tp!467094 tp!467092))))

(assert (= (and b!1588987 (is-ElementMatch!4406 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))) b!1590694))

(assert (= (and b!1588987 (is-Concat!7575 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))) b!1590695))

(assert (= (and b!1588987 (is-Star!4406 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))) b!1590696))

(assert (= (and b!1588987 (is-Union!4406 (regex!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))) b!1590697))

(declare-fun b!1590704 () Bool)

(declare-fun e!1021642 () Bool)

(assert (=> b!1590704 (= e!1021642 tp_is_empty!7211)))

(assert (=> b!1588973 (= tp!466954 e!1021642)))

(declare-fun b!1590707 () Bool)

(declare-fun tp!467101 () Bool)

(declare-fun tp!467098 () Bool)

(assert (=> b!1590707 (= e!1021642 (and tp!467101 tp!467098))))

(declare-fun b!1590706 () Bool)

(declare-fun tp!467100 () Bool)

(assert (=> b!1590706 (= e!1021642 tp!467100)))

(declare-fun b!1590705 () Bool)

(declare-fun tp!467099 () Bool)

(declare-fun tp!467097 () Bool)

(assert (=> b!1590705 (= e!1021642 (and tp!467099 tp!467097))))

(assert (= (and b!1588973 (is-ElementMatch!4406 (regex!3078 (h!22880 (t!144428 rules!1846))))) b!1590704))

(assert (= (and b!1588973 (is-Concat!7575 (regex!3078 (h!22880 (t!144428 rules!1846))))) b!1590705))

(assert (= (and b!1588973 (is-Star!4406 (regex!3078 (h!22880 (t!144428 rules!1846))))) b!1590706))

(assert (= (and b!1588973 (is-Union!4406 (regex!3078 (h!22880 (t!144428 rules!1846))))) b!1590707))

(declare-fun b!1590710 () Bool)

(declare-fun b_free!43027 () Bool)

(declare-fun b_next!43731 () Bool)

(assert (=> b!1590710 (= b_free!43027 (not b_next!43731))))

(declare-fun t!144591 () Bool)

(declare-fun tb!89519 () Bool)

(assert (=> (and b!1590710 (= (toValue!4489 (transformation!3078 (h!22880 (t!144428 (t!144428 rules!1846))))) (toValue!4489 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144591) tb!89519))

(declare-fun result!108388 () Bool)

(assert (= result!108388 result!108362))

(assert (=> d!473340 t!144591))

(declare-fun b_and!111553 () Bool)

(declare-fun tp!467104 () Bool)

(assert (=> b!1590710 (= tp!467104 (and (=> t!144591 result!108388) b_and!111553))))

(declare-fun b_free!43029 () Bool)

(declare-fun b_next!43733 () Bool)

(assert (=> b!1590710 (= b_free!43029 (not b_next!43733))))

(declare-fun tb!89521 () Bool)

(declare-fun t!144593 () Bool)

(assert (=> (and b!1590710 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 (t!144428 rules!1846))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457))))) t!144593) tb!89521))

(declare-fun result!108390 () Bool)

(assert (= result!108390 result!108246))

(assert (=> d!472688 t!144593))

(declare-fun t!144595 () Bool)

(declare-fun tb!89523 () Bool)

(assert (=> (and b!1590710 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 (t!144428 rules!1846))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (Cons!17480 (h!22881 tokens!457) Nil!17480)))))) t!144595) tb!89523))

(declare-fun result!108392 () Bool)

(assert (= result!108392 result!108354))

(assert (=> d!473294 t!144595))

(declare-fun t!144597 () Bool)

(declare-fun tb!89525 () Bool)

(assert (=> (and b!1590710 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 (t!144428 rules!1846))))) (toChars!4348 (transformation!3078 (rule!4882 lt!560995)))) t!144597) tb!89525))

(declare-fun result!108394 () Bool)

(assert (= result!108394 result!108306))

(assert (=> d!472930 t!144597))

(assert (=> b!1588801 t!144593))

(declare-fun t!144599 () Bool)

(declare-fun tb!89527 () Bool)

(assert (=> (and b!1590710 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 (t!144428 rules!1846))))) (toChars!4348 (transformation!3078 (rule!4882 (apply!4303 lt!560813 0))))) t!144599) tb!89527))

(declare-fun result!108396 () Bool)

(assert (= result!108396 result!108298))

(assert (=> d!472896 t!144599))

(declare-fun t!144601 () Bool)

(declare-fun tb!89529 () Bool)

(assert (=> (and b!1590710 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 (t!144428 rules!1846))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457)))))) t!144601) tb!89529))

(declare-fun result!108398 () Bool)

(assert (= result!108398 result!108262))

(assert (=> b!1590635 t!144601))

(declare-fun tb!89531 () Bool)

(declare-fun t!144603 () Bool)

(assert (=> (and b!1590710 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 (t!144428 rules!1846))))) (toChars!4348 (transformation!3078 (rule!4882 (_1!9880 (get!5002 lt!561060)))))) t!144603) tb!89531))

(declare-fun result!108400 () Bool)

(assert (= result!108400 result!108314))

(assert (=> d!472982 t!144603))

(assert (=> d!472848 t!144601))

(declare-fun tb!89533 () Bool)

(declare-fun t!144605 () Bool)

(assert (=> (and b!1590710 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 (t!144428 rules!1846))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457))))))) t!144605) tb!89533))

(declare-fun result!108402 () Bool)

(assert (= result!108402 result!108346))

(assert (=> d!473258 t!144605))

(declare-fun b_and!111555 () Bool)

(declare-fun tp!467102 () Bool)

(assert (=> b!1590710 (= tp!467102 (and (=> t!144595 result!108392) (=> t!144605 result!108402) (=> t!144593 result!108390) (=> t!144601 result!108398) (=> t!144597 result!108394) (=> t!144599 result!108396) (=> t!144603 result!108400) b_and!111555))))

(declare-fun e!1021646 () Bool)

(assert (=> b!1590710 (= e!1021646 (and tp!467104 tp!467102))))

(declare-fun tp!467105 () Bool)

(declare-fun b!1590709 () Bool)

(declare-fun e!1021645 () Bool)

(assert (=> b!1590709 (= e!1021645 (and tp!467105 (inv!22884 (tag!3348 (h!22880 (t!144428 (t!144428 rules!1846))))) (inv!22887 (transformation!3078 (h!22880 (t!144428 (t!144428 rules!1846))))) e!1021646))))

(declare-fun b!1590708 () Bool)

(declare-fun e!1021644 () Bool)

(declare-fun tp!467103 () Bool)

(assert (=> b!1590708 (= e!1021644 (and e!1021645 tp!467103))))

(assert (=> b!1588972 (= tp!466952 e!1021644)))

(assert (= b!1590709 b!1590710))

(assert (= b!1590708 b!1590709))

(assert (= (and b!1588972 (is-Cons!17479 (t!144428 (t!144428 rules!1846)))) b!1590708))

(declare-fun m!1884417 () Bool)

(assert (=> b!1590709 m!1884417))

(declare-fun m!1884419 () Bool)

(assert (=> b!1590709 m!1884419))

(declare-fun b!1590711 () Bool)

(declare-fun e!1021647 () Bool)

(declare-fun tp!467106 () Bool)

(assert (=> b!1590711 (= e!1021647 (and tp_is_empty!7211 tp!467106))))

(assert (=> b!1589014 (= tp!466992 e!1021647)))

(assert (= (and b!1589014 (is-Cons!17478 (t!144427 (originalCharacters!3892 (h!22881 tokens!457))))) b!1590711))

(declare-fun e!1021652 () Bool)

(declare-fun b!1590720 () Bool)

(declare-fun tp!467114 () Bool)

(declare-fun tp!467115 () Bool)

(assert (=> b!1590720 (= e!1021652 (and (inv!22891 (left!14109 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457)))))) tp!467114 (inv!22891 (right!14439 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457)))))) tp!467115))))

(declare-fun b!1590722 () Bool)

(declare-fun e!1021653 () Bool)

(declare-fun tp!467113 () Bool)

(assert (=> b!1590722 (= e!1021653 tp!467113)))

(declare-fun b!1590721 () Bool)

(declare-fun inv!22899 (IArray!11613) Bool)

(assert (=> b!1590721 (= e!1021652 (and (inv!22899 (xs!8612 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457)))))) e!1021653))))

(assert (=> b!1588605 (= tp!466937 (and (inv!22891 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457))))) e!1021652))))

(assert (= (and b!1588605 (is-Node!5804 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457)))))) b!1590720))

(assert (= b!1590721 b!1590722))

(assert (= (and b!1588605 (is-Leaf!8564 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (value!97397 (h!22881 tokens!457)))))) b!1590721))

(declare-fun m!1884421 () Bool)

(assert (=> b!1590720 m!1884421))

(declare-fun m!1884423 () Bool)

(assert (=> b!1590720 m!1884423))

(declare-fun m!1884425 () Bool)

(assert (=> b!1590721 m!1884425))

(assert (=> b!1588605 m!1880005))

(declare-fun b!1590723 () Bool)

(declare-fun e!1021654 () Bool)

(assert (=> b!1590723 (= e!1021654 tp_is_empty!7211)))

(assert (=> b!1589008 (= tp!466988 e!1021654)))

(declare-fun b!1590726 () Bool)

(declare-fun tp!467120 () Bool)

(declare-fun tp!467117 () Bool)

(assert (=> b!1590726 (= e!1021654 (and tp!467120 tp!467117))))

(declare-fun b!1590725 () Bool)

(declare-fun tp!467119 () Bool)

(assert (=> b!1590725 (= e!1021654 tp!467119)))

(declare-fun b!1590724 () Bool)

(declare-fun tp!467118 () Bool)

(declare-fun tp!467116 () Bool)

(assert (=> b!1590724 (= e!1021654 (and tp!467118 tp!467116))))

(assert (= (and b!1589008 (is-ElementMatch!4406 (reg!4735 (regex!3078 (h!22880 rules!1846))))) b!1590723))

(assert (= (and b!1589008 (is-Concat!7575 (reg!4735 (regex!3078 (h!22880 rules!1846))))) b!1590724))

(assert (= (and b!1589008 (is-Star!4406 (reg!4735 (regex!3078 (h!22880 rules!1846))))) b!1590725))

(assert (= (and b!1589008 (is-Union!4406 (reg!4735 (regex!3078 (h!22880 rules!1846))))) b!1590726))

(declare-fun b!1590727 () Bool)

(declare-fun e!1021655 () Bool)

(assert (=> b!1590727 (= e!1021655 tp_is_empty!7211)))

(assert (=> b!1589009 (= tp!466989 e!1021655)))

(declare-fun b!1590730 () Bool)

(declare-fun tp!467125 () Bool)

(declare-fun tp!467122 () Bool)

(assert (=> b!1590730 (= e!1021655 (and tp!467125 tp!467122))))

(declare-fun b!1590729 () Bool)

(declare-fun tp!467124 () Bool)

(assert (=> b!1590729 (= e!1021655 tp!467124)))

(declare-fun b!1590728 () Bool)

(declare-fun tp!467123 () Bool)

(declare-fun tp!467121 () Bool)

(assert (=> b!1590728 (= e!1021655 (and tp!467123 tp!467121))))

(assert (= (and b!1589009 (is-ElementMatch!4406 (regOne!9325 (regex!3078 (h!22880 rules!1846))))) b!1590727))

(assert (= (and b!1589009 (is-Concat!7575 (regOne!9325 (regex!3078 (h!22880 rules!1846))))) b!1590728))

(assert (= (and b!1589009 (is-Star!4406 (regOne!9325 (regex!3078 (h!22880 rules!1846))))) b!1590729))

(assert (= (and b!1589009 (is-Union!4406 (regOne!9325 (regex!3078 (h!22880 rules!1846))))) b!1590730))

(declare-fun b!1590731 () Bool)

(declare-fun e!1021656 () Bool)

(assert (=> b!1590731 (= e!1021656 tp_is_empty!7211)))

(assert (=> b!1589009 (= tp!466986 e!1021656)))

(declare-fun b!1590734 () Bool)

(declare-fun tp!467130 () Bool)

(declare-fun tp!467127 () Bool)

(assert (=> b!1590734 (= e!1021656 (and tp!467130 tp!467127))))

(declare-fun b!1590733 () Bool)

(declare-fun tp!467129 () Bool)

(assert (=> b!1590733 (= e!1021656 tp!467129)))

(declare-fun b!1590732 () Bool)

(declare-fun tp!467128 () Bool)

(declare-fun tp!467126 () Bool)

(assert (=> b!1590732 (= e!1021656 (and tp!467128 tp!467126))))

(assert (= (and b!1589009 (is-ElementMatch!4406 (regTwo!9325 (regex!3078 (h!22880 rules!1846))))) b!1590731))

(assert (= (and b!1589009 (is-Concat!7575 (regTwo!9325 (regex!3078 (h!22880 rules!1846))))) b!1590732))

(assert (= (and b!1589009 (is-Star!4406 (regTwo!9325 (regex!3078 (h!22880 rules!1846))))) b!1590733))

(assert (= (and b!1589009 (is-Union!4406 (regTwo!9325 (regex!3078 (h!22880 rules!1846))))) b!1590734))

(declare-fun tp!467132 () Bool)

(declare-fun tp!467133 () Bool)

(declare-fun b!1590735 () Bool)

(declare-fun e!1021657 () Bool)

(assert (=> b!1590735 (= e!1021657 (and (inv!22891 (left!14109 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457))))))) tp!467132 (inv!22891 (right!14439 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457))))))) tp!467133))))

(declare-fun b!1590737 () Bool)

(declare-fun e!1021658 () Bool)

(declare-fun tp!467131 () Bool)

(assert (=> b!1590737 (= e!1021658 tp!467131)))

(declare-fun b!1590736 () Bool)

(assert (=> b!1590736 (= e!1021657 (and (inv!22899 (xs!8612 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457))))))) e!1021658))))

(assert (=> b!1588956 (= tp!466942 (and (inv!22891 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457)))))) e!1021657))))

(assert (= (and b!1588956 (is-Node!5804 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457))))))) b!1590735))

(assert (= b!1590736 b!1590737))

(assert (= (and b!1588956 (is-Leaf!8564 (c!257383 (dynLambda!7768 (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (value!97397 (h!22881 (t!144429 tokens!457))))))) b!1590736))

(declare-fun m!1884427 () Bool)

(assert (=> b!1590735 m!1884427))

(declare-fun m!1884429 () Bool)

(assert (=> b!1590735 m!1884429))

(declare-fun m!1884431 () Bool)

(assert (=> b!1590736 m!1884431))

(assert (=> b!1588956 m!1880825))

(declare-fun b!1590740 () Bool)

(declare-fun e!1021661 () Bool)

(assert (=> b!1590740 (= e!1021661 true)))

(declare-fun b!1590739 () Bool)

(declare-fun e!1021660 () Bool)

(assert (=> b!1590739 (= e!1021660 e!1021661)))

(declare-fun b!1590738 () Bool)

(declare-fun e!1021659 () Bool)

(assert (=> b!1590738 (= e!1021659 e!1021660)))

(assert (=> b!1588717 e!1021659))

(assert (= b!1590739 b!1590740))

(assert (= b!1590738 b!1590739))

(assert (= (and b!1588717 (is-Cons!17479 (t!144428 rules!1846))) b!1590738))

(assert (=> b!1590740 (< (dynLambda!7769 order!10343 (toValue!4489 (transformation!3078 (h!22880 (t!144428 rules!1846))))) (dynLambda!7770 order!10345 lambda!66634))))

(assert (=> b!1590740 (< (dynLambda!7771 order!10347 (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846))))) (dynLambda!7770 order!10345 lambda!66634))))

(declare-fun b_lambda!50043 () Bool)

(assert (= b_lambda!50041 (or (and b!1588988 b_free!43013) (and b!1588496 b_free!42997 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))) (and b!1590673 b_free!43025 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))) (and b!1588488 b_free!42993 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))) (and b!1590710 b_free!43029 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 (t!144428 rules!1846))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))) (and b!1588974 b_free!43009 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))))) b_lambda!50043)))

(declare-fun b_lambda!50045 () Bool)

(assert (= b_lambda!50039 (or d!472734 b_lambda!50045)))

(declare-fun bs!391781 () Bool)

(declare-fun d!473706 () Bool)

(assert (= bs!391781 (and d!473706 d!472734)))

(assert (=> bs!391781 (= (dynLambda!7781 lambda!66634 (h!22881 tokens!457)) (rulesProduceIndividualToken!1359 thiss!17113 rules!1846 (h!22881 tokens!457)))))

(assert (=> bs!391781 m!1879799))

(assert (=> b!1590155 d!473706))

(declare-fun b_lambda!50047 () Bool)

(assert (= b_lambda!50031 (or (and b!1588488 b_free!42993 (= (toChars!4348 (transformation!3078 (h!22880 rules!1846))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))))) (and b!1590673 b_free!43025) (and b!1588496 b_free!42997 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 tokens!457)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))))) (and b!1588974 b_free!43009 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 rules!1846)))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))))) (and b!1588988 b_free!43013 (= (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 tokens!457))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))))) (and b!1590710 b_free!43029 (= (toChars!4348 (transformation!3078 (h!22880 (t!144428 (t!144428 rules!1846))))) (toChars!4348 (transformation!3078 (rule!4882 (h!22881 (t!144429 (t!144429 tokens!457)))))))) b_lambda!50047)))

(declare-fun b_lambda!50049 () Bool)

(assert (= b_lambda!50037 (or d!472832 b_lambda!50049)))

(declare-fun bs!391782 () Bool)

(declare-fun d!473708 () Bool)

(assert (= bs!391782 (and d!473708 d!472832)))

(assert (=> bs!391782 (= (dynLambda!7779 lambda!66640 (h!22880 rules!1846)) (regex!3078 (h!22880 rules!1846)))))

(assert (=> b!1590093 d!473708))

(push 1)

(assert (not bm!102958))

(assert (not d!473342))

(assert (not tb!89495))

(assert (not b!1589876))

(assert (not bm!102957))

(assert (not b!1590424))

(assert (not b!1588605))

(assert (not bm!103072))

(assert (not bs!391781))

(assert (not b!1589885))

(assert (not d!473308))

(assert (not d!473548))

(assert (not b!1589973))

(assert (not b!1590623))

(assert (not bm!103061))

(assert (not b!1590617))

(assert (not d!473268))

(assert (not d!473436))

(assert (not b!1590221))

(assert (not b!1590086))

(assert (not b!1589901))

(assert (not b!1589852))

(assert (not b!1590188))

(assert (not d!473600))

(assert (not b!1590736))

(assert (not b!1589881))

(assert (not d!472888))

(assert (not b!1590047))

(assert (not b!1590683))

(assert (not d!473702))

(assert (not b!1588956))

(assert (not b!1589890))

(assert (not d!473664))

(assert (not b!1589162))

(assert (not d!473606))

(assert (not b!1590403))

(assert b_and!111549)

(assert (not bm!103071))

(assert (not b!1589979))

(assert (not b!1589185))

(assert (not b!1590438))

(assert (not b!1590156))

(assert (not b!1589104))

(assert (not b!1589138))

(assert (not d!472916))

(assert (not b!1590199))

(assert (not b!1590735))

(assert (not b!1590696))

(assert (not d!473024))

(assert (not b!1589248))

(assert (not b!1589896))

(assert (not bm!103026))

(assert (not d!472900))

(assert (not b!1590733))

(assert (not b!1590137))

(assert (not b!1590474))

(assert (not d!473306))

(assert (not b!1590387))

(assert (not b!1589228))

(assert (not d!472924))

(assert (not b!1590342))

(assert (not b!1589188))

(assert (not b!1590098))

(assert (not b!1590105))

(assert (not b!1589149))

(assert (not d!473518))

(assert (not b!1589886))

(assert (not d!472884))

(assert (not b!1590435))

(assert (not b!1590109))

(assert (not d!472876))

(assert (not b!1590626))

(assert (not d!473516))

(assert (not b!1590315))

(assert (not d!472970))

(assert (not b!1590485))

(assert (not b!1590383))

(assert (not b!1590407))

(assert (not b!1590187))

(assert (not b!1589903))

(assert (not b!1590370))

(assert (not b!1589151))

(assert (not b!1590616))

(assert (not d!473666))

(assert (not b!1590472))

(assert (not b!1589272))

(assert (not b!1589324))

(assert (not b!1590031))

(assert (not b!1590671))

(assert (not b!1590034))

(assert (not d!473316))

(assert tp_is_empty!7211)

(assert (not b!1590726))

(assert (not d!473398))

(assert (not b!1589834))

(assert (not d!473578))

(assert (not b!1589211))

(assert (not b!1590394))

(assert (not d!472896))

(assert (not b!1590738))

(assert (not d!473028))

(assert (not b!1590343))

(assert (not b!1590687))

(assert (not b!1590219))

(assert (not d!472890))

(assert (not d!473404))

(assert (not d!473360))

(assert (not b!1590729))

(assert (not b!1590298))

(assert (not b_next!43713))

(assert (not d!472894))

(assert (not d!473696))

(assert (not b!1589163))

(assert (not d!473422))

(assert (not d!473384))

(assert (not b!1590183))

(assert (not b!1589972))

(assert (not d!473300))

(assert (not b!1590294))

(assert (not b!1589126))

(assert (not b!1590027))

(assert (not d!472938))

(assert (not b!1590335))

(assert (not b!1590396))

(assert (not b!1589908))

(assert (not d!473358))

(assert (not b!1590038))

(assert (not b!1590337))

(assert (not bm!102956))

(assert (not b!1590618))

(assert (not b!1590201))

(assert (not b!1590185))

(assert (not b_lambda!50007))

(assert (not b_next!43701))

(assert (not b!1590458))

(assert (not b_next!43717))

(assert (not b!1589842))

(assert (not d!473254))

(assert (not d!473466))

(assert (not b!1590561))

(assert (not b!1589866))

(assert (not b_next!43711))

(assert (not d!473314))

(assert (not d!473522))

(assert (not b!1590634))

(assert (not d!473476))

(assert (not b!1590097))

(assert (not b!1589909))

(assert (not b!1589310))

(assert (not b!1590646))

(assert (not d!472930))

(assert (not d!473294))

(assert (not b!1590711))

(assert (not b!1590083))

(assert (not d!473584))

(assert (not b!1590316))

(assert (not d!473536))

(assert (not b!1590643))

(assert (not b!1590419))

(assert (not d!473310))

(assert (not b!1589182))

(assert (not b!1589898))

(assert (not d!472972))

(assert (not b!1590697))

(assert (not d!472966))

(assert (not b!1590688))

(assert (not d!473494))

(assert (not b_next!43699))

(assert (not b!1589142))

(assert (not b!1589234))

(assert (not b!1590721))

(assert (not d!472964))

(assert (not b!1590139))

(assert (not d!473680))

(assert (not d!473676))

(assert (not b!1590087))

(assert (not d!473550))

(assert (not d!473412))

(assert (not b!1589850))

(assert (not d!472922))

(assert (not b!1590096))

(assert (not bm!103080))

(assert (not b!1589139))

(assert (not tb!89479))

(assert (not d!473356))

(assert (not bm!103068))

(assert (not d!473542))

(assert (not b_next!43727))

(assert (not d!473020))

(assert (not d!473014))

(assert (not b_lambda!50017))

(assert (not d!473362))

(assert (not b!1590386))

(assert (not b!1590393))

(assert (not d!473288))

(assert (not b!1590378))

(assert (not b!1589944))

(assert (not b_next!43733))

(assert (not b!1590425))

(assert (not bm!103077))

(assert (not b!1590648))

(assert b_and!111547)

(assert (not b!1589266))

(assert (not b_lambda!50043))

(assert (not b!1589845))

(assert (not b!1590505))

(assert (not b!1590517))

(assert (not b!1589253))

(assert (not d!473418))

(assert (not b!1590184))

(assert (not b!1589868))

(assert (not b!1589263))

(assert (not b_next!43731))

(assert (not b!1589216))

(assert (not b!1589930))

(assert b_and!111539)

(assert (not b!1589948))

(assert (not b!1589932))

(assert (not b!1589905))

(assert (not b_next!43729))

(assert (not b!1590135))

(assert (not b!1590131))

(assert (not b!1589160))

(assert (not tb!89439))

(assert (not d!473270))

(assert (not b!1589978))

(assert b_and!111537)

(assert (not d!472926))

(assert (not d!472982))

(assert (not b!1589195))

(assert (not b!1590483))

(assert (not d!473292))

(assert (not b!1590658))

(assert (not b!1589229))

(assert (not b!1589250))

(assert (not b!1589907))

(assert (not b!1590344))

(assert (not b!1589947))

(assert (not b!1589904))

(assert b_and!111553)

(assert (not b!1589189))

(assert (not d!473562))

(assert (not d!473272))

(assert (not b!1590732))

(assert (not b!1589186))

(assert (not b!1589915))

(assert (not d!473280))

(assert (not b!1589871))

(assert (not d!473534))

(assert (not b!1590080))

(assert (not b!1590206))

(assert (not b_lambda!50009))

(assert (not d!473552))

(assert (not b!1589226))

(assert (not b!1590456))

(assert (not b!1590115))

(assert (not b!1590415))

(assert (not b!1590295))

(assert (not d!473008))

(assert (not d!473352))

(assert (not b!1589855))

(assert (not b_next!43695))

(assert (not b_lambda!50045))

(assert (not d!472882))

(assert (not d!473366))

(assert (not b!1590670))

(assert (not b!1589835))

(assert (not d!473274))

(assert (not b!1589212))

(assert (not b!1590652))

(assert (not d!473540))

(assert (not b!1590099))

(assert (not b!1589878))

(assert (not b!1590379))

(assert (not d!473546))

(assert (not d!473668))

(assert (not b!1589884))

(assert (not bm!103094))

(assert (not b!1590695))

(assert (not d!473478))

(assert (not d!472978))

(assert (not d!473672))

(assert (not b!1590177))

(assert (not b!1590409))

(assert (not d!472948))

(assert (not b!1590180))

(assert (not b!1589105))

(assert (not b!1589844))

(assert (not b!1590708))

(assert (not bm!103028))

(assert (not b!1590437))

(assert (not b!1590197))

(assert (not b!1590045))

(assert (not d!472980))

(assert (not d!473510))

(assert (not d!473426))

(assert (not b!1590486))

(assert (not d!472976))

(assert (not b!1590656))

(assert (not b!1590081))

(assert (not b!1589164))

(assert (not b!1589931))

(assert (not b!1589221))

(assert (not b!1590314))

(assert (not d!473332))

(assert (not b!1589099))

(assert (not b!1589862))

(assert (not d!472874))

(assert (not b!1589215))

(assert (not b!1590391))

(assert (not d!473630))

(assert (not b!1590669))

(assert (not d!473414))

(assert (not b!1590737))

(assert (not b!1590655))

(assert (not b!1589176))

(assert (not b!1590640))

(assert (not d!473256))

(assert (not b_lambda!50019))

(assert (not d!473694))

(assert (not b!1590397))

(assert (not b!1589222))

(assert (not b!1589227))

(assert (not d!473258))

(assert (not b!1589872))

(assert (not b!1589260))

(assert (not b!1589277))

(assert (not d!473298))

(assert (not bm!102963))

(assert (not b!1590333))

(assert (not b!1590615))

(assert (not b!1589832))

(assert (not b!1589865))

(assert (not b!1590176))

(assert (not b!1590147))

(assert (not b!1589232))

(assert (not b!1590079))

(assert (not b!1589326))

(assert (not b!1589159))

(assert (not d!473400))

(assert (not bm!103104))

(assert (not b!1589196))

(assert (not b!1589858))

(assert (not tb!89487))

(assert (not b!1590051))

(assert (not d!473276))

(assert (not d!473480))

(assert (not d!472974))

(assert (not b!1590659))

(assert (not d!473506))

(assert (not d!472944))

(assert (not b!1589879))

(assert (not d!473678))

(assert (not b!1590629))

(assert (not b!1589251))

(assert (not b!1590668))

(assert (not b_lambda!50047))

(assert (not d!472932))

(assert (not b!1589864))

(assert (not d!473370))

(assert (not d!473574))

(assert (not b!1590057))

(assert (not b!1590132))

(assert (not b!1590093))

(assert (not b!1590026))

(assert (not bm!103067))

(assert (not bm!103073))

(assert (not d!473264))

(assert (not b!1589838))

(assert (not d!473428))

(assert (not b!1589891))

(assert (not b!1590664))

(assert (not b!1589181))

(assert (not b!1589217))

(assert (not b!1589943))

(assert (not b!1589231))

(assert (not b!1589135))

(assert (not d!472994))

(assert (not d!473016))

(assert (not d!473632))

(assert (not b!1589184))

(assert (not b!1589829))

(assert (not b!1590392))

(assert (not b!1589912))

(assert (not b!1590635))

(assert (not d!473408))

(assert (not b!1590179))

(assert (not d!472902))

(assert (not b!1590414))

(assert (not b!1589952))

(assert (not b!1590149))

(assert (not b!1589308))

(assert (not b!1590101))

(assert (not d!473586))

(assert (not b!1590460))

(assert (not b!1589161))

(assert (not b!1590205))

(assert b_and!111535)

(assert (not b!1589278))

(assert (not b!1589894))

(assert (not b!1590390))

(assert (not b!1590518))

(assert (not b!1590140))

(assert (not b!1590724))

(assert (not d!473026))

(assert (not b!1589883))

(assert (not d!472906))

(assert (not b!1589316))

(assert (not b!1590667))

(assert (not b!1590689))

(assert (not b!1589276))

(assert (not b!1589233))

(assert (not b!1589975))

(assert (not b!1590439))

(assert (not b!1589870))

(assert (not b!1590681))

(assert (not b!1590468))

(assert (not b!1589237))

(assert (not b!1590178))

(assert (not b!1589235))

(assert (not b!1589888))

(assert (not b!1590103))

(assert (not d!473438))

(assert b_and!111555)

(assert (not d!472892))

(assert (not b!1590408))

(assert (not b!1589860))

(assert (not b!1590162))

(assert (not b!1590645))

(assert (not b!1589219))

(assert (not b!1590636))

(assert (not d!473000))

(assert (not d!473580))

(assert (not b_lambda!50021))

(assert (not d!473514))

(assert (not d!472942))

(assert (not b!1589851))

(assert (not b!1590651))

(assert (not d!472910))

(assert (not bm!103105))

(assert (not b!1589874))

(assert (not b!1590297))

(assert (not bm!103093))

(assert b_and!111543)

(assert (not d!473278))

(assert (not d!473394))

(assert (not b!1589840))

(assert (not d!473674))

(assert (not b!1590706))

(assert (not b_lambda!50033))

(assert (not b!1589893))

(assert (not b!1590175))

(assert (not bm!103027))

(assert (not b!1590029))

(assert (not d!472904))

(assert (not b!1589853))

(assert (not b!1590663))

(assert (not b!1589902))

(assert (not bm!103091))

(assert (not b!1589230))

(assert (not b!1589927))

(assert (not b!1590223))

(assert (not b!1589210))

(assert (not b!1590110))

(assert (not b!1590503))

(assert (not b!1590662))

(assert (not b!1590218))

(assert (not b!1590725))

(assert (not d!473538))

(assert (not bm!102960))

(assert b_and!111533)

(assert (not bm!103092))

(assert (not b!1590134))

(assert b_and!111551)

(assert (not d!472996))

(assert (not b!1589224))

(assert (not b!1590484))

(assert (not tb!89431))

(assert (not b!1589158))

(assert (not b!1589317))

(assert (not b!1589246))

(assert (not d!473286))

(assert (not d!473582))

(assert (not b!1589906))

(assert (not b!1589166))

(assert (not b!1589877))

(assert (not b_next!43697))

(assert (not b!1589953))

(assert (not b!1589323))

(assert (not b!1590094))

(assert (not b!1590203))

(assert (not b!1590381))

(assert (not b!1590301))

(assert (not b!1589830))

(assert (not b!1589861))

(assert (not b!1589847))

(assert (not b!1589125))

(assert (not b!1590130))

(assert (not b!1590138))

(assert (not b!1590186))

(assert (not d!473348))

(assert (not d!473526))

(assert (not b_lambda!50005))

(assert (not b!1590111))

(assert (not b!1589880))

(assert (not b!1590722))

(assert (not d!473002))

(assert (not d!473022))

(assert (not d!473424))

(assert (not d!473512))

(assert (not d!472920))

(assert (not b!1590401))

(assert (not d!473686))

(assert (not d!472968))

(assert (not b!1590654))

(assert (not b!1589863))

(assert (not b!1590631))

(assert (not b!1590730))

(assert (not b!1590562))

(assert (not b!1589846))

(assert (not d!473302))

(assert (not d!472908))

(assert (not d!472962))

(assert (not d!473266))

(assert (not b!1590728))

(assert (not b!1589828))

(assert (not b!1590473))

(assert (not b!1590466))

(assert (not b_next!43715))

(assert (not b!1590660))

(assert (not d!473346))

(assert (not b!1589849))

(assert (not b!1589913))

(assert (not b!1590734))

(assert (not b!1590085))

(assert (not d!473386))

(assert (not b!1590630))

(assert (not b!1590299))

(assert (not b!1590624))

(assert (not b!1589141))

(assert (not b!1589911))

(assert (not d!473010))

(assert (not b!1589857))

(assert (not b!1589318))

(assert (not b!1590705))

(assert (not d!473382))

(assert b_and!111541)

(assert (not b!1590195))

(assert (not b!1589220))

(assert (not b!1589976))

(assert (not b!1590682))

(assert (not b!1590595))

(assert (not bm!103025))

(assert (not d!473328))

(assert (not b!1590672))

(assert (not b!1590625))

(assert (not b!1590639))

(assert (not d!473012))

(assert (not b!1590650))

(assert (not b!1589325))

(assert (not d!473572))

(assert (not b!1589254))

(assert (not d!473420))

(assert (not b!1590192))

(assert (not b!1590428))

(assert (not b!1590217))

(assert (not d!472928))

(assert (not d!473380))

(assert (not b!1590417))

(assert (not b!1589167))

(assert (not d!473320))

(assert (not b!1590302))

(assert (not d!473378))

(assert (not b!1590117))

(assert (not b!1590146))

(assert (not d!473482))

(assert (not b_lambda!50035))

(assert (not d!473670))

(assert (not b!1589312))

(assert (not d!473282))

(assert (not b!1590707))

(assert (not b!1590336))

(assert (not b!1590389))

(assert (not bm!103069))

(assert (not b!1589949))

(assert (not tb!89447))

(assert (not d!473290))

(assert (not d!473690))

(assert (not b!1589218))

(assert (not d!473682))

(assert (not b!1589264))

(assert (not b!1589321))

(assert (not d!473432))

(assert (not b!1590720))

(assert (not b!1589274))

(assert (not b!1589848))

(assert (not b!1590501))

(assert (not d!473502))

(assert (not d!473326))

(assert (not b!1590384))

(assert (not d!473392))

(assert (not b!1590399))

(assert (not b!1590189))

(assert (not b!1589101))

(assert (not b!1590382))

(assert (not d!473638))

(assert (not b!1590296))

(assert (not b!1590558))

(assert (not b!1590148))

(assert (not b!1590150))

(assert (not b!1590046))

(assert (not b_lambda!50049))

(assert (not d!473468))

(assert (not d!473318))

(assert (not b!1590418))

(assert (not b!1590377))

(assert (not b!1590145))

(assert (not d!473262))

(assert (not b!1590196))

(assert (not b!1590641))

(assert (not d!473496))

(assert b_and!111545)

(assert (not d!473364))

(assert (not b!1590429))

(assert (not d!473284))

(assert (not b!1589875))

(assert (not d!473492))

(assert (not b!1590666))

(assert (not b!1590204))

(assert (not b!1590709))

(assert (not b!1590464))

(assert (not d!473520))

(assert (not d!473350))

(assert (not b!1590461))

(assert (not bm!102959))

(assert (not b!1590133))

(check-sat)

(pop 1)

(push 1)

(assert b_and!111549)

(assert (not b_next!43713))

(assert (not b_next!43699))

(assert (not b_next!43727))

(assert (not b_next!43695))

(assert b_and!111535)

(assert b_and!111555)

(assert b_and!111543)

(assert (not b_next!43715))

(assert b_and!111541)

(assert b_and!111545)

(assert (not b_next!43701))

(assert (not b_next!43717))

(assert (not b_next!43711))

(assert (not b_next!43733))

(assert (not b_next!43731))

(assert b_and!111539)

(assert b_and!111547)

(assert (not b_next!43729))

(assert b_and!111537)

(assert b_and!111553)

(assert (not b_next!43697))

(assert b_and!111533)

(assert b_and!111551)

(check-sat)

(pop 1)

