; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!158486 () Bool)

(assert start!158486)

(declare-fun b!1648854 () Bool)

(declare-fun b_free!44807 () Bool)

(declare-fun b_next!45511 () Bool)

(assert (=> b!1648854 (= b_free!44807 (not b_next!45511))))

(declare-fun tp!477529 () Bool)

(declare-fun b_and!117093 () Bool)

(assert (=> b!1648854 (= tp!477529 b_and!117093)))

(declare-fun b_free!44809 () Bool)

(declare-fun b_next!45513 () Bool)

(assert (=> b!1648854 (= b_free!44809 (not b_next!45513))))

(declare-fun tp!477525 () Bool)

(declare-fun b_and!117095 () Bool)

(assert (=> b!1648854 (= tp!477525 b_and!117095)))

(declare-fun b!1648845 () Bool)

(declare-fun b_free!44811 () Bool)

(declare-fun b_next!45515 () Bool)

(assert (=> b!1648845 (= b_free!44811 (not b_next!45515))))

(declare-fun tp!477530 () Bool)

(declare-fun b_and!117097 () Bool)

(assert (=> b!1648845 (= tp!477530 b_and!117097)))

(declare-fun b_free!44813 () Bool)

(declare-fun b_next!45517 () Bool)

(assert (=> b!1648845 (= b_free!44813 (not b_next!45517))))

(declare-fun tp!477527 () Bool)

(declare-fun b_and!117099 () Bool)

(assert (=> b!1648845 (= tp!477527 b_and!117099)))

(declare-fun e!1057439 () Bool)

(declare-fun tp!477531 () Bool)

(declare-fun e!1057432 () Bool)

(declare-datatypes ((List!18265 0))(
  ( (Nil!18195) (Cons!18195 (h!23596 (_ BitVec 16)) (t!150748 List!18265)) )
))
(declare-datatypes ((TokenValue!3299 0))(
  ( (FloatLiteralValue!6598 (text!23538 List!18265)) (TokenValueExt!3298 (__x!11900 Int)) (Broken!16495 (value!101103 List!18265)) (Object!3368) (End!3299) (Def!3299) (Underscore!3299) (Match!3299) (Else!3299) (Error!3299) (Case!3299) (If!3299) (Extends!3299) (Abstract!3299) (Class!3299) (Val!3299) (DelimiterValue!6598 (del!3359 List!18265)) (KeywordValue!3305 (value!101104 List!18265)) (CommentValue!6598 (value!101105 List!18265)) (WhitespaceValue!6598 (value!101106 List!18265)) (IndentationValue!3299 (value!101107 List!18265)) (String!20826) (Int32!3299) (Broken!16496 (value!101108 List!18265)) (Boolean!3300) (Unit!30270) (OperatorValue!3302 (op!3359 List!18265)) (IdentifierValue!6598 (value!101109 List!18265)) (IdentifierValue!6599 (value!101110 List!18265)) (WhitespaceValue!6599 (value!101111 List!18265)) (True!6598) (False!6598) (Broken!16497 (value!101112 List!18265)) (Broken!16498 (value!101113 List!18265)) (True!6599) (RightBrace!3299) (RightBracket!3299) (Colon!3299) (Null!3299) (Comma!3299) (LeftBracket!3299) (False!6599) (LeftBrace!3299) (ImaginaryLiteralValue!3299 (text!23539 List!18265)) (StringLiteralValue!9897 (value!101114 List!18265)) (EOFValue!3299 (value!101115 List!18265)) (IdentValue!3299 (value!101116 List!18265)) (DelimiterValue!6599 (value!101117 List!18265)) (DedentValue!3299 (value!101118 List!18265)) (NewLineValue!3299 (value!101119 List!18265)) (IntegerValue!9897 (value!101120 (_ BitVec 32)) (text!23540 List!18265)) (IntegerValue!9898 (value!101121 Int) (text!23541 List!18265)) (Times!3299) (Or!3299) (Equal!3299) (Minus!3299) (Broken!16499 (value!101122 List!18265)) (And!3299) (Div!3299) (LessEqual!3299) (Mod!3299) (Concat!7836) (Not!3299) (Plus!3299) (SpaceValue!3299 (value!101123 List!18265)) (IntegerValue!9899 (value!101124 Int) (text!23542 List!18265)) (StringLiteralValue!9898 (text!23543 List!18265)) (FloatLiteralValue!6599 (text!23544 List!18265)) (BytesLiteralValue!3299 (value!101125 List!18265)) (CommentValue!6599 (value!101126 List!18265)) (StringLiteralValue!9899 (value!101127 List!18265)) (ErrorTokenValue!3299 (msg!3360 List!18265)) )
))
(declare-datatypes ((C!9248 0))(
  ( (C!9249 (val!5220 Int)) )
))
(declare-datatypes ((List!18266 0))(
  ( (Nil!18196) (Cons!18196 (h!23597 C!9248) (t!150749 List!18266)) )
))
(declare-datatypes ((IArray!12137 0))(
  ( (IArray!12138 (innerList!6126 List!18266)) )
))
(declare-datatypes ((Conc!6066 0))(
  ( (Node!6066 (left!14584 Conc!6066) (right!14914 Conc!6066) (csize!12362 Int) (cheight!6277 Int)) (Leaf!8891 (xs!8902 IArray!12137) (csize!12363 Int)) (Empty!6066) )
))
(declare-datatypes ((BalanceConc!12076 0))(
  ( (BalanceConc!12077 (c!268129 Conc!6066)) )
))
(declare-datatypes ((Regex!4537 0))(
  ( (ElementMatch!4537 (c!268130 C!9248)) (Concat!7837 (regOne!9586 Regex!4537) (regTwo!9586 Regex!4537)) (EmptyExpr!4537) (Star!4537 (reg!4866 Regex!4537)) (EmptyLang!4537) (Union!4537 (regOne!9587 Regex!4537) (regTwo!9587 Regex!4537)) )
))
(declare-datatypes ((String!20827 0))(
  ( (String!20828 (value!101128 String)) )
))
(declare-datatypes ((TokenValueInjection!6258 0))(
  ( (TokenValueInjection!6259 (toValue!4656 Int) (toChars!4515 Int)) )
))
(declare-datatypes ((Rule!6218 0))(
  ( (Rule!6219 (regex!3209 Regex!4537) (tag!3489 String!20827) (isSeparator!3209 Bool) (transformation!3209 TokenValueInjection!6258)) )
))
(declare-datatypes ((Token!5984 0))(
  ( (Token!5985 (value!101129 TokenValue!3299) (rule!5067 Rule!6218) (size!14490 Int) (originalCharacters!4023 List!18266)) )
))
(declare-datatypes ((List!18267 0))(
  ( (Nil!18197) (Cons!18197 (h!23598 Token!5984) (t!150750 List!18267)) )
))
(declare-fun tokens!457 () List!18267)

(declare-fun b!1648841 () Bool)

(declare-fun inv!23558 (Token!5984) Bool)

(assert (=> b!1648841 (= e!1057439 (and (inv!23558 (h!23598 tokens!457)) e!1057432 tp!477531))))

(declare-fun b!1648842 () Bool)

(declare-fun res!738872 () Bool)

(declare-fun e!1057431 () Bool)

(assert (=> b!1648842 (=> (not res!738872) (not e!1057431))))

(get-info :version)

(assert (=> b!1648842 (= res!738872 (and (not ((_ is Nil!18197) tokens!457)) (not ((_ is Nil!18197) (t!150750 tokens!457)))))))

(declare-fun lt!610892 () Regex!4537)

(declare-fun lt!610905 () List!18266)

(declare-fun lt!610896 () BalanceConc!12076)

(declare-fun b!1648843 () Bool)

(declare-fun e!1057444 () Bool)

(declare-fun prefixMatch!454 (Regex!4537 List!18266) Bool)

(declare-fun ++!4915 (List!18266 List!18266) List!18266)

(declare-fun list!7233 (BalanceConc!12076) List!18266)

(assert (=> b!1648843 (= e!1057444 (not (prefixMatch!454 lt!610892 (++!4915 lt!610905 (list!7233 lt!610896)))))))

(declare-fun b!1648844 () Bool)

(declare-fun res!738884 () Bool)

(assert (=> b!1648844 (=> (not res!738884) (not e!1057431))))

(declare-datatypes ((LexerInterface!2838 0))(
  ( (LexerInterfaceExt!2835 (__x!11901 Int)) (Lexer!2836) )
))
(declare-fun thiss!17113 () LexerInterface!2838)

(declare-datatypes ((List!18268 0))(
  ( (Nil!18198) (Cons!18198 (h!23599 Rule!6218) (t!150751 List!18268)) )
))
(declare-fun rules!1846 () List!18268)

(declare-fun rulesInvariant!2507 (LexerInterface!2838 List!18268) Bool)

(assert (=> b!1648844 (= res!738884 (rulesInvariant!2507 thiss!17113 rules!1846))))

(declare-fun e!1057429 () Bool)

(assert (=> b!1648845 (= e!1057429 (and tp!477530 tp!477527))))

(declare-fun tp!477524 () Bool)

(declare-fun b!1648846 () Bool)

(declare-fun e!1057436 () Bool)

(declare-fun e!1057434 () Bool)

(declare-fun inv!23555 (String!20827) Bool)

(declare-fun inv!23559 (TokenValueInjection!6258) Bool)

(assert (=> b!1648846 (= e!1057434 (and tp!477524 (inv!23555 (tag!3489 (h!23599 rules!1846))) (inv!23559 (transformation!3209 (h!23599 rules!1846))) e!1057436))))

(declare-fun b!1648847 () Bool)

(declare-fun e!1057441 () Bool)

(assert (=> b!1648847 (= e!1057441 e!1057444)))

(declare-fun res!738881 () Bool)

(assert (=> b!1648847 (=> res!738881 e!1057444)))

(declare-fun lt!610899 () BalanceConc!12076)

(declare-fun prefixMatchZipperSequence!617 (Regex!4537 BalanceConc!12076) Bool)

(declare-fun ++!4916 (BalanceConc!12076 BalanceConc!12076) BalanceConc!12076)

(assert (=> b!1648847 (= res!738881 (prefixMatchZipperSequence!617 lt!610892 (++!4916 lt!610899 lt!610896)))))

(declare-fun singletonSeq!1690 (C!9248) BalanceConc!12076)

(declare-fun apply!4786 (BalanceConc!12076 Int) C!9248)

(declare-fun charsOf!1858 (Token!5984) BalanceConc!12076)

(assert (=> b!1648847 (= lt!610896 (singletonSeq!1690 (apply!4786 (charsOf!1858 (h!23598 (t!150750 tokens!457))) 0)))))

(declare-fun rulesRegex!593 (LexerInterface!2838 List!18268) Regex!4537)

(assert (=> b!1648847 (= lt!610892 (rulesRegex!593 thiss!17113 rules!1846))))

(declare-fun b!1648848 () Bool)

(declare-fun e!1057443 () Bool)

(declare-fun e!1057437 () Bool)

(assert (=> b!1648848 (= e!1057443 e!1057437)))

(declare-fun res!738878 () Bool)

(assert (=> b!1648848 (=> res!738878 e!1057437)))

(declare-fun lt!610893 () List!18267)

(declare-fun lt!610904 () List!18267)

(declare-fun lt!610910 () List!18267)

(assert (=> b!1648848 (= res!738878 (or (not (= lt!610910 lt!610904)) (not (= lt!610904 lt!610893))))))

(declare-datatypes ((IArray!12139 0))(
  ( (IArray!12140 (innerList!6127 List!18267)) )
))
(declare-datatypes ((Conc!6067 0))(
  ( (Node!6067 (left!14585 Conc!6067) (right!14915 Conc!6067) (csize!12364 Int) (cheight!6278 Int)) (Leaf!8892 (xs!8903 IArray!12139) (csize!12365 Int)) (Empty!6067) )
))
(declare-datatypes ((BalanceConc!12078 0))(
  ( (BalanceConc!12079 (c!268131 Conc!6067)) )
))
(declare-fun lt!610894 () BalanceConc!12078)

(declare-fun list!7234 (BalanceConc!12078) List!18267)

(assert (=> b!1648848 (= lt!610904 (list!7234 lt!610894))))

(assert (=> b!1648848 (= lt!610910 lt!610893)))

(declare-fun prepend!771 (BalanceConc!12078 Token!5984) BalanceConc!12078)

(declare-fun seqFromList!2157 (List!18267) BalanceConc!12078)

(assert (=> b!1648848 (= lt!610893 (list!7234 (prepend!771 (seqFromList!2157 (t!150750 (t!150750 tokens!457))) (h!23598 (t!150750 tokens!457)))))))

(declare-datatypes ((Unit!30271 0))(
  ( (Unit!30272) )
))
(declare-fun lt!610903 () Unit!30271)

(declare-datatypes ((tuple2!17868 0))(
  ( (tuple2!17869 (_1!10336 BalanceConc!12078) (_2!10336 BalanceConc!12076)) )
))
(declare-fun lt!610906 () tuple2!17868)

(declare-fun seqFromListBHdTlConstructive!284 (Token!5984 List!18267 BalanceConc!12078) Unit!30271)

(assert (=> b!1648848 (= lt!610903 (seqFromListBHdTlConstructive!284 (h!23598 (t!150750 tokens!457)) (t!150750 (t!150750 tokens!457)) (_1!10336 lt!610906)))))

(declare-fun b!1648849 () Bool)

(declare-fun e!1057435 () Bool)

(assert (=> b!1648849 (= e!1057435 (not e!1057443))))

(declare-fun res!738875 () Bool)

(assert (=> b!1648849 (=> res!738875 e!1057443)))

(assert (=> b!1648849 (= res!738875 (not (= lt!610910 (t!150750 tokens!457))))))

(assert (=> b!1648849 (= lt!610910 (list!7234 (_1!10336 lt!610906)))))

(declare-fun lt!610895 () Unit!30271)

(declare-fun theoremInvertabilityWhenTokenListSeparable!281 (LexerInterface!2838 List!18268 List!18267) Unit!30271)

(assert (=> b!1648849 (= lt!610895 (theoremInvertabilityWhenTokenListSeparable!281 thiss!17113 rules!1846 (t!150750 tokens!457)))))

(declare-fun lt!610900 () List!18266)

(declare-fun isPrefix!1467 (List!18266 List!18266) Bool)

(assert (=> b!1648849 (isPrefix!1467 lt!610905 lt!610900)))

(declare-fun lt!610907 () Unit!30271)

(declare-fun lt!610901 () List!18266)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!992 (List!18266 List!18266) Unit!30271)

(assert (=> b!1648849 (= lt!610907 (lemmaConcatTwoListThenFirstIsPrefix!992 lt!610905 lt!610901))))

(declare-fun b!1648850 () Bool)

(declare-fun e!1057442 () Bool)

(assert (=> b!1648850 (= e!1057437 e!1057442)))

(declare-fun res!738876 () Bool)

(assert (=> b!1648850 (=> res!738876 e!1057442)))

(declare-fun lt!610912 () List!18266)

(declare-fun lt!610911 () List!18266)

(assert (=> b!1648850 (= res!738876 (or (not (= lt!610912 lt!610911)) (not (= lt!610911 lt!610905)) (not (= lt!610912 lt!610905))))))

(declare-fun printList!951 (LexerInterface!2838 List!18267) List!18266)

(assert (=> b!1648850 (= lt!610911 (printList!951 thiss!17113 (Cons!18197 (h!23598 tokens!457) Nil!18197)))))

(declare-fun lt!610897 () BalanceConc!12076)

(assert (=> b!1648850 (= lt!610912 (list!7233 lt!610897))))

(declare-fun lt!610902 () BalanceConc!12078)

(declare-fun printTailRec!889 (LexerInterface!2838 BalanceConc!12078 Int BalanceConc!12076) BalanceConc!12076)

(assert (=> b!1648850 (= lt!610897 (printTailRec!889 thiss!17113 lt!610902 0 (BalanceConc!12077 Empty!6066)))))

(declare-fun print!1369 (LexerInterface!2838 BalanceConc!12078) BalanceConc!12076)

(assert (=> b!1648850 (= lt!610897 (print!1369 thiss!17113 lt!610902))))

(declare-fun singletonSeq!1691 (Token!5984) BalanceConc!12078)

(assert (=> b!1648850 (= lt!610902 (singletonSeq!1691 (h!23598 tokens!457)))))

(declare-fun lt!610914 () List!18266)

(declare-datatypes ((tuple2!17870 0))(
  ( (tuple2!17871 (_1!10337 Token!5984) (_2!10337 List!18266)) )
))
(declare-datatypes ((Option!3452 0))(
  ( (None!3451) (Some!3451 (v!24614 tuple2!17870)) )
))
(declare-fun lt!610909 () Option!3452)

(declare-fun maxPrefix!1400 (LexerInterface!2838 List!18268 List!18266) Option!3452)

(assert (=> b!1648850 (= lt!610909 (maxPrefix!1400 thiss!17113 rules!1846 lt!610914))))

(declare-fun b!1648851 () Bool)

(assert (=> b!1648851 (= e!1057431 e!1057435)))

(declare-fun res!738870 () Bool)

(assert (=> b!1648851 (=> (not res!738870) (not e!1057435))))

(assert (=> b!1648851 (= res!738870 (= lt!610914 lt!610900))))

(assert (=> b!1648851 (= lt!610900 (++!4915 lt!610905 lt!610901))))

(declare-fun lt!610898 () BalanceConc!12076)

(assert (=> b!1648851 (= lt!610914 (list!7233 lt!610898))))

(declare-fun lt!610908 () BalanceConc!12076)

(assert (=> b!1648851 (= lt!610901 (list!7233 lt!610908))))

(assert (=> b!1648851 (= lt!610905 (list!7233 lt!610899))))

(assert (=> b!1648851 (= lt!610899 (charsOf!1858 (h!23598 tokens!457)))))

(declare-fun lex!1322 (LexerInterface!2838 List!18268 BalanceConc!12076) tuple2!17868)

(assert (=> b!1648851 (= lt!610906 (lex!1322 thiss!17113 rules!1846 lt!610908))))

(assert (=> b!1648851 (= lt!610908 (print!1369 thiss!17113 lt!610894))))

(assert (=> b!1648851 (= lt!610894 (seqFromList!2157 (t!150750 tokens!457)))))

(assert (=> b!1648851 (= lt!610898 (print!1369 thiss!17113 (seqFromList!2157 tokens!457)))))

(declare-fun res!738871 () Bool)

(assert (=> start!158486 (=> (not res!738871) (not e!1057431))))

(assert (=> start!158486 (= res!738871 ((_ is Lexer!2836) thiss!17113))))

(assert (=> start!158486 e!1057431))

(assert (=> start!158486 true))

(declare-fun e!1057428 () Bool)

(assert (=> start!158486 e!1057428))

(assert (=> start!158486 e!1057439))

(declare-fun b!1648852 () Bool)

(declare-fun e!1057430 () Bool)

(declare-fun tp!477526 () Bool)

(declare-fun inv!21 (TokenValue!3299) Bool)

(assert (=> b!1648852 (= e!1057432 (and (inv!21 (value!101129 (h!23598 tokens!457))) e!1057430 tp!477526))))

(declare-fun tp!477528 () Bool)

(declare-fun b!1648853 () Bool)

(assert (=> b!1648853 (= e!1057430 (and tp!477528 (inv!23555 (tag!3489 (rule!5067 (h!23598 tokens!457)))) (inv!23559 (transformation!3209 (rule!5067 (h!23598 tokens!457)))) e!1057429))))

(assert (=> b!1648854 (= e!1057436 (and tp!477529 tp!477525))))

(declare-fun b!1648855 () Bool)

(declare-fun res!738882 () Bool)

(assert (=> b!1648855 (=> res!738882 e!1057437)))

(declare-fun separableTokensPredicate!778 (LexerInterface!2838 Token!5984 Token!5984 List!18268) Bool)

(assert (=> b!1648855 (= res!738882 (not (separableTokensPredicate!778 thiss!17113 (h!23598 tokens!457) (h!23598 (t!150750 tokens!457)) rules!1846)))))

(declare-fun b!1648856 () Bool)

(declare-fun res!738874 () Bool)

(assert (=> b!1648856 (=> (not res!738874) (not e!1057431))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!531 (LexerInterface!2838 List!18267 List!18268) Bool)

(assert (=> b!1648856 (= res!738874 (tokensListTwoByTwoPredicateSeparableList!531 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1648857 () Bool)

(declare-fun res!738873 () Bool)

(assert (=> b!1648857 (=> res!738873 e!1057442)))

(declare-fun isEmpty!11224 (BalanceConc!12078) Bool)

(declare-fun seqFromList!2158 (List!18266) BalanceConc!12076)

(assert (=> b!1648857 (= res!738873 (isEmpty!11224 (_1!10336 (lex!1322 thiss!17113 rules!1846 (seqFromList!2158 lt!610905)))))))

(declare-fun b!1648858 () Bool)

(declare-fun tp!477532 () Bool)

(assert (=> b!1648858 (= e!1057428 (and e!1057434 tp!477532))))

(declare-fun b!1648859 () Bool)

(declare-fun res!738883 () Bool)

(assert (=> b!1648859 (=> (not res!738883) (not e!1057431))))

(declare-fun rulesProduceEachTokenIndividuallyList!1040 (LexerInterface!2838 List!18268 List!18267) Bool)

(assert (=> b!1648859 (= res!738883 (rulesProduceEachTokenIndividuallyList!1040 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1648860 () Bool)

(assert (=> b!1648860 (= e!1057442 e!1057441)))

(declare-fun res!738879 () Bool)

(assert (=> b!1648860 (=> res!738879 e!1057441)))

(declare-fun isDefined!2807 (Option!3452) Bool)

(assert (=> b!1648860 (= res!738879 (not (isDefined!2807 lt!610909)))))

(declare-fun lt!610913 () Unit!30271)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!406 (LexerInterface!2838 List!18268 List!18266 List!18266) Unit!30271)

(assert (=> b!1648860 (= lt!610913 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!406 thiss!17113 rules!1846 lt!610905 lt!610901))))

(declare-fun b!1648861 () Bool)

(declare-fun res!738880 () Bool)

(assert (=> b!1648861 (=> (not res!738880) (not e!1057431))))

(declare-fun isEmpty!11225 (List!18268) Bool)

(assert (=> b!1648861 (= res!738880 (not (isEmpty!11225 rules!1846)))))

(declare-fun b!1648862 () Bool)

(declare-fun res!738877 () Bool)

(assert (=> b!1648862 (=> res!738877 e!1057442)))

(declare-fun rulesProduceIndividualToken!1486 (LexerInterface!2838 List!18268 Token!5984) Bool)

(assert (=> b!1648862 (= res!738877 (not (rulesProduceIndividualToken!1486 thiss!17113 rules!1846 (h!23598 tokens!457))))))

(assert (= (and start!158486 res!738871) b!1648861))

(assert (= (and b!1648861 res!738880) b!1648844))

(assert (= (and b!1648844 res!738884) b!1648859))

(assert (= (and b!1648859 res!738883) b!1648856))

(assert (= (and b!1648856 res!738874) b!1648842))

(assert (= (and b!1648842 res!738872) b!1648851))

(assert (= (and b!1648851 res!738870) b!1648849))

(assert (= (and b!1648849 (not res!738875)) b!1648848))

(assert (= (and b!1648848 (not res!738878)) b!1648855))

(assert (= (and b!1648855 (not res!738882)) b!1648850))

(assert (= (and b!1648850 (not res!738876)) b!1648862))

(assert (= (and b!1648862 (not res!738877)) b!1648857))

(assert (= (and b!1648857 (not res!738873)) b!1648860))

(assert (= (and b!1648860 (not res!738879)) b!1648847))

(assert (= (and b!1648847 (not res!738881)) b!1648843))

(assert (= b!1648846 b!1648854))

(assert (= b!1648858 b!1648846))

(assert (= (and start!158486 ((_ is Cons!18198) rules!1846)) b!1648858))

(assert (= b!1648853 b!1648845))

(assert (= b!1648852 b!1648853))

(assert (= b!1648841 b!1648852))

(assert (= (and start!158486 ((_ is Cons!18197) tokens!457)) b!1648841))

(declare-fun m!1996575 () Bool)

(assert (=> b!1648850 m!1996575))

(declare-fun m!1996577 () Bool)

(assert (=> b!1648850 m!1996577))

(declare-fun m!1996579 () Bool)

(assert (=> b!1648850 m!1996579))

(declare-fun m!1996581 () Bool)

(assert (=> b!1648850 m!1996581))

(declare-fun m!1996583 () Bool)

(assert (=> b!1648850 m!1996583))

(declare-fun m!1996585 () Bool)

(assert (=> b!1648850 m!1996585))

(declare-fun m!1996587 () Bool)

(assert (=> b!1648861 m!1996587))

(declare-fun m!1996589 () Bool)

(assert (=> b!1648849 m!1996589))

(declare-fun m!1996591 () Bool)

(assert (=> b!1648849 m!1996591))

(declare-fun m!1996593 () Bool)

(assert (=> b!1648849 m!1996593))

(declare-fun m!1996595 () Bool)

(assert (=> b!1648849 m!1996595))

(declare-fun m!1996597 () Bool)

(assert (=> b!1648841 m!1996597))

(declare-fun m!1996599 () Bool)

(assert (=> b!1648859 m!1996599))

(declare-fun m!1996601 () Bool)

(assert (=> b!1648851 m!1996601))

(declare-fun m!1996603 () Bool)

(assert (=> b!1648851 m!1996603))

(declare-fun m!1996605 () Bool)

(assert (=> b!1648851 m!1996605))

(declare-fun m!1996607 () Bool)

(assert (=> b!1648851 m!1996607))

(assert (=> b!1648851 m!1996603))

(declare-fun m!1996609 () Bool)

(assert (=> b!1648851 m!1996609))

(declare-fun m!1996611 () Bool)

(assert (=> b!1648851 m!1996611))

(declare-fun m!1996613 () Bool)

(assert (=> b!1648851 m!1996613))

(declare-fun m!1996615 () Bool)

(assert (=> b!1648851 m!1996615))

(declare-fun m!1996617 () Bool)

(assert (=> b!1648851 m!1996617))

(declare-fun m!1996619 () Bool)

(assert (=> b!1648851 m!1996619))

(declare-fun m!1996621 () Bool)

(assert (=> b!1648843 m!1996621))

(assert (=> b!1648843 m!1996621))

(declare-fun m!1996623 () Bool)

(assert (=> b!1648843 m!1996623))

(assert (=> b!1648843 m!1996623))

(declare-fun m!1996625 () Bool)

(assert (=> b!1648843 m!1996625))

(declare-fun m!1996627 () Bool)

(assert (=> b!1648856 m!1996627))

(declare-fun m!1996629 () Bool)

(assert (=> b!1648847 m!1996629))

(declare-fun m!1996631 () Bool)

(assert (=> b!1648847 m!1996631))

(declare-fun m!1996633 () Bool)

(assert (=> b!1648847 m!1996633))

(declare-fun m!1996635 () Bool)

(assert (=> b!1648847 m!1996635))

(declare-fun m!1996637 () Bool)

(assert (=> b!1648847 m!1996637))

(assert (=> b!1648847 m!1996631))

(declare-fun m!1996639 () Bool)

(assert (=> b!1648847 m!1996639))

(assert (=> b!1648847 m!1996635))

(assert (=> b!1648847 m!1996639))

(declare-fun m!1996641 () Bool)

(assert (=> b!1648848 m!1996641))

(declare-fun m!1996643 () Bool)

(assert (=> b!1648848 m!1996643))

(declare-fun m!1996645 () Bool)

(assert (=> b!1648848 m!1996645))

(declare-fun m!1996647 () Bool)

(assert (=> b!1648848 m!1996647))

(declare-fun m!1996649 () Bool)

(assert (=> b!1648848 m!1996649))

(assert (=> b!1648848 m!1996645))

(assert (=> b!1648848 m!1996647))

(declare-fun m!1996651 () Bool)

(assert (=> b!1648844 m!1996651))

(declare-fun m!1996653 () Bool)

(assert (=> b!1648855 m!1996653))

(declare-fun m!1996655 () Bool)

(assert (=> b!1648857 m!1996655))

(assert (=> b!1648857 m!1996655))

(declare-fun m!1996657 () Bool)

(assert (=> b!1648857 m!1996657))

(declare-fun m!1996659 () Bool)

(assert (=> b!1648857 m!1996659))

(declare-fun m!1996661 () Bool)

(assert (=> b!1648862 m!1996661))

(declare-fun m!1996663 () Bool)

(assert (=> b!1648853 m!1996663))

(declare-fun m!1996665 () Bool)

(assert (=> b!1648853 m!1996665))

(declare-fun m!1996667 () Bool)

(assert (=> b!1648860 m!1996667))

(declare-fun m!1996669 () Bool)

(assert (=> b!1648860 m!1996669))

(declare-fun m!1996671 () Bool)

(assert (=> b!1648852 m!1996671))

(declare-fun m!1996673 () Bool)

(assert (=> b!1648846 m!1996673))

(declare-fun m!1996675 () Bool)

(assert (=> b!1648846 m!1996675))

(check-sat (not b_next!45511) (not b!1648850) (not b!1648860) (not b!1648843) (not b_next!45513) (not b!1648861) (not b!1648846) b_and!117093 (not b!1648853) (not b!1648857) (not b!1648855) (not b_next!45515) b_and!117099 (not b!1648856) (not b_next!45517) (not b!1648862) (not b!1648844) (not b!1648859) (not b!1648848) (not b!1648841) b_and!117097 (not b!1648852) (not b!1648851) (not b!1648847) (not b!1648849) (not b!1648858) b_and!117095)
(check-sat (not b_next!45517) (not b_next!45511) (not b_next!45513) b_and!117093 b_and!117097 (not b_next!45515) b_and!117099 b_and!117095)
(get-model)

(declare-fun d!497023 () Bool)

(declare-fun e!1057447 () Bool)

(assert (=> d!497023 e!1057447))

(declare-fun res!738894 () Bool)

(assert (=> d!497023 (=> (not res!738894) (not e!1057447))))

(declare-fun lt!610920 () BalanceConc!12076)

(assert (=> d!497023 (= res!738894 (= (list!7233 lt!610920) (Cons!18196 (apply!4786 (charsOf!1858 (h!23598 (t!150750 tokens!457))) 0) Nil!18196)))))

(declare-fun singleton!730 (C!9248) BalanceConc!12076)

(assert (=> d!497023 (= lt!610920 (singleton!730 (apply!4786 (charsOf!1858 (h!23598 (t!150750 tokens!457))) 0)))))

(assert (=> d!497023 (= (singletonSeq!1690 (apply!4786 (charsOf!1858 (h!23598 (t!150750 tokens!457))) 0)) lt!610920)))

(declare-fun b!1648865 () Bool)

(declare-fun isBalanced!1856 (Conc!6066) Bool)

(assert (=> b!1648865 (= e!1057447 (isBalanced!1856 (c!268129 lt!610920)))))

(assert (= (and d!497023 res!738894) b!1648865))

(declare-fun m!1996683 () Bool)

(assert (=> d!497023 m!1996683))

(assert (=> d!497023 m!1996635))

(declare-fun m!1996685 () Bool)

(assert (=> d!497023 m!1996685))

(declare-fun m!1996687 () Bool)

(assert (=> b!1648865 m!1996687))

(assert (=> b!1648847 d!497023))

(declare-fun d!497025 () Bool)

(declare-fun e!1057459 () Bool)

(assert (=> d!497025 e!1057459))

(declare-fun res!738914 () Bool)

(assert (=> d!497025 (=> (not res!738914) (not e!1057459))))

(declare-fun appendAssocInst!460 (Conc!6066 Conc!6066) Bool)

(assert (=> d!497025 (= res!738914 (appendAssocInst!460 (c!268129 lt!610899) (c!268129 lt!610896)))))

(declare-fun lt!610926 () BalanceConc!12076)

(declare-fun ++!4917 (Conc!6066 Conc!6066) Conc!6066)

(assert (=> d!497025 (= lt!610926 (BalanceConc!12077 (++!4917 (c!268129 lt!610899) (c!268129 lt!610896))))))

(assert (=> d!497025 (= (++!4916 lt!610899 lt!610896) lt!610926)))

(declare-fun b!1648892 () Bool)

(assert (=> b!1648892 (= e!1057459 (= (list!7233 lt!610926) (++!4915 (list!7233 lt!610899) (list!7233 lt!610896))))))

(declare-fun b!1648889 () Bool)

(declare-fun res!738913 () Bool)

(assert (=> b!1648889 (=> (not res!738913) (not e!1057459))))

(assert (=> b!1648889 (= res!738913 (isBalanced!1856 (++!4917 (c!268129 lt!610899) (c!268129 lt!610896))))))

(declare-fun b!1648891 () Bool)

(declare-fun res!738915 () Bool)

(assert (=> b!1648891 (=> (not res!738915) (not e!1057459))))

(declare-fun height!938 (Conc!6066) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1648891 (= res!738915 (>= (height!938 (++!4917 (c!268129 lt!610899) (c!268129 lt!610896))) (max!0 (height!938 (c!268129 lt!610899)) (height!938 (c!268129 lt!610896)))))))

(declare-fun b!1648890 () Bool)

(declare-fun res!738912 () Bool)

(assert (=> b!1648890 (=> (not res!738912) (not e!1057459))))

(assert (=> b!1648890 (= res!738912 (<= (height!938 (++!4917 (c!268129 lt!610899) (c!268129 lt!610896))) (+ (max!0 (height!938 (c!268129 lt!610899)) (height!938 (c!268129 lt!610896))) 1)))))

(assert (= (and d!497025 res!738914) b!1648889))

(assert (= (and b!1648889 res!738913) b!1648890))

(assert (= (and b!1648890 res!738912) b!1648891))

(assert (= (and b!1648891 res!738915) b!1648892))

(declare-fun m!1996709 () Bool)

(assert (=> d!497025 m!1996709))

(declare-fun m!1996711 () Bool)

(assert (=> d!497025 m!1996711))

(declare-fun m!1996713 () Bool)

(assert (=> b!1648890 m!1996713))

(assert (=> b!1648890 m!1996711))

(assert (=> b!1648890 m!1996711))

(declare-fun m!1996715 () Bool)

(assert (=> b!1648890 m!1996715))

(declare-fun m!1996717 () Bool)

(assert (=> b!1648890 m!1996717))

(assert (=> b!1648890 m!1996713))

(assert (=> b!1648890 m!1996717))

(declare-fun m!1996719 () Bool)

(assert (=> b!1648890 m!1996719))

(assert (=> b!1648891 m!1996713))

(assert (=> b!1648891 m!1996711))

(assert (=> b!1648891 m!1996711))

(assert (=> b!1648891 m!1996715))

(assert (=> b!1648891 m!1996717))

(assert (=> b!1648891 m!1996713))

(assert (=> b!1648891 m!1996717))

(assert (=> b!1648891 m!1996719))

(assert (=> b!1648889 m!1996711))

(assert (=> b!1648889 m!1996711))

(declare-fun m!1996721 () Bool)

(assert (=> b!1648889 m!1996721))

(declare-fun m!1996723 () Bool)

(assert (=> b!1648892 m!1996723))

(assert (=> b!1648892 m!1996615))

(assert (=> b!1648892 m!1996621))

(assert (=> b!1648892 m!1996615))

(assert (=> b!1648892 m!1996621))

(declare-fun m!1996725 () Bool)

(assert (=> b!1648892 m!1996725))

(assert (=> b!1648847 d!497025))

(declare-fun d!497031 () Bool)

(declare-fun lt!610929 () C!9248)

(declare-fun apply!4790 (List!18266 Int) C!9248)

(assert (=> d!497031 (= lt!610929 (apply!4790 (list!7233 (charsOf!1858 (h!23598 (t!150750 tokens!457)))) 0))))

(declare-fun apply!4791 (Conc!6066 Int) C!9248)

(assert (=> d!497031 (= lt!610929 (apply!4791 (c!268129 (charsOf!1858 (h!23598 (t!150750 tokens!457)))) 0))))

(declare-fun e!1057462 () Bool)

(assert (=> d!497031 e!1057462))

(declare-fun res!738918 () Bool)

(assert (=> d!497031 (=> (not res!738918) (not e!1057462))))

(assert (=> d!497031 (= res!738918 (<= 0 0))))

(assert (=> d!497031 (= (apply!4786 (charsOf!1858 (h!23598 (t!150750 tokens!457))) 0) lt!610929)))

(declare-fun b!1648895 () Bool)

(declare-fun size!14494 (BalanceConc!12076) Int)

(assert (=> b!1648895 (= e!1057462 (< 0 (size!14494 (charsOf!1858 (h!23598 (t!150750 tokens!457))))))))

(assert (= (and d!497031 res!738918) b!1648895))

(assert (=> d!497031 m!1996639))

(declare-fun m!1996727 () Bool)

(assert (=> d!497031 m!1996727))

(assert (=> d!497031 m!1996727))

(declare-fun m!1996729 () Bool)

(assert (=> d!497031 m!1996729))

(declare-fun m!1996731 () Bool)

(assert (=> d!497031 m!1996731))

(assert (=> b!1648895 m!1996639))

(declare-fun m!1996733 () Bool)

(assert (=> b!1648895 m!1996733))

(assert (=> b!1648847 d!497031))

(declare-fun d!497033 () Bool)

(declare-fun lt!610971 () Bool)

(assert (=> d!497033 (= lt!610971 (prefixMatch!454 lt!610892 (list!7233 (++!4916 lt!610899 lt!610896))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!18270 0))(
  ( (Nil!18200) (Cons!18200 (h!23601 Regex!4537) (t!150795 List!18270)) )
))
(declare-datatypes ((Context!1784 0))(
  ( (Context!1785 (exprs!1392 List!18270)) )
))
(declare-fun prefixMatchZipperSequence!618 ((InoxSet Context!1784) BalanceConc!12076 Int) Bool)

(declare-fun focus!198 (Regex!4537) (InoxSet Context!1784))

(assert (=> d!497033 (= lt!610971 (prefixMatchZipperSequence!618 (focus!198 lt!610892) (++!4916 lt!610899 lt!610896) 0))))

(declare-fun lt!610977 () Unit!30271)

(declare-fun lt!610976 () Unit!30271)

(assert (=> d!497033 (= lt!610977 lt!610976)))

(declare-fun lt!610979 () List!18266)

(declare-fun lt!610974 () (InoxSet Context!1784))

(declare-fun prefixMatchZipper!177 ((InoxSet Context!1784) List!18266) Bool)

(assert (=> d!497033 (= (prefixMatch!454 lt!610892 lt!610979) (prefixMatchZipper!177 lt!610974 lt!610979))))

(declare-datatypes ((List!18271 0))(
  ( (Nil!18201) (Cons!18201 (h!23602 Context!1784) (t!150796 List!18271)) )
))
(declare-fun lt!610978 () List!18271)

(declare-fun prefixMatchZipperRegexEquiv!177 ((InoxSet Context!1784) List!18271 Regex!4537 List!18266) Unit!30271)

(assert (=> d!497033 (= lt!610976 (prefixMatchZipperRegexEquiv!177 lt!610974 lt!610978 lt!610892 lt!610979))))

(assert (=> d!497033 (= lt!610979 (list!7233 (++!4916 lt!610899 lt!610896)))))

(declare-fun toList!938 ((InoxSet Context!1784)) List!18271)

(assert (=> d!497033 (= lt!610978 (toList!938 (focus!198 lt!610892)))))

(assert (=> d!497033 (= lt!610974 (focus!198 lt!610892))))

(declare-fun lt!610980 () Unit!30271)

(declare-fun lt!610972 () Unit!30271)

(assert (=> d!497033 (= lt!610980 lt!610972)))

(declare-fun lt!610975 () Int)

(declare-fun lt!610973 () (InoxSet Context!1784))

(declare-fun dropList!668 (BalanceConc!12076 Int) List!18266)

(assert (=> d!497033 (= (prefixMatchZipper!177 lt!610973 (dropList!668 (++!4916 lt!610899 lt!610896) lt!610975)) (prefixMatchZipperSequence!618 lt!610973 (++!4916 lt!610899 lt!610896) lt!610975))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!177 ((InoxSet Context!1784) BalanceConc!12076 Int) Unit!30271)

(assert (=> d!497033 (= lt!610972 (lemmaprefixMatchZipperSequenceEquivalent!177 lt!610973 (++!4916 lt!610899 lt!610896) lt!610975))))

(assert (=> d!497033 (= lt!610975 0)))

(assert (=> d!497033 (= lt!610973 (focus!198 lt!610892))))

(declare-fun validRegex!1805 (Regex!4537) Bool)

(assert (=> d!497033 (validRegex!1805 lt!610892)))

(assert (=> d!497033 (= (prefixMatchZipperSequence!617 lt!610892 (++!4916 lt!610899 lt!610896)) lt!610971)))

(declare-fun bs!396347 () Bool)

(assert (= bs!396347 d!497033))

(declare-fun m!1996751 () Bool)

(assert (=> bs!396347 m!1996751))

(declare-fun m!1996753 () Bool)

(assert (=> bs!396347 m!1996753))

(assert (=> bs!396347 m!1996631))

(declare-fun m!1996755 () Bool)

(assert (=> bs!396347 m!1996755))

(declare-fun m!1996757 () Bool)

(assert (=> bs!396347 m!1996757))

(declare-fun m!1996759 () Bool)

(assert (=> bs!396347 m!1996759))

(assert (=> bs!396347 m!1996631))

(declare-fun m!1996761 () Bool)

(assert (=> bs!396347 m!1996761))

(assert (=> bs!396347 m!1996757))

(declare-fun m!1996763 () Bool)

(assert (=> bs!396347 m!1996763))

(assert (=> bs!396347 m!1996631))

(declare-fun m!1996765 () Bool)

(assert (=> bs!396347 m!1996765))

(assert (=> bs!396347 m!1996755))

(declare-fun m!1996767 () Bool)

(assert (=> bs!396347 m!1996767))

(assert (=> bs!396347 m!1996757))

(assert (=> bs!396347 m!1996631))

(declare-fun m!1996769 () Bool)

(assert (=> bs!396347 m!1996769))

(assert (=> bs!396347 m!1996631))

(declare-fun m!1996771 () Bool)

(assert (=> bs!396347 m!1996771))

(declare-fun m!1996773 () Bool)

(assert (=> bs!396347 m!1996773))

(assert (=> bs!396347 m!1996765))

(declare-fun m!1996775 () Bool)

(assert (=> bs!396347 m!1996775))

(assert (=> b!1648847 d!497033))

(declare-fun d!497041 () Bool)

(declare-fun lt!610983 () Unit!30271)

(declare-fun lemma!263 (List!18268 LexerInterface!2838 List!18268) Unit!30271)

(assert (=> d!497041 (= lt!610983 (lemma!263 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67643 () Int)

(declare-fun generalisedUnion!271 (List!18270) Regex!4537)

(declare-fun map!3747 (List!18268 Int) List!18270)

(assert (=> d!497041 (= (rulesRegex!593 thiss!17113 rules!1846) (generalisedUnion!271 (map!3747 rules!1846 lambda!67643)))))

(declare-fun bs!396348 () Bool)

(assert (= bs!396348 d!497041))

(declare-fun m!1996777 () Bool)

(assert (=> bs!396348 m!1996777))

(declare-fun m!1996779 () Bool)

(assert (=> bs!396348 m!1996779))

(assert (=> bs!396348 m!1996779))

(declare-fun m!1996781 () Bool)

(assert (=> bs!396348 m!1996781))

(assert (=> b!1648847 d!497041))

(declare-fun d!497043 () Bool)

(declare-fun lt!610986 () BalanceConc!12076)

(assert (=> d!497043 (= (list!7233 lt!610986) (originalCharacters!4023 (h!23598 (t!150750 tokens!457))))))

(declare-fun dynLambda!8154 (Int TokenValue!3299) BalanceConc!12076)

(assert (=> d!497043 (= lt!610986 (dynLambda!8154 (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457))))) (value!101129 (h!23598 (t!150750 tokens!457)))))))

(assert (=> d!497043 (= (charsOf!1858 (h!23598 (t!150750 tokens!457))) lt!610986)))

(declare-fun b_lambda!51829 () Bool)

(assert (=> (not b_lambda!51829) (not d!497043)))

(declare-fun tb!94447 () Bool)

(declare-fun t!150754 () Bool)

(assert (=> (and b!1648854 (= (toChars!4515 (transformation!3209 (h!23599 rules!1846))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457)))))) t!150754) tb!94447))

(declare-fun b!1648909 () Bool)

(declare-fun e!1057474 () Bool)

(declare-fun tp!477535 () Bool)

(declare-fun inv!23562 (Conc!6066) Bool)

(assert (=> b!1648909 (= e!1057474 (and (inv!23562 (c!268129 (dynLambda!8154 (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457))))) (value!101129 (h!23598 (t!150750 tokens!457)))))) tp!477535))))

(declare-fun result!114098 () Bool)

(declare-fun inv!23563 (BalanceConc!12076) Bool)

(assert (=> tb!94447 (= result!114098 (and (inv!23563 (dynLambda!8154 (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457))))) (value!101129 (h!23598 (t!150750 tokens!457))))) e!1057474))))

(assert (= tb!94447 b!1648909))

(declare-fun m!1996783 () Bool)

(assert (=> b!1648909 m!1996783))

(declare-fun m!1996785 () Bool)

(assert (=> tb!94447 m!1996785))

(assert (=> d!497043 t!150754))

(declare-fun b_and!117101 () Bool)

(assert (= b_and!117095 (and (=> t!150754 result!114098) b_and!117101)))

(declare-fun t!150756 () Bool)

(declare-fun tb!94449 () Bool)

(assert (=> (and b!1648845 (= (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457)))))) t!150756) tb!94449))

(declare-fun result!114102 () Bool)

(assert (= result!114102 result!114098))

(assert (=> d!497043 t!150756))

(declare-fun b_and!117103 () Bool)

(assert (= b_and!117099 (and (=> t!150756 result!114102) b_and!117103)))

(declare-fun m!1996787 () Bool)

(assert (=> d!497043 m!1996787))

(declare-fun m!1996789 () Bool)

(assert (=> d!497043 m!1996789))

(assert (=> b!1648847 d!497043))

(declare-fun d!497045 () Bool)

(assert (=> d!497045 (= (inv!23555 (tag!3489 (h!23599 rules!1846))) (= (mod (str.len (value!101128 (tag!3489 (h!23599 rules!1846)))) 2) 0))))

(assert (=> b!1648846 d!497045))

(declare-fun d!497047 () Bool)

(declare-fun res!738930 () Bool)

(declare-fun e!1057477 () Bool)

(assert (=> d!497047 (=> (not res!738930) (not e!1057477))))

(declare-fun semiInverseModEq!1239 (Int Int) Bool)

(assert (=> d!497047 (= res!738930 (semiInverseModEq!1239 (toChars!4515 (transformation!3209 (h!23599 rules!1846))) (toValue!4656 (transformation!3209 (h!23599 rules!1846)))))))

(assert (=> d!497047 (= (inv!23559 (transformation!3209 (h!23599 rules!1846))) e!1057477)))

(declare-fun b!1648912 () Bool)

(declare-fun equivClasses!1180 (Int Int) Bool)

(assert (=> b!1648912 (= e!1057477 (equivClasses!1180 (toChars!4515 (transformation!3209 (h!23599 rules!1846))) (toValue!4656 (transformation!3209 (h!23599 rules!1846)))))))

(assert (= (and d!497047 res!738930) b!1648912))

(declare-fun m!1996791 () Bool)

(assert (=> d!497047 m!1996791))

(declare-fun m!1996793 () Bool)

(assert (=> b!1648912 m!1996793))

(assert (=> b!1648846 d!497047))

(declare-fun d!497049 () Bool)

(declare-fun lt!610989 () Bool)

(declare-fun isEmpty!11231 (List!18267) Bool)

(assert (=> d!497049 (= lt!610989 (isEmpty!11231 (list!7234 (_1!10336 (lex!1322 thiss!17113 rules!1846 (seqFromList!2158 lt!610905))))))))

(declare-fun isEmpty!11232 (Conc!6067) Bool)

(assert (=> d!497049 (= lt!610989 (isEmpty!11232 (c!268131 (_1!10336 (lex!1322 thiss!17113 rules!1846 (seqFromList!2158 lt!610905))))))))

(assert (=> d!497049 (= (isEmpty!11224 (_1!10336 (lex!1322 thiss!17113 rules!1846 (seqFromList!2158 lt!610905)))) lt!610989)))

(declare-fun bs!396349 () Bool)

(assert (= bs!396349 d!497049))

(declare-fun m!1996795 () Bool)

(assert (=> bs!396349 m!1996795))

(assert (=> bs!396349 m!1996795))

(declare-fun m!1996797 () Bool)

(assert (=> bs!396349 m!1996797))

(declare-fun m!1996799 () Bool)

(assert (=> bs!396349 m!1996799))

(assert (=> b!1648857 d!497049))

(declare-fun d!497051 () Bool)

(declare-fun e!1057486 () Bool)

(assert (=> d!497051 e!1057486))

(declare-fun res!738937 () Bool)

(assert (=> d!497051 (=> (not res!738937) (not e!1057486))))

(declare-fun e!1057485 () Bool)

(assert (=> d!497051 (= res!738937 e!1057485)))

(declare-fun c!268140 () Bool)

(declare-fun lt!610992 () tuple2!17868)

(declare-fun size!14495 (BalanceConc!12078) Int)

(assert (=> d!497051 (= c!268140 (> (size!14495 (_1!10336 lt!610992)) 0))))

(declare-fun lexTailRecV2!592 (LexerInterface!2838 List!18268 BalanceConc!12076 BalanceConc!12076 BalanceConc!12076 BalanceConc!12078) tuple2!17868)

(assert (=> d!497051 (= lt!610992 (lexTailRecV2!592 thiss!17113 rules!1846 (seqFromList!2158 lt!610905) (BalanceConc!12077 Empty!6066) (seqFromList!2158 lt!610905) (BalanceConc!12079 Empty!6067)))))

(assert (=> d!497051 (= (lex!1322 thiss!17113 rules!1846 (seqFromList!2158 lt!610905)) lt!610992)))

(declare-fun b!1648923 () Bool)

(declare-fun e!1057484 () Bool)

(assert (=> b!1648923 (= e!1057484 (not (isEmpty!11224 (_1!10336 lt!610992))))))

(declare-fun b!1648924 () Bool)

(assert (=> b!1648924 (= e!1057485 e!1057484)))

(declare-fun res!738938 () Bool)

(assert (=> b!1648924 (= res!738938 (< (size!14494 (_2!10336 lt!610992)) (size!14494 (seqFromList!2158 lt!610905))))))

(assert (=> b!1648924 (=> (not res!738938) (not e!1057484))))

(declare-fun b!1648925 () Bool)

(declare-fun res!738939 () Bool)

(assert (=> b!1648925 (=> (not res!738939) (not e!1057486))))

(declare-datatypes ((tuple2!17874 0))(
  ( (tuple2!17875 (_1!10339 List!18267) (_2!10339 List!18266)) )
))
(declare-fun lexList!869 (LexerInterface!2838 List!18268 List!18266) tuple2!17874)

(assert (=> b!1648925 (= res!738939 (= (list!7234 (_1!10336 lt!610992)) (_1!10339 (lexList!869 thiss!17113 rules!1846 (list!7233 (seqFromList!2158 lt!610905))))))))

(declare-fun b!1648926 () Bool)

(assert (=> b!1648926 (= e!1057486 (= (list!7233 (_2!10336 lt!610992)) (_2!10339 (lexList!869 thiss!17113 rules!1846 (list!7233 (seqFromList!2158 lt!610905))))))))

(declare-fun b!1648927 () Bool)

(assert (=> b!1648927 (= e!1057485 (= (_2!10336 lt!610992) (seqFromList!2158 lt!610905)))))

(assert (= (and d!497051 c!268140) b!1648924))

(assert (= (and d!497051 (not c!268140)) b!1648927))

(assert (= (and b!1648924 res!738938) b!1648923))

(assert (= (and d!497051 res!738937) b!1648925))

(assert (= (and b!1648925 res!738939) b!1648926))

(declare-fun m!1996801 () Bool)

(assert (=> b!1648925 m!1996801))

(assert (=> b!1648925 m!1996655))

(declare-fun m!1996803 () Bool)

(assert (=> b!1648925 m!1996803))

(assert (=> b!1648925 m!1996803))

(declare-fun m!1996805 () Bool)

(assert (=> b!1648925 m!1996805))

(declare-fun m!1996807 () Bool)

(assert (=> b!1648926 m!1996807))

(assert (=> b!1648926 m!1996655))

(assert (=> b!1648926 m!1996803))

(assert (=> b!1648926 m!1996803))

(assert (=> b!1648926 m!1996805))

(declare-fun m!1996809 () Bool)

(assert (=> d!497051 m!1996809))

(assert (=> d!497051 m!1996655))

(assert (=> d!497051 m!1996655))

(declare-fun m!1996811 () Bool)

(assert (=> d!497051 m!1996811))

(declare-fun m!1996813 () Bool)

(assert (=> b!1648923 m!1996813))

(declare-fun m!1996815 () Bool)

(assert (=> b!1648924 m!1996815))

(assert (=> b!1648924 m!1996655))

(declare-fun m!1996817 () Bool)

(assert (=> b!1648924 m!1996817))

(assert (=> b!1648857 d!497051))

(declare-fun d!497053 () Bool)

(declare-fun fromListB!962 (List!18266) BalanceConc!12076)

(assert (=> d!497053 (= (seqFromList!2158 lt!610905) (fromListB!962 lt!610905))))

(declare-fun bs!396350 () Bool)

(assert (= bs!396350 d!497053))

(declare-fun m!1996819 () Bool)

(assert (=> bs!396350 m!1996819))

(assert (=> b!1648857 d!497053))

(declare-fun d!497055 () Bool)

(declare-fun res!738944 () Bool)

(declare-fun e!1057491 () Bool)

(assert (=> d!497055 (=> res!738944 e!1057491)))

(assert (=> d!497055 (= res!738944 (or (not ((_ is Cons!18197) tokens!457)) (not ((_ is Cons!18197) (t!150750 tokens!457)))))))

(assert (=> d!497055 (= (tokensListTwoByTwoPredicateSeparableList!531 thiss!17113 tokens!457 rules!1846) e!1057491)))

(declare-fun b!1648932 () Bool)

(declare-fun e!1057492 () Bool)

(assert (=> b!1648932 (= e!1057491 e!1057492)))

(declare-fun res!738945 () Bool)

(assert (=> b!1648932 (=> (not res!738945) (not e!1057492))))

(assert (=> b!1648932 (= res!738945 (separableTokensPredicate!778 thiss!17113 (h!23598 tokens!457) (h!23598 (t!150750 tokens!457)) rules!1846))))

(declare-fun lt!611012 () Unit!30271)

(declare-fun Unit!30292 () Unit!30271)

(assert (=> b!1648932 (= lt!611012 Unit!30292)))

(assert (=> b!1648932 (> (size!14494 (charsOf!1858 (h!23598 (t!150750 tokens!457)))) 0)))

(declare-fun lt!611010 () Unit!30271)

(declare-fun Unit!30293 () Unit!30271)

(assert (=> b!1648932 (= lt!611010 Unit!30293)))

(assert (=> b!1648932 (rulesProduceIndividualToken!1486 thiss!17113 rules!1846 (h!23598 (t!150750 tokens!457)))))

(declare-fun lt!611007 () Unit!30271)

(declare-fun Unit!30294 () Unit!30271)

(assert (=> b!1648932 (= lt!611007 Unit!30294)))

(assert (=> b!1648932 (rulesProduceIndividualToken!1486 thiss!17113 rules!1846 (h!23598 tokens!457))))

(declare-fun lt!611009 () Unit!30271)

(declare-fun lt!611011 () Unit!30271)

(assert (=> b!1648932 (= lt!611009 lt!611011)))

(assert (=> b!1648932 (rulesProduceIndividualToken!1486 thiss!17113 rules!1846 (h!23598 (t!150750 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!604 (LexerInterface!2838 List!18268 List!18267 Token!5984) Unit!30271)

(assert (=> b!1648932 (= lt!611011 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!604 thiss!17113 rules!1846 tokens!457 (h!23598 (t!150750 tokens!457))))))

(declare-fun lt!611008 () Unit!30271)

(declare-fun lt!611013 () Unit!30271)

(assert (=> b!1648932 (= lt!611008 lt!611013)))

(assert (=> b!1648932 (rulesProduceIndividualToken!1486 thiss!17113 rules!1846 (h!23598 tokens!457))))

(assert (=> b!1648932 (= lt!611013 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!604 thiss!17113 rules!1846 tokens!457 (h!23598 tokens!457)))))

(declare-fun b!1648933 () Bool)

(assert (=> b!1648933 (= e!1057492 (tokensListTwoByTwoPredicateSeparableList!531 thiss!17113 (Cons!18197 (h!23598 (t!150750 tokens!457)) (t!150750 (t!150750 tokens!457))) rules!1846))))

(assert (= (and d!497055 (not res!738944)) b!1648932))

(assert (= (and b!1648932 res!738945) b!1648933))

(assert (=> b!1648932 m!1996639))

(declare-fun m!1996821 () Bool)

(assert (=> b!1648932 m!1996821))

(assert (=> b!1648932 m!1996639))

(assert (=> b!1648932 m!1996733))

(declare-fun m!1996823 () Bool)

(assert (=> b!1648932 m!1996823))

(assert (=> b!1648932 m!1996653))

(assert (=> b!1648932 m!1996661))

(declare-fun m!1996825 () Bool)

(assert (=> b!1648932 m!1996825))

(declare-fun m!1996827 () Bool)

(assert (=> b!1648933 m!1996827))

(assert (=> b!1648856 d!497055))

(declare-fun d!497057 () Bool)

(declare-fun isEmpty!11233 (Option!3452) Bool)

(assert (=> d!497057 (= (isDefined!2807 lt!610909) (not (isEmpty!11233 lt!610909)))))

(declare-fun bs!396351 () Bool)

(assert (= bs!396351 d!497057))

(declare-fun m!1996829 () Bool)

(assert (=> bs!396351 m!1996829))

(assert (=> b!1648860 d!497057))

(declare-fun b!1649010 () Bool)

(declare-fun res!738994 () Bool)

(declare-fun e!1057535 () Bool)

(assert (=> b!1649010 (=> (not res!738994) (not e!1057535))))

(declare-fun lt!611176 () Token!5984)

(declare-fun matchR!2030 (Regex!4537 List!18266) Bool)

(declare-datatypes ((Option!3454 0))(
  ( (None!3453) (Some!3453 (v!24622 Rule!6218)) )
))
(declare-fun get!5297 (Option!3454) Rule!6218)

(declare-fun getRuleFromTag!314 (LexerInterface!2838 List!18268 String!20827) Option!3454)

(assert (=> b!1649010 (= res!738994 (matchR!2030 (regex!3209 (get!5297 (getRuleFromTag!314 thiss!17113 rules!1846 (tag!3489 (rule!5067 lt!611176))))) (list!7233 (charsOf!1858 lt!611176))))))

(declare-fun d!497059 () Bool)

(assert (=> d!497059 (isDefined!2807 (maxPrefix!1400 thiss!17113 rules!1846 (++!4915 lt!610905 lt!610901)))))

(declare-fun lt!611179 () Unit!30271)

(declare-fun e!1057536 () Unit!30271)

(assert (=> d!497059 (= lt!611179 e!1057536)))

(declare-fun c!268156 () Bool)

(assert (=> d!497059 (= c!268156 (isEmpty!11233 (maxPrefix!1400 thiss!17113 rules!1846 (++!4915 lt!610905 lt!610901))))))

(declare-fun lt!611180 () Unit!30271)

(declare-fun lt!611189 () Unit!30271)

(assert (=> d!497059 (= lt!611180 lt!611189)))

(assert (=> d!497059 e!1057535))

(declare-fun res!738995 () Bool)

(assert (=> d!497059 (=> (not res!738995) (not e!1057535))))

(declare-fun isDefined!2809 (Option!3454) Bool)

(assert (=> d!497059 (= res!738995 (isDefined!2809 (getRuleFromTag!314 thiss!17113 rules!1846 (tag!3489 (rule!5067 lt!611176)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!314 (LexerInterface!2838 List!18268 List!18266 Token!5984) Unit!30271)

(assert (=> d!497059 (= lt!611189 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!314 thiss!17113 rules!1846 lt!610905 lt!611176))))

(declare-fun lt!611184 () Unit!30271)

(declare-fun lt!611190 () Unit!30271)

(assert (=> d!497059 (= lt!611184 lt!611190)))

(declare-fun lt!611186 () List!18266)

(assert (=> d!497059 (isPrefix!1467 lt!611186 (++!4915 lt!610905 lt!610901))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!200 (List!18266 List!18266 List!18266) Unit!30271)

(assert (=> d!497059 (= lt!611190 (lemmaPrefixStaysPrefixWhenAddingToSuffix!200 lt!611186 lt!610905 lt!610901))))

(assert (=> d!497059 (= lt!611186 (list!7233 (charsOf!1858 lt!611176)))))

(declare-fun lt!611177 () Unit!30271)

(declare-fun lt!611183 () Unit!30271)

(assert (=> d!497059 (= lt!611177 lt!611183)))

(declare-fun lt!611191 () List!18266)

(declare-fun lt!611182 () List!18266)

(assert (=> d!497059 (isPrefix!1467 lt!611191 (++!4915 lt!611191 lt!611182))))

(assert (=> d!497059 (= lt!611183 (lemmaConcatTwoListThenFirstIsPrefix!992 lt!611191 lt!611182))))

(declare-fun get!5298 (Option!3452) tuple2!17870)

(assert (=> d!497059 (= lt!611182 (_2!10337 (get!5298 (maxPrefix!1400 thiss!17113 rules!1846 lt!610905))))))

(assert (=> d!497059 (= lt!611191 (list!7233 (charsOf!1858 lt!611176)))))

(declare-fun head!3625 (List!18267) Token!5984)

(assert (=> d!497059 (= lt!611176 (head!3625 (list!7234 (_1!10336 (lex!1322 thiss!17113 rules!1846 (seqFromList!2158 lt!610905))))))))

(assert (=> d!497059 (not (isEmpty!11225 rules!1846))))

(assert (=> d!497059 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!406 thiss!17113 rules!1846 lt!610905 lt!610901) lt!611179)))

(declare-fun b!1649013 () Bool)

(declare-fun Unit!30295 () Unit!30271)

(assert (=> b!1649013 (= e!1057536 Unit!30295)))

(declare-fun b!1649011 () Bool)

(assert (=> b!1649011 (= e!1057535 (= (rule!5067 lt!611176) (get!5297 (getRuleFromTag!314 thiss!17113 rules!1846 (tag!3489 (rule!5067 lt!611176))))))))

(declare-fun b!1649012 () Bool)

(declare-fun Unit!30296 () Unit!30271)

(assert (=> b!1649012 (= e!1057536 Unit!30296)))

(declare-fun lt!611185 () List!18266)

(assert (=> b!1649012 (= lt!611185 (++!4915 lt!610905 lt!610901))))

(declare-fun lt!611188 () Unit!30271)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!208 (LexerInterface!2838 Rule!6218 List!18268 List!18266) Unit!30271)

(assert (=> b!1649012 (= lt!611188 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!208 thiss!17113 (rule!5067 lt!611176) rules!1846 lt!611185))))

(declare-fun maxPrefixOneRule!809 (LexerInterface!2838 Rule!6218 List!18266) Option!3452)

(assert (=> b!1649012 (isEmpty!11233 (maxPrefixOneRule!809 thiss!17113 (rule!5067 lt!611176) lt!611185))))

(declare-fun lt!611181 () Unit!30271)

(assert (=> b!1649012 (= lt!611181 lt!611188)))

(declare-fun lt!611187 () List!18266)

(assert (=> b!1649012 (= lt!611187 (list!7233 (charsOf!1858 lt!611176)))))

(declare-fun lt!611178 () Unit!30271)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!204 (LexerInterface!2838 Rule!6218 List!18266 List!18266) Unit!30271)

(assert (=> b!1649012 (= lt!611178 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!204 thiss!17113 (rule!5067 lt!611176) lt!611187 (++!4915 lt!610905 lt!610901)))))

(assert (=> b!1649012 (not (matchR!2030 (regex!3209 (rule!5067 lt!611176)) lt!611187))))

(declare-fun lt!611192 () Unit!30271)

(assert (=> b!1649012 (= lt!611192 lt!611178)))

(assert (=> b!1649012 false))

(assert (= (and d!497059 res!738995) b!1649010))

(assert (= (and b!1649010 res!738994) b!1649011))

(assert (= (and d!497059 c!268156) b!1649012))

(assert (= (and d!497059 (not c!268156)) b!1649013))

(declare-fun m!1997025 () Bool)

(assert (=> b!1649010 m!1997025))

(declare-fun m!1997027 () Bool)

(assert (=> b!1649010 m!1997027))

(declare-fun m!1997029 () Bool)

(assert (=> b!1649010 m!1997029))

(declare-fun m!1997031 () Bool)

(assert (=> b!1649010 m!1997031))

(assert (=> b!1649010 m!1997025))

(assert (=> b!1649010 m!1997029))

(assert (=> b!1649010 m!1997027))

(declare-fun m!1997033 () Bool)

(assert (=> b!1649010 m!1997033))

(assert (=> d!497059 m!1996655))

(assert (=> d!497059 m!1996657))

(assert (=> d!497059 m!1997025))

(declare-fun m!1997035 () Bool)

(assert (=> d!497059 m!1997035))

(declare-fun m!1997037 () Bool)

(assert (=> d!497059 m!1997037))

(assert (=> d!497059 m!1996619))

(declare-fun m!1997039 () Bool)

(assert (=> d!497059 m!1997039))

(declare-fun m!1997041 () Bool)

(assert (=> d!497059 m!1997041))

(declare-fun m!1997043 () Bool)

(assert (=> d!497059 m!1997043))

(declare-fun m!1997045 () Bool)

(assert (=> d!497059 m!1997045))

(declare-fun m!1997047 () Bool)

(assert (=> d!497059 m!1997047))

(assert (=> d!497059 m!1997025))

(assert (=> d!497059 m!1997027))

(declare-fun m!1997049 () Bool)

(assert (=> d!497059 m!1997049))

(declare-fun m!1997051 () Bool)

(assert (=> d!497059 m!1997051))

(declare-fun m!1997053 () Bool)

(assert (=> d!497059 m!1997053))

(assert (=> d!497059 m!1996619))

(assert (=> d!497059 m!1997045))

(assert (=> d!497059 m!1997029))

(assert (=> d!497059 m!1997029))

(declare-fun m!1997055 () Bool)

(assert (=> d!497059 m!1997055))

(assert (=> d!497059 m!1997035))

(assert (=> d!497059 m!1996795))

(assert (=> d!497059 m!1996619))

(assert (=> d!497059 m!1997049))

(assert (=> d!497059 m!1996587))

(assert (=> d!497059 m!1996655))

(assert (=> d!497059 m!1997049))

(declare-fun m!1997057 () Bool)

(assert (=> d!497059 m!1997057))

(assert (=> d!497059 m!1996795))

(declare-fun m!1997059 () Bool)

(assert (=> d!497059 m!1997059))

(assert (=> b!1649011 m!1997029))

(assert (=> b!1649011 m!1997029))

(assert (=> b!1649011 m!1997031))

(assert (=> b!1649012 m!1997025))

(assert (=> b!1649012 m!1997027))

(declare-fun m!1997061 () Bool)

(assert (=> b!1649012 m!1997061))

(declare-fun m!1997063 () Bool)

(assert (=> b!1649012 m!1997063))

(assert (=> b!1649012 m!1997025))

(declare-fun m!1997065 () Bool)

(assert (=> b!1649012 m!1997065))

(assert (=> b!1649012 m!1997063))

(declare-fun m!1997067 () Bool)

(assert (=> b!1649012 m!1997067))

(assert (=> b!1649012 m!1996619))

(assert (=> b!1649012 m!1996619))

(declare-fun m!1997069 () Bool)

(assert (=> b!1649012 m!1997069))

(assert (=> b!1648860 d!497059))

(declare-fun d!497085 () Bool)

(declare-fun list!7237 (Conc!6067) List!18267)

(assert (=> d!497085 (= (list!7234 (_1!10336 lt!610906)) (list!7237 (c!268131 (_1!10336 lt!610906))))))

(declare-fun bs!396356 () Bool)

(assert (= bs!396356 d!497085))

(declare-fun m!1997071 () Bool)

(assert (=> bs!396356 m!1997071))

(assert (=> b!1648849 d!497085))

(declare-fun d!497087 () Bool)

(declare-fun e!1057546 () Bool)

(assert (=> d!497087 e!1057546))

(declare-fun res!739003 () Bool)

(assert (=> d!497087 (=> (not res!739003) (not e!1057546))))

(assert (=> d!497087 (= res!739003 (= (list!7234 (_1!10336 (lex!1322 thiss!17113 rules!1846 (print!1369 thiss!17113 (seqFromList!2157 (t!150750 tokens!457)))))) (t!150750 tokens!457)))))

(declare-fun lt!611258 () Unit!30271)

(declare-fun e!1057547 () Unit!30271)

(assert (=> d!497087 (= lt!611258 e!1057547)))

(declare-fun c!268159 () Bool)

(assert (=> d!497087 (= c!268159 (or ((_ is Nil!18197) (t!150750 tokens!457)) ((_ is Nil!18197) (t!150750 (t!150750 tokens!457)))))))

(assert (=> d!497087 (not (isEmpty!11225 rules!1846))))

(assert (=> d!497087 (= (theoremInvertabilityWhenTokenListSeparable!281 thiss!17113 rules!1846 (t!150750 tokens!457)) lt!611258)))

(declare-fun b!1649025 () Bool)

(declare-fun Unit!30297 () Unit!30271)

(assert (=> b!1649025 (= e!1057547 Unit!30297)))

(declare-fun b!1649026 () Bool)

(declare-fun Unit!30298 () Unit!30271)

(assert (=> b!1649026 (= e!1057547 Unit!30298)))

(declare-fun lt!611252 () BalanceConc!12076)

(assert (=> b!1649026 (= lt!611252 (print!1369 thiss!17113 (seqFromList!2157 (t!150750 tokens!457))))))

(declare-fun lt!611266 () BalanceConc!12076)

(assert (=> b!1649026 (= lt!611266 (print!1369 thiss!17113 (seqFromList!2157 (t!150750 (t!150750 tokens!457)))))))

(declare-fun lt!611257 () tuple2!17868)

(assert (=> b!1649026 (= lt!611257 (lex!1322 thiss!17113 rules!1846 lt!611266))))

(declare-fun lt!611259 () List!18266)

(assert (=> b!1649026 (= lt!611259 (list!7233 (charsOf!1858 (h!23598 (t!150750 tokens!457)))))))

(declare-fun lt!611268 () List!18266)

(assert (=> b!1649026 (= lt!611268 (list!7233 lt!611266))))

(declare-fun lt!611261 () Unit!30271)

(assert (=> b!1649026 (= lt!611261 (lemmaConcatTwoListThenFirstIsPrefix!992 lt!611259 lt!611268))))

(assert (=> b!1649026 (isPrefix!1467 lt!611259 (++!4915 lt!611259 lt!611268))))

(declare-fun lt!611273 () Unit!30271)

(assert (=> b!1649026 (= lt!611273 lt!611261)))

(declare-fun lt!611276 () Unit!30271)

(assert (=> b!1649026 (= lt!611276 (theoremInvertabilityWhenTokenListSeparable!281 thiss!17113 rules!1846 (t!150750 (t!150750 tokens!457))))))

(declare-fun lt!611274 () Unit!30271)

(assert (=> b!1649026 (= lt!611274 (seqFromListBHdTlConstructive!284 (h!23598 (t!150750 (t!150750 tokens!457))) (t!150750 (t!150750 (t!150750 tokens!457))) (_1!10336 lt!611257)))))

(assert (=> b!1649026 (= (list!7234 (_1!10336 lt!611257)) (list!7234 (prepend!771 (seqFromList!2157 (t!150750 (t!150750 (t!150750 tokens!457)))) (h!23598 (t!150750 (t!150750 tokens!457))))))))

(declare-fun lt!611275 () Unit!30271)

(assert (=> b!1649026 (= lt!611275 lt!611274)))

(declare-fun lt!611272 () Option!3452)

(assert (=> b!1649026 (= lt!611272 (maxPrefix!1400 thiss!17113 rules!1846 (list!7233 lt!611252)))))

(assert (=> b!1649026 (= (print!1369 thiss!17113 (singletonSeq!1691 (h!23598 (t!150750 tokens!457)))) (printTailRec!889 thiss!17113 (singletonSeq!1691 (h!23598 (t!150750 tokens!457))) 0 (BalanceConc!12077 Empty!6066)))))

(declare-fun lt!611256 () Unit!30271)

(declare-fun Unit!30299 () Unit!30271)

(assert (=> b!1649026 (= lt!611256 Unit!30299)))

(declare-fun lt!611264 () Unit!30271)

(assert (=> b!1649026 (= lt!611264 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!406 thiss!17113 rules!1846 (list!7233 (charsOf!1858 (h!23598 (t!150750 tokens!457)))) (list!7233 lt!611266)))))

(assert (=> b!1649026 (= (list!7233 (charsOf!1858 (h!23598 (t!150750 tokens!457)))) (originalCharacters!4023 (h!23598 (t!150750 tokens!457))))))

(declare-fun lt!611253 () Unit!30271)

(declare-fun Unit!30300 () Unit!30271)

(assert (=> b!1649026 (= lt!611253 Unit!30300)))

(declare-fun head!3626 (List!18266) C!9248)

(assert (=> b!1649026 (= (list!7233 (singletonSeq!1690 (apply!4786 (charsOf!1858 (h!23598 (t!150750 (t!150750 tokens!457)))) 0))) (Cons!18196 (head!3626 (originalCharacters!4023 (h!23598 (t!150750 (t!150750 tokens!457))))) Nil!18196))))

(declare-fun lt!611271 () Unit!30271)

(declare-fun Unit!30301 () Unit!30271)

(assert (=> b!1649026 (= lt!611271 Unit!30301)))

(assert (=> b!1649026 (= (list!7233 (singletonSeq!1690 (apply!4786 (charsOf!1858 (h!23598 (t!150750 (t!150750 tokens!457)))) 0))) (Cons!18196 (head!3626 (list!7233 lt!611266)) Nil!18196))))

(declare-fun lt!611251 () Unit!30271)

(declare-fun Unit!30302 () Unit!30271)

(assert (=> b!1649026 (= lt!611251 Unit!30302)))

(declare-fun head!3627 (BalanceConc!12076) C!9248)

(assert (=> b!1649026 (= (list!7233 (singletonSeq!1690 (apply!4786 (charsOf!1858 (h!23598 (t!150750 (t!150750 tokens!457)))) 0))) (Cons!18196 (head!3627 lt!611266) Nil!18196))))

(declare-fun lt!611262 () Unit!30271)

(declare-fun Unit!30303 () Unit!30271)

(assert (=> b!1649026 (= lt!611262 Unit!30303)))

(assert (=> b!1649026 (isDefined!2807 (maxPrefix!1400 thiss!17113 rules!1846 (originalCharacters!4023 (h!23598 (t!150750 tokens!457)))))))

(declare-fun lt!611260 () Unit!30271)

(declare-fun Unit!30304 () Unit!30271)

(assert (=> b!1649026 (= lt!611260 Unit!30304)))

(assert (=> b!1649026 (isDefined!2807 (maxPrefix!1400 thiss!17113 rules!1846 (list!7233 (charsOf!1858 (h!23598 (t!150750 tokens!457))))))))

(declare-fun lt!611255 () Unit!30271)

(declare-fun Unit!30305 () Unit!30271)

(assert (=> b!1649026 (= lt!611255 Unit!30305)))

(declare-fun lt!611254 () Unit!30271)

(declare-fun Unit!30306 () Unit!30271)

(assert (=> b!1649026 (= lt!611254 Unit!30306)))

(assert (=> b!1649026 (= (_1!10337 (get!5298 (maxPrefix!1400 thiss!17113 rules!1846 (list!7233 (charsOf!1858 (h!23598 (t!150750 tokens!457))))))) (h!23598 (t!150750 tokens!457)))))

(declare-fun lt!611270 () Unit!30271)

(declare-fun Unit!30307 () Unit!30271)

(assert (=> b!1649026 (= lt!611270 Unit!30307)))

(declare-fun isEmpty!11234 (List!18266) Bool)

(assert (=> b!1649026 (isEmpty!11234 (_2!10337 (get!5298 (maxPrefix!1400 thiss!17113 rules!1846 (list!7233 (charsOf!1858 (h!23598 (t!150750 tokens!457))))))))))

(declare-fun lt!611263 () Unit!30271)

(declare-fun Unit!30308 () Unit!30271)

(assert (=> b!1649026 (= lt!611263 Unit!30308)))

(assert (=> b!1649026 (matchR!2030 (regex!3209 (rule!5067 (h!23598 (t!150750 tokens!457)))) (list!7233 (charsOf!1858 (h!23598 (t!150750 tokens!457)))))))

(declare-fun lt!611269 () Unit!30271)

(declare-fun Unit!30309 () Unit!30271)

(assert (=> b!1649026 (= lt!611269 Unit!30309)))

(assert (=> b!1649026 (= (rule!5067 (h!23598 (t!150750 tokens!457))) (rule!5067 (h!23598 (t!150750 tokens!457))))))

(declare-fun lt!611265 () Unit!30271)

(declare-fun Unit!30310 () Unit!30271)

(assert (=> b!1649026 (= lt!611265 Unit!30310)))

(declare-fun lt!611267 () Unit!30271)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!168 (LexerInterface!2838 List!18268 Token!5984 Rule!6218 List!18266) Unit!30271)

(assert (=> b!1649026 (= lt!611267 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!168 thiss!17113 rules!1846 (h!23598 (t!150750 tokens!457)) (rule!5067 (h!23598 (t!150750 tokens!457))) (list!7233 lt!611266)))))

(declare-fun b!1649027 () Bool)

(declare-fun isEmpty!11235 (BalanceConc!12076) Bool)

(assert (=> b!1649027 (= e!1057546 (isEmpty!11235 (_2!10336 (lex!1322 thiss!17113 rules!1846 (print!1369 thiss!17113 (seqFromList!2157 (t!150750 tokens!457)))))))))

(assert (= (and d!497087 c!268159) b!1649025))

(assert (= (and d!497087 (not c!268159)) b!1649026))

(assert (= (and d!497087 res!739003) b!1649027))

(assert (=> d!497087 m!1996601))

(declare-fun m!1997085 () Bool)

(assert (=> d!497087 m!1997085))

(declare-fun m!1997087 () Bool)

(assert (=> d!497087 m!1997087))

(assert (=> d!497087 m!1997085))

(declare-fun m!1997089 () Bool)

(assert (=> d!497087 m!1997089))

(assert (=> d!497087 m!1996587))

(assert (=> d!497087 m!1996601))

(assert (=> b!1649026 m!1996639))

(assert (=> b!1649026 m!1996727))

(declare-fun m!1997091 () Bool)

(assert (=> b!1649026 m!1997091))

(declare-fun m!1997093 () Bool)

(assert (=> b!1649026 m!1997093))

(declare-fun m!1997095 () Bool)

(assert (=> b!1649026 m!1997095))

(declare-fun m!1997097 () Bool)

(assert (=> b!1649026 m!1997097))

(declare-fun m!1997099 () Bool)

(assert (=> b!1649026 m!1997099))

(assert (=> b!1649026 m!1996727))

(assert (=> b!1649026 m!1997097))

(assert (=> b!1649026 m!1996727))

(declare-fun m!1997101 () Bool)

(assert (=> b!1649026 m!1997101))

(declare-fun m!1997103 () Bool)

(assert (=> b!1649026 m!1997103))

(declare-fun m!1997105 () Bool)

(assert (=> b!1649026 m!1997105))

(declare-fun m!1997107 () Bool)

(assert (=> b!1649026 m!1997107))

(declare-fun m!1997109 () Bool)

(assert (=> b!1649026 m!1997109))

(assert (=> b!1649026 m!1996645))

(declare-fun m!1997111 () Bool)

(assert (=> b!1649026 m!1997111))

(declare-fun m!1997113 () Bool)

(assert (=> b!1649026 m!1997113))

(declare-fun m!1997115 () Bool)

(assert (=> b!1649026 m!1997115))

(declare-fun m!1997117 () Bool)

(assert (=> b!1649026 m!1997117))

(assert (=> b!1649026 m!1997091))

(assert (=> b!1649026 m!1997109))

(assert (=> b!1649026 m!1997111))

(declare-fun m!1997119 () Bool)

(assert (=> b!1649026 m!1997119))

(assert (=> b!1649026 m!1996645))

(declare-fun m!1997121 () Bool)

(assert (=> b!1649026 m!1997121))

(assert (=> b!1649026 m!1996601))

(declare-fun m!1997123 () Bool)

(assert (=> b!1649026 m!1997123))

(declare-fun m!1997125 () Bool)

(assert (=> b!1649026 m!1997125))

(assert (=> b!1649026 m!1996601))

(assert (=> b!1649026 m!1997085))

(assert (=> b!1649026 m!1997103))

(declare-fun m!1997127 () Bool)

(assert (=> b!1649026 m!1997127))

(declare-fun m!1997129 () Bool)

(assert (=> b!1649026 m!1997129))

(assert (=> b!1649026 m!1997097))

(declare-fun m!1997131 () Bool)

(assert (=> b!1649026 m!1997131))

(assert (=> b!1649026 m!1996727))

(assert (=> b!1649026 m!1997103))

(declare-fun m!1997133 () Bool)

(assert (=> b!1649026 m!1997133))

(declare-fun m!1997135 () Bool)

(assert (=> b!1649026 m!1997135))

(assert (=> b!1649026 m!1997123))

(declare-fun m!1997137 () Bool)

(assert (=> b!1649026 m!1997137))

(declare-fun m!1997139 () Bool)

(assert (=> b!1649026 m!1997139))

(declare-fun m!1997141 () Bool)

(assert (=> b!1649026 m!1997141))

(assert (=> b!1649026 m!1997115))

(declare-fun m!1997143 () Bool)

(assert (=> b!1649026 m!1997143))

(declare-fun m!1997145 () Bool)

(assert (=> b!1649026 m!1997145))

(declare-fun m!1997147 () Bool)

(assert (=> b!1649026 m!1997147))

(assert (=> b!1649026 m!1997107))

(assert (=> b!1649026 m!1997095))

(assert (=> b!1649026 m!1997139))

(declare-fun m!1997149 () Bool)

(assert (=> b!1649026 m!1997149))

(declare-fun m!1997151 () Bool)

(assert (=> b!1649026 m!1997151))

(assert (=> b!1649026 m!1997145))

(assert (=> b!1649026 m!1996639))

(assert (=> b!1649026 m!1997103))

(declare-fun m!1997153 () Bool)

(assert (=> b!1649026 m!1997153))

(assert (=> b!1649026 m!1997123))

(declare-fun m!1997155 () Bool)

(assert (=> b!1649026 m!1997155))

(assert (=> b!1649027 m!1996601))

(assert (=> b!1649027 m!1996601))

(assert (=> b!1649027 m!1997085))

(assert (=> b!1649027 m!1997085))

(assert (=> b!1649027 m!1997089))

(declare-fun m!1997157 () Bool)

(assert (=> b!1649027 m!1997157))

(assert (=> b!1648849 d!497087))

(declare-fun b!1649038 () Bool)

(declare-fun e!1057556 () Bool)

(declare-fun tail!2439 (List!18266) List!18266)

(assert (=> b!1649038 (= e!1057556 (isPrefix!1467 (tail!2439 lt!610905) (tail!2439 lt!610900)))))

(declare-fun d!497095 () Bool)

(declare-fun e!1057554 () Bool)

(assert (=> d!497095 e!1057554))

(declare-fun res!739013 () Bool)

(assert (=> d!497095 (=> res!739013 e!1057554)))

(declare-fun lt!611279 () Bool)

(assert (=> d!497095 (= res!739013 (not lt!611279))))

(declare-fun e!1057555 () Bool)

(assert (=> d!497095 (= lt!611279 e!1057555)))

(declare-fun res!739014 () Bool)

(assert (=> d!497095 (=> res!739014 e!1057555)))

(assert (=> d!497095 (= res!739014 ((_ is Nil!18196) lt!610905))))

(assert (=> d!497095 (= (isPrefix!1467 lt!610905 lt!610900) lt!611279)))

(declare-fun b!1649036 () Bool)

(assert (=> b!1649036 (= e!1057555 e!1057556)))

(declare-fun res!739015 () Bool)

(assert (=> b!1649036 (=> (not res!739015) (not e!1057556))))

(assert (=> b!1649036 (= res!739015 (not ((_ is Nil!18196) lt!610900)))))

(declare-fun b!1649037 () Bool)

(declare-fun res!739012 () Bool)

(assert (=> b!1649037 (=> (not res!739012) (not e!1057556))))

(assert (=> b!1649037 (= res!739012 (= (head!3626 lt!610905) (head!3626 lt!610900)))))

(declare-fun b!1649039 () Bool)

(declare-fun size!14496 (List!18266) Int)

(assert (=> b!1649039 (= e!1057554 (>= (size!14496 lt!610900) (size!14496 lt!610905)))))

(assert (= (and d!497095 (not res!739014)) b!1649036))

(assert (= (and b!1649036 res!739015) b!1649037))

(assert (= (and b!1649037 res!739012) b!1649038))

(assert (= (and d!497095 (not res!739013)) b!1649039))

(declare-fun m!1997159 () Bool)

(assert (=> b!1649038 m!1997159))

(declare-fun m!1997161 () Bool)

(assert (=> b!1649038 m!1997161))

(assert (=> b!1649038 m!1997159))

(assert (=> b!1649038 m!1997161))

(declare-fun m!1997163 () Bool)

(assert (=> b!1649038 m!1997163))

(declare-fun m!1997165 () Bool)

(assert (=> b!1649037 m!1997165))

(declare-fun m!1997167 () Bool)

(assert (=> b!1649037 m!1997167))

(declare-fun m!1997169 () Bool)

(assert (=> b!1649039 m!1997169))

(declare-fun m!1997171 () Bool)

(assert (=> b!1649039 m!1997171))

(assert (=> b!1648849 d!497095))

(declare-fun d!497097 () Bool)

(assert (=> d!497097 (isPrefix!1467 lt!610905 (++!4915 lt!610905 lt!610901))))

(declare-fun lt!611282 () Unit!30271)

(declare-fun choose!9900 (List!18266 List!18266) Unit!30271)

(assert (=> d!497097 (= lt!611282 (choose!9900 lt!610905 lt!610901))))

(assert (=> d!497097 (= (lemmaConcatTwoListThenFirstIsPrefix!992 lt!610905 lt!610901) lt!611282)))

(declare-fun bs!396360 () Bool)

(assert (= bs!396360 d!497097))

(assert (=> bs!396360 m!1996619))

(assert (=> bs!396360 m!1996619))

(declare-fun m!1997173 () Bool)

(assert (=> bs!396360 m!1997173))

(declare-fun m!1997175 () Bool)

(assert (=> bs!396360 m!1997175))

(assert (=> b!1648849 d!497097))

(declare-fun d!497099 () Bool)

(declare-fun e!1057559 () Bool)

(assert (=> d!497099 e!1057559))

(declare-fun res!739018 () Bool)

(assert (=> d!497099 (=> (not res!739018) (not e!1057559))))

(declare-fun isBalanced!1858 (Conc!6067) Bool)

(declare-fun prepend!773 (Conc!6067 Token!5984) Conc!6067)

(assert (=> d!497099 (= res!739018 (isBalanced!1858 (prepend!773 (c!268131 (seqFromList!2157 (t!150750 (t!150750 tokens!457)))) (h!23598 (t!150750 tokens!457)))))))

(declare-fun lt!611285 () BalanceConc!12078)

(assert (=> d!497099 (= lt!611285 (BalanceConc!12079 (prepend!773 (c!268131 (seqFromList!2157 (t!150750 (t!150750 tokens!457)))) (h!23598 (t!150750 tokens!457)))))))

(assert (=> d!497099 (= (prepend!771 (seqFromList!2157 (t!150750 (t!150750 tokens!457))) (h!23598 (t!150750 tokens!457))) lt!611285)))

(declare-fun b!1649042 () Bool)

(assert (=> b!1649042 (= e!1057559 (= (list!7234 lt!611285) (Cons!18197 (h!23598 (t!150750 tokens!457)) (list!7234 (seqFromList!2157 (t!150750 (t!150750 tokens!457)))))))))

(assert (= (and d!497099 res!739018) b!1649042))

(declare-fun m!1997177 () Bool)

(assert (=> d!497099 m!1997177))

(assert (=> d!497099 m!1997177))

(declare-fun m!1997179 () Bool)

(assert (=> d!497099 m!1997179))

(declare-fun m!1997181 () Bool)

(assert (=> b!1649042 m!1997181))

(assert (=> b!1649042 m!1996645))

(declare-fun m!1997183 () Bool)

(assert (=> b!1649042 m!1997183))

(assert (=> b!1648848 d!497099))

(declare-fun d!497101 () Bool)

(assert (=> d!497101 (= (list!7234 (prepend!771 (seqFromList!2157 (t!150750 (t!150750 tokens!457))) (h!23598 (t!150750 tokens!457)))) (list!7237 (c!268131 (prepend!771 (seqFromList!2157 (t!150750 (t!150750 tokens!457))) (h!23598 (t!150750 tokens!457))))))))

(declare-fun bs!396361 () Bool)

(assert (= bs!396361 d!497101))

(declare-fun m!1997185 () Bool)

(assert (=> bs!396361 m!1997185))

(assert (=> b!1648848 d!497101))

(declare-fun d!497103 () Bool)

(declare-fun fromListB!963 (List!18267) BalanceConc!12078)

(assert (=> d!497103 (= (seqFromList!2157 (t!150750 (t!150750 tokens!457))) (fromListB!963 (t!150750 (t!150750 tokens!457))))))

(declare-fun bs!396362 () Bool)

(assert (= bs!396362 d!497103))

(declare-fun m!1997187 () Bool)

(assert (=> bs!396362 m!1997187))

(assert (=> b!1648848 d!497103))

(declare-fun d!497105 () Bool)

(assert (=> d!497105 (= (list!7234 lt!610894) (list!7237 (c!268131 lt!610894)))))

(declare-fun bs!396363 () Bool)

(assert (= bs!396363 d!497105))

(declare-fun m!1997189 () Bool)

(assert (=> bs!396363 m!1997189))

(assert (=> b!1648848 d!497105))

(declare-fun d!497107 () Bool)

(assert (=> d!497107 (= (list!7234 (_1!10336 lt!610906)) (list!7234 (prepend!771 (seqFromList!2157 (t!150750 (t!150750 tokens!457))) (h!23598 (t!150750 tokens!457)))))))

(declare-fun lt!611288 () Unit!30271)

(declare-fun choose!9901 (Token!5984 List!18267 BalanceConc!12078) Unit!30271)

(assert (=> d!497107 (= lt!611288 (choose!9901 (h!23598 (t!150750 tokens!457)) (t!150750 (t!150750 tokens!457)) (_1!10336 lt!610906)))))

(declare-fun $colon$colon!366 (List!18267 Token!5984) List!18267)

(assert (=> d!497107 (= (list!7234 (_1!10336 lt!610906)) (list!7234 (seqFromList!2157 ($colon$colon!366 (t!150750 (t!150750 tokens!457)) (h!23598 (t!150750 tokens!457))))))))

(assert (=> d!497107 (= (seqFromListBHdTlConstructive!284 (h!23598 (t!150750 tokens!457)) (t!150750 (t!150750 tokens!457)) (_1!10336 lt!610906)) lt!611288)))

(declare-fun bs!396364 () Bool)

(assert (= bs!396364 d!497107))

(assert (=> bs!396364 m!1996589))

(declare-fun m!1997191 () Bool)

(assert (=> bs!396364 m!1997191))

(assert (=> bs!396364 m!1996647))

(assert (=> bs!396364 m!1996649))

(assert (=> bs!396364 m!1996645))

(assert (=> bs!396364 m!1996647))

(declare-fun m!1997193 () Bool)

(assert (=> bs!396364 m!1997193))

(declare-fun m!1997195 () Bool)

(assert (=> bs!396364 m!1997195))

(assert (=> bs!396364 m!1997193))

(assert (=> bs!396364 m!1996645))

(assert (=> bs!396364 m!1997195))

(declare-fun m!1997197 () Bool)

(assert (=> bs!396364 m!1997197))

(assert (=> b!1648848 d!497107))

(declare-fun b!1649135 () Bool)

(declare-fun e!1057619 () Bool)

(assert (=> b!1649135 (= e!1057619 true)))

(declare-fun b!1649134 () Bool)

(declare-fun e!1057618 () Bool)

(assert (=> b!1649134 (= e!1057618 e!1057619)))

(declare-fun b!1649133 () Bool)

(declare-fun e!1057617 () Bool)

(assert (=> b!1649133 (= e!1057617 e!1057618)))

(declare-fun d!497109 () Bool)

(assert (=> d!497109 e!1057617))

(assert (= b!1649134 b!1649135))

(assert (= b!1649133 b!1649134))

(assert (= (and d!497109 ((_ is Cons!18198) rules!1846)) b!1649133))

(declare-fun lambda!67649 () Int)

(declare-fun order!10861 () Int)

(declare-fun order!10859 () Int)

(declare-fun dynLambda!8155 (Int Int) Int)

(declare-fun dynLambda!8156 (Int Int) Int)

(assert (=> b!1649135 (< (dynLambda!8155 order!10859 (toValue!4656 (transformation!3209 (h!23599 rules!1846)))) (dynLambda!8156 order!10861 lambda!67649))))

(declare-fun order!10863 () Int)

(declare-fun dynLambda!8157 (Int Int) Int)

(assert (=> b!1649135 (< (dynLambda!8157 order!10863 (toChars!4515 (transformation!3209 (h!23599 rules!1846)))) (dynLambda!8156 order!10861 lambda!67649))))

(assert (=> d!497109 true))

(declare-fun lt!611352 () Bool)

(declare-fun forall!4144 (List!18267 Int) Bool)

(assert (=> d!497109 (= lt!611352 (forall!4144 tokens!457 lambda!67649))))

(declare-fun e!1057605 () Bool)

(assert (=> d!497109 (= lt!611352 e!1057605)))

(declare-fun res!739049 () Bool)

(assert (=> d!497109 (=> res!739049 e!1057605)))

(assert (=> d!497109 (= res!739049 (not ((_ is Cons!18197) tokens!457)))))

(assert (=> d!497109 (not (isEmpty!11225 rules!1846))))

(assert (=> d!497109 (= (rulesProduceEachTokenIndividuallyList!1040 thiss!17113 rules!1846 tokens!457) lt!611352)))

(declare-fun b!1649117 () Bool)

(declare-fun e!1057606 () Bool)

(assert (=> b!1649117 (= e!1057605 e!1057606)))

(declare-fun res!739050 () Bool)

(assert (=> b!1649117 (=> (not res!739050) (not e!1057606))))

(assert (=> b!1649117 (= res!739050 (rulesProduceIndividualToken!1486 thiss!17113 rules!1846 (h!23598 tokens!457)))))

(declare-fun b!1649118 () Bool)

(assert (=> b!1649118 (= e!1057606 (rulesProduceEachTokenIndividuallyList!1040 thiss!17113 rules!1846 (t!150750 tokens!457)))))

(assert (= (and d!497109 (not res!739049)) b!1649117))

(assert (= (and b!1649117 res!739050) b!1649118))

(declare-fun m!1997323 () Bool)

(assert (=> d!497109 m!1997323))

(assert (=> d!497109 m!1996587))

(assert (=> b!1649117 m!1996661))

(declare-fun m!1997325 () Bool)

(assert (=> b!1649118 m!1997325))

(assert (=> b!1648859 d!497109))

(declare-fun b!1649152 () Bool)

(declare-fun e!1057628 () Bool)

(declare-fun e!1057630 () Bool)

(assert (=> b!1649152 (= e!1057628 e!1057630)))

(declare-fun c!268179 () Bool)

(assert (=> b!1649152 (= c!268179 ((_ is IntegerValue!9898) (value!101129 (h!23598 tokens!457))))))

(declare-fun b!1649153 () Bool)

(declare-fun inv!16 (TokenValue!3299) Bool)

(assert (=> b!1649153 (= e!1057628 (inv!16 (value!101129 (h!23598 tokens!457))))))

(declare-fun b!1649154 () Bool)

(declare-fun e!1057629 () Bool)

(declare-fun inv!15 (TokenValue!3299) Bool)

(assert (=> b!1649154 (= e!1057629 (inv!15 (value!101129 (h!23598 tokens!457))))))

(declare-fun b!1649155 () Bool)

(declare-fun res!739062 () Bool)

(assert (=> b!1649155 (=> res!739062 e!1057629)))

(assert (=> b!1649155 (= res!739062 (not ((_ is IntegerValue!9899) (value!101129 (h!23598 tokens!457)))))))

(assert (=> b!1649155 (= e!1057630 e!1057629)))

(declare-fun d!497141 () Bool)

(declare-fun c!268178 () Bool)

(assert (=> d!497141 (= c!268178 ((_ is IntegerValue!9897) (value!101129 (h!23598 tokens!457))))))

(assert (=> d!497141 (= (inv!21 (value!101129 (h!23598 tokens!457))) e!1057628)))

(declare-fun b!1649151 () Bool)

(declare-fun inv!17 (TokenValue!3299) Bool)

(assert (=> b!1649151 (= e!1057630 (inv!17 (value!101129 (h!23598 tokens!457))))))

(assert (= (and d!497141 c!268178) b!1649153))

(assert (= (and d!497141 (not c!268178)) b!1649152))

(assert (= (and b!1649152 c!268179) b!1649151))

(assert (= (and b!1649152 (not c!268179)) b!1649155))

(assert (= (and b!1649155 (not res!739062)) b!1649154))

(declare-fun m!1997343 () Bool)

(assert (=> b!1649153 m!1997343))

(declare-fun m!1997345 () Bool)

(assert (=> b!1649154 m!1997345))

(declare-fun m!1997347 () Bool)

(assert (=> b!1649151 m!1997347))

(assert (=> b!1648852 d!497141))

(declare-fun d!497145 () Bool)

(declare-fun lt!611408 () Bool)

(declare-fun e!1057662 () Bool)

(assert (=> d!497145 (= lt!611408 e!1057662)))

(declare-fun res!739095 () Bool)

(assert (=> d!497145 (=> (not res!739095) (not e!1057662))))

(assert (=> d!497145 (= res!739095 (= (list!7234 (_1!10336 (lex!1322 thiss!17113 rules!1846 (print!1369 thiss!17113 (singletonSeq!1691 (h!23598 tokens!457)))))) (list!7234 (singletonSeq!1691 (h!23598 tokens!457)))))))

(declare-fun e!1057663 () Bool)

(assert (=> d!497145 (= lt!611408 e!1057663)))

(declare-fun res!739094 () Bool)

(assert (=> d!497145 (=> (not res!739094) (not e!1057663))))

(declare-fun lt!611407 () tuple2!17868)

(assert (=> d!497145 (= res!739094 (= (size!14495 (_1!10336 lt!611407)) 1))))

(assert (=> d!497145 (= lt!611407 (lex!1322 thiss!17113 rules!1846 (print!1369 thiss!17113 (singletonSeq!1691 (h!23598 tokens!457)))))))

(assert (=> d!497145 (not (isEmpty!11225 rules!1846))))

(assert (=> d!497145 (= (rulesProduceIndividualToken!1486 thiss!17113 rules!1846 (h!23598 tokens!457)) lt!611408)))

(declare-fun b!1649203 () Bool)

(declare-fun res!739093 () Bool)

(assert (=> b!1649203 (=> (not res!739093) (not e!1057663))))

(declare-fun apply!4794 (BalanceConc!12078 Int) Token!5984)

(assert (=> b!1649203 (= res!739093 (= (apply!4794 (_1!10336 lt!611407) 0) (h!23598 tokens!457)))))

(declare-fun b!1649204 () Bool)

(assert (=> b!1649204 (= e!1057663 (isEmpty!11235 (_2!10336 lt!611407)))))

(declare-fun b!1649205 () Bool)

(assert (=> b!1649205 (= e!1057662 (isEmpty!11235 (_2!10336 (lex!1322 thiss!17113 rules!1846 (print!1369 thiss!17113 (singletonSeq!1691 (h!23598 tokens!457)))))))))

(assert (= (and d!497145 res!739094) b!1649203))

(assert (= (and b!1649203 res!739093) b!1649204))

(assert (= (and d!497145 res!739095) b!1649205))

(assert (=> d!497145 m!1996579))

(declare-fun m!1997453 () Bool)

(assert (=> d!497145 m!1997453))

(declare-fun m!1997455 () Bool)

(assert (=> d!497145 m!1997455))

(assert (=> d!497145 m!1997453))

(declare-fun m!1997457 () Bool)

(assert (=> d!497145 m!1997457))

(assert (=> d!497145 m!1996579))

(declare-fun m!1997459 () Bool)

(assert (=> d!497145 m!1997459))

(assert (=> d!497145 m!1996587))

(assert (=> d!497145 m!1996579))

(declare-fun m!1997461 () Bool)

(assert (=> d!497145 m!1997461))

(declare-fun m!1997463 () Bool)

(assert (=> b!1649203 m!1997463))

(declare-fun m!1997465 () Bool)

(assert (=> b!1649204 m!1997465))

(assert (=> b!1649205 m!1996579))

(assert (=> b!1649205 m!1996579))

(assert (=> b!1649205 m!1997453))

(assert (=> b!1649205 m!1997453))

(assert (=> b!1649205 m!1997457))

(declare-fun m!1997467 () Bool)

(assert (=> b!1649205 m!1997467))

(assert (=> b!1648862 d!497145))

(declare-fun d!497173 () Bool)

(declare-fun res!739100 () Bool)

(declare-fun e!1057687 () Bool)

(assert (=> d!497173 (=> (not res!739100) (not e!1057687))))

(assert (=> d!497173 (= res!739100 (not (isEmpty!11234 (originalCharacters!4023 (h!23598 tokens!457)))))))

(assert (=> d!497173 (= (inv!23558 (h!23598 tokens!457)) e!1057687)))

(declare-fun b!1649229 () Bool)

(declare-fun res!739101 () Bool)

(assert (=> b!1649229 (=> (not res!739101) (not e!1057687))))

(assert (=> b!1649229 (= res!739101 (= (originalCharacters!4023 (h!23598 tokens!457)) (list!7233 (dynLambda!8154 (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))) (value!101129 (h!23598 tokens!457))))))))

(declare-fun b!1649230 () Bool)

(assert (=> b!1649230 (= e!1057687 (= (size!14490 (h!23598 tokens!457)) (size!14496 (originalCharacters!4023 (h!23598 tokens!457)))))))

(assert (= (and d!497173 res!739100) b!1649229))

(assert (= (and b!1649229 res!739101) b!1649230))

(declare-fun b_lambda!51837 () Bool)

(assert (=> (not b_lambda!51837) (not b!1649229)))

(declare-fun tb!94463 () Bool)

(declare-fun t!150778 () Bool)

(assert (=> (and b!1648854 (= (toChars!4515 (transformation!3209 (h!23599 rules!1846))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457))))) t!150778) tb!94463))

(declare-fun b!1649231 () Bool)

(declare-fun e!1057688 () Bool)

(declare-fun tp!477566 () Bool)

(assert (=> b!1649231 (= e!1057688 (and (inv!23562 (c!268129 (dynLambda!8154 (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))) (value!101129 (h!23598 tokens!457))))) tp!477566))))

(declare-fun result!114124 () Bool)

(assert (=> tb!94463 (= result!114124 (and (inv!23563 (dynLambda!8154 (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))) (value!101129 (h!23598 tokens!457)))) e!1057688))))

(assert (= tb!94463 b!1649231))

(declare-fun m!1997477 () Bool)

(assert (=> b!1649231 m!1997477))

(declare-fun m!1997479 () Bool)

(assert (=> tb!94463 m!1997479))

(assert (=> b!1649229 t!150778))

(declare-fun b_and!117123 () Bool)

(assert (= b_and!117101 (and (=> t!150778 result!114124) b_and!117123)))

(declare-fun t!150780 () Bool)

(declare-fun tb!94465 () Bool)

(assert (=> (and b!1648845 (= (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457))))) t!150780) tb!94465))

(declare-fun result!114126 () Bool)

(assert (= result!114126 result!114124))

(assert (=> b!1649229 t!150780))

(declare-fun b_and!117127 () Bool)

(assert (= b_and!117103 (and (=> t!150780 result!114126) b_and!117127)))

(declare-fun m!1997481 () Bool)

(assert (=> d!497173 m!1997481))

(declare-fun m!1997483 () Bool)

(assert (=> b!1649229 m!1997483))

(assert (=> b!1649229 m!1997483))

(declare-fun m!1997485 () Bool)

(assert (=> b!1649229 m!1997485))

(declare-fun m!1997487 () Bool)

(assert (=> b!1649230 m!1997487))

(assert (=> b!1648841 d!497173))

(declare-fun d!497175 () Bool)

(declare-fun list!7238 (Conc!6066) List!18266)

(assert (=> d!497175 (= (list!7233 lt!610898) (list!7238 (c!268129 lt!610898)))))

(declare-fun bs!396377 () Bool)

(assert (= bs!396377 d!497175))

(declare-fun m!1997493 () Bool)

(assert (=> bs!396377 m!1997493))

(assert (=> b!1648851 d!497175))

(declare-fun d!497177 () Bool)

(declare-fun lt!611411 () BalanceConc!12076)

(assert (=> d!497177 (= (list!7233 lt!611411) (printList!951 thiss!17113 (list!7234 lt!610894)))))

(assert (=> d!497177 (= lt!611411 (printTailRec!889 thiss!17113 lt!610894 0 (BalanceConc!12077 Empty!6066)))))

(assert (=> d!497177 (= (print!1369 thiss!17113 lt!610894) lt!611411)))

(declare-fun bs!396378 () Bool)

(assert (= bs!396378 d!497177))

(declare-fun m!1997495 () Bool)

(assert (=> bs!396378 m!1997495))

(assert (=> bs!396378 m!1996641))

(assert (=> bs!396378 m!1996641))

(declare-fun m!1997497 () Bool)

(assert (=> bs!396378 m!1997497))

(declare-fun m!1997499 () Bool)

(assert (=> bs!396378 m!1997499))

(assert (=> b!1648851 d!497177))

(declare-fun d!497179 () Bool)

(assert (=> d!497179 (= (list!7233 lt!610908) (list!7238 (c!268129 lt!610908)))))

(declare-fun bs!396379 () Bool)

(assert (= bs!396379 d!497179))

(declare-fun m!1997501 () Bool)

(assert (=> bs!396379 m!1997501))

(assert (=> b!1648851 d!497179))

(declare-fun d!497181 () Bool)

(assert (=> d!497181 (= (seqFromList!2157 tokens!457) (fromListB!963 tokens!457))))

(declare-fun bs!396380 () Bool)

(assert (= bs!396380 d!497181))

(declare-fun m!1997503 () Bool)

(assert (=> bs!396380 m!1997503))

(assert (=> b!1648851 d!497181))

(declare-fun d!497183 () Bool)

(declare-fun e!1057699 () Bool)

(assert (=> d!497183 e!1057699))

(declare-fun res!739102 () Bool)

(assert (=> d!497183 (=> (not res!739102) (not e!1057699))))

(declare-fun e!1057698 () Bool)

(assert (=> d!497183 (= res!739102 e!1057698)))

(declare-fun c!268187 () Bool)

(declare-fun lt!611412 () tuple2!17868)

(assert (=> d!497183 (= c!268187 (> (size!14495 (_1!10336 lt!611412)) 0))))

(assert (=> d!497183 (= lt!611412 (lexTailRecV2!592 thiss!17113 rules!1846 lt!610908 (BalanceConc!12077 Empty!6066) lt!610908 (BalanceConc!12079 Empty!6067)))))

(assert (=> d!497183 (= (lex!1322 thiss!17113 rules!1846 lt!610908) lt!611412)))

(declare-fun b!1649253 () Bool)

(declare-fun e!1057697 () Bool)

(assert (=> b!1649253 (= e!1057697 (not (isEmpty!11224 (_1!10336 lt!611412))))))

(declare-fun b!1649254 () Bool)

(assert (=> b!1649254 (= e!1057698 e!1057697)))

(declare-fun res!739103 () Bool)

(assert (=> b!1649254 (= res!739103 (< (size!14494 (_2!10336 lt!611412)) (size!14494 lt!610908)))))

(assert (=> b!1649254 (=> (not res!739103) (not e!1057697))))

(declare-fun b!1649255 () Bool)

(declare-fun res!739104 () Bool)

(assert (=> b!1649255 (=> (not res!739104) (not e!1057699))))

(assert (=> b!1649255 (= res!739104 (= (list!7234 (_1!10336 lt!611412)) (_1!10339 (lexList!869 thiss!17113 rules!1846 (list!7233 lt!610908)))))))

(declare-fun b!1649256 () Bool)

(assert (=> b!1649256 (= e!1057699 (= (list!7233 (_2!10336 lt!611412)) (_2!10339 (lexList!869 thiss!17113 rules!1846 (list!7233 lt!610908)))))))

(declare-fun b!1649257 () Bool)

(assert (=> b!1649257 (= e!1057698 (= (_2!10336 lt!611412) lt!610908))))

(assert (= (and d!497183 c!268187) b!1649254))

(assert (= (and d!497183 (not c!268187)) b!1649257))

(assert (= (and b!1649254 res!739103) b!1649253))

(assert (= (and d!497183 res!739102) b!1649255))

(assert (= (and b!1649255 res!739104) b!1649256))

(declare-fun m!1997505 () Bool)

(assert (=> b!1649255 m!1997505))

(assert (=> b!1649255 m!1996613))

(assert (=> b!1649255 m!1996613))

(declare-fun m!1997507 () Bool)

(assert (=> b!1649255 m!1997507))

(declare-fun m!1997509 () Bool)

(assert (=> b!1649256 m!1997509))

(assert (=> b!1649256 m!1996613))

(assert (=> b!1649256 m!1996613))

(assert (=> b!1649256 m!1997507))

(declare-fun m!1997511 () Bool)

(assert (=> d!497183 m!1997511))

(declare-fun m!1997513 () Bool)

(assert (=> d!497183 m!1997513))

(declare-fun m!1997515 () Bool)

(assert (=> b!1649253 m!1997515))

(declare-fun m!1997517 () Bool)

(assert (=> b!1649254 m!1997517))

(declare-fun m!1997519 () Bool)

(assert (=> b!1649254 m!1997519))

(assert (=> b!1648851 d!497183))

(declare-fun d!497185 () Bool)

(declare-fun lt!611413 () BalanceConc!12076)

(assert (=> d!497185 (= (list!7233 lt!611413) (originalCharacters!4023 (h!23598 tokens!457)))))

(assert (=> d!497185 (= lt!611413 (dynLambda!8154 (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))) (value!101129 (h!23598 tokens!457))))))

(assert (=> d!497185 (= (charsOf!1858 (h!23598 tokens!457)) lt!611413)))

(declare-fun b_lambda!51845 () Bool)

(assert (=> (not b_lambda!51845) (not d!497185)))

(assert (=> d!497185 t!150778))

(declare-fun b_and!117129 () Bool)

(assert (= b_and!117123 (and (=> t!150778 result!114124) b_and!117129)))

(assert (=> d!497185 t!150780))

(declare-fun b_and!117131 () Bool)

(assert (= b_and!117127 (and (=> t!150780 result!114126) b_and!117131)))

(declare-fun m!1997521 () Bool)

(assert (=> d!497185 m!1997521))

(assert (=> d!497185 m!1997483))

(assert (=> b!1648851 d!497185))

(declare-fun d!497187 () Bool)

(declare-fun lt!611414 () BalanceConc!12076)

(assert (=> d!497187 (= (list!7233 lt!611414) (printList!951 thiss!17113 (list!7234 (seqFromList!2157 tokens!457))))))

(assert (=> d!497187 (= lt!611414 (printTailRec!889 thiss!17113 (seqFromList!2157 tokens!457) 0 (BalanceConc!12077 Empty!6066)))))

(assert (=> d!497187 (= (print!1369 thiss!17113 (seqFromList!2157 tokens!457)) lt!611414)))

(declare-fun bs!396381 () Bool)

(assert (= bs!396381 d!497187))

(declare-fun m!1997523 () Bool)

(assert (=> bs!396381 m!1997523))

(assert (=> bs!396381 m!1996603))

(declare-fun m!1997525 () Bool)

(assert (=> bs!396381 m!1997525))

(assert (=> bs!396381 m!1997525))

(declare-fun m!1997527 () Bool)

(assert (=> bs!396381 m!1997527))

(assert (=> bs!396381 m!1996603))

(declare-fun m!1997529 () Bool)

(assert (=> bs!396381 m!1997529))

(assert (=> b!1648851 d!497187))

(declare-fun d!497189 () Bool)

(declare-fun e!1057705 () Bool)

(assert (=> d!497189 e!1057705))

(declare-fun res!739109 () Bool)

(assert (=> d!497189 (=> (not res!739109) (not e!1057705))))

(declare-fun lt!611417 () List!18266)

(declare-fun content!2527 (List!18266) (InoxSet C!9248))

(assert (=> d!497189 (= res!739109 (= (content!2527 lt!611417) ((_ map or) (content!2527 lt!610905) (content!2527 lt!610901))))))

(declare-fun e!1057704 () List!18266)

(assert (=> d!497189 (= lt!611417 e!1057704)))

(declare-fun c!268190 () Bool)

(assert (=> d!497189 (= c!268190 ((_ is Nil!18196) lt!610905))))

(assert (=> d!497189 (= (++!4915 lt!610905 lt!610901) lt!611417)))

(declare-fun b!1649268 () Bool)

(declare-fun res!739110 () Bool)

(assert (=> b!1649268 (=> (not res!739110) (not e!1057705))))

(assert (=> b!1649268 (= res!739110 (= (size!14496 lt!611417) (+ (size!14496 lt!610905) (size!14496 lt!610901))))))

(declare-fun b!1649267 () Bool)

(assert (=> b!1649267 (= e!1057704 (Cons!18196 (h!23597 lt!610905) (++!4915 (t!150749 lt!610905) lt!610901)))))

(declare-fun b!1649269 () Bool)

(assert (=> b!1649269 (= e!1057705 (or (not (= lt!610901 Nil!18196)) (= lt!611417 lt!610905)))))

(declare-fun b!1649266 () Bool)

(assert (=> b!1649266 (= e!1057704 lt!610901)))

(assert (= (and d!497189 c!268190) b!1649266))

(assert (= (and d!497189 (not c!268190)) b!1649267))

(assert (= (and d!497189 res!739109) b!1649268))

(assert (= (and b!1649268 res!739110) b!1649269))

(declare-fun m!1997531 () Bool)

(assert (=> d!497189 m!1997531))

(declare-fun m!1997533 () Bool)

(assert (=> d!497189 m!1997533))

(declare-fun m!1997535 () Bool)

(assert (=> d!497189 m!1997535))

(declare-fun m!1997537 () Bool)

(assert (=> b!1649268 m!1997537))

(assert (=> b!1649268 m!1997171))

(declare-fun m!1997539 () Bool)

(assert (=> b!1649268 m!1997539))

(declare-fun m!1997541 () Bool)

(assert (=> b!1649267 m!1997541))

(assert (=> b!1648851 d!497189))

(declare-fun d!497191 () Bool)

(assert (=> d!497191 (= (list!7233 lt!610899) (list!7238 (c!268129 lt!610899)))))

(declare-fun bs!396382 () Bool)

(assert (= bs!396382 d!497191))

(declare-fun m!1997543 () Bool)

(assert (=> bs!396382 m!1997543))

(assert (=> b!1648851 d!497191))

(declare-fun d!497193 () Bool)

(assert (=> d!497193 (= (seqFromList!2157 (t!150750 tokens!457)) (fromListB!963 (t!150750 tokens!457)))))

(declare-fun bs!396383 () Bool)

(assert (= bs!396383 d!497193))

(declare-fun m!1997545 () Bool)

(assert (=> bs!396383 m!1997545))

(assert (=> b!1648851 d!497193))

(declare-fun d!497195 () Bool)

(declare-fun lt!611433 () BalanceConc!12076)

(declare-fun printListTailRec!391 (LexerInterface!2838 List!18267 List!18266) List!18266)

(declare-fun dropList!670 (BalanceConc!12078 Int) List!18267)

(assert (=> d!497195 (= (list!7233 lt!611433) (printListTailRec!391 thiss!17113 (dropList!670 lt!610902 0) (list!7233 (BalanceConc!12077 Empty!6066))))))

(declare-fun e!1057710 () BalanceConc!12076)

(assert (=> d!497195 (= lt!611433 e!1057710)))

(declare-fun c!268193 () Bool)

(assert (=> d!497195 (= c!268193 (>= 0 (size!14495 lt!610902)))))

(declare-fun e!1057711 () Bool)

(assert (=> d!497195 e!1057711))

(declare-fun res!739113 () Bool)

(assert (=> d!497195 (=> (not res!739113) (not e!1057711))))

(assert (=> d!497195 (= res!739113 (>= 0 0))))

(assert (=> d!497195 (= (printTailRec!889 thiss!17113 lt!610902 0 (BalanceConc!12077 Empty!6066)) lt!611433)))

(declare-fun b!1649276 () Bool)

(assert (=> b!1649276 (= e!1057711 (<= 0 (size!14495 lt!610902)))))

(declare-fun b!1649277 () Bool)

(assert (=> b!1649277 (= e!1057710 (BalanceConc!12077 Empty!6066))))

(declare-fun b!1649278 () Bool)

(assert (=> b!1649278 (= e!1057710 (printTailRec!889 thiss!17113 lt!610902 (+ 0 1) (++!4916 (BalanceConc!12077 Empty!6066) (charsOf!1858 (apply!4794 lt!610902 0)))))))

(declare-fun lt!611436 () List!18267)

(assert (=> b!1649278 (= lt!611436 (list!7234 lt!610902))))

(declare-fun lt!611438 () Unit!30271)

(declare-fun lemmaDropApply!598 (List!18267 Int) Unit!30271)

(assert (=> b!1649278 (= lt!611438 (lemmaDropApply!598 lt!611436 0))))

(declare-fun drop!910 (List!18267 Int) List!18267)

(declare-fun apply!4795 (List!18267 Int) Token!5984)

(assert (=> b!1649278 (= (head!3625 (drop!910 lt!611436 0)) (apply!4795 lt!611436 0))))

(declare-fun lt!611432 () Unit!30271)

(assert (=> b!1649278 (= lt!611432 lt!611438)))

(declare-fun lt!611437 () List!18267)

(assert (=> b!1649278 (= lt!611437 (list!7234 lt!610902))))

(declare-fun lt!611435 () Unit!30271)

(declare-fun lemmaDropTail!578 (List!18267 Int) Unit!30271)

(assert (=> b!1649278 (= lt!611435 (lemmaDropTail!578 lt!611437 0))))

(declare-fun tail!2440 (List!18267) List!18267)

(assert (=> b!1649278 (= (tail!2440 (drop!910 lt!611437 0)) (drop!910 lt!611437 (+ 0 1)))))

(declare-fun lt!611434 () Unit!30271)

(assert (=> b!1649278 (= lt!611434 lt!611435)))

(assert (= (and d!497195 res!739113) b!1649276))

(assert (= (and d!497195 c!268193) b!1649277))

(assert (= (and d!497195 (not c!268193)) b!1649278))

(declare-fun m!1997547 () Bool)

(assert (=> d!497195 m!1997547))

(declare-fun m!1997549 () Bool)

(assert (=> d!497195 m!1997549))

(declare-fun m!1997551 () Bool)

(assert (=> d!497195 m!1997551))

(assert (=> d!497195 m!1997549))

(declare-fun m!1997553 () Bool)

(assert (=> d!497195 m!1997553))

(assert (=> d!497195 m!1997551))

(declare-fun m!1997555 () Bool)

(assert (=> d!497195 m!1997555))

(assert (=> b!1649276 m!1997555))

(declare-fun m!1997557 () Bool)

(assert (=> b!1649278 m!1997557))

(declare-fun m!1997559 () Bool)

(assert (=> b!1649278 m!1997559))

(declare-fun m!1997561 () Bool)

(assert (=> b!1649278 m!1997561))

(assert (=> b!1649278 m!1997559))

(declare-fun m!1997563 () Bool)

(assert (=> b!1649278 m!1997563))

(declare-fun m!1997565 () Bool)

(assert (=> b!1649278 m!1997565))

(declare-fun m!1997567 () Bool)

(assert (=> b!1649278 m!1997567))

(declare-fun m!1997569 () Bool)

(assert (=> b!1649278 m!1997569))

(declare-fun m!1997571 () Bool)

(assert (=> b!1649278 m!1997571))

(assert (=> b!1649278 m!1997557))

(declare-fun m!1997573 () Bool)

(assert (=> b!1649278 m!1997573))

(declare-fun m!1997575 () Bool)

(assert (=> b!1649278 m!1997575))

(assert (=> b!1649278 m!1997571))

(declare-fun m!1997577 () Bool)

(assert (=> b!1649278 m!1997577))

(assert (=> b!1649278 m!1997565))

(declare-fun m!1997579 () Bool)

(assert (=> b!1649278 m!1997579))

(assert (=> b!1649278 m!1997575))

(declare-fun m!1997581 () Bool)

(assert (=> b!1649278 m!1997581))

(assert (=> b!1648850 d!497195))

(declare-fun d!497197 () Bool)

(assert (=> d!497197 (= (list!7233 lt!610897) (list!7238 (c!268129 lt!610897)))))

(declare-fun bs!396384 () Bool)

(assert (= bs!396384 d!497197))

(declare-fun m!1997583 () Bool)

(assert (=> bs!396384 m!1997583))

(assert (=> b!1648850 d!497197))

(declare-fun b!1649297 () Bool)

(declare-fun res!739130 () Bool)

(declare-fun e!1057718 () Bool)

(assert (=> b!1649297 (=> (not res!739130) (not e!1057718))))

(declare-fun lt!611451 () Option!3452)

(declare-fun apply!4796 (TokenValueInjection!6258 BalanceConc!12076) TokenValue!3299)

(assert (=> b!1649297 (= res!739130 (= (value!101129 (_1!10337 (get!5298 lt!611451))) (apply!4796 (transformation!3209 (rule!5067 (_1!10337 (get!5298 lt!611451)))) (seqFromList!2158 (originalCharacters!4023 (_1!10337 (get!5298 lt!611451)))))))))

(declare-fun b!1649298 () Bool)

(declare-fun res!739132 () Bool)

(assert (=> b!1649298 (=> (not res!739132) (not e!1057718))))

(assert (=> b!1649298 (= res!739132 (= (++!4915 (list!7233 (charsOf!1858 (_1!10337 (get!5298 lt!611451)))) (_2!10337 (get!5298 lt!611451))) lt!610914))))

(declare-fun b!1649299 () Bool)

(declare-fun res!739128 () Bool)

(assert (=> b!1649299 (=> (not res!739128) (not e!1057718))))

(assert (=> b!1649299 (= res!739128 (< (size!14496 (_2!10337 (get!5298 lt!611451))) (size!14496 lt!610914)))))

(declare-fun b!1649300 () Bool)

(declare-fun res!739134 () Bool)

(assert (=> b!1649300 (=> (not res!739134) (not e!1057718))))

(assert (=> b!1649300 (= res!739134 (= (list!7233 (charsOf!1858 (_1!10337 (get!5298 lt!611451)))) (originalCharacters!4023 (_1!10337 (get!5298 lt!611451)))))))

(declare-fun b!1649301 () Bool)

(declare-fun e!1057720 () Option!3452)

(declare-fun lt!611453 () Option!3452)

(declare-fun lt!611450 () Option!3452)

(assert (=> b!1649301 (= e!1057720 (ite (and ((_ is None!3451) lt!611453) ((_ is None!3451) lt!611450)) None!3451 (ite ((_ is None!3451) lt!611450) lt!611453 (ite ((_ is None!3451) lt!611453) lt!611450 (ite (>= (size!14490 (_1!10337 (v!24614 lt!611453))) (size!14490 (_1!10337 (v!24614 lt!611450)))) lt!611453 lt!611450)))))))

(declare-fun call!105836 () Option!3452)

(assert (=> b!1649301 (= lt!611453 call!105836)))

(assert (=> b!1649301 (= lt!611450 (maxPrefix!1400 thiss!17113 (t!150751 rules!1846) lt!610914))))

(declare-fun bm!105831 () Bool)

(assert (=> bm!105831 (= call!105836 (maxPrefixOneRule!809 thiss!17113 (h!23599 rules!1846) lt!610914))))

(declare-fun d!497199 () Bool)

(declare-fun e!1057719 () Bool)

(assert (=> d!497199 e!1057719))

(declare-fun res!739131 () Bool)

(assert (=> d!497199 (=> res!739131 e!1057719)))

(assert (=> d!497199 (= res!739131 (isEmpty!11233 lt!611451))))

(assert (=> d!497199 (= lt!611451 e!1057720)))

(declare-fun c!268196 () Bool)

(assert (=> d!497199 (= c!268196 (and ((_ is Cons!18198) rules!1846) ((_ is Nil!18198) (t!150751 rules!1846))))))

(declare-fun lt!611452 () Unit!30271)

(declare-fun lt!611449 () Unit!30271)

(assert (=> d!497199 (= lt!611452 lt!611449)))

(assert (=> d!497199 (isPrefix!1467 lt!610914 lt!610914)))

(declare-fun lemmaIsPrefixRefl!994 (List!18266 List!18266) Unit!30271)

(assert (=> d!497199 (= lt!611449 (lemmaIsPrefixRefl!994 lt!610914 lt!610914))))

(declare-fun rulesValidInductive!1016 (LexerInterface!2838 List!18268) Bool)

(assert (=> d!497199 (rulesValidInductive!1016 thiss!17113 rules!1846)))

(assert (=> d!497199 (= (maxPrefix!1400 thiss!17113 rules!1846 lt!610914) lt!611451)))

(declare-fun b!1649302 () Bool)

(declare-fun contains!3172 (List!18268 Rule!6218) Bool)

(assert (=> b!1649302 (= e!1057718 (contains!3172 rules!1846 (rule!5067 (_1!10337 (get!5298 lt!611451)))))))

(declare-fun b!1649303 () Bool)

(assert (=> b!1649303 (= e!1057719 e!1057718)))

(declare-fun res!739133 () Bool)

(assert (=> b!1649303 (=> (not res!739133) (not e!1057718))))

(assert (=> b!1649303 (= res!739133 (isDefined!2807 lt!611451))))

(declare-fun b!1649304 () Bool)

(declare-fun res!739129 () Bool)

(assert (=> b!1649304 (=> (not res!739129) (not e!1057718))))

(assert (=> b!1649304 (= res!739129 (matchR!2030 (regex!3209 (rule!5067 (_1!10337 (get!5298 lt!611451)))) (list!7233 (charsOf!1858 (_1!10337 (get!5298 lt!611451))))))))

(declare-fun b!1649305 () Bool)

(assert (=> b!1649305 (= e!1057720 call!105836)))

(assert (= (and d!497199 c!268196) b!1649305))

(assert (= (and d!497199 (not c!268196)) b!1649301))

(assert (= (or b!1649305 b!1649301) bm!105831))

(assert (= (and d!497199 (not res!739131)) b!1649303))

(assert (= (and b!1649303 res!739133) b!1649300))

(assert (= (and b!1649300 res!739134) b!1649299))

(assert (= (and b!1649299 res!739128) b!1649298))

(assert (= (and b!1649298 res!739132) b!1649297))

(assert (= (and b!1649297 res!739130) b!1649304))

(assert (= (and b!1649304 res!739129) b!1649302))

(declare-fun m!1997585 () Bool)

(assert (=> b!1649297 m!1997585))

(declare-fun m!1997587 () Bool)

(assert (=> b!1649297 m!1997587))

(assert (=> b!1649297 m!1997587))

(declare-fun m!1997589 () Bool)

(assert (=> b!1649297 m!1997589))

(assert (=> b!1649302 m!1997585))

(declare-fun m!1997591 () Bool)

(assert (=> b!1649302 m!1997591))

(assert (=> b!1649298 m!1997585))

(declare-fun m!1997593 () Bool)

(assert (=> b!1649298 m!1997593))

(assert (=> b!1649298 m!1997593))

(declare-fun m!1997595 () Bool)

(assert (=> b!1649298 m!1997595))

(assert (=> b!1649298 m!1997595))

(declare-fun m!1997597 () Bool)

(assert (=> b!1649298 m!1997597))

(assert (=> b!1649299 m!1997585))

(declare-fun m!1997599 () Bool)

(assert (=> b!1649299 m!1997599))

(declare-fun m!1997601 () Bool)

(assert (=> b!1649299 m!1997601))

(declare-fun m!1997603 () Bool)

(assert (=> bm!105831 m!1997603))

(assert (=> b!1649300 m!1997585))

(assert (=> b!1649300 m!1997593))

(assert (=> b!1649300 m!1997593))

(assert (=> b!1649300 m!1997595))

(declare-fun m!1997605 () Bool)

(assert (=> b!1649301 m!1997605))

(assert (=> b!1649304 m!1997585))

(assert (=> b!1649304 m!1997593))

(assert (=> b!1649304 m!1997593))

(assert (=> b!1649304 m!1997595))

(assert (=> b!1649304 m!1997595))

(declare-fun m!1997607 () Bool)

(assert (=> b!1649304 m!1997607))

(declare-fun m!1997609 () Bool)

(assert (=> d!497199 m!1997609))

(declare-fun m!1997611 () Bool)

(assert (=> d!497199 m!1997611))

(declare-fun m!1997613 () Bool)

(assert (=> d!497199 m!1997613))

(declare-fun m!1997615 () Bool)

(assert (=> d!497199 m!1997615))

(declare-fun m!1997617 () Bool)

(assert (=> b!1649303 m!1997617))

(assert (=> b!1648850 d!497199))

(declare-fun d!497201 () Bool)

(declare-fun lt!611454 () BalanceConc!12076)

(assert (=> d!497201 (= (list!7233 lt!611454) (printList!951 thiss!17113 (list!7234 lt!610902)))))

(assert (=> d!497201 (= lt!611454 (printTailRec!889 thiss!17113 lt!610902 0 (BalanceConc!12077 Empty!6066)))))

(assert (=> d!497201 (= (print!1369 thiss!17113 lt!610902) lt!611454)))

(declare-fun bs!396385 () Bool)

(assert (= bs!396385 d!497201))

(declare-fun m!1997619 () Bool)

(assert (=> bs!396385 m!1997619))

(assert (=> bs!396385 m!1997569))

(assert (=> bs!396385 m!1997569))

(declare-fun m!1997621 () Bool)

(assert (=> bs!396385 m!1997621))

(assert (=> bs!396385 m!1996577))

(assert (=> b!1648850 d!497201))

(declare-fun d!497203 () Bool)

(declare-fun c!268199 () Bool)

(assert (=> d!497203 (= c!268199 ((_ is Cons!18197) (Cons!18197 (h!23598 tokens!457) Nil!18197)))))

(declare-fun e!1057723 () List!18266)

(assert (=> d!497203 (= (printList!951 thiss!17113 (Cons!18197 (h!23598 tokens!457) Nil!18197)) e!1057723)))

(declare-fun b!1649310 () Bool)

(assert (=> b!1649310 (= e!1057723 (++!4915 (list!7233 (charsOf!1858 (h!23598 (Cons!18197 (h!23598 tokens!457) Nil!18197)))) (printList!951 thiss!17113 (t!150750 (Cons!18197 (h!23598 tokens!457) Nil!18197)))))))

(declare-fun b!1649311 () Bool)

(assert (=> b!1649311 (= e!1057723 Nil!18196)))

(assert (= (and d!497203 c!268199) b!1649310))

(assert (= (and d!497203 (not c!268199)) b!1649311))

(declare-fun m!1997623 () Bool)

(assert (=> b!1649310 m!1997623))

(assert (=> b!1649310 m!1997623))

(declare-fun m!1997625 () Bool)

(assert (=> b!1649310 m!1997625))

(declare-fun m!1997627 () Bool)

(assert (=> b!1649310 m!1997627))

(assert (=> b!1649310 m!1997625))

(assert (=> b!1649310 m!1997627))

(declare-fun m!1997629 () Bool)

(assert (=> b!1649310 m!1997629))

(assert (=> b!1648850 d!497203))

(declare-fun d!497205 () Bool)

(declare-fun e!1057726 () Bool)

(assert (=> d!497205 e!1057726))

(declare-fun res!739137 () Bool)

(assert (=> d!497205 (=> (not res!739137) (not e!1057726))))

(declare-fun lt!611457 () BalanceConc!12078)

(assert (=> d!497205 (= res!739137 (= (list!7234 lt!611457) (Cons!18197 (h!23598 tokens!457) Nil!18197)))))

(declare-fun singleton!732 (Token!5984) BalanceConc!12078)

(assert (=> d!497205 (= lt!611457 (singleton!732 (h!23598 tokens!457)))))

(assert (=> d!497205 (= (singletonSeq!1691 (h!23598 tokens!457)) lt!611457)))

(declare-fun b!1649314 () Bool)

(assert (=> b!1649314 (= e!1057726 (isBalanced!1858 (c!268131 lt!611457)))))

(assert (= (and d!497205 res!739137) b!1649314))

(declare-fun m!1997631 () Bool)

(assert (=> d!497205 m!1997631))

(declare-fun m!1997633 () Bool)

(assert (=> d!497205 m!1997633))

(declare-fun m!1997635 () Bool)

(assert (=> b!1649314 m!1997635))

(assert (=> b!1648850 d!497205))

(declare-fun d!497207 () Bool)

(assert (=> d!497207 (= (isEmpty!11225 rules!1846) ((_ is Nil!18198) rules!1846))))

(assert (=> b!1648861 d!497207))

(declare-fun d!497209 () Bool)

(declare-fun res!739140 () Bool)

(declare-fun e!1057729 () Bool)

(assert (=> d!497209 (=> (not res!739140) (not e!1057729))))

(declare-fun rulesValid!1168 (LexerInterface!2838 List!18268) Bool)

(assert (=> d!497209 (= res!739140 (rulesValid!1168 thiss!17113 rules!1846))))

(assert (=> d!497209 (= (rulesInvariant!2507 thiss!17113 rules!1846) e!1057729)))

(declare-fun b!1649317 () Bool)

(declare-datatypes ((List!18274 0))(
  ( (Nil!18204) (Cons!18204 (h!23605 String!20827) (t!150799 List!18274)) )
))
(declare-fun noDuplicateTag!1168 (LexerInterface!2838 List!18268 List!18274) Bool)

(assert (=> b!1649317 (= e!1057729 (noDuplicateTag!1168 thiss!17113 rules!1846 Nil!18204))))

(assert (= (and d!497209 res!739140) b!1649317))

(declare-fun m!1997637 () Bool)

(assert (=> d!497209 m!1997637))

(declare-fun m!1997639 () Bool)

(assert (=> b!1649317 m!1997639))

(assert (=> b!1648844 d!497209))

(declare-fun d!497211 () Bool)

(assert (=> d!497211 (= (separableTokensPredicate!778 thiss!17113 (h!23598 tokens!457) (h!23598 (t!150750 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!617 (rulesRegex!593 thiss!17113 rules!1846) (++!4916 (charsOf!1858 (h!23598 tokens!457)) (singletonSeq!1690 (apply!4786 (charsOf!1858 (h!23598 (t!150750 tokens!457))) 0))))))))

(declare-fun bs!396386 () Bool)

(assert (= bs!396386 d!497211))

(assert (=> bs!396386 m!1996611))

(assert (=> bs!396386 m!1996637))

(declare-fun m!1997641 () Bool)

(assert (=> bs!396386 m!1997641))

(assert (=> bs!396386 m!1996639))

(assert (=> bs!396386 m!1996639))

(assert (=> bs!396386 m!1996635))

(assert (=> bs!396386 m!1996635))

(assert (=> bs!396386 m!1996637))

(assert (=> bs!396386 m!1996611))

(assert (=> bs!396386 m!1996629))

(assert (=> bs!396386 m!1997641))

(declare-fun m!1997643 () Bool)

(assert (=> bs!396386 m!1997643))

(assert (=> bs!396386 m!1996629))

(assert (=> b!1648855 d!497211))

(declare-fun d!497213 () Bool)

(declare-fun c!268202 () Bool)

(assert (=> d!497213 (= c!268202 (isEmpty!11234 (++!4915 lt!610905 (list!7233 lt!610896))))))

(declare-fun e!1057732 () Bool)

(assert (=> d!497213 (= (prefixMatch!454 lt!610892 (++!4915 lt!610905 (list!7233 lt!610896))) e!1057732)))

(declare-fun b!1649322 () Bool)

(declare-fun lostCause!458 (Regex!4537) Bool)

(assert (=> b!1649322 (= e!1057732 (not (lostCause!458 lt!610892)))))

(declare-fun b!1649323 () Bool)

(declare-fun derivativeStep!1108 (Regex!4537 C!9248) Regex!4537)

(assert (=> b!1649323 (= e!1057732 (prefixMatch!454 (derivativeStep!1108 lt!610892 (head!3626 (++!4915 lt!610905 (list!7233 lt!610896)))) (tail!2439 (++!4915 lt!610905 (list!7233 lt!610896)))))))

(assert (= (and d!497213 c!268202) b!1649322))

(assert (= (and d!497213 (not c!268202)) b!1649323))

(assert (=> d!497213 m!1996623))

(declare-fun m!1997645 () Bool)

(assert (=> d!497213 m!1997645))

(declare-fun m!1997647 () Bool)

(assert (=> b!1649322 m!1997647))

(assert (=> b!1649323 m!1996623))

(declare-fun m!1997649 () Bool)

(assert (=> b!1649323 m!1997649))

(assert (=> b!1649323 m!1997649))

(declare-fun m!1997651 () Bool)

(assert (=> b!1649323 m!1997651))

(assert (=> b!1649323 m!1996623))

(declare-fun m!1997653 () Bool)

(assert (=> b!1649323 m!1997653))

(assert (=> b!1649323 m!1997651))

(assert (=> b!1649323 m!1997653))

(declare-fun m!1997655 () Bool)

(assert (=> b!1649323 m!1997655))

(assert (=> b!1648843 d!497213))

(declare-fun d!497215 () Bool)

(declare-fun e!1057734 () Bool)

(assert (=> d!497215 e!1057734))

(declare-fun res!739141 () Bool)

(assert (=> d!497215 (=> (not res!739141) (not e!1057734))))

(declare-fun lt!611458 () List!18266)

(assert (=> d!497215 (= res!739141 (= (content!2527 lt!611458) ((_ map or) (content!2527 lt!610905) (content!2527 (list!7233 lt!610896)))))))

(declare-fun e!1057733 () List!18266)

(assert (=> d!497215 (= lt!611458 e!1057733)))

(declare-fun c!268203 () Bool)

(assert (=> d!497215 (= c!268203 ((_ is Nil!18196) lt!610905))))

(assert (=> d!497215 (= (++!4915 lt!610905 (list!7233 lt!610896)) lt!611458)))

(declare-fun b!1649326 () Bool)

(declare-fun res!739142 () Bool)

(assert (=> b!1649326 (=> (not res!739142) (not e!1057734))))

(assert (=> b!1649326 (= res!739142 (= (size!14496 lt!611458) (+ (size!14496 lt!610905) (size!14496 (list!7233 lt!610896)))))))

(declare-fun b!1649325 () Bool)

(assert (=> b!1649325 (= e!1057733 (Cons!18196 (h!23597 lt!610905) (++!4915 (t!150749 lt!610905) (list!7233 lt!610896))))))

(declare-fun b!1649327 () Bool)

(assert (=> b!1649327 (= e!1057734 (or (not (= (list!7233 lt!610896) Nil!18196)) (= lt!611458 lt!610905)))))

(declare-fun b!1649324 () Bool)

(assert (=> b!1649324 (= e!1057733 (list!7233 lt!610896))))

(assert (= (and d!497215 c!268203) b!1649324))

(assert (= (and d!497215 (not c!268203)) b!1649325))

(assert (= (and d!497215 res!739141) b!1649326))

(assert (= (and b!1649326 res!739142) b!1649327))

(declare-fun m!1997657 () Bool)

(assert (=> d!497215 m!1997657))

(assert (=> d!497215 m!1997533))

(assert (=> d!497215 m!1996621))

(declare-fun m!1997659 () Bool)

(assert (=> d!497215 m!1997659))

(declare-fun m!1997661 () Bool)

(assert (=> b!1649326 m!1997661))

(assert (=> b!1649326 m!1997171))

(assert (=> b!1649326 m!1996621))

(declare-fun m!1997663 () Bool)

(assert (=> b!1649326 m!1997663))

(assert (=> b!1649325 m!1996621))

(declare-fun m!1997665 () Bool)

(assert (=> b!1649325 m!1997665))

(assert (=> b!1648843 d!497215))

(declare-fun d!497217 () Bool)

(assert (=> d!497217 (= (list!7233 lt!610896) (list!7238 (c!268129 lt!610896)))))

(declare-fun bs!396387 () Bool)

(assert (= bs!396387 d!497217))

(declare-fun m!1997667 () Bool)

(assert (=> bs!396387 m!1997667))

(assert (=> b!1648843 d!497217))

(declare-fun d!497219 () Bool)

(assert (=> d!497219 (= (inv!23555 (tag!3489 (rule!5067 (h!23598 tokens!457)))) (= (mod (str.len (value!101128 (tag!3489 (rule!5067 (h!23598 tokens!457))))) 2) 0))))

(assert (=> b!1648853 d!497219))

(declare-fun d!497221 () Bool)

(declare-fun res!739143 () Bool)

(declare-fun e!1057735 () Bool)

(assert (=> d!497221 (=> (not res!739143) (not e!1057735))))

(assert (=> d!497221 (= res!739143 (semiInverseModEq!1239 (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))) (toValue!4656 (transformation!3209 (rule!5067 (h!23598 tokens!457))))))))

(assert (=> d!497221 (= (inv!23559 (transformation!3209 (rule!5067 (h!23598 tokens!457)))) e!1057735)))

(declare-fun b!1649328 () Bool)

(assert (=> b!1649328 (= e!1057735 (equivClasses!1180 (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))) (toValue!4656 (transformation!3209 (rule!5067 (h!23598 tokens!457))))))))

(assert (= (and d!497221 res!739143) b!1649328))

(declare-fun m!1997669 () Bool)

(assert (=> d!497221 m!1997669))

(declare-fun m!1997671 () Bool)

(assert (=> b!1649328 m!1997671))

(assert (=> b!1648853 d!497221))

(declare-fun b!1649333 () Bool)

(declare-fun e!1057738 () Bool)

(declare-fun tp_is_empty!7361 () Bool)

(declare-fun tp!477593 () Bool)

(assert (=> b!1649333 (= e!1057738 (and tp_is_empty!7361 tp!477593))))

(assert (=> b!1648852 (= tp!477526 e!1057738)))

(assert (= (and b!1648852 ((_ is Cons!18196) (originalCharacters!4023 (h!23598 tokens!457)))) b!1649333))

(declare-fun b!1649347 () Bool)

(declare-fun e!1057741 () Bool)

(declare-fun tp!477608 () Bool)

(declare-fun tp!477606 () Bool)

(assert (=> b!1649347 (= e!1057741 (and tp!477608 tp!477606))))

(declare-fun b!1649346 () Bool)

(declare-fun tp!477607 () Bool)

(assert (=> b!1649346 (= e!1057741 tp!477607)))

(declare-fun b!1649345 () Bool)

(declare-fun tp!477604 () Bool)

(declare-fun tp!477605 () Bool)

(assert (=> b!1649345 (= e!1057741 (and tp!477604 tp!477605))))

(declare-fun b!1649344 () Bool)

(assert (=> b!1649344 (= e!1057741 tp_is_empty!7361)))

(assert (=> b!1648846 (= tp!477524 e!1057741)))

(assert (= (and b!1648846 ((_ is ElementMatch!4537) (regex!3209 (h!23599 rules!1846)))) b!1649344))

(assert (= (and b!1648846 ((_ is Concat!7837) (regex!3209 (h!23599 rules!1846)))) b!1649345))

(assert (= (and b!1648846 ((_ is Star!4537) (regex!3209 (h!23599 rules!1846)))) b!1649346))

(assert (= (and b!1648846 ((_ is Union!4537) (regex!3209 (h!23599 rules!1846)))) b!1649347))

(declare-fun b!1649361 () Bool)

(declare-fun b_free!44823 () Bool)

(declare-fun b_next!45527 () Bool)

(assert (=> b!1649361 (= b_free!44823 (not b_next!45527))))

(declare-fun tp!477621 () Bool)

(declare-fun b_and!117133 () Bool)

(assert (=> b!1649361 (= tp!477621 b_and!117133)))

(declare-fun b_free!44825 () Bool)

(declare-fun b_next!45529 () Bool)

(assert (=> b!1649361 (= b_free!44825 (not b_next!45529))))

(declare-fun t!150788 () Bool)

(declare-fun tb!94471 () Bool)

(assert (=> (and b!1649361 (= (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457))))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457)))))) t!150788) tb!94471))

(declare-fun result!114140 () Bool)

(assert (= result!114140 result!114098))

(assert (=> d!497043 t!150788))

(declare-fun t!150790 () Bool)

(declare-fun tb!94473 () Bool)

(assert (=> (and b!1649361 (= (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457))))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457))))) t!150790) tb!94473))

(declare-fun result!114142 () Bool)

(assert (= result!114142 result!114124))

(assert (=> b!1649229 t!150790))

(assert (=> d!497185 t!150790))

(declare-fun b_and!117135 () Bool)

(declare-fun tp!477619 () Bool)

(assert (=> b!1649361 (= tp!477619 (and (=> t!150788 result!114140) (=> t!150790 result!114142) b_and!117135))))

(declare-fun tp!477622 () Bool)

(declare-fun e!1057755 () Bool)

(declare-fun e!1057759 () Bool)

(declare-fun b!1649358 () Bool)

(assert (=> b!1649358 (= e!1057759 (and (inv!23558 (h!23598 (t!150750 tokens!457))) e!1057755 tp!477622))))

(assert (=> b!1648841 (= tp!477531 e!1057759)))

(declare-fun e!1057757 () Bool)

(declare-fun e!1057754 () Bool)

(declare-fun b!1649360 () Bool)

(declare-fun tp!477623 () Bool)

(assert (=> b!1649360 (= e!1057754 (and tp!477623 (inv!23555 (tag!3489 (rule!5067 (h!23598 (t!150750 tokens!457))))) (inv!23559 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457))))) e!1057757))))

(declare-fun b!1649359 () Bool)

(declare-fun tp!477620 () Bool)

(assert (=> b!1649359 (= e!1057755 (and (inv!21 (value!101129 (h!23598 (t!150750 tokens!457)))) e!1057754 tp!477620))))

(assert (=> b!1649361 (= e!1057757 (and tp!477621 tp!477619))))

(assert (= b!1649360 b!1649361))

(assert (= b!1649359 b!1649360))

(assert (= b!1649358 b!1649359))

(assert (= (and b!1648841 ((_ is Cons!18197) (t!150750 tokens!457))) b!1649358))

(declare-fun m!1997673 () Bool)

(assert (=> b!1649358 m!1997673))

(declare-fun m!1997675 () Bool)

(assert (=> b!1649360 m!1997675))

(declare-fun m!1997677 () Bool)

(assert (=> b!1649360 m!1997677))

(declare-fun m!1997679 () Bool)

(assert (=> b!1649359 m!1997679))

(declare-fun b!1649372 () Bool)

(declare-fun b_free!44827 () Bool)

(declare-fun b_next!45531 () Bool)

(assert (=> b!1649372 (= b_free!44827 (not b_next!45531))))

(declare-fun tp!477634 () Bool)

(declare-fun b_and!117137 () Bool)

(assert (=> b!1649372 (= tp!477634 b_and!117137)))

(declare-fun b_free!44829 () Bool)

(declare-fun b_next!45533 () Bool)

(assert (=> b!1649372 (= b_free!44829 (not b_next!45533))))

(declare-fun t!150792 () Bool)

(declare-fun tb!94475 () Bool)

(assert (=> (and b!1649372 (= (toChars!4515 (transformation!3209 (h!23599 (t!150751 rules!1846)))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457)))))) t!150792) tb!94475))

(declare-fun result!114146 () Bool)

(assert (= result!114146 result!114098))

(assert (=> d!497043 t!150792))

(declare-fun t!150794 () Bool)

(declare-fun tb!94477 () Bool)

(assert (=> (and b!1649372 (= (toChars!4515 (transformation!3209 (h!23599 (t!150751 rules!1846)))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457))))) t!150794) tb!94477))

(declare-fun result!114148 () Bool)

(assert (= result!114148 result!114124))

(assert (=> b!1649229 t!150794))

(assert (=> d!497185 t!150794))

(declare-fun b_and!117139 () Bool)

(declare-fun tp!477633 () Bool)

(assert (=> b!1649372 (= tp!477633 (and (=> t!150792 result!114146) (=> t!150794 result!114148) b_and!117139))))

(declare-fun e!1057770 () Bool)

(assert (=> b!1649372 (= e!1057770 (and tp!477634 tp!477633))))

(declare-fun e!1057769 () Bool)

(declare-fun b!1649371 () Bool)

(declare-fun tp!477632 () Bool)

(assert (=> b!1649371 (= e!1057769 (and tp!477632 (inv!23555 (tag!3489 (h!23599 (t!150751 rules!1846)))) (inv!23559 (transformation!3209 (h!23599 (t!150751 rules!1846)))) e!1057770))))

(declare-fun b!1649370 () Bool)

(declare-fun e!1057768 () Bool)

(declare-fun tp!477635 () Bool)

(assert (=> b!1649370 (= e!1057768 (and e!1057769 tp!477635))))

(assert (=> b!1648858 (= tp!477532 e!1057768)))

(assert (= b!1649371 b!1649372))

(assert (= b!1649370 b!1649371))

(assert (= (and b!1648858 ((_ is Cons!18198) (t!150751 rules!1846))) b!1649370))

(declare-fun m!1997681 () Bool)

(assert (=> b!1649371 m!1997681))

(declare-fun m!1997683 () Bool)

(assert (=> b!1649371 m!1997683))

(declare-fun b!1649376 () Bool)

(declare-fun e!1057772 () Bool)

(declare-fun tp!477640 () Bool)

(declare-fun tp!477638 () Bool)

(assert (=> b!1649376 (= e!1057772 (and tp!477640 tp!477638))))

(declare-fun b!1649375 () Bool)

(declare-fun tp!477639 () Bool)

(assert (=> b!1649375 (= e!1057772 tp!477639)))

(declare-fun b!1649374 () Bool)

(declare-fun tp!477636 () Bool)

(declare-fun tp!477637 () Bool)

(assert (=> b!1649374 (= e!1057772 (and tp!477636 tp!477637))))

(declare-fun b!1649373 () Bool)

(assert (=> b!1649373 (= e!1057772 tp_is_empty!7361)))

(assert (=> b!1648853 (= tp!477528 e!1057772)))

(assert (= (and b!1648853 ((_ is ElementMatch!4537) (regex!3209 (rule!5067 (h!23598 tokens!457))))) b!1649373))

(assert (= (and b!1648853 ((_ is Concat!7837) (regex!3209 (rule!5067 (h!23598 tokens!457))))) b!1649374))

(assert (= (and b!1648853 ((_ is Star!4537) (regex!3209 (rule!5067 (h!23598 tokens!457))))) b!1649375))

(assert (= (and b!1648853 ((_ is Union!4537) (regex!3209 (rule!5067 (h!23598 tokens!457))))) b!1649376))

(declare-fun b_lambda!51847 () Bool)

(assert (= b_lambda!51845 (or (and b!1648854 b_free!44809 (= (toChars!4515 (transformation!3209 (h!23599 rules!1846))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))))) (and b!1648845 b_free!44813) (and b!1649361 b_free!44825 (= (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457))))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))))) (and b!1649372 b_free!44829 (= (toChars!4515 (transformation!3209 (h!23599 (t!150751 rules!1846)))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))))) b_lambda!51847)))

(declare-fun b_lambda!51849 () Bool)

(assert (= b_lambda!51829 (or (and b!1648854 b_free!44809 (= (toChars!4515 (transformation!3209 (h!23599 rules!1846))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457))))))) (and b!1648845 b_free!44813 (= (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457))))))) (and b!1649361 b_free!44825) (and b!1649372 b_free!44829 (= (toChars!4515 (transformation!3209 (h!23599 (t!150751 rules!1846)))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457))))))) b_lambda!51849)))

(declare-fun b_lambda!51851 () Bool)

(assert (= b_lambda!51837 (or (and b!1648854 b_free!44809 (= (toChars!4515 (transformation!3209 (h!23599 rules!1846))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))))) (and b!1648845 b_free!44813) (and b!1649361 b_free!44825 (= (toChars!4515 (transformation!3209 (rule!5067 (h!23598 (t!150750 tokens!457))))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))))) (and b!1649372 b_free!44829 (= (toChars!4515 (transformation!3209 (h!23599 (t!150751 rules!1846)))) (toChars!4515 (transformation!3209 (rule!5067 (h!23598 tokens!457)))))) b_lambda!51851)))

(check-sat (not b!1649322) (not d!497183) (not d!497105) (not d!497041) (not d!497057) (not b!1649267) (not d!497195) (not b!1649301) (not tb!94463) (not d!497175) (not b_next!45517) (not b_next!45533) b_and!117135 (not b!1649346) (not b!1648926) (not b!1649375) (not b!1649203) (not b!1648892) b_and!117129 (not b!1649358) (not b!1649314) (not b_next!45511) (not b!1649133) (not b_next!45531) (not tb!94447) (not d!497173) (not d!497023) (not b!1649229) (not b!1648889) (not d!497099) (not b!1649256) (not b!1649027) (not b!1649303) (not d!497085) (not b!1649317) (not d!497199) (not d!497211) (not d!497103) (not b!1648891) (not b!1649012) (not d!497107) (not d!497031) (not b!1648932) (not b_lambda!51851) b_and!117137 (not b!1648890) (not b!1649042) (not b!1648865) (not b!1649038) (not d!497101) (not b!1649117) (not b_next!45513) (not d!497193) (not d!497051) b_and!117093 b_and!117133 (not b!1649326) (not b!1649376) (not b!1648923) (not d!497181) (not bm!105831) b_and!117139 (not d!497201) (not b!1649011) (not d!497047) (not b!1649268) (not b_next!45529) (not b!1649151) (not b!1649310) (not b!1649323) (not d!497209) (not b!1649231) (not d!497205) (not d!497097) b_and!117131 (not b!1649118) (not b!1649299) (not d!497215) (not b!1649253) (not d!497025) (not b_next!45527) (not d!497109) (not b!1649304) (not d!497213) (not b!1649010) (not d!497087) (not b!1648895) (not b!1649345) b_and!117097 (not b_next!45515) (not d!497217) (not b_lambda!51847) (not b!1648912) (not b!1649359) (not d!497189) (not d!497221) (not b!1649360) (not b!1649333) (not b!1649325) (not b!1649230) (not b!1649037) (not d!497053) (not b!1648925) (not d!497179) (not b!1648933) (not d!497185) (not b!1649370) (not b!1649153) (not d!497191) (not b!1649205) (not b!1649154) (not d!497187) (not b!1649276) (not b!1649347) (not d!497145) (not d!497043) (not d!497033) (not b!1649039) (not b!1649374) (not b!1649278) (not d!497059) (not b_lambda!51849) (not d!497049) (not b!1649371) (not b!1649254) (not b!1649300) (not b!1649026) tp_is_empty!7361 (not b!1649297) (not b!1648924) (not d!497197) (not b!1649298) (not b!1649328) (not b!1649255) (not b!1649204) (not d!497177) (not b!1648909) (not b!1649302))
(check-sat b_and!117135 b_and!117129 b_and!117137 (not b_next!45513) (not b_next!45529) b_and!117131 (not b_next!45527) b_and!117097 (not b_next!45515) (not b_next!45517) (not b_next!45533) (not b_next!45511) (not b_next!45531) b_and!117093 b_and!117133 b_and!117139)
