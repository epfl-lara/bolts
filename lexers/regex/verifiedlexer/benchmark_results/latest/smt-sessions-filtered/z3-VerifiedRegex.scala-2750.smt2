; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147866 () Bool)

(assert start!147866)

(declare-fun b!1580060 () Bool)

(declare-fun b_free!42695 () Bool)

(declare-fun b_next!43399 () Bool)

(assert (=> b!1580060 (= b_free!42695 (not b_next!43399))))

(declare-fun tp!465228 () Bool)

(declare-fun b_and!110701 () Bool)

(assert (=> b!1580060 (= tp!465228 b_and!110701)))

(declare-fun b_free!42697 () Bool)

(declare-fun b_next!43401 () Bool)

(assert (=> b!1580060 (= b_free!42697 (not b_next!43401))))

(declare-fun tp!465231 () Bool)

(declare-fun b_and!110703 () Bool)

(assert (=> b!1580060 (= tp!465231 b_and!110703)))

(declare-fun b!1580067 () Bool)

(declare-fun b_free!42699 () Bool)

(declare-fun b_next!43403 () Bool)

(assert (=> b!1580067 (= b_free!42699 (not b_next!43403))))

(declare-fun tp!465227 () Bool)

(declare-fun b_and!110705 () Bool)

(assert (=> b!1580067 (= tp!465227 b_and!110705)))

(declare-fun b_free!42701 () Bool)

(declare-fun b_next!43405 () Bool)

(assert (=> b!1580067 (= b_free!42701 (not b_next!43405))))

(declare-fun tp!465234 () Bool)

(declare-fun b_and!110707 () Bool)

(assert (=> b!1580067 (= tp!465234 b_and!110707)))

(declare-fun b!1580053 () Bool)

(declare-fun e!1015043 () Bool)

(declare-fun e!1015055 () Bool)

(assert (=> b!1580053 (= e!1015043 e!1015055)))

(declare-fun res!704423 () Bool)

(assert (=> b!1580053 (=> res!704423 e!1015055)))

(declare-datatypes ((C!8952 0))(
  ( (C!8953 (val!5072 Int)) )
))
(declare-datatypes ((List!17439 0))(
  ( (Nil!17369) (Cons!17369 (h!22770 C!8952) (t!143640 List!17439)) )
))
(declare-fun lt!552801 () List!17439)

(declare-fun lt!552806 () List!17439)

(declare-fun lt!552800 () List!17439)

(assert (=> b!1580053 (= res!704423 (or (not (= lt!552806 lt!552800)) (not (= lt!552800 lt!552801)) (not (= lt!552806 lt!552801))))))

(declare-datatypes ((LexerInterface!2690 0))(
  ( (LexerInterfaceExt!2687 (__x!11604 Int)) (Lexer!2688) )
))
(declare-fun thiss!17113 () LexerInterface!2690)

(declare-datatypes ((List!17440 0))(
  ( (Nil!17370) (Cons!17370 (h!22771 (_ BitVec 16)) (t!143641 List!17440)) )
))
(declare-datatypes ((TokenValue!3151 0))(
  ( (FloatLiteralValue!6302 (text!22502 List!17440)) (TokenValueExt!3150 (__x!11605 Int)) (Broken!15755 (value!96885 List!17440)) (Object!3220) (End!3151) (Def!3151) (Underscore!3151) (Match!3151) (Else!3151) (Error!3151) (Case!3151) (If!3151) (Extends!3151) (Abstract!3151) (Class!3151) (Val!3151) (DelimiterValue!6302 (del!3211 List!17440)) (KeywordValue!3157 (value!96886 List!17440)) (CommentValue!6302 (value!96887 List!17440)) (WhitespaceValue!6302 (value!96888 List!17440)) (IndentationValue!3151 (value!96889 List!17440)) (String!20086) (Int32!3151) (Broken!15756 (value!96890 List!17440)) (Boolean!3152) (Unit!27014) (OperatorValue!3154 (op!3211 List!17440)) (IdentifierValue!6302 (value!96891 List!17440)) (IdentifierValue!6303 (value!96892 List!17440)) (WhitespaceValue!6303 (value!96893 List!17440)) (True!6302) (False!6302) (Broken!15757 (value!96894 List!17440)) (Broken!15758 (value!96895 List!17440)) (True!6303) (RightBrace!3151) (RightBracket!3151) (Colon!3151) (Null!3151) (Comma!3151) (LeftBracket!3151) (False!6303) (LeftBrace!3151) (ImaginaryLiteralValue!3151 (text!22503 List!17440)) (StringLiteralValue!9453 (value!96896 List!17440)) (EOFValue!3151 (value!96897 List!17440)) (IdentValue!3151 (value!96898 List!17440)) (DelimiterValue!6303 (value!96899 List!17440)) (DedentValue!3151 (value!96900 List!17440)) (NewLineValue!3151 (value!96901 List!17440)) (IntegerValue!9453 (value!96902 (_ BitVec 32)) (text!22504 List!17440)) (IntegerValue!9454 (value!96903 Int) (text!22505 List!17440)) (Times!3151) (Or!3151) (Equal!3151) (Minus!3151) (Broken!15759 (value!96904 List!17440)) (And!3151) (Div!3151) (LessEqual!3151) (Mod!3151) (Concat!7540) (Not!3151) (Plus!3151) (SpaceValue!3151 (value!96905 List!17440)) (IntegerValue!9455 (value!96906 Int) (text!22506 List!17440)) (StringLiteralValue!9454 (text!22507 List!17440)) (FloatLiteralValue!6303 (text!22508 List!17440)) (BytesLiteralValue!3151 (value!96907 List!17440)) (CommentValue!6303 (value!96908 List!17440)) (StringLiteralValue!9455 (value!96909 List!17440)) (ErrorTokenValue!3151 (msg!3212 List!17440)) )
))
(declare-datatypes ((IArray!11545 0))(
  ( (IArray!11546 (innerList!5830 List!17439)) )
))
(declare-datatypes ((Conc!5770 0))(
  ( (Node!5770 (left!14034 Conc!5770) (right!14364 Conc!5770) (csize!11770 Int) (cheight!5981 Int)) (Leaf!8521 (xs!8574 IArray!11545) (csize!11771 Int)) (Empty!5770) )
))
(declare-datatypes ((BalanceConc!11484 0))(
  ( (BalanceConc!11485 (c!256021 Conc!5770)) )
))
(declare-datatypes ((Regex!4389 0))(
  ( (ElementMatch!4389 (c!256022 C!8952)) (Concat!7541 (regOne!9290 Regex!4389) (regTwo!9290 Regex!4389)) (EmptyExpr!4389) (Star!4389 (reg!4718 Regex!4389)) (EmptyLang!4389) (Union!4389 (regOne!9291 Regex!4389) (regTwo!9291 Regex!4389)) )
))
(declare-datatypes ((String!20087 0))(
  ( (String!20088 (value!96910 String)) )
))
(declare-datatypes ((TokenValueInjection!5962 0))(
  ( (TokenValueInjection!5963 (toValue!4464 Int) (toChars!4323 Int)) )
))
(declare-datatypes ((Rule!5922 0))(
  ( (Rule!5923 (regex!3061 Regex!4389) (tag!3327 String!20087) (isSeparator!3061 Bool) (transformation!3061 TokenValueInjection!5962)) )
))
(declare-datatypes ((Token!5688 0))(
  ( (Token!5689 (value!96911 TokenValue!3151) (rule!4857 Rule!5922) (size!13968 Int) (originalCharacters!3875 List!17439)) )
))
(declare-datatypes ((List!17441 0))(
  ( (Nil!17371) (Cons!17371 (h!22772 Token!5688) (t!143642 List!17441)) )
))
(declare-fun tokens!457 () List!17441)

(declare-fun printList!805 (LexerInterface!2690 List!17441) List!17439)

(assert (=> b!1580053 (= lt!552800 (printList!805 thiss!17113 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))

(declare-fun lt!552798 () BalanceConc!11484)

(declare-fun list!6715 (BalanceConc!11484) List!17439)

(assert (=> b!1580053 (= lt!552806 (list!6715 lt!552798))))

(declare-datatypes ((IArray!11547 0))(
  ( (IArray!11548 (innerList!5831 List!17441)) )
))
(declare-datatypes ((Conc!5771 0))(
  ( (Node!5771 (left!14035 Conc!5771) (right!14365 Conc!5771) (csize!11772 Int) (cheight!5982 Int)) (Leaf!8522 (xs!8575 IArray!11547) (csize!11773 Int)) (Empty!5771) )
))
(declare-datatypes ((BalanceConc!11486 0))(
  ( (BalanceConc!11487 (c!256023 Conc!5771)) )
))
(declare-fun lt!552802 () BalanceConc!11486)

(declare-fun printTailRec!743 (LexerInterface!2690 BalanceConc!11486 Int BalanceConc!11484) BalanceConc!11484)

(assert (=> b!1580053 (= lt!552798 (printTailRec!743 thiss!17113 lt!552802 0 (BalanceConc!11485 Empty!5770)))))

(declare-fun print!1221 (LexerInterface!2690 BalanceConc!11486) BalanceConc!11484)

(assert (=> b!1580053 (= lt!552798 (print!1221 thiss!17113 lt!552802))))

(declare-fun singletonSeq!1399 (Token!5688) BalanceConc!11486)

(assert (=> b!1580053 (= lt!552802 (singletonSeq!1399 (h!22772 tokens!457)))))

(declare-datatypes ((tuple2!16840 0))(
  ( (tuple2!16841 (_1!9822 Token!5688) (_2!9822 List!17439)) )
))
(declare-datatypes ((Option!3114 0))(
  ( (None!3113) (Some!3113 (v!23950 tuple2!16840)) )
))
(declare-fun lt!552794 () Option!3114)

(declare-fun lt!552796 () List!17439)

(declare-datatypes ((List!17442 0))(
  ( (Nil!17372) (Cons!17372 (h!22773 Rule!5922) (t!143643 List!17442)) )
))
(declare-fun rules!1846 () List!17442)

(declare-fun maxPrefix!1254 (LexerInterface!2690 List!17442 List!17439) Option!3114)

(assert (=> b!1580053 (= lt!552794 (maxPrefix!1254 thiss!17113 rules!1846 lt!552796))))

(declare-fun b!1580054 () Bool)

(declare-fun e!1015049 () Bool)

(declare-fun e!1015056 () Bool)

(declare-fun tp!465226 () Bool)

(assert (=> b!1580054 (= e!1015049 (and e!1015056 tp!465226))))

(declare-fun b!1580055 () Bool)

(declare-fun e!1015050 () Bool)

(declare-fun tp!465229 () Bool)

(declare-fun e!1015044 () Bool)

(declare-fun inv!21 (TokenValue!3151) Bool)

(assert (=> b!1580055 (= e!1015044 (and (inv!21 (value!96911 (h!22772 tokens!457))) e!1015050 tp!465229))))

(declare-fun e!1015047 () Bool)

(declare-fun tp!465233 () Bool)

(declare-fun b!1580056 () Bool)

(declare-fun inv!22780 (String!20087) Bool)

(declare-fun inv!22783 (TokenValueInjection!5962) Bool)

(assert (=> b!1580056 (= e!1015050 (and tp!465233 (inv!22780 (tag!3327 (rule!4857 (h!22772 tokens!457)))) (inv!22783 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) e!1015047))))

(declare-fun b!1580058 () Bool)

(declare-fun tp!465232 () Bool)

(declare-fun e!1015046 () Bool)

(assert (=> b!1580058 (= e!1015056 (and tp!465232 (inv!22780 (tag!3327 (h!22773 rules!1846))) (inv!22783 (transformation!3061 (h!22773 rules!1846))) e!1015046))))

(declare-fun b!1580059 () Bool)

(declare-fun e!1015051 () Bool)

(assert (=> b!1580059 (= e!1015051 e!1015043)))

(declare-fun res!704414 () Bool)

(assert (=> b!1580059 (=> res!704414 e!1015043)))

(declare-fun lt!552790 () List!17441)

(declare-fun lt!552792 () List!17441)

(declare-fun lt!552787 () List!17441)

(assert (=> b!1580059 (= res!704414 (or (not (= lt!552787 lt!552792)) (not (= lt!552792 lt!552790))))))

(declare-fun lt!552804 () BalanceConc!11486)

(declare-fun list!6716 (BalanceConc!11486) List!17441)

(assert (=> b!1580059 (= lt!552792 (list!6716 lt!552804))))

(assert (=> b!1580059 (= lt!552787 lt!552790)))

(declare-fun prepend!537 (BalanceConc!11486 Token!5688) BalanceConc!11486)

(declare-fun seqFromList!1871 (List!17441) BalanceConc!11486)

(assert (=> b!1580059 (= lt!552790 (list!6716 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457)))))))

(declare-datatypes ((Unit!27015 0))(
  ( (Unit!27016) )
))
(declare-fun lt!552789 () Unit!27015)

(declare-datatypes ((tuple2!16842 0))(
  ( (tuple2!16843 (_1!9823 BalanceConc!11486) (_2!9823 BalanceConc!11484)) )
))
(declare-fun lt!552797 () tuple2!16842)

(declare-fun seqFromListBHdTlConstructive!138 (Token!5688 List!17441 BalanceConc!11486) Unit!27015)

(assert (=> b!1580059 (= lt!552789 (seqFromListBHdTlConstructive!138 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457)) (_1!9823 lt!552797)))))

(assert (=> b!1580060 (= e!1015046 (and tp!465228 tp!465231))))

(declare-fun b!1580061 () Bool)

(declare-fun res!704424 () Bool)

(declare-fun e!1015048 () Bool)

(assert (=> b!1580061 (=> (not res!704424) (not e!1015048))))

(get-info :version)

(assert (=> b!1580061 (= res!704424 (and (not ((_ is Nil!17371) tokens!457)) (not ((_ is Nil!17371) (t!143642 tokens!457)))))))

(declare-fun b!1580062 () Bool)

(declare-fun res!704419 () Bool)

(assert (=> b!1580062 (=> (not res!704419) (not e!1015048))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!383 (LexerInterface!2690 List!17441 List!17442) Bool)

(assert (=> b!1580062 (= res!704419 (tokensListTwoByTwoPredicateSeparableList!383 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1580063 () Bool)

(declare-fun e!1015042 () Bool)

(declare-fun isEmpty!10377 (BalanceConc!11484) Bool)

(declare-fun charsOf!1710 (Token!5688) BalanceConc!11484)

(assert (=> b!1580063 (= e!1015042 (not (isEmpty!10377 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(declare-fun b!1580064 () Bool)

(declare-fun res!704422 () Bool)

(assert (=> b!1580064 (=> res!704422 e!1015055)))

(declare-fun isEmpty!10378 (BalanceConc!11486) Bool)

(declare-fun lex!1174 (LexerInterface!2690 List!17442 BalanceConc!11484) tuple2!16842)

(declare-fun seqFromList!1872 (List!17439) BalanceConc!11484)

(assert (=> b!1580064 (= res!704422 (isEmpty!10378 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801)))))))

(declare-fun b!1580065 () Bool)

(declare-fun e!1015045 () Bool)

(assert (=> b!1580065 (= e!1015045 (not e!1015051))))

(declare-fun res!704427 () Bool)

(assert (=> b!1580065 (=> res!704427 e!1015051)))

(assert (=> b!1580065 (= res!704427 (not (= lt!552787 (t!143642 tokens!457))))))

(assert (=> b!1580065 (= lt!552787 (list!6716 (_1!9823 lt!552797)))))

(declare-fun lt!552799 () Unit!27015)

(declare-fun theoremInvertabilityWhenTokenListSeparable!135 (LexerInterface!2690 List!17442 List!17441) Unit!27015)

(assert (=> b!1580065 (= lt!552799 (theoremInvertabilityWhenTokenListSeparable!135 thiss!17113 rules!1846 (t!143642 tokens!457)))))

(declare-fun lt!552805 () List!17439)

(declare-fun isPrefix!1321 (List!17439 List!17439) Bool)

(assert (=> b!1580065 (isPrefix!1321 lt!552801 lt!552805)))

(declare-fun lt!552791 () Unit!27015)

(declare-fun lt!552795 () List!17439)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!846 (List!17439 List!17439) Unit!27015)

(assert (=> b!1580065 (= lt!552791 (lemmaConcatTwoListThenFirstIsPrefix!846 lt!552801 lt!552795))))

(declare-fun res!704421 () Bool)

(assert (=> start!147866 (=> (not res!704421) (not e!1015048))))

(assert (=> start!147866 (= res!704421 ((_ is Lexer!2688) thiss!17113))))

(assert (=> start!147866 e!1015048))

(assert (=> start!147866 true))

(assert (=> start!147866 e!1015049))

(declare-fun e!1015053 () Bool)

(assert (=> start!147866 e!1015053))

(declare-fun b!1580057 () Bool)

(declare-fun res!704418 () Bool)

(assert (=> b!1580057 (=> res!704418 e!1015055)))

(declare-fun rulesProduceIndividualToken!1342 (LexerInterface!2690 List!17442 Token!5688) Bool)

(assert (=> b!1580057 (= res!704418 (not (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 tokens!457))))))

(declare-fun b!1580066 () Bool)

(assert (=> b!1580066 (= e!1015048 e!1015045)))

(declare-fun res!704426 () Bool)

(assert (=> b!1580066 (=> (not res!704426) (not e!1015045))))

(assert (=> b!1580066 (= res!704426 (= lt!552796 lt!552805))))

(declare-fun ++!4511 (List!17439 List!17439) List!17439)

(assert (=> b!1580066 (= lt!552805 (++!4511 lt!552801 lt!552795))))

(declare-fun lt!552793 () BalanceConc!11484)

(assert (=> b!1580066 (= lt!552796 (list!6715 lt!552793))))

(declare-fun lt!552788 () BalanceConc!11484)

(assert (=> b!1580066 (= lt!552795 (list!6715 lt!552788))))

(assert (=> b!1580066 (= lt!552801 (list!6715 (charsOf!1710 (h!22772 tokens!457))))))

(assert (=> b!1580066 (= lt!552797 (lex!1174 thiss!17113 rules!1846 lt!552788))))

(assert (=> b!1580066 (= lt!552788 (print!1221 thiss!17113 lt!552804))))

(assert (=> b!1580066 (= lt!552804 (seqFromList!1871 (t!143642 tokens!457)))))

(assert (=> b!1580066 (= lt!552793 (print!1221 thiss!17113 (seqFromList!1871 tokens!457)))))

(assert (=> b!1580067 (= e!1015047 (and tp!465227 tp!465234))))

(declare-fun b!1580068 () Bool)

(declare-fun res!704420 () Bool)

(assert (=> b!1580068 (=> (not res!704420) (not e!1015048))))

(declare-fun rulesInvariant!2359 (LexerInterface!2690 List!17442) Bool)

(assert (=> b!1580068 (= res!704420 (rulesInvariant!2359 thiss!17113 rules!1846))))

(declare-fun b!1580069 () Bool)

(declare-fun tp!465230 () Bool)

(declare-fun inv!22784 (Token!5688) Bool)

(assert (=> b!1580069 (= e!1015053 (and (inv!22784 (h!22772 tokens!457)) e!1015044 tp!465230))))

(declare-fun b!1580070 () Bool)

(declare-fun res!704413 () Bool)

(assert (=> b!1580070 (=> (not res!704413) (not e!1015048))))

(declare-fun isEmpty!10379 (List!17442) Bool)

(assert (=> b!1580070 (= res!704413 (not (isEmpty!10379 rules!1846)))))

(declare-fun b!1580071 () Bool)

(assert (=> b!1580071 (= e!1015055 e!1015042)))

(declare-fun res!704417 () Bool)

(assert (=> b!1580071 (=> res!704417 e!1015042)))

(declare-fun isDefined!2493 (Option!3114) Bool)

(assert (=> b!1580071 (= res!704417 (not (isDefined!2493 lt!552794)))))

(declare-fun lt!552803 () Unit!27015)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!264 (LexerInterface!2690 List!17442 List!17439 List!17439) Unit!27015)

(assert (=> b!1580071 (= lt!552803 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!264 thiss!17113 rules!1846 lt!552801 lt!552795))))

(declare-fun b!1580072 () Bool)

(declare-fun res!704416 () Bool)

(assert (=> b!1580072 (=> res!704416 e!1015042)))

(assert (=> b!1580072 (= res!704416 (not (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 (t!143642 tokens!457)))))))

(declare-fun b!1580073 () Bool)

(declare-fun res!704425 () Bool)

(assert (=> b!1580073 (=> (not res!704425) (not e!1015048))))

(declare-fun rulesProduceEachTokenIndividuallyList!892 (LexerInterface!2690 List!17442 List!17441) Bool)

(assert (=> b!1580073 (= res!704425 (rulesProduceEachTokenIndividuallyList!892 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1580074 () Bool)

(declare-fun res!704415 () Bool)

(assert (=> b!1580074 (=> res!704415 e!1015043)))

(declare-fun separableTokensPredicate!632 (LexerInterface!2690 Token!5688 Token!5688 List!17442) Bool)

(assert (=> b!1580074 (= res!704415 (not (separableTokensPredicate!632 thiss!17113 (h!22772 tokens!457) (h!22772 (t!143642 tokens!457)) rules!1846)))))

(assert (= (and start!147866 res!704421) b!1580070))

(assert (= (and b!1580070 res!704413) b!1580068))

(assert (= (and b!1580068 res!704420) b!1580073))

(assert (= (and b!1580073 res!704425) b!1580062))

(assert (= (and b!1580062 res!704419) b!1580061))

(assert (= (and b!1580061 res!704424) b!1580066))

(assert (= (and b!1580066 res!704426) b!1580065))

(assert (= (and b!1580065 (not res!704427)) b!1580059))

(assert (= (and b!1580059 (not res!704414)) b!1580074))

(assert (= (and b!1580074 (not res!704415)) b!1580053))

(assert (= (and b!1580053 (not res!704423)) b!1580057))

(assert (= (and b!1580057 (not res!704418)) b!1580064))

(assert (= (and b!1580064 (not res!704422)) b!1580071))

(assert (= (and b!1580071 (not res!704417)) b!1580072))

(assert (= (and b!1580072 (not res!704416)) b!1580063))

(assert (= b!1580058 b!1580060))

(assert (= b!1580054 b!1580058))

(assert (= (and start!147866 ((_ is Cons!17372) rules!1846)) b!1580054))

(assert (= b!1580056 b!1580067))

(assert (= b!1580055 b!1580056))

(assert (= b!1580069 b!1580055))

(assert (= (and start!147866 ((_ is Cons!17371) tokens!457)) b!1580069))

(declare-fun m!1863063 () Bool)

(assert (=> b!1580070 m!1863063))

(declare-fun m!1863065 () Bool)

(assert (=> b!1580073 m!1863065))

(declare-fun m!1863067 () Bool)

(assert (=> b!1580064 m!1863067))

(assert (=> b!1580064 m!1863067))

(declare-fun m!1863069 () Bool)

(assert (=> b!1580064 m!1863069))

(declare-fun m!1863071 () Bool)

(assert (=> b!1580064 m!1863071))

(declare-fun m!1863073 () Bool)

(assert (=> b!1580056 m!1863073))

(declare-fun m!1863075 () Bool)

(assert (=> b!1580056 m!1863075))

(declare-fun m!1863077 () Bool)

(assert (=> b!1580069 m!1863077))

(declare-fun m!1863079 () Bool)

(assert (=> b!1580068 m!1863079))

(declare-fun m!1863081 () Bool)

(assert (=> b!1580072 m!1863081))

(declare-fun m!1863083 () Bool)

(assert (=> b!1580055 m!1863083))

(declare-fun m!1863085 () Bool)

(assert (=> b!1580071 m!1863085))

(declare-fun m!1863087 () Bool)

(assert (=> b!1580071 m!1863087))

(declare-fun m!1863089 () Bool)

(assert (=> b!1580066 m!1863089))

(declare-fun m!1863091 () Bool)

(assert (=> b!1580066 m!1863091))

(declare-fun m!1863093 () Bool)

(assert (=> b!1580066 m!1863093))

(declare-fun m!1863095 () Bool)

(assert (=> b!1580066 m!1863095))

(declare-fun m!1863097 () Bool)

(assert (=> b!1580066 m!1863097))

(declare-fun m!1863099 () Bool)

(assert (=> b!1580066 m!1863099))

(assert (=> b!1580066 m!1863091))

(declare-fun m!1863101 () Bool)

(assert (=> b!1580066 m!1863101))

(assert (=> b!1580066 m!1863095))

(declare-fun m!1863103 () Bool)

(assert (=> b!1580066 m!1863103))

(declare-fun m!1863105 () Bool)

(assert (=> b!1580066 m!1863105))

(declare-fun m!1863107 () Bool)

(assert (=> b!1580066 m!1863107))

(declare-fun m!1863109 () Bool)

(assert (=> b!1580065 m!1863109))

(declare-fun m!1863111 () Bool)

(assert (=> b!1580065 m!1863111))

(declare-fun m!1863113 () Bool)

(assert (=> b!1580065 m!1863113))

(declare-fun m!1863115 () Bool)

(assert (=> b!1580065 m!1863115))

(declare-fun m!1863117 () Bool)

(assert (=> b!1580057 m!1863117))

(declare-fun m!1863119 () Bool)

(assert (=> b!1580074 m!1863119))

(declare-fun m!1863121 () Bool)

(assert (=> b!1580058 m!1863121))

(declare-fun m!1863123 () Bool)

(assert (=> b!1580058 m!1863123))

(declare-fun m!1863125 () Bool)

(assert (=> b!1580062 m!1863125))

(declare-fun m!1863127 () Bool)

(assert (=> b!1580053 m!1863127))

(declare-fun m!1863129 () Bool)

(assert (=> b!1580053 m!1863129))

(declare-fun m!1863131 () Bool)

(assert (=> b!1580053 m!1863131))

(declare-fun m!1863133 () Bool)

(assert (=> b!1580053 m!1863133))

(declare-fun m!1863135 () Bool)

(assert (=> b!1580053 m!1863135))

(declare-fun m!1863137 () Bool)

(assert (=> b!1580053 m!1863137))

(declare-fun m!1863139 () Bool)

(assert (=> b!1580059 m!1863139))

(declare-fun m!1863141 () Bool)

(assert (=> b!1580059 m!1863141))

(declare-fun m!1863143 () Bool)

(assert (=> b!1580059 m!1863143))

(declare-fun m!1863145 () Bool)

(assert (=> b!1580059 m!1863145))

(declare-fun m!1863147 () Bool)

(assert (=> b!1580059 m!1863147))

(assert (=> b!1580059 m!1863143))

(assert (=> b!1580059 m!1863145))

(declare-fun m!1863149 () Bool)

(assert (=> b!1580063 m!1863149))

(assert (=> b!1580063 m!1863149))

(declare-fun m!1863151 () Bool)

(assert (=> b!1580063 m!1863151))

(check-sat b_and!110701 (not b!1580053) (not b_next!43405) (not b!1580064) (not b_next!43403) b_and!110703 (not b!1580070) (not b_next!43399) (not b_next!43401) (not b!1580057) (not b!1580056) (not b!1580054) (not b!1580069) (not b!1580058) (not b!1580068) b_and!110705 (not b!1580074) (not b!1580072) (not b!1580071) (not b!1580065) (not b!1580055) (not b!1580062) b_and!110707 (not b!1580063) (not b!1580059) (not b!1580073) (not b!1580066))
(check-sat b_and!110701 (not b_next!43405) b_and!110705 (not b_next!43403) b_and!110703 (not b_next!43399) (not b_next!43401) b_and!110707)
(get-model)

(declare-fun d!469339 () Bool)

(declare-fun lt!552812 () Bool)

(declare-fun e!1015070 () Bool)

(assert (=> d!469339 (= lt!552812 e!1015070)))

(declare-fun res!704450 () Bool)

(assert (=> d!469339 (=> (not res!704450) (not e!1015070))))

(assert (=> d!469339 (= res!704450 (= (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))))) (list!6716 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))))))

(declare-fun e!1015071 () Bool)

(assert (=> d!469339 (= lt!552812 e!1015071)))

(declare-fun res!704451 () Bool)

(assert (=> d!469339 (=> (not res!704451) (not e!1015071))))

(declare-fun lt!552811 () tuple2!16842)

(declare-fun size!13972 (BalanceConc!11486) Int)

(assert (=> d!469339 (= res!704451 (= (size!13972 (_1!9823 lt!552811)) 1))))

(assert (=> d!469339 (= lt!552811 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!469339 (not (isEmpty!10379 rules!1846))))

(assert (=> d!469339 (= (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 (t!143642 tokens!457))) lt!552812)))

(declare-fun b!1580095 () Bool)

(declare-fun res!704452 () Bool)

(assert (=> b!1580095 (=> (not res!704452) (not e!1015071))))

(declare-fun apply!4209 (BalanceConc!11486 Int) Token!5688)

(assert (=> b!1580095 (= res!704452 (= (apply!4209 (_1!9823 lt!552811) 0) (h!22772 (t!143642 tokens!457))))))

(declare-fun b!1580096 () Bool)

(assert (=> b!1580096 (= e!1015071 (isEmpty!10377 (_2!9823 lt!552811)))))

(declare-fun b!1580097 () Bool)

(assert (=> b!1580097 (= e!1015070 (isEmpty!10377 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))))))))

(assert (= (and d!469339 res!704451) b!1580095))

(assert (= (and b!1580095 res!704452) b!1580096))

(assert (= (and d!469339 res!704450) b!1580097))

(declare-fun m!1863171 () Bool)

(assert (=> d!469339 m!1863171))

(declare-fun m!1863173 () Bool)

(assert (=> d!469339 m!1863173))

(assert (=> d!469339 m!1863063))

(declare-fun m!1863175 () Bool)

(assert (=> d!469339 m!1863175))

(assert (=> d!469339 m!1863171))

(assert (=> d!469339 m!1863175))

(declare-fun m!1863177 () Bool)

(assert (=> d!469339 m!1863177))

(declare-fun m!1863179 () Bool)

(assert (=> d!469339 m!1863179))

(declare-fun m!1863181 () Bool)

(assert (=> d!469339 m!1863181))

(assert (=> d!469339 m!1863175))

(declare-fun m!1863183 () Bool)

(assert (=> b!1580095 m!1863183))

(declare-fun m!1863185 () Bool)

(assert (=> b!1580096 m!1863185))

(assert (=> b!1580097 m!1863175))

(assert (=> b!1580097 m!1863175))

(assert (=> b!1580097 m!1863171))

(assert (=> b!1580097 m!1863171))

(assert (=> b!1580097 m!1863173))

(declare-fun m!1863187 () Bool)

(assert (=> b!1580097 m!1863187))

(assert (=> b!1580072 d!469339))

(declare-fun d!469341 () Bool)

(assert (=> d!469341 (= (isEmpty!10379 rules!1846) ((_ is Nil!17372) rules!1846))))

(assert (=> b!1580070 d!469341))

(declare-fun d!469343 () Bool)

(declare-fun isEmpty!10382 (Option!3114) Bool)

(assert (=> d!469343 (= (isDefined!2493 lt!552794) (not (isEmpty!10382 lt!552794)))))

(declare-fun bs!390847 () Bool)

(assert (= bs!390847 d!469343))

(declare-fun m!1863189 () Bool)

(assert (=> bs!390847 m!1863189))

(assert (=> b!1580071 d!469343))

(declare-fun b!1580145 () Bool)

(declare-fun e!1015101 () Unit!27015)

(declare-fun Unit!27031 () Unit!27015)

(assert (=> b!1580145 (= e!1015101 Unit!27031)))

(declare-fun b!1580143 () Bool)

(declare-fun lt!552938 () Token!5688)

(declare-fun e!1015100 () Bool)

(declare-datatypes ((Option!3116 0))(
  ( (None!3115) (Some!3115 (v!23958 Rule!5922)) )
))
(declare-fun get!4962 (Option!3116) Rule!5922)

(declare-fun getRuleFromTag!234 (LexerInterface!2690 List!17442 String!20087) Option!3116)

(assert (=> b!1580143 (= e!1015100 (= (rule!4857 lt!552938) (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938))))))))

(declare-fun b!1580144 () Bool)

(declare-fun Unit!27034 () Unit!27015)

(assert (=> b!1580144 (= e!1015101 Unit!27034)))

(declare-fun lt!552944 () List!17439)

(assert (=> b!1580144 (= lt!552944 (++!4511 lt!552801 lt!552795))))

(declare-fun lt!552937 () Unit!27015)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!128 (LexerInterface!2690 Rule!5922 List!17442 List!17439) Unit!27015)

(assert (=> b!1580144 (= lt!552937 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!128 thiss!17113 (rule!4857 lt!552938) rules!1846 lt!552944))))

(declare-fun maxPrefixOneRule!725 (LexerInterface!2690 Rule!5922 List!17439) Option!3114)

(assert (=> b!1580144 (isEmpty!10382 (maxPrefixOneRule!725 thiss!17113 (rule!4857 lt!552938) lt!552944))))

(declare-fun lt!552933 () Unit!27015)

(assert (=> b!1580144 (= lt!552933 lt!552937)))

(declare-fun lt!552931 () List!17439)

(assert (=> b!1580144 (= lt!552931 (list!6715 (charsOf!1710 lt!552938)))))

(declare-fun lt!552940 () Unit!27015)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!124 (LexerInterface!2690 Rule!5922 List!17439 List!17439) Unit!27015)

(assert (=> b!1580144 (= lt!552940 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!124 thiss!17113 (rule!4857 lt!552938) lt!552931 (++!4511 lt!552801 lt!552795)))))

(declare-fun matchR!1910 (Regex!4389 List!17439) Bool)

(assert (=> b!1580144 (not (matchR!1910 (regex!3061 (rule!4857 lt!552938)) lt!552931))))

(declare-fun lt!552941 () Unit!27015)

(assert (=> b!1580144 (= lt!552941 lt!552940)))

(assert (=> b!1580144 false))

(declare-fun b!1580142 () Bool)

(declare-fun res!704475 () Bool)

(assert (=> b!1580142 (=> (not res!704475) (not e!1015100))))

(assert (=> b!1580142 (= res!704475 (matchR!1910 (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938))))) (list!6715 (charsOf!1710 lt!552938))))))

(declare-fun d!469345 () Bool)

(assert (=> d!469345 (isDefined!2493 (maxPrefix!1254 thiss!17113 rules!1846 (++!4511 lt!552801 lt!552795)))))

(declare-fun lt!552945 () Unit!27015)

(assert (=> d!469345 (= lt!552945 e!1015101)))

(declare-fun c!256035 () Bool)

(assert (=> d!469345 (= c!256035 (isEmpty!10382 (maxPrefix!1254 thiss!17113 rules!1846 (++!4511 lt!552801 lt!552795))))))

(declare-fun lt!552943 () Unit!27015)

(declare-fun lt!552939 () Unit!27015)

(assert (=> d!469345 (= lt!552943 lt!552939)))

(assert (=> d!469345 e!1015100))

(declare-fun res!704476 () Bool)

(assert (=> d!469345 (=> (not res!704476) (not e!1015100))))

(declare-fun isDefined!2495 (Option!3116) Bool)

(assert (=> d!469345 (= res!704476 (isDefined!2495 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!234 (LexerInterface!2690 List!17442 List!17439 Token!5688) Unit!27015)

(assert (=> d!469345 (= lt!552939 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!234 thiss!17113 rules!1846 lt!552801 lt!552938))))

(declare-fun lt!552932 () Unit!27015)

(declare-fun lt!552936 () Unit!27015)

(assert (=> d!469345 (= lt!552932 lt!552936)))

(declare-fun lt!552934 () List!17439)

(assert (=> d!469345 (isPrefix!1321 lt!552934 (++!4511 lt!552801 lt!552795))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!120 (List!17439 List!17439 List!17439) Unit!27015)

(assert (=> d!469345 (= lt!552936 (lemmaPrefixStaysPrefixWhenAddingToSuffix!120 lt!552934 lt!552801 lt!552795))))

(assert (=> d!469345 (= lt!552934 (list!6715 (charsOf!1710 lt!552938)))))

(declare-fun lt!552947 () Unit!27015)

(declare-fun lt!552946 () Unit!27015)

(assert (=> d!469345 (= lt!552947 lt!552946)))

(declare-fun lt!552935 () List!17439)

(declare-fun lt!552942 () List!17439)

(assert (=> d!469345 (isPrefix!1321 lt!552935 (++!4511 lt!552935 lt!552942))))

(assert (=> d!469345 (= lt!552946 (lemmaConcatTwoListThenFirstIsPrefix!846 lt!552935 lt!552942))))

(declare-fun get!4964 (Option!3114) tuple2!16840)

(assert (=> d!469345 (= lt!552942 (_2!9822 (get!4964 (maxPrefix!1254 thiss!17113 rules!1846 lt!552801))))))

(assert (=> d!469345 (= lt!552935 (list!6715 (charsOf!1710 lt!552938)))))

(declare-fun head!3187 (List!17441) Token!5688)

(assert (=> d!469345 (= lt!552938 (head!3187 (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))))))

(assert (=> d!469345 (not (isEmpty!10379 rules!1846))))

(assert (=> d!469345 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!264 thiss!17113 rules!1846 lt!552801 lt!552795) lt!552945)))

(assert (= (and d!469345 res!704476) b!1580142))

(assert (= (and b!1580142 res!704475) b!1580143))

(assert (= (and d!469345 c!256035) b!1580144))

(assert (= (and d!469345 (not c!256035)) b!1580145))

(declare-fun m!1863291 () Bool)

(assert (=> b!1580143 m!1863291))

(assert (=> b!1580143 m!1863291))

(declare-fun m!1863293 () Bool)

(assert (=> b!1580143 m!1863293))

(assert (=> b!1580144 m!1863107))

(declare-fun m!1863295 () Bool)

(assert (=> b!1580144 m!1863295))

(declare-fun m!1863297 () Bool)

(assert (=> b!1580144 m!1863297))

(declare-fun m!1863299 () Bool)

(assert (=> b!1580144 m!1863299))

(assert (=> b!1580144 m!1863297))

(declare-fun m!1863301 () Bool)

(assert (=> b!1580144 m!1863301))

(declare-fun m!1863303 () Bool)

(assert (=> b!1580144 m!1863303))

(declare-fun m!1863305 () Bool)

(assert (=> b!1580144 m!1863305))

(declare-fun m!1863307 () Bool)

(assert (=> b!1580144 m!1863307))

(assert (=> b!1580144 m!1863305))

(assert (=> b!1580144 m!1863107))

(assert (=> b!1580142 m!1863291))

(assert (=> b!1580142 m!1863293))

(assert (=> b!1580142 m!1863297))

(assert (=> b!1580142 m!1863301))

(declare-fun m!1863309 () Bool)

(assert (=> b!1580142 m!1863309))

(assert (=> b!1580142 m!1863297))

(assert (=> b!1580142 m!1863301))

(assert (=> b!1580142 m!1863291))

(assert (=> d!469345 m!1863107))

(declare-fun m!1863311 () Bool)

(assert (=> d!469345 m!1863311))

(assert (=> d!469345 m!1863067))

(declare-fun m!1863313 () Bool)

(assert (=> d!469345 m!1863313))

(assert (=> d!469345 m!1863297))

(assert (=> d!469345 m!1863301))

(assert (=> d!469345 m!1863067))

(assert (=> d!469345 m!1863069))

(declare-fun m!1863315 () Bool)

(assert (=> d!469345 m!1863315))

(declare-fun m!1863317 () Bool)

(assert (=> d!469345 m!1863317))

(assert (=> d!469345 m!1863107))

(declare-fun m!1863319 () Bool)

(assert (=> d!469345 m!1863319))

(assert (=> d!469345 m!1863063))

(assert (=> d!469345 m!1863315))

(declare-fun m!1863321 () Bool)

(assert (=> d!469345 m!1863321))

(assert (=> d!469345 m!1863291))

(assert (=> d!469345 m!1863291))

(declare-fun m!1863323 () Bool)

(assert (=> d!469345 m!1863323))

(declare-fun m!1863325 () Bool)

(assert (=> d!469345 m!1863325))

(declare-fun m!1863327 () Bool)

(assert (=> d!469345 m!1863327))

(assert (=> d!469345 m!1863297))

(declare-fun m!1863329 () Bool)

(assert (=> d!469345 m!1863329))

(declare-fun m!1863331 () Bool)

(assert (=> d!469345 m!1863331))

(declare-fun m!1863333 () Bool)

(assert (=> d!469345 m!1863333))

(assert (=> d!469345 m!1863107))

(assert (=> d!469345 m!1863329))

(assert (=> d!469345 m!1863311))

(declare-fun m!1863335 () Bool)

(assert (=> d!469345 m!1863335))

(assert (=> d!469345 m!1863325))

(assert (=> d!469345 m!1863329))

(declare-fun m!1863337 () Bool)

(assert (=> d!469345 m!1863337))

(assert (=> b!1580071 d!469345))

(declare-fun d!469355 () Bool)

(declare-fun prefixMatchZipperSequence!404 (Regex!4389 BalanceConc!11484) Bool)

(declare-fun rulesRegex!451 (LexerInterface!2690 List!17442) Regex!4389)

(declare-fun ++!4513 (BalanceConc!11484 BalanceConc!11484) BalanceConc!11484)

(declare-fun singletonSeq!1401 (C!8952) BalanceConc!11484)

(declare-fun apply!4210 (BalanceConc!11484 Int) C!8952)

(assert (=> d!469355 (= (separableTokensPredicate!632 thiss!17113 (h!22772 tokens!457) (h!22772 (t!143642 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!404 (rulesRegex!451 thiss!17113 rules!1846) (++!4513 (charsOf!1710 (h!22772 tokens!457)) (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))))))))

(declare-fun bs!390849 () Bool)

(assert (= bs!390849 d!469355))

(declare-fun m!1863339 () Bool)

(assert (=> bs!390849 m!1863339))

(assert (=> bs!390849 m!1863339))

(declare-fun m!1863341 () Bool)

(assert (=> bs!390849 m!1863341))

(declare-fun m!1863343 () Bool)

(assert (=> bs!390849 m!1863343))

(assert (=> bs!390849 m!1863149))

(assert (=> bs!390849 m!1863091))

(declare-fun m!1863345 () Bool)

(assert (=> bs!390849 m!1863345))

(declare-fun m!1863347 () Bool)

(assert (=> bs!390849 m!1863347))

(assert (=> bs!390849 m!1863091))

(assert (=> bs!390849 m!1863347))

(assert (=> bs!390849 m!1863341))

(assert (=> bs!390849 m!1863149))

(assert (=> bs!390849 m!1863345))

(assert (=> b!1580074 d!469355))

(declare-fun d!469357 () Bool)

(declare-fun list!6719 (Conc!5770) List!17439)

(assert (=> d!469357 (= (list!6715 lt!552798) (list!6719 (c!256021 lt!552798)))))

(declare-fun bs!390850 () Bool)

(assert (= bs!390850 d!469357))

(declare-fun m!1863349 () Bool)

(assert (=> bs!390850 m!1863349))

(assert (=> b!1580053 d!469357))

(declare-fun b!1580173 () Bool)

(declare-fun e!1015115 () Bool)

(declare-fun e!1015114 () Bool)

(assert (=> b!1580173 (= e!1015115 e!1015114)))

(declare-fun res!704503 () Bool)

(assert (=> b!1580173 (=> (not res!704503) (not e!1015114))))

(declare-fun lt!552968 () Option!3114)

(assert (=> b!1580173 (= res!704503 (isDefined!2493 lt!552968))))

(declare-fun b!1580174 () Bool)

(declare-fun e!1015116 () Option!3114)

(declare-fun lt!552966 () Option!3114)

(declare-fun lt!552965 () Option!3114)

(assert (=> b!1580174 (= e!1015116 (ite (and ((_ is None!3113) lt!552966) ((_ is None!3113) lt!552965)) None!3113 (ite ((_ is None!3113) lt!552965) lt!552966 (ite ((_ is None!3113) lt!552966) lt!552965 (ite (>= (size!13968 (_1!9822 (v!23950 lt!552966))) (size!13968 (_1!9822 (v!23950 lt!552965)))) lt!552966 lt!552965)))))))

(declare-fun call!102689 () Option!3114)

(assert (=> b!1580174 (= lt!552966 call!102689)))

(assert (=> b!1580174 (= lt!552965 (maxPrefix!1254 thiss!17113 (t!143643 rules!1846) lt!552796))))

(declare-fun b!1580175 () Bool)

(declare-fun res!704506 () Bool)

(assert (=> b!1580175 (=> (not res!704506) (not e!1015114))))

(assert (=> b!1580175 (= res!704506 (matchR!1910 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))) (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))))))

(declare-fun b!1580176 () Bool)

(declare-fun contains!3026 (List!17442 Rule!5922) Bool)

(assert (=> b!1580176 (= e!1015114 (contains!3026 rules!1846 (rule!4857 (_1!9822 (get!4964 lt!552968)))))))

(declare-fun b!1580177 () Bool)

(declare-fun res!704504 () Bool)

(assert (=> b!1580177 (=> (not res!704504) (not e!1015114))))

(declare-fun size!13973 (List!17439) Int)

(assert (=> b!1580177 (= res!704504 (< (size!13973 (_2!9822 (get!4964 lt!552968))) (size!13973 lt!552796)))))

(declare-fun b!1580178 () Bool)

(assert (=> b!1580178 (= e!1015116 call!102689)))

(declare-fun b!1580179 () Bool)

(declare-fun res!704502 () Bool)

(assert (=> b!1580179 (=> (not res!704502) (not e!1015114))))

(declare-fun apply!4212 (TokenValueInjection!5962 BalanceConc!11484) TokenValue!3151)

(assert (=> b!1580179 (= res!704502 (= (value!96911 (_1!9822 (get!4964 lt!552968))) (apply!4212 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!552968)))))))))

(declare-fun b!1580180 () Bool)

(declare-fun res!704505 () Bool)

(assert (=> b!1580180 (=> (not res!704505) (not e!1015114))))

(assert (=> b!1580180 (= res!704505 (= (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968)))) (originalCharacters!3875 (_1!9822 (get!4964 lt!552968)))))))

(declare-fun b!1580181 () Bool)

(declare-fun res!704501 () Bool)

(assert (=> b!1580181 (=> (not res!704501) (not e!1015114))))

(assert (=> b!1580181 (= res!704501 (= (++!4511 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968)))) (_2!9822 (get!4964 lt!552968))) lt!552796))))

(declare-fun bm!102684 () Bool)

(assert (=> bm!102684 (= call!102689 (maxPrefixOneRule!725 thiss!17113 (h!22773 rules!1846) lt!552796))))

(declare-fun d!469359 () Bool)

(assert (=> d!469359 e!1015115))

(declare-fun res!704500 () Bool)

(assert (=> d!469359 (=> res!704500 e!1015115)))

(assert (=> d!469359 (= res!704500 (isEmpty!10382 lt!552968))))

(assert (=> d!469359 (= lt!552968 e!1015116)))

(declare-fun c!256038 () Bool)

(assert (=> d!469359 (= c!256038 (and ((_ is Cons!17372) rules!1846) ((_ is Nil!17372) (t!143643 rules!1846))))))

(declare-fun lt!552964 () Unit!27015)

(declare-fun lt!552967 () Unit!27015)

(assert (=> d!469359 (= lt!552964 lt!552967)))

(assert (=> d!469359 (isPrefix!1321 lt!552796 lt!552796)))

(declare-fun lemmaIsPrefixRefl!909 (List!17439 List!17439) Unit!27015)

(assert (=> d!469359 (= lt!552967 (lemmaIsPrefixRefl!909 lt!552796 lt!552796))))

(declare-fun rulesValidInductive!911 (LexerInterface!2690 List!17442) Bool)

(assert (=> d!469359 (rulesValidInductive!911 thiss!17113 rules!1846)))

(assert (=> d!469359 (= (maxPrefix!1254 thiss!17113 rules!1846 lt!552796) lt!552968)))

(assert (= (and d!469359 c!256038) b!1580178))

(assert (= (and d!469359 (not c!256038)) b!1580174))

(assert (= (or b!1580178 b!1580174) bm!102684))

(assert (= (and d!469359 (not res!704500)) b!1580173))

(assert (= (and b!1580173 res!704503) b!1580180))

(assert (= (and b!1580180 res!704505) b!1580177))

(assert (= (and b!1580177 res!704504) b!1580181))

(assert (= (and b!1580181 res!704501) b!1580179))

(assert (= (and b!1580179 res!704502) b!1580175))

(assert (= (and b!1580175 res!704506) b!1580176))

(declare-fun m!1863377 () Bool)

(assert (=> b!1580174 m!1863377))

(declare-fun m!1863379 () Bool)

(assert (=> b!1580180 m!1863379))

(declare-fun m!1863381 () Bool)

(assert (=> b!1580180 m!1863381))

(assert (=> b!1580180 m!1863381))

(declare-fun m!1863383 () Bool)

(assert (=> b!1580180 m!1863383))

(declare-fun m!1863385 () Bool)

(assert (=> d!469359 m!1863385))

(declare-fun m!1863387 () Bool)

(assert (=> d!469359 m!1863387))

(declare-fun m!1863389 () Bool)

(assert (=> d!469359 m!1863389))

(declare-fun m!1863391 () Bool)

(assert (=> d!469359 m!1863391))

(assert (=> b!1580176 m!1863379))

(declare-fun m!1863393 () Bool)

(assert (=> b!1580176 m!1863393))

(declare-fun m!1863395 () Bool)

(assert (=> bm!102684 m!1863395))

(assert (=> b!1580179 m!1863379))

(declare-fun m!1863397 () Bool)

(assert (=> b!1580179 m!1863397))

(assert (=> b!1580179 m!1863397))

(declare-fun m!1863399 () Bool)

(assert (=> b!1580179 m!1863399))

(assert (=> b!1580181 m!1863379))

(assert (=> b!1580181 m!1863381))

(assert (=> b!1580181 m!1863381))

(assert (=> b!1580181 m!1863383))

(assert (=> b!1580181 m!1863383))

(declare-fun m!1863401 () Bool)

(assert (=> b!1580181 m!1863401))

(declare-fun m!1863403 () Bool)

(assert (=> b!1580173 m!1863403))

(assert (=> b!1580175 m!1863379))

(assert (=> b!1580175 m!1863381))

(assert (=> b!1580175 m!1863381))

(assert (=> b!1580175 m!1863383))

(assert (=> b!1580175 m!1863383))

(declare-fun m!1863405 () Bool)

(assert (=> b!1580175 m!1863405))

(assert (=> b!1580177 m!1863379))

(declare-fun m!1863407 () Bool)

(assert (=> b!1580177 m!1863407))

(declare-fun m!1863409 () Bool)

(assert (=> b!1580177 m!1863409))

(assert (=> b!1580053 d!469359))

(declare-fun d!469365 () Bool)

(declare-fun lt!552992 () BalanceConc!11484)

(declare-fun printListTailRec!305 (LexerInterface!2690 List!17441 List!17439) List!17439)

(declare-fun dropList!511 (BalanceConc!11486 Int) List!17441)

(assert (=> d!469365 (= (list!6715 lt!552992) (printListTailRec!305 thiss!17113 (dropList!511 lt!552802 0) (list!6715 (BalanceConc!11485 Empty!5770))))))

(declare-fun e!1015127 () BalanceConc!11484)

(assert (=> d!469365 (= lt!552992 e!1015127)))

(declare-fun c!256044 () Bool)

(assert (=> d!469365 (= c!256044 (>= 0 (size!13972 lt!552802)))))

(declare-fun e!1015128 () Bool)

(assert (=> d!469365 e!1015128))

(declare-fun res!704515 () Bool)

(assert (=> d!469365 (=> (not res!704515) (not e!1015128))))

(assert (=> d!469365 (= res!704515 (>= 0 0))))

(assert (=> d!469365 (= (printTailRec!743 thiss!17113 lt!552802 0 (BalanceConc!11485 Empty!5770)) lt!552992)))

(declare-fun b!1580200 () Bool)

(assert (=> b!1580200 (= e!1015128 (<= 0 (size!13972 lt!552802)))))

(declare-fun b!1580201 () Bool)

(assert (=> b!1580201 (= e!1015127 (BalanceConc!11485 Empty!5770))))

(declare-fun b!1580202 () Bool)

(assert (=> b!1580202 (= e!1015127 (printTailRec!743 thiss!17113 lt!552802 (+ 0 1) (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (apply!4209 lt!552802 0)))))))

(declare-fun lt!552995 () List!17441)

(assert (=> b!1580202 (= lt!552995 (list!6716 lt!552802))))

(declare-fun lt!552991 () Unit!27015)

(declare-fun lemmaDropApply!512 (List!17441 Int) Unit!27015)

(assert (=> b!1580202 (= lt!552991 (lemmaDropApply!512 lt!552995 0))))

(declare-fun drop!814 (List!17441 Int) List!17441)

(declare-fun apply!4214 (List!17441 Int) Token!5688)

(assert (=> b!1580202 (= (head!3187 (drop!814 lt!552995 0)) (apply!4214 lt!552995 0))))

(declare-fun lt!552989 () Unit!27015)

(assert (=> b!1580202 (= lt!552989 lt!552991)))

(declare-fun lt!552990 () List!17441)

(assert (=> b!1580202 (= lt!552990 (list!6716 lt!552802))))

(declare-fun lt!552993 () Unit!27015)

(declare-fun lemmaDropTail!492 (List!17441 Int) Unit!27015)

(assert (=> b!1580202 (= lt!552993 (lemmaDropTail!492 lt!552990 0))))

(declare-fun tail!2253 (List!17441) List!17441)

(assert (=> b!1580202 (= (tail!2253 (drop!814 lt!552990 0)) (drop!814 lt!552990 (+ 0 1)))))

(declare-fun lt!552994 () Unit!27015)

(assert (=> b!1580202 (= lt!552994 lt!552993)))

(assert (= (and d!469365 res!704515) b!1580200))

(assert (= (and d!469365 c!256044) b!1580201))

(assert (= (and d!469365 (not c!256044)) b!1580202))

(declare-fun m!1863433 () Bool)

(assert (=> d!469365 m!1863433))

(declare-fun m!1863435 () Bool)

(assert (=> d!469365 m!1863435))

(assert (=> d!469365 m!1863435))

(assert (=> d!469365 m!1863433))

(declare-fun m!1863437 () Bool)

(assert (=> d!469365 m!1863437))

(declare-fun m!1863439 () Bool)

(assert (=> d!469365 m!1863439))

(declare-fun m!1863441 () Bool)

(assert (=> d!469365 m!1863441))

(assert (=> b!1580200 m!1863441))

(declare-fun m!1863443 () Bool)

(assert (=> b!1580202 m!1863443))

(declare-fun m!1863445 () Bool)

(assert (=> b!1580202 m!1863445))

(declare-fun m!1863447 () Bool)

(assert (=> b!1580202 m!1863447))

(declare-fun m!1863449 () Bool)

(assert (=> b!1580202 m!1863449))

(declare-fun m!1863451 () Bool)

(assert (=> b!1580202 m!1863451))

(declare-fun m!1863453 () Bool)

(assert (=> b!1580202 m!1863453))

(declare-fun m!1863455 () Bool)

(assert (=> b!1580202 m!1863455))

(declare-fun m!1863457 () Bool)

(assert (=> b!1580202 m!1863457))

(assert (=> b!1580202 m!1863453))

(declare-fun m!1863459 () Bool)

(assert (=> b!1580202 m!1863459))

(assert (=> b!1580202 m!1863449))

(declare-fun m!1863461 () Bool)

(assert (=> b!1580202 m!1863461))

(declare-fun m!1863463 () Bool)

(assert (=> b!1580202 m!1863463))

(declare-fun m!1863465 () Bool)

(assert (=> b!1580202 m!1863465))

(declare-fun m!1863467 () Bool)

(assert (=> b!1580202 m!1863467))

(assert (=> b!1580202 m!1863461))

(assert (=> b!1580202 m!1863447))

(assert (=> b!1580202 m!1863457))

(assert (=> b!1580053 d!469365))

(declare-fun d!469373 () Bool)

(declare-fun c!256047 () Bool)

(assert (=> d!469373 (= c!256047 ((_ is Cons!17371) (Cons!17371 (h!22772 tokens!457) Nil!17371)))))

(declare-fun e!1015131 () List!17439)

(assert (=> d!469373 (= (printList!805 thiss!17113 (Cons!17371 (h!22772 tokens!457) Nil!17371)) e!1015131)))

(declare-fun b!1580207 () Bool)

(assert (=> b!1580207 (= e!1015131 (++!4511 (list!6715 (charsOf!1710 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))) (printList!805 thiss!17113 (t!143642 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))))

(declare-fun b!1580208 () Bool)

(assert (=> b!1580208 (= e!1015131 Nil!17369)))

(assert (= (and d!469373 c!256047) b!1580207))

(assert (= (and d!469373 (not c!256047)) b!1580208))

(declare-fun m!1863469 () Bool)

(assert (=> b!1580207 m!1863469))

(assert (=> b!1580207 m!1863469))

(declare-fun m!1863471 () Bool)

(assert (=> b!1580207 m!1863471))

(declare-fun m!1863473 () Bool)

(assert (=> b!1580207 m!1863473))

(assert (=> b!1580207 m!1863471))

(assert (=> b!1580207 m!1863473))

(declare-fun m!1863475 () Bool)

(assert (=> b!1580207 m!1863475))

(assert (=> b!1580053 d!469373))

(declare-fun d!469375 () Bool)

(declare-fun lt!552998 () BalanceConc!11484)

(assert (=> d!469375 (= (list!6715 lt!552998) (printList!805 thiss!17113 (list!6716 lt!552802)))))

(assert (=> d!469375 (= lt!552998 (printTailRec!743 thiss!17113 lt!552802 0 (BalanceConc!11485 Empty!5770)))))

(assert (=> d!469375 (= (print!1221 thiss!17113 lt!552802) lt!552998)))

(declare-fun bs!390854 () Bool)

(assert (= bs!390854 d!469375))

(declare-fun m!1863477 () Bool)

(assert (=> bs!390854 m!1863477))

(assert (=> bs!390854 m!1863445))

(assert (=> bs!390854 m!1863445))

(declare-fun m!1863479 () Bool)

(assert (=> bs!390854 m!1863479))

(assert (=> bs!390854 m!1863131))

(assert (=> b!1580053 d!469375))

(declare-fun d!469377 () Bool)

(declare-fun e!1015134 () Bool)

(assert (=> d!469377 e!1015134))

(declare-fun res!704518 () Bool)

(assert (=> d!469377 (=> (not res!704518) (not e!1015134))))

(declare-fun lt!553001 () BalanceConc!11486)

(assert (=> d!469377 (= res!704518 (= (list!6716 lt!553001) (Cons!17371 (h!22772 tokens!457) Nil!17371)))))

(declare-fun singleton!572 (Token!5688) BalanceConc!11486)

(assert (=> d!469377 (= lt!553001 (singleton!572 (h!22772 tokens!457)))))

(assert (=> d!469377 (= (singletonSeq!1399 (h!22772 tokens!457)) lt!553001)))

(declare-fun b!1580211 () Bool)

(declare-fun isBalanced!1691 (Conc!5771) Bool)

(assert (=> b!1580211 (= e!1015134 (isBalanced!1691 (c!256023 lt!553001)))))

(assert (= (and d!469377 res!704518) b!1580211))

(declare-fun m!1863481 () Bool)

(assert (=> d!469377 m!1863481))

(declare-fun m!1863483 () Bool)

(assert (=> d!469377 m!1863483))

(declare-fun m!1863485 () Bool)

(assert (=> b!1580211 m!1863485))

(assert (=> b!1580053 d!469377))

(declare-fun lt!553004 () Bool)

(declare-fun d!469379 () Bool)

(declare-fun isEmpty!10383 (List!17441) Bool)

(assert (=> d!469379 (= lt!553004 (isEmpty!10383 (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))))))

(declare-fun isEmpty!10384 (Conc!5771) Bool)

(assert (=> d!469379 (= lt!553004 (isEmpty!10384 (c!256023 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))))))

(assert (=> d!469379 (= (isEmpty!10378 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801)))) lt!553004)))

(declare-fun bs!390855 () Bool)

(assert (= bs!390855 d!469379))

(assert (=> bs!390855 m!1863325))

(assert (=> bs!390855 m!1863325))

(declare-fun m!1863487 () Bool)

(assert (=> bs!390855 m!1863487))

(declare-fun m!1863489 () Bool)

(assert (=> bs!390855 m!1863489))

(assert (=> b!1580064 d!469379))

(declare-fun b!1580237 () Bool)

(declare-fun e!1015151 () Bool)

(declare-fun e!1015150 () Bool)

(assert (=> b!1580237 (= e!1015151 e!1015150)))

(declare-fun res!704536 () Bool)

(declare-fun lt!553014 () tuple2!16842)

(declare-fun size!13974 (BalanceConc!11484) Int)

(assert (=> b!1580237 (= res!704536 (< (size!13974 (_2!9823 lt!553014)) (size!13974 (seqFromList!1872 lt!552801))))))

(assert (=> b!1580237 (=> (not res!704536) (not e!1015150))))

(declare-fun b!1580238 () Bool)

(assert (=> b!1580238 (= e!1015150 (not (isEmpty!10378 (_1!9823 lt!553014))))))

(declare-fun b!1580239 () Bool)

(declare-fun e!1015152 () Bool)

(declare-datatypes ((tuple2!16846 0))(
  ( (tuple2!16847 (_1!9825 List!17441) (_2!9825 List!17439)) )
))
(declare-fun lexList!779 (LexerInterface!2690 List!17442 List!17439) tuple2!16846)

(assert (=> b!1580239 (= e!1015152 (= (list!6715 (_2!9823 lt!553014)) (_2!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 (seqFromList!1872 lt!552801))))))))

(declare-fun d!469381 () Bool)

(assert (=> d!469381 e!1015152))

(declare-fun res!704535 () Bool)

(assert (=> d!469381 (=> (not res!704535) (not e!1015152))))

(assert (=> d!469381 (= res!704535 e!1015151)))

(declare-fun c!256053 () Bool)

(assert (=> d!469381 (= c!256053 (> (size!13972 (_1!9823 lt!553014)) 0))))

(declare-fun lexTailRecV2!502 (LexerInterface!2690 List!17442 BalanceConc!11484 BalanceConc!11484 BalanceConc!11484 BalanceConc!11486) tuple2!16842)

(assert (=> d!469381 (= lt!553014 (lexTailRecV2!502 thiss!17113 rules!1846 (seqFromList!1872 lt!552801) (BalanceConc!11485 Empty!5770) (seqFromList!1872 lt!552801) (BalanceConc!11487 Empty!5771)))))

(assert (=> d!469381 (= (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801)) lt!553014)))

(declare-fun b!1580240 () Bool)

(declare-fun res!704534 () Bool)

(assert (=> b!1580240 (=> (not res!704534) (not e!1015152))))

(assert (=> b!1580240 (= res!704534 (= (list!6716 (_1!9823 lt!553014)) (_1!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 (seqFromList!1872 lt!552801))))))))

(declare-fun b!1580241 () Bool)

(assert (=> b!1580241 (= e!1015151 (= (_2!9823 lt!553014) (seqFromList!1872 lt!552801)))))

(assert (= (and d!469381 c!256053) b!1580237))

(assert (= (and d!469381 (not c!256053)) b!1580241))

(assert (= (and b!1580237 res!704536) b!1580238))

(assert (= (and d!469381 res!704535) b!1580240))

(assert (= (and b!1580240 res!704534) b!1580239))

(declare-fun m!1863525 () Bool)

(assert (=> b!1580237 m!1863525))

(assert (=> b!1580237 m!1863067))

(declare-fun m!1863527 () Bool)

(assert (=> b!1580237 m!1863527))

(declare-fun m!1863529 () Bool)

(assert (=> b!1580239 m!1863529))

(assert (=> b!1580239 m!1863067))

(declare-fun m!1863531 () Bool)

(assert (=> b!1580239 m!1863531))

(assert (=> b!1580239 m!1863531))

(declare-fun m!1863533 () Bool)

(assert (=> b!1580239 m!1863533))

(declare-fun m!1863535 () Bool)

(assert (=> d!469381 m!1863535))

(assert (=> d!469381 m!1863067))

(assert (=> d!469381 m!1863067))

(declare-fun m!1863537 () Bool)

(assert (=> d!469381 m!1863537))

(declare-fun m!1863539 () Bool)

(assert (=> b!1580238 m!1863539))

(declare-fun m!1863541 () Bool)

(assert (=> b!1580240 m!1863541))

(assert (=> b!1580240 m!1863067))

(assert (=> b!1580240 m!1863531))

(assert (=> b!1580240 m!1863531))

(assert (=> b!1580240 m!1863533))

(assert (=> b!1580064 d!469381))

(declare-fun d!469399 () Bool)

(declare-fun fromListB!793 (List!17439) BalanceConc!11484)

(assert (=> d!469399 (= (seqFromList!1872 lt!552801) (fromListB!793 lt!552801))))

(declare-fun bs!390862 () Bool)

(assert (= bs!390862 d!469399))

(declare-fun m!1863543 () Bool)

(assert (=> bs!390862 m!1863543))

(assert (=> b!1580064 d!469399))

(declare-fun d!469401 () Bool)

(declare-fun res!704547 () Bool)

(declare-fun e!1015163 () Bool)

(assert (=> d!469401 (=> res!704547 e!1015163)))

(assert (=> d!469401 (= res!704547 (or (not ((_ is Cons!17371) tokens!457)) (not ((_ is Cons!17371) (t!143642 tokens!457)))))))

(assert (=> d!469401 (= (tokensListTwoByTwoPredicateSeparableList!383 thiss!17113 tokens!457 rules!1846) e!1015163)))

(declare-fun b!1580258 () Bool)

(declare-fun e!1015164 () Bool)

(assert (=> b!1580258 (= e!1015163 e!1015164)))

(declare-fun res!704548 () Bool)

(assert (=> b!1580258 (=> (not res!704548) (not e!1015164))))

(assert (=> b!1580258 (= res!704548 (separableTokensPredicate!632 thiss!17113 (h!22772 tokens!457) (h!22772 (t!143642 tokens!457)) rules!1846))))

(declare-fun lt!553084 () Unit!27015)

(declare-fun Unit!27035 () Unit!27015)

(assert (=> b!1580258 (= lt!553084 Unit!27035)))

(assert (=> b!1580258 (> (size!13974 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) 0)))

(declare-fun lt!553085 () Unit!27015)

(declare-fun Unit!27036 () Unit!27015)

(assert (=> b!1580258 (= lt!553085 Unit!27036)))

(assert (=> b!1580258 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 (t!143642 tokens!457)))))

(declare-fun lt!553083 () Unit!27015)

(declare-fun Unit!27037 () Unit!27015)

(assert (=> b!1580258 (= lt!553083 Unit!27037)))

(assert (=> b!1580258 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 tokens!457))))

(declare-fun lt!553080 () Unit!27015)

(declare-fun lt!553081 () Unit!27015)

(assert (=> b!1580258 (= lt!553080 lt!553081)))

(assert (=> b!1580258 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 (t!143642 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!514 (LexerInterface!2690 List!17442 List!17441 Token!5688) Unit!27015)

(assert (=> b!1580258 (= lt!553081 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!514 thiss!17113 rules!1846 tokens!457 (h!22772 (t!143642 tokens!457))))))

(declare-fun lt!553082 () Unit!27015)

(declare-fun lt!553086 () Unit!27015)

(assert (=> b!1580258 (= lt!553082 lt!553086)))

(assert (=> b!1580258 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 tokens!457))))

(assert (=> b!1580258 (= lt!553086 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!514 thiss!17113 rules!1846 tokens!457 (h!22772 tokens!457)))))

(declare-fun b!1580259 () Bool)

(assert (=> b!1580259 (= e!1015164 (tokensListTwoByTwoPredicateSeparableList!383 thiss!17113 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))) rules!1846))))

(assert (= (and d!469401 (not res!704547)) b!1580258))

(assert (= (and b!1580258 res!704548) b!1580259))

(assert (=> b!1580258 m!1863119))

(assert (=> b!1580258 m!1863149))

(declare-fun m!1863593 () Bool)

(assert (=> b!1580258 m!1863593))

(declare-fun m!1863595 () Bool)

(assert (=> b!1580258 m!1863595))

(assert (=> b!1580258 m!1863149))

(declare-fun m!1863597 () Bool)

(assert (=> b!1580258 m!1863597))

(assert (=> b!1580258 m!1863081))

(assert (=> b!1580258 m!1863117))

(declare-fun m!1863599 () Bool)

(assert (=> b!1580259 m!1863599))

(assert (=> b!1580062 d!469401))

(declare-fun b!1580298 () Bool)

(declare-fun e!1015197 () Bool)

(assert (=> b!1580298 (= e!1015197 true)))

(declare-fun b!1580297 () Bool)

(declare-fun e!1015196 () Bool)

(assert (=> b!1580297 (= e!1015196 e!1015197)))

(declare-fun b!1580296 () Bool)

(declare-fun e!1015195 () Bool)

(assert (=> b!1580296 (= e!1015195 e!1015196)))

(declare-fun d!469405 () Bool)

(assert (=> d!469405 e!1015195))

(assert (= b!1580297 b!1580298))

(assert (= b!1580296 b!1580297))

(assert (= (and d!469405 ((_ is Cons!17372) rules!1846)) b!1580296))

(declare-fun order!10231 () Int)

(declare-fun order!10233 () Int)

(declare-fun lambda!66454 () Int)

(declare-fun dynLambda!7692 (Int Int) Int)

(declare-fun dynLambda!7693 (Int Int) Int)

(assert (=> b!1580298 (< (dynLambda!7692 order!10231 (toValue!4464 (transformation!3061 (h!22773 rules!1846)))) (dynLambda!7693 order!10233 lambda!66454))))

(declare-fun order!10235 () Int)

(declare-fun dynLambda!7694 (Int Int) Int)

(assert (=> b!1580298 (< (dynLambda!7694 order!10235 (toChars!4323 (transformation!3061 (h!22773 rules!1846)))) (dynLambda!7693 order!10233 lambda!66454))))

(assert (=> d!469405 true))

(declare-fun lt!553092 () Bool)

(declare-fun forall!3990 (List!17441 Int) Bool)

(assert (=> d!469405 (= lt!553092 (forall!3990 tokens!457 lambda!66454))))

(declare-fun e!1015188 () Bool)

(assert (=> d!469405 (= lt!553092 e!1015188)))

(declare-fun res!704563 () Bool)

(assert (=> d!469405 (=> res!704563 e!1015188)))

(assert (=> d!469405 (= res!704563 (not ((_ is Cons!17371) tokens!457)))))

(assert (=> d!469405 (not (isEmpty!10379 rules!1846))))

(assert (=> d!469405 (= (rulesProduceEachTokenIndividuallyList!892 thiss!17113 rules!1846 tokens!457) lt!553092)))

(declare-fun b!1580286 () Bool)

(declare-fun e!1015187 () Bool)

(assert (=> b!1580286 (= e!1015188 e!1015187)))

(declare-fun res!704562 () Bool)

(assert (=> b!1580286 (=> (not res!704562) (not e!1015187))))

(assert (=> b!1580286 (= res!704562 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 tokens!457)))))

(declare-fun b!1580287 () Bool)

(assert (=> b!1580287 (= e!1015187 (rulesProduceEachTokenIndividuallyList!892 thiss!17113 rules!1846 (t!143642 tokens!457)))))

(assert (= (and d!469405 (not res!704563)) b!1580286))

(assert (= (and b!1580286 res!704562) b!1580287))

(declare-fun m!1863609 () Bool)

(assert (=> d!469405 m!1863609))

(assert (=> d!469405 m!1863063))

(assert (=> b!1580286 m!1863117))

(declare-fun m!1863611 () Bool)

(assert (=> b!1580287 m!1863611))

(assert (=> b!1580073 d!469405))

(declare-fun d!469411 () Bool)

(declare-fun lt!553095 () Bool)

(declare-fun isEmpty!10386 (List!17439) Bool)

(assert (=> d!469411 (= lt!553095 (isEmpty!10386 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(declare-fun isEmpty!10387 (Conc!5770) Bool)

(assert (=> d!469411 (= lt!553095 (isEmpty!10387 (c!256021 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!469411 (= (isEmpty!10377 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) lt!553095)))

(declare-fun bs!390863 () Bool)

(assert (= bs!390863 d!469411))

(assert (=> bs!390863 m!1863149))

(declare-fun m!1863613 () Bool)

(assert (=> bs!390863 m!1863613))

(assert (=> bs!390863 m!1863613))

(declare-fun m!1863615 () Bool)

(assert (=> bs!390863 m!1863615))

(declare-fun m!1863617 () Bool)

(assert (=> bs!390863 m!1863617))

(assert (=> b!1580063 d!469411))

(declare-fun d!469413 () Bool)

(declare-fun lt!553098 () BalanceConc!11484)

(assert (=> d!469413 (= (list!6715 lt!553098) (originalCharacters!3875 (h!22772 (t!143642 tokens!457))))))

(declare-fun dynLambda!7695 (Int TokenValue!3151) BalanceConc!11484)

(assert (=> d!469413 (= lt!553098 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457)))))))

(assert (=> d!469413 (= (charsOf!1710 (h!22772 (t!143642 tokens!457))) lt!553098)))

(declare-fun b_lambda!49717 () Bool)

(assert (=> (not b_lambda!49717) (not d!469413)))

(declare-fun t!143656 () Bool)

(declare-fun tb!88843 () Bool)

(assert (=> (and b!1580060 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))) t!143656) tb!88843))

(declare-fun b!1580311 () Bool)

(declare-fun e!1015204 () Bool)

(declare-fun tp!465240 () Bool)

(declare-fun inv!22787 (Conc!5770) Bool)

(assert (=> b!1580311 (= e!1015204 (and (inv!22787 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457)))))) tp!465240))))

(declare-fun result!107516 () Bool)

(declare-fun inv!22788 (BalanceConc!11484) Bool)

(assert (=> tb!88843 (= result!107516 (and (inv!22788 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457))))) e!1015204))))

(assert (= tb!88843 b!1580311))

(declare-fun m!1863619 () Bool)

(assert (=> b!1580311 m!1863619))

(declare-fun m!1863621 () Bool)

(assert (=> tb!88843 m!1863621))

(assert (=> d!469413 t!143656))

(declare-fun b_and!110717 () Bool)

(assert (= b_and!110703 (and (=> t!143656 result!107516) b_and!110717)))

(declare-fun t!143658 () Bool)

(declare-fun tb!88845 () Bool)

(assert (=> (and b!1580067 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))) t!143658) tb!88845))

(declare-fun result!107520 () Bool)

(assert (= result!107520 result!107516))

(assert (=> d!469413 t!143658))

(declare-fun b_and!110719 () Bool)

(assert (= b_and!110707 (and (=> t!143658 result!107520) b_and!110719)))

(declare-fun m!1863623 () Bool)

(assert (=> d!469413 m!1863623))

(declare-fun m!1863625 () Bool)

(assert (=> d!469413 m!1863625))

(assert (=> b!1580063 d!469413))

(declare-fun d!469415 () Bool)

(declare-fun lt!553113 () BalanceConc!11484)

(assert (=> d!469415 (= (list!6715 lt!553113) (printList!805 thiss!17113 (list!6716 (seqFromList!1871 tokens!457))))))

(assert (=> d!469415 (= lt!553113 (printTailRec!743 thiss!17113 (seqFromList!1871 tokens!457) 0 (BalanceConc!11485 Empty!5770)))))

(assert (=> d!469415 (= (print!1221 thiss!17113 (seqFromList!1871 tokens!457)) lt!553113)))

(declare-fun bs!390864 () Bool)

(assert (= bs!390864 d!469415))

(declare-fun m!1863627 () Bool)

(assert (=> bs!390864 m!1863627))

(assert (=> bs!390864 m!1863095))

(declare-fun m!1863629 () Bool)

(assert (=> bs!390864 m!1863629))

(assert (=> bs!390864 m!1863629))

(declare-fun m!1863631 () Bool)

(assert (=> bs!390864 m!1863631))

(assert (=> bs!390864 m!1863095))

(declare-fun m!1863633 () Bool)

(assert (=> bs!390864 m!1863633))

(assert (=> b!1580066 d!469415))

(declare-fun b!1580325 () Bool)

(declare-fun res!704572 () Bool)

(declare-fun e!1015211 () Bool)

(assert (=> b!1580325 (=> (not res!704572) (not e!1015211))))

(declare-fun lt!553124 () List!17439)

(assert (=> b!1580325 (= res!704572 (= (size!13973 lt!553124) (+ (size!13973 lt!552801) (size!13973 lt!552795))))))

(declare-fun b!1580324 () Bool)

(declare-fun e!1015212 () List!17439)

(assert (=> b!1580324 (= e!1015212 (Cons!17369 (h!22770 lt!552801) (++!4511 (t!143640 lt!552801) lt!552795)))))

(declare-fun d!469417 () Bool)

(assert (=> d!469417 e!1015211))

(declare-fun res!704571 () Bool)

(assert (=> d!469417 (=> (not res!704571) (not e!1015211))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2385 (List!17439) (InoxSet C!8952))

(assert (=> d!469417 (= res!704571 (= (content!2385 lt!553124) ((_ map or) (content!2385 lt!552801) (content!2385 lt!552795))))))

(assert (=> d!469417 (= lt!553124 e!1015212)))

(declare-fun c!256062 () Bool)

(assert (=> d!469417 (= c!256062 ((_ is Nil!17369) lt!552801))))

(assert (=> d!469417 (= (++!4511 lt!552801 lt!552795) lt!553124)))

(declare-fun b!1580326 () Bool)

(assert (=> b!1580326 (= e!1015211 (or (not (= lt!552795 Nil!17369)) (= lt!553124 lt!552801)))))

(declare-fun b!1580323 () Bool)

(assert (=> b!1580323 (= e!1015212 lt!552795)))

(assert (= (and d!469417 c!256062) b!1580323))

(assert (= (and d!469417 (not c!256062)) b!1580324))

(assert (= (and d!469417 res!704571) b!1580325))

(assert (= (and b!1580325 res!704572) b!1580326))

(declare-fun m!1863677 () Bool)

(assert (=> b!1580325 m!1863677))

(declare-fun m!1863679 () Bool)

(assert (=> b!1580325 m!1863679))

(declare-fun m!1863681 () Bool)

(assert (=> b!1580325 m!1863681))

(declare-fun m!1863683 () Bool)

(assert (=> b!1580324 m!1863683))

(declare-fun m!1863685 () Bool)

(assert (=> d!469417 m!1863685))

(declare-fun m!1863687 () Bool)

(assert (=> d!469417 m!1863687))

(declare-fun m!1863689 () Bool)

(assert (=> d!469417 m!1863689))

(assert (=> b!1580066 d!469417))

(declare-fun b!1580327 () Bool)

(declare-fun e!1015214 () Bool)

(declare-fun e!1015213 () Bool)

(assert (=> b!1580327 (= e!1015214 e!1015213)))

(declare-fun res!704575 () Bool)

(declare-fun lt!553125 () tuple2!16842)

(assert (=> b!1580327 (= res!704575 (< (size!13974 (_2!9823 lt!553125)) (size!13974 lt!552788)))))

(assert (=> b!1580327 (=> (not res!704575) (not e!1015213))))

(declare-fun b!1580328 () Bool)

(assert (=> b!1580328 (= e!1015213 (not (isEmpty!10378 (_1!9823 lt!553125))))))

(declare-fun e!1015215 () Bool)

(declare-fun b!1580329 () Bool)

(assert (=> b!1580329 (= e!1015215 (= (list!6715 (_2!9823 lt!553125)) (_2!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 lt!552788)))))))

(declare-fun d!469425 () Bool)

(assert (=> d!469425 e!1015215))

(declare-fun res!704574 () Bool)

(assert (=> d!469425 (=> (not res!704574) (not e!1015215))))

(assert (=> d!469425 (= res!704574 e!1015214)))

(declare-fun c!256063 () Bool)

(assert (=> d!469425 (= c!256063 (> (size!13972 (_1!9823 lt!553125)) 0))))

(assert (=> d!469425 (= lt!553125 (lexTailRecV2!502 thiss!17113 rules!1846 lt!552788 (BalanceConc!11485 Empty!5770) lt!552788 (BalanceConc!11487 Empty!5771)))))

(assert (=> d!469425 (= (lex!1174 thiss!17113 rules!1846 lt!552788) lt!553125)))

(declare-fun b!1580330 () Bool)

(declare-fun res!704573 () Bool)

(assert (=> b!1580330 (=> (not res!704573) (not e!1015215))))

(assert (=> b!1580330 (= res!704573 (= (list!6716 (_1!9823 lt!553125)) (_1!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 lt!552788)))))))

(declare-fun b!1580331 () Bool)

(assert (=> b!1580331 (= e!1015214 (= (_2!9823 lt!553125) lt!552788))))

(assert (= (and d!469425 c!256063) b!1580327))

(assert (= (and d!469425 (not c!256063)) b!1580331))

(assert (= (and b!1580327 res!704575) b!1580328))

(assert (= (and d!469425 res!704574) b!1580330))

(assert (= (and b!1580330 res!704573) b!1580329))

(declare-fun m!1863691 () Bool)

(assert (=> b!1580327 m!1863691))

(declare-fun m!1863693 () Bool)

(assert (=> b!1580327 m!1863693))

(declare-fun m!1863695 () Bool)

(assert (=> b!1580329 m!1863695))

(assert (=> b!1580329 m!1863099))

(assert (=> b!1580329 m!1863099))

(declare-fun m!1863697 () Bool)

(assert (=> b!1580329 m!1863697))

(declare-fun m!1863699 () Bool)

(assert (=> d!469425 m!1863699))

(declare-fun m!1863701 () Bool)

(assert (=> d!469425 m!1863701))

(declare-fun m!1863703 () Bool)

(assert (=> b!1580328 m!1863703))

(declare-fun m!1863705 () Bool)

(assert (=> b!1580330 m!1863705))

(assert (=> b!1580330 m!1863099))

(assert (=> b!1580330 m!1863099))

(assert (=> b!1580330 m!1863697))

(assert (=> b!1580066 d!469425))

(declare-fun d!469427 () Bool)

(assert (=> d!469427 (= (list!6715 lt!552788) (list!6719 (c!256021 lt!552788)))))

(declare-fun bs!390867 () Bool)

(assert (= bs!390867 d!469427))

(declare-fun m!1863707 () Bool)

(assert (=> bs!390867 m!1863707))

(assert (=> b!1580066 d!469427))

(declare-fun d!469429 () Bool)

(assert (=> d!469429 (= (list!6715 lt!552793) (list!6719 (c!256021 lt!552793)))))

(declare-fun bs!390868 () Bool)

(assert (= bs!390868 d!469429))

(declare-fun m!1863709 () Bool)

(assert (=> bs!390868 m!1863709))

(assert (=> b!1580066 d!469429))

(declare-fun d!469431 () Bool)

(declare-fun lt!553126 () BalanceConc!11484)

(assert (=> d!469431 (= (list!6715 lt!553126) (printList!805 thiss!17113 (list!6716 lt!552804)))))

(assert (=> d!469431 (= lt!553126 (printTailRec!743 thiss!17113 lt!552804 0 (BalanceConc!11485 Empty!5770)))))

(assert (=> d!469431 (= (print!1221 thiss!17113 lt!552804) lt!553126)))

(declare-fun bs!390869 () Bool)

(assert (= bs!390869 d!469431))

(declare-fun m!1863711 () Bool)

(assert (=> bs!390869 m!1863711))

(assert (=> bs!390869 m!1863141))

(assert (=> bs!390869 m!1863141))

(declare-fun m!1863713 () Bool)

(assert (=> bs!390869 m!1863713))

(declare-fun m!1863715 () Bool)

(assert (=> bs!390869 m!1863715))

(assert (=> b!1580066 d!469431))

(declare-fun d!469433 () Bool)

(declare-fun fromListB!794 (List!17441) BalanceConc!11486)

(assert (=> d!469433 (= (seqFromList!1871 tokens!457) (fromListB!794 tokens!457))))

(declare-fun bs!390870 () Bool)

(assert (= bs!390870 d!469433))

(declare-fun m!1863717 () Bool)

(assert (=> bs!390870 m!1863717))

(assert (=> b!1580066 d!469433))

(declare-fun d!469435 () Bool)

(declare-fun lt!553127 () BalanceConc!11484)

(assert (=> d!469435 (= (list!6715 lt!553127) (originalCharacters!3875 (h!22772 tokens!457)))))

(assert (=> d!469435 (= lt!553127 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457))))))

(assert (=> d!469435 (= (charsOf!1710 (h!22772 tokens!457)) lt!553127)))

(declare-fun b_lambda!49719 () Bool)

(assert (=> (not b_lambda!49719) (not d!469435)))

(declare-fun tb!88847 () Bool)

(declare-fun t!143660 () Bool)

(assert (=> (and b!1580060 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457))))) t!143660) tb!88847))

(declare-fun b!1580332 () Bool)

(declare-fun e!1015216 () Bool)

(declare-fun tp!465241 () Bool)

(assert (=> b!1580332 (= e!1015216 (and (inv!22787 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457))))) tp!465241))))

(declare-fun result!107522 () Bool)

(assert (=> tb!88847 (= result!107522 (and (inv!22788 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457)))) e!1015216))))

(assert (= tb!88847 b!1580332))

(declare-fun m!1863719 () Bool)

(assert (=> b!1580332 m!1863719))

(declare-fun m!1863721 () Bool)

(assert (=> tb!88847 m!1863721))

(assert (=> d!469435 t!143660))

(declare-fun b_and!110721 () Bool)

(assert (= b_and!110717 (and (=> t!143660 result!107522) b_and!110721)))

(declare-fun t!143662 () Bool)

(declare-fun tb!88849 () Bool)

(assert (=> (and b!1580067 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457))))) t!143662) tb!88849))

(declare-fun result!107524 () Bool)

(assert (= result!107524 result!107522))

(assert (=> d!469435 t!143662))

(declare-fun b_and!110723 () Bool)

(assert (= b_and!110719 (and (=> t!143662 result!107524) b_and!110723)))

(declare-fun m!1863723 () Bool)

(assert (=> d!469435 m!1863723))

(declare-fun m!1863725 () Bool)

(assert (=> d!469435 m!1863725))

(assert (=> b!1580066 d!469435))

(declare-fun d!469437 () Bool)

(assert (=> d!469437 (= (seqFromList!1871 (t!143642 tokens!457)) (fromListB!794 (t!143642 tokens!457)))))

(declare-fun bs!390871 () Bool)

(assert (= bs!390871 d!469437))

(declare-fun m!1863727 () Bool)

(assert (=> bs!390871 m!1863727))

(assert (=> b!1580066 d!469437))

(declare-fun d!469439 () Bool)

(assert (=> d!469439 (= (list!6715 (charsOf!1710 (h!22772 tokens!457))) (list!6719 (c!256021 (charsOf!1710 (h!22772 tokens!457)))))))

(declare-fun bs!390872 () Bool)

(assert (= bs!390872 d!469439))

(declare-fun m!1863729 () Bool)

(assert (=> bs!390872 m!1863729))

(assert (=> b!1580066 d!469439))

(declare-fun d!469441 () Bool)

(assert (=> d!469441 (= (inv!22780 (tag!3327 (rule!4857 (h!22772 tokens!457)))) (= (mod (str.len (value!96910 (tag!3327 (rule!4857 (h!22772 tokens!457))))) 2) 0))))

(assert (=> b!1580056 d!469441))

(declare-fun d!469443 () Bool)

(declare-fun res!704578 () Bool)

(declare-fun e!1015219 () Bool)

(assert (=> d!469443 (=> (not res!704578) (not e!1015219))))

(declare-fun semiInverseModEq!1150 (Int Int) Bool)

(assert (=> d!469443 (= res!704578 (semiInverseModEq!1150 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toValue!4464 (transformation!3061 (rule!4857 (h!22772 tokens!457))))))))

(assert (=> d!469443 (= (inv!22783 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) e!1015219)))

(declare-fun b!1580335 () Bool)

(declare-fun equivClasses!1091 (Int Int) Bool)

(assert (=> b!1580335 (= e!1015219 (equivClasses!1091 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toValue!4464 (transformation!3061 (rule!4857 (h!22772 tokens!457))))))))

(assert (= (and d!469443 res!704578) b!1580335))

(declare-fun m!1863731 () Bool)

(assert (=> d!469443 m!1863731))

(declare-fun m!1863733 () Bool)

(assert (=> b!1580335 m!1863733))

(assert (=> b!1580056 d!469443))

(declare-fun d!469445 () Bool)

(declare-fun list!6720 (Conc!5771) List!17441)

(assert (=> d!469445 (= (list!6716 (_1!9823 lt!552797)) (list!6720 (c!256023 (_1!9823 lt!552797))))))

(declare-fun bs!390873 () Bool)

(assert (= bs!390873 d!469445))

(declare-fun m!1863735 () Bool)

(assert (=> bs!390873 m!1863735))

(assert (=> b!1580065 d!469445))

(declare-fun d!469447 () Bool)

(declare-fun e!1015293 () Bool)

(assert (=> d!469447 e!1015293))

(declare-fun res!704621 () Bool)

(assert (=> d!469447 (=> (not res!704621) (not e!1015293))))

(assert (=> d!469447 (= res!704621 (= (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457)))))) (t!143642 tokens!457)))))

(declare-fun lt!553249 () Unit!27015)

(declare-fun e!1015292 () Unit!27015)

(assert (=> d!469447 (= lt!553249 e!1015292)))

(declare-fun c!256074 () Bool)

(assert (=> d!469447 (= c!256074 (or ((_ is Nil!17371) (t!143642 tokens!457)) ((_ is Nil!17371) (t!143642 (t!143642 tokens!457)))))))

(assert (=> d!469447 (not (isEmpty!10379 rules!1846))))

(assert (=> d!469447 (= (theoremInvertabilityWhenTokenListSeparable!135 thiss!17113 rules!1846 (t!143642 tokens!457)) lt!553249)))

(declare-fun b!1580445 () Bool)

(declare-fun Unit!27041 () Unit!27015)

(assert (=> b!1580445 (= e!1015292 Unit!27041)))

(declare-fun b!1580446 () Bool)

(declare-fun Unit!27042 () Unit!27015)

(assert (=> b!1580446 (= e!1015292 Unit!27042)))

(declare-fun lt!553242 () BalanceConc!11484)

(assert (=> b!1580446 (= lt!553242 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457))))))

(declare-fun lt!553238 () BalanceConc!11484)

(assert (=> b!1580446 (= lt!553238 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))))))

(declare-fun lt!553251 () tuple2!16842)

(assert (=> b!1580446 (= lt!553251 (lex!1174 thiss!17113 rules!1846 lt!553238))))

(declare-fun lt!553256 () List!17439)

(assert (=> b!1580446 (= lt!553256 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))

(declare-fun lt!553259 () List!17439)

(assert (=> b!1580446 (= lt!553259 (list!6715 lt!553238))))

(declare-fun lt!553257 () Unit!27015)

(assert (=> b!1580446 (= lt!553257 (lemmaConcatTwoListThenFirstIsPrefix!846 lt!553256 lt!553259))))

(assert (=> b!1580446 (isPrefix!1321 lt!553256 (++!4511 lt!553256 lt!553259))))

(declare-fun lt!553240 () Unit!27015)

(assert (=> b!1580446 (= lt!553240 lt!553257)))

(declare-fun lt!553253 () Unit!27015)

(assert (=> b!1580446 (= lt!553253 (theoremInvertabilityWhenTokenListSeparable!135 thiss!17113 rules!1846 (t!143642 (t!143642 tokens!457))))))

(declare-fun lt!553258 () Unit!27015)

(assert (=> b!1580446 (= lt!553258 (seqFromListBHdTlConstructive!138 (h!22772 (t!143642 (t!143642 tokens!457))) (t!143642 (t!143642 (t!143642 tokens!457))) (_1!9823 lt!553251)))))

(assert (=> b!1580446 (= (list!6716 (_1!9823 lt!553251)) (list!6716 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 (t!143642 tokens!457))))))))

(declare-fun lt!553250 () Unit!27015)

(assert (=> b!1580446 (= lt!553250 lt!553258)))

(declare-fun lt!553245 () Option!3114)

(assert (=> b!1580446 (= lt!553245 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 lt!553242)))))

(assert (=> b!1580446 (= (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))) (printTailRec!743 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))) 0 (BalanceConc!11485 Empty!5770)))))

(declare-fun lt!553252 () Unit!27015)

(declare-fun Unit!27043 () Unit!27015)

(assert (=> b!1580446 (= lt!553252 Unit!27043)))

(declare-fun lt!553246 () Unit!27015)

(assert (=> b!1580446 (= lt!553246 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!264 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238)))))

(assert (=> b!1580446 (= (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (originalCharacters!3875 (h!22772 (t!143642 tokens!457))))))

(declare-fun lt!553239 () Unit!27015)

(declare-fun Unit!27044 () Unit!27015)

(assert (=> b!1580446 (= lt!553239 Unit!27044)))

(declare-fun head!3188 (List!17439) C!8952)

(assert (=> b!1580446 (= (list!6715 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))) 0))) (Cons!17369 (head!3188 (originalCharacters!3875 (h!22772 (t!143642 (t!143642 tokens!457))))) Nil!17369))))

(declare-fun lt!553237 () Unit!27015)

(declare-fun Unit!27045 () Unit!27015)

(assert (=> b!1580446 (= lt!553237 Unit!27045)))

(assert (=> b!1580446 (= (list!6715 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))) 0))) (Cons!17369 (head!3188 (list!6715 lt!553238)) Nil!17369))))

(declare-fun lt!553241 () Unit!27015)

(declare-fun Unit!27046 () Unit!27015)

(assert (=> b!1580446 (= lt!553241 Unit!27046)))

(declare-fun head!3189 (BalanceConc!11484) C!8952)

(assert (=> b!1580446 (= (list!6715 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))) 0))) (Cons!17369 (head!3189 lt!553238) Nil!17369))))

(declare-fun lt!553236 () Unit!27015)

(declare-fun Unit!27047 () Unit!27015)

(assert (=> b!1580446 (= lt!553236 Unit!27047)))

(assert (=> b!1580446 (isDefined!2493 (maxPrefix!1254 thiss!17113 rules!1846 (originalCharacters!3875 (h!22772 (t!143642 tokens!457)))))))

(declare-fun lt!553255 () Unit!27015)

(declare-fun Unit!27048 () Unit!27015)

(assert (=> b!1580446 (= lt!553255 Unit!27048)))

(assert (=> b!1580446 (isDefined!2493 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(declare-fun lt!553243 () Unit!27015)

(declare-fun Unit!27049 () Unit!27015)

(assert (=> b!1580446 (= lt!553243 Unit!27049)))

(declare-fun lt!553235 () Unit!27015)

(declare-fun Unit!27050 () Unit!27015)

(assert (=> b!1580446 (= lt!553235 Unit!27050)))

(assert (=> b!1580446 (= (_1!9822 (get!4964 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))) (h!22772 (t!143642 tokens!457)))))

(declare-fun lt!553248 () Unit!27015)

(declare-fun Unit!27051 () Unit!27015)

(assert (=> b!1580446 (= lt!553248 Unit!27051)))

(assert (=> b!1580446 (isEmpty!10386 (_2!9822 (get!4964 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))))

(declare-fun lt!553247 () Unit!27015)

(declare-fun Unit!27052 () Unit!27015)

(assert (=> b!1580446 (= lt!553247 Unit!27052)))

(assert (=> b!1580446 (matchR!1910 (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))) (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))

(declare-fun lt!553260 () Unit!27015)

(declare-fun Unit!27053 () Unit!27015)

(assert (=> b!1580446 (= lt!553260 Unit!27053)))

(assert (=> b!1580446 (= (rule!4857 (h!22772 (t!143642 tokens!457))) (rule!4857 (h!22772 (t!143642 tokens!457))))))

(declare-fun lt!553254 () Unit!27015)

(declare-fun Unit!27054 () Unit!27015)

(assert (=> b!1580446 (= lt!553254 Unit!27054)))

(declare-fun lt!553244 () Unit!27015)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!60 (LexerInterface!2690 List!17442 Token!5688 Rule!5922 List!17439) Unit!27015)

(assert (=> b!1580446 (= lt!553244 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!60 thiss!17113 rules!1846 (h!22772 (t!143642 tokens!457)) (rule!4857 (h!22772 (t!143642 tokens!457))) (list!6715 lt!553238)))))

(declare-fun b!1580447 () Bool)

(assert (=> b!1580447 (= e!1015293 (isEmpty!10377 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457)))))))))

(assert (= (and d!469447 c!256074) b!1580445))

(assert (= (and d!469447 (not c!256074)) b!1580446))

(assert (= (and d!469447 res!704621) b!1580447))

(declare-fun m!1863881 () Bool)

(assert (=> d!469447 m!1863881))

(declare-fun m!1863883 () Bool)

(assert (=> d!469447 m!1863883))

(assert (=> d!469447 m!1863093))

(assert (=> d!469447 m!1863093))

(assert (=> d!469447 m!1863881))

(assert (=> d!469447 m!1863063))

(declare-fun m!1863885 () Bool)

(assert (=> d!469447 m!1863885))

(declare-fun m!1863887 () Bool)

(assert (=> b!1580446 m!1863887))

(declare-fun m!1863889 () Bool)

(assert (=> b!1580446 m!1863889))

(declare-fun m!1863891 () Bool)

(assert (=> b!1580446 m!1863891))

(declare-fun m!1863893 () Bool)

(assert (=> b!1580446 m!1863893))

(declare-fun m!1863895 () Bool)

(assert (=> b!1580446 m!1863895))

(declare-fun m!1863897 () Bool)

(assert (=> b!1580446 m!1863897))

(assert (=> b!1580446 m!1863149))

(declare-fun m!1863899 () Bool)

(assert (=> b!1580446 m!1863899))

(assert (=> b!1580446 m!1863897))

(declare-fun m!1863901 () Bool)

(assert (=> b!1580446 m!1863901))

(declare-fun m!1863903 () Bool)

(assert (=> b!1580446 m!1863903))

(declare-fun m!1863905 () Bool)

(assert (=> b!1580446 m!1863905))

(assert (=> b!1580446 m!1863093))

(assert (=> b!1580446 m!1863899))

(declare-fun m!1863907 () Bool)

(assert (=> b!1580446 m!1863907))

(declare-fun m!1863909 () Bool)

(assert (=> b!1580446 m!1863909))

(assert (=> b!1580446 m!1863175))

(assert (=> b!1580446 m!1863171))

(declare-fun m!1863911 () Bool)

(assert (=> b!1580446 m!1863911))

(declare-fun m!1863913 () Bool)

(assert (=> b!1580446 m!1863913))

(assert (=> b!1580446 m!1863143))

(declare-fun m!1863915 () Bool)

(assert (=> b!1580446 m!1863915))

(declare-fun m!1863917 () Bool)

(assert (=> b!1580446 m!1863917))

(assert (=> b!1580446 m!1863149))

(assert (=> b!1580446 m!1863613))

(assert (=> b!1580446 m!1863909))

(assert (=> b!1580446 m!1863911))

(assert (=> b!1580446 m!1863891))

(assert (=> b!1580446 m!1863143))

(declare-fun m!1863919 () Bool)

(assert (=> b!1580446 m!1863919))

(declare-fun m!1863921 () Bool)

(assert (=> b!1580446 m!1863921))

(declare-fun m!1863923 () Bool)

(assert (=> b!1580446 m!1863923))

(assert (=> b!1580446 m!1863613))

(declare-fun m!1863925 () Bool)

(assert (=> b!1580446 m!1863925))

(declare-fun m!1863927 () Bool)

(assert (=> b!1580446 m!1863927))

(assert (=> b!1580446 m!1863175))

(declare-fun m!1863929 () Bool)

(assert (=> b!1580446 m!1863929))

(declare-fun m!1863931 () Bool)

(assert (=> b!1580446 m!1863931))

(assert (=> b!1580446 m!1863613))

(assert (=> b!1580446 m!1863903))

(declare-fun m!1863933 () Bool)

(assert (=> b!1580446 m!1863933))

(assert (=> b!1580446 m!1863895))

(declare-fun m!1863935 () Bool)

(assert (=> b!1580446 m!1863935))

(declare-fun m!1863937 () Bool)

(assert (=> b!1580446 m!1863937))

(assert (=> b!1580446 m!1863613))

(assert (=> b!1580446 m!1863887))

(declare-fun m!1863939 () Bool)

(assert (=> b!1580446 m!1863939))

(assert (=> b!1580446 m!1863887))

(assert (=> b!1580446 m!1863933))

(assert (=> b!1580446 m!1863175))

(declare-fun m!1863941 () Bool)

(assert (=> b!1580446 m!1863941))

(assert (=> b!1580446 m!1863903))

(declare-fun m!1863943 () Bool)

(assert (=> b!1580446 m!1863943))

(assert (=> b!1580446 m!1863929))

(declare-fun m!1863945 () Bool)

(assert (=> b!1580446 m!1863945))

(assert (=> b!1580446 m!1863887))

(declare-fun m!1863947 () Bool)

(assert (=> b!1580446 m!1863947))

(assert (=> b!1580446 m!1863093))

(assert (=> b!1580446 m!1863881))

(assert (=> b!1580447 m!1863093))

(assert (=> b!1580447 m!1863093))

(assert (=> b!1580447 m!1863881))

(assert (=> b!1580447 m!1863881))

(assert (=> b!1580447 m!1863883))

(declare-fun m!1863949 () Bool)

(assert (=> b!1580447 m!1863949))

(assert (=> b!1580065 d!469447))

(declare-fun b!1580457 () Bool)

(declare-fun res!704630 () Bool)

(declare-fun e!1015302 () Bool)

(assert (=> b!1580457 (=> (not res!704630) (not e!1015302))))

(assert (=> b!1580457 (= res!704630 (= (head!3188 lt!552801) (head!3188 lt!552805)))))

(declare-fun b!1580456 () Bool)

(declare-fun e!1015301 () Bool)

(assert (=> b!1580456 (= e!1015301 e!1015302)))

(declare-fun res!704632 () Bool)

(assert (=> b!1580456 (=> (not res!704632) (not e!1015302))))

(assert (=> b!1580456 (= res!704632 (not ((_ is Nil!17369) lt!552805)))))

(declare-fun b!1580459 () Bool)

(declare-fun e!1015300 () Bool)

(assert (=> b!1580459 (= e!1015300 (>= (size!13973 lt!552805) (size!13973 lt!552801)))))

(declare-fun b!1580458 () Bool)

(declare-fun tail!2254 (List!17439) List!17439)

(assert (=> b!1580458 (= e!1015302 (isPrefix!1321 (tail!2254 lt!552801) (tail!2254 lt!552805)))))

(declare-fun d!469483 () Bool)

(assert (=> d!469483 e!1015300))

(declare-fun res!704633 () Bool)

(assert (=> d!469483 (=> res!704633 e!1015300)))

(declare-fun lt!553263 () Bool)

(assert (=> d!469483 (= res!704633 (not lt!553263))))

(assert (=> d!469483 (= lt!553263 e!1015301)))

(declare-fun res!704631 () Bool)

(assert (=> d!469483 (=> res!704631 e!1015301)))

(assert (=> d!469483 (= res!704631 ((_ is Nil!17369) lt!552801))))

(assert (=> d!469483 (= (isPrefix!1321 lt!552801 lt!552805) lt!553263)))

(assert (= (and d!469483 (not res!704631)) b!1580456))

(assert (= (and b!1580456 res!704632) b!1580457))

(assert (= (and b!1580457 res!704630) b!1580458))

(assert (= (and d!469483 (not res!704633)) b!1580459))

(declare-fun m!1863951 () Bool)

(assert (=> b!1580457 m!1863951))

(declare-fun m!1863953 () Bool)

(assert (=> b!1580457 m!1863953))

(declare-fun m!1863955 () Bool)

(assert (=> b!1580459 m!1863955))

(assert (=> b!1580459 m!1863679))

(declare-fun m!1863957 () Bool)

(assert (=> b!1580458 m!1863957))

(declare-fun m!1863959 () Bool)

(assert (=> b!1580458 m!1863959))

(assert (=> b!1580458 m!1863957))

(assert (=> b!1580458 m!1863959))

(declare-fun m!1863961 () Bool)

(assert (=> b!1580458 m!1863961))

(assert (=> b!1580065 d!469483))

(declare-fun d!469485 () Bool)

(assert (=> d!469485 (isPrefix!1321 lt!552801 (++!4511 lt!552801 lt!552795))))

(declare-fun lt!553266 () Unit!27015)

(declare-fun choose!9446 (List!17439 List!17439) Unit!27015)

(assert (=> d!469485 (= lt!553266 (choose!9446 lt!552801 lt!552795))))

(assert (=> d!469485 (= (lemmaConcatTwoListThenFirstIsPrefix!846 lt!552801 lt!552795) lt!553266)))

(declare-fun bs!390881 () Bool)

(assert (= bs!390881 d!469485))

(assert (=> bs!390881 m!1863107))

(assert (=> bs!390881 m!1863107))

(declare-fun m!1863963 () Bool)

(assert (=> bs!390881 m!1863963))

(declare-fun m!1863965 () Bool)

(assert (=> bs!390881 m!1863965))

(assert (=> b!1580065 d!469485))

(declare-fun d!469487 () Bool)

(declare-fun c!256080 () Bool)

(assert (=> d!469487 (= c!256080 ((_ is IntegerValue!9453) (value!96911 (h!22772 tokens!457))))))

(declare-fun e!1015311 () Bool)

(assert (=> d!469487 (= (inv!21 (value!96911 (h!22772 tokens!457))) e!1015311)))

(declare-fun b!1580470 () Bool)

(declare-fun e!1015310 () Bool)

(declare-fun inv!15 (TokenValue!3151) Bool)

(assert (=> b!1580470 (= e!1015310 (inv!15 (value!96911 (h!22772 tokens!457))))))

(declare-fun b!1580471 () Bool)

(declare-fun inv!16 (TokenValue!3151) Bool)

(assert (=> b!1580471 (= e!1015311 (inv!16 (value!96911 (h!22772 tokens!457))))))

(declare-fun b!1580472 () Bool)

(declare-fun e!1015309 () Bool)

(assert (=> b!1580472 (= e!1015311 e!1015309)))

(declare-fun c!256079 () Bool)

(assert (=> b!1580472 (= c!256079 ((_ is IntegerValue!9454) (value!96911 (h!22772 tokens!457))))))

(declare-fun b!1580473 () Bool)

(declare-fun inv!17 (TokenValue!3151) Bool)

(assert (=> b!1580473 (= e!1015309 (inv!17 (value!96911 (h!22772 tokens!457))))))

(declare-fun b!1580474 () Bool)

(declare-fun res!704636 () Bool)

(assert (=> b!1580474 (=> res!704636 e!1015310)))

(assert (=> b!1580474 (= res!704636 (not ((_ is IntegerValue!9455) (value!96911 (h!22772 tokens!457)))))))

(assert (=> b!1580474 (= e!1015309 e!1015310)))

(assert (= (and d!469487 c!256080) b!1580471))

(assert (= (and d!469487 (not c!256080)) b!1580472))

(assert (= (and b!1580472 c!256079) b!1580473))

(assert (= (and b!1580472 (not c!256079)) b!1580474))

(assert (= (and b!1580474 (not res!704636)) b!1580470))

(declare-fun m!1863967 () Bool)

(assert (=> b!1580470 m!1863967))

(declare-fun m!1863969 () Bool)

(assert (=> b!1580471 m!1863969))

(declare-fun m!1863971 () Bool)

(assert (=> b!1580473 m!1863971))

(assert (=> b!1580055 d!469487))

(declare-fun d!469489 () Bool)

(assert (=> d!469489 (= (inv!22780 (tag!3327 (h!22773 rules!1846))) (= (mod (str.len (value!96910 (tag!3327 (h!22773 rules!1846)))) 2) 0))))

(assert (=> b!1580058 d!469489))

(declare-fun d!469491 () Bool)

(declare-fun res!704637 () Bool)

(declare-fun e!1015312 () Bool)

(assert (=> d!469491 (=> (not res!704637) (not e!1015312))))

(assert (=> d!469491 (= res!704637 (semiInverseModEq!1150 (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toValue!4464 (transformation!3061 (h!22773 rules!1846)))))))

(assert (=> d!469491 (= (inv!22783 (transformation!3061 (h!22773 rules!1846))) e!1015312)))

(declare-fun b!1580475 () Bool)

(assert (=> b!1580475 (= e!1015312 (equivClasses!1091 (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toValue!4464 (transformation!3061 (h!22773 rules!1846)))))))

(assert (= (and d!469491 res!704637) b!1580475))

(declare-fun m!1863973 () Bool)

(assert (=> d!469491 m!1863973))

(declare-fun m!1863975 () Bool)

(assert (=> b!1580475 m!1863975))

(assert (=> b!1580058 d!469491))

(declare-fun d!469493 () Bool)

(declare-fun res!704642 () Bool)

(declare-fun e!1015315 () Bool)

(assert (=> d!469493 (=> (not res!704642) (not e!1015315))))

(assert (=> d!469493 (= res!704642 (not (isEmpty!10386 (originalCharacters!3875 (h!22772 tokens!457)))))))

(assert (=> d!469493 (= (inv!22784 (h!22772 tokens!457)) e!1015315)))

(declare-fun b!1580480 () Bool)

(declare-fun res!704643 () Bool)

(assert (=> b!1580480 (=> (not res!704643) (not e!1015315))))

(assert (=> b!1580480 (= res!704643 (= (originalCharacters!3875 (h!22772 tokens!457)) (list!6715 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457))))))))

(declare-fun b!1580481 () Bool)

(assert (=> b!1580481 (= e!1015315 (= (size!13968 (h!22772 tokens!457)) (size!13973 (originalCharacters!3875 (h!22772 tokens!457)))))))

(assert (= (and d!469493 res!704642) b!1580480))

(assert (= (and b!1580480 res!704643) b!1580481))

(declare-fun b_lambda!49729 () Bool)

(assert (=> (not b_lambda!49729) (not b!1580480)))

(assert (=> b!1580480 t!143660))

(declare-fun b_and!110737 () Bool)

(assert (= b_and!110721 (and (=> t!143660 result!107522) b_and!110737)))

(assert (=> b!1580480 t!143662))

(declare-fun b_and!110739 () Bool)

(assert (= b_and!110723 (and (=> t!143662 result!107524) b_and!110739)))

(declare-fun m!1863977 () Bool)

(assert (=> d!469493 m!1863977))

(assert (=> b!1580480 m!1863725))

(assert (=> b!1580480 m!1863725))

(declare-fun m!1863979 () Bool)

(assert (=> b!1580480 m!1863979))

(declare-fun m!1863981 () Bool)

(assert (=> b!1580481 m!1863981))

(assert (=> b!1580069 d!469493))

(declare-fun d!469495 () Bool)

(assert (=> d!469495 (= (list!6716 lt!552804) (list!6720 (c!256023 lt!552804)))))

(declare-fun bs!390882 () Bool)

(assert (= bs!390882 d!469495))

(declare-fun m!1863983 () Bool)

(assert (=> bs!390882 m!1863983))

(assert (=> b!1580059 d!469495))

(declare-fun d!469497 () Bool)

(declare-fun e!1015318 () Bool)

(assert (=> d!469497 e!1015318))

(declare-fun res!704646 () Bool)

(assert (=> d!469497 (=> (not res!704646) (not e!1015318))))

(declare-fun prepend!539 (Conc!5771 Token!5688) Conc!5771)

(assert (=> d!469497 (= res!704646 (isBalanced!1691 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457)))))))

(declare-fun lt!553269 () BalanceConc!11486)

(assert (=> d!469497 (= lt!553269 (BalanceConc!11487 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457)))))))

(assert (=> d!469497 (= (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457))) lt!553269)))

(declare-fun b!1580484 () Bool)

(assert (=> b!1580484 (= e!1015318 (= (list!6716 lt!553269) (Cons!17371 (h!22772 (t!143642 tokens!457)) (list!6716 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))))))))

(assert (= (and d!469497 res!704646) b!1580484))

(declare-fun m!1863985 () Bool)

(assert (=> d!469497 m!1863985))

(assert (=> d!469497 m!1863985))

(declare-fun m!1863987 () Bool)

(assert (=> d!469497 m!1863987))

(declare-fun m!1863989 () Bool)

(assert (=> b!1580484 m!1863989))

(assert (=> b!1580484 m!1863143))

(declare-fun m!1863991 () Bool)

(assert (=> b!1580484 m!1863991))

(assert (=> b!1580059 d!469497))

(declare-fun d!469499 () Bool)

(assert (=> d!469499 (= (list!6716 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457)))) (list!6720 (c!256023 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457))))))))

(declare-fun bs!390883 () Bool)

(assert (= bs!390883 d!469499))

(declare-fun m!1863993 () Bool)

(assert (=> bs!390883 m!1863993))

(assert (=> b!1580059 d!469499))

(declare-fun d!469501 () Bool)

(assert (=> d!469501 (= (list!6716 (_1!9823 lt!552797)) (list!6716 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457)))))))

(declare-fun lt!553272 () Unit!27015)

(declare-fun choose!9447 (Token!5688 List!17441 BalanceConc!11486) Unit!27015)

(assert (=> d!469501 (= lt!553272 (choose!9447 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457)) (_1!9823 lt!552797)))))

(declare-fun $colon$colon!269 (List!17441 Token!5688) List!17441)

(assert (=> d!469501 (= (list!6716 (_1!9823 lt!552797)) (list!6716 (seqFromList!1871 ($colon$colon!269 (t!143642 (t!143642 tokens!457)) (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!469501 (= (seqFromListBHdTlConstructive!138 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457)) (_1!9823 lt!552797)) lt!553272)))

(declare-fun bs!390884 () Bool)

(assert (= bs!390884 d!469501))

(declare-fun m!1863995 () Bool)

(assert (=> bs!390884 m!1863995))

(assert (=> bs!390884 m!1863143))

(assert (=> bs!390884 m!1863145))

(assert (=> bs!390884 m!1863109))

(assert (=> bs!390884 m!1863143))

(assert (=> bs!390884 m!1863995))

(declare-fun m!1863997 () Bool)

(assert (=> bs!390884 m!1863997))

(assert (=> bs!390884 m!1863997))

(declare-fun m!1863999 () Bool)

(assert (=> bs!390884 m!1863999))

(declare-fun m!1864001 () Bool)

(assert (=> bs!390884 m!1864001))

(assert (=> bs!390884 m!1863145))

(assert (=> bs!390884 m!1863147))

(assert (=> b!1580059 d!469501))

(declare-fun d!469503 () Bool)

(assert (=> d!469503 (= (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (fromListB!794 (t!143642 (t!143642 tokens!457))))))

(declare-fun bs!390885 () Bool)

(assert (= bs!390885 d!469503))

(declare-fun m!1864003 () Bool)

(assert (=> bs!390885 m!1864003))

(assert (=> b!1580059 d!469503))

(declare-fun d!469505 () Bool)

(declare-fun lt!553274 () Bool)

(declare-fun e!1015319 () Bool)

(assert (=> d!469505 (= lt!553274 e!1015319)))

(declare-fun res!704647 () Bool)

(assert (=> d!469505 (=> (not res!704647) (not e!1015319))))

(assert (=> d!469505 (= res!704647 (= (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457)))))) (list!6716 (singletonSeq!1399 (h!22772 tokens!457)))))))

(declare-fun e!1015320 () Bool)

(assert (=> d!469505 (= lt!553274 e!1015320)))

(declare-fun res!704648 () Bool)

(assert (=> d!469505 (=> (not res!704648) (not e!1015320))))

(declare-fun lt!553273 () tuple2!16842)

(assert (=> d!469505 (= res!704648 (= (size!13972 (_1!9823 lt!553273)) 1))))

(assert (=> d!469505 (= lt!553273 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457)))))))

(assert (=> d!469505 (not (isEmpty!10379 rules!1846))))

(assert (=> d!469505 (= (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 tokens!457)) lt!553274)))

(declare-fun b!1580485 () Bool)

(declare-fun res!704649 () Bool)

(assert (=> b!1580485 (=> (not res!704649) (not e!1015320))))

(assert (=> b!1580485 (= res!704649 (= (apply!4209 (_1!9823 lt!553273) 0) (h!22772 tokens!457)))))

(declare-fun b!1580486 () Bool)

(assert (=> b!1580486 (= e!1015320 (isEmpty!10377 (_2!9823 lt!553273)))))

(declare-fun b!1580487 () Bool)

(assert (=> b!1580487 (= e!1015319 (isEmpty!10377 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457)))))))))

(assert (= (and d!469505 res!704648) b!1580485))

(assert (= (and b!1580485 res!704649) b!1580486))

(assert (= (and d!469505 res!704647) b!1580487))

(declare-fun m!1864005 () Bool)

(assert (=> d!469505 m!1864005))

(declare-fun m!1864007 () Bool)

(assert (=> d!469505 m!1864007))

(assert (=> d!469505 m!1863063))

(assert (=> d!469505 m!1863135))

(assert (=> d!469505 m!1864005))

(assert (=> d!469505 m!1863135))

(declare-fun m!1864009 () Bool)

(assert (=> d!469505 m!1864009))

(declare-fun m!1864011 () Bool)

(assert (=> d!469505 m!1864011))

(declare-fun m!1864013 () Bool)

(assert (=> d!469505 m!1864013))

(assert (=> d!469505 m!1863135))

(declare-fun m!1864015 () Bool)

(assert (=> b!1580485 m!1864015))

(declare-fun m!1864017 () Bool)

(assert (=> b!1580486 m!1864017))

(assert (=> b!1580487 m!1863135))

(assert (=> b!1580487 m!1863135))

(assert (=> b!1580487 m!1864005))

(assert (=> b!1580487 m!1864005))

(assert (=> b!1580487 m!1864007))

(declare-fun m!1864019 () Bool)

(assert (=> b!1580487 m!1864019))

(assert (=> b!1580057 d!469505))

(declare-fun d!469507 () Bool)

(declare-fun res!704652 () Bool)

(declare-fun e!1015323 () Bool)

(assert (=> d!469507 (=> (not res!704652) (not e!1015323))))

(declare-fun rulesValid!1078 (LexerInterface!2690 List!17442) Bool)

(assert (=> d!469507 (= res!704652 (rulesValid!1078 thiss!17113 rules!1846))))

(assert (=> d!469507 (= (rulesInvariant!2359 thiss!17113 rules!1846) e!1015323)))

(declare-fun b!1580490 () Bool)

(declare-datatypes ((List!17444 0))(
  ( (Nil!17374) (Cons!17374 (h!22775 String!20087) (t!143685 List!17444)) )
))
(declare-fun noDuplicateTag!1078 (LexerInterface!2690 List!17442 List!17444) Bool)

(assert (=> b!1580490 (= e!1015323 (noDuplicateTag!1078 thiss!17113 rules!1846 Nil!17374))))

(assert (= (and d!469507 res!704652) b!1580490))

(declare-fun m!1864021 () Bool)

(assert (=> d!469507 m!1864021))

(declare-fun m!1864023 () Bool)

(assert (=> b!1580490 m!1864023))

(assert (=> b!1580068 d!469507))

(declare-fun b!1580504 () Bool)

(declare-fun e!1015326 () Bool)

(declare-fun tp!465306 () Bool)

(declare-fun tp!465305 () Bool)

(assert (=> b!1580504 (= e!1015326 (and tp!465306 tp!465305))))

(declare-fun b!1580502 () Bool)

(declare-fun tp!465307 () Bool)

(declare-fun tp!465304 () Bool)

(assert (=> b!1580502 (= e!1015326 (and tp!465307 tp!465304))))

(declare-fun b!1580503 () Bool)

(declare-fun tp!465303 () Bool)

(assert (=> b!1580503 (= e!1015326 tp!465303)))

(declare-fun b!1580501 () Bool)

(declare-fun tp_is_empty!7181 () Bool)

(assert (=> b!1580501 (= e!1015326 tp_is_empty!7181)))

(assert (=> b!1580056 (= tp!465233 e!1015326)))

(assert (= (and b!1580056 ((_ is ElementMatch!4389) (regex!3061 (rule!4857 (h!22772 tokens!457))))) b!1580501))

(assert (= (and b!1580056 ((_ is Concat!7541) (regex!3061 (rule!4857 (h!22772 tokens!457))))) b!1580502))

(assert (= (and b!1580056 ((_ is Star!4389) (regex!3061 (rule!4857 (h!22772 tokens!457))))) b!1580503))

(assert (= (and b!1580056 ((_ is Union!4389) (regex!3061 (rule!4857 (h!22772 tokens!457))))) b!1580504))

(declare-fun b!1580515 () Bool)

(declare-fun b_free!42711 () Bool)

(declare-fun b_next!43415 () Bool)

(assert (=> b!1580515 (= b_free!42711 (not b_next!43415))))

(declare-fun tp!465316 () Bool)

(declare-fun b_and!110741 () Bool)

(assert (=> b!1580515 (= tp!465316 b_and!110741)))

(declare-fun b_free!42713 () Bool)

(declare-fun b_next!43417 () Bool)

(assert (=> b!1580515 (= b_free!42713 (not b_next!43417))))

(declare-fun t!143677 () Bool)

(declare-fun tb!88863 () Bool)

(assert (=> (and b!1580515 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))) t!143677) tb!88863))

(declare-fun result!107550 () Bool)

(assert (= result!107550 result!107516))

(assert (=> d!469413 t!143677))

(declare-fun tb!88865 () Bool)

(declare-fun t!143679 () Bool)

(assert (=> (and b!1580515 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457))))) t!143679) tb!88865))

(declare-fun result!107552 () Bool)

(assert (= result!107552 result!107522))

(assert (=> d!469435 t!143679))

(assert (=> b!1580480 t!143679))

(declare-fun tp!465319 () Bool)

(declare-fun b_and!110743 () Bool)

(assert (=> b!1580515 (= tp!465319 (and (=> t!143677 result!107550) (=> t!143679 result!107552) b_and!110743))))

(declare-fun e!1015337 () Bool)

(assert (=> b!1580515 (= e!1015337 (and tp!465316 tp!465319))))

(declare-fun b!1580514 () Bool)

(declare-fun tp!465318 () Bool)

(declare-fun e!1015336 () Bool)

(assert (=> b!1580514 (= e!1015336 (and tp!465318 (inv!22780 (tag!3327 (h!22773 (t!143643 rules!1846)))) (inv!22783 (transformation!3061 (h!22773 (t!143643 rules!1846)))) e!1015337))))

(declare-fun b!1580513 () Bool)

(declare-fun e!1015335 () Bool)

(declare-fun tp!465317 () Bool)

(assert (=> b!1580513 (= e!1015335 (and e!1015336 tp!465317))))

(assert (=> b!1580054 (= tp!465226 e!1015335)))

(assert (= b!1580514 b!1580515))

(assert (= b!1580513 b!1580514))

(assert (= (and b!1580054 ((_ is Cons!17372) (t!143643 rules!1846))) b!1580513))

(declare-fun m!1864025 () Bool)

(assert (=> b!1580514 m!1864025))

(declare-fun m!1864027 () Bool)

(assert (=> b!1580514 m!1864027))

(declare-fun b!1580520 () Bool)

(declare-fun e!1015341 () Bool)

(declare-fun tp!465322 () Bool)

(assert (=> b!1580520 (= e!1015341 (and tp_is_empty!7181 tp!465322))))

(assert (=> b!1580055 (= tp!465229 e!1015341)))

(assert (= (and b!1580055 ((_ is Cons!17369) (originalCharacters!3875 (h!22772 tokens!457)))) b!1580520))

(declare-fun b!1580524 () Bool)

(declare-fun e!1015342 () Bool)

(declare-fun tp!465326 () Bool)

(declare-fun tp!465325 () Bool)

(assert (=> b!1580524 (= e!1015342 (and tp!465326 tp!465325))))

(declare-fun b!1580522 () Bool)

(declare-fun tp!465327 () Bool)

(declare-fun tp!465324 () Bool)

(assert (=> b!1580522 (= e!1015342 (and tp!465327 tp!465324))))

(declare-fun b!1580523 () Bool)

(declare-fun tp!465323 () Bool)

(assert (=> b!1580523 (= e!1015342 tp!465323)))

(declare-fun b!1580521 () Bool)

(assert (=> b!1580521 (= e!1015342 tp_is_empty!7181)))

(assert (=> b!1580058 (= tp!465232 e!1015342)))

(assert (= (and b!1580058 ((_ is ElementMatch!4389) (regex!3061 (h!22773 rules!1846)))) b!1580521))

(assert (= (and b!1580058 ((_ is Concat!7541) (regex!3061 (h!22773 rules!1846)))) b!1580522))

(assert (= (and b!1580058 ((_ is Star!4389) (regex!3061 (h!22773 rules!1846)))) b!1580523))

(assert (= (and b!1580058 ((_ is Union!4389) (regex!3061 (h!22773 rules!1846)))) b!1580524))

(declare-fun b!1580538 () Bool)

(declare-fun b_free!42715 () Bool)

(declare-fun b_next!43419 () Bool)

(assert (=> b!1580538 (= b_free!42715 (not b_next!43419))))

(declare-fun tp!465341 () Bool)

(declare-fun b_and!110745 () Bool)

(assert (=> b!1580538 (= tp!465341 b_and!110745)))

(declare-fun b_free!42717 () Bool)

(declare-fun b_next!43421 () Bool)

(assert (=> b!1580538 (= b_free!42717 (not b_next!43421))))

(declare-fun t!143681 () Bool)

(declare-fun tb!88867 () Bool)

(assert (=> (and b!1580538 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))) t!143681) tb!88867))

(declare-fun result!107558 () Bool)

(assert (= result!107558 result!107516))

(assert (=> d!469413 t!143681))

(declare-fun t!143683 () Bool)

(declare-fun tb!88869 () Bool)

(assert (=> (and b!1580538 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457))))) t!143683) tb!88869))

(declare-fun result!107560 () Bool)

(assert (= result!107560 result!107522))

(assert (=> d!469435 t!143683))

(assert (=> b!1580480 t!143683))

(declare-fun b_and!110747 () Bool)

(declare-fun tp!465342 () Bool)

(assert (=> b!1580538 (= tp!465342 (and (=> t!143681 result!107558) (=> t!143683 result!107560) b_and!110747))))

(declare-fun b!1580537 () Bool)

(declare-fun e!1015360 () Bool)

(declare-fun e!1015356 () Bool)

(declare-fun tp!465338 () Bool)

(assert (=> b!1580537 (= e!1015360 (and tp!465338 (inv!22780 (tag!3327 (rule!4857 (h!22772 (t!143642 tokens!457))))) (inv!22783 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) e!1015356))))

(declare-fun e!1015355 () Bool)

(assert (=> b!1580069 (= tp!465230 e!1015355)))

(declare-fun b!1580535 () Bool)

(declare-fun tp!465340 () Bool)

(declare-fun e!1015359 () Bool)

(assert (=> b!1580535 (= e!1015355 (and (inv!22784 (h!22772 (t!143642 tokens!457))) e!1015359 tp!465340))))

(assert (=> b!1580538 (= e!1015356 (and tp!465341 tp!465342))))

(declare-fun tp!465339 () Bool)

(declare-fun b!1580536 () Bool)

(assert (=> b!1580536 (= e!1015359 (and (inv!21 (value!96911 (h!22772 (t!143642 tokens!457)))) e!1015360 tp!465339))))

(assert (= b!1580537 b!1580538))

(assert (= b!1580536 b!1580537))

(assert (= b!1580535 b!1580536))

(assert (= (and b!1580069 ((_ is Cons!17371) (t!143642 tokens!457))) b!1580535))

(declare-fun m!1864029 () Bool)

(assert (=> b!1580537 m!1864029))

(declare-fun m!1864031 () Bool)

(assert (=> b!1580537 m!1864031))

(declare-fun m!1864033 () Bool)

(assert (=> b!1580535 m!1864033))

(declare-fun m!1864035 () Bool)

(assert (=> b!1580536 m!1864035))

(declare-fun b_lambda!49731 () Bool)

(assert (= b_lambda!49719 (or (and b!1580060 b_free!42697 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))))) (and b!1580067 b_free!42701) (and b!1580515 b_free!42713 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))))) (and b!1580538 b_free!42717 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))))) b_lambda!49731)))

(declare-fun b_lambda!49733 () Bool)

(assert (= b_lambda!49729 (or (and b!1580060 b_free!42697 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))))) (and b!1580067 b_free!42701) (and b!1580515 b_free!42713 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))))) (and b!1580538 b_free!42717 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))))) b_lambda!49733)))

(declare-fun b_lambda!49735 () Bool)

(assert (= b_lambda!49717 (or (and b!1580060 b_free!42697 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))) (and b!1580067 b_free!42701 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))) (and b!1580515 b_free!42713 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))) (and b!1580538 b_free!42717) b_lambda!49735)))

(check-sat (not b!1580143) (not d!469357) (not b!1580259) (not b!1580446) (not b!1580327) (not d!469443) (not b!1580328) b_and!110745 (not b!1580457) (not b!1580481) (not b_next!43419) b_and!110701 (not b!1580238) (not d!469493) (not b!1580487) (not b!1580144) (not b!1580503) (not d!469429) (not b!1580179) (not b!1580324) (not d!469379) b_and!110739 (not b!1580459) (not b!1580447) (not b!1580458) (not b!1580181) (not b!1580142) (not b!1580475) (not b!1580237) (not b_next!43405) (not b!1580535) (not b!1580502) b_and!110741 (not b!1580473) (not d!469375) (not b!1580330) (not b!1580470) (not d!469505) (not d!469355) (not d!469405) (not b!1580180) (not b!1580514) (not d!469447) (not b!1580097) b_and!110705 (not b!1580296) (not b!1580258) (not b_next!43403) (not b!1580239) (not d!469425) (not d!469433) (not b!1580211) (not b!1580177) (not d!469437) (not b_next!43417) (not b!1580536) (not d!469413) tp_is_empty!7181 (not d!469417) (not b!1580485) b_and!110747 (not bm!102684) (not d!469415) (not d!469377) (not d!469491) (not d!469439) (not d!469343) (not b_next!43399) (not b!1580480) (not d!469435) (not b_next!43415) (not d!469427) (not b!1580286) (not d!469411) (not b!1580335) (not b!1580240) (not b!1580471) (not b!1580524) (not b!1580522) (not d!469503) (not d!469345) (not d!469445) (not b!1580504) (not b!1580490) (not b!1580523) (not b!1580173) (not b_next!43401) (not b!1580095) (not b!1580311) (not d!469399) (not b!1580202) (not d!469495) (not b!1580176) (not d!469501) (not d!469365) (not b!1580207) (not b!1580332) (not d!469381) (not b!1580175) (not b!1580484) b_and!110737 (not d!469359) (not b!1580287) (not d!469497) (not tb!88843) (not d!469485) (not b!1580329) (not b_lambda!49731) (not b!1580537) (not d!469339) (not b!1580325) b_and!110743 (not b!1580174) (not b!1580520) (not d!469431) (not tb!88847) (not b!1580486) (not b!1580096) (not d!469507) (not b!1580200) (not b_lambda!49733) (not b_next!43421) (not d!469499) (not b_lambda!49735) (not b!1580513))
(check-sat b_and!110745 b_and!110739 (not b_next!43405) b_and!110741 b_and!110705 (not b_next!43403) (not b_next!43417) b_and!110747 (not b_next!43401) b_and!110737 b_and!110743 (not b_next!43421) (not b_next!43419) b_and!110701 (not b_next!43399) (not b_next!43415))
(get-model)

(declare-fun b!1580550 () Bool)

(declare-fun e!1015366 () List!17439)

(assert (=> b!1580550 (= e!1015366 (++!4511 (list!6719 (left!14034 (c!256021 (charsOf!1710 (h!22772 tokens!457))))) (list!6719 (right!14364 (c!256021 (charsOf!1710 (h!22772 tokens!457)))))))))

(declare-fun b!1580547 () Bool)

(declare-fun e!1015365 () List!17439)

(assert (=> b!1580547 (= e!1015365 Nil!17369)))

(declare-fun b!1580548 () Bool)

(assert (=> b!1580548 (= e!1015365 e!1015366)))

(declare-fun c!256087 () Bool)

(assert (=> b!1580548 (= c!256087 ((_ is Leaf!8521) (c!256021 (charsOf!1710 (h!22772 tokens!457)))))))

(declare-fun d!469509 () Bool)

(declare-fun c!256086 () Bool)

(assert (=> d!469509 (= c!256086 ((_ is Empty!5770) (c!256021 (charsOf!1710 (h!22772 tokens!457)))))))

(assert (=> d!469509 (= (list!6719 (c!256021 (charsOf!1710 (h!22772 tokens!457)))) e!1015365)))

(declare-fun b!1580549 () Bool)

(declare-fun list!6721 (IArray!11545) List!17439)

(assert (=> b!1580549 (= e!1015366 (list!6721 (xs!8574 (c!256021 (charsOf!1710 (h!22772 tokens!457))))))))

(assert (= (and d!469509 c!256086) b!1580547))

(assert (= (and d!469509 (not c!256086)) b!1580548))

(assert (= (and b!1580548 c!256087) b!1580549))

(assert (= (and b!1580548 (not c!256087)) b!1580550))

(declare-fun m!1864037 () Bool)

(assert (=> b!1580550 m!1864037))

(declare-fun m!1864039 () Bool)

(assert (=> b!1580550 m!1864039))

(assert (=> b!1580550 m!1864037))

(assert (=> b!1580550 m!1864039))

(declare-fun m!1864041 () Bool)

(assert (=> b!1580550 m!1864041))

(declare-fun m!1864043 () Bool)

(assert (=> b!1580549 m!1864043))

(assert (=> d!469439 d!469509))

(assert (=> d!469501 d!469497))

(declare-fun d!469511 () Bool)

(assert (=> d!469511 (= (list!6716 (_1!9823 lt!552797)) (list!6716 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457)))))))

(assert (=> d!469511 true))

(declare-fun _$1!9985 () Unit!27015)

(assert (=> d!469511 (= (choose!9447 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457)) (_1!9823 lt!552797)) _$1!9985)))

(declare-fun bs!390886 () Bool)

(assert (= bs!390886 d!469511))

(assert (=> bs!390886 m!1863109))

(assert (=> bs!390886 m!1863143))

(assert (=> bs!390886 m!1863143))

(assert (=> bs!390886 m!1863145))

(assert (=> bs!390886 m!1863145))

(assert (=> bs!390886 m!1863147))

(assert (=> d!469501 d!469511))

(assert (=> d!469501 d!469499))

(declare-fun d!469513 () Bool)

(assert (=> d!469513 (= (list!6716 (seqFromList!1871 ($colon$colon!269 (t!143642 (t!143642 tokens!457)) (h!22772 (t!143642 tokens!457))))) (list!6720 (c!256023 (seqFromList!1871 ($colon$colon!269 (t!143642 (t!143642 tokens!457)) (h!22772 (t!143642 tokens!457)))))))))

(declare-fun bs!390887 () Bool)

(assert (= bs!390887 d!469513))

(declare-fun m!1864045 () Bool)

(assert (=> bs!390887 m!1864045))

(assert (=> d!469501 d!469513))

(assert (=> d!469501 d!469503))

(declare-fun d!469515 () Bool)

(assert (=> d!469515 (= ($colon$colon!269 (t!143642 (t!143642 tokens!457)) (h!22772 (t!143642 tokens!457))) (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))))))

(assert (=> d!469501 d!469515))

(assert (=> d!469501 d!469445))

(declare-fun d!469517 () Bool)

(assert (=> d!469517 (= (seqFromList!1871 ($colon$colon!269 (t!143642 (t!143642 tokens!457)) (h!22772 (t!143642 tokens!457)))) (fromListB!794 ($colon$colon!269 (t!143642 (t!143642 tokens!457)) (h!22772 (t!143642 tokens!457)))))))

(declare-fun bs!390888 () Bool)

(assert (= bs!390888 d!469517))

(assert (=> bs!390888 m!1863995))

(declare-fun m!1864047 () Bool)

(assert (=> bs!390888 m!1864047))

(assert (=> d!469501 d!469517))

(declare-fun d!469519 () Bool)

(declare-fun res!704659 () Bool)

(declare-fun e!1015367 () Bool)

(assert (=> d!469519 (=> (not res!704659) (not e!1015367))))

(assert (=> d!469519 (= res!704659 (not (isEmpty!10386 (originalCharacters!3875 (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!469519 (= (inv!22784 (h!22772 (t!143642 tokens!457))) e!1015367)))

(declare-fun b!1580551 () Bool)

(declare-fun res!704660 () Bool)

(assert (=> b!1580551 (=> (not res!704660) (not e!1015367))))

(assert (=> b!1580551 (= res!704660 (= (originalCharacters!3875 (h!22772 (t!143642 tokens!457))) (list!6715 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457)))))))))

(declare-fun b!1580552 () Bool)

(assert (=> b!1580552 (= e!1015367 (= (size!13968 (h!22772 (t!143642 tokens!457))) (size!13973 (originalCharacters!3875 (h!22772 (t!143642 tokens!457))))))))

(assert (= (and d!469519 res!704659) b!1580551))

(assert (= (and b!1580551 res!704660) b!1580552))

(declare-fun b_lambda!49737 () Bool)

(assert (=> (not b_lambda!49737) (not b!1580551)))

(assert (=> b!1580551 t!143656))

(declare-fun b_and!110749 () Bool)

(assert (= b_and!110737 (and (=> t!143656 result!107516) b_and!110749)))

(assert (=> b!1580551 t!143658))

(declare-fun b_and!110751 () Bool)

(assert (= b_and!110739 (and (=> t!143658 result!107520) b_and!110751)))

(assert (=> b!1580551 t!143677))

(declare-fun b_and!110753 () Bool)

(assert (= b_and!110743 (and (=> t!143677 result!107550) b_and!110753)))

(assert (=> b!1580551 t!143681))

(declare-fun b_and!110755 () Bool)

(assert (= b_and!110747 (and (=> t!143681 result!107558) b_and!110755)))

(declare-fun m!1864049 () Bool)

(assert (=> d!469519 m!1864049))

(assert (=> b!1580551 m!1863625))

(assert (=> b!1580551 m!1863625))

(declare-fun m!1864051 () Bool)

(assert (=> b!1580551 m!1864051))

(declare-fun m!1864053 () Bool)

(assert (=> b!1580552 m!1864053))

(assert (=> b!1580535 d!469519))

(declare-fun d!469521 () Bool)

(assert (=> d!469521 (= (list!6716 (_1!9823 lt!553125)) (list!6720 (c!256023 (_1!9823 lt!553125))))))

(declare-fun bs!390889 () Bool)

(assert (= bs!390889 d!469521))

(declare-fun m!1864055 () Bool)

(assert (=> bs!390889 m!1864055))

(assert (=> b!1580330 d!469521))

(declare-fun b!1580563 () Bool)

(declare-fun e!1015375 () Bool)

(declare-fun e!1015374 () Bool)

(assert (=> b!1580563 (= e!1015375 e!1015374)))

(declare-fun res!704663 () Bool)

(declare-fun lt!553283 () tuple2!16846)

(assert (=> b!1580563 (= res!704663 (< (size!13973 (_2!9825 lt!553283)) (size!13973 (list!6715 lt!552788))))))

(assert (=> b!1580563 (=> (not res!704663) (not e!1015374))))

(declare-fun b!1580564 () Bool)

(declare-fun e!1015376 () tuple2!16846)

(assert (=> b!1580564 (= e!1015376 (tuple2!16847 Nil!17371 (list!6715 lt!552788)))))

(declare-fun b!1580565 () Bool)

(declare-fun lt!553281 () Option!3114)

(declare-fun lt!553282 () tuple2!16846)

(assert (=> b!1580565 (= e!1015376 (tuple2!16847 (Cons!17371 (_1!9822 (v!23950 lt!553281)) (_1!9825 lt!553282)) (_2!9825 lt!553282)))))

(assert (=> b!1580565 (= lt!553282 (lexList!779 thiss!17113 rules!1846 (_2!9822 (v!23950 lt!553281))))))

(declare-fun b!1580566 () Bool)

(assert (=> b!1580566 (= e!1015374 (not (isEmpty!10383 (_1!9825 lt!553283))))))

(declare-fun d!469523 () Bool)

(assert (=> d!469523 e!1015375))

(declare-fun c!256093 () Bool)

(declare-fun size!13975 (List!17441) Int)

(assert (=> d!469523 (= c!256093 (> (size!13975 (_1!9825 lt!553283)) 0))))

(assert (=> d!469523 (= lt!553283 e!1015376)))

(declare-fun c!256092 () Bool)

(assert (=> d!469523 (= c!256092 ((_ is Some!3113) lt!553281))))

(assert (=> d!469523 (= lt!553281 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 lt!552788)))))

(assert (=> d!469523 (= (lexList!779 thiss!17113 rules!1846 (list!6715 lt!552788)) lt!553283)))

(declare-fun b!1580567 () Bool)

(assert (=> b!1580567 (= e!1015375 (= (_2!9825 lt!553283) (list!6715 lt!552788)))))

(assert (= (and d!469523 c!256092) b!1580565))

(assert (= (and d!469523 (not c!256092)) b!1580564))

(assert (= (and d!469523 c!256093) b!1580563))

(assert (= (and d!469523 (not c!256093)) b!1580567))

(assert (= (and b!1580563 res!704663) b!1580566))

(declare-fun m!1864057 () Bool)

(assert (=> b!1580563 m!1864057))

(assert (=> b!1580563 m!1863099))

(declare-fun m!1864059 () Bool)

(assert (=> b!1580563 m!1864059))

(declare-fun m!1864061 () Bool)

(assert (=> b!1580565 m!1864061))

(declare-fun m!1864063 () Bool)

(assert (=> b!1580566 m!1864063))

(declare-fun m!1864065 () Bool)

(assert (=> d!469523 m!1864065))

(assert (=> d!469523 m!1863099))

(declare-fun m!1864067 () Bool)

(assert (=> d!469523 m!1864067))

(assert (=> b!1580330 d!469523))

(assert (=> b!1580330 d!469427))

(declare-fun b!1580596 () Bool)

(declare-fun res!704684 () Bool)

(declare-fun e!1015392 () Bool)

(assert (=> b!1580596 (=> (not res!704684) (not e!1015392))))

(assert (=> b!1580596 (= res!704684 (isEmpty!10386 (tail!2254 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968)))))))))

(declare-fun d!469525 () Bool)

(declare-fun e!1015394 () Bool)

(assert (=> d!469525 e!1015394))

(declare-fun c!256100 () Bool)

(assert (=> d!469525 (= c!256100 ((_ is EmptyExpr!4389) (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!552968))))))))

(declare-fun lt!553286 () Bool)

(declare-fun e!1015396 () Bool)

(assert (=> d!469525 (= lt!553286 e!1015396)))

(declare-fun c!256101 () Bool)

(assert (=> d!469525 (= c!256101 (isEmpty!10386 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))))))

(declare-fun validRegex!1731 (Regex!4389) Bool)

(assert (=> d!469525 (validRegex!1731 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))))

(assert (=> d!469525 (= (matchR!1910 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))) (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))) lt!553286)))

(declare-fun b!1580597 () Bool)

(declare-fun e!1015395 () Bool)

(assert (=> b!1580597 (= e!1015394 e!1015395)))

(declare-fun c!256102 () Bool)

(assert (=> b!1580597 (= c!256102 ((_ is EmptyLang!4389) (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!552968))))))))

(declare-fun b!1580598 () Bool)

(declare-fun call!102695 () Bool)

(assert (=> b!1580598 (= e!1015394 (= lt!553286 call!102695))))

(declare-fun b!1580599 () Bool)

(assert (=> b!1580599 (= e!1015392 (= (head!3188 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))) (c!256022 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))))))

(declare-fun bm!102690 () Bool)

(assert (=> bm!102690 (= call!102695 (isEmpty!10386 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))))))

(declare-fun b!1580600 () Bool)

(declare-fun e!1015391 () Bool)

(declare-fun e!1015393 () Bool)

(assert (=> b!1580600 (= e!1015391 e!1015393)))

(declare-fun res!704686 () Bool)

(assert (=> b!1580600 (=> (not res!704686) (not e!1015393))))

(assert (=> b!1580600 (= res!704686 (not lt!553286))))

(declare-fun b!1580601 () Bool)

(declare-fun e!1015397 () Bool)

(assert (=> b!1580601 (= e!1015397 (not (= (head!3188 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))) (c!256022 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!552968))))))))))

(declare-fun b!1580602 () Bool)

(assert (=> b!1580602 (= e!1015395 (not lt!553286))))

(declare-fun b!1580603 () Bool)

(declare-fun res!704685 () Bool)

(assert (=> b!1580603 (=> res!704685 e!1015391)))

(assert (=> b!1580603 (= res!704685 e!1015392)))

(declare-fun res!704681 () Bool)

(assert (=> b!1580603 (=> (not res!704681) (not e!1015392))))

(assert (=> b!1580603 (= res!704681 lt!553286)))

(declare-fun b!1580604 () Bool)

(declare-fun derivativeStep!1041 (Regex!4389 C!8952) Regex!4389)

(assert (=> b!1580604 (= e!1015396 (matchR!1910 (derivativeStep!1041 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))) (head!3188 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968)))))) (tail!2254 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968)))))))))

(declare-fun b!1580605 () Bool)

(declare-fun res!704683 () Bool)

(assert (=> b!1580605 (=> (not res!704683) (not e!1015392))))

(assert (=> b!1580605 (= res!704683 (not call!102695))))

(declare-fun b!1580606 () Bool)

(declare-fun res!704682 () Bool)

(assert (=> b!1580606 (=> res!704682 e!1015397)))

(assert (=> b!1580606 (= res!704682 (not (isEmpty!10386 (tail!2254 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))))))))

(declare-fun b!1580607 () Bool)

(declare-fun nullable!1290 (Regex!4389) Bool)

(assert (=> b!1580607 (= e!1015396 (nullable!1290 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!552968))))))))

(declare-fun b!1580608 () Bool)

(declare-fun res!704680 () Bool)

(assert (=> b!1580608 (=> res!704680 e!1015391)))

(assert (=> b!1580608 (= res!704680 (not ((_ is ElementMatch!4389) (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))))))

(assert (=> b!1580608 (= e!1015395 e!1015391)))

(declare-fun b!1580609 () Bool)

(assert (=> b!1580609 (= e!1015393 e!1015397)))

(declare-fun res!704687 () Bool)

(assert (=> b!1580609 (=> res!704687 e!1015397)))

(assert (=> b!1580609 (= res!704687 call!102695)))

(assert (= (and d!469525 c!256101) b!1580607))

(assert (= (and d!469525 (not c!256101)) b!1580604))

(assert (= (and d!469525 c!256100) b!1580598))

(assert (= (and d!469525 (not c!256100)) b!1580597))

(assert (= (and b!1580597 c!256102) b!1580602))

(assert (= (and b!1580597 (not c!256102)) b!1580608))

(assert (= (and b!1580608 (not res!704680)) b!1580603))

(assert (= (and b!1580603 res!704681) b!1580605))

(assert (= (and b!1580605 res!704683) b!1580596))

(assert (= (and b!1580596 res!704684) b!1580599))

(assert (= (and b!1580603 (not res!704685)) b!1580600))

(assert (= (and b!1580600 res!704686) b!1580609))

(assert (= (and b!1580609 (not res!704687)) b!1580606))

(assert (= (and b!1580606 (not res!704682)) b!1580601))

(assert (= (or b!1580598 b!1580605 b!1580609) bm!102690))

(assert (=> bm!102690 m!1863383))

(declare-fun m!1864069 () Bool)

(assert (=> bm!102690 m!1864069))

(assert (=> b!1580606 m!1863383))

(declare-fun m!1864071 () Bool)

(assert (=> b!1580606 m!1864071))

(assert (=> b!1580606 m!1864071))

(declare-fun m!1864073 () Bool)

(assert (=> b!1580606 m!1864073))

(assert (=> b!1580604 m!1863383))

(declare-fun m!1864075 () Bool)

(assert (=> b!1580604 m!1864075))

(assert (=> b!1580604 m!1864075))

(declare-fun m!1864077 () Bool)

(assert (=> b!1580604 m!1864077))

(assert (=> b!1580604 m!1863383))

(assert (=> b!1580604 m!1864071))

(assert (=> b!1580604 m!1864077))

(assert (=> b!1580604 m!1864071))

(declare-fun m!1864079 () Bool)

(assert (=> b!1580604 m!1864079))

(assert (=> b!1580596 m!1863383))

(assert (=> b!1580596 m!1864071))

(assert (=> b!1580596 m!1864071))

(assert (=> b!1580596 m!1864073))

(assert (=> d!469525 m!1863383))

(assert (=> d!469525 m!1864069))

(declare-fun m!1864081 () Bool)

(assert (=> d!469525 m!1864081))

(assert (=> b!1580599 m!1863383))

(assert (=> b!1580599 m!1864075))

(declare-fun m!1864083 () Bool)

(assert (=> b!1580607 m!1864083))

(assert (=> b!1580601 m!1863383))

(assert (=> b!1580601 m!1864075))

(assert (=> b!1580175 d!469525))

(declare-fun d!469527 () Bool)

(assert (=> d!469527 (= (get!4964 lt!552968) (v!23950 lt!552968))))

(assert (=> b!1580175 d!469527))

(declare-fun d!469529 () Bool)

(assert (=> d!469529 (= (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968)))) (list!6719 (c!256021 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))))))

(declare-fun bs!390890 () Bool)

(assert (= bs!390890 d!469529))

(declare-fun m!1864085 () Bool)

(assert (=> bs!390890 m!1864085))

(assert (=> b!1580175 d!469529))

(declare-fun d!469531 () Bool)

(declare-fun lt!553287 () BalanceConc!11484)

(assert (=> d!469531 (= (list!6715 lt!553287) (originalCharacters!3875 (_1!9822 (get!4964 lt!552968))))))

(assert (=> d!469531 (= lt!553287 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968))))) (value!96911 (_1!9822 (get!4964 lt!552968)))))))

(assert (=> d!469531 (= (charsOf!1710 (_1!9822 (get!4964 lt!552968))) lt!553287)))

(declare-fun b_lambda!49739 () Bool)

(assert (=> (not b_lambda!49739) (not d!469531)))

(declare-fun tb!88871 () Bool)

(declare-fun t!143689 () Bool)

(assert (=> (and b!1580060 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143689) tb!88871))

(declare-fun b!1580610 () Bool)

(declare-fun e!1015398 () Bool)

(declare-fun tp!465343 () Bool)

(assert (=> b!1580610 (= e!1015398 (and (inv!22787 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968))))) (value!96911 (_1!9822 (get!4964 lt!552968)))))) tp!465343))))

(declare-fun result!107562 () Bool)

(assert (=> tb!88871 (= result!107562 (and (inv!22788 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968))))) (value!96911 (_1!9822 (get!4964 lt!552968))))) e!1015398))))

(assert (= tb!88871 b!1580610))

(declare-fun m!1864087 () Bool)

(assert (=> b!1580610 m!1864087))

(declare-fun m!1864089 () Bool)

(assert (=> tb!88871 m!1864089))

(assert (=> d!469531 t!143689))

(declare-fun b_and!110757 () Bool)

(assert (= b_and!110749 (and (=> t!143689 result!107562) b_and!110757)))

(declare-fun t!143691 () Bool)

(declare-fun tb!88873 () Bool)

(assert (=> (and b!1580067 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toChars!4323 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143691) tb!88873))

(declare-fun result!107564 () Bool)

(assert (= result!107564 result!107562))

(assert (=> d!469531 t!143691))

(declare-fun b_and!110759 () Bool)

(assert (= b_and!110751 (and (=> t!143691 result!107564) b_and!110759)))

(declare-fun tb!88875 () Bool)

(declare-fun t!143693 () Bool)

(assert (=> (and b!1580515 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143693) tb!88875))

(declare-fun result!107566 () Bool)

(assert (= result!107566 result!107562))

(assert (=> d!469531 t!143693))

(declare-fun b_and!110761 () Bool)

(assert (= b_and!110753 (and (=> t!143693 result!107566) b_and!110761)))

(declare-fun tb!88877 () Bool)

(declare-fun t!143695 () Bool)

(assert (=> (and b!1580538 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toChars!4323 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143695) tb!88877))

(declare-fun result!107568 () Bool)

(assert (= result!107568 result!107562))

(assert (=> d!469531 t!143695))

(declare-fun b_and!110763 () Bool)

(assert (= b_and!110755 (and (=> t!143695 result!107568) b_and!110763)))

(declare-fun m!1864091 () Bool)

(assert (=> d!469531 m!1864091))

(declare-fun m!1864093 () Bool)

(assert (=> d!469531 m!1864093))

(assert (=> b!1580175 d!469531))

(declare-fun b!1580614 () Bool)

(declare-fun e!1015400 () List!17439)

(assert (=> b!1580614 (= e!1015400 (++!4511 (list!6719 (left!14034 (c!256021 lt!552798))) (list!6719 (right!14364 (c!256021 lt!552798)))))))

(declare-fun b!1580611 () Bool)

(declare-fun e!1015399 () List!17439)

(assert (=> b!1580611 (= e!1015399 Nil!17369)))

(declare-fun b!1580612 () Bool)

(assert (=> b!1580612 (= e!1015399 e!1015400)))

(declare-fun c!256104 () Bool)

(assert (=> b!1580612 (= c!256104 ((_ is Leaf!8521) (c!256021 lt!552798)))))

(declare-fun d!469533 () Bool)

(declare-fun c!256103 () Bool)

(assert (=> d!469533 (= c!256103 ((_ is Empty!5770) (c!256021 lt!552798)))))

(assert (=> d!469533 (= (list!6719 (c!256021 lt!552798)) e!1015399)))

(declare-fun b!1580613 () Bool)

(assert (=> b!1580613 (= e!1015400 (list!6721 (xs!8574 (c!256021 lt!552798))))))

(assert (= (and d!469533 c!256103) b!1580611))

(assert (= (and d!469533 (not c!256103)) b!1580612))

(assert (= (and b!1580612 c!256104) b!1580613))

(assert (= (and b!1580612 (not c!256104)) b!1580614))

(declare-fun m!1864095 () Bool)

(assert (=> b!1580614 m!1864095))

(declare-fun m!1864097 () Bool)

(assert (=> b!1580614 m!1864097))

(assert (=> b!1580614 m!1864095))

(assert (=> b!1580614 m!1864097))

(declare-fun m!1864099 () Bool)

(assert (=> b!1580614 m!1864099))

(declare-fun m!1864101 () Bool)

(assert (=> b!1580613 m!1864101))

(assert (=> d!469357 d!469533))

(declare-fun d!469535 () Bool)

(declare-fun charsToInt!0 (List!17440) (_ BitVec 32))

(assert (=> d!469535 (= (inv!16 (value!96911 (h!22772 tokens!457))) (= (charsToInt!0 (text!22504 (value!96911 (h!22772 tokens!457)))) (value!96902 (value!96911 (h!22772 tokens!457)))))))

(declare-fun bs!390891 () Bool)

(assert (= bs!390891 d!469535))

(declare-fun m!1864103 () Bool)

(assert (=> bs!390891 m!1864103))

(assert (=> b!1580471 d!469535))

(declare-fun d!469537 () Bool)

(assert (=> d!469537 (= (list!6715 lt!553098) (list!6719 (c!256021 lt!553098)))))

(declare-fun bs!390892 () Bool)

(assert (= bs!390892 d!469537))

(declare-fun m!1864105 () Bool)

(assert (=> bs!390892 m!1864105))

(assert (=> d!469413 d!469537))

(declare-fun d!469539 () Bool)

(assert (=> d!469539 true))

(declare-fun lt!553290 () Bool)

(assert (=> d!469539 (= lt!553290 (rulesValidInductive!911 thiss!17113 rules!1846))))

(declare-fun lambda!66457 () Int)

(declare-fun forall!3991 (List!17442 Int) Bool)

(assert (=> d!469539 (= lt!553290 (forall!3991 rules!1846 lambda!66457))))

(assert (=> d!469539 (= (rulesValid!1078 thiss!17113 rules!1846) lt!553290)))

(declare-fun bs!390893 () Bool)

(assert (= bs!390893 d!469539))

(assert (=> bs!390893 m!1863391))

(declare-fun m!1864107 () Bool)

(assert (=> bs!390893 m!1864107))

(assert (=> d!469507 d!469539))

(declare-fun d!469541 () Bool)

(declare-fun lt!553293 () Int)

(assert (=> d!469541 (>= lt!553293 0)))

(declare-fun e!1015403 () Int)

(assert (=> d!469541 (= lt!553293 e!1015403)))

(declare-fun c!256107 () Bool)

(assert (=> d!469541 (= c!256107 ((_ is Nil!17369) lt!553124))))

(assert (=> d!469541 (= (size!13973 lt!553124) lt!553293)))

(declare-fun b!1580621 () Bool)

(assert (=> b!1580621 (= e!1015403 0)))

(declare-fun b!1580622 () Bool)

(assert (=> b!1580622 (= e!1015403 (+ 1 (size!13973 (t!143640 lt!553124))))))

(assert (= (and d!469541 c!256107) b!1580621))

(assert (= (and d!469541 (not c!256107)) b!1580622))

(declare-fun m!1864109 () Bool)

(assert (=> b!1580622 m!1864109))

(assert (=> b!1580325 d!469541))

(declare-fun d!469543 () Bool)

(declare-fun lt!553294 () Int)

(assert (=> d!469543 (>= lt!553294 0)))

(declare-fun e!1015404 () Int)

(assert (=> d!469543 (= lt!553294 e!1015404)))

(declare-fun c!256108 () Bool)

(assert (=> d!469543 (= c!256108 ((_ is Nil!17369) lt!552801))))

(assert (=> d!469543 (= (size!13973 lt!552801) lt!553294)))

(declare-fun b!1580623 () Bool)

(assert (=> b!1580623 (= e!1015404 0)))

(declare-fun b!1580624 () Bool)

(assert (=> b!1580624 (= e!1015404 (+ 1 (size!13973 (t!143640 lt!552801))))))

(assert (= (and d!469543 c!256108) b!1580623))

(assert (= (and d!469543 (not c!256108)) b!1580624))

(declare-fun m!1864111 () Bool)

(assert (=> b!1580624 m!1864111))

(assert (=> b!1580325 d!469543))

(declare-fun d!469545 () Bool)

(declare-fun lt!553295 () Int)

(assert (=> d!469545 (>= lt!553295 0)))

(declare-fun e!1015405 () Int)

(assert (=> d!469545 (= lt!553295 e!1015405)))

(declare-fun c!256109 () Bool)

(assert (=> d!469545 (= c!256109 ((_ is Nil!17369) lt!552795))))

(assert (=> d!469545 (= (size!13973 lt!552795) lt!553295)))

(declare-fun b!1580625 () Bool)

(assert (=> b!1580625 (= e!1015405 0)))

(declare-fun b!1580626 () Bool)

(assert (=> b!1580626 (= e!1015405 (+ 1 (size!13973 (t!143640 lt!552795))))))

(assert (= (and d!469545 c!256109) b!1580625))

(assert (= (and d!469545 (not c!256109)) b!1580626))

(declare-fun m!1864113 () Bool)

(assert (=> b!1580626 m!1864113))

(assert (=> b!1580325 d!469545))

(declare-fun d!469547 () Bool)

(declare-fun c!256112 () Bool)

(assert (=> d!469547 (= c!256112 ((_ is Node!5770) (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457))))))))

(declare-fun e!1015410 () Bool)

(assert (=> d!469547 (= (inv!22787 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457))))) e!1015410)))

(declare-fun b!1580633 () Bool)

(declare-fun inv!22789 (Conc!5770) Bool)

(assert (=> b!1580633 (= e!1015410 (inv!22789 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457))))))))

(declare-fun b!1580634 () Bool)

(declare-fun e!1015411 () Bool)

(assert (=> b!1580634 (= e!1015410 e!1015411)))

(declare-fun res!704690 () Bool)

(assert (=> b!1580634 (= res!704690 (not ((_ is Leaf!8521) (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457)))))))))

(assert (=> b!1580634 (=> res!704690 e!1015411)))

(declare-fun b!1580635 () Bool)

(declare-fun inv!22790 (Conc!5770) Bool)

(assert (=> b!1580635 (= e!1015411 (inv!22790 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457))))))))

(assert (= (and d!469547 c!256112) b!1580633))

(assert (= (and d!469547 (not c!256112)) b!1580634))

(assert (= (and b!1580634 (not res!704690)) b!1580635))

(declare-fun m!1864115 () Bool)

(assert (=> b!1580633 m!1864115))

(declare-fun m!1864117 () Bool)

(assert (=> b!1580635 m!1864117))

(assert (=> b!1580332 d!469547))

(declare-fun b!1580648 () Bool)

(declare-fun e!1015417 () Bool)

(declare-fun e!1015416 () Bool)

(assert (=> b!1580648 (= e!1015417 e!1015416)))

(declare-fun res!704703 () Bool)

(assert (=> b!1580648 (=> (not res!704703) (not e!1015416))))

(declare-fun height!847 (Conc!5771) Int)

(assert (=> b!1580648 (= res!704703 (<= (- 1) (- (height!847 (left!14035 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457))))) (height!847 (right!14365 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457))))))))))

(declare-fun b!1580649 () Bool)

(declare-fun res!704708 () Bool)

(assert (=> b!1580649 (=> (not res!704708) (not e!1015416))))

(assert (=> b!1580649 (= res!704708 (isBalanced!1691 (right!14365 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457))))))))

(declare-fun d!469549 () Bool)

(declare-fun res!704706 () Bool)

(assert (=> d!469549 (=> res!704706 e!1015417)))

(assert (=> d!469549 (= res!704706 (not ((_ is Node!5771) (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!469549 (= (isBalanced!1691 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457)))) e!1015417)))

(declare-fun b!1580650 () Bool)

(assert (=> b!1580650 (= e!1015416 (not (isEmpty!10384 (right!14365 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457)))))))))

(declare-fun b!1580651 () Bool)

(declare-fun res!704705 () Bool)

(assert (=> b!1580651 (=> (not res!704705) (not e!1015416))))

(assert (=> b!1580651 (= res!704705 (<= (- (height!847 (left!14035 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457))))) (height!847 (right!14365 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457)))))) 1))))

(declare-fun b!1580652 () Bool)

(declare-fun res!704704 () Bool)

(assert (=> b!1580652 (=> (not res!704704) (not e!1015416))))

(assert (=> b!1580652 (= res!704704 (isBalanced!1691 (left!14035 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457))))))))

(declare-fun b!1580653 () Bool)

(declare-fun res!704707 () Bool)

(assert (=> b!1580653 (=> (not res!704707) (not e!1015416))))

(assert (=> b!1580653 (= res!704707 (not (isEmpty!10384 (left!14035 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457)))))))))

(assert (= (and d!469549 (not res!704706)) b!1580648))

(assert (= (and b!1580648 res!704703) b!1580651))

(assert (= (and b!1580651 res!704705) b!1580652))

(assert (= (and b!1580652 res!704704) b!1580649))

(assert (= (and b!1580649 res!704708) b!1580653))

(assert (= (and b!1580653 res!704707) b!1580650))

(declare-fun m!1864119 () Bool)

(assert (=> b!1580651 m!1864119))

(declare-fun m!1864121 () Bool)

(assert (=> b!1580651 m!1864121))

(declare-fun m!1864123 () Bool)

(assert (=> b!1580649 m!1864123))

(declare-fun m!1864125 () Bool)

(assert (=> b!1580650 m!1864125))

(declare-fun m!1864127 () Bool)

(assert (=> b!1580653 m!1864127))

(assert (=> b!1580648 m!1864119))

(assert (=> b!1580648 m!1864121))

(declare-fun m!1864129 () Bool)

(assert (=> b!1580652 m!1864129))

(assert (=> d!469497 d!469549))

(declare-fun d!469551 () Bool)

(declare-fun e!1015420 () Bool)

(assert (=> d!469551 e!1015420))

(declare-fun res!704712 () Bool)

(assert (=> d!469551 (=> (not res!704712) (not e!1015420))))

(declare-fun lt!553298 () Conc!5771)

(assert (=> d!469551 (= res!704712 (isBalanced!1691 lt!553298))))

(declare-fun ++!4514 (Conc!5771 Conc!5771) Conc!5771)

(declare-fun fill!82 (Int Token!5688) IArray!11547)

(assert (=> d!469551 (= lt!553298 (++!4514 (Leaf!8522 (fill!82 1 (h!22772 (t!143642 tokens!457))) 1) (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457))))))))

(assert (=> d!469551 (isBalanced!1691 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))))))

(assert (=> d!469551 (= (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457))) lt!553298)))

(declare-fun b!1580656 () Bool)

(assert (=> b!1580656 (= e!1015420 (= (list!6720 lt!553298) (Cons!17371 (h!22772 (t!143642 tokens!457)) (list!6720 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457))))))))))

(assert (= (and d!469551 res!704712) b!1580656))

(declare-fun m!1864131 () Bool)

(assert (=> d!469551 m!1864131))

(declare-fun m!1864133 () Bool)

(assert (=> d!469551 m!1864133))

(declare-fun m!1864135 () Bool)

(assert (=> d!469551 m!1864135))

(declare-fun m!1864137 () Bool)

(assert (=> d!469551 m!1864137))

(declare-fun m!1864139 () Bool)

(assert (=> b!1580656 m!1864139))

(declare-fun m!1864141 () Bool)

(assert (=> b!1580656 m!1864141))

(assert (=> d!469497 d!469551))

(declare-fun d!469553 () Bool)

(assert (=> d!469553 (= (list!6715 (_2!9823 lt!553014)) (list!6719 (c!256021 (_2!9823 lt!553014))))))

(declare-fun bs!390894 () Bool)

(assert (= bs!390894 d!469553))

(declare-fun m!1864143 () Bool)

(assert (=> bs!390894 m!1864143))

(assert (=> b!1580239 d!469553))

(declare-fun b!1580657 () Bool)

(declare-fun e!1015422 () Bool)

(declare-fun e!1015421 () Bool)

(assert (=> b!1580657 (= e!1015422 e!1015421)))

(declare-fun res!704713 () Bool)

(declare-fun lt!553301 () tuple2!16846)

(assert (=> b!1580657 (= res!704713 (< (size!13973 (_2!9825 lt!553301)) (size!13973 (list!6715 (seqFromList!1872 lt!552801)))))))

(assert (=> b!1580657 (=> (not res!704713) (not e!1015421))))

(declare-fun b!1580658 () Bool)

(declare-fun e!1015423 () tuple2!16846)

(assert (=> b!1580658 (= e!1015423 (tuple2!16847 Nil!17371 (list!6715 (seqFromList!1872 lt!552801))))))

(declare-fun b!1580659 () Bool)

(declare-fun lt!553299 () Option!3114)

(declare-fun lt!553300 () tuple2!16846)

(assert (=> b!1580659 (= e!1015423 (tuple2!16847 (Cons!17371 (_1!9822 (v!23950 lt!553299)) (_1!9825 lt!553300)) (_2!9825 lt!553300)))))

(assert (=> b!1580659 (= lt!553300 (lexList!779 thiss!17113 rules!1846 (_2!9822 (v!23950 lt!553299))))))

(declare-fun b!1580660 () Bool)

(assert (=> b!1580660 (= e!1015421 (not (isEmpty!10383 (_1!9825 lt!553301))))))

(declare-fun d!469555 () Bool)

(assert (=> d!469555 e!1015422))

(declare-fun c!256114 () Bool)

(assert (=> d!469555 (= c!256114 (> (size!13975 (_1!9825 lt!553301)) 0))))

(assert (=> d!469555 (= lt!553301 e!1015423)))

(declare-fun c!256113 () Bool)

(assert (=> d!469555 (= c!256113 ((_ is Some!3113) lt!553299))))

(assert (=> d!469555 (= lt!553299 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (seqFromList!1872 lt!552801))))))

(assert (=> d!469555 (= (lexList!779 thiss!17113 rules!1846 (list!6715 (seqFromList!1872 lt!552801))) lt!553301)))

(declare-fun b!1580661 () Bool)

(assert (=> b!1580661 (= e!1015422 (= (_2!9825 lt!553301) (list!6715 (seqFromList!1872 lt!552801))))))

(assert (= (and d!469555 c!256113) b!1580659))

(assert (= (and d!469555 (not c!256113)) b!1580658))

(assert (= (and d!469555 c!256114) b!1580657))

(assert (= (and d!469555 (not c!256114)) b!1580661))

(assert (= (and b!1580657 res!704713) b!1580660))

(declare-fun m!1864145 () Bool)

(assert (=> b!1580657 m!1864145))

(assert (=> b!1580657 m!1863531))

(declare-fun m!1864147 () Bool)

(assert (=> b!1580657 m!1864147))

(declare-fun m!1864149 () Bool)

(assert (=> b!1580659 m!1864149))

(declare-fun m!1864151 () Bool)

(assert (=> b!1580660 m!1864151))

(declare-fun m!1864153 () Bool)

(assert (=> d!469555 m!1864153))

(assert (=> d!469555 m!1863531))

(declare-fun m!1864155 () Bool)

(assert (=> d!469555 m!1864155))

(assert (=> b!1580239 d!469555))

(declare-fun d!469557 () Bool)

(assert (=> d!469557 (= (list!6715 (seqFromList!1872 lt!552801)) (list!6719 (c!256021 (seqFromList!1872 lt!552801))))))

(declare-fun bs!390895 () Bool)

(assert (= bs!390895 d!469557))

(declare-fun m!1864157 () Bool)

(assert (=> bs!390895 m!1864157))

(assert (=> b!1580239 d!469557))

(declare-fun d!469559 () Bool)

(declare-fun lt!553304 () Int)

(assert (=> d!469559 (= lt!553304 (size!13975 (list!6716 (_1!9823 lt!553125))))))

(declare-fun size!13976 (Conc!5771) Int)

(assert (=> d!469559 (= lt!553304 (size!13976 (c!256023 (_1!9823 lt!553125))))))

(assert (=> d!469559 (= (size!13972 (_1!9823 lt!553125)) lt!553304)))

(declare-fun bs!390896 () Bool)

(assert (= bs!390896 d!469559))

(assert (=> bs!390896 m!1863705))

(assert (=> bs!390896 m!1863705))

(declare-fun m!1864159 () Bool)

(assert (=> bs!390896 m!1864159))

(declare-fun m!1864161 () Bool)

(assert (=> bs!390896 m!1864161))

(assert (=> d!469425 d!469559))

(declare-fun b!1580752 () Bool)

(declare-fun e!1015471 () tuple2!16842)

(assert (=> b!1580752 (= e!1015471 (tuple2!16843 (BalanceConc!11487 Empty!5771) lt!552788))))

(declare-fun b!1580753 () Bool)

(declare-fun e!1015470 () tuple2!16842)

(declare-fun lt!553408 () BalanceConc!11484)

(assert (=> b!1580753 (= e!1015470 (tuple2!16843 (BalanceConc!11487 Empty!5771) lt!553408))))

(declare-fun lt!553399 () tuple2!16842)

(declare-fun b!1580754 () Bool)

(declare-datatypes ((tuple2!16848 0))(
  ( (tuple2!16849 (_1!9826 Token!5688) (_2!9826 BalanceConc!11484)) )
))
(declare-datatypes ((Option!3117 0))(
  ( (None!3116) (Some!3116 (v!23962 tuple2!16848)) )
))
(declare-fun lt!553424 () Option!3117)

(declare-fun lexRec!352 (LexerInterface!2690 List!17442 BalanceConc!11484) tuple2!16842)

(assert (=> b!1580754 (= lt!553399 (lexRec!352 thiss!17113 rules!1846 (_2!9826 (v!23962 lt!553424))))))

(declare-fun e!1015472 () tuple2!16842)

(assert (=> b!1580754 (= e!1015472 (tuple2!16843 (prepend!537 (_1!9823 lt!553399) (_1!9826 (v!23962 lt!553424))) (_2!9823 lt!553399)))))

(declare-fun b!1580755 () Bool)

(assert (=> b!1580755 (= e!1015472 (tuple2!16843 (BalanceConc!11487 Empty!5771) lt!552788))))

(declare-fun lt!553402 () Option!3117)

(declare-fun lt!553401 () BalanceConc!11484)

(declare-fun b!1580756 () Bool)

(declare-fun append!531 (BalanceConc!11486 Token!5688) BalanceConc!11486)

(assert (=> b!1580756 (= e!1015471 (lexTailRecV2!502 thiss!17113 rules!1846 lt!552788 lt!553401 (_2!9826 (v!23962 lt!553402)) (append!531 (BalanceConc!11487 Empty!5771) (_1!9826 (v!23962 lt!553402)))))))

(declare-fun lt!553403 () tuple2!16842)

(assert (=> b!1580756 (= lt!553403 (lexRec!352 thiss!17113 rules!1846 (_2!9826 (v!23962 lt!553402))))))

(declare-fun lt!553413 () List!17439)

(assert (=> b!1580756 (= lt!553413 (list!6715 (BalanceConc!11485 Empty!5770)))))

(declare-fun lt!553410 () List!17439)

(assert (=> b!1580756 (= lt!553410 (list!6715 (charsOf!1710 (_1!9826 (v!23962 lt!553402)))))))

(declare-fun lt!553406 () List!17439)

(assert (=> b!1580756 (= lt!553406 (list!6715 (_2!9826 (v!23962 lt!553402))))))

(declare-fun lt!553414 () Unit!27015)

(declare-fun lemmaConcatAssociativity!980 (List!17439 List!17439 List!17439) Unit!27015)

(assert (=> b!1580756 (= lt!553414 (lemmaConcatAssociativity!980 lt!553413 lt!553410 lt!553406))))

(assert (=> b!1580756 (= (++!4511 (++!4511 lt!553413 lt!553410) lt!553406) (++!4511 lt!553413 (++!4511 lt!553410 lt!553406)))))

(declare-fun lt!553407 () Unit!27015)

(assert (=> b!1580756 (= lt!553407 lt!553414)))

(declare-fun maxPrefixZipperSequence!608 (LexerInterface!2690 List!17442 BalanceConc!11484) Option!3117)

(assert (=> b!1580756 (= lt!553424 (maxPrefixZipperSequence!608 thiss!17113 rules!1846 lt!552788))))

(declare-fun c!256143 () Bool)

(assert (=> b!1580756 (= c!256143 ((_ is Some!3116) lt!553424))))

(assert (=> b!1580756 (= (lexRec!352 thiss!17113 rules!1846 lt!552788) e!1015472)))

(declare-fun lt!553428 () Unit!27015)

(declare-fun Unit!27055 () Unit!27015)

(assert (=> b!1580756 (= lt!553428 Unit!27055)))

(declare-fun lt!553398 () List!17441)

(assert (=> b!1580756 (= lt!553398 (list!6716 (BalanceConc!11487 Empty!5771)))))

(declare-fun lt!553422 () List!17441)

(assert (=> b!1580756 (= lt!553422 (Cons!17371 (_1!9826 (v!23962 lt!553402)) Nil!17371))))

(declare-fun lt!553429 () List!17441)

(assert (=> b!1580756 (= lt!553429 (list!6716 (_1!9823 lt!553403)))))

(declare-fun lt!553430 () Unit!27015)

(declare-fun lemmaConcatAssociativity!981 (List!17441 List!17441 List!17441) Unit!27015)

(assert (=> b!1580756 (= lt!553430 (lemmaConcatAssociativity!981 lt!553398 lt!553422 lt!553429))))

(declare-fun ++!4515 (List!17441 List!17441) List!17441)

(assert (=> b!1580756 (= (++!4515 (++!4515 lt!553398 lt!553422) lt!553429) (++!4515 lt!553398 (++!4515 lt!553422 lt!553429)))))

(declare-fun lt!553400 () Unit!27015)

(assert (=> b!1580756 (= lt!553400 lt!553430)))

(declare-fun lt!553418 () List!17439)

(assert (=> b!1580756 (= lt!553418 (++!4511 (list!6715 (BalanceConc!11485 Empty!5770)) (list!6715 (charsOf!1710 (_1!9826 (v!23962 lt!553402))))))))

(declare-fun lt!553416 () List!17439)

(assert (=> b!1580756 (= lt!553416 (list!6715 (_2!9826 (v!23962 lt!553402))))))

(declare-fun lt!553423 () List!17441)

(assert (=> b!1580756 (= lt!553423 (list!6716 (append!531 (BalanceConc!11487 Empty!5771) (_1!9826 (v!23962 lt!553402)))))))

(declare-fun lt!553412 () Unit!27015)

(declare-fun lemmaLexThenLexPrefix!240 (LexerInterface!2690 List!17442 List!17439 List!17439 List!17441 List!17441 List!17439) Unit!27015)

(assert (=> b!1580756 (= lt!553412 (lemmaLexThenLexPrefix!240 thiss!17113 rules!1846 lt!553418 lt!553416 lt!553423 (list!6716 (_1!9823 lt!553403)) (list!6715 (_2!9823 lt!553403))))))

(assert (=> b!1580756 (= (lexList!779 thiss!17113 rules!1846 lt!553418) (tuple2!16847 lt!553423 Nil!17369))))

(declare-fun lt!553419 () Unit!27015)

(assert (=> b!1580756 (= lt!553419 lt!553412)))

(assert (=> b!1580756 (= lt!553408 (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (_1!9826 (v!23962 lt!553402)))))))

(declare-fun lt!553426 () Option!3117)

(assert (=> b!1580756 (= lt!553426 (maxPrefixZipperSequence!608 thiss!17113 rules!1846 lt!553408))))

(declare-fun c!256142 () Bool)

(assert (=> b!1580756 (= c!256142 ((_ is Some!3116) lt!553426))))

(assert (=> b!1580756 (= (lexRec!352 thiss!17113 rules!1846 (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (_1!9826 (v!23962 lt!553402))))) e!1015470)))

(declare-fun lt!553420 () Unit!27015)

(declare-fun Unit!27056 () Unit!27015)

(assert (=> b!1580756 (= lt!553420 Unit!27056)))

(assert (=> b!1580756 (= lt!553401 (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (_1!9826 (v!23962 lt!553402)))))))

(declare-fun lt!553409 () List!17439)

(assert (=> b!1580756 (= lt!553409 (list!6715 lt!553401))))

(declare-fun lt!553425 () List!17439)

(assert (=> b!1580756 (= lt!553425 (list!6715 (_2!9826 (v!23962 lt!553402))))))

(declare-fun lt!553431 () Unit!27015)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!299 (List!17439 List!17439) Unit!27015)

(assert (=> b!1580756 (= lt!553431 (lemmaConcatTwoListThenFSndIsSuffix!299 lt!553409 lt!553425))))

(declare-fun isSuffix!398 (List!17439 List!17439) Bool)

(assert (=> b!1580756 (isSuffix!398 lt!553425 (++!4511 lt!553409 lt!553425))))

(declare-fun lt!553427 () Unit!27015)

(assert (=> b!1580756 (= lt!553427 lt!553431)))

(declare-fun b!1580757 () Bool)

(declare-fun lt!553417 () tuple2!16842)

(declare-fun e!1015473 () Bool)

(assert (=> b!1580757 (= e!1015473 (= (list!6715 (_2!9823 lt!553417)) (list!6715 (_2!9823 (lexRec!352 thiss!17113 rules!1846 lt!552788)))))))

(declare-fun d!469561 () Bool)

(assert (=> d!469561 e!1015473))

(declare-fun res!704747 () Bool)

(assert (=> d!469561 (=> (not res!704747) (not e!1015473))))

(assert (=> d!469561 (= res!704747 (= (list!6716 (_1!9823 lt!553417)) (list!6716 (_1!9823 (lexRec!352 thiss!17113 rules!1846 lt!552788)))))))

(assert (=> d!469561 (= lt!553417 e!1015471)))

(declare-fun c!256144 () Bool)

(assert (=> d!469561 (= c!256144 ((_ is Some!3116) lt!553402))))

(declare-fun maxPrefixZipperSequenceV2!247 (LexerInterface!2690 List!17442 BalanceConc!11484 BalanceConc!11484) Option!3117)

(assert (=> d!469561 (= lt!553402 (maxPrefixZipperSequenceV2!247 thiss!17113 rules!1846 lt!552788 lt!552788))))

(declare-fun lt!553421 () Unit!27015)

(declare-fun lt!553411 () Unit!27015)

(assert (=> d!469561 (= lt!553421 lt!553411)))

(declare-fun lt!553415 () List!17439)

(declare-fun lt!553404 () List!17439)

(assert (=> d!469561 (isSuffix!398 lt!553415 (++!4511 lt!553404 lt!553415))))

(assert (=> d!469561 (= lt!553411 (lemmaConcatTwoListThenFSndIsSuffix!299 lt!553404 lt!553415))))

(assert (=> d!469561 (= lt!553415 (list!6715 lt!552788))))

(assert (=> d!469561 (= lt!553404 (list!6715 (BalanceConc!11485 Empty!5770)))))

(assert (=> d!469561 (= (lexTailRecV2!502 thiss!17113 rules!1846 lt!552788 (BalanceConc!11485 Empty!5770) lt!552788 (BalanceConc!11487 Empty!5771)) lt!553417)))

(declare-fun b!1580758 () Bool)

(declare-fun lt!553405 () tuple2!16842)

(assert (=> b!1580758 (= lt!553405 (lexRec!352 thiss!17113 rules!1846 (_2!9826 (v!23962 lt!553426))))))

(assert (=> b!1580758 (= e!1015470 (tuple2!16843 (prepend!537 (_1!9823 lt!553405) (_1!9826 (v!23962 lt!553426))) (_2!9823 lt!553405)))))

(assert (= (and d!469561 c!256144) b!1580756))

(assert (= (and d!469561 (not c!256144)) b!1580752))

(assert (= (and b!1580756 c!256143) b!1580754))

(assert (= (and b!1580756 (not c!256143)) b!1580755))

(assert (= (and b!1580756 c!256142) b!1580758))

(assert (= (and b!1580756 (not c!256142)) b!1580753))

(assert (= (and d!469561 res!704747) b!1580757))

(declare-fun m!1864241 () Bool)

(assert (=> b!1580758 m!1864241))

(declare-fun m!1864243 () Bool)

(assert (=> b!1580758 m!1864243))

(declare-fun m!1864245 () Bool)

(assert (=> b!1580754 m!1864245))

(declare-fun m!1864247 () Bool)

(assert (=> b!1580754 m!1864247))

(declare-fun m!1864249 () Bool)

(assert (=> b!1580756 m!1864249))

(declare-fun m!1864251 () Bool)

(assert (=> b!1580756 m!1864251))

(declare-fun m!1864253 () Bool)

(assert (=> b!1580756 m!1864253))

(declare-fun m!1864255 () Bool)

(assert (=> b!1580756 m!1864255))

(declare-fun m!1864257 () Bool)

(assert (=> b!1580756 m!1864257))

(declare-fun m!1864259 () Bool)

(assert (=> b!1580756 m!1864259))

(declare-fun m!1864261 () Bool)

(assert (=> b!1580756 m!1864261))

(declare-fun m!1864263 () Bool)

(assert (=> b!1580756 m!1864263))

(declare-fun m!1864265 () Bool)

(assert (=> b!1580756 m!1864265))

(declare-fun m!1864267 () Bool)

(assert (=> b!1580756 m!1864267))

(assert (=> b!1580756 m!1863433))

(declare-fun m!1864269 () Bool)

(assert (=> b!1580756 m!1864269))

(declare-fun m!1864271 () Bool)

(assert (=> b!1580756 m!1864271))

(declare-fun m!1864273 () Bool)

(assert (=> b!1580756 m!1864273))

(declare-fun m!1864275 () Bool)

(assert (=> b!1580756 m!1864275))

(declare-fun m!1864277 () Bool)

(assert (=> b!1580756 m!1864277))

(declare-fun m!1864279 () Bool)

(assert (=> b!1580756 m!1864279))

(declare-fun m!1864281 () Bool)

(assert (=> b!1580756 m!1864281))

(declare-fun m!1864283 () Bool)

(assert (=> b!1580756 m!1864283))

(assert (=> b!1580756 m!1864261))

(assert (=> b!1580756 m!1864277))

(assert (=> b!1580756 m!1864281))

(assert (=> b!1580756 m!1864269))

(assert (=> b!1580756 m!1864283))

(declare-fun m!1864285 () Bool)

(assert (=> b!1580756 m!1864285))

(declare-fun m!1864287 () Bool)

(assert (=> b!1580756 m!1864287))

(declare-fun m!1864289 () Bool)

(assert (=> b!1580756 m!1864289))

(declare-fun m!1864291 () Bool)

(assert (=> b!1580756 m!1864291))

(assert (=> b!1580756 m!1864273))

(declare-fun m!1864293 () Bool)

(assert (=> b!1580756 m!1864293))

(declare-fun m!1864295 () Bool)

(assert (=> b!1580756 m!1864295))

(declare-fun m!1864297 () Bool)

(assert (=> b!1580756 m!1864297))

(assert (=> b!1580756 m!1864287))

(declare-fun m!1864299 () Bool)

(assert (=> b!1580756 m!1864299))

(declare-fun m!1864301 () Bool)

(assert (=> b!1580756 m!1864301))

(assert (=> b!1580756 m!1864301))

(declare-fun m!1864303 () Bool)

(assert (=> b!1580756 m!1864303))

(assert (=> b!1580756 m!1864287))

(declare-fun m!1864305 () Bool)

(assert (=> b!1580756 m!1864305))

(assert (=> b!1580756 m!1864281))

(assert (=> b!1580756 m!1864259))

(assert (=> b!1580756 m!1864293))

(declare-fun m!1864307 () Bool)

(assert (=> b!1580756 m!1864307))

(declare-fun m!1864309 () Bool)

(assert (=> b!1580756 m!1864309))

(assert (=> b!1580756 m!1864249))

(declare-fun m!1864311 () Bool)

(assert (=> b!1580756 m!1864311))

(assert (=> b!1580756 m!1863433))

(assert (=> d!469561 m!1863099))

(declare-fun m!1864313 () Bool)

(assert (=> d!469561 m!1864313))

(declare-fun m!1864315 () Bool)

(assert (=> d!469561 m!1864315))

(declare-fun m!1864317 () Bool)

(assert (=> d!469561 m!1864317))

(declare-fun m!1864319 () Bool)

(assert (=> d!469561 m!1864319))

(declare-fun m!1864321 () Bool)

(assert (=> d!469561 m!1864321))

(assert (=> d!469561 m!1864267))

(assert (=> d!469561 m!1863433))

(assert (=> d!469561 m!1864319))

(declare-fun m!1864323 () Bool)

(assert (=> d!469561 m!1864323))

(declare-fun m!1864325 () Bool)

(assert (=> b!1580757 m!1864325))

(assert (=> b!1580757 m!1864267))

(declare-fun m!1864327 () Bool)

(assert (=> b!1580757 m!1864327))

(assert (=> d!469425 d!469561))

(declare-fun d!469597 () Bool)

(declare-fun c!256145 () Bool)

(assert (=> d!469597 (= c!256145 ((_ is Node!5770) (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457)))))))))

(declare-fun e!1015474 () Bool)

(assert (=> d!469597 (= (inv!22787 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457)))))) e!1015474)))

(declare-fun b!1580759 () Bool)

(assert (=> b!1580759 (= e!1015474 (inv!22789 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457)))))))))

(declare-fun b!1580760 () Bool)

(declare-fun e!1015475 () Bool)

(assert (=> b!1580760 (= e!1015474 e!1015475)))

(declare-fun res!704748 () Bool)

(assert (=> b!1580760 (= res!704748 (not ((_ is Leaf!8521) (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457))))))))))

(assert (=> b!1580760 (=> res!704748 e!1015475)))

(declare-fun b!1580761 () Bool)

(assert (=> b!1580761 (= e!1015475 (inv!22790 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457)))))))))

(assert (= (and d!469597 c!256145) b!1580759))

(assert (= (and d!469597 (not c!256145)) b!1580760))

(assert (= (and b!1580760 (not res!704748)) b!1580761))

(declare-fun m!1864329 () Bool)

(assert (=> b!1580759 m!1864329))

(declare-fun m!1864331 () Bool)

(assert (=> b!1580761 m!1864331))

(assert (=> b!1580311 d!469597))

(declare-fun d!469599 () Bool)

(declare-fun res!704753 () Bool)

(declare-fun e!1015480 () Bool)

(assert (=> d!469599 (=> res!704753 e!1015480)))

(assert (=> d!469599 (= res!704753 ((_ is Nil!17371) tokens!457))))

(assert (=> d!469599 (= (forall!3990 tokens!457 lambda!66454) e!1015480)))

(declare-fun b!1580766 () Bool)

(declare-fun e!1015481 () Bool)

(assert (=> b!1580766 (= e!1015480 e!1015481)))

(declare-fun res!704754 () Bool)

(assert (=> b!1580766 (=> (not res!704754) (not e!1015481))))

(declare-fun dynLambda!7696 (Int Token!5688) Bool)

(assert (=> b!1580766 (= res!704754 (dynLambda!7696 lambda!66454 (h!22772 tokens!457)))))

(declare-fun b!1580767 () Bool)

(assert (=> b!1580767 (= e!1015481 (forall!3990 (t!143642 tokens!457) lambda!66454))))

(assert (= (and d!469599 (not res!704753)) b!1580766))

(assert (= (and b!1580766 res!704754) b!1580767))

(declare-fun b_lambda!49743 () Bool)

(assert (=> (not b_lambda!49743) (not b!1580766)))

(declare-fun m!1864333 () Bool)

(assert (=> b!1580766 m!1864333))

(declare-fun m!1864335 () Bool)

(assert (=> b!1580767 m!1864335))

(assert (=> d!469405 d!469599))

(assert (=> d!469405 d!469341))

(declare-fun d!469601 () Bool)

(declare-fun lt!553434 () Bool)

(declare-fun content!2386 (List!17442) (InoxSet Rule!5922))

(assert (=> d!469601 (= lt!553434 (select (content!2386 rules!1846) (rule!4857 (_1!9822 (get!4964 lt!552968)))))))

(declare-fun e!1015487 () Bool)

(assert (=> d!469601 (= lt!553434 e!1015487)))

(declare-fun res!704760 () Bool)

(assert (=> d!469601 (=> (not res!704760) (not e!1015487))))

(assert (=> d!469601 (= res!704760 ((_ is Cons!17372) rules!1846))))

(assert (=> d!469601 (= (contains!3026 rules!1846 (rule!4857 (_1!9822 (get!4964 lt!552968)))) lt!553434)))

(declare-fun b!1580772 () Bool)

(declare-fun e!1015486 () Bool)

(assert (=> b!1580772 (= e!1015487 e!1015486)))

(declare-fun res!704759 () Bool)

(assert (=> b!1580772 (=> res!704759 e!1015486)))

(assert (=> b!1580772 (= res!704759 (= (h!22773 rules!1846) (rule!4857 (_1!9822 (get!4964 lt!552968)))))))

(declare-fun b!1580773 () Bool)

(assert (=> b!1580773 (= e!1015486 (contains!3026 (t!143643 rules!1846) (rule!4857 (_1!9822 (get!4964 lt!552968)))))))

(assert (= (and d!469601 res!704760) b!1580772))

(assert (= (and b!1580772 (not res!704759)) b!1580773))

(declare-fun m!1864337 () Bool)

(assert (=> d!469601 m!1864337))

(declare-fun m!1864339 () Bool)

(assert (=> d!469601 m!1864339))

(declare-fun m!1864341 () Bool)

(assert (=> b!1580773 m!1864341))

(assert (=> b!1580176 d!469601))

(assert (=> b!1580176 d!469527))

(declare-fun d!469603 () Bool)

(declare-fun lt!553445 () List!17439)

(assert (=> d!469603 (= lt!553445 (++!4511 (list!6715 (BalanceConc!11485 Empty!5770)) (printList!805 thiss!17113 (dropList!511 lt!552802 0))))))

(declare-fun e!1015490 () List!17439)

(assert (=> d!469603 (= lt!553445 e!1015490)))

(declare-fun c!256148 () Bool)

(assert (=> d!469603 (= c!256148 ((_ is Cons!17371) (dropList!511 lt!552802 0)))))

(assert (=> d!469603 (= (printListTailRec!305 thiss!17113 (dropList!511 lt!552802 0) (list!6715 (BalanceConc!11485 Empty!5770))) lt!553445)))

(declare-fun b!1580778 () Bool)

(assert (=> b!1580778 (= e!1015490 (printListTailRec!305 thiss!17113 (t!143642 (dropList!511 lt!552802 0)) (++!4511 (list!6715 (BalanceConc!11485 Empty!5770)) (list!6715 (charsOf!1710 (h!22772 (dropList!511 lt!552802 0)))))))))

(declare-fun lt!553449 () List!17439)

(assert (=> b!1580778 (= lt!553449 (list!6715 (charsOf!1710 (h!22772 (dropList!511 lt!552802 0)))))))

(declare-fun lt!553446 () List!17439)

(assert (=> b!1580778 (= lt!553446 (printList!805 thiss!17113 (t!143642 (dropList!511 lt!552802 0))))))

(declare-fun lt!553447 () Unit!27015)

(assert (=> b!1580778 (= lt!553447 (lemmaConcatAssociativity!980 (list!6715 (BalanceConc!11485 Empty!5770)) lt!553449 lt!553446))))

(assert (=> b!1580778 (= (++!4511 (++!4511 (list!6715 (BalanceConc!11485 Empty!5770)) lt!553449) lt!553446) (++!4511 (list!6715 (BalanceConc!11485 Empty!5770)) (++!4511 lt!553449 lt!553446)))))

(declare-fun lt!553448 () Unit!27015)

(assert (=> b!1580778 (= lt!553448 lt!553447)))

(declare-fun b!1580779 () Bool)

(assert (=> b!1580779 (= e!1015490 (list!6715 (BalanceConc!11485 Empty!5770)))))

(assert (= (and d!469603 c!256148) b!1580778))

(assert (= (and d!469603 (not c!256148)) b!1580779))

(assert (=> d!469603 m!1863435))

(declare-fun m!1864343 () Bool)

(assert (=> d!469603 m!1864343))

(assert (=> d!469603 m!1863433))

(assert (=> d!469603 m!1864343))

(declare-fun m!1864345 () Bool)

(assert (=> d!469603 m!1864345))

(assert (=> b!1580778 m!1863433))

(declare-fun m!1864347 () Bool)

(assert (=> b!1580778 m!1864347))

(declare-fun m!1864349 () Bool)

(assert (=> b!1580778 m!1864349))

(declare-fun m!1864351 () Bool)

(assert (=> b!1580778 m!1864351))

(declare-fun m!1864353 () Bool)

(assert (=> b!1580778 m!1864353))

(declare-fun m!1864355 () Bool)

(assert (=> b!1580778 m!1864355))

(declare-fun m!1864357 () Bool)

(assert (=> b!1580778 m!1864357))

(assert (=> b!1580778 m!1864349))

(declare-fun m!1864359 () Bool)

(assert (=> b!1580778 m!1864359))

(assert (=> b!1580778 m!1863433))

(assert (=> b!1580778 m!1864359))

(declare-fun m!1864361 () Bool)

(assert (=> b!1580778 m!1864361))

(assert (=> b!1580778 m!1863433))

(assert (=> b!1580778 m!1864353))

(assert (=> b!1580778 m!1864361))

(declare-fun m!1864363 () Bool)

(assert (=> b!1580778 m!1864363))

(assert (=> b!1580778 m!1863433))

(assert (=> b!1580778 m!1864357))

(declare-fun m!1864365 () Bool)

(assert (=> b!1580778 m!1864365))

(assert (=> d!469365 d!469603))

(declare-fun d!469605 () Bool)

(assert (=> d!469605 (= (list!6715 lt!552992) (list!6719 (c!256021 lt!552992)))))

(declare-fun bs!390905 () Bool)

(assert (= bs!390905 d!469605))

(declare-fun m!1864367 () Bool)

(assert (=> bs!390905 m!1864367))

(assert (=> d!469365 d!469605))

(declare-fun d!469607 () Bool)

(declare-fun lt!553450 () Int)

(assert (=> d!469607 (= lt!553450 (size!13975 (list!6716 lt!552802)))))

(assert (=> d!469607 (= lt!553450 (size!13976 (c!256023 lt!552802)))))

(assert (=> d!469607 (= (size!13972 lt!552802) lt!553450)))

(declare-fun bs!390906 () Bool)

(assert (= bs!390906 d!469607))

(assert (=> bs!390906 m!1863445))

(assert (=> bs!390906 m!1863445))

(declare-fun m!1864369 () Bool)

(assert (=> bs!390906 m!1864369))

(declare-fun m!1864371 () Bool)

(assert (=> bs!390906 m!1864371))

(assert (=> d!469365 d!469607))

(declare-fun d!469609 () Bool)

(assert (=> d!469609 (= (dropList!511 lt!552802 0) (drop!814 (list!6720 (c!256023 lt!552802)) 0))))

(declare-fun bs!390907 () Bool)

(assert (= bs!390907 d!469609))

(declare-fun m!1864373 () Bool)

(assert (=> bs!390907 m!1864373))

(assert (=> bs!390907 m!1864373))

(declare-fun m!1864375 () Bool)

(assert (=> bs!390907 m!1864375))

(assert (=> d!469365 d!469609))

(declare-fun d!469611 () Bool)

(assert (=> d!469611 (= (list!6715 (BalanceConc!11485 Empty!5770)) (list!6719 (c!256021 (BalanceConc!11485 Empty!5770))))))

(declare-fun bs!390908 () Bool)

(assert (= bs!390908 d!469611))

(declare-fun m!1864377 () Bool)

(assert (=> bs!390908 m!1864377))

(assert (=> d!469365 d!469611))

(declare-fun d!469613 () Bool)

(assert (=> d!469613 true))

(declare-fun order!10239 () Int)

(declare-fun lambda!66463 () Int)

(declare-fun dynLambda!7697 (Int Int) Int)

(assert (=> d!469613 (< (dynLambda!7694 order!10235 (toChars!4323 (transformation!3061 (h!22773 rules!1846)))) (dynLambda!7697 order!10239 lambda!66463))))

(assert (=> d!469613 true))

(assert (=> d!469613 (< (dynLambda!7692 order!10231 (toValue!4464 (transformation!3061 (h!22773 rules!1846)))) (dynLambda!7697 order!10239 lambda!66463))))

(declare-fun Forall!631 (Int) Bool)

(assert (=> d!469613 (= (semiInverseModEq!1150 (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toValue!4464 (transformation!3061 (h!22773 rules!1846)))) (Forall!631 lambda!66463))))

(declare-fun bs!390909 () Bool)

(assert (= bs!390909 d!469613))

(declare-fun m!1864379 () Bool)

(assert (=> bs!390909 m!1864379))

(assert (=> d!469491 d!469613))

(declare-fun d!469615 () Bool)

(assert (=> d!469615 (= (list!6715 lt!553127) (list!6719 (c!256021 lt!553127)))))

(declare-fun bs!390910 () Bool)

(assert (= bs!390910 d!469615))

(declare-fun m!1864381 () Bool)

(assert (=> bs!390910 m!1864381))

(assert (=> d!469435 d!469615))

(declare-fun b!1580785 () Bool)

(declare-fun res!704761 () Bool)

(declare-fun e!1015493 () Bool)

(assert (=> b!1580785 (=> (not res!704761) (not e!1015493))))

(assert (=> b!1580785 (= res!704761 (= (head!3188 lt!552801) (head!3188 (++!4511 lt!552801 lt!552795))))))

(declare-fun b!1580784 () Bool)

(declare-fun e!1015492 () Bool)

(assert (=> b!1580784 (= e!1015492 e!1015493)))

(declare-fun res!704763 () Bool)

(assert (=> b!1580784 (=> (not res!704763) (not e!1015493))))

(assert (=> b!1580784 (= res!704763 (not ((_ is Nil!17369) (++!4511 lt!552801 lt!552795))))))

(declare-fun b!1580787 () Bool)

(declare-fun e!1015491 () Bool)

(assert (=> b!1580787 (= e!1015491 (>= (size!13973 (++!4511 lt!552801 lt!552795)) (size!13973 lt!552801)))))

(declare-fun b!1580786 () Bool)

(assert (=> b!1580786 (= e!1015493 (isPrefix!1321 (tail!2254 lt!552801) (tail!2254 (++!4511 lt!552801 lt!552795))))))

(declare-fun d!469617 () Bool)

(assert (=> d!469617 e!1015491))

(declare-fun res!704764 () Bool)

(assert (=> d!469617 (=> res!704764 e!1015491)))

(declare-fun lt!553451 () Bool)

(assert (=> d!469617 (= res!704764 (not lt!553451))))

(assert (=> d!469617 (= lt!553451 e!1015492)))

(declare-fun res!704762 () Bool)

(assert (=> d!469617 (=> res!704762 e!1015492)))

(assert (=> d!469617 (= res!704762 ((_ is Nil!17369) lt!552801))))

(assert (=> d!469617 (= (isPrefix!1321 lt!552801 (++!4511 lt!552801 lt!552795)) lt!553451)))

(assert (= (and d!469617 (not res!704762)) b!1580784))

(assert (= (and b!1580784 res!704763) b!1580785))

(assert (= (and b!1580785 res!704761) b!1580786))

(assert (= (and d!469617 (not res!704764)) b!1580787))

(assert (=> b!1580785 m!1863951))

(assert (=> b!1580785 m!1863107))

(declare-fun m!1864383 () Bool)

(assert (=> b!1580785 m!1864383))

(assert (=> b!1580787 m!1863107))

(declare-fun m!1864385 () Bool)

(assert (=> b!1580787 m!1864385))

(assert (=> b!1580787 m!1863679))

(assert (=> b!1580786 m!1863957))

(assert (=> b!1580786 m!1863107))

(declare-fun m!1864387 () Bool)

(assert (=> b!1580786 m!1864387))

(assert (=> b!1580786 m!1863957))

(assert (=> b!1580786 m!1864387))

(declare-fun m!1864389 () Bool)

(assert (=> b!1580786 m!1864389))

(assert (=> d!469485 d!469617))

(assert (=> d!469485 d!469417))

(declare-fun d!469619 () Bool)

(assert (=> d!469619 (isPrefix!1321 lt!552801 (++!4511 lt!552801 lt!552795))))

(assert (=> d!469619 true))

(declare-fun _$46!1044 () Unit!27015)

(assert (=> d!469619 (= (choose!9446 lt!552801 lt!552795) _$46!1044)))

(declare-fun bs!390911 () Bool)

(assert (= bs!390911 d!469619))

(assert (=> bs!390911 m!1863107))

(assert (=> bs!390911 m!1863107))

(assert (=> bs!390911 m!1863963))

(assert (=> d!469485 d!469619))

(assert (=> b!1580179 d!469527))

(declare-fun d!469621 () Bool)

(declare-fun dynLambda!7698 (Int BalanceConc!11484) TokenValue!3151)

(assert (=> d!469621 (= (apply!4212 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!552968))))) (dynLambda!7698 (toValue!4464 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968))))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!552968))))))))

(declare-fun b_lambda!49745 () Bool)

(assert (=> (not b_lambda!49745) (not d!469621)))

(declare-fun tb!88887 () Bool)

(declare-fun t!143707 () Bool)

(assert (=> (and b!1580060 (= (toValue!4464 (transformation!3061 (h!22773 rules!1846))) (toValue!4464 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143707) tb!88887))

(declare-fun result!107578 () Bool)

(assert (=> tb!88887 (= result!107578 (inv!21 (dynLambda!7698 (toValue!4464 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968))))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!552968)))))))))

(declare-fun m!1864391 () Bool)

(assert (=> tb!88887 m!1864391))

(assert (=> d!469621 t!143707))

(declare-fun b_and!110773 () Bool)

(assert (= b_and!110701 (and (=> t!143707 result!107578) b_and!110773)))

(declare-fun t!143709 () Bool)

(declare-fun tb!88889 () Bool)

(assert (=> (and b!1580067 (= (toValue!4464 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toValue!4464 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143709) tb!88889))

(declare-fun result!107582 () Bool)

(assert (= result!107582 result!107578))

(assert (=> d!469621 t!143709))

(declare-fun b_and!110775 () Bool)

(assert (= b_and!110705 (and (=> t!143709 result!107582) b_and!110775)))

(declare-fun t!143711 () Bool)

(declare-fun tb!88891 () Bool)

(assert (=> (and b!1580515 (= (toValue!4464 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toValue!4464 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143711) tb!88891))

(declare-fun result!107584 () Bool)

(assert (= result!107584 result!107578))

(assert (=> d!469621 t!143711))

(declare-fun b_and!110777 () Bool)

(assert (= b_and!110741 (and (=> t!143711 result!107584) b_and!110777)))

(declare-fun tb!88893 () Bool)

(declare-fun t!143713 () Bool)

(assert (=> (and b!1580538 (= (toValue!4464 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toValue!4464 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143713) tb!88893))

(declare-fun result!107586 () Bool)

(assert (= result!107586 result!107578))

(assert (=> d!469621 t!143713))

(declare-fun b_and!110779 () Bool)

(assert (= b_and!110745 (and (=> t!143713 result!107586) b_and!110779)))

(assert (=> d!469621 m!1863397))

(declare-fun m!1864393 () Bool)

(assert (=> d!469621 m!1864393))

(assert (=> b!1580179 d!469621))

(declare-fun d!469623 () Bool)

(assert (=> d!469623 (= (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!552968)))) (fromListB!793 (originalCharacters!3875 (_1!9822 (get!4964 lt!552968)))))))

(declare-fun bs!390912 () Bool)

(assert (= bs!390912 d!469623))

(declare-fun m!1864395 () Bool)

(assert (=> bs!390912 m!1864395))

(assert (=> b!1580179 d!469623))

(declare-fun d!469625 () Bool)

(assert (=> d!469625 (= (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938)))) (v!23958 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938)))))))

(assert (=> b!1580143 d!469625))

(declare-fun b!1580802 () Bool)

(declare-fun e!1015505 () Option!3116)

(assert (=> b!1580802 (= e!1015505 (Some!3115 (h!22773 rules!1846)))))

(declare-fun b!1580803 () Bool)

(declare-fun e!1015507 () Option!3116)

(assert (=> b!1580803 (= e!1015505 e!1015507)))

(declare-fun c!256154 () Bool)

(assert (=> b!1580803 (= c!256154 (and ((_ is Cons!17372) rules!1846) (not (= (tag!3327 (h!22773 rules!1846)) (tag!3327 (rule!4857 lt!552938))))))))

(declare-fun b!1580804 () Bool)

(declare-fun e!1015508 () Bool)

(declare-fun lt!553458 () Option!3116)

(assert (=> b!1580804 (= e!1015508 (= (tag!3327 (get!4962 lt!553458)) (tag!3327 (rule!4857 lt!552938))))))

(declare-fun b!1580805 () Bool)

(declare-fun e!1015506 () Bool)

(assert (=> b!1580805 (= e!1015506 e!1015508)))

(declare-fun res!704769 () Bool)

(assert (=> b!1580805 (=> (not res!704769) (not e!1015508))))

(assert (=> b!1580805 (= res!704769 (contains!3026 rules!1846 (get!4962 lt!553458)))))

(declare-fun d!469627 () Bool)

(assert (=> d!469627 e!1015506))

(declare-fun res!704770 () Bool)

(assert (=> d!469627 (=> res!704770 e!1015506)))

(declare-fun isEmpty!10390 (Option!3116) Bool)

(assert (=> d!469627 (= res!704770 (isEmpty!10390 lt!553458))))

(assert (=> d!469627 (= lt!553458 e!1015505)))

(declare-fun c!256153 () Bool)

(assert (=> d!469627 (= c!256153 (and ((_ is Cons!17372) rules!1846) (= (tag!3327 (h!22773 rules!1846)) (tag!3327 (rule!4857 lt!552938)))))))

(assert (=> d!469627 (rulesInvariant!2359 thiss!17113 rules!1846)))

(assert (=> d!469627 (= (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938))) lt!553458)))

(declare-fun b!1580806 () Bool)

(assert (=> b!1580806 (= e!1015507 None!3115)))

(declare-fun b!1580807 () Bool)

(declare-fun lt!553460 () Unit!27015)

(declare-fun lt!553459 () Unit!27015)

(assert (=> b!1580807 (= lt!553460 lt!553459)))

(assert (=> b!1580807 (rulesInvariant!2359 thiss!17113 (t!143643 rules!1846))))

(declare-fun lemmaInvariantOnRulesThenOnTail!89 (LexerInterface!2690 Rule!5922 List!17442) Unit!27015)

(assert (=> b!1580807 (= lt!553459 (lemmaInvariantOnRulesThenOnTail!89 thiss!17113 (h!22773 rules!1846) (t!143643 rules!1846)))))

(assert (=> b!1580807 (= e!1015507 (getRuleFromTag!234 thiss!17113 (t!143643 rules!1846) (tag!3327 (rule!4857 lt!552938))))))

(assert (= (and d!469627 c!256153) b!1580802))

(assert (= (and d!469627 (not c!256153)) b!1580803))

(assert (= (and b!1580803 c!256154) b!1580807))

(assert (= (and b!1580803 (not c!256154)) b!1580806))

(assert (= (and d!469627 (not res!704770)) b!1580805))

(assert (= (and b!1580805 res!704769) b!1580804))

(declare-fun m!1864397 () Bool)

(assert (=> b!1580804 m!1864397))

(assert (=> b!1580805 m!1864397))

(assert (=> b!1580805 m!1864397))

(declare-fun m!1864399 () Bool)

(assert (=> b!1580805 m!1864399))

(declare-fun m!1864401 () Bool)

(assert (=> d!469627 m!1864401))

(assert (=> d!469627 m!1863079))

(declare-fun m!1864403 () Bool)

(assert (=> b!1580807 m!1864403))

(declare-fun m!1864405 () Bool)

(assert (=> b!1580807 m!1864405))

(declare-fun m!1864407 () Bool)

(assert (=> b!1580807 m!1864407))

(assert (=> b!1580143 d!469627))

(declare-fun lt!553461 () Bool)

(declare-fun d!469629 () Bool)

(assert (=> d!469629 (= lt!553461 (isEmpty!10386 (list!6715 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))))))))))

(assert (=> d!469629 (= lt!553461 (isEmpty!10387 (c!256021 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))))))))))

(assert (=> d!469629 (= (isEmpty!10377 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))))) lt!553461)))

(declare-fun bs!390913 () Bool)

(assert (= bs!390913 d!469629))

(declare-fun m!1864409 () Bool)

(assert (=> bs!390913 m!1864409))

(assert (=> bs!390913 m!1864409))

(declare-fun m!1864411 () Bool)

(assert (=> bs!390913 m!1864411))

(declare-fun m!1864413 () Bool)

(assert (=> bs!390913 m!1864413))

(assert (=> b!1580097 d!469629))

(declare-fun b!1580808 () Bool)

(declare-fun e!1015510 () Bool)

(declare-fun e!1015509 () Bool)

(assert (=> b!1580808 (= e!1015510 e!1015509)))

(declare-fun lt!553462 () tuple2!16842)

(declare-fun res!704773 () Bool)

(assert (=> b!1580808 (= res!704773 (< (size!13974 (_2!9823 lt!553462)) (size!13974 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))))))))

(assert (=> b!1580808 (=> (not res!704773) (not e!1015509))))

(declare-fun b!1580809 () Bool)

(assert (=> b!1580809 (= e!1015509 (not (isEmpty!10378 (_1!9823 lt!553462))))))

(declare-fun e!1015511 () Bool)

(declare-fun b!1580810 () Bool)

(assert (=> b!1580810 (= e!1015511 (= (list!6715 (_2!9823 lt!553462)) (_2!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))))))))))

(declare-fun d!469631 () Bool)

(assert (=> d!469631 e!1015511))

(declare-fun res!704772 () Bool)

(assert (=> d!469631 (=> (not res!704772) (not e!1015511))))

(assert (=> d!469631 (= res!704772 e!1015510)))

(declare-fun c!256155 () Bool)

(assert (=> d!469631 (= c!256155 (> (size!13972 (_1!9823 lt!553462)) 0))))

(assert (=> d!469631 (= lt!553462 (lexTailRecV2!502 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))) (BalanceConc!11485 Empty!5770) (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))) (BalanceConc!11487 Empty!5771)))))

(assert (=> d!469631 (= (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))) lt!553462)))

(declare-fun b!1580811 () Bool)

(declare-fun res!704771 () Bool)

(assert (=> b!1580811 (=> (not res!704771) (not e!1015511))))

(assert (=> b!1580811 (= res!704771 (= (list!6716 (_1!9823 lt!553462)) (_1!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))))))))))

(declare-fun b!1580812 () Bool)

(assert (=> b!1580812 (= e!1015510 (= (_2!9823 lt!553462) (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))))))

(assert (= (and d!469631 c!256155) b!1580808))

(assert (= (and d!469631 (not c!256155)) b!1580812))

(assert (= (and b!1580808 res!704773) b!1580809))

(assert (= (and d!469631 res!704772) b!1580811))

(assert (= (and b!1580811 res!704771) b!1580810))

(declare-fun m!1864415 () Bool)

(assert (=> b!1580808 m!1864415))

(assert (=> b!1580808 m!1863171))

(declare-fun m!1864417 () Bool)

(assert (=> b!1580808 m!1864417))

(declare-fun m!1864419 () Bool)

(assert (=> b!1580810 m!1864419))

(assert (=> b!1580810 m!1863171))

(declare-fun m!1864421 () Bool)

(assert (=> b!1580810 m!1864421))

(assert (=> b!1580810 m!1864421))

(declare-fun m!1864423 () Bool)

(assert (=> b!1580810 m!1864423))

(declare-fun m!1864425 () Bool)

(assert (=> d!469631 m!1864425))

(assert (=> d!469631 m!1863171))

(assert (=> d!469631 m!1863171))

(declare-fun m!1864427 () Bool)

(assert (=> d!469631 m!1864427))

(declare-fun m!1864429 () Bool)

(assert (=> b!1580809 m!1864429))

(declare-fun m!1864431 () Bool)

(assert (=> b!1580811 m!1864431))

(assert (=> b!1580811 m!1863171))

(assert (=> b!1580811 m!1864421))

(assert (=> b!1580811 m!1864421))

(assert (=> b!1580811 m!1864423))

(assert (=> b!1580097 d!469631))

(declare-fun d!469633 () Bool)

(declare-fun lt!553467 () BalanceConc!11484)

(assert (=> d!469633 (= (list!6715 lt!553467) (printList!805 thiss!17113 (list!6716 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!469633 (= lt!553467 (printTailRec!743 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))) 0 (BalanceConc!11485 Empty!5770)))))

(assert (=> d!469633 (= (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))) lt!553467)))

(declare-fun bs!390914 () Bool)

(assert (= bs!390914 d!469633))

(declare-fun m!1864433 () Bool)

(assert (=> bs!390914 m!1864433))

(assert (=> bs!390914 m!1863175))

(assert (=> bs!390914 m!1863177))

(assert (=> bs!390914 m!1863177))

(declare-fun m!1864435 () Bool)

(assert (=> bs!390914 m!1864435))

(assert (=> bs!390914 m!1863175))

(assert (=> bs!390914 m!1863941))

(assert (=> b!1580097 d!469633))

(declare-fun d!469635 () Bool)

(declare-fun e!1015516 () Bool)

(assert (=> d!469635 e!1015516))

(declare-fun res!704776 () Bool)

(assert (=> d!469635 (=> (not res!704776) (not e!1015516))))

(declare-fun lt!553472 () BalanceConc!11486)

(assert (=> d!469635 (= res!704776 (= (list!6716 lt!553472) (Cons!17371 (h!22772 (t!143642 tokens!457)) Nil!17371)))))

(assert (=> d!469635 (= lt!553472 (singleton!572 (h!22772 (t!143642 tokens!457))))))

(assert (=> d!469635 (= (singletonSeq!1399 (h!22772 (t!143642 tokens!457))) lt!553472)))

(declare-fun b!1580819 () Bool)

(assert (=> b!1580819 (= e!1015516 (isBalanced!1691 (c!256023 lt!553472)))))

(assert (= (and d!469635 res!704776) b!1580819))

(declare-fun m!1864437 () Bool)

(assert (=> d!469635 m!1864437))

(declare-fun m!1864439 () Bool)

(assert (=> d!469635 m!1864439))

(declare-fun m!1864441 () Bool)

(assert (=> b!1580819 m!1864441))

(assert (=> b!1580097 d!469635))

(assert (=> b!1580200 d!469607))

(declare-fun d!469637 () Bool)

(declare-fun isBalanced!1693 (Conc!5770) Bool)

(assert (=> d!469637 (= (inv!22788 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457))))) (isBalanced!1693 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457)))))))))

(declare-fun bs!390915 () Bool)

(assert (= bs!390915 d!469637))

(declare-fun m!1864443 () Bool)

(assert (=> bs!390915 m!1864443))

(assert (=> tb!88843 d!469637))

(declare-fun d!469639 () Bool)

(assert (=> d!469639 (= (list!6715 (_2!9823 lt!553125)) (list!6719 (c!256021 (_2!9823 lt!553125))))))

(declare-fun bs!390916 () Bool)

(assert (= bs!390916 d!469639))

(declare-fun m!1864445 () Bool)

(assert (=> bs!390916 m!1864445))

(assert (=> b!1580329 d!469639))

(assert (=> b!1580329 d!469523))

(assert (=> b!1580329 d!469427))

(declare-fun d!469641 () Bool)

(declare-fun c!256160 () Bool)

(assert (=> d!469641 (= c!256160 ((_ is Nil!17369) lt!553124))))

(declare-fun e!1015523 () (InoxSet C!8952))

(assert (=> d!469641 (= (content!2385 lt!553124) e!1015523)))

(declare-fun b!1580836 () Bool)

(assert (=> b!1580836 (= e!1015523 ((as const (Array C!8952 Bool)) false))))

(declare-fun b!1580837 () Bool)

(assert (=> b!1580837 (= e!1015523 ((_ map or) (store ((as const (Array C!8952 Bool)) false) (h!22770 lt!553124) true) (content!2385 (t!143640 lt!553124))))))

(assert (= (and d!469641 c!256160) b!1580836))

(assert (= (and d!469641 (not c!256160)) b!1580837))

(declare-fun m!1864447 () Bool)

(assert (=> b!1580837 m!1864447))

(declare-fun m!1864449 () Bool)

(assert (=> b!1580837 m!1864449))

(assert (=> d!469417 d!469641))

(declare-fun d!469643 () Bool)

(declare-fun c!256161 () Bool)

(assert (=> d!469643 (= c!256161 ((_ is Nil!17369) lt!552801))))

(declare-fun e!1015524 () (InoxSet C!8952))

(assert (=> d!469643 (= (content!2385 lt!552801) e!1015524)))

(declare-fun b!1580838 () Bool)

(assert (=> b!1580838 (= e!1015524 ((as const (Array C!8952 Bool)) false))))

(declare-fun b!1580839 () Bool)

(assert (=> b!1580839 (= e!1015524 ((_ map or) (store ((as const (Array C!8952 Bool)) false) (h!22770 lt!552801) true) (content!2385 (t!143640 lt!552801))))))

(assert (= (and d!469643 c!256161) b!1580838))

(assert (= (and d!469643 (not c!256161)) b!1580839))

(declare-fun m!1864451 () Bool)

(assert (=> b!1580839 m!1864451))

(declare-fun m!1864453 () Bool)

(assert (=> b!1580839 m!1864453))

(assert (=> d!469417 d!469643))

(declare-fun d!469645 () Bool)

(declare-fun c!256162 () Bool)

(assert (=> d!469645 (= c!256162 ((_ is Nil!17369) lt!552795))))

(declare-fun e!1015525 () (InoxSet C!8952))

(assert (=> d!469645 (= (content!2385 lt!552795) e!1015525)))

(declare-fun b!1580840 () Bool)

(assert (=> b!1580840 (= e!1015525 ((as const (Array C!8952 Bool)) false))))

(declare-fun b!1580841 () Bool)

(assert (=> b!1580841 (= e!1015525 ((_ map or) (store ((as const (Array C!8952 Bool)) false) (h!22770 lt!552795) true) (content!2385 (t!143640 lt!552795))))))

(assert (= (and d!469645 c!256162) b!1580840))

(assert (= (and d!469645 (not c!256162)) b!1580841))

(declare-fun m!1864455 () Bool)

(assert (=> b!1580841 m!1864455))

(declare-fun m!1864457 () Bool)

(assert (=> b!1580841 m!1864457))

(assert (=> d!469417 d!469645))

(declare-fun b!1580842 () Bool)

(declare-fun e!1015527 () Bool)

(declare-fun e!1015526 () Bool)

(assert (=> b!1580842 (= e!1015527 e!1015526)))

(declare-fun res!704792 () Bool)

(assert (=> b!1580842 (=> (not res!704792) (not e!1015526))))

(declare-fun lt!553479 () Option!3114)

(assert (=> b!1580842 (= res!704792 (isDefined!2493 lt!553479))))

(declare-fun b!1580843 () Bool)

(declare-fun e!1015528 () Option!3114)

(declare-fun lt!553477 () Option!3114)

(declare-fun lt!553476 () Option!3114)

(assert (=> b!1580843 (= e!1015528 (ite (and ((_ is None!3113) lt!553477) ((_ is None!3113) lt!553476)) None!3113 (ite ((_ is None!3113) lt!553476) lt!553477 (ite ((_ is None!3113) lt!553477) lt!553476 (ite (>= (size!13968 (_1!9822 (v!23950 lt!553477))) (size!13968 (_1!9822 (v!23950 lt!553476)))) lt!553477 lt!553476)))))))

(declare-fun call!102699 () Option!3114)

(assert (=> b!1580843 (= lt!553477 call!102699)))

(assert (=> b!1580843 (= lt!553476 (maxPrefix!1254 thiss!17113 (t!143643 (t!143643 rules!1846)) lt!552796))))

(declare-fun b!1580844 () Bool)

(declare-fun res!704795 () Bool)

(assert (=> b!1580844 (=> (not res!704795) (not e!1015526))))

(assert (=> b!1580844 (= res!704795 (matchR!1910 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!553479)))) (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553479))))))))

(declare-fun b!1580845 () Bool)

(assert (=> b!1580845 (= e!1015526 (contains!3026 (t!143643 rules!1846) (rule!4857 (_1!9822 (get!4964 lt!553479)))))))

(declare-fun b!1580846 () Bool)

(declare-fun res!704793 () Bool)

(assert (=> b!1580846 (=> (not res!704793) (not e!1015526))))

(assert (=> b!1580846 (= res!704793 (< (size!13973 (_2!9822 (get!4964 lt!553479))) (size!13973 lt!552796)))))

(declare-fun b!1580847 () Bool)

(assert (=> b!1580847 (= e!1015528 call!102699)))

(declare-fun b!1580848 () Bool)

(declare-fun res!704791 () Bool)

(assert (=> b!1580848 (=> (not res!704791) (not e!1015526))))

(assert (=> b!1580848 (= res!704791 (= (value!96911 (_1!9822 (get!4964 lt!553479))) (apply!4212 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!553479)))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!553479)))))))))

(declare-fun b!1580849 () Bool)

(declare-fun res!704794 () Bool)

(assert (=> b!1580849 (=> (not res!704794) (not e!1015526))))

(assert (=> b!1580849 (= res!704794 (= (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553479)))) (originalCharacters!3875 (_1!9822 (get!4964 lt!553479)))))))

(declare-fun b!1580850 () Bool)

(declare-fun res!704790 () Bool)

(assert (=> b!1580850 (=> (not res!704790) (not e!1015526))))

(assert (=> b!1580850 (= res!704790 (= (++!4511 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553479)))) (_2!9822 (get!4964 lt!553479))) lt!552796))))

(declare-fun bm!102694 () Bool)

(assert (=> bm!102694 (= call!102699 (maxPrefixOneRule!725 thiss!17113 (h!22773 (t!143643 rules!1846)) lt!552796))))

(declare-fun d!469647 () Bool)

(assert (=> d!469647 e!1015527))

(declare-fun res!704789 () Bool)

(assert (=> d!469647 (=> res!704789 e!1015527)))

(assert (=> d!469647 (= res!704789 (isEmpty!10382 lt!553479))))

(assert (=> d!469647 (= lt!553479 e!1015528)))

(declare-fun c!256163 () Bool)

(assert (=> d!469647 (= c!256163 (and ((_ is Cons!17372) (t!143643 rules!1846)) ((_ is Nil!17372) (t!143643 (t!143643 rules!1846)))))))

(declare-fun lt!553475 () Unit!27015)

(declare-fun lt!553478 () Unit!27015)

(assert (=> d!469647 (= lt!553475 lt!553478)))

(assert (=> d!469647 (isPrefix!1321 lt!552796 lt!552796)))

(assert (=> d!469647 (= lt!553478 (lemmaIsPrefixRefl!909 lt!552796 lt!552796))))

(assert (=> d!469647 (rulesValidInductive!911 thiss!17113 (t!143643 rules!1846))))

(assert (=> d!469647 (= (maxPrefix!1254 thiss!17113 (t!143643 rules!1846) lt!552796) lt!553479)))

(assert (= (and d!469647 c!256163) b!1580847))

(assert (= (and d!469647 (not c!256163)) b!1580843))

(assert (= (or b!1580847 b!1580843) bm!102694))

(assert (= (and d!469647 (not res!704789)) b!1580842))

(assert (= (and b!1580842 res!704792) b!1580849))

(assert (= (and b!1580849 res!704794) b!1580846))

(assert (= (and b!1580846 res!704793) b!1580850))

(assert (= (and b!1580850 res!704790) b!1580848))

(assert (= (and b!1580848 res!704791) b!1580844))

(assert (= (and b!1580844 res!704795) b!1580845))

(declare-fun m!1864459 () Bool)

(assert (=> b!1580843 m!1864459))

(declare-fun m!1864461 () Bool)

(assert (=> b!1580849 m!1864461))

(declare-fun m!1864463 () Bool)

(assert (=> b!1580849 m!1864463))

(assert (=> b!1580849 m!1864463))

(declare-fun m!1864465 () Bool)

(assert (=> b!1580849 m!1864465))

(declare-fun m!1864467 () Bool)

(assert (=> d!469647 m!1864467))

(assert (=> d!469647 m!1863387))

(assert (=> d!469647 m!1863389))

(declare-fun m!1864469 () Bool)

(assert (=> d!469647 m!1864469))

(assert (=> b!1580845 m!1864461))

(declare-fun m!1864471 () Bool)

(assert (=> b!1580845 m!1864471))

(declare-fun m!1864473 () Bool)

(assert (=> bm!102694 m!1864473))

(assert (=> b!1580848 m!1864461))

(declare-fun m!1864475 () Bool)

(assert (=> b!1580848 m!1864475))

(assert (=> b!1580848 m!1864475))

(declare-fun m!1864477 () Bool)

(assert (=> b!1580848 m!1864477))

(assert (=> b!1580850 m!1864461))

(assert (=> b!1580850 m!1864463))

(assert (=> b!1580850 m!1864463))

(assert (=> b!1580850 m!1864465))

(assert (=> b!1580850 m!1864465))

(declare-fun m!1864479 () Bool)

(assert (=> b!1580850 m!1864479))

(declare-fun m!1864481 () Bool)

(assert (=> b!1580842 m!1864481))

(assert (=> b!1580844 m!1864461))

(assert (=> b!1580844 m!1864463))

(assert (=> b!1580844 m!1864463))

(assert (=> b!1580844 m!1864465))

(assert (=> b!1580844 m!1864465))

(declare-fun m!1864483 () Bool)

(assert (=> b!1580844 m!1864483))

(assert (=> b!1580846 m!1864461))

(declare-fun m!1864485 () Bool)

(assert (=> b!1580846 m!1864485))

(assert (=> b!1580846 m!1863409))

(assert (=> b!1580174 d!469647))

(declare-fun d!469649 () Bool)

(declare-fun lt!553485 () Int)

(assert (=> d!469649 (>= lt!553485 0)))

(declare-fun e!1015533 () Int)

(assert (=> d!469649 (= lt!553485 e!1015533)))

(declare-fun c!256165 () Bool)

(assert (=> d!469649 (= c!256165 ((_ is Nil!17369) lt!552805))))

(assert (=> d!469649 (= (size!13973 lt!552805) lt!553485)))

(declare-fun b!1580860 () Bool)

(assert (=> b!1580860 (= e!1015533 0)))

(declare-fun b!1580861 () Bool)

(assert (=> b!1580861 (= e!1015533 (+ 1 (size!13973 (t!143640 lt!552805))))))

(assert (= (and d!469649 c!256165) b!1580860))

(assert (= (and d!469649 (not c!256165)) b!1580861))

(declare-fun m!1864487 () Bool)

(assert (=> b!1580861 m!1864487))

(assert (=> b!1580459 d!469649))

(assert (=> b!1580459 d!469543))

(declare-fun lt!553486 () Bool)

(declare-fun d!469651 () Bool)

(assert (=> d!469651 (= lt!553486 (isEmpty!10386 (list!6715 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457))))))))))

(assert (=> d!469651 (= lt!553486 (isEmpty!10387 (c!256021 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457))))))))))

(assert (=> d!469651 (= (isEmpty!10377 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457)))))) lt!553486)))

(declare-fun bs!390917 () Bool)

(assert (= bs!390917 d!469651))

(declare-fun m!1864489 () Bool)

(assert (=> bs!390917 m!1864489))

(assert (=> bs!390917 m!1864489))

(declare-fun m!1864491 () Bool)

(assert (=> bs!390917 m!1864491))

(declare-fun m!1864493 () Bool)

(assert (=> bs!390917 m!1864493))

(assert (=> b!1580487 d!469651))

(declare-fun b!1580862 () Bool)

(declare-fun e!1015535 () Bool)

(declare-fun e!1015534 () Bool)

(assert (=> b!1580862 (= e!1015535 e!1015534)))

(declare-fun res!704805 () Bool)

(declare-fun lt!553487 () tuple2!16842)

(assert (=> b!1580862 (= res!704805 (< (size!13974 (_2!9823 lt!553487)) (size!13974 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457))))))))

(assert (=> b!1580862 (=> (not res!704805) (not e!1015534))))

(declare-fun b!1580863 () Bool)

(assert (=> b!1580863 (= e!1015534 (not (isEmpty!10378 (_1!9823 lt!553487))))))

(declare-fun b!1580864 () Bool)

(declare-fun e!1015536 () Bool)

(assert (=> b!1580864 (= e!1015536 (= (list!6715 (_2!9823 lt!553487)) (_2!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457))))))))))

(declare-fun d!469653 () Bool)

(assert (=> d!469653 e!1015536))

(declare-fun res!704804 () Bool)

(assert (=> d!469653 (=> (not res!704804) (not e!1015536))))

(assert (=> d!469653 (= res!704804 e!1015535)))

(declare-fun c!256166 () Bool)

(assert (=> d!469653 (= c!256166 (> (size!13972 (_1!9823 lt!553487)) 0))))

(assert (=> d!469653 (= lt!553487 (lexTailRecV2!502 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457))) (BalanceConc!11485 Empty!5770) (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457))) (BalanceConc!11487 Empty!5771)))))

(assert (=> d!469653 (= (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457)))) lt!553487)))

(declare-fun b!1580865 () Bool)

(declare-fun res!704803 () Bool)

(assert (=> b!1580865 (=> (not res!704803) (not e!1015536))))

(assert (=> b!1580865 (= res!704803 (= (list!6716 (_1!9823 lt!553487)) (_1!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457))))))))))

(declare-fun b!1580866 () Bool)

(assert (=> b!1580866 (= e!1015535 (= (_2!9823 lt!553487) (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457)))))))

(assert (= (and d!469653 c!256166) b!1580862))

(assert (= (and d!469653 (not c!256166)) b!1580866))

(assert (= (and b!1580862 res!704805) b!1580863))

(assert (= (and d!469653 res!704804) b!1580865))

(assert (= (and b!1580865 res!704803) b!1580864))

(declare-fun m!1864495 () Bool)

(assert (=> b!1580862 m!1864495))

(assert (=> b!1580862 m!1864005))

(declare-fun m!1864497 () Bool)

(assert (=> b!1580862 m!1864497))

(declare-fun m!1864499 () Bool)

(assert (=> b!1580864 m!1864499))

(assert (=> b!1580864 m!1864005))

(declare-fun m!1864501 () Bool)

(assert (=> b!1580864 m!1864501))

(assert (=> b!1580864 m!1864501))

(declare-fun m!1864503 () Bool)

(assert (=> b!1580864 m!1864503))

(declare-fun m!1864505 () Bool)

(assert (=> d!469653 m!1864505))

(assert (=> d!469653 m!1864005))

(assert (=> d!469653 m!1864005))

(declare-fun m!1864507 () Bool)

(assert (=> d!469653 m!1864507))

(declare-fun m!1864509 () Bool)

(assert (=> b!1580863 m!1864509))

(declare-fun m!1864511 () Bool)

(assert (=> b!1580865 m!1864511))

(assert (=> b!1580865 m!1864005))

(assert (=> b!1580865 m!1864501))

(assert (=> b!1580865 m!1864501))

(assert (=> b!1580865 m!1864503))

(assert (=> b!1580487 d!469653))

(declare-fun d!469655 () Bool)

(declare-fun lt!553488 () BalanceConc!11484)

(assert (=> d!469655 (= (list!6715 lt!553488) (printList!805 thiss!17113 (list!6716 (singletonSeq!1399 (h!22772 tokens!457)))))))

(assert (=> d!469655 (= lt!553488 (printTailRec!743 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457)) 0 (BalanceConc!11485 Empty!5770)))))

(assert (=> d!469655 (= (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457))) lt!553488)))

(declare-fun bs!390918 () Bool)

(assert (= bs!390918 d!469655))

(declare-fun m!1864513 () Bool)

(assert (=> bs!390918 m!1864513))

(assert (=> bs!390918 m!1863135))

(assert (=> bs!390918 m!1864009))

(assert (=> bs!390918 m!1864009))

(declare-fun m!1864515 () Bool)

(assert (=> bs!390918 m!1864515))

(assert (=> bs!390918 m!1863135))

(declare-fun m!1864519 () Bool)

(assert (=> bs!390918 m!1864519))

(assert (=> b!1580487 d!469655))

(assert (=> b!1580487 d!469377))

(declare-fun b!1580869 () Bool)

(declare-fun res!704807 () Bool)

(declare-fun e!1015537 () Bool)

(assert (=> b!1580869 (=> (not res!704807) (not e!1015537))))

(declare-fun lt!553489 () List!17439)

(assert (=> b!1580869 (= res!704807 (= (size!13973 lt!553489) (+ (size!13973 (t!143640 lt!552801)) (size!13973 lt!552795))))))

(declare-fun b!1580868 () Bool)

(declare-fun e!1015538 () List!17439)

(assert (=> b!1580868 (= e!1015538 (Cons!17369 (h!22770 (t!143640 lt!552801)) (++!4511 (t!143640 (t!143640 lt!552801)) lt!552795)))))

(declare-fun d!469657 () Bool)

(assert (=> d!469657 e!1015537))

(declare-fun res!704806 () Bool)

(assert (=> d!469657 (=> (not res!704806) (not e!1015537))))

(assert (=> d!469657 (= res!704806 (= (content!2385 lt!553489) ((_ map or) (content!2385 (t!143640 lt!552801)) (content!2385 lt!552795))))))

(assert (=> d!469657 (= lt!553489 e!1015538)))

(declare-fun c!256167 () Bool)

(assert (=> d!469657 (= c!256167 ((_ is Nil!17369) (t!143640 lt!552801)))))

(assert (=> d!469657 (= (++!4511 (t!143640 lt!552801) lt!552795) lt!553489)))

(declare-fun b!1580870 () Bool)

(assert (=> b!1580870 (= e!1015537 (or (not (= lt!552795 Nil!17369)) (= lt!553489 (t!143640 lt!552801))))))

(declare-fun b!1580867 () Bool)

(assert (=> b!1580867 (= e!1015538 lt!552795)))

(assert (= (and d!469657 c!256167) b!1580867))

(assert (= (and d!469657 (not c!256167)) b!1580868))

(assert (= (and d!469657 res!704806) b!1580869))

(assert (= (and b!1580869 res!704807) b!1580870))

(declare-fun m!1864537 () Bool)

(assert (=> b!1580869 m!1864537))

(assert (=> b!1580869 m!1864111))

(assert (=> b!1580869 m!1863681))

(declare-fun m!1864539 () Bool)

(assert (=> b!1580868 m!1864539))

(declare-fun m!1864543 () Bool)

(assert (=> d!469657 m!1864543))

(assert (=> d!469657 m!1864453))

(assert (=> d!469657 m!1863689))

(assert (=> b!1580324 d!469657))

(declare-fun b!1580890 () Bool)

(declare-fun e!1015548 () List!17441)

(declare-fun list!6722 (IArray!11547) List!17441)

(assert (=> b!1580890 (= e!1015548 (list!6722 (xs!8575 (c!256023 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457)))))))))

(declare-fun b!1580889 () Bool)

(declare-fun e!1015547 () List!17441)

(assert (=> b!1580889 (= e!1015547 e!1015548)))

(declare-fun c!256174 () Bool)

(assert (=> b!1580889 (= c!256174 ((_ is Leaf!8522) (c!256023 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457))))))))

(declare-fun d!469659 () Bool)

(declare-fun c!256173 () Bool)

(assert (=> d!469659 (= c!256173 ((_ is Empty!5771) (c!256023 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!469659 (= (list!6720 (c!256023 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457))))) e!1015547)))

(declare-fun b!1580891 () Bool)

(assert (=> b!1580891 (= e!1015548 (++!4515 (list!6720 (left!14035 (c!256023 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457)))))) (list!6720 (right!14365 (c!256023 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 tokens!457))))))))))

(declare-fun b!1580888 () Bool)

(assert (=> b!1580888 (= e!1015547 Nil!17371)))

(assert (= (and d!469659 c!256173) b!1580888))

(assert (= (and d!469659 (not c!256173)) b!1580889))

(assert (= (and b!1580889 c!256174) b!1580890))

(assert (= (and b!1580889 (not c!256174)) b!1580891))

(declare-fun m!1864593 () Bool)

(assert (=> b!1580890 m!1864593))

(declare-fun m!1864595 () Bool)

(assert (=> b!1580891 m!1864595))

(declare-fun m!1864597 () Bool)

(assert (=> b!1580891 m!1864597))

(assert (=> b!1580891 m!1864595))

(assert (=> b!1580891 m!1864597))

(declare-fun m!1864603 () Bool)

(assert (=> b!1580891 m!1864603))

(assert (=> d!469499 d!469659))

(declare-fun d!469663 () Bool)

(declare-fun e!1015553 () Bool)

(assert (=> d!469663 e!1015553))

(declare-fun res!704819 () Bool)

(assert (=> d!469663 (=> (not res!704819) (not e!1015553))))

(declare-fun lt!553499 () BalanceConc!11486)

(assert (=> d!469663 (= res!704819 (= (list!6716 lt!553499) (t!143642 tokens!457)))))

(declare-fun fromList!361 (List!17441) Conc!5771)

(assert (=> d!469663 (= lt!553499 (BalanceConc!11487 (fromList!361 (t!143642 tokens!457))))))

(assert (=> d!469663 (= (fromListB!794 (t!143642 tokens!457)) lt!553499)))

(declare-fun b!1580896 () Bool)

(assert (=> b!1580896 (= e!1015553 (isBalanced!1691 (fromList!361 (t!143642 tokens!457))))))

(assert (= (and d!469663 res!704819) b!1580896))

(declare-fun m!1864621 () Bool)

(assert (=> d!469663 m!1864621))

(declare-fun m!1864623 () Bool)

(assert (=> d!469663 m!1864623))

(assert (=> b!1580896 m!1864623))

(assert (=> b!1580896 m!1864623))

(declare-fun m!1864625 () Bool)

(assert (=> b!1580896 m!1864625))

(assert (=> d!469437 d!469663))

(declare-fun d!469667 () Bool)

(assert (=> d!469667 (= (isEmpty!10383 (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))) ((_ is Nil!17371) (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))))))

(assert (=> d!469379 d!469667))

(declare-fun d!469669 () Bool)

(assert (=> d!469669 (= (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801)))) (list!6720 (c!256023 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))))))

(declare-fun bs!390919 () Bool)

(assert (= bs!390919 d!469669))

(declare-fun m!1864627 () Bool)

(assert (=> bs!390919 m!1864627))

(assert (=> d!469379 d!469669))

(declare-fun lt!553503 () Bool)

(declare-fun d!469671 () Bool)

(assert (=> d!469671 (= lt!553503 (isEmpty!10383 (list!6720 (c!256023 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801)))))))))

(assert (=> d!469671 (= lt!553503 (= (size!13976 (c!256023 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))) 0))))

(assert (=> d!469671 (= (isEmpty!10384 (c!256023 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))) lt!553503)))

(declare-fun bs!390920 () Bool)

(assert (= bs!390920 d!469671))

(assert (=> bs!390920 m!1864627))

(assert (=> bs!390920 m!1864627))

(declare-fun m!1864633 () Bool)

(assert (=> bs!390920 m!1864633))

(declare-fun m!1864635 () Bool)

(assert (=> bs!390920 m!1864635))

(assert (=> d!469379 d!469671))

(declare-fun d!469675 () Bool)

(assert (=> d!469675 (= (list!6715 lt!553126) (list!6719 (c!256021 lt!553126)))))

(declare-fun bs!390921 () Bool)

(assert (= bs!390921 d!469675))

(declare-fun m!1864637 () Bool)

(assert (=> bs!390921 m!1864637))

(assert (=> d!469431 d!469675))

(declare-fun d!469677 () Bool)

(declare-fun c!256176 () Bool)

(assert (=> d!469677 (= c!256176 ((_ is Cons!17371) (list!6716 lt!552804)))))

(declare-fun e!1015555 () List!17439)

(assert (=> d!469677 (= (printList!805 thiss!17113 (list!6716 lt!552804)) e!1015555)))

(declare-fun b!1580898 () Bool)

(assert (=> b!1580898 (= e!1015555 (++!4511 (list!6715 (charsOf!1710 (h!22772 (list!6716 lt!552804)))) (printList!805 thiss!17113 (t!143642 (list!6716 lt!552804)))))))

(declare-fun b!1580899 () Bool)

(assert (=> b!1580899 (= e!1015555 Nil!17369)))

(assert (= (and d!469677 c!256176) b!1580898))

(assert (= (and d!469677 (not c!256176)) b!1580899))

(declare-fun m!1864639 () Bool)

(assert (=> b!1580898 m!1864639))

(assert (=> b!1580898 m!1864639))

(declare-fun m!1864641 () Bool)

(assert (=> b!1580898 m!1864641))

(declare-fun m!1864643 () Bool)

(assert (=> b!1580898 m!1864643))

(assert (=> b!1580898 m!1864641))

(assert (=> b!1580898 m!1864643))

(declare-fun m!1864645 () Bool)

(assert (=> b!1580898 m!1864645))

(assert (=> d!469431 d!469677))

(assert (=> d!469431 d!469495))

(declare-fun d!469679 () Bool)

(declare-fun lt!553509 () BalanceConc!11484)

(assert (=> d!469679 (= (list!6715 lt!553509) (printListTailRec!305 thiss!17113 (dropList!511 lt!552804 0) (list!6715 (BalanceConc!11485 Empty!5770))))))

(declare-fun e!1015560 () BalanceConc!11484)

(assert (=> d!469679 (= lt!553509 e!1015560)))

(declare-fun c!256179 () Bool)

(assert (=> d!469679 (= c!256179 (>= 0 (size!13972 lt!552804)))))

(declare-fun e!1015561 () Bool)

(assert (=> d!469679 e!1015561))

(declare-fun res!704823 () Bool)

(assert (=> d!469679 (=> (not res!704823) (not e!1015561))))

(assert (=> d!469679 (= res!704823 (>= 0 0))))

(assert (=> d!469679 (= (printTailRec!743 thiss!17113 lt!552804 0 (BalanceConc!11485 Empty!5770)) lt!553509)))

(declare-fun b!1580906 () Bool)

(assert (=> b!1580906 (= e!1015561 (<= 0 (size!13972 lt!552804)))))

(declare-fun b!1580907 () Bool)

(assert (=> b!1580907 (= e!1015560 (BalanceConc!11485 Empty!5770))))

(declare-fun b!1580908 () Bool)

(assert (=> b!1580908 (= e!1015560 (printTailRec!743 thiss!17113 lt!552804 (+ 0 1) (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (apply!4209 lt!552804 0)))))))

(declare-fun lt!553512 () List!17441)

(assert (=> b!1580908 (= lt!553512 (list!6716 lt!552804))))

(declare-fun lt!553508 () Unit!27015)

(assert (=> b!1580908 (= lt!553508 (lemmaDropApply!512 lt!553512 0))))

(assert (=> b!1580908 (= (head!3187 (drop!814 lt!553512 0)) (apply!4214 lt!553512 0))))

(declare-fun lt!553506 () Unit!27015)

(assert (=> b!1580908 (= lt!553506 lt!553508)))

(declare-fun lt!553507 () List!17441)

(assert (=> b!1580908 (= lt!553507 (list!6716 lt!552804))))

(declare-fun lt!553510 () Unit!27015)

(assert (=> b!1580908 (= lt!553510 (lemmaDropTail!492 lt!553507 0))))

(assert (=> b!1580908 (= (tail!2253 (drop!814 lt!553507 0)) (drop!814 lt!553507 (+ 0 1)))))

(declare-fun lt!553511 () Unit!27015)

(assert (=> b!1580908 (= lt!553511 lt!553510)))

(assert (= (and d!469679 res!704823) b!1580906))

(assert (= (and d!469679 c!256179) b!1580907))

(assert (= (and d!469679 (not c!256179)) b!1580908))

(assert (=> d!469679 m!1863433))

(declare-fun m!1864647 () Bool)

(assert (=> d!469679 m!1864647))

(assert (=> d!469679 m!1864647))

(assert (=> d!469679 m!1863433))

(declare-fun m!1864649 () Bool)

(assert (=> d!469679 m!1864649))

(declare-fun m!1864651 () Bool)

(assert (=> d!469679 m!1864651))

(declare-fun m!1864653 () Bool)

(assert (=> d!469679 m!1864653))

(assert (=> b!1580906 m!1864653))

(declare-fun m!1864655 () Bool)

(assert (=> b!1580908 m!1864655))

(assert (=> b!1580908 m!1863141))

(declare-fun m!1864657 () Bool)

(assert (=> b!1580908 m!1864657))

(declare-fun m!1864659 () Bool)

(assert (=> b!1580908 m!1864659))

(declare-fun m!1864661 () Bool)

(assert (=> b!1580908 m!1864661))

(declare-fun m!1864663 () Bool)

(assert (=> b!1580908 m!1864663))

(declare-fun m!1864665 () Bool)

(assert (=> b!1580908 m!1864665))

(declare-fun m!1864667 () Bool)

(assert (=> b!1580908 m!1864667))

(assert (=> b!1580908 m!1864663))

(declare-fun m!1864669 () Bool)

(assert (=> b!1580908 m!1864669))

(assert (=> b!1580908 m!1864659))

(declare-fun m!1864671 () Bool)

(assert (=> b!1580908 m!1864671))

(declare-fun m!1864673 () Bool)

(assert (=> b!1580908 m!1864673))

(declare-fun m!1864675 () Bool)

(assert (=> b!1580908 m!1864675))

(declare-fun m!1864679 () Bool)

(assert (=> b!1580908 m!1864679))

(assert (=> b!1580908 m!1864671))

(assert (=> b!1580908 m!1864657))

(assert (=> b!1580908 m!1864667))

(assert (=> d!469431 d!469679))

(declare-fun d!469681 () Bool)

(assert (=> d!469681 true))

(declare-fun order!10241 () Int)

(declare-fun lambda!66466 () Int)

(declare-fun dynLambda!7700 (Int Int) Int)

(assert (=> d!469681 (< (dynLambda!7692 order!10231 (toValue!4464 (transformation!3061 (h!22773 rules!1846)))) (dynLambda!7700 order!10241 lambda!66466))))

(declare-fun Forall2!502 (Int) Bool)

(assert (=> d!469681 (= (equivClasses!1091 (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toValue!4464 (transformation!3061 (h!22773 rules!1846)))) (Forall2!502 lambda!66466))))

(declare-fun bs!390922 () Bool)

(assert (= bs!390922 d!469681))

(declare-fun m!1864689 () Bool)

(assert (=> bs!390922 m!1864689))

(assert (=> b!1580475 d!469681))

(declare-fun b!1580924 () Bool)

(declare-fun e!1015571 () Bool)

(declare-fun e!1015570 () Bool)

(assert (=> b!1580924 (= e!1015571 e!1015570)))

(declare-fun res!704827 () Bool)

(assert (=> b!1580924 (=> (not res!704827) (not e!1015570))))

(assert (=> b!1580924 (= res!704827 (<= (- 1) (- (height!847 (left!14035 (c!256023 lt!553001))) (height!847 (right!14365 (c!256023 lt!553001))))))))

(declare-fun b!1580925 () Bool)

(declare-fun res!704832 () Bool)

(assert (=> b!1580925 (=> (not res!704832) (not e!1015570))))

(assert (=> b!1580925 (= res!704832 (isBalanced!1691 (right!14365 (c!256023 lt!553001))))))

(declare-fun d!469689 () Bool)

(declare-fun res!704830 () Bool)

(assert (=> d!469689 (=> res!704830 e!1015571)))

(assert (=> d!469689 (= res!704830 (not ((_ is Node!5771) (c!256023 lt!553001))))))

(assert (=> d!469689 (= (isBalanced!1691 (c!256023 lt!553001)) e!1015571)))

(declare-fun b!1580926 () Bool)

(assert (=> b!1580926 (= e!1015570 (not (isEmpty!10384 (right!14365 (c!256023 lt!553001)))))))

(declare-fun b!1580927 () Bool)

(declare-fun res!704829 () Bool)

(assert (=> b!1580927 (=> (not res!704829) (not e!1015570))))

(assert (=> b!1580927 (= res!704829 (<= (- (height!847 (left!14035 (c!256023 lt!553001))) (height!847 (right!14365 (c!256023 lt!553001)))) 1))))

(declare-fun b!1580928 () Bool)

(declare-fun res!704828 () Bool)

(assert (=> b!1580928 (=> (not res!704828) (not e!1015570))))

(assert (=> b!1580928 (= res!704828 (isBalanced!1691 (left!14035 (c!256023 lt!553001))))))

(declare-fun b!1580929 () Bool)

(declare-fun res!704831 () Bool)

(assert (=> b!1580929 (=> (not res!704831) (not e!1015570))))

(assert (=> b!1580929 (= res!704831 (not (isEmpty!10384 (left!14035 (c!256023 lt!553001)))))))

(assert (= (and d!469689 (not res!704830)) b!1580924))

(assert (= (and b!1580924 res!704827) b!1580927))

(assert (= (and b!1580927 res!704829) b!1580928))

(assert (= (and b!1580928 res!704828) b!1580925))

(assert (= (and b!1580925 res!704832) b!1580929))

(assert (= (and b!1580929 res!704831) b!1580926))

(declare-fun m!1864691 () Bool)

(assert (=> b!1580927 m!1864691))

(declare-fun m!1864693 () Bool)

(assert (=> b!1580927 m!1864693))

(declare-fun m!1864695 () Bool)

(assert (=> b!1580925 m!1864695))

(declare-fun m!1864697 () Bool)

(assert (=> b!1580926 m!1864697))

(declare-fun m!1864699 () Bool)

(assert (=> b!1580929 m!1864699))

(assert (=> b!1580924 m!1864691))

(assert (=> b!1580924 m!1864693))

(declare-fun m!1864701 () Bool)

(assert (=> b!1580928 m!1864701))

(assert (=> b!1580211 d!469689))

(declare-fun d!469691 () Bool)

(declare-fun lt!553516 () Int)

(assert (=> d!469691 (= lt!553516 (size!13975 (list!6716 (_1!9823 lt!553014))))))

(assert (=> d!469691 (= lt!553516 (size!13976 (c!256023 (_1!9823 lt!553014))))))

(assert (=> d!469691 (= (size!13972 (_1!9823 lt!553014)) lt!553516)))

(declare-fun bs!390923 () Bool)

(assert (= bs!390923 d!469691))

(assert (=> bs!390923 m!1863541))

(assert (=> bs!390923 m!1863541))

(declare-fun m!1864703 () Bool)

(assert (=> bs!390923 m!1864703))

(declare-fun m!1864705 () Bool)

(assert (=> bs!390923 m!1864705))

(assert (=> d!469381 d!469691))

(declare-fun b!1580940 () Bool)

(declare-fun e!1015579 () tuple2!16842)

(assert (=> b!1580940 (= e!1015579 (tuple2!16843 (BalanceConc!11487 Empty!5771) (seqFromList!1872 lt!552801)))))

(declare-fun b!1580941 () Bool)

(declare-fun e!1015578 () tuple2!16842)

(declare-fun lt!553527 () BalanceConc!11484)

(assert (=> b!1580941 (= e!1015578 (tuple2!16843 (BalanceConc!11487 Empty!5771) lt!553527))))

(declare-fun lt!553543 () Option!3117)

(declare-fun b!1580942 () Bool)

(declare-fun lt!553518 () tuple2!16842)

(assert (=> b!1580942 (= lt!553518 (lexRec!352 thiss!17113 rules!1846 (_2!9826 (v!23962 lt!553543))))))

(declare-fun e!1015580 () tuple2!16842)

(assert (=> b!1580942 (= e!1015580 (tuple2!16843 (prepend!537 (_1!9823 lt!553518) (_1!9826 (v!23962 lt!553543))) (_2!9823 lt!553518)))))

(declare-fun b!1580943 () Bool)

(assert (=> b!1580943 (= e!1015580 (tuple2!16843 (BalanceConc!11487 Empty!5771) (seqFromList!1872 lt!552801)))))

(declare-fun lt!553520 () BalanceConc!11484)

(declare-fun lt!553521 () Option!3117)

(declare-fun b!1580944 () Bool)

(assert (=> b!1580944 (= e!1015579 (lexTailRecV2!502 thiss!17113 rules!1846 (seqFromList!1872 lt!552801) lt!553520 (_2!9826 (v!23962 lt!553521)) (append!531 (BalanceConc!11487 Empty!5771) (_1!9826 (v!23962 lt!553521)))))))

(declare-fun lt!553522 () tuple2!16842)

(assert (=> b!1580944 (= lt!553522 (lexRec!352 thiss!17113 rules!1846 (_2!9826 (v!23962 lt!553521))))))

(declare-fun lt!553532 () List!17439)

(assert (=> b!1580944 (= lt!553532 (list!6715 (BalanceConc!11485 Empty!5770)))))

(declare-fun lt!553529 () List!17439)

(assert (=> b!1580944 (= lt!553529 (list!6715 (charsOf!1710 (_1!9826 (v!23962 lt!553521)))))))

(declare-fun lt!553525 () List!17439)

(assert (=> b!1580944 (= lt!553525 (list!6715 (_2!9826 (v!23962 lt!553521))))))

(declare-fun lt!553533 () Unit!27015)

(assert (=> b!1580944 (= lt!553533 (lemmaConcatAssociativity!980 lt!553532 lt!553529 lt!553525))))

(assert (=> b!1580944 (= (++!4511 (++!4511 lt!553532 lt!553529) lt!553525) (++!4511 lt!553532 (++!4511 lt!553529 lt!553525)))))

(declare-fun lt!553526 () Unit!27015)

(assert (=> b!1580944 (= lt!553526 lt!553533)))

(assert (=> b!1580944 (= lt!553543 (maxPrefixZipperSequence!608 thiss!17113 rules!1846 (seqFromList!1872 lt!552801)))))

(declare-fun c!256190 () Bool)

(assert (=> b!1580944 (= c!256190 ((_ is Some!3116) lt!553543))))

(assert (=> b!1580944 (= (lexRec!352 thiss!17113 rules!1846 (seqFromList!1872 lt!552801)) e!1015580)))

(declare-fun lt!553547 () Unit!27015)

(declare-fun Unit!27057 () Unit!27015)

(assert (=> b!1580944 (= lt!553547 Unit!27057)))

(declare-fun lt!553517 () List!17441)

(assert (=> b!1580944 (= lt!553517 (list!6716 (BalanceConc!11487 Empty!5771)))))

(declare-fun lt!553541 () List!17441)

(assert (=> b!1580944 (= lt!553541 (Cons!17371 (_1!9826 (v!23962 lt!553521)) Nil!17371))))

(declare-fun lt!553548 () List!17441)

(assert (=> b!1580944 (= lt!553548 (list!6716 (_1!9823 lt!553522)))))

(declare-fun lt!553549 () Unit!27015)

(assert (=> b!1580944 (= lt!553549 (lemmaConcatAssociativity!981 lt!553517 lt!553541 lt!553548))))

(assert (=> b!1580944 (= (++!4515 (++!4515 lt!553517 lt!553541) lt!553548) (++!4515 lt!553517 (++!4515 lt!553541 lt!553548)))))

(declare-fun lt!553519 () Unit!27015)

(assert (=> b!1580944 (= lt!553519 lt!553549)))

(declare-fun lt!553537 () List!17439)

(assert (=> b!1580944 (= lt!553537 (++!4511 (list!6715 (BalanceConc!11485 Empty!5770)) (list!6715 (charsOf!1710 (_1!9826 (v!23962 lt!553521))))))))

(declare-fun lt!553535 () List!17439)

(assert (=> b!1580944 (= lt!553535 (list!6715 (_2!9826 (v!23962 lt!553521))))))

(declare-fun lt!553542 () List!17441)

(assert (=> b!1580944 (= lt!553542 (list!6716 (append!531 (BalanceConc!11487 Empty!5771) (_1!9826 (v!23962 lt!553521)))))))

(declare-fun lt!553531 () Unit!27015)

(assert (=> b!1580944 (= lt!553531 (lemmaLexThenLexPrefix!240 thiss!17113 rules!1846 lt!553537 lt!553535 lt!553542 (list!6716 (_1!9823 lt!553522)) (list!6715 (_2!9823 lt!553522))))))

(assert (=> b!1580944 (= (lexList!779 thiss!17113 rules!1846 lt!553537) (tuple2!16847 lt!553542 Nil!17369))))

(declare-fun lt!553538 () Unit!27015)

(assert (=> b!1580944 (= lt!553538 lt!553531)))

(assert (=> b!1580944 (= lt!553527 (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (_1!9826 (v!23962 lt!553521)))))))

(declare-fun lt!553545 () Option!3117)

(assert (=> b!1580944 (= lt!553545 (maxPrefixZipperSequence!608 thiss!17113 rules!1846 lt!553527))))

(declare-fun c!256189 () Bool)

(assert (=> b!1580944 (= c!256189 ((_ is Some!3116) lt!553545))))

(assert (=> b!1580944 (= (lexRec!352 thiss!17113 rules!1846 (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (_1!9826 (v!23962 lt!553521))))) e!1015578)))

(declare-fun lt!553539 () Unit!27015)

(declare-fun Unit!27058 () Unit!27015)

(assert (=> b!1580944 (= lt!553539 Unit!27058)))

(assert (=> b!1580944 (= lt!553520 (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (_1!9826 (v!23962 lt!553521)))))))

(declare-fun lt!553528 () List!17439)

(assert (=> b!1580944 (= lt!553528 (list!6715 lt!553520))))

(declare-fun lt!553544 () List!17439)

(assert (=> b!1580944 (= lt!553544 (list!6715 (_2!9826 (v!23962 lt!553521))))))

(declare-fun lt!553550 () Unit!27015)

(assert (=> b!1580944 (= lt!553550 (lemmaConcatTwoListThenFSndIsSuffix!299 lt!553528 lt!553544))))

(assert (=> b!1580944 (isSuffix!398 lt!553544 (++!4511 lt!553528 lt!553544))))

(declare-fun lt!553546 () Unit!27015)

(assert (=> b!1580944 (= lt!553546 lt!553550)))

(declare-fun b!1580945 () Bool)

(declare-fun e!1015581 () Bool)

(declare-fun lt!553536 () tuple2!16842)

(assert (=> b!1580945 (= e!1015581 (= (list!6715 (_2!9823 lt!553536)) (list!6715 (_2!9823 (lexRec!352 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))))))

(declare-fun d!469693 () Bool)

(assert (=> d!469693 e!1015581))

(declare-fun res!704835 () Bool)

(assert (=> d!469693 (=> (not res!704835) (not e!1015581))))

(assert (=> d!469693 (= res!704835 (= (list!6716 (_1!9823 lt!553536)) (list!6716 (_1!9823 (lexRec!352 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))))))

(assert (=> d!469693 (= lt!553536 e!1015579)))

(declare-fun c!256191 () Bool)

(assert (=> d!469693 (= c!256191 ((_ is Some!3116) lt!553521))))

(assert (=> d!469693 (= lt!553521 (maxPrefixZipperSequenceV2!247 thiss!17113 rules!1846 (seqFromList!1872 lt!552801) (seqFromList!1872 lt!552801)))))

(declare-fun lt!553540 () Unit!27015)

(declare-fun lt!553530 () Unit!27015)

(assert (=> d!469693 (= lt!553540 lt!553530)))

(declare-fun lt!553534 () List!17439)

(declare-fun lt!553523 () List!17439)

(assert (=> d!469693 (isSuffix!398 lt!553534 (++!4511 lt!553523 lt!553534))))

(assert (=> d!469693 (= lt!553530 (lemmaConcatTwoListThenFSndIsSuffix!299 lt!553523 lt!553534))))

(assert (=> d!469693 (= lt!553534 (list!6715 (seqFromList!1872 lt!552801)))))

(assert (=> d!469693 (= lt!553523 (list!6715 (BalanceConc!11485 Empty!5770)))))

(assert (=> d!469693 (= (lexTailRecV2!502 thiss!17113 rules!1846 (seqFromList!1872 lt!552801) (BalanceConc!11485 Empty!5770) (seqFromList!1872 lt!552801) (BalanceConc!11487 Empty!5771)) lt!553536)))

(declare-fun lt!553524 () tuple2!16842)

(declare-fun b!1580946 () Bool)

(assert (=> b!1580946 (= lt!553524 (lexRec!352 thiss!17113 rules!1846 (_2!9826 (v!23962 lt!553545))))))

(assert (=> b!1580946 (= e!1015578 (tuple2!16843 (prepend!537 (_1!9823 lt!553524) (_1!9826 (v!23962 lt!553545))) (_2!9823 lt!553524)))))

(assert (= (and d!469693 c!256191) b!1580944))

(assert (= (and d!469693 (not c!256191)) b!1580940))

(assert (= (and b!1580944 c!256190) b!1580942))

(assert (= (and b!1580944 (not c!256190)) b!1580943))

(assert (= (and b!1580944 c!256189) b!1580946))

(assert (= (and b!1580944 (not c!256189)) b!1580941))

(assert (= (and d!469693 res!704835) b!1580945))

(declare-fun m!1864707 () Bool)

(assert (=> b!1580946 m!1864707))

(declare-fun m!1864709 () Bool)

(assert (=> b!1580946 m!1864709))

(declare-fun m!1864715 () Bool)

(assert (=> b!1580942 m!1864715))

(declare-fun m!1864719 () Bool)

(assert (=> b!1580942 m!1864719))

(declare-fun m!1864723 () Bool)

(assert (=> b!1580944 m!1864723))

(declare-fun m!1864725 () Bool)

(assert (=> b!1580944 m!1864725))

(declare-fun m!1864727 () Bool)

(assert (=> b!1580944 m!1864727))

(declare-fun m!1864729 () Bool)

(assert (=> b!1580944 m!1864729))

(assert (=> b!1580944 m!1864257))

(declare-fun m!1864731 () Bool)

(assert (=> b!1580944 m!1864731))

(declare-fun m!1864733 () Bool)

(assert (=> b!1580944 m!1864733))

(declare-fun m!1864735 () Bool)

(assert (=> b!1580944 m!1864735))

(declare-fun m!1864737 () Bool)

(assert (=> b!1580944 m!1864737))

(assert (=> b!1580944 m!1863067))

(declare-fun m!1864739 () Bool)

(assert (=> b!1580944 m!1864739))

(assert (=> b!1580944 m!1863433))

(declare-fun m!1864741 () Bool)

(assert (=> b!1580944 m!1864741))

(declare-fun m!1864743 () Bool)

(assert (=> b!1580944 m!1864743))

(declare-fun m!1864745 () Bool)

(assert (=> b!1580944 m!1864745))

(declare-fun m!1864747 () Bool)

(assert (=> b!1580944 m!1864747))

(declare-fun m!1864749 () Bool)

(assert (=> b!1580944 m!1864749))

(declare-fun m!1864751 () Bool)

(assert (=> b!1580944 m!1864751))

(declare-fun m!1864753 () Bool)

(assert (=> b!1580944 m!1864753))

(declare-fun m!1864755 () Bool)

(assert (=> b!1580944 m!1864755))

(assert (=> b!1580944 m!1864733))

(assert (=> b!1580944 m!1864749))

(assert (=> b!1580944 m!1864753))

(assert (=> b!1580944 m!1864741))

(assert (=> b!1580944 m!1864755))

(declare-fun m!1864759 () Bool)

(assert (=> b!1580944 m!1864759))

(declare-fun m!1864763 () Bool)

(assert (=> b!1580944 m!1864763))

(declare-fun m!1864765 () Bool)

(assert (=> b!1580944 m!1864765))

(declare-fun m!1864767 () Bool)

(assert (=> b!1580944 m!1864767))

(assert (=> b!1580944 m!1864745))

(declare-fun m!1864769 () Bool)

(assert (=> b!1580944 m!1864769))

(declare-fun m!1864771 () Bool)

(assert (=> b!1580944 m!1864771))

(declare-fun m!1864773 () Bool)

(assert (=> b!1580944 m!1864773))

(assert (=> b!1580944 m!1864763))

(declare-fun m!1864775 () Bool)

(assert (=> b!1580944 m!1864775))

(declare-fun m!1864777 () Bool)

(assert (=> b!1580944 m!1864777))

(assert (=> b!1580944 m!1864777))

(declare-fun m!1864779 () Bool)

(assert (=> b!1580944 m!1864779))

(assert (=> b!1580944 m!1863067))

(assert (=> b!1580944 m!1864763))

(declare-fun m!1864785 () Bool)

(assert (=> b!1580944 m!1864785))

(assert (=> b!1580944 m!1864753))

(assert (=> b!1580944 m!1864731))

(assert (=> b!1580944 m!1864769))

(declare-fun m!1864787 () Bool)

(assert (=> b!1580944 m!1864787))

(assert (=> b!1580944 m!1863067))

(declare-fun m!1864789 () Bool)

(assert (=> b!1580944 m!1864789))

(assert (=> b!1580944 m!1864723))

(declare-fun m!1864791 () Bool)

(assert (=> b!1580944 m!1864791))

(assert (=> b!1580944 m!1863433))

(assert (=> d!469693 m!1863067))

(assert (=> d!469693 m!1863531))

(assert (=> d!469693 m!1863067))

(assert (=> d!469693 m!1863067))

(declare-fun m!1864793 () Bool)

(assert (=> d!469693 m!1864793))

(declare-fun m!1864795 () Bool)

(assert (=> d!469693 m!1864795))

(declare-fun m!1864797 () Bool)

(assert (=> d!469693 m!1864797))

(declare-fun m!1864799 () Bool)

(assert (=> d!469693 m!1864799))

(declare-fun m!1864801 () Bool)

(assert (=> d!469693 m!1864801))

(assert (=> d!469693 m!1863067))

(assert (=> d!469693 m!1864739))

(assert (=> d!469693 m!1863433))

(assert (=> d!469693 m!1864799))

(declare-fun m!1864803 () Bool)

(assert (=> d!469693 m!1864803))

(declare-fun m!1864805 () Bool)

(assert (=> b!1580945 m!1864805))

(assert (=> b!1580945 m!1863067))

(assert (=> b!1580945 m!1864739))

(declare-fun m!1864807 () Bool)

(assert (=> b!1580945 m!1864807))

(assert (=> d!469381 d!469693))

(declare-fun bs!390924 () Bool)

(declare-fun d!469699 () Bool)

(assert (= bs!390924 (and d!469699 d!469405)))

(declare-fun lambda!66467 () Int)

(assert (=> bs!390924 (= lambda!66467 lambda!66454)))

(declare-fun b!1580961 () Bool)

(declare-fun e!1015592 () Bool)

(assert (=> b!1580961 (= e!1015592 true)))

(declare-fun b!1580960 () Bool)

(declare-fun e!1015591 () Bool)

(assert (=> b!1580960 (= e!1015591 e!1015592)))

(declare-fun b!1580959 () Bool)

(declare-fun e!1015590 () Bool)

(assert (=> b!1580959 (= e!1015590 e!1015591)))

(assert (=> d!469699 e!1015590))

(assert (= b!1580960 b!1580961))

(assert (= b!1580959 b!1580960))

(assert (= (and d!469699 ((_ is Cons!17372) rules!1846)) b!1580959))

(assert (=> b!1580961 (< (dynLambda!7692 order!10231 (toValue!4464 (transformation!3061 (h!22773 rules!1846)))) (dynLambda!7693 order!10233 lambda!66467))))

(assert (=> b!1580961 (< (dynLambda!7694 order!10235 (toChars!4323 (transformation!3061 (h!22773 rules!1846)))) (dynLambda!7693 order!10233 lambda!66467))))

(assert (=> d!469699 true))

(declare-fun lt!553553 () Bool)

(assert (=> d!469699 (= lt!553553 (forall!3990 (t!143642 tokens!457) lambda!66467))))

(declare-fun e!1015589 () Bool)

(assert (=> d!469699 (= lt!553553 e!1015589)))

(declare-fun res!704838 () Bool)

(assert (=> d!469699 (=> res!704838 e!1015589)))

(assert (=> d!469699 (= res!704838 (not ((_ is Cons!17371) (t!143642 tokens!457))))))

(assert (=> d!469699 (not (isEmpty!10379 rules!1846))))

(assert (=> d!469699 (= (rulesProduceEachTokenIndividuallyList!892 thiss!17113 rules!1846 (t!143642 tokens!457)) lt!553553)))

(declare-fun b!1580957 () Bool)

(declare-fun e!1015588 () Bool)

(assert (=> b!1580957 (= e!1015589 e!1015588)))

(declare-fun res!704837 () Bool)

(assert (=> b!1580957 (=> (not res!704837) (not e!1015588))))

(assert (=> b!1580957 (= res!704837 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 (t!143642 tokens!457))))))

(declare-fun b!1580958 () Bool)

(assert (=> b!1580958 (= e!1015588 (rulesProduceEachTokenIndividuallyList!892 thiss!17113 rules!1846 (t!143642 (t!143642 tokens!457))))))

(assert (= (and d!469699 (not res!704838)) b!1580957))

(assert (= (and b!1580957 res!704837) b!1580958))

(declare-fun m!1864809 () Bool)

(assert (=> d!469699 m!1864809))

(assert (=> d!469699 m!1863063))

(assert (=> b!1580957 m!1863081))

(declare-fun m!1864811 () Bool)

(assert (=> b!1580958 m!1864811))

(assert (=> b!1580287 d!469699))

(declare-fun d!469701 () Bool)

(assert (=> d!469701 (= (list!6715 lt!553113) (list!6719 (c!256021 lt!553113)))))

(declare-fun bs!390925 () Bool)

(assert (= bs!390925 d!469701))

(declare-fun m!1864813 () Bool)

(assert (=> bs!390925 m!1864813))

(assert (=> d!469415 d!469701))

(declare-fun d!469703 () Bool)

(declare-fun c!256196 () Bool)

(assert (=> d!469703 (= c!256196 ((_ is Cons!17371) (list!6716 (seqFromList!1871 tokens!457))))))

(declare-fun e!1015593 () List!17439)

(assert (=> d!469703 (= (printList!805 thiss!17113 (list!6716 (seqFromList!1871 tokens!457))) e!1015593)))

(declare-fun b!1580962 () Bool)

(assert (=> b!1580962 (= e!1015593 (++!4511 (list!6715 (charsOf!1710 (h!22772 (list!6716 (seqFromList!1871 tokens!457))))) (printList!805 thiss!17113 (t!143642 (list!6716 (seqFromList!1871 tokens!457))))))))

(declare-fun b!1580963 () Bool)

(assert (=> b!1580963 (= e!1015593 Nil!17369)))

(assert (= (and d!469703 c!256196) b!1580962))

(assert (= (and d!469703 (not c!256196)) b!1580963))

(declare-fun m!1864815 () Bool)

(assert (=> b!1580962 m!1864815))

(assert (=> b!1580962 m!1864815))

(declare-fun m!1864817 () Bool)

(assert (=> b!1580962 m!1864817))

(declare-fun m!1864819 () Bool)

(assert (=> b!1580962 m!1864819))

(assert (=> b!1580962 m!1864817))

(assert (=> b!1580962 m!1864819))

(declare-fun m!1864821 () Bool)

(assert (=> b!1580962 m!1864821))

(assert (=> d!469415 d!469703))

(declare-fun d!469705 () Bool)

(assert (=> d!469705 (= (list!6716 (seqFromList!1871 tokens!457)) (list!6720 (c!256023 (seqFromList!1871 tokens!457))))))

(declare-fun bs!390926 () Bool)

(assert (= bs!390926 d!469705))

(declare-fun m!1864823 () Bool)

(assert (=> bs!390926 m!1864823))

(assert (=> d!469415 d!469705))

(declare-fun d!469707 () Bool)

(declare-fun lt!553557 () BalanceConc!11484)

(assert (=> d!469707 (= (list!6715 lt!553557) (printListTailRec!305 thiss!17113 (dropList!511 (seqFromList!1871 tokens!457) 0) (list!6715 (BalanceConc!11485 Empty!5770))))))

(declare-fun e!1015594 () BalanceConc!11484)

(assert (=> d!469707 (= lt!553557 e!1015594)))

(declare-fun c!256197 () Bool)

(assert (=> d!469707 (= c!256197 (>= 0 (size!13972 (seqFromList!1871 tokens!457))))))

(declare-fun e!1015595 () Bool)

(assert (=> d!469707 e!1015595))

(declare-fun res!704839 () Bool)

(assert (=> d!469707 (=> (not res!704839) (not e!1015595))))

(assert (=> d!469707 (= res!704839 (>= 0 0))))

(assert (=> d!469707 (= (printTailRec!743 thiss!17113 (seqFromList!1871 tokens!457) 0 (BalanceConc!11485 Empty!5770)) lt!553557)))

(declare-fun b!1580964 () Bool)

(assert (=> b!1580964 (= e!1015595 (<= 0 (size!13972 (seqFromList!1871 tokens!457))))))

(declare-fun b!1580965 () Bool)

(assert (=> b!1580965 (= e!1015594 (BalanceConc!11485 Empty!5770))))

(declare-fun b!1580966 () Bool)

(assert (=> b!1580966 (= e!1015594 (printTailRec!743 thiss!17113 (seqFromList!1871 tokens!457) (+ 0 1) (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (apply!4209 (seqFromList!1871 tokens!457) 0)))))))

(declare-fun lt!553560 () List!17441)

(assert (=> b!1580966 (= lt!553560 (list!6716 (seqFromList!1871 tokens!457)))))

(declare-fun lt!553556 () Unit!27015)

(assert (=> b!1580966 (= lt!553556 (lemmaDropApply!512 lt!553560 0))))

(assert (=> b!1580966 (= (head!3187 (drop!814 lt!553560 0)) (apply!4214 lt!553560 0))))

(declare-fun lt!553554 () Unit!27015)

(assert (=> b!1580966 (= lt!553554 lt!553556)))

(declare-fun lt!553555 () List!17441)

(assert (=> b!1580966 (= lt!553555 (list!6716 (seqFromList!1871 tokens!457)))))

(declare-fun lt!553558 () Unit!27015)

(assert (=> b!1580966 (= lt!553558 (lemmaDropTail!492 lt!553555 0))))

(assert (=> b!1580966 (= (tail!2253 (drop!814 lt!553555 0)) (drop!814 lt!553555 (+ 0 1)))))

(declare-fun lt!553559 () Unit!27015)

(assert (=> b!1580966 (= lt!553559 lt!553558)))

(assert (= (and d!469707 res!704839) b!1580964))

(assert (= (and d!469707 c!256197) b!1580965))

(assert (= (and d!469707 (not c!256197)) b!1580966))

(assert (=> d!469707 m!1863433))

(assert (=> d!469707 m!1863095))

(declare-fun m!1864825 () Bool)

(assert (=> d!469707 m!1864825))

(assert (=> d!469707 m!1864825))

(assert (=> d!469707 m!1863433))

(declare-fun m!1864827 () Bool)

(assert (=> d!469707 m!1864827))

(declare-fun m!1864829 () Bool)

(assert (=> d!469707 m!1864829))

(assert (=> d!469707 m!1863095))

(declare-fun m!1864831 () Bool)

(assert (=> d!469707 m!1864831))

(assert (=> b!1580964 m!1863095))

(assert (=> b!1580964 m!1864831))

(declare-fun m!1864833 () Bool)

(assert (=> b!1580966 m!1864833))

(assert (=> b!1580966 m!1863095))

(assert (=> b!1580966 m!1863629))

(assert (=> b!1580966 m!1863095))

(declare-fun m!1864835 () Bool)

(assert (=> b!1580966 m!1864835))

(declare-fun m!1864837 () Bool)

(assert (=> b!1580966 m!1864837))

(declare-fun m!1864839 () Bool)

(assert (=> b!1580966 m!1864839))

(assert (=> b!1580966 m!1863095))

(declare-fun m!1864841 () Bool)

(assert (=> b!1580966 m!1864841))

(declare-fun m!1864843 () Bool)

(assert (=> b!1580966 m!1864843))

(declare-fun m!1864845 () Bool)

(assert (=> b!1580966 m!1864845))

(assert (=> b!1580966 m!1864841))

(declare-fun m!1864847 () Bool)

(assert (=> b!1580966 m!1864847))

(assert (=> b!1580966 m!1864837))

(declare-fun m!1864849 () Bool)

(assert (=> b!1580966 m!1864849))

(declare-fun m!1864851 () Bool)

(assert (=> b!1580966 m!1864851))

(declare-fun m!1864853 () Bool)

(assert (=> b!1580966 m!1864853))

(declare-fun m!1864855 () Bool)

(assert (=> b!1580966 m!1864855))

(assert (=> b!1580966 m!1864849))

(assert (=> b!1580966 m!1864835))

(assert (=> b!1580966 m!1864845))

(assert (=> d!469415 d!469707))

(declare-fun b!1580972 () Bool)

(declare-fun res!704844 () Bool)

(declare-fun e!1015599 () Bool)

(assert (=> b!1580972 (=> (not res!704844) (not e!1015599))))

(declare-fun lt!553564 () List!17439)

(assert (=> b!1580972 (= res!704844 (= (size!13973 lt!553564) (+ (size!13973 (list!6715 (charsOf!1710 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))))) (size!13973 (printList!805 thiss!17113 (t!143642 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))))))

(declare-fun b!1580971 () Bool)

(declare-fun e!1015600 () List!17439)

(assert (=> b!1580971 (= e!1015600 (Cons!17369 (h!22770 (list!6715 (charsOf!1710 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))))) (++!4511 (t!143640 (list!6715 (charsOf!1710 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))))) (printList!805 thiss!17113 (t!143642 (Cons!17371 (h!22772 tokens!457) Nil!17371))))))))

(declare-fun d!469709 () Bool)

(assert (=> d!469709 e!1015599))

(declare-fun res!704843 () Bool)

(assert (=> d!469709 (=> (not res!704843) (not e!1015599))))

(assert (=> d!469709 (= res!704843 (= (content!2385 lt!553564) ((_ map or) (content!2385 (list!6715 (charsOf!1710 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))))) (content!2385 (printList!805 thiss!17113 (t!143642 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))))))

(assert (=> d!469709 (= lt!553564 e!1015600)))

(declare-fun c!256198 () Bool)

(assert (=> d!469709 (= c!256198 ((_ is Nil!17369) (list!6715 (charsOf!1710 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))))))))

(assert (=> d!469709 (= (++!4511 (list!6715 (charsOf!1710 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))) (printList!805 thiss!17113 (t!143642 (Cons!17371 (h!22772 tokens!457) Nil!17371)))) lt!553564)))

(declare-fun b!1580973 () Bool)

(assert (=> b!1580973 (= e!1015599 (or (not (= (printList!805 thiss!17113 (t!143642 (Cons!17371 (h!22772 tokens!457) Nil!17371))) Nil!17369)) (= lt!553564 (list!6715 (charsOf!1710 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))))))

(declare-fun b!1580970 () Bool)

(assert (=> b!1580970 (= e!1015600 (printList!805 thiss!17113 (t!143642 (Cons!17371 (h!22772 tokens!457) Nil!17371))))))

(assert (= (and d!469709 c!256198) b!1580970))

(assert (= (and d!469709 (not c!256198)) b!1580971))

(assert (= (and d!469709 res!704843) b!1580972))

(assert (= (and b!1580972 res!704844) b!1580973))

(declare-fun m!1864861 () Bool)

(assert (=> b!1580972 m!1864861))

(assert (=> b!1580972 m!1863471))

(declare-fun m!1864863 () Bool)

(assert (=> b!1580972 m!1864863))

(assert (=> b!1580972 m!1863473))

(declare-fun m!1864865 () Bool)

(assert (=> b!1580972 m!1864865))

(assert (=> b!1580971 m!1863473))

(declare-fun m!1864867 () Bool)

(assert (=> b!1580971 m!1864867))

(declare-fun m!1864869 () Bool)

(assert (=> d!469709 m!1864869))

(assert (=> d!469709 m!1863471))

(declare-fun m!1864871 () Bool)

(assert (=> d!469709 m!1864871))

(assert (=> d!469709 m!1863473))

(declare-fun m!1864873 () Bool)

(assert (=> d!469709 m!1864873))

(assert (=> b!1580207 d!469709))

(declare-fun d!469713 () Bool)

(assert (=> d!469713 (= (list!6715 (charsOf!1710 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))) (list!6719 (c!256021 (charsOf!1710 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))))))))

(declare-fun bs!390927 () Bool)

(assert (= bs!390927 d!469713))

(declare-fun m!1864875 () Bool)

(assert (=> bs!390927 m!1864875))

(assert (=> b!1580207 d!469713))

(declare-fun d!469715 () Bool)

(declare-fun lt!553572 () BalanceConc!11484)

(assert (=> d!469715 (= (list!6715 lt!553572) (originalCharacters!3875 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))))))

(assert (=> d!469715 (= lt!553572 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))))) (value!96911 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))))

(assert (=> d!469715 (= (charsOf!1710 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))) lt!553572)))

(declare-fun b_lambda!49749 () Bool)

(assert (=> (not b_lambda!49749) (not d!469715)))

(declare-fun tb!88903 () Bool)

(declare-fun t!143725 () Bool)

(assert (=> (and b!1580060 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))) t!143725) tb!88903))

(declare-fun b!1580977 () Bool)

(declare-fun e!1015603 () Bool)

(declare-fun tp!465346 () Bool)

(assert (=> b!1580977 (= e!1015603 (and (inv!22787 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))))) (value!96911 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))) tp!465346))))

(declare-fun result!107596 () Bool)

(assert (=> tb!88903 (= result!107596 (and (inv!22788 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))))) (value!96911 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371))))) e!1015603))))

(assert (= tb!88903 b!1580977))

(declare-fun m!1864881 () Bool)

(assert (=> b!1580977 m!1864881))

(declare-fun m!1864885 () Bool)

(assert (=> tb!88903 m!1864885))

(assert (=> d!469715 t!143725))

(declare-fun b_and!110789 () Bool)

(assert (= b_and!110757 (and (=> t!143725 result!107596) b_and!110789)))

(declare-fun t!143727 () Bool)

(declare-fun tb!88905 () Bool)

(assert (=> (and b!1580067 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))) t!143727) tb!88905))

(declare-fun result!107598 () Bool)

(assert (= result!107598 result!107596))

(assert (=> d!469715 t!143727))

(declare-fun b_and!110791 () Bool)

(assert (= b_and!110759 (and (=> t!143727 result!107598) b_and!110791)))

(declare-fun tb!88907 () Bool)

(declare-fun t!143729 () Bool)

(assert (=> (and b!1580515 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))) t!143729) tb!88907))

(declare-fun result!107600 () Bool)

(assert (= result!107600 result!107596))

(assert (=> d!469715 t!143729))

(declare-fun b_and!110793 () Bool)

(assert (= b_and!110761 (and (=> t!143729 result!107600) b_and!110793)))

(declare-fun t!143731 () Bool)

(declare-fun tb!88909 () Bool)

(assert (=> (and b!1580538 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))) t!143731) tb!88909))

(declare-fun result!107602 () Bool)

(assert (= result!107602 result!107596))

(assert (=> d!469715 t!143731))

(declare-fun b_and!110795 () Bool)

(assert (= b_and!110763 (and (=> t!143731 result!107602) b_and!110795)))

(declare-fun m!1864899 () Bool)

(assert (=> d!469715 m!1864899))

(declare-fun m!1864903 () Bool)

(assert (=> d!469715 m!1864903))

(assert (=> b!1580207 d!469715))

(declare-fun d!469717 () Bool)

(declare-fun c!256200 () Bool)

(assert (=> d!469717 (= c!256200 ((_ is Cons!17371) (t!143642 (Cons!17371 (h!22772 tokens!457) Nil!17371))))))

(declare-fun e!1015604 () List!17439)

(assert (=> d!469717 (= (printList!805 thiss!17113 (t!143642 (Cons!17371 (h!22772 tokens!457) Nil!17371))) e!1015604)))

(declare-fun b!1580978 () Bool)

(assert (=> b!1580978 (= e!1015604 (++!4511 (list!6715 (charsOf!1710 (h!22772 (t!143642 (Cons!17371 (h!22772 tokens!457) Nil!17371))))) (printList!805 thiss!17113 (t!143642 (t!143642 (Cons!17371 (h!22772 tokens!457) Nil!17371))))))))

(declare-fun b!1580979 () Bool)

(assert (=> b!1580979 (= e!1015604 Nil!17369)))

(assert (= (and d!469717 c!256200) b!1580978))

(assert (= (and d!469717 (not c!256200)) b!1580979))

(declare-fun m!1864917 () Bool)

(assert (=> b!1580978 m!1864917))

(assert (=> b!1580978 m!1864917))

(declare-fun m!1864919 () Bool)

(assert (=> b!1580978 m!1864919))

(declare-fun m!1864921 () Bool)

(assert (=> b!1580978 m!1864921))

(assert (=> b!1580978 m!1864919))

(assert (=> b!1580978 m!1864921))

(declare-fun m!1864923 () Bool)

(assert (=> b!1580978 m!1864923))

(assert (=> b!1580207 d!469717))

(declare-fun d!469721 () Bool)

(declare-fun charsToBigInt!0 (List!17440 Int) Int)

(assert (=> d!469721 (= (inv!15 (value!96911 (h!22772 tokens!457))) (= (charsToBigInt!0 (text!22506 (value!96911 (h!22772 tokens!457))) 0) (value!96906 (value!96911 (h!22772 tokens!457)))))))

(declare-fun bs!390928 () Bool)

(assert (= bs!390928 d!469721))

(declare-fun m!1864925 () Bool)

(assert (=> bs!390928 m!1864925))

(assert (=> b!1580470 d!469721))

(declare-fun d!469723 () Bool)

(assert (=> d!469723 (= (inv!22788 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457)))) (isBalanced!1693 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457))))))))

(declare-fun bs!390929 () Bool)

(assert (= bs!390929 d!469723))

(declare-fun m!1864927 () Bool)

(assert (=> bs!390929 m!1864927))

(assert (=> tb!88847 d!469723))

(declare-fun b!1580984 () Bool)

(declare-fun e!1015608 () List!17441)

(assert (=> b!1580984 (= e!1015608 (list!6722 (xs!8575 (c!256023 lt!552804))))))

(declare-fun b!1580983 () Bool)

(declare-fun e!1015607 () List!17441)

(assert (=> b!1580983 (= e!1015607 e!1015608)))

(declare-fun c!256202 () Bool)

(assert (=> b!1580983 (= c!256202 ((_ is Leaf!8522) (c!256023 lt!552804)))))

(declare-fun d!469725 () Bool)

(declare-fun c!256201 () Bool)

(assert (=> d!469725 (= c!256201 ((_ is Empty!5771) (c!256023 lt!552804)))))

(assert (=> d!469725 (= (list!6720 (c!256023 lt!552804)) e!1015607)))

(declare-fun b!1580985 () Bool)

(assert (=> b!1580985 (= e!1015608 (++!4515 (list!6720 (left!14035 (c!256023 lt!552804))) (list!6720 (right!14365 (c!256023 lt!552804)))))))

(declare-fun b!1580982 () Bool)

(assert (=> b!1580982 (= e!1015607 Nil!17371)))

(assert (= (and d!469725 c!256201) b!1580982))

(assert (= (and d!469725 (not c!256201)) b!1580983))

(assert (= (and b!1580983 c!256202) b!1580984))

(assert (= (and b!1580983 (not c!256202)) b!1580985))

(declare-fun m!1864929 () Bool)

(assert (=> b!1580984 m!1864929))

(declare-fun m!1864931 () Bool)

(assert (=> b!1580985 m!1864931))

(declare-fun m!1864933 () Bool)

(assert (=> b!1580985 m!1864933))

(assert (=> b!1580985 m!1864931))

(assert (=> b!1580985 m!1864933))

(declare-fun m!1864935 () Bool)

(assert (=> b!1580985 m!1864935))

(assert (=> d!469495 d!469725))

(declare-fun d!469727 () Bool)

(assert (=> d!469727 (= (isEmpty!10382 lt!552968) (not ((_ is Some!3113) lt!552968)))))

(assert (=> d!469359 d!469727))

(declare-fun b!1580988 () Bool)

(declare-fun res!704849 () Bool)

(declare-fun e!1015612 () Bool)

(assert (=> b!1580988 (=> (not res!704849) (not e!1015612))))

(assert (=> b!1580988 (= res!704849 (= (head!3188 lt!552796) (head!3188 lt!552796)))))

(declare-fun b!1580987 () Bool)

(declare-fun e!1015611 () Bool)

(assert (=> b!1580987 (= e!1015611 e!1015612)))

(declare-fun res!704851 () Bool)

(assert (=> b!1580987 (=> (not res!704851) (not e!1015612))))

(assert (=> b!1580987 (= res!704851 (not ((_ is Nil!17369) lt!552796)))))

(declare-fun b!1580990 () Bool)

(declare-fun e!1015610 () Bool)

(assert (=> b!1580990 (= e!1015610 (>= (size!13973 lt!552796) (size!13973 lt!552796)))))

(declare-fun b!1580989 () Bool)

(assert (=> b!1580989 (= e!1015612 (isPrefix!1321 (tail!2254 lt!552796) (tail!2254 lt!552796)))))

(declare-fun d!469731 () Bool)

(assert (=> d!469731 e!1015610))

(declare-fun res!704852 () Bool)

(assert (=> d!469731 (=> res!704852 e!1015610)))

(declare-fun lt!553576 () Bool)

(assert (=> d!469731 (= res!704852 (not lt!553576))))

(assert (=> d!469731 (= lt!553576 e!1015611)))

(declare-fun res!704850 () Bool)

(assert (=> d!469731 (=> res!704850 e!1015611)))

(assert (=> d!469731 (= res!704850 ((_ is Nil!17369) lt!552796))))

(assert (=> d!469731 (= (isPrefix!1321 lt!552796 lt!552796) lt!553576)))

(assert (= (and d!469731 (not res!704850)) b!1580987))

(assert (= (and b!1580987 res!704851) b!1580988))

(assert (= (and b!1580988 res!704849) b!1580989))

(assert (= (and d!469731 (not res!704852)) b!1580990))

(declare-fun m!1864939 () Bool)

(assert (=> b!1580988 m!1864939))

(assert (=> b!1580988 m!1864939))

(assert (=> b!1580990 m!1863409))

(assert (=> b!1580990 m!1863409))

(declare-fun m!1864941 () Bool)

(assert (=> b!1580989 m!1864941))

(assert (=> b!1580989 m!1864941))

(assert (=> b!1580989 m!1864941))

(assert (=> b!1580989 m!1864941))

(declare-fun m!1864943 () Bool)

(assert (=> b!1580989 m!1864943))

(assert (=> d!469359 d!469731))

(declare-fun d!469733 () Bool)

(assert (=> d!469733 (isPrefix!1321 lt!552796 lt!552796)))

(declare-fun lt!553579 () Unit!27015)

(declare-fun choose!9451 (List!17439 List!17439) Unit!27015)

(assert (=> d!469733 (= lt!553579 (choose!9451 lt!552796 lt!552796))))

(assert (=> d!469733 (= (lemmaIsPrefixRefl!909 lt!552796 lt!552796) lt!553579)))

(declare-fun bs!390930 () Bool)

(assert (= bs!390930 d!469733))

(assert (=> bs!390930 m!1863387))

(declare-fun m!1864945 () Bool)

(assert (=> bs!390930 m!1864945))

(assert (=> d!469359 d!469733))

(declare-fun bs!390931 () Bool)

(declare-fun d!469735 () Bool)

(assert (= bs!390931 (and d!469735 d!469539)))

(declare-fun lambda!66470 () Int)

(assert (=> bs!390931 (= lambda!66470 lambda!66457)))

(assert (=> d!469735 true))

(declare-fun lt!553582 () Bool)

(assert (=> d!469735 (= lt!553582 (forall!3991 rules!1846 lambda!66470))))

(declare-fun e!1015617 () Bool)

(assert (=> d!469735 (= lt!553582 e!1015617)))

(declare-fun res!704857 () Bool)

(assert (=> d!469735 (=> res!704857 e!1015617)))

(assert (=> d!469735 (= res!704857 (not ((_ is Cons!17372) rules!1846)))))

(assert (=> d!469735 (= (rulesValidInductive!911 thiss!17113 rules!1846) lt!553582)))

(declare-fun b!1580995 () Bool)

(declare-fun e!1015618 () Bool)

(assert (=> b!1580995 (= e!1015617 e!1015618)))

(declare-fun res!704858 () Bool)

(assert (=> b!1580995 (=> (not res!704858) (not e!1015618))))

(declare-fun ruleValid!707 (LexerInterface!2690 Rule!5922) Bool)

(assert (=> b!1580995 (= res!704858 (ruleValid!707 thiss!17113 (h!22773 rules!1846)))))

(declare-fun b!1580996 () Bool)

(assert (=> b!1580996 (= e!1015618 (rulesValidInductive!911 thiss!17113 (t!143643 rules!1846)))))

(assert (= (and d!469735 (not res!704857)) b!1580995))

(assert (= (and b!1580995 res!704858) b!1580996))

(declare-fun m!1864947 () Bool)

(assert (=> d!469735 m!1864947))

(declare-fun m!1864949 () Bool)

(assert (=> b!1580995 m!1864949))

(assert (=> b!1580996 m!1864469))

(assert (=> d!469359 d!469735))

(assert (=> b!1580142 d!469627))

(assert (=> b!1580142 d!469625))

(declare-fun d!469737 () Bool)

(declare-fun lt!553585 () BalanceConc!11484)

(assert (=> d!469737 (= (list!6715 lt!553585) (originalCharacters!3875 lt!552938))))

(assert (=> d!469737 (= lt!553585 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 lt!552938))) (value!96911 lt!552938)))))

(assert (=> d!469737 (= (charsOf!1710 lt!552938) lt!553585)))

(declare-fun b_lambda!49751 () Bool)

(assert (=> (not b_lambda!49751) (not d!469737)))

(declare-fun tb!88911 () Bool)

(declare-fun t!143733 () Bool)

(assert (=> (and b!1580060 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 lt!552938)))) t!143733) tb!88911))

(declare-fun b!1581005 () Bool)

(declare-fun e!1015621 () Bool)

(declare-fun tp!465347 () Bool)

(assert (=> b!1581005 (= e!1015621 (and (inv!22787 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 lt!552938))) (value!96911 lt!552938)))) tp!465347))))

(declare-fun result!107604 () Bool)

(assert (=> tb!88911 (= result!107604 (and (inv!22788 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 lt!552938))) (value!96911 lt!552938))) e!1015621))))

(assert (= tb!88911 b!1581005))

(declare-fun m!1864951 () Bool)

(assert (=> b!1581005 m!1864951))

(declare-fun m!1864953 () Bool)

(assert (=> tb!88911 m!1864953))

(assert (=> d!469737 t!143733))

(declare-fun b_and!110797 () Bool)

(assert (= b_and!110789 (and (=> t!143733 result!107604) b_and!110797)))

(declare-fun t!143735 () Bool)

(declare-fun tb!88913 () Bool)

(assert (=> (and b!1580067 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toChars!4323 (transformation!3061 (rule!4857 lt!552938)))) t!143735) tb!88913))

(declare-fun result!107606 () Bool)

(assert (= result!107606 result!107604))

(assert (=> d!469737 t!143735))

(declare-fun b_and!110799 () Bool)

(assert (= b_and!110791 (and (=> t!143735 result!107606) b_and!110799)))

(declare-fun tb!88915 () Bool)

(declare-fun t!143737 () Bool)

(assert (=> (and b!1580515 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 lt!552938)))) t!143737) tb!88915))

(declare-fun result!107608 () Bool)

(assert (= result!107608 result!107604))

(assert (=> d!469737 t!143737))

(declare-fun b_and!110801 () Bool)

(assert (= b_and!110793 (and (=> t!143737 result!107608) b_and!110801)))

(declare-fun t!143739 () Bool)

(declare-fun tb!88917 () Bool)

(assert (=> (and b!1580538 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toChars!4323 (transformation!3061 (rule!4857 lt!552938)))) t!143739) tb!88917))

(declare-fun result!107610 () Bool)

(assert (= result!107610 result!107604))

(assert (=> d!469737 t!143739))

(declare-fun b_and!110803 () Bool)

(assert (= b_and!110795 (and (=> t!143739 result!107610) b_and!110803)))

(declare-fun m!1864955 () Bool)

(assert (=> d!469737 m!1864955))

(declare-fun m!1864957 () Bool)

(assert (=> d!469737 m!1864957))

(assert (=> b!1580142 d!469737))

(declare-fun d!469739 () Bool)

(assert (=> d!469739 (= (list!6715 (charsOf!1710 lt!552938)) (list!6719 (c!256021 (charsOf!1710 lt!552938))))))

(declare-fun bs!390932 () Bool)

(assert (= bs!390932 d!469739))

(declare-fun m!1864959 () Bool)

(assert (=> bs!390932 m!1864959))

(assert (=> b!1580142 d!469739))

(declare-fun b!1581006 () Bool)

(declare-fun res!704871 () Bool)

(declare-fun e!1015623 () Bool)

(assert (=> b!1581006 (=> (not res!704871) (not e!1015623))))

(assert (=> b!1581006 (= res!704871 (isEmpty!10386 (tail!2254 (list!6715 (charsOf!1710 lt!552938)))))))

(declare-fun d!469741 () Bool)

(declare-fun e!1015625 () Bool)

(assert (=> d!469741 e!1015625))

(declare-fun c!256206 () Bool)

(assert (=> d!469741 (= c!256206 ((_ is EmptyExpr!4389) (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938)))))))))

(declare-fun lt!553586 () Bool)

(declare-fun e!1015627 () Bool)

(assert (=> d!469741 (= lt!553586 e!1015627)))

(declare-fun c!256207 () Bool)

(assert (=> d!469741 (= c!256207 (isEmpty!10386 (list!6715 (charsOf!1710 lt!552938))))))

(assert (=> d!469741 (validRegex!1731 (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938))))))))

(assert (=> d!469741 (= (matchR!1910 (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938))))) (list!6715 (charsOf!1710 lt!552938))) lt!553586)))

(declare-fun b!1581007 () Bool)

(declare-fun e!1015626 () Bool)

(assert (=> b!1581007 (= e!1015625 e!1015626)))

(declare-fun c!256208 () Bool)

(assert (=> b!1581007 (= c!256208 ((_ is EmptyLang!4389) (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938)))))))))

(declare-fun b!1581008 () Bool)

(declare-fun call!102703 () Bool)

(assert (=> b!1581008 (= e!1015625 (= lt!553586 call!102703))))

(declare-fun b!1581009 () Bool)

(assert (=> b!1581009 (= e!1015623 (= (head!3188 (list!6715 (charsOf!1710 lt!552938))) (c!256022 (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938))))))))))

(declare-fun bm!102698 () Bool)

(assert (=> bm!102698 (= call!102703 (isEmpty!10386 (list!6715 (charsOf!1710 lt!552938))))))

(declare-fun b!1581010 () Bool)

(declare-fun e!1015622 () Bool)

(declare-fun e!1015624 () Bool)

(assert (=> b!1581010 (= e!1015622 e!1015624)))

(declare-fun res!704873 () Bool)

(assert (=> b!1581010 (=> (not res!704873) (not e!1015624))))

(assert (=> b!1581010 (= res!704873 (not lt!553586))))

(declare-fun b!1581011 () Bool)

(declare-fun e!1015628 () Bool)

(assert (=> b!1581011 (= e!1015628 (not (= (head!3188 (list!6715 (charsOf!1710 lt!552938))) (c!256022 (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938)))))))))))

(declare-fun b!1581012 () Bool)

(assert (=> b!1581012 (= e!1015626 (not lt!553586))))

(declare-fun b!1581013 () Bool)

(declare-fun res!704872 () Bool)

(assert (=> b!1581013 (=> res!704872 e!1015622)))

(assert (=> b!1581013 (= res!704872 e!1015623)))

(declare-fun res!704868 () Bool)

(assert (=> b!1581013 (=> (not res!704868) (not e!1015623))))

(assert (=> b!1581013 (= res!704868 lt!553586)))

(declare-fun b!1581014 () Bool)

(assert (=> b!1581014 (= e!1015627 (matchR!1910 (derivativeStep!1041 (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938))))) (head!3188 (list!6715 (charsOf!1710 lt!552938)))) (tail!2254 (list!6715 (charsOf!1710 lt!552938)))))))

(declare-fun b!1581015 () Bool)

(declare-fun res!704870 () Bool)

(assert (=> b!1581015 (=> (not res!704870) (not e!1015623))))

(assert (=> b!1581015 (= res!704870 (not call!102703))))

(declare-fun b!1581016 () Bool)

(declare-fun res!704869 () Bool)

(assert (=> b!1581016 (=> res!704869 e!1015628)))

(assert (=> b!1581016 (= res!704869 (not (isEmpty!10386 (tail!2254 (list!6715 (charsOf!1710 lt!552938))))))))

(declare-fun b!1581017 () Bool)

(assert (=> b!1581017 (= e!1015627 (nullable!1290 (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938)))))))))

(declare-fun b!1581018 () Bool)

(declare-fun res!704867 () Bool)

(assert (=> b!1581018 (=> res!704867 e!1015622)))

(assert (=> b!1581018 (= res!704867 (not ((_ is ElementMatch!4389) (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938))))))))))

(assert (=> b!1581018 (= e!1015626 e!1015622)))

(declare-fun b!1581019 () Bool)

(assert (=> b!1581019 (= e!1015624 e!1015628)))

(declare-fun res!704874 () Bool)

(assert (=> b!1581019 (=> res!704874 e!1015628)))

(assert (=> b!1581019 (= res!704874 call!102703)))

(assert (= (and d!469741 c!256207) b!1581017))

(assert (= (and d!469741 (not c!256207)) b!1581014))

(assert (= (and d!469741 c!256206) b!1581008))

(assert (= (and d!469741 (not c!256206)) b!1581007))

(assert (= (and b!1581007 c!256208) b!1581012))

(assert (= (and b!1581007 (not c!256208)) b!1581018))

(assert (= (and b!1581018 (not res!704867)) b!1581013))

(assert (= (and b!1581013 res!704868) b!1581015))

(assert (= (and b!1581015 res!704870) b!1581006))

(assert (= (and b!1581006 res!704871) b!1581009))

(assert (= (and b!1581013 (not res!704872)) b!1581010))

(assert (= (and b!1581010 res!704873) b!1581019))

(assert (= (and b!1581019 (not res!704874)) b!1581016))

(assert (= (and b!1581016 (not res!704869)) b!1581011))

(assert (= (or b!1581008 b!1581015 b!1581019) bm!102698))

(assert (=> bm!102698 m!1863301))

(declare-fun m!1864961 () Bool)

(assert (=> bm!102698 m!1864961))

(assert (=> b!1581016 m!1863301))

(declare-fun m!1864963 () Bool)

(assert (=> b!1581016 m!1864963))

(assert (=> b!1581016 m!1864963))

(declare-fun m!1864965 () Bool)

(assert (=> b!1581016 m!1864965))

(assert (=> b!1581014 m!1863301))

(declare-fun m!1864967 () Bool)

(assert (=> b!1581014 m!1864967))

(assert (=> b!1581014 m!1864967))

(declare-fun m!1864969 () Bool)

(assert (=> b!1581014 m!1864969))

(assert (=> b!1581014 m!1863301))

(assert (=> b!1581014 m!1864963))

(assert (=> b!1581014 m!1864969))

(assert (=> b!1581014 m!1864963))

(declare-fun m!1864971 () Bool)

(assert (=> b!1581014 m!1864971))

(assert (=> b!1581006 m!1863301))

(assert (=> b!1581006 m!1864963))

(assert (=> b!1581006 m!1864963))

(assert (=> b!1581006 m!1864965))

(assert (=> d!469741 m!1863301))

(assert (=> d!469741 m!1864961))

(declare-fun m!1864973 () Bool)

(assert (=> d!469741 m!1864973))

(assert (=> b!1581009 m!1863301))

(assert (=> b!1581009 m!1864967))

(declare-fun m!1864975 () Bool)

(assert (=> b!1581017 m!1864975))

(assert (=> b!1581011 m!1863301))

(assert (=> b!1581011 m!1864967))

(assert (=> b!1580142 d!469741))

(declare-fun d!469743 () Bool)

(declare-fun lt!553587 () Bool)

(assert (=> d!469743 (= lt!553587 (isEmpty!10383 (list!6716 (_1!9823 lt!553014))))))

(assert (=> d!469743 (= lt!553587 (isEmpty!10384 (c!256023 (_1!9823 lt!553014))))))

(assert (=> d!469743 (= (isEmpty!10378 (_1!9823 lt!553014)) lt!553587)))

(declare-fun bs!390933 () Bool)

(assert (= bs!390933 d!469743))

(assert (=> bs!390933 m!1863541))

(assert (=> bs!390933 m!1863541))

(declare-fun m!1864977 () Bool)

(assert (=> bs!390933 m!1864977))

(declare-fun m!1864979 () Bool)

(assert (=> bs!390933 m!1864979))

(assert (=> b!1580238 d!469743))

(declare-fun d!469745 () Bool)

(declare-fun lt!553588 () Bool)

(assert (=> d!469745 (= lt!553588 (isEmpty!10386 (list!6715 (_2!9823 lt!552811))))))

(assert (=> d!469745 (= lt!553588 (isEmpty!10387 (c!256021 (_2!9823 lt!552811))))))

(assert (=> d!469745 (= (isEmpty!10377 (_2!9823 lt!552811)) lt!553588)))

(declare-fun bs!390934 () Bool)

(assert (= bs!390934 d!469745))

(declare-fun m!1864981 () Bool)

(assert (=> bs!390934 m!1864981))

(assert (=> bs!390934 m!1864981))

(declare-fun m!1864983 () Bool)

(assert (=> bs!390934 m!1864983))

(declare-fun m!1864985 () Bool)

(assert (=> bs!390934 m!1864985))

(assert (=> b!1580096 d!469745))

(declare-fun d!469747 () Bool)

(assert (=> d!469747 (= (isEmpty!10386 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))) ((_ is Nil!17369) (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!469411 d!469747))

(declare-fun d!469749 () Bool)

(assert (=> d!469749 (= (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6719 (c!256021 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(declare-fun bs!390935 () Bool)

(assert (= bs!390935 d!469749))

(declare-fun m!1864987 () Bool)

(assert (=> bs!390935 m!1864987))

(assert (=> d!469411 d!469749))

(declare-fun d!469751 () Bool)

(declare-fun lt!553593 () Bool)

(assert (=> d!469751 (= lt!553593 (isEmpty!10386 (list!6719 (c!256021 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))))

(declare-fun size!13978 (Conc!5770) Int)

(assert (=> d!469751 (= lt!553593 (= (size!13978 (c!256021 (charsOf!1710 (h!22772 (t!143642 tokens!457))))) 0))))

(assert (=> d!469751 (= (isEmpty!10387 (c!256021 (charsOf!1710 (h!22772 (t!143642 tokens!457))))) lt!553593)))

(declare-fun bs!390936 () Bool)

(assert (= bs!390936 d!469751))

(assert (=> bs!390936 m!1864987))

(assert (=> bs!390936 m!1864987))

(declare-fun m!1865011 () Bool)

(assert (=> bs!390936 m!1865011))

(declare-fun m!1865015 () Bool)

(assert (=> bs!390936 m!1865015))

(assert (=> d!469411 d!469751))

(declare-fun b!1581036 () Bool)

(declare-fun e!1015636 () List!17439)

(assert (=> b!1581036 (= e!1015636 (++!4511 (list!6719 (left!14034 (c!256021 lt!552788))) (list!6719 (right!14364 (c!256021 lt!552788)))))))

(declare-fun b!1581033 () Bool)

(declare-fun e!1015635 () List!17439)

(assert (=> b!1581033 (= e!1015635 Nil!17369)))

(declare-fun b!1581034 () Bool)

(assert (=> b!1581034 (= e!1015635 e!1015636)))

(declare-fun c!256214 () Bool)

(assert (=> b!1581034 (= c!256214 ((_ is Leaf!8521) (c!256021 lt!552788)))))

(declare-fun d!469755 () Bool)

(declare-fun c!256213 () Bool)

(assert (=> d!469755 (= c!256213 ((_ is Empty!5770) (c!256021 lt!552788)))))

(assert (=> d!469755 (= (list!6719 (c!256021 lt!552788)) e!1015635)))

(declare-fun b!1581035 () Bool)

(assert (=> b!1581035 (= e!1015636 (list!6721 (xs!8574 (c!256021 lt!552788))))))

(assert (= (and d!469755 c!256213) b!1581033))

(assert (= (and d!469755 (not c!256213)) b!1581034))

(assert (= (and b!1581034 c!256214) b!1581035))

(assert (= (and b!1581034 (not c!256214)) b!1581036))

(declare-fun m!1865021 () Bool)

(assert (=> b!1581036 m!1865021))

(declare-fun m!1865023 () Bool)

(assert (=> b!1581036 m!1865023))

(assert (=> b!1581036 m!1865021))

(assert (=> b!1581036 m!1865023))

(declare-fun m!1865025 () Bool)

(assert (=> b!1581036 m!1865025))

(declare-fun m!1865027 () Bool)

(assert (=> b!1581035 m!1865027))

(assert (=> d!469427 d!469755))

(declare-fun d!469759 () Bool)

(declare-fun lt!553595 () Bool)

(assert (=> d!469759 (= lt!553595 (isEmpty!10383 (list!6716 (_1!9823 lt!553125))))))

(assert (=> d!469759 (= lt!553595 (isEmpty!10384 (c!256023 (_1!9823 lt!553125))))))

(assert (=> d!469759 (= (isEmpty!10378 (_1!9823 lt!553125)) lt!553595)))

(declare-fun bs!390937 () Bool)

(assert (= bs!390937 d!469759))

(assert (=> bs!390937 m!1863705))

(assert (=> bs!390937 m!1863705))

(declare-fun m!1865031 () Bool)

(assert (=> bs!390937 m!1865031))

(declare-fun m!1865033 () Bool)

(assert (=> bs!390937 m!1865033))

(assert (=> b!1580328 d!469759))

(declare-fun d!469761 () Bool)

(assert (=> d!469761 (= (list!6715 lt!552998) (list!6719 (c!256021 lt!552998)))))

(declare-fun bs!390938 () Bool)

(assert (= bs!390938 d!469761))

(declare-fun m!1865039 () Bool)

(assert (=> bs!390938 m!1865039))

(assert (=> d!469375 d!469761))

(declare-fun d!469765 () Bool)

(declare-fun c!256219 () Bool)

(assert (=> d!469765 (= c!256219 ((_ is Cons!17371) (list!6716 lt!552802)))))

(declare-fun e!1015642 () List!17439)

(assert (=> d!469765 (= (printList!805 thiss!17113 (list!6716 lt!552802)) e!1015642)))

(declare-fun b!1581046 () Bool)

(assert (=> b!1581046 (= e!1015642 (++!4511 (list!6715 (charsOf!1710 (h!22772 (list!6716 lt!552802)))) (printList!805 thiss!17113 (t!143642 (list!6716 lt!552802)))))))

(declare-fun b!1581047 () Bool)

(assert (=> b!1581047 (= e!1015642 Nil!17369)))

(assert (= (and d!469765 c!256219) b!1581046))

(assert (= (and d!469765 (not c!256219)) b!1581047))

(declare-fun m!1865043 () Bool)

(assert (=> b!1581046 m!1865043))

(assert (=> b!1581046 m!1865043))

(declare-fun m!1865045 () Bool)

(assert (=> b!1581046 m!1865045))

(declare-fun m!1865047 () Bool)

(assert (=> b!1581046 m!1865047))

(assert (=> b!1581046 m!1865045))

(assert (=> b!1581046 m!1865047))

(declare-fun m!1865049 () Bool)

(assert (=> b!1581046 m!1865049))

(assert (=> d!469375 d!469765))

(declare-fun d!469769 () Bool)

(assert (=> d!469769 (= (list!6716 lt!552802) (list!6720 (c!256023 lt!552802)))))

(declare-fun bs!390940 () Bool)

(assert (= bs!390940 d!469769))

(assert (=> bs!390940 m!1864373))

(assert (=> d!469375 d!469769))

(assert (=> d!469375 d!469365))

(declare-fun d!469771 () Bool)

(assert (=> d!469771 (= (isDefined!2493 lt!552968) (not (isEmpty!10382 lt!552968)))))

(declare-fun bs!390941 () Bool)

(assert (= bs!390941 d!469771))

(assert (=> bs!390941 m!1863385))

(assert (=> b!1580173 d!469771))

(declare-fun d!469773 () Bool)

(assert (=> d!469773 (= (inv!22780 (tag!3327 (rule!4857 (h!22772 (t!143642 tokens!457))))) (= (mod (str.len (value!96910 (tag!3327 (rule!4857 (h!22772 (t!143642 tokens!457)))))) 2) 0))))

(assert (=> b!1580537 d!469773))

(declare-fun d!469775 () Bool)

(declare-fun res!704884 () Bool)

(declare-fun e!1015646 () Bool)

(assert (=> d!469775 (=> (not res!704884) (not e!1015646))))

(assert (=> d!469775 (= res!704884 (semiInverseModEq!1150 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toValue!4464 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))))))

(assert (=> d!469775 (= (inv!22783 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) e!1015646)))

(declare-fun b!1581053 () Bool)

(assert (=> b!1581053 (= e!1015646 (equivClasses!1091 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toValue!4464 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))))))

(assert (= (and d!469775 res!704884) b!1581053))

(declare-fun m!1865057 () Bool)

(assert (=> d!469775 m!1865057))

(declare-fun m!1865061 () Bool)

(assert (=> b!1581053 m!1865061))

(assert (=> b!1580537 d!469775))

(assert (=> b!1580258 d!469505))

(assert (=> b!1580258 d!469355))

(declare-fun d!469777 () Bool)

(declare-fun lt!553603 () Int)

(assert (=> d!469777 (= lt!553603 (size!13973 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!469777 (= lt!553603 (size!13978 (c!256021 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!469777 (= (size!13974 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) lt!553603)))

(declare-fun bs!390946 () Bool)

(assert (= bs!390946 d!469777))

(assert (=> bs!390946 m!1863149))

(assert (=> bs!390946 m!1863613))

(assert (=> bs!390946 m!1863613))

(declare-fun m!1865099 () Bool)

(assert (=> bs!390946 m!1865099))

(assert (=> bs!390946 m!1865015))

(assert (=> b!1580258 d!469777))

(declare-fun d!469791 () Bool)

(assert (=> d!469791 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 tokens!457))))

(declare-fun lt!553674 () Unit!27015)

(declare-fun choose!9452 (LexerInterface!2690 List!17442 List!17441 Token!5688) Unit!27015)

(assert (=> d!469791 (= lt!553674 (choose!9452 thiss!17113 rules!1846 tokens!457 (h!22772 tokens!457)))))

(assert (=> d!469791 (not (isEmpty!10379 rules!1846))))

(assert (=> d!469791 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!514 thiss!17113 rules!1846 tokens!457 (h!22772 tokens!457)) lt!553674)))

(declare-fun bs!390971 () Bool)

(assert (= bs!390971 d!469791))

(assert (=> bs!390971 m!1863117))

(declare-fun m!1865435 () Bool)

(assert (=> bs!390971 m!1865435))

(assert (=> bs!390971 m!1863063))

(assert (=> b!1580258 d!469791))

(assert (=> b!1580258 d!469413))

(assert (=> b!1580258 d!469339))

(declare-fun d!469897 () Bool)

(assert (=> d!469897 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 (t!143642 tokens!457)))))

(declare-fun lt!553675 () Unit!27015)

(assert (=> d!469897 (= lt!553675 (choose!9452 thiss!17113 rules!1846 tokens!457 (h!22772 (t!143642 tokens!457))))))

(assert (=> d!469897 (not (isEmpty!10379 rules!1846))))

(assert (=> d!469897 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!514 thiss!17113 rules!1846 tokens!457 (h!22772 (t!143642 tokens!457))) lt!553675)))

(declare-fun bs!390972 () Bool)

(assert (= bs!390972 d!469897))

(assert (=> bs!390972 m!1863081))

(declare-fun m!1865437 () Bool)

(assert (=> bs!390972 m!1865437))

(assert (=> bs!390972 m!1863063))

(assert (=> b!1580258 d!469897))

(assert (=> d!469447 d!469341))

(declare-fun b!1581177 () Bool)

(declare-fun e!1015714 () Bool)

(declare-fun e!1015713 () Bool)

(assert (=> b!1581177 (= e!1015714 e!1015713)))

(declare-fun lt!553676 () tuple2!16842)

(declare-fun res!704942 () Bool)

(assert (=> b!1581177 (= res!704942 (< (size!13974 (_2!9823 lt!553676)) (size!13974 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457))))))))

(assert (=> b!1581177 (=> (not res!704942) (not e!1015713))))

(declare-fun b!1581178 () Bool)

(assert (=> b!1581178 (= e!1015713 (not (isEmpty!10378 (_1!9823 lt!553676))))))

(declare-fun e!1015715 () Bool)

(declare-fun b!1581179 () Bool)

(assert (=> b!1581179 (= e!1015715 (= (list!6715 (_2!9823 lt!553676)) (_2!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457))))))))))

(declare-fun d!469899 () Bool)

(assert (=> d!469899 e!1015715))

(declare-fun res!704941 () Bool)

(assert (=> d!469899 (=> (not res!704941) (not e!1015715))))

(assert (=> d!469899 (= res!704941 e!1015714)))

(declare-fun c!256255 () Bool)

(assert (=> d!469899 (= c!256255 (> (size!13972 (_1!9823 lt!553676)) 0))))

(assert (=> d!469899 (= lt!553676 (lexTailRecV2!502 thiss!17113 rules!1846 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457))) (BalanceConc!11485 Empty!5770) (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457))) (BalanceConc!11487 Empty!5771)))))

(assert (=> d!469899 (= (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457)))) lt!553676)))

(declare-fun b!1581180 () Bool)

(declare-fun res!704940 () Bool)

(assert (=> b!1581180 (=> (not res!704940) (not e!1015715))))

(assert (=> b!1581180 (= res!704940 (= (list!6716 (_1!9823 lt!553676)) (_1!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457))))))))))

(declare-fun b!1581181 () Bool)

(assert (=> b!1581181 (= e!1015714 (= (_2!9823 lt!553676) (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457)))))))

(assert (= (and d!469899 c!256255) b!1581177))

(assert (= (and d!469899 (not c!256255)) b!1581181))

(assert (= (and b!1581177 res!704942) b!1581178))

(assert (= (and d!469899 res!704941) b!1581180))

(assert (= (and b!1581180 res!704940) b!1581179))

(declare-fun m!1865439 () Bool)

(assert (=> b!1581177 m!1865439))

(assert (=> b!1581177 m!1863881))

(declare-fun m!1865441 () Bool)

(assert (=> b!1581177 m!1865441))

(declare-fun m!1865443 () Bool)

(assert (=> b!1581179 m!1865443))

(assert (=> b!1581179 m!1863881))

(declare-fun m!1865445 () Bool)

(assert (=> b!1581179 m!1865445))

(assert (=> b!1581179 m!1865445))

(declare-fun m!1865447 () Bool)

(assert (=> b!1581179 m!1865447))

(declare-fun m!1865449 () Bool)

(assert (=> d!469899 m!1865449))

(assert (=> d!469899 m!1863881))

(assert (=> d!469899 m!1863881))

(declare-fun m!1865451 () Bool)

(assert (=> d!469899 m!1865451))

(declare-fun m!1865453 () Bool)

(assert (=> b!1581178 m!1865453))

(declare-fun m!1865455 () Bool)

(assert (=> b!1581180 m!1865455))

(assert (=> b!1581180 m!1863881))

(assert (=> b!1581180 m!1865445))

(assert (=> b!1581180 m!1865445))

(assert (=> b!1581180 m!1865447))

(assert (=> d!469447 d!469899))

(declare-fun d!469901 () Bool)

(declare-fun lt!553677 () BalanceConc!11484)

(assert (=> d!469901 (= (list!6715 lt!553677) (printList!805 thiss!17113 (list!6716 (seqFromList!1871 (t!143642 tokens!457)))))))

(assert (=> d!469901 (= lt!553677 (printTailRec!743 thiss!17113 (seqFromList!1871 (t!143642 tokens!457)) 0 (BalanceConc!11485 Empty!5770)))))

(assert (=> d!469901 (= (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457))) lt!553677)))

(declare-fun bs!390973 () Bool)

(assert (= bs!390973 d!469901))

(declare-fun m!1865457 () Bool)

(assert (=> bs!390973 m!1865457))

(assert (=> bs!390973 m!1863093))

(declare-fun m!1865459 () Bool)

(assert (=> bs!390973 m!1865459))

(assert (=> bs!390973 m!1865459))

(declare-fun m!1865461 () Bool)

(assert (=> bs!390973 m!1865461))

(assert (=> bs!390973 m!1863093))

(declare-fun m!1865463 () Bool)

(assert (=> bs!390973 m!1865463))

(assert (=> d!469447 d!469901))

(assert (=> d!469447 d!469437))

(declare-fun d!469903 () Bool)

(assert (=> d!469903 (= (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457)))))) (list!6720 (c!256023 (_1!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457))))))))))

(declare-fun bs!390974 () Bool)

(assert (= bs!390974 d!469903))

(declare-fun m!1865465 () Bool)

(assert (=> bs!390974 m!1865465))

(assert (=> d!469447 d!469903))

(declare-fun d!469905 () Bool)

(declare-fun lt!553678 () Bool)

(assert (=> d!469905 (= lt!553678 (isEmpty!10386 (list!6715 (_2!9823 lt!553273))))))

(assert (=> d!469905 (= lt!553678 (isEmpty!10387 (c!256021 (_2!9823 lt!553273))))))

(assert (=> d!469905 (= (isEmpty!10377 (_2!9823 lt!553273)) lt!553678)))

(declare-fun bs!390975 () Bool)

(assert (= bs!390975 d!469905))

(declare-fun m!1865467 () Bool)

(assert (=> bs!390975 m!1865467))

(assert (=> bs!390975 m!1865467))

(declare-fun m!1865469 () Bool)

(assert (=> bs!390975 m!1865469))

(declare-fun m!1865471 () Bool)

(assert (=> bs!390975 m!1865471))

(assert (=> b!1580486 d!469905))

(declare-fun d!469907 () Bool)

(declare-fun charsToBigInt!1 (List!17440) Int)

(assert (=> d!469907 (= (inv!17 (value!96911 (h!22772 tokens!457))) (= (charsToBigInt!1 (text!22505 (value!96911 (h!22772 tokens!457)))) (value!96903 (value!96911 (h!22772 tokens!457)))))))

(declare-fun bs!390976 () Bool)

(assert (= bs!390976 d!469907))

(declare-fun m!1865473 () Bool)

(assert (=> bs!390976 m!1865473))

(assert (=> b!1580473 d!469907))

(declare-fun d!469909 () Bool)

(declare-fun e!1015718 () Bool)

(assert (=> d!469909 e!1015718))

(declare-fun res!704945 () Bool)

(assert (=> d!469909 (=> (not res!704945) (not e!1015718))))

(declare-fun lt!553681 () BalanceConc!11484)

(assert (=> d!469909 (= res!704945 (= (list!6715 lt!553681) (Cons!17369 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0) Nil!17369)))))

(declare-fun singleton!574 (C!8952) BalanceConc!11484)

(assert (=> d!469909 (= lt!553681 (singleton!574 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0)))))

(assert (=> d!469909 (= (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0)) lt!553681)))

(declare-fun b!1581184 () Bool)

(assert (=> b!1581184 (= e!1015718 (isBalanced!1693 (c!256021 lt!553681)))))

(assert (= (and d!469909 res!704945) b!1581184))

(declare-fun m!1865475 () Bool)

(assert (=> d!469909 m!1865475))

(assert (=> d!469909 m!1863345))

(declare-fun m!1865477 () Bool)

(assert (=> d!469909 m!1865477))

(declare-fun m!1865479 () Bool)

(assert (=> b!1581184 m!1865479))

(assert (=> d!469355 d!469909))

(declare-fun d!469911 () Bool)

(declare-fun lt!553704 () Bool)

(declare-fun prefixMatch!330 (Regex!4389 List!17439) Bool)

(assert (=> d!469911 (= lt!553704 (prefixMatch!330 (rulesRegex!451 thiss!17113 rules!1846) (list!6715 (++!4513 (charsOf!1710 (h!22772 tokens!457)) (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))))))))

(declare-datatypes ((List!17445 0))(
  ( (Nil!17375) (Cons!17375 (h!22776 Regex!4389) (t!143866 List!17445)) )
))
(declare-datatypes ((Context!1642 0))(
  ( (Context!1643 (exprs!1321 List!17445)) )
))
(declare-fun prefixMatchZipperSequence!405 ((InoxSet Context!1642) BalanceConc!11484 Int) Bool)

(declare-fun focus!127 (Regex!4389) (InoxSet Context!1642))

(assert (=> d!469911 (= lt!553704 (prefixMatchZipperSequence!405 (focus!127 (rulesRegex!451 thiss!17113 rules!1846)) (++!4513 (charsOf!1710 (h!22772 tokens!457)) (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))) 0))))

(declare-fun lt!553709 () Unit!27015)

(declare-fun lt!553707 () Unit!27015)

(assert (=> d!469911 (= lt!553709 lt!553707)))

(declare-fun lt!553703 () List!17439)

(declare-fun lt!553702 () (InoxSet Context!1642))

(declare-fun prefixMatchZipper!106 ((InoxSet Context!1642) List!17439) Bool)

(assert (=> d!469911 (= (prefixMatch!330 (rulesRegex!451 thiss!17113 rules!1846) lt!553703) (prefixMatchZipper!106 lt!553702 lt!553703))))

(declare-datatypes ((List!17446 0))(
  ( (Nil!17376) (Cons!17376 (h!22777 Context!1642) (t!143867 List!17446)) )
))
(declare-fun lt!553705 () List!17446)

(declare-fun prefixMatchZipperRegexEquiv!106 ((InoxSet Context!1642) List!17446 Regex!4389 List!17439) Unit!27015)

(assert (=> d!469911 (= lt!553707 (prefixMatchZipperRegexEquiv!106 lt!553702 lt!553705 (rulesRegex!451 thiss!17113 rules!1846) lt!553703))))

(assert (=> d!469911 (= lt!553703 (list!6715 (++!4513 (charsOf!1710 (h!22772 tokens!457)) (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0)))))))

(declare-fun toList!867 ((InoxSet Context!1642)) List!17446)

(assert (=> d!469911 (= lt!553705 (toList!867 (focus!127 (rulesRegex!451 thiss!17113 rules!1846))))))

(assert (=> d!469911 (= lt!553702 (focus!127 (rulesRegex!451 thiss!17113 rules!1846)))))

(declare-fun lt!553706 () Unit!27015)

(declare-fun lt!553711 () Unit!27015)

(assert (=> d!469911 (= lt!553706 lt!553711)))

(declare-fun lt!553708 () (InoxSet Context!1642))

(declare-fun lt!553710 () Int)

(declare-fun dropList!512 (BalanceConc!11484 Int) List!17439)

(assert (=> d!469911 (= (prefixMatchZipper!106 lt!553708 (dropList!512 (++!4513 (charsOf!1710 (h!22772 tokens!457)) (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))) lt!553710)) (prefixMatchZipperSequence!405 lt!553708 (++!4513 (charsOf!1710 (h!22772 tokens!457)) (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))) lt!553710))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!106 ((InoxSet Context!1642) BalanceConc!11484 Int) Unit!27015)

(assert (=> d!469911 (= lt!553711 (lemmaprefixMatchZipperSequenceEquivalent!106 lt!553708 (++!4513 (charsOf!1710 (h!22772 tokens!457)) (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))) lt!553710))))

(assert (=> d!469911 (= lt!553710 0)))

(assert (=> d!469911 (= lt!553708 (focus!127 (rulesRegex!451 thiss!17113 rules!1846)))))

(assert (=> d!469911 (validRegex!1731 (rulesRegex!451 thiss!17113 rules!1846))))

(assert (=> d!469911 (= (prefixMatchZipperSequence!404 (rulesRegex!451 thiss!17113 rules!1846) (++!4513 (charsOf!1710 (h!22772 tokens!457)) (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0)))) lt!553704)))

(declare-fun bs!390977 () Bool)

(assert (= bs!390977 d!469911))

(declare-fun m!1865481 () Bool)

(assert (=> bs!390977 m!1865481))

(assert (=> bs!390977 m!1863341))

(declare-fun m!1865483 () Bool)

(assert (=> bs!390977 m!1865483))

(assert (=> bs!390977 m!1863341))

(declare-fun m!1865485 () Bool)

(assert (=> bs!390977 m!1865485))

(assert (=> bs!390977 m!1863341))

(declare-fun m!1865487 () Bool)

(assert (=> bs!390977 m!1865487))

(assert (=> bs!390977 m!1863341))

(declare-fun m!1865489 () Bool)

(assert (=> bs!390977 m!1865489))

(assert (=> bs!390977 m!1865489))

(declare-fun m!1865491 () Bool)

(assert (=> bs!390977 m!1865491))

(declare-fun m!1865493 () Bool)

(assert (=> bs!390977 m!1865493))

(assert (=> bs!390977 m!1863339))

(assert (=> bs!390977 m!1865481))

(assert (=> bs!390977 m!1865481))

(declare-fun m!1865495 () Bool)

(assert (=> bs!390977 m!1865495))

(assert (=> bs!390977 m!1863341))

(declare-fun m!1865497 () Bool)

(assert (=> bs!390977 m!1865497))

(assert (=> bs!390977 m!1863339))

(declare-fun m!1865499 () Bool)

(assert (=> bs!390977 m!1865499))

(assert (=> bs!390977 m!1863339))

(assert (=> bs!390977 m!1865487))

(declare-fun m!1865501 () Bool)

(assert (=> bs!390977 m!1865501))

(assert (=> bs!390977 m!1863339))

(declare-fun m!1865503 () Bool)

(assert (=> bs!390977 m!1865503))

(assert (=> bs!390977 m!1863339))

(declare-fun m!1865505 () Bool)

(assert (=> bs!390977 m!1865505))

(assert (=> d!469355 d!469911))

(declare-fun b!1581195 () Bool)

(declare-fun res!704956 () Bool)

(declare-fun e!1015721 () Bool)

(assert (=> b!1581195 (=> (not res!704956) (not e!1015721))))

(declare-fun height!849 (Conc!5770) Int)

(declare-fun ++!4517 (Conc!5770 Conc!5770) Conc!5770)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1581195 (= res!704956 (>= (height!849 (++!4517 (c!256021 (charsOf!1710 (h!22772 tokens!457))) (c!256021 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))))) (max!0 (height!849 (c!256021 (charsOf!1710 (h!22772 tokens!457)))) (height!849 (c!256021 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0)))))))))

(declare-fun b!1581193 () Bool)

(declare-fun res!704957 () Bool)

(assert (=> b!1581193 (=> (not res!704957) (not e!1015721))))

(assert (=> b!1581193 (= res!704957 (isBalanced!1693 (++!4517 (c!256021 (charsOf!1710 (h!22772 tokens!457))) (c!256021 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))))))))

(declare-fun d!469913 () Bool)

(assert (=> d!469913 e!1015721))

(declare-fun res!704954 () Bool)

(assert (=> d!469913 (=> (not res!704954) (not e!1015721))))

(declare-fun appendAssocInst!385 (Conc!5770 Conc!5770) Bool)

(assert (=> d!469913 (= res!704954 (appendAssocInst!385 (c!256021 (charsOf!1710 (h!22772 tokens!457))) (c!256021 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0)))))))

(declare-fun lt!553714 () BalanceConc!11484)

(assert (=> d!469913 (= lt!553714 (BalanceConc!11485 (++!4517 (c!256021 (charsOf!1710 (h!22772 tokens!457))) (c!256021 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))))))))

(assert (=> d!469913 (= (++!4513 (charsOf!1710 (h!22772 tokens!457)) (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))) lt!553714)))

(declare-fun b!1581194 () Bool)

(declare-fun res!704955 () Bool)

(assert (=> b!1581194 (=> (not res!704955) (not e!1015721))))

(assert (=> b!1581194 (= res!704955 (<= (height!849 (++!4517 (c!256021 (charsOf!1710 (h!22772 tokens!457))) (c!256021 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))))) (+ (max!0 (height!849 (c!256021 (charsOf!1710 (h!22772 tokens!457)))) (height!849 (c!256021 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))))) 1)))))

(declare-fun b!1581196 () Bool)

(assert (=> b!1581196 (= e!1015721 (= (list!6715 lt!553714) (++!4511 (list!6715 (charsOf!1710 (h!22772 tokens!457))) (list!6715 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0))))))))

(assert (= (and d!469913 res!704954) b!1581193))

(assert (= (and b!1581193 res!704957) b!1581194))

(assert (= (and b!1581194 res!704955) b!1581195))

(assert (= (and b!1581195 res!704956) b!1581196))

(declare-fun m!1865507 () Bool)

(assert (=> b!1581194 m!1865507))

(declare-fun m!1865509 () Bool)

(assert (=> b!1581194 m!1865509))

(declare-fun m!1865511 () Bool)

(assert (=> b!1581194 m!1865511))

(assert (=> b!1581194 m!1865511))

(declare-fun m!1865513 () Bool)

(assert (=> b!1581194 m!1865513))

(assert (=> b!1581194 m!1865509))

(assert (=> b!1581194 m!1865507))

(declare-fun m!1865515 () Bool)

(assert (=> b!1581194 m!1865515))

(declare-fun m!1865517 () Bool)

(assert (=> d!469913 m!1865517))

(assert (=> d!469913 m!1865511))

(assert (=> b!1581193 m!1865511))

(assert (=> b!1581193 m!1865511))

(declare-fun m!1865519 () Bool)

(assert (=> b!1581193 m!1865519))

(assert (=> b!1581195 m!1865507))

(assert (=> b!1581195 m!1865509))

(assert (=> b!1581195 m!1865511))

(assert (=> b!1581195 m!1865511))

(assert (=> b!1581195 m!1865513))

(assert (=> b!1581195 m!1865509))

(assert (=> b!1581195 m!1865507))

(assert (=> b!1581195 m!1865515))

(declare-fun m!1865521 () Bool)

(assert (=> b!1581196 m!1865521))

(assert (=> b!1581196 m!1863091))

(assert (=> b!1581196 m!1863101))

(assert (=> b!1581196 m!1863347))

(declare-fun m!1865523 () Bool)

(assert (=> b!1581196 m!1865523))

(assert (=> b!1581196 m!1863101))

(assert (=> b!1581196 m!1865523))

(declare-fun m!1865525 () Bool)

(assert (=> b!1581196 m!1865525))

(assert (=> d!469355 d!469913))

(assert (=> d!469355 d!469435))

(declare-fun d!469915 () Bool)

(declare-fun lt!553717 () C!8952)

(declare-fun apply!4216 (List!17439 Int) C!8952)

(assert (=> d!469915 (= lt!553717 (apply!4216 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) 0))))

(declare-fun apply!4217 (Conc!5770 Int) C!8952)

(assert (=> d!469915 (= lt!553717 (apply!4217 (c!256021 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) 0))))

(declare-fun e!1015724 () Bool)

(assert (=> d!469915 e!1015724))

(declare-fun res!704960 () Bool)

(assert (=> d!469915 (=> (not res!704960) (not e!1015724))))

(assert (=> d!469915 (= res!704960 (<= 0 0))))

(assert (=> d!469915 (= (apply!4210 (charsOf!1710 (h!22772 (t!143642 tokens!457))) 0) lt!553717)))

(declare-fun b!1581199 () Bool)

(assert (=> b!1581199 (= e!1015724 (< 0 (size!13974 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(assert (= (and d!469915 res!704960) b!1581199))

(assert (=> d!469915 m!1863149))

(assert (=> d!469915 m!1863613))

(assert (=> d!469915 m!1863613))

(declare-fun m!1865527 () Bool)

(assert (=> d!469915 m!1865527))

(declare-fun m!1865529 () Bool)

(assert (=> d!469915 m!1865529))

(assert (=> b!1581199 m!1863149))

(assert (=> b!1581199 m!1863593))

(assert (=> d!469355 d!469915))

(declare-fun d!469917 () Bool)

(declare-fun lt!553720 () Unit!27015)

(declare-fun lemma!191 (List!17442 LexerInterface!2690 List!17442) Unit!27015)

(assert (=> d!469917 (= lt!553720 (lemma!191 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!66474 () Int)

(declare-fun generalisedUnion!199 (List!17445) Regex!4389)

(declare-fun map!3601 (List!17442 Int) List!17445)

(assert (=> d!469917 (= (rulesRegex!451 thiss!17113 rules!1846) (generalisedUnion!199 (map!3601 rules!1846 lambda!66474)))))

(declare-fun bs!390978 () Bool)

(assert (= bs!390978 d!469917))

(declare-fun m!1865531 () Bool)

(assert (=> bs!390978 m!1865531))

(declare-fun m!1865533 () Bool)

(assert (=> bs!390978 m!1865533))

(assert (=> bs!390978 m!1865533))

(declare-fun m!1865535 () Bool)

(assert (=> bs!390978 m!1865535))

(assert (=> d!469355 d!469917))

(assert (=> d!469355 d!469413))

(assert (=> b!1580286 d!469505))

(declare-fun b!1581202 () Bool)

(declare-fun res!704962 () Bool)

(declare-fun e!1015725 () Bool)

(assert (=> b!1581202 (=> (not res!704962) (not e!1015725))))

(declare-fun lt!553721 () List!17439)

(assert (=> b!1581202 (= res!704962 (= (size!13973 lt!553721) (+ (size!13973 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))) (size!13973 (_2!9822 (get!4964 lt!552968))))))))

(declare-fun b!1581201 () Bool)

(declare-fun e!1015726 () List!17439)

(assert (=> b!1581201 (= e!1015726 (Cons!17369 (h!22770 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))) (++!4511 (t!143640 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))) (_2!9822 (get!4964 lt!552968)))))))

(declare-fun d!469919 () Bool)

(assert (=> d!469919 e!1015725))

(declare-fun res!704961 () Bool)

(assert (=> d!469919 (=> (not res!704961) (not e!1015725))))

(assert (=> d!469919 (= res!704961 (= (content!2385 lt!553721) ((_ map or) (content!2385 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))) (content!2385 (_2!9822 (get!4964 lt!552968))))))))

(assert (=> d!469919 (= lt!553721 e!1015726)))

(declare-fun c!256259 () Bool)

(assert (=> d!469919 (= c!256259 ((_ is Nil!17369) (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968))))))))

(assert (=> d!469919 (= (++!4511 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968)))) (_2!9822 (get!4964 lt!552968))) lt!553721)))

(declare-fun b!1581203 () Bool)

(assert (=> b!1581203 (= e!1015725 (or (not (= (_2!9822 (get!4964 lt!552968)) Nil!17369)) (= lt!553721 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!552968)))))))))

(declare-fun b!1581200 () Bool)

(assert (=> b!1581200 (= e!1015726 (_2!9822 (get!4964 lt!552968)))))

(assert (= (and d!469919 c!256259) b!1581200))

(assert (= (and d!469919 (not c!256259)) b!1581201))

(assert (= (and d!469919 res!704961) b!1581202))

(assert (= (and b!1581202 res!704962) b!1581203))

(declare-fun m!1865537 () Bool)

(assert (=> b!1581202 m!1865537))

(assert (=> b!1581202 m!1863383))

(declare-fun m!1865539 () Bool)

(assert (=> b!1581202 m!1865539))

(assert (=> b!1581202 m!1863407))

(declare-fun m!1865541 () Bool)

(assert (=> b!1581201 m!1865541))

(declare-fun m!1865543 () Bool)

(assert (=> d!469919 m!1865543))

(assert (=> d!469919 m!1863383))

(declare-fun m!1865545 () Bool)

(assert (=> d!469919 m!1865545))

(declare-fun m!1865547 () Bool)

(assert (=> d!469919 m!1865547))

(assert (=> b!1580181 d!469919))

(assert (=> b!1580181 d!469529))

(assert (=> b!1580181 d!469531))

(assert (=> b!1580181 d!469527))

(declare-fun d!469921 () Bool)

(declare-fun lt!553722 () Int)

(assert (=> d!469921 (>= lt!553722 0)))

(declare-fun e!1015727 () Int)

(assert (=> d!469921 (= lt!553722 e!1015727)))

(declare-fun c!256260 () Bool)

(assert (=> d!469921 (= c!256260 ((_ is Nil!17369) (originalCharacters!3875 (h!22772 tokens!457))))))

(assert (=> d!469921 (= (size!13973 (originalCharacters!3875 (h!22772 tokens!457))) lt!553722)))

(declare-fun b!1581204 () Bool)

(assert (=> b!1581204 (= e!1015727 0)))

(declare-fun b!1581205 () Bool)

(assert (=> b!1581205 (= e!1015727 (+ 1 (size!13973 (t!143640 (originalCharacters!3875 (h!22772 tokens!457))))))))

(assert (= (and d!469921 c!256260) b!1581204))

(assert (= (and d!469921 (not c!256260)) b!1581205))

(declare-fun m!1865549 () Bool)

(assert (=> b!1581205 m!1865549))

(assert (=> b!1580481 d!469921))

(declare-fun d!469923 () Bool)

(assert (=> d!469923 (= (isDefined!2495 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938)))) (not (isEmpty!10390 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938))))))))

(declare-fun bs!390979 () Bool)

(assert (= bs!390979 d!469923))

(assert (=> bs!390979 m!1863291))

(declare-fun m!1865551 () Bool)

(assert (=> bs!390979 m!1865551))

(assert (=> d!469345 d!469923))

(declare-fun d!469925 () Bool)

(assert (=> d!469925 (= (get!4964 (maxPrefix!1254 thiss!17113 rules!1846 lt!552801)) (v!23950 (maxPrefix!1254 thiss!17113 rules!1846 lt!552801)))))

(assert (=> d!469345 d!469925))

(assert (=> d!469345 d!469627))

(assert (=> d!469345 d!469417))

(declare-fun d!469927 () Bool)

(assert (=> d!469927 (= (head!3187 (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))) (h!22772 (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 lt!552801))))))))

(assert (=> d!469345 d!469927))

(declare-fun b!1581206 () Bool)

(declare-fun e!1015729 () Bool)

(declare-fun e!1015728 () Bool)

(assert (=> b!1581206 (= e!1015729 e!1015728)))

(declare-fun res!704966 () Bool)

(assert (=> b!1581206 (=> (not res!704966) (not e!1015728))))

(declare-fun lt!553727 () Option!3114)

(assert (=> b!1581206 (= res!704966 (isDefined!2493 lt!553727))))

(declare-fun b!1581207 () Bool)

(declare-fun e!1015730 () Option!3114)

(declare-fun lt!553725 () Option!3114)

(declare-fun lt!553724 () Option!3114)

(assert (=> b!1581207 (= e!1015730 (ite (and ((_ is None!3113) lt!553725) ((_ is None!3113) lt!553724)) None!3113 (ite ((_ is None!3113) lt!553724) lt!553725 (ite ((_ is None!3113) lt!553725) lt!553724 (ite (>= (size!13968 (_1!9822 (v!23950 lt!553725))) (size!13968 (_1!9822 (v!23950 lt!553724)))) lt!553725 lt!553724)))))))

(declare-fun call!102709 () Option!3114)

(assert (=> b!1581207 (= lt!553725 call!102709)))

(assert (=> b!1581207 (= lt!553724 (maxPrefix!1254 thiss!17113 (t!143643 rules!1846) lt!552801))))

(declare-fun b!1581208 () Bool)

(declare-fun res!704969 () Bool)

(assert (=> b!1581208 (=> (not res!704969) (not e!1015728))))

(assert (=> b!1581208 (= res!704969 (matchR!1910 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!553727)))) (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553727))))))))

(declare-fun b!1581209 () Bool)

(assert (=> b!1581209 (= e!1015728 (contains!3026 rules!1846 (rule!4857 (_1!9822 (get!4964 lt!553727)))))))

(declare-fun b!1581210 () Bool)

(declare-fun res!704967 () Bool)

(assert (=> b!1581210 (=> (not res!704967) (not e!1015728))))

(assert (=> b!1581210 (= res!704967 (< (size!13973 (_2!9822 (get!4964 lt!553727))) (size!13973 lt!552801)))))

(declare-fun b!1581211 () Bool)

(assert (=> b!1581211 (= e!1015730 call!102709)))

(declare-fun b!1581212 () Bool)

(declare-fun res!704965 () Bool)

(assert (=> b!1581212 (=> (not res!704965) (not e!1015728))))

(assert (=> b!1581212 (= res!704965 (= (value!96911 (_1!9822 (get!4964 lt!553727))) (apply!4212 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!553727)))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!553727)))))))))

(declare-fun b!1581213 () Bool)

(declare-fun res!704968 () Bool)

(assert (=> b!1581213 (=> (not res!704968) (not e!1015728))))

(assert (=> b!1581213 (= res!704968 (= (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553727)))) (originalCharacters!3875 (_1!9822 (get!4964 lt!553727)))))))

(declare-fun b!1581214 () Bool)

(declare-fun res!704964 () Bool)

(assert (=> b!1581214 (=> (not res!704964) (not e!1015728))))

(assert (=> b!1581214 (= res!704964 (= (++!4511 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553727)))) (_2!9822 (get!4964 lt!553727))) lt!552801))))

(declare-fun bm!102704 () Bool)

(assert (=> bm!102704 (= call!102709 (maxPrefixOneRule!725 thiss!17113 (h!22773 rules!1846) lt!552801))))

(declare-fun d!469929 () Bool)

(assert (=> d!469929 e!1015729))

(declare-fun res!704963 () Bool)

(assert (=> d!469929 (=> res!704963 e!1015729)))

(assert (=> d!469929 (= res!704963 (isEmpty!10382 lt!553727))))

(assert (=> d!469929 (= lt!553727 e!1015730)))

(declare-fun c!256261 () Bool)

(assert (=> d!469929 (= c!256261 (and ((_ is Cons!17372) rules!1846) ((_ is Nil!17372) (t!143643 rules!1846))))))

(declare-fun lt!553723 () Unit!27015)

(declare-fun lt!553726 () Unit!27015)

(assert (=> d!469929 (= lt!553723 lt!553726)))

(assert (=> d!469929 (isPrefix!1321 lt!552801 lt!552801)))

(assert (=> d!469929 (= lt!553726 (lemmaIsPrefixRefl!909 lt!552801 lt!552801))))

(assert (=> d!469929 (rulesValidInductive!911 thiss!17113 rules!1846)))

(assert (=> d!469929 (= (maxPrefix!1254 thiss!17113 rules!1846 lt!552801) lt!553727)))

(assert (= (and d!469929 c!256261) b!1581211))

(assert (= (and d!469929 (not c!256261)) b!1581207))

(assert (= (or b!1581211 b!1581207) bm!102704))

(assert (= (and d!469929 (not res!704963)) b!1581206))

(assert (= (and b!1581206 res!704966) b!1581213))

(assert (= (and b!1581213 res!704968) b!1581210))

(assert (= (and b!1581210 res!704967) b!1581214))

(assert (= (and b!1581214 res!704964) b!1581212))

(assert (= (and b!1581212 res!704965) b!1581208))

(assert (= (and b!1581208 res!704969) b!1581209))

(declare-fun m!1865553 () Bool)

(assert (=> b!1581207 m!1865553))

(declare-fun m!1865555 () Bool)

(assert (=> b!1581213 m!1865555))

(declare-fun m!1865557 () Bool)

(assert (=> b!1581213 m!1865557))

(assert (=> b!1581213 m!1865557))

(declare-fun m!1865559 () Bool)

(assert (=> b!1581213 m!1865559))

(declare-fun m!1865561 () Bool)

(assert (=> d!469929 m!1865561))

(declare-fun m!1865563 () Bool)

(assert (=> d!469929 m!1865563))

(declare-fun m!1865565 () Bool)

(assert (=> d!469929 m!1865565))

(assert (=> d!469929 m!1863391))

(assert (=> b!1581209 m!1865555))

(declare-fun m!1865567 () Bool)

(assert (=> b!1581209 m!1865567))

(declare-fun m!1865569 () Bool)

(assert (=> bm!102704 m!1865569))

(assert (=> b!1581212 m!1865555))

(declare-fun m!1865571 () Bool)

(assert (=> b!1581212 m!1865571))

(assert (=> b!1581212 m!1865571))

(declare-fun m!1865573 () Bool)

(assert (=> b!1581212 m!1865573))

(assert (=> b!1581214 m!1865555))

(assert (=> b!1581214 m!1865557))

(assert (=> b!1581214 m!1865557))

(assert (=> b!1581214 m!1865559))

(assert (=> b!1581214 m!1865559))

(declare-fun m!1865575 () Bool)

(assert (=> b!1581214 m!1865575))

(declare-fun m!1865577 () Bool)

(assert (=> b!1581206 m!1865577))

(assert (=> b!1581208 m!1865555))

(assert (=> b!1581208 m!1865557))

(assert (=> b!1581208 m!1865557))

(assert (=> b!1581208 m!1865559))

(assert (=> b!1581208 m!1865559))

(declare-fun m!1865579 () Bool)

(assert (=> b!1581208 m!1865579))

(assert (=> b!1581210 m!1865555))

(declare-fun m!1865581 () Bool)

(assert (=> b!1581210 m!1865581))

(assert (=> b!1581210 m!1863679))

(assert (=> d!469345 d!469929))

(assert (=> d!469345 d!469737))

(assert (=> d!469345 d!469341))

(declare-fun d!469931 () Bool)

(assert (=> d!469931 (= (isEmpty!10382 (maxPrefix!1254 thiss!17113 rules!1846 (++!4511 lt!552801 lt!552795))) (not ((_ is Some!3113) (maxPrefix!1254 thiss!17113 rules!1846 (++!4511 lt!552801 lt!552795)))))))

(assert (=> d!469345 d!469931))

(declare-fun d!469933 () Bool)

(declare-fun e!1015733 () Bool)

(assert (=> d!469933 e!1015733))

(declare-fun res!704974 () Bool)

(assert (=> d!469933 (=> (not res!704974) (not e!1015733))))

(assert (=> d!469933 (= res!704974 (isDefined!2495 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938)))))))

(declare-fun lt!553730 () Unit!27015)

(declare-fun choose!9454 (LexerInterface!2690 List!17442 List!17439 Token!5688) Unit!27015)

(assert (=> d!469933 (= lt!553730 (choose!9454 thiss!17113 rules!1846 lt!552801 lt!552938))))

(assert (=> d!469933 (rulesInvariant!2359 thiss!17113 rules!1846)))

(assert (=> d!469933 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!234 thiss!17113 rules!1846 lt!552801 lt!552938) lt!553730)))

(declare-fun b!1581219 () Bool)

(declare-fun res!704975 () Bool)

(assert (=> b!1581219 (=> (not res!704975) (not e!1015733))))

(assert (=> b!1581219 (= res!704975 (matchR!1910 (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938))))) (list!6715 (charsOf!1710 lt!552938))))))

(declare-fun b!1581220 () Bool)

(assert (=> b!1581220 (= e!1015733 (= (rule!4857 lt!552938) (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!552938))))))))

(assert (= (and d!469933 res!704974) b!1581219))

(assert (= (and b!1581219 res!704975) b!1581220))

(assert (=> d!469933 m!1863291))

(assert (=> d!469933 m!1863291))

(assert (=> d!469933 m!1863323))

(declare-fun m!1865583 () Bool)

(assert (=> d!469933 m!1865583))

(assert (=> d!469933 m!1863079))

(assert (=> b!1581219 m!1863297))

(assert (=> b!1581219 m!1863301))

(assert (=> b!1581219 m!1863301))

(assert (=> b!1581219 m!1863309))

(assert (=> b!1581219 m!1863291))

(assert (=> b!1581219 m!1863291))

(assert (=> b!1581219 m!1863293))

(assert (=> b!1581219 m!1863297))

(assert (=> b!1581220 m!1863291))

(assert (=> b!1581220 m!1863291))

(assert (=> b!1581220 m!1863293))

(assert (=> d!469345 d!469933))

(declare-fun b!1581223 () Bool)

(declare-fun res!704977 () Bool)

(declare-fun e!1015734 () Bool)

(assert (=> b!1581223 (=> (not res!704977) (not e!1015734))))

(declare-fun lt!553731 () List!17439)

(assert (=> b!1581223 (= res!704977 (= (size!13973 lt!553731) (+ (size!13973 lt!552935) (size!13973 lt!552942))))))

(declare-fun b!1581222 () Bool)

(declare-fun e!1015735 () List!17439)

(assert (=> b!1581222 (= e!1015735 (Cons!17369 (h!22770 lt!552935) (++!4511 (t!143640 lt!552935) lt!552942)))))

(declare-fun d!469935 () Bool)

(assert (=> d!469935 e!1015734))

(declare-fun res!704976 () Bool)

(assert (=> d!469935 (=> (not res!704976) (not e!1015734))))

(assert (=> d!469935 (= res!704976 (= (content!2385 lt!553731) ((_ map or) (content!2385 lt!552935) (content!2385 lt!552942))))))

(assert (=> d!469935 (= lt!553731 e!1015735)))

(declare-fun c!256262 () Bool)

(assert (=> d!469935 (= c!256262 ((_ is Nil!17369) lt!552935))))

(assert (=> d!469935 (= (++!4511 lt!552935 lt!552942) lt!553731)))

(declare-fun b!1581224 () Bool)

(assert (=> b!1581224 (= e!1015734 (or (not (= lt!552942 Nil!17369)) (= lt!553731 lt!552935)))))

(declare-fun b!1581221 () Bool)

(assert (=> b!1581221 (= e!1015735 lt!552942)))

(assert (= (and d!469935 c!256262) b!1581221))

(assert (= (and d!469935 (not c!256262)) b!1581222))

(assert (= (and d!469935 res!704976) b!1581223))

(assert (= (and b!1581223 res!704977) b!1581224))

(declare-fun m!1865585 () Bool)

(assert (=> b!1581223 m!1865585))

(declare-fun m!1865587 () Bool)

(assert (=> b!1581223 m!1865587))

(declare-fun m!1865589 () Bool)

(assert (=> b!1581223 m!1865589))

(declare-fun m!1865591 () Bool)

(assert (=> b!1581222 m!1865591))

(declare-fun m!1865593 () Bool)

(assert (=> d!469935 m!1865593))

(declare-fun m!1865595 () Bool)

(assert (=> d!469935 m!1865595))

(declare-fun m!1865597 () Bool)

(assert (=> d!469935 m!1865597))

(assert (=> d!469345 d!469935))

(declare-fun d!469937 () Bool)

(assert (=> d!469937 (isPrefix!1321 lt!552935 (++!4511 lt!552935 lt!552942))))

(declare-fun lt!553732 () Unit!27015)

(assert (=> d!469937 (= lt!553732 (choose!9446 lt!552935 lt!552942))))

(assert (=> d!469937 (= (lemmaConcatTwoListThenFirstIsPrefix!846 lt!552935 lt!552942) lt!553732)))

(declare-fun bs!390980 () Bool)

(assert (= bs!390980 d!469937))

(assert (=> bs!390980 m!1863315))

(assert (=> bs!390980 m!1863315))

(assert (=> bs!390980 m!1863321))

(declare-fun m!1865599 () Bool)

(assert (=> bs!390980 m!1865599))

(assert (=> d!469345 d!469937))

(assert (=> d!469345 d!469669))

(declare-fun b!1581226 () Bool)

(declare-fun res!704978 () Bool)

(declare-fun e!1015738 () Bool)

(assert (=> b!1581226 (=> (not res!704978) (not e!1015738))))

(assert (=> b!1581226 (= res!704978 (= (head!3188 lt!552934) (head!3188 (++!4511 lt!552801 lt!552795))))))

(declare-fun b!1581225 () Bool)

(declare-fun e!1015737 () Bool)

(assert (=> b!1581225 (= e!1015737 e!1015738)))

(declare-fun res!704980 () Bool)

(assert (=> b!1581225 (=> (not res!704980) (not e!1015738))))

(assert (=> b!1581225 (= res!704980 (not ((_ is Nil!17369) (++!4511 lt!552801 lt!552795))))))

(declare-fun e!1015736 () Bool)

(declare-fun b!1581228 () Bool)

(assert (=> b!1581228 (= e!1015736 (>= (size!13973 (++!4511 lt!552801 lt!552795)) (size!13973 lt!552934)))))

(declare-fun b!1581227 () Bool)

(assert (=> b!1581227 (= e!1015738 (isPrefix!1321 (tail!2254 lt!552934) (tail!2254 (++!4511 lt!552801 lt!552795))))))

(declare-fun d!469939 () Bool)

(assert (=> d!469939 e!1015736))

(declare-fun res!704981 () Bool)

(assert (=> d!469939 (=> res!704981 e!1015736)))

(declare-fun lt!553733 () Bool)

(assert (=> d!469939 (= res!704981 (not lt!553733))))

(assert (=> d!469939 (= lt!553733 e!1015737)))

(declare-fun res!704979 () Bool)

(assert (=> d!469939 (=> res!704979 e!1015737)))

(assert (=> d!469939 (= res!704979 ((_ is Nil!17369) lt!552934))))

(assert (=> d!469939 (= (isPrefix!1321 lt!552934 (++!4511 lt!552801 lt!552795)) lt!553733)))

(assert (= (and d!469939 (not res!704979)) b!1581225))

(assert (= (and b!1581225 res!704980) b!1581226))

(assert (= (and b!1581226 res!704978) b!1581227))

(assert (= (and d!469939 (not res!704981)) b!1581228))

(declare-fun m!1865601 () Bool)

(assert (=> b!1581226 m!1865601))

(assert (=> b!1581226 m!1863107))

(assert (=> b!1581226 m!1864383))

(assert (=> b!1581228 m!1863107))

(assert (=> b!1581228 m!1864385))

(declare-fun m!1865603 () Bool)

(assert (=> b!1581228 m!1865603))

(declare-fun m!1865605 () Bool)

(assert (=> b!1581227 m!1865605))

(assert (=> b!1581227 m!1863107))

(assert (=> b!1581227 m!1864387))

(assert (=> b!1581227 m!1865605))

(assert (=> b!1581227 m!1864387))

(declare-fun m!1865607 () Bool)

(assert (=> b!1581227 m!1865607))

(assert (=> d!469345 d!469939))

(assert (=> d!469345 d!469381))

(declare-fun b!1581229 () Bool)

(declare-fun e!1015740 () Bool)

(declare-fun e!1015739 () Bool)

(assert (=> b!1581229 (= e!1015740 e!1015739)))

(declare-fun res!704985 () Bool)

(assert (=> b!1581229 (=> (not res!704985) (not e!1015739))))

(declare-fun lt!553738 () Option!3114)

(assert (=> b!1581229 (= res!704985 (isDefined!2493 lt!553738))))

(declare-fun b!1581230 () Bool)

(declare-fun e!1015741 () Option!3114)

(declare-fun lt!553736 () Option!3114)

(declare-fun lt!553735 () Option!3114)

(assert (=> b!1581230 (= e!1015741 (ite (and ((_ is None!3113) lt!553736) ((_ is None!3113) lt!553735)) None!3113 (ite ((_ is None!3113) lt!553735) lt!553736 (ite ((_ is None!3113) lt!553736) lt!553735 (ite (>= (size!13968 (_1!9822 (v!23950 lt!553736))) (size!13968 (_1!9822 (v!23950 lt!553735)))) lt!553736 lt!553735)))))))

(declare-fun call!102710 () Option!3114)

(assert (=> b!1581230 (= lt!553736 call!102710)))

(assert (=> b!1581230 (= lt!553735 (maxPrefix!1254 thiss!17113 (t!143643 rules!1846) (++!4511 lt!552801 lt!552795)))))

(declare-fun b!1581231 () Bool)

(declare-fun res!704988 () Bool)

(assert (=> b!1581231 (=> (not res!704988) (not e!1015739))))

(assert (=> b!1581231 (= res!704988 (matchR!1910 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!553738)))) (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553738))))))))

(declare-fun b!1581232 () Bool)

(assert (=> b!1581232 (= e!1015739 (contains!3026 rules!1846 (rule!4857 (_1!9822 (get!4964 lt!553738)))))))

(declare-fun b!1581233 () Bool)

(declare-fun res!704986 () Bool)

(assert (=> b!1581233 (=> (not res!704986) (not e!1015739))))

(assert (=> b!1581233 (= res!704986 (< (size!13973 (_2!9822 (get!4964 lt!553738))) (size!13973 (++!4511 lt!552801 lt!552795))))))

(declare-fun b!1581234 () Bool)

(assert (=> b!1581234 (= e!1015741 call!102710)))

(declare-fun b!1581235 () Bool)

(declare-fun res!704984 () Bool)

(assert (=> b!1581235 (=> (not res!704984) (not e!1015739))))

(assert (=> b!1581235 (= res!704984 (= (value!96911 (_1!9822 (get!4964 lt!553738))) (apply!4212 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!553738)))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!553738)))))))))

(declare-fun b!1581236 () Bool)

(declare-fun res!704987 () Bool)

(assert (=> b!1581236 (=> (not res!704987) (not e!1015739))))

(assert (=> b!1581236 (= res!704987 (= (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553738)))) (originalCharacters!3875 (_1!9822 (get!4964 lt!553738)))))))

(declare-fun b!1581237 () Bool)

(declare-fun res!704983 () Bool)

(assert (=> b!1581237 (=> (not res!704983) (not e!1015739))))

(assert (=> b!1581237 (= res!704983 (= (++!4511 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553738)))) (_2!9822 (get!4964 lt!553738))) (++!4511 lt!552801 lt!552795)))))

(declare-fun bm!102705 () Bool)

(assert (=> bm!102705 (= call!102710 (maxPrefixOneRule!725 thiss!17113 (h!22773 rules!1846) (++!4511 lt!552801 lt!552795)))))

(declare-fun d!469941 () Bool)

(assert (=> d!469941 e!1015740))

(declare-fun res!704982 () Bool)

(assert (=> d!469941 (=> res!704982 e!1015740)))

(assert (=> d!469941 (= res!704982 (isEmpty!10382 lt!553738))))

(assert (=> d!469941 (= lt!553738 e!1015741)))

(declare-fun c!256263 () Bool)

(assert (=> d!469941 (= c!256263 (and ((_ is Cons!17372) rules!1846) ((_ is Nil!17372) (t!143643 rules!1846))))))

(declare-fun lt!553734 () Unit!27015)

(declare-fun lt!553737 () Unit!27015)

(assert (=> d!469941 (= lt!553734 lt!553737)))

(assert (=> d!469941 (isPrefix!1321 (++!4511 lt!552801 lt!552795) (++!4511 lt!552801 lt!552795))))

(assert (=> d!469941 (= lt!553737 (lemmaIsPrefixRefl!909 (++!4511 lt!552801 lt!552795) (++!4511 lt!552801 lt!552795)))))

(assert (=> d!469941 (rulesValidInductive!911 thiss!17113 rules!1846)))

(assert (=> d!469941 (= (maxPrefix!1254 thiss!17113 rules!1846 (++!4511 lt!552801 lt!552795)) lt!553738)))

(assert (= (and d!469941 c!256263) b!1581234))

(assert (= (and d!469941 (not c!256263)) b!1581230))

(assert (= (or b!1581234 b!1581230) bm!102705))

(assert (= (and d!469941 (not res!704982)) b!1581229))

(assert (= (and b!1581229 res!704985) b!1581236))

(assert (= (and b!1581236 res!704987) b!1581233))

(assert (= (and b!1581233 res!704986) b!1581237))

(assert (= (and b!1581237 res!704983) b!1581235))

(assert (= (and b!1581235 res!704984) b!1581231))

(assert (= (and b!1581231 res!704988) b!1581232))

(assert (=> b!1581230 m!1863107))

(declare-fun m!1865609 () Bool)

(assert (=> b!1581230 m!1865609))

(declare-fun m!1865611 () Bool)

(assert (=> b!1581236 m!1865611))

(declare-fun m!1865613 () Bool)

(assert (=> b!1581236 m!1865613))

(assert (=> b!1581236 m!1865613))

(declare-fun m!1865615 () Bool)

(assert (=> b!1581236 m!1865615))

(declare-fun m!1865617 () Bool)

(assert (=> d!469941 m!1865617))

(assert (=> d!469941 m!1863107))

(assert (=> d!469941 m!1863107))

(declare-fun m!1865619 () Bool)

(assert (=> d!469941 m!1865619))

(assert (=> d!469941 m!1863107))

(assert (=> d!469941 m!1863107))

(declare-fun m!1865621 () Bool)

(assert (=> d!469941 m!1865621))

(assert (=> d!469941 m!1863391))

(assert (=> b!1581232 m!1865611))

(declare-fun m!1865623 () Bool)

(assert (=> b!1581232 m!1865623))

(assert (=> bm!102705 m!1863107))

(declare-fun m!1865625 () Bool)

(assert (=> bm!102705 m!1865625))

(assert (=> b!1581235 m!1865611))

(declare-fun m!1865627 () Bool)

(assert (=> b!1581235 m!1865627))

(assert (=> b!1581235 m!1865627))

(declare-fun m!1865629 () Bool)

(assert (=> b!1581235 m!1865629))

(assert (=> b!1581237 m!1865611))

(assert (=> b!1581237 m!1865613))

(assert (=> b!1581237 m!1865613))

(assert (=> b!1581237 m!1865615))

(assert (=> b!1581237 m!1865615))

(declare-fun m!1865631 () Bool)

(assert (=> b!1581237 m!1865631))

(declare-fun m!1865633 () Bool)

(assert (=> b!1581229 m!1865633))

(assert (=> b!1581231 m!1865611))

(assert (=> b!1581231 m!1865613))

(assert (=> b!1581231 m!1865613))

(assert (=> b!1581231 m!1865615))

(assert (=> b!1581231 m!1865615))

(declare-fun m!1865635 () Bool)

(assert (=> b!1581231 m!1865635))

(assert (=> b!1581233 m!1865611))

(declare-fun m!1865637 () Bool)

(assert (=> b!1581233 m!1865637))

(assert (=> b!1581233 m!1863107))

(assert (=> b!1581233 m!1864385))

(assert (=> d!469345 d!469941))

(declare-fun d!469943 () Bool)

(assert (=> d!469943 (isPrefix!1321 lt!552934 (++!4511 lt!552801 lt!552795))))

(declare-fun lt!553741 () Unit!27015)

(declare-fun choose!9455 (List!17439 List!17439 List!17439) Unit!27015)

(assert (=> d!469943 (= lt!553741 (choose!9455 lt!552934 lt!552801 lt!552795))))

(assert (=> d!469943 (isPrefix!1321 lt!552934 lt!552801)))

(assert (=> d!469943 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!120 lt!552934 lt!552801 lt!552795) lt!553741)))

(declare-fun bs!390981 () Bool)

(assert (= bs!390981 d!469943))

(assert (=> bs!390981 m!1863107))

(assert (=> bs!390981 m!1863107))

(assert (=> bs!390981 m!1863319))

(declare-fun m!1865639 () Bool)

(assert (=> bs!390981 m!1865639))

(declare-fun m!1865641 () Bool)

(assert (=> bs!390981 m!1865641))

(assert (=> d!469345 d!469943))

(assert (=> d!469345 d!469739))

(declare-fun d!469945 () Bool)

(assert (=> d!469945 (= (isDefined!2493 (maxPrefix!1254 thiss!17113 rules!1846 (++!4511 lt!552801 lt!552795))) (not (isEmpty!10382 (maxPrefix!1254 thiss!17113 rules!1846 (++!4511 lt!552801 lt!552795)))))))

(declare-fun bs!390982 () Bool)

(assert (= bs!390982 d!469945))

(assert (=> bs!390982 m!1863329))

(assert (=> bs!390982 m!1863337))

(assert (=> d!469345 d!469945))

(declare-fun b!1581239 () Bool)

(declare-fun res!704989 () Bool)

(declare-fun e!1015744 () Bool)

(assert (=> b!1581239 (=> (not res!704989) (not e!1015744))))

(assert (=> b!1581239 (= res!704989 (= (head!3188 lt!552935) (head!3188 (++!4511 lt!552935 lt!552942))))))

(declare-fun b!1581238 () Bool)

(declare-fun e!1015743 () Bool)

(assert (=> b!1581238 (= e!1015743 e!1015744)))

(declare-fun res!704991 () Bool)

(assert (=> b!1581238 (=> (not res!704991) (not e!1015744))))

(assert (=> b!1581238 (= res!704991 (not ((_ is Nil!17369) (++!4511 lt!552935 lt!552942))))))

(declare-fun b!1581241 () Bool)

(declare-fun e!1015742 () Bool)

(assert (=> b!1581241 (= e!1015742 (>= (size!13973 (++!4511 lt!552935 lt!552942)) (size!13973 lt!552935)))))

(declare-fun b!1581240 () Bool)

(assert (=> b!1581240 (= e!1015744 (isPrefix!1321 (tail!2254 lt!552935) (tail!2254 (++!4511 lt!552935 lt!552942))))))

(declare-fun d!469947 () Bool)

(assert (=> d!469947 e!1015742))

(declare-fun res!704992 () Bool)

(assert (=> d!469947 (=> res!704992 e!1015742)))

(declare-fun lt!553742 () Bool)

(assert (=> d!469947 (= res!704992 (not lt!553742))))

(assert (=> d!469947 (= lt!553742 e!1015743)))

(declare-fun res!704990 () Bool)

(assert (=> d!469947 (=> res!704990 e!1015743)))

(assert (=> d!469947 (= res!704990 ((_ is Nil!17369) lt!552935))))

(assert (=> d!469947 (= (isPrefix!1321 lt!552935 (++!4511 lt!552935 lt!552942)) lt!553742)))

(assert (= (and d!469947 (not res!704990)) b!1581238))

(assert (= (and b!1581238 res!704991) b!1581239))

(assert (= (and b!1581239 res!704989) b!1581240))

(assert (= (and d!469947 (not res!704992)) b!1581241))

(declare-fun m!1865643 () Bool)

(assert (=> b!1581239 m!1865643))

(assert (=> b!1581239 m!1863315))

(declare-fun m!1865645 () Bool)

(assert (=> b!1581239 m!1865645))

(assert (=> b!1581241 m!1863315))

(declare-fun m!1865647 () Bool)

(assert (=> b!1581241 m!1865647))

(assert (=> b!1581241 m!1865587))

(declare-fun m!1865649 () Bool)

(assert (=> b!1581240 m!1865649))

(assert (=> b!1581240 m!1863315))

(declare-fun m!1865651 () Bool)

(assert (=> b!1581240 m!1865651))

(assert (=> b!1581240 m!1865649))

(assert (=> b!1581240 m!1865651))

(declare-fun m!1865653 () Bool)

(assert (=> b!1581240 m!1865653))

(assert (=> d!469345 d!469947))

(assert (=> d!469345 d!469399))

(declare-fun b!1581243 () Bool)

(declare-fun res!704993 () Bool)

(declare-fun e!1015747 () Bool)

(assert (=> b!1581243 (=> (not res!704993) (not e!1015747))))

(assert (=> b!1581243 (= res!704993 (= (head!3188 (tail!2254 lt!552801)) (head!3188 (tail!2254 lt!552805))))))

(declare-fun b!1581242 () Bool)

(declare-fun e!1015746 () Bool)

(assert (=> b!1581242 (= e!1015746 e!1015747)))

(declare-fun res!704995 () Bool)

(assert (=> b!1581242 (=> (not res!704995) (not e!1015747))))

(assert (=> b!1581242 (= res!704995 (not ((_ is Nil!17369) (tail!2254 lt!552805))))))

(declare-fun b!1581245 () Bool)

(declare-fun e!1015745 () Bool)

(assert (=> b!1581245 (= e!1015745 (>= (size!13973 (tail!2254 lt!552805)) (size!13973 (tail!2254 lt!552801))))))

(declare-fun b!1581244 () Bool)

(assert (=> b!1581244 (= e!1015747 (isPrefix!1321 (tail!2254 (tail!2254 lt!552801)) (tail!2254 (tail!2254 lt!552805))))))

(declare-fun d!469949 () Bool)

(assert (=> d!469949 e!1015745))

(declare-fun res!704996 () Bool)

(assert (=> d!469949 (=> res!704996 e!1015745)))

(declare-fun lt!553743 () Bool)

(assert (=> d!469949 (= res!704996 (not lt!553743))))

(assert (=> d!469949 (= lt!553743 e!1015746)))

(declare-fun res!704994 () Bool)

(assert (=> d!469949 (=> res!704994 e!1015746)))

(assert (=> d!469949 (= res!704994 ((_ is Nil!17369) (tail!2254 lt!552801)))))

(assert (=> d!469949 (= (isPrefix!1321 (tail!2254 lt!552801) (tail!2254 lt!552805)) lt!553743)))

(assert (= (and d!469949 (not res!704994)) b!1581242))

(assert (= (and b!1581242 res!704995) b!1581243))

(assert (= (and b!1581243 res!704993) b!1581244))

(assert (= (and d!469949 (not res!704996)) b!1581245))

(assert (=> b!1581243 m!1863957))

(declare-fun m!1865655 () Bool)

(assert (=> b!1581243 m!1865655))

(assert (=> b!1581243 m!1863959))

(declare-fun m!1865657 () Bool)

(assert (=> b!1581243 m!1865657))

(assert (=> b!1581245 m!1863959))

(declare-fun m!1865659 () Bool)

(assert (=> b!1581245 m!1865659))

(assert (=> b!1581245 m!1863957))

(declare-fun m!1865661 () Bool)

(assert (=> b!1581245 m!1865661))

(assert (=> b!1581244 m!1863957))

(declare-fun m!1865663 () Bool)

(assert (=> b!1581244 m!1865663))

(assert (=> b!1581244 m!1863959))

(declare-fun m!1865665 () Bool)

(assert (=> b!1581244 m!1865665))

(assert (=> b!1581244 m!1865663))

(assert (=> b!1581244 m!1865665))

(declare-fun m!1865667 () Bool)

(assert (=> b!1581244 m!1865667))

(assert (=> b!1580458 d!469949))

(declare-fun d!469951 () Bool)

(assert (=> d!469951 (= (tail!2254 lt!552801) (t!143640 lt!552801))))

(assert (=> b!1580458 d!469951))

(declare-fun d!469953 () Bool)

(assert (=> d!469953 (= (tail!2254 lt!552805) (t!143640 lt!552805))))

(assert (=> b!1580458 d!469953))

(declare-fun b!1581249 () Bool)

(declare-fun e!1015749 () List!17439)

(assert (=> b!1581249 (= e!1015749 (++!4511 (list!6719 (left!14034 (c!256021 lt!552793))) (list!6719 (right!14364 (c!256021 lt!552793)))))))

(declare-fun b!1581246 () Bool)

(declare-fun e!1015748 () List!17439)

(assert (=> b!1581246 (= e!1015748 Nil!17369)))

(declare-fun b!1581247 () Bool)

(assert (=> b!1581247 (= e!1015748 e!1015749)))

(declare-fun c!256265 () Bool)

(assert (=> b!1581247 (= c!256265 ((_ is Leaf!8521) (c!256021 lt!552793)))))

(declare-fun d!469955 () Bool)

(declare-fun c!256264 () Bool)

(assert (=> d!469955 (= c!256264 ((_ is Empty!5770) (c!256021 lt!552793)))))

(assert (=> d!469955 (= (list!6719 (c!256021 lt!552793)) e!1015748)))

(declare-fun b!1581248 () Bool)

(assert (=> b!1581248 (= e!1015749 (list!6721 (xs!8574 (c!256021 lt!552793))))))

(assert (= (and d!469955 c!256264) b!1581246))

(assert (= (and d!469955 (not c!256264)) b!1581247))

(assert (= (and b!1581247 c!256265) b!1581248))

(assert (= (and b!1581247 (not c!256265)) b!1581249))

(declare-fun m!1865669 () Bool)

(assert (=> b!1581249 m!1865669))

(declare-fun m!1865671 () Bool)

(assert (=> b!1581249 m!1865671))

(assert (=> b!1581249 m!1865669))

(assert (=> b!1581249 m!1865671))

(declare-fun m!1865673 () Bool)

(assert (=> b!1581249 m!1865673))

(declare-fun m!1865675 () Bool)

(assert (=> b!1581248 m!1865675))

(assert (=> d!469429 d!469955))

(declare-fun d!469957 () Bool)

(assert (=> d!469957 (= (isEmpty!10382 lt!552794) (not ((_ is Some!3113) lt!552794)))))

(assert (=> d!469343 d!469957))

(declare-fun d!469959 () Bool)

(declare-fun res!704997 () Bool)

(declare-fun e!1015750 () Bool)

(assert (=> d!469959 (=> res!704997 e!1015750)))

(assert (=> d!469959 (= res!704997 (or (not ((_ is Cons!17371) (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))))) (not ((_ is Cons!17371) (t!143642 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))))))))))

(assert (=> d!469959 (= (tokensListTwoByTwoPredicateSeparableList!383 thiss!17113 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))) rules!1846) e!1015750)))

(declare-fun b!1581250 () Bool)

(declare-fun e!1015751 () Bool)

(assert (=> b!1581250 (= e!1015750 e!1015751)))

(declare-fun res!704998 () Bool)

(assert (=> b!1581250 (=> (not res!704998) (not e!1015751))))

(assert (=> b!1581250 (= res!704998 (separableTokensPredicate!632 thiss!17113 (h!22772 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))))) rules!1846))))

(declare-fun lt!553748 () Unit!27015)

(declare-fun Unit!27059 () Unit!27015)

(assert (=> b!1581250 (= lt!553748 Unit!27059)))

(assert (=> b!1581250 (> (size!13974 (charsOf!1710 (h!22772 (t!143642 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))))))) 0)))

(declare-fun lt!553749 () Unit!27015)

(declare-fun Unit!27060 () Unit!27015)

(assert (=> b!1581250 (= lt!553749 Unit!27060)))

(assert (=> b!1581250 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 (t!143642 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))))))))

(declare-fun lt!553747 () Unit!27015)

(declare-fun Unit!27061 () Unit!27015)

(assert (=> b!1581250 (= lt!553747 Unit!27061)))

(assert (=> b!1581250 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457)))))))

(declare-fun lt!553744 () Unit!27015)

(declare-fun lt!553745 () Unit!27015)

(assert (=> b!1581250 (= lt!553744 lt!553745)))

(assert (=> b!1581250 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 (t!143642 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))))))))

(assert (=> b!1581250 (= lt!553745 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!514 thiss!17113 rules!1846 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457)))))))))

(declare-fun lt!553746 () Unit!27015)

(declare-fun lt!553750 () Unit!27015)

(assert (=> b!1581250 (= lt!553746 lt!553750)))

(assert (=> b!1581250 (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457)))))))

(assert (=> b!1581250 (= lt!553750 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!514 thiss!17113 rules!1846 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))) (h!22772 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))))))))

(declare-fun b!1581251 () Bool)

(assert (=> b!1581251 (= e!1015751 (tokensListTwoByTwoPredicateSeparableList!383 thiss!17113 (Cons!17371 (h!22772 (t!143642 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457))))) (t!143642 (t!143642 (Cons!17371 (h!22772 (t!143642 tokens!457)) (t!143642 (t!143642 tokens!457)))))) rules!1846))))

(assert (= (and d!469959 (not res!704997)) b!1581250))

(assert (= (and b!1581250 res!704998) b!1581251))

(declare-fun m!1865677 () Bool)

(assert (=> b!1581250 m!1865677))

(declare-fun m!1865679 () Bool)

(assert (=> b!1581250 m!1865679))

(declare-fun m!1865681 () Bool)

(assert (=> b!1581250 m!1865681))

(declare-fun m!1865683 () Bool)

(assert (=> b!1581250 m!1865683))

(assert (=> b!1581250 m!1865679))

(declare-fun m!1865685 () Bool)

(assert (=> b!1581250 m!1865685))

(declare-fun m!1865687 () Bool)

(assert (=> b!1581250 m!1865687))

(declare-fun m!1865689 () Bool)

(assert (=> b!1581250 m!1865689))

(declare-fun m!1865691 () Bool)

(assert (=> b!1581251 m!1865691))

(assert (=> b!1580259 d!469959))

(declare-fun d!469961 () Bool)

(assert (=> d!469961 (= (inv!22780 (tag!3327 (h!22773 (t!143643 rules!1846)))) (= (mod (str.len (value!96910 (tag!3327 (h!22773 (t!143643 rules!1846))))) 2) 0))))

(assert (=> b!1580514 d!469961))

(declare-fun d!469963 () Bool)

(declare-fun res!704999 () Bool)

(declare-fun e!1015752 () Bool)

(assert (=> d!469963 (=> (not res!704999) (not e!1015752))))

(assert (=> d!469963 (= res!704999 (semiInverseModEq!1150 (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toValue!4464 (transformation!3061 (h!22773 (t!143643 rules!1846))))))))

(assert (=> d!469963 (= (inv!22783 (transformation!3061 (h!22773 (t!143643 rules!1846)))) e!1015752)))

(declare-fun b!1581252 () Bool)

(assert (=> b!1581252 (= e!1015752 (equivClasses!1091 (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toValue!4464 (transformation!3061 (h!22773 (t!143643 rules!1846))))))))

(assert (= (and d!469963 res!704999) b!1581252))

(declare-fun m!1865693 () Bool)

(assert (=> d!469963 m!1865693))

(declare-fun m!1865695 () Bool)

(assert (=> b!1581252 m!1865695))

(assert (=> b!1580514 d!469963))

(declare-fun d!469965 () Bool)

(declare-fun lt!553751 () Int)

(assert (=> d!469965 (= lt!553751 (size!13973 (list!6715 (_2!9823 lt!553014))))))

(assert (=> d!469965 (= lt!553751 (size!13978 (c!256021 (_2!9823 lt!553014))))))

(assert (=> d!469965 (= (size!13974 (_2!9823 lt!553014)) lt!553751)))

(declare-fun bs!390983 () Bool)

(assert (= bs!390983 d!469965))

(assert (=> bs!390983 m!1863529))

(assert (=> bs!390983 m!1863529))

(declare-fun m!1865697 () Bool)

(assert (=> bs!390983 m!1865697))

(declare-fun m!1865699 () Bool)

(assert (=> bs!390983 m!1865699))

(assert (=> b!1580237 d!469965))

(declare-fun d!469967 () Bool)

(declare-fun lt!553752 () Int)

(assert (=> d!469967 (= lt!553752 (size!13973 (list!6715 (seqFromList!1872 lt!552801))))))

(assert (=> d!469967 (= lt!553752 (size!13978 (c!256021 (seqFromList!1872 lt!552801))))))

(assert (=> d!469967 (= (size!13974 (seqFromList!1872 lt!552801)) lt!553752)))

(declare-fun bs!390984 () Bool)

(assert (= bs!390984 d!469967))

(assert (=> bs!390984 m!1863067))

(assert (=> bs!390984 m!1863531))

(assert (=> bs!390984 m!1863531))

(assert (=> bs!390984 m!1864147))

(declare-fun m!1865701 () Bool)

(assert (=> bs!390984 m!1865701))

(assert (=> b!1580237 d!469967))

(declare-fun b!1581255 () Bool)

(declare-fun e!1015754 () List!17441)

(assert (=> b!1581255 (= e!1015754 (list!6722 (xs!8575 (c!256023 (_1!9823 lt!552797)))))))

(declare-fun b!1581254 () Bool)

(declare-fun e!1015753 () List!17441)

(assert (=> b!1581254 (= e!1015753 e!1015754)))

(declare-fun c!256267 () Bool)

(assert (=> b!1581254 (= c!256267 ((_ is Leaf!8522) (c!256023 (_1!9823 lt!552797))))))

(declare-fun d!469969 () Bool)

(declare-fun c!256266 () Bool)

(assert (=> d!469969 (= c!256266 ((_ is Empty!5771) (c!256023 (_1!9823 lt!552797))))))

(assert (=> d!469969 (= (list!6720 (c!256023 (_1!9823 lt!552797))) e!1015753)))

(declare-fun b!1581256 () Bool)

(assert (=> b!1581256 (= e!1015754 (++!4515 (list!6720 (left!14035 (c!256023 (_1!9823 lt!552797)))) (list!6720 (right!14365 (c!256023 (_1!9823 lt!552797))))))))

(declare-fun b!1581253 () Bool)

(assert (=> b!1581253 (= e!1015753 Nil!17371)))

(assert (= (and d!469969 c!256266) b!1581253))

(assert (= (and d!469969 (not c!256266)) b!1581254))

(assert (= (and b!1581254 c!256267) b!1581255))

(assert (= (and b!1581254 (not c!256267)) b!1581256))

(declare-fun m!1865703 () Bool)

(assert (=> b!1581255 m!1865703))

(declare-fun m!1865705 () Bool)

(assert (=> b!1581256 m!1865705))

(declare-fun m!1865707 () Bool)

(assert (=> b!1581256 m!1865707))

(assert (=> b!1581256 m!1865705))

(assert (=> b!1581256 m!1865707))

(declare-fun m!1865709 () Bool)

(assert (=> b!1581256 m!1865709))

(assert (=> d!469445 d!469969))

(declare-fun d!469971 () Bool)

(declare-fun e!1015783 () Bool)

(assert (=> d!469971 e!1015783))

(declare-fun res!705027 () Bool)

(assert (=> d!469971 (=> res!705027 e!1015783)))

(declare-fun lt!553870 () Option!3114)

(assert (=> d!469971 (= res!705027 (isEmpty!10382 lt!553870))))

(declare-fun e!1015782 () Option!3114)

(assert (=> d!469971 (= lt!553870 e!1015782)))

(declare-fun c!256282 () Bool)

(declare-datatypes ((tuple2!16852 0))(
  ( (tuple2!16853 (_1!9828 List!17439) (_2!9828 List!17439)) )
))
(declare-fun lt!553869 () tuple2!16852)

(assert (=> d!469971 (= c!256282 (isEmpty!10386 (_1!9828 lt!553869)))))

(declare-fun findLongestMatch!276 (Regex!4389 List!17439) tuple2!16852)

(assert (=> d!469971 (= lt!553869 (findLongestMatch!276 (regex!3061 (h!22773 rules!1846)) lt!552796))))

(assert (=> d!469971 (ruleValid!707 thiss!17113 (h!22773 rules!1846))))

(assert (=> d!469971 (= (maxPrefixOneRule!725 thiss!17113 (h!22773 rules!1846) lt!552796) lt!553870)))

(declare-fun b!1581307 () Bool)

(declare-fun e!1015784 () Bool)

(assert (=> b!1581307 (= e!1015784 (= (size!13968 (_1!9822 (get!4964 lt!553870))) (size!13973 (originalCharacters!3875 (_1!9822 (get!4964 lt!553870))))))))

(declare-fun b!1581308 () Bool)

(declare-fun res!705025 () Bool)

(assert (=> b!1581308 (=> (not res!705025) (not e!1015784))))

(assert (=> b!1581308 (= res!705025 (= (rule!4857 (_1!9822 (get!4964 lt!553870))) (h!22773 rules!1846)))))

(declare-fun b!1581309 () Bool)

(assert (=> b!1581309 (= e!1015782 (Some!3113 (tuple2!16841 (Token!5689 (apply!4212 (transformation!3061 (h!22773 rules!1846)) (seqFromList!1872 (_1!9828 lt!553869))) (h!22773 rules!1846) (size!13974 (seqFromList!1872 (_1!9828 lt!553869))) (_1!9828 lt!553869)) (_2!9828 lt!553869))))))

(declare-fun lt!553866 () Unit!27015)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!333 (Regex!4389 List!17439) Unit!27015)

(assert (=> b!1581309 (= lt!553866 (longestMatchIsAcceptedByMatchOrIsEmpty!333 (regex!3061 (h!22773 rules!1846)) lt!552796))))

(declare-fun res!705022 () Bool)

(declare-fun findLongestMatchInner!349 (Regex!4389 List!17439 Int List!17439 List!17439 Int) tuple2!16852)

(assert (=> b!1581309 (= res!705022 (isEmpty!10386 (_1!9828 (findLongestMatchInner!349 (regex!3061 (h!22773 rules!1846)) Nil!17369 (size!13973 Nil!17369) lt!552796 lt!552796 (size!13973 lt!552796)))))))

(declare-fun e!1015785 () Bool)

(assert (=> b!1581309 (=> res!705022 e!1015785)))

(assert (=> b!1581309 e!1015785))

(declare-fun lt!553868 () Unit!27015)

(assert (=> b!1581309 (= lt!553868 lt!553866)))

(declare-fun lt!553867 () Unit!27015)

(declare-fun lemmaSemiInverse!382 (TokenValueInjection!5962 BalanceConc!11484) Unit!27015)

(assert (=> b!1581309 (= lt!553867 (lemmaSemiInverse!382 (transformation!3061 (h!22773 rules!1846)) (seqFromList!1872 (_1!9828 lt!553869))))))

(declare-fun b!1581310 () Bool)

(declare-fun res!705024 () Bool)

(assert (=> b!1581310 (=> (not res!705024) (not e!1015784))))

(assert (=> b!1581310 (= res!705024 (< (size!13973 (_2!9822 (get!4964 lt!553870))) (size!13973 lt!552796)))))

(declare-fun b!1581311 () Bool)

(assert (=> b!1581311 (= e!1015783 e!1015784)))

(declare-fun res!705026 () Bool)

(assert (=> b!1581311 (=> (not res!705026) (not e!1015784))))

(assert (=> b!1581311 (= res!705026 (matchR!1910 (regex!3061 (h!22773 rules!1846)) (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553870))))))))

(declare-fun b!1581312 () Bool)

(declare-fun res!705028 () Bool)

(assert (=> b!1581312 (=> (not res!705028) (not e!1015784))))

(assert (=> b!1581312 (= res!705028 (= (++!4511 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553870)))) (_2!9822 (get!4964 lt!553870))) lt!552796))))

(declare-fun b!1581313 () Bool)

(assert (=> b!1581313 (= e!1015785 (matchR!1910 (regex!3061 (h!22773 rules!1846)) (_1!9828 (findLongestMatchInner!349 (regex!3061 (h!22773 rules!1846)) Nil!17369 (size!13973 Nil!17369) lt!552796 lt!552796 (size!13973 lt!552796)))))))

(declare-fun b!1581314 () Bool)

(declare-fun res!705023 () Bool)

(assert (=> b!1581314 (=> (not res!705023) (not e!1015784))))

(assert (=> b!1581314 (= res!705023 (= (value!96911 (_1!9822 (get!4964 lt!553870))) (apply!4212 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!553870)))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!553870)))))))))

(declare-fun b!1581315 () Bool)

(assert (=> b!1581315 (= e!1015782 None!3113)))

(assert (= (and d!469971 c!256282) b!1581315))

(assert (= (and d!469971 (not c!256282)) b!1581309))

(assert (= (and b!1581309 (not res!705022)) b!1581313))

(assert (= (and d!469971 (not res!705027)) b!1581311))

(assert (= (and b!1581311 res!705026) b!1581312))

(assert (= (and b!1581312 res!705028) b!1581310))

(assert (= (and b!1581310 res!705024) b!1581308))

(assert (= (and b!1581308 res!705025) b!1581314))

(assert (= (and b!1581314 res!705023) b!1581307))

(declare-fun m!1865855 () Bool)

(assert (=> b!1581311 m!1865855))

(declare-fun m!1865857 () Bool)

(assert (=> b!1581311 m!1865857))

(assert (=> b!1581311 m!1865857))

(declare-fun m!1865859 () Bool)

(assert (=> b!1581311 m!1865859))

(assert (=> b!1581311 m!1865859))

(declare-fun m!1865861 () Bool)

(assert (=> b!1581311 m!1865861))

(assert (=> b!1581308 m!1865855))

(assert (=> b!1581307 m!1865855))

(declare-fun m!1865863 () Bool)

(assert (=> b!1581307 m!1865863))

(declare-fun m!1865865 () Bool)

(assert (=> b!1581313 m!1865865))

(assert (=> b!1581313 m!1863409))

(assert (=> b!1581313 m!1865865))

(assert (=> b!1581313 m!1863409))

(declare-fun m!1865867 () Bool)

(assert (=> b!1581313 m!1865867))

(declare-fun m!1865869 () Bool)

(assert (=> b!1581313 m!1865869))

(assert (=> b!1581314 m!1865855))

(declare-fun m!1865871 () Bool)

(assert (=> b!1581314 m!1865871))

(assert (=> b!1581314 m!1865871))

(declare-fun m!1865873 () Bool)

(assert (=> b!1581314 m!1865873))

(assert (=> b!1581310 m!1865855))

(declare-fun m!1865875 () Bool)

(assert (=> b!1581310 m!1865875))

(assert (=> b!1581310 m!1863409))

(declare-fun m!1865877 () Bool)

(assert (=> b!1581309 m!1865877))

(declare-fun m!1865879 () Bool)

(assert (=> b!1581309 m!1865879))

(declare-fun m!1865881 () Bool)

(assert (=> b!1581309 m!1865881))

(assert (=> b!1581309 m!1865877))

(assert (=> b!1581309 m!1863409))

(assert (=> b!1581309 m!1865877))

(declare-fun m!1865883 () Bool)

(assert (=> b!1581309 m!1865883))

(assert (=> b!1581309 m!1865865))

(declare-fun m!1865885 () Bool)

(assert (=> b!1581309 m!1865885))

(assert (=> b!1581309 m!1865877))

(declare-fun m!1865887 () Bool)

(assert (=> b!1581309 m!1865887))

(assert (=> b!1581309 m!1865865))

(assert (=> b!1581309 m!1863409))

(assert (=> b!1581309 m!1865867))

(assert (=> b!1581312 m!1865855))

(assert (=> b!1581312 m!1865857))

(assert (=> b!1581312 m!1865857))

(assert (=> b!1581312 m!1865859))

(assert (=> b!1581312 m!1865859))

(declare-fun m!1865889 () Bool)

(assert (=> b!1581312 m!1865889))

(declare-fun m!1865891 () Bool)

(assert (=> d!469971 m!1865891))

(declare-fun m!1865893 () Bool)

(assert (=> d!469971 m!1865893))

(declare-fun m!1865895 () Bool)

(assert (=> d!469971 m!1865895))

(assert (=> d!469971 m!1864949))

(assert (=> bm!102684 d!469971))

(declare-fun lt!553878 () Bool)

(declare-fun d!469991 () Bool)

(assert (=> d!469991 (= lt!553878 (isEmpty!10386 (list!6715 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457))))))))))

(assert (=> d!469991 (= lt!553878 (isEmpty!10387 (c!256021 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457))))))))))

(assert (=> d!469991 (= (isEmpty!10377 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 tokens!457)))))) lt!553878)))

(declare-fun bs!390987 () Bool)

(assert (= bs!390987 d!469991))

(declare-fun m!1865897 () Bool)

(assert (=> bs!390987 m!1865897))

(assert (=> bs!390987 m!1865897))

(declare-fun m!1865899 () Bool)

(assert (=> bs!390987 m!1865899))

(declare-fun m!1865901 () Bool)

(assert (=> bs!390987 m!1865901))

(assert (=> b!1580447 d!469991))

(assert (=> b!1580447 d!469899))

(assert (=> b!1580447 d!469901))

(assert (=> b!1580447 d!469437))

(declare-fun d!469993 () Bool)

(declare-fun lt!553879 () Int)

(assert (=> d!469993 (= lt!553879 (size!13973 (list!6715 (_2!9823 lt!553125))))))

(assert (=> d!469993 (= lt!553879 (size!13978 (c!256021 (_2!9823 lt!553125))))))

(assert (=> d!469993 (= (size!13974 (_2!9823 lt!553125)) lt!553879)))

(declare-fun bs!390988 () Bool)

(assert (= bs!390988 d!469993))

(assert (=> bs!390988 m!1863695))

(assert (=> bs!390988 m!1863695))

(declare-fun m!1865903 () Bool)

(assert (=> bs!390988 m!1865903))

(declare-fun m!1865905 () Bool)

(assert (=> bs!390988 m!1865905))

(assert (=> b!1580327 d!469993))

(declare-fun d!469995 () Bool)

(declare-fun lt!553880 () Int)

(assert (=> d!469995 (= lt!553880 (size!13973 (list!6715 lt!552788)))))

(assert (=> d!469995 (= lt!553880 (size!13978 (c!256021 lt!552788)))))

(assert (=> d!469995 (= (size!13974 lt!552788) lt!553880)))

(declare-fun bs!390989 () Bool)

(assert (= bs!390989 d!469995))

(assert (=> bs!390989 m!1863099))

(assert (=> bs!390989 m!1863099))

(assert (=> bs!390989 m!1864059))

(declare-fun m!1865907 () Bool)

(assert (=> bs!390989 m!1865907))

(assert (=> b!1580327 d!469995))

(declare-fun d!469997 () Bool)

(declare-fun e!1015792 () Bool)

(assert (=> d!469997 e!1015792))

(declare-fun res!705032 () Bool)

(assert (=> d!469997 (=> (not res!705032) (not e!1015792))))

(declare-fun lt!553881 () BalanceConc!11486)

(assert (=> d!469997 (= res!705032 (= (list!6716 lt!553881) tokens!457))))

(assert (=> d!469997 (= lt!553881 (BalanceConc!11487 (fromList!361 tokens!457)))))

(assert (=> d!469997 (= (fromListB!794 tokens!457) lt!553881)))

(declare-fun b!1581325 () Bool)

(assert (=> b!1581325 (= e!1015792 (isBalanced!1691 (fromList!361 tokens!457)))))

(assert (= (and d!469997 res!705032) b!1581325))

(declare-fun m!1865909 () Bool)

(assert (=> d!469997 m!1865909))

(declare-fun m!1865911 () Bool)

(assert (=> d!469997 m!1865911))

(assert (=> b!1581325 m!1865911))

(assert (=> b!1581325 m!1865911))

(declare-fun m!1865913 () Bool)

(assert (=> b!1581325 m!1865913))

(assert (=> d!469433 d!469997))

(declare-fun d!469999 () Bool)

(declare-fun lt!553887 () Token!5688)

(assert (=> d!469999 (= lt!553887 (apply!4214 (list!6716 (_1!9823 lt!552811)) 0))))

(declare-fun apply!4218 (Conc!5771 Int) Token!5688)

(assert (=> d!469999 (= lt!553887 (apply!4218 (c!256023 (_1!9823 lt!552811)) 0))))

(declare-fun e!1015798 () Bool)

(assert (=> d!469999 e!1015798))

(declare-fun res!705036 () Bool)

(assert (=> d!469999 (=> (not res!705036) (not e!1015798))))

(assert (=> d!469999 (= res!705036 (<= 0 0))))

(assert (=> d!469999 (= (apply!4209 (_1!9823 lt!552811) 0) lt!553887)))

(declare-fun b!1581332 () Bool)

(assert (=> b!1581332 (= e!1015798 (< 0 (size!13972 (_1!9823 lt!552811))))))

(assert (= (and d!469999 res!705036) b!1581332))

(declare-fun m!1865941 () Bool)

(assert (=> d!469999 m!1865941))

(assert (=> d!469999 m!1865941))

(declare-fun m!1865943 () Bool)

(assert (=> d!469999 m!1865943))

(declare-fun m!1865945 () Bool)

(assert (=> d!469999 m!1865945))

(assert (=> b!1581332 m!1863181))

(assert (=> b!1580095 d!469999))

(declare-fun d!470015 () Bool)

(declare-fun c!256288 () Bool)

(assert (=> d!470015 (= c!256288 ((_ is IntegerValue!9453) (value!96911 (h!22772 (t!143642 tokens!457)))))))

(declare-fun e!1015801 () Bool)

(assert (=> d!470015 (= (inv!21 (value!96911 (h!22772 (t!143642 tokens!457)))) e!1015801)))

(declare-fun b!1581333 () Bool)

(declare-fun e!1015800 () Bool)

(assert (=> b!1581333 (= e!1015800 (inv!15 (value!96911 (h!22772 (t!143642 tokens!457)))))))

(declare-fun b!1581334 () Bool)

(assert (=> b!1581334 (= e!1015801 (inv!16 (value!96911 (h!22772 (t!143642 tokens!457)))))))

(declare-fun b!1581335 () Bool)

(declare-fun e!1015799 () Bool)

(assert (=> b!1581335 (= e!1015801 e!1015799)))

(declare-fun c!256287 () Bool)

(assert (=> b!1581335 (= c!256287 ((_ is IntegerValue!9454) (value!96911 (h!22772 (t!143642 tokens!457)))))))

(declare-fun b!1581336 () Bool)

(assert (=> b!1581336 (= e!1015799 (inv!17 (value!96911 (h!22772 (t!143642 tokens!457)))))))

(declare-fun b!1581337 () Bool)

(declare-fun res!705037 () Bool)

(assert (=> b!1581337 (=> res!705037 e!1015800)))

(assert (=> b!1581337 (= res!705037 (not ((_ is IntegerValue!9455) (value!96911 (h!22772 (t!143642 tokens!457))))))))

(assert (=> b!1581337 (= e!1015799 e!1015800)))

(assert (= (and d!470015 c!256288) b!1581334))

(assert (= (and d!470015 (not c!256288)) b!1581335))

(assert (= (and b!1581335 c!256287) b!1581336))

(assert (= (and b!1581335 (not c!256287)) b!1581337))

(assert (= (and b!1581337 (not res!705037)) b!1581333))

(declare-fun m!1865947 () Bool)

(assert (=> b!1581333 m!1865947))

(declare-fun m!1865949 () Bool)

(assert (=> b!1581334 m!1865949))

(declare-fun m!1865951 () Bool)

(assert (=> b!1581336 m!1865951))

(assert (=> b!1580536 d!470015))

(declare-fun d!470017 () Bool)

(declare-fun e!1015802 () Bool)

(assert (=> d!470017 e!1015802))

(declare-fun res!705038 () Bool)

(assert (=> d!470017 (=> (not res!705038) (not e!1015802))))

(declare-fun lt!553888 () BalanceConc!11486)

(assert (=> d!470017 (= res!705038 (= (list!6716 lt!553888) (t!143642 (t!143642 tokens!457))))))

(assert (=> d!470017 (= lt!553888 (BalanceConc!11487 (fromList!361 (t!143642 (t!143642 tokens!457)))))))

(assert (=> d!470017 (= (fromListB!794 (t!143642 (t!143642 tokens!457))) lt!553888)))

(declare-fun b!1581338 () Bool)

(assert (=> b!1581338 (= e!1015802 (isBalanced!1691 (fromList!361 (t!143642 (t!143642 tokens!457)))))))

(assert (= (and d!470017 res!705038) b!1581338))

(declare-fun m!1865953 () Bool)

(assert (=> d!470017 m!1865953))

(declare-fun m!1865955 () Bool)

(assert (=> d!470017 m!1865955))

(assert (=> b!1581338 m!1865955))

(assert (=> b!1581338 m!1865955))

(declare-fun m!1865957 () Bool)

(assert (=> b!1581338 m!1865957))

(assert (=> d!469503 d!470017))

(declare-fun b!1581367 () Bool)

(declare-fun e!1015824 () List!17441)

(assert (=> b!1581367 (= e!1015824 Nil!17371)))

(declare-fun bm!102708 () Bool)

(declare-fun call!102713 () Int)

(assert (=> bm!102708 (= call!102713 (size!13975 lt!552995))))

(declare-fun b!1581368 () Bool)

(declare-fun e!1015826 () List!17441)

(assert (=> b!1581368 (= e!1015826 (drop!814 (t!143642 lt!552995) (- 0 1)))))

(declare-fun b!1581369 () Bool)

(declare-fun e!1015825 () Int)

(assert (=> b!1581369 (= e!1015825 0)))

(declare-fun b!1581370 () Bool)

(declare-fun e!1015827 () Bool)

(declare-fun lt!553907 () List!17441)

(declare-fun e!1015823 () Int)

(assert (=> b!1581370 (= e!1015827 (= (size!13975 lt!553907) e!1015823))))

(declare-fun c!256299 () Bool)

(assert (=> b!1581370 (= c!256299 (<= 0 0))))

(declare-fun b!1581371 () Bool)

(assert (=> b!1581371 (= e!1015826 lt!552995)))

(declare-fun b!1581372 () Bool)

(assert (=> b!1581372 (= e!1015823 e!1015825)))

(declare-fun c!256297 () Bool)

(assert (=> b!1581372 (= c!256297 (>= 0 call!102713))))

(declare-fun b!1581373 () Bool)

(assert (=> b!1581373 (= e!1015824 e!1015826)))

(declare-fun c!256300 () Bool)

(assert (=> b!1581373 (= c!256300 (<= 0 0))))

(declare-fun d!470019 () Bool)

(assert (=> d!470019 e!1015827))

(declare-fun res!705051 () Bool)

(assert (=> d!470019 (=> (not res!705051) (not e!1015827))))

(declare-fun content!2388 (List!17441) (InoxSet Token!5688))

(assert (=> d!470019 (= res!705051 (= ((_ map implies) (content!2388 lt!553907) (content!2388 lt!552995)) ((as const (InoxSet Token!5688)) true)))))

(assert (=> d!470019 (= lt!553907 e!1015824)))

(declare-fun c!256298 () Bool)

(assert (=> d!470019 (= c!256298 ((_ is Nil!17371) lt!552995))))

(assert (=> d!470019 (= (drop!814 lt!552995 0) lt!553907)))

(declare-fun b!1581374 () Bool)

(assert (=> b!1581374 (= e!1015823 call!102713)))

(declare-fun b!1581375 () Bool)

(assert (=> b!1581375 (= e!1015825 (- call!102713 0))))

(assert (= (and d!470019 c!256298) b!1581367))

(assert (= (and d!470019 (not c!256298)) b!1581373))

(assert (= (and b!1581373 c!256300) b!1581371))

(assert (= (and b!1581373 (not c!256300)) b!1581368))

(assert (= (and d!470019 res!705051) b!1581370))

(assert (= (and b!1581370 c!256299) b!1581374))

(assert (= (and b!1581370 (not c!256299)) b!1581372))

(assert (= (and b!1581372 c!256297) b!1581369))

(assert (= (and b!1581372 (not c!256297)) b!1581375))

(assert (= (or b!1581374 b!1581372 b!1581375) bm!102708))

(declare-fun m!1865993 () Bool)

(assert (=> bm!102708 m!1865993))

(declare-fun m!1865995 () Bool)

(assert (=> b!1581368 m!1865995))

(declare-fun m!1865997 () Bool)

(assert (=> b!1581370 m!1865997))

(declare-fun m!1865999 () Bool)

(assert (=> d!470019 m!1865999))

(declare-fun m!1866001 () Bool)

(assert (=> d!470019 m!1866001))

(assert (=> b!1580202 d!470019))

(declare-fun d!470033 () Bool)

(declare-fun lt!553915 () Token!5688)

(declare-fun contains!3029 (List!17441 Token!5688) Bool)

(assert (=> d!470033 (contains!3029 lt!552995 lt!553915)))

(declare-fun e!1015838 () Token!5688)

(assert (=> d!470033 (= lt!553915 e!1015838)))

(declare-fun c!256303 () Bool)

(assert (=> d!470033 (= c!256303 (= 0 0))))

(declare-fun e!1015837 () Bool)

(assert (=> d!470033 e!1015837))

(declare-fun res!705060 () Bool)

(assert (=> d!470033 (=> (not res!705060) (not e!1015837))))

(assert (=> d!470033 (= res!705060 (<= 0 0))))

(assert (=> d!470033 (= (apply!4214 lt!552995 0) lt!553915)))

(declare-fun b!1581388 () Bool)

(assert (=> b!1581388 (= e!1015837 (< 0 (size!13975 lt!552995)))))

(declare-fun b!1581389 () Bool)

(assert (=> b!1581389 (= e!1015838 (head!3187 lt!552995))))

(declare-fun b!1581390 () Bool)

(assert (=> b!1581390 (= e!1015838 (apply!4214 (tail!2253 lt!552995) (- 0 1)))))

(assert (= (and d!470033 res!705060) b!1581388))

(assert (= (and d!470033 c!256303) b!1581389))

(assert (= (and d!470033 (not c!256303)) b!1581390))

(declare-fun m!1866017 () Bool)

(assert (=> d!470033 m!1866017))

(assert (=> b!1581388 m!1865993))

(declare-fun m!1866019 () Bool)

(assert (=> b!1581389 m!1866019))

(declare-fun m!1866021 () Bool)

(assert (=> b!1581390 m!1866021))

(assert (=> b!1581390 m!1866021))

(declare-fun m!1866023 () Bool)

(assert (=> b!1581390 m!1866023))

(assert (=> b!1580202 d!470033))

(declare-fun d!470043 () Bool)

(declare-fun lt!553921 () BalanceConc!11484)

(assert (=> d!470043 (= (list!6715 lt!553921) (printListTailRec!305 thiss!17113 (dropList!511 lt!552802 (+ 0 1)) (list!6715 (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (apply!4209 lt!552802 0))))))))

(declare-fun e!1015843 () BalanceConc!11484)

(assert (=> d!470043 (= lt!553921 e!1015843)))

(declare-fun c!256304 () Bool)

(assert (=> d!470043 (= c!256304 (>= (+ 0 1) (size!13972 lt!552802)))))

(declare-fun e!1015844 () Bool)

(assert (=> d!470043 e!1015844))

(declare-fun res!705065 () Bool)

(assert (=> d!470043 (=> (not res!705065) (not e!1015844))))

(assert (=> d!470043 (= res!705065 (>= (+ 0 1) 0))))

(assert (=> d!470043 (= (printTailRec!743 thiss!17113 lt!552802 (+ 0 1) (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (apply!4209 lt!552802 0)))) lt!553921)))

(declare-fun b!1581395 () Bool)

(assert (=> b!1581395 (= e!1015844 (<= (+ 0 1) (size!13972 lt!552802)))))

(declare-fun b!1581396 () Bool)

(assert (=> b!1581396 (= e!1015843 (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (apply!4209 lt!552802 0))))))

(declare-fun b!1581397 () Bool)

(assert (=> b!1581397 (= e!1015843 (printTailRec!743 thiss!17113 lt!552802 (+ 0 1 1) (++!4513 (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (apply!4209 lt!552802 0))) (charsOf!1710 (apply!4209 lt!552802 (+ 0 1))))))))

(declare-fun lt!553924 () List!17441)

(assert (=> b!1581397 (= lt!553924 (list!6716 lt!552802))))

(declare-fun lt!553920 () Unit!27015)

(assert (=> b!1581397 (= lt!553920 (lemmaDropApply!512 lt!553924 (+ 0 1)))))

(assert (=> b!1581397 (= (head!3187 (drop!814 lt!553924 (+ 0 1))) (apply!4214 lt!553924 (+ 0 1)))))

(declare-fun lt!553918 () Unit!27015)

(assert (=> b!1581397 (= lt!553918 lt!553920)))

(declare-fun lt!553919 () List!17441)

(assert (=> b!1581397 (= lt!553919 (list!6716 lt!552802))))

(declare-fun lt!553922 () Unit!27015)

(assert (=> b!1581397 (= lt!553922 (lemmaDropTail!492 lt!553919 (+ 0 1)))))

(assert (=> b!1581397 (= (tail!2253 (drop!814 lt!553919 (+ 0 1))) (drop!814 lt!553919 (+ 0 1 1)))))

(declare-fun lt!553923 () Unit!27015)

(assert (=> b!1581397 (= lt!553923 lt!553922)))

(assert (= (and d!470043 res!705065) b!1581395))

(assert (= (and d!470043 c!256304) b!1581396))

(assert (= (and d!470043 (not c!256304)) b!1581397))

(assert (=> d!470043 m!1863453))

(declare-fun m!1866025 () Bool)

(assert (=> d!470043 m!1866025))

(declare-fun m!1866027 () Bool)

(assert (=> d!470043 m!1866027))

(assert (=> d!470043 m!1866027))

(assert (=> d!470043 m!1866025))

(declare-fun m!1866029 () Bool)

(assert (=> d!470043 m!1866029))

(declare-fun m!1866031 () Bool)

(assert (=> d!470043 m!1866031))

(assert (=> d!470043 m!1863441))

(assert (=> b!1581395 m!1863441))

(declare-fun m!1866033 () Bool)

(assert (=> b!1581397 m!1866033))

(assert (=> b!1581397 m!1863445))

(declare-fun m!1866035 () Bool)

(assert (=> b!1581397 m!1866035))

(declare-fun m!1866037 () Bool)

(assert (=> b!1581397 m!1866037))

(declare-fun m!1866039 () Bool)

(assert (=> b!1581397 m!1866039))

(declare-fun m!1866041 () Bool)

(assert (=> b!1581397 m!1866041))

(declare-fun m!1866043 () Bool)

(assert (=> b!1581397 m!1866043))

(assert (=> b!1581397 m!1863453))

(declare-fun m!1866045 () Bool)

(assert (=> b!1581397 m!1866045))

(assert (=> b!1581397 m!1866041))

(declare-fun m!1866047 () Bool)

(assert (=> b!1581397 m!1866047))

(assert (=> b!1581397 m!1866037))

(declare-fun m!1866049 () Bool)

(assert (=> b!1581397 m!1866049))

(declare-fun m!1866051 () Bool)

(assert (=> b!1581397 m!1866051))

(declare-fun m!1866053 () Bool)

(assert (=> b!1581397 m!1866053))

(declare-fun m!1866055 () Bool)

(assert (=> b!1581397 m!1866055))

(assert (=> b!1581397 m!1866049))

(assert (=> b!1581397 m!1866035))

(assert (=> b!1581397 m!1866045))

(assert (=> b!1580202 d!470043))

(declare-fun d!470045 () Bool)

(declare-fun lt!553925 () Token!5688)

(assert (=> d!470045 (= lt!553925 (apply!4214 (list!6716 lt!552802) 0))))

(assert (=> d!470045 (= lt!553925 (apply!4218 (c!256023 lt!552802) 0))))

(declare-fun e!1015845 () Bool)

(assert (=> d!470045 e!1015845))

(declare-fun res!705066 () Bool)

(assert (=> d!470045 (=> (not res!705066) (not e!1015845))))

(assert (=> d!470045 (= res!705066 (<= 0 0))))

(assert (=> d!470045 (= (apply!4209 lt!552802 0) lt!553925)))

(declare-fun b!1581398 () Bool)

(assert (=> b!1581398 (= e!1015845 (< 0 (size!13972 lt!552802)))))

(assert (= (and d!470045 res!705066) b!1581398))

(assert (=> d!470045 m!1863445))

(assert (=> d!470045 m!1863445))

(declare-fun m!1866057 () Bool)

(assert (=> d!470045 m!1866057))

(declare-fun m!1866059 () Bool)

(assert (=> d!470045 m!1866059))

(assert (=> b!1581398 m!1863441))

(assert (=> b!1580202 d!470045))

(declare-fun b!1581403 () Bool)

(declare-fun e!1015849 () List!17441)

(assert (=> b!1581403 (= e!1015849 Nil!17371)))

(declare-fun bm!102709 () Bool)

(declare-fun call!102714 () Int)

(assert (=> bm!102709 (= call!102714 (size!13975 lt!552990))))

(declare-fun b!1581404 () Bool)

(declare-fun e!1015851 () List!17441)

(assert (=> b!1581404 (= e!1015851 (drop!814 (t!143642 lt!552990) (- (+ 0 1) 1)))))

(declare-fun b!1581405 () Bool)

(declare-fun e!1015850 () Int)

(assert (=> b!1581405 (= e!1015850 0)))

(declare-fun b!1581406 () Bool)

(declare-fun e!1015852 () Bool)

(declare-fun lt!553927 () List!17441)

(declare-fun e!1015848 () Int)

(assert (=> b!1581406 (= e!1015852 (= (size!13975 lt!553927) e!1015848))))

(declare-fun c!256307 () Bool)

(assert (=> b!1581406 (= c!256307 (<= (+ 0 1) 0))))

(declare-fun b!1581407 () Bool)

(assert (=> b!1581407 (= e!1015851 lt!552990)))

(declare-fun b!1581408 () Bool)

(assert (=> b!1581408 (= e!1015848 e!1015850)))

(declare-fun c!256305 () Bool)

(assert (=> b!1581408 (= c!256305 (>= (+ 0 1) call!102714))))

(declare-fun b!1581409 () Bool)

(assert (=> b!1581409 (= e!1015849 e!1015851)))

(declare-fun c!256308 () Bool)

(assert (=> b!1581409 (= c!256308 (<= (+ 0 1) 0))))

(declare-fun d!470047 () Bool)

(assert (=> d!470047 e!1015852))

(declare-fun res!705069 () Bool)

(assert (=> d!470047 (=> (not res!705069) (not e!1015852))))

(assert (=> d!470047 (= res!705069 (= ((_ map implies) (content!2388 lt!553927) (content!2388 lt!552990)) ((as const (InoxSet Token!5688)) true)))))

(assert (=> d!470047 (= lt!553927 e!1015849)))

(declare-fun c!256306 () Bool)

(assert (=> d!470047 (= c!256306 ((_ is Nil!17371) lt!552990))))

(assert (=> d!470047 (= (drop!814 lt!552990 (+ 0 1)) lt!553927)))

(declare-fun b!1581410 () Bool)

(assert (=> b!1581410 (= e!1015848 call!102714)))

(declare-fun b!1581411 () Bool)

(assert (=> b!1581411 (= e!1015850 (- call!102714 (+ 0 1)))))

(assert (= (and d!470047 c!256306) b!1581403))

(assert (= (and d!470047 (not c!256306)) b!1581409))

(assert (= (and b!1581409 c!256308) b!1581407))

(assert (= (and b!1581409 (not c!256308)) b!1581404))

(assert (= (and d!470047 res!705069) b!1581406))

(assert (= (and b!1581406 c!256307) b!1581410))

(assert (= (and b!1581406 (not c!256307)) b!1581408))

(assert (= (and b!1581408 c!256305) b!1581405))

(assert (= (and b!1581408 (not c!256305)) b!1581411))

(assert (= (or b!1581410 b!1581408 b!1581411) bm!102709))

(declare-fun m!1866063 () Bool)

(assert (=> bm!102709 m!1866063))

(declare-fun m!1866065 () Bool)

(assert (=> b!1581404 m!1866065))

(declare-fun m!1866067 () Bool)

(assert (=> b!1581406 m!1866067))

(declare-fun m!1866069 () Bool)

(assert (=> d!470047 m!1866069))

(declare-fun m!1866071 () Bool)

(assert (=> d!470047 m!1866071))

(assert (=> b!1580202 d!470047))

(declare-fun b!1581418 () Bool)

(declare-fun res!705072 () Bool)

(declare-fun e!1015855 () Bool)

(assert (=> b!1581418 (=> (not res!705072) (not e!1015855))))

(assert (=> b!1581418 (= res!705072 (>= (height!849 (++!4517 (c!256021 (BalanceConc!11485 Empty!5770)) (c!256021 (charsOf!1710 (apply!4209 lt!552802 0))))) (max!0 (height!849 (c!256021 (BalanceConc!11485 Empty!5770))) (height!849 (c!256021 (charsOf!1710 (apply!4209 lt!552802 0)))))))))

(declare-fun b!1581416 () Bool)

(declare-fun res!705073 () Bool)

(assert (=> b!1581416 (=> (not res!705073) (not e!1015855))))

(assert (=> b!1581416 (= res!705073 (isBalanced!1693 (++!4517 (c!256021 (BalanceConc!11485 Empty!5770)) (c!256021 (charsOf!1710 (apply!4209 lt!552802 0))))))))

(declare-fun d!470051 () Bool)

(assert (=> d!470051 e!1015855))

(declare-fun res!705070 () Bool)

(assert (=> d!470051 (=> (not res!705070) (not e!1015855))))

(assert (=> d!470051 (= res!705070 (appendAssocInst!385 (c!256021 (BalanceConc!11485 Empty!5770)) (c!256021 (charsOf!1710 (apply!4209 lt!552802 0)))))))

(declare-fun lt!553928 () BalanceConc!11484)

(assert (=> d!470051 (= lt!553928 (BalanceConc!11485 (++!4517 (c!256021 (BalanceConc!11485 Empty!5770)) (c!256021 (charsOf!1710 (apply!4209 lt!552802 0))))))))

(assert (=> d!470051 (= (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (apply!4209 lt!552802 0))) lt!553928)))

(declare-fun b!1581417 () Bool)

(declare-fun res!705071 () Bool)

(assert (=> b!1581417 (=> (not res!705071) (not e!1015855))))

(assert (=> b!1581417 (= res!705071 (<= (height!849 (++!4517 (c!256021 (BalanceConc!11485 Empty!5770)) (c!256021 (charsOf!1710 (apply!4209 lt!552802 0))))) (+ (max!0 (height!849 (c!256021 (BalanceConc!11485 Empty!5770))) (height!849 (c!256021 (charsOf!1710 (apply!4209 lt!552802 0))))) 1)))))

(declare-fun b!1581419 () Bool)

(assert (=> b!1581419 (= e!1015855 (= (list!6715 lt!553928) (++!4511 (list!6715 (BalanceConc!11485 Empty!5770)) (list!6715 (charsOf!1710 (apply!4209 lt!552802 0))))))))

(assert (= (and d!470051 res!705070) b!1581416))

(assert (= (and b!1581416 res!705073) b!1581417))

(assert (= (and b!1581417 res!705071) b!1581418))

(assert (= (and b!1581418 res!705072) b!1581419))

(declare-fun m!1866081 () Bool)

(assert (=> b!1581417 m!1866081))

(declare-fun m!1866083 () Bool)

(assert (=> b!1581417 m!1866083))

(declare-fun m!1866085 () Bool)

(assert (=> b!1581417 m!1866085))

(assert (=> b!1581417 m!1866085))

(declare-fun m!1866087 () Bool)

(assert (=> b!1581417 m!1866087))

(assert (=> b!1581417 m!1866083))

(assert (=> b!1581417 m!1866081))

(declare-fun m!1866089 () Bool)

(assert (=> b!1581417 m!1866089))

(declare-fun m!1866091 () Bool)

(assert (=> d!470051 m!1866091))

(assert (=> d!470051 m!1866085))

(assert (=> b!1581416 m!1866085))

(assert (=> b!1581416 m!1866085))

(declare-fun m!1866093 () Bool)

(assert (=> b!1581416 m!1866093))

(assert (=> b!1581418 m!1866081))

(assert (=> b!1581418 m!1866083))

(assert (=> b!1581418 m!1866085))

(assert (=> b!1581418 m!1866085))

(assert (=> b!1581418 m!1866087))

(assert (=> b!1581418 m!1866083))

(assert (=> b!1581418 m!1866081))

(assert (=> b!1581418 m!1866089))

(declare-fun m!1866095 () Bool)

(assert (=> b!1581419 m!1866095))

(assert (=> b!1581419 m!1863433))

(assert (=> b!1581419 m!1863457))

(declare-fun m!1866097 () Bool)

(assert (=> b!1581419 m!1866097))

(assert (=> b!1581419 m!1863433))

(assert (=> b!1581419 m!1866097))

(declare-fun m!1866099 () Bool)

(assert (=> b!1581419 m!1866099))

(assert (=> b!1580202 d!470051))

(declare-fun d!470059 () Bool)

(assert (=> d!470059 (= (tail!2253 (drop!814 lt!552990 0)) (drop!814 lt!552990 (+ 0 1)))))

(declare-fun lt!553931 () Unit!27015)

(declare-fun choose!9457 (List!17441 Int) Unit!27015)

(assert (=> d!470059 (= lt!553931 (choose!9457 lt!552990 0))))

(declare-fun e!1015860 () Bool)

(assert (=> d!470059 e!1015860))

(declare-fun res!705078 () Bool)

(assert (=> d!470059 (=> (not res!705078) (not e!1015860))))

(assert (=> d!470059 (= res!705078 (>= 0 0))))

(assert (=> d!470059 (= (lemmaDropTail!492 lt!552990 0) lt!553931)))

(declare-fun b!1581426 () Bool)

(assert (=> b!1581426 (= e!1015860 (< 0 (size!13975 lt!552990)))))

(assert (= (and d!470059 res!705078) b!1581426))

(assert (=> d!470059 m!1863449))

(assert (=> d!470059 m!1863449))

(assert (=> d!470059 m!1863451))

(assert (=> d!470059 m!1863443))

(declare-fun m!1866105 () Bool)

(assert (=> d!470059 m!1866105))

(assert (=> b!1581426 m!1866063))

(assert (=> b!1580202 d!470059))

(declare-fun d!470063 () Bool)

(assert (=> d!470063 (= (tail!2253 (drop!814 lt!552990 0)) (t!143642 (drop!814 lt!552990 0)))))

(assert (=> b!1580202 d!470063))

(declare-fun d!470069 () Bool)

(declare-fun lt!553933 () BalanceConc!11484)

(assert (=> d!470069 (= (list!6715 lt!553933) (originalCharacters!3875 (apply!4209 lt!552802 0)))))

(assert (=> d!470069 (= lt!553933 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (apply!4209 lt!552802 0)))) (value!96911 (apply!4209 lt!552802 0))))))

(assert (=> d!470069 (= (charsOf!1710 (apply!4209 lt!552802 0)) lt!553933)))

(declare-fun b_lambda!49755 () Bool)

(assert (=> (not b_lambda!49755) (not d!470069)))

(declare-fun tb!88927 () Bool)

(declare-fun t!143756 () Bool)

(assert (=> (and b!1580060 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 (apply!4209 lt!552802 0))))) t!143756) tb!88927))

(declare-fun b!1581434 () Bool)

(declare-fun e!1015865 () Bool)

(declare-fun tp!465349 () Bool)

(assert (=> b!1581434 (= e!1015865 (and (inv!22787 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (apply!4209 lt!552802 0)))) (value!96911 (apply!4209 lt!552802 0))))) tp!465349))))

(declare-fun result!107620 () Bool)

(assert (=> tb!88927 (= result!107620 (and (inv!22788 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (apply!4209 lt!552802 0)))) (value!96911 (apply!4209 lt!552802 0)))) e!1015865))))

(assert (= tb!88927 b!1581434))

(declare-fun m!1866111 () Bool)

(assert (=> b!1581434 m!1866111))

(declare-fun m!1866113 () Bool)

(assert (=> tb!88927 m!1866113))

(assert (=> d!470069 t!143756))

(declare-fun b_and!110813 () Bool)

(assert (= b_and!110797 (and (=> t!143756 result!107620) b_and!110813)))

(declare-fun tb!88929 () Bool)

(declare-fun t!143758 () Bool)

(assert (=> (and b!1580067 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toChars!4323 (transformation!3061 (rule!4857 (apply!4209 lt!552802 0))))) t!143758) tb!88929))

(declare-fun result!107622 () Bool)

(assert (= result!107622 result!107620))

(assert (=> d!470069 t!143758))

(declare-fun b_and!110815 () Bool)

(assert (= b_and!110799 (and (=> t!143758 result!107622) b_and!110815)))

(declare-fun tb!88931 () Bool)

(declare-fun t!143760 () Bool)

(assert (=> (and b!1580515 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 (apply!4209 lt!552802 0))))) t!143760) tb!88931))

(declare-fun result!107624 () Bool)

(assert (= result!107624 result!107620))

(assert (=> d!470069 t!143760))

(declare-fun b_and!110817 () Bool)

(assert (= b_and!110801 (and (=> t!143760 result!107624) b_and!110817)))

(declare-fun tb!88933 () Bool)

(declare-fun t!143762 () Bool)

(assert (=> (and b!1580538 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toChars!4323 (transformation!3061 (rule!4857 (apply!4209 lt!552802 0))))) t!143762) tb!88933))

(declare-fun result!107626 () Bool)

(assert (= result!107626 result!107620))

(assert (=> d!470069 t!143762))

(declare-fun b_and!110819 () Bool)

(assert (= b_and!110803 (and (=> t!143762 result!107626) b_and!110819)))

(declare-fun m!1866115 () Bool)

(assert (=> d!470069 m!1866115))

(declare-fun m!1866117 () Bool)

(assert (=> d!470069 m!1866117))

(assert (=> b!1580202 d!470069))

(declare-fun d!470071 () Bool)

(assert (=> d!470071 (= (head!3187 (drop!814 lt!552995 0)) (h!22772 (drop!814 lt!552995 0)))))

(assert (=> b!1580202 d!470071))

(declare-fun d!470073 () Bool)

(assert (=> d!470073 (= (head!3187 (drop!814 lt!552995 0)) (apply!4214 lt!552995 0))))

(declare-fun lt!553970 () Unit!27015)

(declare-fun choose!9458 (List!17441 Int) Unit!27015)

(assert (=> d!470073 (= lt!553970 (choose!9458 lt!552995 0))))

(declare-fun e!1015868 () Bool)

(assert (=> d!470073 e!1015868))

(declare-fun res!705082 () Bool)

(assert (=> d!470073 (=> (not res!705082) (not e!1015868))))

(assert (=> d!470073 (= res!705082 (>= 0 0))))

(assert (=> d!470073 (= (lemmaDropApply!512 lt!552995 0) lt!553970)))

(declare-fun b!1581437 () Bool)

(assert (=> b!1581437 (= e!1015868 (< 0 (size!13975 lt!552995)))))

(assert (= (and d!470073 res!705082) b!1581437))

(assert (=> d!470073 m!1863461))

(assert (=> d!470073 m!1863461))

(assert (=> d!470073 m!1863463))

(assert (=> d!470073 m!1863465))

(declare-fun m!1866205 () Bool)

(assert (=> d!470073 m!1866205))

(assert (=> b!1581437 m!1865993))

(assert (=> b!1580202 d!470073))

(declare-fun b!1581442 () Bool)

(declare-fun e!1015872 () List!17441)

(assert (=> b!1581442 (= e!1015872 Nil!17371)))

(declare-fun bm!102710 () Bool)

(declare-fun call!102715 () Int)

(assert (=> bm!102710 (= call!102715 (size!13975 lt!552990))))

(declare-fun b!1581443 () Bool)

(declare-fun e!1015874 () List!17441)

(assert (=> b!1581443 (= e!1015874 (drop!814 (t!143642 lt!552990) (- 0 1)))))

(declare-fun b!1581444 () Bool)

(declare-fun e!1015873 () Int)

(assert (=> b!1581444 (= e!1015873 0)))

(declare-fun b!1581445 () Bool)

(declare-fun e!1015875 () Bool)

(declare-fun lt!553971 () List!17441)

(declare-fun e!1015871 () Int)

(assert (=> b!1581445 (= e!1015875 (= (size!13975 lt!553971) e!1015871))))

(declare-fun c!256318 () Bool)

(assert (=> b!1581445 (= c!256318 (<= 0 0))))

(declare-fun b!1581446 () Bool)

(assert (=> b!1581446 (= e!1015874 lt!552990)))

(declare-fun b!1581447 () Bool)

(assert (=> b!1581447 (= e!1015871 e!1015873)))

(declare-fun c!256316 () Bool)

(assert (=> b!1581447 (= c!256316 (>= 0 call!102715))))

(declare-fun b!1581448 () Bool)

(assert (=> b!1581448 (= e!1015872 e!1015874)))

(declare-fun c!256319 () Bool)

(assert (=> b!1581448 (= c!256319 (<= 0 0))))

(declare-fun d!470077 () Bool)

(assert (=> d!470077 e!1015875))

(declare-fun res!705083 () Bool)

(assert (=> d!470077 (=> (not res!705083) (not e!1015875))))

(assert (=> d!470077 (= res!705083 (= ((_ map implies) (content!2388 lt!553971) (content!2388 lt!552990)) ((as const (InoxSet Token!5688)) true)))))

(assert (=> d!470077 (= lt!553971 e!1015872)))

(declare-fun c!256317 () Bool)

(assert (=> d!470077 (= c!256317 ((_ is Nil!17371) lt!552990))))

(assert (=> d!470077 (= (drop!814 lt!552990 0) lt!553971)))

(declare-fun b!1581449 () Bool)

(assert (=> b!1581449 (= e!1015871 call!102715)))

(declare-fun b!1581450 () Bool)

(assert (=> b!1581450 (= e!1015873 (- call!102715 0))))

(assert (= (and d!470077 c!256317) b!1581442))

(assert (= (and d!470077 (not c!256317)) b!1581448))

(assert (= (and b!1581448 c!256319) b!1581446))

(assert (= (and b!1581448 (not c!256319)) b!1581443))

(assert (= (and d!470077 res!705083) b!1581445))

(assert (= (and b!1581445 c!256318) b!1581449))

(assert (= (and b!1581445 (not c!256318)) b!1581447))

(assert (= (and b!1581447 c!256316) b!1581444))

(assert (= (and b!1581447 (not c!256316)) b!1581450))

(assert (= (or b!1581449 b!1581447 b!1581450) bm!102710))

(assert (=> bm!102710 m!1866063))

(declare-fun m!1866215 () Bool)

(assert (=> b!1581443 m!1866215))

(declare-fun m!1866217 () Bool)

(assert (=> b!1581445 m!1866217))

(declare-fun m!1866219 () Bool)

(assert (=> d!470077 m!1866219))

(assert (=> d!470077 m!1866071))

(assert (=> b!1580202 d!470077))

(assert (=> b!1580202 d!469769))

(declare-fun bs!391000 () Bool)

(declare-fun d!470081 () Bool)

(assert (= bs!391000 (and d!470081 d!469681)))

(declare-fun lambda!66481 () Int)

(assert (=> bs!391000 (= (= (toValue!4464 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toValue!4464 (transformation!3061 (h!22773 rules!1846)))) (= lambda!66481 lambda!66466))))

(assert (=> d!470081 true))

(assert (=> d!470081 (< (dynLambda!7692 order!10231 (toValue!4464 (transformation!3061 (rule!4857 (h!22772 tokens!457))))) (dynLambda!7700 order!10241 lambda!66481))))

(assert (=> d!470081 (= (equivClasses!1091 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toValue!4464 (transformation!3061 (rule!4857 (h!22772 tokens!457))))) (Forall2!502 lambda!66481))))

(declare-fun bs!391001 () Bool)

(assert (= bs!391001 d!470081))

(declare-fun m!1866227 () Bool)

(assert (=> bs!391001 m!1866227))

(assert (=> b!1580335 d!470081))

(declare-fun d!470085 () Bool)

(assert (=> d!470085 (= (isEmpty!10386 (originalCharacters!3875 (h!22772 tokens!457))) ((_ is Nil!17369) (originalCharacters!3875 (h!22772 tokens!457))))))

(assert (=> d!469493 d!470085))

(declare-fun d!470087 () Bool)

(assert (=> d!470087 (= (list!6716 lt!553001) (list!6720 (c!256023 lt!553001)))))

(declare-fun bs!391002 () Bool)

(assert (= bs!391002 d!470087))

(declare-fun m!1866229 () Bool)

(assert (=> bs!391002 m!1866229))

(assert (=> d!469377 d!470087))

(declare-fun d!470089 () Bool)

(declare-fun e!1015891 () Bool)

(assert (=> d!470089 e!1015891))

(declare-fun res!705096 () Bool)

(assert (=> d!470089 (=> (not res!705096) (not e!1015891))))

(declare-fun lt!553977 () BalanceConc!11486)

(assert (=> d!470089 (= res!705096 (= (list!6716 lt!553977) (Cons!17371 (h!22772 tokens!457) Nil!17371)))))

(declare-fun choose!9460 (Token!5688) BalanceConc!11486)

(assert (=> d!470089 (= lt!553977 (choose!9460 (h!22772 tokens!457)))))

(assert (=> d!470089 (= (singleton!572 (h!22772 tokens!457)) lt!553977)))

(declare-fun b!1581477 () Bool)

(assert (=> b!1581477 (= e!1015891 (isBalanced!1691 (c!256023 lt!553977)))))

(assert (= (and d!470089 res!705096) b!1581477))

(declare-fun m!1866247 () Bool)

(assert (=> d!470089 m!1866247))

(declare-fun m!1866249 () Bool)

(assert (=> d!470089 m!1866249))

(declare-fun m!1866251 () Bool)

(assert (=> b!1581477 m!1866251))

(assert (=> d!469377 d!470089))

(declare-fun d!470101 () Bool)

(declare-fun e!1015894 () Bool)

(assert (=> d!470101 e!1015894))

(declare-fun res!705099 () Bool)

(assert (=> d!470101 (=> (not res!705099) (not e!1015894))))

(declare-fun lt!553982 () BalanceConc!11484)

(assert (=> d!470101 (= res!705099 (= (list!6715 lt!553982) lt!552801))))

(declare-fun fromList!362 (List!17439) Conc!5770)

(assert (=> d!470101 (= lt!553982 (BalanceConc!11485 (fromList!362 lt!552801)))))

(assert (=> d!470101 (= (fromListB!793 lt!552801) lt!553982)))

(declare-fun b!1581480 () Bool)

(assert (=> b!1581480 (= e!1015894 (isBalanced!1693 (fromList!362 lt!552801)))))

(assert (= (and d!470101 res!705099) b!1581480))

(declare-fun m!1866269 () Bool)

(assert (=> d!470101 m!1866269))

(declare-fun m!1866271 () Bool)

(assert (=> d!470101 m!1866271))

(assert (=> b!1581480 m!1866271))

(assert (=> b!1581480 m!1866271))

(declare-fun m!1866273 () Bool)

(assert (=> b!1581480 m!1866273))

(assert (=> d!469399 d!470101))

(assert (=> b!1580180 d!469529))

(assert (=> b!1580180 d!469531))

(assert (=> b!1580180 d!469527))

(declare-fun d!470105 () Bool)

(assert (=> d!470105 (= (isEmpty!10382 (maxPrefixOneRule!725 thiss!17113 (rule!4857 lt!552938) lt!552944)) (not ((_ is Some!3113) (maxPrefixOneRule!725 thiss!17113 (rule!4857 lt!552938) lt!552944))))))

(assert (=> b!1580144 d!470105))

(assert (=> b!1580144 d!469739))

(declare-fun d!470107 () Bool)

(assert (=> d!470107 (not (matchR!1910 (regex!3061 (rule!4857 lt!552938)) lt!552931))))

(declare-fun lt!553991 () Unit!27015)

(declare-fun choose!9461 (LexerInterface!2690 Rule!5922 List!17439 List!17439) Unit!27015)

(assert (=> d!470107 (= lt!553991 (choose!9461 thiss!17113 (rule!4857 lt!552938) lt!552931 (++!4511 lt!552801 lt!552795)))))

(assert (=> d!470107 (isPrefix!1321 lt!552931 (++!4511 lt!552801 lt!552795))))

(assert (=> d!470107 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!124 thiss!17113 (rule!4857 lt!552938) lt!552931 (++!4511 lt!552801 lt!552795)) lt!553991)))

(declare-fun bs!391013 () Bool)

(assert (= bs!391013 d!470107))

(assert (=> bs!391013 m!1863303))

(assert (=> bs!391013 m!1863107))

(declare-fun m!1866315 () Bool)

(assert (=> bs!391013 m!1866315))

(assert (=> bs!391013 m!1863107))

(declare-fun m!1866317 () Bool)

(assert (=> bs!391013 m!1866317))

(assert (=> b!1580144 d!470107))

(declare-fun d!470125 () Bool)

(declare-fun e!1015906 () Bool)

(assert (=> d!470125 e!1015906))

(declare-fun res!705116 () Bool)

(assert (=> d!470125 (=> res!705116 e!1015906)))

(declare-fun lt!553996 () Option!3114)

(assert (=> d!470125 (= res!705116 (isEmpty!10382 lt!553996))))

(declare-fun e!1015905 () Option!3114)

(assert (=> d!470125 (= lt!553996 e!1015905)))

(declare-fun c!256332 () Bool)

(declare-fun lt!553995 () tuple2!16852)

(assert (=> d!470125 (= c!256332 (isEmpty!10386 (_1!9828 lt!553995)))))

(assert (=> d!470125 (= lt!553995 (findLongestMatch!276 (regex!3061 (rule!4857 lt!552938)) lt!552944))))

(assert (=> d!470125 (ruleValid!707 thiss!17113 (rule!4857 lt!552938))))

(assert (=> d!470125 (= (maxPrefixOneRule!725 thiss!17113 (rule!4857 lt!552938) lt!552944) lt!553996)))

(declare-fun b!1581500 () Bool)

(declare-fun e!1015907 () Bool)

(assert (=> b!1581500 (= e!1015907 (= (size!13968 (_1!9822 (get!4964 lt!553996))) (size!13973 (originalCharacters!3875 (_1!9822 (get!4964 lt!553996))))))))

(declare-fun b!1581501 () Bool)

(declare-fun res!705114 () Bool)

(assert (=> b!1581501 (=> (not res!705114) (not e!1015907))))

(assert (=> b!1581501 (= res!705114 (= (rule!4857 (_1!9822 (get!4964 lt!553996))) (rule!4857 lt!552938)))))

(declare-fun b!1581502 () Bool)

(assert (=> b!1581502 (= e!1015905 (Some!3113 (tuple2!16841 (Token!5689 (apply!4212 (transformation!3061 (rule!4857 lt!552938)) (seqFromList!1872 (_1!9828 lt!553995))) (rule!4857 lt!552938) (size!13974 (seqFromList!1872 (_1!9828 lt!553995))) (_1!9828 lt!553995)) (_2!9828 lt!553995))))))

(declare-fun lt!553992 () Unit!27015)

(assert (=> b!1581502 (= lt!553992 (longestMatchIsAcceptedByMatchOrIsEmpty!333 (regex!3061 (rule!4857 lt!552938)) lt!552944))))

(declare-fun res!705111 () Bool)

(assert (=> b!1581502 (= res!705111 (isEmpty!10386 (_1!9828 (findLongestMatchInner!349 (regex!3061 (rule!4857 lt!552938)) Nil!17369 (size!13973 Nil!17369) lt!552944 lt!552944 (size!13973 lt!552944)))))))

(declare-fun e!1015908 () Bool)

(assert (=> b!1581502 (=> res!705111 e!1015908)))

(assert (=> b!1581502 e!1015908))

(declare-fun lt!553994 () Unit!27015)

(assert (=> b!1581502 (= lt!553994 lt!553992)))

(declare-fun lt!553993 () Unit!27015)

(assert (=> b!1581502 (= lt!553993 (lemmaSemiInverse!382 (transformation!3061 (rule!4857 lt!552938)) (seqFromList!1872 (_1!9828 lt!553995))))))

(declare-fun b!1581503 () Bool)

(declare-fun res!705113 () Bool)

(assert (=> b!1581503 (=> (not res!705113) (not e!1015907))))

(assert (=> b!1581503 (= res!705113 (< (size!13973 (_2!9822 (get!4964 lt!553996))) (size!13973 lt!552944)))))

(declare-fun b!1581504 () Bool)

(assert (=> b!1581504 (= e!1015906 e!1015907)))

(declare-fun res!705115 () Bool)

(assert (=> b!1581504 (=> (not res!705115) (not e!1015907))))

(assert (=> b!1581504 (= res!705115 (matchR!1910 (regex!3061 (rule!4857 lt!552938)) (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553996))))))))

(declare-fun b!1581505 () Bool)

(declare-fun res!705117 () Bool)

(assert (=> b!1581505 (=> (not res!705117) (not e!1015907))))

(assert (=> b!1581505 (= res!705117 (= (++!4511 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!553996)))) (_2!9822 (get!4964 lt!553996))) lt!552944))))

(declare-fun b!1581506 () Bool)

(assert (=> b!1581506 (= e!1015908 (matchR!1910 (regex!3061 (rule!4857 lt!552938)) (_1!9828 (findLongestMatchInner!349 (regex!3061 (rule!4857 lt!552938)) Nil!17369 (size!13973 Nil!17369) lt!552944 lt!552944 (size!13973 lt!552944)))))))

(declare-fun b!1581507 () Bool)

(declare-fun res!705112 () Bool)

(assert (=> b!1581507 (=> (not res!705112) (not e!1015907))))

(assert (=> b!1581507 (= res!705112 (= (value!96911 (_1!9822 (get!4964 lt!553996))) (apply!4212 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!553996)))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!553996)))))))))

(declare-fun b!1581508 () Bool)

(assert (=> b!1581508 (= e!1015905 None!3113)))

(assert (= (and d!470125 c!256332) b!1581508))

(assert (= (and d!470125 (not c!256332)) b!1581502))

(assert (= (and b!1581502 (not res!705111)) b!1581506))

(assert (= (and d!470125 (not res!705116)) b!1581504))

(assert (= (and b!1581504 res!705115) b!1581505))

(assert (= (and b!1581505 res!705117) b!1581503))

(assert (= (and b!1581503 res!705113) b!1581501))

(assert (= (and b!1581501 res!705114) b!1581507))

(assert (= (and b!1581507 res!705112) b!1581500))

(declare-fun m!1866343 () Bool)

(assert (=> b!1581504 m!1866343))

(declare-fun m!1866345 () Bool)

(assert (=> b!1581504 m!1866345))

(assert (=> b!1581504 m!1866345))

(declare-fun m!1866347 () Bool)

(assert (=> b!1581504 m!1866347))

(assert (=> b!1581504 m!1866347))

(declare-fun m!1866349 () Bool)

(assert (=> b!1581504 m!1866349))

(assert (=> b!1581501 m!1866343))

(assert (=> b!1581500 m!1866343))

(declare-fun m!1866351 () Bool)

(assert (=> b!1581500 m!1866351))

(assert (=> b!1581506 m!1865865))

(declare-fun m!1866353 () Bool)

(assert (=> b!1581506 m!1866353))

(assert (=> b!1581506 m!1865865))

(assert (=> b!1581506 m!1866353))

(declare-fun m!1866355 () Bool)

(assert (=> b!1581506 m!1866355))

(declare-fun m!1866357 () Bool)

(assert (=> b!1581506 m!1866357))

(assert (=> b!1581507 m!1866343))

(declare-fun m!1866359 () Bool)

(assert (=> b!1581507 m!1866359))

(assert (=> b!1581507 m!1866359))

(declare-fun m!1866361 () Bool)

(assert (=> b!1581507 m!1866361))

(assert (=> b!1581503 m!1866343))

(declare-fun m!1866363 () Bool)

(assert (=> b!1581503 m!1866363))

(assert (=> b!1581503 m!1866353))

(declare-fun m!1866365 () Bool)

(assert (=> b!1581502 m!1866365))

(declare-fun m!1866367 () Bool)

(assert (=> b!1581502 m!1866367))

(declare-fun m!1866369 () Bool)

(assert (=> b!1581502 m!1866369))

(assert (=> b!1581502 m!1866365))

(assert (=> b!1581502 m!1866353))

(assert (=> b!1581502 m!1866365))

(declare-fun m!1866371 () Bool)

(assert (=> b!1581502 m!1866371))

(assert (=> b!1581502 m!1865865))

(declare-fun m!1866373 () Bool)

(assert (=> b!1581502 m!1866373))

(assert (=> b!1581502 m!1866365))

(declare-fun m!1866375 () Bool)

(assert (=> b!1581502 m!1866375))

(assert (=> b!1581502 m!1865865))

(assert (=> b!1581502 m!1866353))

(assert (=> b!1581502 m!1866355))

(assert (=> b!1581505 m!1866343))

(assert (=> b!1581505 m!1866345))

(assert (=> b!1581505 m!1866345))

(assert (=> b!1581505 m!1866347))

(assert (=> b!1581505 m!1866347))

(declare-fun m!1866377 () Bool)

(assert (=> b!1581505 m!1866377))

(declare-fun m!1866379 () Bool)

(assert (=> d!470125 m!1866379))

(declare-fun m!1866381 () Bool)

(assert (=> d!470125 m!1866381))

(declare-fun m!1866383 () Bool)

(assert (=> d!470125 m!1866383))

(declare-fun m!1866385 () Bool)

(assert (=> d!470125 m!1866385))

(assert (=> b!1580144 d!470125))

(assert (=> b!1580144 d!469417))

(declare-fun d!470135 () Bool)

(assert (=> d!470135 (isEmpty!10382 (maxPrefixOneRule!725 thiss!17113 (rule!4857 lt!552938) lt!552944))))

(declare-fun lt!554003 () Unit!27015)

(declare-fun choose!9462 (LexerInterface!2690 Rule!5922 List!17442 List!17439) Unit!27015)

(assert (=> d!470135 (= lt!554003 (choose!9462 thiss!17113 (rule!4857 lt!552938) rules!1846 lt!552944))))

(assert (=> d!470135 (not (isEmpty!10379 rules!1846))))

(assert (=> d!470135 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!128 thiss!17113 (rule!4857 lt!552938) rules!1846 lt!552944) lt!554003)))

(declare-fun bs!391016 () Bool)

(assert (= bs!391016 d!470135))

(assert (=> bs!391016 m!1863305))

(assert (=> bs!391016 m!1863305))

(assert (=> bs!391016 m!1863307))

(declare-fun m!1866391 () Bool)

(assert (=> bs!391016 m!1866391))

(assert (=> bs!391016 m!1863063))

(assert (=> b!1580144 d!470135))

(assert (=> b!1580144 d!469737))

(declare-fun b!1581510 () Bool)

(declare-fun res!705123 () Bool)

(declare-fun e!1015911 () Bool)

(assert (=> b!1581510 (=> (not res!705123) (not e!1015911))))

(assert (=> b!1581510 (= res!705123 (isEmpty!10386 (tail!2254 lt!552931)))))

(declare-fun d!470143 () Bool)

(declare-fun e!1015913 () Bool)

(assert (=> d!470143 e!1015913))

(declare-fun c!256333 () Bool)

(assert (=> d!470143 (= c!256333 ((_ is EmptyExpr!4389) (regex!3061 (rule!4857 lt!552938))))))

(declare-fun lt!554004 () Bool)

(declare-fun e!1015915 () Bool)

(assert (=> d!470143 (= lt!554004 e!1015915)))

(declare-fun c!256334 () Bool)

(assert (=> d!470143 (= c!256334 (isEmpty!10386 lt!552931))))

(assert (=> d!470143 (validRegex!1731 (regex!3061 (rule!4857 lt!552938)))))

(assert (=> d!470143 (= (matchR!1910 (regex!3061 (rule!4857 lt!552938)) lt!552931) lt!554004)))

(declare-fun b!1581511 () Bool)

(declare-fun e!1015914 () Bool)

(assert (=> b!1581511 (= e!1015913 e!1015914)))

(declare-fun c!256335 () Bool)

(assert (=> b!1581511 (= c!256335 ((_ is EmptyLang!4389) (regex!3061 (rule!4857 lt!552938))))))

(declare-fun b!1581512 () Bool)

(declare-fun call!102718 () Bool)

(assert (=> b!1581512 (= e!1015913 (= lt!554004 call!102718))))

(declare-fun b!1581513 () Bool)

(assert (=> b!1581513 (= e!1015911 (= (head!3188 lt!552931) (c!256022 (regex!3061 (rule!4857 lt!552938)))))))

(declare-fun bm!102713 () Bool)

(assert (=> bm!102713 (= call!102718 (isEmpty!10386 lt!552931))))

(declare-fun b!1581514 () Bool)

(declare-fun e!1015910 () Bool)

(declare-fun e!1015912 () Bool)

(assert (=> b!1581514 (= e!1015910 e!1015912)))

(declare-fun res!705125 () Bool)

(assert (=> b!1581514 (=> (not res!705125) (not e!1015912))))

(assert (=> b!1581514 (= res!705125 (not lt!554004))))

(declare-fun b!1581515 () Bool)

(declare-fun e!1015916 () Bool)

(assert (=> b!1581515 (= e!1015916 (not (= (head!3188 lt!552931) (c!256022 (regex!3061 (rule!4857 lt!552938))))))))

(declare-fun b!1581516 () Bool)

(assert (=> b!1581516 (= e!1015914 (not lt!554004))))

(declare-fun b!1581517 () Bool)

(declare-fun res!705124 () Bool)

(assert (=> b!1581517 (=> res!705124 e!1015910)))

(assert (=> b!1581517 (= res!705124 e!1015911)))

(declare-fun res!705120 () Bool)

(assert (=> b!1581517 (=> (not res!705120) (not e!1015911))))

(assert (=> b!1581517 (= res!705120 lt!554004)))

(declare-fun b!1581518 () Bool)

(assert (=> b!1581518 (= e!1015915 (matchR!1910 (derivativeStep!1041 (regex!3061 (rule!4857 lt!552938)) (head!3188 lt!552931)) (tail!2254 lt!552931)))))

(declare-fun b!1581519 () Bool)

(declare-fun res!705122 () Bool)

(assert (=> b!1581519 (=> (not res!705122) (not e!1015911))))

(assert (=> b!1581519 (= res!705122 (not call!102718))))

(declare-fun b!1581520 () Bool)

(declare-fun res!705121 () Bool)

(assert (=> b!1581520 (=> res!705121 e!1015916)))

(assert (=> b!1581520 (= res!705121 (not (isEmpty!10386 (tail!2254 lt!552931))))))

(declare-fun b!1581521 () Bool)

(assert (=> b!1581521 (= e!1015915 (nullable!1290 (regex!3061 (rule!4857 lt!552938))))))

(declare-fun b!1581522 () Bool)

(declare-fun res!705119 () Bool)

(assert (=> b!1581522 (=> res!705119 e!1015910)))

(assert (=> b!1581522 (= res!705119 (not ((_ is ElementMatch!4389) (regex!3061 (rule!4857 lt!552938)))))))

(assert (=> b!1581522 (= e!1015914 e!1015910)))

(declare-fun b!1581523 () Bool)

(assert (=> b!1581523 (= e!1015912 e!1015916)))

(declare-fun res!705126 () Bool)

(assert (=> b!1581523 (=> res!705126 e!1015916)))

(assert (=> b!1581523 (= res!705126 call!102718)))

(assert (= (and d!470143 c!256334) b!1581521))

(assert (= (and d!470143 (not c!256334)) b!1581518))

(assert (= (and d!470143 c!256333) b!1581512))

(assert (= (and d!470143 (not c!256333)) b!1581511))

(assert (= (and b!1581511 c!256335) b!1581516))

(assert (= (and b!1581511 (not c!256335)) b!1581522))

(assert (= (and b!1581522 (not res!705119)) b!1581517))

(assert (= (and b!1581517 res!705120) b!1581519))

(assert (= (and b!1581519 res!705122) b!1581510))

(assert (= (and b!1581510 res!705123) b!1581513))

(assert (= (and b!1581517 (not res!705124)) b!1581514))

(assert (= (and b!1581514 res!705125) b!1581523))

(assert (= (and b!1581523 (not res!705126)) b!1581520))

(assert (= (and b!1581520 (not res!705121)) b!1581515))

(assert (= (or b!1581512 b!1581519 b!1581523) bm!102713))

(declare-fun m!1866393 () Bool)

(assert (=> bm!102713 m!1866393))

(declare-fun m!1866395 () Bool)

(assert (=> b!1581520 m!1866395))

(assert (=> b!1581520 m!1866395))

(declare-fun m!1866397 () Bool)

(assert (=> b!1581520 m!1866397))

(declare-fun m!1866399 () Bool)

(assert (=> b!1581518 m!1866399))

(assert (=> b!1581518 m!1866399))

(declare-fun m!1866401 () Bool)

(assert (=> b!1581518 m!1866401))

(assert (=> b!1581518 m!1866395))

(assert (=> b!1581518 m!1866401))

(assert (=> b!1581518 m!1866395))

(declare-fun m!1866403 () Bool)

(assert (=> b!1581518 m!1866403))

(assert (=> b!1581510 m!1866395))

(assert (=> b!1581510 m!1866395))

(assert (=> b!1581510 m!1866397))

(assert (=> d!470143 m!1866393))

(declare-fun m!1866405 () Bool)

(assert (=> d!470143 m!1866405))

(assert (=> b!1581513 m!1866399))

(declare-fun m!1866407 () Bool)

(assert (=> b!1581521 m!1866407))

(assert (=> b!1581515 m!1866399))

(assert (=> b!1580144 d!470143))

(declare-fun d!470145 () Bool)

(assert (=> d!470145 (= (list!6715 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457)))) (list!6719 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457))))))))

(declare-fun bs!391017 () Bool)

(assert (= bs!391017 d!470145))

(declare-fun m!1866409 () Bool)

(assert (=> bs!391017 m!1866409))

(assert (=> b!1580480 d!470145))

(declare-fun d!470147 () Bool)

(assert (=> d!470147 (= (list!6716 (_1!9823 lt!553014)) (list!6720 (c!256023 (_1!9823 lt!553014))))))

(declare-fun bs!391018 () Bool)

(assert (= bs!391018 d!470147))

(declare-fun m!1866411 () Bool)

(assert (=> bs!391018 m!1866411))

(assert (=> b!1580240 d!470147))

(assert (=> b!1580240 d!469555))

(assert (=> b!1580240 d!469557))

(declare-fun bs!391019 () Bool)

(declare-fun d!470149 () Bool)

(assert (= bs!391019 (and d!470149 d!469613)))

(declare-fun lambda!66482 () Int)

(assert (=> bs!391019 (= (and (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toChars!4323 (transformation!3061 (h!22773 rules!1846)))) (= (toValue!4464 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toValue!4464 (transformation!3061 (h!22773 rules!1846))))) (= lambda!66482 lambda!66463))))

(assert (=> d!470149 true))

(assert (=> d!470149 (< (dynLambda!7694 order!10235 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457))))) (dynLambda!7697 order!10239 lambda!66482))))

(assert (=> d!470149 true))

(assert (=> d!470149 (< (dynLambda!7692 order!10231 (toValue!4464 (transformation!3061 (rule!4857 (h!22772 tokens!457))))) (dynLambda!7697 order!10239 lambda!66482))))

(assert (=> d!470149 (= (semiInverseModEq!1150 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toValue!4464 (transformation!3061 (rule!4857 (h!22772 tokens!457))))) (Forall!631 lambda!66482))))

(declare-fun bs!391020 () Bool)

(assert (= bs!391020 d!470149))

(declare-fun m!1866413 () Bool)

(assert (=> bs!391020 m!1866413))

(assert (=> d!469443 d!470149))

(declare-fun d!470151 () Bool)

(assert (=> d!470151 (= (head!3188 lt!552801) (h!22770 lt!552801))))

(assert (=> b!1580457 d!470151))

(declare-fun d!470153 () Bool)

(assert (=> d!470153 (= (head!3188 lt!552805) (h!22770 lt!552805))))

(assert (=> b!1580457 d!470153))

(declare-fun d!470155 () Bool)

(declare-fun lt!554005 () Token!5688)

(assert (=> d!470155 (= lt!554005 (apply!4214 (list!6716 (_1!9823 lt!553273)) 0))))

(assert (=> d!470155 (= lt!554005 (apply!4218 (c!256023 (_1!9823 lt!553273)) 0))))

(declare-fun e!1015917 () Bool)

(assert (=> d!470155 e!1015917))

(declare-fun res!705127 () Bool)

(assert (=> d!470155 (=> (not res!705127) (not e!1015917))))

(assert (=> d!470155 (= res!705127 (<= 0 0))))

(assert (=> d!470155 (= (apply!4209 (_1!9823 lt!553273) 0) lt!554005)))

(declare-fun b!1581524 () Bool)

(assert (=> b!1581524 (= e!1015917 (< 0 (size!13972 (_1!9823 lt!553273))))))

(assert (= (and d!470155 res!705127) b!1581524))

(declare-fun m!1866415 () Bool)

(assert (=> d!470155 m!1866415))

(assert (=> d!470155 m!1866415))

(declare-fun m!1866417 () Bool)

(assert (=> d!470155 m!1866417))

(declare-fun m!1866419 () Bool)

(assert (=> d!470155 m!1866419))

(assert (=> b!1581524 m!1864013))

(assert (=> b!1580485 d!470155))

(assert (=> d!469505 d!469655))

(declare-fun d!470157 () Bool)

(declare-fun lt!554006 () Int)

(assert (=> d!470157 (= lt!554006 (size!13975 (list!6716 (_1!9823 lt!553273))))))

(assert (=> d!470157 (= lt!554006 (size!13976 (c!256023 (_1!9823 lt!553273))))))

(assert (=> d!470157 (= (size!13972 (_1!9823 lt!553273)) lt!554006)))

(declare-fun bs!391021 () Bool)

(assert (= bs!391021 d!470157))

(assert (=> bs!391021 m!1866415))

(assert (=> bs!391021 m!1866415))

(declare-fun m!1866421 () Bool)

(assert (=> bs!391021 m!1866421))

(declare-fun m!1866423 () Bool)

(assert (=> bs!391021 m!1866423))

(assert (=> d!469505 d!470157))

(assert (=> d!469505 d!469341))

(assert (=> d!469505 d!469653))

(declare-fun d!470159 () Bool)

(assert (=> d!470159 (= (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457)))))) (list!6720 (c!256023 (_1!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 tokens!457))))))))))

(declare-fun bs!391022 () Bool)

(assert (= bs!391022 d!470159))

(declare-fun m!1866425 () Bool)

(assert (=> bs!391022 m!1866425))

(assert (=> d!469505 d!470159))

(declare-fun d!470161 () Bool)

(assert (=> d!470161 (= (list!6716 (singletonSeq!1399 (h!22772 tokens!457))) (list!6720 (c!256023 (singletonSeq!1399 (h!22772 tokens!457)))))))

(declare-fun bs!391023 () Bool)

(assert (= bs!391023 d!470161))

(declare-fun m!1866427 () Bool)

(assert (=> bs!391023 m!1866427))

(assert (=> d!469505 d!470161))

(assert (=> d!469505 d!469377))

(declare-fun d!470163 () Bool)

(declare-fun lt!554007 () Int)

(assert (=> d!470163 (>= lt!554007 0)))

(declare-fun e!1015918 () Int)

(assert (=> d!470163 (= lt!554007 e!1015918)))

(declare-fun c!256336 () Bool)

(assert (=> d!470163 (= c!256336 ((_ is Nil!17369) (_2!9822 (get!4964 lt!552968))))))

(assert (=> d!470163 (= (size!13973 (_2!9822 (get!4964 lt!552968))) lt!554007)))

(declare-fun b!1581525 () Bool)

(assert (=> b!1581525 (= e!1015918 0)))

(declare-fun b!1581526 () Bool)

(assert (=> b!1581526 (= e!1015918 (+ 1 (size!13973 (t!143640 (_2!9822 (get!4964 lt!552968))))))))

(assert (= (and d!470163 c!256336) b!1581525))

(assert (= (and d!470163 (not c!256336)) b!1581526))

(declare-fun m!1866429 () Bool)

(assert (=> b!1581526 m!1866429))

(assert (=> b!1580177 d!470163))

(assert (=> b!1580177 d!469527))

(declare-fun d!470165 () Bool)

(declare-fun lt!554008 () Int)

(assert (=> d!470165 (>= lt!554008 0)))

(declare-fun e!1015919 () Int)

(assert (=> d!470165 (= lt!554008 e!1015919)))

(declare-fun c!256337 () Bool)

(assert (=> d!470165 (= c!256337 ((_ is Nil!17369) lt!552796))))

(assert (=> d!470165 (= (size!13973 lt!552796) lt!554008)))

(declare-fun b!1581527 () Bool)

(assert (=> b!1581527 (= e!1015919 0)))

(declare-fun b!1581528 () Bool)

(assert (=> b!1581528 (= e!1015919 (+ 1 (size!13973 (t!143640 lt!552796))))))

(assert (= (and d!470165 c!256337) b!1581527))

(assert (= (and d!470165 (not c!256337)) b!1581528))

(declare-fun m!1866431 () Bool)

(assert (=> b!1581528 m!1866431))

(assert (=> b!1580177 d!470165))

(declare-fun b!1581529 () Bool)

(declare-fun e!1015921 () Bool)

(declare-fun e!1015920 () Bool)

(assert (=> b!1581529 (= e!1015921 e!1015920)))

(declare-fun res!705130 () Bool)

(declare-fun lt!554009 () tuple2!16842)

(assert (=> b!1581529 (= res!705130 (< (size!13974 (_2!9823 lt!554009)) (size!13974 lt!553238)))))

(assert (=> b!1581529 (=> (not res!705130) (not e!1015920))))

(declare-fun b!1581530 () Bool)

(assert (=> b!1581530 (= e!1015920 (not (isEmpty!10378 (_1!9823 lt!554009))))))

(declare-fun e!1015922 () Bool)

(declare-fun b!1581531 () Bool)

(assert (=> b!1581531 (= e!1015922 (= (list!6715 (_2!9823 lt!554009)) (_2!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 lt!553238)))))))

(declare-fun d!470167 () Bool)

(assert (=> d!470167 e!1015922))

(declare-fun res!705129 () Bool)

(assert (=> d!470167 (=> (not res!705129) (not e!1015922))))

(assert (=> d!470167 (= res!705129 e!1015921)))

(declare-fun c!256338 () Bool)

(assert (=> d!470167 (= c!256338 (> (size!13972 (_1!9823 lt!554009)) 0))))

(assert (=> d!470167 (= lt!554009 (lexTailRecV2!502 thiss!17113 rules!1846 lt!553238 (BalanceConc!11485 Empty!5770) lt!553238 (BalanceConc!11487 Empty!5771)))))

(assert (=> d!470167 (= (lex!1174 thiss!17113 rules!1846 lt!553238) lt!554009)))

(declare-fun b!1581532 () Bool)

(declare-fun res!705128 () Bool)

(assert (=> b!1581532 (=> (not res!705128) (not e!1015922))))

(assert (=> b!1581532 (= res!705128 (= (list!6716 (_1!9823 lt!554009)) (_1!9825 (lexList!779 thiss!17113 rules!1846 (list!6715 lt!553238)))))))

(declare-fun b!1581533 () Bool)

(assert (=> b!1581533 (= e!1015921 (= (_2!9823 lt!554009) lt!553238))))

(assert (= (and d!470167 c!256338) b!1581529))

(assert (= (and d!470167 (not c!256338)) b!1581533))

(assert (= (and b!1581529 res!705130) b!1581530))

(assert (= (and d!470167 res!705129) b!1581532))

(assert (= (and b!1581532 res!705128) b!1581531))

(declare-fun m!1866433 () Bool)

(assert (=> b!1581529 m!1866433))

(declare-fun m!1866435 () Bool)

(assert (=> b!1581529 m!1866435))

(declare-fun m!1866437 () Bool)

(assert (=> b!1581531 m!1866437))

(assert (=> b!1581531 m!1863887))

(assert (=> b!1581531 m!1863887))

(declare-fun m!1866439 () Bool)

(assert (=> b!1581531 m!1866439))

(declare-fun m!1866441 () Bool)

(assert (=> d!470167 m!1866441))

(declare-fun m!1866443 () Bool)

(assert (=> d!470167 m!1866443))

(declare-fun m!1866445 () Bool)

(assert (=> b!1581530 m!1866445))

(declare-fun m!1866447 () Bool)

(assert (=> b!1581532 m!1866447))

(assert (=> b!1581532 m!1863887))

(assert (=> b!1581532 m!1863887))

(assert (=> b!1581532 m!1866439))

(assert (=> b!1580446 d!470167))

(declare-fun d!470169 () Bool)

(assert (=> d!470169 (= (isDefined!2493 (maxPrefix!1254 thiss!17113 rules!1846 (originalCharacters!3875 (h!22772 (t!143642 tokens!457))))) (not (isEmpty!10382 (maxPrefix!1254 thiss!17113 rules!1846 (originalCharacters!3875 (h!22772 (t!143642 tokens!457)))))))))

(declare-fun bs!391024 () Bool)

(assert (= bs!391024 d!470169))

(assert (=> bs!391024 m!1863929))

(declare-fun m!1866449 () Bool)

(assert (=> bs!391024 m!1866449))

(assert (=> b!1580446 d!470169))

(declare-fun b!1581534 () Bool)

(declare-fun res!705135 () Bool)

(declare-fun e!1015924 () Bool)

(assert (=> b!1581534 (=> (not res!705135) (not e!1015924))))

(assert (=> b!1581534 (= res!705135 (isEmpty!10386 (tail!2254 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))))

(declare-fun d!470171 () Bool)

(declare-fun e!1015926 () Bool)

(assert (=> d!470171 e!1015926))

(declare-fun c!256339 () Bool)

(assert (=> d!470171 (= c!256339 ((_ is EmptyExpr!4389) (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))))

(declare-fun lt!554010 () Bool)

(declare-fun e!1015928 () Bool)

(assert (=> d!470171 (= lt!554010 e!1015928)))

(declare-fun c!256340 () Bool)

(assert (=> d!470171 (= c!256340 (isEmpty!10386 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!470171 (validRegex!1731 (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))))

(assert (=> d!470171 (= (matchR!1910 (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))) (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))) lt!554010)))

(declare-fun b!1581535 () Bool)

(declare-fun e!1015927 () Bool)

(assert (=> b!1581535 (= e!1015926 e!1015927)))

(declare-fun c!256341 () Bool)

(assert (=> b!1581535 (= c!256341 ((_ is EmptyLang!4389) (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))))

(declare-fun b!1581536 () Bool)

(declare-fun call!102719 () Bool)

(assert (=> b!1581536 (= e!1015926 (= lt!554010 call!102719))))

(declare-fun b!1581537 () Bool)

(assert (=> b!1581537 (= e!1015924 (= (head!3188 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))) (c!256022 (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))))))

(declare-fun bm!102714 () Bool)

(assert (=> bm!102714 (= call!102719 (isEmpty!10386 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(declare-fun b!1581538 () Bool)

(declare-fun e!1015923 () Bool)

(declare-fun e!1015925 () Bool)

(assert (=> b!1581538 (= e!1015923 e!1015925)))

(declare-fun res!705137 () Bool)

(assert (=> b!1581538 (=> (not res!705137) (not e!1015925))))

(assert (=> b!1581538 (= res!705137 (not lt!554010))))

(declare-fun b!1581539 () Bool)

(declare-fun e!1015929 () Bool)

(assert (=> b!1581539 (= e!1015929 (not (= (head!3188 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))) (c!256022 (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))))))

(declare-fun b!1581540 () Bool)

(assert (=> b!1581540 (= e!1015927 (not lt!554010))))

(declare-fun b!1581541 () Bool)

(declare-fun res!705136 () Bool)

(assert (=> b!1581541 (=> res!705136 e!1015923)))

(assert (=> b!1581541 (= res!705136 e!1015924)))

(declare-fun res!705132 () Bool)

(assert (=> b!1581541 (=> (not res!705132) (not e!1015924))))

(assert (=> b!1581541 (= res!705132 lt!554010)))

(declare-fun b!1581542 () Bool)

(assert (=> b!1581542 (= e!1015928 (matchR!1910 (derivativeStep!1041 (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))) (head!3188 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))) (tail!2254 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))))

(declare-fun b!1581543 () Bool)

(declare-fun res!705134 () Bool)

(assert (=> b!1581543 (=> (not res!705134) (not e!1015924))))

(assert (=> b!1581543 (= res!705134 (not call!102719))))

(declare-fun b!1581544 () Bool)

(declare-fun res!705133 () Bool)

(assert (=> b!1581544 (=> res!705133 e!1015929)))

(assert (=> b!1581544 (= res!705133 (not (isEmpty!10386 (tail!2254 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))))

(declare-fun b!1581545 () Bool)

(assert (=> b!1581545 (= e!1015928 (nullable!1290 (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))))

(declare-fun b!1581546 () Bool)

(declare-fun res!705131 () Bool)

(assert (=> b!1581546 (=> res!705131 e!1015923)))

(assert (=> b!1581546 (= res!705131 (not ((_ is ElementMatch!4389) (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))))))

(assert (=> b!1581546 (= e!1015927 e!1015923)))

(declare-fun b!1581547 () Bool)

(assert (=> b!1581547 (= e!1015925 e!1015929)))

(declare-fun res!705138 () Bool)

(assert (=> b!1581547 (=> res!705138 e!1015929)))

(assert (=> b!1581547 (= res!705138 call!102719)))

(assert (= (and d!470171 c!256340) b!1581545))

(assert (= (and d!470171 (not c!256340)) b!1581542))

(assert (= (and d!470171 c!256339) b!1581536))

(assert (= (and d!470171 (not c!256339)) b!1581535))

(assert (= (and b!1581535 c!256341) b!1581540))

(assert (= (and b!1581535 (not c!256341)) b!1581546))

(assert (= (and b!1581546 (not res!705131)) b!1581541))

(assert (= (and b!1581541 res!705132) b!1581543))

(assert (= (and b!1581543 res!705134) b!1581534))

(assert (= (and b!1581534 res!705135) b!1581537))

(assert (= (and b!1581541 (not res!705136)) b!1581538))

(assert (= (and b!1581538 res!705137) b!1581547))

(assert (= (and b!1581547 (not res!705138)) b!1581544))

(assert (= (and b!1581544 (not res!705133)) b!1581539))

(assert (= (or b!1581536 b!1581543 b!1581547) bm!102714))

(assert (=> bm!102714 m!1863613))

(assert (=> bm!102714 m!1863615))

(assert (=> b!1581544 m!1863613))

(declare-fun m!1866451 () Bool)

(assert (=> b!1581544 m!1866451))

(assert (=> b!1581544 m!1866451))

(declare-fun m!1866453 () Bool)

(assert (=> b!1581544 m!1866453))

(assert (=> b!1581542 m!1863613))

(declare-fun m!1866455 () Bool)

(assert (=> b!1581542 m!1866455))

(assert (=> b!1581542 m!1866455))

(declare-fun m!1866457 () Bool)

(assert (=> b!1581542 m!1866457))

(assert (=> b!1581542 m!1863613))

(assert (=> b!1581542 m!1866451))

(assert (=> b!1581542 m!1866457))

(assert (=> b!1581542 m!1866451))

(declare-fun m!1866459 () Bool)

(assert (=> b!1581542 m!1866459))

(assert (=> b!1581534 m!1863613))

(assert (=> b!1581534 m!1866451))

(assert (=> b!1581534 m!1866451))

(assert (=> b!1581534 m!1866453))

(assert (=> d!470171 m!1863613))

(assert (=> d!470171 m!1863615))

(declare-fun m!1866461 () Bool)

(assert (=> d!470171 m!1866461))

(assert (=> b!1581537 m!1863613))

(assert (=> b!1581537 m!1866455))

(declare-fun m!1866463 () Bool)

(assert (=> b!1581545 m!1866463))

(assert (=> b!1581539 m!1863613))

(assert (=> b!1581539 m!1866455))

(assert (=> b!1580446 d!470171))

(declare-fun d!470173 () Bool)

(assert (=> d!470173 (= (list!6716 (_1!9823 lt!553251)) (list!6720 (c!256023 (_1!9823 lt!553251))))))

(declare-fun bs!391025 () Bool)

(assert (= bs!391025 d!470173))

(declare-fun m!1866465 () Bool)

(assert (=> bs!391025 m!1866465))

(assert (=> b!1580446 d!470173))

(declare-fun d!470175 () Bool)

(assert (=> d!470175 (= (head!3188 (list!6715 lt!553238)) (h!22770 (list!6715 lt!553238)))))

(assert (=> b!1580446 d!470175))

(declare-fun d!470177 () Bool)

(declare-fun e!1015930 () Bool)

(assert (=> d!470177 e!1015930))

(declare-fun res!705139 () Bool)

(assert (=> d!470177 (=> (not res!705139) (not e!1015930))))

(assert (=> d!470177 (= res!705139 (isBalanced!1691 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 (t!143642 tokens!457))))) (h!22772 (t!143642 (t!143642 tokens!457))))))))

(declare-fun lt!554011 () BalanceConc!11486)

(assert (=> d!470177 (= lt!554011 (BalanceConc!11487 (prepend!539 (c!256023 (seqFromList!1871 (t!143642 (t!143642 (t!143642 tokens!457))))) (h!22772 (t!143642 (t!143642 tokens!457))))))))

(assert (=> d!470177 (= (prepend!537 (seqFromList!1871 (t!143642 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 (t!143642 tokens!457)))) lt!554011)))

(declare-fun b!1581548 () Bool)

(assert (=> b!1581548 (= e!1015930 (= (list!6716 lt!554011) (Cons!17371 (h!22772 (t!143642 (t!143642 tokens!457))) (list!6716 (seqFromList!1871 (t!143642 (t!143642 (t!143642 tokens!457))))))))))

(assert (= (and d!470177 res!705139) b!1581548))

(declare-fun m!1866467 () Bool)

(assert (=> d!470177 m!1866467))

(assert (=> d!470177 m!1866467))

(declare-fun m!1866469 () Bool)

(assert (=> d!470177 m!1866469))

(declare-fun m!1866471 () Bool)

(assert (=> b!1581548 m!1866471))

(assert (=> b!1581548 m!1863909))

(declare-fun m!1866473 () Bool)

(assert (=> b!1581548 m!1866473))

(assert (=> b!1580446 d!470177))

(assert (=> b!1580446 d!469503))

(declare-fun d!470179 () Bool)

(assert (=> d!470179 (= (seqFromList!1871 (t!143642 (t!143642 (t!143642 tokens!457)))) (fromListB!794 (t!143642 (t!143642 (t!143642 tokens!457)))))))

(declare-fun bs!391026 () Bool)

(assert (= bs!391026 d!470179))

(declare-fun m!1866475 () Bool)

(assert (=> bs!391026 m!1866475))

(assert (=> b!1580446 d!470179))

(declare-fun d!470181 () Bool)

(declare-fun lt!554012 () C!8952)

(assert (=> d!470181 (= lt!554012 (apply!4216 (list!6715 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457))))) 0))))

(assert (=> d!470181 (= lt!554012 (apply!4217 (c!256021 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457))))) 0))))

(declare-fun e!1015931 () Bool)

(assert (=> d!470181 e!1015931))

(declare-fun res!705140 () Bool)

(assert (=> d!470181 (=> (not res!705140) (not e!1015931))))

(assert (=> d!470181 (= res!705140 (<= 0 0))))

(assert (=> d!470181 (= (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))) 0) lt!554012)))

(declare-fun b!1581549 () Bool)

(assert (=> b!1581549 (= e!1015931 (< 0 (size!13974 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))))))))

(assert (= (and d!470181 res!705140) b!1581549))

(assert (=> d!470181 m!1863933))

(declare-fun m!1866477 () Bool)

(assert (=> d!470181 m!1866477))

(assert (=> d!470181 m!1866477))

(declare-fun m!1866479 () Bool)

(assert (=> d!470181 m!1866479))

(declare-fun m!1866481 () Bool)

(assert (=> d!470181 m!1866481))

(assert (=> b!1581549 m!1863933))

(declare-fun m!1866483 () Bool)

(assert (=> b!1581549 m!1866483))

(assert (=> b!1580446 d!470181))

(declare-fun b!1581550 () Bool)

(declare-fun e!1015933 () Bool)

(declare-fun e!1015932 () Bool)

(assert (=> b!1581550 (= e!1015933 e!1015932)))

(declare-fun res!705144 () Bool)

(assert (=> b!1581550 (=> (not res!705144) (not e!1015932))))

(declare-fun lt!554017 () Option!3114)

(assert (=> b!1581550 (= res!705144 (isDefined!2493 lt!554017))))

(declare-fun b!1581551 () Bool)

(declare-fun e!1015934 () Option!3114)

(declare-fun lt!554015 () Option!3114)

(declare-fun lt!554014 () Option!3114)

(assert (=> b!1581551 (= e!1015934 (ite (and ((_ is None!3113) lt!554015) ((_ is None!3113) lt!554014)) None!3113 (ite ((_ is None!3113) lt!554014) lt!554015 (ite ((_ is None!3113) lt!554015) lt!554014 (ite (>= (size!13968 (_1!9822 (v!23950 lt!554015))) (size!13968 (_1!9822 (v!23950 lt!554014)))) lt!554015 lt!554014)))))))

(declare-fun call!102720 () Option!3114)

(assert (=> b!1581551 (= lt!554015 call!102720)))

(assert (=> b!1581551 (= lt!554014 (maxPrefix!1254 thiss!17113 (t!143643 rules!1846) (originalCharacters!3875 (h!22772 (t!143642 tokens!457)))))))

(declare-fun b!1581552 () Bool)

(declare-fun res!705147 () Bool)

(assert (=> b!1581552 (=> (not res!705147) (not e!1015932))))

(assert (=> b!1581552 (= res!705147 (matchR!1910 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!554017)))) (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!554017))))))))

(declare-fun b!1581553 () Bool)

(assert (=> b!1581553 (= e!1015932 (contains!3026 rules!1846 (rule!4857 (_1!9822 (get!4964 lt!554017)))))))

(declare-fun b!1581554 () Bool)

(declare-fun res!705145 () Bool)

(assert (=> b!1581554 (=> (not res!705145) (not e!1015932))))

(assert (=> b!1581554 (= res!705145 (< (size!13973 (_2!9822 (get!4964 lt!554017))) (size!13973 (originalCharacters!3875 (h!22772 (t!143642 tokens!457))))))))

(declare-fun b!1581555 () Bool)

(assert (=> b!1581555 (= e!1015934 call!102720)))

(declare-fun b!1581556 () Bool)

(declare-fun res!705143 () Bool)

(assert (=> b!1581556 (=> (not res!705143) (not e!1015932))))

(assert (=> b!1581556 (= res!705143 (= (value!96911 (_1!9822 (get!4964 lt!554017))) (apply!4212 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!554017)))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!554017)))))))))

(declare-fun b!1581557 () Bool)

(declare-fun res!705146 () Bool)

(assert (=> b!1581557 (=> (not res!705146) (not e!1015932))))

(assert (=> b!1581557 (= res!705146 (= (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!554017)))) (originalCharacters!3875 (_1!9822 (get!4964 lt!554017)))))))

(declare-fun b!1581558 () Bool)

(declare-fun res!705142 () Bool)

(assert (=> b!1581558 (=> (not res!705142) (not e!1015932))))

(assert (=> b!1581558 (= res!705142 (= (++!4511 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!554017)))) (_2!9822 (get!4964 lt!554017))) (originalCharacters!3875 (h!22772 (t!143642 tokens!457)))))))

(declare-fun bm!102715 () Bool)

(assert (=> bm!102715 (= call!102720 (maxPrefixOneRule!725 thiss!17113 (h!22773 rules!1846) (originalCharacters!3875 (h!22772 (t!143642 tokens!457)))))))

(declare-fun d!470183 () Bool)

(assert (=> d!470183 e!1015933))

(declare-fun res!705141 () Bool)

(assert (=> d!470183 (=> res!705141 e!1015933)))

(assert (=> d!470183 (= res!705141 (isEmpty!10382 lt!554017))))

(assert (=> d!470183 (= lt!554017 e!1015934)))

(declare-fun c!256342 () Bool)

(assert (=> d!470183 (= c!256342 (and ((_ is Cons!17372) rules!1846) ((_ is Nil!17372) (t!143643 rules!1846))))))

(declare-fun lt!554013 () Unit!27015)

(declare-fun lt!554016 () Unit!27015)

(assert (=> d!470183 (= lt!554013 lt!554016)))

(assert (=> d!470183 (isPrefix!1321 (originalCharacters!3875 (h!22772 (t!143642 tokens!457))) (originalCharacters!3875 (h!22772 (t!143642 tokens!457))))))

(assert (=> d!470183 (= lt!554016 (lemmaIsPrefixRefl!909 (originalCharacters!3875 (h!22772 (t!143642 tokens!457))) (originalCharacters!3875 (h!22772 (t!143642 tokens!457)))))))

(assert (=> d!470183 (rulesValidInductive!911 thiss!17113 rules!1846)))

(assert (=> d!470183 (= (maxPrefix!1254 thiss!17113 rules!1846 (originalCharacters!3875 (h!22772 (t!143642 tokens!457)))) lt!554017)))

(assert (= (and d!470183 c!256342) b!1581555))

(assert (= (and d!470183 (not c!256342)) b!1581551))

(assert (= (or b!1581555 b!1581551) bm!102715))

(assert (= (and d!470183 (not res!705141)) b!1581550))

(assert (= (and b!1581550 res!705144) b!1581557))

(assert (= (and b!1581557 res!705146) b!1581554))

(assert (= (and b!1581554 res!705145) b!1581558))

(assert (= (and b!1581558 res!705142) b!1581556))

(assert (= (and b!1581556 res!705143) b!1581552))

(assert (= (and b!1581552 res!705147) b!1581553))

(declare-fun m!1866485 () Bool)

(assert (=> b!1581551 m!1866485))

(declare-fun m!1866487 () Bool)

(assert (=> b!1581557 m!1866487))

(declare-fun m!1866489 () Bool)

(assert (=> b!1581557 m!1866489))

(assert (=> b!1581557 m!1866489))

(declare-fun m!1866491 () Bool)

(assert (=> b!1581557 m!1866491))

(declare-fun m!1866493 () Bool)

(assert (=> d!470183 m!1866493))

(declare-fun m!1866495 () Bool)

(assert (=> d!470183 m!1866495))

(declare-fun m!1866497 () Bool)

(assert (=> d!470183 m!1866497))

(assert (=> d!470183 m!1863391))

(assert (=> b!1581553 m!1866487))

(declare-fun m!1866499 () Bool)

(assert (=> b!1581553 m!1866499))

(declare-fun m!1866501 () Bool)

(assert (=> bm!102715 m!1866501))

(assert (=> b!1581556 m!1866487))

(declare-fun m!1866503 () Bool)

(assert (=> b!1581556 m!1866503))

(assert (=> b!1581556 m!1866503))

(declare-fun m!1866505 () Bool)

(assert (=> b!1581556 m!1866505))

(assert (=> b!1581558 m!1866487))

(assert (=> b!1581558 m!1866489))

(assert (=> b!1581558 m!1866489))

(assert (=> b!1581558 m!1866491))

(assert (=> b!1581558 m!1866491))

(declare-fun m!1866507 () Bool)

(assert (=> b!1581558 m!1866507))

(declare-fun m!1866509 () Bool)

(assert (=> b!1581550 m!1866509))

(assert (=> b!1581552 m!1866487))

(assert (=> b!1581552 m!1866489))

(assert (=> b!1581552 m!1866489))

(assert (=> b!1581552 m!1866491))

(assert (=> b!1581552 m!1866491))

(declare-fun m!1866511 () Bool)

(assert (=> b!1581552 m!1866511))

(assert (=> b!1581554 m!1866487))

(declare-fun m!1866513 () Bool)

(assert (=> b!1581554 m!1866513))

(assert (=> b!1581554 m!1864053))

(assert (=> b!1580446 d!470183))

(declare-fun b!1581559 () Bool)

(declare-fun e!1015936 () Bool)

(declare-fun e!1015935 () Bool)

(assert (=> b!1581559 (= e!1015936 e!1015935)))

(declare-fun res!705151 () Bool)

(assert (=> b!1581559 (=> (not res!705151) (not e!1015935))))

(declare-fun lt!554022 () Option!3114)

(assert (=> b!1581559 (= res!705151 (isDefined!2493 lt!554022))))

(declare-fun b!1581560 () Bool)

(declare-fun e!1015937 () Option!3114)

(declare-fun lt!554020 () Option!3114)

(declare-fun lt!554019 () Option!3114)

(assert (=> b!1581560 (= e!1015937 (ite (and ((_ is None!3113) lt!554020) ((_ is None!3113) lt!554019)) None!3113 (ite ((_ is None!3113) lt!554019) lt!554020 (ite ((_ is None!3113) lt!554020) lt!554019 (ite (>= (size!13968 (_1!9822 (v!23950 lt!554020))) (size!13968 (_1!9822 (v!23950 lt!554019)))) lt!554020 lt!554019)))))))

(declare-fun call!102721 () Option!3114)

(assert (=> b!1581560 (= lt!554020 call!102721)))

(assert (=> b!1581560 (= lt!554019 (maxPrefix!1254 thiss!17113 (t!143643 rules!1846) (list!6715 lt!553242)))))

(declare-fun b!1581561 () Bool)

(declare-fun res!705154 () Bool)

(assert (=> b!1581561 (=> (not res!705154) (not e!1015935))))

(assert (=> b!1581561 (= res!705154 (matchR!1910 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!554022)))) (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!554022))))))))

(declare-fun b!1581562 () Bool)

(assert (=> b!1581562 (= e!1015935 (contains!3026 rules!1846 (rule!4857 (_1!9822 (get!4964 lt!554022)))))))

(declare-fun b!1581563 () Bool)

(declare-fun res!705152 () Bool)

(assert (=> b!1581563 (=> (not res!705152) (not e!1015935))))

(assert (=> b!1581563 (= res!705152 (< (size!13973 (_2!9822 (get!4964 lt!554022))) (size!13973 (list!6715 lt!553242))))))

(declare-fun b!1581564 () Bool)

(assert (=> b!1581564 (= e!1015937 call!102721)))

(declare-fun b!1581565 () Bool)

(declare-fun res!705150 () Bool)

(assert (=> b!1581565 (=> (not res!705150) (not e!1015935))))

(assert (=> b!1581565 (= res!705150 (= (value!96911 (_1!9822 (get!4964 lt!554022))) (apply!4212 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!554022)))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!554022)))))))))

(declare-fun b!1581566 () Bool)

(declare-fun res!705153 () Bool)

(assert (=> b!1581566 (=> (not res!705153) (not e!1015935))))

(assert (=> b!1581566 (= res!705153 (= (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!554022)))) (originalCharacters!3875 (_1!9822 (get!4964 lt!554022)))))))

(declare-fun b!1581567 () Bool)

(declare-fun res!705149 () Bool)

(assert (=> b!1581567 (=> (not res!705149) (not e!1015935))))

(assert (=> b!1581567 (= res!705149 (= (++!4511 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!554022)))) (_2!9822 (get!4964 lt!554022))) (list!6715 lt!553242)))))

(declare-fun bm!102716 () Bool)

(assert (=> bm!102716 (= call!102721 (maxPrefixOneRule!725 thiss!17113 (h!22773 rules!1846) (list!6715 lt!553242)))))

(declare-fun d!470185 () Bool)

(assert (=> d!470185 e!1015936))

(declare-fun res!705148 () Bool)

(assert (=> d!470185 (=> res!705148 e!1015936)))

(assert (=> d!470185 (= res!705148 (isEmpty!10382 lt!554022))))

(assert (=> d!470185 (= lt!554022 e!1015937)))

(declare-fun c!256343 () Bool)

(assert (=> d!470185 (= c!256343 (and ((_ is Cons!17372) rules!1846) ((_ is Nil!17372) (t!143643 rules!1846))))))

(declare-fun lt!554018 () Unit!27015)

(declare-fun lt!554021 () Unit!27015)

(assert (=> d!470185 (= lt!554018 lt!554021)))

(assert (=> d!470185 (isPrefix!1321 (list!6715 lt!553242) (list!6715 lt!553242))))

(assert (=> d!470185 (= lt!554021 (lemmaIsPrefixRefl!909 (list!6715 lt!553242) (list!6715 lt!553242)))))

(assert (=> d!470185 (rulesValidInductive!911 thiss!17113 rules!1846)))

(assert (=> d!470185 (= (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 lt!553242)) lt!554022)))

(assert (= (and d!470185 c!256343) b!1581564))

(assert (= (and d!470185 (not c!256343)) b!1581560))

(assert (= (or b!1581564 b!1581560) bm!102716))

(assert (= (and d!470185 (not res!705148)) b!1581559))

(assert (= (and b!1581559 res!705151) b!1581566))

(assert (= (and b!1581566 res!705153) b!1581563))

(assert (= (and b!1581563 res!705152) b!1581567))

(assert (= (and b!1581567 res!705149) b!1581565))

(assert (= (and b!1581565 res!705150) b!1581561))

(assert (= (and b!1581561 res!705154) b!1581562))

(assert (=> b!1581560 m!1863891))

(declare-fun m!1866515 () Bool)

(assert (=> b!1581560 m!1866515))

(declare-fun m!1866517 () Bool)

(assert (=> b!1581566 m!1866517))

(declare-fun m!1866519 () Bool)

(assert (=> b!1581566 m!1866519))

(assert (=> b!1581566 m!1866519))

(declare-fun m!1866521 () Bool)

(assert (=> b!1581566 m!1866521))

(declare-fun m!1866523 () Bool)

(assert (=> d!470185 m!1866523))

(assert (=> d!470185 m!1863891))

(assert (=> d!470185 m!1863891))

(declare-fun m!1866525 () Bool)

(assert (=> d!470185 m!1866525))

(assert (=> d!470185 m!1863891))

(assert (=> d!470185 m!1863891))

(declare-fun m!1866527 () Bool)

(assert (=> d!470185 m!1866527))

(assert (=> d!470185 m!1863391))

(assert (=> b!1581562 m!1866517))

(declare-fun m!1866529 () Bool)

(assert (=> b!1581562 m!1866529))

(assert (=> bm!102716 m!1863891))

(declare-fun m!1866531 () Bool)

(assert (=> bm!102716 m!1866531))

(assert (=> b!1581565 m!1866517))

(declare-fun m!1866533 () Bool)

(assert (=> b!1581565 m!1866533))

(assert (=> b!1581565 m!1866533))

(declare-fun m!1866535 () Bool)

(assert (=> b!1581565 m!1866535))

(assert (=> b!1581567 m!1866517))

(assert (=> b!1581567 m!1866519))

(assert (=> b!1581567 m!1866519))

(assert (=> b!1581567 m!1866521))

(assert (=> b!1581567 m!1866521))

(declare-fun m!1866537 () Bool)

(assert (=> b!1581567 m!1866537))

(declare-fun m!1866539 () Bool)

(assert (=> b!1581559 m!1866539))

(assert (=> b!1581561 m!1866517))

(assert (=> b!1581561 m!1866519))

(assert (=> b!1581561 m!1866519))

(assert (=> b!1581561 m!1866521))

(assert (=> b!1581561 m!1866521))

(declare-fun m!1866541 () Bool)

(assert (=> b!1581561 m!1866541))

(assert (=> b!1581563 m!1866517))

(declare-fun m!1866543 () Bool)

(assert (=> b!1581563 m!1866543))

(assert (=> b!1581563 m!1863891))

(declare-fun m!1866545 () Bool)

(assert (=> b!1581563 m!1866545))

(assert (=> b!1580446 d!470185))

(declare-fun d!470187 () Bool)

(assert (=> d!470187 (= (get!4964 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))) (v!23950 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))))

(assert (=> b!1580446 d!470187))

(assert (=> b!1580446 d!469437))

(declare-fun d!470189 () Bool)

(assert (=> d!470189 (= (list!6716 (_1!9823 lt!553251)) (list!6716 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 (t!143642 tokens!457))))))))

(declare-fun lt!554023 () Unit!27015)

(assert (=> d!470189 (= lt!554023 (choose!9447 (h!22772 (t!143642 (t!143642 tokens!457))) (t!143642 (t!143642 (t!143642 tokens!457))) (_1!9823 lt!553251)))))

(assert (=> d!470189 (= (list!6716 (_1!9823 lt!553251)) (list!6716 (seqFromList!1871 ($colon$colon!269 (t!143642 (t!143642 (t!143642 tokens!457))) (h!22772 (t!143642 (t!143642 tokens!457)))))))))

(assert (=> d!470189 (= (seqFromListBHdTlConstructive!138 (h!22772 (t!143642 (t!143642 tokens!457))) (t!143642 (t!143642 (t!143642 tokens!457))) (_1!9823 lt!553251)) lt!554023)))

(declare-fun bs!391027 () Bool)

(assert (= bs!391027 d!470189))

(declare-fun m!1866547 () Bool)

(assert (=> bs!391027 m!1866547))

(assert (=> bs!391027 m!1863909))

(assert (=> bs!391027 m!1863911))

(assert (=> bs!391027 m!1863945))

(assert (=> bs!391027 m!1863909))

(assert (=> bs!391027 m!1866547))

(declare-fun m!1866549 () Bool)

(assert (=> bs!391027 m!1866549))

(assert (=> bs!391027 m!1866549))

(declare-fun m!1866551 () Bool)

(assert (=> bs!391027 m!1866551))

(declare-fun m!1866553 () Bool)

(assert (=> bs!391027 m!1866553))

(assert (=> bs!391027 m!1863911))

(assert (=> bs!391027 m!1863913))

(assert (=> b!1580446 d!470189))

(declare-fun b!1581569 () Bool)

(declare-fun res!705155 () Bool)

(declare-fun e!1015940 () Bool)

(assert (=> b!1581569 (=> (not res!705155) (not e!1015940))))

(assert (=> b!1581569 (= res!705155 (= (head!3188 lt!553256) (head!3188 (++!4511 lt!553256 lt!553259))))))

(declare-fun b!1581568 () Bool)

(declare-fun e!1015939 () Bool)

(assert (=> b!1581568 (= e!1015939 e!1015940)))

(declare-fun res!705157 () Bool)

(assert (=> b!1581568 (=> (not res!705157) (not e!1015940))))

(assert (=> b!1581568 (= res!705157 (not ((_ is Nil!17369) (++!4511 lt!553256 lt!553259))))))

(declare-fun b!1581571 () Bool)

(declare-fun e!1015938 () Bool)

(assert (=> b!1581571 (= e!1015938 (>= (size!13973 (++!4511 lt!553256 lt!553259)) (size!13973 lt!553256)))))

(declare-fun b!1581570 () Bool)

(assert (=> b!1581570 (= e!1015940 (isPrefix!1321 (tail!2254 lt!553256) (tail!2254 (++!4511 lt!553256 lt!553259))))))

(declare-fun d!470191 () Bool)

(assert (=> d!470191 e!1015938))

(declare-fun res!705158 () Bool)

(assert (=> d!470191 (=> res!705158 e!1015938)))

(declare-fun lt!554024 () Bool)

(assert (=> d!470191 (= res!705158 (not lt!554024))))

(assert (=> d!470191 (= lt!554024 e!1015939)))

(declare-fun res!705156 () Bool)

(assert (=> d!470191 (=> res!705156 e!1015939)))

(assert (=> d!470191 (= res!705156 ((_ is Nil!17369) lt!553256))))

(assert (=> d!470191 (= (isPrefix!1321 lt!553256 (++!4511 lt!553256 lt!553259)) lt!554024)))

(assert (= (and d!470191 (not res!705156)) b!1581568))

(assert (= (and b!1581568 res!705157) b!1581569))

(assert (= (and b!1581569 res!705155) b!1581570))

(assert (= (and d!470191 (not res!705158)) b!1581571))

(declare-fun m!1866555 () Bool)

(assert (=> b!1581569 m!1866555))

(assert (=> b!1581569 m!1863899))

(declare-fun m!1866557 () Bool)

(assert (=> b!1581569 m!1866557))

(assert (=> b!1581571 m!1863899))

(declare-fun m!1866559 () Bool)

(assert (=> b!1581571 m!1866559))

(declare-fun m!1866561 () Bool)

(assert (=> b!1581571 m!1866561))

(declare-fun m!1866563 () Bool)

(assert (=> b!1581570 m!1866563))

(assert (=> b!1581570 m!1863899))

(declare-fun m!1866565 () Bool)

(assert (=> b!1581570 m!1866565))

(assert (=> b!1581570 m!1866563))

(assert (=> b!1581570 m!1866565))

(declare-fun m!1866567 () Bool)

(assert (=> b!1581570 m!1866567))

(assert (=> b!1580446 d!470191))

(declare-fun b!1581642 () Bool)

(declare-fun e!1015982 () Unit!27015)

(declare-fun Unit!27064 () Unit!27015)

(assert (=> b!1581642 (= e!1015982 Unit!27064)))

(declare-fun lt!554397 () Token!5688)

(declare-fun lt!554383 () List!17439)

(declare-fun lt!554412 () List!17439)

(declare-fun lt!554439 () Unit!27015)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!17 (LexerInterface!2690 List!17442 List!17439 Token!5688 Rule!5922 List!17439) Unit!27015)

(assert (=> b!1581642 (= lt!554439 (lemmaMaxPrefixThenMatchesRulesRegex!17 thiss!17113 rules!1846 lt!554383 lt!554397 (rule!4857 lt!554397) lt!554412))))

(assert (=> b!1581642 (matchR!1910 (rulesRegex!451 thiss!17113 rules!1846) (list!6715 (charsOf!1710 lt!554397)))))

(declare-fun lt!554403 () Unit!27015)

(assert (=> b!1581642 (= lt!554403 lt!554439)))

(declare-fun lt!554420 () List!17439)

(assert (=> b!1581642 (= lt!554420 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))

(declare-fun lt!554394 () List!17439)

(assert (=> b!1581642 (= lt!554394 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))

(declare-fun lt!554414 () List!17439)

(declare-fun getSuffix!687 (List!17439 List!17439) List!17439)

(assert (=> b!1581642 (= lt!554414 (getSuffix!687 lt!554383 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(declare-fun lt!554431 () Unit!27015)

(declare-fun lemmaSamePrefixThenSameSuffix!639 (List!17439 List!17439 List!17439 List!17439 List!17439) Unit!27015)

(assert (=> b!1581642 (= lt!554431 (lemmaSamePrefixThenSameSuffix!639 lt!554420 (list!6715 lt!553238) lt!554394 lt!554414 lt!554383))))

(assert (=> b!1581642 (= (list!6715 lt!553238) lt!554414)))

(declare-fun lt!554430 () Unit!27015)

(assert (=> b!1581642 (= lt!554430 lt!554431)))

(declare-fun lt!554435 () List!17439)

(assert (=> b!1581642 (= lt!554435 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))

(declare-fun lt!554391 () Unit!27015)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!130 (List!17439 List!17439) Unit!27015)

(assert (=> b!1581642 (= lt!554391 (lemmaAddHeadSuffixToPrefixStillPrefix!130 lt!554435 lt!554383))))

(assert (=> b!1581642 (isPrefix!1321 (++!4511 lt!554435 (Cons!17369 (head!3188 (getSuffix!687 lt!554383 lt!554435)) Nil!17369)) lt!554383)))

(declare-fun lt!554395 () Unit!27015)

(assert (=> b!1581642 (= lt!554395 lt!554391)))

(declare-fun lt!554426 () List!17439)

(assert (=> b!1581642 (= lt!554426 (list!6715 (charsOf!1710 lt!554397)))))

(declare-fun lt!554449 () List!17439)

(assert (=> b!1581642 (= lt!554449 (++!4511 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (Cons!17369 (head!3188 (list!6715 lt!553238)) Nil!17369)))))

(declare-fun lt!554441 () Unit!27015)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!17 (List!17439 List!17439 List!17439) Unit!27015)

(assert (=> b!1581642 (= lt!554441 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!17 lt!554426 lt!554449 lt!554383))))

(assert (=> b!1581642 (isPrefix!1321 lt!554449 lt!554426)))

(declare-fun lt!554427 () Unit!27015)

(assert (=> b!1581642 (= lt!554427 lt!554441)))

(declare-fun lt!554390 () Regex!4389)

(assert (=> b!1581642 (= lt!554390 (rulesRegex!451 thiss!17113 rules!1846))))

(declare-fun lt!554444 () List!17439)

(assert (=> b!1581642 (= lt!554444 (++!4511 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (Cons!17369 (head!3188 (list!6715 lt!553238)) Nil!17369)))))

(declare-fun lt!554409 () List!17439)

(assert (=> b!1581642 (= lt!554409 (list!6715 (charsOf!1710 lt!554397)))))

(declare-fun lt!554410 () Unit!27015)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!18 (Regex!4389 List!17439 List!17439) Unit!27015)

(assert (=> b!1581642 (= lt!554410 (lemmaNotPrefixMatchThenCannotMatchLonger!18 lt!554390 lt!554444 lt!554409))))

(assert (=> b!1581642 (not (matchR!1910 lt!554390 lt!554409))))

(declare-fun lt!554442 () Unit!27015)

(assert (=> b!1581642 (= lt!554442 lt!554410)))

(assert (=> b!1581642 false))

(declare-fun b!1581643 () Bool)

(declare-fun e!1015980 () Unit!27015)

(declare-fun Unit!27065 () Unit!27015)

(assert (=> b!1581643 (= e!1015980 Unit!27065)))

(declare-fun b!1581645 () Bool)

(assert (=> b!1581645 false))

(declare-fun lt!554437 () Unit!27015)

(declare-fun lt!554445 () Unit!27015)

(assert (=> b!1581645 (= lt!554437 lt!554445)))

(assert (=> b!1581645 (= (rule!4857 lt!554397) (rule!4857 (h!22772 (t!143642 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!33 (List!17442 Rule!5922 Rule!5922) Unit!27015)

(assert (=> b!1581645 (= lt!554445 (lemmaSameIndexThenSameElement!33 rules!1846 (rule!4857 lt!554397) (rule!4857 (h!22772 (t!143642 tokens!457)))))))

(declare-fun e!1015977 () Unit!27015)

(declare-fun Unit!27066 () Unit!27015)

(assert (=> b!1581645 (= e!1015977 Unit!27066)))

(declare-fun b!1581646 () Bool)

(declare-fun e!1015979 () Unit!27015)

(declare-fun Unit!27067 () Unit!27015)

(assert (=> b!1581646 (= e!1015979 Unit!27067)))

(declare-fun b!1581647 () Bool)

(assert (=> b!1581647 false))

(declare-fun lt!554433 () Unit!27015)

(declare-fun lt!554421 () Unit!27015)

(assert (=> b!1581647 (= lt!554433 lt!554421)))

(declare-fun lt!554396 () List!17439)

(assert (=> b!1581647 (not (matchR!1910 (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))) lt!554396))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!57 (LexerInterface!2690 List!17442 Rule!5922 List!17439 List!17439 Rule!5922) Unit!27015)

(assert (=> b!1581647 (= lt!554421 (lemmaMaxPrefNoSmallerRuleMatches!57 thiss!17113 rules!1846 (rule!4857 lt!554397) lt!554396 lt!554383 (rule!4857 (h!22772 (t!143642 tokens!457)))))))

(assert (=> b!1581647 (= lt!554396 (list!6715 (charsOf!1710 lt!554397)))))

(declare-fun Unit!27068 () Unit!27015)

(assert (=> b!1581647 (= e!1015979 Unit!27068)))

(declare-fun b!1581648 () Bool)

(declare-fun Unit!27069 () Unit!27015)

(assert (=> b!1581648 (= e!1015977 Unit!27069)))

(declare-fun b!1581649 () Bool)

(declare-fun res!705169 () Bool)

(declare-fun e!1015978 () Bool)

(assert (=> b!1581649 (=> (not res!705169) (not e!1015978))))

(assert (=> b!1581649 (= res!705169 (matchR!1910 (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!554397))))) (list!6715 (charsOf!1710 lt!554397))))))

(declare-fun d!470193 () Bool)

(assert (=> d!470193 (= (maxPrefix!1254 thiss!17113 rules!1846 (++!4511 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238))) (Some!3113 (tuple2!16841 (h!22772 (t!143642 tokens!457)) (list!6715 lt!553238))))))

(declare-fun lt!554399 () Unit!27015)

(declare-fun Unit!27070 () Unit!27015)

(assert (=> d!470193 (= lt!554399 Unit!27070)))

(declare-fun lt!554411 () Unit!27015)

(declare-fun e!1015976 () Unit!27015)

(assert (=> d!470193 (= lt!554411 e!1015976)))

(declare-fun c!256376 () Bool)

(assert (=> d!470193 (= c!256376 (not (= (rule!4857 lt!554397) (rule!4857 (h!22772 (t!143642 tokens!457))))))))

(declare-fun lt!554446 () Unit!27015)

(declare-fun lt!554434 () Unit!27015)

(assert (=> d!470193 (= lt!554446 lt!554434)))

(assert (=> d!470193 (= (list!6715 lt!553238) lt!554412)))

(assert (=> d!470193 (= lt!554434 (lemmaSamePrefixThenSameSuffix!639 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238) (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) lt!554412 lt!554383))))

(declare-fun lt!554413 () Unit!27015)

(declare-fun lt!554402 () Unit!27015)

(assert (=> d!470193 (= lt!554413 lt!554402)))

(declare-fun lt!554385 () List!17439)

(declare-fun lt!554398 () List!17439)

(assert (=> d!470193 (= lt!554385 lt!554398)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!141 (List!17439 List!17439 List!17439) Unit!27015)

(assert (=> d!470193 (= lt!554402 (lemmaIsPrefixSameLengthThenSameList!141 lt!554385 lt!554398 lt!554383))))

(assert (=> d!470193 (= lt!554398 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))

(assert (=> d!470193 (= lt!554385 (list!6715 (charsOf!1710 lt!554397)))))

(declare-fun lt!554422 () Unit!27015)

(declare-fun e!1015981 () Unit!27015)

(assert (=> d!470193 (= lt!554422 e!1015981)))

(declare-fun c!256378 () Bool)

(assert (=> d!470193 (= c!256378 (< (size!13974 (charsOf!1710 lt!554397)) (size!13974 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(declare-fun lt!554448 () Unit!27015)

(assert (=> d!470193 (= lt!554448 e!1015982)))

(declare-fun c!256375 () Bool)

(assert (=> d!470193 (= c!256375 (> (size!13974 (charsOf!1710 lt!554397)) (size!13974 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(declare-fun lt!554425 () Unit!27015)

(declare-fun lt!554452 () Unit!27015)

(assert (=> d!470193 (= lt!554425 lt!554452)))

(assert (=> d!470193 (matchR!1910 (rulesRegex!451 thiss!17113 rules!1846) (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))

(assert (=> d!470193 (= lt!554452 (lemmaMaxPrefixThenMatchesRulesRegex!17 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (h!22772 (t!143642 tokens!457)) (rule!4857 (h!22772 (t!143642 tokens!457))) Nil!17369))))

(declare-fun lt!554440 () Unit!27015)

(declare-fun lt!554438 () Unit!27015)

(assert (=> d!470193 (= lt!554440 lt!554438)))

(declare-fun lt!554407 () List!17439)

(assert (=> d!470193 (= lt!554412 lt!554407)))

(declare-fun lt!554404 () List!17439)

(declare-fun lt!554401 () List!17439)

(assert (=> d!470193 (= lt!554438 (lemmaSamePrefixThenSameSuffix!639 lt!554404 lt!554412 lt!554401 lt!554407 lt!554383))))

(assert (=> d!470193 (= lt!554407 (getSuffix!687 lt!554383 (list!6715 (charsOf!1710 lt!554397))))))

(assert (=> d!470193 (= lt!554401 (list!6715 (charsOf!1710 lt!554397)))))

(assert (=> d!470193 (= lt!554404 (list!6715 (charsOf!1710 lt!554397)))))

(declare-fun lt!554418 () Unit!27015)

(declare-fun lt!554436 () Unit!27015)

(assert (=> d!470193 (= lt!554418 lt!554436)))

(declare-fun lt!554393 () List!17439)

(assert (=> d!470193 (= (maxPrefixOneRule!725 thiss!17113 (rule!4857 lt!554397) lt!554383) (Some!3113 (tuple2!16841 (Token!5689 (apply!4212 (transformation!3061 (rule!4857 lt!554397)) (seqFromList!1872 lt!554393)) (rule!4857 lt!554397) (size!13973 lt!554393) lt!554393) lt!554412)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!207 (LexerInterface!2690 List!17442 List!17439 List!17439 List!17439 Rule!5922) Unit!27015)

(assert (=> d!470193 (= lt!554436 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!207 thiss!17113 rules!1846 lt!554393 lt!554383 lt!554412 (rule!4857 lt!554397)))))

(assert (=> d!470193 (= lt!554393 (list!6715 (charsOf!1710 lt!554397)))))

(declare-fun lt!554405 () Unit!27015)

(declare-fun lemmaCharactersSize!313 (Token!5688) Unit!27015)

(assert (=> d!470193 (= lt!554405 (lemmaCharactersSize!313 lt!554397))))

(declare-fun lt!554406 () Unit!27015)

(declare-fun lemmaEqSameImage!166 (TokenValueInjection!5962 BalanceConc!11484 BalanceConc!11484) Unit!27015)

(assert (=> d!470193 (= lt!554406 (lemmaEqSameImage!166 (transformation!3061 (rule!4857 lt!554397)) (charsOf!1710 lt!554397) (seqFromList!1872 (originalCharacters!3875 lt!554397))))))

(declare-fun lt!554453 () Unit!27015)

(assert (=> d!470193 (= lt!554453 (lemmaSemiInverse!382 (transformation!3061 (rule!4857 lt!554397)) (charsOf!1710 lt!554397)))))

(declare-fun lt!554429 () Unit!27015)

(declare-fun lemmaInv!446 (TokenValueInjection!5962) Unit!27015)

(assert (=> d!470193 (= lt!554429 (lemmaInv!446 (transformation!3061 (rule!4857 lt!554397))))))

(declare-fun lt!554443 () Unit!27015)

(declare-fun lt!554415 () Unit!27015)

(assert (=> d!470193 (= lt!554443 lt!554415)))

(declare-fun lt!554408 () List!17439)

(assert (=> d!470193 (isPrefix!1321 lt!554408 (++!4511 lt!554408 lt!554412))))

(assert (=> d!470193 (= lt!554415 (lemmaConcatTwoListThenFirstIsPrefix!846 lt!554408 lt!554412))))

(assert (=> d!470193 (= lt!554408 (list!6715 (charsOf!1710 lt!554397)))))

(declare-fun lt!554389 () Unit!27015)

(declare-fun lt!554447 () Unit!27015)

(assert (=> d!470193 (= lt!554389 lt!554447)))

(assert (=> d!470193 e!1015978))

(declare-fun res!705170 () Bool)

(assert (=> d!470193 (=> (not res!705170) (not e!1015978))))

(assert (=> d!470193 (= res!705170 (isDefined!2495 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!554397)))))))

(assert (=> d!470193 (= lt!554447 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!234 thiss!17113 rules!1846 lt!554383 lt!554397))))

(declare-fun lt!554451 () Option!3114)

(assert (=> d!470193 (= lt!554412 (_2!9822 (get!4964 lt!554451)))))

(assert (=> d!470193 (= lt!554397 (_1!9822 (get!4964 lt!554451)))))

(declare-fun lt!554387 () Unit!27015)

(assert (=> d!470193 (= lt!554387 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!264 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238)))))

(assert (=> d!470193 (= lt!554451 (maxPrefix!1254 thiss!17113 rules!1846 lt!554383))))

(declare-fun lt!554432 () Unit!27015)

(declare-fun lt!554392 () Unit!27015)

(assert (=> d!470193 (= lt!554432 lt!554392)))

(declare-fun lt!554417 () List!17439)

(assert (=> d!470193 (isPrefix!1321 lt!554417 (++!4511 lt!554417 (list!6715 lt!553238)))))

(assert (=> d!470193 (= lt!554392 (lemmaConcatTwoListThenFirstIsPrefix!846 lt!554417 (list!6715 lt!553238)))))

(assert (=> d!470193 (= lt!554417 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))

(assert (=> d!470193 (= lt!554383 (++!4511 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238)))))

(assert (=> d!470193 (not (isEmpty!10379 rules!1846))))

(assert (=> d!470193 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!60 thiss!17113 rules!1846 (h!22772 (t!143642 tokens!457)) (rule!4857 (h!22772 (t!143642 tokens!457))) (list!6715 lt!553238)) lt!554399)))

(declare-fun b!1581650 () Bool)

(declare-fun Unit!27071 () Unit!27015)

(assert (=> b!1581650 (= e!1015976 Unit!27071)))

(declare-fun c!256379 () Bool)

(declare-fun getIndex!85 (List!17442 Rule!5922) Int)

(assert (=> b!1581650 (= c!256379 (< (getIndex!85 rules!1846 (rule!4857 (h!22772 (t!143642 tokens!457)))) (getIndex!85 rules!1846 (rule!4857 lt!554397))))))

(declare-fun lt!554428 () Unit!27015)

(assert (=> b!1581650 (= lt!554428 e!1015979)))

(declare-fun c!256377 () Bool)

(assert (=> b!1581650 (= c!256377 (< (getIndex!85 rules!1846 (rule!4857 lt!554397)) (getIndex!85 rules!1846 (rule!4857 (h!22772 (t!143642 tokens!457))))))))

(declare-fun lt!554400 () Unit!27015)

(assert (=> b!1581650 (= lt!554400 e!1015980)))

(declare-fun c!256374 () Bool)

(assert (=> b!1581650 (= c!256374 (= (getIndex!85 rules!1846 (rule!4857 lt!554397)) (getIndex!85 rules!1846 (rule!4857 (h!22772 (t!143642 tokens!457))))))))

(declare-fun lt!554384 () Unit!27015)

(assert (=> b!1581650 (= lt!554384 e!1015977)))

(assert (=> b!1581650 false))

(declare-fun b!1581651 () Bool)

(declare-fun Unit!27072 () Unit!27015)

(assert (=> b!1581651 (= e!1015982 Unit!27072)))

(declare-fun b!1581652 () Bool)

(declare-fun Unit!27073 () Unit!27015)

(assert (=> b!1581652 (= e!1015981 Unit!27073)))

(declare-fun lt!554424 () List!17439)

(assert (=> b!1581652 (= lt!554424 (list!6715 (charsOf!1710 lt!554397)))))

(declare-fun lt!554388 () List!17439)

(assert (=> b!1581652 (= lt!554388 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))

(declare-fun lt!554450 () Unit!27015)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!107 (LexerInterface!2690 List!17442 Rule!5922 List!17439 List!17439 List!17439 Rule!5922) Unit!27015)

(assert (=> b!1581652 (= lt!554450 (lemmaMaxPrefixOutputsMaxPrefix!107 thiss!17113 rules!1846 (rule!4857 lt!554397) lt!554424 lt!554383 lt!554388 (rule!4857 (h!22772 (t!143642 tokens!457)))))))

(assert (=> b!1581652 (not (matchR!1910 (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))) lt!554388))))

(declare-fun lt!554423 () Unit!27015)

(assert (=> b!1581652 (= lt!554423 lt!554450)))

(assert (=> b!1581652 false))

(declare-fun b!1581653 () Bool)

(assert (=> b!1581653 (= e!1015978 (= (rule!4857 lt!554397) (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!554397))))))))

(declare-fun b!1581654 () Bool)

(declare-fun Unit!27074 () Unit!27015)

(assert (=> b!1581654 (= e!1015976 Unit!27074)))

(declare-fun b!1581655 () Bool)

(assert (=> b!1581655 false))

(declare-fun lt!554416 () Unit!27015)

(declare-fun lt!554386 () Unit!27015)

(assert (=> b!1581655 (= lt!554416 lt!554386)))

(declare-fun lt!554419 () List!17439)

(assert (=> b!1581655 (not (matchR!1910 (regex!3061 (rule!4857 lt!554397)) lt!554419))))

(assert (=> b!1581655 (= lt!554386 (lemmaMaxPrefNoSmallerRuleMatches!57 thiss!17113 rules!1846 (rule!4857 (h!22772 (t!143642 tokens!457))) lt!554419 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (rule!4857 lt!554397)))))

(assert (=> b!1581655 (= lt!554419 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))

(declare-fun Unit!27075 () Unit!27015)

(assert (=> b!1581655 (= e!1015980 Unit!27075)))

(declare-fun b!1581656 () Bool)

(declare-fun Unit!27076 () Unit!27015)

(assert (=> b!1581656 (= e!1015981 Unit!27076)))

(assert (= (and d!470193 res!705170) b!1581649))

(assert (= (and b!1581649 res!705169) b!1581653))

(assert (= (and d!470193 c!256375) b!1581642))

(assert (= (and d!470193 (not c!256375)) b!1581651))

(assert (= (and d!470193 c!256378) b!1581652))

(assert (= (and d!470193 (not c!256378)) b!1581656))

(assert (= (and d!470193 c!256376) b!1581650))

(assert (= (and d!470193 (not c!256376)) b!1581654))

(assert (= (and b!1581650 c!256379) b!1581647))

(assert (= (and b!1581650 (not c!256379)) b!1581646))

(assert (= (and b!1581650 c!256377) b!1581655))

(assert (= (and b!1581650 (not c!256377)) b!1581643))

(assert (= (and b!1581650 c!256374) b!1581645))

(assert (= (and b!1581650 (not c!256374)) b!1581648))

(declare-fun m!1866737 () Bool)

(assert (=> d!470193 m!1866737))

(declare-fun m!1866739 () Bool)

(assert (=> d!470193 m!1866739))

(declare-fun m!1866741 () Bool)

(assert (=> d!470193 m!1866741))

(declare-fun m!1866743 () Bool)

(assert (=> d!470193 m!1866743))

(declare-fun m!1866745 () Bool)

(assert (=> d!470193 m!1866745))

(declare-fun m!1866747 () Bool)

(assert (=> d!470193 m!1866747))

(assert (=> d!470193 m!1863613))

(assert (=> d!470193 m!1863887))

(assert (=> d!470193 m!1863613))

(declare-fun m!1866755 () Bool)

(assert (=> d!470193 m!1866755))

(assert (=> d!470193 m!1866741))

(assert (=> d!470193 m!1863063))

(assert (=> d!470193 m!1863149))

(declare-fun m!1866761 () Bool)

(assert (=> d!470193 m!1866761))

(assert (=> d!470193 m!1863887))

(declare-fun m!1866763 () Bool)

(assert (=> d!470193 m!1866763))

(assert (=> d!470193 m!1866743))

(declare-fun m!1866765 () Bool)

(assert (=> d!470193 m!1866765))

(assert (=> d!470193 m!1866741))

(declare-fun m!1866767 () Bool)

(assert (=> d!470193 m!1866767))

(declare-fun m!1866771 () Bool)

(assert (=> d!470193 m!1866771))

(declare-fun m!1866773 () Bool)

(assert (=> d!470193 m!1866773))

(declare-fun m!1866775 () Bool)

(assert (=> d!470193 m!1866775))

(declare-fun m!1866777 () Bool)

(assert (=> d!470193 m!1866777))

(assert (=> d!470193 m!1863149))

(assert (=> d!470193 m!1863593))

(declare-fun m!1866779 () Bool)

(assert (=> d!470193 m!1866779))

(declare-fun m!1866781 () Bool)

(assert (=> d!470193 m!1866781))

(declare-fun m!1866783 () Bool)

(assert (=> d!470193 m!1866783))

(assert (=> d!470193 m!1863613))

(declare-fun m!1866785 () Bool)

(assert (=> d!470193 m!1866785))

(assert (=> d!470193 m!1863149))

(assert (=> d!470193 m!1863613))

(assert (=> d!470193 m!1863613))

(assert (=> d!470193 m!1863887))

(assert (=> d!470193 m!1863939))

(assert (=> d!470193 m!1866741))

(declare-fun m!1866787 () Bool)

(assert (=> d!470193 m!1866787))

(assert (=> d!470193 m!1866745))

(declare-fun m!1866789 () Bool)

(assert (=> d!470193 m!1866789))

(declare-fun m!1866791 () Bool)

(assert (=> d!470193 m!1866791))

(declare-fun m!1866793 () Bool)

(assert (=> d!470193 m!1866793))

(assert (=> d!470193 m!1863339))

(assert (=> d!470193 m!1863613))

(declare-fun m!1866795 () Bool)

(assert (=> d!470193 m!1866795))

(assert (=> d!470193 m!1866737))

(declare-fun m!1866797 () Bool)

(assert (=> d!470193 m!1866797))

(declare-fun m!1866799 () Bool)

(assert (=> d!470193 m!1866799))

(declare-fun m!1866801 () Bool)

(assert (=> d!470193 m!1866801))

(declare-fun m!1866803 () Bool)

(assert (=> d!470193 m!1866803))

(assert (=> d!470193 m!1863613))

(assert (=> d!470193 m!1863887))

(assert (=> d!470193 m!1866779))

(assert (=> d!470193 m!1866791))

(declare-fun m!1866805 () Bool)

(assert (=> d!470193 m!1866805))

(assert (=> d!470193 m!1866741))

(assert (=> d!470193 m!1866773))

(declare-fun m!1866807 () Bool)

(assert (=> d!470193 m!1866807))

(assert (=> d!470193 m!1863887))

(declare-fun m!1866809 () Bool)

(assert (=> d!470193 m!1866809))

(assert (=> d!470193 m!1866809))

(declare-fun m!1866811 () Bool)

(assert (=> d!470193 m!1866811))

(assert (=> d!470193 m!1863339))

(declare-fun m!1866813 () Bool)

(assert (=> b!1581650 m!1866813))

(declare-fun m!1866815 () Bool)

(assert (=> b!1581650 m!1866815))

(assert (=> b!1581653 m!1866737))

(assert (=> b!1581653 m!1866737))

(declare-fun m!1866817 () Bool)

(assert (=> b!1581653 m!1866817))

(declare-fun m!1866819 () Bool)

(assert (=> b!1581647 m!1866819))

(declare-fun m!1866821 () Bool)

(assert (=> b!1581647 m!1866821))

(assert (=> b!1581647 m!1866741))

(assert (=> b!1581647 m!1866741))

(assert (=> b!1581647 m!1866743))

(assert (=> b!1581652 m!1866741))

(assert (=> b!1581652 m!1866743))

(declare-fun m!1866823 () Bool)

(assert (=> b!1581652 m!1866823))

(assert (=> b!1581652 m!1866741))

(assert (=> b!1581652 m!1863149))

(assert (=> b!1581652 m!1863613))

(assert (=> b!1581652 m!1863149))

(declare-fun m!1866825 () Bool)

(assert (=> b!1581652 m!1866825))

(declare-fun m!1866827 () Bool)

(assert (=> b!1581645 m!1866827))

(assert (=> b!1581649 m!1866737))

(assert (=> b!1581649 m!1866737))

(assert (=> b!1581649 m!1866817))

(assert (=> b!1581649 m!1866741))

(assert (=> b!1581649 m!1866743))

(assert (=> b!1581649 m!1866741))

(assert (=> b!1581649 m!1866743))

(declare-fun m!1866829 () Bool)

(assert (=> b!1581649 m!1866829))

(assert (=> b!1581642 m!1866741))

(assert (=> b!1581642 m!1866743))

(declare-fun m!1866833 () Bool)

(assert (=> b!1581642 m!1866833))

(declare-fun m!1866835 () Bool)

(assert (=> b!1581642 m!1866835))

(declare-fun m!1866839 () Bool)

(assert (=> b!1581642 m!1866839))

(declare-fun m!1866841 () Bool)

(assert (=> b!1581642 m!1866841))

(assert (=> b!1581642 m!1863339))

(assert (=> b!1581642 m!1866743))

(declare-fun m!1866843 () Bool)

(assert (=> b!1581642 m!1866843))

(assert (=> b!1581642 m!1863149))

(assert (=> b!1581642 m!1863613))

(assert (=> b!1581642 m!1863613))

(declare-fun m!1866847 () Bool)

(assert (=> b!1581642 m!1866847))

(assert (=> b!1581642 m!1863149))

(declare-fun m!1866853 () Bool)

(assert (=> b!1581642 m!1866853))

(declare-fun m!1866855 () Bool)

(assert (=> b!1581642 m!1866855))

(assert (=> b!1581642 m!1863613))

(declare-fun m!1866861 () Bool)

(assert (=> b!1581642 m!1866861))

(declare-fun m!1866863 () Bool)

(assert (=> b!1581642 m!1866863))

(assert (=> b!1581642 m!1866835))

(declare-fun m!1866865 () Bool)

(assert (=> b!1581642 m!1866865))

(assert (=> b!1581642 m!1863339))

(assert (=> b!1581642 m!1866741))

(assert (=> b!1581642 m!1863887))

(assert (=> b!1581642 m!1863889))

(assert (=> b!1581642 m!1863887))

(declare-fun m!1866869 () Bool)

(assert (=> b!1581642 m!1866869))

(declare-fun m!1866873 () Bool)

(assert (=> b!1581642 m!1866873))

(assert (=> b!1581642 m!1866853))

(declare-fun m!1866875 () Bool)

(assert (=> b!1581642 m!1866875))

(declare-fun m!1866879 () Bool)

(assert (=> b!1581655 m!1866879))

(assert (=> b!1581655 m!1863149))

(assert (=> b!1581655 m!1863149))

(assert (=> b!1581655 m!1863613))

(assert (=> b!1581655 m!1863613))

(declare-fun m!1866885 () Bool)

(assert (=> b!1581655 m!1866885))

(assert (=> b!1580446 d!470193))

(declare-fun d!470213 () Bool)

(assert (=> d!470213 (isPrefix!1321 lt!553256 (++!4511 lt!553256 lt!553259))))

(declare-fun lt!554477 () Unit!27015)

(assert (=> d!470213 (= lt!554477 (choose!9446 lt!553256 lt!553259))))

(assert (=> d!470213 (= (lemmaConcatTwoListThenFirstIsPrefix!846 lt!553256 lt!553259) lt!554477)))

(declare-fun bs!391032 () Bool)

(assert (= bs!391032 d!470213))

(assert (=> bs!391032 m!1863899))

(assert (=> bs!391032 m!1863899))

(assert (=> bs!391032 m!1863907))

(declare-fun m!1866909 () Bool)

(assert (=> bs!391032 m!1866909))

(assert (=> b!1580446 d!470213))

(declare-fun d!470215 () Bool)

(assert (=> d!470215 (= (isEmpty!10386 (_2!9822 (get!4964 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))) ((_ is Nil!17369) (_2!9822 (get!4964 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))))))

(assert (=> b!1580446 d!470215))

(declare-fun d!470221 () Bool)

(assert (=> d!470221 (= (list!6715 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))) 0))) (list!6719 (c!256021 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))) 0)))))))

(declare-fun bs!391035 () Bool)

(assert (= bs!391035 d!470221))

(declare-fun m!1866915 () Bool)

(assert (=> bs!391035 m!1866915))

(assert (=> b!1580446 d!470221))

(declare-fun d!470225 () Bool)

(declare-fun lt!554483 () BalanceConc!11484)

(assert (=> d!470225 (= (list!6715 lt!554483) (printList!805 thiss!17113 (list!6716 (seqFromList!1871 (t!143642 (t!143642 tokens!457))))))))

(assert (=> d!470225 (= lt!554483 (printTailRec!743 thiss!17113 (seqFromList!1871 (t!143642 (t!143642 tokens!457))) 0 (BalanceConc!11485 Empty!5770)))))

(assert (=> d!470225 (= (print!1221 thiss!17113 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) lt!554483)))

(declare-fun bs!391036 () Bool)

(assert (= bs!391036 d!470225))

(declare-fun m!1866917 () Bool)

(assert (=> bs!391036 m!1866917))

(assert (=> bs!391036 m!1863143))

(assert (=> bs!391036 m!1863991))

(assert (=> bs!391036 m!1863991))

(declare-fun m!1866919 () Bool)

(assert (=> bs!391036 m!1866919))

(assert (=> bs!391036 m!1863143))

(declare-fun m!1866921 () Bool)

(assert (=> bs!391036 m!1866921))

(assert (=> b!1580446 d!470225))

(assert (=> b!1580446 d!469635))

(declare-fun d!470227 () Bool)

(declare-fun lt!554499 () C!8952)

(assert (=> d!470227 (= lt!554499 (head!3188 (list!6715 lt!553238)))))

(declare-fun head!3190 (Conc!5770) C!8952)

(assert (=> d!470227 (= lt!554499 (head!3190 (c!256021 lt!553238)))))

(assert (=> d!470227 (not (isEmpty!10377 lt!553238))))

(assert (=> d!470227 (= (head!3189 lt!553238) lt!554499)))

(declare-fun bs!391038 () Bool)

(assert (= bs!391038 d!470227))

(assert (=> bs!391038 m!1863887))

(assert (=> bs!391038 m!1863887))

(assert (=> bs!391038 m!1863889))

(declare-fun m!1866973 () Bool)

(assert (=> bs!391038 m!1866973))

(declare-fun m!1866975 () Bool)

(assert (=> bs!391038 m!1866975))

(assert (=> b!1580446 d!470227))

(assert (=> b!1580446 d!469633))

(declare-fun d!470235 () Bool)

(declare-fun lt!554514 () BalanceConc!11484)

(assert (=> d!470235 (= (list!6715 lt!554514) (originalCharacters!3875 (h!22772 (t!143642 (t!143642 tokens!457)))))))

(assert (=> d!470235 (= lt!554514 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (value!96911 (h!22772 (t!143642 (t!143642 tokens!457))))))))

(assert (=> d!470235 (= (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))) lt!554514)))

(declare-fun b_lambda!49759 () Bool)

(assert (=> (not b_lambda!49759) (not d!470235)))

(declare-fun tb!88943 () Bool)

(declare-fun t!143773 () Bool)

(assert (=> (and b!1580060 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457))))))) t!143773) tb!88943))

(declare-fun b!1581691 () Bool)

(declare-fun e!1016000 () Bool)

(declare-fun tp!465351 () Bool)

(assert (=> b!1581691 (= e!1016000 (and (inv!22787 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (value!96911 (h!22772 (t!143642 (t!143642 tokens!457))))))) tp!465351))))

(declare-fun result!107636 () Bool)

(assert (=> tb!88943 (= result!107636 (and (inv!22788 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (value!96911 (h!22772 (t!143642 (t!143642 tokens!457)))))) e!1016000))))

(assert (= tb!88943 b!1581691))

(declare-fun m!1866977 () Bool)

(assert (=> b!1581691 m!1866977))

(declare-fun m!1866979 () Bool)

(assert (=> tb!88943 m!1866979))

(assert (=> d!470235 t!143773))

(declare-fun b_and!110829 () Bool)

(assert (= b_and!110813 (and (=> t!143773 result!107636) b_and!110829)))

(declare-fun t!143775 () Bool)

(declare-fun tb!88945 () Bool)

(assert (=> (and b!1580067 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457))))))) t!143775) tb!88945))

(declare-fun result!107638 () Bool)

(assert (= result!107638 result!107636))

(assert (=> d!470235 t!143775))

(declare-fun b_and!110831 () Bool)

(assert (= b_and!110815 (and (=> t!143775 result!107638) b_and!110831)))

(declare-fun tb!88947 () Bool)

(declare-fun t!143777 () Bool)

(assert (=> (and b!1580515 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457))))))) t!143777) tb!88947))

(declare-fun result!107640 () Bool)

(assert (= result!107640 result!107636))

(assert (=> d!470235 t!143777))

(declare-fun b_and!110833 () Bool)

(assert (= b_and!110817 (and (=> t!143777 result!107640) b_and!110833)))

(declare-fun t!143779 () Bool)

(declare-fun tb!88949 () Bool)

(assert (=> (and b!1580538 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457))))))) t!143779) tb!88949))

(declare-fun result!107642 () Bool)

(assert (= result!107642 result!107636))

(assert (=> d!470235 t!143779))

(declare-fun b_and!110835 () Bool)

(assert (= b_and!110819 (and (=> t!143779 result!107642) b_and!110835)))

(declare-fun m!1866981 () Bool)

(assert (=> d!470235 m!1866981))

(declare-fun m!1866983 () Bool)

(assert (=> d!470235 m!1866983))

(assert (=> b!1580446 d!470235))

(declare-fun d!470237 () Bool)

(assert (=> d!470237 (= (head!3188 (originalCharacters!3875 (h!22772 (t!143642 (t!143642 tokens!457))))) (h!22770 (originalCharacters!3875 (h!22772 (t!143642 (t!143642 tokens!457))))))))

(assert (=> b!1580446 d!470237))

(declare-fun d!470239 () Bool)

(assert (=> d!470239 (= (list!6715 lt!553238) (list!6719 (c!256021 lt!553238)))))

(declare-fun bs!391039 () Bool)

(assert (= bs!391039 d!470239))

(declare-fun m!1866985 () Bool)

(assert (=> bs!391039 m!1866985))

(assert (=> b!1580446 d!470239))

(assert (=> b!1580446 d!469749))

(declare-fun d!470241 () Bool)

(assert (=> d!470241 (= (list!6715 lt!553242) (list!6719 (c!256021 lt!553242)))))

(declare-fun bs!391040 () Bool)

(assert (= bs!391040 d!470241))

(declare-fun m!1866987 () Bool)

(assert (=> bs!391040 m!1866987))

(assert (=> b!1580446 d!470241))

(declare-fun b!1581692 () Bool)

(declare-fun e!1016002 () Bool)

(declare-fun e!1016001 () Bool)

(assert (=> b!1581692 (= e!1016002 e!1016001)))

(declare-fun res!705198 () Bool)

(assert (=> b!1581692 (=> (not res!705198) (not e!1016001))))

(declare-fun lt!554519 () Option!3114)

(assert (=> b!1581692 (= res!705198 (isDefined!2493 lt!554519))))

(declare-fun b!1581693 () Bool)

(declare-fun e!1016003 () Option!3114)

(declare-fun lt!554517 () Option!3114)

(declare-fun lt!554516 () Option!3114)

(assert (=> b!1581693 (= e!1016003 (ite (and ((_ is None!3113) lt!554517) ((_ is None!3113) lt!554516)) None!3113 (ite ((_ is None!3113) lt!554516) lt!554517 (ite ((_ is None!3113) lt!554517) lt!554516 (ite (>= (size!13968 (_1!9822 (v!23950 lt!554517))) (size!13968 (_1!9822 (v!23950 lt!554516)))) lt!554517 lt!554516)))))))

(declare-fun call!102724 () Option!3114)

(assert (=> b!1581693 (= lt!554517 call!102724)))

(assert (=> b!1581693 (= lt!554516 (maxPrefix!1254 thiss!17113 (t!143643 rules!1846) (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(declare-fun b!1581694 () Bool)

(declare-fun res!705201 () Bool)

(assert (=> b!1581694 (=> (not res!705201) (not e!1016001))))

(assert (=> b!1581694 (= res!705201 (matchR!1910 (regex!3061 (rule!4857 (_1!9822 (get!4964 lt!554519)))) (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!554519))))))))

(declare-fun b!1581695 () Bool)

(assert (=> b!1581695 (= e!1016001 (contains!3026 rules!1846 (rule!4857 (_1!9822 (get!4964 lt!554519)))))))

(declare-fun b!1581696 () Bool)

(declare-fun res!705199 () Bool)

(assert (=> b!1581696 (=> (not res!705199) (not e!1016001))))

(assert (=> b!1581696 (= res!705199 (< (size!13973 (_2!9822 (get!4964 lt!554519))) (size!13973 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))))

(declare-fun b!1581697 () Bool)

(assert (=> b!1581697 (= e!1016003 call!102724)))

(declare-fun b!1581698 () Bool)

(declare-fun res!705197 () Bool)

(assert (=> b!1581698 (=> (not res!705197) (not e!1016001))))

(assert (=> b!1581698 (= res!705197 (= (value!96911 (_1!9822 (get!4964 lt!554519))) (apply!4212 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!554519)))) (seqFromList!1872 (originalCharacters!3875 (_1!9822 (get!4964 lt!554519)))))))))

(declare-fun b!1581699 () Bool)

(declare-fun res!705200 () Bool)

(assert (=> b!1581699 (=> (not res!705200) (not e!1016001))))

(assert (=> b!1581699 (= res!705200 (= (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!554519)))) (originalCharacters!3875 (_1!9822 (get!4964 lt!554519)))))))

(declare-fun b!1581700 () Bool)

(declare-fun res!705196 () Bool)

(assert (=> b!1581700 (=> (not res!705196) (not e!1016001))))

(assert (=> b!1581700 (= res!705196 (= (++!4511 (list!6715 (charsOf!1710 (_1!9822 (get!4964 lt!554519)))) (_2!9822 (get!4964 lt!554519))) (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(declare-fun bm!102719 () Bool)

(assert (=> bm!102719 (= call!102724 (maxPrefixOneRule!725 thiss!17113 (h!22773 rules!1846) (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(declare-fun d!470243 () Bool)

(assert (=> d!470243 e!1016002))

(declare-fun res!705195 () Bool)

(assert (=> d!470243 (=> res!705195 e!1016002)))

(assert (=> d!470243 (= res!705195 (isEmpty!10382 lt!554519))))

(assert (=> d!470243 (= lt!554519 e!1016003)))

(declare-fun c!256385 () Bool)

(assert (=> d!470243 (= c!256385 (and ((_ is Cons!17372) rules!1846) ((_ is Nil!17372) (t!143643 rules!1846))))))

(declare-fun lt!554515 () Unit!27015)

(declare-fun lt!554518 () Unit!27015)

(assert (=> d!470243 (= lt!554515 lt!554518)))

(assert (=> d!470243 (isPrefix!1321 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))))

(assert (=> d!470243 (= lt!554518 (lemmaIsPrefixRefl!909 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))

(assert (=> d!470243 (rulesValidInductive!911 thiss!17113 rules!1846)))

(assert (=> d!470243 (= (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))) lt!554519)))

(assert (= (and d!470243 c!256385) b!1581697))

(assert (= (and d!470243 (not c!256385)) b!1581693))

(assert (= (or b!1581697 b!1581693) bm!102719))

(assert (= (and d!470243 (not res!705195)) b!1581692))

(assert (= (and b!1581692 res!705198) b!1581699))

(assert (= (and b!1581699 res!705200) b!1581696))

(assert (= (and b!1581696 res!705199) b!1581700))

(assert (= (and b!1581700 res!705196) b!1581698))

(assert (= (and b!1581698 res!705197) b!1581694))

(assert (= (and b!1581694 res!705201) b!1581695))

(assert (=> b!1581693 m!1863613))

(declare-fun m!1867049 () Bool)

(assert (=> b!1581693 m!1867049))

(declare-fun m!1867053 () Bool)

(assert (=> b!1581699 m!1867053))

(declare-fun m!1867055 () Bool)

(assert (=> b!1581699 m!1867055))

(assert (=> b!1581699 m!1867055))

(declare-fun m!1867059 () Bool)

(assert (=> b!1581699 m!1867059))

(declare-fun m!1867061 () Bool)

(assert (=> d!470243 m!1867061))

(assert (=> d!470243 m!1863613))

(assert (=> d!470243 m!1863613))

(declare-fun m!1867065 () Bool)

(assert (=> d!470243 m!1867065))

(assert (=> d!470243 m!1863613))

(assert (=> d!470243 m!1863613))

(declare-fun m!1867069 () Bool)

(assert (=> d!470243 m!1867069))

(assert (=> d!470243 m!1863391))

(assert (=> b!1581695 m!1867053))

(declare-fun m!1867073 () Bool)

(assert (=> b!1581695 m!1867073))

(assert (=> bm!102719 m!1863613))

(declare-fun m!1867077 () Bool)

(assert (=> bm!102719 m!1867077))

(assert (=> b!1581698 m!1867053))

(declare-fun m!1867079 () Bool)

(assert (=> b!1581698 m!1867079))

(assert (=> b!1581698 m!1867079))

(declare-fun m!1867083 () Bool)

(assert (=> b!1581698 m!1867083))

(assert (=> b!1581700 m!1867053))

(assert (=> b!1581700 m!1867055))

(assert (=> b!1581700 m!1867055))

(assert (=> b!1581700 m!1867059))

(assert (=> b!1581700 m!1867059))

(declare-fun m!1867085 () Bool)

(assert (=> b!1581700 m!1867085))

(declare-fun m!1867087 () Bool)

(assert (=> b!1581692 m!1867087))

(assert (=> b!1581694 m!1867053))

(assert (=> b!1581694 m!1867055))

(assert (=> b!1581694 m!1867055))

(assert (=> b!1581694 m!1867059))

(assert (=> b!1581694 m!1867059))

(declare-fun m!1867089 () Bool)

(assert (=> b!1581694 m!1867089))

(assert (=> b!1581696 m!1867053))

(declare-fun m!1867091 () Bool)

(assert (=> b!1581696 m!1867091))

(assert (=> b!1581696 m!1863613))

(assert (=> b!1581696 m!1865099))

(assert (=> b!1580446 d!470243))

(declare-fun d!470247 () Bool)

(assert (=> d!470247 (= (isDefined!2493 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))))) (not (isEmpty!10382 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))))

(declare-fun bs!391041 () Bool)

(assert (= bs!391041 d!470247))

(assert (=> bs!391041 m!1863903))

(declare-fun m!1867093 () Bool)

(assert (=> bs!391041 m!1867093))

(assert (=> b!1580446 d!470247))

(declare-fun b!1581706 () Bool)

(declare-fun res!705204 () Bool)

(declare-fun e!1016006 () Bool)

(assert (=> b!1581706 (=> (not res!705204) (not e!1016006))))

(declare-fun lt!554527 () List!17439)

(assert (=> b!1581706 (= res!705204 (= (size!13973 lt!554527) (+ (size!13973 lt!553256) (size!13973 lt!553259))))))

(declare-fun b!1581705 () Bool)

(declare-fun e!1016007 () List!17439)

(assert (=> b!1581705 (= e!1016007 (Cons!17369 (h!22770 lt!553256) (++!4511 (t!143640 lt!553256) lt!553259)))))

(declare-fun d!470249 () Bool)

(assert (=> d!470249 e!1016006))

(declare-fun res!705203 () Bool)

(assert (=> d!470249 (=> (not res!705203) (not e!1016006))))

(assert (=> d!470249 (= res!705203 (= (content!2385 lt!554527) ((_ map or) (content!2385 lt!553256) (content!2385 lt!553259))))))

(assert (=> d!470249 (= lt!554527 e!1016007)))

(declare-fun c!256387 () Bool)

(assert (=> d!470249 (= c!256387 ((_ is Nil!17369) lt!553256))))

(assert (=> d!470249 (= (++!4511 lt!553256 lt!553259) lt!554527)))

(declare-fun b!1581707 () Bool)

(assert (=> b!1581707 (= e!1016006 (or (not (= lt!553259 Nil!17369)) (= lt!554527 lt!553256)))))

(declare-fun b!1581704 () Bool)

(assert (=> b!1581704 (= e!1016007 lt!553259)))

(assert (= (and d!470249 c!256387) b!1581704))

(assert (= (and d!470249 (not c!256387)) b!1581705))

(assert (= (and d!470249 res!705203) b!1581706))

(assert (= (and b!1581706 res!705204) b!1581707))

(declare-fun m!1867095 () Bool)

(assert (=> b!1581706 m!1867095))

(assert (=> b!1581706 m!1866561))

(declare-fun m!1867097 () Bool)

(assert (=> b!1581706 m!1867097))

(declare-fun m!1867099 () Bool)

(assert (=> b!1581705 m!1867099))

(declare-fun m!1867101 () Bool)

(assert (=> d!470249 m!1867101))

(declare-fun m!1867105 () Bool)

(assert (=> d!470249 m!1867105))

(declare-fun m!1867107 () Bool)

(assert (=> d!470249 m!1867107))

(assert (=> b!1580446 d!470249))

(declare-fun d!470251 () Bool)

(declare-fun e!1016009 () Bool)

(assert (=> d!470251 e!1016009))

(declare-fun res!705205 () Bool)

(assert (=> d!470251 (=> (not res!705205) (not e!1016009))))

(assert (=> d!470251 (= res!705205 (= (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 (t!143642 tokens!457))))))) (t!143642 (t!143642 tokens!457))))))

(declare-fun lt!554542 () Unit!27015)

(declare-fun e!1016008 () Unit!27015)

(assert (=> d!470251 (= lt!554542 e!1016008)))

(declare-fun c!256388 () Bool)

(assert (=> d!470251 (= c!256388 (or ((_ is Nil!17371) (t!143642 (t!143642 tokens!457))) ((_ is Nil!17371) (t!143642 (t!143642 (t!143642 tokens!457))))))))

(assert (=> d!470251 (not (isEmpty!10379 rules!1846))))

(assert (=> d!470251 (= (theoremInvertabilityWhenTokenListSeparable!135 thiss!17113 rules!1846 (t!143642 (t!143642 tokens!457))) lt!554542)))

(declare-fun b!1581708 () Bool)

(declare-fun Unit!27080 () Unit!27015)

(assert (=> b!1581708 (= e!1016008 Unit!27080)))

(declare-fun b!1581709 () Bool)

(declare-fun Unit!27081 () Unit!27015)

(assert (=> b!1581709 (= e!1016008 Unit!27081)))

(declare-fun lt!554535 () BalanceConc!11484)

(assert (=> b!1581709 (= lt!554535 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))))))

(declare-fun lt!554531 () BalanceConc!11484)

(assert (=> b!1581709 (= lt!554531 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 (t!143642 (t!143642 tokens!457))))))))

(declare-fun lt!554544 () tuple2!16842)

(assert (=> b!1581709 (= lt!554544 (lex!1174 thiss!17113 rules!1846 lt!554531))))

(declare-fun lt!554549 () List!17439)

(assert (=> b!1581709 (= lt!554549 (list!6715 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457))))))))

(declare-fun lt!554552 () List!17439)

(assert (=> b!1581709 (= lt!554552 (list!6715 lt!554531))))

(declare-fun lt!554550 () Unit!27015)

(assert (=> b!1581709 (= lt!554550 (lemmaConcatTwoListThenFirstIsPrefix!846 lt!554549 lt!554552))))

(assert (=> b!1581709 (isPrefix!1321 lt!554549 (++!4511 lt!554549 lt!554552))))

(declare-fun lt!554533 () Unit!27015)

(assert (=> b!1581709 (= lt!554533 lt!554550)))

(declare-fun lt!554546 () Unit!27015)

(assert (=> b!1581709 (= lt!554546 (theoremInvertabilityWhenTokenListSeparable!135 thiss!17113 rules!1846 (t!143642 (t!143642 (t!143642 tokens!457)))))))

(declare-fun lt!554551 () Unit!27015)

(assert (=> b!1581709 (= lt!554551 (seqFromListBHdTlConstructive!138 (h!22772 (t!143642 (t!143642 (t!143642 tokens!457)))) (t!143642 (t!143642 (t!143642 (t!143642 tokens!457)))) (_1!9823 lt!554544)))))

(assert (=> b!1581709 (= (list!6716 (_1!9823 lt!554544)) (list!6716 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 (t!143642 (t!143642 tokens!457))))) (h!22772 (t!143642 (t!143642 (t!143642 tokens!457)))))))))

(declare-fun lt!554543 () Unit!27015)

(assert (=> b!1581709 (= lt!554543 lt!554551)))

(declare-fun lt!554538 () Option!3114)

(assert (=> b!1581709 (= lt!554538 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 lt!554535)))))

(assert (=> b!1581709 (= (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 (t!143642 tokens!457))))) (printTailRec!743 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 (t!143642 tokens!457)))) 0 (BalanceConc!11485 Empty!5770)))))

(declare-fun lt!554545 () Unit!27015)

(declare-fun Unit!27082 () Unit!27015)

(assert (=> b!1581709 (= lt!554545 Unit!27082)))

(declare-fun lt!554539 () Unit!27015)

(assert (=> b!1581709 (= lt!554539 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!264 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457))))) (list!6715 lt!554531)))))

(assert (=> b!1581709 (= (list!6715 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457))))) (originalCharacters!3875 (h!22772 (t!143642 (t!143642 tokens!457)))))))

(declare-fun lt!554532 () Unit!27015)

(declare-fun Unit!27083 () Unit!27015)

(assert (=> b!1581709 (= lt!554532 Unit!27083)))

(assert (=> b!1581709 (= (list!6715 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 (t!143642 tokens!457))))) 0))) (Cons!17369 (head!3188 (originalCharacters!3875 (h!22772 (t!143642 (t!143642 (t!143642 tokens!457)))))) Nil!17369))))

(declare-fun lt!554530 () Unit!27015)

(declare-fun Unit!27084 () Unit!27015)

(assert (=> b!1581709 (= lt!554530 Unit!27084)))

(assert (=> b!1581709 (= (list!6715 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 (t!143642 tokens!457))))) 0))) (Cons!17369 (head!3188 (list!6715 lt!554531)) Nil!17369))))

(declare-fun lt!554534 () Unit!27015)

(declare-fun Unit!27085 () Unit!27015)

(assert (=> b!1581709 (= lt!554534 Unit!27085)))

(assert (=> b!1581709 (= (list!6715 (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 (t!143642 tokens!457))))) 0))) (Cons!17369 (head!3189 lt!554531) Nil!17369))))

(declare-fun lt!554529 () Unit!27015)

(declare-fun Unit!27086 () Unit!27015)

(assert (=> b!1581709 (= lt!554529 Unit!27086)))

(assert (=> b!1581709 (isDefined!2493 (maxPrefix!1254 thiss!17113 rules!1846 (originalCharacters!3875 (h!22772 (t!143642 (t!143642 tokens!457))))))))

(declare-fun lt!554548 () Unit!27015)

(declare-fun Unit!27087 () Unit!27015)

(assert (=> b!1581709 (= lt!554548 Unit!27087)))

(assert (=> b!1581709 (isDefined!2493 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))))))))

(declare-fun lt!554536 () Unit!27015)

(declare-fun Unit!27088 () Unit!27015)

(assert (=> b!1581709 (= lt!554536 Unit!27088)))

(declare-fun lt!554528 () Unit!27015)

(declare-fun Unit!27089 () Unit!27015)

(assert (=> b!1581709 (= lt!554528 Unit!27089)))

(assert (=> b!1581709 (= (_1!9822 (get!4964 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))))))) (h!22772 (t!143642 (t!143642 tokens!457))))))

(declare-fun lt!554541 () Unit!27015)

(declare-fun Unit!27090 () Unit!27015)

(assert (=> b!1581709 (= lt!554541 Unit!27090)))

(assert (=> b!1581709 (isEmpty!10386 (_2!9822 (get!4964 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))))))))))

(declare-fun lt!554540 () Unit!27015)

(declare-fun Unit!27091 () Unit!27015)

(assert (=> b!1581709 (= lt!554540 Unit!27091)))

(assert (=> b!1581709 (matchR!1910 (regex!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457))))) (list!6715 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457))))))))

(declare-fun lt!554553 () Unit!27015)

(declare-fun Unit!27092 () Unit!27015)

(assert (=> b!1581709 (= lt!554553 Unit!27092)))

(assert (=> b!1581709 (= (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))) (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))))

(declare-fun lt!554547 () Unit!27015)

(declare-fun Unit!27093 () Unit!27015)

(assert (=> b!1581709 (= lt!554547 Unit!27093)))

(declare-fun lt!554537 () Unit!27015)

(assert (=> b!1581709 (= lt!554537 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!60 thiss!17113 rules!1846 (h!22772 (t!143642 (t!143642 tokens!457))) (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))) (list!6715 lt!554531)))))

(declare-fun b!1581710 () Bool)

(assert (=> b!1581710 (= e!1016009 (isEmpty!10377 (_2!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (seqFromList!1871 (t!143642 (t!143642 tokens!457))))))))))

(assert (= (and d!470251 c!256388) b!1581708))

(assert (= (and d!470251 (not c!256388)) b!1581709))

(assert (= (and d!470251 res!705205) b!1581710))

(assert (=> d!470251 m!1863915))

(declare-fun m!1867151 () Bool)

(assert (=> d!470251 m!1867151))

(assert (=> d!470251 m!1863143))

(assert (=> d!470251 m!1863143))

(assert (=> d!470251 m!1863915))

(assert (=> d!470251 m!1863063))

(declare-fun m!1867153 () Bool)

(assert (=> d!470251 m!1867153))

(declare-fun m!1867155 () Bool)

(assert (=> b!1581709 m!1867155))

(declare-fun m!1867157 () Bool)

(assert (=> b!1581709 m!1867157))

(declare-fun m!1867159 () Bool)

(assert (=> b!1581709 m!1867159))

(declare-fun m!1867161 () Bool)

(assert (=> b!1581709 m!1867161))

(declare-fun m!1867163 () Bool)

(assert (=> b!1581709 m!1867163))

(declare-fun m!1867165 () Bool)

(assert (=> b!1581709 m!1867165))

(assert (=> b!1581709 m!1863933))

(declare-fun m!1867167 () Bool)

(assert (=> b!1581709 m!1867167))

(assert (=> b!1581709 m!1867165))

(declare-fun m!1867169 () Bool)

(assert (=> b!1581709 m!1867169))

(declare-fun m!1867171 () Bool)

(assert (=> b!1581709 m!1867171))

(declare-fun m!1867173 () Bool)

(assert (=> b!1581709 m!1867173))

(assert (=> b!1581709 m!1863143))

(assert (=> b!1581709 m!1867167))

(declare-fun m!1867175 () Bool)

(assert (=> b!1581709 m!1867175))

(declare-fun m!1867177 () Bool)

(assert (=> b!1581709 m!1867177))

(declare-fun m!1867179 () Bool)

(assert (=> b!1581709 m!1867179))

(declare-fun m!1867181 () Bool)

(assert (=> b!1581709 m!1867181))

(declare-fun m!1867183 () Bool)

(assert (=> b!1581709 m!1867183))

(declare-fun m!1867185 () Bool)

(assert (=> b!1581709 m!1867185))

(assert (=> b!1581709 m!1863909))

(declare-fun m!1867187 () Bool)

(assert (=> b!1581709 m!1867187))

(declare-fun m!1867189 () Bool)

(assert (=> b!1581709 m!1867189))

(assert (=> b!1581709 m!1863933))

(assert (=> b!1581709 m!1866477))

(assert (=> b!1581709 m!1867177))

(assert (=> b!1581709 m!1867183))

(assert (=> b!1581709 m!1867159))

(assert (=> b!1581709 m!1863909))

(declare-fun m!1867191 () Bool)

(assert (=> b!1581709 m!1867191))

(declare-fun m!1867193 () Bool)

(assert (=> b!1581709 m!1867193))

(declare-fun m!1867195 () Bool)

(assert (=> b!1581709 m!1867195))

(assert (=> b!1581709 m!1866477))

(declare-fun m!1867197 () Bool)

(assert (=> b!1581709 m!1867197))

(declare-fun m!1867199 () Bool)

(assert (=> b!1581709 m!1867199))

(assert (=> b!1581709 m!1867179))

(declare-fun m!1867201 () Bool)

(assert (=> b!1581709 m!1867201))

(declare-fun m!1867203 () Bool)

(assert (=> b!1581709 m!1867203))

(assert (=> b!1581709 m!1866477))

(assert (=> b!1581709 m!1867171))

(declare-fun m!1867205 () Bool)

(assert (=> b!1581709 m!1867205))

(assert (=> b!1581709 m!1867163))

(declare-fun m!1867207 () Bool)

(assert (=> b!1581709 m!1867207))

(declare-fun m!1867209 () Bool)

(assert (=> b!1581709 m!1867209))

(assert (=> b!1581709 m!1866477))

(assert (=> b!1581709 m!1867155))

(declare-fun m!1867211 () Bool)

(assert (=> b!1581709 m!1867211))

(assert (=> b!1581709 m!1867155))

(assert (=> b!1581709 m!1867205))

(assert (=> b!1581709 m!1867179))

(declare-fun m!1867213 () Bool)

(assert (=> b!1581709 m!1867213))

(assert (=> b!1581709 m!1867171))

(declare-fun m!1867215 () Bool)

(assert (=> b!1581709 m!1867215))

(assert (=> b!1581709 m!1867201))

(declare-fun m!1867217 () Bool)

(assert (=> b!1581709 m!1867217))

(assert (=> b!1581709 m!1867155))

(declare-fun m!1867219 () Bool)

(assert (=> b!1581709 m!1867219))

(assert (=> b!1581709 m!1863143))

(assert (=> b!1581709 m!1863915))

(assert (=> b!1581710 m!1863143))

(assert (=> b!1581710 m!1863143))

(assert (=> b!1581710 m!1863915))

(assert (=> b!1581710 m!1863915))

(assert (=> b!1581710 m!1867151))

(declare-fun m!1867221 () Bool)

(assert (=> b!1581710 m!1867221))

(assert (=> b!1580446 d!470251))

(declare-fun d!470257 () Bool)

(declare-fun lt!554558 () BalanceConc!11484)

(assert (=> d!470257 (= (list!6715 lt!554558) (printListTailRec!305 thiss!17113 (dropList!511 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))) 0) (list!6715 (BalanceConc!11485 Empty!5770))))))

(declare-fun e!1016012 () BalanceConc!11484)

(assert (=> d!470257 (= lt!554558 e!1016012)))

(declare-fun c!256390 () Bool)

(assert (=> d!470257 (= c!256390 (>= 0 (size!13972 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))))))

(declare-fun e!1016013 () Bool)

(assert (=> d!470257 e!1016013))

(declare-fun res!705208 () Bool)

(assert (=> d!470257 (=> (not res!705208) (not e!1016013))))

(assert (=> d!470257 (= res!705208 (>= 0 0))))

(assert (=> d!470257 (= (printTailRec!743 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))) 0 (BalanceConc!11485 Empty!5770)) lt!554558)))

(declare-fun b!1581715 () Bool)

(assert (=> b!1581715 (= e!1016013 (<= 0 (size!13972 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))))))

(declare-fun b!1581716 () Bool)

(assert (=> b!1581716 (= e!1016012 (BalanceConc!11485 Empty!5770))))

(declare-fun b!1581717 () Bool)

(assert (=> b!1581717 (= e!1016012 (printTailRec!743 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))) (+ 0 1) (++!4513 (BalanceConc!11485 Empty!5770) (charsOf!1710 (apply!4209 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))) 0)))))))

(declare-fun lt!554561 () List!17441)

(assert (=> b!1581717 (= lt!554561 (list!6716 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))))))

(declare-fun lt!554557 () Unit!27015)

(assert (=> b!1581717 (= lt!554557 (lemmaDropApply!512 lt!554561 0))))

(assert (=> b!1581717 (= (head!3187 (drop!814 lt!554561 0)) (apply!4214 lt!554561 0))))

(declare-fun lt!554555 () Unit!27015)

(assert (=> b!1581717 (= lt!554555 lt!554557)))

(declare-fun lt!554556 () List!17441)

(assert (=> b!1581717 (= lt!554556 (list!6716 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))))))

(declare-fun lt!554559 () Unit!27015)

(assert (=> b!1581717 (= lt!554559 (lemmaDropTail!492 lt!554556 0))))

(assert (=> b!1581717 (= (tail!2253 (drop!814 lt!554556 0)) (drop!814 lt!554556 (+ 0 1)))))

(declare-fun lt!554560 () Unit!27015)

(assert (=> b!1581717 (= lt!554560 lt!554559)))

(assert (= (and d!470257 res!705208) b!1581715))

(assert (= (and d!470257 c!256390) b!1581716))

(assert (= (and d!470257 (not c!256390)) b!1581717))

(assert (=> d!470257 m!1863433))

(assert (=> d!470257 m!1863175))

(declare-fun m!1867223 () Bool)

(assert (=> d!470257 m!1867223))

(assert (=> d!470257 m!1867223))

(assert (=> d!470257 m!1863433))

(declare-fun m!1867225 () Bool)

(assert (=> d!470257 m!1867225))

(declare-fun m!1867227 () Bool)

(assert (=> d!470257 m!1867227))

(assert (=> d!470257 m!1863175))

(declare-fun m!1867229 () Bool)

(assert (=> d!470257 m!1867229))

(assert (=> b!1581715 m!1863175))

(assert (=> b!1581715 m!1867229))

(declare-fun m!1867231 () Bool)

(assert (=> b!1581717 m!1867231))

(assert (=> b!1581717 m!1863175))

(assert (=> b!1581717 m!1863177))

(assert (=> b!1581717 m!1863175))

(declare-fun m!1867233 () Bool)

(assert (=> b!1581717 m!1867233))

(declare-fun m!1867235 () Bool)

(assert (=> b!1581717 m!1867235))

(declare-fun m!1867237 () Bool)

(assert (=> b!1581717 m!1867237))

(assert (=> b!1581717 m!1863175))

(declare-fun m!1867239 () Bool)

(assert (=> b!1581717 m!1867239))

(declare-fun m!1867243 () Bool)

(assert (=> b!1581717 m!1867243))

(declare-fun m!1867249 () Bool)

(assert (=> b!1581717 m!1867249))

(assert (=> b!1581717 m!1867239))

(declare-fun m!1867251 () Bool)

(assert (=> b!1581717 m!1867251))

(assert (=> b!1581717 m!1867235))

(declare-fun m!1867253 () Bool)

(assert (=> b!1581717 m!1867253))

(declare-fun m!1867255 () Bool)

(assert (=> b!1581717 m!1867255))

(declare-fun m!1867257 () Bool)

(assert (=> b!1581717 m!1867257))

(declare-fun m!1867259 () Bool)

(assert (=> b!1581717 m!1867259))

(assert (=> b!1581717 m!1867253))

(assert (=> b!1581717 m!1867233))

(assert (=> b!1581717 m!1867249))

(assert (=> b!1580446 d!470257))

(assert (=> b!1580446 d!469901))

(assert (=> b!1580446 d!469413))

(declare-fun b!1581733 () Bool)

(declare-fun e!1016021 () Unit!27015)

(declare-fun Unit!27096 () Unit!27015)

(assert (=> b!1581733 (= e!1016021 Unit!27096)))

(declare-fun e!1016020 () Bool)

(declare-fun lt!554577 () Token!5688)

(declare-fun b!1581731 () Bool)

(assert (=> b!1581731 (= e!1016020 (= (rule!4857 lt!554577) (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!554577))))))))

(declare-fun b!1581732 () Bool)

(declare-fun Unit!27097 () Unit!27015)

(assert (=> b!1581732 (= e!1016021 Unit!27097)))

(declare-fun lt!554583 () List!17439)

(assert (=> b!1581732 (= lt!554583 (++!4511 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238)))))

(declare-fun lt!554576 () Unit!27015)

(assert (=> b!1581732 (= lt!554576 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!128 thiss!17113 (rule!4857 lt!554577) rules!1846 lt!554583))))

(assert (=> b!1581732 (isEmpty!10382 (maxPrefixOneRule!725 thiss!17113 (rule!4857 lt!554577) lt!554583))))

(declare-fun lt!554572 () Unit!27015)

(assert (=> b!1581732 (= lt!554572 lt!554576)))

(declare-fun lt!554570 () List!17439)

(assert (=> b!1581732 (= lt!554570 (list!6715 (charsOf!1710 lt!554577)))))

(declare-fun lt!554579 () Unit!27015)

(assert (=> b!1581732 (= lt!554579 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!124 thiss!17113 (rule!4857 lt!554577) lt!554570 (++!4511 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238))))))

(assert (=> b!1581732 (not (matchR!1910 (regex!3061 (rule!4857 lt!554577)) lt!554570))))

(declare-fun lt!554580 () Unit!27015)

(assert (=> b!1581732 (= lt!554580 lt!554579)))

(assert (=> b!1581732 false))

(declare-fun b!1581730 () Bool)

(declare-fun res!705219 () Bool)

(assert (=> b!1581730 (=> (not res!705219) (not e!1016020))))

(assert (=> b!1581730 (= res!705219 (matchR!1910 (regex!3061 (get!4962 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!554577))))) (list!6715 (charsOf!1710 lt!554577))))))

(declare-fun d!470261 () Bool)

(assert (=> d!470261 (isDefined!2493 (maxPrefix!1254 thiss!17113 rules!1846 (++!4511 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238))))))

(declare-fun lt!554584 () Unit!27015)

(assert (=> d!470261 (= lt!554584 e!1016021)))

(declare-fun c!256392 () Bool)

(assert (=> d!470261 (= c!256392 (isEmpty!10382 (maxPrefix!1254 thiss!17113 rules!1846 (++!4511 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238)))))))

(declare-fun lt!554582 () Unit!27015)

(declare-fun lt!554578 () Unit!27015)

(assert (=> d!470261 (= lt!554582 lt!554578)))

(assert (=> d!470261 e!1016020))

(declare-fun res!705220 () Bool)

(assert (=> d!470261 (=> (not res!705220) (not e!1016020))))

(assert (=> d!470261 (= res!705220 (isDefined!2495 (getRuleFromTag!234 thiss!17113 rules!1846 (tag!3327 (rule!4857 lt!554577)))))))

(assert (=> d!470261 (= lt!554578 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!234 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) lt!554577))))

(declare-fun lt!554571 () Unit!27015)

(declare-fun lt!554575 () Unit!27015)

(assert (=> d!470261 (= lt!554571 lt!554575)))

(declare-fun lt!554573 () List!17439)

(assert (=> d!470261 (isPrefix!1321 lt!554573 (++!4511 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238)))))

(assert (=> d!470261 (= lt!554575 (lemmaPrefixStaysPrefixWhenAddingToSuffix!120 lt!554573 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238)))))

(assert (=> d!470261 (= lt!554573 (list!6715 (charsOf!1710 lt!554577)))))

(declare-fun lt!554586 () Unit!27015)

(declare-fun lt!554585 () Unit!27015)

(assert (=> d!470261 (= lt!554586 lt!554585)))

(declare-fun lt!554574 () List!17439)

(declare-fun lt!554581 () List!17439)

(assert (=> d!470261 (isPrefix!1321 lt!554574 (++!4511 lt!554574 lt!554581))))

(assert (=> d!470261 (= lt!554585 (lemmaConcatTwoListThenFirstIsPrefix!846 lt!554574 lt!554581))))

(assert (=> d!470261 (= lt!554581 (_2!9822 (get!4964 (maxPrefix!1254 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))))

(assert (=> d!470261 (= lt!554574 (list!6715 (charsOf!1710 lt!554577)))))

(assert (=> d!470261 (= lt!554577 (head!3187 (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (seqFromList!1872 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457))))))))))))

(assert (=> d!470261 (not (isEmpty!10379 rules!1846))))

(assert (=> d!470261 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!264 thiss!17113 rules!1846 (list!6715 (charsOf!1710 (h!22772 (t!143642 tokens!457)))) (list!6715 lt!553238)) lt!554584)))

(assert (= (and d!470261 res!705220) b!1581730))

(assert (= (and b!1581730 res!705219) b!1581731))

(assert (= (and d!470261 c!256392) b!1581732))

(assert (= (and d!470261 (not c!256392)) b!1581733))

(declare-fun m!1867269 () Bool)

(assert (=> b!1581731 m!1867269))

(assert (=> b!1581731 m!1867269))

(declare-fun m!1867273 () Bool)

(assert (=> b!1581731 m!1867273))

(assert (=> b!1581732 m!1866779))

(declare-fun m!1867279 () Bool)

(assert (=> b!1581732 m!1867279))

(declare-fun m!1867283 () Bool)

(assert (=> b!1581732 m!1867283))

(declare-fun m!1867285 () Bool)

(assert (=> b!1581732 m!1867285))

(assert (=> b!1581732 m!1867283))

(declare-fun m!1867287 () Bool)

(assert (=> b!1581732 m!1867287))

(declare-fun m!1867289 () Bool)

(assert (=> b!1581732 m!1867289))

(declare-fun m!1867291 () Bool)

(assert (=> b!1581732 m!1867291))

(declare-fun m!1867293 () Bool)

(assert (=> b!1581732 m!1867293))

(assert (=> b!1581732 m!1867291))

(assert (=> b!1581732 m!1863613))

(assert (=> b!1581732 m!1863887))

(assert (=> b!1581732 m!1866779))

(assert (=> b!1581730 m!1867269))

(assert (=> b!1581730 m!1867273))

(assert (=> b!1581730 m!1867283))

(assert (=> b!1581730 m!1867287))

(declare-fun m!1867301 () Bool)

(assert (=> b!1581730 m!1867301))

(assert (=> b!1581730 m!1867283))

(assert (=> b!1581730 m!1867287))

(assert (=> b!1581730 m!1867269))

(assert (=> d!470261 m!1863613))

(assert (=> d!470261 m!1863887))

(assert (=> d!470261 m!1866779))

(assert (=> d!470261 m!1863613))

(assert (=> d!470261 m!1863903))

(assert (=> d!470261 m!1863613))

(declare-fun m!1867305 () Bool)

(assert (=> d!470261 m!1867305))

(assert (=> d!470261 m!1863613))

(declare-fun m!1867309 () Bool)

(assert (=> d!470261 m!1867309))

(assert (=> d!470261 m!1867283))

(assert (=> d!470261 m!1867287))

(assert (=> d!470261 m!1867305))

(declare-fun m!1867317 () Bool)

(assert (=> d!470261 m!1867317))

(declare-fun m!1867319 () Bool)

(assert (=> d!470261 m!1867319))

(declare-fun m!1867321 () Bool)

(assert (=> d!470261 m!1867321))

(assert (=> d!470261 m!1866779))

(declare-fun m!1867323 () Bool)

(assert (=> d!470261 m!1867323))

(assert (=> d!470261 m!1863063))

(assert (=> d!470261 m!1867319))

(declare-fun m!1867325 () Bool)

(assert (=> d!470261 m!1867325))

(assert (=> d!470261 m!1867269))

(assert (=> d!470261 m!1867269))

(declare-fun m!1867327 () Bool)

(assert (=> d!470261 m!1867327))

(declare-fun m!1867329 () Bool)

(assert (=> d!470261 m!1867329))

(declare-fun m!1867331 () Bool)

(assert (=> d!470261 m!1867331))

(assert (=> d!470261 m!1867283))

(assert (=> d!470261 m!1866781))

(declare-fun m!1867333 () Bool)

(assert (=> d!470261 m!1867333))

(assert (=> d!470261 m!1863613))

(assert (=> d!470261 m!1863887))

(declare-fun m!1867335 () Bool)

(assert (=> d!470261 m!1867335))

(assert (=> d!470261 m!1866779))

(assert (=> d!470261 m!1866781))

(assert (=> d!470261 m!1863903))

(assert (=> d!470261 m!1863943))

(assert (=> d!470261 m!1867329))

(assert (=> d!470261 m!1866781))

(declare-fun m!1867343 () Bool)

(assert (=> d!470261 m!1867343))

(assert (=> b!1580446 d!470261))

(declare-fun d!470267 () Bool)

(assert (=> d!470267 (= (list!6716 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 (t!143642 tokens!457))))) (list!6720 (c!256023 (prepend!537 (seqFromList!1871 (t!143642 (t!143642 (t!143642 tokens!457)))) (h!22772 (t!143642 (t!143642 tokens!457)))))))))

(declare-fun bs!391044 () Bool)

(assert (= bs!391044 d!470267))

(declare-fun m!1867349 () Bool)

(assert (=> bs!391044 m!1867349))

(assert (=> b!1580446 d!470267))

(declare-fun d!470271 () Bool)

(declare-fun e!1016022 () Bool)

(assert (=> d!470271 e!1016022))

(declare-fun res!705221 () Bool)

(assert (=> d!470271 (=> (not res!705221) (not e!1016022))))

(declare-fun lt!554588 () BalanceConc!11484)

(assert (=> d!470271 (= res!705221 (= (list!6715 lt!554588) (Cons!17369 (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))) 0) Nil!17369)))))

(assert (=> d!470271 (= lt!554588 (singleton!574 (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))) 0)))))

(assert (=> d!470271 (= (singletonSeq!1401 (apply!4210 (charsOf!1710 (h!22772 (t!143642 (t!143642 tokens!457)))) 0)) lt!554588)))

(declare-fun b!1581734 () Bool)

(assert (=> b!1581734 (= e!1016022 (isBalanced!1693 (c!256021 lt!554588)))))

(assert (= (and d!470271 res!705221) b!1581734))

(declare-fun m!1867351 () Bool)

(assert (=> d!470271 m!1867351))

(assert (=> d!470271 m!1863895))

(declare-fun m!1867353 () Bool)

(assert (=> d!470271 m!1867353))

(declare-fun m!1867355 () Bool)

(assert (=> b!1581734 m!1867355))

(assert (=> b!1580446 d!470271))

(declare-fun d!470273 () Bool)

(assert (=> d!470273 (= (list!6716 lt!553269) (list!6720 (c!256023 lt!553269)))))

(declare-fun bs!391045 () Bool)

(assert (= bs!391045 d!470273))

(declare-fun m!1867357 () Bool)

(assert (=> bs!391045 m!1867357))

(assert (=> b!1580484 d!470273))

(declare-fun d!470275 () Bool)

(assert (=> d!470275 (= (list!6716 (seqFromList!1871 (t!143642 (t!143642 tokens!457)))) (list!6720 (c!256023 (seqFromList!1871 (t!143642 (t!143642 tokens!457))))))))

(declare-fun bs!391046 () Bool)

(assert (= bs!391046 d!470275))

(assert (=> bs!391046 m!1864141))

(assert (=> b!1580484 d!470275))

(declare-fun d!470277 () Bool)

(assert (=> d!470277 (= (list!6716 (_1!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))))) (list!6720 (c!256023 (_1!9823 (lex!1174 thiss!17113 rules!1846 (print!1221 thiss!17113 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))))))))))

(declare-fun bs!391047 () Bool)

(assert (= bs!391047 d!470277))

(declare-fun m!1867359 () Bool)

(assert (=> bs!391047 m!1867359))

(assert (=> d!469339 d!470277))

(assert (=> d!469339 d!469635))

(declare-fun d!470279 () Bool)

(assert (=> d!470279 (= (list!6716 (singletonSeq!1399 (h!22772 (t!143642 tokens!457)))) (list!6720 (c!256023 (singletonSeq!1399 (h!22772 (t!143642 tokens!457))))))))

(declare-fun bs!391048 () Bool)

(assert (= bs!391048 d!470279))

(declare-fun m!1867361 () Bool)

(assert (=> bs!391048 m!1867361))

(assert (=> d!469339 d!470279))

(assert (=> d!469339 d!469633))

(assert (=> d!469339 d!469631))

(assert (=> d!469339 d!469341))

(declare-fun d!470281 () Bool)

(declare-fun lt!554589 () Int)

(assert (=> d!470281 (= lt!554589 (size!13975 (list!6716 (_1!9823 lt!552811))))))

(assert (=> d!470281 (= lt!554589 (size!13976 (c!256023 (_1!9823 lt!552811))))))

(assert (=> d!470281 (= (size!13972 (_1!9823 lt!552811)) lt!554589)))

(declare-fun bs!391049 () Bool)

(assert (= bs!391049 d!470281))

(assert (=> bs!391049 m!1865941))

(assert (=> bs!391049 m!1865941))

(declare-fun m!1867363 () Bool)

(assert (=> bs!391049 m!1867363))

(declare-fun m!1867365 () Bool)

(assert (=> bs!391049 m!1867365))

(assert (=> d!469339 d!470281))

(declare-fun d!470283 () Bool)

(declare-fun res!705230 () Bool)

(declare-fun e!1016031 () Bool)

(assert (=> d!470283 (=> res!705230 e!1016031)))

(assert (=> d!470283 (= res!705230 ((_ is Nil!17372) rules!1846))))

(assert (=> d!470283 (= (noDuplicateTag!1078 thiss!17113 rules!1846 Nil!17374) e!1016031)))

(declare-fun b!1581743 () Bool)

(declare-fun e!1016032 () Bool)

(assert (=> b!1581743 (= e!1016031 e!1016032)))

(declare-fun res!705231 () Bool)

(assert (=> b!1581743 (=> (not res!705231) (not e!1016032))))

(declare-fun contains!3030 (List!17444 String!20087) Bool)

(assert (=> b!1581743 (= res!705231 (not (contains!3030 Nil!17374 (tag!3327 (h!22773 rules!1846)))))))

(declare-fun b!1581744 () Bool)

(assert (=> b!1581744 (= e!1016032 (noDuplicateTag!1078 thiss!17113 (t!143643 rules!1846) (Cons!17374 (tag!3327 (h!22773 rules!1846)) Nil!17374)))))

(assert (= (and d!470283 (not res!705230)) b!1581743))

(assert (= (and b!1581743 res!705231) b!1581744))

(declare-fun m!1867379 () Bool)

(assert (=> b!1581743 m!1867379))

(declare-fun m!1867381 () Bool)

(assert (=> b!1581744 m!1867381))

(assert (=> b!1580490 d!470283))

(declare-fun b!1581748 () Bool)

(declare-fun b_free!42719 () Bool)

(declare-fun b_next!43423 () Bool)

(assert (=> b!1581748 (= b_free!42719 (not b_next!43423))))

(declare-fun t!143782 () Bool)

(declare-fun tb!88951 () Bool)

(assert (=> (and b!1581748 (= (toValue!4464 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (toValue!4464 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143782) tb!88951))

(declare-fun result!107644 () Bool)

(assert (= result!107644 result!107578))

(assert (=> d!469621 t!143782))

(declare-fun b_and!110837 () Bool)

(declare-fun tp!465355 () Bool)

(assert (=> b!1581748 (= tp!465355 (and (=> t!143782 result!107644) b_and!110837))))

(declare-fun b_free!42721 () Bool)

(declare-fun b_next!43425 () Bool)

(assert (=> b!1581748 (= b_free!42721 (not b_next!43425))))

(declare-fun t!143784 () Bool)

(declare-fun tb!88953 () Bool)

(assert (=> (and b!1581748 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457))))) t!143784) tb!88953))

(declare-fun result!107646 () Bool)

(assert (= result!107646 result!107522))

(assert (=> d!469435 t!143784))

(declare-fun t!143786 () Bool)

(declare-fun tb!88955 () Bool)

(assert (=> (and b!1581748 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457))))))) t!143786) tb!88955))

(declare-fun result!107648 () Bool)

(assert (= result!107648 result!107636))

(assert (=> d!470235 t!143786))

(declare-fun t!143788 () Bool)

(declare-fun tb!88957 () Bool)

(assert (=> (and b!1581748 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (toChars!4323 (transformation!3061 (rule!4857 (apply!4209 lt!552802 0))))) t!143788) tb!88957))

(declare-fun result!107650 () Bool)

(assert (= result!107650 result!107620))

(assert (=> d!470069 t!143788))

(declare-fun tb!88959 () Bool)

(declare-fun t!143790 () Bool)

(assert (=> (and b!1581748 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (toChars!4323 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143790) tb!88959))

(declare-fun result!107652 () Bool)

(assert (= result!107652 result!107562))

(assert (=> d!469531 t!143790))

(declare-fun t!143792 () Bool)

(declare-fun tb!88961 () Bool)

(assert (=> (and b!1581748 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))) t!143792) tb!88961))

(declare-fun result!107654 () Bool)

(assert (= result!107654 result!107596))

(assert (=> d!469715 t!143792))

(declare-fun t!143794 () Bool)

(declare-fun tb!88963 () Bool)

(assert (=> (and b!1581748 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))) t!143794) tb!88963))

(declare-fun result!107656 () Bool)

(assert (= result!107656 result!107516))

(assert (=> d!469413 t!143794))

(assert (=> b!1580480 t!143784))

(declare-fun tb!88965 () Bool)

(declare-fun t!143796 () Bool)

(assert (=> (and b!1581748 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (toChars!4323 (transformation!3061 (rule!4857 lt!552938)))) t!143796) tb!88965))

(declare-fun result!107658 () Bool)

(assert (= result!107658 result!107604))

(assert (=> d!469737 t!143796))

(assert (=> b!1580551 t!143794))

(declare-fun b_and!110839 () Bool)

(declare-fun tp!465356 () Bool)

(assert (=> b!1581748 (= tp!465356 (and (=> t!143784 result!107646) (=> t!143786 result!107648) (=> t!143792 result!107654) (=> t!143788 result!107650) (=> t!143796 result!107658) (=> t!143790 result!107652) (=> t!143794 result!107656) b_and!110839))))

(declare-fun b!1581747 () Bool)

(declare-fun tp!465352 () Bool)

(declare-fun e!1016038 () Bool)

(declare-fun e!1016034 () Bool)

(assert (=> b!1581747 (= e!1016038 (and tp!465352 (inv!22780 (tag!3327 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (inv!22783 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) e!1016034))))

(declare-fun e!1016033 () Bool)

(assert (=> b!1580535 (= tp!465340 e!1016033)))

(declare-fun e!1016037 () Bool)

(declare-fun b!1581745 () Bool)

(declare-fun tp!465354 () Bool)

(assert (=> b!1581745 (= e!1016033 (and (inv!22784 (h!22772 (t!143642 (t!143642 tokens!457)))) e!1016037 tp!465354))))

(assert (=> b!1581748 (= e!1016034 (and tp!465355 tp!465356))))

(declare-fun tp!465353 () Bool)

(declare-fun b!1581746 () Bool)

(assert (=> b!1581746 (= e!1016037 (and (inv!21 (value!96911 (h!22772 (t!143642 (t!143642 tokens!457))))) e!1016038 tp!465353))))

(assert (= b!1581747 b!1581748))

(assert (= b!1581746 b!1581747))

(assert (= b!1581745 b!1581746))

(assert (= (and b!1580535 ((_ is Cons!17371) (t!143642 (t!143642 tokens!457)))) b!1581745))

(declare-fun m!1867383 () Bool)

(assert (=> b!1581747 m!1867383))

(declare-fun m!1867385 () Bool)

(assert (=> b!1581747 m!1867385))

(declare-fun m!1867387 () Bool)

(assert (=> b!1581745 m!1867387))

(declare-fun m!1867389 () Bool)

(assert (=> b!1581746 m!1867389))

(declare-fun b!1581749 () Bool)

(declare-fun e!1016039 () Bool)

(declare-fun tp!465357 () Bool)

(assert (=> b!1581749 (= e!1016039 (and tp_is_empty!7181 tp!465357))))

(assert (=> b!1580536 (= tp!465339 e!1016039)))

(assert (= (and b!1580536 ((_ is Cons!17369) (originalCharacters!3875 (h!22772 (t!143642 tokens!457))))) b!1581749))

(declare-fun b!1581753 () Bool)

(declare-fun e!1016040 () Bool)

(declare-fun tp!465361 () Bool)

(declare-fun tp!465360 () Bool)

(assert (=> b!1581753 (= e!1016040 (and tp!465361 tp!465360))))

(declare-fun b!1581751 () Bool)

(declare-fun tp!465362 () Bool)

(declare-fun tp!465359 () Bool)

(assert (=> b!1581751 (= e!1016040 (and tp!465362 tp!465359))))

(declare-fun b!1581752 () Bool)

(declare-fun tp!465358 () Bool)

(assert (=> b!1581752 (= e!1016040 tp!465358)))

(declare-fun b!1581750 () Bool)

(assert (=> b!1581750 (= e!1016040 tp_is_empty!7181)))

(assert (=> b!1580537 (= tp!465338 e!1016040)))

(assert (= (and b!1580537 ((_ is ElementMatch!4389) (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))) b!1581750))

(assert (= (and b!1580537 ((_ is Concat!7541) (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))) b!1581751))

(assert (= (and b!1580537 ((_ is Star!4389) (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))) b!1581752))

(assert (= (and b!1580537 ((_ is Union!4389) (regex!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))) b!1581753))

(declare-fun b!1581762 () Bool)

(declare-fun e!1016045 () Bool)

(declare-fun tp!465371 () Bool)

(declare-fun tp!465370 () Bool)

(assert (=> b!1581762 (= e!1016045 (and (inv!22787 (left!14034 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457))))))) tp!465371 (inv!22787 (right!14364 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457))))))) tp!465370))))

(declare-fun b!1581764 () Bool)

(declare-fun e!1016046 () Bool)

(declare-fun tp!465369 () Bool)

(assert (=> b!1581764 (= e!1016046 tp!465369)))

(declare-fun b!1581763 () Bool)

(declare-fun inv!22793 (IArray!11545) Bool)

(assert (=> b!1581763 (= e!1016045 (and (inv!22793 (xs!8574 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457))))))) e!1016046))))

(assert (=> b!1580311 (= tp!465240 (and (inv!22787 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457)))))) e!1016045))))

(assert (= (and b!1580311 ((_ is Node!5770) (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457))))))) b!1581762))

(assert (= b!1581763 b!1581764))

(assert (= (and b!1580311 ((_ is Leaf!8521) (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (value!96911 (h!22772 (t!143642 tokens!457))))))) b!1581763))

(declare-fun m!1867391 () Bool)

(assert (=> b!1581762 m!1867391))

(declare-fun m!1867393 () Bool)

(assert (=> b!1581762 m!1867393))

(declare-fun m!1867395 () Bool)

(assert (=> b!1581763 m!1867395))

(assert (=> b!1580311 m!1863619))

(declare-fun b!1581767 () Bool)

(declare-fun b_free!42723 () Bool)

(declare-fun b_next!43427 () Bool)

(assert (=> b!1581767 (= b_free!42723 (not b_next!43427))))

(declare-fun tb!88967 () Bool)

(declare-fun t!143798 () Bool)

(assert (=> (and b!1581767 (= (toValue!4464 (transformation!3061 (h!22773 (t!143643 (t!143643 rules!1846))))) (toValue!4464 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143798) tb!88967))

(declare-fun result!107662 () Bool)

(assert (= result!107662 result!107578))

(assert (=> d!469621 t!143798))

(declare-fun b_and!110841 () Bool)

(declare-fun tp!465372 () Bool)

(assert (=> b!1581767 (= tp!465372 (and (=> t!143798 result!107662) b_and!110841))))

(declare-fun b_free!42725 () Bool)

(declare-fun b_next!43429 () Bool)

(assert (=> b!1581767 (= b_free!42725 (not b_next!43429))))

(declare-fun tb!88969 () Bool)

(declare-fun t!143800 () Bool)

(assert (=> (and b!1581767 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 (t!143643 rules!1846))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457))))) t!143800) tb!88969))

(declare-fun result!107664 () Bool)

(assert (= result!107664 result!107522))

(assert (=> d!469435 t!143800))

(declare-fun t!143802 () Bool)

(declare-fun tb!88971 () Bool)

(assert (=> (and b!1581767 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 (t!143643 rules!1846))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457))))))) t!143802) tb!88971))

(declare-fun result!107666 () Bool)

(assert (= result!107666 result!107636))

(assert (=> d!470235 t!143802))

(declare-fun t!143804 () Bool)

(declare-fun tb!88973 () Bool)

(assert (=> (and b!1581767 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 (t!143643 rules!1846))))) (toChars!4323 (transformation!3061 (rule!4857 (apply!4209 lt!552802 0))))) t!143804) tb!88973))

(declare-fun result!107668 () Bool)

(assert (= result!107668 result!107620))

(assert (=> d!470069 t!143804))

(declare-fun t!143806 () Bool)

(declare-fun tb!88975 () Bool)

(assert (=> (and b!1581767 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 (t!143643 rules!1846))))) (toChars!4323 (transformation!3061 (rule!4857 (_1!9822 (get!4964 lt!552968)))))) t!143806) tb!88975))

(declare-fun result!107670 () Bool)

(assert (= result!107670 result!107562))

(assert (=> d!469531 t!143806))

(declare-fun tb!88977 () Bool)

(declare-fun t!143808 () Bool)

(assert (=> (and b!1581767 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 (t!143643 rules!1846))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (Cons!17371 (h!22772 tokens!457) Nil!17371)))))) t!143808) tb!88977))

(declare-fun result!107672 () Bool)

(assert (= result!107672 result!107596))

(assert (=> d!469715 t!143808))

(declare-fun t!143810 () Bool)

(declare-fun tb!88979 () Bool)

(assert (=> (and b!1581767 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 (t!143643 rules!1846))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457)))))) t!143810) tb!88979))

(declare-fun result!107674 () Bool)

(assert (= result!107674 result!107516))

(assert (=> d!469413 t!143810))

(assert (=> b!1580480 t!143800))

(declare-fun tb!88981 () Bool)

(declare-fun t!143812 () Bool)

(assert (=> (and b!1581767 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 (t!143643 rules!1846))))) (toChars!4323 (transformation!3061 (rule!4857 lt!552938)))) t!143812) tb!88981))

(declare-fun result!107676 () Bool)

(assert (= result!107676 result!107604))

(assert (=> d!469737 t!143812))

(assert (=> b!1580551 t!143810))

(declare-fun tp!465375 () Bool)

(declare-fun b_and!110843 () Bool)

(assert (=> b!1581767 (= tp!465375 (and (=> t!143810 result!107674) (=> t!143800 result!107664) (=> t!143804 result!107668) (=> t!143802 result!107666) (=> t!143808 result!107672) (=> t!143812 result!107676) (=> t!143806 result!107670) b_and!110843))))

(declare-fun e!1016049 () Bool)

(assert (=> b!1581767 (= e!1016049 (and tp!465372 tp!465375))))

(declare-fun b!1581766 () Bool)

(declare-fun tp!465374 () Bool)

(declare-fun e!1016048 () Bool)

(assert (=> b!1581766 (= e!1016048 (and tp!465374 (inv!22780 (tag!3327 (h!22773 (t!143643 (t!143643 rules!1846))))) (inv!22783 (transformation!3061 (h!22773 (t!143643 (t!143643 rules!1846))))) e!1016049))))

(declare-fun b!1581765 () Bool)

(declare-fun e!1016047 () Bool)

(declare-fun tp!465373 () Bool)

(assert (=> b!1581765 (= e!1016047 (and e!1016048 tp!465373))))

(assert (=> b!1580513 (= tp!465317 e!1016047)))

(assert (= b!1581766 b!1581767))

(assert (= b!1581765 b!1581766))

(assert (= (and b!1580513 ((_ is Cons!17372) (t!143643 (t!143643 rules!1846)))) b!1581765))

(declare-fun m!1867397 () Bool)

(assert (=> b!1581766 m!1867397))

(declare-fun m!1867399 () Bool)

(assert (=> b!1581766 m!1867399))

(declare-fun b!1581771 () Bool)

(declare-fun e!1016051 () Bool)

(declare-fun tp!465379 () Bool)

(declare-fun tp!465378 () Bool)

(assert (=> b!1581771 (= e!1016051 (and tp!465379 tp!465378))))

(declare-fun b!1581769 () Bool)

(declare-fun tp!465380 () Bool)

(declare-fun tp!465377 () Bool)

(assert (=> b!1581769 (= e!1016051 (and tp!465380 tp!465377))))

(declare-fun b!1581770 () Bool)

(declare-fun tp!465376 () Bool)

(assert (=> b!1581770 (= e!1016051 tp!465376)))

(declare-fun b!1581768 () Bool)

(assert (=> b!1581768 (= e!1016051 tp_is_empty!7181)))

(assert (=> b!1580522 (= tp!465327 e!1016051)))

(assert (= (and b!1580522 ((_ is ElementMatch!4389) (regOne!9290 (regex!3061 (h!22773 rules!1846))))) b!1581768))

(assert (= (and b!1580522 ((_ is Concat!7541) (regOne!9290 (regex!3061 (h!22773 rules!1846))))) b!1581769))

(assert (= (and b!1580522 ((_ is Star!4389) (regOne!9290 (regex!3061 (h!22773 rules!1846))))) b!1581770))

(assert (= (and b!1580522 ((_ is Union!4389) (regOne!9290 (regex!3061 (h!22773 rules!1846))))) b!1581771))

(declare-fun b!1581775 () Bool)

(declare-fun e!1016052 () Bool)

(declare-fun tp!465384 () Bool)

(declare-fun tp!465383 () Bool)

(assert (=> b!1581775 (= e!1016052 (and tp!465384 tp!465383))))

(declare-fun b!1581773 () Bool)

(declare-fun tp!465385 () Bool)

(declare-fun tp!465382 () Bool)

(assert (=> b!1581773 (= e!1016052 (and tp!465385 tp!465382))))

(declare-fun b!1581774 () Bool)

(declare-fun tp!465381 () Bool)

(assert (=> b!1581774 (= e!1016052 tp!465381)))

(declare-fun b!1581772 () Bool)

(assert (=> b!1581772 (= e!1016052 tp_is_empty!7181)))

(assert (=> b!1580522 (= tp!465324 e!1016052)))

(assert (= (and b!1580522 ((_ is ElementMatch!4389) (regTwo!9290 (regex!3061 (h!22773 rules!1846))))) b!1581772))

(assert (= (and b!1580522 ((_ is Concat!7541) (regTwo!9290 (regex!3061 (h!22773 rules!1846))))) b!1581773))

(assert (= (and b!1580522 ((_ is Star!4389) (regTwo!9290 (regex!3061 (h!22773 rules!1846))))) b!1581774))

(assert (= (and b!1580522 ((_ is Union!4389) (regTwo!9290 (regex!3061 (h!22773 rules!1846))))) b!1581775))

(declare-fun b!1581779 () Bool)

(declare-fun e!1016053 () Bool)

(declare-fun tp!465389 () Bool)

(declare-fun tp!465388 () Bool)

(assert (=> b!1581779 (= e!1016053 (and tp!465389 tp!465388))))

(declare-fun b!1581777 () Bool)

(declare-fun tp!465390 () Bool)

(declare-fun tp!465387 () Bool)

(assert (=> b!1581777 (= e!1016053 (and tp!465390 tp!465387))))

(declare-fun b!1581778 () Bool)

(declare-fun tp!465386 () Bool)

(assert (=> b!1581778 (= e!1016053 tp!465386)))

(declare-fun b!1581776 () Bool)

(assert (=> b!1581776 (= e!1016053 tp_is_empty!7181)))

(assert (=> b!1580523 (= tp!465323 e!1016053)))

(assert (= (and b!1580523 ((_ is ElementMatch!4389) (reg!4718 (regex!3061 (h!22773 rules!1846))))) b!1581776))

(assert (= (and b!1580523 ((_ is Concat!7541) (reg!4718 (regex!3061 (h!22773 rules!1846))))) b!1581777))

(assert (= (and b!1580523 ((_ is Star!4389) (reg!4718 (regex!3061 (h!22773 rules!1846))))) b!1581778))

(assert (= (and b!1580523 ((_ is Union!4389) (reg!4718 (regex!3061 (h!22773 rules!1846))))) b!1581779))

(declare-fun b!1581783 () Bool)

(declare-fun e!1016054 () Bool)

(declare-fun tp!465394 () Bool)

(declare-fun tp!465393 () Bool)

(assert (=> b!1581783 (= e!1016054 (and tp!465394 tp!465393))))

(declare-fun b!1581781 () Bool)

(declare-fun tp!465395 () Bool)

(declare-fun tp!465392 () Bool)

(assert (=> b!1581781 (= e!1016054 (and tp!465395 tp!465392))))

(declare-fun b!1581782 () Bool)

(declare-fun tp!465391 () Bool)

(assert (=> b!1581782 (= e!1016054 tp!465391)))

(declare-fun b!1581780 () Bool)

(assert (=> b!1581780 (= e!1016054 tp_is_empty!7181)))

(assert (=> b!1580514 (= tp!465318 e!1016054)))

(assert (= (and b!1580514 ((_ is ElementMatch!4389) (regex!3061 (h!22773 (t!143643 rules!1846))))) b!1581780))

(assert (= (and b!1580514 ((_ is Concat!7541) (regex!3061 (h!22773 (t!143643 rules!1846))))) b!1581781))

(assert (= (and b!1580514 ((_ is Star!4389) (regex!3061 (h!22773 (t!143643 rules!1846))))) b!1581782))

(assert (= (and b!1580514 ((_ is Union!4389) (regex!3061 (h!22773 (t!143643 rules!1846))))) b!1581783))

(declare-fun b!1581787 () Bool)

(declare-fun e!1016055 () Bool)

(declare-fun tp!465399 () Bool)

(declare-fun tp!465398 () Bool)

(assert (=> b!1581787 (= e!1016055 (and tp!465399 tp!465398))))

(declare-fun b!1581785 () Bool)

(declare-fun tp!465400 () Bool)

(declare-fun tp!465397 () Bool)

(assert (=> b!1581785 (= e!1016055 (and tp!465400 tp!465397))))

(declare-fun b!1581786 () Bool)

(declare-fun tp!465396 () Bool)

(assert (=> b!1581786 (= e!1016055 tp!465396)))

(declare-fun b!1581784 () Bool)

(assert (=> b!1581784 (= e!1016055 tp_is_empty!7181)))

(assert (=> b!1580524 (= tp!465326 e!1016055)))

(assert (= (and b!1580524 ((_ is ElementMatch!4389) (regOne!9291 (regex!3061 (h!22773 rules!1846))))) b!1581784))

(assert (= (and b!1580524 ((_ is Concat!7541) (regOne!9291 (regex!3061 (h!22773 rules!1846))))) b!1581785))

(assert (= (and b!1580524 ((_ is Star!4389) (regOne!9291 (regex!3061 (h!22773 rules!1846))))) b!1581786))

(assert (= (and b!1580524 ((_ is Union!4389) (regOne!9291 (regex!3061 (h!22773 rules!1846))))) b!1581787))

(declare-fun b!1581791 () Bool)

(declare-fun e!1016056 () Bool)

(declare-fun tp!465404 () Bool)

(declare-fun tp!465403 () Bool)

(assert (=> b!1581791 (= e!1016056 (and tp!465404 tp!465403))))

(declare-fun b!1581789 () Bool)

(declare-fun tp!465405 () Bool)

(declare-fun tp!465402 () Bool)

(assert (=> b!1581789 (= e!1016056 (and tp!465405 tp!465402))))

(declare-fun b!1581790 () Bool)

(declare-fun tp!465401 () Bool)

(assert (=> b!1581790 (= e!1016056 tp!465401)))

(declare-fun b!1581788 () Bool)

(assert (=> b!1581788 (= e!1016056 tp_is_empty!7181)))

(assert (=> b!1580524 (= tp!465325 e!1016056)))

(assert (= (and b!1580524 ((_ is ElementMatch!4389) (regTwo!9291 (regex!3061 (h!22773 rules!1846))))) b!1581788))

(assert (= (and b!1580524 ((_ is Concat!7541) (regTwo!9291 (regex!3061 (h!22773 rules!1846))))) b!1581789))

(assert (= (and b!1580524 ((_ is Star!4389) (regTwo!9291 (regex!3061 (h!22773 rules!1846))))) b!1581790))

(assert (= (and b!1580524 ((_ is Union!4389) (regTwo!9291 (regex!3061 (h!22773 rules!1846))))) b!1581791))

(declare-fun b!1581795 () Bool)

(declare-fun e!1016057 () Bool)

(declare-fun tp!465409 () Bool)

(declare-fun tp!465408 () Bool)

(assert (=> b!1581795 (= e!1016057 (and tp!465409 tp!465408))))

(declare-fun b!1581793 () Bool)

(declare-fun tp!465410 () Bool)

(declare-fun tp!465407 () Bool)

(assert (=> b!1581793 (= e!1016057 (and tp!465410 tp!465407))))

(declare-fun b!1581794 () Bool)

(declare-fun tp!465406 () Bool)

(assert (=> b!1581794 (= e!1016057 tp!465406)))

(declare-fun b!1581792 () Bool)

(assert (=> b!1581792 (= e!1016057 tp_is_empty!7181)))

(assert (=> b!1580502 (= tp!465307 e!1016057)))

(assert (= (and b!1580502 ((_ is ElementMatch!4389) (regOne!9290 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581792))

(assert (= (and b!1580502 ((_ is Concat!7541) (regOne!9290 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581793))

(assert (= (and b!1580502 ((_ is Star!4389) (regOne!9290 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581794))

(assert (= (and b!1580502 ((_ is Union!4389) (regOne!9290 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581795))

(declare-fun b!1581799 () Bool)

(declare-fun e!1016058 () Bool)

(declare-fun tp!465414 () Bool)

(declare-fun tp!465413 () Bool)

(assert (=> b!1581799 (= e!1016058 (and tp!465414 tp!465413))))

(declare-fun b!1581797 () Bool)

(declare-fun tp!465415 () Bool)

(declare-fun tp!465412 () Bool)

(assert (=> b!1581797 (= e!1016058 (and tp!465415 tp!465412))))

(declare-fun b!1581798 () Bool)

(declare-fun tp!465411 () Bool)

(assert (=> b!1581798 (= e!1016058 tp!465411)))

(declare-fun b!1581796 () Bool)

(assert (=> b!1581796 (= e!1016058 tp_is_empty!7181)))

(assert (=> b!1580502 (= tp!465304 e!1016058)))

(assert (= (and b!1580502 ((_ is ElementMatch!4389) (regTwo!9290 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581796))

(assert (= (and b!1580502 ((_ is Concat!7541) (regTwo!9290 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581797))

(assert (= (and b!1580502 ((_ is Star!4389) (regTwo!9290 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581798))

(assert (= (and b!1580502 ((_ is Union!4389) (regTwo!9290 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581799))

(declare-fun b!1581800 () Bool)

(declare-fun e!1016059 () Bool)

(declare-fun tp!465416 () Bool)

(assert (=> b!1581800 (= e!1016059 (and tp_is_empty!7181 tp!465416))))

(assert (=> b!1580520 (= tp!465322 e!1016059)))

(assert (= (and b!1580520 ((_ is Cons!17369) (t!143640 (originalCharacters!3875 (h!22772 tokens!457))))) b!1581800))

(declare-fun b!1581803 () Bool)

(declare-fun e!1016062 () Bool)

(assert (=> b!1581803 (= e!1016062 true)))

(declare-fun b!1581802 () Bool)

(declare-fun e!1016061 () Bool)

(assert (=> b!1581802 (= e!1016061 e!1016062)))

(declare-fun b!1581801 () Bool)

(declare-fun e!1016060 () Bool)

(assert (=> b!1581801 (= e!1016060 e!1016061)))

(assert (=> b!1580296 e!1016060))

(assert (= b!1581802 b!1581803))

(assert (= b!1581801 b!1581802))

(assert (= (and b!1580296 ((_ is Cons!17372) (t!143643 rules!1846))) b!1581801))

(assert (=> b!1581803 (< (dynLambda!7692 order!10231 (toValue!4464 (transformation!3061 (h!22773 (t!143643 rules!1846))))) (dynLambda!7693 order!10233 lambda!66454))))

(assert (=> b!1581803 (< (dynLambda!7694 order!10235 (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846))))) (dynLambda!7693 order!10233 lambda!66454))))

(declare-fun b!1581807 () Bool)

(declare-fun e!1016063 () Bool)

(declare-fun tp!465420 () Bool)

(declare-fun tp!465419 () Bool)

(assert (=> b!1581807 (= e!1016063 (and tp!465420 tp!465419))))

(declare-fun b!1581805 () Bool)

(declare-fun tp!465421 () Bool)

(declare-fun tp!465418 () Bool)

(assert (=> b!1581805 (= e!1016063 (and tp!465421 tp!465418))))

(declare-fun b!1581806 () Bool)

(declare-fun tp!465417 () Bool)

(assert (=> b!1581806 (= e!1016063 tp!465417)))

(declare-fun b!1581804 () Bool)

(assert (=> b!1581804 (= e!1016063 tp_is_empty!7181)))

(assert (=> b!1580503 (= tp!465303 e!1016063)))

(assert (= (and b!1580503 ((_ is ElementMatch!4389) (reg!4718 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581804))

(assert (= (and b!1580503 ((_ is Concat!7541) (reg!4718 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581805))

(assert (= (and b!1580503 ((_ is Star!4389) (reg!4718 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581806))

(assert (= (and b!1580503 ((_ is Union!4389) (reg!4718 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581807))

(declare-fun b!1581811 () Bool)

(declare-fun e!1016064 () Bool)

(declare-fun tp!465425 () Bool)

(declare-fun tp!465424 () Bool)

(assert (=> b!1581811 (= e!1016064 (and tp!465425 tp!465424))))

(declare-fun b!1581809 () Bool)

(declare-fun tp!465426 () Bool)

(declare-fun tp!465423 () Bool)

(assert (=> b!1581809 (= e!1016064 (and tp!465426 tp!465423))))

(declare-fun b!1581810 () Bool)

(declare-fun tp!465422 () Bool)

(assert (=> b!1581810 (= e!1016064 tp!465422)))

(declare-fun b!1581808 () Bool)

(assert (=> b!1581808 (= e!1016064 tp_is_empty!7181)))

(assert (=> b!1580504 (= tp!465306 e!1016064)))

(assert (= (and b!1580504 ((_ is ElementMatch!4389) (regOne!9291 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581808))

(assert (= (and b!1580504 ((_ is Concat!7541) (regOne!9291 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581809))

(assert (= (and b!1580504 ((_ is Star!4389) (regOne!9291 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581810))

(assert (= (and b!1580504 ((_ is Union!4389) (regOne!9291 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581811))

(declare-fun b!1581815 () Bool)

(declare-fun e!1016065 () Bool)

(declare-fun tp!465430 () Bool)

(declare-fun tp!465429 () Bool)

(assert (=> b!1581815 (= e!1016065 (and tp!465430 tp!465429))))

(declare-fun b!1581813 () Bool)

(declare-fun tp!465431 () Bool)

(declare-fun tp!465428 () Bool)

(assert (=> b!1581813 (= e!1016065 (and tp!465431 tp!465428))))

(declare-fun b!1581814 () Bool)

(declare-fun tp!465427 () Bool)

(assert (=> b!1581814 (= e!1016065 tp!465427)))

(declare-fun b!1581812 () Bool)

(assert (=> b!1581812 (= e!1016065 tp_is_empty!7181)))

(assert (=> b!1580504 (= tp!465305 e!1016065)))

(assert (= (and b!1580504 ((_ is ElementMatch!4389) (regTwo!9291 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581812))

(assert (= (and b!1580504 ((_ is Concat!7541) (regTwo!9291 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581813))

(assert (= (and b!1580504 ((_ is Star!4389) (regTwo!9291 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581814))

(assert (= (and b!1580504 ((_ is Union!4389) (regTwo!9291 (regex!3061 (rule!4857 (h!22772 tokens!457)))))) b!1581815))

(declare-fun e!1016066 () Bool)

(declare-fun tp!465433 () Bool)

(declare-fun tp!465434 () Bool)

(declare-fun b!1581816 () Bool)

(assert (=> b!1581816 (= e!1016066 (and (inv!22787 (left!14034 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457)))))) tp!465434 (inv!22787 (right!14364 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457)))))) tp!465433))))

(declare-fun b!1581818 () Bool)

(declare-fun e!1016067 () Bool)

(declare-fun tp!465432 () Bool)

(assert (=> b!1581818 (= e!1016067 tp!465432)))

(declare-fun b!1581817 () Bool)

(assert (=> b!1581817 (= e!1016066 (and (inv!22793 (xs!8574 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457)))))) e!1016067))))

(assert (=> b!1580332 (= tp!465241 (and (inv!22787 (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457))))) e!1016066))))

(assert (= (and b!1580332 ((_ is Node!5770) (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457)))))) b!1581816))

(assert (= b!1581817 b!1581818))

(assert (= (and b!1580332 ((_ is Leaf!8521) (c!256021 (dynLambda!7695 (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (value!96911 (h!22772 tokens!457)))))) b!1581817))

(declare-fun m!1867401 () Bool)

(assert (=> b!1581816 m!1867401))

(declare-fun m!1867403 () Bool)

(assert (=> b!1581816 m!1867403))

(declare-fun m!1867405 () Bool)

(assert (=> b!1581817 m!1867405))

(assert (=> b!1580332 m!1863719))

(declare-fun b_lambda!49761 () Bool)

(assert (= b_lambda!49759 (or (and b!1580538 b_free!42717 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))))) (and b!1581767 b_free!42725 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 (t!143643 rules!1846))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))))) (and b!1580515 b_free!42713 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))))) (and b!1581748 b_free!42721) (and b!1580067 b_free!42701 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))))) (and b!1580060 b_free!42697 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))))) b_lambda!49761)))

(declare-fun b_lambda!49763 () Bool)

(assert (= b_lambda!49743 (or d!469405 b_lambda!49763)))

(declare-fun bs!391050 () Bool)

(declare-fun d!470289 () Bool)

(assert (= bs!391050 (and d!470289 d!469405)))

(assert (=> bs!391050 (= (dynLambda!7696 lambda!66454 (h!22772 tokens!457)) (rulesProduceIndividualToken!1342 thiss!17113 rules!1846 (h!22772 tokens!457)))))

(assert (=> bs!391050 m!1863117))

(assert (=> b!1580766 d!470289))

(declare-fun b_lambda!49765 () Bool)

(assert (= b_lambda!49737 (or (and b!1580067 b_free!42701 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 tokens!457)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))) (and b!1581748 b_free!42721 (= (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 (t!143642 tokens!457)))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))) (and b!1580060 b_free!42697 (= (toChars!4323 (transformation!3061 (h!22773 rules!1846))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))) (and b!1580515 b_free!42713 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 rules!1846)))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))) (and b!1580538 b_free!42717) (and b!1581767 b_free!42725 (= (toChars!4323 (transformation!3061 (h!22773 (t!143643 (t!143643 rules!1846))))) (toChars!4323 (transformation!3061 (rule!4857 (h!22772 (t!143642 tokens!457))))))) b_lambda!49765)))

(check-sat (not b!1581201) (not b!1581532) (not b!1580849) (not b!1581571) (not b!1581437) (not d!470193) b_and!110773 (not b!1581195) (not d!469631) (not d!469923) (not b!1581645) (not d!470157) (not d!470275) (not b!1580990) b_and!110839 (not b!1580778) (not d!469929) (not b!1581196) (not b!1581256) (not b!1580785) (not b!1581515) (not b!1581179) (not d!470277) (not d!469647) (not b!1581550) (not tb!88943) (not d!469751) (not b!1581370) (not b!1581325) (not b!1581806) (not b_next!43419) (not b!1580926) (not b!1581810) (not b!1580928) (not bm!102694) (not d!470177) (not bm!102715) (not d!469635) (not b!1581252) (not b_next!43425) (not b!1580946) (not b!1581786) (not b!1580978) (not b!1580962) (not d!469603) (not b!1580845) (not b!1581530) (not b!1580761) (not bm!102713) (not d!469941) (not b!1581507) (not bm!102698) (not d!469761) (not b!1580754) (not b!1581692) (not b!1580660) (not bm!102705) (not d!469991) (not d!469561) (not b!1581311) (not b!1581653) (not d!469709) (not b!1580599) (not b!1581567) (not d!469911) (not b!1581766) (not b!1581510) (not d!469993) (not b!1581500) (not b!1581230) (not bm!102719) (not b!1581506) (not b!1581312) (not b!1581717) (not d!469737) (not d!470261) (not b!1581560) (not b!1580841) (not d!469701) (not b!1581797) (not b!1581210) (not b!1580649) (not b!1580810) (not b!1581180) (not b!1580633) (not b!1581732) (not b!1581313) (not d!469601) (not b!1581036) b_and!110837 (not d!470043) (not b!1581695) (not d!469629) (not b!1581783) (not d!469915) (not d!469607) (not d!470059) (not d!470145) (not b!1581809) (not bm!102690) (not tb!88903) (not b!1580843) b_and!110835 (not bm!102709) (not b!1580865) (not b!1581743) (not b!1581239) (not d!469681) (not d!469749) (not b!1581745) (not b!1581570) b_and!110777 (not d!470227) (not b_next!43405) (not d!469559) (not b!1580864) (not b!1581184) (not b!1581694) (not d!470239) (not b!1581518) (not b!1580549) (not b!1580944) (not b!1581193) (not b!1580653) (not b!1580896) (not d!470247) (not b_lambda!49739) (not d!470273) (not d!469739) (not d!470185) (not b!1580626) (not b!1581559) (not b!1581209) (not b!1581443) (not b!1581208) (not b!1580839) (not b!1580985) (not b!1581241) (not b!1581333) (not d!470159) (not d!469553) (not b!1581539) (not b!1581553) (not d!470155) (not b!1580757) (not d!469917) (not b!1580959) (not b!1580808) (not d!469933) (not b!1580988) (not b!1580565) (not d!469705) (not b!1580966) (not b!1580890) (not d!469551) (not d!470125) (not d!469735) (not b!1580971) (not b!1581390) (not b!1581552) (not b!1581248) (not d!469611) (not d!469609) (not d!470235) (not b!1581734) (not d!469519) (not b!1581649) (not d!469511) (not b!1580604) (not d!470183) (not b!1581785) (not b!1580868) (not d!469971) (not b!1581534) (not tb!88927) (not b!1580925) (not b_next!43403) (not d!469623) (not b!1581231) (not b!1580811) (not d!469769) (not b_next!43417) (not b!1580842) (not d!470107) (not b!1581558) (not b!1581801) b_and!110829 (not b!1581764) (not b!1581529) tp_is_empty!7181 (not b_lambda!49745) (not d!470069) (not b!1581308) (not b_next!43429) (not d!470257) (not d!470101) b_and!110841 (not d!469723) (not b!1581746) (not d!470135) (not d!470173) (not d!469967) (not b!1580807) (not b!1581769) (not b!1581237) (not b!1581566) (not b!1581223) (not b!1580908) (not b!1581811) (not d!469523) (not b!1581334) (not b!1581531) (not d!469905) (not b!1581650) (not d!469653) (not b!1580610) (not b!1581778) (not b!1581814) (not d!469663) (not b!1581693) (not b_next!43427) (not d!469999) (not b!1581314) (not d!470179) (not d!469733) (not b!1580805) (not b!1581799) (not b!1580989) (not b!1581250) (not d!470213) (not d!469531) (not b!1580656) (not b_next!43399) (not b!1581793) (not b_next!43415) (not b!1581520) (not b!1580786) (not b!1581178) (not b!1580596) (not b!1581815) (not d!470181) (not b!1581309) (not b!1581235) (not b!1580551) (not b!1581009) (not d!469679) (not b!1581781) (not d!470161) (not b!1580861) (not d!470081) (not b!1581562) (not b!1581398) (not d!470267) (not b!1581053) (not b!1581709) (not bm!102708) (not b!1580606) (not d!469557) (not b!1581779) (not d!470017) (not b!1581338) (not d!470149) (not bm!102714) (not b!1581752) (not b!1580924) (not d!470051) (not d!470271) (not b!1581770) (not b!1581005) (not b!1580862) (not b!1580942) (not b!1581445) (not b!1581715) (not d!469909) (not b!1581417) (not b!1581557) b_and!110831 (not d!469675) (not b!1581691) (not d!470189) (not b!1580651) (not b!1581528) (not b_next!43401) (not d!469937) (not b!1581477) (not b!1581698) (not d!470047) (not b!1580863) (not d!469707) (not b!1581647) (not b!1581206) (not b!1580945) (not b!1581046) (not b!1581245) (not b!1580844) b_and!110779 (not b!1581705) (not b!1581787) (not b!1580311) (not d!469555) (not b!1580601) (not bm!102710) (not d!470167) (not b!1581699) (not b!1580929) (not b!1581035) (not b!1581800) (not d!469721) (not b!1581307) (not d!469997) (not b!1581807) (not b!1581255) (not d!470249) (not b!1581397) (not b!1581762) (not b!1581795) (not d!469775) (not d!470281) (not b!1581222) (not d!469605) (not b_lambda!49751) (not b!1580648) (not b!1581236) (not d!470089) (not b!1580869) (not b!1581244) (not d!469791) (not b!1581655) (not b!1581561) (not d!470241) (not b_lambda!49749) (not b_lambda!49755) (not d!469919) (not b!1581524) (not d!470077) (not b!1581389) (not d!469759) (not d!469943) (not b!1581730) (not b!1580657) (not b!1580650) (not b!1580927) (not b!1581226) (not b!1580659) (not b!1581816) (not b!1581213) (not b!1581753) (not b!1581710) (not d!469513) (not d!470143) (not b!1581642) (not d!469745) (not b!1580957) (not d!470073) (not d!469907) (not d!469935) (not d!470171) (not b!1581406) (not b!1581763) (not b!1580332) (not b!1581771) (not b!1580607) (not b!1581777) (not b!1581418) (not b!1580850) (not b!1581545) (not b!1580848) (not tb!88911) (not b!1581549) (not b!1581016) (not b!1580837) (not b!1581205) (not b!1581551) (not b!1581544) (not b!1580964) (not b_next!43423) (not b_lambda!49763) (not b!1581505) (not b!1580809) (not b!1580787) b_and!110843 (not d!469529) (not b!1581501) (not b!1581700) (not b!1581199) (not b!1581744) (not b!1581404) (not d!470147) (not d!469743) (not b!1581243) (not b!1580759) (not b!1581006) (not b!1581232) (not bm!102716) (not b!1580995) (not b!1581513) (not b!1581214) (not b!1581537) (not b!1581775) (not b!1580898) (not b!1581220) (not b!1580566) (not d!470225) (not b!1580552) (not b!1581240) (not b!1581526) (not d!470087) (not d!469521) b_and!110833 (not d!469897) (not tb!88887) (not b!1581765) (not b!1580804) (not b!1581368) (not d!470243) (not d!469901) (not d!469525) (not b!1580906) (not d!469539) (not b!1581332) (not d!469517) (not b!1580984) (not d!469913) (not b!1581194) (not b!1581395) (not b!1581227) (not b!1581652) (not b!1580613) (not b!1581789) (not d!469637) (not b!1581569) (not d!469771) (not b!1580758) (not b!1581791) (not b!1581480) (not b_lambda!49765) (not b!1581011) (not d!470045) (not b!1581219) (not b!1580972) (not d!470251) (not b_lambda!49731) (not b!1581014) b_and!110775 (not bm!102704) (not b!1581249) (not b!1580846) (not d!469777) (not b_lambda!49761) (not d!469699) (not d!469963) (not d!469903) (not b!1581336) (not tb!88871) (not b!1580891) (not b!1581565) (not b!1581017) (not d!469613) (not d!469669) (not b!1581805) (not b!1581731) (not b!1581790) (not b!1581504) (not d!469945) (not b!1581563) (not b!1581202) (not d!470221) (not d!469715) (not b!1581416) (not b!1581774) (not b!1581388) (not b!1580622) (not b!1580996) (not b!1581706) (not b!1581542) (not b!1581233) (not b!1581818) (not d!469995) (not b!1580652) (not d!469535) (not b!1580819) (not bs!391050) (not d!469537) (not d!469741) (not b!1581747) (not b!1581502) (not b!1581229) (not d!469693) (not d!469619) (not b!1581426) (not b!1581798) (not b!1581751) (not d!469651) (not b!1581817) (not d!469633) (not d!470279) (not b!1581556) (not b!1580977) (not b!1581503) (not d!469691) (not b!1581749) (not b!1581310) (not b_lambda!49733) (not b!1580563) (not d!469627) (not b!1581419) (not b!1581548) (not b!1581696) (not b_next!43421) (not d!469655) (not d!469615) (not b!1581434) (not d!470019) (not b!1581251) (not b!1580756) (not d!469657) (not b!1581773) (not b!1580635) (not b!1581177) (not b!1581521) (not b!1581782) (not d!470033) (not d!470169) (not b!1581813) (not b!1581207) (not b_lambda!49735) (not d!469639) (not d!469899) (not d!469713) (not b!1581554) (not b!1580767) (not d!469965) (not b!1581228) (not b!1580773) (not b!1580614) (not b!1581794) (not b!1581212) (not b!1580958) (not b!1580550) (not b!1580624) (not d!469671))
(check-sat b_and!110773 b_and!110839 b_and!110837 b_and!110835 (not b_next!43403) (not b_next!43427) b_and!110779 b_and!110833 b_and!110775 (not b_next!43421) (not b_next!43419) (not b_next!43425) b_and!110777 (not b_next!43405) (not b_next!43417) b_and!110829 (not b_next!43429) b_and!110841 (not b_next!43399) (not b_next!43415) b_and!110831 (not b_next!43401) (not b_next!43423) b_and!110843)
