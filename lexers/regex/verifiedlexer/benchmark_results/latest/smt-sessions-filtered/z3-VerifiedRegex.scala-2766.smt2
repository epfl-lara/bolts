; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152166 () Bool)

(assert start!152166)

(declare-fun b!1611584 () Bool)

(declare-fun b_free!43287 () Bool)

(declare-fun b_next!43991 () Bool)

(assert (=> b!1611584 (= b_free!43287 (not b_next!43991))))

(declare-fun tp!470038 () Bool)

(declare-fun b_and!114245 () Bool)

(assert (=> b!1611584 (= tp!470038 b_and!114245)))

(declare-fun b_free!43289 () Bool)

(declare-fun b_next!43993 () Bool)

(assert (=> b!1611584 (= b_free!43289 (not b_next!43993))))

(declare-fun tp!470037 () Bool)

(declare-fun b_and!114247 () Bool)

(assert (=> b!1611584 (= tp!470037 b_and!114247)))

(declare-fun b!1611592 () Bool)

(declare-fun b_free!43291 () Bool)

(declare-fun b_next!43995 () Bool)

(assert (=> b!1611592 (= b_free!43291 (not b_next!43995))))

(declare-fun tp!470043 () Bool)

(declare-fun b_and!114249 () Bool)

(assert (=> b!1611592 (= tp!470043 b_and!114249)))

(declare-fun b_free!43293 () Bool)

(declare-fun b_next!43997 () Bool)

(assert (=> b!1611592 (= b_free!43293 (not b_next!43997))))

(declare-fun tp!470044 () Bool)

(declare-fun b_and!114251 () Bool)

(assert (=> b!1611592 (= tp!470044 b_and!114251)))

(declare-fun e!1033541 () Bool)

(declare-datatypes ((List!17643 0))(
  ( (Nil!17573) (Cons!17573 (h!22974 (_ BitVec 16)) (t!147990 List!17643)) )
))
(declare-datatypes ((TokenValue!3183 0))(
  ( (FloatLiteralValue!6366 (text!22726 List!17643)) (TokenValueExt!3182 (__x!11668 Int)) (Broken!15915 (value!97797 List!17643)) (Object!3252) (End!3183) (Def!3183) (Underscore!3183) (Match!3183) (Else!3183) (Error!3183) (Case!3183) (If!3183) (Extends!3183) (Abstract!3183) (Class!3183) (Val!3183) (DelimiterValue!6366 (del!3243 List!17643)) (KeywordValue!3189 (value!97798 List!17643)) (CommentValue!6366 (value!97799 List!17643)) (WhitespaceValue!6366 (value!97800 List!17643)) (IndentationValue!3183 (value!97801 List!17643)) (String!20246) (Int32!3183) (Broken!15916 (value!97802 List!17643)) (Boolean!3184) (Unit!28234) (OperatorValue!3186 (op!3243 List!17643)) (IdentifierValue!6366 (value!97803 List!17643)) (IdentifierValue!6367 (value!97804 List!17643)) (WhitespaceValue!6367 (value!97805 List!17643)) (True!6366) (False!6366) (Broken!15917 (value!97806 List!17643)) (Broken!15918 (value!97807 List!17643)) (True!6367) (RightBrace!3183) (RightBracket!3183) (Colon!3183) (Null!3183) (Comma!3183) (LeftBracket!3183) (False!6367) (LeftBrace!3183) (ImaginaryLiteralValue!3183 (text!22727 List!17643)) (StringLiteralValue!9549 (value!97808 List!17643)) (EOFValue!3183 (value!97809 List!17643)) (IdentValue!3183 (value!97810 List!17643)) (DelimiterValue!6367 (value!97811 List!17643)) (DedentValue!3183 (value!97812 List!17643)) (NewLineValue!3183 (value!97813 List!17643)) (IntegerValue!9549 (value!97814 (_ BitVec 32)) (text!22728 List!17643)) (IntegerValue!9550 (value!97815 Int) (text!22729 List!17643)) (Times!3183) (Or!3183) (Equal!3183) (Minus!3183) (Broken!15919 (value!97816 List!17643)) (And!3183) (Div!3183) (LessEqual!3183) (Mod!3183) (Concat!7604) (Not!3183) (Plus!3183) (SpaceValue!3183 (value!97817 List!17643)) (IntegerValue!9551 (value!97818 Int) (text!22730 List!17643)) (StringLiteralValue!9550 (text!22731 List!17643)) (FloatLiteralValue!6367 (text!22732 List!17643)) (BytesLiteralValue!3183 (value!97819 List!17643)) (CommentValue!6367 (value!97820 List!17643)) (StringLiteralValue!9551 (value!97821 List!17643)) (ErrorTokenValue!3183 (msg!3244 List!17643)) )
))
(declare-datatypes ((C!9016 0))(
  ( (C!9017 (val!5104 Int)) )
))
(declare-datatypes ((List!17644 0))(
  ( (Nil!17574) (Cons!17574 (h!22975 C!9016) (t!147991 List!17644)) )
))
(declare-datatypes ((IArray!11673 0))(
  ( (IArray!11674 (innerList!5894 List!17644)) )
))
(declare-datatypes ((Conc!5834 0))(
  ( (Node!5834 (left!14170 Conc!5834) (right!14500 Conc!5834) (csize!11898 Int) (cheight!6045 Int)) (Leaf!8601 (xs!8662 IArray!11673) (csize!11899 Int)) (Empty!5834) )
))
(declare-datatypes ((BalanceConc!11612 0))(
  ( (BalanceConc!11613 (c!262695 Conc!5834)) )
))
(declare-datatypes ((Regex!4421 0))(
  ( (ElementMatch!4421 (c!262696 C!9016)) (Concat!7605 (regOne!9354 Regex!4421) (regTwo!9354 Regex!4421)) (EmptyExpr!4421) (Star!4421 (reg!4750 Regex!4421)) (EmptyLang!4421) (Union!4421 (regOne!9355 Regex!4421) (regTwo!9355 Regex!4421)) )
))
(declare-datatypes ((String!20247 0))(
  ( (String!20248 (value!97822 String)) )
))
(declare-datatypes ((TokenValueInjection!6026 0))(
  ( (TokenValueInjection!6027 (toValue!4516 Int) (toChars!4375 Int)) )
))
(declare-datatypes ((Rule!5986 0))(
  ( (Rule!5987 (regex!3093 Regex!4421) (tag!3369 String!20247) (isSeparator!3093 Bool) (transformation!3093 TokenValueInjection!6026)) )
))
(declare-datatypes ((Token!5752 0))(
  ( (Token!5753 (value!97823 TokenValue!3183) (rule!4913 Rule!5986) (size!14144 Int) (originalCharacters!3907 List!17644)) )
))
(declare-datatypes ((List!17645 0))(
  ( (Nil!17575) (Cons!17575 (h!22976 Token!5752) (t!147992 List!17645)) )
))
(declare-fun tokens!457 () List!17645)

(declare-fun b!1611583 () Bool)

(declare-fun e!1033549 () Bool)

(declare-fun tp!470042 () Bool)

(declare-fun inv!22989 (String!20247) Bool)

(declare-fun inv!22992 (TokenValueInjection!6026) Bool)

(assert (=> b!1611583 (= e!1033549 (and tp!470042 (inv!22989 (tag!3369 (rule!4913 (h!22976 tokens!457)))) (inv!22992 (transformation!3093 (rule!4913 (h!22976 tokens!457)))) e!1033541))))

(declare-fun e!1033551 () Bool)

(assert (=> b!1611584 (= e!1033551 (and tp!470038 tp!470037))))

(declare-fun b!1611585 () Bool)

(declare-fun e!1033554 () Bool)

(declare-fun lt!574886 () List!17644)

(declare-fun lt!574887 () BalanceConc!11612)

(declare-fun head!3294 (BalanceConc!11612) C!9016)

(assert (=> b!1611585 (= e!1033554 (= lt!574886 (Cons!17574 (head!3294 lt!574887) Nil!17574)))))

(declare-fun b!1611586 () Bool)

(declare-fun res!718516 () Bool)

(declare-fun e!1033555 () Bool)

(assert (=> b!1611586 (=> res!718516 e!1033555)))

(declare-datatypes ((LexerInterface!2722 0))(
  ( (LexerInterfaceExt!2719 (__x!11669 Int)) (Lexer!2720) )
))
(declare-fun thiss!17113 () LexerInterface!2722)

(declare-fun lt!574903 () List!17644)

(declare-datatypes ((List!17646 0))(
  ( (Nil!17576) (Cons!17576 (h!22977 Rule!5986) (t!147993 List!17646)) )
))
(declare-fun rules!1846 () List!17646)

(declare-datatypes ((IArray!11675 0))(
  ( (IArray!11676 (innerList!5895 List!17645)) )
))
(declare-datatypes ((Conc!5835 0))(
  ( (Node!5835 (left!14171 Conc!5835) (right!14501 Conc!5835) (csize!11900 Int) (cheight!6046 Int)) (Leaf!8602 (xs!8663 IArray!11675) (csize!11901 Int)) (Empty!5835) )
))
(declare-datatypes ((BalanceConc!11614 0))(
  ( (BalanceConc!11615 (c!262697 Conc!5835)) )
))
(declare-fun isEmpty!10612 (BalanceConc!11614) Bool)

(declare-datatypes ((tuple2!17064 0))(
  ( (tuple2!17065 (_1!9934 BalanceConc!11614) (_2!9934 BalanceConc!11612)) )
))
(declare-fun lex!1206 (LexerInterface!2722 List!17646 BalanceConc!11612) tuple2!17064)

(declare-fun seqFromList!1935 (List!17644) BalanceConc!11612)

(assert (=> b!1611586 (= res!718516 (isEmpty!10612 (_1!9934 (lex!1206 thiss!17113 rules!1846 (seqFromList!1935 lt!574903)))))))

(declare-fun b!1611587 () Bool)

(declare-fun res!718507 () Bool)

(declare-fun e!1033550 () Bool)

(assert (=> b!1611587 (=> (not res!718507) (not e!1033550))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!415 (LexerInterface!2722 List!17645 List!17646) Bool)

(assert (=> b!1611587 (= res!718507 (tokensListTwoByTwoPredicateSeparableList!415 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1611588 () Bool)

(declare-fun res!718522 () Bool)

(assert (=> b!1611588 (=> (not res!718522) (not e!1033550))))

(declare-fun rulesProduceEachTokenIndividuallyList!924 (LexerInterface!2722 List!17646 List!17645) Bool)

(assert (=> b!1611588 (= res!718522 (rulesProduceEachTokenIndividuallyList!924 thiss!17113 rules!1846 tokens!457))))

(declare-fun res!718509 () Bool)

(assert (=> start!152166 (=> (not res!718509) (not e!1033550))))

(get-info :version)

(assert (=> start!152166 (= res!718509 ((_ is Lexer!2720) thiss!17113))))

(assert (=> start!152166 e!1033550))

(assert (=> start!152166 true))

(declare-fun e!1033553 () Bool)

(assert (=> start!152166 e!1033553))

(declare-fun e!1033547 () Bool)

(assert (=> start!152166 e!1033547))

(declare-fun b!1611589 () Bool)

(declare-fun res!718508 () Bool)

(assert (=> b!1611589 (=> (not res!718508) (not e!1033550))))

(assert (=> b!1611589 (= res!718508 (and (not ((_ is Nil!17575) tokens!457)) (not ((_ is Nil!17575) (t!147992 tokens!457)))))))

(declare-fun b!1611590 () Bool)

(declare-fun e!1033540 () Bool)

(declare-fun tp!470036 () Bool)

(assert (=> b!1611590 (= e!1033553 (and e!1033540 tp!470036))))

(declare-fun e!1033552 () Bool)

(declare-fun b!1611591 () Bool)

(declare-fun tp!470041 () Bool)

(declare-fun inv!21 (TokenValue!3183) Bool)

(assert (=> b!1611591 (= e!1033552 (and (inv!21 (value!97823 (h!22976 tokens!457))) e!1033549 tp!470041))))

(assert (=> b!1611592 (= e!1033541 (and tp!470043 tp!470044))))

(declare-fun b!1611593 () Bool)

(declare-fun res!718513 () Bool)

(declare-fun e!1033556 () Bool)

(assert (=> b!1611593 (=> res!718513 e!1033556)))

(declare-fun separableTokensPredicate!664 (LexerInterface!2722 Token!5752 Token!5752 List!17646) Bool)

(assert (=> b!1611593 (= res!718513 (not (separableTokensPredicate!664 thiss!17113 (h!22976 tokens!457) (h!22976 (t!147992 tokens!457)) rules!1846)))))

(declare-fun b!1611594 () Bool)

(declare-fun res!718511 () Bool)

(assert (=> b!1611594 (=> (not res!718511) (not e!1033550))))

(declare-fun rulesInvariant!2391 (LexerInterface!2722 List!17646) Bool)

(assert (=> b!1611594 (= res!718511 (rulesInvariant!2391 thiss!17113 rules!1846))))

(declare-fun b!1611595 () Bool)

(declare-fun e!1033543 () Bool)

(assert (=> b!1611595 (= e!1033543 true)))

(declare-fun lt!574893 () Bool)

(declare-fun rulesValidInductive!940 (LexerInterface!2722 List!17646) Bool)

(assert (=> b!1611595 (= lt!574893 (rulesValidInductive!940 thiss!17113 rules!1846))))

(declare-fun lt!574904 () BalanceConc!11612)

(assert (=> b!1611595 (= lt!574904 (seqFromList!1935 (originalCharacters!3907 (h!22976 tokens!457))))))

(assert (=> b!1611595 e!1033554))

(declare-fun res!718520 () Bool)

(assert (=> b!1611595 (=> (not res!718520) (not e!1033554))))

(assert (=> b!1611595 (= res!718520 (= lt!574903 (originalCharacters!3907 (h!22976 tokens!457))))))

(declare-fun b!1611596 () Bool)

(declare-fun e!1033548 () Bool)

(declare-fun e!1033546 () Bool)

(assert (=> b!1611596 (= e!1033548 (not e!1033546))))

(declare-fun res!718510 () Bool)

(assert (=> b!1611596 (=> res!718510 e!1033546)))

(declare-fun lt!574902 () List!17645)

(assert (=> b!1611596 (= res!718510 (not (= lt!574902 (t!147992 tokens!457))))))

(declare-fun lt!574890 () tuple2!17064)

(declare-fun list!6855 (BalanceConc!11614) List!17645)

(assert (=> b!1611596 (= lt!574902 (list!6855 (_1!9934 lt!574890)))))

(declare-datatypes ((Unit!28235 0))(
  ( (Unit!28236) )
))
(declare-fun lt!574905 () Unit!28235)

(declare-fun theoremInvertabilityWhenTokenListSeparable!167 (LexerInterface!2722 List!17646 List!17645) Unit!28235)

(assert (=> b!1611596 (= lt!574905 (theoremInvertabilityWhenTokenListSeparable!167 thiss!17113 rules!1846 (t!147992 tokens!457)))))

(declare-fun lt!574909 () List!17644)

(declare-fun isPrefix!1353 (List!17644 List!17644) Bool)

(assert (=> b!1611596 (isPrefix!1353 lt!574903 lt!574909)))

(declare-fun lt!574910 () Unit!28235)

(declare-fun lt!574896 () List!17644)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!878 (List!17644 List!17644) Unit!28235)

(assert (=> b!1611596 (= lt!574910 (lemmaConcatTwoListThenFirstIsPrefix!878 lt!574903 lt!574896))))

(declare-fun b!1611597 () Bool)

(assert (=> b!1611597 (= e!1033550 e!1033548)))

(declare-fun res!718525 () Bool)

(assert (=> b!1611597 (=> (not res!718525) (not e!1033548))))

(declare-fun lt!574897 () List!17644)

(assert (=> b!1611597 (= res!718525 (= lt!574897 lt!574909))))

(declare-fun ++!4619 (List!17644 List!17644) List!17644)

(assert (=> b!1611597 (= lt!574909 (++!4619 lt!574903 lt!574896))))

(declare-fun lt!574895 () BalanceConc!11612)

(declare-fun list!6856 (BalanceConc!11612) List!17644)

(assert (=> b!1611597 (= lt!574897 (list!6856 lt!574895))))

(assert (=> b!1611597 (= lt!574896 (list!6856 lt!574887))))

(declare-fun lt!574901 () BalanceConc!11612)

(assert (=> b!1611597 (= lt!574903 (list!6856 lt!574901))))

(declare-fun charsOf!1742 (Token!5752) BalanceConc!11612)

(assert (=> b!1611597 (= lt!574901 (charsOf!1742 (h!22976 tokens!457)))))

(assert (=> b!1611597 (= lt!574890 (lex!1206 thiss!17113 rules!1846 lt!574887))))

(declare-fun lt!574885 () BalanceConc!11614)

(declare-fun print!1253 (LexerInterface!2722 BalanceConc!11614) BalanceConc!11612)

(assert (=> b!1611597 (= lt!574887 (print!1253 thiss!17113 lt!574885))))

(declare-fun seqFromList!1936 (List!17645) BalanceConc!11614)

(assert (=> b!1611597 (= lt!574885 (seqFromList!1936 (t!147992 tokens!457)))))

(assert (=> b!1611597 (= lt!574895 (print!1253 thiss!17113 (seqFromList!1936 tokens!457)))))

(declare-fun b!1611598 () Bool)

(declare-fun e!1033558 () Bool)

(assert (=> b!1611598 (= e!1033558 e!1033543)))

(declare-fun res!718517 () Bool)

(assert (=> b!1611598 (=> res!718517 e!1033543)))

(declare-fun lt!574907 () Regex!4421)

(declare-fun prefixMatch!356 (Regex!4421 List!17644) Bool)

(assert (=> b!1611598 (= res!718517 (prefixMatch!356 lt!574907 (++!4619 lt!574903 lt!574886)))))

(declare-fun lt!574894 () BalanceConc!11612)

(assert (=> b!1611598 (= lt!574886 (list!6856 lt!574894))))

(declare-fun b!1611599 () Bool)

(declare-fun res!718523 () Bool)

(assert (=> b!1611599 (=> (not res!718523) (not e!1033550))))

(declare-fun isEmpty!10613 (List!17646) Bool)

(assert (=> b!1611599 (= res!718523 (not (isEmpty!10613 rules!1846)))))

(declare-fun b!1611600 () Bool)

(declare-fun e!1033542 () Bool)

(assert (=> b!1611600 (= e!1033555 e!1033542)))

(declare-fun res!718519 () Bool)

(assert (=> b!1611600 (=> res!718519 e!1033542)))

(declare-datatypes ((tuple2!17066 0))(
  ( (tuple2!17067 (_1!9935 Token!5752) (_2!9935 List!17644)) )
))
(declare-datatypes ((Option!3188 0))(
  ( (None!3187) (Some!3187 (v!24152 tuple2!17066)) )
))
(declare-fun lt!574898 () Option!3188)

(declare-fun isDefined!2557 (Option!3188) Bool)

(assert (=> b!1611600 (= res!718519 (not (isDefined!2557 lt!574898)))))

(declare-fun lt!574908 () Unit!28235)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!296 (LexerInterface!2722 List!17646 List!17644 List!17644) Unit!28235)

(assert (=> b!1611600 (= lt!574908 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!296 thiss!17113 rules!1846 lt!574903 lt!574896))))

(declare-fun b!1611601 () Bool)

(assert (=> b!1611601 (= e!1033556 e!1033555)))

(declare-fun res!718512 () Bool)

(assert (=> b!1611601 (=> res!718512 e!1033555)))

(declare-fun lt!574889 () List!17644)

(declare-fun lt!574888 () List!17644)

(assert (=> b!1611601 (= res!718512 (or (not (= lt!574889 lt!574888)) (not (= lt!574888 lt!574903)) (not (= lt!574889 lt!574903))))))

(declare-fun printList!837 (LexerInterface!2722 List!17645) List!17644)

(assert (=> b!1611601 (= lt!574888 (printList!837 thiss!17113 (Cons!17575 (h!22976 tokens!457) Nil!17575)))))

(declare-fun lt!574892 () BalanceConc!11612)

(assert (=> b!1611601 (= lt!574889 (list!6856 lt!574892))))

(declare-fun lt!574899 () BalanceConc!11614)

(declare-fun printTailRec!775 (LexerInterface!2722 BalanceConc!11614 Int BalanceConc!11612) BalanceConc!11612)

(assert (=> b!1611601 (= lt!574892 (printTailRec!775 thiss!17113 lt!574899 0 (BalanceConc!11613 Empty!5834)))))

(assert (=> b!1611601 (= lt!574892 (print!1253 thiss!17113 lt!574899))))

(declare-fun singletonSeq!1464 (Token!5752) BalanceConc!11614)

(assert (=> b!1611601 (= lt!574899 (singletonSeq!1464 (h!22976 tokens!457)))))

(declare-fun maxPrefix!1286 (LexerInterface!2722 List!17646 List!17644) Option!3188)

(assert (=> b!1611601 (= lt!574898 (maxPrefix!1286 thiss!17113 rules!1846 lt!574897))))

(declare-fun b!1611602 () Bool)

(assert (=> b!1611602 (= e!1033546 e!1033556)))

(declare-fun res!718518 () Bool)

(assert (=> b!1611602 (=> res!718518 e!1033556)))

(declare-fun lt!574900 () List!17645)

(declare-fun lt!574891 () List!17645)

(assert (=> b!1611602 (= res!718518 (or (not (= lt!574902 lt!574891)) (not (= lt!574891 lt!574900))))))

(assert (=> b!1611602 (= lt!574891 (list!6855 lt!574885))))

(assert (=> b!1611602 (= lt!574902 lt!574900)))

(declare-fun prepend!597 (BalanceConc!11614 Token!5752) BalanceConc!11614)

(assert (=> b!1611602 (= lt!574900 (list!6855 (prepend!597 (seqFromList!1936 (t!147992 (t!147992 tokens!457))) (h!22976 (t!147992 tokens!457)))))))

(declare-fun lt!574906 () Unit!28235)

(declare-fun seqFromListBHdTlConstructive!170 (Token!5752 List!17645 BalanceConc!11614) Unit!28235)

(assert (=> b!1611602 (= lt!574906 (seqFromListBHdTlConstructive!170 (h!22976 (t!147992 tokens!457)) (t!147992 (t!147992 tokens!457)) (_1!9934 lt!574890)))))

(declare-fun b!1611603 () Bool)

(assert (=> b!1611603 (= e!1033542 e!1033558)))

(declare-fun res!718521 () Bool)

(assert (=> b!1611603 (=> res!718521 e!1033558)))

(declare-fun prefixMatchZipperSequence!459 (Regex!4421 BalanceConc!11612) Bool)

(declare-fun ++!4620 (BalanceConc!11612 BalanceConc!11612) BalanceConc!11612)

(assert (=> b!1611603 (= res!718521 (prefixMatchZipperSequence!459 lt!574907 (++!4620 lt!574901 lt!574894)))))

(declare-fun singletonSeq!1465 (C!9016) BalanceConc!11612)

(declare-fun apply!4392 (BalanceConc!11612 Int) C!9016)

(assert (=> b!1611603 (= lt!574894 (singletonSeq!1465 (apply!4392 (charsOf!1742 (h!22976 (t!147992 tokens!457))) 0)))))

(declare-fun rulesRegex!483 (LexerInterface!2722 List!17646) Regex!4421)

(assert (=> b!1611603 (= lt!574907 (rulesRegex!483 thiss!17113 rules!1846))))

(declare-fun tp!470040 () Bool)

(declare-fun b!1611604 () Bool)

(declare-fun inv!22993 (Token!5752) Bool)

(assert (=> b!1611604 (= e!1033547 (and (inv!22993 (h!22976 tokens!457)) e!1033552 tp!470040))))

(declare-fun b!1611605 () Bool)

(declare-fun res!718515 () Bool)

(assert (=> b!1611605 (=> (not res!718515) (not e!1033554))))

(declare-fun head!3295 (List!17644) C!9016)

(assert (=> b!1611605 (= res!718515 (= lt!574886 (Cons!17574 (head!3295 lt!574896) Nil!17574)))))

(declare-fun b!1611606 () Bool)

(declare-fun res!718514 () Bool)

(assert (=> b!1611606 (=> (not res!718514) (not e!1033554))))

(assert (=> b!1611606 (= res!718514 (= lt!574886 (Cons!17574 (head!3295 (originalCharacters!3907 (h!22976 (t!147992 tokens!457)))) Nil!17574)))))

(declare-fun b!1611607 () Bool)

(declare-fun res!718524 () Bool)

(assert (=> b!1611607 (=> res!718524 e!1033555)))

(declare-fun rulesProduceIndividualToken!1374 (LexerInterface!2722 List!17646 Token!5752) Bool)

(assert (=> b!1611607 (= res!718524 (not (rulesProduceIndividualToken!1374 thiss!17113 rules!1846 (h!22976 tokens!457))))))

(declare-fun b!1611608 () Bool)

(declare-fun tp!470039 () Bool)

(assert (=> b!1611608 (= e!1033540 (and tp!470039 (inv!22989 (tag!3369 (h!22977 rules!1846))) (inv!22992 (transformation!3093 (h!22977 rules!1846))) e!1033551))))

(assert (= (and start!152166 res!718509) b!1611599))

(assert (= (and b!1611599 res!718523) b!1611594))

(assert (= (and b!1611594 res!718511) b!1611588))

(assert (= (and b!1611588 res!718522) b!1611587))

(assert (= (and b!1611587 res!718507) b!1611589))

(assert (= (and b!1611589 res!718508) b!1611597))

(assert (= (and b!1611597 res!718525) b!1611596))

(assert (= (and b!1611596 (not res!718510)) b!1611602))

(assert (= (and b!1611602 (not res!718518)) b!1611593))

(assert (= (and b!1611593 (not res!718513)) b!1611601))

(assert (= (and b!1611601 (not res!718512)) b!1611607))

(assert (= (and b!1611607 (not res!718524)) b!1611586))

(assert (= (and b!1611586 (not res!718516)) b!1611600))

(assert (= (and b!1611600 (not res!718519)) b!1611603))

(assert (= (and b!1611603 (not res!718521)) b!1611598))

(assert (= (and b!1611598 (not res!718517)) b!1611595))

(assert (= (and b!1611595 res!718520) b!1611606))

(assert (= (and b!1611606 res!718514) b!1611605))

(assert (= (and b!1611605 res!718515) b!1611585))

(assert (= b!1611608 b!1611584))

(assert (= b!1611590 b!1611608))

(assert (= (and start!152166 ((_ is Cons!17576) rules!1846)) b!1611590))

(assert (= b!1611583 b!1611592))

(assert (= b!1611591 b!1611583))

(assert (= b!1611604 b!1611591))

(assert (= (and start!152166 ((_ is Cons!17575) tokens!457)) b!1611604))

(declare-fun m!1928637 () Bool)

(assert (=> b!1611594 m!1928637))

(declare-fun m!1928639 () Bool)

(assert (=> b!1611601 m!1928639))

(declare-fun m!1928641 () Bool)

(assert (=> b!1611601 m!1928641))

(declare-fun m!1928643 () Bool)

(assert (=> b!1611601 m!1928643))

(declare-fun m!1928645 () Bool)

(assert (=> b!1611601 m!1928645))

(declare-fun m!1928647 () Bool)

(assert (=> b!1611601 m!1928647))

(declare-fun m!1928649 () Bool)

(assert (=> b!1611601 m!1928649))

(declare-fun m!1928651 () Bool)

(assert (=> b!1611607 m!1928651))

(declare-fun m!1928653 () Bool)

(assert (=> b!1611605 m!1928653))

(declare-fun m!1928655 () Bool)

(assert (=> b!1611608 m!1928655))

(declare-fun m!1928657 () Bool)

(assert (=> b!1611608 m!1928657))

(declare-fun m!1928659 () Bool)

(assert (=> b!1611586 m!1928659))

(assert (=> b!1611586 m!1928659))

(declare-fun m!1928661 () Bool)

(assert (=> b!1611586 m!1928661))

(declare-fun m!1928663 () Bool)

(assert (=> b!1611586 m!1928663))

(declare-fun m!1928665 () Bool)

(assert (=> b!1611596 m!1928665))

(declare-fun m!1928667 () Bool)

(assert (=> b!1611596 m!1928667))

(declare-fun m!1928669 () Bool)

(assert (=> b!1611596 m!1928669))

(declare-fun m!1928671 () Bool)

(assert (=> b!1611596 m!1928671))

(declare-fun m!1928673 () Bool)

(assert (=> b!1611591 m!1928673))

(declare-fun m!1928675 () Bool)

(assert (=> b!1611593 m!1928675))

(declare-fun m!1928677 () Bool)

(assert (=> b!1611598 m!1928677))

(assert (=> b!1611598 m!1928677))

(declare-fun m!1928679 () Bool)

(assert (=> b!1611598 m!1928679))

(declare-fun m!1928681 () Bool)

(assert (=> b!1611598 m!1928681))

(declare-fun m!1928683 () Bool)

(assert (=> b!1611602 m!1928683))

(declare-fun m!1928685 () Bool)

(assert (=> b!1611602 m!1928685))

(declare-fun m!1928687 () Bool)

(assert (=> b!1611602 m!1928687))

(declare-fun m!1928689 () Bool)

(assert (=> b!1611602 m!1928689))

(declare-fun m!1928691 () Bool)

(assert (=> b!1611602 m!1928691))

(assert (=> b!1611602 m!1928687))

(assert (=> b!1611602 m!1928689))

(declare-fun m!1928693 () Bool)

(assert (=> b!1611600 m!1928693))

(declare-fun m!1928695 () Bool)

(assert (=> b!1611600 m!1928695))

(declare-fun m!1928697 () Bool)

(assert (=> b!1611604 m!1928697))

(declare-fun m!1928699 () Bool)

(assert (=> b!1611599 m!1928699))

(declare-fun m!1928701 () Bool)

(assert (=> b!1611603 m!1928701))

(declare-fun m!1928703 () Bool)

(assert (=> b!1611603 m!1928703))

(declare-fun m!1928705 () Bool)

(assert (=> b!1611603 m!1928705))

(declare-fun m!1928707 () Bool)

(assert (=> b!1611603 m!1928707))

(assert (=> b!1611603 m!1928703))

(assert (=> b!1611603 m!1928707))

(declare-fun m!1928709 () Bool)

(assert (=> b!1611603 m!1928709))

(assert (=> b!1611603 m!1928709))

(declare-fun m!1928711 () Bool)

(assert (=> b!1611603 m!1928711))

(declare-fun m!1928713 () Bool)

(assert (=> b!1611585 m!1928713))

(declare-fun m!1928715 () Bool)

(assert (=> b!1611597 m!1928715))

(declare-fun m!1928717 () Bool)

(assert (=> b!1611597 m!1928717))

(declare-fun m!1928719 () Bool)

(assert (=> b!1611597 m!1928719))

(declare-fun m!1928721 () Bool)

(assert (=> b!1611597 m!1928721))

(declare-fun m!1928723 () Bool)

(assert (=> b!1611597 m!1928723))

(declare-fun m!1928725 () Bool)

(assert (=> b!1611597 m!1928725))

(declare-fun m!1928727 () Bool)

(assert (=> b!1611597 m!1928727))

(declare-fun m!1928729 () Bool)

(assert (=> b!1611597 m!1928729))

(declare-fun m!1928731 () Bool)

(assert (=> b!1611597 m!1928731))

(assert (=> b!1611597 m!1928719))

(declare-fun m!1928733 () Bool)

(assert (=> b!1611597 m!1928733))

(declare-fun m!1928735 () Bool)

(assert (=> b!1611587 m!1928735))

(declare-fun m!1928737 () Bool)

(assert (=> b!1611588 m!1928737))

(declare-fun m!1928739 () Bool)

(assert (=> b!1611606 m!1928739))

(declare-fun m!1928741 () Bool)

(assert (=> b!1611595 m!1928741))

(declare-fun m!1928743 () Bool)

(assert (=> b!1611595 m!1928743))

(declare-fun m!1928745 () Bool)

(assert (=> b!1611583 m!1928745))

(declare-fun m!1928747 () Bool)

(assert (=> b!1611583 m!1928747))

(check-sat (not b!1611597) b_and!114245 (not b!1611586) (not b!1611596) (not b!1611594) (not b!1611590) (not b!1611583) (not b!1611585) b_and!114249 (not b!1611601) (not b!1611608) (not b!1611606) b_and!114251 (not b!1611604) (not b!1611607) (not b!1611593) (not b!1611598) (not b!1611591) (not b_next!43993) (not b!1611603) (not b!1611600) (not b!1611599) (not b_next!43991) (not b!1611588) (not b_next!43995) (not b!1611595) b_and!114247 (not b!1611605) (not b_next!43997) (not b!1611587) (not b!1611602))
(check-sat b_and!114251 b_and!114245 (not b_next!43993) b_and!114249 (not b_next!43991) (not b_next!43997) (not b_next!43995) b_and!114247)
