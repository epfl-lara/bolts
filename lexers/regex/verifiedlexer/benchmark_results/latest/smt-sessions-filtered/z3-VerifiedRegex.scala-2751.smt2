; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!148250 () Bool)

(assert start!148250)

(declare-fun b!1582106 () Bool)

(declare-fun b_free!42743 () Bool)

(declare-fun b_next!43447 () Bool)

(assert (=> b!1582106 (= b_free!42743 (not b_next!43447))))

(declare-fun tp!465569 () Bool)

(declare-fun b_and!110885 () Bool)

(assert (=> b!1582106 (= tp!465569 b_and!110885)))

(declare-fun b_free!42745 () Bool)

(declare-fun b_next!43449 () Bool)

(assert (=> b!1582106 (= b_free!42745 (not b_next!43449))))

(declare-fun tp!465565 () Bool)

(declare-fun b_and!110887 () Bool)

(assert (=> b!1582106 (= tp!465565 b_and!110887)))

(declare-fun b!1582112 () Bool)

(declare-fun b_free!42747 () Bool)

(declare-fun b_next!43451 () Bool)

(assert (=> b!1582112 (= b_free!42747 (not b_next!43451))))

(declare-fun tp!465566 () Bool)

(declare-fun b_and!110889 () Bool)

(assert (=> b!1582112 (= tp!465566 b_and!110889)))

(declare-fun b_free!42749 () Bool)

(declare-fun b_next!43453 () Bool)

(assert (=> b!1582112 (= b_free!42749 (not b_next!43453))))

(declare-fun tp!465572 () Bool)

(declare-fun b_and!110891 () Bool)

(assert (=> b!1582112 (= tp!465572 b_and!110891)))

(declare-fun b!1582102 () Bool)

(declare-fun e!1016258 () Bool)

(declare-fun e!1016255 () Bool)

(assert (=> b!1582102 (= e!1016258 e!1016255)))

(declare-fun res!705370 () Bool)

(assert (=> b!1582102 (=> res!705370 e!1016255)))

(declare-datatypes ((List!17451 0))(
  ( (Nil!17381) (Cons!17381 (h!22782 (_ BitVec 16)) (t!143872 List!17451)) )
))
(declare-datatypes ((TokenValue!3153 0))(
  ( (FloatLiteralValue!6306 (text!22516 List!17451)) (TokenValueExt!3152 (__x!11608 Int)) (Broken!15765 (value!96942 List!17451)) (Object!3222) (End!3153) (Def!3153) (Underscore!3153) (Match!3153) (Else!3153) (Error!3153) (Case!3153) (If!3153) (Extends!3153) (Abstract!3153) (Class!3153) (Val!3153) (DelimiterValue!6306 (del!3213 List!17451)) (KeywordValue!3159 (value!96943 List!17451)) (CommentValue!6306 (value!96944 List!17451)) (WhitespaceValue!6306 (value!96945 List!17451)) (IndentationValue!3153 (value!96946 List!17451)) (String!20096) (Int32!3153) (Broken!15766 (value!96947 List!17451)) (Boolean!3154) (Unit!27114) (OperatorValue!3156 (op!3213 List!17451)) (IdentifierValue!6306 (value!96948 List!17451)) (IdentifierValue!6307 (value!96949 List!17451)) (WhitespaceValue!6307 (value!96950 List!17451)) (True!6306) (False!6306) (Broken!15767 (value!96951 List!17451)) (Broken!15768 (value!96952 List!17451)) (True!6307) (RightBrace!3153) (RightBracket!3153) (Colon!3153) (Null!3153) (Comma!3153) (LeftBracket!3153) (False!6307) (LeftBrace!3153) (ImaginaryLiteralValue!3153 (text!22517 List!17451)) (StringLiteralValue!9459 (value!96953 List!17451)) (EOFValue!3153 (value!96954 List!17451)) (IdentValue!3153 (value!96955 List!17451)) (DelimiterValue!6307 (value!96956 List!17451)) (DedentValue!3153 (value!96957 List!17451)) (NewLineValue!3153 (value!96958 List!17451)) (IntegerValue!9459 (value!96959 (_ BitVec 32)) (text!22518 List!17451)) (IntegerValue!9460 (value!96960 Int) (text!22519 List!17451)) (Times!3153) (Or!3153) (Equal!3153) (Minus!3153) (Broken!15769 (value!96961 List!17451)) (And!3153) (Div!3153) (LessEqual!3153) (Mod!3153) (Concat!7544) (Not!3153) (Plus!3153) (SpaceValue!3153 (value!96962 List!17451)) (IntegerValue!9461 (value!96963 Int) (text!22520 List!17451)) (StringLiteralValue!9460 (text!22521 List!17451)) (FloatLiteralValue!6307 (text!22522 List!17451)) (BytesLiteralValue!3153 (value!96964 List!17451)) (CommentValue!6307 (value!96965 List!17451)) (StringLiteralValue!9461 (value!96966 List!17451)) (ErrorTokenValue!3153 (msg!3214 List!17451)) )
))
(declare-datatypes ((C!8956 0))(
  ( (C!8957 (val!5074 Int)) )
))
(declare-datatypes ((List!17452 0))(
  ( (Nil!17382) (Cons!17382 (h!22783 C!8956) (t!143873 List!17452)) )
))
(declare-datatypes ((IArray!11553 0))(
  ( (IArray!11554 (innerList!5834 List!17452)) )
))
(declare-datatypes ((Conc!5774 0))(
  ( (Node!5774 (left!14043 Conc!5774) (right!14373 Conc!5774) (csize!11778 Int) (cheight!5985 Int)) (Leaf!8526 (xs!8578 IArray!11553) (csize!11779 Int)) (Empty!5774) )
))
(declare-datatypes ((BalanceConc!11492 0))(
  ( (BalanceConc!11493 (c!256415 Conc!5774)) )
))
(declare-datatypes ((Regex!4391 0))(
  ( (ElementMatch!4391 (c!256416 C!8956)) (Concat!7545 (regOne!9294 Regex!4391) (regTwo!9294 Regex!4391)) (EmptyExpr!4391) (Star!4391 (reg!4720 Regex!4391)) (EmptyLang!4391) (Union!4391 (regOne!9295 Regex!4391) (regTwo!9295 Regex!4391)) )
))
(declare-datatypes ((String!20097 0))(
  ( (String!20098 (value!96967 String)) )
))
(declare-datatypes ((TokenValueInjection!5966 0))(
  ( (TokenValueInjection!5967 (toValue!4470 Int) (toChars!4329 Int)) )
))
(declare-datatypes ((Rule!5926 0))(
  ( (Rule!5927 (regex!3063 Regex!4391) (tag!3331 String!20097) (isSeparator!3063 Bool) (transformation!3063 TokenValueInjection!5966)) )
))
(declare-datatypes ((Token!5692 0))(
  ( (Token!5693 (value!96968 TokenValue!3153) (rule!4863 Rule!5926) (size!13982 Int) (originalCharacters!3877 List!17452)) )
))
(declare-datatypes ((List!17453 0))(
  ( (Nil!17383) (Cons!17383 (h!22784 Token!5692) (t!143874 List!17453)) )
))
(declare-fun lt!554773 () List!17453)

(declare-fun lt!554766 () List!17453)

(declare-fun lt!554771 () List!17453)

(assert (=> b!1582102 (= res!705370 (or (not (= lt!554771 lt!554773)) (not (= lt!554773 lt!554766))))))

(declare-datatypes ((IArray!11555 0))(
  ( (IArray!11556 (innerList!5835 List!17453)) )
))
(declare-datatypes ((Conc!5775 0))(
  ( (Node!5775 (left!14044 Conc!5775) (right!14374 Conc!5775) (csize!11780 Int) (cheight!5986 Int)) (Leaf!8527 (xs!8579 IArray!11555) (csize!11781 Int)) (Empty!5775) )
))
(declare-datatypes ((BalanceConc!11494 0))(
  ( (BalanceConc!11495 (c!256417 Conc!5775)) )
))
(declare-fun lt!554768 () BalanceConc!11494)

(declare-fun list!6727 (BalanceConc!11494) List!17453)

(assert (=> b!1582102 (= lt!554773 (list!6727 lt!554768))))

(assert (=> b!1582102 (= lt!554771 lt!554766)))

(declare-fun tokens!457 () List!17453)

(declare-fun prepend!541 (BalanceConc!11494 Token!5692) BalanceConc!11494)

(declare-fun seqFromList!1875 (List!17453) BalanceConc!11494)

(assert (=> b!1582102 (= lt!554766 (list!6727 (prepend!541 (seqFromList!1875 (t!143874 (t!143874 tokens!457))) (h!22784 (t!143874 tokens!457)))))))

(declare-datatypes ((Unit!27115 0))(
  ( (Unit!27116) )
))
(declare-fun lt!554774 () Unit!27115)

(declare-datatypes ((tuple2!16860 0))(
  ( (tuple2!16861 (_1!9832 BalanceConc!11494) (_2!9832 BalanceConc!11492)) )
))
(declare-fun lt!554764 () tuple2!16860)

(declare-fun seqFromListBHdTlConstructive!140 (Token!5692 List!17453 BalanceConc!11494) Unit!27115)

(assert (=> b!1582102 (= lt!554774 (seqFromListBHdTlConstructive!140 (h!22784 (t!143874 tokens!457)) (t!143874 (t!143874 tokens!457)) (_1!9832 lt!554764)))))

(declare-fun b!1582103 () Bool)

(declare-fun e!1016250 () Bool)

(declare-datatypes ((LexerInterface!2692 0))(
  ( (LexerInterfaceExt!2689 (__x!11609 Int)) (Lexer!2690) )
))
(declare-fun thiss!17113 () LexerInterface!2692)

(declare-datatypes ((List!17454 0))(
  ( (Nil!17384) (Cons!17384 (h!22785 Rule!5926) (t!143875 List!17454)) )
))
(declare-fun rules!1846 () List!17454)

(declare-fun rulesValidInductive!914 (LexerInterface!2692 List!17454) Bool)

(assert (=> b!1582103 (= e!1016250 (rulesValidInductive!914 thiss!17113 rules!1846))))

(declare-fun b!1582104 () Bool)

(declare-fun e!1016254 () Bool)

(declare-fun e!1016262 () Bool)

(declare-fun tp!465567 () Bool)

(declare-fun inv!22799 (Token!5692) Bool)

(assert (=> b!1582104 (= e!1016262 (and (inv!22799 (h!22784 tokens!457)) e!1016254 tp!465567))))

(declare-fun b!1582105 () Bool)

(declare-fun res!705375 () Bool)

(declare-fun e!1016260 () Bool)

(assert (=> b!1582105 (=> res!705375 e!1016260)))

(declare-fun rulesProduceIndividualToken!1344 (LexerInterface!2692 List!17454 Token!5692) Bool)

(assert (=> b!1582105 (= res!705375 (not (rulesProduceIndividualToken!1344 thiss!17113 rules!1846 (h!22784 tokens!457))))))

(declare-fun e!1016252 () Bool)

(assert (=> b!1582106 (= e!1016252 (and tp!465569 tp!465565))))

(declare-fun b!1582107 () Bool)

(declare-fun e!1016259 () Bool)

(assert (=> b!1582107 (= e!1016259 (not e!1016258))))

(declare-fun res!705379 () Bool)

(assert (=> b!1582107 (=> res!705379 e!1016258)))

(assert (=> b!1582107 (= res!705379 (not (= lt!554771 (t!143874 tokens!457))))))

(assert (=> b!1582107 (= lt!554771 (list!6727 (_1!9832 lt!554764)))))

(declare-fun lt!554763 () Unit!27115)

(declare-fun theoremInvertabilityWhenTokenListSeparable!137 (LexerInterface!2692 List!17454 List!17453) Unit!27115)

(assert (=> b!1582107 (= lt!554763 (theoremInvertabilityWhenTokenListSeparable!137 thiss!17113 rules!1846 (t!143874 tokens!457)))))

(declare-fun lt!554769 () List!17452)

(declare-fun lt!554781 () List!17452)

(declare-fun isPrefix!1323 (List!17452 List!17452) Bool)

(assert (=> b!1582107 (isPrefix!1323 lt!554769 lt!554781)))

(declare-fun lt!554770 () Unit!27115)

(declare-fun lt!554775 () List!17452)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!848 (List!17452 List!17452) Unit!27115)

(assert (=> b!1582107 (= lt!554770 (lemmaConcatTwoListThenFirstIsPrefix!848 lt!554769 lt!554775))))

(declare-fun b!1582108 () Bool)

(declare-fun e!1016256 () Bool)

(declare-fun e!1016261 () Bool)

(declare-fun tp!465568 () Bool)

(assert (=> b!1582108 (= e!1016256 (and e!1016261 tp!465568))))

(declare-fun e!1016247 () Bool)

(declare-fun tp!465564 () Bool)

(declare-fun b!1582109 () Bool)

(declare-fun inv!21 (TokenValue!3153) Bool)

(assert (=> b!1582109 (= e!1016254 (and (inv!21 (value!96968 (h!22784 tokens!457))) e!1016247 tp!465564))))

(declare-fun e!1016253 () Bool)

(declare-fun b!1582110 () Bool)

(declare-fun tp!465571 () Bool)

(declare-fun inv!22796 (String!20097) Bool)

(declare-fun inv!22800 (TokenValueInjection!5966) Bool)

(assert (=> b!1582110 (= e!1016247 (and tp!465571 (inv!22796 (tag!3331 (rule!4863 (h!22784 tokens!457)))) (inv!22800 (transformation!3063 (rule!4863 (h!22784 tokens!457)))) e!1016253))))

(declare-fun b!1582111 () Bool)

(declare-fun tp!465570 () Bool)

(assert (=> b!1582111 (= e!1016261 (and tp!465570 (inv!22796 (tag!3331 (h!22785 rules!1846))) (inv!22800 (transformation!3063 (h!22785 rules!1846))) e!1016252))))

(assert (=> b!1582112 (= e!1016253 (and tp!465566 tp!465572))))

(declare-fun res!705372 () Bool)

(declare-fun e!1016249 () Bool)

(assert (=> start!148250 (=> (not res!705372) (not e!1016249))))

(get-info :version)

(assert (=> start!148250 (= res!705372 ((_ is Lexer!2690) thiss!17113))))

(assert (=> start!148250 e!1016249))

(assert (=> start!148250 true))

(assert (=> start!148250 e!1016256))

(assert (=> start!148250 e!1016262))

(declare-fun b!1582113 () Bool)

(declare-fun res!705376 () Bool)

(assert (=> b!1582113 (=> res!705376 e!1016255)))

(declare-fun separableTokensPredicate!634 (LexerInterface!2692 Token!5692 Token!5692 List!17454) Bool)

(assert (=> b!1582113 (= res!705376 (not (separableTokensPredicate!634 thiss!17113 (h!22784 tokens!457) (h!22784 (t!143874 tokens!457)) rules!1846)))))

(declare-fun b!1582114 () Bool)

(declare-fun res!705381 () Bool)

(assert (=> b!1582114 (=> (not res!705381) (not e!1016249))))

(declare-fun rulesProduceEachTokenIndividuallyList!894 (LexerInterface!2692 List!17454 List!17453) Bool)

(assert (=> b!1582114 (= res!705381 (rulesProduceEachTokenIndividuallyList!894 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1582115 () Bool)

(assert (=> b!1582115 (= e!1016249 e!1016259)))

(declare-fun res!705371 () Bool)

(assert (=> b!1582115 (=> (not res!705371) (not e!1016259))))

(declare-fun lt!554765 () List!17452)

(assert (=> b!1582115 (= res!705371 (= lt!554765 lt!554781))))

(declare-fun ++!4520 (List!17452 List!17452) List!17452)

(assert (=> b!1582115 (= lt!554781 (++!4520 lt!554769 lt!554775))))

(declare-fun lt!554778 () BalanceConc!11492)

(declare-fun list!6728 (BalanceConc!11492) List!17452)

(assert (=> b!1582115 (= lt!554765 (list!6728 lt!554778))))

(declare-fun lt!554767 () BalanceConc!11492)

(assert (=> b!1582115 (= lt!554775 (list!6728 lt!554767))))

(declare-fun charsOf!1712 (Token!5692) BalanceConc!11492)

(assert (=> b!1582115 (= lt!554769 (list!6728 (charsOf!1712 (h!22784 tokens!457))))))

(declare-fun lex!1176 (LexerInterface!2692 List!17454 BalanceConc!11492) tuple2!16860)

(assert (=> b!1582115 (= lt!554764 (lex!1176 thiss!17113 rules!1846 lt!554767))))

(declare-fun print!1223 (LexerInterface!2692 BalanceConc!11494) BalanceConc!11492)

(assert (=> b!1582115 (= lt!554767 (print!1223 thiss!17113 lt!554768))))

(assert (=> b!1582115 (= lt!554768 (seqFromList!1875 (t!143874 tokens!457)))))

(assert (=> b!1582115 (= lt!554778 (print!1223 thiss!17113 (seqFromList!1875 tokens!457)))))

(declare-fun b!1582116 () Bool)

(assert (=> b!1582116 (= e!1016260 e!1016250)))

(declare-fun res!705374 () Bool)

(assert (=> b!1582116 (=> res!705374 e!1016250)))

(declare-datatypes ((tuple2!16862 0))(
  ( (tuple2!16863 (_1!9833 Token!5692) (_2!9833 List!17452)) )
))
(declare-datatypes ((Option!3120 0))(
  ( (None!3119) (Some!3119 (v!23966 tuple2!16862)) )
))
(declare-fun lt!554776 () Option!3120)

(declare-fun isDefined!2497 (Option!3120) Bool)

(assert (=> b!1582116 (= res!705374 (not (isDefined!2497 lt!554776)))))

(declare-fun lt!554782 () Unit!27115)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!266 (LexerInterface!2692 List!17454 List!17452 List!17452) Unit!27115)

(assert (=> b!1582116 (= lt!554782 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!266 thiss!17113 rules!1846 lt!554769 lt!554775))))

(declare-fun b!1582117 () Bool)

(declare-fun res!705373 () Bool)

(assert (=> b!1582117 (=> (not res!705373) (not e!1016249))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!385 (LexerInterface!2692 List!17453 List!17454) Bool)

(assert (=> b!1582117 (= res!705373 (tokensListTwoByTwoPredicateSeparableList!385 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1582118 () Bool)

(declare-fun res!705377 () Bool)

(assert (=> b!1582118 (=> (not res!705377) (not e!1016249))))

(declare-fun isEmpty!10394 (List!17454) Bool)

(assert (=> b!1582118 (= res!705377 (not (isEmpty!10394 rules!1846)))))

(declare-fun b!1582119 () Bool)

(declare-fun res!705382 () Bool)

(assert (=> b!1582119 (=> res!705382 e!1016260)))

(declare-fun isEmpty!10395 (BalanceConc!11494) Bool)

(declare-fun seqFromList!1876 (List!17452) BalanceConc!11492)

(assert (=> b!1582119 (= res!705382 (isEmpty!10395 (_1!9832 (lex!1176 thiss!17113 rules!1846 (seqFromList!1876 lt!554769)))))))

(declare-fun b!1582120 () Bool)

(declare-fun res!705383 () Bool)

(assert (=> b!1582120 (=> (not res!705383) (not e!1016249))))

(assert (=> b!1582120 (= res!705383 (and (not ((_ is Nil!17383) tokens!457)) (not ((_ is Nil!17383) (t!143874 tokens!457)))))))

(declare-fun b!1582121 () Bool)

(assert (=> b!1582121 (= e!1016255 e!1016260)))

(declare-fun res!705378 () Bool)

(assert (=> b!1582121 (=> res!705378 e!1016260)))

(declare-fun lt!554772 () List!17452)

(declare-fun lt!554777 () List!17452)

(assert (=> b!1582121 (= res!705378 (or (not (= lt!554772 lt!554777)) (not (= lt!554777 lt!554769)) (not (= lt!554772 lt!554769))))))

(declare-fun printList!807 (LexerInterface!2692 List!17453) List!17452)

(assert (=> b!1582121 (= lt!554777 (printList!807 thiss!17113 (Cons!17383 (h!22784 tokens!457) Nil!17383)))))

(declare-fun lt!554780 () BalanceConc!11492)

(assert (=> b!1582121 (= lt!554772 (list!6728 lt!554780))))

(declare-fun lt!554779 () BalanceConc!11494)

(declare-fun printTailRec!745 (LexerInterface!2692 BalanceConc!11494 Int BalanceConc!11492) BalanceConc!11492)

(assert (=> b!1582121 (= lt!554780 (printTailRec!745 thiss!17113 lt!554779 0 (BalanceConc!11493 Empty!5774)))))

(assert (=> b!1582121 (= lt!554780 (print!1223 thiss!17113 lt!554779))))

(declare-fun singletonSeq!1403 (Token!5692) BalanceConc!11494)

(assert (=> b!1582121 (= lt!554779 (singletonSeq!1403 (h!22784 tokens!457)))))

(declare-fun maxPrefix!1256 (LexerInterface!2692 List!17454 List!17452) Option!3120)

(assert (=> b!1582121 (= lt!554776 (maxPrefix!1256 thiss!17113 rules!1846 lt!554765))))

(declare-fun b!1582122 () Bool)

(declare-fun res!705380 () Bool)

(assert (=> b!1582122 (=> (not res!705380) (not e!1016249))))

(declare-fun rulesInvariant!2361 (LexerInterface!2692 List!17454) Bool)

(assert (=> b!1582122 (= res!705380 (rulesInvariant!2361 thiss!17113 rules!1846))))

(assert (= (and start!148250 res!705372) b!1582118))

(assert (= (and b!1582118 res!705377) b!1582122))

(assert (= (and b!1582122 res!705380) b!1582114))

(assert (= (and b!1582114 res!705381) b!1582117))

(assert (= (and b!1582117 res!705373) b!1582120))

(assert (= (and b!1582120 res!705383) b!1582115))

(assert (= (and b!1582115 res!705371) b!1582107))

(assert (= (and b!1582107 (not res!705379)) b!1582102))

(assert (= (and b!1582102 (not res!705370)) b!1582113))

(assert (= (and b!1582113 (not res!705376)) b!1582121))

(assert (= (and b!1582121 (not res!705378)) b!1582105))

(assert (= (and b!1582105 (not res!705375)) b!1582119))

(assert (= (and b!1582119 (not res!705382)) b!1582116))

(assert (= (and b!1582116 (not res!705374)) b!1582103))

(assert (= b!1582111 b!1582106))

(assert (= b!1582108 b!1582111))

(assert (= (and start!148250 ((_ is Cons!17384) rules!1846)) b!1582108))

(assert (= b!1582110 b!1582112))

(assert (= b!1582109 b!1582110))

(assert (= b!1582104 b!1582109))

(assert (= (and start!148250 ((_ is Cons!17383) tokens!457)) b!1582104))

(declare-fun m!1867779 () Bool)

(assert (=> b!1582107 m!1867779))

(declare-fun m!1867781 () Bool)

(assert (=> b!1582107 m!1867781))

(declare-fun m!1867783 () Bool)

(assert (=> b!1582107 m!1867783))

(declare-fun m!1867785 () Bool)

(assert (=> b!1582107 m!1867785))

(declare-fun m!1867787 () Bool)

(assert (=> b!1582109 m!1867787))

(declare-fun m!1867789 () Bool)

(assert (=> b!1582113 m!1867789))

(declare-fun m!1867791 () Bool)

(assert (=> b!1582111 m!1867791))

(declare-fun m!1867793 () Bool)

(assert (=> b!1582111 m!1867793))

(declare-fun m!1867795 () Bool)

(assert (=> b!1582114 m!1867795))

(declare-fun m!1867797 () Bool)

(assert (=> b!1582104 m!1867797))

(declare-fun m!1867799 () Bool)

(assert (=> b!1582105 m!1867799))

(declare-fun m!1867801 () Bool)

(assert (=> b!1582122 m!1867801))

(declare-fun m!1867803 () Bool)

(assert (=> b!1582102 m!1867803))

(declare-fun m!1867805 () Bool)

(assert (=> b!1582102 m!1867805))

(declare-fun m!1867807 () Bool)

(assert (=> b!1582102 m!1867807))

(declare-fun m!1867809 () Bool)

(assert (=> b!1582102 m!1867809))

(declare-fun m!1867811 () Bool)

(assert (=> b!1582102 m!1867811))

(assert (=> b!1582102 m!1867807))

(assert (=> b!1582102 m!1867809))

(declare-fun m!1867813 () Bool)

(assert (=> b!1582110 m!1867813))

(declare-fun m!1867815 () Bool)

(assert (=> b!1582110 m!1867815))

(declare-fun m!1867817 () Bool)

(assert (=> b!1582119 m!1867817))

(assert (=> b!1582119 m!1867817))

(declare-fun m!1867819 () Bool)

(assert (=> b!1582119 m!1867819))

(declare-fun m!1867821 () Bool)

(assert (=> b!1582119 m!1867821))

(declare-fun m!1867823 () Bool)

(assert (=> b!1582117 m!1867823))

(declare-fun m!1867825 () Bool)

(assert (=> b!1582118 m!1867825))

(declare-fun m!1867827 () Bool)

(assert (=> b!1582116 m!1867827))

(declare-fun m!1867829 () Bool)

(assert (=> b!1582116 m!1867829))

(declare-fun m!1867831 () Bool)

(assert (=> b!1582121 m!1867831))

(declare-fun m!1867833 () Bool)

(assert (=> b!1582121 m!1867833))

(declare-fun m!1867835 () Bool)

(assert (=> b!1582121 m!1867835))

(declare-fun m!1867837 () Bool)

(assert (=> b!1582121 m!1867837))

(declare-fun m!1867839 () Bool)

(assert (=> b!1582121 m!1867839))

(declare-fun m!1867841 () Bool)

(assert (=> b!1582121 m!1867841))

(declare-fun m!1867843 () Bool)

(assert (=> b!1582103 m!1867843))

(declare-fun m!1867845 () Bool)

(assert (=> b!1582115 m!1867845))

(declare-fun m!1867847 () Bool)

(assert (=> b!1582115 m!1867847))

(declare-fun m!1867849 () Bool)

(assert (=> b!1582115 m!1867849))

(declare-fun m!1867851 () Bool)

(assert (=> b!1582115 m!1867851))

(declare-fun m!1867853 () Bool)

(assert (=> b!1582115 m!1867853))

(assert (=> b!1582115 m!1867845))

(declare-fun m!1867855 () Bool)

(assert (=> b!1582115 m!1867855))

(declare-fun m!1867857 () Bool)

(assert (=> b!1582115 m!1867857))

(declare-fun m!1867859 () Bool)

(assert (=> b!1582115 m!1867859))

(assert (=> b!1582115 m!1867849))

(declare-fun m!1867861 () Bool)

(assert (=> b!1582115 m!1867861))

(declare-fun m!1867863 () Bool)

(assert (=> b!1582115 m!1867863))

(check-sat (not b!1582105) (not b!1582108) (not b!1582119) (not b!1582103) (not b_next!43453) (not b!1582116) (not b_next!43451) (not b!1582122) b_and!110885 (not b_next!43447) (not b!1582113) (not b_next!43449) (not b!1582109) (not b!1582102) (not b!1582107) (not b!1582104) (not b!1582118) (not b!1582110) (not b!1582111) (not b!1582114) b_and!110889 b_and!110891 (not b!1582117) (not b!1582121) b_and!110887 (not b!1582115))
(check-sat (not b_next!43449) (not b_next!43453) (not b_next!43451) b_and!110889 b_and!110891 b_and!110885 (not b_next!43447) b_and!110887)
(get-model)

(declare-fun d!470398 () Bool)

(declare-fun prefixMatchZipperSequence!407 (Regex!4391 BalanceConc!11492) Bool)

(declare-fun rulesRegex!453 (LexerInterface!2692 List!17454) Regex!4391)

(declare-fun ++!4522 (BalanceConc!11492 BalanceConc!11492) BalanceConc!11492)

(declare-fun singletonSeq!1405 (C!8956) BalanceConc!11492)

(declare-fun apply!4223 (BalanceConc!11492 Int) C!8956)

(assert (=> d!470398 (= (separableTokensPredicate!634 thiss!17113 (h!22784 tokens!457) (h!22784 (t!143874 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!407 (rulesRegex!453 thiss!17113 rules!1846) (++!4522 (charsOf!1712 (h!22784 tokens!457)) (singletonSeq!1405 (apply!4223 (charsOf!1712 (h!22784 (t!143874 tokens!457))) 0))))))))

(declare-fun bs!391080 () Bool)

(assert (= bs!391080 d!470398))

(declare-fun m!1867879 () Bool)

(assert (=> bs!391080 m!1867879))

(assert (=> bs!391080 m!1867845))

(declare-fun m!1867881 () Bool)

(assert (=> bs!391080 m!1867881))

(declare-fun m!1867883 () Bool)

(assert (=> bs!391080 m!1867883))

(declare-fun m!1867885 () Bool)

(assert (=> bs!391080 m!1867885))

(assert (=> bs!391080 m!1867845))

(assert (=> bs!391080 m!1867885))

(assert (=> bs!391080 m!1867883))

(declare-fun m!1867887 () Bool)

(assert (=> bs!391080 m!1867887))

(assert (=> bs!391080 m!1867879))

(declare-fun m!1867889 () Bool)

(assert (=> bs!391080 m!1867889))

(assert (=> bs!391080 m!1867889))

(assert (=> bs!391080 m!1867881))

(assert (=> b!1582113 d!470398))

(declare-fun b!1582179 () Bool)

(declare-fun e!1016308 () Bool)

(assert (=> b!1582179 (= e!1016308 true)))

(declare-fun b!1582178 () Bool)

(declare-fun e!1016307 () Bool)

(assert (=> b!1582178 (= e!1016307 e!1016308)))

(declare-fun b!1582177 () Bool)

(declare-fun e!1016306 () Bool)

(assert (=> b!1582177 (= e!1016306 e!1016307)))

(declare-fun d!470400 () Bool)

(assert (=> d!470400 e!1016306))

(assert (= b!1582178 b!1582179))

(assert (= b!1582177 b!1582178))

(assert (= (and d!470400 ((_ is Cons!17384) rules!1846)) b!1582177))

(declare-fun order!10245 () Int)

(declare-fun lambda!66493 () Int)

(declare-fun order!10247 () Int)

(declare-fun dynLambda!7702 (Int Int) Int)

(declare-fun dynLambda!7703 (Int Int) Int)

(assert (=> b!1582179 (< (dynLambda!7702 order!10245 (toValue!4470 (transformation!3063 (h!22785 rules!1846)))) (dynLambda!7703 order!10247 lambda!66493))))

(declare-fun order!10249 () Int)

(declare-fun dynLambda!7704 (Int Int) Int)

(assert (=> b!1582179 (< (dynLambda!7704 order!10249 (toChars!4329 (transformation!3063 (h!22785 rules!1846)))) (dynLambda!7703 order!10247 lambda!66493))))

(assert (=> d!470400 true))

(declare-fun lt!554875 () Bool)

(declare-fun forall!3994 (List!17453 Int) Bool)

(assert (=> d!470400 (= lt!554875 (forall!3994 tokens!457 lambda!66493))))

(declare-fun e!1016295 () Bool)

(assert (=> d!470400 (= lt!554875 e!1016295)))

(declare-fun res!705425 () Bool)

(assert (=> d!470400 (=> res!705425 e!1016295)))

(assert (=> d!470400 (= res!705425 (not ((_ is Cons!17383) tokens!457)))))

(assert (=> d!470400 (not (isEmpty!10394 rules!1846))))

(assert (=> d!470400 (= (rulesProduceEachTokenIndividuallyList!894 thiss!17113 rules!1846 tokens!457) lt!554875)))

(declare-fun b!1582163 () Bool)

(declare-fun e!1016294 () Bool)

(assert (=> b!1582163 (= e!1016295 e!1016294)))

(declare-fun res!705426 () Bool)

(assert (=> b!1582163 (=> (not res!705426) (not e!1016294))))

(assert (=> b!1582163 (= res!705426 (rulesProduceIndividualToken!1344 thiss!17113 rules!1846 (h!22784 tokens!457)))))

(declare-fun b!1582164 () Bool)

(assert (=> b!1582164 (= e!1016294 (rulesProduceEachTokenIndividuallyList!894 thiss!17113 rules!1846 (t!143874 tokens!457)))))

(assert (= (and d!470400 (not res!705425)) b!1582163))

(assert (= (and b!1582163 res!705426) b!1582164))

(declare-fun m!1868009 () Bool)

(assert (=> d!470400 m!1868009))

(assert (=> d!470400 m!1867825))

(assert (=> b!1582163 m!1867799))

(declare-fun m!1868011 () Bool)

(assert (=> b!1582164 m!1868011))

(assert (=> b!1582114 d!470400))

(declare-fun d!470416 () Bool)

(assert (=> d!470416 true))

(declare-fun lt!554899 () Bool)

(declare-fun lambda!66496 () Int)

(declare-fun forall!3995 (List!17454 Int) Bool)

(assert (=> d!470416 (= lt!554899 (forall!3995 rules!1846 lambda!66496))))

(declare-fun e!1016322 () Bool)

(assert (=> d!470416 (= lt!554899 e!1016322)))

(declare-fun res!705440 () Bool)

(assert (=> d!470416 (=> res!705440 e!1016322)))

(assert (=> d!470416 (= res!705440 (not ((_ is Cons!17384) rules!1846)))))

(assert (=> d!470416 (= (rulesValidInductive!914 thiss!17113 rules!1846) lt!554899)))

(declare-fun b!1582198 () Bool)

(declare-fun e!1016321 () Bool)

(assert (=> b!1582198 (= e!1016322 e!1016321)))

(declare-fun res!705439 () Bool)

(assert (=> b!1582198 (=> (not res!705439) (not e!1016321))))

(declare-fun ruleValid!709 (LexerInterface!2692 Rule!5926) Bool)

(assert (=> b!1582198 (= res!705439 (ruleValid!709 thiss!17113 (h!22785 rules!1846)))))

(declare-fun b!1582199 () Bool)

(assert (=> b!1582199 (= e!1016321 (rulesValidInductive!914 thiss!17113 (t!143875 rules!1846)))))

(assert (= (and d!470416 (not res!705440)) b!1582198))

(assert (= (and b!1582198 res!705439) b!1582199))

(declare-fun m!1868023 () Bool)

(assert (=> d!470416 m!1868023))

(declare-fun m!1868025 () Bool)

(assert (=> b!1582198 m!1868025))

(declare-fun m!1868027 () Bool)

(assert (=> b!1582199 m!1868027))

(assert (=> b!1582103 d!470416))

(declare-fun d!470420 () Bool)

(declare-fun e!1016332 () Bool)

(assert (=> d!470420 e!1016332))

(declare-fun res!705448 () Bool)

(assert (=> d!470420 (=> (not res!705448) (not e!1016332))))

(declare-fun isBalanced!1696 (Conc!5775) Bool)

(declare-fun prepend!542 (Conc!5775 Token!5692) Conc!5775)

(assert (=> d!470420 (= res!705448 (isBalanced!1696 (prepend!542 (c!256417 (seqFromList!1875 (t!143874 (t!143874 tokens!457)))) (h!22784 (t!143874 tokens!457)))))))

(declare-fun lt!554904 () BalanceConc!11494)

(assert (=> d!470420 (= lt!554904 (BalanceConc!11495 (prepend!542 (c!256417 (seqFromList!1875 (t!143874 (t!143874 tokens!457)))) (h!22784 (t!143874 tokens!457)))))))

(assert (=> d!470420 (= (prepend!541 (seqFromList!1875 (t!143874 (t!143874 tokens!457))) (h!22784 (t!143874 tokens!457))) lt!554904)))

(declare-fun b!1582213 () Bool)

(assert (=> b!1582213 (= e!1016332 (= (list!6727 lt!554904) (Cons!17383 (h!22784 (t!143874 tokens!457)) (list!6727 (seqFromList!1875 (t!143874 (t!143874 tokens!457)))))))))

(assert (= (and d!470420 res!705448) b!1582213))

(declare-fun m!1868035 () Bool)

(assert (=> d!470420 m!1868035))

(assert (=> d!470420 m!1868035))

(declare-fun m!1868037 () Bool)

(assert (=> d!470420 m!1868037))

(declare-fun m!1868039 () Bool)

(assert (=> b!1582213 m!1868039))

(assert (=> b!1582213 m!1867807))

(declare-fun m!1868041 () Bool)

(assert (=> b!1582213 m!1868041))

(assert (=> b!1582102 d!470420))

(declare-fun d!470424 () Bool)

(declare-fun list!6731 (Conc!5775) List!17453)

(assert (=> d!470424 (= (list!6727 (prepend!541 (seqFromList!1875 (t!143874 (t!143874 tokens!457))) (h!22784 (t!143874 tokens!457)))) (list!6731 (c!256417 (prepend!541 (seqFromList!1875 (t!143874 (t!143874 tokens!457))) (h!22784 (t!143874 tokens!457))))))))

(declare-fun bs!391082 () Bool)

(assert (= bs!391082 d!470424))

(declare-fun m!1868043 () Bool)

(assert (=> bs!391082 m!1868043))

(assert (=> b!1582102 d!470424))

(declare-fun d!470426 () Bool)

(declare-fun fromListB!796 (List!17453) BalanceConc!11494)

(assert (=> d!470426 (= (seqFromList!1875 (t!143874 (t!143874 tokens!457))) (fromListB!796 (t!143874 (t!143874 tokens!457))))))

(declare-fun bs!391083 () Bool)

(assert (= bs!391083 d!470426))

(declare-fun m!1868045 () Bool)

(assert (=> bs!391083 m!1868045))

(assert (=> b!1582102 d!470426))

(declare-fun d!470428 () Bool)

(assert (=> d!470428 (= (list!6727 lt!554768) (list!6731 (c!256417 lt!554768)))))

(declare-fun bs!391084 () Bool)

(assert (= bs!391084 d!470428))

(declare-fun m!1868047 () Bool)

(assert (=> bs!391084 m!1868047))

(assert (=> b!1582102 d!470428))

(declare-fun d!470430 () Bool)

(assert (=> d!470430 (= (list!6727 (_1!9832 lt!554764)) (list!6727 (prepend!541 (seqFromList!1875 (t!143874 (t!143874 tokens!457))) (h!22784 (t!143874 tokens!457)))))))

(declare-fun lt!554907 () Unit!27115)

(declare-fun choose!9466 (Token!5692 List!17453 BalanceConc!11494) Unit!27115)

(assert (=> d!470430 (= lt!554907 (choose!9466 (h!22784 (t!143874 tokens!457)) (t!143874 (t!143874 tokens!457)) (_1!9832 lt!554764)))))

(declare-fun $colon$colon!270 (List!17453 Token!5692) List!17453)

(assert (=> d!470430 (= (list!6727 (_1!9832 lt!554764)) (list!6727 (seqFromList!1875 ($colon$colon!270 (t!143874 (t!143874 tokens!457)) (h!22784 (t!143874 tokens!457))))))))

(assert (=> d!470430 (= (seqFromListBHdTlConstructive!140 (h!22784 (t!143874 tokens!457)) (t!143874 (t!143874 tokens!457)) (_1!9832 lt!554764)) lt!554907)))

(declare-fun bs!391085 () Bool)

(assert (= bs!391085 d!470430))

(assert (=> bs!391085 m!1867779))

(assert (=> bs!391085 m!1867807))

(assert (=> bs!391085 m!1867809))

(declare-fun m!1868049 () Bool)

(assert (=> bs!391085 m!1868049))

(declare-fun m!1868051 () Bool)

(assert (=> bs!391085 m!1868051))

(assert (=> bs!391085 m!1867807))

(assert (=> bs!391085 m!1867809))

(assert (=> bs!391085 m!1867811))

(declare-fun m!1868053 () Bool)

(assert (=> bs!391085 m!1868053))

(assert (=> bs!391085 m!1868049))

(assert (=> bs!391085 m!1868053))

(declare-fun m!1868055 () Bool)

(assert (=> bs!391085 m!1868055))

(assert (=> b!1582102 d!470430))

(declare-fun d!470432 () Bool)

(declare-fun isEmpty!10401 (Option!3120) Bool)

(assert (=> d!470432 (= (isDefined!2497 lt!554776) (not (isEmpty!10401 lt!554776)))))

(declare-fun bs!391086 () Bool)

(assert (= bs!391086 d!470432))

(declare-fun m!1868057 () Bool)

(assert (=> bs!391086 m!1868057))

(assert (=> b!1582116 d!470432))

(declare-fun lt!554950 () Token!5692)

(declare-fun e!1016338 () Bool)

(declare-fun b!1582223 () Bool)

(declare-datatypes ((Option!3121 0))(
  ( (None!3120) (Some!3120 (v!23973 Rule!5926)) )
))
(declare-fun get!4967 (Option!3121) Rule!5926)

(declare-fun getRuleFromTag!235 (LexerInterface!2692 List!17454 String!20097) Option!3121)

(assert (=> b!1582223 (= e!1016338 (= (rule!4863 lt!554950) (get!4967 (getRuleFromTag!235 thiss!17113 rules!1846 (tag!3331 (rule!4863 lt!554950))))))))

(declare-fun b!1582224 () Bool)

(declare-fun e!1016337 () Unit!27115)

(declare-fun Unit!27134 () Unit!27115)

(assert (=> b!1582224 (= e!1016337 Unit!27134)))

(declare-fun lt!554952 () List!17452)

(assert (=> b!1582224 (= lt!554952 (++!4520 lt!554769 lt!554775))))

(declare-fun lt!554946 () Unit!27115)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!129 (LexerInterface!2692 Rule!5926 List!17454 List!17452) Unit!27115)

(assert (=> b!1582224 (= lt!554946 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!129 thiss!17113 (rule!4863 lt!554950) rules!1846 lt!554952))))

(declare-fun maxPrefixOneRule!727 (LexerInterface!2692 Rule!5926 List!17452) Option!3120)

(assert (=> b!1582224 (isEmpty!10401 (maxPrefixOneRule!727 thiss!17113 (rule!4863 lt!554950) lt!554952))))

(declare-fun lt!554945 () Unit!27115)

(assert (=> b!1582224 (= lt!554945 lt!554946)))

(declare-fun lt!554944 () List!17452)

(assert (=> b!1582224 (= lt!554944 (list!6728 (charsOf!1712 lt!554950)))))

(declare-fun lt!554948 () Unit!27115)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!125 (LexerInterface!2692 Rule!5926 List!17452 List!17452) Unit!27115)

(assert (=> b!1582224 (= lt!554948 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!125 thiss!17113 (rule!4863 lt!554950) lt!554944 (++!4520 lt!554769 lt!554775)))))

(declare-fun matchR!1912 (Regex!4391 List!17452) Bool)

(assert (=> b!1582224 (not (matchR!1912 (regex!3063 (rule!4863 lt!554950)) lt!554944))))

(declare-fun lt!554954 () Unit!27115)

(assert (=> b!1582224 (= lt!554954 lt!554948)))

(assert (=> b!1582224 false))

(declare-fun d!470434 () Bool)

(assert (=> d!470434 (isDefined!2497 (maxPrefix!1256 thiss!17113 rules!1846 (++!4520 lt!554769 lt!554775)))))

(declare-fun lt!554956 () Unit!27115)

(assert (=> d!470434 (= lt!554956 e!1016337)))

(declare-fun c!256430 () Bool)

(assert (=> d!470434 (= c!256430 (isEmpty!10401 (maxPrefix!1256 thiss!17113 rules!1846 (++!4520 lt!554769 lt!554775))))))

(declare-fun lt!554957 () Unit!27115)

(declare-fun lt!554953 () Unit!27115)

(assert (=> d!470434 (= lt!554957 lt!554953)))

(assert (=> d!470434 e!1016338))

(declare-fun res!705453 () Bool)

(assert (=> d!470434 (=> (not res!705453) (not e!1016338))))

(declare-fun isDefined!2498 (Option!3121) Bool)

(assert (=> d!470434 (= res!705453 (isDefined!2498 (getRuleFromTag!235 thiss!17113 rules!1846 (tag!3331 (rule!4863 lt!554950)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!235 (LexerInterface!2692 List!17454 List!17452 Token!5692) Unit!27115)

(assert (=> d!470434 (= lt!554953 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!235 thiss!17113 rules!1846 lt!554769 lt!554950))))

(declare-fun lt!554949 () Unit!27115)

(declare-fun lt!554955 () Unit!27115)

(assert (=> d!470434 (= lt!554949 lt!554955)))

(declare-fun lt!554942 () List!17452)

(assert (=> d!470434 (isPrefix!1323 lt!554942 (++!4520 lt!554769 lt!554775))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!121 (List!17452 List!17452 List!17452) Unit!27115)

(assert (=> d!470434 (= lt!554955 (lemmaPrefixStaysPrefixWhenAddingToSuffix!121 lt!554942 lt!554769 lt!554775))))

(assert (=> d!470434 (= lt!554942 (list!6728 (charsOf!1712 lt!554950)))))

(declare-fun lt!554958 () Unit!27115)

(declare-fun lt!554947 () Unit!27115)

(assert (=> d!470434 (= lt!554958 lt!554947)))

(declare-fun lt!554943 () List!17452)

(declare-fun lt!554951 () List!17452)

(assert (=> d!470434 (isPrefix!1323 lt!554943 (++!4520 lt!554943 lt!554951))))

(assert (=> d!470434 (= lt!554947 (lemmaConcatTwoListThenFirstIsPrefix!848 lt!554943 lt!554951))))

(declare-fun get!4968 (Option!3120) tuple2!16862)

(assert (=> d!470434 (= lt!554951 (_2!9833 (get!4968 (maxPrefix!1256 thiss!17113 rules!1846 lt!554769))))))

(assert (=> d!470434 (= lt!554943 (list!6728 (charsOf!1712 lt!554950)))))

(declare-fun head!3195 (List!17453) Token!5692)

(assert (=> d!470434 (= lt!554950 (head!3195 (list!6727 (_1!9832 (lex!1176 thiss!17113 rules!1846 (seqFromList!1876 lt!554769))))))))

(assert (=> d!470434 (not (isEmpty!10394 rules!1846))))

(assert (=> d!470434 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!266 thiss!17113 rules!1846 lt!554769 lt!554775) lt!554956)))

(declare-fun b!1582222 () Bool)

(declare-fun res!705454 () Bool)

(assert (=> b!1582222 (=> (not res!705454) (not e!1016338))))

(assert (=> b!1582222 (= res!705454 (matchR!1912 (regex!3063 (get!4967 (getRuleFromTag!235 thiss!17113 rules!1846 (tag!3331 (rule!4863 lt!554950))))) (list!6728 (charsOf!1712 lt!554950))))))

(declare-fun b!1582225 () Bool)

(declare-fun Unit!27135 () Unit!27115)

(assert (=> b!1582225 (= e!1016337 Unit!27135)))

(assert (= (and d!470434 res!705453) b!1582222))

(assert (= (and b!1582222 res!705454) b!1582223))

(assert (= (and d!470434 c!256430) b!1582224))

(assert (= (and d!470434 (not c!256430)) b!1582225))

(declare-fun m!1868059 () Bool)

(assert (=> b!1582223 m!1868059))

(assert (=> b!1582223 m!1868059))

(declare-fun m!1868061 () Bool)

(assert (=> b!1582223 m!1868061))

(declare-fun m!1868063 () Bool)

(assert (=> b!1582224 m!1868063))

(declare-fun m!1868065 () Bool)

(assert (=> b!1582224 m!1868065))

(assert (=> b!1582224 m!1867853))

(declare-fun m!1868067 () Bool)

(assert (=> b!1582224 m!1868067))

(declare-fun m!1868069 () Bool)

(assert (=> b!1582224 m!1868069))

(assert (=> b!1582224 m!1868063))

(declare-fun m!1868071 () Bool)

(assert (=> b!1582224 m!1868071))

(declare-fun m!1868073 () Bool)

(assert (=> b!1582224 m!1868073))

(assert (=> b!1582224 m!1868073))

(declare-fun m!1868075 () Bool)

(assert (=> b!1582224 m!1868075))

(assert (=> b!1582224 m!1867853))

(assert (=> d!470434 m!1867825))

(assert (=> d!470434 m!1868063))

(assert (=> d!470434 m!1868065))

(declare-fun m!1868077 () Bool)

(assert (=> d!470434 m!1868077))

(declare-fun m!1868079 () Bool)

(assert (=> d!470434 m!1868079))

(assert (=> d!470434 m!1868077))

(declare-fun m!1868081 () Bool)

(assert (=> d!470434 m!1868081))

(declare-fun m!1868083 () Bool)

(assert (=> d!470434 m!1868083))

(assert (=> d!470434 m!1867853))

(declare-fun m!1868085 () Bool)

(assert (=> d!470434 m!1868085))

(assert (=> d!470434 m!1867853))

(declare-fun m!1868087 () Bool)

(assert (=> d!470434 m!1868087))

(assert (=> d!470434 m!1867817))

(assert (=> d!470434 m!1867819))

(assert (=> d!470434 m!1868063))

(declare-fun m!1868089 () Bool)

(assert (=> d!470434 m!1868089))

(assert (=> d!470434 m!1867853))

(assert (=> d!470434 m!1868077))

(declare-fun m!1868091 () Bool)

(assert (=> d!470434 m!1868091))

(declare-fun m!1868093 () Bool)

(assert (=> d!470434 m!1868093))

(assert (=> d!470434 m!1868059))

(assert (=> d!470434 m!1868085))

(declare-fun m!1868095 () Bool)

(assert (=> d!470434 m!1868095))

(assert (=> d!470434 m!1868091))

(assert (=> d!470434 m!1868083))

(declare-fun m!1868097 () Bool)

(assert (=> d!470434 m!1868097))

(assert (=> d!470434 m!1867817))

(declare-fun m!1868099 () Bool)

(assert (=> d!470434 m!1868099))

(assert (=> d!470434 m!1868059))

(declare-fun m!1868101 () Bool)

(assert (=> d!470434 m!1868101))

(declare-fun m!1868103 () Bool)

(assert (=> d!470434 m!1868103))

(assert (=> b!1582222 m!1868063))

(assert (=> b!1582222 m!1868065))

(assert (=> b!1582222 m!1868059))

(assert (=> b!1582222 m!1868065))

(declare-fun m!1868105 () Bool)

(assert (=> b!1582222 m!1868105))

(assert (=> b!1582222 m!1868059))

(assert (=> b!1582222 m!1868061))

(assert (=> b!1582222 m!1868063))

(assert (=> b!1582116 d!470434))

(declare-fun d!470436 () Bool)

(declare-fun lt!554963 () Bool)

(declare-fun e!1016343 () Bool)

(assert (=> d!470436 (= lt!554963 e!1016343)))

(declare-fun res!705463 () Bool)

(assert (=> d!470436 (=> (not res!705463) (not e!1016343))))

(assert (=> d!470436 (= res!705463 (= (list!6727 (_1!9832 (lex!1176 thiss!17113 rules!1846 (print!1223 thiss!17113 (singletonSeq!1403 (h!22784 tokens!457)))))) (list!6727 (singletonSeq!1403 (h!22784 tokens!457)))))))

(declare-fun e!1016344 () Bool)

(assert (=> d!470436 (= lt!554963 e!1016344)))

(declare-fun res!705461 () Bool)

(assert (=> d!470436 (=> (not res!705461) (not e!1016344))))

(declare-fun lt!554964 () tuple2!16860)

(declare-fun size!13986 (BalanceConc!11494) Int)

(assert (=> d!470436 (= res!705461 (= (size!13986 (_1!9832 lt!554964)) 1))))

(assert (=> d!470436 (= lt!554964 (lex!1176 thiss!17113 rules!1846 (print!1223 thiss!17113 (singletonSeq!1403 (h!22784 tokens!457)))))))

(assert (=> d!470436 (not (isEmpty!10394 rules!1846))))

(assert (=> d!470436 (= (rulesProduceIndividualToken!1344 thiss!17113 rules!1846 (h!22784 tokens!457)) lt!554963)))

(declare-fun b!1582232 () Bool)

(declare-fun res!705462 () Bool)

(assert (=> b!1582232 (=> (not res!705462) (not e!1016344))))

(declare-fun apply!4224 (BalanceConc!11494 Int) Token!5692)

(assert (=> b!1582232 (= res!705462 (= (apply!4224 (_1!9832 lt!554964) 0) (h!22784 tokens!457)))))

(declare-fun b!1582233 () Bool)

(declare-fun isEmpty!10402 (BalanceConc!11492) Bool)

(assert (=> b!1582233 (= e!1016344 (isEmpty!10402 (_2!9832 lt!554964)))))

(declare-fun b!1582234 () Bool)

(assert (=> b!1582234 (= e!1016343 (isEmpty!10402 (_2!9832 (lex!1176 thiss!17113 rules!1846 (print!1223 thiss!17113 (singletonSeq!1403 (h!22784 tokens!457)))))))))

(assert (= (and d!470436 res!705461) b!1582232))

(assert (= (and b!1582232 res!705462) b!1582233))

(assert (= (and d!470436 res!705463) b!1582234))

(declare-fun m!1868107 () Bool)

(assert (=> d!470436 m!1868107))

(assert (=> d!470436 m!1867839))

(declare-fun m!1868109 () Bool)

(assert (=> d!470436 m!1868109))

(declare-fun m!1868111 () Bool)

(assert (=> d!470436 m!1868111))

(declare-fun m!1868113 () Bool)

(assert (=> d!470436 m!1868113))

(declare-fun m!1868115 () Bool)

(assert (=> d!470436 m!1868115))

(assert (=> d!470436 m!1867825))

(assert (=> d!470436 m!1867839))

(assert (=> d!470436 m!1868111))

(assert (=> d!470436 m!1867839))

(declare-fun m!1868117 () Bool)

(assert (=> b!1582232 m!1868117))

(declare-fun m!1868119 () Bool)

(assert (=> b!1582233 m!1868119))

(assert (=> b!1582234 m!1867839))

(assert (=> b!1582234 m!1867839))

(assert (=> b!1582234 m!1868111))

(assert (=> b!1582234 m!1868111))

(assert (=> b!1582234 m!1868113))

(declare-fun m!1868121 () Bool)

(assert (=> b!1582234 m!1868121))

(assert (=> b!1582105 d!470436))

(declare-fun d!470438 () Bool)

(declare-fun res!705470 () Bool)

(declare-fun e!1016349 () Bool)

(assert (=> d!470438 (=> (not res!705470) (not e!1016349))))

(declare-fun isEmpty!10403 (List!17452) Bool)

(assert (=> d!470438 (= res!705470 (not (isEmpty!10403 (originalCharacters!3877 (h!22784 tokens!457)))))))

(assert (=> d!470438 (= (inv!22799 (h!22784 tokens!457)) e!1016349)))

(declare-fun b!1582243 () Bool)

(declare-fun res!705471 () Bool)

(assert (=> b!1582243 (=> (not res!705471) (not e!1016349))))

(declare-fun dynLambda!7706 (Int TokenValue!3153) BalanceConc!11492)

(assert (=> b!1582243 (= res!705471 (= (originalCharacters!3877 (h!22784 tokens!457)) (list!6728 (dynLambda!7706 (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))) (value!96968 (h!22784 tokens!457))))))))

(declare-fun b!1582244 () Bool)

(declare-fun size!13987 (List!17452) Int)

(assert (=> b!1582244 (= e!1016349 (= (size!13982 (h!22784 tokens!457)) (size!13987 (originalCharacters!3877 (h!22784 tokens!457)))))))

(assert (= (and d!470438 res!705470) b!1582243))

(assert (= (and b!1582243 res!705471) b!1582244))

(declare-fun b_lambda!49781 () Bool)

(assert (=> (not b_lambda!49781) (not b!1582243)))

(declare-fun tb!89031 () Bool)

(declare-fun t!143881 () Bool)

(assert (=> (and b!1582106 (= (toChars!4329 (transformation!3063 (h!22785 rules!1846))) (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457))))) t!143881) tb!89031))

(declare-fun b!1582249 () Bool)

(declare-fun e!1016352 () Bool)

(declare-fun tp!465575 () Bool)

(declare-fun inv!22802 (Conc!5774) Bool)

(assert (=> b!1582249 (= e!1016352 (and (inv!22802 (c!256415 (dynLambda!7706 (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))) (value!96968 (h!22784 tokens!457))))) tp!465575))))

(declare-fun result!107730 () Bool)

(declare-fun inv!22804 (BalanceConc!11492) Bool)

(assert (=> tb!89031 (= result!107730 (and (inv!22804 (dynLambda!7706 (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))) (value!96968 (h!22784 tokens!457)))) e!1016352))))

(assert (= tb!89031 b!1582249))

(declare-fun m!1868131 () Bool)

(assert (=> b!1582249 m!1868131))

(declare-fun m!1868133 () Bool)

(assert (=> tb!89031 m!1868133))

(assert (=> b!1582243 t!143881))

(declare-fun b_and!110893 () Bool)

(assert (= b_and!110887 (and (=> t!143881 result!107730) b_and!110893)))

(declare-fun t!143883 () Bool)

(declare-fun tb!89033 () Bool)

(assert (=> (and b!1582112 (= (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))) (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457))))) t!143883) tb!89033))

(declare-fun result!107734 () Bool)

(assert (= result!107734 result!107730))

(assert (=> b!1582243 t!143883))

(declare-fun b_and!110895 () Bool)

(assert (= b_and!110891 (and (=> t!143883 result!107734) b_and!110895)))

(declare-fun m!1868135 () Bool)

(assert (=> d!470438 m!1868135))

(declare-fun m!1868137 () Bool)

(assert (=> b!1582243 m!1868137))

(assert (=> b!1582243 m!1868137))

(declare-fun m!1868139 () Bool)

(assert (=> b!1582243 m!1868139))

(declare-fun m!1868141 () Bool)

(assert (=> b!1582244 m!1868141))

(assert (=> b!1582104 d!470438))

(declare-fun d!470444 () Bool)

(declare-fun lt!554968 () BalanceConc!11492)

(assert (=> d!470444 (= (list!6728 lt!554968) (printList!807 thiss!17113 (list!6727 (seqFromList!1875 tokens!457))))))

(assert (=> d!470444 (= lt!554968 (printTailRec!745 thiss!17113 (seqFromList!1875 tokens!457) 0 (BalanceConc!11493 Empty!5774)))))

(assert (=> d!470444 (= (print!1223 thiss!17113 (seqFromList!1875 tokens!457)) lt!554968)))

(declare-fun bs!391088 () Bool)

(assert (= bs!391088 d!470444))

(declare-fun m!1868143 () Bool)

(assert (=> bs!391088 m!1868143))

(assert (=> bs!391088 m!1867849))

(declare-fun m!1868145 () Bool)

(assert (=> bs!391088 m!1868145))

(assert (=> bs!391088 m!1868145))

(declare-fun m!1868147 () Bool)

(assert (=> bs!391088 m!1868147))

(assert (=> bs!391088 m!1867849))

(declare-fun m!1868149 () Bool)

(assert (=> bs!391088 m!1868149))

(assert (=> b!1582115 d!470444))

(declare-fun d!470446 () Bool)

(declare-fun lt!554969 () BalanceConc!11492)

(assert (=> d!470446 (= (list!6728 lt!554969) (printList!807 thiss!17113 (list!6727 lt!554768)))))

(assert (=> d!470446 (= lt!554969 (printTailRec!745 thiss!17113 lt!554768 0 (BalanceConc!11493 Empty!5774)))))

(assert (=> d!470446 (= (print!1223 thiss!17113 lt!554768) lt!554969)))

(declare-fun bs!391089 () Bool)

(assert (= bs!391089 d!470446))

(declare-fun m!1868151 () Bool)

(assert (=> bs!391089 m!1868151))

(assert (=> bs!391089 m!1867803))

(assert (=> bs!391089 m!1867803))

(declare-fun m!1868153 () Bool)

(assert (=> bs!391089 m!1868153))

(declare-fun m!1868155 () Bool)

(assert (=> bs!391089 m!1868155))

(assert (=> b!1582115 d!470446))

(declare-fun d!470448 () Bool)

(declare-fun e!1016382 () Bool)

(assert (=> d!470448 e!1016382))

(declare-fun res!705507 () Bool)

(assert (=> d!470448 (=> (not res!705507) (not e!1016382))))

(declare-fun e!1016381 () Bool)

(assert (=> d!470448 (= res!705507 e!1016381)))

(declare-fun c!256442 () Bool)

(declare-fun lt!555017 () tuple2!16860)

(assert (=> d!470448 (= c!256442 (> (size!13986 (_1!9832 lt!555017)) 0))))

(declare-fun lexTailRecV2!504 (LexerInterface!2692 List!17454 BalanceConc!11492 BalanceConc!11492 BalanceConc!11492 BalanceConc!11494) tuple2!16860)

(assert (=> d!470448 (= lt!555017 (lexTailRecV2!504 thiss!17113 rules!1846 lt!554767 (BalanceConc!11493 Empty!5774) lt!554767 (BalanceConc!11495 Empty!5775)))))

(assert (=> d!470448 (= (lex!1176 thiss!17113 rules!1846 lt!554767) lt!555017)))

(declare-fun b!1582305 () Bool)

(declare-fun e!1016380 () Bool)

(assert (=> b!1582305 (= e!1016380 (not (isEmpty!10395 (_1!9832 lt!555017))))))

(declare-fun b!1582306 () Bool)

(assert (=> b!1582306 (= e!1016381 (= (_2!9832 lt!555017) lt!554767))))

(declare-fun b!1582307 () Bool)

(declare-fun res!705506 () Bool)

(assert (=> b!1582307 (=> (not res!705506) (not e!1016382))))

(declare-datatypes ((tuple2!16866 0))(
  ( (tuple2!16867 (_1!9835 List!17453) (_2!9835 List!17452)) )
))
(declare-fun lexList!781 (LexerInterface!2692 List!17454 List!17452) tuple2!16866)

(assert (=> b!1582307 (= res!705506 (= (list!6727 (_1!9832 lt!555017)) (_1!9835 (lexList!781 thiss!17113 rules!1846 (list!6728 lt!554767)))))))

(declare-fun b!1582308 () Bool)

(assert (=> b!1582308 (= e!1016381 e!1016380)))

(declare-fun res!705505 () Bool)

(declare-fun size!13988 (BalanceConc!11492) Int)

(assert (=> b!1582308 (= res!705505 (< (size!13988 (_2!9832 lt!555017)) (size!13988 lt!554767)))))

(assert (=> b!1582308 (=> (not res!705505) (not e!1016380))))

(declare-fun b!1582309 () Bool)

(assert (=> b!1582309 (= e!1016382 (= (list!6728 (_2!9832 lt!555017)) (_2!9835 (lexList!781 thiss!17113 rules!1846 (list!6728 lt!554767)))))))

(assert (= (and d!470448 c!256442) b!1582308))

(assert (= (and d!470448 (not c!256442)) b!1582306))

(assert (= (and b!1582308 res!705505) b!1582305))

(assert (= (and d!470448 res!705507) b!1582307))

(assert (= (and b!1582307 res!705506) b!1582309))

(declare-fun m!1868249 () Bool)

(assert (=> d!470448 m!1868249))

(declare-fun m!1868251 () Bool)

(assert (=> d!470448 m!1868251))

(declare-fun m!1868253 () Bool)

(assert (=> b!1582309 m!1868253))

(assert (=> b!1582309 m!1867861))

(assert (=> b!1582309 m!1867861))

(declare-fun m!1868255 () Bool)

(assert (=> b!1582309 m!1868255))

(declare-fun m!1868257 () Bool)

(assert (=> b!1582305 m!1868257))

(declare-fun m!1868259 () Bool)

(assert (=> b!1582307 m!1868259))

(assert (=> b!1582307 m!1867861))

(assert (=> b!1582307 m!1867861))

(assert (=> b!1582307 m!1868255))

(declare-fun m!1868261 () Bool)

(assert (=> b!1582308 m!1868261))

(declare-fun m!1868263 () Bool)

(assert (=> b!1582308 m!1868263))

(assert (=> b!1582115 d!470448))

(declare-fun d!470462 () Bool)

(assert (=> d!470462 (= (seqFromList!1875 tokens!457) (fromListB!796 tokens!457))))

(declare-fun bs!391092 () Bool)

(assert (= bs!391092 d!470462))

(declare-fun m!1868265 () Bool)

(assert (=> bs!391092 m!1868265))

(assert (=> b!1582115 d!470462))

(declare-fun d!470464 () Bool)

(declare-fun lt!555020 () BalanceConc!11492)

(assert (=> d!470464 (= (list!6728 lt!555020) (originalCharacters!3877 (h!22784 tokens!457)))))

(assert (=> d!470464 (= lt!555020 (dynLambda!7706 (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))) (value!96968 (h!22784 tokens!457))))))

(assert (=> d!470464 (= (charsOf!1712 (h!22784 tokens!457)) lt!555020)))

(declare-fun b_lambda!49783 () Bool)

(assert (=> (not b_lambda!49783) (not d!470464)))

(assert (=> d!470464 t!143881))

(declare-fun b_and!110897 () Bool)

(assert (= b_and!110893 (and (=> t!143881 result!107730) b_and!110897)))

(assert (=> d!470464 t!143883))

(declare-fun b_and!110899 () Bool)

(assert (= b_and!110895 (and (=> t!143883 result!107734) b_and!110899)))

(declare-fun m!1868267 () Bool)

(assert (=> d!470464 m!1868267))

(assert (=> d!470464 m!1868137))

(assert (=> b!1582115 d!470464))

(declare-fun d!470466 () Bool)

(declare-fun list!6732 (Conc!5774) List!17452)

(assert (=> d!470466 (= (list!6728 lt!554767) (list!6732 (c!256415 lt!554767)))))

(declare-fun bs!391093 () Bool)

(assert (= bs!391093 d!470466))

(declare-fun m!1868269 () Bool)

(assert (=> bs!391093 m!1868269))

(assert (=> b!1582115 d!470466))

(declare-fun d!470468 () Bool)

(assert (=> d!470468 (= (seqFromList!1875 (t!143874 tokens!457)) (fromListB!796 (t!143874 tokens!457)))))

(declare-fun bs!391094 () Bool)

(assert (= bs!391094 d!470468))

(declare-fun m!1868271 () Bool)

(assert (=> bs!391094 m!1868271))

(assert (=> b!1582115 d!470468))

(declare-fun b!1582319 () Bool)

(declare-fun e!1016387 () List!17452)

(assert (=> b!1582319 (= e!1016387 (Cons!17382 (h!22783 lt!554769) (++!4520 (t!143873 lt!554769) lt!554775)))))

(declare-fun b!1582320 () Bool)

(declare-fun res!705512 () Bool)

(declare-fun e!1016388 () Bool)

(assert (=> b!1582320 (=> (not res!705512) (not e!1016388))))

(declare-fun lt!555023 () List!17452)

(assert (=> b!1582320 (= res!705512 (= (size!13987 lt!555023) (+ (size!13987 lt!554769) (size!13987 lt!554775))))))

(declare-fun b!1582318 () Bool)

(assert (=> b!1582318 (= e!1016387 lt!554775)))

(declare-fun b!1582321 () Bool)

(assert (=> b!1582321 (= e!1016388 (or (not (= lt!554775 Nil!17382)) (= lt!555023 lt!554769)))))

(declare-fun d!470470 () Bool)

(assert (=> d!470470 e!1016388))

(declare-fun res!705513 () Bool)

(assert (=> d!470470 (=> (not res!705513) (not e!1016388))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2391 (List!17452) (InoxSet C!8956))

(assert (=> d!470470 (= res!705513 (= (content!2391 lt!555023) ((_ map or) (content!2391 lt!554769) (content!2391 lt!554775))))))

(assert (=> d!470470 (= lt!555023 e!1016387)))

(declare-fun c!256445 () Bool)

(assert (=> d!470470 (= c!256445 ((_ is Nil!17382) lt!554769))))

(assert (=> d!470470 (= (++!4520 lt!554769 lt!554775) lt!555023)))

(assert (= (and d!470470 c!256445) b!1582318))

(assert (= (and d!470470 (not c!256445)) b!1582319))

(assert (= (and d!470470 res!705513) b!1582320))

(assert (= (and b!1582320 res!705512) b!1582321))

(declare-fun m!1868273 () Bool)

(assert (=> b!1582319 m!1868273))

(declare-fun m!1868275 () Bool)

(assert (=> b!1582320 m!1868275))

(declare-fun m!1868277 () Bool)

(assert (=> b!1582320 m!1868277))

(declare-fun m!1868279 () Bool)

(assert (=> b!1582320 m!1868279))

(declare-fun m!1868281 () Bool)

(assert (=> d!470470 m!1868281))

(declare-fun m!1868283 () Bool)

(assert (=> d!470470 m!1868283))

(declare-fun m!1868285 () Bool)

(assert (=> d!470470 m!1868285))

(assert (=> b!1582115 d!470470))

(declare-fun d!470472 () Bool)

(assert (=> d!470472 (= (list!6728 lt!554778) (list!6732 (c!256415 lt!554778)))))

(declare-fun bs!391095 () Bool)

(assert (= bs!391095 d!470472))

(declare-fun m!1868287 () Bool)

(assert (=> bs!391095 m!1868287))

(assert (=> b!1582115 d!470472))

(declare-fun d!470474 () Bool)

(assert (=> d!470474 (= (list!6728 (charsOf!1712 (h!22784 tokens!457))) (list!6732 (c!256415 (charsOf!1712 (h!22784 tokens!457)))))))

(declare-fun bs!391096 () Bool)

(assert (= bs!391096 d!470474))

(declare-fun m!1868289 () Bool)

(assert (=> bs!391096 m!1868289))

(assert (=> b!1582115 d!470474))

(declare-fun d!470476 () Bool)

(declare-fun lt!555026 () Bool)

(declare-fun isEmpty!10404 (List!17453) Bool)

(assert (=> d!470476 (= lt!555026 (isEmpty!10404 (list!6727 (_1!9832 (lex!1176 thiss!17113 rules!1846 (seqFromList!1876 lt!554769))))))))

(declare-fun isEmpty!10405 (Conc!5775) Bool)

(assert (=> d!470476 (= lt!555026 (isEmpty!10405 (c!256417 (_1!9832 (lex!1176 thiss!17113 rules!1846 (seqFromList!1876 lt!554769))))))))

(assert (=> d!470476 (= (isEmpty!10395 (_1!9832 (lex!1176 thiss!17113 rules!1846 (seqFromList!1876 lt!554769)))) lt!555026)))

(declare-fun bs!391097 () Bool)

(assert (= bs!391097 d!470476))

(assert (=> bs!391097 m!1868083))

(assert (=> bs!391097 m!1868083))

(declare-fun m!1868291 () Bool)

(assert (=> bs!391097 m!1868291))

(declare-fun m!1868293 () Bool)

(assert (=> bs!391097 m!1868293))

(assert (=> b!1582119 d!470476))

(declare-fun d!470478 () Bool)

(declare-fun e!1016391 () Bool)

(assert (=> d!470478 e!1016391))

(declare-fun res!705516 () Bool)

(assert (=> d!470478 (=> (not res!705516) (not e!1016391))))

(declare-fun e!1016390 () Bool)

(assert (=> d!470478 (= res!705516 e!1016390)))

(declare-fun c!256446 () Bool)

(declare-fun lt!555027 () tuple2!16860)

(assert (=> d!470478 (= c!256446 (> (size!13986 (_1!9832 lt!555027)) 0))))

(assert (=> d!470478 (= lt!555027 (lexTailRecV2!504 thiss!17113 rules!1846 (seqFromList!1876 lt!554769) (BalanceConc!11493 Empty!5774) (seqFromList!1876 lt!554769) (BalanceConc!11495 Empty!5775)))))

(assert (=> d!470478 (= (lex!1176 thiss!17113 rules!1846 (seqFromList!1876 lt!554769)) lt!555027)))

(declare-fun b!1582322 () Bool)

(declare-fun e!1016389 () Bool)

(assert (=> b!1582322 (= e!1016389 (not (isEmpty!10395 (_1!9832 lt!555027))))))

(declare-fun b!1582323 () Bool)

(assert (=> b!1582323 (= e!1016390 (= (_2!9832 lt!555027) (seqFromList!1876 lt!554769)))))

(declare-fun b!1582324 () Bool)

(declare-fun res!705515 () Bool)

(assert (=> b!1582324 (=> (not res!705515) (not e!1016391))))

(assert (=> b!1582324 (= res!705515 (= (list!6727 (_1!9832 lt!555027)) (_1!9835 (lexList!781 thiss!17113 rules!1846 (list!6728 (seqFromList!1876 lt!554769))))))))

(declare-fun b!1582325 () Bool)

(assert (=> b!1582325 (= e!1016390 e!1016389)))

(declare-fun res!705514 () Bool)

(assert (=> b!1582325 (= res!705514 (< (size!13988 (_2!9832 lt!555027)) (size!13988 (seqFromList!1876 lt!554769))))))

(assert (=> b!1582325 (=> (not res!705514) (not e!1016389))))

(declare-fun b!1582326 () Bool)

(assert (=> b!1582326 (= e!1016391 (= (list!6728 (_2!9832 lt!555027)) (_2!9835 (lexList!781 thiss!17113 rules!1846 (list!6728 (seqFromList!1876 lt!554769))))))))

(assert (= (and d!470478 c!256446) b!1582325))

(assert (= (and d!470478 (not c!256446)) b!1582323))

(assert (= (and b!1582325 res!705514) b!1582322))

(assert (= (and d!470478 res!705516) b!1582324))

(assert (= (and b!1582324 res!705515) b!1582326))

(declare-fun m!1868295 () Bool)

(assert (=> d!470478 m!1868295))

(assert (=> d!470478 m!1867817))

(assert (=> d!470478 m!1867817))

(declare-fun m!1868297 () Bool)

(assert (=> d!470478 m!1868297))

(declare-fun m!1868299 () Bool)

(assert (=> b!1582326 m!1868299))

(assert (=> b!1582326 m!1867817))

(declare-fun m!1868301 () Bool)

(assert (=> b!1582326 m!1868301))

(assert (=> b!1582326 m!1868301))

(declare-fun m!1868303 () Bool)

(assert (=> b!1582326 m!1868303))

(declare-fun m!1868305 () Bool)

(assert (=> b!1582322 m!1868305))

(declare-fun m!1868307 () Bool)

(assert (=> b!1582324 m!1868307))

(assert (=> b!1582324 m!1867817))

(assert (=> b!1582324 m!1868301))

(assert (=> b!1582324 m!1868301))

(assert (=> b!1582324 m!1868303))

(declare-fun m!1868309 () Bool)

(assert (=> b!1582325 m!1868309))

(assert (=> b!1582325 m!1867817))

(declare-fun m!1868311 () Bool)

(assert (=> b!1582325 m!1868311))

(assert (=> b!1582119 d!470478))

(declare-fun d!470480 () Bool)

(declare-fun fromListB!799 (List!17452) BalanceConc!11492)

(assert (=> d!470480 (= (seqFromList!1876 lt!554769) (fromListB!799 lt!554769))))

(declare-fun bs!391098 () Bool)

(assert (= bs!391098 d!470480))

(declare-fun m!1868313 () Bool)

(assert (=> bs!391098 m!1868313))

(assert (=> b!1582119 d!470480))

(declare-fun d!470482 () Bool)

(declare-fun res!705544 () Bool)

(declare-fun e!1016421 () Bool)

(assert (=> d!470482 (=> res!705544 e!1016421)))

(assert (=> d!470482 (= res!705544 (or (not ((_ is Cons!17383) tokens!457)) (not ((_ is Cons!17383) (t!143874 tokens!457)))))))

(assert (=> d!470482 (= (tokensListTwoByTwoPredicateSeparableList!385 thiss!17113 tokens!457 rules!1846) e!1016421)))

(declare-fun b!1582372 () Bool)

(declare-fun e!1016422 () Bool)

(assert (=> b!1582372 (= e!1016421 e!1016422)))

(declare-fun res!705543 () Bool)

(assert (=> b!1582372 (=> (not res!705543) (not e!1016422))))

(assert (=> b!1582372 (= res!705543 (separableTokensPredicate!634 thiss!17113 (h!22784 tokens!457) (h!22784 (t!143874 tokens!457)) rules!1846))))

(declare-fun lt!555060 () Unit!27115)

(declare-fun Unit!27138 () Unit!27115)

(assert (=> b!1582372 (= lt!555060 Unit!27138)))

(assert (=> b!1582372 (> (size!13988 (charsOf!1712 (h!22784 (t!143874 tokens!457)))) 0)))

(declare-fun lt!555066 () Unit!27115)

(declare-fun Unit!27139 () Unit!27115)

(assert (=> b!1582372 (= lt!555066 Unit!27139)))

(assert (=> b!1582372 (rulesProduceIndividualToken!1344 thiss!17113 rules!1846 (h!22784 (t!143874 tokens!457)))))

(declare-fun lt!555065 () Unit!27115)

(declare-fun Unit!27140 () Unit!27115)

(assert (=> b!1582372 (= lt!555065 Unit!27140)))

(assert (=> b!1582372 (rulesProduceIndividualToken!1344 thiss!17113 rules!1846 (h!22784 tokens!457))))

(declare-fun lt!555062 () Unit!27115)

(declare-fun lt!555064 () Unit!27115)

(assert (=> b!1582372 (= lt!555062 lt!555064)))

(assert (=> b!1582372 (rulesProduceIndividualToken!1344 thiss!17113 rules!1846 (h!22784 (t!143874 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!517 (LexerInterface!2692 List!17454 List!17453 Token!5692) Unit!27115)

(assert (=> b!1582372 (= lt!555064 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!517 thiss!17113 rules!1846 tokens!457 (h!22784 (t!143874 tokens!457))))))

(declare-fun lt!555061 () Unit!27115)

(declare-fun lt!555063 () Unit!27115)

(assert (=> b!1582372 (= lt!555061 lt!555063)))

(assert (=> b!1582372 (rulesProduceIndividualToken!1344 thiss!17113 rules!1846 (h!22784 tokens!457))))

(assert (=> b!1582372 (= lt!555063 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!517 thiss!17113 rules!1846 tokens!457 (h!22784 tokens!457)))))

(declare-fun b!1582373 () Bool)

(assert (=> b!1582373 (= e!1016422 (tokensListTwoByTwoPredicateSeparableList!385 thiss!17113 (Cons!17383 (h!22784 (t!143874 tokens!457)) (t!143874 (t!143874 tokens!457))) rules!1846))))

(assert (= (and d!470482 (not res!705544)) b!1582372))

(assert (= (and b!1582372 res!705543) b!1582373))

(declare-fun m!1868423 () Bool)

(assert (=> b!1582372 m!1868423))

(assert (=> b!1582372 m!1867789))

(declare-fun m!1868425 () Bool)

(assert (=> b!1582372 m!1868425))

(assert (=> b!1582372 m!1867879))

(declare-fun m!1868427 () Bool)

(assert (=> b!1582372 m!1868427))

(assert (=> b!1582372 m!1867799))

(assert (=> b!1582372 m!1867879))

(declare-fun m!1868429 () Bool)

(assert (=> b!1582372 m!1868429))

(declare-fun m!1868431 () Bool)

(assert (=> b!1582373 m!1868431))

(assert (=> b!1582117 d!470482))

(declare-fun d!470524 () Bool)

(assert (=> d!470524 (= (isEmpty!10394 rules!1846) ((_ is Nil!17384) rules!1846))))

(assert (=> b!1582118 d!470524))

(declare-fun d!470526 () Bool)

(assert (=> d!470526 (= (list!6727 (_1!9832 lt!554764)) (list!6731 (c!256417 (_1!9832 lt!554764))))))

(declare-fun bs!391112 () Bool)

(assert (= bs!391112 d!470526))

(declare-fun m!1868433 () Bool)

(assert (=> bs!391112 m!1868433))

(assert (=> b!1582107 d!470526))

(declare-fun d!470528 () Bool)

(declare-fun e!1016488 () Bool)

(assert (=> d!470528 e!1016488))

(declare-fun res!705565 () Bool)

(assert (=> d!470528 (=> (not res!705565) (not e!1016488))))

(assert (=> d!470528 (= res!705565 (= (list!6727 (_1!9832 (lex!1176 thiss!17113 rules!1846 (print!1223 thiss!17113 (seqFromList!1875 (t!143874 tokens!457)))))) (t!143874 tokens!457)))))

(declare-fun lt!555190 () Unit!27115)

(declare-fun e!1016489 () Unit!27115)

(assert (=> d!470528 (= lt!555190 e!1016489)))

(declare-fun c!256460 () Bool)

(assert (=> d!470528 (= c!256460 (or ((_ is Nil!17383) (t!143874 tokens!457)) ((_ is Nil!17383) (t!143874 (t!143874 tokens!457)))))))

(assert (=> d!470528 (not (isEmpty!10394 rules!1846))))

(assert (=> d!470528 (= (theoremInvertabilityWhenTokenListSeparable!137 thiss!17113 rules!1846 (t!143874 tokens!457)) lt!555190)))

(declare-fun b!1582465 () Bool)

(declare-fun Unit!27141 () Unit!27115)

(assert (=> b!1582465 (= e!1016489 Unit!27141)))

(declare-fun b!1582466 () Bool)

(declare-fun Unit!27142 () Unit!27115)

(assert (=> b!1582466 (= e!1016489 Unit!27142)))

(declare-fun lt!555183 () BalanceConc!11492)

(assert (=> b!1582466 (= lt!555183 (print!1223 thiss!17113 (seqFromList!1875 (t!143874 tokens!457))))))

(declare-fun lt!555198 () BalanceConc!11492)

(assert (=> b!1582466 (= lt!555198 (print!1223 thiss!17113 (seqFromList!1875 (t!143874 (t!143874 tokens!457)))))))

(declare-fun lt!555173 () tuple2!16860)

(assert (=> b!1582466 (= lt!555173 (lex!1176 thiss!17113 rules!1846 lt!555198))))

(declare-fun lt!555192 () List!17452)

(assert (=> b!1582466 (= lt!555192 (list!6728 (charsOf!1712 (h!22784 (t!143874 tokens!457)))))))

(declare-fun lt!555177 () List!17452)

(assert (=> b!1582466 (= lt!555177 (list!6728 lt!555198))))

(declare-fun lt!555191 () Unit!27115)

(assert (=> b!1582466 (= lt!555191 (lemmaConcatTwoListThenFirstIsPrefix!848 lt!555192 lt!555177))))

(assert (=> b!1582466 (isPrefix!1323 lt!555192 (++!4520 lt!555192 lt!555177))))

(declare-fun lt!555195 () Unit!27115)

(assert (=> b!1582466 (= lt!555195 lt!555191)))

(declare-fun lt!555189 () Unit!27115)

(assert (=> b!1582466 (= lt!555189 (theoremInvertabilityWhenTokenListSeparable!137 thiss!17113 rules!1846 (t!143874 (t!143874 tokens!457))))))

(declare-fun lt!555186 () Unit!27115)

(assert (=> b!1582466 (= lt!555186 (seqFromListBHdTlConstructive!140 (h!22784 (t!143874 (t!143874 tokens!457))) (t!143874 (t!143874 (t!143874 tokens!457))) (_1!9832 lt!555173)))))

(assert (=> b!1582466 (= (list!6727 (_1!9832 lt!555173)) (list!6727 (prepend!541 (seqFromList!1875 (t!143874 (t!143874 (t!143874 tokens!457)))) (h!22784 (t!143874 (t!143874 tokens!457))))))))

(declare-fun lt!555197 () Unit!27115)

(assert (=> b!1582466 (= lt!555197 lt!555186)))

(declare-fun lt!555178 () Option!3120)

(assert (=> b!1582466 (= lt!555178 (maxPrefix!1256 thiss!17113 rules!1846 (list!6728 lt!555183)))))

(assert (=> b!1582466 (= (print!1223 thiss!17113 (singletonSeq!1403 (h!22784 (t!143874 tokens!457)))) (printTailRec!745 thiss!17113 (singletonSeq!1403 (h!22784 (t!143874 tokens!457))) 0 (BalanceConc!11493 Empty!5774)))))

(declare-fun lt!555188 () Unit!27115)

(declare-fun Unit!27143 () Unit!27115)

(assert (=> b!1582466 (= lt!555188 Unit!27143)))

(declare-fun lt!555184 () Unit!27115)

(assert (=> b!1582466 (= lt!555184 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!266 thiss!17113 rules!1846 (list!6728 (charsOf!1712 (h!22784 (t!143874 tokens!457)))) (list!6728 lt!555198)))))

(assert (=> b!1582466 (= (list!6728 (charsOf!1712 (h!22784 (t!143874 tokens!457)))) (originalCharacters!3877 (h!22784 (t!143874 tokens!457))))))

(declare-fun lt!555181 () Unit!27115)

(declare-fun Unit!27144 () Unit!27115)

(assert (=> b!1582466 (= lt!555181 Unit!27144)))

(declare-fun head!3196 (List!17452) C!8956)

(assert (=> b!1582466 (= (list!6728 (singletonSeq!1405 (apply!4223 (charsOf!1712 (h!22784 (t!143874 (t!143874 tokens!457)))) 0))) (Cons!17382 (head!3196 (originalCharacters!3877 (h!22784 (t!143874 (t!143874 tokens!457))))) Nil!17382))))

(declare-fun lt!555196 () Unit!27115)

(declare-fun Unit!27145 () Unit!27115)

(assert (=> b!1582466 (= lt!555196 Unit!27145)))

(assert (=> b!1582466 (= (list!6728 (singletonSeq!1405 (apply!4223 (charsOf!1712 (h!22784 (t!143874 (t!143874 tokens!457)))) 0))) (Cons!17382 (head!3196 (list!6728 lt!555198)) Nil!17382))))

(declare-fun lt!555185 () Unit!27115)

(declare-fun Unit!27146 () Unit!27115)

(assert (=> b!1582466 (= lt!555185 Unit!27146)))

(declare-fun head!3197 (BalanceConc!11492) C!8956)

(assert (=> b!1582466 (= (list!6728 (singletonSeq!1405 (apply!4223 (charsOf!1712 (h!22784 (t!143874 (t!143874 tokens!457)))) 0))) (Cons!17382 (head!3197 lt!555198) Nil!17382))))

(declare-fun lt!555182 () Unit!27115)

(declare-fun Unit!27147 () Unit!27115)

(assert (=> b!1582466 (= lt!555182 Unit!27147)))

(assert (=> b!1582466 (isDefined!2497 (maxPrefix!1256 thiss!17113 rules!1846 (originalCharacters!3877 (h!22784 (t!143874 tokens!457)))))))

(declare-fun lt!555179 () Unit!27115)

(declare-fun Unit!27148 () Unit!27115)

(assert (=> b!1582466 (= lt!555179 Unit!27148)))

(assert (=> b!1582466 (isDefined!2497 (maxPrefix!1256 thiss!17113 rules!1846 (list!6728 (charsOf!1712 (h!22784 (t!143874 tokens!457))))))))

(declare-fun lt!555187 () Unit!27115)

(declare-fun Unit!27149 () Unit!27115)

(assert (=> b!1582466 (= lt!555187 Unit!27149)))

(declare-fun lt!555176 () Unit!27115)

(declare-fun Unit!27150 () Unit!27115)

(assert (=> b!1582466 (= lt!555176 Unit!27150)))

(assert (=> b!1582466 (= (_1!9833 (get!4968 (maxPrefix!1256 thiss!17113 rules!1846 (list!6728 (charsOf!1712 (h!22784 (t!143874 tokens!457))))))) (h!22784 (t!143874 tokens!457)))))

(declare-fun lt!555194 () Unit!27115)

(declare-fun Unit!27151 () Unit!27115)

(assert (=> b!1582466 (= lt!555194 Unit!27151)))

(assert (=> b!1582466 (isEmpty!10403 (_2!9833 (get!4968 (maxPrefix!1256 thiss!17113 rules!1846 (list!6728 (charsOf!1712 (h!22784 (t!143874 tokens!457))))))))))

(declare-fun lt!555180 () Unit!27115)

(declare-fun Unit!27152 () Unit!27115)

(assert (=> b!1582466 (= lt!555180 Unit!27152)))

(assert (=> b!1582466 (matchR!1912 (regex!3063 (rule!4863 (h!22784 (t!143874 tokens!457)))) (list!6728 (charsOf!1712 (h!22784 (t!143874 tokens!457)))))))

(declare-fun lt!555193 () Unit!27115)

(declare-fun Unit!27153 () Unit!27115)

(assert (=> b!1582466 (= lt!555193 Unit!27153)))

(assert (=> b!1582466 (= (rule!4863 (h!22784 (t!143874 tokens!457))) (rule!4863 (h!22784 (t!143874 tokens!457))))))

(declare-fun lt!555174 () Unit!27115)

(declare-fun Unit!27154 () Unit!27115)

(assert (=> b!1582466 (= lt!555174 Unit!27154)))

(declare-fun lt!555175 () Unit!27115)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!62 (LexerInterface!2692 List!17454 Token!5692 Rule!5926 List!17452) Unit!27115)

(assert (=> b!1582466 (= lt!555175 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!62 thiss!17113 rules!1846 (h!22784 (t!143874 tokens!457)) (rule!4863 (h!22784 (t!143874 tokens!457))) (list!6728 lt!555198)))))

(declare-fun b!1582467 () Bool)

(assert (=> b!1582467 (= e!1016488 (isEmpty!10402 (_2!9832 (lex!1176 thiss!17113 rules!1846 (print!1223 thiss!17113 (seqFromList!1875 (t!143874 tokens!457)))))))))

(assert (= (and d!470528 c!256460) b!1582465))

(assert (= (and d!470528 (not c!256460)) b!1582466))

(assert (= (and d!470528 res!705565) b!1582467))

(assert (=> d!470528 m!1867825))

(assert (=> d!470528 m!1867847))

(declare-fun m!1868503 () Bool)

(assert (=> d!470528 m!1868503))

(assert (=> d!470528 m!1867847))

(declare-fun m!1868505 () Bool)

(assert (=> d!470528 m!1868505))

(assert (=> d!470528 m!1868503))

(declare-fun m!1868507 () Bool)

(assert (=> d!470528 m!1868507))

(declare-fun m!1868509 () Bool)

(assert (=> b!1582466 m!1868509))

(declare-fun m!1868511 () Bool)

(assert (=> b!1582466 m!1868511))

(declare-fun m!1868513 () Bool)

(assert (=> b!1582466 m!1868513))

(declare-fun m!1868515 () Bool)

(assert (=> b!1582466 m!1868515))

(declare-fun m!1868517 () Bool)

(assert (=> b!1582466 m!1868517))

(declare-fun m!1868519 () Bool)

(assert (=> b!1582466 m!1868519))

(declare-fun m!1868521 () Bool)

(assert (=> b!1582466 m!1868521))

(declare-fun m!1868523 () Bool)

(assert (=> b!1582466 m!1868523))

(declare-fun m!1868525 () Bool)

(assert (=> b!1582466 m!1868525))

(assert (=> b!1582466 m!1867847))

(declare-fun m!1868527 () Bool)

(assert (=> b!1582466 m!1868527))

(declare-fun m!1868529 () Bool)

(assert (=> b!1582466 m!1868529))

(declare-fun m!1868531 () Bool)

(assert (=> b!1582466 m!1868531))

(declare-fun m!1868533 () Bool)

(assert (=> b!1582466 m!1868533))

(declare-fun m!1868535 () Bool)

(assert (=> b!1582466 m!1868535))

(declare-fun m!1868537 () Bool)

(assert (=> b!1582466 m!1868537))

(declare-fun m!1868539 () Bool)

(assert (=> b!1582466 m!1868539))

(assert (=> b!1582466 m!1868513))

(assert (=> b!1582466 m!1868535))

(assert (=> b!1582466 m!1867879))

(assert (=> b!1582466 m!1868509))

(declare-fun m!1868541 () Bool)

(assert (=> b!1582466 m!1868541))

(declare-fun m!1868543 () Bool)

(assert (=> b!1582466 m!1868543))

(declare-fun m!1868545 () Bool)

(assert (=> b!1582466 m!1868545))

(declare-fun m!1868547 () Bool)

(assert (=> b!1582466 m!1868547))

(declare-fun m!1868549 () Bool)

(assert (=> b!1582466 m!1868549))

(assert (=> b!1582466 m!1867807))

(declare-fun m!1868551 () Bool)

(assert (=> b!1582466 m!1868551))

(assert (=> b!1582466 m!1867807))

(declare-fun m!1868553 () Bool)

(assert (=> b!1582466 m!1868553))

(declare-fun m!1868555 () Bool)

(assert (=> b!1582466 m!1868555))

(assert (=> b!1582466 m!1867879))

(assert (=> b!1582466 m!1868517))

(declare-fun m!1868557 () Bool)

(assert (=> b!1582466 m!1868557))

(declare-fun m!1868559 () Bool)

(assert (=> b!1582466 m!1868559))

(assert (=> b!1582466 m!1868539))

(assert (=> b!1582466 m!1868521))

(declare-fun m!1868561 () Bool)

(assert (=> b!1582466 m!1868561))

(assert (=> b!1582466 m!1868509))

(assert (=> b!1582466 m!1868521))

(declare-fun m!1868563 () Bool)

(assert (=> b!1582466 m!1868563))

(assert (=> b!1582466 m!1868557))

(declare-fun m!1868565 () Bool)

(assert (=> b!1582466 m!1868565))

(assert (=> b!1582466 m!1867847))

(assert (=> b!1582466 m!1868503))

(assert (=> b!1582466 m!1868519))

(assert (=> b!1582466 m!1868553))

(assert (=> b!1582466 m!1868509))

(assert (=> b!1582466 m!1868557))

(declare-fun m!1868567 () Bool)

(assert (=> b!1582466 m!1868567))

(assert (=> b!1582466 m!1868557))

(assert (=> b!1582466 m!1868527))

(assert (=> b!1582466 m!1868527))

(declare-fun m!1868569 () Bool)

(assert (=> b!1582466 m!1868569))

(declare-fun m!1868571 () Bool)

(assert (=> b!1582466 m!1868571))

(declare-fun m!1868573 () Bool)

(assert (=> b!1582466 m!1868573))

(assert (=> b!1582466 m!1868563))

(declare-fun m!1868575 () Bool)

(assert (=> b!1582466 m!1868575))

(assert (=> b!1582466 m!1868543))

(assert (=> b!1582467 m!1867847))

(assert (=> b!1582467 m!1867847))

(assert (=> b!1582467 m!1868503))

(assert (=> b!1582467 m!1868503))

(assert (=> b!1582467 m!1868507))

(declare-fun m!1868577 () Bool)

(assert (=> b!1582467 m!1868577))

(assert (=> b!1582107 d!470528))

(declare-fun b!1582478 () Bool)

(declare-fun e!1016498 () Bool)

(declare-fun tail!2257 (List!17452) List!17452)

(assert (=> b!1582478 (= e!1016498 (isPrefix!1323 (tail!2257 lt!554769) (tail!2257 lt!554781)))))

(declare-fun b!1582477 () Bool)

(declare-fun res!705574 () Bool)

(assert (=> b!1582477 (=> (not res!705574) (not e!1016498))))

(assert (=> b!1582477 (= res!705574 (= (head!3196 lt!554769) (head!3196 lt!554781)))))

(declare-fun d!470534 () Bool)

(declare-fun e!1016497 () Bool)

(assert (=> d!470534 e!1016497))

(declare-fun res!705575 () Bool)

(assert (=> d!470534 (=> res!705575 e!1016497)))

(declare-fun lt!555201 () Bool)

(assert (=> d!470534 (= res!705575 (not lt!555201))))

(declare-fun e!1016496 () Bool)

(assert (=> d!470534 (= lt!555201 e!1016496)))

(declare-fun res!705577 () Bool)

(assert (=> d!470534 (=> res!705577 e!1016496)))

(assert (=> d!470534 (= res!705577 ((_ is Nil!17382) lt!554769))))

(assert (=> d!470534 (= (isPrefix!1323 lt!554769 lt!554781) lt!555201)))

(declare-fun b!1582476 () Bool)

(assert (=> b!1582476 (= e!1016496 e!1016498)))

(declare-fun res!705576 () Bool)

(assert (=> b!1582476 (=> (not res!705576) (not e!1016498))))

(assert (=> b!1582476 (= res!705576 (not ((_ is Nil!17382) lt!554781)))))

(declare-fun b!1582479 () Bool)

(assert (=> b!1582479 (= e!1016497 (>= (size!13987 lt!554781) (size!13987 lt!554769)))))

(assert (= (and d!470534 (not res!705577)) b!1582476))

(assert (= (and b!1582476 res!705576) b!1582477))

(assert (= (and b!1582477 res!705574) b!1582478))

(assert (= (and d!470534 (not res!705575)) b!1582479))

(declare-fun m!1868579 () Bool)

(assert (=> b!1582478 m!1868579))

(declare-fun m!1868581 () Bool)

(assert (=> b!1582478 m!1868581))

(assert (=> b!1582478 m!1868579))

(assert (=> b!1582478 m!1868581))

(declare-fun m!1868583 () Bool)

(assert (=> b!1582478 m!1868583))

(declare-fun m!1868585 () Bool)

(assert (=> b!1582477 m!1868585))

(declare-fun m!1868587 () Bool)

(assert (=> b!1582477 m!1868587))

(declare-fun m!1868589 () Bool)

(assert (=> b!1582479 m!1868589))

(assert (=> b!1582479 m!1868277))

(assert (=> b!1582107 d!470534))

(declare-fun d!470536 () Bool)

(assert (=> d!470536 (isPrefix!1323 lt!554769 (++!4520 lt!554769 lt!554775))))

(declare-fun lt!555204 () Unit!27115)

(declare-fun choose!9468 (List!17452 List!17452) Unit!27115)

(assert (=> d!470536 (= lt!555204 (choose!9468 lt!554769 lt!554775))))

(assert (=> d!470536 (= (lemmaConcatTwoListThenFirstIsPrefix!848 lt!554769 lt!554775) lt!555204)))

(declare-fun bs!391113 () Bool)

(assert (= bs!391113 d!470536))

(assert (=> bs!391113 m!1867853))

(assert (=> bs!391113 m!1867853))

(declare-fun m!1868591 () Bool)

(assert (=> bs!391113 m!1868591))

(declare-fun m!1868593 () Bool)

(assert (=> bs!391113 m!1868593))

(assert (=> b!1582107 d!470536))

(declare-fun d!470538 () Bool)

(assert (=> d!470538 (= (list!6728 lt!554780) (list!6732 (c!256415 lt!554780)))))

(declare-fun bs!391114 () Bool)

(assert (= bs!391114 d!470538))

(declare-fun m!1868595 () Bool)

(assert (=> bs!391114 m!1868595))

(assert (=> b!1582121 d!470538))

(declare-fun call!102732 () Option!3120)

(declare-fun bm!102727 () Bool)

(assert (=> bm!102727 (= call!102732 (maxPrefixOneRule!727 thiss!17113 (h!22785 rules!1846) lt!554765))))

(declare-fun d!470540 () Bool)

(declare-fun e!1016505 () Bool)

(assert (=> d!470540 e!1016505))

(declare-fun res!705596 () Bool)

(assert (=> d!470540 (=> res!705596 e!1016505)))

(declare-fun lt!555215 () Option!3120)

(assert (=> d!470540 (= res!705596 (isEmpty!10401 lt!555215))))

(declare-fun e!1016507 () Option!3120)

(assert (=> d!470540 (= lt!555215 e!1016507)))

(declare-fun c!256463 () Bool)

(assert (=> d!470540 (= c!256463 (and ((_ is Cons!17384) rules!1846) ((_ is Nil!17384) (t!143875 rules!1846))))))

(declare-fun lt!555218 () Unit!27115)

(declare-fun lt!555217 () Unit!27115)

(assert (=> d!470540 (= lt!555218 lt!555217)))

(assert (=> d!470540 (isPrefix!1323 lt!554765 lt!554765)))

(declare-fun lemmaIsPrefixRefl!912 (List!17452 List!17452) Unit!27115)

(assert (=> d!470540 (= lt!555217 (lemmaIsPrefixRefl!912 lt!554765 lt!554765))))

(assert (=> d!470540 (rulesValidInductive!914 thiss!17113 rules!1846)))

(assert (=> d!470540 (= (maxPrefix!1256 thiss!17113 rules!1846 lt!554765) lt!555215)))

(declare-fun b!1582498 () Bool)

(declare-fun res!705594 () Bool)

(declare-fun e!1016506 () Bool)

(assert (=> b!1582498 (=> (not res!705594) (not e!1016506))))

(assert (=> b!1582498 (= res!705594 (< (size!13987 (_2!9833 (get!4968 lt!555215))) (size!13987 lt!554765)))))

(declare-fun b!1582499 () Bool)

(assert (=> b!1582499 (= e!1016507 call!102732)))

(declare-fun b!1582500 () Bool)

(declare-fun res!705598 () Bool)

(assert (=> b!1582500 (=> (not res!705598) (not e!1016506))))

(assert (=> b!1582500 (= res!705598 (= (list!6728 (charsOf!1712 (_1!9833 (get!4968 lt!555215)))) (originalCharacters!3877 (_1!9833 (get!4968 lt!555215)))))))

(declare-fun b!1582501 () Bool)

(declare-fun res!705593 () Bool)

(assert (=> b!1582501 (=> (not res!705593) (not e!1016506))))

(assert (=> b!1582501 (= res!705593 (= (++!4520 (list!6728 (charsOf!1712 (_1!9833 (get!4968 lt!555215)))) (_2!9833 (get!4968 lt!555215))) lt!554765))))

(declare-fun b!1582502 () Bool)

(declare-fun contains!3032 (List!17454 Rule!5926) Bool)

(assert (=> b!1582502 (= e!1016506 (contains!3032 rules!1846 (rule!4863 (_1!9833 (get!4968 lt!555215)))))))

(declare-fun b!1582503 () Bool)

(declare-fun res!705592 () Bool)

(assert (=> b!1582503 (=> (not res!705592) (not e!1016506))))

(assert (=> b!1582503 (= res!705592 (matchR!1912 (regex!3063 (rule!4863 (_1!9833 (get!4968 lt!555215)))) (list!6728 (charsOf!1712 (_1!9833 (get!4968 lt!555215))))))))

(declare-fun b!1582504 () Bool)

(declare-fun lt!555219 () Option!3120)

(declare-fun lt!555216 () Option!3120)

(assert (=> b!1582504 (= e!1016507 (ite (and ((_ is None!3119) lt!555219) ((_ is None!3119) lt!555216)) None!3119 (ite ((_ is None!3119) lt!555216) lt!555219 (ite ((_ is None!3119) lt!555219) lt!555216 (ite (>= (size!13982 (_1!9833 (v!23966 lt!555219))) (size!13982 (_1!9833 (v!23966 lt!555216)))) lt!555219 lt!555216)))))))

(assert (=> b!1582504 (= lt!555219 call!102732)))

(assert (=> b!1582504 (= lt!555216 (maxPrefix!1256 thiss!17113 (t!143875 rules!1846) lt!554765))))

(declare-fun b!1582505 () Bool)

(assert (=> b!1582505 (= e!1016505 e!1016506)))

(declare-fun res!705595 () Bool)

(assert (=> b!1582505 (=> (not res!705595) (not e!1016506))))

(assert (=> b!1582505 (= res!705595 (isDefined!2497 lt!555215))))

(declare-fun b!1582506 () Bool)

(declare-fun res!705597 () Bool)

(assert (=> b!1582506 (=> (not res!705597) (not e!1016506))))

(declare-fun apply!4225 (TokenValueInjection!5966 BalanceConc!11492) TokenValue!3153)

(assert (=> b!1582506 (= res!705597 (= (value!96968 (_1!9833 (get!4968 lt!555215))) (apply!4225 (transformation!3063 (rule!4863 (_1!9833 (get!4968 lt!555215)))) (seqFromList!1876 (originalCharacters!3877 (_1!9833 (get!4968 lt!555215)))))))))

(assert (= (and d!470540 c!256463) b!1582499))

(assert (= (and d!470540 (not c!256463)) b!1582504))

(assert (= (or b!1582499 b!1582504) bm!102727))

(assert (= (and d!470540 (not res!705596)) b!1582505))

(assert (= (and b!1582505 res!705595) b!1582500))

(assert (= (and b!1582500 res!705598) b!1582498))

(assert (= (and b!1582498 res!705594) b!1582501))

(assert (= (and b!1582501 res!705593) b!1582506))

(assert (= (and b!1582506 res!705597) b!1582503))

(assert (= (and b!1582503 res!705592) b!1582502))

(declare-fun m!1868597 () Bool)

(assert (=> d!470540 m!1868597))

(declare-fun m!1868599 () Bool)

(assert (=> d!470540 m!1868599))

(declare-fun m!1868601 () Bool)

(assert (=> d!470540 m!1868601))

(assert (=> d!470540 m!1867843))

(declare-fun m!1868603 () Bool)

(assert (=> bm!102727 m!1868603))

(declare-fun m!1868605 () Bool)

(assert (=> b!1582498 m!1868605))

(declare-fun m!1868607 () Bool)

(assert (=> b!1582498 m!1868607))

(declare-fun m!1868609 () Bool)

(assert (=> b!1582498 m!1868609))

(declare-fun m!1868611 () Bool)

(assert (=> b!1582505 m!1868611))

(assert (=> b!1582501 m!1868605))

(declare-fun m!1868613 () Bool)

(assert (=> b!1582501 m!1868613))

(assert (=> b!1582501 m!1868613))

(declare-fun m!1868615 () Bool)

(assert (=> b!1582501 m!1868615))

(assert (=> b!1582501 m!1868615))

(declare-fun m!1868617 () Bool)

(assert (=> b!1582501 m!1868617))

(assert (=> b!1582502 m!1868605))

(declare-fun m!1868619 () Bool)

(assert (=> b!1582502 m!1868619))

(assert (=> b!1582506 m!1868605))

(declare-fun m!1868621 () Bool)

(assert (=> b!1582506 m!1868621))

(assert (=> b!1582506 m!1868621))

(declare-fun m!1868623 () Bool)

(assert (=> b!1582506 m!1868623))

(assert (=> b!1582500 m!1868605))

(assert (=> b!1582500 m!1868613))

(assert (=> b!1582500 m!1868613))

(assert (=> b!1582500 m!1868615))

(assert (=> b!1582503 m!1868605))

(assert (=> b!1582503 m!1868613))

(assert (=> b!1582503 m!1868613))

(assert (=> b!1582503 m!1868615))

(assert (=> b!1582503 m!1868615))

(declare-fun m!1868625 () Bool)

(assert (=> b!1582503 m!1868625))

(declare-fun m!1868627 () Bool)

(assert (=> b!1582504 m!1868627))

(assert (=> b!1582121 d!470540))

(declare-fun d!470542 () Bool)

(declare-fun lt!555220 () BalanceConc!11492)

(assert (=> d!470542 (= (list!6728 lt!555220) (printList!807 thiss!17113 (list!6727 lt!554779)))))

(assert (=> d!470542 (= lt!555220 (printTailRec!745 thiss!17113 lt!554779 0 (BalanceConc!11493 Empty!5774)))))

(assert (=> d!470542 (= (print!1223 thiss!17113 lt!554779) lt!555220)))

(declare-fun bs!391115 () Bool)

(assert (= bs!391115 d!470542))

(declare-fun m!1868629 () Bool)

(assert (=> bs!391115 m!1868629))

(declare-fun m!1868631 () Bool)

(assert (=> bs!391115 m!1868631))

(assert (=> bs!391115 m!1868631))

(declare-fun m!1868633 () Bool)

(assert (=> bs!391115 m!1868633))

(assert (=> bs!391115 m!1867831))

(assert (=> b!1582121 d!470542))

(declare-fun d!470544 () Bool)

(declare-fun lt!555241 () BalanceConc!11492)

(declare-fun printListTailRec!307 (LexerInterface!2692 List!17453 List!17452) List!17452)

(declare-fun dropList!514 (BalanceConc!11494 Int) List!17453)

(assert (=> d!470544 (= (list!6728 lt!555241) (printListTailRec!307 thiss!17113 (dropList!514 lt!554779 0) (list!6728 (BalanceConc!11493 Empty!5774))))))

(declare-fun e!1016513 () BalanceConc!11492)

(assert (=> d!470544 (= lt!555241 e!1016513)))

(declare-fun c!256466 () Bool)

(assert (=> d!470544 (= c!256466 (>= 0 (size!13986 lt!554779)))))

(declare-fun e!1016512 () Bool)

(assert (=> d!470544 e!1016512))

(declare-fun res!705601 () Bool)

(assert (=> d!470544 (=> (not res!705601) (not e!1016512))))

(assert (=> d!470544 (= res!705601 (>= 0 0))))

(assert (=> d!470544 (= (printTailRec!745 thiss!17113 lt!554779 0 (BalanceConc!11493 Empty!5774)) lt!555241)))

(declare-fun b!1582513 () Bool)

(assert (=> b!1582513 (= e!1016512 (<= 0 (size!13986 lt!554779)))))

(declare-fun b!1582514 () Bool)

(assert (=> b!1582514 (= e!1016513 (BalanceConc!11493 Empty!5774))))

(declare-fun b!1582515 () Bool)

(assert (=> b!1582515 (= e!1016513 (printTailRec!745 thiss!17113 lt!554779 (+ 0 1) (++!4522 (BalanceConc!11493 Empty!5774) (charsOf!1712 (apply!4224 lt!554779 0)))))))

(declare-fun lt!555238 () List!17453)

(assert (=> b!1582515 (= lt!555238 (list!6727 lt!554779))))

(declare-fun lt!555240 () Unit!27115)

(declare-fun lemmaDropApply!514 (List!17453 Int) Unit!27115)

(assert (=> b!1582515 (= lt!555240 (lemmaDropApply!514 lt!555238 0))))

(declare-fun drop!816 (List!17453 Int) List!17453)

(declare-fun apply!4226 (List!17453 Int) Token!5692)

(assert (=> b!1582515 (= (head!3195 (drop!816 lt!555238 0)) (apply!4226 lt!555238 0))))

(declare-fun lt!555236 () Unit!27115)

(assert (=> b!1582515 (= lt!555236 lt!555240)))

(declare-fun lt!555235 () List!17453)

(assert (=> b!1582515 (= lt!555235 (list!6727 lt!554779))))

(declare-fun lt!555239 () Unit!27115)

(declare-fun lemmaDropTail!494 (List!17453 Int) Unit!27115)

(assert (=> b!1582515 (= lt!555239 (lemmaDropTail!494 lt!555235 0))))

(declare-fun tail!2258 (List!17453) List!17453)

(assert (=> b!1582515 (= (tail!2258 (drop!816 lt!555235 0)) (drop!816 lt!555235 (+ 0 1)))))

(declare-fun lt!555237 () Unit!27115)

(assert (=> b!1582515 (= lt!555237 lt!555239)))

(assert (= (and d!470544 res!705601) b!1582513))

(assert (= (and d!470544 c!256466) b!1582514))

(assert (= (and d!470544 (not c!256466)) b!1582515))

(declare-fun m!1868635 () Bool)

(assert (=> d!470544 m!1868635))

(declare-fun m!1868637 () Bool)

(assert (=> d!470544 m!1868637))

(assert (=> d!470544 m!1868635))

(declare-fun m!1868639 () Bool)

(assert (=> d!470544 m!1868639))

(declare-fun m!1868641 () Bool)

(assert (=> d!470544 m!1868641))

(declare-fun m!1868643 () Bool)

(assert (=> d!470544 m!1868643))

(assert (=> d!470544 m!1868637))

(assert (=> b!1582513 m!1868641))

(declare-fun m!1868645 () Bool)

(assert (=> b!1582515 m!1868645))

(assert (=> b!1582515 m!1868631))

(declare-fun m!1868647 () Bool)

(assert (=> b!1582515 m!1868647))

(declare-fun m!1868649 () Bool)

(assert (=> b!1582515 m!1868649))

(declare-fun m!1868651 () Bool)

(assert (=> b!1582515 m!1868651))

(declare-fun m!1868653 () Bool)

(assert (=> b!1582515 m!1868653))

(declare-fun m!1868655 () Bool)

(assert (=> b!1582515 m!1868655))

(declare-fun m!1868657 () Bool)

(assert (=> b!1582515 m!1868657))

(declare-fun m!1868659 () Bool)

(assert (=> b!1582515 m!1868659))

(declare-fun m!1868661 () Bool)

(assert (=> b!1582515 m!1868661))

(declare-fun m!1868663 () Bool)

(assert (=> b!1582515 m!1868663))

(assert (=> b!1582515 m!1868651))

(assert (=> b!1582515 m!1868659))

(assert (=> b!1582515 m!1868655))

(declare-fun m!1868665 () Bool)

(assert (=> b!1582515 m!1868665))

(declare-fun m!1868667 () Bool)

(assert (=> b!1582515 m!1868667))

(assert (=> b!1582515 m!1868657))

(assert (=> b!1582515 m!1868647))

(assert (=> b!1582121 d!470544))

(declare-fun d!470546 () Bool)

(declare-fun c!256469 () Bool)

(assert (=> d!470546 (= c!256469 ((_ is Cons!17383) (Cons!17383 (h!22784 tokens!457) Nil!17383)))))

(declare-fun e!1016516 () List!17452)

(assert (=> d!470546 (= (printList!807 thiss!17113 (Cons!17383 (h!22784 tokens!457) Nil!17383)) e!1016516)))

(declare-fun b!1582520 () Bool)

(assert (=> b!1582520 (= e!1016516 (++!4520 (list!6728 (charsOf!1712 (h!22784 (Cons!17383 (h!22784 tokens!457) Nil!17383)))) (printList!807 thiss!17113 (t!143874 (Cons!17383 (h!22784 tokens!457) Nil!17383)))))))

(declare-fun b!1582521 () Bool)

(assert (=> b!1582521 (= e!1016516 Nil!17382)))

(assert (= (and d!470546 c!256469) b!1582520))

(assert (= (and d!470546 (not c!256469)) b!1582521))

(declare-fun m!1868669 () Bool)

(assert (=> b!1582520 m!1868669))

(assert (=> b!1582520 m!1868669))

(declare-fun m!1868671 () Bool)

(assert (=> b!1582520 m!1868671))

(declare-fun m!1868673 () Bool)

(assert (=> b!1582520 m!1868673))

(assert (=> b!1582520 m!1868671))

(assert (=> b!1582520 m!1868673))

(declare-fun m!1868675 () Bool)

(assert (=> b!1582520 m!1868675))

(assert (=> b!1582121 d!470546))

(declare-fun d!470548 () Bool)

(declare-fun e!1016519 () Bool)

(assert (=> d!470548 e!1016519))

(declare-fun res!705604 () Bool)

(assert (=> d!470548 (=> (not res!705604) (not e!1016519))))

(declare-fun lt!555244 () BalanceConc!11494)

(assert (=> d!470548 (= res!705604 (= (list!6727 lt!555244) (Cons!17383 (h!22784 tokens!457) Nil!17383)))))

(declare-fun singleton!576 (Token!5692) BalanceConc!11494)

(assert (=> d!470548 (= lt!555244 (singleton!576 (h!22784 tokens!457)))))

(assert (=> d!470548 (= (singletonSeq!1403 (h!22784 tokens!457)) lt!555244)))

(declare-fun b!1582524 () Bool)

(assert (=> b!1582524 (= e!1016519 (isBalanced!1696 (c!256417 lt!555244)))))

(assert (= (and d!470548 res!705604) b!1582524))

(declare-fun m!1868677 () Bool)

(assert (=> d!470548 m!1868677))

(declare-fun m!1868679 () Bool)

(assert (=> d!470548 m!1868679))

(declare-fun m!1868681 () Bool)

(assert (=> b!1582524 m!1868681))

(assert (=> b!1582121 d!470548))

(declare-fun d!470550 () Bool)

(declare-fun res!705607 () Bool)

(declare-fun e!1016522 () Bool)

(assert (=> d!470550 (=> (not res!705607) (not e!1016522))))

(declare-fun rulesValid!1080 (LexerInterface!2692 List!17454) Bool)

(assert (=> d!470550 (= res!705607 (rulesValid!1080 thiss!17113 rules!1846))))

(assert (=> d!470550 (= (rulesInvariant!2361 thiss!17113 rules!1846) e!1016522)))

(declare-fun b!1582527 () Bool)

(declare-datatypes ((List!17456 0))(
  ( (Nil!17386) (Cons!17386 (h!22787 String!20097) (t!143901 List!17456)) )
))
(declare-fun noDuplicateTag!1080 (LexerInterface!2692 List!17454 List!17456) Bool)

(assert (=> b!1582527 (= e!1016522 (noDuplicateTag!1080 thiss!17113 rules!1846 Nil!17386))))

(assert (= (and d!470550 res!705607) b!1582527))

(declare-fun m!1868683 () Bool)

(assert (=> d!470550 m!1868683))

(declare-fun m!1868685 () Bool)

(assert (=> b!1582527 m!1868685))

(assert (=> b!1582122 d!470550))

(declare-fun d!470552 () Bool)

(assert (=> d!470552 (= (inv!22796 (tag!3331 (h!22785 rules!1846))) (= (mod (str.len (value!96967 (tag!3331 (h!22785 rules!1846)))) 2) 0))))

(assert (=> b!1582111 d!470552))

(declare-fun d!470554 () Bool)

(declare-fun res!705610 () Bool)

(declare-fun e!1016525 () Bool)

(assert (=> d!470554 (=> (not res!705610) (not e!1016525))))

(declare-fun semiInverseModEq!1152 (Int Int) Bool)

(assert (=> d!470554 (= res!705610 (semiInverseModEq!1152 (toChars!4329 (transformation!3063 (h!22785 rules!1846))) (toValue!4470 (transformation!3063 (h!22785 rules!1846)))))))

(assert (=> d!470554 (= (inv!22800 (transformation!3063 (h!22785 rules!1846))) e!1016525)))

(declare-fun b!1582530 () Bool)

(declare-fun equivClasses!1093 (Int Int) Bool)

(assert (=> b!1582530 (= e!1016525 (equivClasses!1093 (toChars!4329 (transformation!3063 (h!22785 rules!1846))) (toValue!4470 (transformation!3063 (h!22785 rules!1846)))))))

(assert (= (and d!470554 res!705610) b!1582530))

(declare-fun m!1868687 () Bool)

(assert (=> d!470554 m!1868687))

(declare-fun m!1868689 () Bool)

(assert (=> b!1582530 m!1868689))

(assert (=> b!1582111 d!470554))

(declare-fun b!1582541 () Bool)

(declare-fun res!705613 () Bool)

(declare-fun e!1016532 () Bool)

(assert (=> b!1582541 (=> res!705613 e!1016532)))

(assert (=> b!1582541 (= res!705613 (not ((_ is IntegerValue!9461) (value!96968 (h!22784 tokens!457)))))))

(declare-fun e!1016533 () Bool)

(assert (=> b!1582541 (= e!1016533 e!1016532)))

(declare-fun d!470556 () Bool)

(declare-fun c!256475 () Bool)

(assert (=> d!470556 (= c!256475 ((_ is IntegerValue!9459) (value!96968 (h!22784 tokens!457))))))

(declare-fun e!1016534 () Bool)

(assert (=> d!470556 (= (inv!21 (value!96968 (h!22784 tokens!457))) e!1016534)))

(declare-fun b!1582542 () Bool)

(declare-fun inv!17 (TokenValue!3153) Bool)

(assert (=> b!1582542 (= e!1016533 (inv!17 (value!96968 (h!22784 tokens!457))))))

(declare-fun b!1582543 () Bool)

(assert (=> b!1582543 (= e!1016534 e!1016533)))

(declare-fun c!256474 () Bool)

(assert (=> b!1582543 (= c!256474 ((_ is IntegerValue!9460) (value!96968 (h!22784 tokens!457))))))

(declare-fun b!1582544 () Bool)

(declare-fun inv!16 (TokenValue!3153) Bool)

(assert (=> b!1582544 (= e!1016534 (inv!16 (value!96968 (h!22784 tokens!457))))))

(declare-fun b!1582545 () Bool)

(declare-fun inv!15 (TokenValue!3153) Bool)

(assert (=> b!1582545 (= e!1016532 (inv!15 (value!96968 (h!22784 tokens!457))))))

(assert (= (and d!470556 c!256475) b!1582544))

(assert (= (and d!470556 (not c!256475)) b!1582543))

(assert (= (and b!1582543 c!256474) b!1582542))

(assert (= (and b!1582543 (not c!256474)) b!1582541))

(assert (= (and b!1582541 (not res!705613)) b!1582545))

(declare-fun m!1868691 () Bool)

(assert (=> b!1582542 m!1868691))

(declare-fun m!1868693 () Bool)

(assert (=> b!1582544 m!1868693))

(declare-fun m!1868695 () Bool)

(assert (=> b!1582545 m!1868695))

(assert (=> b!1582109 d!470556))

(declare-fun d!470558 () Bool)

(assert (=> d!470558 (= (inv!22796 (tag!3331 (rule!4863 (h!22784 tokens!457)))) (= (mod (str.len (value!96967 (tag!3331 (rule!4863 (h!22784 tokens!457))))) 2) 0))))

(assert (=> b!1582110 d!470558))

(declare-fun d!470560 () Bool)

(declare-fun res!705614 () Bool)

(declare-fun e!1016535 () Bool)

(assert (=> d!470560 (=> (not res!705614) (not e!1016535))))

(assert (=> d!470560 (= res!705614 (semiInverseModEq!1152 (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))) (toValue!4470 (transformation!3063 (rule!4863 (h!22784 tokens!457))))))))

(assert (=> d!470560 (= (inv!22800 (transformation!3063 (rule!4863 (h!22784 tokens!457)))) e!1016535)))

(declare-fun b!1582546 () Bool)

(assert (=> b!1582546 (= e!1016535 (equivClasses!1093 (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))) (toValue!4470 (transformation!3063 (rule!4863 (h!22784 tokens!457))))))))

(assert (= (and d!470560 res!705614) b!1582546))

(declare-fun m!1868697 () Bool)

(assert (=> d!470560 m!1868697))

(declare-fun m!1868699 () Bool)

(assert (=> b!1582546 m!1868699))

(assert (=> b!1582110 d!470560))

(declare-fun b!1582557 () Bool)

(declare-fun b_free!42759 () Bool)

(declare-fun b_next!43463 () Bool)

(assert (=> b!1582557 (= b_free!42759 (not b_next!43463))))

(declare-fun tp!465638 () Bool)

(declare-fun b_and!110917 () Bool)

(assert (=> b!1582557 (= tp!465638 b_and!110917)))

(declare-fun b_free!42761 () Bool)

(declare-fun b_next!43465 () Bool)

(assert (=> b!1582557 (= b_free!42761 (not b_next!43465))))

(declare-fun tb!89043 () Bool)

(declare-fun t!143898 () Bool)

(assert (=> (and b!1582557 (= (toChars!4329 (transformation!3063 (h!22785 (t!143875 rules!1846)))) (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457))))) t!143898) tb!89043))

(declare-fun result!107756 () Bool)

(assert (= result!107756 result!107730))

(assert (=> b!1582243 t!143898))

(assert (=> d!470464 t!143898))

(declare-fun b_and!110919 () Bool)

(declare-fun tp!465639 () Bool)

(assert (=> b!1582557 (= tp!465639 (and (=> t!143898 result!107756) b_and!110919))))

(declare-fun e!1016545 () Bool)

(assert (=> b!1582557 (= e!1016545 (and tp!465638 tp!465639))))

(declare-fun e!1016546 () Bool)

(declare-fun tp!465637 () Bool)

(declare-fun b!1582556 () Bool)

(assert (=> b!1582556 (= e!1016546 (and tp!465637 (inv!22796 (tag!3331 (h!22785 (t!143875 rules!1846)))) (inv!22800 (transformation!3063 (h!22785 (t!143875 rules!1846)))) e!1016545))))

(declare-fun b!1582555 () Bool)

(declare-fun e!1016544 () Bool)

(declare-fun tp!465640 () Bool)

(assert (=> b!1582555 (= e!1016544 (and e!1016546 tp!465640))))

(assert (=> b!1582108 (= tp!465568 e!1016544)))

(assert (= b!1582556 b!1582557))

(assert (= b!1582555 b!1582556))

(assert (= (and b!1582108 ((_ is Cons!17384) (t!143875 rules!1846))) b!1582555))

(declare-fun m!1868701 () Bool)

(assert (=> b!1582556 m!1868701))

(declare-fun m!1868703 () Bool)

(assert (=> b!1582556 m!1868703))

(declare-fun b!1582568 () Bool)

(declare-fun e!1016550 () Bool)

(declare-fun tp_is_empty!7185 () Bool)

(assert (=> b!1582568 (= e!1016550 tp_is_empty!7185)))

(assert (=> b!1582111 (= tp!465570 e!1016550)))

(declare-fun b!1582569 () Bool)

(declare-fun tp!465653 () Bool)

(declare-fun tp!465654 () Bool)

(assert (=> b!1582569 (= e!1016550 (and tp!465653 tp!465654))))

(declare-fun b!1582571 () Bool)

(declare-fun tp!465652 () Bool)

(declare-fun tp!465651 () Bool)

(assert (=> b!1582571 (= e!1016550 (and tp!465652 tp!465651))))

(declare-fun b!1582570 () Bool)

(declare-fun tp!465655 () Bool)

(assert (=> b!1582570 (= e!1016550 tp!465655)))

(assert (= (and b!1582111 ((_ is ElementMatch!4391) (regex!3063 (h!22785 rules!1846)))) b!1582568))

(assert (= (and b!1582111 ((_ is Concat!7545) (regex!3063 (h!22785 rules!1846)))) b!1582569))

(assert (= (and b!1582111 ((_ is Star!4391) (regex!3063 (h!22785 rules!1846)))) b!1582570))

(assert (= (and b!1582111 ((_ is Union!4391) (regex!3063 (h!22785 rules!1846)))) b!1582571))

(declare-fun b!1582585 () Bool)

(declare-fun b_free!42763 () Bool)

(declare-fun b_next!43467 () Bool)

(assert (=> b!1582585 (= b_free!42763 (not b_next!43467))))

(declare-fun tp!465666 () Bool)

(declare-fun b_and!110921 () Bool)

(assert (=> b!1582585 (= tp!465666 b_and!110921)))

(declare-fun b_free!42765 () Bool)

(declare-fun b_next!43469 () Bool)

(assert (=> b!1582585 (= b_free!42765 (not b_next!43469))))

(declare-fun t!143900 () Bool)

(declare-fun tb!89045 () Bool)

(assert (=> (and b!1582585 (= (toChars!4329 (transformation!3063 (rule!4863 (h!22784 (t!143874 tokens!457))))) (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457))))) t!143900) tb!89045))

(declare-fun result!107762 () Bool)

(assert (= result!107762 result!107730))

(assert (=> b!1582243 t!143900))

(assert (=> d!470464 t!143900))

(declare-fun b_and!110923 () Bool)

(declare-fun tp!465667 () Bool)

(assert (=> b!1582585 (= tp!465667 (and (=> t!143900 result!107762) b_and!110923))))

(declare-fun e!1016566 () Bool)

(assert (=> b!1582104 (= tp!465567 e!1016566)))

(declare-fun e!1016563 () Bool)

(assert (=> b!1582585 (= e!1016563 (and tp!465666 tp!465667))))

(declare-fun b!1582582 () Bool)

(declare-fun tp!465669 () Bool)

(declare-fun e!1016564 () Bool)

(assert (=> b!1582582 (= e!1016566 (and (inv!22799 (h!22784 (t!143874 tokens!457))) e!1016564 tp!465669))))

(declare-fun b!1582584 () Bool)

(declare-fun e!1016565 () Bool)

(declare-fun tp!465668 () Bool)

(assert (=> b!1582584 (= e!1016565 (and tp!465668 (inv!22796 (tag!3331 (rule!4863 (h!22784 (t!143874 tokens!457))))) (inv!22800 (transformation!3063 (rule!4863 (h!22784 (t!143874 tokens!457))))) e!1016563))))

(declare-fun tp!465670 () Bool)

(declare-fun b!1582583 () Bool)

(assert (=> b!1582583 (= e!1016564 (and (inv!21 (value!96968 (h!22784 (t!143874 tokens!457)))) e!1016565 tp!465670))))

(assert (= b!1582584 b!1582585))

(assert (= b!1582583 b!1582584))

(assert (= b!1582582 b!1582583))

(assert (= (and b!1582104 ((_ is Cons!17383) (t!143874 tokens!457))) b!1582582))

(declare-fun m!1868705 () Bool)

(assert (=> b!1582582 m!1868705))

(declare-fun m!1868707 () Bool)

(assert (=> b!1582584 m!1868707))

(declare-fun m!1868709 () Bool)

(assert (=> b!1582584 m!1868709))

(declare-fun m!1868711 () Bool)

(assert (=> b!1582583 m!1868711))

(declare-fun b!1582590 () Bool)

(declare-fun e!1016571 () Bool)

(declare-fun tp!465673 () Bool)

(assert (=> b!1582590 (= e!1016571 (and tp_is_empty!7185 tp!465673))))

(assert (=> b!1582109 (= tp!465564 e!1016571)))

(assert (= (and b!1582109 ((_ is Cons!17382) (originalCharacters!3877 (h!22784 tokens!457)))) b!1582590))

(declare-fun b!1582591 () Bool)

(declare-fun e!1016572 () Bool)

(assert (=> b!1582591 (= e!1016572 tp_is_empty!7185)))

(assert (=> b!1582110 (= tp!465571 e!1016572)))

(declare-fun b!1582592 () Bool)

(declare-fun tp!465676 () Bool)

(declare-fun tp!465677 () Bool)

(assert (=> b!1582592 (= e!1016572 (and tp!465676 tp!465677))))

(declare-fun b!1582594 () Bool)

(declare-fun tp!465675 () Bool)

(declare-fun tp!465674 () Bool)

(assert (=> b!1582594 (= e!1016572 (and tp!465675 tp!465674))))

(declare-fun b!1582593 () Bool)

(declare-fun tp!465678 () Bool)

(assert (=> b!1582593 (= e!1016572 tp!465678)))

(assert (= (and b!1582110 ((_ is ElementMatch!4391) (regex!3063 (rule!4863 (h!22784 tokens!457))))) b!1582591))

(assert (= (and b!1582110 ((_ is Concat!7545) (regex!3063 (rule!4863 (h!22784 tokens!457))))) b!1582592))

(assert (= (and b!1582110 ((_ is Star!4391) (regex!3063 (rule!4863 (h!22784 tokens!457))))) b!1582593))

(assert (= (and b!1582110 ((_ is Union!4391) (regex!3063 (rule!4863 (h!22784 tokens!457))))) b!1582594))

(declare-fun b_lambda!49793 () Bool)

(assert (= b_lambda!49781 (or (and b!1582106 b_free!42745 (= (toChars!4329 (transformation!3063 (h!22785 rules!1846))) (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))))) (and b!1582112 b_free!42749) (and b!1582557 b_free!42761 (= (toChars!4329 (transformation!3063 (h!22785 (t!143875 rules!1846)))) (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))))) (and b!1582585 b_free!42765 (= (toChars!4329 (transformation!3063 (rule!4863 (h!22784 (t!143874 tokens!457))))) (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))))) b_lambda!49793)))

(declare-fun b_lambda!49795 () Bool)

(assert (= b_lambda!49783 (or (and b!1582106 b_free!42745 (= (toChars!4329 (transformation!3063 (h!22785 rules!1846))) (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))))) (and b!1582112 b_free!42749) (and b!1582557 b_free!42761 (= (toChars!4329 (transformation!3063 (h!22785 (t!143875 rules!1846)))) (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))))) (and b!1582585 b_free!42765 (= (toChars!4329 (transformation!3063 (rule!4863 (h!22784 (t!143874 tokens!457))))) (toChars!4329 (transformation!3063 (rule!4863 (h!22784 tokens!457)))))) b_lambda!49795)))

(check-sat (not b!1582177) (not b_next!43463) (not d!470480) (not b!1582479) (not b!1582590) (not b!1582326) (not b!1582478) (not b!1582505) (not b!1582467) (not d!470446) (not b!1582308) b_and!110923 (not b_next!43449) (not b!1582570) (not d!470462) b_and!110899 (not b!1582305) (not d!470476) (not b_next!43469) (not d!470420) (not d!470550) b_and!110921 (not b!1582502) (not tb!89031) (not bm!102727) (not b!1582477) (not d!470416) (not d!470554) b_and!110919 (not b!1582163) (not b!1582545) (not d!470548) (not b!1582504) (not d!470472) (not b!1582244) (not b!1582513) (not b!1582222) (not b!1582592) (not b!1582249) (not d!470448) (not d!470536) (not d!470560) (not b!1582372) (not b!1582594) (not d!470444) (not b!1582569) (not d!470470) (not b!1582500) (not d!470468) (not d!470426) (not b!1582503) tp_is_empty!7185 (not b!1582501) (not d!470478) (not b!1582319) (not d!470430) (not b_next!43453) (not b!1582164) b_and!110897 (not d!470544) (not b!1582530) (not b_lambda!49795) (not d!470540) (not d!470424) (not b!1582373) (not b_next!43467) (not b!1582234) (not b!1582583) (not d!470432) (not b!1582498) (not b!1582556) (not d!470398) (not b!1582571) (not b_next!43465) (not b!1582584) (not b!1582524) (not b_next!43451) (not d!470400) (not d!470438) (not d!470528) (not b!1582527) (not d!470542) (not b!1582582) (not b!1582309) (not d!470434) (not b!1582223) (not d!470538) (not d!470526) (not d!470466) (not b!1582243) (not b!1582466) b_and!110889 (not d!470428) (not d!470474) (not b!1582506) (not b!1582224) (not b!1582555) (not b!1582544) (not b!1582198) b_and!110885 (not b!1582546) (not b!1582515) (not b_next!43447) (not b!1582232) (not b!1582322) (not d!470436) (not b!1582325) b_and!110917 (not b!1582593) (not b!1582213) (not b!1582520) (not b!1582542) (not b_lambda!49793) (not b!1582324) (not b!1582320) (not b!1582307) (not b!1582199) (not d!470464) (not b!1582233))
(check-sat b_and!110899 b_and!110919 (not b_next!43467) (not b_next!43463) b_and!110889 b_and!110885 (not b_next!43447) b_and!110917 (not b_next!43449) b_and!110923 (not b_next!43469) b_and!110921 (not b_next!43453) b_and!110897 (not b_next!43465) (not b_next!43451))
