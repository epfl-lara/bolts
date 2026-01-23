; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!148378 () Bool)

(assert start!148378)

(declare-fun b!1582709 () Bool)

(declare-fun b_free!42775 () Bool)

(declare-fun b_next!43479 () Bool)

(assert (=> b!1582709 (= b_free!42775 (not b_next!43479))))

(declare-fun tp!465729 () Bool)

(declare-fun b_and!110933 () Bool)

(assert (=> b!1582709 (= tp!465729 b_and!110933)))

(declare-fun b_free!42777 () Bool)

(declare-fun b_next!43481 () Bool)

(assert (=> b!1582709 (= b_free!42777 (not b_next!43481))))

(declare-fun tp!465732 () Bool)

(declare-fun b_and!110935 () Bool)

(assert (=> b!1582709 (= tp!465732 b_and!110935)))

(declare-fun b!1582702 () Bool)

(declare-fun b_free!42779 () Bool)

(declare-fun b_next!43483 () Bool)

(assert (=> b!1582702 (= b_free!42779 (not b_next!43483))))

(declare-fun tp!465725 () Bool)

(declare-fun b_and!110937 () Bool)

(assert (=> b!1582702 (= tp!465725 b_and!110937)))

(declare-fun b_free!42781 () Bool)

(declare-fun b_next!43485 () Bool)

(assert (=> b!1582702 (= b_free!42781 (not b_next!43485))))

(declare-fun tp!465724 () Bool)

(declare-fun b_and!110939 () Bool)

(assert (=> b!1582702 (= tp!465724 b_and!110939)))

(declare-fun e!1016653 () Bool)

(declare-fun tp!465726 () Bool)

(declare-datatypes ((List!17461 0))(
  ( (Nil!17391) (Cons!17391 (h!22792 (_ BitVec 16)) (t!143906 List!17461)) )
))
(declare-datatypes ((TokenValue!3155 0))(
  ( (FloatLiteralValue!6310 (text!22530 List!17461)) (TokenValueExt!3154 (__x!11612 Int)) (Broken!15775 (value!96999 List!17461)) (Object!3224) (End!3155) (Def!3155) (Underscore!3155) (Match!3155) (Else!3155) (Error!3155) (Case!3155) (If!3155) (Extends!3155) (Abstract!3155) (Class!3155) (Val!3155) (DelimiterValue!6310 (del!3215 List!17461)) (KeywordValue!3161 (value!97000 List!17461)) (CommentValue!6310 (value!97001 List!17461)) (WhitespaceValue!6310 (value!97002 List!17461)) (IndentationValue!3155 (value!97003 List!17461)) (String!20106) (Int32!3155) (Broken!15776 (value!97004 List!17461)) (Boolean!3156) (Unit!27158) (OperatorValue!3158 (op!3215 List!17461)) (IdentifierValue!6310 (value!97005 List!17461)) (IdentifierValue!6311 (value!97006 List!17461)) (WhitespaceValue!6311 (value!97007 List!17461)) (True!6310) (False!6310) (Broken!15777 (value!97008 List!17461)) (Broken!15778 (value!97009 List!17461)) (True!6311) (RightBrace!3155) (RightBracket!3155) (Colon!3155) (Null!3155) (Comma!3155) (LeftBracket!3155) (False!6311) (LeftBrace!3155) (ImaginaryLiteralValue!3155 (text!22531 List!17461)) (StringLiteralValue!9465 (value!97010 List!17461)) (EOFValue!3155 (value!97011 List!17461)) (IdentValue!3155 (value!97012 List!17461)) (DelimiterValue!6311 (value!97013 List!17461)) (DedentValue!3155 (value!97014 List!17461)) (NewLineValue!3155 (value!97015 List!17461)) (IntegerValue!9465 (value!97016 (_ BitVec 32)) (text!22532 List!17461)) (IntegerValue!9466 (value!97017 Int) (text!22533 List!17461)) (Times!3155) (Or!3155) (Equal!3155) (Minus!3155) (Broken!15779 (value!97018 List!17461)) (And!3155) (Div!3155) (LessEqual!3155) (Mod!3155) (Concat!7548) (Not!3155) (Plus!3155) (SpaceValue!3155 (value!97019 List!17461)) (IntegerValue!9467 (value!97020 Int) (text!22534 List!17461)) (StringLiteralValue!9466 (text!22535 List!17461)) (FloatLiteralValue!6311 (text!22536 List!17461)) (BytesLiteralValue!3155 (value!97021 List!17461)) (CommentValue!6311 (value!97022 List!17461)) (StringLiteralValue!9467 (value!97023 List!17461)) (ErrorTokenValue!3155 (msg!3216 List!17461)) )
))
(declare-datatypes ((C!8960 0))(
  ( (C!8961 (val!5076 Int)) )
))
(declare-datatypes ((List!17462 0))(
  ( (Nil!17392) (Cons!17392 (h!22793 C!8960) (t!143907 List!17462)) )
))
(declare-datatypes ((IArray!11561 0))(
  ( (IArray!11562 (innerList!5838 List!17462)) )
))
(declare-datatypes ((Conc!5778 0))(
  ( (Node!5778 (left!14052 Conc!5778) (right!14382 Conc!5778) (csize!11786 Int) (cheight!5989 Int)) (Leaf!8531 (xs!8582 IArray!11561) (csize!11787 Int)) (Empty!5778) )
))
(declare-datatypes ((BalanceConc!11500 0))(
  ( (BalanceConc!11501 (c!256481 Conc!5778)) )
))
(declare-datatypes ((Regex!4393 0))(
  ( (ElementMatch!4393 (c!256482 C!8960)) (Concat!7549 (regOne!9298 Regex!4393) (regTwo!9298 Regex!4393)) (EmptyExpr!4393) (Star!4393 (reg!4722 Regex!4393)) (EmptyLang!4393) (Union!4393 (regOne!9299 Regex!4393) (regTwo!9299 Regex!4393)) )
))
(declare-datatypes ((String!20107 0))(
  ( (String!20108 (value!97024 String)) )
))
(declare-datatypes ((TokenValueInjection!5970 0))(
  ( (TokenValueInjection!5971 (toValue!4472 Int) (toChars!4331 Int)) )
))
(declare-datatypes ((Rule!5930 0))(
  ( (Rule!5931 (regex!3065 Regex!4393) (tag!3333 String!20107) (isSeparator!3065 Bool) (transformation!3065 TokenValueInjection!5970)) )
))
(declare-datatypes ((Token!5696 0))(
  ( (Token!5697 (value!97025 TokenValue!3155) (rule!4865 Rule!5930) (size!13991 Int) (originalCharacters!3879 List!17462)) )
))
(declare-datatypes ((List!17463 0))(
  ( (Nil!17393) (Cons!17393 (h!22794 Token!5696) (t!143908 List!17463)) )
))
(declare-fun tokens!457 () List!17463)

(declare-fun b!1582700 () Bool)

(declare-fun e!1016665 () Bool)

(declare-fun inv!22807 (String!20107) Bool)

(declare-fun inv!22810 (TokenValueInjection!5970) Bool)

(assert (=> b!1582700 (= e!1016653 (and tp!465726 (inv!22807 (tag!3333 (rule!4865 (h!22794 tokens!457)))) (inv!22810 (transformation!3065 (rule!4865 (h!22794 tokens!457)))) e!1016665))))

(declare-fun b!1582701 () Bool)

(declare-fun res!705693 () Bool)

(declare-fun e!1016658 () Bool)

(assert (=> b!1582701 (=> (not res!705693) (not e!1016658))))

(declare-datatypes ((List!17464 0))(
  ( (Nil!17394) (Cons!17394 (h!22795 Rule!5930) (t!143909 List!17464)) )
))
(declare-fun rules!1846 () List!17464)

(declare-datatypes ((LexerInterface!2694 0))(
  ( (LexerInterfaceExt!2691 (__x!11613 Int)) (Lexer!2692) )
))
(declare-fun thiss!17113 () LexerInterface!2694)

(declare-fun rulesProduceEachTokenIndividuallyList!896 (LexerInterface!2694 List!17464 List!17463) Bool)

(assert (=> b!1582701 (= res!705693 (rulesProduceEachTokenIndividuallyList!896 thiss!17113 rules!1846 tokens!457))))

(assert (=> b!1582702 (= e!1016665 (and tp!465725 tp!465724))))

(declare-fun b!1582703 () Bool)

(declare-fun res!705694 () Bool)

(assert (=> b!1582703 (=> (not res!705694) (not e!1016658))))

(declare-fun rulesInvariant!2363 (LexerInterface!2694 List!17464) Bool)

(assert (=> b!1582703 (= res!705694 (rulesInvariant!2363 thiss!17113 rules!1846))))

(declare-fun b!1582704 () Bool)

(declare-fun res!705690 () Bool)

(declare-fun e!1016657 () Bool)

(assert (=> b!1582704 (=> res!705690 e!1016657)))

(declare-fun separableTokensPredicate!636 (LexerInterface!2694 Token!5696 Token!5696 List!17464) Bool)

(assert (=> b!1582704 (= res!705690 (not (separableTokensPredicate!636 thiss!17113 (h!22794 tokens!457) (h!22794 (t!143908 tokens!457)) rules!1846)))))

(declare-fun b!1582705 () Bool)

(declare-fun e!1016661 () Bool)

(declare-fun e!1016667 () Bool)

(assert (=> b!1582705 (= e!1016661 e!1016667)))

(declare-fun res!705685 () Bool)

(assert (=> b!1582705 (=> res!705685 e!1016667)))

(declare-datatypes ((tuple2!16872 0))(
  ( (tuple2!16873 (_1!9838 Token!5696) (_2!9838 List!17462)) )
))
(declare-datatypes ((Option!3124 0))(
  ( (None!3123) (Some!3123 (v!23976 tuple2!16872)) )
))
(declare-fun lt!555369 () Option!3124)

(declare-fun isDefined!2501 (Option!3124) Bool)

(assert (=> b!1582705 (= res!705685 (not (isDefined!2501 lt!555369)))))

(declare-fun lt!555367 () List!17462)

(declare-datatypes ((Unit!27159 0))(
  ( (Unit!27160) )
))
(declare-fun lt!555355 () Unit!27159)

(declare-fun lt!555352 () List!17462)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!268 (LexerInterface!2694 List!17464 List!17462 List!17462) Unit!27159)

(assert (=> b!1582705 (= lt!555355 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!268 thiss!17113 rules!1846 lt!555352 lt!555367))))

(declare-fun b!1582706 () Bool)

(declare-fun e!1016654 () Bool)

(assert (=> b!1582706 (= e!1016658 e!1016654)))

(declare-fun res!705697 () Bool)

(assert (=> b!1582706 (=> (not res!705697) (not e!1016654))))

(declare-fun lt!555350 () List!17462)

(declare-fun lt!555358 () List!17462)

(assert (=> b!1582706 (= res!705697 (= lt!555350 lt!555358))))

(declare-fun ++!4524 (List!17462 List!17462) List!17462)

(assert (=> b!1582706 (= lt!555358 (++!4524 lt!555352 lt!555367))))

(declare-fun lt!555354 () BalanceConc!11500)

(declare-fun list!6735 (BalanceConc!11500) List!17462)

(assert (=> b!1582706 (= lt!555350 (list!6735 lt!555354))))

(declare-fun lt!555356 () BalanceConc!11500)

(assert (=> b!1582706 (= lt!555367 (list!6735 lt!555356))))

(declare-fun charsOf!1714 (Token!5696) BalanceConc!11500)

(assert (=> b!1582706 (= lt!555352 (list!6735 (charsOf!1714 (h!22794 tokens!457))))))

(declare-datatypes ((IArray!11563 0))(
  ( (IArray!11564 (innerList!5839 List!17463)) )
))
(declare-datatypes ((Conc!5779 0))(
  ( (Node!5779 (left!14053 Conc!5779) (right!14383 Conc!5779) (csize!11788 Int) (cheight!5990 Int)) (Leaf!8532 (xs!8583 IArray!11563) (csize!11789 Int)) (Empty!5779) )
))
(declare-datatypes ((BalanceConc!11502 0))(
  ( (BalanceConc!11503 (c!256483 Conc!5779)) )
))
(declare-datatypes ((tuple2!16874 0))(
  ( (tuple2!16875 (_1!9839 BalanceConc!11502) (_2!9839 BalanceConc!11500)) )
))
(declare-fun lt!555351 () tuple2!16874)

(declare-fun lex!1178 (LexerInterface!2694 List!17464 BalanceConc!11500) tuple2!16874)

(assert (=> b!1582706 (= lt!555351 (lex!1178 thiss!17113 rules!1846 lt!555356))))

(declare-fun lt!555365 () BalanceConc!11502)

(declare-fun print!1225 (LexerInterface!2694 BalanceConc!11502) BalanceConc!11500)

(assert (=> b!1582706 (= lt!555356 (print!1225 thiss!17113 lt!555365))))

(declare-fun seqFromList!1879 (List!17463) BalanceConc!11502)

(assert (=> b!1582706 (= lt!555365 (seqFromList!1879 (t!143908 tokens!457)))))

(assert (=> b!1582706 (= lt!555354 (print!1225 thiss!17113 (seqFromList!1879 tokens!457)))))

(declare-fun tp!465728 () Bool)

(declare-fun b!1582708 () Bool)

(declare-fun e!1016659 () Bool)

(declare-fun e!1016662 () Bool)

(assert (=> b!1582708 (= e!1016662 (and tp!465728 (inv!22807 (tag!3333 (h!22795 rules!1846))) (inv!22810 (transformation!3065 (h!22795 rules!1846))) e!1016659))))

(assert (=> b!1582709 (= e!1016659 (and tp!465729 tp!465732))))

(declare-fun b!1582710 () Bool)

(declare-fun e!1016656 () Bool)

(declare-fun tp!465727 () Bool)

(assert (=> b!1582710 (= e!1016656 (and e!1016662 tp!465727))))

(declare-fun b!1582711 () Bool)

(declare-fun res!705687 () Bool)

(assert (=> b!1582711 (=> (not res!705687) (not e!1016658))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!387 (LexerInterface!2694 List!17463 List!17464) Bool)

(assert (=> b!1582711 (= res!705687 (tokensListTwoByTwoPredicateSeparableList!387 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1582712 () Bool)

(declare-fun res!705695 () Bool)

(assert (=> b!1582712 (=> (not res!705695) (not e!1016658))))

(get-info :version)

(assert (=> b!1582712 (= res!705695 (and (not ((_ is Nil!17393) tokens!457)) (not ((_ is Nil!17393) (t!143908 tokens!457)))))))

(declare-fun tp!465731 () Bool)

(declare-fun e!1016663 () Bool)

(declare-fun b!1582713 () Bool)

(declare-fun e!1016660 () Bool)

(declare-fun inv!22811 (Token!5696) Bool)

(assert (=> b!1582713 (= e!1016660 (and (inv!22811 (h!22794 tokens!457)) e!1016663 tp!465731))))

(declare-fun b!1582714 () Bool)

(declare-fun e!1016668 () Bool)

(assert (=> b!1582714 (= e!1016668 e!1016657)))

(declare-fun res!705688 () Bool)

(assert (=> b!1582714 (=> res!705688 e!1016657)))

(declare-fun lt!555362 () List!17463)

(declare-fun lt!555359 () List!17463)

(declare-fun lt!555353 () List!17463)

(assert (=> b!1582714 (= res!705688 (or (not (= lt!555359 lt!555353)) (not (= lt!555353 lt!555362))))))

(declare-fun list!6736 (BalanceConc!11502) List!17463)

(assert (=> b!1582714 (= lt!555353 (list!6736 lt!555365))))

(assert (=> b!1582714 (= lt!555359 lt!555362)))

(declare-fun prepend!545 (BalanceConc!11502 Token!5696) BalanceConc!11502)

(assert (=> b!1582714 (= lt!555362 (list!6736 (prepend!545 (seqFromList!1879 (t!143908 (t!143908 tokens!457))) (h!22794 (t!143908 tokens!457)))))))

(declare-fun lt!555366 () Unit!27159)

(declare-fun seqFromListBHdTlConstructive!142 (Token!5696 List!17463 BalanceConc!11502) Unit!27159)

(assert (=> b!1582714 (= lt!555366 (seqFromListBHdTlConstructive!142 (h!22794 (t!143908 tokens!457)) (t!143908 (t!143908 tokens!457)) (_1!9839 lt!555351)))))

(declare-fun b!1582715 () Bool)

(declare-fun tp!465730 () Bool)

(declare-fun inv!21 (TokenValue!3155) Bool)

(assert (=> b!1582715 (= e!1016663 (and (inv!21 (value!97025 (h!22794 tokens!457))) e!1016653 tp!465730))))

(declare-fun b!1582716 () Bool)

(declare-fun res!705698 () Bool)

(assert (=> b!1582716 (=> res!705698 e!1016661)))

(declare-fun rulesProduceIndividualToken!1346 (LexerInterface!2694 List!17464 Token!5696) Bool)

(assert (=> b!1582716 (= res!705698 (not (rulesProduceIndividualToken!1346 thiss!17113 rules!1846 (h!22794 tokens!457))))))

(declare-fun b!1582717 () Bool)

(declare-fun size!13992 (BalanceConc!11500) Int)

(assert (=> b!1582717 (= e!1016667 (< 0 (size!13992 (charsOf!1714 (h!22794 (t!143908 tokens!457))))))))

(declare-fun lt!555370 () Regex!4393)

(declare-fun rulesRegex!455 (LexerInterface!2694 List!17464) Regex!4393)

(assert (=> b!1582717 (= lt!555370 (rulesRegex!455 thiss!17113 rules!1846))))

(declare-fun b!1582718 () Bool)

(assert (=> b!1582718 (= e!1016657 e!1016661)))

(declare-fun res!705689 () Bool)

(assert (=> b!1582718 (=> res!705689 e!1016661)))

(declare-fun lt!555361 () List!17462)

(declare-fun lt!555360 () List!17462)

(assert (=> b!1582718 (= res!705689 (or (not (= lt!555360 lt!555361)) (not (= lt!555361 lt!555352)) (not (= lt!555360 lt!555352))))))

(declare-fun printList!809 (LexerInterface!2694 List!17463) List!17462)

(assert (=> b!1582718 (= lt!555361 (printList!809 thiss!17113 (Cons!17393 (h!22794 tokens!457) Nil!17393)))))

(declare-fun lt!555364 () BalanceConc!11500)

(assert (=> b!1582718 (= lt!555360 (list!6735 lt!555364))))

(declare-fun lt!555357 () BalanceConc!11502)

(declare-fun printTailRec!747 (LexerInterface!2694 BalanceConc!11502 Int BalanceConc!11500) BalanceConc!11500)

(assert (=> b!1582718 (= lt!555364 (printTailRec!747 thiss!17113 lt!555357 0 (BalanceConc!11501 Empty!5778)))))

(assert (=> b!1582718 (= lt!555364 (print!1225 thiss!17113 lt!555357))))

(declare-fun singletonSeq!1407 (Token!5696) BalanceConc!11502)

(assert (=> b!1582718 (= lt!555357 (singletonSeq!1407 (h!22794 tokens!457)))))

(declare-fun maxPrefix!1258 (LexerInterface!2694 List!17464 List!17462) Option!3124)

(assert (=> b!1582718 (= lt!555369 (maxPrefix!1258 thiss!17113 rules!1846 lt!555350))))

(declare-fun b!1582707 () Bool)

(assert (=> b!1582707 (= e!1016654 (not e!1016668))))

(declare-fun res!705692 () Bool)

(assert (=> b!1582707 (=> res!705692 e!1016668)))

(assert (=> b!1582707 (= res!705692 (not (= lt!555359 (t!143908 tokens!457))))))

(assert (=> b!1582707 (= lt!555359 (list!6736 (_1!9839 lt!555351)))))

(declare-fun lt!555363 () Unit!27159)

(declare-fun theoremInvertabilityWhenTokenListSeparable!139 (LexerInterface!2694 List!17464 List!17463) Unit!27159)

(assert (=> b!1582707 (= lt!555363 (theoremInvertabilityWhenTokenListSeparable!139 thiss!17113 rules!1846 (t!143908 tokens!457)))))

(declare-fun isPrefix!1325 (List!17462 List!17462) Bool)

(assert (=> b!1582707 (isPrefix!1325 lt!555352 lt!555358)))

(declare-fun lt!555368 () Unit!27159)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!850 (List!17462 List!17462) Unit!27159)

(assert (=> b!1582707 (= lt!555368 (lemmaConcatTwoListThenFirstIsPrefix!850 lt!555352 lt!555367))))

(declare-fun res!705686 () Bool)

(assert (=> start!148378 (=> (not res!705686) (not e!1016658))))

(assert (=> start!148378 (= res!705686 ((_ is Lexer!2692) thiss!17113))))

(assert (=> start!148378 e!1016658))

(assert (=> start!148378 true))

(assert (=> start!148378 e!1016656))

(assert (=> start!148378 e!1016660))

(declare-fun b!1582719 () Bool)

(declare-fun res!705696 () Bool)

(assert (=> b!1582719 (=> res!705696 e!1016661)))

(declare-fun isEmpty!10408 (BalanceConc!11502) Bool)

(declare-fun seqFromList!1880 (List!17462) BalanceConc!11500)

(assert (=> b!1582719 (= res!705696 (isEmpty!10408 (_1!9839 (lex!1178 thiss!17113 rules!1846 (seqFromList!1880 lt!555352)))))))

(declare-fun b!1582720 () Bool)

(declare-fun res!705691 () Bool)

(assert (=> b!1582720 (=> (not res!705691) (not e!1016658))))

(declare-fun isEmpty!10409 (List!17464) Bool)

(assert (=> b!1582720 (= res!705691 (not (isEmpty!10409 rules!1846)))))

(assert (= (and start!148378 res!705686) b!1582720))

(assert (= (and b!1582720 res!705691) b!1582703))

(assert (= (and b!1582703 res!705694) b!1582701))

(assert (= (and b!1582701 res!705693) b!1582711))

(assert (= (and b!1582711 res!705687) b!1582712))

(assert (= (and b!1582712 res!705695) b!1582706))

(assert (= (and b!1582706 res!705697) b!1582707))

(assert (= (and b!1582707 (not res!705692)) b!1582714))

(assert (= (and b!1582714 (not res!705688)) b!1582704))

(assert (= (and b!1582704 (not res!705690)) b!1582718))

(assert (= (and b!1582718 (not res!705689)) b!1582716))

(assert (= (and b!1582716 (not res!705698)) b!1582719))

(assert (= (and b!1582719 (not res!705696)) b!1582705))

(assert (= (and b!1582705 (not res!705685)) b!1582717))

(assert (= b!1582708 b!1582709))

(assert (= b!1582710 b!1582708))

(assert (= (and start!148378 ((_ is Cons!17394) rules!1846)) b!1582710))

(assert (= b!1582700 b!1582702))

(assert (= b!1582715 b!1582700))

(assert (= b!1582713 b!1582715))

(assert (= (and start!148378 ((_ is Cons!17393) tokens!457)) b!1582713))

(declare-fun m!1868803 () Bool)

(assert (=> b!1582715 m!1868803))

(declare-fun m!1868805 () Bool)

(assert (=> b!1582707 m!1868805))

(declare-fun m!1868807 () Bool)

(assert (=> b!1582707 m!1868807))

(declare-fun m!1868809 () Bool)

(assert (=> b!1582707 m!1868809))

(declare-fun m!1868811 () Bool)

(assert (=> b!1582707 m!1868811))

(declare-fun m!1868813 () Bool)

(assert (=> b!1582706 m!1868813))

(declare-fun m!1868815 () Bool)

(assert (=> b!1582706 m!1868815))

(declare-fun m!1868817 () Bool)

(assert (=> b!1582706 m!1868817))

(declare-fun m!1868819 () Bool)

(assert (=> b!1582706 m!1868819))

(declare-fun m!1868821 () Bool)

(assert (=> b!1582706 m!1868821))

(declare-fun m!1868823 () Bool)

(assert (=> b!1582706 m!1868823))

(declare-fun m!1868825 () Bool)

(assert (=> b!1582706 m!1868825))

(assert (=> b!1582706 m!1868823))

(declare-fun m!1868827 () Bool)

(assert (=> b!1582706 m!1868827))

(declare-fun m!1868829 () Bool)

(assert (=> b!1582706 m!1868829))

(assert (=> b!1582706 m!1868817))

(declare-fun m!1868831 () Bool)

(assert (=> b!1582706 m!1868831))

(declare-fun m!1868833 () Bool)

(assert (=> b!1582700 m!1868833))

(declare-fun m!1868835 () Bool)

(assert (=> b!1582700 m!1868835))

(declare-fun m!1868837 () Bool)

(assert (=> b!1582701 m!1868837))

(declare-fun m!1868839 () Bool)

(assert (=> b!1582703 m!1868839))

(declare-fun m!1868841 () Bool)

(assert (=> b!1582705 m!1868841))

(declare-fun m!1868843 () Bool)

(assert (=> b!1582705 m!1868843))

(declare-fun m!1868845 () Bool)

(assert (=> b!1582704 m!1868845))

(declare-fun m!1868847 () Bool)

(assert (=> b!1582717 m!1868847))

(assert (=> b!1582717 m!1868847))

(declare-fun m!1868849 () Bool)

(assert (=> b!1582717 m!1868849))

(declare-fun m!1868851 () Bool)

(assert (=> b!1582717 m!1868851))

(declare-fun m!1868853 () Bool)

(assert (=> b!1582708 m!1868853))

(declare-fun m!1868855 () Bool)

(assert (=> b!1582708 m!1868855))

(declare-fun m!1868857 () Bool)

(assert (=> b!1582713 m!1868857))

(declare-fun m!1868859 () Bool)

(assert (=> b!1582718 m!1868859))

(declare-fun m!1868861 () Bool)

(assert (=> b!1582718 m!1868861))

(declare-fun m!1868863 () Bool)

(assert (=> b!1582718 m!1868863))

(declare-fun m!1868865 () Bool)

(assert (=> b!1582718 m!1868865))

(declare-fun m!1868867 () Bool)

(assert (=> b!1582718 m!1868867))

(declare-fun m!1868869 () Bool)

(assert (=> b!1582718 m!1868869))

(declare-fun m!1868871 () Bool)

(assert (=> b!1582720 m!1868871))

(declare-fun m!1868873 () Bool)

(assert (=> b!1582714 m!1868873))

(declare-fun m!1868875 () Bool)

(assert (=> b!1582714 m!1868875))

(declare-fun m!1868877 () Bool)

(assert (=> b!1582714 m!1868877))

(declare-fun m!1868879 () Bool)

(assert (=> b!1582714 m!1868879))

(declare-fun m!1868881 () Bool)

(assert (=> b!1582714 m!1868881))

(assert (=> b!1582714 m!1868877))

(assert (=> b!1582714 m!1868879))

(declare-fun m!1868883 () Bool)

(assert (=> b!1582711 m!1868883))

(declare-fun m!1868885 () Bool)

(assert (=> b!1582716 m!1868885))

(declare-fun m!1868887 () Bool)

(assert (=> b!1582719 m!1868887))

(assert (=> b!1582719 m!1868887))

(declare-fun m!1868889 () Bool)

(assert (=> b!1582719 m!1868889))

(declare-fun m!1868891 () Bool)

(assert (=> b!1582719 m!1868891))

(check-sat (not b_next!43485) (not b!1582720) (not b!1582718) (not b!1582707) b_and!110935 (not b!1582703) (not b!1582700) (not b!1582713) (not b!1582711) (not b_next!43479) b_and!110933 (not b!1582719) (not b_next!43481) (not b!1582708) (not b!1582706) (not b!1582710) (not b!1582704) (not b!1582701) (not b!1582717) b_and!110937 (not b!1582715) (not b_next!43483) (not b!1582716) (not b!1582714) b_and!110939 (not b!1582705))
(check-sat (not b_next!43485) b_and!110935 b_and!110937 (not b_next!43479) b_and!110933 (not b_next!43481) (not b_next!43483) b_and!110939)
(get-model)

(declare-fun d!470565 () Bool)

(declare-fun res!705710 () Bool)

(declare-fun e!1016671 () Bool)

(assert (=> d!470565 (=> (not res!705710) (not e!1016671))))

(declare-fun isEmpty!10414 (List!17462) Bool)

(assert (=> d!470565 (= res!705710 (not (isEmpty!10414 (originalCharacters!3879 (h!22794 tokens!457)))))))

(assert (=> d!470565 (= (inv!22811 (h!22794 tokens!457)) e!1016671)))

(declare-fun b!1582725 () Bool)

(declare-fun res!705711 () Bool)

(assert (=> b!1582725 (=> (not res!705711) (not e!1016671))))

(declare-fun dynLambda!7710 (Int TokenValue!3155) BalanceConc!11500)

(assert (=> b!1582725 (= res!705711 (= (originalCharacters!3879 (h!22794 tokens!457)) (list!6735 (dynLambda!7710 (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))) (value!97025 (h!22794 tokens!457))))))))

(declare-fun b!1582726 () Bool)

(declare-fun size!13995 (List!17462) Int)

(assert (=> b!1582726 (= e!1016671 (= (size!13991 (h!22794 tokens!457)) (size!13995 (originalCharacters!3879 (h!22794 tokens!457)))))))

(assert (= (and d!470565 res!705710) b!1582725))

(assert (= (and b!1582725 res!705711) b!1582726))

(declare-fun b_lambda!49797 () Bool)

(assert (=> (not b_lambda!49797) (not b!1582725)))

(declare-fun t!143911 () Bool)

(declare-fun tb!89047 () Bool)

(assert (=> (and b!1582709 (= (toChars!4331 (transformation!3065 (h!22795 rules!1846))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457))))) t!143911) tb!89047))

(declare-fun b!1582731 () Bool)

(declare-fun e!1016674 () Bool)

(declare-fun tp!465735 () Bool)

(declare-fun inv!22812 (Conc!5778) Bool)

(assert (=> b!1582731 (= e!1016674 (and (inv!22812 (c!256481 (dynLambda!7710 (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))) (value!97025 (h!22794 tokens!457))))) tp!465735))))

(declare-fun result!107766 () Bool)

(declare-fun inv!22813 (BalanceConc!11500) Bool)

(assert (=> tb!89047 (= result!107766 (and (inv!22813 (dynLambda!7710 (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))) (value!97025 (h!22794 tokens!457)))) e!1016674))))

(assert (= tb!89047 b!1582731))

(declare-fun m!1868893 () Bool)

(assert (=> b!1582731 m!1868893))

(declare-fun m!1868895 () Bool)

(assert (=> tb!89047 m!1868895))

(assert (=> b!1582725 t!143911))

(declare-fun b_and!110941 () Bool)

(assert (= b_and!110935 (and (=> t!143911 result!107766) b_and!110941)))

(declare-fun t!143913 () Bool)

(declare-fun tb!89049 () Bool)

(assert (=> (and b!1582702 (= (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457))))) t!143913) tb!89049))

(declare-fun result!107770 () Bool)

(assert (= result!107770 result!107766))

(assert (=> b!1582725 t!143913))

(declare-fun b_and!110943 () Bool)

(assert (= b_and!110939 (and (=> t!143913 result!107770) b_and!110943)))

(declare-fun m!1868897 () Bool)

(assert (=> d!470565 m!1868897))

(declare-fun m!1868899 () Bool)

(assert (=> b!1582725 m!1868899))

(assert (=> b!1582725 m!1868899))

(declare-fun m!1868901 () Bool)

(assert (=> b!1582725 m!1868901))

(declare-fun m!1868903 () Bool)

(assert (=> b!1582726 m!1868903))

(assert (=> b!1582713 d!470565))

(declare-fun d!470567 () Bool)

(declare-fun res!705714 () Bool)

(declare-fun e!1016677 () Bool)

(assert (=> d!470567 (=> (not res!705714) (not e!1016677))))

(declare-fun rulesValid!1081 (LexerInterface!2694 List!17464) Bool)

(assert (=> d!470567 (= res!705714 (rulesValid!1081 thiss!17113 rules!1846))))

(assert (=> d!470567 (= (rulesInvariant!2363 thiss!17113 rules!1846) e!1016677)))

(declare-fun b!1582734 () Bool)

(declare-datatypes ((List!17465 0))(
  ( (Nil!17395) (Cons!17395 (h!22796 String!20107) (t!143950 List!17465)) )
))
(declare-fun noDuplicateTag!1081 (LexerInterface!2694 List!17464 List!17465) Bool)

(assert (=> b!1582734 (= e!1016677 (noDuplicateTag!1081 thiss!17113 rules!1846 Nil!17395))))

(assert (= (and d!470567 res!705714) b!1582734))

(declare-fun m!1868905 () Bool)

(assert (=> d!470567 m!1868905))

(declare-fun m!1868907 () Bool)

(assert (=> b!1582734 m!1868907))

(assert (=> b!1582703 d!470567))

(declare-fun d!470569 () Bool)

(declare-fun e!1016680 () Bool)

(assert (=> d!470569 e!1016680))

(declare-fun res!705717 () Bool)

(assert (=> d!470569 (=> (not res!705717) (not e!1016680))))

(declare-fun isBalanced!1698 (Conc!5779) Bool)

(declare-fun prepend!546 (Conc!5779 Token!5696) Conc!5779)

(assert (=> d!470569 (= res!705717 (isBalanced!1698 (prepend!546 (c!256483 (seqFromList!1879 (t!143908 (t!143908 tokens!457)))) (h!22794 (t!143908 tokens!457)))))))

(declare-fun lt!555373 () BalanceConc!11502)

(assert (=> d!470569 (= lt!555373 (BalanceConc!11503 (prepend!546 (c!256483 (seqFromList!1879 (t!143908 (t!143908 tokens!457)))) (h!22794 (t!143908 tokens!457)))))))

(assert (=> d!470569 (= (prepend!545 (seqFromList!1879 (t!143908 (t!143908 tokens!457))) (h!22794 (t!143908 tokens!457))) lt!555373)))

(declare-fun b!1582737 () Bool)

(assert (=> b!1582737 (= e!1016680 (= (list!6736 lt!555373) (Cons!17393 (h!22794 (t!143908 tokens!457)) (list!6736 (seqFromList!1879 (t!143908 (t!143908 tokens!457)))))))))

(assert (= (and d!470569 res!705717) b!1582737))

(declare-fun m!1868909 () Bool)

(assert (=> d!470569 m!1868909))

(assert (=> d!470569 m!1868909))

(declare-fun m!1868911 () Bool)

(assert (=> d!470569 m!1868911))

(declare-fun m!1868913 () Bool)

(assert (=> b!1582737 m!1868913))

(assert (=> b!1582737 m!1868877))

(declare-fun m!1868915 () Bool)

(assert (=> b!1582737 m!1868915))

(assert (=> b!1582714 d!470569))

(declare-fun d!470571 () Bool)

(declare-fun list!6738 (Conc!5779) List!17463)

(assert (=> d!470571 (= (list!6736 (prepend!545 (seqFromList!1879 (t!143908 (t!143908 tokens!457))) (h!22794 (t!143908 tokens!457)))) (list!6738 (c!256483 (prepend!545 (seqFromList!1879 (t!143908 (t!143908 tokens!457))) (h!22794 (t!143908 tokens!457))))))))

(declare-fun bs!391118 () Bool)

(assert (= bs!391118 d!470571))

(declare-fun m!1868917 () Bool)

(assert (=> bs!391118 m!1868917))

(assert (=> b!1582714 d!470571))

(declare-fun d!470573 () Bool)

(assert (=> d!470573 (= (list!6736 lt!555365) (list!6738 (c!256483 lt!555365)))))

(declare-fun bs!391119 () Bool)

(assert (= bs!391119 d!470573))

(declare-fun m!1868919 () Bool)

(assert (=> bs!391119 m!1868919))

(assert (=> b!1582714 d!470573))

(declare-fun d!470575 () Bool)

(declare-fun fromListB!802 (List!17463) BalanceConc!11502)

(assert (=> d!470575 (= (seqFromList!1879 (t!143908 (t!143908 tokens!457))) (fromListB!802 (t!143908 (t!143908 tokens!457))))))

(declare-fun bs!391120 () Bool)

(assert (= bs!391120 d!470575))

(declare-fun m!1868921 () Bool)

(assert (=> bs!391120 m!1868921))

(assert (=> b!1582714 d!470575))

(declare-fun d!470577 () Bool)

(assert (=> d!470577 (= (list!6736 (_1!9839 lt!555351)) (list!6736 (prepend!545 (seqFromList!1879 (t!143908 (t!143908 tokens!457))) (h!22794 (t!143908 tokens!457)))))))

(declare-fun lt!555382 () Unit!27159)

(declare-fun choose!9469 (Token!5696 List!17463 BalanceConc!11502) Unit!27159)

(assert (=> d!470577 (= lt!555382 (choose!9469 (h!22794 (t!143908 tokens!457)) (t!143908 (t!143908 tokens!457)) (_1!9839 lt!555351)))))

(declare-fun $colon$colon!272 (List!17463 Token!5696) List!17463)

(assert (=> d!470577 (= (list!6736 (_1!9839 lt!555351)) (list!6736 (seqFromList!1879 ($colon$colon!272 (t!143908 (t!143908 tokens!457)) (h!22794 (t!143908 tokens!457))))))))

(assert (=> d!470577 (= (seqFromListBHdTlConstructive!142 (h!22794 (t!143908 tokens!457)) (t!143908 (t!143908 tokens!457)) (_1!9839 lt!555351)) lt!555382)))

(declare-fun bs!391122 () Bool)

(assert (= bs!391122 d!470577))

(declare-fun m!1868945 () Bool)

(assert (=> bs!391122 m!1868945))

(assert (=> bs!391122 m!1868877))

(assert (=> bs!391122 m!1868877))

(assert (=> bs!391122 m!1868879))

(assert (=> bs!391122 m!1868805))

(declare-fun m!1868947 () Bool)

(assert (=> bs!391122 m!1868947))

(declare-fun m!1868949 () Bool)

(assert (=> bs!391122 m!1868949))

(assert (=> bs!391122 m!1868949))

(declare-fun m!1868951 () Bool)

(assert (=> bs!391122 m!1868951))

(assert (=> bs!391122 m!1868947))

(assert (=> bs!391122 m!1868879))

(assert (=> bs!391122 m!1868881))

(assert (=> b!1582714 d!470577))

(declare-fun d!470587 () Bool)

(declare-fun prefixMatchZipperSequence!408 (Regex!4393 BalanceConc!11500) Bool)

(declare-fun ++!4526 (BalanceConc!11500 BalanceConc!11500) BalanceConc!11500)

(declare-fun singletonSeq!1408 (C!8960) BalanceConc!11500)

(declare-fun apply!4230 (BalanceConc!11500 Int) C!8960)

(assert (=> d!470587 (= (separableTokensPredicate!636 thiss!17113 (h!22794 tokens!457) (h!22794 (t!143908 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!408 (rulesRegex!455 thiss!17113 rules!1846) (++!4526 (charsOf!1714 (h!22794 tokens!457)) (singletonSeq!1408 (apply!4230 (charsOf!1714 (h!22794 (t!143908 tokens!457))) 0))))))))

(declare-fun bs!391123 () Bool)

(assert (= bs!391123 d!470587))

(assert (=> bs!391123 m!1868847))

(declare-fun m!1868953 () Bool)

(assert (=> bs!391123 m!1868953))

(assert (=> bs!391123 m!1868847))

(assert (=> bs!391123 m!1868851))

(assert (=> bs!391123 m!1868851))

(declare-fun m!1868955 () Bool)

(assert (=> bs!391123 m!1868955))

(declare-fun m!1868957 () Bool)

(assert (=> bs!391123 m!1868957))

(assert (=> bs!391123 m!1868817))

(declare-fun m!1868959 () Bool)

(assert (=> bs!391123 m!1868959))

(assert (=> bs!391123 m!1868955))

(assert (=> bs!391123 m!1868953))

(assert (=> bs!391123 m!1868959))

(assert (=> bs!391123 m!1868817))

(assert (=> b!1582704 d!470587))

(declare-fun b!1582760 () Bool)

(declare-fun e!1016696 () Bool)

(declare-fun inv!17 (TokenValue!3155) Bool)

(assert (=> b!1582760 (= e!1016696 (inv!17 (value!97025 (h!22794 tokens!457))))))

(declare-fun b!1582761 () Bool)

(declare-fun e!1016698 () Bool)

(declare-fun inv!16 (TokenValue!3155) Bool)

(assert (=> b!1582761 (= e!1016698 (inv!16 (value!97025 (h!22794 tokens!457))))))

(declare-fun b!1582762 () Bool)

(assert (=> b!1582762 (= e!1016698 e!1016696)))

(declare-fun c!256489 () Bool)

(assert (=> b!1582762 (= c!256489 ((_ is IntegerValue!9466) (value!97025 (h!22794 tokens!457))))))

(declare-fun b!1582763 () Bool)

(declare-fun res!705732 () Bool)

(declare-fun e!1016697 () Bool)

(assert (=> b!1582763 (=> res!705732 e!1016697)))

(assert (=> b!1582763 (= res!705732 (not ((_ is IntegerValue!9467) (value!97025 (h!22794 tokens!457)))))))

(assert (=> b!1582763 (= e!1016696 e!1016697)))

(declare-fun d!470589 () Bool)

(declare-fun c!256490 () Bool)

(assert (=> d!470589 (= c!256490 ((_ is IntegerValue!9465) (value!97025 (h!22794 tokens!457))))))

(assert (=> d!470589 (= (inv!21 (value!97025 (h!22794 tokens!457))) e!1016698)))

(declare-fun b!1582764 () Bool)

(declare-fun inv!15 (TokenValue!3155) Bool)

(assert (=> b!1582764 (= e!1016697 (inv!15 (value!97025 (h!22794 tokens!457))))))

(assert (= (and d!470589 c!256490) b!1582761))

(assert (= (and d!470589 (not c!256490)) b!1582762))

(assert (= (and b!1582762 c!256489) b!1582760))

(assert (= (and b!1582762 (not c!256489)) b!1582763))

(assert (= (and b!1582763 (not res!705732)) b!1582764))

(declare-fun m!1868961 () Bool)

(assert (=> b!1582760 m!1868961))

(declare-fun m!1868963 () Bool)

(assert (=> b!1582761 m!1868963))

(declare-fun m!1868965 () Bool)

(assert (=> b!1582764 m!1868965))

(assert (=> b!1582715 d!470589))

(declare-fun d!470591 () Bool)

(declare-fun isEmpty!10415 (Option!3124) Bool)

(assert (=> d!470591 (= (isDefined!2501 lt!555369) (not (isEmpty!10415 lt!555369)))))

(declare-fun bs!391124 () Bool)

(assert (= bs!391124 d!470591))

(declare-fun m!1868967 () Bool)

(assert (=> bs!391124 m!1868967))

(assert (=> b!1582705 d!470591))

(declare-fun b!1582825 () Bool)

(declare-fun res!705768 () Bool)

(declare-fun e!1016726 () Bool)

(assert (=> b!1582825 (=> (not res!705768) (not e!1016726))))

(declare-fun lt!555520 () Token!5696)

(declare-fun matchR!1914 (Regex!4393 List!17462) Bool)

(declare-datatypes ((Option!3126 0))(
  ( (None!3125) (Some!3125 (v!23984 Rule!5930)) )
))
(declare-fun get!4973 (Option!3126) Rule!5930)

(declare-fun getRuleFromTag!238 (LexerInterface!2694 List!17464 String!20107) Option!3126)

(assert (=> b!1582825 (= res!705768 (matchR!1914 (regex!3065 (get!4973 (getRuleFromTag!238 thiss!17113 rules!1846 (tag!3333 (rule!4865 lt!555520))))) (list!6735 (charsOf!1714 lt!555520))))))

(declare-fun b!1582828 () Bool)

(declare-fun e!1016727 () Unit!27159)

(declare-fun Unit!27163 () Unit!27159)

(assert (=> b!1582828 (= e!1016727 Unit!27163)))

(declare-fun b!1582826 () Bool)

(assert (=> b!1582826 (= e!1016726 (= (rule!4865 lt!555520) (get!4973 (getRuleFromTag!238 thiss!17113 rules!1846 (tag!3333 (rule!4865 lt!555520))))))))

(declare-fun d!470593 () Bool)

(assert (=> d!470593 (isDefined!2501 (maxPrefix!1258 thiss!17113 rules!1846 (++!4524 lt!555352 lt!555367)))))

(declare-fun lt!555508 () Unit!27159)

(assert (=> d!470593 (= lt!555508 e!1016727)))

(declare-fun c!256504 () Bool)

(assert (=> d!470593 (= c!256504 (isEmpty!10415 (maxPrefix!1258 thiss!17113 rules!1846 (++!4524 lt!555352 lt!555367))))))

(declare-fun lt!555515 () Unit!27159)

(declare-fun lt!555522 () Unit!27159)

(assert (=> d!470593 (= lt!555515 lt!555522)))

(assert (=> d!470593 e!1016726))

(declare-fun res!705767 () Bool)

(assert (=> d!470593 (=> (not res!705767) (not e!1016726))))

(declare-fun isDefined!2503 (Option!3126) Bool)

(assert (=> d!470593 (= res!705767 (isDefined!2503 (getRuleFromTag!238 thiss!17113 rules!1846 (tag!3333 (rule!4865 lt!555520)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!238 (LexerInterface!2694 List!17464 List!17462 Token!5696) Unit!27159)

(assert (=> d!470593 (= lt!555522 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!238 thiss!17113 rules!1846 lt!555352 lt!555520))))

(declare-fun lt!555511 () Unit!27159)

(declare-fun lt!555523 () Unit!27159)

(assert (=> d!470593 (= lt!555511 lt!555523)))

(declare-fun lt!555512 () List!17462)

(assert (=> d!470593 (isPrefix!1325 lt!555512 (++!4524 lt!555352 lt!555367))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!124 (List!17462 List!17462 List!17462) Unit!27159)

(assert (=> d!470593 (= lt!555523 (lemmaPrefixStaysPrefixWhenAddingToSuffix!124 lt!555512 lt!555352 lt!555367))))

(assert (=> d!470593 (= lt!555512 (list!6735 (charsOf!1714 lt!555520)))))

(declare-fun lt!555510 () Unit!27159)

(declare-fun lt!555514 () Unit!27159)

(assert (=> d!470593 (= lt!555510 lt!555514)))

(declare-fun lt!555521 () List!17462)

(declare-fun lt!555513 () List!17462)

(assert (=> d!470593 (isPrefix!1325 lt!555521 (++!4524 lt!555521 lt!555513))))

(assert (=> d!470593 (= lt!555514 (lemmaConcatTwoListThenFirstIsPrefix!850 lt!555521 lt!555513))))

(declare-fun get!4974 (Option!3124) tuple2!16872)

(assert (=> d!470593 (= lt!555513 (_2!9838 (get!4974 (maxPrefix!1258 thiss!17113 rules!1846 lt!555352))))))

(assert (=> d!470593 (= lt!555521 (list!6735 (charsOf!1714 lt!555520)))))

(declare-fun head!3199 (List!17463) Token!5696)

(assert (=> d!470593 (= lt!555520 (head!3199 (list!6736 (_1!9839 (lex!1178 thiss!17113 rules!1846 (seqFromList!1880 lt!555352))))))))

(assert (=> d!470593 (not (isEmpty!10409 rules!1846))))

(assert (=> d!470593 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!268 thiss!17113 rules!1846 lt!555352 lt!555367) lt!555508)))

(declare-fun b!1582827 () Bool)

(declare-fun Unit!27164 () Unit!27159)

(assert (=> b!1582827 (= e!1016727 Unit!27164)))

(declare-fun lt!555507 () List!17462)

(assert (=> b!1582827 (= lt!555507 (++!4524 lt!555352 lt!555367))))

(declare-fun lt!555516 () Unit!27159)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!132 (LexerInterface!2694 Rule!5930 List!17464 List!17462) Unit!27159)

(assert (=> b!1582827 (= lt!555516 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!132 thiss!17113 (rule!4865 lt!555520) rules!1846 lt!555507))))

(declare-fun maxPrefixOneRule!729 (LexerInterface!2694 Rule!5930 List!17462) Option!3124)

(assert (=> b!1582827 (isEmpty!10415 (maxPrefixOneRule!729 thiss!17113 (rule!4865 lt!555520) lt!555507))))

(declare-fun lt!555518 () Unit!27159)

(assert (=> b!1582827 (= lt!555518 lt!555516)))

(declare-fun lt!555519 () List!17462)

(assert (=> b!1582827 (= lt!555519 (list!6735 (charsOf!1714 lt!555520)))))

(declare-fun lt!555517 () Unit!27159)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!128 (LexerInterface!2694 Rule!5930 List!17462 List!17462) Unit!27159)

(assert (=> b!1582827 (= lt!555517 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!128 thiss!17113 (rule!4865 lt!555520) lt!555519 (++!4524 lt!555352 lt!555367)))))

(assert (=> b!1582827 (not (matchR!1914 (regex!3065 (rule!4865 lt!555520)) lt!555519))))

(declare-fun lt!555509 () Unit!27159)

(assert (=> b!1582827 (= lt!555509 lt!555517)))

(assert (=> b!1582827 false))

(assert (= (and d!470593 res!705767) b!1582825))

(assert (= (and b!1582825 res!705768) b!1582826))

(assert (= (and d!470593 c!256504) b!1582827))

(assert (= (and d!470593 (not c!256504)) b!1582828))

(declare-fun m!1869101 () Bool)

(assert (=> b!1582825 m!1869101))

(declare-fun m!1869103 () Bool)

(assert (=> b!1582825 m!1869103))

(declare-fun m!1869105 () Bool)

(assert (=> b!1582825 m!1869105))

(declare-fun m!1869107 () Bool)

(assert (=> b!1582825 m!1869107))

(assert (=> b!1582825 m!1869105))

(assert (=> b!1582825 m!1869101))

(assert (=> b!1582825 m!1869107))

(declare-fun m!1869109 () Bool)

(assert (=> b!1582825 m!1869109))

(assert (=> b!1582826 m!1869107))

(assert (=> b!1582826 m!1869107))

(assert (=> b!1582826 m!1869109))

(declare-fun m!1869111 () Bool)

(assert (=> d!470593 m!1869111))

(declare-fun m!1869113 () Bool)

(assert (=> d!470593 m!1869113))

(declare-fun m!1869115 () Bool)

(assert (=> d!470593 m!1869115))

(declare-fun m!1869117 () Bool)

(assert (=> d!470593 m!1869117))

(declare-fun m!1869119 () Bool)

(assert (=> d!470593 m!1869119))

(assert (=> d!470593 m!1869119))

(declare-fun m!1869121 () Bool)

(assert (=> d!470593 m!1869121))

(assert (=> d!470593 m!1869111))

(declare-fun m!1869123 () Bool)

(assert (=> d!470593 m!1869123))

(declare-fun m!1869125 () Bool)

(assert (=> d!470593 m!1869125))

(assert (=> d!470593 m!1869115))

(declare-fun m!1869127 () Bool)

(assert (=> d!470593 m!1869127))

(assert (=> d!470593 m!1868827))

(assert (=> d!470593 m!1869115))

(assert (=> d!470593 m!1868887))

(assert (=> d!470593 m!1868889))

(assert (=> d!470593 m!1868827))

(declare-fun m!1869129 () Bool)

(assert (=> d!470593 m!1869129))

(assert (=> d!470593 m!1868827))

(assert (=> d!470593 m!1869105))

(assert (=> d!470593 m!1869123))

(assert (=> d!470593 m!1868871))

(declare-fun m!1869131 () Bool)

(assert (=> d!470593 m!1869131))

(declare-fun m!1869133 () Bool)

(assert (=> d!470593 m!1869133))

(assert (=> d!470593 m!1869107))

(declare-fun m!1869135 () Bool)

(assert (=> d!470593 m!1869135))

(assert (=> d!470593 m!1869107))

(declare-fun m!1869137 () Bool)

(assert (=> d!470593 m!1869137))

(assert (=> d!470593 m!1868887))

(assert (=> d!470593 m!1869105))

(assert (=> d!470593 m!1869101))

(declare-fun m!1869139 () Bool)

(assert (=> b!1582827 m!1869139))

(declare-fun m!1869141 () Bool)

(assert (=> b!1582827 m!1869141))

(assert (=> b!1582827 m!1869139))

(declare-fun m!1869143 () Bool)

(assert (=> b!1582827 m!1869143))

(assert (=> b!1582827 m!1869105))

(declare-fun m!1869145 () Bool)

(assert (=> b!1582827 m!1869145))

(assert (=> b!1582827 m!1868827))

(declare-fun m!1869147 () Bool)

(assert (=> b!1582827 m!1869147))

(assert (=> b!1582827 m!1869105))

(assert (=> b!1582827 m!1869101))

(assert (=> b!1582827 m!1868827))

(assert (=> b!1582705 d!470593))

(declare-fun d!470607 () Bool)

(declare-fun lt!555538 () Bool)

(declare-fun e!1016746 () Bool)

(assert (=> d!470607 (= lt!555538 e!1016746)))

(declare-fun res!705789 () Bool)

(assert (=> d!470607 (=> (not res!705789) (not e!1016746))))

(assert (=> d!470607 (= res!705789 (= (list!6736 (_1!9839 (lex!1178 thiss!17113 rules!1846 (print!1225 thiss!17113 (singletonSeq!1407 (h!22794 tokens!457)))))) (list!6736 (singletonSeq!1407 (h!22794 tokens!457)))))))

(declare-fun e!1016745 () Bool)

(assert (=> d!470607 (= lt!555538 e!1016745)))

(declare-fun res!705788 () Bool)

(assert (=> d!470607 (=> (not res!705788) (not e!1016745))))

(declare-fun lt!555537 () tuple2!16874)

(declare-fun size!13996 (BalanceConc!11502) Int)

(assert (=> d!470607 (= res!705788 (= (size!13996 (_1!9839 lt!555537)) 1))))

(assert (=> d!470607 (= lt!555537 (lex!1178 thiss!17113 rules!1846 (print!1225 thiss!17113 (singletonSeq!1407 (h!22794 tokens!457)))))))

(assert (=> d!470607 (not (isEmpty!10409 rules!1846))))

(assert (=> d!470607 (= (rulesProduceIndividualToken!1346 thiss!17113 rules!1846 (h!22794 tokens!457)) lt!555538)))

(declare-fun b!1582855 () Bool)

(declare-fun res!705787 () Bool)

(assert (=> b!1582855 (=> (not res!705787) (not e!1016745))))

(declare-fun apply!4231 (BalanceConc!11502 Int) Token!5696)

(assert (=> b!1582855 (= res!705787 (= (apply!4231 (_1!9839 lt!555537) 0) (h!22794 tokens!457)))))

(declare-fun b!1582856 () Bool)

(declare-fun isEmpty!10417 (BalanceConc!11500) Bool)

(assert (=> b!1582856 (= e!1016745 (isEmpty!10417 (_2!9839 lt!555537)))))

(declare-fun b!1582857 () Bool)

(assert (=> b!1582857 (= e!1016746 (isEmpty!10417 (_2!9839 (lex!1178 thiss!17113 rules!1846 (print!1225 thiss!17113 (singletonSeq!1407 (h!22794 tokens!457)))))))))

(assert (= (and d!470607 res!705788) b!1582855))

(assert (= (and b!1582855 res!705787) b!1582856))

(assert (= (and d!470607 res!705789) b!1582857))

(assert (=> d!470607 m!1868867))

(declare-fun m!1869177 () Bool)

(assert (=> d!470607 m!1869177))

(declare-fun m!1869179 () Bool)

(assert (=> d!470607 m!1869179))

(declare-fun m!1869183 () Bool)

(assert (=> d!470607 m!1869183))

(declare-fun m!1869185 () Bool)

(assert (=> d!470607 m!1869185))

(assert (=> d!470607 m!1868867))

(assert (=> d!470607 m!1868871))

(declare-fun m!1869187 () Bool)

(assert (=> d!470607 m!1869187))

(assert (=> d!470607 m!1868867))

(assert (=> d!470607 m!1869183))

(declare-fun m!1869189 () Bool)

(assert (=> b!1582855 m!1869189))

(declare-fun m!1869191 () Bool)

(assert (=> b!1582856 m!1869191))

(assert (=> b!1582857 m!1868867))

(assert (=> b!1582857 m!1868867))

(assert (=> b!1582857 m!1869183))

(assert (=> b!1582857 m!1869183))

(assert (=> b!1582857 m!1869185))

(declare-fun m!1869201 () Bool)

(assert (=> b!1582857 m!1869201))

(assert (=> b!1582716 d!470607))

(declare-fun d!470619 () Bool)

(declare-fun lt!555549 () BalanceConc!11500)

(assert (=> d!470619 (= (list!6735 lt!555549) (printList!809 thiss!17113 (list!6736 (seqFromList!1879 tokens!457))))))

(assert (=> d!470619 (= lt!555549 (printTailRec!747 thiss!17113 (seqFromList!1879 tokens!457) 0 (BalanceConc!11501 Empty!5778)))))

(assert (=> d!470619 (= (print!1225 thiss!17113 (seqFromList!1879 tokens!457)) lt!555549)))

(declare-fun bs!391136 () Bool)

(assert (= bs!391136 d!470619))

(declare-fun m!1869243 () Bool)

(assert (=> bs!391136 m!1869243))

(assert (=> bs!391136 m!1868823))

(declare-fun m!1869245 () Bool)

(assert (=> bs!391136 m!1869245))

(assert (=> bs!391136 m!1869245))

(declare-fun m!1869247 () Bool)

(assert (=> bs!391136 m!1869247))

(assert (=> bs!391136 m!1868823))

(declare-fun m!1869249 () Bool)

(assert (=> bs!391136 m!1869249))

(assert (=> b!1582706 d!470619))

(declare-fun d!470637 () Bool)

(declare-fun e!1016766 () Bool)

(assert (=> d!470637 e!1016766))

(declare-fun res!705807 () Bool)

(assert (=> d!470637 (=> (not res!705807) (not e!1016766))))

(declare-fun e!1016767 () Bool)

(assert (=> d!470637 (= res!705807 e!1016767)))

(declare-fun c!256515 () Bool)

(declare-fun lt!555553 () tuple2!16874)

(assert (=> d!470637 (= c!256515 (> (size!13996 (_1!9839 lt!555553)) 0))))

(declare-fun lexTailRecV2!506 (LexerInterface!2694 List!17464 BalanceConc!11500 BalanceConc!11500 BalanceConc!11500 BalanceConc!11502) tuple2!16874)

(assert (=> d!470637 (= lt!555553 (lexTailRecV2!506 thiss!17113 rules!1846 lt!555356 (BalanceConc!11501 Empty!5778) lt!555356 (BalanceConc!11503 Empty!5779)))))

(assert (=> d!470637 (= (lex!1178 thiss!17113 rules!1846 lt!555356) lt!555553)))

(declare-fun b!1582890 () Bool)

(declare-fun e!1016765 () Bool)

(assert (=> b!1582890 (= e!1016765 (not (isEmpty!10408 (_1!9839 lt!555553))))))

(declare-fun b!1582891 () Bool)

(declare-datatypes ((tuple2!16878 0))(
  ( (tuple2!16879 (_1!9841 List!17463) (_2!9841 List!17462)) )
))
(declare-fun lexList!783 (LexerInterface!2694 List!17464 List!17462) tuple2!16878)

(assert (=> b!1582891 (= e!1016766 (= (list!6735 (_2!9839 lt!555553)) (_2!9841 (lexList!783 thiss!17113 rules!1846 (list!6735 lt!555356)))))))

(declare-fun b!1582892 () Bool)

(assert (=> b!1582892 (= e!1016767 (= (_2!9839 lt!555553) lt!555356))))

(declare-fun b!1582893 () Bool)

(assert (=> b!1582893 (= e!1016767 e!1016765)))

(declare-fun res!705806 () Bool)

(assert (=> b!1582893 (= res!705806 (< (size!13992 (_2!9839 lt!555553)) (size!13992 lt!555356)))))

(assert (=> b!1582893 (=> (not res!705806) (not e!1016765))))

(declare-fun b!1582894 () Bool)

(declare-fun res!705805 () Bool)

(assert (=> b!1582894 (=> (not res!705805) (not e!1016766))))

(assert (=> b!1582894 (= res!705805 (= (list!6736 (_1!9839 lt!555553)) (_1!9841 (lexList!783 thiss!17113 rules!1846 (list!6735 lt!555356)))))))

(assert (= (and d!470637 c!256515) b!1582893))

(assert (= (and d!470637 (not c!256515)) b!1582892))

(assert (= (and b!1582893 res!705806) b!1582890))

(assert (= (and d!470637 res!705807) b!1582894))

(assert (= (and b!1582894 res!705805) b!1582891))

(declare-fun m!1869265 () Bool)

(assert (=> d!470637 m!1869265))

(declare-fun m!1869267 () Bool)

(assert (=> d!470637 m!1869267))

(declare-fun m!1869269 () Bool)

(assert (=> b!1582894 m!1869269))

(assert (=> b!1582894 m!1868821))

(assert (=> b!1582894 m!1868821))

(declare-fun m!1869271 () Bool)

(assert (=> b!1582894 m!1869271))

(declare-fun m!1869273 () Bool)

(assert (=> b!1582891 m!1869273))

(assert (=> b!1582891 m!1868821))

(assert (=> b!1582891 m!1868821))

(assert (=> b!1582891 m!1869271))

(declare-fun m!1869275 () Bool)

(assert (=> b!1582893 m!1869275))

(declare-fun m!1869277 () Bool)

(assert (=> b!1582893 m!1869277))

(declare-fun m!1869279 () Bool)

(assert (=> b!1582890 m!1869279))

(assert (=> b!1582706 d!470637))

(declare-fun d!470641 () Bool)

(declare-fun list!6740 (Conc!5778) List!17462)

(assert (=> d!470641 (= (list!6735 lt!555356) (list!6740 (c!256481 lt!555356)))))

(declare-fun bs!391137 () Bool)

(assert (= bs!391137 d!470641))

(declare-fun m!1869281 () Bool)

(assert (=> bs!391137 m!1869281))

(assert (=> b!1582706 d!470641))

(declare-fun d!470643 () Bool)

(declare-fun lt!555554 () BalanceConc!11500)

(assert (=> d!470643 (= (list!6735 lt!555554) (printList!809 thiss!17113 (list!6736 lt!555365)))))

(assert (=> d!470643 (= lt!555554 (printTailRec!747 thiss!17113 lt!555365 0 (BalanceConc!11501 Empty!5778)))))

(assert (=> d!470643 (= (print!1225 thiss!17113 lt!555365) lt!555554)))

(declare-fun bs!391138 () Bool)

(assert (= bs!391138 d!470643))

(declare-fun m!1869283 () Bool)

(assert (=> bs!391138 m!1869283))

(assert (=> bs!391138 m!1868875))

(assert (=> bs!391138 m!1868875))

(declare-fun m!1869285 () Bool)

(assert (=> bs!391138 m!1869285))

(declare-fun m!1869287 () Bool)

(assert (=> bs!391138 m!1869287))

(assert (=> b!1582706 d!470643))

(declare-fun d!470645 () Bool)

(assert (=> d!470645 (= (list!6735 lt!555354) (list!6740 (c!256481 lt!555354)))))

(declare-fun bs!391139 () Bool)

(assert (= bs!391139 d!470645))

(declare-fun m!1869289 () Bool)

(assert (=> bs!391139 m!1869289))

(assert (=> b!1582706 d!470645))

(declare-fun d!470647 () Bool)

(assert (=> d!470647 (= (seqFromList!1879 tokens!457) (fromListB!802 tokens!457))))

(declare-fun bs!391140 () Bool)

(assert (= bs!391140 d!470647))

(declare-fun m!1869291 () Bool)

(assert (=> bs!391140 m!1869291))

(assert (=> b!1582706 d!470647))

(declare-fun d!470649 () Bool)

(declare-fun lt!555557 () BalanceConc!11500)

(assert (=> d!470649 (= (list!6735 lt!555557) (originalCharacters!3879 (h!22794 tokens!457)))))

(assert (=> d!470649 (= lt!555557 (dynLambda!7710 (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))) (value!97025 (h!22794 tokens!457))))))

(assert (=> d!470649 (= (charsOf!1714 (h!22794 tokens!457)) lt!555557)))

(declare-fun b_lambda!49801 () Bool)

(assert (=> (not b_lambda!49801) (not d!470649)))

(assert (=> d!470649 t!143911))

(declare-fun b_and!110949 () Bool)

(assert (= b_and!110941 (and (=> t!143911 result!107766) b_and!110949)))

(assert (=> d!470649 t!143913))

(declare-fun b_and!110951 () Bool)

(assert (= b_and!110943 (and (=> t!143913 result!107770) b_and!110951)))

(declare-fun m!1869293 () Bool)

(assert (=> d!470649 m!1869293))

(assert (=> d!470649 m!1868899))

(assert (=> b!1582706 d!470649))

(declare-fun d!470651 () Bool)

(declare-fun e!1016777 () Bool)

(assert (=> d!470651 e!1016777))

(declare-fun res!705817 () Bool)

(assert (=> d!470651 (=> (not res!705817) (not e!1016777))))

(declare-fun lt!555562 () List!17462)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2393 (List!17462) (InoxSet C!8960))

(assert (=> d!470651 (= res!705817 (= (content!2393 lt!555562) ((_ map or) (content!2393 lt!555352) (content!2393 lt!555367))))))

(declare-fun e!1016776 () List!17462)

(assert (=> d!470651 (= lt!555562 e!1016776)))

(declare-fun c!256518 () Bool)

(assert (=> d!470651 (= c!256518 ((_ is Nil!17392) lt!555352))))

(assert (=> d!470651 (= (++!4524 lt!555352 lt!555367) lt!555562)))

(declare-fun b!1582908 () Bool)

(assert (=> b!1582908 (= e!1016776 (Cons!17392 (h!22793 lt!555352) (++!4524 (t!143907 lt!555352) lt!555367)))))

(declare-fun b!1582910 () Bool)

(assert (=> b!1582910 (= e!1016777 (or (not (= lt!555367 Nil!17392)) (= lt!555562 lt!555352)))))

(declare-fun b!1582909 () Bool)

(declare-fun res!705816 () Bool)

(assert (=> b!1582909 (=> (not res!705816) (not e!1016777))))

(assert (=> b!1582909 (= res!705816 (= (size!13995 lt!555562) (+ (size!13995 lt!555352) (size!13995 lt!555367))))))

(declare-fun b!1582907 () Bool)

(assert (=> b!1582907 (= e!1016776 lt!555367)))

(assert (= (and d!470651 c!256518) b!1582907))

(assert (= (and d!470651 (not c!256518)) b!1582908))

(assert (= (and d!470651 res!705817) b!1582909))

(assert (= (and b!1582909 res!705816) b!1582910))

(declare-fun m!1869295 () Bool)

(assert (=> d!470651 m!1869295))

(declare-fun m!1869297 () Bool)

(assert (=> d!470651 m!1869297))

(declare-fun m!1869299 () Bool)

(assert (=> d!470651 m!1869299))

(declare-fun m!1869301 () Bool)

(assert (=> b!1582908 m!1869301))

(declare-fun m!1869303 () Bool)

(assert (=> b!1582909 m!1869303))

(declare-fun m!1869305 () Bool)

(assert (=> b!1582909 m!1869305))

(declare-fun m!1869307 () Bool)

(assert (=> b!1582909 m!1869307))

(assert (=> b!1582706 d!470651))

(declare-fun d!470653 () Bool)

(assert (=> d!470653 (= (seqFromList!1879 (t!143908 tokens!457)) (fromListB!802 (t!143908 tokens!457)))))

(declare-fun bs!391141 () Bool)

(assert (= bs!391141 d!470653))

(declare-fun m!1869309 () Bool)

(assert (=> bs!391141 m!1869309))

(assert (=> b!1582706 d!470653))

(declare-fun d!470655 () Bool)

(assert (=> d!470655 (= (list!6735 (charsOf!1714 (h!22794 tokens!457))) (list!6740 (c!256481 (charsOf!1714 (h!22794 tokens!457)))))))

(declare-fun bs!391142 () Bool)

(assert (= bs!391142 d!470655))

(declare-fun m!1869311 () Bool)

(assert (=> bs!391142 m!1869311))

(assert (=> b!1582706 d!470655))

(declare-fun d!470657 () Bool)

(declare-fun lt!555565 () Int)

(assert (=> d!470657 (= lt!555565 (size!13995 (list!6735 (charsOf!1714 (h!22794 (t!143908 tokens!457))))))))

(declare-fun size!13997 (Conc!5778) Int)

(assert (=> d!470657 (= lt!555565 (size!13997 (c!256481 (charsOf!1714 (h!22794 (t!143908 tokens!457))))))))

(assert (=> d!470657 (= (size!13992 (charsOf!1714 (h!22794 (t!143908 tokens!457)))) lt!555565)))

(declare-fun bs!391143 () Bool)

(assert (= bs!391143 d!470657))

(assert (=> bs!391143 m!1868847))

(declare-fun m!1869313 () Bool)

(assert (=> bs!391143 m!1869313))

(assert (=> bs!391143 m!1869313))

(declare-fun m!1869315 () Bool)

(assert (=> bs!391143 m!1869315))

(declare-fun m!1869317 () Bool)

(assert (=> bs!391143 m!1869317))

(assert (=> b!1582717 d!470657))

(declare-fun d!470659 () Bool)

(declare-fun lt!555566 () BalanceConc!11500)

(assert (=> d!470659 (= (list!6735 lt!555566) (originalCharacters!3879 (h!22794 (t!143908 tokens!457))))))

(assert (=> d!470659 (= lt!555566 (dynLambda!7710 (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457))))) (value!97025 (h!22794 (t!143908 tokens!457)))))))

(assert (=> d!470659 (= (charsOf!1714 (h!22794 (t!143908 tokens!457))) lt!555566)))

(declare-fun b_lambda!49803 () Bool)

(assert (=> (not b_lambda!49803) (not d!470659)))

(declare-fun tb!89055 () Bool)

(declare-fun t!143924 () Bool)

(assert (=> (and b!1582709 (= (toChars!4331 (transformation!3065 (h!22795 rules!1846))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457)))))) t!143924) tb!89055))

(declare-fun b!1582911 () Bool)

(declare-fun e!1016778 () Bool)

(declare-fun tp!465739 () Bool)

(assert (=> b!1582911 (= e!1016778 (and (inv!22812 (c!256481 (dynLambda!7710 (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457))))) (value!97025 (h!22794 (t!143908 tokens!457)))))) tp!465739))))

(declare-fun result!107778 () Bool)

(assert (=> tb!89055 (= result!107778 (and (inv!22813 (dynLambda!7710 (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457))))) (value!97025 (h!22794 (t!143908 tokens!457))))) e!1016778))))

(assert (= tb!89055 b!1582911))

(declare-fun m!1869319 () Bool)

(assert (=> b!1582911 m!1869319))

(declare-fun m!1869321 () Bool)

(assert (=> tb!89055 m!1869321))

(assert (=> d!470659 t!143924))

(declare-fun b_and!110953 () Bool)

(assert (= b_and!110949 (and (=> t!143924 result!107778) b_and!110953)))

(declare-fun t!143926 () Bool)

(declare-fun tb!89057 () Bool)

(assert (=> (and b!1582702 (= (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457)))))) t!143926) tb!89057))

(declare-fun result!107780 () Bool)

(assert (= result!107780 result!107778))

(assert (=> d!470659 t!143926))

(declare-fun b_and!110955 () Bool)

(assert (= b_and!110951 (and (=> t!143926 result!107780) b_and!110955)))

(declare-fun m!1869323 () Bool)

(assert (=> d!470659 m!1869323))

(declare-fun m!1869325 () Bool)

(assert (=> d!470659 m!1869325))

(assert (=> b!1582717 d!470659))

(declare-fun d!470661 () Bool)

(declare-fun lt!555569 () Unit!27159)

(declare-fun lemma!192 (List!17464 LexerInterface!2694 List!17464) Unit!27159)

(assert (=> d!470661 (= lt!555569 (lemma!192 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!66505 () Int)

(declare-datatypes ((List!17466 0))(
  ( (Nil!17396) (Cons!17396 (h!22797 Regex!4393) (t!143951 List!17466)) )
))
(declare-fun generalisedUnion!200 (List!17466) Regex!4393)

(declare-fun map!3604 (List!17464 Int) List!17466)

(assert (=> d!470661 (= (rulesRegex!455 thiss!17113 rules!1846) (generalisedUnion!200 (map!3604 rules!1846 lambda!66505)))))

(declare-fun bs!391144 () Bool)

(assert (= bs!391144 d!470661))

(declare-fun m!1869327 () Bool)

(assert (=> bs!391144 m!1869327))

(declare-fun m!1869329 () Bool)

(assert (=> bs!391144 m!1869329))

(assert (=> bs!391144 m!1869329))

(declare-fun m!1869331 () Bool)

(assert (=> bs!391144 m!1869331))

(assert (=> b!1582717 d!470661))

(declare-fun d!470663 () Bool)

(assert (=> d!470663 (= (list!6736 (_1!9839 lt!555351)) (list!6738 (c!256483 (_1!9839 lt!555351))))))

(declare-fun bs!391145 () Bool)

(assert (= bs!391145 d!470663))

(declare-fun m!1869333 () Bool)

(assert (=> bs!391145 m!1869333))

(assert (=> b!1582707 d!470663))

(declare-fun d!470665 () Bool)

(declare-fun e!1016806 () Bool)

(assert (=> d!470665 e!1016806))

(declare-fun res!705831 () Bool)

(assert (=> d!470665 (=> (not res!705831) (not e!1016806))))

(assert (=> d!470665 (= res!705831 (= (list!6736 (_1!9839 (lex!1178 thiss!17113 rules!1846 (print!1225 thiss!17113 (seqFromList!1879 (t!143908 tokens!457)))))) (t!143908 tokens!457)))))

(declare-fun lt!555624 () Unit!27159)

(declare-fun e!1016807 () Unit!27159)

(assert (=> d!470665 (= lt!555624 e!1016807)))

(declare-fun c!256527 () Bool)

(assert (=> d!470665 (= c!256527 (or ((_ is Nil!17393) (t!143908 tokens!457)) ((_ is Nil!17393) (t!143908 (t!143908 tokens!457)))))))

(assert (=> d!470665 (not (isEmpty!10409 rules!1846))))

(assert (=> d!470665 (= (theoremInvertabilityWhenTokenListSeparable!139 thiss!17113 rules!1846 (t!143908 tokens!457)) lt!555624)))

(declare-fun b!1582954 () Bool)

(declare-fun Unit!27179 () Unit!27159)

(assert (=> b!1582954 (= e!1016807 Unit!27179)))

(declare-fun b!1582955 () Bool)

(declare-fun Unit!27180 () Unit!27159)

(assert (=> b!1582955 (= e!1016807 Unit!27180)))

(declare-fun lt!555627 () BalanceConc!11500)

(assert (=> b!1582955 (= lt!555627 (print!1225 thiss!17113 (seqFromList!1879 (t!143908 tokens!457))))))

(declare-fun lt!555645 () BalanceConc!11500)

(assert (=> b!1582955 (= lt!555645 (print!1225 thiss!17113 (seqFromList!1879 (t!143908 (t!143908 tokens!457)))))))

(declare-fun lt!555640 () tuple2!16874)

(assert (=> b!1582955 (= lt!555640 (lex!1178 thiss!17113 rules!1846 lt!555645))))

(declare-fun lt!555636 () List!17462)

(assert (=> b!1582955 (= lt!555636 (list!6735 (charsOf!1714 (h!22794 (t!143908 tokens!457)))))))

(declare-fun lt!555628 () List!17462)

(assert (=> b!1582955 (= lt!555628 (list!6735 lt!555645))))

(declare-fun lt!555646 () Unit!27159)

(assert (=> b!1582955 (= lt!555646 (lemmaConcatTwoListThenFirstIsPrefix!850 lt!555636 lt!555628))))

(assert (=> b!1582955 (isPrefix!1325 lt!555636 (++!4524 lt!555636 lt!555628))))

(declare-fun lt!555642 () Unit!27159)

(assert (=> b!1582955 (= lt!555642 lt!555646)))

(declare-fun lt!555639 () Unit!27159)

(assert (=> b!1582955 (= lt!555639 (theoremInvertabilityWhenTokenListSeparable!139 thiss!17113 rules!1846 (t!143908 (t!143908 tokens!457))))))

(declare-fun lt!555643 () Unit!27159)

(assert (=> b!1582955 (= lt!555643 (seqFromListBHdTlConstructive!142 (h!22794 (t!143908 (t!143908 tokens!457))) (t!143908 (t!143908 (t!143908 tokens!457))) (_1!9839 lt!555640)))))

(assert (=> b!1582955 (= (list!6736 (_1!9839 lt!555640)) (list!6736 (prepend!545 (seqFromList!1879 (t!143908 (t!143908 (t!143908 tokens!457)))) (h!22794 (t!143908 (t!143908 tokens!457))))))))

(declare-fun lt!555641 () Unit!27159)

(assert (=> b!1582955 (= lt!555641 lt!555643)))

(declare-fun lt!555637 () Option!3124)

(assert (=> b!1582955 (= lt!555637 (maxPrefix!1258 thiss!17113 rules!1846 (list!6735 lt!555627)))))

(assert (=> b!1582955 (= (print!1225 thiss!17113 (singletonSeq!1407 (h!22794 (t!143908 tokens!457)))) (printTailRec!747 thiss!17113 (singletonSeq!1407 (h!22794 (t!143908 tokens!457))) 0 (BalanceConc!11501 Empty!5778)))))

(declare-fun lt!555635 () Unit!27159)

(declare-fun Unit!27181 () Unit!27159)

(assert (=> b!1582955 (= lt!555635 Unit!27181)))

(declare-fun lt!555626 () Unit!27159)

(assert (=> b!1582955 (= lt!555626 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!268 thiss!17113 rules!1846 (list!6735 (charsOf!1714 (h!22794 (t!143908 tokens!457)))) (list!6735 lt!555645)))))

(assert (=> b!1582955 (= (list!6735 (charsOf!1714 (h!22794 (t!143908 tokens!457)))) (originalCharacters!3879 (h!22794 (t!143908 tokens!457))))))

(declare-fun lt!555634 () Unit!27159)

(declare-fun Unit!27182 () Unit!27159)

(assert (=> b!1582955 (= lt!555634 Unit!27182)))

(declare-fun head!3202 (List!17462) C!8960)

(assert (=> b!1582955 (= (list!6735 (singletonSeq!1408 (apply!4230 (charsOf!1714 (h!22794 (t!143908 (t!143908 tokens!457)))) 0))) (Cons!17392 (head!3202 (originalCharacters!3879 (h!22794 (t!143908 (t!143908 tokens!457))))) Nil!17392))))

(declare-fun lt!555644 () Unit!27159)

(declare-fun Unit!27183 () Unit!27159)

(assert (=> b!1582955 (= lt!555644 Unit!27183)))

(assert (=> b!1582955 (= (list!6735 (singletonSeq!1408 (apply!4230 (charsOf!1714 (h!22794 (t!143908 (t!143908 tokens!457)))) 0))) (Cons!17392 (head!3202 (list!6735 lt!555645)) Nil!17392))))

(declare-fun lt!555633 () Unit!27159)

(declare-fun Unit!27184 () Unit!27159)

(assert (=> b!1582955 (= lt!555633 Unit!27184)))

(declare-fun head!3203 (BalanceConc!11500) C!8960)

(assert (=> b!1582955 (= (list!6735 (singletonSeq!1408 (apply!4230 (charsOf!1714 (h!22794 (t!143908 (t!143908 tokens!457)))) 0))) (Cons!17392 (head!3203 lt!555645) Nil!17392))))

(declare-fun lt!555623 () Unit!27159)

(declare-fun Unit!27185 () Unit!27159)

(assert (=> b!1582955 (= lt!555623 Unit!27185)))

(assert (=> b!1582955 (isDefined!2501 (maxPrefix!1258 thiss!17113 rules!1846 (originalCharacters!3879 (h!22794 (t!143908 tokens!457)))))))

(declare-fun lt!555638 () Unit!27159)

(declare-fun Unit!27186 () Unit!27159)

(assert (=> b!1582955 (= lt!555638 Unit!27186)))

(assert (=> b!1582955 (isDefined!2501 (maxPrefix!1258 thiss!17113 rules!1846 (list!6735 (charsOf!1714 (h!22794 (t!143908 tokens!457))))))))

(declare-fun lt!555647 () Unit!27159)

(declare-fun Unit!27187 () Unit!27159)

(assert (=> b!1582955 (= lt!555647 Unit!27187)))

(declare-fun lt!555629 () Unit!27159)

(declare-fun Unit!27188 () Unit!27159)

(assert (=> b!1582955 (= lt!555629 Unit!27188)))

(assert (=> b!1582955 (= (_1!9838 (get!4974 (maxPrefix!1258 thiss!17113 rules!1846 (list!6735 (charsOf!1714 (h!22794 (t!143908 tokens!457))))))) (h!22794 (t!143908 tokens!457)))))

(declare-fun lt!555631 () Unit!27159)

(declare-fun Unit!27189 () Unit!27159)

(assert (=> b!1582955 (= lt!555631 Unit!27189)))

(assert (=> b!1582955 (isEmpty!10414 (_2!9838 (get!4974 (maxPrefix!1258 thiss!17113 rules!1846 (list!6735 (charsOf!1714 (h!22794 (t!143908 tokens!457))))))))))

(declare-fun lt!555648 () Unit!27159)

(declare-fun Unit!27191 () Unit!27159)

(assert (=> b!1582955 (= lt!555648 Unit!27191)))

(assert (=> b!1582955 (matchR!1914 (regex!3065 (rule!4865 (h!22794 (t!143908 tokens!457)))) (list!6735 (charsOf!1714 (h!22794 (t!143908 tokens!457)))))))

(declare-fun lt!555630 () Unit!27159)

(declare-fun Unit!27193 () Unit!27159)

(assert (=> b!1582955 (= lt!555630 Unit!27193)))

(assert (=> b!1582955 (= (rule!4865 (h!22794 (t!143908 tokens!457))) (rule!4865 (h!22794 (t!143908 tokens!457))))))

(declare-fun lt!555625 () Unit!27159)

(declare-fun Unit!27195 () Unit!27159)

(assert (=> b!1582955 (= lt!555625 Unit!27195)))

(declare-fun lt!555632 () Unit!27159)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!64 (LexerInterface!2694 List!17464 Token!5696 Rule!5930 List!17462) Unit!27159)

(assert (=> b!1582955 (= lt!555632 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!64 thiss!17113 rules!1846 (h!22794 (t!143908 tokens!457)) (rule!4865 (h!22794 (t!143908 tokens!457))) (list!6735 lt!555645)))))

(declare-fun b!1582956 () Bool)

(assert (=> b!1582956 (= e!1016806 (isEmpty!10417 (_2!9839 (lex!1178 thiss!17113 rules!1846 (print!1225 thiss!17113 (seqFromList!1879 (t!143908 tokens!457)))))))))

(assert (= (and d!470665 c!256527) b!1582954))

(assert (= (and d!470665 (not c!256527)) b!1582955))

(assert (= (and d!470665 res!705831) b!1582956))

(declare-fun m!1869353 () Bool)

(assert (=> d!470665 m!1869353))

(declare-fun m!1869355 () Bool)

(assert (=> d!470665 m!1869355))

(declare-fun m!1869357 () Bool)

(assert (=> d!470665 m!1869357))

(assert (=> d!470665 m!1868819))

(assert (=> d!470665 m!1869355))

(assert (=> d!470665 m!1868871))

(assert (=> d!470665 m!1868819))

(assert (=> b!1582955 m!1868819))

(declare-fun m!1869359 () Bool)

(assert (=> b!1582955 m!1869359))

(declare-fun m!1869361 () Bool)

(assert (=> b!1582955 m!1869361))

(declare-fun m!1869363 () Bool)

(assert (=> b!1582955 m!1869363))

(declare-fun m!1869365 () Bool)

(assert (=> b!1582955 m!1869365))

(declare-fun m!1869367 () Bool)

(assert (=> b!1582955 m!1869367))

(declare-fun m!1869369 () Bool)

(assert (=> b!1582955 m!1869369))

(declare-fun m!1869371 () Bool)

(assert (=> b!1582955 m!1869371))

(assert (=> b!1582955 m!1869313))

(declare-fun m!1869373 () Bool)

(assert (=> b!1582955 m!1869373))

(declare-fun m!1869375 () Bool)

(assert (=> b!1582955 m!1869375))

(assert (=> b!1582955 m!1868877))

(declare-fun m!1869377 () Bool)

(assert (=> b!1582955 m!1869377))

(declare-fun m!1869379 () Bool)

(assert (=> b!1582955 m!1869379))

(assert (=> b!1582955 m!1868819))

(assert (=> b!1582955 m!1869355))

(declare-fun m!1869381 () Bool)

(assert (=> b!1582955 m!1869381))

(declare-fun m!1869383 () Bool)

(assert (=> b!1582955 m!1869383))

(declare-fun m!1869385 () Bool)

(assert (=> b!1582955 m!1869385))

(declare-fun m!1869387 () Bool)

(assert (=> b!1582955 m!1869387))

(assert (=> b!1582955 m!1869313))

(assert (=> b!1582955 m!1869381))

(declare-fun m!1869389 () Bool)

(assert (=> b!1582955 m!1869389))

(declare-fun m!1869391 () Bool)

(assert (=> b!1582955 m!1869391))

(assert (=> b!1582955 m!1869381))

(declare-fun m!1869393 () Bool)

(assert (=> b!1582955 m!1869393))

(declare-fun m!1869395 () Bool)

(assert (=> b!1582955 m!1869395))

(assert (=> b!1582955 m!1869313))

(assert (=> b!1582955 m!1869369))

(declare-fun m!1869397 () Bool)

(assert (=> b!1582955 m!1869397))

(declare-fun m!1869399 () Bool)

(assert (=> b!1582955 m!1869399))

(assert (=> b!1582955 m!1869385))

(declare-fun m!1869401 () Bool)

(assert (=> b!1582955 m!1869401))

(assert (=> b!1582955 m!1869359))

(declare-fun m!1869403 () Bool)

(assert (=> b!1582955 m!1869403))

(assert (=> b!1582955 m!1869401))

(declare-fun m!1869405 () Bool)

(assert (=> b!1582955 m!1869405))

(assert (=> b!1582955 m!1869369))

(declare-fun m!1869407 () Bool)

(assert (=> b!1582955 m!1869407))

(assert (=> b!1582955 m!1869379))

(declare-fun m!1869409 () Bool)

(assert (=> b!1582955 m!1869409))

(declare-fun m!1869411 () Bool)

(assert (=> b!1582955 m!1869411))

(assert (=> b!1582955 m!1869405))

(declare-fun m!1869413 () Bool)

(assert (=> b!1582955 m!1869413))

(assert (=> b!1582955 m!1869411))

(declare-fun m!1869415 () Bool)

(assert (=> b!1582955 m!1869415))

(assert (=> b!1582955 m!1868847))

(assert (=> b!1582955 m!1869313))

(assert (=> b!1582955 m!1869361))

(declare-fun m!1869417 () Bool)

(assert (=> b!1582955 m!1869417))

(assert (=> b!1582955 m!1868877))

(declare-fun m!1869419 () Bool)

(assert (=> b!1582955 m!1869419))

(assert (=> b!1582955 m!1869381))

(declare-fun m!1869421 () Bool)

(assert (=> b!1582955 m!1869421))

(assert (=> b!1582955 m!1868847))

(assert (=> b!1582955 m!1869359))

(declare-fun m!1869423 () Bool)

(assert (=> b!1582955 m!1869423))

(assert (=> b!1582955 m!1869393))

(assert (=> b!1582955 m!1869377))

(assert (=> b!1582956 m!1868819))

(assert (=> b!1582956 m!1868819))

(assert (=> b!1582956 m!1869355))

(assert (=> b!1582956 m!1869355))

(assert (=> b!1582956 m!1869357))

(declare-fun m!1869425 () Bool)

(assert (=> b!1582956 m!1869425))

(assert (=> b!1582707 d!470665))

(declare-fun b!1582966 () Bool)

(declare-fun res!705842 () Bool)

(declare-fun e!1016815 () Bool)

(assert (=> b!1582966 (=> (not res!705842) (not e!1016815))))

(assert (=> b!1582966 (= res!705842 (= (head!3202 lt!555352) (head!3202 lt!555358)))))

(declare-fun b!1582968 () Bool)

(declare-fun e!1016814 () Bool)

(assert (=> b!1582968 (= e!1016814 (>= (size!13995 lt!555358) (size!13995 lt!555352)))))

(declare-fun b!1582965 () Bool)

(declare-fun e!1016816 () Bool)

(assert (=> b!1582965 (= e!1016816 e!1016815)))

(declare-fun res!705843 () Bool)

(assert (=> b!1582965 (=> (not res!705843) (not e!1016815))))

(assert (=> b!1582965 (= res!705843 (not ((_ is Nil!17392) lt!555358)))))

(declare-fun b!1582967 () Bool)

(declare-fun tail!2261 (List!17462) List!17462)

(assert (=> b!1582967 (= e!1016815 (isPrefix!1325 (tail!2261 lt!555352) (tail!2261 lt!555358)))))

(declare-fun d!470675 () Bool)

(assert (=> d!470675 e!1016814))

(declare-fun res!705840 () Bool)

(assert (=> d!470675 (=> res!705840 e!1016814)))

(declare-fun lt!555651 () Bool)

(assert (=> d!470675 (= res!705840 (not lt!555651))))

(assert (=> d!470675 (= lt!555651 e!1016816)))

(declare-fun res!705841 () Bool)

(assert (=> d!470675 (=> res!705841 e!1016816)))

(assert (=> d!470675 (= res!705841 ((_ is Nil!17392) lt!555352))))

(assert (=> d!470675 (= (isPrefix!1325 lt!555352 lt!555358) lt!555651)))

(assert (= (and d!470675 (not res!705841)) b!1582965))

(assert (= (and b!1582965 res!705843) b!1582966))

(assert (= (and b!1582966 res!705842) b!1582967))

(assert (= (and d!470675 (not res!705840)) b!1582968))

(declare-fun m!1869427 () Bool)

(assert (=> b!1582966 m!1869427))

(declare-fun m!1869429 () Bool)

(assert (=> b!1582966 m!1869429))

(declare-fun m!1869431 () Bool)

(assert (=> b!1582968 m!1869431))

(assert (=> b!1582968 m!1869305))

(declare-fun m!1869433 () Bool)

(assert (=> b!1582967 m!1869433))

(declare-fun m!1869435 () Bool)

(assert (=> b!1582967 m!1869435))

(assert (=> b!1582967 m!1869433))

(assert (=> b!1582967 m!1869435))

(declare-fun m!1869437 () Bool)

(assert (=> b!1582967 m!1869437))

(assert (=> b!1582707 d!470675))

(declare-fun d!470677 () Bool)

(assert (=> d!470677 (isPrefix!1325 lt!555352 (++!4524 lt!555352 lt!555367))))

(declare-fun lt!555654 () Unit!27159)

(declare-fun choose!9471 (List!17462 List!17462) Unit!27159)

(assert (=> d!470677 (= lt!555654 (choose!9471 lt!555352 lt!555367))))

(assert (=> d!470677 (= (lemmaConcatTwoListThenFirstIsPrefix!850 lt!555352 lt!555367) lt!555654)))

(declare-fun bs!391147 () Bool)

(assert (= bs!391147 d!470677))

(assert (=> bs!391147 m!1868827))

(assert (=> bs!391147 m!1868827))

(declare-fun m!1869439 () Bool)

(assert (=> bs!391147 m!1869439))

(declare-fun m!1869441 () Bool)

(assert (=> bs!391147 m!1869441))

(assert (=> b!1582707 d!470677))

(declare-fun d!470679 () Bool)

(declare-fun lt!555655 () BalanceConc!11500)

(assert (=> d!470679 (= (list!6735 lt!555655) (printList!809 thiss!17113 (list!6736 lt!555357)))))

(assert (=> d!470679 (= lt!555655 (printTailRec!747 thiss!17113 lt!555357 0 (BalanceConc!11501 Empty!5778)))))

(assert (=> d!470679 (= (print!1225 thiss!17113 lt!555357) lt!555655)))

(declare-fun bs!391148 () Bool)

(assert (= bs!391148 d!470679))

(declare-fun m!1869443 () Bool)

(assert (=> bs!391148 m!1869443))

(declare-fun m!1869445 () Bool)

(assert (=> bs!391148 m!1869445))

(assert (=> bs!391148 m!1869445))

(declare-fun m!1869447 () Bool)

(assert (=> bs!391148 m!1869447))

(assert (=> bs!391148 m!1868865))

(assert (=> b!1582718 d!470679))

(declare-fun d!470681 () Bool)

(declare-fun lt!555673 () BalanceConc!11500)

(declare-fun printListTailRec!309 (LexerInterface!2694 List!17463 List!17462) List!17462)

(declare-fun dropList!516 (BalanceConc!11502 Int) List!17463)

(assert (=> d!470681 (= (list!6735 lt!555673) (printListTailRec!309 thiss!17113 (dropList!516 lt!555357 0) (list!6735 (BalanceConc!11501 Empty!5778))))))

(declare-fun e!1016821 () BalanceConc!11500)

(assert (=> d!470681 (= lt!555673 e!1016821)))

(declare-fun c!256530 () Bool)

(assert (=> d!470681 (= c!256530 (>= 0 (size!13996 lt!555357)))))

(declare-fun e!1016822 () Bool)

(assert (=> d!470681 e!1016822))

(declare-fun res!705846 () Bool)

(assert (=> d!470681 (=> (not res!705846) (not e!1016822))))

(assert (=> d!470681 (= res!705846 (>= 0 0))))

(assert (=> d!470681 (= (printTailRec!747 thiss!17113 lt!555357 0 (BalanceConc!11501 Empty!5778)) lt!555673)))

(declare-fun b!1582975 () Bool)

(assert (=> b!1582975 (= e!1016822 (<= 0 (size!13996 lt!555357)))))

(declare-fun b!1582976 () Bool)

(assert (=> b!1582976 (= e!1016821 (BalanceConc!11501 Empty!5778))))

(declare-fun b!1582977 () Bool)

(assert (=> b!1582977 (= e!1016821 (printTailRec!747 thiss!17113 lt!555357 (+ 0 1) (++!4526 (BalanceConc!11501 Empty!5778) (charsOf!1714 (apply!4231 lt!555357 0)))))))

(declare-fun lt!555676 () List!17463)

(assert (=> b!1582977 (= lt!555676 (list!6736 lt!555357))))

(declare-fun lt!555670 () Unit!27159)

(declare-fun lemmaDropApply!516 (List!17463 Int) Unit!27159)

(assert (=> b!1582977 (= lt!555670 (lemmaDropApply!516 lt!555676 0))))

(declare-fun drop!818 (List!17463 Int) List!17463)

(declare-fun apply!4233 (List!17463 Int) Token!5696)

(assert (=> b!1582977 (= (head!3199 (drop!818 lt!555676 0)) (apply!4233 lt!555676 0))))

(declare-fun lt!555674 () Unit!27159)

(assert (=> b!1582977 (= lt!555674 lt!555670)))

(declare-fun lt!555672 () List!17463)

(assert (=> b!1582977 (= lt!555672 (list!6736 lt!555357))))

(declare-fun lt!555671 () Unit!27159)

(declare-fun lemmaDropTail!496 (List!17463 Int) Unit!27159)

(assert (=> b!1582977 (= lt!555671 (lemmaDropTail!496 lt!555672 0))))

(declare-fun tail!2262 (List!17463) List!17463)

(assert (=> b!1582977 (= (tail!2262 (drop!818 lt!555672 0)) (drop!818 lt!555672 (+ 0 1)))))

(declare-fun lt!555675 () Unit!27159)

(assert (=> b!1582977 (= lt!555675 lt!555671)))

(assert (= (and d!470681 res!705846) b!1582975))

(assert (= (and d!470681 c!256530) b!1582976))

(assert (= (and d!470681 (not c!256530)) b!1582977))

(declare-fun m!1869449 () Bool)

(assert (=> d!470681 m!1869449))

(declare-fun m!1869451 () Bool)

(assert (=> d!470681 m!1869451))

(declare-fun m!1869453 () Bool)

(assert (=> d!470681 m!1869453))

(declare-fun m!1869455 () Bool)

(assert (=> d!470681 m!1869455))

(assert (=> d!470681 m!1869451))

(assert (=> d!470681 m!1869453))

(declare-fun m!1869457 () Bool)

(assert (=> d!470681 m!1869457))

(assert (=> b!1582975 m!1869455))

(declare-fun m!1869459 () Bool)

(assert (=> b!1582977 m!1869459))

(declare-fun m!1869461 () Bool)

(assert (=> b!1582977 m!1869461))

(declare-fun m!1869463 () Bool)

(assert (=> b!1582977 m!1869463))

(declare-fun m!1869465 () Bool)

(assert (=> b!1582977 m!1869465))

(declare-fun m!1869467 () Bool)

(assert (=> b!1582977 m!1869467))

(assert (=> b!1582977 m!1869463))

(assert (=> b!1582977 m!1869465))

(declare-fun m!1869469 () Bool)

(assert (=> b!1582977 m!1869469))

(declare-fun m!1869471 () Bool)

(assert (=> b!1582977 m!1869471))

(declare-fun m!1869473 () Bool)

(assert (=> b!1582977 m!1869473))

(declare-fun m!1869475 () Bool)

(assert (=> b!1582977 m!1869475))

(declare-fun m!1869477 () Bool)

(assert (=> b!1582977 m!1869477))

(assert (=> b!1582977 m!1869445))

(assert (=> b!1582977 m!1869469))

(declare-fun m!1869479 () Bool)

(assert (=> b!1582977 m!1869479))

(assert (=> b!1582977 m!1869461))

(assert (=> b!1582977 m!1869479))

(declare-fun m!1869481 () Bool)

(assert (=> b!1582977 m!1869481))

(assert (=> b!1582718 d!470681))

(declare-fun d!470683 () Bool)

(assert (=> d!470683 (= (list!6735 lt!555364) (list!6740 (c!256481 lt!555364)))))

(declare-fun bs!391149 () Bool)

(assert (= bs!391149 d!470683))

(declare-fun m!1869483 () Bool)

(assert (=> bs!391149 m!1869483))

(assert (=> b!1582718 d!470683))

(declare-fun d!470685 () Bool)

(declare-fun c!256533 () Bool)

(assert (=> d!470685 (= c!256533 ((_ is Cons!17393) (Cons!17393 (h!22794 tokens!457) Nil!17393)))))

(declare-fun e!1016825 () List!17462)

(assert (=> d!470685 (= (printList!809 thiss!17113 (Cons!17393 (h!22794 tokens!457) Nil!17393)) e!1016825)))

(declare-fun b!1582982 () Bool)

(assert (=> b!1582982 (= e!1016825 (++!4524 (list!6735 (charsOf!1714 (h!22794 (Cons!17393 (h!22794 tokens!457) Nil!17393)))) (printList!809 thiss!17113 (t!143908 (Cons!17393 (h!22794 tokens!457) Nil!17393)))))))

(declare-fun b!1582983 () Bool)

(assert (=> b!1582983 (= e!1016825 Nil!17392)))

(assert (= (and d!470685 c!256533) b!1582982))

(assert (= (and d!470685 (not c!256533)) b!1582983))

(declare-fun m!1869485 () Bool)

(assert (=> b!1582982 m!1869485))

(assert (=> b!1582982 m!1869485))

(declare-fun m!1869487 () Bool)

(assert (=> b!1582982 m!1869487))

(declare-fun m!1869489 () Bool)

(assert (=> b!1582982 m!1869489))

(assert (=> b!1582982 m!1869487))

(assert (=> b!1582982 m!1869489))

(declare-fun m!1869491 () Bool)

(assert (=> b!1582982 m!1869491))

(assert (=> b!1582718 d!470685))

(declare-fun d!470687 () Bool)

(declare-fun e!1016828 () Bool)

(assert (=> d!470687 e!1016828))

(declare-fun res!705849 () Bool)

(assert (=> d!470687 (=> (not res!705849) (not e!1016828))))

(declare-fun lt!555679 () BalanceConc!11502)

(assert (=> d!470687 (= res!705849 (= (list!6736 lt!555679) (Cons!17393 (h!22794 tokens!457) Nil!17393)))))

(declare-fun singleton!578 (Token!5696) BalanceConc!11502)

(assert (=> d!470687 (= lt!555679 (singleton!578 (h!22794 tokens!457)))))

(assert (=> d!470687 (= (singletonSeq!1407 (h!22794 tokens!457)) lt!555679)))

(declare-fun b!1582986 () Bool)

(assert (=> b!1582986 (= e!1016828 (isBalanced!1698 (c!256483 lt!555679)))))

(assert (= (and d!470687 res!705849) b!1582986))

(declare-fun m!1869493 () Bool)

(assert (=> d!470687 m!1869493))

(declare-fun m!1869495 () Bool)

(assert (=> d!470687 m!1869495))

(declare-fun m!1869497 () Bool)

(assert (=> b!1582986 m!1869497))

(assert (=> b!1582718 d!470687))

(declare-fun b!1583005 () Bool)

(declare-fun e!1016837 () Bool)

(declare-fun lt!555693 () Option!3124)

(declare-fun contains!3034 (List!17464 Rule!5930) Bool)

(assert (=> b!1583005 (= e!1016837 (contains!3034 rules!1846 (rule!4865 (_1!9838 (get!4974 lt!555693)))))))

(declare-fun b!1583006 () Bool)

(declare-fun res!705867 () Bool)

(assert (=> b!1583006 (=> (not res!705867) (not e!1016837))))

(assert (=> b!1583006 (= res!705867 (< (size!13995 (_2!9838 (get!4974 lt!555693))) (size!13995 lt!555350)))))

(declare-fun bm!102733 () Bool)

(declare-fun call!102738 () Option!3124)

(assert (=> bm!102733 (= call!102738 (maxPrefixOneRule!729 thiss!17113 (h!22795 rules!1846) lt!555350))))

(declare-fun b!1583008 () Bool)

(declare-fun e!1016835 () Bool)

(assert (=> b!1583008 (= e!1016835 e!1016837)))

(declare-fun res!705866 () Bool)

(assert (=> b!1583008 (=> (not res!705866) (not e!1016837))))

(assert (=> b!1583008 (= res!705866 (isDefined!2501 lt!555693))))

(declare-fun b!1583009 () Bool)

(declare-fun e!1016836 () Option!3124)

(assert (=> b!1583009 (= e!1016836 call!102738)))

(declare-fun b!1583010 () Bool)

(declare-fun res!705868 () Bool)

(assert (=> b!1583010 (=> (not res!705868) (not e!1016837))))

(assert (=> b!1583010 (= res!705868 (= (list!6735 (charsOf!1714 (_1!9838 (get!4974 lt!555693)))) (originalCharacters!3879 (_1!9838 (get!4974 lt!555693)))))))

(declare-fun b!1583011 () Bool)

(declare-fun res!705864 () Bool)

(assert (=> b!1583011 (=> (not res!705864) (not e!1016837))))

(assert (=> b!1583011 (= res!705864 (matchR!1914 (regex!3065 (rule!4865 (_1!9838 (get!4974 lt!555693)))) (list!6735 (charsOf!1714 (_1!9838 (get!4974 lt!555693))))))))

(declare-fun b!1583007 () Bool)

(declare-fun res!705870 () Bool)

(assert (=> b!1583007 (=> (not res!705870) (not e!1016837))))

(declare-fun apply!4234 (TokenValueInjection!5970 BalanceConc!11500) TokenValue!3155)

(assert (=> b!1583007 (= res!705870 (= (value!97025 (_1!9838 (get!4974 lt!555693))) (apply!4234 (transformation!3065 (rule!4865 (_1!9838 (get!4974 lt!555693)))) (seqFromList!1880 (originalCharacters!3879 (_1!9838 (get!4974 lt!555693)))))))))

(declare-fun d!470689 () Bool)

(assert (=> d!470689 e!1016835))

(declare-fun res!705869 () Bool)

(assert (=> d!470689 (=> res!705869 e!1016835)))

(assert (=> d!470689 (= res!705869 (isEmpty!10415 lt!555693))))

(assert (=> d!470689 (= lt!555693 e!1016836)))

(declare-fun c!256536 () Bool)

(assert (=> d!470689 (= c!256536 (and ((_ is Cons!17394) rules!1846) ((_ is Nil!17394) (t!143909 rules!1846))))))

(declare-fun lt!555692 () Unit!27159)

(declare-fun lt!555690 () Unit!27159)

(assert (=> d!470689 (= lt!555692 lt!555690)))

(assert (=> d!470689 (isPrefix!1325 lt!555350 lt!555350)))

(declare-fun lemmaIsPrefixRefl!914 (List!17462 List!17462) Unit!27159)

(assert (=> d!470689 (= lt!555690 (lemmaIsPrefixRefl!914 lt!555350 lt!555350))))

(declare-fun rulesValidInductive!916 (LexerInterface!2694 List!17464) Bool)

(assert (=> d!470689 (rulesValidInductive!916 thiss!17113 rules!1846)))

(assert (=> d!470689 (= (maxPrefix!1258 thiss!17113 rules!1846 lt!555350) lt!555693)))

(declare-fun b!1583012 () Bool)

(declare-fun lt!555691 () Option!3124)

(declare-fun lt!555694 () Option!3124)

(assert (=> b!1583012 (= e!1016836 (ite (and ((_ is None!3123) lt!555691) ((_ is None!3123) lt!555694)) None!3123 (ite ((_ is None!3123) lt!555694) lt!555691 (ite ((_ is None!3123) lt!555691) lt!555694 (ite (>= (size!13991 (_1!9838 (v!23976 lt!555691))) (size!13991 (_1!9838 (v!23976 lt!555694)))) lt!555691 lt!555694)))))))

(assert (=> b!1583012 (= lt!555691 call!102738)))

(assert (=> b!1583012 (= lt!555694 (maxPrefix!1258 thiss!17113 (t!143909 rules!1846) lt!555350))))

(declare-fun b!1583013 () Bool)

(declare-fun res!705865 () Bool)

(assert (=> b!1583013 (=> (not res!705865) (not e!1016837))))

(assert (=> b!1583013 (= res!705865 (= (++!4524 (list!6735 (charsOf!1714 (_1!9838 (get!4974 lt!555693)))) (_2!9838 (get!4974 lt!555693))) lt!555350))))

(assert (= (and d!470689 c!256536) b!1583009))

(assert (= (and d!470689 (not c!256536)) b!1583012))

(assert (= (or b!1583009 b!1583012) bm!102733))

(assert (= (and d!470689 (not res!705869)) b!1583008))

(assert (= (and b!1583008 res!705866) b!1583010))

(assert (= (and b!1583010 res!705868) b!1583006))

(assert (= (and b!1583006 res!705867) b!1583013))

(assert (= (and b!1583013 res!705865) b!1583007))

(assert (= (and b!1583007 res!705870) b!1583011))

(assert (= (and b!1583011 res!705864) b!1583005))

(declare-fun m!1869499 () Bool)

(assert (=> b!1583013 m!1869499))

(declare-fun m!1869501 () Bool)

(assert (=> b!1583013 m!1869501))

(assert (=> b!1583013 m!1869501))

(declare-fun m!1869503 () Bool)

(assert (=> b!1583013 m!1869503))

(assert (=> b!1583013 m!1869503))

(declare-fun m!1869505 () Bool)

(assert (=> b!1583013 m!1869505))

(assert (=> b!1583007 m!1869499))

(declare-fun m!1869507 () Bool)

(assert (=> b!1583007 m!1869507))

(assert (=> b!1583007 m!1869507))

(declare-fun m!1869509 () Bool)

(assert (=> b!1583007 m!1869509))

(assert (=> b!1583011 m!1869499))

(assert (=> b!1583011 m!1869501))

(assert (=> b!1583011 m!1869501))

(assert (=> b!1583011 m!1869503))

(assert (=> b!1583011 m!1869503))

(declare-fun m!1869511 () Bool)

(assert (=> b!1583011 m!1869511))

(assert (=> b!1583006 m!1869499))

(declare-fun m!1869513 () Bool)

(assert (=> b!1583006 m!1869513))

(declare-fun m!1869515 () Bool)

(assert (=> b!1583006 m!1869515))

(declare-fun m!1869517 () Bool)

(assert (=> b!1583008 m!1869517))

(declare-fun m!1869519 () Bool)

(assert (=> bm!102733 m!1869519))

(assert (=> b!1583010 m!1869499))

(assert (=> b!1583010 m!1869501))

(assert (=> b!1583010 m!1869501))

(assert (=> b!1583010 m!1869503))

(declare-fun m!1869521 () Bool)

(assert (=> d!470689 m!1869521))

(declare-fun m!1869523 () Bool)

(assert (=> d!470689 m!1869523))

(declare-fun m!1869525 () Bool)

(assert (=> d!470689 m!1869525))

(declare-fun m!1869527 () Bool)

(assert (=> d!470689 m!1869527))

(declare-fun m!1869529 () Bool)

(assert (=> b!1583012 m!1869529))

(assert (=> b!1583005 m!1869499))

(declare-fun m!1869531 () Bool)

(assert (=> b!1583005 m!1869531))

(assert (=> b!1582718 d!470689))

(declare-fun d!470691 () Bool)

(assert (=> d!470691 (= (inv!22807 (tag!3333 (h!22795 rules!1846))) (= (mod (str.len (value!97024 (tag!3333 (h!22795 rules!1846)))) 2) 0))))

(assert (=> b!1582708 d!470691))

(declare-fun d!470693 () Bool)

(declare-fun res!705873 () Bool)

(declare-fun e!1016840 () Bool)

(assert (=> d!470693 (=> (not res!705873) (not e!1016840))))

(declare-fun semiInverseModEq!1154 (Int Int) Bool)

(assert (=> d!470693 (= res!705873 (semiInverseModEq!1154 (toChars!4331 (transformation!3065 (h!22795 rules!1846))) (toValue!4472 (transformation!3065 (h!22795 rules!1846)))))))

(assert (=> d!470693 (= (inv!22810 (transformation!3065 (h!22795 rules!1846))) e!1016840)))

(declare-fun b!1583016 () Bool)

(declare-fun equivClasses!1095 (Int Int) Bool)

(assert (=> b!1583016 (= e!1016840 (equivClasses!1095 (toChars!4331 (transformation!3065 (h!22795 rules!1846))) (toValue!4472 (transformation!3065 (h!22795 rules!1846)))))))

(assert (= (and d!470693 res!705873) b!1583016))

(declare-fun m!1869533 () Bool)

(assert (=> d!470693 m!1869533))

(declare-fun m!1869535 () Bool)

(assert (=> b!1583016 m!1869535))

(assert (=> b!1582708 d!470693))

(declare-fun d!470695 () Bool)

(declare-fun lt!555697 () Bool)

(declare-fun isEmpty!10418 (List!17463) Bool)

(assert (=> d!470695 (= lt!555697 (isEmpty!10418 (list!6736 (_1!9839 (lex!1178 thiss!17113 rules!1846 (seqFromList!1880 lt!555352))))))))

(declare-fun isEmpty!10419 (Conc!5779) Bool)

(assert (=> d!470695 (= lt!555697 (isEmpty!10419 (c!256483 (_1!9839 (lex!1178 thiss!17113 rules!1846 (seqFromList!1880 lt!555352))))))))

(assert (=> d!470695 (= (isEmpty!10408 (_1!9839 (lex!1178 thiss!17113 rules!1846 (seqFromList!1880 lt!555352)))) lt!555697)))

(declare-fun bs!391150 () Bool)

(assert (= bs!391150 d!470695))

(assert (=> bs!391150 m!1869111))

(assert (=> bs!391150 m!1869111))

(declare-fun m!1869537 () Bool)

(assert (=> bs!391150 m!1869537))

(declare-fun m!1869539 () Bool)

(assert (=> bs!391150 m!1869539))

(assert (=> b!1582719 d!470695))

(declare-fun d!470697 () Bool)

(declare-fun e!1016842 () Bool)

(assert (=> d!470697 e!1016842))

(declare-fun res!705876 () Bool)

(assert (=> d!470697 (=> (not res!705876) (not e!1016842))))

(declare-fun e!1016843 () Bool)

(assert (=> d!470697 (= res!705876 e!1016843)))

(declare-fun c!256537 () Bool)

(declare-fun lt!555698 () tuple2!16874)

(assert (=> d!470697 (= c!256537 (> (size!13996 (_1!9839 lt!555698)) 0))))

(assert (=> d!470697 (= lt!555698 (lexTailRecV2!506 thiss!17113 rules!1846 (seqFromList!1880 lt!555352) (BalanceConc!11501 Empty!5778) (seqFromList!1880 lt!555352) (BalanceConc!11503 Empty!5779)))))

(assert (=> d!470697 (= (lex!1178 thiss!17113 rules!1846 (seqFromList!1880 lt!555352)) lt!555698)))

(declare-fun b!1583017 () Bool)

(declare-fun e!1016841 () Bool)

(assert (=> b!1583017 (= e!1016841 (not (isEmpty!10408 (_1!9839 lt!555698))))))

(declare-fun b!1583018 () Bool)

(assert (=> b!1583018 (= e!1016842 (= (list!6735 (_2!9839 lt!555698)) (_2!9841 (lexList!783 thiss!17113 rules!1846 (list!6735 (seqFromList!1880 lt!555352))))))))

(declare-fun b!1583019 () Bool)

(assert (=> b!1583019 (= e!1016843 (= (_2!9839 lt!555698) (seqFromList!1880 lt!555352)))))

(declare-fun b!1583020 () Bool)

(assert (=> b!1583020 (= e!1016843 e!1016841)))

(declare-fun res!705875 () Bool)

(assert (=> b!1583020 (= res!705875 (< (size!13992 (_2!9839 lt!555698)) (size!13992 (seqFromList!1880 lt!555352))))))

(assert (=> b!1583020 (=> (not res!705875) (not e!1016841))))

(declare-fun b!1583021 () Bool)

(declare-fun res!705874 () Bool)

(assert (=> b!1583021 (=> (not res!705874) (not e!1016842))))

(assert (=> b!1583021 (= res!705874 (= (list!6736 (_1!9839 lt!555698)) (_1!9841 (lexList!783 thiss!17113 rules!1846 (list!6735 (seqFromList!1880 lt!555352))))))))

(assert (= (and d!470697 c!256537) b!1583020))

(assert (= (and d!470697 (not c!256537)) b!1583019))

(assert (= (and b!1583020 res!705875) b!1583017))

(assert (= (and d!470697 res!705876) b!1583021))

(assert (= (and b!1583021 res!705874) b!1583018))

(declare-fun m!1869541 () Bool)

(assert (=> d!470697 m!1869541))

(assert (=> d!470697 m!1868887))

(assert (=> d!470697 m!1868887))

(declare-fun m!1869543 () Bool)

(assert (=> d!470697 m!1869543))

(declare-fun m!1869545 () Bool)

(assert (=> b!1583021 m!1869545))

(assert (=> b!1583021 m!1868887))

(declare-fun m!1869547 () Bool)

(assert (=> b!1583021 m!1869547))

(assert (=> b!1583021 m!1869547))

(declare-fun m!1869549 () Bool)

(assert (=> b!1583021 m!1869549))

(declare-fun m!1869551 () Bool)

(assert (=> b!1583018 m!1869551))

(assert (=> b!1583018 m!1868887))

(assert (=> b!1583018 m!1869547))

(assert (=> b!1583018 m!1869547))

(assert (=> b!1583018 m!1869549))

(declare-fun m!1869553 () Bool)

(assert (=> b!1583020 m!1869553))

(assert (=> b!1583020 m!1868887))

(declare-fun m!1869555 () Bool)

(assert (=> b!1583020 m!1869555))

(declare-fun m!1869557 () Bool)

(assert (=> b!1583017 m!1869557))

(assert (=> b!1582719 d!470697))

(declare-fun d!470699 () Bool)

(declare-fun fromListB!803 (List!17462) BalanceConc!11500)

(assert (=> d!470699 (= (seqFromList!1880 lt!555352) (fromListB!803 lt!555352))))

(declare-fun bs!391151 () Bool)

(assert (= bs!391151 d!470699))

(declare-fun m!1869559 () Bool)

(assert (=> bs!391151 m!1869559))

(assert (=> b!1582719 d!470699))

(declare-fun d!470701 () Bool)

(assert (=> d!470701 (= (isEmpty!10409 rules!1846) ((_ is Nil!17394) rules!1846))))

(assert (=> b!1582720 d!470701))

(declare-fun d!470703 () Bool)

(assert (=> d!470703 (= (inv!22807 (tag!3333 (rule!4865 (h!22794 tokens!457)))) (= (mod (str.len (value!97024 (tag!3333 (rule!4865 (h!22794 tokens!457))))) 2) 0))))

(assert (=> b!1582700 d!470703))

(declare-fun d!470705 () Bool)

(declare-fun res!705877 () Bool)

(declare-fun e!1016844 () Bool)

(assert (=> d!470705 (=> (not res!705877) (not e!1016844))))

(assert (=> d!470705 (= res!705877 (semiInverseModEq!1154 (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))) (toValue!4472 (transformation!3065 (rule!4865 (h!22794 tokens!457))))))))

(assert (=> d!470705 (= (inv!22810 (transformation!3065 (rule!4865 (h!22794 tokens!457)))) e!1016844)))

(declare-fun b!1583022 () Bool)

(assert (=> b!1583022 (= e!1016844 (equivClasses!1095 (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))) (toValue!4472 (transformation!3065 (rule!4865 (h!22794 tokens!457))))))))

(assert (= (and d!470705 res!705877) b!1583022))

(declare-fun m!1869561 () Bool)

(assert (=> d!470705 m!1869561))

(declare-fun m!1869563 () Bool)

(assert (=> b!1583022 m!1869563))

(assert (=> b!1582700 d!470705))

(declare-fun d!470707 () Bool)

(declare-fun res!705882 () Bool)

(declare-fun e!1016850 () Bool)

(assert (=> d!470707 (=> res!705882 e!1016850)))

(assert (=> d!470707 (= res!705882 (or (not ((_ is Cons!17393) tokens!457)) (not ((_ is Cons!17393) (t!143908 tokens!457)))))))

(assert (=> d!470707 (= (tokensListTwoByTwoPredicateSeparableList!387 thiss!17113 tokens!457 rules!1846) e!1016850)))

(declare-fun b!1583027 () Bool)

(declare-fun e!1016849 () Bool)

(assert (=> b!1583027 (= e!1016850 e!1016849)))

(declare-fun res!705883 () Bool)

(assert (=> b!1583027 (=> (not res!705883) (not e!1016849))))

(assert (=> b!1583027 (= res!705883 (separableTokensPredicate!636 thiss!17113 (h!22794 tokens!457) (h!22794 (t!143908 tokens!457)) rules!1846))))

(declare-fun lt!555713 () Unit!27159)

(declare-fun Unit!27196 () Unit!27159)

(assert (=> b!1583027 (= lt!555713 Unit!27196)))

(assert (=> b!1583027 (> (size!13992 (charsOf!1714 (h!22794 (t!143908 tokens!457)))) 0)))

(declare-fun lt!555719 () Unit!27159)

(declare-fun Unit!27197 () Unit!27159)

(assert (=> b!1583027 (= lt!555719 Unit!27197)))

(assert (=> b!1583027 (rulesProduceIndividualToken!1346 thiss!17113 rules!1846 (h!22794 (t!143908 tokens!457)))))

(declare-fun lt!555717 () Unit!27159)

(declare-fun Unit!27198 () Unit!27159)

(assert (=> b!1583027 (= lt!555717 Unit!27198)))

(assert (=> b!1583027 (rulesProduceIndividualToken!1346 thiss!17113 rules!1846 (h!22794 tokens!457))))

(declare-fun lt!555716 () Unit!27159)

(declare-fun lt!555718 () Unit!27159)

(assert (=> b!1583027 (= lt!555716 lt!555718)))

(assert (=> b!1583027 (rulesProduceIndividualToken!1346 thiss!17113 rules!1846 (h!22794 (t!143908 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!519 (LexerInterface!2694 List!17464 List!17463 Token!5696) Unit!27159)

(assert (=> b!1583027 (= lt!555718 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!519 thiss!17113 rules!1846 tokens!457 (h!22794 (t!143908 tokens!457))))))

(declare-fun lt!555714 () Unit!27159)

(declare-fun lt!555715 () Unit!27159)

(assert (=> b!1583027 (= lt!555714 lt!555715)))

(assert (=> b!1583027 (rulesProduceIndividualToken!1346 thiss!17113 rules!1846 (h!22794 tokens!457))))

(assert (=> b!1583027 (= lt!555715 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!519 thiss!17113 rules!1846 tokens!457 (h!22794 tokens!457)))))

(declare-fun b!1583028 () Bool)

(assert (=> b!1583028 (= e!1016849 (tokensListTwoByTwoPredicateSeparableList!387 thiss!17113 (Cons!17393 (h!22794 (t!143908 tokens!457)) (t!143908 (t!143908 tokens!457))) rules!1846))))

(assert (= (and d!470707 (not res!705882)) b!1583027))

(assert (= (and b!1583027 res!705883) b!1583028))

(declare-fun m!1869565 () Bool)

(assert (=> b!1583027 m!1869565))

(assert (=> b!1583027 m!1868885))

(assert (=> b!1583027 m!1868847))

(assert (=> b!1583027 m!1868849))

(assert (=> b!1583027 m!1868847))

(declare-fun m!1869567 () Bool)

(assert (=> b!1583027 m!1869567))

(assert (=> b!1583027 m!1868845))

(declare-fun m!1869569 () Bool)

(assert (=> b!1583027 m!1869569))

(declare-fun m!1869571 () Bool)

(assert (=> b!1583028 m!1869571))

(assert (=> b!1582711 d!470707))

(declare-fun b!1583128 () Bool)

(declare-fun e!1016931 () Bool)

(assert (=> b!1583128 (= e!1016931 true)))

(declare-fun b!1583127 () Bool)

(declare-fun e!1016930 () Bool)

(assert (=> b!1583127 (= e!1016930 e!1016931)))

(declare-fun b!1583126 () Bool)

(declare-fun e!1016929 () Bool)

(assert (=> b!1583126 (= e!1016929 e!1016930)))

(declare-fun d!470709 () Bool)

(assert (=> d!470709 e!1016929))

(assert (= b!1583127 b!1583128))

(assert (= b!1583126 b!1583127))

(assert (= (and d!470709 ((_ is Cons!17394) rules!1846)) b!1583126))

(declare-fun order!10263 () Int)

(declare-fun order!10265 () Int)

(declare-fun lambda!66514 () Int)

(declare-fun dynLambda!7715 (Int Int) Int)

(declare-fun dynLambda!7716 (Int Int) Int)

(assert (=> b!1583128 (< (dynLambda!7715 order!10263 (toValue!4472 (transformation!3065 (h!22795 rules!1846)))) (dynLambda!7716 order!10265 lambda!66514))))

(declare-fun order!10267 () Int)

(declare-fun dynLambda!7717 (Int Int) Int)

(assert (=> b!1583128 (< (dynLambda!7717 order!10267 (toChars!4331 (transformation!3065 (h!22795 rules!1846)))) (dynLambda!7716 order!10265 lambda!66514))))

(assert (=> d!470709 true))

(declare-fun lt!555840 () Bool)

(declare-fun forall!3998 (List!17463 Int) Bool)

(assert (=> d!470709 (= lt!555840 (forall!3998 tokens!457 lambda!66514))))

(declare-fun e!1016922 () Bool)

(assert (=> d!470709 (= lt!555840 e!1016922)))

(declare-fun res!705917 () Bool)

(assert (=> d!470709 (=> res!705917 e!1016922)))

(assert (=> d!470709 (= res!705917 (not ((_ is Cons!17393) tokens!457)))))

(assert (=> d!470709 (not (isEmpty!10409 rules!1846))))

(assert (=> d!470709 (= (rulesProduceEachTokenIndividuallyList!896 thiss!17113 rules!1846 tokens!457) lt!555840)))

(declare-fun b!1583116 () Bool)

(declare-fun e!1016921 () Bool)

(assert (=> b!1583116 (= e!1016922 e!1016921)))

(declare-fun res!705916 () Bool)

(assert (=> b!1583116 (=> (not res!705916) (not e!1016921))))

(assert (=> b!1583116 (= res!705916 (rulesProduceIndividualToken!1346 thiss!17113 rules!1846 (h!22794 tokens!457)))))

(declare-fun b!1583117 () Bool)

(assert (=> b!1583117 (= e!1016921 (rulesProduceEachTokenIndividuallyList!896 thiss!17113 rules!1846 (t!143908 tokens!457)))))

(assert (= (and d!470709 (not res!705917)) b!1583116))

(assert (= (and b!1583116 res!705916) b!1583117))

(declare-fun m!1869741 () Bool)

(assert (=> d!470709 m!1869741))

(assert (=> d!470709 m!1868871))

(assert (=> b!1583116 m!1868885))

(declare-fun m!1869743 () Bool)

(assert (=> b!1583117 m!1869743))

(assert (=> b!1582701 d!470709))

(declare-fun b!1583144 () Bool)

(declare-fun b_free!42791 () Bool)

(declare-fun b_next!43495 () Bool)

(assert (=> b!1583144 (= b_free!42791 (not b_next!43495))))

(declare-fun tp!465805 () Bool)

(declare-fun b_and!110973 () Bool)

(assert (=> b!1583144 (= tp!465805 b_and!110973)))

(declare-fun b_free!42793 () Bool)

(declare-fun b_next!43497 () Bool)

(assert (=> b!1583144 (= b_free!42793 (not b_next!43497))))

(declare-fun t!143943 () Bool)

(declare-fun tb!89071 () Bool)

(assert (=> (and b!1583144 (= (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457))))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457))))) t!143943) tb!89071))

(declare-fun result!107804 () Bool)

(assert (= result!107804 result!107766))

(assert (=> b!1582725 t!143943))

(assert (=> d!470649 t!143943))

(declare-fun t!143945 () Bool)

(declare-fun tb!89073 () Bool)

(assert (=> (and b!1583144 (= (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457))))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457)))))) t!143945) tb!89073))

(declare-fun result!107806 () Bool)

(assert (= result!107806 result!107778))

(assert (=> d!470659 t!143945))

(declare-fun tp!465803 () Bool)

(declare-fun b_and!110975 () Bool)

(assert (=> b!1583144 (= tp!465803 (and (=> t!143943 result!107804) (=> t!143945 result!107806) b_and!110975))))

(declare-fun e!1016949 () Bool)

(declare-fun e!1016947 () Bool)

(declare-fun tp!465804 () Bool)

(declare-fun b!1583143 () Bool)

(assert (=> b!1583143 (= e!1016947 (and tp!465804 (inv!22807 (tag!3333 (rule!4865 (h!22794 (t!143908 tokens!457))))) (inv!22810 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457))))) e!1016949))))

(assert (=> b!1583144 (= e!1016949 (and tp!465805 tp!465803))))

(declare-fun tp!465801 () Bool)

(declare-fun e!1016945 () Bool)

(declare-fun b!1583142 () Bool)

(assert (=> b!1583142 (= e!1016945 (and (inv!21 (value!97025 (h!22794 (t!143908 tokens!457)))) e!1016947 tp!465801))))

(declare-fun e!1016946 () Bool)

(assert (=> b!1582713 (= tp!465731 e!1016946)))

(declare-fun tp!465802 () Bool)

(declare-fun b!1583141 () Bool)

(assert (=> b!1583141 (= e!1016946 (and (inv!22811 (h!22794 (t!143908 tokens!457))) e!1016945 tp!465802))))

(assert (= b!1583143 b!1583144))

(assert (= b!1583142 b!1583143))

(assert (= b!1583141 b!1583142))

(assert (= (and b!1582713 ((_ is Cons!17393) (t!143908 tokens!457))) b!1583141))

(declare-fun m!1869745 () Bool)

(assert (=> b!1583143 m!1869745))

(declare-fun m!1869747 () Bool)

(assert (=> b!1583143 m!1869747))

(declare-fun m!1869749 () Bool)

(assert (=> b!1583142 m!1869749))

(declare-fun m!1869751 () Bool)

(assert (=> b!1583141 m!1869751))

(declare-fun b!1583158 () Bool)

(declare-fun e!1016952 () Bool)

(declare-fun tp!465819 () Bool)

(declare-fun tp!465820 () Bool)

(assert (=> b!1583158 (= e!1016952 (and tp!465819 tp!465820))))

(declare-fun b!1583157 () Bool)

(declare-fun tp!465817 () Bool)

(assert (=> b!1583157 (= e!1016952 tp!465817)))

(declare-fun b!1583156 () Bool)

(declare-fun tp!465816 () Bool)

(declare-fun tp!465818 () Bool)

(assert (=> b!1583156 (= e!1016952 (and tp!465816 tp!465818))))

(declare-fun b!1583155 () Bool)

(declare-fun tp_is_empty!7189 () Bool)

(assert (=> b!1583155 (= e!1016952 tp_is_empty!7189)))

(assert (=> b!1582708 (= tp!465728 e!1016952)))

(assert (= (and b!1582708 ((_ is ElementMatch!4393) (regex!3065 (h!22795 rules!1846)))) b!1583155))

(assert (= (and b!1582708 ((_ is Concat!7549) (regex!3065 (h!22795 rules!1846)))) b!1583156))

(assert (= (and b!1582708 ((_ is Star!4393) (regex!3065 (h!22795 rules!1846)))) b!1583157))

(assert (= (and b!1582708 ((_ is Union!4393) (regex!3065 (h!22795 rules!1846)))) b!1583158))

(declare-fun b!1583163 () Bool)

(declare-fun e!1016955 () Bool)

(declare-fun tp!465823 () Bool)

(assert (=> b!1583163 (= e!1016955 (and tp_is_empty!7189 tp!465823))))

(assert (=> b!1582715 (= tp!465730 e!1016955)))

(assert (= (and b!1582715 ((_ is Cons!17392) (originalCharacters!3879 (h!22794 tokens!457)))) b!1583163))

(declare-fun b!1583174 () Bool)

(declare-fun b_free!42795 () Bool)

(declare-fun b_next!43499 () Bool)

(assert (=> b!1583174 (= b_free!42795 (not b_next!43499))))

(declare-fun tp!465833 () Bool)

(declare-fun b_and!110977 () Bool)

(assert (=> b!1583174 (= tp!465833 b_and!110977)))

(declare-fun b_free!42797 () Bool)

(declare-fun b_next!43501 () Bool)

(assert (=> b!1583174 (= b_free!42797 (not b_next!43501))))

(declare-fun tb!89075 () Bool)

(declare-fun t!143947 () Bool)

(assert (=> (and b!1583174 (= (toChars!4331 (transformation!3065 (h!22795 (t!143909 rules!1846)))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457))))) t!143947) tb!89075))

(declare-fun result!107814 () Bool)

(assert (= result!107814 result!107766))

(assert (=> b!1582725 t!143947))

(assert (=> d!470649 t!143947))

(declare-fun tb!89077 () Bool)

(declare-fun t!143949 () Bool)

(assert (=> (and b!1583174 (= (toChars!4331 (transformation!3065 (h!22795 (t!143909 rules!1846)))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457)))))) t!143949) tb!89077))

(declare-fun result!107816 () Bool)

(assert (= result!107816 result!107778))

(assert (=> d!470659 t!143949))

(declare-fun tp!465835 () Bool)

(declare-fun b_and!110979 () Bool)

(assert (=> b!1583174 (= tp!465835 (and (=> t!143947 result!107814) (=> t!143949 result!107816) b_and!110979))))

(declare-fun e!1016965 () Bool)

(assert (=> b!1583174 (= e!1016965 (and tp!465833 tp!465835))))

(declare-fun e!1016966 () Bool)

(declare-fun b!1583173 () Bool)

(declare-fun tp!465832 () Bool)

(assert (=> b!1583173 (= e!1016966 (and tp!465832 (inv!22807 (tag!3333 (h!22795 (t!143909 rules!1846)))) (inv!22810 (transformation!3065 (h!22795 (t!143909 rules!1846)))) e!1016965))))

(declare-fun b!1583172 () Bool)

(declare-fun e!1016967 () Bool)

(declare-fun tp!465834 () Bool)

(assert (=> b!1583172 (= e!1016967 (and e!1016966 tp!465834))))

(assert (=> b!1582710 (= tp!465727 e!1016967)))

(assert (= b!1583173 b!1583174))

(assert (= b!1583172 b!1583173))

(assert (= (and b!1582710 ((_ is Cons!17394) (t!143909 rules!1846))) b!1583172))

(declare-fun m!1869753 () Bool)

(assert (=> b!1583173 m!1869753))

(declare-fun m!1869755 () Bool)

(assert (=> b!1583173 m!1869755))

(declare-fun b!1583178 () Bool)

(declare-fun e!1016968 () Bool)

(declare-fun tp!465839 () Bool)

(declare-fun tp!465840 () Bool)

(assert (=> b!1583178 (= e!1016968 (and tp!465839 tp!465840))))

(declare-fun b!1583177 () Bool)

(declare-fun tp!465837 () Bool)

(assert (=> b!1583177 (= e!1016968 tp!465837)))

(declare-fun b!1583176 () Bool)

(declare-fun tp!465836 () Bool)

(declare-fun tp!465838 () Bool)

(assert (=> b!1583176 (= e!1016968 (and tp!465836 tp!465838))))

(declare-fun b!1583175 () Bool)

(assert (=> b!1583175 (= e!1016968 tp_is_empty!7189)))

(assert (=> b!1582700 (= tp!465726 e!1016968)))

(assert (= (and b!1582700 ((_ is ElementMatch!4393) (regex!3065 (rule!4865 (h!22794 tokens!457))))) b!1583175))

(assert (= (and b!1582700 ((_ is Concat!7549) (regex!3065 (rule!4865 (h!22794 tokens!457))))) b!1583176))

(assert (= (and b!1582700 ((_ is Star!4393) (regex!3065 (rule!4865 (h!22794 tokens!457))))) b!1583177))

(assert (= (and b!1582700 ((_ is Union!4393) (regex!3065 (rule!4865 (h!22794 tokens!457))))) b!1583178))

(declare-fun b_lambda!49815 () Bool)

(assert (= b_lambda!49797 (or (and b!1582709 b_free!42777 (= (toChars!4331 (transformation!3065 (h!22795 rules!1846))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))))) (and b!1582702 b_free!42781) (and b!1583144 b_free!42793 (= (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457))))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))))) (and b!1583174 b_free!42797 (= (toChars!4331 (transformation!3065 (h!22795 (t!143909 rules!1846)))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))))) b_lambda!49815)))

(declare-fun b_lambda!49817 () Bool)

(assert (= b_lambda!49803 (or (and b!1582709 b_free!42777 (= (toChars!4331 (transformation!3065 (h!22795 rules!1846))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457))))))) (and b!1582702 b_free!42781 (= (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457))))))) (and b!1583144 b_free!42793) (and b!1583174 b_free!42797 (= (toChars!4331 (transformation!3065 (h!22795 (t!143909 rules!1846)))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457))))))) b_lambda!49817)))

(declare-fun b_lambda!49819 () Bool)

(assert (= b_lambda!49801 (or (and b!1582709 b_free!42777 (= (toChars!4331 (transformation!3065 (h!22795 rules!1846))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))))) (and b!1582702 b_free!42781) (and b!1583144 b_free!42793 (= (toChars!4331 (transformation!3065 (rule!4865 (h!22794 (t!143908 tokens!457))))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))))) (and b!1583174 b_free!42797 (= (toChars!4331 (transformation!3065 (h!22795 (t!143909 rules!1846)))) (toChars!4331 (transformation!3065 (rule!4865 (h!22794 tokens!457)))))) b_lambda!49819)))

(check-sat (not b!1583126) (not b!1583027) (not b_next!43481) b_and!110955 (not b!1582725) (not d!470637) (not b!1582726) (not b_next!43485) (not b!1582909) (not b!1582825) (not b!1582761) (not d!470645) (not d!470607) (not d!470569) (not b!1582731) (not d!470571) (not b!1583178) (not b!1583176) (not b!1582857) (not b_lambda!49817) (not b!1583157) (not d!470591) (not d!470677) (not b!1583142) (not d!470695) (not b!1583010) (not d!470567) (not b!1583177) (not b!1583017) (not b!1582855) (not b!1583116) (not b_next!43495) (not b!1582890) (not d!470661) (not b!1582893) (not b!1583158) (not b!1583141) (not b!1582764) (not d!470653) (not b_lambda!49815) (not d!470641) (not d!470575) (not d!470679) (not b!1582760) (not b!1583028) (not d!470705) (not b!1583016) (not d!470663) (not b!1582734) (not d!470647) (not d!470619) (not d!470587) (not b!1582891) (not d!470593) (not bm!102733) (not d!470565) (not b!1582827) (not b!1582911) (not b!1583012) b_and!110953 (not b!1583007) (not d!470699) (not b!1582967) (not d!470659) (not b_next!43497) tp_is_empty!7189 (not b_lambda!49819) (not d!470681) (not d!470649) (not d!470693) (not d!470689) b_and!110937 (not b!1583143) (not b!1583020) b_and!110975 (not d!470577) b_and!110979 (not b!1583011) (not b!1582955) (not b!1583021) (not d!470697) (not b_next!43479) (not b!1583156) (not b!1583008) (not b!1582966) (not d!470651) (not b!1582982) (not b!1582737) (not b_next!43499) (not d!470687) (not b!1582977) (not d!470573) (not b!1583006) b_and!110977 (not b!1583172) (not b!1582956) (not b!1583173) (not b!1582975) (not tb!89047) (not b!1583018) b_and!110933 (not d!470657) (not b!1582908) (not b!1583117) (not d!470655) (not b!1582986) (not b_next!43501) (not b!1582968) (not b!1583022) (not b!1583163) (not b!1583005) (not b!1582856) (not b_next!43483) (not d!470709) (not d!470643) (not d!470683) (not d!470665) (not b!1582826) b_and!110973 (not b!1583013) (not b!1582894) (not tb!89055))
(check-sat b_and!110955 (not b_next!43485) (not b_next!43495) b_and!110953 b_and!110975 b_and!110979 (not b_next!43479) b_and!110933 (not b_next!43481) (not b_next!43501) (not b_next!43483) b_and!110973 b_and!110937 (not b_next!43497) (not b_next!43499) b_and!110977)
