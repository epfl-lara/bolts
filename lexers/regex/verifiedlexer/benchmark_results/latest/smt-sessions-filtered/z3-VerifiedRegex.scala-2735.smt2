; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!146974 () Bool)

(assert start!146974)

(declare-fun b!1574728 () Bool)

(declare-fun b_free!42343 () Bool)

(declare-fun b_next!43047 () Bool)

(assert (=> b!1574728 (= b_free!42343 (not b_next!43047))))

(declare-fun tp!463552 () Bool)

(declare-fun b_and!110181 () Bool)

(assert (=> b!1574728 (= tp!463552 b_and!110181)))

(declare-fun b_free!42345 () Bool)

(declare-fun b_next!43049 () Bool)

(assert (=> b!1574728 (= b_free!42345 (not b_next!43049))))

(declare-fun tp!463557 () Bool)

(declare-fun b_and!110183 () Bool)

(assert (=> b!1574728 (= tp!463557 b_and!110183)))

(declare-fun b!1574734 () Bool)

(declare-fun b_free!42347 () Bool)

(declare-fun b_next!43051 () Bool)

(assert (=> b!1574734 (= b_free!42347 (not b_next!43051))))

(declare-fun tp!463554 () Bool)

(declare-fun b_and!110185 () Bool)

(assert (=> b!1574734 (= tp!463554 b_and!110185)))

(declare-fun b_free!42349 () Bool)

(declare-fun b_next!43053 () Bool)

(assert (=> b!1574734 (= b_free!42349 (not b_next!43053))))

(declare-fun tp!463555 () Bool)

(declare-fun b_and!110187 () Bool)

(assert (=> b!1574734 (= tp!463555 b_and!110187)))

(declare-fun e!1011440 () Bool)

(declare-fun e!1011437 () Bool)

(declare-fun b!1574722 () Bool)

(declare-fun tp!463560 () Bool)

(declare-datatypes ((List!17307 0))(
  ( (Nil!17237) (Cons!17237 (h!22638 (_ BitVec 16)) (t!143250 List!17307)) )
))
(declare-datatypes ((TokenValue!3121 0))(
  ( (FloatLiteralValue!6242 (text!22292 List!17307)) (TokenValueExt!3120 (__x!11544 Int)) (Broken!15605 (value!96030 List!17307)) (Object!3190) (End!3121) (Def!3121) (Underscore!3121) (Match!3121) (Else!3121) (Error!3121) (Case!3121) (If!3121) (Extends!3121) (Abstract!3121) (Class!3121) (Val!3121) (DelimiterValue!6242 (del!3181 List!17307)) (KeywordValue!3127 (value!96031 List!17307)) (CommentValue!6242 (value!96032 List!17307)) (WhitespaceValue!6242 (value!96033 List!17307)) (IndentationValue!3121 (value!96034 List!17307)) (String!19936) (Int32!3121) (Broken!15606 (value!96035 List!17307)) (Boolean!3122) (Unit!26614) (OperatorValue!3124 (op!3181 List!17307)) (IdentifierValue!6242 (value!96036 List!17307)) (IdentifierValue!6243 (value!96037 List!17307)) (WhitespaceValue!6243 (value!96038 List!17307)) (True!6242) (False!6242) (Broken!15607 (value!96039 List!17307)) (Broken!15608 (value!96040 List!17307)) (True!6243) (RightBrace!3121) (RightBracket!3121) (Colon!3121) (Null!3121) (Comma!3121) (LeftBracket!3121) (False!6243) (LeftBrace!3121) (ImaginaryLiteralValue!3121 (text!22293 List!17307)) (StringLiteralValue!9363 (value!96041 List!17307)) (EOFValue!3121 (value!96042 List!17307)) (IdentValue!3121 (value!96043 List!17307)) (DelimiterValue!6243 (value!96044 List!17307)) (DedentValue!3121 (value!96045 List!17307)) (NewLineValue!3121 (value!96046 List!17307)) (IntegerValue!9363 (value!96047 (_ BitVec 32)) (text!22294 List!17307)) (IntegerValue!9364 (value!96048 Int) (text!22295 List!17307)) (Times!3121) (Or!3121) (Equal!3121) (Minus!3121) (Broken!15609 (value!96049 List!17307)) (And!3121) (Div!3121) (LessEqual!3121) (Mod!3121) (Concat!7480) (Not!3121) (Plus!3121) (SpaceValue!3121 (value!96050 List!17307)) (IntegerValue!9365 (value!96051 Int) (text!22296 List!17307)) (StringLiteralValue!9364 (text!22297 List!17307)) (FloatLiteralValue!6243 (text!22298 List!17307)) (BytesLiteralValue!3121 (value!96052 List!17307)) (CommentValue!6243 (value!96053 List!17307)) (StringLiteralValue!9365 (value!96054 List!17307)) (ErrorTokenValue!3121 (msg!3182 List!17307)) )
))
(declare-datatypes ((C!8892 0))(
  ( (C!8893 (val!5042 Int)) )
))
(declare-datatypes ((List!17308 0))(
  ( (Nil!17238) (Cons!17238 (h!22639 C!8892) (t!143251 List!17308)) )
))
(declare-datatypes ((IArray!11425 0))(
  ( (IArray!11426 (innerList!5770 List!17308)) )
))
(declare-datatypes ((Conc!5710 0))(
  ( (Node!5710 (left!13939 Conc!5710) (right!14269 Conc!5710) (csize!11650 Int) (cheight!5921 Int)) (Leaf!8446 (xs!8514 IArray!11425) (csize!11651 Int)) (Empty!5710) )
))
(declare-datatypes ((BalanceConc!11364 0))(
  ( (BalanceConc!11365 (c!255295 Conc!5710)) )
))
(declare-datatypes ((Regex!4359 0))(
  ( (ElementMatch!4359 (c!255296 C!8892)) (Concat!7481 (regOne!9230 Regex!4359) (regTwo!9230 Regex!4359)) (EmptyExpr!4359) (Star!4359 (reg!4688 Regex!4359)) (EmptyLang!4359) (Union!4359 (regOne!9231 Regex!4359) (regTwo!9231 Regex!4359)) )
))
(declare-datatypes ((String!19937 0))(
  ( (String!19938 (value!96055 String)) )
))
(declare-datatypes ((TokenValueInjection!5902 0))(
  ( (TokenValueInjection!5903 (toValue!4426 Int) (toChars!4285 Int)) )
))
(declare-datatypes ((Rule!5862 0))(
  ( (Rule!5863 (regex!3031 Regex!4359) (tag!3297 String!19937) (isSeparator!3031 Bool) (transformation!3031 TokenValueInjection!5902)) )
))
(declare-datatypes ((List!17309 0))(
  ( (Nil!17239) (Cons!17239 (h!22640 Rule!5862) (t!143252 List!17309)) )
))
(declare-fun rules!1846 () List!17309)

(declare-fun inv!22644 (String!19937) Bool)

(declare-fun inv!22647 (TokenValueInjection!5902) Bool)

(assert (=> b!1574722 (= e!1011437 (and tp!463560 (inv!22644 (tag!3297 (h!22640 rules!1846))) (inv!22647 (transformation!3031 (h!22640 rules!1846))) e!1011440))))

(declare-fun b!1574723 () Bool)

(declare-fun res!701844 () Bool)

(declare-fun e!1011446 () Bool)

(assert (=> b!1574723 (=> (not res!701844) (not e!1011446))))

(declare-datatypes ((LexerInterface!2660 0))(
  ( (LexerInterfaceExt!2657 (__x!11545 Int)) (Lexer!2658) )
))
(declare-fun thiss!17113 () LexerInterface!2660)

(declare-datatypes ((Token!5628 0))(
  ( (Token!5629 (value!96056 TokenValue!3121) (rule!4823 Rule!5862) (size!13896 Int) (originalCharacters!3845 List!17308)) )
))
(declare-datatypes ((List!17310 0))(
  ( (Nil!17240) (Cons!17240 (h!22641 Token!5628) (t!143253 List!17310)) )
))
(declare-fun tokens!457 () List!17310)

(declare-fun tokensListTwoByTwoPredicateSeparableList!353 (LexerInterface!2660 List!17310 List!17309) Bool)

(assert (=> b!1574723 (= res!701844 (tokensListTwoByTwoPredicateSeparableList!353 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1574724 () Bool)

(declare-fun res!701845 () Bool)

(assert (=> b!1574724 (=> (not res!701845) (not e!1011446))))

(declare-fun rulesInvariant!2329 (LexerInterface!2660 List!17309) Bool)

(assert (=> b!1574724 (= res!701845 (rulesInvariant!2329 thiss!17113 rules!1846))))

(declare-fun b!1574725 () Bool)

(declare-fun e!1011439 () Bool)

(declare-fun e!1011438 () Bool)

(assert (=> b!1574725 (= e!1011439 (not e!1011438))))

(declare-fun res!701841 () Bool)

(assert (=> b!1574725 (=> res!701841 e!1011438)))

(declare-fun lt!547504 () List!17310)

(assert (=> b!1574725 (= res!701841 (not (= lt!547504 (t!143253 tokens!457))))))

(declare-datatypes ((IArray!11427 0))(
  ( (IArray!11428 (innerList!5771 List!17310)) )
))
(declare-datatypes ((Conc!5711 0))(
  ( (Node!5711 (left!13940 Conc!5711) (right!14270 Conc!5711) (csize!11652 Int) (cheight!5922 Int)) (Leaf!8447 (xs!8515 IArray!11427) (csize!11653 Int)) (Empty!5711) )
))
(declare-datatypes ((BalanceConc!11366 0))(
  ( (BalanceConc!11367 (c!255297 Conc!5711)) )
))
(declare-datatypes ((tuple2!16706 0))(
  ( (tuple2!16707 (_1!9755 BalanceConc!11366) (_2!9755 BalanceConc!11364)) )
))
(declare-fun lt!547509 () tuple2!16706)

(declare-fun list!6627 (BalanceConc!11366) List!17310)

(assert (=> b!1574725 (= lt!547504 (list!6627 (_1!9755 lt!547509)))))

(declare-datatypes ((Unit!26615 0))(
  ( (Unit!26616) )
))
(declare-fun lt!547505 () Unit!26615)

(declare-fun theoremInvertabilityWhenTokenListSeparable!105 (LexerInterface!2660 List!17309 List!17310) Unit!26615)

(assert (=> b!1574725 (= lt!547505 (theoremInvertabilityWhenTokenListSeparable!105 thiss!17113 rules!1846 (t!143253 tokens!457)))))

(declare-fun lt!547503 () List!17308)

(declare-fun lt!547507 () List!17308)

(declare-fun isPrefix!1291 (List!17308 List!17308) Bool)

(assert (=> b!1574725 (isPrefix!1291 lt!547503 lt!547507)))

(declare-fun lt!547508 () Unit!26615)

(declare-fun lt!547500 () List!17308)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!816 (List!17308 List!17308) Unit!26615)

(assert (=> b!1574725 (= lt!547508 (lemmaConcatTwoListThenFirstIsPrefix!816 lt!547503 lt!547500))))

(declare-fun e!1011448 () Bool)

(declare-fun e!1011436 () Bool)

(declare-fun tp!463553 () Bool)

(declare-fun b!1574726 () Bool)

(declare-fun inv!22648 (Token!5628) Bool)

(assert (=> b!1574726 (= e!1011436 (and (inv!22648 (h!22641 tokens!457)) e!1011448 tp!463553))))

(declare-fun tp!463556 () Bool)

(declare-fun b!1574727 () Bool)

(declare-fun e!1011444 () Bool)

(declare-fun e!1011443 () Bool)

(assert (=> b!1574727 (= e!1011443 (and tp!463556 (inv!22644 (tag!3297 (rule!4823 (h!22641 tokens!457)))) (inv!22647 (transformation!3031 (rule!4823 (h!22641 tokens!457)))) e!1011444))))

(assert (=> b!1574728 (= e!1011444 (and tp!463552 tp!463557))))

(declare-fun b!1574730 () Bool)

(declare-fun res!701840 () Bool)

(assert (=> b!1574730 (=> (not res!701840) (not e!1011446))))

(get-info :version)

(assert (=> b!1574730 (= res!701840 (and (not ((_ is Nil!17240) tokens!457)) (not ((_ is Nil!17240) (t!143253 tokens!457)))))))

(declare-fun b!1574731 () Bool)

(declare-fun tp!463559 () Bool)

(declare-fun inv!21 (TokenValue!3121) Bool)

(assert (=> b!1574731 (= e!1011448 (and (inv!21 (value!96056 (h!22641 tokens!457))) e!1011443 tp!463559))))

(declare-fun b!1574732 () Bool)

(assert (=> b!1574732 (= e!1011446 e!1011439)))

(declare-fun res!701842 () Bool)

(assert (=> b!1574732 (=> (not res!701842) (not e!1011439))))

(declare-fun lt!547501 () List!17308)

(assert (=> b!1574732 (= res!701842 (= lt!547501 lt!547507))))

(declare-fun ++!4467 (List!17308 List!17308) List!17308)

(assert (=> b!1574732 (= lt!547507 (++!4467 lt!547503 lt!547500))))

(declare-fun lt!547510 () BalanceConc!11364)

(declare-fun list!6628 (BalanceConc!11364) List!17308)

(assert (=> b!1574732 (= lt!547501 (list!6628 lt!547510))))

(declare-fun lt!547506 () BalanceConc!11364)

(assert (=> b!1574732 (= lt!547500 (list!6628 lt!547506))))

(declare-fun charsOf!1680 (Token!5628) BalanceConc!11364)

(assert (=> b!1574732 (= lt!547503 (list!6628 (charsOf!1680 (h!22641 tokens!457))))))

(declare-fun lex!1144 (LexerInterface!2660 List!17309 BalanceConc!11364) tuple2!16706)

(assert (=> b!1574732 (= lt!547509 (lex!1144 thiss!17113 rules!1846 lt!547506))))

(declare-fun print!1191 (LexerInterface!2660 BalanceConc!11366) BalanceConc!11364)

(declare-fun seqFromList!1828 (List!17310) BalanceConc!11366)

(assert (=> b!1574732 (= lt!547506 (print!1191 thiss!17113 (seqFromList!1828 (t!143253 tokens!457))))))

(assert (=> b!1574732 (= lt!547510 (print!1191 thiss!17113 (seqFromList!1828 tokens!457)))))

(declare-fun b!1574733 () Bool)

(assert (=> b!1574733 (= e!1011438 true)))

(declare-fun prepend!497 (BalanceConc!11366 Token!5628) BalanceConc!11366)

(assert (=> b!1574733 (= lt!547504 (list!6627 (prepend!497 (seqFromList!1828 (t!143253 (t!143253 tokens!457))) (h!22641 (t!143253 tokens!457)))))))

(declare-fun lt!547502 () Unit!26615)

(declare-fun seqFromListBHdTlConstructive!108 (Token!5628 List!17310 BalanceConc!11366) Unit!26615)

(assert (=> b!1574733 (= lt!547502 (seqFromListBHdTlConstructive!108 (h!22641 (t!143253 tokens!457)) (t!143253 (t!143253 tokens!457)) (_1!9755 lt!547509)))))

(assert (=> b!1574734 (= e!1011440 (and tp!463554 tp!463555))))

(declare-fun b!1574735 () Bool)

(declare-fun res!701843 () Bool)

(assert (=> b!1574735 (=> (not res!701843) (not e!1011446))))

(declare-fun isEmpty!10289 (List!17309) Bool)

(assert (=> b!1574735 (= res!701843 (not (isEmpty!10289 rules!1846)))))

(declare-fun b!1574736 () Bool)

(declare-fun res!701846 () Bool)

(assert (=> b!1574736 (=> (not res!701846) (not e!1011446))))

(declare-fun rulesProduceEachTokenIndividuallyList!862 (LexerInterface!2660 List!17309 List!17310) Bool)

(assert (=> b!1574736 (= res!701846 (rulesProduceEachTokenIndividuallyList!862 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1574729 () Bool)

(declare-fun e!1011447 () Bool)

(declare-fun tp!463558 () Bool)

(assert (=> b!1574729 (= e!1011447 (and e!1011437 tp!463558))))

(declare-fun res!701839 () Bool)

(assert (=> start!146974 (=> (not res!701839) (not e!1011446))))

(assert (=> start!146974 (= res!701839 ((_ is Lexer!2658) thiss!17113))))

(assert (=> start!146974 e!1011446))

(assert (=> start!146974 true))

(assert (=> start!146974 e!1011447))

(assert (=> start!146974 e!1011436))

(assert (= (and start!146974 res!701839) b!1574735))

(assert (= (and b!1574735 res!701843) b!1574724))

(assert (= (and b!1574724 res!701845) b!1574736))

(assert (= (and b!1574736 res!701846) b!1574723))

(assert (= (and b!1574723 res!701844) b!1574730))

(assert (= (and b!1574730 res!701840) b!1574732))

(assert (= (and b!1574732 res!701842) b!1574725))

(assert (= (and b!1574725 (not res!701841)) b!1574733))

(assert (= b!1574722 b!1574734))

(assert (= b!1574729 b!1574722))

(assert (= (and start!146974 ((_ is Cons!17239) rules!1846)) b!1574729))

(assert (= b!1574727 b!1574728))

(assert (= b!1574731 b!1574727))

(assert (= b!1574726 b!1574731))

(assert (= (and start!146974 ((_ is Cons!17240) tokens!457)) b!1574726))

(declare-fun m!1853677 () Bool)

(assert (=> b!1574723 m!1853677))

(declare-fun m!1853679 () Bool)

(assert (=> b!1574726 m!1853679))

(declare-fun m!1853681 () Bool)

(assert (=> b!1574736 m!1853681))

(declare-fun m!1853683 () Bool)

(assert (=> b!1574722 m!1853683))

(declare-fun m!1853685 () Bool)

(assert (=> b!1574722 m!1853685))

(declare-fun m!1853687 () Bool)

(assert (=> b!1574727 m!1853687))

(declare-fun m!1853689 () Bool)

(assert (=> b!1574727 m!1853689))

(declare-fun m!1853691 () Bool)

(assert (=> b!1574725 m!1853691))

(declare-fun m!1853693 () Bool)

(assert (=> b!1574725 m!1853693))

(declare-fun m!1853695 () Bool)

(assert (=> b!1574725 m!1853695))

(declare-fun m!1853697 () Bool)

(assert (=> b!1574725 m!1853697))

(declare-fun m!1853699 () Bool)

(assert (=> b!1574735 m!1853699))

(declare-fun m!1853701 () Bool)

(assert (=> b!1574733 m!1853701))

(assert (=> b!1574733 m!1853701))

(declare-fun m!1853703 () Bool)

(assert (=> b!1574733 m!1853703))

(assert (=> b!1574733 m!1853703))

(declare-fun m!1853705 () Bool)

(assert (=> b!1574733 m!1853705))

(declare-fun m!1853707 () Bool)

(assert (=> b!1574733 m!1853707))

(declare-fun m!1853709 () Bool)

(assert (=> b!1574724 m!1853709))

(declare-fun m!1853711 () Bool)

(assert (=> b!1574731 m!1853711))

(declare-fun m!1853713 () Bool)

(assert (=> b!1574732 m!1853713))

(declare-fun m!1853715 () Bool)

(assert (=> b!1574732 m!1853715))

(declare-fun m!1853717 () Bool)

(assert (=> b!1574732 m!1853717))

(declare-fun m!1853719 () Bool)

(assert (=> b!1574732 m!1853719))

(declare-fun m!1853721 () Bool)

(assert (=> b!1574732 m!1853721))

(assert (=> b!1574732 m!1853715))

(declare-fun m!1853723 () Bool)

(assert (=> b!1574732 m!1853723))

(declare-fun m!1853725 () Bool)

(assert (=> b!1574732 m!1853725))

(assert (=> b!1574732 m!1853717))

(declare-fun m!1853727 () Bool)

(assert (=> b!1574732 m!1853727))

(declare-fun m!1853729 () Bool)

(assert (=> b!1574732 m!1853729))

(declare-fun m!1853731 () Bool)

(assert (=> b!1574732 m!1853731))

(assert (=> b!1574732 m!1853729))

(check-sat b_and!110183 (not b!1574731) (not b!1574724) (not b!1574733) (not b_next!43053) b_and!110181 (not b!1574735) (not b_next!43047) (not b_next!43051) (not b!1574723) (not b_next!43049) (not b!1574722) (not b!1574725) (not b!1574732) (not b!1574727) b_and!110187 b_and!110185 (not b!1574729) (not b!1574736) (not b!1574726))
(check-sat b_and!110183 (not b_next!43053) b_and!110181 (not b_next!43047) (not b_next!43051) (not b_next!43049) b_and!110187 b_and!110185)
