; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!147718 () Bool)

(assert start!147718)

(declare-fun b!1578787 () Bool)

(declare-fun b_free!42567 () Bool)

(declare-fun b_next!43271 () Bool)

(assert (=> b!1578787 (= b_free!42567 (not b_next!43271))))

(declare-fun tp!464746 () Bool)

(declare-fun b_and!110557 () Bool)

(assert (=> b!1578787 (= tp!464746 b_and!110557)))

(declare-fun b_free!42569 () Bool)

(declare-fun b_next!43273 () Bool)

(assert (=> b!1578787 (= b_free!42569 (not b_next!43273))))

(declare-fun tp!464750 () Bool)

(declare-fun b_and!110559 () Bool)

(assert (=> b!1578787 (= tp!464750 b_and!110559)))

(declare-fun b!1578788 () Bool)

(declare-fun b_free!42571 () Bool)

(declare-fun b_next!43275 () Bool)

(assert (=> b!1578788 (= b_free!42571 (not b_next!43275))))

(declare-fun tp!464742 () Bool)

(declare-fun b_and!110561 () Bool)

(assert (=> b!1578788 (= tp!464742 b_and!110561)))

(declare-fun b_free!42573 () Bool)

(declare-fun b_next!43277 () Bool)

(assert (=> b!1578788 (= b_free!42573 (not b_next!43277))))

(declare-fun tp!464749 () Bool)

(declare-fun b_and!110563 () Bool)

(assert (=> b!1578788 (= tp!464749 b_and!110563)))

(declare-fun tp!464747 () Bool)

(declare-fun e!1014123 () Bool)

(declare-fun b!1578786 () Bool)

(declare-datatypes ((List!17381 0))(
  ( (Nil!17311) (Cons!17311 (h!22712 (_ BitVec 16)) (t!143558 List!17381)) )
))
(declare-datatypes ((TokenValue!3137 0))(
  ( (FloatLiteralValue!6274 (text!22404 List!17381)) (TokenValueExt!3136 (__x!11576 Int)) (Broken!15685 (value!96486 List!17381)) (Object!3206) (End!3137) (Def!3137) (Underscore!3137) (Match!3137) (Else!3137) (Error!3137) (Case!3137) (If!3137) (Extends!3137) (Abstract!3137) (Class!3137) (Val!3137) (DelimiterValue!6274 (del!3197 List!17381)) (KeywordValue!3143 (value!96487 List!17381)) (CommentValue!6274 (value!96488 List!17381)) (WhitespaceValue!6274 (value!96489 List!17381)) (IndentationValue!3137 (value!96490 List!17381)) (String!20016) (Int32!3137) (Broken!15686 (value!96491 List!17381)) (Boolean!3138) (Unit!26934) (OperatorValue!3140 (op!3197 List!17381)) (IdentifierValue!6274 (value!96492 List!17381)) (IdentifierValue!6275 (value!96493 List!17381)) (WhitespaceValue!6275 (value!96494 List!17381)) (True!6274) (False!6274) (Broken!15687 (value!96495 List!17381)) (Broken!15688 (value!96496 List!17381)) (True!6275) (RightBrace!3137) (RightBracket!3137) (Colon!3137) (Null!3137) (Comma!3137) (LeftBracket!3137) (False!6275) (LeftBrace!3137) (ImaginaryLiteralValue!3137 (text!22405 List!17381)) (StringLiteralValue!9411 (value!96497 List!17381)) (EOFValue!3137 (value!96498 List!17381)) (IdentValue!3137 (value!96499 List!17381)) (DelimiterValue!6275 (value!96500 List!17381)) (DedentValue!3137 (value!96501 List!17381)) (NewLineValue!3137 (value!96502 List!17381)) (IntegerValue!9411 (value!96503 (_ BitVec 32)) (text!22406 List!17381)) (IntegerValue!9412 (value!96504 Int) (text!22407 List!17381)) (Times!3137) (Or!3137) (Equal!3137) (Minus!3137) (Broken!15689 (value!96505 List!17381)) (And!3137) (Div!3137) (LessEqual!3137) (Mod!3137) (Concat!7512) (Not!3137) (Plus!3137) (SpaceValue!3137 (value!96506 List!17381)) (IntegerValue!9413 (value!96507 Int) (text!22408 List!17381)) (StringLiteralValue!9412 (text!22409 List!17381)) (FloatLiteralValue!6275 (text!22410 List!17381)) (BytesLiteralValue!3137 (value!96508 List!17381)) (CommentValue!6275 (value!96509 List!17381)) (StringLiteralValue!9413 (value!96510 List!17381)) (ErrorTokenValue!3137 (msg!3198 List!17381)) )
))
(declare-datatypes ((C!8924 0))(
  ( (C!8925 (val!5058 Int)) )
))
(declare-datatypes ((List!17382 0))(
  ( (Nil!17312) (Cons!17312 (h!22713 C!8924) (t!143559 List!17382)) )
))
(declare-datatypes ((IArray!11489 0))(
  ( (IArray!11490 (innerList!5802 List!17382)) )
))
(declare-datatypes ((Conc!5742 0))(
  ( (Node!5742 (left!13995 Conc!5742) (right!14325 Conc!5742) (csize!11714 Int) (cheight!5953 Int)) (Leaf!8486 (xs!8546 IArray!11489) (csize!11715 Int)) (Empty!5742) )
))
(declare-datatypes ((BalanceConc!11428 0))(
  ( (BalanceConc!11429 (c!255907 Conc!5742)) )
))
(declare-datatypes ((Regex!4375 0))(
  ( (ElementMatch!4375 (c!255908 C!8924)) (Concat!7513 (regOne!9262 Regex!4375) (regTwo!9262 Regex!4375)) (EmptyExpr!4375) (Star!4375 (reg!4704 Regex!4375)) (EmptyLang!4375) (Union!4375 (regOne!9263 Regex!4375) (regTwo!9263 Regex!4375)) )
))
(declare-datatypes ((String!20017 0))(
  ( (String!20018 (value!96511 String)) )
))
(declare-datatypes ((TokenValueInjection!5934 0))(
  ( (TokenValueInjection!5935 (toValue!4450 Int) (toChars!4309 Int)) )
))
(declare-datatypes ((Rule!5894 0))(
  ( (Rule!5895 (regex!3047 Regex!4375) (tag!3313 String!20017) (isSeparator!3047 Bool) (transformation!3047 TokenValueInjection!5934)) )
))
(declare-datatypes ((Token!5660 0))(
  ( (Token!5661 (value!96512 TokenValue!3137) (rule!4843 Rule!5894) (size!13948 Int) (originalCharacters!3861 List!17382)) )
))
(declare-datatypes ((List!17383 0))(
  ( (Nil!17313) (Cons!17313 (h!22714 Token!5660) (t!143560 List!17383)) )
))
(declare-fun tokens!457 () List!17383)

(declare-fun e!1014112 () Bool)

(declare-fun inv!21 (TokenValue!3137) Bool)

(assert (=> b!1578786 (= e!1014112 (and (inv!21 (value!96512 (h!22714 tokens!457))) e!1014123 tp!464747))))

(declare-fun e!1014118 () Bool)

(assert (=> b!1578787 (= e!1014118 (and tp!464746 tp!464750))))

(declare-fun e!1014117 () Bool)

(assert (=> b!1578788 (= e!1014117 (and tp!464742 tp!464749))))

(declare-fun b!1578789 () Bool)

(declare-fun res!703685 () Bool)

(declare-fun e!1014113 () Bool)

(assert (=> b!1578789 (=> (not res!703685) (not e!1014113))))

(declare-datatypes ((List!17384 0))(
  ( (Nil!17314) (Cons!17314 (h!22715 Rule!5894) (t!143561 List!17384)) )
))
(declare-fun rules!1846 () List!17384)

(declare-datatypes ((LexerInterface!2676 0))(
  ( (LexerInterfaceExt!2673 (__x!11577 Int)) (Lexer!2674) )
))
(declare-fun thiss!17113 () LexerInterface!2676)

(declare-fun rulesProduceEachTokenIndividuallyList!878 (LexerInterface!2676 List!17384 List!17383) Bool)

(assert (=> b!1578789 (= res!703685 (rulesProduceEachTokenIndividuallyList!878 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1578790 () Bool)

(declare-fun res!703686 () Bool)

(assert (=> b!1578790 (=> (not res!703686) (not e!1014113))))

(declare-fun isEmpty!10345 (List!17384) Bool)

(assert (=> b!1578790 (= res!703686 (not (isEmpty!10345 rules!1846)))))

(declare-fun tp!464748 () Bool)

(declare-fun b!1578791 () Bool)

(declare-fun inv!22727 (String!20017) Bool)

(declare-fun inv!22730 (TokenValueInjection!5934) Bool)

(assert (=> b!1578791 (= e!1014123 (and tp!464748 (inv!22727 (tag!3313 (rule!4843 (h!22714 tokens!457)))) (inv!22730 (transformation!3047 (rule!4843 (h!22714 tokens!457)))) e!1014118))))

(declare-fun b!1578792 () Bool)

(declare-fun res!703681 () Bool)

(declare-fun e!1014114 () Bool)

(assert (=> b!1578792 (=> res!703681 e!1014114)))

(declare-fun separableTokensPredicate!618 (LexerInterface!2676 Token!5660 Token!5660 List!17384) Bool)

(assert (=> b!1578792 (= res!703681 (not (separableTokensPredicate!618 thiss!17113 (h!22714 tokens!457) (h!22714 (t!143560 tokens!457)) rules!1846)))))

(declare-fun res!703678 () Bool)

(assert (=> start!147718 (=> (not res!703678) (not e!1014113))))

(get-info :version)

(assert (=> start!147718 (= res!703678 ((_ is Lexer!2674) thiss!17113))))

(assert (=> start!147718 e!1014113))

(assert (=> start!147718 true))

(declare-fun e!1014121 () Bool)

(assert (=> start!147718 e!1014121))

(declare-fun e!1014115 () Bool)

(assert (=> start!147718 e!1014115))

(declare-fun b!1578793 () Bool)

(declare-fun res!703684 () Bool)

(assert (=> b!1578793 (=> (not res!703684) (not e!1014113))))

(declare-fun rulesInvariant!2345 (LexerInterface!2676 List!17384) Bool)

(assert (=> b!1578793 (= res!703684 (rulesInvariant!2345 thiss!17113 rules!1846))))

(declare-fun b!1578794 () Bool)

(declare-fun e!1014120 () Bool)

(assert (=> b!1578794 (= e!1014113 e!1014120)))

(declare-fun res!703680 () Bool)

(assert (=> b!1578794 (=> (not res!703680) (not e!1014120))))

(declare-fun lt!551521 () List!17382)

(declare-fun lt!551523 () List!17382)

(assert (=> b!1578794 (= res!703680 (= lt!551521 lt!551523))))

(declare-fun lt!551528 () List!17382)

(declare-fun lt!551527 () List!17382)

(declare-fun ++!4495 (List!17382 List!17382) List!17382)

(assert (=> b!1578794 (= lt!551523 (++!4495 lt!551528 lt!551527))))

(declare-fun lt!551531 () BalanceConc!11428)

(declare-fun list!6683 (BalanceConc!11428) List!17382)

(assert (=> b!1578794 (= lt!551521 (list!6683 lt!551531))))

(declare-fun lt!551535 () BalanceConc!11428)

(assert (=> b!1578794 (= lt!551527 (list!6683 lt!551535))))

(declare-fun charsOf!1696 (Token!5660) BalanceConc!11428)

(assert (=> b!1578794 (= lt!551528 (list!6683 (charsOf!1696 (h!22714 tokens!457))))))

(declare-datatypes ((IArray!11491 0))(
  ( (IArray!11492 (innerList!5803 List!17383)) )
))
(declare-datatypes ((Conc!5743 0))(
  ( (Node!5743 (left!13996 Conc!5743) (right!14326 Conc!5743) (csize!11716 Int) (cheight!5954 Int)) (Leaf!8487 (xs!8547 IArray!11491) (csize!11717 Int)) (Empty!5743) )
))
(declare-datatypes ((BalanceConc!11430 0))(
  ( (BalanceConc!11431 (c!255909 Conc!5743)) )
))
(declare-datatypes ((tuple2!16780 0))(
  ( (tuple2!16781 (_1!9792 BalanceConc!11430) (_2!9792 BalanceConc!11428)) )
))
(declare-fun lt!551536 () tuple2!16780)

(declare-fun lex!1160 (LexerInterface!2676 List!17384 BalanceConc!11428) tuple2!16780)

(assert (=> b!1578794 (= lt!551536 (lex!1160 thiss!17113 rules!1846 lt!551535))))

(declare-fun lt!551532 () BalanceConc!11430)

(declare-fun print!1207 (LexerInterface!2676 BalanceConc!11430) BalanceConc!11428)

(assert (=> b!1578794 (= lt!551535 (print!1207 thiss!17113 lt!551532))))

(declare-fun seqFromList!1848 (List!17383) BalanceConc!11430)

(assert (=> b!1578794 (= lt!551532 (seqFromList!1848 (t!143560 tokens!457)))))

(assert (=> b!1578794 (= lt!551531 (print!1207 thiss!17113 (seqFromList!1848 tokens!457)))))

(declare-fun b!1578795 () Bool)

(declare-fun res!703682 () Bool)

(assert (=> b!1578795 (=> (not res!703682) (not e!1014113))))

(assert (=> b!1578795 (= res!703682 (and (not ((_ is Nil!17313) tokens!457)) (not ((_ is Nil!17313) (t!143560 tokens!457)))))))

(declare-fun tp!464744 () Bool)

(declare-fun b!1578796 () Bool)

(declare-fun inv!22731 (Token!5660) Bool)

(assert (=> b!1578796 (= e!1014115 (and (inv!22731 (h!22714 tokens!457)) e!1014112 tp!464744))))

(declare-fun b!1578797 () Bool)

(assert (=> b!1578797 (= e!1014114 true)))

(declare-fun lt!551522 () BalanceConc!11430)

(declare-fun singletonSeq!1383 (Token!5660) BalanceConc!11430)

(assert (=> b!1578797 (= lt!551522 (singletonSeq!1383 (h!22714 tokens!457)))))

(declare-datatypes ((tuple2!16782 0))(
  ( (tuple2!16783 (_1!9793 Token!5660) (_2!9793 List!17382)) )
))
(declare-datatypes ((Option!3098 0))(
  ( (None!3097) (Some!3097 (v!23928 tuple2!16782)) )
))
(declare-fun lt!551533 () Option!3098)

(declare-fun maxPrefix!1240 (LexerInterface!2676 List!17384 List!17382) Option!3098)

(assert (=> b!1578797 (= lt!551533 (maxPrefix!1240 thiss!17113 rules!1846 lt!551521))))

(declare-fun b!1578798 () Bool)

(declare-fun res!703677 () Bool)

(assert (=> b!1578798 (=> (not res!703677) (not e!1014113))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!369 (LexerInterface!2676 List!17383 List!17384) Bool)

(assert (=> b!1578798 (= res!703677 (tokensListTwoByTwoPredicateSeparableList!369 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1578799 () Bool)

(declare-fun e!1014122 () Bool)

(declare-fun tp!464745 () Bool)

(assert (=> b!1578799 (= e!1014122 (and tp!464745 (inv!22727 (tag!3313 (h!22715 rules!1846))) (inv!22730 (transformation!3047 (h!22715 rules!1846))) e!1014117))))

(declare-fun b!1578800 () Bool)

(declare-fun e!1014111 () Bool)

(assert (=> b!1578800 (= e!1014111 e!1014114)))

(declare-fun res!703683 () Bool)

(assert (=> b!1578800 (=> res!703683 e!1014114)))

(declare-fun lt!551530 () List!17383)

(declare-fun lt!551524 () List!17383)

(declare-fun lt!551529 () List!17383)

(assert (=> b!1578800 (= res!703683 (or (not (= lt!551529 lt!551530)) (not (= lt!551530 lt!551524))))))

(declare-fun list!6684 (BalanceConc!11430) List!17383)

(assert (=> b!1578800 (= lt!551530 (list!6684 lt!551532))))

(assert (=> b!1578800 (= lt!551529 lt!551524)))

(declare-fun prepend!521 (BalanceConc!11430 Token!5660) BalanceConc!11430)

(assert (=> b!1578800 (= lt!551524 (list!6684 (prepend!521 (seqFromList!1848 (t!143560 (t!143560 tokens!457))) (h!22714 (t!143560 tokens!457)))))))

(declare-datatypes ((Unit!26935 0))(
  ( (Unit!26936) )
))
(declare-fun lt!551526 () Unit!26935)

(declare-fun seqFromListBHdTlConstructive!124 (Token!5660 List!17383 BalanceConc!11430) Unit!26935)

(assert (=> b!1578800 (= lt!551526 (seqFromListBHdTlConstructive!124 (h!22714 (t!143560 tokens!457)) (t!143560 (t!143560 tokens!457)) (_1!9792 lt!551536)))))

(declare-fun b!1578801 () Bool)

(declare-fun tp!464743 () Bool)

(assert (=> b!1578801 (= e!1014121 (and e!1014122 tp!464743))))

(declare-fun b!1578802 () Bool)

(assert (=> b!1578802 (= e!1014120 (not e!1014111))))

(declare-fun res!703679 () Bool)

(assert (=> b!1578802 (=> res!703679 e!1014111)))

(assert (=> b!1578802 (= res!703679 (not (= lt!551529 (t!143560 tokens!457))))))

(assert (=> b!1578802 (= lt!551529 (list!6684 (_1!9792 lt!551536)))))

(declare-fun lt!551534 () Unit!26935)

(declare-fun theoremInvertabilityWhenTokenListSeparable!121 (LexerInterface!2676 List!17384 List!17383) Unit!26935)

(assert (=> b!1578802 (= lt!551534 (theoremInvertabilityWhenTokenListSeparable!121 thiss!17113 rules!1846 (t!143560 tokens!457)))))

(declare-fun isPrefix!1307 (List!17382 List!17382) Bool)

(assert (=> b!1578802 (isPrefix!1307 lt!551528 lt!551523)))

(declare-fun lt!551525 () Unit!26935)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!832 (List!17382 List!17382) Unit!26935)

(assert (=> b!1578802 (= lt!551525 (lemmaConcatTwoListThenFirstIsPrefix!832 lt!551528 lt!551527))))

(assert (= (and start!147718 res!703678) b!1578790))

(assert (= (and b!1578790 res!703686) b!1578793))

(assert (= (and b!1578793 res!703684) b!1578789))

(assert (= (and b!1578789 res!703685) b!1578798))

(assert (= (and b!1578798 res!703677) b!1578795))

(assert (= (and b!1578795 res!703682) b!1578794))

(assert (= (and b!1578794 res!703680) b!1578802))

(assert (= (and b!1578802 (not res!703679)) b!1578800))

(assert (= (and b!1578800 (not res!703683)) b!1578792))

(assert (= (and b!1578792 (not res!703681)) b!1578797))

(assert (= b!1578799 b!1578788))

(assert (= b!1578801 b!1578799))

(assert (= (and start!147718 ((_ is Cons!17314) rules!1846)) b!1578801))

(assert (= b!1578791 b!1578787))

(assert (= b!1578786 b!1578791))

(assert (= b!1578796 b!1578786))

(assert (= (and start!147718 ((_ is Cons!17313) tokens!457)) b!1578796))

(declare-fun m!1861117 () Bool)

(assert (=> b!1578799 m!1861117))

(declare-fun m!1861119 () Bool)

(assert (=> b!1578799 m!1861119))

(declare-fun m!1861121 () Bool)

(assert (=> b!1578793 m!1861121))

(declare-fun m!1861123 () Bool)

(assert (=> b!1578792 m!1861123))

(declare-fun m!1861125 () Bool)

(assert (=> b!1578786 m!1861125))

(declare-fun m!1861127 () Bool)

(assert (=> b!1578798 m!1861127))

(declare-fun m!1861129 () Bool)

(assert (=> b!1578790 m!1861129))

(declare-fun m!1861131 () Bool)

(assert (=> b!1578789 m!1861131))

(declare-fun m!1861133 () Bool)

(assert (=> b!1578794 m!1861133))

(declare-fun m!1861135 () Bool)

(assert (=> b!1578794 m!1861135))

(declare-fun m!1861137 () Bool)

(assert (=> b!1578794 m!1861137))

(declare-fun m!1861139 () Bool)

(assert (=> b!1578794 m!1861139))

(declare-fun m!1861141 () Bool)

(assert (=> b!1578794 m!1861141))

(declare-fun m!1861143 () Bool)

(assert (=> b!1578794 m!1861143))

(declare-fun m!1861145 () Bool)

(assert (=> b!1578794 m!1861145))

(assert (=> b!1578794 m!1861135))

(declare-fun m!1861147 () Bool)

(assert (=> b!1578794 m!1861147))

(declare-fun m!1861149 () Bool)

(assert (=> b!1578794 m!1861149))

(assert (=> b!1578794 m!1861141))

(declare-fun m!1861151 () Bool)

(assert (=> b!1578794 m!1861151))

(declare-fun m!1861153 () Bool)

(assert (=> b!1578797 m!1861153))

(declare-fun m!1861155 () Bool)

(assert (=> b!1578797 m!1861155))

(declare-fun m!1861157 () Bool)

(assert (=> b!1578796 m!1861157))

(declare-fun m!1861159 () Bool)

(assert (=> b!1578791 m!1861159))

(declare-fun m!1861161 () Bool)

(assert (=> b!1578791 m!1861161))

(declare-fun m!1861163 () Bool)

(assert (=> b!1578802 m!1861163))

(declare-fun m!1861165 () Bool)

(assert (=> b!1578802 m!1861165))

(declare-fun m!1861167 () Bool)

(assert (=> b!1578802 m!1861167))

(declare-fun m!1861169 () Bool)

(assert (=> b!1578802 m!1861169))

(declare-fun m!1861171 () Bool)

(assert (=> b!1578800 m!1861171))

(declare-fun m!1861173 () Bool)

(assert (=> b!1578800 m!1861173))

(declare-fun m!1861175 () Bool)

(assert (=> b!1578800 m!1861175))

(declare-fun m!1861177 () Bool)

(assert (=> b!1578800 m!1861177))

(declare-fun m!1861179 () Bool)

(assert (=> b!1578800 m!1861179))

(assert (=> b!1578800 m!1861175))

(assert (=> b!1578800 m!1861177))

(check-sat (not b_next!43275) (not b!1578802) (not b_next!43277) (not b!1578793) (not b!1578797) (not b!1578798) (not b_next!43273) (not b!1578792) (not b!1578794) (not b!1578799) b_and!110561 (not b!1578789) b_and!110559 b_and!110557 (not b!1578800) (not b_next!43271) (not b!1578786) (not b!1578790) (not b!1578801) b_and!110563 (not b!1578796) (not b!1578791))
(check-sat (not b_next!43275) (not b_next!43277) (not b_next!43273) (not b_next!43271) b_and!110561 b_and!110563 b_and!110557 b_and!110559)
