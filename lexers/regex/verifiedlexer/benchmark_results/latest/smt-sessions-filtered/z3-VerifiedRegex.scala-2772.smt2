; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152518 () Bool)

(assert start!152518)

(declare-fun b!1613723 () Bool)

(declare-fun b_free!43415 () Bool)

(declare-fun b_next!44119 () Bool)

(assert (=> b!1613723 (= b_free!43415 (not b_next!44119))))

(declare-fun tp!470582 () Bool)

(declare-fun b_and!114421 () Bool)

(assert (=> b!1613723 (= tp!470582 b_and!114421)))

(declare-fun b_free!43417 () Bool)

(declare-fun b_next!44121 () Bool)

(assert (=> b!1613723 (= b_free!43417 (not b_next!44121))))

(declare-fun tp!470584 () Bool)

(declare-fun b_and!114423 () Bool)

(assert (=> b!1613723 (= tp!470584 b_and!114423)))

(declare-fun b!1613744 () Bool)

(declare-fun b_free!43419 () Bool)

(declare-fun b_next!44123 () Bool)

(assert (=> b!1613744 (= b_free!43419 (not b_next!44123))))

(declare-fun tp!470576 () Bool)

(declare-fun b_and!114425 () Bool)

(assert (=> b!1613744 (= tp!470576 b_and!114425)))

(declare-fun b_free!43421 () Bool)

(declare-fun b_next!44125 () Bool)

(assert (=> b!1613744 (= b_free!43421 (not b_next!44125))))

(declare-fun tp!470579 () Bool)

(declare-fun b_and!114427 () Bool)

(assert (=> b!1613744 (= tp!470579 b_and!114427)))

(declare-fun b!1613722 () Bool)

(declare-fun e!1035015 () Bool)

(declare-fun e!1035013 () Bool)

(assert (=> b!1613722 (= e!1035015 e!1035013)))

(declare-fun res!719853 () Bool)

(assert (=> b!1613722 (=> res!719853 e!1035013)))

(declare-datatypes ((C!9040 0))(
  ( (C!9041 (val!5116 Int)) )
))
(declare-datatypes ((List!17703 0))(
  ( (Nil!17633) (Cons!17633 (h!23034 C!9040) (t!148134 List!17703)) )
))
(declare-fun lt!576994 () List!17703)

(declare-datatypes ((Regex!4433 0))(
  ( (ElementMatch!4433 (c!262901 C!9040)) (Concat!7628 (regOne!9378 Regex!4433) (regTwo!9378 Regex!4433)) (EmptyExpr!4433) (Star!4433 (reg!4762 Regex!4433)) (EmptyLang!4433) (Union!4433 (regOne!9379 Regex!4433) (regTwo!9379 Regex!4433)) )
))
(declare-fun lt!576995 () Regex!4433)

(declare-fun lt!576980 () List!17703)

(declare-fun prefixMatch!368 (Regex!4433 List!17703) Bool)

(declare-fun ++!4647 (List!17703 List!17703) List!17703)

(assert (=> b!1613722 (= res!719853 (prefixMatch!368 lt!576995 (++!4647 lt!576980 lt!576994)))))

(declare-datatypes ((IArray!11721 0))(
  ( (IArray!11722 (innerList!5918 List!17703)) )
))
(declare-datatypes ((Conc!5858 0))(
  ( (Node!5858 (left!14208 Conc!5858) (right!14538 Conc!5858) (csize!11946 Int) (cheight!6069 Int)) (Leaf!8631 (xs!8686 IArray!11721) (csize!11947 Int)) (Empty!5858) )
))
(declare-datatypes ((BalanceConc!11660 0))(
  ( (BalanceConc!11661 (c!262902 Conc!5858)) )
))
(declare-fun lt!576997 () BalanceConc!11660)

(declare-fun list!6887 (BalanceConc!11660) List!17703)

(assert (=> b!1613722 (= lt!576994 (list!6887 lt!576997))))

(declare-fun e!1035028 () Bool)

(assert (=> b!1613723 (= e!1035028 (and tp!470582 tp!470584))))

(declare-fun b!1613724 () Bool)

(declare-fun res!719863 () Bool)

(declare-fun e!1035020 () Bool)

(assert (=> b!1613724 (=> (not res!719863) (not e!1035020))))

(declare-datatypes ((LexerInterface!2734 0))(
  ( (LexerInterfaceExt!2731 (__x!11692 Int)) (Lexer!2732) )
))
(declare-fun thiss!17113 () LexerInterface!2734)

(declare-datatypes ((List!17704 0))(
  ( (Nil!17634) (Cons!17634 (h!23035 (_ BitVec 16)) (t!148135 List!17704)) )
))
(declare-datatypes ((TokenValue!3195 0))(
  ( (FloatLiteralValue!6390 (text!22810 List!17704)) (TokenValueExt!3194 (__x!11693 Int)) (Broken!15975 (value!98139 List!17704)) (Object!3264) (End!3195) (Def!3195) (Underscore!3195) (Match!3195) (Else!3195) (Error!3195) (Case!3195) (If!3195) (Extends!3195) (Abstract!3195) (Class!3195) (Val!3195) (DelimiterValue!6390 (del!3255 List!17704)) (KeywordValue!3201 (value!98140 List!17704)) (CommentValue!6390 (value!98141 List!17704)) (WhitespaceValue!6390 (value!98142 List!17704)) (IndentationValue!3195 (value!98143 List!17704)) (String!20306) (Int32!3195) (Broken!15976 (value!98144 List!17704)) (Boolean!3196) (Unit!28346) (OperatorValue!3198 (op!3255 List!17704)) (IdentifierValue!6390 (value!98145 List!17704)) (IdentifierValue!6391 (value!98146 List!17704)) (WhitespaceValue!6391 (value!98147 List!17704)) (True!6390) (False!6390) (Broken!15977 (value!98148 List!17704)) (Broken!15978 (value!98149 List!17704)) (True!6391) (RightBrace!3195) (RightBracket!3195) (Colon!3195) (Null!3195) (Comma!3195) (LeftBracket!3195) (False!6391) (LeftBrace!3195) (ImaginaryLiteralValue!3195 (text!22811 List!17704)) (StringLiteralValue!9585 (value!98150 List!17704)) (EOFValue!3195 (value!98151 List!17704)) (IdentValue!3195 (value!98152 List!17704)) (DelimiterValue!6391 (value!98153 List!17704)) (DedentValue!3195 (value!98154 List!17704)) (NewLineValue!3195 (value!98155 List!17704)) (IntegerValue!9585 (value!98156 (_ BitVec 32)) (text!22812 List!17704)) (IntegerValue!9586 (value!98157 Int) (text!22813 List!17704)) (Times!3195) (Or!3195) (Equal!3195) (Minus!3195) (Broken!15979 (value!98158 List!17704)) (And!3195) (Div!3195) (LessEqual!3195) (Mod!3195) (Concat!7629) (Not!3195) (Plus!3195) (SpaceValue!3195 (value!98159 List!17704)) (IntegerValue!9587 (value!98160 Int) (text!22814 List!17704)) (StringLiteralValue!9586 (text!22815 List!17704)) (FloatLiteralValue!6391 (text!22816 List!17704)) (BytesLiteralValue!3195 (value!98161 List!17704)) (CommentValue!6391 (value!98162 List!17704)) (StringLiteralValue!9587 (value!98163 List!17704)) (ErrorTokenValue!3195 (msg!3256 List!17704)) )
))
(declare-datatypes ((String!20307 0))(
  ( (String!20308 (value!98164 String)) )
))
(declare-datatypes ((TokenValueInjection!6050 0))(
  ( (TokenValueInjection!6051 (toValue!4528 Int) (toChars!4387 Int)) )
))
(declare-datatypes ((Rule!6010 0))(
  ( (Rule!6011 (regex!3105 Regex!4433) (tag!3381 String!20307) (isSeparator!3105 Bool) (transformation!3105 TokenValueInjection!6050)) )
))
(declare-datatypes ((List!17705 0))(
  ( (Nil!17635) (Cons!17635 (h!23036 Rule!6010) (t!148136 List!17705)) )
))
(declare-fun rules!1846 () List!17705)

(declare-fun rulesInvariant!2403 (LexerInterface!2734 List!17705) Bool)

(assert (=> b!1613724 (= res!719863 (rulesInvariant!2403 thiss!17113 rules!1846))))

(declare-fun b!1613725 () Bool)

(declare-fun tp!470580 () Bool)

(declare-fun e!1035024 () Bool)

(declare-fun inv!23039 (String!20307) Bool)

(declare-fun inv!23042 (TokenValueInjection!6050) Bool)

(assert (=> b!1613725 (= e!1035024 (and tp!470580 (inv!23039 (tag!3381 (h!23036 rules!1846))) (inv!23042 (transformation!3105 (h!23036 rules!1846))) e!1035028))))

(declare-fun b!1613726 () Bool)

(declare-fun e!1035029 () Bool)

(declare-fun e!1035025 () Bool)

(assert (=> b!1613726 (= e!1035029 e!1035025)))

(declare-fun res!719854 () Bool)

(assert (=> b!1613726 (=> res!719854 e!1035025)))

(declare-datatypes ((Token!5776 0))(
  ( (Token!5777 (value!98165 TokenValue!3195) (rule!4925 Rule!6010) (size!14168 Int) (originalCharacters!3919 List!17703)) )
))
(declare-datatypes ((tuple2!17142 0))(
  ( (tuple2!17143 (_1!9973 Token!5776) (_2!9973 List!17703)) )
))
(declare-datatypes ((Option!3215 0))(
  ( (None!3214) (Some!3214 (v!24191 tuple2!17142)) )
))
(declare-fun lt!576988 () Option!3215)

(declare-fun isDefined!2582 (Option!3215) Bool)

(assert (=> b!1613726 (= res!719854 (not (isDefined!2582 lt!576988)))))

(declare-datatypes ((Unit!28347 0))(
  ( (Unit!28348) )
))
(declare-fun lt!576981 () Unit!28347)

(declare-fun lt!576984 () List!17703)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!308 (LexerInterface!2734 List!17705 List!17703 List!17703) Unit!28347)

(assert (=> b!1613726 (= lt!576981 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!308 thiss!17113 rules!1846 lt!576980 lt!576984))))

(declare-fun b!1613727 () Bool)

(declare-fun res!719856 () Bool)

(declare-fun e!1035018 () Bool)

(assert (=> b!1613727 (=> res!719856 e!1035018)))

(declare-datatypes ((List!17706 0))(
  ( (Nil!17636) (Cons!17636 (h!23037 Token!5776) (t!148137 List!17706)) )
))
(declare-fun tokens!457 () List!17706)

(declare-fun separableTokensPredicate!676 (LexerInterface!2734 Token!5776 Token!5776 List!17705) Bool)

(assert (=> b!1613727 (= res!719856 (not (separableTokensPredicate!676 thiss!17113 (h!23037 tokens!457) (h!23037 (t!148137 tokens!457)) rules!1846)))))

(declare-fun b!1613728 () Bool)

(assert (=> b!1613728 (= e!1035025 e!1035015)))

(declare-fun res!719855 () Bool)

(assert (=> b!1613728 (=> res!719855 e!1035015)))

(declare-fun lt!576983 () BalanceConc!11660)

(declare-fun prefixMatchZipperSequence!475 (Regex!4433 BalanceConc!11660) Bool)

(declare-fun ++!4648 (BalanceConc!11660 BalanceConc!11660) BalanceConc!11660)

(assert (=> b!1613728 (= res!719855 (prefixMatchZipperSequence!475 lt!576995 (++!4648 lt!576983 lt!576997)))))

(declare-fun singletonSeq!1488 (C!9040) BalanceConc!11660)

(declare-fun apply!4424 (BalanceConc!11660 Int) C!9040)

(declare-fun charsOf!1754 (Token!5776) BalanceConc!11660)

(assert (=> b!1613728 (= lt!576997 (singletonSeq!1488 (apply!4424 (charsOf!1754 (h!23037 (t!148137 tokens!457))) 0)))))

(declare-fun rulesRegex!495 (LexerInterface!2734 List!17705) Regex!4433)

(assert (=> b!1613728 (= lt!576995 (rulesRegex!495 thiss!17113 rules!1846))))

(declare-fun b!1613729 () Bool)

(declare-fun res!719864 () Bool)

(assert (=> b!1613729 (=> (not res!719864) (not e!1035020))))

(declare-fun isEmpty!10660 (List!17705) Bool)

(assert (=> b!1613729 (= res!719864 (not (isEmpty!10660 rules!1846)))))

(declare-fun b!1613730 () Bool)

(declare-fun res!719869 () Bool)

(assert (=> b!1613730 (=> (not res!719869) (not e!1035020))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!427 (LexerInterface!2734 List!17706 List!17705) Bool)

(assert (=> b!1613730 (= res!719869 (tokensListTwoByTwoPredicateSeparableList!427 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1613731 () Bool)

(declare-fun e!1035027 () Bool)

(assert (=> b!1613731 (= e!1035027 e!1035018)))

(declare-fun res!719861 () Bool)

(assert (=> b!1613731 (=> res!719861 e!1035018)))

(declare-fun lt!576985 () List!17706)

(declare-fun lt!576976 () List!17706)

(declare-fun lt!576992 () List!17706)

(assert (=> b!1613731 (= res!719861 (or (not (= lt!576976 lt!576985)) (not (= lt!576985 lt!576992))))))

(declare-datatypes ((IArray!11723 0))(
  ( (IArray!11724 (innerList!5919 List!17706)) )
))
(declare-datatypes ((Conc!5859 0))(
  ( (Node!5859 (left!14209 Conc!5859) (right!14539 Conc!5859) (csize!11948 Int) (cheight!6070 Int)) (Leaf!8632 (xs!8687 IArray!11723) (csize!11949 Int)) (Empty!5859) )
))
(declare-datatypes ((BalanceConc!11662 0))(
  ( (BalanceConc!11663 (c!262903 Conc!5859)) )
))
(declare-fun lt!576996 () BalanceConc!11662)

(declare-fun list!6888 (BalanceConc!11662) List!17706)

(assert (=> b!1613731 (= lt!576985 (list!6888 lt!576996))))

(assert (=> b!1613731 (= lt!576976 lt!576992)))

(declare-fun prepend!613 (BalanceConc!11662 Token!5776) BalanceConc!11662)

(declare-fun seqFromList!1959 (List!17706) BalanceConc!11662)

(assert (=> b!1613731 (= lt!576992 (list!6888 (prepend!613 (seqFromList!1959 (t!148137 (t!148137 tokens!457))) (h!23037 (t!148137 tokens!457)))))))

(declare-fun lt!576975 () Unit!28347)

(declare-datatypes ((tuple2!17144 0))(
  ( (tuple2!17145 (_1!9974 BalanceConc!11662) (_2!9974 BalanceConc!11660)) )
))
(declare-fun lt!576978 () tuple2!17144)

(declare-fun seqFromListBHdTlConstructive!182 (Token!5776 List!17706 BalanceConc!11662) Unit!28347)

(assert (=> b!1613731 (= lt!576975 (seqFromListBHdTlConstructive!182 (h!23037 (t!148137 tokens!457)) (t!148137 (t!148137 tokens!457)) (_1!9974 lt!576978)))))

(declare-fun b!1613732 () Bool)

(declare-fun e!1035023 () Bool)

(assert (=> b!1613732 (= e!1035023 (not e!1035027))))

(declare-fun res!719866 () Bool)

(assert (=> b!1613732 (=> res!719866 e!1035027)))

(assert (=> b!1613732 (= res!719866 (not (= lt!576976 (t!148137 tokens!457))))))

(assert (=> b!1613732 (= lt!576976 (list!6888 (_1!9974 lt!576978)))))

(declare-fun lt!576989 () Unit!28347)

(declare-fun theoremInvertabilityWhenTokenListSeparable!179 (LexerInterface!2734 List!17705 List!17706) Unit!28347)

(assert (=> b!1613732 (= lt!576989 (theoremInvertabilityWhenTokenListSeparable!179 thiss!17113 rules!1846 (t!148137 tokens!457)))))

(declare-fun lt!576993 () List!17703)

(declare-fun isPrefix!1365 (List!17703 List!17703) Bool)

(assert (=> b!1613732 (isPrefix!1365 lt!576980 lt!576993)))

(declare-fun lt!576977 () Unit!28347)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!890 (List!17703 List!17703) Unit!28347)

(assert (=> b!1613732 (= lt!576977 (lemmaConcatTwoListThenFirstIsPrefix!890 lt!576980 lt!576984))))

(declare-fun b!1613733 () Bool)

(declare-fun res!719860 () Bool)

(assert (=> b!1613733 (=> res!719860 e!1035029)))

(declare-fun rulesProduceIndividualToken!1386 (LexerInterface!2734 List!17705 Token!5776) Bool)

(assert (=> b!1613733 (= res!719860 (not (rulesProduceIndividualToken!1386 thiss!17113 rules!1846 (h!23037 tokens!457))))))

(declare-fun b!1613734 () Bool)

(declare-fun e!1035017 () Bool)

(declare-fun tp!470583 () Bool)

(declare-fun e!1035021 () Bool)

(assert (=> b!1613734 (= e!1035017 (and tp!470583 (inv!23039 (tag!3381 (rule!4925 (h!23037 tokens!457)))) (inv!23042 (transformation!3105 (rule!4925 (h!23037 tokens!457)))) e!1035021))))

(declare-fun b!1613735 () Bool)

(declare-fun e!1035019 () Bool)

(declare-fun tp!470577 () Bool)

(assert (=> b!1613735 (= e!1035019 (and e!1035024 tp!470577))))

(declare-fun b!1613736 () Bool)

(declare-fun res!719850 () Bool)

(declare-fun e!1035022 () Bool)

(assert (=> b!1613736 (=> (not res!719850) (not e!1035022))))

(declare-fun head!3326 (List!17703) C!9040)

(assert (=> b!1613736 (= res!719850 (= lt!576994 (Cons!17633 (head!3326 (originalCharacters!3919 (h!23037 (t!148137 tokens!457)))) Nil!17633)))))

(declare-fun b!1613737 () Bool)

(declare-fun lt!576998 () BalanceConc!11660)

(declare-fun head!3327 (BalanceConc!11660) C!9040)

(assert (=> b!1613737 (= e!1035022 (= lt!576994 (Cons!17633 (head!3327 lt!576998) Nil!17633)))))

(declare-fun b!1613738 () Bool)

(declare-fun e!1035012 () Bool)

(assert (=> b!1613738 (= e!1035013 e!1035012)))

(declare-fun res!719867 () Bool)

(assert (=> b!1613738 (=> res!719867 e!1035012)))

(declare-datatypes ((tuple2!17146 0))(
  ( (tuple2!17147 (_1!9975 Token!5776) (_2!9975 BalanceConc!11660)) )
))
(declare-datatypes ((Option!3216 0))(
  ( (None!3215) (Some!3215 (v!24192 tuple2!17146)) )
))
(declare-fun isDefined!2583 (Option!3216) Bool)

(declare-fun maxPrefixZipperSequence!629 (LexerInterface!2734 List!17705 BalanceConc!11660) Option!3216)

(declare-fun seqFromList!1960 (List!17703) BalanceConc!11660)

(assert (=> b!1613738 (= res!719867 (not (isDefined!2583 (maxPrefixZipperSequence!629 thiss!17113 rules!1846 (seqFromList!1960 (originalCharacters!3919 (h!23037 tokens!457)))))))))

(assert (=> b!1613738 e!1035022))

(declare-fun res!719865 () Bool)

(assert (=> b!1613738 (=> (not res!719865) (not e!1035022))))

(assert (=> b!1613738 (= res!719865 (= lt!576980 (originalCharacters!3919 (h!23037 tokens!457))))))

(declare-fun b!1613739 () Bool)

(declare-fun res!719857 () Bool)

(assert (=> b!1613739 (=> (not res!719857) (not e!1035022))))

(assert (=> b!1613739 (= res!719857 (= lt!576994 (Cons!17633 (head!3326 lt!576984) Nil!17633)))))

(declare-fun b!1613740 () Bool)

(declare-fun res!719852 () Bool)

(assert (=> b!1613740 (=> (not res!719852) (not e!1035020))))

(get-info :version)

(assert (=> b!1613740 (= res!719852 (and (not ((_ is Nil!17636) tokens!457)) (not ((_ is Nil!17636) (t!148137 tokens!457)))))))

(declare-fun e!1035030 () Bool)

(declare-fun tp!470581 () Bool)

(declare-fun b!1613741 () Bool)

(declare-fun inv!21 (TokenValue!3195) Bool)

(assert (=> b!1613741 (= e!1035030 (and (inv!21 (value!98165 (h!23037 tokens!457))) e!1035017 tp!470581))))

(declare-fun b!1613742 () Bool)

(declare-fun res!719868 () Bool)

(assert (=> b!1613742 (=> res!719868 e!1035029)))

(declare-fun isEmpty!10661 (BalanceConc!11662) Bool)

(declare-fun lex!1218 (LexerInterface!2734 List!17705 BalanceConc!11660) tuple2!17144)

(assert (=> b!1613742 (= res!719868 (isEmpty!10661 (_1!9974 (lex!1218 thiss!17113 rules!1846 (seqFromList!1960 lt!576980)))))))

(declare-fun b!1613743 () Bool)

(declare-fun res!719858 () Bool)

(assert (=> b!1613743 (=> (not res!719858) (not e!1035020))))

(declare-fun rulesProduceEachTokenIndividuallyList!936 (LexerInterface!2734 List!17705 List!17706) Bool)

(assert (=> b!1613743 (= res!719858 (rulesProduceEachTokenIndividuallyList!936 thiss!17113 rules!1846 tokens!457))))

(assert (=> b!1613744 (= e!1035021 (and tp!470576 tp!470579))))

(declare-fun b!1613745 () Bool)

(assert (=> b!1613745 (= e!1035018 e!1035029)))

(declare-fun res!719859 () Bool)

(assert (=> b!1613745 (=> res!719859 e!1035029)))

(declare-fun lt!576974 () List!17703)

(declare-fun lt!576990 () List!17703)

(assert (=> b!1613745 (= res!719859 (or (not (= lt!576990 lt!576974)) (not (= lt!576974 lt!576980)) (not (= lt!576990 lt!576980))))))

(declare-fun printList!849 (LexerInterface!2734 List!17706) List!17703)

(assert (=> b!1613745 (= lt!576974 (printList!849 thiss!17113 (Cons!17636 (h!23037 tokens!457) Nil!17636)))))

(declare-fun lt!576979 () BalanceConc!11660)

(assert (=> b!1613745 (= lt!576990 (list!6887 lt!576979))))

(declare-fun lt!576991 () BalanceConc!11662)

(declare-fun printTailRec!787 (LexerInterface!2734 BalanceConc!11662 Int BalanceConc!11660) BalanceConc!11660)

(assert (=> b!1613745 (= lt!576979 (printTailRec!787 thiss!17113 lt!576991 0 (BalanceConc!11661 Empty!5858)))))

(declare-fun print!1265 (LexerInterface!2734 BalanceConc!11662) BalanceConc!11660)

(assert (=> b!1613745 (= lt!576979 (print!1265 thiss!17113 lt!576991))))

(declare-fun singletonSeq!1489 (Token!5776) BalanceConc!11662)

(assert (=> b!1613745 (= lt!576991 (singletonSeq!1489 (h!23037 tokens!457)))))

(declare-fun lt!576986 () List!17703)

(declare-fun maxPrefix!1298 (LexerInterface!2734 List!17705 List!17703) Option!3215)

(assert (=> b!1613745 (= lt!576988 (maxPrefix!1298 thiss!17113 rules!1846 lt!576986))))

(declare-fun tp!470578 () Bool)

(declare-fun b!1613746 () Bool)

(declare-fun e!1035014 () Bool)

(declare-fun inv!23043 (Token!5776) Bool)

(assert (=> b!1613746 (= e!1035014 (and (inv!23043 (h!23037 tokens!457)) e!1035030 tp!470578))))

(declare-fun res!719851 () Bool)

(assert (=> start!152518 (=> (not res!719851) (not e!1035020))))

(assert (=> start!152518 (= res!719851 ((_ is Lexer!2732) thiss!17113))))

(assert (=> start!152518 e!1035020))

(assert (=> start!152518 true))

(assert (=> start!152518 e!1035019))

(assert (=> start!152518 e!1035014))

(declare-fun b!1613747 () Bool)

(assert (=> b!1613747 (= e!1035020 e!1035023)))

(declare-fun res!719862 () Bool)

(assert (=> b!1613747 (=> (not res!719862) (not e!1035023))))

(assert (=> b!1613747 (= res!719862 (= lt!576986 lt!576993))))

(assert (=> b!1613747 (= lt!576993 (++!4647 lt!576980 lt!576984))))

(declare-fun lt!576987 () BalanceConc!11660)

(assert (=> b!1613747 (= lt!576986 (list!6887 lt!576987))))

(assert (=> b!1613747 (= lt!576984 (list!6887 lt!576998))))

(assert (=> b!1613747 (= lt!576980 (list!6887 lt!576983))))

(assert (=> b!1613747 (= lt!576983 (charsOf!1754 (h!23037 tokens!457)))))

(assert (=> b!1613747 (= lt!576978 (lex!1218 thiss!17113 rules!1846 lt!576998))))

(assert (=> b!1613747 (= lt!576998 (print!1265 thiss!17113 lt!576996))))

(assert (=> b!1613747 (= lt!576996 (seqFromList!1959 (t!148137 tokens!457)))))

(assert (=> b!1613747 (= lt!576987 (print!1265 thiss!17113 (seqFromList!1959 tokens!457)))))

(declare-fun b!1613748 () Bool)

(assert (=> b!1613748 (= e!1035012 true)))

(declare-fun lt!576982 () Bool)

(declare-fun rulesValidInductive!948 (LexerInterface!2734 List!17705) Bool)

(assert (=> b!1613748 (= lt!576982 (rulesValidInductive!948 thiss!17113 rules!1846))))

(assert (=> b!1613748 (isDefined!2582 (maxPrefix!1298 thiss!17113 rules!1846 (originalCharacters!3919 (h!23037 tokens!457))))))

(assert (= (and start!152518 res!719851) b!1613729))

(assert (= (and b!1613729 res!719864) b!1613724))

(assert (= (and b!1613724 res!719863) b!1613743))

(assert (= (and b!1613743 res!719858) b!1613730))

(assert (= (and b!1613730 res!719869) b!1613740))

(assert (= (and b!1613740 res!719852) b!1613747))

(assert (= (and b!1613747 res!719862) b!1613732))

(assert (= (and b!1613732 (not res!719866)) b!1613731))

(assert (= (and b!1613731 (not res!719861)) b!1613727))

(assert (= (and b!1613727 (not res!719856)) b!1613745))

(assert (= (and b!1613745 (not res!719859)) b!1613733))

(assert (= (and b!1613733 (not res!719860)) b!1613742))

(assert (= (and b!1613742 (not res!719868)) b!1613726))

(assert (= (and b!1613726 (not res!719854)) b!1613728))

(assert (= (and b!1613728 (not res!719855)) b!1613722))

(assert (= (and b!1613722 (not res!719853)) b!1613738))

(assert (= (and b!1613738 res!719865) b!1613736))

(assert (= (and b!1613736 res!719850) b!1613739))

(assert (= (and b!1613739 res!719857) b!1613737))

(assert (= (and b!1613738 (not res!719867)) b!1613748))

(assert (= b!1613725 b!1613723))

(assert (= b!1613735 b!1613725))

(assert (= (and start!152518 ((_ is Cons!17635) rules!1846)) b!1613735))

(assert (= b!1613734 b!1613744))

(assert (= b!1613741 b!1613734))

(assert (= b!1613746 b!1613741))

(assert (= (and start!152518 ((_ is Cons!17636) tokens!457)) b!1613746))

(declare-fun m!1932273 () Bool)

(assert (=> b!1613743 m!1932273))

(declare-fun m!1932275 () Bool)

(assert (=> b!1613733 m!1932275))

(declare-fun m!1932277 () Bool)

(assert (=> b!1613730 m!1932277))

(declare-fun m!1932279 () Bool)

(assert (=> b!1613746 m!1932279))

(declare-fun m!1932281 () Bool)

(assert (=> b!1613736 m!1932281))

(declare-fun m!1932283 () Bool)

(assert (=> b!1613742 m!1932283))

(assert (=> b!1613742 m!1932283))

(declare-fun m!1932285 () Bool)

(assert (=> b!1613742 m!1932285))

(declare-fun m!1932287 () Bool)

(assert (=> b!1613742 m!1932287))

(declare-fun m!1932289 () Bool)

(assert (=> b!1613731 m!1932289))

(declare-fun m!1932291 () Bool)

(assert (=> b!1613731 m!1932291))

(declare-fun m!1932293 () Bool)

(assert (=> b!1613731 m!1932293))

(declare-fun m!1932295 () Bool)

(assert (=> b!1613731 m!1932295))

(declare-fun m!1932297 () Bool)

(assert (=> b!1613731 m!1932297))

(assert (=> b!1613731 m!1932293))

(assert (=> b!1613731 m!1932295))

(declare-fun m!1932299 () Bool)

(assert (=> b!1613739 m!1932299))

(declare-fun m!1932301 () Bool)

(assert (=> b!1613725 m!1932301))

(declare-fun m!1932303 () Bool)

(assert (=> b!1613725 m!1932303))

(declare-fun m!1932305 () Bool)

(assert (=> b!1613741 m!1932305))

(declare-fun m!1932307 () Bool)

(assert (=> b!1613729 m!1932307))

(declare-fun m!1932309 () Bool)

(assert (=> b!1613722 m!1932309))

(assert (=> b!1613722 m!1932309))

(declare-fun m!1932311 () Bool)

(assert (=> b!1613722 m!1932311))

(declare-fun m!1932313 () Bool)

(assert (=> b!1613722 m!1932313))

(declare-fun m!1932315 () Bool)

(assert (=> b!1613726 m!1932315))

(declare-fun m!1932317 () Bool)

(assert (=> b!1613726 m!1932317))

(declare-fun m!1932319 () Bool)

(assert (=> b!1613737 m!1932319))

(declare-fun m!1932321 () Bool)

(assert (=> b!1613747 m!1932321))

(declare-fun m!1932323 () Bool)

(assert (=> b!1613747 m!1932323))

(declare-fun m!1932325 () Bool)

(assert (=> b!1613747 m!1932325))

(declare-fun m!1932327 () Bool)

(assert (=> b!1613747 m!1932327))

(declare-fun m!1932329 () Bool)

(assert (=> b!1613747 m!1932329))

(declare-fun m!1932331 () Bool)

(assert (=> b!1613747 m!1932331))

(declare-fun m!1932333 () Bool)

(assert (=> b!1613747 m!1932333))

(declare-fun m!1932335 () Bool)

(assert (=> b!1613747 m!1932335))

(assert (=> b!1613747 m!1932327))

(declare-fun m!1932337 () Bool)

(assert (=> b!1613747 m!1932337))

(declare-fun m!1932339 () Bool)

(assert (=> b!1613747 m!1932339))

(declare-fun m!1932341 () Bool)

(assert (=> b!1613728 m!1932341))

(declare-fun m!1932343 () Bool)

(assert (=> b!1613728 m!1932343))

(declare-fun m!1932345 () Bool)

(assert (=> b!1613728 m!1932345))

(declare-fun m!1932347 () Bool)

(assert (=> b!1613728 m!1932347))

(declare-fun m!1932349 () Bool)

(assert (=> b!1613728 m!1932349))

(assert (=> b!1613728 m!1932343))

(declare-fun m!1932351 () Bool)

(assert (=> b!1613728 m!1932351))

(assert (=> b!1613728 m!1932347))

(assert (=> b!1613728 m!1932351))

(declare-fun m!1932353 () Bool)

(assert (=> b!1613748 m!1932353))

(declare-fun m!1932355 () Bool)

(assert (=> b!1613748 m!1932355))

(assert (=> b!1613748 m!1932355))

(declare-fun m!1932357 () Bool)

(assert (=> b!1613748 m!1932357))

(declare-fun m!1932359 () Bool)

(assert (=> b!1613727 m!1932359))

(declare-fun m!1932361 () Bool)

(assert (=> b!1613745 m!1932361))

(declare-fun m!1932363 () Bool)

(assert (=> b!1613745 m!1932363))

(declare-fun m!1932365 () Bool)

(assert (=> b!1613745 m!1932365))

(declare-fun m!1932367 () Bool)

(assert (=> b!1613745 m!1932367))

(declare-fun m!1932369 () Bool)

(assert (=> b!1613745 m!1932369))

(declare-fun m!1932371 () Bool)

(assert (=> b!1613745 m!1932371))

(declare-fun m!1932373 () Bool)

(assert (=> b!1613734 m!1932373))

(declare-fun m!1932375 () Bool)

(assert (=> b!1613734 m!1932375))

(declare-fun m!1932377 () Bool)

(assert (=> b!1613738 m!1932377))

(assert (=> b!1613738 m!1932377))

(declare-fun m!1932379 () Bool)

(assert (=> b!1613738 m!1932379))

(assert (=> b!1613738 m!1932379))

(declare-fun m!1932381 () Bool)

(assert (=> b!1613738 m!1932381))

(declare-fun m!1932383 () Bool)

(assert (=> b!1613732 m!1932383))

(declare-fun m!1932385 () Bool)

(assert (=> b!1613732 m!1932385))

(declare-fun m!1932387 () Bool)

(assert (=> b!1613732 m!1932387))

(declare-fun m!1932389 () Bool)

(assert (=> b!1613732 m!1932389))

(declare-fun m!1932391 () Bool)

(assert (=> b!1613724 m!1932391))

(check-sat (not b!1613729) (not b!1613727) (not b!1613739) (not b!1613730) (not b!1613745) (not b!1613733) (not b!1613734) (not b!1613746) (not b!1613725) (not b!1613742) (not b!1613732) (not b_next!44121) (not b!1613738) b_and!114423 (not b!1613722) (not b!1613736) b_and!114421 (not b!1613726) b_and!114425 (not b_next!44119) (not b_next!44125) (not b!1613735) (not b!1613743) b_and!114427 (not b!1613741) (not b!1613737) (not b!1613748) (not b!1613728) (not b_next!44123) (not b!1613731) (not b!1613724) (not b!1613747))
(check-sat (not b_next!44121) b_and!114423 b_and!114421 b_and!114425 b_and!114427 (not b_next!44123) (not b_next!44119) (not b_next!44125))
