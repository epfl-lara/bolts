; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!155746 () Bool)

(assert start!155746)

(declare-fun b!1633435 () Bool)

(declare-fun b_free!44119 () Bool)

(declare-fun b_next!44823 () Bool)

(assert (=> b!1633435 (= b_free!44119 (not b_next!44823))))

(declare-fun tp!473965 () Bool)

(declare-fun b_and!115813 () Bool)

(assert (=> b!1633435 (= tp!473965 b_and!115813)))

(declare-fun b_free!44121 () Bool)

(declare-fun b_next!44825 () Bool)

(assert (=> b!1633435 (= b_free!44121 (not b_next!44825))))

(declare-fun tp!473967 () Bool)

(declare-fun b_and!115815 () Bool)

(assert (=> b!1633435 (= tp!473967 b_and!115815)))

(declare-fun b!1633452 () Bool)

(declare-fun b_free!44123 () Bool)

(declare-fun b_next!44827 () Bool)

(assert (=> b!1633452 (= b_free!44123 (not b_next!44827))))

(declare-fun tp!473966 () Bool)

(declare-fun b_and!115817 () Bool)

(assert (=> b!1633452 (= tp!473966 b_and!115817)))

(declare-fun b_free!44125 () Bool)

(declare-fun b_next!44829 () Bool)

(assert (=> b!1633452 (= b_free!44125 (not b_next!44829))))

(declare-fun tp!473962 () Bool)

(declare-fun b_and!115819 () Bool)

(assert (=> b!1633452 (= tp!473962 b_and!115819)))

(declare-fun b!1633421 () Bool)

(declare-fun e!1047528 () Bool)

(declare-fun e!1047540 () Bool)

(declare-fun tp!473964 () Bool)

(assert (=> b!1633421 (= e!1047528 (and e!1047540 tp!473964))))

(declare-fun b!1633422 () Bool)

(declare-fun res!731012 () Bool)

(declare-fun e!1047535 () Bool)

(assert (=> b!1633422 (=> (not res!731012) (not e!1047535))))

(declare-datatypes ((C!9152 0))(
  ( (C!9153 (val!5172 Int)) )
))
(declare-datatypes ((List!18011 0))(
  ( (Nil!17941) (Cons!17941 (h!23342 C!9152) (t!149594 List!18011)) )
))
(declare-fun lt!594847 () List!18011)

(declare-datatypes ((List!18012 0))(
  ( (Nil!17942) (Cons!17942 (h!23343 (_ BitVec 16)) (t!149595 List!18012)) )
))
(declare-datatypes ((TokenValue!3251 0))(
  ( (FloatLiteralValue!6502 (text!23202 List!18012)) (TokenValueExt!3250 (__x!11804 Int)) (Broken!16255 (value!99735 List!18012)) (Object!3320) (End!3251) (Def!3251) (Underscore!3251) (Match!3251) (Else!3251) (Error!3251) (Case!3251) (If!3251) (Extends!3251) (Abstract!3251) (Class!3251) (Val!3251) (DelimiterValue!6502 (del!3311 List!18012)) (KeywordValue!3257 (value!99736 List!18012)) (CommentValue!6502 (value!99737 List!18012)) (WhitespaceValue!6502 (value!99738 List!18012)) (IndentationValue!3251 (value!99739 List!18012)) (String!20586) (Int32!3251) (Broken!16256 (value!99740 List!18012)) (Boolean!3252) (Unit!29271) (OperatorValue!3254 (op!3311 List!18012)) (IdentifierValue!6502 (value!99741 List!18012)) (IdentifierValue!6503 (value!99742 List!18012)) (WhitespaceValue!6503 (value!99743 List!18012)) (True!6502) (False!6502) (Broken!16257 (value!99744 List!18012)) (Broken!16258 (value!99745 List!18012)) (True!6503) (RightBrace!3251) (RightBracket!3251) (Colon!3251) (Null!3251) (Comma!3251) (LeftBracket!3251) (False!6503) (LeftBrace!3251) (ImaginaryLiteralValue!3251 (text!23203 List!18012)) (StringLiteralValue!9753 (value!99746 List!18012)) (EOFValue!3251 (value!99747 List!18012)) (IdentValue!3251 (value!99748 List!18012)) (DelimiterValue!6503 (value!99749 List!18012)) (DedentValue!3251 (value!99750 List!18012)) (NewLineValue!3251 (value!99751 List!18012)) (IntegerValue!9753 (value!99752 (_ BitVec 32)) (text!23204 List!18012)) (IntegerValue!9754 (value!99753 Int) (text!23205 List!18012)) (Times!3251) (Or!3251) (Equal!3251) (Minus!3251) (Broken!16259 (value!99754 List!18012)) (And!3251) (Div!3251) (LessEqual!3251) (Mod!3251) (Concat!7740) (Not!3251) (Plus!3251) (SpaceValue!3251 (value!99755 List!18012)) (IntegerValue!9755 (value!99756 Int) (text!23206 List!18012)) (StringLiteralValue!9754 (text!23207 List!18012)) (FloatLiteralValue!6503 (text!23208 List!18012)) (BytesLiteralValue!3251 (value!99757 List!18012)) (CommentValue!6503 (value!99758 List!18012)) (StringLiteralValue!9755 (value!99759 List!18012)) (ErrorTokenValue!3251 (msg!3312 List!18012)) )
))
(declare-datatypes ((IArray!11945 0))(
  ( (IArray!11946 (innerList!6030 List!18011)) )
))
(declare-datatypes ((Conc!5970 0))(
  ( (Node!5970 (left!14404 Conc!5970) (right!14734 Conc!5970) (csize!12170 Int) (cheight!6181 Int)) (Leaf!8771 (xs!8806 IArray!11945) (csize!12171 Int)) (Empty!5970) )
))
(declare-datatypes ((BalanceConc!11884 0))(
  ( (BalanceConc!11885 (c!265851 Conc!5970)) )
))
(declare-datatypes ((Regex!4489 0))(
  ( (ElementMatch!4489 (c!265852 C!9152)) (Concat!7741 (regOne!9490 Regex!4489) (regTwo!9490 Regex!4489)) (EmptyExpr!4489) (Star!4489 (reg!4818 Regex!4489)) (EmptyLang!4489) (Union!4489 (regOne!9491 Regex!4489) (regTwo!9491 Regex!4489)) )
))
(declare-datatypes ((String!20587 0))(
  ( (String!20588 (value!99760 String)) )
))
(declare-datatypes ((TokenValueInjection!6162 0))(
  ( (TokenValueInjection!6163 (toValue!4592 Int) (toChars!4451 Int)) )
))
(declare-datatypes ((Rule!6122 0))(
  ( (Rule!6123 (regex!3161 Regex!4489) (tag!3441 String!20587) (isSeparator!3161 Bool) (transformation!3161 TokenValueInjection!6162)) )
))
(declare-datatypes ((Token!5888 0))(
  ( (Token!5889 (value!99761 TokenValue!3251) (rule!4999 Rule!6122) (size!14328 Int) (originalCharacters!3975 List!18011)) )
))
(declare-datatypes ((List!18013 0))(
  ( (Nil!17943) (Cons!17943 (h!23344 Token!5888) (t!149596 List!18013)) )
))
(declare-fun tokens!457 () List!18013)

(declare-fun head!3498 (List!18011) C!9152)

(assert (=> b!1633422 (= res!731012 (= lt!594847 (Cons!17941 (head!3498 (originalCharacters!3975 (h!23344 (t!149596 tokens!457)))) Nil!17941)))))

(declare-fun b!1633423 () Bool)

(declare-fun res!731033 () Bool)

(declare-fun e!1047545 () Bool)

(assert (=> b!1633423 (=> res!731033 e!1047545)))

(declare-datatypes ((List!18014 0))(
  ( (Nil!17944) (Cons!17944 (h!23345 Rule!6122) (t!149597 List!18014)) )
))
(declare-fun rules!1846 () List!18014)

(declare-datatypes ((LexerInterface!2790 0))(
  ( (LexerInterfaceExt!2787 (__x!11805 Int)) (Lexer!2788) )
))
(declare-fun thiss!17113 () LexerInterface!2790)

(declare-fun lt!594845 () List!18011)

(declare-datatypes ((IArray!11947 0))(
  ( (IArray!11948 (innerList!6031 List!18013)) )
))
(declare-datatypes ((Conc!5971 0))(
  ( (Node!5971 (left!14405 Conc!5971) (right!14735 Conc!5971) (csize!12172 Int) (cheight!6182 Int)) (Leaf!8772 (xs!8807 IArray!11947) (csize!12173 Int)) (Empty!5971) )
))
(declare-datatypes ((BalanceConc!11886 0))(
  ( (BalanceConc!11887 (c!265853 Conc!5971)) )
))
(declare-fun isEmpty!10975 (BalanceConc!11886) Bool)

(declare-datatypes ((tuple2!17550 0))(
  ( (tuple2!17551 (_1!10177 BalanceConc!11886) (_2!10177 BalanceConc!11884)) )
))
(declare-fun lex!1274 (LexerInterface!2790 List!18014 BalanceConc!11884) tuple2!17550)

(declare-fun seqFromList!2071 (List!18011) BalanceConc!11884)

(assert (=> b!1633423 (= res!731033 (isEmpty!10975 (_1!10177 (lex!1274 thiss!17113 rules!1846 (seqFromList!2071 lt!594845)))))))

(declare-fun b!1633424 () Bool)

(declare-fun tp!473968 () Bool)

(declare-fun e!1047548 () Bool)

(declare-fun e!1047536 () Bool)

(declare-fun inv!23306 (Token!5888) Bool)

(assert (=> b!1633424 (= e!1047536 (and (inv!23306 (h!23344 tokens!457)) e!1047548 tp!473968))))

(declare-fun b!1633425 () Bool)

(declare-fun res!731016 () Bool)

(declare-fun e!1047546 () Bool)

(assert (=> b!1633425 (=> res!731016 e!1047546)))

(declare-fun lt!594852 () List!18011)

(declare-datatypes ((tuple2!17552 0))(
  ( (tuple2!17553 (_1!10178 Token!5888) (_2!10178 List!18011)) )
))
(declare-datatypes ((Option!3355 0))(
  ( (None!3354) (Some!3354 (v!24425 tuple2!17552)) )
))
(declare-fun get!5190 (Option!3355) tuple2!17552)

(declare-fun maxPrefixZipper!318 (LexerInterface!2790 List!18014 List!18011) Option!3355)

(assert (=> b!1633425 (= res!731016 (not (= (h!23344 tokens!457) (_1!10178 (get!5190 (maxPrefixZipper!318 thiss!17113 rules!1846 lt!594852))))))))

(declare-fun b!1633426 () Bool)

(declare-fun e!1047531 () Bool)

(declare-fun e!1047526 () Bool)

(assert (=> b!1633426 (= e!1047531 e!1047526)))

(declare-fun res!731010 () Bool)

(assert (=> b!1633426 (=> res!731010 e!1047526)))

(declare-fun lt!594864 () Regex!4489)

(declare-fun lt!594867 () List!18011)

(declare-fun prefixMatch!424 (Regex!4489 List!18011) Bool)

(declare-fun ++!4795 (List!18011 List!18011) List!18011)

(assert (=> b!1633426 (= res!731010 (prefixMatch!424 lt!594864 (++!4795 (originalCharacters!3975 (h!23344 tokens!457)) lt!594867)))))

(declare-fun e!1047527 () Bool)

(assert (=> b!1633426 e!1047527))

(declare-fun res!731023 () Bool)

(assert (=> b!1633426 (=> (not res!731023) (not e!1047527))))

(declare-fun lt!594843 () tuple2!17552)

(assert (=> b!1633426 (= res!731023 (= (_1!10178 lt!594843) (h!23344 tokens!457)))))

(declare-fun lt!594868 () Option!3355)

(assert (=> b!1633426 (= lt!594843 (get!5190 lt!594868))))

(declare-fun isDefined!2722 (Option!3355) Bool)

(assert (=> b!1633426 (isDefined!2722 lt!594868)))

(declare-fun maxPrefix!1354 (LexerInterface!2790 List!18014 List!18011) Option!3355)

(assert (=> b!1633426 (= lt!594868 (maxPrefix!1354 thiss!17113 rules!1846 lt!594845))))

(assert (=> b!1633426 (isDefined!2722 (maxPrefix!1354 thiss!17113 rules!1846 (originalCharacters!3975 (h!23344 tokens!457))))))

(declare-fun b!1633428 () Bool)

(declare-fun res!731020 () Bool)

(declare-fun e!1047532 () Bool)

(assert (=> b!1633428 (=> (not res!731020) (not e!1047532))))

(get-info :version)

(assert (=> b!1633428 (= res!731020 (and (not ((_ is Nil!17943) tokens!457)) (not ((_ is Nil!17943) (t!149596 tokens!457)))))))

(declare-fun b!1633429 () Bool)

(declare-fun e!1047543 () Bool)

(assert (=> b!1633429 (= e!1047545 e!1047543)))

(declare-fun res!731029 () Bool)

(assert (=> b!1633429 (=> res!731029 e!1047543)))

(declare-fun lt!594859 () Option!3355)

(assert (=> b!1633429 (= res!731029 (not (isDefined!2722 lt!594859)))))

(declare-datatypes ((Unit!29272 0))(
  ( (Unit!29273) )
))
(declare-fun lt!594865 () Unit!29272)

(declare-fun lt!594850 () List!18011)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!364 (LexerInterface!2790 List!18014 List!18011 List!18011) Unit!29272)

(assert (=> b!1633429 (= lt!594865 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!364 thiss!17113 rules!1846 lt!594845 lt!594850))))

(declare-fun b!1633430 () Bool)

(declare-fun matchR!1988 (Regex!4489 List!18011) Bool)

(assert (=> b!1633430 (= e!1047527 (matchR!1988 (regex!3161 (rule!4999 (h!23344 tokens!457))) lt!594845))))

(declare-fun b!1633431 () Bool)

(declare-fun e!1047537 () Bool)

(declare-fun e!1047542 () Bool)

(assert (=> b!1633431 (= e!1047537 (not e!1047542))))

(declare-fun res!731025 () Bool)

(assert (=> b!1633431 (=> res!731025 e!1047542)))

(declare-fun lt!594841 () List!18013)

(assert (=> b!1633431 (= res!731025 (not (= lt!594841 (t!149596 tokens!457))))))

(declare-fun lt!594855 () tuple2!17550)

(declare-fun list!7063 (BalanceConc!11886) List!18013)

(assert (=> b!1633431 (= lt!594841 (list!7063 (_1!10177 lt!594855)))))

(declare-fun lt!594851 () Unit!29272)

(declare-fun theoremInvertabilityWhenTokenListSeparable!235 (LexerInterface!2790 List!18014 List!18013) Unit!29272)

(assert (=> b!1633431 (= lt!594851 (theoremInvertabilityWhenTokenListSeparable!235 thiss!17113 rules!1846 (t!149596 tokens!457)))))

(declare-fun lt!594860 () List!18011)

(declare-fun isPrefix!1421 (List!18011 List!18011) Bool)

(assert (=> b!1633431 (isPrefix!1421 lt!594845 lt!594860)))

(declare-fun lt!594862 () Unit!29272)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!946 (List!18011 List!18011) Unit!29272)

(assert (=> b!1633431 (= lt!594862 (lemmaConcatTwoListThenFirstIsPrefix!946 lt!594845 lt!594850))))

(declare-fun b!1633432 () Bool)

(declare-fun tp!473963 () Bool)

(declare-fun e!1047547 () Bool)

(declare-fun inv!23303 (String!20587) Bool)

(declare-fun inv!23307 (TokenValueInjection!6162) Bool)

(assert (=> b!1633432 (= e!1047540 (and tp!473963 (inv!23303 (tag!3441 (h!23345 rules!1846))) (inv!23307 (transformation!3161 (h!23345 rules!1846))) e!1047547))))

(declare-fun b!1633433 () Bool)

(declare-fun res!731017 () Bool)

(assert (=> b!1633433 (=> (not res!731017) (not e!1047527))))

(declare-fun isEmpty!10976 (List!18011) Bool)

(assert (=> b!1633433 (= res!731017 (isEmpty!10976 (_2!10178 lt!594843)))))

(declare-fun b!1633434 () Bool)

(assert (=> b!1633434 (= e!1047526 e!1047546)))

(declare-fun res!731024 () Bool)

(assert (=> b!1633434 (=> res!731024 e!1047546)))

(declare-fun lt!594866 () tuple2!17552)

(assert (=> b!1633434 (= res!731024 (or (not (= (_1!10178 lt!594866) (h!23344 tokens!457))) (not (= (_2!10178 lt!594866) lt!594850))))))

(assert (=> b!1633434 (= lt!594866 (get!5190 lt!594859))))

(declare-fun lt!594858 () Unit!29272)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!126 (LexerInterface!2790 List!18014 Token!5888 Rule!6122 List!18011) Unit!29272)

(assert (=> b!1633434 (= lt!594858 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!126 thiss!17113 rules!1846 (h!23344 tokens!457) (rule!4999 (h!23344 tokens!457)) lt!594850))))

(assert (=> b!1633435 (= e!1047547 (and tp!473965 tp!473967))))

(declare-fun b!1633436 () Bool)

(declare-fun e!1047534 () Bool)

(assert (=> b!1633436 (= e!1047542 e!1047534)))

(declare-fun res!731015 () Bool)

(assert (=> b!1633436 (=> res!731015 e!1047534)))

(declare-fun lt!594844 () List!18013)

(declare-fun lt!594857 () List!18013)

(assert (=> b!1633436 (= res!731015 (or (not (= lt!594841 lt!594844)) (not (= lt!594844 lt!594857))))))

(declare-fun lt!594870 () BalanceConc!11886)

(assert (=> b!1633436 (= lt!594844 (list!7063 lt!594870))))

(assert (=> b!1633436 (= lt!594841 lt!594857)))

(declare-fun prepend!697 (BalanceConc!11886 Token!5888) BalanceConc!11886)

(declare-fun seqFromList!2072 (List!18013) BalanceConc!11886)

(assert (=> b!1633436 (= lt!594857 (list!7063 (prepend!697 (seqFromList!2072 (t!149596 (t!149596 tokens!457))) (h!23344 (t!149596 tokens!457)))))))

(declare-fun lt!594861 () Unit!29272)

(declare-fun seqFromListBHdTlConstructive!238 (Token!5888 List!18013 BalanceConc!11886) Unit!29272)

(assert (=> b!1633436 (= lt!594861 (seqFromListBHdTlConstructive!238 (h!23344 (t!149596 tokens!457)) (t!149596 (t!149596 tokens!457)) (_1!10177 lt!594855)))))

(declare-fun b!1633437 () Bool)

(assert (=> b!1633437 (= e!1047532 e!1047537)))

(declare-fun res!731034 () Bool)

(assert (=> b!1633437 (=> (not res!731034) (not e!1047537))))

(assert (=> b!1633437 (= res!731034 (= lt!594852 lt!594860))))

(assert (=> b!1633437 (= lt!594860 (++!4795 lt!594845 lt!594850))))

(declare-fun lt!594842 () BalanceConc!11884)

(declare-fun list!7064 (BalanceConc!11884) List!18011)

(assert (=> b!1633437 (= lt!594852 (list!7064 lt!594842))))

(declare-fun lt!594869 () BalanceConc!11884)

(assert (=> b!1633437 (= lt!594850 (list!7064 lt!594869))))

(declare-fun lt!594856 () BalanceConc!11884)

(assert (=> b!1633437 (= lt!594845 (list!7064 lt!594856))))

(declare-fun charsOf!1810 (Token!5888) BalanceConc!11884)

(assert (=> b!1633437 (= lt!594856 (charsOf!1810 (h!23344 tokens!457)))))

(assert (=> b!1633437 (= lt!594855 (lex!1274 thiss!17113 rules!1846 lt!594869))))

(declare-fun print!1321 (LexerInterface!2790 BalanceConc!11886) BalanceConc!11884)

(assert (=> b!1633437 (= lt!594869 (print!1321 thiss!17113 lt!594870))))

(assert (=> b!1633437 (= lt!594870 (seqFromList!2072 (t!149596 tokens!457)))))

(assert (=> b!1633437 (= lt!594842 (print!1321 thiss!17113 (seqFromList!2072 tokens!457)))))

(declare-fun e!1047541 () Bool)

(declare-fun e!1047544 () Bool)

(declare-fun tp!473960 () Bool)

(declare-fun b!1633438 () Bool)

(assert (=> b!1633438 (= e!1047541 (and tp!473960 (inv!23303 (tag!3441 (rule!4999 (h!23344 tokens!457)))) (inv!23307 (transformation!3161 (rule!4999 (h!23344 tokens!457)))) e!1047544))))

(declare-fun b!1633439 () Bool)

(declare-fun res!731032 () Bool)

(assert (=> b!1633439 (=> res!731032 e!1047526)))

(assert (=> b!1633439 (= res!731032 (prefixMatch!424 lt!594864 (++!4795 lt!594845 lt!594867)))))

(declare-fun b!1633440 () Bool)

(declare-fun res!731026 () Bool)

(assert (=> b!1633440 (=> (not res!731026) (not e!1047532))))

(declare-fun rulesProduceEachTokenIndividuallyList!992 (LexerInterface!2790 List!18014 List!18013) Bool)

(assert (=> b!1633440 (= res!731026 (rulesProduceEachTokenIndividuallyList!992 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1633441 () Bool)

(declare-fun e!1047538 () Bool)

(assert (=> b!1633441 (= e!1047543 e!1047538)))

(declare-fun res!731013 () Bool)

(assert (=> b!1633441 (=> res!731013 e!1047538)))

(declare-fun lt!594853 () BalanceConc!11884)

(declare-fun prefixMatchZipperSequence!559 (Regex!4489 BalanceConc!11884) Bool)

(declare-fun ++!4796 (BalanceConc!11884 BalanceConc!11884) BalanceConc!11884)

(assert (=> b!1633441 (= res!731013 (prefixMatchZipperSequence!559 lt!594864 (++!4796 lt!594856 lt!594853)))))

(declare-fun singletonSeq!1600 (C!9152) BalanceConc!11884)

(declare-fun apply!4626 (BalanceConc!11884 Int) C!9152)

(assert (=> b!1633441 (= lt!594853 (singletonSeq!1600 (apply!4626 (charsOf!1810 (h!23344 (t!149596 tokens!457))) 0)))))

(declare-fun rulesRegex!551 (LexerInterface!2790 List!18014) Regex!4489)

(assert (=> b!1633441 (= lt!594864 (rulesRegex!551 thiss!17113 rules!1846))))

(declare-fun b!1633442 () Bool)

(declare-fun res!731011 () Bool)

(assert (=> b!1633442 (=> (not res!731011) (not e!1047532))))

(declare-fun rulesInvariant!2459 (LexerInterface!2790 List!18014) Bool)

(assert (=> b!1633442 (= res!731011 (rulesInvariant!2459 thiss!17113 rules!1846))))

(declare-fun b!1633443 () Bool)

(assert (=> b!1633443 (= e!1047534 e!1047545)))

(declare-fun res!731022 () Bool)

(assert (=> b!1633443 (=> res!731022 e!1047545)))

(declare-fun lt!594854 () List!18011)

(declare-fun lt!594848 () List!18011)

(assert (=> b!1633443 (= res!731022 (or (not (= lt!594848 lt!594854)) (not (= lt!594854 lt!594845)) (not (= lt!594848 lt!594845))))))

(declare-fun printList!905 (LexerInterface!2790 List!18013) List!18011)

(assert (=> b!1633443 (= lt!594854 (printList!905 thiss!17113 (Cons!17943 (h!23344 tokens!457) Nil!17943)))))

(declare-fun lt!594846 () BalanceConc!11884)

(assert (=> b!1633443 (= lt!594848 (list!7064 lt!594846))))

(declare-fun lt!594849 () BalanceConc!11886)

(declare-fun printTailRec!843 (LexerInterface!2790 BalanceConc!11886 Int BalanceConc!11884) BalanceConc!11884)

(assert (=> b!1633443 (= lt!594846 (printTailRec!843 thiss!17113 lt!594849 0 (BalanceConc!11885 Empty!5970)))))

(assert (=> b!1633443 (= lt!594846 (print!1321 thiss!17113 lt!594849))))

(declare-fun singletonSeq!1601 (Token!5888) BalanceConc!11886)

(assert (=> b!1633443 (= lt!594849 (singletonSeq!1601 (h!23344 tokens!457)))))

(assert (=> b!1633443 (= lt!594859 (maxPrefix!1354 thiss!17113 rules!1846 lt!594852))))

(declare-fun b!1633444 () Bool)

(declare-fun res!731014 () Bool)

(assert (=> b!1633444 (=> (not res!731014) (not e!1047532))))

(declare-fun isEmpty!10977 (List!18014) Bool)

(assert (=> b!1633444 (= res!731014 (not (isEmpty!10977 rules!1846)))))

(declare-fun b!1633445 () Bool)

(declare-fun res!731021 () Bool)

(assert (=> b!1633445 (=> res!731021 e!1047534)))

(declare-fun separableTokensPredicate!732 (LexerInterface!2790 Token!5888 Token!5888 List!18014) Bool)

(assert (=> b!1633445 (= res!731021 (not (separableTokensPredicate!732 thiss!17113 (h!23344 tokens!457) (h!23344 (t!149596 tokens!457)) rules!1846)))))

(declare-fun tp!473961 () Bool)

(declare-fun b!1633446 () Bool)

(declare-fun inv!21 (TokenValue!3251) Bool)

(assert (=> b!1633446 (= e!1047548 (and (inv!21 (value!99761 (h!23344 tokens!457))) e!1047541 tp!473961))))

(declare-fun b!1633427 () Bool)

(assert (=> b!1633427 (= e!1047535 (= lt!594847 (Cons!17941 (head!3498 lt!594850) Nil!17941)))))

(declare-fun res!731031 () Bool)

(assert (=> start!155746 (=> (not res!731031) (not e!1047532))))

(assert (=> start!155746 (= res!731031 ((_ is Lexer!2788) thiss!17113))))

(assert (=> start!155746 e!1047532))

(assert (=> start!155746 true))

(assert (=> start!155746 e!1047528))

(assert (=> start!155746 e!1047536))

(declare-fun b!1633447 () Bool)

(assert (=> b!1633447 (= e!1047546 true)))

(declare-fun lt!594863 () Bool)

(declare-fun rulesValidInductive!984 (LexerInterface!2790 List!18014) Bool)

(assert (=> b!1633447 (= lt!594863 (rulesValidInductive!984 thiss!17113 rules!1846))))

(declare-fun b!1633448 () Bool)

(declare-fun e!1047529 () Bool)

(assert (=> b!1633448 (= e!1047529 e!1047531)))

(declare-fun res!731028 () Bool)

(assert (=> b!1633448 (=> res!731028 e!1047531)))

(declare-datatypes ((tuple2!17554 0))(
  ( (tuple2!17555 (_1!10179 Token!5888) (_2!10179 BalanceConc!11884)) )
))
(declare-datatypes ((Option!3356 0))(
  ( (None!3355) (Some!3355 (v!24426 tuple2!17554)) )
))
(declare-fun isDefined!2723 (Option!3356) Bool)

(declare-fun maxPrefixZipperSequence!685 (LexerInterface!2790 List!18014 BalanceConc!11884) Option!3356)

(assert (=> b!1633448 (= res!731028 (not (isDefined!2723 (maxPrefixZipperSequence!685 thiss!17113 rules!1846 (seqFromList!2071 (originalCharacters!3975 (h!23344 tokens!457)))))))))

(assert (=> b!1633448 (= lt!594847 lt!594867)))

(declare-fun head!3499 (BalanceConc!11884) C!9152)

(assert (=> b!1633448 (= lt!594867 (Cons!17941 (head!3499 lt!594869) Nil!17941))))

(assert (=> b!1633448 e!1047535))

(declare-fun res!731030 () Bool)

(assert (=> b!1633448 (=> (not res!731030) (not e!1047535))))

(assert (=> b!1633448 (= res!731030 (= lt!594845 (originalCharacters!3975 (h!23344 tokens!457))))))

(declare-fun b!1633449 () Bool)

(declare-fun res!731019 () Bool)

(assert (=> b!1633449 (=> (not res!731019) (not e!1047532))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!483 (LexerInterface!2790 List!18013 List!18014) Bool)

(assert (=> b!1633449 (= res!731019 (tokensListTwoByTwoPredicateSeparableList!483 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1633450 () Bool)

(declare-fun res!731018 () Bool)

(assert (=> b!1633450 (=> res!731018 e!1047545)))

(declare-fun rulesProduceIndividualToken!1442 (LexerInterface!2790 List!18014 Token!5888) Bool)

(assert (=> b!1633450 (= res!731018 (not (rulesProduceIndividualToken!1442 thiss!17113 rules!1846 (h!23344 tokens!457))))))

(declare-fun b!1633451 () Bool)

(assert (=> b!1633451 (= e!1047538 e!1047529)))

(declare-fun res!731027 () Bool)

(assert (=> b!1633451 (=> res!731027 e!1047529)))

(assert (=> b!1633451 (= res!731027 (prefixMatch!424 lt!594864 (++!4795 lt!594845 lt!594847)))))

(assert (=> b!1633451 (= lt!594847 (list!7064 lt!594853))))

(assert (=> b!1633452 (= e!1047544 (and tp!473966 tp!473962))))

(assert (= (and start!155746 res!731031) b!1633444))

(assert (= (and b!1633444 res!731014) b!1633442))

(assert (= (and b!1633442 res!731011) b!1633440))

(assert (= (and b!1633440 res!731026) b!1633449))

(assert (= (and b!1633449 res!731019) b!1633428))

(assert (= (and b!1633428 res!731020) b!1633437))

(assert (= (and b!1633437 res!731034) b!1633431))

(assert (= (and b!1633431 (not res!731025)) b!1633436))

(assert (= (and b!1633436 (not res!731015)) b!1633445))

(assert (= (and b!1633445 (not res!731021)) b!1633443))

(assert (= (and b!1633443 (not res!731022)) b!1633450))

(assert (= (and b!1633450 (not res!731018)) b!1633423))

(assert (= (and b!1633423 (not res!731033)) b!1633429))

(assert (= (and b!1633429 (not res!731029)) b!1633441))

(assert (= (and b!1633441 (not res!731013)) b!1633451))

(assert (= (and b!1633451 (not res!731027)) b!1633448))

(assert (= (and b!1633448 res!731030) b!1633422))

(assert (= (and b!1633422 res!731012) b!1633427))

(assert (= (and b!1633448 (not res!731028)) b!1633426))

(assert (= (and b!1633426 res!731023) b!1633433))

(assert (= (and b!1633433 res!731017) b!1633430))

(assert (= (and b!1633426 (not res!731010)) b!1633439))

(assert (= (and b!1633439 (not res!731032)) b!1633434))

(assert (= (and b!1633434 (not res!731024)) b!1633425))

(assert (= (and b!1633425 (not res!731016)) b!1633447))

(assert (= b!1633432 b!1633435))

(assert (= b!1633421 b!1633432))

(assert (= (and start!155746 ((_ is Cons!17944) rules!1846)) b!1633421))

(assert (= b!1633438 b!1633452))

(assert (= b!1633446 b!1633438))

(assert (= b!1633424 b!1633446))

(assert (= (and start!155746 ((_ is Cons!17943) tokens!457)) b!1633424))

(declare-fun m!1968215 () Bool)

(assert (=> b!1633429 m!1968215))

(declare-fun m!1968217 () Bool)

(assert (=> b!1633429 m!1968217))

(declare-fun m!1968219 () Bool)

(assert (=> b!1633441 m!1968219))

(declare-fun m!1968221 () Bool)

(assert (=> b!1633441 m!1968221))

(declare-fun m!1968223 () Bool)

(assert (=> b!1633441 m!1968223))

(declare-fun m!1968225 () Bool)

(assert (=> b!1633441 m!1968225))

(assert (=> b!1633441 m!1968219))

(declare-fun m!1968227 () Bool)

(assert (=> b!1633441 m!1968227))

(declare-fun m!1968229 () Bool)

(assert (=> b!1633441 m!1968229))

(assert (=> b!1633441 m!1968221))

(assert (=> b!1633441 m!1968229))

(declare-fun m!1968231 () Bool)

(assert (=> b!1633425 m!1968231))

(assert (=> b!1633425 m!1968231))

(declare-fun m!1968233 () Bool)

(assert (=> b!1633425 m!1968233))

(declare-fun m!1968235 () Bool)

(assert (=> b!1633450 m!1968235))

(declare-fun m!1968237 () Bool)

(assert (=> b!1633439 m!1968237))

(assert (=> b!1633439 m!1968237))

(declare-fun m!1968239 () Bool)

(assert (=> b!1633439 m!1968239))

(declare-fun m!1968241 () Bool)

(assert (=> b!1633434 m!1968241))

(declare-fun m!1968243 () Bool)

(assert (=> b!1633434 m!1968243))

(declare-fun m!1968245 () Bool)

(assert (=> b!1633424 m!1968245))

(declare-fun m!1968247 () Bool)

(assert (=> b!1633430 m!1968247))

(declare-fun m!1968249 () Bool)

(assert (=> b!1633432 m!1968249))

(declare-fun m!1968251 () Bool)

(assert (=> b!1633432 m!1968251))

(declare-fun m!1968253 () Bool)

(assert (=> b!1633426 m!1968253))

(declare-fun m!1968255 () Bool)

(assert (=> b!1633426 m!1968255))

(declare-fun m!1968257 () Bool)

(assert (=> b!1633426 m!1968257))

(assert (=> b!1633426 m!1968253))

(declare-fun m!1968259 () Bool)

(assert (=> b!1633426 m!1968259))

(declare-fun m!1968261 () Bool)

(assert (=> b!1633426 m!1968261))

(declare-fun m!1968263 () Bool)

(assert (=> b!1633426 m!1968263))

(declare-fun m!1968265 () Bool)

(assert (=> b!1633426 m!1968265))

(assert (=> b!1633426 m!1968255))

(declare-fun m!1968267 () Bool)

(assert (=> b!1633445 m!1968267))

(declare-fun m!1968269 () Bool)

(assert (=> b!1633422 m!1968269))

(declare-fun m!1968271 () Bool)

(assert (=> b!1633440 m!1968271))

(declare-fun m!1968273 () Bool)

(assert (=> b!1633449 m!1968273))

(declare-fun m!1968275 () Bool)

(assert (=> b!1633431 m!1968275))

(declare-fun m!1968277 () Bool)

(assert (=> b!1633431 m!1968277))

(declare-fun m!1968279 () Bool)

(assert (=> b!1633431 m!1968279))

(declare-fun m!1968281 () Bool)

(assert (=> b!1633431 m!1968281))

(declare-fun m!1968283 () Bool)

(assert (=> b!1633436 m!1968283))

(declare-fun m!1968285 () Bool)

(assert (=> b!1633436 m!1968285))

(declare-fun m!1968287 () Bool)

(assert (=> b!1633436 m!1968287))

(declare-fun m!1968289 () Bool)

(assert (=> b!1633436 m!1968289))

(declare-fun m!1968291 () Bool)

(assert (=> b!1633436 m!1968291))

(assert (=> b!1633436 m!1968287))

(assert (=> b!1633436 m!1968289))

(declare-fun m!1968293 () Bool)

(assert (=> b!1633433 m!1968293))

(declare-fun m!1968295 () Bool)

(assert (=> b!1633448 m!1968295))

(assert (=> b!1633448 m!1968295))

(declare-fun m!1968297 () Bool)

(assert (=> b!1633448 m!1968297))

(assert (=> b!1633448 m!1968297))

(declare-fun m!1968299 () Bool)

(assert (=> b!1633448 m!1968299))

(declare-fun m!1968301 () Bool)

(assert (=> b!1633448 m!1968301))

(declare-fun m!1968303 () Bool)

(assert (=> b!1633442 m!1968303))

(declare-fun m!1968305 () Bool)

(assert (=> b!1633443 m!1968305))

(declare-fun m!1968307 () Bool)

(assert (=> b!1633443 m!1968307))

(declare-fun m!1968309 () Bool)

(assert (=> b!1633443 m!1968309))

(declare-fun m!1968311 () Bool)

(assert (=> b!1633443 m!1968311))

(declare-fun m!1968313 () Bool)

(assert (=> b!1633443 m!1968313))

(declare-fun m!1968315 () Bool)

(assert (=> b!1633443 m!1968315))

(declare-fun m!1968317 () Bool)

(assert (=> b!1633423 m!1968317))

(assert (=> b!1633423 m!1968317))

(declare-fun m!1968319 () Bool)

(assert (=> b!1633423 m!1968319))

(declare-fun m!1968321 () Bool)

(assert (=> b!1633423 m!1968321))

(declare-fun m!1968323 () Bool)

(assert (=> b!1633451 m!1968323))

(assert (=> b!1633451 m!1968323))

(declare-fun m!1968325 () Bool)

(assert (=> b!1633451 m!1968325))

(declare-fun m!1968327 () Bool)

(assert (=> b!1633451 m!1968327))

(declare-fun m!1968329 () Bool)

(assert (=> b!1633437 m!1968329))

(declare-fun m!1968331 () Bool)

(assert (=> b!1633437 m!1968331))

(declare-fun m!1968333 () Bool)

(assert (=> b!1633437 m!1968333))

(declare-fun m!1968335 () Bool)

(assert (=> b!1633437 m!1968335))

(declare-fun m!1968337 () Bool)

(assert (=> b!1633437 m!1968337))

(declare-fun m!1968339 () Bool)

(assert (=> b!1633437 m!1968339))

(declare-fun m!1968341 () Bool)

(assert (=> b!1633437 m!1968341))

(declare-fun m!1968343 () Bool)

(assert (=> b!1633437 m!1968343))

(assert (=> b!1633437 m!1968335))

(declare-fun m!1968345 () Bool)

(assert (=> b!1633437 m!1968345))

(declare-fun m!1968347 () Bool)

(assert (=> b!1633437 m!1968347))

(declare-fun m!1968349 () Bool)

(assert (=> b!1633438 m!1968349))

(declare-fun m!1968351 () Bool)

(assert (=> b!1633438 m!1968351))

(declare-fun m!1968353 () Bool)

(assert (=> b!1633447 m!1968353))

(declare-fun m!1968355 () Bool)

(assert (=> b!1633427 m!1968355))

(declare-fun m!1968357 () Bool)

(assert (=> b!1633444 m!1968357))

(declare-fun m!1968359 () Bool)

(assert (=> b!1633446 m!1968359))

(check-sat b_and!115815 (not b!1633451) (not b!1633439) (not b_next!44825) (not b!1633429) (not b!1633438) (not b!1633440) b_and!115817 (not b_next!44823) (not b!1633446) (not b!1633426) (not b!1633430) (not b!1633427) (not b!1633437) (not b!1633444) (not b!1633421) (not b!1633442) (not b!1633436) (not b!1633432) (not b_next!44829) (not b!1633434) (not b!1633423) (not b!1633450) b_and!115819 (not b!1633445) (not b!1633449) (not b!1633422) (not b!1633425) (not b!1633424) (not b!1633443) (not b!1633447) b_and!115813 (not b!1633441) (not b_next!44827) (not b!1633433) (not b!1633431) (not b!1633448))
(check-sat b_and!115815 (not b_next!44829) (not b_next!44825) b_and!115819 b_and!115813 (not b_next!44827) b_and!115817 (not b_next!44823))
